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
<?= $this->endSection() ?>