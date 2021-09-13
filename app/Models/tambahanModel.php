<?php

namespace App\Models;

use CodeIgniter\Model;

class tambahanModel extends Model
{
    protected $table = 'tambahan';
    protected $primaryKey = 'id';
    protected $allowedFields =
    [
        'id',
        'nama',
        'alamat',
    ];

    public function get_riwayatbyid()
    {
        $rw = $this->db->table('tambahan');
        $rw->select('*');
        $rw->orderBy('id', 'DESC');
        $rw->limit('1');
        $query = $rw->get();
        return $query;
    }
}