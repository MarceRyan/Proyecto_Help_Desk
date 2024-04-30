

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../public/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../public/css/plantilla.css">
    <link rel="stylesheet" href="../public/datatable/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="../public/datatable/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="../public/fontawesome/css/all.css">
    <link rel="stylesheet" href="../public/datatable/buttons.dataTables.min.css">
    <link rel="stylesheet" href="footer.css">
    
    <script src="../public/jquery/jquery-3.6.0.min.js"></script>
    <script src="../public/bootstrap/popper.min.js"></script>
    <script src="../public/bootstrap/bootstrap.min.js"></script>
    <script src="../public/datatable/jquery.dataTables.min.js"></script>
    <script src="../public/datatable/dataTables.bootstrap4.min.js"></script>
    <script src="../public/datatable/dataTables.responsive.min.js"></script>
    <script src="../public/datatable/responsive.bootstrap4.min.js"></script>
    <script src="../public/sweetalert2/sweetalert2@11.js"></script>
    <script src="../public/js/inicio/actualizarPersonales.js"></script>

    <!--Seccion de botones de datatable-->

    <script src="../public/datatable/dataTables.buttons.min.js"></script>
    <script src="../public/datatable/jszip.min.js"></script>
    <script src="../public/datatable/pdfmake.min.js"></script>
    <script src="../public/datatable/vfs_fonts.js"></script>
    <script src="../public/datatable/buttons.html5.min.js"></script>

    <script type="module" src="../public/js/modulo.js"></script>
    <title>Help-Desk</title>

    

</head>
<body>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="inicio.php">
                HELP - DESK                          
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="inicio.php">
                    <span class="fas fa-home"></span> INICIO
                    </a>
                </li>
            <?php if($_SESSION['usuario']['rol'] == 1) {  ?>
                <!-- Vistas para el Usuario -->
                <li class="nav-item">
                    <a class="nav-link" href="misDispositivos.php">
                    <span class="fas fa-laptop"></span> MIS DISPOSITIVOS
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="misReportes.php">
                        <span class="fas fa-file-alt"></span> REPORTES SOPORTE
                    </a>
                </li>

            <?php } else if($_SESSION['usuario']['rol'] == 2) { ?>

                <!--Vistas para el administrador-->
                <li class="nav-item">
                    <a class="nav-link" href="usuarios.php">
                        <span class="fas fa-users"></span> USUARIOS
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="asignacion.php">
                    <span class="fas fa-folder-open"></span> ASIGNACION
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="reportes.php">
                        <span class="fas fa-file-alt"></span> REPORTES
                    </a>
                </li>
            <?php } ?>

                <!--Define el nombre del usuario en la barra de navegación-->    
                <li class="nav-item dropdown" >
                    <a style="color:green" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" 
                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="fas fa-user"></span><B>USUARIO:</B>  <b><?php echo $_SESSION['usuario']['nombre']; ?>
                    </a></b>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#" 
                    data-toggle="modal" 
                    data-target="#modalActualizarDatosPersonales"
                    onclick="obtenerDatosPersonalesInicio('<?php echo $_SESSION['usuario']['id']; ?>')">
                        <span style="color:green" class="fas fa-user-edit"></span> Editar Datos
                    </a>

                    <!--Opcion de salir al Login-->
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="../procesos/usuarios/login/salir.php">
                        <span style="color:green" class="fas fa-sign-out-alt"></span> Salir
                    </a>
                    </div>
                </li>
            </ul>
            </div>
        </div>
    </nav>

    
    <?php
        include "inicio/modalActualizarDatosPersonales.php";
    ?>
    