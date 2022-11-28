<?php

session_start();
session_destroy();
header('location:http://localhost/shoppingcart/login/login.php');
?>