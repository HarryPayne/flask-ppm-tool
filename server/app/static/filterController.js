(function() {
  
  "use strict";
  
  app.controller('filterController', ['$scope', '$http', 'projectListService',
    'selectStateService',
    function($scope, $http, projectListService, selectStateService){
      $scope.nameLogic = "or";
      $scope.finalID = "0";
      
      $scope.projectList = projectListService;
      $scope.selectState = selectStateService;
      
    }
  ]);
    
}());
