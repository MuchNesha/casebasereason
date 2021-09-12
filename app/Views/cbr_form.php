<?= $this->extend('welcome_message') ?>
<?= $this->section('content') ?>
<form action="<?= base_url('Admin/rw_gejala') ?>" method="post">
    <input type="hidden" name="id_riwayat" value="<?= $history['id_riwayat'] ?>">
    <input type="text" readonly name="nama" value="<?= $history['nama'] ?>">
    <input type="text" readonly name="alamat" value="<?= $history['alamat'] ?>">
    <div class="mb-4 pb-4 d-flex flex-wrap">
        <span class="col-12 m-1">Pilih ciri-ciri yang cocok:</span>
        <?php $i = 0;
        foreach ($ciri as $c) : ?>
            <div class="col-12 col-sm-5 col-md-3 m-1">

                <div class="input-group card">
                    <div class="card-body">
                        <input type="checkbox" name="" id="x-<?= $i; ?>" onclick="stat(this,<?= $i++; ?>)">
                        <input type="hidden" name="gejala_kerusakan" value="<?= $c['ciri_ciri'] ?>">
                        <input type="hidden" value="<?= $history['id_riwayat'] ?>" name="id_riwayat">
                        <label for="x-<?= $i - 1; ?>" style="font-size:80%"><?= $c['ciri_ciri']; ?></label>
                    </div>
                </div>
            </div>
        <?php endforeach ?>
        <div class="col-12 d-flex justify-content-center mt-2">
            <a href="#" type="submit" class="btn btn-outline-secondary p-3 px-4 m-2" id="val">Lihat hasil &nbsp; <i class="fa fa-external-link-alt"></i></a>
        </div>
    </div>
</form>
<script>
    let dat = [
        <?php foreach ($ciri as $c) : ?>
            0,
        <?php endforeach ?>
    ]
    let strdat = ""

    function rect() {
        strdat = ""
        dat.forEach(v => {
            strdat += v
        })
        document.getElementById('val').href = "/cbr/" + strdat
    }
    rect()

    function stat(t, v) {
        dat[v] = t.checked ? 1 : 0
        rect()
    }
</script>
<?= $this->endSection() ?>