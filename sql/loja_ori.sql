# Migração da Base de Dados MySQL do WordPress
#
# Gerado: Tuesday 29. May 2018 20:25 UTC
# Nome do Servidor: localhost
# Banco de Dados: `estude-matematica_fuerzastudio_com`
# URL: //estude-matematica.fuerzastudio.com
# Path: /var/www/estude-matematica.fuerzastudio.com/htdocs
# Tables: dahu12_commentmeta, dahu12_comments, dahu12_correios_postcodes, dahu12_links, dahu12_options, dahu12_postmeta, dahu12_posts, dahu12_term_relationships, dahu12_term_taxonomy, dahu12_termmeta, dahu12_terms, dahu12_usermeta, dahu12_users, dahu12_wc_download_log, dahu12_wc_webhooks, dahu12_woocommerce_api_keys, dahu12_woocommerce_attribute_taxonomies, dahu12_woocommerce_downloadable_product_permissions, dahu12_woocommerce_log, dahu12_woocommerce_order_itemmeta, dahu12_woocommerce_order_items, dahu12_woocommerce_payment_tokenmeta, dahu12_woocommerce_payment_tokens, dahu12_woocommerce_sessions, dahu12_woocommerce_shipping_zone_locations, dahu12_woocommerce_shipping_zone_methods, dahu12_woocommerce_shipping_zones, dahu12_woocommerce_tax_rate_locations, dahu12_woocommerce_tax_rates
# Table Prefix: dahu12_
# Post Types: revision, attachment, nav_menu_item, page, post, product, product_variation, shop_order
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Apagar qualquer tabela `dahu12_commentmeta` existente
#

DROP TABLE IF EXISTS `dahu12_commentmeta`;


#
# Estrutura da tabela `dahu12_commentmeta`
#

CREATE TABLE `dahu12_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_commentmeta`
#

#
# Fim do conteúdo da tabela `dahu12_commentmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_comments` existente
#

DROP TABLE IF EXISTS `dahu12_comments`;


#
# Estrutura da tabela `dahu12_comments`
#

CREATE TABLE `dahu12_comments` (
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
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_comments`
#
INSERT INTO `dahu12_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-08-20 14:08:06', '2017-08-20 17:08:06', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(15, 92, 'WooCommerce', 'woocommerce@estude-matematica.fuerzastudio.com', '', '', '2017-12-13 18:03:39', '2017-12-13 20:03:39', 'Pagar.me: A transação esta sendo processada. Status do pedido alterado de Pagamento pendente para Aguardando.', 0, '1', 'WooCommerce', 'order_note', 0, 0) ;

#
# Fim do conteúdo da tabela `dahu12_comments`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_correios_postcodes` existente
#

DROP TABLE IF EXISTS `dahu12_correios_postcodes`;


#
# Estrutura da tabela `dahu12_correios_postcodes`
#

CREATE TABLE `dahu12_correios_postcodes` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `postcode` char(8) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_520_ci,
  `city` longtext COLLATE utf8mb4_unicode_520_ci,
  `neighborhood` longtext COLLATE utf8mb4_unicode_520_ci,
  `state` char(2) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `last_query` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `postcode` (`postcode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `dahu12_correios_postcodes`
#
INSERT INTO `dahu12_correios_postcodes` ( `ID`, `postcode`, `address`, `city`, `neighborhood`, `state`, `last_query`) VALUES
(1, '88053060', 'Avenida das Paineiras', 'Florianópolis', 'Daniela', 'SC', '2017-12-14 17:09:20'),
(2, '93415240', 'Rua Doutor Karl Wilhelm Schinke', 'Novo Hamburgo', 'Rondônia', 'RS', '2018-01-24 15:54:24') ;

#
# Fim do conteúdo da tabela `dahu12_correios_postcodes`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_links` existente
#

DROP TABLE IF EXISTS `dahu12_links`;


#
# Estrutura da tabela `dahu12_links`
#

CREATE TABLE `dahu12_links` (
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


#
# Conteúdo da tabela `dahu12_links`
#

#
# Fim do conteúdo da tabela `dahu12_links`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_options` existente
#

DROP TABLE IF EXISTS `dahu12_options`;


#
# Estrutura da tabela `dahu12_options`
#

CREATE TABLE `dahu12_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2938 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_options`
#
INSERT INTO `dahu12_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://estude-matematica.fuerzastudio.com', 'yes'),
(2, 'home', 'http://estude-matematica.fuerzastudio.com', 'yes'),
(3, 'blogname', 'Estude Matemática', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'gabriela@fuerzastudio.com.br', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:153:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:56:"categoria-produto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:51:"categoria-produto/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:32:"categoria-produto/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:44:"categoria-produto/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:26:"categoria-produto/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"produto-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"produto-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"produto-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"produto-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"produto-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"produto/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"produto/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"produto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"produto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"produto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"produto/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"produto/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"produto/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"produto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"produto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"produto/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"produto/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"produto/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"produto/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"produto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"produto/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"produto/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"produto/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"produto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"produto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"produto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"produto/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:13:{i:0;s:45:"acf-flexible-content/acf-flexible-content.php";i:1;s:37:"acf-options-page/acf-options-page.php";i:2;s:29:"acf-repeater/acf-repeater.php";i:3;s:50:"advanced-custom-fields-oembed-field/acf-oembed.php";i:4;s:30:"advanced-custom-fields/acf.php";i:5;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:6;s:27:"updraftplus/updraftplus.php";i:7;s:45:"woocommerce-correios/woocommerce-correios.php";i:8;s:93:"woocommerce-extra-checkout-fields-for-brazil/woocommerce-extra-checkout-fields-for-brazil.php";i:9;s:43:"woocommerce-pagarme/woocommerce-pagarme.php";i:10;s:27:"woocommerce/woocommerce.php";i:11;s:41:"wordpress-importer/wordpress-importer.php";i:12;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:100:"/var/www/estude-matematica.fuerzastudio.com/htdocs/wp-content/themes/estude-matematica/functions.php";i:2;s:96:"/var/www/estude-matematica.fuerzastudio.com/htdocs/wp-content/themes/estude-matematica/style.css";i:3;s:0:"";}', 'no'),
(40, 'template', 'estude-matematica', 'yes'),
(41, 'stylesheet', 'estude-matematica', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'dahu12_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:7:"Cliente";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:15:"Gerente de loja";s:12:"capabilities";a:109:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'pt_BR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes') ;
INSERT INTO `dahu12_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:14:{i:1527625826;a:1:{s:21:"updraft_backup_resume";a:1:{s:32:"59f8fe4a6398cae34156f70fdd7c01f3";a:2:{s:8:"schedule";b:0;s:4:"args";a:2:{i:0;i:5;i:1;s:12:"3e86bffecb0e";}}}}i:1527626488;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1527627329;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1527634529;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1527645329;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1527649200;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1527656886;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1527693624;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1527700112;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1527705553;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1527710129;a:1:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1527710139;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1528156800;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1503249140;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(122, 'can_compress_scripts', '0', 'no'),
(140, 'current_theme', 'Estude Matemática', 'yes'),
(141, 'theme_mods_deablue', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1503249136;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(143, 'theme_mods_deablueOto', 'a:4:{i:0;b:0;s:17:"storefront_styles";s:0:"";s:29:"storefront_woocommerce_styles";s:0:"";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1503249155;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";N;s:8:"footer-3";N;s:8:"footer-4";N;}}}', 'yes'),
(145, 'theme_mods_estude-matematica', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:15:"menu-categories";i:210;s:11:"menu-footer";i:211;}}', 'yes'),
(148, 'recently_activated', 'a:0:{}', 'yes'),
(149, 'woocommerce_default_country', 'BR:RS', 'yes'),
(150, 'woocommerce_allowed_countries', 'specific', 'yes'),
(151, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(152, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:"BR";}', 'yes'),
(153, 'woocommerce_ship_to_countries', '', 'yes'),
(154, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(155, 'woocommerce_default_customer_address', 'base', 'yes'),
(156, 'woocommerce_calc_taxes', 'no', 'yes'),
(157, 'woocommerce_demo_store', 'no', 'yes'),
(158, 'woocommerce_demo_store_notice', 'Esta é uma loja de demonstração para fins de teste - As compras realizadas não são válidas.', 'no'),
(159, 'woocommerce_currency', 'BRL', 'yes'),
(160, 'woocommerce_currency_pos', 'left_space', 'yes'),
(161, 'woocommerce_price_thousand_sep', '.', 'yes'),
(162, 'woocommerce_price_decimal_sep', ',', 'yes'),
(163, 'woocommerce_price_num_decimals', '2', 'yes'),
(164, 'woocommerce_weight_unit', 'kg', 'yes'),
(165, 'woocommerce_dimension_unit', 'cm', 'yes'),
(166, 'woocommerce_enable_reviews', 'no', 'yes'),
(167, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(168, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(169, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(170, 'woocommerce_review_rating_required', 'yes', 'no'),
(171, 'woocommerce_shop_page_id', '', 'yes'),
(172, 'woocommerce_shop_page_display', '', 'yes'),
(173, 'woocommerce_category_archive_display', '', 'yes'),
(174, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(175, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(176, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(177, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(178, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(179, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(180, 'woocommerce_manage_stock', 'yes', 'yes'),
(181, 'woocommerce_hold_stock_minutes', '60', 'no'),
(182, 'woocommerce_notify_low_stock', 'yes', 'no'),
(183, 'woocommerce_notify_no_stock', 'yes', 'no'),
(184, 'woocommerce_stock_email_recipient', 'contato@estudematematica.com.br', 'no'),
(185, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(186, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(187, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(188, 'woocommerce_stock_format', 'no_amount', 'yes'),
(189, 'woocommerce_file_download_method', 'force', 'no'),
(190, 'woocommerce_downloads_require_login', 'no', 'no'),
(191, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(192, 'woocommerce_prices_include_tax', 'no', 'yes'),
(193, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(194, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(195, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(196, 'woocommerce_tax_classes', 'Taxa reduzida\nTaxa zero', 'yes'),
(197, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(198, 'woocommerce_tax_display_cart', 'excl', 'no'),
(199, 'woocommerce_price_display_suffix', '', 'yes'),
(200, 'woocommerce_tax_total_display', 'itemized', 'no'),
(201, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(202, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(203, 'woocommerce_ship_to_destination', 'billing', 'no'),
(204, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(205, 'woocommerce_enable_coupons', 'no', 'yes'),
(206, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(207, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(208, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(209, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(210, 'woocommerce_cart_page_id', '35', 'yes'),
(211, 'woocommerce_checkout_page_id', '39', 'yes'),
(212, 'woocommerce_terms_page_id', '', 'no'),
(213, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(214, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(215, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(216, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(217, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(218, 'woocommerce_myaccount_page_id', '42', 'yes'),
(219, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(220, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(221, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(222, 'woocommerce_registration_generate_username', 'yes', 'no'),
(223, 'woocommerce_registration_generate_password', 'no', 'no'),
(224, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(225, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(226, 'woocommerce_myaccount_downloads_endpoint', '', 'yes'),
(227, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(228, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(229, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(230, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(231, 'woocommerce_logout_endpoint', 'customer-logout', 'yes') ;
INSERT INTO `dahu12_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(232, 'woocommerce_email_from_name', 'Estude Matemática', 'no'),
(233, 'woocommerce_email_from_address', 'contato@estudematematica.com.br', 'no'),
(234, 'woocommerce_email_header_image', '', 'no'),
(235, 'woocommerce_email_footer_text', '© 2017 Estude Matemática', 'no'),
(236, 'woocommerce_email_base_color', '#9f0000', 'no'),
(237, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(238, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(239, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(240, 'woocommerce_api_enabled', 'yes', 'yes'),
(246, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:"no_secure_connection";}', 'yes'),
(247, 'wcbcf_settings', 'a:6:{s:11:"person_type";s:1:"1";s:10:"cell_phone";s:1:"1";s:9:"mailcheck";s:1:"1";s:11:"maskedinput";s:1:"1";s:12:"validate_cpf";s:1:"1";s:13:"validate_cnpj";s:1:"1";}', 'yes'),
(248, 'wcbcf_version', '3.6.1', 'yes'),
(252, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(253, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(254, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(255, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(256, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(257, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(258, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(259, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(260, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(261, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(262, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(263, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(267, 'acf_version', '4.4.12', 'yes'),
(276, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(392, 'category_children', 'a:0:{}', 'yes'),
(409, 'woocommerce_gateway_order', 'a:6:{s:4:"bacs";i:0;s:6:"cheque";i:1;s:3:"cod";i:2;s:6:"paypal";i:3;s:22:"pagarme-banking-ticket";i:4;s:19:"pagarme-credit-card";i:5;}', 'yes'),
(414, 'woocommerce_cheque_settings', 'a:4:{s:7:"enabled";s:2:"no";s:5:"title";s:6:"Cheque";s:11:"description";s:110:"Por favor, envie seu cheque para Nome da loja, Rua da loja, Cidade da loja, Estado/País da loja, CEP da loja.";s:12:"instructions";s:0:"";}', 'yes'),
(461, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"produto";s:13:"category_base";s:17:"categoria-produto";s:8:"tag_base";s:11:"produto-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(481, 'woocommerce_pagseguro_settings', 'a:20:{s:7:"enabled";s:2:"no";s:5:"title";s:9:"PagSeguro";s:11:"description";s:19:"Pagar com PagSeguro";s:11:"integration";s:0:"";s:6:"method";s:8:"redirect";s:7:"sandbox";s:2:"no";s:5:"email";s:0:"";s:5:"token";s:0:"";s:13:"sandbox_email";s:0:"";s:13:"sandbox_token";s:0:"";s:20:"transparent_checkout";s:0:"";s:9:"tc_credit";s:3:"yes";s:11:"tc_transfer";s:3:"yes";s:9:"tc_ticket";s:3:"yes";s:17:"tc_ticket_message";s:3:"yes";s:8:"behavior";s:0:"";s:15:"send_only_total";s:2:"no";s:14:"invoice_prefix";s:3:"WC-";s:7:"testing";s:0:"";s:5:"debug";s:2:"no";}', 'yes'),
(484, 'woocommerce_new_order_settings', 'a:5:{s:7:"enabled";s:3:"yes";s:9:"recipient";s:31:"contato@estudematematica.com.br";s:7:"subject";s:0:"";s:7:"heading";s:0:"";s:10:"email_type";s:4:"html";}', 'yes'),
(486, 'woocommerce_cancelled_order_settings', 'a:5:{s:7:"enabled";s:3:"yes";s:9:"recipient";s:31:"contato@estudematematica.com.br";s:7:"subject";s:0:"";s:7:"heading";s:0:"";s:10:"email_type";s:4:"html";}', 'yes'),
(488, 'woocommerce_failed_order_settings', 'a:5:{s:7:"enabled";s:3:"yes";s:9:"recipient";s:31:"contato@estudematematica.com.br";s:7:"subject";s:0:"";s:7:"heading";s:0:"";s:10:"email_type";s:4:"html";}', 'yes'),
(501, 'woocommerce_pagarme-banking-ticket_settings', 'a:8:{s:7:"enabled";s:3:"yes";s:5:"title";s:16:"Boleto bancário";s:11:"description";s:26:"Pagar com boleto bancário";s:11:"integration";s:0:"";s:7:"api_key";s:38:"ak_test_eSmhMhuokYFSYPUUkyhuxyZbWz9F2O";s:14:"encryption_key";s:38:"ek_test_C8NuMtC4kpJgIzzFX57U1njpcYS5p7";s:7:"testing";s:0:"";s:5:"debug";s:3:"yes";}', 'yes'),
(503, 'woocommerce_pagarme-credit-card_settings', 'a:14:{s:7:"enabled";s:3:"yes";s:5:"title";s:19:"Cartão de crédito";s:11:"description";s:29:"Pagar com cartão de crédito";s:11:"integration";s:0:"";s:7:"api_key";s:38:"ak_test_eSmhMhuokYFSYPUUkyhuxyZbWz9F2O";s:14:"encryption_key";s:38:"ek_test_C8NuMtC4kpJgIzzFX57U1njpcYS5p7";s:8:"checkout";s:3:"yes";s:12:"installments";s:0:"";s:15:"max_installment";s:1:"3";s:20:"smallest_installment";s:1:"5";s:13:"interest_rate";s:1:"0";s:17:"free_installments";s:1:"3";s:7:"testing";s:0:"";s:5:"debug";s:3:"yes";}', 'yes'),
(512, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1527625558;}', 'no'),
(560, 'woocommerce_paypal_settings', 'a:19:{s:7:"enabled";s:2:"no";s:5:"title";s:6:"PayPal";s:11:"description";s:107:"Pague com PayPal; você pode pagar com o seu cartão de crédito caso você não tenha uma conta no PayPal.";s:5:"email";s:25:"diego@fuerzastudio.com.br";s:8:"testmode";s:2:"no";s:5:"debug";s:2:"no";s:8:"advanced";s:0:"";s:14:"receiver_email";s:28:"gabriela@fuerzastudio.com.br";s:14:"identity_token";s:0:"";s:14:"invoice_prefix";s:3:"WC-";s:13:"send_shipping";s:2:"no";s:16:"address_override";s:2:"no";s:13:"paymentaction";s:4:"sale";s:10:"page_style";s:0:"";s:9:"image_url";s:0:"";s:11:"api_details";s:0:"";s:12:"api_username";s:12:"fuerzastudio";s:12:"api_password";s:8:"1234aaaa";s:13:"api_signature";s:0:"";}', 'yes'),
(690, 'theme_mods_storefront', 'a:6:{i:0;b:0;s:17:"storefront_styles";s:5060:"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #838383;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #6d6d6d;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #9f9f9f;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type="button"]:focus,\n			input[type="reset"]:focus,\n			input[type="submit"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type="button"], input[type="reset"], input[type="submit"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #333333;\n			}\n\n			button:hover, input[type="button"]:hover, input[type="reset"]:hover, input[type="submit"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			button.alt, input[type="button"].alt, input[type="reset"].alt, input[type="submit"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type="button"].alt:hover, input[type="reset"].alt:hover, input[type="submit"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #6d6d6d;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #6d6d6d;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #333333;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #868686;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #6d6d6d;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}";s:29:"storefront_woocommerce_styles";s:2283:"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #9f9f9f;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #6d6d6d;\n				}\n			}";s:39:"storefront_woocommerce_extension_styles";s:0:"";s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1505221591;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"header-1";N;s:8:"footer-1";N;s:8:"footer-2";N;s:8:"footer-3";N;s:8:"footer-4";N;}}}', 'yes'),
(691, 'storefront_nux_fresh_site', '0', 'yes'),
(921, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(1028, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:28:"gabriela@fuerzastudio.com.br";s:7:"version";s:5:"4.9.5";s:9:"timestamp";i:1522796984;}', 'no'),
(1361, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1364, 'woocommerce_store_address', 'Ramiro Barcelos, 1215', 'yes'),
(1365, 'woocommerce_store_address_2', 'Conjunto 202', 'yes'),
(1366, 'woocommerce_store_city', 'Porto Alegre', 'yes'),
(1367, 'woocommerce_store_postcode', '90035006', 'yes'),
(1434, 'woocommerce_correios-integration_settings', 'a:9:{s:8:"tracking";s:0:"";s:15:"tracking_enable";s:2:"no";s:14:"tracking_debug";s:2:"no";s:18:"autofill_addresses";s:0:"";s:15:"autofill_enable";s:3:"yes";s:17:"autofill_validity";s:7:"forever";s:14:"autofill_force";s:3:"yes";s:23:"autofill_empty_database";s:0:"";s:14:"autofill_debug";s:2:"no";}', 'yes'),
(1435, 'woocommerce_correios_autofill_addresses_db_version', '1.0.0', 'yes'),
(1818, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(1822, 'product_cat_children', 'a:0:{}', 'yes'),
(1823, 'default_product_cat', '221', 'yes'),
(2016, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(2032, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(2033, 'woocommerce_thumbnail_cropping', '1:1', 'yes'),
(2034, 'woocommerce_single_image_width', '600', 'yes'),
(2681, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(2682, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(2683, 'wp_page_for_privacy_policy', '', 'yes'),
(2684, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(2685, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(2686, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(2687, 'woocommerce_trash_pending_orders', '', 'no'),
(2688, 'woocommerce_trash_failed_orders', '', 'no'),
(2689, 'woocommerce_trash_cancelled_orders', '', 'no'),
(2690, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(2691, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(2724, 'storefront_nux_guided_tour', '1', 'yes'),
(2856, 'woocommerce_version', '3.4.1', 'yes'),
(2857, 'woocommerce_db_version', '3.4.1', 'yes'),
(2873, 'updraft_updraftvault', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-45fef541a88b7c345152569549ad3df3";a:3:{s:5:"token";s:0:"";s:5:"email";s:0:"";s:5:"quota";i:-1;}}}', 'yes'),
(2874, 'updraft_dropbox', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-0822848bc8eb4fe0b043735d3e9f59a5";a:4:{s:6:"appkey";s:0:"";s:6:"secret";s:0:"";s:6:"folder";s:0:"";s:15:"tk_access_token";s:1:"0";}}}', 'yes'),
(2875, 'updraft_s3', 'a:2:{s:7:"version";s:1:"1";s:8:"settings";a:1:{s:34:"s-7c170b830df92ab5c0cbae635632d32f";a:3:{s:9:"accesskey";s:0:"";s:9:"secretkey";s:0:"";s:4:"path";s:0:"";}}}', 'yes'),
(2876, 'updraft_cloudfiles', 'a:2:{s:7:"version";s:1:"1";s:8:"settings";a:1:{s:34:"s-60e72afbdcbc73db0d07d4e42aa9b399";a:5:{s:7:"authurl";s:35:"https://auth.api.rackspacecloud.com";s:6:"region";s:3:"DFW";s:4:"user";s:0:"";s:6:"apikey";s:0:"";s:4:"path";s:0:"";}}}', 'yes'),
(2877, 'updraft_googledrive', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-fb6876869637ec94e0c33ef82ef0217b";a:4:{s:8:"clientid";s:0:"";s:6:"secret";s:0:"";s:5:"token";s:0:"";s:6:"folder";s:11:"UpdraftPlus";}}}', 'yes'),
(2878, 'updraft_onedrive', 'a:1:{s:7:"version";s:1:"1";}', 'yes'),
(2879, 'updraft_ftp', 'a:2:{s:7:"version";s:1:"1";s:8:"settings";a:1:{s:34:"s-47a17ef41831841b5b718ed3dc9cc27e";a:5:{s:4:"host";s:0:"";s:4:"user";s:0:"";s:4:"pass";s:0:"";s:4:"path";s:0:"";s:7:"passive";s:1:"1";}}}', 'yes'),
(2880, 'updraft_azure', 'a:1:{s:7:"version";s:1:"1";}', 'yes'),
(2881, 'updraft_sftp', 'a:1:{s:7:"version";s:1:"1";}', 'yes'),
(2882, 'updraft_googlecloud', 'a:1:{s:7:"version";s:1:"1";}', 'yes'),
(2883, 'updraft_backblaze', 'a:1:{s:7:"version";s:1:"1";}', 'yes'),
(2884, 'updraft_webdav', 'a:1:{s:7:"version";s:1:"1";}', 'yes'),
(2885, 'updraft_s3generic', 'a:2:{s:7:"version";s:1:"1";s:8:"settings";a:1:{s:34:"s-2f7cb94d93a35f3c08b55fce0cfcccf1";a:4:{s:9:"accesskey";s:0:"";s:9:"secretkey";s:0:"";s:4:"path";s:0:"";s:8:"endpoint";s:0:"";}}}', 'yes'),
(2886, 'updraft_openstack', 'a:2:{s:7:"version";s:1:"1";s:8:"settings";a:1:{s:34:"s-e33ed99c0c57d1b5d89a29c13be14851";a:6:{s:7:"authurl";s:0:"";s:6:"tenant";s:0:"";s:6:"region";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:4:"path";s:0:"";}}}', 'yes'),
(2887, 'updraft_dreamobjects', 'a:2:{s:7:"version";s:1:"1";s:8:"settings";a:1:{s:34:"s-bade6072376b8fb40ecb0eaf7a1363ff";a:4:{s:9:"accesskey";s:0:"";s:9:"secretkey";s:0:"";s:4:"path";s:0:"";s:8:"endpoint";s:26:"objects-us-west-1.dream.io";}}}', 'yes'),
(2888, 'updraftplus-addons_siteid', 'ea2490b7400d9b87a45d80cfcf63992a', 'no'),
(2889, 'updraft_lastmessage', 'O backup não foi finalizado; um recomeço foi agendado (maio 29 17:25:28)', 'yes'),
(2890, 'updraftplus_unlocked_fd', '1', 'no'),
(2891, 'updraftplus_last_lock_time_fd', '2018-05-29 20:07:09', 'no'),
(2892, 'updraftplus_semaphore_fd', '0', 'no'),
(2893, 'updraft_last_scheduled_fd', '1527624429', 'yes'),
(2895, 'updraft_backup_history', 'a:2:{i:1527624429;a:15:{s:7:"plugins";a:1:{i:0;s:64:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-plugins.zip";}s:12:"plugins-size";i:12706550;s:6:"themes";a:1:{i:0;s:63:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-themes.zip";}s:11:"themes-size";i:6511839;s:7:"uploads";a:1:{i:0;s:64:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-uploads.zip";}s:12:"uploads-size";i:29984745;s:6:"others";a:1:{i:0;s:63:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-others.zip";}s:11:"others-size";i:993117;s:2:"db";s:58:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-db.gz";s:9:"checksums";a:2:{s:4:"sha1";a:5:{s:8:"plugins0";s:40:"35aefe62420d4c252a38a2f14494e9a738dfed77";s:7:"themes0";s:40:"7335d329a8ede2d801b945b5a2c68de7c8237659";s:8:"uploads0";s:40:"3231f3ccc3f4408660114b02e86dd491d7368ad8";s:7:"others0";s:40:"6f034f9b84c248bd64378693b8befc31436ab655";s:3:"db0";s:40:"cbd61383834cb3f077d13524bc48c2718e69f311";}s:6:"sha256";a:5:{s:8:"plugins0";s:64:"f598076979a576ffd1b5f4e088b11d3a08d0f88ee901ec74577f7da434b0e245";s:7:"themes0";s:64:"13661fda3e039070f92c09ea80acbdb88f41a507c2cedced82f82afb9dd7a888";s:8:"uploads0";s:64:"c02c3b9f52204388dc10105e03159c2d4ba4d42bb83f587824a7d133da41bd82";s:7:"others0";s:64:"d62f4110bdab987b4266c9672b15a5e010c850b1d723fe9b92d996c76e3c2475";s:3:"db0";s:64:"cb1087dc54c4d0bc994b6b6c4d1a4f3bdad694e8fc85eff966e2fbad8f110343";}}s:5:"nonce";s:12:"3e86bffecb0e";s:7:"service";a:1:{i:0;s:5:"email";}s:20:"service_instance_ids";a:0:{}s:18:"created_by_version";s:7:"1.14.11";s:12:"is_multisite";b:0;}i:1527624281;a:16:{s:7:"plugins";a:1:{i:0;s:64:"backup_2018-05-29-1704_Estude_Matemtica_0fbe145592ae-plugins.zip";}s:12:"plugins-size";i:12706550;s:6:"themes";a:1:{i:0;s:63:"backup_2018-05-29-1704_Estude_Matemtica_0fbe145592ae-themes.zip";}s:11:"themes-size";i:6511839;s:7:"uploads";a:1:{i:0;s:64:"backup_2018-05-29-1704_Estude_Matemtica_0fbe145592ae-uploads.zip";}s:12:"uploads-size";i:29984745;s:6:"others";a:1:{i:0;s:63:"backup_2018-05-29-1704_Estude_Matemtica_0fbe145592ae-others.zip";}s:11:"others-size";i:993117;s:2:"db";s:58:"backup_2018-05-29-1704_Estude_Matemtica_0fbe145592ae-db.gz";s:7:"db-size";i:118573;s:9:"checksums";a:2:{s:4:"sha1";a:5:{s:8:"plugins0";s:40:"a2bfc11a25d6a6c76022d95524903c2b363813ff";s:7:"themes0";s:40:"ac75c9f5d6967f71f1f2c66324cb7a54e3f34241";s:8:"uploads0";s:40:"d4815f3ed267cd10f9191ba1a19ed2aece87cf69";s:7:"others0";s:40:"80d5468f9ea0dbe4db6f1161cefd457679d94721";s:3:"db0";s:40:"9c11943fe3b9916e61cec5388c37652dd4f741ee";}s:6:"sha256";a:5:{s:8:"plugins0";s:64:"8326ff3a3ebc7d9a81566ccef842cf3a8fef0a9ffd7eb740b7a9fe1243594ffd";s:7:"themes0";s:64:"a6e850c731be60996fe0ded2bd74f4200657f2d0daf24834a018c7b8814d10e8";s:8:"uploads0";s:64:"ec808d16b1ce24affe6622276c821041dc839aae0f3e2eb96cfbcf1dc1aa976d";s:7:"others0";s:64:"10e0d72100b16539ae4a535e15a8194c48b3795f04d956fb0fb42fce1c4fdf41";s:3:"db0";s:64:"5723c452496bd106afebfe4d2ff51c429dec78eebbb2a7e86711cf0e09ed18c0";}}s:5:"nonce";s:12:"0fbe145592ae";s:7:"service";a:1:{i:0;s:4:"none";}s:20:"service_instance_ids";a:0:{}s:18:"created_by_version";s:7:"1.14.11";s:12:"is_multisite";b:0;}}', 'yes'),
(2896, 'updraft_last_backup', 'a:5:{s:11:"backup_time";i:1527624429;s:12:"backup_array";a:10:{s:7:"plugins";a:1:{i:0;s:64:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-plugins.zip";}s:12:"plugins-size";i:12706550;s:6:"themes";a:1:{i:0;s:63:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-themes.zip";}s:11:"themes-size";i:6511839;s:7:"uploads";a:1:{i:0;s:64:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-uploads.zip";}s:12:"uploads-size";i:29984745;s:6:"others";a:1:{i:0;s:63:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-others.zip";}s:11:"others-size";i:993117;s:2:"db";s:58:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-db.gz";s:9:"checksums";a:2:{s:4:"sha1";a:5:{s:8:"plugins0";s:40:"35aefe62420d4c252a38a2f14494e9a738dfed77";s:7:"themes0";s:40:"7335d329a8ede2d801b945b5a2c68de7c8237659";s:8:"uploads0";s:40:"3231f3ccc3f4408660114b02e86dd491d7368ad8";s:7:"others0";s:40:"6f034f9b84c248bd64378693b8befc31436ab655";s:3:"db0";s:40:"cbd61383834cb3f077d13524bc48c2718e69f311";}s:6:"sha256";a:5:{s:8:"plugins0";s:64:"f598076979a576ffd1b5f4e088b11d3a08d0f88ee901ec74577f7da434b0e245";s:7:"themes0";s:64:"13661fda3e039070f92c09ea80acbdb88f41a507c2cedced82f82afb9dd7a888";s:8:"uploads0";s:64:"c02c3b9f52204388dc10105e03159c2d4ba4d42bb83f587824a7d133da41bd82";s:7:"others0";s:64:"d62f4110bdab987b4266c9672b15a5e010c850b1d723fe9b92d996c76e3c2475";s:3:"db0";s:64:"cb1087dc54c4d0bc994b6b6c4d1a4f3bdad694e8fc85eff966e2fbad8f110343";}}}s:7:"success";i:0;s:6:"errors";a:4:{i:0;a:2:{s:5:"level";s:7:"warning";s:7:"message";s:309:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-uploads.zip: Este arquivo de backup em o tamanho 28.6 MB - a tentativa de enviar isto por email provavelmente falhará (poucos servidores de email permitem anexos deste tamanho). Se assim for você deveria trocar para um método de armazenamento diferente.";}i:1;a:2:{s:5:"level";s:5:"error";s:7:"message";s:108:"A tentativa de enviar o backup via e-mail falhou (provavelmente o backup era muito grande para este método)";}s:47:"toobigforemail_0690a2d1f566b53905b412f645bbabc1";a:2:{s:5:"level";s:7:"warning";s:7:"message";s:309:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-uploads.zip: Este arquivo de backup em o tamanho 28.6 MB - a tentativa de enviar isto por email provavelmente falhará (poucos servidores de email permitem anexos deste tamanho). Se assim for você deveria trocar para um método de armazenamento diferente.";}i:2;a:2:{s:5:"level";s:5:"error";s:7:"message";s:108:"A tentativa de enviar o backup via e-mail falhou (provavelmente o backup era muito grande para este método)";}}s:12:"backup_nonce";s:12:"3e86bffecb0e";}', 'yes'),
(2897, 'updraft_retain_extrarules', 'a:0:{}', 'yes'),
(2898, 'updraft_email', '', 'yes'),
(2899, 'updraft_report_warningsonly', 'a:0:{}', 'yes'),
(2900, 'updraft_report_wholebackup', 'a:0:{}', 'yes'),
(2901, 'updraft_extradbs', 'a:0:{}', 'yes'),
(2902, 'updraft_include_more_path', 'a:0:{}', 'yes'),
(2903, 'updraft_interval', 'manual', 'yes') ;
INSERT INTO `dahu12_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2904, 'updraft_retain', '2', 'yes'),
(2905, 'updraft_interval_database', 'manual', 'yes'),
(2906, 'updraft_retain_db', '2', 'yes'),
(2907, 'updraft_service', 'email', 'yes'),
(2908, 'updraft_include_plugins', '1', 'yes'),
(2909, 'updraft_include_themes', '1', 'yes'),
(2910, 'updraft_include_uploads', '1', 'yes'),
(2911, 'updraft_include_uploads_exclude', 'backup*,*backups,backwpup*,wp-clone,snapshots', 'yes'),
(2912, 'updraft_include_others', '1', 'yes'),
(2913, 'updraft_include_others_exclude', 'upgrade,cache,updraft,backup*,*backups,mysql.sql,debug.log', 'yes'),
(2914, 'updraft_split_every', '400', 'yes'),
(2915, 'updraft_delete_local', '1', 'yes'),
(2916, 'updraft_dir', 'updraft', 'yes'),
(2917, 'updraft_debug_mode', '0', 'yes'),
(2918, 'updraft_ssl_useservercerts', '0', 'yes'),
(2919, 'updraft_ssl_disableverify', '0', 'yes'),
(2920, 'updraft_ssl_nossl', '0', 'yes'),
(2921, 'new_admin_email', 'heitoralthmann@gmail.com', 'yes'),
(2922, 'adminhash', 'a:2:{s:4:"hash";s:32:"5acc587437854ec7e3fce336996405b9";s:8:"newemail";s:24:"heitoralthmann@gmail.com";}', 'yes'),
(2925, 'updraft_jobdata_3e86bffecb0e', 'a:44:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:17:"resumingforerrors";s:11:"backup_time";i:1527624429;s:11:"job_time_ms";d:1527624429.5945449;s:7:"service";a:1:{i:0;s:5:"email";}s:11:"split_every";i:400;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:4:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:4:{s:25:"updraft_ssl_disableverify";s:1:"0";s:17:"updraft_ssl_nossl";s:1:"0";s:26:"updraft_ssl_useservercerts";s:1:"0";s:13:"updraft_email";s:0:"";}s:18:"uploaded_lastreset";i:0;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:0;s:15:"backup_database";a:1:{s:2:"wp";a:2:{s:6:"status";s:8:"finished";s:6:"dbinfo";a:0:{}}}s:12:"backup_files";s:8:"finished";s:12:"runs_started";a:5:{i:0;d:1527624429.655051;i:1;d:1527624567.4300079;i:2;d:1527624871.683902;i:3;d:1527625174.404659;i:4;d:1527625526.7048931;}s:18:"current_resumption";i:4;s:6:"binzip";b:0;s:22:"filecreating_substatus";a:3:{s:1:"e";s:6:"others";s:1:"i";i:4;s:1:"t";i:4;}s:19:"files_enumerated_at";a:4:{s:7:"plugins";i:1527624429;s:6:"themes";i:1527624433;s:7:"uploads";i:1527624434;s:6:"others";i:1527624436;}s:9:"run_times";a:1:{i:0;d:8.7649619579315186;}s:14:"useful_checkin";i:0;s:13:"sha1-plugins0";s:40:"35aefe62420d4c252a38a2f14494e9a738dfed77";s:15:"sha256-plugins0";s:64:"f598076979a576ffd1b5f4e088b11d3a08d0f88ee901ec74577f7da434b0e245";s:12:"sha1-themes0";s:40:"7335d329a8ede2d801b945b5a2c68de7c8237659";s:14:"sha256-themes0";s:64:"13661fda3e039070f92c09ea80acbdb88f41a507c2cedced82f82afb9dd7a888";s:13:"sha1-uploads0";s:40:"3231f3ccc3f4408660114b02e86dd491d7368ad8";s:15:"sha256-uploads0";s:64:"c02c3b9f52204388dc10105e03159c2d4ba4d42bb83f587824a7d133da41bd82";s:12:"sha1-others0";s:40:"6f034f9b84c248bd64378693b8befc31436ab655";s:14:"sha256-others0";s:64:"d62f4110bdab987b4266c9672b15a5e010c850b1d723fe9b92d996c76e3c2475";s:18:"backup_files_array";a:8:{s:7:"plugins";a:1:{i:0;s:64:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-plugins.zip";}s:12:"plugins-size";i:12706550;s:6:"themes";a:1:{i:0;s:63:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-themes.zip";}s:11:"themes-size";i:6511839;s:7:"uploads";a:1:{i:0;s:64:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-uploads.zip";}s:12:"uploads-size";i:29984745;s:6:"others";a:1:{i:0;s:63:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-others.zip";}s:11:"others-size";i:993117;}s:10:"binsqldump";s:18:"/usr/bin/mysqldump";s:20:"dbcreating_substatus";a:3:{s:1:"t";s:28:"dahu12_woocommerce_tax_rates";s:1:"i";i:29;s:1:"a";i:29;}s:8:"warnings";a:1:{s:47:"toobigforemail_0690a2d1f566b53905b412f645bbabc1";s:309:"backup_2018-05-29-1707_Estude_Matemtica_3e86bffecb0e-uploads.zip: Este arquivo de backup em o tamanho 28.6 MB - a tentativa de enviar isto por email provavelmente falhará (poucos servidores de email permitem anexos deste tamanho). Se assim for você deveria trocar para um método de armazenamento diferente.";}s:8:"sha1-db0";s:40:"cbd61383834cb3f077d13524bc48c2718e69f311";s:10:"sha256-db0";s:64:"cb1087dc54c4d0bc994b6b6c4d1a4f3bdad694e8fc85eff966e2fbad8f110343";s:19:"uploading_substatus";a:3:{s:1:"i";i:3;s:1:"p";i:0;s:1:"t";i:5;}s:47:"uploaded_email-868601cfa790267cc54e15df88bb4294";s:3:"yes";s:41:"uploaded_868601cfa790267cc54e15df88bb4294";s:3:"yes";s:47:"uploaded_email-e561a5d8578f732d8ec7418116ea6096";s:3:"yes";s:41:"uploaded_e561a5d8578f732d8ec7418116ea6096";s:3:"yes";s:47:"uploaded_email-32d4c53fa7c86be1fef7343d803aaee6";s:3:"yes";s:41:"uploaded_32d4c53fa7c86be1fef7343d803aaee6";s:3:"yes";s:5:"prune";s:8:"finished";}', 'no') ;

#
# Fim do conteúdo da tabela `dahu12_options`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_postmeta` existente
#

DROP TABLE IF EXISTS `dahu12_postmeta`;


#
# Estrutura da tabela `dahu12_postmeta`
#

CREATE TABLE `dahu12_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1889 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_postmeta`
#
INSERT INTO `dahu12_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(173, 35, '_edit_last', '1'),
(174, 35, '_edit_lock', '1516721567:1'),
(177, 39, '_edit_lock', '1516721501:1'),
(178, 39, '_edit_last', '1'),
(232, 42, '_edit_lock', '1516721500:1'),
(233, 42, '_edit_last', '1'),
(853, 31, '_wc_review_count', '0'),
(854, 31, '_wc_rating_count', 'a:0:{}'),
(855, 31, '_wc_average_rating', '0'),
(861, 58, '_wp_attached_file', '2017/09/camiseta-arquimedes-1.png'),
(862, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:498;s:6:"height";i:569;s:4:"file";s:33:"2017/09/camiseta-arquimedes-1.png";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"camiseta-arquimedes-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:33:"camiseta-arquimedes-1-263x300.png";s:5:"width";i:263;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:26:"estude_matematica_destaque";a:4:{s:4:"file";s:33:"camiseta-arquimedes-1-498x392.png";s:5:"width";i:498;s:6:"height";i:392;s:9:"mime-type";s:9:"image/png";}s:23:"estude_matematica_image";a:4:{s:4:"file";s:33:"camiseta-arquimedes-1-498x430.png";s:5:"width";i:498;s:6:"height";i:430;s:9:"mime-type";s:9:"image/png";}s:22:"estude_matematica_grid";a:4:{s:4:"file";s:33:"camiseta-arquimedes-1-483x387.png";s:5:"width";i:483;s:6:"height";i:387;s:9:"mime-type";s:9:"image/png";}s:29:"estude_matematica_image_thumb";a:4:{s:4:"file";s:33:"camiseta-arquimedes-1-172x113.png";s:5:"width";i:172;s:6:"height";i:113;s:9:"mime-type";s:9:"image/png";}s:24:"estude_matematica_avatar";a:4:{s:4:"file";s:31:"camiseta-arquimedes-1-60x60.png";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}s:25:"estude_matematica_related";a:4:{s:4:"file";s:33:"camiseta-arquimedes-1-233x320.png";s:5:"width";i:233;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";}s:22:"estude_matematica_cart";a:4:{s:4:"file";s:31:"camiseta-arquimedes-1-40x60.png";s:5:"width";i:40;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"camiseta-arquimedes-1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"camiseta-arquimedes-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(863, 59, '_wp_attached_file', '2017/09/banner-vestuario-1.jpg'),
(864, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1900;s:6:"height";i:181;s:4:"file";s:30:"2017/09/banner-vestuario-1.jpg";s:5:"sizes";a:14:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"banner-vestuario-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"banner-vestuario-1-300x29.jpg";s:5:"width";i:300;s:6:"height";i:29;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"banner-vestuario-1-768x73.jpg";s:5:"width";i:768;s:6:"height";i:73;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"banner-vestuario-1-1024x98.jpg";s:5:"width";i:1024;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:26:"estude_matematica_destaque";a:4:{s:4:"file";s:30:"banner-vestuario-1-995x181.jpg";s:5:"width";i:995;s:6:"height";i:181;s:9:"mime-type";s:10:"image/jpeg";}s:23:"estude_matematica_image";a:4:{s:4:"file";s:30:"banner-vestuario-1-650x181.jpg";s:5:"width";i:650;s:6:"height";i:181;s:9:"mime-type";s:10:"image/jpeg";}s:22:"estude_matematica_grid";a:4:{s:4:"file";s:30:"banner-vestuario-1-483x181.jpg";s:5:"width";i:483;s:6:"height";i:181;s:9:"mime-type";s:10:"image/jpeg";}s:29:"estude_matematica_image_thumb";a:4:{s:4:"file";s:30:"banner-vestuario-1-172x113.jpg";s:5:"width";i:172;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:24:"estude_matematica_avatar";a:4:{s:4:"file";s:28:"banner-vestuario-1-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:25:"estude_matematica_related";a:4:{s:4:"file";s:30:"banner-vestuario-1-233x181.jpg";s:5:"width";i:233;s:6:"height";i:181;s:9:"mime-type";s:10:"image/jpeg";}s:22:"estude_matematica_cart";a:4:{s:4:"file";s:28:"banner-vestuario-1-40x60.jpg";s:5:"width";i:40;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"banner-vestuario-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"banner-vestuario-1-300x181.jpg";s:5:"width";i:300;s:6:"height";i:181;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:30:"banner-vestuario-1-600x181.jpg";s:5:"width";i:600;s:6:"height";i:181;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(894, 60, '_menu_item_type', 'taxonomy'),
(895, 60, '_menu_item_menu_item_parent', '0'),
(896, 60, '_menu_item_object_id', '209'),
(897, 60, '_menu_item_object', 'product_cat'),
(898, 60, '_menu_item_target', ''),
(899, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(900, 60, '_menu_item_xfn', ''),
(901, 60, '_menu_item_url', ''),
(903, 61, '_menu_item_type', 'taxonomy'),
(904, 61, '_menu_item_menu_item_parent', '0'),
(905, 61, '_menu_item_object_id', '208'),
(906, 61, '_menu_item_object', 'product_cat'),
(907, 61, '_menu_item_target', ''),
(908, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(909, 61, '_menu_item_xfn', ''),
(910, 61, '_menu_item_url', ''),
(912, 62, '_menu_item_type', 'taxonomy'),
(913, 62, '_menu_item_menu_item_parent', '0'),
(914, 62, '_menu_item_object_id', '207'),
(915, 62, '_menu_item_object', 'product_cat'),
(916, 62, '_menu_item_target', ''),
(917, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(918, 62, '_menu_item_xfn', ''),
(919, 62, '_menu_item_url', ''),
(921, 63, '_menu_item_type', 'custom'),
(922, 63, '_menu_item_menu_item_parent', '0'),
(923, 63, '_menu_item_object_id', '63'),
(924, 63, '_menu_item_object', 'custom'),
(925, 63, '_menu_item_target', ''),
(926, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(927, 63, '_menu_item_xfn', ''),
(928, 63, '_menu_item_url', 'http://estude-matematica.fuerzastudio.com/'),
(930, 64, '_menu_item_type', 'post_type'),
(931, 64, '_menu_item_menu_item_parent', '0'),
(932, 64, '_menu_item_object_id', '35'),
(933, 64, '_menu_item_object', 'page'),
(934, 64, '_menu_item_target', ''),
(935, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(936, 64, '_menu_item_xfn', ''),
(937, 64, '_menu_item_url', ''),
(939, 65, '_menu_item_type', 'post_type'),
(940, 65, '_menu_item_menu_item_parent', '0'),
(941, 65, '_menu_item_object_id', '39'),
(942, 65, '_menu_item_object', 'page'),
(943, 65, '_menu_item_target', ''),
(944, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(945, 65, '_menu_item_xfn', ''),
(946, 65, '_menu_item_url', ''),
(948, 66, '_menu_item_type', 'post_type'),
(949, 66, '_menu_item_menu_item_parent', '0'),
(950, 66, '_menu_item_object_id', '42'),
(951, 66, '_menu_item_object', 'page'),
(952, 66, '_menu_item_target', ''),
(953, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(954, 66, '_menu_item_xfn', ''),
(955, 66, '_menu_item_url', ''),
(1597, 86, '_wc_review_count', '0'),
(1598, 86, '_wc_rating_count', 'a:0:{}'),
(1599, 86, '_wc_average_rating', '0'),
(1600, 86, '_edit_lock', '1521209881:1'),
(1601, 86, '_edit_last', '3'),
(1602, 87, '_wp_attached_file', '2017/12/FullSizeRender-2-e1513194402688.jpg'),
(1603, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:640;s:4:"file";s:43:"2017/12/FullSizeRender-2-e1513194402688.jpg";s:5:"sizes";a:1:{s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:43:"FullSizeRender-2-e1513194402688-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:8:"iPhone 7";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1513185750";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.99";s:3:"iso";s:2:"25";s:13:"shutter_speed";s:17:"0.033333333333333";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1604, 87, '_wp_attachment_backup_sizes', 'a:3:{s:9:"full-orig";a:3:{s:5:"width";i:3024;s:6:"height";i:3024;s:4:"file";s:20:"FullSizeRender-2.jpg";}s:18:"full-1513193479688";a:3:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:35:"FullSizeRender-2-e1513193466345.jpg";}s:18:"full-1513193511156";a:3:{s:5:"width";i:640;s:6:"height";i:640;s:4:"file";s:35:"FullSizeRender-2-e1513193492674.jpg";}}'),
(1605, 86, '_sku', ''),
(1606, 86, '_regular_price', '49.90'),
(1607, 86, '_sale_price', ''),
(1608, 86, '_sale_price_dates_from', ''),
(1609, 86, '_sale_price_dates_to', ''),
(1610, 86, 'total_sales', '1'),
(1611, 86, '_tax_status', 'taxable'),
(1612, 86, '_tax_class', ''),
(1613, 86, '_manage_stock', 'no'),
(1614, 86, '_backorders', 'no'),
(1615, 86, '_sold_individually', 'no'),
(1616, 86, '_weight', '0.3'),
(1617, 86, '_length', '17'),
(1618, 86, '_width', '11'),
(1619, 86, '_height', '7'),
(1620, 86, '_upsell_ids', 'a:0:{}'),
(1621, 86, '_crosssell_ids', 'a:0:{}'),
(1622, 86, '_purchase_note', ''),
(1623, 86, '_default_attributes', 'a:0:{}'),
(1624, 86, '_virtual', 'no'),
(1625, 86, '_downloadable', 'no'),
(1626, 86, '_product_image_gallery', '94'),
(1627, 86, '_download_limit', '-1') ;
INSERT INTO `dahu12_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1628, 86, '_download_expiry', '-1'),
(1629, 86, '_stock', NULL),
(1630, 86, '_stock_status', 'instock'),
(1631, 86, '_product_attributes', 'a:1:{s:7:"tamanho";a:6:{s:4:"name";s:7:"Tamanho";s:5:"value";s:14:"P | M | G | GG";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:0;}}'),
(1632, 86, '_product_version', '3.2.6'),
(1634, 88, '_variation_description', 'Dimensões da camiseta tamanho GG: comprimento 61cm, altura 49cm, manga 17cm (veja a última imagem para ter uma referência visual!)'),
(1635, 88, '_sku', 'c2014-bb-v-gg'),
(1636, 88, '_regular_price', '49.90'),
(1637, 88, '_sale_price', ''),
(1638, 88, '_sale_price_dates_from', ''),
(1639, 88, '_sale_price_dates_to', ''),
(1640, 88, 'total_sales', '0'),
(1641, 88, '_tax_status', 'taxable'),
(1642, 88, '_tax_class', ''),
(1643, 88, '_manage_stock', 'yes'),
(1644, 88, '_backorders', 'no'),
(1645, 88, '_sold_individually', 'no'),
(1646, 88, '_weight', '0.3'),
(1647, 88, '_length', '17'),
(1648, 88, '_width', '11'),
(1649, 88, '_height', '7'),
(1650, 88, '_upsell_ids', 'a:0:{}'),
(1651, 88, '_crosssell_ids', 'a:0:{}'),
(1652, 88, '_purchase_note', ''),
(1653, 88, '_default_attributes', 'a:0:{}'),
(1654, 88, '_virtual', 'no'),
(1655, 88, '_downloadable', 'no'),
(1656, 88, '_product_image_gallery', ''),
(1657, 88, '_download_limit', '-1'),
(1658, 88, '_download_expiry', '-1'),
(1659, 88, '_stock', '20'),
(1660, 88, '_stock_status', 'instock'),
(1661, 88, '_wc_average_rating', '0'),
(1662, 88, '_wc_rating_count', 'a:0:{}'),
(1663, 88, '_wc_review_count', '0'),
(1664, 88, '_downloadable_files', 'a:0:{}'),
(1665, 88, 'attribute_tamanho', 'GG'),
(1666, 88, '_price', '49.90'),
(1667, 88, '_product_version', '3.2.6'),
(1668, 89, '_variation_description', 'Dimensões da camiseta tamanho G: comprimento 58cm, altura 44cm, manga 16cm (veja a última imagem para ter uma referência visual!)'),
(1669, 89, '_sku', 'c2014-bb-v-g'),
(1670, 89, '_regular_price', '49.90'),
(1671, 89, '_sale_price', ''),
(1672, 89, '_sale_price_dates_from', ''),
(1673, 89, '_sale_price_dates_to', ''),
(1674, 89, 'total_sales', '0'),
(1675, 89, '_tax_status', 'taxable'),
(1676, 89, '_tax_class', ''),
(1677, 89, '_manage_stock', 'yes'),
(1678, 89, '_backorders', 'no'),
(1679, 89, '_sold_individually', 'no'),
(1680, 89, '_weight', '0.3'),
(1681, 89, '_length', '17'),
(1682, 89, '_width', '11'),
(1683, 89, '_height', '7'),
(1684, 89, '_upsell_ids', 'a:0:{}'),
(1685, 89, '_crosssell_ids', 'a:0:{}'),
(1686, 89, '_purchase_note', ''),
(1687, 89, '_default_attributes', 'a:0:{}'),
(1688, 89, '_virtual', 'no'),
(1689, 89, '_downloadable', 'no'),
(1690, 89, '_product_image_gallery', ''),
(1691, 89, '_download_limit', '-1'),
(1692, 89, '_download_expiry', '-1'),
(1693, 89, '_stock', '15'),
(1694, 89, '_stock_status', 'instock'),
(1695, 89, '_wc_average_rating', '0'),
(1696, 89, '_wc_rating_count', 'a:0:{}'),
(1697, 89, '_wc_review_count', '0'),
(1698, 89, '_downloadable_files', 'a:0:{}'),
(1699, 89, 'attribute_tamanho', 'G'),
(1700, 89, '_price', '49.90'),
(1701, 89, '_product_version', '3.2.6'),
(1702, 90, '_variation_description', 'Dimensões da camiseta tamanho M: comprimento 54cm, altura 41cm, manga 15cm (veja a última imagem para ter uma referência visual!)'),
(1703, 90, '_sku', 'c2014-bb-v-m'),
(1704, 90, '_regular_price', '49.90'),
(1705, 90, '_sale_price', ''),
(1706, 90, '_sale_price_dates_from', ''),
(1707, 90, '_sale_price_dates_to', ''),
(1708, 90, 'total_sales', '0'),
(1709, 90, '_tax_status', 'taxable'),
(1710, 90, '_tax_class', ''),
(1711, 90, '_manage_stock', 'yes'),
(1712, 90, '_backorders', 'no'),
(1713, 90, '_sold_individually', 'no'),
(1714, 90, '_weight', '0.3'),
(1715, 90, '_length', '17'),
(1716, 90, '_width', '11'),
(1717, 90, '_height', '7'),
(1718, 90, '_upsell_ids', 'a:0:{}'),
(1719, 90, '_crosssell_ids', 'a:0:{}'),
(1720, 90, '_purchase_note', ''),
(1721, 90, '_default_attributes', 'a:0:{}'),
(1722, 90, '_virtual', 'no'),
(1723, 90, '_downloadable', 'no'),
(1724, 90, '_product_image_gallery', ''),
(1725, 90, '_download_limit', '-1'),
(1726, 90, '_download_expiry', '-1'),
(1727, 90, '_stock', '10'),
(1728, 90, '_stock_status', 'instock') ;
INSERT INTO `dahu12_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1729, 90, '_wc_average_rating', '0'),
(1730, 90, '_wc_rating_count', 'a:0:{}'),
(1731, 90, '_wc_review_count', '0'),
(1732, 90, '_downloadable_files', 'a:0:{}'),
(1733, 90, 'attribute_tamanho', 'M'),
(1734, 90, '_price', '49.90'),
(1735, 90, '_product_version', '3.2.6'),
(1736, 91, '_variation_description', 'Dimensões da camiseta tamanho P: comprimento 50cm, altura 39cm, manga 14cm (veja a última imagem para ter uma referência visual!)'),
(1737, 91, '_sku', 'c2014-bb-v-p'),
(1738, 91, '_regular_price', '49.90'),
(1739, 91, '_sale_price', ''),
(1740, 91, '_sale_price_dates_from', ''),
(1741, 91, '_sale_price_dates_to', ''),
(1742, 91, 'total_sales', '0'),
(1743, 91, '_tax_status', 'taxable'),
(1744, 91, '_tax_class', ''),
(1745, 91, '_manage_stock', 'yes'),
(1746, 91, '_backorders', 'no'),
(1747, 91, '_sold_individually', 'no'),
(1748, 91, '_weight', '0.3'),
(1749, 91, '_length', '17'),
(1750, 91, '_width', '11'),
(1751, 91, '_height', '7'),
(1752, 91, '_upsell_ids', 'a:0:{}'),
(1753, 91, '_crosssell_ids', 'a:0:{}'),
(1754, 91, '_purchase_note', ''),
(1755, 91, '_default_attributes', 'a:0:{}'),
(1756, 91, '_virtual', 'no'),
(1757, 91, '_downloadable', 'no'),
(1758, 91, '_product_image_gallery', ''),
(1759, 91, '_download_limit', '-1'),
(1760, 91, '_download_expiry', '-1'),
(1761, 91, '_stock', '10'),
(1762, 91, '_stock_status', 'instock'),
(1763, 91, '_wc_average_rating', '0'),
(1764, 91, '_wc_rating_count', 'a:0:{}'),
(1765, 91, '_wc_review_count', '0'),
(1766, 91, '_downloadable_files', 'a:0:{}'),
(1767, 91, 'attribute_tamanho', 'P'),
(1768, 91, '_price', '49.90'),
(1769, 91, '_product_version', '3.2.6'),
(1773, 89, '_thumbnail_id', '87'),
(1774, 88, '_thumbnail_id', '87'),
(1776, 86, '_thumbnail_id', '87'),
(1777, 92, '_order_key', 'wc_order_5a31879a5b5ca'),
(1778, 92, '_customer_user', '3'),
(1779, 92, '_payment_method', 'pagarme-banking-ticket'),
(1780, 92, '_payment_method_title', 'Boleto bancário'),
(1781, 92, '_transaction_id', '2604946'),
(1782, 92, '_customer_ip_address', '201.47.227.199'),
(1783, 92, '_customer_user_agent', 'mozilla/5.0 (macintosh; intel mac os x 10_12_6) applewebkit/537.36 (khtml, like gecko) chrome/62.0.3202.94 safari/537.36'),
(1784, 92, '_created_via', 'checkout'),
(1785, 92, '_date_completed', ''),
(1786, 92, '_completed_date', ''),
(1787, 92, '_date_paid', ''),
(1788, 92, '_paid_date', ''),
(1789, 92, '_cart_hash', '0619df46c1da5ce754807cd7f1fb85b2'),
(1790, 92, '_billing_first_name', 'Gustavo'),
(1791, 92, '_billing_last_name', 'Reis'),
(1792, 92, '_billing_company', ''),
(1793, 92, '_billing_address_1', 'Ramiro Barcelos'),
(1794, 92, '_billing_address_2', 'conjunto 202'),
(1795, 92, '_billing_city', 'Porto Alegre'),
(1796, 92, '_billing_state', 'RS'),
(1797, 92, '_billing_postcode', '90035-006'),
(1798, 92, '_billing_country', 'BR'),
(1799, 92, '_billing_email', 'gustavo@gustavoreis.com'),
(1800, 92, '_billing_phone', '5132514111'),
(1801, 92, '_shipping_first_name', ''),
(1802, 92, '_shipping_last_name', ''),
(1803, 92, '_shipping_company', ''),
(1804, 92, '_shipping_address_1', ''),
(1805, 92, '_shipping_address_2', ''),
(1806, 92, '_shipping_city', ''),
(1807, 92, '_shipping_state', ''),
(1808, 92, '_shipping_postcode', ''),
(1809, 92, '_shipping_country', ''),
(1810, 92, '_order_currency', 'BRL'),
(1811, 92, '_cart_discount', '0'),
(1812, 92, '_cart_discount_tax', '0'),
(1813, 92, '_order_shipping', '0'),
(1814, 92, '_order_shipping_tax', '0'),
(1815, 92, '_order_tax', '0'),
(1816, 92, '_order_total', '49.90'),
(1817, 92, '_order_version', '3.1.2'),
(1818, 92, '_prices_include_tax', 'no'),
(1819, 92, '_billing_address_index', 'Gustavo Reis  Ramiro Barcelos conjunto 202 Porto Alegre RS 90035-006 BR gustavo@gustavoreis.com 5132514111 1215 Independência'),
(1820, 92, '_shipping_address_index', '          '),
(1821, 92, '_shipping_method', ''),
(1822, 92, '_billing_cpf', '692.992.770-87'),
(1823, 92, '_billing_number', '1215'),
(1824, 92, '_billing_neighborhood', 'Independência'),
(1825, 92, '_billing_cellphone', '51999851335'),
(1826, 92, '_wc_pagarme_transaction_id', '2604946'),
(1827, 92, '_wc_pagarme_transaction_data', 'a:5:{s:14:"payment_method";s:6:"boleto";s:12:"installments";s:1:"1";s:10:"card_brand";s:0:"";s:15:"antifraud_score";s:0:"";s:10:"boleto_url";s:0:"";}'),
(1828, 92, '_recorded_sales', 'yes'),
(1829, 92, '_recorded_coupon_usage_counts', 'yes'),
(1830, 92, '_edit_lock', '1513195871:3'),
(1884, 94, '_wp_attached_file', '2017/12/tamanhos.jpg'),
(1885, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:20:"2017/12/tamanhos.jpg";s:5:"sizes";a:14:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"tamanhos-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"tamanhos-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"tamanhos-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"tamanhos-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:26:"estude_matematica_destaque";a:4:{s:4:"file";s:20:"tamanhos-995x392.jpg";s:5:"width";i:995;s:6:"height";i:392;s:9:"mime-type";s:10:"image/jpeg";}s:23:"estude_matematica_image";a:4:{s:4:"file";s:20:"tamanhos-650x430.jpg";s:5:"width";i:650;s:6:"height";i:430;s:9:"mime-type";s:10:"image/jpeg";}s:22:"estude_matematica_grid";a:4:{s:4:"file";s:20:"tamanhos-483x387.jpg";s:5:"width";i:483;s:6:"height";i:387;s:9:"mime-type";s:10:"image/jpeg";}s:29:"estude_matematica_image_thumb";a:4:{s:4:"file";s:20:"tamanhos-172x113.jpg";s:5:"width";i:172;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:24:"estude_matematica_avatar";a:4:{s:4:"file";s:18:"tamanhos-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:25:"estude_matematica_related";a:4:{s:4:"file";s:20:"tamanhos-233x320.jpg";s:5:"width";i:233;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}s:22:"estude_matematica_cart";a:4:{s:4:"file";s:18:"tamanhos-40x60.jpg";s:5:"width";i:40;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"tamanhos-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"tamanhos-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"tamanhos-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;
INSERT INTO `dahu12_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1888, 86, '_price', '49.90') ;

#
# Fim do conteúdo da tabela `dahu12_postmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_posts` existente
#

DROP TABLE IF EXISTS `dahu12_posts`;


#
# Estrutura da tabela `dahu12_posts`
#

CREATE TABLE `dahu12_posts` (
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
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_posts`
#
INSERT INTO `dahu12_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-08-20 14:08:06', '2017-08-20 17:08:06', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2017-08-20 14:08:06', '2017-08-20 17:08:06', '', 0, 'http://localhost/fuerza/estude-matematica/?p=1', 0, 'post', '', 1),
(35, 1, '2017-08-24 12:20:34', '2017-08-24 15:20:34', '[woocommerce_cart]', 'Carrinho', '', 'publish', 'closed', 'closed', '', 'carrinho', '', '', '2017-08-24 12:20:34', '2017-08-24 15:20:34', '', 0, 'http://localhost/fuerza/estude-matematica/?page_id=35', 0, 'page', '', 0),
(37, 1, '2017-08-24 12:20:34', '2017-08-24 15:20:34', '[woocommerce_cart]', 'Carrinho', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-08-24 12:20:34', '2017-08-24 15:20:34', '', 35, 'http://localhost/fuerza/estude-matematica/2017/08/24/35-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2017-08-24 12:21:37', '2017-08-24 15:21:37', '[woocommerce_checkout]', 'Finalizar Compra', '', 'publish', 'closed', 'closed', '', 'finalizar-compra', '', '', '2017-08-24 12:21:37', '2017-08-24 15:21:37', '', 0, 'http://localhost/fuerza/estude-matematica/?page_id=39', 0, 'page', '', 0),
(40, 1, '2017-08-24 12:21:37', '2017-08-24 15:21:37', '[woocommerce_checkout]', 'Finalizar Compra', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2017-08-24 12:21:37', '2017-08-24 15:21:37', '', 39, 'http://localhost/fuerza/estude-matematica/2017/08/24/39-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-08-24 20:09:37', '2017-08-24 23:09:37', '[woocommerce_my_account]', 'Minha Conta', '', 'publish', 'closed', 'closed', '', 'minha-conta', '', '', '2017-08-24 20:09:37', '2017-08-24 23:09:37', '', 0, 'http://localhost/fuerza/estude-matematica/?page_id=42', 0, 'page', '', 0),
(43, 1, '2017-08-24 20:09:37', '2017-08-24 23:09:37', '[woocommerce_my_account]', 'Minha Conta', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2017-08-24 20:09:37', '2017-08-24 23:09:37', '', 42, 'http://localhost/fuerza/estude-matematica/2017/08/24/42-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-09-13 08:52:19', '2017-09-13 11:52:19', '', 'camiseta-arquimedes', '', 'inherit', 'open', 'closed', '', 'camiseta-arquimedes', '', '', '2017-09-13 08:52:19', '2017-09-13 11:52:19', '', 0, 'http://estude-matematica.fuerzastudio.com/wp-content/uploads/2017/09/camiseta-arquimedes-1.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2017-09-13 08:56:04', '2017-09-13 11:56:04', '', 'banner-vestuario', '', 'inherit', 'open', 'closed', '', 'banner-vestuario', '', '', '2017-09-13 08:56:04', '2017-09-13 11:56:04', '', 0, 'http://estude-matematica.fuerzastudio.com/wp-content/uploads/2017/09/banner-vestuario-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2017-09-13 09:45:43', '2017-09-13 12:45:43', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2017-09-13 09:45:43', '2017-09-13 12:45:43', '', 0, 'http://estude-matematica.fuerzastudio.com/?p=60', 1, 'nav_menu_item', '', 0),
(61, 1, '2017-09-13 09:45:43', '2017-09-13 12:45:43', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2017-09-13 09:45:43', '2017-09-13 12:45:43', '', 0, 'http://estude-matematica.fuerzastudio.com/?p=61', 2, 'nav_menu_item', '', 0),
(62, 1, '2017-09-13 09:45:43', '2017-09-13 12:45:43', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2017-09-13 09:45:43', '2017-09-13 12:45:43', '', 0, 'http://estude-matematica.fuerzastudio.com/?p=62', 3, 'nav_menu_item', '', 0),
(63, 1, '2017-09-13 09:46:26', '2017-09-13 12:46:26', '', 'Início', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2017-09-13 09:46:26', '2017-09-13 12:46:26', '', 0, 'http://estude-matematica.fuerzastudio.com/?p=63', 1, 'nav_menu_item', '', 0),
(64, 1, '2017-09-13 09:46:26', '2017-09-13 12:46:26', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2017-09-13 09:46:26', '2017-09-13 12:46:26', '', 0, 'http://estude-matematica.fuerzastudio.com/?p=64', 2, 'nav_menu_item', '', 0),
(65, 1, '2017-09-13 09:46:26', '2017-09-13 12:46:26', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2017-09-13 09:46:26', '2017-09-13 12:46:26', '', 0, 'http://estude-matematica.fuerzastudio.com/?p=65', 3, 'nav_menu_item', '', 0),
(66, 1, '2017-09-13 09:46:26', '2017-09-13 12:46:26', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2017-09-13 09:46:26', '2017-09-13 12:46:26', '', 0, 'http://estude-matematica.fuerzastudio.com/?p=66', 4, 'nav_menu_item', '', 0),
(86, 3, '2017-12-13 18:01:24', '2017-12-13 20:01:24', 'Camiseta feminina modelo “baby look” produzida em malha 100% poliviscose. Estampa em serigrafia. (Caixa de texto do topo)', 'Camiseta feminina “vintage” (estampa “Espartana”) – vermelha', 'Camiseta feminina modelo “baby look” produzida em malha 100% poliviscose. Estampa em serigrafia. (Breve descrição sobre o produto)', 'publish', 'closed', 'closed', '', 'camiseta-feminina-vintage-espartana', '', '', '2017-12-14 16:49:44', '2017-12-14 18:49:44', '', 0, 'http://estude-matematica.fuerzastudio.com/?post_type=product&#038;p=86', 0, 'product', '', 0),
(87, 3, '2017-12-13 17:30:27', '2017-12-13 19:30:27', '', 'camiseta-feminina-vintage-espartana', '', 'inherit', 'open', 'closed', '', 'fullsizerender-2', '', '', '2017-12-13 17:30:51', '2017-12-13 19:30:51', '', 86, 'http://estude-matematica.fuerzastudio.com/wp-content/uploads/2017/12/FullSizeRender-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 3, '2017-12-13 17:34:29', '2017-12-13 19:34:29', '', 'Camiseta feminina “vintage” (estampa “Espartana”) – vermelha - GG', '', 'publish', 'closed', 'closed', '', 'camiseta-feminina-vintage-espartana-gg', '', '', '2017-12-13 17:34:47', '2017-12-13 19:34:47', '', 86, 'http://estude-matematica.fuerzastudio.com/?post_type=product&#038;p=86', 4, 'product_variation', '', 0),
(89, 3, '2017-12-13 17:34:29', '2017-12-13 19:34:29', '', 'Camiseta feminina “vintage” (estampa “Espartana”) – vermelha - G', '', 'publish', 'closed', 'closed', '', 'camiseta-feminina-vintage-espartana-g', '', '', '2017-12-13 17:34:47', '2017-12-13 19:34:47', '', 86, 'http://estude-matematica.fuerzastudio.com/?post_type=product&#038;p=86', 3, 'product_variation', '', 0),
(90, 3, '2017-12-13 17:34:29', '2017-12-13 19:34:29', '', 'Camiseta feminina “vintage” (estampa “Espartana”) – vermelha - M', '', 'publish', 'closed', 'closed', '', 'camiseta-feminina-vintage-espartana-m', '', '', '2017-12-13 17:34:47', '2017-12-13 19:34:47', '', 86, 'http://estude-matematica.fuerzastudio.com/?post_type=product&#038;p=86', 2, 'product_variation', '', 0),
(91, 3, '2017-12-13 17:34:29', '2017-12-13 19:34:29', '', 'Camiseta feminina “vintage” (estampa “Espartana”) – vermelha - P', '', 'publish', 'closed', 'closed', '', 'camiseta-feminina-vintage-espartana-p', '', '', '2017-12-13 17:34:47', '2017-12-13 19:34:47', '', 86, 'http://estude-matematica.fuerzastudio.com/?post_type=product&#038;p=86', 1, 'product_variation', '', 0),
(92, 1, '2017-12-13 18:03:38', '2017-12-13 20:03:38', '', 'Order &ndash; dezembro 13, 2017 @ 06:03 PM', '', 'wc-on-hold', 'open', 'closed', 'order_5a31879a5bbd0', 'pedido-13-de-dec-de-2017-as-200303', '', '', '2017-12-13 18:03:39', '2017-12-13 20:03:39', '', 0, 'http://estude-matematica.fuerzastudio.com/?post_type=shop_order&#038;p=92', 0, 'shop_order', '', 1),
(93, 3, '2017-12-14 16:49:32', '2017-12-14 18:49:32', 'Camiseta feminina modelo “baby look” produzida em malha 100% poliviscose. Estampa em serigrafia. (Caixa de texto do t)', 'Camiseta feminina “vintage” (estampa “Espartana”) – vermelha', '', 'inherit', 'closed', 'closed', '', '86-autosave-v1', '', '', '2017-12-14 16:49:32', '2017-12-14 18:49:32', '', 86, 'http://estude-matematica.fuerzastudio.com/86-autosave-v1/', 0, 'revision', '', 0),
(94, 3, '2017-12-14 16:44:12', '2017-12-14 18:44:12', '', 'tamanhos', '', 'inherit', 'open', 'closed', '', 'tamanhos', '', '', '2017-12-14 16:44:12', '2017-12-14 18:44:12', '', 86, 'http://estude-matematica.fuerzastudio.com/wp-content/uploads/2017/12/tamanhos.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2018-01-23 13:33:30', '2018-01-23 15:33:30', '[woocommerce_checkout]', 'Finalizar Compra', '', 'inherit', 'closed', 'closed', '', '39-autosave-v1', '', '', '2018-01-23 13:33:30', '2018-01-23 15:33:30', '', 39, 'http://estude-matematica.fuerzastudio.com/39-autosave-v1/', 0, 'revision', '', 0),
(100, 1, '2018-03-16 11:18:01', '2018-03-16 14:18:01', 'Camiseta feminina modelo “baby look” produzida em malha 100% poliviscose. Estampa em serigrafia. (Caixa de texto do topo)', 'Camiseta feminina “vintage” (estampa “Espartana”) – vermelha', '<p>Camiseta feminina modelo “baby look” produzida em malha 100% poliviscose. Estampa em serigrafia. (Breve descrição sobre o produto)</p>', 'inherit', 'closed', 'closed', '', '86-autosave-v1', '', '', '2018-03-16 11:18:01', '2018-03-16 14:18:01', '', 86, 'http://estude-matematica.fuerzastudio.com/86-autosave-v1/', 0, 'revision', '', 0),
(105, 3, '2018-05-22 21:10:27', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-22 21:10:27', '0000-00-00 00:00:00', '', 0, 'http://estude-matematica.fuerzastudio.com/?p=105', 0, 'post', '', 0),
(106, 6, '2018-05-29 16:59:07', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-29 16:59:07', '0000-00-00 00:00:00', '', 0, 'http://estude-matematica.fuerzastudio.com/?p=106', 0, 'post', '', 0),
(107, 5, '2018-05-29 16:59:22', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-29 16:59:22', '0000-00-00 00:00:00', '', 0, 'http://estude-matematica.fuerzastudio.com/?p=107', 0, 'post', '', 0),
(108, 1, '2018-05-29 17:25:41', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-29 17:25:41', '0000-00-00 00:00:00', '', 0, 'http://estude-matematica.fuerzastudio.com/?p=108', 0, 'post', '', 0) ;

#
# Fim do conteúdo da tabela `dahu12_posts`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_term_relationships` existente
#

DROP TABLE IF EXISTS `dahu12_term_relationships`;


#
# Estrutura da tabela `dahu12_term_relationships`
#

CREATE TABLE `dahu12_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_term_relationships`
#
INSERT INTO `dahu12_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(60, 210, 0),
(61, 210, 0),
(62, 210, 0),
(63, 211, 0),
(64, 211, 0),
(65, 211, 0),
(66, 211, 0),
(86, 4, 0),
(86, 207, 0),
(86, 212, 0),
(86, 213, 0),
(86, 214, 0),
(86, 215, 0),
(86, 216, 0),
(86, 217, 0) ;

#
# Fim do conteúdo da tabela `dahu12_term_relationships`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_term_taxonomy` existente
#

DROP TABLE IF EXISTS `dahu12_term_taxonomy`;


#
# Estrutura da tabela `dahu12_term_taxonomy`
#

CREATE TABLE `dahu12_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_term_taxonomy`
#
INSERT INTO `dahu12_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 1),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(16, 16, 'product_tag', '', 0, 0),
(17, 17, 'product_tag', '', 0, 0),
(18, 18, 'product_tag', '', 0, 0),
(19, 19, 'product_tag', '', 0, 0),
(20, 20, 'product_tag', '', 0, 0),
(21, 21, 'product_tag', '', 0, 0),
(22, 22, 'product_tag', '', 0, 0),
(23, 23, 'product_tag', '', 0, 0),
(24, 24, 'product_tag', '', 0, 0),
(27, 27, 'product_tag', '', 0, 0),
(28, 28, 'product_tag', '', 0, 0),
(29, 29, 'product_tag', '', 0, 0),
(30, 30, 'product_tag', '', 0, 0),
(31, 31, 'product_tag', '', 0, 0),
(34, 34, 'product_tag', '', 0, 0),
(35, 35, 'product_tag', '', 0, 0),
(36, 36, 'product_tag', '', 0, 0),
(37, 37, 'product_tag', '', 0, 0),
(38, 38, 'product_tag', '', 0, 0),
(41, 41, 'product_tag', '', 0, 0),
(42, 42, 'product_tag', '', 0, 0),
(43, 43, 'product_tag', '', 0, 0),
(46, 46, 'product_tag', '', 0, 0),
(47, 47, 'product_tag', '', 0, 0),
(48, 48, 'product_tag', '', 0, 0),
(49, 49, 'product_tag', '', 0, 0),
(50, 50, 'product_tag', '', 0, 0),
(53, 53, 'product_tag', '', 0, 0),
(54, 54, 'product_tag', '', 0, 0),
(55, 55, 'product_tag', '', 0, 0),
(56, 56, 'product_tag', '', 0, 0),
(57, 57, 'product_tag', '', 0, 0),
(60, 60, 'product_tag', '', 0, 0),
(61, 61, 'product_tag', '', 0, 0),
(62, 62, 'product_tag', '', 0, 0),
(63, 63, 'product_tag', '', 0, 0),
(64, 64, 'product_tag', '', 0, 0),
(65, 65, 'product_tag', '', 0, 0),
(69, 69, 'product_tag', '', 0, 0),
(70, 70, 'product_tag', '', 0, 0),
(71, 71, 'product_tag', '', 0, 0),
(72, 72, 'product_tag', '', 0, 0),
(73, 73, 'product_tag', '', 0, 0),
(77, 77, 'product_tag', '', 0, 0),
(78, 78, 'product_tag', '', 0, 0),
(79, 79, 'product_tag', '', 0, 0),
(80, 80, 'product_tag', '', 0, 0),
(81, 81, 'product_tag', '', 0, 0),
(83, 83, 'product_tag', '', 0, 0),
(84, 84, 'product_tag', '', 0, 0),
(87, 87, 'product_tag', '', 0, 0),
(88, 88, 'product_tag', '', 0, 0),
(89, 89, 'product_tag', '', 0, 0),
(90, 90, 'product_tag', '', 0, 0),
(91, 91, 'product_tag', '', 0, 0),
(92, 92, 'product_tag', '', 0, 0),
(93, 93, 'product_tag', '', 0, 0),
(94, 94, 'product_tag', '', 0, 0),
(95, 95, 'product_tag', '', 0, 0),
(98, 98, 'product_tag', '', 0, 0),
(99, 99, 'product_tag', '', 0, 0),
(100, 100, 'product_tag', '', 0, 0),
(101, 101, 'product_tag', '', 0, 0),
(102, 102, 'product_tag', '', 0, 0),
(103, 103, 'product_tag', '', 0, 0),
(106, 106, 'product_tag', '', 0, 0),
(107, 107, 'product_tag', '', 0, 0),
(111, 111, 'product_tag', '', 0, 0),
(112, 112, 'product_tag', '', 0, 0),
(113, 113, 'product_tag', '', 0, 0),
(117, 117, 'product_tag', '', 0, 0),
(118, 118, 'product_tag', '', 0, 0),
(119, 119, 'product_tag', '', 0, 0),
(120, 120, 'product_tag', '', 0, 0),
(123, 123, 'product_tag', '', 0, 0),
(124, 124, 'product_tag', '', 0, 0),
(127, 127, 'product_tag', '', 0, 0),
(128, 128, 'product_tag', '', 0, 0),
(129, 129, 'product_tag', '', 0, 0),
(130, 130, 'product_tag', '', 0, 0),
(133, 133, 'product_tag', '', 0, 0),
(134, 134, 'product_tag', '', 0, 0),
(135, 135, 'product_tag', '', 0, 0),
(136, 136, 'product_tag', '', 0, 0),
(137, 137, 'product_tag', '', 0, 0),
(139, 139, 'product_tag', '', 0, 0) ;
INSERT INTO `dahu12_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(140, 140, 'product_tag', '', 0, 0),
(141, 141, 'product_tag', '', 0, 0),
(144, 144, 'product_tag', '', 0, 0),
(145, 145, 'product_tag', '', 0, 0),
(146, 146, 'product_tag', '', 0, 0),
(148, 148, 'product_tag', '', 0, 0),
(149, 149, 'product_tag', '', 0, 0),
(150, 150, 'product_tag', '', 0, 0),
(151, 151, 'product_tag', '', 0, 0),
(152, 152, 'product_tag', '', 0, 0),
(153, 153, 'product_tag', '', 0, 0),
(154, 154, 'product_tag', '', 0, 0),
(155, 155, 'product_tag', '', 0, 0),
(156, 156, 'product_tag', '', 0, 0),
(157, 157, 'product_tag', '', 0, 0),
(158, 158, 'product_tag', '', 0, 0),
(162, 162, 'product_tag', '', 0, 0),
(163, 163, 'product_tag', '', 0, 0),
(164, 164, 'product_tag', '', 0, 0),
(165, 165, 'product_tag', '', 0, 0),
(166, 166, 'product_tag', '', 0, 0),
(169, 169, 'product_tag', '', 0, 0),
(170, 170, 'product_tag', '', 0, 0),
(171, 171, 'product_tag', '', 0, 0),
(173, 173, 'product_tag', '', 0, 0),
(174, 174, 'product_tag', '', 0, 0),
(175, 175, 'product_tag', '', 0, 0),
(176, 176, 'product_tag', '', 0, 0),
(177, 177, 'product_tag', '', 0, 0),
(181, 181, 'product_tag', '', 0, 0),
(182, 182, 'product_tag', '', 0, 0),
(183, 183, 'product_tag', '', 0, 0),
(185, 185, 'product_tag', '', 0, 0),
(186, 186, 'product_tag', '', 0, 0),
(187, 187, 'product_tag', '', 0, 0),
(188, 188, 'product_tag', '', 0, 0),
(189, 189, 'product_tag', '', 0, 0),
(190, 190, 'product_tag', '', 0, 0),
(191, 191, 'product_tag', '', 0, 0),
(193, 193, 'product_tag', '', 0, 0),
(194, 194, 'product_tag', '', 0, 0),
(196, 196, 'product_tag', '', 0, 0),
(197, 197, 'product_tag', '', 0, 0),
(198, 198, 'product_tag', '', 0, 0),
(199, 199, 'product_tag', '', 0, 0),
(200, 200, 'product_tag', '', 0, 0),
(204, 204, 'product_tag', '', 0, 0),
(205, 205, 'product_tag', '', 0, 0),
(206, 206, 'product_tag', '', 0, 0),
(207, 207, 'product_cat', '', 0, 1),
(208, 208, 'product_cat', '', 0, 0),
(209, 209, 'product_cat', '', 0, 0),
(210, 210, 'nav_menu', '', 0, 3),
(211, 211, 'nav_menu', '', 0, 4),
(212, 212, 'product_tag', '', 0, 1),
(213, 213, 'product_tag', '', 0, 1),
(214, 214, 'product_tag', '', 0, 1),
(215, 215, 'product_tag', '', 0, 1),
(216, 216, 'product_tag', '', 0, 1),
(217, 217, 'product_tag', '', 0, 1),
(218, 218, 'product_shipping_class', '', 0, 0),
(219, 219, 'product_shipping_class', '', 0, 0),
(220, 220, 'product_shipping_class', '', 0, 0),
(221, 221, 'product_cat', '', 0, 0) ;

#
# Fim do conteúdo da tabela `dahu12_term_taxonomy`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_termmeta` existente
#

DROP TABLE IF EXISTS `dahu12_termmeta`;


#
# Estrutura da tabela `dahu12_termmeta`
#

CREATE TABLE `dahu12_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_termmeta`
#
INSERT INTO `dahu12_termmeta` ( `meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(3, 16, 'product_count_product_tag', '0'),
(4, 17, 'product_count_product_tag', '0'),
(5, 18, 'product_count_product_tag', '0'),
(6, 19, 'product_count_product_tag', '0'),
(7, 20, 'product_count_product_tag', '0'),
(8, 21, 'product_count_product_tag', '0'),
(9, 22, 'product_count_product_tag', '0'),
(10, 23, 'product_count_product_tag', '0'),
(11, 24, 'product_count_product_tag', '0'),
(16, 27, 'product_count_product_tag', '0'),
(17, 28, 'product_count_product_tag', '0'),
(18, 29, 'product_count_product_tag', '0'),
(19, 30, 'product_count_product_tag', '0'),
(20, 31, 'product_count_product_tag', '0'),
(25, 34, 'product_count_product_tag', '0'),
(26, 35, 'product_count_product_tag', '0'),
(27, 36, 'product_count_product_tag', '0'),
(28, 37, 'product_count_product_tag', '0'),
(29, 38, 'product_count_product_tag', '0'),
(34, 41, 'product_count_product_tag', '0'),
(35, 42, 'product_count_product_tag', '0'),
(36, 43, 'product_count_product_tag', '0'),
(41, 46, 'product_count_product_tag', '0'),
(42, 47, 'product_count_product_tag', '0'),
(43, 48, 'product_count_product_tag', '0'),
(44, 49, 'product_count_product_tag', '0'),
(45, 50, 'product_count_product_tag', '0'),
(50, 53, 'product_count_product_tag', '0'),
(51, 54, 'product_count_product_tag', '0'),
(52, 55, 'product_count_product_tag', '0'),
(53, 56, 'product_count_product_tag', '0'),
(54, 57, 'product_count_product_tag', '0'),
(59, 60, 'product_count_product_tag', '0'),
(60, 61, 'product_count_product_tag', '0'),
(61, 62, 'product_count_product_tag', '0'),
(62, 63, 'product_count_product_tag', '0'),
(63, 64, 'product_count_product_tag', '0'),
(64, 65, 'product_count_product_tag', '0'),
(71, 69, 'product_count_product_tag', '0'),
(72, 70, 'product_count_product_tag', '0'),
(73, 71, 'product_count_product_tag', '0'),
(74, 72, 'product_count_product_tag', '0'),
(75, 73, 'product_count_product_tag', '0'),
(82, 77, 'product_count_product_tag', '0'),
(83, 78, 'product_count_product_tag', '0'),
(84, 79, 'product_count_product_tag', '0'),
(85, 80, 'product_count_product_tag', '0'),
(86, 81, 'product_count_product_tag', '0'),
(89, 83, 'product_count_product_tag', '0'),
(90, 84, 'product_count_product_tag', '0'),
(95, 87, 'product_count_product_tag', '0'),
(96, 88, 'product_count_product_tag', '0'),
(97, 89, 'product_count_product_tag', '0'),
(98, 90, 'product_count_product_tag', '0'),
(99, 91, 'product_count_product_tag', '0'),
(100, 92, 'product_count_product_tag', '0'),
(101, 93, 'product_count_product_tag', '0'),
(102, 94, 'product_count_product_tag', '0'),
(103, 95, 'product_count_product_tag', '0'),
(108, 98, 'product_count_product_tag', '0'),
(109, 99, 'product_count_product_tag', '0'),
(110, 100, 'product_count_product_tag', '0'),
(111, 101, 'product_count_product_tag', '0'),
(112, 102, 'product_count_product_tag', '0'),
(113, 103, 'product_count_product_tag', '0'),
(118, 106, 'product_count_product_tag', '0'),
(119, 107, 'product_count_product_tag', '0'),
(126, 111, 'product_count_product_tag', '0'),
(127, 112, 'product_count_product_tag', '0'),
(128, 113, 'product_count_product_tag', '0'),
(135, 117, 'product_count_product_tag', '0'),
(136, 118, 'product_count_product_tag', '0'),
(137, 119, 'product_count_product_tag', '0'),
(138, 120, 'product_count_product_tag', '0'),
(143, 123, 'product_count_product_tag', '0'),
(144, 124, 'product_count_product_tag', '0'),
(149, 127, 'product_count_product_tag', '0'),
(150, 128, 'product_count_product_tag', '0'),
(151, 129, 'product_count_product_tag', '0'),
(152, 130, 'product_count_product_tag', '0'),
(157, 133, 'product_count_product_tag', '0'),
(158, 134, 'product_count_product_tag', '0'),
(159, 135, 'product_count_product_tag', '0'),
(160, 136, 'product_count_product_tag', '0'),
(161, 137, 'product_count_product_tag', '0'),
(164, 139, 'product_count_product_tag', '0'),
(165, 140, 'product_count_product_tag', '0'),
(166, 141, 'product_count_product_tag', '0'),
(171, 144, 'product_count_product_tag', '0'),
(172, 145, 'product_count_product_tag', '0'),
(173, 146, 'product_count_product_tag', '0'),
(176, 148, 'product_count_product_tag', '0'),
(177, 149, 'product_count_product_tag', '0'),
(178, 150, 'product_count_product_tag', '0'),
(179, 151, 'product_count_product_tag', '0'),
(180, 152, 'product_count_product_tag', '0'),
(181, 153, 'product_count_product_tag', '0'),
(182, 154, 'product_count_product_tag', '0'),
(183, 155, 'product_count_product_tag', '0'),
(184, 156, 'product_count_product_tag', '0') ;
INSERT INTO `dahu12_termmeta` ( `meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(185, 157, 'product_count_product_tag', '0'),
(186, 158, 'product_count_product_tag', '0'),
(193, 162, 'product_count_product_tag', '0'),
(194, 163, 'product_count_product_tag', '0'),
(195, 164, 'product_count_product_tag', '0'),
(196, 165, 'product_count_product_tag', '0'),
(197, 166, 'product_count_product_tag', '0'),
(202, 169, 'product_count_product_tag', '0'),
(203, 170, 'product_count_product_tag', '0'),
(204, 171, 'product_count_product_tag', '0'),
(207, 173, 'product_count_product_tag', '0'),
(208, 174, 'product_count_product_tag', '0'),
(209, 175, 'product_count_product_tag', '0'),
(210, 176, 'product_count_product_tag', '0'),
(211, 177, 'product_count_product_tag', '0'),
(218, 181, 'product_count_product_tag', '0'),
(219, 182, 'product_count_product_tag', '0'),
(220, 183, 'product_count_product_tag', '0'),
(223, 185, 'product_count_product_tag', '0'),
(224, 186, 'product_count_product_tag', '0'),
(225, 187, 'product_count_product_tag', '0'),
(226, 188, 'product_count_product_tag', '0'),
(227, 189, 'product_count_product_tag', '0'),
(228, 190, 'product_count_product_tag', '0'),
(229, 191, 'product_count_product_tag', '0'),
(232, 193, 'product_count_product_tag', '0'),
(233, 194, 'product_count_product_tag', '0'),
(236, 196, 'product_count_product_tag', '0'),
(237, 197, 'product_count_product_tag', '0'),
(238, 198, 'product_count_product_tag', '0'),
(239, 199, 'product_count_product_tag', '0'),
(240, 200, 'product_count_product_tag', '0'),
(247, 204, 'product_count_product_tag', '0'),
(248, 205, 'product_count_product_tag', '0'),
(249, 206, 'product_count_product_tag', '0'),
(250, 207, 'order', '0'),
(251, 207, 'display_type', ''),
(252, 207, 'thumbnail_id', '59'),
(253, 208, 'order', '0'),
(254, 208, 'display_type', ''),
(255, 208, 'thumbnail_id', '59'),
(256, 209, 'order', '0'),
(257, 209, 'display_type', ''),
(258, 209, 'thumbnail_id', '59'),
(259, 209, 'product_count_product_cat', '0'),
(260, 207, 'product_count_product_cat', '1'),
(261, 208, 'product_count_product_cat', '0'),
(262, 212, 'product_count_product_tag', '1'),
(263, 213, 'product_count_product_tag', '1'),
(264, 214, 'product_count_product_tag', '1'),
(265, 215, 'product_count_product_tag', '1'),
(266, 216, 'product_count_product_tag', '1'),
(267, 217, 'product_count_product_tag', '1'),
(268, 221, 'product_count_product_cat', '0') ;

#
# Fim do conteúdo da tabela `dahu12_termmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_terms` existente
#

DROP TABLE IF EXISTS `dahu12_terms`;


#
# Estrutura da tabela `dahu12_terms`
#

CREATE TABLE `dahu12_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_terms`
#
INSERT INTO `dahu12_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(16, 'Blue', 'blue', 0),
(17, 'Soy', 'soy', 0),
(18, 'Brass', 'brass', 0),
(19, 'progen', 'progen', 0),
(20, 'want', 'want', 0),
(21, 'come', 'come', 0),
(22, 'Alderaanp', 'alderaanp', 0),
(23, 'pI', 'pi', 0),
(24, 'to', 'to', 0),
(27, 'Yellow', 'yellow', 0),
(28, 'Plastic', 'plastic', 0),
(29, 'just', 'just', 0),
(30, 'plans', 'plans', 0),
(31, 'me', 'me', 0),
(34, 'Juice', 'juice', 0),
(35, 'considered', 'considered', 0),
(36, 'under', 'under', 0),
(37, 'Force', 'force', 0),
(38, 'pObiWan', 'pobiwan', 0),
(41, 'Small', 'small', 0),
(42, 'top', 'top', 0),
(43, 'raw', 'raw', 0),
(46, 'Gun', 'gun', 0),
(47, '5C', '5c', 0),
(48, 'most', 'most', 0),
(49, 'June', 'june', 0),
(50, 'Whatp', 'whatp', 0),
(53, 'Lime', 'lime', 0),
(54, 'Wood', 'wood', 0),
(55, 'pEt', 'pet', 0),
(56, 'voluptatum', 'voluptatum', 0),
(57, 'odio', 'odio', 0),
(60, 'Cushion', 'cushion', 0),
(61, 'timeppYou', 'timeppyou', 0),
(62, 'Rebel', 'rebel', 0),
(63, 'your', 'your', 0),
(64, 'this', 'this', 0),
(65, 'it', 'it', 0),
(69, 'Chicken', 'chicken', 0),
(70, 'ex', 'ex', 0),
(71, 'found', 'found', 0),
(72, 'numberppCaution', 'numberppcaution', 0),
(73, 'contain', 'contain', 0),
(77, 'Natural', 'natural', 0),
(78, 'the', 'the', 0),
(79, 'here', 'here', 0),
(80, 'sent', 'sent', 0),
(81, 'youppTheres', 'youpptheres', 0),
(83, 'Album', 'album', 0),
(84, 'farcical', 'farcical', 0),
(87, 'Galaxy', 'galaxy', 0),
(88, 'Heater', 'heater', 0),
(89, 'had', 'had', 0),
(90, 'pIm', 'pim', 0),
(91, 'responsibility', 'responsibility', 0),
(92, 'moreppShe', 'moreppshe', 0),
(93, 'and', 'and', 0),
(94, 'screen', 'screen', 0),
(95, 'contacts', 'contacts', 0),
(98, 'Brown', 'brown', 0),
(99, 'Card', 'card', 0),
(100, 'Medium', 'medium', 0),
(101, 'pointp', 'pointp', 0),
(102, 'pShut', 'pshut', 0),
(103, 'get', 'get', 0),
(106, 'Cleaner', 'cleaner', 0),
(107, 'vegetable', 'vegetable', 0),
(111, 'Book', 'book', 0),
(112, 'Smoothie', 'smoothie', 0),
(113, 'delivery', 'delivery', 0),
(117, 'Purple', 'purple', 0),
(118, 'Movie', 'movie', 0),
(119, 'pDont', 'pdont', 0),
(120, 'jumpp', 'jumpp', 0),
(123, 'in', 'in', 0),
(124, 'as', 'as', 0),
(127, 'Table', 'table', 0),
(128, 'AmetppYoure', 'ametppyoure', 0),
(129, 'all', 'all', 0),
(130, 'clear', 'clear', 0),
(133, 'Download', 'download', 0),
(134, 'DVD', 'dvd', 0),
(135, 'Moustache', 'moustache', 0),
(136, 'but', 'but', 0),
(137, 'on', 'on', 0),
(139, 'Violet', 'violet', 0) ;
INSERT INTO `dahu12_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(140, 'Doll', 'doll', 0),
(141, 'I', 'i', 0),
(144, 'Samsung', 'samsung', 0),
(145, 'try', 'try', 0),
(146, 'again', 'again', 0),
(148, 'Blender', 'blender', 0),
(149, 'Carrot', 'carrot', 0),
(150, 'Potato', 'potato', 0),
(151, 'women', 'women', 0),
(152, 'WCDMA', 'wcdma', 0),
(153, 'Video', 'video', 0),
(154, 'ACME', 'acme', 0),
(155, 'of', 'of', 0),
(156, 'let', 'let', 0),
(157, 'text', 'text', 0),
(158, 'father', 'father', 0),
(162, 'Kit', 'kit', 0),
(163, 'Say', 'say', 0),
(164, 'AmetppShut', 'ametppshut', 0),
(165, 'Ni', 'ni', 0),
(166, 'Who', 'who', 0),
(169, 'Large', 'large', 0),
(170, 'like', 'like', 0),
(171, 'story', 'story', 0),
(173, 'Knife', 'knife', 0),
(174, 'ea', 'ea', 0),
(175, 'with', 'with', 0),
(176, 'released', 'released', 0),
(177, '2007', '2007', 0),
(181, 'Sheet', 'sheet', 0),
(182, 'youppThe', 'youppthe', 0),
(183, 'they', 'they', 0),
(185, 'Prince', 'prince', 0),
(186, 'iPhone', 'iphone', 0),
(187, 'Tomato', 'tomato', 0),
(188, 'attacking', 'attacking', 0),
(189, 'voluptate', 'voluptate', 0),
(190, 'courage', 'courage', 0),
(191, 'that', 'that', 0),
(193, 'Gift', 'gift', 0),
(194, 'Bed', 'bed', 0),
(196, 'Microwave', 'microwave', 0),
(197, 'mooched', 'mooched', 0),
(198, 'watched', 'watched', 0),
(199, 'off', 'off', 0),
(200, 'burying', 'burying', 0),
(204, 'Pink', 'pink', 0),
(205, 'warmer', 'warmer', 0),
(206, 'martin', 'martin', 0),
(207, 'Vestuário', 'vestuario', 0),
(208, 'Para Estudar', 'para-estudar', 0),
(209, 'Acessórios', 'acessorios', 0),
(210, 'Menu Categorias', 'menu-categorias', 0),
(211, 'Menu Footer', 'menu-footer', 0),
(212, 'camiseta', 'camiseta', 0),
(213, 'baby look', 'baby-look', 0),
(214, 'feminina', 'feminina', 0),
(215, 'vermelha', 'vermelha', 0),
(216, '2014', '2014', 0),
(217, 'vintage', 'vintage', 0),
(218, 'Camiseta Feminina', 'camiseta-feminina', 0),
(219, 'Camiseta Masculina', 'camiseta-masculina', 0),
(220, 'Calendário', 'calendario', 0),
(221, 'Sem categoria', 'sem-categoria', 0) ;

#
# Fim do conteúdo da tabela `dahu12_terms`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_usermeta` existente
#

DROP TABLE IF EXISTS `dahu12_usermeta`;


#
# Estrutura da tabela `dahu12_usermeta`
#

CREATE TABLE `dahu12_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_usermeta`
#
INSERT INTO `dahu12_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'fuerzastudio'),
(2, 1, 'first_name', 'Gabriela'),
(3, 1, 'last_name', 'Candido'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'dahu12_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'dahu12_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:1:{s:64:"6089eacddb12a4f6a1cb8604f2a384e02e446d141173450fcdfd453fc6730739";a:4:{s:10:"expiration";i:1527798341;s:2:"ip";s:10:"172.17.0.7";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36";s:5:"login";i:1527625541;}}'),
(16, 1, 'dahu12_dashboard_quick_press_last_post_id', '108'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:10:"172.17.0.0";}'),
(18, 2, 'nickname', 'product-generator'),
(19, 2, 'first_name', ''),
(20, 2, 'last_name', ''),
(21, 2, 'description', ''),
(22, 2, 'rich_editing', 'true'),
(23, 2, 'comment_shortcuts', 'false'),
(24, 2, 'admin_color', 'fresh'),
(25, 2, 'use_ssl', '0'),
(26, 2, 'show_admin_bar_front', 'true'),
(27, 2, 'locale', ''),
(28, 2, 'dahu12_capabilities', 'a:1:{s:12:"shop_manager";b:1;}'),
(29, 2, 'dahu12_user_level', '9'),
(30, 2, 'dismissed_wp_pointers', ''),
(32, 1, 'last_update', '1509896640'),
(33, 1, 'billing_first_name', 'Gabriela'),
(34, 1, 'billing_last_name', 'Candido'),
(35, 1, 'billing_address_1', 'Rua Doutor Karl Wilhelm Schinke'),
(36, 1, 'billing_city', 'Novo Hamburgo'),
(37, 1, 'billing_state', 'RS'),
(38, 1, 'billing_postcode', '93415-240'),
(39, 1, 'billing_country', 'BR'),
(40, 1, 'billing_email', 'gabriela@fuerzastudio.com.br'),
(41, 1, 'billing_phone', '(51) 98022-7862'),
(52, 1, 'billing_address_2', ''),
(53, 1, 'shipping_first_name', ''),
(54, 1, 'shipping_last_name', ''),
(55, 1, 'shipping_company', ''),
(56, 1, 'shipping_address_1', ''),
(57, 1, 'shipping_number', ''),
(58, 1, 'shipping_address_2', ''),
(59, 1, 'shipping_neighborhood', ''),
(60, 1, 'shipping_city', ''),
(61, 1, 'shipping_postcode', ''),
(62, 1, 'shipping_country', ''),
(63, 1, 'shipping_state', ''),
(64, 3, 'nickname', 'espartato-tester'),
(65, 3, 'first_name', 'Gustavo'),
(66, 3, 'last_name', 'Reis'),
(67, 3, 'description', ''),
(68, 3, 'rich_editing', 'true'),
(69, 3, 'comment_shortcuts', 'false'),
(70, 3, 'admin_color', 'fresh'),
(71, 3, 'use_ssl', '0'),
(72, 3, 'show_admin_bar_front', 'true'),
(73, 3, 'locale', ''),
(74, 3, 'dahu12_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(75, 3, 'dahu12_user_level', '10'),
(76, 3, 'dismissed_wp_pointers', 'wp496_privacy'),
(113, 1, 'dahu12_user-settings', 'libraryContent=browse&editor=tinymce'),
(114, 1, 'dahu12_user-settings-time', '1516808330'),
(115, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(116, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_tag";}'),
(117, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(118, 1, 'nav_menu_recently_edited', '210'),
(131, 4, 'nickname', 'gabriela'),
(132, 4, 'first_name', 'Gabriela'),
(133, 4, 'last_name', 'Candido'),
(134, 4, 'description', ''),
(135, 4, 'rich_editing', 'true'),
(136, 4, 'comment_shortcuts', 'false'),
(137, 4, 'admin_color', 'fresh'),
(138, 4, 'use_ssl', '0'),
(139, 4, 'show_admin_bar_front', 'true'),
(140, 4, 'locale', ''),
(141, 4, 'dahu12_capabilities', 'a:1:{s:8:"customer";b:1;}'),
(142, 4, 'dahu12_user_level', '0'),
(143, 4, 'session_tokens', 'a:1:{s:64:"d73f9837d778c042c67d0aaa2407fc18679b3b6c2bdec35ba655413d99011262";a:4:{s:10:"expiration";i:1506525814;s:2:"ip";s:10:"172.17.0.5";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:5:"login";i:1505316214;}}'),
(145, 4, 'last_update', '1505316284'),
(146, 4, 'billing_first_name', 'Gabriela'),
(147, 4, 'billing_last_name', 'Candido'),
(148, 4, 'billing_address_1', 'Rua Doutor Karl Wilhelm Schinke'),
(149, 4, 'billing_city', 'Novo Hamburgo'),
(150, 4, 'billing_state', 'RS'),
(151, 4, 'billing_postcode', '93415-240'),
(152, 4, 'billing_country', 'BR'),
(153, 4, 'billing_email', 'gabriela@fuerzastudio.com'),
(154, 4, 'billing_phone', '51980227862'),
(155, 4, 'shipping_method', ''),
(156, 4, 'billing_cpf', '847.225.500-00'),
(157, 4, 'billing_number', '688'),
(158, 4, 'billing_neighborhood', 'Rondônia'),
(159, 4, 'billing_cellphone', '51980227862'),
(160, 4, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:2:{s:32:"ad61ab143223efbc24c7d2583be69251";a:9:{s:10:"product_id";i:74;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:45;s:13:"line_subtotal";d:45;s:8:"line_tax";d:0;s:17:"line_subtotal_tax";d:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"32bb90e8976aab5298d5da10fe66f21d";a:9:{s:10:"product_id";i:72;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:45;s:13:"line_subtotal";d:45;s:8:"line_tax";d:0;s:17:"line_subtotal_tax";d:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}') ;
INSERT INTO `dahu12_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(166, 1, 'manageedit-productcolumnshidden', 'a:1:{i:0;s:11:"product_tag";}'),
(168, 1, 'shipping_method', ''),
(169, 1, 'billing_cpf', '847.225.500-00'),
(170, 1, 'billing_number', '688'),
(171, 1, 'billing_neighborhood', 'Rondônia'),
(172, 1, 'billing_cellphone', '(51) 0822-7862'),
(173, 3, 'billing_first_name', 'Gustavo'),
(174, 3, 'billing_last_name', 'Reis'),
(176, 3, 'billing_address_1', 'Ramiro Barcelos'),
(178, 3, 'billing_address_2', 'conjunto 202'),
(180, 3, 'billing_city', 'Porto Alegre'),
(181, 3, 'billing_postcode', '90035-006'),
(182, 3, 'billing_country', 'BR'),
(183, 3, 'billing_state', 'RS'),
(184, 3, 'billing_phone', '5132514111'),
(186, 3, 'billing_email', 'gustavo@gustavoreis.com'),
(187, 3, 'shipping_first_name', ''),
(188, 3, 'shipping_last_name', ''),
(189, 3, 'shipping_company', ''),
(190, 3, 'shipping_address_1', ''),
(191, 3, 'shipping_number', ''),
(192, 3, 'shipping_address_2', ''),
(193, 3, 'shipping_neighborhood', ''),
(194, 3, 'shipping_city', ''),
(195, 3, 'shipping_postcode', ''),
(196, 3, 'shipping_country', ''),
(197, 3, 'shipping_state', ''),
(198, 3, 'last_update', '1513276916'),
(199, 3, 'session_tokens', 'a:1:{s:64:"eb66b89235744035cd5a1ee5157b7e173cca71a616b189905d941371fce2b255";a:4:{s:10:"expiration";i:1527796495;s:2:"ip";s:10:"172.17.0.7";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36";s:5:"login";i:1527623695;}}'),
(200, 3, 'dahu12_dashboard_quick_press_last_post_id', '105'),
(201, 3, 'community-events-location', 'a:1:{s:2:"ip";s:10:"172.17.0.0";}'),
(202, 3, 'closedpostboxes_product', 'a:0:{}'),
(203, 3, 'metaboxhidden_product', 'a:2:{i:0;s:10:"postcustom";i:1;s:7:"slugdiv";}'),
(204, 3, 'dahu12_user-settings', 'libraryContent=browse&editor=tinymce'),
(205, 3, 'dahu12_user-settings-time', '1513701327'),
(207, 3, 'shipping_method', ''),
(208, 3, 'billing_cpf', '692.992.770-87'),
(209, 3, 'billing_number', '1215'),
(210, 3, 'billing_neighborhood', 'Independência'),
(211, 3, 'billing_cellphone', '51999851335'),
(212, 3, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:1:{s:32:"89e58c11fc336afbc2f4e940021f23bb";a:10:{s:3:"key";s:32:"89e58c11fc336afbc2f4e940021f23bb";s:10:"product_id";i:86;s:12:"variation_id";i:91;s:9:"variation";a:1:{s:17:"attribute_tamanho";s:1:"P";}s:8:"quantity";i:1;s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:49.899999999999999;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:49.899999999999999;s:8:"line_tax";i:0;}}}'),
(213, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:1:{s:32:"f0f3a142d3c02098fc7368fd544082f7";a:10:{s:3:"key";s:32:"f0f3a142d3c02098fc7368fd544082f7";s:10:"product_id";i:86;s:12:"variation_id";i:90;s:9:"variation";a:1:{s:17:"attribute_tamanho";s:1:"M";}s:8:"quantity";i:2;s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:99.799999999999997;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:99.799999999999997;s:8:"line_tax";i:0;}}}'),
(214, 3, 'syntax_highlighting', 'true'),
(215, 3, 'dismissed_update_notice', '1'),
(216, 3, 'dismissed_store_notice_setting_moved_notice', '1'),
(217, 3, 'dismissed_template_files_notice', '1'),
(218, 3, 'dismissed_no_secure_connection_notice', '1'),
(219, 3, 'wc_last_active', '1527552000'),
(220, 1, 'wc_last_active', '1527552000'),
(221, 4, 'wc_last_active', '1527033600'),
(222, 2, 'wc_last_active', '1527033600'),
(226, 5, 'nickname', 'Mestre Zoio'),
(227, 5, 'first_name', 'Zoio'),
(228, 5, 'last_name', 'Silva'),
(229, 5, 'description', 'WRAAAAAAAAAAAAAAAAA!!!'),
(230, 5, 'rich_editing', 'true'),
(231, 5, 'syntax_highlighting', 'true'),
(232, 5, 'comment_shortcuts', 'false'),
(233, 5, 'admin_color', 'fresh'),
(234, 5, 'use_ssl', '0'),
(235, 5, 'show_admin_bar_front', 'true'),
(236, 5, 'locale', ''),
(237, 5, 'dahu12_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(238, 5, 'dahu12_user_level', '10'),
(239, 5, 'dismissed_wp_pointers', 'wp496_privacy'),
(240, 5, 'billing_first_name', 'Rafael'),
(241, 5, 'billing_last_name', 'Zoio'),
(242, 5, 'billing_cpf', ''),
(243, 5, 'billing_company', ''),
(244, 5, 'billing_cnpj', ''),
(245, 5, 'billing_address_1', ''),
(246, 5, 'billing_number', ''),
(247, 5, 'billing_address_2', ''),
(248, 5, 'billing_neighborhood', ''),
(249, 5, 'billing_city', ''),
(250, 5, 'billing_postcode', ''),
(251, 5, 'billing_country', ''),
(252, 5, 'billing_state', ''),
(253, 5, 'billing_phone', ''),
(254, 5, 'billing_cellphone', ''),
(255, 5, 'billing_email', 'zoiozoiozoio@gmail.com'),
(256, 5, 'shipping_first_name', ''),
(257, 5, 'shipping_last_name', ''),
(258, 5, 'shipping_company', ''),
(259, 5, 'shipping_address_1', ''),
(260, 5, 'shipping_number', ''),
(261, 5, 'shipping_address_2', ''),
(262, 5, 'shipping_neighborhood', ''),
(263, 5, 'shipping_city', ''),
(264, 5, 'shipping_postcode', ''),
(265, 5, 'shipping_country', ''),
(266, 5, 'shipping_state', ''),
(267, 5, 'last_update', '1527624666'),
(268, 6, 'nickname', 'Heitor Althmann'),
(269, 6, 'first_name', 'Heitor'),
(270, 6, 'last_name', 'Althmann'),
(271, 6, 'description', ''),
(272, 6, 'rich_editing', 'true'),
(273, 6, 'syntax_highlighting', 'true'),
(274, 6, 'comment_shortcuts', 'false') ;
INSERT INTO `dahu12_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(275, 6, 'admin_color', 'fresh'),
(276, 6, 'use_ssl', '0'),
(277, 6, 'show_admin_bar_front', 'true'),
(278, 6, 'locale', ''),
(279, 6, 'dahu12_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(280, 6, 'dahu12_user_level', '10'),
(281, 6, 'dismissed_wp_pointers', 'wp496_privacy'),
(282, 6, 'session_tokens', 'a:1:{s:64:"cf8eb098c64ea2f647fd91ebe698929c4f2fed7ec6d9b8900cd0256a5672c294";a:4:{s:10:"expiration";i:1528833546;s:2:"ip";s:10:"172.17.0.7";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36";s:5:"login";i:1527623946;}}'),
(283, 6, 'wc_last_active', '1527552000'),
(284, 6, 'dahu12_dashboard_quick_press_last_post_id', '106'),
(285, 6, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(286, 6, 'community-events-location', 'a:1:{s:2:"ip";s:10:"172.17.0.0";}'),
(287, 5, 'session_tokens', 'a:1:{s:64:"9e2877c53e9ebf39c042813b73356376f8fbf6fcc46a37b44b9262e5f5092a17";a:4:{s:10:"expiration";i:1528833561;s:2:"ip";s:10:"172.17.0.7";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36";s:5:"login";i:1527623961;}}'),
(288, 5, 'wc_last_active', '1527552000'),
(289, 5, 'dahu12_dashboard_quick_press_last_post_id', '107'),
(290, 5, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(291, 5, 'community-events-location', 'a:1:{s:2:"ip";s:10:"172.17.0.0";}') ;

#
# Fim do conteúdo da tabela `dahu12_usermeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_users` existente
#

DROP TABLE IF EXISTS `dahu12_users`;


#
# Estrutura da tabela `dahu12_users`
#

CREATE TABLE `dahu12_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_users`
#
INSERT INTO `dahu12_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'fuerzastudio', '$P$B2gDDmXayGU6XyTrorSog6J5kqRXyn0', 'fuerzastudio', 'diego@fuerzastudio.com.br', '', '2017-08-20 17:08:06', '', 0, 'fuerzastudio'),
(2, 'product-generator', '$P$BmBGLnOM9cvWUTMEz9w6FV2WAjBzP.0', 'product-generator', '', '', '2017-08-20 19:17:10', '', 0, 'product-generator'),
(3, 'espartato-tester', '$P$BG0o8rWfCqH8dZBvqZ5PtpaMXmzobo0', 'espartato-tester', 'gustavo@gustavoreis.com', '', '2017-08-25 21:00:32', '1513184567:$P$BErzBPBUoto6TKYRPteYlSesZ.ay7/1', 0, 'espartato-tester'),
(4, 'gabriela', '$P$B7NZ44FQm9B5d/AYK5F99A0vWC6tjB1', 'gabriela', 'gabriela@fuerzastudio.com', '', '2017-09-13 15:23:33', '', 0, 'gabriela'),
(5, 'Rafael Zoio', '$P$BISJwROgYRHiDs0TorcMb8TZbunahV.', 'rafael-zoio', 'zoiozoiozoio@gmail.com', '', '2018-05-27 03:01:10', '1527390070:$P$BDNcOduUveYNrqgeQIf0qK8EGoKNzI1', 0, 'Mestre Zoio'),
(6, 'Heitor Althmann', '$P$Bzg8K10dgZsm9QKhDP2pb1oj.iPgMU0', 'heitor-althmann', 'heitoralthmann@gmail.com', '', '2018-05-29 19:58:42', '1527623922:$P$BcJb5eqXWFWRyNiF/CWhMGYTqjzXSV0', 0, 'Heitor Althmann') ;

#
# Fim do conteúdo da tabela `dahu12_users`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_wc_download_log` existente
#

DROP TABLE IF EXISTS `dahu12_wc_download_log`;


#
# Estrutura da tabela `dahu12_wc_download_log`
#

CREATE TABLE `dahu12_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `dahu12_wc_download_log`
#

#
# Fim do conteúdo da tabela `dahu12_wc_download_log`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_wc_webhooks` existente
#

DROP TABLE IF EXISTS `dahu12_wc_webhooks`;


#
# Estrutura da tabela `dahu12_wc_webhooks`
#

CREATE TABLE `dahu12_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `dahu12_wc_webhooks`
#

#
# Fim do conteúdo da tabela `dahu12_wc_webhooks`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_woocommerce_api_keys` existente
#

DROP TABLE IF EXISTS `dahu12_woocommerce_api_keys`;


#
# Estrutura da tabela `dahu12_woocommerce_api_keys`
#

CREATE TABLE `dahu12_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_woocommerce_api_keys`
#

#
# Fim do conteúdo da tabela `dahu12_woocommerce_api_keys`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_woocommerce_attribute_taxonomies` existente
#

DROP TABLE IF EXISTS `dahu12_woocommerce_attribute_taxonomies`;


#
# Estrutura da tabela `dahu12_woocommerce_attribute_taxonomies`
#

CREATE TABLE `dahu12_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_woocommerce_attribute_taxonomies`
#

#
# Fim do conteúdo da tabela `dahu12_woocommerce_attribute_taxonomies`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_woocommerce_downloadable_product_permissions` existente
#

DROP TABLE IF EXISTS `dahu12_woocommerce_downloadable_product_permissions`;


#
# Estrutura da tabela `dahu12_woocommerce_downloadable_product_permissions`
#

CREATE TABLE `dahu12_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_woocommerce_downloadable_product_permissions`
#

#
# Fim do conteúdo da tabela `dahu12_woocommerce_downloadable_product_permissions`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_woocommerce_log` existente
#

DROP TABLE IF EXISTS `dahu12_woocommerce_log`;


#
# Estrutura da tabela `dahu12_woocommerce_log`
#

CREATE TABLE `dahu12_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_woocommerce_log`
#

#
# Fim do conteúdo da tabela `dahu12_woocommerce_log`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_woocommerce_order_itemmeta` existente
#

DROP TABLE IF EXISTS `dahu12_woocommerce_order_itemmeta`;


#
# Estrutura da tabela `dahu12_woocommerce_order_itemmeta`
#

CREATE TABLE `dahu12_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_woocommerce_order_itemmeta`
#
INSERT INTO `dahu12_woocommerce_order_itemmeta` ( `meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(154, 18, '_product_id', '86'),
(155, 18, '_variation_id', '90'),
(156, 18, '_qty', '1'),
(157, 18, '_tax_class', ''),
(158, 18, '_line_subtotal', '49.9'),
(159, 18, '_line_subtotal_tax', '0'),
(160, 18, '_line_total', '49.9'),
(161, 18, '_line_tax', '0'),
(162, 18, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(163, 18, 'tamanho', 'M') ;

#
# Fim do conteúdo da tabela `dahu12_woocommerce_order_itemmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_woocommerce_order_items` existente
#

DROP TABLE IF EXISTS `dahu12_woocommerce_order_items`;


#
# Estrutura da tabela `dahu12_woocommerce_order_items`
#

CREATE TABLE `dahu12_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_woocommerce_order_items`
#
INSERT INTO `dahu12_woocommerce_order_items` ( `order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(18, 'Camiseta feminina “vintage” – Espartana - M', 'line_item', 92) ;

#
# Fim do conteúdo da tabela `dahu12_woocommerce_order_items`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_woocommerce_payment_tokenmeta` existente
#

DROP TABLE IF EXISTS `dahu12_woocommerce_payment_tokenmeta`;


#
# Estrutura da tabela `dahu12_woocommerce_payment_tokenmeta`
#

CREATE TABLE `dahu12_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_woocommerce_payment_tokenmeta`
#

#
# Fim do conteúdo da tabela `dahu12_woocommerce_payment_tokenmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_woocommerce_payment_tokens` existente
#

DROP TABLE IF EXISTS `dahu12_woocommerce_payment_tokens`;


#
# Estrutura da tabela `dahu12_woocommerce_payment_tokens`
#

CREATE TABLE `dahu12_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_woocommerce_payment_tokens`
#

#
# Fim do conteúdo da tabela `dahu12_woocommerce_payment_tokens`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_woocommerce_sessions` existente
#

DROP TABLE IF EXISTS `dahu12_woocommerce_sessions`;


#
# Estrutura da tabela `dahu12_woocommerce_sessions`
#

CREATE TABLE `dahu12_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_woocommerce_sessions`
#
INSERT INTO `dahu12_woocommerce_sessions` ( `session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(26, '1', 'a:11:{s:4:"cart";s:420:"a:1:{s:32:"f0f3a142d3c02098fc7368fd544082f7";a:10:{s:3:"key";s:32:"f0f3a142d3c02098fc7368fd544082f7";s:10:"product_id";i:86;s:12:"variation_id";i:90;s:9:"variation";a:1:{s:17:"attribute_tamanho";s:1:"M";}s:8:"quantity";i:2;s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:99.799999999999997;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:99.799999999999997;s:8:"line_tax";i:0;}}";s:11:"cart_totals";s:405:"a:15:{s:8:"subtotal";s:5:"99.80";s:12:"subtotal_tax";d:0;s:14:"shipping_total";s:4:"0.00";s:12:"shipping_tax";d:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";d:0;s:12:"discount_tax";d:0;s:19:"cart_contents_total";s:5:"99.80";s:17:"cart_contents_tax";d:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";s:4:"0.00";s:7:"fee_tax";d:0;s:9:"fee_taxes";a:0:{}s:5:"total";s:5:"99.80";s:9:"total_tax";d:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:22:"shipping_for_package_0";s:92:"a:2:{s:12:"package_hash";s:40:"wc_ship_ce853244fcfbd66d24757ff8aa298714";s:5:"rates";a:0:{}}";s:25:"previous_shipping_methods";s:16:"a:1:{i:0;a:0:{}}";s:23:"chosen_shipping_methods";s:14:"a:1:{i:0;b:0;}";s:22:"shipping_method_counts";s:14:"a:1:{i:0;i:0;}";s:8:"customer";s:864:"a:26:{s:2:"id";s:1:"1";s:13:"date_modified";s:25:"2017-11-05T13:44:00-02:00";s:8:"postcode";s:9:"93415-240";s:4:"city";s:13:"Novo Hamburgo";s:9:"address_1";s:31:"Rua Doutor Karl Wilhelm Schinke";s:7:"address";s:31:"Rua Doutor Karl Wilhelm Schinke";s:9:"address_2";s:0:"";s:5:"state";s:2:"RS";s:7:"country";s:2:"BR";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"RS";s:16:"shipping_country";s:2:"BR";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:8:"Gabriela";s:9:"last_name";s:7:"Candido";s:7:"company";s:0:"";s:5:"phone";s:15:"(51) 98022-7862";s:5:"email";s:28:"gabriela@fuerzastudio.com.br";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1527798347),
(22, '3', 'a:11:{s:4:"cart";s:420:"a:1:{s:32:"89e58c11fc336afbc2f4e940021f23bb";a:10:{s:3:"key";s:32:"89e58c11fc336afbc2f4e940021f23bb";s:10:"product_id";i:86;s:12:"variation_id";i:91;s:9:"variation";a:1:{s:17:"attribute_tamanho";s:1:"P";}s:8:"quantity";i:1;s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:49.899999999999999;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:49.899999999999999;s:8:"line_tax";i:0;}}";s:11:"cart_totals";s:405:"a:15:{s:8:"subtotal";s:5:"49.90";s:12:"subtotal_tax";d:0;s:14:"shipping_total";s:4:"0.00";s:12:"shipping_tax";d:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";d:0;s:12:"discount_tax";d:0;s:19:"cart_contents_total";s:5:"49.90";s:17:"cart_contents_tax";d:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";s:4:"0.00";s:7:"fee_tax";d:0;s:9:"fee_taxes";a:0:{}s:5:"total";s:5:"49.90";s:9:"total_tax";d:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:22:"shipping_for_package_0";s:92:"a:2:{s:12:"package_hash";s:40:"wc_ship_c8538a66cc16eb6c90a295ea0aa7dba2";s:5:"rates";a:0:{}}";s:25:"previous_shipping_methods";s:16:"a:1:{i:0;a:0:{}}";s:23:"chosen_shipping_methods";s:14:"a:1:{i:0;b:0;}";s:22:"shipping_method_counts";s:14:"a:1:{i:0;i:0;}";s:8:"customer";s:830:"a:26:{s:2:"id";s:1:"3";s:13:"date_modified";s:25:"2017-12-14T16:41:56-02:00";s:8:"postcode";s:9:"90035-006";s:4:"city";s:12:"Porto Alegre";s:9:"address_1";s:15:"Ramiro Barcelos";s:7:"address";s:15:"Ramiro Barcelos";s:9:"address_2";s:12:"conjunto 202";s:5:"state";s:2:"RS";s:7:"country";s:2:"BR";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"RS";s:16:"shipping_country";s:2:"BR";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:7:"Gustavo";s:9:"last_name";s:4:"Reis";s:7:"company";s:0:"";s:5:"phone";s:10:"5132514111";s:5:"email";s:23:"gustavo@gustavoreis.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1527796498),
(25, '5', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:750:"a:26:{s:2:"id";s:1:"5";s:13:"date_modified";s:25:"2018-05-29T17:11:06-03:00";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:2:"RS";s:7:"country";s:2:"BR";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"RS";s:16:"shipping_country";s:2:"BR";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:6:"Rafael";s:9:"last_name";s:4:"Zoio";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:22:"zoiozoiozoio@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1527797528),
(23, '6', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:716:"a:26:{s:2:"id";s:1:"6";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:2:"RS";s:7:"country";s:2:"BR";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"RS";s:16:"shipping_country";s:2:"BR";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:24:"heitoralthmann@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1527796749) ;

#
# Fim do conteúdo da tabela `dahu12_woocommerce_sessions`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_woocommerce_shipping_zone_locations` existente
#

DROP TABLE IF EXISTS `dahu12_woocommerce_shipping_zone_locations`;


#
# Estrutura da tabela `dahu12_woocommerce_shipping_zone_locations`
#

CREATE TABLE `dahu12_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_woocommerce_shipping_zone_locations`
#
INSERT INTO `dahu12_woocommerce_shipping_zone_locations` ( `location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'BR', 'country') ;

#
# Fim do conteúdo da tabela `dahu12_woocommerce_shipping_zone_locations`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_woocommerce_shipping_zone_methods` existente
#

DROP TABLE IF EXISTS `dahu12_woocommerce_shipping_zone_methods`;


#
# Estrutura da tabela `dahu12_woocommerce_shipping_zone_methods`
#

CREATE TABLE `dahu12_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_woocommerce_shipping_zone_methods`
#
INSERT INTO `dahu12_woocommerce_shipping_zone_methods` ( `zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 4, 'correios-pac', 2, 1),
(1, 5, 'correios-sedex', 3, 1) ;

#
# Fim do conteúdo da tabela `dahu12_woocommerce_shipping_zone_methods`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_woocommerce_shipping_zones` existente
#

DROP TABLE IF EXISTS `dahu12_woocommerce_shipping_zones`;


#
# Estrutura da tabela `dahu12_woocommerce_shipping_zones`
#

CREATE TABLE `dahu12_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_woocommerce_shipping_zones`
#
INSERT INTO `dahu12_woocommerce_shipping_zones` ( `zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Brasil', 0) ;

#
# Fim do conteúdo da tabela `dahu12_woocommerce_shipping_zones`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_woocommerce_tax_rate_locations` existente
#

DROP TABLE IF EXISTS `dahu12_woocommerce_tax_rate_locations`;


#
# Estrutura da tabela `dahu12_woocommerce_tax_rate_locations`
#

CREATE TABLE `dahu12_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_woocommerce_tax_rate_locations`
#

#
# Fim do conteúdo da tabela `dahu12_woocommerce_tax_rate_locations`
# --------------------------------------------------------



#
# Apagar qualquer tabela `dahu12_woocommerce_tax_rates` existente
#

DROP TABLE IF EXISTS `dahu12_woocommerce_tax_rates`;


#
# Estrutura da tabela `dahu12_woocommerce_tax_rates`
#

CREATE TABLE `dahu12_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `dahu12_woocommerce_tax_rates`
#

#
# Fim do conteúdo da tabela `dahu12_woocommerce_tax_rates`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

ALTER TABLE `dahu12_wc_download_log`
  ADD CONSTRAINT `dahu12_wc_download_log_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `dahu12_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE,  ADD CONSTRAINT `dahu12_wc_download_log_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `dahu12_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

