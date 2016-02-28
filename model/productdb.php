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
             
    $query = "INSERT INTO `users` (`id`, `lname`, `fname`, `email`, `city`, `postalcode`) VALUES (NULL, '".$lname."', '".$fname."', '".$email."', '".$city."', '".$postalcode."')";
    $result = $db->query($query);
    echo json_encode($result->fetchAll(PDO::FETCH_CLASS));

    
}

function add_order(){
    
    global $db;
    $postdata = file_get_contents("php://input");
    $request = json_decode($postdata);
    $email = $request->email;
   
            


    
    $query = "
    BEGIN;
    INSERT INTO `orders` (`id`, `user_id`) VALUES (NULL, (SELECT id FROM users WHERE email='".$email."'));
    INSERT INTO `orderdetail` (`order_id`,  `date`) VALUES ((SELECT MAX(id) FROM orders), CURRENT_TIMESTAMP);
    COMMIT";
    $result = $db->query($query);
    

}



function insert_order_items(){
  global $db;
   
    $postdata = file_get_contents("php://input");
    $request = json_decode($postdata);

    $items = $request->items;
    $items = json_decode(json_encode($items), true);
    
    
    
     $query = "INSERT INTO `order_items` (`product_id`, `product_price`, `order_id`, `product_qty`) VALUES";
    
    $valuesArr = array();
    
    foreach($items as $row){
          $product_id = (int) $row['id'];
          $cost = (int) $row['cost']; 
          $qty = (int) $row['qty'];
        
          $valuesArr[] = "('$product_id', '$cost', (SELECT MAX(id) FROM orders), '$qty')";
     };

    $query .= implode(',', $valuesArr);
    $result = $db->query($query);


   var_dump($query);
};

function delete_user(){
    //delete info for users
}

//TESTING
//insert_user();

//SELECT * FROM `orders` INNER JOIN orderdetail on orders.id=orderdetail.order_id INNER JOIN order_items ON orders.id = order_items.order_id

//SELECT *, (product_price * product_qty) AS total FROM `orderdetail` INNER JOIN orders ON orderdetail.order_id = orders.id INNER JOIN order_items ON orderdetail.order_id = order_items.order_id 
?>