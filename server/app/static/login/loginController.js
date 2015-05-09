(function() {
  
  "use strict";
  
  angular
    .module("app.login")
    .controller("Login", Login);
  
  Login.$inject = ['$scope', "loginApiService"];
  
  function Login($scope, loginApiService) {
    var vm = this;
    
    vm.cancel = $scope.$dismiss;
    vm.submit = submitLogin;
    
    function submitLogin(email, password) {
      loginApiService.login(email, password).then(function (user) {
        $scope.$close(user);
      });
    }
  };
  
}());