-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2018 a las 04:31:24
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `web`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usuario_nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`usuario`, `password`, `usuario_nombre`) VALUES
('karens@uniminuto.edu', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'karen'),
('karens@uniminuto.edu', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'karen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `panel`
--

CREATE TABLE `panel` (
  `idpanel` int(50) NOT NULL,
  `monedas` text NOT NULL,
  `cod_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `panel`
--

INSERT INTO `panel` (`idpanel`, `monedas`, `cod_usuario`) VALUES
(1, 'Bitcoin', 1),
(2, 'N;', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `identificacion` int(11) DEFAULT NULL,
  `tarjeta` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `Pais` varchar(50) DEFAULT NULL,
  `nombre_Pais` varchar(100) DEFAULT NULL,
  `nombre_moneda` varchar(50) DEFAULT NULL,
  `codigo_moneda` varchar(45) DEFAULT NULL,
  `code_tel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `apellido`, `correo`, `telefono`, `identificacion`, `tarjeta`, `password`, `Pais`, `nombre_Pais`, `nombre_moneda`, `codigo_moneda`, `code_tel`) VALUES
(1, '1242', '123', '123@123.com', 1234567, 12345, '12345678', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'co', 'Colombia', 'Peso', 'COP', 57),
(2, '1242', '123', '123@123.com', 1234567, 12345, '12345678', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'co', 'Colombia', 'Peso', 'COP', 57),
(3, '1242', '123', '1232@123.com', 1234567, 12345, '12345678', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'co', 'Colombia', 'Peso', 'COP', 57),
(4, '1242', '123', '1232@123.com', 1234567, 12345, '12345678', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'co', 'Colombia', 'Peso', 'COP', 57),
(5, '1242', '123', '123222@123.com', 1234567, 12345, '12345678', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'co', 'Colombia', 'Peso', 'COP', 57),
(6, '1242', '123', '123@123.com', 1234567, 12345, '12345678', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'co', 'Colombia', 'Peso', 'COP', 57),
(7, '1242', '123', '12376@123.com', 1234567, 12345, '12345678', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'co', 'Colombia', 'Peso', 'COP', 57),
(9, '32433', '234234df', '12323@334324.com', 1234567, 12345677, '12345656', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'co', 'Colombia', 'Peso', 'COP', 57),
(10, '32433', '234234df', '12323@3324324.com', 1234567, 12345677, '12345656', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'co', 'Colombia', 'Peso', 'COP', 57),
(11, 'karen', 'rodriguez', 'karen@uniminuto.edu.co', 8765, 678997, '4567765', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'br', 'Brazil', 'Cruzeiro', 'BRC', 55),
(12, 'stefanie', 'rodriguez', 'stefanie@uniminuto.edu', 2345, 8765, '3465', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'cu', 'Cuba', 'Peso', 'CUP', 53),
(13, 'karen', 'rodriguez', 'karens@uniminuto.edu', 123456, 234567, '98765', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'cu', 'Cuba', 'Peso', 'CUP', 53);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `panel`
--
ALTER TABLE `panel`
  ADD PRIMARY KEY (`idpanel`),
  ADD KEY `fk_panel_usuario_idx` (`cod_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `panel`
--
ALTER TABLE `panel`
  MODIFY `idpanel` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `panel`
--
ALTER TABLE `panel`
  ADD CONSTRAINT `fk_panel_usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
