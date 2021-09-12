<?php

namespace App\Models;

use CodeIgniter\Model;

class riwayatModel extends Model
{
    protected $table = 'riwayat_konsultasi';
    protected $primaryKey = 'id_riwayat';
    protected $allowedFields =
    [
        'nama',
        'alamat',
        'hasil_diagnosa',
        'nilai',
    ];
}