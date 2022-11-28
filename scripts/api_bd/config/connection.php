<?php
class Connection{

    private $host = "localhost";
    private $user = "root";
    private $pass = "";
    private $db_name = "mundial";

    public function getConnection(){
        $conn = new mysqli($this->host, $this->user, $this->pass, $this->db_name);

        if($conn->connect_error){
            echo "Error de conexión: " . $conn->connect_error;
        } else {
            return $conn;
        }
    }
}