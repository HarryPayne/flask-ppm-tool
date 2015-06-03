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
    
    window.onbeforeunload = function (event) {
      $rootScope.$broadcast('savestate');
    };
  
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
      projectID = projectListService.getMasterList().projectID;
      var params = $state.params.projectID == "" ? {projectID: projectID} : $state.params;
      var entry = {
        "name": $state.current.name,
        "params": params
      };
      var url = getUrlFromState(projectID);
      stateHistoryService.set(url, entry);
      service.preventCall.push('locationChange');
      $location.url(url);
    }
    
    function getUrlFromState(projectID) {
      var hash = "#" + service.guid().substr(0, 8);
      
      if ($state.current.name == "select") {
        return "/" + hash;
      }
      else if ($state.current.name == "project.detail") {
        return "/project/" + projectID + hash;
      }
      else if ($state.current.name.substring(0,8) == "project.") {
        if (projectListService.getMasterList().allProjects.length == 0) {
          return "/project/" + projectID + hash;
        }
        return "/" + $state.current.name.replace(/\./g, "/") + "/" + projectID + hash;
      }
      else {
        return "/" + $state.current.name.replace(/\./g, "/");
      }
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
