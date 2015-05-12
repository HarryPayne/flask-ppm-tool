(function() {
  
  "use strict";
  
  angular
    .module("app.browse")
    .controller("Browse", Browse);
  
  Browse.$inject = ["$scope", "projectListService"];
  
  function Browse($scope, projectListService) {
    var vm = this;
    
    vm.ls = projectListService;
    vm.projectList = vm.ls.getModel;

  }
  
}());
