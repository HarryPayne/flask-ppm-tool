(function() {
  
  "use strict";

  var projectCtl = angular.module("app.project", [
    "ui.router"
  ]);
  
  projectCtl.controller('projectController', ['$scope', 'projectListService',
    function($scope, projectListService){
  
      $scope.projectList = projectListService.model;
      
      $scope.$on("projectListBroadcast", function() {
        $scope.projectList = projectListService.model;
      });
  
    } 
  ]);
    
  projectCtl.config(function($stateProvider) {
    $stateProvider
      .state('project', {
          name: 'project',
          url: '/project',
          conroller: 'projectController',
          templateUrl:"/projectTemplate",
          data: {
            requiresLogin: false
          }
      })  
      .state('project.detail', {
          name: 'project',
          url: '/:projectID',
          controller: function ($stateParams) {
            console.log($stateParams);
          },
          templateUrl: "/projectTemplate",
          data: {
            requiresLogin: false
          }
      });
  });
  
  projectCtl.factory('projectListService', ['$rootScope', '$http', '$state', '$stateParams', 
    function($rootScope, $http, $state, $stateParams) {
      var service = {};
    
      service.broadcast = function() {
          $rootScope.$broadcast("projectListBroadcast");
      };
    
      service.SaveState = function () {
          sessionStorage.projectListService = angular.toJson(service.model);
      };
        
      service.RestoreState = function () {
          service.model = angular.fromJson(sessionStorage.projectListService);
          service.broadcast();
      };
  
      service.initModel = function() {
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
  
      service.getIDListFromAllProjects = function() {
        var all = service.model.allProjects;
        var projectIDList = [];
        for ( var i = 0; i < all.length; i++ ) {
          projectIDList.push(all[i].projectID);
        }
        return projectIDList;
      };
  
      service.getAllProjectResults = function(results) {
        service.model.allProjects = results.data;
        var projectID;
        if ($stateParams.projectID) {
          projectID = $stateParams.projectID;
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
            if (index < results.length) {
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
      
      service.jumpToProjectInList = function(projectID, list) {
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
  
      service.jumpToProject =  function(projectID) {
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
      
      service.init = function(projectID, description, projectName){
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
      
      service.updateAllProjects = function() {
        /* get fresh project list */
        $http.get('/getBriefDescriptions')
          .then(service.getAllProjectResults);
      };
      
      service.RestoreState();
      if (typeof(service.model) == "undefined") {
        service.initModel();
      } 
  
      $rootScope.$on("savestate", service.SaveState);
      $rootScope.$on("restorestate", service.RestoreState);
      
      return service;    
    }
  ]);

}());
