(function() {
  
  "use strict";
  
  angular
    .module("app.manage")
    .controller("Manage", Manage);
  
  Manage.$inject = ["$rootScope"];
  
  function Manage($rootScope) {
    var vm = this;
    
    vm.currentUser = $rootScope.currentUser;
  };
  
}());