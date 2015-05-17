(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .controller("Project", Project);
  
  Project.$inject = ["projectDataService", "projectListService", "attributesService"];
  
  function Project(projectDataService, projectListService, attributesService){
    
    this.as = attributesService;
    this.ds = projectDataService;
    this.ls = projectListService;
    
    this.masterList = this.ls.getMasterList;
    this.attributes = attributesService.getAttributes;
    this.changeMode = projectDataService.changeMode;
    this.currentMode = projectDataService.currentMode;
    this.jumpToAtachFile = projectDataService.jumpToAtachFile;
    this.jumpToCommentEntry = projectDataService.jumpToCommentEntry;
    this.viewUrl = projectDataService.viewUrl;

  };
  
}());
