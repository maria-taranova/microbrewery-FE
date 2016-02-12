<?php
include("connect.php");

function list_products(){
    //create info for users
    global $db;
    
    $query = "SELECT id, title, image, alcohol FROM beer.products";
    $result = $db->query($query);
     echo json_encode($result->fetchAll(PDO::FETCH_CLASS));
  
}

function detail_products(){
    //create info for users
    global $db;
    
    $query = "SELECT id, title, description, price, alcohol, vol, inventory FROM products WHERE id ='".$_GET['id']."'";
    $result = $db->query($query);
     echo json_encode($result->fetchAll(PDO::FETCH_CLASS));
  
}

function list_product_img(){
  
    global $db;
    
    $query = "SELECT * FROM images WHERE product_id ='".$_GET['id']."'";
    $result = $db->query($query);
    echo json_encode($result->fetchAll(PDO::FETCH_CLASS));
  
}

function get_users(){
    //read info for users
    //global $db;
}

function get_user_by_username_password(){
    global $db;
    
    
    
    $query = "SELECT id FROM users WHERE password = '".$_POST['password']."' AND username = '".$_POST['username']."'";
    $result = $db->query($query);
    
    echo json_encode($result->fetchAll(PDO::FETCH_CLASS));
}

function add_user(){
    
    global $db;

    $postdata = file_get_contents("php://input");
    $request = json_decode($postdata);
    $fname = $request->fname;
    $lname = $request->lname;
    $email = $request->email;
    $city = $request->city;
    $postalcode = $request->postalcode;
             
    $query = "INSERT INTO `beer`.`users` (`id`, `lname`, `fname`, `email`, `city`, `postalcode`) VALUES (NULL, '".$lname."', '".$fname."', '".$email."', '".$city."', '".$postalcode."')";
    $result = $db->query($query);
    echo json_encode($result->fetchAll(PDO::FETCH_CLASS));

    
}

function add_order(){
    
    global $db;
    $postdata = file_get_contents("php://input");
    $request = json_decode($postdata);
    $email = $request->email;
    $total = $request->total;            

    
    $query = "
    BEGIN;
    INSERT INTO `beer`.`orders` (`id`, `user_id`) VALUES (NULL, (SELECT id FROM users WHERE email='".$email."'));
    INSERT INTO `beer`.`orderdetail` (`order_id`, `total`, `date`) VALUES ((SELECT MAX(id) FROM orders), '".$total."', CURRENT_TIMESTAMP);
    INSERT INTO `beer`.`order_items` (`product_id`, `product_price`, `order_id`) VALUES ('1', '9000', (SELECT MAX(id) FROM orders));
    COMMIT";
    $result = $db->query($query);
    echo $email;

    
}

function delete_user(){
    //delete info for users
}

//TESTING
//insert_user();

//SELECT * FROM `orders` INNER JOIN orderdetail on orders.id=orderdetail.order_id INNER JOIN order_items ON orders.id = order_items.order_id
?>