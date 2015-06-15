(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .config(selectConfig);
  
  function selectConfig($stateProvider) {
    $stateProvider
      .state("select", {
        name: "select",
        url: "/",
        controller: "Select",
        controllerAs: "select",
        templateUrl: "/static/select/select.html",
        data: {
          requiresLogin: false
        }
      })
      .state("select.add", {
        name: "select",
        url: "add",
        data: {
          requiresLogin: true
        }
      })
      .state("select.add.project", {
        name: "select",
        url: "/project",
        controller: "Select",
        controllerAs: "select"
      });
  };
  
}());
