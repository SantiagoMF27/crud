<?php include_once 'layout/head.php';?>
<title>Administrador</title>
</head>

<body>
    <?php include_once 'layout/menu.php';?>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <button id="btnNuevo" type="button" class="btn btn-primary" data-toggle="modal"
                    title="Agregar Usuario"><i class="material-icons">library_add</i>
                </button>
            </div>
        </div>
    </div>
    <br>
    <div class="container caja">
        <div class="row">
            <div class="col-lg-12">
                <div class="table-responsive">
                    <table id="tablaUsuarios" class="table table-striped table-bordered table-condensed"
                        style="width:100%">
                        <thead class="text-center">
                            <tr>
                                <th>ID</th>
                                <th>Nombres</th>
                                <th>Apellidos</th>
                                <th>Pais</th>
                                <th>Tipo</th>
                                <th>Número</th>
                                <th>Genero</th>
                                <th>Estado</th>
                                <th>Fecha</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <?php include_once 'layout/modal.php';?>
    <br><br><br><br>
    <?php include_once 'layout/footer.php';?>