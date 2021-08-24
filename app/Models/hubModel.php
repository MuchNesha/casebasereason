<?php

namespace App\Models;

use CodeIgniter\Model;

class hubModel extends Model
{
    protected $table = 'hub';
    protected $primaryKey = 'hub_id';
    protected $allowedFields =
    [
        'hub_solusi',
        'hub_ciri',
    ];

    public function hub()
    {
        $builder =  $this->db->table('hub');
        $builder->select('*');
        return $builder->get();
    }
}
