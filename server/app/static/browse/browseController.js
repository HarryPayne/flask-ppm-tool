(function() {
  
  "use strict";
  
  angular
    .module("app.browse")
    .controller("Browse", Browse);
  
  Browse.$inject = ["$scope", "projectListService"];
  
  function Browse($scope, projectListService) {
    
    this.ls = projectListService;
    this.projectList = this.ls.getModel;

  }
  
}());
