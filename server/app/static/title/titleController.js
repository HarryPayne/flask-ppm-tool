(function() {
  
  "use strict";
  
  angular
    .module("app.title")
    .controller("Title", Title);
  
  Title.$inject = ["$scope", "$state", "projectListService"];
  
  function Title($scope, $state, projectListService){
    var vm = this;
    
    this.masterList = projectListService.getMasterList;
    this.pageTitle = "PPT: Select";
    
    $scope.$on("$stateChangeSuccess", function(e, toState){
      if (toState.name.split(".")[0] == "select") {
        vm.pageTitle = "PPT: Select";
      }
      else if (toState.name.split(".")[0] == "filter") {
        vm.pageTitle = "PPT: Filter Builder";
      }
      else if (toState.name.split(".")[0] == "report") {
        vm.pageTitle = "PPT: Report";
      }
      else if (toState.name.split(".")[0] == "project") {
        vm.pageTitle = vm.masterList().projectID + ". " + vm.masterList().projectName;
      }  
      else if (toState.name.split(".")[0] == "comment") {
        vm.pageTitle = "PPT: Comments";
      }
      else if (toState.name.split(".")[0] == "curate") {
        vm.pageTitle = "PPT: Curate";
      }
      else if (toState.name.split(".")[0] == "manage") {
        vm.pageTitle = "PPT: Manage";
      }
      else {
        vm.pageTitle = "PPT: Select";
      }      
    });

  }

}());
