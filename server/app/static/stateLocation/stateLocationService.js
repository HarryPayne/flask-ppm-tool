(function() {
  
  "use strict";
  
  angular
    .module("app.stateLocation")
    .factory("stateLocationService", StateLocationService);
  
  StateLocationService.$inject = ['$location', '$state', '$stateParams', 'stateHistoryService'];
  
  function StateLocationService($location, $state, $stateParams, stateHistoryService){
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
      var entry = stateHistoryService.get($location.url());
      if (entry == null) {
        return;
      }
      service.preventCall.push("stateChange");
      return $state.go(entry.name, entry.params, {location: false});
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
      prefix = prefix.substring(0,8) == "project." ? prefix.substring(0, prefix.indexOf(".")) : prefix;
      var projectID = prefix == "project" ? "/" + $stateParams.projectID : "";
      var url = "/" + prefix + projectID + "#" + (service.guid().substr(0, 8));
      stateHistoryService.set(url, entry);
      service.preventCall.push('locationChange');
      return $location.url(url);
    }
    
    function guid() {
      return "" + (service.s4()) + (service.s4()) + "-" + (service.s4()) + "-" + (service.s4()) + "-" + (service.s4()) + "-" + (service.s4()) + (service.s4()) + (service.s4());
    };
    
    function s4() {
      return Math.floor((1 + Math.random()) * 0x10000).toString(16).substring(1);
    }
  };
  
}());
