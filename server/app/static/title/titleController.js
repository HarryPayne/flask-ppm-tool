(function() {
  
  "use strict";
  
  angular
    .module("app.title")
    .controller("Title", Title);
  
  Title.$inject = ["$rootScope", "$state", "projectListService"];
  
  function Title($rootScope, $state, projectListService){
    var vm = this;
    
    vm.projectList = projectListService.model;
    vm.pageTitle = "PPT: Select";
    
    $rootScope.$on("$stateChangeSuccess", function(e, toState){
      if (toState.name == "select") {
        vm.pageTitle = "PPT: Select";
      }
      else if (toState.name == "filter") {
        vm.pageTitle = "PPT: Filter Builder";
      }
      else if (toState.name == "browse") {
        vm.pageTitle = "PPT: Browse";
      }
      else if (toState.name == "project") {
        vm.pageTitle = vm.projectList.projectID + ". " + vm.projectList.projectName;
      }  
      else if (toState.name == "project.detail") {
        vm.pageTitle = vm.projectList.projectID + ". " + vm.projectList.projectName;
      }  
      else {
        vm.pageTitle = "PPT: Select";
      }      
    });

    $rootScope.$on("projectListBroadcast", function() {
      vm.projectList = projectListService.model;
    });
  
  }

}());
