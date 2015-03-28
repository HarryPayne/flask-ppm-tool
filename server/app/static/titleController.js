(function() {
  
  "use strict";
  
  var titleCtl = angular.module("app.title", ['ui.router']);
  
  titleCtl.controller('TitleController', ['$scope', '$rootScope', '$state', 'projectListService',
    function($scope, $rootScope, $state, projectListService){

      $scope.projectList = projectListService.model;
      $scope.pageTitle = "PPT: Select";
      
      $rootScope.$on("$stateChangeSuccess", function(e, toState){
        if (toState.name == "select") {
          $scope.pageTitle = "PPT: Select";
        }
        else if (toState.name == "filter") {
          $scope.pageTitle = "PPT: Filter Builder";
        }
        else if (toState.name == "browse") {
          $scope.pageTitle = "PPT: Browse";
        }
        else if (toState.name == "project") {
          $scope.pageTitle = $scope.projectList.projectID + ". " + $scope.projectList.projectName;
        }  
        else if (toState.name == "project.detail") {
          $scope.pageTitle = $scope.projectList.projectID + ". " + $scope.projectList.projectName;
        }  
        else {
          $scope.pageTitle = "PPT: Select";
        }      
      });

      $scope.$on("projectListBroadcast", function() {
        $scope.projectList = projectListService.model;
      });
    
    }
  ]);

}());
