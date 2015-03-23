(function() {
  
  "use strict";
  
  app.controller('projectController', ['$scope', '$http', '$stateParams', 'projectListService',
    function($scope, $http, $stateParams, projectListService){
  
      $scope.projectList = projectListService.model;
/*      if ($stateParams.projectID) {
        $scope.projectID = $stateParams.projectID;
        if ($scope.projectList.allProjects.length == 0) {
          projectListService.init($scope.projectID, "from url");
        }
        projectListService.update($scope.projectID, "from url");
        $scope.projectList = projectListService.model;
      }
      else if ($scope.projectList.allProjects.length > 0) {
        projectListService.update($scope.projectID, "first in list");
        $scope.projectList = projectListService.model;
      }
      else {
        projectListService.init();
        $scope.projectList = projectListService.model;
        if ($scope.projectList.allProjects.length > 0) {
          $scope.projectID = $scope.projectList.allProjects[0].projectID;
        }
      }
      projectListService.projectNameFromID($scope.projectID);
*/
      
      $scope.$on("projectListBroadcast", function() {
        $scope.projectList = projectListService.model;
        //projectListService.update($scope.projectID, "from url");
      });

    } 
  ]);
    
}());
