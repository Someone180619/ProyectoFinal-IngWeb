<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

include_once '../config/connection.php';
include_once '../objects/group.php';

$database = new Connection();
$db = $database->getConnection();

$group = new grupo($db);
$group->id = 1;

$stmt = $group->consultarUnGrupo();

if ($stmt->num_rows > 0) {
    $row = $stmt->fetch_assoc();
    extract($row);
    $id_group = $id;
    $group_name = $grupo;

    http_response_code(200);

    header("location: read_one.php?grupo=$group_name&id=$id_group");
}