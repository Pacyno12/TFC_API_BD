-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2022 a las 02:23:41
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tfc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEncargado` bigint(13) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEncargado`, `nombre`, `apellido1`, `apellido2`) VALUES
(1, 'Prueba', 'Linea', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichajes`
--

CREATE TABLE `fichajes` (
  `idEmpleado` bigint(13) NOT NULL,
  `numLinea` int(10) NOT NULL,
  `fechaEntrada` varchar(50) NOT NULL,
  `fechaSalida` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fichajes`
--

INSERT INTO `fichajes` (`idEmpleado`, `numLinea`, `fechaEntrada`, `fechaSalida`) VALUES
(1, 1, '18-06-2022 19:43:55', '18-06-2022 19:44:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea1`
--

CREATE TABLE `linea1` (
  `idEmpleado` bigint(13) NOT NULL,
  `idCaja` bigint(13) NOT NULL,
  `fechaEntrada` varchar(50) NOT NULL,
  `numLinea` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `linea1`
--

INSERT INTO `linea1` (`idEmpleado`, `idCaja`, `fechaEntrada`, `numLinea`) VALUES
(1, 3700123302520, '18-06-2022 19:44:23', 1),
(1, 8480000155856, '18-06-2022 19:44:27', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea2`
--

CREATE TABLE `linea2` (
  `idEmpleado` bigint(13) NOT NULL,
  `idCaja` bigint(13) NOT NULL,
  `fechaEntrada` varchar(50) NOT NULL,
  `numLinea` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEncargado`);

--
-- Indices de la tabla `fichajes`
--
ALTER TABLE `fichajes`
  ADD KEY `idEmpleado` (`idEmpleado`);

--
-- Indices de la tabla `linea1`
--
ALTER TABLE `linea1`
  ADD KEY `idEmpleado` (`idEmpleado`);

--
-- Indices de la tabla `linea2`
--
ALTER TABLE `linea2`
  ADD KEY `idEmpleado` (`idEmpleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEncargado` bigint(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3700123302522;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `fichajes`
--
ALTER TABLE `fichajes`
  ADD CONSTRAINT `fichajes_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEncargado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `linea1`
--
ALTER TABLE `linea1`
  ADD CONSTRAINT `linea1_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEncargado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `linea2`
--
ALTER TABLE `linea2`
  ADD CONSTRAINT `linea2_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEncargado`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
