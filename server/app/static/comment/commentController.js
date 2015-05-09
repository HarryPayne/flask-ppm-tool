(function() {
  
  "use strict";
  
  angular
    .module("app.comment")
    .controller("CommentCtrl", CommentCtrl);
  
  CommentCtrl.$inject = ["$scope", "$rootScope"];
  
  function CommentCtrl($scope, $rootScope) {
    var vm = this;
    
    vm.currentUser = $rootScope.currentUser;
  }
  
}());