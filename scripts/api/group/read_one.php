<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../config/Connection.php';
include_once '../objects/group.php';
session_start();

$database = new Connection();
$db = $database->getConnection();

$group = new grupo($db);
$group->id = $_GET['id'];
$_SESSION['name'] = $_GET['grupo'];
$_SESSION['id'] = $_GET['id'];

$stmt = $group->consultarDatosdeGrupo();

if ($stmt->num_rows > 0) {

    $groups_arr = array();

    while ($row = $stmt->fetch_assoc()) {
        extract($row);

        $group_item = array(
            "equipos" => $equipos,
            "pj" => $pj,
            "pg" => $pg,
            "pe" => $pe,	
            "pp" => $pp,
            "ga" => $ga,
            "gc" => $gc,
            "DifGol" => $DifGol,
            "puntos" => $puntos,
        );

        array_push($groups_arr, $group_item);
    }

    http_response_code(200);
    
    $_SESSION['info'] = $groups_arr;
    
    header("location: ../../../html/InfoGrupo.php");
} else {

    http_response_code(404);

    echo json_encode(
        array("message" => "No groups found.")
    );
}
