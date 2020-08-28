<?php
try {
    $dbconnection = new PDO('mysql:host=localhost;dbname=soma', 'ADMIN', '');
} catch (Exception $e) {
    die("error ".$e->getMessage());
}

