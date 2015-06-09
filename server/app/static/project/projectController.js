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
    
    this.attributes = attributesService.getAttributes;
    this.changeMode = projectDataService.changeMode;
    this.dateOptions = {changeYear: true, changeMonth: true};
    this.currentMode = projectDataService.currentMode;
    this.jumpToAtachFile = projectDataService.jumpToAtachFile;
    this.jumpToCommentEntry = projectDataService.jumpToCommentEntry;
    this.masterList = this.ls.getMasterList;
    this.viewUrl = projectDataService.viewUrl;

  };
  
}());
