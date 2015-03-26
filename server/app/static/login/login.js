(function() {
  
  var loginCtl = angular.module('app.login', [
    'ui.router',
    'angular-storage'
  ]);
  
  loginCtl.config(function($stateProvider) {
    $stateProvider.state('login', {
      url: '/login',
      controller: 'LoginCtrl',
      templateUrl: 'static/login/login.html'
    });
  });
  
  loginCtl.controller( 'LoginCtrl', ['$scope', '$http', 'store', '$state', 'loginStateService',
    function LoginController( $scope, $http, store, $state, loginStateService) {
  
      loginStateService.model = $scope.user = {};
    
      $scope.login = function() {
        $http({
          url: 'http://127.0.0.1:5000/auth',
          method: 'POST',
          data: $scope.user
        }).then(function(response) {
          store.set('jwt', response.data.token);
          $state.go('select');
        }, function(error) {
          alert(error);
        })
        .then(function() {
          if (store.get('jwt')) {
            $http({
              url: 'http://127.0.0.1:5000/getUser/' + $scope.user.username
            }).success(function(response){
              $scope.user = response;
            });
          }
        });
      };
    }
  ]);

  loginCtl.factory("loginStateService", ['$rootScope', 
    function($rootScope) {
      
      var service = {
        model: {
          name: ""
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
