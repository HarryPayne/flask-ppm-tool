(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .factory("selectStateService", selectStateService);
  
  selectStateService.$inject = ["$rootScope"];
  
  function selectStateService($rootScope) {
    var service = {
      model: {
        searchText: "",
        nameLogic: "or",
        finalID: "0",
        SaveState: SaveState,
        RestoreState: RestoreState
      }
    };
  
    return service;    
      
    $rootScope.$on("savestate, service.SaveState");
    $rootScope.$on("restorestate, service.RestoreState");
    
    /*
    window.onbeforeunload = function (event) {
      $rootScope.$broadcast('savestate');
    };
    */
  
    function SaveState() {
      sessionStorage.selectStateService = angular.toJson(service.model);
    }
    
    function RestoreState() {
      service.model = angular.fromJson(sessionStorage.selectStateService);
    }
  };
  
}());
