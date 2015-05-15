(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .factory("selectStateService", selectStateService);
  
  selectStateService.$inject = ["$rootScope"];
  
  function selectStateService($rootScope) {
    var service = {
      masterList: {
        searchText: "",
        nameLogic: "or",
        finalID: "0",
        clearSearchText: clearSearchText,
        SaveState: SaveState,
        RestoreState: RestoreState
      }
    };
  
    $rootScope.$on("savestate, service.SaveState");
    $rootScope.$on("restorestate, service.RestoreState");
    
    window.onbeforeunload = function (event) {
      $rootScope.$broadcast('savestate');
    };
  
    function clearSearchText() {
      service.masterList.searchText = "";
    }
    function SaveState() {
      sessionStorage.selectStateService = angular.toJson(service.masterList);
    }
    
    function RestoreState() {
      service.masterList = angular.fromJson(sessionStorage.selectStateService);
    }

    return service;    
      
  };
  
}());
