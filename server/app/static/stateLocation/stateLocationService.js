(function() {
  
  "use strict";
  
  angular
    .module("app.stateLocation")
    .factory("stateLocationService", stateLocationService);
  
  stateLocationService.$inject = ["$rootScope", "$location", "$state", "$stateParams", "stateHistoryService", "projectListService"];
 
  function stateLocationService($rootScope, $location, $state, $stateParams, stateHistoryService, projectListService){
    var service = {
      "preventCall": [],
      "locationChange": locationChange,
      "getProjectIDFromLocation": getProjectIDFromLocation,
      "saveState": saveState,
      "stateChange": stateChange,
      "guid": guid,
      "s4": s4
    };
    
    //$rootScope.$on("$locationChangeSuccess", service.saveState);

    return service;
    
    function locationChange() {
      if (service.preventCall.pop('locationChange') != null) {
        return;
      }
      var location = $location.url();
      if (location.substring(0,9) == "/project/") {
        var projectID = parseInt(_.first(_.last(location.split("/")).split("#")));
        if (projectID) {
          projectListService.updateProjectListProjectID(projectID);
        }
      }
      var entry = stateHistoryService.get(location);
      if (entry == null) {
        return;
      }
      service.preventCall.push("stateChange");
      //service.preventCall.push("locationChange");
      $state.go(entry.name, entry.params, {location: false});
    };
    
    function getProjectIDFromLocation() {
      var location = $location.url();
      if (location.substring(0,9) == "/project/") {
        var projectID = parseInt(_.first(_.last(location.split("/")).split("#")));
        if (projectID) {
          $stateParams.projectID = projectID;
          return projectID;
        }
      }
      return null;
    }
    
    function stateChange(projectID) {
      if (service.preventCall.pop("stateChange") != null){
        return;
      }
      if (!$state.current.name) {
        return;
      }
      projectID = projectListService.getModel().projectID;
      var params = $state.params.projectID == "" ? {projectID: projectID} : $state.params;
      var entry = {
        "name": $state.current.name,
        "params": params
      };
      var prefix = $state.current.name == "select" ? "" : $state.current.name;
      prefix = prefix.substring(0,8) == "project." ? prefix.substring(0, prefix.indexOf(".")) : prefix;
      var projectID = prefix == "project" ? "/" + projectID : "";
      var url = "/" + prefix + projectID + "#" + (service.guid().substr(0, 8));
      stateHistoryService.set(url, entry);
      service.preventCall.push('locationChange');
      $location.url(url);
    }
    
    function saveState() {
      if ($state.current.name) {
        var entry = {
          "name": $state.current.name,
          "params": $state.params
        };
        var url = $location.url();
        stateHistoryService.set(url, entry);
      }
      
    }
    
    function guid() {
      return "" + (service.s4()) + (service.s4()) + "-" + (service.s4()) + "-" + (service.s4()) + "-" + (service.s4()) + "-" + (service.s4()) + (service.s4()) + (service.s4());
    };
    
    function s4() {
      return Math.floor((1 + Math.random()) * 0x10000).toString(16).substring(1);
    }
  };
  
}());
