module.exports = (router) ->

  router.map

    '/about':
      name: 'about'
      component: require './module/About/main.vue'

    '/started':
      name: 'started'
      component: require './module/Started/main.vue'

    '/templates':
      name: 'templates'
      component: require './module/Templates/main.vue'

    '/components':
      name: 'components'
      component: require './module/Components/main.vue'

    '/styles':
      name: 'styles'
      component: require './module/Styles/main.vue'

    '/customize':
      name: 'customize'
      component: require './module/Customize/main.vue'

    '/faq':
      name: 'faq'
      component: require './module/FAQ/main.vue'

  router.alias

    '/': 'about'

  router.redirect

    '*': '/'
