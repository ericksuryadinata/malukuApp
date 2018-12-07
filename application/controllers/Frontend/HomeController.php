<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class HomeController extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model(array('HomeModel' => 'home'));
	}
    public function index(){
    	$kota = $this->home->selectData('*','kota','')->result();
        echo $this->page->tampil('website.landing.index',compact('kota'));
    }
}