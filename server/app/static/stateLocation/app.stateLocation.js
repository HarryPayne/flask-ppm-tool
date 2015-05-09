(function(){
  /*
   * See http://stackoverflow.com/questions/22247294/how-do-i-get-the-back-button-to-work-with-an-angularjs-ui-router-state-machine
   */
  angular
    .module("app.stateLocation", ['ui.router'])

    .run(['$rootScope', '$state', 'stateLocationService',
      function($rootScope, $state, stateLocationService) {
        $rootScope.$on('$stateChangeSuccess', function(event, toState, toParams) {
          stateLocationService.stateChange();
        });
  
        $rootScope.$on('$locationChangeSuccess', function() {
          stateLocationService.locationChange();
        });
      }
    ]);

   
}());
