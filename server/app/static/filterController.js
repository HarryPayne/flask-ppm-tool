(function() {
  
  "use strict";
  
  var filtertCtl = angular.module("app.filter", []);
  
  filtertCtl.config(function($stateProvider) {
    $stateProvider
    .state('filter', {
      name: 'filter',
      url: '/filter',
      controller: 'filterController',
      templateUrl: '/filterView'
    });
  });
  
  filtertCtl.controller('filterController', ['$scope', '$http', 'projectListService',
    'selectStateService',
    function($scope, $http, projectListService, selectStateService){
      
      $scope.projectList = projectListService.model;
      $scope.selectState = selectStateService;
            
      $scope.$on("projectListBroadcast", function() {
        $scope.projectList = projectListService.model;
      });
    }
  ]);
    
}());
