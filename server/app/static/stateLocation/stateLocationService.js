(function() {
  
  "use strict";
  
  angular
    .module("app.stateLocation")
    .factory("stateLocationService", stateLocationService);
  
  stateLocationService.$inject = ['$location', '$state', '$stateParams', 'stateHistoryService'];
  
  function stateLocationService($location, $state, $stateParams, stateHistoryService){
    var service = {
      "preventCall": [],
      "locationChange": locationChange,
      "stateChange": stateChange,
      "guid": guid,
      "s4": s4
    };
    
    return service;
    
    function locationChange() {
      if (service.preventCall.pop('locationChange') != null) {
        return;
      }
      var location = $location.url();
      var entry = stateHistoryService.get(location);
      if (entry == null && !(location == "/project/" && $stateParams.projectID == "")) {
        return;
      }
      service.preventCall.push("stateChange");
      $state.go(entry.name, entry.params, {location: false});
    };
    
    function stateChange() {
      if (service.preventCall.pop("stateChange") != null){
        return;
      }
      var entry = {
        "name": $state.current.name,
        "params": $state.params
      };
      var prefix = $state.current.name == "select" ? "" : $state.current.name;
      if (prefix.substring(0,8) == "project." && !$stateParams.projectID) {
        //service.preventCall.push('locationChange');
        return;
      }
      prefix = prefix.substring(0,8) == "project." ? prefix.substring(0, prefix.indexOf(".")) : prefix;
      var projectID = prefix == "project" ? "/" + $stateParams.projectID : "";
      var url = "/" + prefix + projectID + "#" + (service.guid().substr(0, 8));
      stateHistoryService.set(url, entry);
      service.preventCall.push('locationChange');
      $location.url(url);
    }
    
    function guid() {
      return "" + (service.s4()) + (service.s4()) + "-" + (service.s4()) + "-" + (service.s4()) + "-" + (service.s4()) + "-" + (service.s4()) + (service.s4()) + (service.s4());
    };
    
    function s4() {
      return Math.floor((1 + Math.random()) * 0x10000).toString(16).substring(1);
    }
  };
  
}());
