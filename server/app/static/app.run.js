(function() {
  
  "use strict";
  
  angular
    .module("PPT")
    .run(initializeServices);
  
  initializeServices.$inject = ["$rootScope", "projectListService", "projectDataService", 
                               "stateLocationService"];
  
  function initializeServices($rootScope, projectListService, projectDataService, stateLocationService) {
    $rootScope.$on("$stateChangeSuccess", _initializeServices);
    
    function _initializeServices(e, toState, toParams, fromState, fromParams){
      if (toState.name =="select" || toState.name == "filter") {
        projectListService.updateAllProjects();
        projectListService.setList(projectListService.getIDListFromAllProjects());
        projectListService.setDescription("none;");
      }
      if (toState.name.substring(0,7) == "project" && !projectListService.hasProjects()) {
        projectListService.updateAllProjects();

        var projectID;
        var masterList = projectListService.getMasterList();
        var selectedIds = masterList.selectedIds;
        var oldProjectID = masterList.projectID;

        if (!toParams.projectID) {
          projectID = stateLocationService.getProjectIDFromLocation();
          if (!projectID) {
            if (projectListService.hasProjects()) {
              projectID = masterList.index > -1 ? selectedIds[masterList.index] : selectedIds[0];
            }
          }
        }
        else {
          projectID = parseInt(toParams.projectID);
          selectedIds = [projectID];
          projectListService.setList(selectedIds);
          projectListService.setDescription("projectID = " + projectID + ";");
        }
        projectListService.updateProjectListProjectID(projectID, selectedIds);

        if (!projectDataService.projectID || projectDataService.projectID != projectID) {
          projectDataService.projectID = projectID;
          projectDataService.getProjectData(projectID);
        }
      }
    }   
  }
  
}());