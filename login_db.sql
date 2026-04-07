-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-04-2026 a las 01:21:16
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(11) NOT NULL,
  `per` varchar(255) DEFAULT NULL,
  `fac` varchar(255) DEFAULT NULL,
  `car` varchar(255) DEFAULT NULL,
  `est_mat` int(11) DEFAULT NULL,
  `est_ul_niv` int(11) DEFAULT NULL,
  `est_tit_ul_niv` int(11) DEFAULT NULL,
  `est_1ra_pror` int(11) DEFAULT NULL,
  `est_tit_1ra_pror` int(11) DEFAULT NULL,
  `est_2da_pror` int(11) DEFAULT NULL,
  `est_tit_2da_pror` int(11) DEFAULT NULL,
  `est_act_conoc_1ra` int(11) DEFAULT NULL,
  `est_tit_act_conoc_1ra` int(11) DEFAULT NULL,
  `est_act_conoc_2da` int(11) DEFAULT NULL,
  `est_tit_act_conoc_2da` int(11) DEFAULT NULL,
  `est_aprob_act_1ra` int(11) DEFAULT NULL,
  `est_tit_aprob_act_1ra` int(11) DEFAULT NULL,
  `est_aprob_act_2da` int(11) DEFAULT NULL,
  `est_tit_aprob_act_2da` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `per`, `fac`, `car`, `est_mat`, `est_ul_niv`, `est_tit_ul_niv`, `est_1ra_pror`, `est_tit_1ra_pror`, `est_2da_pror`, `est_tit_2da_pror`, `est_act_conoc_1ra`, `est_tit_act_conoc_1ra`, `est_act_conoc_2da`, `est_tit_act_conoc_2da`, `est_aprob_act_1ra`, `est_tit_aprob_act_1ra`, `est_aprob_act_2da`, `est_tit_aprob_act_2da`) VALUES
(6, '2024-1S', 'Facultad de Ciencias de la Educación, Humanas y Tecnologías', 'Ciencias Exactas', 84, 30, 25, 10, 1, 3, 1, 31, 18, 2, 1, 2, 0, 6, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reprobacion`
--

CREATE TABLE `reprobacion` (
  `id` int(11) NOT NULL,
  `facultad` varchar(255) DEFAULT NULL,
  `carrera` varchar(255) DEFAULT NULL,
  `periodo_academico` varchar(10) DEFAULT NULL,
  `indicador` varchar(255) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reprobacion`
--

INSERT INTO `reprobacion` (`id`, `facultad`, `carrera`, `periodo_academico`, `indicador`, `valor`, `fecha_registro`) VALUES
(1, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes matriculados  en Titulación', 48, '2026-02-10 04:39:32'),
(2, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 27, '2026-02-10 04:39:32'),
(3, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 12, '2026-02-10 04:39:32'),
(4, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 20, '2026-02-10 04:39:32'),
(5, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 19, '2026-02-10 04:39:32'),
(6, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 1, '2026-02-10 04:39:32'),
(7, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 1, '2026-02-10 04:39:32'),
(8, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 0, '2026-02-10 04:39:32'),
(9, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 0, '2026-02-10 04:39:32'),
(10, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 0, '2026-02-10 04:39:32'),
(11, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 0, '2026-02-10 04:39:32'),
(12, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 04:39:32'),
(13, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 04:39:32'),
(14, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 04:39:32'),
(15, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 04:39:32'),
(16, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes matriculados / Proyecto de Investigación', 48, '2026-02-10 04:39:32'),
(17, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Titulados / Proyecto de Investigación', 32, '2026-02-10 04:39:32'),
(18, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes matriculados / Examen Complexivo Teórico', 0, '2026-02-10 04:39:32'),
(19, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Titulados / Examen complexivo Teórico', 0, '2026-02-10 04:39:32'),
(20, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes matriculados / Examen Complexivo Teórico- Práctico', 0, '2026-02-10 04:39:32'),
(21, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Titulados / Examen complexivo Teórico Práctico', 0, '2026-02-10 04:39:32'),
(22, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes que solicitan segunda ocasión consecutiva gratuita', 15, '2026-02-10 04:39:32'),
(23, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita', 1, '2026-02-10 04:39:32'),
(24, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes que solicitan tercera ocasión No gratuita', 0, '2026-02-10 04:39:32'),
(25, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita (Actualización de Conocimientos)', 0, '2026-02-10 04:39:32'),
(26, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes que pierden titulación prorroga', 0, '2026-02-10 04:39:32'),
(27, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes que pierden actualizacion sin curso', 0, '2026-02-10 04:39:32'),
(28, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes que pierden actualizacion con curso', 0, '2026-02-10 04:39:32'),
(29, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Total de Profesores con asignación de carga horaria para tutoría de las opciones  de  Titulación', 15, '2026-02-10 04:39:32'),
(30, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Total de horas asignadas según carga horaria para tutorías de Titulación', 45, '2026-02-10 04:39:32'),
(31, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Profesores con asignación de carga horaria para tutoría de  Proyecto de Investigación', 15, '2026-02-10 04:39:32'),
(32, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° de  Profesores con asignación de carga horaria para tutoría de  Examen complexivo teórico-práctico', 0, '2026-02-10 04:39:32'),
(33, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes Matriculados en el Curso de Actualización de Conocimientos con Aprobación', 0, '2026-02-10 04:39:32'),
(34, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes que Aprobaron el Curso de Actualización de Conocimientos', 0, '2026-02-10 04:39:32'),
(35, 'Ingeniería', 'Agroindustria (R-A)', '2024-2S', 'N° Estudiantes que Reprobaron el Curso de Actualización de Conocimientos', 0, '2026-02-10 04:39:32'),
(36, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes matriculados  en Titulación', 18, '2026-02-10 05:01:30'),
(37, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 5, '2026-02-10 05:01:30'),
(38, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 3, '2026-02-10 05:01:30'),
(39, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 10, '2026-02-10 05:01:30'),
(40, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 9, '2026-02-10 05:01:30'),
(41, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 3, '2026-02-10 05:01:30'),
(42, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 3, '2026-02-10 05:01:30'),
(43, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 0, '2026-02-10 05:01:30'),
(44, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 0, '2026-02-10 05:01:30'),
(45, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 0, '2026-02-10 05:01:30'),
(46, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 0, '2026-02-10 05:01:30'),
(47, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:01:30'),
(48, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:01:30'),
(49, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:01:30'),
(50, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:01:30'),
(51, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes matriculados / Proyecto de Investigación', 18, '2026-02-10 05:01:30'),
(52, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados / Proyecto de Investigación', 15, '2026-02-10 05:01:30'),
(53, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico', 0, '2026-02-10 05:01:30'),
(54, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico', 0, '2026-02-10 05:01:30'),
(55, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico- Práctico', 0, '2026-02-10 05:01:30'),
(56, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico Práctico', 0, '2026-02-10 05:01:30'),
(57, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que solicitan segunda ocasión consecutiva gratuita', 2, '2026-02-10 05:01:30'),
(58, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita', 1, '2026-02-10 05:01:30'),
(59, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión No gratuita', 0, '2026-02-10 05:01:30'),
(60, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:01:30'),
(61, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que pierden titulación prorroga', 0, '2026-02-10 05:01:30'),
(62, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion sin curso', 0, '2026-02-10 05:01:30'),
(63, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion con curso', 0, '2026-02-10 05:01:30'),
(64, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Total de Profesores con asignación de carga horaria para tutoría de las opciones  de  Titulación', 11, '2026-02-10 05:01:30'),
(65, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Total de horas asignadas según carga horaria para tutorías de Titulación', 29, '2026-02-10 05:01:30'),
(66, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Profesores con asignación de carga horaria para tutoría de  Proyecto de Investigación', 11, '2026-02-10 05:01:30'),
(67, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° de  Profesores con asignación de carga horaria para tutoría de  Examen complexivo teórico-práctico', 0, '2026-02-10 05:01:30'),
(68, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Matriculados en el Curso de Actualización de Conocimientos con Aprobación', 0, '2026-02-10 05:01:30'),
(69, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que Aprobaron el Curso de Actualización de Conocimientos', 0, '2026-02-10 05:01:30'),
(70, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que Reprobaron el Curso de Actualización de Conocimientos', 0, '2026-02-10 05:01:30'),
(71, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes matriculados  en Titulación', 109, '2026-02-10 05:04:06'),
(72, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 59, '2026-02-10 05:04:06'),
(73, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 2, '2026-02-10 05:04:06'),
(74, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 0, '2026-02-10 05:04:06'),
(75, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 0, '2026-02-10 05:04:06'),
(76, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 27, '2026-02-10 05:04:06'),
(77, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 26, '2026-02-10 05:04:06'),
(78, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 23, '2026-02-10 05:04:06'),
(79, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 10, '2026-02-10 05:04:06'),
(80, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 0, '2026-02-10 05:04:06'),
(81, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 0, '2026-02-10 05:04:06'),
(82, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:04:06'),
(83, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:04:06'),
(84, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:04:06'),
(85, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:04:06'),
(86, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes matriculados / Proyecto de Investigación', 109, '2026-02-10 05:04:06'),
(87, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Titulados / Proyecto de Investigación', 38, '2026-02-10 05:04:06'),
(88, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes matriculados / Examen Complexivo Teórico', 0, '2026-02-10 05:04:06'),
(89, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Titulados / Examen complexivo Teórico', 0, '2026-02-10 05:04:06'),
(90, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes matriculados / Examen Complexivo Teórico- Práctico', 0, '2026-02-10 05:04:06'),
(91, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Titulados / Examen complexivo Teórico Práctico', 0, '2026-02-10 05:04:06'),
(92, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes que solicitan segunda ocasión consecutiva gratuita', 57, '2026-02-10 05:04:06'),
(93, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita', 0, '2026-02-10 05:04:06'),
(94, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes que solicitan tercera ocasión No gratuita', 13, '2026-02-10 05:04:06'),
(95, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:04:06'),
(96, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes que pierden titulación prorroga', 1, '2026-02-10 05:04:06'),
(97, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes que pierden actualizacion sin curso', 0, '2026-02-10 05:04:06'),
(98, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes que pierden actualizacion con curso', 0, '2026-02-10 05:04:06'),
(99, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Total de Profesores con asignación de carga horaria para tutoría de las opciones  de  Titulación', 23, '2026-02-10 05:04:06'),
(100, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Total de horas asignadas según carga horaria para tutorías de Titulación', 63, '2026-02-10 05:04:06'),
(101, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Profesores con asignación de carga horaria para tutoría de  Proyecto de Investigación', 23, '2026-02-10 05:04:06'),
(102, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° de  Profesores con asignación de carga horaria para tutoría de  Examen complexivo teórico-práctico', 0, '2026-02-10 05:04:06'),
(103, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes Matriculados en el Curso de Actualización de Conocimientos con Aprobación', 0, '2026-02-10 05:04:06'),
(104, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes que Aprobaron el Curso de Actualización de Conocimientos', 0, '2026-02-10 05:04:06'),
(105, 'Ingeniería', 'Arquitectura (R-A)', '2025-1s ', 'N° Estudiantes que Reprobaron el Curso de Actualización de Conocimientos', 0, '2026-02-10 05:04:06'),
(106, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes matriculados  en Titulación', 73, '2026-02-10 05:05:58'),
(107, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 34, '2026-02-10 05:05:58'),
(108, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 7, '2026-02-10 05:05:58'),
(109, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 18, '2026-02-10 05:05:58'),
(110, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 18, '2026-02-10 05:05:58'),
(111, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 1, '2026-02-10 05:05:58'),
(112, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 1, '2026-02-10 05:05:58'),
(113, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 19, '2026-02-10 05:05:58'),
(114, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 18, '2026-02-10 05:05:58'),
(115, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 1, '2026-02-10 05:05:58'),
(116, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 1, '2026-02-10 05:05:58'),
(117, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:05:58'),
(118, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:05:58'),
(119, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:05:58'),
(120, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:05:58'),
(121, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes matriculados / Proyecto de Investigación', 73, '2026-02-10 05:05:58'),
(122, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Titulados / Proyecto de Investigación', 45, '2026-02-10 05:05:58'),
(123, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes matriculados / Examen Complexivo Teórico', 0, '2026-02-10 05:05:58'),
(124, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Titulados / Examen complexivo Teórico', 0, '2026-02-10 05:05:58'),
(125, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes matriculados / Examen Complexivo Teórico- Práctico', 0, '2026-02-10 05:05:58'),
(126, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Titulados / Examen complexivo Teórico Práctico', 0, '2026-02-10 05:05:58'),
(127, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes que solicitan segunda ocasión consecutiva gratuita', 27, '2026-02-10 05:05:58'),
(128, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita', 0, '2026-02-10 05:05:58'),
(129, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes que solicitan tercera ocasión No gratuita', 1, '2026-02-10 05:05:59'),
(130, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:05:59'),
(131, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes que pierden titulación prorroga', 0, '2026-02-10 05:05:59'),
(132, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes que pierden actualizacion sin curso', 0, '2026-02-10 05:05:59'),
(133, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes que pierden actualizacion con curso', 0, '2026-02-10 05:05:59'),
(134, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Total de Profesores con asignación de carga horaria para tutoría de las opciones  de  Titulación', 19, '2026-02-10 05:05:59'),
(135, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Total de horas asignadas según carga horaria para tutorías de Titulación', 62, '2026-02-10 05:05:59'),
(136, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Profesores con asignación de carga horaria para tutoría de  Proyecto de Investigación', 19, '2026-02-10 05:05:59'),
(137, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° de  Profesores con asignación de carga horaria para tutoría de  Examen complexivo teórico-práctico', 0, '2026-02-10 05:05:59'),
(138, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes Matriculados en el Curso de Actualización de Conocimientos con Aprobación', 0, '2026-02-10 05:05:59'),
(139, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes que Aprobaron el Curso de Actualización de Conocimientos', 0, '2026-02-10 05:05:59'),
(140, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1s', 'N° Estudiantes que Reprobaron el Curso de Actualización de Conocimientos', 0, '2026-02-10 05:05:59'),
(141, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes matriculados  en Titulación', 46, '2026-02-10 05:07:19'),
(142, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 24, '2026-02-10 05:07:19'),
(143, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 7, '2026-02-10 05:07:19'),
(144, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 14, '2026-02-10 05:07:19'),
(145, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 4, '2026-02-10 05:07:19'),
(146, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 2, '2026-02-10 05:07:19'),
(147, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 2, '2026-02-10 05:07:19'),
(148, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 5, '2026-02-10 05:07:19'),
(149, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 5, '2026-02-10 05:07:19'),
(150, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 1, '2026-02-10 05:07:19'),
(151, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 1, '2026-02-10 05:07:19'),
(152, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:07:19'),
(153, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:07:19'),
(154, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:07:19'),
(155, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:07:19'),
(156, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes matriculados / Proyecto de Investigación', 42, '2026-02-10 05:07:19'),
(157, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Titulados / Proyecto de Investigación', 15, '2026-02-10 05:07:19'),
(158, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico', 0, '2026-02-10 05:07:19'),
(159, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Titulados / Examen complexivo Teórico', 0, '2026-02-10 05:07:19'),
(160, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico- Práctico', 4, '2026-02-10 05:07:19'),
(161, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Titulados / Examen complexivo Teórico Práctico', 4, '2026-02-10 05:07:19'),
(162, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes que solicitan segunda ocasión consecutiva gratuita', 17, '2026-02-10 05:07:19'),
(163, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita', 10, '2026-02-10 05:07:19'),
(164, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes que solicitan tercera ocasión No gratuita', 0, '2026-02-10 05:07:19'),
(165, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:07:19'),
(166, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes que pierden titulación prorroga', 0, '2026-02-10 05:07:19'),
(167, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes que pierden actualizacion sin curso', 0, '2026-02-10 05:07:19'),
(168, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes que pierden actualizacion con curso', 0, '2026-02-10 05:07:19'),
(169, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Total de Profesores con asignación de carga horaria para tutoría de las opciones  de  Titulación', 12, '2026-02-10 05:07:19'),
(170, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Total de horas asignadas según carga horaria para tutorías de Titulación', 48, '2026-02-10 05:07:19'),
(171, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Profesores con asignación de carga horaria para tutoría de  Proyecto de Investigación', 12, '2026-02-10 05:07:19'),
(172, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° de  Profesores con asignación de carga horaria para tutoría de  Examen complexivo teórico-práctico', 4, '2026-02-10 05:07:19'),
(173, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes Matriculados en el Curso de Actualización de Conocimientos con Aprobación', 0, '2026-02-10 05:07:19'),
(174, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes que Aprobaron el Curso de Actualización de Conocimientos', 0, '2026-02-10 05:07:19'),
(175, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025 1S', 'N° Estudiantes que Reprobaron el Curso de Actualización de Conocimientos', 0, '2026-02-10 05:07:19'),
(176, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes matriculados  en Titulación', 40, '2026-02-10 05:17:53'),
(177, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 7, '2026-02-10 05:17:53'),
(178, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 4, '2026-02-10 05:17:53'),
(179, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 22, '2026-02-10 05:17:53'),
(180, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 9, '2026-02-10 05:17:53'),
(181, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 3, '2026-02-10 05:17:53'),
(182, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 1, '2026-02-10 05:17:53'),
(183, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 0, '2026-02-10 05:17:53'),
(184, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 0, '2026-02-10 05:17:53'),
(185, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 8, '2026-02-10 05:17:53'),
(186, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 4, '2026-02-10 05:17:53'),
(187, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:17:53'),
(188, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:17:53'),
(189, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:17:53'),
(190, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:17:53'),
(191, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes matriculados / Proyecto de Investigación', 37, '2026-02-10 05:17:53'),
(192, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados / Proyecto de Investigación', 17, '2026-02-10 05:17:53'),
(193, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico', 0, '2026-02-10 05:17:53'),
(194, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico', 0, '2026-02-10 05:17:53'),
(195, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico- Práctico', 0, '2026-02-10 05:17:53'),
(196, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico Práctico', 0, '2026-02-10 05:17:53'),
(197, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que solicitan segunda ocasión consecutiva gratuita', 5, '2026-02-10 05:17:53'),
(198, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita', 22, '2026-02-10 05:17:53'),
(199, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión No gratuita', 0, '2026-02-10 05:17:53'),
(200, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:17:53'),
(201, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que pierden titulación prorroga', 3, '2026-02-10 05:17:53'),
(202, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion sin curso', 0, '2026-02-10 05:17:53'),
(203, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion con curso', 0, '2026-02-10 05:17:53'),
(204, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Total de Profesores con asignación de carga horaria para tutoría de las opciones  de  Titulación', 12, '2026-02-10 05:17:53'),
(205, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Total de horas asignadas según carga horaria para tutorías de Titulación', 48, '2026-02-10 05:17:53'),
(206, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Profesores con asignación de carga horaria para tutoría de  Proyecto de Investigación', 20, '2026-02-10 05:17:53'),
(207, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° de  Profesores con asignación de carga horaria para tutoría de  Examen complexivo teórico-práctico', 0, '2026-02-10 05:17:53'),
(208, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Matriculados en el Curso de Actualización de Conocimientos con Aprobación', 0, '2026-02-10 05:17:53'),
(209, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que Aprobaron el Curso de Actualización de Conocimientos', 0, '2026-02-10 05:17:53'),
(210, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que Reprobaron el Curso de Actualización de Conocimientos', 0, '2026-02-10 05:17:53'),
(281, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes matriculados  en Titulación', 15, '2026-02-10 05:37:40'),
(282, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 12, '2026-02-10 05:37:40'),
(283, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 11, '2026-02-10 05:37:40'),
(284, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 0, '2026-02-10 05:37:40'),
(285, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 0, '2026-02-10 05:37:40'),
(286, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 0, '2026-02-10 05:37:40'),
(287, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 0, '2026-02-10 05:37:40'),
(288, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 2, '2026-02-10 05:37:40'),
(289, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 2, '2026-02-10 05:37:40'),
(290, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 1, '2026-02-10 05:37:40'),
(291, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 1, '2026-02-10 05:37:40'),
(292, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:37:40'),
(293, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:37:40'),
(294, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:37:40'),
(295, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:37:40'),
(296, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes matriculados / Proyecto de Investigación', 15, '2026-02-10 05:37:40'),
(297, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados / Proyecto de Investigación', 14, '2026-02-10 05:37:40'),
(298, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico', 0, '2026-02-10 05:37:40'),
(299, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico', 0, '2026-02-10 05:37:40'),
(300, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico- Práctico', 0, '2026-02-10 05:37:40'),
(301, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico Práctico', 0, '2026-02-10 05:37:40'),
(302, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que solicitan segunda ocasión consecutiva gratuita', 1, '2026-02-10 05:37:40'),
(303, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita', 0, '2026-02-10 05:37:40'),
(304, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión No gratuita', 0, '2026-02-10 05:37:40'),
(305, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita (Actualización de Conocimientos)', 0, '2026-02-10 05:37:40'),
(306, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que pierden titulación prorroga', 0, '2026-02-10 05:37:40'),
(307, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion sin curso', 0, '2026-02-10 05:37:40'),
(308, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion con curso', 0, '2026-02-10 05:37:40'),
(309, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Total de Profesores con asignación de carga horaria para tutoría de las opciones  de  Titulación', 10, '2026-02-10 05:37:40'),
(310, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Total de horas asignadas según carga horaria para tutorías de Titulación', 21, '2026-02-10 05:37:40'),
(311, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Profesores con asignación de carga horaria para tutoría de  Proyecto de Investigación', 10, '2026-02-10 05:37:40'),
(312, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° de  Profesores con asignación de carga horaria para tutoría de  Examen complexivo teórico-práctico', 0, '2026-02-10 05:37:40'),
(313, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Matriculados en el Curso de Actualización de Conocimientos con Aprobación', 0, '2026-02-10 05:37:40'),
(314, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que Aprobaron el Curso de Actualización de Conocimientos', 0, '2026-02-10 05:37:40'),
(315, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que Reprobaron el Curso de Actualización de Conocimientos', 0, '2026-02-10 05:37:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reprobacion_definitiva`
--

CREATE TABLE `reprobacion_definitiva` (
  `id` int(11) NOT NULL,
  `periodo` varchar(10) NOT NULL,
  `facultad` varchar(255) NOT NULL,
  `carrera` varchar(255) NOT NULL,
  `est_pierden_titulacion_prorroga` int(11) NOT NULL,
  `est_pierden_actualizacion_sin_curso` int(11) NOT NULL,
  `est_pierden_actualizacion_con_curso` int(11) NOT NULL,
  `total_profesores_carga_horaria` int(11) NOT NULL,
  `total_horas_tutorias` int(11) NOT NULL,
  `profesores_tutoria_proyecto_investigacion` int(11) NOT NULL,
  `profesores_tutoria_examen_complexivo` int(11) NOT NULL,
  `est_matriculados_actualizacion_aprobacion` int(11) NOT NULL,
  `est_aprobaron_curso_actualizacion` int(11) NOT NULL,
  `est_reprobaron_curso_actualizacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reprobacion_definitiva`
--

INSERT INTO `reprobacion_definitiva` (`id`, `periodo`, `facultad`, `carrera`, `est_pierden_titulacion_prorroga`, `est_pierden_actualizacion_sin_curso`, `est_pierden_actualizacion_con_curso`, `total_profesores_carga_horaria`, `total_horas_tutorias`, `profesores_tutoria_proyecto_investigacion`, `profesores_tutoria_examen_complexivo`, `est_matriculados_actualizacion_aprobacion`, `est_aprobaron_curso_actualizacion`, `est_reprobaron_curso_actualizacion`) VALUES
(2, '2024-1S', 'Facultad de Ciencias de la Educación, Humanas y Tecnologías', 'Ciencias Exactas', 2, 1, 4, 12, 39, 12, 0, 4, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulacion_datos`
--

CREATE TABLE `titulacion_datos` (
  `id` int(11) NOT NULL,
  `facultad` varchar(255) NOT NULL,
  `carrera` varchar(255) NOT NULL,
  `periodo_academico` varchar(50) NOT NULL,
  `indicador` varchar(255) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `titulacion_datos`
--

INSERT INTO `titulacion_datos` (`id`, `facultad`, `carrera`, `periodo_academico`, `indicador`, `valor`, `fecha_registro`) VALUES
(1, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes matriculados  en Titulación', 85.00, '2025-05-16 04:15:05'),
(2, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 30.00, '2025-05-16 04:15:05'),
(3, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 25.00, '2025-05-16 04:15:05'),
(4, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 10.00, '2025-05-16 04:15:05'),
(5, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 1.00, '2025-05-16 04:15:05'),
(6, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 3.00, '2025-05-16 04:15:05'),
(7, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 1.00, '2025-05-16 04:15:05'),
(8, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 31.00, '2025-05-16 04:15:05'),
(9, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 18.00, '2025-05-16 04:15:05'),
(10, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 2.00, '2025-05-16 04:15:05'),
(11, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 1.00, '2025-05-16 04:15:05'),
(12, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 2.00, '2025-05-16 04:15:05'),
(13, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0.00, '2025-05-16 04:15:05'),
(14, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 6.00, '2025-05-16 04:15:05'),
(15, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 2.00, '2025-05-16 04:15:05'),
(16, 'Ciencias de la Salud', 'Medicina (R)', '1S', 'N° Estudiantes matriculados  en Titulación', 85.00, '2025-05-16 16:15:55'),
(17, 'Ciencias de la Salud', 'Medicina (R)', '1S', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 30.00, '2025-05-16 16:15:55'),
(18, 'Ciencias de la Salud', 'Medicina (R)', '1S', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 25.00, '2025-05-16 16:15:55'),
(19, 'Ciencias de la Salud', 'Medicina (R)', '1S', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 10.00, '2025-05-16 16:15:55'),
(20, 'Ciencias de la Salud', 'Medicina (R)', '1S', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 1.00, '2025-05-16 16:15:55'),
(21, 'Ciencias de la Salud', 'Medicina (R)', '1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 3.00, '2025-05-16 16:15:55'),
(22, 'Ciencias de la Salud', 'Medicina (R)', '1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 1.00, '2025-05-16 16:15:55'),
(23, 'Ciencias de la Salud', 'Medicina (R)', '1S', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 31.00, '2025-05-16 16:15:55'),
(24, 'Ciencias de la Salud', 'Medicina (R)', '1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 18.00, '2025-05-16 16:15:55'),
(25, 'Ciencias de la Salud', 'Medicina (R)', '1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 2.00, '2025-05-16 16:15:55'),
(26, 'Ciencias de la Salud', 'Medicina (R)', '1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 1.00, '2025-05-16 16:15:55'),
(27, 'Ciencias de la Salud', 'Medicina (R)', '1S', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 2.00, '2025-05-16 16:15:55'),
(28, 'Ciencias de la Salud', 'Medicina (R)', '1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0.00, '2025-05-16 16:15:55'),
(29, 'Ciencias de la Salud', 'Medicina (R)', '1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 6.00, '2025-05-16 16:15:55'),
(30, 'Ciencias de la Salud', 'Medicina (R)', '1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 2.00, '2025-05-16 16:15:55'),
(46, 'Ingeniería', 'Ingeniería Agroindustrial', '2023 - 1S', 'N° Estudiantes matriculados  en Titulación', 10.00, '2025-05-16 16:28:38'),
(47, 'Ingeniería', 'Ingeniería Agroindustrial', '2023 - 1S', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 0.00, '2025-05-16 16:28:38'),
(48, 'Ingeniería', 'Ingeniería Agroindustrial', '2023 - 1S', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 0.00, '2025-05-16 16:28:38'),
(49, 'Ingeniería', 'Ingeniería Agroindustrial', '2023 - 1S', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 0.00, '2025-05-16 16:28:38'),
(50, 'Ingeniería', 'Ingeniería Agroindustrial', '2023 - 1S', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 0.00, '2025-05-16 16:28:38'),
(51, 'Ingeniería', 'Ingeniería Agroindustrial', '2023 - 1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 0.00, '2025-05-16 16:28:38'),
(52, 'Ingeniería', 'Ingeniería Agroindustrial', '2023 - 1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 0.00, '2025-05-16 16:28:38'),
(53, 'Ingeniería', 'Ingeniería Agroindustrial', '2023 - 1S', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 9.00, '2025-05-16 16:28:38'),
(54, 'Ingeniería', 'Ingeniería Agroindustrial', '2023 - 1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 2.00, '2025-05-16 16:28:38'),
(55, 'Ingeniería', 'Ingeniería Agroindustrial', '2023 - 1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 1.00, '2025-05-16 16:28:38'),
(56, 'Ingeniería', 'Ingeniería Agroindustrial', '2023 - 1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 1.00, '2025-05-16 16:28:38'),
(57, 'Ingeniería', 'Ingeniería Agroindustrial', '2023 - 1S', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 0.00, '2025-05-16 16:28:38'),
(58, 'Ingeniería', 'Ingeniería Agroindustrial', '2023 - 1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0.00, '2025-05-16 16:28:38'),
(59, 'Ingeniería', 'Ingeniería Agroindustrial', '2023 - 1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0.00, '2025-05-16 16:28:38'),
(60, 'Ingeniería', 'Ingeniería Agroindustrial', '2023 - 1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0.00, '2025-05-16 16:28:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulacion_modalidad`
--

CREATE TABLE `titulacion_modalidad` (
  `id` int(11) NOT NULL,
  `facultad` varchar(255) DEFAULT NULL,
  `carrera` varchar(255) DEFAULT NULL,
  `periodo_academico` varchar(10) DEFAULT NULL,
  `indicador` varchar(255) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `titulacion_modalidad`
--

INSERT INTO `titulacion_modalidad` (`id`, `facultad`, `carrera`, `periodo_academico`, `indicador`, `valor`, `fecha_registro`) VALUES
(1, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes matriculados / Proyecto de Investigación', 72, '2025-05-16 04:15:50'),
(2, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Titulados / Proyecto de Investigación', 72, '2025-05-16 04:15:50'),
(3, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico', 12, '2025-05-16 04:15:50'),
(4, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Titulados / Examen complexivo Teórico', 12, '2025-05-16 04:15:50'),
(5, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico- Práctico', 0, '2025-05-16 04:15:50'),
(6, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes Titulados / Examen complexivo Teórico Práctico', 0, '2025-05-16 04:15:50'),
(7, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes que solicitan segunda ocasión consecutiva gratuita', 5, '2025-05-16 04:15:50'),
(8, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita', 9, '2025-05-16 04:15:50'),
(9, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes que solicitan tercera ocasión No gratuita', 13, '2025-05-16 04:15:50'),
(10, 'Ciencias de la Educación, Humanas y Tecnologías', 'Medicina (R)', '1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita (Actualización de Conocimientos)', 2, '2025-05-16 04:15:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulados_modalidad`
--

CREATE TABLE `titulados_modalidad` (
  `id` int(11) NOT NULL,
  `periodo` varchar(20) NOT NULL,
  `fac` varchar(255) NOT NULL,
  `carr` varchar(255) DEFAULT NULL,
  `est_mat_pi` float DEFAULT NULL,
  `est_tit_pi` float DEFAULT NULL,
  `est_mat_ect` float DEFAULT NULL,
  `est_tit_ect` float DEFAULT NULL,
  `est_mat_ectp` float DEFAULT NULL,
  `est_tit_ectp` float DEFAULT NULL,
  `est_prim_pror` float DEFAULT NULL,
  `est_seg_pror` float DEFAULT NULL,
  `est_seg_pror_acs` float DEFAULT NULL,
  `est_seg_pror_acc` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `titulados_modalidad`
--

INSERT INTO `titulados_modalidad` (`id`, `periodo`, `fac`, `carr`, `est_mat_pi`, `est_tit_pi`, `est_mat_ect`, `est_tit_ect`, `est_mat_ectp`, `est_tit_ectp`, `est_prim_pror`, `est_seg_pror`, `est_seg_pror_acs`, `est_seg_pror_acc`) VALUES
(1, '2024-1S', 'Facultad de Ciencias de la Educación, Humanas y Tecnologías', 'Ciencias Exactas', 72, 72, 12, 12, 0, 0, 5, 9, 13, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '482c811da5d5b4bc6d497ffa98491e38', 'user'),
(3, 'admin', '$2y$10$...', 'admin'),
(4, 'adminuser', '$2y$10$DsWr2LhOkEOyY45S84iV.OuCqfoUX/dSLjgRNn4pFqoM1AQlIY4Da', 'admin'),
(5, 'carlos', '$2y$10$mSQ4zXSR5hkpbxT.NWH6e.BcBDWk.N5EIvmaCdV5FuNgCUli6uXZC', 'user'),
(7, 'andrea', '$2y$10$i0mPARpIOuZS0vCX4CedUewjekiaxAmPYky53cjrfUgR2Hi23XRaO', 'user'),
(16, 'carloss', '$2y$10$rLEZ7okMcWGw2kz/h/l9we0P1ufnbtCrLLTrPz9hS9Xr9Qb.pz.CW', 'user'),
(18, 'angie', '$2y$10$CEcd8deqTHFO4bT6Ppkvs.wFOAu5CaUHN0LVt1wfhmhgLaZAp534S', 'user'),
(19, 'carlos2', '$2y$10$rjMR.FcagHbcOipoDIFgQe.W20XKDhKmXqnqwpZdwZ3Iv2XS8qMhm', 'user'),
(20, 'leidy', '$2y$10$e9Wep43zYdS3WifxIa.2Zure98QS65.jx/2vIPlbWc9FeZitIeoNO', 'user'),
(21, 'daya', '$2y$10$6RTFMW24HRATeX4aVCoL8OzDBcGZoqCW8GQwP51rhq.00jVdMve8C', 'cliente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reprobacion`
--
ALTER TABLE `reprobacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reprobacion_definitiva`
--
ALTER TABLE `reprobacion_definitiva`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `titulacion_datos`
--
ALTER TABLE `titulacion_datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `titulacion_modalidad`
--
ALTER TABLE `titulacion_modalidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `titulados_modalidad`
--
ALTER TABLE `titulados_modalidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `reprobacion`
--
ALTER TABLE `reprobacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT de la tabla `reprobacion_definitiva`
--
ALTER TABLE `reprobacion_definitiva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `titulacion_datos`
--
ALTER TABLE `titulacion_datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `titulacion_modalidad`
--
ALTER TABLE `titulacion_modalidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `titulados_modalidad`
--
ALTER TABLE `titulados_modalidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
