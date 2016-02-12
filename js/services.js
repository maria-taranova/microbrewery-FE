'use strict';
//Passing into localStorage
beercatApp.factory('storageService', function($rootScope) {
    return {
        get: function(key) {
            // JSON.parse(localStorage.getItem(key));            
            console.log(key + ':' + JSON.parse(localStorage.getItem(
                key)));
            return JSON.parse(localStorage.getItem(key));
        },
        save: function(key, data) {
           // console.log(key + ':' + localStorage['cart']);
            //if (localStorage.getItem(key) === null) {

            return localStorage.setItem(key, JSON.stringify(data));
            //    }else{
            //      var itemInCart = JSON.parse(localStorage.getItem(key));
            //    itemInCart.qty+=data.qty;
            //  localStorage.setItem(key, JSON.stringify(itemInCart));
            // }
        },
        remove: function(key) {
            localStorage.removeItem(key);
        },
        clearAll: function() {
            localStorage.clear();
        }
    };
});
beercatApp.factory('cacheService', function($http, storageService) {
    return {
        getData: function(key) {
            return storageService.get(key);
        },
        setData: function(key, data) {
            storageService.save(key, data);
        },
        removeData: function(key) {
            storageService.remove(key);
        }
    };
});
beercatApp.service('cartItems', function(cacheService, $rootScope) {
    var invoice = {
        items: [],
        cart_qty: 0,
    };
    return {
        getProperty: function(key) {
           return cacheService.getData(key);
           
        },
        getQty: function() {
            
            var items = this.getProperty('cart');
            var cart_qty = 0;
            //angular.forEach(invoice.items, function(item) {
            //cart_qty += item.qty;
            //console.log(item.qty);
            //})
            for (var i = 0; i < items.length; i++) {
               cart_qty += items[i].qty;
            }
            
            console.log('The invoice is '+cart_qty);
            //document.getElementById("totalqty").innerHTML =" "+ cart_qty;
            //return cart_qty;
            //console.log(cart_qty);
            cacheService.setData('total', cart_qty);
            $rootScope.$broadcast('scanner-started');

           
        },
        getHowMany: function() {
            return cacheService.getData('total');
        },
        setProperty: function(beer) {
            var beer = beer;
         
            var existingItems = this.getProperty('cart');
            console.log(existingItems);
            if(existingItems != null){
            for(var i=0; i<existingItems.length;i++){
                if(existingItems[i].id == beer.id){
                    console.log(existingItems[i]);
                    beer.qty+=existingItems[i].qty;
                   
                }
              }
            }
            //start here
            invoice.items.push({
                id: beer.id,
                qty: beer.qty,
                title: beer.title,
                cost: parseInt(beer.price)
            });

           cacheService.removeData('cart');
           console.log('the cache '+cacheService.getData('cart'));
           cacheService.setData('cart', invoice.items);
            this.getQty();
        }
    };
});