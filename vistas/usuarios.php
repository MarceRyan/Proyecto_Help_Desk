<?php 
    session_start();
    include "header.php";
    /*Para el rol de Adminstrador*/ 
    if (isset($_SESSION['usuario']) && $_SESSION['usuario']['rol'] == 2) :
?>

<!-- Contenido del Administrador-->
    <div class="container">
        <div class="card border-0 shadow my-5">
            <div class="card-body p-5">
            <h1 class="fw-light"><center>Administración de Usuarios</center> </h1>
            <p class="lead">
                <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarUsuarios">
                    Agregar Usuario
                </button>
                <hr>
                <div id="tablaUsuariosLoad"></div>
            </p>
        </div>
    </div>
    

<?php
    /*Vista del Modal para agregar cuadro de dialogo*/
    include "usuarios/modalAgregar.php";
    include "usuarios/modalActualizar.php";
    include "usuarios/modalResetPassword.php";
    include "footer.php";
?>
    <script src="../public/js/usuarios/usuarios.js"></script>

<?php else : ?>
    <script type="module">
        import * as modulo from "../public/js/modulo.js";
        window.location.href = `${modulo.BASEURL}/index.html`;
    </script>
<?php
    endif;
?>
    
    