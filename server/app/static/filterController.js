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
        requiresLogin: false
      }
    });
  });
  
  filtertCtl.controller('filterController', ['$scope', '$http', 
    'store', 'jwtHelper', 'projectListService', 'selectStateService',
    function($scope, $http, store, jwtHelper, projectListService, selectStateService){
      
      $scope.projectList = projectListService.model;
      $scope.selectState = selectStateService;
            
      $scope.$on("projectListBroadcast", function() {
        $scope.projectList = projectListService.model;
      });
    }
  ]);

}());
