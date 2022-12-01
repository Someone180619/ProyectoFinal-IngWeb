<?php
class user{
    private $conn;
    private $table_name = "registro";

    public $id = "";
    public $usuario;
    public $contraseña;
    public $rol;

    public function __construct($db){
        $this->conn = $db;
    }

    public function verificarUsuario(){
        $query = "SELECT * FROM $this->table_name WHERE usuario = ? AND contraseña = ?";
        $stmt = $this->conn->prepare($query);
        $stmt->bind_param("ss", $this->usuario, $this->contraseña);
        $stmt->execute();
        $result = $stmt->get_result();

        return $result;
    }

    public function crearUsuario(){
        $query = "INSERT INTO $this->table_name (usuario, contraseña, rol) VALUES (?, ?, ?)";
        $stmt = $this->conn->prepare($query);
        $stmt->bind_param("sss", $this->usuario, $this->contraseña, $this->rol);
        $stmt->execute();

        return $stmt;
    }
}