-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2022 a las 18:49:14
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
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(10) NOT NULL,
  `equipos` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `equipos`) VALUES
(1, 'Alemania'),
(2, 'Arabia Saudita'),
(3, 'Argentina'),
(4, 'Australia'),
(5, 'Bélgica'),
(6, 'Brasil'),
(7, 'Camerún'),
(8, 'Canadá'),
(9, 'Catar'),
(10, 'Corea del Sur'),
(11, 'Costa Rica'),
(12, 'Croacia'),
(13, 'Dinamarca'),
(14, 'Ecuador'),
(15, 'España'),
(16, 'Estados Unidos'),
(17, 'Francia'),
(18, 'Gales'),
(19, 'Ghana'),
(20, 'Inglaterra'),
(21, 'Irán'),
(22, 'Japón'),
(23, 'Marruecos'),
(24, 'México'),
(25, 'Paises Bajos'),
(26, 'Polonia'),
(27, 'Portugal'),
(28, 'Senegal'),
(29, 'Serbia'),
(30, 'Suiza'),
(31, 'Túnez'),
(32, 'Uruguay');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadios`
--

CREATE TABLE `estadios` (
  `id` int(20) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estadios`
--

INSERT INTO `estadios` (`id`, `nombre`) VALUES
(1, 'Al Bayt'),
(2, 'Al Janoub'),
(3, 'Ahmad Bin Ali'),
(4, 'Al Thumama'),
(5, 'Education City'),
(6, 'Internacional Khalif'),
(7, 'Lusail'),
(8, 'Stadium 974');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fases`
--

CREATE TABLE `fases` (
  `id` int(20) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fases`
--

INSERT INTO `fases` (`id`, `nombre`) VALUES
(1, 'Ronda 1'),
(2, 'Ronda 2'),
(3, 'Ronda 3'),
(4, 'Octavos'),
(5, 'Cuartos'),
(6, 'Semifinal'),
(7, 'Final');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorito`
--

CREATE TABLE `favorito` (
  `id_usuario` int(20) NOT NULL,
  `id_equipo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechas`
--

CREATE TABLE `fechas` (
  `id` int(20) NOT NULL,
  `fecha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fechas`
--

INSERT INTO `fechas` (`id`, `fecha`) VALUES
(1, '21 Noviembre'),
(2, '22 Noviembre'),
(3, '23 Noviembre'),
(4, '24 Noviembre'),
(5, '25 Noviembre'),
(6, '26 Noviembre'),
(7, '27 Noviembre'),
(8, '28 Noviembre'),
(9, '29 Noviembre'),
(10, '30 Noviembre'),
(11, '1 Diciembre'),
(12, '2 Diciembre'),
(13, '3 Diciembre'),
(14, '4 Diciembre'),
(15, '5 Diciembre'),
(16, '6 Diciembre'),
(17, '9 Diciembre'),
(18, '10 Diciembre'),
(19, '13 Diciembre'),
(20, '14 Diciembre'),
(21, '17 Diciembre'),
(22, '18 Diciembre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupoequipo`
--

CREATE TABLE `grupoequipo` (
  `id_grupos` int(20) NOT NULL,
  `id_equipos` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grupoequipo`
--

INSERT INTO `grupoequipo` (`id_grupos`, `id_equipos`) VALUES
(1, 9),
(1, 14),
(1, 25),
(1, 28),
(2, 16),
(2, 18),
(2, 20),
(2, 21),
(3, 2),
(3, 3),
(3, 24),
(3, 26),
(4, 4),
(4, 13),
(4, 17),
(4, 31),
(5, 1),
(5, 11),
(5, 15),
(5, 22),
(6, 5),
(6, 8),
(6, 12),
(6, 23),
(7, 6),
(7, 7),
(7, 29),
(7, 30),
(8, 10),
(8, 19),
(8, 27),
(8, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id` int(11) NOT NULL,
  `grupo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id`, `grupo`) VALUES
(1, 'Grupo A'),
(2, 'Grupo B'),
(3, 'Grupo C'),
(4, 'Grupo D'),
(5, 'Grupo E'),
(6, 'Grupo F'),
(7, 'Grupo G'),
(8, 'Grupo H');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horas`
--

CREATE TABLE `horas` (
  `id` int(20) NOT NULL,
  `hora` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horas`
--

INSERT INTO `horas` (`id`, `hora`) VALUES
(1, '5:00am'),
(2, '8:00am'),
(3, '10:00am'),
(4, '11:00am'),
(5, '2:00pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `id` int(20) NOT NULL,
  `equipo1` varchar(20) NOT NULL,
  `equipo2` varchar(20) NOT NULL,
  `id_ronda` int(20) NOT NULL,
  `id_grupo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `partidos`
--

INSERT INTO `partidos` (`id`, `equipo1`, `equipo2`, `id_ronda`, `id_grupo`) VALUES
(1, 'Qatar', 'Ecuador', 1, 1),
(2, 'Senegal', 'Países Bajos', 1, 1),
(3, 'Qatar', 'Senegal', 2, 1),
(4, 'Países Bajos ', 'Ecuador', 2, 1),
(5, 'Países Bajos', 'Qatar', 3, 1),
(6, 'Ecuador', 'Senegal', 3, 1),
(7, 'Argentina', 'Arabia', 1, 3),
(8, 'México', 'Polonia', 1, 3),
(9, 'Argentina', 'México', 2, 3),
(10, 'Polonia', 'Arabia Saudita', 2, 3),
(11, 'Polonia', 'Argentina', 3, 3),
(12, 'Arabia Saudita', 'México', 3, 3),
(13, 'España', 'Costa Rica', 1, 5),
(14, 'Alemania', 'Japón', 1, 5),
(15, 'España', 'Alemania', 2, 5),
(16, 'Japón', 'Costa Rica', 2, 5),
(17, 'Japón', 'España', 3, 5),
(18, 'Costa Rica', 'Alemania', 3, 5),
(19, 'Suiza', 'Camerún', 1, 7),
(20, 'Brasil', 'Serbia', 1, 7),
(21, 'Camerún', 'Serbia', 2, 7),
(22, 'Brasil', 'Suiza', 2, 7),
(23, 'Serbia', 'Suiza', 3, 7),
(24, 'Camerún', 'Brasil', 3, 7),
(25, 'Inglaterra', 'Irán', 1, 2),
(26, 'Estados Unidos', 'Gales', 1, 2),
(27, 'Inglaterra', 'Estados Unidos', 2, 2),
(28, 'Gales', 'Irán', 2, 2),
(29, 'Gales', 'Inglaterra', 3, 2),
(30, 'Irán', 'Estados Unidos', 3, 2),
(31, 'Francia', 'Australia', 1, 4),
(32, 'Dinamarca', 'Túnez', 1, 4),
(33, 'Francia', 'Dinamarca', 2, 4),
(34, 'Túnez', 'Australia', 2, 4),
(35, 'Túnez', 'Francia', 3, 4),
(36, 'Australia', 'Dinamarca', 3, 4),
(37, 'Bélgica', 'Canadá', 1, 6),
(38, 'Marruecos', 'Croacia', 1, 6),
(39, 'Bélgica', 'Marruecos', 2, 6),
(40, 'Croacia', 'Canadá', 2, 6),
(41, 'Croacia', 'Bélgica', 3, 6),
(42, 'Canadá', 'Marruecos', 3, 8),
(43, 'Portugal', 'Ghana', 1, 8),
(44, 'Uruguay', 'Corea', 1, 8),
(45, 'Portugal', 'Uruguay', 2, 8),
(46, 'Corea', 'Ghana', 2, 8),
(47, 'Corea', 'Portugal', 3, 8),
(48, 'Ghana', 'Uruguay', 3, 8);

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
  `id` int(20) NOT NULL,
  `id_fecha` int(20) NOT NULL,
  `id_hora` int(20) NOT NULL,
  `id_estadio` int(20) NOT NULL,
  `id_partido` int(20) NOT NULL,
  `id_ronda` int(20) NOT NULL,
  `g_1` int(20) NOT NULL,
  `g_2` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`id`, `id_fecha`, `id_hora`, `id_estadio`, `id_partido`, `id_ronda`, `g_1`, `g_2`) VALUES
(1, 1, 1, 1, 1, 1, 0, 2),
(2, 1, 4, 4, 2, 1, 0, 2),
(3, 5, 2, 4, 3, 2, 1, 3),
(4, 5, 4, 6, 4, 2, 1, 1),
(5, 9, 3, 1, 5, 3, 2, 0),
(6, 9, 3, 6, 6, 3, 1, 2),
(7, 1, 2, 6, 25, 1, 6, 2),
(8, 1, 5, 6, 26, 1, 1, 1),
(9, 5, 5, 1, 27, 2, 0, 0),
(10, 5, 1, 3, 28, 2, 0, 2),
(11, 9, 5, 3, 29, 3, 0, 3),
(12, 9, 5, 4, 30, 3, 0, 1),
(13, 2, 1, 7, 7, 1, 1, 2),
(14, 2, 4, 8, 8, 1, 0, 0),
(15, 6, 5, 7, 9, 2, 2, 0),
(16, 6, 2, 5, 10, 2, 2, 0),
(17, 10, 5, 8, 11, 3, 0, 2),
(18, 10, 5, 7, 12, 3, 1, 2),
(19, 2, 5, 2, 31, 1, 4, 1),
(20, 2, 2, 5, 32, 1, 0, 0),
(21, 6, 4, 8, 33, 2, 2, 1),
(22, 6, 1, 2, 34, 2, 0, 1),
(23, 10, 3, 5, 35, 3, 1, 0),
(24, 10, 3, 2, 36, 3, 1, 0),
(25, 3, 4, 4, 13, 1, 7, 0),
(26, 3, 2, 6, 14, 1, 1, 2),
(27, 7, 5, 1, 15, 2, 1, 1),
(28, 7, 1, 3, 16, 2, 0, 1),
(29, 11, 5, 6, 17, 3, 0, 0),
(30, 11, 5, 1, 18, 3, 0, 0),
(31, 3, 5, 3, 37, 1, 1, 0),
(32, 3, 1, 1, 38, 1, 0, 0),
(33, 7, 2, 4, 39, 2, 0, 2),
(34, 7, 4, 6, 40, 2, 4, 0),
(35, 11, 3, 3, 41, 3, 0, 0),
(36, 11, 3, 4, 42, 3, 0, 0),
(37, 4, 1, 8, 19, 1, 1, 0),
(38, 4, 5, 5, 20, 1, 2, 0),
(39, 8, 1, 7, 21, 2, 3, 3),
(40, 8, 4, 5, 22, 2, 1, 0),
(41, 12, 5, 5, 23, 3, 0, 0),
(42, 12, 5, 2, 24, 3, 0, 0),
(43, 4, 4, 8, 43, 1, 3, 2),
(44, 4, 2, 5, 44, 1, 0, 0),
(45, 8, 5, 7, 45, 2, 2, 0),
(46, 8, 2, 5, 46, 2, 2, 3),
(47, 12, 3, 5, 47, 3, 0, 0),
(48, 12, 3, 2, 48, 3, 0, 0);

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
  `DifGol` varchar(10) DEFAULT NULL,
  `id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabpos`
--

INSERT INTO `tabpos` (`nombre`, `puntos`, `pj`, `pg`, `pe`, `pp`, `ga`, `gc`, `DifGol`, `id`) VALUES
('Alemania', '1', '2', '0', '1', '1', '2', '3', '-1', 1),
('Arabia Saudita', '3', '2', '1', '0', '1', '2', '3', '-1', 2),
('Argentina', '3', '2', '1', '0', '1', '3', '2', '1', 3),
('Australia', '3', '2', '1', '0', '1', '2', '4', '-2', 4),
('Bélgica', '3', '2', '1', '0', '1', '1', '2', '-1', 5),
('Brasil', '6', '2', '2', '0', '0', '3', '0', '3', 6),
('Camerún', '1', '2', '0', '1', '1', '3', '4', '-1', 7),
('Canadá', '0', '2', '0', '0', '2', '1', '5', '-4', 8),
('Catar', '0', '3', '0', '0', '3', '1', '7', '-6', 9),
('Corea del Sur', '1', '2', '0', '1', '1', '2', '3', '-1', 10),
('Costa Rica', '3', '2', '1', '0', '1', '1', '7', '-6', 11),
('Croacia', '4', '2', '1', '1', '0', '4', '1', '3', 12),
('Dinamarca', '1', '2', '0', '1', '1', '1', '2', '-1', 13),
('Ecuador', '4', '3', '1', '1', '1', '4', '3', '1', 14),
('España', '4', '2', '1', '1', '0', '8', '1', '7', 15),
('Estados Unidos', '5', '3', '1', '2', '0', '2', '1', '1', 16),
('Francia', '6', '2', '2', '0', '0', '6', '2', '4', 17),
('Gales', '1', '3', '0', '1', '2', '1', '6', '-5', 18),
('Ghana', '3', '2', '1', '0', '1', '5', '5', '0', 19),
('Inglaterra', '7', '3', '2', '1', '0', '9', '2', '7', 20),
('Irán', '3', '3', '1', '0', '2', '4', '7', '-3', 21),
('Japón', '3', '2', '1', '0', '1', '2', '2', '0', 22),
('Marruecos', '4', '2', '1', '1', '0', '2', '0', '2', 23),
('México', '1', '2', '0', '1', '1', '0', '2', '-2', 24),
('Paises Bajos', '7', '3', '2', '3', '0', '5', '1', '4', 25),
('Polonia', '4', '2', '1', '1', '0', '2', '0', '2', 26),
('Portugal', '6', '2', '2', '0', '0', '5', '2', '3', 27),
('Senegal', '6', '3', '2', '0', '1', '5', '4', '1', 28),
('Serbia', '1', '2', '0', '1', '1', '3', '5', '-2', 29),
('Suiza', '3', '2', '1', '0', '1', '1', '1', '0', 30),
('Túnez', '1', '2', '0', '1', '1', '0', '1', '-1', 31),
('Uruguay', '1', '2', '0', '1', '1', '0', '2', '-2', 32);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_equipos` (`id`);

--
-- Indices de la tabla `estadios`
--
ALTER TABLE `estadios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `fases`
--
ALTER TABLE `fases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `favorito`
--
ALTER TABLE `favorito`
  ADD PRIMARY KEY (`id_usuario`,`id_equipo`),
  ADD KEY `id_equipo` (`id_equipo`);

--
-- Indices de la tabla `fechas`
--
ALTER TABLE `fechas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `grupoequipo`
--
ALTER TABLE `grupoequipo`
  ADD PRIMARY KEY (`id_grupos`,`id_equipos`),
  ADD KEY `id_equipos` (`id_equipos`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_grupos` (`id`);

--
-- Indices de la tabla `horas`
--
ALTER TABLE `horas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_ronda` (`id_ronda`),
  ADD KEY `id_grupo` (`id_grupo`);

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
  ADD KEY `id_fecha` (`id_fecha`),
  ADD KEY `id_hora` (`id_hora`),
  ADD KEY `id_estadio` (`id_estadio`),
  ADD KEY `id_partido` (`id_partido`),
  ADD KEY `id_ronda` (`id_ronda`);

--
-- Indices de la tabla `tabpos`
--
ALTER TABLE `tabpos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `estadios`
--
ALTER TABLE `estadios`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `fases`
--
ALTER TABLE `fases`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `fechas`
--
ALTER TABLE `fechas`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `horas`
--
ALTER TABLE `horas`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `tabpos`
--
ALTER TABLE `tabpos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `favorito`
--
ALTER TABLE `favorito`
  ADD CONSTRAINT `favorito_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id`),
  ADD CONSTRAINT `favorito_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `registro` (`id`);

--
-- Filtros para la tabla `grupoequipo`
--
ALTER TABLE `grupoequipo`
  ADD CONSTRAINT `grupoequipo_ibfk_1` FOREIGN KEY (`id_equipos`) REFERENCES `equipos` (`id`),
  ADD CONSTRAINT `grupoequipo_ibfk_2` FOREIGN KEY (`id_grupos`) REFERENCES `grupos` (`id`);

--
-- Filtros para la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD CONSTRAINT `partidos_ibfk_1` FOREIGN KEY (`id_ronda`) REFERENCES `fases` (`id`),
  ADD CONSTRAINT `partidos_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id`);

--
-- Filtros para la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD CONSTRAINT `resultados_ibfk_1` FOREIGN KEY (`id_fecha`) REFERENCES `fechas` (`id`),
  ADD CONSTRAINT `resultados_ibfk_2` FOREIGN KEY (`id_hora`) REFERENCES `horas` (`id`),
  ADD CONSTRAINT `resultados_ibfk_3` FOREIGN KEY (`id_estadio`) REFERENCES `estadios` (`id`),
  ADD CONSTRAINT `resultados_ibfk_4` FOREIGN KEY (`id_partido`) REFERENCES `partidos` (`id`),
  ADD CONSTRAINT `resultados_ibfk_5` FOREIGN KEY (`id_ronda`) REFERENCES `fases` (`id`);

--
-- Filtros para la tabla `tabpos`
--
ALTER TABLE `tabpos`
  ADD CONSTRAINT `tabpos_ibfk_1` FOREIGN KEY (`id`) REFERENCES `equipos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
