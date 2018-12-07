<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class KategoriController extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model(array('HomeModel' => 'home'));
	}

    public function index($id,$name){
    	$kategori = $this->home->selectData('*','kategori','')->result();
        echo $this->page->tampil('website.landing.kategori.index',compact('kategori','id','name'));
    }

    public function detail($id, $name, $kategori){
		$kabupaten = $this->home->selectData('*','kota','where id = '.$id)->first_row();
		$kategori = $this->home->selectData('*','kategori','where nama = \''.$kategori.'\'')->first_row();
		$namaKategori = $kategori->nama;
    	$tempatWisata = $this->home->selectData('*, ST_AsWKT(`kordinat`) AS `kordinat`','tempat_wisata','where kota_id = '.$id.' and kategori_id = '.$kategori->id)->result();
    	echo $this->page->tampil('website.landing.kategori.detail.index',compact('tempatWisata','kabupaten','namaKategori'));
    }
}