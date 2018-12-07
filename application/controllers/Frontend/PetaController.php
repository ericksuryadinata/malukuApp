<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PetaController extends CI_Controller{

    public function index(){
        echo $this->page->tampil('website.peta.index');
    }
}