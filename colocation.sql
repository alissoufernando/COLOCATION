-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 10 nov. 2022 à 14:43
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
(1, 'Entrée coucher', 'entree-coucher', 0, 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(2, 'Une chambre salon', 'une-chambre-salon', 0, 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(3, 'Deux chambres salon', 'deux-chambres-salon', 0, 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(4, 'Trois chambres salon', 'trois-chambres-salon', 0, 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(5, 'Entrée coucher semi sanitaire', 'entree-coucher-semi-sanitaire', 0, 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(6, 'Une chambre salon semi sanitaire', 'une-chambre-salon-semi-sanitaire', 0, 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(7, 'Deux chambres salon semi sanitaire', 'deux-chambres-salon-semi-sanitaire', 0, 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(8, 'Trois chambres salon semi sanitaire', 'trois-chambres-salon-semi-sanitaire', 0, 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(9, 'Entrée coucher sanitaire', 'entree-coucher-sanitaire', 0, 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(10, 'Une chambre salon sanitaire', 'une-chambre-salon-sanitaire', 0, 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(11, 'Deux chambres salon sanitaire', 'deux-chambres-salon-sanitaire', 0, 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(12, 'Trois chambres salon sanitaire', 'trois-chambres-salon-sanitaire', 0, 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21');

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
(1, 'Littoral', 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(2, 'Atlantique', 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(3, 'Ouémé', 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(4, 'Borgou', 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(5, 'Donga', 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(6, 'Atacora', 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(7, 'Collines', 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(8, 'Zou', 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(9, 'Mono', 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(10, 'Couffo', 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(11, 'Alibori', 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21'),
(12, 'Plateau', 0, '2022-11-08 21:54:21', '2022-11-08 21:54:21');

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

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`message`, `distinataire_id`, `auteur_id`, `isDelete`, `created_at`, `updated_at`) VALUES
('sdfghjk', 1, 2, 0, '2022-11-09 19:04:39', '2022-11-09 19:04:39');

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

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '$2y$10$J1Q0yu8jy8b.rafnpEvNKuVahSA4PIJpNNFzStEEsv8zDLwQf50EG', '2022-11-09 23:50:04');

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
(1, 0, '2022-11-26', '2022-12-10', '\nMerci d\'avance pour vos réponses !\n', NULL, 0, 2, 1, '2022-11-09 15:21:55', '2022-11-09 15:35:15'),
(2, 1, '2022-11-25', NULL, '\nMerci d\'avance pour vos réponses !\n', NULL, 0, 2, 2, '2022-11-09 15:22:24', '2022-11-09 18:38:12'),
(3, 0, '2022-11-26', '2022-12-03', 'Merci d\'avance pour vos réponses !', 'Refusé', 0, 2, 3, '2022-11-09 15:27:41', '2022-11-09 18:47:11'),
(4, 1, '2022-11-26', NULL, 'Merci d\'avance pour vos réponses !', 'Validé', 0, 2, 4, '2022-11-09 15:28:07', '2022-11-09 15:34:25');

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
(1, 'et reiciendis et perspiciatis', 'et-asperiores', 'COLOCATION', 'Cortezmouth', 'Repellat est dignissimos earum eligendi praesentium nobis. Praesentium ad nam omnis eum. Amet eveniet pariatur autem rerum id odio dolorem. Nisi reiciendis omnis est eos necessitatibus sunt odio. Animi est vero asperiores rerum vitae labore. Quia qui officia porro quia omnis est beatae. Ad minima fugiat molestias sed. Dignissimos quas libero magni et ea perferendis impedit.', 'Commodi inventore consequuntur et officia. Tenetur qui officia quidem. Praesentium nemo rem a fugiat. Itaque deserunt a rem quis esse.', '3217.000', 1, 5, 0, 9, 8, 1, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(2, 'et reiciendis et perspiciatis', 'vero-tempore', 'COLOCATION', 'Ricetown', 'Consectetur dolor non placeat voluptates natus. Voluptas magni voluptas aut eos corporis aut vel laborum. In necessitatibus nihil vel eveniet. Ex quo ipsa suscipit. Inventore in voluptatem sed corrupti velit perferendis. Est ea qui similique non fugiat et magnam. Voluptatibus vel laboriosam eos doloribus et aperiam iste. Eius sunt aut occaecati blanditiis. Dolor et sunt sint qui. Quia illum quia accusantium eius voluptatem. Expedita animi dignissimos expedita explicabo commodi vel odio.', 'Deserunt vero odit itaque. Mollitia voluptatem natus et a itaque amet quaerat. Eveniet dolorem voluptatem minus quos quisquam.', '1929.000', 1, 1, 1, 13, 3, 2, '2022-11-08 21:54:22', '2022-11-09 23:39:15'),
(3, 'et reiciendis et perspiciatis', 'voluptas-sapiente', 'COLOCATION', 'Bradtkechester', 'Enim eligendi dolorem sed omnis. Maxime harum aut cumque officiis tenetur culpa provident. Unde omnis corporis aut id. Deleniti quasi ex sequi nihil enim aut dolores itaque. Cumque eum tempore debitis ipsum reiciendis quo. Inventore officia laboriosam vel qui asperiores dolor modi impedit. Neque dolorem unde architecto blanditiis est in consectetur. Quia corporis ea et ut fugiat. Eius iure labore iure. Consequuntur doloremque doloremque iusto laborum.', 'Eos ut enim aut sint et eum eos id. Omnis accusamus tenetur rerum. Et asperiores modi dolorum. Sapiente aliquam dolorem ea explicabo quia.', '3487.000', 1, 5, 1, 15, 10, 1, '2022-11-08 21:54:22', '2022-11-09 23:38:33'),
(4, 'et reiciendis et perspiciatis', 'consequuntur-consequatur', 'COLOCATION', 'East Christina', 'Accusamus corporis repudiandae sunt laborum. Deleniti aperiam quia iusto rerum voluptatum vel. Repudiandae iure rerum temporibus est. Corporis vitae occaecati nulla accusamus illo. Sit ipsum velit fuga autem. Qui illo voluptas recusandae tempore omnis pariatur omnis. Voluptatem sunt officiis libero omnis. Aut et in et et molestias error voluptas aperiam. Voluptatem est aliquam ipsa qui omnis.', 'Accusamus minima ab delectus dolore placeat vel sunt. Impedit officia eligendi quasi autem rerum id eaque. Voluptate odit ipsam non. Dolorum hic voluptas unde molestiae mollitia ad sit.', '9635.000', 1, 3, 0, 4, 1, 1, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(5, 'et reiciendis et perspiciatis', 'iste-enim', 'COLOCATION', 'East Liliane', 'Ipsam sint doloremque dicta rem accusamus ducimus possimus dignissimos. Ut et debitis beatae. Sed iusto molestias inventore et laboriosam voluptas sint. A corrupti explicabo inventore. Culpa beatae odit aperiam vel est recusandae sed. Consectetur eligendi id vel autem vel. Rerum voluptate et similique possimus. Iure quis voluptatibus omnis sed ut beatae.', 'Magni molestiae quia nobis dolores praesentium error perferendis nam. Et voluptate error deserunt modi. Ut beatae illum labore sint.', '7189.000', 1, 1, 0, 5, 10, 2, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(6, 'et reiciendis et perspiciatis', 'ducimus-consequatur', 'COLOCATION', 'Lake Gaylehaven', 'Laboriosam odit qui nisi assumenda. Tempore incidunt doloribus ex quis natus voluptatem. Quis distinctio accusantium voluptatem nam. Aut nihil libero rem et. Aut sint fuga modi distinctio. Similique quae eaque et mollitia culpa pariatur totam. Quis perferendis optio qui consequatur commodi. Qui libero ut ad consequuntur iure quas iure. Dicta et ad odit iure laboriosam.', 'Aspernatur voluptatem quibusdam neque fuga iste maxime vero. Nam laudantium soluta rem corporis. Iusto excepturi odio et vitae animi eos at et. Beatae impedit pariatur veritatis officiis.', '4231.000', 1, 3, 0, 22, 11, 2, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(7, 'et reiciendis et perspiciatis', 'consequuntur-tenetur', 'COLOCATION', 'Stammberg', 'Omnis doloribus quaerat assumenda quas quae. Voluptas id necessitatibus dolores officia culpa. Veritatis ut rerum delectus quos ea eos adipisci. Magnam eos omnis ut sapiente expedita ullam dolorum. Dolores non dolores rem laboriosam nisi deserunt. Natus voluptas expedita harum laborum voluptas. Dolorem doloremque et eius inventore ratione vero nihil.', 'Expedita quasi nulla suscipit non. Ut ut enim quasi vel quo ut quis dignissimos. Accusantium et laborum nesciunt minus sunt.', '5994.000', 1, 5, 0, 19, 12, 2, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(8, 'et reiciendis et perspiciatis', 'delectus-repellat', 'COLOCATION', 'Port Lacystad', 'A laudantium in distinctio ratione excepturi. Explicabo rem architecto saepe optio enim. Ullam repudiandae aut dignissimos assumenda cupiditate placeat. Aut rerum delectus molestias. Mollitia nobis voluptates qui aut. Maiores sed velit beatae sint voluptas sunt. Aut nihil excepturi quo quos. Labore omnis magnam veniam tempore autem laborum tempore sint. Sint et officiis magni est. Ullam sint adipisci perferendis soluta enim ex alias sequi. Quia quia sequi et vero sint fugiat velit.', 'Qui beatae enim rerum rem quibusdam id. Vel et velit animi libero inventore voluptatem dolorem. Dolores voluptatem beatae culpa et eum. Voluptatum voluptas quia expedita repellat.', '6116.000', 1, 3, 0, 26, 1, 2, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(9, 'et reiciendis et perspiciatis', 'laboriosam-nostrum', 'COLOCATION', 'East Cesar', 'Eum ut dicta fuga sit fugiat odit omnis autem. Est rerum sed molestiae nihil ut officiis nihil. Sit error velit omnis explicabo quasi sit necessitatibus. Non laboriosam sunt ea. Quae voluptatum cupiditate fugit blanditiis quod. Enim quam sequi rerum vitae non mollitia facilis similique. Facere temporibus dolores delectus id vel eos. Doloremque et laborum ea omnis optio. Aut qui vel rerum voluptatem sapiente dicta. Natus ratione eveniet accusamus libero.', 'Voluptatem recusandae nostrum voluptatibus architecto natus. Aut maxime animi vel dignissimos. Et quia pariatur ducimus.', '5258.000', 1, 3, 0, 7, 2, 2, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(10, 'et reiciendis et perspiciatis', 'quaerat-consequuntur', 'COLOCATION', 'East Joanymouth', 'Dolor consequatur harum qui. Molestiae doloremque qui cumque minima numquam vel nobis. Corrupti modi omnis culpa similique fugit tenetur asperiores aspernatur. Et ducimus vel ducimus saepe. Eaque dolorem placeat laudantium minus. Porro quaerat aut mollitia et ipsum. Quae sit sapiente dolorem numquam et.', 'Labore et omnis vero beatae molestiae. Quos consequatur atque nesciunt rerum quia nobis molestias. Enim asperiores maxime consequuntur at.', '2126.000', 1, 3, 0, 10, 3, 2, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(11, 'et reiciendis et perspiciatis', 'rem-sint', 'LOCATION', 'Nettieberg', 'Dolores occaecati quibusdam maiores odio. Ut ad neque quasi rerum expedita qui. Sint doloribus facilis quidem dolorem est iste sunt. Et sit et labore maiores. Sit odio dolores rem perferendis libero et. Quae omnis assumenda et culpa. Sit consequatur repudiandae molestiae. Quo dolore aut ut sunt. Non id officiis exercitationem sint consequatur. Quibusdam laboriosam nulla at. Accusamus similique nisi fuga voluptates tempore eaque officiis. Id exercitationem saepe blanditiis est optio molestiae.', 'Et sed aut libero rerum assumenda ipsum et. Ab vero quia explicabo eaque consequatur. Assumenda eum ut harum debitis. Et fugiat aliquam porro soluta quo.', '2571.000', 1, 1, 0, 33, 7, 1, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(12, 'et reiciendis et perspiciatis', 'voluptatem-voluptas', 'LOCATION', 'North Rasheedburgh', 'Consequatur rem saepe voluptatem unde omnis. Consequuntur et fugiat earum quia magnam vitae. Unde nihil alias id dolorem. Eaque voluptatem non vel hic et et molestiae. Similique omnis officiis ipsa laboriosam. Voluptatem in quia reiciendis et nesciunt delectus magni quisquam. Est aliquam quia aliquam tempora.', 'Vel placeat omnis nobis et quisquam est. Ratione dolor ut eum vel quaerat enim quisquam. Sit unde esse eum a animi beatae mollitia.', '1940.000', 1, 2, 0, 22, 10, 1, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(13, 'et reiciendis et perspiciatis', 'culpa-et', 'LOCATION', 'Port Margaret', 'Fuga et laborum sed inventore cumque odit. Aperiam architecto omnis nihil harum fugiat fuga ullam. Quia autem aspernatur minima non. Deserunt eos est eligendi illo. Consequatur est tempora iure reiciendis sit. Omnis et ipsa sint animi veniam assumenda. Optio et iure deleniti accusantium doloribus. Consequatur voluptatem ut et est laborum. Rerum quisquam sed qui veritatis et et. Amet placeat maiores assumenda voluptatem error quos.', 'Eveniet soluta distinctio maxime qui consequatur quas voluptatem rerum. Doloribus qui laudantium debitis iure aut. Dolor ab consequuntur non quibusdam veritatis dolores dignissimos.', '7508.000', 1, 4, 0, 5, 11, 2, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(14, 'et reiciendis et perspiciatis', 'earum-repudiandae', 'LOCATION', 'Sporerstad', 'Rerum voluptatem unde inventore qui in. Reprehenderit repudiandae officiis quos consequatur unde in quo. Iste omnis harum facere nulla excepturi eos deserunt. Et molestias in fuga cum. Atque repellendus rerum qui repellendus nihil doloribus laudantium. At dolores labore omnis nesciunt explicabo perferendis velit repudiandae. Ea ab tempore dolor ea tempora voluptates odio ut. Dolorum a est et eum. Voluptas numquam animi repellat eum dignissimos eum.', 'Quaerat amet rem cum. Laudantium quasi debitis suscipit velit ut reiciendis. Quia delectus totam praesentium rerum at placeat labore.', '2771.000', 1, 4, 0, 17, 5, 1, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(15, 'et reiciendis et perspiciatis', 'officiis-praesentium', 'LOCATION', 'Ericafort', 'Reprehenderit aut eveniet qui a vitae quod eum. Fuga nulla dolorem dolor. Maiores quia eum ut qui consequuntur. Libero laudantium velit ab vel iure sapiente et ut. Delectus earum qui omnis qui quo ut natus voluptatibus. Autem aut non non similique. Minima enim eligendi et. Doloribus alias et aut sit eos aut. Officiis iusto animi et quis. Et neque sequi officia consequatur deleniti adipisci voluptas.', 'Sunt dolores porro dolorum sed at et sed. Id adipisci in sit quo est perferendis maxime. Eveniet voluptatibus qui quaerat.', '9678.000', 1, 3, 0, 17, 1, 1, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(16, 'et reiciendis et perspiciatis', 'dolor-nam', 'LOCATION', 'Gaylordville', 'Sint qui tempore ut magni itaque quam molestias. Ad omnis ipsam harum voluptas adipisci impedit. Cupiditate a totam voluptatem sit. Est iste dolores architecto molestiae et sed blanditiis. Quisquam non voluptatem laborum nihil ut. Odit molestias ducimus dolorum excepturi ut sint. Suscipit et quisquam aut fugit quaerat. Libero accusantium unde ut et soluta ullam adipisci. Pariatur ea sequi ut libero cumque.', 'Natus ut est impedit labore autem qui. Modi veritatis earum dolorem molestiae dolorem laudantium. Ab et sit esse et. Consequuntur cum at laborum ut omnis ut officia.', '3297.000', 1, 4, 0, 15, 9, 1, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(17, 'et reiciendis et perspiciatis', 'voluptas-nisi', 'LOCATION', 'West Celestine', 'Voluptatibus perspiciatis voluptas similique omnis rerum iure rem. Corporis quos est fuga amet sint autem. Enim odio est in aperiam repellat aspernatur est. Dolorem praesentium sed sit labore qui. Id adipisci quis modi distinctio. Quam autem sint assumenda. Libero ad tempore vero dolores et sunt eum. Numquam ut unde eligendi porro libero quisquam. Dicta eos voluptates esse consequatur rerum similique. Quisquam minus eos qui perferendis et.', 'Officia neque qui cum corrupti. Id sint quis corrupti illo aut illum. Officiis numquam optio dolores. Rem ipsam quia dolores ipsam et. Quia et dolor ut. Eveniet et ex at omnis.', '2645.000', 1, 5, 0, 10, 3, 1, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(18, 'et reiciendis et perspiciatis', 'aut-itaque', 'LOCATION', 'Lillaport', 'Similique rerum dolorem aut labore id necessitatibus cumque. Vel aut quis impedit odio dolores fuga. Voluptas quis repellendus vero laudantium rerum dolorem. Est quia numquam velit modi. Perferendis minima ea inventore qui dignissimos qui tempore. Nesciunt nihil vitae quo exercitationem quos.', 'Earum sunt porro sint quis pariatur. Et aut aut et ut. Labore delectus sapiente aut tenetur et fuga quo perspiciatis.', '4698.000', 1, 3, 0, 9, 5, 2, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(19, 'et reiciendis et perspiciatis', 'blanditiis-nam', 'LOCATION', 'Mozelleland', 'Earum qui asperiores facilis ipsam ex ut. Nihil accusantium id dicta qui dolores exercitationem iusto rem. Quasi vel est assumenda tenetur animi. Et voluptatem quia cupiditate quidem deleniti nihil in. Aspernatur adipisci sapiente ab aut explicabo qui sit voluptatum. Facilis id eum illo debitis. Commodi in ea voluptates quo consequatur delectus unde aut. Quis molestias laborum ad. Aut eaque aut nobis vitae quia reiciendis iusto. Repellendus porro id consequatur quia.', 'Nobis quos perferendis quam eveniet. Molestiae nihil cum reiciendis accusantium. Assumenda eligendi consequatur magnam. Debitis non vero autem aspernatur ex quia vel.', '9552.000', 1, 4, 0, 24, 10, 2, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(20, 'et reiciendis et perspiciatis', 'nam-ipsum', 'LOCATION', 'Lake Seth', 'Dolor et deleniti nobis omnis maiores. Dolore et sunt voluptatibus quod ut omnis dolorem. Officiis facere illo fugit rerum. Deleniti totam qui doloremque nemo cupiditate soluta. Accusantium harum reiciendis qui quis praesentium repudiandae et. Maxime corporis omnis sit veritatis veniam unde. Error blanditiis maxime nihil. Mollitia tempora dolores et sint sed. Incidunt omnis asperiores optio corrupti nobis.', 'Laboriosam ut laboriosam assumenda voluptatem aut adipisci. Impedit ut et delectus non repudiandae et. Ex nesciunt quae voluptatem nemo.', '8502.000', 1, 3, 0, 19, 2, 1, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(21, 'autostop', 'autostop', 'COLOCATION', 'cité la victoire', '<p>Lors d&lsquo;un achat en ligne, la fiche produit doit pouvoir &agrave; la fois rassurer le consommateur sur la qualit&eacute; du produit sur lequel il a jet&eacute; son d&eacute;volu, mais aussi apporter des informations et des conseils, comme le ferait un vendeur en boutique physique.</p>\n<p>&nbsp;</p>\n<p>Lors d&lsquo;un achat en ligne, la fiche produit doit pouvoir &agrave; la fois rassurer le consommateur sur la qualit&eacute; du produit sur lequel il a jet&eacute; son d&eacute;volu, mais aussi apporter des informations et des conseils, comme le ferait un vendeur en boutique physique.</p>', '<p>Lors d&lsquo;un achat en ligne, la fiche produit doit pouvoir &agrave; la fois rassurer le consommateur sur la qualit&eacute; du produit sur lequel il a jet&eacute; son d&eacute;volu, mais aussi apporter des informations et des conseils, comme le ferait un vendeur en boutique physique.</p>', '75486.000', 1, 4, 0, 2, 3, 2, '2022-11-10 07:34:36', '2022-11-10 07:34:36');

-- --------------------------------------------------------

--
-- Structure de la table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_images`
--

INSERT INTO `product_images` (`id`, `thumbnail`, `full`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'thumb-6356e0bddf03f.jpg,thumb-6356e0be2fa0f.jpg,thumb-6356e0be3d849.jpg,thumb-6356e0be4b16a.jpg', 'full-6356e0bddf045.jpg,full-6356e0be2fa20.jpg,full-6356e0be3d89f.jpg,full-6356e0be4b181.jpg', 1, '2022-10-24 18:00:14', '2022-10-24 18:00:14'),
(2, 'thumb-6356e0e975c3c.jpg,thumb-6356e0e98d61b.jpg,thumb-6356e0e9a2f9d.jpg', 'full-6356e0e975c45.jpg,full-6356e0e98d630.jpg,full-6356e0e9a2fad.jpg', 2, '2022-10-24 18:00:57', '2022-10-24 18:00:57'),
(3, 'thumb-6356e344e81cb.jpg,thumb-6356e34511f95.jpg,thumb-6356e3452c393.jpg,thumb-6356e345412bc.jpg', 'full-6356e344e81d6.jpg,full-6356e34511fa9.jpg,full-6356e3452c3a5.jpg,full-6356e345412d0.jpg', 3, '2022-10-24 18:11:01', '2022-10-24 18:11:01'),
(4, 'thumb-6356e3635a41b.jpg,thumb-6356e36371dc5.jpg,thumb-6356e3638b42d.jpg', 'full-6356e3635a424.jpg,full-6356e36371ddb.jpg,full-6356e3638b44b.jpg', 4, '2022-10-24 18:11:31', '2022-10-24 18:11:31'),
(5, 'thumb-6356e3952ac33.jpg,thumb-6356e39544524.jpg,thumb-6356e39551ded.jpg,thumb-6356e395658f2.jpg,thumb-6356e3957ad7f.jpg,thumb-6356e395974df.jpg,thumb-6356e395a3a1a.jpg,thumb-6356e395bf72d.jpg,thumb-6356e395cd3d2.jpg', 'full-6356e3952ac40.jpg,full-6356e39544536.jpg,full-6356e39551e01.jpg,full-6356e39565912.jpg,full-6356e3957ad9a.jpg,full-6356e395974ef.jpg,full-6356e395a3a33.jpg,full-6356e395bf747.jpg,full-6356e395cd3ec.jpg', 5, '2022-10-24 18:12:21', '2022-10-24 18:12:21'),
(6, 'thumb-6356e3b32698b.jpg,thumb-6356e3b33f1f6.jpg,thumb-6356e3b352e22.jpg,thumb-6356e3b366886.jpg,thumb-6356e3b37cc65.jpg', 'full-6356e3b32699a.jpg,full-6356e3b33f20e.jpg,full-6356e3b352e39.jpg,full-6356e3b3668a2.jpg,full-6356e3b37cc8f.jpg', 10, '2022-10-24 18:12:51', '2022-10-24 18:12:51'),
(7, 'thumb-6356e3d08a6e5.jpg,thumb-6356e3d0a1067.jpg,thumb-6356e3d0b7381.jpg,thumb-6356e3d0cd14f.jpg', 'full-6356e3d08a6ef.jpg,full-6356e3d0a107e.jpg,full-6356e3d0b7394.jpg,full-6356e3d0cd169.jpg', 9, '2022-10-24 18:13:20', '2022-10-24 18:13:20'),
(8, 'thumb-6356e3f054b42.jpg,thumb-6356e3f075e47.jpg,thumb-6356e3f085c3c.jpg,thumb-6356e3f093291.jpg,thumb-6356e3f0ab636.jpg,thumb-6356e3f0baf1a.jpg,thumb-6356e3f0c871d.jpg', 'full-6356e3f054b54.jpg,full-6356e3f075e5a.jpg,full-6356e3f085c52.jpg,full-6356e3f0932b4.jpg,full-6356e3f0ab64e.jpg,full-6356e3f0baf36.jpg,full-6356e3f0c8745.jpg', 7, '2022-10-24 18:13:52', '2022-10-24 18:13:52'),
(9, 'thumb-6356e422820be.jpg,thumb-6356e4229a13e.jpg,thumb-6356e422ac67d.jpg,thumb-6356e422bef4e.jpg,thumb-6356e422e1d92.jpg,thumb-6356e4231788a.jpg,thumb-6356e42336acb.jpg', 'full-6356e422820d2.jpg,full-6356e4229a159.jpg,full-6356e422ac698.jpg,full-6356e422bef62.jpg,full-6356e422e1dad.jpg,full-6356e423178a3.jpg,full-6356e42336ae4.jpg', 8, '2022-10-24 18:14:43', '2022-10-24 18:14:43'),
(10, 'thumb-6356e454063ef.jpg,thumb-6356e45414351.jpg,thumb-6356e45428c73.jpg,thumb-6356e45435cd2.jpg,thumb-6356e45447f35.jpg,thumb-6356e454612ad.jpg,thumb-6356e4546fd97.jpg', 'full-6356e454063fa.jpg,full-6356e4541436a.jpg,full-6356e45428c89.jpg,full-6356e45435ce1.jpg,full-6356e45447f45.jpg,full-6356e454612c3.jpg,full-6356e4546fdad.jpg', 6, '2022-10-24 18:15:32', '2022-10-24 18:15:32'),
(11, 'thumb-6356e4a004039.jpg,thumb-6356e4a018b86.jpg,thumb-6356e4a040171.jpg,thumb-6356e4a06540c.jpg,thumb-6356e4a08865a.jpg,thumb-6356e4a0b601f.jpg', 'full-6356e4a004042.jpg,full-6356e4a018b9f.jpg,full-6356e4a040187.jpg,full-6356e4a06542f.jpg,full-6356e4a0886cc.jpg,full-6356e4a0b6037.jpg', 11, '2022-10-24 18:16:48', '2022-10-24 18:16:48'),
(12, 'thumb-6356e500415d1.jpg,thumb-6356e500575d7.jpg', 'full-6356e500415dc.jpg,full-6356e500575f4.jpg', 19, '2022-10-24 18:18:24', '2022-10-24 18:18:24'),
(13, 'thumb-6356e5796f274.jpg,thumb-6356e57984b39.jpg,thumb-6356e57997eb7.jpg,thumb-6356e579a50b8.jpg,thumb-6356e579b87ae.jpg', 'full-6356e5796f27f.jpg,full-6356e57984b4c.jpg,full-6356e57997ece.jpg,full-6356e579a50c9.jpg,full-6356e579b87c0.jpg', 20, '2022-10-24 18:20:25', '2022-10-24 18:20:25'),
(14, 'thumb-6356e5a222afb.jpg,thumb-6356e5a233032.jpg,thumb-6356e5a249e40.jpg', 'full-6356e5a222b05.jpg,full-6356e5a233045.jpg,full-6356e5a249e52.jpg', 18, '2022-10-24 18:21:06', '2022-10-24 18:21:06'),
(15, 'thumb-6356e5c75aa88.jpg,thumb-6356e5c773032.jpg,thumb-6356e5c78cfbe.jpg,thumb-6356e5c79a861.jpg,thumb-6356e5c7aa05d.jpg,thumb-6356e5c7b6258.jpg', 'full-6356e5c75aa93.jpg,full-6356e5c773046.jpg,full-6356e5c78cfd8.jpg,full-6356e5c79a887.jpg,full-6356e5c7aa06c.jpg,full-6356e5c7b626c.jpg', 17, '2022-10-24 18:21:43', '2022-10-24 18:21:43'),
(16, 'thumb-6356e5e8d1c96.jpg,thumb-6356e5e8dfadd.jpg,thumb-6356e5e8f0874.jpg,thumb-6356e5e908ee3.jpg,thumb-6356e5e9150aa.jpg,thumb-6356e5e9223f8.jpg,thumb-6356e5e92e366.jpg', 'full-6356e5e8d1ca0.jpg,full-6356e5e8dfaf7.jpg,full-6356e5e8f088d.jpg,full-6356e5e908efd.jpg,full-6356e5e9150b9.jpg,full-6356e5e922409.jpg,full-6356e5e92e37c.jpg', 16, '2022-10-24 18:22:17', '2022-10-24 18:22:17'),
(17, 'thumb-6356e6158eaca.jpg,thumb-6356e615a0766.jpg,thumb-6356e615b10fa.jpg', 'full-6356e6158ead4.jpg,full-6356e615a077e.jpg,full-6356e615b111f.jpg', 12, '2022-10-24 18:23:01', '2022-10-24 18:23:01'),
(18, 'thumb-6356e63f74493.jpg,thumb-6356e63f9361f.jpg,thumb-6356e63fab902.jpg,thumb-6356e63fc0807.jpg,thumb-6356e63fd7a80.jpg', 'full-6356e63f744a7.jpg,full-6356e63f93639.jpg,full-6356e63fab920.jpg,full-6356e63fc081d.jpg,full-6356e63fd7a95.jpg', 14, '2022-10-24 18:23:43', '2022-10-24 18:23:43'),
(19, 'thumb-6356e671bd1d2.jpg,thumb-6356e671d544a.jpg,thumb-6356e671ea965.jpg,thumb-6356e6720ec2b.jpg,thumb-6356e672226d6.jpg', 'full-6356e671bd1dd.jpg,full-6356e671d5461.jpg,full-6356e671ea981.jpg,full-6356e6720ec3e.jpg,full-6356e672226e9.jpg', 15, '2022-10-24 18:24:34', '2022-10-24 18:24:34'),
(20, 'thumb-6356e6ab5d39d.jpg,thumb-6356e6ab6bf0e.jpg,thumb-6356e6ab83ff7.jpg', 'full-6356e6ab5d3ad.jpg,full-6356e6ab6bf23.jpg,full-6356e6ab8400a.jpg', 13, '2022-10-24 18:25:31', '2022-10-24 18:25:31');

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
(1, 2, 'Admin', 'admin@admin.com', '95185044', '2022-11-10', 'None', 'None', '#', '#', '#', 0, '2022-11-09 23:43:52', '2022-11-09 23:43:52');

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
(1, 'Administrateur', 0, '2022-11-08 21:54:20', '2022-11-08 21:54:20'),
(2, 'Etudiant', 0, '2022-11-08 21:54:20', '2022-11-08 21:54:20'),
(3, 'Locataire', 0, '2022-11-08 21:54:20', '2022-11-08 21:54:20'),
(4, 'Propriétaire', 0, '2022-11-08 21:54:20', '2022-11-08 21:54:20'),
(5, 'Super Administrateur', 0, '2022-11-08 21:54:20', '2022-11-08 21:54:20');

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
(1, 1, 5, 0, NULL, NULL),
(2, 2, 1, 0, NULL, NULL);

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
('9K4qhjt5wsgbl6PeiA3u3AMlZbcwPSmPfMZ6rtRI', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoieDBvMEFpM29ZTVdOZHdza2ZzYXBNdHZmbWd5RXZ6SG5yY21Bd01sUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kZXRhaWwtcHJvZHVpdC8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjQ6ImNhcnQiO2E6MTp7czo4OiJ3aXNobGlzdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDkySVhVTnBrak8wck9RNWJ5TWkuWWU0b0tvRWEzUm85bGxDLy5vZy9hdDIudWhlV0cvaWdpIjt9', 1668069737),
('ZAwUOVy21cCEHX2Oiu3sQ1GLggnmbqlstOc5xkGR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYVgycThVTDR0RmRSRll3ZzJaTUdEa3BuWUtyRERleDFkaHNVa2tBWCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL2RldGFpbC1wcm9kdWl0LzEiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1668077201);

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
('admin@admin.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-09 15:44:05', NULL);

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
(1, 'Administrateur', 'Super', '95185044', '95185044', 'super@admin.com', '2022-11-08 21:54:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-11-08 22:54:20', 'ELi6CD305U', 0, NULL, NULL, '2022-11-08 21:54:20', '2022-11-08 21:54:20'),
(2, 'Administrateur', 'Admin', '95185044', '95185044', 'admin@admin.com', '2022-11-08 21:54:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-11-08 22:54:20', 'NHnXHVpO6xlbPFCi2vf89bXgYu7SN42pv8mCD0iNC1XxAbsA9qcPdLkdhk7v', 0, NULL, NULL, '2022-11-08 21:54:20', '2022-11-08 21:54:20'),
(3, 'August', 'Monahan', 'Jameson', 'Iva', 'loyal59@example.net', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-07-01 22:32:24', 'jvmFzmfoGb', 0, NULL, NULL, '2019-05-27 16:51:52', '2022-11-08 21:54:22'),
(4, 'Layla', 'Satterfield', 'Carmen', 'Curtis', 'larson.santino@example.com', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-09-01 22:26:12', '2ySAK19nSh', 0, NULL, NULL, '2020-09-06 19:37:57', '2022-11-08 21:54:22'),
(5, 'Darwin', 'Ankunding', 'Violet', 'Genoveva', 'hermiston.harold@example.org', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-06-20 08:46:49', 'kYG1FZUlIW', 0, NULL, NULL, '2021-04-25 11:10:12', '2022-11-08 21:54:22'),
(6, 'Marisol', 'Moore', 'Herman', 'Jody', 'stiedemann.jerad@example.com', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-08-06 15:01:56', 'dsy1l9FWhw', 0, NULL, NULL, '2021-05-28 00:10:51', '2022-11-08 21:54:22'),
(7, 'Kiara', 'Mueller', 'Jany', 'Faustino', 'slarkin@example.net', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-07-19 02:11:17', '8MtR5s8EWE', 0, NULL, NULL, '2019-06-04 17:40:08', '2022-11-08 21:54:22'),
(8, 'Dandre', 'Williamson', 'Mable', 'Rebecca', 'trantow.lavon@example.com', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-10-29 01:26:39', 'CxRiCGDRxy', 0, NULL, NULL, '2021-04-19 04:48:25', '2022-11-08 21:54:22'),
(9, 'Deborah', 'Brown', 'Rhianna', 'Amie', 'alexandrea13@example.org', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-10-07 20:11:00', 'geN2tLlekO', 0, NULL, NULL, '2019-04-17 23:30:30', '2022-11-08 21:54:22'),
(10, 'Alene', 'Crist', 'Richmond', 'Sam', 'thiel.marvin@example.net', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-08-22 05:08:29', 'lacDVnugfn', 0, NULL, NULL, '2019-12-06 06:13:44', '2022-11-08 21:54:22'),
(11, 'Adele', 'Heathcote', 'Ardella', 'Esteban', 'kian50@example.com', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-07-01 05:40:35', 'bzql3RiitC', 0, NULL, NULL, '2021-11-21 22:51:29', '2022-11-08 21:54:22'),
(12, 'Camron', 'Grimes', 'Dorris', 'Barry', 'nframi@example.com', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-08-16 09:05:10', 'T3RzlwwwiP', 0, NULL, NULL, '2020-07-20 01:48:08', '2022-11-08 21:54:22'),
(13, 'Lorine', 'Cartwright', 'Reinhold', 'Nichole', 'andrew37@example.com', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-07-13 05:17:55', 'sGDBY1Njht', 0, NULL, NULL, '2019-01-09 00:27:17', '2022-11-08 21:54:22'),
(14, 'Burnice', 'Bechtelar', 'Victoria', 'Barton', 'ilindgren@example.org', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-05-21 18:34:19', 'r0HHYjh3xs', 0, NULL, NULL, '2019-01-14 22:37:47', '2022-11-08 21:54:22'),
(15, 'Alycia', 'Collins', 'Reese', 'Sonia', 'daniel.friedrich@example.org', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-06-30 19:38:12', 'L1iv1SYDMH', 0, NULL, NULL, '2019-02-27 17:56:38', '2022-11-08 21:54:22'),
(16, 'Mozelle', 'Dooley', 'Frieda', 'Armand', 'monserrat.lind@example.org', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-09-04 17:07:10', 'i6J3InXmxx', 0, NULL, NULL, '2020-01-06 23:04:21', '2022-11-08 21:54:22'),
(17, 'Cali', 'Mohr', 'Summer', 'Celestino', 'zkunze@example.org', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-07-02 01:33:17', 'gaJieDtxR9', 0, NULL, NULL, '2019-09-11 12:45:00', '2022-11-08 21:54:22'),
(18, 'Saige', 'Hessel', 'Kira', 'Lura', 'walker.london@example.net', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-08-03 17:30:40', '36VY3mVLA0', 0, NULL, NULL, '2020-03-20 02:37:12', '2022-11-08 21:54:22'),
(19, 'Hassan', 'Bernhard', 'Edythe', 'Kailyn', 'jany50@example.net', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-08-29 10:30:56', 'za1gR7Hind', 0, NULL, NULL, '2022-02-24 03:19:32', '2022-11-08 21:54:22'),
(20, 'Harry', 'McGlynn', 'Magdalena', 'Jenifer', 'janelle07@example.net', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-06-06 03:01:57', 'fRVGMPiKiY', 0, NULL, NULL, '2019-07-19 15:49:52', '2022-11-08 21:54:22'),
(21, 'Jodie', 'Auer', 'Lessie', 'Norma', 'ctillman@example.com', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-07-27 10:07:23', '7EQcYiGoEs', 0, NULL, NULL, '2019-01-30 07:12:53', '2022-11-08 21:54:22'),
(22, 'Amani', 'Veum', 'Ernestine', 'Mollie', 'wabshire@example.com', '2022-11-08 21:54:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-08-07 18:42:24', '4pUxKdHktp', 0, NULL, NULL, '2021-12-20 19:35:53', '2022-11-08 21:54:22');

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
(1, 'Cotonou', 1, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(2, 'Abomey-Calavi', 2, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(3, 'Porto-Novo', 3, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(4, 'Parakou', 4, 1, '2022-11-08 21:54:22', '2022-11-09 23:40:50'),
(5, 'Djougou', 5, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(6, 'Bohicon', 8, 1, '2022-11-08 21:54:22', '2022-11-09 23:38:48'),
(7, 'Natitingou', 6, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(8, 'Savé', 7, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(9, 'Abomey', 8, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(10, 'Nikki', 4, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(11, 'Lokossa', 9, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(12, 'Ouidah', 2, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(13, 'Dogbo-Tota', 10, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(14, 'Kandi', 11, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(15, 'Cové', 8, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(16, 'Malanville', 11, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(17, 'Pobé', 12, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(18, 'Kérou', 6, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(19, 'Savalou', 7, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(20, 'Sakété', 12, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(21, 'Comè', 9, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(22, 'Bembéréké', 4, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(23, 'Bassila', 5, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(24, 'Banikoara', 11, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(25, 'Kétou', 12, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(26, 'Dassa-Zoumè', 7, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(27, 'Tchaourou', 4, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(28, 'Allada', 2, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(29, 'Aplahoué', 10, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(30, 'Tanguiéta', 6, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(31, 'N\\\'Dali', 4, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(32, 'Segbana', 11, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(33, 'Athiémé', 9, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(34, 'Grand Popo', 9, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22'),
(35, 'Kouandé', 6, 0, '2022-11-08 21:54:22', '2022-11-08 21:54:22');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
