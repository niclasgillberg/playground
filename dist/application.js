(function(){angular.module("playground",["ui.router"])}).call(this),function(){angular.module("playground").config(["$stateProvider","$urlRouterProvider",function(e,r){return r.otherwise("/"),e.state("home",{url:"/",templateUrl:"home.html"}).state("experiment",{url:"/:category/:id",templateUrl:"experiment-view.html",controller:"ExperimentViewCtrl",controllerAs:"vm"})}])}.call(this),function(){var e;e=function(){function e(e){this.path="experiments/"+e.category+"/"+e.id}return e}(),e.$inject=["$stateParams"],angular.module("playground").controller("ExperimentViewCtrl",e)}.call(this),function(){var e;e=function(){function e(){this.categories=[{name:"CSS",experiments:[{name:"Circle",path:"experiments/circle"}]}]}return e}(),angular.module("playground").controller("SidebarCtrl",e)}.call(this),function(){var e;e=function(){return{restrict:"EA",replace:!0,templateUrl:"category.html",transclude:!0,scope:{name:"@"}}},angular.module("playground").directive("category",e)}.call(this),function(){var e;e=function(){return{restrict:"EA",replace:!0,require:"^category",templateUrl:"experiment.html",scope:{name:"@",cat:"@",id:"@"}}},angular.module("playground").directive("experiment",e)}.call(this);