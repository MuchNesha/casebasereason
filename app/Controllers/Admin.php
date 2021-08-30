<?php

namespace App\Controllers;

use App\Models\rusakModel;
use CodeIgniter\Config\View;

class Admin extends BaseController
{
    public function __construct()
    {
        $this->rusak = new \App\Models\rusakModel();
        $this->ciri = new \App\Models\ciriModel();
        $this->hub = new \App\Models\hubModel();
        $this->db      = \Config\Database::connect();
    }
    public function index()
    {
        return view('homepage.php');
    }
    public function rusak()
    {
        $model = new rusakModel();
        $current = $this->request->getVar('page_table') ? $this->request->getVar('page_table') : 1;
        $data = [
            'rusak' => $this->rusak->paginate(4, 'table'),
            'pager' => $this->rusak->pager,
            'current' => $current,
        ];
        $data['rusak2'] = $model->get_rusak()->getResult();
        return view('rusak_list', $data);
    }
    public function rusak_get($id)
    {
        // return $this->rusak->get($id)->row();
        echo json_encode($this->rusak->find($id));
    }
    public function rusak_add()
    {
        $var = $this->request->getVar();
        $c = $this->rusak->where('kerusakan_jenis', $var['kerusakan_jenis'])->first();
        if ($c != null) {
            session()->setFlashData('finsert', true);
            return redirect()->to('/rusak');
        }
        $this->rusak->save([
            'kerusakan_jenis' => $var['kerusakan_jenis'],
            //'kerusakan_foto' => $var['kerusakan_foto'],
            'kerusakan_deskripsi' => $var['kerusakan_deskripsi'],
        ]);
        session()->setFlashData('insert', true);
        return redirect()->to('/rusak');
    }
    public function rusak_edit()
    {
        $model = new rusakModel();
        $id = $this->request->getPost('kerusakan_id');
        $data = array(
            'kerusakan_jenis'        => $this->request->getPost('kerusakan_jenis'),
           // 'kerusakan_foto'       => $this->request->getPost('kerusakan_foto'),
            'kerusakan_deskripsi' => $this->request->getPost('kerusakan_deskripsi'),
        );
        $model->updaterusak($data, $id);
        session()->setFlashData('update', true);
        return redirect()->to('/rusak');
    }
    public function rusak_hapus($id)
    {
        $this->rusak->delete($id);
        // dd(true);
        return json_encode(['status' => 200]);
    }
    //end 
    public function ciri()
    {
        $current = $this->request->getVar('page_table') ? $this->request->getVar('page_table') : 1;
        $data = [
            'ciri' => $this->ciri->paginate(4, 'table'),
            'pager' => $this->ciri->pager,
            'current' => $current,
        ];
        return view('ciri_list', $data);
    }
    public function ciri_get($id)
    {
        echo json_encode($this->ciri->find($id));
    }
    public function ciri_add()
    {
        $var = $this->request->getVar();
        $c = $this->ciri->where('ciri_ciri', $var['ciri_ciri'])->first();
        if ($c != null) {
            session()->setFlashData('finsert', true);
            return redirect()->to('/rusak');
        }
        $this->ciri->save([
            'ciri_ciri' => $var['ciri_ciri'],
            'ciri_bobot' => $var['ciri_bobot'],
        ]);
        session()->setFlashData('insert', true);
        return redirect()->to('/ciri');
    }
    public function ciri_edit()
    {
        $model = new rusakModel();
        $id = $this->request->getPost('ciri_id');
        $data = array(
            'ciri_ciri'        => $this->request->getPost('ciri_ciri'),
            'ciri_bobot'       => $this->request->getPost('ciri_bobot'),
        );
        $model->updateciri($data, $id);
        session()->setFlashData('update', true);
        return redirect()->to('/ciri');
    }
    public function ciri_hapus($id)
    {
        $this->ciri->delete($id);
        // dd(true);
        return json_encode(['status' => 200]);
    }
    //hub

    public function hub()
    {
        $model = new rusakModel();
        $data = [
            'rusak' => $this->rusak->findAll(),
            'ciri' => $this->ciri->findAll(),
            'hub' => $model->get_hub()->getResult()
        ];
        //$data['hubb'] = $model->hub()->();
        return view('hub_list', $data);
    }

    public function hub_cat($id)
    {
        $res = $this->hub->where("hub_solusi", $id)->findAll();
        $j = 0;
        foreach ($res as $r)
            $j++;
        for ($i = 0; $i < $j; $i++) {
            $temp = $this->ciri->find($res[$i]['hub_ciri']);
            $res[$i]['ciri_nama'] = $temp['ciri_ciri'];
        }
        echo json_encode($res);
    }

    public function hub_get($id)
    {
        $res = $this->hub->find($id);
        $j = 0;
        foreach ($res as $r)
            $j++;
        $temp = $this->rusak->find($res['hub_solusi']);
        $res['kerusakan_jenis'] = $temp['kerusakan_jenis'];
        $temp = $this->ciri->find($res['hub_ciri']);
        $res['ciri_ciri'] = $temp['ciri_ciri'];
        echo json_encode($res);
    }
    public function hub_add()
    {
        // $this->session->set('');
        $var = $this->request->getVar();
        $c = $this->hub->where([
            'hub_ciri' => $var['hub_ciri'],
            'hub_solusi' => $var['hub_solusi'],
        ])->first();
        if ($c != null) {
            session()->setFlashData('finsert', true);
            return redirect()->to('/hub');
        }

        $this->hub->save([
            'hub_solusi' => $var['hub_solusi'],
            'hub_ciri' => $var['hub_ciri'],
        ]);
        session()->setFlashData('insert', true);
        return redirect()->to('/hub');
    }
    public function hub_edit($id)
    {
        $var = $this->request->getVar();
        $this->hub->save([
            'hub_id' => $id,
            'hub_ciri' => $var['hub_ciri'],
            'hub_solusi' => $var['hub_solusi'],
        ]);
        session()->setFlashData('update', true);
        return redirect()->to('/hub');
    }
    public function hub_hapus($id)
    {
        $this->hub->delete($id);
        // dd(true);
        //return json_encode(['status' => 200]);
        return redirect()->to('/hub');
    }

    //metode
    public function cbr($arr)
    {
        $arrhasil = [];
        $fhasil = 0.00;
        $r = str_split($arr);
        $cat = $this->rusak->findAll();
        $ciri = $this->ciri->findAll();
        $tmp = [];
        $o = 0;
        $nilai = 0;
        $ciriAll = 0;
        foreach ($r as $rs) {
            if ($rs == "1") {
                $ciriAll += $ciri[$nilai]['ciri_bobot'];
            }
            $temp[$nilai] = [
                'name' => $ciri[$nilai]['ciri_id'],
                'bobot' => $ciri[$nilai]['ciri_bobot'],
                'status' => $r[$nilai],
            ];
            $nilai++;
        }

        //     $o++;
        // for ($i = 0; $i < $o; $i++) {
        //     $temp[$i] = [
        //         'name' => $ciri[$i]['ciri_id'],
        //         'bobot' => $ciri[$i]['ciri_bobot'],
        //         'status' => $r[$i],
        //     ];

        foreach ($cat as $c) {
            $temp2 = [];
            $total = 0;
            $hub = $this->hub->where('hub_solusi', $c['kerusakan_id'])->findAll();
            foreach ($hub as $h) {
                foreach ($temp as $t) {
                    if ($t['name'] == $h['hub_ciri'] && $t['status'] == 1) {
                        $s = true;
                        foreach ($temp2 as $t2) {
                            if ($t2['name'] == $t['name'])
                                $s = false;
                        }
                        if ($s) {
                            // d([
                            //     'c' => $c['kerusakan_jenis'],
                            //     't' => $t['name'],
                            //     'h' => $h['hub_ciri'],
                            // ]);
                            array_push($temp2, [
                                'name' => $t['name'],
                                'bobot' => $t['bobot'],
                            ]);
                        }
                    }
                }
                $ciriH = $this->ciri->find($h['hub_ciri']);
                // $ciriAll += $ciriH['ciri_bobot'];
            }
            foreach ($temp2 as $te) {
                $total += $te['bobot'];
            }
            // foreach ($temp as $te) {
            //     $ciriAll += $te['bobot'];
            // }
            // d($temp2);
            // d($total);
            $hasil = round(($total / $ciriAll), 2);
            array_push($arrhasil, [
                'rusak' => $c['kerusakan_jenis'],
                //'foto' => $c['kerusakan_foto'],
                'deskripsi' => $c['kerusakan_deskripsi'],
                'hasil' => $hasil
            ]);
            array_push($tmp, [
                'rusak' => $c['kerusakan_jenis'],
                'data' => $temp2,
                'total' => $total,
                'all' => $ciriAll,
                'hasil' => $hasil,
            ]);
            $fhasil = $hasil > $fhasil ? $hasil : $fhasil;
        }
        // // echo "hai";
        // // d($fhasil);
        // // d($tmp);
        // // d($arrhasil);
        $data = [
            'fhasil' => $fhasil,
            'tmp' => $tmp,
            'arrhasil' => $arrhasil
        ];
        return view('cbr_hasil', $data);
    }
    public function input_cbr()
    {
        $data = [
            'ciri' => $this->ciri->findAll()
        ];
        return view('cbr_form', $data);
    }
}
