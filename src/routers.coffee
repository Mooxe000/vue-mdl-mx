module.exports = (router) ->

  Layout = require './component/Layout/main.vue'

  router.map

    '/about':
      name: 'about'
      component: Layout

    '/started':
      name: 'started'
      component: Layout

    '/templates':
      name: 'templates'
      component: Layout

    '/components':
      name: 'components'
      component: Layout

    '/styles':
      name: 'styles'
      component: Layout

    '/customize':
      name: 'customize'
      component: Layout

    '/showcase':
      name: 'showcase'
      component: Layout

    '/faq':
      name: 'faq'
      component: Layout

    'test':
      name: 'test'
      component: Layout

  router.alias

    '/': 'about'

  router.redirect

    '*': '/'
