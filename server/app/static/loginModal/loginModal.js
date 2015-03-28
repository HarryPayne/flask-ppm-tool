(function(){

  var loginModalCtrl = angular.module('app.loginModal', [
    'ui.bootstrap',
    'angular-storage',
    'angular-jwt',
    'app.login'
  ]);
  
  loginModalCtrl.controller('LoginModalCtrl', function($scope, UsersApi) {

    this.cancel = $scope.$dismiss;
    
    this.submit = function (email, password) {
      UsersApi.login(email, password).then(function (user) {
        $scope.$close(user);
      });
    };
    
  });

  loginModalCtrl.service('loginModal', ['$modal', '$rootScope', 'store', 'jwtHelper',
    function($modal, $rootScope, store, jwtHelper) {

      function assignCurrentUser(response) {
        if (response.status == 200) {
          store.set('jwt', response.data.token);
          var user = jwtHelper.decodeToken(response.data.token);
          $rootScope.currentUser = user;
          return user;
        }
        return response;
      };

      return function() {
        var instance = $modal.open({
          templateUrl: 'static/loginModal/login.html',
          controller: 'LoginModalCtrl',
          controllerAs: 'LoginModalCtrl'
        });

        return instance.result.then(assignCurrentUser);
      };
    }
  ]);
  
  loginModalCtrl.run(['$rootScope', '$state', 'store', 'jwtHelper',  'loginModal',
    function ($rootScope, $state, store, jwtHelper, loginModal) {
      $state.transitionTo('select');

      $rootScope.$on('$stateChangeStart', function(e, to) {
        var requiresLogin = to.data && to.data.requiresLogin;
        var noActiveToken = !store.get('jwt') || jwtHelper.isTokenExpired(store.get('jwt'));
        if (requiresLogin && noActiveToken) {
          e.preventDefault();
          
          loginModal()
          .then(function () {
            return $state.go(to.name);
          })
          .catch(function () {
            return $state.go('select');
          });
        }
      });
    }
  ]);
  
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
              $state.go('select');
              deferred.reject(rejection);
            });
  
          return deferred.promise;
        }
      };
    });
  
  });

  loginModalCtrl.factory('UsersApi', ['$http', 
    function($http) {
      var service = {};
    
      service.login = function(username, password) {
        return $http({
          url: 'http://localhost:5000/auth',
          method: 'POST',
          data: {"username": username, "password": password}
        });
      };
  
      return service;    
    }
  ]);
  
  window.onbeforeunload = function (event) {
    store.remove("jwt");
  };
    
}());
