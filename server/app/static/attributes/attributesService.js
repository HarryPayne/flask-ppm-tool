(function() {
/*
Project Attribute Manager Service

This service persists the details of a single project, obtained by calls to the
server, and makes them available via the project controller.

Data attributes:

  service.allAttributes: 
    An object keyed on attribute name, which preserves the metadata for each 
    attribute, such as: label, format, help text, and choices for select widgets.
    Downloaded from the server once per session. Because some widgets need two
    attributes, an attribute may have a child attribute. Child attributes also
    have a reference at the top level in allAttributes.

    Attribute values for a single project are loaded on initial visit to the
    project tab. Attributes that have a single instance per object have their
    values stored with the metadata in allAttributes. Attributes that may have
    multiple instances (comments, dispositions, uploaded files) have values that
    are stored in service.rawAttributes. To edit a particular comment, say, all
    of the values for that comment are copied to atributes in allAttributes (and
    by reference to attributes in projectAttributes).
  
  service.projectAttributes:
    A list of references to allAttributes attribute values for each main database
    table. Used to preserve the order in which attributes are displayed on the
    view and edit forms for each main table.
*/
  "use strict";
  
  angular
    .module("app.attributes")
    .factory("attributesService", attributesService);
  
  attributesService.$inject = ["$rootScope", "$http", "projectListService"];
  
  function attributesService($rootScope, $http, projectListService) {
    var service = {
      addAttrToDataObj: addAttrToDataObj,
      addUniqueAttrToDataObj: addUniqueAttrToDataObj,
      clearAllErrors: clearAllErrors,
      getAttribute: getAttribute,
      getAllAttributes: getAllAttributes,
      getFormData: getFormData,
      getProjectAttributes: getProjectAttributes,
      getRawAttributes: getRawAttributes,
      getSelectedChoices:getSelectedChoices, 
      makeProjectLink: makeProjectLink,
      mergeAttributeWithValue: mergeAttributeWithValue,
      RestoreState: RestoreState,
      SaveState: SaveState,
      setAllAttributes: setAllAttributes,
      showDetails: showDetails,
      updateAllAttributes: updateAllAttributes,
      updateErrors: updateErrors,
      updateProjectAttributes: updateProjectAttributes,
      updateProjectAttributesFromForm: updateProjectAttributesFromForm
    };


    service.RestoreState();
    if (typeof service.attributes == "undefined") {
      service.updateAllAttributes();
    }
    
    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);

    return service;
    
    function addAttrToDataObj(attr) {
      /*
      if (attr.name == "csrf_token" || attr.name == "projectID") {
        return;
      }
      */
      if (attr.format == "multipleSelect" || attr.format == "dateRangeSelect") {
        if(! _.isArray(attr.value)) {
          this[attr.name] = attr.value.id;
        }
        else {
          this[attr.name] = _.map(attr.value, function(a) {
            return a.id;
          });
        }
        if (attr.child) {
          this[attr.child.name] = attr.child.value.id;
        }
      }
      else if (attr.computed) {
        return;
      }
      else {
        this[attr.name] = attr.value;
      }      
    }

    function addUniqueAttrToDataObj(attr) {
      if (_.contains(["disposition", "comment"], attr.table)) {
        return;
      }
      addAttrToDataObj(attr);
    }

    function clearAllErrors() {
      _.each(service.allAttributes, function(attr) {
        delete attr.errors;
      })
      return;
      if (service.projectAttributes["disposition"].length) {
        _.each(service.projectAttributes["disposition"], function(disposition) {
          _.each(disposition, function(attr) {
            attr.errors = [];
          });
        });
      }
      if (service.projectAttributes["comment"].length) {
        _.each(service.projectAttributes["comment"], function(comment) {
          _.each(comment, function(attr) {
            attr.errors = [];
          });
        });
      }
    }

    function getAttribute(name) {
      return service.allAttributes[name];
    }
    
    function getAllAttributes() {
      return service.allAttributes;
    };
    
    function getFormData(tableName, key) {
      var formData = new Object;
      formData.projectID = service.projectID;
      formData.csrf_token = service.csrf_token;
      formData[key.name] = key.value;
      if (_.contains(["description", "portfolio", "disposition", "project"], tableName)) {
        _.each(service.getProjectAttributes(tableName), addAttrToDataObj, formData);
      }
      else {
        var instances = getProjectAttributes(tableName);
        var keyName = key.name;
        var instance = _.filter(instances, function(instance) {
          if (instance[key.name].value == key.value) {return true;}
          else {return false;}
        })[0];
        _.each(instance, addAttrToDataObj, formData);
      }
      return formData;
    };

    function getProjectAttributes(tableName, flag) {
      if (_.contains(["description", "portfolio", "disposition", "project"], tableName)) {
        try {
          return _.sortBy(service.projectAttributes[tableName], "attributeID");
        }
        catch(e) {}
      }
      else if (_.contains(["comment"], tableName)) {
        try {
          if (service.projectAttributes[tableName].length) {
            return service.projectAttributes[tableName];
          }
          else {
            var forms = service.rawAttributes[tableName];
            var mergedForms = _.map(forms, function(form) {
              updateProjectAttributesFromForm(form);
              var projectForm = new Object;
              _.each(service.projectAttributes[tableName], function(attr) {
                projectForm[attr.name] = jQuery.extend(true, {}, attr);
              });
              return projectForm;
            });
            service.projectAttributes[tableName] = _.sortBy(mergedForms, tableName+"ID").reverse();
            return service.projectAttributes[tableName];
          }
        }
        catch(e) {}
      }
    };

    function getRawAttributes(tableName) {
      try {
        return service.rawAttributes[tableName];
      }
      catch (e) {}
    }
    
    function getSelectedChoices(merged) {
      if (merged.multi) {
        return _.filter(merged.choices, function(choice){
                 return _.contains(merged.value, choice.id);
               });
      }
      else if (merged.format == "lines") {
        return _.filter(merged.choices, function(choice){
                 return _.contains(merged.value, choice);
               });
      }
      else {
        return _.where(merged.choices, {id: merged.value})[0];
      }
    };
    
    function makeProjectLink(projectID) {
      return "project linke here";
    };

    function mergeAttributeWithValue(attr) {
      var merged = service.allAttributes[attr.name];
      merged.value = attr.value;
      if (attr.printValue) merged.printValue = attr.printValue;
      if (merged.format.substring(0, "child_for_".length) == "child_for_") {
        return;
      }
      service.projectAttributes[this].push(merged);
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
      var parents = _.filter(response.data, function(attr) {
        if (attr.child) return true;
      });
      _.each(parents, function(parent) {
        var child = parent.child;
        service.allAttributes[child.name] = child;
      });
    };

    function showDetails(tableName, keyID) {
      var keyName = "disposeID";
      if (tableName == "comments") keyName = "commentID";
      var raw_items = getRawAttributes(tableName);
      var selected = _.filter(raw_items, function(attr) {
         if (attr.attributes[0].value == keyID) return true
        })[0];
      _.each(selected.attributes, function(attr) {
        service.allAttributes[attr.name].value = attr.value;
      })
    }
    
    function updateAllAttributes() {
      $http.get("/getAllAttributes")
        .then(service.setAllAttributes);
    };

    function updateErrors(errors) {
      if (typeof errors == "undefined") return;
    };
    
    function updateProjectAttributes(result) {
      service.projectID = result.data.projectID;
      service.csrf_token = result.data.csrf_token;
      service.errors = result.data.errors;
      service.projectAttributes = new Object;
      service.rawAttributes = new Object;
      _.each(result.data.formData, updateProjectAttributesFromForm);
      service.clearAllErrors();
      service.updateErrors(result.data.errors);
    };

    function updateProjectAttributesFromForm(form) {
      var tableData = new Object;
      tableData.tableName = form.tableName;
      service.projectAttributes[tableData.tableName] = [];
      if (_.isArray(form.attributes[0].attributes)) {
        service.rawAttributes[tableData.tableName] = form.attributes.reverse();
        _.each(service.rawAttributes[tableData.tableName][0].attributes, function(attr) {
          var merged = service.getAttribute(attr.name);
          merged.value = attr.value;
          if (merged.format.substring(0, "child_for".length) == "child_for") return;
          service.projectAttributes[merged.table].push(merged);
        });
      }
      else {
        _.each(form.attributes, mergeAttributeWithValue,
          tableData.tableName);
      }
    }
  }
  
}());
