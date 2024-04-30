<?php 
    /*Validacion del usuario*/
    session_start();
include "header.php";
if (isset($_SESSION['usuario']) && $_SESSION['usuario']['rol'] == 1 || $_SESSION['usuario']['rol'] == 2) :

    
    $idUsuario = @$_SESSION['usuario']['id'];
?>


    <!-- Contenido que ofrece el login para el usuario y administrador-->
    <div class="container">
        <div class="card border-0 shadow my-5">
            <div class="card-body p-5">
                <h1 class="fw-light"><center>BIENVENIDO <?php echo $_SESSION['usuario']['nombre']; ?></center> </h1>
                <p class="lead">
                <div class="row justify-content-md-center">
                    <div class="col-sm-4 bg-warning text-dark"><b>Apellido paterno: </b> <span id="paterno"></span></div>
                    <div class="col-sm-4 bg-warning text-dark"><b> Apellido materno: </b><span id="materno"></span></div>
                    <div class="col-sm-4 bg-warning text-dark"><b> Nombre: </b><span id="nombre"></span></div>
                </div>
                <div class="row">
                    <div class="col-sm-4 bg-warning text-dark"><b>Telefono: </b> <span id="telefono"></span></div>
                    <div class="col-sm-4 bg-warning text-dark"><b>Correo: </b> <span id="correo"></span></div>
                    <div class="col-sm-4 bg-warning text-dark"><b> </b> <span id=""></span></div>
                </div>
                </p>
            </div>
        </div>
    </div>

    <?php include "footer.php"; ?>
    <script src="../public/js/inicio/personales.js"></script>
    <script>
        let idUsuario = '<?= $idUsuario; ?>';
        datosPersonalesInicio(idUsuario);
    </script>

<?php else : ?>
    <script type="module">
        import * as modulo from "../public/js/modulo.js";
        window.location.href = `${modulo.BASEURL}/index.html`
    </script>
<?php
    endif;
?>