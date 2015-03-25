(function() {
  
  "use strict";
  
  app.controller('selectController', ['$scope', '$http', '$state', 'focus', 'projectListService',
    'selectStateService',
    function($scope, $http, $state, focus, projectListService, selectStateService){
      
      focus('focusMe');
      
      projectListService.updateAllProjects();
      $scope.projectList = projectListService.model;  
      $scope.jumpToProject = projectListService.jumpToProject;

      $scope.selectState = selectStateService.model;
      
      $scope.$on("projectListBroadcast", function() {
        $scope.projectList = projectListService.model;
      });
    }
  ]);
  
  app.filter("nameSearch", function() {
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
  
}());
