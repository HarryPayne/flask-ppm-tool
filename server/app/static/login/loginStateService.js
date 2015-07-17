(function() {
  
  "use strict";
  
  angular
    .module("app.login")
    .factory("loginStateService", loginStateService);
  
  loginStateService.$inject = ["$rootScope", "$http", "store", "jwtHelper", 
                               "loginService"];
  
  function loginStateService($rootScope, $http, store, jwtHelper, loginService) {
    var service = {
      can_edit_roles: ["Curator", "Manager"],
      canAddComments: canAddComments,
      canEditProjects: canEditProjects,
      hasRole: hasRole,
      loggedIn: loggedIn,
      login: login,
      logout: logout,
      SaveState: SaveState,
      RestoreState: RestoreState
    };
    
    return service;    
    
    function canAddComments() {
      if (service.loggedIn()) {
        return true;
      }
      return false;
    }
    function canEditProjects() {
      if (service.loggedIn()) {
        if (_.intersection($rootScope.currentUser.roles, service.can_edit_roles)) {
          return true;
        }
      }
      return false;
    }

    function hasRole(role) {
      if (service.loggedIn()) {
        if (_.contains($rootScope.currentUser.roles, role)) {
          return true;
        }
      }
      return false;
    }

    function loggedIn() {
      return Boolean(store.get('jwt'));
    }
    
    function login() {
      loginService();
    }

    function logout() {
      store.remove('jwt');
      delete $rootScope.currentUser;
    }

    function SaveState() {
      sessionStorage.loginStateService = angular.toJson(service.masterList);
    }
    
    function RestoreState() {
      service.masterList = angular.fromJson(sessionStorage.loginStateService);
    }
    
    $rootScope.$on("savestate, service.SaveState");
    $rootScope.$on("restorestate, service.RestoreState");
  };
   
}());