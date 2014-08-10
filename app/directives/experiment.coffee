experiment = ->
  restrict: 'EA'
  replace: true
  require: '^category'
  templateUrl: 'experiment.html'
  scope:
    name: '@'
    cat: '@'
    id: '@'

angular
  .module 'playground'
  .directive 'experiment', experiment