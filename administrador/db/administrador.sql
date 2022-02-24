-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2022 a las 00:23:46
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `administrador`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(2) NOT NULL,
  `nombre` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `nombre`, `fecha`) VALUES
(1, 'Activo', '2022-02-24 15:55:19'),
(2, 'Inactivo', '2022-02-24 15:55:19'),
(3, 'Suspendido', '2022-02-24 15:55:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(2) NOT NULL,
  `nombre` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `iso` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`, `iso`, `fecha`) VALUES
(1, 'Femenino', 'FEM', '2022-02-24 15:51:01'),
(2, 'Masculino', 'MAS', '2022-02-24 15:51:01'),
(3, 'Otro', 'OTR', '2022-02-24 15:51:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ISO` char(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`ID`, `NOMBRE`, `ISO`, `FECHA_REG`) VALUES
(1, 'Afganistán', 'AF', '2022-02-22 19:23:03'),
(2, 'Albania', 'AL', '2022-02-22 19:23:03'),
(3, 'Alemania', 'DE', '2022-02-22 19:23:03'),
(4, 'Andorra', 'AD', '2022-02-22 19:23:03'),
(5, 'Angola', 'AO', '2022-02-22 19:23:03'),
(6, 'Anguilla', 'AI', '2022-02-22 19:23:03'),
(7, 'Antártida', 'AQ', '2022-02-22 19:23:03'),
(8, 'Antigua y Barbuda', 'AG', '2022-02-22 19:23:03'),
(9, 'Antillas Holandesas', 'AN', '2022-02-22 19:23:03'),
(10, 'Arabia Saudí', 'SA', '2022-02-22 19:23:03'),
(11, 'Argelia', 'DZ', '2022-02-22 19:23:03'),
(12, 'Argentina', 'AR', '2022-02-22 19:23:03'),
(13, 'Armenia', 'AM', '2022-02-22 19:23:03'),
(14, 'Aruba', 'AW', '2022-02-22 19:23:03'),
(15, 'Australia', 'AU', '2022-02-22 19:23:03'),
(16, 'Austria', 'AT', '2022-02-22 19:23:03'),
(17, 'Azerbaiyán', 'AZ', '2022-02-22 19:23:03'),
(18, 'Bahamas', 'BS', '2022-02-22 19:23:03'),
(19, 'Bahréin', 'BH', '2022-02-22 19:23:03'),
(20, 'Bangladesh', 'BD', '2022-02-22 19:23:03'),
(21, 'Barbados', 'BB', '2022-02-22 19:23:03'),
(22, 'Bielorrusia', 'BY', '2022-02-22 19:23:03'),
(23, 'Bélgica', 'BE', '2022-02-22 19:23:03'),
(24, 'Belice', 'BZ', '2022-02-22 19:23:03'),
(25, 'Benin', 'BJ', '2022-02-22 19:23:03'),
(26, 'Bermudas', 'BM', '2022-02-22 19:23:03'),
(27, 'Bhután', 'BT', '2022-02-22 19:23:03'),
(28, 'Bolivia', 'BO', '2022-02-22 19:23:03'),
(29, 'Bosnia y Herzegovina', 'BA', '2022-02-22 19:23:03'),
(30, 'Botwana', 'BW', '2022-02-22 19:23:03'),
(31, 'Brasil', 'BR', '2022-02-22 19:23:03'),
(32, 'Brunéi', 'BN', '2022-02-22 19:23:03'),
(33, 'Bulgaria', 'BG', '2022-02-22 19:23:03'),
(34, 'Burkina Faso', 'BF', '2022-02-22 19:23:03'),
(35, 'Burundi', 'BI', '2022-02-22 19:23:03'),
(36, 'Cabo Verde', 'CV', '2022-02-22 19:23:03'),
(37, 'Camboya', 'KH', '2022-02-22 19:23:03'),
(38, 'Camerún', 'CM', '2022-02-22 19:23:03'),
(39, 'Canadá', 'CA', '2022-02-22 19:23:03'),
(40, 'República Centroafricana', 'CF', '2022-02-22 19:23:03'),
(41, 'Chad', 'TD', '2022-02-22 19:23:03'),
(42, 'República Checa', 'CZ', '2022-02-22 19:23:03'),
(43, 'Chile', 'CL', '2022-02-22 19:23:03'),
(44, 'China', 'CN', '2022-02-22 19:23:03'),
(45, 'Chipre', 'CY', '2022-02-22 19:23:03'),
(46, 'Ciudad del Vaticano', 'VA', '2022-02-22 19:23:03'),
(47, 'Colombia', 'CO', '2022-02-22 19:23:03'),
(48, 'Comoras', 'KM', '2022-02-22 19:23:03'),
(49, 'República Democrática del Congo', 'CD', '2022-02-22 19:23:03'),
(50, 'Congo', 'CG', '2022-02-22 19:23:03'),
(51, 'Corea del Norte', 'KP', '2022-02-22 19:23:03'),
(52, 'Corea del Sur', 'KR', '2022-02-22 19:23:03'),
(53, 'Costa de Marfil', 'CI', '2022-02-22 19:23:03'),
(54, 'Costa Rica', 'CR', '2022-02-22 19:23:03'),
(55, 'Croacia', 'HR', '2022-02-22 19:23:03'),
(56, 'Cuba', 'CU', '2022-02-22 19:23:03'),
(57, 'Dinamarca', 'DK', '2022-02-22 19:23:03'),
(58, 'Dominica', 'DM', '2022-02-22 19:23:03'),
(59, 'República Dominicana', 'DO', '2022-02-22 19:23:03'),
(60, 'Ecuador', 'EC', '2022-02-22 19:23:03'),
(61, 'Egipto', 'EG', '2022-02-22 19:23:03'),
(62, 'El Salvador', 'SV', '2022-02-22 19:23:03'),
(63, 'Emiratos Árabes Unidos', 'AE', '2022-02-22 19:23:03'),
(64, 'Eritrea', 'ER', '2022-02-22 19:23:03'),
(65, 'Eslovaquia', 'SK', '2022-02-22 19:23:03'),
(66, 'Eslovenia', 'SI', '2022-02-22 19:23:03'),
(67, 'España', 'ES', '2022-02-22 19:23:03'),
(68, 'Estados Unidos', 'US', '2022-02-22 19:23:03'),
(69, 'Estonia', 'EE', '2022-02-22 19:23:03'),
(70, 'Etiopía', 'ET', '2022-02-22 19:23:03'),
(71, 'Filipinas', 'PH', '2022-02-22 19:23:03'),
(72, 'Finlandia', 'FI', '2022-02-22 19:23:03'),
(73, 'Fiyi', 'FJ', '2022-02-22 19:23:03'),
(74, 'Francia', 'FR', '2022-02-22 19:23:03'),
(75, 'Gabón', 'GA', '2022-02-22 19:23:03'),
(76, 'Gambia', 'GM', '2022-02-22 19:23:03'),
(77, 'Georgia', 'GE', '2022-02-22 19:23:03'),
(78, 'Ghana', 'GH', '2022-02-22 19:23:03'),
(79, 'Gibraltar', 'GI', '2022-02-22 19:23:03'),
(80, 'Granada', 'GD', '2022-02-22 19:23:03'),
(81, 'Grecia', 'GR', '2022-02-22 19:23:03'),
(82, 'Groenlandia', 'GL', '2022-02-22 19:23:03'),
(83, 'Guadalupe', 'GP', '2022-02-22 19:23:03'),
(84, 'Guam', 'GU', '2022-02-22 19:23:03'),
(85, 'Guatemala', 'GT', '2022-02-22 19:23:03'),
(86, 'Guayana Francesa', 'GF', '2022-02-22 19:23:03'),
(87, 'Guinea', 'GN', '2022-02-22 19:23:03'),
(88, 'Guinea Ecuatorial', 'GQ', '2022-02-22 19:23:03'),
(89, 'Guinea-Bissau', 'GW', '2022-02-22 19:23:03'),
(90, 'Guyana', 'GY', '2022-02-22 19:23:03'),
(91, 'Haití', 'HT', '2022-02-22 19:23:03'),
(92, 'Honduras', 'HN', '2022-02-22 19:23:03'),
(93, 'Hong Kong', 'HK', '2022-02-22 19:23:03'),
(94, 'Hungría', 'HU', '2022-02-22 19:23:03'),
(95, 'India', 'IN', '2022-02-22 19:23:03'),
(96, 'Indonesia', 'ID', '2022-02-22 19:23:03'),
(97, 'Irán', 'IR', '2022-02-22 19:23:03'),
(98, 'Iraq', 'IQ', '2022-02-22 19:23:03'),
(99, 'Irlanda', 'IE', '2022-02-22 19:23:03'),
(100, 'Islandia', 'IS', '2022-02-22 19:23:03'),
(101, 'Israel', 'IL', '2022-02-22 19:23:03'),
(102, 'Italia', 'IT', '2022-02-22 19:23:03'),
(103, 'Isla Bouvet', 'BV', '2022-02-22 19:23:03'),
(104, 'Islas Caimán', 'KY', '2022-02-22 19:23:03'),
(105, 'Islas Cocos', 'CC', '2022-02-22 19:23:03'),
(106, 'Islas Cook', 'CK', '2022-02-22 19:23:03'),
(107, 'Islas Feroe', 'FO', '2022-02-22 19:23:03'),
(108, 'Islas Georgias del Sur y Sandwich del Sur', 'GS', '2022-02-22 19:23:03'),
(109, 'Islas Gland', 'AX', '2022-02-22 19:23:03'),
(110, 'Islas Heard y McDonald', 'HM', '2022-02-22 19:23:03'),
(111, 'Islas Malvinas', 'FK', '2022-02-22 19:23:03'),
(112, 'Islas Marshall', 'MH', '2022-02-22 19:23:03'),
(113, 'Islas Marianas del Norte', 'MP', '2022-02-22 19:23:03'),
(114, 'Isla de Navidad', 'CX', '2022-02-22 19:23:03'),
(115, 'Isla Norfolk', 'NF', '2022-02-22 19:23:03'),
(116, 'Islas Pitcairn', 'PN', '2022-02-22 19:23:03'),
(117, 'Islas Salomón', 'SB', '2022-02-22 19:23:03'),
(118, 'Islas Turcas y Caicos', 'TC', '2022-02-22 19:23:03'),
(119, 'Islas Ultramarinas de Estados Unidos', 'UM', '2022-02-22 19:23:03'),
(120, 'Islas Vírgenes Británicas', 'VG', '2022-02-22 19:23:03'),
(121, 'Islas Vírgenes de los Estados Unidos', 'VI', '2022-02-22 19:23:03'),
(122, 'Jamaica', 'JM', '2022-02-22 19:23:03'),
(123, 'Japón', 'JP', '2022-02-22 19:23:03'),
(124, 'Jordania', 'JO', '2022-02-22 19:23:03'),
(125, 'Kazajstán', 'KZ', '2022-02-22 19:23:03'),
(126, 'Kenia', 'KE', '2022-02-22 19:23:03'),
(127, 'Kirguistán', 'KG', '2022-02-22 19:23:03'),
(128, 'Kiribati', 'KI', '2022-02-22 19:23:03'),
(129, 'Kuwait', 'KW', '2022-02-22 19:23:03'),
(130, 'Laos', 'LA', '2022-02-22 19:23:03'),
(131, 'Lesotho', 'LS', '2022-02-22 19:23:03'),
(132, 'Letonia', 'LV', '2022-02-22 19:23:03'),
(133, 'Líbano', 'LB', '2022-02-22 19:23:03'),
(134, 'Liberia', 'LR', '2022-02-22 19:23:03'),
(135, 'Libia', 'LY', '2022-02-22 19:23:03'),
(136, 'Liechtenstein', 'LI', '2022-02-22 19:23:03'),
(137, 'Lituania', 'LT', '2022-02-22 19:23:03'),
(138, 'Luxemburgo', 'LU', '2022-02-22 19:23:03'),
(139, 'Macao', 'MO', '2022-02-22 19:23:03'),
(140, 'ARY Macedonia', 'MK', '2022-02-22 19:23:03'),
(141, 'Madagascar', 'MG', '2022-02-22 19:23:03'),
(142, 'Malasia', 'MY', '2022-02-22 19:23:03'),
(143, 'Malawi', 'MW', '2022-02-22 19:23:03'),
(144, 'Maldivas', 'MV', '2022-02-22 19:23:03'),
(145, 'Malí', 'ML', '2022-02-22 19:23:03'),
(146, 'Malta', 'MT', '2022-02-22 19:23:03'),
(147, 'Marruecos', 'MA', '2022-02-22 19:23:03'),
(148, 'Martinica', 'MQ', '2022-02-22 19:23:03'),
(149, 'Mauricio', 'MU', '2022-02-22 19:23:03'),
(150, 'Mauritania', 'MR', '2022-02-22 19:23:03'),
(151, 'Mayotte', 'YT', '2022-02-22 19:23:03'),
(152, 'México', 'MX', '2022-02-22 19:23:03'),
(153, 'Micronesia', 'FM', '2022-02-22 19:23:03'),
(154, 'Moldavia', 'MD', '2022-02-22 19:23:03'),
(155, 'Mónaco', 'MC', '2022-02-22 19:23:03'),
(156, 'Mongolia', 'MN', '2022-02-22 19:23:03'),
(157, 'Montserrat', 'MS', '2022-02-22 19:23:03'),
(158, 'Mozambique', 'MZ', '2022-02-22 19:23:03'),
(159, 'Myanmar', 'MM', '2022-02-22 19:23:03'),
(160, 'Namibia', 'NA', '2022-02-22 19:23:03'),
(161, 'Nauru', 'NR', '2022-02-22 19:23:03'),
(162, 'Nepal', 'NP', '2022-02-22 19:23:03'),
(163, 'Nicaragua', 'NI', '2022-02-22 19:23:03'),
(164, 'Níger', 'NE', '2022-02-22 19:23:03'),
(165, 'Nigeria', 'NG', '2022-02-22 19:23:03'),
(166, 'Niue', 'NU', '2022-02-22 19:23:03'),
(167, 'Noruega', 'NO', '2022-02-22 19:23:03'),
(168, 'Nueva Caledonia', 'NC', '2022-02-22 19:23:03'),
(169, 'Nueva Zelanda', 'NZ', '2022-02-22 19:23:03'),
(170, 'Omán', 'OM', '2022-02-22 19:23:03'),
(171, 'Países Bajos', 'NL', '2022-02-22 19:23:03'),
(172, 'Pakistán', 'PK', '2022-02-22 19:23:03'),
(173, 'Palau', 'PW', '2022-02-22 19:23:03'),
(174, 'Palestina', 'PS', '2022-02-22 19:23:03'),
(175, 'Panamá', 'PA', '2022-02-22 19:23:03'),
(176, 'Papúa Nueva Guinea', 'PG', '2022-02-22 19:23:03'),
(177, 'Paraguay', 'PY', '2022-02-22 19:23:03'),
(178, 'Perú', 'PE', '2022-02-22 19:23:03'),
(179, 'Polinesia Francesa', 'PF', '2022-02-22 19:23:03'),
(180, 'Polonia', 'PL', '2022-02-22 19:23:03'),
(181, 'Portugal', 'PT', '2022-02-22 19:23:03'),
(182, 'Puerto Rico', 'PR', '2022-02-22 19:23:03'),
(183, 'Qatar', 'QA', '2022-02-22 19:23:03'),
(184, 'Reino Unido', 'GB', '2022-02-22 19:23:03'),
(185, 'Reunión', 'RE', '2022-02-22 19:23:03'),
(186, 'Ruanda', 'RW', '2022-02-22 19:23:03'),
(187, 'Rumania', 'RO', '2022-02-22 19:23:03'),
(188, 'Rusia', 'RU', '2022-02-22 19:23:03'),
(189, 'Sahara Occidental', 'EH', '2022-02-22 19:23:03'),
(190, 'Samoa', 'WS', '2022-02-22 19:23:03'),
(191, 'Samoa Americana', 'AS', '2022-02-22 19:23:03'),
(192, 'San Cristóbal y Nevis', 'KN', '2022-02-22 19:23:03'),
(193, 'San Marino', 'SM', '2022-02-22 19:23:03'),
(194, 'San Pedro y Miquelón', 'PM', '2022-02-22 19:23:03'),
(195, 'San Vicente y las Granadinas', 'VC', '2022-02-22 19:23:03'),
(196, 'Santa Helena', 'SH', '2022-02-22 19:23:03'),
(197, 'Santa Lucía', 'LC', '2022-02-22 19:23:03'),
(198, 'Santo Tomé y Príncipe', 'ST', '2022-02-22 19:23:03'),
(199, 'Senegal', 'SN', '2022-02-22 19:23:03'),
(200, 'Serbia y Montenegro', 'CS', '2022-02-22 19:23:03'),
(201, 'Seychelles', 'SC', '2022-02-22 19:23:03'),
(202, 'Sierra Leona', 'SL', '2022-02-22 19:23:03'),
(203, 'Singapur', 'SG', '2022-02-22 19:23:03'),
(204, 'Siria', 'SY', '2022-02-22 19:23:03'),
(205, 'Somalia', 'SO', '2022-02-22 19:23:03'),
(206, 'Sri Lanka', 'LK', '2022-02-22 19:23:03'),
(207, 'Suazilandia', 'SZ', '2022-02-22 19:23:03'),
(208, 'Sudáfrica', 'ZA', '2022-02-22 19:23:03'),
(209, 'Sudán', 'SD', '2022-02-22 19:23:03'),
(210, 'Suecia', 'SE', '2022-02-22 19:23:03'),
(211, 'Suiza', 'CH', '2022-02-22 19:23:03'),
(212, 'Surinam', 'SR', '2022-02-22 19:23:03'),
(213, 'Svalbard y Jan Mayen', 'SJ', '2022-02-22 19:23:03'),
(214, 'Tailandia', 'TH', '2022-02-22 19:23:03'),
(215, 'Taiwán', 'TW', '2022-02-22 19:23:03'),
(216, 'Tanzania', 'TZ', '2022-02-22 19:23:03'),
(217, 'Tayikistán', 'TJ', '2022-02-22 19:23:03'),
(218, 'Territorio Británico del Océano Índico', 'IO', '2022-02-22 19:23:03'),
(219, 'Territorios Australes Franceses', 'TF', '2022-02-22 19:23:03'),
(220, 'Timor Oriental', 'TL', '2022-02-22 19:23:03'),
(221, 'Togo', 'TG', '2022-02-22 19:23:03'),
(222, 'Tokelau', 'TK', '2022-02-22 19:23:03'),
(223, 'Tonga', 'TO', '2022-02-22 19:23:03'),
(224, 'Trinidad y Tobago', 'TT', '2022-02-22 19:23:03'),
(225, 'Túnez', 'TN', '2022-02-22 19:23:03'),
(226, 'Turkmenistán', 'TM', '2022-02-22 19:23:03'),
(227, 'Turquía', 'TR', '2022-02-22 19:23:03'),
(228, 'Tuvalu', 'TV', '2022-02-22 19:23:03'),
(229, 'Ucrania', 'UA', '2022-02-22 19:23:03'),
(230, 'Uganda', 'UG', '2022-02-22 19:23:03'),
(231, 'Uruguay', 'UY', '2022-02-22 19:23:03'),
(232, 'Uzbekistán', 'UZ', '2022-02-22 19:23:03'),
(233, 'Vanuatu', 'VU', '2022-02-22 19:23:03'),
(234, 'Venezuela', 'VE', '2022-02-22 19:23:03'),
(235, 'Vietnam', 'VN', '2022-02-22 19:23:03'),
(236, 'Wallis y Futuna', 'WF', '2022-02-22 19:23:03'),
(237, 'Yemen', 'YE', '2022-02-22 19:23:03'),
(238, 'Yibuti', 'DJ', '2022-02-22 19:23:03'),
(239, 'Zambia', 'ZM', '2022-02-22 19:23:03'),
(240, 'Zimbabue', 'ZW', '2022-02-22 19:23:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tp_documentos`
--

CREATE TABLE `tp_documentos` (
  `ID` int(100) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `iso` varchar(255) NOT NULL,
  `FECHA` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tp_documentos`
--

INSERT INTO `tp_documentos` (`ID`, `nombre`, `iso`, `FECHA`) VALUES
(1, 'Cédula de Ciudadanía', 'CC', '2022-02-22 19:45:24'),
(2, 'Carné de Identidad', 'CI', '2022-02-22 19:45:24'),
(3, 'Cédula de Extranjería', 'CE', '2022-02-22 19:45:24'),
(4, 'Documento Nacional de Identidad', 'DNI', '2022-02-22 19:45:24'),
(5, 'Documento Único de Identidad', 'DUI', '2022-02-22 19:45:24'),
(6, 'Identificación Oficial', 'ID', '2022-02-22 19:45:24'),
(7, 'Tarjeta Pasaporte', 'PT', '2022-02-22 19:45:24'),
(8, 'Registro Civil', 'RC', '2022-02-22 19:45:24'),
(9, 'Tarjeta de Identidad', 'TI', '2022-02-22 19:45:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `pais` int(100) NOT NULL,
  `tp_documento` int(100) NOT NULL,
  `documento` int(50) NOT NULL,
  `genero` int(2) NOT NULL,
  `estado` int(2) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombres`, `apellidos`, `pais`, `tp_documento`, `documento`, `genero`, `estado`, `fecha`) VALUES
(25, 'Santiago', 'Manosalva Fernández', 1, 1, 374421, 2, 1, '2022-02-24 11:02:00'),
(26, 'Sofia', 'Manosalva Fernández', 3, 9, 75001, 1, 3, '2022-02-24 11:02:06'),
(27, 'Cristian David', 'Rojas Villaruel', 3, 3, 375001, 2, 3, '2022-02-24 11:02:12'),
(28, 'Valentina', 'Manosalva Fernández', 4, 1, 374587, 1, 1, '2022-02-24 11:02:17'),
(29, 'Daniela', 'Navarro Fernández', 5, 1, 375098, 2, 1, '2022-02-24 11:02:22'),
(30, 'Fernanda', 'Fernández Fernández', 6, 6, 34560987, 1, 1, '2022-02-24 10:02:19'),
(31, 'Hector de Jesus', 'Manosalva Villalobos', 7, 7, 358476549, 2, 1, '2022-02-24 10:02:13'),
(32, 'Samuel', 'Fernández Moya', 234, 8, 74475, 2, 1, '2022-02-24 11:02:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tp_documentos`
--
ALTER TABLE `tp_documentos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PAIS` (`pais`),
  ADD KEY `FK_TP_DOCUMENTO` (`tp_documento`),
  ADD KEY `FK_ESTADO` (`estado`),
  ADD KEY `FK_GENERO` (`genero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT de la tabla `tp_documentos`
--
ALTER TABLE `tp_documentos`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_ESTADO` FOREIGN KEY (`estado`) REFERENCES `estado` (`id`),
  ADD CONSTRAINT `FK_GENERO` FOREIGN KEY (`genero`) REFERENCES `genero` (`id`),
  ADD CONSTRAINT `FK_PAIS` FOREIGN KEY (`pais`) REFERENCES `paises` (`ID`),
  ADD CONSTRAINT `FK_TP_DOCUMENTO` FOREIGN KEY (`tp_documento`) REFERENCES `tp_documentos` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
