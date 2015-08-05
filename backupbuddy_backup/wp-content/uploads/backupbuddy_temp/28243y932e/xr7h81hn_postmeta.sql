CREATE TABLE `xr7h81hn_postmeta` (  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,  `meta_value` longtext COLLATE utf8mb4_unicode_ci,  PRIMARY KEY (`meta_id`),  KEY `post_id` (`post_id`),  KEY `meta_key` (`meta_key`(191))) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `xr7h81hn_postmeta` DISABLE KEYS */;
INSERT INTO `xr7h81hn_postmeta` VALUES('1', '2', '_wp_page_template', 'default');
INSERT INTO `xr7h81hn_postmeta` VALUES('2', '4', '_wp_attached_file', '2015/08/backupbuddy-6.2.2.2.zip');
INSERT INTO `xr7h81hn_postmeta` VALUES('3', '4', '_wp_attachment_context', 'upgrader');
/*!40000 ALTER TABLE `xr7h81hn_postmeta` ENABLE KEYS */;
