(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .filter("nameSearch", NameSearch);
  
  NameSearch.$inject = ["projectListService"]
  
  function NameSearch(projectListService) {
    return function(projects, searchText, nameLogic, finalID) {
      /* return everything if no search string */
      if (!searchText) return projects;

      var projlen = projects.length || 0;
      var st = (searchText || "").toLowerCase();
      var words = st.split(" ");
      var wordslen = words.length;
      var bailout, j;
      
      var out = projects;
      var descriptionList = [];
      var sqlList = [];
      
      if (finalID == "0") {
        out = _.filter(out, function(project) {
          return project.finalID == "0";
        });
        descriptionList.push("final state='still alive'");
        sqlList.push("finalID=0");
      }
      
      if (nameLogic == "phrase") {
        out = _.filter(out, function(project) {
          return (project.name + " " + project.description).toLowerCase().match(st);
        });
        descriptionList.push("name or description contains " + "'" + searchText + "'");
        sqlList.push("name=" + searchText);
        sqlList.push("nameLogic=phrase");
      }
      else if (nameLogic == "and") {
        _.map(words, function(word) {
          out = _.filter(out, function(project) {
            return (project.name + " " + project.description).toLowerCase().match(this);
          }, word);
        });
        descriptionList.push("name contains " + words.join(" and "));
        sqlList.push("name=" + searchText);
        sqlList.push("nameLogic=and");
      }
      else if (nameLogic == "or") {
        var matches = [], partial;
        _.map( words, function(word) {
          partial = _.filter(out, function(project) {
            return (project.name + " " + project.description).toLowerCase().match(this);
          }, word);
          matches = _.union(partial, matches);
        });
        out = _.intersection(out, matches);
        descriptionList.push("name contains " + words.join(" or "));
        sqlList.push("name=" + searchText);
        sqlList.push("nameLogic=or");
      }

      var projectIDs = _.map(out, function(project){
        return project.projectID;
      });
      projectListService.setList(projectIDs);
      projectListService.setDescription(descriptionList.join(", "));
      projectListService.setSql(sqlList.join("&"));
      
      return out;
    };
  };
  
}());
