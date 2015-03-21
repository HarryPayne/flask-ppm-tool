(function() {
  
  "use strict";
  
  app.controller('filterController', ['$scope', '$http', 'projectListService',
  function($scope, $http, projectListService){
    $scope.nameLogic = "or";
    $scope.finalID = "0";
    
    $scope.projectList = projectListService;
    
  }
  
  ]);
    
}());
