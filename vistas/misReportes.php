<?php 
    session_start();
    include "header.php"; 
    /*Para el rol de usuario*/
    if (isset($_SESSION['usuario']) && $_SESSION['usuario']['rol'] == 1) : 
        include "../clases/Conexion.php";
        $con = new Conexion();
        $conexion = $con->conectar();
?>

<!-- Contenido del usuario-->
    <div class="container">
        <div class="card border-0 shadow my-5">
            <div class="card-body p-5">
                <h1 class="fw-light"><center> Mis Reportes</center></h1>
                <p class="lead">
                    <button class="btn btn-primary" data-toggle="modal" data-target="#modalCrearReporte">
                        Crear Reporte
                    </button>
                    <hr>
                    <div id="tablaReporteClienteLoad"></div>
                </p>
            </div>
        </div>
    </div>

<?php 
    include "reportesCliente/modalCrearReporte.php";
    include "footer.php";
?>
    <script src="../public/js/reportesCliente/reportesCliente.js"></script>
    
<?php else : ?>
    <script type="module">
        import * as modulo from "../public/js/modulo.js";
        window.location.href = `${modulo.BASEURL}/index.html`
    </script>
<?php
    endif;
?>
    