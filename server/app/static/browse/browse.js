(function() {
  
  "use strict";
  
  var browse = angular.module("app.browse", ['ui.router']);
  
  browse.config(['$stateProvider', function($stateProvider){
    $stateProvider
      .state("browse", {
        name: "browse",
        url: "/browse",
        templateUrl: "/static/browse/browse.html",
        controller: "browseController",
        data: {
          requiresLogin: false
        }
      });
    }
  ]);
  
  browse.controller("browseController", ['$scope',
    function($scope) {
      //
    }
  ]);
  
}());
