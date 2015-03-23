(function() {
  
  "use strict";
  
  app.controller('filterController', ['$scope', '$http', 'projectListService',
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
