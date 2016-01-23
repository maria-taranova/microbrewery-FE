<?php
include("../model/productdb.php");

if($_POST['method'] == "list"){
    list_products();
};

if($_POST['method'] == "detail"){
   detail_products();
}
?>