-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2025 a las 06:31:57
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
CREATE TABLE asistencias (
  Alumno varchar(80) NOT NULL,
  Matricula bigint NOT NULL,
  Grupo int,
  Fecha y Hora timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO asistencias ('Alumno', 'Matricula', 'grupo') VALUES
('Abrego Najera Zita Yalia', 2326104532, 502),
('Aguilar Fernández Axel Raymundo', 2326100787, 502),
('Aguilar Martinez Montserrat', 2326102346, 502),
('Anzures Ton Kimberly', 2326102775, 502),
('Betancourt Benitez Miguel Angel', 2326100126, 502),
('Carrasco Gomez Erick Santiago', 2326104664, 502),
('Cordova Gonzalez Oscar Rubiel', 2326104466, 502),
('Criollo Quiroz Karla', 2326103963, 502),
('Dolores Esteban Alexis Uriel', 2326100571, 502),
('Elizalde Rodirguez Karla Ivonne', 2326101769, 502),
('Encarnacion Mendieta Jazmin', 2326100944, 502),
('Esteban Martinez Leonel', 2326102262, 502),
('Garcia Hernandez Ana Rocio', 2326102213, 502),
('Garcia Ortega Daniel', 2326102486, 502),
('Gutierrez Montero Gabriel', 2326105313, 502),
('Hernandez Diaz Angel Alexis', 2326104623, 502),
('Hernandez Hernandez Angel Ilhuikatl', 2326105042, 502),
('Isasmendi Orea Jennifer Mayte', 2326101678, 502),
('Mendoza Morales Kareem', 2326100540, 502),
('Merino Garcia Christopher Felipe', 2326100720, 502),
('Ochoa Rodriguez Abdiel', 2326101413, 502),
('Ortiz Ramirez Chelsea Nicole', 2326104870, 502),
('Ortuño Flores Evelyn Vanessa', 2326101991, 502),
('Palacios Aguilar Jazmin', 2326105083, 502),
('Pereyra Figueroa Abril Constanza', 2326101405, 502),
('Pérez Alvarez Juan Pablo', 2326107982, 502),
('Pérez Cortes Alberto Ismael', 2326102130, 502),
('Pérez Morales Noaj Aarón', 2326101454, 502),
('Ponce Francisco Alexander Tonatihu', 2326102858, 502),
('Ramirez Luis Erick Orlando', 2326104805, 502),
('Rodriguez Ramos Esteban Guadalupe', 2326100712, 502),
('Rojas Bello Saul', 2326100977, 502),
('Rojas Chapa Leonardo', 2326104177, 502),
('Rojas Huerta Vanesa', 2326100860, 502),
('Rosete Lopez Logan', 2326100621, 502),
('Ruiz Aguilar Vaniha', 2326100142, 502),
('Ruiz Ramirez Gael Eliuh', 2326102189, 502),
('Salazar Roblero Sofia', 2326101785, 502),
('Sanchez Esesarte Regina Sinsuni', 2326105018, 502),
('Segura Ruela Jonathan', 2326101389, 502),
('Teopila Samiento Yaretzi', 2326101397, 502),
('Xoxotla Luna Emmanuel', 2326100985, 502),
('Zarate Zepeda Valentin Erick', 2326100779, 502);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
