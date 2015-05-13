(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .controller("Project", Project);
  
  Project.$inject = ["$stateParams", "projectDataService", "projectListService", "stateLocationService"];
  
  function Project($stateParams, projectDataService, projectListService, stateLocationService){
    var vm = this;
    
    vm.ls = projectListService;
    vm.projectList = vm.ls.getModel;
    
    vm.ds = projectDataService;
    vm.attributes = vm.ds.getAttributes;

    initialLoad();

    function initialLoad() {
      if (!$stateParams.projectID) {
        var projectID = stateLocationService.getProjectIDFromLocation();
        if (!projectID) {
          if (vm.projectList().list.length) {
            var list = vm.projectList().list;
            projectID = vm.projectList().index > -1 ? list[vm.projectList().index] : list[0];
          }
        }
        else {
          projectListService.updateAllProjects();
          projectListService.setList([projectID]);
          projectListService.setDescription("projectID = " + projectID + ";");
        }
      }
      projectListService.updateProjectListProjectID(projectID, vm.projectList().list);
      stateLocationService.stateChange();

      if (!vm.ds.projectID) {
        vm.ds.projectID = $stateParams.projectID;
        vm.ds.getProjectData(projectID);
      }

      vm.currentMode = projectDataService.currentMode;
      vm.viewUrl = projectDataService.viewUrl;
      vm.changeMode = projectDataService.changeMode;
    }
  };
  
}());
