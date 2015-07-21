(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .factory("projectListService", ProjectListService);
    
  ProjectListService.$inject = ["$rootScope", "$http", "$state", "$stateParams", "$location"];
  
  function ProjectListService($rootScope, $http, $state, $stateParams, $location) {
    var service = {
      allProjectsCount: allProjectsCount,
      getAllProjectResults: getAllProjectResults,
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
      setDescription: setDescription,
      setList: setList,
      setSql: setSql,
      updateAllProjects: updateAllProjects,
      updateProjectListProjectID: updateProjectListProjectID
    };
  
    service.RestoreState();
    if (typeof(service.masterList) == "undefined") {
      service.initModel();
    } 

    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);
    
    return service;    

    function allProjectsCount() {
      return service.getMasterList().allProjects.length;
    }

    function getAllProjectResults(results, projectID) {
      if (typeof projectID == "undefined") {
        var projectID = service.masterList.projectID;        
      }
      service.masterList.allProjects = results.data;
      var projectIDList = service.getIDListFromAllProjects();
      if (typeof projectID == "undefined" || projectID < 0) {
        projectID =  projectIDList[0];
      }
      updateProjectListProjectID(projectID, projectIDList);
    };
    
    function getIDListFromAllProjects() {
      return _.map(service.masterList.allProjects, function(item) {
        return item.projectID;});
    };

    function getMasterList() {
      return service.masterList;
    };

    function getProjectID() {
      return service.masterList.projectID;
    }
    
    function getSelectedIds() {
      return service.masterList.selectedIds;
    }

    function getSql() {
      return service.masterList.sql;
    }
    
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

    function RestoreState() {
        service.masterList = angular.fromJson(sessionStorage.projectListService);
    };

    function SaveState() {
        sessionStorage.projectListService = angular.toJson(service.masterList);
    };

    function selectedIdsCount() {
      return service.masterList.selectedIds.length;
    }
    
    function setDescription(description) {
      service.masterList.description = description;
    };
    
    function setList(selectedIds) {
      service.masterList.selectedIds = selectedIds;
      var index = selectedIds.indexOf(service.masterList.projectID);
      if (index < 0) {
        var projectID = selectedIds[0];
        service.updateProjectListProjectID(projectID, selectedIds);
      }
    }

    function setSql(sqlObj) {
      service.masterList.sql = sqlObj;
    }
      
    function updateAllProjects(projectID) {
      $http.post('/getBriefDescriptions')
        .then(function(results) {
          service.getAllProjectResults(results, projectID);
        });
    };
    
    function updateProjectListProjectID(projectID, selectedIds) {
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
  }
    
}());
