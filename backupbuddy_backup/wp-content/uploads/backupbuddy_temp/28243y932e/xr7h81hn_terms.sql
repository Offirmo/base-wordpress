CREATE TABLE `xr7h81hn_terms` (  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `term_group` bigint(10) NOT NULL DEFAULT '0',  PRIMARY KEY (`term_id`),  KEY `slug` (`slug`(191)),  KEY `name` (`name`(191))) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `xr7h81hn_terms` DISABLE KEYS */;
INSERT INTO `xr7h81hn_terms` VALUES('1', 'Non classé', 'non-classe', '0');
/*!40000 ALTER TABLE `xr7h81hn_terms` ENABLE KEYS */;
