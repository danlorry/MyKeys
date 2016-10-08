# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'click', '.btn-learn-more', (e) ->
  e.preventDefault()
  $('html, body').animate
    scrollTop: $('#learn-more').offset().top
  , 'slow'
