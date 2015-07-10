(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .factory("selectStateService", selectStateService);
  
  selectStateService.$inject = ["$rootScope", "$http", "$state", 
                                "projectListService", "browseTableService"];
  
  function selectStateService($rootScope, $http, $state, projectListService, 
                              browseTableService) {
    var service = {
      masterList: {
        searchText: "",
        nameLogic: "or",
        finalID: "0",
        breakdownAttr: ""
      },
      clearBreakdown: clearBreakdown,
      clearSearchText: clearSearchText,
      getBreakdownByAttribute: getBreakdownByAttribute,
      getBreakdownChoices: getBreakdownChoices,
      getBreakdownTotal: getBreakdownTotal,
      jumpToBreakdownTable: jumpToBreakdownTable,
      setBreakdownChoices: setBreakdownChoices,
      updateBreakdownByAttribute: updateBreakdownByAttribute,
      updateBreakdownChoices: updateBreakdownChoices,
      SaveState: SaveState,
      RestoreState: RestoreState
    };

    RestoreState();
    if (typeof service.breakdownChoicesList == "undefined") {
      service.updateBreakdownChoices();
    }
    
    $rootScope.$on("savestate, service.SaveState");
    $rootScope.$on("restorestate, service.RestoreState");
      
    function clearBreakdown() {
      service.masterList.breakdownAttr = "";
    }

    function clearSearchText() {
      service.masterList.searchText = "";
    }

    function getBreakdownByAttribute() {
      return service.breakdownByAttribute;
    }

    function getBreakdownChoices() {
      return service.breakdownChoicesList;
    }
    
    function getBreakdownTotal() {
      var total = 0;
      _.each(service.breakdownByAttribute, function(row) {
        total += row.projectList.length;
      });
      return total;
    }

    function jumpToBreakdownTable(breakdown_row) {
      /*
      if (breakdown_row.query_sql != projectListService.getSql()) {
        browseTableService.deleteOptions();
        browseTableService.SaveState();
      }
      */
      projectListService.setList(breakdown_row.projectList);
      projectListService.setDescription(breakdown_row.query_desc);
      projectListService.setSql(breakdown_row.query_sql);
      projectListService.SaveState();
      browseTableService.getBrowseTableData();
      $state.go("browse");
    }

    function RestoreState() {
      if (sessionStorage.selectStateService != "undefined") {
        service.masterList = angular.fromJson(sessionStorage.selectStateService);
      }
    }
    
    function SaveState() {
      sessionStorage.selectStateService = angular.toJson(service.masterList);
    }
    
    function setBreakdownByAttribute(result) {
      service.breakdownByAttribute = result.data;
    }

    function setBreakdownChoices(result) {
      service.breakdownChoicesList = result.data;
      service.SaveState();
    }
    
    function updateBreakdownByAttribute() {
      $http.get("getBreakdownByAttribute/" + service.masterList.breakdownAttr.id)
        .then(setBreakdownByAttribute);
    }

    function updateBreakdownChoices() {
      $http.get("getBreakdownChoices")
        .then(setBreakdownChoices);
    }
    
    return service;    
  };
  
}());
