(function() {
  
  /**
   *  @name projectDataDisplayTable
   *  @desc Render project data for a single database table. A header is 
   *        followed by rows in Bootstrap form-horizontal layout, even
   *        in view mode.
   * 
   *  The attributes for this directive are:
   * 
   *    attributes - a list of attribute objects for a single table
   *    error - an object with error messages to be shown
   *    header - text for a header for the list of output rows
   *    onSaveClick - a reference to the external function to be run when 
   *      a Save button is pressed.
   *    relationship - "one" or "many". Indicate whether the rows for the
   *      table under consideration are one-to-one with projectID ("one") or
   *      one-to-many ("many"). Tables description, portfolio, and project
   *      are one-to-one and table disposition and comment are one-to-many.
   *    success - an object with success messages to be shown
   *    viewEditMode - "display" or "edit". Passed to the inner directive to 
   *      control the display of each row. In display mode pre-computed display 
   *      values are show. In edit mode input "widgets" specific to the format 
   *      of each attribute are shown.
   */
  
  "use strict";
  
  angular
    .module("app.common")
    .directive("projectDataDisplayTable", ProjectDataDisplayTable);
  
  function ProjectDataDisplayTable() {
    
    function controller() {
      this.save = save;
      this.hasAValue = hasAValue;
    }
    
    return {
      restrict: "EA",
      scope: {
        attributes: "&",
        error: "=",
        header: "=",
        mode: "=",
        onSaveClick: "&",
        relationship: "=",
        success: "=",
        table: "="
      },
      controller: controller,
      controllerAs: "ctrl",
      bindToController: true,
      templateUrl: "static/common/projectDataDisplayTable/projectDataDisplayTable.html",
      link: function(scope, element, attributes, ctrl) {
        scope.submit = ctrl.save;
      }
    };

    /**
     *  @name save
     *  @desc When the form inside the directive is submited, call the function 
     *        specified by the onSaveClick parameter
     */
    function save() {
      this.ctrl.onSaveClick({table: this.ctrl.table});
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
        if (typeof attr.value == "string" && attr.value != "") {
          return true;
        }
        else if (typeof attr.value != "string" && Boolean(attr.value) && "id" in attr.value) {
          if (Boolean(attr.value.desc) && attr.value.id != null  && attr.value != "" && attr.value != []) {
            return true;
          }
          else {
            return false;
          }
        }
        else if (attr.value != null && attr.value != "" && attr.value != []) {
          return true;
        }
      }
      return false;
    }

  }
  
}());
