(function () {
  
  "use strict";
  
  var app = angular.module('PPTApp', ['app.select', 'app.project', 'app.filter', 
    'app.header', 'app.title', 'ui.router']);
  
  app.config(['$urlRouterProvider', function($urlRouterProvider) {
      $urlRouterProvider.otherwise('/');
    }
  ]);
  
  app.run(['$state', function ($state) {
    $state.transitionTo('select');
  }]);

}());