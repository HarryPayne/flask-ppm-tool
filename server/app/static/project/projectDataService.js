(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .factory("projectDataService", projectDataService);
  
  projectDataService.$inject = ["$rootScope", "$http", "$state", "$stateParams", 
                                "$location", "projectListService", "attributesService",
                                "stateLocationService"];
  
  function projectDataService($rootScope, $http, $state, $stateParams, 
                              $location, projectListService, attributesService,
                              stateLocationService) {
    var service = {
      attributes: attributesService.getAllAttributes,
      cancelAddProject: cancelAddProject,
      changeMode: changeMode,
      createProject: createProject,
      currentMode: currentMode,
      getProjectData: getProjectData,
      getAttributes: getAttributes,
      getProjectAttributes: attributesService.getProjectAttributes,
      getProjectDataFromLocation: getProjectDataFromLocation,
      hideDetails: hideDetails,
      jumpToAtachFile: jumpToAtachFile,
      jumpToAddForm: jumpToAddForm,
      jumpToNewProject: jumpToNewProject,
      newProject: newProject,
      printValue: attributesService.printValue,
      projectID: $stateParams.projectID,
      RestoreState: RestoreState,
      saveProject: saveProject,
      SaveState: SaveState,
      setProjectData: setProjectData,
      showDetails: showDetails,
      showEditSuccess: showEditSuccess,
      stateParams: $stateParams,
      viewUrl: $state.current.data ? $state.current.data.viewUrl : "",
    };
    
    service.RestoreState();
    if (typeof service.attributes() == "undefined" && service.restoredParams) {
      service.getProjectData(service.restoredParams);
    }
    
    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);
    $rootScope.$on("$locationChangeSuccess", service.getProjectDataFromLocation);
    
    function cancelAddProject() {
      $state.go("select");
    }

    function changeMode(mode) {
      if (!mode) {
        $state.go("project.detail", {projectID: service.projectID});
      }
      else {
        $state.go(mode, {projectID: service.projectID});
      }
    }
    
    function createProject() {
      var formData = attributesService.getFormData('description', []);
      /* null out project attributes and get csrf token */
      $http.get("getProjectAttributes/0")
        .then(function(result) {
          service.setProjectData(result);
          delete formData.projectID;
          var request = {
            method: "POST",
            url: "/projectCreate",
            headers: {
              "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
            },
            data: jQuery.param(formData, true)
          };
          $http(request)
            .then(service.jumpToNewProject);
        });
    };

    function currentMode() {
      if ($state.current.name == "project.detail") {
        return "view";
      }
      return $state.current.name.substring(8);
    }
    
    function getAttributes() {
      return service.attributes;
    }
    
    function getProjectData(params) {
      if (parseInt(params.projectID) > -1) {
        $http.get("getProjectAttributes/" + params.projectID)
          .then(function(result) {
            service.setProjectData(result, params);
        });
      }
    }
    
    function getProjectDataFromLocation() {
      var state = stateLocationService.getStateFromLocation();
      if ("projectID" in state.stateParams && state.stateParams.projectID != service.projectID) {
        service.projectID = state.stateParams.projectID;
        service.getProjectData(state.stateParams);
        if ("commentID" in state.stateParams) {
          //
        }
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

    function jumpToNewProject(result) {
      service.setProjectData(result);
      projectListService.updateAllProjects(result.data.projectID);
      $state.go("project.edit.description", {projectID: result.data.projectID});
    }

    function newProject() {
      attributesService.newProjectAttributes();
      $state.go("select.addProject");
    }
    
    function RestoreState() {
      if (sessionStorage.projectDataServiceAttributes != "undefined") {
        service.restoredParams = angular.fromJson(sessionStorage.projectDataServiceAttributes);
      }
    };

    function saveProject(tableName, keys) {
      var formData = attributesService.getFormData(tableName, keys);
      var projectID = $state.params.projectID ? $state.params.projectID : "";
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
      service.noCheck = true;
      $state.go("project.edit." + tableName, {projectID: $state.params.projectID, noCheck: true});
    };

    function SaveState() {
      sessionStorage.projectDataServiceAttributes = angular.toJson($stateParams);
    };
      
    function setProjectData(result, params) {
      //return;
      attributesService.updateProjectAttributes(result, params);
      service.success = result.data.success;
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

    function showEditSuccess() {
      return Boolean(_.contains(projectForm.classList, "ng-pristine") && service.success);
    }

    service.SaveState();
    return service;
  }

}());
