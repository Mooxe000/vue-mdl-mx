echo = -> console.log arguments
Comp =
  Header: require '../header/main.vue'
  Footer: require '../footer/main.vue'

getRouteTitle = (routeName) ->
  switch routeName
    when 'started' then 'Getting Started'
    when 'templates' then 'Templates'
    when 'styles' then 'Styles'
    when 'customize' then 'Customize'
    when 'showcase' then 'Showcase'
    when 'faq' then 'FAQ'
    else routeName

module.exports =

  route:
    data: (transition) ->
      routeName = (transition.to.name.split '.')[0]
      transition.next
        routeName: routeName
        pageTitle: do ->
          getRouteTitle routeName

  data: ->
    routeName: ''
    pageTitle: ''

  components:
    CompHeader: Comp.Header
    CompFooter: Comp.Footer
