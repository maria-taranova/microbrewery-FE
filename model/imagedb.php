<?php
include("connect.php");

function insert_image(){
    //create info for images
    global $db;
    
    $query = "INSERT INTO images (title, path, user_id) VALUES ('".$_POST['title']."', '".$_POST['path']."', ".$_POST['user_id'].")";
    $result = $db->query($query);
}

function get_images(){
    //read info for images
    global $db;
    
    $query = "SELECT title, path, uid FROM images";
    $result = $db->query($query);
    echo json_encode($result->fetchAll());
}

function get_images_by_uid(){
    global $db;
    
    $query = "SELECT title, path FROM images WHERE user_id = ".$_POST['user_id'];
    $result = $db->query($query);
    echo json_encode($result->fetchAll());
}

function update_image(){
    //update info for image
}

function delete_image(){
    //delete info for image
}
?>