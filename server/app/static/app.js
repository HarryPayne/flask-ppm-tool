(function() {
  
  "use strict";
  
  var app = angular.module('PPTApp', [
    'app.browse',
    'app.comment',
    'app.curate',
    'app.filter', 
    'app.header', 
    'app.login',
    'app.manage',
    'app.project', 
    'app.select', 
    'app.stateLocation',
    'app.title', 
    'ui.router'
  ]);
  
  app.config(['$urlRouterProvider', 'jwtInterceptorProvider', '$httpProvider',
    function myAppConfig ($urlRouterProvider, jwtInterceptorProvider, $httpProvider) {
      $urlRouterProvider.otherwise('/');
  
      jwtInterceptorProvider.tokenGetter = function(store) {
        return store.get('jwt');
      };
  
      $httpProvider.interceptors.push('jwtInterceptor');
    }
  ]);
  
  app.controller( 'AppCtrl', ['$scope', '$location', 
    function AppCtrl ( $scope, $location ) {
      $scope.$on('$routeChangeSuccess', function(e, nextRoute){
        if ( nextRoute.$$route && angular.isDefined( nextRoute.$$route.pageTitle ) ) {
          $scope.pageTitle = nextRoute.$$route.pageTitle + ' | ngEurope Sample' ;
        }
      });
    }
  ]);

}());