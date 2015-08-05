CREATE TABLE `xr7h81hn_term_taxonomy` (  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',  `count` bigint(20) NOT NULL DEFAULT '0',  PRIMARY KEY (`term_taxonomy_id`),  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),  KEY `taxonomy` (`taxonomy`)) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `xr7h81hn_term_taxonomy` DISABLE KEYS */;
INSERT INTO `xr7h81hn_term_taxonomy` VALUES('1', '1', 'category', '', '0', '1');
/*!40000 ALTER TABLE `xr7h81hn_term_taxonomy` ENABLE KEYS */;
