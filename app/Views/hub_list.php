<?= $this->extend('welcome_message') ?>
<?= $this->section('content') ?>
<script src="assets/js/sweetalert2-all.js"></script>
<div class="card mb-4">
    <div class="card-body">
        <div class="col mb-2 d-flex align-items-center">
            <div class="col-4 d-flex">
                <select onchange="collectData(this)" id="kucing" class="form-control">
                    <option value="def">--Pilih Solusi--</option>
                    <?php foreach ($kucing as $k) : ?>
                        <option value="<?= $k['kerusakan_id']; ?>"><?= "[C-" . $k['kerusakan_id'] . "] " . $k['kerusakan_jenis']; ?>
                        </option>
                    <?php endforeach ?>
                </select>
            </div>
            <button onclick="tambah()" class="p-2 px-3 ml-2 btn btn-sm btn-secondary">Tambah <i class="fa fa-plus"></i></button>
        </div>
        <table class="table table-bordered table-hover text-center">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Kode</th>
                    <th>Ciri-ciri</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($hub as $h) : $no = 1; ?>
                    <tr>
                        <td><?= $h->hub_id ?></td>
                        <td><?= $h->kerusakan_jenis ?></td>
                        <td><?= $h->ciri_ciri ?></td>
                        <td>
                            <!-- <button type="button" class="btn btn-sm btn-outline-success btn-edit" data-kerusakan_id="<?= $k['kerusakan_id']; ?>" data-kerusakan_jenis="<?= $k['kerusakan_jenis'] ?>" data-kerusakan_foto="<?= $k['kerusakan_foto']; ?>" data-kerusakan_deskripsi="<?= $k['kerusakan_deskripsi']; ?>"><i class="fa fa-pencil-alt"></i></button> -->
                            <a onclick="deleteConfirm('<?php echo base_url('Admin/hub_hapus/' . $h->hub_id) ?>')" href="#!" class="btn btn-small text-danger"><i class="fa fa-trash"></i> Hapus</a>
                        </td>
                    </tr>

                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Apakah Kamu Yakin?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Data yang dihapus tidak akan bisa dikembalikan!.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                <a id="btn-delete" class="btn btn-danger" href="#">Hapus</a>
            </div>
        </div>
    </div>
</div>
<script>
    function deleteConfirm(url) {
        $('#btn-delete').attr('href', url);
        $('#deleteModal').modal();
    }
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
            text: "ciri sudah pernah ditambahkan",
        })
    <?php endif ?>

    function tambah() {
        let view = `
    <form class="col-12" action="<?= route_to('hub_save'); ?>" method="post">
            <?php csrf_field(); ?>
            <div class="col-12 d-flex justify-content-between flex-column">
                <div class="form-group col-12 d-flex flex-column align-items-start">
                    <label for="namaf">Jenis Kucing</label>
                    <select name="hub_solusi" required class=" m-2 form-control" id="namaf">
                  <?php foreach ($kucing as $k) : ?> 
                    <option value="<?= $k['kerusakan_id']; ?>"><?= "[C-" . $k['kerusakan_id'] . "] " . $k['kerusakan_jenis']; ?>
                    </option>
                  <?php endforeach ?>
                    </select>
                </div>

                <div class="form-group col-12 d-flex flex-column align-items-start">
                    <label for="namaf">Ciri-ciri</label>
                    <select name="hub_ciri" required class=" m-2 form-control" id="namaf">
                  <?php foreach ($ciri as $k) : ?> 
                    <option value="<?= $k['ciri_id']; ?>"><?= "[K-" . $k['ciri_id'] . "] " . $k['ciri_ciri']; ?>
                    </option>
                  <?php endforeach ?>
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

    function edit(id) {
        fetch('/hub/get/' + id)
            .then(res => res.json())
            .then(res => {
                console.log(res)
                let view = `
            <form class="col-12" action="/hub/edit/` + id + `" method="post">
            <?php csrf_field(); ?>
            <div class="col-12 d-flex justify-content-between flex-column">
                <div class="form-group col-12 d-flex flex-column align-items-start">
                    <label for="namaf">Jenis Kucing</label>
                    <select name="hub_solusi" required class=" m-2 form-control" id="namaf">
                    <option value="${res.hub_solusi}">[C-${res.hub_solusi}] ${res.kerusakan_jenis}</option>
                  <?php foreach ($kucing as $k) : ?> 
                    <option value="<?= $k['kerusakan_id']; ?>"><?= "[C-" . $k['kerusakan_id'] . "] " . $k['kerusakan_jenis']; ?>
                    </option>
                  <?php endforeach ?>
                    </select>
                </div>

                <div class="form-group col-12 d-flex flex-column align-items-start">
                    <label for="namaf">Ciri-ciri</label>
                    <select name="hub_ciri" required class=" m-2 form-control" id="namaf">
                    <option value="${res.hub_ciri}">[K-${res.hub_ciri}] ${res.ciri_ciri}</option>
                  <?php foreach ($ciri as $k) : ?> 
                    <option value="<?= $k['ciri_id']; ?>"><?= "[K-" . $k['ciri_id'] . "] " . $k['ciri_ciri']; ?>
                    </option>
                  <?php endforeach ?>
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
                fetch('/hub/hapus/' + id)
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

    function collectData(sel) {
        tbody = document.getElementById('tbody')
        if (sel.value == 'def') {
            tbody.innerHTML = ""
        } else {
            fetch("/hub/cat/" + sel.value)
                .then(res => res.json())
                .then(res => {
                    if (res == false) {
                        tbody.innerHTML = ""
                    } else {
                        console.log(res)
                        c = 0
                        tbody.innerHTML = ""
                        res.forEach((v, k) => {
                            c++
                            row = document.createElement("tr")
                            no = document.createElement("td");
                            kode = document.createElement("td");
                            ciri = document.createElement("td");
                            aksi = document.createElement("td");
                            no.innerHTML = c
                            kode.innerHTML = "K-" + v.hub_ciri
                            ciri.innerHTML = v.ciri_nama
                            aksi.innerHTML = `
                        <button class="btn btn-sm btn-outline-success" onclick="edit(${v.hub_id})"><i
                                class="fa fa-pencil-alt"></i></button>
                        <button class="btn btn-sm btn-danger" onclick="hapus(${v.hub_id})"><i
                                class="fa fa-trash-alt"></i></button>
                        `
                            row.appendChild(no)
                            row.appendChild(kode)
                            row.appendChild(ciri)
                            row.appendChild(aksi)
                            tbody.appendChild(row)


                        });
                    }
                })
        }
    }
</script>
<?= $this->endSection() ?>