CREATE TABLE `xr7h81hn_usermeta` (  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,  `meta_value` longtext COLLATE utf8mb4_unicode_ci,  PRIMARY KEY (`umeta_id`),  KEY `user_id` (`user_id`),  KEY `meta_key` (`meta_key`(191))) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `xr7h81hn_usermeta` DISABLE KEYS */;
INSERT INTO `xr7h81hn_usermeta` VALUES('14', '2', 'nickname', 'Yves-Emmanuel Jutard');
INSERT INTO `xr7h81hn_usermeta` VALUES('15', '2', 'first_name', 'Administrateur');
INSERT INTO `xr7h81hn_usermeta` VALUES('16', '2', 'last_name', 'Prestataire');
INSERT INTO `xr7h81hn_usermeta` VALUES('17', '2', 'description', '');
INSERT INTO `xr7h81hn_usermeta` VALUES('18', '2', 'rich_editing', 'true');
INSERT INTO `xr7h81hn_usermeta` VALUES('19', '2', 'comment_shortcuts', 'false');
INSERT INTO `xr7h81hn_usermeta` VALUES('20', '2', 'admin_color', 'sunrise');
INSERT INTO `xr7h81hn_usermeta` VALUES('21', '2', 'use_ssl', '0');
INSERT INTO `xr7h81hn_usermeta` VALUES('22', '2', 'show_admin_bar_front', 'true');
INSERT INTO `xr7h81hn_usermeta` VALUES('23', '2', 'xr7h81hn_capabilities', 'a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `xr7h81hn_usermeta` VALUES('24', '2', 'xr7h81hn_user_level', '10');
INSERT INTO `xr7h81hn_usermeta` VALUES('25', '2', 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,pll_lgt');
INSERT INTO `xr7h81hn_usermeta` VALUES('26', '2', 'session_tokens', 'a:2:{s:64:\"2caa07482ed780775fd2e73d3e7e3b9444e6ae8e6d3a73b55ff811e5d1939262\";a:4:{s:10:\"expiration\";i:1440013219;s:2:\"ip\";s:12:\"192.168.88.1\";s:2:\"ua\";s:72:\"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0\";s:5:\"login\";i:1438803619;}s:64:\"6487dae0e301bee3dd43eeacbf6bba4b749e0e2d2cefc32f83f842682bc551fb\";a:4:{s:10:\"expiration\";i:1440030519;s:2:\"ip\";s:12:\"192.168.88.1\";s:2:\"ua\";s:72:\"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0\";s:5:\"login\";i:1438820919;}}');
INSERT INTO `xr7h81hn_usermeta` VALUES('27', '2', 'xr7h81hn_user-settings', 'editor_expand=off&libraryContent=browse&siteorigin_panels_setting_tab=layout&editor=tinymce&hidetb=1&ed_size=596&posts_list_mode=list');
INSERT INTO `xr7h81hn_usermeta` VALUES('28', '2', 'xr7h81hn_user-settings-time', '1438803621');
INSERT INTO `xr7h81hn_usermeta` VALUES('29', '2', 'xr7h81hn_dashboard_quick_press_last_post_id', '3');
INSERT INTO `xr7h81hn_usermeta` VALUES('30', '2', 'ignore_cocorico_shortcodes_notice', 'true');
INSERT INTO `xr7h81hn_usermeta` VALUES('31', '2', 'nav_menu_recently_edited', '2');
INSERT INTO `xr7h81hn_usermeta` VALUES('32', '2', 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}');
INSERT INTO `xr7h81hn_usermeta` VALUES('33', '2', 'metaboxhidden_nav-menus', 'a:5:{i:0;s:8:\"add-post\";i:1;s:13:\"add-portfolio\";i:2;s:11:\"add-service\";i:3;s:12:\"add-post_tag\";i:4;s:23:\"add-portfolio_categorie\";}');
INSERT INTO `xr7h81hn_usermeta` VALUES('34', '2', 'user_lang', '0');
INSERT INTO `xr7h81hn_usermeta` VALUES('35', '2', 'description_en', '');
INSERT INTO `xr7h81hn_usermeta` VALUES('36', '2', 'closedpostboxes_dashboard', 'a:0:{}');
INSERT INTO `xr7h81hn_usermeta` VALUES('37', '2', 'metaboxhidden_dashboard', 'a:3:{i:0;s:19:\"dashboard_right_now\";i:1;s:21:\"dashboard_quick_press\";i:2;s:17:\"dashboard_primary\";}');
INSERT INTO `xr7h81hn_usermeta` VALUES('38', '2', 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:102:\"dashboard_quick_press,dashboard_primary,pb_backupbuddy_stats,dashboard-directory-size-dashboard-widget\";s:7:\"column3\";s:7:\"note_12\";s:7:\"column4\";s:0:\"\";}');
INSERT INTO `xr7h81hn_usermeta` VALUES('39', '2', 'managedashboardcolumnshidden', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `xr7h81hn_usermeta` VALUES('40', '2', 'closedpostboxes_toplevel_page_itsec', 'a:2:{i:0;s:18:\"itsec_self_protect\";i:1;s:17:\"itsec_get_started\";}');
INSERT INTO `xr7h81hn_usermeta` VALUES('41', '2', 'metaboxhidden_toplevel_page_itsec', 'a:5:{i:0;s:18:\"itsec_self_protect\";i:1;s:17:\"itsec_get_started\";i:2;s:22:\"itsec_security_updates\";i:3;s:22:\"itsec_sync_integration\";i:4;s:15:\"itsec_need_help\";}');
INSERT INTO `xr7h81hn_usermeta` VALUES('42', '2', 'closedpostboxes_security_page_toplevel_page_itsec_settings', 'a:11:{i:0;s:14:\"global_options\";i:1;s:31:\"intrusion_detection_404_options\";i:2;s:17:\"away_mode_options\";i:3;s:17:\"ban_users_options\";i:4;s:19:\"brute_force_options\";i:5;s:19:\"file_change_options\";i:6;s:20:\"hide_backend_options\";i:7;s:11:\"ssl_options\";i:8;s:24:\"strong_passwords_options\";i:9;s:13:\"tweaks_system\";i:10;s:16:\"tweaks_wordpress\";}');
INSERT INTO `xr7h81hn_usermeta` VALUES('43', '2', 'metaboxhidden_security_page_toplevel_page_itsec_settings', 'a:4:{i:0;s:18:\"itsec_self_protect\";i:1;s:22:\"itsec_security_updates\";i:2;s:22:\"itsec_sync_integration\";i:3;s:15:\"itsec_need_help\";}');
INSERT INTO `xr7h81hn_usermeta` VALUES('44', '2', 'meta-box-order_toplevel_page_itsec', 'a:6:{s:3:\"top\";s:18:\"itsec_self_protect\";s:6:\"normal\";s:17:\"itsec_get_started\";s:8:\"advanced\";s:53:\"itsec_status,itsec_file_permissions,itsec_system_info\";s:6:\"bottom\";s:43:\"itsec_lockouts,itsec_rewrite,itsec_wpconfig\";s:13:\"priority_side\";s:22:\"itsec_security_updates\";s:4:\"side\";s:38:\"itsec_sync_integration,itsec_need_help\";}');
INSERT INTO `xr7h81hn_usermeta` VALUES('45', '2', 'screen_layout_toplevel_page_itsec', '1');
/*!40000 ALTER TABLE `xr7h81hn_usermeta` ENABLE KEYS */;
