<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class List_surat extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
        $this->functions->is_login();
        $this->load->library('upload');
	}

	public function index()
	{
        $this->functions->check_access($this->session->role_id, $this->uri->segment(1)); // access read
		$data['priv']		= $this->functions->check_priv($this->session->role_id, $this->uri->segment(1)); // for button show and hide
		
		$data['npd'] = $this->global->get('npd')->result_array();
		$this->slice->view('v_surat', $data);
    }
    
    public function add()
    {
        $this->functions->check_access2($this->session->role_id, $this->uri->segment(1), $this->uri->segment(2));
		$this->form_validation->set_rules('kegiatan', 'Kegiatan', 'trim|required');
		$this->form_validation->set_rules('npd', 'Npd', 'trim|required');
		$this->form_validation->set_rules('tanggal', 'Tanggal', 'trim|required');
		$this->form_validation->set_rules('jumlah', 'Jumlah', 'trim|required');
		if ($this->form_validation->run() == FALSE) {
			$this->slice->view('f_surat');
		} else {
            $config['upload_path']          = './assets/images/surat/';
	        $config['allowed_types']        = 'jpg|png|pdf';
	        $config['max_size']             = 1024*10; // 10 mb
	        // $config['max_width']            = 2000;
	        // $config['max_height']           = 1500;
			$this->upload->initialize($config); // $this->load->library('upload', $config) karena gk bisa. pake yang $this->upload->initialize($config);
               
            if ( ! $this->upload->do_upload('userfile')) {
	        	//file gagal di upload -> kembali ke form tambah
                $result = array('error' => $this->upload->display_errors());
	        } else {
                $tanggal = $this->input->post('tanggal');
                $tanggalExplode = explode('-',$tanggal);

                $bulan_romawi = $this->reformatBulanRomawi((int) $tanggalExplode[1]);

                $npd = $this->input->post('npd');
                $kegiatan = $this->input->post('kegiatan');
                $jumlah = $this->input->post('jumlah');

                $getNpd    = $this->global->getLastRecord('npd');
                if($getNpd->num_rows() > 0) 
                {
                    $getNpd = $getNpd->row_array();
                    $explode = explode('/',$getNpd['nomor']);
                    $nomor_npd = $explode[0];
                    $count_number = sprintf("%04d", (int) $nomor_npd + 1);
                } 
                else 
                {
                    $count_number = '0001';
                }
                
                $nomor = (string) $count_number.'/NPD/'.$npd.'/'.$bulan_romawi.'/'.$tanggalExplode[0];
                // dd($nomor);

                $data = [
                    'npd' => $this->input->post('npd'), 
                    'kegiatan' => $this->input->post('kegiatan'), 
                    'tanggal' => $tanggal, 
                    'jumlah' => $this->input->post('jumlah'), 
                    'nomor' => $nomor,
                    'image_surat' => $_FILES['userfile']['name']
                ];
                
                $create_npd = $this->global->create('npd', $data);

                if (!$create_npd) {
                    $result['error']	= FALSE;
                    $result['type']		= 'error';
                    $result['message']	= 'Failed created';
                } else {
                    $result['error']	= FALSE;
                    $result['type']		= 'success';
                    $result['message']	= 'Success created';
                }
            }	
            echo json_encode($result);
        }
    }

    public function update()
    {
        $this->functions->check_access2($this->session->role_id, $this->uri->segment(1), $this->uri->segment(2)); // access add, update, delete
		$this->form_validation->set_rules('kegiatan', 'Kegiatan', 'trim|required');
		$this->form_validation->set_rules('npd', 'Npd', 'trim|required');
		$this->form_validation->set_rules('tanggal', 'Tanggal', 'trim|required');
		$this->form_validation->set_rules('jumlah', 'Jumlah', 'trim|required');
		if ($this->form_validation->run() == FALSE) {
			$id 			= decode($this->uri->segment(3));
            $data['surat'] 	= $this->global->getCond('npd','*',['id'=>$id])->row_array();
			(isset($data['surat'])) ? $data['surat'] : show_404();
			$this->slice->view('f_surat', $data);	
		} else {
            $id = decode($this->input->post('id'));
            if ( $_FILES['userfile']['name'] == '') {
                
                $tanggal = $this->input->post('tanggal');
                $tanggalExplode = explode('-',$tanggal);

                $bulan_romawi = $this->reformatBulanRomawi((int) $tanggalExplode[1]);

                $npd = $this->input->post('npd');
                $kegiatan = $this->input->post('kegiatan');
                $jumlah = $this->input->post('jumlah');

                $getNpd = $this->global->getCond('npd','*',['id'=>$id])->row_array();
                $explode = explode('/',$getNpd['nomor']);
                $nomor_npd = $explode[0];

                $nomor = (string) $nomor_npd.'/NPD/'.$npd.'/'.$bulan_romawi.'/'.$tanggalExplode[0];
                
                $data = [
                    'npd' => $this->input->post('npd'), 
                    'kegiatan' => $this->input->post('kegiatan'), 
                    'tanggal' => $tanggal, 
                    'jumlah' => $this->input->post('jumlah'),
                    'nomor' => $nomor
                ];

                $update = $this->global->update('npd', $data, ['id' => $id]);
                // dd($update);
            } else {
                $config['upload_path']          = './assets/images/surat/';
                $config['allowed_types']        = 'jpg|png|pdf';
                $config['max_size']             = 1024*10; // 10 mb
                // $config['max_width']            = 2000;
                // $config['max_height']           = 1500;
                $this->upload->initialize($config); // $this->load->library('upload', $config) karena gk bisa. pake yang $this->upload->initialize($config);
                
                if ( ! $this->upload->do_upload('userfile')) {
                    //file gagal di upload -> kembali ke form tambah
                    return $result = array('error' => $this->upload->display_errors());
                } else {
                    $tanggal = $this->input->post('tanggal');
                    $tanggalExplode = explode('-',$tanggal);
    
                    $bulan_romawi = $this->reformatBulanRomawi((int) $tanggalExplode[1]);
    
                    $npd = $this->input->post('npd');
                    $kegiatan = $this->input->post('kegiatan');
                    $jumlah = $this->input->post('jumlah');
    
                    $getNpd = $this->global->getCond('npd','*',['id'=>$id])->row_array();
                    $explode = explode('/',$getNpd['nomor']);
                    $nomor_npd = $explode[0];
    
                    $nomor = (string) $nomor_npd.'/NPD/'.$npd.'/'.$bulan_romawi.'/'.$tanggalExplode[0];
                    
                    $data = [
                        'npd' => $this->input->post('npd'), 
                        'kegiatan' => $this->input->post('kegiatan'), 
                        'tanggal' => $tanggal, 
                        'jumlah' => $this->input->post('jumlah'),
                        'nomor' => $nomor,
                        'image_surat' => $_FILES['userfile']['name']
                    ];

                    $update = $this->global->update('npd', $data, ['id' => $id]);
                }
            }
            if (!$update ) {
                $result['error']	= FALSE;
                $result['type']		= 'error';
                $result['message']	= 'Failed updated';
            } else {
                $result['error']	= FALSE;
                $result['type']		= 'success';
                $result['message']	= 'Success updated';
            }

            echo json_encode($result);
        }
    }

    public function reformatBulanRomawi($bulan) 
    {
        $bulan_romawi = [
            0 => '',
            1 => 'I',
            2 => 'II',
            3 => 'III',
            4 => 'IV',
            5 => 'V',
            6 => 'VI',
            7 => 'VII',
            8 => 'VIII',
            9 => 'IX',
            10 => 'X',
            11 => 'XI',
            12 => 'XII',
        ];

        return $bulan_romawi[$bulan];
    }

}