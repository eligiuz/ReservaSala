-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-07-2017 a las 12:41:50
-- Versión del servidor: 5.5.52-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `eventos`
--
CREATE DATABASE IF NOT EXISTS `eventos` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `eventos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--
-- Creación: 04-07-2017 a las 19:17:06
--

DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE IF NOT EXISTS `departamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `extension` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--
-- Creación: 19-09-2016 a las 21:42:09
--

DROP TABLE IF EXISTS `eventos`;
CREATE TABLE IF NOT EXISTS `eventos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `responsable_nombre` varchar(120) NOT NULL,
  `responsable_apellido` varchar(35) NOT NULL,
  `body` text NOT NULL,
  `url` varchar(150) NOT NULL,
  `class` varchar(45) NOT NULL DEFAULT 'event-videoconferencia',
  `start` varchar(15) NOT NULL,
  `end` varchar(15) NOT NULL,
  `inicio_normal` varchar(50) NOT NULL,
  `final_normal` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `ponente_nombre` varchar(35) NOT NULL,
  `ponente_apellido` varchar(35) NOT NULL,
  `objetivo` text NOT NULL,
  `empresa` varchar(120) NOT NULL,
  `AH` int(11) NOT NULL,
  `AM` int(11) NOT NULL,
  `DH` int(11) NOT NULL,
  `DM` int(11) NOT NULL,
  `ADH` int(11) NOT NULL,
  `ADM` int(11) NOT NULL,
  `OH` int(11) NOT NULL,
  `OM` int(11) NOT NULL,
  `inst_part` text NOT NULL,
  `enlace_nombre` varchar(35) NOT NULL,
  `enlace_apellido` varchar(35) NOT NULL,
  `observacion` text NOT NULL,
  `opinion` text NOT NULL,
  `cancel` int(1) NOT NULL DEFAULT '0',
  `cancel_comment` text NOT NULL,
  `apartado` int(1) NOT NULL DEFAULT '0',
  `serie` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `eventos_user_id_index` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `user_id`, `title`, `responsable_nombre`, `responsable_apellido`, `body`, `url`, `class`, `start`, `end`, `inicio_normal`, `final_normal`, `status`, `ponente_nombre`, `ponente_apellido`, `objetivo`, `empresa`, `AH`, `AM`, `DH`, `DM`, `ADH`, `ADM`, `OH`, `OM`, `inst_part`, `enlace_nombre`, `enlace_apellido`, `observacion`, `opinion`, `cancel`, `cancel_comment`, `apartado`, `serie`) VALUES
(1, 2, 'Bur&oacute; de cr&eacute;dito', 'Australia', 'Vallejo', 'La conferencia comenzar&aacute; a las 10 de la ma&ntilde;ana.', 'descripcion_evento.php?id=1', 'event-conferencia', '1470319200000', '1470330000000', '04/08/2016 9:00', '04/08/2016 12:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 0),
(2, 2, 'Película', 'Juan de Dios', 'Garcia ', 'Se proyectaran dos peliculas', 'descripcion_evento.php?id=2', 'event-pelicula', '1470754800000', '1470783600000', '09/08/2016 10:00', '09/08/2016 18:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 0),
(6, 2, 'Firma de Convenio', 'Australia ', 'Vallejo', 'El evento comenzar&aacute; a las 10 de la ma&ntilde;ana.', 'descripcion_evento.php?id=6', 'event-convenio', '1471528800000', '1471539600000', '18/08/2016 9:00', '18/08/2016 12:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 0),
(7, 2, 'Película', 'Juan de Dios', 'Garc&iacute;a Segura', 'Comenzar&aacute; a la 1 p.m.', 'descripcion_evento.php?id=7', 'event-pelicula', '1471539600000', '1471554000000', '18/08/2016 12:00', '18/08/2016 16:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 0),
(8, 4, 'Primeros auxilios- lesiones en el deporte', 'Isabel Cristina', 'Balc&aacute;zar', 'Curso', 'descripcion_evento.php?id=8', 'event-capacitacion', '1473080400000', '1473105600000', '05/09/2016 8:00', '05/09/2016 15:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 1, 8),
(9, 4, 'Primeros auxilios', 'Isabel Cristina', 'Balc&aacute;zar', 'Curso', 'descripcion_evento.php?id=9', 'event-capacitacion', '1473166800000', '1473192000000', '06/09/2016 8:00', '06/09/2016 15:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 1, '', 1, 8),
(10, 4, 'Primeros auxilios', 'Isabel Cristina', 'Balc&aacute;zar', 'Curso', 'descripcion_evento.php?id=10', 'event-capacitacion', '1473253200000', '1473278400000', '07/09/2016 8:00', '07/09/2016 15:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 8),
(13, 2, 'Curso de inducción', 'María del Carmen', 'De la Torre Hidalgo', 'Nuevo ingreso', 'descripcion_evento.php?id=13', 'event-capacitacion', '1473771600000', '1473804000000', '13/09/2016 8:00', '13/09/2016 17:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 13),
(14, 2, 'Curso de inducción', 'Mar&iacute;a del Carmen', 'De la Torre Hidalgo', 'Nuevo ingreso', 'descripcion_evento.php?id=14', 'event-capacitacion', '1473858000000', '1473890400000', '14/09/2016 8:00', '14/09/2016 17:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 1, 13),
(15, 2, 'Curso de inducción', 'Mar&iacute;a del Carmen', 'De la Torre Hidalgo', 'Nuevo ingreso', 'descripcion_evento.php?id=15', 'event-capacitacion', '1473944400000', '1473976800000', '15/09/2016 8:00', '15/09/2016 17:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 13),
(16, 1, 'Curso de inducción', 'Mar&iacute;a del Carmen', 'de la Torre Hidalgo', 'Nuevo ingreso', 'descripcion_evento.php?id=16', 'event-capacitacion', '1471870800000', '1471903200000', '22/08/2016 8:00', '22/08/2016 17:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 16),
(17, 1, 'Curso de inducción', 'María del Carmen', 'de la Torre Hidalgo', 'Nuevo ingreso', 'descripcion_evento.php?id=17', 'event-capacitacion', '1471957200000', '1471989600000', '23/08/2016 8:00', '23/08/2016 17:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 'Falla en aire acondicionado ( texto de prueba de captura).', 0, '', 0, 16),
(18, 1, 'Curso de inducción', 'Mar&iacute;a del Carmen', 'de la Torre Hidalgo', 'Nuevo ingreso', 'descripcion_evento.php?id=18', 'event-capacitacion', '1472043600000', '1472076000000', '24/08/2016 8:00', '24/08/2016 17:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 16),
(19, 1, 'Curso de inducción', 'Mar&iacute;a del Carmen', 'de la Torre Hidalgo', 'Nuevo ingreso', 'descripcion_evento.php?id=19', 'event-capacitacion', '1472130000000', '1472162400000', '25/08/2016 8:00', '25/08/2016 17:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 16),
(20, 1, 'Curso de inducción', 'Mar&iacute;a del Carmen', 'de la Torre Hidalgo', 'Nuevo ingreso', 'descripcion_evento.php?id=20', 'event-capacitacion', '1472216400000', '1472248800000', '26/08/2016 8:00', '26/08/2016 17:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 16),
(21, 1, 'Curso de inducción', 'Mar&iacute;a del Carmen', 'de la Torre Hidalgo', 'Nuevo ingreso', 'descripcion_evento.php?id=21', 'event-capacitacion', '1472475600000', '1472508000000', '29/08/2016 8:00', '29/08/2016 17:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 21),
(22, 1, 'Curso de inducción', 'Mar&iacute;a del Carmen', 'de la Torre Hidalgo', 'Nuevo ingreso', 'descripcion_evento.php?id=22', 'event-capacitacion', '1472562000000', '1472594400000', '30/08/2016 8:00', '30/08/2016 17:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 21),
(23, 1, 'Curso de inducción', 'Mar&iacute;a del Carmen', 'de la Torre Hidalgo', 'Nuevo ingreso', 'descripcion_evento.php?id=23', 'event-capacitacion', '1472648400000', '1472680800000', '31/08/2016 8:00', '31/08/2016 17:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 21),
(24, 1, 'Cursos de Matematicas', 'Christell ', 'Montiel', 'Para evaluados de COBATAB', 'descripcion_evento.php?id=24', 'event-otro', '1477936800000', '1477944000000', '31/10/2016 12:00', '31/10/2016 14:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 0),
(25, 4, 'Treintona', 'Christell', 'Montiel Arias', 'Solo alumnos', 'descripcion_evento.php?id=25', 'event-pelicula', '1477951200000', '1477958400000', '31/10/2016 16:00', '31/10/2016 18:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 1, 0),
(26, 4, 'Carros de Fuego', 'Laura Beatriz', 'Romero Hernández', 'Película del ciclo deporte', 'descripcion_evento.php?id=26', 'event-pelicula', '1479927600000', '1479934800000', '23/11/2016 13:00', '23/11/2016 15:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 1, '', 1, 0),
(32, 10, 'Caravana Empresarial', 'Australia ', 'Vallejo Hidalgo', 'Solicitan el préstamo audio y microfono', 'descripcion_evento.php?id=32', 'event-conferencia', '1499346000000', '1499389200000', '06/07/2017 8:00', '06/07/2017 20:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 1, 0),
(33, 9, 'Curso de Inducción', 'Maria del Carmen ', 'de la Torre Hidalgo', '2° proceso de admisión cuatrimestre septiembre-diciembre 2017', 'descripcion_evento.php?id=33', 'event-capacitacion', '1505138400000', '1505167200000', '11/09/2017 9:00', '11/09/2017 17:00', 'Privado', 'Maria del Carmen ', 'de la Torre Hidalgo', '', 'Universidad Tecnol&oacute;gica de Tabasco', 0, 0, 0, 0, 0, 0, 0, 0, 'UTTAB', '', '', '', '', 0, '', 1, 0),
(40, 9, 'Curso de Inducción', 'Maria del Carmen ', 'de la Torre Hidalgo', 'Proceso de admisión cuatrimestre septiembre-diciembre 2017', 'descripcion_evento.php?id=40', 'event-capacitacion', '1502719200000', '1502748000000', '14/08/2017 9:00', '14/08/2017 17:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 0),
(41, 9, 'Curso Inducción', 'Maria del Carmen ', 'de la Torre Hidalgo', 'Proceso de admisión cuatrimestre septiembre-diciembre 2017', 'descripcion_evento.php?id=41', 'event-capacitacion', '1503064800000', '1503093600000', '18/08/2017 9:00', '18/08/2017 17:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 0),
(42, 9, 'Curso de Inducción', 'Maria del Carmen', 'de la Torre Hidalgo', 'Proceso de admisión cuatrimestre septiembre-diciembre 2017', 'descripcion_evento.php?id=42', 'event-capacitacion', '1503324000000', '1503352800000', '21/08/2017 9:00', '21/08/2017 17:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 0),
(43, 12, 'Proyección de película Cinema MéxIco', 'Marco Antonio ', 'Velazquez Rojas ', 'solicitan cañón, audio y video ', 'descripcion_evento.php?id=43', 'event-pelicula', '1499787000000', '1499796000000', '11/07/2017 10:30', '11/07/2017 13:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 0),
(44, 15, 'Emprendedurismo rural', 'Ricardo Amado ', 'Moheno Barrueta', 'Taller', 'descripcion_evento.php?id=44', 'event-otro', '1511535600000', '1511568000000', '24/11/2017 9:00', '24/11/2017 18:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 1, 0),
(45, 12, 'Proyección de película Cinema MéxIco', 'Marco Antonio ', 'Velazquez Rojas ', 'solicitan cañón, audio y video ', 'descripcion_evento.php?id=45', 'event-pelicula', '1499963400000', '1499970600000', '13/07/2017 11:30', '13/07/2017 13:30', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 0),
(46, 15, 'Emprendedurismo rural', 'Ricardo Amado', ' Moheno Barrueta', 'Taller', 'descripcion_evento.php?id=46', 'event-otro', '1511362800000', '1511395200000', '22/11/2017 9:00', '22/11/2017 18:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 1, 0),
(47, 3, 'Información a los alumnos de Proyecta 2017', 'Guido Fidel', 'Flores Pérez', 'Alumnos de la UTTAB', 'descripcion_evento.php?id=47', 'event-reunion', '1498773600000', '1498780800000', '29/06/2017 17:00', '29/06/2017 19:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 1, 0),
(48, 3, 'Información alumnos de Proyecta 1000', 'Guido Fidel', 'Flores Pérez', 'Alumnos de la UTTAB', 'descripcion_evento.php?id=48', 'event-reunion', '1498748400000', '1498755600000', '29/06/2017 10:00', '29/06/2017 12:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 0),
(49, 1, 'Sensibilización de atención  a víctimas', 'María del Carmen', 'de la Torre Hidalgo', 'Plática', 'descripcion_evento.php?id=49', 'event-otro', '1499178600000', '1499187600000', '04/07/2017 9:30', '04/07/2017 12:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 0),
(50, 11, 'Actividad pre-vacacional (Prueba)', 'Laura Beatriz', 'Romero Hernández', 'Se confirmara participantes con S.A.', 'descripcion_evento.php?id=50', 'event-reunion', '1500040800000', '1500062400000', '14/07/2017 9:00', '14/07/2017 15:00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--
-- Creación: 19-09-2016 a las 21:42:09
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `nombre_usuario` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `privilegio` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `nombre_usuario`, `password`, `privilegio`) VALUES
(1, 'Eligio', 'Cachón Menéndez', 'ecachon', '$2y$10$CYNEkyavNJVHitgjX7mlc.8yGQDTqgQrShXcA2i9IL/f1sT.v2wbm', 2),
(2, 'María Pricila', 'Vasconcelos Ovando', 'pricila', '$2y$10$CrdnTr7KdcDbK5SUWMrfk.0.acOOHWlNds/7.4SeMsoNxCH6O6fX6', 2),
(3, 'Laura Beatriz', 'Romero HernÃ¡ndez', 'lbromeroh', '$2y$10$tn23rZNgxM8O9LOs/nVrU.CGd6DhCmKUFHl5akNVCXG4QDFvTmlZ6', 2),
(4, 'Isabel Cristina', 'Balcazar Peralta', 'acd', '*$2y$10$CYNEkyavNJVHitgjX7mlc.8yGQDTqgQrShXcA2i9IL/f1sT.v2wbm', 1),
(6, 'Georgina', 'Negroe LÃ³pez', 'gina', '*$2y$10$koO2zoh7OrTFI.Z1j24X/e2Noxqb1nuS8MkQym7HUE4QOMs2TTpmS', 2),
(7, 'Revisor', 'revisor', 'revisor', '$2y$10$tylnYLxtbKlkmSLyA4Co8O/lb7Jh6KG1/TYlJg6dIcQ3ytyTN4bq.', 2),
(8, 'Cristel del Carmen', 'Montiel Arias', 'ccmontiela', '$2y$10$4xWFzd67orXU/.3hnSeVAerDdlOcwVU761i4UrMs8cuT7uNnMNpOm', 2),
(9, 'María del Carmen', 'de la Torre Hidalgo', 'aestudiante', '$2y$10$HnKmLmRkHZ53MwNgI5ZCz.0RwV5Z0v9BESNgBBQYVCS0OBT7foQVK', 1),
(10, 'Australia', 'Vallejo Hidalgo', 'eempresarial', '$2y$10$HnKmLmRkHZ53MwNgI5ZCz.0RwV5Z0v9BESNgBBQYVCS0OBT7foQVK', 1),
(11, 'Laura Beatriz', 'Romero Hernández', 'ieducativa', '$2y$10$L5l70OB83RIlHlraBNsQFef4HuOMoKBkk26TgLoaO7qokINgtBKAq', 1),
(12, 'sacademica', 'sacademica', 'sacademica', '$2y$10$xTmpbJ.QsxQCCB8fhjk4xOed1qKn5.CMXT5irHS/g4RGeQ9YWy93.', 1),
(13, 'seducativos', 'seducativos', 'seducativos', '$2y$10$zUaJFtJ/9.zlOGubyDzcFuEjUEtj/JSO7yBSLwZAcd5csauIvdUxm', 1),
(14, 'sespecializados', 'sespecializados', 'sespecializados', '$2y$10$CvNK86riq2NNur9ySHRt1.1z8EW5OSxQeYu8C9yAs8jstm4Kz6Axy', 1),
(15, 'svinculacion', 'svinculacion', 'svinculacion', '$2y$10$glx5lVkI4OuULzv1nFLkQO35AwLgZP92A5WvURnVSYHxIZbmBs.fK', 1),
(16, 'turismo', 'turismo', 'turismo', '$2y$10$/oY.8DbVNUkTo1KVpLVIT.57I3fpzq1xqERwXsFpyEdxqPZQlF6WK', 1),
(17, 'duniversitaria', 'duniversitaria', 'duniversitaria', '$2y$10$PI5jlce1vDupqQ2ObCFcMOcWUF1HUJo5c7mule9h6ecY8CdEDS00a', 1),
(18, 'aculturales', 'aculturales', 'aculturales', '$2y$10$/YZhCNwvCyVJEUICWO4UP.t.TSMAdVwbNVqUlJtJjuCgDEIC64LTu', 1),
(19, 'quimica', 'quimica', 'quimica', '$2y$10$O4gF.sWP3ONn.OS2zRFyH.QU.Jah/XrcyzL3Ax/0SLlOKKcwEUguK', 1),
(20, 'sescolares', 'sescolares', 'sescolares', '$2y$10$YFi.b9vM0NphMYui1lD9neCboP7f5DHo2.AZBZ/T6KnBCTEYkmeOm', 1),
(21, 'procesos', 'procesos', 'procesos', '$2y$10$6UYOQ3w9SHQIoNyRmEqEPeeNOu/YeXpo7WzPiysoblNN3G.V71vz6', 1),
(22, 'tic', 'tic', 'tic', '$2y$10$pTAfE52NeOYZJ6Wb5LJb/OZAL8k8ICHxRffinV0/VxQa.Kj.0Jkki', 1),
(23, 'mantenimiento', 'mantenimiento', 'mantenimiento', '$2y$10$XR59JWJlwUs1COmIfO3Kd.kQQVM6TtrFsv3i/Kw8dLm4QZgUxKroG', 1),
(24, 'smedicos', 'smedicos', 'smedicos', '$2y$10$n5fLRT.pNnWFNFEUik5YsusHEILQdBputjqhxwRYAAoBICQrUStWG', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
