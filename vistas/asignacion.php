<?php 
    /*Validacion de usuario*/
    session_start();
    include "header.php";
    /*Para el rol de Administrador*/
    if (isset($_SESSION['usuario']) && $_SESSION['usuario']['rol'] == 2) :
        include "../clases/Conexion.php";
        $con = new Conexion();
        $conexion = $con->conectar();
?>

<!-- Contenido del administrador-->
    <div class="container">
        <div class="card border-0 shadow my-5">
            <div class="card-body p-5">
                <h1 class="fw-light"><center>Asignar Equipos</center> </h1>
                <p class="lead">
                    <button class="btn btn-primary" data-toggle="modal" data-target="#modalAsignarEquipo"> 
                        Asignar
                    </button>
                    <hr>
                    <div id="tablaAsignacionesLoad"></div>
                </p>
            </div>
        </div>
    </div>

    <?php 
        include "asignacion/modalAsignar.php";
        include "footer.php";
    ?>
    <script src="../public/js/asignacion/asignacion.js"></script>

<?php else : ?>
    <script type="module">
        import * as modulo from "../public/js/modulo.js";
        window.location.href = `${modulo.BASEURL}/index.html`
    </script>
<?php
    endif;
?>
    