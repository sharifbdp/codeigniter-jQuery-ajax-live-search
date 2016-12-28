<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{
		$this->load->view('welcome_message');
	}

        public function autocomplete()
        {
                // load model
                $this->load->model('Welcome_model');

                $search_data = $this->input->post('search_data');

                $result = $this->Welcome_model->get_autocomplete($search_data);

                if (!empty($result))
                {
                    foreach ($result as $row):
                        echo "<li><a href='#'>" . $row->name . "</a></li>";
                    endforeach;
                }
                else
                {
                    echo "<li> <em> Not found ... </em> </li>";
                }

        }
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */