<?php

namespace App\Models;

use CodeIgniter\Model;

class kucingModel extends Model
{
    protected $table = 'kucing';
    protected $primaryKey = 'kerusakan_id';
    protected $allowedFields =
    [
        'kerusakan_jenis',
        'kerusakan_foto',
        'kerusakan_deskripsi',
    ];
}
