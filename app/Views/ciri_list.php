<?= $this->extend('welcome_message') ?>
<?= $this->section('content') ?>
<script src="assets/js/sweetalert2-all.js"></script>
<div class="card">
    <div class="card-body">
        <button onclick="tambah()" style="padding-top:10px;padding-bottom:10px;" class="px-4 btn mb-2 btn-sm btn-secondary">Tambah <i class="fa fa-plus"></i></button>
        <button type="button" style="padding-top:10px;padding-bottom:10px;" class="px-4 btn mb-2 btn-sm btn-primary action-select" data-target="modal">Edit <i class="fa fa-pencil-alt"></i></button>
        <table class="table table-bordered table-hover text-center">
            <thead>
                <th>Id</th>
                <th>Kode</th>
                <th>Nama Gejala / Kasus</th>
                <th>Bobot</th>
                <th>Aksi</th>
            </thead>
            <tbody>
                <?php foreach ($ciri as $k) : ?>
                    <tr>
                    <td><input type="checkbox" class="check" value="<?= $k['ciri_id'] ?>"></td>
                        <td>G-<?= $k['ciri_id']; ?></td>
                        <td><?= $k['ciri_ciri']; ?></td>
                        <td><?= $k['ciri_bobot']; ?></td>
                        <td>
                            <!-- <button class="btn btn-sm btn-outline-success" onclick="edit(<?= $k['ciri_id']; ?>)"><i class="fa fa-pencil-alt"></i></button> -->
                            <button class="btn btn-sm btn-danger" onclick="hapus(<?= $k['ciri_id']; ?>)"><i class="fa fa-trash-alt"></i></button>
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
<div class="modal fade" id="editciri" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="col-12" action="<?= base_url('Admin/ciri_edit') ?>" method="post" enctype="multipart/form-data">
                    <?php csrf_field(); ?>
                    <div class="col-12 d-flex justify-content-between">
                        <div class="form-group col-12 d-flex flex-column align-items-start">
                            <label for="nama">Nama Gejala / Kasus</label>
                            <input type="text" name="ciri_ciri" required class=" m-2 form-control" id="kerusakan_jenis">
                            <input type="hidden" name="ciri_id" required class=" m-2 form-control" id="kerusakan_id">
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
            text: "Gejala/Kasus sudah pernah ditambahkan",
        })
    <?php endif ?>

    function tambah() {
        let view = `
    <form class="col-12" action="<?= route_to('ciri_save'); ?>" method="post">
            <?php csrf_field(); ?>
            <div class="col-12 d-flex justify-content-between">
                <div class="form-group col-12 d-flex flex-column align-items-start">
                    <label for="nama">Gejala/Kasus</label>
                    <input type="text" name="ciri_ciri" required class=" m-2 form-control" id="nama">
                </div>
            </div>
            <div class="col-12 d-flex justify-content-between">
                <div class="form-group col-12 d-flex flex-column align-items-start">
                    <label for="namaf">bobot</label>
                    <select name="ciri_bobot" required class=" m-2 form-control" id="namaf">
                    <option>7</option>
                    <option>5</option>
                    <option>3</option>
                    </select>
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
        $('#editciri').modal('show');
        $.ajax({
            url: '/ciri/get/' + checkedvalue,
            type: "GET",
            dataType: "JSON",
            success: function(result) {
                $('[name="ciri_ciri"]').val(result.ciri_ciri);
                $('[name="ciri_bobot"]').val(result.ciri_bobot);
                $('[name="ciri_id"]').val(result.ciri_id);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert('Data Error');
            }
        })
    });

    function edit(id) {
        fetch('/ciri/get/' + id)
            .then(res => res.json())
            .then(res => {
                let view = `
            <form class="col-12" action="/ciri/edit/` + id + `" method="post">
            <?php csrf_field(); ?>
            <div class="col-12 d-flex justify-content-between">
                <div class="form-group col-12 d-flex flex-column align-items-start">
                    <label for="nama">ciri</label>
                    <input type="text" value="${res.ciri_ciri}" name="ciri_ciri" required class=" m-2 form-control" id="nama">
                    <input type="hidden" name="ciri_id" value="` + id + `" required class=" m-2 form-control" id="nama">
                </div>
            </div>
            <div class="col-12 d-flex justify-content-between">
                <div class="form-group col-12 d-flex flex-column align-items-start">
                    <label for="namaf">bobot</label>
                    <select name="ciri_bobot" required class=" m-2 form-control" id="namaf">
                    <option ` + (res.ciri_bobot == 7 ? 'selected' : '') + `>7</option>
                    <option ` + (res.ciri_bobot == 5 ? 'selected' : '') + `>5</option>
                    <option ` + (res.ciri_bobot == 3 ? 'selected' : '') + `>3</option>
                    </select>
                </div>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <button type="submit" class="my-2 btn btn-primary">Simpan</button>
            </div>
        </form>
    `;
                Swal.fire({
                    title: 'Edit data',
                    showConfirmButton: false,
                    html: view,

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
                fetch('/ciri/hapus/' + id)
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

    function paging() {
        var inputValue;
        Swal.fire({
            title: 'Masukkan halaman',
            input: 'number',
            inputValue: inputValue,
            showCancelButton: true,
            inputValidator: (value) => {
                if (!value || value < 1) {
                    return 'masukkan halaman yang valid'
                }
                let url = window.location.href;
                url = url.split("=")
                if (url.length == 1) {
                    url[0] += "?page_table=" + value;
                }
                if (url.length == 2) {
                    url[0] += '=';
                    url[2] = "&page_table=" + value;
                    result = "";
                    for (i = 0; i < url.length; i++) {

                        result += url[i];
                    }
                    url[0] = result.substring(0, result.length - 1);
                    url[0] += 3;

                } else if (url.length == 4) {
                    result = "";
                    url[url.length - 1] = value;
                    for (i = 0; i < url.length; i++) {

                        result += url[i] + "=";
                    }
                    url[0] = result;
                    url[0] = url[0].substring(0, url[0].length - 1)
                }
                document.location.replace(url[0]);

            }
        })
    }
</script>
<?= $this->endSection() ?>