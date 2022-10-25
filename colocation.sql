-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 25 oct. 2022 à 08:32
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `path`, `titre`, `slug`, `auteur`, `description`, `short_description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Étudiants et Covid : quelles répercussions ?', 'Étudiants-et-Covid-quelles-répercussions', 'Dianna Pagac', 'La crise sanitaire liée à la pandémie de Covid-19 a eu des répercussions sur la santé mentale des Français. Une étude a en outre démontré la fragilité des étudiants dans ce domaine.\n\n            En mars 2020, l\\’Organisation mondiale de la santé (OMS) déclare le Covid-19 en situation de pandémie. Les cas de personnes atteintes du virus se multiplient dans le monde et contraignent les gouvernements à prendre des mesures sans précédent : distanciation sociale, respect des gestes barrières, annulation en masse de manifestations sportives et culturelles, confinement, etc. Les établissements scolaires et universitaires ferment également leurs portes, au grand dam du corps enseignant et des étudiants poussés à suivre leurs études en distanciel et à rompre tout contact physique. Une situation inédite et inquiétante qui ne manque pas de générer du stress et de l’anxiété.\n\n\n\n            Étudiants et Covid, le lourd bilan\n            Au-delà de la maladie elle-même, dont les effets ont longtemps été imprévisibles, la pandémie de Covid-19 touche également la santé mentale des étudiants, de leurs enseignants et du personnel des établissements universitaires.\n\n            D’une manière générale, les épidémies et pandémies figurent en bonne place parmi les plus grandes craintes de l’humanité. Cette crainte touche inévitablement le mental des populations et provoque anxiété et dépressions. Certaines études d’avant-Covid ont démontré déjà que l’épidémie de SRAS (2002-2004) a eu des impacts psychologiques pendant plusieurs années après la fin de l’épidémie. Avec la pandémie du Covid-19, le problème a été exacerbé par les confinements qui ont contraint les personnes à l’isolement et la distanciation.\n\n            La population étudiante se révèle en outre une population exposée aux problèmes de santé mentale. En dehors même des situations de crises de grande ampleur, les étudiants connaissent des motifs d’anxiété très vifs et des cas de dépression, de par leur vie d’étudiant jalonnée d’examens et de remises en cause. En France, le suicide est la deuxième cause de mortalité chez les 15-25 ans.\n\n            A ce titre, des études ont été menées durant la pandémie de Covid-19 et les mesures de confinement adoptées sur tout le pays, pour tenter de déterminer si les étudiants étaient plus exposés à la détérioration de leur santé mentale que le reste de la population.\n\n            Les scientifiques de l\\’Institut national de la santé et de la recherche médicale (Inserm) et les chercheurs de l’Université de Bordeaux ont recueilli durant la pandémie les témoignages de plus de 3500 personnes. Celles-ci, recrutées à travers les réseaux sociaux, ont été divisées en deux groupes : les étudiants et les autres. Les deux groupes étaient équivalents en termes de pourcentage hommes/femmes et en proportion de personnes ayant des antécédents de problèmes psychologiques. L’étude a été réalisée entre mars 2020 et janvier 2021, une période qui couvre le premier et le deuxième confinement, avec dans l’intervalle le déconfinement mesuré de l’été 2020.\n\n            Les résultats de cette étude indiquent clairement que les étudiants ont été les plus touchés sur le plan mental :\n\n            Symptômes dépressifs : 36,6 % des étudiants, 20,1 % des non-étudiants\n\n            Symptômes d’anxiété : 27,5 % des étudiants, 16,9 % des non-étudiants\n\n            Pensées suicidaires : 12,7 % des étudiants, 7,9 % des non-étudiants\n\n            Des analyses plus poussées ont été faites sur la durée. Si les pourcentages restent stables chez les non-étudiants quelle que soit la période (premier confinement, déconfinement, deuxième confinement), on observe de plus grandes variations dans le groupe des étudiants. Les troubles psychologiques sont beaucoup plus élevés en période de confinement et notamment lors du deuxième (du 30 octobre au 15 décembre 2020). Si 36% des étudiants ont révélé des symptômes dépressifs durant le premier confinement, le pourcentage a bondi au-delà de 50% lors du deuxième confinement (alors qu’il n’a pas dépassé, dans les deux cas, les 25% chez les non-étudiants).\n\n            L’étude démontre ainsi d’importantes inégalités en période de pandémie, lesquelles de surcroît ont tendance à se creuser au fil du temps. La vulnérabilité des étudiants est donc avérée. En plus du stress habituel généré par la difficulté de suivre les études (et les difficultés matérielles y attenant), la pandémie et les confinements ont exacerbé l’anxiété et les états dépressifs.\n\n\n\n            Étudiants et covid : le gouvernement apporte son soutien contre les précarités\n            A la lumière de ces études, des mesures de prévention spécifiques doivent donc être prises envers les étudiants. Il faut notamment garder à l’esprit que le problème reste d’actualité même si les mesures de confinement n’ont plus cours. Les problèmes de santé mentale ont un impact sur la durée. Chez les étudiants, la détresse est toujours présente et reste plus élevée qu’avant le début de l’épidémie. Les risques de décrochage scolaire restent d’actualité, tout comme les symptômes de dépression et les pensées suicidaires. ', 'La crise sanitaire liée à la pandémie de Covid-19 a eu des répercussions sur la santé mentale des Français. Une étude a en outre démontré la fragilité des étudiants dans ce domaine.', '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(2, NULL, 'Étudiants et Covid : quelles répercussions ?', 'Étudiants-et-Covidrépercussions', 'Marlene Kirlin', 'La crise sanitaire liée à la pandémie de Covid-19 a eu des répercussions sur la santé mentale des Français. Une étude a en outre démontré la fragilité des étudiants dans ce domaine.\n\n            En mars 2020, l\\’Organisation mondiale de la santé (OMS) déclare le Covid-19 en situation de pandémie. Les cas de personnes atteintes du virus se multiplient dans le monde et contraignent les gouvernements à prendre des mesures sans précédent : distanciation sociale, respect des gestes barrières, annulation en masse de manifestations sportives et culturelles, confinement, etc. Les établissements scolaires et universitaires ferment également leurs portes, au grand dam du corps enseignant et des étudiants poussés à suivre leurs études en distanciel et à rompre tout contact physique. Une situation inédite et inquiétante qui ne manque pas de générer du stress et de l’anxiété.\n\n\n\n            Étudiants et Covid, le lourd bilan\n            Au-delà de la maladie elle-même, dont les effets ont longtemps été imprévisibles, la pandémie de Covid-19 touche également la santé mentale des étudiants, de leurs enseignants et du personnel des établissements universitaires.\n\n            D’une manière générale, les épidémies et pandémies figurent en bonne place parmi les plus grandes craintes de l’humanité. Cette crainte touche inévitablement le mental des populations et provoque anxiété et dépressions. Certaines études d’avant-Covid ont démontré déjà que l’épidémie de SRAS (2002-2004) a eu des impacts psychologiques pendant plusieurs années après la fin de l’épidémie. Avec la pandémie du Covid-19, le problème a été exacerbé par les confinements qui ont contraint les personnes à l’isolement et la distanciation.\n\n            La population étudiante se révèle en outre une population exposée aux problèmes de santé mentale. En dehors même des situations de crises de grande ampleur, les étudiants connaissent des motifs d’anxiété très vifs et des cas de dépression, de par leur vie d’étudiant jalonnée d’examens et de remises en cause. En France, le suicide est la deuxième cause de mortalité chez les 15-25 ans.\n\n            A ce titre, des études ont été menées durant la pandémie de Covid-19 et les mesures de confinement adoptées sur tout le pays, pour tenter de déterminer si les étudiants étaient plus exposés à la détérioration de leur santé mentale que le reste de la population.\n\n            Les scientifiques de l\\’Institut national de la santé et de la recherche médicale (Inserm) et les chercheurs de l’Université de Bordeaux ont recueilli durant la pandémie les témoignages de plus de 3500 personnes. Celles-ci, recrutées à travers les réseaux sociaux, ont été divisées en deux groupes : les étudiants et les autres. Les deux groupes étaient équivalents en termes de pourcentage hommes/femmes et en proportion de personnes ayant des antécédents de problèmes psychologiques. L’étude a été réalisée entre mars 2020 et janvier 2021, une période qui couvre le premier et le deuxième confinement, avec dans l’intervalle le déconfinement mesuré de l’été 2020.\n\n            Les résultats de cette étude indiquent clairement que les étudiants ont été les plus touchés sur le plan mental :\n\n            Symptômes dépressifs : 36,6 % des étudiants, 20,1 % des non-étudiants\n\n            Symptômes d’anxiété : 27,5 % des étudiants, 16,9 % des non-étudiants\n\n            Pensées suicidaires : 12,7 % des étudiants, 7,9 % des non-étudiants\n\n            Des analyses plus poussées ont été faites sur la durée. Si les pourcentages restent stables chez les non-étudiants quelle que soit la période (premier confinement, déconfinement, deuxième confinement), on observe de plus grandes variations dans le groupe des étudiants. Les troubles psychologiques sont beaucoup plus élevés en période de confinement et notamment lors du deuxième (du 30 octobre au 15 décembre 2020). Si 36% des étudiants ont révélé des symptômes dépressifs durant le premier confinement, le pourcentage a bondi au-delà de 50% lors du deuxième confinement (alors qu’il n’a pas dépassé, dans les deux cas, les 25% chez les non-étudiants).\n\n            L’étude démontre ainsi d’importantes inégalités en période de pandémie, lesquelles de surcroît ont tendance à se creuser au fil du temps. La vulnérabilité des étudiants est donc avérée. En plus du stress habituel généré par la difficulté de suivre les études (et les difficultés matérielles y attenant), la pandémie et les confinements ont exacerbé l’anxiété et les états dépressifs.\n\n\n\n            Étudiants et covid : le gouvernement apporte son soutien contre les précarités\n            A la lumière de ces études, des mesures de prévention spécifiques doivent donc être prises envers les étudiants. Il faut notamment garder à l’esprit que le problème reste d’actualité même si les mesures de confinement n’ont plus cours. Les problèmes de santé mentale ont un impact sur la durée. Chez les étudiants, la détresse est toujours présente et reste plus élevée qu’avant le début de l’épidémie. Les risques de décrochage scolaire restent d’actualité, tout comme les symptômes de dépression et les pensées suicidaires. ', 'La crise sanitaire liée à la pandémie de Covid-19 a eu des répercussions sur la santé mentale des Français. Une étude a en outre démontré la fragilité des étudiants dans ce domaine.', '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(3, NULL, 'Comment rédiger un mémoire ?', 'Comment-rédiger-un-mémoire', 'Rozella Strosin', 'Vous entrez en dernière année et on vous demandera de rédiger un mémoire de fin d’études, puis d\'assurer sa soutenance. Qu\'est-ce qu\'un mémoire de fin d\'études ? Comment le rédiger ? Qu’est-ce qu’une soutenance ? Comment la préparer ?\n\n\n            Qu\'est-ce qu\'un mémoire de fin d\'études ?\n            Le mémoire de fin d’études est un document à préparer et à rédiger tout au long d’une année scolaire et qui doit être remis au printemps pour évaluation dans le cadre d’un diplôme. Il est demandé lors de la dernière année d’un cycle d’études et il permet d’évaluer ce qui en a été retenu, notamment en termes de recherche, de réflexion, de rédaction et de sens critique.\n\n\n            Quelles sont les étapes pour rédiger un mémoire ?\n            De la recherche du sujet jusqu’à la soutenance, la rédaction d’un mémoire de fin d’études passe par de nombreuses étapes. Aucune n’est à négliger.\n\n            Quel type de mémoire ?\n            Le type de mémoire dépend du domaine d’études que vous suivez et de leur niveau. Cela peut être un mémoire de recherche, un mémoire de stage, un mémoire de master, un mémoire universitaire, un mémoire de licence, un mémoire de droit, un mémoire en marketing, un mémoire scientifique, etc. Il existe pour chaque type de mémoire des conventions, des usages, des codes qu’il est important de connaître et de respecter.\n\n            Comment organiser la rédaction du mémoire ?\n            L’organisation de la rédaction d’un mémoire passe par l’établissement d’un calendrier, où seront notées les différentes étapes de l’entreprise. On peut imaginer le calendrier suivant :\n\n            Septembre-octobre : recherche du sujet du mémoire\n\n            Début novembre : prise de contact avec le directeur de mémoire\n\n            Novembre-décembre : recherches, collecte de données\n\n            Janvier-février : définir la problématique à aborder et établir un plan de mémoire (faire valider la problématique et le plan par le directeur de mémoire).\n\n            Mars-avril : rédaction du mémoire\n\n            Début mai : relecture, correction, mise en forme et impression du mémoire\n\n            Cocher la date de la remise du mémoire\n\n            Cocher la date de la soutenance du mémoire\n\n            Il ne faut pas hésiter à se renseigner auprès des établissements, des professeurs et des anciens élèves sur la méthodologie à suivre. Certains établissements proposent même une méthodologie-type.\n\n            Quel sujet aborder dans le mémoire ?\n            Le sujet du mémoire est bien entendu un élément central de sa rédaction. Règle première : Le sujet doit susciter un certain intérêt à son rédacteur si celui-ci veut le rendre passionnant à la lecture. Il faut en outre faire un choix réaliste qui rende l’écriture faisable. Dans certains cas, le sujet peut être proposé dans une liste par l’établissement ou bien cadré par des consignes.\n\n            Comment définir une problématique ?\n            La problématique est un élément clé du mémoire puisqu’il en constitue l’angle d’attaque. Pour avoir les bonnes réponses, il faut poser la bonne question. Pareil pour un mémoire, il faut poser la bonne problématique. Lorsque celle-ci a été définie, il est temps d’établir le plan du mémoire.\n\n            Comment établir le plan du mémoire ?\n            Une fois que la problématique a été définie, des questions en découlent auxquelles il faudra apporter les réponses. A partir de la question centrale que constitue la problématique, il faut définir des sous-questions, puis les lister et les regrouper dans un ordre logique. On peut privilégier les réponses “simples” au début et les réponses plus complexes par la suite (mais ce n’est pas une règle absolue).\n\n            Comment établir un plan de recherche pour le mémoire ?\n            Lorsque toutes les questions du sujet ont été définies, il faut chercher les réponses. L’étape de recherches est l’une des plus intenses dans la construction du mémoire. Les éléments collectés (données empiriques) lors de la recherche doivent être précis (croiser les éléments) et fiables (vérifier les sources).\n\n            Comment rédiger un mémoire de fin d’études ?\n            La rédaction du mémoire en tant que telle devient la partie la plus concrète du projet. Un mémoire représente entre 60 et 100 pages. Il comprend :\n\n            Une couverture\n\n            Une page de garde\n\n            Un sommaire (les titres et sous-titres doivent être explicites)\n\n            Une préface (regard personnel sur le sujet, sur le contexte de la rédaction du mémoire)\n\n            Les remerciements (aux professeurs, collègues, experts impliqués dans le projet)\n\n            Un résumé (objectif du mémoire, synthèse du travail mené)\n\n            Une introduction (annonce de la problématique et des questions qui en découlent)\n\n            Une partie théorique (concepts et idées préexistantes, postulat…)\n\n            Une partie pratique (expérience, observation personnelle, entretiens…)\n\n            Une conclusion (rappel de la problématique et réponse globale à celle-ci)\n\n            Une postface  (réflexion d’ordre personnel lié à la conclusion et au travail accompli)\n\n            Une bibliographie (référencement des sources selon des conventions à respecter)\n\n            Plusieurs annexes\n\n            Une fois rédigé l’ensemble, il reste à définir le titre du mémoire (accrocheur, percutant, mais approprié), soigner la mise en page (marges, polices de caractères, numérotation…), procéder à la relecture et aux corrections (soumettez la lecture à un proche, car on ne voit pas toujours ses propres fautes), imprimer le mémoire (garder un PDF de la version définitive) et, déjà, préparer la soutenance.', 'Vous entrez en dernière année et on vous demandera de rédiger un mémoire de fin d’études, puis d\'assurer sa soutenance. Qu\'est-ce qu\'un mémoire de fin d\'études ? Comment le rédiger ? Qu’est-ce qu’une soutenance ? Comment la préparer ?', '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(4, NULL, 'Comment créer une entreprise quand on est étudiant ?', 'Comment-créer-une-entreprise-quand-on-est-étudiant', 'SIMON Judith', 'Il est tout à fait possible de créer une entreprise en étant étudiant. Comment s’y prendre ? Quelles sont les démarches administratives à entreprendre ? Quels sont les pièges à éviter ?\n\n\n            Créer son entreprise pendant ses années d’études, pourquoi pas ? Puisqu’il s’agit d’apprendre, autant associer la pratique à la théorie. Monter son activité, entreprendre les démarches, rechercher la rentabilité, payer les charges, rechercher des clients, trouver des collaborateurs, établir des partenariats… l’aventure ne manque pas d’intérêt. Et même si elle devait échouer, elle donnera beaucoup de leçons pour l’avenir.\n\n\n\n            Etudiants : comment créer votre entreprise ?\n            Un statut spécifique a été créé en 2014 à l’attention des étudiants qui souhaitent créer une entreprise : le statut étudiant-entrepreneur. Il permet à une personne qui suit ses études de monter son entreprise ou sa start-up tout en conservant le bénéfice de son statut d’étudiant.\n\n            Qu’est-ce que le statut étudiant-entrepreneur ?\n            Le statut étudiant-entrepreneur est ouvert à tout étudiant de moins de 28 ans détenteur du bac. Il s’agit d’un statut à renouveler tous les ans jusqu’à la fin de ses études. Voire même au-delà, puisque l’on peut conserver son statut quand on crée son entreprise juste après avoir été diplômé.\n\n            Depuis la création de ce statut, plus de 500 entreprises ont été créées par des étudiants. Pas moins de 6.000 étudiants entrepreneurs ont bénéficié de ce statut, et leur nombre augmente chaque année.\n\n            Quels sont les avantages du statut étudiant-entrepreneur ?\n            L’entrepreneur étudiant bénéficie d’aides tant pour son statut d’étudiant que pour celui d’entrepreneur. Il est accompagné tout au long de ses démarches de création d’entreprise. Il peut obtenir l’aménagement de son cursus étudiant en fonction de ses activités d’entrepreneur. Il peut également faire passer sa création d’entreprise dans le cadre d’un stage de fin d’études.\n\n            Si vous avez obtenu votre diplôme et que vous souhaitez monter votre entreprise, le statut étudiant-entrepreneur vous permet de conserver quelques aides aux étudiants, comme les bourses d’études, la sécurité sociale étudiante et les tarifs spécifiques dans les transports et les activités.\n\n            Ou l’étudiant doit-il s’adresser pour créer son entreprise ?\n            S’il souhaite créer son entreprise pendant ses études, l’étudiant doit s’adresser à un Pôle étudiants pour l’innovation, le transfert et l’entrepreneuriat (PEPITE) dans lequel lui sera proposé un accompagnement personnalisé. Le PEPITE est une structure spécifiquement conçue pour les projets de création d’entreprises par des étudiants : conseil, formation, financement, etc. Toutes les infos sont sur le site www.pepite-france.fr\n\n            Le PEPITE organise également des événements, les “Pépite Factory” qui permet de regrouper les entrepreneurs étudiants en salon, où il trouveront des espaces d’échange et de partage avec d’anciens étudiants entrepreneurs, ainsi qu’avec des entrepreneurs, des enseignants et toute forme de conseils. Ces événements permettent aussi de valoriser le statut étudiant-entrepreneur auprès des grandes entreprises et des établissements financiers.\n\n\n\n            Créer son entreprise en étant étudiant : les pièges à éviter\n            Créer une entreprise en étant étudiant ne manque pas de pièges et il est toujours bon d’en connaître les plus courants pour ne pas tomber bêtement dedans.\n\n            Mal penser son projet : Si une entreprise échoue, c’est parce que son projet a été mal pensé : concurrence trop vive, clientèle potentielle trop disparate, revenus trop faibles par rapport à l’investissement… Avant de créer une entreprise, il faut nécessairement faire une étude de marché puis un business plan.\n\n            Craindre l’échec : Entreprendre, c’est par nature s’exposer à l’échec. Mais l’échec n’est pas une raison pour ne pas entreprendre. L’échec est même souvent plus riche d’enseignements que la réussite. On apprend peu sans erreurs.\n\n            Être mal organisé : associer études et gestion d’entreprise nécessite un minimum de rigueur et d’organisation. L’entreprise nécessite une implication plus forte que pour un job salarié. Il s’agit donc de définir un planning adéquat qui ne néglige aucune des deux activités.\n\n            Vouloir tout tout de suite : La création d’une entreprise nécessite du temps et de la patience. Il est important de respecter chacune des démarches dans l’ordre avant de se lancer la tête dans le guidon.\n\n            Ne pas être réellement motivé : plus qu’une option, l’entreprenariat est un choix de vie. Il nécessite un investissement personnel important, qui conduit parfois à de longues heures de travail. En outre, le gain financier est souvent maigre au début. Il s’agit donc de ne pas se décourager.\n\n            La jouer en solo : une des erreurs majeures des jeunes entrepreneurs, qu’ils soient étudiants ou non, est de rester dans leur coin, sans faire connaître leur projet, souvent de peur d’être découragés par de mauvais conseils. Parlez de votre projet, faites le connaître, défendez-le. Cela vous permettra d’obtenir du soutien et de développer des opportunités.', 'Il est tout à fait possible de créer une entreprise en étant étudiant. Comment s’y prendre ? Quelles sont les démarches administratives à entreprendre ? Quels sont les pièges à éviter ?', '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(5, NULL, 'Comment devenir propriétaire ?', 'Comment-devenir-propriétaire', 'SIMON Ola', '', 'Vous souhaitez devenir propriétaire de votre logement. Quelles sont les étapes pour accéder à la propriété ? Faut-il nécessairement bénéficier de revenus confortables ? De quelles aides peut-on bénéficier ? On vous dit tout. ', '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(6, NULL, 'Comment rédiger un mémoire ?', 'Comment-rédiger-un-mémoire', 'SIMON Fernando', 'Vous souhaitez devenir propriétaire de votre logement. Quelles sont les étapes pour accéder à la propriété ? Faut-il nécessairement bénéficier de revenus confortables ? De quelles aides peut-on bénéficier ? On vous dit tout.\n\n            Devenir propriétaire d’un logement est une démarche intéressante, notamment sur le plan économique. L’immobilier est une valeur sûre qui permet de voir l’avenir avec sérénité. Mais il ne faut pas faire n’importe quoi.\n\n\n\n            Quelles sont les étapes à suivre pour devenir propriétaire ?\n            Accéder à la propriété est avant tout une leçon de patience. Il faut prendre son temps dans chacune des étapes. Avant de songer à devenir propriétaire, il est important de bien définir son projet immobilier.\n\n            S’agit-il de l’acquisition de son lieu de résidence ou d’un investissement locatif ?\n\n            Est-ce que je souhaite une maison ou un appartement ?\n\n            Faut-il investir dans du neuf ou de l’ancien ?\n\n            Dois-je préférer une grande ville ou un logement en campagne ?\n\n\n            Première étape : le budget\n            Une fois le projet immobilier bien défini, il faut établir un budget avec comme principale interrogation : combien suis-je prêt à donner chaque mois ? Combien de temps ? Il faut donc tenir compte de vos revenus et des éventuelles aides qui peuvent d’agréger.\n\n            Deuxième étape : la recherche\n            Lorsque vous avez établi un budget, il est temps de passer à la recherche du logement proprement dit. Vous pouvez démarcher les agences immobilières qui effectueront les recherches selon votre budget et la nature de votre projet. Vous pouvez également faire la recherche sur internet. Les deux démarches ne sont pas incompatibles, bien au contraire.\n\n            Troisième étape : le compromis\n            Quand vous avez trouvé le logement qui correspond à votre recherche, vous devez faire une offre d’achat au vendeur du bien. Quand celui-ci l’accepte, vous signez avec lui le compromis de vente chez le notaire. Le logement vous est ainsi réservé, et vous êtes tenu de l’acheter… sauf si vous ne parvenez pas à obtenir le financement.\n\n            Quatrième étape : le financement\n            Le compromis de vente signé, il est temps de démarcher les banques pour financer le projet d’accession à la propriété. Il est préférable de s’adresser à un courtier en crédit immobilier lequel fera la recherche du financement le plus adapté à votre situation, en tenant compte des différentes aides que vous pourrez obtenir.\n\n            Cinquième étape : l’achat\n            Lorsque le prêt immobilier a été accordé, il reste à passer chez le notaire pour signer l’acte de vente. Vous êtes enfin devenu propriétaire.\n\n\n\n            Quel salaire gagner pour être propriétaire ?\n            Lorsque vous êtes salariés et/ou que vous pouvez justifier de revenus réguliers, vous pouvez prétendre à devenir propriétaire et vous lancer dans une démarche d’accession à la propriété.\n\n            Ce n’est pas le montant du salaire en lui-même qui détermine si vous pouvez être propriétaire, mais bien ce que vous serez en capacité de rembourser si vous contractez un emprunt. En pratique, ce montant que vous rembourserez chaque mois ne devra pas dépasser un tiers de vos revenus mensuels.\n\n\n\n            Quelles sont les aides pour l\'accès à la propriété ?\n            De nombreux dispositifs sont proposés aux personnes qui souhaitent devenir propriétaires d’un bien immobilier.\n\n            La location-accession\n            La location-accession est une démarche qui donne au locataire la possibilité d’acheter le logement qu’il occupe après une certaine période de location. C’est un dispositif qui permet aux ménages qui n’ont pas d’apport personnel de devenir propriétaire de leur logement. Créée en 1984, la location-accession est courante dans les organismes de HLM, mais peut se pratiquer dans plusieurs autres types de locations.\n\n            L’ANRU\n            L’Agence nationale pour la rénovation urbaine (ANRU) propose une aide aux personnes qui souhaitent acquérir un logement dans les zones urbaines en cours de réhabilitation. Le dispositif propose notamment un taux de TVA réduit à 5,5%. Consulter le site www.anru.fr\n\n            Le prêt à taux zéro\n            Le prêt à taux zéro (PTZ) est la formule de prêt immobilier la plus populaire. Elle permet au primo-accédant de financer une partie de son acquisition sans avoir à payer d’intérêts. Voir la page consacrée au prêt à taux zéro (PTZ) sur le site du Service Public.\n\n            Le prêt accession d’Action Logement\n            Action Logement propose un prêt accession avec un taux de 1% aux salariés des entreprises du secteur privé non agricole (de 10 salariés ou plus) qui souhaitent accéder à la propriété. Tout salarié peut prétendre à ce dispositif quelque soit son ancienneté dans l’entreprise et le type de contrat de travail (CDI, CDD, etc.).\n\n            La prime accession d’Action Logement\n            Action Logement vous permet également d’obtenir une prime accession de 10.000 € pour aider les primo-accédant à acquérir un logement neuf. Cette subvention est ouverte aux salariés des entreprises du secteur privé non agricole quelque soit le type de contrat de travail et l’ancienneté.\n\n            Le prêt Accession Sociale', 'Vous souhaitez devenir propriétaire de votre logement. Quelles sont les étapes pour accéder à la propriété ? Faut-il nécessairement bénéficier de revenus confortables ? De quelles aides peut-on bénéficier ? On vous dit tout. ', '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(7, NULL, 'Classement 2022 des écoles d\'ingénieurs', 'Classement-2022-des-écoles-ingénieurs', 'GOGO Ola', 'Quelles sont les meilleures écoles d’ingénieurs de France ? Quelles sont celles qui progressent, qui régressent ? Vite, voici le classement 2022 des meilleures écoles d\'ingénieurs en France.\n\n            Chaque année, le site www.letudiant.fr publie un classement des écoles françaises d’ingénieurs. Ce palmarès toujours très attendu permet de distinguer l’excellence de l’enseignement français et permet aux étudiants d’affiner leur choix pour poursuivre leurs études.\n\n\n\n            Quels critères pour classer les écoles d’ingénieurs ?\n            Les enquêteurs ont choisi d’étudier 172 écoles d’ingénieurs afin d’en prélever pour chacune une cinquantaine d’indicateurs qui permettront d’effectuer un classement à l’échelle nationale. Aucune distinction n’est faite entre établissements publics ou privés. Ces établissements doivent être habilités par la Commission des titres d’ingénieurs (CTI) et doivent délivrer le Diplôme d’Ingénieur. Les cycles ingénieurs mentionnés ont le grade de master. Ce sont des écoles post-bac (cursus de cinq ans) ou post-prépa (cursus de trois ans).\n\n            Les quatre critères de base sont l’excellence académique, l’ouverture internationale, la proximité avec les entreprises et l’ouverture aux nouveaux publics. Chacun de ces grands thèmes contiennent une douzaine de sous-critères. En 2022, parmi les nouveaux critères s’est ajouté celui de l’engagement environnemental des établissements. Ceux-ci doivent obtenir le label DD&RS (développement durable et responsabilité sociétale) et leurs bâtiments doivent être certifiés HQE (haute qualité environnementale). Leur présence dans le classement THE Impact (Times Higher Education) constitue également un atout.\n\n\n\n            Les meilleures écoles d’ingénieurs de France\n            Le classement des écoles d\'ingénieurs de France compte 172 établissements. Plusieurs écoles ont demandé à ne pas y participer. D’autres n’y sont pas encore car ouvertes trop récemment.\n\n            L’année scolaire 2020-2021 a été marquée par la crise sanitaire avec les deux confinements qui ont obligé la mise en place de cours à distance. Plusieurs événements présentiels ont été annulés, ce qui a fait perdre des points à bon nombre d’établissements. D’autres au contraire en ont gagné en faisant preuve de capacité d’adaptation, notamment dans l’utilisation des outils de visioconférence.\n\n            Nous vous présentons les vingt-trois premiers, ceux qui ont obtenu au moins 40 points au classement général. Le classement complet se trouve sur le site de l’Etudiant. Le podium reste le même qu’en 2021, avec l\'École Polytechnique (Palaiseau) sur la plus haute marche, suivi de Télécom Paris (Palaiseau) et CentraleSupélec (Gif-sur-Yvette).', 'Quelles sont les meilleures écoles d’ingénieurs de France ? Quelles sont celles qui progressent, qui régressent ? Vite, voici le classement 2022 des meilleures écoles d\'ingénieurs en France.', '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(8, NULL, 'Comment louer son appartement en courte durée ?', 'Comment-louer-son-appartement-en-courte-durée', 'HULEUR Fernando', 'Grâce à l’émergence de plateformes telles AirBnB, louer un logement de manière temporaire est devenu un usage courant. Chacun sait désormais comment louer son appartement sur une courte durée. Il y a toutefois bien des choses à connaître sur le plan législatif et fiscal avant de se lancer.\n\n\n\n            Qu\'est-ce qu\'une location de courte durée ? Définition\n            Une location s’entend “de courte durée” ou “temporaire” lorsque son occupant n’en fait pas sa résidence principale. L’occupant reste entre une ou plusieurs nuits, jusqu’à plusieurs mois, mais n’a pas vocation à rester dans le logement.\n\n            Le logement loué est une location meublée. La location temporaire ou de courte durée s’adresse aux gens dit “de passage” : les touristes, les professionnels itinérants et les personnes en situation de transition entre deux logements.\n\n\n\n            Comment mettre sa résidence principale en location de courte durée ?\n            Votre résidence principale, selon la loi, est celle que vous occupez durant au moins huit mois dans l‘année. Ce qui induit que vous pouvez louer votre résidence principale pendant quatre mois maximum durant l’année, soit 120 jours.\n\n            Ce sont les communes qui décident si une location temporaire doit être déclarée ou non. Il est préférable de se renseigner à la Mairie avant d’entreprendre toute démarche. Paris, par exemple, demande qu’une résidence principale faisant l’objet d’une location de courte durée obtienne un numéro d’enregistrement. Celui-ci doit figurer notamment sur les annonces de la location, la Ville de Paris peut demander la suppression de l’annonce si le numéro d’enregistrement n’y figure pas.\n\n\n\n            Comment mettre sa résidence secondaire en location de courte durée ?\n            Si c’est votre résidence secondaire que vous souhaitez louer en courte durée, la démarche sera autrement plus compliquée. Plus la ville où se situe la résidence sera grande, plus il sera nécessaire de déclarer la location en mairie, de remplir une demande d’autorisation de changement d’usage et même de se plier à la règle de compensation.\n\n            Puisqu’il ne s’agit pas de votre résidence principale, vous avez le droit de la louer plus de 120 jours dans l’année. Toutefois, la déclaration à la Mairie sera obligatoire (quelle que soit la commune).\n\n            Pour effectuer cette déclaration, vous serez tenu de fournir :\n\n            Votre nom, adresse mail et adresse postale du domicile principal,\n\n            L’adresse du logement en location, le numéro de taxe d\'habitation auquel il est rattaché, le nombre de pièces, le nombre de lits et son classement de la qualité du meublé de tourisme,\n\n            Les périodes durant lesquelles le logement sera mis en location\n\n            Les grandes agglomérations, notamment les villes de plus de 200.000 habitants (et celles de la région parisienne), exigent en outre de remplir une demande d’autorisation de changement d’usage du logement. Cette déclaration est limitée dans le temps. La durée de validité varie selon les villes. Lorsque l’autorisation prend fin, le logement retrouve son statut initial, et il est nécessaire de refaire une demande d’autorisation de changement d’usage s’il on souhaite louer à nouveau le logement.\n\n            Ce n’est pas fini. Les grandes villes exigent également de vous soumettre à la règle de compensation : vous devez acheter un local de surface équivalente à votre logement, ceci afin que la ville compense la perte d’un logement principal. ', 'Grâce à l’émergence de plateformes telles AirBnB, louer un logement de manière temporaire est devenu un usage courant. Chacun sait désormais comment louer son appartement sur une courte durée. Il y a toutefois bien des choses à connaître sur le plan législatif et fiscal avant de se lancer. ', '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(9, NULL, 'Pourquoi choisir une résidence étudiante ?', 'Pourquoi-choisir-une-résidence-étudiante', 'DOSSOU Jean', 'Le premier choix des étudiant(e)s en matière de logement est la résidence étudiante. A tel point que la demande est largement supérieure à l’offre. Il faut dire que cette solution, moins onéreuse qu’un logement classique, apporte tout ce dont on a besoin pour poursuivre ses études. La résidence étudiante est une solution agréable et pratique pour sa proximité, sa tranquilité et les facilités qu’elle offre. Elle a également le don de rassurer les parents.\n\n            Logements de proximité\n\n            Les résidences étudiantes se trouvent juste à côté du lycée ou de l\'université. Cela peut être pratique si l’on ne connaît pas encore bien la ville dans laquelle on vient de débarquer. Loger tout près des lieux de cours veut également souvent dire proche des commerces et bien desservi par les transports en commun.\n\n            On trouve généralement à proximité des résidences étudiantes et des universités le restaurant universitaire et de nombreux services dédiés aux étudiant(e)s. Un cadre très pratique dans les premiers jours et surtout très sécurisant.\n\n            La résidence étudiante est très pratique car en plus d’être proche des lieux d’études, elles disposent d’un(e) gestionnaire qui peut aider les étudiant(e)s dans leurs démarches et leurs questionnements du quotidien. Rompu(e) à l’administration des formalités du monde étudiant, il ne faudra pas hésiter à lui poser toutes les questions : il (ou elle) aura toutes les réponses. C’est toujours sympa d’avoir auprès de chez soi quelqu’un qui sait tout.\n\n            Un chez-soi 100% étudiant\n\n            Contrairement aux appartements et autres logements, les résidences étudiantes ont été pensées pour les étudiant(e)s. Aussi bien en termes de budget que de confort. S’il ne s’agit que d’une petite chambre à priori, celle-ci est meublée et parfaitement fonctionnelle. Elle sépare idéalement les moments essentiels : étudier, manger et dormir. On trouve donc un lit, un coin cuisine et un bureau, chacun de ces éléments étant disposé de façon à ce que l’un n’empiète pas sur l’autre. C’est important : Le bureau ne doit pas servir de table de cuisine. Le lit ne doit pas être un espace de travail.\n\n            D’autres meubles au contraire sont parfaitement mobiles ce qui permet d’adapter la configuration de la chambre à toute situation. Le logement dispose d’étagères et de placards qui permettent de ranger beaucoup de choses, notamment ses habits et ses livres. Selon les résidences, les salles de bains peuvent être individuelles ou communes.\n\n            Les logements étudiants sont pensés pour les besoins de l’étudiant, pour son équilibre et sa tranquillité. Les résidences disposent d’un accès collectif à internet, gratuit et immédiat. Pas besoin de contacter un opérateur et de prendre une box avec abonnement.\n\n            Au coeur de la vie étudiante\n\n            La résidence permet d’être constamment connecté à la vie étudiante. On partage notre vie avec d’autres personnes du même âge dans la même situation. On peut être amené à côtoyer des personnes d’origine étrangère ou de culture différente, ce qui est toujours très enrichissant. Tout en préservant son chez-soi, on est amené à participer aux événements organisés sur les lieux ou dans un périmètre proche.\n\n            Les résidences étudiantes sont pour la plupart dotées d\'espaces de co-working qui permettent les travaux d’étude en commun et d\'organiser quelques moments conviviaux comme des pots d’anniversaire, des repas en commun ou toute sorte d\'événement.\n\n            Au bout d’une année de résidence étudiante, rien n’empêche si on le souhaite de rechercher un logement classique dans une ville que l’on connaît désormais bien. Si le bail d’un logement étudiant est convenu pour un an, il est tout à fait possible d’y mettre fin en cours d’année, à condition bien entendu de respecter le préavis d’un mois.\n\n            Comment faire une demande ?\n\n            Pour demander un logement dans une résidence étudiante, il faut établir un dossier social étudiant (DSE) à partir du site www.messervices.etudiant.gouv.fr ou sur des sites spécialisés tels que www.location-etudiant.fr', 'Le premier choix des étudiant(e)s en matière de logement est la résidence étudiante. A tel point que la demande est largement supérieure à l’offre. Il faut dire que cette solution, moins onéreuse qu’un logement classique, apporte tout ce dont on a besoin pour poursuivre ses études.', '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(10, NULL, 'Avez-vous bien assuré votre logement étudiant ?', 'Avez-vous-bien-assuré-votre-logement-étudiante', 'SIMON Olivier', 'Vous avez enfin trouvé le logement que vous occuperez durant (une partie de) vos études. Il est temps désormais de contracter une assurance habitation. Que vous soyez dans une résidence étudiante (à l\'université ou en privé), en location dans un appartement ou une chambre, en colocation ou en sous-location, l’assurance habitation est obligatoire. Celle-ci vous permettra de couvrir les frais si vous êtes responsable de dégradation, notamment en cas d’incendie, d’inondation ou d’explosion. Car cela n’arrive pas qu’aux autres...\n\n            Au moment de signer le contrat de location, le propriétaire bailleur vous demandera très probablement une attestation d’assurance. Celle-ci vous aura été transmise par votre assureur. Un contrat d’habitation étant valable un an, l’attestation sera à présenter à chaque renouvellement de l’assurance. Sans assurance habitation, le propriétaire bailleur est en droit de résilier le contrat de location.\n\n            Une assurance habitation, combien ça coûte ?\n\n            Pour un étudiant, l’assurance habitation coûte rarement plus de 150,00 € par an. Ce tarif est fixé en fonction de plusieurs paramètres : la zone géographique (il y a des villes plus chères que d’autres...), la nature du logement (un appartement, une maison, une chambre…), sa taille, le nombre de pièces, l’ancienneté du bâtiment, le nombre d’occupants, la valeur des biens que vous souhaitez assurer avec le logement (mobilier, équipement...).\n\n            Le tarif varie donc en fonction du logement, mais aussi en fonction… de la compagnie d’assurance à laquelle vous vous adressez. C’est pourquoi il est préférable de démarcher plusieurs assurances et de leur demander à chacune un devis, établi sur des critères comparables. Vous pourrez ensuite choisir le plus intéressant.\n\n            Vous trouverez plusieurs sites internet qui vous permettent de comparer les devis :', 'Vous avez enfin trouvé le logement que vous occuperez durant (une partie de) vos études. Il est temps désormais de contracter une assurance habitation. Que vous soyez dans une résidence étudiante (à l\'université ou en privé), en location dans un appartement ou une chambre,', '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(11, NULL, 'Étudiants : pour ou contre le retour des cours en présentiel', 'Étudiants-pour-ou-contre-le-retour-des-cours-en-présentiel', 'TITI Fernando', 'Le retour des étudiants en présentiel dans les grandes écoles est un sujet fort sensible. Il y a d’une part la volonté de revenir à une “vie normale” faite de présence physique et d’échanges humains, et de l’autre la menace toujours présente d’un virus particulièrement contagieux et la contrainte d’une application stricte des gestes barrières.\n\n            Un retour à petites doses ?\n\n            Le chef de l’Etat lui-même s’est risqué à proposer un retour “à petites doses” des étudiants dans leurs établissements, si possible dès le début du mois de février. Une annonce qui a été accueillie avec circonspection dans le monde étudiant.\n\n            La ministre de l’enseignement supérieur avait proposé dès le 19 décembre 2020 une reprise des cours en présentiel pour janvier en escomptant une amélioration de la situation sanitaire. Peine perdue. Pour le moment, seules les universités ont été rouvertes le 25 janvier aux travaux dirigés en demi-groupe des étudiants de première année.\n\n            Le Premier ministre quant à lui n’oublie jamais de ponctuer l’annonce de ses décisions par un sempiternel “si la situation sanitaire le permet” qui autorise implicitement tout changement de cap.\n\n            Demi-jauge ou quart de jauge ?\n\n            Du côté du corps médical, on se montre plutôt favorable au retour au présentiel. Les médecins soulignent l\'anxiété que subissent les étudiants depuis le début des mesures et les nombreux cas de dépressions que cela a provoqué. Un retour à une vie sociale moins virtuelle est devenu selon eux une urgence. Le conseil scientifique préconise donc un retour en présentiel “en demi-jauge ou en quart de jauge”.\n\n            Les présidents d’universités réfutent quant à eux l’idée que leurs établissements sont “des lieux de très grande circulation du virus” comme l’avait annoncé le gouvernement en octobre 2020. Ils estiment que les amphithéâtres permettent de respecter les protocoles sanitaires et d’assurer des cours en toute sécurité. En outre, les services de santé universitaires ont désormais à leur disposition la possibilité de réaliser des tests de dépistage au sein même des établissements.\n\n            Les enseignants s’inquiètent pour leur part des risques de décrochage qui peuvent atteindre une quantité largement supérieure à celles des autres années. Beaucoup ont constaté impuissants à quelques chutes spectaculaires d\'élèves qui avaient du mal à suivre avec attention les cours en ligne.\n\n            Les quelques retours entre soulagement et scepticisme\n\n            Quid, enfin, des étudiants qui sont après tout les premiers concernés par un retour ou non des cours en présentiel ? Le scepticisme semble prendre le pas chez les étudiants qui ont pu reprendre en demi-groupe leurs travaux dirigés le 25 janvier. Certains avouent que ce retour semble bien provisoire puisqu’à peine assis à leur pupitre, ils ont entendu les médias annoncer la possibilité d’un troisième confinement (qui a été reporté depuis).\n\n            En attendant, ce retour à une vie normale a été apprécié. Suivre des cours dans l’ambiance travailleuse des campus est beaucoup plus stimulant que ceux dispensés en ligne que l’on suit seul chez soi. Même si les contraintes sanitaires limitent les interactions avec les autres élèves et les enseignants.\n\n            En dépit de l’incertitude qui règne à propos du virus et de son évolution, tout le monde souhaite un retour rapide en présentiel. La priorité sera donnée aux étudiants de trouvant à des périodes clés de leur parcours. Les première année mais aussi ceux qui bouclent leur cursus ou qui sont en troisième année de licence ou de master.', 'Le retour des étudiants en présentiel dans les grandes écoles est un sujet fort sensible. Il y a d’une part la volonté de revenir à une “vie normale” faite de présence physique et d’échanges humains, et de l’autre la menace toujours présente d’un virus particulièrement contagieux et la contrainte d’une application stricte des gestes barrières.', '2022-10-15 17:48:24', '2022-10-15 17:48:24');
INSERT INTO `articles` (`id`, `path`, `titre`, `slug`, `auteur`, `description`, `short_description`, `created_at`, `updated_at`) VALUES
(12, NULL, 'Logement étudiant : pensez à louer dans l’immobilier neuf', 'Logement-étudiant-pensez-à-louer-dans-immobilier-neuf', 'SIMON TOTO', 'Chaque année, dans les grandes villes de France, les étudiants et bacheliers se mettent à la recherche d’un appartement. Les petites surfaces telles que les studios et les deux pièces sont les plus recherchées, bien que les colocations demandent à avoir plusieurs chambres. Et chaque année, quand vient l’été, la course à la recherche immobilière débute. Les plateformes de locations entre particuliers tournent à plein régime et les agences se retrouvent submergées de demandes.\n\n            Si l’ancien a l’avantage de présenter un cachet et un certain charme au sein des centres-villes, il n’est pas toujours aux dernières normes de construction. Avec une isolation phonique et thermique d’un autre temps, ces logements étudiants présentent des factures énergétiques élevées, en plus des désagréments liés au bruit de voisinage.\n\n            L’immobilier neuf quant à lui offre de nombreuses prestations : économiques, écologiques et modernes. Par exemple, un appartement neuf à Toulouse, ville étudiante par excellence, bénéficiera des dernières normes environnementales de construction, des prestations tout confort et d’une consommation énergétique plafonnée.\n\n            Louer un logement étudiant en France\n\n            En France, louer un logement étudiant peut s’avérer être un véritable casse-tête, autant pour les locataires que pour les propriétaires-bailleurs.\n\n            Du côté des propriétaires, trouver un locataire solvable et sérieux relève d’un défi bien souvent annuel. D’autant plus lorsqu’on ne délègue pas la location de son bien à une agence. S’occuper de la mise en location, de la publication d’une annonce sur un site web, effectuer les visites, l’entretien de l’appartement… Pour les logements anciens, cela peut très vite mobiliser un temps considérable.\n\n            Les logements neufs ont cet avantage de ne nécessiter aucun travaux dans les premières années de location.\n\n            En ce qui concerne les locataires, l’épine se trouve plus dans le montant du loyer et l’emplacement de l’appartement. Les logements au loyer raisonnable, à proximité des commodités ou du lieu d’étude se louent rapidement. À peine l’annonce publiée que le bien reçoit déjà plusieurs demandes de visites.\n\n            Les avantages des logements étudiants dans l’immobilier neuf\n\n            Les appartements étudiants neufs possèdent de nombreux atouts :\n\n            Un confort en termes de chauffage et d’isolation phonique,\n            Une consommation énergétique limitée,\n            Un emplacement généralement à proximité des transports et des commodités,\n            Des loyers plafonnés.\n            Des loyers plafonnés pour les logements étudiants neufs\n\n            Dans l’immobilier neuf, les investisseurs ont recours au dispositif Pinel qui leur permet de défiscaliser leur achat en échange d’une période de location donnée. Pour un appartement au prix de 300 000 €, loué sur une durée maximale de 12 ans, la réduction d’impôt pourra s’élever jusqu’à 63 000 €. Ajoutés à cela, les revenus locatifs, l’investisseur profite alors d’une opération immobilière plus que rentable.\n\n            Toutefois, la loi Pinel impose des loyers plafonnés, revus chaque année. En 2020, le montant des loyers Pinel a été fixé à :\n\n            Montants des loyers Pinel en 2020 en fonction du zonage\n\n            Zone A\n\n            17,43 €/m²/mois\n\n            Zone A bis\n\n            12,95 €/m²/mois\n\n            Zone B1\n\n            10,44 €/m²/mois\n\n            Les locataires aux revenus trop élevés pour les logements sociaux, mais pas assez pour le marché immobilier traditionnel, peuvent alors se tourner vers le Pinel. Toutefois, si le dispositif plafonne les loyers, il impose également des conditions de ressources aux candidats locataires.\n\n            Sylvain souhaite quitter son logement étudiant jugé trop vétuste pour un appartement neuf à Toulouse. Le Pinel à Toulouse impose un loyer maximal de 10,44 €/m²/mois puisque la métropole est classée en zone B1.', 'Chaque année, dans les grandes villes de France, les étudiants et bacheliers se mettent à la recherche d’un appartement. Les petites surfaces telles que les studios et les deux pièces sont les plus recherchées, bien que les colocations demandent à avoir plusieurs chambres. Et chaque année, quand vient l’été, la course à la recherche immobilière débute.', '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(13, NULL, 'Focus Aides au logement', 'Focus-Aides-au-logement', 'SIMON GBOSSI', 'Pour suivre ses études, l’étudiant(e) doit parfois quitter sa région d’origine et son domicile familial. Il ou elle se trouve contraint de louer son propre logement, ce qui représente un des foyers de dépenses les plus importants de sa vie d\'étudiant(e).\n\n            Il existe toutefois de nombreuses aides qui permettent à l’étudiant(e) de préserver son budget. Il faut juste savoir frapper aux bonnes portes. Notamment celle de la CAF (Caisse des Allocations Familiales), mais aussi celle des organisation spécifiques comme Action Logement.\n\n            La CAF, les APL, ALF et ALS\n\n            Auprès de la CAF, il est assez simple d’obtenir une aide personnalisée au logement (APL) ou bien l’allocation de logement familiale (ALF), ou encore l’allocation de logement sociale (ALS). Pour effectuer cette démarche, vous trouverez toutes les infos utiles sur le site de la CAF.\n\n            Le dossier de demande d’aide APL, ALF ou ALS doit être adressé à la CAF dès les premiers jours d’occupation du nouveau logement. Le plus tôt sera le mieux, car ces allocations n’ont pas d’effet rétroactif.\n\n            Si vous êtes éligibles à ces aides, il est important de garder à l’esprit que celles-ci ne sont versées aux étudiant(e)s que lors de la période scolaire. Elles sont suspendues durant l’été, sauf si vous prévenez la CAF que vous conservez le logement durant la période d’été et plus tard. Il est donc important de faire cette déclaration en fin d’année universitaire via votre espace personnel sur le site le la CAF. En cas d’oubli, les versements s’arrêtent en juin.\n\n            Le Fonds de Solidarité au Logement\n\n            Le FSL (Fonds de Solidarité au Logement) est une mesure de l’état qui propose une aide financière pour les personnes, étudiant(e)s ou autres, confrontés à des difficultés alors qu’elle a besoin d’accéder à un logement. Ce dispositif permet de payer le dépôt de garantie lorsque l’on accède au logement, mais également de régler les factures d’eau, de gaz, d\'électricité quand le besoin s’en fait sentir. Toutes les infos sont sur le site www.aide-sociale.fr\n\n            Action Logement\n\n            Vous pouvez également vous adresser auprès d’Action Logement, un organisme chargé de faciliter l’accès au logement afin de favoriser l’emploi. Action Logement propose notamment l’aide Mobili-Jeune qui prend en charge une partie du loyer (entre 10€ et 100€) pendant un an.\n\n            Cette aide ne s’adresse pas à l’ensemble de la population étudiante, mais plus spécifiquement aux personnes en formation en alternance. Pour y prétendre, il faut avoir moins de trente ans et avoir un contrat de professionnalisation ou d’apprentissage. Celui-ci doit se faire dans n’importe quelle société, sauf les entreprises publiques ou agricoles.\n\n            Visale\n\n            L’une des principales difficultés de l’étudiant(e) pour obtenir un logement est de trouver une personne pour se porter garant(e). Ce sont souvent les parents ou un membre de la famille qui assurent ce rôle, mais il arrive souvent n’en aient pas les moyens.\n\n            Heureusement, en s’adressant à Action Logement, l’étudiant(e) peut obtenir une caution. Celle-ci porte le nom de garantie Visale. Action Logement se porte garant et s’engage à couvrir les loyers en cas d’impayé et peut même intervenir pour remboursement certaines dégradations. Cette garantie est ouverte aux étudiant(e)s majeur(e)s (de 18 à 30 ans). Elle fonctionne sous forme de dette qui est soumise à l’étudiant(e) dès qu’un paiement a été assuré à sa place. Le bailleur du logement est assuré d’avoir son argent en temps et en heure. Voir le site www.visale.fr\n\n            Loca-Pass\n\n            Action logement propose également une aide spécifique aux étudiant(e)s pour les aider à financer le dépôt de garantie. Loca-Pass est une avance proposée sous la forme d’un prêt sans intérêt. L’étudiant(e) peut ainsi verser la somme demandée par le propriétaire dès la signature du bail.\n\n            ', 'Pour suivre ses études, l’étudiant(e) doit parfois quitter sa région d’origine et son domicile familial. Il ou elle se trouve contraint de louer son propre logement, ce qui représente un des foyers de dépenses les plus importants de sa vie d\'étudiant(e).', '2022-10-15 17:48:24', '2022-10-15 17:48:24');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `menu`, `created_at`, `updated_at`) VALUES
(1, 'Entrée coucher', 'entree-coucher', 0, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(2, 'Une chambre salon', 'une-chambre-salon', 0, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(3, 'Deux chambres salon', 'deux-chambres-salon', 0, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(4, 'Trois chambres salon', 'trois-chambres-salon', 0, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(5, 'Entrée coucher semi sanitaire', 'entree-coucher-semi-sanitaire', 0, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(6, 'Une chambre salon semi sanitaire', 'une-chambre-salon-semi-sanitaire', 0, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(7, 'Deux chambres salon semi sanitaire', 'deux-chambres-salon-semi-sanitaire', 0, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(8, 'Trois chambres salon semi sanitaire', 'trois-chambres-salon-semi-sanitaire', 0, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(9, 'Entrée coucher sanitaire', 'entree-coucher-sanitaire', 0, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(10, 'Une chambre salon sanitaire', 'une-chambre-salon-sanitaire', 0, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(11, 'Deux chambres salon sanitaire', 'deux-chambres-salon-sanitaire', 0, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(12, 'Trois chambres salon sanitaire', 'trois-chambres-salon-sanitaire', 0, '2022-10-15 17:48:23', '2022-10-15 17:48:23');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `departements`
--

INSERT INTO `departements` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Littoral', '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(2, 'Atlantique', '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(3, 'Ouémé', '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(4, 'Borgou', '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(5, 'Donga', '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(6, 'Atacora', '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(7, 'Collines', '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(8, 'Zou', '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(9, 'Mono', '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(10, 'Couffo', '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(11, 'Alibori', '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(12, 'Plateau', '2022-10-15 17:48:23', '2022-10-15 17:48:23');

-- --------------------------------------------------------

--
-- Structure de la table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`message`, `distinataire_id`, `auteur_id`, `created_at`, `updated_at`) VALUES
('vhbjn,', 1, 2, '2022-10-15 18:18:49', '2022-10-15 18:18:49'),
('yhtred', 1, 2, '2022-10-15 18:18:53', '2022-10-15 18:18:53'),
('yfhdgfd', 1, 2, '2022-10-15 18:18:58', '2022-10-15 18:18:58'),
('ujtyhrtgerf', 3, 2, '2022-10-15 18:19:06', '2022-10-15 18:19:06'),
('tjyhrtgerfz', 6, 2, '2022-10-15 18:19:15', '2022-10-15 18:19:15'),
('tgerfzed', 6, 2, '2022-10-15 18:19:22', '2022-10-15 18:19:22'),
('tyhrgterfed', 3, 2, '2022-10-15 18:19:31', '2022-10-15 18:19:31'),
('fvgbhnj,kbhnj,', 2, 1, '2022-10-15 18:20:40', '2022-10-15 18:20:40'),
('uthyrgtfr', 2, 1, '2022-10-15 18:21:00', '2022-10-15 18:21:00'),
('bvgfcdhtgvrfc', 16, 1, '2022-10-15 18:21:23', '2022-10-15 18:21:23'),
('jyhtgfdgtrfe', 2, 23, '2022-10-15 18:22:52', '2022-10-15 18:22:52'),
('hyrgtfed', 2, 23, '2022-10-15 18:22:56', '2022-10-15 18:22:56'),
('thg', 1, 2, '2022-10-18 15:11:54', '2022-10-18 15:11:54'),
('dghgbf', 1, 2, '2022-10-18 15:12:16', '2022-10-18 15:12:16'),
('nk,l', 23, 2, '2022-10-18 15:32:51', '2022-10-18 15:32:51'),
('bn,', 10, 2, '2022-10-18 15:33:00', '2022-10-18 15:33:00'),
('sss', 2, 24, '2022-10-19 08:42:24', '2022-10-19 08:42:24'),
('bonne journéé', 24, 2, '2022-10-19 08:59:37', '2022-10-19 08:59:37'),
('yhujik', 11, 2, '2022-10-24 17:57:41', '2022-10-24 17:57:41'),
('ghjklm', 9, 2, '2022-10-24 17:58:13', '2022-10-24 17:58:13');

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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `postulers`
--

INSERT INTO `postulers` (`id`, `indetermine`, `date_entre`, `date_de_sortie`, `message`, `reponse`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-10-28', '2022-10-22', 'fghbjn', NULL, 2, 3, '2022-10-24 19:13:31', '2022-10-24 19:13:31');

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
  `ville_id` bigint(20) UNSIGNED NOT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `type_annonce`, `quartier`, `description`, `short_description`, `normal_price`, `disponibilite`, `place_dispo`, `ville_id`, `categorie_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'non et accusantium qui', 'omnis-distinctio', 'COLOCATION', 'New Carlos', 'Perspiciatis beatae eius qui architecto ratione temporibus eius. Reprehenderit libero explicabo id. Occaecati nobis fugit quis expedita magnam. Neque et sit et nesciunt fugit aut et. Est eligendi quis deleniti nesciunt itaque nostrum. Possimus maiores similique et aut quia sint. Natus ipsam ipsam quod iste molestias. Ducimus occaecati nostrum minima quam at. Sunt architecto sequi qui sint autem perspiciatis commodi. Voluptas a quod nobis veniam facere omnis et. Voluptate maxime quo quisquam et.', 'Fugit est non vel quod et. Quo qui accusantium consequatur aut nam et. Omnis tempora sed deleniti. Eveniet at earum impedit ipsam et. Eos veniam enim tenetur et soluta ea id ut.', '3926.000', 1, 3, 13, 4, 1, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(2, 'non et accusantium qui', 'cupiditate-iste', 'COLOCATION', 'East Anne', 'Id inventore molestiae blanditiis omnis magnam ipsum. Quis rerum omnis modi quia. Deserunt impedit et vitae ea quia quasi architecto. Et consequatur aut culpa sit ut dolorem quisquam. Et architecto nemo omnis praesentium voluptatem provident at et. Inventore qui enim dolore asperiores animi perspiciatis. Quia praesentium molestiae est. Sint et nihil ratione itaque soluta velit repellat.', 'Atque dolorem quisquam ad minima occaecati omnis. Perferendis nemo sint nobis. Et aut accusantium quis magni est. Dolorem consequatur alias reiciendis itaque iure illo.', '6851.000', 1, 1, 22, 11, 2, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(3, 'non et accusantium qui', 'consequuntur-qui', 'COLOCATION', 'South Earlene', 'Facere illo nulla voluptatem qui. Earum autem nisi autem non velit. Est ab impedit blanditiis neque saepe. In consequuntur nisi aspernatur molestiae enim. Explicabo et quis et et. Hic autem deleniti consequuntur velit provident officiis suscipit. Sed velit nobis facere velit consequuntur quidem. Nam perferendis aut magnam ea ex vitae exercitationem. Excepturi quisquam voluptatem qui. Quia blanditiis mollitia numquam voluptates. Quas ullam inventore corporis et nihil eveniet.', 'Voluptatibus aut dolores quis et delectus. Rerum omnis voluptatem a. Dolorem dicta dolore rerum tempora voluptatum reprehenderit.', '3445.000', 1, 3, 16, 10, 2, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(4, 'non et accusantium qui', 'perferendis-alias', 'COLOCATION', 'North Eldridgechester', 'Tempora porro ea delectus placeat tenetur assumenda. Est animi quaerat nam id. Sunt voluptatem tempora dolor dolorem aut. Recusandae quidem minima et et illo reiciendis unde doloremque. Cum aliquam quaerat assumenda eligendi doloribus. Harum tenetur molestiae cupiditate dolor veritatis quos. Saepe quia possimus accusamus sit. Ut fugit quam aut nemo quo. In eos beatae ut labore voluptatem sit numquam. Voluptatem et qui et ut.', 'Enim et officia quos doloremque adipisci. Soluta rem non sapiente et consequatur dolorum porro. Est molestiae dolor sed animi. Est doloribus tempore voluptas aliquid dolorum ea vitae.', '5443.000', 1, 5, 25, 9, 1, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(5, 'non et accusantium qui', 'tempore-iste', 'COLOCATION', 'Tremblaybury', 'Nisi id hic voluptas eligendi aspernatur et. Voluptates expedita est numquam ut non voluptatem molestias. Quaerat voluptate quia officia sunt rerum. Ut sint veritatis officia explicabo maxime tempore occaecati. Illo eius hic illum dolorum omnis id qui. Eum nesciunt exercitationem aut ut neque quibusdam. Nesciunt placeat rerum itaque occaecati fuga repudiandae atque. Ut enim accusantium eos animi itaque.', 'Nemo perspiciatis culpa qui excepturi assumenda. Corrupti sit illum qui repellendus aut non explicabo. Aut eius omnis est omnis cumque. Nostrum sunt dolore itaque autem sit vitae dignissimos eius.', '2059.000', 1, 4, 4, 8, 2, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(6, 'non et accusantium qui', 'incidunt-atque', 'COLOCATION', 'Lake Carterhaven', 'Beatae ut tenetur assumenda magni aut sunt optio. Distinctio pariatur eveniet dolorum tempore tenetur. Perferendis consequatur occaecati ab deserunt dolorum. Voluptatibus hic a sed repellendus distinctio non. Et architecto tempore dolorum et. Qui reprehenderit quia sunt vel ipsum hic deserunt et. Tempora doloremque sunt et adipisci aut quos autem. Eos commodi deserunt quae sapiente fugit.', 'Ea rem et officiis doloremque animi tempora. Voluptates ratione sit numquam ut. Porro enim veniam inventore.', '9212.000', 1, 1, 33, 2, 1, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(7, 'non et accusantium qui', 'ullam-et', 'COLOCATION', 'West Enosburgh', 'Ut soluta eos sit in earum vel deserunt et. Nihil impedit est et eligendi neque architecto repellendus. Sit aut aut consequatur dignissimos doloremque sint quaerat. Modi voluptatum saepe numquam architecto. Ratione repellat consequatur tempora magni sint quidem architecto omnis. Voluptas sunt non repudiandae qui vel. Ab ut minima eos voluptas id veritatis nihil. Qui laudantium nisi eum.', 'Veritatis dolor quia dolores perferendis. Quia placeat sit facere ut ut molestiae delectus. Hic aut nihil saepe animi harum qui eos.', '4786.000', 1, 2, 12, 7, 1, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(8, 'non et accusantium qui', 'velit-repellat', 'COLOCATION', 'Lakinmouth', 'Non enim iste placeat tempore qui explicabo ullam. Dolorem et nihil autem qui sit labore. Laboriosam hic et labore iure voluptate. Repudiandae qui eum facilis vero facere dicta. Expedita veritatis nulla cumque enim voluptas totam eligendi aut. Sint quasi aut recusandae placeat veritatis necessitatibus voluptatibus voluptatem. Amet molestias sunt officia temporibus provident ipsa. Sequi eos omnis eos soluta. Omnis est alias quo omnis quia.', 'Qui consectetur qui et laborum accusantium. Dolores est ut facere consequatur. Maxime sed voluptas amet aut maxime assumenda.', '3992.000', 1, 1, 7, 12, 1, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(9, 'non et accusantium qui', 'quisquam-ut', 'COLOCATION', 'Wellingtonhaven', 'Repellendus nisi nesciunt et similique vero. Fugit dolores rerum fugiat expedita eum. Earum aut quo eaque placeat. Ab rerum perferendis veritatis ipsa. Delectus et voluptatem quia possimus odio. In tempore voluptas non et. Quia inventore est quo dolorum. Dolor reprehenderit qui deserunt natus et optio veritatis.', 'Ab aut beatae magni unde rem ullam unde. Veniam eum ea voluptatum rerum repellendus. Cumque distinctio et minus voluptas recusandae.', '4971.000', 1, 2, 30, 1, 2, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(10, 'non et accusantium qui', 'quidem-non', 'COLOCATION', 'West Davidview', 'Placeat ut non voluptatem dignissimos rerum dolore. Consequuntur magni sed sed saepe aut voluptatem. Explicabo eum dolores eveniet error iste qui. Minus repellendus dicta quis cumque quis dolores qui consequuntur. Vel voluptatibus magni tempore consequatur. Minima rerum in perferendis excepturi nihil. Et voluptatum voluptatem sapiente sit voluptatem ut suscipit.', 'Commodi placeat consequatur incidunt dolore reiciendis. Soluta autem doloremque dicta molestiae autem neque ut. Possimus et aperiam ipsa ut eos tempore. Sint sint a aut dolorem fugiat nihil.', '3937.000', 1, 5, 3, 6, 1, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(11, 'non et accusantium qui', 'sit-pariatur', 'LOCATION', 'West Osborne', 'Quia iusto harum perferendis et error sed dicta. Esse cumque qui rerum excepturi ut qui. Esse molestias vero eum ullam fugit voluptatum aliquid. Pariatur voluptate quaerat repellendus quo vel voluptatem. Ratione qui voluptatem reiciendis est architecto omnis fugiat. Maiores modi eligendi error repellat qui. Et veritatis ut id quis placeat delectus id ab. Quam dolorem magni qui facilis ut. Quod voluptatem ut nulla est. Dolor veniam sequi error quia accusantium cupiditate.', 'Minima nostrum rerum ea dolores iure reprehenderit. Modi occaecati ullam eum id dolores. Ad et optio omnis ex.', '9772.000', 1, 3, 28, 4, 1, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(12, 'non et accusantium qui', 'temporibus-quis', 'LOCATION', 'West Maybell', 'A harum recusandae officia molestiae. Velit magnam et maxime qui maxime. Ea qui distinctio repellat. Dignissimos quis pariatur debitis ipsa et. Et incidunt accusamus iste eius accusantium numquam doloribus. Et voluptatem qui velit libero laudantium dolorem reprehenderit. Aut occaecati non et ut omnis cumque. Dolorum amet placeat quia ut et aut ut. Aut vel optio maxime libero. Id et voluptatem sit sunt.', 'Quis facilis qui perferendis voluptas nemo iusto est enim. Animi reprehenderit repudiandae quas expedita. Rem possimus rem quos. Eos assumenda a et id quis saepe.', '6751.000', 1, 3, 26, 2, 2, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(13, 'non et accusantium qui', 'excepturi-nihil', 'LOCATION', 'Port Stephen', 'Dolor nulla cumque porro error eius quo. Totam est recusandae iusto culpa sint quia. Ab sit harum inventore ea cumque. Non nesciunt nemo et occaecati. Doloribus numquam minus fugiat velit. Quisquam optio dolorum iste blanditiis cum non harum. Quo natus reiciendis distinctio neque sed quisquam dolorem. Tenetur nobis at quaerat tenetur quam.', 'Doloribus eius voluptas voluptas quo. Ea et itaque quis id amet aperiam quasi. Nam voluptas sed ut sit. Nesciunt consectetur vel autem occaecati.', '8659.000', 1, 2, 33, 4, 1, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(14, 'non et accusantium qui', 'vitae-eius', 'LOCATION', 'South Marisol', 'Omnis quam et neque voluptas qui. Fugiat omnis sint neque voluptatem. Veritatis iste corrupti quia quaerat magnam. Sit cupiditate dolor ut suscipit accusamus omnis commodi. At voluptate necessitatibus quo blanditiis. Similique sit aut aliquam quos. Cupiditate occaecati quasi optio sunt tempore minima nihil. Et adipisci in nemo error in eius. Enim eos at neque ut officiis qui. Eaque illum qui magnam repellat quae.', 'Ad quidem maxime laudantium optio quisquam nisi delectus distinctio. Eligendi necessitatibus enim aut nam ad enim. Qui est et magnam dignissimos. Possimus ut enim repudiandae ut ratione nihil.', '5189.000', 1, 1, 5, 7, 2, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(15, 'non et accusantium qui', 'placeat-voluptatem', 'LOCATION', 'Collierhaven', 'Voluptas asperiores veniam quo optio quasi. Suscipit alias odit iure cum odit error sequi minima. Quia tenetur provident culpa voluptatem perspiciatis aut. Et quia repellat voluptate accusamus harum dolorem dicta. Alias sunt itaque sed enim ut sed quibusdam totam. Dignissimos nihil aut sunt non explicabo enim ad. Quia sit voluptatem possimus est similique omnis.', 'Unde esse necessitatibus est deleniti necessitatibus. Et illum est recusandae qui quia officia.', '3622.000', 1, 4, 22, 10, 2, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(16, 'non et accusantium qui', 'consectetur-consectetur', 'LOCATION', 'West Zola', 'Veritatis vero dolore quia vitae dolorem quo ipsam. Dolorem nihil et nihil nam. Pariatur dolor inventore sunt. Esse consequatur optio quasi fugit accusantium est. Enim et doloremque et cumque assumenda eos autem. Illum distinctio quas sed repellendus eius aliquam. Aut voluptatem ut optio. Temporibus et et ad illum tempore sit id. Aliquid omnis consequuntur voluptatem est aut. Eos eos debitis earum veritatis accusantium aut. Temporibus ullam non veritatis odio.', 'Vel sed cum nesciunt ipsa ut temporibus vel nostrum. Ullam nihil nulla nobis aliquid. Eveniet temporibus blanditiis deserunt et.', '3193.000', 1, 5, 3, 4, 1, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(17, 'non et accusantium qui', 'culpa-sit', 'LOCATION', 'Lake Caesar', 'Est qui nostrum qui quod. In eos est et. Eligendi quam sequi laborum suscipit. Ex consequatur eum nobis cupiditate velit. Impedit voluptatem iure omnis est atque quod. Unde alias ut a nam omnis sit necessitatibus vel. Est maiores aut dolorum officiis. Omnis et aut ipsam ab dolor enim maiores. Odit rem nulla quas autem ut aut.', 'Aliquam eos hic nostrum eos. Voluptatem ut qui libero ea hic nihil. Possimus pariatur molestias incidunt molestias eum et itaque voluptatem. Exercitationem fugit quo repellat.', '7078.000', 1, 3, 18, 1, 1, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(18, 'non et accusantium qui', 'quam-enim', 'LOCATION', 'Mandybury', 'Voluptate similique eos sed velit quis enim sunt. Voluptate non dolore excepturi asperiores. Deserunt at blanditiis architecto ducimus voluptatem voluptas mollitia dolor. Nihil facere quasi labore et repellendus id animi expedita. Ea quod quae itaque officia dignissimos et in. Labore omnis quos doloribus possimus provident minima dignissimos quibusdam. Voluptas earum necessitatibus voluptatum earum sit quidem tenetur adipisci.', 'Ullam porro et sit voluptatum voluptatem placeat rerum. Doloremque tempora modi totam quam eos. Voluptatem ducimus aut eum et dignissimos.', '1510.000', 1, 4, 33, 7, 2, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(19, 'non et accusantium qui', 'veniam-odio', 'LOCATION', 'Lake Haleigh', 'Dolorem quia commodi quia et illo. Distinctio quia nulla ut similique harum. Velit laborum ducimus dolorem est molestiae. Quia in consectetur voluptatem quia vitae tempora. Ut autem nesciunt nemo placeat omnis expedita. Consequatur veritatis dignissimos omnis iure. Et ad cumque soluta praesentium non. Sit quis velit qui quia nisi.', 'Quo et non aliquid vel. Vitae aut non culpa veritatis molestias voluptatum. Quis nesciunt eaque tempore dolorem.', '1115.000', 1, 2, 2, 8, 1, '2022-10-15 17:48:24', '2022-10-15 17:48:24'),
(20, 'non et accusantium qui', 'ad-et', 'LOCATION', 'New Leonardo', 'In tempora ipsum amet quibusdam. Quisquam dolorem enim sunt molestiae reprehenderit eveniet. Autem perferendis iure non sunt non ab sunt. Rerum consequatur eum sit. Illo facilis placeat est voluptas quo. Quibusdam beatae nihil doloribus praesentium. Rerum qui velit quia quis odio deleniti cumque. Quae suscipit in assumenda totam. Eaque amet ex cumque. Similique rem eius laborum repudiandae tempora quaerat tempora eveniet. Ad molestiae soluta ut corporis eos.', 'Autem qui rem rerum sit iusto omnis. Sequi cupiditate et doloribus tenetur. Reiciendis quam porro ea blanditiis qui voluptas unde. Qui quidem omnis accusantium expedita amet qui ut.', '3820.000', 1, 3, 14, 11, 2, '2022-10-15 17:48:24', '2022-10-15 17:48:24');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `name`, `email`, `phone`, `birthday`, `adresse`, `profession`, `link_facebook`, `link_twitter`, `link_instagram`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super', 'super@admin.com', '95185044', '2022-10-15', 'None', 'None', '#', '#', '#', '2022-10-15 18:20:17', '2022-10-15 18:20:17'),
(2, 23, 'Fernando ALISSOU', 'alissouanani@gmail.com', '+22995185044', '2022-10-15', 'None', 'None', '#', '#', '#', '2022-10-15 18:22:32', '2022-10-15 18:22:32'),
(3, 2, 'Admin', 'admin@admin.com', '95185044', '2022-10-17', 'None', 'None', '#', '#', '#', '2022-10-17 10:26:48', '2022-10-17 10:26:48'),
(4, 24, 'Alissou Simon', 'alissousimon@gmail.com', '+22995185044', '2022-10-19', 'None', 'None', '#', '#', '#', '2022-10-19 07:44:20', '2022-10-19 07:44:20');

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Administrateur', '2022-10-15 17:48:21', '2022-10-15 17:48:21'),
(2, 'Visiteur', '2022-10-15 17:48:21', '2022-10-15 17:48:21'),
(3, 'Locataire', '2022-10-15 17:48:21', '2022-10-15 17:48:21'),
(4, 'Propriétaire', '2022-10-15 17:48:21', '2022-10-15 17:48:21'),
(5, 'Super Administrateur', '2022-10-15 17:48:21', '2022-10-15 17:48:21');

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 5, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 23, 2, NULL, NULL),
(4, 19, 1, NULL, NULL),
(5, 19, 2, NULL, NULL),
(6, 19, 3, NULL, NULL),
(9, 24, 2, NULL, NULL);

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
('4vkukfWvDb0L8NRoc5dFJ21KZTL5WucDiUfWP8DP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzlFSGp1U0hwbGFocEFMbWxjUG1pWksxUkZoNVdrMU0yT3RscXNkNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1666642496);

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
('admin@admin.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-24 18:39:34', NULL);

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
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `name`, `phone`, `phone_whatsapp`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `last_seen`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Administrateur', 'Super', '95185044', '95185044', 'super@admin.com', '2022-10-15 17:48:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-10-15 18:48:21', 'wiP2uX0tTb4oUG51hR13ZpsCiqfG7IdLEkJJPs6dzGBg8SBLaUZbpc2ZC354', NULL, NULL, '2022-10-15 17:48:21', '2022-10-15 17:48:21'),
(2, 'Administrateur', 'Admin', '95185044', '95185044', 'admin@admin.com', '2022-10-15 17:48:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-10-15 18:48:22', 'xW16MO3DJ40dK2BpealYl50sjJcF4zFzf6x2yM8LFOfy5IhjYbWte6IuqCxU', NULL, NULL, '2022-10-15 17:48:22', '2022-10-15 17:48:22'),
(3, 'Audra', 'Hintz', 'Arvel', 'Jorge', 'dickinson.zoey@example.org', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-10-15 14:36:23', 'RaJcd7xNDY', NULL, NULL, '2020-07-05 22:09:02', '2022-10-15 17:48:24'),
(4, 'Rachel', 'Hermiston', 'Athena', 'Alisha', 'elnora76@example.org', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-10-10 16:24:27', 'F1nC6BGmpJ', NULL, NULL, '2020-06-21 10:04:22', '2022-10-15 17:48:24'),
(5, 'Yolanda', 'Stamm', 'Michelle', 'Narciso', 'izabella23@example.org', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-09-01 23:05:48', '5Hl7DFdY0C', NULL, NULL, '2020-12-25 09:09:31', '2022-10-15 17:48:24'),
(6, 'Unique', 'Will', 'Jade', 'Elmo', 'gina.hansen@example.net', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-04-17 09:06:26', '99VfJKyHi4', NULL, NULL, '2019-07-09 15:14:32', '2022-10-15 17:48:24'),
(7, 'Cecelia', 'Schimmel', 'Adan', 'Cyril', 'collier.loyce@example.com', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-10-06 10:46:22', 'AvTUgHgiLl', NULL, NULL, '2019-02-03 14:49:22', '2022-10-15 17:48:24'),
(8, 'Adelia', 'Auer', 'Leila', 'Elliot', 'zortiz@example.net', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-05-20 04:54:19', 'eHDS4v8l80', NULL, NULL, '2021-02-19 03:01:33', '2022-10-15 17:48:24'),
(9, 'Jarrett', 'Bins', 'Joany', 'Adolfo', 'cronin.ike@example.org', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-07-30 17:12:44', 'gLfZfusvYf', NULL, NULL, '2022-04-11 08:33:16', '2022-10-15 17:48:24'),
(10, 'Erich', 'Klocko', 'Rodolfo', 'Jennifer', 'simonis.carole@example.org', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-08-16 21:43:29', 'TJl2ZtGTLV', NULL, NULL, '2022-02-09 14:05:28', '2022-10-15 17:48:24'),
(11, 'Christina', 'Quitzon', 'Mavis', 'Ian', 'xcummerata@example.org', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-05-20 19:33:54', 'pgAGZwzqtN', NULL, NULL, '2021-01-12 11:50:01', '2022-10-15 17:48:24'),
(12, 'Adriana', 'Kemmer', 'Geo', 'Lisette', 'rdare@example.org', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-05-02 21:30:06', 'By2Lwe5OD5', NULL, NULL, '2021-02-12 12:20:37', '2022-10-15 17:48:24'),
(13, 'Adella', 'Jakubowski', 'Tanya', 'Cruz', 'daija.wiza@example.org', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-04-23 21:25:44', '0w5iu2aLvV', NULL, NULL, '2021-01-13 08:16:47', '2022-10-15 17:48:24'),
(14, 'Arvel', 'Durgan', 'Thalia', 'Alberto', 'legros.alvena@example.org', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-06-22 10:46:42', 'nPe8BOZueN', NULL, NULL, '2020-05-05 03:51:10', '2022-10-15 17:48:24'),
(15, 'Esmeralda', 'Romaguera', 'Shannon', 'Jarrod', 'fkautzer@example.org', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-08-13 19:20:37', '7ygQP9uJ0s', NULL, NULL, '2018-12-04 02:17:20', '2022-10-15 17:48:24'),
(16, 'Maida', 'Green', 'Monique', 'Ricky', 'qkulas@example.net', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-07-26 17:03:48', 'A573w1uFlH', NULL, NULL, '2021-07-24 22:52:39', '2022-10-15 17:48:24'),
(17, 'Zakary', 'Jones', 'Brandy', 'Christopher', 'rboehm@example.com', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-04-16 02:04:13', 'vdAwNNAH8F', NULL, NULL, '2021-05-04 19:20:10', '2022-10-15 17:48:24'),
(18, 'Trever', 'Stanton', 'Tiara', 'Werner', 'koss.rosella@example.org', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-08-20 22:09:45', 'UJtPS5kh8y', NULL, NULL, '2018-10-28 02:21:04', '2022-10-15 17:48:24'),
(19, 'Scottie', 'Rice', 'Sadi', 'Noemie', 'diego.cummerata@example.org', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-06-13 18:54:45', 'K053GkTYlK', NULL, NULL, '2021-01-24 18:38:21', '2022-10-18 15:41:17'),
(20, 'Nyah', 'Senger', 'Nelda', 'Marisa', 'adriel.rowe@example.org', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-05-18 04:49:02', 'A8Gp7sj6BR', NULL, NULL, '2019-01-15 04:19:48', '2022-10-15 17:48:24'),
(21, 'Luz', 'Champlin', 'Malinda', 'Percy', 'ella.kautzer@example.net', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-07-03 21:07:49', 'V3nHHBsxyk', NULL, NULL, '2018-10-29 13:54:13', '2022-10-15 17:48:24'),
(22, 'Zane', 'Botsford', 'Enos', 'Kathryn', 'vickie.tremblay@example.net', '2022-10-15 17:48:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-05-07 04:55:33', 'wydZp5LCez', NULL, NULL, '2020-01-27 07:44:08', '2022-10-15 17:48:24'),
(23, NULL, 'Fernando ALISSOU', '+22995185044', NULL, 'alissouanani@gmail.com', NULL, '$2y$10$uZQpQrUQNLjS0UafoTfuAOFtF/gZyTRBn8TK2mdBScRFIRyx5IZc.', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-15 18:22:25', '2022-10-15 18:22:25'),
(24, NULL, 'Alissou Simon', '+22995185044', NULL, 'alissousimon@gmail.com', NULL, '$2y$10$mSlLHPqedgpm50TjcwRRNOSXp8hlB8WjVHmt1MZMuWRtSNdKwtNgi', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 07:44:11', '2022-10-19 07:44:11');

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departement_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `name`, `departement_id`, `created_at`, `updated_at`) VALUES
(1, 'Cotonou', 1, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(2, 'Abomey-Calavi', 2, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(3, 'Porto-Novo', 3, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(4, 'Parakou', 4, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(5, 'Djougou', 5, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(6, 'Bohicon', 8, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(7, 'Natitingou', 6, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(8, 'Savé', 7, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(9, 'Abomey', 8, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(10, 'Nikki', 4, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(11, 'Lokossa', 9, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(12, 'Ouidah', 2, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(13, 'Dogbo-Tota', 10, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(14, 'Kandi', 11, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(15, 'Cové', 8, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(16, 'Malanville', 11, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(17, 'Pobé', 12, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(18, 'Kérou', 6, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(19, 'Savalou', 7, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(20, 'Sakété', 12, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(21, 'Comè', 9, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(22, 'Bembéréké', 4, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(23, 'Bassila', 5, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(24, 'Banikoara', 11, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(25, 'Kétou', 12, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(26, 'Dassa-Zoumè', 7, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(27, 'Tchaourou', 4, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(28, 'Allada', 2, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(29, 'Aplahoué', 10, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(30, 'Tanguiéta', 6, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(31, 'N\\\'Dali', 4, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(32, 'Segbana', 11, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(33, 'Athiémé', 9, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(34, 'Grand Popo', 9, '2022-10-15 17:48:23', '2022-10-15 17:48:23'),
(35, 'Kouandé', 6, '2022-10-15 17:48:23', '2022-10-15 17:48:23');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
