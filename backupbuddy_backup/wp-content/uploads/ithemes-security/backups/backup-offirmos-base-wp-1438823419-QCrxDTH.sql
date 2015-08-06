DROP TABLE IF EXISTS `xr7h81hn_commentmeta`;

CREATE TABLE `xr7h81hn_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS `xr7h81hn_comments`;

CREATE TABLE `xr7h81hn_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `xr7h81hn_comments` VALUES("1","1","Monsieur WordPress","","https://wordpress.org/","","2015-08-05 20:23:00","2015-08-05 19:23:00","Bonjour, ceci est un commentaire.
Pour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.","0","1","","","0","0");


DROP TABLE IF EXISTS `xr7h81hn_itsec_lockouts`;

CREATE TABLE `xr7h81hn_itsec_lockouts` (
  `lockout_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lockout_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lockout_start` datetime NOT NULL,
  `lockout_start_gmt` datetime NOT NULL,
  `lockout_expire` datetime NOT NULL,
  `lockout_expire_gmt` datetime NOT NULL,
  `lockout_host` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockout_user` bigint(20) unsigned DEFAULT NULL,
  `lockout_username` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockout_active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lockout_id`),
  KEY `lockout_expire_gmt` (`lockout_expire_gmt`),
  KEY `lockout_host` (`lockout_host`),
  KEY `lockout_user` (`lockout_user`),
  KEY `lockout_username` (`lockout_username`),
  KEY `lockout_active` (`lockout_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS `xr7h81hn_itsec_log`;

CREATE TABLE `xr7h81hn_itsec_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `log_function` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `log_priority` int(2) NOT NULL DEFAULT '1',
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_host` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_username` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_user` bigint(20) unsigned DEFAULT NULL,
  `log_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_referrer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS `xr7h81hn_itsec_temp`;

CREATE TABLE `xr7h81hn_itsec_temp` (
  `temp_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `temp_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temp_date` datetime NOT NULL,
  `temp_date_gmt` datetime NOT NULL,
  `temp_host` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_user` bigint(20) unsigned DEFAULT NULL,
  `temp_username` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`temp_id`),
  KEY `temp_date_gmt` (`temp_date_gmt`),
  KEY `temp_host` (`temp_host`),
  KEY `temp_user` (`temp_user`),
  KEY `temp_username` (`temp_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS `xr7h81hn_links`;

CREATE TABLE `xr7h81hn_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS `xr7h81hn_options`;

CREATE TABLE `xr7h81hn_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `xr7h81hn_options` VALUES("1","siteurl","http://192.168.88.88:10000","yes");
INSERT INTO `xr7h81hn_options` VALUES("2","home","http://192.168.88.88:10000","yes");
INSERT INTO `xr7h81hn_options` VALUES("3","blogname","Offirmo&#039;s base WP","yes");
INSERT INTO `xr7h81hn_options` VALUES("4","blogdescription","Un site utilisant WordPress","yes");
INSERT INTO `xr7h81hn_options` VALUES("5","users_can_register","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("6","admin_email","ye.jutard@gmail.com","yes");
INSERT INTO `xr7h81hn_options` VALUES("7","start_of_week","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("8","use_balanceTags","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("9","use_smilies","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("10","require_name_email","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("11","comments_notify","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("12","posts_per_rss","10","yes");
INSERT INTO `xr7h81hn_options` VALUES("13","rss_use_excerpt","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("14","mailserver_url","mail.example.com","yes");
INSERT INTO `xr7h81hn_options` VALUES("15","mailserver_login","login@example.com","yes");
INSERT INTO `xr7h81hn_options` VALUES("16","mailserver_pass","password","yes");
INSERT INTO `xr7h81hn_options` VALUES("17","mailserver_port","110","yes");
INSERT INTO `xr7h81hn_options` VALUES("18","default_category","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("19","default_comment_status","closed","yes");
INSERT INTO `xr7h81hn_options` VALUES("20","default_ping_status","open","yes");
INSERT INTO `xr7h81hn_options` VALUES("21","default_pingback_flag","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("22","posts_per_page","10","yes");
INSERT INTO `xr7h81hn_options` VALUES("23","date_format","Y-m-d","yes");
INSERT INTO `xr7h81hn_options` VALUES("24","time_format","H:i","yes");
INSERT INTO `xr7h81hn_options` VALUES("25","links_updated_date_format","j F Y G \\h i \\m\\i\\n","yes");
INSERT INTO `xr7h81hn_options` VALUES("26","comment_moderation","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("27","moderation_notify","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("28","permalink_structure","/%postname%/","yes");
INSERT INTO `xr7h81hn_options` VALUES("29","gzipcompression","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("30","hack_file","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("31","blog_charset","UTF-8","yes");
INSERT INTO `xr7h81hn_options` VALUES("32","moderation_keys","","no");
INSERT INTO `xr7h81hn_options` VALUES("33","active_plugins","a:9:{i:0;s:21:\"polylang/polylang.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:27:\"backupbuddy/backupbuddy.php\";i:3;s:41:\"better-wp-security/better-wp-security.php\";i:4;s:67:\"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php\";i:5;s:47:\"language-icons-flags-switcher/functionsfile.php\";i:6;s:39:\"simple-custom-css/simple-custom-css.php\";i:7;s:35:\"simple-drop-cap/simple-drop-cap.php\";i:8;s:41:\"wp-dashboard-notes/wp-dashboard-notes.php\";}","yes");
INSERT INTO `xr7h81hn_options` VALUES("34","category_base","","yes");
INSERT INTO `xr7h81hn_options` VALUES("35","ping_sites","http://rpc.pingomatic.com/","yes");
INSERT INTO `xr7h81hn_options` VALUES("36","advanced_edit","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("37","comment_max_links","2","yes");
INSERT INTO `xr7h81hn_options` VALUES("38","gmt_offset","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("39","default_email_category","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("40","recently_edited","a:2:{i:0;s:60:\"/var/www/html/wp-content/plugins/backupbuddy/backupbuddy.php\";i:1;s:0:\"\";}","no");
INSERT INTO `xr7h81hn_options` VALUES("41","template","Etendard","yes");
INSERT INTO `xr7h81hn_options` VALUES("42","stylesheet","Etendard-enfant","yes");
INSERT INTO `xr7h81hn_options` VALUES("43","comment_whitelist","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("44","blacklist_keys","","no");
INSERT INTO `xr7h81hn_options` VALUES("45","comment_registration","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("46","html_type","text/html","yes");
INSERT INTO `xr7h81hn_options` VALUES("47","use_trackback","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("48","default_role","subscriber","yes");
INSERT INTO `xr7h81hn_options` VALUES("49","db_version","31536","yes");
INSERT INTO `xr7h81hn_options` VALUES("50","uploads_use_yearmonth_folders","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("51","upload_path","","yes");
INSERT INTO `xr7h81hn_options` VALUES("52","blog_public","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("53","default_link_category","2","yes");
INSERT INTO `xr7h81hn_options` VALUES("54","show_on_front","posts","yes");
INSERT INTO `xr7h81hn_options` VALUES("55","tag_base","","yes");
INSERT INTO `xr7h81hn_options` VALUES("56","show_avatars","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("57","avatar_rating","G","yes");
INSERT INTO `xr7h81hn_options` VALUES("58","upload_url_path","","yes");
INSERT INTO `xr7h81hn_options` VALUES("59","thumbnail_size_w","150","yes");
INSERT INTO `xr7h81hn_options` VALUES("60","thumbnail_size_h","150","yes");
INSERT INTO `xr7h81hn_options` VALUES("61","thumbnail_crop","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("62","medium_size_w","300","yes");
INSERT INTO `xr7h81hn_options` VALUES("63","medium_size_h","300","yes");
INSERT INTO `xr7h81hn_options` VALUES("64","avatar_default","gravatar_default","yes");
INSERT INTO `xr7h81hn_options` VALUES("65","large_size_w","1024","yes");
INSERT INTO `xr7h81hn_options` VALUES("66","large_size_h","1024","yes");
INSERT INTO `xr7h81hn_options` VALUES("67","image_default_link_type","","yes");
INSERT INTO `xr7h81hn_options` VALUES("68","image_default_size","","yes");
INSERT INTO `xr7h81hn_options` VALUES("69","image_default_align","","yes");
INSERT INTO `xr7h81hn_options` VALUES("70","close_comments_for_old_posts","","yes");
INSERT INTO `xr7h81hn_options` VALUES("71","close_comments_days_old","14","yes");
INSERT INTO `xr7h81hn_options` VALUES("72","thread_comments","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("73","thread_comments_depth","5","yes");
INSERT INTO `xr7h81hn_options` VALUES("74","page_comments","","yes");
INSERT INTO `xr7h81hn_options` VALUES("75","comments_per_page","50","yes");
INSERT INTO `xr7h81hn_options` VALUES("76","default_comments_page","newest","yes");
INSERT INTO `xr7h81hn_options` VALUES("77","comment_order","asc","yes");
INSERT INTO `xr7h81hn_options` VALUES("78","sticky_posts","a:0:{}","yes");
INSERT INTO `xr7h81hn_options` VALUES("79","widget_categories","a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `xr7h81hn_options` VALUES("80","widget_text","a:0:{}","yes");
INSERT INTO `xr7h81hn_options` VALUES("81","widget_rss","a:0:{}","yes");
INSERT INTO `xr7h81hn_options` VALUES("82","uninstall_plugins","a:2:{s:41:\"better-wp-security/better-wp-security.php\";a:2:{i:0;s:10:\"ITSEC_Core\";i:1;s:12:\"on_uninstall\";}s:39:\"simple-custom-css/simple-custom-css.php\";s:15:\"sccss_uninstall\";}","no");
INSERT INTO `xr7h81hn_options` VALUES("83","timezone_string","","yes");
INSERT INTO `xr7h81hn_options` VALUES("84","page_for_posts","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("85","page_on_front","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("86","default_post_format","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("87","link_manager_enabled","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("88","initial_db_version","31536","yes");
INSERT INTO `xr7h81hn_options` VALUES("89","xr7h81hn_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes");
INSERT INTO `xr7h81hn_options` VALUES("90","widget_search","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `xr7h81hn_options` VALUES("91","widget_recent-posts","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `xr7h81hn_options` VALUES("92","widget_recent-comments","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `xr7h81hn_options` VALUES("93","widget_archives","a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `xr7h81hn_options` VALUES("94","widget_meta","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `xr7h81hn_options` VALUES("95","sidebars_widgets","a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:4:\"blog\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:6:\"footer\";N;s:13:\"array_version\";i:3;}","yes");
INSERT INTO `xr7h81hn_options` VALUES("98","cron","a:9:{i:1438843740;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1438845780;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1438890019;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1438896833;a:1:{s:27:\"pb_backupbuddy_housekeeping\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1438898425;a:2:{s:16:\"itsec_purge_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:20:\"itsec_purge_lockouts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1438901889;a:1:{s:36:\"pb_backupbuddy-cron_scheduled_backup\";a:1:{s:32:\"3c1ac9cb56bb16aa647950520b9c356f\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:1:{i:0;i:100;}s:8:\"interval\";i:86400;}}}i:1438904274;a:1:{s:23:\"fbrfg_check_for_updates\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1438919889;a:1:{s:36:\"pb_backupbuddy-cron_scheduled_backup\";a:1:{s:32:\"902ba852e556cd4d8b73193dcb545ff4\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:1:{i:0;i:101;}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}","yes");
INSERT INTO `xr7h81hn_options` VALUES("113","WPLANG","fr_FR","yes");
INSERT INTO `xr7h81hn_options` VALUES("120","pb_backupbuddy","a:88:{s:12:\"data_version\";s:1:\"8\";s:21:\"importbuddy_pass_hash\";s:32:\"ccdbf7f683296bc06dd08a8cbf39f802\";s:23:\"importbuddy_pass_length\";i:10;s:16:\"backup_reminders\";i:1;s:16:\"edits_since_last\";i:0;s:17:\"last_backup_start\";i:1438815413;s:18:\"last_backup_finish\";i:1438815439;s:18:\"last_backup_serial\";s:10:\"nzy27fwo6r\";s:17:\"last_backup_stats\";a:10:{s:11:\"archiveFile\";s:65:\"backup-192_168_88_88_10000-2015_08_05-11_56pm-full-nzy27fwo6r.zip\";s:10:\"archiveURL\";s:131:\"http://192.168.88.88:10000/wp-content/uploads/backupbuddy_backups/backup-192_168_88_88_10000-2015_08_05-11_56pm-full-nzy27fwo6r.zip\";s:11:\"archiveSize\";i:15740584;s:5:\"start\";i:1438815413;s:6:\"finish\";i:1438815439;s:4:\"type\";s:4:\"full\";s:12:\"profileTitle\";s:15:\"Complete Backup\";s:13:\"scheduleTitle\";s:0:\"\";s:15:\"integrityStatus\";b:1;s:12:\"destinations\";a:0:{}}s:19:\"force_compatibility\";i:0;s:29:\"force_mysqldump_compatibility\";i:0;s:9:\"schedules\";a:2:{i:100;a:8:{s:5:\"title\";s:38:\"Daily Database (Quick Setup - Blogger)\";s:7:\"profile\";i:1;s:8:\"interval\";s:5:\"daily\";s:9:\"first_run\";i:1438901889;s:12:\"delete_after\";s:1:\"0\";s:19:\"remote_destinations\";s:0:\"\";s:8:\"last_run\";i:0;s:6:\"on_off\";s:1:\"1\";}i:101;a:8:{s:5:\"title\";s:35:\"Weekly Full (Quick Setup - Blogger)\";s:7:\"profile\";i:2;s:8:\"interval\";s:6:\"weekly\";s:9:\"first_run\";i:1438919889;s:12:\"delete_after\";s:1:\"0\";s:19:\"remote_destinations\";s:0:\"\";s:8:\"last_run\";i:0;s:6:\"on_off\";s:1:\"1\";}}s:9:\"log_level\";s:1:\"1\";s:13:\"high_security\";i:0;s:19:\"next_schedule_index\";i:102;s:13:\"archive_limit\";i:0;s:18:\"archive_limit_full\";i:0;s:16:\"archive_limit_db\";i:0;s:19:\"archive_limit_files\";i:0;s:18:\"archive_limit_size\";i:0;s:17:\"archive_limit_age\";i:0;s:26:\"delete_archives_pre_backup\";i:0;s:23:\"lock_archives_directory\";i:0;s:28:\"email_notify_scheduled_start\";s:0:\"\";s:36:\"email_notify_scheduled_start_subject\";s:49:\"BackupBuddy Scheduled Backup Started - {site_url}\";s:33:\"email_notify_scheduled_start_body\";s:140:\"A scheduled backup has started with BackupBuddy v{backupbuddy_version} on {current_datetime} for the site {site_url}.

Details:

{message}\";s:31:\"email_notify_scheduled_complete\";s:0:\"\";s:39:\"email_notify_scheduled_complete_subject\";s:50:\"BackupBuddy Scheduled Backup Complete - {site_url}\";s:36:\"email_notify_scheduled_complete_body\";s:142:\"A scheduled backup has completed with BackupBuddy v{backupbuddy_version} on {current_datetime} for the site {site_url}.

Details:

{message}\";s:24:\"email_notify_send_finish\";s:0:\"\";s:32:\"email_notify_send_finish_subject\";s:43:\"BackupBuddy File Send Finished - {site_url}\";s:29:\"email_notify_send_finish_body\";s:146:\"A destination file send has finished with BackupBuddy v{backupbuddy_version} on {current_datetime} for the site {site_url}.

Details:

{message}\";s:18:\"email_notify_error\";s:26:\"ye.jutard+wpbase@gmail.com\";s:26:\"email_notify_error_subject\";s:30:\"BackupBuddy Error - {site_url}\";s:23:\"email_notify_error_body\";s:132:\"An error occurred with BackupBuddy v{backupbuddy_version} on {current_datetime} for the site {site_url}. Error details:

{message}\";s:12:\"email_return\";s:0:\"\";s:19:\"remote_destinations\";a:0:{}s:27:\"remote_send_timeout_retries\";s:1:\"1\";s:11:\"role_access\";s:16:\"activate_plugins\";s:16:\"dropboxtemptoken\";s:0:\"\";s:11:\"backup_mode\";s:1:\"2\";s:16:\"multisite_export\";s:1:\"0\";s:16:\"backup_directory\";s:0:\"\";s:14:\"temp_directory\";s:0:\"\";s:13:\"log_directory\";s:0:\"\";s:10:\"log_serial\";s:15:\"i6ve5w6tx9depgt\";s:13:\"notifications\";a:0:{}s:19:\"zip_method_strategy\";s:1:\"1\";s:24:\"database_method_strategy\";s:3:\"php\";s:17:\"alternative_zip_2\";s:1:\"0\";s:19:\"ignore_zip_warnings\";s:1:\"0\";s:19:\"ignore_zip_symlinks\";s:1:\"1\";s:18:\"zip_build_strategy\";s:1:\"3\";s:15:\"zip_step_period\";s:2:\"30\";s:13:\"zip_burst_gap\";s:1:\"2\";s:21:\"zip_min_burst_content\";s:2:\"10\";s:21:\"zip_max_burst_content\";s:3:\"100\";s:25:\"disable_zipmethod_caching\";s:1:\"0\";s:19:\"archive_name_format\";s:8:\"datetime\";s:30:\"disable_https_local_ssl_verify\";s:1:\"0\";s:17:\"save_comment_meta\";s:1:\"1\";s:27:\"ignore_command_length_check\";s:1:\"0\";s:18:\"default_backup_tab\";s:1:\"0\";s:18:\"deployment_allowed\";s:1:\"0\";s:10:\"remote_api\";a:2:{s:4:\"keys\";a:0:{}s:3:\"ips\";a:0:{}}s:20:\"skip_spawn_cron_call\";s:1:\"0\";s:5:\"stats\";a:6:{s:9:\"site_size\";i:0;s:18:\"site_size_excluded\";i:0;s:17:\"site_size_updated\";i:0;s:7:\"db_size\";i:0;s:16:\"db_size_excluded\";i:0;s:15:\"db_size_updated\";i:0;}s:9:\"disalerts\";a:0:{}s:15:\"breakout_tables\";s:1:\"1\";s:19:\"include_importbuddy\";s:1:\"1\";s:17:\"max_site_log_size\";s:1:\"5\";s:11:\"compression\";s:1:\"1\";s:25:\"no_new_backups_error_days\";s:2:\"45\";s:15:\"skip_quicksetup\";s:1:\"0\";s:13:\"prevent_flush\";s:1:\"0\";s:17:\"rollback_cleanups\";a:0:{}s:20:\"phpmysqldump_maxrows\";s:0:\"\";s:20:\"disable_localization\";s:1:\"0\";s:18:\"max_execution_time\";s:0:\"\";s:24:\"backup_cron_rescheduling\";s:1:\"0\";s:29:\"backup_cron_passed_force_time\";s:0:\"\";s:20:\"force_single_db_file\";s:1:\"0\";s:11:\"deployments\";a:0:{}s:19:\"max_send_stats_days\";s:1:\"7\";s:20:\"max_send_stats_count\";s:1:\"6\";s:26:\"max_notifications_age_days\";s:2:\"21\";s:19:\"save_backup_sum_log\";s:1:\"1\";s:8:\"profiles\";a:3:{i:0;a:8:{s:4:\"type\";s:8:\"defaults\";s:5:\"title\";s:15:\"Global Defaults\";s:18:\"skip_database_dump\";s:1:\"0\";s:19:\"backup_nonwp_tables\";s:1:\"0\";s:15:\"integrity_check\";s:1:\"1\";s:29:\"mysqldump_additional_includes\";s:0:\"\";s:29:\"mysqldump_additional_excludes\";s:0:\"\";s:8:\"excludes\";s:0:\"\";}i:1;a:3:{s:4:\"type\";s:2:\"db\";s:5:\"title\";s:13:\"Database Only\";s:3:\"tip\";s:49:\"Just your database. I like your minimalist style.\";}i:2;a:2:{s:4:\"type\";s:4:\"full\";s:5:\"title\";s:15:\"Complete Backup\";}}}","yes");
INSERT INTO `xr7h81hn_options` VALUES("122","_transient_random_seed","8945c32f9471e6d757a32c63a45faab6","yes");
INSERT INTO `xr7h81hn_options` VALUES("124","_site_transient_timeout_browser_bfa58c308f5ca3be02504bfe8661769b","1439408426","yes");
INSERT INTO `xr7h81hn_options` VALUES("125","_site_transient_browser_bfa58c308f5ca3be02504bfe8661769b","a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"39.0\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}","yes");
INSERT INTO `xr7h81hn_options` VALUES("127","can_compress_scripts","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("128","_transient_timeout_feed_66a70e9599b658d5cc038e8074597e7c","1438846827","no");
INSERT INTO `xr7h81hn_options` VALUES("129","_transient_feed_66a70e9599b658d5cc038e8074597e7c","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"


\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"
	
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
		
		
		
	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"http://www.wordpress-fr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"La communauté francophone autour du CMS WordPress et son écosystème\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 25 Jul 2015 06:56:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"http://wordpress.org/?v=4.2.1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:51:\"
		
		
		
		
		
				
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"L’Hebdo WordPress n°262 : Communautés – Retours d’expérience – Astuces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/NRscrl4Ddlw/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"http://www.wordpress-fr.net/2015/07/24/lhebdo-wordpress-n262-communautes-retours-dexperience-astuces/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 24 Jul 2015 17:56:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:7:\"Astuces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Brèves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:12:\"communautés\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:5:\"Hebdo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7456\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:368:\"WordPress 4.2.3 : mise à jour de sécurité Une 3e mise à jour mineure vient corriger une faille de sécurité détectée plus tôt. La communauté française grandie Jenny Beaumont a fait un résumé de l&#8217;histoire (en) de la communauté française de WordPress&#8230; et Émilie vous dit pourquoi en faire partie. 14e Podcast VFT : l&#8217;animation [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8365:\"<h3>WordPress 4.2.3 : mise à jour de sécurité</h3>
<p>Une <a href=\"http://wptavern.com/wordpress-4-2-3-is-a-critical-security-release-fixes-an-xss-vulnerability\">3e mise à jour mineure </a>vient <a href=\"https://wordpress.org/news/2015/07/wordpress-4-2-3/\">corriger </a>une faille de sécurité détectée plus tôt.</p>
<h3>La communauté française grandie</h3>
<p>Jenny Beaumont a fait <a href=\"https://poststatus.com/growth-in-the-french-community/\">un résumé de l&rsquo;histoire (en)</a> de la communauté française de WordPress&#8230; et <a href=\"http://www.wp-pro.fr/pourquoi-rejoindre-la-communaute-wordpress/\">Émilie vous dit pourquoi en faire partie</a>.</p>
<h3>14e Podcast VFT : l&rsquo;animation d&rsquo;une communauté locale</h3>
<p>Entourés de Valérie et Nicolas, l&rsquo;équipe de VFT <a href=\"http://veryfrenchtrip.com/podcast/podcast-14-animation-locale-wordpress/\">nous donne des pistes pour animer une communauté locale</a>.</p>
<h3>Le WP Tech 2015 a une salle !</h3>
<p>Le lieu du prochain WP Tech <a href=\"http://2015.wptech.fr/lieu/\">est connu</a>, ce sera la faculté de Pharmacie en plein centre de Nantes.</p>
<h3>Des retours du WPMX Day, des vrais (cette fois !)</h3>
<p>J&rsquo;avais fait une erreur dans mon dernier hebdo et confondu des liens&#8230; et je n&rsquo;a pas fait la mise à jour&#8230; dont acte !</p>
<ul>
<li><a href=\"http://www.myleneb.fr/wpmx-day-2015-mes-impressions/\">Mylène Boyrie</a></li>
<li><a href=\"http://www.ohmyweb.fr/retour-sur-le-wpmx-day-du-6-juin-2/\">Oh My Web</a></li>
<li><a href=\"http://www.goodness.fr/2015/06/13/referencement-wordpress-wpmx-2015/\">Goodness</a></li>
<li><a href=\"http://www.inpixelitrust.fr/blog/faites-rentrer-votre-elephant-dans-une-smart-bonnes-pratiques-sur-mobiles-ma-conference-au-wpmx-day-2015/\">Stéphanie Walter</a></li>
</ul>
<h3>Quelques nouvelles des WordCamps dans le monde</h3>
<p>Les WordCamps français n&rsquo;étant pas les seuls au monde, <a href=\"https://wordpress.org/news/2015/07/wordcamps-update/\">voici du nouveau sur le reste du Monde</a> ! (en) &#8230; avec un clin d’œil à Fabrice Ducarme, bien connu de notre communauté&#8230; et le premier <a href=\"http://ma.tt/2015/07/wcus-philadelphia/\">WordCamp US</a> aura lieu à Philadelphie&#8230;</p>
<h3>WordPress 4.3 : revue de travaux</h3>
<ul>
<li><a href=\"http://wptavern.com/wordpress-4-3-adds-new-site-icons-feature-and-a-text-editor-to-press-this\">Favicon et Press This</a> (en)</li>
<li><a href=\"http://wptavern.com/wordpress-4-3-improves-user-search-and-turns-comments-off-on-pages-by-default\">Fermeture de commentaire et recherche améliorée</a> (en)</li>
</ul>
<h3>Jetpack 3.6 débarque</h3>
<p>Cette <a href=\"http://wptavern.com/jetpack-3-6-adds-the-ability-to-manage-your-connections-to-jetpack\">nouvelle version</a> peut désormais gérer vos connexions aux réseaux sociaux. (en)</p>
<h3>Focus sur le répertoire de thème officiel</h3>
<p>L&rsquo;équipe en charge du répertoire officiel de thème de WordPress se concentre sur l&rsquo;amélioration du répertoire officiel de thèmes. <a href=\"http://wptavern.com/wordpress-theme-review-team-unanimously-approves-roadmap-to-improve-directory-and-review-process\">Une réorganisation de l&rsquo;équipe est en cours</a>. (en)</p>
<h3>Le fichier htaccess avec WordPress</h3>
<p>MaintPress explique le <a href=\"http://www.maintpress.com/blog/htaccess-wordpress/\">fonctionnement et l&rsquo;optimisation du fichier .htaccess</a> avec WordPress.</p>
<h3>Rappel sur l&rsquo;utilisation d&rsquo;un domaine avec &laquo;&nbsp;wordpress&nbsp;&raquo;</h3>
<p><a href=\"http://chrislema.com/this-is-why-you-dont-put-wordpress-in-a-domain-name/\">Chris Lema rappelle quelques éléments</a> concernant l’utilisation du terme WordPress&#8230; et un <a href=\"http://thewordpresshelpers.com/wordpress-trademark-lawsuit\">exemple d&rsquo;un cas concret</a> (en).</p>
<h3>Retour sur le WordCamp Europe 2015</h3>
<p><a href=\"http://www.kirstencassidy.com/wordcamp-europe-2015-in-review-day-one/\">Kirsten Cassidy</a> (en)</p>
<h3>Des shortcodes générés par ACF</h3>
<p>Si vous avez des shortcodes à gérer dans votre site web, ou si vous souhaitez vos y mettre, l&rsquo;<a href=\"http://www.absoluteweb.net/generateur-shortcodes-acf/\">extension ACF pourrait vous faciliter les choses</a>.</p>
<h3>We are WP</h3>
<p><a href=\"http://www.wearewp.pro/\">We are WP</a>, c&rsquo;est la nouvelle agence de conseils et d&rsquo;expertise WordPress créée par Emilie Lebrun et Thierry Pigot, membres éminents de la communauté française.</p>
<h3>Les parts de marché de WordPress dans le monde</h3>
<p>Daniel présente les parts de marché mondiale de WordPress. <a href=\"http://www.seomix.fr/parts-de-marche-wordpress/\">Un article très intéressant et instructif</a>.</p>
<h3>Du nouveau avec REST API</h3>
<p>Une <a href=\"http://wptavern.com/explore-the-wordpress-rest-api-with-the-new-interactive-console-plugin\">console REST API </a>est maintenant disponible. (en)</p>
<h3>WP Rocket, 2 ans après</h3>
<p>Voici déjà 2 ans que la fusée WP Rocket a décollé. <a href=\"http://blog.wp-rocket.me/fr/2-ans-bilan-retour-experience/\">A l&rsquo;heure du bilan</a>, autant dire que l&rsquo;optimisme est de rigueur. Une <a href=\"http://wptavern.com/wp-rocket-reports-355k-in-annual-revenue-after-2-years-in-business\">belle aventure de startup à la française (en)</a>. (<a href=\"http://blog.wp-rocket.me/2-years-reports-feedbacks/\">English version here</a>)</p>
<h3>Puisqu&rsquo;on vous dit d&rsquo;utiliser un thème enfant !</h3>
<p>On ne le répétera jamais assez&#8230; <a href=\"http://webdesignerhut.com/wordpress-child-themes/\">utilisez un thème enfant</a> ! (en)</p>
<h3>Gestion complète des menus</h3>
<p>Grégoire propose un <a href=\"http://www.gregoirenoyelle.com/gestion-des-menus-depuis-wordpress-3/\">tutoriel pour tout savoir des menus</a> dans WordPress.</p>
<h3>L&rsquo;extension pour les surveiller toutes</h3>
<p>L&rsquo;extension qui surveille les autres pour vous indiquer les failles de sécurité existe, il s&rsquo;agit de<a href=\"http://wpformation.com/plugin-failles-securite/\"> Plugin Security Scanner</a>.</p>
<h3>Automattic, Matt Mullenweg et Thesis&#8230; histoire d&rsquo;un conflit</h3>
<p>La <a href=\"https://poststatus.com/thesis-automattic-and-wordpress/\">longue histoire du conflit</a> qui oppose le thème Thesis à Automattic et Matt Mullenweg depuis 2010. (en)</p>
<h3>Comment styliser les formulaires de Gravity Forms</h3>
<p>La Marmite propose dans son menu de <a href=\"http://wpmarmite.com/gravity-forms-css/\">styliser vos formulaires de Gravity Forms</a>.</p>
<h3>Polylang et WooCommerce</h3>
<p>Retour d&rsquo;expérience de l&rsquo;utilisation de <a href=\"http://www.absoluteweb.net/polylang-grosse-deception/\">Polylang avec WooCommerce</a>.</p>
<h3>Mise à jour du livre &laquo;&nbsp;optimiser son référencement WordPress&nbsp;&raquo;</h3>
<p>Daniel Roch <a href=\"http://www.wp-referencement.fr/\">indique la mise à jour du livre</a> qu&rsquo;il a écrit concernant le référencement avec WordPress.</p>
<h3>Chrome 44 et WordPress</h3>
<p>Cette semaine, la <a href=\"http://www.imadarchid.com/un-bug-sur-chrome-44-beta-detruit-wordpress-et-dautres-logiciels/\">mise à jour 44 de Chrome</a> a entrainé un <a href=\"https://github.com/IshYoBoy/aaa-ishyoboy-google-chrome-44-ssl-fix\">problème avec WordPress</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=NRscrl4Ddlw:tH6Ix9sW9-g:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=NRscrl4Ddlw:tH6Ix9sW9-g:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/NRscrl4Ddlw\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"http://www.wordpress-fr.net/2015/07/24/lhebdo-wordpress-n262-communautes-retours-dexperience-astuces/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"http://www.wordpress-fr.net/2015/07/24/lhebdo-wordpress-n262-communautes-retours-dexperience-astuces/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:66:\"
		
		
		
		
		
				
		
		
		
		
		
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"L’Hebdo WordPress n°261 : WordCamp et WPMX Day – e-barcamp – Communautés\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/ZSQgxX9WNpE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"http://www.wordpress-fr.net/2015/06/23/lhebdo-wordpress-n261-wordcamp-et-wpmx-day-e-barcamp-communautes/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 23 Jun 2015 05:26:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:9:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Brèves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:14:\"Développement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:10:\"Podcasting\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:8:\"WordCamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:12:\"communautés\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7448\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:336:\"WordCamp Lyon 2015 J&#8217;ai eu la chance de participer au 1er WordCamp Lyon. Il s&#8217;est déroulé le 5 juin dernier sous le soleil du Rhône. Autant le dire tout de suite, c&#8217;était un grand événement ! UN belle réussite. Bravo aux organisateurs ! Voici quelques liens qui en parlent en des termes au moins aussi [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6530:\"<h3>WordCamp Lyon 2015</h3>
<p>J&rsquo;ai eu la chance de participer au 1er WordCamp Lyon. Il s&rsquo;est déroulé le 5 juin dernier sous le soleil du Rhône. Autant le dire tout de suite, c&rsquo;était un grand événement ! UN belle réussite. Bravo aux organisateurs !</p>
<p>Voici quelques liens qui en parlent en des termes au moins aussi élogieux que moi si ce n&rsquo;est plus :</p>
<ul>
<li><a href=\"http://eclozion360.com/wordcamp-lyon-2015/\">Des photos</a></li>
<li><a href=\"http://www.wp-spread.com/comment-travailler-en-equipe-autour-dun-projet-wordpress-wordcamp-lyon-2015/\">Le retour de Maxime BJ</a></li>
<li><a href=\"https://www.flickr.com/search/?text=WPLyon\">D&rsquo;autres photos</a></li>
<li><a href=\"http://wordpress.tv/event/wordcamp-lyon-2015/\">Déjà les conférences et ateliers sur WordPress.tv</a></li>
<li><a href=\"http://wpmarmite.com/wordcamp-lyon-2015/\">Une marmite qui déborde de retours</a></li>
<li><a href=\"http://www.jennybeaumont.com/results-2015-wordpress-maintenance-survey/\">Le sondage pre-WordCamp Lyon de Jenny</a></li>
<li><a href=\"https://lyon.wordcamp.org/2015/les-photos/\">Le site officiel dit merci !</a></li>
<li><a href=\"https://twitter.com/search?q=%23wplyon&amp;mode=news&amp;src=tyah\">#wplyon</a></li>
</ul>
<h3>WPMX Day 2015</h3>
<p>Le lendemain du WordCamp Lyon se déroulait à quelques centaines de km de Lyon, plus près de la côte Atlantique, le <a href=\"http://wpmx.org/retour-wpmx-day-2015/\">WPMX Day</a>.</p>
<ul>
<li><a href=\"http://www.lameleeadour.com/wpmx-day-6-juin-2015-a-biarritz-2/\">Un retour de cette journée.</a></li>
</ul>
<h3>Le premier e-barcamp de France</h3>
<p>L&rsquo;équipe de VFT a mis en place  fin mai un e-barcamp. L&rsquo;objectif était d&rsquo;appliquer le mode barcamp à un podcast. <a href=\"http://veryfrenchtrip.com/podcast/podcast-13-e-barcamp-1/\">Le résultat est en ligne ici</a>. En attendant la prochaine édition, VFT revient bientôt pour son traditionnel podcast <a href=\"http://veryfrenchtrip.com/annonce-podcast-14-organiser-des-meetups-wordpress/\">consacré cette fois aux meetups</a>. Restez connectés.</p>
<h3>La communauté WPFR sur Slack</h3>
<p>La communauté WordPress Francophone est sur Slack depuis un mois environ et ne cesse de grandir. <a href=\"http://boiteaweb.fr/wordpressfr-on-slack-8588.html\">Si ce n&rsquo;est pas encore faire venez nous rejoindre</a>.</p>
<h3>Des meetups partout&#8230; encore et toujours !</h3>
<p>La communauté est vivante et de plus en plus riche et active. Un nouveau groupe s&rsquo;est <a href=\"http://www.meetup.com/fr/WordPress-Lorraine/\">créé en Lorraine</a>.</p>
<p>Et le prochain et dernier meetup niçois avant les vacances, <a href=\"http://www.meetup.com/wordpress-in-nice/events/223309511/?a=ra1_te\">c&rsquo;est le 30 juin</a> !</p>
<h3>Glossaire des traductions françaises</h3>
<p>FX, bien connu des traducteurs en français, a réalisé <a href=\"https://fxbenard.com/glossaire-des-traductions-francaises-de-wordpress/\">un glossaire des traductions en français</a>. Un &laquo;&nbsp;<em>must have</em>&laquo;&nbsp;.</p>
<h3>La mode est au Wapuu</h3>
<p><a href=\"http://wptavern.com/introducing-the-wp-tavern-wapuu#comment-69209\">WP Tavern a son wapuu</a>&#8230; et maintenant la <a href=\"http://boiteaweb.fr/welcome-to-marcel-le-wapuu-de-la-communaute-francaise-8598.html\">France à le sien aussi</a> ! &#8230; Le<a href=\"http://wapuu.jp/about/\"> Wapuu c&rsquo;est ça au fait</a> !</p>
<h3>Un sondage sur WordPress</h3>
<p>Jenny Wong souhaite recueillir vos avis sur WordPress, <a href=\"https://docs.google.com/forms/d/1dkF1nbVCTawp7vq8pZd2SB8FIV2iwny01EtfbadnfoA/viewform?c=0&amp;w=1\">aidez-la (en)</a>.</p>
<h3>Arrêter de s&rsquo;arracher les cheveux en cherchant un thème</h3>
<p>Un article qui vous donne<a href=\"http://www.webmarketing-com.com/2015/03/25/36361-comment-arreter-de-sarracher-les-cheveux-en-recherchant-un-theme-wordpress\"> des pistes pour vos recherches de thèmes</a> !</p>
<h3>Un guide pour les Custom Page Template</h3>
<p>Apprenez à<a href=\"http://www.smashingmagazine.com/2015/06/19/wordpress-custom-page-templates/\"> personnaliser vos pages dans WordPress</a> (en).</p>
<h3>Theme Juice : Une configuration Vagrant pour les développeurs</h3>
<p>Vous êtes développeurs et souhaitez une nouvelle plateforme de développement, <a href=\"http://wptavern.com/theme-juice-a-new-vagrant-configuration-for-wordpress-development\">c&rsquo;est ici que ça passe</a> (en).</p>
<h3>Pas (que) du WordPress mais du PHP</h3>
<p>PHP et WordPress sont étroitement liés, c&rsquo;est pourquoi cet article peut vous intéresser : <a href=\"https://kinsta.com/blog/hhvm-vs-php-7/\">HHVM vs PHP7 (en)</a>.</p>
<h3>&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;-</h3>
<h3>Appel à la communauté francophone</h3>
<p>Vous avez déjà participé au développement du core de WordPress (vous savez, vous avez eu votre heure de gloire avec votre nom dans les crédits de WordPress ! :p ) ? Signalez-vous ici (ou sur le Slack), un recensement est en cours par Jenny Beaumont <img src=\"http://s.w.org/images/core/emoji/72x72/1f609.png\" alt=\"&#x1f609;\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>
<h3>Association WPFR nouvelle génération</h3>
<p>J&rsquo;ai ouïe dire que <span style=\"text-decoration: underline;\"><strong>les nouveaux statuts sont déposés en préfecture</strong></span> et validés ! <em>WPFR next gen, </em>c&rsquo;est parti ! On vous en dit plus très très très très bientôt ! #wpfrstatuts</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ZSQgxX9WNpE:Tg583M62sFc:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ZSQgxX9WNpE:Tg583M62sFc:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/ZSQgxX9WNpE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:109:\"http://www.wordpress-fr.net/2015/06/23/lhebdo-wordpress-n261-wordcamp-et-wpmx-day-e-barcamp-communautes/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"http://www.wordpress-fr.net/2015/06/23/lhebdo-wordpress-n261-wordcamp-et-wpmx-day-e-barcamp-communautes/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:48:\"
		
		
		
		
		
				
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"L’Hebdo WordPress n°260 : WooThemes – Slack – Insights\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/XyIbHAGFLdw/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"http://www.wordpress-fr.net/2015/06/03/lhebdo-wordpress-n260-woothemes-slack-insights/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 Jun 2015 05:27:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:7:\"Astuces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:10:\"automattic\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7445\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:359:\"Automattic acquiert WooThemes L&#8217;info de cette dernière quinzaine est sans aucun doute le rachat (en) de WooThemes (en) par Automattic (en). Le plus gros marchand de thèmes et le créateur du plus célèbre outil de e-commerce pour WordPress rejoint donc le giron de l&#8217;outil le plus puissant du web. 12e anniversaire de WordPress Que le [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3694:\"<h3>Automattic acquiert WooThemes</h3>
<p>L&rsquo;info de cette dernière quinzaine est sans aucun doute le <a href=\"https://poststatus.com/automattic-acquired-woocommerce-woothemes/\">rachat (en) </a>de <a href=\"http://www.woothemes.com/2015/05/woothemes-joins-automattic/\">WooThemes (en) </a>par <a href=\"http://ma.tt/2015/05/woomattic/\">Automattic (en)</a>. Le plus gros marchand de thèmes et le créateur du plus célèbre outil de e-commerce pour WordPress <a href=\"http://wpchannel.com/woothemes-automattic-acquisition-e-commerce/\">rejoint donc le giron</a> de l&rsquo;outil le plus puissant du web.</p>
<h3>12e anniversaire de WordPress</h3>
<p>Que le temps passe vite ! <a href=\"https://matt.wordpress.com/2015/05/27/wordpress-12th-birthday-cake/\">Déjà 12 ans </a>depuis le début du projet. (en) !</p>
<h3>WordPress.com lance Insights</h3>
<p>Il s&rsquo;agit d&rsquo;un <a href=\"http://wptavern.com/wordpress-com-launches-insights-better-stats-for-visualizing-publishing-trends\">meilleur outil de statistiques</a> qui apporte un certain nombres de changement à l&rsquo;interface actuelle.</p>
<h3>Une communauté WordPress en français sur Slack</h3>
<p>Un nouveau groupe a été créé sur la <a href=\"http://www.wp-spread.com/invitez-vous-sur-le-chat-wordpress-francophone-sur-slack/\">plateforme Slack</a>. Rejoignez le groupe dès que vous pouvez !</p>
<h3>Des tutos et ressources pour apprendre</h3>
<p><a href=\"https://matt.wordpress.com/2015/05/27/wordpress-12th-birthday-cake/\">Quelques tutoriels et ressources</a> diverses pour apprendre WordPress</p>
<h3>Renommer automatiquement les fichiers accentués sous WordPress</h3>
<p>Si vous avez des fichiers nommés <a href=\"http://wpchannel.com/renommer-automatiquement-fichiers-accentues-wordpress/\">avec des accents et que vous en avez assez de les renommer sans cesse</a>, cette extension est pour vous.</p>
<h3>La hiérarchie des templates</h3>
<p>Avec WordPress il est souvent utile de connaitre<a href=\"http://4design.xyz/wordpress-visualisez-la-hierarchie-des-templates\"> la hiérarchie des templates</a> pour travailler dans un thème notamment.</p>
<h3>11 exemples de sites WordPress</h3>
<p><a href=\"http://www.maintpress.com/blog/exemple-site-wordpress-bien-reussi/\">Voici 11 sites WordPress</a> qui semblent intéressants selon MaintPress.</p>
<h3>Connecter WordPress à OneNote de Microsoft</h3>
<p>Voici la solution pour connecter <a href=\"http://blogs.office.com/2015/05/22/onenote-welcomes-three-new-partners-cloudhq-equil-and-wordpress/\">un site WordPress avec un compte Microsoft OneNote (en)</a>.</p>
<p><em>NB : A celles et ceux qui vont au WordCamp Lyon, je leur dit : &laquo;&nbsp;A vendredi !&nbsp;&raquo;</em></p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=XyIbHAGFLdw:abkmUGnIo1g:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=XyIbHAGFLdw:abkmUGnIo1g:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/XyIbHAGFLdw\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"http://www.wordpress-fr.net/2015/06/03/lhebdo-wordpress-n260-woothemes-slack-insights/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"http://www.wordpress-fr.net/2015/06/03/lhebdo-wordpress-n260-woothemes-slack-insights/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:54:\"
		
		
		
		
		
				
		
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"L’Hebdo WordPress n°259 : Des événements WordPress – WordPress 4.3 – BuddyPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/LYVelJJ-s4U/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:120:\"http://www.wordpress-fr.net/2015/05/19/lhebdo-wordpress-n259-des-evenements-wordpress-wordpress-4-3-buddypress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 May 2015 05:13:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:7:\"Astuces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:14:\"Développement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:13:\"WordPress 4.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7441\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:323:\"Juin démarre sous le signe de WordPress Le début du mois de juin s&#8217;annonce riche en événements WordPress : 3 juin : WordPress in Alps 5 juin : WordCamp Lyon &#8211;&#62; Il reste des billets, attrapez-les tous ! (Au moment où j&#8217;écris ces lignes, il reste 2 places !!) 6 juin : WPMX Day WordPress [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4370:\"<h3>Juin démarre sous le signe de WordPress</h3>
<p>Le début du mois de juin s&rsquo;annonce riche en événements WordPress :</p>
<ul>
<li>3 juin : <a href=\"http://www.wp-spread.com/wordpress-in-alps-le-3-juin-ateliers-decouverte-wordpress/\">WordPress in Alps</a></li>
<li>5 juin : WordCamp Lyon &#8211;&gt; Il reste des billets, <a href=\"https://lyon.wordcamp.org/2015/billetterie/\">attrapez-les tous</a> ! (Au moment où j&rsquo;écris ces lignes, il reste 2 places !!)</li>
<li>6 juin : <a href=\"http://2015.wpmx.org/conferences/\">WPMX Day</a></li>
</ul>
<h3>WordPress 4.3 poursuit son développement</h3>
<p>L&rsquo;<a href=\"https://make.wordpress.org/core/2015/05/11/weekly-core-ui-meetings-for-4-3/\">interface utilisateur poursuit sa mue</a>&#8230; et le <a href=\"https://make.wordpress.org/core/2015/05/12/multisite-office-hours-recap-may-12-2015/\">côté multi-utilisateurs</a> évolue encore. (en)</p>
<h3>BuddyPress 2.3.0 beta 2</h3>
<p><a href=\"https://buddypress.org/2015/05/buddypress-2-3-0-beta-2/\">BuddyPress passe en 2e beta (en) </a>pour la version 2.3.0&#8230; et <a href=\"http://wptavern.com/buddypress-2-3-will-introduce-companion-stylesheets-for-wordpress-default-themes\">quelques nouveautés sont attendues</a> (en).</p>
<h3>WordPress c&rsquo;est de la merde !</h3>
<p><a href=\"http://www.seomix.fr/shitty-wordpress/\">Un titre accrocheur pour une argumentation </a>haute en couleur !</p>
<h3>Ajouter un menu de recherche par date ou taxonomie</h3>
<p>Grégoire présente un tutoriel précis sur la démarche à suivre pour <a href=\"http://www.gregoirenoyelle.com/wordpress-ajouter-menus-recherche-date-taxonomie/\">ajouter un menu de recherche par date ou taxonomie</a>.</p>
<h3>Les vidéos de LoopConf</h3>
<p>La chaine YouTube de LoopCon où l&rsquo;on peut<a href=\"https://www.youtube.com/channel/UCAwOVsWiMdlz6snWRF2HdSQ\"> retrouver toute leur vidéo relatives à WordPress</a>. (en)</p>
<h3>Les chiffres de la Rocket en avril</h3>
<p><a href=\"http://blog.wp-rocket.me/inside-wp-rocket-april-2015/\">WP Rocket présente régulièrement ses statistiques</a>&#8230; voici pour le mois d&rsquo;avril 2015. (en)</p>
<h3>WordPress et Microsoft Azure</h3>
<p>Microsoft Azure et WordPress, ça marche ! <a href=\"http://www.script-tutorials.com/scalable-wordpress-on-microsoft-azure/\">La preuve ici.</a> (en)</p>
<h3>Pourquoi paye-t-on pour WordPress 2e partie</h3>
<p><a href=\"http://www.wp-pro.fr/pourquoi-paye-t-on-pour-wordpress-une-solution-gratuite-2eme-partie/\">WP-Pro propose la 2e partie </a>de son analyse sur le fait que l&rsquo;on peut payer &laquo;&nbsp;du WordPress&nbsp;&raquo; alors que l&rsquo;application est gratuite.</p>
<h3>7 extensions de supports clients</h3>
<p>Si vous recherchiez de quoi gérer un support client, voici <a href=\"http://www.wpbeginner.com/plugins/6-best-help-desk-customer-support-plugins-for-wordpress/\">7 extensions WordPress qui devrait vous plaire. (en)</a></p>
<h3>Sécuriser WordPress</h3>
<p>MaintPress nous donne des pistes sur la façon de <a href=\"http://www.maintpress.com/blog/securiser-wordpress-comment-renforcer-securite-site-wordpress/\">mieux sécuriser WordPress</a>.</p>
<h3>L&rsquo;évolution de WordPress</h3>
<p>WordPress évolue inlassablement depuis 10 ans, <a href=\"http://neliosoftware.com/some-stats-on-the-evolution-of-the-wordpress-codebase/\">petite analyse de cette évolution (en)</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=LYVelJJ-s4U:XQf-hBBVWTY:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=LYVelJJ-s4U:XQf-hBBVWTY:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=LYVelJJ-s4U:XQf-hBBVWTY:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=LYVelJJ-s4U:XQf-hBBVWTY:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=LYVelJJ-s4U:XQf-hBBVWTY:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=LYVelJJ-s4U:XQf-hBBVWTY:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/LYVelJJ-s4U\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:116:\"http://www.wordpress-fr.net/2015/05/19/lhebdo-wordpress-n259-des-evenements-wordpress-wordpress-4-3-buddypress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"http://www.wordpress-fr.net/2015/05/19/lhebdo-wordpress-n259-des-evenements-wordpress-wordpress-4-3-buddypress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:54:\"
		
		
		
		
		
				
		
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"L’Hebdo WordPress n°258 : WordPress 4.3 – WordCamps &amp; Evénements WP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kwe0XgYW1P0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"http://www.wordpress-fr.net/2015/05/05/lhebdo-wordpress-n258-wordpress-4-3-wordcamps-evenements-wp/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 05 May 2015 05:25:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:7:\"Astuces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:14:\"Développement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"Podcasting\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7437\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:395:\"WordPress 4.3 est lancé Comme toujours, quelques jours après le déploiement d&#8217;une version majeur la suivante est aussitôt mise sur les rails. WordPress 4.3 est donc prévue pour le 18 août prochain et c&#8217;est Konstantin Obenland qui en prend les rênes. (en) Les premières pistes de réflexions sont ouvertes, notamment concernant l&#8217;éditeur. (en) WordPress 4.2.1 [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3621:\"<h3>WordPress 4.3 est lancé</h3>
<p>Comme toujours, quelques jours après le déploiement d&rsquo;une version majeur la suivante est aussitôt mise sur les rails. WordPress 4.3 est donc <a href=\"http://wp.me/p2AvED-3mD\">prévue pour le 18 août prochain</a> et c&rsquo;est Konstantin Obenland qui en prend les rênes. (en)</p>
<p>Les premières pistes de réflexions sont ouvertes, <a href=\"https://make.wordpress.org/core/2015/05/01/editor-wish-list-for-4-3/\">notamment concernant l&rsquo;éditeur</a>. (en)</p>
<h3>WordPress 4.2.1 : Première mise à jour mineure</h3>
<p>Une faille de sécurité a été décelée rapidement après la sortie de WordPress 4.2, <a href=\"http://t.co/O3MDAj635H\">le patch correctif </a>ne s&rsquo;est donc pas fait attendre (en).</p>
<h3>WordCamp Lyon : programme et surprises</h3>
<p>Le WordCamp Lyon avance et se précise. <a href=\"https://lyon.wordcamp.org/2015/programme/\">Le programme est connu</a> et on sait depuis peu qu&rsquo;un <a href=\"https://lyon.wordcamp.org/2015/nightswapping-vous-offre-2-nuits-a-lyon-pour-le-wordcamp/\">nouveau partenaire propose une surprise</a>.</p>
<h3>WordCamp Europe : les orateurs se dévoilent</h3>
<p>1ère surprise de taille, <a href=\"http://europe.wordcamp.org/2015/welcome-the-third-group-of-wceu-speakers/\">Xavier (notre Xavier) fait partie des orateurs </a>du prochains WordCamp Europe.</p>
<h3>WPMX Day</h3>
<p>Rappelons également que le lendemain du WordCamp Lyon se tiendra le <a href=\"http://2015.wpmx.org/\">WPMX Day</a>, événement majeur dans le Sud-Ouest de la France.</p>
<h3>Le 11e Podcast de Very French Trip</h3>
<p><a href=\"http://veryfrenchtrip.com/podcast/podcast-12-traduction-wordpress/\">Pour cette 11e édition</a>, la traduction est à l&rsquo;honneur avec des invités de marque que sont Xavier, Didier, François-Xavier, Mathieu et Grégoire.</p>
<h3>Les principes de hiérarchie dans le design visuel</h3>
<p>Un article qui parle de <a href=\"https://dailypost.wordpress.com/2015/04/29/the-principles-of-design-visual-hierarchy/\">design des sites web</a> raconté par un Automatticien. (en)</p>
<h3>WPRocket élue meilleure extension de cache</h3>
<p>WPSiteCare a élu <a href=\"http://www.wpsitecare.com/best-wordpress-plugins/\">WPRocket meilleure extension de cache de tous les temps</a> (en)&#8230; et retrouvez également le classement des autres meilleures extensions de tous les temps dans ce classement.</p>
<h3>Les événements WordPress sur une carte</h3>
<p>ManageWP.org a mis en ligne une <a href=\"https://managewp.org/events/\">carte interactive avec les différents événements WordPress </a>de la Planète. (en)</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kwe0XgYW1P0:5XuUlueSTRA:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kwe0XgYW1P0:5XuUlueSTRA:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kwe0XgYW1P0:5XuUlueSTRA:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kwe0XgYW1P0:5XuUlueSTRA:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kwe0XgYW1P0:5XuUlueSTRA:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kwe0XgYW1P0:5XuUlueSTRA:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kwe0XgYW1P0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"http://www.wordpress-fr.net/2015/05/05/lhebdo-wordpress-n258-wordpress-4-3-wordcamps-evenements-wp/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"http://www.wordpress-fr.net/2015/05/05/lhebdo-wordpress-n258-wordpress-4-3-wordcamps-evenements-wp/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:45:\"
		
		
		
		
		
				
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Le PHP Tour 2015 fait étape au Luxembourg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/tvrMTIYQIZg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"http://www.wordpress-fr.net/2015/05/01/le-php-tour-2015-fait-etape-au-luxembourg/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 May 2015 15:52:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"AFUP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7431\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:396:\"Nos amis de l&#8217;AFUP organisent le PHP Tour. Cette année, c&#8217;est le Luxembourg qui accueillera l&#8217;événement. L&#8217;AFUP nous a demandé de diffuser leur communiqué de presse, c&#8217;est donc avec plaisir que je m&#8217;exécute. En effet, PHP et WordPress ont des liens évidents et nos 2 communautés ont forcément des tonnes de choses en commun. L&#8217;entraide [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6349:\"<p><img class=\"alignleft size-full wp-image-7432\" src=\"http://www.wordpress-fr.net/wp-content/uploads/2015/05/afup.png\" alt=\"afup\" width=\"209\" height=\"99\" />Nos amis de l&rsquo;AFUP organisent le PHP Tour. Cette année, c&rsquo;est le Luxembourg qui accueillera l&rsquo;événement.</p>
<p>L&rsquo;AFUP nous a demandé de diffuser leur communiqué de presse, c&rsquo;est donc avec plaisir que je m&rsquo;exécute. En effet, PHP et WordPress ont des liens évidents et nos 2 communautés ont forcément des tonnes de choses en commun. L&rsquo;entraide de l&rsquo;open source est aussi ici.</p>
<h2>Le communiqué de presse de l&rsquo;AFUP</h2>
<blockquote>
<h3>Le PHP Tour Luxembourg 2015 dévoile son programme</h3>
<p><em><strong>Le Cloud mis à l&rsquo;honneur, et une large place accordée aux innovations du langage et aux retours d&rsquo;expérience de grandes entreprises</strong></em></p>
<p>Luxembourg-Ville aura le plaisir d&rsquo;accueillir l&rsquo;étape annuelle du cycle de conférences itinérant de l&rsquo;AFUP, les 12 et 13 mai, au sein de la prestigieuse abbaye de Neumünster. <strong>Le programme de cette édition est en ligne :  conférences anglophones, Cloud, PHP7 et workshops au menu de ces 2 jours 100 % PHP ! </strong></p>
<p>Comme l&rsquo;indiquait l&rsquo;appel à conférenciers, une partie de la programmation sera tournée vers le Cloud : son coût, sa sécurité, son installation&#8230; Nous aurons ainsi le plaisir d&rsquo;accueillir, parmi tant d&rsquo;autres, Philip Krenn pour « Perils of the Cloud », ou Maxime Thoonsen pour « Ansible pour le Cloud ». Vous saurez tout sur ce nouvel outil incontournable du Web ! Mais le programme se penche évidemment aussi sur le langage : Julien Pauli nous parlera de l&rsquo;avenir de PHP avec « En route vers PHP7 ! », Enrico Zimuel sera présent pour « Pushing Boundaries: Zend Framework 3 and the Future », ainsi que Michelangelo Van Dam pour « The continuous PHP Pipeline ». Enfin, de   nombreux  retours   d&rsquo;expérience   de   grandes   entreprises (Arté,   Canal+,   Mediapart&#8230;)   seront programmés, pour découvrir de quelle façon PHP est utilisé dans les plus grandes compagnies du Europe.</p>
<h3>Un programme pensé pour notre public anglophone</h3>
<p>Pour cette édition hors des frontières françaises, un soin particulier a été porté à l&rsquo;équilibre entre les conférences en français et celles en anglais : la moitié du programme propose des conférences anglophones. Pas d&rsquo;inquiétude cependant pour ceux que l&rsquo;anglais effraie : il y a toujours un talk en français programmé en face d&rsquo;une conférence anglophone.</p>
<h3>Apprenez en compagnie des meilleurs lors des workshops</h3>
<p>Le mercredi 13 mai verra des ateliers organisés en parallèle des conférences : 3h en petit groupe et en compagnie d&rsquo;experts du langage. Apprenez des meilleurs, en appliquant leurs conseils directement sur votre machine ! Le matin, Manuel Silvoso vous propose de vous initier à la sécurité des applications web. L&rsquo;après-midi, Patrick Allaert vous aidera à créer des extensions PHP. Ces deux ateliers sont sur inscription, et réservés aux visiteurs du PHP Tour Luxembourg</p>
<h3>Une édition luxembourgeoise exceptionnelle</h3>
<p>Le PHP Tour, lancé en 2011, est devenu un événement incontournable pour la communauté PHP. Cycle de conférences itinérant, il s&rsquo;est ainsi arrêté à Lille, Nantes et Lyon. Sa programmation pointue aborde les dernières innovations du langage, tout en profitant de ces étapes pour aborder des thématiques propres à la région d&rsquo;accueil et ses enjeux économiques. Cet événement au-delà des frontières françaises est une grande première pour l&rsquo;association, qui illustre par ce biais son intention de représenter les développeurs PHP francophones. Outre cette première édition d&rsquo;un événement AFUP hors des frontières françaises, 2015 marquera également les 20 ans de PHP et les 15 ans de l&rsquo;AFUP. Un double-anniversaire que l&rsquo;association compte bien célébrer tout au long de l&rsquo;année !</p>
<h5>Quelques mots sur l&rsquo;AFUP :</h5>
<p>L&rsquo;AFUP, Association Française des Utilisateurs de PHP, est une association loi 1901, qui a pour objectif principal de promouvoir le langage PHP auprès des professionnels et de participer à son développement.<br />
L&rsquo;AFUP a été créée pour répondre à un besoin croissant des entreprises, celui d&rsquo;avoir un interlocuteur unique pour répondre à leurs questions sur PHP.  Par ailleurs, l&rsquo;AFUP offre un cadre de rencontre et de ressources techniques pour les développeurs qui souhaitent faire avancer le langage PHP lui même.</p>
<h5>Pour en savoir plus :</h5>
<p>Le site du PHP Tour Luxembourg 2015 : <a href=\"http://www.phptour.org\">http://www.phptour.org</a><br />
Le site de l&rsquo;AFUP : <a href=\"http://www.afup.org\">http://www.afup.org</a><br />
Twitter : @afup</p>
<h5>Contact Presse :</h5>
<p>Amélie Deffrennes : communication@afup.org</p></blockquote>
<h1>Promotion spéciale WordPress Francophone</h1>
<p>L&rsquo;AFUP propose une réduction exceptionnelle de 50 euros sur le pass 2 jours pour les membres de la communauté WordPress Francophone  avec le code promo suivant : <em>AFUP&lt;3WORDPRESS</em></p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tvrMTIYQIZg:LL2SqHjRe8k:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tvrMTIYQIZg:LL2SqHjRe8k:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=tvrMTIYQIZg:LL2SqHjRe8k:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tvrMTIYQIZg:LL2SqHjRe8k:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tvrMTIYQIZg:LL2SqHjRe8k:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=tvrMTIYQIZg:LL2SqHjRe8k:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/tvrMTIYQIZg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"http://www.wordpress-fr.net/2015/05/01/le-php-tour-2015-fait-etape-au-luxembourg/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"http://www.wordpress-fr.net/2015/05/01/le-php-tour-2015-fait-etape-au-luxembourg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:63:\"
		
		
		
		
		
				
		
		
		
		
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"L’Hebdo WordPress n°257 : WordPress.org – Shortcake – WordPress 4.3 et 4.4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/RJyz4PUcZNA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:115:\"http://www.wordpress-fr.net/2015/04/28/lhebdo-wordpress-n257-wordpress-org-shortcake-wordpress-4-3-et-4-4/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 28 Apr 2015 05:15:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:8:{i:0;a:5:{s:4:\"data\";s:7:\"Brèves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:14:\"Développement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:7:\"Astuces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:9:\"shortcode\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:13:\"WordPress 4.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:13:\"WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7425\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:344:\"Il est des Hebdos que l&#8217;on pourrait renommer en Mensuel&#8230; celui-ci en fait partie ! Cela fait un mois que je n&#8217;ai pas écrit en ces lieux ! Mon ordinateur s&#8217;éloigne de moi ces temps-ci&#8230; il doit avoir d&#8217;autres chats à fouetter&#8230; Bref, me revoilà ! 😉 &#8230; et y a du lourd&#8230; du très [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8911:\"<p>Il est des Hebdos que l&rsquo;on pourrait renommer en Mensuel&#8230; celui-ci en fait partie ! Cela fait un mois que je n&rsquo;ai pas écrit en ces lieux !</p>
<p>Mon ordinateur s&rsquo;éloigne de moi ces temps-ci&#8230; il doit avoir d&rsquo;autres chats à fouetter&#8230; Bref, me revoilà ! <img src=\"http://s.w.org/images/core/emoji/72x72/1f609.png\" alt=\"&#x1f609;\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>
<p>&#8230; et y a du lourd&#8230; du très très lourd !</p>
<h3>Le programme du WordCamp Lyon 2015 est disponible !</h3>
<p>Le 1er WordCamp français en dehors de Paris poursuit sa route, et a mis en ligne l&rsquo;<a href=\"http://lyon.wordcamp.org/2015/programme/\">intégralité de son programme</a> ! On y retrouve des têtes connues, mais surtout de nombreux/ses orateurs/trices qui font pour la première fois une conférence dans un WordCamp ! Pour rappel, c&rsquo;est 5 juin 2015, <a href=\"http://lyon.wordcamp.org/2015/billetterie/\">achetez vos billets</a> !</p>
<h3>&#8230;et celui du WPMX Day 2015 également !</h3>
<p>Le lendemain du WC Lyon 2015 à l&rsquo;est de la France, l&rsquo;ouest de la France aura à son tour son évènement ! Le WPMX Day 2015, organisé par nos amis de l&rsquo;association WPMX, a également publié son <a href=\"http://2015.wpmx.org/conferences/\">programme de la journée</a>, qui mélange orateurs/trices confirmé-e-s et nouveaux noms intéressants. <a href=\"http://2015.wpmx.org/billet-wpmx-day-2015/\">La billetterie est ici</a> !</p>
<p><em>Celle ou celui qui enchaînera la participation aux deux événements gagnera un joli cadeau de la part de WPFR <img src=\"http://www.wordpress-fr.net/wp-includes/images/smilies/simple-smile.png\" alt=\":)\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></em></p>
<h3>WordPress.org évolue</h3>
<p><a href=\"https://wordpress.org/news/2015/04/improvements-to-wordpress-org/\">Plusieurs changements sont arrivés sur WordPress.org</a>&#8230; notamment sur les répertoires de thèmes et d&rsquo;extensions qui sont plus proches de l&rsquo;interface présente dans votre tableau de bord WordPress&#8230; et plein de détails à découvrir.</p>
<h3>WordPress 4.3 et 4.4 ont déjà leur leader</h3>
<p>WordPress 4.2 est à peine sorti que l&rsquo;équipe de développeurs est déjà organisé pour se lancer dans WordPress 4.3 et 4.4. <a href=\"https://make.wordpress.org/core/2015/04/01/release-leads-for-wordpress-4-3-and-4-4/\">Découvrez qui seront les chefs d&rsquo;équipes</a>. (en)</p>
<h3>Shortcake : Les shortcodes deviennent accessibles</h3>
<p>Les shortcodes, ces petits codes qui s&rsquo;insèrent dans notre texte pour intégrer un lecteur, ou toute autre fonctionnalité directement dans un contenu étaient jusque là réservé à une certaine élite. Maintenant, une extension vient démocratiser tout cela : <a href=\"http://wptavern.com/shortcake-is-now-a-wordpress-feature-plugin\">Shortcake </a>(en) est née.</p>
<h3>Nouvelle documentation technique</h3>
<p>La documentation technique officielle de WordPress a évolué. <a href=\"https://developer.wordpress.org/\">Découvrez-là</a>, c&rsquo;est très bien organisé ! (en)</p>
<h3>BuddyPress 2.2.3.1</h3>
<p>BuddyPress poursuit son chemin et se <a href=\"https://wordpress.org/plugins/buddypress/\">développe avec la version 2.2.3.1</a>.</p>
<h3>De la dette technique de WordPress</h3>
<p>Julien Oger propose un <a href=\"http://www.wp-pro.fr/pourquoi-100-ans-de-dettes-techniques-ne-mempechent-pas-de-travailler-avec-wordpress/\">article qui argumente sur la qualité du code de WordPress</a>.</p>
<h3>Renommer le &laquo;&nbsp;Happiness Bar&nbsp;&raquo; ?</h3>
<p>Qui ne connait pas le Happiness Bar aujourd&rsquo;hui ? Peut-être celles et ceux ne fréquentant pas encore les WordCamps&#8230; Le Happiness bar ne vend pas de boissons&#8230; mais propose du conseil et de l&rsquo;aide à qui en demande à propos de WordPress bien sur. <a href=\"http://mor10.com/it-is-time-to-rename-the-happiness-bar/\">Mor10 propose de changer le nom de ce lieu mythique</a> (en). Qu&rsquo;en pensez-vous ?</p>
<h3>Formation WordPress pour les sourds et malentendants</h3>
<p>Quand on m&rsquo;a proposé de présenter ce lien, je n&rsquo;ai pas hésité un instant. Cette formation pour le moins originale permet aux personnes sourdes et malentendantes de pouvoir bénéficier d&rsquo;une <a href=\"http://www.sourdoues.com/apprendre-a-creer-un-site-web-avec-wordpress-cours-video-en-LSF\">formation vidéo sur WordPress entièrement traduite en langue des signes</a>. Voici un sujet fort intéressant pour une future conférence de WordCamp non ? On y réfléchi <img src=\"http://s.w.org/images/core/emoji/72x72/1f609.png\" alt=\"&#x1f609;\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>
<h3>Checklist SEO</h3>
<p>Si vous souhaitez améliorer votre SEO, MaintPress propose une <a href=\"http://www.maintpress.com/blog/referencement-wordpress-checklist-ameliorer-seo-votre-site/\">checklist des éléments importants</a> à ne pas oublier.</p>
<h3>Hew : un nouveau thème gratuit</h3>
<p><a href=\"http://wptavern.com/hew-a-free-wordpress-blogging-theme-inspired-by-ryu\">Hew est le 67e thème gratuit</a> proposé par Automattic.</p>
<h3>Réflexion sur l&rsquo;open source et l&rsquo;entreprise</h3>
<p>Benjamin parle en connaissance de cause de <a href=\"http://www.wp-pro.fr/wordpress-lentreprise-et-lopen-source/\">la problématique entre le monde de l&rsquo;entreprise et celui plus libre de l&rsquo;open source</a>&#8230; au travers de son expérience WordPress. <a href=\"http://ma.tt/2015/04/giving-back-to-open-source/\">Même Matt en pense autant</a>. (en)</p>
<h3>Utiliser la marque WordPress ?</h3>
<p>Attention, tout n&rsquo;est pas permis en matière d&rsquo;utilisation de la marque WordPress. <a href=\"http://wpandlegalstuff.com/using-wordpress-trademarks-business-product-service/\">Revue des choses à faire et à ne pas faire</a> (en).</p>
<h3>MailPoet présente sa nouvelle recrue</h3>
<p>C&rsquo;est toujours un grand moment quand une startup WordPress recrute, c&rsquo;est encore le cas avec MailPoet qui vient de s&rsquo;agrandir d&rsquo;un nouveau membre : <a href=\"http://www.mailpoet.com/introducing-becs/\">Becs Rivett</a> (en)</p>
<h3>Le déploiement en Podcast</h3>
<p>C&rsquo;est le 11e podcast de Very French Trip et il est <a href=\"http://veryfrenchtrip.com/podcast/podcast-11-deploiement-wordpress/\">consacré au déploiement</a>.<br />
Je profite de ce message pour annoncer le prochain podcast qui s&rsquo;annonce d&rsquo;ores été déjà exceptionnel puisqu&rsquo;il va tenter de reprendre le modèle d&rsquo;un meetup/ barcamp mais en ligne&#8230;. pendant 2 H ! <a href=\"http://veryfrenchtrip.com/un-podcast-hors-serie/\">Inscrivez-vous !</a></p>
<h3>Une faille dans WP Super Cache</h3>
<p>L&rsquo;extension WP Super Cache a été victime ce mois-ci d&rsquo;une faille XSS. <a href=\"http://wptavern.com/persistent-xss-vulnerability-discovered-in-wp-super-cache-plugin\">Récit par Sarah Gooding</a>. (en)</p>
<h3>Optimiser et alléger ses images</h3>
<p>Comment optimiser et aléger ses images dans WordPress. <a href=\"http://wpformation.com/optimiser-images-wordpress/\">Fabrice apporte des pistes</a>.</p>
<h3>Optimiser wp-config.php</h3>
<p>Camille Latouche explique <a href=\"http://camillelatouche.com/wp-config-optimiser-securiser-wordpress/\">quelques régles de bases du wp-config.php</a>.</p>
<h3>Retour d&rsquo;expérience d&rsquo;un freelance</h3>
<p>Voici le <a href=\"https://easydigitaldownloads.com/blog/changing-face-ecommerce-wordpress/\">retour d&rsquo;expérience d&rsquo;un freelance</a> (en) qui avait tout abandonné pour se lancer&#8230;</p>
<h3>Créer une extension de fonctions globales</h3>
<p>Aurélien propose un tutoriel vidéo pour expliquer comment <a href=\"http://wpchannel.com/creer-plugin-fonctions-globales-site-wordpress/\">créer une extension de fonctions globales</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=RJyz4PUcZNA:gJwyABIwx70:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=RJyz4PUcZNA:gJwyABIwx70:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=RJyz4PUcZNA:gJwyABIwx70:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=RJyz4PUcZNA:gJwyABIwx70:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=RJyz4PUcZNA:gJwyABIwx70:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=RJyz4PUcZNA:gJwyABIwx70:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/RJyz4PUcZNA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"http://www.wordpress-fr.net/2015/04/28/lhebdo-wordpress-n257-wordpress-org-shortcake-wordpress-4-3-et-4-4/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"http://www.wordpress-fr.net/2015/04/28/lhebdo-wordpress-n257-wordpress-org-shortcake-wordpress-4-3-et-4-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:48:\"
		
		
		
		
		
				
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"Sortie de WordPress 4.2 « Powell »\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/7rIEKuN8IbY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"http://www.wordpress-fr.net/2015/04/24/sortie-de-wordpress-4-2-powell/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 24 Apr 2015 17:21:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:14:\"Développement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7418\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:381:\"La version 4.2 de WordPress, baptisée “Powell” en honneur du pianiste de jazz Bud Powell, est disponible en téléchargement ou via le système de mise à jour, depuis le tableau de bord votre installation de WordPress. Ses nouvelles fonctionnalités vous simplifient la communication et le partage, à l&#8217;échelle mondiale. Une manière plus simple de partager [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Xavier\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6947:\"<p>La version 4.2 de WordPress, baptisée “Powell” en honneur du pianiste de jazz <a href=\"https://fr.wikipedia.org/wiki/Bud_Powell\">Bud Powell</a>, est disponible en <a href=\"https://fr.wordpress.org/\">téléchargement</a> ou via le système de mise à jour, depuis le tableau de bord votre installation de WordPress. Ses nouvelles fonctionnalités vous simplifient la communication et le partage, à l&rsquo;échelle mondiale.</p>
<p><a href=\"http://www.wordpress-fr.net/2015/04/24/sortie-de-wordpress-4-2-powell/\"><em>Cliquer ici pour voir la vidéo.</em></a></p>
<h3><img class=\"alignright  wp-image-7419\" src=\"http://www.wordpress-fr.net/wp-content/uploads/2015/04/4.2-press-this-2-500x416.jpg\" alt=\"4.2-press-this-2\" width=\"327\" height=\"272\" />Une manière plus simple de partager votre contenu</h3>
<p>Sélectionnez, modifiez, publiez. Découvrez le nouveau Press This, largement amélioré. Depuis le menu <a href=\"http://xavier.borderie.net/blog/wp-admin/tools.php\">Outils</a>, ajoutez Press This à la barre de favoris de votre navigateur ou la page d&rsquo;accueil de votre appareil mobile. Une fois mis en place, vous pouvez partager votre contenu en ligne à la vitesse de la lumière. Il n’a jamais été aussi facile et rapide de partager vos vidéos, vos images ou vos contenus préférés !</p>
<div class=\"col\">
<h3><img class=\"  wp-image-7420 alignright\" src=\"http://www.wordpress-fr.net/wp-content/uploads/2015/04/4.2-characters-500x416.png\" alt=\"4.2-characters\" width=\"296\" height=\"246\" />Reconnaissance des caractères étendus</h3>
<p>L’écriture dans WordPress a été améliorée pour toutes les langues. WordPress 4.2 peut utiliser une multitude de nouveaux caractères par défaut, y compris les caractères natifs des écritures chinoises, japonaises et coréennes, ainsi que les symboles musicaux et mathématiques et les hiéroglyphes.</p>
<p>Vous n’utilisez aucun de ces caractères ? Vous pouvez malgré tout vous amuser avec — les caractères emoji sont maintenant disponibles dans WordPress ! Soyez créatifs et agrémentez votre contenu avec <img src=\"http://s.w.org/images/core/emoji/72x72/1f499.png\" alt=\"&#x1f499;\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />, <img src=\"http://s.w.org/images/core/emoji/72x72/1f438.png\" alt=\"&#x1f438;\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />, <img src=\"http://s.w.org/images/core/emoji/72x72/1f412.png\" alt=\"&#x1f412;\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />, <img src=\"http://s.w.org/images/core/emoji/72x72/1f355.png\" alt=\"&#x1f355;\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> ou n’importe quel autre <a href=\"https://codex.wordpress.org/Emoji\">emoji</a> !</p>
<h3><img class=\"alignright  wp-image-7421\" src=\"http://www.wordpress-fr.net/wp-content/uploads/2015/04/4.2-theme-switcher-300x230.png\" alt=\"4.2-theme-switcher-300x230\" width=\"198\" height=\"152\" />Changez de thème dans l’outil de personnalisation</h3>
<p>Parcourez et prévisualisez vos thèmes installés avec l’outil de personnalisation. Assurez-vous que ce thème est adapté à <em>votre</em> contenu avant de l’activer sur votre site.</p>
<h3><img class=\"  wp-image-7422 alignleft\" src=\"http://www.wordpress-fr.net/wp-content/uploads/2015/04/4.2-embeds-300x230.png\" alt=\"4.2-embeds-300x230\" width=\"198\" height=\"152\" />Encore plus contenus insérés</h3>
<p>Collez des liens vers Tumblr.com ou Kickstarter, et vous les verrez apparaître comme par magie directement dans l’éditeur. À chaque nouvelle version, votre approche de la publication et de la rédaction sont de plus en plus proches.</p>
<h3><img class=\"alignright  wp-image-7423\" src=\"http://www.wordpress-fr.net/wp-content/uploads/2015/04/4.2-plugins-300x230.png\" alt=\"4.2-plugins-300x230\" width=\"203\" height=\"156\" />Mises à jour simplifiée des extensions</h3>
<p>Adieu, triste écran de chargement ; bienvenue aux mises à jour d’extensions simples et sans bavure ! Cliquez sur <em>Mettre à jour maintenant</em> et laissez la magie s’opérer.</p>
<h3>Sous le capot</h3>
<div class=\"feature-section col two-col\">
<div>
<h4>Prise en charge du codage utf8mb4</h4>
<p>Le codage de caractères de la base de données est passé de utf8 à utf8mb4, ce qui ajoute la possibilité d’utiliser tout un jeu de nouveaux caractères encodés sur 4 octets.</p>
<h4>Accessibilité de JavaScript</h4>
<p>Vous pouvez maintenant envoyer des notifications sonores aux lecteurs d&rsquo;écran avec JavaScript grâce à <code>wp.a11y.speak()</code>. Passez une chaîne en argument, et une mise à jour sera envoyée à une zone de notification ARIA en temps réel. Un système de lecture de chaine est utilisé, et en envoie une mise à jour à un espace dédié de notifications ARIA live.</p>
</div>
<div class=\"last-feature\">
<h4>Séparation des termes partagés</h4>
<p>Les termes partagés entre plusieurs taxinomies seront dissociés les uns des autres lorsque l’un d’entre eux est mis à jour. Pour en savoir plus, rendez-vous sur la page du <a href=\"https://developer.wordpress.org/plugins/taxonomy/working-with-split-terms-in-wp-4-2/\">Manuel du développeur d’extensions</a> (en anglais).</p>
<h4>Ordonnancement complexe des requêtes</h4>
<p><code>WP_Query</code>, <code>WP_Comment_Query</code> et <code>WP_User_Query</code> peuvent maintenant utiliser un ordre complexe avec les clauses nommées des requêtes méta.</p>
<h3>L&rsquo;équipe</h3>
<p>Le chef de projet de cette version était Drew Jaynes, avec l&rsquo;aide de plus de 283 contributeurs &#8212; un nouveau record ! Ils sont tous listés sur l&rsquo;<a href=\"https://wordpress.org/news/2015/04/powell/\">article original</a> (dont cet article est une traduction).</p>
<p><em>À noter pour la version française : le mot &laquo;&nbsp;tag&nbsp;&raquo; n&rsquo;est plus traduit par &laquo;&nbsp;mot-clé&nbsp;&raquo;, mais par &laquo;&nbsp;étiquette&nbsp;&raquo; !</em></p>
</div>
</div>
</div>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=7rIEKuN8IbY:kosmtwYYAp4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=7rIEKuN8IbY:kosmtwYYAp4:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=7rIEKuN8IbY:kosmtwYYAp4:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=7rIEKuN8IbY:kosmtwYYAp4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=7rIEKuN8IbY:kosmtwYYAp4:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=7rIEKuN8IbY:kosmtwYYAp4:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/7rIEKuN8IbY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"http://www.wordpress-fr.net/2015/04/24/sortie-de-wordpress-4-2-powell/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"http://www.wordpress-fr.net/2015/04/24/sortie-de-wordpress-4-2-powell/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"La problématique des traductions officielles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/HP8wb-DawIU/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"http://www.wordpress-fr.net/2015/03/25/problematique-traductions/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Mar 2015 08:07:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7377\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:384:\"Merci à WordPress Francophone de m&#8217;accueillir une fois de plus ici, et cette fois-ci pour une problématique très spécifique : la traduction, et surtout le fait de devoir respecter ou non un terme officiel. Pour la petite histoire, je rédige une seconde version du livre &#171;&#160;Optimiser son référencement WordPress&#160;&#187;, et je suis une nouvelle fois [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Daniel Roch\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6495:\"<p>Merci à WordPress Francophone de m&rsquo;accueillir une fois de plus ici, et cette fois-ci pour une problématique très spécifique : la traduction, et surtout le fait de devoir respecter ou non un terme officiel.</p>
<p>Pour la petite histoire, je rédige une seconde version du livre &laquo;&nbsp;Optimiser son référencement WordPress&nbsp;&raquo;, et je suis une nouvelle fois confronté à une problématique de traduction toute simple : doit-on dire &laquo;&nbsp;Plugin&nbsp;&raquo;, &laquo;&nbsp;Plug-in&nbsp;&raquo;, &laquo;&nbsp;Module&nbsp;&raquo; ou &laquo;&nbsp;Extension&nbsp;&raquo; ?</p>
<h2>Quel terme est le plus utilisé ?</h2>
<p>Théoriquement, la seule et unique réponse est &laquo;&nbsp;Extension&nbsp;&raquo;, car c&rsquo;est le terme officiel dans la traduction de WordPress. Dans l&rsquo;administration de votre site, vous avez bien un menu &laquo;&nbsp;Extensions&nbsp;&raquo;, et non pas un menu &laquo;&nbsp;Plugins.</p>
<p>A vrai dire, la première fois que j&rsquo;ai été confronté à ce problème de traduction a été lorsque mon éditeur m&rsquo;a indiqué que je devais parler de &laquo;&nbsp;plug-in&nbsp;&raquo; dans le livre, terme qui est pour eux la traduction officielle pour tout CMS et outil confondu. L&rsquo;utilisation de cette appellation avec un tiret est assez étrange, et la question que je me pose à nouveau est donc assez simple. Doit-on utiliser :</p>
<ul>
<li>le terme officiel de WordPress : Extension ;</li>
<li>le terme le plus souvent utilisé par la communauté : Plugin ;</li>
<li>un autre terme utilisé par une partie de la communauté : Module ;</li>
<li>le terme le plus couramment utilisé par certains éditeurs : Plug-in.</li>
</ul>
<p>Pour y répondre, nous avons fait <a href=\"http://goo.gl/forms/QxdLW0t7IT\">un petit sondage en ligne</a>, et la réponse est sans appel : le terme le plus utilisé de loin est bien &laquo;&nbsp;Plugin&nbsp;&raquo; :</p>
<p><a href=\"http://www.wordpress-fr.net/wp-content/uploads/2015/02/traduction-plugin-wordpress.jpg\"><img class=\"aligncenter size-large wp-image-7379\" src=\"http://www.wordpress-fr.net/wp-content/uploads/2015/02/traduction-plugin-wordpress-500x268.jpg\" alt=\"Traduction de Plugin ou Extension\" width=\"500\" height=\"268\" /></a></p>
<p>PS : pour avoir les derniers chiffres à jour de l&rsquo;étude, les résultats sont <a href=\"https://docs.google.com/forms/d/1NC6jUscKtuYXBaeFS6pmzjw-TpbI7RZzPqcfHVflBS0/viewanalytics?usp=form_confirm\">ici</a>.</p>
<h2>Pourquoi une différence entre traduction et usage ?</h2>
<p>Cette différence entre la traduction officielle et l&rsquo;usage le plus courant provient de plusieurs choses :</p>
<ul>
<li>&laquo;&nbsp;Plugin&nbsp;&raquo; est le terme anglais, et une grande partie de la communauté WordPress mondiale parle anglais. Il est donc assez facile et naturel de reprendre le terme anglophone sans le traduire.</li>
<li>De nombreux sites et articles français utilise de manière naturelle le terme &laquo;&nbsp;Plugin&nbsp;&raquo; plutôt que &laquo;&nbsp;Extension&nbsp;&raquo; (moi le premier).</li>
</ul>
<p>C&rsquo;est assez marrant d&rsquo;ailleurs de voir des pratiques complètement différentes en fonction des sites ou livres. Par exemple :</p>
<ul>
<li>Le livre &laquo;&nbsp;<em>WordPress 3 pour un blogueur efficace</em>&nbsp;&raquo; et les sites WordPress Francophone et FxBénard utilisent bien le terme officiel &laquo;&nbsp;Extension&nbsp;&raquo; ;</li>
<li>Le livre &laquo;&nbsp;<em>Optimiser son référencement WordPress</em>&nbsp;&raquo; est le seul à utiliser &laquo;&nbsp;Plug-in&nbsp;&raquo; ;</li>
<li>Les sites Geekpress, WPChannel, WPMarmite, WPRocket, BoiteAWeb, SeoMix, Wabeo ou encore ScreenFeed utilisent &laquo;&nbsp;Plugin&nbsp;&raquo;.</li>
</ul>
<p>On se retrouve donc avec des sites et ouvrages communautaires utilisant des termes différents pour désigner une seule et même chose.</p>
<h2>Doit-on changer nos pratiques ?</h2>
<p>Cet article a un but simple et j&rsquo;aimerais avoir les avis de toute la communauté : doit-on modifier une traduction officielle ou pas ?</p>
<p>La logique de base voudrait que l&rsquo;on change le terme par celui le plus utilisé par chacun. Nous n&rsquo;aurions alors qu&rsquo;un seul terme pour désigner cet aspect de WordPress, rendant ainsi plus explicite pour tous l&rsquo;administration du CMS ou encore la lecture d&rsquo;articles et de tutoriels.</p>
<p>Le hic, c&rsquo;est que si jamais on modifiait cette traduction, on se retrouverait confronté à un énorme problème d&rsquo;ergonomie : lors du changement, un certains nombre d&rsquo;utilisateurs risqueraient d&rsquo;être perdus puisque le terme a changé dans l&rsquo;interface d&rsquo;administration. Pire encore, d&rsquo;autres plugins et thèmes pouvaient récupérer la valeur de la traduction de cette chaîne pour l&rsquo;utiliser ailleurs, ce qui lors du changement pourrait provoquer certaines incohérences.</p>
<p>L&rsquo;autre solution, c&rsquo;est de nous forcer nous à changer nos appellations. Chaque membre de la communauté devrait alors remplacer de manière systématique sa manière de nommer les &laquo;&nbsp;modules&nbsp;&raquo; de WordPress. Mais vient alors ma vision de consultant en référencement naturel : pourquoi appeler un élément &laquo;&nbsp;Extension&nbsp;&raquo; si une plus grande majorité de personnes utilise un autre terme lors de ses recherches sur le web&#8230;</p>
<p>Je reste donc assez mitigé sur le sujet. Et vous, quel est votre avis ?</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HP8wb-DawIU:ldwY5DxtbyI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HP8wb-DawIU:ldwY5DxtbyI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=HP8wb-DawIU:ldwY5DxtbyI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HP8wb-DawIU:ldwY5DxtbyI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HP8wb-DawIU:ldwY5DxtbyI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=HP8wb-DawIU:ldwY5DxtbyI:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/HP8wb-DawIU\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"http://www.wordpress-fr.net/2015/03/25/problematique-traductions/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"43\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://www.wordpress-fr.net/2015/03/25/problematique-traductions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:54:\"
		
		
		
		
		
				
		
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"L’Hebdo WordPress n°256 : WordPress 4.2 – Traduction – Astuces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/9nrX3qezB3Y/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"http://www.wordpress-fr.net/2015/03/24/lhebdo-wordpress-n256-wordpress-4-2-traduction-astuces/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Mar 2015 06:52:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:14:\"Développement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"Traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:5:\"Hebdo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:13:\"WordPress 4.2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7406\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:381:\"WordPress 4.2 beta 2 La 2e beta de WordPress 4.2 (en) est disponible pour les tests. Des nouvelles de l&#8217;équipe de traduction Le WordCamp London a été l&#8217;occasion de parler de la traduction. Avec notamment l&#8217;arrivée d&#8217;une version française de Belgique (en). Nouvelle gestion des équipes de traduction (en). Le guide de la maintenance WordPress [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2942:\"<h3>WordPress 4.2 beta 2</h3>
<p>La<a href=\"https://wordpress.org/news/2015/03/wordpress-4-2-beta-2/\"> 2e beta de WordPress 4.2</a> (en) est disponible pour les tests.</p>
<h3>Des nouvelles de l&rsquo;équipe de traduction</h3>
<ul>
<li>Le WordCamp London a été l&rsquo;occasion de parler de la traduction. Avec notamment l&rsquo;arrivée d&rsquo;une <a href=\"https://make.wordpress.org/polyglots/2015/03/20/polyglots-team-wordcamp-london-contributor-day\">version française de Belgique (en)</a>.</li>
<li><a href=\"https://make.wordpress.org/polyglots/2015/03/19/per-project-permissions-for-translation-editors-previously-validators\">Nouvelle gestion des équipes de traduction (en)</a>.</li>
</ul>
<h3>Le guide de la maintenance WordPress</h3>
<p>MaintPress propose <a href=\"http://www.maintpress.com/blog/maintenance-wordpress-guide/\">un guide de la maintenance avec WordPress</a>.</p>
<h3>Des failles dans WPML</h3>
<p>L&rsquo;<a href=\"http://www.zdnet.fr/actualites/plugin-wpml-400000-sites-exposes-a-des-failles-sur-wordpress-39816484.htm\">extension WPML a été exposée à des failles de sécurité importantes</a>. Réactive, l&rsquo;équipe de développement a publié une version qui corrige les problèmes.</p>
<h3>Pourquoi une agence a abandonné WordPress ?</h3>
<p>Un retour de Thierry sur une <a href=\"http://www.wp-pro.fr/pourquoi-une-agence-a-abandonne-wordpress/\">mauvaise expérience avec WordPress</a>.</p>
<h3>Le syndrome du sapin de Noël</h3>
<p>Un article qui m&rsquo;a fait plaisir et que je ne saurai que trop recommander ! <a href=\"http://wpmarmite.com/syndrome-sapin-de-noel/\">Le syndrôme Sapin de Noël </a>vous connaissez ? un site qui brille de 1000 feux n&rsquo;est pas toujours une bonne chose, lisez cet article vous verrez !</p>
<h3>10 conseils pour sécuriser son site WordPress</h3>
<p>Le JDN propose <a href=\"http://www.journaldunet.com/solutions/dsi/securiser-son-wordpress/\">10 conseils de sécurité</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=9nrX3qezB3Y:ko9TM8Tx8sU:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=9nrX3qezB3Y:ko9TM8Tx8sU:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=9nrX3qezB3Y:ko9TM8Tx8sU:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=9nrX3qezB3Y:ko9TM8Tx8sU:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=9nrX3qezB3Y:ko9TM8Tx8sU:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=9nrX3qezB3Y:ko9TM8Tx8sU:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/9nrX3qezB3Y\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"http://www.wordpress-fr.net/2015/03/24/lhebdo-wordpress-n256-wordpress-4-2-traduction-astuces/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"http://www.wordpress-fr.net/2015/03/24/lhebdo-wordpress-n256-wordpress-4-2-traduction-astuces/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:48:\"http://feeds.feedburner.com/WordpressFrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:9:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:44:\"http://www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:13:\"last-modified\";s:29:\"Wed, 05 Aug 2015 19:12:38 GMT\";s:4:\"date\";s:29:\"Wed, 05 Aug 2015 19:40:27 GMT\";s:7:\"expires\";s:29:\"Wed, 05 Aug 2015 19:40:27 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:18:\"alternate-protocol\";s:11:\"80:quic,p=0\";s:13:\"accept-ranges\";s:4:\"none\";s:4:\"vary\";s:15:\"Accept-Encoding\";}s:5:\"build\";s:14:\"20150805191846\";}","no");
INSERT INTO `xr7h81hn_options` VALUES("130","_transient_timeout_feed_mod_66a70e9599b658d5cc038e8074597e7c","1438846827","no");
INSERT INTO `xr7h81hn_options` VALUES("131","_transient_feed_mod_66a70e9599b658d5cc038e8074597e7c","1438803627","no");
INSERT INTO `xr7h81hn_options` VALUES("132","_transient_timeout_feed_96281909e104f3c547a3bba0b6d36ad5","1438846827","no");
INSERT INTO `xr7h81hn_options` VALUES("133","_transient_feed_96281909e104f3c547a3bba0b6d36ad5","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"


\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"
	
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
		
		
		
	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"http://www.wordpress-fr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"La communauté francophone autour du CMS WordPress et son écosystème\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 25 Jul 2015 06:56:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"http://wordpress.org/?v=4.2.1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:51:\"
		
		
		
		
		
				
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"L’Hebdo WordPress n°262 : Communautés – Retours d’expérience – Astuces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"http://feedproxy.google.com/~r/feedburner/cjgL/~3/0Fxaf6P1QkI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"http://www.wordpress-fr.net/2015/07/24/lhebdo-wordpress-n262-communautes-retours-dexperience-astuces/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 24 Jul 2015 17:56:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:7:\"Astuces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Brèves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:12:\"communautés\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:5:\"Hebdo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7456\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:368:\"WordPress 4.2.3 : mise à jour de sécurité Une 3e mise à jour mineure vient corriger une faille de sécurité détectée plus tôt. La communauté française grandie Jenny Beaumont a fait un résumé de l&#8217;histoire (en) de la communauté française de WordPress&#8230; et Émilie vous dit pourquoi en faire partie. 14e Podcast VFT : l&#8217;animation [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8467:\"<h3>WordPress 4.2.3 : mise à jour de sécurité</h3>
<p>Une <a href=\"http://wptavern.com/wordpress-4-2-3-is-a-critical-security-release-fixes-an-xss-vulnerability\">3e mise à jour mineure </a>vient <a href=\"https://wordpress.org/news/2015/07/wordpress-4-2-3/\">corriger </a>une faille de sécurité détectée plus tôt.</p>
<h3>La communauté française grandie</h3>
<p>Jenny Beaumont a fait <a href=\"https://poststatus.com/growth-in-the-french-community/\">un résumé de l&rsquo;histoire (en)</a> de la communauté française de WordPress&#8230; et <a href=\"http://www.wp-pro.fr/pourquoi-rejoindre-la-communaute-wordpress/\">Émilie vous dit pourquoi en faire partie</a>.</p>
<h3>14e Podcast VFT : l&rsquo;animation d&rsquo;une communauté locale</h3>
<p>Entourés de Valérie et Nicolas, l&rsquo;équipe de VFT <a href=\"http://veryfrenchtrip.com/podcast/podcast-14-animation-locale-wordpress/\">nous donne des pistes pour animer une communauté locale</a>.</p>
<h3>Le WP Tech 2015 a une salle !</h3>
<p>Le lieu du prochain WP Tech <a href=\"http://2015.wptech.fr/lieu/\">est connu</a>, ce sera la faculté de Pharmacie en plein centre de Nantes.</p>
<h3>Des retours du WPMX Day, des vrais (cette fois !)</h3>
<p>J&rsquo;avais fait une erreur dans mon dernier hebdo et confondu des liens&#8230; et je n&rsquo;a pas fait la mise à jour&#8230; dont acte !</p>
<ul>
<li><a href=\"http://www.myleneb.fr/wpmx-day-2015-mes-impressions/\">Mylène Boyrie</a></li>
<li><a href=\"http://www.ohmyweb.fr/retour-sur-le-wpmx-day-du-6-juin-2/\">Oh My Web</a></li>
<li><a href=\"http://www.goodness.fr/2015/06/13/referencement-wordpress-wpmx-2015/\">Goodness</a></li>
<li><a href=\"http://www.inpixelitrust.fr/blog/faites-rentrer-votre-elephant-dans-une-smart-bonnes-pratiques-sur-mobiles-ma-conference-au-wpmx-day-2015/\">Stéphanie Walter</a></li>
</ul>
<h3>Quelques nouvelles des WordCamps dans le monde</h3>
<p>Les WordCamps français n&rsquo;étant pas les seuls au monde, <a href=\"https://wordpress.org/news/2015/07/wordcamps-update/\">voici du nouveau sur le reste du Monde</a> ! (en) &#8230; avec un clin d’œil à Fabrice Ducarme, bien connu de notre communauté&#8230; et le premier <a href=\"http://ma.tt/2015/07/wcus-philadelphia/\">WordCamp US</a> aura lieu à Philadelphie&#8230;</p>
<h3>WordPress 4.3 : revue de travaux</h3>
<ul>
<li><a href=\"http://wptavern.com/wordpress-4-3-adds-new-site-icons-feature-and-a-text-editor-to-press-this\">Favicon et Press This</a> (en)</li>
<li><a href=\"http://wptavern.com/wordpress-4-3-improves-user-search-and-turns-comments-off-on-pages-by-default\">Fermeture de commentaire et recherche améliorée</a> (en)</li>
</ul>
<h3>Jetpack 3.6 débarque</h3>
<p>Cette <a href=\"http://wptavern.com/jetpack-3-6-adds-the-ability-to-manage-your-connections-to-jetpack\">nouvelle version</a> peut désormais gérer vos connexions aux réseaux sociaux. (en)</p>
<h3>Focus sur le répertoire de thème officiel</h3>
<p>L&rsquo;équipe en charge du répertoire officiel de thème de WordPress se concentre sur l&rsquo;amélioration du répertoire officiel de thèmes. <a href=\"http://wptavern.com/wordpress-theme-review-team-unanimously-approves-roadmap-to-improve-directory-and-review-process\">Une réorganisation de l&rsquo;équipe est en cours</a>. (en)</p>
<h3>Le fichier htaccess avec WordPress</h3>
<p>MaintPress explique le <a href=\"http://www.maintpress.com/blog/htaccess-wordpress/\">fonctionnement et l&rsquo;optimisation du fichier .htaccess</a> avec WordPress.</p>
<h3>Rappel sur l&rsquo;utilisation d&rsquo;un domaine avec &laquo;&nbsp;wordpress&nbsp;&raquo;</h3>
<p><a href=\"http://chrislema.com/this-is-why-you-dont-put-wordpress-in-a-domain-name/\">Chris Lema rappelle quelques éléments</a> concernant l’utilisation du terme WordPress&#8230; et un <a href=\"http://thewordpresshelpers.com/wordpress-trademark-lawsuit\">exemple d&rsquo;un cas concret</a> (en).</p>
<h3>Retour sur le WordCamp Europe 2015</h3>
<p><a href=\"http://www.kirstencassidy.com/wordcamp-europe-2015-in-review-day-one/\">Kirsten Cassidy</a> (en)</p>
<h3>Des shortcodes générés par ACF</h3>
<p>Si vous avez des shortcodes à gérer dans votre site web, ou si vous souhaitez vos y mettre, l&rsquo;<a href=\"http://www.absoluteweb.net/generateur-shortcodes-acf/\">extension ACF pourrait vous faciliter les choses</a>.</p>
<h3>We are WP</h3>
<p><a href=\"http://www.wearewp.pro/\">We are WP</a>, c&rsquo;est la nouvelle agence de conseils et d&rsquo;expertise WordPress créée par Emilie Lebrun et Thierry Pigot, membres éminents de la communauté française.</p>
<h3>Les parts de marché de WordPress dans le monde</h3>
<p>Daniel présente les parts de marché mondiale de WordPress. <a href=\"http://www.seomix.fr/parts-de-marche-wordpress/\">Un article très intéressant et instructif</a>.</p>
<h3>Du nouveau avec REST API</h3>
<p>Une <a href=\"http://wptavern.com/explore-the-wordpress-rest-api-with-the-new-interactive-console-plugin\">console REST API </a>est maintenant disponible. (en)</p>
<h3>WP Rocket, 2 ans après</h3>
<p>Voici déjà 2 ans que la fusée WP Rocket a décollé. <a href=\"http://blog.wp-rocket.me/fr/2-ans-bilan-retour-experience/\">A l&rsquo;heure du bilan</a>, autant dire que l&rsquo;optimisme est de rigueur. Une <a href=\"http://wptavern.com/wp-rocket-reports-355k-in-annual-revenue-after-2-years-in-business\">belle aventure de startup à la française (en)</a>. (<a href=\"http://blog.wp-rocket.me/2-years-reports-feedbacks/\">English version here</a>)</p>
<h3>Puisqu&rsquo;on vous dit d&rsquo;utiliser un thème enfant !</h3>
<p>On ne le répétera jamais assez&#8230; <a href=\"http://webdesignerhut.com/wordpress-child-themes/\">utilisez un thème enfant</a> ! (en)</p>
<h3>Gestion complète des menus</h3>
<p>Grégoire propose un <a href=\"http://www.gregoirenoyelle.com/gestion-des-menus-depuis-wordpress-3/\">tutoriel pour tout savoir des menus</a> dans WordPress.</p>
<h3>L&rsquo;extension pour les surveiller toutes</h3>
<p>L&rsquo;extension qui surveille les autres pour vous indiquer les failles de sécurité existe, il s&rsquo;agit de<a href=\"http://wpformation.com/plugin-failles-securite/\"> Plugin Security Scanner</a>.</p>
<h3>Automattic, Matt Mullenweg et Thesis&#8230; histoire d&rsquo;un conflit</h3>
<p>La <a href=\"https://poststatus.com/thesis-automattic-and-wordpress/\">longue histoire du conflit</a> qui oppose le thème Thesis à Automattic et Matt Mullenweg depuis 2010. (en)</p>
<h3>Comment styliser les formulaires de Gravity Forms</h3>
<p>La Marmite propose dans son menu de <a href=\"http://wpmarmite.com/gravity-forms-css/\">styliser vos formulaires de Gravity Forms</a>.</p>
<h3>Polylang et WooCommerce</h3>
<p>Retour d&rsquo;expérience de l&rsquo;utilisation de <a href=\"http://www.absoluteweb.net/polylang-grosse-deception/\">Polylang avec WooCommerce</a>.</p>
<h3>Mise à jour du livre &laquo;&nbsp;optimiser son référencement WordPress&nbsp;&raquo;</h3>
<p>Daniel Roch <a href=\"http://www.wp-referencement.fr/\">indique la mise à jour du livre</a> qu&rsquo;il a écrit concernant le référencement avec WordPress.</p>
<h3>Chrome 44 et WordPress</h3>
<p>Cette semaine, la <a href=\"http://www.imadarchid.com/un-bug-sur-chrome-44-beta-detruit-wordpress-et-dautres-logiciels/\">mise à jour 44 de Chrome</a> a entrainé un <a href=\"https://github.com/IshYoBoy/aaa-ishyoboy-google-chrome-44-ssl-fix\">problème avec WordPress</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=NRscrl4Ddlw:tH6Ix9sW9-g:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=NRscrl4Ddlw:tH6Ix9sW9-g:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/NRscrl4Ddlw\" height=\"1\" width=\"1\" alt=\"\"/><img src=\"http://feeds.feedburner.com/~r/feedburner/cjgL/~4/0Fxaf6P1QkI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"http://www.wordpress-fr.net/2015/07/24/lhebdo-wordpress-n262-communautes-retours-dexperience-astuces/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:2:{i:0;a:5:{s:4:\"data\";s:101:\"http://www.wordpress-fr.net/2015/07/24/lhebdo-wordpress-n262-communautes-retours-dexperience-astuces/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/NRscrl4Ddlw/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:66:\"
		
		
		
		
		
				
		
		
		
		
		
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"L’Hebdo WordPress n°261 : WordCamp et WPMX Day – e-barcamp – Communautés\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"http://feedproxy.google.com/~r/feedburner/cjgL/~3/QVV623BdIII/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"http://www.wordpress-fr.net/2015/06/23/lhebdo-wordpress-n261-wordcamp-et-wpmx-day-e-barcamp-communautes/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 23 Jun 2015 05:26:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:9:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Brèves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:14:\"Développement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:10:\"Podcasting\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:8:\"WordCamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:12:\"communautés\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7448\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:336:\"WordCamp Lyon 2015 J&#8217;ai eu la chance de participer au 1er WordCamp Lyon. Il s&#8217;est déroulé le 5 juin dernier sous le soleil du Rhône. Autant le dire tout de suite, c&#8217;était un grand événement ! UN belle réussite. Bravo aux organisateurs ! Voici quelques liens qui en parlent en des termes au moins aussi [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6632:\"<h3>WordCamp Lyon 2015</h3>
<p>J&rsquo;ai eu la chance de participer au 1er WordCamp Lyon. Il s&rsquo;est déroulé le 5 juin dernier sous le soleil du Rhône. Autant le dire tout de suite, c&rsquo;était un grand événement ! UN belle réussite. Bravo aux organisateurs !</p>
<p>Voici quelques liens qui en parlent en des termes au moins aussi élogieux que moi si ce n&rsquo;est plus :</p>
<ul>
<li><a href=\"http://eclozion360.com/wordcamp-lyon-2015/\">Des photos</a></li>
<li><a href=\"http://www.wp-spread.com/comment-travailler-en-equipe-autour-dun-projet-wordpress-wordcamp-lyon-2015/\">Le retour de Maxime BJ</a></li>
<li><a href=\"https://www.flickr.com/search/?text=WPLyon\">D&rsquo;autres photos</a></li>
<li><a href=\"http://wordpress.tv/event/wordcamp-lyon-2015/\">Déjà les conférences et ateliers sur WordPress.tv</a></li>
<li><a href=\"http://wpmarmite.com/wordcamp-lyon-2015/\">Une marmite qui déborde de retours</a></li>
<li><a href=\"http://www.jennybeaumont.com/results-2015-wordpress-maintenance-survey/\">Le sondage pre-WordCamp Lyon de Jenny</a></li>
<li><a href=\"https://lyon.wordcamp.org/2015/les-photos/\">Le site officiel dit merci !</a></li>
<li><a href=\"https://twitter.com/search?q=%23wplyon&amp;mode=news&amp;src=tyah\">#wplyon</a></li>
</ul>
<h3>WPMX Day 2015</h3>
<p>Le lendemain du WordCamp Lyon se déroulait à quelques centaines de km de Lyon, plus près de la côte Atlantique, le <a href=\"http://wpmx.org/retour-wpmx-day-2015/\">WPMX Day</a>.</p>
<ul>
<li><a href=\"http://www.lameleeadour.com/wpmx-day-6-juin-2015-a-biarritz-2/\">Un retour de cette journée.</a></li>
</ul>
<h3>Le premier e-barcamp de France</h3>
<p>L&rsquo;équipe de VFT a mis en place  fin mai un e-barcamp. L&rsquo;objectif était d&rsquo;appliquer le mode barcamp à un podcast. <a href=\"http://veryfrenchtrip.com/podcast/podcast-13-e-barcamp-1/\">Le résultat est en ligne ici</a>. En attendant la prochaine édition, VFT revient bientôt pour son traditionnel podcast <a href=\"http://veryfrenchtrip.com/annonce-podcast-14-organiser-des-meetups-wordpress/\">consacré cette fois aux meetups</a>. Restez connectés.</p>
<h3>La communauté WPFR sur Slack</h3>
<p>La communauté WordPress Francophone est sur Slack depuis un mois environ et ne cesse de grandir. <a href=\"http://boiteaweb.fr/wordpressfr-on-slack-8588.html\">Si ce n&rsquo;est pas encore faire venez nous rejoindre</a>.</p>
<h3>Des meetups partout&#8230; encore et toujours !</h3>
<p>La communauté est vivante et de plus en plus riche et active. Un nouveau groupe s&rsquo;est <a href=\"http://www.meetup.com/fr/WordPress-Lorraine/\">créé en Lorraine</a>.</p>
<p>Et le prochain et dernier meetup niçois avant les vacances, <a href=\"http://www.meetup.com/wordpress-in-nice/events/223309511/?a=ra1_te\">c&rsquo;est le 30 juin</a> !</p>
<h3>Glossaire des traductions françaises</h3>
<p>FX, bien connu des traducteurs en français, a réalisé <a href=\"https://fxbenard.com/glossaire-des-traductions-francaises-de-wordpress/\">un glossaire des traductions en français</a>. Un &laquo;&nbsp;<em>must have</em>&laquo;&nbsp;.</p>
<h3>La mode est au Wapuu</h3>
<p><a href=\"http://wptavern.com/introducing-the-wp-tavern-wapuu#comment-69209\">WP Tavern a son wapuu</a>&#8230; et maintenant la <a href=\"http://boiteaweb.fr/welcome-to-marcel-le-wapuu-de-la-communaute-francaise-8598.html\">France à le sien aussi</a> ! &#8230; Le<a href=\"http://wapuu.jp/about/\"> Wapuu c&rsquo;est ça au fait</a> !</p>
<h3>Un sondage sur WordPress</h3>
<p>Jenny Wong souhaite recueillir vos avis sur WordPress, <a href=\"https://docs.google.com/forms/d/1dkF1nbVCTawp7vq8pZd2SB8FIV2iwny01EtfbadnfoA/viewform?c=0&amp;w=1\">aidez-la (en)</a>.</p>
<h3>Arrêter de s&rsquo;arracher les cheveux en cherchant un thème</h3>
<p>Un article qui vous donne<a href=\"http://www.webmarketing-com.com/2015/03/25/36361-comment-arreter-de-sarracher-les-cheveux-en-recherchant-un-theme-wordpress\"> des pistes pour vos recherches de thèmes</a> !</p>
<h3>Un guide pour les Custom Page Template</h3>
<p>Apprenez à<a href=\"http://www.smashingmagazine.com/2015/06/19/wordpress-custom-page-templates/\"> personnaliser vos pages dans WordPress</a> (en).</p>
<h3>Theme Juice : Une configuration Vagrant pour les développeurs</h3>
<p>Vous êtes développeurs et souhaitez une nouvelle plateforme de développement, <a href=\"http://wptavern.com/theme-juice-a-new-vagrant-configuration-for-wordpress-development\">c&rsquo;est ici que ça passe</a> (en).</p>
<h3>Pas (que) du WordPress mais du PHP</h3>
<p>PHP et WordPress sont étroitement liés, c&rsquo;est pourquoi cet article peut vous intéresser : <a href=\"https://kinsta.com/blog/hhvm-vs-php-7/\">HHVM vs PHP7 (en)</a>.</p>
<h3>&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;-</h3>
<h3>Appel à la communauté francophone</h3>
<p>Vous avez déjà participé au développement du core de WordPress (vous savez, vous avez eu votre heure de gloire avec votre nom dans les crédits de WordPress ! :p ) ? Signalez-vous ici (ou sur le Slack), un recensement est en cours par Jenny Beaumont <img src=\"http://s.w.org/images/core/emoji/72x72/1f609.png\" alt=\"&#x1f609;\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>
<h3>Association WPFR nouvelle génération</h3>
<p>J&rsquo;ai ouïe dire que <span style=\"text-decoration: underline;\"><strong>les nouveaux statuts sont déposés en préfecture</strong></span> et validés ! <em>WPFR next gen, </em>c&rsquo;est parti ! On vous en dit plus très très très très bientôt ! #wpfrstatuts</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ZSQgxX9WNpE:Tg583M62sFc:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ZSQgxX9WNpE:Tg583M62sFc:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/ZSQgxX9WNpE\" height=\"1\" width=\"1\" alt=\"\"/><img src=\"http://feeds.feedburner.com/~r/feedburner/cjgL/~4/QVV623BdIII\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:109:\"http://www.wordpress-fr.net/2015/06/23/lhebdo-wordpress-n261-wordcamp-et-wpmx-day-e-barcamp-communautes/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:2:{i:0;a:5:{s:4:\"data\";s:104:\"http://www.wordpress-fr.net/2015/06/23/lhebdo-wordpress-n261-wordcamp-et-wpmx-day-e-barcamp-communautes/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/ZSQgxX9WNpE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:48:\"
		
		
		
		
		
				
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"L’Hebdo WordPress n°260 : WooThemes – Slack – Insights\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"http://feedproxy.google.com/~r/feedburner/cjgL/~3/siKfBLAVPrQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"http://www.wordpress-fr.net/2015/06/03/lhebdo-wordpress-n260-woothemes-slack-insights/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 Jun 2015 05:27:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:7:\"Astuces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:10:\"automattic\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7445\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:359:\"Automattic acquiert WooThemes L&#8217;info de cette dernière quinzaine est sans aucun doute le rachat (en) de WooThemes (en) par Automattic (en). Le plus gros marchand de thèmes et le créateur du plus célèbre outil de e-commerce pour WordPress rejoint donc le giron de l&#8217;outil le plus puissant du web. 12e anniversaire de WordPress Que le [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3796:\"<h3>Automattic acquiert WooThemes</h3>
<p>L&rsquo;info de cette dernière quinzaine est sans aucun doute le <a href=\"https://poststatus.com/automattic-acquired-woocommerce-woothemes/\">rachat (en) </a>de <a href=\"http://www.woothemes.com/2015/05/woothemes-joins-automattic/\">WooThemes (en) </a>par <a href=\"http://ma.tt/2015/05/woomattic/\">Automattic (en)</a>. Le plus gros marchand de thèmes et le créateur du plus célèbre outil de e-commerce pour WordPress <a href=\"http://wpchannel.com/woothemes-automattic-acquisition-e-commerce/\">rejoint donc le giron</a> de l&rsquo;outil le plus puissant du web.</p>
<h3>12e anniversaire de WordPress</h3>
<p>Que le temps passe vite ! <a href=\"https://matt.wordpress.com/2015/05/27/wordpress-12th-birthday-cake/\">Déjà 12 ans </a>depuis le début du projet. (en) !</p>
<h3>WordPress.com lance Insights</h3>
<p>Il s&rsquo;agit d&rsquo;un <a href=\"http://wptavern.com/wordpress-com-launches-insights-better-stats-for-visualizing-publishing-trends\">meilleur outil de statistiques</a> qui apporte un certain nombres de changement à l&rsquo;interface actuelle.</p>
<h3>Une communauté WordPress en français sur Slack</h3>
<p>Un nouveau groupe a été créé sur la <a href=\"http://www.wp-spread.com/invitez-vous-sur-le-chat-wordpress-francophone-sur-slack/\">plateforme Slack</a>. Rejoignez le groupe dès que vous pouvez !</p>
<h3>Des tutos et ressources pour apprendre</h3>
<p><a href=\"https://matt.wordpress.com/2015/05/27/wordpress-12th-birthday-cake/\">Quelques tutoriels et ressources</a> diverses pour apprendre WordPress</p>
<h3>Renommer automatiquement les fichiers accentués sous WordPress</h3>
<p>Si vous avez des fichiers nommés <a href=\"http://wpchannel.com/renommer-automatiquement-fichiers-accentues-wordpress/\">avec des accents et que vous en avez assez de les renommer sans cesse</a>, cette extension est pour vous.</p>
<h3>La hiérarchie des templates</h3>
<p>Avec WordPress il est souvent utile de connaitre<a href=\"http://4design.xyz/wordpress-visualisez-la-hierarchie-des-templates\"> la hiérarchie des templates</a> pour travailler dans un thème notamment.</p>
<h3>11 exemples de sites WordPress</h3>
<p><a href=\"http://www.maintpress.com/blog/exemple-site-wordpress-bien-reussi/\">Voici 11 sites WordPress</a> qui semblent intéressants selon MaintPress.</p>
<h3>Connecter WordPress à OneNote de Microsoft</h3>
<p>Voici la solution pour connecter <a href=\"http://blogs.office.com/2015/05/22/onenote-welcomes-three-new-partners-cloudhq-equil-and-wordpress/\">un site WordPress avec un compte Microsoft OneNote (en)</a>.</p>
<p><em>NB : A celles et ceux qui vont au WordCamp Lyon, je leur dit : &laquo;&nbsp;A vendredi !&nbsp;&raquo;</em></p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=XyIbHAGFLdw:abkmUGnIo1g:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=XyIbHAGFLdw:abkmUGnIo1g:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/XyIbHAGFLdw\" height=\"1\" width=\"1\" alt=\"\"/><img src=\"http://feeds.feedburner.com/~r/feedburner/cjgL/~4/siKfBLAVPrQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"http://www.wordpress-fr.net/2015/06/03/lhebdo-wordpress-n260-woothemes-slack-insights/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:2:{i:0;a:5:{s:4:\"data\";s:86:\"http://www.wordpress-fr.net/2015/06/03/lhebdo-wordpress-n260-woothemes-slack-insights/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/XyIbHAGFLdw/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:54:\"
		
		
		
		
		
				
		
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"L’Hebdo WordPress n°259 : Des événements WordPress – WordPress 4.3 – BuddyPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"http://feedproxy.google.com/~r/feedburner/cjgL/~3/O5_p3VM9M2Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:120:\"http://www.wordpress-fr.net/2015/05/19/lhebdo-wordpress-n259-des-evenements-wordpress-wordpress-4-3-buddypress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 May 2015 05:13:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:7:\"Astuces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:14:\"Développement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:13:\"WordPress 4.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7441\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:323:\"Juin démarre sous le signe de WordPress Le début du mois de juin s&#8217;annonce riche en événements WordPress : 3 juin : WordPress in Alps 5 juin : WordCamp Lyon &#8211;&#62; Il reste des billets, attrapez-les tous ! (Au moment où j&#8217;écris ces lignes, il reste 2 places !!) 6 juin : WPMX Day WordPress [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4472:\"<h3>Juin démarre sous le signe de WordPress</h3>
<p>Le début du mois de juin s&rsquo;annonce riche en événements WordPress :</p>
<ul>
<li>3 juin : <a href=\"http://www.wp-spread.com/wordpress-in-alps-le-3-juin-ateliers-decouverte-wordpress/\">WordPress in Alps</a></li>
<li>5 juin : WordCamp Lyon &#8211;&gt; Il reste des billets, <a href=\"https://lyon.wordcamp.org/2015/billetterie/\">attrapez-les tous</a> ! (Au moment où j&rsquo;écris ces lignes, il reste 2 places !!)</li>
<li>6 juin : <a href=\"http://2015.wpmx.org/conferences/\">WPMX Day</a></li>
</ul>
<h3>WordPress 4.3 poursuit son développement</h3>
<p>L&rsquo;<a href=\"https://make.wordpress.org/core/2015/05/11/weekly-core-ui-meetings-for-4-3/\">interface utilisateur poursuit sa mue</a>&#8230; et le <a href=\"https://make.wordpress.org/core/2015/05/12/multisite-office-hours-recap-may-12-2015/\">côté multi-utilisateurs</a> évolue encore. (en)</p>
<h3>BuddyPress 2.3.0 beta 2</h3>
<p><a href=\"https://buddypress.org/2015/05/buddypress-2-3-0-beta-2/\">BuddyPress passe en 2e beta (en) </a>pour la version 2.3.0&#8230; et <a href=\"http://wptavern.com/buddypress-2-3-will-introduce-companion-stylesheets-for-wordpress-default-themes\">quelques nouveautés sont attendues</a> (en).</p>
<h3>WordPress c&rsquo;est de la merde !</h3>
<p><a href=\"http://www.seomix.fr/shitty-wordpress/\">Un titre accrocheur pour une argumentation </a>haute en couleur !</p>
<h3>Ajouter un menu de recherche par date ou taxonomie</h3>
<p>Grégoire présente un tutoriel précis sur la démarche à suivre pour <a href=\"http://www.gregoirenoyelle.com/wordpress-ajouter-menus-recherche-date-taxonomie/\">ajouter un menu de recherche par date ou taxonomie</a>.</p>
<h3>Les vidéos de LoopConf</h3>
<p>La chaine YouTube de LoopCon où l&rsquo;on peut<a href=\"https://www.youtube.com/channel/UCAwOVsWiMdlz6snWRF2HdSQ\"> retrouver toute leur vidéo relatives à WordPress</a>. (en)</p>
<h3>Les chiffres de la Rocket en avril</h3>
<p><a href=\"http://blog.wp-rocket.me/inside-wp-rocket-april-2015/\">WP Rocket présente régulièrement ses statistiques</a>&#8230; voici pour le mois d&rsquo;avril 2015. (en)</p>
<h3>WordPress et Microsoft Azure</h3>
<p>Microsoft Azure et WordPress, ça marche ! <a href=\"http://www.script-tutorials.com/scalable-wordpress-on-microsoft-azure/\">La preuve ici.</a> (en)</p>
<h3>Pourquoi paye-t-on pour WordPress 2e partie</h3>
<p><a href=\"http://www.wp-pro.fr/pourquoi-paye-t-on-pour-wordpress-une-solution-gratuite-2eme-partie/\">WP-Pro propose la 2e partie </a>de son analyse sur le fait que l&rsquo;on peut payer &laquo;&nbsp;du WordPress&nbsp;&raquo; alors que l&rsquo;application est gratuite.</p>
<h3>7 extensions de supports clients</h3>
<p>Si vous recherchiez de quoi gérer un support client, voici <a href=\"http://www.wpbeginner.com/plugins/6-best-help-desk-customer-support-plugins-for-wordpress/\">7 extensions WordPress qui devrait vous plaire. (en)</a></p>
<h3>Sécuriser WordPress</h3>
<p>MaintPress nous donne des pistes sur la façon de <a href=\"http://www.maintpress.com/blog/securiser-wordpress-comment-renforcer-securite-site-wordpress/\">mieux sécuriser WordPress</a>.</p>
<h3>L&rsquo;évolution de WordPress</h3>
<p>WordPress évolue inlassablement depuis 10 ans, <a href=\"http://neliosoftware.com/some-stats-on-the-evolution-of-the-wordpress-codebase/\">petite analyse de cette évolution (en)</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=LYVelJJ-s4U:XQf-hBBVWTY:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=LYVelJJ-s4U:XQf-hBBVWTY:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=LYVelJJ-s4U:XQf-hBBVWTY:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=LYVelJJ-s4U:XQf-hBBVWTY:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=LYVelJJ-s4U:XQf-hBBVWTY:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=LYVelJJ-s4U:XQf-hBBVWTY:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/LYVelJJ-s4U\" height=\"1\" width=\"1\" alt=\"\"/><img src=\"http://feeds.feedburner.com/~r/feedburner/cjgL/~4/O5_p3VM9M2Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:116:\"http://www.wordpress-fr.net/2015/05/19/lhebdo-wordpress-n259-des-evenements-wordpress-wordpress-4-3-buddypress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:2:{i:0;a:5:{s:4:\"data\";s:111:\"http://www.wordpress-fr.net/2015/05/19/lhebdo-wordpress-n259-des-evenements-wordpress-wordpress-4-3-buddypress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/LYVelJJ-s4U/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:54:\"
		
		
		
		
		
				
		
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"L’Hebdo WordPress n°258 : WordPress 4.3 – WordCamps &amp; Evénements WP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"http://feedproxy.google.com/~r/feedburner/cjgL/~3/FiV0asGKK6M/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"http://www.wordpress-fr.net/2015/05/05/lhebdo-wordpress-n258-wordpress-4-3-wordcamps-evenements-wp/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 05 May 2015 05:25:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:7:\"Astuces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:14:\"Développement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"Podcasting\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7437\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:395:\"WordPress 4.3 est lancé Comme toujours, quelques jours après le déploiement d&#8217;une version majeur la suivante est aussitôt mise sur les rails. WordPress 4.3 est donc prévue pour le 18 août prochain et c&#8217;est Konstantin Obenland qui en prend les rênes. (en) Les premières pistes de réflexions sont ouvertes, notamment concernant l&#8217;éditeur. (en) WordPress 4.2.1 [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3723:\"<h3>WordPress 4.3 est lancé</h3>
<p>Comme toujours, quelques jours après le déploiement d&rsquo;une version majeur la suivante est aussitôt mise sur les rails. WordPress 4.3 est donc <a href=\"http://wp.me/p2AvED-3mD\">prévue pour le 18 août prochain</a> et c&rsquo;est Konstantin Obenland qui en prend les rênes. (en)</p>
<p>Les premières pistes de réflexions sont ouvertes, <a href=\"https://make.wordpress.org/core/2015/05/01/editor-wish-list-for-4-3/\">notamment concernant l&rsquo;éditeur</a>. (en)</p>
<h3>WordPress 4.2.1 : Première mise à jour mineure</h3>
<p>Une faille de sécurité a été décelée rapidement après la sortie de WordPress 4.2, <a href=\"http://t.co/O3MDAj635H\">le patch correctif </a>ne s&rsquo;est donc pas fait attendre (en).</p>
<h3>WordCamp Lyon : programme et surprises</h3>
<p>Le WordCamp Lyon avance et se précise. <a href=\"https://lyon.wordcamp.org/2015/programme/\">Le programme est connu</a> et on sait depuis peu qu&rsquo;un <a href=\"https://lyon.wordcamp.org/2015/nightswapping-vous-offre-2-nuits-a-lyon-pour-le-wordcamp/\">nouveau partenaire propose une surprise</a>.</p>
<h3>WordCamp Europe : les orateurs se dévoilent</h3>
<p>1ère surprise de taille, <a href=\"http://europe.wordcamp.org/2015/welcome-the-third-group-of-wceu-speakers/\">Xavier (notre Xavier) fait partie des orateurs </a>du prochains WordCamp Europe.</p>
<h3>WPMX Day</h3>
<p>Rappelons également que le lendemain du WordCamp Lyon se tiendra le <a href=\"http://2015.wpmx.org/\">WPMX Day</a>, événement majeur dans le Sud-Ouest de la France.</p>
<h3>Le 11e Podcast de Very French Trip</h3>
<p><a href=\"http://veryfrenchtrip.com/podcast/podcast-12-traduction-wordpress/\">Pour cette 11e édition</a>, la traduction est à l&rsquo;honneur avec des invités de marque que sont Xavier, Didier, François-Xavier, Mathieu et Grégoire.</p>
<h3>Les principes de hiérarchie dans le design visuel</h3>
<p>Un article qui parle de <a href=\"https://dailypost.wordpress.com/2015/04/29/the-principles-of-design-visual-hierarchy/\">design des sites web</a> raconté par un Automatticien. (en)</p>
<h3>WPRocket élue meilleure extension de cache</h3>
<p>WPSiteCare a élu <a href=\"http://www.wpsitecare.com/best-wordpress-plugins/\">WPRocket meilleure extension de cache de tous les temps</a> (en)&#8230; et retrouvez également le classement des autres meilleures extensions de tous les temps dans ce classement.</p>
<h3>Les événements WordPress sur une carte</h3>
<p>ManageWP.org a mis en ligne une <a href=\"https://managewp.org/events/\">carte interactive avec les différents événements WordPress </a>de la Planète. (en)</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kwe0XgYW1P0:5XuUlueSTRA:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kwe0XgYW1P0:5XuUlueSTRA:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kwe0XgYW1P0:5XuUlueSTRA:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kwe0XgYW1P0:5XuUlueSTRA:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kwe0XgYW1P0:5XuUlueSTRA:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kwe0XgYW1P0:5XuUlueSTRA:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kwe0XgYW1P0\" height=\"1\" width=\"1\" alt=\"\"/><img src=\"http://feeds.feedburner.com/~r/feedburner/cjgL/~4/FiV0asGKK6M\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"http://www.wordpress-fr.net/2015/05/05/lhebdo-wordpress-n258-wordpress-4-3-wordcamps-evenements-wp/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:2:{i:0;a:5:{s:4:\"data\";s:99:\"http://www.wordpress-fr.net/2015/05/05/lhebdo-wordpress-n258-wordpress-4-3-wordcamps-evenements-wp/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kwe0XgYW1P0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:45:\"
		
		
		
		
		
				
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Le PHP Tour 2015 fait étape au Luxembourg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"http://feedproxy.google.com/~r/feedburner/cjgL/~3/3_hUZIPodZM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"http://www.wordpress-fr.net/2015/05/01/le-php-tour-2015-fait-etape-au-luxembourg/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 May 2015 15:52:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"AFUP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7431\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:396:\"Nos amis de l&#8217;AFUP organisent le PHP Tour. Cette année, c&#8217;est le Luxembourg qui accueillera l&#8217;événement. L&#8217;AFUP nous a demandé de diffuser leur communiqué de presse, c&#8217;est donc avec plaisir que je m&#8217;exécute. En effet, PHP et WordPress ont des liens évidents et nos 2 communautés ont forcément des tonnes de choses en commun. L&#8217;entraide [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6451:\"<p><img class=\"alignleft size-full wp-image-7432\" src=\"http://www.wordpress-fr.net/wp-content/uploads/2015/05/afup.png\" alt=\"afup\" width=\"209\" height=\"99\" />Nos amis de l&rsquo;AFUP organisent le PHP Tour. Cette année, c&rsquo;est le Luxembourg qui accueillera l&rsquo;événement.</p>
<p>L&rsquo;AFUP nous a demandé de diffuser leur communiqué de presse, c&rsquo;est donc avec plaisir que je m&rsquo;exécute. En effet, PHP et WordPress ont des liens évidents et nos 2 communautés ont forcément des tonnes de choses en commun. L&rsquo;entraide de l&rsquo;open source est aussi ici.</p>
<h2>Le communiqué de presse de l&rsquo;AFUP</h2>
<blockquote>
<h3>Le PHP Tour Luxembourg 2015 dévoile son programme</h3>
<p><em><strong>Le Cloud mis à l&rsquo;honneur, et une large place accordée aux innovations du langage et aux retours d&rsquo;expérience de grandes entreprises</strong></em></p>
<p>Luxembourg-Ville aura le plaisir d&rsquo;accueillir l&rsquo;étape annuelle du cycle de conférences itinérant de l&rsquo;AFUP, les 12 et 13 mai, au sein de la prestigieuse abbaye de Neumünster. <strong>Le programme de cette édition est en ligne :  conférences anglophones, Cloud, PHP7 et workshops au menu de ces 2 jours 100 % PHP ! </strong></p>
<p>Comme l&rsquo;indiquait l&rsquo;appel à conférenciers, une partie de la programmation sera tournée vers le Cloud : son coût, sa sécurité, son installation&#8230; Nous aurons ainsi le plaisir d&rsquo;accueillir, parmi tant d&rsquo;autres, Philip Krenn pour « Perils of the Cloud », ou Maxime Thoonsen pour « Ansible pour le Cloud ». Vous saurez tout sur ce nouvel outil incontournable du Web ! Mais le programme se penche évidemment aussi sur le langage : Julien Pauli nous parlera de l&rsquo;avenir de PHP avec « En route vers PHP7 ! », Enrico Zimuel sera présent pour « Pushing Boundaries: Zend Framework 3 and the Future », ainsi que Michelangelo Van Dam pour « The continuous PHP Pipeline ». Enfin, de   nombreux  retours   d&rsquo;expérience   de   grandes   entreprises (Arté,   Canal+,   Mediapart&#8230;)   seront programmés, pour découvrir de quelle façon PHP est utilisé dans les plus grandes compagnies du Europe.</p>
<h3>Un programme pensé pour notre public anglophone</h3>
<p>Pour cette édition hors des frontières françaises, un soin particulier a été porté à l&rsquo;équilibre entre les conférences en français et celles en anglais : la moitié du programme propose des conférences anglophones. Pas d&rsquo;inquiétude cependant pour ceux que l&rsquo;anglais effraie : il y a toujours un talk en français programmé en face d&rsquo;une conférence anglophone.</p>
<h3>Apprenez en compagnie des meilleurs lors des workshops</h3>
<p>Le mercredi 13 mai verra des ateliers organisés en parallèle des conférences : 3h en petit groupe et en compagnie d&rsquo;experts du langage. Apprenez des meilleurs, en appliquant leurs conseils directement sur votre machine ! Le matin, Manuel Silvoso vous propose de vous initier à la sécurité des applications web. L&rsquo;après-midi, Patrick Allaert vous aidera à créer des extensions PHP. Ces deux ateliers sont sur inscription, et réservés aux visiteurs du PHP Tour Luxembourg</p>
<h3>Une édition luxembourgeoise exceptionnelle</h3>
<p>Le PHP Tour, lancé en 2011, est devenu un événement incontournable pour la communauté PHP. Cycle de conférences itinérant, il s&rsquo;est ainsi arrêté à Lille, Nantes et Lyon. Sa programmation pointue aborde les dernières innovations du langage, tout en profitant de ces étapes pour aborder des thématiques propres à la région d&rsquo;accueil et ses enjeux économiques. Cet événement au-delà des frontières françaises est une grande première pour l&rsquo;association, qui illustre par ce biais son intention de représenter les développeurs PHP francophones. Outre cette première édition d&rsquo;un événement AFUP hors des frontières françaises, 2015 marquera également les 20 ans de PHP et les 15 ans de l&rsquo;AFUP. Un double-anniversaire que l&rsquo;association compte bien célébrer tout au long de l&rsquo;année !</p>
<h5>Quelques mots sur l&rsquo;AFUP :</h5>
<p>L&rsquo;AFUP, Association Française des Utilisateurs de PHP, est une association loi 1901, qui a pour objectif principal de promouvoir le langage PHP auprès des professionnels et de participer à son développement.<br />
L&rsquo;AFUP a été créée pour répondre à un besoin croissant des entreprises, celui d&rsquo;avoir un interlocuteur unique pour répondre à leurs questions sur PHP.  Par ailleurs, l&rsquo;AFUP offre un cadre de rencontre et de ressources techniques pour les développeurs qui souhaitent faire avancer le langage PHP lui même.</p>
<h5>Pour en savoir plus :</h5>
<p>Le site du PHP Tour Luxembourg 2015 : <a href=\"http://www.phptour.org\">http://www.phptour.org</a><br />
Le site de l&rsquo;AFUP : <a href=\"http://www.afup.org\">http://www.afup.org</a><br />
Twitter : @afup</p>
<h5>Contact Presse :</h5>
<p>Amélie Deffrennes : communication@afup.org</p></blockquote>
<h1>Promotion spéciale WordPress Francophone</h1>
<p>L&rsquo;AFUP propose une réduction exceptionnelle de 50 euros sur le pass 2 jours pour les membres de la communauté WordPress Francophone  avec le code promo suivant : <em>AFUP&lt;3WORDPRESS</em></p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tvrMTIYQIZg:LL2SqHjRe8k:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tvrMTIYQIZg:LL2SqHjRe8k:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=tvrMTIYQIZg:LL2SqHjRe8k:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tvrMTIYQIZg:LL2SqHjRe8k:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tvrMTIYQIZg:LL2SqHjRe8k:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=tvrMTIYQIZg:LL2SqHjRe8k:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/tvrMTIYQIZg\" height=\"1\" width=\"1\" alt=\"\"/><img src=\"http://feeds.feedburner.com/~r/feedburner/cjgL/~4/3_hUZIPodZM\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"http://www.wordpress-fr.net/2015/05/01/le-php-tour-2015-fait-etape-au-luxembourg/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:2:{i:0;a:5:{s:4:\"data\";s:81:\"http://www.wordpress-fr.net/2015/05/01/le-php-tour-2015-fait-etape-au-luxembourg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/tvrMTIYQIZg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:63:\"
		
		
		
		
		
				
		
		
		
		
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"L’Hebdo WordPress n°257 : WordPress.org – Shortcake – WordPress 4.3 et 4.4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"http://feedproxy.google.com/~r/feedburner/cjgL/~3/gC-2s1whW9Y/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:115:\"http://www.wordpress-fr.net/2015/04/28/lhebdo-wordpress-n257-wordpress-org-shortcake-wordpress-4-3-et-4-4/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 28 Apr 2015 05:15:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:8:{i:0;a:5:{s:4:\"data\";s:7:\"Brèves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:14:\"Développement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:7:\"Astuces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:9:\"shortcode\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:13:\"WordPress 4.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:13:\"WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7425\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:344:\"Il est des Hebdos que l&#8217;on pourrait renommer en Mensuel&#8230; celui-ci en fait partie ! Cela fait un mois que je n&#8217;ai pas écrit en ces lieux ! Mon ordinateur s&#8217;éloigne de moi ces temps-ci&#8230; il doit avoir d&#8217;autres chats à fouetter&#8230; Bref, me revoilà ! 😉 &#8230; et y a du lourd&#8230; du très [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9013:\"<p>Il est des Hebdos que l&rsquo;on pourrait renommer en Mensuel&#8230; celui-ci en fait partie ! Cela fait un mois que je n&rsquo;ai pas écrit en ces lieux !</p>
<p>Mon ordinateur s&rsquo;éloigne de moi ces temps-ci&#8230; il doit avoir d&rsquo;autres chats à fouetter&#8230; Bref, me revoilà ! <img src=\"http://s.w.org/images/core/emoji/72x72/1f609.png\" alt=\"&#x1f609;\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>
<p>&#8230; et y a du lourd&#8230; du très très lourd !</p>
<h3>Le programme du WordCamp Lyon 2015 est disponible !</h3>
<p>Le 1er WordCamp français en dehors de Paris poursuit sa route, et a mis en ligne l&rsquo;<a href=\"http://lyon.wordcamp.org/2015/programme/\">intégralité de son programme</a> ! On y retrouve des têtes connues, mais surtout de nombreux/ses orateurs/trices qui font pour la première fois une conférence dans un WordCamp ! Pour rappel, c&rsquo;est 5 juin 2015, <a href=\"http://lyon.wordcamp.org/2015/billetterie/\">achetez vos billets</a> !</p>
<h3>&#8230;et celui du WPMX Day 2015 également !</h3>
<p>Le lendemain du WC Lyon 2015 à l&rsquo;est de la France, l&rsquo;ouest de la France aura à son tour son évènement ! Le WPMX Day 2015, organisé par nos amis de l&rsquo;association WPMX, a également publié son <a href=\"http://2015.wpmx.org/conferences/\">programme de la journée</a>, qui mélange orateurs/trices confirmé-e-s et nouveaux noms intéressants. <a href=\"http://2015.wpmx.org/billet-wpmx-day-2015/\">La billetterie est ici</a> !</p>
<p><em>Celle ou celui qui enchaînera la participation aux deux événements gagnera un joli cadeau de la part de WPFR <img src=\"http://www.wordpress-fr.net/wp-includes/images/smilies/simple-smile.png\" alt=\":)\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></em></p>
<h3>WordPress.org évolue</h3>
<p><a href=\"https://wordpress.org/news/2015/04/improvements-to-wordpress-org/\">Plusieurs changements sont arrivés sur WordPress.org</a>&#8230; notamment sur les répertoires de thèmes et d&rsquo;extensions qui sont plus proches de l&rsquo;interface présente dans votre tableau de bord WordPress&#8230; et plein de détails à découvrir.</p>
<h3>WordPress 4.3 et 4.4 ont déjà leur leader</h3>
<p>WordPress 4.2 est à peine sorti que l&rsquo;équipe de développeurs est déjà organisé pour se lancer dans WordPress 4.3 et 4.4. <a href=\"https://make.wordpress.org/core/2015/04/01/release-leads-for-wordpress-4-3-and-4-4/\">Découvrez qui seront les chefs d&rsquo;équipes</a>. (en)</p>
<h3>Shortcake : Les shortcodes deviennent accessibles</h3>
<p>Les shortcodes, ces petits codes qui s&rsquo;insèrent dans notre texte pour intégrer un lecteur, ou toute autre fonctionnalité directement dans un contenu étaient jusque là réservé à une certaine élite. Maintenant, une extension vient démocratiser tout cela : <a href=\"http://wptavern.com/shortcake-is-now-a-wordpress-feature-plugin\">Shortcake </a>(en) est née.</p>
<h3>Nouvelle documentation technique</h3>
<p>La documentation technique officielle de WordPress a évolué. <a href=\"https://developer.wordpress.org/\">Découvrez-là</a>, c&rsquo;est très bien organisé ! (en)</p>
<h3>BuddyPress 2.2.3.1</h3>
<p>BuddyPress poursuit son chemin et se <a href=\"https://wordpress.org/plugins/buddypress/\">développe avec la version 2.2.3.1</a>.</p>
<h3>De la dette technique de WordPress</h3>
<p>Julien Oger propose un <a href=\"http://www.wp-pro.fr/pourquoi-100-ans-de-dettes-techniques-ne-mempechent-pas-de-travailler-avec-wordpress/\">article qui argumente sur la qualité du code de WordPress</a>.</p>
<h3>Renommer le &laquo;&nbsp;Happiness Bar&nbsp;&raquo; ?</h3>
<p>Qui ne connait pas le Happiness Bar aujourd&rsquo;hui ? Peut-être celles et ceux ne fréquentant pas encore les WordCamps&#8230; Le Happiness bar ne vend pas de boissons&#8230; mais propose du conseil et de l&rsquo;aide à qui en demande à propos de WordPress bien sur. <a href=\"http://mor10.com/it-is-time-to-rename-the-happiness-bar/\">Mor10 propose de changer le nom de ce lieu mythique</a> (en). Qu&rsquo;en pensez-vous ?</p>
<h3>Formation WordPress pour les sourds et malentendants</h3>
<p>Quand on m&rsquo;a proposé de présenter ce lien, je n&rsquo;ai pas hésité un instant. Cette formation pour le moins originale permet aux personnes sourdes et malentendantes de pouvoir bénéficier d&rsquo;une <a href=\"http://www.sourdoues.com/apprendre-a-creer-un-site-web-avec-wordpress-cours-video-en-LSF\">formation vidéo sur WordPress entièrement traduite en langue des signes</a>. Voici un sujet fort intéressant pour une future conférence de WordCamp non ? On y réfléchi <img src=\"http://s.w.org/images/core/emoji/72x72/1f609.png\" alt=\"&#x1f609;\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>
<h3>Checklist SEO</h3>
<p>Si vous souhaitez améliorer votre SEO, MaintPress propose une <a href=\"http://www.maintpress.com/blog/referencement-wordpress-checklist-ameliorer-seo-votre-site/\">checklist des éléments importants</a> à ne pas oublier.</p>
<h3>Hew : un nouveau thème gratuit</h3>
<p><a href=\"http://wptavern.com/hew-a-free-wordpress-blogging-theme-inspired-by-ryu\">Hew est le 67e thème gratuit</a> proposé par Automattic.</p>
<h3>Réflexion sur l&rsquo;open source et l&rsquo;entreprise</h3>
<p>Benjamin parle en connaissance de cause de <a href=\"http://www.wp-pro.fr/wordpress-lentreprise-et-lopen-source/\">la problématique entre le monde de l&rsquo;entreprise et celui plus libre de l&rsquo;open source</a>&#8230; au travers de son expérience WordPress. <a href=\"http://ma.tt/2015/04/giving-back-to-open-source/\">Même Matt en pense autant</a>. (en)</p>
<h3>Utiliser la marque WordPress ?</h3>
<p>Attention, tout n&rsquo;est pas permis en matière d&rsquo;utilisation de la marque WordPress. <a href=\"http://wpandlegalstuff.com/using-wordpress-trademarks-business-product-service/\">Revue des choses à faire et à ne pas faire</a> (en).</p>
<h3>MailPoet présente sa nouvelle recrue</h3>
<p>C&rsquo;est toujours un grand moment quand une startup WordPress recrute, c&rsquo;est encore le cas avec MailPoet qui vient de s&rsquo;agrandir d&rsquo;un nouveau membre : <a href=\"http://www.mailpoet.com/introducing-becs/\">Becs Rivett</a> (en)</p>
<h3>Le déploiement en Podcast</h3>
<p>C&rsquo;est le 11e podcast de Very French Trip et il est <a href=\"http://veryfrenchtrip.com/podcast/podcast-11-deploiement-wordpress/\">consacré au déploiement</a>.<br />
Je profite de ce message pour annoncer le prochain podcast qui s&rsquo;annonce d&rsquo;ores été déjà exceptionnel puisqu&rsquo;il va tenter de reprendre le modèle d&rsquo;un meetup/ barcamp mais en ligne&#8230;. pendant 2 H ! <a href=\"http://veryfrenchtrip.com/un-podcast-hors-serie/\">Inscrivez-vous !</a></p>
<h3>Une faille dans WP Super Cache</h3>
<p>L&rsquo;extension WP Super Cache a été victime ce mois-ci d&rsquo;une faille XSS. <a href=\"http://wptavern.com/persistent-xss-vulnerability-discovered-in-wp-super-cache-plugin\">Récit par Sarah Gooding</a>. (en)</p>
<h3>Optimiser et alléger ses images</h3>
<p>Comment optimiser et aléger ses images dans WordPress. <a href=\"http://wpformation.com/optimiser-images-wordpress/\">Fabrice apporte des pistes</a>.</p>
<h3>Optimiser wp-config.php</h3>
<p>Camille Latouche explique <a href=\"http://camillelatouche.com/wp-config-optimiser-securiser-wordpress/\">quelques régles de bases du wp-config.php</a>.</p>
<h3>Retour d&rsquo;expérience d&rsquo;un freelance</h3>
<p>Voici le <a href=\"https://easydigitaldownloads.com/blog/changing-face-ecommerce-wordpress/\">retour d&rsquo;expérience d&rsquo;un freelance</a> (en) qui avait tout abandonné pour se lancer&#8230;</p>
<h3>Créer une extension de fonctions globales</h3>
<p>Aurélien propose un tutoriel vidéo pour expliquer comment <a href=\"http://wpchannel.com/creer-plugin-fonctions-globales-site-wordpress/\">créer une extension de fonctions globales</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=RJyz4PUcZNA:gJwyABIwx70:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=RJyz4PUcZNA:gJwyABIwx70:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=RJyz4PUcZNA:gJwyABIwx70:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=RJyz4PUcZNA:gJwyABIwx70:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=RJyz4PUcZNA:gJwyABIwx70:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=RJyz4PUcZNA:gJwyABIwx70:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/RJyz4PUcZNA\" height=\"1\" width=\"1\" alt=\"\"/><img src=\"http://feeds.feedburner.com/~r/feedburner/cjgL/~4/gC-2s1whW9Y\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"http://www.wordpress-fr.net/2015/04/28/lhebdo-wordpress-n257-wordpress-org-shortcake-wordpress-4-3-et-4-4/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:2:{i:0;a:5:{s:4:\"data\";s:106:\"http://www.wordpress-fr.net/2015/04/28/lhebdo-wordpress-n257-wordpress-org-shortcake-wordpress-4-3-et-4-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/RJyz4PUcZNA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:48:\"
		
		
		
		
		
				
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"Sortie de WordPress 4.2 « Powell »\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"http://feedproxy.google.com/~r/feedburner/cjgL/~3/6SJgIbh9aFk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"http://www.wordpress-fr.net/2015/04/24/sortie-de-wordpress-4-2-powell/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 24 Apr 2015 17:21:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:14:\"Développement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7418\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:381:\"La version 4.2 de WordPress, baptisée “Powell” en honneur du pianiste de jazz Bud Powell, est disponible en téléchargement ou via le système de mise à jour, depuis le tableau de bord votre installation de WordPress. Ses nouvelles fonctionnalités vous simplifient la communication et le partage, à l&#8217;échelle mondiale. Une manière plus simple de partager [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Xavier\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7049:\"<p>La version 4.2 de WordPress, baptisée “Powell” en honneur du pianiste de jazz <a href=\"https://fr.wikipedia.org/wiki/Bud_Powell\">Bud Powell</a>, est disponible en <a href=\"https://fr.wordpress.org/\">téléchargement</a> ou via le système de mise à jour, depuis le tableau de bord votre installation de WordPress. Ses nouvelles fonctionnalités vous simplifient la communication et le partage, à l&rsquo;échelle mondiale.</p>
<p><a href=\"http://www.wordpress-fr.net/2015/04/24/sortie-de-wordpress-4-2-powell/\"><em>Cliquer ici pour voir la vidéo.</em></a></p>
<h3><img class=\"alignright  wp-image-7419\" src=\"http://www.wordpress-fr.net/wp-content/uploads/2015/04/4.2-press-this-2-500x416.jpg\" alt=\"4.2-press-this-2\" width=\"327\" height=\"272\" />Une manière plus simple de partager votre contenu</h3>
<p>Sélectionnez, modifiez, publiez. Découvrez le nouveau Press This, largement amélioré. Depuis le menu <a href=\"http://xavier.borderie.net/blog/wp-admin/tools.php\">Outils</a>, ajoutez Press This à la barre de favoris de votre navigateur ou la page d&rsquo;accueil de votre appareil mobile. Une fois mis en place, vous pouvez partager votre contenu en ligne à la vitesse de la lumière. Il n’a jamais été aussi facile et rapide de partager vos vidéos, vos images ou vos contenus préférés !</p>
<div class=\"col\">
<h3><img class=\"  wp-image-7420 alignright\" src=\"http://www.wordpress-fr.net/wp-content/uploads/2015/04/4.2-characters-500x416.png\" alt=\"4.2-characters\" width=\"296\" height=\"246\" />Reconnaissance des caractères étendus</h3>
<p>L’écriture dans WordPress a été améliorée pour toutes les langues. WordPress 4.2 peut utiliser une multitude de nouveaux caractères par défaut, y compris les caractères natifs des écritures chinoises, japonaises et coréennes, ainsi que les symboles musicaux et mathématiques et les hiéroglyphes.</p>
<p>Vous n’utilisez aucun de ces caractères ? Vous pouvez malgré tout vous amuser avec — les caractères emoji sont maintenant disponibles dans WordPress ! Soyez créatifs et agrémentez votre contenu avec <img src=\"http://s.w.org/images/core/emoji/72x72/1f499.png\" alt=\"&#x1f499;\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />, <img src=\"http://s.w.org/images/core/emoji/72x72/1f438.png\" alt=\"&#x1f438;\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />, <img src=\"http://s.w.org/images/core/emoji/72x72/1f412.png\" alt=\"&#x1f412;\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />, <img src=\"http://s.w.org/images/core/emoji/72x72/1f355.png\" alt=\"&#x1f355;\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> ou n’importe quel autre <a href=\"https://codex.wordpress.org/Emoji\">emoji</a> !</p>
<h3><img class=\"alignright  wp-image-7421\" src=\"http://www.wordpress-fr.net/wp-content/uploads/2015/04/4.2-theme-switcher-300x230.png\" alt=\"4.2-theme-switcher-300x230\" width=\"198\" height=\"152\" />Changez de thème dans l’outil de personnalisation</h3>
<p>Parcourez et prévisualisez vos thèmes installés avec l’outil de personnalisation. Assurez-vous que ce thème est adapté à <em>votre</em> contenu avant de l’activer sur votre site.</p>
<h3><img class=\"  wp-image-7422 alignleft\" src=\"http://www.wordpress-fr.net/wp-content/uploads/2015/04/4.2-embeds-300x230.png\" alt=\"4.2-embeds-300x230\" width=\"198\" height=\"152\" />Encore plus contenus insérés</h3>
<p>Collez des liens vers Tumblr.com ou Kickstarter, et vous les verrez apparaître comme par magie directement dans l’éditeur. À chaque nouvelle version, votre approche de la publication et de la rédaction sont de plus en plus proches.</p>
<h3><img class=\"alignright  wp-image-7423\" src=\"http://www.wordpress-fr.net/wp-content/uploads/2015/04/4.2-plugins-300x230.png\" alt=\"4.2-plugins-300x230\" width=\"203\" height=\"156\" />Mises à jour simplifiée des extensions</h3>
<p>Adieu, triste écran de chargement ; bienvenue aux mises à jour d’extensions simples et sans bavure ! Cliquez sur <em>Mettre à jour maintenant</em> et laissez la magie s’opérer.</p>
<h3>Sous le capot</h3>
<div class=\"feature-section col two-col\">
<div>
<h4>Prise en charge du codage utf8mb4</h4>
<p>Le codage de caractères de la base de données est passé de utf8 à utf8mb4, ce qui ajoute la possibilité d’utiliser tout un jeu de nouveaux caractères encodés sur 4 octets.</p>
<h4>Accessibilité de JavaScript</h4>
<p>Vous pouvez maintenant envoyer des notifications sonores aux lecteurs d&rsquo;écran avec JavaScript grâce à <code>wp.a11y.speak()</code>. Passez une chaîne en argument, et une mise à jour sera envoyée à une zone de notification ARIA en temps réel. Un système de lecture de chaine est utilisé, et en envoie une mise à jour à un espace dédié de notifications ARIA live.</p>
</div>
<div class=\"last-feature\">
<h4>Séparation des termes partagés</h4>
<p>Les termes partagés entre plusieurs taxinomies seront dissociés les uns des autres lorsque l’un d’entre eux est mis à jour. Pour en savoir plus, rendez-vous sur la page du <a href=\"https://developer.wordpress.org/plugins/taxonomy/working-with-split-terms-in-wp-4-2/\">Manuel du développeur d’extensions</a> (en anglais).</p>
<h4>Ordonnancement complexe des requêtes</h4>
<p><code>WP_Query</code>, <code>WP_Comment_Query</code> et <code>WP_User_Query</code> peuvent maintenant utiliser un ordre complexe avec les clauses nommées des requêtes méta.</p>
<h3>L&rsquo;équipe</h3>
<p>Le chef de projet de cette version était Drew Jaynes, avec l&rsquo;aide de plus de 283 contributeurs &#8212; un nouveau record ! Ils sont tous listés sur l&rsquo;<a href=\"https://wordpress.org/news/2015/04/powell/\">article original</a> (dont cet article est une traduction).</p>
<p><em>À noter pour la version française : le mot &laquo;&nbsp;tag&nbsp;&raquo; n&rsquo;est plus traduit par &laquo;&nbsp;mot-clé&nbsp;&raquo;, mais par &laquo;&nbsp;étiquette&nbsp;&raquo; !</em></p>
</div>
</div>
</div>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=7rIEKuN8IbY:kosmtwYYAp4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=7rIEKuN8IbY:kosmtwYYAp4:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=7rIEKuN8IbY:kosmtwYYAp4:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=7rIEKuN8IbY:kosmtwYYAp4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=7rIEKuN8IbY:kosmtwYYAp4:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=7rIEKuN8IbY:kosmtwYYAp4:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/7rIEKuN8IbY\" height=\"1\" width=\"1\" alt=\"\"/><img src=\"http://feeds.feedburner.com/~r/feedburner/cjgL/~4/6SJgIbh9aFk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"http://www.wordpress-fr.net/2015/04/24/sortie-de-wordpress-4-2-powell/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:2:{i:0;a:5:{s:4:\"data\";s:70:\"http://www.wordpress-fr.net/2015/04/24/sortie-de-wordpress-4-2-powell/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/7rIEKuN8IbY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"La problématique des traductions officielles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"http://feedproxy.google.com/~r/feedburner/cjgL/~3/nhFl_mTTaWE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"http://www.wordpress-fr.net/2015/03/25/problematique-traductions/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Mar 2015 08:07:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7377\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:384:\"Merci à WordPress Francophone de m&#8217;accueillir une fois de plus ici, et cette fois-ci pour une problématique très spécifique : la traduction, et surtout le fait de devoir respecter ou non un terme officiel. Pour la petite histoire, je rédige une seconde version du livre &#171;&#160;Optimiser son référencement WordPress&#160;&#187;, et je suis une nouvelle fois [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Daniel Roch\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6597:\"<p>Merci à WordPress Francophone de m&rsquo;accueillir une fois de plus ici, et cette fois-ci pour une problématique très spécifique : la traduction, et surtout le fait de devoir respecter ou non un terme officiel.</p>
<p>Pour la petite histoire, je rédige une seconde version du livre &laquo;&nbsp;Optimiser son référencement WordPress&nbsp;&raquo;, et je suis une nouvelle fois confronté à une problématique de traduction toute simple : doit-on dire &laquo;&nbsp;Plugin&nbsp;&raquo;, &laquo;&nbsp;Plug-in&nbsp;&raquo;, &laquo;&nbsp;Module&nbsp;&raquo; ou &laquo;&nbsp;Extension&nbsp;&raquo; ?</p>
<h2>Quel terme est le plus utilisé ?</h2>
<p>Théoriquement, la seule et unique réponse est &laquo;&nbsp;Extension&nbsp;&raquo;, car c&rsquo;est le terme officiel dans la traduction de WordPress. Dans l&rsquo;administration de votre site, vous avez bien un menu &laquo;&nbsp;Extensions&nbsp;&raquo;, et non pas un menu &laquo;&nbsp;Plugins.</p>
<p>A vrai dire, la première fois que j&rsquo;ai été confronté à ce problème de traduction a été lorsque mon éditeur m&rsquo;a indiqué que je devais parler de &laquo;&nbsp;plug-in&nbsp;&raquo; dans le livre, terme qui est pour eux la traduction officielle pour tout CMS et outil confondu. L&rsquo;utilisation de cette appellation avec un tiret est assez étrange, et la question que je me pose à nouveau est donc assez simple. Doit-on utiliser :</p>
<ul>
<li>le terme officiel de WordPress : Extension ;</li>
<li>le terme le plus souvent utilisé par la communauté : Plugin ;</li>
<li>un autre terme utilisé par une partie de la communauté : Module ;</li>
<li>le terme le plus couramment utilisé par certains éditeurs : Plug-in.</li>
</ul>
<p>Pour y répondre, nous avons fait <a href=\"http://goo.gl/forms/QxdLW0t7IT\">un petit sondage en ligne</a>, et la réponse est sans appel : le terme le plus utilisé de loin est bien &laquo;&nbsp;Plugin&nbsp;&raquo; :</p>
<p><a href=\"http://www.wordpress-fr.net/wp-content/uploads/2015/02/traduction-plugin-wordpress.jpg\"><img class=\"aligncenter size-large wp-image-7379\" src=\"http://www.wordpress-fr.net/wp-content/uploads/2015/02/traduction-plugin-wordpress-500x268.jpg\" alt=\"Traduction de Plugin ou Extension\" width=\"500\" height=\"268\" /></a></p>
<p>PS : pour avoir les derniers chiffres à jour de l&rsquo;étude, les résultats sont <a href=\"https://docs.google.com/forms/d/1NC6jUscKtuYXBaeFS6pmzjw-TpbI7RZzPqcfHVflBS0/viewanalytics?usp=form_confirm\">ici</a>.</p>
<h2>Pourquoi une différence entre traduction et usage ?</h2>
<p>Cette différence entre la traduction officielle et l&rsquo;usage le plus courant provient de plusieurs choses :</p>
<ul>
<li>&laquo;&nbsp;Plugin&nbsp;&raquo; est le terme anglais, et une grande partie de la communauté WordPress mondiale parle anglais. Il est donc assez facile et naturel de reprendre le terme anglophone sans le traduire.</li>
<li>De nombreux sites et articles français utilise de manière naturelle le terme &laquo;&nbsp;Plugin&nbsp;&raquo; plutôt que &laquo;&nbsp;Extension&nbsp;&raquo; (moi le premier).</li>
</ul>
<p>C&rsquo;est assez marrant d&rsquo;ailleurs de voir des pratiques complètement différentes en fonction des sites ou livres. Par exemple :</p>
<ul>
<li>Le livre &laquo;&nbsp;<em>WordPress 3 pour un blogueur efficace</em>&nbsp;&raquo; et les sites WordPress Francophone et FxBénard utilisent bien le terme officiel &laquo;&nbsp;Extension&nbsp;&raquo; ;</li>
<li>Le livre &laquo;&nbsp;<em>Optimiser son référencement WordPress</em>&nbsp;&raquo; est le seul à utiliser &laquo;&nbsp;Plug-in&nbsp;&raquo; ;</li>
<li>Les sites Geekpress, WPChannel, WPMarmite, WPRocket, BoiteAWeb, SeoMix, Wabeo ou encore ScreenFeed utilisent &laquo;&nbsp;Plugin&nbsp;&raquo;.</li>
</ul>
<p>On se retrouve donc avec des sites et ouvrages communautaires utilisant des termes différents pour désigner une seule et même chose.</p>
<h2>Doit-on changer nos pratiques ?</h2>
<p>Cet article a un but simple et j&rsquo;aimerais avoir les avis de toute la communauté : doit-on modifier une traduction officielle ou pas ?</p>
<p>La logique de base voudrait que l&rsquo;on change le terme par celui le plus utilisé par chacun. Nous n&rsquo;aurions alors qu&rsquo;un seul terme pour désigner cet aspect de WordPress, rendant ainsi plus explicite pour tous l&rsquo;administration du CMS ou encore la lecture d&rsquo;articles et de tutoriels.</p>
<p>Le hic, c&rsquo;est que si jamais on modifiait cette traduction, on se retrouverait confronté à un énorme problème d&rsquo;ergonomie : lors du changement, un certains nombre d&rsquo;utilisateurs risqueraient d&rsquo;être perdus puisque le terme a changé dans l&rsquo;interface d&rsquo;administration. Pire encore, d&rsquo;autres plugins et thèmes pouvaient récupérer la valeur de la traduction de cette chaîne pour l&rsquo;utiliser ailleurs, ce qui lors du changement pourrait provoquer certaines incohérences.</p>
<p>L&rsquo;autre solution, c&rsquo;est de nous forcer nous à changer nos appellations. Chaque membre de la communauté devrait alors remplacer de manière systématique sa manière de nommer les &laquo;&nbsp;modules&nbsp;&raquo; de WordPress. Mais vient alors ma vision de consultant en référencement naturel : pourquoi appeler un élément &laquo;&nbsp;Extension&nbsp;&raquo; si une plus grande majorité de personnes utilise un autre terme lors de ses recherches sur le web&#8230;</p>
<p>Je reste donc assez mitigé sur le sujet. Et vous, quel est votre avis ?</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HP8wb-DawIU:ldwY5DxtbyI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HP8wb-DawIU:ldwY5DxtbyI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=HP8wb-DawIU:ldwY5DxtbyI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HP8wb-DawIU:ldwY5DxtbyI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HP8wb-DawIU:ldwY5DxtbyI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=HP8wb-DawIU:ldwY5DxtbyI:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/HP8wb-DawIU\" height=\"1\" width=\"1\" alt=\"\"/><img src=\"http://feeds.feedburner.com/~r/feedburner/cjgL/~4/nhFl_mTTaWE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"http://www.wordpress-fr.net/2015/03/25/problematique-traductions/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"43\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:2:{i:0;a:5:{s:4:\"data\";s:65:\"http://www.wordpress-fr.net/2015/03/25/problematique-traductions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/HP8wb-DawIU/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:54:\"
		
		
		
		
		
				
		
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"L’Hebdo WordPress n°256 : WordPress 4.2 – Traduction – Astuces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"http://feedproxy.google.com/~r/feedburner/cjgL/~3/KJsEy-lwkw0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"http://www.wordpress-fr.net/2015/03/24/lhebdo-wordpress-n256-wordpress-4-2-traduction-astuces/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Mar 2015 06:52:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:14:\"Développement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"Traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:5:\"Hebdo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:13:\"WordPress 4.2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://www.wordpress-fr.net/?p=7406\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:381:\"WordPress 4.2 beta 2 La 2e beta de WordPress 4.2 (en) est disponible pour les tests. Des nouvelles de l&#8217;équipe de traduction Le WordCamp London a été l&#8217;occasion de parler de la traduction. Avec notamment l&#8217;arrivée d&#8217;une version française de Belgique (en). Nouvelle gestion des équipes de traduction (en). Le guide de la maintenance WordPress [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Benoît\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3044:\"<h3>WordPress 4.2 beta 2</h3>
<p>La<a href=\"https://wordpress.org/news/2015/03/wordpress-4-2-beta-2/\"> 2e beta de WordPress 4.2</a> (en) est disponible pour les tests.</p>
<h3>Des nouvelles de l&rsquo;équipe de traduction</h3>
<ul>
<li>Le WordCamp London a été l&rsquo;occasion de parler de la traduction. Avec notamment l&rsquo;arrivée d&rsquo;une <a href=\"https://make.wordpress.org/polyglots/2015/03/20/polyglots-team-wordcamp-london-contributor-day\">version française de Belgique (en)</a>.</li>
<li><a href=\"https://make.wordpress.org/polyglots/2015/03/19/per-project-permissions-for-translation-editors-previously-validators\">Nouvelle gestion des équipes de traduction (en)</a>.</li>
</ul>
<h3>Le guide de la maintenance WordPress</h3>
<p>MaintPress propose <a href=\"http://www.maintpress.com/blog/maintenance-wordpress-guide/\">un guide de la maintenance avec WordPress</a>.</p>
<h3>Des failles dans WPML</h3>
<p>L&rsquo;<a href=\"http://www.zdnet.fr/actualites/plugin-wpml-400000-sites-exposes-a-des-failles-sur-wordpress-39816484.htm\">extension WPML a été exposée à des failles de sécurité importantes</a>. Réactive, l&rsquo;équipe de développement a publié une version qui corrige les problèmes.</p>
<h3>Pourquoi une agence a abandonné WordPress ?</h3>
<p>Un retour de Thierry sur une <a href=\"http://www.wp-pro.fr/pourquoi-une-agence-a-abandonne-wordpress/\">mauvaise expérience avec WordPress</a>.</p>
<h3>Le syndrome du sapin de Noël</h3>
<p>Un article qui m&rsquo;a fait plaisir et que je ne saurai que trop recommander ! <a href=\"http://wpmarmite.com/syndrome-sapin-de-noel/\">Le syndrôme Sapin de Noël </a>vous connaissez ? un site qui brille de 1000 feux n&rsquo;est pas toujours une bonne chose, lisez cet article vous verrez !</p>
<h3>10 conseils pour sécuriser son site WordPress</h3>
<p>Le JDN propose <a href=\"http://www.journaldunet.com/solutions/dsi/securiser-son-wordpress/\">10 conseils de sécurité</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=9nrX3qezB3Y:ko9TM8Tx8sU:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=9nrX3qezB3Y:ko9TM8Tx8sU:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=9nrX3qezB3Y:ko9TM8Tx8sU:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=9nrX3qezB3Y:ko9TM8Tx8sU:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=9nrX3qezB3Y:ko9TM8Tx8sU:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=9nrX3qezB3Y:ko9TM8Tx8sU:gIN9vFwOqvQ\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/9nrX3qezB3Y\" height=\"1\" width=\"1\" alt=\"\"/><img src=\"http://feeds.feedburner.com/~r/feedburner/cjgL/~4/KJsEy-lwkw0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"http://www.wordpress-fr.net/2015/03/24/lhebdo-wordpress-n256-wordpress-4-2-traduction-astuces/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:2:{i:0;a:5:{s:4:\"data\";s:94:\"http://www.wordpress-fr.net/2015/03/24/lhebdo-wordpress-n256-wordpress-4-2-traduction-astuces/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/9nrX3qezB3Y/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:15:\"feedburner/cjgl\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:18:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:44:\"http://www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:9;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:96:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2Ffeedburner%2FcjgL\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:10;a:5:{s:4:\"data\";s:21:\"Subscribe with Feedly\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:80:\"http://feedly.com/#subscription/feed/http://feeds.feedburner.com/feedburner/cjgL\";s:3:\"src\";s:42:\"http://s3.feedly.com/feedburner/feedly.png\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:11;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:72:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/feedburner/cjgL\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:12;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:95:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2Ffeedburner%2FcjgL\";s:3:\"src\";s:44:\"http://www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:13;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2Ffeedburner%2FcjgL\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:14;a:5:{s:4:\"data\";s:34:\"Subscribe with The Free Dictionary\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:103:\"http://www.thefreedictionary.com/_/hp/AddRSS.aspx?http%3A%2F%2Ffeeds.feedburner.com%2Ffeedburner%2FcjgL\";s:3:\"src\";s:48:\"http://img.tfd.com/hp/addToTheFreeDictionary.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:15;a:5:{s:4:\"data\";s:28:\"Subscribe with Bitty Browser\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:115:\"http://www.bitty.com/manual/?contenttype=rssfeed&contentvalue=http%3A%2F%2Ffeeds.feedburner.com%2Ffeedburner%2FcjgL\";s:3:\"src\";s:48:\"http://www.bitty.com/img/bittychicklet_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:16;a:5:{s:4:\"data\";s:28:\"Subscribe with Podcast Ready\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:107:\"http://www.podcastready.com/oneclick_bookmark.php?url=http%3A%2F%2Ffeeds.feedburner.com%2Ffeedburner%2FcjgL\";s:3:\"src\";s:58:\"http://www.podcastready.com/images/podcastready_button.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:17;a:5:{s:4:\"data\";s:29:\"Subscribe with Daily Rotation\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:97:\"http://www.dailyrotation.com/index.php?feed=http%3A%2F%2Ffeeds.feedburner.com%2Ffeedburner%2FcjgL\";s:3:\"src\";s:40:\"http://www.dailyrotation.com/rss-dr2.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:43:\"http://feeds.feedburner.com/feedburner/cjgL\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:13:\"last-modified\";s:29:\"Wed, 05 Aug 2015 19:40:17 GMT\";s:4:\"date\";s:29:\"Wed, 05 Aug 2015 19:40:27 GMT\";s:7:\"expires\";s:29:\"Wed, 05 Aug 2015 19:40:27 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:18:\"alternate-protocol\";s:11:\"80:quic,p=0\";s:13:\"accept-ranges\";s:4:\"none\";s:4:\"vary\";s:15:\"Accept-Encoding\";}s:5:\"build\";s:14:\"20150805191846\";}","no");
INSERT INTO `xr7h81hn_options` VALUES("134","_transient_timeout_feed_mod_96281909e104f3c547a3bba0b6d36ad5","1438846827","no");
INSERT INTO `xr7h81hn_options` VALUES("135","_transient_feed_mod_96281909e104f3c547a3bba0b6d36ad5","1438803627","no");
INSERT INTO `xr7h81hn_options` VALUES("136","_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109","1438846828","no");
INSERT INTO `xr7h81hn_options` VALUES("137","_transient_feed_b9388c83948825c1edaef0d856b7b109","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"
	
\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:117:\"
		
		
		
		
		
		
				

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"WordPress Plugins » View: Popular\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wordpress.org/plugins/browse/popular/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"WordPress Plugins » View: Popular\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 05 Aug 2015 19:08:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"http://bbpress.org/?v=1.1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:30:{i:0;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Google Analytics by Yoast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Sep 2007 12:15:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"2316@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:124:\"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Joost de Valk\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WP Super Cache\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wordpress.org/plugins/wp-super-cache/#post-2572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Nov 2007 11:40:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"2572@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"A very fast caching engine for WordPress that produces static html files.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Donncha O Caoimh\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"WP-PageNavi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/plugins/wp-pagenavi/#post-363\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Mar 2007 23:17:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"363@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Adds a more advanced paging navigation interface.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Lester Chan\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"Advanced Custom Fields\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wordpress.org/plugins/advanced-custom-fields/#post-25254\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 Mar 2011 04:07:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"25254@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"Customise WordPress with powerful, professional and intuitive fields\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"elliotcondon\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"NextGEN Gallery\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/plugins/nextgen-gallery/#post-1169\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Apr 2007 20:08:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"1169@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:121:\"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 12 million downloads.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Alex Rabe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Yoast SEO\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wordpress.org/plugins/wordpress-seo/#post-8321\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Jan 2009 20:34:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"8321@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:131:\"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast&#039;s WordPress SEO plugin.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Joost de Valk\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Contact Form 7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wordpress.org/plugins/contact-form-7/#post-2141\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 02 Aug 2007 12:45:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"2141@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Just another contact form plugin. Simple but flexible.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Takayuki Miyoshi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Really Simple CAPTCHA\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wordpress.org/plugins/really-simple-captcha/#post-9542\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 09 Mar 2009 02:17:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"9542@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:138:\"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Takayuki Miyoshi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Google XML Sitemaps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wordpress.org/plugins/google-sitemap-generator/#post-132\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Mar 2007 22:31:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"132@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"This plugin will generate a special XML sitemap which will help search engines to better index your blog.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Arne Brachhold\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Akismet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://wordpress.org/plugins/akismet/#post-15\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Mar 2007 22:11:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"15@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"TinyMCE Advanced\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wordpress.org/plugins/tinymce-advanced/#post-2082\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jun 2007 15:00:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"2082@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Andrew Ozz\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"WooCommerce - excelling eCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/plugins/woocommerce/#post-29860\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Sep 2011 08:13:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"29860@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"WooThemes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"All in One SEO Pack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 30 Mar 2007 20:08:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"753@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:126:\"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"uberdose\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"WordPress Importer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wordpress.org/plugins/wordpress-importer/#post-18101\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 May 2010 17:42:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"18101@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Brian Colinger\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Hello Dolly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/plugins/hello-dolly/#post-5790\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 29 May 2008 22:11:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"5790@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:150:\"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Jetpack by WordPress.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wordpress.org/plugins/jetpack/#post-23862\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Jan 2011 02:21:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"23862@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"Your WordPress, Streamlined.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Tim Moore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Wordfence Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/plugins/wordfence/#post-29832\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 04 Sep 2011 03:13:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"29832@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:138:\"The Wordfence WordPress security plugin provides free enterprise-class WordPress security, protecting your website from hacks and malware.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Wordfence\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Regenerate Thumbnails\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 23 Aug 2008 14:38:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"6743@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"Allows you to regenerate your thumbnails after changing the thumbnail sizes.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Alex Mills (Viper007Bond)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"W3 Total Cache\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/plugins/w3-total-cache/#post-12073\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 29 Jul 2009 18:46:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"12073@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:132:\"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Frederick Townes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Disable Comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/plugins/disable-comments/#post-26907\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 May 2011 04:42:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"26907@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:134:\"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Samir Shah\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Duplicate Post\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wordpress.org/plugins/duplicate-post/#post-2646\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 05 Dec 2007 17:40:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"2646@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"Clone posts and pages.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"lopo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"WP Multibyte Patch\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Jul 2011 12:22:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"28395@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Multibyte functionality enhancement for the WordPress Japanese package.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"plugin-master\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"iThemes Security (formerly Better WP Security)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wordpress.org/plugins/better-wp-security/#post-21738\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Oct 2010 22:06:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"21738@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:150:\"Protect your WordPress site by hiding vital areas of your site, protecting access to important files, preventing brute-force login attempts, detecting\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Chris Wiegman\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Black Studio TinyMCE Widget\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 10 Nov 2011 15:06:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"31973@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"The visual editor widget for Wordpress.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Marco Chiesi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Meta Slider\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/plugins/ml-slider/#post-49521\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Feb 2013 16:56:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"49521@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:145:\"Easy to use WordPress slider plugin. Create SEO optimised responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Matcha Labs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Page Builder by SiteOrigin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wordpress.org/plugins/siteorigin-panels/#post-51888\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Apr 2013 10:36:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"51888@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Greg Priday\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Google Analytics\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wordpress.org/plugins/googleanalytics/#post-11199\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 09 Jun 2009 22:09:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"11199@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"Enables google analytics on all pages.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Kevin Sylvestre\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP-DB-Backup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/plugins/wp-db-backup/#post-472\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 17 Mar 2007 04:41:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"472@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"On-demand backup of your WordPress database.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"ringmaster\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Google Analytics Dashboard for WP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 10 Mar 2013 17:07:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"50539@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Alin Marcu\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Duplicator\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/plugins/duplicator/#post-26607\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 May 2011 12:15:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"26607@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"Duplicate, clone, backup, move and transfer an entire site from one location to another.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Cory Lamle\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:46:\"https://wordpress.org/plugins/rss/view/popular\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:12:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 05 Aug 2015 19:40:28 GMT\";s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:10:\"connection\";s:5:\"close\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:7:\"expires\";s:29:\"Wed, 05 Aug 2015 19:43:43 GMT\";s:13:\"cache-control\";s:0:\"\";s:6:\"pragma\";s:0:\"\";s:13:\"last-modified\";s:31:\"Wed, 05 Aug 2015 19:08:43 +0000\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 250\";}s:5:\"build\";s:14:\"20150805191846\";}","no");
INSERT INTO `xr7h81hn_options` VALUES("138","_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109","1438846828","no");
INSERT INTO `xr7h81hn_options` VALUES("139","_transient_feed_mod_b9388c83948825c1edaef0d856b7b109","1438803628","no");
INSERT INTO `xr7h81hn_options` VALUES("140","_transient_timeout_plugin_slugs","1438904304","no");
INSERT INTO `xr7h81hn_options` VALUES("141","_transient_plugin_slugs","a:10:{i:0;s:19:\"akismet/akismet.php\";i:1;s:27:\"backupbuddy/backupbuddy.php\";i:2;s:67:\"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php\";i:3;s:47:\"language-icons-flags-switcher/functionsfile.php\";i:4;s:41:\"better-wp-security/better-wp-security.php\";i:5;s:19:\"jetpack/jetpack.php\";i:6;s:21:\"polylang/polylang.php\";i:7;s:39:\"simple-custom-css/simple-custom-css.php\";i:8;s:35:\"simple-drop-cap/simple-drop-cap.php\";i:9;s:41:\"wp-dashboard-notes/wp-dashboard-notes.php\";}","no");
INSERT INTO `xr7h81hn_options` VALUES("142","_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51","1438846828","no");
INSERT INTO `xr7h81hn_options` VALUES("143","_transient_dash_4077549d03da2e451c8b5f002294ff51","<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/NRscrl4Ddlw/\'>L’Hebdo WordPress n°262 : Communautés – Retours d’expérience – Astuces</a> <span class=\"rss-date\">24 juillet 2015</span><div class=\"rssSummary\">WordPress 4.2.3 : mise à jour de sécurité Une 3e mise à jour mineure vient corriger une faille de sécurité détectée plus tôt. La communauté française grandie Jenny Beaumont a fait un résumé de l’histoire (en) de la communauté française de WordPress… et Émilie vous dit pourquoi en faire partie. 14e Podcast VFT : l’animation [&hellip;]</div></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/feedburner/cjgL/~3/0Fxaf6P1QkI/\'>L’Hebdo WordPress n°262 : Communautés – Retours d’expérience – Astuces</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/feedburner/cjgL/~3/QVV623BdIII/\'>L’Hebdo WordPress n°261 : WordCamp et WPMX Day – e-barcamp – Communautés</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/feedburner/cjgL/~3/siKfBLAVPrQ/\'>L’Hebdo WordPress n°260 : WooThemes – Slack – Insights</a></li></ul></div><div class=\"rss-widget\"><ul><li class=\'dashboard-news-plugin\'><span>Extensions populaires:</span> <a href=\'https://wordpress.org/plugins/woocommerce/\' class=\'dashboard-news-plugin-link\'>WooCommerce - excelling eCommerce</a>&nbsp;<span>(<a href=\'plugin-install.php?tab=plugin-information&amp;plugin=woocommerce&amp;_wpnonce=80a7adf569&amp;TB_iframe=true&amp;width=600&amp;height=800\' class=\'thickbox\' title=\'WooCommerce - excelling eCommerce\'>Installer</a>)</span></li></ul></div>","no");
INSERT INTO `xr7h81hn_options` VALUES("144","_transient_timeout_pb_backupbuddy_latest_version","1438846839","no");
INSERT INTO `xr7h81hn_options` VALUES("145","_transient_pb_backupbuddy_latest_version","a:2:{i:0;s:7:\"6.2.2.2\";i:1;s:5:\"6.2.2\";}","no");
INSERT INTO `xr7h81hn_options` VALUES("146","_transient_timeout_pb_backupbuddy_avail_zip_methods","1438854980","no");
INSERT INTO `xr7h81hn_options` VALUES("147","_transient_pb_backupbuddy_avail_zip_methods","a:3:{s:7:\"methods\";a:2:{i:0;s:10:\"ziparchive\";i:1;s:6:\"pclzip\";}s:7:\"details\";a:2:{s:10:\"ziparchive\";a:2:{s:4:\"attr\";a:10:{s:4:\"name\";s:17:\"ZipArchive Method\";s:13:\"compatibility\";b:0;s:10:\"is_checker\";b:1;s:9:\"is_lister\";b:1;s:11:\"is_archiver\";b:0;s:13:\"is_unarchiver\";b:1;s:12:\"is_commenter\";b:1;s:9:\"is_zipper\";b:1;s:11:\"is_unzipper\";b:1;s:12:\"is_extractor\";b:1;}s:5:\"param\";a:0:{}}s:6:\"pclzip\";a:2:{s:4:\"attr\";a:10:{s:4:\"name\";s:13:\"PclZip Method\";s:13:\"compatibility\";b:1;s:10:\"is_checker\";b:1;s:9:\"is_lister\";b:1;s:11:\"is_archiver\";b:1;s:13:\"is_unarchiver\";b:1;s:12:\"is_commenter\";b:1;s:9:\"is_zipper\";b:1;s:11:\"is_unzipper\";b:1;s:12:\"is_extractor\";b:1;}s:5:\"param\";a:0:{}}}s:7:\"control\";a:1:{s:9:\"signature\";s:32:\"e7a1a77ecbc73083d08847fe60342475\";}}","no");
INSERT INTO `xr7h81hn_options` VALUES("148","recently_activated","a:1:{s:27:\"backupbuddy/backupbuddy.php\";i:1438811549;}","yes");
INSERT INTO `xr7h81hn_options` VALUES("149","ithemes-updater-cache","a:10:{s:18:\"timeout-multiplier\";i:1;s:10:\"expiration\";i:1438862925;s:9:\"timestamp\";i:1438819725;s:8:\"packages\";a:1:{i:0;s:11:\"backupbuddy\";}s:14:\"update_plugins\";a:0:{}s:13:\"update_themes\";a:0:{}s:12:\"use_ca_patch\";b:0;s:7:\"use_ssl\";b:1;s:14:\"quick_releases\";b:0;s:18:\"timeout-mulitplier\";i:1;}","yes");
INSERT INTO `xr7h81hn_options` VALUES("152","_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a","1438815992","yes");
INSERT INTO `xr7h81hn_options` VALUES("153","_site_transient_poptags_40cd750bba9870f18aada2478b24840a","a:40:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";s:4:\"5223\";}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"Post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";s:4:\"3269\";}s:6:\"plugin\";a:3:{s:4:\"name\";s:6:\"plugin\";s:4:\"slug\";s:6:\"plugin\";s:5:\"count\";s:4:\"3204\";}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";s:4:\"2734\";}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";s:4:\"2503\";}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";s:4:\"2001\";}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";s:4:\"1906\";}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";s:4:\"1836\";}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";s:4:\"1787\";}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";s:4:\"1769\";}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";s:4:\"1738\";}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";s:4:\"1728\";}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";s:4:\"1621\";}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"Facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";s:4:\"1419\";}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";s:4:\"1357\";}s:9:\"wordpress\";a:3:{s:4:\"name\";s:9:\"wordpress\";s:4:\"slug\";s:9:\"wordpress\";s:5:\"count\";s:4:\"1299\";}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";s:4:\"1207\";}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";s:4:\"1165\";}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";s:4:\"1150\";}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";s:4:\"1021\";}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";s:3:\"975\";}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";s:3:\"942\";}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";s:3:\"932\";}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";s:3:\"896\";}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";s:3:\"865\";}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";s:3:\"853\";}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";s:3:\"806\";}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"AJAX\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";s:3:\"791\";}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";s:3:\"767\";}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";s:3:\"743\";}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";s:3:\"738\";}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";s:3:\"736\";}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";s:3:\"695\";}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";s:3:\"687\";}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";s:3:\"682\";}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";s:3:\"669\";}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";s:3:\"649\";}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";s:3:\"645\";}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";s:3:\"640\";}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";s:3:\"639\";}}","yes");
INSERT INTO `xr7h81hn_options` VALUES("172","pb_backupbuddy_notifications","a:5:{i:0;a:7:{s:4:\"time\";i:1438811889;s:4:\"slug\";s:16:\"schedule_created\";s:5:\"title\";s:23:\"Backup schedule created\";s:7:\"message\";s:80:\"A new backup schedule \"Daily Database (Quick Setup - Blogger)\" has been created.\";s:4:\"data\";a:8:{s:5:\"title\";s:38:\"Daily Database (Quick Setup - Blogger)\";s:7:\"profile\";i:1;s:8:\"interval\";s:5:\"daily\";s:9:\"first_run\";i:1438901889;s:12:\"delete_after\";s:1:\"0\";s:19:\"remote_destinations\";s:0:\"\";s:8:\"last_run\";i:0;s:6:\"on_off\";s:1:\"1\";}s:6:\"urgent\";b:0;s:8:\"syncSent\";b:0;}i:1;a:7:{s:4:\"time\";i:1438811889;s:4:\"slug\";s:16:\"schedule_created\";s:5:\"title\";s:23:\"Backup schedule created\";s:7:\"message\";s:77:\"A new backup schedule \"Weekly Full (Quick Setup - Blogger)\" has been created.\";s:4:\"data\";a:8:{s:5:\"title\";s:35:\"Weekly Full (Quick Setup - Blogger)\";s:7:\"profile\";i:2;s:8:\"interval\";s:6:\"weekly\";s:9:\"first_run\";i:1438919889;s:12:\"delete_after\";s:1:\"0\";s:19:\"remote_destinations\";s:0:\"\";s:8:\"last_run\";i:0;s:6:\"on_off\";s:1:\"1\";}s:6:\"urgent\";b:0;s:8:\"syncSent\";b:0;}i:2;a:7:{s:4:\"time\";i:1438811905;s:4:\"slug\";s:14:\"backup_success\";s:5:\"title\";s:29:\"Backup completed successfully\";s:7:\"message\";s:56:\"A manual backup has completed successfully on your site.\";s:4:\"data\";a:3:{s:6:\"serial\";s:10:\"28243y932e\";s:4:\"type\";s:4:\"full\";s:13:\"profile_title\";s:15:\"Complete Backup\";}s:6:\"urgent\";b:0;s:8:\"syncSent\";b:0;}i:3;a:7:{s:4:\"time\";i:1438814115;s:4:\"slug\";s:14:\"backup_success\";s:5:\"title\";s:29:\"Backup completed successfully\";s:7:\"message\";s:56:\"A manual backup has completed successfully on your site.\";s:4:\"data\";a:3:{s:6:\"serial\";s:10:\"w2byqsa8e4\";s:4:\"type\";s:4:\"full\";s:13:\"profile_title\";s:15:\"Complete Backup\";}s:6:\"urgent\";b:0;s:8:\"syncSent\";b:0;}i:4;a:7:{s:4:\"time\";i:1438815439;s:4:\"slug\";s:14:\"backup_success\";s:5:\"title\";s:29:\"Backup completed successfully\";s:7:\"message\";s:56:\"A manual backup has completed successfully on your site.\";s:4:\"data\";a:3:{s:6:\"serial\";s:10:\"nzy27fwo6r\";s:4:\"type\";s:4:\"full\";s:13:\"profile_title\";s:15:\"Complete Backup\";}s:6:\"urgent\";b:0;s:8:\"syncSent\";b:0;}}","yes");
INSERT INTO `xr7h81hn_options` VALUES("174","_transient_timeout_pb_backupbuddy_stop_backup-28243y932e","1438898307","no");
INSERT INTO `xr7h81hn_options` VALUES("175","_transient_pb_backupbuddy_stop_backup-28243y932e","1","no");
INSERT INTO `xr7h81hn_options` VALUES("179","_site_transient_timeout_itsec_upload_dir","1438898425","yes");
INSERT INTO `xr7h81hn_options` VALUES("180","_site_transient_itsec_upload_dir","a:6:{s:4:\"path\";s:40:\"/var/www/html/wp-content/uploads/2015/08\";s:3:\"url\";s:53:\"http://192.168.88.88:10000/wp-content/uploads/2015/08\";s:6:\"subdir\";s:8:\"/2015/08\";s:7:\"basedir\";s:32:\"/var/www/html/wp-content/uploads\";s:7:\"baseurl\";s:45:\"http://192.168.88.88:10000/wp-content/uploads\";s:5:\"error\";b:0;}","yes");
INSERT INTO `xr7h81hn_options` VALUES("181","itsec_data","a:5:{s:5:\"build\";i:4036;s:20:\"activation_timestamp\";i:1438812025;s:17:\"already_supported\";b:0;s:15:\"setup_completed\";b:0;s:18:\"tooltips_dismissed\";b:0;}","yes");
INSERT INTO `xr7h81hn_options` VALUES("182","itsec_global","a:1:{s:8:\"log_info\";s:21:\"offirmos-base-wp-OPY7\";}","yes");
INSERT INTO `xr7h81hn_options` VALUES("188","polylang","a:12:{s:7:\"browser\";i:1;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:0;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:2:{i:0;s:9:\"portfolio\";i:1;s:7:\"service\";}s:10:\"taxonomies\";a:1:{i:0;s:19:\"portfolio_categorie\";}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"1.7.8\";s:12:\"default_lang\";s:2:\"fr\";}","yes");
INSERT INTO `xr7h81hn_options` VALUES("202","wpsdc_options","a:5:{s:19:\"option_display_mode\";s:5:\"float\";s:17:\"option_font_color\";s:0:\"\";s:16:\"option_font_size\";s:1:\"0\";s:17:\"option_custom_css\";s:0:\"\";s:23:\"option_enable_all_posts\";s:0:\"\";}","yes");
INSERT INTO `xr7h81hn_options` VALUES("209","theme_mods_twentyfifteen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1438812161;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}","yes");
INSERT INTO `xr7h81hn_options` VALUES("210","current_theme","Etendard","yes");
INSERT INTO `xr7h81hn_options` VALUES("211","theme_switched","","yes");
INSERT INTO `xr7h81hn_options` VALUES("212","etendard_import_OF","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("214","cocostore_values","s:6:\"a:0:{}\";","yes");
INSERT INTO `xr7h81hn_options` VALUES("216","itsec_jquery_version","1.11.2","yes");
INSERT INTO `xr7h81hn_options` VALUES("220","_transient_timeout_pb_backupbuddy_stop_backup-w2byqsa8e4","1438900517","no");
INSERT INTO `xr7h81hn_options` VALUES("221","_transient_pb_backupbuddy_stop_backup-w2byqsa8e4","1","no");
INSERT INTO `xr7h81hn_options` VALUES("223","_transient_timeout_pb_backupbuddy_stop_backup-nzy27fwo6r","1438901842","no");
INSERT INTO `xr7h81hn_options` VALUES("224","_transient_pb_backupbuddy_stop_backup-nzy27fwo6r","1","no");
INSERT INTO `xr7h81hn_options` VALUES("237","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.2.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.2.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.2.4\";s:7:\"version\";s:5:\"4.2.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1438817819;s:15:\"version_checked\";s:5:\"4.2.4\";s:12:\"translations\";a:0:{}}","yes");
INSERT INTO `xr7h81hn_options` VALUES("238","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1438817823;s:7:\"checked\";a:3:{s:15:\"Etendard-enfant\";s:0:\"\";s:8:\"Etendard\";s:5:\"1.016\";s:13:\"twentyfifteen\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","yes");
INSERT INTO `xr7h81hn_options` VALUES("241","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1438817903;s:7:\"checked\";a:10:{s:19:\"akismet/akismet.php\";s:5:\"3.1.3\";s:27:\"backupbuddy/backupbuddy.php\";s:7:\"6.2.2.2\";s:67:\"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php\";s:5:\"1.3.1\";s:47:\"language-icons-flags-switcher/functionsfile.php\";s:3:\"1.9\";s:41:\"better-wp-security/better-wp-security.php\";s:5:\"4.9.0\";s:19:\"jetpack/jetpack.php\";s:5:\"3.6.1\";s:21:\"polylang/polylang.php\";s:5:\"1.7.8\";s:39:\"simple-custom-css/simple-custom-css.php\";s:3:\"3.2\";s:35:\"simple-drop-cap/simple-drop-cap.php\";s:5:\"1.2.7\";s:41:\"wp-dashboard-notes/wp-dashboard-notes.php\";s:5:\"1.0.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.1.3.zip\";}s:67:\"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"50074\";s:4:\"slug\";s:31:\"favicon-by-realfavicongenerator\";s:6:\"plugin\";s:67:\"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php\";s:11:\"new_version\";s:5:\"1.3.1\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/favicon-by-realfavicongenerator/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/favicon-by-realfavicongenerator.zip\";}s:47:\"language-icons-flags-switcher/functionsfile.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"42245\";s:4:\"slug\";s:29:\"language-icons-flags-switcher\";s:6:\"plugin\";s:47:\"language-icons-flags-switcher/functionsfile.php\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/language-icons-flags-switcher/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/language-icons-flags-switcher.zip\";}s:41:\"better-wp-security/better-wp-security.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"18308\";s:4:\"slug\";s:18:\"better-wp-security\";s:6:\"plugin\";s:41:\"better-wp-security/better-wp-security.php\";s:11:\"new_version\";s:5:\"4.9.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/better-wp-security/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/better-wp-security.4.9.0.zip\";}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"20101\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:5:\"3.6.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/jetpack.3.6.1.zip\";}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"25780\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:5:\"1.7.8\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/polylang.1.7.8.zip\";}s:39:\"simple-custom-css/simple-custom-css.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:5:\"43065\";s:4:\"slug\";s:17:\"simple-custom-css\";s:6:\"plugin\";s:39:\"simple-custom-css/simple-custom-css.php\";s:11:\"new_version\";s:3:\"3.2\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/simple-custom-css/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/simple-custom-css.zip\";s:14:\"upgrade_notice\";s:92:\"Tested for compatibility with WP 4.1.  Improved architecture to reduce the number of queries\";}s:35:\"simple-drop-cap/simple-drop-cap.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"53140\";s:4:\"slug\";s:15:\"simple-drop-cap\";s:6:\"plugin\";s:35:\"simple-drop-cap/simple-drop-cap.php\";s:11:\"new_version\";s:5:\"1.2.7\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/simple-drop-cap/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/simple-drop-cap.1.2.7.zip\";}s:41:\"wp-dashboard-notes/wp-dashboard-notes.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"52974\";s:4:\"slug\";s:18:\"wp-dashboard-notes\";s:6:\"plugin\";s:41:\"wp-dashboard-notes/wp-dashboard-notes.php\";s:11:\"new_version\";s:5:\"1.0.5\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wp-dashboard-notes/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wp-dashboard-notes.1.0.5.zip\";}}}","yes");
INSERT INTO `xr7h81hn_options` VALUES("242","_site_transient_timeout_available_translations","1438828833","yes");
INSERT INTO `xr7h81hn_options` VALUES("243","_site_transient_available_translations","a:59:{s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.2.2\";s:7:\"updated\";s:19:\"2015-05-26 06:57:37\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.4/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-28 10:19:19\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-08 17:43:43\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-08 11:08:34\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-29 07:26:05\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-28 16:26:14\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-24 12:08:43\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.4/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/es_ES.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"es\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/es_MX.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.2.2\";s:7:\"updated\";s:19:\"2015-04-25 13:39:01\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.2/es_PE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:3:\"4.0\";s:7:\"updated\";s:19:\"2014-09-04 19:47:01\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-05 20:09:08\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.4/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.4/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-08-04 18:19:10\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.4/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-10 14:16:27\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:3:\"4.0\";s:7:\"updated\";s:19:\"2014-09-05 17:37:43\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.0/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.1.7\";s:7:\"updated\";s:19:\"2015-03-26 15:20:27\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.7/haz.zip\";s:3:\"iso\";a:1:{i:2;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-12 08:05:04\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-07 17:26:35\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.4/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-23 11:42:14\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-08-02 13:59:25\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.4/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-08-04 17:21:56\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.4/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-27 01:39:56\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.2.2\";s:7:\"updated\";s:19:\"2015-04-23 15:23:08\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.2/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:5:\"4.1.7\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.7/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-08-02 17:06:22\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-16 14:25:19\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-29 10:11:53\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-08-01 08:03:33\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.2.4/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-26 23:08:12\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:5:\"4.1.7\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.1.7/ps.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ps\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-22 10:25:51\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-08 14:53:48\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-26 00:43:12\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-30 17:27:24\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.1.7\";s:7:\"updated\";s:19:\"2015-03-26 16:25:46\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.7/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.2.2\";s:7:\"updated\";s:19:\"2015-05-29 08:27:12\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-08-03 18:34:59\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-06 10:10:09\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.4/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-24 13:30:08\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.1.7\";s:7:\"updated\";s:19:\"2015-03-26 16:45:38\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.7/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-05 10:51:50\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.2.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-04 19:52:42\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.2.4\";s:7:\"updated\";s:19:\"2015-07-23 13:52:20\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}","yes");
INSERT INTO `xr7h81hn_options` VALUES("257","akismet_strictness","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("258","akismet_show_user_comments_approved","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("259","wordpress_api_key","d49b5ee258bd","yes");
INSERT INTO `xr7h81hn_options` VALUES("261","CocoricoPostMetaStorePostId","","yes");
INSERT INTO `xr7h81hn_options` VALUES("266","_site_transient_timeout_theme_roots","1438821364","yes");
INSERT INTO `xr7h81hn_options` VALUES("267","_site_transient_theme_roots","a:3:{s:15:\"Etendard-enfant\";s:7:\"/themes\";s:8:\"Etendard\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";}","yes");
INSERT INTO `xr7h81hn_options` VALUES("270","category_children","a:0:{}","yes");
INSERT INTO `xr7h81hn_options` VALUES("279","rewrite_rules","a:164:{s:25:\"(en)/portfolio-archive/?$\";s:46:\"index.php?lang=$matches[1]&post_type=portfolio\";s:20:\"portfolio-archive/?$\";s:37:\"index.php?lang=fr&post_type=portfolio\";s:55:\"(en)/portfolio-archive/feed/(feed|rdf|rss|rss2|atom)/?$\";s:63:\"index.php?lang=$matches[1]&post_type=portfolio&feed=$matches[2]\";s:50:\"portfolio-archive/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?lang=fr&post_type=portfolio&feed=$matches[1]\";s:50:\"(en)/portfolio-archive/(feed|rdf|rss|rss2|atom)/?$\";s:63:\"index.php?lang=$matches[1]&post_type=portfolio&feed=$matches[2]\";s:45:\"portfolio-archive/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?lang=fr&post_type=portfolio&feed=$matches[1]\";s:42:\"(en)/portfolio-archive/page/([0-9]{1,})/?$\";s:64:\"index.php?lang=$matches[1]&post_type=portfolio&paged=$matches[2]\";s:37:\"portfolio-archive/page/([0-9]{1,})/?$\";s:55:\"index.php?lang=fr&post_type=portfolio&paged=$matches[1]\";s:23:\"(en)/service-archive/?$\";s:44:\"index.php?lang=$matches[1]&post_type=service\";s:18:\"service-archive/?$\";s:35:\"index.php?lang=fr&post_type=service\";s:53:\"(en)/service-archive/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?lang=$matches[1]&post_type=service&feed=$matches[2]\";s:48:\"service-archive/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?lang=fr&post_type=service&feed=$matches[1]\";s:48:\"(en)/service-archive/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?lang=$matches[1]&post_type=service&feed=$matches[2]\";s:43:\"service-archive/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?lang=fr&post_type=service&feed=$matches[1]\";s:40:\"(en)/service-archive/page/([0-9]{1,})/?$\";s:62:\"index.php?lang=$matches[1]&post_type=service&paged=$matches[2]\";s:35:\"service-archive/page/([0-9]{1,})/?$\";s:53:\"index.php?lang=fr&post_type=service&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:50:\"(en)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=fr&post_format=$matches[1]&feed=$matches[2]\";s:45:\"(en)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=fr&post_format=$matches[1]&feed=$matches[2]\";s:38:\"(en)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=fr&post_format=$matches[1]&paged=$matches[2]\";s:20:\"(en)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=fr&post_format=$matches[1]\";s:33:\"notes/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"notes/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"notes/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"notes/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"notes/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"notes/([^/]+)/trackback/?$\";s:31:\"index.php?note=$matches[1]&tb=1\";s:34:\"notes/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?note=$matches[1]&paged=$matches[2]\";s:41:\"notes/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?note=$matches[1]&cpage=$matches[2]\";s:26:\"notes/([^/]+)(/[0-9]+)?/?$\";s:43:\"index.php?note=$matches[1]&page=$matches[2]\";s:22:\"notes/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"notes/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"notes/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"notes/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"notes/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"projet/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"projet/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"projet/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"projet/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"projet/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"projet/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:47:\"projet/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:42:\"projet/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:35:\"projet/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:42:\"projet/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:27:\"projet/([^/]+)(/[0-9]+)?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:23:\"projet/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"projet/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"projet/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"projet/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"projet/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:60:\"portfolio_categorie/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?portfolio_categorie=$matches[1]&feed=$matches[2]\";s:55:\"portfolio_categorie/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?portfolio_categorie=$matches[1]&feed=$matches[2]\";s:48:\"portfolio_categorie/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?portfolio_categorie=$matches[1]&paged=$matches[2]\";s:30:\"portfolio_categorie/([^/]+)/?$\";s:41:\"index.php?portfolio_categorie=$matches[1]\";s:35:\"service/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"service/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"service/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"service/([^/]+)/trackback/?$\";s:34:\"index.php?service=$matches[1]&tb=1\";s:48:\"service/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:43:\"service/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:36:\"service/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&paged=$matches[2]\";s:43:\"service/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&cpage=$matches[2]\";s:28:\"service/([^/]+)(/[0-9]+)?/?$\";s:46:\"index.php?service=$matches[1]&page=$matches[2]\";s:24:\"service/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"service/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"service/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:37:\"(en)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=fr&&feed=$matches[1]\";s:32:\"(en)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=fr&&feed=$matches[1]\";s:25:\"(en)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=fr&&paged=$matches[1]\";s:7:\"(en)/?$\";s:26:\"index.php?lang=$matches[1]\";s:46:\"(en)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=fr&&feed=$matches[1]&withcomments=1\";s:41:\"(en)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=fr&&feed=$matches[1]&withcomments=1\";s:49:\"(en)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=fr&s=$matches[1]&feed=$matches[2]\";s:44:\"(en)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=fr&s=$matches[1]&feed=$matches[2]\";s:37:\"(en)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=fr&s=$matches[1]&paged=$matches[2]\";s:19:\"(en)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=fr&s=$matches[1]\";s:52:\"(en)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=fr&author_name=$matches[1]&feed=$matches[2]\";s:47:\"(en)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=fr&author_name=$matches[1]&feed=$matches[2]\";s:40:\"(en)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=fr&author_name=$matches[1]&paged=$matches[2]\";s:22:\"(en)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=fr&author_name=$matches[1]\";s:74:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=fr&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=fr&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:62:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:89:\"index.php?lang=fr&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:71:\"index.php?lang=fr&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"(en)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:72:\"index.php?lang=fr&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"(en)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:72:\"index.php?lang=fr&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:49:\"(en)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:73:\"index.php?lang=fr&year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"(en)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:55:\"index.php?lang=fr&year=$matches[1]&monthnum=$matches[2]\";s:48:\"(en)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?lang=fr&year=$matches[1]&feed=$matches[2]\";s:43:\"(en)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?lang=fr&year=$matches[1]&feed=$matches[2]\";s:36:\"(en)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:52:\"index.php?lang=fr&year=$matches[1]&paged=$matches[2]\";s:18:\"(en)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:34:\"index.php?lang=fr&year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)(/[0-9]+)?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)(/[0-9]+)?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";}","yes");
INSERT INTO `xr7h81hn_options` VALUES("282","_transient_pll_languages_list","a:2:{i:0;a:20:{s:7:\"term_id\";i:8;s:4:\"name\";s:9:\"Français\";s:4:\"slug\";s:2:\"fr\";s:10:\"term_group\";s:1:\"1\";s:16:\"term_taxonomy_id\";i:8;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"fr_FR\";s:6:\"parent\";s:1:\"0\";s:5:\"count\";i:2;s:10:\"tl_term_id\";i:9;s:19:\"tl_term_taxonomy_id\";i:9;s:8:\"tl_count\";i:1;s:6:\"locale\";R:9;s:6:\"is_rtl\";i:0;s:8:\"flag_url\";s:70:\"http://192.168.88.88:10000/wp-content/plugins/polylang/flags/fr_FR.png\";s:4:\"flag\";s:798:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAGzSURBVHjaYiyeepkBBv79+Zfnx/f379+fP38CyT9//jAyMiq5GP77wvDnJ8MfoAIGBoAAYgGqC7STApL///3/9++/pCTv////Qdz/QO4/IMna0vf/z+9/v379//37bUUTQACBNDD8Z/j87fffvyAVX79+/Q8GQDbQeKA9fM+e/Pv18/+vnwzCIkBLAAKQOAY5AIAwCEv4/4PddNUm3ji0QJyxW3rgzE0iLfqDGr2oYuu0l54AYvnz5x9Q6d+/QPQfyAQqAin9B3EOyG1A1UDj//36zfjr1y8GBoAAFI9BDgAwCMIw+P8Ho3GDO6XQ0l4MN8b2kUwYaLszqgKM/KHcDXwBxAJUD3TJ779A8h9Q5D8SAHoARP36+Rfo41+/mcA2AAQQy49ff0Cu//MPpAeI/0FdA1QNYYNVA/3wmwEYVgwMAAHE8uPHH5BqoD1//gJJLADoJKDS378Z//wFhhJAALF8A3rizz8uTmYg788fJkj4QOKREQyYxSWBhjEC/fcXZANAALF8+/anbcHlHz9+ffvx58uPX9KckkCn/gby/wLd8uvHjx96k+cD1UGiGQgAAgwA7q17ZpsMdUQAAAAASUVORK5CYII=\" title=\"Français\" alt=\"Français\" />\";s:8:\"home_url\";s:27:\"http://192.168.88.88:10000/\";s:10:\"search_url\";s:27:\"http://192.168.88.88:10000/\";s:4:\"host\";N;s:5:\"mo_id\";s:1:\"5\";}i:1;a:20:{s:7:\"term_id\";i:11;s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";s:1:\"2\";s:16:\"term_taxonomy_id\";i:11;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"en_US\";s:6:\"parent\";s:1:\"0\";s:5:\"count\";i:0;s:10:\"tl_term_id\";i:12;s:19:\"tl_term_taxonomy_id\";i:12;s:8:\"tl_count\";i:1;s:6:\"locale\";R:29;s:6:\"is_rtl\";i:0;s:8:\"flag_url\";s:70:\"http://192.168.88.88:10000/wp-content/plugins/polylang/flags/en_US.png\";s:4:\"flag\";s:878:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHzSURBVHjaYkxOP8IAB//+Mfz7w8Dwi4HhP5CcJb/n/7evb16/APL/gRFQDiAAw3JuAgAIBEDQ/iswEERjGzBQLEru97ll0g0+3HvqMn1SpqlqGsZMsZsIe0SICA5gt5a/AGIEarCPtFh+6N/ffwxA9OvP/7//QYwff/6fZahmePeB4dNHhi+fGb59Y4zyvHHmCEAAAW3YDzQYaJJ93a+vX79aVf58//69fvEPlpIfnz59+vDhw7t37968efP3b/SXL59OnjwIEEAsDP+YgY53b2b89++/awvLn98MDi2cVxl+/vl6mituCtBghi9f/v/48e/XL86krj9XzwEEEENy8g6gu22rfn78+NGs5Ofr16+ZC58+fvyYwX8rxOxXr169fPny+fPn1//93bJlBUAAsQADZMEBxj9/GBxb2P/9+S/R8u3vzxuyaX8ZHv3j8/YGms3w8ycQARmi2eE37t4ACCDGR4/uSkrKAS35B3TT////wADOgLOBIaXIyjBlwxKAAGKRXjCB0SOEaeu+/y9fMnz4AHQxCP348R/o+l+//sMZQBNLEvif3AcIIMZbty7Ly6t9ZmXl+fXj/38GoHH/UcGfP79//BBiYHjy9+8/oUkNAAHEwt1V/vI/KBY/QSISFqM/GBg+MzB8A6PfYC5EFiDAABqgW776MP0rAAAAAElFTkSuQmCC\" title=\"English\" alt=\"English\" />\";s:8:\"home_url\";s:30:\"http://192.168.88.88:10000/en/\";s:10:\"search_url\";s:30:\"http://192.168.88.88:10000/en/\";s:4:\"host\";N;s:5:\"mo_id\";s:1:\"6\";}}","yes");
INSERT INTO `xr7h81hn_options` VALUES("283","option_name","","yes");
INSERT INTO `xr7h81hn_options` VALUES("284","option_lr","","yes");
INSERT INTO `xr7h81hn_options` VALUES("285","option_lm","","yes");
INSERT INTO `xr7h81hn_options` VALUES("286","option_lb","","yes");
INSERT INTO `xr7h81hn_options` VALUES("287","option_mt","","yes");
INSERT INTO `xr7h81hn_options` VALUES("288","option_mb","","yes");
INSERT INTO `xr7h81hn_options` VALUES("289","option_rt","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("290","option_rm","","yes");
INSERT INTO `xr7h81hn_options` VALUES("291","option_rb","","yes");
INSERT INTO `xr7h81hn_options` VALUES("292","option_float","","yes");
INSERT INTO `xr7h81hn_options` VALUES("293","option_inline","1","yes");
INSERT INTO `xr7h81hn_options` VALUES("294","option_1","","yes");
INSERT INTO `xr7h81hn_options` VALUES("295","option_name1","","yes");
INSERT INTO `xr7h81hn_options` VALUES("296","option_order1","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("297","option_2","","yes");
INSERT INTO `xr7h81hn_options` VALUES("298","option_name2","","yes");
INSERT INTO `xr7h81hn_options` VALUES("299","option_order2","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("300","option_3","","yes");
INSERT INTO `xr7h81hn_options` VALUES("301","option_name3","","yes");
INSERT INTO `xr7h81hn_options` VALUES("302","option_order3","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("303","option_4","","yes");
INSERT INTO `xr7h81hn_options` VALUES("304","option_name4","","yes");
INSERT INTO `xr7h81hn_options` VALUES("305","option_order4","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("306","option_5","","yes");
INSERT INTO `xr7h81hn_options` VALUES("307","option_name5","","yes");
INSERT INTO `xr7h81hn_options` VALUES("308","option_order5","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("309","option_6","","yes");
INSERT INTO `xr7h81hn_options` VALUES("310","option_name6","","yes");
INSERT INTO `xr7h81hn_options` VALUES("311","option_order6","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("312","option_7","","yes");
INSERT INTO `xr7h81hn_options` VALUES("313","option_name7","","yes");
INSERT INTO `xr7h81hn_options` VALUES("314","option_order7","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("315","option_8","","yes");
INSERT INTO `xr7h81hn_options` VALUES("316","option_name8","","yes");
INSERT INTO `xr7h81hn_options` VALUES("317","option_order8","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("318","option_9","","yes");
INSERT INTO `xr7h81hn_options` VALUES("319","option_name9","","yes");
INSERT INTO `xr7h81hn_options` VALUES("320","option_order9","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("321","option_10","","yes");
INSERT INTO `xr7h81hn_options` VALUES("322","option_name10","","yes");
INSERT INTO `xr7h81hn_options` VALUES("323","option_order10","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("324","option_11","","yes");
INSERT INTO `xr7h81hn_options` VALUES("325","option_name11","","yes");
INSERT INTO `xr7h81hn_options` VALUES("326","option_order11","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("327","option_12","","yes");
INSERT INTO `xr7h81hn_options` VALUES("328","option_name12","","yes");
INSERT INTO `xr7h81hn_options` VALUES("329","option_order12","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("330","option_13","","yes");
INSERT INTO `xr7h81hn_options` VALUES("331","option_name13","","yes");
INSERT INTO `xr7h81hn_options` VALUES("332","option_order13","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("333","option_14","","yes");
INSERT INTO `xr7h81hn_options` VALUES("334","option_name14","","yes");
INSERT INTO `xr7h81hn_options` VALUES("335","option_order14","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("336","option_15","","yes");
INSERT INTO `xr7h81hn_options` VALUES("337","option_name15","","yes");
INSERT INTO `xr7h81hn_options` VALUES("338","option_order15","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("339","option_16","","yes");
INSERT INTO `xr7h81hn_options` VALUES("340","option_name16","","yes");
INSERT INTO `xr7h81hn_options` VALUES("341","option_order16","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("342","option_17","","yes");
INSERT INTO `xr7h81hn_options` VALUES("343","option_name17","","yes");
INSERT INTO `xr7h81hn_options` VALUES("344","option_order17","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("345","option_18","","yes");
INSERT INTO `xr7h81hn_options` VALUES("346","option_name18","","yes");
INSERT INTO `xr7h81hn_options` VALUES("347","option_order18","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("348","option_19","","yes");
INSERT INTO `xr7h81hn_options` VALUES("349","option_name19","","yes");
INSERT INTO `xr7h81hn_options` VALUES("350","option_order19","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("351","option_20","","yes");
INSERT INTO `xr7h81hn_options` VALUES("352","option_name20","","yes");
INSERT INTO `xr7h81hn_options` VALUES("353","option_order20","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("354","option_21","","yes");
INSERT INTO `xr7h81hn_options` VALUES("355","option_name21","","yes");
INSERT INTO `xr7h81hn_options` VALUES("356","option_order21","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("357","option_22","","yes");
INSERT INTO `xr7h81hn_options` VALUES("358","option_name22","","yes");
INSERT INTO `xr7h81hn_options` VALUES("359","option_order22","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("360","option_23","","yes");
INSERT INTO `xr7h81hn_options` VALUES("361","option_name23","","yes");
INSERT INTO `xr7h81hn_options` VALUES("362","option_order23","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("363","option_24","","yes");
INSERT INTO `xr7h81hn_options` VALUES("364","option_name24","","yes");
INSERT INTO `xr7h81hn_options` VALUES("365","option_order24","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("366","option_25","","yes");
INSERT INTO `xr7h81hn_options` VALUES("367","option_name25","","yes");
INSERT INTO `xr7h81hn_options` VALUES("368","option_order25","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("369","option_26","","yes");
INSERT INTO `xr7h81hn_options` VALUES("370","option_name26","","yes");
INSERT INTO `xr7h81hn_options` VALUES("371","option_order26","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("372","option_27","","yes");
INSERT INTO `xr7h81hn_options` VALUES("373","option_name27","","yes");
INSERT INTO `xr7h81hn_options` VALUES("374","option_order27","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("375","option_28","","yes");
INSERT INTO `xr7h81hn_options` VALUES("376","option_name28","","yes");
INSERT INTO `xr7h81hn_options` VALUES("377","option_order28","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("378","option_29","","yes");
INSERT INTO `xr7h81hn_options` VALUES("379","option_name29","","yes");
INSERT INTO `xr7h81hn_options` VALUES("380","option_order29","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("381","option_30","","yes");
INSERT INTO `xr7h81hn_options` VALUES("382","option_name30","","yes");
INSERT INTO `xr7h81hn_options` VALUES("383","option_order30","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("384","option_31","","yes");
INSERT INTO `xr7h81hn_options` VALUES("385","option_name31","","yes");
INSERT INTO `xr7h81hn_options` VALUES("386","option_order31","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("387","option_32","","yes");
INSERT INTO `xr7h81hn_options` VALUES("388","option_name32","","yes");
INSERT INTO `xr7h81hn_options` VALUES("389","option_order32","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("390","option_33","","yes");
INSERT INTO `xr7h81hn_options` VALUES("391","option_name33","","yes");
INSERT INTO `xr7h81hn_options` VALUES("392","option_order33","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("393","option_34","","yes");
INSERT INTO `xr7h81hn_options` VALUES("394","option_name34","","yes");
INSERT INTO `xr7h81hn_options` VALUES("395","option_order34","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("396","option_35","","yes");
INSERT INTO `xr7h81hn_options` VALUES("397","option_name35","","yes");
INSERT INTO `xr7h81hn_options` VALUES("398","option_order35","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("399","option_36","","yes");
INSERT INTO `xr7h81hn_options` VALUES("400","option_name36","","yes");
INSERT INTO `xr7h81hn_options` VALUES("401","option_order36","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("402","option_37","","yes");
INSERT INTO `xr7h81hn_options` VALUES("403","option_name37","","yes");
INSERT INTO `xr7h81hn_options` VALUES("404","option_order37","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("405","option_38","","yes");
INSERT INTO `xr7h81hn_options` VALUES("406","option_name38","","yes");
INSERT INTO `xr7h81hn_options` VALUES("407","option_order38","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("408","option_39","","yes");
INSERT INTO `xr7h81hn_options` VALUES("409","option_name39","","yes");
INSERT INTO `xr7h81hn_options` VALUES("410","option_order39","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("411","option_40","","yes");
INSERT INTO `xr7h81hn_options` VALUES("412","option_name40","","yes");
INSERT INTO `xr7h81hn_options` VALUES("413","option_order40","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("414","option_41","","yes");
INSERT INTO `xr7h81hn_options` VALUES("415","option_name41","","yes");
INSERT INTO `xr7h81hn_options` VALUES("416","option_order41","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("417","option_42","","yes");
INSERT INTO `xr7h81hn_options` VALUES("418","option_name42","","yes");
INSERT INTO `xr7h81hn_options` VALUES("419","option_order42","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("420","option_43","","yes");
INSERT INTO `xr7h81hn_options` VALUES("421","option_name43","","yes");
INSERT INTO `xr7h81hn_options` VALUES("422","option_order43","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("423","option_44","","yes");
INSERT INTO `xr7h81hn_options` VALUES("424","option_name44","","yes");
INSERT INTO `xr7h81hn_options` VALUES("425","option_order44","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("426","option_45","","yes");
INSERT INTO `xr7h81hn_options` VALUES("427","option_name45","","yes");
INSERT INTO `xr7h81hn_options` VALUES("428","option_order45","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("429","option_46","","yes");
INSERT INTO `xr7h81hn_options` VALUES("430","option_name46","","yes");
INSERT INTO `xr7h81hn_options` VALUES("431","option_order46","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("432","option_47","","yes");
INSERT INTO `xr7h81hn_options` VALUES("433","option_name47","","yes");
INSERT INTO `xr7h81hn_options` VALUES("434","option_order47","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("435","option_48","","yes");
INSERT INTO `xr7h81hn_options` VALUES("436","option_name48","","yes");
INSERT INTO `xr7h81hn_options` VALUES("437","option_order48","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("438","option_49","","yes");
INSERT INTO `xr7h81hn_options` VALUES("439","option_name49","","yes");
INSERT INTO `xr7h81hn_options` VALUES("440","option_order49","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("441","option_50","","yes");
INSERT INTO `xr7h81hn_options` VALUES("442","option_name50","","yes");
INSERT INTO `xr7h81hn_options` VALUES("443","option_order50","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("444","option_51","","yes");
INSERT INTO `xr7h81hn_options` VALUES("445","option_name51","","yes");
INSERT INTO `xr7h81hn_options` VALUES("446","option_order51","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("447","option_52","","yes");
INSERT INTO `xr7h81hn_options` VALUES("448","option_name52","","yes");
INSERT INTO `xr7h81hn_options` VALUES("449","option_order52","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("450","option_53","","yes");
INSERT INTO `xr7h81hn_options` VALUES("451","option_name53","","yes");
INSERT INTO `xr7h81hn_options` VALUES("452","option_order53","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("453","option_54","","yes");
INSERT INTO `xr7h81hn_options` VALUES("454","option_name54","","yes");
INSERT INTO `xr7h81hn_options` VALUES("455","option_order54","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("456","option_55","","yes");
INSERT INTO `xr7h81hn_options` VALUES("457","option_name55","","yes");
INSERT INTO `xr7h81hn_options` VALUES("458","option_order55","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("459","option_56","","yes");
INSERT INTO `xr7h81hn_options` VALUES("460","option_name56","","yes");
INSERT INTO `xr7h81hn_options` VALUES("461","option_order56","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("462","option_57","","yes");
INSERT INTO `xr7h81hn_options` VALUES("463","option_name57","","yes");
INSERT INTO `xr7h81hn_options` VALUES("464","option_order57","","yes");
INSERT INTO `xr7h81hn_options` VALUES("465","option_58","","yes");
INSERT INTO `xr7h81hn_options` VALUES("466","option_name58","","yes");
INSERT INTO `xr7h81hn_options` VALUES("467","option_order58","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("468","option_59","","yes");
INSERT INTO `xr7h81hn_options` VALUES("469","option_name59","","yes");
INSERT INTO `xr7h81hn_options` VALUES("470","option_order59","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("471","option_60","","yes");
INSERT INTO `xr7h81hn_options` VALUES("472","option_name60","","yes");
INSERT INTO `xr7h81hn_options` VALUES("473","option_order60","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("474","option_61","","yes");
INSERT INTO `xr7h81hn_options` VALUES("475","option_name61","","yes");
INSERT INTO `xr7h81hn_options` VALUES("476","option_order61","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("477","option_62","","yes");
INSERT INTO `xr7h81hn_options` VALUES("478","option_name62","","yes");
INSERT INTO `xr7h81hn_options` VALUES("479","option_order62","0","yes");
INSERT INTO `xr7h81hn_options` VALUES("482","_site_transient_timeout_it-updater-get_package_details-6c748","1438906125","yes");
INSERT INTO `xr7h81hn_options` VALUES("483","_site_transient_it-updater-get_package_details-6c748","a:3:{s:8:\"packages\";a:1:{s:11:\"backupbuddy\";a:1:{s:5:\"error\";a:3:{s:4:\"code\";i:8012;s:4:\"type\";s:33:\"ITXAPI_Updater_Missing_Legacy_Key\";s:7:\"message\";s:55:\"A legacy key was not provided with the package details.\";}}}s:9:\"time_skew\";i:-1;s:13:\"min_poll_time\";i:30;}","yes");
INSERT INTO `xr7h81hn_options` VALUES("484","ithemes-updater-keys","a:0:{}","yes");


DROP TABLE IF EXISTS `xr7h81hn_postmeta`;

CREATE TABLE `xr7h81hn_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `xr7h81hn_postmeta` VALUES("1","2","_wp_page_template","default");


DROP TABLE IF EXISTS `xr7h81hn_posts`;

CREATE TABLE `xr7h81hn_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `xr7h81hn_posts` VALUES("1","2","2015-08-05 20:23:00","2015-08-05 19:23:00","Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!","Bonjour tout le monde&nbsp;!","","publish","open","open","","bonjour-tout-le-monde","","","2015-08-05 20:23:00","2015-08-05 19:23:00","","0","http://192.168.88.88:10000/?p=1","0","post","","1");
INSERT INTO `xr7h81hn_posts` VALUES("2","2","2015-08-05 20:23:00","2015-08-05 19:23:00","Voici un exemple de page. Elle est différente d\'un article de blog, en cela qu\'elle restera à la même place, et s\'affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page &laquo;&nbsp;À Propos&nbsp;&raquo; qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant&nbsp;:

<blockquote>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J\'habite à Bordeaux, j\'ai un super chien baptisé Russell, et j\'aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>

...ou bien quelque chose comme ça&nbsp;:

<blockquote>La société 123 Machin Truc a été créée en 1971, et n\'a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2&nbsp;000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>

Etant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href=\"http://192.168.88.88:10000/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!","Page d&rsquo;exemple","","publish","open","open","","page-d-exemple","","","2015-08-05 20:23:00","2015-08-05 19:23:00","","0","http://192.168.88.88:10000/?page_id=2","0","page","","0");
INSERT INTO `xr7h81hn_posts` VALUES("3","2","2015-08-05 20:40:26","0000-00-00 00:00:00","","Brouillon auto","","auto-draft","open","open","","","","","2015-08-05 20:40:26","0000-00-00 00:00:00","","0","http://192.168.88.88:10000/?p=3","0","post","","0");
INSERT INTO `xr7h81hn_posts` VALUES("5","2","2015-08-06 01:02:29","2015-08-06 00:02:29","a:1:{i:0;a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}}","polylang_mo_8","","private","closed","open","","polylang_mo_8","","","2015-08-06 01:02:29","2015-08-06 00:02:29","","0","http://192.168.88.88:10000/?post_type=polylang_mo&p=5","0","polylang_mo","","0");
INSERT INTO `xr7h81hn_posts` VALUES("6","2","2015-08-06 01:06:05","2015-08-06 00:06:05","a:1:{i:0;a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}}","polylang_mo_11","","private","closed","open","","polylang_mo_11","","","2015-08-06 01:06:05","2015-08-06 00:06:05","","0","http://192.168.88.88:10000/?post_type=polylang_mo&p=6","0","polylang_mo","","0");


DROP TABLE IF EXISTS `xr7h81hn_term_relationships`;

CREATE TABLE `xr7h81hn_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `xr7h81hn_term_relationships` VALUES("1","1","0");
INSERT INTO `xr7h81hn_term_relationships` VALUES("1","8","0");
INSERT INTO `xr7h81hn_term_relationships` VALUES("1","9","0");
INSERT INTO `xr7h81hn_term_relationships` VALUES("1","10","0");
INSERT INTO `xr7h81hn_term_relationships` VALUES("2","8","0");
INSERT INTO `xr7h81hn_term_relationships` VALUES("13","10","0");
INSERT INTO `xr7h81hn_term_relationships` VALUES("13","12","0");


DROP TABLE IF EXISTS `xr7h81hn_term_taxonomy`;

CREATE TABLE `xr7h81hn_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `xr7h81hn_term_taxonomy` VALUES("1","1","category","","0","1");
INSERT INTO `xr7h81hn_term_taxonomy` VALUES("2","2","nav_menu","","0","0");
INSERT INTO `xr7h81hn_term_taxonomy` VALUES("3","3","nav_menu","","0","0");
INSERT INTO `xr7h81hn_term_taxonomy` VALUES("4","4","nav_menu","","0","0");
INSERT INTO `xr7h81hn_term_taxonomy` VALUES("5","5","nav_menu","","0","0");
INSERT INTO `xr7h81hn_term_taxonomy` VALUES("6","6","nav_menu","","0","0");
INSERT INTO `xr7h81hn_term_taxonomy` VALUES("7","7","nav_menu","","0","0");
INSERT INTO `xr7h81hn_term_taxonomy` VALUES("8","8","language","a:2:{s:6:\"locale\";s:5:\"fr_FR\";s:3:\"rtl\";i:0;}","0","2");
INSERT INTO `xr7h81hn_term_taxonomy` VALUES("9","9","term_language","","0","1");
INSERT INTO `xr7h81hn_term_taxonomy` VALUES("10","10","term_translations","a:2:{s:2:\"fr\";i:1;s:2:\"en\";i:13;}","0","2");
INSERT INTO `xr7h81hn_term_taxonomy` VALUES("11","11","language","a:2:{s:6:\"locale\";s:5:\"en_US\";s:3:\"rtl\";i:0;}","0","0");
INSERT INTO `xr7h81hn_term_taxonomy` VALUES("12","12","term_language","","0","1");
INSERT INTO `xr7h81hn_term_taxonomy` VALUES("13","13","category","","0","0");


DROP TABLE IF EXISTS `xr7h81hn_terms`;

CREATE TABLE `xr7h81hn_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `xr7h81hn_terms` VALUES("1","Non classé","non-classe","0");
INSERT INTO `xr7h81hn_terms` VALUES("2","Menu principal fr","menu-principal-fr","0");
INSERT INTO `xr7h81hn_terms` VALUES("3","Menu du pied de page fr","menu-du-pied-de-page-fr","0");
INSERT INTO `xr7h81hn_terms` VALUES("4","Menu principal en","menu-principal-en","0");
INSERT INTO `xr7h81hn_terms` VALUES("5","Menu du pied de page en","menu-du-pied-de-page-en","0");
INSERT INTO `xr7h81hn_terms` VALUES("6","Menu principal de","menu-principal-de","0");
INSERT INTO `xr7h81hn_terms` VALUES("7","Menu du pied de page de","menu-du-pied-de-page-de","0");
INSERT INTO `xr7h81hn_terms` VALUES("8","Français","fr","1");
INSERT INTO `xr7h81hn_terms` VALUES("9","Français","pll_fr","0");
INSERT INTO `xr7h81hn_terms` VALUES("10","pll_55c2a41608f51","pll_55c2a41608f51","0");
INSERT INTO `xr7h81hn_terms` VALUES("11","English","en","2");
INSERT INTO `xr7h81hn_terms` VALUES("12","English","pll_en","0");
INSERT INTO `xr7h81hn_terms` VALUES("13","Non classé","non-classe-en","0");


DROP TABLE IF EXISTS `xr7h81hn_usermeta`;

CREATE TABLE `xr7h81hn_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `xr7h81hn_usermeta` VALUES("14","2","nickname","Yves-Emmanuel Jutard");
INSERT INTO `xr7h81hn_usermeta` VALUES("15","2","first_name","Administrateur");
INSERT INTO `xr7h81hn_usermeta` VALUES("16","2","last_name","Prestataire");
INSERT INTO `xr7h81hn_usermeta` VALUES("17","2","description","");
INSERT INTO `xr7h81hn_usermeta` VALUES("18","2","rich_editing","true");
INSERT INTO `xr7h81hn_usermeta` VALUES("19","2","comment_shortcuts","false");
INSERT INTO `xr7h81hn_usermeta` VALUES("20","2","admin_color","sunrise");
INSERT INTO `xr7h81hn_usermeta` VALUES("21","2","use_ssl","0");
INSERT INTO `xr7h81hn_usermeta` VALUES("22","2","show_admin_bar_front","true");
INSERT INTO `xr7h81hn_usermeta` VALUES("23","2","xr7h81hn_capabilities","a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO `xr7h81hn_usermeta` VALUES("24","2","xr7h81hn_user_level","10");
INSERT INTO `xr7h81hn_usermeta` VALUES("25","2","dismissed_wp_pointers","wp360_locks,wp390_widgets,pll_lgt");
INSERT INTO `xr7h81hn_usermeta` VALUES("26","2","session_tokens","a:1:{s:64:\"2caa07482ed780775fd2e73d3e7e3b9444e6ae8e6d3a73b55ff811e5d1939262\";a:4:{s:10:\"expiration\";i:1440013219;s:2:\"ip\";s:12:\"192.168.88.1\";s:2:\"ua\";s:72:\"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0\";s:5:\"login\";i:1438803619;}}");
INSERT INTO `xr7h81hn_usermeta` VALUES("27","2","xr7h81hn_user-settings","editor_expand=off&libraryContent=browse&siteorigin_panels_setting_tab=layout&editor=tinymce&hidetb=1&ed_size=596&posts_list_mode=list");
INSERT INTO `xr7h81hn_usermeta` VALUES("28","2","xr7h81hn_user-settings-time","1438803621");
INSERT INTO `xr7h81hn_usermeta` VALUES("29","2","xr7h81hn_dashboard_quick_press_last_post_id","3");
INSERT INTO `xr7h81hn_usermeta` VALUES("30","2","ignore_cocorico_shortcodes_notice","true");
INSERT INTO `xr7h81hn_usermeta` VALUES("31","2","nav_menu_recently_edited","2");
INSERT INTO `xr7h81hn_usermeta` VALUES("32","2","managenav-menuscolumnshidden","a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}");
INSERT INTO `xr7h81hn_usermeta` VALUES("33","2","metaboxhidden_nav-menus","a:5:{i:0;s:8:\"add-post\";i:1;s:13:\"add-portfolio\";i:2;s:11:\"add-service\";i:3;s:12:\"add-post_tag\";i:4;s:23:\"add-portfolio_categorie\";}");
INSERT INTO `xr7h81hn_usermeta` VALUES("34","2","user_lang","0");
INSERT INTO `xr7h81hn_usermeta` VALUES("35","2","description_en","");
INSERT INTO `xr7h81hn_usermeta` VALUES("36","2","closedpostboxes_dashboard","a:0:{}");
INSERT INTO `xr7h81hn_usermeta` VALUES("37","2","metaboxhidden_dashboard","a:1:{i:0;s:17:\"dashboard_primary\";}");
INSERT INTO `xr7h81hn_usermeta` VALUES("38","2","meta-box-order_dashboard","a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:60:\"dashboard_quick_press,dashboard_primary,pb_backupbuddy_stats\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}");


DROP TABLE IF EXISTS `xr7h81hn_users`;

CREATE TABLE `xr7h81hn_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `xr7h81hn_users` VALUES("2","Yves-Emmanuel Jutard","$P$BYWPYQ/Yv5DkEqY1WeHqesfC5CDVYV0","yves-emmanuel-jutard","ye.jutard+wpbase@gmail.com","","2015-08-05 20:27:30","","0","Prestataire technique");




