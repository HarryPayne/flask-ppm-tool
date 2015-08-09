(function() {
  
  /**
   *  @name reportConfig
   *  @desc Configuration for app.project module
   */
  
  "use strict";
  
  angular
    .module("app.project")
    .config(projectConfig);
  
  projectConfig.$inject = ["$stateProvider"];

  function projectConfig($stateProvider) {
    $stateProvider
      .state('project', {
        /** virtual root state for Project tab view */
        url: '/project',
        controller: "Project",
        controllerAs: "project",
        templateUrl:"/static/project/project.html",
        data: {
          requiresLogin: false,
          viewUrl: "/static/project/project.html"
        }
      }) 
      .state("project.add",  {
        /** state for adding a project */
        url: "/add",
        templateUrl: "/static/project/templates/description.html",
        data: {
          requiresLogin: true
        }
      })
      .state('project.attach', {
        /** virtual root for project.attach views */
        url: '/attach',
        data: {
          requiresLogin: true
        }
      })
      .state("project.attach.edit", {
        /** state for attaching a file under the Attach sub-tab */
        url: "/edit/:projectID",
        controller: function ($stateParams) {
          console.log($stateParams);
        },
        controllerAs: "project",
        data: {
          requiresLogin: true
        }
      })
      .state('project.comment', {
        /** virtual root for project.comment views */
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
        /** state for adding a comment to specified project */
        url: "/add/:projectID",
        controller: function ($stateParams) {
          console.log($stateParams, projectID);
        },
        onEnter: ["attributesService", "projectListService",
          function(attributesService, projectListService) {
            if (!attributesService.getAllAttributes()) {
              /** then the list of attributes is empty. Get it */
              attributesService.updateAllAttributes()
                .then(function() {
                  attributesService.updateProjAttrsFromRawItem('comment', 
                    [{name: 'commentID', value: {id: 0}}]);
                });
            } else {
              attributesService.updateProjAttrsFromRawItem('comment', 
                [{name: 'commentID', value: {id: 0}}]);
            }
          }
        ]
      })
      .state("project.comment.edit", {
        /** state for the project editing Comment sub-tab */
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
        /** state for editing the specified comment */
        url: "/detail/:commentID",
        controller: function ($stateParams, projectID) {
          $stateParams.projectID = projectID;
          console.log($stateParams, projectID);
        }
      })
      .state("project.description", {
        /** virtual root for project.description views */
        url: "/description",
        templateUrl: "/static/project/templates/description.html",
        data: {
          requiresLogin: true
        }
      })
      .state("project.description.edit", {
        /** state for project editing Description sub-tab */
        url: "/edit/:projectID",
        controller: function ($stateParams) {
          console.log($stateParams);
        },
        data: {
          requiresLogin: true
        }
      })
      .state('project.detail', {
        /** state for project display view */
        url: '/:projectID',
        controller: function ($stateParams) {
          console.log($stateParams);
        },
        templateUrl: "/static/project/templates/detail.html",
        data: {
          requiresLogin: false
        }
      })
      .state("project.disposition", {
        /** virtual root for project.disposition views */
        url: "/disposition",
        templateUrl: "/static/project/templates/disposition.html",
        data: {
          requiresLogin: true
        }
      })
      .state("project.disposition.add", {
        /** state for adding a disposition to the specified project */
        url: "/add/:projectID",
        controller: function($stateParams) {
          console.log($stateParams);
        },
        onEnter: ["attributesService",
          function(attributesService) {
            if (!attributesService.getAllAttributes()) {
              /** then the list of project brief descriptions is empty. Get it */
              attributesService.updateAllAttributes()
                .then(function() {
                  attributesService.updateProjAttrsFromRawItem('disposition', 
                    [{name: 'disposedInFY', value: {id: 0}}, 
                     {name: 'disposedInQ', value: {id: 0}}]);
                });
            } else {
              attributesService.updateProjAttrsFromRawItem('disposition', 
                [{name: 'disposedInFY', value: {id: 0}}, 
                 {name: 'disposedInQ', value: {id: 0}}]);
            }
          }
        ]

      })
      .state("project.disposition.edit", {
        /** state for project editing Disposition tab */
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
        /** state for editing the specified disposition, where the primary key
            consists of the year and quarter of the disposition */
        url: "/detail/:disposedInFY/:disposedInQ",
        controller: function ($stateParams, projectID) {
          console.log($stateParams);
        }
      })
      .state("project.portfolio", {
        /** virtual root for the project.portfolio views */
        url: "/portfolio",
        templateUrl: "/static/project/templates/portfolio.html",
        data: {
          requiresLogin: true
        }
      })
      .state("project.portfolio.edit", {
        /** state for project editing under the Portfolio sub-tab */
        url: "/edit/:projectID",
        controller: function ($stateParams) {
          console.log($stateParams);
        }
      })
      .state("project.projectMan", {
        /** virtual root for the project.projectMan views */
        url: "/projectMan",
        templateUrl: "/static/project/templates/projectMan.html",
        data: {
          requiresLogin: true
        }
      })
      .state("project.projectMan.edit", {
        /** state for project editing under the Project Management sub-tab */
        url: "/edit/:projectID",
        controller: function ($stateParams) {
          console.log($stateParams);
        }
      });
  };

}());
