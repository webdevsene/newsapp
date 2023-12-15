-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 07 déc. 2023 à 11:07
-- Version du serveur : 5.7.33
-- Version de PHP : 8.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rewmidb`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci,
  `featured_text` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `thumbnail_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `etat` tinyint(1) DEFAULT NULL,
  `etiquettes_id` int(11) DEFAULT NULL,
  `created_by_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `categories_id`, `featured_image_id`, `titre`, `slug`, `contenu`, `featured_text`, `created_at`, `updated_at`, `thumbnail_id`, `image`, `status_id`, `published_at`, `etat`, `etiquettes_id`, `created_by_id`) VALUES
('6533230e0c91e', '653af4dc72a8d', NULL, 'Aliquam rem minus nam culpa dolore ipsam veniam et veritatis. Iusto cum dolores magni velit. Doloremque animi quia voluptas reiciendis iusto facilis nam sed.', NULL, NULL, NULL, '2023-10-21 01:02:06', '2023-10-21 01:02:06', NULL, '', NULL, NULL, NULL, NULL, NULL),
('65367240a92a7', '653af5ead6413', NULL, 'Deserunt magnam doloribus esse.', NULL, '<p><strong>Offici</strong>a occaecati sint ex nostrum exercitationem corporis corrupti. Corporis ex perspiciatis adipisci sequi iste rerum. Repellendus in aut ab autem fuga dolor adipisci ea quod.</p>', 'Officia occaecati sint ex nostrum exercitationem corporis corrupti. Corporis ex perspiciatis adipisci sequi iste rerum. Repellendus in aut ab autem fuga dolor adipisci ea quod.', '2023-10-23 13:16:48', '2023-10-23 13:16:48', NULL, '', NULL, NULL, NULL, NULL, NULL),
('653aee335677f', '653af5ead6413', NULL, 'Ordre de bataille', NULL, '<p><strong>get webflow for lifeget webflow for lifeget webflow for lifeget webflow </strong></p>\r\n\r\n<p>for lifeget webflow for lifeget webflow for lifeget webflow for lifeget webflow for lifeget webflow for lifeget webflow for lifeget webflow for lifeget webflow for lifeget webflow for lifeget webflow for lifeget webflow for lifeget webflow for life</p>', 'Dicta consequuntur numquam odio nemo quia ratione ducimus nihil sint. Culpa reiciendis odit magni dolorem tempora nisi. Laborum cum ut accusantium dignissimos occaecati rem vel.', '2023-10-26 22:54:43', '2023-10-26 22:54:43', NULL, '', NULL, NULL, NULL, NULL, NULL),
('653b213922bf6', '653b20e7d1ae8', NULL, 'Numquam ex vel.', NULL, '<div>\r\n<div><span style=\"color:#ce9178\">color</span>\r\n<div>\r\n<div><span style=\"color:#ce9178\">color</span>\r\n<div>\r\n<div><span style=\"color:#ce9178\">color</span>\r\n<div>\r\n<div><span style=\"color:#ce9178\">color</span>\r\n<div>\r\n<div><span style=\"color:#ce9178\">color</span>\r\n<div>\r\n<div><span style=\"color:#ce9178\">color</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Aspernatur velit error atque. Explicabo corporis voluptatibus quibusdam. Deserunt dolorem nulla nemo adipisci dolorum reiciendis quo cumque.', '2023-10-27 02:32:25', '2023-10-27 02:32:25', NULL, '', NULL, NULL, NULL, NULL, NULL),
('654019b574b8e', '653b20e7d1ae8', NULL, 'Scandale', NULL, '<p>I think that sample on site is enought for your requirements. The sample<br />\r\nlack when using multiple fil&eacute;s (one to many) if you have any problems<br />\r\nimplementing it you can post here for help.<br />\r\nCheers</p>', 'OM - OL impossible match', '2023-10-30 21:01:41', '2023-10-30 21:01:42', NULL, 'planing-654019b6cbc86909815827.png', NULL, NULL, NULL, NULL, NULL),
('6540226ce9f57', '653af4dc72a8d', NULL, 'La une du jour homosexuel brule', NULL, '<div>\r\n<div><span style=\"color:#9cdcfe\">imageFile</span>\r\n<div>\r\n<div><span style=\"color:#9cdcfe\">imageFile</span>\r\n<div>\r\n<div><span style=\"color:#9cdcfe\">imageFile</span>\r\n<div>\r\n<div><span style=\"color:#9cdcfe\">imageFile</span>\r\n<div>\r\n<div><span style=\"color:#9cdcfe\">imageFile</span>\r\n<div>\r\n<div><span style=\"color:#9cdcfe\">imageFile</span>\r\n<div>\r\n<div><span style=\"color:#9cdcfe\">imageFile</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Au pays de la teranga on brule les homo', '2023-10-30 21:38:52', '2023-10-30 21:38:53', NULL, 'logo-6540226d33ef7528089041.jpeg', NULL, '2023-11-27 12:23:00', 1, 3, NULL),
('6540c5f687a13', '653af4dc72a8d', NULL, 'Tenetur impedit autem voluptatum.', NULL, '<p>Magnam officiis dolorem earum aliquid illum tempore nostrum non. Adipisci fuga deleniti facilis soluta ut perspiciatis. Debitis impedit cum.</p>', 'Ad deserunt hic molestiae exercitationem maxime molestias atque vitae. Optio quo quam. Tenetur minus excepturi id inventore fuga illum.', '2023-10-31 09:16:38', '2023-10-31 09:16:38', NULL, 'macbook-667280-1280-6540c5f6b8f46169160917.jpg', NULL, NULL, NULL, NULL, NULL),
('6540cf2fd18af', '653af5ead6413', NULL, 'Incidunt tempore dolore deserunt iure. Ratione esse voluptates recusandae cum rerum. Reprehenderit ut provident veniam porro nobis expedita.', NULL, '<p>Nulla veniam placeat odit nam ea animi aperiam. Repudiandae et maxime amet odit dolore numquam quisquam illum natus. Earum modi cum quisquam.</p>\r\n\r\n<p>Nulla veniam placeat odit nam ea animi aperiam. Repudiandae et maxime amet odit dolore numquam quisquam illum natus. Earum modi cum quisquam.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nulla veniam placeat odit nam ea animi aperiam. Repudiandae et maxime amet odit dolore numquam quisquam illum natus. Earum modi cum quisquam.</p>\r\n\r\n<p>Nulla veniam placeat odit nam ea animi aperiam. Repudiandae et maxime amet odit dolore numquam quisquam illum natus. Earum modi cum quisquam.</p>', 'Minima ex maxime labore veritatis voluptas eveniet voluptas dolores necessitatibus. Tenetur alias maxime vel aliquam repellendus. Reprehenderit quo cupiditate.', '2023-10-31 09:55:59', '2023-10-31 09:56:00', NULL, 'ucad1-6540cf3018c36139550210.webp', NULL, NULL, NULL, 2, NULL),
('6540d08b7ac21', '653af4dc72a8d', NULL, 'Repellendus ipsum cupiditate recusandae dolorum perferendis molestiae minima. Ad officiis blanditiis. Incidunt consequatur aliquam quaerat sed.', NULL, '<p>Atque impedit praesentium assumenda beatae. Nulla doloremque repellendus porro eius beatae molestiae maiores debitis. Asperiores recusandae sint et.Blanditiis error iure ratione ex consequuntur aliquam repudiandae. Quod impedit sint ab mollitia saepe odio a aliquid. Sed adipisci dolorum.Consequuntur aut placeat unde. Quas voluptates nesciunt. Consequuntur eum ut.</p>', 'Eligendi animi nihil illo ipsum iusto itaque odio.', '2023-10-31 10:01:47', '2023-10-31 10:01:48', NULL, 'migrantsss-6540d08c0c953528107882.webp', NULL, NULL, NULL, 2, NULL),
('6548bc63b1985', '653af4dc72a8d', NULL, 'Présidentielle 2024: MIK se retire, voici la raison !', NULL, '<p>Apr&egrave;s avoir lanc&eacute; son mouvement &laquo; Demain, c&rsquo;est maintenant &raquo; le 23 f&eacute;vrier 2023 et d&eacute;clar&eacute; sa<br />\r\ncandidature le 20 ao&ucirc;t dernier, le journaliste Mamoudou Ibra Kane vient de se retirer &agrave; la course vers le fauteuil pr&eacute;sidentiel alors que nous en sommes qu&rsquo;&agrave; l&rsquo;&eacute;tape de collecte des Parrainages.</p>\r\n\r\n<p>Dans une d&eacute;claration parvenue &agrave; PressAfrik ce vendredi 03 novembre, Mamoudou Ibra Kane d&eacute;plore une &laquo; inflation des candidatures &raquo; jamais &eacute;gal&eacute;e.</p>\r\n\r\n<p>&laquo; Au regard du nombre de fiches de<br />\r\nparrainage retir&eacute;es, les pr&eacute;tendants &agrave; la candidature sont pass&eacute;s, de 80 en 2019 &agrave; pr&egrave;s de 250 &agrave; ce<br />\r\njour. Ne sommes-nous pas en train de cr&eacute;er les germes d&rsquo;une banalisation outranci&egrave;re de la fonction<br />\r\npr&eacute;sidentielle ? &raquo;, s&rsquo;est-il interrog&eacute;</p>\r\n\r\n<p>Avant d&rsquo;&eacute;voquer une &laquo; banalisation outranci&egrave;re &raquo; et une &laquo; d&eacute;sacralisation progressive &agrave; laquelle une telle inflation de candidatures expose cette &eacute;minente<br />\r\nfonction &raquo;. M&ecirc;me si, admet-il, &laquo; il est de fait que la Constitution de la R&eacute;publique du S&eacute;n&eacute;gal consacre l&rsquo;acc&egrave;s de tout citoyen &agrave; l&rsquo;exercice du pouvoir &raquo;.</p>\r\n\r\n<p>Selon lui, &laquo; En tout Etat de droit, comme doit l&rsquo;&ecirc;tre tout Etat d&eacute;mocratique, la libert&eacute; est empreinte de<br />\r\nresponsabilit&eacute;. Et, en politique plus qu&rsquo;en tout autre domaine de la vie publique, la libert&eacute; n&rsquo;est<br />\r\nutilement exerc&eacute;e que dans la responsabilit&eacute; consciencieusement assum&eacute;e &raquo;</p>\r\n\r\n<p>C&rsquo;est ainsi, dit-il,, qu&rsquo; &laquo; en citoyen qui se refuse d&rsquo;&ecirc;tre un des acteurs de la d&eacute;sacralisation de la fonction de Pr&eacute;sident de&nbsp;la R&eacute;publique, ai-je d&eacute;cid&eacute;, en parfait accord avec le Mouvement citoyen &laquo; Demain C&rsquo;est Maintenant &raquo; (DCM), de retirer ma candidature du processus pour l&rsquo;&eacute;lection pr&eacute;sidentielle du 25<br />\r\nf&eacute;vrier 2024 &raquo;</p>\r\n\r\n<p>Le leader du Mouvement &laquo; Demain c&rsquo;est maintenant &raquo; affirme toutefois &ecirc;tre ouvert &agrave; collaborer avec toutes les forces vives de la Nation avec qui il partage la m&ecirc;me vision.</p>', 'Quaerat modi nihil nam id magni dicta. Dolores reprehenderit quae nisi ullam numquam a accusantium. Quasi porro quasi consequatur vero corporis esse magnam maiores.', '2023-11-06 10:13:55', '2023-11-06 10:14:00', NULL, 'mik-6548bc67ea1da831395736.webp', 2, '2023-11-16 18:23:00', NULL, 1, NULL),
('6548f411a10dc', '653af5ead6413', NULL, 'Temporibus et magnam.', NULL, '<h5><strong>Un accident corporel de la circulation routi&egrave;re s&rsquo;est produit ce dimanche aux environs de 18 heures 30 minutes sur l&rsquo;autoroute en construction reliant Mbour-Fatick-Kaolack &agrave; hauteur du village de Thiacalar, commune de khelcom birame, dans l&rsquo;arrondissement de mbadakhoune, d&eacute;partement de Guinguin&eacute;o, a appris une source s&eacute;curitaire.</strong></h5>\r\n\r\n<p>En effet, un v&eacute;hicule de marque Caterpillar <strong><em>140k</em></strong>, genre niveleuse, appartenant &agrave; la soci&eacute;t&eacute; China Railway Design Corporation ( CRDC) et conduit par le nomm&eacute; pape Ousmane Camara qui circulait de jour sur la route pr&eacute;cit&eacute;e sens Dya &ndash; Thiacalar, a heurt&eacute; le d&eacute;nomm&eacute; Zhang Zhen de nationalit&eacute; chinoise, lorsqu&rsquo;il effectu&eacute; une marche en arri&egrave;re. Ce dernier a rendu l&rsquo;&acirc;me sur le coup, informe toujours la source.</p>\r\n\r\n<p>Le d&eacute;funt chinois, lui, effectuait des missions de contr&ocirc;le derri&egrave;re le mobile &agrave; l&rsquo;insu du conducteur pr&eacute;cise -t-elle. Avis&eacute;s le m&ecirc;me jour, les &eacute;l&eacute;ments de la Brigade Polyvalente de Fass se sont rendus sur les lieux pour les op&eacute;rations de constat.</p>\r\n\r\n<p>Un corps sans vie a &eacute;t&eacute; &eacute;vacu&eacute; par les sapeurs-pompiers de la 31 &egrave;me cie d&rsquo;incendie et de secours N3, &agrave; la morgue de l&rsquo;h&ocirc;pital El hadji Ibrahima NIASSE de Kaolack en pr&eacute;sence enqu&ecirc;teurs.</p>', 'Un accident corporel de la circulation routière s’est produit ce dimanche aux environs de 18 heures 30 minutes sur l’autoroute en construction reliant Mbour-Fatick-Kaolack à hauteur du village de Thiacalar, commune de khelcom birame, dans l’arrondissement de mbadakhoune, département de Guinguinéo, a appris une source sécuritaire.', '2023-11-06 14:11:29', '2023-11-06 14:11:32', NULL, 'maxresdefault-6548f41471563377722864.webp', NULL, '2023-11-06 08:00:00', 1, 2, NULL),
('654a09d16e67e', '653af4dc72a8d', NULL, 'Un étudiant et ses complices arrêtés avec 19 millions en faux billets', NULL, '<p>Le commissariat central de Kolda (sud) a saisi r&eacute;cemment plus de 19 millions de francs de faux billets et 1 kilogramme de chanvre indien.</p>\r\n\r\n<p>Les policiers ont exploit&eacute; une exploitation re&ccedil;ue vendredi dernier. Le commissaire Diop explique que c&rsquo;est sur la base de ces renseignements qu&rsquo;ils ont proc&eacute;d&eacute; &agrave; la filature et &agrave; l&rsquo;interpellation d&rsquo;un individu &agrave; c&ocirc;t&eacute; d&rsquo;un h&ocirc;tel de la ville de Kolda.</p>\r\n\r\n<p>Le reste de la bande, dont un &eacute;tudiant, a &eacute;t&eacute; arr&ecirc;t&eacute; &lsquo;&rsquo;dans une maison avec la saisie 19 millions&rsquo;&rsquo; de francs CFA, dont seul &lsquo;&rsquo;un million cinq cent mille sont de vrais billets de banque&rsquo;&rsquo;.</p>\r\n\r\n<p>Cinq individus, dont un de nationalit&eacute; guin&eacute;enne, ont &eacute;t&eacute; interpell&eacute;s dans le cadre de cette affaire de faux billets et deux autres pour usage et trafic de drogue, a-t-il ajout&eacute;.</p>\r\n\r\n<p>Au cours de l&rsquo;op&eacute;ration, les policiers ont aussi saisi &lsquo;&rsquo;un kilogramme de chanvre indien&rsquo;&rsquo;, a-t-il signal&eacute;.</p>', 'Les policiers ont exploité une exploitation reçue vendredi dernier. Le commissaire Diop explique que c’est sur la base de ces renseignements qu’ils ont procédé à la filature et à l’interpellation d’un individu à côté d’un hôtel de la ville de Kolda.', '2023-11-07 09:56:33', '2023-11-07 09:56:41', NULL, 'faux-billets-654a09d973aa3731551144.webp', NULL, '2023-11-07 09:55:00', 1, 1, NULL),
('654aa1eccc241', '653b20e7d1ae8', NULL, 'Quasi sequi dolorum voluptatem accusantium assumenda saepe reiciendis iusto alias.', NULL, '<p>Quasi sequi dolorum voluptatem accusantium assumenda saepe reiciendis iusto alias.Quasi sequi dolorum voluptatem accusantium assumenda saepe reiciendis iusto alias.Quasi sequi dolorum voluptatem accusantium</p>\r\n\r\n<p>assumenda saepe reiciendis iusto alias.Quasi sequi dolorum voluptatem accusantium assumenda saepe reiciendis iusto alias.Quasi sequi dolorum voluptatem accusantium assumenda saepe reiciendis iusto alias.Quasi sequi dolorum voluptatem accusantium assumenda saepe reiciendis iusto alias.</p>\r\n\r\n<p>Quasi sequi dolorum voluptatem accusantium assumenda saepe reiciendis iusto alias.Quasi sequi dolorum voluptatem accusantium assumenda saepe reiciendis iusto alias.Quasi sequi dolorum voluptatem accusantium assumenda saepe reiciendis iusto alias.</p>\r\n\r\n<p>Quasi sequi dolorum voluptatem accusantium assumenda saepe reiciendis iusto alias.Quasi sequi dolorum voluptatem accusantium assumenda saepe reiciendis iusto alias.</p>', 'Natus natus aspernatur ipsa natus doloribus repellendus labore aliquid nulla.', '2023-11-07 20:45:32', '2023-11-07 20:45:42', NULL, 'building-654aa1f69a6e6619890550.jpg', NULL, '2023-11-07 12:00:00', 1, 3, NULL),
('654ac9e3e4e39', '653af4dc72a8d', NULL, 'Atque alias quis consectetur ducimus sit nobis consequuntur.', NULL, '<p>Atque alias quis consectetur ducimus sit nobis consequuntur.Atque alias quis consectetur ducimus sit nobis consequuntur.Atque alias quis consectetur ducimus sit nobis consequuntur.Atque alias quis consectetur ducimus sit nobis consequuntur.Atque alias quis consectetur ducimus sit nobis consequuntur.Atque alias quis consectetur ducimus sit nobis consequuntur.Atque alias quis consectetur ducimus sit nobis consequuntur.Atque alias quis consectetur ducimus sit nobis consequuntur.Atque alias quis consectetur ducimus sit nobis consequuntur.Atque alias quis consectetur ducimus sit nobis consequuntur.Atque alias quis consectetur ducimus sit nobis consequuntur.Atque alias quis consectetur ducimus sit nobis consequuntur.Atque alias quis consectetur ducimus sit nobis consequuntur.Atque alias quis consectetur ducimus sit nobis consequuntur.Atque alias quis consectetur ducimus sit nobis consequuntur.</p>', 'Fugiat laboriosam vitae dolor.', '2023-11-07 23:36:03', '2023-11-07 23:36:15', NULL, 'r-654ac9eef001f601810763.jpg', NULL, '2023-11-08 00:00:00', 1, 1, NULL),
('65577ea9cbb5e', '653af4dc72a8d', NULL, 'Bassirou Diomaye Faye reste en prison', NULL, '<p>Le num&eacute;ro 2 de Pastef reste en prison. Ainsi en a d&eacute;cid&eacute;, jeudi, la Chambre d&rsquo;accusation de la Cour d&rsquo;appel de Dakar qui statuait sur la requ&ecirc;te faite par Bassirou Diomaye Faye, via son avocat, apr&egrave;s le refus du juge de lui accorder la libert&eacute; provisoire.</p>\r\n\r\n<p>Arr&ecirc;t&eacute; par la DIC devant le si&egrave;ge de la Direction g&eacute;n&eacute;rale des imp&ocirc;ts et domaines (Dgid), Bassirou Diomaye Faye avait &eacute;t&eacute; inculp&eacute; et plac&eacute; sous mandat de d&eacute;p&ocirc;t le 18 avril dernier pour &laquo;actes de natures &agrave; compromettre &agrave; la paix publique &raquo;, &laquo;outrage &agrave; magistrat &raquo; et &laquo;diffamation &agrave; l&rsquo;encontre d&rsquo;un corps constitu&eacute; &raquo;.</p>\r\n\r\n<p>Suite &agrave; un r&eacute;quisitoire suppl&eacute;tif du parquet, le Doyen des juges avait pris une ordonnance de jonction des proc&eacute;dures suivies contre Diomaye Faye accus&eacute; d&eacute;sormais des m&ecirc;mes chefs que le leader de Pastef.</p>', 'Praesentium quasi quaerat perferendis beatae voluptas nihil quaerat expedita.', '2023-11-17 14:54:33', '2023-11-17 14:54:35', NULL, 'bassirou-diomaye-65577eabca2ea036497448.webp', NULL, '2023-11-17 08:00:00', 1, 1, NULL),
('655968cce53f3', '653af4dc72a8d', NULL, 'Présidentielle au Liberia : Georges Weah battu au second tour', NULL, '<p>Le pr&eacute;sident sortant du Liberia, George Weah, a reconnu vendredi sa d&eacute;faite face &agrave; son concurrent, Joseph Boakai, lors du second tour de l&rsquo;&eacute;lection pr&eacute;sidentielle, dans un discours prononc&eacute; &agrave; la radio nationale.</p>\r\n\r\n<p>Selon les r&eacute;sultats officiels de l&rsquo;&eacute;lection, 99,5% des bulletins de vote ont &eacute;t&eacute; compt&eacute;s lors de l&rsquo;&eacute;lection de mardi. M. Boakai a obtenu 50,89% des voix, contre 49,11 % pour le pr&eacute;sident sortant.</p>\r\n\r\n<p>M. Weah a reconnu sa d&eacute;faite et a f&eacute;licit&eacute; M. Boakai pour sa victoire. Il a ajout&eacute; que le Liberia avait gagn&eacute; et qu&rsquo;il &eacute;tait temps de placer l&rsquo;int&eacute;r&ecirc;t national au-dessus des int&eacute;r&ecirc;ts personnels.</p>\r\n\r\n<p>M. Weah, 57 ans, est un footballeur internationale qui a remport&eacute; l&rsquo;&eacute;lection pr&eacute;sidentielle de 2017, au cours de laquelle M. Boakai avait d&eacute;j&agrave; perdu contre M. Weah. M. Boakai, un v&eacute;t&eacute;ran de la politique &acirc;g&eacute; de 78 ans, a &eacute;t&eacute; vice-pr&eacute;sident pendant 12 ans sous l&rsquo;ancienne pr&eacute;sidente Ellen Johnson Sirleaf. Fin</p>', 'ormer international football star George Weah waves to supporters on April 28, 2016 at the his party\'s headquarters in Monrovia. Former international football star George Weah today said he would be a candidate in next year\'s presidential elections in Liberia -- his second bid for the post. As Sirleaf is ineligible to stand for a third term under Liberia\'s constitution, Weah is expected to face her vice president, Joseph Boakai, 71.', '2023-11-19 01:45:48', '2023-11-19 01:45:50', NULL, 'george-weah-scaled-655968cea1a52033891065.webp', NULL, '2023-11-19 00:00:00', 1, 2, NULL),
('655fc7c35beba', '653af4dc72a8d', NULL, 'Impedit perspiciatis eaque eos distinctio excepturi.', NULL, '<p>https://127.0.0.1:8000/https://127.0.0.1:8000/https://127.0.0.1:8000/https://127.0.0.1:8000/https://127.0.0.1:8000/https://127.0.0.1:8000/https://127.0.0.1:8000/https://127.0.0.1:8000/https://127.0.0.1:8000/https://127.0.0.1:8000/https://127.0.0.1:8000/https://127.0.0.1:8000/https://127.0.0.1:8000/https://127.0.0.1:8000/https://127.0.0.1:8000/https://127.0.0.1:8000/https://127.0.0.1:8000/</p>', 'Ab veritatis ratione tempora accusamus nesciunt.', '2023-11-23 21:44:35', '2023-11-23 21:44:39', NULL, 'banner-02-655fc7c7807db945358782.jpg', NULL, '2023-11-23 21:00:00', 1, 2, NULL),
('656088de67730', '653af4dc72a8d', NULL, 'Lancement d’alerte dans le milieu du travail: PPLAAF et LEGS Africa contre les politiques fiscales favorisant des flux financiers illicites', NULL, '<h4><strong>L&rsquo;activit&eacute; a &eacute;t&eacute; co-organis&eacute;e hier jeudi par la PPLAAF et LEGS Africa et d&rsquo;autres acteurs pour parler d&rsquo;un sujet qui pr&eacute;occupe. Il s&rsquo;agit &laquo;des flux financiers illicites (FFI) et le recouvrement des avoirs.&raquo; Cette rencontre a expos&eacute; des aspects strat&eacute;giques par rapport &agrave; l&rsquo;Afrique en particulier aux pays &agrave; faibles revenus en particulier.</strong></h4>\r\n\r\n<p>Le pr&eacute;sident de LEGS Africa (Leadership, Ethique, Gouvernance et Strat&eacute;gie pour l&rsquo;Afrique), Elimane Kane a abord&eacute; le sujet sur lequel ils sont le plus souvent interpel&eacute;s. &laquo;C&rsquo;est un sujet sur lequel nous travaillons depuis longtemps en termes de recherche mais aussi d&rsquo;action, de sensibilisation et d&rsquo;information au grand public sur les enjeux strat&eacute;giques des flux financiers illicites qui sont de plusieurs ordres li&eacute;s aux activit&eacute;s commerciales et la fiscalit&eacute; mais aussi des activit&eacute;s criminelles et &eacute;galement &agrave; la corruption&raquo;, dit-il.</p>', 'Suscipit placeat est fugit adipisci rerum illo porro saepe hic.', '2023-11-24 11:28:30', '2023-11-24 11:28:34', NULL, 'communique-656088e23fde9622471730.png', NULL, '2023-11-24 03:34:00', 1, 2, NULL),
('6565d15ceecb4', '653af4dc72a8d', NULL, 'Capharnaüm à la Cour suprême', NULL, '<p>La juge A&iuml;ssatou Diallo B&acirc; n&rsquo;a pas appos&eacute; sa signature au bas de l&rsquo;arr&ecirc;t de la Cour supr&ecirc;me cassant la d&eacute;cision du tribunal de Ziguinchor ordonnant la r&eacute;int&eacute;gration de Ousmane Sonko sur les listes &eacute;lectorales.</p>\r\n\r\n<p>L&rsquo;arr&ecirc;t de la Cour supr&ecirc;me cassant la d&eacute;cision du tribunal de Ziguinchor r&eacute;int&eacute;grant Ousmane Sonko sur les listes &eacute;lectorales, a &eacute;t&eacute; publi&eacute;. Mais sur les cinq juges qui ont si&eacute;g&eacute; &agrave; l&rsquo;audience, vendredi 17 novembre, seuls quatre ont appos&eacute; leurs signatures au bas de la d&eacute;cision. Celle de A&iuml;ssatou Diallo B&acirc; n&rsquo;y figure. &Agrave; la place, indiquent Lib&eacute;ration et Les &Eacute;chos, qui donnent l&rsquo;information, il est mentionn&eacute; &laquo;Refuse de signer pour n&rsquo;avoir pas particip&eacute; au prononc&eacute;&raquo;.</p>\r\n\r\n<p>En effet, la magistrate n&rsquo;a pas assist&eacute; &agrave; la lecture du verdict de l&rsquo;affaire opposant l&rsquo;Agent judiciaire de l&rsquo;&Eacute;tat (AJE) aux avocats de Ousmane Sonko pretextant qu&rsquo;elle devait aller chercher ses enfants. Mais en r&eacute;alit&eacute;, selon Les &Eacute;chos, A&iuml;ssatou Diallo B&acirc; manifestait ainsi son d&eacute;saccord avec ses coll&egrave;gues &agrave; propos du d&eacute;lib&eacute;r&eacute;.</p>', 'In labore aliquam laboriosam recusandae laboriosam excepturi. Ipsa expedita ipsam fugiat fugit veritatis facilis molestias laborum eligendi. Beatae ipsa repellendus quam nemo.', '2023-11-28 11:39:08', '2023-11-28 11:39:10', NULL, 'background-rewmi-1-6565d15e65a0f206199880.png', NULL, '2023-11-28 12:01:00', 1, 2, '6564f136e00a0'),
('6565f86189e80', '653af4dc72a8d', NULL, 'Campagne arachidière : Le prix du kilogramme fixé à 280 francs chez les producteurs', NULL, '<h4>Le S&eacute;n&eacute;gal s&rsquo;est fix&eacute; des objectifs ambitieux pour la campagne arachidi&egrave;re 2023-2024, visant &agrave; produire 1,7 million de tonnes d&rsquo;arachide. Cette annonce, r&eacute;v&eacute;l&eacute;e lors d&rsquo;un Conseil interminist&eacute;riel, s&rsquo;accompagne d&rsquo;une fixation du prix &agrave; 280 francs le kilogramme, offrant aux producteurs une base solide pour leurs r&eacute;coltes.</h4>\r\n\r\n<p>Les avanc&eacute;es significatives dans le secteur de l&rsquo;arachide, illustr&eacute;es par une augmentation de <strong>30%</strong> de la production entre 2011 et 2022. Le budget allou&eacute; pour la nouvelle campagne, &eacute;valu&eacute; &agrave; <strong>100 milliards de francs</strong>, est destin&eacute; notamment &agrave; la subvention des semences d&rsquo;arachide, doublant ainsi le financement pr&eacute;c&eacute;dent. Cette mesure a permis de garantir<strong> 86 000 tonne</strong>s de semences certifi&eacute;es, un bond consid&eacute;rable compar&eacute; aux ann&eacute;es ant&eacute;rieures informe le Premier ministre.</p>\r\n\r\n<p>Selon la source, les autorit&eacute;s agricoles ont annonc&eacute; dix (10) mesures strat&eacute;giques pour assurer le succ&egrave;s de cette campagne. Outre l&rsquo;accord sur le prix plancher et la date de d&eacute;but de la r&eacute;colte, l&rsquo;accent est mis sur le r&egrave;glement des factures en souffrance des op&eacute;rateurs des campagnes 2021-2022 et 2022-2023. Une action qui vise &agrave; garantir des ressources financi&egrave;res pour les paiements aux producteurs, tout en &eacute;vitant les incidents pass&eacute;s de bons impay&eacute;s. Toutefois, la pr&eacute;occupation majeure reste la possible perturbation du march&eacute; par des acteurs &eacute;trangers offrant des prix plus attrayants, ce qui pourrait priver les industriels locaux de mati&egrave;res premi&egrave;res.</p>', 'Accusamus accusamus suscipit non dolorem distinctio ratione cupiditate.', '2023-11-28 14:25:37', '2023-11-28 14:25:39', NULL, 'arachide-1-600x330-6565f8635fbff547077665.jpg', NULL, '2023-11-28 14:09:00', 1, 1, '6564f136e00a0'),
('65679cdf7447e', '653af4dc72a8d', NULL, 'Présidentielle 2024 : Six candidats de la gauche se concertent pour une candidature unique', NULL, '<div>\r\n<h4>Une candidature unique pour la Gauche, pourrait &ecirc;tre possible lors de la Pr&eacute;sidentielle de f&eacute;vrier. En tout cas, ce mercredi 29 novembre 2023, six candidats d&eacute;clar&eacute;s de la Gauche ou proches de la Gauche.</h4>\r\n\r\n<p>Babacar Diop, Forces D&eacute;mocratiques du S&eacute;n&eacute;gal, Mamadou Diop Decroix, And Jef Parti africain pour la d&eacute;mocratie et le socialisme, Cheikh Tidiane Gadio, Mouvement panafricain et citoyen -luy JotJotna, ElHadj N&rsquo;diaye Diodio, Taaru Senegaal, Taaru Afrik,</p>\r\n\r\n<p>Mouvement pour le socialisme autogestionnaire, Bouna Alboury Ndiaye, Rassemblement National D&eacute;mocratique, El Hadj Ibrahima Sall, Parti Demain la R&eacute;publique), ont d&eacute;cid&eacute; d&rsquo;endosser le Projet de soci&eacute;t&eacute; de la Plateforme Progressiste Panafricaine Seen Egal-e Seen &Eacute;galit&eacute;.</p>\r\n</div>', 'Beatae repellat consequatur fugit inventore laborum vero sed.', '2023-11-29 20:19:43', '2023-11-29 20:19:45', NULL, 'palais-senegal-660x330-1-65679ce19bfa4895256526.jpg', NULL, '2023-11-29 03:04:00', 1, 2, '6564f136e00a0'),
('65686e1f4ebbd', '653af5ead6413', NULL, 'Barthélémy Dias avertit Ousmane Sonko: «Si Amadou Ba est élu Président en 2024, tu pourriras en prison»', NULL, '<h4>Barth&eacute;lemy Dias se veut clair. Si Amadou Ba, &laquo;dont la candidature n&rsquo;est qu&rsquo;une recherche de troisi&egrave;me mandat par procuration est &eacute;lu pr&eacute;sident de la R&eacute;publique en 2024, Ousmane Sonko va pourrir en prison&raquo;. <span style=\"color:inherit\">S&rsquo;adressant encore aux militants du parti dissous Pastef &ndash; Les Patriotes, Barth&eacute;lemy Dias invite : &laquo; ceux qui accusent Taxawu S&eacute;n&eacute;gal d&rsquo;avoir trahi qui que ce soit &agrave; dire comment nous les avons trahis&raquo;. &laquo;Parce que c&rsquo;est trop facile de d&eacute;nigrer des personnes. Vous &ecirc;tes tous conscients de l&rsquo;injustice dont on a &eacute;t&eacute; victime.</span></h4>', 'Sequi incidunt laboriosam soluta.', '2023-11-30 11:12:31', '2023-11-30 11:12:33', NULL, 'barthe-660x330-65686e215dc73692608080.jpg', NULL, '2023-11-30 12:12:00', 1, 1, '6564f136e00a0'),
('656c84e8f3c5b', '653af4dc72a8d', NULL, 'Repellat aliquam amet saepe qui aperiam fugiat molestiae est sint.', NULL, '<p>Occaecati praesentium voluptate. Ullam aliquam quisquam rem autem atque rerum.</p>\r\n\r\n<p>Vel rem eos neque assumenda aut amet vel accusamus culpa.At porro aspernatur debitis repudiandae similique sint. Nostrum odit facilis recusandae rem placeat soluta provident natus nostrum.</p>\r\n\r\n<p>Dolorem ipsum quae at velit in.Ipsa repudiandae quos similique sint. Quam quidem est. Repellat praesentium exercitationem cum odit culpa.</p>', 'Au pays de la teranga on brule les homo', '2023-12-03 13:38:48', '2023-12-03 13:38:53', NULL, 'arachide-1-600x330-656c84edb2e33680546499.jpg', NULL, '2023-12-03 12:23:00', 1, 1, '6564f136e00a0'),
('656efec594140', '653af4dc72a8d', NULL, 'Consequatur neque molestias iure et suscipit alias.', NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'Perferendis odit harum. Delectus perspiciatis ut autem recusandae eum. Eius mollitia perspiciatis a consequuntur reiciendis.', '2023-12-05 10:43:17', '2023-12-05 10:43:19', NULL, 'arachide-1-600x330-656efec7a150b762172463.jpg', NULL, '2023-12-05 03:43:00', 1, 1, '6564f136e00a0'),
('656eff0222755', '653af4dc72a8d', NULL, 'Delectus et consectetur provident deleniti.', NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'OM - OL impossible match', '2023-12-05 10:44:18', '2023-12-05 10:44:18', NULL, 'arachide-1-600x330-656eff026857d147229893.jpg', NULL, '2023-12-05 08:09:00', 0, 1, '6564f136e00a0'),
('656eff26ca49a', '653af4dc72a8d', NULL, 'L\'OM joue le titre', NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'Enim animi quibusdam repellat beatae doloribus eum.', '2023-12-05 10:44:54', '2023-12-05 10:44:55', NULL, 'diagramme-de-sequence-656eff2717cb7501667704.svg', NULL, '2023-12-05 23:34:00', 0, 1, '6564f136e00a0'),
('657086188ea00', '653af5ead6413', NULL, 'Fugiat deleniti dignissimos repellat sunt atque cumque quam qui porro.', NULL, '<p>Fugiat deleniti dignissimos repellat sunt atque cumque quam qui porro.</p>', 'Ipsa dolores error velit beatae laborum. Exercitationem fuga asperiores beatae neque. Eaque fugit quas distinctio itaque eius.', '2023-12-06 14:32:56', '2023-12-06 14:32:58', NULL, 'ben-sweet-2lowvivhz-e-unsplash-6570861a1cf47161142269.jpg', NULL, '2023-12-06 04:05:00', 0, 2, '6564f136e00a0'),
('657088a27e743', '653af4dc72a8d', NULL, 'Accusamus atque placeat laudantium dicta nisi.', NULL, '<p>Architecto quibusdam qui. Earum animi suscipit dicta iure libero eius delectus. Dolores rerum autem atque iure tempora quam.Sapiente esse tempora quisquam. Ipsum reiciendis soluta eos beatae tempora. Alias quae nulla ipsum in eaque.Minima ipsa incidunt vel esse eligendi eum dolorem libero. Magnam veniam eligendi similique hic pariatur inventore sunt. Ipsam omnis facere incidunt provident facere repellendus.</p>', 'Enim corrupti repellendus doloremque officiis aut similique repudiandae. Ipsam necessitatibus earum eveniet id molestiae necessitatibus quos. Delectus ducimus quisquam doloribus repellendus architecto voluptates nulla dicta.', '2023-12-06 14:43:46', '2023-12-06 14:43:46', NULL, 'images-657088a2d3641085277248.jpg', NULL, '2023-12-06 07:07:00', 0, 2, '6564f136e00a0');

-- --------------------------------------------------------

--
-- Structure de la table `article_view`
--

CREATE TABLE `article_view` (
  `id` int(11) NOT NULL,
  `article_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_adress` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article_view`
--

INSERT INTO `article_view` (`id`, `article_id`, `ip_adress`, `created_at`) VALUES
(1, '656efec594140', '127.0.0.1', '2023-12-05 15:22:54'),
(2, '655fc7c35beba', '127.0.0.1', '2023-12-05 15:23:23'),
(3, '655fc7c35beba', '127.0.0.1', '2023-12-05 15:23:26'),
(4, '65686e1f4ebbd', '127.0.0.1', '2023-12-05 15:24:11'),
(5, '65686e1f4ebbd', '127.0.0.1', '2023-12-05 15:24:13'),
(6, '65686e1f4ebbd', '127.0.0.1', '2023-12-05 15:25:35'),
(7, '65686e1f4ebbd', '127.0.0.1', '2023-12-05 15:25:36'),
(8, '65679cdf7447e', '127.0.0.1', '2023-12-05 15:28:24'),
(9, '65679cdf7447e', '127.0.0.1', '2023-12-05 15:28:25'),
(10, '65679cdf7447e', '127.0.0.1', '2023-12-05 15:36:46'),
(11, '65679cdf7447e', '127.0.0.1', '2023-12-05 15:36:48'),
(12, '65679cdf7447e', '127.0.0.1', '2023-12-05 15:37:20'),
(13, '65679cdf7447e', '127.0.0.1', '2023-12-05 15:37:21'),
(14, '65679cdf7447e', '127.0.0.1', '2023-12-05 15:37:44'),
(15, '65679cdf7447e', '127.0.0.1', '2023-12-05 15:37:46'),
(16, '65679cdf7447e', '127.0.0.1', '2023-12-05 15:38:03'),
(17, '65679cdf7447e', '127.0.0.1', '2023-12-05 15:38:06'),
(18, '65679cdf7447e', '127.0.0.1', '2023-12-05 15:43:30'),
(19, '65679cdf7447e', '127.0.0.1', '2023-12-05 15:43:32'),
(20, '65679cdf7447e', '127.0.0.1', '2023-12-05 15:44:10'),
(21, '65679cdf7447e', '127.0.0.1', '2023-12-05 15:44:14'),
(22, '656c84e8f3c5b', '127.0.0.1', '2023-12-05 15:45:23'),
(23, '656c84e8f3c5b', '127.0.0.1', '2023-12-05 15:45:25'),
(24, '656c84e8f3c5b', '127.0.0.1', '2023-12-06 09:11:59'),
(25, '656c84e8f3c5b', '127.0.0.1', '2023-12-06 09:12:01'),
(26, '656eff26ca49a', '127.0.0.1', '2023-12-06 09:26:24'),
(27, '656eff26ca49a', '127.0.0.1', '2023-12-06 09:26:27'),
(28, '656eff26ca49a', '127.0.0.1', '2023-12-06 09:31:35'),
(29, '656eff26ca49a', '127.0.0.1', '2023-12-06 09:31:37'),
(30, '656eff26ca49a', '127.0.0.1', '2023-12-06 09:34:42'),
(31, '656eff26ca49a', '127.0.0.1', '2023-12-06 09:34:45'),
(32, '656c84e8f3c5b', '127.0.0.1', '2023-12-06 09:40:21'),
(33, '656c84e8f3c5b', '127.0.0.1', '2023-12-06 09:40:25'),
(34, '656eff0222755', '127.0.0.1', '2023-12-06 14:04:41'),
(35, '656eff0222755', '127.0.0.1', '2023-12-06 14:04:43'),
(36, '657086188ea00', '127.0.0.1', '2023-12-06 14:33:32'),
(37, '657086188ea00', '127.0.0.1', '2023-12-06 14:33:34'),
(38, '657086188ea00', '127.0.0.1', '2023-12-06 14:39:31'),
(39, '657086188ea00', '127.0.0.1', '2023-12-06 14:39:33'),
(40, '657088a27e743', '127.0.0.1', '2023-12-06 14:44:43'),
(41, '657088a27e743', '127.0.0.1', '2023-12-06 14:44:44'),
(42, '657088a27e743', '127.0.0.1', '2023-12-06 14:45:24'),
(43, '657088a27e743', '127.0.0.1', '2023-12-06 14:45:25'),
(44, '656eff26ca49a', '127.0.0.1', '2023-12-07 09:49:05'),
(45, '656eff26ca49a', '127.0.0.1', '2023-12-07 09:49:07'),
(46, '656c84e8f3c5b', '127.0.0.1', '2023-12-07 10:50:47'),
(47, '656c84e8f3c5b', '127.0.0.1', '2023-12-07 10:50:50');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `libelle`, `slug`, `color`, `created_at`) VALUES
('653af4dc72a8d', 'Actualité', 'actualite', '#ff0000', NULL),
('653af5ead6413', 'Economie', 'economie', '#2626ff', '2023-10-26 23:27:38'),
('653b20e7d1ae8', 'Sport', 'sport', '#d75828', '2023-10-27 02:31:03');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `user_id`, `article_id`, `contenu`, `created_at`) VALUES
(1, NULL, '65686e1f4ebbd', 'Animi adipisci unde. Fugiat asperiores ipsum recusandae ipsum soluta earum. Deserunt iste deleniti minus facere dolore.', '2023-11-30 13:45:59'),
(2, NULL, '65686e1f4ebbd', 'Quod quod dolore in nobis iste nam. Magnam labore facere quae accusamus consequatur sunt. Reprehenderit commodi quasi nesciunt vel fugiat est.\r\nIpsum assumenda hic voluptatum necessitatibus tempore non facilis nulla. Numquam velit quod suscipit modi est distinctio. Eos nostrum laborum et nobis.\r\nItaque aut esse repudiandae totam laborum repudiandae repellendus magnam. Nam nostrum harum inventore quibusdam. Aperiam possimus ab.', '2023-11-30 13:45:59'),
(3, NULL, NULL, NULL, '2023-11-30 21:21:50'),
(4, '6564f136e00a0', NULL, NULL, '2023-11-30 22:26:12'),
(5, '6564f136e00a0', NULL, NULL, '2023-11-30 22:28:59'),
(6, '6564f136e00a0', '65679cdf7447e', 'Vel earum quas voluptates natus non dolorum id hic. Consequuntur consequuntur maxime nostrum minus nemo blanditiis delectus tenetur. Molestias quae amet sint nam facere id molestias earum.', '2023-11-30 22:51:12'),
(7, '6564f136e00a0', '65679cdf7447e', 'relever le defit d\'ajouter un commentaire React.js', '2023-11-30 22:52:04'),
(8, '6564f136e00a0', '65686e1f4ebbd', 'un troisieme commentaire pour le poste de barth', '2023-11-30 22:54:35'),
(9, '6564f136e00a0', '655fc7c35beba', 'il faut que le component recharge auth', '2023-11-30 23:03:54'),
(10, NULL, '65679cdf7447e', 'Accusantium ad quaerat ab est fugiat consequatur magnam.', '2023-12-01 12:03:06'),
(11, '6564f136e00a0', '656c84e8f3c5b', 'laisser un commentaire sur un autre post', '2023-12-05 10:33:02'),
(12, '6564f136e00a0', '656c84e8f3c5b', 'deuxieme comment', '2023-12-05 10:33:52'),
(13, '6564f136e00a0', '656eff26ca49a', 'Voluptates debitis ut placeat nostrum unde fuga eaque eveniet consequuntur.', '2023-12-05 12:27:00'),
(14, '6564f136e00a0', '656eff0222755', 'ONajiute un commentaire à l\'agrihub', '2023-12-05 13:26:17'),
(15, '6564f136e00a0', '656eff0222755', 'on ajoute un commentaire avec sans reload de page', '2023-12-05 13:29:49'),
(16, '6564f136e00a0', '656eff0222755', 'voyons voir toutes les anneries sorties par ce ministre', '2023-12-05 13:33:03'),
(17, '6564f136e00a0', '656eff0222755', 'impeccablement commented ', '2023-12-05 13:49:56'),
(18, NULL, '65686e1f4ebbd', 'on veut tester le user anonymous', '2023-12-05 13:53:15'),
(19, '6564f136e00a0', '657086188ea00', 'Bonjour, je suis entièrement d\'accord avec ce texte inspirant', '2023-12-06 14:39:24'),
(20, '6564f136e00a0', '657088a27e743', 'IL N Y A PLUS DE PROBLEME AVEC LES COMMENTAIRES', '2023-12-06 14:45:12');

-- --------------------------------------------------------

--
-- Structure de la table `etiquette`
--

CREATE TABLE `etiquette` (
  `id` int(11) NOT NULL,
  `libelle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etiquette`
--

INSERT INTO `etiquette` (`id`, `libelle`) VALUES
(1, 'UNE'),
(2, 'GRANDE UNE'),
(3, 'télé travail');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_texte` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `option`
--

CREATE TABLE `option` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

CREATE TABLE `statut` (
  `id` int(11) NOT NULL,
  `libelle` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `statut`
--

INSERT INTO `statut` (`id`, `libelle`) VALUES
(1, 'brouillon'),
(2, 'planifié'),
(3, 'publié');

-- --------------------------------------------------------

--
-- Structure de la table `thumbnail`
--

CREATE TABLE `thumbnail` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) NOT NULL,
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `username`, `roles`, `password`, `nom`, `prenom`, `created_at`, `email`) VALUES
('6563db806e7e6', 'azalay', '[\"ROLE_ADMIN\"]', 'azerty', NULL, NULL, '2023-11-26 23:57:52', 'your.email+fakedata98528@gmail.com'),
('6564f136e00a0', 'fonctionnal', '[\"ROLE_ADMIN\"]', '$2y$13$tLoglV4jB3n5q9oNtLzqzeo8xAVKjhwZNamND.QXd72hmXdTAmJ5a', 'July', 'FATY', '2023-11-27 19:42:46', 'fakedata46466@gmail.com'),
('6564fcd3f25f5', 'lediteur', '[\"ROLE_EDITOR\"]', '$2y$13$YMdoFn1Bnd/v6l0Hz2h8Ve0e53nrI3N2mE7axHEChGxHJnD/VivFS', NULL, NULL, '2023-11-27 20:32:19', 'fakemail26981@gmail.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_23A0E66FDFF2E92` (`thumbnail_id`),
  ADD KEY `IDX_23A0E66A21214B7` (`categories_id`),
  ADD KEY `IDX_23A0E663569D950` (`featured_image_id`),
  ADD KEY `IDX_23A0E666BF700BD` (`status_id`),
  ADD KEY `IDX_23A0E661205AB98` (`etiquettes_id`),
  ADD KEY `IDX_23A0E66B03A8386` (`created_by_id`);

--
-- Index pour la table `article_view`
--
ALTER TABLE `article_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4EBF2C8F7294869C` (`article_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_67F068BCA76ED395` (`user_id`),
  ADD KEY `IDX_67F068BC7294869C` (`article_id`);

--
-- Index pour la table `etiquette`
--
ALTER TABLE `etiquette`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `statut`
--
ALTER TABLE `statut`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `thumbnail`
--
ALTER TABLE `thumbnail`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1D1C63B3F85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article_view`
--
ALTER TABLE `article_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `etiquette`
--
ALTER TABLE `etiquette`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `option`
--
ALTER TABLE `option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `statut`
--
ALTER TABLE `statut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E661205AB98` FOREIGN KEY (`etiquettes_id`) REFERENCES `etiquette` (`id`),
  ADD CONSTRAINT `FK_23A0E663569D950` FOREIGN KEY (`featured_image_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `FK_23A0E666BF700BD` FOREIGN KEY (`status_id`) REFERENCES `statut` (`id`),
  ADD CONSTRAINT `FK_23A0E66A21214B7` FOREIGN KEY (`categories_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_23A0E66B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `FK_23A0E66FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `thumbnail` (`id`);

--
-- Contraintes pour la table `article_view`
--
ALTER TABLE `article_view`
  ADD CONSTRAINT `FK_4EBF2C8F7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `FK_67F068BC7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `FK_67F068BCA76ED395` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
