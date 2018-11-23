<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class HomeController extends CI_Controller{

    public function index(){
        echo $this->page->tampil('website.landing.index');
    }
}