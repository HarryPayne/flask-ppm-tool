(function() {
  
  "use strict";
  
  angular
    .module("app.curate")
    .controller("Curate", Curate);
  
  Curate.$inject = ["$scope", "$rootScope"];
  
  function Curate($scope, $rootScope) {
    var vm = this;
    
    vm.currentUser = $rootScope.currentUser;
  };
  
}());
