<?php
$host = 'database-1.cdmd8ockimnp.us-east-1.rds.amazonaws.com';
$dbname = 'ecommerce';
$user = 'admin';
$password = 'your_rds_password';

$condb = new mysqli($host, $user, $password, $dbname);

if ($condb->connect_error) {
    die("Connection failed: " . $condb->connect_error);
}
?>
