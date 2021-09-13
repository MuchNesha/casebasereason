<?= $this->extend('welcome_message') ?>
<?= $this->section('content') ?>
<script src="assets/js/sweetalert2-all.js"></script>
<div class="pb-4">
    <h1>Sistem Pakar dengan Metode CBR</h1>
    <p>
        Case Based Reasoning (CBR) merupakan suatu metode untuk menyelesaikan masalah dengan berpatokan pada
        kasus sebelumnya.Konsep dari metode case based reasoning ditemukan dari ide untuk menggunakan pengalaman
        – pengalaman yang terdokumentasi untuk menyelesaikan masalah yang baru. Permasalahan baru dapat
        diselesaikan dengan memanfaatkan kembali dan
        mungkin malakukan penyesuaian terhadap permasalahan yang memiliki kesamaan yang telah diselesaikan
        sebelumnya.
    </p>
    <div class="col-12 d-flex justify-content-center">
        <a href="#datadiri" data-toggle="modal" class="btn btn-sm p-3 mt-4 btn-outline-secondary">mulai pengujian <i class="fa fa-external-link-alt" style="font-size: 80%;"></i></a>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="datadiri" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="<?= base_url('Admin/input_cbr') ?>" method="post">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Masukkan Data Diri Terlebih Dahulu</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <?php
                    $acak = mt_rand(0, 700);
                    $tanggal = date("dmY")
                    ?>
                    <div class="form-group">
                        <label>Id</label>
                        <input type="text" readonly value="<?= $tanggal ?>-<?= $acak ?>" class="form-control" name="id_riwayat">
                    </div>
                    <div class="form-group">
                        <label>Nama</label>
                        <input type="text" class="form-control" name="nama">
                    </div>
                    <div class="form-group">
                        <label>Alamat</label>
                        <input type="text" class="form-control" name="alamat">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    <?php if (session()->getFlashData('insert')) : ?>
        Swal.fire({
            icon: 'success',
            title: 'Berhasil menambah',
            showConfirmButton: false,
            timer: 950
        })
    <?php elseif (session()->getFlashData('update')) : ?>
        Swal.fire({
            icon: 'success',
            title: 'Berhasil diubah',
            showConfirmButton: false,
            timer: 950
        })
    <?php elseif (session()->getFlashData('finsert')) : ?>
        Swal.fire({
            icon: 'error',
            title: 'Gagal menambah data',
            showConfirmButton: true,
            text: "nama sudah pernah ditambahkan",
        })
    <?php endif ?>
</script>

<?= $this->endSection() ?>