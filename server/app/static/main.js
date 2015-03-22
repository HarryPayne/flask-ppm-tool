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
          url: '/project/:projectID',
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
   *  Create a service for saving/restoring select tab state for use after
   *  navigating away and coming back.
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
   *  Create a service for saving project list model state for use across tabs.
   *  
   *  Model:
   *    list          a list of projectID's
   *    index         current position in the list or -1 for empty list
   *    previous      previous projectID in list or -1
   *    next          next projectID in list or -1
   *    description   a description of the query used to generate the list or ""
   */ 
  app.factory('projectListService', ['$rootScope', function($rootScope) {
    
    var service = {
      model: {
        list: [],
        index: -1,
        previous: -1,
        next: -1,
        description: ""
      },
      
      SaveState: function () {
        sessionStorage.projectListService = angular.toJson(service.model);
      },
      
      RestoreState: function () {
        service.model = angular.fromJson(sessionStorage.projectListService);
      }
    };
    
    $rootScope.$on("savestate, service.SaveState");
    $rootScope.$on("restorestate, service.RestoreState");
    
    return service;    
  }]);
  
