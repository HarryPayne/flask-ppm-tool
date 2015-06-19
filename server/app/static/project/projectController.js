(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .controller("Project", Project);
  
  Project.$inject = ["$scope", "$state", "projectDataService", "projectListService", 
                     "attributesService", "modalConfirmService"];
  
  function Project($scope, $state, projectDataService, projectListService, 
                   attributesService, modalConfirmService){
    
    this.as = attributesService;
    this.ds = projectDataService;
    this.ls = projectListService;
    
    this.attributes = attributesService.getAttributes;
    this.changeMode = projectDataService.changeMode;
    this.currentMode = projectDataService.currentMode;
    this.dateOptions = {changeYear: true, changeMonth: true};
    this.jumpToAtachFile = projectDataService.jumpToAtachFile;
    this.jumpToAddForm = projectDataService.jumpToAddForm;
    this.masterList = this.ls.getMasterList;
    this.viewUrl = projectDataService.viewUrl;

    $scope.$on(["$stateChangeStart"], function(event, toState, toParams, fromState, fromParams) {
      projectDataService.success = "";
      if ($scope.projectForm.$dirty) {
        event.preventDefault();

        var modalOptions = {
            closeText: "Cancel",
            actionText: "Continue",
            headerText: "Unsaved changes",
            bodyText: "You have unsaved changes. Press Continue to discard your changes and" 
                      + " navigate away, or press Cancel to stay on this page."
        };

        modalConfirmService.showModal({}, modalOptions).then(function (result) {
          $scope.projectForm.$setPristine();
          projectDataService.getProjectData(projectDataService.projectID); // forced discard
          $state.go(toState, toParams);
        });
      }
    });
  };
  
}());
