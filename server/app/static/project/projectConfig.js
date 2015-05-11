(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .config(projectConfig);
  
  function projectConfig($stateProvider) {
    $stateProvider
      .state('project', {
          name: 'project',
          url: '/project',
          conroller: 'projectController',
          templateUrl:"static/project/view.html",
          data: {
            requiresLogin: false
          }
      })  
      .state('project.detail', {
          name: 'project',
          url: '/:projectID',
          controller: function ($stateParams) {
            console.log($stateParams);
          },
          templateUrl: "static/project/view.html",
          data: {
            requiresLogin: false,
            viewUrl: "/projectView/"
          }
      })
      .state('project.edit', {
          name: 'project',
          url: '/edit/:projectID',
          controller: function ($stateParams) {
            console.log($stateParams);
          },
          templateUrl: "static/project/edit.html",
          data: {
            requiresLogin: true,
            viewUrl: "/projectEdit/"
          }
      });
  };

}());
