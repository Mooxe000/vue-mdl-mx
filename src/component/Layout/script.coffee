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

module.exports =

  data: ->
    compContent: 'CompAbout'

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
