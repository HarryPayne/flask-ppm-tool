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
          controller: "Project",
          controllerAs: "project",
          templateUrl:"static/project/project.html",
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
          controllerAs: "project",
          data: {
            requiresLogin: false,
            viewUrl: "static/project/project.html"
          }
      })
      .state('project.edit', {
          name: 'project',
          url: '/edit/:projectID',
          controller: function ($stateParams) {
            console.log($stateParams);
          },
          controllerAs: "project",
          data: {
            requiresLogin: true,
            viewUrl: "static/project/project.html"
          }
      })
      .state('project.comment', {
          name: 'project',
          url: '/comment/:projectID',
          controller: function ($stateParams) {
            console.log($stateParams);
          },
          controllerAs: "project",
          data: {
            requiresLogin: true,
            viewUrl: "static/project/project.html"
          }
      })
      .state('project.attach', {
          name: 'project',
          url: '/attach/:projectID',
          controller: function ($stateParams) {
            console.log($stateParams);
          },
          controllerAs: "project",
          data: {
            requiresLogin: true,
            viewUrl: "static/project/project.html"
          }
      });
  };

}());
