<?php

try {
    $db = new PDO("mysql:dbname=beer;host=localhost", "root", "root");
} catch (PDOException $e) {
    echo "FAIL";
}
?>