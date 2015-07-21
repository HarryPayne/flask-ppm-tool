(function() {

  "use strict";
  
  angular
    .module('app.report')
    .factory('reportTableService', ReportTableService);
    
  ReportTableService.$inject = ["$compile", "DTColumnBuilder", "DTInstances", "DTOptionsBuilder", 
                                "$http", "$location", "projectListService", "$rootScope", "$stateParams"];
  
  function ReportTableService($compile, DTColumnBuilder, DTInstances, DTOptionsBuilder, 
                              $http, $location, projectListService, $rootScope, $stateParams) {
    var service = {
      checkForQueryChange: checkForQueryChange,
      createdRow: createdRow,
      projectCount: projectCount,
      deleteOptions: deleteOptions,
      getReportResults: getReportResults,
      getReportTableData: getReportTableData,
      projectIDColumn: {data: "projectID",
                        title: "ID",
                        render: jumpToProjectLink,
                        defaultContent: ""},
      RestoreState: RestoreState,
      SaveState: SaveState,
      scope: $rootScope.$new(), // http://stackoverflow.com/questions/17600905/compile-directives-via-service-in-angularjs#comment41413717_17601350
      setReportResults: setReportResults,
      setReportTableData: setReportTableData,
      tableColumns: tableColumns,
      master: {
        dtColumns: [{data: "projectID",
                        title: "ID",
                        render: jumpToProjectLink,
                        defaultContent: ""},
                    {data: "name", title: "Name"},
                    {data: "description", title: "Description"},
                    {data: "maturityID", title: "Maturity"},
                    {data: "driverID", title: "Driver"}],
        dtInstance: {},
        dtOptions: {}
      },
    };
    
    service.RestoreState();
    //$rootScope.$on("$locationChangeSuccess", service.checkForQueryChange());
    
    function checkForQueryChange() {
      var state_query = $stateParams.query_string;
      if (state_query && state_query != projectListService.getSql()) {
        service.getReportResults(state_query);
      }
    }

    function createdRow(row, data, dataIndex) {
      $compile(angular.element(row).contents())(service.scope);
    }

    function deleteOptions() {
      delete service.master.dtOptions;
    }
    
    function getReportResults(query_string) {
      var request = {
        method: "POST",
        url: "/getReportResults",
        data: {query_string: encodeURIComponent(query_string),
               tableColumns: service.tableColumns()}
      };
      $http(request)
        .then(service.setReportResults);
    }

    function getReportTableData() {
      var request = {
        method: "POST",
        url: "/getReportTableJSON",
        data: {projectID: projectListService.getSelectedIds(),
               tableColumns: service.tableColumns()}
      };
      $http(request)
        .then(service.setReportTableData);
    }
    
    function jumpToProjectLink( data, type, full, meta ) {
      return '<a ui-sref="project.detail({projectID: ' + data + '})">' + data + '</a>';
    }

    function projectCount() {
      try {
        return service.master.dtOptions.data.length;
      }
      catch (e) {
        return 0;
      }
    }
    
    function RestoreState() {
      if (typeof sessionStorage.reportTableService != "undefined") {
        var master = angular.fromJson(sessionStorage.reportTableService);

        // render function gets lost in conversion to JSON and needs to be replaced
        service.master.dtColumns = master.dtColumns;
        service.master.dtColumns[0] = service.projectIDColumn; 

        // createdRow option function gets lost in converstion to JSON
        service.master.dtOptions = master.dtOptions;
        service.master.dtOptions.createdRow = service.createdRow;
      }
    }
    
    function SaveState() {
      sessionStorage.reportTableService = angular.toJson(service.master);
    }

    function setReportResults(response) {
      projectListService.setList(response.data.projectList);
      projectListService.setDescription(response.data.query_desc);
      projectListService.setSql(response.data.query_string);
      projectListService.SaveState();
      setReportTableData(response);
      service.master.dtInstance.rerender();
      service.SaveState();
    }

    function setReportTableData(response) {
      service.master.dtOptions = DTOptionsBuilder.newOptions().withBootstrap();
      _.each(Object.keys(response.data.options), function(key) {
         service.master.dtOptions.withOption(key, response.data.options[key]);
      });
      service.master.dtOptions.withOption("createdRow", createdRow);
      service.master.dtColumns = [service.projectIDColumn].concat(response.data.columns);
      service.master.dtOptions.data = response.data.data;
      //service.master.dtInstance.rerender();
      var path = $location.path().split("/");
      path.pop();
      path.push(response.data.query_string)
      $location.url(path.join("/"));
      service.SaveState();
    }

    function tableColumns() {
      return _.pluck(service.master.dtColumns, "data");
    }
    
    service.SaveState();
    return service;
  }
      
}());