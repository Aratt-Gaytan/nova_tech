-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2020 a las 02:48:57
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
-- Estructura de tabla para la tabla `actitud`
--

CREATE TABLE `actitud` (
  `id_actitud` int(11) NOT NULL,
  `Descripcion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actitud`
--

INSERT INTO `actitud` (`id_actitud`, `Descripcion`) VALUES
(1, 'buena'),
(2, 'regular'),
(3, 'mala'),
(4, 'No calificado');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `AreaDescripcion` varchar(45) NOT NULL,
  `AreaNombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`idArea`, `AreaDescripcion`, `AreaNombre`) VALUES
(17, 'Diseño de semiconductores', 'Desarrollo de producto'),
(21, 'Linea de producción de semiconductores ', 'Producción'),
(24, 'asfd', 'eminem');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato`
--

CREATE TABLE `candidato` (
  `Curp` varchar(18) NOT NULL,
  `RFC` varchar(13) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Domicilio` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `E_Mail` varchar(45) NOT NULL,
  `Sexo` varchar(45) NOT NULL,
  `Edad` tinyint(2) NOT NULL,
  `NSS` bigint(11) NOT NULL,
  `Fotografia` blob NOT NULL,
  `idEstadoCivil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `candidato`
--

INSERT INTO `candidato` (`Curp`, `RFC`, `Nombre`, `Domicilio`, `Telefono`, `E_Mail`, `Sexo`, `Edad`, `NSS`, `Fotografia`, `idEstadoCivil`) VALUES
('CORR820521HASNMR04', 'CORR820521TTT', 'CONTRERAS ROMO RODRIGO', 'conocido', '1234567890', 'CORR@GMAILCOM', 'Hombre', 25, 12345678901, '', 1),
('EUTA030807HASSRLA1', 'MELM8305281H0', 'JOSÉ ALEJANDRO', 'Kolazion', '4499999999', 'nsidnxoxkdofk@gmailcom', 'Hombre', 50, 12345678901, '', 1),
('GAFA030928HASYLRA9', 'MELM8305281H0', 'Prueba solicitante', 'calle #12132', '1234567890', 'ghjk@gmail.com', 'Hombre', 32, 12345678901, '', 2),
('GAFR020409MASYLSA5', 'MELM8305281H0', 'eminem', 'calle #12132', '1234567890', 'ghjk@gmail.com', 'Mujer', 32, 12345678901, '', 1),
('GAVI030628MASRLSA2', 'XAXX010101000', 'Renata Adriano', 'Pozo del sol', '4497785467', 'lupitabonita@gmail.com', 'Mujer', 25, 38750913578, '', 1),
('GUCG030510HDFTRRA6', 'LOMP8206281HO', 'arsdfgh', 'a', '4494343637', 'a@gmail.com', 'Hombre', 20, 46180307970, '', 2),
('XXXX000000XXXXXX00', 'XXXX0000000X0', 'laura piña', 'solecito 32', '4423467699', 'jejejeje@gmail.com', 'Mujer', 23, 14335647678, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato_has_habilidad`
--

CREATE TABLE `candidato_has_habilidad` (
  `Curp` varchar(18) NOT NULL,
  `idHabilidad` int(11) NOT NULL,
  `Experiencia` varchar(45) NOT NULL,
  `calificacion` int(11) NOT NULL DEFAULT 0,
  `Apto` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato_has_idioma`
--

CREATE TABLE `candidato_has_idioma` (
  `Curp` varchar(18) NOT NULL,
  `idIdioma` int(11) NOT NULL,
  `NIvel` varchar(45) NOT NULL,
  `calificacion` int(11) NOT NULL DEFAULT 0,
  `Apto` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato_has_nivelacademico`
--

CREATE TABLE `candidato_has_nivelacademico` (
  `Curp` varchar(18) NOT NULL,
  `idNivelAcademico` int(11) NOT NULL,
  `idCarrera` int(11) NOT NULL,
  `Institucion` varchar(20) NOT NULL,
  `validacion` tinyint(4) DEFAULT 1,
  `Apto` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `idCarrera` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`idCarrera`, `Descripcion`) VALUES
(1, 'waesrgdt');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `idcontacto` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Domicilio` varchar(45) NOT NULL,
  `Razon_Social` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_de_empresa`
--

CREATE TABLE `datos_de_empresa` (
  `idEmpresa` int(11) NOT NULL,
  `Nombre_de_empresa` varchar(100) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Telefono` varchar(40) NOT NULL,
  `Domicilio` varchar(100) NOT NULL,
  `E_Mail` varchar(50) NOT NULL,
  `RazonSocial` varchar(50) NOT NULL,
  `Estructura_Juridica` varchar(50) NOT NULL,
  `Encargado` varchar(50) NOT NULL,
  `CIF_Empresa` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos_de_empresa`
--

INSERT INTO `datos_de_empresa` (`idEmpresa`, `Nombre_de_empresa`, `Descripcion`, `Telefono`, `Domicilio`, `E_Mail`, `RazonSocial`, `Estructura_Juridica`, `Encargado`, `CIF_Empresa`) VALUES
(1, 'a', 'a', '1234567890', 'a', 'a@a.a', 'a', 'a', 'aa', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadocivil`
--

CREATE TABLE `estadocivil` (
  `idEstadoCivil` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estadocivil`
--

INSERT INTO `estadocivil` (`idEstadoCivil`, `Descripcion`) VALUES
(1, 'Casado'),
(2, 'Soltero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_solicitud`
--

CREATE TABLE `estatus_solicitud` (
  `idEstatus_Solicitud` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estatus_solicitud`
--

INSERT INTO `estatus_solicitud` (`idEstatus_Solicitud`, `Descripcion`) VALUES
(1, 'Pendiente'),
(2, 'Aprobada'),
(3, 'Publicado'),
(4, 'En proceso'),
(5, 'Terminado'),
(6, 'Cancelada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidad`
--

CREATE TABLE `habilidad` (
  `idHabilidad` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `habilidad`
--

INSERT INTO `habilidad` (`idHabilidad`, `Descripcion`) VALUES
(1, 'hacer owo´s :3');

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
(1, 'ingles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mediopublicidad`
--

CREATE TABLE `mediopublicidad` (
  `idMedioPublicidad` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelacademico`
--

CREATE TABLE `nivelacademico` (
  `idNivelAcademico` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nivelacademico`
--

INSERT INTO `nivelacademico` (`idNivelAcademico`, `Descripcion`) VALUES
(1, 'asfd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_admo`
--

CREATE TABLE `perfil_admo` (
  `idperfil_admo` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

CREATE TABLE `proceso` (
  `idproceso` int(11) NOT NULL,
  `desc_proceso` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `idPuesto` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `SalarioAnual` int(11) NOT NULL,
  `Beneficios` varchar(250) NOT NULL,
  `Bonos` int(11) NOT NULL,
  `Aprobacion` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `puesto`
--

INSERT INTO `puesto` (`idPuesto`, `Descripcion`, `SalarioAnual`, `Beneficios`, `Bonos`, `Aprobacion`) VALUES
(1, 'asfd', 1234567, '123456', 1234, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto_has_habilidad`
--

CREATE TABLE `puesto_has_habilidad` (
  `idPuesto` int(11) NOT NULL,
  `idHabilidad` int(11) NOT NULL,
  `Experiencia` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto_has_idioma`
--

CREATE TABLE `puesto_has_idioma` (
  `idPuesto` int(11) NOT NULL,
  `idIdioma` int(11) NOT NULL,
  `Nivel` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultadocandidato`
--

CREATE TABLE `resultadocandidato` (
  `EstatusProceso` varchar(45) NOT NULL,
  `Comentarios_area` varchar(45) NOT NULL,
  `Comentarios_ofertas_salario` varchar(45) NOT NULL,
  `Comentarios_area_seleccion` varchar(45) NOT NULL,
  `Estatus` varchar(45) NOT NULL,
  `idSolicitud` int(11) NOT NULL,
  `Curp` varchar(18) NOT NULL,
  `id_actitud` int(11) NOT NULL,
  `CoeficienteIntelectual` int(11) NOT NULL,
  `Personalidad` longtext NOT NULL,
  `apto_psico` int(3) NOT NULL,
  `apto` tinyint(1) DEFAULT NULL,
  `Calificacion_Medica` tinyint(1) DEFAULT NULL,
  `validacion` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `idSolicitud` int(11) NOT NULL,
  `FechaSolicitud` date NOT NULL,
  `NumeroVacante` int(11) NOT NULL,
  `idArea` int(11) NOT NULL,
  `idPuesto` int(11) NOT NULL,
  `idNivelAcademico` int(11) NOT NULL,
  `idCarrera` int(11) NOT NULL,
  `idEstatus_Solicitud` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `usuario`, `password`, `nombre`, `idperfil_admo`) VALUES
(39, 'novatech@nova.com', 'nova', 'eminem', 3),
(41, 'prueba', 'nada', 'pruebo', 15),
(46, 'pancho', 'lopez', 'pancho lopez', 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actitud`
--
ALTER TABLE `actitud`
  ADD PRIMARY KEY (`id_actitud`);

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
  ADD KEY `fk_ResultadoCandidato_Candidato1` (`Curp`),
  ADD KEY `fk_resultadocandidato_Actitud1_idx` (`id_actitud`);

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
  ADD PRIMARY KEY (`idusuario`,`idperfil_admo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actitud`
--
ALTER TABLE `actitud`
  MODIFY `id_actitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `idAnuncio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `idArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `idCarrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `idcontacto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos_de_empresa`
--
ALTER TABLE `datos_de_empresa`
  MODIFY `idEmpresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estadocivil`
--
ALTER TABLE `estadocivil`
  MODIFY `idEstadoCivil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estatus_solicitud`
--
ALTER TABLE `estatus_solicitud`
  MODIFY `idEstatus_Solicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  MODIFY `idHabilidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `idIdioma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mediopublicidad`
--
ALTER TABLE `mediopublicidad`
  MODIFY `idMedioPublicidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nivelacademico`
--
ALTER TABLE `nivelacademico`
  MODIFY `idNivelAcademico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `perfil_admo`
--
ALTER TABLE `perfil_admo`
  MODIFY `idperfil_admo` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `idPuesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `idSolicitud` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
