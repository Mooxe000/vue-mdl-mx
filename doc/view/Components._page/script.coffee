echo = -> console.log arguments
_ = require 'lodash'

prefix = '../../../src/components'
postfix = 'README.md'

doc =
  badges: require '../../../src/components/badges/README.md'
  buttons: require '../../../src/components/buttons/README.md'
  cards: require '../../../src/components/cards/README.md'
  dialogs: require '../../../src/components/dialogs/README.md'
  layout:
    footer: require '../../../src/components/layout/footer/README.md'
    grid: require '../../../src/components/layout/grid/README.md'
    navigation: require '../../../src/components/layout/navigation/README.md'
    tabs: require '../../../src/components/layout/tabs/README.md'
  lists: require '../../../src/components/lists/README.md'
  loading:
    progress: require '../../../src/components/loading/progress/README.md'
    spinner: require '../../../src/components/loading/spinner/README.md'
  menus: require '../../../src/components/menus/README.md'
  sliders: require '../../../src/components/sliders/README.md'
  snackbar: require '../../../src/components/snackbar/README.md'
  tables: require '../../../src/components/tables/README.md'
  textfields: require '../../../src/components/textfields/README.md'
  toggles:
    checkbox: require '../../../src/components/toggles/checkbox/README.md'
    icontoggle: require '../../../src/components/toggles/icontoggle/README.md'
    radio: require '../../../src/components/toggles/radio/README.md'
    switch: require '../../../src/components/toggles/switch/README.md'
  tooltips: require '../../../src/components/tooltips/README.md'

module.exports =

  route:
    data: (transition) ->
      routeName = transition.to.name
      transition.next
        docs: do ->
          r = ''
          compName = routeName.split '.'
          obj =
            if (compName.length is 2) and doc[compName[1]]?
            then doc[compName[1]]
            else null
          if obj?
            if _.isString obj
              r = obj
            else if _.isObject obj
              for k, v of obj
                r += v
            else
              transition.redirect '/components'
          else
            transition.redirect '/components'
          r

  data: ->
    docs: ''
