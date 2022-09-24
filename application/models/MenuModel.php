<?php
class MenuModel extends CI_Model
{
    public function getMenuWhere($id)
    {
        $query = $this->db->query("SELECT * FROM akses_role JOIN menu ON akses_role.menu_id = menu.id WHERE akses_role.roles_id = $id");
        return $query->result_array();
    }

    public function getPeminjaman()
    {
        $query = $this->db->get('peminjaman');
        return $query->result_array();
    }
}
