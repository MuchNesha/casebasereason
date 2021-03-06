<?php

namespace App\Models;

use CodeIgniter\Model;

class riwayatModel extends Model
{
    protected $table = 'riwayat_konsultasi';
    protected $primaryKey = 'id';
    protected $allowedFields =
    [
        'id_riwayat',
        'nama',
        'alamat',
        'hasil_diagnosa',
        'nilai',
    ];

    public function get_riwayatbyid()
    {
        $rw = $this->db->table('riwayat_konsultasi');
        $rw->select('*');
        $rw->orderBy('id_riwayat', 'DESC');
        $rw->limit('1');
        $query = $rw->get();
        return $query;
    }

    public function get_all()
    {
        $hub = $this->db->table('riwayat_konsultasi');
        $hub->select('*');
        $hub->join('rw_gejala', 'rw_gejala.id_riwayat = riwayat_konsultasi.id_riwayat');
        $query = $hub->get();
        return $query;
    }

    public function update_riwayat($data, $id)
    {
        $query = $this->db->table('riwayat_konsultasi')->update($data, array('id_riwayat' => $id));
        return $query;
    }
}