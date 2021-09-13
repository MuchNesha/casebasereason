<?= $this->extend('welcome_message') ?>
<?= $this->section('content') ?>
<script src="assets/js/sweetalert2-all.js"></script>
<div class="card">
    <div class="card-body">
        <!-- <button onclick="tambah()" style="padding-top:10px;padding-bottom:10px;" class="px-4 btn mb-2 btn-sm btn-secondary">Tambah <i class="fa fa-plus"></i></button>
        <button type="button" style="padding-top:10px;padding-bottom:10px;" class="px-4 btn mb-2 btn-sm btn-primary action-select" data-target="modal">Edit <i class="fa fa-pencil-alt"></i></button> -->
        <table class="table table-bordered table-hover text-center">
            <thead>
                <th>Id riwayat</th>
                <th>Nama</th>
                <th>Alamat</th>
                <th>Hasil Diagnosa</th>
                <th>Nilai</th>
                <th>Persen</th>
                <th>Pemilihan Ciri ciri / Gejala</th>
            </thead>
            <tbody>
                <?php foreach ($riwayat as $r) : ?>
                    <tr>
                        <td><?= $r['id_riwayat'] ?></td>
                        <td><?= $r['nama']; ?></td>
                        <td><?= $r['alamat']; ?></td>
                        <td><?= $r['hasil_diagnosa']; ?></td>
                        <td><?= $r['nilai'] ?></td>
                        <td><?= $r['nilai'] * 100 ?>%</td>
                        <td>
                            <a href="#kerusakan<?= $r['id_riwayat'] ?>" data-toggle="modal" class="btn btn-sm btn-danger">Lihat pemilihan Ciri</a>
                        </td>
                    </tr>
                <?php endforeach ?>
            </tbody>
        </table>

        <div class="row">
            <div class="col-12 d-flex justify-content-center">
                <?= $pager->links('table', 'user_pager'); ?>
            </div>
        </div>
    </div>
</div>
<?php foreach ($kerusakan as $k) : ?>
    <div class="modal fade" id="kerusakan<?= $k->id_riwayat ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Data dari <?= $k->nama ?></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card">
                        <div class="card-header">
                            Kerusakan / gejala yang dialami : 
                        </div>
                        <div class="card-body">
                            <blockquote class="blockquote mb-0">
                                <p><?= $k->gejala_kerusakan ?></p>
                            </blockquote>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
<?php endforeach ?>
<script>
    <?php if (session()->getFlashData('insert')) : ?>
        Swal.fire({
            icon: 'success',
            title: 'Berhasil disimpan',
            showConfirmButton: false,
            timer: 950
        })
    <?php endif ?>
</script>
<?= $this->endSection() ?>