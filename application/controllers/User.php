<?php

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

class User extends REST_Controller
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
            $user = $this->db->get('tbl-user')->result();
        } else {
            $this->db->where('id', $id);
            $user = $this->db->get('tbl-user')->result();
        }
        $this->response($user, 200);
    }


    function index_post()
    {
        $data = array(
            'id'           => $this->post('id'),
            'idUser'          => $this->post('idUser'),
            'email'    => $this->post('email'),
            'foto'    => $this->post('foto'),
            'job'    => $this->post('job'),
            'phone'    => $this->post('phone'),
            'username'    => $this->post('username'),
            'password'    => $this->post('password')
        );
        $insert = $this->db->insert('tbl-user', $data);
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
            'email'    => $this->put('email'),
            'foto'    => $this->put('foto'),
            'job'    => $this->put('job'),
            'phone'    => $this->put('phone'),
            'username'    => $this->put('username'),
            'password'    => $this->post('password')
        );
        $this->db->where('id', $id);
        $update = $this->db->update('tbl-user', $data);
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
        $delete = $this->db->delete('tbl-user');
        if ($delete) {
            $this->response(array('status' => 'success'), 201);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }
}
