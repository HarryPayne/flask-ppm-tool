(function() {
  
  "use strict";
  
  angular
    .module("PPT")
    .run(initializeApp);
  
  initializeApp.$inject = ["$rootScope", "projectListService", "projectDataService", 
                               "stateLocationService"];
  
  function initializeApp($rootScope, projectListService, projectDataService, stateLocationService) {
    $rootScope.$on("$stateChangeStart", _initializeApp);
    
    function _initializeApp(e, toState, toParams, fromState, fromParams){
      window.onbeforeunload = function (event) {
        $rootScope.$broadcast('savestate');
      };
  
      if (toState.name.substring(0, "select".length) =="select" || toState.name == "filter") {
        // Reload the master list before selecting projects, in case a new one was added.
        projectListService.updateAllProjects();
        projectListService.setList(projectListService.getIDListFromAllProjects());
        projectListService.setDescription("none;");
      }
      if (toState.name.substring(0,"project".length) == "project" && !projectListService.hasProjects()) {
        // Make sure project data are present if starting the app from a bookmarked project url.
        projectListService.updateAllProjects();

        var projectID;
        var masterList = projectListService.getMasterList();
        var selectedIds = masterList.selectedIds;
        var oldProjectID = masterList.projectID;

        if (!toParams.projectID) {
          projectID = stateLocationService.getStateFromLocation().stateParams.projectID;
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
          projectListService.setSql({col_name: "projectID",
                                     val: projectID,
                                     op: "equals" });
        }
        projectListService.updateProjectListProjectID(projectID, selectedIds);

        if (!projectDataService.projectID || projectDataService.projectID != projectID) {
          projectDataService.projectID = projectID;
          projectDataService.getProjectData(toParams);
        }
      }
    }   
  }
  
}());