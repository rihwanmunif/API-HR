
    <?php

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

class Post extends REST_Controller
{
    
    function index_post()
    {
        $data = array(
            'id'           => $this->post('id'),
            'idUser'          => $this->post('idUser'),
            'email'    => $this->post('email'),
            'foto'    => $this->post('foto'),
            'job'    => $this->post('job'),
            'phone'    => $this->post('phone'),
            'username'    => $this->post('username')
        );
        $insert = $this->db->insert('tbl-user', $data);
        if ($insert) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }
}