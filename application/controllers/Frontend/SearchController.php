<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SearchController extends CI_Controller{

    public function __construct(){
		parent::__construct();
		$this->load->model(array('HomeModel' => 'home'));
    }
    
    public function index(){
        $tempatWisata = $this->home->selectData('*, ST_AsWKT(`kordinat`) AS `kordinat`','tempat_wisata','')->result();
        echo $this->page->tampil('website.search.index', compact('tempatWisata'));
    }

    public function search(){
        $phrase = $this->input->get('phrase');
        $tempatWisata = $this->home->selectData('*, ST_AsWKT(`kordinat`) AS `kordinat`','tempat_wisata','where nama LIKE "%'.$phrase.'%"')->result_object();
        echo json_encode($tempatWisata);
    }
}