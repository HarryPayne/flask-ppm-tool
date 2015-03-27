(function(){

  var loginModalCtrl = angular.module('app.loginModal', ['ui.bootstrap']);
  
  loginModalCtrl.service('loginModal', function($modal, $rootScope) {
    function assignCurrentUser (user) {
      $rootScopt.currentUser = user;
      return user;
    }
    
    return function() {
      var instance = $modal.open({
        templateUrl: 'static/login/loginModalTemplate.html',
        controller: 'LoginModalCtrl',
        controllerAs: 'LoginModalCtrl'
      });
      
      return instance.result.then(assignCurrentUser);
    };
  });
  
  loginModalCtrl.controller('LoginModalCtrl', function($scope, UsersApi) {

    this.cancel = $scope.$dismiss;
    
    this.submit = function(uid, password) {
      UsersApi.login(uid, password).then(function(user) {
        $scope.$close(user);
      });
    };
    
  });

}());
