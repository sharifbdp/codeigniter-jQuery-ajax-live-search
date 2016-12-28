<?php

class Welcome_model extends CI_Model {

        public function get_autocomplete($search_data)
        {
                $this->db->select('name, id');
                $this->db->like('name', $search_data);

                return $this->db->get('fruits', 10)->result();
        }

}
