(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .factory("projectListService", ProjectListService);
    
  ProjectListService.$inject = ["$rootScope", "$http", "$state", "$stateParams", "$location"];
  
  function ProjectListService($rootScope, $http, $state, $stateParams, $location) {
    var service = {
      "getAllProjectResults": getAllProjectResults,
      "getIDListFromAllProjects": getIDListFromAllProjects,
      "getMasterList": getMasterList,
      "hasProjects": hasProjects,
      "initModel": initModel,
      "jumpToProject": jumpToProject,
      "jumpToProjectInList": jumpToProjectInList,
      "RestoreState": RestoreState,
      "SaveState": SaveState,
      "setDescription": setDescription,
      "setList": setList,
      "updateAllProjects": updateAllProjects,
      "updateProjectListProjectID": updateProjectListProjectID
    };
  
    service.RestoreState();
    if (typeof(service.model) == "undefined") {
      service.initModel();
    } 

    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);
    
    return service;    

    function getAllProjectResults(results) {
      var projectID = service.model.projectID;
      service.model.allProjects = results.data;
      var projectIDList = service.getIDListFromAllProjects();
      if (typeof projectID == "undefined" || projectID < 0) {
        projectID = projectIDList[0];
      }
      updateProjectListProjectID(projectID, projectIDList);
    };
    
    function getIDListFromAllProjects() {
      return _.map(service.model.allProjects, function(item) {
        return item.projectID;});
    };

    function getMasterList() {
      return service.model;
    };
    
    function hasProjects() {
      return Boolean(service.getMasterList().allProjects.length > 0);
    }
    
    function initModel( ){
      service.model = {
        allProjects: [],
        description: "",
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
      var index = service.model.selectedIds.indexOf(projectID);
      if (service.model.selectedIds.indexOf(projectID) > -1) {
        service.jumpToProjectInList(projectID, service.model.selectedIds);
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
      service.model.index = index;
      service.model.projectID = projectID;
      if (index > 0) {
        service.model.previous = selectedIds[index-1];
      }
      else {
        service.model.previous = -1;
      }
      if (index < selectedIds.length) {
        service.model.next = selectedIds[index+1];
      }
      else {
        service.model.next = -1;
      }
      var projectIDList = service.getIDListFromAllProjects();
      index = projectIDList.indexOf(projectID);
      service.model.projectName = service.model.allProjects[index].name;
      $state.go('project.detail', {projectID: projectID});
    };

    function RestoreState() {
        service.model = angular.fromJson(sessionStorage.projectListService);
    };

    function SaveState() {
        sessionStorage.projectListService = angular.toJson(service.model);
    };
    
    function setDescription(description) {
      service.model.description = description;
    };
    
    function setList(selectedIds) {
      service.model.selectedIds = selectedIds;
      var index = selectedIds.indexOf(service.model.projectID);
      if (index < 0) {
        var projectID = selectedIds[0];
        service.updateProjectListProjectID(projectID, selectedIds);
      }
    }
      
    function updateAllProjects() {
      $http.get('/getBriefDescriptions')
        .then(service.getAllProjectResults);
    };
    
    function updateProjectListProjectID(projectID, selectedIds) {
      if (projectID) {
        if (typeof selectedIds == "undefined") {
          selectedIds = service.model.selectedIds;
        }
        service.model.projectID = projectID;
        var index = selectedIds.indexOf(projectID);
        if (index > -1) {
          service.model.index = index;
          if (index > 0) {
            service.model.previous = selectedIds[index-1];
          } 
          else {
            service.model.previous = -1;
          }
          if (index < selectedIds.length) {
            service.model.next = selectedIds[index+1];
          }
          else {
            service.model.next = -1;
          }
          if (typeof(service.model.selectedIds[0]) == "undefined") { /* ?? */
            service.model.selectedIds = selectedIds;
          }
        }
        _.each(service.model.allProjects, function(proj){
          if (proj.projectID == projectID) {
            service.model.projectName = proj.name;
          }
        });
      }
    };
  }
    
}());
