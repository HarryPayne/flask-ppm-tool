(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .controller("Project", Project);
  
  Project.$inject = ["$scope", "$state", "projectDataService", "projectListService", 
                     "attributesService", "modalConfirmService", "loginStateService"];
  
  function Project($scope, $state, projectDataService, projectListService, 
                   attributesService, modalConfirmService, loginStateService){
    
    this.as = attributesService;
    this.ds = projectDataService;
    this.ls = projectListService;
    this.log_s = loginStateService;
    
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
      if (typeof projectDataService.noCheck != "undefined") {
        $scope.projectForm.$setPristine(true);
        delete projectDataService.noCheck;
        //projectDataService.getProjectData(projectDataService.projectID); // forced discard
        //$state.go(toState, toParams);
      }
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
          $scope.projectForm.$setPristine(true);
          var target = toParams.projectID ? toParams.projectID : fromParams.projectID;
          projectDataService.getProjectData(target, toParams); // forced discard
          $state.go(toState, toParams);
        });
      }
    });
  };
  
}());
