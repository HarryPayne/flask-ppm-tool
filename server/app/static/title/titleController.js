(function() {
  
  "use strict";
  
  angular
    .module("app.title")
    .controller("Title", Title);
  
  Title.$inject = ["$scope", "$state", "projectListService"];
  
  function Title($scope, $state, projectListService){
    var vm = this;
    
    this.projectList = projectListService.getModel;
    this.pageTitle = "PPT: Select";
    
    $scope.$on("$stateChangeSuccess", function(e, toState){
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
        vm.pageTitle = vm.projectList().projectID + ". " + vm.projectList().projectName;
      }  
      else if (toState.name == "project.detail") {
        vm.pageTitle = vm.projectList().projectID + ". " + vm.projectList().projectName;
      } 
      else if (toState.name == "comment") {
        vm.pageTitle = "PPT: Comments";
      }
      else if (toState.name == "curate") {
        vm.pageTitle = "PPT: Curate";
      }
      else if (toState.name == "manage") {
        vm.pageTitle = "PPT: Manage";
      }
      else {
        vm.pageTitle = "PPT: Select";
      }      
    });

  }

}());
