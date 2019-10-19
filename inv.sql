/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : inv

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 20/10/2019 01:03:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_control
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of access_control
-- ----------------------------
BEGIN;
INSERT INTO `access_control` VALUES (1, 1, 1, 'a', 1, '2017-10-17 16:26:05', '2017-10-17 16:26:05');
INSERT INTO `access_control` VALUES (2, 1, 2, 'a', 1, '2017-10-17 16:26:05', '2017-10-17 16:26:05');
INSERT INTO `access_control` VALUES (3, 1, 3, 'a', 1, '2017-10-17 16:26:05', '2017-10-17 16:26:05');
INSERT INTO `access_control` VALUES (4, 2, 1, 'a', 1, '2017-10-17 16:26:13', '2018-07-02 13:15:53');
INSERT INTO `access_control` VALUES (5, 2, 2, 'a', 1, '2017-10-17 16:26:13', '2018-07-02 13:15:53');
INSERT INTO `access_control` VALUES (6, 2, 3, 'a', 1, '2017-10-17 16:26:13', '2018-07-02 13:15:53');
INSERT INTO `access_control` VALUES (7, 3, 1, 'v', 1, '2017-10-17 16:26:18', '2018-06-03 13:05:32');
INSERT INTO `access_control` VALUES (8, 3, 2, 'v', 1, '2017-10-17 16:26:18', '2018-06-03 13:05:32');
INSERT INTO `access_control` VALUES (9, 3, 3, 'v', 1, '2017-10-17 16:26:18', '2018-06-03 13:05:32');
INSERT INTO `access_control` VALUES (10, 1, 4, 'a', 1, '2018-07-02 13:15:50', '2018-07-02 13:15:50');
INSERT INTO `access_control` VALUES (11, 2, 4, 'a', 1, '2018-07-02 13:15:53', '2018-07-02 13:15:53');
INSERT INTO `access_control` VALUES (12, 3, 4, 'v', 1, '2018-07-02 13:15:56', '2018-07-02 13:15:56');
INSERT INTO `access_control` VALUES (13, 1, 5, 'a', 1, '2018-07-02 15:28:39', '2018-07-02 15:28:39');
INSERT INTO `access_control` VALUES (14, 2, 5, 'a', 1, '2018-07-02 15:28:43', '2018-07-02 15:28:43');
INSERT INTO `access_control` VALUES (15, 3, 5, 'v', 1, '2018-07-02 15:28:45', '2018-07-02 15:28:45');
INSERT INTO `access_control` VALUES (16, 1, 6, 'a', 1, '2018-07-03 14:02:26', '2018-07-03 14:02:26');
INSERT INTO `access_control` VALUES (17, 2, 6, 'a', 1, '2018-07-03 14:02:29', '2018-07-03 14:02:29');
INSERT INTO `access_control` VALUES (18, 3, 6, 'v', 1, '2018-07-03 14:02:31', '2018-07-03 14:02:31');
INSERT INTO `access_control` VALUES (19, 1, 7, 'a', 1, '2018-07-03 15:32:29', '2018-07-03 15:32:29');
INSERT INTO `access_control` VALUES (20, 2, 7, 'a', 1, '2018-07-03 15:32:32', '2018-07-03 15:32:32');
INSERT INTO `access_control` VALUES (21, 3, 7, 'v', 1, '2018-07-03 15:32:35', '2018-07-03 15:32:35');
INSERT INTO `access_control` VALUES (22, 1, 8, 'a', 1, '2018-07-03 19:39:25', '2018-07-03 19:39:25');
INSERT INTO `access_control` VALUES (23, 2, 8, 'a', 1, '2018-07-03 19:39:30', '2018-07-03 19:39:30');
INSERT INTO `access_control` VALUES (24, 3, 8, 'v', 1, '2018-07-03 19:39:34', '2018-07-03 19:39:34');
COMMIT;

-- ----------------------------
-- Table structure for barang
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of barang
-- ----------------------------
BEGIN;
INSERT INTO `barang` VALUES (1, 'MB001', 'Barang 1', 25000, 27000, 'Keterangan 1', 1, '2018-07-03 14:37:19', '2019-08-10 14:41:26', 1, 30, 34, 1);
INSERT INTO `barang` VALUES (2, 'MB002', 'Barang 2', 50000, 55000, 'Keterangan 2', 1, '2018-07-03 14:37:34', '2019-08-01 00:00:03', 1, 50, 57, 0);
COMMIT;

-- ----------------------------
-- Table structure for contact_us
-- ----------------------------
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

-- ----------------------------
-- Table structure for jabatan
-- ----------------------------
DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `active` int(1) DEFAULT NULL,
  `user_modified` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jabatan
-- ----------------------------
BEGIN;
INSERT INTO `jabatan` VALUES (1, 'Manager', 1, 1, '2019-08-10 14:30:30', '2017-06-28 13:18:17');
INSERT INTO `jabatan` VALUES (2, 'Admin', 1, 1, '2018-06-02 22:59:51', '2018-06-02 22:59:51');
INSERT INTO `jabatan` VALUES (3, 'User', 1, 1, '2018-06-03 11:19:49', '2018-06-03 11:19:49');
COMMIT;

-- ----------------------------
-- Table structure for media_library
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of media_library
-- ----------------------------
BEGIN;
INSERT INTO `media_library` VALUES (0, 'noprofileimage', 'png', 'img/noprofileimage.png', '1159', 1, '2017-05-30 02:56:03', '2017-05-30 02:56:03');
INSERT INTO `media_library` VALUES (1, 'tumblr_o8dmovrRZ21v9dlz9o9_250', 'png', 'upload/img/tumblr_o8dmovrRZ21v9dlz9o9_250.png', '76098', 1, '2018-07-03 13:40:43', '2018-07-03 13:40:43');
COMMIT;

-- ----------------------------
-- Table structure for modules
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of modules
-- ----------------------------
BEGIN;
INSERT INTO `modules` VALUES (1, 'Master User Level', 'users-level', 1, 1, '2017-10-17 14:07:07', '2017-10-17 14:43:43');
INSERT INTO `modules` VALUES (2, 'Master User', 'users-user', 1, 1, '2017-10-17 14:16:51', '2017-10-17 14:49:30');
INSERT INTO `modules` VALUES (3, 'Media Library', 'media-library', 2, 1, '2017-10-17 14:19:28', '2019-07-27 13:48:55');
INSERT INTO `modules` VALUES (4, 'Master Supplier', 'supplier', 1, 1, '2018-07-02 13:15:45', '2018-07-02 13:15:45');
INSERT INTO `modules` VALUES (5, 'Master Barang', 'barang', 1, 1, '2018-07-02 15:28:31', '2018-07-02 15:28:31');
INSERT INTO `modules` VALUES (6, 'Purchase Order', 'purchase-order', 1, 1, '2018-07-03 14:02:20', '2018-07-03 14:02:20');
INSERT INTO `modules` VALUES (7, 'Daftar Inden', 'inden', 1, 1, '2018-07-03 15:32:24', '2018-07-03 15:32:24');
INSERT INTO `modules` VALUES (8, 'Penjualan', 'penjualan', 1, 1, '2018-07-03 19:39:19', '2018-07-03 19:39:19');
COMMIT;

-- ----------------------------
-- Table structure for pemakaian
-- ----------------------------
DROP TABLE IF EXISTS `pemakaian`;
CREATE TABLE `pemakaian` (
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pemakaian
-- ----------------------------
BEGIN;
INSERT INTO `pemakaian` VALUES (1, 'NOT/0001', '2018-07-04', 191000, 0, '2018-07-04 10:22:20', '2018-07-04 10:26:44', 1, 'Keterangan Penjualan');
INSERT INTO `pemakaian` VALUES (2, 'NOT/0001', '2018-07-04', 137000, 1, '2018-07-04 10:27:31', '2018-07-04 10:27:31', 1, 'Keterangan Penjualan');
INSERT INTO `pemakaian` VALUES (3, '0009', '2019-08-10', 27000, 1, '2019-08-10 14:41:26', '2019-08-10 14:41:26', 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for pemakaian_detail
-- ----------------------------
DROP TABLE IF EXISTS `pemakaian_detail`;
CREATE TABLE `pemakaian_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_penjualan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pemakaian_detail
-- ----------------------------
BEGIN;
INSERT INTO `pemakaian_detail` VALUES (1, 2, 2, 55000, '2018-07-04 10:22:20', '2018-07-04 10:22:20', 1);
INSERT INTO `pemakaian_detail` VALUES (2, 1, 3, 27000, '2018-07-04 10:22:20', '2018-07-04 10:22:20', 1);
INSERT INTO `pemakaian_detail` VALUES (3, 1, 1, 27000, '2018-07-04 10:27:31', '2018-07-04 10:27:31', 2);
INSERT INTO `pemakaian_detail` VALUES (4, 2, 2, 55000, '2018-07-04 10:27:31', '2018-07-04 10:27:31', 2);
INSERT INTO `pemakaian_detail` VALUES (5, 1, 1, 27000, '2019-08-10 14:41:26', '2019-08-10 14:41:26', 3);
COMMIT;

-- ----------------------------
-- Table structure for purchase
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of purchase
-- ----------------------------
BEGIN;
INSERT INTO `purchase` VALUES (1, 'INV/0001', 625000, 2, 1, 'received', '2018-07-03 14:38:25', '2018-07-03 14:39:13', 1, '2018-07-03', NULL);
INSERT INTO `purchase` VALUES (2, 'INV/0002', 775000, 3, 1, 'order', '2018-07-03 14:41:03', '2018-07-03 15:08:04', 1, '2018-07-03', 'Keterangan Purchase');
COMMIT;

-- ----------------------------
-- Table structure for purchase_detail
-- ----------------------------
DROP TABLE IF EXISTS `purchase_detail`;
CREATE TABLE `purchase_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_purchase` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of purchase_detail
-- ----------------------------
BEGIN;
INSERT INTO `purchase_detail` VALUES (1, 1, 1, 5, 25000, '2018-07-03 14:38:25', '2018-07-03 14:38:25');
INSERT INTO `purchase_detail` VALUES (2, 1, 2, 10, 50000, '2018-07-03 14:38:25', '2018-07-03 14:38:25');
INSERT INTO `purchase_detail` VALUES (4, 2, 2, 5, 65000, '2018-07-03 15:08:04', '2018-07-03 15:08:04');
INSERT INTO `purchase_detail` VALUES (5, 2, 1, 15, 30000, '2018-07-03 15:08:04', '2018-07-03 15:08:04');
COMMIT;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `value` text,
  `user_modified` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of settings
-- ----------------------------
BEGIN;
INSERT INTO `settings` VALUES (1, 'web_title', 'EXCEL', 1, '2017-06-13 07:27:16', '2019-07-27 13:38:37');
INSERT INTO `settings` VALUES (2, 'logo', 'img/logo.png', 1, '2017-06-13 07:27:16', '2018-06-03 12:58:24');
INSERT INTO `settings` VALUES (3, 'email_admin', 'admin@admin.com', 1, '2017-06-13 07:27:16', '2018-06-03 12:58:52');
INSERT INTO `settings` VALUES (4, 'web_description', 'Your interior solution', 1, '2017-07-24 06:56:28', '2019-07-27 13:38:37');
COMMIT;

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) DEFAULT NULL,
  `keterangan` text,
  `jumlah` int(11) DEFAULT NULL,
  `type` enum('beli','jual','koreksi') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stock
-- ----------------------------
BEGIN;
INSERT INTO `stock` VALUES (22, 2, 'Koreksi Stok', 6, 'koreksi', '2018-07-04 17:12:54', '2018-07-04 17:12:54');
INSERT INTO `stock` VALUES (21, 2, 'Koreksi Stok', -6, 'koreksi', '2018-07-04 17:12:26', '2018-07-04 17:12:26');
INSERT INTO `stock` VALUES (20, 2, 'NOT/0001', -2, 'jual', '2018-07-04 10:27:31', '2018-07-04 10:27:31');
INSERT INTO `stock` VALUES (19, 1, 'NOT/0001', -1, 'jual', '2018-07-04 10:27:31', '2018-07-04 10:27:31');
INSERT INTO `stock` VALUES (15, 1, 'INV/0001', 5, 'beli', '2018-07-03 14:39:13', '2018-07-03 14:39:13');
INSERT INTO `stock` VALUES (16, 2, 'INV/0001', 10, 'beli', '2018-07-03 14:39:13', '2018-07-03 14:39:13');
INSERT INTO `stock` VALUES (23, 2, 'Koreksi Stok', -1, 'koreksi', '2019-08-01 00:00:03', '2019-08-01 00:00:03');
INSERT INTO `stock` VALUES (24, 1, 'Koreksi Stok', 1, 'koreksi', '2019-08-10 14:34:15', '2019-08-10 14:34:15');
INSERT INTO `stock` VALUES (25, 1, '0009', -1, 'jual', '2019-08-10 14:41:26', '2019-08-10 14:41:26');
COMMIT;

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of supplier
-- ----------------------------
BEGIN;
INSERT INTO `supplier` VALUES (1, 'Supplier 1', 'Jl Tanimbar\r\n65117\r\nMalang\r\nJawa Timur', 'Donny', '082818392138912\r\n083138883982891', 1, '2018-01-17 08:21:02', '2018-07-02 13:16:19', 1);
INSERT INTO `supplier` VALUES (2, 'Supplier 2', 'Jl Ngagel\r\nSurabaya', 'Donny', '08324324823', 1, '2018-03-11 11:41:51', '2018-07-02 13:18:39', 1);
INSERT INTO `supplier` VALUES (3, 'Supplier 3', 'Jl Raya Darmo Permai\r\nSurabaya', 'Lidya', '0866237646726', 1, '2018-07-02 13:30:07', '2018-07-02 13:36:52', 1);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_level_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 2, 'ADMIN', NULL, 0, 'admin@gmail.com', 'Jl Madura xxxxxxx', NULL, 'male', '1986-07-25', 'superadmin', '$2y$10$TkX/dDYrtvIEXidPOag5T.V8qbyluUHJg5ssBjKe6WlVqpItuN8uy', 1, 1, '2019-10-20 00:09:23', '2017-03-14 03:51:35', '2019-10-20 00:09:23');
INSERT INTO `users` VALUES (2, 3, 'USER', NULL, 0, 'user@gmail.com', NULL, NULL, 'male', '1970-01-01', 'admin', '$2y$10$PQaUY4b0YsSo5qAuK8Cc.OB.WeEJHrJJ0FDgk6YE9xhXboVRou3We', 1, 1, '2019-08-10 15:00:26', '2017-04-19 21:29:01', '2019-08-10 15:00:26');
INSERT INTO `users` VALUES (3, 1, 'Manager', NULL, 0, 'manager@gmail.com', NULL, NULL, 'male', '2019-08-10', 'manager', '$2y$10$G/SWVmj2X6jVumjnZuC7kuz6kabTpVTu/0TgX66n/MqKv48SOJV2.', 1, 1, '2019-08-10 15:03:22', '2019-08-10 14:30:48', '2019-08-10 15:03:22');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
