-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 31, 2016 at 02:49 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PROTECOFood`
--

-- --------------------------------------------------------

--
-- Table structure for table `Cliente`
--

CREATE TABLE `Cliente` (
  `id_cliente` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Cliente`
--

INSERT INTO `Cliente` (`id_cliente`, `username`, `password`) VALUES
(1, 'user', 'mipass'),
(2, 'user2', 'superpass'),
(3, 'miuser', 'ayuda'),
(4, 'usuario', '123'),
(5, 'usuario1', 'mipass');

-- --------------------------------------------------------

--
-- Table structure for table `Empleado`
--

CREATE TABLE `Empleado` (
  `id_empleado` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `puesto` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Empleado`
--

INSERT INTO `Empleado` (`id_empleado`, `username`, `password`, `nombre`, `puesto`) VALUES
(1, 'mesero1', 'mipass', 'Juan Perez', 'MESERO'),
(2, 'mesero2', 'superpass', 'Jose Lopez', 'MESERO'),
(3, 'mesero3', 'password', 'Pedro Perez', 'MESERO'),
(4, 'gerente1', 'admin', 'Rafael Dominguez', 'GERENTE'),
(5, 'mesero3000', 'pass', ')Luis GarcÃ­a', 'MESERO');

-- --------------------------------------------------------

--
-- Table structure for table `HistorialPedidos`
--

CREATE TABLE `HistorialPedidos` (
  `id_historialpedidos` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HistorialPedidos`
--

INSERT INTO `HistorialPedidos` (`id_historialpedidos`, `id_cliente`, `id_pedido`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Pedido`
--

CREATE TABLE `Pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_cliente` varchar(16) NOT NULL,
  `hora_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` varchar(10) NOT NULL,
  `id_platillo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Pedido`
--

INSERT INTO `Pedido` (`id_pedido`, `id_cliente`, `hora_fecha`, `estado`, `id_platillo`) VALUES
(1, '2', '2016-10-29 10:00:47', 'SERVIDO', 0),
(2, 'user', '2016-10-29 10:50:11', 'PENDIENTE', 2),
(3, 'user', '2016-10-29 10:50:33', 'PENDIENTE', 2),
(4, 'user', '2016-10-29 12:24:54', 'PENDIENTE', 4),
(5, 'user', '2016-10-29 15:08:32', 'SERVIDO', 1),
(6, 'user', '2016-10-29 15:06:40', 'PENDIENTE', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Platillo`
--

CREATE TABLE `Platillo` (
  `id_platillo` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` double NOT NULL,
  `oferta` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Platillo`
--

INSERT INTO `Platillo` (`id_platillo`, `nombre`, `descripcion`, `precio`, `oferta`) VALUES
(1, 'Chilaquiles verdes', 'Con pollo, crema, queso y cebolla', 25, 0),
(2, 'Enchiladas rojas', 'Con pollo, crema, queso y cebolla', 30, 0),
(3, 'Tacos dorados', 'De pollo o papa o, con crema y queso', 27, 0),
(4, 'Pozole', 'Blanco o rojo, con carne de pollo o res', 30, 0),
(5, 'Carne asasa', 'Arrachera', 120, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reservacion`
--

CREATE TABLE `reservacion` (
  `id_reservacion` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `mesa` int(11) NOT NULL,
  `hora` time NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservacion`
--

INSERT INTO `reservacion` (`id_reservacion`, `id_cliente`, `mesa`, `hora`, `fecha`) VALUES
(1, 1, 4, '13:00:00', '2016-10-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cliente`
--
ALTER TABLE `Cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `Empleado`
--
ALTER TABLE `Empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `HistorialPedidos`
--
ALTER TABLE `HistorialPedidos`
  ADD PRIMARY KEY (`id_historialpedidos`);

--
-- Indexes for table `Pedido`
--
ALTER TABLE `Pedido`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Indexes for table `Platillo`
--
ALTER TABLE `Platillo`
  ADD PRIMARY KEY (`id_platillo`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indexes for table `reservacion`
--
ALTER TABLE `reservacion`
  ADD PRIMARY KEY (`id_reservacion`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Cliente`
--
ALTER TABLE `Cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Empleado`
--
ALTER TABLE `Empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `HistorialPedidos`
--
ALTER TABLE `HistorialPedidos`
  MODIFY `id_historialpedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Pedido`
--
ALTER TABLE `Pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Platillo`
--
ALTER TABLE `Platillo`
  MODIFY `id_platillo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `reservacion`
--
ALTER TABLE `reservacion`
  MODIFY `id_reservacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
