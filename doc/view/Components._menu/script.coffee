echo = -> console.log arguments

getBgi = (data) -> "url('#{data}')"
setClass = (items) ->
  for k, v of items
    obj = {}
    obj[k] = true
    obj['is-active'] = false
    items[k].class = obj
  items
items = setClass
  badges:
    name: 'Badges'
    icon: getBgi require './assets/comp_badges.png'
  buttons:
    name: 'Buttons'
    icon: getBgi require './assets/comp_buttons.png'
  cards:
    name: 'Cards'
    icon: getBgi require './assets/comp_cards.png'
  dialogs:
    name: 'Dialogs'
    icon: getBgi require './assets/comp_dialog.png'
  layout:
    name: 'Layout'
    icon: getBgi require './assets/comp_layout.png'
  lists:
    name: 'Lists'
    icon: getBgi require './assets/comp_lists.png'
  loading:
    name: 'Loading'
    icon: getBgi require './assets/comp_loading.png'
  menus:
    name: 'Menus'
    icon: getBgi require './assets/comp_menus.png'
  sliders:
    name: 'Sliders'
    icon: getBgi require './assets/comp_sliders.png'
  snackbar:
    name: 'Snackbar'
    icon: getBgi require './assets/comp_snackbar.png'
  toggles:
    name: 'Toggles'
    icon: getBgi require './assets/comp_toggles.png'
  tables:
    name: 'Tables'
    icon: getBgi require './assets/comp_tables.png'
  textfields:
    name: 'Text Fields'
    icon: getBgi require './assets/comp_textfields.png'
  tooltips:
    name: 'Tooltips'
    icon: getBgi require './assets/comp_tooltips.png'

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
