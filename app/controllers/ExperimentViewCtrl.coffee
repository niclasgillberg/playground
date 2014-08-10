class ExperimentViewCtrl
  constructor: (params) ->
    @path = "experiments/#{params.category}/#{params.id}"

ExperimentViewCtrl.$inject = ['$stateParams']

angular
  .module 'playground'
  .controller 'ExperimentViewCtrl', ExperimentViewCtrl