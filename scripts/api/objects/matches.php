<?php
class matches{
    private $conn;
    private $table_name = "partidos";

    public $id;
    public $equipo1;
    public $equipo2;
    public $id_ronda;

    public function __construct($db){
        $this->conn = $db;
    }

    public function consultarPartidos(){
        $query = "SELECT * FROM $this->table_name WHERE id_ronda = ?";
        $stmt = $this->conn->prepare($query);
        $stmt->bind_param("i", $this->id_ronda);
        $stmt->execute();
        $result = $stmt->get_result();

        return $result;
    }
}