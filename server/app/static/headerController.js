(function () {
  
  "use strict";
  
  var headerCtl = angular.module("app.header", ['ui.router']);
  
  headerCtl.controller('headerController', ['$scope', '$rootScope', '$state', 'projectListService',
    function($scope, $rootScope, $state, projectListService) {
      
      $scope.projectList = projectListService.model;
      $scope.jumpToPreviousProject = function() {
        if ($scope.projectList.previous > -1) {
           projectListService.jumpToProject($scope.projectList.previous);
        }
      };
      $scope.jumpToNextProject = function() {
        if ($scope.projectList.next > -1) {
           projectListService.jumpToProject($scope.projectList.next);
        }
      };
      
      $rootScope.$on("$stateChangeSuccess", function(e, toState){
        $scope.isActive = function(name) {
          return toState.name === name;
        }; 
        $scope.hasPrevious = function() {
          return ($scope.isActive("project") || $scope.isActive("project.detail")) && $scope.projectList.previous > -1;
        };
        $scope.hasNext = function() {
          return ($scope.isActive("project") || $scope.isActive("project.detail")) && $scope.projectList.next > -1;
        };
      });

      $scope.$on("projectListBroadcast", function() {
        $scope.projectList = projectListService.model;
      });

    }
  ]);
}());
