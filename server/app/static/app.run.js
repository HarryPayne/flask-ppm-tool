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
        var masterList = projectListService.getModel();
        var list = masterList.list;
        var oldProjectID = masterList.projectID;

        if (!toParams.projectID) {
          projectID = stateLocationService.getProjectIDFromLocation();
          if (!projectID) {
            if (projectListService.hasProjects()) {
              projectID = masterList.index > -1 ? list[masterList.index] : list[0];
            }
          }
        }
        else {
          projectID = parseInt(toParams.projectID);
          list = [projectID];
          projectListService.setList(list);
          projectListService.setDescription("projectID = " + projectID + ";");
        }
        projectListService.updateProjectListProjectID(projectID, list);
        //stateLocationService.stateChange();

        if (!projectDataService.projectID || projectDataService.projectID != projectID) {
          projectDataService.projectID = projectID;
          projectDataService.getProjectData(projectID);
        }
      }
    }   
  }
  
}());