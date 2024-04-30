
<?php
    /*Tabla para la creacion de usuarios */
    include "../../clases/Conexion.php";
    $con = new Conexion();

    /*Coneccion con la base de datos*/
    $conexion = $con->conectar();
    $sql = "SELECT 
                usuarios.id_usuario AS idUsuario,
                usuarios.usuario AS nombreUsuario,
                roles.nombre AS rol,
                usuarios.id_rol AS idRol,
                usuarios.ubicacion AS ubicacion,
                usuarios.activo AS estatus,
                usuarios.id_persona AS idPersona,
                persona.nombre AS nombrePersona,
                persona.paterno AS paterno,
                persona.materno AS materno,
                persona.fecha_nacimiento AS fechaNacimiento,
                persona.sexo AS sexo,
                persona.correo AS correo,
                persona.telefono AS telefono
            FROM
                t_usuarios AS usuarios
                    INNER JOIN
                t_cat_roles AS roles ON usuarios.id_rol = roles.id_rol
                    INNER JOIN
                t_persona AS persona ON usuarios.id_persona = persona.id_persona";
    $respuesta = mysqli_query($conexion, $sql);
?>

<table class="table table-sm dt-responsive nowrap" 
        id="tablaUsuariosDataTable" style="width:100%">
        <!--Se crea la fila de registro de usuario-->
        <thead class="thead-dark">
        <th>Apellido paterno</th>
        <th>Apellido materno</th>
        <th>Nombre</th>
        <th>Telefono</th>
        <th>Correo Electronico</th>
        <th>Usuario</th>
        <th>Área</th>
        <th>Contraseña Nueva</th>
        <th>Activar</th>
        <th>Editar</th>
        <th>Eliminar</th>
    </thead>
    <tbody>
        <?php
            while($mostrar = mysqli_fetch_array($respuesta)) {   
        ?>
        <!--Este apartado permite mostrar los datos del Usuario creado-->
        <tr>
            <td><?php echo $mostrar['paterno']; ?></td>
            <td><?php echo $mostrar['materno']; ?></td>
            <td><?php echo $mostrar['nombrePersona']; ?></td>
            <td><?php echo $mostrar['telefono']; ?></td>
            <td><?php echo $mostrar['correo']; ?></td>
            <td><?php echo $mostrar['nombreUsuario']; ?></td>
            <td><?php echo $mostrar['ubicacion']; ?></td>
     
            <td>
                <button class="btn btn-info btn-sm" 
                    data-toggle="modal" 
                    data-target="#modalResetPassword"
                    onclick="agregarIdUsuarioReset(<?php echo $mostrar['idUsuario'] ?>)">
                    <span class="fas fa-key"></span>
                </button>
            </td>
            <td>
                <?php 
                    /*Condicion para mostrar al Usuario si esta activo*/
                    if ($mostrar['estatus'] == 1) {
                ?>
                    <button class="btn btn-secondar btn-sm" 
                    onclick="cambioEstatusUsuario(<?php echo $mostrar['idUsuario'] ?>, <?php echo $mostrar['estatus'] ?>)">
                        <span class="fas fa-power-off"></span> Offline
                    </button>
                <?php
                    /*Condicion para mostrar al Usuario no esta activo*/
                    } else if($mostrar['estatus'] == 0) {
                ?>
                    
                    <button class="btn btn-success btn-sm" 
                    onclick="cambioEstatusUsuario(<?php echo $mostrar['idUsuario'] ?>, <?php echo $mostrar['estatus'] ?>)">
                        <span class="fas fa-power-off"></span> Online
                    </button>
                <?php
                    } 
                ?>
            </td>
            <td>
                <button class="btn btn-warning btn-sm" 
                        data-toggle="modal" 
                        data-target="#modalActualizarUsuarios"
                        onclick="obtenerDatosUsuario(<?php echo $mostrar['idUsuario'] ?>)">
                    Editar
                </button>
            </td>
            <td>
                <button class="btn btn-danger btn-sm" 
                onclick="eliminarUsuario(<?php echo $mostrar['idUsuario']; ?>,<?php echo $mostrar['idPersona']; ?> )">
                    <span class="fas fa-user-times"></span>
                </button>
            </td>
        </tr>
        <?php } ?>
    </tbody>
</table>

<!--Elaboracion del DataTable para la busqueda de Usuario-->
<script>
    $(document).ready(function(){
        $('#tablaUsuariosDataTable').DataTable({
            language : {
                url : "../public/datatable/es_es.json"
            }
        });
    });
</script>