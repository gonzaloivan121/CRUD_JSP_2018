-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-03-2018 a las 00:06:09
-- Versión del servidor: 5.7.21-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud2018`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `codigo_cliente` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `empresa_ruc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`codigo_cliente`, `nombre`, `apellidos`, `empresa_ruc`) VALUES
(2, 'Juan José', 'Jimenez Baltazar', 1),
(3, 'María', 'Bernal Cuadre', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante_venta_maestro`
--

CREATE TABLE `comprobante_venta_maestro` (
  `numero` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `codigo_cliente` int(11) NOT NULL,
  `cliente_codigo_cliente` int(11) NOT NULL,
  `producto_codigo_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `ruc` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `pais` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`ruc`, `nombre`, `telefono`, `direccion`, `pais`) VALUES
(1, 'Tama', 546223644, 'C/ Tama', 'Estados Unidos'),
(3, 'Epiphone', 666666666, 'C/ Epiphone', 'Estados Unidos'),
(5, 'Prueba', 666666666, 'C/ Prueba', 'Prueba'),
(6, 'Fender', 333999666, 'C/ Fender', 'Estados Unidos'),
(7, 'Yahama', 123456789, 'C/ Yamaha', 'Japón'),
(8, 'Schecter', 666888444, 'C/ Schecter', 'Estados Unidos'),
(11, 'ESP', 687758940, 'C/ ESP', 'Estados Unidos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codigo_producto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `marca` varchar(15) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codigo_producto`, `nombre`, `modelo`, `marca`, `precio`) VALUES
(1, 'Epiphone Special II Pro White', 'Special II Pro', 'Epiphone', 401),
(3, 'Schecter Demon-7 Satin Black SBK', 'Demon-7 Satin Black SBK', 'Schecter', 510),
(4, 'Schecter Diamond Omen 7 Extreme', 'Diamond Omen 7 Extreme BCH', 'Schecter', 444),
(5, 'Mapex Black Panther Blaster Set', 'Black Panther Blaster Set', 'Mapex', 2799),
(6, 'Yamaha Recording Custom Studio RW', 'Recording Custom Studio RW', 'Yamaha', 3190),
(7, 'Yamaha Recording Custom Standard SFG', 'Recording Custom Standard SFG', 'Yamaha', 3444),
(8, 'Fender AM Elite Jazz Bass RW 3TSB', 'AM Elite Jazz Bass RW 3TSB', 'Fender', 2080),
(9, 'Fender AM Elite JazzBass V ASH MN NAT', 'AM Elite JazzBass V ASH MN NAT', 'Fender', 2222),
(10, 'Sadowsky Metro Vintage MV5 NAT', 'Metro Vintage MV5 NAT', 'Sadowsky', 2899),
(11, 'Tama Star Drum Bubinga Rock KNFB', 'Star Drum Bubinga Rock KNFB', 'Tama', 6111),
(12, 'DS Drums Rebel Maple Exotic Green Ebony', 'Rebel Maple Exotic Green Ebony', 'DS Drums', 3899);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `ruc` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `pais` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`ruc`, `nombre`, `telefono`, `direccion`, `pais`) VALUES
(1, 'Thomann', 546223644, 'C/ Thomann', 'Alemania'),
(3, 'Woodbrass', 552365478, 'C/ Woodbrass', 'China'),
(4, 'Multison Online', 666584125, 'C/ Multison Online', 'España'),
(5, 'Partitura Online', 652145698, 'C/ Partitura Online', 'España'),
(6, 'Musicstore', 658974523, 'Musicstore', 'Alemania'),
(7, 'Musik Produktiv', 639547412, 'C/ Musik Produktiv', 'España'),
(8, 'Unión Musical', 632514523, 'C/ Unión Musical', 'España'),
(9, 'Outlet Musical', 658412563, 'Outlet Musical', 'España'),
(10, 'Stringsfield', 632541253, 'C/ Stringsfield', 'Reino Unido'),
(11, 'Muziker', 965841253, 'C/ Muziker', 'Alemania'),
(12, 'Auvisa', 632541789, 'C/ Auvisa', 'España');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codigo_cliente`),
  ADD KEY `empresa_ruc` (`empresa_ruc`);

--
-- Indices de la tabla `comprobante_venta_maestro`
--
ALTER TABLE `comprobante_venta_maestro`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `cliente_codigo_cliente` (`cliente_codigo_cliente`),
  ADD KEY `producto_codigo_producto` (`producto_codigo_producto`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`ruc`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codigo_producto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`ruc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codigo_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `comprobante_venta_maestro`
--
ALTER TABLE `comprobante_venta_maestro`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `ruc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `codigo_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `ruc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`empresa_ruc`) REFERENCES `empresa` (`ruc`);

--
-- Filtros para la tabla `comprobante_venta_maestro`
--
ALTER TABLE `comprobante_venta_maestro`
  ADD CONSTRAINT `comprobante_venta_maestro_ibfk_1` FOREIGN KEY (`cliente_codigo_cliente`) REFERENCES `cliente` (`codigo_cliente`),
  ADD CONSTRAINT `comprobante_venta_maestro_ibfk_2` FOREIGN KEY (`producto_codigo_producto`) REFERENCES `producto` (`codigo_producto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
