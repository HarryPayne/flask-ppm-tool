(function() {
  
  var loginCtl = angular.module('app.login', [
    'ui.router',
    'angular-storage',
    'angular-jwt',
    'ui.bootstrap'
  ]);
  
  loginCtl.config(function($stateProvider) {
    $stateProvider.state('login', {
      url: '/login',
      controller: 'LoginCtrl',
      templateUrl: 'static/login/login.html'
    });
  });
  
  loginCtl.controller( 'LoginCtrl', ['$scope', '$http', 'store', '$state', 
    '$stateParams', 'loginStateService',
    function LoginController($scope, $http, store, $state, $stateParams, loginStateService) {
  
      $scope.user = {};
    
      $scope.login = function() {
        $http({
          url: 'http://localhost:5000/auth',
          method: 'POST',
          data: $scope.user
        }).then(function(response) {
          store.set('jwt', response.data.token);
          loginStateService.assignCurrentUser(store.get('jwt'));
          $state.go('select');
        }, function(error) {
          alert(error);
        });
      };
        
    }
  ]);

  loginCtl.factory("loginStateService", ['$rootScope', '$http', 'store', 'jwtHelper',
    function($rootScope, $http, store, jwtHelper) {
      
      var service = {
        assignCurrentUser: function(token) {
          $rootScope.currentUser = jwtHelper.decodeToken(token);
          return $rootScope.currentUser;
        },
        
        logout: function() {
          store.remove('jwt');
        },

        SaveState: function () {
          sessionStorage.selectStateService = angular.toJson(service.model);
        },
        
        RestoreState: function () {
          service.model = angular.fromJson(sessionStorage.selectStateService);
        }
      };
      
      $rootScope.$on("savestate, service.SaveState");
      $rootScope.$on("restorestate, service.RestoreState");
      
      window.onbeforeunload = function (event) {
        $rootScope.$broadcast('savestate');
      };
    
      return service;    
    }
  ]);
  
}());
