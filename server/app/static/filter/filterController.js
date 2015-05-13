(function() {
  
  "use strict";
  
  angular
    .module("app.filter")
    .controller("Filter", Filter);
  
  Filter.$inject = ['$scope', '$http', 'store', 'jwtHelper', 
                    'projectListService', 'selectStateService'];
  
  function Filter($scope, $http, store, jwtHelper, projectListService, 
                  selectStateService) {
    
    this.ls = projectListService;
    this.masterList = projectListService.getMasterList;
    this.selectState = selectStateService;

  };
  
}());
