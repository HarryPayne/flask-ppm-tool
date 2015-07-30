(function() {
  
  "use strict";
  
  angular
    .module("app.stateLocation")
    .factory("stateLocationService", stateLocationService);
  
  stateLocationService.$inject = ["$rootScope", "$location", "$state", "$stateParams", 
                                  "$urlMatcherFactory", "stateHistoryService", "projectListService"];
 
  function stateLocationService($rootScope, $location, $state, $stateParams, 
                                $urlMatcherFactory, stateHistoryService, projectListService){
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
    
    function locationChange() {
      //if (service.preventCall.pop('locationChange') != null) {
      if (service.preventCall.pop() == "locationChange") {
        return;
      }
      var location = $location.url();
      var entry = stateHistoryService.get(location);
      if (entry == null) {
        var entry = service.getStateFromLocation();
      }
      if ("projectID" in entry.params) {
        projectListService.setProjectID(entry.params.projectID);
      }
      service.preventCall = ["stateChange"];
      //service.preventCall.push("stateChange");
      $state.go(entry.name, entry.params, {location: false});
    };
    
    function getStateFromLocation() {
      var state = new Object;
      state.params = new Object;
      var path = $location.path().split("/").reverse();
      path.pop();
      var base = path.pop();
      if (base == "project") {
        var projectID;
        var commentID;
        var disposedInFY;
        var disposedInQ;
        if (_.last(path) == "comment" && path[1] == "detail") {
          state.name = "project.comment.edit.detail";
          state.params.commentID = parseInt(path[0]);
          state.params.projectID = parseInt(path[2]);
        }
        else if (_.last(path) == "disposition" && path[2] == "detail") {
          state.name = "project.disposition.edit.detail";
          state.params.projectID = parseInt(path[3]);
          state.params.disposedInFY = parseInt(path[1]);
          state.params.disposedInQ = parseInt(path[0]);
        }
        else if (path.length == 1) {
          state.name = "project.detail";
          state.params.projectID = parseInt(path[0]);
        }
        else {
          state.name = ["project", path[2], path[1]].join(".");
          state.params.projectID = parseInt(path[0]);
        }
      }
      else if (base == "filter") {
        if (path[1] == "attributes") {
          state.name = "filter.builder.attributes";
          state.params.query_string = path[2]
          state.params.attribute_list = path[0]
        }
        else {
          state.name = "filter.builder";
          state.params.query_string = path[0];
        }
      }
      else if (base == "report") {
        if (path[1] == "columns") {
          state.name = "report.columns";
          state.params.query_string = path[0]
        }
        else {
          state.name = "report.table";
          state.params.query_string = path[0];
        }
      }
      else {
        state.name = [base].concat(path).join(".");
      }
      return state;
    }
    
    function stateChange() {
      if (service.preventCall.pop("stateChange") != null){
      //if (service.preventCall.pop() == "stateChange"){
        return;
      }
      if (!$state.current.name) {
        return;
      }
      var url = getUrlFromState();
      var entry = {
        "name": $state.current.name,
        "params": $stateParams
      };
      stateHistoryService.set(url, entry);
      //service.preventCall.push('locationChange');
      service.preventCall = ["locationChange"];
      $location.url(url);
    }
    
    function getUrlFromState() {
      var url = $state.href($state.current, $state.params);
      if (url[0] == "#") {
        url = url.substring(1);
      }
      var hash = service.guid().substr(0, 8);
      
      var tab = _.first($state.current.name.split("."));
      if (tab == 'project') {
        url = $location.hash(hash);
      }
      else if (tab == "report") {
        url = $location.hash(hash);
      }
      if (typeof url == "object") {
        return url.url();
      }
      else if (typeof url == "string") {
        return url;
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
