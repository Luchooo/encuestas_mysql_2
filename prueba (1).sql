-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2016 a las 00:21:17
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE IF NOT EXISTS `encuesta` (
  `id_encuesta` int(40) NOT NULL,
  `token` varchar(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `pregunta` varchar(100) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `fecha` date NOT NULL,
  `total_puntua` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `encuesta`
--

INSERT INTO `encuesta` (`id_encuesta`, `token`, `titulo`, `pregunta`, `visible`, `fecha`, `total_puntua`) VALUES
(1, 'colores_123', 'Colores', '¿Cuál es tu color favorito?', 1, '2016-05-19', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE IF NOT EXISTS `opciones` (
  `id_opciones` int(40) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `total` int(40) NOT NULL,
  `porcentaje` int(40) NOT NULL,
  `id_encuesta` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id_opciones`, `descripcion`, `total`, `porcentaje`, `id_encuesta`) VALUES
(1, 'purple', 2, 0, 1),
(2, 'Verde', 0, 0, 1),
(3, 'Morado', 1, 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `encuesta`
--
ALTER TABLE `encuesta`
 ADD PRIMARY KEY (`id_encuesta`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
 ADD PRIMARY KEY (`id_opciones`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
