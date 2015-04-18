(function(){
  
  angular
    .module("app.stateLocation", ['ui.router'])
    .run(['$rootScope', '$state', 'stateLocationService',
      function($rootScope, $state, stateLocationService) {
        $rootScope.$on('$stateChangeSuccess', function(event, toState, toParams) {
          return stateLocationService.stateChange();
        });
  
        $rootScope.$on('$locationChangeSuccess', function() {
          return stateLocationService.locationChange();
        });
      }
    ]);

   
}());
