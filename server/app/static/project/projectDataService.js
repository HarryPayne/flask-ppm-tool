(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .factory("projectDataService", projectDataService);
  
  projectDataService.$inject = ["$rootScope", "$http", "$state", "$stateParams", 
                                "$location", "projectListService", "attributesService"];
  
  function projectDataService($rootScope, $http, $state, $stateParams, 
                              $location, projectListService, attributesService) {
    var service = {
      attributes: attributesService.getAttributes,
      changeMode: changeMode,
      currentMode: currentMode,
      getProjectData: getProjectData,
      getAttributes: getAttributes,
      getProjectDataFromLocation: getProjectDataFromLocation,
      jumpToAtachFile: jumpToAtachFile,
      jumpToCommentEntry: jumpToCommentEntry,
      printValue: attributesService.printValue,
      projectID: $stateParams.projectID,
      RestoreState: RestoreState,
      saveProject: saveProject,
      SaveState: SaveState,
      setProjectData: setProjectData,
      viewUrl: $state.current.data ? $state.current.data.viewUrl : "",
      url: $location.url
    };
    
    //service.RestoreState();
    if (typeof service.attributes == "undefined") {
      service.getProjectData(service.projectID);
    }
    
    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);
    $rootScope.$on("$locationChangeSuccess", service.getProjectDataFromLocation);
    
    function changeMode() {
      if (this.currentMode() == "view") {
        $state.go("project.edit", {projectID: service.projectID});
      }
      else {
        $state.go("project.detail", {projectID: service.projectID});
      }
    }
    
    function currentMode() {
      if ($state.current.name == "project.detail") {
        return "view";
      }
      else if ($state.current.name == "project.edit") {
        return "edit";
      }
      else if ($state.current.name == "project.comment") {
        return "comment";
      }
      else if ($state.current.name == "project.attach") {
        return "attach";
      }
    }
    
    function getAttributes() {
      return service.attributes;
    }
    
    function getProjectData(projectID) {
      if (projectID) {
        $http.get("getProjectAttributes/" + projectID)
          .then(service.setProjectData);
      }
    }
    
    function getProjectDataFromLocation() {
      var idByLocation = projectListService.getProjectIDFromLocation();
      if (idByLocation && idByLocation != service.projectID) {
        service.projectID = idByLocation;
        service.getProjectData(idByLocation);
      }
    };

    function jumpToAtachFile() {
      $state.go("project.attach", {projectID: service.projectID});
    }
    
    function jumpToCommentEntry() {
      $state.go("project.comment", {projectID: service.projectID});
    }
    
    function RestoreState() {
      service.projectID = angular.fromJson(sessionStorage.projectDataServiceAttributes);
    };


    function saveProject() {
      var formData = attributesService.getFormData();
      var projectID = projectListService.getProjectID();
      var request = {
        method: "POST",
        url: "/projectEdit/" + projectID,
        headers: {
          "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
        },
        data: jQuery.param(formData, true)
      };
      $http(request)
        .then(service.setProjectData);
    };

    function SaveState() {
      var data = new Object;
      sessionStorage.projectDataServiceAttributes = angular.toJson(service.projectID);
    };
      
    function setProjectData(result) {
      //return;
      attributesService.updateProjectAttributes(result);
      service.SaveState();
      attributesService.SaveState();
    }

    service.SaveState();
    return service;
  }

}());
