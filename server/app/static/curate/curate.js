(function() {
  
  "use strict";
  
  var curate = angular.module("app.curate", ['ui.router']);
  
  curate.config(['$stateProvider', function($stateProvider){
    $stateProvider
      .state("curate", {
        name: "curate",
        url: "/curate",
        templateUrl: "/static/curate/curate.html",
        controller: "curateController",
        data: {
          requiresLogin: true
        }
      });
    }
  ]);
  
  curate.controller("curateController", ['$scope',
    function($scope) {
      //
    }
  ]);
  
}());
