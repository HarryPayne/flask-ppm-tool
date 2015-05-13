(function() {
  
  "use strict";
  
  angular
    .module("PPT")
    .config(PPTConfig);
  
  PPTConfig.$inject = ["$urlRouterProvider", "jwtInterceptorProvider", "$httpProvider"];
  
  function PPTConfig($urlRouterProvider, jwtInterceptorProvider, $httpProvider) {
    $urlRouterProvider.otherwise('/');

    jwtInterceptorProvider.tokenGetter = function(store) {
      return store.get('jwt');
    };

    $httpProvider.interceptors.push('jwtInterceptor');
  };
  
}());
