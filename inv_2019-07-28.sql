# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.25)
# Database: inv
# Generation Time: 2019-07-28 04:03:38 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table access_control
# ------------------------------------------------------------

DROP TABLE IF EXISTS `access_control`;

CREATE TABLE `access_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_level_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `content` text,
  `user_modified` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `access_control` WRITE;
/*!40000 ALTER TABLE `access_control` DISABLE KEYS */;

INSERT INTO `access_control` (`id`, `user_level_id`, `module_id`, `content`, `user_modified`, `created_at`, `updated_at`)
VALUES
	(1,1,1,'a',1,'2017-10-17 16:26:05','2017-10-17 16:26:05'),
	(2,1,2,'a',1,'2017-10-17 16:26:05','2017-10-17 16:26:05'),
	(3,1,3,'a',1,'2017-10-17 16:26:05','2017-10-17 16:26:05'),
	(4,2,1,'a',1,'2017-10-17 16:26:13','2018-07-02 13:15:53'),
	(5,2,2,'a',1,'2017-10-17 16:26:13','2018-07-02 13:15:53'),
	(6,2,3,'a',1,'2017-10-17 16:26:13','2018-07-02 13:15:53'),
	(7,3,1,'v',1,'2017-10-17 16:26:18','2018-06-03 13:05:32'),
	(8,3,2,'v',1,'2017-10-17 16:26:18','2018-06-03 13:05:32'),
	(9,3,3,'v',1,'2017-10-17 16:26:18','2018-06-03 13:05:32'),
	(10,1,4,'a',1,'2018-07-02 13:15:50','2018-07-02 13:15:50'),
	(11,2,4,'a',1,'2018-07-02 13:15:53','2018-07-02 13:15:53'),
	(12,3,4,'v',1,'2018-07-02 13:15:56','2018-07-02 13:15:56'),
	(13,1,5,'a',1,'2018-07-02 15:28:39','2018-07-02 15:28:39'),
	(14,2,5,'a',1,'2018-07-02 15:28:43','2018-07-02 15:28:43'),
	(15,3,5,'v',1,'2018-07-02 15:28:45','2018-07-02 15:28:45'),
	(16,1,6,'a',1,'2018-07-03 14:02:26','2018-07-03 14:02:26'),
	(17,2,6,'a',1,'2018-07-03 14:02:29','2018-07-03 14:02:29'),
	(18,3,6,'v',1,'2018-07-03 14:02:31','2018-07-03 14:02:31'),
	(19,1,7,'a',1,'2018-07-03 15:32:29','2018-07-03 15:32:29'),
	(20,2,7,'a',1,'2018-07-03 15:32:32','2018-07-03 15:32:32'),
	(21,3,7,'v',1,'2018-07-03 15:32:35','2018-07-03 15:32:35'),
	(22,1,8,'a',1,'2018-07-03 19:39:25','2018-07-03 19:39:25'),
	(23,2,8,'a',1,'2018-07-03 19:39:30','2018-07-03 19:39:30'),
	(24,3,8,'v',1,'2018-07-03 19:39:34','2018-07-03 19:39:34');

/*!40000 ALTER TABLE `access_control` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table barang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(45) DEFAULT NULL,
  `nama` varchar(300) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `keterangan` text,
  `active` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_modified` int(11) DEFAULT NULL,
  `stok_awal` int(11) unsigned DEFAULT '0',
  `stok_total` int(11) DEFAULT '0',
  `img_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;

INSERT INTO `barang` (`id`, `kode`, `nama`, `harga_beli`, `harga_jual`, `keterangan`, `active`, `created_at`, `updated_at`, `user_modified`, `stok_awal`, `stok_total`, `img_id`)
VALUES
	(1,'MB001','Barang 1',25000,27000,'Keterangan 1',1,'2018-07-03 14:37:19','2018-07-04 12:41:27',1,30,34,1),
	(2,'MB002','Barang 2',50000,55000,'Keterangan 2',1,'2018-07-03 14:37:34','2018-07-04 17:12:54',1,50,58,0);

/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table contact_us
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contact_us`;

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address` text,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `subject` varchar(150) DEFAULT NULL,
  `message` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `read` int(1) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table media_library
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_library`;

CREATE TABLE `media_library` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `user_created` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `media_library` WRITE;
/*!40000 ALTER TABLE `media_library` DISABLE KEYS */;

INSERT INTO `media_library` (`id`, `name`, `type`, `url`, `size`, `user_created`, `created_at`, `updated_at`)
VALUES
	(0,'noprofileimage','png','img/noprofileimage.png','1159',1,'2017-05-30 02:56:03','2017-05-30 02:56:03'),
	(1,'tumblr_o8dmovrRZ21v9dlz9o9_250','png','upload/img/tumblr_o8dmovrRZ21v9dlz9o9_250.png','76098',1,'2018-07-03 13:40:43','2018-07-03 13:40:43');

/*!40000 ALTER TABLE `media_library` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modules`;

CREATE TABLE `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(20) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `user_modified` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;

INSERT INTO `modules` (`id`, `name`, `slug`, `active`, `user_modified`, `created_at`, `updated_at`)
VALUES
	(1,'Master User Level','users-level',1,1,'2017-10-17 14:07:07','2017-10-17 14:43:43'),
	(2,'Master User','users-user',1,1,'2017-10-17 14:16:51','2017-10-17 14:49:30'),
	(3,'Media Library','media-library',2,1,'2017-10-17 14:19:28','2019-07-27 13:48:55'),
	(4,'Master Supplier','supplier',1,1,'2018-07-02 13:15:45','2018-07-02 13:15:45'),
	(5,'Master Barang','barang',1,1,'2018-07-02 15:28:31','2018-07-02 15:28:31'),
	(6,'Purchase Order','purchase-order',1,1,'2018-07-03 14:02:20','2018-07-03 14:02:20'),
	(7,'Daftar Inden','inden',1,1,'2018-07-03 15:32:24','2018-07-03 15:32:24'),
	(8,'Penjualan','penjualan',1,1,'2018-07-03 19:39:19','2018-07-03 19:39:19');

/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table penjualan_d
# ------------------------------------------------------------

DROP TABLE IF EXISTS `penjualan_d`;

CREATE TABLE `penjualan_d` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_penjualan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `penjualan_d` WRITE;
/*!40000 ALTER TABLE `penjualan_d` DISABLE KEYS */;

INSERT INTO `penjualan_d` (`id`, `id_barang`, `jumlah`, `harga`, `created_at`, `updated_at`, `id_penjualan`)
VALUES
	(1,2,2,55000,'2018-07-04 10:22:20','2018-07-04 10:22:20',1),
	(2,1,3,27000,'2018-07-04 10:22:20','2018-07-04 10:22:20',1),
	(3,1,1,27000,'2018-07-04 10:27:31','2018-07-04 10:27:31',2),
	(4,2,2,55000,'2018-07-04 10:27:31','2018-07-04 10:27:31',2);

/*!40000 ALTER TABLE `penjualan_d` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table penjualan_h
# ------------------------------------------------------------

DROP TABLE IF EXISTS `penjualan_h`;

CREATE TABLE `penjualan_h` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_nota` varchar(45) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_modified` int(11) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `penjualan_h` WRITE;
/*!40000 ALTER TABLE `penjualan_h` DISABLE KEYS */;

INSERT INTO `penjualan_h` (`id`, `no_nota`, `tanggal`, `total`, `active`, `created_at`, `updated_at`, `user_modified`, `keterangan`)
VALUES
	(1,'NOT/0001','2018-07-04',191000,0,'2018-07-04 10:22:20','2018-07-04 10:26:44',1,'Keterangan Penjualan'),
	(2,'NOT/0001','2018-07-04',137000,1,'2018-07-04 10:27:31','2018-07-04 10:27:31',1,'Keterangan Penjualan');

/*!40000 ALTER TABLE `penjualan_h` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table purchase_d
# ------------------------------------------------------------

DROP TABLE IF EXISTS `purchase_d`;

CREATE TABLE `purchase_d` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_purchase` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `purchase_d` WRITE;
/*!40000 ALTER TABLE `purchase_d` DISABLE KEYS */;

INSERT INTO `purchase_d` (`id`, `id_purchase`, `id_barang`, `jumlah`, `harga`, `created_at`, `updated_at`)
VALUES
	(1,1,1,5,25000,'2018-07-03 14:38:25','2018-07-03 14:38:25'),
	(2,1,2,10,50000,'2018-07-03 14:38:25','2018-07-03 14:38:25'),
	(4,2,2,5,65000,'2018-07-03 15:08:04','2018-07-03 15:08:04'),
	(5,2,1,15,30000,'2018-07-03 15:08:04','2018-07-03 15:08:04');

/*!40000 ALTER TABLE `purchase_d` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table purchase_h
# ------------------------------------------------------------

DROP TABLE IF EXISTS `purchase_h`;

CREATE TABLE `purchase_h` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_inv` varchar(45) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `id_sup` int(11) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `status` enum('order','received') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_modified` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `purchase_h` WRITE;
/*!40000 ALTER TABLE `purchase_h` DISABLE KEYS */;

INSERT INTO `purchase_h` (`id`, `no_inv`, `total`, `id_sup`, `active`, `status`, `created_at`, `updated_at`, `user_modified`, `tanggal`, `keterangan`)
VALUES
	(1,'INV/0001',625000,2,1,'received','2018-07-03 14:38:25','2018-07-03 14:39:13',1,'2018-07-03',NULL),
	(2,'INV/0002',775000,3,1,'order','2018-07-03 14:41:03','2018-07-03 15:08:04',1,'2018-07-03','Keterangan Purchase');

/*!40000 ALTER TABLE `purchase_h` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `value` text,
  `user_modified` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `name`, `value`, `user_modified`, `created_at`, `updated_at`)
VALUES
	(1,'web_title','EXCEL',1,'2017-06-13 07:27:16','2019-07-27 13:38:37'),
	(2,'logo','img/logo.png',1,'2017-06-13 07:27:16','2018-06-03 12:58:24'),
	(3,'email_admin','admin@admin.com',1,'2017-06-13 07:27:16','2018-06-03 12:58:52'),
	(4,'web_description','Your interior solution',1,'2017-07-24 06:56:28','2019-07-27 13:38:37');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table stok
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stok`;

CREATE TABLE `stok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) DEFAULT NULL,
  `keterangan` text,
  `jumlah` int(11) DEFAULT NULL,
  `type` enum('beli','jual','koreksi') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `stok` WRITE;
/*!40000 ALTER TABLE `stok` DISABLE KEYS */;

INSERT INTO `stok` (`id`, `id_barang`, `keterangan`, `jumlah`, `type`, `created_at`, `updated_at`)
VALUES
	(22,2,'Koreksi Stok',6,'koreksi','2018-07-04 17:12:54','2018-07-04 17:12:54'),
	(21,2,'Koreksi Stok',-6,'koreksi','2018-07-04 17:12:26','2018-07-04 17:12:26'),
	(20,2,'NOT/0001',-2,'jual','2018-07-04 10:27:31','2018-07-04 10:27:31'),
	(19,1,'NOT/0001',-1,'jual','2018-07-04 10:27:31','2018-07-04 10:27:31'),
	(15,1,'INV/0001',5,'beli','2018-07-03 14:39:13','2018-07-03 14:39:13'),
	(16,2,'INV/0001',10,'beli','2018-07-03 14:39:13','2018-07-03 14:39:13');

/*!40000 ALTER TABLE `stok` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table supplier
# ------------------------------------------------------------

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text,
  `cp` varchar(100) DEFAULT NULL,
  `telp` text,
  `active` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;

INSERT INTO `supplier` (`id`, `nama`, `alamat`, `cp`, `telp`, `active`, `created_at`, `updated_at`, `user_modified`)
VALUES
	(1,'Supplier 1','Jl Tanimbar\r\n65117\r\nMalang\r\nJawa Timur','Donny','082818392138912\r\n083138883982891',1,'2018-01-17 08:21:02','2018-07-02 13:16:19',1),
	(2,'Supplier 2','Jl Ngagel\r\nSurabaya','Donny','08324324823',1,'2018-03-11 11:41:51','2018-07-02 13:18:39',1),
	(3,'Supplier 3','Jl Raya Darmo Permai\r\nSurabaya','Lidya','0866237646726',1,'2018-07-02 13:30:07','2018-07-02 13:36:52',1);

/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_levels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_levels`;

CREATE TABLE `user_levels` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `active` int(1) DEFAULT NULL,
  `user_modified` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `user_levels` WRITE;
/*!40000 ALTER TABLE `user_levels` DISABLE KEYS */;

INSERT INTO `user_levels` (`id`, `name`, `active`, `user_modified`, `created_at`, `updated_at`)
VALUES
	(1,'Super Admin',1,1,'2017-06-28 13:18:17','2017-06-28 13:18:17'),
	(2,'Admin',1,1,'2018-06-02 22:59:51','2018-06-02 22:59:51'),
	(3,'User',1,1,'2018-06-03 11:19:49','2018-06-03 11:19:49');

/*!40000 ALTER TABLE `user_levels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_level_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `avatar_id` int(11) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `address` text,
  `phone` text,
  `gender` enum('male','female','other') DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` int(1) NOT NULL,
  `user_modified` int(11) DEFAULT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `user_level_id`, `firstname`, `lastname`, `avatar_id`, `email`, `address`, `phone`, `gender`, `birthdate`, `username`, `password`, `active`, `user_modified`, `last_activity`, `created_at`, `updated_at`)
VALUES
	(1,1,'Super','Admin',0,'superadmin@admin.com','Jl Madura xxxxxxx','08383xxxxxxx','male','1986-07-25','superadmin','$2y$10$TkX/dDYrtvIEXidPOag5T.V8qbyluUHJg5ssBjKe6WlVqpItuN8uy',1,1,'2019-07-28 10:55:52','2017-03-14 03:51:35','2019-07-28 10:55:52'),
	(2,2,'Admin','Admin',0,'admin@admin.com',NULL,NULL,'male',NULL,'admin','$2y$10$PQaUY4b0YsSo5qAuK8Cc.OB.WeEJHrJJ0FDgk6YE9xhXboVRou3We',1,1,'2018-07-04 15:23:26','2017-04-19 21:29:01','2018-07-04 15:23:26');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
