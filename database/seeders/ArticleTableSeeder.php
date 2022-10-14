<?php

namespace Database\Seeders;

use App\Models\Article;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ArticleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        Article::create([
            'titre' => 'Étudiants et Covid : quelles répercussions ?',
            'slug' => 'Étudiants-et-Covid-quelles-répercussions',
            'auteur' =>  $faker->name(),
            'description' => 'La crise sanitaire liée à la pandémie de Covid-19 a eu des répercussions sur la santé mentale des Français. Une étude a en outre démontré la fragilité des étudiants dans ce domaine.

            En mars 2020, l\’Organisation mondiale de la santé (OMS) déclare le Covid-19 en situation de pandémie. Les cas de personnes atteintes du virus se multiplient dans le monde et contraignent les gouvernements à prendre des mesures sans précédent : distanciation sociale, respect des gestes barrières, annulation en masse de manifestations sportives et culturelles, confinement, etc. Les établissements scolaires et universitaires ferment également leurs portes, au grand dam du corps enseignant et des étudiants poussés à suivre leurs études en distanciel et à rompre tout contact physique. Une situation inédite et inquiétante qui ne manque pas de générer du stress et de l’anxiété.



            Étudiants et Covid, le lourd bilan
            Au-delà de la maladie elle-même, dont les effets ont longtemps été imprévisibles, la pandémie de Covid-19 touche également la santé mentale des étudiants, de leurs enseignants et du personnel des établissements universitaires.

            D’une manière générale, les épidémies et pandémies figurent en bonne place parmi les plus grandes craintes de l’humanité. Cette crainte touche inévitablement le mental des populations et provoque anxiété et dépressions. Certaines études d’avant-Covid ont démontré déjà que l’épidémie de SRAS (2002-2004) a eu des impacts psychologiques pendant plusieurs années après la fin de l’épidémie. Avec la pandémie du Covid-19, le problème a été exacerbé par les confinements qui ont contraint les personnes à l’isolement et la distanciation.

            La population étudiante se révèle en outre une population exposée aux problèmes de santé mentale. En dehors même des situations de crises de grande ampleur, les étudiants connaissent des motifs d’anxiété très vifs et des cas de dépression, de par leur vie d’étudiant jalonnée d’examens et de remises en cause. En France, le suicide est la deuxième cause de mortalité chez les 15-25 ans.

            A ce titre, des études ont été menées durant la pandémie de Covid-19 et les mesures de confinement adoptées sur tout le pays, pour tenter de déterminer si les étudiants étaient plus exposés à la détérioration de leur santé mentale que le reste de la population.

            Les scientifiques de l\’Institut national de la santé et de la recherche médicale (Inserm) et les chercheurs de l’Université de Bordeaux ont recueilli durant la pandémie les témoignages de plus de 3500 personnes. Celles-ci, recrutées à travers les réseaux sociaux, ont été divisées en deux groupes : les étudiants et les autres. Les deux groupes étaient équivalents en termes de pourcentage hommes/femmes et en proportion de personnes ayant des antécédents de problèmes psychologiques. L’étude a été réalisée entre mars 2020 et janvier 2021, une période qui couvre le premier et le deuxième confinement, avec dans l’intervalle le déconfinement mesuré de l’été 2020.

            Les résultats de cette étude indiquent clairement que les étudiants ont été les plus touchés sur le plan mental :

            Symptômes dépressifs : 36,6 % des étudiants, 20,1 % des non-étudiants

            Symptômes d’anxiété : 27,5 % des étudiants, 16,9 % des non-étudiants

            Pensées suicidaires : 12,7 % des étudiants, 7,9 % des non-étudiants

            Des analyses plus poussées ont été faites sur la durée. Si les pourcentages restent stables chez les non-étudiants quelle que soit la période (premier confinement, déconfinement, deuxième confinement), on observe de plus grandes variations dans le groupe des étudiants. Les troubles psychologiques sont beaucoup plus élevés en période de confinement et notamment lors du deuxième (du 30 octobre au 15 décembre 2020). Si 36% des étudiants ont révélé des symptômes dépressifs durant le premier confinement, le pourcentage a bondi au-delà de 50% lors du deuxième confinement (alors qu’il n’a pas dépassé, dans les deux cas, les 25% chez les non-étudiants).

            L’étude démontre ainsi d’importantes inégalités en période de pandémie, lesquelles de surcroît ont tendance à se creuser au fil du temps. La vulnérabilité des étudiants est donc avérée. En plus du stress habituel généré par la difficulté de suivre les études (et les difficultés matérielles y attenant), la pandémie et les confinements ont exacerbé l’anxiété et les états dépressifs.



            Étudiants et covid : le gouvernement apporte son soutien contre les précarités
            A la lumière de ces études, des mesures de prévention spécifiques doivent donc être prises envers les étudiants. Il faut notamment garder à l’esprit que le problème reste d’actualité même si les mesures de confinement n’ont plus cours. Les problèmes de santé mentale ont un impact sur la durée. Chez les étudiants, la détresse est toujours présente et reste plus élevée qu’avant le début de l’épidémie. Les risques de décrochage scolaire restent d’actualité, tout comme les symptômes de dépression et les pensées suicidaires. ',
            'short_description' => 'La crise sanitaire liée à la pandémie de Covid-19 a eu des répercussions sur la santé mentale des Français. Une étude a en outre démontré la fragilité des étudiants dans ce domaine.',

        ]);

        Article::create([
            'titre' => 'Étudiants et Covid : quelles répercussions ?',
            'slug' => 'Étudiants-et-Covidrépercussions',
            'auteur' =>  $faker->name(),
            'description' => 'La crise sanitaire liée à la pandémie de Covid-19 a eu des répercussions sur la santé mentale des Français. Une étude a en outre démontré la fragilité des étudiants dans ce domaine.

            En mars 2020, l\’Organisation mondiale de la santé (OMS) déclare le Covid-19 en situation de pandémie. Les cas de personnes atteintes du virus se multiplient dans le monde et contraignent les gouvernements à prendre des mesures sans précédent : distanciation sociale, respect des gestes barrières, annulation en masse de manifestations sportives et culturelles, confinement, etc. Les établissements scolaires et universitaires ferment également leurs portes, au grand dam du corps enseignant et des étudiants poussés à suivre leurs études en distanciel et à rompre tout contact physique. Une situation inédite et inquiétante qui ne manque pas de générer du stress et de l’anxiété.



            Étudiants et Covid, le lourd bilan
            Au-delà de la maladie elle-même, dont les effets ont longtemps été imprévisibles, la pandémie de Covid-19 touche également la santé mentale des étudiants, de leurs enseignants et du personnel des établissements universitaires.

            D’une manière générale, les épidémies et pandémies figurent en bonne place parmi les plus grandes craintes de l’humanité. Cette crainte touche inévitablement le mental des populations et provoque anxiété et dépressions. Certaines études d’avant-Covid ont démontré déjà que l’épidémie de SRAS (2002-2004) a eu des impacts psychologiques pendant plusieurs années après la fin de l’épidémie. Avec la pandémie du Covid-19, le problème a été exacerbé par les confinements qui ont contraint les personnes à l’isolement et la distanciation.

            La population étudiante se révèle en outre une population exposée aux problèmes de santé mentale. En dehors même des situations de crises de grande ampleur, les étudiants connaissent des motifs d’anxiété très vifs et des cas de dépression, de par leur vie d’étudiant jalonnée d’examens et de remises en cause. En France, le suicide est la deuxième cause de mortalité chez les 15-25 ans.

            A ce titre, des études ont été menées durant la pandémie de Covid-19 et les mesures de confinement adoptées sur tout le pays, pour tenter de déterminer si les étudiants étaient plus exposés à la détérioration de leur santé mentale que le reste de la population.

            Les scientifiques de l\’Institut national de la santé et de la recherche médicale (Inserm) et les chercheurs de l’Université de Bordeaux ont recueilli durant la pandémie les témoignages de plus de 3500 personnes. Celles-ci, recrutées à travers les réseaux sociaux, ont été divisées en deux groupes : les étudiants et les autres. Les deux groupes étaient équivalents en termes de pourcentage hommes/femmes et en proportion de personnes ayant des antécédents de problèmes psychologiques. L’étude a été réalisée entre mars 2020 et janvier 2021, une période qui couvre le premier et le deuxième confinement, avec dans l’intervalle le déconfinement mesuré de l’été 2020.

            Les résultats de cette étude indiquent clairement que les étudiants ont été les plus touchés sur le plan mental :

            Symptômes dépressifs : 36,6 % des étudiants, 20,1 % des non-étudiants

            Symptômes d’anxiété : 27,5 % des étudiants, 16,9 % des non-étudiants

            Pensées suicidaires : 12,7 % des étudiants, 7,9 % des non-étudiants

            Des analyses plus poussées ont été faites sur la durée. Si les pourcentages restent stables chez les non-étudiants quelle que soit la période (premier confinement, déconfinement, deuxième confinement), on observe de plus grandes variations dans le groupe des étudiants. Les troubles psychologiques sont beaucoup plus élevés en période de confinement et notamment lors du deuxième (du 30 octobre au 15 décembre 2020). Si 36% des étudiants ont révélé des symptômes dépressifs durant le premier confinement, le pourcentage a bondi au-delà de 50% lors du deuxième confinement (alors qu’il n’a pas dépassé, dans les deux cas, les 25% chez les non-étudiants).

            L’étude démontre ainsi d’importantes inégalités en période de pandémie, lesquelles de surcroît ont tendance à se creuser au fil du temps. La vulnérabilité des étudiants est donc avérée. En plus du stress habituel généré par la difficulté de suivre les études (et les difficultés matérielles y attenant), la pandémie et les confinements ont exacerbé l’anxiété et les états dépressifs.



            Étudiants et covid : le gouvernement apporte son soutien contre les précarités
            A la lumière de ces études, des mesures de prévention spécifiques doivent donc être prises envers les étudiants. Il faut notamment garder à l’esprit que le problème reste d’actualité même si les mesures de confinement n’ont plus cours. Les problèmes de santé mentale ont un impact sur la durée. Chez les étudiants, la détresse est toujours présente et reste plus élevée qu’avant le début de l’épidémie. Les risques de décrochage scolaire restent d’actualité, tout comme les symptômes de dépression et les pensées suicidaires. ',
            'short_description' => 'La crise sanitaire liée à la pandémie de Covid-19 a eu des répercussions sur la santé mentale des Français. Une étude a en outre démontré la fragilité des étudiants dans ce domaine.',

        ]);

        Article::create([
            'titre' => 'Comment rédiger un mémoire ?',
            'slug' => 'Comment-rédiger-un-mémoire',
            'auteur' =>  $faker->name(),
            'description' => 'Vous entrez en dernière année et on vous demandera de rédiger un mémoire de fin d’études, puis d\'assurer sa soutenance. Qu\'est-ce qu\'un mémoire de fin d\'études ? Comment le rédiger ? Qu’est-ce qu’une soutenance ? Comment la préparer ?


            Qu\'est-ce qu\'un mémoire de fin d\'études ?
            Le mémoire de fin d’études est un document à préparer et à rédiger tout au long d’une année scolaire et qui doit être remis au printemps pour évaluation dans le cadre d’un diplôme. Il est demandé lors de la dernière année d’un cycle d’études et il permet d’évaluer ce qui en a été retenu, notamment en termes de recherche, de réflexion, de rédaction et de sens critique.


            Quelles sont les étapes pour rédiger un mémoire ?
            De la recherche du sujet jusqu’à la soutenance, la rédaction d’un mémoire de fin d’études passe par de nombreuses étapes. Aucune n’est à négliger.

            Quel type de mémoire ?
            Le type de mémoire dépend du domaine d’études que vous suivez et de leur niveau. Cela peut être un mémoire de recherche, un mémoire de stage, un mémoire de master, un mémoire universitaire, un mémoire de licence, un mémoire de droit, un mémoire en marketing, un mémoire scientifique, etc. Il existe pour chaque type de mémoire des conventions, des usages, des codes qu’il est important de connaître et de respecter.

            Comment organiser la rédaction du mémoire ?
            L’organisation de la rédaction d’un mémoire passe par l’établissement d’un calendrier, où seront notées les différentes étapes de l’entreprise. On peut imaginer le calendrier suivant :

            Septembre-octobre : recherche du sujet du mémoire

            Début novembre : prise de contact avec le directeur de mémoire

            Novembre-décembre : recherches, collecte de données

            Janvier-février : définir la problématique à aborder et établir un plan de mémoire (faire valider la problématique et le plan par le directeur de mémoire).

            Mars-avril : rédaction du mémoire

            Début mai : relecture, correction, mise en forme et impression du mémoire

            Cocher la date de la remise du mémoire

            Cocher la date de la soutenance du mémoire

            Il ne faut pas hésiter à se renseigner auprès des établissements, des professeurs et des anciens élèves sur la méthodologie à suivre. Certains établissements proposent même une méthodologie-type.

            Quel sujet aborder dans le mémoire ?
            Le sujet du mémoire est bien entendu un élément central de sa rédaction. Règle première : Le sujet doit susciter un certain intérêt à son rédacteur si celui-ci veut le rendre passionnant à la lecture. Il faut en outre faire un choix réaliste qui rende l’écriture faisable. Dans certains cas, le sujet peut être proposé dans une liste par l’établissement ou bien cadré par des consignes.

            Comment définir une problématique ?
            La problématique est un élément clé du mémoire puisqu’il en constitue l’angle d’attaque. Pour avoir les bonnes réponses, il faut poser la bonne question. Pareil pour un mémoire, il faut poser la bonne problématique. Lorsque celle-ci a été définie, il est temps d’établir le plan du mémoire.

            Comment établir le plan du mémoire ?
            Une fois que la problématique a été définie, des questions en découlent auxquelles il faudra apporter les réponses. A partir de la question centrale que constitue la problématique, il faut définir des sous-questions, puis les lister et les regrouper dans un ordre logique. On peut privilégier les réponses “simples” au début et les réponses plus complexes par la suite (mais ce n’est pas une règle absolue).

            Comment établir un plan de recherche pour le mémoire ?
            Lorsque toutes les questions du sujet ont été définies, il faut chercher les réponses. L’étape de recherches est l’une des plus intenses dans la construction du mémoire. Les éléments collectés (données empiriques) lors de la recherche doivent être précis (croiser les éléments) et fiables (vérifier les sources).

            Comment rédiger un mémoire de fin d’études ?
            La rédaction du mémoire en tant que telle devient la partie la plus concrète du projet. Un mémoire représente entre 60 et 100 pages. Il comprend :

            Une couverture

            Une page de garde

            Un sommaire (les titres et sous-titres doivent être explicites)

            Une préface (regard personnel sur le sujet, sur le contexte de la rédaction du mémoire)

            Les remerciements (aux professeurs, collègues, experts impliqués dans le projet)

            Un résumé (objectif du mémoire, synthèse du travail mené)

            Une introduction (annonce de la problématique et des questions qui en découlent)

            Une partie théorique (concepts et idées préexistantes, postulat…)

            Une partie pratique (expérience, observation personnelle, entretiens…)

            Une conclusion (rappel de la problématique et réponse globale à celle-ci)

            Une postface  (réflexion d’ordre personnel lié à la conclusion et au travail accompli)

            Une bibliographie (référencement des sources selon des conventions à respecter)

            Plusieurs annexes

            Une fois rédigé l’ensemble, il reste à définir le titre du mémoire (accrocheur, percutant, mais approprié), soigner la mise en page (marges, polices de caractères, numérotation…), procéder à la relecture et aux corrections (soumettez la lecture à un proche, car on ne voit pas toujours ses propres fautes), imprimer le mémoire (garder un PDF de la version définitive) et, déjà, préparer la soutenance.',
            'short_description' => 'Vous entrez en dernière année et on vous demandera de rédiger un mémoire de fin d’études, puis d\'assurer sa soutenance. Qu\'est-ce qu\'un mémoire de fin d\'études ? Comment le rédiger ? Qu’est-ce qu’une soutenance ? Comment la préparer ?',

        ]);
        Article::create([
            'titre' => 'Comment créer une entreprise quand on est étudiant ?',
            'slug' => 'Comment-créer-une-entreprise-quand-on-est-étudiant',
            'auteur' =>  'SIMON Judith',
            'description' => 'Il est tout à fait possible de créer une entreprise en étant étudiant. Comment s’y prendre ? Quelles sont les démarches administratives à entreprendre ? Quels sont les pièges à éviter ?


            Créer son entreprise pendant ses années d’études, pourquoi pas ? Puisqu’il s’agit d’apprendre, autant associer la pratique à la théorie. Monter son activité, entreprendre les démarches, rechercher la rentabilité, payer les charges, rechercher des clients, trouver des collaborateurs, établir des partenariats… l’aventure ne manque pas d’intérêt. Et même si elle devait échouer, elle donnera beaucoup de leçons pour l’avenir.



            Etudiants : comment créer votre entreprise ?
            Un statut spécifique a été créé en 2014 à l’attention des étudiants qui souhaitent créer une entreprise : le statut étudiant-entrepreneur. Il permet à une personne qui suit ses études de monter son entreprise ou sa start-up tout en conservant le bénéfice de son statut d’étudiant.

            Qu’est-ce que le statut étudiant-entrepreneur ?
            Le statut étudiant-entrepreneur est ouvert à tout étudiant de moins de 28 ans détenteur du bac. Il s’agit d’un statut à renouveler tous les ans jusqu’à la fin de ses études. Voire même au-delà, puisque l’on peut conserver son statut quand on crée son entreprise juste après avoir été diplômé.

            Depuis la création de ce statut, plus de 500 entreprises ont été créées par des étudiants. Pas moins de 6.000 étudiants entrepreneurs ont bénéficié de ce statut, et leur nombre augmente chaque année.

            Quels sont les avantages du statut étudiant-entrepreneur ?
            L’entrepreneur étudiant bénéficie d’aides tant pour son statut d’étudiant que pour celui d’entrepreneur. Il est accompagné tout au long de ses démarches de création d’entreprise. Il peut obtenir l’aménagement de son cursus étudiant en fonction de ses activités d’entrepreneur. Il peut également faire passer sa création d’entreprise dans le cadre d’un stage de fin d’études.

            Si vous avez obtenu votre diplôme et que vous souhaitez monter votre entreprise, le statut étudiant-entrepreneur vous permet de conserver quelques aides aux étudiants, comme les bourses d’études, la sécurité sociale étudiante et les tarifs spécifiques dans les transports et les activités.

            Ou l’étudiant doit-il s’adresser pour créer son entreprise ?
            S’il souhaite créer son entreprise pendant ses études, l’étudiant doit s’adresser à un Pôle étudiants pour l’innovation, le transfert et l’entrepreneuriat (PEPITE) dans lequel lui sera proposé un accompagnement personnalisé. Le PEPITE est une structure spécifiquement conçue pour les projets de création d’entreprises par des étudiants : conseil, formation, financement, etc. Toutes les infos sont sur le site www.pepite-france.fr

            Le PEPITE organise également des événements, les “Pépite Factory” qui permet de regrouper les entrepreneurs étudiants en salon, où il trouveront des espaces d’échange et de partage avec d’anciens étudiants entrepreneurs, ainsi qu’avec des entrepreneurs, des enseignants et toute forme de conseils. Ces événements permettent aussi de valoriser le statut étudiant-entrepreneur auprès des grandes entreprises et des établissements financiers.



            Créer son entreprise en étant étudiant : les pièges à éviter
            Créer une entreprise en étant étudiant ne manque pas de pièges et il est toujours bon d’en connaître les plus courants pour ne pas tomber bêtement dedans.

            Mal penser son projet : Si une entreprise échoue, c’est parce que son projet a été mal pensé : concurrence trop vive, clientèle potentielle trop disparate, revenus trop faibles par rapport à l’investissement… Avant de créer une entreprise, il faut nécessairement faire une étude de marché puis un business plan.

            Craindre l’échec : Entreprendre, c’est par nature s’exposer à l’échec. Mais l’échec n’est pas une raison pour ne pas entreprendre. L’échec est même souvent plus riche d’enseignements que la réussite. On apprend peu sans erreurs.

            Être mal organisé : associer études et gestion d’entreprise nécessite un minimum de rigueur et d’organisation. L’entreprise nécessite une implication plus forte que pour un job salarié. Il s’agit donc de définir un planning adéquat qui ne néglige aucune des deux activités.

            Vouloir tout tout de suite : La création d’une entreprise nécessite du temps et de la patience. Il est important de respecter chacune des démarches dans l’ordre avant de se lancer la tête dans le guidon.

            Ne pas être réellement motivé : plus qu’une option, l’entreprenariat est un choix de vie. Il nécessite un investissement personnel important, qui conduit parfois à de longues heures de travail. En outre, le gain financier est souvent maigre au début. Il s’agit donc de ne pas se décourager.

            La jouer en solo : une des erreurs majeures des jeunes entrepreneurs, qu’ils soient étudiants ou non, est de rester dans leur coin, sans faire connaître leur projet, souvent de peur d’être découragés par de mauvais conseils. Parlez de votre projet, faites le connaître, défendez-le. Cela vous permettra d’obtenir du soutien et de développer des opportunités.',
            'short_description' => 'Il est tout à fait possible de créer une entreprise en étant étudiant. Comment s’y prendre ? Quelles sont les démarches administratives à entreprendre ? Quels sont les pièges à éviter ?',

        ]);
        Article::create([
            'titre' => 'Comment devenir propriétaire ?',
            'slug' => 'Comment-devenir-propriétaire',
            'auteur' =>  'SIMON Ola',
            'description' => '',
            'short_description' => 'Vous souhaitez devenir propriétaire de votre logement. Quelles sont les étapes pour accéder à la propriété ? Faut-il nécessairement bénéficier de revenus confortables ? De quelles aides peut-on bénéficier ? On vous dit tout. ',

        ]);
        Article::create([
            'titre' => 'Comment rédiger un mémoire ?',
            'slug' => 'Comment-rédiger-un-mémoire',
            'auteur' =>  'SIMON Fernando',
            'description' => 'Vous souhaitez devenir propriétaire de votre logement. Quelles sont les étapes pour accéder à la propriété ? Faut-il nécessairement bénéficier de revenus confortables ? De quelles aides peut-on bénéficier ? On vous dit tout.

            Devenir propriétaire d’un logement est une démarche intéressante, notamment sur le plan économique. L’immobilier est une valeur sûre qui permet de voir l’avenir avec sérénité. Mais il ne faut pas faire n’importe quoi.



            Quelles sont les étapes à suivre pour devenir propriétaire ?
            Accéder à la propriété est avant tout une leçon de patience. Il faut prendre son temps dans chacune des étapes. Avant de songer à devenir propriétaire, il est important de bien définir son projet immobilier.

            S’agit-il de l’acquisition de son lieu de résidence ou d’un investissement locatif ?

            Est-ce que je souhaite une maison ou un appartement ?

            Faut-il investir dans du neuf ou de l’ancien ?

            Dois-je préférer une grande ville ou un logement en campagne ?


            Première étape : le budget
            Une fois le projet immobilier bien défini, il faut établir un budget avec comme principale interrogation : combien suis-je prêt à donner chaque mois ? Combien de temps ? Il faut donc tenir compte de vos revenus et des éventuelles aides qui peuvent d’agréger.

            Deuxième étape : la recherche
            Lorsque vous avez établi un budget, il est temps de passer à la recherche du logement proprement dit. Vous pouvez démarcher les agences immobilières qui effectueront les recherches selon votre budget et la nature de votre projet. Vous pouvez également faire la recherche sur internet. Les deux démarches ne sont pas incompatibles, bien au contraire.

            Troisième étape : le compromis
            Quand vous avez trouvé le logement qui correspond à votre recherche, vous devez faire une offre d’achat au vendeur du bien. Quand celui-ci l’accepte, vous signez avec lui le compromis de vente chez le notaire. Le logement vous est ainsi réservé, et vous êtes tenu de l’acheter… sauf si vous ne parvenez pas à obtenir le financement.

            Quatrième étape : le financement
            Le compromis de vente signé, il est temps de démarcher les banques pour financer le projet d’accession à la propriété. Il est préférable de s’adresser à un courtier en crédit immobilier lequel fera la recherche du financement le plus adapté à votre situation, en tenant compte des différentes aides que vous pourrez obtenir.

            Cinquième étape : l’achat
            Lorsque le prêt immobilier a été accordé, il reste à passer chez le notaire pour signer l’acte de vente. Vous êtes enfin devenu propriétaire.



            Quel salaire gagner pour être propriétaire ?
            Lorsque vous êtes salariés et/ou que vous pouvez justifier de revenus réguliers, vous pouvez prétendre à devenir propriétaire et vous lancer dans une démarche d’accession à la propriété.

            Ce n’est pas le montant du salaire en lui-même qui détermine si vous pouvez être propriétaire, mais bien ce que vous serez en capacité de rembourser si vous contractez un emprunt. En pratique, ce montant que vous rembourserez chaque mois ne devra pas dépasser un tiers de vos revenus mensuels.



            Quelles sont les aides pour l\'accès à la propriété ?
            De nombreux dispositifs sont proposés aux personnes qui souhaitent devenir propriétaires d’un bien immobilier.

            La location-accession
            La location-accession est une démarche qui donne au locataire la possibilité d’acheter le logement qu’il occupe après une certaine période de location. C’est un dispositif qui permet aux ménages qui n’ont pas d’apport personnel de devenir propriétaire de leur logement. Créée en 1984, la location-accession est courante dans les organismes de HLM, mais peut se pratiquer dans plusieurs autres types de locations.

            L’ANRU
            L’Agence nationale pour la rénovation urbaine (ANRU) propose une aide aux personnes qui souhaitent acquérir un logement dans les zones urbaines en cours de réhabilitation. Le dispositif propose notamment un taux de TVA réduit à 5,5%. Consulter le site www.anru.fr

            Le prêt à taux zéro
            Le prêt à taux zéro (PTZ) est la formule de prêt immobilier la plus populaire. Elle permet au primo-accédant de financer une partie de son acquisition sans avoir à payer d’intérêts. Voir la page consacrée au prêt à taux zéro (PTZ) sur le site du Service Public.

            Le prêt accession d’Action Logement
            Action Logement propose un prêt accession avec un taux de 1% aux salariés des entreprises du secteur privé non agricole (de 10 salariés ou plus) qui souhaitent accéder à la propriété. Tout salarié peut prétendre à ce dispositif quelque soit son ancienneté dans l’entreprise et le type de contrat de travail (CDI, CDD, etc.).

            La prime accession d’Action Logement
            Action Logement vous permet également d’obtenir une prime accession de 10.000 € pour aider les primo-accédant à acquérir un logement neuf. Cette subvention est ouverte aux salariés des entreprises du secteur privé non agricole quelque soit le type de contrat de travail et l’ancienneté.

            Le prêt Accession Sociale',
            'short_description' => 'Vous souhaitez devenir propriétaire de votre logement. Quelles sont les étapes pour accéder à la propriété ? Faut-il nécessairement bénéficier de revenus confortables ? De quelles aides peut-on bénéficier ? On vous dit tout. ',

        ]);
        Article::create([
            'titre' => 'Classement 2022 des écoles d\'ingénieurs',
            'slug' => 'Classement-2022-des-écoles-ingénieurs',
            'auteur' =>  'GOGO Ola',
            'description' => 'Quelles sont les meilleures écoles d’ingénieurs de France ? Quelles sont celles qui progressent, qui régressent ? Vite, voici le classement 2022 des meilleures écoles d\'ingénieurs en France.

            Chaque année, le site www.letudiant.fr publie un classement des écoles françaises d’ingénieurs. Ce palmarès toujours très attendu permet de distinguer l’excellence de l’enseignement français et permet aux étudiants d’affiner leur choix pour poursuivre leurs études.



            Quels critères pour classer les écoles d’ingénieurs ?
            Les enquêteurs ont choisi d’étudier 172 écoles d’ingénieurs afin d’en prélever pour chacune une cinquantaine d’indicateurs qui permettront d’effectuer un classement à l’échelle nationale. Aucune distinction n’est faite entre établissements publics ou privés. Ces établissements doivent être habilités par la Commission des titres d’ingénieurs (CTI) et doivent délivrer le Diplôme d’Ingénieur. Les cycles ingénieurs mentionnés ont le grade de master. Ce sont des écoles post-bac (cursus de cinq ans) ou post-prépa (cursus de trois ans).

            Les quatre critères de base sont l’excellence académique, l’ouverture internationale, la proximité avec les entreprises et l’ouverture aux nouveaux publics. Chacun de ces grands thèmes contiennent une douzaine de sous-critères. En 2022, parmi les nouveaux critères s’est ajouté celui de l’engagement environnemental des établissements. Ceux-ci doivent obtenir le label DD&RS (développement durable et responsabilité sociétale) et leurs bâtiments doivent être certifiés HQE (haute qualité environnementale). Leur présence dans le classement THE Impact (Times Higher Education) constitue également un atout.



            Les meilleures écoles d’ingénieurs de France
            Le classement des écoles d\'ingénieurs de France compte 172 établissements. Plusieurs écoles ont demandé à ne pas y participer. D’autres n’y sont pas encore car ouvertes trop récemment.

            L’année scolaire 2020-2021 a été marquée par la crise sanitaire avec les deux confinements qui ont obligé la mise en place de cours à distance. Plusieurs événements présentiels ont été annulés, ce qui a fait perdre des points à bon nombre d’établissements. D’autres au contraire en ont gagné en faisant preuve de capacité d’adaptation, notamment dans l’utilisation des outils de visioconférence.

            Nous vous présentons les vingt-trois premiers, ceux qui ont obtenu au moins 40 points au classement général. Le classement complet se trouve sur le site de l’Etudiant. Le podium reste le même qu’en 2021, avec l\'École Polytechnique (Palaiseau) sur la plus haute marche, suivi de Télécom Paris (Palaiseau) et CentraleSupélec (Gif-sur-Yvette).',
            'short_description' => 'Quelles sont les meilleures écoles d’ingénieurs de France ? Quelles sont celles qui progressent, qui régressent ? Vite, voici le classement 2022 des meilleures écoles d\'ingénieurs en France.',

        ]);
        Article::create([
            'titre' => 'Comment louer son appartement en courte durée ?',
            'slug' => 'Comment-louer-son-appartement-en-courte-durée',
            'auteur' =>  'HULEUR Fernando',
            'description' => 'Grâce à l’émergence de plateformes telles AirBnB, louer un logement de manière temporaire est devenu un usage courant. Chacun sait désormais comment louer son appartement sur une courte durée. Il y a toutefois bien des choses à connaître sur le plan législatif et fiscal avant de se lancer.



            Qu\'est-ce qu\'une location de courte durée ? Définition
            Une location s’entend “de courte durée” ou “temporaire” lorsque son occupant n’en fait pas sa résidence principale. L’occupant reste entre une ou plusieurs nuits, jusqu’à plusieurs mois, mais n’a pas vocation à rester dans le logement.

            Le logement loué est une location meublée. La location temporaire ou de courte durée s’adresse aux gens dit “de passage” : les touristes, les professionnels itinérants et les personnes en situation de transition entre deux logements.



            Comment mettre sa résidence principale en location de courte durée ?
            Votre résidence principale, selon la loi, est celle que vous occupez durant au moins huit mois dans l‘année. Ce qui induit que vous pouvez louer votre résidence principale pendant quatre mois maximum durant l’année, soit 120 jours.

            Ce sont les communes qui décident si une location temporaire doit être déclarée ou non. Il est préférable de se renseigner à la Mairie avant d’entreprendre toute démarche. Paris, par exemple, demande qu’une résidence principale faisant l’objet d’une location de courte durée obtienne un numéro d’enregistrement. Celui-ci doit figurer notamment sur les annonces de la location, la Ville de Paris peut demander la suppression de l’annonce si le numéro d’enregistrement n’y figure pas.



            Comment mettre sa résidence secondaire en location de courte durée ?
            Si c’est votre résidence secondaire que vous souhaitez louer en courte durée, la démarche sera autrement plus compliquée. Plus la ville où se situe la résidence sera grande, plus il sera nécessaire de déclarer la location en mairie, de remplir une demande d’autorisation de changement d’usage et même de se plier à la règle de compensation.

            Puisqu’il ne s’agit pas de votre résidence principale, vous avez le droit de la louer plus de 120 jours dans l’année. Toutefois, la déclaration à la Mairie sera obligatoire (quelle que soit la commune).

            Pour effectuer cette déclaration, vous serez tenu de fournir :

            Votre nom, adresse mail et adresse postale du domicile principal,

            L’adresse du logement en location, le numéro de taxe d\'habitation auquel il est rattaché, le nombre de pièces, le nombre de lits et son classement de la qualité du meublé de tourisme,

            Les périodes durant lesquelles le logement sera mis en location

            Les grandes agglomérations, notamment les villes de plus de 200.000 habitants (et celles de la région parisienne), exigent en outre de remplir une demande d’autorisation de changement d’usage du logement. Cette déclaration est limitée dans le temps. La durée de validité varie selon les villes. Lorsque l’autorisation prend fin, le logement retrouve son statut initial, et il est nécessaire de refaire une demande d’autorisation de changement d’usage s’il on souhaite louer à nouveau le logement.

            Ce n’est pas fini. Les grandes villes exigent également de vous soumettre à la règle de compensation : vous devez acheter un local de surface équivalente à votre logement, ceci afin que la ville compense la perte d’un logement principal. ',
            'short_description' => 'Grâce à l’émergence de plateformes telles AirBnB, louer un logement de manière temporaire est devenu un usage courant. Chacun sait désormais comment louer son appartement sur une courte durée. Il y a toutefois bien des choses à connaître sur le plan législatif et fiscal avant de se lancer. ',

        ]);
        Article::create([
            'titre' => 'Pourquoi choisir une résidence étudiante ?',
            'slug' => 'Pourquoi-choisir-une-résidence-étudiante',
            'auteur' =>  'DOSSOU Jean',
            'description' => 'Le premier choix des étudiant(e)s en matière de logement est la résidence étudiante. A tel point que la demande est largement supérieure à l’offre. Il faut dire que cette solution, moins onéreuse qu’un logement classique, apporte tout ce dont on a besoin pour poursuivre ses études. La résidence étudiante est une solution agréable et pratique pour sa proximité, sa tranquilité et les facilités qu’elle offre. Elle a également le don de rassurer les parents.

            Logements de proximité

            Les résidences étudiantes se trouvent juste à côté du lycée ou de l\'université. Cela peut être pratique si l’on ne connaît pas encore bien la ville dans laquelle on vient de débarquer. Loger tout près des lieux de cours veut également souvent dire proche des commerces et bien desservi par les transports en commun.

            On trouve généralement à proximité des résidences étudiantes et des universités le restaurant universitaire et de nombreux services dédiés aux étudiant(e)s. Un cadre très pratique dans les premiers jours et surtout très sécurisant.

            La résidence étudiante est très pratique car en plus d’être proche des lieux d’études, elles disposent d’un(e) gestionnaire qui peut aider les étudiant(e)s dans leurs démarches et leurs questionnements du quotidien. Rompu(e) à l’administration des formalités du monde étudiant, il ne faudra pas hésiter à lui poser toutes les questions : il (ou elle) aura toutes les réponses. C’est toujours sympa d’avoir auprès de chez soi quelqu’un qui sait tout.

            Un chez-soi 100% étudiant

            Contrairement aux appartements et autres logements, les résidences étudiantes ont été pensées pour les étudiant(e)s. Aussi bien en termes de budget que de confort. S’il ne s’agit que d’une petite chambre à priori, celle-ci est meublée et parfaitement fonctionnelle. Elle sépare idéalement les moments essentiels : étudier, manger et dormir. On trouve donc un lit, un coin cuisine et un bureau, chacun de ces éléments étant disposé de façon à ce que l’un n’empiète pas sur l’autre. C’est important : Le bureau ne doit pas servir de table de cuisine. Le lit ne doit pas être un espace de travail.

            D’autres meubles au contraire sont parfaitement mobiles ce qui permet d’adapter la configuration de la chambre à toute situation. Le logement dispose d’étagères et de placards qui permettent de ranger beaucoup de choses, notamment ses habits et ses livres. Selon les résidences, les salles de bains peuvent être individuelles ou communes.

            Les logements étudiants sont pensés pour les besoins de l’étudiant, pour son équilibre et sa tranquillité. Les résidences disposent d’un accès collectif à internet, gratuit et immédiat. Pas besoin de contacter un opérateur et de prendre une box avec abonnement.

            Au coeur de la vie étudiante

            La résidence permet d’être constamment connecté à la vie étudiante. On partage notre vie avec d’autres personnes du même âge dans la même situation. On peut être amené à côtoyer des personnes d’origine étrangère ou de culture différente, ce qui est toujours très enrichissant. Tout en préservant son chez-soi, on est amené à participer aux événements organisés sur les lieux ou dans un périmètre proche.

            Les résidences étudiantes sont pour la plupart dotées d\'espaces de co-working qui permettent les travaux d’étude en commun et d\'organiser quelques moments conviviaux comme des pots d’anniversaire, des repas en commun ou toute sorte d\'événement.

            Au bout d’une année de résidence étudiante, rien n’empêche si on le souhaite de rechercher un logement classique dans une ville que l’on connaît désormais bien. Si le bail d’un logement étudiant est convenu pour un an, il est tout à fait possible d’y mettre fin en cours d’année, à condition bien entendu de respecter le préavis d’un mois.

            Comment faire une demande ?

            Pour demander un logement dans une résidence étudiante, il faut établir un dossier social étudiant (DSE) à partir du site www.messervices.etudiant.gouv.fr ou sur des sites spécialisés tels que www.location-etudiant.fr',
            'short_description' => 'Le premier choix des étudiant(e)s en matière de logement est la résidence étudiante. A tel point que la demande est largement supérieure à l’offre. Il faut dire que cette solution, moins onéreuse qu’un logement classique, apporte tout ce dont on a besoin pour poursuivre ses études.',

        ]);
        Article::create([
            'titre' => 'Avez-vous bien assuré votre logement étudiant ?',
            'slug' => 'Avez-vous-bien-assuré-votre-logement-étudiante',
            'auteur' =>  'SIMON Olivier',
            'description' => 'Vous avez enfin trouvé le logement que vous occuperez durant (une partie de) vos études. Il est temps désormais de contracter une assurance habitation. Que vous soyez dans une résidence étudiante (à l\'université ou en privé), en location dans un appartement ou une chambre, en colocation ou en sous-location, l’assurance habitation est obligatoire. Celle-ci vous permettra de couvrir les frais si vous êtes responsable de dégradation, notamment en cas d’incendie, d’inondation ou d’explosion. Car cela n’arrive pas qu’aux autres...

            Au moment de signer le contrat de location, le propriétaire bailleur vous demandera très probablement une attestation d’assurance. Celle-ci vous aura été transmise par votre assureur. Un contrat d’habitation étant valable un an, l’attestation sera à présenter à chaque renouvellement de l’assurance. Sans assurance habitation, le propriétaire bailleur est en droit de résilier le contrat de location.

            Une assurance habitation, combien ça coûte ?

            Pour un étudiant, l’assurance habitation coûte rarement plus de 150,00 € par an. Ce tarif est fixé en fonction de plusieurs paramètres : la zone géographique (il y a des villes plus chères que d’autres...), la nature du logement (un appartement, une maison, une chambre…), sa taille, le nombre de pièces, l’ancienneté du bâtiment, le nombre d’occupants, la valeur des biens que vous souhaitez assurer avec le logement (mobilier, équipement...).

            Le tarif varie donc en fonction du logement, mais aussi en fonction… de la compagnie d’assurance à laquelle vous vous adressez. C’est pourquoi il est préférable de démarcher plusieurs assurances et de leur demander à chacune un devis, établi sur des critères comparables. Vous pourrez ensuite choisir le plus intéressant.

            Vous trouverez plusieurs sites internet qui vous permettent de comparer les devis :',
            'short_description' => 'Vous avez enfin trouvé le logement que vous occuperez durant (une partie de) vos études. Il est temps désormais de contracter une assurance habitation. Que vous soyez dans une résidence étudiante (à l\'université ou en privé), en location dans un appartement ou une chambre,',

        ]);
        Article::create([
            'titre' => 'Étudiants : pour ou contre le retour des cours en présentiel',
            'slug' => 'Étudiants-pour-ou-contre-le-retour-des-cours-en-présentiel',
            'auteur' =>  'TITI Fernando',
            'description' => 'Le retour des étudiants en présentiel dans les grandes écoles est un sujet fort sensible. Il y a d’une part la volonté de revenir à une “vie normale” faite de présence physique et d’échanges humains, et de l’autre la menace toujours présente d’un virus particulièrement contagieux et la contrainte d’une application stricte des gestes barrières.

            Un retour à petites doses ?

            Le chef de l’Etat lui-même s’est risqué à proposer un retour “à petites doses” des étudiants dans leurs établissements, si possible dès le début du mois de février. Une annonce qui a été accueillie avec circonspection dans le monde étudiant.

            La ministre de l’enseignement supérieur avait proposé dès le 19 décembre 2020 une reprise des cours en présentiel pour janvier en escomptant une amélioration de la situation sanitaire. Peine perdue. Pour le moment, seules les universités ont été rouvertes le 25 janvier aux travaux dirigés en demi-groupe des étudiants de première année.

            Le Premier ministre quant à lui n’oublie jamais de ponctuer l’annonce de ses décisions par un sempiternel “si la situation sanitaire le permet” qui autorise implicitement tout changement de cap.

            Demi-jauge ou quart de jauge ?

            Du côté du corps médical, on se montre plutôt favorable au retour au présentiel. Les médecins soulignent l\'anxiété que subissent les étudiants depuis le début des mesures et les nombreux cas de dépressions que cela a provoqué. Un retour à une vie sociale moins virtuelle est devenu selon eux une urgence. Le conseil scientifique préconise donc un retour en présentiel “en demi-jauge ou en quart de jauge”.

            Les présidents d’universités réfutent quant à eux l’idée que leurs établissements sont “des lieux de très grande circulation du virus” comme l’avait annoncé le gouvernement en octobre 2020. Ils estiment que les amphithéâtres permettent de respecter les protocoles sanitaires et d’assurer des cours en toute sécurité. En outre, les services de santé universitaires ont désormais à leur disposition la possibilité de réaliser des tests de dépistage au sein même des établissements.

            Les enseignants s’inquiètent pour leur part des risques de décrochage qui peuvent atteindre une quantité largement supérieure à celles des autres années. Beaucoup ont constaté impuissants à quelques chutes spectaculaires d\'élèves qui avaient du mal à suivre avec attention les cours en ligne.

            Les quelques retours entre soulagement et scepticisme

            Quid, enfin, des étudiants qui sont après tout les premiers concernés par un retour ou non des cours en présentiel ? Le scepticisme semble prendre le pas chez les étudiants qui ont pu reprendre en demi-groupe leurs travaux dirigés le 25 janvier. Certains avouent que ce retour semble bien provisoire puisqu’à peine assis à leur pupitre, ils ont entendu les médias annoncer la possibilité d’un troisième confinement (qui a été reporté depuis).

            En attendant, ce retour à une vie normale a été apprécié. Suivre des cours dans l’ambiance travailleuse des campus est beaucoup plus stimulant que ceux dispensés en ligne que l’on suit seul chez soi. Même si les contraintes sanitaires limitent les interactions avec les autres élèves et les enseignants.

            En dépit de l’incertitude qui règne à propos du virus et de son évolution, tout le monde souhaite un retour rapide en présentiel. La priorité sera donnée aux étudiants de trouvant à des périodes clés de leur parcours. Les première année mais aussi ceux qui bouclent leur cursus ou qui sont en troisième année de licence ou de master.',
            'short_description' => 'Le retour des étudiants en présentiel dans les grandes écoles est un sujet fort sensible. Il y a d’une part la volonté de revenir à une “vie normale” faite de présence physique et d’échanges humains, et de l’autre la menace toujours présente d’un virus particulièrement contagieux et la contrainte d’une application stricte des gestes barrières.',

        ]);
        Article::create([
            'titre' => 'Logement étudiant : pensez à louer dans l’immobilier neuf',
            'slug' => 'Logement-étudiant-pensez-à-louer-dans-immobilier-neuf',
            'auteur' =>  'SIMON TOTO',
            'description' => 'Chaque année, dans les grandes villes de France, les étudiants et bacheliers se mettent à la recherche d’un appartement. Les petites surfaces telles que les studios et les deux pièces sont les plus recherchées, bien que les colocations demandent à avoir plusieurs chambres. Et chaque année, quand vient l’été, la course à la recherche immobilière débute. Les plateformes de locations entre particuliers tournent à plein régime et les agences se retrouvent submergées de demandes.

            Si l’ancien a l’avantage de présenter un cachet et un certain charme au sein des centres-villes, il n’est pas toujours aux dernières normes de construction. Avec une isolation phonique et thermique d’un autre temps, ces logements étudiants présentent des factures énergétiques élevées, en plus des désagréments liés au bruit de voisinage.

            L’immobilier neuf quant à lui offre de nombreuses prestations : économiques, écologiques et modernes. Par exemple, un appartement neuf à Toulouse, ville étudiante par excellence, bénéficiera des dernières normes environnementales de construction, des prestations tout confort et d’une consommation énergétique plafonnée.

            Louer un logement étudiant en France

            En France, louer un logement étudiant peut s’avérer être un véritable casse-tête, autant pour les locataires que pour les propriétaires-bailleurs.

            Du côté des propriétaires, trouver un locataire solvable et sérieux relève d’un défi bien souvent annuel. D’autant plus lorsqu’on ne délègue pas la location de son bien à une agence. S’occuper de la mise en location, de la publication d’une annonce sur un site web, effectuer les visites, l’entretien de l’appartement… Pour les logements anciens, cela peut très vite mobiliser un temps considérable.

            Les logements neufs ont cet avantage de ne nécessiter aucun travaux dans les premières années de location.

            En ce qui concerne les locataires, l’épine se trouve plus dans le montant du loyer et l’emplacement de l’appartement. Les logements au loyer raisonnable, à proximité des commodités ou du lieu d’étude se louent rapidement. À peine l’annonce publiée que le bien reçoit déjà plusieurs demandes de visites.

            Les avantages des logements étudiants dans l’immobilier neuf

            Les appartements étudiants neufs possèdent de nombreux atouts :

            Un confort en termes de chauffage et d’isolation phonique,
            Une consommation énergétique limitée,
            Un emplacement généralement à proximité des transports et des commodités,
            Des loyers plafonnés.
            Des loyers plafonnés pour les logements étudiants neufs

            Dans l’immobilier neuf, les investisseurs ont recours au dispositif Pinel qui leur permet de défiscaliser leur achat en échange d’une période de location donnée. Pour un appartement au prix de 300 000 €, loué sur une durée maximale de 12 ans, la réduction d’impôt pourra s’élever jusqu’à 63 000 €. Ajoutés à cela, les revenus locatifs, l’investisseur profite alors d’une opération immobilière plus que rentable.

            Toutefois, la loi Pinel impose des loyers plafonnés, revus chaque année. En 2020, le montant des loyers Pinel a été fixé à :

            Montants des loyers Pinel en 2020 en fonction du zonage

            Zone A

            17,43 €/m²/mois

            Zone A bis

            12,95 €/m²/mois

            Zone B1

            10,44 €/m²/mois

            Les locataires aux revenus trop élevés pour les logements sociaux, mais pas assez pour le marché immobilier traditionnel, peuvent alors se tourner vers le Pinel. Toutefois, si le dispositif plafonne les loyers, il impose également des conditions de ressources aux candidats locataires.

            Sylvain souhaite quitter son logement étudiant jugé trop vétuste pour un appartement neuf à Toulouse. Le Pinel à Toulouse impose un loyer maximal de 10,44 €/m²/mois puisque la métropole est classée en zone B1.',
            'short_description' => 'Chaque année, dans les grandes villes de France, les étudiants et bacheliers se mettent à la recherche d’un appartement. Les petites surfaces telles que les studios et les deux pièces sont les plus recherchées, bien que les colocations demandent à avoir plusieurs chambres. Et chaque année, quand vient l’été, la course à la recherche immobilière débute.',

        ]);
        Article::create([
            'titre' => 'Focus Aides au logement',
            'slug' => 'Focus-Aides-au-logement',
            'auteur' =>  'SIMON GBOSSI',
            'description' => 'Pour suivre ses études, l’étudiant(e) doit parfois quitter sa région d’origine et son domicile familial. Il ou elle se trouve contraint de louer son propre logement, ce qui représente un des foyers de dépenses les plus importants de sa vie d\'étudiant(e).

            Il existe toutefois de nombreuses aides qui permettent à l’étudiant(e) de préserver son budget. Il faut juste savoir frapper aux bonnes portes. Notamment celle de la CAF (Caisse des Allocations Familiales), mais aussi celle des organisation spécifiques comme Action Logement.

            La CAF, les APL, ALF et ALS

            Auprès de la CAF, il est assez simple d’obtenir une aide personnalisée au logement (APL) ou bien l’allocation de logement familiale (ALF), ou encore l’allocation de logement sociale (ALS). Pour effectuer cette démarche, vous trouverez toutes les infos utiles sur le site de la CAF.

            Le dossier de demande d’aide APL, ALF ou ALS doit être adressé à la CAF dès les premiers jours d’occupation du nouveau logement. Le plus tôt sera le mieux, car ces allocations n’ont pas d’effet rétroactif.

            Si vous êtes éligibles à ces aides, il est important de garder à l’esprit que celles-ci ne sont versées aux étudiant(e)s que lors de la période scolaire. Elles sont suspendues durant l’été, sauf si vous prévenez la CAF que vous conservez le logement durant la période d’été et plus tard. Il est donc important de faire cette déclaration en fin d’année universitaire via votre espace personnel sur le site le la CAF. En cas d’oubli, les versements s’arrêtent en juin.

            Le Fonds de Solidarité au Logement

            Le FSL (Fonds de Solidarité au Logement) est une mesure de l’état qui propose une aide financière pour les personnes, étudiant(e)s ou autres, confrontés à des difficultés alors qu’elle a besoin d’accéder à un logement. Ce dispositif permet de payer le dépôt de garantie lorsque l’on accède au logement, mais également de régler les factures d’eau, de gaz, d\'électricité quand le besoin s’en fait sentir. Toutes les infos sont sur le site www.aide-sociale.fr

            Action Logement

            Vous pouvez également vous adresser auprès d’Action Logement, un organisme chargé de faciliter l’accès au logement afin de favoriser l’emploi. Action Logement propose notamment l’aide Mobili-Jeune qui prend en charge une partie du loyer (entre 10€ et 100€) pendant un an.

            Cette aide ne s’adresse pas à l’ensemble de la population étudiante, mais plus spécifiquement aux personnes en formation en alternance. Pour y prétendre, il faut avoir moins de trente ans et avoir un contrat de professionnalisation ou d’apprentissage. Celui-ci doit se faire dans n’importe quelle société, sauf les entreprises publiques ou agricoles.

            Visale

            L’une des principales difficultés de l’étudiant(e) pour obtenir un logement est de trouver une personne pour se porter garant(e). Ce sont souvent les parents ou un membre de la famille qui assurent ce rôle, mais il arrive souvent n’en aient pas les moyens.

            Heureusement, en s’adressant à Action Logement, l’étudiant(e) peut obtenir une caution. Celle-ci porte le nom de garantie Visale. Action Logement se porte garant et s’engage à couvrir les loyers en cas d’impayé et peut même intervenir pour remboursement certaines dégradations. Cette garantie est ouverte aux étudiant(e)s majeur(e)s (de 18 à 30 ans). Elle fonctionne sous forme de dette qui est soumise à l’étudiant(e) dès qu’un paiement a été assuré à sa place. Le bailleur du logement est assuré d’avoir son argent en temps et en heure. Voir le site www.visale.fr

            Loca-Pass

            Action logement propose également une aide spécifique aux étudiant(e)s pour les aider à financer le dépôt de garantie. Loca-Pass est une avance proposée sous la forme d’un prêt sans intérêt. L’étudiant(e) peut ainsi verser la somme demandée par le propriétaire dès la signature du bail.

            ',
            'short_description' => 'Pour suivre ses études, l’étudiant(e) doit parfois quitter sa région d’origine et son domicile familial. Il ou elle se trouve contraint de louer son propre logement, ce qui représente un des foyers de dépenses les plus importants de sa vie d\'étudiant(e).',

        ]);
    }
}
