'use strict';

/* App Module */

var beercatApp = angular.module('beercatApp', [
  'ngRoute',
  'beercatAnimations',

  'beercatControllers',
  'beercatFilters',
  'beercatServices'
]);

beercatApp.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/beers', {
        templateUrl: 'partials/beer-list.html',
        controller: 'beerListCtrl'
      }).
      when('/beers/:beerId', {
        templateUrl: 'partials/beer-detail.html',
        controller: 'beerDetailCtrl'
      }).
      otherwise({
        redirectTo: '/beers'
      });
  }]);
