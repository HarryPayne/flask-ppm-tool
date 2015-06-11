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
      checkForUnsavedChanges: checkForUnsavedChanges,
      currentMode: currentMode,
      getProjectData: getProjectData,
      getAttributes: getAttributes,
      getProjectDataFromLocation: getProjectDataFromLocation,
      hideDetails: hideDetails,
      jumpToAtachFile: jumpToAtachFile,
      jumpToAddForm: jumpToAddForm,
      newProject: newProject,
      printValue: attributesService.printValue,
      projectID: $stateParams.projectID,
      RestoreState: RestoreState,
      saveDisposition: saveDisposition,
      saveProject: saveProject,
      SaveState: SaveState,
      setProjectData: setProjectData,
      showDetails: showDetails,
      stateParams: $stateParams,
      viewUrl: $state.current.data ? $state.current.data.viewUrl : "",
      url: $location.url
    };
    
    service.RestoreState();
    if (typeof service.attributes == "undefined") {
      service.getProjectData(service.projectID);
    }
    
    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);
    $rootScope.$on("$locationChangeSuccess", service.getProjectDataFromLocation);
    
    function changeMode(mode) {
      if (!mode) {
        $state.go("project.detail", {projectID: service.projectID});
      }
      else {
        $state.go(mode, {projectID: service.projectID});
      }
    }
    
    function checkForUnsavedChanges() {
      var state = $state.current.name;
    }
    
    function currentMode() {
      if ($state.current.name == "project.detail") {
        return "view";
      }
      return $state.current.name.substring(8);
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
    }

    function hideDetails(tableName, keys) {
      var selected = attributesService.updateProjAttrsFromRawItem(tableName, keys);
      $state.go("project.edit." + tableName, 
                {projectID: $state.params.projectID});
    }

    function jumpToAtachFile() {
      $state.go("project.attach", {projectID: service.projectID});
    };
    
    function jumpToAddForm(tableName, keys) {
      attributesService.updateProjAttrsFromRawItem(tableName, keys);
      $state.go("project.add." + tableName, {projectID: $state.params.projectID});
    };

    function newProject(tableName) {

    }
    
    function RestoreState() {
      service.projectID = angular.fromJson(sessionStorage.projectDataServiceAttributes);
    };

    function saveDisposition(disposeID) {
      var dispositions = attributesService.getProjectAttributes("disposition");
      var disposition = _.where(dispositions, {disposeID: disposeID})[0];
    };

    function saveProject(tableName, keys) {
      var formData = attributesService.getFormData(tableName, keys);
      var request = {
        method: "POST",
        url: "/projectEdit/" + $state.params.projectID + "/" + tableName,
        headers: {
          "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
        },
        data: jQuery.param(formData, true)
      };
      $http(request)
        .then(service.setProjectData);
      $state.go("project.edit." + tableName, {projectID: $state.params.projectID});
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

    function showDetails(tableName, keys) {
      var selected = attributesService.updateProjAttrsFromRawItem(tableName, keys);
      if (tableName == 'comment') {
        $state.go("project.edit.commentDetail", 
                  {projectID: service.projectID, commentID: selected.commentID});
      }
      if (tableName == 'disposition') {
        $state.go("project.edit.dispositionDetail", 
                  {projectID: service.projectID, disposedInFY: selected.disposedInFY.id,
                   disposedInQ: selected.disposedInQ.id});
      }
    }

    service.SaveState();
    return service;
  }

}());
