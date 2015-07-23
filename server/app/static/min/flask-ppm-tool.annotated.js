(function() {
  
  angular
    .module("PPT", [
      "app.attributes",
      "app.comment",
      "app.curate",
      "app.filter", 
      "app.header", 
      "app.login",
      "app.loginInjectorProvider",
      "app.manage",
      "app.modalConfirm",
      "app.project", 
      "app.report",
      "app.select", 
      "app.stateLocation",
      "app.title"
    ]);

}());

(function() {
  
  "use strict";
  
  angular
    .module("PPT")
    .config(PPTConfig);
  
  PPTConfig.$inject = ['$urlRouterProvider'];
  
  function PPTConfig($urlRouterProvider) {
    $urlRouterProvider.otherwise('/select');
  };
  
}());

(function() {
  
  "use strict";
  
  angular
    .module("PPT")
    .controller("PPTCtrl", PPTCtrl);
  
  PPTCtrl.$inject = ['$rootScope', '$location'];
  
  function PPTCtrl($rootScope, $location) {
    /* */
  }
  
}());
(function() {
  
  "use strict";
  
  angular
    .module("PPT")
    .run(initializeApp);
  
  initializeApp.$inject = ['$rootScope'];
  
  function initializeApp($rootScope) {
    $rootScope.$on("$stateChangeStart", _initializeApp);
    
    function _initializeApp(e, toState, toParams, fromState, fromParams){
      window.onbeforeunload = function (event) {
        // save state before navigating away from the application
        $rootScope.$broadcast('savestate');
      };
      
    }   
  }
  
}());
(function() {

  angular
    .module("app.attributes", ["ui.router"]);

}());
(function() {
  
  "use strict";
  
  angular
    .module("app.attributes")
    .controller("Attributes", Attributes);
  
  Attributes.$inject = ['$scope', '$state', 'attributesService'];
  
  function Attributes($scope, $state, attributesService) {
    
    this.als = attributesService;
    this.attributes = this.als.getAttributes;

  };
  
}());

(function() {
/*
Project Attribute Manager Service

This service persists the details of a single project, obtained by calls to the
server, and makes them available via the project controller.

Data attributes:

  service.allAttributes: 
    An object keyed on attribute name, which preserves the metadata for each 
    attribute, such as: label, format, help text, and choices for select widgets.
    Downloaded from the server once per session. Because some widgets need two
    attributes, an attribute may have a child attribute. Child attributes also
    have a reference at the top level in allAttributes.

    Attribute values for a single project are loaded on initial visit to the
    project tab. Attributes that have a single instance per object have their
    values stored with the metadata in allAttributes. Attributes that may have
    multiple instances (comments, dispositions, uploaded files) have values that
    are stored in service.rawAttributes. To edit a particular comment, say, all
    of the values for that comment are copied to atributes in allAttributes (and
    by reference to attributes in projectAttributes).
  
  service.projectAttributes:
    A list of references to allAttributes attribute values for each main database
    table. Used to preserve the order in which attributes are displayed on the
    view and edit forms for each main table.
*/
  "use strict";
  
  angular
    .module("app.attributes")
    .factory("attributesService", attributesService);
  
  attributesService.$inject = ['$rootScope', '$http', 'projectListService'];
  
  function attributesService($rootScope, $http, projectListService) {
    var service = {
      addAttrToDataObj: addAttrToDataObj,
      addUniqueAttrToDataObj: addUniqueAttrToDataObj,
      clearAllErrors: clearAllErrors,
      getAttribute: getAttribute,
      getAllAttributes: getAllAttributes,
      getFormData: getFormData,
      getProjectAttributes: getProjectAttributes,
      getRawAttributes: getRawAttributes,
      getSelectedChoices:getSelectedChoices,
      getToken: getToken, 
      hasAValue: hasAValue,
      makeProjectLink: makeProjectLink,
      mergeAttributeWithValue: mergeAttributeWithValue,
      newProjectAttributes: newProjectAttributes,
      RestoreState: RestoreState,
      SaveState: SaveState,
      setAllAttributes: setAllAttributes,
      updateProjAttrsFromRawItem: updateProjAttrsFromRawItem,
      updateAllAttributes: updateAllAttributes,
      updateErrors: updateErrors,
      updateProjectAttributes: updateProjectAttributes,
      updateProjectAttributesFromForm: updateProjectAttributesFromForm
    };


    service.RestoreState();
    if (typeof service.allAttributes == "undefined") {
      service.updateAllAttributes();
    }
    
    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);

    return service;
    
    function addAttrToDataObj(attr) {
      /*
      if (attr.name == "csrf_token" || attr.name == "projectID") {
        return;
      }
      */
      if (attr.format == "multipleSelect" || attr.format == "dateRangeSelect") {
        if(! _.isArray(attr.value)) {
          this[attr.name] = attr.value.id;
        }
        else {
          this[attr.name] = _.map(attr.value, function(a) {
            return a.id;
          });
        }
        if (attr.child) {
          if (!_.isArray(attr.child.value)) {
            this[attr.child.name] = attr.child.value.id;
          }
          else {
            this[attr.child.name] = attr.child.value;
          }
        }
      }
      else if (attr.format == "date" || _.contains(["commentAuthored", "commentEdited"], attr.name)) { // list of computed attributes rendered as string 
        if (attr.computed) return;
        if (attr.value) {
          this[attr.name] = new Date(attr.value).toString("yyyy-MM-ddTHH:mm:ss");
        }
        else {
          this[attr.name] = null;
        }
      }
       else if (attr.format.substring(0, "child_for_".length) != "child_for_") {
        this[attr.name] = attr.value;
      }      
    }

    function addUniqueAttrToDataObj(attr) {
      if (_.contains(["disposition", "comment"], attr.table)) {
        return;
      }
      addAttrToDataObj(attr);
    }

    function clearAllErrors() {
      _.each(service.allAttributes, function(attr) {
        delete attr.errors;
      });
      return;
      if (service.projectAttributes["disposition"].length) {
        _.each(service.projectAttributes["disposition"], function(disposition) {
          _.each(disposition, function(attr) {
            attr.errors = [];
          });
        });
      }
      if (service.projectAttributes["comment"].length) {
        _.each(service.projectAttributes["comment"], function(comment) {
          _.each(comment, function(attr) {
            attr.errors = [];
          });
        });
      }
    }

    function getAttribute(name) {
      return service.allAttributes[name];
    }
    
    function getAllAttributes() {
      return service.allAttributes;
    };
    
    function getFormData(tableName, keys) {
      var formData = new Object;
      formData.csrf_token = service.csrf_token;
      if (typeof keys != "undefined") {
        _.each(keys, function(key) {
          if (typeof key.value.id != "undefined") {
            formData[key.name] = key.value.id;
          }
          else {
            formData[key.name] = key.value;
          }
        });
      }
      _.each(service.getProjectAttributes(tableName), addAttrToDataObj, formData);
      if (tableName == "comment") {
        formData["commentEditor"] = $rootScope.currentUser.id;
      }
      return formData;
    };

    function getProjectAttributes(tableName, flag) {
      try {
        return _.sortBy(service.projectAttributes[tableName], "attributeID");
      }
      catch(e) {
        //
      }
    };

    function getRawAttributes(tableName) {
      try {
        return service.rawAttributes[tableName];
      }
      catch (e) {
        //
      }
    }
    
    function getSelectedChoices(merged) {
      if (merged.multi) {
        return _.filter(merged.choices, function(choice){
                 return _.contains(merged.value, choice.id);
               });
      }
      else if (merged.format == "lines") {
        return _.filter(merged.choices, function(choice){
                 return _.contains(merged.value, choice);
               });
      }
      else {
        return _.where(merged.choices, {id: merged.value})[0];
      }
    };
    
    function hasAValue(attr) {
      if ((typeof attr.value != "undefined" && attr.value != null && attr.value != "" && attr.value != []) ||
          (typeof attr.value != "undefined" && attr.value != null && typeof attr.value.id != "undefined" && attr.value.id != null  && attr.value != "" && attr.value != [])) {
        return true;
      }
      else return false;
    }

    function getToken() {
      return service.csrf_token;
    }
    
    function makeProjectLink(projectID) {
      return "project link here";
    };

    /**
     *  Take the project attribute that comes back from the server, which 
     *  consists of only a name and a value, and merge the value with the
     *  attribute in allAttributes, which already has all of the metadata
     *  associated with this field: format, required, computed, ... Take
     *  the merged attribute and push a reference to it onto the
     *  projectAttributes list, which is what the view will iterate over
     *  when rendering the data.
     */
    function mergeAttributeWithValue(attr) {
      if (attr.name == "$$hashKey") {
        return;
      }
      var merged = service.allAttributes[attr.name];
      merged.value = attr.value;
      if (attr.printValue) merged.printValue = attr.printValue;
      if (merged.format.substring(0, "child_for_".length) == "child_for_") {
        return;
      }
      else if (merged.format == "date" && attr.value) {
        merged.value = new Date(Date.parse(attr.value));
      }
      service.projectAttributes[this].push(merged);
    }
    
    function newProjectAttributes() {
      _.each(["description", "portfolio", "project"], function(tableName) {
          service.projectAttributes[tableName] = [];
          updateProjAttrsFromRawItem(tableName, []);
      });
    }

    function RestoreState() {
      var data = angular.fromJson(sessionStorage.attributesService);
      if (data) {
        service.allAttributes = data.allAttributes;
        service.currentState = data.currentState;
      }
    };

    function SaveState() {
      var data = new Object;
      data.allAttributes = service.allAttributes;
      data.currentState = service.currentState;
      sessionStorage.attributesService = angular.toJson(data);
    };
    
    function setAllAttributes(response) {
      service.allAttributes = response.data;
      var parents = _.filter(response.data, function(attr) {
        if (attr.child) return true;
      });
      _.each(parents, function(parent) {
        var child = parent.child;
        service.allAttributes[child.name] = child;
      });
    };

    /**   
     *  Data for items with multiple instances per project (dispositions and
     *  comments) are stored as raw items, separate from project attributes.
     *  By passing in primary key attributes (with values) that identify the
     *  selected instance, we can find the selected item and set the project
     *  attribute values from that instance. We save the primary keys as a
     *  signature of the selected state, if there is one.
     */
    function updateProjAttrsFromRawItem(tableName, keys) {
      service.currentState.keys = [];
      var raw_items = getRawAttributes(tableName);
      var filtered_items = raw_items;
      if (typeof filtered_items == "undefined") filtered_items = [];
      var selected;
      _.each(keys, function(key) {
        filtered_items = _.filter(filtered_items, function(item) {
          if ((typeof item[key.name].id == "undefined" && item[key.name] == key.id)
              || (item[key.name].id == key.id)) {
            service.currentState.keys.push(key);
            return true;
          }
        });
      });
      if (filtered_items.length) {
        /*  Got one. Extract a list of attributes from the raw item and merge
         *  with allAttributes. Set up parent/child attributes. */
        selected = filtered_items[0];
        var attributes = [];
        _.each(Object.keys(selected), function(key) {
          if (_.last(key.split(".")) == "printValue") {
            return;
          }
          attributes.push({name: key, value: selected[key]});
        });

        service.projectAttributes[tableName] = [];
        _.each(attributes, mergeAttributeWithValue, tableName);
 
        var parents = _.filter(service.projectAttributes[tableName], function(attr) {
          if ("child" in attr) {
            return true;
          }
        });
        _.each(parents, function(parent) {
          var childName = parent.child.name;
          parent.child = service.allAttributes[childName];
        });
        SaveState();
        return selected;
      }
      else {
        var tableAttrs = _.where(service.allAttributes, {table: tableName});
        service.projectAttributes[tableName] = [];
        _.each(tableAttrs, function(attr) {
          if (attr.computed) return;
          else if (_.contains(["multipleSelect", "dateRangeSelect"], attr.format)) {
            attr.value = [];
          }
          else {
            attr.value = "";
          }
          service.projectAttributes[tableName].push(attr);
        });
      }
      SaveState();
    }
    
    function updateAllAttributes() {
      $http.get("/getAllAttributes")
        .then(service.setAllAttributes);
    };

    function updateErrors(errors) {
      if (typeof errors == "undefined") return;
      _.each(errors, function(error) {
        _.each(Object.keys(error), function(key) {
          var attr = service.getAttribute(key);
          attr.server_errors = this[key];
        }, error);
      });
    };
    
    function updateProjectAttributes(result, params) {
      service.currentState = new Object;
      service.currentState.keys = [];
      service.currentState.projectID = result.data.projectID;
      service.csrf_token = result.data.csrf_token;
      service.errors = result.data.errors;
      service.clearAllErrors();
      delete service.success;
      service.updateErrors(result.data.errors);
      if (result.statusText == "OK") {
        _.each(result.data.formData, updateProjectAttributesFromForm);
      }
      if (typeof params != "undefined" && ("disposedInFY" in params || "disposedInQ" in params)) {
        updateProjAttrsFromRawItem("disposition", 
                                   [{name: 'disposedInFY', id: service.allAttributes['disposedInFY'].value['id']}, 
                                    {name: 'disposedInQ', id: service.allAttributes['disposedInQ'].value['id']}]);
      }
      else if (typeof params != "undefined" && "commentID" in params) {
        updateProjAttrsFromRawItem("comment", 
                                   [{name: 'commentID', id: service.allAttributes["commentID"].value}]);
      }
      return;
    };

    /**
     *  updateProjectAttributesFromForm
     *
     *  Update old results with new results where possible. If a new item appears,
     *  make it be the live item. A bit more care is required for the tables that
     *  can have multiple results (disposition or comments). Look for matches by
     *  unique ID column on the table.
     */
    function updateProjectAttributesFromForm(form) {
      var tableData = new Object;
      tableData.tableName = form.tableName;

      if (_.isArray(form.attributes[0].attributes)) { // disposition or comments
        if (typeof service.rawAttributes == "undefined") {
          service.rawAttributes = new Object;
        }
        service.rawAttributes[tableData.tableName] = [];
        _.each(form.attributes, function(subform) {
          if (subform.attributes.length) {
            var formObj = new Object;
            _.each(subform.attributes, function(attr) {
              formObj[attr.name] = attr.value;
              if (typeof attr.printValue != "undefined") {
                formObj[attr.name+".printValue"] = attr.printValue;
              }
            });
            service.rawAttributes[tableData.tableName].push(formObj);
          }
        });
      }
      else {
        if (typeof service.projectAttributes == "undefined") {
          service.projectAttributes = new Object;
        }
        service.projectAttributes[tableData.tableName] = [];
        _.each(form.attributes, mergeAttributeWithValue,
          tableData.tableName);
      }
    }
  }
  
}());

(function() {
  
  angular
    .module("app.comment", ["ui.router"]);
  
}());

(function() {
  
  "use strict";
  
  angular
    .module("app.comment")
    .config(commentConfig);
  
  commentConfig.$inject = ['$stateProvider'];

  function commentConfig($stateProvider) {
    $stateProvider
      .state("comment", {
        url: "/comment",
        templateUrl: "/static/comment/comment.html",
        controller: "Comment",
        controllerAs: "comment",
        data: {
          requiresLogin: true
        }
      });
  }
  
}());

(function() {
  
  "use strict";
  
  angular
    .module("app.comment")
    .controller("Comment", Comment);
  
  Comment.$inject = ['$scope', '$rootScope'];
  
  function Comment($scope, $rootScope) {
    
    this.currentUser = $rootScope.currentUser;
  }
  
}());
(function() {
  
  angular
    .module("app.curate", ["ui.router"]);
  
}());

(function() {
  
  "use strict";
  
  angular
    .module("app.curate")
    .config(curateConfig);
  
  curateConfig.$inject = ['$stateProvider'];
  
  function curateConfig($stateProvider) {
    $stateProvider
      .state("curate", {
        url: "/curate",
        templateUrl: "/static/curate/curate.html",
        controller: "Curate",
        controllerAs: "curate",
        data: {
          requiresLogin: true
        }
      });
  }
  
}());

(function() {
  
  "use strict";
  
  angular
    .module("app.curate")
    .controller("Curate", Curate);
  
  Curate.$inject = ['$scope', '$rootScope'];
  
  function Curate($scope, $rootScope) {
    
    this.currentUser = $rootScope.currentUser;

  };
  
}());

(function() {
  
  angular
    .module("app.filter", []);
    
}());

(function() {
  
  "use strict";
  
  angular
    .module("app.filter")
    .config(filterConfig);
  
  filterConfig.$inject = ['$stateProvider'];
  
  function filterConfig($stateProvider) {
    $stateProvider
      .state("filter", {
        name: "filter",
        url: "/filter",
        controller: "Filter",
        controllerAs: "filter",
        templateUrl: "/static/filter/filter.html",
        data: {
          requiresLogin: false
        }
      });
  };
  
}());

(function() {
  
  "use strict";
  
  angular
    .module("app.filter")
    .controller("Filter", Filter);
  
  Filter.$inject = ['projectListService', 'selectStateService'];
  
  function Filter(projectListService, selectStateService) {
    
    this.ls = projectListService;
    this.masterList = projectListService.getMasterList;
    this.selectState = selectStateService;

  };
  
}());

(function() {
  
  angular
    .module("app.header", ["ui.router"]);
  
}());

(function() {
  
  "use strict";
  
  angular
    .module("app.header")
    .controller("Header", Header);
  
  Header.$inject = ['$rootScope', '$state', 'projectListService', 'loginStateService'];
  
  function Header($rootScope, $state, projectListService, loginStateService) {
    var vm = this;
    
    this.currentUser = $rootScope.currentUser;
    this.masterList = projectListService.getMasterList;
    this.getSql = projectListService.getSql;

    this.loggedIn = loginStateService.loggedIn;
    this.login = loginStateService.login;
    this.logout = loginStateService.logout;

    this.jumpToNextProject = jumpToNextProject;
    this.jumpToPreviousProject = jumpToPreviousProject;
    
    $rootScope.$on("$stateChangeSuccess", function(e, toState){
      vm.isActive = isActive;
      vm.hasNext = hasNext;
      vm.hasPrevious = hasPrevious;

      function isActive(name) {
        return toState.name.split(".")[0] === name;
      }; 
  
      function hasNext() {
        return (vm.isActive("project") && vm.masterList().next > -1);
      };
  
      function hasPrevious() {
        return (vm.isActive("project") && vm.masterList().previous > -1);
      };
    });
    
    function jumpToNextProject() {
      if (vm.masterList().next > -1) {
         projectListService.jumpToProject(vm.masterList().next);
      }
    };

    function jumpToPreviousProject () {
      if (vm.masterList().previous > -1) {
         projectListService.jumpToProject(vm.masterList().previous);
      }
    };
  }

  
}());

(function() {
  
  angular
    .module("app.login", [
      "ui.bootstrap",
      "angular-storage",
      "angular-jwt"
    ]);
  
}());
(function() {
  
  "use strict";
  
  angular
    .module("app.login")
    .factory("loginApiService", loginApiService);
  
  loginApiService.$inject = ['$http'];
  
  function loginApiService($http) {
    var service = {login: login};

    return service;    
  
    function login(username, password) {
      return $http({
        url: "/auth",
        method: "POST",
        data: {"username": username, 
               "password": password}
      });
    };
  };
  
}());
(function() {
  
  "use strict";
  
  angular
    .module("app.login")
    .config(loginConfig);
  
  loginConfig.$inject = ['jwtInterceptorProvider', '$httpProvider'];
  
  function loginConfig(jwtInterceptorProvider, $httpProvider) {

    jwtInterceptorProvider.tokenGetter = function(store) {
      return store.get('jwt');
    };

    $httpProvider.interceptors.push('jwtInterceptor');

    $httpProvider.interceptors.push('loginInjector');
  }
    
}());
(function() {
  
  "use strict";
  
  angular
    .module("app.login")
    .controller("Login", Login);
  
  Login.$inject = ['$scope', 'loginApiService'];
  
  function Login($scope, loginApiService) {
    var vm = this;
    
    this.cancel = $scope.$dismiss;
    this.submit = submitLogin;
    
    function submitLogin(email, password) {
      loginApiService.login(email, password).then(function (user) {
        $scope.$close(user);
      });
    }
  };
  
}());
(function() {
  
  "use strict";
  
  angular
    .module("app.login")
    .run(loginRun);
  
  loginRun.$inject = ['$rootScope', '$state', 'store', 'jwtHelper', 'loginService'];
  
  function loginRun($rootScope, $state, store, jwtHelper, loginService) {
    $state.transitionTo("select");

    if (store.get("jwt") && !jwtHelper.isTokenExpired(store.get("jwt"))) {
      $rootScope.currentUser = jwtHelper.decodeToken(store.get("jwt"));
    }

    $rootScope.$on("$stateChangeStart", loginIfRequiredByToState);

    function loginIfRequiredByToState(e, toState, toParams, fromState, fromParams) {
      var requiresLogin = toState.data && toState.data.requiresLogin;
      var noActiveToken = !store.get("jwt") || jwtHelper.isTokenExpired(store.get("jwt"));
      if (requiresLogin && noActiveToken) {
        e.preventDefault();

        loginService()
          .then(
            function () {
              return $state.go(toState.name, toParams);
            },
            function () {
              if (fromState.name == "") {
                return $state.go("select");
              }
            }
          );
      }
    };
  };
  
}());
(function() {
  
  "use strict";
  
  angular
    .module("app.login")
    .service("loginService", loginService);
  
  loginService.$inject = ['$modal', '$rootScope', 'store', 'jwtHelper'];
  
  function loginService($modal, $rootScope, store, jwtHelper) {

    return getUserViaModal;
    
    function getUserViaModal() {
      var instance = $modal.open({
        templateUrl: "static/login/login.html",
        controller: "Login",
        controllerAs: "login"
      });

      return instance.result.then(assignCurrentUser);
    };

    function assignCurrentUser(response) {
      if (response.status == 200) {
        store.set("jwt", response.data.token);
        var user = jwtHelper.decodeToken(response.data.token);
        $rootScope.currentUser = user;
        return user;
      }
      return response;
    };
  };
  
}());
(function() {
  
  "use strict";
  
  angular
    .module("app.login")
    .factory("loginStateService", loginStateService);
  
  loginStateService.$inject = ['$rootScope', '$http', 'store', 'jwtHelper', 'loginService'];
  
  function loginStateService($rootScope, $http, store, jwtHelper, loginService) {
    var service = {
      can_edit_roles: ["Curator", "Manager"],
      canAddComments: canAddComments,
      canEditProjects: canEditProjects,
      hasRole: hasRole,
      loggedIn: loggedIn,
      login: login,
      logout: logout,
      SaveState: SaveState,
      RestoreState: RestoreState
    };
    
    return service;    
    
    function canAddComments() {
      if (service.loggedIn()) {
        return true;
      }
      return false;
    }
    function canEditProjects() {
      if (service.loggedIn()) {
        if (_.intersection($rootScope.currentUser.roles, service.can_edit_roles)) {
          return true;
        }
      }
      return false;
    }

    function hasRole(role) {
      if (service.loggedIn()) {
        if (_.contains($rootScope.currentUser.roles, role)) {
          return true;
        }
      }
      return false;
    }

    function loggedIn() {
      return Boolean(store.get('jwt'));
    }
    
    function login() {
      loginService();
    }

    function logout() {
      store.remove('jwt');
      delete $rootScope.currentUser;
    }

    function SaveState() {
      sessionStorage.loginStateService = angular.toJson(service.masterList);
    }
    
    function RestoreState() {
      service.masterList = angular.fromJson(sessionStorage.loginStateService);
    }
    
    $rootScope.$on("savestate, service.SaveState");
    $rootScope.$on("restorestate, service.RestoreState");
  };
   
}());
(function() {

    angular
        .module("app.loginInjectorProvider", []);
        
}());
(function() {

  "use strict";

  angular
    .module("app.loginInjectorProvider")
    .factory("loginInjector", LoginInjector);

  LoginInjector.$inject = ['$q', '$injector', '$timeout'];

  function LoginInjector($q, $injector, $timeout) {
    var loginService, $http, $state;

    /* Avoid `Uncaught Error: [$injector:cdep] Circular dependency found` */
    /* http://brewhouse.io/blog/2014/12/09/authentication-made-simple-in-single-page-angularjs-applications.html 
    $timeout(function () { 
      loginService = $injector.get("loginService");
      $http = $injector.get("$http");
      $state = $injector.get("$state");
    }); */

    var service = {
      responseError: responseError
    };

    return service;

    function responseError(rejection) {
      if (rejection.status !== 401) {
        return rejection;
      }

      var deferred = $q.defer();

      loginService()
        .then(
          function () {
            deferred.resolve( $http(rejection.config) );
          },
          function () {
            $state.go("select");
            deferred.reject(rejection);
          }
        );

      return deferred.promise;
    };
  }
        
}());
(function() {
  
  angular
    .module("app.manage", ["ui.router"]);
  
}());

(function() {
  
  "use strict";
  
  angular
    .module("app.manage")
    .config(manageConfig);
  
  manageConfig.$inject = ['$stateProvider'];
  
  function manageConfig($stateProvider) {
    $stateProvider
      .state("manage", {
        url: "/manage",
        templateUrl: "/static/manage/manage.html",
        controller: "Manage",
        controllerAs: "manage",
        data: {
          requiresLogin: true
        }
      });
  };
  
}());
(function() {
  
  "use strict";
  
  angular
    .module("app.manage")
    .controller("Manage", Manage);
  
  Manage.$inject = ['$rootScope'];
  
  function Manage($rootScope) {
    
    this.currentUser = $rootScope.currentUser;
    
  };
  
}());
(function() {
  
  angular
    .module("app.modalConfirm", ["ui.bootstrap"]);
    
}());

(function() {
  // http://weblogs.asp.net/dwahlin/building-an-angularjs-modal-service
  
  "use strict";
  
  angular
    .module("app.modalConfirm")
    .factory("modalConfirmService", ModalConfirmService);
  
  ModalConfirmService.$inject = ['$modal'];
  
  function ModalConfirmService($modal) {
    var service = {
      modalDefaults: {
        backdrop: true,
        keyboard: true,
        modalFade: true,
        templateUrl: "/static/modalConfirm/confirm.html"
      },
      modalOptions: {
        actionText: "OK",
        bodyText: "OK to proceed?",
        closeText: "Close",
        headerText: "Confirm"
      },
      show: show,
      showModal: showModal
    };
    
    return service;
    
    function show(customDefaults, customOptions) {
      var currentDefaults = {};
      var currentOptions = {};
      
      jQuery.extend(currentDefaults, service.modalDefaults, customDefaults);
      jQuery.extend(currentOptions, service.modalOptions, customOptions);
      
      if (!currentDefaults.controller) {
        currentDefaults.controller = ["$scope", "$modalInstance",
          function($scope, $modalInstance) {
            $scope.modalOptions = currentOptions;
            $scope.modalOptions.ok = function(result) {
              $modalInstance.close(result);
            };
            $scope.modalOptions.close = function(result) {
              $modalInstance.dismiss("cancel");
            };
          }
        ];
      }
      
      return $modal.open(currentDefaults).result;
    };

    function showModal(customDefaults, customOptions) {
      if (!customDefaults) customDefaults = {};
      customDefaults.backdrop = "static";
      return service.show(customDefaults, customOptions);
    };
  }
    
}());

(function() {
  
  angular
    .module("app.project", ["ui.date", "ui.router"]);
  
}());

(function() {
  
  /**
   *  @name reportConfig
   *  @desc Configuration for app.project module
   */
  
  "use strict";
  
  angular
    .module("app.project")
    .config(projectConfig);
  
  projectConfig.$inject = ['$stateProvider'];

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
        },
        /** service initialization */
        onEnter: ['projectDataService', function(projectDataService) {
            projectDataService.initService();
          }
        ]
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
        controller: ['$stateParams', function ($stateParams) {
          console.log($stateParams);
        }],
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
          projectID: ['$stateParams', function($stateParams) {
            return $stateParams.projectID;
          }]
        }
      })
      .state("project.comment.add", {
        /** state for adding a comment to specified project */
        url: "/add/:projectID",
        controller: ['$stateParams', function ($stateParams) {
          console.log($stateParams, projectID);
        }]
      })
      .state("project.comment.edit", {
        /** state for the project editing Comment sub-tab */
        url: "/edit/:projectID",
        resolve: {
          projectID: ['$stateParams', function($stateParams) {
            return $stateParams.projectID;
          }]
        },
        controller: ['$stateParams', function ($stateParams) {
          console.log($stateParams);
        }]
      })
      .state("project.comment.edit.detail", {
        /** state for editing the specified comment */
        url: "/detail/:commentID",
        controller: ['$stateParams', 'projectID', function ($stateParams, projectID) {
          $stateParams.projectID = projectID;
          console.log($stateParams, projectID);
        }]
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
        controller: ['$stateParams', function ($stateParams) {
          console.log($stateParams);
        }],
        data: {
          requiresLogin: true
        }
      })
      .state('project.detail', {
        /** state for project display view */
        url: '/:projectID',
        controller: ['$stateParams', function ($stateParams) {
          console.log($stateParams);
        }],
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
        controller: ['$stateParams', function($stateParams) {
          console.log($stateParams);
        }]
      })
      .state("project.disposition.edit", {
        /** state for project editing Disposition tab */
        url: "/edit/:projectID",
        resolve: {
          projectID: ['$stateParams', function($stateParams) {
            return $stateParams.projectID;
          }]
        },
        controller: ['$stateParams', function ($stateParams) {
          console.log($stateParams);
        }]
      })
      .state("project.disposition.edit.detail", {
        /** state for editing the specified disposition, where the primary key
            consists of the year and quarter of the disposition */
        url: "/detail/:disposedInFY/:disposedInQ",
        controller: ['$stateParams', 'projectID', function ($stateParams, projectID) {
          console.log($stateParams);
        }]
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
        controller: ['$stateParams', function ($stateParams) {
          console.log($stateParams);
        }]
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
        controller: ['$stateParams', function ($stateParams) {
          console.log($stateParams);
        }]
      });
  };

}());

(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .controller("Project", Project);
  
  Project.$inject = ['$scope', '$state', 'projectDataService', 'projectListService', 'attributesService', 'modalConfirmService', 'loginStateService'];
  
  function Project($scope, $state, projectDataService, projectListService, 
                   attributesService, modalConfirmService, loginStateService){
    
    this.as = attributesService;
    this.ds = projectDataService;
    this.ls = projectListService;
    this.log_s = loginStateService;
    
    this.attributes = attributesService.getAttributes;
    this.changeMode = projectDataService.changeMode;
    this.currentMode = projectDataService.currentMode;
    this.dateOptions = {changeYear: true, changeMonth: true};
    this.jumpToAtachFile = projectDataService.jumpToAtachFile;
    this.jumpToAddForm = projectDataService.jumpToAddForm;
    this.masterList = this.ls.getMasterList;
    this.viewUrl = projectDataService.viewUrl;

    $scope.$on(["$stateChangeStart"], function(event, toState, toParams, fromState, fromParams) {
      projectDataService.success = "";
      if (typeof projectDataService.noCheck != "undefined") {
        $scope.projectForm.$setPristine(true);
        delete projectDataService.noCheck;
        //projectDataService.getProjectData(projectDataService.projectID); // forced discard
        //$state.go(toState, toParams);
      }
      if ($scope.projectForm.$dirty) {
        event.preventDefault();

        var modalOptions = {
            closeText: "Cancel",
            actionText: "Continue",
            headerText: "Unsaved changes",
            bodyText: "You have unsaved changes. Press Continue to discard your changes and" 
                      + " navigate away, or press Cancel to stay on this page."
        };

        modalConfirmService.showModal({}, modalOptions).then(function (result) {
          $scope.projectForm.$setPristine(true);
          var target = toParams.projectID ? toParams.projectID : fromParams.projectID;
          projectDataService.getProjectData(target, toParams); // forced discard
          $state.go(toState, toParams);
        });
      }
    });
  };
  
}());

(function() {

  /**
   *  @name projectDataService
   *  @desc A factory for the primary service that manages the data associated 
   *        with the Project tab. That is a lot, and it gets help from a couple
   *        of other services: 
   *
   *          attributesService - for lower level data attribute management.
   *          projectListService - for the data that support the Previous and
   *            Next top-level tabs, and also remember just which projects were
   *            selected by your last filter or breakdown by attribute.
   */

  "use strict";
  
  angular
    .module("app.project")
    .factory("projectDataService", projectDataService);
  
  projectDataService.$inject = ['$rootScope', '$http', '$state', '$stateParams', '$location', 'attributesService', 'loginStateService', 'projectListService', 'stateLocationService'];
  
  function projectDataService($rootScope, $http, $state, $stateParams, 
                              $location, attributesService, loginStateService,
                              projectListService, stateLocationService) {
    var service = {
      attributes: attributesService.getAllAttributes,
      cancelAddProject: cancelAddProject,
      changeMode: changeMode,
      createProject: createProject,
      currentMode: currentMode,
      editMode: editMode,
      getProjectData: getProjectData,
      getAttributes: getAttributes,
      getProjectAttributes: attributesService.getProjectAttributes,
      getProjectDataFromLocation: getProjectDataFromLocation,
      hideDetails: hideDetails,
      initService: initService,
      jumpToAtachFile: jumpToAtachFile,
      jumpToAddForm: jumpToAddForm,
      jumpToNewProject: jumpToNewProject,
      newProject: newProject,
      printValue: attributesService.printValue,
      RestoreState: RestoreState,
      saveProject: saveProject,
      SaveState: SaveState,
      setProjectData: setProjectData,
      showDetails: showDetails,
      showEditSuccess: showEditSuccess,
      stateParams: $stateParams,
      viewUrl: $state.current.data ? $state.current.data.viewUrl : "",
    };
    
    service.RestoreState();
    if (typeof service.getProjectAttributes() == "undefined" && service.restoredParams) {
      service.getProjectData(service.restoredParams);
    }
    
    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);
    //$rootScope.$on("$locationChangeSuccess", service.getProjectDataFromLocation);
    
    function cancelAddProject() {
      $state.go("select");
    }

    function changeMode(mode) {
      if (!mode) {
        $state.go("project.detail", {projectID: service.projectID});
      }
      else {
        $state.go(mode, {projectID: service.projectID});
      }
    }
    
    function createProject() {
      var formData = attributesService.getFormData('description', []);
      /* null out project attributes and get csrf token */
      $http.get("getProjectAttributes/0")
        .then(function(result) {
          service.setProjectData(result);
          delete formData.projectID;
          var request = {
            method: "POST",
            url: "/projectCreate",
            headers: {
              "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
            },
            data: jQuery.param(formData, true)
          };
          $http(request)
            .then(service.jumpToNewProject);
        });
    };

    function currentMode() {
      if ($state.current.name == "project.detail") {
        return "view";
      }
      return $state.current.name.substring(8);
    }
    
    function editMode() {
      if ($state.current.name.indexOf("edit") > -1) {
        return true;
      }
      return false;
    }
    
    function getAttributes() {
      return service.attributes;
    }
    
    function getProjectData(params) {
      if (parseInt(params.projectID) > -1) {
        $http.get("getProjectAttributes/" + params.projectID)
          .then(function(result) {
            service.setProjectData(result, params);
        });
      }
    }
    
    function getProjectDataFromLocation() {
      var state = stateLocationService.getStateFromLocation();
      if ("projectID" in state.params && state.params.projectID != service.projectID) {
        service.projectID = state.params.projectID;
        service.getProjectData(state.params);
        projectListService.setProjectID(service.projectID);
      }
    }

    function hideDetails(tableName, keys) {
      var selected = attributesService.updateProjAttrsFromRawItem(tableName, keys);
      if (loginStateService.canEditProjects()) {
        $state.go("project." + tableName + ".edit", {projectID: $state.params.projectID});
      }
      else {
        $state.go("project.detail", {projectID: $state.params.projectID});
      }
    }

    function initService() {
      // Make sure the project list is ready and $stateParams contains a projectID
      if (!projectListService.hasProjects()) {
        projectListService.updateAllProjects();
      }

      var projectID;
      var masterList = projectListService.getMasterList();
      var selectedIds = masterList.selectedIds;
      var oldProjectID = masterList.projectID;

      if (!$stateParams.projectID) {
        getProjectDataFromLocation();
        //projectID = stateLocationService.getStateFromLocation().params.projectID;
        if (!service.projectID) {
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
      //projectListService.setProjectID(projectID, selectedIds);

      $stateParams.projectID = projectID;

      if (!service.projectID || service.projectID != projectID) {
        service.getProjectData($stateParams);
      }
    }

    function jumpToAtachFile() {
      $state.go("project.attach", {projectID: service.projectID});
    };
    
    function jumpToAddForm(tableName, keys) {
      attributesService.updateProjAttrsFromRawItem(tableName, keys);
      if (_.contains(["comment"], tableName)) {
        $state.go("project." + tableName + ".edit", {projectID: $state.params.projectID});
      }
      $state.go("project.add." + tableName, {projectID: $state.params.projectID});
    };

    function jumpToNewProject(result) {
      service.setProjectData(result);
      projectListService.updateAllProjects(result.data.projectID);
      $state.go("project.description.edit", {projectID: result.data.projectID});
    }

    function newProject() {
      attributesService.newProjectAttributes();
      $state.go("select.addProject");
    }
    
    function RestoreState() {
      if (typeof sessionStorage.projectDataServiceAttributes != "undefined") {
        service.restoredParams = angular.fromJson(sessionStorage.projectDataServiceAttributes);
      }
    };

    function saveProject(tableName, keys) {
      var formData = attributesService.getFormData(tableName, keys);
      var projectID = $state.params.projectID ? $state.params.projectID : "";
      var request = {
        method: "POST",
        url: "/projectEdit/" + $state.params.projectID + "/" + tableName,
        headers: {
          "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
        },
        data: jQuery.param(formData, true)
      };
      $http(request)
        .then(service.setProjectData);
      service.noCheck = true;
      $state.go("project." + tableName + ".edit", {projectID: $state.params.projectID, noCheck: true});
    };

    function SaveState() {
      sessionStorage.projectDataServiceAttributes = angular.toJson($stateParams);
    };
      
    function setProjectData(result, params) {
      //return;
      attributesService.updateProjectAttributes(result, params);
      service.projectID = result.data.projectID;
      service.success = result.data.success;
      service.SaveState();
      attributesService.SaveState();
    }

    function showDetails(tableName, keys) {
      var selected = attributesService.updateProjAttrsFromRawItem(tableName, keys);
      if (tableName == 'comment') {
        $state.go("project.comment.edit.detail", 
                  {projectID: service.projectID, commentID: selected.commentID});
      }
      if (tableName == 'disposition') {
        $state.go("project.disposition.edit.detail", 
                  {projectID: service.projectID, disposedInFY: selected.disposedInFY.id,
                   disposedInQ: selected.disposedInQ.id});
      }
    }

    function showEditSuccess() {
      return Boolean(_.contains(projectForm.classList, "ng-pristine") && service.success);
    }

    service.SaveState();
    return service;
  }

}());

(function() {
  
  "use strict";
  
  angular
    .module("app.project")
    .factory("projectListService", ProjectListService);
    
  ProjectListService.$inject = ['$rootScope', '$http', '$state', '$stateParams', '$location'];
  
  function ProjectListService($rootScope, $http, $state, $stateParams, $location) {
    var service = {
      allProjectsCount: allProjectsCount,
      getAllProjectResults: getAllProjectResults,
      getIDListFromAllProjects: getIDListFromAllProjects,
      getMasterList: getMasterList,
      getProjectID: getProjectID,
      getSelectedIds: getSelectedIds,
      getSql: getSql,
      hasProjects: hasProjects,
      initModel: initModel,
      jumpToProject: jumpToProject,
      jumpToProjectInList: jumpToProjectInList,
      resetList: resetList,
      RestoreState: RestoreState,
      SaveState: SaveState,
      selectedIdsCount: selectedIdsCount,
      setDescription: setDescription,
      setList: setList,
      setSql: setSql,
      updateAllProjects: updateAllProjects,
      setProjectID: setProjectID
    };
  
    service.RestoreState();
    if (typeof(service.masterList) == "undefined") {
      service.initModel();
    } 

    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);
    
    return service;    

    function allProjectsCount() {
      return service.getMasterList().allProjects.length;
    }

    function getAllProjectResults(results, projectID) {
      if (typeof projectID == "undefined") {
        var projectID = service.masterList.projectID;        
      }
      service.masterList.allProjects = results.data;
      var projectIDList = service.getIDListFromAllProjects();
      if (typeof projectID == "undefined" || projectID < 0) {
        projectID =  projectIDList[0];
      }
      setProjectID(projectID, projectIDList);
    };
    
    function getIDListFromAllProjects() {
      return _.map(service.masterList.allProjects, function(item) {
        return item.projectID;});
    };

    function getMasterList() {
      return service.masterList;
    };

    function getProjectID() {
      return service.masterList.projectID;
    }
    
    function getSelectedIds() {
      return service.masterList.selectedIds;
    }

    function getSql() {
      return service.masterList.sql;
    }
    
    function hasProjects() {
      return Boolean(service.allProjectsCount() > 0);
    }
    
    function initModel( ){
      service.masterList = {
        allProjects: [],
        description: "",
        sql: "",
        index: -1,
        next: -1,
        previous: -1,
        projectID: -1,
        projectName: "",
        selectedIds: []
      };
    };

    function jumpToProject(projectID) {
      projectID = parseInt(projectID);
      var index = service.masterList.selectedIds.indexOf(projectID);
      if (service.masterList.selectedIds.indexOf(projectID) > -1) {
        service.jumpToProjectInList(projectID, service.masterList.selectedIds);
        return;
      }
      var projectIDlist = service.getIDListFromAllProjects();
      if (projectIDlist.indexOf(projectID) > -1) {
        service.jumpToProjectInList(projectID, projectIDlist);
        return;
      }
      alert("Can't find a project to display.");
    };
    
    function jumpToProjectInList(projectID, selectedIds) {
      var index = selectedIds.indexOf(projectID);
      service.masterList.index = index;
      service.masterList.projectID = projectID;
      if (index > 0) {
        service.masterList.previous = selectedIds[index-1];
      }
      else {
        service.masterList.previous = -1;
      }
      if (index < selectedIds.length) {
        service.masterList.next = selectedIds[index+1];
      }
      else {
        service.masterList.next = -1;
      }
      var projectIDList = service.getIDListFromAllProjects();
      index = projectIDList.indexOf(projectID);
      service.masterList.projectName = service.masterList.allProjects[index].name;
      $state.go('project.detail', {projectID: projectID});
    };

    function resetList() {
      service.updateAllProjects();
      service.setList(service.getIDListFromAllProjects());
      service.setDescription("none");
      service.setSql("");
    }

    function RestoreState() {
        service.masterList = angular.fromJson(sessionStorage.projectListService);
    };

    function SaveState() {
        sessionStorage.projectListService = angular.toJson(service.masterList);
    };

    function selectedIdsCount() {
      return service.masterList.selectedIds.length;
    }
    
    function setDescription(description) {
      service.masterList.description = description;
    };
    
    function setList(selectedIds) {
      service.masterList.selectedIds = selectedIds;
      var index = selectedIds.indexOf(service.masterList.projectID);
      if (index < 0) {
        var projectID = selectedIds[0];
        service.setProjectID(projectID, selectedIds);
      }
    }

    function setSql(sqlObj) {
      service.masterList.sql = sqlObj;
    }
      
    function updateAllProjects(projectID) {
      $http.post('/getBriefDescriptions')
        .then(function(results) {
          service.getAllProjectResults(results, projectID);
        });
    };
    
    function setProjectID(projectID, selectedIds) {
      if (projectID) {
        if (typeof selectedIds == "undefined") {
          selectedIds = service.masterList.selectedIds;
        }
        service.masterList.projectID = projectID;
        var index = selectedIds.indexOf(projectID);
        if (index > -1) {
          service.masterList.index = index;
          if (index > 0) {
            service.masterList.previous = selectedIds[index-1];
          } 
          else {
            service.masterList.previous = -1;
          }
          if (index < selectedIds.length) {
            service.masterList.next = selectedIds[index+1];
          }
          else {
            service.masterList.next = -1;
          }
          if (typeof(service.masterList.selectedIds[0]) == "undefined") { /* ?? */
            service.masterList.selectedIds = selectedIds;
          }
        }
        _.each(service.masterList.allProjects, function(proj){
          if (proj.projectID == projectID) {
            service.masterList.projectName = proj.name;
          }
        });
      }
      service.SaveState();
    };
  }
    
}());

(function() {

  /**
   *  @module app.report
   *  @desc   a module for the Report tab of the application
   */  

  angular
    .module("app.report", [
        "ui.router",            /** angular-ui-router */
        "datatables",           /** angular-datatables, depends on jQuery DataTables */
        "datatables.bootstrap"  /** angular-datatables Bootstrap module */
      ]);
  
}());

(function() {
  
  /**
   *  @name reportConfig
   *  @desc Configuration for app.report module
   */
  
  "use strict";
  
  angular
    .module("app.report")
    .config(reportConfig);
   
  reportConfig.$inject = ['$stateProvider'];
  
  function reportConfig($stateProvider) {
    $stateProvider
      .state("report", {
        /** virtual root state */
        url: "/report",
        controller: "Report",
        controllerAs: "report",
        templateUrl: "/static/report/report.html",
        data: {
          requiresLogin: false
        }
      })
      .state("report.columns", {
        /** state for the Select Other Columns view */
        url: "/columns/:query_string",
        templateUrl: "/static/report/templates/columns.html",
        controller: ['$stateParams', function ($stateParams) {
          console.log($stateParams);
        }]
      })
      .state("report.table", {
        /** state for the View Project List as Table view */
        url: "/:query_string",
        templateUrl: "/static/report/templates/table.html",
        controller: ['$stateParams', function ($stateParams) {
          console.log($stateParams);
        }],
        /** service initialization */
        onEnter: ['reportTableService', function(reportTableService) {
            reportTableService.initService();
          }
        ]
      });
  }
  
}());

(function() {
  
  /**
   *  @name Report
   *  @desc A controller for the states and views associated with the Report tab
   */
  
  "use strict";
  
  angular
    .module("app.report")
    .controller("Report", Report);
  
  Report.$inject = ['$state', '$stateParams', 'projectListService', 'reportTableService'];
  
  function Report($state, $stateParams, projectListService, reportTableService) {
    
    this.ls = projectListService;
    this.masterList = this.ls.getMasterList;
    this.jumpToProject = this.ls.jumpToProject;

    this.ts = reportTableService;
    this.state = $state;

  }
  
}());

(function() {

  /**
   *  @name reportTableService
   *  @desc A factory for the service that manages the data associated with the
   *        projects DataTable under the Report tab. The service retrieves and
   *        stores the data shown in the table as well as the options and column
   *        definitions for the table. Key data in the "master" service
   *        attribute are saved after being updated and restored from client
   *        session storage when the factory is re-instantiated.
   */

  "use strict";
  
  angular
    .module('app.report')
    .factory('reportTableService', ReportTableService);
    
  ReportTableService.$inject = ['$compile', 'DTColumnBuilder', 'DTInstances', 'DTOptionsBuilder', '$http', '$location', 'projectListService', '$rootScope', '$stateParams'];
  
  function ReportTableService($compile, DTColumnBuilder, DTInstances, DTOptionsBuilder, 
                              $http, $location, projectListService, $rootScope, $stateParams) {

    /** service to be returned by factory */
    var service = {
      createdRow: createdRow,
      projectCount: projectCount,
      getReportResults: getReportResults,
      getReportTableData: getReportTableData,
      initService: initService,
      projectIDColumn: {data: "projectID",
                        title: "ID",
                        render: jumpToProjectLink,
                        defaultContent: ""},
      RestoreState: RestoreState,
      SaveState: SaveState,
      scope: $rootScope.$new(), // http://stackoverflow.com/questions/17600905/compile-directives-via-service-in-angularjs#comment41413717_17601350
      setReportResults: setReportResults,
      setReportTableData: setReportTableData,
      tableColumns: tableColumns,
      master: {
        dtColumns: [{data: "projectID",
                        title: "ID",
                        render: jumpToProjectLink,
                        defaultContent: ""},
                    {data: "name", title: "Name"},
                    {data: "description", title: "Description"},
                    {data: "maturityID", title: "Maturity"},
                    {data: "driverID", title: "Driver"}],
        dtInstance: {},
        dtOptions: {}
      },
    };
    
    service.RestoreState();
    
    $rootScope.$on("savestate", service.SaveState);
    $rootScope.$on("restorestate", service.RestoreState);

    /**
     *  @name createdRow
     *  @desc A jQuery/angular DataTable callback, called on a row after it is
     *        created. We use it to $compile it, to activate angular directives
     *        like sref-ui.
     *  @param {Object} row - a DataTable row object
     *  @param {Object} data - the data for the row columns, passed in via ajax
     *  @param {number} dataIndex - the DataTable row number
     */
    function createdRow(row, data, dataIndex) {
      $compile(angular.element(row).contents())(service.scope);
    }

    /**
     *  @name getReportResults
     *  @desc Send an http GET query string to the backend and retrieve 
     */
    function getReportResults(query_string) {
      var request = {
        method: "POST",
        url: "/getReportResults",
        data: {query_string: encodeURIComponent(query_string),
               tableColumns: service.tableColumns()}
      };
      $http(request)
        .then(service.setReportResults);
    }

    /**
     *  @name getReportTableData
     *  @desc Send an array of projectIDs to the backend and retrieve data for 
     *        populating the DataTable. It returns the same row data as 
     *        getReportResults, along with a list of projectIDs extracted from 
     *        the results, a rendering of the input query string used as the url 
     *        for the table, and a string to describe the query in human-readable 
     *        terms.
     *  @param {string} query_string - an http GET query string
     */
    function getReportTableData() {
      var request = {
        method: "POST",
        url: "/getReportTableJSON",
        data: {projectID: projectListService.getSelectedIds(),
               tableColumns: service.tableColumns()}
      };
      $http(request)
        .then(service.setReportTableData);
    }
    
    /**
     *  @name initService
     *  @desc called onEnter from reportConfig.js to ensure that data for the
     *        report are obtained from the backend.
     */
    function initService() {
      if (!projectListService.hasProjects()) {
        projectListService.updateAllProjects();
      }
      var state_query = $stateParams.query_string;
      var saved_query = projectListService.getSql();
      if (state_query && state_query != saved_query) {
        service.getReportResults(state_query);
      }
      else if (!state_query && saved_query) {
        service.getReportResults(saved_query)
      }
      else if (state_query == "" && service.projectCount() != projectListService.allProjectsCount()) {
        service.getReportResults(state_query);
      }
      else if (service.projectCount() == 0) {
        service.getReportResults(state_query);
      }
    }

    /**
     *  @name jumpToProjectLink
     *  @desc a jQuery/angular DataTable column rendering function, used to
     *        populate the projectID column with a link for changing state_query
     *        to view the project on this table row (after being compiled by
     *        function createdRow)
     *  @param {number} data - projectID value for this cell
     *  @param {string} type - DataTable flag for the type of rendering to do
     *  @param {Object} full = a data object with values for all columns in row
     *  @param {Object} meta = a data object with column and row indices for cell
     */
    function jumpToProjectLink( data, type, full, meta ) {
      return '<a ui-sref="project.detail({projectID: ' + data + '})">' + data + '</a>';
    }

    /**
     *  @name projectCount
     *  @desc return the number of data rows in the DataTable
     */
    function projectCount() {
      try {
        return service.master.dtOptions.data.length;
      }
      catch (e) {
        return 0;
      }
    }
    
    /**
     *  @name RestoreState
     *  @desc restore the service.master object from client session storage
     *        Special care is taken to restore the functions lost in JSON
     */
    function RestoreState() {
      if (typeof sessionStorage.reportTableService != "undefined") {
        var master = angular.fromJson(sessionStorage.reportTableService);

        // render function gets lost in conversion to JSON and needs to be replaced
        service.master.dtColumns = master.dtColumns;
        service.master.dtColumns[0] = service.projectIDColumn; 

        // createdRow option function gets lost in converstion to JSON
        service.master.dtOptions = master.dtOptions;
        service.master.dtOptions.createdRow = service.createdRow;
      }
    }
    
    /**
     *  @name SaveState
     *  @desc save the service.master object in client session storage
     *        Functions will be lost in the conversion to JSON.
     */
    function SaveState() {
      sessionStorage.reportTableService = angular.toJson(service.master);
    }

    function setReportResults(response) {
      projectListService.setList(response.data.projectList);
      projectListService.setDescription(response.data.query_desc);
      projectListService.setSql(response.data.query_string);
      projectListService.SaveState();
      setReportTableData(response);
      service.master.dtInstance.rerender();
      service.SaveState();
    }

    function setReportTableData(response) {
      service.master.dtOptions = DTOptionsBuilder.newOptions().withBootstrap();
      _.each(Object.keys(response.data.options), function(key) {
         service.master.dtOptions.withOption(key, response.data.options[key]);
      });
      service.master.dtOptions.withOption("createdRow", createdRow);
      service.master.dtColumns = [service.projectIDColumn].concat(response.data.columns);
      service.master.dtOptions.data = response.data.data;
      //service.master.dtInstance.rerender();
      var path = $location.path().split("/");
      path.pop();
      path.push(response.data.query_string)
      //$location.url(path.join("/"));
      service.SaveState();
    }

    /**
     *  @name tableColumns
     *  @desc Return a list of column names by extracting the "data" attribute
     *        from each item in the dtColumns list. 
     *  @returns {string[]} 
     */
    function tableColumns() {
      return _.pluck(service.master.dtColumns, "data");
    }
    
    service.SaveState();
    return service;
  }
      
}());
(function() {
  
  angular
    .module("app.select", [
      "ui.router", 
      'readMore'
    ]);
  
}());

(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .config(selectConfig);
  
  selectConfig.$inject = ['$stateProvider'];
  
  function selectConfig($stateProvider) {
    $stateProvider
      .state("select", {
        url: "/select",
        controller: "Select",
        controllerAs: "select",
        templateUrl: "/static/select/select.html",
        data: {
          requiresLogin: false
        },
        onEnter: ['selectStateService', function(selectStateService) {
            selectStateService.initService();
          }
        ]
      })
      .state("select.addProject", {
        url: "/addProject",
        controller: "Select",
        controllerAs: "select",
        data: {
          requiresLogin: true
        }
      });
  };
  
}());

(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .controller("Select", Select);
  
  Select.$inject = ['$scope', '$state', 'projectListService', 'selectStateService', 'projectDataService', 'modalConfirmService'];
  
  function Select($scope, $state, projectListService, selectStateService, 
                  projectDataService, modalConfirmService) {
    
    this.state = $state;
    
    this.ls = projectListService;
    this.masterList = this.ls.getMasterList;
    this.jumpToProject = this.ls.jumpToProject;
    
    this.ss = selectStateService;
    this.selectState = selectStateService.getMasterList;
    
    this.ds = projectDataService;

    $scope.$on("$stateChangeStart", function(event, toState, toParams, fromState, fromParams) {
      projectDataService.success = "";
      if ($scope.addProject.$dirty) {
        event.preventDefault();

        var modalOptions = {
            closeText: "Cancel",
            actionText: "Continue",
            headerText: "Unsaved changes",
            bodyText: "You have unsaved changes. Press Continue to discard your changes and" 
                      + " navigate away, or press Cancel to stay on this page."
        };

        modalConfirmService.showModal({}, modalOptions).then(function (result) {
          $scope.addProject.$setPristine();
          $state.go(toState, toParams);
        });
      }
    });
  };
  
}());

(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .filter("nameSearch", nameSearch);
  
  function nameSearch() {
    return function(projects, searchText, nameLogic, finalID) {
      /* return everything if no search string */
      if (!searchText) return projects;

      var projlen = projects.length || 0;
      var st = (searchText || "").toLowerCase();
      var words = st.split(" ");
      var wordslen = words.length;
      var bailout, j;
      
      var out = projects;

      if (finalID == "0") {
        out = _.filter(out, function(project) {
          return project.finalID == "0";
        });
      }
      
      if (nameLogic == "phrase") {
        out = _.filter(out, function(project) {
          return (project.name + " " + project.description).toLowerCase().match(st);
        });
      }
      else if (nameLogic == "and") {
        _.map(words, function(word) {
          out = _.filter(out, function(project) {
            return (project.name + " " + project.description).toLowerCase().match(this);
          }, word);
        });
      }
      else if (nameLogic == "or") {
        var matches = [], partial;
        _.map( words, function(word) {
          partial = _.filter(out, function(project) {
            return (project.name + " " + project.description).toLowerCase().match(this);
          }, word);
          matches = _.union(partial, matches);
        });
        out = _.intersection(out, matches);
      }

      return out;
    };
  };
  
}());

(function() {
  
  "use strict";
  
  angular
    .module("app.select")
    .factory("selectStateService", selectStateService);
  
  selectStateService.$inject = ['$rootScope', '$http', '$state', 'projectListService', 'reportTableService'];
  
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
      
    function clearBreakdown() {
      service.masterList.breakdownAttr = "";
    }

    function clearSearchText() {
      service.masterList.searchText = "";
    }

    function getBreakdownByAttribute() {
      return service.breakdownByAttribute;
    }

    function getBreakdownChoices() {
      return service.breakdownChoicesList;
    }
    
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

    function initService() {
      projectListService.resetList();
    }

    function jumpToBreakdownTable(breakdown_row) {
      projectListService.setList(breakdown_row.projectList);
      projectListService.setDescription(breakdown_row.query_desc);
      projectListService.setSql(breakdown_row.query_string);
      projectListService.SaveState();
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
    
    function setBreakdownByAttribute(result) {
      service.breakdownByAttribute = result.data;
    }

    function setBreakdownChoices(result) {
      service.breakdownChoicesList = result.data;
      service.SaveState();
    }
    
    function updateBreakdownByAttribute() {
      $http.get("getBreakdownByAttribute/" + service.masterList.breakdownAttr.id)
        .then(setBreakdownByAttribute);
    }

    function updateBreakdownChoices() {
      $http.get("getBreakdownChoices")
        .then(setBreakdownChoices);
    }
    
    SaveState();
    return service;    
  };
  
}());

(function(){

  angular
    .module("app.stateLocation", ["ui.router"]);

}());

(function() {
  
  "use strict";
  
  angular
    .module("app.stateLocation")
    .factory("sessionService", SessionService);
  
  function SessionService() {
    var service = {
      setStorage: setStorage,
      getStorage: getStorage,
      clear: clear,
      stateHistory: stateHistory,
      accessor: accessor
    };
    
    return service;
    
    function setStorage(key, value) {
      var json = value === void 0 ? null : JSON.stringify(value);
      return sessionStorage.setItem(key, json);
    };
    
    function getStorage(key) {
      return JSON.parse(sessionStorage.getItem(key));
    };
    
    function clear() {
      var results = [];
      for (key in sessionStorage) {
        results.push(service.setStorage(key, null));
      }
      return results;
    };
    
    function stateHistory(value) {
      if (value == null) {
        value = null;
      }
      return service.accessor("stateHistory", value);
    };
    
    function accessor(name, value) {
      if (value == null) {
        return service.getStorage(name);
      }
      return service.setStorage(name, value);
    };
    
  };
  
}());

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

(function() {
  
  "use strict";
  
  angular
    .module("app.stateLocation")
    .run(stateLocationRun);
  
  stateLocationRun.$inject = ['$rootScope', '$state', 'stateLocationService'];

  function stateLocationRun($rootScope, $state, stateLocationService) {
    $rootScope.$on('$stateChangeSuccess', function(event, toState, toParams) {
      stateLocationService.stateChange();
    });

    $rootScope.$on('$locationChangeSuccess', function() {
      stateLocationService.locationChange();
    });
  }
  
}());

(function() {
  
  "use strict";
  
  angular
    .module("app.stateLocation")
    .factory("stateLocationService", stateLocationService);
  
  stateLocationService.$inject = ['$rootScope', '$location', '$state', '$stateParams', '$urlMatcherFactory', 'stateHistoryService', 'projectListService'];
 
  function stateLocationService($rootScope, $location, $state, $stateParams, 
                                $urlMatcherFactory, stateHistoryService, projectListService){
    var service = {
      preventCall: [],
      locationChange: locationChange,
      getCurrentState: getCurrentState,
      getStateFromLocation: getStateFromLocation,
      saveState: saveState,
      stateChange: stateChange,
      saveCurrentState: saveCurrentState,
      guid: guid,
      s4: s4
    };
    
    window.onbeforeunload = function (event) {
      $rootScope.$broadcast('savestate');
    };
  
    return service;
    
    function getCurrentState() {
      return angular.fromJson(sessionStorage.currentState);
    }
    
    function locationChange() {
      if (service.preventCall.pop('locationChange') != null) {
        return;
      }
      var location = $location.url();
      var entry = stateHistoryService.get(location);
      if (entry == null) {
        return; //entry = service.getStateFromLocation();
      }
      if ("projectID" in entry.params) {
        projectListService.setProjectID(entry.params.projectID);
      }
      service.preventCall.push("stateChange");
      $state.go(entry.name, entry.params, {location: false});
    };
    
    function getStateFromLocation() {
      var state = new Object;
      state.params = new Object;
      var path = $location.path().split("/").reverse();
      path.pop();
      var base = path.pop();
      if (base == "project") {
        var projectID;
        var commentID;
        var disposedInFY;
        var disposedInQ;
        if (_.last(path) == "comment" && path[1] == "detail") {
          state.name = "project.comment.edit.detail";
          state.params.commentID = parseInt(path[0]);
          state.params.projectID = parseInt(path[2]);
        }
        else if (_.last(path) == "disposition" && path[2] == "detail") {
          state.name = "project.disposition.edit.detail";
          state.params.projectID = parseInt(path[3]);
          state.params.disposedInFY = parseInt(path(1));
          state.params.disposedInQ = parseInt(path(0));
        }
        else if (path.length == 1) {
          state.name = "project.detail";
          state.params.projectID = parseInt(path[0]);
        }
        else {
          state.name = ["project", path[2], path[1]].join(".");
          state.params.projectID = parseInt(path[0]);
        }
      }
      else if (base == "report") {
        if (path[1] == "columns") {
          state.name = "report.columns";
          state.params.query_string = path[0]
        }
        else {
          state.name = "report.table";
          state.params.query_string = path[0];
        }
      }
      else {
        state.name = [base].concat(path).join(".");
      }
      return state;
    }
    
    function stateChange() {
      if (service.preventCall.pop("stateChange") != null){
        return;
      }
      if (!$state.current.name) {
        return;
      }
      var url = getUrlFromState();
      var entry = {
        "name": $state.current.name,
        "params": $stateParams
      };
      stateHistoryService.set(url, entry);
      service.preventCall.push('locationChange');
      $location.url(url);
    }
    
    function getUrlFromState() {
      var url = $state.href($state.current, $state.params);
      if (url[0] == "#") {
        url = url.substring(1);
      }
      var hash = service.guid().substr(0, 8);
      
      var tab = _.first($state.current.name.split("."));
      if (tab == 'project') {
        url = $location.hash(hash);
      }
      else if (tab == "report") {
        url = $location.hash(hash);
      }
      if (typeof url == "object") {
        return url.url();
      }
      else if (typeof url == "string") {
        return url;
      }
    }
    
    function saveCurrentState() {
      if ($state.current.name) {
        var entry = {
          "name": $state.current.name,
          "params": $state.params
        };
        sessionStorage.currentState = angular.toJson(entry);
      }
    }
    
    function saveState() {
      if ($state.current.name) {
        var entry = {
          "name": $state.current.name,
          "params": $state.params
        };
        var url = $location.url();
        stateHistoryService.set(url, entry);
      }
     }
    
    function guid() {
      return "" + (service.s4()) + (service.s4()) + "-" + (service.s4()) + "-" + (service.s4()) + "-" + (service.s4()) + "-" + (service.s4()) + (service.s4()) + (service.s4());
    };
    
    function s4() {
      return Math.floor((1 + Math.random()) * 0x10000).toString(16).substring(1);
    }
  };
  
}());

(function() {
  
  angular
    .module("app.title", ['ui.router']);
  
}());

(function() {
  
  "use strict";
  
  angular
    .module("app.title")
    .controller("Title", Title);
  
  Title.$inject = ['$scope', '$state', 'projectListService'];
  
  function Title($scope, $state, projectListService){
    var vm = this;
    
    this.masterList = projectListService.getMasterList;
    this.pageTitle = "PPT: Select";
    
    $scope.$on("$stateChangeSuccess", function(e, toState){
      if (toState.name.split(".")[0] == "select") {
        vm.pageTitle = "PPT: Select";
      }
      else if (toState.name.split(".")[0] == "filter") {
        vm.pageTitle = "PPT: Filter Builder";
      }
      else if (toState.name.split(".")[0] == "report") {
        vm.pageTitle = "PPT: Report";
      }
      else if (toState.name.split(".")[0] == "project") {
        vm.pageTitle = vm.masterList().projectID + ". " + vm.masterList().projectName;
      }  
      else if (toState.name.split(".")[0] == "comment") {
        vm.pageTitle = "PPT: Comments";
      }
      else if (toState.name.split(".")[0] == "curate") {
        vm.pageTitle = "PPT: Curate";
      }
      else if (toState.name.split(".")[0] == "manage") {
        vm.pageTitle = "PPT: Manage";
      }
      else {
        vm.pageTitle = "PPT: Select";
      }      
    });

  }

}());
