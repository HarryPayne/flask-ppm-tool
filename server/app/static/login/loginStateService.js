(function() {
  
  "use strict";
  
  angular
    .module("app.login")
    .factory("loginStateService", loginStateService);
  
  loginStateService.$inject = ["$rootScope", "$http", "store", "jwtHelper", 
                               "loginModalService"];
  
  function loginStateService($rootScope, $http, store, jwtHelper, loginModalService) {
    var service = {
      loggedIn: loggedIn,
      login: login,
      logout: logout,
      SaveState: SaveState,
      RestoreState: RestoreState
    };
    
    return service;    
    
    function loggedIn() {
      return Boolean(store.get('jwt'));
    }
    
    function login() {
      loginModalService();
    }

    function logout() {
      store.remove('jwt');
      delete $rootScope.currentUser;
    }

    function SaveState() {
      sessionStorage.loginStateService = angular.toJson(service.model);
    }
    
    function RestoreState() {
      service.model = angular.fromJson(sessionStorage.loginStateService);
    }
    
    $rootScope.$on("savestate, service.SaveState");
    $rootScope.$on("restorestate, service.RestoreState");
  };
   
}());