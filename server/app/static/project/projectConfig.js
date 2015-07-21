(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .config(projectConfig);
  
  projectConfig.$inject = ["$stateProvider"];

  function projectConfig($stateProvider) {
    $stateProvider
      .state('project', {
        url: '/project',
        controller: "Project",
        controllerAs: "project",
        templateUrl:"/static/project/project.html",
        data: {
          requiresLogin: false,
          viewUrl: "/static/project/project.html"
        },
        onEnter: ["$stateParams", "projectDataService", "projectListService", 
                  "stateLocationService",
          function($stateParams, projectDataService, projectListService, stateLocationService) {
            // Make sure the project list is ready and $stateParams contains a projectID
            if (!projectListService.hasProjects()) {
              projectListService.updateAllProjects();
            }

            var projectID;
            var masterList = projectListService.getMasterList();
            var selectedIds = masterList.selectedIds;
            var oldProjectID = masterList.projectID;

            if (!$stateParams.projectID) {
              projectID = stateLocationService.getStateFromLocation().params.projectID;
              if (!projectID) {
                if (projectListService.hasProjects()) {
                  projectID = projectListService.getProjectID();
                }
              }
            }
            else {
              projectID = $stateParams.projectID;
              //selectedIds = [projectID];
              projectListService.setList(selectedIds);
              projectListService.setDescription("projectID = " + projectID + ";");
              projectListService.setSql({col_name: "projectID",
                                         val: projectID,
                                         op: "equals" });
            }
            //projectListService.updateProjectListProjectID(projectID, selectedIds);

            $stateParams.projectID = projectID;

            if (!projectDataService.projectID || projectDataService.projectID != projectID) {
              projectDataService.getProjectData($stateParams);
            }
          }
        ]
      }) 
      .state("project.add",  {
        url: "/add",
        templateUrl: "/static/project/templates/description.html",
        data: {
          requiresLogin: true
        }
      })
      .state('project.comment', {
        url: '/comment',
        templateUrl: "/static/project/templates/comment.html",
        data: {
          requiresLogin: true
        },
        resolve: {
          projectID: ["$stateParams", function($stateParams) {
            return $stateParams.projectID;
          }]
        }
      })
      .state("project.comment.add", {
        url: "/add/:projectID",
        controller: function ($stateParams) {
          console.log($stateParams, projectID);
        }
      })
      .state("project.comment.edit", {
        url: "/edit/:projectID",
        resolve: {
          projectID: ["$stateParams", function($stateParams) {
            return $stateParams.projectID;
          }]
        },
        controller: function ($stateParams) {
          console.log($stateParams);
        }
      })
      .state("project.comment.edit.detail", {
        url: "/detail/:commentID",
        controller: function ($stateParams, projectID) {
          $stateParams.projectID = projectID;
          console.log($stateParams, projectID);
        }
      })
      .state("project.description", {
        url: "/description",
        templateUrl: "/static/project/templates/description.html",
        data: {
          requiresLogin: true
        }
      })
      .state("project.description.edit", {
        url: "/edit/:projectID",
        controller: function ($stateParams) {
          console.log($stateParams);
        },
        data: {
          requiresLogin: true
        }
      })
      .state('project.detail', {
        url: '/:projectID',
        controller: function ($stateParams) {
          console.log($stateParams);
        },
        templateUrl: "/static/project/templates/detail.html",
        data: {
          requiresLogin: false
        }
      })
      .state('project.edit', {
        url: '/edit',
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
      })
      .state("project.disposition", {
        url: "/disposition",
        templateUrl: "/static/project/templates/disposition.html",
        data: {
          requiresLogin: true
        }
      })
      .state("project.disposition.add", {
        url: "/add/:projectID",
        controller: function($stateParams) {
          console.log($stateParams);
        }
      })
      .state("project.disposition.edit", {
        url: "/edit/:projectID",
        resolve: {
          projectID: ["$stateParams", function($stateParams) {
            return $stateParams.projectID;
          }]
        },
        controller: function ($stateParams) {
          console.log($stateParams);
        }
      })
      .state("project.disposition.edit.detail", {
        url: "/detail/:disposedInFY/:disposedInQ",
        controller: function ($stateParams, projectID) {
          console.log($stateParams);
        }
      })
      .state("project.portfolio", {
        url: "/portfolio",
        templateUrl: "/static/project/templates/portfolio.html",
        data: {
          requiresLogin: true
        }
      })
      .state("project.portfolio.edit", {
        url: "/edit/:projectID",
        controller: function ($stateParams) {
          console.log($stateParams);
        }
      })
      .state("project.projectMan", {
        url: "/projectMan",
        templateUrl: "/static/project/templates/projectMan.html",
        data: {
          requiresLogin: true
        }
      })
      .state("project.projectMan.edit", {
        url: "/edit/:projectID",
        controller: function ($stateParams) {
          console.log($stateParams);
        }
      });
  };

}());
