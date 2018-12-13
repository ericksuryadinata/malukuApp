<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PetaController extends CI_Controller{

    public function __construct(){
		parent::__construct();
		$this->load->model(array('HomeModel' => 'home'));
    }
    
    public function index(){
        $provinsi = $this->home->selectData('*, ST_AsWKT(`wilayah`) AS `wilayah`','provinsi','')->result();
        echo $this->page->tampil('website.peta.index',compact('provinsi'));
    }
}