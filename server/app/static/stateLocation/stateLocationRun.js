(function() {
  
  "use strict";
  
  angular
    .module("app.stateLocation")
    .run(stateLocationRun);
  
  stateLocationRun.$inject = ["$rootScope", "$state", "stateLocationService"];

  function stateLocationRun($rootScope, $state, stateLocationService) {
    $rootScope.$on('$stateChangeSuccess', function(event, toState, toParams) {
      stateLocationService.stateChange();
    });

    $rootScope.$on('$locationChangeSuccess', function() {
      stateLocationService.locationChange();
    });
  }
  
}());
