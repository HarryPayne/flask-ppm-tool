(function() {
  
  "use strict";
  
  angular
    .module("app.common")
    .directive("projectDataMultipleSelect", ProjectDataMultipleSelect);
  
  function ProjectDataMultipleSelect() {
    
    return {
      restrict: "EA",
      templateUrl: "static/common/projectDataDisplayTable/projectDataFormatDirectives/projectDataMultipleSelect.html" 
    };
    
  }
  
}());
