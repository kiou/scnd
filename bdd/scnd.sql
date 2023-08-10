-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 10 août 2023 à 11:18
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `scnd`
--

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

DROP TABLE IF EXISTS `activite`;
CREATE TABLE IF NOT EXISTS `activite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `activite`
--

INSERT INTO `activite` (`id`, `created`, `changed`, `title`, `slug`, `site`, `image`, `contenu`, `is_active`) VALUES
(1, '2023-08-08 15:04:29', NULL, 'Le sport', 'le-sport', 'college', 'braden-collum-9hi8ujmsdza-unsplash-1691507069.jpg', '<p>ifend. Sed ac nulla mi. Cras vitae faucibus nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus dapibus nulla vitae feugiat iaculis. Vestibulum lobortis non tortor id ultricies. Etiam accumsan porta velit. Nam blandit finibus sem vel aliquet. Duis eu semper nulla, eget pretium eros.</p>\r\n\r\n<p>Quisque est lectus, lacinia quis velit et, vehicula dignissim magna. Quisque non massa vitae erat rutrum aliquet. Aliquam non ante volutpat, sagittis odio tincidunt, imperdiet neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam nec purus suscipit, mattis massa ut, tempor quam. Praesent euismod ullamcorper auctor. Proin nec posuere tellus, in lobortis est. Morbi sed varius ante. Aliquam q</p>', 1),
(2, '2023-08-08 15:05:09', NULL, 'Science +', 'science', 'college', 'louis-reed-pwckf7l4-no-unsplash-1691507109.jpg', '<p>ifend. Sed ac nulla mi. Cras vitae faucibus nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus dapibus nulla vitae feugiat iaculis. Vestibulum lobortis non tortor id ultricies. Etiam accumsan porta velit. Nam blandit finibus sem vel aliquet. Duis eu semper nulla, eget pretium eros.</p>\r\n\r\n<p>Quisque est lectus, lacinia quis velit et, vehicula dignissim magna. Quisque non massa vitae erat rutrum aliquet. Aliquam non ante volutpat, sagittis odio tincidunt, imperdiet neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam nec purus suscipit, mattis massa ut, tempor quam. Praesent euismod ullamcorper auctor. Proin nec posuere tellus, in lobortis est. Morbi sed varius ante. Aliquam q</p>', 1),
(3, '2023-08-08 15:05:29', '2023-08-08 16:25:12', 'Silence, le lis !', 'silence-le-lis', 'college', 'thought-catalog-mmwqrsjz4lw-unsplash-1691507129.jpg', '<p>ifend. Sed ac nulla mi. Cras vitae faucibus nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus dapibus nulla vitae feugiat iaculis. Vestibulum lobortis non tortor id ultricies. Etiam accumsan porta velit. Nam blandit finibus sem vel aliquet. Duis eu semper nulla, eget pretium eros.</p>\r\n\r\n<p>Quisque est lectus, lacinia quis velit et, vehicula dignissim magna. Quisque non massa vitae erat rutrum aliquet. Aliquam non ante volutpat, sagittis odio tincidunt, imperdiet neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam nec purus suscipit, mattis massa ut, tempor quam. Praesent euismod ullamcorper auctor. Proin nec posuere tellus, in lobortis est. Morbi sed varius ante. Aliquam q</p>', 1),
(4, '2023-08-09 09:31:33', NULL, 'Le sport', 'le-sport', 'lycee', 'braden-collum-9hi8ujmsdza-unsplash-1691507069-1691573493.jpg', '<p>lor sit amet, consectetur adipiscing elit. Phasellus at massa eu tellus vestibulum pulvinar sed sed ligula. Maecenas tempor sodales nunc, dictum tincidunt dui vestibulum at. Vestibulum a nisl pharetra, aliquam mi vulputate, dignissim sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam lacinia, nulla et dictum molestie, massa urna aliquam magna, at aliquet erat lectus in purus. Donec euismod fermentum lacus sed blandit. Mauris a pellentesque augue, in scelerisque enim. Maecenas lobortis mauris id aliquam laoreet. In viverra turpis a risus luctus faucibus. Maecenas eu risus ut elit blandit dapibus eget in sapien. Pellentesque volutpat, augue ac hendrerit viverra, mauris tortor consectetur mauris, ac viverra nisl nulla in purus. Pellentesque vel tempus tortor. Suspendisse quis venenatis diam.</p>\r\n\r\n<p>Aenean tempus risus id orci mollis condimentum. Mauris facilisis, massa eu congue mattis, lectus orci sagittis leo, in feugiat ante ante ultrices dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, velit vel sagittis posuere, ex nisi euismod nunc, non vulputate ex tellus vitae orci. Quisque venenatis magna eu libero vulputate tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ae</p>', 1),
(5, '2023-08-09 09:31:55', NULL, 'Science +', 'science', 'lycee', 'louis-reed-pwckf7l4-no-unsplash-1691507109-1691573515.jpg', '<p>lor sit amet, consectetur adipiscing elit. Phasellus at massa eu tellus vestibulum pulvinar sed sed ligula. Maecenas tempor sodales nunc, dictum tincidunt dui vestibulum at. Vestibulum a nisl pharetra, aliquam mi vulputate, dignissim sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam lacinia, nulla et dictum molestie, massa urna aliquam magna, at aliquet erat lectus in purus. Donec euismod fermentum lacus sed blandit. Mauris a pellentesque augue, in scelerisque enim. Maecenas lobortis mauris id aliquam laoreet. In viverra turpis a risus luctus faucibus. Maecenas eu risus ut elit blandit dapibus eget in sapien. Pellentesque volutpat, augue ac hendrerit viverra, mauris tortor consectetur mauris, ac viverra nisl nulla in purus. Pellentesque vel tempus tortor. Suspendisse quis venenatis diam.</p>\r\n\r\n<p>Aenean tempus risus id orci mollis condimentum. Mauris facilisis, massa eu congue mattis, lectus orci sagittis leo, in feugiat ante ante ultrices dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, velit vel sagittis posuere, ex nisi euismod nunc, non vulputate ex tellus vitae orci. Quisque venenatis magna eu libero vulputate tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ae</p>', 1),
(6, '2023-08-09 09:32:18', '2023-08-09 16:51:39', 'Silence, je lis !', 'silence-je-lis', 'lycee', 'susan-q-yin-2jivbogleho-unsplash-1691573538.jpg', '<p>lor sit amet, consectetur adipiscing elit. Phasellus at massa eu tellus vestibulum pulvinar sed sed ligula. Maecenas tempor sodales nunc, dictum tincidunt dui vestibulum at. Vestibulum a nisl pharetra, aliquam mi vulputate, dignissim sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam lacinia, nulla et dictum molestie, massa urna aliquam magna, at aliquet erat lectus in purus. Donec euismod fermentum lacus sed blandit. Mauris a pellentesque augue, in scelerisque enim. Maecenas lobortis mauris id aliquam laoreet. In viverra turpis a risus luctus faucibus. Maecenas eu risus ut elit blandit dapibus eget in sapien. Pellentesque volutpat, augue ac hendrerit viverra, mauris tortor consectetur mauris, ac viverra nisl nulla in purus. Pellentesque vel tempus tortor. Suspendisse quis venenatis diam.</p>\r\n\r\n<p>Aenean tempus risus id orci mollis condimentum. Mauris facilisis, massa eu congue mattis, lectus orci sagittis leo, in feugiat ante ante ultrices dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, velit vel sagittis posuere, ex nisi euismod nunc, non vulputate ex tellus vitae orci. Quisque venenatis magna eu libero vulputate tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ae</p>', 1);

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

DROP TABLE IF EXISTS `actualite`;
CREATE TABLE IF NOT EXISTS `actualite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actualite`
--

INSERT INTO `actualite` (`id`, `created`, `changed`, `title`, `slug`, `site`, `image`, `resume`, `contenu`, `is_active`) VALUES
(1, '2023-07-27 11:16:56', '2023-08-08 21:06:38', 'En partenariat avec la Ville de Privas, les élèves de 1ère ST2S', 'venez-tous-au-village-sante', 'college', 'black-panther-superhero-movie-7aqleqoyjtl9mift-1690456747-1690536351.jpg', 'En partenariat avec la Ville de Privas, les élèves de 1ère ST2S vont participer au projet mené par \"Le Bus du Coeur des Femmes\" dans le cadre du Village Santé les Mercredi 10, Jeudi 11 et Vendredi 12 Mai. Nos élèves seront de réels acteurs au sein du projet et auront plusieurs missions :- accueil et orientation du public - enquête à l’aide d’un questionnaire - prise de contacts avec des professionnels d’autres stands santé.', '<p>En partenariat avec la Ville de Privas, les &eacute;l&egrave;ves de 1&egrave;re ST2S vont participer au projet men&eacute; par &quot;Le Bus du Coeur des Femmes&quot; dans le cadre du Village Sant&eacute; les Mercredi 10, Jeudi 11 et Vendredi 12 Mai. Nos &eacute;l&egrave;ves seront de r&eacute;els acteurs au sein du projet et auront plusieurs missions :- accueil et orientation du public - enqu&ecirc;te &agrave; l&rsquo;aide d&rsquo;un questionnaire - prise de contacts avec des professionnels d&rsquo;autres stands sant&eacute;.</p>', 1),
(2, '2023-07-27 11:20:59', '2023-08-08 17:27:31', 'Nunc ornare luctus neque in ultrices', 'nunc-ornare-luctus-neque-in-ultrices', 'college', 'balloon-house-up-movie-d4gd6zya63mh6a3m-1690456859-1690536344.jpg', 'porta at enim vitae, placerat lobortis eros. Fusce nec enim quis diam venenatis blandit. Vivamus scelerisque consectetur dictum. Maecenas imperdiet nibh id feugiat vehicula. Etiam rhoncus tortor in justo venenatis, ut tincidunt arcu maximus. Nullam magna nisl, sodales vitae cursus id, bibendum quis massa. Maecenas nunc ex, sollicitudin et enim sit amet, tristique eleifend augue. Phasellus vitae efficitur tortor, id m', '<p>porta at enim vitae, placerat lobortis eros. Fusce nec enim quis diam venenatis blandit. Vivamus scelerisque consectetur dictum. Maecenas imperdiet nibh id feugiat vehicula. Etiam rhoncus tortor in justo venenatis, ut tincidunt arcu maximus. Nullam magna nisl, sodales vitae cursus id, bibendum quis massa. Maecenas nunc ex, sollicitudin et enim sit amet, tristique eleifend augue. Phasellus vitae efficitur tortor, id m</p>', 1),
(3, '2023-07-27 11:21:17', '2023-08-08 21:02:55', 'Maecenas pulvinar lacus nulla, ac vehicula odio cursus porta pulvinar lacus nulla, ac vehicula odio cursus porta', 'maecenas-pulvinar-lacus-nulla-ac-vehicula-odio-cursus-porta', 'lyceepro', 'rey-star-wars-movie-xwm841g3q9cgz575-1690456877-1690536250.jpg', 'as ornare ut diam ac condimentum. Proin eu quam ac lectus mattis elementum ut non tellus. Morbi scelerisque hendrerit sapien. Etiam rutrum vulputate ultricies. Maecenas pulvinar lacus nulla, ac vehicula odio cursus porta. Nunc sit amet volutpat metus. Pellentesque non turpis cursus, fringilla mi tincidunt, vulputate ante.\r\n\r\nSed non tempor elit, at commodo ante. Quisque vestibulum consequat condimentum. Integer quis rhoncus ex. Cras rhoncus justo urna, nec mattis est scelerisque auctor. Praesent arcu ipsum, tincidunt sed scelerisque in, fermentum et odio. Aliquam neque eros, pellentesque quis accumsan ut, cursus no', '<p>as ornare ut diam ac condimentum. Proin eu quam ac lectus mattis elementum ut non tellus. Morbi scelerisque hendrerit sapien. Etiam rutrum vulputate ultricies. Maecenas pulvinar lacus nulla, ac vehicula odio cursus porta. Nunc sit amet volutpat metus. Pellentesque non turpis cursus, fringilla mi tincidunt, vulputate ante.</p>\r\n\r\n<p>Sed non tempor elit, at commodo ante. Quisque vestibulum consequat condimentum. Integer quis rhoncus ex. Cras rhoncus justo urna, nec mattis est scelerisque auctor. Praesent arcu ipsum, tincidunt sed scelerisque in, fermentum et odio. Aliquam neque eros, pellentesque quis accumsan ut, cursus no</p>', 1),
(4, '2023-07-27 11:21:36', '2023-08-08 21:09:02', 'fermentum odio vitae dolor bibendum tincidunt.', 'fermentum-odio-vitae-dolor-bibendum-tincidunt', 'formation', 'stormtrooper-star-wars-movie-8yag4qs4o60akten-1690456896-1690536196.jpg', 'as ornare ut diam ac condimentum. Proin eu quam ac lectus mattis elementum ut non tellus. Morbi scelerisque hendrerit sapien. Etiam rutrum vulputate ultricies. Maecenas pulvinar lacus nulla, ac vehicula odio cursus porta. Nunc sit amet volutpat metus. Pellentesque non turpis cursus, fringilla mi tincidunt, vulputate ante.\r\n\r\nSed non tempor elit, at commodo ante. Quisque vestibulum consequat condimentum. Integer quis rhoncus ex. Cras rhoncus justo urna, nec mattis est scelerisque auctor. Praesent arcu ipsum, tincidunt sed scelerisque in, fermentum et odio. Aliquam neque eros, pellentesque quis accumsan ut, cursus no', '<p>t ligula et ante tincidunt tincidunt. Fusce consequat massa in eros dapibus gravida. In hac habitasse platea dictumst. Maecenas ornare ut diam ac condimentum. Proin eu quam ac lectus mattis elementum ut non tellus. Morbi scelerisque hendrerit sapien. Etiam rutrum vulpu</p>', 1),
(5, '2023-08-08 21:03:56', '2023-08-08 21:07:15', 'Aliquam tincidunt blandit vulputate. P', 'aliquam-tincidunt-blandit-vulputate-p', 'college', 'john-wick-hotline-miami-tg-1920x1080-1691528636.jpg', 'm, vitae finibus diam risus vel orci. Donec felis ligula, aliquet vitae fringilla viverra, molestie eget purus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin eu diam in purus placerat pretium. Vivamus varius erat erat, cursus tempus orci aliquam a. Nam sed cursus metus.', '<p>m, vitae finibus diam risus vel orci. Donec felis ligula, aliquet vitae fringilla viverra, molestie eget purus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin eu diam in purus placerat pretium. Vivamus varius erat erat, cursus tempus orci aliquam a. Nam sed cursus metus.</p>\r\n\r\n<p>Sed tincidunt eros at neque pulvinar ultrices sed eu orci. Sed iaculis eleifend turpis, vel commodo orci gravida ac. Morbi nunc risus, porttitor quis sem eget, pulvinar aliquet turpis. Ut sollicitudin mi vel orci gravida luctus. Morbi lobortis rutrum justo sit amet pretium. Curabitur ullamcorper metus tincidunt risus euismod facilisis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam tincidunt blandit vulputate. Praesent tempus non ante vel cursus.</p>\r\n\r\n<p>Curabitur iaculis, leo quis congue malesuada, dolor ante consectetur tortor, non molestie orci mauris at magna. Ut non elit risus. Sed fringilla ligula suscipit, tempus justo nec, vestibulum lorem. Nullam posuere ornare erat, sed pellentesque ante sagittis at. Phasellus egestas ipsum pretium neque consequat, tempus ull</p>', 1),
(6, '2023-08-08 21:04:38', '2023-08-08 21:08:36', 'Proin porta mauris mi, ut auctor sem tincidunt et. Donec in mi eu lorem convallis lao', 'agna-vel-vestibulum-ex-ante-vitae-mauris', 'college', 'joker-folie-a-deux-2024-4k-8s-1920x1080-1691528678.jpg', 'a id nibh auctor eleifend. Vivamus semper odio in massa tristique rhoncus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce euismod diam eros, iaculis sagittis tellus mollis non. Nulla facilisi. Nunc eget aliquet sem, pretium rhoncus purus. Sed tempor diam congue tortor lobortis tempor. Proin fermentum, dui sit amet rhoncus dapibus, ante ex commodo lacus, vitae ultrices magna tortor id elit. Praesent et risus at arcu fringilla volutpat. Proin porta mauris mi, ut auctor sem tincidunt et. Donec in mi eu lorem convallis lao', '<p>is in faucibus orci luctus et ultrices posuere cubilia curae; Vivamus ut eleifend leo. Etiam vulputate, massa eget faucibus luctus, mi erat rutr</p>', 1),
(7, '2023-08-08 21:05:12', '2023-08-08 21:05:44', 'Sed vestibulum congue orci, at euismod eros lacinia non.', 'sed-vestibulum-congue-orci-at-euismod-eros-lacinia-non', 'lycee', 'scarlet-spiderman-5k-cp-1920x1080-1691528712.jpg', 'a id nibh auctor eleifend. Vivamus semper odio in massa tristique rhoncus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce euismod diam eros, iaculis sagittis tellus mollis non. Nulla facilisi. Nunc eget aliquet sem, pretium rhoncus purus. Sed tempor diam congue tortor lobortis tempor. Proin fermentum, dui sit amet rhoncus dapibus, ante ex commodo lacus, vitae ultrices magna tortor id elit. Praesent et risus at arcu fringilla volutpat. Proin porta mauris mi, ut auctor sem tincidunt et. Donec in mi eu lorem convallis lao', '<p>a id nibh auctor eleifend. Vivamus semper odio in massa tristique rhoncus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce euismod diam eros, iaculis sagittis tellus mollis non. Nulla facilisi. Nunc eget aliquet sem, pretium rhoncus purus. Sed tempor diam congue tortor lobortis tempor. Proin fermentum, dui sit amet rhoncus dapibus, ante ex commodo lacus, vitae ultrices magna tortor id elit. Praesent et risus at arcu fringilla volutpat. Proin porta mauris mi, ut auctor sem tincidunt et. Donec in mi eu lorem convallis lao</p>', 1);

-- --------------------------------------------------------

--
-- Structure de la table `block`
--

DROP TABLE IF EXISTS `block`;
CREATE TABLE IF NOT EXISTS `block` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230709143518', '2023-07-09 14:35:25', 71),
('DoctrineMigrations\\Version20230709145643', '2023-07-09 14:56:49', 25),
('DoctrineMigrations\\Version20230709151823', '2023-07-09 15:18:29', 14),
('DoctrineMigrations\\Version20230709152530', '2023-07-09 15:25:35', 42),
('DoctrineMigrations\\Version20230715140335', '2023-07-15 14:03:47', 43),
('DoctrineMigrations\\Version20230715141252', '2023-07-15 14:12:56', 13),
('DoctrineMigrations\\Version20230716122400', '2023-07-16 12:24:03', 37),
('DoctrineMigrations\\Version20230716211542', '2023-07-16 21:15:46', 21),
('DoctrineMigrations\\Version20230725122117', '2023-07-25 12:21:22', 40),
('DoctrineMigrations\\Version20230725122938', '2023-07-25 12:29:41', 16),
('DoctrineMigrations\\Version20230726163856', '2023-07-26 16:39:02', 44),
('DoctrineMigrations\\Version20230727104055', '2023-07-27 10:41:00', 39),
('DoctrineMigrations\\Version20230803175024', '2023-08-03 17:50:37', 25),
('DoctrineMigrations\\Version20230806180412', '2023-08-06 18:04:19', 34),
('DoctrineMigrations\\Version20230806181110', '2023-08-06 18:11:14', 20),
('DoctrineMigrations\\Version20230806214256', '2023-08-06 21:43:14', 18),
('DoctrineMigrations\\Version20230806220401', '2023-08-06 22:04:07', 13),
('DoctrineMigrations\\Version20230806221900', '2023-08-06 22:19:03', 12),
('DoctrineMigrations\\Version20230807200433', '2023-08-07 20:04:38', 45),
('DoctrineMigrations\\Version20230808144755', '2023-08-08 14:47:59', 19),
('DoctrineMigrations\\Version20230809164055', '2023-08-09 16:41:00', 20);

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

DROP TABLE IF EXISTS `etablissement`;
CREATE TABLE IF NOT EXISTS `etablissement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etablissement`
--

INSERT INTO `etablissement` (`id`, `created`, `changed`, `title`, `image`, `site`, `adresse`, `telephone`, `email`, `facebook`) VALUES
(1, '2023-07-25 12:35:02', '2023-08-10 09:19:59', 'Centre de formation de  moniteurs-éducateurs Notre Dame', 'centre-de-formation-1690288561.jpg', 'formation', '26 Av. du Vanel, 07000 Privas', '04 75 64 76 26', 'college@sacrecoeur-notredame.com', 'https://lucpinelli.fr/'),
(2, '2023-07-25 12:36:45', '2023-08-09 16:15:09', 'Lycée des métiers Notre Dame', 'lycee-pro-1690288605.jpg', 'lyceepro', '26 Av. du Vanel, 07000 Privas', '04 75 64 76 26', 'college@sacrecoeur-notredame.com', 'https://lucpinelli.fr/'),
(3, '2023-07-25 12:37:09', '2023-08-09 09:20:29', 'Lycée du Sacré Coeur', 'lycee-general-1690453890.jpg', 'lycee', '6 Bd de Vernon, 07000 Privas', '04 75 64 12 76', 'college@sacrecoeur-notredame.com', 'https://unsplash.com/fr/photos/2JIvboGLeho'),
(4, '2023-07-25 12:37:22', '2023-08-07 20:09:20', 'Collège du Sacré Coeur', 'college-1690288642.jpg', 'college', '18, avenue du Vanel 07000 Privas', '04 75 64 76 14', 'college@sacrecoeur-notredame.com', 'https://www.facebook.com/pinelli.luc/');

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_new` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `created`, `changed`, `title`, `slug`, `site`, `image`, `contenu`, `is_active`, `is_new`) VALUES
(2, '2023-08-09 17:06:12', NULL, 'BTS DIETETIQUE en apprentissage', 'bts-dietetique-en-apprentissage', 'lyceepro', '932220eecc6e62c41876bdd1edd92da6-1691600772.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac semper ipsum. Nunc eget purus dignissim, hendrerit leo sed, auctor ante. Nam hendrerit tellus et iaculis mollis. Donec ac semper velit. Nulla finibus turpis vel massa sagittis laoreet eget ac augue. In placerat nec dui ut mollis. Nam accumsan neque lorem. Nullam ac augue sollicitudin, euismod sapien at, mattis neque. Nam in aliquam mi. Ut id risus at turpis dapibus posuere. Nam felis dolor, elementum sit amet maximus id, tempus quis risus. Maecenas in elit non justo tristique cursus.</p>\r\n\r\n<p>Aenean tincidunt scelerisque ligula, ac dictum dui pharetra vitae. Donec rutrum aliquet tortor, vel maximus metus. Pellentesque ipsum quam, tincidunt quis orn</p>', 1, 0),
(3, '2023-08-09 17:07:19', NULL, 'Educateur sportif', 'educateur-sportif', 'lyceepro', '589e9ff58cce6228bad33e2f60b19ca2-1691600839.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac semper ipsum. Nunc eget purus dignissim, hendrerit leo sed, auctor ante. Nam hendrerit tellus et iaculis mollis. Donec ac semper velit. Nulla finibus turpis vel massa sagittis laoreet eget ac augue. In placerat nec dui ut mollis. Nam accumsan neque lorem. Nullam ac augue sollicitudin, euismod sapien at, mattis neque. Nam in aliquam mi. Ut id risus at turpis dapibus posuere. Nam felis dolor, elementum sit amet maximus id, tempus quis risus. Maecenas in elit non justo tristique cursus.</p>\r\n\r\n<p>Aenean tincidunt scelerisque ligula, ac dictum dui pharetra vitae. Donec rutrum aliquet tortor, vel maximus metus. Pellentesque ipsum quam, tincidunt quis orn</p>', 1, 0),
(4, '2023-08-09 17:08:08', NULL, 'BAC PRO Animation Enfance Personnes Agées', 'bac-pro-animation-enfance-personnes-agees', 'lyceepro', '81e3ce4084d379e6546d8ed13c1494b1-1691600888.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac semper ipsum. Nunc eget purus dignissim, hendrerit leo sed, auctor ante. Nam hendrerit tellus et iaculis mollis. Donec ac semper velit. Nulla finibus turpis vel massa sagittis laoreet eget ac augue. In placerat nec dui ut mollis. Nam accumsan neque lorem. Nullam ac augue sollicitudin, euismod sapien at, mattis neque. Nam in aliquam mi. Ut id risus at turpis dapibus posuere. Nam felis dolor, elementum sit amet maximus id, tempus quis risus. Maecenas in elit non justo tristique cursus.</p>\r\n\r\n<p>Aenean tincidunt scelerisque ligula, ac dictum dui pharetra vitae. Donec rutrum aliquet tortor, vel maximus metus. Pellentesque ipsum quam, tincidunt quis orn</p>', 1, 0),
(5, '2023-08-09 17:09:16', NULL, 'nos formations en apprentissage', 'nos-formations-en-apprentissage', 'lyceepro', '932220eecc6e62c41876bdd1edd92da6-1691600956.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac semper ipsum. Nunc eget purus dignissim, hendrerit leo sed, auctor ante. Nam hendrerit tellus et iaculis mollis. Donec ac semper velit. Nulla finibus turpis vel massa sagittis laoreet eget ac augue. In placerat nec dui ut mollis. Nam accumsan neque lorem. Nullam ac augue sollicitudin, euismod sapien at, mattis neque. Nam in aliquam mi. Ut id risus at turpis dapibus posuere. Nam felis dolor, elementum sit amet maximus id, tempus quis risus. Maecenas in elit non justo tristique cursus.</p>\r\n\r\n<p>Aenean tincidunt scelerisque ligula, ac dictum dui pharetra vitae. Donec rutrum aliquet tortor, vel maximus metus. Pellentesque ipsum quam, tincidunt quis orn</p>', 1, 0),
(6, '2023-08-09 17:10:02', NULL, 'BAC PRO Accompagnement Soins et Services à la Personne', 'bac-pro-accompagnement-soins-et-services-a-la-personne', 'lyceepro', '927fda0476c9590bf60ca85d6a270115-1691601002.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac semper ipsum. Nunc eget purus dignissim, hendrerit leo sed, auctor ante. Nam hendrerit tellus et iaculis mollis. Donec ac semper velit. Nulla finibus turpis vel massa sagittis laoreet eget ac augue. In placerat nec dui ut mollis. Nam accumsan neque lorem. Nullam ac augue sollicitudin, euismod sapien at, mattis neque. Nam in aliquam mi. Ut id risus at turpis dapibus posuere. Nam felis dolor, elementum sit amet maximus id, tempus quis risus. Maecenas in elit non justo tristique cursus.</p>\r\n\r\n<p>Aenean tincidunt scelerisque ligula, ac dictum dui pharetra vitae. Donec rutrum aliquet tortor, vel maximus metus. Pellentesque ipsum quam, tincidunt quis orn</p>', 1, 0),
(7, '2023-08-09 17:10:50', NULL, 'CAP Accompagnant Educatif  Petite Enfance', 'cap-accompagnant-educatif-petite-enfance', 'lyceepro', '8abf574b53035c73038f8dbec5958651-1691601050.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac semper ipsum. Nunc eget purus dignissim, hendrerit leo sed, auctor ante. Nam hendrerit tellus et iaculis mollis. Donec ac semper velit. Nulla finibus turpis vel massa sagittis laoreet eget ac augue. In placerat nec dui ut mollis. Nam accumsan neque lorem. Nullam ac augue sollicitudin, euismod sapien at, mattis neque. Nam in aliquam mi. Ut id risus at turpis dapibus posuere. Nam felis dolor, elementum sit amet maximus id, tempus quis risus. Maecenas in elit non justo tristique cursus.</p>\r\n\r\n<p>Aenean tincidunt scelerisque ligula, ac dictum dui pharetra vitae. Donec rutrum aliquet tortor, vel maximus metus. Pellentesque ipsum quam, tincidunt quis orn</p>', 1, 0),
(8, '2023-08-09 17:11:49', '2023-08-09 17:11:52', 'CAP Agent Accompagnant Grand Age', 'cap-agent-accompagnant-grand-age', 'lyceepro', '00b9a3a4b07192fdd98e8dd673f78a75-1691601109.jpg', '<p>rem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus congue dolor sed massa iaculis dignissim. Donec vitae tellus sed enim fermentum lacinia eget non dui. Morbi nec neque condimentum, aliquam arcu ac, euismod mi. Morbi et vestibulum quam. Pellentesque sed mi purus. Maecenas faucibus erat risus, a pulvinar arcu dignissim id. Vivamus suscipit sem et risus facilisis, eget accumsan ligula consequat. Cras placerat urna a elit facilisis cursus. Ut quis gravida ligula. Fusce ultrices lacus dapibus gravida finibus. Mauris commodo fringilla urna a malesuada. Proin a e</p>', 1, 1),
(9, '2023-08-10 10:25:00', NULL, 'en savoir plus', 'en-savoir-plus', 'formation', '750ada593af78c877fd3a9e707187894-1691663100.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tempor, nulla lobortis sagittis luctus, magna tellus efficitur erat, id aliquet diam nisl nec quam. Nam posuere purus tortor, at sodales libero semper a. Donec et lacinia nisi, ac vulputate mauris. Curabitur tincidunt mauris enim, ut finibus dolor maximus vitae. Vivamus ornare libero et tellus fermentum aliquam. Sed placerat, turpis sit amet porta imperdiet, quam velit mollis lectus, sed rhoncus purus felis semper mauris. Nulla facilisi. Fusce scelerisque semper mi, quis efficitur mi elementum id. Etiam laoreet purus neque, pharetra porta leo semper eu. Donec nec mi nec mi euismod bibendum nec ac erat. Duis nisl diam, rutrum vitae urna in, porta dictum odio. Aenean at blandit libero. Integer eget massa at tellus euismod maximus a sit amet lacus. Cras velit nibh, fringilla a ante at, scelerisque auctor tortor.</p>\r\n\r\n<p>Nam sit amet risus egestas, molestie tortor rutrum, faucibus urna. Cras faucibus cursus ex, quis convallis ipsum viverra a. Quisque at sapien vestibulum orci sollicitudin ultricies et consectetur erat. In hac habitasse platea dictumst. Integer mi arcu, mollis in rhoncus et, placerat ut eros. Donec rutrum</p>', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `headeretablissement`
--

DROP TABLE IF EXISTS `headeretablissement`;
CREATE TABLE IF NOT EXISTS `headeretablissement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `headeretablissement`
--

INSERT INTO `headeretablissement` (`id`, `created`, `changed`, `title`, `image`, `contenu`, `lien`, `is_active`, `site`) VALUES
(1, '2023-08-06 18:24:53', '2023-08-10 11:15:47', 'Collège du Sacré-Cœur', '95972d3bb029d58d2c4291f8e2b6af9e-1691666147.jpg', '<p>Lorem ipsum dolor sit amet consectetur. Integer vel eget sed nunc neque. Eget imperdiet in enim ac viverra dui duis eu. Quis urna tellus nec aenean. Sit porttitor sagittis feugiat.</p>', 'https://lucpinelli.fr/', 1, 'college'),
(2, '2023-08-09 09:05:04', '2023-08-10 11:17:27', 'Lycée du Sacré Coeur', '09fa4a6d43398c9d6de2eff62dc280e8-1691666247.jpg', '<p>Lorem ipsum dolor sit amet consectetur. Integer vel eget sed nunc neque. Eget imperdiet in enim ac viverra dui duis eu. Quis urna tellus nec aenean. Sit porttitor sagittis feugiat.</p>', 'https://unsplash.com/fr/photos/Q1Ka2cD9XSY', 1, 'lycee'),
(3, '2023-08-09 16:14:10', '2023-08-10 11:16:40', 'Lycée des métiers Notre Dame', '750ada593af78c877fd3a9e707187894-1691666199.jpg', '<p>Lorem ipsum dolor sit amet consectetur. Integer vel eget sed nunc neque. Eget imperdiet in enim ac viverra dui duis eu. Quis urna tellus nec aenean. Sit porttitor sagittis feugiat.</p>', 'https://lucpinelli.fr/', 1, 'lyceepro'),
(4, '2023-08-10 09:17:27', NULL, 'Centre de formation de moniteurs-éducateurs Notre Dame', 'e3419e8228b46ce2d752f486a93b7179-1691659047.jpg', '<p>Lorem ipsum dolor sit amet consectetur. Integer vel eget sed nunc neque. Eget imperdiet in enim ac viverra dui duis eu. Quis urna tellus nec aenean. Sit porttitor sagittis feugiat.</p>', NULL, 1, 'formation');

-- --------------------------------------------------------

--
-- Structure de la table `headerportail`
--

DROP TABLE IF EXISTS `headerportail`;
CREATE TABLE IF NOT EXISTS `headerportail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `headerportail`
--

INSERT INTO `headerportail` (`id`, `created`, `changed`, `title`, `contenu`, `lien`, `is_active`, `image`) VALUES
(3, '2023-07-14 10:28:21', '2023-07-15 14:23:03', 'qsdsqdqsdsq', '<div>qsdsqdsq</div>', NULL, 1, 'pascal-debrunner-lhjz2jtxsli-unsplash-1689416533.jpg'),
(4, '2023-07-15 10:14:05', '2023-07-27 10:33:40', 'dqsdqsdsq', '<p>dsnkfjh kshfjlkdshfjkdshf jkldslkf hkdlsfhjklds</p>', NULL, 1, 't-h-chia-1-zr2ye5588-unsplash-1690454013.jpg'),
(5, '2023-07-15 10:32:16', '2023-07-27 09:19:05', 'Lorem ipsum', '<p>Lorem ipsum dolor sit amet consectetur. Sagittis vulputate hac placerat tristique varius. Malesuada lectus etiam aliquam sit. Nunc facilisis nam cras pretium faucibus.</p>', 'https://lucpinelli.fr/', 1, 'les-classements-des-lycees-du-toc-1690449541.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `partenaire`
--

DROP TABLE IF EXISTS `partenaire`;
CREATE TABLE IF NOT EXISTS `partenaire` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `partenaire`
--

INSERT INTO `partenaire` (`id`, `created`, `changed`, `title`, `image`, `lien`, `is_active`) VALUES
(1, '2023-08-03 17:59:13', '2023-08-03 17:59:27', 'Congrégation du  Cœur de Jésus et de  Marie Tournon sur Rhône', 'rectangle-12-1691085553.png', 'https://lucpinelli.fr/', 1),
(2, '2023-08-03 17:59:57', NULL, 'Direction Diocésaine  de l\'Enseignement Catholique d\'Ardèche', 'rectangle-12-1-1691085597.png', 'https://lucpinelli.fr/', 1),
(3, '2023-08-03 18:00:18', NULL, 'Région AURA', 'rectangle-12-2-1691085618.png', NULL, 1),
(4, '2023-08-03 18:00:47', '2023-08-09 16:50:22', 'Département Ardèche', 'frame-70-1691085647.png', 'https://lucpinelli.fr/', 1);

-- --------------------------------------------------------

--
-- Structure de la table `presentation`
--

DROP TABLE IF EXISTS `presentation`;
CREATE TABLE IF NOT EXISTS `presentation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `presentation`
--

INSERT INTO `presentation` (`id`, `created`, `changed`, `title`, `site`, `resume`, `image1`, `image2`) VALUES
(1, '2023-08-06 22:25:29', '2023-08-07 19:33:31', 'Présentation  du collège', 'college', '<p>Lorem ipsum dolor sit amet consectetur. Fermentum velit rhoncus integer viverra nisi sit viverra malesuada nulla. Sed diam eget turpis ac. Convallis fames id ut sit hendrerit.<br />\r\n<br />\r\nGravida feugiat sapien mi vitae maecenas neque praesent gravida nisi. Suscipit purus sit felis laoreet facilisis at pharetra. Purus cursus in adipiscing vel cursus. Massa neque tincidunt eros tempus mollis. Commodo maecenas vulputate iaculis quis imperdiet ut fermentum neque massa. Convallis viverra viverra pulvinar egestas pretium.<br />\r\n<br />\r\nDui suspendisse hac vitae tincidunt ut varius est mauris. Molestie pharetra sem duis ac pretium justo diam nulla mauris. Quam donec ultricies rhoncus dui posuere id risus diam.</p>', '2269-126-college-1691360729.jpg', 'le-coll-ge-1805-educnat-schwebel-011-5969-1691360729.jpg'),
(2, '2023-08-09 09:08:11', NULL, 'Présentation  du lycée', 'lycee', '<p>Lorem ipsum dolor sit amet consectetur. Fermentum velit rhoncus integer viverra nisi sit viverra malesuada nulla. Sed diam eget turpis ac. Convallis fames id ut sit hendrerit.<br />\r\n<br />\r\nGravida feugiat sapien mi vitae maecenas neque praesent gravida nisi. Suscipit purus sit felis laoreet facilisis at pharetra. Purus cursus in adipiscing vel cursus. Massa neque tincidunt eros tempus mollis. Commodo maecenas vulputate iaculis quis imperdiet ut fermentum neque massa. Convallis viverra viverra pulvinar egestas pretium.<br />\r\n<br />\r\nDui suspendisse hac vitae tincidunt ut varius est mauris. Molestie pharetra sem duis ac pretium justo diam nulla mauris. Quam donec ultricies rhoncus dui posuere id risus diam.</p>', 'brooke-cagle-g1kr4ozfoac-unsplash-1691572091.jpg', 'susan-q-yin-2jivbogleho-unsplash-1691572091.jpg'),
(3, '2023-08-09 16:16:45', NULL, 'Présentation du lycée des métiers', 'lyceepro', '<p>Lorem ipsum dolor sit amet consectetur. Fermentum velit rhoncus integer viverra nisi sit viverra malesuada nulla. Sed diam eget turpis ac. Convallis fames id ut sit hendrerit.<br />\r\n<br />\r\nGravida feugiat sapien mi vitae maecenas neque praesent gravida nisi. Suscipit purus sit felis laoreet facilisis at pharetra. Purus cursus in adipiscing vel cursus. Massa neque tincidunt eros tempus mollis. Commodo maecenas vulputate iaculis quis imperdiet ut fermentum neque massa. Convallis viverra viverra pulvinar egestas pretium.<br />\r\n<br />\r\nDui suspendisse hac vitae tincidunt ut varius est mauris. Molestie pharetra sem duis ac pretium justo diam nulla mauris. Quam donec ultricies rhoncus dui posuere id risus diam.</p>', 'alexander-grey-o2u6ga2esai-unsplash-1691597805.jpg', 'brooke-cagle-g1kr4ozfoac-unsplash-1-1691597805.jpg'),
(4, '2023-08-10 09:19:16', NULL, 'Présentation  du centre de formation de moniteurs-éducateurs', 'formation', '<p>Lorem ipsum dolor sit amet consectetur. Fermentum velit rhoncus integer viverra nisi sit viverra malesuada nulla. Sed diam eget turpis ac. Convallis fames id ut sit hendrerit. Commodo maecenas vulputate iaculis quis imperdiet ut fermentum neque massa. Convallis viverra viverra pulvinar egestas pretium.<br />\r\n<br />\r\nDui suspendisse hac vitae tincidunt ut varius est mauris. Molestie pharetra sem duis ac pretium justo diam nulla mauris. Quam donec ultricies rhoncus dui posuere id risus diam.</p>', 'e3419e8228b46ce2d752f486a93b7179-1691659156.jpg', '750ada593af78c877fd3a9e707187894-1691659156.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `president`
--

DROP TABLE IF EXISTS `president`;
CREATE TABLE IF NOT EXISTS `president` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `resume` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `president`
--

INSERT INTO `president` (`id`, `created`, `changed`, `title`, `content`, `image`, `is_active`, `resume`, `categorie`) VALUES
(1, '2023-07-16 12:11:10', '2023-08-09 16:52:59', 'Hommage à  Madame Lassalle', '<p>man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n\r\n<h3>Section 1.10.33 du &quot;De Finibus Bonorum et Malorum&quot; de Ciceron (45 av. J.-C.)</h3>\r\n\r\n<p>&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;</p>\r\n\r\n<h3>Traduction de H. Rackham (1914)</h3>\r\n\r\n<p>&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam&nbsp;libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;</p>', 'pascal-debrunner-lhjz2jtxsli-unsplash-1689512022.jpg', 1, 'Les enseignants, les parents, les élèves, l\'ensemble des communautés éducatives sont sous le choc du décès de madame LASSALLE, enseignante en espagnol, poignardée en plein cours par un élève...', 'hommage');

-- --------------------------------------------------------

--
-- Structure de la table `statistique`
--

DROP TABLE IF EXISTS `statistique`;
CREATE TABLE IF NOT EXISTS `statistique` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chiffre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `statistique`
--

INSERT INTO `statistique` (`id`, `created`, `changed`, `title`, `chiffre`, `site`, `categorie`, `contenu`, `is_active`) VALUES
(1, '2023-07-27 08:06:46', '2023-07-27 08:46:07', 'Statistique portail 1', '76', 'portail', 'classe', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(2, '2023-07-27 08:08:30', '2023-07-27 08:46:01', 'Statistique portail 2', '10', 'portail', 'etablissement', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(3, '2023-07-27 08:08:49', '2023-07-27 08:45:55', 'Statistique portail 3', '895', 'portail', 'education', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(4, '2023-07-27 08:09:17', '2023-07-27 08:45:47', 'Statistique portail 4', '4', 'portail', 'sport', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(5, '2023-08-08 17:23:29', NULL, 'Statistique collége 1', '76', 'college', 'sport', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(6, '2023-08-08 17:24:04', NULL, 'Statistique collége 2', '10', 'college', 'education', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(7, '2023-08-08 17:24:43', NULL, 'Statistique collége 3', '895', 'college', 'etablissement', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(8, '2023-08-08 17:25:05', NULL, 'Statistique collége 4', '4', 'college', 'classe', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(9, '2023-08-09 09:37:14', NULL, 'Statistique lycée 1', '76', 'lycee', 'sport', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(10, '2023-08-09 09:37:35', NULL, 'Statistique lycée 2', '10', 'lycee', 'education', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(11, '2023-08-09 09:37:58', NULL, 'Statistique lycée 3', '895', 'lycee', 'etablissement', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(12, '2023-08-09 09:38:18', NULL, 'Statistique lycée 4', '4', 'lycee', 'classe', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(13, '2023-08-09 21:33:41', NULL, 'Statistique lycée pro 1', '76', 'lyceepro', 'sport', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(14, '2023-08-09 21:34:42', NULL, 'Statistique lycée pro 2', '10', 'lyceepro', 'education', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(15, '2023-08-09 21:40:20', NULL, 'Statistique lycée pro 3', '895', 'lyceepro', 'etablissement', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(16, '2023-08-09 21:40:41', NULL, 'Statistique lycée pro 4', '4', 'lyceepro', 'classe', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(17, '2023-08-10 10:49:00', NULL, 'Centre de formation 1', '76', 'formation', 'sport', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(18, '2023-08-10 10:49:23', NULL, 'Centre de formation 2', '10', 'formation', 'education', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(19, '2023-08-10 10:49:42', NULL, 'Centre de formation 3', '895', 'formation', 'etablissement', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1),
(20, '2023-08-10 10:50:00', NULL, 'Centre de formation 4', '4', 'formation', 'classe', 'Lorem ipsum dolor sit amet consectetur. Blandit eget sit dolor ornare massa massa sit morbi. Adipiscing at auctor lectus et et semper aliquam proin.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `nom`, `prenom`, `roles`, `password`, `is_active`) VALUES
(1, 'pinelli.luc@outlook.fr', 'Pinelli', 'Luc', '[]', '$2y$13$ETxOJ9rVyP2bXXPnRGrtQ.XMXa81ZGzG9qd7CgIXdgZallX/IQqlK', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
