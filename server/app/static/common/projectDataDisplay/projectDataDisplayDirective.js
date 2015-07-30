(function() {
  
  /**
   *  @name projectDataDisplay
   *  @desc Render project data for a single database table. A header is 
   *        followed by rows in Bootstrap form-horizontal layout, even
   *        in view mode. This is the top of a pyramid of nested directives,
   *        and basically decides which data model to use, based on the table
   *        name passed in. Other attributes are passed down to data model
   *        specific directives.
   * 
   *  The attributes for this directive are:
   * 
   *    datasource - a reference to an external function that supplies a list
   *      of items to be rendered. In the case of the tables that are one-to-
   *      one with projectID, these items will be attributes of the project
   *      under consideration. In the case of the one-to-many tables, this will
   *      be the list of items (comments or dispositions) to be listed.
   * 
   *    detailDatasource - a reference to an external function that supplies
   *      a list of attributes for the detail item to be edited. 
   *    detailIsSelected - a reference to a function that returns true when
   *      looping over the one-to-many items and landing on the one the user
   *      has selected.
   *    error - an object with error messages to be shown
   *    header - text for a header for the list of output rows
   *    hide - a reference to the external function to be run to exit from
   *      edit.detail mode back to edit mode.
   *    keys - a list of primary key attributes, used to identify the comment 
   *      or disposition to be edited in edit.detail mode
   *    mode - "view", "edit", or "edit.detail". Passed to the inner directive to control 
   *      the display of each row. In display mode pre-computed display values 
   *      are shown. In edit mode input "widgets" specific to the format of 
   *      each attribute are shown.
   *    onSaveClick - a reference to the external function to be run when 
   *      a Save button is pressed.
   *    show - a reference to the external function to be run to edit an item
   *      in edit.detail mode.
   *    showSuccess - a reference to the external function to be run to decide
   *      whether a success message should be displayed.
   *    success - an object with success messages to be shown
   *    table - database table/project data category name
   */
  
  "use strict";
  
  angular
    .module("app.common")
    .directive("projectDataDisplay", ProjectDataDisplay);
  
  function ProjectDataDisplay() {
    
    function controller() {
      //this.dataModel = getDataModelFromTable(this.table);
      this.details = details;
      this.detailsObj = detailsObj;
      this.hasAValue = hasAValue;
      this.hideDetails = hideDetails;
      this.isSelected = isSelected;
      this.save = save;
      this.saveDetails = saveDetails;
      this.selectedKeys = typeof keys == "function" ? keys() : [];
      this.showDetails = showDetails;
    }
    
    return {
      restrict: "EA",
      scope: {
        datasource: "&",
        detailDatasource: "&",
        detailIsSelected: "&",
        error: "=",
        header: "=",
        hide: "&",
        keys: "=",
        mode: "=",
        onSaveClick: "&",
        show: "&",
        showSuccess: "&",
        success: "=",
        table: "="
      },
      controller: controller,
      controllerAs: "ctrl",
      bindToController: true,
      link: function(scope, element, attributes, ctrl) {
        scope.submit = ctrl.save;
      },
      templateUrl: getTemplateForDataModel
    };

    /**
     *  @name details
     *  @desc 
     */

    function details() {
      if (typeof this.attributes == "undefined") {
        var attributes = [];
        _.each(this.detailDatasource(), function(attr) {
          if (attr.computed) {
            return;
          }
          if (attr.name == "commentID");
          attributes.push(attr);
        });
        this.attributes = attributes;
      }
      return this.attributes;
    }

    function detailsObj(name) {
      if (typeof this.attributesObj == "undefined" || this.attributes == []) {
        var attributesObj = new Object;
        _.each(this.detailDatasource(), function(attr) {
          attributesObj[attr.name] = attr;
          if ("child" in attr) {
            attributesObj[attr.child.name] = attr.child;
          }
        });
        this.attributesObj = attributesObj;
      }
      if (name in this.attributesObj) {
        return this.attributesObj[name].value;
      }
    }

    /**
     *  @name getDataModelFromTable
     *  @desc return data model to use based the table directive option. (And
     *        knowledge of the database. Not considering that a problem right
     *        now.)
     *  @param {string} table - table name
     *  @returns {string} ("one"||"comments"||"dispositions")
     */
    function getDataModelFromTable(table) {
      var oneToOneTables = ["'description'", "'portfolio'", "'project'"];
      if (_.contains(oneToOneTables, table)) {
        return "one";
      }
      else if (table == "'comment'") {
        return "comments";
      }
      else if (table == "'disposition'") {
        return "dispositions";
      }
    }

    function getTemplateForDataModel(element, attributes) {
      var model = getDataModelFromTable(attributes.table);
      if (model == "one") {
        return "static/common/projectDataDisplay/oneToOneDataModel.html";
      }
      else if (model == "comments") {
        return "static/common/projectDataDisplay/commentsDataModel.html";
      }
      else if (model == "dispositions") {
        return "static/common/projectDataDisplay/dispositionsDataModel.html";
      }
    }

    function getValueFromKey(key) {
      var value;
      if ("id" in key) {
        value = key.id;
      }
      else if ("value" in key) {
        if (typeof key.value == "number") {
          value = key.value;
        }
        else if (typeof key.value == "string") {
          value = parseInt(key.value);
        }
        else if ("id" in key.value) {
          value = key.value.id;
        }
      }
      return value;
    }
    
    /**
     *  @name hasAValue
     *  @desc Call this function to determine whether the attribute has a value.
     *        In view mode, only project attributes that have a value are listed.
     */
    function hasAValue(attr) {
      if (attr.name == "childID") {
        var comment;
      }
      if ("value" in attr) {
        if (typeof attr.value == "string") {
          if (attr.value != "") {
            return true;
          }
        } 
        else if (typeof attr.value == "object" && Boolean(attr.value) && "id" in attr.value) {
          if (!_.isArray(attr.value)) {
            if (Boolean(attr.value.desc) && attr.value.id != null  && attr.value != "" && attr.value != []) {
              return true;
            }
          }
          else if (attr.value.length) {
            return true
          }
          return false;
        }
        else if (attr.value != null && attr.value != "" && attr.value != []) {
          return true;
        }
      }
      return false;
    }

    /**
     *  @name hideDetails
     *  @desc Call the function set in the directive "hide" option, which hides
     *        the edit.details view (and clears the form).
     * @param {string} table - the name of the table being updated
     * @param (Object[]) keys - a list of primary key attribute objects, sent
     *        to identify the database entry to be updated
     */
    function hideDetails(table, keys) {
      this.hide()(table, keys)
    }

    function isSelected(item) {
      if (typeof item == "undefined" || typeof this.keys == "undefined" || this.keys.length == 0 ) {
        return false;
      }
      var selected = false;
      _.each(this.keys, function(key){
        var value = getValueFromKey(key);
        if ((typeof item[key.name].id == "undefined" && item[key.name] == value)
            || (typeof item[key.name].id != "undefined" && item[key.name].id == value)) {
          selected =  true;
        }
        else {
          selected = false;
        }
      });
      return selected;
    }

    /**
     *  @name save
     *  @desc When the form inside the directive is submitted, call the function 
     *        specified by the onSaveClick parameter
     */
    function save(table, keys) {
      this.onSaveClick()(table, keys);
    }

    function saveDetails(table, keys) {
      this.onSaveClick()(table, keys);
    }

    /**
     *  @name showDetails
     *  @desc Call the function set in the directive "show" option, which shows
     *        the edit.details view.
     * @param {string} table - the name of the table being updated
     * @param (Object[]) keys - a list of primary key attribute objects, sent
     *        to identify the database entry to be updated
     */
    function showDetails(table, keys) {
      this.show()(table, keys);
    }

  }
  
}());
