(function() {
  
  "use strict";
  
  var selectApp = angular.module('SelectApp',[]);
  
  selectApp.controller('selectController', ['$scope', '$http', 
  function($scope, $http){
    
    $http.get('/getBriefDescriptions').
      success(function(results){
        $scope.projects = results;
      });
  }
  
  ]);
  
}());
