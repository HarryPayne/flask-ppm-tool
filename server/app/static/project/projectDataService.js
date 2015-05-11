(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .factory("projectDataService", projectDataService);
  
  projectDataService.$inject = ["$rootScope", "$http", "$state", "$stateParams", "$location"]
  function projectDataService($rootScope, $http, $state, $stateParams, $location) {
    var service = {
      "attributes": [],
      "broadcast": broadcast,
      "currentMode": currentMode,
      "changeMode": changeMode,
      "getProjectData": getProjectData,
      "getProjectDataFromLocation": getProjectDataFromLocation,
      "projectID": $stateParams.projectID,
      "RestoreState": RestoreState,
      "SaveState": SaveState,
      "setProjectData": setProjectData,
      "viewUrl": $state.current.data.viewUrl,
      "url": $location.url
    };
    
    service.getProjectData(service.projectID);
    
    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);
    $rootScope.$on("$locationChangeSuccess", service.getProjectDataFromLocation);
    
    return service;

    function broadcast() {
        $rootScope.$broadcast("projectDataBroadcast");
    };
  
    function currentMode() {
      if ($state.current.name == "project.detail") {
        return "view";
      }
      else if ($state.current.name == "project.edit") {
        return "edit";
      }
    }
    
    function changeMode() {
      if (this.currentMode == "view") {
        $state.go("project.edit", {projectID: service.projectID});
      }
      else {
        $state.go("project.detail", {projectID: this.projectID});
      }
    }
    
    function getProjectData(projectID) {
      if (projectID) {
        $http.get("getProjectAttributes/" + projectID)
          .then(service.setProjectData);
      }
    }
    
    function getProjectDataFromLocation() {
      var url = $location.url();
      if (url.substring(0,8) == "/project") {
        var projectID = url.substring(9);
        projectID = projectID.substring(0, projectID.indexOf("#"));
        if (projectID) {
          projectID = parseInt(projectID);
          service.getProjectData(projectID);
        }
      }
    };
    
    function RestoreState() {
        service.attributes = angular.fromJson(sessionStorage.projectDataServiceAttributes);
        service.broadcast();
    };

    function SaveState() {
        sessionStorage.projectDataServiceAttributes = angular.toJson(service.attributes);
    };
      
    function setProjectData(result) {
      service.attributes = result.data.attributes;
      service.projectID = parseInt(result.data.projectID);
      angular.forEach(service.attributes, function(attr){
        if (attr.format == "multipleSelect") {
          if (attr.multiple) {
            var values = attr.value.slice(0);
            attr.value = [];
            angular.forEach(values, function(val) {
              angular.forEach(attr.choices, function(choice) {
                if (val == choice[0]){
                  attr.value.push( choice );
                }
              });
            });
          }
          else {
            angular.forEach(attr.choices, function(choice) {
              if (attr.value == choice[0]) {
                attr.value = choice;
               }
            });
          }
        }
      });
      service.SaveState();
      service.broadcast();
    }
  }

}());
