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
          templateUrl: '/projectView'
      })
      .state('project.detail', {
          name: 'project',
          url: '/project/:projectID',
          conroller: 'projectController',
          templateUrl: '/projectView/:projectID'
      });
    }
  ])
  .run(['$state', function ($state) {
    $state.transitionTo('select');
  }]);

  /**
   *  Save projectID model state for use across tabs.
   *  Following http://stackoverflow.com/questions/12940974/maintain-model-of-scope-when-changing-between-views-in-angularjs/16559855#16559855
   */ 
  app.factory('projectListService', ['$rootScope', function($rootScope) {
    
    var service = {
      model: {
        index: -1,
        list: [],
        previous: -1,
        next: -1
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
