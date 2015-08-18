CREATE TABLE `xr7h81hn_itsec_log` (  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  `log_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `log_function` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `log_priority` int(2) NOT NULL DEFAULT '1',  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',  `log_host` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,  `log_username` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,  `log_user` bigint(20) unsigned DEFAULT NULL,  `log_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,  `log_referrer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,  `log_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,  PRIMARY KEY (`log_id`),  KEY `log_type` (`log_type`),  KEY `log_date_gmt` (`log_date_gmt`)) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `xr7h81hn_itsec_log` DISABLE KEYS */;
INSERT INTO `xr7h81hn_itsec_log` VALUES('1', 'file_change', 'File Changes Detected', '8', '2015-08-06 01:28:39', '2015-08-06 00:28:39', '', '', '0', '', '', 'a:4:{s:5:\"added\";a:0:{}s:7:\"removed\";a:0:{}s:7:\"changed\";a:0:{}s:6:\"memory\";s:4:\"0.04\";}');
/*!40000 ALTER TABLE `xr7h81hn_itsec_log` ENABLE KEYS */;