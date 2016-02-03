echo = -> console.log arguments

module.exports =

  data: ->
    components_menu: 'CompMenu'

  components:
    CompMenu: require '../Components._menu/main.vue'
