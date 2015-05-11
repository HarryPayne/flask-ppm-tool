(function() {
  
  "use strict";
  
  angular
    .module("app.header")
    .controller("Header", Header);
  
  Header.$inject = ["$rootScope", "$state", "projectListService", "loginStateService"];
  
  function Header($rootScope, $state, projectListService, loginStateService) {
    var vm = this;
    
    vm.currentUser = $rootScope.currentUser;
    vm.projectList = projectListService.model;

    vm.loggedIn = loginStateService.loggedIn;
    vm.login = loginStateService.login;
    vm.logout = loginStateService.logout;

    vm.jumpToNextProject = jumpToNextProject;
    vm.jumpToPreviousProject = jumpToPreviousProject;
    
    $rootScope.$on("$stateChangeSuccess", function(e, toState){
      vm.isActive = isActive;
      vm.hasNext = hasNext;
      vm.hasPrevious = hasPrevious;

      function isActive(name) {
        return toState.name === name;
      }; 
  
      function hasNext() {
        return (vm.isActive("project.edit") || vm.isActive("project.detail")) && vm.projectList.next > -1;
      };
  
      function hasPrevious() {
        return (vm.isActive("project.edit") || vm.isActive("project.detail")) && vm.projectList.previous > -1;
      };
    });
    
    $rootScope.$on("projectListBroadcast", function() {
      vm.projectList = projectListService.model;
    });

    function jumpToNextProject() {
      if (vm.projectList.next > -1) {
         projectListService.jumpToProject(vm.projectList.next);
         projectListService.broadcast();
      }
    };

    function jumpToPreviousProject () {
      if (vm.projectList.previous > -1) {
         projectListService.jumpToProject(vm.projectList.previous);
         projectListService.broadcast();
      }
    };
  }

  
}());
