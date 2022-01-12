<?php
class Model_barang extends CI_Model
{
    public function getCountBarang()
    {
        $query = $this->db->query('SELECT * FROM barang');
        return $query->num_rows();
    }
}
