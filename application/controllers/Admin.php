<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("model_barang");
        $this->load->model('MenuModel');
        // $this->load->model("model_menu");
        ///constructor yang dipanggil ketika memanggil ro.php untuk melakukan pemanggilan pada model : ro.php yang ada di folder models
    }

    public function index()
    {
        // $data['user'] dapet dari controller auth login
        $data['user'] = $this->db->get_where('user', ['name' => $this->session->userdata('user')])->row_array();
        // $data['barang'] = $this->db->get('barang')->row_array();
        $data['jumlah'] = $this->model_barang->getCountBarang();
        $data['peminjaman'] = $this->model_barang->getPeminjaman();
        $data['menu'] = $this->MenuModel->getMenuWhere($this->session->userdata('role_id'));
        $data['title'] = 'Dashboard';

        $this->load->view('templates/menu', $data);
        $this->load->view('user/index', $data);
        $this->load->view('templates/footer');
    }

    public function inventaris()
    {
        $data['user'] = $this->db->get_where('user', ['name' => $this->session->userdata('user')])->row_array();
        $data['title'] = 'Inventaris';

        $this->load->view('templates/menu', $data);
        $this->load->view('user/inventaris');
        $this->load->view('templates/footer');
    }

    public function peminjaman()
    {
        $data['user'] = $this->db->get_where('user', ['name' => $this->session->userdata('user')])->row_array();
        $data['title'] = 'Peminjaman';

        $this->load->view('templates/menu', $data);
        $this->load->view('user/peminjaman');
        $this->load->view('templates/footer');
    }
}
