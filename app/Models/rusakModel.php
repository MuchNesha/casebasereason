<?php

namespace App\Models;

use CodeIgniter\Model;

class rusakModel extends Model
{
    protected $table = 'rusak';
    protected $primaryKey = 'kerusakan_id';
    protected $allowedFields =
    [
        'kerusakan_jenis',
        //'kerusakan_foto',
        'kerusakan_deskripsi',
    ];

    public function get_rusak()
    {
        $builder =  $this->db->table('rusak');
        $builder->select('*');
        return $builder->get();
    }

    public function updaterusak($data, $id)
    {
        $query = $this->db->table('rusak')->update($data, array('kerusakan_id' => $id));
        return $query;
    }

    public function updateciri($data, $id)
    {
        $query = $this->db->table('ciri')->update($data, array('ciri_id' => $id));
        return $query;
    }

    public function get_hub()
    {
        $hub = $this->db->table('hub');
        $hub->select('*');
        $hub->join('rusak', 'rusak.kerusakan_id = hub.hub_solusi');
        $hub->join('ciri', 'ciri.ciri_id = hub.hub_ciri');
        $query = $hub->get();
        return $query;
    }
}
