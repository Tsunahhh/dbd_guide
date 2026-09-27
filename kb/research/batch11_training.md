# Lot 11 — Erreurs, arbres de décision, drills, programme, mesure (vue SURVIVANT)

> **Statut : WRITTEN (brouillon), non audité, non sourcé par des experts — rédigé sans accès web le 27/09/2026**

- Périmètre (mission) : §17 MISTAKE DATABASE · §32 DECISION TREES · §33 DRILLS · §34 PLAN D'ENTRAÎNEMENT · §35 SYSTÈME DE MESURE · taxonomie T-P01→T-P04, T-Q01 (+ T-Q02/T-Q03 en version courte), T-R01→T-R04 (méthode de revue de ses propres parties).
- Référence de version : **LIVE 10.1.2a** (17/09/2026). Le **PTB 10.2.0** (Survivor Intent System, refonte d'Abandon, 58 perks modifiées) **n'est pas LIVE** : rien ici n'en dépend ; les points qu'il pourrait changer sont signalés « à revoir après 10.2.0 ».
- Sources utilisables : `kb/seed/audit_phase0.txt` (« audit phase 0 », seules valeurs présentées comme FACT, avec leur confiance) ; `kb/research/batch4_killers_g*.md` (exemples par tueur, eux-mêmes non re-vérifiés) ; le seed (`kb/seed/ch0_2.txt`, `ch4_7.txt`, `ch10_14.txt`) est **critiqué, pas recopié**. `kb/deliverables/PERK_DEDUCTION.md` n'existe pas encore.
- Aucune analyse de VOD, aucun guide expert, aucune statistique n'ont été consultés pour ce lot. Tout ce qui n'est pas une valeur de l'audit est un raisonnement de joueur : **HEURISTIC**, **SITUATIONAL**, **HYPOTHESIS** (jamais « EXPERT OPINION » sourcée). Tout chiffre non issu de l'audit est **UNCERTAIN**.

## 0. Conventions et constantes de temps

### 0.1 Étiquettes

| Étiquette | Sens dans ce fichier |
|---|---|
| FACT (audit, confiance) | Valeur de la « Référence vérifiée » de l'audit phase 0, avec son niveau (VERIFIED_PRIMARY / VERIFIED_MULTI_SOURCE / STRONG_SECONDARY) |
| CALC | Arithmétique faite ici sur des FACT (hypothèses simplificatrices dites à chaque fois) |
| HEURISTIC | Règle pratique de joueur, utile en général, avec exceptions |
| SITUATIONAL | Dépend fortement du tueur, de la carte, de l'état de partie |
| HYPOTHESIS | Interprétation plausible, non testée |
| UNCERTAIN | Chiffre ou affirmation sans source vérifiée (cibles de métriques, durées d'entraînement…) |

### 0.2 Constantes utilisées partout (audit phase 0, LIVE 10.1.2a)

| Constante | Valeur | Confiance (audit) |
|---|---|---|
| Gen solo | 90 charges, +1 c/s → **90 s** ; 5 gens requis à 4 survivants | VERIFIED_MULTI_SOURCE (valeur) |
| Pénalité coop | 2 / 3 / 4 réparateurs → ~52,9 / ~42,9 / ~40,9 s | STRONG_SECONDARY |
| Skill check raté | −10 % de progression + 3 s sans progression ; Great +1 % | STRONG_SECONDARY |
| Coup de pied tueur | −5 % puis −0,25 c/s ; il faut réparer **5 %** pour stopper la régression ; 8 regression events max par gen | VERIFIED_MULTI_SOURCE (7.5.0) |
| Phase de crochet | **70 s** par phase ; 3e accrochage = mort | VERIFIED_PRIMARY (8.2.0) |
| Accrocher / décrocher | 1,5 s / 1 s | STRONG_SECONDARY |
| Protections de décrochage | Endurance + 10 % Haste pendant **10 s** + Elusive 10 s (Elusive seulement tant que tous les gens ne sont pas réparés) ; Endurance perdue sur action voyante | VERIFIED_PRIMARY (10.1.0) / STRONG_SECONDARY (annulation) |
| Anti-camp | Zone de **16 m** ; rien ne se remplit au-delà ; ×2 après 10 s, ×4 après 20 s de présence ; désactivé portes alimentées | VERIFIED_MULTI_SOURCE / VERIFIED_PRIMARY (9.3.0) |
| Auto-décrochage | Seulement à 2 survivants restants ou via offrande/perk (9.0.0) ; à 2 survivants, laisser passer 2 skill checks de lutte = mort (9.1.0) | VERIFIED_PRIMARY / STRONG_SECONDARY |
| Soin | 1 état de santé = **16 s** (+1 c/s) ; Mangled −20 % de vitesse | STRONG_SECONDARY |
| Deep Wound | 20 s ; mending 10 s seul, 6 s par un allié ; un dégât sous Deep Wound = au sol | VERIFIED_PRIMARY (8.6.0) |
| Au sol | Bleed-out 240 s ; récupération auto jusqu'à 95 % en 30,4 s (« à l'arrêt » selon le wiki) | STRONG_SECONDARY / VERIFIED_MULTI_SOURCE |
| Vitesses | Survivant 4,0 m/s ; tueurs 4,6 ou 4,4 m/s (Nurse 3,85) ; tueur portant 3,68 m/s | VERIFIED_MULTI_SOURCE / STRONG_SECONDARY |
| Boost au coup | 1,8 s (×1,65 selon le wiki) ; cooldown tueur 2,7 s après un coup réussi, 1,5 s après un raté | VERIFIED_PRIMARY (durée) / VERIFIED_MULTI_SOURCE (2,7 s) |
| Fenêtres | Fast 0,5 s (garde l'élan, bruyant) · medium 0,9 s · slow 1,5 s ; fast vault = ≥ 2,5 m de course droite ; tueur 1,7 s ; bloquée **30 s pour toi** après ton 3e vault de la même fenêtre dans la même poursuite | STRONG_SECONDARY |
| Palettes | Stun 2 s (seulement palette abaissée à ~50 %) ; casse **2,34 s** ; tronçonneuse 1 s ; vault de palette 1,1 s / 2 s ; Enduring −40/45/50 % | VERIFIED_MULTI_SOURCE (2,34 s) / STRONG_SECONDARY |
| Casse instantanée par pouvoir | Demogorgon, Oni (Blood Fury), Blight, Mastermind, Knight (gardes), Good Guy, Lich, Dark Lord (loup), Ghoul (add-on), Legion (add-on) — liste à reconfirmer | STRONG_SECONDARY |
| Bloodlust | +0,2 / +0,4 / +0,6 m/s à 15 / 25 / 35 s de poursuite ; perdue si le tueur casse une palette, touche, ou utilise son pouvoir ; effet d'un stun : non documenté | VERIFIED_MULTI_SOURCE / STRONG_SECONDARY / UNCERTAIN |
| Poursuite | Début : survivant visible à ≤ 12 m, qui court, tueur qui marche. Fin : > 18 m, 5 s en casier, LOS perdue > 8 s, ou hors de ± 35° du centre de vision | STRONG_SECONDARY |
| Red stain | Émise par la tête du tueur, dans la direction où il regarde ; masquée par Undetectable ; marcher à reculons trompe le survivant | STRONG_SECONDARY |
| Griffures | Durée de vie 10 s | STRONG_SECONDARY |
| Corbeaux AFK | 80 / 100 / 120 s d'inactivité | VERIFIED_PRIMARY (9.3.0) |
| Exhausted | Ne récupère pas en courant | STRONG_SECONDARY |
| Totems | Purification 14 s ; Boon 14 s (28 s sur un Hex) | STRONG_SECONDARY |
| Fin de partie | Porte : 20 s, progression conservée ; EGC 120 s, moitié de vitesse si quelqu'un est au sol/accroché ; trappe : ouverte à 1 survivant restant | STRONG_SECONDARY |
| Mori de fin | Possible à 2 survivants vivants (l'un accroché en Struggle, l'autre au sol) | VERIFIED_PRIMARY (9.0.0) |
| Match Details (9.6.0) | Loadouts des coéquipiers visibles ; tueur révélé dès qu'un survivant entre en poursuite ou perd un état ; **loadout du tueur caché jusqu'à la fin** | VERIFIED_PRIMARY |
| Validation des coups | Le client du tueur décide si sa connexion est bonne ; la latence cumulée favorise le tueur | VERIFIED_PRIMARY (principe) / COMMUNITY_OBSERVATION (détails) |

### 0.3 Économie en secondes (CALC, à réutiliser dans toutes les sections)

- **Valeur d'une seconde de poursuite** = nombre de charges produites ailleurs pendant cette seconde. Trois coéquipiers chacun sur un gen différent → 3 c/s → **1/30 de gen par seconde** (audit, A-267 : le seed disait « 1/3 de gen », FAUX). Trois coéquipiers sur le même gen → ~2,1 c/s. Coéquipiers qui soignent, se cachent ou marchent → 0 c/s.
  - Conséquence : 60 s de poursuite avec 3 réparateurs séparés ≈ 180 charges ≈ **2 gens**. 60 s de poursuite pendant que l'équipe se soigne ≈ 0 gen. La durée de chase seule ne dit donc presque rien (voir §35).
- **Coût d'une palette cassée pour le tueur** : 2,34 s immobile → le survivant gagne ~9,4 m (4,0 × 2,34). Pour refermer 9,4 m à 0,6 m/s (tueur 4,6) il faut ~15,6 s ; à 0,4 m/s (tueur 4,4) ~23,4 s. CALC sans fente, sans Bloodlust, en ligne droite : c'est un plafond théorique, pas une valeur de jeu. L'audit donne pour 10 m d'avance ≈ 16,3 s / 21,7 s avec Bloodlust et ≈ 12-13 s / 17-18 s avec une fente de 2-2,5 m (valeur communautaire).
- **Coût d'un stun** : 2 s de gel du tueur (moins avec Enduring) **puis**, souvent, 2,34 s de casse ou un détour.
- **Coût d'un soin** : 16 s pour le soigné + 16 s pour le soigneur = 32 « secondes-survivant » ≈ 32 charges si les deux auraient réparé seuls ≈ **0,36 gen**. Un soin n'est rentable que si l'état sain rapporte plus (typiquement : une poursuite qui tient un coup de plus, ≥ 10-20 s gagnées) — HEURISTIC.
- **Coût d'un sauvetage** : trajet aller-retour du sauveteur (souvent 20-40 s, UNCERTAIN, dépend de la carte) + 1 s de décrochage + soin éventuel. Un sauvetage « pour rien » (trade immédiat) coûte ce temps **et** un état de crochet.
- **Coût d'un état de crochet** : il n'y a que 3 accrochages par survivant ; l'équipe dispose de 4 × 2 = 8 « états survivables » avant les morts. Chaque état perdu réduit la marge de toute l'équipe (HEURISTIC, fondé sur la règle de 3 accrochages).

## 1. MISTAKE DATABASE (§17, T-P01 → T-P04)

Format imposé : **Erreur → Pourquoi → Punition → Correction → Drill**. Chaque entrée porte un ID (`E-D` débutant, `E-I` intermédiaire, `E-A` avancé, `E-T` très avancé), des tags de domaine et renvoie à un drill `DR-xx` (§3). Toutes les corrections sont des **HEURISTIC** sauf mention FACT ; aucune n'est une règle absolue : chacune dit quand elle ne s'applique pas.

Tags : `CHASE` · `TILE` · `MACRO` · `SOIN` · `CROCHET` · `SOLOQ` · `SWF` · `ENDGAME` · `COUNTER` (counterplay tueur) · `INFO`.

Le « niveau » d'une erreur = le niveau auquel elle devient le **principal frein** (un joueur avancé peut encore faire des erreurs débutant, mais elles ne sont plus ce qui le plafonne).

### 1.1 Débutant (T-P01)

#### E-D01 · CHASE · Ne jamais regarder derrière soi
- **Erreur** : courir caméra vers l'avant pendant toute la poursuite.
- **Pourquoi** : c'est naturel (on regarde où l'on va) et la musique de chase donne l'illusion de « savoir » où est le tueur. Sans vue du tueur, impossible de décider quand poser une palette, quand vaulter, quand changer de côté.
- **Punition** : coups « surprises » à la sortie d'un coin ; palettes posées trop tard (coup reçu en posant) ou trop tôt (gaspillées) ; le tueur peut simplement couper par l'intérieur d'une tile.
- **Correction** : regarder derrière **aux moments utiles** : (1) avant de s'engager sur une tile (où arrive-t-il ?), (2) pendant les segments droits où le chemin est déjà connu, (3) au coin d'une tile pour décider du côté. Ne pas regarder derrière dans les 2-3 derniers mètres avant une fenêtre ou une palette (voir E-D02). Contre un tueur furtif (Undetectable), regarder plus souvent car le son ne suffit pas. Risque : trop regarder = mauvais pathing (E-D02) ; alternative quand on ne peut pas tourner la caméra : suivre la red stain par l'angle de vue (FACT : émise par la tête du tueur, STRONG_SECONDARY) et les sons de pas.
- **Drill** : DR-01 (caméra).

#### E-D02 · CHASE · Regarder derrière soi au mauvais moment
- **Erreur** : tourner la caméra en approche d'une fenêtre, d'une palette ou d'un passage étroit.
- **Pourquoi** : on veut « vérifier » le tueur au moment le plus stressant. La direction du personnage suit plus ou moins la caméra selon les réglages et les mains : on dévie.
- **Punition** : collision avec le décor, vault en angle → **medium vault 0,9 s qui remet l'élan à zéro** au lieu d'un fast vault 0,5 s (FACT, STRONG_SECONDARY) ; perte de ~0,4 s + l'élan, souvent la différence entre un coup et rien.
- **Correction** : aligner la caméra et le personnage **au moins ~2,5 m avant** la fenêtre (condition du fast vault, FACT STRONG_SECONDARY), puis ne plus toucher à la caméra jusqu'à la fin du vault ; faire le check juste **après** le vault ou pendant un segment droit. Exception : sur une palette que tu ne comptes pas poser, un check tardif peut être voulu (lecture de la fausse avance) — à ne faire qu'une fois le geste maîtrisé.
- **Drill** : DR-01, DR-02.

#### E-D03 · TILE · Courir vers une dead zone
- **Erreur** : fuir « loin du tueur » sans savoir ce qu'il y a devant.
- **Pourquoi** : réflexe de fuite ; méconnaissance de la carte ; on choisit la direction à l'opposé du tueur plutôt que vers une ressource.
- **Punition** : terrain ouvert = le tueur 4,6 m/s rattrape 0,6 m/s ; une avance de 10 m tient ~16 s (audit, avec Bloodlust, sans fente) avant le coup ; ensuite plus rien à jouer.
- **Correction** : à chaque déplacement hors chase, repérer **les deux prochaines tiles** vers lesquelles fuir (route de repli). En chase, fuir vers la tile la plus forte *atteignable avant le coup*, même si elle est un peu plus près du tueur, plutôt que vers le vide. Nuance (seed : « jamais vers une dead zone » est trop absolu) : traverser une dead zone courte **avec le boost d'un coup** ou quand le tueur est occupé (casse, vault, cooldown 2,7 s) peut être correct pour rejoindre une zone riche. Alternative quand tout est mort autour : jouer le temps (LOS, rochers, maïs, 360 contre M1) plutôt que courir droit.
- **Drill** : DR-13 (route planning), DR-04.

#### E-D04 · TILE · Poser la palette dès que le tueur approche (palette gaspillée)
- **Erreur** : poser chaque palette sans que le tueur soit à portée, même en bonne santé et sans pression.
- **Pourquoi** : peur du coup ; confusion entre « palette = sécurité » et « palette = ressource limitée ». Le seed lui-même note « jeter toutes les palettes d'un coup en début de partie, puis mourir en dead zone ».
- **Punition** : le tueur casse (2,34 s) ou contourne ; la zone s'épuise ; les poursuites suivantes (souvent contre toi blessé, ou contre un coéquipier) se font sans ressource. Le coût est **différé** : c'est pour cela qu'on ne le voit pas.
- **Correction** : appliquer l'arbre T-Q01 (§2.1). Poser tôt (pre-drop) est correct quand la tile ne tient pas autrement (filler, anti-loop, blessé à 2 crochets…) ; sinon « tenir » la palette debout et la faire respecter. Risque de l'excès inverse : greed incorrect (E-I01).
- **Drill** : DR-12 (décision palette à voix haute), DR-03.

#### E-D05 · CHASE · Vault en angle / sans élan
- **Erreur** : arriver sur la fenêtre en diagonale ou après un virage serré.
- **Pourquoi** : on coupe la trajectoire pour « gagner du temps ».
- **Punition** : medium vault 0,9 s (élan remis à zéro) au lieu de 0,5 s ; le tueur est à portée de fente à la réception.
- **Correction** : prévoir la dernière ligne droite (≥ 2,5 m) en arrondissant l'approche **plus tôt** ; l'arc coûte moins que le medium vault. Contre un tueur qui vault lui-même (1,7 s), un fast vault raté ne se rattrape pas. Si l'angle est impossible, ne pas vaulter : continuer la tile.
- **Drill** : DR-02.

#### E-D06 · MACRO · Rater des skill checks par manque de préparation
- **Erreur** : jouer sans avoir réglé le son / en regardant ailleurs, rater régulièrement des skill checks.
- **Pourquoi** : on sous-estime le coût ; on regarde la carte pendant la réparation.
- **Punition** : chaque raté = −10 % (9 charges ≈ 9 s solo) + 3 s sans progression (FACT, STRONG_SECONDARY) ≈ **12 s perdues**, plus une notification de bruit qui révèle ta position (la notification de raté est une connaissance courante, non recoupée par l'audit).
- **Correction** : surveiller la jauge quand on répare ; baisser la musique du jeu si besoin ; en cas de doute (perks de skill checks difficiles suspectées), accepter le « Good » plutôt que viser le Great. Ne pas cesser de lever la caméra pour autant (E-D08).
- **Drill** : DR-14 (skill checks et fondamentaux).

#### E-D07 · MACRO · Se cacher alors que le tueur est loin
- **Erreur** : rester accroupi dans un coin ou un casier dès que l'on n'entend plus rien.
- **Pourquoi** : la peur ; l'idée fausse que « survivre » = « ne pas être vu ».
- **Punition** : 0 charge produite ; au-delà de 80 / 100 / 120 s d'inactivité, corbeaux AFK puis notifications continues (FACT, VERIFIED_PRIMARY 9.3.0). L'équipe perd un réparateur : les 3 autres prennent toute la pression.
- **Correction** : se cacher est un **outil** (tueur furtif à proximité, mauvais timing pour s'exposer, dernier survivant) : il doit servir à reprendre un objectif dans les secondes qui suivent. Contre un tueur loin et occupé, réparer. Alternative : si tu es blessé et seul, te déplacer vers un gen proche d'une tile forte plutôt que te terrer.
- **Drill** : DR-16 (lecture HUD / état de l'équipe), DR-17 (comptage).

#### E-D08 · MACRO · Ne jamais lever la caméra en réparant
- **Erreur** : fixer la jauge du gen pendant toute la réparation.
- **Pourquoi** : concentration sur les skill checks.
- **Punition** : tueurs furtifs (Shape, Ghost Face, Pig, Wraith, Good Guy, Slasher…, voir lot 4) et tueurs à TR court (Huntress, berceuse) arrivent à portée sans être vus ; coup gratuit sur le gen.
- **Correction** : tourner la caméra par intervalles (≈ toutes les quelques secondes contre un furtif suspecté, beaucoup moins contre un tueur au TR normal : SITUATIONAL). Se placer sur le côté du gen qui offre la meilleure vue et la meilleure fuite vers une tile.
- **Drill** : DR-06 (identification), DR-14.

#### E-D09 · CROCHET · Foncer décrocher sous les yeux du tueur
- **Erreur** : aller au crochet dès l'accrochage, pendant que le tueur est encore à côté.
- **Pourquoi** : envie d'aider ; peur que l'allié meure ; méconnaissance des 70 s par phase (FACT, VERIFIED_PRIMARY).
- **Punition** : trade (le tueur frappe le sauveteur ou met au sol le décroché dès la fin des 10 s d'Endurance), deux survivants hors des gens, parfois un double crochet.
- **Correction** : la phase dure 70 s : il y a presque toujours le temps d'attendre que le tueur **s'engage ailleurs** (chase lancée, TR qui s'éloigne, icône de chase d'un coéquipier en SoloQ). Décrocher tôt n'est correct que si le tueur est clairement parti ou si la phase est presque finie. Arbre T-Q02 (§2.4).
- **Drill** : DR-10 (sauvetage).

#### E-D10 · SOIN · Soigner sous le crochet, juste après le décrochage
- **Erreur** : décrocher puis soigner l'allié sur place (ou se faire soigner à côté du crochet).
- **Pourquoi** : réflexe « d'abord soigner ».
- **Punition** : le tueur revient au crochet (c'est l'endroit qu'il connaît) ; le soin (16 s) est interrompu, les deux sont blessés au même endroit. Soigner est une action voyante : l'Endurance du décroché tombe (FACT, STRONG_SECONDARY).
- **Correction** : quitter la zone du crochet (hors LOS, idéalement vers une tile ou un gen éloigné du tueur), puis décider du soin (arbre T-Q03). Exception : tueur confirmé en poursuite loin et engagé (callout SWF ou HUD) : un soin immédiat peut être acceptable (SITUATIONAL).
- **Drill** : DR-10, DR-18.

#### E-D11 · COUNTER · Courir en ligne droite en terrain ouvert contre un tueur à distance
- **Erreur** : fuir tout droit dans un champ devant une Huntress, un Deathslinger, un Trickster, etc.
- **Pourquoi** : on applique le réflexe « distance » valable contre un tueur M1.
- **Punition** : tir gratuit à distance moyenne (zone la plus dangereuse contre la Huntress selon le lot 4, HEURISTIC).
- **Correction** : contre un tueur ranged, la ressource n'est pas la distance mais la **ligne de vue** : aller vers des murs hauts, changer de direction **au lâcher** du projectile, pas pendant tout l'armement (lot 4, Huntress). Contre un tueur M1, au contraire, la ligne droite vers une tile est souvent correcte. Identifier le tueur d'abord (DR-06).
- **Drill** : DR-15 (counterplay par tueur), DR-06.

#### E-D12 · SOLOQ · Ignorer le HUD et les loadouts visibles
- **Erreur** : ne jamais lire les icônes d'état des coéquipiers (en chase, au crochet, sur gen) ni leurs perks dans Match Details.
- **Pourquoi** : attention entièrement sur son écran de jeu.
- **Punition** : doublons de sauvetage (deux survivants au crochet, gens abandonnés) ou personne au crochet ; tu répares alors que le seul chaseur est au sol depuis 30 s.
- **Correction** : consulter les loadouts des coéquipiers **avant/début de partie** (visibles depuis 9.6.0, FACT VERIFIED_PRIMARY) : qui a Kindred, We'll Make It, Borrowed Time, une lampe… ; puis lire le HUD à chaque changement d'état (accrochage, mise au sol). Heuristique SoloQ : « si un coéquipier plus proche et déjà en mouvement va au crochet, reste sur ton gen », mais vérifie 10-15 s plus tard qu'il y va vraiment.
- **Drill** : DR-16 (HUD SoloQ).

#### E-D13 · INFO · Faire du bruit hors poursuite
- **Erreur** : fast vault ou course inutile hors chase ; traverser la carte en courant près du tueur.
- **Pourquoi** : le fast vault « va plus vite ».
- **Punition** : le fast vault fait du bruit (FACT, STRONG_SECONDARY) ; les griffures restent 10 s (FACT) : le tueur remonte la piste.
- **Correction** : hors chase et près du tueur, marcher (2,26 m/s) ou vault lent (1,5 s, sans notification de bruit fort, FACT STRONG_SECONDARY). Loin du tueur, courir reste correct (gain de temps). Contre un tueur à l'info (perks d'aura), l'économie de bruit rapporte moins : SITUATIONAL.
- **Drill** : DR-01 (variante déplacement), DR-17.

#### E-D14 · MACRO · Réparer à 3-4 sur le même gen en début de partie
- **Erreur** : se regrouper sur un seul gen « pour aller plus vite ».
- **Pourquoi** : sentiment de sécurité ; on voit la barre monter vite.
- **Punition** : à 4 sur un gen, ~40,9 s pour 90 charges, soit ~2,2 c/s contre 4 c/s si chacun réparait seul (FACT, STRONG_SECONDARY) → l'équipe produit ~45 % de moins. Et un seul passage du tueur touche tout le monde.
- **Correction** : se répartir sur des gens différents, **en pensant à la géométrie** (E-I06, anti-3-gen). Réparer à 2 est acceptable pour finir un gen critique vite (ex. dernier gen, gen menacé par une perk de régression) : c'est un choix de tempo, pas un défaut. SWF : un « duo gen » est un choix d'équipe, pas un réflexe.
- **Drill** : DR-09 (rotation de gens).

### 1.2 Intermédiaire (T-P02)

#### E-I01 · TILE · Greed incorrect
- **Erreur** : faire « un tour de plus » autour d'une palette debout alors qu'on ne pourra pas l'atteindre avant le coup.
- **Pourquoi** : on a appris que greeder économise des palettes ; on surestime sa distance (la fente ajoute ~2 m selon une estimation communautaire, audit COMMUNITY_OBSERVATION) ; on oublie la Bloodlust (+0,2/0,4/0,6 m/s à 15/25/35 s, FACT).
- **Punition** : coup reçu à côté de la palette ; si blessé, au sol avec la palette encore debout (ressource perdue ET état de santé perdu).
- **Correction** : greeder seulement si **(a)** tu vois le tueur (ou lis sa red stain), **(b)** tu atteindras la palette avant qu'il soit à portée de fente même s'il coupe par le chemin court, **(c)** un coup ne te coûterait pas un crochet de trop (arbre T-Q01). Contre un tueur anti-loop (pouvoir), greeder coûte souvent le coup : pre-drop ou quitter. Alternative quand on doute : poser (pre-drop) — la palette perdue coûte moins qu'un état de santé à 2 crochets.
- **Drill** : DR-12, DR-03.

#### E-I02 · SOIN · Over-heal (soigner systématiquement)
- **Erreur** : se soigner à chaque blessure, quel que soit le contexte (le seed liste déjà « se soigner systématiquement… même contre un tueur qui one-shot »).
- **Pourquoi** : l'état sain « rassure » ; le coût du soin est invisible (§0.3 : ~32 secondes-survivant ≈ 0,36 gen).
- **Punition** : l'équipe perd un tiers de gen par soin ; contre un tueur à coup unique (Hillbilly, Cannibal, Oni en Fury, Huntress avec Iridescent Head…), l'état sain ne rapporte presque rien ; le tueur qui revient pendant le soin trouve deux cibles.
- **Correction** : soigner quand l'état sain **fait gagner plus de temps qu'il n'en coûte** : poursuite probable bientôt contre un tueur M1, gens proches de la fin (tu seras chassé), Mangled/Broken absents, med-kit disponible. Ne pas soigner (ou reporter) : contre les coups uniques, quand un gen est à 80 %+ (le finir d'abord), quand le tueur arrive. Nuance contre le seed (« soignez vite contre Plague ») : contre la Plague, le choix entre se purifier à une fontaine (qui lui rend Corrupt Purge) et rester malade est SITUATIONAL (lot 4 g2).
- **Drill** : DR-18 (décision de soin).

#### E-I03 · CROCHET · Surinvestir dans un sauvetage
- **Erreur** : deux ou trois survivants autour du crochet, ou un survivant qui attend 40 s près du crochet « au cas où ».
- **Pourquoi** : peur de rater le sauvetage ; en SoloQ, personne ne sait qui y va.
- **Punition** : 2-3 réparateurs retirés = 2-3 c/s perdus pendant toute l'attente ; tueur qui proxy-camp et en frappe un deuxième ; gens régressés.
- **Correction** : **un** sauveteur, qui arrive au bon moment (T-Q02) ; les autres réparent. Deux survivants près du crochet ne se justifient que pour un plan précis : body block/protection hit juste après le décrochage, ou sauvetage contre un tueur qui campe avec une perk suspectée (SWF surtout). Seed trop absolu : « le plus proche décroche, les autres réparent » — le plus proche peut être celui qui est en chase, à 2 crochets, ou sur un gen à 90 % ; le meilleur sauveteur est celui dont l'absence coûte le moins **et** qui arrive au bon moment.
- **Drill** : DR-10, DR-16.

#### E-I04 · CROCHET · Mauvais timing de sauvetage (trop tôt / trop tard)
- **Erreur** : décrocher alors que le tueur est à portée (trop tôt) ou attendre les dernières secondes de la phase (trop tard).
- **Pourquoi** : trop tôt = impatience ; trop tard = sauveteur parti loin, ou « je finis ce gen d'abord » sans compter.
- **Punition** : trop tôt : trade ou double au sol ; trop tard : passage en phase 2 (le survivant perd un état) ou mort en phase 2 → l'équipe passe à 3, ce qui accélère tout pour le tueur.
- **Correction** : partir vers le crochet de manière à **arriver** pendant une fenêtre sûre, et au plus tard ~10-15 s avant la fin de phase (marge UNCERTAIN, selon la distance). Compter la phase : 70 s (FACT). En SoloQ, la jauge du crochet visible au HUD sert d'horloge. Si le tueur campe à < 16 m, l'anti-camp remplit la jauge (×4 après 20 s, FACT) : parfois attendre est la meilleure option.
- **Drill** : DR-10, DR-17 (comptage).

#### E-I05 · CROCHET · Faire prendre les risques au survivant à 2 crochets (mauvaise gestion du hook stage)
- **Erreur** : le survivant déjà en « dead on hook » (2 accrochages) prend la chase, fait le sauvetage risqué ou le body block.
- **Pourquoi** : chacun joue « sa » partie ; on ne compte pas les états des autres.
- **Punition** : l'équipe perd un joueur entier au lieu d'un état ; à 3 survivants les gens requis restent 5 et les réparateurs baissent.
- **Correction** : répartir les risques selon les états : le survivant à 0 crochet prend les sauvetages et les poursuites « de protection » ; celui à 2 crochets joue les gens éloignés du tueur et évite les zones de sauvetage. Exception : en fin de partie (portes alimentées), un survivant à 2 crochets bien placé peut être le meilleur sauveteur si c'est le seul à pouvoir arriver à temps (SITUATIONAL).
- **Drill** : DR-17, DR-16.

#### E-I06 · MACRO · Créer un 3-gen
- **Erreur** : réparer d'abord les gens isolés/faciles, laisser pour la fin trois gens proches les uns des autres.
- **Pourquoi** : on répare le gen le plus proche du spawn sans vision globale.
- **Punition** : le tueur défend trois gens en quelques secondes de trajet ; parties de 10 minutes ou plus avec épuisement des palettes. Le seed (ch. 10) rappelle que le tueur a une limite de 8 regression events par gen (FACT, VERIFIED_MULTI_SOURCE) : le 3-gen coûte cher au tueur aussi, mais il reste le scénario perdant typique en SoloQ (HEURISTIC).
- **Correction** : dès le début, repérer le **triangle le plus serré** de gens et le casser en priorité (au moins un de ses gens tôt) ; garder pour la fin des gens éloignés les uns des autres. Nuance : si le triangle est dans une zone très riche en tiles, le finir tôt peut au contraire gaspiller la zone ; SITUATIONAL selon carte (lot 8).
- **Drill** : DR-09.

#### E-I07 · CHASE · Donner un coup gratuit (free hit)
- **Erreur** : se faire toucher sans que cela achète quoi que ce soit : sortir de tile du côté du tueur, rester sur une tile morte, vaulter vers un tueur qui attend à la réception, courir vers un tueur qui porte un allié sans plan.
- **Pourquoi** : lecture tardive de la position du tueur ; « panique vault ».
- **Punition** : un état de santé contre 0 seconde gagnée ; souvent la mise au sol suivante vient 20-30 s plus tard (UNCERTAIN).
- **Correction** : distinguer le **coup acheté** (tu prends le coup pour atteindre une tile avec le boost 1,8 s, pour protéger un décroché, pour un body block qui libère un allié) du **coup donné**. Avant chaque action risquée : « qu'est-ce que je gagne si je prends le coup ? ». Si la réponse est « rien », la priorité est de ne pas le prendre, même au prix d'une palette.
- **Drill** : DR-12, DR-19 (revue : classer chaque coup reçu).

#### E-I08 · MACRO · « Taper » un gen pour stopper la régression
- **Erreur** : toucher brièvement un gen qui régresse puis repartir.
- **Pourquoi** : habitude antérieure à la 7.5.0.
- **Punition** : depuis 7.5.0, il faut réparer **5 %** du gen pour stopper la régression (FACT, VERIFIED_MULTI_SOURCE) ≈ 4,5 s solo ; un simple contact ne sert à rien.
- **Correction** : soit rester ≥ 4,5 s (solo), soit ignorer ce gen s'il est trop exposé. Régression = −0,25 c/s (FACT) : un gen laissé 20 s perd 5 charges seulement ; parfois moins cher que s'exposer.
- **Drill** : DR-09.

#### E-I09 · MACRO · Purifier (ou ignorer) les Hex sans évaluer
- **Erreur** : (a) quitter gen/chase pour purifier tout Hex dès qu'il s'allume (règle absolue du seed) ; (b) ou n'y penser jamais.
- **Pourquoi** : (a) règle apprise sans coût ; (b) oubli des totems.
- **Punition** : (a) 14 s de purification (FACT) + trajet, parfois dans une zone surveillée (Hex protégés par perk/tueur) ; (b) un Hex fort (ex. Devour Hope, NOED en fin) décide la partie.
- **Correction** : évaluer l'Hex : effet sur l'équipe × temps restant × risque d'accès. Un Hex qui touche la poursuite ou tue (Devour Hope à ses paliers, NOED) justifie un détour ; un Hex de ralentissement modéré vaut parfois moins qu'un gen. En début de partie, purifier les totems ternes croisés sur son chemin réduit le risque NOED (HEURISTIC ; NOED n'est pas « contré » à 100 % par cela si le tueur a d'autres perks). Boon sur un Hex : 28 s (FACT) — plus lent mais laisse un Boon.
- **Drill** : DR-07 (perk deduction), DR-11.

#### E-I10 · CROCHET · Croire que l'anti-camp décrochera un allié proxy-campé
- **Erreur** : laisser un allié au crochet en pensant que la jauge anti-camp le libérera alors que le tueur rôde à 16-25 m.
- **Pourquoi** : conseil faux du seed (A-283, audit : « aucun remplissage au-delà de 16 m »).
- **Punition** : l'allié passe en phase 2 ou meurt sans que l'anti-camp ne bouge.
- **Correction** : l'anti-camp n'agit qu'à < 16 m (FACT, VERIFIED_MULTI_SOURCE) et ralentit si d'autres survivants sont proches. Contre un proxy camp : soit réparer **en sachant** que l'allié va perdre sa phase (tempo gagné pour l'équipe), soit organiser un sauvetage (un sauveteur + une distraction en SWF). Choix SITUATIONAL : nombre de gens restants, état de crochet de l'allié.
- **Drill** : DR-10.

#### E-I11 · CROCHET · Gaspiller les protections de décrochage
- **Erreur** : le survivant décroché se met à réparer ou à soigner dans les 10 s, ou court vers le tueur.
- **Pourquoi** : envie de « rattraper » le temps perdu au crochet.
- **Punition** : l'Endurance tombe sur une action voyante (FACT, STRONG_SECONDARY) ; un coup du tueur revenu met alors au sol au lieu de donner Deep Wound. Elusive (10 s, FACT) est gaspillée si tu restes en vue.
- **Correction** : les 10 s servent à **s'éloigner hors LOS** (Haste 10 %, Elusive = pas de griffures ni flaques ni grognements). Réparer seulement une fois hors de portée et hors de piste. Si le tueur revient, un coup reçu sous Endurance donne Deep Wound (mending 10 s seul, 6 s par allié, FACT). Avec Will to Live (40/50/60 s après décrochage, stun 4 s, désactivé par les portes alimentées, FACT STRONG_SECONDARY), certaines actions voyantes peuvent la désactiver (le seed l'affirme ; à vérifier au lot 2).
- **Drill** : DR-10.

#### E-I12 · TILE · Compter sur une fenêtre déjà vaultée trois fois
- **Erreur** : revenir sur la même fenêtre pour un 4e vault dans la même poursuite.
- **Pourquoi** : on ne compte pas ses vaults.
- **Punition** : après ton 3e vault de la même fenêtre dans une poursuite, elle est bloquée **30 s pour toi seul** (FACT, STRONG_SECONDARY) : tu arrives devant un mur, coup garanti.
- **Correction** : compter ses vaults par fenêtre (1-2-3) ; le 3e vault est permis mais doit être un vault **de sortie** (quitter la tile ensuite, arbre §2.2). Alternative : utiliser la palette ou changer de tile avant le 3e.
- **Drill** : DR-03, DR-04.

#### E-I13 · MACRO · Emmener la poursuite vers ses coéquipiers et leurs gens
- **Erreur** : fuir vers les gens en cours de réparation (le seed le relève aussi).
- **Pourquoi** : réflexe grégaire ; on connaît mieux la zone où l'on vient de réparer.
- **Punition** : le tueur découvre les réparateurs ; il peut changer de cible vers un survivant blessé ou lancer un pouvoir multi-cibles (Legion, Plague…) ; les gens sont abandonnés.
- **Correction** : pré-choisir un « couloir de chase » loin des gens actifs. Exception : un gen presque terminé près d'une tile forte, ou une zone de tiles riche uniquement là — avertir (SWF) ou accepter le risque (SoloQ).
- **Drill** : DR-13, DR-09.

### 1.3 Avancé (T-P03)

#### E-A01 · TILE · Rester trop longtemps sur une tile « perdue »
- **Erreur** : continuer à tourner sur une tile où le tueur a gagné (il se poste au centre, la palette est cassée, la fenêtre bloquée, sa Bloodlust est haute).
- **Pourquoi** : attachement à une tile qui « a marché » ; peur de traverser l'espace suivant.
- **Punition** : coup ou mise au sol « lente » (le tueur n'a plus qu'à attendre ton erreur) ; 35 s de poursuite sans casse ni coup = +0,6 m/s de Bloodlust (FACT).
- **Correction** : appliquer l'arbre **Quitter la tile** (§2.2). Partir **sur un événement** qui te donne du temps : casse (2,34 s), stun (2 s), vault du tueur (1,7 s), cooldown après coup (2,7 s + ton boost 1,8 s), usage de pouvoir, perte de LOS. Partir au hasard (tueur à 4 m, pas d'événement) = coup dans le dos.
- **Drill** : DR-13, DR-04.

#### E-A02 · CHASE · Se fier aveuglément à la red stain
- **Erreur** : décider de son côté de loop uniquement sur la red stain.
- **Pourquoi** : c'est un indice fort et visible ; on oublie qu'elle suit **la tête**, pas les jambes.
- **Punition** : un tueur qui marche à reculons ou de côté autour des murs inverse la lecture (FACT, technique décrite par le wiki, STRONG_SECONDARY) ; sous Undetectable il n'y a pas de red stain du tout (FACT).
- **Correction** : croiser red stain + son des pas + TR + dernière position vue ; sur une tile à murs hauts, un tueur dont la red stain « hésite » est souvent en train de mindgamer (HYPOTHESIS de lecture). Contre les tueurs à Undetectable fréquent (Shape, Ghost Face, Pig, Wraith, Beast of Prey…), jouer davantage la vue directe par les trous des murs.
- **Drill** : DR-05 (red stain).

#### E-A03 · COUNTER · Jouer les palettes comme contre un M1 face à un tueur anti-loop
- **Erreur** : tenir ou greeder une palette contre un tueur qui la détruit instantanément ou qui frappe par-dessus.
- **Pourquoi** : on a appris le loop « standard » et on ne l'adapte pas.
- **Punition** : Demogorgon (Shred), Oni en Fury, Blight (Lethal Rush), Mastermind, Knight (gardes), Good Guy, Lich, Dark Lord (loup)… détruisent les palettes instantanément (FACT, STRONG_SECONDARY, liste à reconfirmer) ; la palette « respectée » n'existe plus. Contre les ranged, la palette ne bloque pas un projectile (Huntress : lot 4, HEURISTIC/FACT probable).
- **Correction** : contre la casse instantanée, la palette sert à **gagner des mètres par le stun ou le pre-drop** (le tueur doit toujours contourner ou utiliser son pouvoir, ce qui coupe sa Bloodlust — FACT : utiliser le pouvoir fait perdre la Bloodlust), ou à forcer l'usage du pouvoir au mauvais moment. Contre les ranged : jouer la LOS (murs hauts) plus que la palette. Voir la branche « pouvoir anti-loop » de T-Q01 et les fiches du lot 4.
- **Drill** : DR-15.

#### E-A04 · CHASE · Ignorer la Bloodlust
- **Erreur** : faire durer une poursuite sans casse ni stun sur une tile faible, sans jamais « remettre à zéro » la Bloodlust.
- **Pourquoi** : on pense qu'une palette posée est une palette perdue.
- **Punition** : à 35 s, +0,6 m/s (FACT) : le tueur 4,6 m/s court à 5,2 m/s ; même les boucles « safe » deviennent unsafe.
- **Correction** : autour des seuils (15/25/35 s depuis le début de la poursuite ou le dernier reset), une palette posée qui oblige à casser remet la Bloodlust à zéro (casse = perte immédiate, FACT) ; un stun : effet non documenté (UNCERTAIN) ; un coup reçu la remet aussi à zéro (FACT : toucher un survivant). Alternative : casser la poursuite (perte de LOS > 8 s, distance > 18 m, FACT) — la Bloodlust régresse ensuite.
- **Drill** : DR-12, DR-19 (relever les secondes de chase aux moments de coup).

#### E-A05 · CHASE · Utiliser une perk d'Exhaustion au mauvais moment
- **Erreur** : lancer sa perk d'Exhaustion dès le début de la poursuite, ou la garder « pour plus tard » et tomber avec.
- **Pourquoi** : panique (trop tôt) ou avarice (trop tard).
- **Punition** : trop tôt : distance gagnée vers nulle part, puis perk indisponible au moment critique (Exhausted ne récupère pas en courant, FACT) ; trop tard : mort avec la ressource.
- **Correction** : l'utiliser pour **atteindre une zone riche** ou **sauver un état de santé qui coûte un crochet**. Chaque perk a son timing (lot 2) : ne pas généraliser. Ne pas la déclencher si elle mène vers une dead zone.
- **Drill** : DR-13, DR-19.

#### E-A06 · CROCHET · Ne pas protéger le décroché (ou le faire mal)
- **Erreur** : décrocher puis partir dans la même direction que le décroché, ou s'enfuir en laissant le tueur revenir sur lui sans rien faire.
- **Pourquoi** : on considère le sauvetage « fini » au décrochage.
- **Punition** : le tueur retrouve les deux ensemble ; ou tunnelle le décroché dès la fin des 10 s (rien n'empêche le tunnel en LIVE : les systèmes anti-tunnel des PTB 9.2.0/9.3.0 n'ont jamais été mis en live, FACT VERIFIED_PRIMARY).
- **Correction** : le sauveteur (sain, crochets bas) **se place entre le tueur et le décroché** et accepte un coup de protection si le tueur revient (le coup acheté, cf. E-I07) ; les deux partent dans des directions différentes. Contre un tueur qui ignore le sauveteur et vise le décroché : prendre la chase en restant visible, body block dans un couloir. Limite : ne pas « tanker » si tu es toi-même à 2 crochets.
- **Drill** : DR-10.

#### E-A07 · TILE · Épuiser les ressources de la zone dès la première poursuite
- **Erreur** : faire une première chase de 90 s en consommant 4-5 palettes d'une zone.
- **Pourquoi** : la durée de chase est vécue comme le seul objectif.
- **Punition** : zone épuisée pour la suite (souvent là où se trouvent les derniers gens → base d'un 3-gen) ; les coéquipiers chassés plus tard n'ont plus rien.
- **Correction** : évaluer une poursuite par **temps gagné / ressources consommées** (métrique M-03 §4) ; au-delà d'une ou deux palettes pour un seul état de santé, se demander si prendre le coup et utiliser le boost aurait coûté moins à l'équipe. Pas une règle : en début de partie contre un tueur fort, une longue chase coûteuse peut valoir le coup si elle achète 2-3 gens (§0.3).
- **Drill** : DR-12, DR-19.

#### E-A08 · INFO · Ne pas tenir la carte des ressources (zones épuisées)
- **Erreur** : fuir vers une zone dont les palettes sont déjà cassées.
- **Pourquoi** : on ne mémorise que ses propres chases.
- **Punition** : dead zone découverte au dernier moment.
- **Correction** : noter mentalement (ou en callout SWF) les palettes cassées/posées vues, les casses entendues (le son de casse s'entend de loin, observation courante non chiffrée) ; mettre à jour sa route de repli (E-D03).
- **Drill** : DR-17 (comptage), DR-08 (callouts).

#### E-A09 · ENDGAME · Traîner à la porte ouverte
- **Erreur** : rester dans la porte ouverte (attendre, provoquer) alors que tout le monde peut sortir, ou y revenir sans raison.
- **Pourquoi** : envie de « finir en beauté » ; attente d'un coéquipier sans plan.
- **Punition** : Blood Warden bloque les portes 40/50/60 s si un survivant est accroché (FACT, STRONG_SECONDARY) ; NOED/Exposed transforment un coup en mise au sol ; le tueur récupère un sacrifice.
- **Correction** : sortir dès que ta présence n'apporte plus rien ; rester seulement pour un plan (sauvetage possible, body block, soin d'un allié qui va sortir). L'EGC (120 s, moitié de vitesse si quelqu'un est au sol ou accroché, FACT) laisse le temps d'un sauvetage *si* le tueur est loin.
- **Drill** : DR-11 (endgame).

#### E-A10 · ENDGAME / SOIN · Mal gérer l'état au sol (slug)
- **Erreur** : ramper sans arrêt vers un coéquipier/ loin du tueur au lieu de récupérer ; ou tous les survivants qui foncent relever un allié pendant que le tueur rôde.
- **Pourquoi** : impatience ; méconnaissance de la récupération automatique (9.2.0).
- **Punition** : pas de récupération (le wiki précise qu'elle se fait « à l'arrêt », FACT VERIFIED_MULTI_SOURCE sur la récupération, précision « à l'arrêt » STRONG_SECONDARY) ; le tueur qui slug frappe les sauveteurs l'un après l'autre (piège « 4-slug »).
- **Correction** : au sol et sans menace immédiate, rester immobile pour récupérer (95 % en 30,4 s, FACT) ; ramper seulement pour se cacher ou se rapprocher d'un allié qui vient. Pour relever : un seul survivant, quand le tueur est engagé ailleurs ; si tout le monde est au sol, le Surrender existe (8.6.0) et l'Abandon à certaines conditions (9.2.0) — refonte au PTB 10.2.0, à revoir.
- **Drill** : DR-11, DR-17.

#### E-A11 · SOLOQ · Supposer ce que les coéquipiers vont faire
- **Erreur** : partir du principe qu'un coéquipier fera le sauvetage / réparera / prendra la chase, sans vérification.
- **Pourquoi** : on transpose des habitudes SWF.
- **Punition** : personne au crochet (mort en phase 1→2), ou tout le monde.
- **Correction** : raisonner en **probabilités** : un coéquipier qui ne bouge pas vers le crochet 10-15 s après l'accrochage n'ira probablement pas (HEURISTIC). Regarder les perks visibles des coéquipiers (Kindred, Bond…) : ils changent ce que chacun voit. Préférer l'option **robuste** (qui reste bonne si le coéquipier fait l'inverse de ce que tu crois).
- **Drill** : DR-16.

### 1.4 Très avancé (T-P04)

#### E-T01 · CROCHET · Hook trade sans valeur
- **Erreur** : décrocher alors que le tueur est proche en comptant sur « un trade » (lui accroche le sauveteur, l'allié repart), sans que le trade rapporte.
- **Pourquoi** : le trade semble « neutre ». Il ne l'est pas : un état de crochet de l'équipe est consommé, et le tueur a gagné du temps de trajet.
- **Punition** : l'équipe perd un état de crochet et ~30-60 s de gens (UNCERTAIN) sans gain ; le tueur avec des perks de crochet (Pain Resonance, Grim Embrace… vues dans le seed ch. 10) en tire en plus un effet.
- **Correction** : un trade est justifié **seulement** si l'allié va mourir sinon (fin de phase) ou s'il transfère le risque vers un survivant plus « riche » en états (0 crochet vs 2), idéalement avec une perk qui rend le trade favorable (Borrowed Time-type ; perks non revérifiées ici). Sinon, attendre ou distraire.
- **Drill** : DR-10, DR-19.

#### E-T02 · INFO · Ne pas mettre à jour sa perk deduction
- **Erreur** : jouer toute la partie comme si le tueur n'avait aucune perk, ou garder une hypothèse de perk infirmée.
- **Pourquoi** : le loadout du tueur est caché jusqu'à la fin (FACT, VERIFIED_PRIMARY 9.6.0) ; il faut le déduire.
- **Punition** : jouer un gen qui va exploser au prochain accrochage, rester dans une zone « tracée » par une perk d'aura, se faire surprendre en endgame.
- **Correction** : tenir un journal d'indices (effet observé → perk candidate → conséquence pratique) ; réviser à chaque nouvel indice ; vérifier à l'écran de fin. Toujours préparer la réponse la plus coûteuse à ignorer (ex. endgame : jouer comme si NOED était possible tant que des totems ternes restent).
- **Drill** : DR-07.

#### E-T03 · CHASE · Choisir le mauvais mode : loop contre « hold W »
- **Erreur** : boucler une tile contre un tueur qui y gagne (anti-loop, mobilité) ; ou fuir en ligne droite contre un M1 alors qu'une tile forte est à côté.
- **Pourquoi** : un seul mode appris.
- **Punition** : loop contre un tueur qui l'ignore = coup rapide ; hold W vers le vide contre un M1 = coup au bout de ~16 s pour 10 m d'avance (audit).
- **Correction** : le choix dépend de la **distance au contact** et du **type de tueur** : à grande distance contre un tueur lent à rattraper (4,4 m/s, pas de mobilité), tenir la distance le plus longtemps possible **vers** des ressources ; au contact contre un M1, boucler ; contre un tueur qui détruit les palettes, enchaîner les LOS. Le seed pose « hold W contre anti-loop » : vrai en tendance, faux contre un tueur à mobilité qui te rattrape en ligne droite (Blight, Nurse) — SITUATIONAL.
- **Drill** : DR-15, DR-13.

#### E-T04 · CHASE · Réagir à la première feinte (mindgame)
- **Erreur** : changer de côté au premier mouvement de caméra ou d'approche du tueur.
- **Pourquoi** : on veut « lire » le tueur trop vite.
- **Punition** : le tueur qui feinte (fausse avance, double-back) obtient le coup gratuitement ; à haut niveau, un survivant « prévisible dans sa réaction » est aussi exploitable qu'un survivant passif.
- **Correction** : ne s'engager qu'au **dernier moment sûr** (la plus longue attente possible sans perdre l'accès à la ressource) ; préférer les positions qui gardent deux options (voir la palette ET la fenêtre). Contre un tueur qui ne feinte jamais, cette prudence coûte peu. HYPOTHESIS : la lecture précoce est rentable contre un tueur inexpérimenté, coûteuse contre un bon — adapter après les 2-3 premières interactions.
- **Drill** : DR-05, DR-03.

#### E-T05 · MACRO · Casser la poursuite au mauvais moment
- **Erreur** : « perdre » le tueur parfaitement (cachette, casier, LOS) alors que l'équipe a besoin qu'il reste occupé ; ou au contraire rester visible alors que les autres sont en sécurité et que tu es à 2 crochets.
- **Pourquoi** : on optimise sa survie personnelle au lieu du temps d'équipe.
- **Punition** : le tueur libéré retourne aux gens / au crochet / vers un blessé ; l'équipe perd plus que ce que tu as sauvé.
- **Correction** : se poser la question « que fait le tueur si je disparais maintenant ? ». En bonne santé et avec crochets bas, rester « chassable » (sans donner de coup) est souvent plus utile ; blessé à 2 crochets avec un gen critique à finir ailleurs, disparaître est souvent mieux. SITUATIONAL par définition.
- **Drill** : DR-19, DR-17.

#### E-T06 · MACRO · Détecter le 3-gen trop tard
- **Erreur** : ne réaliser le 3-gen qu'à 3 gens restants.
- **Pourquoi** : aucune planification initiale (E-I06) ou plan non revu quand les gens tombent dans le désordre.
- **Punition** : défense très concentrée ; chaque retour du tueur sur la zone repousse un gen (kick −5 %, −0,25 c/s, FACT).
- **Correction** : à **4 gens restants**, vérifier la géométrie des 4 : lequel faire pour ne pas laisser un triangle serré ? Accepter de réparer un gen « moins confortable » pour casser le triangle. Si le 3-gen est acquis : forcer le tueur à épuiser ses 8 regression events par gen (FACT, VERIFIED_MULTI_SOURCE), réparer à 2 pour finir vite dès qu'il part, et garder les palettes de la zone.
- **Drill** : DR-09.

#### E-T07 · ENDGAME · Dernier survivant : trappe contre porte mal arbitrées
- **Erreur** : à 1 survivant, courir vers une porte sans plan ; ou chercher la trappe pendant que l'EGC s'écoule.
- **Pourquoi** : manque de scénario pré-appris.
- **Punition** : le tueur ferme la trappe (→ EGC 120 s, FACT) et garde la porte la plus proche ; 20 s d'ouverture (FACT) à découvert.
- **Correction** : avant d'être le dernier, savoir où sont les portes (et si une a de la progression, conservée : FACT) et la trappe probable ; une fois seul : si le tueur ferme la trappe, choisir la porte **la plus éloignée de lui**, ouvrir par étapes si nécessaire (progression conservée), utiliser le temps de trajet du tueur entre les deux portes. Le choix dépend du lieu des portes (carte) et de la position connue du tueur (SITUATIONAL).
- **Drill** : DR-11.

#### E-T08 · CHASE · Jouer les vaults « au pixel » contre la latence
- **Erreur** : attendre le tout dernier moment pour vaulter/poser en comptant sur ce que l'on voit à l'écran.
- **Pourquoi** : on croit que ce qu'on voit est la vérité serveur.
- **Punition** : le coup est validé côté client du tueur tant que sa connexion est bonne (FACT, VERIFIED_PRIMARY) ; la latence cumulée favorise le tueur (COMMUNITY_OBSERVATION) : « touché derrière la palette ».
- **Correction** : ajouter une marge temporelle (UNCERTAIN, dépend du ping) sur les actions serrées, surtout si le tueur semble avoir un ping élevé. Accepter que certains coups « injustes » fassent partie de l'équation et ne pas en tirer de mauvaises leçons en revue (piège de revue §4.4).
- **Drill** : DR-12, DR-19.

#### E-T09 · TILE · Garder une palette forte « pour plus tard » jusqu'à tomber avec
- **Erreur** : ne jamais poser la palette forte parce qu'« une bonne palette se garde » (règle absolue du seed : « une god pallet se garde »).
- **Pourquoi** : excès inverse du gaspillage.
- **Punition** : mise au sol à côté d'une palette debout = ressource inutilisée ET état perdu ; le tueur peut ensuite la casser en passant.
- **Correction** : une palette vaut ce qu'elle protège **maintenant** comparé à ce qu'elle protégera plus tard (probabilité qu'elle serve encore × valeur future). Blessé à 2 crochets, tu n'as pas de « plus tard » : pose-la. Sain en début de partie : la faire respecter longtemps est souvent mieux. Arbre T-Q01.
- **Drill** : DR-12.

#### E-T10 · COUNTER · Ne pas adapter son jeu aux add-ons observés
- **Erreur** : continuer le counterplay « de base » après avoir vu un signe d'add-on qui le rend faux (ex. Huntress : plus de 5 hachettes sans recharge, ou une hachette qui met au sol d'un coup — lot 4, UNCERTAIN).
- **Pourquoi** : on identifie le tueur, pas ses add-ons.
- **Punition** : tu comptes les munitions alors qu'il en a plus ; tu « tankes » un tir qui met au sol.
- **Correction** : pour chaque tueur, connaître les 2-3 signes d'add-ons qui changent la décision (fiches lot 4, section « Add-ons qui changent la décision ») et basculer de plan au premier signe.
- **Drill** : DR-06, DR-15.

#### E-T11 · SOIN · Mal gérer Deep Wound / soins sous pression d'un tueur à statut
- **Erreur** : laisser le timer de Deep Wound s'épuiser, ou faire le mending au mauvais endroit ; se soigner à plusieurs contre un tueur qui frappe plusieurs cibles.
- **Pourquoi** : on traite Deep Wound comme une blessure normale.
- **Punition** : à zéro, état mourant (FACT) ; un dégât sous Deep Wound = au sol même avec Endurance (FACT, VERIFIED_PRIMARY).
- **Correction** : le timer (20 s) est en pause en courant (FACT) : courir hors de la zone, puis mending hors de vue (10 s seul, 6 s par un allié, FACT). Contre Legion (lot 4 g2), éviter d'être groupé ; le mending à deux fait gagner 4 s mais expose deux survivants.
- **Drill** : DR-18, DR-15.

#### E-T12 · SWF · Callouts trop nombreux ou imprécis
- **Erreur** : parler en continu, donner des positions vagues (« il est là ! »), ne pas donner les états (crochets, gens %, palettes).
- **Pourquoi** : on confond « communiquer » et « informer ».
- **Punition** : l'équipe ne distingue plus l'essentiel ; décisions retardées ; bruit en pleine chase qui gêne l'audio du jeu.
- **Correction** : grammaire fixe (§3, DR-08) : **qui / quoi / où / état / intention**, en ≤ 5 mots pendant une chase ; le chaseur parle peu ; un seul joueur fait le point des gens toutes les minutes environ (HEURISTIC).
- **Drill** : DR-08.

**Total : 14 (débutant) + 13 (intermédiaire) + 11 (avancé) + 12 (très avancé) = 50 erreurs.** Couverture par tag principal : CHASE 10 · MACRO 10 · CROCHET 8 · TILE 7 · SOIN 4 · COUNTER 3 · ENDGAME 3 · INFO 3 · SOLOQ 2 · SWF 1 (E-A10 porte deux tags). Le counterplay tueur est aussi traité dans E-D08, E-A02, E-T03 ; la SoloQ dans E-I03, E-I04 (horloge HUD).

## 2. ARBRES DE DÉCISION (§32, T-Q01 → T-Q03)

Principe : un arbre ne donne pas « la » réponse ; il ordonne les **questions** dans l'ordre où elles changent la décision, et chaque feuille dit ce qu'elle achète, ce qu'elle risque et l'alternative. Tous les seuils de distance sont **UNCERTAIN** (aucune mesure officielle de portée de fente : l'audit ne donne qu'une estimation communautaire ~2 m de gain de fente, ~6 m de portée totale avec la hitbox, désaccord entre joueurs). L'ensemble est **HEURISTIC**.

### 2.1 T-Q01 — PALLET DECISION (arbre complet)

**Situation d'entrée** : tu es poursuivi et une palette debout est à ta portée (sur ta tile ou sur ton chemin).

**Les 5 feuilles** (+ 1 feuille « hors arbre ») :

| Feuille | Définition | Ce qu'elle achète | Risque principal |
|---|---|---|---|
| **PRE-DROP** | Poser la palette **avant** que le tueur soit à portée, sans chercher le stun | Distance sûre : il doit casser (2,34 s → ~9,4 m pour toi, CALC) ou contourner ; reset de sa Bloodlust s'il casse (FACT) | Palette consommée pour « peu » de temps si la tile est forte ; zone qui s'épuise |
| **TENIR** | Tourner autour de la palette **debout** et ne la poser que si le tueur s'engage dans la zone (stun possible) | Le maximum de temps par palette : le tueur doit respecter ; stun 2 s (FACT) + casse si le timing est bon | Coup si mauvais timing, feinte ou latence (E-T08) ; Bloodlust qui monte |
| **GREED** | Continuer la tile (un tour de plus, ou jouer une autre partie de la tile) en gardant la palette en réserve, au-delà du moment « sûr » | Palette gardée pour la suite ; le tueur perd du temps à tourner | Coup avec la palette debout (le pire résultat : état perdu ET ressource non utilisée) |
| **JOUER LA FENÊTRE** | Utiliser d'abord la fenêtre de la même tile (fast vault 0,5 s, FACT) | Temps gagné sans consommer de palette ; le tueur doit contourner (ou vaulter 1,7 s) | Blocage après ton 3e vault (30 s, FACT) ; ranged/mobilité qui punissent la réception prévisible |
| **QUITTER LA TILE** | Ne pas utiliser cette palette ; partir vers la ressource suivante (voir arbre 2.2) | Palette laissée à l'équipe / pour plus tard ; évite une tile où le tueur gagne | Traversée exposée si le départ n'est pas calé sur un événement |
| *(hors arbre)* PRENDRE LE COUP | Tu n'atteindras pas la palette avant le coup : ce n'est plus une décision de palette | Boost 1,8 s (FACT) + cooldown du tueur 2,7 s (FACT) pour atteindre une ressource | Perdre un état ; si blessé → au sol |

**L'arbre** (lire de haut en bas ; une réponse peut suffire à trancher, sinon on descend) :

```
T-Q01  PALLET DECISION
│
├─ Q1. Atteindras-tu la palette avant que le tueur soit à portée de fente ?
│   ├─ NON (il est déjà sur toi) ──────────────► PRENDRE LE COUP (hors arbre)
│   │     sauf : palette à 1-2 pas ET un coup = mise au sol critique → poser immédiatement (stun de réaction)
│   ├─ DE JUSTESSE ───────────────────────────► Q2 (GREED exclu)
│   └─ LARGEMENT ─────────────────────────────► Q2
│
├─ Q2. Le tueur peut-il ignorer ou annuler cette palette ?
│   ├─ Casse instantanée par pouvoir disponible (Demogorgon, Oni Fury, Blight, Mastermind,
│   │   Knight garde, Good Guy, Lich, Dark Lord loup…)       ─► PRE-DROP tôt (force détour/pouvoir)
│   │                                                          ou QUITTER ; jamais TENIR/GREED
│   ├─ Tueur à distance avec LOS sur toi (Huntress, Deathslinger, Trickster…)
│   │                                                        ─► JOUER LA FENÊTRE/LOS ou QUITTER vers
│   │                                                          murs hauts ; PRE-DROP seulement si la palette
│   │                                                          coupe aussi la LOS
│   ├─ Mobilité qui franchit/contourne vite (Nurse, Blight…)  ─► palette = faible valeur ; LOS et
│   │                                                          imprévisibilité ; PRE-DROP rarement utile
│   ├─ Pouvoir anti-loop bientôt prêt (Q2 « quand » : UNCERTAIN selon tueur)
│   │                                                        ─► PRE-DROP avant qu'il revienne
│   └─ M1 / pouvoir indisponible ───────────────────────────► Q3
│
├─ Q3. Combien te coûte un coup ? (santé × statuts × crochets)
│   ├─ Sain, 0-1 crochet ─────────────► marge : TENIR / GREED / FENÊTRE ouverts ─► Q4
│   ├─ Endurance (décroché < 10 s) ───► un coup = Deep Wound, pas au sol (FACT) : marge d'un coup ─► Q4
│   ├─ Blessé, 0-1 crochet ───────────► coup = au sol = 1 crochet : GREED exclu, TENIR prudent ─► Q4
│   ├─ Blessé à 2 crochets (dead on hook) ou Exposed ou Deep Wound
│   │                                  ─► PRE-DROP (sauf Q5 : tile suivante plus forte atteignable
│   │                                     → QUITTER sur événement)
│   └─ Sain à 2 crochets ────────────► un coup n'est pas mortel mais rapproche la mort : TENIR prudent ─► Q4
│
├─ Q4. Que vaut CETTE ressource ?
│   ├─ La tile a une fenêtre non bloquée pour toi ─► JOUER LA FENÊTRE d'abord (la palette reste)
│   ├─ Palette « forte » (il ne peut pas te toucher en tournant sans que tu la poses) ─► TENIR
│   ├─ Palette « mindgame » (il peut te lire / couper) ─► TENIR avec départ tôt, ou PRE-DROP si Q3 serré
│   └─ Palette faible / filler ─► PRE-DROP (pour la distance) ou QUITTER si la suivante est proche
│
├─ Q5. Loop suivant disponible ? (voir 2.2 pour le calcul en secondes)
│   ├─ Oui, fort et atteignable ──────► QUITTER (après un événement) ; pre-drop pour partir si besoin
│   ├─ Oui, mais faible ou déjà épuisé ─► rester : TENIR plus longtemps ici
│   └─ Non (dead zone derrière) ──────► maximiser le temps ICI : TENIR ; ne pas PRE-DROP trop tôt
│                                        (après la palette, il n'y a plus rien)
│
├─ Q6. Bloodlust (secondes depuis le début de chase ou le dernier coup/casse/pouvoir)
│   ├─ < 15 s ───► aucune pression
│   ├─ 15-35 s ──► la pose + casse remet à zéro (FACT) : PRE-DROP / stun deviennent plus rentables
│   └─ ≥ 35 s ───► +0,6 m/s (FACT) : sur tile moyenne/faible, poser ou quitter maintenant
│
├─ Q7. Que fait l'équipe ? (valeur d'une seconde de chase, §0.3)
│   ├─ 3 coéquipiers sur des gens séparés, loin ─► chaque seconde ≈ 1/30 gen : allonger (TENIR, FENÊTRE),
│   │                                              accepter de consommer la palette pour des secondes
│   ├─ Coéquipiers au crochet / en soin / sans gen ─► la chase rapporte peu : économiser (QUITTER, GREED
│   │                                              seulement si sûr), durer par le mouvement
│   ├─ Un gen à 99 %/presque fini, ou portes proches ─► quelques secondes suffisent : PRE-DROP accepté
│   └─ Zone = futur 3-gen ou dernières palettes de la carte ─► garder : QUITTER / FENÊTRE en priorité
│
├─ Q8. Ressources restantes (palettes de la zone, de la carte ; ta perk d'Exhaustion)
│   ├─ Beaucoup ─► PRE-DROP moins coûteux
│   └─ Peu ─────► chaque palette compte : TENIR/FENÊTRE ; perk d'Exhaustion pour QUITTER
│
├─ Q9. Perks et add-ons suspectés (deduction, DR-07)
│   ├─ Enduring (stun −40/45/50 %, FACT) ─► le stun rapporte moins : PRE-DROP > stun tardif
│   ├─ Bamboozle (fenêtre bloquée 8/12/16 s pour tous, FACT) ─► FENÊTRE moins fiable : palette/QUITTER
│   └─ Perk qui punit la casse ou la pose (non vérifiée ici) ─► pondérer
│
└─ Q10. Phase de partie
    ├─ Portes alimentées / EGC ─► le temps restant du tueur est court : PRE-DROP généreux, tout pour sortir
    ├─ Dernier survivant ─► chaque palette = dernière chance ; pas de « plus tard » pour l'équipe
    └─ Début de partie ─► la zone servira encore : éviter le PRE-DROP gratuit
```

**Pourquoi cet ordre** (HEURISTIC) : Q1-Q2 éliminent les cas où la palette n'est pas une vraie option ; Q3 fixe ta tolérance au risque (une erreur à 2 crochets coûte un joueur, pas un état) ; Q4-Q5 comparent cette ressource aux suivantes ; Q6 introduit le coût du temps pour toi ; Q7-Q10 convertissent tout en valeur d'équipe. En jeu, Q1-Q3 doivent être **pré-calculées** avant d'arriver sur la tile (DR-12), sinon la décision arrive trop tard.

**Justification de chaque feuille — quand elle est correcte, quand elle est fausse**

| Feuille | Correcte quand… | Fausse quand… | Alternative si doute |
|---|---|---|---|
| PRE-DROP | tile faible ; tueur anti-loop/casse instantanée ; tu es blessé à 2 crochets / Exposed / Deep Wound ; Bloodlust ≥ 25-35 s ; Enduring suspecté ; fin de partie | tile forte en début de partie, sain ; dead zone derrière (tu brûles ta dernière ressource) ; tueur qui contourne au lieu de casser et te rattrape de l'autre côté | TENIR prudemment, quitter au premier signe d'engagement |
| TENIR | palette forte ; tueur M1 sans pouvoir prêt ; tu vois le tueur (ou sa red stain) ; dead zone derrière ; équipe sur les gens | tu ne vois pas le tueur ; latence élevée ; tueur qui feinte bien (tu te fais lire) ; casse instantanée | PRE-DROP |
| GREED | sain (ou Endurance), grande avance, tueur visible, tueur M1, équipe sur les gens, palettes rares | blessé ; tueur ranged ou pouvoir prêt ; Bloodlust haute ; tu ne vois pas le tueur | TENIR (pose au premier engagement) |
| JOUER LA FENÊTRE | fenêtre non bloquée pour toi (< 3 vaults), approche droite possible (≥ 2,5 m, FACT), tueur M1 | ranged avec LOS sur la réception ; Bamboozle ; tu arrives en angle (medium 0,9 s) ; 3e vault déjà fait | palette (TENIR/PRE-DROP) ou QUITTER |
| QUITTER LA TILE | palette faible et tile suivante forte atteignable ; zone à préserver (3-gen, dernières palettes) ; un événement te donne de l'avance | aucun événement (tueur au contact) ; dead zone entre les deux ; blessé à 2 crochets sans perk | PRE-DROP puis quitter sur la casse |

**Cas combinés fréquents** (tous HEURISTIC ; « → » = feuille privilégiée, entre parenthèses l'alternative)

| # | Contexte | Décision | Pourquoi |
|---|---|---|---|
| 1 | Sain, 0 crochet, début de partie, tueur 4,6 M1, shack avec fenêtre libre | → FENÊTRE puis TENIR (GREED si grande avance) | Gagner du temps sans consommer ; la zone servira encore |
| 2 | Blessé, 2 crochets, tueur M1, palette moyenne, tile suivante lointaine | → PRE-DROP (TENIR si tu vois clairement le tueur loin) | Un coup = mort probable ; la palette ne vaut plus rien si tu tombes |
| 3 | Sain, tueur à casse instantanée (ex. Demogorgon), Shred probablement prêt | → PRE-DROP tôt ou QUITTER | La palette debout ne se « respecte » pas ; poser tôt force le détour ou l'usage du pouvoir (qui coupe la Bloodlust, FACT) |
| 4 | Huntress, tu es dans une tile basse, elle a une hachette armée et la LOS | → QUITTER vers murs hauts (FENÊTRE seulement si la réception est cachée) | La palette ne bloque pas un tir ; la LOS est la vraie ressource (lot 4) |
| 5 | Sain, 30 s de chase, Bloodlust palier 2, tile moyenne, 3 coéquipiers sur les gens | → PRE-DROP (ou stun si engagement) | Reset de Bloodlust par la casse + ~15 s de rattrapage (CALC) ; chaque seconde ≈ 1/30 gen |
| 6 | Sain, coéquipiers au crochet et en soin, zone = 3 derniers gens | → QUITTER / hold W, garder les palettes | La chase rapporte peu maintenant ; ces palettes vaudront plus pendant le 3-gen |
| 7 | Endurance (décroché depuis 3 s), tueur revient, palette faible | → PRE-DROP ou QUITTER ; ne pas « tanker » sans but | Un coup = Deep Wound (FACT) : utile si tu protèges quelqu'un, sinon il te met en compte à rebours |
| 8 | Portes alimentées, 1 gen déjà au 99 inutile, tu es blessé à 1 crochet près d'une porte | → PRE-DROP généreux | Le tueur n'a plus que la fin de partie : chaque seconde vers la porte compte |
| 9 | Enduring suspecté (stuns courts vus), palette moyenne | → PRE-DROP > TENIR pour stun | Le stun rapporte −40 à −50 % (FACT) ; la casse, elle, reste 2,34 s |
| 10 | Tu ne vois pas le tueur (Undetectable, pas de red stain) | → PRE-DROP si blessé ; sinon FENÊTRE/QUITTER, pas de GREED | Sans info, les feuilles qui exigent la lecture (TENIR, GREED) s'effondrent |

### 2.2 T-Q01b — QUITTER LA TILE (arbre)

**Question de départ** : « si je reste un tour de plus, le tueur peut-il me toucher ? » (le « test des 5 secondes » du seed est une bonne formulation, à condition de savoir **où** aller).

```
T-Q01b  QUITTER LA TILE ?
│
├─ R1. La tile a-t-elle encore une ressource que CE tueur doit respecter ?
│   ├─ Non (palette cassée ET fenêtre bloquée pour toi / sans intérêt contre ce pouvoir) ─► doit partir ─► R3
│   └─ Oui ─► R2
│
├─ R2. Le tueur a-t-il trouvé la solution ?
│   (se poste au centre, coupe systématiquement, Bloodlust ≥ 25-35 s, pouvoir prêt qui annule la tile)
│   ├─ Oui ─► partir ─► R3
│   └─ Non ─► RESTER (encore un cycle) et reposer R2 à chaque tour
│
├─ R3. Un événement te donne-t-il de l'avance MAINTENANT ?
│   ├─ Il casse une palette ─────────► ~2,34 s → ~9,4 m (CALC)          ─► QUITTER MAINTENANT
│   ├─ Stun ─────────────────────────► 2 s (moins avec Enduring) → ~8 m ─► QUITTER MAINTENANT (ou casse ensuite)
│   ├─ Il vault une fenêtre ──────────► 1,7 s → ~6,8 m (CALC)           ─► QUITTER MAINTENANT
│   ├─ Tu viens d'être touché ────────► boost 1,8 s + son cooldown 2,7 s ─► QUITTER MAINTENANT (ne pas vaulter tout de suite)
│   ├─ Il utilise/rate son pouvoir ───► selon le tueur (UNCERTAIN)       ─► QUITTER souvent
│   ├─ Il perd la LOS (tile à murs hauts) ─► partir hors de sa ligne ; changer de direction
│   └─ Aucun événement ──────────────► R4
│
├─ R4. Pas d'événement : peux-tu en créer un ?
│   ├─ PRE-DROP la palette restante puis partir sur la casse / le détour
│   ├─ Vault (fenêtre) qui l'oblige à contourner, puis partir
│   ├─ Perk d'Exhaustion (si elle mène à une ressource, pas au vide)
│   └─ Rien ─► R5
│
├─ R5. Où aller ? (calcul en secondes, CALC indicatif)
│   Temps de trajet t = d / 4,0 (d en m). Avance à l'arrivée ≈ g − Δv·t
│   (g = avance au départ ; Δv = 0,6 m/s tueur 4,6 ou 0,4 m/s tueur 4,4, + Bloodlust).
│   Si l'avance à l'arrivée reste > portée de fente (≈ 2 m + hitbox, UNCERTAIN) → trajet sûr.
│   Exemple : g ≈ 9,4 m (casse), tueur 4,6, pas de Bloodlust : trajet sûr jusqu'à t ≈ 12 s,
│   soit d ≈ 49 m EN LIGNE DROITE — dans la réalité, pathing, fente et Bloodlust réduisent
│   fortement ce chiffre : le traiter comme un plafond, pas comme une règle.
│   ├─ Tile suivante atteignable avec marge ─► QUITTER vers elle
│   ├─ Seulement une tile faible ─► QUITTER et PRE-DROP là-bas, ou rester ici un cycle de plus
│   └─ Rien d'atteignable (dead zone) ─► RESTER et jouer le temps ici (LOS, obstacles, 360 contre M1)
│                                        ou accepter le coup en le rendant le plus tardif possible
│
└─ R6. Filtre équipe : ta sortie mène-t-elle le tueur vers les gens actifs / le crochet / un blessé ?
    ├─ Oui ─► choisir une autre direction même un peu moins bonne (E-I13)
    └─ Non ─► go
```

**Feuilles et justification**
- **RESTER encore un cycle** : la tile tient encore et partir sans événement donnerait un coup dans le dos. Risque : Bloodlust ; alternative : préparer le départ (regarder la sortie pendant le cycle).
- **QUITTER MAINTENANT (sur événement)** : c'est le seul moment où la traversée ne coûte rien ; risque : tueur qui ne casse pas mais contourne (lecture : s'il n'est pas en animation de casse, l'événement n'existe pas).
- **PRE-DROP puis QUITTER** : transforme une palette faible en ~9 m d'avance ; risque : il contourne au lieu de casser (tile courte) ; alternative : vault.
- **PRENDRE LE COUP puis QUITTER** : acceptable **sain** quand aucune autre option n'existe ; le boost et le cooldown donnent le meilleur départ possible ; interdit à 2 crochets blessé.
- **RESTER faute de mieux** : dead zone autour ; le temps gagné ici (même 5-10 s) vaut plus qu'une fuite perdue d'avance.

### 2.3 Autres arbres (versions courtes, à développer au lot 9)

**T-Q02 — Sauvetage (qui, quand)**
1. Où est le tueur ? — au crochet (< 16 m) / en chase ailleurs / inconnu. En chase ailleurs → fenêtre de sauvetage. Au crochet → Q2. Inconnu → approcher hors LOS, vérifier TR/red stain.
2. Combien reste-t-il dans la phase ? (70 s, FACT) — beaucoup → attendre qu'il parte ou que l'anti-camp agisse (< 16 m seulement) ; peu → sauvetage même risqué, ou trade **justifié** (E-T01).
3. Qui y va ? — celui dont l'absence coûte le moins (pas en chase, gen non critique, 0 crochet, sain) **et** qui arrivera à temps. SoloQ : si quelqu'un y va déjà (HUD, Kindred), rester ; vérifier 10-15 s plus tard.
4. Après le décrochage : sauveteur entre tueur et décroché, directions différentes, pas de soin sur place (E-D10, E-A06).
Feuilles : SAUVER MAINTENANT · ATTENDRE (réparer en surveillant) · DISTRAIRE (SWF : un qui se montre, un qui décroche) · TRADE assumé · NE PAS SAUVER (fin de partie où le sauvetage coûte la sortie de deux survivants — rare, SITUATIONAL).

**T-Q03 — Soin**
1. Le tueur a-t-il un coup unique / Exposed fréquent ? oui → soin de faible valeur.
2. Un gen proche est-il à ≥ 80 % ? oui → finir le gen d'abord.
3. Une chase contre toi est-elle probable bientôt ? (tu es le plus proche du tueur, tu viens d'être décroché) oui → le soin vaut plus.
4. Coût : 16 s × 2 survivants (≈ 0,36 gen) ; med-kit ou pas ; Mangled (+25 % de durée, FACT).
5. Où ? hors de la zone du tueur, hors LOS, pas sous le crochet.
Feuilles : SOIGNER MAINTENANT · SOIGNER PLUS TARD (après le gen) · NE PAS SOIGNER (jouer blessé en connaissant ce coût) · MENDING SEULEMENT (Deep Wound).
