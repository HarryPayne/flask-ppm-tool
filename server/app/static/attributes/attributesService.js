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
      getToken: getToken, 
      hasAValue: hasAValue,
      makeProjectLink: makeProjectLink,
      mergeAttributeWithValue: mergeAttributeWithValue,
      newProjectAttributes: newProjectAttributes,
      RestoreState: RestoreState,
      SaveState: SaveState,
      setAllAttributes: setAllAttributes,
      updateProjAttrsFromRawItem: updateProjAttrsFromRawItem,
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
          if (!_.isArray(attr.child.value)) {
            this[attr.child.name] = attr.child.value.id;
          }
          else {
            this[attr.child.name] = attr.child.value;
          }
        }
      }
      else if (attr.format == "date" || _.contains(["commentAuthored", "commentEdited"], attr.name)) { // list of computed attributes rendered as string 
        if (attr.computed) return;
        if (attr.value) {
          this[attr.name] = new Date(attr.value).toString("yyyy-MM-ddTHH:mm:ss");
        }
        else {
          this[attr.name] = null;
        }
      }
       else if (attr.format.substring(0, "child_for_".length) != "child_for_") {
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
    
    function getFormData(tableName, keys) {
      var formData = new Object;
      formData.csrf_token = service.csrf_token;
      if (typeof keys != "undefined") {
        _.each(keys, function(key) {
          if (typeof key.value.id != "undefined") {
            formData[key.name] = key.value.id;
          }
          else {
            formData[key.name] = key.value;
          }
        });
      }
      _.each(service.getProjectAttributes(tableName), addAttrToDataObj, formData);
      if (tableName == "comment") {
        formData["commentEditor"] = $rootScope.currentUser.id;
      }
      return formData;
    };

    function getProjectAttributes(tableName, flag) {
      try {
        return _.sortBy(service.projectAttributes[tableName], "attributeID");
      }
      catch(e) {
        //
      }
    };

    function getRawAttributes(tableName) {
      try {
        return service.rawAttributes[tableName];
      }
      catch (e) {
        //
      }
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
    
    function hasAValue(attr) {
      if ((typeof attr.value != "undefined" && attr.value != null && attr.value != "" && attr.value != []) ||
          (typeof attr.value != "undefined" && attr.value != null && typeof attr.value.id != "undefined" && attr.value.id != null  && attr.value != "" && attr.value != [])) {
        return true;
      }
      else return false;
    }

    function getToken() {
      return service.csrf_token;
    }
    
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
      else if (merged.format == "date" && attr.value) {
        merged.value = new Date(Date.parse(attr.value));
      }
      service.projectAttributes[this].push(merged);
    }
    
    function newProjectAttributes() {
      _.each(["description", "portfolio", "project"], function(tableName) {
          service.projectAttributes[tableName] = [];
          updateProjAttrsFromRawItem(tableName, []);
      });
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

    function updateProjAttrsFromRawItem(tableName, keys) {
      var raw_items = getRawAttributes(tableName);
      var filtered_items = raw_items;
      if (typeof filtered_items == "undefined") filtered_items = [];
      var selected;
      _.each(keys, function(key) {
        filtered_items = _.filter(filtered_items, function(item) {
          if (typeof item[key.name].id == "undefined" && item[key.name] == key.id) {
            return true;
          }
          else if (item[key.name].id == key.id) {
            return true;
          }
        });
      });
      if (filtered_items.length) {
        selected = filtered_items[0];
        service.projectAttributes[tableName] = [];
        _.each(Object.keys(selected), function(key) {
          try {
            service.allAttributes[key].value = selected[key];
            service.projectAttributes[tableName].push(service.allAttributes[key]);
          }
          catch(e) {}
        });
        return  selected;
      }
      else {
        var tableAttrs = _.where(service.allAttributes, {table: tableName});
        service.projectAttributes[tableName] = [];
        _.each(tableAttrs, function(attr) {
          if (attr.computed) return;
          else if (_.contains(["multipleSelect", "dateRangeSelect"], attr.format)) {
            attr.value = [];
          }
          else {
            attr.value = "";
          }
          service.projectAttributes[tableName].push(attr);
        });
      }
    }
    
    function updateAllAttributes() {
      $http.get("/getAllAttributes")
        .then(service.setAllAttributes);
    };

    function updateErrors(errors) {
      if (typeof errors == "undefined") return;
      _.each(errors, function(error) {
        _.each(Object.keys(error), function(key) {
          var attr = service.getAttribute(key);
          attr.errors = this[key];
        }, error);
      });
    };
    
    function updateProjectAttributes(result) {
      service.projectID = result.data.projectID;
      service.csrf_token = result.data.csrf_token;
      service.errors = result.data.errors;
      service.clearAllErrors();
      delete service.success;
      service.updateErrors(result.data.errors);
      if (result.statusText == "OK") {
        _.each(result.data.formData, updateProjectAttributesFromForm);
      }
      return;
    };

    /**
     *  updateProjectAttributesFromForm
     *
     *  Update old results with new results where possible. If a new item appears,
     *  make it be the live item. A bit more care is required for the tables that
     *  can have multiple results (disposition or comments). Look for matches by
     *  unique ID column on the table.
     */
    function updateProjectAttributesFromForm(form) {
      var tableData = new Object;
      tableData.tableName = form.tableName;

      if (_.isArray(form.attributes[0].attributes)) { // disposition or comments
        if (typeof service.rawAttributes == "undefined") {
          service.rawAttributes = new Object;
        }
        service.rawAttributes[tableData.tableName] = [];
        _.each(form.attributes, function(subform) {
          var formObj = new Object;
          _.each(subform.attributes, function(attr) {
            formObj[attr.name] = attr.value;
            if (typeof attr.printValue != "undefined") {
              formObj[attr.name+".printValue"] = attr.printValue;
            }
          });
          service.rawAttributes[tableData.tableName].push(formObj);
        });
      }
      else {
        if (typeof service.projectAttributes == "undefined") {
          service.projectAttributes = new Object;
        }
        service.projectAttributes[tableData.tableName] = [];
        _.each(form.attributes, mergeAttributeWithValue,
          tableData.tableName);
      }
    }
  }
  
}());
