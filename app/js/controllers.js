'use strict';

/* Controllers */

var beercatControllers = angular.module('beercatControllers', []);

beercatControllers.controller('beerListCtrl', ['$scope', 'beer',
  function($scope, beer) {
    $scope.beers = beer.query();
    $scope.orderProp = 'age';
  }]);

beercatControllers.controller('beerDetailCtrl', ['$scope', '$routeParams', 'beer',
  function($scope, $routeParams, beer) {
    $scope.beer = beer.get({beerId: $routeParams.beerId}, function(beer) {
      $scope.mainImageUrl = beer.images[0];
    });

    $scope.setImage = function(imageUrl) {
      $scope.mainImageUrl = imageUrl;
    };
  }]);
