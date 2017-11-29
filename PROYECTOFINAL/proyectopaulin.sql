-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2017 a las 18:11:38
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectopaulin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancelacion`
--

CREATE TABLE `cancelacion` (
  `idCancelacion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `idComprobante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante`
--

CREATE TABLE `comprobante` (
  `idComprobante` int(11) NOT NULL,
  `version` double(2,1) NOT NULL DEFAULT '3.3',
  `serie` varchar(25) DEFAULT NULL,
  `folio` varchar(40) NOT NULL,
  `fechaHora` date NOT NULL,
  `formaPago` varchar(20) NOT NULL,
  `condicionesPago` varchar(30) NOT NULL,
  `subtotal` double(7,2) DEFAULT NULL,
  `moneda` varchar(20) DEFAULT NULL,
  `tipoCambio` varchar(20) DEFAULT NULL,
  `total` double(7,2) NOT NULL,
  `tipoComprobante` varchar(20) NOT NULL,
  `metodoPago` varchar(20) NOT NULL,
  `lugarExpedicion` varchar(30) NOT NULL,
  `totalImpuestos` double(7,2) NOT NULL,
  `rfcEmisor` int(11) NOT NULL,
  `idReceptor` int(11) NOT NULL,
  `numCuentaPago` int(4) DEFAULT NULL,
  `estadoComprobante` int(1) NOT NULL,
  `idTraslado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concepto`
--

CREATE TABLE `concepto` (
  `idConcepto` int(11) NOT NULL,
  `identificacion` int(15) DEFAULT NULL,
  `cantidad` int(7) NOT NULL,
  `unidad` varchar(15) DEFAULT NULL,
  `valorUnitario` double(7,2) NOT NULL,
  `importe` double(7,2) DEFAULT NULL,
  `descripcion` varchar(100) NOT NULL,
  `folio` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleconcepto`
--

CREATE TABLE `detalleconcepto` (
  `idDetalleConcepto` int(11) NOT NULL,
  `idComprobante` int(11) NOT NULL,
  `idConcepto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emisor`
--

CREATE TABLE `emisor` (
  `rfcEmisor` int(50) NOT NULL,
  `nombreEmisor` varchar(30) NOT NULL,
  `rfc` varchar(40) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `regimenFiscal` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receptor`
--

CREATE TABLE `receptor` (
  `idReceptor` int(11) NOT NULL,
  `nacionalidad` varchar(15) DEFAULT NULL,
  `razonSocialReceptor` varchar(30) DEFAULT NULL,
  `rfcReceptor` varchar(13) NOT NULL,
  `calleReceptor` varchar(80) DEFAULT NULL,
  `numExtReceptor` int(4) DEFAULT NULL,
  `numIntReceptor` int(4) DEFAULT NULL,
  `coloniaReceptor` varchar(80) DEFAULT NULL,
  `localidadReceptor` varchar(80) DEFAULT NULL,
  `referenciaReceptor` varchar(100) DEFAULT NULL,
  `municipioReceptor` varchar(30) DEFAULT NULL,
  `estadoReceptor` varchar(30) DEFAULT NULL,
  `paisReceptor` varchar(30) NOT NULL,
  `codigoPostalReceptor` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traslado`
--

CREATE TABLE `traslado` (
  `idTraslado` int(11) NOT NULL,
  `impuesto` varchar(10) NOT NULL,
  `totalImpuestos` double(7,2) DEFAULT NULL,
  `tasa` varchar(20) NOT NULL,
  `importe` double(7,2) DEFAULT NULL,
  `folio` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cancelacion`
--
ALTER TABLE `cancelacion`
  ADD PRIMARY KEY (`idCancelacion`),
  ADD KEY `idComprobante` (`idComprobante`);

--
-- Indices de la tabla `comprobante`
--
ALTER TABLE `comprobante`
  ADD PRIMARY KEY (`idComprobante`),
  ADD KEY `idReceptor` (`idReceptor`),
  ADD KEY `idTraslado` (`idTraslado`),
  ADD KEY `rfcEmisor` (`rfcEmisor`);

--
-- Indices de la tabla `concepto`
--
ALTER TABLE `concepto`
  ADD PRIMARY KEY (`idConcepto`);

--
-- Indices de la tabla `detalleconcepto`
--
ALTER TABLE `detalleconcepto`
  ADD PRIMARY KEY (`idDetalleConcepto`),
  ADD KEY `idComprobante` (`idComprobante`),
  ADD KEY `idConcepto` (`idConcepto`);

--
-- Indices de la tabla `emisor`
--
ALTER TABLE `emisor`
  ADD PRIMARY KEY (`rfcEmisor`);

--
-- Indices de la tabla `receptor`
--
ALTER TABLE `receptor`
  ADD PRIMARY KEY (`idReceptor`);

--
-- Indices de la tabla `traslado`
--
ALTER TABLE `traslado`
  ADD PRIMARY KEY (`idTraslado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cancelacion`
--
ALTER TABLE `cancelacion`
  MODIFY `idCancelacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `comprobante`
--
ALTER TABLE `comprobante`
  MODIFY `idComprobante` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `concepto`
--
ALTER TABLE `concepto`
  MODIFY `idConcepto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalleconcepto`
--
ALTER TABLE `detalleconcepto`
  MODIFY `idDetalleConcepto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `emisor`
--
ALTER TABLE `emisor`
  MODIFY `rfcEmisor` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `receptor`
--
ALTER TABLE `receptor`
  MODIFY `idReceptor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `traslado`
--
ALTER TABLE `traslado`
  MODIFY `idTraslado` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cancelacion`
--
ALTER TABLE `cancelacion`
  ADD CONSTRAINT `cancelacion_ibfk_1` FOREIGN KEY (`idComprobante`) REFERENCES `comprobante` (`idComprobante`);

--
-- Filtros para la tabla `comprobante`
--
ALTER TABLE `comprobante`
  ADD CONSTRAINT `comprobante_ibfk_1` FOREIGN KEY (`idReceptor`) REFERENCES `receptor` (`idReceptor`),
  ADD CONSTRAINT `comprobante_ibfk_2` FOREIGN KEY (`idTraslado`) REFERENCES `traslado` (`idTraslado`),
  ADD CONSTRAINT `comprobante_ibfk_3` FOREIGN KEY (`rfcEmisor`) REFERENCES `emisor` (`rfcEmisor`);

--
-- Filtros para la tabla `detalleconcepto`
--
ALTER TABLE `detalleconcepto`
  ADD CONSTRAINT `detalleconcepto_ibfk_1` FOREIGN KEY (`idComprobante`) REFERENCES `comprobante` (`idComprobante`),
  ADD CONSTRAINT `detalleconcepto_ibfk_2` FOREIGN KEY (`idConcepto`) REFERENCES `concepto` (`idConcepto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
