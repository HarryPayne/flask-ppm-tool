(function() {
  
  /**
   *  @name projectListService
   *  @desc A factory for the service that maintains a list of project short
   *        descriptions. Each description consists of the values for project
   *        attributes projectID, name, description, and finalID.
   *
   *  The projectListService has a number of uses:
   *
   *    project navigation
   *      The service keeps track of the last project you looked at, and if you
   *      navigate away from the Project tab and come back you will see the 
   *      same project, without going back to the server again. So there is
   *      the concept of a "current project." At the start of the session the
   *      current project will be the one with the lowest projectID.
   *
   *      The (ordered) list of projects allows for stepping through the list
   *      and the concept of previous and next projects. At the start of a 
   *      session the next project will be the one with the second lowest
   *      projectID, and there will not be a previous project. This functionality
   *      is revealed by the Previous and Next tabs, and their appearance 
   *      changes according to whether there are prevous and next projects.
   *
   *    project selection
   *      Other services provide the ability for you to select a subset of all
   *      available projects. This service holds a list of selected projectIDs
   *      along with a human-readable description of the selection criteria
   *      and a http GET query string that records the actual metadata values.
   *
   *      This service allows other services to show you a report of all 
   *      selected services, work on selected projects one at a time, and to
   *      navigate through selected projects using the Previous and Next tabs,
   *      which will skip over projects not selected.
   *
   *      The Select tab functionality for selecting a project from a dropdown
   *      menu is built on the short description data. The search functionality
   *      there uses a filter on the same data. Final state is one of the
   *      attributes sent out from the backend just for this purpose.
   *
   *      The Filter Builder and Report tabs use the descriptions of the project
   *      selection criteria for restoring state, providing a basis for 
   *      modifying the criteria.
   */

  "use strict";
  
  angular
    .module("app.project")
    .factory("projectListService", ProjectListService);
    
  ProjectListService.$inject = ["$rootScope", "$http", "$state", "$stateParams", "$location"];
  
  function ProjectListService($rootScope, $http, $state, $stateParams, $location) {

    /** service to be returned by this factory */
    var service = {
      allProjectsCount: allProjectsCount,
      getIDListFromAllProjects: getIDListFromAllProjects,
      getMasterList: getMasterList,
      getProjectID: getProjectID,
      getSelectedIds: getSelectedIds,
      getSql: getSql,
      hasProjects: hasProjects,
      initModel: initModel,
      jumpToProject: jumpToProject,
      jumpToProjectInList: jumpToProjectInList,
      resetList: resetList,
      RestoreState: RestoreState,
      SaveState: SaveState,
      selectedIdsCount: selectedIdsCount,
      setAllProjectResults: setAllProjectResults,
      setDescription: setDescription,
      setList: setList,
      setProjectID: setProjectID,
      setSql: setSql,
      updateAllProjects: updateAllProjects
    };
  
    service.RestoreState();
    if (typeof(service.masterList) == "undefined") {
      service.initModel();
    } 

    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);
    
    return service;    

    /**
     *  @name allProjectsCount
     *  @desc return the total number of available projects
     *  @returns {Number}
     */
    function allProjectsCount() {
      return service.getMasterList().allProjects.length;
    }

    /**
     *  @name getIDListFromAllProjects
     *  @desc return the list of projectIDs for all available projects
     *  @returns {Number[]}
     */
    function getIDListFromAllProjects() {
      return _.map(service.masterList.allProjects, function(item) {
        return item.projectID;});
    };

    /**
     *  @name getMasterList
     *  @desc getter for service.masterList
     *  @returns {Object}
     */
    function getMasterList() {
      return service.masterList;
    };

    /**
     *  @name getProjectID
     *  @desc getter for service.masterList.projectID
     *  @returns {Number}
     */
    function getProjectID() {
      return service.masterList.projectID;
    }
    
    /**
     *  @name getSelectedIds
     *  @desc getter for service.masterList.selectedIds
     *  @returns {Number[]}
     */
    function getSelectedIds() {
      return service.masterList.selectedIds;
    }

    /**
     *  @name getSql
     *  @desc getter for service.masterList.sql
     *  @returns {string}
     */
    function getSql() {
      return service.masterList.sql;
    }
    
    /**
     *  @name hasProjects
     *  @desc return the validity of the statement "there are available 
     *        projects in service.masterList.allProjects"
     *  @returns {Boolean}
     */
    function hasProjects() {
      return Boolean(service.allProjectsCount() > 0);
    }
    
    function initModel( ){
      service.masterList = {
        allProjects: [],
        description: "",
        sql: "",
        index: -1,
        next: -1,
        previous: -1,
        projectID: -1,
        projectName: "",
        selectedIds: []
      };
    };

    function jumpToProject(projectID) {
      projectID = parseInt(projectID);
      var index = service.masterList.selectedIds.indexOf(projectID);
      if (service.masterList.selectedIds.indexOf(projectID) > -1) {
        service.jumpToProjectInList(projectID, service.masterList.selectedIds);
        return;
      }
      var projectIDlist = service.getIDListFromAllProjects();
      if (projectIDlist.indexOf(projectID) > -1) {
        service.jumpToProjectInList(projectID, projectIDlist);
        return;
      }
      alert("Can't find a project to display.");
    };
    
    function jumpToProjectInList(projectID, selectedIds) {
      var index = selectedIds.indexOf(projectID);
      service.masterList.index = index;
      service.masterList.projectID = projectID;
      if (index > 0) {
        service.masterList.previous = selectedIds[index-1];
      }
      else {
        service.masterList.previous = -1;
      }
      if (index < selectedIds.length) {
        service.masterList.next = selectedIds[index+1];
      }
      else {
        service.masterList.next = -1;
      }
      var projectIDList = service.getIDListFromAllProjects();
      index = projectIDList.indexOf(projectID);
      service.masterList.projectName = service.masterList.allProjects[index].name;
      $state.go('project.detail', {projectID: projectID});
    };

    function resetList() {
      service.updateAllProjects();
      service.setList(service.getIDListFromAllProjects());
      service.setDescription("none");
      service.setSql("");
    }

    /**
     *  @name RestoreState
     *  @desc restore the service.masterList object from client session storage
     */
    function RestoreState() {
      if (typeof sessionStorage.projectListService != "undefined") {
        service.masterList = angular.fromJson(sessionStorage.projectListService);
      }
    };

    /**
     *  @name SaveState
     *  @desc save the service.masterList object in client session storage
     */
    function SaveState() {
        sessionStorage.projectListService = angular.toJson(service.masterList);
    };

    /**
     *  @name selectedIdsCount
     *  @desc return the number of selected projects
     */
    function selectedIdsCount() {
      return service.masterList.selectedIds.length;
    }
    
    /**
     *  @name setAllProjectResults
     *  @desc Callback to save the response to a backend request for a complete
     *        list of project short descriptions sent by updateAllProjects().
     *  @param {Object} response - JSON response containing a list of project
     *        brief descriptions.
     *  @param {Number} [projectID=service.masterList.selectIds[0] || -1] - the 
     *        projectID to be configured as the current project.
     *
     *  The idea is that the list of available projects be loaded at the start 
     *  of a session an then re-used. But you, or some other user, might have
     *  added a new project that you want to work on. So you need to be able to
     *  update the list with out disrupting you workflow, which means not 
     *  changing the list of selected projects or the current project.
     */
    function setAllProjectResults(response, projectID) {
      service.masterList.allProjects = response.data;
      if (typeof projectID == "undefined" || projectID < 0) {
        if (typeof service.masterList.selectIds != "undefined" && 
            service.masterList.selectIds.length) {
          projectID = service.masterList.selectIds[0];
          setProjectID(projectID);
        }
        else {
          var selectedIds = service.getIDListFromAllProjects();
          setProjectID(selectedIds[0], selectedIds);
        }
      }
    };
    
    /**
     *  @name setDescription
     *  @desc setter for service.masterList.description
     *  @param {string} description - human readable description of the query
     *        used to select the current list of projects that is stored in 
     *        service.master.selectedIds
     */
    function setDescription(description) {
      service.masterList.description = description;
    };
    
    /**
     *  @name setList
     *  @desc setter for service.masterList.selectedIds
     *  @param {Number[]} selectIds - a list of projectIDs to be saved as the
     *        list of selected projects.
     */
    function setList(selectedIds) {
      service.masterList.selectedIds = selectedIds;
      if (typeof selectIds == "undefined") {
        var what_the_;
      }

      var index = selectedIds.indexOf(service.masterList.projectID);
      if (index < 0) {
        var projectID = selectedIds[0];
        service.setProjectID(projectID, selectedIds);
      }
    }

    /**
     *  @name setProjectID
     *  @desc setter for service.masterList.projectID and
     *        service.masterList.selectedIds
     *  @param {Number} projectID - the projectID to be configured as the 
     *        current project.
     *  @param {Number[]} [selectedIds=service.masterList.selectedIds] - a list 
     *        of projectIDs to be saved as the list of selected projects.
     */
    function setProjectID(projectID, selectedIds) {
      if (projectID) {
        if (typeof selectedIds == "undefined") {
          selectedIds = service.masterList.selectedIds;
        }
        service.masterList.projectID = projectID;
        var index = selectedIds.indexOf(projectID);
        if (index > -1) {
          service.masterList.index = index;
          if (index > 0) {
            service.masterList.previous = selectedIds[index-1];
          } 
          else {
            service.masterList.previous = -1;
          }
          if (index < selectedIds.length) {
            service.masterList.next = selectedIds[index+1];
          }
          else {
            service.masterList.next = -1;
          }
          if (typeof(service.masterList.selectedIds[0]) == "undefined") { /* ?? */
            service.masterList.selectedIds = selectedIds;
          }
        }
        _.each(service.masterList.allProjects, function(proj){
          if (proj.projectID == projectID) {
            service.masterList.projectName = proj.name;
          }
        });
      }
      service.SaveState();
    };

    /**
     *  @name setSql
     *  @desc setter for service.masterList.sql
     *  @param {string} query_string - an http GET query_string to represent
     *        the actual SQL used to filter from all projects down to the
     *        selected projects.
     */
    function setSql(query_string) {
      service.masterList.sql = query_string;
    }
      
    /**
     *  @name updateAllProjects
     *  @desc Obtain the complete list of project brief descriptions from the
     *        back end and promise sending them to the setAllProjectResults
     *        callback function. Each brief description contains values for
     *        project attributes projectID, name, description, and finalID.
     *  @param {Number} [projectID] - projectID passed to the callback, which
     *        needs to be aware that it might be absent.
     */
    function updateAllProjects(projectID) {
      $http.post('/getBriefDescriptions')
        .then(function(response) {
          service.setAllProjectResults(response, projectID);
        });
    };
    
  }
    
}());
