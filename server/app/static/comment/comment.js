(function() {
  
  "use strict";
  
  var comment = angular.module("app.comment", ['ui.router']);
  
  comment.config(['$stateProvider', function($stateProvider){
    $stateProvider
      .state("comment", {
        name: "comment",
        url: "/comment",
        templateUrl: "/static/comment/comment.html",
        controller: "commentController",
        data: {
          requiresLogin: true
        }
      });
    }
  ]);
  
  comment.controller("commentController", ['$scope',
    function($scope) {
      //
    }
  ]);
  
}());
