<?= $this->extend('welcome_message') ?>
<?= $this->section('content') ?>
<script src="assets/js/sweetalert2-all.js"></script>
<form action="<?= route_to('save_riwayat'); ?>" method="post">
    <?php csrf_field(); ?>
    <!-- <input type="hidden" name="id_riwayat" value="<?= $history['id_riwayat'] ?>">
    <input type="text" readonly name="nama" value="<?= $history['nama'] ?>">
    <input type="text" readonly name="alamat" value="<?= $history['alamat'] ?>"> -->
    <div class="mb-4 pb-4 d-flex flex-wrap">
        <span class="col-12 m-1">Pilih ciri-ciri yang cocok:</span>
        <?php $i = 0;
        foreach ($ciri as $c) : ?>
            <div class="col-12 col-sm-5 col-md-3 m-1">

                <div class="input-group card">
                    <div class="card-body">
                        <input type="checkbox" class="checkbox1" value="<?= $c['ciri_ciri'] ?>" name="gejala_kerusakan[]" id="x-<?= $i; ?>" onclick="stat(this,<?= $i++; ?>)">
                        <input type="hidden" name="" value="<?= $c['ciri_ciri'] ?>">
                        <?php foreach ($riwayat as $r) : ?>
                            <input type="hidden" class="checkbox2" value="<?= $r->id ?>" name="id_riwayat">
                        <?php endforeach ?>
                        <label for="x-<?= $i - 1; ?>" style="font-size:80%"><?= $c['ciri_ciri']; ?></label>
                    </div>
                </div>
            </div>
        <?php endforeach ?>
        <div class="col-12 d-flex justify-content-center mt-2">
            <a href="#" type="submit" class="btn btn-outline-secondary p-3 px-4 m-2" id="val">Lihat hasil &nbsp; <i class="fa fa-external-link-alt"></i></a>
            <button type="submit" class="btn btn-outline-primary p-3 px-4 m-2">Simpan</button>
        </div>
    </div>
</form>
<script>
    <?php if (session()->getFlashData('insert')) : ?>
        Swal.fire({
            icon: 'success',
            title: 'Berhasil menambah',
            showConfirmButton: false,
            timer: 950
        })
    <?php endif ?>
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

    // $(document).ready(function() {
    //     $('.checkbox1').click(function(event) {
    //         if (this.checked) {
    //             $('.checkbox1').each(function() {
    //                 this.checked = true;
    //             });
    //         } else {
    //             $('.checkbox1').each(function() {
    //                 this.checked = false;
    //             });
    //         }
    //     });
    // });
    // $(".checkbox1").on("click", function() {
    //     if ($(".checkbox1:checked").length < 2) {
    //         $('.checkbox2').each(function() {
    //             this.checked = true;
    //         });
    //     } else {
    //         $('.checkbox2').each(function() {
    //             this.checked = false;
    //         });
    //     }
    // });
</script>
<?= $this->endSection() ?>