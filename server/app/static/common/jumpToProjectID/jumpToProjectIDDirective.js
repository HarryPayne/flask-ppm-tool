(function() {
  
  /*
   *  @name jumpToProjectID
   *  @desc Render a form with a number type input field and on submit execute
   *        a callback function, passing in the input.
   *  
   *  Used under the Select tab to input a projectID and call a function to 
   *  jump to that project under the Project tab. Here is the HTML for the
   *  prototype application of this directive:
   *
   *    <div jump-to-project-id label="'Jump'" on-submit="select.jumpToProject(projectID)"
   *      help="'Enter a numeric project ID and go to that project.'"></div>
   *
   *  Notice that the onSubmit function is expecting the value for projectID 
   *  typed in by the user to come out of the directive.
   */

  "use strict";
  
  angular
    .module("app.common")
    .directive("jumpToProjectId", function() {
      
      var controller = function() {
        this.projectID;
        this.jump = jump;
      }

      return {
        restrict: "EA",
        scope: {
          label: "=",
          help: "=",
          onSubmit: "&"
        },
        controller: controller,
        controllerAs: "ctrl",
        bindToController: true,
        templateUrl: "static/common/jumpToProjectID/jumpToProjectID.html",
        link: function(scope, element, attributes, ctrl) {
          /** when the form in the template is submitted call the controller's
              jump function */
          scope.submit = ctrl.jump;
        }
      };

      /**
       *  @name jump
       *  @desc When the form in the template is submitted the form value
       *        for projectID needs to be sent out of the directive to the
       *        external function referred to by scope.onSubmit. We call this
       *        this controller function to create an object with a key that
       *        matches what the HTML calls for, and gets the form value from
       *        the controller by way of its controllerAs alias.
       */
      function jump() {
        this.ctrl.onSubmit({projectID: this.ctrl.projectID});
      }

    });
  
}());
