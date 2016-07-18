-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2016 at 10:32 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bibliodb_russo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `autore`
--

CREATE TABLE `autore` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `data_nascita` date NOT NULL,
  `luogo_nascita` varchar(80) NOT NULL,
  `vivente` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autore`
--

INSERT INTO `autore` (`id`, `nome`, `cognome`, `data_nascita`, `luogo_nascita`, `vivente`) VALUES
(1, 'Pino', 'Caluso', '2015-03-10', 'Caluso', 1);

-- --------------------------------------------------------

--
-- Table structure for table `editore`
--

CREATE TABLE `editore` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `citta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `editore`
--

INSERT INTO `editore` (`id`, `nome`, `citta`) VALUES
(1, 'IBS', 'Roma');

-- --------------------------------------------------------

--
-- Table structure for table `libri`
--

CREATE TABLE `libri` (
  `codice_libro` int(11) NOT NULL,
  `autore` int(11) NOT NULL,
  `titolo` varchar(50) NOT NULL,
  `editore` int(11) NOT NULL,
  `numero_pagine` int(11) NOT NULL,
  `prezzo` double NOT NULL,
  `data_acquisto` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `libri`
--

INSERT INTO `libri` (`codice_libro`, `autore`, `titolo`, `editore`, `numero_pagine`, `prezzo`, `data_acquisto`) VALUES
(11111, 1, 'Poi tu!', 0, 240, 11, '2016-04-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autore`
--
ALTER TABLE `autore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editore`
--
ALTER TABLE `editore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `libri`
--
ALTER TABLE `libri`
  ADD PRIMARY KEY (`codice_libro`),
  ADD KEY `codice_libro` (`codice_libro`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autore`
--
ALTER TABLE `autore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `editore`
--
ALTER TABLE `editore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `libri`
--
ALTER TABLE `libri`
  MODIFY `codice_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11112;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
