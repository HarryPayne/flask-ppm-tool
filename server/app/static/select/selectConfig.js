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
        templateUrl: "/selectView",
        data: {
          requiresLogin: false
        }
      });
  };
  
}());
