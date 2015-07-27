(function() {
  
  "use strict";
  
  angular
    .module("app.common")
    .directive("projectDataString", ProjectDataString);
  
  function ProjectDataString() {
    
    return {
      restrict: "EA",
      templateUrl: "static/common/projectDataDisplayTable/projectDataFormatDirectives/projectDataString.html" 
    };
    
  }
  
}());
