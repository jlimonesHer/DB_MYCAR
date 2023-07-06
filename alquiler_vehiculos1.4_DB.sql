-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-03-2022 a las 17:27:45
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alquiler_vehiculos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `tipo`) VALUES
(7, 'autocvaravana'),
(5, 'camion MMA 3500'),
(3, 'furgoneta'),
(4, 'furgoneta camper'),
(2, 'mixto'),
(6, 'motocicleta'),
(1, 'turismo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) NOT NULL,
  `doc_ide` varchar(12) NOT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `sexo` varchar(6) DEFAULT NULL,
  `id_pais` varchar(50) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `apellido1`, `apellido2`, `doc_ide`, `telefono`, `sexo`, `id_pais`, `fecha_nacimiento`) VALUES
(1, 'Helena', 'Limones', 'Moyano', '33333333L', '123123123', 'mujer', 'ESP', '1997-10-18'),
(2, 'Angel', 'Hernandez', 'Moyano', '44444444S', '456123789', 'hombre', 'ESP', '1990-06-15'),
(3, 'shin', 'sho', 'hai', '55555555M', '666555444', 'hombre', 'CHI', '1978-06-08'),
(4, 'Andres', 'Gonzales', 'Fernandes', '1245678945P', '123456123', 'hombre', 'COL', '2000-01-01'),
(5, 'Julie', 'Martial', 'kounde', '12345678945D', '565412385', 'mujer', 'FRA', '1995-04-15'),
(6, 'Robert', 'Merkel', 'Odoncor', '12541254125G', '696969369', 'hombre', 'GER', '1958-03-25'),
(7, 'Inmaculada', 'Moyano', 'Marques', '11111111C', '654654654', 'mujer', 'ESP', '1985-12-01'),
(8, 'Juan', 'Limones', 'Diaz', '22222222C', '654654456', 'hombre', 'ESP', '1962-03-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `nombre_marca` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `nombre_marca`) VALUES
(3, 'AUDI'),
(4, 'BMW'),
(5, 'FIAT'),
(6, 'HONDA'),
(7, 'IVECO'),
(2, 'MERCEDES'),
(1, 'SEAT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `id_modelo` int(11) NOT NULL,
  `modelo` varchar(20) DEFAULT NULL,
  `id_marca` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`id_modelo`, `modelo`, `id_marca`, `id_categoria`) VALUES
(1, 'COMBO', 1, 2),
(2, 'LEON', 1, 1),
(3, 'SPRINTER', 2, 3),
(4, 'CLS500', 2, 1),
(5, 'A4', 3, 1),
(6, 'A5', 3, 1),
(7, 'A6', 3, 1),
(8, 'F 900 R', 4, 6),
(9, '320 TDI', 4, 1),
(10, 'DUCATO', 5, 7),
(11, 'DUCATO COMBI', 5, 7),
(12, 'ODYSSEY', 6, 4),
(13, '600R', 6, 6),
(14, 'DAILY', 7, 5),
(15, 'DAILY MMA 3500', 7, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id_pais` char(3) NOT NULL,
  `nombre_pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id_pais`, `nombre_pais`) VALUES
('AFG', 'Afganistán'),
('ALB', 'Albania'),
('GER', 'Alemania'),
('AND', 'Andorra'),
('ANG', 'Angola'),
('AIA', 'Anguila'),
('ATG', 'Antigua y Barbuda'),
('ANT', 'Antillas Neerlandesas'),
('KSA', 'Arabia Saudita'),
('ALG', 'Argelia'),
('ARG', 'Argentina'),
('ARM', 'Armenia'),
('ARU', 'Aruba'),
('AUS', 'Australia'),
('AUT', 'Austria'),
('AZE', 'Azerbaiyán'),
('BAH', 'Bahamas'),
('BAN', 'Bangladesh'),
('BHR', 'Baréin'),
('BEL', 'Bélgica'),
('BLZ', 'Bélice'),
('BEN', 'Benín'),
('BER', 'Bermudas'),
('BLR', 'Bielorrusia'),
('MYA', 'Birmania'),
('BOL', 'Bolivia'),
('BIH', 'Bosnia Herzegovina'),
('BOT', 'Botswana'),
('BRA', 'Brasil'),
('BRU', 'Brunei'),
('BUL', 'Bulgaria'),
('BFA', 'Burkina Faso'),
('BDI', 'Burundi'),
('BHU', 'Bután'),
('CPV', 'Cabo Verde'),
('CAM', 'Camboya'),
('CMR', 'Camerún'),
('CAN', 'Canadá'),
('QAT', 'Catar'),
('CHA', 'Chad'),
('CHI', 'Chile'),
('CHN', 'China'),
('CYP', 'Chipre'),
('COL', 'Colombia'),
('PRK', 'Corea del Norte'),
('KOR', 'Corea del Sur'),
('CIV', 'Costa de Marfil'),
('CRC', 'Costa Rica'),
('CRO', 'Croacia'),
('CUB', 'Cuba'),
('DEN', 'Dinamarca'),
('DMA', 'Dominica'),
('ECU', 'Ecuador'),
('EGY', 'Egipto'),
('SLV', 'El Salvador'),
('UAE', 'Emiratos Árabes Unidos'),
('ERI', 'Eritrea'),
('SCO', 'Escocia'),
('SVK', 'Eslovaquia'),
('SVN', 'Eslovenia'),
('ESP', 'España'),
('USA', 'Estados Unidos'),
('EST', 'Estonia'),
('ETH', 'Etiopía'),
('FIJ', 'Fiji'),
('PHI', 'Filipinas'),
('FIN', 'Finlandia'),
('FRA', 'Francia'),
('GAB', 'Gabón'),
('WAL', 'Gales'),
('GAM', 'Gambia'),
('GHA', 'Ghana'),
('GRN', 'Granada'),
('GRE', 'Grecia'),
('GUM', 'Guam'),
('GUA', 'Guatemala'),
('GUI', 'Guinea'),
('EQG', 'Guinea Ecuatorial'),
('GNB', 'Guinea-Bissau'),
('GUY', 'Guyana'),
('HAI', 'Haití'),
('HON', 'Honduras'),
('HKG', 'Hong Kong'),
('HUN', 'Hungría'),
('IND', 'India'),
('IDN', 'Indonesia'),
('ENG', 'Inglaterra'),
('IRN', 'Irán'),
('IRQ', 'Iraq'),
('IRL', 'Irlanda'),
('NIR', 'Irlanda del Norte'),
('ISL', 'Islandia'),
('CAY', 'Islas Caimán'),
('COK', 'Islas Cook'),
('FRO', 'Islas Feroe'),
('SOL', 'Islas Salomón'),
('TCA', 'Islas Turcas y Caicos'),
('VGB', 'Islas Vírgenes Británicas'),
('VIR', 'Islas Vírgenes Estadounidenses'),
('ISR', 'Israel'),
('ITA', 'Italia'),
('JAM', 'Jamaica'),
('JPN', 'Japón'),
('JOR', 'Jordania'),
('KAZ', 'Kazajistán'),
('KEN', 'Kenia'),
('KGZ', 'Kirguizistán'),
('KUW', 'Kuwait'),
('LAO', 'Laos'),
('LES', 'Lesoto'),
('LVA', 'Letonia'),
('LIB', 'Líbano'),
('LBR', 'Liberia'),
('LBY', 'Libia'),
('LIE', 'Liechtenstein'),
('LTU', 'Lituania'),
('LUX', 'Luxemburgo'),
('MAC', 'Macao'),
('MKD', 'Macedonia'),
('MAD', 'Madagascar'),
('MAS', 'Malasia'),
('MWI', 'Malaui'),
('MDV', 'Maldivas'),
('MLI', 'Malí'),
('MLT', 'Malta'),
('MAR', 'Marruecos'),
('MRI', 'Mauricio'),
('MTN', 'Mauritania'),
('MEX', 'Méjico'),
('MDA', 'Moldavia'),
('MGL', 'Mongolia'),
('MNE', 'Montenegro'),
('MSR', 'Montserrat'),
('MOZ', 'Mozambique'),
('NAM', 'Namibia'),
('NEP', 'Nepal'),
('NCA', 'Nicaragua'),
('NIG', 'Níger'),
('NGA', 'Nigeria'),
('NOR', 'Noruega'),
('NCL', 'Nueva Caledonia'),
('NZL', 'Nueva Zelanda'),
('OMA', 'Omán'),
('NED', 'Países Bajos'),
('PAK', 'Pakistán'),
('PLE', 'Palestina'),
('PAN', 'Panamá'),
('PNG', 'Papúa Nueva Guinea'),
('PAR', 'Paraguay'),
('PER', 'Perú'),
('POL', 'Polonia'),
('POR', 'Portugal'),
('PUR', 'Puerto Rico'),
('CTA', 'República Centroafricana'),
('CZE', 'República Checa'),
('CGO', 'República del Congo'),
('COD', 'República Democrática del Congo'),
('DOM', 'República Dominicana'),
('RWA', 'Ruanda'),
('ROU', 'Rumania'),
('RUS', 'Rusia'),
('SAM', 'Samoa'),
('ASA', 'Samoa Americana'),
('SKN', 'San Cristóbal y Nevis'),
('SMR', 'San Marino'),
('VIN', 'San Vicente y las Granadinas'),
('LCA', 'Santa Lucía'),
('STP', 'Santo Tomé y Príncipe'),
('SEN', 'Senegal'),
('SRB', 'Serbia'),
('SEY', 'Seychelles'),
('SLE', 'Sierra Leona'),
('SIN', 'Singapur'),
('SOM', 'Somalia'),
('SRI', 'Sri Lanka'),
('SWZ', 'Suazilandia'),
('RSA', 'Sudáfrica'),
('SUD', 'Sudán'),
('SWE', 'Suecia'),
('SUI', 'Suiza'),
('SUR', 'Surinam'),
('TAH', 'Tahiti'),
('THA', 'Tailandia'),
('TAN', 'Tanzania'),
('TJK', 'Tayikistán'),
('TLS', 'Timor Oriental'),
('TOG', 'Togo'),
('TGA', 'Tonga'),
('TRI', 'Trinidad y Tobago'),
('TUN', 'Túnez'),
('TKM', 'Turkmenistán'),
('TUR', 'Turquía'),
('UKR', 'Ucrania'),
('UGA', 'Uganda'),
('URU', 'Uruguay'),
('UZB', 'Uzbekistán'),
('VAN', 'Vanuatu'),
('VEN', 'Venezuela'),
('VIE', 'Vietnam'),
('YEM', 'Yemen'),
('DJI', 'Yibuti'),
('ZAM', 'Zambia'),
('ZIM', 'Zimbabue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reservas` int(11) NOT NULL,
  `trayecto` varchar(100) DEFAULT NULL,
  `fecha_alquiler` date DEFAULT NULL,
  `inicio_alquiler` time DEFAULT NULL,
  `fin_alquiler` time DEFAULT NULL,
  `id_vehiculo` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_reservas`, `trayecto`, `fecha_alquiler`, `inicio_alquiler`, `fin_alquiler`, `id_vehiculo`, `id_cliente`) VALUES
(2, 'Sevilla/Huelva', '2022-02-28', '00:00:00', '10:00:00', 4, 1),
(3, 'Sevilla/Zaragoza', '2022-03-02', '09:00:00', '22:00:00', 8, 6),
(4, 'Cordoba/Cadiz', '2022-04-15', '10:00:00', '13:00:00', 8, 3),
(5, 'Valencia/Barcelona', '2022-05-12', '13:00:00', '15:00:00', 15, 4),
(6, 'Murcia/Almeria', '2022-04-18', '20:00:00', '23:00:00', 9, 7),
(7, 'Oviedo/Badajoz', '2022-06-03', '15:00:00', '20:00:00', 19, 8),
(8, 'Ciudadreal/Huesca', '2022-08-15', '07:00:00', '10:00:00', 25, 5),
(9, 'Malaga/Cadiz', '2022-12-15', '05:00:00', '13:00:00', 11, 1),
(10, 'Girona/Barcelona', '2022-03-12', '11:00:00', '15:00:00', 22, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id_vehiculo` int(11) NOT NULL,
  `matricula` varchar(7) DEFAULT NULL,
  `id_modelo` int(11) DEFAULT NULL,
  `itv` year(4) DEFAULT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id_vehiculo`, `matricula`, `id_modelo`, `itv`, `id_categoria`) VALUES
(1, '0000BBB', 1, 2018, 2),
(2, '1111CCC', 1, 2018, 2),
(3, '2222DDD', 2, 2018, 1),
(4, '3333FFF', 2, 2018, 1),
(5, '4444GGG', 3, 2019, 3),
(6, '5555HHH', 3, 2019, 3),
(7, '6666JJJ', 4, 2020, 1),
(8, '7777KKK', 4, 2019, 1),
(9, '8888LLL', 5, 2020, 1),
(10, '9999MMM', 5, 2020, 1),
(11, '1010NNN', 6, 2020, 1),
(12, '1011PPP', 6, 2020, 1),
(13, '1212QQQ', 7, 2021, 1),
(14, '1313RRR', 7, 2021, 1),
(15, '1414SSS', 8, 2021, 6),
(16, '1515TTT', 8, 2021, 6),
(17, '1616VVV', 9, 2021, 1),
(18, '1717WWW', 9, 2021, 1),
(19, '1818XXX', 10, 2021, 7),
(20, '1919YYY', 10, 2021, 7),
(21, '2020ZZZ', 11, 2021, 7),
(22, '2121BBB', 11, 2021, 7),
(23, '2022CCC', 12, 2022, 4),
(24, '2323DDD', 12, 2022, 4),
(25, '2424FFF', 13, 2022, 6),
(26, '2525GGG', 13, 2022, 6),
(27, '2626HHH', 14, 2022, 5),
(28, '2727LLL', 14, 2022, 5),
(29, '2828MMM', 15, 2022, 5),
(30, '2929NNN', 15, 2022, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `tipo_UNIQUE` (`tipo`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `doc_id_UNIQUE` (`nombre_cliente`),
  ADD KEY `pais_cliente_FK` (`id_pais`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`),
  ADD UNIQUE KEY `nombre_marca_UNIQUE` (`nombre_marca`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id_modelo`),
  ADD UNIQUE KEY `tmodelo_UNIQUE` (`modelo`),
  ADD KEY `marca_modelo_FK` (`id_marca`),
  ADD KEY `categoria_modelo_FK` (`id_categoria`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id_pais`),
  ADD UNIQUE KEY `nombre_pais_UNIQUE` (`nombre_pais`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reservas`),
  ADD KEY `vehiculo_reservas_FK` (`id_vehiculo`),
  ADD KEY `clientes_reservas_FK` (`id_cliente`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD UNIQUE KEY `matricula_UNIQUE` (`matricula`),
  ADD KEY `modelo_vehiculo_FK` (`id_modelo`),
  ADD KEY `categoria_vehiculo_FK` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reservas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `pais_cliente_FK` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`);

--
-- Filtros para la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `categoria_modelo_FK` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `marca_modelo_FK` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`);

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `clientes_reservas_FK` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `vehiculo_reservas_FK` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`id_vehiculo`);

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `categoria_vehiculo_FK` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `modelo_vehiculo_FK` FOREIGN KEY (`id_modelo`) REFERENCES `modelo` (`id_modelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
