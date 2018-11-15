<?php
/**
 * Created by PhpStorm.
 * User: orlando
 * Date: 26/09/2017
 * Time: 21:30
 */

class Index extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Social_model");
    }

    public function index(){
        $data = [
            'config' => $this->Config_model->get_all(),
            'social' => $this->Social_model->get_all(),
        ];
        $this->load->view('site/index', $data);
    }
}