-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2017 a las 18:11:29
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
-- Base de datos: `proyectofinalpaulin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `llave` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `acceso`
--

INSERT INTO `acceso` (`username`, `password`, `llave`, `status`) VALUES
('PEDROH', 'PH1234', 'ASSSSSSSSSHOPAHSPOHDOAPHPOSHDOHAPOSDHPOASHOHOPFPASHOPHASOPFHOPASHFPOAHFPOHSAPOGHAPOGHPOASHGPOAHDOPGHASOPGHPAODHGPOASHGPOAHDGPOHDPOGHADPOGHAPOGHPOSDHGPOSHDGPOHSPDOGHOPSDHGPSHPGOHSPODH', 1),
('JUANC', 'JC1234', 'OHADPOAHPODHPOASHDAPOSHDPOAHSPODHPASOHDOPASHPODHPOASHDPOAHDKASDBKUASHODIHASOIDHASKDHIASHDOIASHDOIASOIDHAIOSHDOAS', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formas_pagos`
--

CREATE TABLE `formas_pagos` (
  `clave` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formas_pagos`
--

INSERT INTO `formas_pagos` (`clave`, `nombre`) VALUES
(1, 'Efectivo'),
(2, 'Cheque nominativo'),
(3, 'Transferencia electrónica de fondos'),
(4, 'Tarjeta de crédito\r\n'),
(5, 'Monedero electrónico\r\n'),
(6, 'Dinero electrónico\r\n'),
(8, 'Vales de despensa\r\n'),
(28, 'Tarjeta de debito\r\n'),
(29, 'Tarjeta de servicio\r\n'),
(99, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda`
--

CREATE TABLE `moneda` (
  `c_moneda` varchar(100) NOT NULL,
  `definicion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `moneda`
--

INSERT INTO `moneda` (`c_moneda`, `definicion`) VALUES
('AFN', 'Afgani afgano'),
('ALL', 'Lek albanés'),
('AMD', 'Dram armenio'),
('ANG', 'Florín antillano neerlandés'),
('AOA', 'Kwanza angoleño'),
('ARS', 'Peso argentino'),
('AUD', 'Dólar australiano'),
('AWG', 'Florín arubeño'),
('AZN', 'Manat azerbaiyano'),
('BAM', 'Marco convertible de Bosnia-Herzegovina'),
('BBD', 'Dólar de Barbados'),
('BDT', 'Taka de Bangladés'),
('BGN', 'Lev búlgaro'),
('BHD', 'Dinar bahreiní'),
('BIF', 'Franco burundés'),
('BMD', 'Dólar de Bermuda'),
('BND', 'Dólar de Brunéi'),
('BOB', 'Boliviano'),
('BOV', 'Mvdol boliviano (código de fondos)'),
('BRL', 'Real brasileño'),
('BSD', 'Dólar bahameño'),
('BTN', 'Ngultrum de Bután'),
('BWP', 'Pula de Botsuana'),
('BYR', 'Rublo bielorruso'),
('BZD', 'Dólar de Belice'),
('CAD', 'Dólar canadiense'),
('CDF', 'Franco congoleño, o congolés'),
('CHF', 'Franco suizo'),
('CLF', 'Unidades de fomento chilenas (código de fondos)'),
('CLP', 'Peso chileno'),
('CNY', 'Yuan chino'),
('COP', 'Peso colombiano'),
('COU', 'Unidad de valor real colombiana (añadida al COP)'),
('CRC', 'Colón costarricense'),
('CSD', 'Dinar serbio (Reemplazado por RSD el 25 de octubre de 2006)'),
('CUC', 'Peso cubano convertible'),
('CUP', 'Peso cubano'),
('CVE', 'Escudo caboverdiano'),
('CZK', 'Koruna checa'),
('D', 'Dirham de los Emiratos Árabes Unidos'),
('DJF', 'Franco yibutiano'),
('DKK', 'Corona danesa'),
('DOP', 'Peso dominicano'),
('DZD', 'Dinar argelino'),
('EGP', 'Libra egipcia'),
('ERN', 'Nakfa eritreo'),
('ETB', 'Birr etíope'),
('EUR', 'Euro'),
('FJD', 'Dólar fiyiano'),
('FKP', 'Libra malvinense'),
('GBP', 'Libra esterlina (libra de Gran Bretaña)'),
('GEL', 'Lari georgiano'),
('GHS', 'Cedi ghanés'),
('GIP', 'Libra de Gibraltar'),
('GMD', 'Dalasi gambiano'),
('GNF', 'Franco guineano'),
('GTQ', 'Quetzal guatemalteco'),
('GYD', 'Dólar guyanés'),
('HKD', 'Dólar de Hong Kong'),
('HNL', 'Lempira hondureño'),
('HRK', 'Kuna croata'),
('HTG', 'Gourde haitiano'),
('HUF', 'Forint húngaro'),
('IDR', 'Rupiah indonesia'),
('ILS', 'Nuevo shéquel israelí'),
('INR', 'Rupia india'),
('IQD', 'Dinar iraquí'),
('IRR', 'Rial iraní'),
('ISK', 'Króna islandesa'),
('JMD', 'Dólar jamaicano'),
('JOD', 'Dinar jordano'),
('JPY', 'Yen japonés'),
('KES', 'Chelín keniata'),
('KGS', 'Som kirguís (de Kirguistán)'),
('KHR', 'Riel camboyano'),
('KMF', 'Franco comoriano (de Comoras)'),
('KPW', 'Won norcoreano'),
('KRW', 'Won surcoreano'),
('KWD', 'Dinar kuwaití'),
('KYD', 'Dólar caimano (de Islas Caimán)'),
('KZT', 'Tenge kazajo'),
('LAK', 'Kip lao'),
('LBP', 'Libra libanesa'),
('LKR', 'Rupia de Sri Lanka'),
('LRD', 'Dólar liberiano'),
('LSL', 'Loti lesotense'),
('LTL', 'Litas lituano'),
('LVL', 'Lat letón'),
('LYD', 'Dinar libio'),
('MAD', 'Dirham marroquí'),
('MDL', 'Leu moldavo'),
('MGA', 'Ariary malgache'),
('MKD', 'Denar macedonio'),
('MMK', 'Kyat birmano'),
('MNT', 'Tughrik mongol'),
('MOP', 'Pataca de Macao'),
('MRO', 'Ouguiya mauritana'),
('MUR', 'Rupia mauricia'),
('MVR', 'Rufiyaa maldiva'),
('MWK', 'Kwacha malauí'),
('MXN', 'Peso mexicano'),
('MXV', 'Unidad de Inversión (UDI) mexicana (código de fondos)'),
('MYR', 'Ringgit malayo'),
('MZN', 'Metical mozambiqueño'),
('NAD', 'Dólar namibio'),
('NGN', 'Naira nigeriana'),
('NIO', 'Córdoba nicaragüense'),
('NOK', 'Corona noruega'),
('NPR', 'Rupia nepalesa'),
('NZD', 'Dólar neozelandés'),
('OMR', 'Rial omaní'),
('PAB', 'Balboa panameña'),
('PEN', 'Nuevo sol peruano'),
('PGK', 'Kina de Papúa Nueva Guinea'),
('PHP', 'Peso filipino'),
('PKR', 'Rupia pakistaní'),
('PLN', 'zloty polaco'),
('PYG', 'Guaraní paraguayo'),
('QAR', 'Rial qatarí'),
('RON', 'Leu rumano'),
('RUB', 'Rublo ruso'),
('RWF', 'Franco ruandés'),
('SAR', 'Riyal saudí'),
('SBD', 'Dólar de las Islas Salomón'),
('SCR', 'Rupia de Seychelles'),
('SDG', 'Dinar sudanés'),
('SEK', 'Corona sueca'),
('SGD', 'Dólar de Singapur'),
('SHP', 'Libra de Santa Helena'),
('SLL', 'Leone de Sierra Leona'),
('SOS', 'Chelín somalí'),
('SRD', 'Dólar surinamés'),
('STD', 'Dobra de Santo Tomé y Príncipe'),
('SYP', 'Libra siria'),
('SZL', 'Lilangeni suazi'),
('THB', 'Baht tailandés'),
('TJS', 'Somoni tayik (de Tayikistán)'),
('TMT', 'Manat turcomano'),
('TND', 'Dinar tunecino'),
('TOP', 'Pa\'anga tongano'),
('TRY', 'Lira turca'),
('TTD', 'Dólar de Trinidad y Tobago'),
('TWD', 'Dólar taiwanés'),
('TZS', 'Chelín tanzano'),
('UAH', 'Grivna ucraniana'),
('UGX', 'Chelín ugandés'),
('USD', 'Dólar estadounidense'),
('USN', 'Dólar estadounidense (Siguiente día) (código de fondos)'),
('USS', 'Dólar estadounidense (Mismo día) (código de fondos)'),
('UYU', 'Peso uruguayo'),
('UZS', 'Som uzbeko'),
('VEF', 'Bolívar fuerte venezolano'),
('VND', 'Dong vietnamita'),
('VUV', 'Vatu vanuatense'),
('WST', 'Tala samoana'),
('XAF', 'Franco CFA de África Central'),
('XAG', 'Onza de plata'),
('XAU', 'Onza de oro'),
('XBA', 'European Composite Unit (EURCO) (unidad del mercado de bonos)'),
('XBB', 'European Monetary Unit (E.M.U.-6) (unidad del mercado de bonos)'),
('XBC', 'European Unit of Account 9 (E.U.A.-9) (unidad del mercado de bonos)'),
('XBD', 'European Unit of Account 17 (E.U.A.-17) (unidad del mercado de bonos)'),
('XCD', 'Dólar del Caribe Oriental'),
('XDR', 'Derechos Especiales de Giro (FMI)'),
('XFO', 'Franco de oro (Special settlement currency)'),
('XFU', 'Franco UIC (Special settlement currency)'),
('XOF', 'Franco CFA de África Occidental'),
('XPD', 'Onza de paladio'),
('XPF', 'Franco CFP'),
('XPT', 'Onza de platino'),
('XTS', 'Reservado para pruebas'),
('XXX', 'Sin divisa'),
('YER', 'Rial yemení (de Yemen)'),
('ZAR', 'Rand sudafricano'),
('ZMW', 'Kwacha zambiano'),
('ZWL', 'Dólar zimbabuense');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productosyservicios`
--

CREATE TABLE `productosyservicios` (
  `clave` int(20) NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `productosyservicios`
--

INSERT INTO `productosyservicios` (`clave`, `descripcion`) VALUES
(10000000, 'Materiales relacionados con la fauna semillas y flora'),
(11000000, 'Materiales de Minerales y Tejidos y de Plantas y Animales no Comestibles'),
(12000000, 'Productos qu?micos incluyendo los bio-qu?micos y gases industriales'),
(13000000, 'Resina y Colofonia y Caucho y Espuma y Pel?cula y Materiales Elastom?ricos'),
(14000000, 'Materiales y Productos de Papel'),
(15000000, 'Combustibles?'),
(20000000, 'Maquinaria de miner?a y perforaci?n de pozos y accesorios'),
(21000000, 'Maquinaria y Accesorios para Agricultura'),
(22000000, 'Maquinaria y Accesorios para Construcción y Edificación\r\n'),
(23000000, 'Maquinaria y Accesorios de Fabricaci?n y Transformaci?n Industrial'),
(24000000, 'Maquinaria y Accesorios de Embalaje y Contenedores'),
(25000000, 'Vehículos y Medios de Transportación\r\n'),
(26000000, 'Maquinaria y Accesorios para Generaci?n y Distribuci?n de Energ?a\r'),
(27000000, 'Herramientas y Maquinaria en General equipo hidr?ulico y neum?tico'),
(30000000, 'Componentes y Suministros de Fabricación y Construcción\r\n'),
(31000000, 'Componentes y Suministros de Fabricación\r\n'),
(32000000, 'Componentes y Suministros Electrónicos\r\n'),
(39000000, 'Suministros de Iluminación y Electrónica\r\n'),
(40000000, 'Sistemas de calefacción y Tuberías y Ventilación\r\n'),
(41000000, 'Equipo de Laboratorio\r\n'),
(42000000, 'Equipo Veterinario y Medicos y Ortopédico\r\n'),
(43000000, 'Telecomunicaciones y radiodifusión de tecnología de la información\r\n'),
(44000000, 'Equipo\r\n'),
(45000000, 'Equipo y Suministros de Imprenta\r\n'),
(46000000, 'Equipos y Suministros de Defensa\r\n'),
(47000000, 'Equipo y Suministros de limpieza\r\n'),
(48000000, 'Maquinaria y Equipos de cocina\r\n'),
(49000000, 'Equipos de deporte y accesorios y recreativos\r\n'),
(50000000, 'Alimentos\r\n'),
(51000000, 'Medicamentos y Productos Farmacéuticos\r\n'),
(52000000, 'Muebles y Utensilios de cocina y Electrodom?sticos y Accesorios para el hogar'),
(53000000, 'Ropa y calzado y maletas y art?culos de tocador'),
(54000000, 'Productos para Relojer?a y Bisuter?a\r'),
(55000000, 'Productos Impresos\r\n'),
(56000000, 'Muebles y mobiliario'),
(60000000, 'Productos de papeler?a escolares y musicales y juguetes'),
(64000000, 'Contratos de seguro de salud'),
(70000000, 'Servicios relacionados el sector primario '),
(71000000, 'Servicios de Perforaci?n de Miner?a\r'),
(72000000, 'Servicios de Construcci?n y Mantenimiento'),
(73000000, 'Servicios de Producci?n y Fabricaci?n Industrial'),
(76000000, 'Servicios de Limpieza Industrial'),
(77000000, 'Servicios relacionados con el medio ambiente'),
(78000000, 'Servicios de Transporte'),
(80000000, 'Servicios de Gesti?n y Administrativos'),
(81000000, 'Servicios basados en ingenier?a\r'),
(82000000, 'Servicios Editoriales y Publicidad'),
(83000000, 'Servicios P?blicos y Servicios Relacionados con el Sector P?blico'),
(84000000, 'Servicios Financieros y de Seguros'),
(85000000, 'Servicios Sanitarios y Hospitalarios'),
(86000000, 'Servicios Educativos y de Formación\r\n'),
(90000000, 'Servicios de Viajes y Alimentación\r\n'),
(95000000, 'Bienes inmuebles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regimen_fiscal`
--

CREATE TABLE `regimen_fiscal` (
  `cReg` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `regimen_fiscal`
--

INSERT INTO `regimen_fiscal` (`cReg`, `nombre`) VALUES
(601, 'General de Ley Personas Morales'),
(603, 'Personas Morales con Fines no Lucrativos'),
(605, 'Sueldos y Salarios e Ingresos Asimilados a Salarios'),
(606, 'Arrendamiento'),
(607, 'Régimen de Enajenación o Adquisición de Bienes'),
(608, 'Demás ingresos\r\n'),
(609, 'Consolidación'),
(610, 'Residentes en el Extranjero sin Establecimiento Permanente en México'),
(611, 'Ingresos por Dividendos (socios y accionistas)'),
(612, 'Personas Físicas con Actividades Empresariales y Profesionales'),
(614, 'Ingresos por intereses'),
(615, 'Régimen de los ingresos por obtención de premios'),
(616, 'Sin obligaciones fiscales'),
(620, 'Sociedades Cooperativas de Producción que optan por diferir sus ingresos'),
(621, 'Incorporación Fiscal'),
(622, 'Actividades Agrícolas, Ganaderas, Silvícolas y Pesqueras'),
(623, 'Opcional para Grupos de Sociedades'),
(624, 'Coordinados'),
(628, 'Hidrocarburos'),
(629, 'De los Regímenes Fiscales Preferentes y de las Empresas Multinacionales'),
(630, 'Enajenación de acciones en bolsa de valores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_factura`
--

CREATE TABLE `tipo_factura` (
  `c_tipo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_factura`
--

INSERT INTO `tipo_factura` (`c_tipo`, `nombre`) VALUES
(1, 'Comprobante de Ingreso'),
(2, 'Comprobante de Egreso'),
(3, 'Comprobante de Traslado'),
(4, 'Comprobante de Recepción de pagos'),
(5, 'Comprobante de Nómina'),
(6, 'Comprobante de Retenciones e información de pagos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades_medida`
--

CREATE TABLE `unidades_medida` (
  `c_UnidadMedidaAduana` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `unidades_medida`
--

INSERT INTO `unidades_medida` (`c_UnidadMedidaAduana`, `descripcion`) VALUES
(1, 'KILO  '),
(2, 'GRAMO  '),
(3, 'METRO LINEAL  '),
(4, 'METRO CUADRADO  '),
(5, 'METRO CUBICO  '),
(6, 'PIEZA  '),
(7, 'CABEZA  '),
(8, 'LITRO  '),
(9, 'PAR  '),
(10, 'KILOWATT  '),
(11, 'MILLAR  '),
(12, 'JUEGO  '),
(13, 'KILOWATT/HORA  '),
(14, 'TONELADA'),
(15, 'BARRIL  '),
(16, 'GRAMO NETO  '),
(17, 'DECENAS  '),
(18, 'CIENTOS'),
(19, 'DOCENAS  '),
(20, 'CAJA  '),
(21, 'BOTELLA'),
(99, 'SERVICIOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uso_factura`
--

CREATE TABLE `uso_factura` (
  `c_UsoCFDI` varchar(100) CHARACTER SET latin1 NOT NULL,
  `descripcion` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `uso_factura`
--

INSERT INTO `uso_factura` (`c_UsoCFDI`, `descripcion`) VALUES
('D01', 'Honorarios m?dicos, dentales y gastos hospitalarios.'),
('D02', 'Gastos m?dicos por incapacidad o discapacidad'),
('D03', 'Gastos funerales.'),
('D04', 'Donativos.'),
('D05', 'Intereses reales efectivamente pagados por cr?ditos hipotecarios (casa habitaci?n).'),
('D06', 'Aportaciones voluntarias al SAR.'),
('D07', 'Primas por seguros de gastos m?dicos.'),
('D08', 'Gastos de transportaci?n escolar obligatoria.'),
('D09', 'Dep?sitos en cuentas para el ahorro, primas que tengan como base planes de pensiones.'),
('D10', 'Pagos por servicios educativos (colegiaturas)'),
('G01', 'Adquisici?n de mercancias'),
('G02', 'Devoluciones, descuentos o bonificaciones'),
('G03', 'Gastos en general'),
('I01', 'Construcciones'),
('I02', 'Mobilario y equipo de oficina por inversiones'),
('I03', 'Equipo de transporte'),
('I04', 'Equipo de computo y accesorios'),
('I05', 'Dados, troqueles, moldes, matrices y herramental'),
('I06', 'Comunicaciones telef?nicas'),
('I07', 'Comunicaciones satelitales'),
('I08', 'Otra maquinaria y equipo'),
('P01', 'Por definir');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formas_pagos`
--
ALTER TABLE `formas_pagos`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `moneda`
--
ALTER TABLE `moneda`
  ADD PRIMARY KEY (`c_moneda`);

--
-- Indices de la tabla `productosyservicios`
--
ALTER TABLE `productosyservicios`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `regimen_fiscal`
--
ALTER TABLE `regimen_fiscal`
  ADD PRIMARY KEY (`cReg`);

--
-- Indices de la tabla `tipo_factura`
--
ALTER TABLE `tipo_factura`
  ADD PRIMARY KEY (`c_tipo`);

--
-- Indices de la tabla `unidades_medida`
--
ALTER TABLE `unidades_medida`
  ADD PRIMARY KEY (`c_UnidadMedidaAduana`);

--
-- Indices de la tabla `uso_factura`
--
ALTER TABLE `uso_factura`
  ADD PRIMARY KEY (`c_UsoCFDI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
