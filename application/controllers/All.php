<?php

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

class All extends REST_Controller
{
    public function index_get(){
        
        $users = $this->db->get('tbl-user')->result_array();
        
        foreach($users as $key => $user){
            $users[$key]['ijin'] = $this->db->get_where('ijin',['idUser'=> $user['idUser']])->result_array();
            $users[$key]['cuti'] = $this->db->get_where('cuti',['idUser'=> $user['idUser']])->result_array();
            $users[$key]['tbl-clockin'] = $this->db->get_where('tbl-clockin',['idUser'=> $user['idUser']])->result_array();
            $users[$key]['tbl-clockout'] = $this->db->get_where('tbl-clockout',['idUser'=> $user['idUser']])->result_array();
            $users[$key]['overtimein'] = $this->db->get_where('overtimein',['idUser'=> $user['idUser']])->result_array();
            $users[$key]['overtimeout'] = $this->db->get_where('overtimeout',['idUser'=> $user['idUser']])->result_array();
        }

        $data = [

        ];
        
        

        return $this->response($users,200);
    }
}