-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-01-2017 a las 16:34:25
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
-- Estructura de tabla para la tabla `festivos_privado`
--

CREATE TABLE IF NOT EXISTS `festivos_privado` (
  `id_festivos_privado` int(11) NOT NULL AUTO_INCREMENT,
  `festivos_privado` date NOT NULL,
  `descipcion_privado` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_festivos_privado`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `festivos_privado`
--

INSERT INTO `festivos_privado` (`id_festivos_privado`, `festivos_privado`, `descipcion_privado`) VALUES
(1, '2016-12-20', 'vacancia judicial'),
(2, '2016-12-21', 'vacancia judicial '),
(3, '2016-12-22', 'vacancia judicial '),
(4, '2016-12-23', 'vacancia judicial '),
(5, '2016-12-24', 'vacancia judicial '),
(6, '2016-12-25', 'vacancia judicial '),
(7, '2016-12-26', 'vacancia judicial '),
(8, '2016-12-27', 'vacancia judicial '),
(9, '2016-12-28', 'vacancia judicial '),
(10, '2016-12-29', 'vacancia judicial '),
(11, '2016-12-30', 'vacancia judicial '),
(12, '2016-12-31', 'vacancia judicial '),
(14, '2017-01-01', 'vacancia judicial '),
(15, '2017-01-02', 'vacancia judicial \r\n'),
(16, '2017-01-03', 'vacancia judicial '),
(17, '2017-01-04', 'vacancia judicial '),
(18, '2017-01-05', 'vacancia judicial '),
(19, '2017-01-06', 'vacancia judicial '),
(20, '2017-01-07', 'vacancia judicial '),
(21, '2017-01-08', 'vacancia judicial '),
(22, '2017-01-09', 'vacancia judicial '),
(23, '2017-01-10', 'vacancia judicial ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
