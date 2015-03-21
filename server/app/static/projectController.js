(function() {
  
  "use strict";
  
  app.controller('projectController', ['$scope', '$http', 'projectListService',
  function($scope, $http, projectListService){

    $scope.projectList = projectListService;
    
  }
  
  ]);
    
}());
