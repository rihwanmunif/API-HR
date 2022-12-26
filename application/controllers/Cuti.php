<?php

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

class Cuti extends REST_Controller
{

    function __construct($config = 'rest')
    {
        parent::__construct($config);
        $this->load->database();
    }

    function index_get()
    {
        $id = $this->get('id');
        if ($id == '') {
            $user = $this->db->get('cuti')->result();
        } else {
            $this->db->where('id', $id);
            $user = $this->db->get('cuti')->result();
        }
        $this->response($user, 200);
    }


    function index_post()
    {
        $data = array(
            'id'           => $this->post('id'),
            'idUser'          => $this->post('idUser'),
            'acc'    => $this->post('acc'),
            'annotation'    => $this->post('annotation'),
            'from'    => $this->post('from'),
            'isVerify'    => $this->post('isVerify'),
            'to'    => $this->post('to')
        );
        $insert = $this->db->insert('cuti', $data);
        if ($insert) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

    function index_put()
    {
        $id = $this->put('id');
        $data = array(
            'id'           => $this->put('id'),
            'idUser'          => $this->put('idUser'),
            'acc'    => $this->put('acc'),
            'annotation'    => $this->put('annotation'),
            'from'    => $this->put('from'),
            'isVerify'    => $this->put('isVerify'),
            'to'    => $this->put('to')
        );
        $this->db->where('id', $id);
        $update = $this->db->update('cuti', $data);
        if ($update) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

    function index_delete()
    {
        $id = $this->delete('id');
        $this->db->where('id', $id);
        $delete = $this->db->delete('cuti');
        if ($delete) {
            $this->response(array('status' => 'success'), 201);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }
}
