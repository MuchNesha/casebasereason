<?php

namespace App\Models;

use CodeIgniter\Model;

class gejalaModel extends Model
{
    protected $table = 'rw_gejala';
    protected $primaryKey = 'id';
    protected $allowedFields =
    [
        'id',
        'id_riwayat',
        'gejala_kerusakan',
    ];
}