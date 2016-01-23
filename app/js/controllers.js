'use strict';

/* Controllers */

var beercatControllers = angular.module('beercatControllers', []);
beercatControllers.controller('beerListCtrl', ['$scope', 'beer',
  
 function($scope, beer) {
      
       $.ajax({
                   url:"../controller/products.php",
                    dataType:"html",
                    type:"POST",
                    data:{
                        method:"list"
                    },
                    success:function(resp){
                            var resp = JSON.parse(resp);
                            $scope.beers = resp;
                            console.log(resp);
                            $scope.orderProp = 'title';
                            console.log($scope.orderProp);

                    }
                });
      
     
   
                             

  }]);

beercatControllers.controller('beerDetailCtrl', ['$scope', '$routeParams', 'beer',
  function($scope, $routeParams, beer) {
    $scope.beer = beer.get({beerId: $routeParams.beerId}, function(beer) {
             
       $.ajax({
                   url:"../controller/products.php",
                    dataType:"html",
                    type:"POST",
                    data:{
                        method:"detail",
                        id: beerId
                    },
                    success:function(resp){
                            var resp = JSON.parse(resp);
                            $scope.beers = resp;
                            console.log(resp);
                         
                    }
                });
    });

    $scope.setImage = function(imageUrl) {
      $scope.mainImageUrl = imageUrl;
    };
  }]);
