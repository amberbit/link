# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https:#github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require angular
#= require angular-resource
#= require ui-bootstrap-tpls-0.11.0

window.Public = angular.module('Public', [ 'ngResource', 'ui.bootstrap' ])

Public.controller "LoginController", ($scope, $http) ->
  $scope.form = {error: false, email: "", password: ""}

  $scope.submit = ->
    req = $http.post '/api/session', $scope.form
    req.success () ->
      $scope.form.error = false
      window.location = '/dashboard'

    req.error () ->
      $scope.form.error = true




