(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .config(selectConfig);
  
  function selectConfig($stateProvider) {
    $stateProvider
      .state("select", {
        name: "select",
        url: "/select",
        controller: "Select",
        controllerAs: "select",
        templateUrl: "/static/select/select.html",
        data: {
          requiresLogin: false
        }
      })
      .state("select.addProject", {
        name: "select",
        url: "/addProject",
        controller: "Select",
        controllerAs: "select",
        data: {
          requiresLogin: true
        }
      });
  };
  
}());
