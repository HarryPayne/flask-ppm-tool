(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .factory("projectModeService", projectModeService);
  
  function projectModeService($state) {
    var service = {
      "currentMode": currentMode,
      "viewUrl": $state.current.data.viewUrl
    };
    
    function currentMode() {
      if ($state.current.name == "project.detail") {
        return "view";
      }
      else if ($state.current.name == "project.edit") {
        return "edit";
      }
    }
    
    return service;
  }

}());
