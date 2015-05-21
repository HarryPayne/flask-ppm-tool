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
      getFormData: getFormData,
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

    service.RestoreState();
    if (typeof service.attributes == "undefined") {
      service.updateAllAttributes();
    }
    
    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);

    return service;
    
    function getAttribute(name) {
      return service.allAttributes[name];
    }
    
    function getAllAttributes() {
      return service.allAttributes;
    };
    
    function getFormData() {
      var formData = new Object;
      formData.projectID = service.projectID;
      formData.csrf_token = service.csrf_token;
      _.each(service.allAttributes, function(attr) {
        if (attr.name == "csrf_token") {
          // Do nothing
        }
        else if (attr.name == "childID") {
          formData.childID = attr.value
        }
        else if (attr.multi) {
          formData[attr.name] = _.map(attr.value, function(a) {
            return a.id;
          })
        }
        else if (attr.format == "multipleSelect") {
          if (attr.value) {
            formData[attr.name] = attr.value.id;            
          }
        }
        else {
          formData[attr.name] = attr.value;
        }
      });
      return formData;
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
      var data = angular.fromJson(sessionStorage.attributesService);
      if (data) {
        service.allAttributes = data.allAttributes;
        service.projectID = data.projectID;
      }
    };

    function SaveState() {
      var data = new Object;
      data.allAttributes = service.allAttributes;
      data.projectID = service.projectID;
      sessionStorage.attributesService = angular.toJson(data);
    };
    
    function setAllAttributes(response) {
      service.allAttributes = response.data;
    };
    
    function updateAllAttributes() {
      $http.get("/getAllAttributes")
        .then(service.setAllAttributes);
    };
    
    function updateProjectAttributes(result) {
      service.projectID = result.data.projectID;
      service.csrf_token = result.data.csrf_token;
      service.errors = result.data.errors;
      service.projectAttributes = [];
      angular.forEach(result.data.attributes, mergeAttributeWithValue);
    };
  }
  
}());
