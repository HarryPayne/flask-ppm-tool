(function() {
  
  "use strict";
  
  angular
    .module("PPT")
    .config(PPTConfig);
  
  PPTConfig.$inject = ["$urlRouterProvider", "jwtInterceptorProvider", "$httpProvider"];
  
  function PPTConfig($urlRouterProvider, jwtInterceptorProvider, $httpProvider) {
    $urlRouterProvider.otherwise('/select');
  };
  
}());
