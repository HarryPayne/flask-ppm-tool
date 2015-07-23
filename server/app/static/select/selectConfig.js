(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .config(selectConfig);
  
  selectConfig.$inject = ["$stateProvider"];
  
  function selectConfig($stateProvider) {
    $stateProvider
      .state("select", {
        url: "/select",
        controller: "Select",
        controllerAs: "select",
        templateUrl: "/static/select/select.html",
        data: {
          requiresLogin: false
        },
        onEnter: ["selectStateService", 
          function(selectStateService) {
            selectStateService.initService();
          }
        ]
      })
      .state("select.addProject", {
        url: "/addProject",
        controller: "Select",
        controllerAs: "select",
        data: {
          requiresLogin: true
        }
      });
  };
  
}());
