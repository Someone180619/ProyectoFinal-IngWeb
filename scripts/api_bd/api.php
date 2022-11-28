<?php
class api{
    private $conn;

    public function __construct($db){
        $this->conn = $db;
    }

    public function create($usuario, $password, $rol){
        $query = "INSERT INTO registro (id, usuario, contraseña, rol) VALUES ('', ?, ?, ?)";
        $stmt = $this->conn->prepare($query);
        $stmt->bind_param("sss", $usuario, $password, $rol);
        $stmt->execute();

        return $stmt;
    }
}
?>