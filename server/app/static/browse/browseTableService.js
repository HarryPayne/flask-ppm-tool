(function() {

  "use strict";
  
  angular
    .module('app.browse')
    .factory('browseTableService', BrowseTableService);
    
  BrowseTableService.$inject = ["DTOptionsBuilder", "DTColumnBuilder", "$http", "projectListService"];
  
  function BrowseTableService(DTOptionsBuilder, DTColumnBuilder, $http, projectListService) {
    var service = {
      master: {
        dtColumns: [{mData: "name", sTitle: "Name"},
                    {mData: "description", sTitle: "Description"},
                    {mData: "maturityID", sTitle: "Maturity"},
                    {mData: "driverID", sTitle: "Driver"}],
        tableColumns: ["name", "description", "maturityID", "driverID"]
      },
      deleteOptions: deleteOptions,
      getBrowseTableData: getBrowseTableData,
      RestoreState: RestoreState,
      SaveState: SaveState,
      setBrowseTableData: setBrowseTableData,
    };
    
    service.RestoreState();
    //if (typeof service.master.dtOptions == "undefined") {
    getBrowseTableData();
    //}
    
    function deleteOptions() {
      delete service.master.dtOptions;
    }
    
    function getBrowseTableData() {
      var request = {
        method: "POST",
        url: "/getBrowseTableJSON",
        data: {projectID: projectListService.getSelectedIds(),
               tableColumns: service.master.tableColumns}
      };
      $http(request)
        .then(service.setBrowseTableData);
    }
    
    function RestoreState() {
      if (typeof sessionStorage.browseTableService != "undefined") {
        service.master = angular.fromJson(sessionStorage.browseTableService);
      }
    }
    
    function SaveState() {
      sessionStorage.browseTableService = angular.toJson(service.master);
    }

    function setBrowseTableData(response) {
      service.master.dtOptions = DTOptionsBuilder.newOptions().withBootstrap();
      _.each(Object.keys(response.data.options), function(key) {
         service.master.dtOptions.withOption(key, response.data.options[key]);
      });
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
      return '<a ui-sref="project.detail" href="#/project/' + data + '">' + data + '</a>';
    }
    
    service.SaveState();
    return service;
  }
      
}());