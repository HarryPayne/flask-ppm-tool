(function() {
  
  "use strict";
  
  angular
    .module("app.common")
    .directive("projectDataTextArea", ProjectDataTextArea);
  
  function ProjectDataTextArea() {
    
    return {
      restrict: "EA",
      templateUrl: "static/common/projectDataDisplayTable/projectDataFormatDirectives/projectDataTextArea.html" 
    };
    
  }
  
}());
