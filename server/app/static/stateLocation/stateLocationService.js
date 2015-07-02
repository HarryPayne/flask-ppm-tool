(function() {
  
  "use strict";
  
  angular
    .module("app.stateLocation")
    .factory("stateLocationService", stateLocationService);
  
  stateLocationService.$inject = ["$rootScope", "$location", "$state", "$stateParams", 
                                  "stateHistoryService", "projectListService"];
 
  function stateLocationService($rootScope, $location, $state, $stateParams, 
                                stateHistoryService, projectListService){
    var service = {
      preventCall: [],
      locationChange: locationChange,
      getCurrentState: getCurrentState,
      getStateFromLocation: getStateFromLocation,
      saveState: saveState,
      stateChange: stateChange,
      saveCurrentState: saveCurrentState,
      guid: guid,
      s4: s4
    };
    
    window.onbeforeunload = function (event) {
      $rootScope.$broadcast('savestate');
    };
  
    return service;
    
    function getCurrentState() {
      return angular.fromJson(sessionStorage.currentState);
    }
    
    function locationChange(event) {
      if (service.preventCall.pop('locationChange') != null) {
        return;
      }
      var location = $location.url();
      if (location.substring(0, 9) == "/project/") {
        var projectID;
        if (location.substring(9, 27) == "edit/commentDetail") {
          var details = location.substring(28).split("/");
          projectID = parseInt(details[0]);
          var commentID = parseInt(_.first(_.last(details).split("#")));
        }
        else if (location.substring(9, 31) == "edit/dispositionDetail") {
          var details = location.substring(32).split("/");
          projectID = parseInt(details[0]);
          var disposedInFY = parseInt(details[1]);
          var disposedInQ = parseInt(_.first(_.last(details).split("#")));
        }
        else {
          projectID = parseInt(_.first(_.last(location.split("/")).split("#")));
        }
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
    
    function getStateFromLocation() {
      var state = new Object;
      state.stateParams = new Object;
      var location = $location.url();
      if (location == '/') {
        state.name = 'select';
      }
      else if (location.substring(0,9) == "/project/") {
        var projectID;
        var commentID;
        var disposedInFY;
        var disposedInQ;
        if (location.substring(9, 27) == "edit/commentDetail") {
          var details = location.substring(28);
          state.name = "project.edit.commentDetail";
          state.stateParams.commentID = parseInt(_.first(_.last(details.split("/")).split("#")));
          state.stateParams.projectID = parseInt(_.first(details.split("/")));
        }
        else if (location.substring(9, 31) == "edit/dispositionDetail") {
          var details = location.substring(32).split("/");
          state.name = "project.edit.dispositionDetail";
          state.stateParams.projectID = parseInt(details[0]);
          state.stateParams.disposedInFY = parseInt(details[1]);
          state.stateParams.disposedInQ = parseInt(_.first(_.last(details).split("#")));
        }
        else {
          state.stateParams.projectID = parseInt(_.first(_.last(location.split("/")).split("#")));
        }
      }
      return state;
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
      var url = getUrlFromState(params);
      stateHistoryService.set(url, entry);
      service.preventCall.push('locationChange');
      $location.url(url);
    }
    
    function getUrlFromState(params) {
      var projectID = params.projectID;
      var hash = "#" + service.guid().substr(0, 8);
      
      if ($state.current.name == "project.detail") {
        return "/project/" + projectID + hash;
      }
      else if ($state.current.name.substring(0,8) == "project.") {
        if (projectListService.getMasterList().allProjects.length == 0) {
          return "/project/" + projectID + hash;
        }
        if ($state.current.name == "project.edit.commentDetail") {
          return "/" + $state.current.name.replace(/\./g, "/") + "/" + projectID + "/" + params.commentID + hash;
        }
        else if ($state.current.name == "project.edit.dispositionDetail") {
          return "/" + $state.current.name.replace(/\./g, "/") + "/" + projectID + "/" + params.disposedInFY + "/" + params.disposedInQ + hash;
        }
        return "/" + $state.current.name.replace(/\./g, "/") + "/" + projectID + hash;
      }
      else {
        return "/" + $state.current.name.replace(/\./g, "/");
      }
    }
    
    function saveCurrentState() {
      if ($state.current.name) {
        var entry = {
          "name": $state.current.name,
          "params": $state.params
        };
        sessionStorage.currentState = angular.toJson(entry);
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
