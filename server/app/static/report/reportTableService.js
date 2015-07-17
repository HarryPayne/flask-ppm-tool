(function() {

  "use strict";
  
  angular
    .module('app.report')
    .factory('reportTableService', ReportTableService);
    
  ReportTableService.$inject = ["$rootScope", "$http", "$stateParams", "$compile", 
                                "DTOptionsBuilder",  "DTColumnBuilder", "DTInstances",
                                "projectListService"];
  
  function ReportTableService($rootScope, $http, $stateParams, $compile, 
                              DTOptionsBuilder, DTColumnBuilder, DTInstances,
                              projectListService) {
    var service = {
      master: {
        dtColumns: [{mData: "name", sTitle: "Name"},
                    {mData: "description", sTitle: "Description"},
                    {mData: "maturityID", sTitle: "Maturity"},
                    {mData: "driverID", sTitle: "Driver"}],
        dtInstance: {},
        tableColumns: ["name", "description", "maturityID", "driverID"]
      },
      checkForQueryChange: checkForQueryChange,
      createdRow: createdRow,
      deleteOptions: deleteOptions,
      getReportResults: getReportResults,
      getReportTableData: getReportTableData,
      RestoreState: RestoreState,
      SaveState: SaveState,
      scope: $rootScope.$new(), // http://stackoverflow.com/questions/17600905/compile-directives-via-service-in-angularjs#comment41413717_17601350
      setReportResults: setReportResults,
      setReportTableData: setReportTableData
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
               tableColumns: service.master.tableColumns}
      };
      $http(request)
        .then(service.setReportResults);
    }

    function getReportTableData() {
      var request = {
        method: "POST",
        url: "/getReportTableJSON",
        data: {projectID: projectListService.getSelectedIds(),
               tableColumns: service.master.tableColumns}
      };
      $http(request)
        .then(service.setReportTableData);
    }
    
    function RestoreState() {
      if (typeof sessionStorage.reportTableService != "undefined") {
        service.master = angular.fromJson(sessionStorage.reportTableService);
      }
    }
    
    function SaveState() {
      sessionStorage.reportTableService = angular.toJson(service.master);
    }

    function setReportResults(response) {
      projectListService.setList(response.data.projectList);
      projectListService.setDescription(response.data.query_desc);
      projectListService.setSql(response.data.query_string);
      setReportTableData(response);
      projectListService.SaveState();
      service.master.dtInstance.rerender();
    }

    function setReportTableData(response) {
      service.master.dtOptions = DTOptionsBuilder.newOptions().withBootstrap();
      _.each(Object.keys(response.data.options), function(key) {
         service.master.dtOptions.withOption(key, response.data.options[key]);
      });
      service.master.dtOptions.withOption("createdRow", createdRow);
      service.master.dtOptions.data = response.data.data;
      service.master.dtColumns = response.data.columns;
      service.master.dtColumns.unshift({
        data: "projectID",
        title: "ID",
        render: jumpToProjectLink,
        defaultContent: ""
      });
      service.SaveState();
    }
    
    function jumpToProjectLink( data, type, full, meta ) {
      return '<a ui-sref="project.detail({projectID: ' + data + '})">' + data + '</a>';
    }
    
    service.SaveState();
    return service;
  }
      
}());