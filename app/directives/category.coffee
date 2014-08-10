category = ->
  restrict: 'EA'
  replace: true
  templateUrl: 'category.html'
  transclude: true
  scope:
    name: '@'


angular
  .module 'playground'
  .directive 'category', category