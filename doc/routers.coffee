module.exports = (router) ->

  Comp =
    Layout: require './App/Layout/main.vue'
    About: require './view/About/main.vue'
    Started: require './view/Started/main.vue'
    Templates: require './view/Templates/main.vue'

    Components:
      Root: require './view/Components/main.vue'
      Index: require './view/Components._index/main.vue'
      Page: require './view/Components._page/main.vue'

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
              component: Comp.Components.Page

            'buttons':
              name: 'components.buttons'
              component: Comp.Components.Page

            'cards':
              name: 'components.cards'
              component: Comp.Components.Page

            'dialogs':
              name: 'components.dialogs'
              component: Comp.Components.Page

            'layout':
              name: 'components.layout'
              component: Comp.Components.Page

            'lists':
              name: 'components.lists'
              component: Comp.Components.Page

            'loading':
              name: 'components.loading'
              component: Comp.Components.Page

            'menus':
              name: 'components.menus'
              component: Comp.Components.Page

            'sliders':
              name: 'components.sliders'
              component: Comp.Components.Page

            'snackbar':
              name: 'components.snackbar'
              component: Comp.Components.Page

            'toggles':
              name: 'components.toggles'
              component: Comp.Components.Page

            'tables':
              name: 'components.tables'
              component: Comp.Components.Page

            'textfields':
              name: 'components.textfields'
              component: Comp.Components.Page

            'tooltips':
              name: 'components.tooltips'
              component: Comp.Components.Page

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
