(function(){

  var loginModalCtrl = angular.module('app.loginModal', [
    'ui.bootstrap',
    'angular-storage',
    'angular-jwt',
    'app.login'
  ]);
  
  loginModalCtrl.service('loginModal', function($modal, $rootScope) {

    function assignCurrentUser(user) {
      //$rootScope.currentUser = user;
      return user;
    }
    
    return function() {
      var instance = $modal.open({
        templateUrl: 'static/loginModal/login.html',
        controller: 'LoginModalCtrl',
        controllerAs: 'LoginModalCtrl'
      });
      
      //return instance.result.then(assignCurrentUser);
      return instance.result;
    };
  });
  
  loginModalCtrl.controller('LoginModalCtrl', function($scope, $rootScope, UsersApi) {

    this.cancel = $scope.$dismiss;
    
    this.login = function (email, password) {
      UsersApi.login(email, password);
      if ($rootScope.currentUser) {
        $scope.$close();
      };
    };
    
  });

  loginModalCtrl.config(function ($httpProvider) {
  
    $httpProvider.interceptors.push(function ($timeout, $q, $injector) {
      var loginModal, $http, $state;
  
      // this trick must be done so that we don't receive
      // `Uncaught Error: [$injector:cdep] Circular dependency found`
      $timeout(function () {
        loginModal = $injector.get('loginModal');
        $http = $injector.get('$http');
        $state = $injector.get('$state');
      });
  
      return {
        responseError: function (rejection) {
          if (rejection.status !== 401) {
            return rejection;
          }
  
          var deferred = $q.defer();
  
          loginModal()
            .then(function () {
              deferred.resolve( $http(rejection.config) );
            })
            .catch(function () {
              deferred.reject(rejection);
            });
  
          return deferred.promise;
        }
      };
    });
  
  });

  loginModalCtrl.factory('UsersApi', ['$q', '$rootScope', '$http', '$state', 'store', 'jwtHelper', '$stateParams', 
    function($q, $rootScope, $http, $state, store, jwtHelper, $stateParams) {
      var service = {};
    
      service.broadcast = function() {
          $rootScope.$broadcast("UsersApiBroadcast");
      };
    
      service.assignCurrentUser = function(token) {
          store.set('jwt', token);
          $rootScope.currentUser = jwtHelper.decodeToken(token);
          return $rootScope.currentUser;
      };
      
      service.login = function(username, password) {
        var d = $q.defer();
        
        setTimeout(function() {
          $http({
            url: 'http://localhost:5000/auth',
            method: 'POST',
            data: {"username": username, "password": password}
          }).then(function(response) {
            if (response.data.error) {
              d.reject
            } else {
              service.assignCurrentUser(response.data.token);
              d.resolve;
            }
          }, function(error) {
            d.reject;
          });
        }, 100);

        return d.promise;
      };
  
      return service;    
    }
  ]);
  
}());
