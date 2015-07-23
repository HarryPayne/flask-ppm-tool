(function() {
  
  /*
   *  @name jumpToProjectID
   *  @desc Render a form with a number type input field and on submit execute
   *        a callback function, passing in the input.
   *  
   *  Used under the Select tab to input a projectID and call a function to 
   *  jump to that project under the Project tab.      
   */

  "use strict";
  
  angular
    .module("app.common")
    .directive("jumpToProjectId", function() {
      
      var controller = function($scope) {
        $scope.projectID;
        $scope.jump = function() {
          $scope.onSubmit({projectID: $scope.projectID});
        }
      }

      return {
        restrict: "EA",
        scope: {
          label: "=",
          help: "=",
          onSubmit: "&"
        },
        controller: controller,
        templateUrl: "static/common/jumpToProjectID/jumpToProjectID.html",
        link: function(scope, element, attributes) {
          scope.submit = scope.jump;
        }
      };
    });
  
}());
