<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ProfilController extends CI_Controller{

    public function index(){
        echo $this->page->tampil('website.profil.index');
    }
}