-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2022 a las 07:27:40
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id_grupos` int(11) NOT NULL,
  `grupos` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id_grupos`, `grupos`) VALUES
(1, 'Grupo A'),
(2, 'Grupo A'),
(3, 'Grupo A'),
(4, 'Grupo A'),
(5, 'Grupo A'),
(6, 'Grupo A'),
(7, 'Grupo B'),
(8, 'Grupo B'),
(9, 'Grupo B'),
(10, 'Grupo B'),
(11, 'Grupo B'),
(12, 'Grupo B'),
(13, 'Grupo C'),
(14, 'Grupo C'),
(15, 'Grupo C'),
(16, 'Grupo C'),
(17, 'Grupo C'),
(18, 'Grupo C'),
(19, 'Grupo D'),
(20, 'Grupo D'),
(21, 'Grupo D'),
(22, 'Grupo D'),
(23, 'Grupo D'),
(24, 'Grupo D'),
(25, 'Grupo E'),
(26, 'Grupo E'),
(27, 'Grupo E'),
(28, 'Grupo E'),
(29, 'Grupo E'),
(30, 'Grupo E'),
(31, 'Grupo F'),
(32, 'Grupo F'),
(33, 'Grupo F'),
(34, 'Grupo F'),
(35, 'Grupo F'),
(36, 'Grupo F'),
(37, 'Grupo G'),
(38, 'Grupo G'),
(39, 'Grupo G'),
(40, 'Grupo G'),
(41, 'Grupo G'),
(42, 'Grupo G'),
(43, 'Grupo H'),
(44, 'Grupo H'),
(45, 'Grupo H'),
(46, 'Grupo H'),
(47, 'Grupo H'),
(48, 'Grupo H');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `usuario` varchar(12) NOT NULL,
  `contraseña` varchar(16) NOT NULL,
  `rol` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id`, `usuario`, `contraseña`, `rol`) VALUES
(1, 'Derek', '123', ''),
(2, 'Brandool', '1234', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `fecha` varchar(20) NOT NULL,
  `equipo1` varchar(20) NOT NULL,
  `equipo2` varchar(20) NOT NULL,
  `lugar` varchar(20) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `gequipo1` varchar(20) NOT NULL,
  `gequipo2` varchar(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`fecha`, `equipo1`, `equipo2`, `lugar`, `hora`, `gequipo1`, `gequipo2`, `id`) VALUES
('21 Noviembre', 'Qatar', 'Ecuador', 'Al Bayt', '5:00am', '0', '2', 1),
('21 Noviembre', 'Senegal', 'Países Bajos', 'Al Thumama', '11:00am', '0', '2', 2),
('25 Noviembre', 'Quatar', 'Senegal', 'Al Thumama', '8:00am', '1', '3', 3),
('25 Noviembre', 'Paises Bajos', 'Ecuador', 'Khalifa Int.', '11:00am', '1', '1', 4),
('29 Noviembre', 'Paises Bajos', 'Quatar', 'Al Bayt', '10:00am', '2', '0', 5),
('29 Noviembre', 'Ecuador', 'Senegal', 'Khalifa Int.', '10:00am', '1', '2', 6),
('21 Noviembre', 'Inglaterra', 'Irán', 'Khalifa Int.', '8:00am', '6', '2', 7),
('21 Noviembre', 'EE.UU', 'Gales', 'Khalifa Int.', '2:00pm', '1', '1', 8),
('25 Noviembre', 'Inglaterra', 'EE.UU', 'Al Bayat', '2:00pm', '0', '0', 9),
('25 Noviembre', 'Gales', 'Irán', 'Ahmad Bin Ali', '5:00am', '0', '2', 10),
('29 Noviembre', 'Gales', 'Inglaterra', 'Ahmad Bin Ali', '2:00pm', '0', '3', 11),
('29 Noviembre', 'Irán', 'EE.UU', 'Al Thumama', '2:00pm', '0', '1', 12),
('22 Noviembre', 'Argentina', 'Arabia Saudita', 'Lusail', '5:00am', '1', '2', 13),
('22 Noviembre', 'México', 'Polonia', 'Stadium 974', '11:00am', '0', '0', 14),
('26 Noviembre', 'Argentina', 'México', 'Lusail', '2:00pm', '2', '0', 15),
('26 Noviembre', 'Polonia', 'Arabia Saudita', 'Education City', '8:00am', '2', '0', 16),
('30 Noviembre', 'Polonia', 'Argentina', 'Stadium 974', '2:00pm', '', '', 17),
('30 Noviembre', 'Arabia Saudita', 'México', 'Lusail', '2:00pm', '', '', 18),
('22 Noviembre', 'Francia', 'Australia', 'Al Janoub', '2:00pm', '4', '1', 19),
('22 Noviembre', 'Dinamarca', 'Túnez', 'Education City', '8:00am', '0', '0', 20),
('26 Noviembre', 'Francia', 'Dinamarca', 'Stadium 974', '11:00am', '2', '1', 21),
('26 Noviembre', 'Túnez', 'Australia', 'Al Janoub', '5:00am', '0', '1', 22),
('30 Noviembre', 'Túnez', 'Francia', 'Education City', '10:00am', '', '', 23),
('30 Noviembre', 'Australia', 'Dinamarca', 'Al Janoub', '10:00pm', '', '', 24),
('23 Noviembre', 'España', 'Costa Rica', 'Al Thumama', '11:00pm', '7', '0', 25),
('23 Noviembre', 'Alemania', 'Japón', 'Khalifa Int.', '8:00am', '1', '2', 26),
('27 Noviembre', 'España', 'Alemania', 'Al Bayt', '2:00am', '1', '1', 27),
('27 Noviembre', 'Japón', 'Costa Rica', 'Ahmad Bin Ali', '5:00am', '0', '1', 28),
('1 Diciembre', 'Japón', 'Españá', 'Khalifa Int.', '2:00pm', '', '', 29),
('1 Diciembre', 'Costa Rica', 'Alemania', 'Al Bayt', '2:00pm', '', '', 30),
('23 Noviembre', 'Bélgica', 'Canadá', 'Ahmad Bin Ali', '2:00pm', '1', '0', 31),
('23 Noviembre', 'Marruecos', 'Croacia', 'Al Bayt', '5:00am', '0', '0', 32),
('27 Noviembre', 'Bélgica', 'Marruecos', 'Al Thumama', '8:00am', '0', '2', 33),
('27 Noviembre', 'Croacia', 'Canadá', 'Khalifa Int.', '11:00am', '4', '1', 34),
('1 Diciembre', 'Croacia', 'Bélgica', 'Ahmad Bin Ali', '10:00am', '', '', 35),
('1 Diciembre', 'Canadá', 'Marruecos', 'Al Thumama', '10:00am', '', '', 36),
('24 Noviembre', 'Suiza', 'Camerún', 'Stadium 974', '5:00am', '1', '0', 37),
('24 Noviembre', 'Brasil', 'Serbia', 'Education City', '2:00pm', '2', '0', 38),
('28 Noviembre', 'Camerún', 'Serbia', 'Lusail', '5:00am', '3', '3', 39),
('28 Noviembre', 'Brasil', 'Suiza', 'Education City', '11:00am', '1', '0', 40),
('2 Diciembre', 'Serbia', 'Suiza', 'Education City', '2:00pm', '', '', 41),
('2 Diciembre', 'Camerún', 'Brasil', 'Al Janoub', '2:00pm', '', '', 42),
('24 Noviembre', 'Portugal', 'Ghana', 'Stadium 974', '11:00am', '3', '2', 43),
('24 Noviembre', 'Uruguay', 'Corea', 'Education City', '8:00am', '0', '0', 44),
('28 Noviembre', 'Portugal', 'Uruguay', 'Lusail', '2:00pm', '2', '0', 45),
('28 Noviembre', 'Corea', 'Ghana', 'Education City', '8:00am', '2', '3', 46),
('2 Diciembre', 'Corea', 'Portugal', 'Education City', '10:00am', '', '', 47),
('2 Diciembre', 'Ghana', 'Uruguay', 'Al Janoub', '10:00am', '', '', 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabpos`
--

CREATE TABLE `tabpos` (
  `nombre` varchar(20) NOT NULL,
  `puntos` varchar(10) NOT NULL,
  `pj` varchar(10) DEFAULT NULL,
  `pg` varchar(10) DEFAULT NULL,
  `pe` varchar(10) DEFAULT NULL,
  `pp` varchar(10) DEFAULT NULL,
  `ga` varchar(10) DEFAULT NULL,
  `gc` varchar(10) DEFAULT NULL,
  `DifGol` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabpos`
--

INSERT INTO `tabpos` (`nombre`, `puntos`, `pj`, `pg`, `pe`, `pp`, `ga`, `gc`, `DifGol`) VALUES
('Alemania', '1', '2', '0', '1', '1', '2', '3', '-1'),
('Arabia Saudita', '3', '2', '1', '0', '1', '2', '3', '-1'),
('Argentina', '3', '2', '1', '0', '1', '3', '2', '1'),
('Australia', '3', '2', '1', '0', '1', '2', '4', '-2'),
('Bélgica', '3', '2', '1', '0', '1', '1', '2', '-1'),
('Brasil', '6', '2', '2', '0', '0', '3', '0', '3'),
('Camerún', '1', '2', '0', '1', '1', '3', '4', '-1'),
('Canadá', '0', '2', '0', '0', '2', '1', '5', '-4'),
('Catar', '0', '3', '0', '0', '3', '1', '7', '-6'),
('Corea del Sur', '1', '2', '0', '1', '1', '2', '3', '-1'),
('Costa Rica', '3', '2', '1', '0', '1', '1', '7', '-6'),
('Croacia', '4', '2', '1', '1', '0', '4', '1', '3'),
('Dinamarca', '1', '2', '0', '1', '1', '1', '2', '-1'),
('Ecuador', '4', '3', '1', '1', '1', '4', '3', '1'),
('España', '4', '2', '1', '1', '0', '8', '1', '7'),
('Estados Unidos', '5', '3', '1', '2', '0', '2', '1', '1'),
('Francia', '6', '2', '2', '0', '0', '6', '2', '4'),
('Gales', '1', '3', '0', '1', '2', '1', '6', '-5'),
('Ghana', '3', '2', '1', '0', '1', '5', '5', '0'),
('Inglaterra', '7', '3', '2', '1', '0', '9', '2', '7'),
('Irán', '3', '3', '1', '0', '2', '4', '7', '-3'),
('Japón', '3', '2', '1', '0', '1', '2', '2', '0'),
('Marruecos', '4', '2', '1', '1', '0', '2', '0', '2'),
('México', '1', '2', '0', '1', '1', '0', '2', '-2'),
('Paises Bajos', '7', '3', '2', '3', '0', '5', '1', '4'),
('Polonia', '4', '2', '1', '1', '0', '2', '0', '2'),
('Portugal', '6', '2', '2', '0', '0', '5', '2', '3'),
('Senegal', '6', '3', '2', '0', '1', '5', '4', '1'),
('Serbia', '1', '2', '0', '1', '1', '3', '5', '-2'),
('Suiza', '3', '2', '1', '0', '1', '1', '1', '0'),
('Túnez', '1', '2', '0', '1', '1', '0', '1', '-1'),
('Uruguay', '1', '2', '0', '1', '1', '0', '2', '-2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id_grupos`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `id_3` (`id`);

--
-- Indices de la tabla `tabpos`
--
ALTER TABLE `tabpos`
  ADD PRIMARY KEY (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id_grupos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD CONSTRAINT `grupos_ibfk_1` FOREIGN KEY (`id_grupos`) REFERENCES `resultados` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
