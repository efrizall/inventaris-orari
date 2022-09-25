<?php
class InventarisModel extends CI_Model
{
    public function getMenuWhere($id)
    {
        $query = $this->db->query("SELECT * FROM akses_role JOIN menu ON akses_role.menu_id = menu.id WHERE akses_role.roles_id = $id");
        return $query->result_array();
    }

    public function getInventaris()
    {
        $query = $this->db->get('barang');
        return $query->result_array();
    }
}
