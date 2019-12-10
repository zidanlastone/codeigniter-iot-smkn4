<?php
class Stb_model extends CI_Model
{
	public function getStb($alat=null,$all=null)
	{
		if ($alat==null) {
			return $this->db->get('stb')->result_array();
		}
		else {
			if ($all==null) {
				return $this->db->order_by('id','DESC')->get_where('stb',['alat'=>$alat])->result_array();
			}
			else {
				return $this->db->order_by('id','DESC')->get_where('stb',['alat'=>$alat],1,0)->result_array();
			}
		}
	}
	public function insertStb($data) {
		$this->db->insert('stb',$data);
		return $this->db->affected_rows();
	}

	public function updateStb($data, $where){
		$this->db->update('stb', $data, $where);
		return $this->db->affected_rows();
	}
}

/* End of file Stb_model.php */
/* Location: ./application/models/Stb_model.php */