require './style.styl'

Vue = require 'vue'
VueRouter = require 'vue-router'

app = Vue.extend {}

Vue.use VueRouter

routerMap = require './routers.coffee'
router = new VueRouter
  hashbang: true
  history: false
  saveScrollPosition: true
  transitionOnLoad: true
routerMap router

router.start app, '#app'

# require './main.js'
