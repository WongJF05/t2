<?php
$con=mysqli_connect("database-1.cdmd8ockimnp.us-east-1.rds.amazonaws.com","admin","12345678","ecommerce");
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}
