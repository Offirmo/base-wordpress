CREATE TABLE `xr7h81hn_itsec_temp` (  `temp_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  `temp_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,  `temp_date` datetime NOT NULL,  `temp_date_gmt` datetime NOT NULL,  `temp_host` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,  `temp_user` bigint(20) unsigned DEFAULT NULL,  `temp_username` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,  PRIMARY KEY (`temp_id`),  KEY `temp_date_gmt` (`temp_date_gmt`),  KEY `temp_host` (`temp_host`),  KEY `temp_user` (`temp_user`),  KEY `temp_username` (`temp_username`)) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `xr7h81hn_itsec_temp` DISABLE KEYS */;
INSERT INTO `xr7h81hn_itsec_temp` VALUES('1', 'brute_force', '2015-08-06 01:26:20', '2015-08-06 00:26:20', '192.168.88.1', NULL, NULL);
INSERT INTO `xr7h81hn_itsec_temp` VALUES('2', 'brute_force', '2015-08-06 01:26:34', '2015-08-06 00:26:34', '192.168.88.1', NULL, NULL);
INSERT INTO `xr7h81hn_itsec_temp` VALUES('3', 'brute_force', '2015-08-06 01:27:03', '2015-08-06 00:27:03', '192.168.88.1', NULL, NULL);
/*!40000 ALTER TABLE `xr7h81hn_itsec_temp` ENABLE KEYS */;
