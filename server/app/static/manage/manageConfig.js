(function() {
  
  "use strict";
  
  angular
    .module("app.manage")
    .config(manageConfig);
  
  manageConfig.$inject = ["$stateProvider"];
  
  function manageConfig($stateProvider) {
    $stateProvider
      .state("manage", {
        name: "manage",
        url: "/manage",
        templateUrl: "/static/manage/manage.html",
        controller: "Manage",
        data: {
          requiresLogin: true
        }
      });
  };
  
}());