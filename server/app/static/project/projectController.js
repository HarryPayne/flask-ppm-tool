(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .controller("Project", Project);
  
  Project.$inject = ["$rootScope", "$stateParams", "projectDataService", "projectListService", "stateLocationService"];
  
  function Project($rootScope, $stateParams, projectDataService, projectListService, stateLocationService){
    var vm = this;
    
    vm.ls = projectListService;
    vm.projectList = vm.ls.model;
    vm.currentUser = $rootScope.currentUser;
    
    vm.ds = projectDataService;
    if (!$stateParams.projectID) {
      var projectID = vm.projectList.list[0];
      $stateParams.projectID = vm.ds.projectID = projectID;
      stateLocationService.stateChange();
    }
    if (!vm.ds.projectID) {
      vm.ds.projectID = $stateParams.projectID;
      vm.ds.getProjectData(projectID);
    }

    vm.attributes = projectDataService.attributes;
    vm.currentMode = projectDataService.currentMode;
    vm.viewUrl = projectDataService.viewUrl;
    vm.changeMode = projectDataService.changeMode;
    
    $rootScope.$on("projectDataBroadcast", function() {
      vm.attributes = projectDataService.attributes;
      projectListService.updateProjectListProjectID(projectDataService.projectID, vm.projectList.list);
    });
    $rootScope.$on("projectListBroadcast", function() {
      vm.projectList = projectListService.model;
      vm.ds.getProjectData(vm.projectList.projectID);
    });
  };
  
}());
