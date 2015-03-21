(function() {
  
  "use strict";
  
  app.controller('projectController', ['$scope', '$http', 'projectListService',
    function($scope, $http, projectListService){
  
      $scope.projectList = projectListService.model;
      if (!$scope.projectList.list[$scope.projectList.index]) {
        $http.jsonp("/getProjectList")
          .success(function(results) {
            $scope.projectList.model = results;
          })
          .error(function() {alert("Error!");});
      }
      var index = $scope.projectList.index;
      var projectID = $scope.projectList.list[index];
      if (projectID) $scope.projectID = projectID;
    
    }
  ]);
    
}());
