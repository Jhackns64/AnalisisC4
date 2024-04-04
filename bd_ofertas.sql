-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2024 a las 17:48:34
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_ofertas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(3) NOT NULL,
  `razon_social` varchar(128) NOT NULL DEFAULT '0',
  `ruc` varchar(11) NOT NULL DEFAULT '0',
  `correo` varchar(64) NOT NULL DEFAULT '0',
  `direccion` varchar(128) NOT NULL DEFAULT '0',
  `telefono` varchar(10) NOT NULL DEFAULT '0',
  `descripcion` varchar(500) NOT NULL DEFAULT '0',
  `rubro` varchar(64) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertas`
--

CREATE TABLE `ofertas` (
  `id` varchar(5) NOT NULL,
  `titulo` varchar(255) NOT NULL DEFAULT '',
  `id_empresa` varchar(64) NOT NULL DEFAULT '',
  `pago` double DEFAULT 0,
  `horario` varchar(20) DEFAULT NULL,
  `especialidad` varchar(20) NOT NULL DEFAULT '' COMMENT 'si se requiere o no conocimientos adicionales',
  `modalidad` varchar(30) NOT NULL DEFAULT '' COMMENT 'presencial o remoto',
  `fecha_publicación` date DEFAULT NULL,
  `fecha_cierre` date DEFAULT NULL,
  `maximo_postulantes` int(20) NOT NULL,
  `cantidad_postulantes` int(20) NOT NULL,
  `estado` varchar(30) NOT NULL DEFAULT '' COMMENT 'vigente, aceptado, desierto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulaciones`
--

CREATE TABLE `postulaciones` (
  `id` varchar(5) NOT NULL DEFAULT '',
  `postulante` varchar(30) NOT NULL DEFAULT '',
  `id_postulante` int(10) DEFAULT NULL,
  `id_oferta` int(10) DEFAULT NULL,
  `fecha_postulacion` date DEFAULT NULL,
  `estado` varchar(10) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulantes`
--

CREATE TABLE `postulantes` (
  `id` int(11) NOT NULL,
  `dni` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `nombres` int(11) NOT NULL,
  `apellidos` int(11) NOT NULL,
  `correo` varchar(10) NOT NULL DEFAULT '',
  `telefono` varchar(20) NOT NULL DEFAULT '',
  `direccion` varchar(20) NOT NULL DEFAULT '',
  `estado_civil` varchar(4) DEFAULT '',
  `especialidad` varchar(30) NOT NULL DEFAULT '',
  `archivo_cv` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postulantes`
--
ALTER TABLE `postulantes`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
