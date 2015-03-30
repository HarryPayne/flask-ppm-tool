(function() {
  
  "use strict";
  
  var select = angular.module("app.select", [
    "ui.router", 
    'focusOn', 
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
  
  select.controller('selectController', ['$scope', 'focus', 
    'projectListService', 'selectStateService',
    function($scope, focus, projectListService, selectStateService){
      
      focus('focusMe');
      
      //projectListService.updateAllProjects();
      $scope.projectList = projectListService.model;  
      $scope.jumpToProject = projectListService.jumpToProject;

      $scope.selectState = selectStateService.model;
      
      $scope.$on("projectListBroadcast", function() {
        $scope.projectList = projectListService.model;
      });
    }
  ]);

  select.run(function($rootScope, projectListService){
    $rootScope.$on('$stateChangeSuccess', function(e, toState, toParams, fromState, fromParams) {
      if (toState.name == "select") {
        projectListService.updateAllProjects();
      }
    });
  });
  
  select.filter("nameSearch", function() {
    return function(projects, searchText, nameLogic, finalID) {
      /* return everything if no search string */
      if (!searchText) return projects;

      var projlen = projects.length || 0;
      var st = (searchText || "").toLowerCase();
      var words = st.split(" ");
      var wordslen = words.length;
      var bailout, j;
      
      var out = [];
      
      for (var i = 0; i < projects.length; i++ ) {
        if (nameLogic == "phrase") {
          /* stop if no match */
          if (!(projects[i].name+" "+projects[i].description).toLowerCase().match(st)) continue;
        }
        else if (nameLogic == "and") {
          /* stop after the first non-match */
          bailout = false;
          for ( j = 0; j < wordslen; j++ ) {
            if (!(projects[i].name+" "+projects[i].description).toLowerCase().match(words[j])) {
              bailout = true;
              break;
            }
          }
          if (bailout) continue;
        }
        else if (nameLogic == "or") {
          /* stop after the first match */
          bailout = true;
          for ( j = 0; j < wordslen; j++ ) {
            if ((projects[i].name+" "+projects[i].description).toLowerCase().match(words[j])) {
              bailout = false;
              break;
            }
          }
          if (bailout) continue;
        }
        if (finalID == "0" && projects[i].finalID != 0) continue;
        out.push(projects[i]);
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
