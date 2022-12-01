<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../config/connection.php';
include_once '../objects/user.php';

$database = new Connection();
$db = $database->getConnection();

$user = new User($db);

if (
    isset($_GET['usuario'])
    && isset($_GET['contraseña'])
    && isset($_GET['confirmar_contraseña'])
) {

    $user->usuario = $_GET['usuario'];
    $user->contraseña = $_GET['contraseña'];
    $user->rol = "Visitante";
   
    if ($user->crearUsuario()) {
        http_response_code(200);
        echo json_encode(array("message" => "Usuario creado."));

        header("location: ../../../html/login.html");
    } else {
        http_response_code(503);
        echo json_encode(array("message" => "No se puede crear el usuario."));
    }
} else {
    http_response_code(400);
    echo json_encode(array("message" => "No se pudo crear el usuario. Datos incompletos."));
}