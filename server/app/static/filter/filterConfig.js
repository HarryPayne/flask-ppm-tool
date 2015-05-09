(function() {
  
  "use strict";
  
  angular
    .module("app.filter")
    .config(filterConfig);
  
  filterConfig.$inject = ["$stateProvider"];
  
  function filterConfig($stateProvider) {
    $stateProvider
      .state('filter', {
        name: 'filter',
        url: '/filter',
        controller: 'Filter',
        templateUrl: '/static/filter/filter.html',
        data: {
          requiresLogin: false
        }
      });
  };
  
}());
