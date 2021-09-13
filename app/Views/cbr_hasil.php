<?= $this->extend('welcome_message') ?>
<?= $this->section('content') ?>
<script src="assets/js/sweetalert2-all.js"></script>
<style>
    .img-show {
        transition: cubic-bezier(0.175, 0.885, 0.32, 1.275) 0.5s;
    }

    .img-show:hover {
        width: 200%
    }
</style>
<div class="mb-4 pb-4">
    <?php if ($fhasil > 0) : ?>
        <button onclick="sh()" class="p-3 btn btn-sm btn-outline-success mb-2"><i class="fa fa-chart-bar"></i>
            perhitungan</button>
        <div id="proses">

            <?php foreach ($tmp as $t) : ?>
                <div class="card m-2">
                    <div class="card-body">

                        <?= $t['rusak']; ?> <br>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        = <?php foreach ($t['data'] as $d) : ?>
                            ( 1 x <?= $d['bobot']; ?>) +
                            <?php endforeach ?>0 / <?= $t['all']; ?>
                            <br>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            = <?= $t['total'] . " / " . $t['all']; ?>
                            <br>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            = <?= $t['hasil']; ?> <span class="text-danger">(<?= $t['hasil'] * 100; ?>%)</span>
                    </div>
                </div>
            <?php endforeach ?>
        </div>
        <h2>Hasil: </h2>
        <form method="post" action="<?= route_to('save_data_rw'); ?>">
            <?php csrf_field(); ?>
            <?php foreach ($arrhasil as $ar) : ?>
                <?php if ($ar['hasil'] == $fhasil) : ?>
                    <div class="col-12 m-2 d-flex flex-wrap justify-content-between">
                        <span class="col-12"><?= $ar['rusak']; ?> : <b><?= $fhasil; ?></b> <span class="text-success">(<?= $fhasil * 100; ?>%)</span></span>
                        <div class="col-1">
                            <?php foreach ($riwayat as $r) : ?>
                                <input type="text" name="id_riwayat" value="<?= $r->id ?>">
                                <input type="hidden" name="nama" value="<?= $r->nama ?>">
                                <input type="hidden" name="alamat" value="<?= $r->alamat ?>">
                            <?php endforeach; ?>
                            <input type="hidden" name="hasil_diagnosa[]" value="<?= $ar['rusak']; ?>">
                            <input type="hidden" name="nilai" value="<?= $fhasil; ?>">
                            <!--<img src="/assets/img/<//?= $ar['foto']; ?>" class="col-12 img-show" alt="">-->
                        </div>
                        <div class="col-8">
                            <?= $ar['deskripsi']; ?>
                        </div>
                    </div>
                    <!-- <p><//?= $ar['foto']; ?></p> -->
                <?php endif ?>
            <?php endforeach ?>
            <button type="submit" class="btn btn-outline-primary p-3 px-4 m-2">Simpan</button>
        </form>

    <?php else : ?>
        Tidak ada data yang cocok <br>
        <a href="<?= route_to('cbr_form'); ?>" class="btn btn-outline-success btn-sm mt-2">kembali</a>
    <?php endif ?>
</div>
<script>
    <?php if (session()->getFlashData('insert')) : ?>
        Swal.fire({
            icon: 'success',
            title: 'Berhasil disimpan',
            showConfirmButton: false,
            timer: 950
        })
    <?php endif ?>
    let d = document.getElementById("proses")
    d.style.display = "none";
    let state = false;

    function sh() {
        if (state) {
            state = false;
            d.style.display = "none";
        } else {
            state = true;
            d.style.display = "initial";
        }
    }
</script>
<?= $this->endSection() ?>