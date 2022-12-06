-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 06 déc. 2022 à 11:26
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `colocation`
--

-- --------------------------------------------------------

--
-- Structure de la table `affectations`
--

CREATE TABLE `affectations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `path`, `titre`, `slug`, `auteur`, `description`, `short_description`, `isDelete`, `created_at`, `updated_at`) VALUES
(1, 'ImageArticle/1667948179.jpg', 'Étudiants et Covid : quelles répercussions ?', 'Étudiants-et-Covid-quelles-répercussions', 'Vincenzo Feest DVM', 'La crise sanitaire liée à la pandémie de Covid-19 a eu des répercussions sur la santé mentale des Français. Une étude a en outre démontré la fragilité des étudiants dans ce domaine.\n\n            En mars 2020, l\\’Organisation mondiale de la santé (OMS) déclare le Covid-19 en situation de pandémie. Les cas de personnes atteintes du virus se multiplient dans le monde et contraignent les gouvernements à prendre des mesures sans précédent : distanciation sociale, respect des gestes barrières, annulation en masse de manifestations sportives et culturelles, confinement, etc. Les établissements scolaires et universitaires ferment également leurs portes, au grand dam du corps enseignant et des étudiants poussés à suivre leurs études en distanciel et à rompre tout contact physique. Une situation inédite et inquiétante qui ne manque pas de générer du stress et de l’anxiété.\n\n\n\n            Étudiants et Covid, le lourd bilan\n            Au-delà de la maladie elle-même, dont les effets ont longtemps été imprévisibles, la pandémie de Covid-19 touche également la santé mentale des étudiants, de leurs enseignants et du personnel des établissements universitaires.\n\n            D’une manière générale, les épidémies et pandémies figurent en bonne place parmi les plus grandes craintes de l’humanité. Cette crainte touche inévitablement le mental des populations et provoque anxiété et dépressions. Certaines études d’avant-Covid ont démontré déjà que l’épidémie de SRAS (2002-2004) a eu des impacts psychologiques pendant plusieurs années après la fin de l’épidémie. Avec la pandémie du Covid-19, le problème a été exacerbé par les confinements qui ont contraint les personnes à l’isolement et la distanciation.\n\n            La population étudiante se révèle en outre une population exposée aux problèmes de santé mentale. En dehors même des situations de crises de grande ampleur, les étudiants connaissent des motifs d’anxiété très vifs et des cas de dépression, de par leur vie d’étudiant jalonnée d’examens et de remises en cause. En France, le suicide est la deuxième cause de mortalité chez les 15-25 ans.\n\n            A ce titre, des études ont été menées durant la pandémie de Covid-19 et les mesures de confinement adoptées sur tout le pays, pour tenter de déterminer si les étudiants étaient plus exposés à la détérioration de leur santé mentale que le reste de la population.\n\n            Les scientifiques de l\\’Institut national de la santé et de la recherche médicale (Inserm) et les chercheurs de l’Université de Bordeaux ont recueilli durant la pandémie les témoignages de plus de 3500 personnes. Celles-ci, recrutées à travers les réseaux sociaux, ont été divisées en deux groupes : les étudiants et les autres. Les deux groupes étaient équivalents en termes de pourcentage hommes/femmes et en proportion de personnes ayant des antécédents de problèmes psychologiques. L’étude a été réalisée entre mars 2020 et janvier 2021, une période qui couvre le premier et le deuxième confinement, avec dans l’intervalle le déconfinement mesuré de l’été 2020.\n\n            Les résultats de cette étude indiquent clairement que les étudiants ont été les plus touchés sur le plan mental :\n\n            Symptômes dépressifs : 36,6 % des étudiants, 20,1 % des non-étudiants\n\n            Symptômes d’anxiété : 27,5 % des étudiants, 16,9 % des non-étudiants\n\n            Pensées suicidaires : 12,7 % des étudiants, 7,9 % des non-étudiants\n\n            Des analyses plus poussées ont été faites sur la durée. Si les pourcentages restent stables chez les non-étudiants quelle que soit la période (premier confinement, déconfinement, deuxième confinement), on observe de plus grandes variations dans le groupe des étudiants. Les troubles psychologiques sont beaucoup plus élevés en période de confinement et notamment lors du deuxième (du 30 octobre au 15 décembre 2020). Si 36% des étudiants ont révélé des symptômes dépressifs durant le premier confinement, le pourcentage a bondi au-delà de 50% lors du deuxième confinement (alors qu’il n’a pas dépassé, dans les deux cas, les 25% chez les non-étudiants).\n\n            L’étude démontre ainsi d’importantes inégalités en période de pandémie, lesquelles de surcroît ont tendance à se creuser au fil du temps. La vulnérabilité des étudiants est donc avérée. En plus du stress habituel généré par la difficulté de suivre les études (et les difficultés matérielles y attenant), la pandémie et les confinements ont exacerbé l’anxiété et les états dépressifs.\n\n\n\n            Étudiants et covid : le gouvernement apporte son soutien contre les précarités\n            A la lumière de ces études, des mesures de prévention spécifiques doivent donc être prises envers les étudiants. Il faut notamment garder à l’esprit que le problème reste d’actualité même si les mesures de confinement n’ont plus cours. Les problèmes de santé mentale ont un impact sur la durée. Chez les étudiants, la détresse est toujours présente et reste plus élevée qu’avant le début de l’épidémie. Les risques de décrochage scolaire restent d’actualité, tout comme les symptômes de dépression et les pensées suicidaires. ', 'La crise sanitaire liée à la pandémie de Covid-19 a eu des répercussions sur la santé mentale des Français. Une étude a en outre démontré la fragilité des étudiants dans ce domaine.', 0, '2022-11-08 21:54:22', '2022-11-08 21:56:19'),
(2, 'ImageArticle/1667948211.jpg', 'Étudiants et Covid : quelles répercussions ?', 'Étudiants-et-Covidrépercussions', 'Elian Nader', 'La crise sanitaire liée à la pandémie de Covid-19 a eu des répercussions sur la santé mentale des Français. Une étude a en outre démontré la fragilité des étudiants dans ce domaine.\n\n            En mars 2020, l\\’Organisation mondiale de la santé (OMS) déclare le Covid-19 en situation de pandémie. Les cas de personnes atteintes du virus se multiplient dans le monde et contraignent les gouvernements à prendre des mesures sans précédent : distanciation sociale, respect des gestes barrières, annulation en masse de manifestations sportives et culturelles, confinement, etc. Les établissements scolaires et universitaires ferment également leurs portes, au grand dam du corps enseignant et des étudiants poussés à suivre leurs études en distanciel et à rompre tout contact physique. Une situation inédite et inquiétante qui ne manque pas de générer du stress et de l’anxiété.\n\n\n\n            Étudiants et Covid, le lourd bilan\n            Au-delà de la maladie elle-même, dont les effets ont longtemps été imprévisibles, la pandémie de Covid-19 touche également la santé mentale des étudiants, de leurs enseignants et du personnel des établissements universitaires.\n\n            D’une manière générale, les épidémies et pandémies figurent en bonne place parmi les plus grandes craintes de l’humanité. Cette crainte touche inévitablement le mental des populations et provoque anxiété et dépressions. Certaines études d’avant-Covid ont démontré déjà que l’épidémie de SRAS (2002-2004) a eu des impacts psychologiques pendant plusieurs années après la fin de l’épidémie. Avec la pandémie du Covid-19, le problème a été exacerbé par les confinements qui ont contraint les personnes à l’isolement et la distanciation.\n\n            La population étudiante se révèle en outre une population exposée aux problèmes de santé mentale. En dehors même des situations de crises de grande ampleur, les étudiants connaissent des motifs d’anxiété très vifs et des cas de dépression, de par leur vie d’étudiant jalonnée d’examens et de remises en cause. En France, le suicide est la deuxième cause de mortalité chez les 15-25 ans.\n\n            A ce titre, des études ont été menées durant la pandémie de Covid-19 et les mesures de confinement adoptées sur tout le pays, pour tenter de déterminer si les étudiants étaient plus exposés à la détérioration de leur santé mentale que le reste de la population.\n\n            Les scientifiques de l\\’Institut national de la santé et de la recherche médicale (Inserm) et les chercheurs de l’Université de Bordeaux ont recueilli durant la pandémie les témoignages de plus de 3500 personnes. Celles-ci, recrutées à travers les réseaux sociaux, ont été divisées en deux groupes : les étudiants et les autres. Les deux groupes étaient équivalents en termes de pourcentage hommes/femmes et en proportion de personnes ayant des antécédents de problèmes psychologiques. L’étude a été réalisée entre mars 2020 et janvier 2021, une période qui couvre le premier et le deuxième confinement, avec dans l’intervalle le déconfinement mesuré de l’été 2020.\n\n            Les résultats de cette étude indiquent clairement que les étudiants ont été les plus touchés sur le plan mental :\n\n            Symptômes dépressifs : 36,6 % des étudiants, 20,1 % des non-étudiants\n\n            Symptômes d’anxiété : 27,5 % des étudiants, 16,9 % des non-étudiants\n\n            Pensées suicidaires : 12,7 % des étudiants, 7,9 % des non-étudiants\n\n            Des analyses plus poussées ont été faites sur la durée. Si les pourcentages restent stables chez les non-étudiants quelle que soit la période (premier confinement, déconfinement, deuxième confinement), on observe de plus grandes variations dans le groupe des étudiants. Les troubles psychologiques sont beaucoup plus élevés en période de confinement et notamment lors du deuxième (du 30 octobre au 15 décembre 2020). Si 36% des étudiants ont révélé des symptômes dépressifs durant le premier confinement, le pourcentage a bondi au-delà de 50% lors du deuxième confinement (alors qu’il n’a pas dépassé, dans les deux cas, les 25% chez les non-étudiants).\n\n            L’étude démontre ainsi d’importantes inégalités en période de pandémie, lesquelles de surcroît ont tendance à se creuser au fil du temps. La vulnérabilité des étudiants est donc avérée. En plus du stress habituel généré par la difficulté de suivre les études (et les difficultés matérielles y attenant), la pandémie et les confinements ont exacerbé l’anxiété et les états dépressifs.\n\n\n\n            Étudiants et covid : le gouvernement apporte son soutien contre les précarités\n            A la lumière de ces études, des mesures de prévention spécifiques doivent donc être prises envers les étudiants. Il faut notamment garder à l’esprit que le problème reste d’actualité même si les mesures de confinement n’ont plus cours. Les problèmes de santé mentale ont un impact sur la durée. Chez les étudiants, la détresse est toujours présente et reste plus élevée qu’avant le début de l’épidémie. Les risques de décrochage scolaire restent d’actualité, tout comme les symptômes de dépression et les pensées suicidaires. ', 'La crise sanitaire liée à la pandémie de Covid-19 a eu des répercussions sur la santé mentale des Français. Une étude a en outre démontré la fragilité des étudiants dans ce domaine.', 0, '2022-11-08 21:54:22', '2022-11-08 21:56:51'),
(3, 'ImageArticle/1667948261.png', 'Comment rédiger un mémoire ?', 'Comment-rédiger-un-mémoire', 'Mrs. Alyce Emmerich', 'Vous entrez en dernière année et on vous demandera de rédiger un mémoire de fin d’études, puis d\'assurer sa soutenance. Qu\'est-ce qu\'un mémoire de fin d\'études ? Comment le rédiger ? Qu’est-ce qu’une soutenance ? Comment la préparer ?\n\n\n            Qu\'est-ce qu\'un mémoire de fin d\'études ?\n            Le mémoire de fin d’études est un document à préparer et à rédiger tout au long d’une année scolaire et qui doit être remis au printemps pour évaluation dans le cadre d’un diplôme. Il est demandé lors de la dernière année d’un cycle d’études et il permet d’évaluer ce qui en a été retenu, notamment en termes de recherche, de réflexion, de rédaction et de sens critique.\n\n\n            Quelles sont les étapes pour rédiger un mémoire ?\n            De la recherche du sujet jusqu’à la soutenance, la rédaction d’un mémoire de fin d’études passe par de nombreuses étapes. Aucune n’est à négliger.\n\n            Quel type de mémoire ?\n            Le type de mémoire dépend du domaine d’études que vous suivez et de leur niveau. Cela peut être un mémoire de recherche, un mémoire de stage, un mémoire de master, un mémoire universitaire, un mémoire de licence, un mémoire de droit, un mémoire en marketing, un mémoire scientifique, etc. Il existe pour chaque type de mémoire des conventions, des usages, des codes qu’il est important de connaître et de respecter.\n\n            Comment organiser la rédaction du mémoire ?\n            L’organisation de la rédaction d’un mémoire passe par l’établissement d’un calendrier, où seront notées les différentes étapes de l’entreprise. On peut imaginer le calendrier suivant :\n\n            Septembre-octobre : recherche du sujet du mémoire\n\n            Début novembre : prise de contact avec le directeur de mémoire\n\n            Novembre-décembre : recherches, collecte de données\n\n            Janvier-février : définir la problématique à aborder et établir un plan de mémoire (faire valider la problématique et le plan par le directeur de mémoire).\n\n            Mars-avril : rédaction du mémoire\n\n            Début mai : relecture, correction, mise en forme et impression du mémoire\n\n            Cocher la date de la remise du mémoire\n\n            Cocher la date de la soutenance du mémoire\n\n            Il ne faut pas hésiter à se renseigner auprès des établissements, des professeurs et des anciens élèves sur la méthodologie à suivre. Certains établissements proposent même une méthodologie-type.\n\n            Quel sujet aborder dans le mémoire ?\n            Le sujet du mémoire est bien entendu un élément central de sa rédaction. Règle première : Le sujet doit susciter un certain intérêt à son rédacteur si celui-ci veut le rendre passionnant à la lecture. Il faut en outre faire un choix réaliste qui rende l’écriture faisable. Dans certains cas, le sujet peut être proposé dans une liste par l’établissement ou bien cadré par des consignes.\n\n            Comment définir une problématique ?\n            La problématique est un élément clé du mémoire puisqu’il en constitue l’angle d’attaque. Pour avoir les bonnes réponses, il faut poser la bonne question. Pareil pour un mémoire, il faut poser la bonne problématique. Lorsque celle-ci a été définie, il est temps d’établir le plan du mémoire.\n\n            Comment établir le plan du mémoire ?\n            Une fois que la problématique a été définie, des questions en découlent auxquelles il faudra apporter les réponses. A partir de la question centrale que constitue la problématique, il faut définir des sous-questions, puis les lister et les regrouper dans un ordre logique. On peut privilégier les réponses “simples” au début et les réponses plus complexes par la suite (mais ce n’est pas une règle absolue).\n\n            Comment établir un plan de recherche pour le mémoire ?\n            Lorsque toutes les questions du sujet ont été définies, il faut chercher les réponses. L’étape de recherches est l’une des plus intenses dans la construction du mémoire. Les éléments collectés (données empiriques) lors de la recherche doivent être précis (croiser les éléments) et fiables (vérifier les sources).\n\n            Comment rédiger un mémoire de fin d’études ?\n            La rédaction du mémoire en tant que telle devient la partie la plus concrète du projet. Un mémoire représente entre 60 et 100 pages. Il comprend :\n\n            Une couverture\n\n            Une page de garde\n\n            Un sommaire (les titres et sous-titres doivent être explicites)\n\n            Une préface (regard personnel sur le sujet, sur le contexte de la rédaction du mémoire)\n\n            Les remerciements (aux professeurs, collègues, experts impliqués dans le projet)\n\n            Un résumé (objectif du mémoire, synthèse du travail mené)\n\n            Une introduction (annonce de la problématique et des questions qui en découlent)\n\n            Une partie théorique (concepts et idées préexistantes, postulat…)\n\n            Une partie pratique (expérience, observation personnelle, entretiens…)\n\n            Une conclusion (rappel de la problématique et réponse globale à celle-ci)\n\n            Une postface  (réflexion d’ordre personnel lié à la conclusion et au travail accompli)\n\n            Une bibliographie (référencement des sources selon des conventions à respecter)\n\n            Plusieurs annexes\n\n            Une fois rédigé l’ensemble, il reste à définir le titre du mémoire (accrocheur, percutant, mais approprié), soigner la mise en page (marges, polices de caractères, numérotation…), procéder à la relecture et aux corrections (soumettez la lecture à un proche, car on ne voit pas toujours ses propres fautes), imprimer le mémoire (garder un PDF de la version définitive) et, déjà, préparer la soutenance.', 'Vous entrez en dernière année et on vous demandera de rédiger un mémoire de fin d’études, puis d\'assurer sa soutenance. Qu\'est-ce qu\'un mémoire de fin d\'études ? Comment le rédiger ? Qu’est-ce qu’une soutenance ? Comment la préparer ?', 0, '2022-11-08 21:54:22', '2022-11-08 21:57:41'),
(4, 'ImageArticle/1667948310.jpg', 'Comment créer une entreprise quand on est étudiant ?', 'Comment-créer-une-entreprise-quand-on-est-étudiant', 'SIMON Judith', 'Il est tout à fait possible de créer une entreprise en étant étudiant. Comment s’y prendre ? Quelles sont les démarches administratives à entreprendre ? Quels sont les pièges à éviter ?\n\n\n            Créer son entreprise pendant ses années d’études, pourquoi pas ? Puisqu’il s’agit d’apprendre, autant associer la pratique à la théorie. Monter son activité, entreprendre les démarches, rechercher la rentabilité, payer les charges, rechercher des clients, trouver des collaborateurs, établir des partenariats… l’aventure ne manque pas d’intérêt. Et même si elle devait échouer, elle donnera beaucoup de leçons pour l’avenir.\n\n\n\n            Etudiants : comment créer votre entreprise ?\n            Un statut spécifique a été créé en 2014 à l’attention des étudiants qui souhaitent créer une entreprise : le statut étudiant-entrepreneur. Il permet à une personne qui suit ses études de monter son entreprise ou sa start-up tout en conservant le bénéfice de son statut d’étudiant.\n\n            Qu’est-ce que le statut étudiant-entrepreneur ?\n            Le statut étudiant-entrepreneur est ouvert à tout étudiant de moins de 28 ans détenteur du bac. Il s’agit d’un statut à renouveler tous les ans jusqu’à la fin de ses études. Voire même au-delà, puisque l’on peut conserver son statut quand on crée son entreprise juste après avoir été diplômé.\n\n            Depuis la création de ce statut, plus de 500 entreprises ont été créées par des étudiants. Pas moins de 6.000 étudiants entrepreneurs ont bénéficié de ce statut, et leur nombre augmente chaque année.\n\n            Quels sont les avantages du statut étudiant-entrepreneur ?\n            L’entrepreneur étudiant bénéficie d’aides tant pour son statut d’étudiant que pour celui d’entrepreneur. Il est accompagné tout au long de ses démarches de création d’entreprise. Il peut obtenir l’aménagement de son cursus étudiant en fonction de ses activités d’entrepreneur. Il peut également faire passer sa création d’entreprise dans le cadre d’un stage de fin d’études.\n\n            Si vous avez obtenu votre diplôme et que vous souhaitez monter votre entreprise, le statut étudiant-entrepreneur vous permet de conserver quelques aides aux étudiants, comme les bourses d’études, la sécurité sociale étudiante et les tarifs spécifiques dans les transports et les activités.\n\n            Ou l’étudiant doit-il s’adresser pour créer son entreprise ?\n            S’il souhaite créer son entreprise pendant ses études, l’étudiant doit s’adresser à un Pôle étudiants pour l’innovation, le transfert et l’entrepreneuriat (PEPITE) dans lequel lui sera proposé un accompagnement personnalisé. Le PEPITE est une structure spécifiquement conçue pour les projets de création d’entreprises par des étudiants : conseil, formation, financement, etc. Toutes les infos sont sur le site www.pepite-france.fr\n\n            Le PEPITE organise également des événements, les “Pépite Factory” qui permet de regrouper les entrepreneurs étudiants en salon, où il trouveront des espaces d’échange et de partage avec d’anciens étudiants entrepreneurs, ainsi qu’avec des entrepreneurs, des enseignants et toute forme de conseils. Ces événements permettent aussi de valoriser le statut étudiant-entrepreneur auprès des grandes entreprises et des établissements financiers.\n\n\n\n            Créer son entreprise en étant étudiant : les pièges à éviter\n            Créer une entreprise en étant étudiant ne manque pas de pièges et il est toujours bon d’en connaître les plus courants pour ne pas tomber bêtement dedans.\n\n            Mal penser son projet : Si une entreprise échoue, c’est parce que son projet a été mal pensé : concurrence trop vive, clientèle potentielle trop disparate, revenus trop faibles par rapport à l’investissement… Avant de créer une entreprise, il faut nécessairement faire une étude de marché puis un business plan.\n\n            Craindre l’échec : Entreprendre, c’est par nature s’exposer à l’échec. Mais l’échec n’est pas une raison pour ne pas entreprendre. L’échec est même souvent plus riche d’enseignements que la réussite. On apprend peu sans erreurs.\n\n            Être mal organisé : associer études et gestion d’entreprise nécessite un minimum de rigueur et d’organisation. L’entreprise nécessite une implication plus forte que pour un job salarié. Il s’agit donc de définir un planning adéquat qui ne néglige aucune des deux activités.\n\n            Vouloir tout tout de suite : La création d’une entreprise nécessite du temps et de la patience. Il est important de respecter chacune des démarches dans l’ordre avant de se lancer la tête dans le guidon.\n\n            Ne pas être réellement motivé : plus qu’une option, l’entreprenariat est un choix de vie. Il nécessite un investissement personnel important, qui conduit parfois à de longues heures de travail. En outre, le gain financier est souvent maigre au début. Il s’agit donc de ne pas se décourager.\n\n            La jouer en solo : une des erreurs majeures des jeunes entrepreneurs, qu’ils soient étudiants ou non, est de rester dans leur coin, sans faire connaître leur projet, souvent de peur d’être découragés par de mauvais conseils. Parlez de votre projet, faites le connaître, défendez-le. Cela vous permettra d’obtenir du soutien et de développer des opportunités.', 'Il est tout à fait possible de créer une entreprise en étant étudiant. Comment s’y prendre ? Quelles sont les démarches administratives à entreprendre ? Quels sont les pièges à éviter ?', 0, '2022-11-08 21:54:22', '2022-11-08 21:58:30'),
(5, 'ImageArticle/1667948363.webp', 'Comment devenir propriétaire ?', 'Comment-devenir-propriétaire', 'SIMON Ola', 'cgfvbhn', 'Vous souhaitez devenir propriétaire de votre logement. Quelles sont les étapes pour accéder à la propriété ? Faut-il nécessairement bénéficier de revenus confortables ? De quelles aides peut-on bénéficier ? On vous dit tout. ', 0, '2022-11-08 21:54:22', '2022-11-08 21:59:23'),
(6, 'ImageArticle/1667948398.png', 'Comment rédiger un mémoire ?', 'Comment-rédiger-un-mémoire', 'SIMON Fernando', 'Vous souhaitez devenir propriétaire de votre logement. Quelles sont les étapes pour accéder à la propriété ? Faut-il nécessairement bénéficier de revenus confortables ? De quelles aides peut-on bénéficier ? On vous dit tout.\n\n            Devenir propriétaire d’un logement est une démarche intéressante, notamment sur le plan économique. L’immobilier est une valeur sûre qui permet de voir l’avenir avec sérénité. Mais il ne faut pas faire n’importe quoi.\n\n\n\n            Quelles sont les étapes à suivre pour devenir propriétaire ?\n            Accéder à la propriété est avant tout une leçon de patience. Il faut prendre son temps dans chacune des étapes. Avant de songer à devenir propriétaire, il est important de bien définir son projet immobilier.\n\n            S’agit-il de l’acquisition de son lieu de résidence ou d’un investissement locatif ?\n\n            Est-ce que je souhaite une maison ou un appartement ?\n\n            Faut-il investir dans du neuf ou de l’ancien ?\n\n            Dois-je préférer une grande ville ou un logement en campagne ?\n\n\n            Première étape : le budget\n            Une fois le projet immobilier bien défini, il faut établir un budget avec comme principale interrogation : combien suis-je prêt à donner chaque mois ? Combien de temps ? Il faut donc tenir compte de vos revenus et des éventuelles aides qui peuvent d’agréger.\n\n            Deuxième étape : la recherche\n            Lorsque vous avez établi un budget, il est temps de passer à la recherche du logement proprement dit. Vous pouvez démarcher les agences immobilières qui effectueront les recherches selon votre budget et la nature de votre projet. Vous pouvez également faire la recherche sur internet. Les deux démarches ne sont pas incompatibles, bien au contraire.\n\n            Troisième étape : le compromis\n            Quand vous avez trouvé le logement qui correspond à votre recherche, vous devez faire une offre d’achat au vendeur du bien. Quand celui-ci l’accepte, vous signez avec lui le compromis de vente chez le notaire. Le logement vous est ainsi réservé, et vous êtes tenu de l’acheter… sauf si vous ne parvenez pas à obtenir le financement.\n\n            Quatrième étape : le financement\n            Le compromis de vente signé, il est temps de démarcher les banques pour financer le projet d’accession à la propriété. Il est préférable de s’adresser à un courtier en crédit immobilier lequel fera la recherche du financement le plus adapté à votre situation, en tenant compte des différentes aides que vous pourrez obtenir.\n\n            Cinquième étape : l’achat\n            Lorsque le prêt immobilier a été accordé, il reste à passer chez le notaire pour signer l’acte de vente. Vous êtes enfin devenu propriétaire.\n\n\n\n            Quel salaire gagner pour être propriétaire ?\n            Lorsque vous êtes salariés et/ou que vous pouvez justifier de revenus réguliers, vous pouvez prétendre à devenir propriétaire et vous lancer dans une démarche d’accession à la propriété.\n\n            Ce n’est pas le montant du salaire en lui-même qui détermine si vous pouvez être propriétaire, mais bien ce que vous serez en capacité de rembourser si vous contractez un emprunt. En pratique, ce montant que vous rembourserez chaque mois ne devra pas dépasser un tiers de vos revenus mensuels.\n\n\n\n            Quelles sont les aides pour l\'accès à la propriété ?\n            De nombreux dispositifs sont proposés aux personnes qui souhaitent devenir propriétaires d’un bien immobilier.\n\n            La location-accession\n            La location-accession est une démarche qui donne au locataire la possibilité d’acheter le logement qu’il occupe après une certaine période de location. C’est un dispositif qui permet aux ménages qui n’ont pas d’apport personnel de devenir propriétaire de leur logement. Créée en 1984, la location-accession est courante dans les organismes de HLM, mais peut se pratiquer dans plusieurs autres types de locations.\n\n            L’ANRU\n            L’Agence nationale pour la rénovation urbaine (ANRU) propose une aide aux personnes qui souhaitent acquérir un logement dans les zones urbaines en cours de réhabilitation. Le dispositif propose notamment un taux de TVA réduit à 5,5%. Consulter le site www.anru.fr\n\n            Le prêt à taux zéro\n            Le prêt à taux zéro (PTZ) est la formule de prêt immobilier la plus populaire. Elle permet au primo-accédant de financer une partie de son acquisition sans avoir à payer d’intérêts. Voir la page consacrée au prêt à taux zéro (PTZ) sur le site du Service Public.\n\n            Le prêt accession d’Action Logement\n            Action Logement propose un prêt accession avec un taux de 1% aux salariés des entreprises du secteur privé non agricole (de 10 salariés ou plus) qui souhaitent accéder à la propriété. Tout salarié peut prétendre à ce dispositif quelque soit son ancienneté dans l’entreprise et le type de contrat de travail (CDI, CDD, etc.).\n\n            La prime accession d’Action Logement\n            Action Logement vous permet également d’obtenir une prime accession de 10.000 € pour aider les primo-accédant à acquérir un logement neuf. Cette subvention est ouverte aux salariés des entreprises du secteur privé non agricole quelque soit le type de contrat de travail et l’ancienneté.\n\n            Le prêt Accession Sociale', 'Vous souhaitez devenir propriétaire de votre logement. Quelles sont les étapes pour accéder à la propriété ? Faut-il nécessairement bénéficier de revenus confortables ? De quelles aides peut-on bénéficier ? On vous dit tout. ', 0, '2022-11-08 21:54:22', '2022-11-08 21:59:58'),
(7, 'ImageArticle/1667948429.png', 'Classement 2022 des écoles d\'ingénieurs', 'Classement-2022-des-écoles-ingénieurs', 'GOGO Ola', 'Quelles sont les meilleures écoles d’ingénieurs de France ? Quelles sont celles qui progressent, qui régressent ? Vite, voici le classement 2022 des meilleures écoles d\'ingénieurs en France.\n\n            Chaque année, le site www.letudiant.fr publie un classement des écoles françaises d’ingénieurs. Ce palmarès toujours très attendu permet de distinguer l’excellence de l’enseignement français et permet aux étudiants d’affiner leur choix pour poursuivre leurs études.\n\n\n\n            Quels critères pour classer les écoles d’ingénieurs ?\n            Les enquêteurs ont choisi d’étudier 172 écoles d’ingénieurs afin d’en prélever pour chacune une cinquantaine d’indicateurs qui permettront d’effectuer un classement à l’échelle nationale. Aucune distinction n’est faite entre établissements publics ou privés. Ces établissements doivent être habilités par la Commission des titres d’ingénieurs (CTI) et doivent délivrer le Diplôme d’Ingénieur. Les cycles ingénieurs mentionnés ont le grade de master. Ce sont des écoles post-bac (cursus de cinq ans) ou post-prépa (cursus de trois ans).\n\n            Les quatre critères de base sont l’excellence académique, l’ouverture internationale, la proximité avec les entreprises et l’ouverture aux nouveaux publics. Chacun de ces grands thèmes contiennent une douzaine de sous-critères. En 2022, parmi les nouveaux critères s’est ajouté celui de l’engagement environnemental des établissements. Ceux-ci doivent obtenir le label DD&RS (développement durable et responsabilité sociétale) et leurs bâtiments doivent être certifiés HQE (haute qualité environnementale). Leur présence dans le classement THE Impact (Times Higher Education) constitue également un atout.\n\n\n\n            Les meilleures écoles d’ingénieurs de France\n            Le classement des écoles d\'ingénieurs de France compte 172 établissements. Plusieurs écoles ont demandé à ne pas y participer. D’autres n’y sont pas encore car ouvertes trop récemment.\n\n            L’année scolaire 2020-2021 a été marquée par la crise sanitaire avec les deux confinements qui ont obligé la mise en place de cours à distance. Plusieurs événements présentiels ont été annulés, ce qui a fait perdre des points à bon nombre d’établissements. D’autres au contraire en ont gagné en faisant preuve de capacité d’adaptation, notamment dans l’utilisation des outils de visioconférence.\n\n            Nous vous présentons les vingt-trois premiers, ceux qui ont obtenu au moins 40 points au classement général. Le classement complet se trouve sur le site de l’Etudiant. Le podium reste le même qu’en 2021, avec l\'École Polytechnique (Palaiseau) sur la plus haute marche, suivi de Télécom Paris (Palaiseau) et CentraleSupélec (Gif-sur-Yvette).', 'Quelles sont les meilleures écoles d’ingénieurs de France ? Quelles sont celles qui progressent, qui régressent ? Vite, voici le classement 2022 des meilleures écoles d\'ingénieurs en France.', 0, '2022-11-08 21:54:22', '2022-11-08 22:00:29'),
(8, 'ImageArticle/1667948458.jpg', 'Comment louer son appartement en courte durée ?', 'Comment-louer-son-appartement-en-courte-durée', 'HULEUR Fernando', 'Grâce à l’émergence de plateformes telles AirBnB, louer un logement de manière temporaire est devenu un usage courant. Chacun sait désormais comment louer son appartement sur une courte durée. Il y a toutefois bien des choses à connaître sur le plan législatif et fiscal avant de se lancer.\n\n\n\n            Qu\'est-ce qu\'une location de courte durée ? Définition\n            Une location s’entend “de courte durée” ou “temporaire” lorsque son occupant n’en fait pas sa résidence principale. L’occupant reste entre une ou plusieurs nuits, jusqu’à plusieurs mois, mais n’a pas vocation à rester dans le logement.\n\n            Le logement loué est une location meublée. La location temporaire ou de courte durée s’adresse aux gens dit “de passage” : les touristes, les professionnels itinérants et les personnes en situation de transition entre deux logements.\n\n\n\n            Comment mettre sa résidence principale en location de courte durée ?\n            Votre résidence principale, selon la loi, est celle que vous occupez durant au moins huit mois dans l‘année. Ce qui induit que vous pouvez louer votre résidence principale pendant quatre mois maximum durant l’année, soit 120 jours.\n\n            Ce sont les communes qui décident si une location temporaire doit être déclarée ou non. Il est préférable de se renseigner à la Mairie avant d’entreprendre toute démarche. Paris, par exemple, demande qu’une résidence principale faisant l’objet d’une location de courte durée obtienne un numéro d’enregistrement. Celui-ci doit figurer notamment sur les annonces de la location, la Ville de Paris peut demander la suppression de l’annonce si le numéro d’enregistrement n’y figure pas.\n\n\n\n            Comment mettre sa résidence secondaire en location de courte durée ?\n            Si c’est votre résidence secondaire que vous souhaitez louer en courte durée, la démarche sera autrement plus compliquée. Plus la ville où se situe la résidence sera grande, plus il sera nécessaire de déclarer la location en mairie, de remplir une demande d’autorisation de changement d’usage et même de se plier à la règle de compensation.\n\n            Puisqu’il ne s’agit pas de votre résidence principale, vous avez le droit de la louer plus de 120 jours dans l’année. Toutefois, la déclaration à la Mairie sera obligatoire (quelle que soit la commune).\n\n            Pour effectuer cette déclaration, vous serez tenu de fournir :\n\n            Votre nom, adresse mail et adresse postale du domicile principal,\n\n            L’adresse du logement en location, le numéro de taxe d\'habitation auquel il est rattaché, le nombre de pièces, le nombre de lits et son classement de la qualité du meublé de tourisme,\n\n            Les périodes durant lesquelles le logement sera mis en location\n\n            Les grandes agglomérations, notamment les villes de plus de 200.000 habitants (et celles de la région parisienne), exigent en outre de remplir une demande d’autorisation de changement d’usage du logement. Cette déclaration est limitée dans le temps. La durée de validité varie selon les villes. Lorsque l’autorisation prend fin, le logement retrouve son statut initial, et il est nécessaire de refaire une demande d’autorisation de changement d’usage s’il on souhaite louer à nouveau le logement.\n\n            Ce n’est pas fini. Les grandes villes exigent également de vous soumettre à la règle de compensation : vous devez acheter un local de surface équivalente à votre logement, ceci afin que la ville compense la perte d’un logement principal. ', 'Grâce à l’émergence de plateformes telles AirBnB, louer un logement de manière temporaire est devenu un usage courant. Chacun sait désormais comment louer son appartement sur une courte durée. Il y a toutefois bien des choses à connaître sur le plan législatif et fiscal avant de se lancer. ', 0, '2022-11-08 21:54:22', '2022-11-08 22:00:58'),
(9, 'ImageArticle/1667948494.jpg', 'Pourquoi choisir une résidence étudiante ?', 'Pourquoi-choisir-une-résidence-étudiante', 'DOSSOU Jean', 'Le premier choix des étudiant(e)s en matière de logement est la résidence étudiante. A tel point que la demande est largement supérieure à l’offre. Il faut dire que cette solution, moins onéreuse qu’un logement classique, apporte tout ce dont on a besoin pour poursuivre ses études. La résidence étudiante est une solution agréable et pratique pour sa proximité, sa tranquilité et les facilités qu’elle offre. Elle a également le don de rassurer les parents.\n\n            Logements de proximité\n\n            Les résidences étudiantes se trouvent juste à côté du lycée ou de l\'université. Cela peut être pratique si l’on ne connaît pas encore bien la ville dans laquelle on vient de débarquer. Loger tout près des lieux de cours veut également souvent dire proche des commerces et bien desservi par les transports en commun.\n\n            On trouve généralement à proximité des résidences étudiantes et des universités le restaurant universitaire et de nombreux services dédiés aux étudiant(e)s. Un cadre très pratique dans les premiers jours et surtout très sécurisant.\n\n            La résidence étudiante est très pratique car en plus d’être proche des lieux d’études, elles disposent d’un(e) gestionnaire qui peut aider les étudiant(e)s dans leurs démarches et leurs questionnements du quotidien. Rompu(e) à l’administration des formalités du monde étudiant, il ne faudra pas hésiter à lui poser toutes les questions : il (ou elle) aura toutes les réponses. C’est toujours sympa d’avoir auprès de chez soi quelqu’un qui sait tout.\n\n            Un chez-soi 100% étudiant\n\n            Contrairement aux appartements et autres logements, les résidences étudiantes ont été pensées pour les étudiant(e)s. Aussi bien en termes de budget que de confort. S’il ne s’agit que d’une petite chambre à priori, celle-ci est meublée et parfaitement fonctionnelle. Elle sépare idéalement les moments essentiels : étudier, manger et dormir. On trouve donc un lit, un coin cuisine et un bureau, chacun de ces éléments étant disposé de façon à ce que l’un n’empiète pas sur l’autre. C’est important : Le bureau ne doit pas servir de table de cuisine. Le lit ne doit pas être un espace de travail.\n\n            D’autres meubles au contraire sont parfaitement mobiles ce qui permet d’adapter la configuration de la chambre à toute situation. Le logement dispose d’étagères et de placards qui permettent de ranger beaucoup de choses, notamment ses habits et ses livres. Selon les résidences, les salles de bains peuvent être individuelles ou communes.\n\n            Les logements étudiants sont pensés pour les besoins de l’étudiant, pour son équilibre et sa tranquillité. Les résidences disposent d’un accès collectif à internet, gratuit et immédiat. Pas besoin de contacter un opérateur et de prendre une box avec abonnement.\n\n            Au coeur de la vie étudiante\n\n            La résidence permet d’être constamment connecté à la vie étudiante. On partage notre vie avec d’autres personnes du même âge dans la même situation. On peut être amené à côtoyer des personnes d’origine étrangère ou de culture différente, ce qui est toujours très enrichissant. Tout en préservant son chez-soi, on est amené à participer aux événements organisés sur les lieux ou dans un périmètre proche.\n\n            Les résidences étudiantes sont pour la plupart dotées d\'espaces de co-working qui permettent les travaux d’étude en commun et d\'organiser quelques moments conviviaux comme des pots d’anniversaire, des repas en commun ou toute sorte d\'événement.\n\n            Au bout d’une année de résidence étudiante, rien n’empêche si on le souhaite de rechercher un logement classique dans une ville que l’on connaît désormais bien. Si le bail d’un logement étudiant est convenu pour un an, il est tout à fait possible d’y mettre fin en cours d’année, à condition bien entendu de respecter le préavis d’un mois.\n\n            Comment faire une demande ?\n\n            Pour demander un logement dans une résidence étudiante, il faut établir un dossier social étudiant (DSE) à partir du site www.messervices.etudiant.gouv.fr ou sur des sites spécialisés tels que www.location-etudiant.fr', 'Le premier choix des étudiant(e)s en matière de logement est la résidence étudiante. A tel point que la demande est largement supérieure à l’offre. Il faut dire que cette solution, moins onéreuse qu’un logement classique, apporte tout ce dont on a besoin pour poursuivre ses études.', 0, '2022-11-08 21:54:22', '2022-11-08 22:01:35'),
(10, 'ImageArticle/1667948526.jpg', 'Avez-vous bien assuré votre logement étudiant ?', 'Avez-vous-bien-assuré-votre-logement-étudiante', 'SIMON Olivier', 'Vous avez enfin trouvé le logement que vous occuperez durant (une partie de) vos études. Il est temps désormais de contracter une assurance habitation. Que vous soyez dans une résidence étudiante (à l\'université ou en privé), en location dans un appartement ou une chambre, en colocation ou en sous-location, l’assurance habitation est obligatoire. Celle-ci vous permettra de couvrir les frais si vous êtes responsable de dégradation, notamment en cas d’incendie, d’inondation ou d’explosion. Car cela n’arrive pas qu’aux autres...\n\n            Au moment de signer le contrat de location, le propriétaire bailleur vous demandera très probablement une attestation d’assurance. Celle-ci vous aura été transmise par votre assureur. Un contrat d’habitation étant valable un an, l’attestation sera à présenter à chaque renouvellement de l’assurance. Sans assurance habitation, le propriétaire bailleur est en droit de résilier le contrat de location.\n\n            Une assurance habitation, combien ça coûte ?\n\n            Pour un étudiant, l’assurance habitation coûte rarement plus de 150,00 € par an. Ce tarif est fixé en fonction de plusieurs paramètres : la zone géographique (il y a des villes plus chères que d’autres...), la nature du logement (un appartement, une maison, une chambre…), sa taille, le nombre de pièces, l’ancienneté du bâtiment, le nombre d’occupants, la valeur des biens que vous souhaitez assurer avec le logement (mobilier, équipement...).\n\n            Le tarif varie donc en fonction du logement, mais aussi en fonction… de la compagnie d’assurance à laquelle vous vous adressez. C’est pourquoi il est préférable de démarcher plusieurs assurances et de leur demander à chacune un devis, établi sur des critères comparables. Vous pourrez ensuite choisir le plus intéressant.\n\n            Vous trouverez plusieurs sites internet qui vous permettent de comparer les devis :', 'Vous avez enfin trouvé le logement que vous occuperez durant (une partie de) vos études. Il est temps désormais de contracter une assurance habitation. Que vous soyez dans une résidence étudiante (à l\'université ou en privé), en location dans un appartement ou une chambre,', 0, '2022-11-08 21:54:22', '2022-11-08 22:02:06'),
(11, 'ImageArticle/1667948562.jpg', 'Étudiants : pour ou contre le retour des cours en présentiel', 'Étudiants-pour-ou-contre-le-retour-des-cours-en-présentiel', 'TITI Fernando', 'Le retour des étudiants en présentiel dans les grandes écoles est un sujet fort sensible. Il y a d’une part la volonté de revenir à une “vie normale” faite de présence physique et d’échanges humains, et de l’autre la menace toujours présente d’un virus particulièrement contagieux et la contrainte d’une application stricte des gestes barrières.\n\n            Un retour à petites doses ?\n\n            Le chef de l’Etat lui-même s’est risqué à proposer un retour “à petites doses” des étudiants dans leurs établissements, si possible dès le début du mois de février. Une annonce qui a été accueillie avec circonspection dans le monde étudiant.\n\n            La ministre de l’enseignement supérieur avait proposé dès le 19 décembre 2020 une reprise des cours en présentiel pour janvier en escomptant une amélioration de la situation sanitaire. Peine perdue. Pour le moment, seules les universités ont été rouvertes le 25 janvier aux travaux dirigés en demi-groupe des étudiants de première année.\n\n            Le Premier ministre quant à lui n’oublie jamais de ponctuer l’annonce de ses décisions par un sempiternel “si la situation sanitaire le permet” qui autorise implicitement tout changement de cap.\n\n            Demi-jauge ou quart de jauge ?\n\n            Du côté du corps médical, on se montre plutôt favorable au retour au présentiel. Les médecins soulignent l\'anxiété que subissent les étudiants depuis le début des mesures et les nombreux cas de dépressions que cela a provoqué. Un retour à une vie sociale moins virtuelle est devenu selon eux une urgence. Le conseil scientifique préconise donc un retour en présentiel “en demi-jauge ou en quart de jauge”.\n\n            Les présidents d’universités réfutent quant à eux l’idée que leurs établissements sont “des lieux de très grande circulation du virus” comme l’avait annoncé le gouvernement en octobre 2020. Ils estiment que les amphithéâtres permettent de respecter les protocoles sanitaires et d’assurer des cours en toute sécurité. En outre, les services de santé universitaires ont désormais à leur disposition la possibilité de réaliser des tests de dépistage au sein même des établissements.\n\n            Les enseignants s’inquiètent pour leur part des risques de décrochage qui peuvent atteindre une quantité largement supérieure à celles des autres années. Beaucoup ont constaté impuissants à quelques chutes spectaculaires d\'élèves qui avaient du mal à suivre avec attention les cours en ligne.\n\n            Les quelques retours entre soulagement et scepticisme\n\n            Quid, enfin, des étudiants qui sont après tout les premiers concernés par un retour ou non des cours en présentiel ? Le scepticisme semble prendre le pas chez les étudiants qui ont pu reprendre en demi-groupe leurs travaux dirigés le 25 janvier. Certains avouent que ce retour semble bien provisoire puisqu’à peine assis à leur pupitre, ils ont entendu les médias annoncer la possibilité d’un troisième confinement (qui a été reporté depuis).\n\n            En attendant, ce retour à une vie normale a été apprécié. Suivre des cours dans l’ambiance travailleuse des campus est beaucoup plus stimulant que ceux dispensés en ligne que l’on suit seul chez soi. Même si les contraintes sanitaires limitent les interactions avec les autres élèves et les enseignants.\n\n            En dépit de l’incertitude qui règne à propos du virus et de son évolution, tout le monde souhaite un retour rapide en présentiel. La priorité sera donnée aux étudiants de trouvant à des périodes clés de leur parcours. Les première année mais aussi ceux qui bouclent leur cursus ou qui sont en troisième année de licence ou de master.', 'Le retour des étudiants en présentiel dans les grandes écoles est un sujet fort sensible. Il y a d’une part la volonté de revenir à une “vie normale” faite de présence physique et d’échanges humains, et de l’autre la menace toujours présente d’un virus particulièrement contagieux et la contrainte d’une application stricte des gestes barrières.', 0, '2022-11-08 21:54:22', '2022-11-08 22:02:42');
INSERT INTO `articles` (`id`, `path`, `titre`, `slug`, `auteur`, `description`, `short_description`, `isDelete`, `created_at`, `updated_at`) VALUES
(12, 'ImageArticle/1667948604.webp', 'Logement étudiant : pensez à louer dans l’immobilier neuf', 'Logement-étudiant-pensez-à-louer-dans-immobilier-neuf', 'SIMON TOTO', 'Chaque année, dans les grandes villes de France, les étudiants et bacheliers se mettent à la recherche d’un appartement. Les petites surfaces telles que les studios et les deux pièces sont les plus recherchées, bien que les colocations demandent à avoir plusieurs chambres. Et chaque année, quand vient l’été, la course à la recherche immobilière débute. Les plateformes de locations entre particuliers tournent à plein régime et les agences se retrouvent submergées de demandes.\n\n            Si l’ancien a l’avantage de présenter un cachet et un certain charme au sein des centres-villes, il n’est pas toujours aux dernières normes de construction. Avec une isolation phonique et thermique d’un autre temps, ces logements étudiants présentent des factures énergétiques élevées, en plus des désagréments liés au bruit de voisinage.\n\n            L’immobilier neuf quant à lui offre de nombreuses prestations : économiques, écologiques et modernes. Par exemple, un appartement neuf à Toulouse, ville étudiante par excellence, bénéficiera des dernières normes environnementales de construction, des prestations tout confort et d’une consommation énergétique plafonnée.\n\n            Louer un logement étudiant en France\n\n            En France, louer un logement étudiant peut s’avérer être un véritable casse-tête, autant pour les locataires que pour les propriétaires-bailleurs.\n\n            Du côté des propriétaires, trouver un locataire solvable et sérieux relève d’un défi bien souvent annuel. D’autant plus lorsqu’on ne délègue pas la location de son bien à une agence. S’occuper de la mise en location, de la publication d’une annonce sur un site web, effectuer les visites, l’entretien de l’appartement… Pour les logements anciens, cela peut très vite mobiliser un temps considérable.\n\n            Les logements neufs ont cet avantage de ne nécessiter aucun travaux dans les premières années de location.\n\n            En ce qui concerne les locataires, l’épine se trouve plus dans le montant du loyer et l’emplacement de l’appartement. Les logements au loyer raisonnable, à proximité des commodités ou du lieu d’étude se louent rapidement. À peine l’annonce publiée que le bien reçoit déjà plusieurs demandes de visites.\n\n            Les avantages des logements étudiants dans l’immobilier neuf\n\n            Les appartements étudiants neufs possèdent de nombreux atouts :\n\n            Un confort en termes de chauffage et d’isolation phonique,\n            Une consommation énergétique limitée,\n            Un emplacement généralement à proximité des transports et des commodités,\n            Des loyers plafonnés.\n            Des loyers plafonnés pour les logements étudiants neufs\n\n            Dans l’immobilier neuf, les investisseurs ont recours au dispositif Pinel qui leur permet de défiscaliser leur achat en échange d’une période de location donnée. Pour un appartement au prix de 300 000 €, loué sur une durée maximale de 12 ans, la réduction d’impôt pourra s’élever jusqu’à 63 000 €. Ajoutés à cela, les revenus locatifs, l’investisseur profite alors d’une opération immobilière plus que rentable.\n\n            Toutefois, la loi Pinel impose des loyers plafonnés, revus chaque année. En 2020, le montant des loyers Pinel a été fixé à :\n\n            Montants des loyers Pinel en 2020 en fonction du zonage\n\n            Zone A\n\n            17,43 €/m²/mois\n\n            Zone A bis\n\n            12,95 €/m²/mois\n\n            Zone B1\n\n            10,44 €/m²/mois\n\n            Les locataires aux revenus trop élevés pour les logements sociaux, mais pas assez pour le marché immobilier traditionnel, peuvent alors se tourner vers le Pinel. Toutefois, si le dispositif plafonne les loyers, il impose également des conditions de ressources aux candidats locataires.\n\n            Sylvain souhaite quitter son logement étudiant jugé trop vétuste pour un appartement neuf à Toulouse. Le Pinel à Toulouse impose un loyer maximal de 10,44 €/m²/mois puisque la métropole est classée en zone B1.', 'Chaque année, dans les grandes villes de France, les étudiants et bacheliers se mettent à la recherche d’un appartement. Les petites surfaces telles que les studios et les deux pièces sont les plus recherchées, bien que les colocations demandent à avoir plusieurs chambres. Et chaque année, quand vient l’été, la course à la recherche immobilière débute.', 0, '2022-11-08 21:54:22', '2022-11-08 22:03:24'),
(13, 'ImageArticle/1667948633.jpg', 'Focus Aides au logement', 'Focus-Aides-au-logement', 'SIMON GBOSSI', 'Pour suivre ses études, l’étudiant(e) doit parfois quitter sa région d’origine et son domicile familial. Il ou elle se trouve contraint de louer son propre logement, ce qui représente un des foyers de dépenses les plus importants de sa vie d\'étudiant(e).\n\n            Il existe toutefois de nombreuses aides qui permettent à l’étudiant(e) de préserver son budget. Il faut juste savoir frapper aux bonnes portes. Notamment celle de la CAF (Caisse des Allocations Familiales), mais aussi celle des organisation spécifiques comme Action Logement.\n\n            La CAF, les APL, ALF et ALS\n\n            Auprès de la CAF, il est assez simple d’obtenir une aide personnalisée au logement (APL) ou bien l’allocation de logement familiale (ALF), ou encore l’allocation de logement sociale (ALS). Pour effectuer cette démarche, vous trouverez toutes les infos utiles sur le site de la CAF.\n\n            Le dossier de demande d’aide APL, ALF ou ALS doit être adressé à la CAF dès les premiers jours d’occupation du nouveau logement. Le plus tôt sera le mieux, car ces allocations n’ont pas d’effet rétroactif.\n\n            Si vous êtes éligibles à ces aides, il est important de garder à l’esprit que celles-ci ne sont versées aux étudiant(e)s que lors de la période scolaire. Elles sont suspendues durant l’été, sauf si vous prévenez la CAF que vous conservez le logement durant la période d’été et plus tard. Il est donc important de faire cette déclaration en fin d’année universitaire via votre espace personnel sur le site le la CAF. En cas d’oubli, les versements s’arrêtent en juin.\n\n            Le Fonds de Solidarité au Logement\n\n            Le FSL (Fonds de Solidarité au Logement) est une mesure de l’état qui propose une aide financière pour les personnes, étudiant(e)s ou autres, confrontés à des difficultés alors qu’elle a besoin d’accéder à un logement. Ce dispositif permet de payer le dépôt de garantie lorsque l’on accède au logement, mais également de régler les factures d’eau, de gaz, d\'électricité quand le besoin s’en fait sentir. Toutes les infos sont sur le site www.aide-sociale.fr\n\n            Action Logement\n\n            Vous pouvez également vous adresser auprès d’Action Logement, un organisme chargé de faciliter l’accès au logement afin de favoriser l’emploi. Action Logement propose notamment l’aide Mobili-Jeune qui prend en charge une partie du loyer (entre 10€ et 100€) pendant un an.\n\n            Cette aide ne s’adresse pas à l’ensemble de la population étudiante, mais plus spécifiquement aux personnes en formation en alternance. Pour y prétendre, il faut avoir moins de trente ans et avoir un contrat de professionnalisation ou d’apprentissage. Celui-ci doit se faire dans n’importe quelle société, sauf les entreprises publiques ou agricoles.\n\n            Visale\n\n            L’une des principales difficultés de l’étudiant(e) pour obtenir un logement est de trouver une personne pour se porter garant(e). Ce sont souvent les parents ou un membre de la famille qui assurent ce rôle, mais il arrive souvent n’en aient pas les moyens.\n\n            Heureusement, en s’adressant à Action Logement, l’étudiant(e) peut obtenir une caution. Celle-ci porte le nom de garantie Visale. Action Logement se porte garant et s’engage à couvrir les loyers en cas d’impayé et peut même intervenir pour remboursement certaines dégradations. Cette garantie est ouverte aux étudiant(e)s majeur(e)s (de 18 à 30 ans). Elle fonctionne sous forme de dette qui est soumise à l’étudiant(e) dès qu’un paiement a été assuré à sa place. Le bailleur du logement est assuré d’avoir son argent en temps et en heure. Voir le site www.visale.fr\n\n            Loca-Pass\n\n            Action logement propose également une aide spécifique aux étudiant(e)s pour les aider à financer le dépôt de garantie. Loca-Pass est une avance proposée sous la forme d’un prêt sans intérêt. L’étudiant(e) peut ainsi verser la somme demandée par le propriétaire dès la signature du bail.\n\n            ', 'Pour suivre ses études, l’étudiant(e) doit parfois quitter sa région d’origine et son domicile familial. Il ou elle se trouve contraint de louer son propre logement, ce qui représente un des foyers de dépenses les plus importants de sa vie d\'étudiant(e).', 0, '2022-11-08 21:54:22', '2022-11-08 22:03:53');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` tinyint(1) NOT NULL DEFAULT '0',
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `menu`, `isDelete`, `created_at`, `updated_at`) VALUES
(1, 'Entrée coucher', 'entree-coucher', 0, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(2, 'Une chambre salon', 'une-chambre-salon', 0, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(3, 'Deux chambres salon', 'deux-chambres-salon', 0, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(4, 'Trois chambres salon', 'trois-chambres-salon', 0, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(5, 'Entrée coucher semi sanitaire', 'entree-coucher-semi-sanitaire', 0, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(6, 'Une chambre salon semi sanitaire', 'une-chambre-salon-semi-sanitaire', 0, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(7, 'Deux chambres salon semi sanitaire', 'deux-chambres-salon-semi-sanitaire', 0, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(8, 'Trois chambres salon semi sanitaire', 'trois-chambres-salon-semi-sanitaire', 0, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(9, 'Entrée coucher sanitaire', 'entree-coucher-sanitaire', 0, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(10, 'Une chambre salon sanitaire', 'une-chambre-salon-sanitaire', 0, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(11, 'Deux chambres salon sanitaire', 'deux-chambres-salon-sanitaire', 0, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(12, 'Trois chambres salon sanitaire', 'trois-chambres-salon-sanitaire', 0, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

CREATE TABLE `departements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `departements`
--

INSERT INTO `departements` (`id`, `name`, `isDelete`, `created_at`, `updated_at`) VALUES
(1, 'Littoral', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(2, 'Atlantique', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(3, 'Ouémé', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(4, 'Borgou', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(5, 'Donga', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(6, 'Atacora', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(7, 'Collines', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(8, 'Zou', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(9, 'Mono', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(10, 'Couffo', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(11, 'Alibori', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(12, 'Plateau', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41');

-- --------------------------------------------------------

--
-- Structure de la table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `image_users`
--

CREATE TABLE `image_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distinataire_id` bigint(20) UNSIGNED NOT NULL,
  `auteur_id` bigint(20) UNSIGNED NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2019_12_14_000002_create_departements_table', 1),
(7, '2019_12_14_000003_create_villes_table', 1),
(8, '2021_03_11_172510_create_categories_table', 1),
(9, '2021_03_11_173251_create_products_table', 1),
(10, '2021_03_11_173503_create_product_images_table', 1),
(11, '2021_06_06_000625_create_notifications_table', 1),
(12, '2021_06_25_090042_create_reviews_table', 1),
(13, '2021_06_30_081706_create_contacts_table', 1),
(14, '2022_03_01_124622_roles', 1),
(15, '2022_03_01_124911_role_user', 1),
(16, '2022_05_03_084550_create_sessions_table', 1),
(17, '2022_06_27_110325_create_profiles_table', 1),
(18, '2022_06_27_144441_create_shoppingcart_table', 1),
(19, '2022_06_28_173529_create_parametres_table', 1),
(20, '2022_09_27_224752_create_emails_table', 1),
(21, '2022_09_27_225747_create_affectations_table', 1),
(22, '2022_09_28_061945_create_newsletters_table', 1),
(23, '2022_09_30_104133_create_postulers_table', 1),
(24, '2022_10_02_211630_create_messages_table', 1),
(25, '2022_10_03_110505_create_image_users_table', 1),
(26, '2022_10_07_131626_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `statut` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `parametres`
--

CREATE TABLE `parametres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `postulers`
--

CREATE TABLE `postulers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `indetermine` tinyint(1) NOT NULL DEFAULT '0',
  `date_entre` date NOT NULL,
  `date_de_sortie` date DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `postulers`
--

INSERT INTO `postulers` (`id`, `indetermine`, `date_entre`, `date_de_sortie`, `message`, `reponse`, `isDelete`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 0, '2022-12-16', '2022-12-30', 'vbhjnk', 'Refusé', 0, 7, 1, '2022-12-03 20:23:24', '2022-12-03 20:28:30'),
(2, 1, '2022-12-21', NULL, 'h', 'Validé', 0, 7, 2, '2022-12-03 20:27:30', '2022-12-03 20:28:25');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_annonce` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quartier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `normal_price` decimal(10,3) NOT NULL,
  `disponibilite` tinyint(1) NOT NULL,
  `place_dispo` int(10) UNSIGNED NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `ville_id` bigint(20) UNSIGNED NOT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `type_annonce`, `quartier`, `description`, `short_description`, `normal_price`, `disponibilite`, `place_dispo`, `isDelete`, `ville_id`, `categorie_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'perspiciatis autem at minima', 'amet-sed', 'COLOCATION', 'Calavi', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés. A proximité des transports en commun, elle permet un accès rapide aux établissements d\'enseignement supérieur.\n\n                Avec un accès direct au centre-ville par le tramway et à 2 minutes à pieds du domaine D’O, elle constitue un cadre idéal pour une vie étudiante épanouie.', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés.', '10000.000', 1, 2, 0, 2, 11, 2, '2022-12-03 18:52:41', '2022-12-03 20:00:03'),
(2, 'perspiciatis autem at minima', 'a-facilis', 'COLOCATION', 'CALAVI', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés. A proximité des transports en commun, elle permet un accès rapide aux établissements d\'enseignement supérieur.\n\n                Avec un accès direct au centre-ville par le tramway et à 2 minutes à pieds du domaine D’O, elle constitue un cadre idéal pour une vie étudiante épanouie.', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés.', '10000.000', 0, 3, 0, 2, 4, 5, '2022-12-03 18:52:41', '2022-12-03 20:38:09'),
(3, 'perspiciatis autem at minima', 'cupiditate-consequatur', 'COLOCATION', 'Calavi', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés. A proximité des transports en commun, elle permet un accès rapide aux établissements d\'enseignement supérieur.\n\n                Avec un accès direct au centre-ville par le tramway et à 2 minutes à pieds du domaine D’O, elle constitue un cadre idéal pour une vie étudiante épanouie.', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés.', '7500.000', 1, 3, 0, 2, 3, 1, '2022-12-03 18:52:41', '2022-12-03 20:00:56'),
(4, 'perspiciatis autem at minima', 'eos-saepe', 'COLOCATION', 'Calavi', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés. A proximité des transports en commun, elle permet un accès rapide aux établissements d\'enseignement supérieur.\n\n                Avec un accès direct au centre-ville par le tramway et à 2 minutes à pieds du domaine D’O, elle constitue un cadre idéal pour une vie étudiante épanouie.', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés.', '6000.000', 1, 1, 0, 2, 9, 1, '2022-12-03 18:52:41', '2022-12-03 19:40:10'),
(5, 'perspiciatis autem at minima', 'et-praesentium', 'COLOCATION', 'Nikolausport', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés. A proximité des transports en commun, elle permet un accès rapide aux établissements d\'enseignement supérieur.\n\n                Avec un accès direct au centre-ville par le tramway et à 2 minutes à pieds du domaine D’O, elle constitue un cadre idéal pour une vie étudiante épanouie.', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés.', '6840.000', 1, 2, 0, 4, 10, 4, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(6, 'perspiciatis autem at minima', 'et-nostrum', 'LOCATION', 'Josiemouth', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés. A proximité des transports en commun, elle permet un accès rapide aux établissements d\'enseignement supérieur.\n\n                Avec un accès direct au centre-ville par le tramway et à 2 minutes à pieds du domaine D’O, elle constitue un cadre idéal pour une vie étudiante épanouie.', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés.', '13478.000', 1, 1, 0, 31, 2, 4, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(7, 'perspiciatis autem at minima', 'velit-voluptas', 'LOCATION', 'West Warren', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés. A proximité des transports en commun, elle permet un accès rapide aux établissements d\'enseignement supérieur.\n\n                Avec un accès direct au centre-ville par le tramway et à 2 minutes à pieds du domaine D’O, elle constitue un cadre idéal pour une vie étudiante épanouie.', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés.', '8032.000', 1, 5, 0, 17, 2, 1, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(8, 'perspiciatis autem at minima', 'quibusdam-eligendi', 'LOCATION', 'Goyettebury', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés. A proximité des transports en commun, elle permet un accès rapide aux établissements d\'enseignement supérieur.\n\n                Avec un accès direct au centre-ville par le tramway et à 2 minutes à pieds du domaine D’O, elle constitue un cadre idéal pour une vie étudiante épanouie.', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés.', '8803.000', 1, 1, 0, 13, 2, 1, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(9, 'perspiciatis autem at minima', 'voluptate-voluptatum', 'LOCATION', 'Pagacview', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés. A proximité des transports en commun, elle permet un accès rapide aux établissements d\'enseignement supérieur.\n\n                Avec un accès direct au centre-ville par le tramway et à 2 minutes à pieds du domaine D’O, elle constitue un cadre idéal pour une vie étudiante épanouie.', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés.', '14155.000', 1, 4, 0, 27, 7, 2, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(10, 'perspiciatis autem at minima', 'odio-non', 'LOCATION', 'Blandaview', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés. A proximité des transports en commun, elle permet un accès rapide aux établissements d\'enseignement supérieur.\n\n                Avec un accès direct au centre-ville par le tramway et à 2 minutes à pieds du domaine D’O, elle constitue un cadre idéal pour une vie étudiante épanouie.', 'Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés.', '11928.000', 1, 4, 0, 5, 6, 5, '2022-12-03 18:52:41', '2022-12-03 18:52:41');

-- --------------------------------------------------------

--
-- Structure de la table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_images`
--

INSERT INTO `product_images` (`id`, `thumbnail`, `full`, `isDelete`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'thumb-638baa0b8cd7b.jpg,thumb-638baa0bd290d.jpg,thumb-638baa0bea38b.jpg,thumb-638baa0c145e6.jpg', 'full-638baa0b8cd85.jpg,full-638baa0bd292a.jpg,full-638baa0bea3a0.jpg,full-638baa0c145f6.jpg', 0, 1, '2022-12-03 18:57:00', '2022-12-03 18:57:00'),
(2, 'thumb-638baa4ff41fd.jpg,thumb-638baa50321bd.jpg,thumb-638baa5053f16.jpg,thumb-638baa506b294.jpg,thumb-638baa508356e.jpg', 'full-638baa4ff420d.jpg,full-638baa50321e1.jpg,full-638baa5053f26.jpg,full-638baa506b2ac.jpg,full-638baa5083587.jpg', 0, 1, '2022-12-03 18:58:08', '2022-12-03 18:58:08'),
(3, 'thumb-638baa9829480.jpg,thumb-638baa984a35e.jpg,thumb-638baa9872d1f.jpg,thumb-638baa98a1585.jpg,thumb-638baa98a833a.jpg,thumb-638baa98dcabc.jpg', 'full-638baa982948e.jpg,full-638baa984a37c.jpg,full-638baa9872d33.jpg,full-638baa98a1593.jpg,full-638baa98a834c.jpg,full-638baa98dcad8.jpg', 0, 2, '2022-12-03 18:59:21', '2022-12-03 18:59:21'),
(4, 'thumb-638bab7d65d90.jpg,thumb-638bab7d7a7fd.jpg', 'full-638bab7d65d9c.jpg,full-638bab7d7a810.jpg', 0, 3, '2022-12-03 19:03:09', '2022-12-03 19:03:09'),
(5, 'thumb-638babf1d2ff7.jpg,thumb-638babf1f2aad.jpg,thumb-638babf2267e2.jpg,thumb-638babf24c294.jpg,thumb-638babf2632fb.jpg', 'full-638babf1d3001.jpg,full-638babf1f2acb.jpg,full-638babf226804.jpg,full-638babf24c2ae.jpg,full-638babf263311.jpg', 0, 4, '2022-12-03 19:05:06', '2022-12-03 19:05:06'),
(6, 'thumb-638bac39a60d1.jpg,thumb-638bac39becc8.jpg,thumb-638bac39e3bdd.jpg,thumb-638bac3a082ad.jpg,thumb-638bac3a2c1c2.jpg,thumb-638bac3a4b48f.jpg', 'full-638bac39a60dc.jpg,full-638bac39bece0.jpg,full-638bac39e3bf3.jpg,full-638bac3a082c3.jpg,full-638bac3a2c1db.jpg,full-638bac3a4b4ae.jpg', 0, 5, '2022-12-03 19:06:18', '2022-12-03 19:06:18'),
(7, 'thumb-638bac6a67eb4.jpg', 'full-638bac6a67ec0.jpg', 0, 6, '2022-12-03 19:07:06', '2022-12-03 19:07:06'),
(8, 'thumb-638bacc68fe68.jpg,thumb-638bacc6b22e9.jpg,thumb-638bacc6cc867.jpg,thumb-638bacc6e19de.jpg,thumb-638bacc70a0f1.jpg,thumb-638bacc723159.jpg', 'full-638bacc68fe7c.jpg,full-638bacc6b22fb.jpg,full-638bacc6cc888.jpg,full-638bacc6e19f3.jpg,full-638bacc70a112.jpg,full-638bacc723175.jpg', 0, 7, '2022-12-03 19:08:39', '2022-12-03 19:08:39'),
(9, 'thumb-638bad007fe8f.jpg,thumb-638bad00a1de8.jpg,thumb-638bad00bcf85.jpg,thumb-638bad00ea64d.jpg,thumb-638bad0126f87.jpg', 'full-638bad007fe98.jpg,full-638bad00a1df9.jpg,full-638bad00bcf96.jpg,full-638bad00ea669.jpg,full-638bad0126fb8.jpg', 0, 8, '2022-12-03 19:09:37', '2022-12-03 19:09:37'),
(10, 'thumb-638badb187b2b.jpg,thumb-638badb1aa55e.jpg,thumb-638badb1ca389.jpg,thumb-638badb1e89ee.jpg,thumb-638badb1f0cf6.jpg,thumb-638badb22485b.jpg', 'full-638badb187b34.jpg,full-638badb1aa56c.jpg,full-638badb1ca3a1.jpg,full-638badb1e89fe.jpg,full-638badb1f0d0a.jpg,full-638badb22486a.jpg', 0, 9, '2022-12-03 19:12:34', '2022-12-03 19:12:34'),
(11, 'thumb-638bae155640a.jpg,thumb-638bae1570a05.jpg,thumb-638bae15883c3.jpg,thumb-638bae15a537d.jpg', 'full-638bae1556416.jpg,full-638bae1570a27.jpg,full-638bae15883db.jpg,full-638bae15a5399.jpg', 0, 10, '2022-12-03 19:14:13', '2022-12-03 19:14:13');

-- --------------------------------------------------------

--
-- Structure de la table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `name`, `email`, `phone`, `birthday`, `adresse`, `profession`, `link_facebook`, `link_twitter`, `link_instagram`, `isDelete`, `created_at`, `updated_at`) VALUES
(1, 8, 'Fernando ALISSOU', 'alissouanani@gmail.com', '+22995185044', '2022-12-03', 'None', 'None', '#', '#', '#', 0, '2022-12-03 20:15:54', '2022-12-03 20:15:54');

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `nom`, `isDelete`, `created_at`, `updated_at`) VALUES
(1, 'Administrateur', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(2, 'Etudiant', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(3, 'Locataire', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(4, 'Propriétaire', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(5, 'Super Administrateur', 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41');

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `isDelete`, `created_at`, `updated_at`) VALUES
(1, 6, 5, 0, NULL, NULL),
(2, 7, 1, 0, NULL, NULL),
(3, 8, 2, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ku4zKFMTnzakh4kfj51tMbItXeAdckvuOOpFhbB8', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQ291bmVuOXVab09rbU01QkV4UjFsdTdIYzV4a3diU25taW5pUWFEeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9saXN0ZXMtdG91dGVzLWNhbmRpZGF0dWVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NztzOjQ6ImNhcnQiO2E6MTp7czo4OiJ3aXNobGlzdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDkySVhVTnBrak8wck9RNWJ5TWkuWWU0b0tvRWEzUm85bGxDLy5vZy9hdDIudWhlV0cvaWdpIjt9', 1670102921),
('zDAtcwwY7zjZdxY9qXjbhfFeYzreS9SZVAK6BQ7l', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSGFoVnM4dDFOTFJ4c2JmVkhNM3dHUVpmYmM2TTU5dlBxeUdGbUxBeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9saXN0ZXMtcHJvZHVpdHMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo3O3M6NDoiY2FydCI7YToxOntzOjg6Indpc2hsaXN0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkOTJJWFVOcGtqTzByT1E1YnlNaS5ZZTRvS29FYTNSbzlsbEMvLm9nL2F0Mi51aGVXRy9pZ2kiO30=', 1670103489);

-- --------------------------------------------------------

--
-- Structure de la table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('admin@admin.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-12-03 20:31:35', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `last_seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `name`, `phone`, `phone_whatsapp`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `last_seen`, `remember_token`, `isDelete`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Marilie', 'Romaguera', '480.447.3532', '+18068481881', 'aurore.gorczany@example.net', '2022-12-03 18:52:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-11-06 04:33:03', 'cn85d43y59', 0, NULL, NULL, '2019-01-06 12:00:40', '2022-12-03 18:52:40'),
(2, 'Rick', 'Raynor', '1-424-381-9861', '1-458-474-6172', 'mona53@example.net', '2022-12-03 18:52:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-07-28 03:26:33', 'lEryU7HpkH', 0, NULL, NULL, '2019-11-09 05:08:42', '2022-12-03 18:52:40'),
(3, 'Raheem', 'McDermott', '+1-616-353-6042', '726.595.3929', 'simonis.bud@example.com', '2022-12-03 18:52:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-11-19 07:34:59', 'pV6UAN3I3C', 0, NULL, NULL, '2021-07-18 06:56:02', '2022-12-03 18:52:40'),
(4, 'Nicole', 'Gerlach', '+1-747-499-2956', '430-377-9571', 'iokuneva@example.org', '2022-12-03 18:52:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-11-24 10:14:32', 'zXXE8u2cOX', 0, NULL, NULL, '2021-06-20 12:22:01', '2022-12-03 18:52:40'),
(5, 'Callie', 'Yundt', '(616) 393-9877', '+1.989.939.7627', 'eda29@example.org', '2022-12-03 18:52:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-08-09 22:28:29', 'VKX9430kJI', 0, NULL, NULL, '2022-01-08 19:21:24', '2022-12-03 18:52:40'),
(6, 'Administrateur', 'Super', '95185044', '95185044', 'super@admin.com', '2022-12-03 18:52:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-12-03 19:52:41', 'prjeY6kBsu', 0, NULL, NULL, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(7, 'Administrateur', 'Admin', '95185044', '95185044', 'admin@admin.com', '2022-12-03 18:52:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-12-03 19:52:41', '1kkPyIQO7OKzmFpBzx0YWWQgixBp5p6K4E1WUyi1LwZWVLfekej2jTbAV0Kt', 0, NULL, NULL, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(8, NULL, 'Fernando ALISSOU', '+22995185044', NULL, 'alissouanani@gmail.com', NULL, '$2y$10$SE07FPAhC3OEt2YBcWy0Pets0xEFo8QLp.avPW0P5RkO1jmpUoTmy', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-12-03 20:15:27', '2022-12-03 20:15:27');

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departement_id` bigint(20) UNSIGNED NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `name`, `departement_id`, `isDelete`, `created_at`, `updated_at`) VALUES
(1, 'Cotonou', 1, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(2, 'Abomey-Calavi', 2, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(3, 'Porto-Novo', 3, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(4, 'Parakou', 4, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(5, 'Djougou', 5, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(6, 'Bohicon', 8, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(7, 'Natitingou', 6, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(8, 'Savé', 7, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(9, 'Abomey', 8, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(10, 'Nikki', 4, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(11, 'Lokossa', 9, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(12, 'Ouidah', 2, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(13, 'Dogbo-Tota', 10, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(14, 'Kandi', 11, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(15, 'Cové', 8, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(16, 'Malanville', 11, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(17, 'Pobé', 12, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(18, 'Kérou', 6, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(19, 'Savalou', 7, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(20, 'Sakété', 12, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(21, 'Comè', 9, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(22, 'Bembéréké', 4, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(23, 'Bassila', 5, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(24, 'Banikoara', 11, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(25, 'Kétou', 12, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(26, 'Dassa-Zoumè', 7, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(27, 'Tchaourou', 4, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(28, 'Allada', 2, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(29, 'Aplahoué', 10, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(30, 'Tanguiéta', 6, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(31, 'N\\\'Dali', 4, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(32, 'Segbana', 11, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(33, 'Athiémé', 9, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(34, 'Grand Popo', 9, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41'),
(35, 'Kouandé', 6, 0, '2022-12-03 18:52:41', '2022-12-03 18:52:41');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `affectations`
--
ALTER TABLE `affectations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `departements`
--
ALTER TABLE `departements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `image_users`
--
ALTER TABLE `image_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_users_user_id_foreign` (`user_id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD KEY `messages_distinataire_id_foreign` (`distinataire_id`),
  ADD KEY `messages_auteur_id_foreign` (`auteur_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`),
  ADD KEY `newsletters_user_id_foreign` (`user_id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Index pour la table `parametres`
--
ALTER TABLE `parametres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `postulers`
--
ALTER TABLE `postulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postulers_user_id_foreign` (`user_id`),
  ADD KEY `postulers_product_id_foreign` (`product_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_ville_id_foreign` (`ville_id`),
  ADD KEY `products_categorie_id_foreign` (`categorie_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Index pour la table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Index pour la table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `villes_departement_id_foreign` (`departement_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `affectations`
--
ALTER TABLE `affectations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `departements`
--
ALTER TABLE `departements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `image_users`
--
ALTER TABLE `image_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `parametres`
--
ALTER TABLE `parametres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `postulers`
--
ALTER TABLE `postulers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `image_users`
--
ALTER TABLE `image_users`
  ADD CONSTRAINT `image_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_auteur_id_foreign` FOREIGN KEY (`auteur_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_distinataire_id_foreign` FOREIGN KEY (`distinataire_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `newsletters`
--
ALTER TABLE `newsletters`
  ADD CONSTRAINT `newsletters_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `postulers`
--
ALTER TABLE `postulers`
  ADD CONSTRAINT `postulers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `postulers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ville_id_foreign` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `villes`
--
ALTER TABLE `villes`
  ADD CONSTRAINT `villes_departement_id_foreign` FOREIGN KEY (`departement_id`) REFERENCES `departements` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
