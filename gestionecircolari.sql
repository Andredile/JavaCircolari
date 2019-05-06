-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 28, 2019 alle 21:31
-- Versione del server: 10.1.37-MariaDB
-- Versione PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestionecircolari`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `circolare`
--

CREATE TABLE `circolare` (
  `id` int(11) NOT NULL,
  `numero` int(10) NOT NULL,
  `Categoria` varchar(32) NOT NULL,
  `Destinatario` varchar(32) NOT NULL,
  `privacy` varchar(32) NOT NULL,
  `data` date NOT NULL,
  `contenuto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `circolare`
--

INSERT INTO `circolare` (`id`, `numero`, `Categoria`, `Destinatario`, `privacy`, `data`, `contenuto`) VALUES
(1, 12, 'Avviso', 'Studenti', 'Pubblica', '2028-04-19', 'prova prova'),
(2, 11, 'Comunicazione', 'Docenti', 'Pubblica', '2028-04-19', 'prova pdf'),
(3, 14, 'Conferenza', 'ATA', 'Pubblica', '2028-04-19', 'prova pdf2'),
(4, 22, 'Incontro', 'Studenti', 'Pubblica', '2028-04-19', 'Prova pdf3');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `id` int(11) NOT NULL,
  `Nome` varchar(32) NOT NULL,
  `Cognome` varchar(32) NOT NULL,
  `Email` varchar(32) NOT NULL,
  `classe` varchar(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`id`, `Nome`, `Cognome`, `Email`, `classe`, `username`, `password`) VALUES
(4, 'Andrea', 'Di Lella', 'andreadi.ermes@gmail.com', '5B Info', 'Andrew', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, 'Tony', 'Stark', 'tonystk@gmail.com', '4C', 'tony', 'd93591bdf7860e1e4ee2fca799911215'),
(6, 'Admin', 'Admin', '/', '/', 'Admin', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `circolare`
--
ALTER TABLE `circolare`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `circolare`
--
ALTER TABLE `circolare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
