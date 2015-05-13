(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .controller("Select", Select);
  
  Select.$inject = ["$scope", "projectListService", "selectStateService"];
  
  function Select($scope, projectListService, selectStateService) {
    
    this.ls = projectListService;
    this.projectList = this.ls.getModel;
    this.jumpToProject = this.ls.jumpToProject;
    
    this.ss = selectStateService;
    this.selectState = this.ss.model;
    
  };
  
}());
