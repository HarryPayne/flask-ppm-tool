(function() {
  
  "use strict";
  
  var app = angular.module('PPTApp', [
    'app.select', 
    'app.project', 
    'app.filter', 
    'app.header', 
    'app.title', 
    'app.login', 
    'ui.router',
    'angular-jwt',
    'angular-storage'
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
  
  app.run(['$rootScope', '$state', 'store', 'jwtHelper', 
    function ($rootScope, $state, store, jwtHelper) {
      $state.transitionTo('select');

      $rootScope.$on('$stateChangeStart', function(e, to) {
        if (to.data && to.data.requiresLogin) {
          if (!store.get('jwt') || jwtHelper.isTokenExpired(store.get('jwt'))) {
            e.preventDefault();
            $state.go('login');
          }
        }
      });
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
