(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .controller("Project", Project);
  
  Project.$inject = ["$scope", "$rootScope", "projectDataService", "projectListService"];
  
  function Project($scope, $rootScope, projectDataService, projectListService){
    var vm = this;
    
    vm.ls = projectListService;
    vm.projectList = vm.ls.model;
    vm.currentUser = $rootScope.currentUser;
    
    vm.ds = projectDataService;

    vm.attributes = projectDataService.attributes;
    vm.currentMode = projectDataService.currentMode;
    vm.viewUrl = projectDataService.viewUrl;
    vm.changeMode = projectDataService.changeMode;
    
    $scope.$on("projectDataBroadcast", function() {
      vm.attributes = projectDataService.attributes;
    });
    $scope.$on("projectListBroadcast", function() {
      vm.projectList = projectListService.model;
      vm.ds.getProjectData(vm.projectList.projectID);
    });
  };
  
}());
