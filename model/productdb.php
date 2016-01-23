<?php
include("connect.php");

function list_products(){
    //create info for users
    global $db;
    
    $query = "SELECT * FROM products";
    $result = $db->query($query);
     echo json_encode($result->fetchAll());
  
}


function detail_products(){
    //create info for users
    global $db;
    
    $query = "SELECT title, description FROM products WHERE id ='".$_POST['id']."'";
    $result = $db->query($query);
     echo json_encode($result->fetchAll());
  
}

function get_users(){
    //read info for users
    //global $db;
}

function get_user_by_username_password(){
    global $db;
    
    $query = "SELECT id FROM users WHERE password = '".$_POST['password']."' AND username = '".$_POST['username']."'";
    $result = $db->query($query);
    
    echo json_encode($result->fetchAll());
}

function update_user(){
    //update info for user
}

function delete_user(){
    //delete info for users
}

//TESTING
//insert_user();
?>