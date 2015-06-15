(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .controller("Select", Select);
  
  Select.$inject = ["$state", "projectListService", "selectStateService", "projectDataService"];
  
  function Select($state, projectListService, selectStateService, projectDataService) {
    
    this.state = $state;
    
    this.ls = projectListService;
    this.masterList = this.ls.getMasterList;
    this.jumpToProject = this.ls.jumpToProject;
    
    this.ss = selectStateService;
    this.selectState = this.ss.masterList;
    
    this.ds = projectDataService;
  };
  
}());
