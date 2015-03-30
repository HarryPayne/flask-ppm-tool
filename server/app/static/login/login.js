(function() {
  
  "use strict";
  
  var loginCtl = angular.module('app.login', [
    'ui.router',
    'angular-storage',
    'angular-jwt',
    'ui.bootstrap'
  ]);
  
  loginCtl.config(function($stateProvider) {
    $stateProvider
    .state('login', {
      url: '/login',
      controller: 'LoginCtrl',
      templateUrl: 'static/login/login.html'
    })
    .state('login.unreachable', {
      url: '/',
    });
  });
  
  loginCtl.controller( 'LoginCtrl', ['$scope', '$http', 'store', '$state', 
    '$stateParams', 'loginStateService',
    function ($scope, $http, store, $state, $stateParams, loginStateService) {
  
      $scope.user = {"username": "payne"};
    
      $scope.submit = function(username, password) {
        $http({
          url: 'http://localhost:5000/auth',
          method: 'POST',
          data: {"username": username, "password": password}
        }).then(function(response) {
          store.set('jwt', response.data.token);
          loginStateService.assignCurrentUser(store.get('jwt'));
        }, function(error) {
          alert(error);
        });
      };
        
    }
  ]);
  
  loginCtl.service('loginModal', ['$modal', '$rootScope', 'loginStateService', 
    function($modal, $rootScope, loginStateService) {
      return function () {
        var instance = $modal.open({
          templateUrl: 'static/login/login.html',
          controller: 'LoginCtrl',
          controllerAs: "LoginCtrl"
        });
          
        return instance.result.then(loginStateService.assignCurrentUser);
      };
    }
  ]);

  loginCtl.factory("loginStateService", ['$rootScope', '$http', 'store', 'jwtHelper',
    function($rootScope, $http, store, jwtHelper) {
      
      var service = {
        assignCurrentUser: function(token) {
          store.set('jwt', token);
          $rootScope.currentUser = jwtHelper.decodeToken(token);
          return $rootScope.currentUser;
        },
        
        logout: function() {
          store.remove('jwt');
        },

        SaveState: function () {
          sessionStorage.loginStateService = angular.toJson(service.model);
        },
        
        RestoreState: function () {
          service.model = angular.fromJson(sessionStorage.loginStateService);
        }
      };
      
      $rootScope.$on("savestate, service.SaveState");
      $rootScope.$on("restorestate, service.RestoreState");
      
      window.onbeforeunload = function (event) {
        store.remove("jwt");
      };
    
      return service;    
    }
  ]);
  
}());
