<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../config/connection.php';
include_once '../api.php';

if(isset($_POST['Registrarse'])){
    $database = new Connection();
    $db = $database->getConnection();

    $reg = new api($db);
    $stmt = $reg->create($_POST['usuario'], $_POST['contraseña'], "Visitante");
 
    if($stmt){
        http_response_code(200);
        header("location:../../../html/Login.html");
    }else{
        echo "Error en la autenticación";
        http_response_code(401);
    }    
}
?>


