<?= $this->extend('welcome_message') ?>
<?= $this->section('content') ?>
<style>
    .img-show {
        width: 50px;
        transition: cubic-bezier(0.175, 0.885, 0.32, 1.275) 0.5s;
    }

    .img-show:hover {
        width: 200px
    }
</style>
<script src="assets/js/sweetalert2-all.js"></script>
<div class="card">
    <div class="card-body">
        <button onclick="tambah()" style="padding-top:10px;padding-bottom:10px;" class="px-4 btn mb-2 btn-sm btn-secondary">Tambah <i class="fa fa-plus"></i></button>
        <button type="button" style="padding-top:10px;padding-bottom:10px;" class="px-4 btn mb-2 btn-sm btn-primary action-select" data-target="modal">Edit <i class="fa fa-pencil-alt"></i></button>
        <table class="table table-bordered table-hover text-center">
            <thead>
                <th>id</th>
                <th>Kode</th>
                <th>Jenis</th>
                <th>Foto</th>
                <th>Aksi</th>
            </thead>
            <tbody>
                <?php foreach ($kucing as $k) : ?>
                    <tr>
                        <td><input type="checkbox" class="check" value="<?= $k['kerusakan_id'] ?>"></td>
                        <td>C-<?= $k['kerusakan_id']; ?></td>
                        <td><?= $k['kerusakan_jenis']; ?></td>
                        <td><img class="img-show" src="assets/img/<?= $k['kerusakan_foto']; ?>" alt=""></td>
                        <td>
                            <!-- <button type="button" class="btn btn-sm btn-outline-success btn-edit" data-kerusakan_id="<?= $k['kerusakan_id']; ?>" data-kerusakan_jenis="<?= $k['kerusakan_jenis'] ?>" data-kerusakan_foto="<?= $k['kerusakan_foto']; ?>" data-kerusakan_deskripsi="<?= $k['kerusakan_deskripsi']; ?>"><i class="fa fa-pencil-alt"></i></button> -->
                            <button class="btn btn-sm btn-danger" onclick="hapus(<?= $k['kerusakan_id']; ?>)"><i class="fa fa-trash-alt"></i></button>
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
<!-- <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div> -->
<div class="modal fade" id="editkucing" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="col-12" action="<?= base_url('Admin/kucing_edit') ?>" method="post" enctype="multipart/form-data">
                    <?php csrf_field(); ?>
                    <div class="col-12 d-flex justify-content-between">
                        <div class="form-group col-12 d-flex flex-column align-items-start">
                            <label for="nama">Jenis</label>
                            <input type="text" name="kerusakan_jenis" required class=" m-2 form-control" id="kerusakan_jenis">
                            <input type="hidden" name="kerusakan_id" required class=" m-2 form-control" id="kerusakan_id">
                        </div>
                    </div>
                    <div class="col-12 d-flex justify-content-between">
                        <div class="form-group col-12 d-flex flex-column align-items-start">
                            <label for="namaf">Foto</label>
                            <input type="text" name="kerusakan_foto" required class=" m-2 form-control" id="kerusakan_foto">
                        </div>
                    </div>
                    <div class="col-12 d-flex justify-content-between">
                        <div class="form-group col-12 d-flex flex-column align-items-start">
                            <label for="namad">Deskripsi</label>
                            <textarea type="text" name="kerusakan_deskripsi" class=" m-2 form-control" id="kerusakan_deskripsi"></textarea>
                        </div>
                    </div>
                    <div class="col-12 d-flex justify-content-end">
                        <button type="submit" class="my-2 btn btn-primary">Simpan</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
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
            text: "Jenis sudah pernah ditambahkan",
        })
    <?php endif ?>
    // $(document).ready(function() {
    //     $('.btn-edit').on('click', function() {
    //         // get data from button edit
    //         const id = $(this).data('kerusakan_id');
    //         const kj = $(this).data('kerusakaan_jenis');
    //         const kf = $(this).data('kerusakan_foto');
    //         const kd = $(this).data('kerusakan_deskripsi');
    //         // Set data to Form Edit
    //         $('.kerusakan_id').val(id);
    //         $('.kerusakan_jenis').val(kj);
    //         $('.kerusakan_foto').val(kf);
    //         $('.kerusakan_deskripsi').val(kd);
    //         // Call Modal Edit
    //         $(window).load(function() {
    //             $('#editkucing').modal('show');
    //         });
    //     });
    // });

    function tambah() {
        let view = `
    <form class="col-12" action="<?= route_to('kucing_save'); ?>" method="post">
            <?php csrf_field(); ?>
            <div class="col-12 d-flex justify-content-between">
                <div class="form-group col-12 d-flex flex-column align-items-start">
                    <label for="nama">Jenis</label>
                    <input type="text" name="kerusakan_jenis" required class=" m-2 form-control" id="nama">
                </div>
            </div>
            <div class="col-12 d-flex justify-content-between">
                <div class="form-group col-12 d-flex flex-column align-items-start">
                    <label for="namaf">Foto</label>
                    <input type="text" name="kerusakan_foto" required class=" m-2 form-control" id="namaf">
                </div>
            </div>
            <div class="col-12 d-flex justify-content-between">
                <div class="form-group col-12 d-flex flex-column align-items-start">
                    <label for="namad">Deskripsi</label>
                    <textarea type="text" name="kerusakan_deskripsi" class=" m-2 form-control" id="namad"></textarea>
                </div>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <button type="submit" class="my-2 btn btn-primary">Simpan</button>
            </div>
        </form>
        `;
        Swal.fire({
            title: 'Tambah data',
            showConfirmButton: false,
            html: view,

        })
    }

    $('.action-select').click(function(e) {
        e.preventDefault();
        var arr = [];
        var checkedvalue = $(".check:checked").val();
        console.log('checked', checkedvalue);
        $('#editkucing').modal('show');
        $.ajax({
            url: '/kucing/get/' + checkedvalue,
            type: "GET",
            dataType: "JSON",
            success: function(result) {
                $('[name="kerusakan_jenis"]').val(result.kerusakan_jenis);
                $('[name="kerusakan_foto"]').val(result.kerusakan_foto);
                $('[name="kerusakan_id"]').val(result.kerusakan_id);
                $('[name="kerusakan_deskripsi"]').val(result.kerusakan_deskripsi);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert('Data Error');
            }
        })
    });

    function edit(id) {

        fetch('/kucing/get/' + id)
            // .then(res => JSON.parse(res))
            .then(res => {
                let view = `
                <form class="col-12" action="/kucing/edit/` + id + `" method="post">
                <?php csrf_field(); ?>
                    <div class="col-12 d-flex justify-content-between">
                        <div class="form-group col-12 d-flex flex-column align-items-start">
                            <label for="nama">Jenis</label>
                            <input type="text" name="kerusakan_jenis" value="${$res.kerusakan_jenis}"  required class=" m-2 form-control" id="kerusakan_jenis">
                            <input type="hidden" name="kerusakan_id" required class=" m-2 form-control" id="id">
                        </div>
                    </div>
                    <div class="col-12 d-flex justify-content-between">
                        <div class="form-group col-12 d-flex flex-column align-items-start">
                            <label for="namaf">Foto</label>
                            <input type="text" name="kerusakan_foto" required class=" m-2 form-control" id="kerusakan_foto">
                        </div>
                    </div>
                    <div class="col-12 d-flex justify-content-between">
                        <div class="form-group col-12 d-flex flex-column align-items-start">
                            <label for="namad">Deskripsi</label>
                            <textarea type="text" name="kerusakan_deskripsi" class=" m-2 form-control" id="kerusakan_deskripsi"></textarea>
                        </div>
                    </div>
                    <div class="col-12 d-flex justify-content-end">
                        <button type="submit" class="my-2 btn btn-primary">Simpan</button>
                    </div>
                </form> `;
                Swal.fire({
                    title: 'Edit data',
                    showConfirmButton: false,
                    html: view
                })

            })
    }

    function hapus(id) {


        Swal.fire({
            title: 'Apakah anda yakin?',
            text: "Data yang dipilih akan dihapus",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya, lanjut'
        }).then((result) => {
            if (result.value) {
                fetch('/kucing/hapus/' + id)
                    .then(res => res.json())
                    .then(res => {
                        Swal.fire({
                            icon: 'success',
                            title: 'Berhasil dihapus',
                            showConfirmButton: false,
                            timer: 950
                        }).then(() => {
                            document.location.reload();
                        })
                    })
            }
        })
    }
</script>
<?= $this->endSection() ?>