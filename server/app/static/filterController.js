(function() {
  
  "use strict";
  
  var filtertCtl = angular.module("app.filter", [
    "ui.router",
    "angular-storage",
    "angular-jwt"
  ]);
  
  filtertCtl.config(function($stateProvider) {
    $stateProvider
    .state('filter', {
      name: 'filter',
      url: '/filter',
      controller: 'filterController',
      templateUrl: '/filterView',
      data: {
        requiresLogin: true
      }
    });
  });
  
  filtertCtl.controller('filterController', ['$rootScope', '$scope', '$http', 
    'store', 'jwtHelper', 'projectListService', 'selectStateService',
    function($rootScope, $scope, $http, store, jwtHelper, projectListService, selectStateService){
      
      $scope.jwt = store.get('jwt');
      $scope.decodedJwt = $scope.jwt && jwtHelper.decodeToken($scope.jwt);

      $scope.projectList = projectListService.model;
      $scope.selectState = selectStateService;
            
      $scope.$on("projectListBroadcast", function() {
        $scope.projectList = projectListService.model;
      });
    }
  ]);

}());
