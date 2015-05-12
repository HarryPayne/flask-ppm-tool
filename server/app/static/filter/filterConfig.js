(function() {
  
  "use strict";
  
  angular
    .module("app.filter")
    .config(filterConfig);
  
  filterConfig.$inject = ["$stateProvider"];
  
  function filterConfig($stateProvider) {
    $stateProvider
      .state("filter", {
        name: "filter",
        url: "/filter",
        controller: "Filter",
        controllerAs: "filter",
        templateUrl: "/static/filter/filter.html",
        data: {
          requiresLogin: false
        }
      });
  };
  
}());
