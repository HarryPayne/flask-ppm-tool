(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .filter("nameSearch", nameSearch);
  
  function nameSearch() {
    return function(projects, searchText, nameLogic, finalID) {
      /* return everything if no search string */
      if (!searchText) return projects;

      var projlen = projects.length || 0;
      var st = (searchText || "").toLowerCase();
      var words = st.split(" ");
      var wordslen = words.length;
      var bailout, j;
      
      var out = projects;

      if (finalID == "0") {
        out = _.filter(out, function(project) {
          return project.finalID == "0";
        });
      }
      
      if (nameLogic == "phrase") {
        out = _.filter(out, function(project) {
          return (project.name + " " + project.description).toLowerCase().match(st);
        });
      }
      else if (nameLogic == "and") {
        _.map(words, function(word) {
          out = _.filter(out, function(project) {
            return (project.name + " " + project.description).toLowerCase().match(this);
          }, word);
        });
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
      }

      return out;
    };
  };
  
}());
