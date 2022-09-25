<!-- Begin Page Content -->
<div class="container-fluid">

    <div class="row">
        <div class="col-sm-4">
        </div>
        <div class="col my-auto">
            <a class="float-right btn btn btn-primary mb-3" type="button" href="<?= base_url("$role/mTambah") ?>">
                <i class="fas fa-fw fa-plus"></i> Tambah Inventaris
            </a>
        </div>
    </div>

    <div class="flash-data" data-flashdata="<?= $this->session->flashdata('message'); ?>"></div>
    <?= $this->session->flashdata('message'); ?>

    <!-- DataTales Example -->
    <div class="card mb-4">
        <div class="card-header py-3">
            <h3 class="m-0 text-primary">Inventaris</h3>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="maintenance" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Barang</th>
                            <th>Merk</th>
                            <th>Kondisi</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($data as $d) { ?>

                            <tr>
                                <td><?= $no ?></td>
                                <td><?= $d['nama_barang'] ?></td>
                                <td><?= $d['merk'] ?></td>
                                <td><?= $d['kondisi'] ?></td>
                                <td>
                                    <a href="<?= "editI/" . $d['id'] ?>"><span class="badge badge-dark">Edit</span></a>
                                    <br>
                                    <a href="<?= "hapusI/" . $d['id'] ?>"><span class="badge badge-danger">Hapus</span></a>
                                </td>
                            </tr>
                        <?php
                            $no++;
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->