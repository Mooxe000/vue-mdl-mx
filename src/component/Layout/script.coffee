echo = -> console.log arguments
Comp =
  Header: require '../header/main.vue'
  Footer: require '../footer/main.vue'
  # Content
  About: require '../../view/About/main.vue'
  Started: require '../../view/Started/main.vue'
  Templates: require '../../view/Templates/main.vue'
  Components: require '../../view/Components/main.vue'
  Styles: require '../../view/Styles/main.vue'
  Customize: require '../../view/Customize/main.vue'
  Showcase: require '../../view/Showcase/main.vue'
  FAQ: require '../../view/FAQ/main.vue'

getDialogCompName = (routeName) ->
  switch routeName
    when 'about' then 'CompAbout'
    when 'started' then 'CompStarted'
    when 'templates' then 'CompTemplates'
    when 'components' then 'CompComponents'
    when 'styles' then 'CompStyles'
    when 'customize' then 'CompCustomize'
    when 'showcase' then 'CompShowcase'
    when 'faq' then 'CompFaq'
    else 'CompAbout'

getRouteTitle = (routeName) ->
  switch routeName
    when 'about' then 'About'
    when 'started' then 'Getting Started'
    when 'templates' then 'Templates'
    when 'components' then 'Components'
    when 'styles' then 'Styles'
    when 'customize' then 'Customize'
    when 'showcase' then 'Showcase'
    when 'faq' then 'FAQ'
    else 'About'

module.exports =

  route:
    data: (transition) ->
      routeName = transition.to.name
      transition.next
        routeName: routeName
        pageTitle: do ->
          getRouteTitle routeName
        compContent: do ->
          getDialogCompName routeName

  data: ->
    routeName: ''
    pageTitle: ''
    compContent: ''

  components:
    CompHeader: Comp.Header
    CompFooter: Comp.Footer
    # Content
    CompAbout: Comp.About
    CompStarted: Comp.Started
    CompTemplates: Comp.Templates
    CompComponents: Comp.Components
    CompStyles: Comp.Styles
    CompCustomize: Comp.Customize
    CompShowcase: Comp.Showcase
    CompFaq: Comp.FAQ
