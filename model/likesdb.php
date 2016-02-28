<?php
include("connect.php");

function get_likes(){
    
    global $db;

    
    $query = "SELECT SUM(likes_num) AS rating FROM `likes` WHERE beer_id = 1";
    $result = $db->query($query);
    echo json_encode($result->fetchAll(PDO::FETCH_CLASS));
    
}
?>