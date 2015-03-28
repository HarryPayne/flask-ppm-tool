(function() {
  
  "use strict";
  
  var manage = angular.module("app.manage", ['ui.router']);
  
  manage.config(['$stateProvider', function($stateProvider){
    $stateProvider
      .state("manage", {
        name: "manage",
        url: "/manage",
        templateUrl: "/static/manage/manage.html",
        controller: "manageController",
        data: {
          requiresLogin: true
        }
      });
    }
  ]);
  
  manage.controller("manageController", ['$scope',
    function($scope) {
      //
    }
  ]);
  
}());
