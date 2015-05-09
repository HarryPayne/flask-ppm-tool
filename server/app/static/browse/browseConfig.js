(function() {
  
  "use strict";
  
  angular
    .module("app.browse")
    .config(browseConfig);
  
  function browseConfig($stateProvider) {
    $stateProvider
      .state("browse", {
        name: "browse",
        url: "/browse",
        templateUrl: "/static/browse/browse.html",
        controller: "Browse",
        data: {
          requiresLogin: false
        }
      });
  }
  
}());
