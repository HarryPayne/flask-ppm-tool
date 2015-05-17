(function() {
  
  "use strict";
  
  angular
    .module("PPT")
    .run(initializeApp);
  
  initializeApp.$inject = ["$rootScope", "projectListService", "projectDataService", 
                               "stateLocationService"];
  
  function initializeApp($rootScope, projectListService, projectDataService, stateLocationService) {
    $rootScope.$on("$stateChangeSuccess", _initializeApp);
    
    function _initializeApp(e, toState, toParams, fromState, fromParams){
      window.onbeforeunload = function (event) {
        $rootScope.$broadcast('savestate');
      };
  
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