<?php
use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';
class Stb extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Stb_model','stb');
    }

    public function baca_get() {
        $alat = $this->get('alat');
        if ($alat==null) {
            $data= $this->stb->getStb();
        }
        else {
            $all = $this->get('all');
            if ($all==null){
                $data= $this->stb->getStb($alat);
            }
            else {
                $data= $this->stb->getStb($alat,$all);
            }
        }
        if ($data) {
            $this->response([
                'status' => true,
                'data' => $data,
            ], REST_Controller::HTTP_OK);
        }
        else {
            $this->response([
                'status' => false,
                'message' => 'data not found'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    public function tambah_get() {
        $data = [
            'alat' => $this->get('alat'),
            'nilai' => $this->get('nilai')
        ];
        if ($this->stb->insertStb($data)>0) {
            $this->response([
                'status' => true,
                'message' => 'Added a resource'
            ], REST_Controller::HTTP_CREATED);
        }
        else {
            $this->response([
                'status' => false,
                'message' => 'Added a resource'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }

    public function lampu_post(){
        $data = [
            'alat' => $this->input->post('alat'),
            'nilai' => $this->input->post('nilai'),
            'waktu' => date('Y-m-d H:i:s')
        ];

        $data_alat = $this->stb->getStb($data['alat']);
        if($data_alat == null){
            $this->stb->insertStb($data);
            $this->response([
                'status' => true,
                'message' => 'Added a resource'
            ], REST_Controller::HTTP_CREATED);

        } else if($data_alat['nilai'] != $data['nilai'] ){
            $this->stb->updateStb($data, ['alat' => $data['alat']]);
            $this->response([
                'status' => true,
                'message' => 'updated a resource'
            ], REST_Controller::HTTP_OK);
        }else{
            $this->response([
                'status' => false,
                'message' => 'Added a resource'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }

    }
}
