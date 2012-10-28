#This is a manifest file that'll be compiled into application.js, which will include all the files
#listed below.
#
#Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
#or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
#It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
#the compiled file.
#
#WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
#GO AFTER THE REQUIRES BELOW.
#
#= require jquery
#= require twitter/bootstrap
#= require jquery_ujs
#= require_tree .


signinVisible = () ->
  if $('#signin-group').hasClass "hide"
    # Hide the sign up group and add class hide if it doesn't already have one
    $('#signup-group').slideUp "fast", ->
      $("#signup-group").addClass "hide" unless $("#signup-group").hasClass "hide"
      return
    $('#signin-group').slideDown 'slow', ->
      $('#signin-group').removeClass('hide');
      return # Because coffee script adds return on on functions >.>
    return false
  return true


signupVisible = () ->
  if $('#signup-group').hasClass "hide"
    # Hide the sign in group and add class hide if it doesn't already have one
    $('#signin-group').slideUp "fast", ->
      $("#signin-group").addClass "hide" unless $("#signin-group").hasClass "hide"
      return
    $("#signup-group").slideDown "slow", ->
      $('#signup-group').removeClass "hide"
      return
    return false
  return true



$ ->
  $('#signin-group, #signup-group').addClass 'hide'
  # TODO - I can probably refactor this better but for now it works...
  $('#login-form').submit (e) ->
    if signinVisible()
      return true
    else
      return false

  $('#signup-form').submit (e) ->
    if signupVisible()
      return true
    else
      return false



