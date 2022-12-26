<?php

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

class Clockout extends REST_Controller
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
            $user = $this->db->get('tbl-clockout')->result();
        } else {
            $this->db->where('id', $id);
            $user = $this->db->get('tbl-clockout')->result();
        }
        $this->response($user, 200);
    }


    function index_post()
    {
        $data = array(
            'id'           => $this->post('id'),
            'idUser'          => $this->post('idUser'),
            'foto'    => $this->post('foto'),
            'lokasi'    => $this->post('lokasi'),
            'date'    => $this->post('date'),
            'time'    => $this->post('time')
        );
        $insert = $this->db->insert('tbl-clockout', $data);
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
            'foto'    => $this->put('foto'),
            'lokasi'    => $this->put('lokasi'),
            'date'    => $this->put('date'),
            'time'    => $this->put('time')
        );
        $this->db->where('id', $id);
        $update = $this->db->update('tbl-clockout', $data);
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
        $delete = $this->db->delete('tbl-clockout');
        if ($delete) {
            $this->response(array('status' => 'success'), 201);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }
}
