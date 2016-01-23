'use strict';

/* Services */

var beercatServices = angular.module('beercatServices', ['ngResource']);

beercatServices.factory('beer', ['$resource',
  function($resource){
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
                            return resp;
                         
                    }
                });
    });
  }]);
