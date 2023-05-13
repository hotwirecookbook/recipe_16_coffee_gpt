module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  purge: {
    safelist: [
      {pattern: /p-./},
      {pattern:  /whitespace-./}
    ],
  }
}
