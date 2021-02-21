-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Dim 21 Février 2021 à 17:24
-- Version du serveur :  10.1.47-MariaDB-0ubuntu0.18.04.1
-- Version de PHP :  7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ideal`
--

-- --------------------------------------------------------

--
-- Structure de la table `archive`
--

CREATE TABLE `archive` (
  `id` varchar(18) CHARACTER SET utf8 DEFAULT NULL,
  `year` varchar(74) CHARACTER SET utf8 DEFAULT NULL,
  `sujet` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `author` varchar(21) CHARACTER SET utf8 DEFAULT NULL,
  `organisme` varchar(178) CHARACTER SET utf8 DEFAULT NULL,
  `link` varchar(43) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `archive`
--

INSERT INTO `archive` (`id`, `year`, `sujet`, `author`, `organisme`, `link`) VALUES
('22', ' 2020', 'Construction d’une base de données lexicale pour les mots français abstraits et concrets. Contribution au projet ANR ALECTOR', 'Daria Goriachun', 'AMU ALLSH - Aix-Marseille Université - Faculté des Arts, Lettres, Langues et Sciences Humaines ,LPL - Laboratoire Parole et Langage', 'https://dumas.ccsd.cnrs.fr/dumas-03024192v1'),
('25', ' 2017', 'Catégorisation automatique d’actes de communication : les fils de discussion des pages de discussion Wikipédia', 'Anouk Birski', 'UT2J - Université Toulouse - Jean Jaurès', 'https://dumas.ccsd.cnrs.fr/dumas-01858638v1'),
('37', ' 2017', 'Détection automatique de la despécialisation pour un usage lexicographique. Le cas du domaine du sport.', 'Léa Delvenne', 'UT2J - Université Toulouse - Jean Jaurès', 'https://dumas.ccsd.cnrs.fr/dumas-01858652v1'),
('1', ' 2016', 'Maîtrise des transformations XML dans une chaîne de publication', 'Renaud Marchand', 'CNAM Midi-Pyrénées - Centre d\'enseignement Cnam Midi-Pyrénées', 'https://dumas.ccsd.cnrs.fr/dumas-01873339v1'),
('5', ' 2016', 'Maintenance et évolution d’application web pour l’industrie de l’aviation', 'Raphaël Gioda', 'UTLN SeaTech - Université de Toulon - École d’ingénieurs SeaTech', 'https://dumas.ccsd.cnrs.fr/dumas-01477801v1'),
('29', ' 2014', 'Projet TourInFlux. Annotation des expressions temporelles', 'Lucie Drat', 'UGA UFR LLASIC SLFLE  - Université Grenoble Alpes - UFR Langage, lettres et arts du spectacle, information et communication - Dpt Sciences du langage et français langue étrangère', 'https://dumas.ccsd.cnrs.fr/dumas-01068476v1'),
('12', ' 2013', 'Generation of polynomial inequalities as invariants', 'Yannick Zakowski', 'ENS Cachan Bretagne - École normale supérieure - Cachan, antenne de Bretagne ,IRISA - Institut de Recherche en Informatique et Systèmes Aléatoires', 'https://dumas.ccsd.cnrs.fr/dumas-00854834v1'),
('15', ' 2013', 'Formalisation et exécutabilité du langage \"EditionPattern\" au sein de la plate-forme Openflexo', 'Medhi Alaoui Belghiti', 'Télécom Bretagne - Brest ,IRISA - Institut de Recherche en Informatique et Systèmes Aléatoires', 'https://dumas.ccsd.cnrs.fr/dumas-00854869v1'),
('2', ' 2012', 'Hierarchical Topic Segmentation of TV shows Automatic Transcripts', 'Anca-Roxana Simon', 'INSA Rennes - Institut National des Sciences Appliquées - Rennes ,TEXMEX - Multimedia content-based indexing', 'https://dumas.ccsd.cnrs.fr/dumas-00725338v1'),
('7', ' 2012', 'Modèle dynamique comportemental dans le cadre de la gestion de la prise de parole', 'Michaël Bernard', 'CERV - Centre Européen de Réalité Virtuelle ,ENIB - École Nationale d\'Ingénieurs de Brest', 'https://dumas.ccsd.cnrs.fr/dumas-00725183v1'),
('11', ' 2012', 'Anonymisation de réseaux sociaux', 'Mohammed Ghesmoune', 'UR1 - Université de Rennes 1 ,S4 - System synthesis and supervision, scenarios', 'https://dumas.ccsd.cnrs.fr/dumas-00725254v1'),
('13', ' 2012', 'Defining an Information Flow Control Policy with Declassification and Countermeasures', 'Llorenç Garcia Cases', 'IRISA - Institut de Recherche en Informatique et Systèmes Aléatoires ,Télécom Bretagne - Brest', 'https://dumas.ccsd.cnrs.fr/dumas-00725237v1'),
('14', ' 2012', 'Vérification probabiliste de résultats d\'analyse statique', 'Antoine Bride', 'ENS Cachan Bretagne - École normale supérieure - Cachan, antenne de Bretagne ,CELTIQUE - Software certification with semantic analysis', 'https://dumas.ccsd.cnrs.fr/dumas-00725213v1'),
('19', ' 2012', 'Extraction d\'expressions polylexicales sur corpus arboré', 'Julien Corman', 'UGA UFR LLASIC SLFLE  - Université Grenoble Alpes - UFR Langage, lettres et arts du spectacle, information et communication - Dpt Sciences du langage et français langue étrangère', 'https://dumas.ccsd.cnrs.fr/dumas-00704873v1'),
('8', ' 2011', 'Exploration de la Grammaire Catégorielle Combinatoire Multimodale', 'Simon Delamarre', 'Telecom Bretagne - Rennes', 'https://dumas.ccsd.cnrs.fr/dumas-00636161v1'),
('9', ' 2011', 'Adapter le vocabulaire d\'un système de transcription automatique de la parole aux thèmes abordés', 'Florent Tissier', 'UR1 - Université de Rennes 1', 'https://dumas.ccsd.cnrs.fr/dumas-00636815v1'),
('10', ' 2011', 'Formalisation de l\'évaluation des dialogueurs automatiques', 'Carlo Baugé', 'Telecom Bretagne - Rennes', 'https://dumas.ccsd.cnrs.fr/dumas-00636146v1'),
('16', ' 2011', 'Détection automatique d\'erreurs d\'annotations pour améliorer les performances des algorithmes d\'apprentissage automatique', 'Carole Lemort', 'UR1 - Université de Rennes 1', 'https://dumas.ccsd.cnrs.fr/dumas-00636454v1'),
('20', ' 2011', 'Prise en compte de variables syntaxiques et textuelles dans l\'analyse sémantique distributionnelle automatique', 'Mickaël Galop', 'Grenoble 3 - UFR des Sciences du langage', 'https://dumas.ccsd.cnrs.fr/dumas-00631506v1'),
('30', ' 2011', 'Adaptation au domaine de la traduction automatique statistique', 'Marwen Azouzi', 'Grenoble 3 - UFR des Sciences du langage', 'https://dumas.ccsd.cnrs.fr/dumas-00631003v1'),
('31', ' 2011', 'Utilité, utilisabilité et amélioration du prototype EXXELANT', 'Emilie Charles', 'Grenoble 3 - UFR des Sciences du langage', 'https://dumas.ccsd.cnrs.fr/dumas-00631025v1'),
('32', ' 2011', 'Caractérisation des accents étrangers en utilisant des techniques de reconnaissance automatique de la parole', 'Mohamed Ben Jannet', 'Grenoble 3 - UFR des Sciences du langage', 'https://dumas.ccsd.cnrs.fr/dumas-00609869v1'),
('33', ' 2011', 'Recherche automatique d\'antériorités de brevets par la recherche de revendications et de segments proches potentiellement invalidants', 'Edmée Marazel', 'Grenoble 3 - UFR des Sciences du langage', 'https://dumas.ccsd.cnrs.fr/dumas-00631733v1'),
('39', ' 2011', 'Outils génériques pour l\'étiquetage morphosyntaxique de la langue arabe : segmentation et corpus d\'entraînement', 'Dhaou Ghoul', 'Grenoble 3 - UFR des Sciences du langage', 'https://dumas.ccsd.cnrs.fr/dumas-00631517v1'),
('40', ' 2011', 'Comment adapter une formation en français à un public hétérogène d\'étudiants internationaux ? Conception d\'un dispositif de Français sur Objectifs Universitaires à l\'Institut polytechnique de Grenoble', 'Valérie Samper', 'Grenoble 3 - UFR des Sciences du langage', 'https://dumas.ccsd.cnrs.fr/dumas-00578764v1'),
('0', ' 2010', 'Information Retrieval: From Language Models to Fuzzy Logic', 'Rima Harastani', 'ENS Cachan Bretagne - École normale supérieure - Cachan, antenne de Bretagne', 'https://dumas.ccsd.cnrs.fr/dumas-00530705v1'),
('3', ' 2010', 'Conception d\'un éditeur d\'annotations de documents textuels en bio-informatique', 'Hassiba Zidelkheir', 'CNAM Rhône-Alpes - Centre d\'enseignement Cnam Rhône-Alpes', 'https://dumas.ccsd.cnrs.fr/dumas-00523955v1'),
('4', ' 2010', 'Fouille d\'opinions', 'Sébastien Gillot', 'UR1 - Université de Rennes 1 ,IFSIC - Institut de Formation Supérieure en Informatique et Communication ,IRISA - Institut de Recherche en Informatique et Systèmes Aléatoires', 'https://dumas.ccsd.cnrs.fr/dumas-00530689v1'),
('18', ' 2010', 'Approche mixte pour la traduction automatique statistique', 'Haïtem Afli', 'Grenoble 3 - UFR des Sciences du langage', 'https://dumas.ccsd.cnrs.fr/dumas-00504848v1'),
('28', ' 2010', 'SMS et TAL : kL 1Trè* ? (*SMS et TAL : Quel intérêt ?)', 'Gaëlle Chabert', 'Grenoble 3 - UFR des Sciences du langage', 'https://dumas.ccsd.cnrs.fr/dumas-00561995v1'),
('35', ' 2010', 'Évaluation de solutions de traduction pour les services Semantia', 'Lucile Paroz', 'Grenoble 3 - UFR des Sciences du langage', 'https://dumas.ccsd.cnrs.fr/dumas-00677687v1'),
('38', ' 2010', 'Vers une analyse génétique de textes assistée par l\'informatique et le TAL : contextes et pistes exploratoires', 'Claire Lemaire', 'Grenoble 3 - UFR des Sciences du langage', 'https://dumas.ccsd.cnrs.fr/dumas-00516484v1'),
('41', ' 2010', 'Mise en place d\'un dispositif d\'apprentissage à distance pour de jeunes élèves nouvellement arrivés en France : adaptation et mise à niveau', 'Denis Cooremens', 'Grenoble 3 - UFR des Sciences du langage', 'https://dumas.ccsd.cnrs.fr/dumas-00564583v1'),
('43', ' 2010', 'Conception et élaboration d\'un module d\'activités auto-corrigées pour la compréhension orale du chinois (niveau A1.2) sur la plateforme Esprit', 'Jia Lu', 'Grenoble 3 - UFR des Sciences du langage', 'https://dumas.ccsd.cnrs.fr/dumas-00517728v1'),
('46', ' 2010', 'Modélisation d\'une ontologie de domaine et des outils d\'extraction de l\'information associés pour l\'anglais et le français', 'Laurie Serrano', 'Grenoble 3 - UFR des Sciences du langage', 'https://dumas.ccsd.cnrs.fr/dumas-00569002v1'),
('6', ' 1975', 'Conception et réalisation d\'un dictionnaire pour un analyseur interactif de langues naturelles', 'Ernest Grandjean', 'CNAM Grenoble - Centre d\'enseignement Cnam Grenoble ,IMAG - Institut d\'Informatique et de Mathématiques Appliquées de Grenoble', 'https://dumas.ccsd.cnrs.fr/dumas-00353117v1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
