<?php
class Model_barang extends CI_Model
{
    public function getCountBarang()
    {
        $query = $this->db->query('SELECT * FROM barang');
        return $query->num_rows();
    }

    public function getPeminjaman()
    {
        $query = $this->db->get('peminjaman');
        return $query->result_array();
    }
}
