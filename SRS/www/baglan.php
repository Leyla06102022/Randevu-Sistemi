<?php 

try{
    $db = new PDO("mysql:host=localhost; dbname=gokyuzu; charest=utf8", 'root','');
} catch (Exception $e){
    echo $e->getMessage();
}
?>