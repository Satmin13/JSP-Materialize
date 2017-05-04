-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.21-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando datos para la tabla tiendamemoria.memorias: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `memorias` DISABLE KEYS */;
INSERT INTO `memorias` (`id`, `tipo`, `marca`, `modelo`, `precio`) VALUES
	(1, 'Tarjeta de Memoria', 'Samsung', 'MicroSDHC EVO 32GB', 13.50),
	(2, 'Tarjeta de Memoria', 'Kingston', 'MicroSD Action Camera 32GB', 15.50),
	(3, 'Tarjeta de Memoria', 'G.Skill', 'MicroSDHC 16GB', 14.95),
	(4, 'Tarjeta de Memoria', 'Kingston', 'MicroSDXC 64GB UHS-I', 35.95),
	(5, 'Tarjeta de Memoria', 'Kingston', 'Compact Flash 8GB', 12.50),
	(6, 'Memoria USB', 'Sandisk', 'Cruzer Dial 16GB', 8.95),
	(7, 'Memoria USB', 'Toshiba', 'TransMemory Hayabusa 64GB', 16.75),
	(8, 'Memoria USB', 'Corsair', 'Voyager Slider X1 128GB', 34.65),
	(9, 'Memoria USB', 'Kingston', 'DataTraveler 100 G3 16GB', 9.99),
	(10, 'Memoria USB', 'Sandisk', 'Ultra Dual Memoria USB 3.0 64GB ', 24.00),
	(11, 'Tarjeta de Memoria', 'Samsung', 'Compact 16GB', 14.00);
/*!40000 ALTER TABLE `memorias` ENABLE KEYS */;

-- Volcando datos para la tabla tiendamemoria.tipos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tipos` DISABLE KEYS */;
INSERT INTO `tipos` (`tipo`) VALUES
	('Memoria USB'),
	('Tarjeta de Memoria');
/*!40000 ALTER TABLE `tipos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
