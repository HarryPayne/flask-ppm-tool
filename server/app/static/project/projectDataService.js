(function() {

  /**
   *  @name projectDataService
   *  @desc A factory for the primary service that manages the data associated 
   *        with the Project tab. That is a lot, and it gets help from a couple
   *        of other services: 
   *
   *          attributesService - for lower level data attribute management 
   *            (from the app.attributes module).
   *          loginStateService - a service from the app.login module for 
   *            logging in and out and reporting user roles.
   *          projectListService - for the data that support the Previous and
   *            Next top-level tabs, and also remember just which projects were
   *            selected by your last filter or breakdown by attribute.
   *          stateLocationService - a service from the app.stateLocation
   *            module. It handles the interaction between state changes and
   *            location changes, and allows the user change the state of the
   *            application by typing in the browser location bar. For example
   *            you can change which project you are working on by changing
   *            the projectID in the location bar, and you can change the
   *            project selection query for a report by changing the query
   *            string in the location bar.
   */

  "use strict";
  
  angular
    .module("app.project")
    .factory("projectDataService", projectDataService);
  
  projectDataService.$inject = ["$rootScope", "$http", "$state", "$stateParams", 
                                "$location", "attributesService", "loginStateService", 
                                "projectListService", "stateLocationService"];
  
  function projectDataService($rootScope, $http, $state, $stateParams, 
                              $location, attributesService, loginStateService,
                              projectListService, stateLocationService) {
    
    /** service to be returned by this factory */
    var service = {
      attributes: attributesService.getAllAttributes,
      cancelAddProject: cancelAddProject,
      changeMode: changeMode,
      createProject: createProject,
      currentMode: currentMode,
      editMode: editMode,
      getProjectData: getProjectData,
      getProjectAttributes: attributesService.getProjectAttributes,
      getProjectDataFromLocation: getProjectDataFromLocation,
      hideDetails: hideDetails,
      initService: initService,
      jumpToAtachFile: jumpToAtachFile,
      jumpToAddForm: jumpToAddForm,
      jumpToNewProject: jumpToNewProject,
      newProject: newProject,
      printValue: attributesService.printValue,
      RestoreState: RestoreState,
      saveProject: saveProject,
      SaveState: SaveState,
      setProjectData: setProjectData,
      showDetails: showDetails,
      showEditSuccess: showEditSuccess,
      stateParams: $stateParams,
      viewUrl: $state.current.data ? $state.current.data.viewUrl : "",
    };
    
    service.RestoreState();
    if (typeof service.getProjectAttributes() == "undefined" && service.restoredParams) {
      service.getProjectData(service.restoredParams);
    }
    
    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);

    service.SaveState();
    return service;
    
    /**
     *  @name cancelAddProject
     *  @desc Cancel out of the Add a Project screen (under the Select tab) by
     *        navigating back to the select state
     */
    function cancelAddProject() {
      $state.go("select");
    }

    /**
     *  @name changeMode
     *  @desc a function for navigating between the views under the Project tab
     *        for a specified project
     *  @param {string} mode - the name of a state under the "project" virtual
     *        state or "view" as an alias for "project.detail".
     */
    function changeMode(mode) {
      if (!mode) {
        $state.go("project.detail", {projectID: service.projectID});
      }
      else {
        $state.go(mode, {projectID: service.projectID});
      }
    }
    
    /**
     *  @name createProject
     *  @desc Gather form data for creating a new project and send it to the 
     *        back end to create a new project in the database. The response
     *        from that server request is handed to a callback that navigates
     *        to that new project. Only data saved in the description table
     *        is shown on the add form. Data for other tables can be added
     *        once the project has been created.
     *  @callback jumpToNewProject
     */
    function createProject() {

      /** Gather all of the form data values by pulling them from the 
       *  attributes in memory that are marked as associated with the
       *  description table. We don't look at the form -- we use it mostly
       *  for validation (if there were any required fields) and the unsaved
       *  data check. 
       *  */
      var formData = attributesService.getFormData('description', []);
      /* null out project attributes and get a fresh csrf token */
      $http.get("getProjectAttributes/0")
        .then(function(result) {
          service.setProjectData(result);
          delete formData.projectID;
          var request = {
            method: "POST",
            url: "/projectCreate",
            headers: {
              "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
            },
            /** We use jQuery.param to serialize the data -- Python, or
             *  at least Flask, has a problem with the angularjs serializer. */
            data: jQuery.param(formData, true)
          };
          $http(request)
            .then(service.jumpToNewProject);
        });
    };

    /**
     *  @name currentMode
     *  @desc return the current mode
     *  @returns {string} "view" if state name is "project.detail" else state 
     *        name
     */
    function currentMode() {
      if ($state.current.name == "project.detail") {
        return "view";
      }
      return $state.current.name.substring(8);
    }
    
    /**
     *  @name editMode
     *  @desc return the answer to the question "am I in edit mode?"
     *  @returns {Boolean}
     */    
    function editMode() {
      if ($state.current.name.indexOf("edit") > -1) {
        return true;
      }
      return false;
    }
    
    /**
     *  @name getProjectData
     *  @desc Get all of the project attributes values from the server. In a
     *        callback, these values are merged with attributes held by the
     *        attributesService from the app.attributes module/
     *  @param {Object} params - a $stateParams object or a custom object
     *        with the same attributes, passed to the callback function.
     *  @callback setProjectData
     */
    function getProjectData(params) {
      if (parseInt(params.projectID) > -1) {
        $http.get("getProjectAttributes/" + params.projectID)
          .then(function(response) {
            service.setProjectData(response, params);
        });
      }
    }
    
    /**
     *  @name getProjectDataFromLocation
     *  @desc Generate an analogue for $state and $stateParams by looking at
     *        the location instead of state, and use those parameters for 
     *        getting data for that project. This allows you to change the
     *        projectID in the location bar and have the application change
     *        state to match what you typed.
     */
    function getProjectDataFromLocation() {
      var state = stateLocationService.getStateFromLocation();
      if ("projectID" in state.params && state.params.projectID != service.projectID) {
        service.projectID = state.params.projectID;
        service.getProjectData(state.params);
        projectListService.setProjectID(service.projectID);
      }
    }

    /**
     *  @name hideDetails
     *  @desc a function for canceling out of Add a Comment or Add a Disposition
     *        by navigating away to the project edit Comments or Dispositions
     *        sub-tab, respectively. Add a Comment users may not have a role
     *        that gives them access to the edit view, in which case they are
     *        taken back to view mode/state project.detail.
     * @param {string} tableName - "comment" for Add a Comment, "disposition" 
     *        for Add a Disposition.
     * @param {Object[]} keys - 
     */
    function hideDetails(tableName, keys) {
      var selected = attributesService.updateProjAttrsFromRawItem(tableName, keys);
      if (loginStateService.canEditProjects()) {
        $state.go("project." + tableName + ".edit", {projectID: $state.params.projectID});
      }
      else {
        $state.go("project.detail", {projectID: $state.params.projectID});
      }
    }

    /**
     *  @name initService
     *  @desc called onEnter from projectConfig.js to ensure that data for the
     *        report from the backend are already in hand (or promised).
     */
    function initService() {
      /** if the list of all project brief descriptions is empty, then get it */
      if (!projectListService.hasProjects()) {
        projectListService.updateAllProjects();
      }

      var projectID;
      var masterList = projectListService.getMasterList();
      var selectedIds = masterList.selectedIds;
      var oldProjectID = masterList.projectID;

      /** if $stateParams does not give you projectID, look at the location */
      if (!$stateParams.projectID) {
        getProjectDataFromLocation();
        if (!service.projectID) {
          if (projectListService.hasProjects()) {
            projectID = projectListService.getProjectID();
          }
        }
      }
      else {
        projectID = $stateParams.projectID;
        projectListService.setList(selectedIds);
        projectListService.setDescription("projectID = " + projectID + ";");
        projectListService.setSql({col_name: "projectID",
                                   val: projectID,
                                   op: "equals" });
      }
      //projectListService.setProjectID(projectID, selectedIds);

      $stateParams.projectID = projectID;

      if (!service.projectID || service.projectID != projectID) {
        service.getProjectData($stateParams);
      }
    }

    function jumpToAtachFile() {
      $state.go("project.attach", {projectID: service.projectID});
    };
    
    function jumpToAddForm(tableName, keys) {
      attributesService.updateProjAttrsFromRawItem(tableName, keys);
      if (_.contains(["comment"], tableName)) {
        $state.go("project." + tableName + ".edit", {projectID: $state.params.projectID});
      }
      $state.go("project.add." + tableName, {projectID: $state.params.projectID});
    };

    function jumpToNewProject(result) {
      service.setProjectData(result);
      projectListService.updateAllProjects(result.data.projectID);
      $state.go("project.description.edit", {projectID: result.data.projectID});
    }

    function newProject() {
      attributesService.newProjectAttributes();
      $state.go("select.addProject");
    }
    
    function RestoreState() {
      if (typeof sessionStorage.projectDataServiceAttributes != "undefined") {
        service.restoredParams = angular.fromJson(sessionStorage.projectDataServiceAttributes);
      }
    };

    function saveProject(tableName, keys) {
      var formData = attributesService.getFormData(tableName, keys);
      var projectID = $state.params.projectID ? $state.params.projectID : "";
      var request = {
        method: "POST",
        url: "/projectEdit/" + $state.params.projectID + "/" + tableName,
        headers: {
          "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
        },
        data: jQuery.param(formData, true)
      };
      $http(request)
        .then(service.setProjectData);
      service.noCheck = true;
      $state.go("project." + tableName + ".edit", {projectID: $state.params.projectID, noCheck: true});
    };

    function SaveState() {
      sessionStorage.projectDataServiceAttributes = angular.toJson($stateParams);
    };
      
    function setProjectData(result, params) {
      //return;
      attributesService.updateProjectAttributes(result, params);
      service.projectID = result.data.projectID;
      service.success = result.data.success;
      service.SaveState();
      attributesService.SaveState();
    }

    function showDetails(tableName, keys) {
      var selected = attributesService.updateProjAttrsFromRawItem(tableName, keys);
      if (tableName == 'comment') {
        $state.go("project.comment.edit.detail", 
                  {projectID: service.projectID, commentID: selected.commentID});
      }
      if (tableName == 'disposition') {
        $state.go("project.disposition.edit.detail", 
                  {projectID: service.projectID, disposedInFY: selected.disposedInFY.id,
                   disposedInQ: selected.disposedInQ.id});
      }
    }

    function showEditSuccess() {
      return Boolean(_.contains(projectForm.classList, "ng-pristine") && service.success);
    }
  }

}());
