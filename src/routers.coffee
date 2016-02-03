module.exports = (router) ->

  Comp =
    Layout: require './App/Layout/main.vue'
    About: require './view/About/main.vue'
    Started: require './view/Started/main.vue'
    Templates: require './view/Templates/main.vue'
    Components:
      Root: require './view/Components/main.vue'
      Index: require './view/Components._index/main.vue'
      Badges: require './view/Components.Badges/main.vue'
      Buttons: require './view/Components.Buttons/main.vue'
      Cards: require './view/Components.Cards/main.vue'
      Layout: require './view/Components.Layout/main.vue'
      Loading: require './view/Components.Loading/main.vue'
      Menus: require './view/Components.Menus/main.vue'
      Sliders: require './view/Components.Sliders/main.vue'
      Tables: require './view/Components.Tables/main.vue'
      TextFields: require './view/Components.TextFields/main.vue'
      Toggles: require './view/Components.Toggles/main.vue'
      Tooltips: require './view/Components.Tooltips/main.vue'
    Styles: require './view/Styles/main.vue'
    Customize: require './view/Customize/main.vue'
    Showcase: require './view/Showcase/main.vue'
    FAQ: require './view/FAQ/main.vue'

  router.map

    '/':
      name: 'layout'
      component: Comp.Layout

      subRoutes:

        'about':
          name: 'about'
          component: Comp.About

        'started':
          name: 'started'
          component: Comp.Started

        'templates':
          name: 'templates'
          component: Comp.Templates

        'components':
          name: 'components'
          component: Comp.Components.Root

          subRoutes:

            '':
              name: 'components.index'
              component: Comp.Components.Index

            'badges':
              name: 'components.badges'
              component: Comp.Components.Badges

            'buttons':
              name: 'components.buttons'
              component: Comp.Components.Buttons

            'cards':
              name: 'components.cards'
              component: Comp.Components.Cards

            'layout':
              name: 'components.layout'
              component: Comp.Components.Layout

            'loading':
              name: 'components.loading'
              component: Comp.Components.Loading

            'menus':
              name: 'components.menus'
              component: Comp.Components.Menus

            'sliders':
              name: 'components.sliders'
              component: Comp.Components.Sliders

            'tables':
              name: 'components.tables'
              component: Comp.Components.Tables

            'textfields':
              name: 'components.textfields'
              component: Comp.Components.TextFields

            'toggles':
              name: 'components.toggles'
              component: Comp.Components.Toggles

            'tooltips':
              name: 'components.tooltips'
              component: Comp.Components.Tooltips

        'styles':
          name: 'styles'
          component: Comp.Styles

        'customize':
          name: 'customize'
          component: Comp.Customize

        'showcase':
          name: 'showcase'
          component: Comp.Showcase

        'faq':
          name: 'faq'
          component: Comp.FAQ

        'test':
          name: 'test'
          component: require './view/Started/main.vue'

  router.alias

    '/': 'about'

  router.redirect

    '*': '/'
