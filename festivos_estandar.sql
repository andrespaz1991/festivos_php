-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-01-2017 a las 16:34:10
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `acciones_constitucionales`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `festivos_estandar`
--

CREATE TABLE IF NOT EXISTS `festivos_estandar` (
  `id_festivos_estandar` int(11) NOT NULL AUTO_INCREMENT,
  `festivo_estandar` varchar(255) COLLATE utf8_bin NOT NULL,
  `descripcion_estandar` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_festivos_estandar`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `festivos_estandar`
--

INSERT INTO `festivos_estandar` (`id_festivos_estandar`, `festivo_estandar`, `descripcion_estandar`) VALUES
(2, '11-14', 'festivo nacional'),
(3, '07-20', 'Día de independencia'),
(4, '12-08', 'Día de la Inmaculada Concepción'),
(5, '03-20', 'Día de San José'),
(6, '12-25', 'Día de Navidad ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
