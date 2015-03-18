(function() {
  
  "use strict";
  
  var selectApp = angular.module('SelectApp',[]);
  
  selectApp.controller('selectController', ['$scope', '$http', 
    function($scope, $http){
      $scope.nameLogic = "or";
      $scope.finalID = "0";
      $http.get('/getBriefDescriptions').
        success(function(results){
          $scope.projects = results;
        });
    }
  
  ])
  .filter('nameSearch', function() {
    return function(projects, searchText, nameLogic, finalID){
      /* Make searching by searchText case insensitive */
      var st;
      if (searchText) {
        st = searchText.toLowerCase();
      }
      else {
        return projects;
      }
      var words = st.split(" ");
      var wordslen = words.length;
      var keepgoing;
      
      var out = [];
      for (var i = 0, len = projects.length; i < len; i++) {
        if (nameLogic == "phrase") {
          if (!projects[i].name.toLowerCase().match(st) && 
              !projects[i].description.toLowerCase().match(st)) continue;
        }
        else if (nameLogic == "and") {
          keepgoing = true;
          for ( var j = 0; j < wordslen; j++) {
            if (!projects[i].name.toLowerCase().match(words[j]) &&
                !projects[i].description.toLowerCase().match(words[j])) {
              keepgoing = false;
              break;
            }
          }
          if (!keepgoing) continue;
        }
        else if (nameLogic == "or") {
          keepgoing = false;
          for ( var j = 0; j < wordslen; j++) {
            if (projects[i].name.toLowerCase().match(words[j]) || 
                projects[i].description.toLowerCase().match(words[j])) {
              keepgoing = true;
              break;
            }
          }
          if (!keepgoing) continue;
        }
        if (finalID == "0" && projects[i].finalID != 0) continue;
        out.push(projects[i]);
      }
        
      return out;
    };
  });
  
}());

