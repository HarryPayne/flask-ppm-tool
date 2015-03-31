(function() {
  
  "use strict";
  
  var select = angular.module("app.select", [
    "ui.router", 
    'readMore'
  ]);
  
  select.config(['$stateProvider', function($stateProvider) {
    $stateProvider
      .state('select', {
        name: 'select',
        url: '/',
        controller: 'selectController',
        templateUrl: '/selectView',
        data: {
          requiresLogin: false
        }
      });
    }
  ]);
  
  select.controller('selectController', ['$scope', 
    'projectListService', 'selectStateService',
    function($scope, projectListService, selectStateService){
      
      $scope.projectList = projectListService.model;  
      $scope.jumpToProject = projectListService.jumpToProject;

      $scope.selectState = selectStateService.model;
      
      $scope.$on("projectListBroadcast", function() {
        $scope.projectList = projectListService.model;
      });
    }
  ]);

  select.run(['$rootScope', 'projectListService',
    function($rootScope, projectListService){
      $rootScope.$on('$stateChangeSuccess', function(e, toState, toParams, fromState, fromParams) {
        if (toState.name == "select") {
          projectListService.updateAllProjects();
        }
      });
    }
  ]);
  
  select.filter("nameSearch", function() {
    return function(projects, searchText, nameLogic, finalID) {
      /* return everything if no search string */
      if (!searchText) return projects;

      var projlen = projects.length || 0;
      var st = (searchText || "").toLowerCase();
      var words = st.split(" ");
      var wordslen = words.length;
      var bailout, j;
      
      var out = projects;

      if (finalID == "0") {
        out = _.filter(out, function(project) {
          return project.finalID == "0";
        });
      }
      
      if (nameLogic == "phrase") {
        out = _.filter(out, function(project) {
          return (project.name + " " + project.description).toLowerCase().match(st);
        });
      }
      else if (nameLogic == "and") {
        _.map(words, function(word) {
          out = _.filter(out, function(project) {
            return project.name.toLowerCase().match(this);
          }, word);
        });
      }
      else if (nameLogic == "or") {
        var matches = [], partial;
        _.map( words, function(word) {
          partial = _.filter(out, function(project) {
            return project.name.toLowerCase().match(this);
          }, word);
          matches = _.union(partial, matches);
        });
        out = _.intersection(out, matches);
      }

      return out;
    };
  });
  
  /**
   *  Create a service for passing/saving/restoring select tab state
   *  Following http://stackoverflow.com/questions/12940974/maintain-model-of
   *       -scope-when-changing-between-views-in-angularjs/16559855#16559855
   */
  select.factory("selectStateService", ['$rootScope', 
    function($rootScope) {
      
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
    }
  ]);

}());
