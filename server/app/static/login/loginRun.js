(function() {
  
  "use strict";
  
  angular
    .module("app.login")
    .run(loginRun);
  
  loginRun.$inject = ["$rootScope", "$state", "store", "jwtHelper",  "loginModalService"];
  
  function loginRun($rootScope, $state, store, jwtHelper, loginModalService) {
      $state.transitionTo("select");
      
      if (store.get("jwt") && !jwtHelper.isTokenExpired(store.get("jwt"))) {
        $rootScope.currentUser = jwtHelper.decodeToken(store.get("jwt"));
      }

      $rootScope.$on("$stateChangeStart", loginIfRequiredByToState);
      
      function loginIfRequiredByToState(e, toState, toParams, fromState, fromParams) {
        var requiresLogin = toState.data && toState.data.requiresLogin;
        var noActiveToken = !store.get("jwt") || jwtHelper.isTokenExpired(store.get("jwt"));
        if (requiresLogin && noActiveToken) {
          e.preventDefault();
          
          loginModalService()
          .then(function () {
            return $state.go(toState.name);
          })
          .catch(function () {
            if (fromState.name == "") {
              return $state.go("select");
            }
          });
        }
      };
  };
  
}());