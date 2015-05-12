(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .factory("projectListService", ProjectListService);
    
  ProjectListService.$inject = ["$rootScope", "$http", "$state", "$stateParams", "$location"];
  
  function ProjectListService($rootScope, $http, $state, $stateParams, $location) {
    var service = {
      "broadcast": broadcast,
      "getAllProjectResults": getAllProjectResults,
      "getIDListFromAllProjects": getIDListFromAllProjects,
      "getModel": getModel,
      "initModel": initModel,
      "jumpToProject": jumpToProject,
      "jumpToProjectInList": jumpToProjectInList,
      "RestoreState": RestoreState,
      "SaveState": SaveState,
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

    function broadcast() {
        $rootScope.$broadcast("projectListUpdated");
    };
  
    function getAllProjectResults(results) {
      service.model.allProjects = results.data;
      var projectID;
      if ($stateParams.projectID) {
        projectID = $stateParams.projectID;
      }
      else if (Boolean(parseInt((_.last($location.path().split("/")))))) {
        projectID = parseInt((_.last($location.path().split("/"))));
      }
      else if (service.model.allProjects.length) {
        projectID = service.model.allProjects[0].projectID;
      }
      else if (results.data.length) {
        projectID = results.data[0].projectID;
      }
      else {
        alert("Can't find a project to display.");
      }
      var projectIDList = service.getIDListFromAllProjects();
      updateProjectListProjectID(projectID, projectIDList);
      service.model.description = "none";
    };
    
    function getIDListFromAllProjects() {
      return _.map(service.model.allProjects, function(item) {
        return item.projectID;});
    };

    function getModel() {
      return service.model;
    };
    
    function initModel( ){
      service.model = {
        projectID: -1,
        projectName: "",
        list: [],
        index: -1,
        previous: -1,
        next: -1,
        description: "",
        allProjects: []
      };
    };

    function jumpToProject(projectID) {
      projectID = parseInt(projectID);
      var index = service.model.list.indexOf(projectID);
      if (service.model.list.indexOf(projectID) > -1) {
        service.jumpToProjectInList(projectID, service.model.list);
        return;
      }
      var projectIDlist = service.getIDListFromAllProjects();
      if (projectIDlist.indexOf(projectID) > -1) {
        service.jumpToProjectInList(projectID, projectIDlist);
        return;
      }
      alert("Can't find a project to display.");
    };
    
    function jumpToProjectInList(projectID, list) {
      var index = list.indexOf(projectID);
      service.model.index = index;
      service.model.projectID = projectID;
      if (index > 0) {
        service.model.previous = list[index-1];
      }
      else {
        service.model.previous = -1;
      }
      if (index < list.length) {
        service.model.next = list[index+1];
      }
      else {
        service.model.next = -1;
      }
      var projectIDList = service.getIDListFromAllProjects();
      index = projectIDList.indexOf(projectID);
      service.model.projectName = service.model.allProjects[index].name;
      $state.go('project.detail', {projectID: projectID});
      service.broadcast();
    };

    function RestoreState() {
        service.model = angular.fromJson(sessionStorage.projectListService);
        service.broadcast();
    };

    function SaveState() {
        sessionStorage.projectListService = angular.toJson(service.model);
    };
      
    function updateAllProjects() {
      $http.get('/getBriefDescriptions')
        .then(service.getAllProjectResults);
    };
    
    function updateProjectListProjectID(projectID, list) {
      if (projectID) {
        service.model.projectID = projectID;
        var index = list.indexOf(projectID);
        if (index > -1) {
          service.model.index = index;
          if (index > 0) {
            service.model.previous = list[index-1];
          } 
          else {
            service.model.previous = -1;
          }
          if (index < list.length) {
            service.model.next = list[index+1];
          }
          else {
            service.model.next = -1;
          }
          if (typeof(service.model.list[0]) == "undefined") { /* ?? */
            service.model.list = list;
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
