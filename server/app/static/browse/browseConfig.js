(function() {
  
  "use strict";
  
  angular
    .module("app.browse")
    .config(browseConfig);
   
  browseConfig.$inject = ["$stateProvider"];
  
  function browseConfig($stateProvider) {
    $stateProvider
      .state("browse", {
        name: "browse",
        url: "/browse",
        templateUrl: "/static/browse/browse.html",
        controller: "Browse",
        controllerAs: "browse",
        data: {
          requiresLogin: false
        }
      });
  }
  
}());
