experiment = ->
  restrict: 'EA'
  replace: true
  require: '^category'
  templateUrl: 'experiment.html'
  scope:
    name: '@'

angular
  .module 'playground'
  .directive 'experiment', experiment