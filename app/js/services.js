'use strict';

/* Services */

var beercatServices = angular.module('beercatServices', ['ngResource']);

beercatServices.factory('beer', ['$resource',
  function($resource){
    return $resource('beers/:beerId.json', {}, {
      query: {method:'GET', params:{beerId:'beers'}, isArray:true}
    });
  }]);
