(function() {
  
  "use strict";
  
  app.controller('projectController', ['$scope', '$http', '$stateParams', 'projectListService',
    function($scope, $http, $stateParams, projectListService){
  
      $scope.projectList = projectListService.model;
      
      $scope.$on("projectListBroadcast", function() {
        $scope.projectList = projectListService.model;
      });

    } 
  ]);
    
}());
