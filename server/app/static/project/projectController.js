(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .controller("Project", Project);
  
  Project.$inject = ["$scope", "$rootScope", "projectModeService", "projectListService"];
  
  function Project($scope, $rootScope, projectModeService, projectListService){
    var vm = this;
    
    vm.currentMode = projectModeService.currentMode;
    vm.viewUrl = projectModeService.viewUrl;
    
    vm.projectList = projectListService.model;
    vm.currentUser = $rootScope.currentUser;
    
    vm.templateUrl = "/projectEdit/" + projectListService.model.projectID;

    $scope.$on("projectListBroadcast", function() {
      $scope.projectList = projectListService.model;
    });
  };
  
}());
