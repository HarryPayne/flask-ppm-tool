(function() {
  
  "use strict";
  
  angular
    .module("app.login")
    .config(loginConfig);
  
  loginConfig.$inject = ["jwtInterceptorProvider", "$httpProvider"];
  
  function loginConfig(jwtInterceptorProvider, $httpProvider) {
  
    jwtInterceptorProvider.tokenGetter = function(store) {
      return store.get('jwt');
    };

    $httpProvider.interceptors.push('jwtInterceptor');

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
            .then(
              function () {
                deferred.resolve( $http(rejection.config) );
              },
              function () {
                $state.go('select');
                deferred.reject(rejection);
              }
            );
  
          return deferred.promise;
        }
      };
    });
  
  };
  
}());