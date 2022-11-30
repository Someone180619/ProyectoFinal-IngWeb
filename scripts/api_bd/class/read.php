<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../config/connection.php';
include_once '../api.php';

$database = new Connection();
$db = $database->getConnection();

$user = new api($db);

switch ($_GET['action']) {
    case 'login':
        $stmt = $user->read("registro");
        $num = $stmt->num_rows;

        if($num > 0){
            while ($row = $stmt->fetch_assoc()){
                if((($_POST['usuario'] == $row['usuario']) && ($_POST['contraseña'] == $row['contraseña']))){
                    //verificar que el usuario sea un administrador
                    if($row['rol'] == "Administrador"){
                        header("location:../../../html/Administrador.html");
                    }else{
                        header("location:../../../index.html");
                    }
                }else{
                    echo "Error en la autenticación";
                    http_response_code(401);
                }
            }
        } 
        break;

    case 'infogrupo':
        session_start();
        $stmt = $user->read("tabpos");
        $num = $stmt->num_rows;
        
        if($num > 0){
            while ($row = $stmt->fetch_assoc()){
                $data[] = $row;
            }

            $_SESSION['data'] = $data;
            http_response_code(200);
            header("location:../../../html/InfoGrupo.php");
        } else {
            echo "No se encontraron registros";
            http_response_code(404);
        }
        break;
}
