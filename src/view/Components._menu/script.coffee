echo = -> console.log arguments

getBgi = (data) -> "url('#{data}')"
items =
  badges:
    name: 'Badges'
    icon: getBgi require './assets/comp_badges.png'
  buttons:
    name: 'Buttons'
    icon: getBgi require './assets/comp_buttons.png'
  cards:
    name: 'Cards'
    icon: getBgi require './assets/comp_cards.png'
  layout:
    name: 'Layout'
    icon: getBgi require './assets/comp_layout.png'
  loading:
    name: 'Loading'
    icon: getBgi require './assets/comp_loading.png'
  menus:
    name: 'Menus'
    icon: getBgi require './assets/comp_menus.png'
  sliders:
    name: 'Sliders'
    icon: getBgi require './assets/comp_sliders.png'
  tables:
    name: 'Tables'
    icon: getBgi require './assets/comp_tables.png'
  textfields:
    name: 'Text Fields'
    icon: getBgi require './assets/comp_textfields.png'
  toggles:
    name: 'Toggles'
    icon: getBgi require './assets/comp_toggles.png'
  tooltips:
    name: 'Tooltips'
    icon: getBgi require './assets/comp_tooltips.png'

module.exports =

  data: ->
    items: items
    # icon:
    #   Badges:
