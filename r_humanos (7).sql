-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2020 a las 03:13:54
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `r_humanos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `idAnuncio` int(11) NOT NULL,
  `idSolicitud` int(11) NOT NULL,
  `Num_Solicitantes` int(11) NOT NULL,
  `FechaPublicacion` date NOT NULL,
  `FechaCierre` date NOT NULL,
  `idcontacto` int(11) NOT NULL,
  `idMedioPublicidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `anuncio`
--

INSERT INTO `anuncio` (`idAnuncio`, `idSolicitud`, `Num_Solicitantes`, `FechaPublicacion`, `FechaCierre`, `idcontacto`, `idMedioPublicidad`) VALUES
(8, 14, 1, '2020-05-11', '2020-05-15', 2, 3),
(12, 14, 10, '2020-05-11', '2020-05-14', 2, 2),
(13, 15, 10, '2020-05-05', '2020-05-08', 1, 1),
(15, 23, 30, '2020-05-05', '2020-05-08', 1, 1),
(16, 23, 30, '2020-05-11', '2020-05-15', 2, 3),
(17, 27, 5, '2020-05-20', '2020-05-22', 1, 1),
(18, 14, 10, '2020-05-20', '2020-05-21', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `AreaDescripcion` varchar(45) DEFAULT NULL,
  `AreaNombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`idArea`, `AreaDescripcion`, `AreaNombre`) VALUES
(1, 'Desarrollo de aplicaciones ', 'Desarrollo '),
(2, '¨Prueba de aplicaciones', 'Pruebas '),
(3, 'descripción de esta área', 'Testing');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato`
--

CREATE TABLE `candidato` (
  `Curp` varchar(18) NOT NULL,
  `RFC` varchar(13) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Domicilio` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `E_Mail` varchar(45) DEFAULT NULL,
  `Sexo` varchar(45) DEFAULT NULL,
  `Edad` tinyint(2) DEFAULT NULL,
  `NSS` bigint(11) DEFAULT NULL,
  `Fotografia` blob DEFAULT NULL,
  `idEstadoCivil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `candidato`
--

INSERT INTO `candidato` (`Curp`, `RFC`, `Nombre`, `Domicilio`, `Telefono`, `E_Mail`, `Sexo`, `Edad`, `NSS`, `Fotografia`, `idEstadoCivil`) VALUES
('CCCC990101HASCCC01', NULL, 'LOPEZ PEREZ JUAN', 'Segundo domicilio', '449-999-9999', 'sucorreo@gmail.com', 'M', 45, 555555, NULL, 1),
('DDDD990101HASCCC01', NULL, 'JUAREZ ROJAS PEDRO', 'NUEVO DOMICILIO', '449-999-9999 ', 'jpII@gmail.com', 'F', 45, 555555, NULL, 1),
('EEEE990101HASCCC01', NULL, 'LOPEZ LOPEZ LUIS', 'TERCER DOMICILIO', '449-999-9999 ', 'lll@gmail.com', 'M', 25, 22222, NULL, 1),
('FFFF990101HASCCC01', NULL, 'ROMO ROMO FERNANDO', 'Calle 2 no 2', '449-999-9999', 'rrf@gmail.com', 'M', 35, 333333, NULL, 1),
('GGGG990101HASCCC01', NULL, 'nombre ', 'calle 1 no 1', '449-999-9999', 'micorreo@gmail.com', 'F', 45, 555555, NULL, 1),
('HHHH990101HASCCC01', NULL, 'PEREZ GONZALEZ M,ARCOS', 'calle 21 no 15', '449-999-8888', 'micorreo@gmail.com', 'F', 25, 555555, NULL, 2),
('ZZZZ990101HASCCC01', NULL, 'Contacto de la empresa ', 'calle 1 no 1', '449-999-8888', 'conromo64@gmail.com', 'M', 45, 555555, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato_has_habilidad`
--

CREATE TABLE `candidato_has_habilidad` (
  `Curp` varchar(18) NOT NULL,
  `idHabilidad` int(11) NOT NULL,
  `Experiencia` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `candidato_has_habilidad`
--

INSERT INTO `candidato_has_habilidad` (`Curp`, `idHabilidad`, `Experiencia`) VALUES
('DDDD990101HASCCC01', 3, '2 años'),
('DDDD990101HASCCC01', 8, '2 años'),
('EEEE990101HASCCC01', 8, '1 año'),
('GGGG990101HASCCC01', 3, '2 años'),
('GGGG990101HASCCC01', 5, '1 año'),
('HHHH990101HASCCC01', 3, '2 años'),
('HHHH990101HASCCC01', 5, '10 años'),
('ZZZZ990101HASCCC01', 3, '1 año'),
('ZZZZ990101HASCCC01', 8, '2 años');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato_has_idioma`
--

CREATE TABLE `candidato_has_idioma` (
  `Curp` varchar(18) NOT NULL,
  `idIdioma` int(11) NOT NULL,
  `NIvel` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `candidato_has_idioma`
--

INSERT INTO `candidato_has_idioma` (`Curp`, `idIdioma`, `NIvel`) VALUES
('DDDD990101HASCCC01', 1, '80% conversación'),
('DDDD990101HASCCC01', 3, 'Basico'),
('GGGG990101HASCCC01', 1, '80% conversación'),
('GGGG990101HASCCC01', 4, '80% conversación'),
('HHHH990101HASCCC01', 1, '80% conversación'),
('HHHH990101HASCCC01', 4, 'Basico'),
('ZZZZ990101HASCCC01', 1, '80% conversación'),
('ZZZZ990101HASCCC01', 4, 'Basico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato_has_nivelacademico`
--

CREATE TABLE `candidato_has_nivelacademico` (
  `Curp` varchar(18) NOT NULL,
  `idNivelAcademico` int(11) NOT NULL,
  `idCarrera` int(11) NOT NULL,
  `Institucion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `candidato_has_nivelacademico`
--

INSERT INTO `candidato_has_nivelacademico` (`Curp`, `idNivelAcademico`, `idCarrera`, `Institucion`) VALUES
('DDDD990101HASCCC01', 3, 3, 'UAM'),
('GGGG990101HASCCC01', 3, 3, 'UAM'),
('ZZZZ990101HASCCC01', 1, 1, 'cetIS 155'),
('ZZZZ990101HASCCC01', 3, 3, 'UAM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `idCarrera` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`idCarrera`, `Descripcion`) VALUES
(1, 'Tecnico en electricidad'),
(3, 'Licenciado en sistemas (o afin) thnty');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `idcontacto` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Domicilio` varchar(45) DEFAULT NULL,
  `Razon_Social` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`idcontacto`, `Nombre`, `Domicilio`, `Razon_Social`, `Telefono`) VALUES
(1, 'Contacto 1', 'Domicilio contacto 1', 'Razon Social ', '999-999'),
(2, 'Contacto 2 ', 'Domicilio contacto 2', 'Razon Social  Contacto 2', '49999988888');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_de_empresa`
--

CREATE TABLE `datos_de_empresa` (
  `idEmpresa` int(11) NOT NULL,
  `Nombre_de_empresa` varchar(100) NOT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Telefono` varchar(40) DEFAULT NULL,
  `Domicilio` varchar(100) DEFAULT NULL,
  `E_Mail` varchar(50) DEFAULT NULL,
  `RazonSocial` varchar(50) DEFAULT NULL,
  `Estructura_Juridica` varchar(50) DEFAULT NULL,
  `Encargado` varchar(50) DEFAULT NULL,
  `CIF_Empresa` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos_de_empresa`
--

INSERT INTO `datos_de_empresa` (`idEmpresa`, `Nombre_de_empresa`, `Descripcion`, `Telefono`, `Domicilio`, `E_Mail`, `RazonSocial`, `Estructura_Juridica`, `Encargado`, `CIF_Empresa`) VALUES
(1, 'NovaTech', 'Empresa de prueba para el sistema ', '449-999-8888', '449-999-8888', 'technova70@gmail.com', 'PruebaSist S.A.', 'S.A de C.V.', 'Gaytan Flores Aratt', '?????????');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadocivil`
--

CREATE TABLE `estadocivil` (
  `idEstadoCivil` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estadocivil`
--

INSERT INTO `estadocivil` (`idEstadoCivil`, `Descripcion`) VALUES
(1, 'Soltero'),
(2, 'Casado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_solicitud`
--

CREATE TABLE `estatus_solicitud` (
  `idEstatus_Solicitud` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estatus_solicitud`
--

INSERT INTO `estatus_solicitud` (`idEstatus_Solicitud`, `Descripcion`) VALUES
(1, 'Pendiente'),
(2, 'Aprobada'),
(3, 'Publicado'),
(4, 'En proceso'),
(5, 'Terminada'),
(6, 'Cancelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidad`
--

CREATE TABLE `habilidad` (
  `idHabilidad` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `habilidad`
--

INSERT INTO `habilidad` (`idHabilidad`, `Descripcion`) VALUES
(1, 'Mantenimiento de equipo de computo'),
(2, 'Mantenimiento Electrico'),
(3, 'Java experto'),
(4, 'Python experto'),
(5, 'Desarrollo de aplicaciones moviles ddd'),
(8, 'Desarrollo de aplicaciones moviles para Ipad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `idIdioma` int(11) NOT NULL,
  `Lenguaje` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`idIdioma`, `Lenguaje`) VALUES
(1, 'Ingles'),
(2, 'Japones'),
(3, 'Aleman'),
(4, 'Frances');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mediopublicidad`
--

CREATE TABLE `mediopublicidad` (
  `idMedioPublicidad` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mediopublicidad`
--

INSERT INTO `mediopublicidad` (`idMedioPublicidad`, `Descripcion`) VALUES
(1, 'Diarios Locales'),
(2, 'Radio local'),
(3, 'Internet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelacademico`
--

CREATE TABLE `nivelacademico` (
  `idNivelAcademico` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nivelacademico`
--

INSERT INTO `nivelacademico` (`idNivelAcademico`, `Descripcion`) VALUES
(1, 'Tecnico'),
(2, 'Tecnico Superior Universitario'),
(3, 'Licenciatura '),
(4, 'Maestria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_admo`
--

CREATE TABLE `perfil_admo` (
  `idperfil_admo` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil_admo`
--

INSERT INTO `perfil_admo` (`idperfil_admo`, `descripcion`) VALUES
(1, 'administrador'),
(2, 'visitante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_admo_has_proceso`
--

CREATE TABLE `perfil_admo_has_proceso` (
  `idperfil_admo` int(11) NOT NULL,
  `idproceso` int(11) NOT NULL,
  `idpermisos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermisos` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

CREATE TABLE `proceso` (
  `idproceso` int(11) NOT NULL,
  `desc_proceso` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `idPuesto` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `SalarioAnual` int(11) DEFAULT NULL,
  `Beneficios` varchar(250) DEFAULT NULL,
  `Bonos` int(11) DEFAULT NULL,
  `Aprobacion` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `puesto`
--

INSERT INTO `puesto` (`idPuesto`, `Descripcion`, `SalarioAnual`, `Beneficios`, `Bonos`, `Aprobacion`) VALUES
(1, 'Desarrollador de software', 450000, 'Ninguno', 15, 1),
(2, 'Tester', 54000, 'todos', 4500, 1),
(3, 'Diseñador de Base de Datos ', 45000, 'todos', 4500, 0),
(4, 'Puesto para prueba', 45000, 'todos', 100, 1),
(6, 'Puesto de prueba ', 1, 'Ninguno', 100, 0),
(8, 'Puesto para el equipo Alpha ', 54000, 'todos juntos', 100, 0),
(9, 'Puesto de prueba para el nuevo equipo alpha', 100000, 'Ninguno', 100, 0),
(12, 'Puesto de prueba CFFF', 100000, 'Ninguno', 4500, 0),
(13, 'Desarrollador de aplicaciones moviles', 100000, 'Ninguno', 100, 0),
(14, 'Desarrollo de aplicaciones moviles para Ipad', 100000, 'todos', 100, 0),
(15, 'Puesto para estudiar querys', 100000, 'Ninguno', 4500, 0),
(16, 'Puesto de prueba para querys 2', 100000, 'Ninguno', 100, 0),
(17, 'Puesto para probrar esto', 100000, 'Ninguno', 100, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto_has_habilidad`
--

CREATE TABLE `puesto_has_habilidad` (
  `idPuesto` int(11) NOT NULL,
  `idHabilidad` int(11) NOT NULL,
  `Experiencia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `puesto_has_habilidad`
--

INSERT INTO `puesto_has_habilidad` (`idPuesto`, `idHabilidad`, `Experiencia`) VALUES
(1, 2, '2 años'),
(1, 3, '2 años'),
(2, 3, '2 años'),
(2, 4, '2 años'),
(3, 3, '1 año'),
(3, 4, '2 años'),
(3, 5, '1 año'),
(4, 1, '2 años'),
(4, 5, '1 año'),
(9, 2, '2 años'),
(9, 3, '2 meses'),
(12, 5, 'e años '),
(13, 8, '1 año'),
(14, 1, '2 años'),
(14, 8, '1 año'),
(15, 3, '1 año'),
(15, 5, '2 años'),
(16, 3, '1 año'),
(16, 4, '2 años');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto_has_idioma`
--

CREATE TABLE `puesto_has_idioma` (
  `idPuesto` int(11) NOT NULL,
  `idIdioma` int(11) NOT NULL,
  `Nivel` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `puesto_has_idioma`
--

INSERT INTO `puesto_has_idioma` (`idPuesto`, `idIdioma`, `Nivel`) VALUES
(1, 1, '80% conversación'),
(1, 2, '80% conversación'),
(2, 1, '80% conversación'),
(2, 4, 'Basico'),
(3, 1, '80% conversación'),
(4, 1, 'Basico'),
(4, 4, '80% conversación'),
(9, 1, '80% conversación'),
(9, 4, '80% conversación'),
(12, 1, '80% conversación'),
(13, 1, '80% conversación'),
(14, 1, '80% conversación'),
(14, 3, '80% conversación'),
(15, 1, '80% conversación'),
(15, 2, 'Basico'),
(16, 1, '80% conversación'),
(16, 4, 'Basico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultadocandidato`
--

CREATE TABLE `resultadocandidato` (
  `EstatusProceso` varchar(45) DEFAULT NULL,
  `Comentarios` varchar(45) DEFAULT NULL,
  `Aprobacion` varchar(45) DEFAULT NULL,
  `Comentarios_ofertas_salario` varchar(45) DEFAULT NULL,
  `Comentarios_area_seleccion` varchar(45) DEFAULT NULL,
  `Estatus` varchar(45) DEFAULT NULL,
  `idSolicitud` int(11) DEFAULT NULL,
  `Curp` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `idSolicitud` int(11) NOT NULL,
  `FechaSolicitud` date DEFAULT NULL,
  `NumeroVacante` int(11) DEFAULT NULL,
  `idArea` int(11) NOT NULL,
  `idPuesto` int(11) NOT NULL,
  `idNivelAcademico` int(11) NOT NULL,
  `idCarrera` int(11) NOT NULL,
  `idEstatus_Solicitud` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`idSolicitud`, `FechaSolicitud`, `NumeroVacante`, `idArea`, `idPuesto`, `idNivelAcademico`, `idCarrera`, `idEstatus_Solicitud`) VALUES
(14, '2020-04-30', 1, 1, 1, 3, 3, 3),
(15, '2020-04-30', 1, 1, 3, 3, 3, 3),
(16, '2020-04-30', 5, 2, 2, 3, 3, 6),
(17, '2020-04-30', 10, 2, 2, 3, 3, 6),
(19, '2020-04-30', 5, 3, 4, 3, 3, 2),
(22, '2020-04-30', 2, 3, 2, 1, 1, 2),
(23, '2020-04-30', 15, 3, 8, 1, 1, 3),
(24, '2020-04-09', 15, 1, 2, 2, 3, 2),
(25, '2020-04-30', 2, 2, 8, 1, 1, 6),
(26, '0000-00-00', 2, 1, 8, 1, 1, 1),
(27, '2020-05-19', 5, 1, 14, 3, 3, 3),
(28, '2020-05-22', 5, 1, 15, 3, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `idperfil_admo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `usuario`, `password`, `nombre`, `idperfil_admo`) VALUES
(2, 'asisa@gmail.com', 'sisa', 'rodrigo', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`idAnuncio`),
  ADD KEY `fk_Anuncio_Contacto1` (`idcontacto`),
  ADD KEY `fk_Anuncio_Solicitud1` (`idSolicitud`),
  ADD KEY `fk_Anuncio_Publicidad1` (`idMedioPublicidad`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`idArea`);

--
-- Indices de la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`Curp`),
  ADD KEY `fk_Candidato_EstadoCivil1` (`idEstadoCivil`);

--
-- Indices de la tabla `candidato_has_habilidad`
--
ALTER TABLE `candidato_has_habilidad`
  ADD PRIMARY KEY (`Curp`,`idHabilidad`),
  ADD KEY `fk_Candidato_has_Habilidad_Habilidad1` (`idHabilidad`);

--
-- Indices de la tabla `candidato_has_idioma`
--
ALTER TABLE `candidato_has_idioma`
  ADD PRIMARY KEY (`Curp`,`idIdioma`),
  ADD KEY `fk_Candidato_has_Idioma_Idioma1` (`idIdioma`);

--
-- Indices de la tabla `candidato_has_nivelacademico`
--
ALTER TABLE `candidato_has_nivelacademico`
  ADD PRIMARY KEY (`Curp`,`idNivelAcademico`),
  ADD KEY `fk_Candidato_has_NivelAcademico_NivelAcademico1` (`idNivelAcademico`),
  ADD KEY `fk_Candidato_has_NivelAcademico_Carrera1` (`idCarrera`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`idCarrera`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`idcontacto`);

--
-- Indices de la tabla `datos_de_empresa`
--
ALTER TABLE `datos_de_empresa`
  ADD PRIMARY KEY (`idEmpresa`);

--
-- Indices de la tabla `estadocivil`
--
ALTER TABLE `estadocivil`
  ADD PRIMARY KEY (`idEstadoCivil`);

--
-- Indices de la tabla `estatus_solicitud`
--
ALTER TABLE `estatus_solicitud`
  ADD PRIMARY KEY (`idEstatus_Solicitud`);

--
-- Indices de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  ADD PRIMARY KEY (`idHabilidad`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`idIdioma`);

--
-- Indices de la tabla `mediopublicidad`
--
ALTER TABLE `mediopublicidad`
  ADD PRIMARY KEY (`idMedioPublicidad`);

--
-- Indices de la tabla `nivelacademico`
--
ALTER TABLE `nivelacademico`
  ADD PRIMARY KEY (`idNivelAcademico`);

--
-- Indices de la tabla `perfil_admo`
--
ALTER TABLE `perfil_admo`
  ADD PRIMARY KEY (`idperfil_admo`);

--
-- Indices de la tabla `perfil_admo_has_proceso`
--
ALTER TABLE `perfil_admo_has_proceso`
  ADD KEY `idperfil_admo` (`idperfil_admo`) USING BTREE,
  ADD KEY `idproceso` (`idproceso`),
  ADD KEY `idpermisos` (`idpermisos`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermisos`);

--
-- Indices de la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD PRIMARY KEY (`idproceso`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`idPuesto`);

--
-- Indices de la tabla `puesto_has_habilidad`
--
ALTER TABLE `puesto_has_habilidad`
  ADD PRIMARY KEY (`idPuesto`,`idHabilidad`),
  ADD KEY `fk_Puesto_has_habilidad_habilidad` (`idHabilidad`);

--
-- Indices de la tabla `puesto_has_idioma`
--
ALTER TABLE `puesto_has_idioma`
  ADD PRIMARY KEY (`idPuesto`,`idIdioma`),
  ADD KEY `fk_Puesto_has_habilidad_Idioma` (`idIdioma`);

--
-- Indices de la tabla `resultadocandidato`
--
ALTER TABLE `resultadocandidato`
  ADD KEY `fk_ResultadoCandidato_Solicitud1` (`idSolicitud`),
  ADD KEY `fk_ResultadoCandidato_Candidato1` (`Curp`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`idSolicitud`),
  ADD KEY `fk_Solicitud_Area1` (`idArea`),
  ADD KEY `fk_Solicitud_Puesto1` (`idPuesto`),
  ADD KEY `fk_Solicitud_Nivel_Academico1` (`idNivelAcademico`),
  ADD KEY `fk_Solicitud_Carrera1` (`idCarrera`),
  ADD KEY `fk_Solicitud_Estatus_Solicitud1` (`idEstatus_Solicitud`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`,`idperfil_admo`),
  ADD KEY `fk_Usuario_perfil_admo1` (`idperfil_admo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `idAnuncio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `idArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `idCarrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `idcontacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `datos_de_empresa`
--
ALTER TABLE `datos_de_empresa`
  MODIFY `idEmpresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estadocivil`
--
ALTER TABLE `estadocivil`
  MODIFY `idEstadoCivil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estatus_solicitud`
--
ALTER TABLE `estatus_solicitud`
  MODIFY `idEstatus_Solicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  MODIFY `idHabilidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `idIdioma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `mediopublicidad`
--
ALTER TABLE `mediopublicidad`
  MODIFY `idMedioPublicidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `nivelacademico`
--
ALTER TABLE `nivelacademico`
  MODIFY `idNivelAcademico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `perfil_admo`
--
ALTER TABLE `perfil_admo`
  MODIFY `idperfil_admo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermisos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proceso`
--
ALTER TABLE `proceso`
  MODIFY `idproceso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puesto`
--
ALTER TABLE `puesto`
  MODIFY `idPuesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `idSolicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD CONSTRAINT `fk_Anuncio_Contacto1` FOREIGN KEY (`idcontacto`) REFERENCES `contacto` (`idcontacto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Anuncio_MedioPublicidad1` FOREIGN KEY (`idMedioPublicidad`) REFERENCES `mediopublicidad` (`idMedioPublicidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Anuncio_Publicidad1` FOREIGN KEY (`idMedioPublicidad`) REFERENCES `mediopublicidad` (`idMedioPublicidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Anuncio_Solicitud1` FOREIGN KEY (`idSolicitud`) REFERENCES `solicitud` (`idSolicitud`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD CONSTRAINT `fk_Candidato_EstadoCivil1` FOREIGN KEY (`idEstadoCivil`) REFERENCES `estadocivil` (`idEstadoCivil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `candidato_has_habilidad`
--
ALTER TABLE `candidato_has_habilidad`
  ADD CONSTRAINT `fk_Candidato_has_Habilidad_Candidato1` FOREIGN KEY (`Curp`) REFERENCES `candidato` (`Curp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Candidato_has_Habilidad_Habilidad1` FOREIGN KEY (`idHabilidad`) REFERENCES `habilidad` (`idHabilidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `candidato_has_idioma`
--
ALTER TABLE `candidato_has_idioma`
  ADD CONSTRAINT `fk_Candidato_has_Idioma_Candidato1` FOREIGN KEY (`Curp`) REFERENCES `candidato` (`Curp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Candidato_has_Idioma_Idioma1` FOREIGN KEY (`idIdioma`) REFERENCES `idioma` (`idIdioma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `candidato_has_nivelacademico`
--
ALTER TABLE `candidato_has_nivelacademico`
  ADD CONSTRAINT `fk_Candidato_has_NivelAcademico_Candidato1` FOREIGN KEY (`Curp`) REFERENCES `candidato` (`Curp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Candidato_has_NivelAcademico_Carrera1` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Candidato_has_NivelAcademico_NivelAcademico1` FOREIGN KEY (`idNivelAcademico`) REFERENCES `nivelacademico` (`idNivelAcademico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `perfil_admo_has_proceso`
--
ALTER TABLE `perfil_admo_has_proceso`
  ADD CONSTRAINT `perfil_admo_has_proceso_ibfk_1` FOREIGN KEY (`idperfil_admo`) REFERENCES `perfil_admo` (`idperfil_admo`),
  ADD CONSTRAINT `perfil_admo_has_proceso_ibfk_2` FOREIGN KEY (`idproceso`) REFERENCES `proceso` (`idproceso`),
  ADD CONSTRAINT `perfil_admo_has_proceso_ibfk_3` FOREIGN KEY (`idpermisos`) REFERENCES `permisos` (`idpermisos`);

--
-- Filtros para la tabla `puesto_has_habilidad`
--
ALTER TABLE `puesto_has_habilidad`
  ADD CONSTRAINT `fk_Puesto_has_habilidad_habilidad` FOREIGN KEY (`idHabilidad`) REFERENCES `habilidad` (`idHabilidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Puesto_has_habilidad_puesto` FOREIGN KEY (`idPuesto`) REFERENCES `puesto` (`idPuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `puesto_has_idioma`
--
ALTER TABLE `puesto_has_idioma`
  ADD CONSTRAINT `fk_Puesto_has_Idioma_Puesto` FOREIGN KEY (`idPuesto`) REFERENCES `puesto` (`idPuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Puesto_has_habilidad_Idioma` FOREIGN KEY (`idIdioma`) REFERENCES `idioma` (`idIdioma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `resultadocandidato`
--
ALTER TABLE `resultadocandidato`
  ADD CONSTRAINT `fk_ResultadoCandidato_Candidato1` FOREIGN KEY (`Curp`) REFERENCES `candidato` (`Curp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ResultadoCandidato_Solicitud1` FOREIGN KEY (`idSolicitud`) REFERENCES `solicitud` (`idSolicitud`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `fk_Solicitud_Area1` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Solicitud_Carrera1` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Solicitud_Estatus_Solicitud1` FOREIGN KEY (`idEstatus_Solicitud`) REFERENCES `estatus_solicitud` (`idEstatus_Solicitud`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Solicitud_Nivel_Academico1` FOREIGN KEY (`idNivelAcademico`) REFERENCES `nivelacademico` (`idNivelAcademico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Solicitud_Puesto1` FOREIGN KEY (`idPuesto`) REFERENCES `puesto` (`idPuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_perfil_admo1` FOREIGN KEY (`idperfil_admo`) REFERENCES `perfil_admo` (`idperfil_admo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
