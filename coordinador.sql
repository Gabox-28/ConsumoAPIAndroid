-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2023 at 08:33 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myuca`
--

-- --------------------------------------------------------

--
-- Table structure for table `coordinador`
--

CREATE TABLE `coordinador` (
  `idC` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `fechaNac` date NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `facultad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coordinador`
--

INSERT INTO `coordinador` (`idC`, `nombres`, `apellidos`, `fechaNac`, `titulo`, `email`, `facultad`) VALUES
(1, 'Bryan Jose', 'Vivas Perez', '1974-03-01', 'Ing', 'bryan@gmail.com', 'Ingenieria'),
(3, 'Augusto Martin', 'Avendano Lopez', '1975-07-12', 'Lic', 'augusto@gmail.com', 'Marketing'),
(4, 'Augusto Martinez', 'Avendano Lopezdasdasd', '1975-07-12', 'Lic', 'auguasddasdsto@gmail.com', 'Marketing'),
(5, 'Ana Maria', 'Gomez Perez', '1992-05-15', 'Master en Ciencias d', 'ana.gomez@example.com', 'Ingenieria'),
(6, 'Juan Carlos', 'Martinez Rodriguez', '1985-08-20', 'Master en Ciencias d', 'juan.martinez@example.com', 'Ingenieria'),
(7, 'Sofia Isabel', 'Lopez Garcia', '1994-03-12', 'Master en Ciencias d', 'sofia.lopez@example.com', 'Ingenieria'),
(8, 'Diego Fernando', 'Garcia Hernandez', '1988-11-08', 'Master en Ciencias d', 'diego.garcia@example.com', 'Ingenieria'),
(9, 'Laura Isabel', 'Hernandez Ruiz', '1991-06-27', 'Master en Ciencias d', 'laura.hernandez@example.com', 'Ciencias Naturales'),
(10, 'Pedro Antonio', 'Sanchez Gonzalez', '1984-09-18', 'Licenciado en Admini', 'pedro.sanchez@example.com', 'Ciencias Naturales'),
(11, 'Maria Fernanda', 'Martinez Perez', '1995-02-07', 'Doctor en Filosofia', 'maria.martinez@example.com', 'Ciencias Naturales'),
(12, 'Juan Jose', 'Perez Garcia', '1990-05-22', 'Ingeniero Mecanico', 'juan.perez@example.com', 'Ingenieria'),
(13, 'Lucia Maria', 'Gonzalez Ramirez', '1993-08-12', 'Licenciada en Psicol', 'lucia.gonzalez@example.com', 'Ingenieria'),
(14, 'Jorge Luis', 'Gomez Hernandez', '1987-12-03', 'Master en Ciencias d', 'jorge.gomez@example.com', 'Ciencias Naturales'),
(15, 'Carla Sofia', 'Rodriguez Martinez', '1997-04-17', 'Licenciada en Derech', 'carla.rodriguez@example.com', 'Ciencias Naturales'),
(16, 'Roberto Antonio', 'Perez Gomez', '1990-11-27', 'Master en Ciencias d', 'roberto.perez@example.com', 'Ingenieria'),
(17, 'Ana Paula', 'Gonzalez Rodriguez', '1989-06-11', 'Doctor en Ciencias S', 'ana.gonzalez@example.com', 'Ciencias Naturales'),
(18, 'Miguel Angel', 'Hernandez Garcia', '1994-09-05', 'Licenciado en Arquit', 'miguel.hernandez@example.com', 'Ingenieria'),
(19, 'Luisa Fernanda', 'Martinez Sanchez', '1992-02-25', 'Master en Ciencias d', 'luisa.martinez@example.com', 'Ciencias Naturales'),
(20, 'Ana Maria', 'Gomez Perez', '1992-05-15', 'Master en Ciencias de la Computacion', 'ana.gomez@example.com', 'Ingenieria'),
(21, 'Juan Carlos', 'Martinez Rodriguez', '1985-08-20', 'Master en Ciencias de la Computacion', 'juan.martinez@example.com', 'Ingenieria'),
(22, 'Sofia Isabel', 'Lopez Garcia', '1994-03-12', 'Master en Ciencias de la Computacion', 'sofia.lopez@example.com', 'Ingenieria'),
(23, 'Diego Fernando', 'Garcia Hernandez', '1988-11-08', 'Master en Ciencias de la Computacion', 'diego.garcia@example.com', 'Ingenieria'),
(24, 'Laura Isabel', 'Hernandez Ruiz', '1991-06-27', 'Master en Ciencias de la Computacion', 'laura.hernandez@example.com', 'Ciencias Naturales'),
(25, 'Pedro Antonio', 'Sanchez Gonzalez', '1984-09-18', 'Licenciado en Administracion', 'pedro.sanchez@example.com', 'Ciencias Naturales'),
(26, 'Maria Fernanda', 'Martinez Perez', '1995-02-07', 'Doctor en Filosofia', 'maria.martinez@example.com', 'Ciencias Naturales'),
(27, 'Juan Jose', 'Perez Garcia', '1990-05-22', 'Ingeniero Mecanico', 'juan.perez@example.com', 'Ingenieria'),
(28, 'Lucia Maria', 'Gonzalez Ramirez', '1993-08-12', 'Licenciada en Psicologia', 'lucia.gonzalez@example.com', 'Ingenieria'),
(29, 'Jorge Luis', 'Gomez Hernandez', '1987-12-03', 'Master en Ciencias de la Computacion', 'jorge.gomez@example.com', 'Ciencias Naturales'),
(30, 'Carla Sofia', 'Rodriguez Martinez', '1997-04-17', 'Licenciada en Derecho', 'carla.rodriguez@example.com', 'Ciencias Naturales'),
(31, 'Roberto Antonio', 'Perez Gomez', '1990-11-27', 'Master en Ciencias de la Educacion', 'roberto.perez@example.com', 'Ingenieria'),
(32, 'Ana Paula', 'Gonzalez Rodriguez', '1989-06-11', 'Doctor en Ciencias Sociales', 'ana.gonzalez@example.com', 'Ciencias Naturales'),
(33, 'Miguel Angel', 'Hernandez Garcia', '1994-09-05', 'Licenciado en Arquitectura', 'miguel.hernandez@example.com', 'Ingenieria'),
(34, 'Luisa Fernanda', 'Martinez Sanchez', '1992-02-25', 'Master en Ciencias de la Computacion', 'luisa.martinez@example.com', 'Ciencias Naturales');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coordinador`
--
ALTER TABLE `coordinador`
  ADD PRIMARY KEY (`idC`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coordinador`
--
ALTER TABLE `coordinador`
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
