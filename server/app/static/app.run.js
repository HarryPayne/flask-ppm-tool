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
      
      var tab = _.first(toState.name.split("."));
      if (tab =="select" || tab == "filter") {
        // Reload the master list before selecting projects, in case a new one was added.
        projectListService.updateAllProjects();
        projectListService.setList(projectListService.getIDListFromAllProjects());
        projectListService.setDescription("none;");
      }
      else if (tab == "project" && (!projectListService.hasProjects() || toParams.projectID == "")) {
        // Make sure project data are present if starting the app from a bookmarked project url.
        if (!projectListService.hasProjects()) {
          projectListService.updateAllProjects();
        }

        var projectID;
        var masterList = projectListService.getMasterList();
        var selectedIds = masterList.selectedIds;
        var oldProjectID = masterList.projectID;

        if (!toParams.projectID) {
          projectID = stateLocationService.getStateFromLocation().params.projectID;
          if (!projectID) {
            if (projectListService.hasProjects()) {
              projectID = projectListService.getProjectID();
            }
          }
        }
        else {
          projectID = parseInt(toParams.projectID);
          //selectedIds = [projectID];
          projectListService.setList(selectedIds);
          projectListService.setDescription("projectID = " + projectID + ";");
          projectListService.setSql({col_name: "projectID",
                                     val: projectID,
                                     op: "equals" });
        }
        //projectListService.updateProjectListProjectID(projectID, selectedIds);

        toParams.projectID = projectID;

        if (!projectDataService.projectID || projectDataService.projectID != projectID) {
          projectDataService.getProjectData(toParams);
        }
      }
      else if (tab == "report" && !projectListService.hasProjects()) {
        projectListService.updateAllProjects();
      }
    }   
  }
  
}());