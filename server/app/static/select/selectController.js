(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .controller("Select", Select);
  
  Select.$inject = ["$scope", "$state", "projectListService", "selectStateService", 
                    "projectDataService", "modalConfirmService"];
  
  function Select($scope, $state, projectListService, selectStateService, 
                  projectDataService, modalConfirmService) {
    
    this.state = $state;
    
    this.ls = projectListService;
    this.masterList = this.ls.getMasterList;
    this.jumpToProject = this.ls.jumpToProject;
    
    this.ss = selectStateService;
    this.selectState = selectStateService.getMasterList;
    
    this.ds = projectDataService;

    $scope.$on("$stateChangeStart", function(event, toState, toParams, fromState, fromParams) {
      projectDataService.success = "";
      if ($scope.addProject.$dirty) {
        event.preventDefault();

        var modalOptions = {
            closeText: "Cancel",
            actionText: "Continue",
            headerText: "Unsaved changes",
            bodyText: "You have unsaved changes. Press Continue to discard your changes and" 
                      + " navigate away, or press Cancel to stay on this page."
        };

        modalConfirmService.showModal({}, modalOptions).then(function (result) {
          $scope.addProject.$setPristine();
          $state.go(toState, toParams);
        });
      }
    });
  };
  
}());
