(function() {
  
  /**
   * @name selectStateService
   * @desc Factory for the service providing the logic for Select tab states.
   *        It also manages the current values of the inputs to the Search
   *        and Breakdown by attribute functionalities.
   */

  "use strict";
  
  angular
    .module("app.select")
    .factory("selectStateService", selectStateService);
  
  selectStateService.$inject = ["$rootScope", "$http", "$state", 
                                "projectListService", "reportTableService"];
  
  function selectStateService($rootScope, $http, $state, projectListService, 
                              reportTableService) {
    var service = {
      masterList: {
        searchText: "",
        nameLogic: "or",
        finalID: "0",
        breakdownAttr: null
      },
      clearBreakdown: clearBreakdown,
      clearSearchText: clearSearchText,
      getBreakdownByAttribute: getBreakdownByAttribute,
      getBreakdownChoices: getBreakdownChoices,
      getBreakdownTotal: getBreakdownTotal,
      getMasterList: getMasterList,
      initService: initService,
      jumpToBreakdownTable: jumpToBreakdownTable,
      setBreakdownChoices: setBreakdownChoices,
      updateBreakdownByAttribute: updateBreakdownByAttribute,
      updateBreakdownChoices: updateBreakdownChoices,
      SaveState: SaveState,
      RestoreState: RestoreState
    };

    RestoreState();
    if (typeof service.breakdownChoicesList == "undefined") {
      service.updateBreakdownChoices();
    }
    
    $rootScope.$on("savestate, service.SaveState");
    $rootScope.$on("restorestate, service.RestoreState");
      
    /**
     * @name clearBreakdown
     * @desc Hide Breakdown by attribute results
     */
    function clearBreakdown() {
      service.masterList.breakdownAttr = "";
    }

    /**
     * @name clearSearchText
     * @desc Clear this input search text for the search by title and 
     *        and description filter, which clears/hides the filtered
     *        project list.
     */
    function clearSearchText() {
      service.masterList.searchText = "";
    }

    /**
     * @name getBreakdownByAttribute
     * @desc Return the saved list of breakdown by attribute result rows
     *        by value. Values are returned in alphabetical order, except that
     *        the null result (the value whose id is zero) always comes first.
     */
    function getBreakdownByAttribute() {
      return service.breakdownByAttribute;
    }

    /**
     * @name getBreakdownChoices
     * @desc Return saved list of attributes available for breakdown by 
     *        attribute.
     */
    function getBreakdownChoices() {
      return service.breakdownChoicesList;
    }
    
    /**
     * @name getBreakdownTotal
     * @desc Return the sum of all the project counts in the breakdown by
     *        attribute results table.
     * @returns {number} total
     */
    function getBreakdownTotal() {
      var total = 0;
      _.each(service.breakdownByAttribute, function(row) {
        total += row.projectList.length;
      });
      return total;
    }

    function getMasterList() {
      return service.masterList;
    }

    /**
     * @name initService
     * @desc Initialize the list of selected projects to the state where all
     *        projects are selected, i.e., forgetting any selection criteria
     *        set under the Select or Filter Builder tabs.
     */
    function initService() {
      projectListService.resetList();
    }

    /**
     * @name jumpToBreakdownTable
     * @desc Jump from Breakdown by attribute results to the Report tab table 
     *        view of projects with the selected value of the breakdown
     *        attribute.
     * @param {Object} breakdown_row - an object describing breakdown results
     *        for a single value, consisting of:
     *          a label describing that value,
     *          a list of projectIDs that have that value,
     *          a human-readable description of the selected projects, as in
     *            "drivers='disaster recovery'"
     *          a query string describing the selection at the database level.
     *            The query string "driverID=3" goes with the human-readable
     *            version above.
     */
    function jumpToBreakdownTable(breakdown_row) {
      $state.go("report.table", {query_string: breakdown_row.query_string});
    }

    function RestoreState() {
      if (typeof sessionStorage.selectStateService != "undefined") {
        service.masterList = angular.fromJson(sessionStorage.selectStateService);
      }
    }

    function SaveState() {
      sessionStorage.selectStateService = angular.toJson(service.masterList);
    }
    
    /**
     * @name setBreakdownByAttribute
     * @desc Save the results of a request for a breakdown of projects by value
     *        of the selected attribute.
     */
    function setBreakdownByAttribute(result) {
      service.breakdownByAttribute = result.data;
    }

    /**
     * @name setBreakdownChoices
     * @desc Save the results of a request for breakdown by attribute choices.
     */
    function setBreakdownChoices(result) {
      service.breakdownChoicesList = result.data;
      service.SaveState();
    }
    
    /**
     * @name updateBreakdownByAttribute
     * @desc Ask the back end for a breakdown of projects by value of the 
     *        chosen attribute.
     */
    function updateBreakdownByAttribute() {
      $http.get("getBreakdownByAttribute/" + service.masterList.breakdownAttr.id)
        .then(setBreakdownByAttribute);
    }

    /**
     * @name updateBreakdownChoices
     * @desc Ask the back end for the list of attribute choices to populate the
     *        Break Down drop down menu.
     */
    function updateBreakdownChoices() {
      $http.get("getBreakdownChoices")
        .then(setBreakdownChoices);
    }
    
    SaveState();
    return service;    
  };
  
}());
