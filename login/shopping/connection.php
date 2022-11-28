<?php      
    $servername ="localhost";
    $username = "root";
    $password = "Vinhquang1997";
    $dbname = "s332985_shoppingcart";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>  