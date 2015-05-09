(function() {
  
  "use strict";
  
  angular
    .module("app.comment")
    .config(commentConfig);
  
  function commentConfig($stateProvider) {
    $stateProvider
      .state("comment", {
        name: "comment",
        url: "/comment",
        templateUrl: "/static/comment/comment.html",
        controller: "Comment",
        data: {
          requiresLogin: true
        }
      });
  }
  
}());
