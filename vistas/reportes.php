<?php 
    session_start();
    include "header.php"; 
    
    /*Para el rol de usuario*/
    if (isset($_SESSION['usuario']) && $_SESSION['usuario']['rol'] == 2) : 
?>

<!-- Contenido del Administrador-->
    <div class="container">
        <div class="card border-0 shadow my-5">
            <div class="card-body p-5">
                <h1 class="fw-light"><center>Reportes de usuarios</center> </h1>
                <p class="lead">
                    <hr>
                    <div id="tablaReporteAdminLoad"></div>
                </p>
            </div>
        </div>
    </div>

<?php 
    include "reportesAdmin/modalAgregarSolucion.php";
    include "footer.php";
?>
    <script src="../public/js/reportesAdmin/reportesAdmin.js"></script>

<?php else : ?>
    <script type="module">
        import * as modulo from "../public/js/modulo.js";
        window.location.href = `${modulo.BASEURL}/index.html`
    </script>
<?php
    endif;
?>
    
    