(function() {
  
  "use strict";
  
  angular
    .module("app.stateLocation")
    .factory("stateHistoryService", StateHistoryService);
  
  StateHistoryService.$inject = ['sessionService'];
  
  function StateHistoryService(sessionService) {
    var service = {
      "set": set,
      "get": get
    };
    
    return service;
    
    function set(key, state) {
      var hcheck = sessionService.stateHistory();
      var history = hcheck != null ? hcheck : {};
      history[key] = state;
      return sessionService.stateHistory(history);
    }
    
    function get(key) {
      var history = sessionService.stateHistory();
      return history != null ? history[key] : void 0;
    }
  };
  
}());
