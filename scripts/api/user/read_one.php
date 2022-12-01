<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

include_once '../config/connection.php';
include_once '../objects/user.php';

$database = new Connection();
$db = $database->getConnection();

$user = new user($db);

if (isset($_GET['usuario']) && isset($_GET['contraseña'])) {
    $user->usuario = $_GET['usuario'];
    $user->contraseña = $_GET['contraseña'];
    $result = $user->verificarUsuario();

    if ($result->num_rows > 0) {

        $row = $result->fetch_assoc();
        extract($row);
        $user_arr = array(
            "id" => $id,
            "usuario" => $usuario,
            "contraseña" => $contraseña,
            "rol" => $rol
        );

        http_response_code(200);
        echo json_encode($user_arr);

        header("location: ../../../index.php?usuario=$usuario&rol=$rol");
    } else {
        http_response_code(404);
        echo json_encode(array("message" => "Usuario no encontrado."));
    }
} else {
    http_response_code(400);
    echo json_encode(array("message" => "No se pudo verificar el usuario."));
}