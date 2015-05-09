(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .controller("Select", Select);
  
  Select.$inject = ["$scope", "projectListService", "selectStateService"];
  
  function Select($scope, projectListService, selectStateService) {
    var vm = this;
    
    vm.ls = projectListService;
    vm.projectList = vm.ls.model;
    vm.jumpToProject = vm.ls.jumpToProject;
    
    vm.ss = selectStateService;
    vm.selectState = vm.ss.model;
    
    $scope.$on("projectListBroadcast", function() {
      $scope.projectList = projectListService.model;
    });
  };
  
}());
