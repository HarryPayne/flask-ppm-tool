(function() {
  
  "use strict";
  
  app.controller('projectController', ['$scope', '$http', '$stateParams', 'projectListService',
    function($scope, $http, $stateParams, projectListService){
  
      $scope.projectList = projectListService;
      if ($stateParams.projectID) {
        $scope.projectID = $stateParams.projectID;
        if ($scope.projectList.model.list.indexOf($scope.projectID) == -1){
          /* make a new project list */
          $scope.projectList.model = {
            list: [$scope.projectID],
            index: 0,
            previous: -1,
            next: -1,
            description: "from url"
          };
        }
      }
      if (!$scope.projectList.model.list[$scope.projectList.model.index]) {
        $http.get("/getProjectList")
          .success(function(results) {
            $scope.projectList.model = results;
          })
          .error(function(result) {alert(result);});
      }
      var index = $scope.projectList.model.index;
      var projectID = $scope.projectList.model.list[index];
      if (projectID) {
        $scope.projectID = projectID;
        $http.get("/getProjectAttributes/" + projectID)
          .success(function(results) {
            $scope.title = results.title;
            $scope.projectName = results.projectName;
            $scope.attributes = results.attributes;
          })
          .error(function(result) {
            alert(result);
          });
      }  
    } 
  ]);
    
}());
