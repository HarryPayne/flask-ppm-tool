(function() {
  
  "use strict";
  
  angular
    .module("app.report")
    .controller("Report", Report);
  
  Report.$inject = ["$state", "projectListService", "reportTableService", "DTInstances"];
  
  function Report($state, projectListService, reportTableService) {
    
    this.ls = projectListService;
    this.masterList = this.ls.getMasterList;
    this.jumpToProject = this.ls.jumpToProject;

    this.ts = reportTableService;
    this.state = $state;

  }
  
}());
