(function() {
  
  "use strict";
  
  angular
    .module("app.filter")
    .controller("Filter", Filter);
  
  Filter.$inject = ['$scope', '$http', 'store', 'jwtHelper', 
                    'projectListService', 'selectStateService'];
  
  function Filter($scope, $http, store, jwtHelper, projectListService, 
                  selectStateService) {
    var vm = this;
    
    vm.ls = projectListService;
    vm.projectList = projectListService.getModel;
    vm.selectState = selectStateService;

  };
  
}());
