(function() {
  
  "use strict";
  
  angular
    .module("app.attributes")
    .factory("attributesService", attributesService);
  
  attributesService.$inject = ["$rootScope", "$http", "projectListService"];
  
  function attributesService($rootScope, $http, projectListService) {
    var service = {
      getAttribute: getAttribute,
      getAllAttributes: getAllAttributes,
      getProjectAttributes: getProjectAttributes,
      getSelectedChoices:getSelectedChoices, 
      makeProjectLink: makeProjectLink,
      mergeAttributeWithValue: mergeAttributeWithValue,
      RestoreState: RestoreState,
      SaveState: SaveState,
      setAllAttributes: setAllAttributes,
      updateAllAttributes: updateAllAttributes,
      updateProjectAttributes: updateProjectAttributes
    };

    //service.RestoreState();
    //if (typeof service.attributes == "undefined") {
      service.updateAllAttributes();
    //}
    
    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);

    return service;
    
    function getAttribute(name) {
      return service.allAttributes[name];
    }
    
    function getAllAttributes() {
      return service.allAttributes;
    };

    function getProjectAttributes() {
      return service.projectAttributes;
    };
    
    function getSelectedChoices(merged) {
      if (merged.multi) {
        return _.filter(merged.choices, function(choice){
                 return _.contains(merged.value, choice.id)
               });
      }
      else if (merged.format == "lines") {
        return _.filter(merged.choices, function(choice){
                 return _.contains(merged.value, choice)
               });
      }
      else {
        return _.where(merged.choices, {id: merged.value})[0];
      }
    };
    
    function makeProjectLink(projectID) {
      
    };

    function mergeAttributeWithValue(attr) {
      if (!attr) return;
      var merged = service.allAttributes[attr.name];
      //service.allAttributes[attr.name].value = attr.value;
      merged.value = attr.value;
      if (merged.multi) {
        if (merged.name == "childID") {
          var master = projectListService.getMasterList();
          merged.choices = _.clone(master.selectedIds);
          // add links to projects here
          var links = [];
          merged.printValue = "links should go here";
        }
        else {
          merged.value = getSelectedChoices(merged);
          merged.printValue = attr.printValue;
        }
      }
      else if (merged.format == "multipleSelect") {
        merged.value = getSelectedChoices(merged);
        merged.printValue = merged.value["desc"];
      }
      service.projectAttributes.push(merged);
    }
    
    function RestoreState() {
      service.allAttributes = angular.fromJson(sessionStorage.attributesService);
    };

    function SaveState() {
      sessionStorage.attributesService = angular.toJson(service.allAttributes);
    };
    
    function setAllAttributes(response) {
      service.allAttributes = response.data;
      service.SaveState()
    };
    
    function updateAllAttributes() {
      $http.get("/getAllAttributes")
        .then(service.setAllAttributes);
    };
    
    function updateProjectAttributes(result) {
      service.projectAttributes = [];
      angular.forEach(result.data.attributes, mergeAttributeWithValue);
    };
  }
  
}());
