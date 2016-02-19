'use strict';

/* Controllers */
var beercatApp = angular.module('beercatApp', ['ngRoute']);

beercatApp.config(['$routeProvider', '$locationProvider', function($routeProvide, $locationProvider){
  $routeProvide
      .when('/',{
        templateUrl:'template/home.html',
        controller:'beerListCtrl'
      })
      .when('/about',{
        templateUrl:'template/about.html',
        controller:'AboutCtrl'
      })
      .when('/contact',{
        templateUrl:'template/contact.html',
        controller:'ContactCtrl'
      })
      .when('/beers/:beerId', {
        templateUrl:'template/beer-detail.html',
        controller:'beerDetailCtrl'
      })
       .when('/cart', {
            templateUrl:'template/cart.html',
            controller:'CartCtrl'
          })
     .when('/checkout', {
            templateUrl:'template/checkout.html',
            controller:'CheckOutCtrl'
          })
      .otherwise({
        redirectTo: '/'
      });
}]);

/* Filter */


beercatApp.controller('beerListCtrl',['$scope', 'cartItems', '$http', '$location', function($scope, cartItems, $http, $location) {
    
    //check if something is in the cart and set the qty
    var quant = cartItems.getHowMany();
    if(quant == undefined){
        $scope.totalqty = 0;
    }else{
        $scope.totalqty = quant;
    }
    $scope.$on('scanner-started', function(){
        $scope.totalqty = cartItems.getHowMany();
    });
    console.log('totalqty '+$scope.totalqty); 
 
  //console.log('$location.url() - ', $location.url());
  //console.log('$location.path() - ', $location.path());
  //console.log('$location.search() - ', $location.search());
  //console.log('$location.hash() - ', $location.hash());

  $http.get('./controller/products.php').success(function(data, status, headers, config) {
    $scope.beers = data;
      
  });

    
   
    //$scope.total = cartItems.getQty();
    //$scope.totalqty = $scope.total;
     
    //console.log("ksfmgk"+$scope.totalqty);

      $scope.orderProp = 'title';


}]);
//About Controller
beercatApp.controller('AboutCtrl',['$scope','$http', '$location', function($scope, $http, $location) {
    
}]);

//Cart controller
beercatApp.controller('CartCtrl', ['$scope', 'cartItems', '$http',
    function ($scope,  cartItems, $http) {
        
    $scope.$on('scanner-started', function(){
        $scope.items = cartItems.getProperty('cart');
    });
   
    $scope.items = cartItems.getProperty('cart');
  
    
    $scope.removeItem = function(index) {
        $scope.items.splice(index, 1);
    },

     $scope.total = function() {
        var total = 0;
        angular.forEach($scope.items, function(item) {
            total += item.qty * item.cost;

        })
        return total;
    }
    
     $scope.modifyCart = function(){
         console.log($scope.items);
         cartItems.setProperty($scope.items);
         console.log("cart modified");
      }
    
     $scope.customer = {
         fname: "",
         lname: "",
         email: "",
         city: "",
         postalcode:""
     }
     
 //send info to db
 
    $scope.pay = function(){
            var cart_url = './controller/cart.php';
            var request = $http({
                method: "post",
                url: cart_url,
                data: {
                     fname: $scope.customer.fname,
                     lname: $scope.customer.lname,
                     email: $scope.customer.email,
                     city: $scope.customer.city,
                     postalcode: $scope.customer.postalcode,
                     total: $scope.total()
                },
                headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
            });
                        request.success(function (data) {
                            console.log(data);
            });
     }
     

     
   /* $scope.formInvoice = function(){
        
        var total = $scope.total();
        cartItems.setProperty($scope.items);
        console.log(cartItems.getProperty('cart'));
        
    }*/ 
    
    //Toggle class
    
      /*    $scope.changeClass = function(id){
            var activeTab = document.getElementById(id); 
            if ($scope.class === "active-step")
              activeTab.listClass.class = "step";
            else
              $scope.class = "active-step";
          };*/
    
    
    
}]);

//Contact Controller
beercatApp.controller('ContactCtrl',['$scope','$http', '$location', function($scope, $http, $location) {

}]);
//beer Detail Controller
beercatApp.controller('beerDetailCtrl',['$scope','cartItems','$http', '$location', '$routeParams', function($scope, cartItems, $http, $location, $routeParams) {
  $scope.beerId = $routeParams.beerId;
 
    
    
var url_product = './controller/details.php';
var url_img = './controller/product_img.php';
//get info for selected sku
  $http.get(url_product, {params: {id: $routeParams.beerId}}).success(function(data) {
           
      $scope.beer = data[0];
      $scope.beer.qty = 1;

      console.log($scope.beer );
  });
    
    //get images for each product
    
      $http.get(url_img, {params: {id: $routeParams.beerId}}).success(function(data) {
      
        var images = [];
        angular.forEach(data, function(data, key) {
          this.push(data.image_url);
        }, images);
          
          console.log(images);
         
    $scope.beer.images = images;
    $scope.mainImageUrl= images[0];
  });

  $scope.setImage = function(imageUrl) {
    $scope.mainImageUrl = imageUrl;
  }
  
 /*
  $scope.add = function(qty, title, price){
      var qty = parseInt(qty);
      var title = title;
      var cost = parseFloat(price);
      cartItems.setProperty(qty, title, cost);
      console.log(cartItems.getProperty());
  }*/
  
    /*var city = [
                  { Id: 1, Name: 'Dhaka' },
                  { Id: 2, Name: 'Ctg' }
    ];*/
    //cacheService.setData('city', city);
    //console.log(cacheService.getData('city'));
    
    
   
      $scope.addItem = function(beer){
          var qty = document.getElementById("qty").value;
          var beer = beer;
          beer.qty = parseInt(qty);
          cartItems.setProperty(beer);
      }
      
                               
}]);


