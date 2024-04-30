-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2023 a las 06:44:11
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `helpdesk`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_asignacion`
--

CREATE TABLE `t_asignacion` (
  `id_asignacion` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `marca` varchar(245) DEFAULT NULL,
  `modelo` varchar(245) DEFAULT NULL,
  `color` varchar(246) DEFAULT NULL,
  `descripcion` varchar(245) DEFAULT NULL,
  `memoria` varchar(245) DEFAULT NULL,
  `disco_duro` varchar(245) DEFAULT NULL,
  `procesador` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `t_asignacion`
--

INSERT INTO `t_asignacion` (`id_asignacion`, `id_persona`, `id_equipo`, `marca`, `modelo`, `color`, `descripcion`, `memoria`, `disco_duro`, `procesador`) VALUES
(13, 10, 1, 'HP', ' G6-2011', 'Negro', 'En estado regular', '8 RAM', '500 Gb', 'Core i5'),
(14, 10, 1, 'HP', 'G7-2000', 'Negro', 'En estado regular', '8 Ram', '500 Gb', 'Core i5'),
(15, 10, 6, 'EPSON', 'L3210', 'Negro', 'En estado regular', '', '', ''),
(16, 10, 2, 'Lenovo', 'tb-x306f', 'Plateado', 'En estado regular', '8 RAM', '500 Gb', 'Core i3'),
(17, 10, 5, 'LG', 'LC24F390FHLXZX', 'Negro', 'En estado regular', '', '', ''),
(18, 10, 3, 'Microsoft Basic Optical black', 'G502', 'Negro', 'En estado regular', '', '', ''),
(19, 17, 3, 'Basico Ergonómico Ramko', 'Rm-m77', 'Negro', 'En estado regular', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_cat_equipo`
--

CREATE TABLE `t_cat_equipo` (
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(245) NOT NULL,
  `descripcion` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `t_cat_equipo`
--

INSERT INTO `t_cat_equipo` (`id_equipo`, `nombre`, `descripcion`) VALUES
(1, 'PC', 'fas fa-desktop'),
(2, 'Laptop', 'fas fa-laptop'),
(3, 'Mouse', 'fas fa-mouse'),
(4, 'Teclado', 'fas fa-keyboard'),
(5, 'Monitor', 'fas fa-desktop'),
(6, 'Impresora', 'fas fa-print'),
(7, 'Fotocopeadora', 'fas fa-print');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_cat_roles`
--

CREATE TABLE `t_cat_roles` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(245) NOT NULL,
  `descripcion` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `t_cat_roles`
--

INSERT INTO `t_cat_roles` (`id_rol`, `nombre`, `descripcion`) VALUES
(1, 'cliente', 'Es un cliente'),
(2, 'admin', 'Es Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_persona`
--

CREATE TABLE `t_persona` (
  `id_persona` int(11) NOT NULL,
  `paterno` varchar(245) NOT NULL,
  `materno` varchar(245) DEFAULT NULL,
  `nombre` varchar(245) NOT NULL,
  `fecha_nacimiento` varchar(245) NOT NULL,
  `sexo` varchar(2) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(245) DEFAULT NULL,
  `fechaInsert` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `t_persona`
--

INSERT INTO `t_persona` (`id_persona`, `paterno`, `materno`, `nombre`, `fecha_nacimiento`, `sexo`, `telefono`, `correo`, `fechaInsert`) VALUES
(1, 'Milla', 'Almerco', 'Franklin Joel', '1986-06-13', 'M', '976974552', 'fmilla@muniyanacancha.gob.pe', '2021-08-09 14:18:27'),
(2, 'lopez', 'martinez', 'juan', '2000-01-10', 'M', '88', 'correo@gmail.com', '2021-08-10 13:59:19'),
(3, 'lopez', 'martinez', 'juan', '2000-01-11', 'M', '8885', 'correo@gmail.com', '2021-08-10 14:00:37'),
(4, 'Morales', 'Rimac', 'Marcelo Bryan', '1999-05-22', 'M', '929577372', 'mmoralesr@undac.edu.pe', '2023-07-20 00:06:41'),
(5, 'asdadaad', 'sdf', 'dsaf', '2023-05-04', 'F', '494949494', 'sadasdf@ddd.com', '2023-07-25 11:26:41'),
(6, 'sdfsd', 'dsf', 'dsf', '2014-12-01', 'M', '468465', 'dcc@ccc.com', '2023-07-25 11:47:02'),
(7, 'MORALES', 'RIMAC', 'Marcelo Bryan', '1999-05-22', 'M', '929577372', 'marcelo999546479@gmail.com', '2023-07-26 16:35:43'),
(8, 'LUCAS', 'ASENCIO ', 'Jesus Lorenzo ', '1990-11-16', 'M', '931552230', 'jlucas@muniyanacancha.gob.pe', '2023-07-26 16:37:34'),
(9, 'GRADOS ', 'MEDINA ', 'Keuffel Washington ', '1987-07-14', 'M', '924644547', 'kgrados@muniyanacancha.gob.pe', '2023-07-26 16:40:21'),
(10, 'CARLOS ', 'CARHUAZ ', 'Yecenia Cinthia ', '1998-03-07', 'F', '998148121', 'ycarlos@muniyanacancha.gob.pe', '2023-07-26 16:41:49'),
(11, 'LOPEZ ', 'HUAMAN ', 'Alan Cristhian ', '1983-05-26', 'M', '963959414', 'alopez@muniyanacancha.gob.pe', '2023-07-26 16:43:22'),
(12, 'CORNELIO ', 'MUÑOZ ', 'Isaac Neil ', '1995-12-11', 'M', '989212415', 'isaaccornelio@muniyanacancha.gob.pe', '2023-07-26 16:45:09'),
(13, 'OLIVERA  ', 'GUZMAN', 'Edson Wilson ', '1989-04-20', 'M', '998235112', 'eolivera@muniyanacancha.gob.pe', '2023-07-26 16:46:43'),
(14, 'VILCA  ', 'RIVAS', 'Katty Pandora ', '1983-02-10', 'F', '963456141', 'kvilca@muniyanacancha.gob.pe', '2023-07-26 16:48:34'),
(15, 'MILLA  ', 'ALMERCO', 'Franklin Joel', '1981-07-03', 'M', '926114879', 'fmilla@muniyanacancha.gob.pe', '2023-07-26 16:50:58'),
(16, 'CONCHA ', 'ARELLANO ', 'Manuel Guillermo ', '1976-02-10', 'M', '923665863', 'mconcha@muniyanacancha.gob.pe', '2023-07-26 16:52:12'),
(17, 'ECHEVARRIA ', 'VITORIO', 'Enrique ', '1976-01-09', 'M', '956554142', 'ehechevarria@muniyanacancha.gob.pe', '2023-07-26 19:18:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_reportes`
--

CREATE TABLE `t_reportes` (
  `id_reporte` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `id_usuario_tecnico` int(11) DEFAULT NULL,
  `descripcion_problema` text NOT NULL,
  `solucion_problema` text DEFAULT NULL,
  `estatus` int(11) NOT NULL DEFAULT 1,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `t_reportes`
--

INSERT INTO `t_reportes` (`id_reporte`, `id_usuario`, `id_equipo`, `id_usuario_tecnico`, `descripcion_problema`, `solucion_problema`, `estatus`, `fecha`) VALUES
(13, 10, 5, 7, 'El cable VGA del monitor esta dañado', 'Se hizo un cambio de cable VGA', 0, '2023-07-26 20:21:18'),
(14, 17, 3, 7, 'Mi mouse clikea sin parar', 'Se instalo los drivers correspondientes', 0, '2023-07-26 20:23:49'),
(15, 10, 2, NULL, 'Se escucha el audio pero no se observa la pantalla', NULL, 1, '2023-07-26 21:48:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_usuarios`
--

CREATE TABLE `t_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `usuario` varchar(245) NOT NULL,
  `password` varchar(245) NOT NULL,
  `ubicacion` text DEFAULT NULL,
  `activo` int(11) NOT NULL DEFAULT 1,
  `fecha_insert` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `t_usuarios`
--

INSERT INTO `t_usuarios` (`id_usuario`, `id_rol`, `id_persona`, `usuario`, `password`, `ubicacion`, `activo`, `fecha_insert`) VALUES
(7, 2, 7, 'MARCELO', '9d31a7bd4a60bee3ab04561074011ed03bf6e19d', 'OFICINA DE TECNOLOGIA DE LA INFORMACION', 1, NULL),
(8, 2, 8, 'JESUS', '0681b3c6387ee7dea2d7051ff685fae081f51e38', 'OFICINA DE TECNOLOGIA DE LA INFORMACION', 1, NULL),
(10, 1, 10, 'YECENIA', '2784c340aa2e1ded6f757e321273ec06d4e26b36', 'SUB GERENCIA DE DESARROLLO HUMANO ', 1, NULL),
(11, 1, 11, 'ALAN', '900aba1675aa675394fdea2669925c0ac75ade3c', 'SUB GERENCIA DE EDUCACION, CIENCIA, TECNOLOGIA, CULTURA, DEPORTES Y JUVENTUD ', 1, NULL),
(12, 1, 12, 'ISSAC', '8cbd235bff883fba0fc367576436251d79585b6c', 'GERENCIA DE INFRAESTRUCTURA Y URBANISMO ', 1, NULL),
(13, 1, 13, 'EDSON', '59bad511eae52914223eee412377790bb1d633a6', 'SUB GERENCIA DE SUPERVISION Y LIQUIDACION ', 1, NULL),
(15, 1, 15, 'FRANKLIN', 'ac654cdf4cfd834874d018a0e8f47b449d9f49c2', 'OFICINA DE IMAGEN INSTITUCIONAL ', 1, NULL),
(16, 1, 16, 'MANUEL', '36866436e4186c10ed3b43b4e9f229d8bcdd0e86', 'GERENCIA DE SERVICIOS PUBLICOS ', 1, NULL),
(17, 1, 17, 'ENRIQUE', '63c17333471a76bd518e41a3ab95f51b59214ffa', 'OFICINA GENERAL DE ADMINISTRACION Y FINANZAS ', 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_asignacion`
--
ALTER TABLE `t_asignacion`
  ADD PRIMARY KEY (`id_asignacion`),
  ADD KEY `fkPersona_idx` (`id_persona`),
  ADD KEY `fkPersonaAsignacion_idx` (`id_persona`),
  ADD KEY `fkequipoAsignacion_idx` (`id_equipo`);

--
-- Indices de la tabla `t_cat_equipo`
--
ALTER TABLE `t_cat_equipo`
  ADD PRIMARY KEY (`id_equipo`);

--
-- Indices de la tabla `t_cat_roles`
--
ALTER TABLE `t_cat_roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `t_persona`
--
ALTER TABLE `t_persona`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `t_reportes`
--
ALTER TABLE `t_reportes`
  ADD PRIMARY KEY (`id_reporte`),
  ADD KEY `fkUsuarioReporte_idx` (`id_usuario`),
  ADD KEY `fkEquipoReporte_idx` (`id_equipo`);

--
-- Indices de la tabla `t_usuarios`
--
ALTER TABLE `t_usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fkPersona_idx` (`id_persona`),
  ADD KEY `fkRoles_idx` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t_asignacion`
--
ALTER TABLE `t_asignacion`
  MODIFY `id_asignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `t_cat_equipo`
--
ALTER TABLE `t_cat_equipo`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `t_cat_roles`
--
ALTER TABLE `t_cat_roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `t_persona`
--
ALTER TABLE `t_persona`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `t_reportes`
--
ALTER TABLE `t_reportes`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `t_usuarios`
--
ALTER TABLE `t_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `t_asignacion`
--
ALTER TABLE `t_asignacion`
  ADD CONSTRAINT `fkPersonaAsignacion` FOREIGN KEY (`id_persona`) REFERENCES `t_persona` (`id_persona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkequipoAsignacion` FOREIGN KEY (`id_equipo`) REFERENCES `t_cat_equipo` (`id_equipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_reportes`
--
ALTER TABLE `t_reportes`
  ADD CONSTRAINT `fkEquipoReporte` FOREIGN KEY (`id_equipo`) REFERENCES `t_cat_equipo` (`id_equipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkUsuarioReporte` FOREIGN KEY (`id_usuario`) REFERENCES `t_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_usuarios`
--
ALTER TABLE `t_usuarios`
  ADD CONSTRAINT `fkPersona` FOREIGN KEY (`id_persona`) REFERENCES `t_persona` (`id_persona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkRoles` FOREIGN KEY (`id_rol`) REFERENCES `t_cat_roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
