(function() {
  
  "use strict";
  
  app.controller('selectController', ['$scope', '$http', 'focus', 'projectListService',
  function($scope, $http, focus, projectListService){
    
    focus('focusMe');
    $scope.projectList = projectListService;

    $scope.nameLogic = "or";
    $scope.finalID = "0";

    $scope.jumptoproject = function(projectID) {
      $scope.projectList.index = 0;
      $scope.projectList.list = [projectID];
    };
    
    $http.get('/getBriefDescriptions').
      success(function(results){
        $scope.projects = results;
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
