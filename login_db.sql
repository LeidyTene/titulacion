-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-04-2026 a las 04:14:46
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
(1, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes matriculados en Titulación', 46, '2026-04-09 02:08:42'),
(2, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 24, '2026-04-09 02:08:42'),
(3, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 7, '2026-04-09 02:08:42'),
(4, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 14, '2026-04-09 02:08:42'),
(5, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 4, '2026-04-09 02:08:42'),
(6, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 2, '2026-04-09 02:08:42'),
(7, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 2, '2026-04-09 02:08:42'),
(8, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 5, '2026-04-09 02:08:42'),
(9, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 5, '2026-04-09 02:08:42'),
(10, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 1, '2026-04-09 02:08:42'),
(11, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 1, '2026-04-09 02:08:42'),
(12, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:08:42'),
(13, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:08:42'),
(14, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:08:42'),
(15, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:08:42'),
(16, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes matriculados / Proyecto de Investigación', 42, '2026-04-09 02:08:42'),
(17, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Titulados / Proyecto de Investigación', 15, '2026-04-09 02:08:42'),
(18, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico', 0, '2026-04-09 02:08:42'),
(19, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico', 0, '2026-04-09 02:08:42'),
(20, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico- Práctico', 4, '2026-04-09 02:08:42'),
(21, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico Práctico', 4, '2026-04-09 02:08:42'),
(22, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes que solicitan segunda ocasión consecutiva gratuita', 17, '2026-04-09 02:08:42'),
(23, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita', 10, '2026-04-09 02:08:42'),
(24, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión No gratuita', 0, '2026-04-09 02:08:42'),
(25, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:08:42'),
(26, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes que pierden titulación prorroga', 0, '2026-04-09 02:08:42'),
(27, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion sin curso', 0, '2026-04-09 02:08:42'),
(28, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion con curso', 0, '2026-04-09 02:08:42'),
(29, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Total de Profesores con asignación de carga horaria para tutoría de las opciones de Titulación', 12, '2026-04-09 02:08:42'),
(30, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Total de horas asignadas según carga horaria para tutorías de Titulación', 48, '2026-04-09 02:08:42'),
(31, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Profesores con asignación de carga horaria para tutoría de Proyecto de Investigación', 12, '2026-04-09 02:08:42'),
(32, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° de Profesores con asignación de carga horaria para tutoría de Examen complexivo teórico-práctico', 4, '2026-04-09 02:08:42'),
(33, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes Matriculados en el Curso de Actualización de Conocimientos con Aprobación', 0, '2026-04-09 02:08:42'),
(34, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes que Aprobaron el Curso de Actualización de Conocimientos', 0, '2026-04-09 02:08:42'),
(35, 'Ingeniería', 'Ingeniería Industrial (R-A)', '2025-1S', 'N° Estudiantes que Reprobaron el Curso de Actualización de Conocimientos', 0, '2026-04-09 02:08:42'),
(36, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes matriculados en Titulación', 73, '2026-04-09 02:09:00'),
(37, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 34, '2026-04-09 02:09:00'),
(38, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 7, '2026-04-09 02:09:00'),
(39, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 18, '2026-04-09 02:09:00'),
(40, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 18, '2026-04-09 02:09:00'),
(41, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 1, '2026-04-09 02:09:00'),
(42, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 1, '2026-04-09 02:09:00'),
(43, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 19, '2026-04-09 02:09:00'),
(44, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 18, '2026-04-09 02:09:00'),
(45, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 1, '2026-04-09 02:09:00'),
(46, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 1, '2026-04-09 02:09:00'),
(47, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:00'),
(48, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:00'),
(49, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:00'),
(50, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:00'),
(51, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes matriculados / Proyecto de Investigación', 73, '2026-04-09 02:09:00'),
(52, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Titulados / Proyecto de Investigación', 45, '2026-04-09 02:09:00'),
(53, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico', 0, '2026-04-09 02:09:00'),
(54, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico', 0, '2026-04-09 02:09:00'),
(55, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico- Práctico', 0, '2026-04-09 02:09:00'),
(56, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico Práctico', 0, '2026-04-09 02:09:00'),
(57, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes que solicitan segunda ocasión consecutiva gratuita', 27, '2026-04-09 02:09:00'),
(58, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita', 0, '2026-04-09 02:09:00'),
(59, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión No gratuita', 1, '2026-04-09 02:09:00'),
(60, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:00'),
(61, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes que pierden titulación prorroga', 0, '2026-04-09 02:09:00'),
(62, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion sin curso', 0, '2026-04-09 02:09:00'),
(63, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion con curso', 0, '2026-04-09 02:09:00'),
(64, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Total de Profesores con asignación de carga horaria para tutoría de las opciones de Titulación', 19, '2026-04-09 02:09:00'),
(65, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Total de horas asignadas según carga horaria para tutorías de Titulación', 62, '2026-04-09 02:09:00'),
(66, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Profesores con asignación de carga horaria para tutoría de Proyecto de Investigación', 19, '2026-04-09 02:09:00'),
(67, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° de Profesores con asignación de carga horaria para tutoría de Examen complexivo teórico-práctico', 0, '2026-04-09 02:09:00'),
(68, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes Matriculados en el Curso de Actualización de Conocimientos con Aprobación', 0, '2026-04-09 02:09:00'),
(69, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes que Aprobaron el Curso de Actualización de Conocimientos', 0, '2026-04-09 02:09:00'),
(70, 'Ingeniería', 'Ingeniería Civil (R-A)', '2025-1S', 'N° Estudiantes que Reprobaron el Curso de Actualización de Conocimientos', 0, '2026-04-09 02:09:00'),
(71, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes matriculados en Titulación', 109, '2026-04-09 02:09:16'),
(72, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 59, '2026-04-09 02:09:16'),
(73, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 2, '2026-04-09 02:09:16'),
(74, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 0, '2026-04-09 02:09:16'),
(75, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 0, '2026-04-09 02:09:16'),
(76, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 27, '2026-04-09 02:09:16'),
(77, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 23, '2026-04-09 02:09:16'),
(78, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 23, '2026-04-09 02:09:16'),
(79, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 10, '2026-04-09 02:09:16'),
(80, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 0, '2026-04-09 02:09:16'),
(81, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 0, '2026-04-09 02:09:16'),
(82, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:16'),
(83, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:16'),
(84, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:16'),
(85, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:16'),
(86, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes matriculados / Proyecto de Investigación', 109, '2026-04-09 02:09:16'),
(87, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Titulados / Proyecto de Investigación', 35, '2026-04-09 02:09:16'),
(88, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico', 0, '2026-04-09 02:09:16'),
(89, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico', 0, '2026-04-09 02:09:16'),
(90, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico- Práctico', 0, '2026-04-09 02:09:16'),
(91, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico Práctico', 0, '2026-04-09 02:09:16'),
(92, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes que solicitan segunda ocasión consecutiva gratuita', 57, '2026-04-09 02:09:16'),
(93, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita', 0, '2026-04-09 02:09:16'),
(94, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión No gratuita', 13, '2026-04-09 02:09:16'),
(95, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:16'),
(96, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes que pierden titulación prorroga', 4, '2026-04-09 02:09:16'),
(97, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion sin curso', 0, '2026-04-09 02:09:16'),
(98, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion con curso', 0, '2026-04-09 02:09:16'),
(99, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Total de Profesores con asignación de carga horaria para tutoría de las opciones de Titulación', 25, '2026-04-09 02:09:16'),
(100, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Total de horas asignadas según carga horaria para tutorías de Titulación', 48, '2026-04-09 02:09:16'),
(101, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Profesores con asignación de carga horaria para tutoría de Proyecto de Investigación', 25, '2026-04-09 02:09:16'),
(102, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° de Profesores con asignación de carga horaria para tutoría de Examen complexivo teórico-práctico', 0, '2026-04-09 02:09:16'),
(103, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes Matriculados en el Curso de Actualización de Conocimientos con Aprobación', 0, '2026-04-09 02:09:16'),
(104, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes que Aprobaron el Curso de Actualización de Conocimientos', 0, '2026-04-09 02:09:16'),
(105, 'Ingeniería', 'Arquitectura (R-A)', '2025-1S', 'N° Estudiantes que Reprobaron el Curso de Actualización de Conocimientos', 0, '2026-04-09 02:09:16'),
(106, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes matriculados en Titulación', 48, '2026-04-09 02:09:24'),
(107, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 27, '2026-04-09 02:09:24'),
(108, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 12, '2026-04-09 02:09:24'),
(109, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 20, '2026-04-09 02:09:24'),
(110, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 19, '2026-04-09 02:09:24'),
(111, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 1, '2026-04-09 02:09:24'),
(112, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 1, '2026-04-09 02:09:24'),
(113, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 0, '2026-04-09 02:09:24'),
(114, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 0, '2026-04-09 02:09:24'),
(115, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 0, '2026-04-09 02:09:24'),
(116, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 0, '2026-04-09 02:09:24'),
(117, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:24'),
(118, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:24'),
(119, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:24'),
(120, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:24'),
(121, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes matriculados / Proyecto de Investigación', 48, '2026-04-09 02:09:24'),
(122, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Titulados / Proyecto de Investigación', 32, '2026-04-09 02:09:24'),
(123, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico', 0, '2026-04-09 02:09:24'),
(124, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico', 0, '2026-04-09 02:09:24'),
(125, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico- Práctico', 0, '2026-04-09 02:09:24'),
(126, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico Práctico', 0, '2026-04-09 02:09:24'),
(127, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes que solicitan segunda ocasión consecutiva gratuita', 15, '2026-04-09 02:09:24'),
(128, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita', 1, '2026-04-09 02:09:24'),
(129, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión No gratuita', 0, '2026-04-09 02:09:24'),
(130, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:24'),
(131, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes que pierden titulación prorroga', 0, '2026-04-09 02:09:24'),
(132, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion sin curso', 0, '2026-04-09 02:09:24'),
(133, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion con curso', 0, '2026-04-09 02:09:24'),
(134, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Total de Profesores con asignación de carga horaria para tutoría de las opciones de Titulación', 15, '2026-04-09 02:09:24'),
(135, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Total de horas asignadas según carga horaria para tutorías de Titulación', 45, '2026-04-09 02:09:24'),
(136, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Profesores con asignación de carga horaria para tutoría de Proyecto de Investigación', 15, '2026-04-09 02:09:24'),
(137, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° de Profesores con asignación de carga horaria para tutoría de Examen complexivo teórico-práctico', 0, '2026-04-09 02:09:24'),
(138, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes Matriculados en el Curso de Actualización de Conocimientos con Aprobación', 0, '2026-04-09 02:09:24'),
(139, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes que Aprobaron el Curso de Actualización de Conocimientos', 0, '2026-04-09 02:09:24'),
(140, 'Ingeniería', 'Agroindustria (R-A)', '2025-1S', 'N° Estudiantes que Reprobaron el Curso de Actualización de Conocimientos', 0, '2026-04-09 02:09:24'),
(141, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes matriculados en Titulación', 37, '2026-04-09 02:09:31'),
(142, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 7, '2026-04-09 02:09:31'),
(143, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 4, '2026-04-09 02:09:31'),
(144, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 22, '2026-04-09 02:09:31'),
(145, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 9, '2026-04-09 02:09:31'),
(146, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 8, '2026-04-09 02:09:31'),
(147, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 7, '2026-04-09 02:09:31'),
(148, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 0, '2026-04-09 02:09:31'),
(149, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 0, '2026-04-09 02:09:31'),
(150, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 0, '2026-04-09 02:09:31'),
(151, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 0, '2026-04-09 02:09:31'),
(152, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:31'),
(153, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:31'),
(154, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:31'),
(155, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:31'),
(156, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes matriculados / Proyecto de Investigación', 37, '2026-04-09 02:09:31'),
(157, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados / Proyecto de Investigación', 20, '2026-04-09 02:09:31'),
(158, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico', 0, '2026-04-09 02:09:31'),
(159, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico', 0, '2026-04-09 02:09:31'),
(160, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico- Práctico', 0, '2026-04-09 02:09:31'),
(161, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico Práctico', 0, '2026-04-09 02:09:31'),
(162, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que solicitan segunda ocasión consecutiva gratuita', 3, '2026-04-09 02:09:31'),
(163, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita', 13, '2026-04-09 02:09:31'),
(164, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión No gratuita', 0, '2026-04-09 02:09:31'),
(165, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:31'),
(166, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que pierden titulación prorroga', 1, '2026-04-09 02:09:31'),
(167, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion sin curso', 0, '2026-04-09 02:09:31'),
(168, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion con curso', 0, '2026-04-09 02:09:31'),
(169, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Total de Profesores con asignación de carga horaria para tutoría de las opciones de Titulación', 12, '2026-04-09 02:09:31'),
(170, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Total de horas asignadas según carga horaria para tutorías de Titulación', 48, '2026-04-09 02:09:31'),
(171, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Profesores con asignación de carga horaria para tutoría de Proyecto de Investigación', 20, '2026-04-09 02:09:31'),
(172, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° de Profesores con asignación de carga horaria para tutoría de Examen complexivo teórico-práctico', 0, '2026-04-09 02:09:31'),
(173, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes Matriculados en el Curso de Actualización de Conocimientos con Aprobación', 0, '2026-04-09 02:09:31'),
(174, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que Aprobaron el Curso de Actualización de Conocimientos', 0, '2026-04-09 02:09:31'),
(175, 'Ingeniería', 'Ingeniería en Telecomunicaciones (R-A)', '2025-1S', 'N° Estudiantes que Reprobaron el Curso de Actualización de Conocimientos', 0, '2026-04-09 02:09:31'),
(176, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes matriculados en Titulación', 18, '2026-04-09 02:09:37'),
(177, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 5, '2026-04-09 02:09:37'),
(178, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 3, '2026-04-09 02:09:37'),
(179, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 10, '2026-04-09 02:09:37'),
(180, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 9, '2026-04-09 02:09:37'),
(181, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 3, '2026-04-09 02:09:37'),
(182, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 3, '2026-04-09 02:09:37'),
(183, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 0, '2026-04-09 02:09:37'),
(184, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 0, '2026-04-09 02:09:37'),
(185, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 0, '2026-04-09 02:09:37'),
(186, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 0, '2026-04-09 02:09:37'),
(187, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:37'),
(188, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:37'),
(189, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:37'),
(190, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:37'),
(191, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes matriculados / Proyecto de Investigación', 18, '2026-04-09 02:09:37'),
(192, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados / Proyecto de Investigación', 15, '2026-04-09 02:09:37'),
(193, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico', 0, '2026-04-09 02:09:37'),
(194, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico', 0, '2026-04-09 02:09:37'),
(195, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico- Práctico', 0, '2026-04-09 02:09:37'),
(196, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico Práctico', 0, '2026-04-09 02:09:37'),
(197, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que solicitan segunda ocasión consecutiva gratuita', 2, '2026-04-09 02:09:37'),
(198, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita', 1, '2026-04-09 02:09:37'),
(199, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión No gratuita', 0, '2026-04-09 02:09:37'),
(200, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:09:37'),
(201, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que pierden titulación prorroga', 0, '2026-04-09 02:09:37'),
(202, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion sin curso', 0, '2026-04-09 02:09:37'),
(203, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion con curso', 0, '2026-04-09 02:09:37'),
(204, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Total de Profesores con asignación de carga horaria para tutoría de las opciones de Titulación', 11, '2026-04-09 02:09:37'),
(205, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Total de horas asignadas según carga horaria para tutorías de Titulación', 29, '2026-04-09 02:09:37'),
(206, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Profesores con asignación de carga horaria para tutoría de Proyecto de Investigación', 11, '2026-04-09 02:09:37'),
(207, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° de Profesores con asignación de carga horaria para tutoría de Examen complexivo teórico-práctico', 0, '2026-04-09 02:09:37'),
(208, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes Matriculados en el Curso de Actualización de Conocimientos con Aprobación', 0, '2026-04-09 02:09:37'),
(209, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que Aprobaron el Curso de Actualización de Conocimientos', 0, '2026-04-09 02:09:37'),
(210, 'Ingeniería', 'Ingeniería Ambiental (R-A)', '2025-1S', 'N° Estudiantes que Reprobaron el Curso de Actualización de Conocimientos', 0, '2026-04-09 02:09:37'),
(281, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes matriculados en Titulación', 15, '2026-04-09 02:13:34'),
(282, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes / Ultimo Nivel Primera Ocasión', 12, '2026-04-09 02:13:34'),
(283, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados / Ultimo Nivel Primera Ocasión', 11, '2026-04-09 02:13:34'),
(284, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión Consecutiva Gratuita', 0, '2026-04-09 02:13:34'),
(285, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión Consecutiva Gratuita', 0, '2026-04-09 02:13:34'),
(286, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuito', 0, '2026-04-09 02:13:34'),
(287, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuito', 0, '2026-04-09 02:13:34'),
(288, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecutiva No Gratuita', 2, '2026-04-09 02:13:34'),
(289, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita', 2, '2026-04-09 02:13:34'),
(290, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita', 1, '2026-04-09 02:13:34'),
(291, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita', 1, '2026-04-09 02:13:34'),
(292, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Segunda Ocasión No Consecitiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:13:34'),
(293, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados Segunda Ocasión No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:13:34'),
(294, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:13:34'),
(295, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados Tercera Ocasión Consecutiva No Gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:13:34'),
(296, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes matriculados / Proyecto de Investigación', 15, '2026-04-09 02:13:34'),
(297, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados / Proyecto de Investigación', 14, '2026-04-09 02:13:34'),
(298, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico', 0, '2026-04-09 02:13:34'),
(299, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico', 0, '2026-04-09 02:13:34'),
(300, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes matriculados / Examen Complexivo Teórico- Práctico', 0, '2026-04-09 02:13:34'),
(301, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Titulados / Examen complexivo Teórico Práctico', 0, '2026-04-09 02:13:34'),
(302, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que solicitan segunda ocasión consecutiva gratuita', 1, '2026-04-09 02:13:34'),
(303, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita', 0, '2026-04-09 02:13:34'),
(304, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión No gratuita', 0, '2026-04-09 02:13:34'),
(305, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que solicitan tercera ocasión consecutiva no gratuita (Actualización de Conocimientos)', 0, '2026-04-09 02:13:34'),
(306, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que pierden titulación prorroga', 0, '2026-04-09 02:13:34'),
(307, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion sin curso', 0, '2026-04-09 02:13:34'),
(308, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que pierden actualizacion con curso', 0, '2026-04-09 02:13:34'),
(309, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Total de Profesores con asignación de carga horaria para tutoría de las opciones de Titulación', 10, '2026-04-09 02:13:34'),
(310, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Total de horas asignadas según carga horaria para tutorías de Titulación', 21, '2026-04-09 02:13:34'),
(311, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Profesores con asignación de carga horaria para tutoría de Proyecto de Investigación', 10, '2026-04-09 02:13:34'),
(312, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° de Profesores con asignación de carga horaria para tutoría de Examen complexivo teórico-práctico', 0, '2026-04-09 02:13:34'),
(313, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes Matriculados en el Curso de Actualización de Conocimientos con Aprobación', 0, '2026-04-09 02:13:34'),
(314, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que Aprobaron el Curso de Actualización de Conocimientos', 0, '2026-04-09 02:13:34'),
(315, 'Ingeniería', 'Ingeniería en Tecnologías de la Información (R-A)', '2025-1S', 'N° Estudiantes que Reprobaron el Curso de Actualización de Conocimientos', 0, '2026-04-09 02:13:34');

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
(4, 'adminuser', '$2y$10$DsWr2LhOkEOyY45S84iV.OuCqfoUX/dSLjgRNn4pFqoM1AQlIY4Da', 'admin'),
(22, 'usuario', '$2y$10$7nTYc4oJ8aci4jd9/m8M6O4PAAP3vPgUJyemJZMM./KADkPU5jfHS', 'user'),
(23, 'cliente', '$2y$10$gWcr8avhkdD5vVkeXLfToOMrkysGffqHbLfOreKEj6FrvxPQWND8u', 'cliente');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
