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
            requiresLogin: false,
            viewUrl: "static/project/project.html"
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
            requiresLogin: false
          }
      })
      .state('project.edit', {
          name: 'project',
          url: '/edit',
          data: {
            requiresLogin: true
          }
      })
      .state("project.edit.description", {
          name: 'project',
          url: "/description/:projectID",
          controller: function ($stateParams) {
            console.log($stateParams);
          },
          controllerAs: "project",
          data: {
            requiresLogin: true
          }
      })
      .state("project.edit.portfolio", {
          url: "/portfolio/:projectID",
          controller: function ($stateParams) {
            console.log($stateParams);
          },
          controllerAs: "project",
          data: {
            requiresLogin: true
          }
      })
      .state("project.edit.disposition", {
          url: "/disposition/:projectID",
          controller: function ($stateParams) {
            console.log($stateParams);
          },
          controllerAs: "project",
          data: {
            requiresLogin: true
          }
      })
      .state("project.edit.projectMan", {
          url: "/projectMan/:projectID",
          controller: function ($stateParams) {
            console.log($stateParams);
          },
          controllerAs: "project",
          data: {
            requiresLogin: true
          }
      })
      .state("project.edit.comment", {
          url: "/comment/:projectID",
          controller: function ($stateParams) {
            console.log($stateParams);
          },
          controllerAs: "project",
          data: {
            requiresLogin: true
          }
      })
      .state("project.edit.attach", {
          url: "/attach/:projectID",
          controller: function ($stateParams) {
            console.log($stateParams);
          },
          controllerAs: "project",
          data: {
            requiresLogin: true
          }
      });
  };

}());
