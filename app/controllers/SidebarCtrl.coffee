class SidebarCtrl
  constructor: ->
    @categories = [
      name: 'CSS'
      experiments: [
        name: 'Circle'
        path: 'experiments/circle'
      ]
    ]

angular
  .module 'playground'
  .controller 'SidebarCtrl', SidebarCtrl