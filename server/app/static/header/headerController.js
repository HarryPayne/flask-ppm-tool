(function() {
  
  "use strict";
  
  angular
    .module("app.header")
    .controller("Header", Header);
  
  Header.$inject = ["$rootScope", "$state", "projectListService", "loginStateService"];
  
  function Header($rootScope, $state, projectListService, loginStateService) {
    var vm = this;
    
    this.currentUser = $rootScope.currentUser;
    this.masterList = projectListService.getMasterList;

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
        return (vm.isActive("project.edit") || vm.isActive("project.detail")) && vm.masterList().next > -1;
      };
  
      function hasPrevious() {
        return (vm.isActive("project.edit") || vm.isActive("project.detail")) && vm.masterList().previous > -1;
      };
    });
    
    function jumpToNextProject() {
      if (vm.masterList().next > -1) {
         projectListService.jumpToProject(vm.masterList().next);
      }
    };

    function jumpToPreviousProject () {
      if (vm.masterList().previous > -1) {
         projectListService.jumpToProject(vm.masterList().previous);
      }
    };
  }

  
}());
