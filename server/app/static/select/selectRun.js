(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .run(updateProjectList);
  
  updateProjectList.$inject = ["$rootScope", "projectListService"];
  
  function updateProjectList($rootScope, projectListService) {
    $rootScope.$on("$stateChangeSuccess", function(e, toState, toParams, fromState, fromParams) {
      if (toState.name == "select") {
        projectListService.updateAllProjects();
      }
    });
  };
  
}());
