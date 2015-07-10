(function() {
  
  "use strict";
  
  angular
    .module("app.browse")
    .controller("Browse", Browse);
  
  Browse.$inject = ["$scope", "projectListService", "browseTableService"];
  
  function Browse($scope, projectListService, browseTableService) {
    
    this.ls = projectListService;
    this.masterList = this.ls.getMasterList;
    this.jumpToProject = this.ls.jumpToProject;

    this.ts = browseTableService;

  }
  
}());
