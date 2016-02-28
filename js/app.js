'use strict';

/* App Module */

//Toggle classes in payment tabs

    function togglediv(id1, id2) {
  
        
    console.log(id1, id2);
    var div1 = document.getElementById(id1);
    var div2 = document.getElementById(id2);
    div1.classList.toggle('step-active');
    div1.classList.toggle('step');
    div2.classList.toggle('step-active');
    div2.classList.toggle('step');
        
    var topNav = document.getElementsByClassName('disabled'); 
 
     if(document.getElementById('step-2').classList.contains('step-active')){
         document.getElementById('st-2').classList.add("active");
         document.getElementById('st-1').classList.remove("active");
         document.getElementById('st-2').classList.remove("disabled");
         document.getElementById('st-1').classList.add("disabled");
         
     };
          if(document.getElementById('step-3').classList.contains('step-active')){
         document.getElementById('st-3').classList.add("active");
         document.getElementById('st-2').classList.remove("active");
         document.getElementById('st-3').classList.remove("disabled");
         document.getElementById('st-2').classList.add("disabled");
         
     };
          
    };
var lol = function () {
    if($scope.totalqty == 0){
    var stepOne = document.getElementById("step-1");
    stepOne.innerHTML = "Nothing herew yet";   
    console.log("inner acript");
};
};

    
