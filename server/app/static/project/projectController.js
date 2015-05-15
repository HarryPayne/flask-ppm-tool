(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .controller("Project", Project);
  
  Project.$inject = ["projectDataService", "projectListService"];
  
  function Project(projectDataService, projectListService){
    
    this.ls = projectListService;
    this.masterList = this.ls.getMasterList;
    
    this.ds = projectDataService;
    this.attributes = projectDataService.getAttributes;
    this.changeMode = projectDataService.changeMode;
    this.currentMode = projectDataService.currentMode;
    this.jumpToAtachFile = projectDataService.jumpToAtachFile;
    this.jumpToCommentEntry = projectDataService.jumpToCommentEntry;
    this.viewUrl = projectDataService.viewUrl;

  };
  
}());
