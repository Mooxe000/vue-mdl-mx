echo = -> console.log arguments

getBgi = (data) -> "url('#{data}')"
items =
  badges:
    name: 'Badges'
    icon: getBgi require './assets/comp_badges.png'
    class:
      badges: true
      'is-active': false
  buttons:
    name: 'Buttons'
    icon: getBgi require './assets/comp_buttons.png'
    class:
      buttons: true
      'is-active': false
  cards:
    name: 'Cards'
    icon: getBgi require './assets/comp_cards.png'
    class:
      cards: true
      'is-active': false
  layout:
    name: 'Layout'
    icon: getBgi require './assets/comp_layout.png'
    class:
      layout: true
      'is-active': false
  loading:
    name: 'Loading'
    icon: getBgi require './assets/comp_loading.png'
    class:
      loading: true
      'is-active': false
  menus:
    name: 'Menus'
    icon: getBgi require './assets/comp_menus.png'
    class:
      menus: true
      'is-active': false
  sliders:
    name: 'Sliders'
    icon: getBgi require './assets/comp_sliders.png'
    class:
      sliders: true
      'is-active': false
  tables:
    name: 'Tables'
    icon: getBgi require './assets/comp_tables.png'
    class:
      tables: true
      'is-active': false
  textfields:
    name: 'Text Fields'
    icon: getBgi require './assets/comp_textfields.png'
    class:
      textfields: true
      'is-active': false
  toggles:
    name: 'Toggles'
    icon: getBgi require './assets/comp_toggles.png'
    class:
      toggles: true
      'is-active': false
  tooltips:
    name: 'Tooltips'
    icon: getBgi require './assets/comp_tooltips.png'
    class:
      tooltips: true
      'is-active': false

module.exports =

  data: ->
    items: items

  methods:
    toggleTabs: (itemKey, items) ->
      for key, item of items
        if key is itemKey
          unless item.class['is-active'] is true
            item.class['is-active'] = true
        else
          unless item.class['is-active'] is false
            item.class['is-active'] = false
      items
