<?php
class grupo
{
    private $conn;
    private $table_name = "grupos";
    private $table_name2 = "equipos";
    private $table_name3 = "tabpos";
    private $table_name4 = "grupoequipo";

    public $id;
    public $grupo;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function consultarUnGrupo()
    {
        $query = "SELECT * FROM $this->table_name WHERE id = ?";
        $stmt = $this->conn->prepare($query);
        $stmt->bind_param("i", $this->id);
        $stmt->execute();
        $result = $stmt->get_result();

        return $result;
    }

    public function consultarDatosdeGrupo()
    {
        $query = "SELECT e.equipos, tp.pj, tp.pg, tp.pe, tp.pp, tp.ga, tp.gc, tp.DifGol, tp.puntos 
        FROM $this->table_name4 AS ge 
        JOIN $this->table_name AS g 
        ON g.id = ge.id_grupos
        JOIN $this->table_name2 AS e 
        ON ge.id_equipos = e.id
        JOIN $this->table_name3 AS tp 
        ON ge.id_equipos = tp.id
        WHERE ge.id_grupos = ?
        ORDER BY tp.puntos DESC";
        $stmt = $this->conn->prepare($query);
        $stmt->bind_param("i", $this->id);
        $stmt->execute();
        $result = $stmt->get_result();

        return $result;
    }
}
?>