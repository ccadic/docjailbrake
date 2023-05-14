# docjailbrake
Collection de script php pour concevoir un site de prise de RDV médicaux Opensource au format CalDav

![alt text](https://github.com/ccadic/docjailbrake/blob/main/drjailbrake300.png)

**Philosophie : Logiciel syndical engagé
**

DocJailbrake est un projet de conception d’une collection de scripts php/mysql destiné à concevoir un calendrier de prises de rendez vous pour professionnel de santé. La motivation est très politique. Elle est essentiellement de permettre aux professionnels libéraux de reprendre la main sur la souveraineté de LEURS données. Ils doivent pouvoir s’assurer du parfait contrôle de LEUR fichier clients/patients, s’affranchir d’une évolution des prises des rendez-vous vers une centralisation et pyramidalisation qui augmentent la dépendance vis-à-vis de sociétés commerciales en quasi-monopole. Ils doivent se protéger du détournement des flux de LEURS patients, pourtant récompense de LEUR qualité de travail, vers des structures détenues par des groupes financiers ou des structures de télémédecine à grande échelle dont les professionnels de santé ne sont plus les propriétaires. La captation des actes, de leur degré de facilité et de rentabilité permettrait, à terme, aux contrôleurs des flux de tisser des accords commerciaux d’échanges de flux d’actes faciles et rentables vers des structures capitalistiques détenues par des entreprises financières ou fonds de pensions. Avec pour conséquence de détourner l’or bleu des canaux d’irrigation traditionnels pour n’y laisser alors circuler que le flux de mauvaise qualité économique : actes complexes, peu rentables, risqués, nécessitant de fortes ressources. Le déséquilibre dans l’harmonisation des actes complexes et simples pouvant alors conduire à des faillites en série et donc à aggraver l’accès aux soins pour les patients à pathologie lourde. 

Dans un second temps, le projet vise à s’attaquer frontalement à la problématique des stratégies pyramidales, en permettant d’agréger les calendriers indépendants sur un haut de pyramide pour capter les flux, mais les distribuer vers les vrais producteurs de santé sans chercher à en faire une database ultra centralisée dangereuse pour tout l’eco-système libéral.  Il nous parait important de casser cette grave fuite en avant vers la confiscation de la data des centres médicaux ou cabinets classiques.

La structure du projet repose sur une préservation de l’indépendance maximale de l’outil de travail avec utilisation d’un maximum d’outils opensource. Le choix ici est de permettre à chaque professionnel de santé de disposer de son propre interface web, de sa propre sauvegarde, et de ses propres calendriers au format standard, sans abonnement autre que l’accès internet.  Pour les usagers qui le souhaite, une cloudisation pyramidale à minima (facultative et sans se déposséder de son outil de travail) devrait être possible avec un assemblage des calendriers par grappes. 

**Résumé de la stratégie technique de ce projet
**

Pour le petits centres médicaux, mais aussi ceux de moyenne taille, il existe des outils de type NAS qui comportent déjà la plupart des briques nécessaires à ce projet
•	Un serveur WEB intégré
•	Un système de gestion de calendrier compatible CALDAV
•	Un système antivirus ingéré
•	Un système de firewall intégré
•	Un OS stable depuis des années
•	Un système d’envoi d’email intégré
•	Une base de données MYSQL/MariaDB intégré
•	Une intégration de PHP 
•	Un système de préservation de l’intégrité des données RAID
•	Des possibilités de réplication de sécurité à distance

L’outil NAS est assez peu répandu dans les centres médicaux. Nous avons choisi de développer ce projet en exploitant les NAS Synology (https://www.synology.com/fr-fr/products?) . Ceux-ci-offrent pour prix de départ de 200 EUR (soit le prix d’un abonnement mensuel à une plateforme de RDV en ligne) de ce qui est nécessaire et suffisant pour avoir son propre système de prise de rendez vous au cabinet médical. La philosophie de développement de ce projet devrait certainement permettre une adaptation simple à d’autres plateformes, avec à terme, dans un coin de la pensée, la possibilité de faire un NAS complètement opensource sur une base Raspberry.
 
Ces NAS comportent un système d’exploitation modulaire appelé DSM : https://www.synology.com/fr-fr/dsm 
 
Dans ces modules, vous avez le serveur web, php, synology calendar et la base de données mariaDB/mySQL .  Synology calendar comporte tout ce qu’il faut pour gérer vos RDV : interface web , glisser déposer, programmation par scripts, automatisation d’alertes …  sans que vous ayez besoin de sortir les données de votre cabinet et les confier à des entreprises capitalistiques.

https://www.synology.com/fr-fr/dsm/feature/calendar 
 
Ce calendrier est compatible CALDAV, peut être interrogé par Smartphone, par secrétariat à distance le cas échéant.

Il existe des outils de programmation opensource permettant de créer des scripts pour interagir avec des calendriers : https://sabre.io/  Ces outils sont gratuits. https://github.com/sabre-io/sabre.io/blob/master/source/dav/caldav-carddav-integration-guide.md

Les cabinets médicaux ou centres de soins sont maintenant, peu ou prou , tous connectés à internet au travers d’une adresse IP fixe ou au pire compatible avec des services de DNS dyamiques . Les NAS synology fournissent d’ailleurs en standard le moyen d’offrir un accès aux patients depuis internet. 

Les box fibre ou ADSM permettent également de rediriger des ports internet vers un NAS sir IP interne.

**Calendrier des développements
**

Le plus gros travail dans ce projet est finalement assez limité dans la mesure où les outils les plus importants existent déjà sur étagère : synology calendar, serveur web. 
Dans premier temps, le développement porte sur le développement d’un front office et de la structure de la base de données MYSQL.

Permettre au patient de réserver des rdv en fonction de critères de choix multiples : 
•	type de soins, 
•	choix d’un médecin spécifique, 
•	durée du soin etc …  

Le front office gèrera les alertes SMS et email pour les rappels de RDV

Dans un second temps, le développement de portera sur le développement de la partie backoffice : 
•	ajouter des médecins ou assistants et gérer leur planning de disponibilités
•	optimiser les réservations de plages de rendez-vous (avec ou sans IA)
•	gérer les pas venus pas prévenus
•	développement de services sms etc ….


Ce projet est initié par Dr CADIC Philippe (www.github.com/ccadic , www.linkedin.com/in/dr-philippe-cadic-883a15122/ Twitter : @sulfuroid ), ex-fondateur de plusieurs sociétés d’ingéniérie électronique et informatique dans les années 2000, maintenant retiré dans le monde de l’opensource. 
