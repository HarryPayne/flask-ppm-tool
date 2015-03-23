"use strict";

var app = angular.module('PPTApp', ['ui.router', 'ngResource', 'ui.bootstrap', 'readMore', 'focusOn']);
app.config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
  $urlRouterProvider.otherwise('/');
  
  $stateProvider
    .state('select', {
      name: 'select',
      url: '/',
      controller: 'selectController',
      templateUrl: '/selectView'
    })
    .state('filter', {
      name: 'filter',
      url: '/filter',
      controller: 'filterController',
      templateUrl: '/filterView'
    })
    .state('project', {
        name: 'project',
        url: '/project',
        conroller: 'projectController',
        templateUrl:"/projectTemplate"
    })
    .state('project.detail', {
        name: 'project',
        url: '/:projectID',
        controller: function ($stateParams) {
          console.log($stateParams);
        },
        templateUrl: "/projectTemplate"
    });
  }
])
.run(['$state', function ($state) {
  $state.transitionTo('select');
}]);

/**
 *  Create a service for passing/saving/restoring select tab state
 *  Following http://stackoverflow.com/questions/12940974/maintain-model-of
 *       -scope-when-changing-between-views-in-angularjs/16559855#16559855
 */
app.factory("selectStateService", ['$rootScope', function($rootScope) {
    
  var service = {
    model: {
      searchText: "",
      nameLogic: "or",
      finalID: "0"
    },
    
    SaveState: function () {
      sessionStorage.selectStateService = angular.toJson(service.model);
    },
    
    RestoreState: function () {
      service.model = angular.fromJson(sessionStorage.selectStateService);
    }
  };
  
  $rootScope.$on("savestate, service.SaveState");
  $rootScope.$on("restorestate, service.RestoreState");
  
  window.onbeforeunload = function (event) {
    $rootScope.$broadcast('savestate');
  };

  return service;    
}]);

/**
 *  Create a service for passing/saving/restoring project list model state
 *  
 *  Model:
 *    projectID     current project's ID
 *    projectName   current project's name
 *    list          a list of projectID's
 *    index         current position in the list or -1 for empty list
 *    previous      previous projectID in list or -1
 *    next          next projectID in list or -1
 *    description   a description of the method used to generate the list or ""
 */ 
app.factory('projectListService', ['$rootScope', '$http', '$state', '$stateParams', 
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
    }

    service.getAllProjectResults = function(results) {
      service.model.allProjects = results;
      var projectID;
      if ($stateParams.projectID) {
        projectID = $stateParams.projectID;
      }
      else if (service.model.allProjects.length) {
        projectID = service.model.allProjects[0].projectID;
      }
      else {
        alert("Can't find a project to display.");
      }
      if (projectID) {
        service.model.projectID = projectID;
        projectIDList = service.getIDListFromAllProjects();
        index = projectIDList.indexOf(projectID);
        if (index > -1) {
          //service.model.list = all;
          service.model.index = index;
          service.model.projectName = all[index].name;
          service.model.description = "from url";
          if (index > 0) {
            service.model.previous = all[index-1].projectID;
          }
          if (index < all.length) {
            service.model.next = all[index+1].projectID;
          }
          if (typeof(service.model.list[0]) == "undefined") { /* ?? */
            service.model.list = projectIDList;
          }
        }
      }
      service.broadcast();
    };
    
    service.jumpToProjectInList = function(projectID, list) {
      var index = list.indexOf(projectID);
      service.model.index = index;
      service.model.projectID = projectID;
      if (index > 0) {
        service.model.previous = list[index-1].projectID;
      }
      if (index < list.length) {
        service.model.next = list[index+1].projectID;
      }
      var projectIDList = service.getIDListFromAllProjects();
      index = projectIDList.indexOf(projectID);
      service.model.projectName = service.model.allProjects[index].name;
      $state.go('project.detail', {projectID: projectID});
    };

    service.jumpToProject =  function(projectID) {
      var index = service.model.list.indexOf(projectID);
      if (service.model.list.indexOf(projectID) > -1) {
        service.jumpToProjectInList(projectID, service.model.list);
        $state.go('project.detail', {projectID: projectID});
      }
      else if (service.model.allProjects.indexOf(projectID) > -1) {
        projectIDlist = service.getIDListFromAllProjects();
        service.jumpToProjectInList(projectID, projectIDlist);
        $state.go('project.detail', {projectID: projectID});
      }
      else {
        alert("Can't find a project to display.");
      }
    };
    
    service.RestoreState();
    if (typeof(service.model) == "undefined") {
      service.initModel();
    };

    /* get fresh project list */
    $http.get('/getBriefDescriptions')
      .success(function(results){
        service.getAllProjectResults(results);
      });
      
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
    
    service.update = function(projectID, description, projectName) {
      if (typeof(projectName) == "undefined") projectName = "";
      if (typeof(description) == "undefined") description = "";
      if (service.model.list == []) {
        var index = -1;
        var all = service.model.allProjects;
        for ( var i = 0; i < all.length; i++ ) {
          if (all[i].projectID == projectID) {
            index = i;
            break;
          }
        }
        if (index > -1) {
          service.model.list = all;
          service.model.description = description;
          if (index > 0) {
            service.model.previous = all[index-1].projectID;
          }
          if (index < all.length) {
            service.model.next = all[index+1].projectID;
          }
        }
      }
      service.broadcast();
    };
    
    //$rootScope.$off("savestate");
    $rootScope.$on("savestate", service.SaveState);
    //$rootScope.$off("restorestate");
    $rootScope.$on("restorestate", service.RestoreState);
    
    return service;    
  }
]);

