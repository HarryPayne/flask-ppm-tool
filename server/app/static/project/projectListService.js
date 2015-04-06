(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .factory("projectListService", projectListService);
  
  function projectListService($rootScope, $http, $state, $stateParams, $location) {
    var service = {
      "broadcast": broadcast,
      "getAllProjectResults": getAllProjectResults,
      "getIDListFromAllProjects": getIDListFromAllProjects,
      "init": init,
      "initModel": initModel,
      "jumpToProject": jumpToProject,
      "jumpToProjectInList": jumpToProjectInList,
      "RestoreState": RestoreState,
      "SaveState": SaveState,
      "updateAllProjects": updateAllProjects
    };
  
    service.RestoreState();
    if (typeof(service.model) == "undefined") {
      service.initModel();
    } 

    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);
    
    return service;    

    function broadcast() {
        $rootScope.$broadcast("projectListBroadcast");
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
      if (projectID) {
        service.model.projectID = projectID;
        var projectIDList = service.getIDListFromAllProjects();
        var index = projectIDList.indexOf(projectID);
        if (index > -1) {
          service.model.index = index;
          service.model.projectName = results.data[index].name;
          service.model.description = "from url";
          if (index > 0) {
            service.model.previous = projectIDList[index-1];
          } 
          else {
            service.model.previous = -1;
          }
          if (index < projectIDList.length) {
            service.model.next = projectIDList[index+1];
          }
          else {
            service.model.next = -1;
          }
          if (typeof(service.model.list[0]) == "undefined") { /* ?? */
            service.model.list = projectIDList;
          }
        }
      }
    };
    
    function getIDListFromAllProjects() {
      return _.map(service.model.allProjects, function(item) {
        return item.projectID;});
    };

    function init(projectID, description, projectName){
      var allProjects = [];
  
      if (typeof(projectName) == "undefined") projectName = "";
      if (typeof(description) == "undefined") description = "";
      service.model = {
        projectID: -1,
        projectName: "",
        list: [],
        index: -1,
        previous: -1,
        next: -1,
        description: description,
        allProjects: allProjects
      };
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
    };

    function jumpToProject(projectID) {
      projectID = parseInt(projectID);
      var index = service.model.list.indexOf(projectID);
      if (service.model.list.indexOf(projectID) > -1) {
        service.jumpToProjectInList(projectID, service.model.list);
        $state.go('project.detail', {projectID: projectID});
        return;
      }
      var projectIDlist = service.getIDListFromAllProjects();
      if (projectIDlist.indexOf(projectID) > -1) {
        service.jumpToProjectInList(projectID, projectIDlist);
        $state.go('project.detail', {projectID: projectID});
        return;
      }
      alert("Can't find a project to display.2");
    };
    
    function RestoreState() {
        service.model = angular.fromJson(sessionStorage.projectListService);
        service.broadcast();
    };

    function SaveState() {
        sessionStorage.projectListService = angular.toJson(service.model);
    };
      
    function updateAllProjects() {
      /* get fresh project list */
      $http.get('/getBriefDescriptions')
        .then(service.getAllProjectResults);
    };
    
  }
    
}());
