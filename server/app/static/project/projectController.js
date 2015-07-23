(function() {
  
  /**
   *  @name Project
   *  @desc A controller for the states and views associated with the Project 
   *        tab. 
   */
  
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

    $scope.$on(["$stateChangeStart"], unsavedDataPopup);
    
    /**
     *  @name unsavedDataPopup
     *  @desc Open a popup and ask how to proceed in the case of attempting to 
     *        navigate away from one of the project edit sub-tabs when there 
     *        is unsaved data in the form. The  function is bound to the 
     *        $stateChangeStart event, and the calling sequence is that of a 
     *        handler for this event.
     *  @param {Object} event
     *  @param {Object} toState
     *  @param {Object} toParams
     *  @param {Object} fromState
     *  @param {Object} fromParams
     */
    function unsavedDataPopup(event, toState, toParams, fromState, fromParams) {
      projectDataService.success = "";
      if (typeof projectDataService.noCheck != "undefined") {
        $scope.projectForm.$setPristine(true);
        delete projectDataService.noCheck;
        //projectDataService.getProjectData(projectDataService.projectID); // forced discard
        //$state.go(toState, toParams);
      }
      
      /** if the "projectForm" project editing form has unsaved changes ... */
      if ($scope.projectForm.$dirty) {
        event.preventDefault();

        var modalOptions = {
            closeText: "Cancel",
            actionText: "Continue",
            headerText: "Unsaved changes",
            bodyText: "You have unsaved changes. Press Continue to discard your changes and" 
                      + " navigate away, or press Cancel to stay on this page."
        };

        /** Open a modal window that asks the question shown above as bodyText,
         *  and shows Continue and Cancel buttons for making a response. The
         *  promised response is passed to a callback function.
         */
        modalConfirmService.showModal({}, modalOptions).then(unsavedChangesConfirmed);
      }
    }
    
    /**
     *  @name unsavedChangesConfirmed
     *  @desc Callback to handle the user's choice to discard unsaved changes
     *        and navigate away with saving.The form is set back to the pristine
     *        state, form data is returned to the last saved state, and a state
     *        change for navigating away is started.
     *  @param {Object} response 
     */
    function unsavedChangesConfirmed(response) {
      $scope.projectForm.$setPristine(true);
      var target = toParams.projectID ? toParams.projectID : fromParams.projectID;
      projectDataService.getProjectData(target, toParams); // forced discard
      $state.go(toState, toParams);
    }
  };
  
}());
