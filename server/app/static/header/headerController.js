(function() {
  
  "use strict";
  
  angular
    .module("app.header")
    .controller("Header", Header);
  
  Header.$inject = ["$rootScope", "$state", "projectListService", "loginStateService"];
  
  function Header($rootScope, $state, projectListService, loginStateService) {
    var vm = this;
    
    this.currentUser = $rootScope.currentUser;
    this.projectList = projectListService.getModel;

    this.loggedIn = loginStateService.loggedIn;
    this.login = loginStateService.login;
    this.logout = loginStateService.logout;

    this.jumpToNextProject = jumpToNextProject;
    this.jumpToPreviousProject = jumpToPreviousProject;
    
    $rootScope.$on("$stateChangeSuccess", function(e, toState){
      vm.isActive = isActive;
      vm.hasNext = hasNext;
      vm.hasPrevious = hasPrevious;

      function isActive(name) {
        return toState.name === name;
      }; 
  
      function hasNext() {
        return (vm.isActive("project.edit") || vm.isActive("project.detail")) && vm.projectList().next > -1;
      };
  
      function hasPrevious() {
        return (vm.isActive("project.edit") || vm.isActive("project.detail")) && vm.projectList().previous > -1;
      };
    });
    
    function jumpToNextProject() {
      if (vm.projectList().next > -1) {
         projectListService.jumpToProject(vm.projectList().next);
      }
    };

    function jumpToPreviousProject () {
      if (vm.projectList().previous > -1) {
         projectListService.jumpToProject(vm.projectList().previous);
      }
    };
  }

  
}());