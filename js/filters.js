'use strict';

/* Filters */
/*Checkmarks - if alcohol is there*/
beercatApp.filter('alcoholPercentage', function() {
  return function(input) {
   
      if(input==0){
      return  'http://www.ggbeverage.com/pics/icons/non-alch.png'  }else if(input<6){
          return 'https://irp-cdn.multiscreensite.com/f9babea6/dms3rep/multi/desktop/Icon_beer-500x500.png'
          
      }else if(input>5){
          return 'http://pictogram-free.com/material/109.png'
          
      };
  }
});