(function() {
  
  "use strict";
  
  angular
    .module("app.common")
    .directive("projectDataDateRangeSelect", ProjectDataDateRangeSelect);
  
  function ProjectDataDateRangeSelect() {
    
    return {
      restrict: "EA",
      templateUrl: "static/common/projectDataDisplayTable/projectDataFormatDirectives/projectDataDateRangeSelect.html" 
    };
    
  }
  
}());
