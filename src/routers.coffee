module.exports = (router) ->

  router.map

    '/about':
      name: 'about'
      component: require './view/About/main.vue'

    '/started':
      name: 'started'
      component: require './view/Started/main.vue'

    '/templates':
      name: 'templates'
      component: require './view/Templates/main.vue'

    '/components':
      name: 'components'
      component: require './view/Components/main.vue'

    '/styles':
      name: 'styles'
      component: require './view/Styles/main.vue'

    '/customize':
      name: 'customize'
      component: require './view/Customize/main.vue'

    '/faq':
      name: 'faq'
      component: require './view/FAQ/main.vue'

    'test':
      name: 'test'
      component: require './component/Layout/main.vue'
      # component: require './component/header/main.vue'

  router.alias

    '/': 'about'

  router.redirect

    '*': '/'
