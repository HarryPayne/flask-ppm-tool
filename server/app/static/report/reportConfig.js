(function() {
  
  "use strict";
  
  angular
    .module("app.report")
    .config(reportConfig);
   
  reportConfig.$inject = ["$stateProvider"];
  
  function reportConfig($stateProvider) {
    $stateProvider
      .state("report", {
        name: "report",
        url: "/report",
        controller: "Report",
        controllerAs: "report",
        templateUrl: "/static/report/report.html",
        data: {
          requiresLogin: false
        }
      })
      .state("report.columns", {
        name: "report",
        url: "/columns/:query_string",
        templateUrl: "/static/report/templates/columns.html",
        controller: function ($stateParams) {
          console.log($stateParams);
        }
      })
      .state("report.table", {
        name: "report",
        url: "/:query_string",
        templateUrl: "/static/report/templates/table.html",
        controller: function ($stateParams) {
          console.log($stateParams);
        },
        onEnter: ["$stateParams", "projectListService", "reportTableService", 
          function($stateParams, projectListService, reportTableService) {
            if (!projectListService.hasProjects()) {
              projectListService.updateAllProjects();
            }
            var state_query = $stateParams.query_string;
            if (state_query && state_query != projectListService.getSql()) {
              reportTableService.getReportResults(state_query);
            }
            else if (state_query == "" && reportTableService.projectCount() != projectListService.allProjectsCount()) {
              reportTableService.getReportResults(state_query);
            }
          }
        ]
      });
  }
  
}());
