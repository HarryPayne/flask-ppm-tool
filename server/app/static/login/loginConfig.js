(function() {
  
  "use strict";
  
  angular
    .module("app.login")
    .config(loginConfig);
  
  loginConfig.$inject = ["$httpProvider"];
  
  function loginConfig($httpProvider) {
  
    $httpProvider.interceptors.push(function ($timeout, $q, $injector) {
      var loginService, $http, $state;
  
      /* Avoid `Uncaught Error: [$injector:cdep] Circular dependency found` */
      $timeout(function () {
        loginService = $injector.get("loginService");
        $http = $injector.get('$http');
        $state = $injector.get('$state');
      });
  
      return {
        responseError: function (rejection) {
          if (rejection.status !== 401) {
            return rejection;
          }
  
          var deferred = $q.defer();
  
          loginService()
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
  
  };
  
}());