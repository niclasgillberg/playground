angular
  .module 'playground'
  .config [
    '$stateProvider',
    '$urlRouterProvider',
    (router, url) ->
      url.otherwise '/'

      router.state 'home',
        url: '/'
        templateUrl: 'home.html'
      .state 'experiment',
        url: '/:category/:id'
        templateUrl: 'experiment-view.html'
        controller: 'ExperimentViewCtrl'
        controllerAs: 'vm'
  ]