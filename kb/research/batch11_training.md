# Lot 11 — Erreurs, arbres de décision, drills, programme, mesure (vue SURVIVANT)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) — voir kb/audit/pass14_lot11_training.md**
> (Toujours non sourcé par des experts : aucune VOD, aucun coach lu. Les corrections d'audit sont marquées « [audit P14] ».)

- Périmètre (mission) : §17 MISTAKE DATABASE · §32 DECISION TREES · §33 DRILLS · §34 PLAN D'ENTRAÎNEMENT · §35 SYSTÈME DE MESURE · taxonomie T-P01→T-P04, T-Q01 (+ T-Q02/T-Q03 en version courte), T-R01→T-R04 (méthode de revue de ses propres parties).
- Référence de version : **LIVE 10.1.2a** (17/09/2026). Le **PTB 10.2.0** (Survivor Intent System, refonte d'Abandon, 58 perks modifiées) **n'est pas LIVE** : rien ici n'en dépend ; les points qu'il pourrait changer sont signalés « à revoir après 10.2.0 ».
- Sources utilisables : `kb/seed/audit_phase0.txt` (« audit phase 0 », seules valeurs présentées comme FACT, avec leur confiance) ; `kb/research/batch4_killers_g*.md` (exemples par tueur, eux-mêmes non re-vérifiés) ; le seed (`kb/seed/ch0_2.txt`, `ch4_7.txt`, `ch10_14.txt`) est **critiqué, pas recopié**. `kb/deliverables/PERK_DEDUCTION.md` n'existait pas à la rédaction ; il existe depuis (lot 3, PARTIALLY_VERIFIED) et n'a pas été relu pour ce lot [audit P14].
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
| Anti-camp | Zone de **16 m** ; rien ne se remplit au-delà ; poids par distance 4 m ×2,5 / 10 m ×1 / 15 m ×0,375 / 16 m ×0 ; ×2 après 10 s, ×4 après 20 s de présence ; grâce de 7 s à chaque nouvel accrochage ; ralenti par les autres survivants à < 16 m ; désactivé portes alimentées ; **taux de base inconnu** depuis 9.3.0 (CONFLICT-003) | VERIFIED_MULTI_SOURCE (16 m) / STRONG_SECONDARY (poids) / VERIFIED_PRIMARY (9.3.0) / UNCERTAIN (taux de base) [audit P14] |
| Auto-décrochage | Seulement à 2 survivants restants ou via offrande/perk (9.0.0) ; à 2 survivants, laisser passer 2 skill checks de lutte = mort, et **tous les survivants restants accrochés en même temps = sacrifice** (9.1.0) | VERIFIED_PRIMARY / STRONG_SECONDARY |
| Soin | 1 état de santé = **16 s** (+1 c/s) ; Mangled −20 % de vitesse (= +25 % de durée) ; nombre max de soigneurs : 2 selon le wiki, 3 selon le seed (CONFLICT-001) | STRONG_SECONDARY / UNCERTAIN (soigneurs) |
| Deep Wound | 20 s ; mending 10 s seul, 6 s par un allié ; un dégât sous Deep Wound = au sol | VERIFIED_PRIMARY (8.6.0) |
| Au sol | Bleed-out 240 s ; récupération auto jusqu'à 95 % en 30,4 s (« à l'arrêt » selon le wiki) | STRONG_SECONDARY / VERIFIED_MULTI_SOURCE |
| Vitesses | Survivant 4,0 m/s ; tueurs 4,6 ou 4,4 m/s (Nurse 3,85) ; tueur portant 3,68 m/s | VERIFIED_MULTI_SOURCE / STRONG_SECONDARY |
| Boost au coup | 1,8 s (×1,65 selon le wiki) ; cooldown tueur 2,7 s après un coup réussi, 1,5 s après un raté | VERIFIED_PRIMARY (durée) / VERIFIED_MULTI_SOURCE (2,7 s) |
| Fenêtres | Fast 0,5 s (garde l'élan, bruyant) · medium 0,9 s · slow 1,5 s ; fast vault = ≥ 2,5 m de course droite ; tueur 1,7 s ; bloquée **30 s pour toi** après ton 3e vault de la même fenêtre dans la même poursuite | STRONG_SECONDARY |
| Palettes | Stun 2 s (seulement palette abaissée à ~50 %) ; casse **2,34 s** ; tronçonneuse 1 s ; vault de palette 1,1 s / 2 s ; Enduring −40/45/50 % | VERIFIED_MULTI_SOURCE (2,34 s) / STRONG_SECONDARY |
| Casse instantanée par pouvoir | Demogorgon, Oni (Blood Fury), Blight, Mastermind, Knight (gardes), Good Guy, Lich, Dark Lord (loup), Ghoul (add-on), Legion (add-on) — liste à reconfirmer | STRONG_SECONDARY |
| Bloodlust | +0,2 / +0,4 / +0,6 m/s à 15 / 25 / 35 s de poursuite ; perdue si le tueur casse une palette, touche, ou utilise son pouvoir (**pour les pouvoirs listés par le wiki** : pas une règle universelle ; Krasue Head Form exclue de la Bloodlust depuis 9.2.0) ; effet d'un stun : non documenté | VERIFIED_MULTI_SOURCE / STRONG_SECONDARY / UNCERTAIN [audit P14] |
| Poursuite | Début : survivant visible à ≤ 12 m, qui court, tueur qui marche. Fin : > 18 m, 5 s en casier, LOS perdue > 8 s, ou hors de ± 35° du centre de vision | STRONG_SECONDARY |
| Red stain | Émise par la tête du tueur, dans la direction où il regarde ; masquée par Undetectable ; marcher à reculons trompe le survivant | STRONG_SECONDARY |
| Griffures | Durée de vie 10 s | STRONG_SECONDARY |
| Corbeaux AFK | 80 / 100 / 120 s d'inactivité | VERIFIED_PRIMARY (9.3.0) |
| Exhausted | Ne récupère pas en courant | STRONG_SECONDARY |
| Totems | Purification 14 s ; Boon 14 s (28 s sur un Hex) | STRONG_SECONDARY |
| Fin de partie | Porte : 20 s, progression conservée ; EGC 120 s, moitié de vitesse si quelqu'un est au sol/accroché ; trappe : ouverte à 1 survivant restant | STRONG_SECONDARY |
| Mori de fin | Possible à 2 survivants vivants (l'un accroché en Struggle, l'autre au sol) | VERIFIED_PRIMARY (9.0.0) |
| Match Details (9.6.0) | Loadouts des coéquipiers visibles ; tueur révélé dès qu'un survivant entre en poursuite ou perd un état ; **loadout du tueur caché jusqu'à la fin** | VERIFIED_PRIMARY |
| Validation des coups | Si la connexion du tueur est bonne, le coup est décidé par **son client** ; si elle est mauvaise, le serveur peut rejeter un coup trop lointain ; la latence cumulée favorise le tueur ; validation événementielle rapportée pour les stuns de palette (non officiel) | VERIFIED_PRIMARY (principe) / COMMUNITY_OBSERVATION (détails) [audit P14 : formulation corrigée] |
| HUD survivant (icônes d'action des coéquipiers, jauge de crochet) | Utilisé partout en SoloQ dans ce fichier, mais **son contenu exact n'est pas documenté par l'audit** (question ouverte n° 38 de l'audit) | UNCERTAIN [audit P14] |

### 0.3 Économie en secondes (CALC, à réutiliser dans toutes les sections)

- **Valeur d'une seconde de poursuite** = nombre de charges produites ailleurs pendant cette seconde. Trois coéquipiers chacun sur un gen différent → 3 c/s → **1/30 de gen par seconde** (audit, A-267 : le seed disait « 1/3 de gen », FAUX). Trois coéquipiers sur le même gen → ~2,1 c/s. Coéquipiers qui soignent, se cachent ou marchent → 0 c/s.
  - Conséquence : 60 s de poursuite avec 3 réparateurs séparés ≈ 180 charges ≈ **2 équivalents-gen** (plafond théorique : 100 % d'efficacité, sans trajets, skill checks ratés ni régression ; le lot 6 utilise une efficacité de ~0,8, HYPOTHESIS). Ces charges sont réparties sur 3 gens : **il se peut qu'aucun gen ne soit terminé** pendant la chase (3 × 60 charges = 3 gens aux deux tiers) [audit P14]. 60 s de poursuite pendant que l'équipe se soigne ≈ 0 gen. La durée de chase seule ne dit donc presque rien (voir §35).
  - Limite du raisonnement (HYPOTHESIS) : c'est une valeur **brute**, pas contrefactuelle : si tu n'étais pas poursuivi, le tueur mettrait la pression sur quelqu'un d'autre, et une partie de ces charges serait produite quand même.
- **Coût d'une palette cassée pour le tueur** : 2,34 s immobile → le survivant gagne ~9,4 m (4,0 × 2,34). Pour refermer 9,4 m à 0,6 m/s (tueur 4,6) il faut ~15,6 s ; à 0,4 m/s (tueur 4,4) ~23,4 s. CALC sans fente, sans Bloodlust, en ligne droite : c'est un plafond théorique, pas une valeur de jeu. L'audit donne pour 10 m d'avance ≈ 16,3 s / 21,7 s avec Bloodlust et ≈ 12-13 s / 17-18 s avec une fente de 2-2,5 m (valeur communautaire).
- **Coût d'un stun** : 2 s de gel du tueur (moins avec Enduring) **puis**, souvent, 2,34 s de casse ou un détour.
- **Coût d'un soin** : 16 s pour le soigné + 16 s pour le soigneur = 32 « secondes-survivant » ≈ 32 charges si les deux auraient réparé seuls ≈ **0,36 gen** (s'ils auraient réparé ensemble à 85 % chacun : ~27 charges ≈ 0,3 gen ; + trajets non comptés). Un soin n'est rentable que si l'état sain rapporte plus (typiquement : une poursuite qui tient un coup de plus, ≥ 10-20 s gagnées) — HEURISTIC ; le lot 9 (§2.10) estime le gain d'un état à 15-30 s de chase (HYPOTHESIS), donc un soin est **proche de l'équilibre** et c'est le contexte qui tranche.
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
- **Punition** : terrain ouvert = le tueur 4,6 m/s rattrape 0,6 m/s ; une avance de 10 m tient ~16 s (audit, avec Bloodlust, sans fente), **~12-13 s si l'on compte une fente de 2-2,5 m** (audit, valeur communautaire), avant le coup ; ensuite plus rien à jouer. Contre un tueur à pouvoir de distance ou de mobilité, beaucoup moins (lot 6 §2.3).
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
- **Punition** : chaque raté = −10 % (9 charges ≈ 9 s solo) + 3 s sans progression (FACT, STRONG_SECONDARY) ≈ **12 s perdues** en solo (CALC ; à plusieurs, les 3 s bloquent tous les réparateurs du gen), plus une notification de bruit qui révèle ta position (la notification de raté est une connaissance courante, non recoupée par l'audit).
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
- **Correction** : la phase dure 70 s : il y a presque toujours le temps d'attendre que le tueur **s'engage ailleurs** (chase lancée, TR qui s'éloigne, icône de chase d'un coéquipier en SoloQ). Décrocher tôt n'est correct que si le tueur est clairement parti ou si la phase est presque finie. Arbre T-Q02 (§2.3).
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
- **Correction** : consulter les loadouts des coéquipiers **avant/début de partie** (visibles depuis 9.6.0, FACT VERIFIED_PRIMARY) : qui a Kindred, We'll Make It, Borrowed Time, une lampe… ; puis lire le HUD à chaque changement d'état (accrochage, mise au sol). Heuristique SoloQ : « si un coéquipier plus proche et déjà en mouvement va au crochet, reste sur ton gen », mais vérifie 10-15 s plus tard qu'il y va vraiment. Limite [audit P14] : le détail des icônes du HUD (action en cours de chaque coéquipier) n'est pas vérifié par l'audit (UNCERTAIN) : ce que tu peux lire exactement est à confirmer en jeu. Au PTB 10.2.0, le Survivor Intent System pourrait changer cette entrée (non LIVE).
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
- **Punition** : à 4 sur un gen, ~40,9 s pour 90 charges, soit ~2,2 c/s contre 4 c/s si chacun réparait seul (FACT, STRONG_SECONDARY) → l'équipe produit ~45 % de moins (CALC : 2,2 / 4 = 0,55). Et un seul passage du tueur touche tout le monde.
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
- **Punition** : l'équipe perd un tiers de gen par soin ; contre un tueur à coup unique (Hillbilly, Cannibal, Oni en Fury, Huntress avec Iridescent Head…), l'état sain rapporte **moins** (mais pas rien : ces tueurs frappent aussi en M1 — SITUATIONAL selon qu'il joue pouvoir ou M1, lot 9 §2.10) ; le tueur qui revient pendant le soin trouve deux cibles.
- **Correction** : soigner quand l'état sain **fait gagner plus de temps qu'il n'en coûte** : poursuite probable bientôt contre un tueur M1, gens proches de la fin (tu seras chassé), Mangled/Broken absents, med-kit disponible, **2 survivants restants** (lot 9 : soin presque toujours rentable, le tueur n'a plus d'autre cible). Ne pas soigner (ou reporter) : quand le tueur joue surtout ses coups uniques, quand un gen est à ~70-80 %+ (le finir d'abord ; seuil HEURISTIC, le lot 9 dit ~70 %), quand le tueur arrive. Excès inverse (§26) : ne **jamais** soigner rend chaque chase suivante plus courte d'un palier — l'objectif n'est pas « 0 soin » mais « 0 soin sans raison ». Nuance contre le seed (« soignez vite contre Plague ») : contre la Plague, le choix entre se purifier à une fontaine (qui lui rend Corrupt Purge) et rester malade est SITUATIONAL (lot 4 g2).
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
- **Correction** : partir vers le crochet de manière à **arriver** pendant une fenêtre sûre, et au plus tard ~10-15 s avant la fin de phase (marge UNCERTAIN, selon la distance). Compter la phase : 70 s (FACT). En SoloQ, la jauge du crochet visible au HUD sert d'horloge (connaissance courante ; contenu du HUD non détaillé par l'audit). Si le tueur campe à < 16 m, l'anti-camp remplit la jauge (×2 après 10 s, ×4 après 20 s, FACT), **mais d'autant plus lentement qu'il est loin** (×2,5 à 4 m, ×1 à 10 m, ×0,375 à 15 m, STRONG_SECONDARY), avec 7 s de grâce à chaque nouvel accrochage et un ralentissement si d'autres survivants sont à < 16 m ; le taux de base est inconnu (CONFLICT-003), donc **le temps de libération n'est pas calculable** [audit P14]. Attendre l'anti-camp est une option raisonnable contre un face camp **très proche** ; contre un tueur qui reste à 10-15 m, la jauge peut ne pas se remplir avant la fin de la phase (HYPOTHESIS) : ne pas en faire un plan par défaut.
- **Drill** : DR-10, DR-17 (comptage).

#### E-I05 · CROCHET · Faire prendre les risques au survivant à 2 crochets (mauvaise gestion du hook stage)
- **Erreur** : le survivant déjà en « dead on hook » (2 accrochages) prend la chase, fait le sauvetage risqué ou le body block.
- **Pourquoi** : chacun joue « sa » partie ; on ne compte pas les états des autres.
- **Punition** : l'équipe perd un joueur entier au lieu d'un état ; les portes ne s'alimentent qu'après « nombre de survivants **au départ** + 1 » gens (FACT, STRONG_SECONDARY), donc toujours 5 gens à faire à 3 survivants, avec un réparateur de moins.
- **Correction** : répartir les risques selon les états : **quand c'est possible**, le survivant à 0 crochet prend les sauvetages et les poursuites « de protection » ; celui à 2 crochets joue les gens éloignés du tueur et évite les zones de sauvetage. Exceptions (SITUATIONAL) : en fin de partie (portes alimentées), un survivant à 2 crochets bien placé peut être le meilleur sauveteur si c'est le seul à pouvoir arriver à temps ; si le survivant à 2 crochets est de loin le meilleur looper, lui laisser la chase peut rester correct (lot 9 §2.4). À 2 survivants restants, un trade qui fait accrocher les deux en même temps = sacrifice des deux (FACT 9.1.0).
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
- **Correction** : soit rester ≥ 4,5 s (solo ; ~2,6 s à 2), soit ignorer ce gen s'il est trop exposé. Régression = −5 % au coup de pied puis −0,25 c/s (FACT) : un gen frappé puis laissé 20 s perd ~4,5 + 5 = **~9,5 charges** (CALC corrigé [audit P14] : l'ancienne version oubliait les −5 % du coup de pied) ; 60 s → ~19,5 charges (lot 9) ; parfois moins cher que s'exposer.
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
- **Correction** : l'anti-camp n'agit qu'à < 16 m (FACT, VERIFIED_MULTI_SOURCE), faiblement près de 16 m (×0,375 à 15 m, STRONG_SECONDARY) et ralentit si d'autres survivants sont proches. Contre un proxy camp : soit réparer **en sachant** que l'allié va perdre sa phase (tempo gagné pour l'équipe), soit organiser un sauvetage (un sauveteur + une distraction en SWF). Choix SITUATIONAL : nombre de gens restants, état de crochet de l'allié.
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

#### E-I14 · MACRO · Quitter le gen trop tard (ou trop tôt) à l'approche du tueur [ajout audit P14]
- **Erreur** : rester sur le gen jusqu'à voir le tueur (début de chase à courte distance, sans avance) ; ou, à l'inverse, lâcher le gen au premier battement de cœur alors que le tueur ne vient pas vers toi.
- **Pourquoi** : on veut « finir le skill check / le pourcentage » ; ou peur réflexe du TR.
- **Punition** : trop tard : la chase commence au contact, sans avance et souvent sans route préparée (E-D03) ; trop tôt : chaque départ inutile coûte le trajet aller-retour et la progression de coop des autres.
- **Correction** (HEURISTIC) : comparer **temps pour finir** (charges restantes / débit : 1 ; 1,7 ; 2,1 ; 2,2 c/s, FACT) et **temps d'arrivée du tueur** (CALC lot 9 §2.11 : un tueur 4,6 m/s qui entre dans un TR de 32 m t'atteint en ~7 s s'il vient droit sur toi ; TR 32 m = valeur historique avec beaucoup d'exceptions, STRONG_SECONDARY). Si tu ne finis pas avant son arrivée, partir **vers ta tile de repli** (pre-run) dès que la direction du TR / de la red stain indique qu'il vient vers toi. Contre un tueur furtif, le TR ne sert pas : rotations caméra (E-D08). Exception : gen qui finit dans les secondes (le finir alimente peut-être les portes, ou déclenche des effets utiles) — SITUATIONAL.
- **Drill** : DR-09, DR-13.

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
- **Punition** : Demogorgon (Shred), Oni en Fury, Blight (Lethal Rush), Mastermind, Knight (gardes), Good Guy, Lich, Dark Lord (loup)… détruisent les palettes instantanément (FACT, STRONG_SECONDARY, liste à reconfirmer) ; la palette « respectée » n'existe plus **tant que le pouvoir est disponible** (Oni hors Blood Fury, Ghoul/Legion sans l'add-on, Demogorgon en recharge redeviennent des M1 face à la palette). Contre les ranged, une palette basse ne bloque pas une hachette lancée par-dessus (Huntress : lot 4 l'étiquette « FACT probable », **non vérifié** → UNCERTAIN [audit P14]) ; exception rapportée : le chien du Houndmaster est arrêté par une palette posée (handbook, SEED + CM, non vérifié).
- **Correction** : contre la casse instantanée, la palette sert à **gagner des mètres par le stun ou le pre-drop** (le tueur doit contourner ou utiliser son pouvoir ; pour les pouvoirs listés par le wiki, cet usage coupe sa Bloodlust — STRONG_SECONDARY ; Blight : casser une palette au sol lui coûte des tokens de Rush depuis 9.6.0, FACT), ou à forcer l'usage du pouvoir au mauvais moment. Nuance : un pre-drop qui ne force ni détour ni pouvoir (le tueur la détruit en passant, sans coût) est une palette gaspillée — alors QUITTER / jouer la LOS. Contre les ranged : jouer la LOS (murs hauts) plus que la palette. Voir la branche « pouvoir anti-loop » de T-Q01 et les fiches du lot 4.
- **Drill** : DR-15.

#### E-A04 · CHASE · Ignorer la Bloodlust
- **Erreur** : faire durer une poursuite sans casse ni stun sur une tile faible, sans jamais « remettre à zéro » la Bloodlust.
- **Pourquoi** : on pense qu'une palette posée est une palette perdue.
- **Punition** : à 35 s, +0,6 m/s (FACT) : le tueur 4,6 m/s court à 5,2 m/s ; même les boucles « safe » deviennent unsafe.
- **Correction** : autour des seuils (15/25/35 s depuis le début de la poursuite ou le dernier reset), une palette posée qui oblige à casser remet la Bloodlust à zéro (casse = perte immédiate, FACT) ; un stun : effet non documenté (UNCERTAIN) ; un coup reçu la remet aussi à zéro (FACT : toucher un survivant). Alternative : casser la poursuite (perte de LOS > 8 s, distance > 18 m, FACT) — la Bloodlust régresse ensuite. Contre-jeu du tueur [audit P14] : un tueur averti **contourne** une palette faible pour garder sa Bloodlust (lot 6 T06) ; la pose ne « remet à zéro » que s'il casse : ne pas compter dessus comme un automatisme.
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
- **Punition** : le tueur retrouve les deux ensemble ; ou tunnelle le décroché dès la fin des 10 s (au-delà des protections de base de 10 s, rien n'empêche le tunnel en LIVE : les systèmes anti-tunnel des PTB 9.2.0/9.3.0 n'ont jamais été mis en live, FACT VERIFIED_PRIMARY).
- **Correction** : le sauveteur (sain, crochets bas) **se place entre le tueur et le décroché** et accepte un coup de protection si le tueur revient (le coup acheté, cf. E-I07) ; les deux partent dans des directions différentes. Contre un tueur qui ignore le sauveteur et vise le décroché : prendre la chase en restant visible, body block dans un couloir. Limite : ne pas « tanker » si tu es toi-même à 2 crochets.
- **Drill** : DR-10.

#### E-A07 · TILE · Épuiser les ressources de la zone dès la première poursuite
- **Erreur** : faire une première chase de 90 s en consommant 4-5 palettes d'une zone.
- **Pourquoi** : la durée de chase est vécue comme le seul objectif.
- **Punition** : zone épuisée pour la suite (souvent là où se trouvent les derniers gens → base d'un 3-gen) ; les coéquipiers chassés plus tard n'ont plus rien.
- **Correction** : évaluer une poursuite par **temps gagné / ressources consommées** (métrique M-03, §5) ; au-delà d'une ou deux palettes pour un seul état de santé, se demander si prendre le coup et utiliser le boost aurait coûté moins à l'équipe. Pas une règle : en début de partie contre un tueur fort, une longue chase coûteuse peut valoir le coup si elle achète 2-3 gens (§0.3).
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
- **Correction** : au sol et sans menace immédiate, rester immobile pour récupérer (95 % en 30,4 s, FACT ; « à l'arrêt » = précision du wiki seulement) ; ramper seulement pour se cacher ou se rapprocher d'un allié qui vient. Arbitrage [audit P14, cohérence avec lot 9 §2.8 qui conseille de ramper vers un coéquipier ou une zone couverte] : si un allié vient te relever, ramper vers lui raccourcit son trajet ; si personne ne vient ou si le tueur rôde, récupérer sur place — les deux conseils ne sont pas des règles, et l'effet exact du rampement sur la récupération est à tester en jeu. Pour relever : un seul survivant, quand le tueur est engagé ailleurs ; si tout le monde est au sol, le Surrender existe (8.6.0) et l'Abandon à certaines conditions (9.2.0) — refonte au PTB 10.2.0, à revoir.
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
- **Correction** (HEURISTIC, pas une liste fermée [audit P14]) : un trade est **généralement** justifié si l'allié va perdre sa phase sinon (fin de phase 1 → état perdu ; fin de phase 2 → mort), s'il transfère le risque vers un survivant plus « riche » en états (0 crochet vs 2) et sain avec une ressource de chase proche, ou si les 2 autres réparent déjà (même un trade raté achète une chase : lot 9 §2.5) — idéalement avec une perk qui rend le trade favorable (Borrowed Time-type ; perks non revérifiées ici). Refuser : sauveteur blessé, dead zone autour du crochet, tueur à coup unique prêt, **2 survivants restants** (tous accrochés = sacrifice, Mori à 2 : FACT 9.0.0/9.1.0). Sinon, attendre ou distraire.
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
- **Punition** : loop contre un tueur qui l'ignore = coup rapide ; hold W vers le vide contre un M1 = coup au bout de ~16 s pour 10 m d'avance (audit, sans fente ; ~12-13 s avec une fente de 2-2,5 m).
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
- **Correction** : à **4 gens restants**, vérifier la géométrie des 4 : lequel faire pour ne pas laisser un triangle serré ? Accepter de réparer un gen « moins confortable » pour casser le triangle. Si le 3-gen est acquis : réparer à 2 pour finir vite dès qu'il part, attaquer deux gens du triangle en même temps pendant qu'un troisième tient une chase (split pressure, lot 9 §2.9), et garder les palettes de la zone. Le plafond de 8 regression events par gen (FACT, VERIFIED_MULTI_SOURCE ; au 8e le tueur ne peut plus toucher ce gen) rend les coups de pied répétés de plus en plus coûteux pour lui, mais « le forcer à les épuiser » n'est **pas un plan réaliste** en soi (8 events × 3 gens) [audit P14] : c'est un fond de décor, pas une stratégie.
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
- **Correction** : ajouter une marge temporelle (UNCERTAIN, dépend du ping) sur les actions serrées, surtout si le tueur semble avoir un ping élevé. Accepter que certains coups « injustes » fassent partie de l'équation et ne pas en tirer de mauvaises leçons en revue (pièges de revue, §5.4).
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

**Total : 14 (débutant) + 14 (intermédiaire, dont E-I14 ajoutée par l'audit P14) + 11 (avancé) + 12 (très avancé) = 51 erreurs.** Couverture par tag principal : CHASE 10 · MACRO 11 · CROCHET 8 · TILE 7 · SOIN 4 · COUNTER 3 · ENDGAME 3 · INFO 3 · SOLOQ 2 · SWF 1 (E-A10 porte deux tags). Le counterplay tueur est aussi traité dans E-D08, E-A02, E-T03 ; la SoloQ dans E-I03, E-I04 (horloge HUD).
Lacunes connues (audit P14) : aucune erreur sur les **objets** (lampe, toolbox, med-kit gaspillés), les **casiers en chase**, les **saves** (flash/pallet save, sabotage, body block d'équipe) — tous dépendent du lot 5 (NOT_STARTED) ; SWF sous-représenté (1 entrée).

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

**Règle de conflit [audit P14]** : plusieurs questions peuvent pointer vers des feuilles opposées (ex. Q3 « blessé à 2 crochets → PRE-DROP » et Q5 « dead zone derrière → ne pas pre-drop trop tôt »). Dans ce cas : **la question la plus haute choisit la feuille, les suivantes règlent le moment** (tôt / au dernier moment sûr). Exemple : blessé à 2 crochets, dead zone derrière → PRE-DROP, mais le plus tard possible sans risque de coup (idéalement un stun-drop si le tueur s'engage). Ce n'est pas une règle démontrée : c'est une convention pour que l'arbre reste utilisable.

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
│   ├─ Casse instantanée par pouvoir DISPONIBLE MAINTENANT (Demogorgon, Oni en Fury, Blight, Mastermind,
│   │   Knight garde, Good Guy, Lich, Dark Lord loup… ; liste à reconfirmer)
│   │                                                        ─► PRE-DROP tôt SI cela force un détour ou
│   │                                                          l'usage du pouvoir au mauvais moment ;
│   │                                                          sinon QUITTER / LOS ; TENIR/GREED rarement
│   │                                                          rentables (pouvoir en recharge ou Fury
│   │                                                          inactive → traiter comme un M1, Q3)
│   ├─ Tueur à distance avec LOS sur toi (Huntress, Deathslinger, Trickster…)
│   │                                                        ─► JOUER LA FENÊTRE/LOS ou QUITTER vers
│   │                                                          murs hauts ; la palette posée ne coupe pas
│   │                                                          la LOS (UNCERTAIN, lot 4) ; exception
│   │                                                          rapportée : Houndmaster (le chien est
│   │                                                          arrêté par une palette posée, non vérifié)
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

**Version « en jeu » (audit P14, HEURISTIC)** : appliquer littéralement 10 questions en pleine chase mène à la paralysie ou à la décision tardive. En temps réel, ne traiter que **Q1 (atteignable ?) → Q2 (pouvoir ?) → Q3 (coût d'un coup ?) → Q5 (suite ?)** ; Q6-Q10 se préparent **avant** la chase (état d'équipe, palettes restantes, perks suspectées) et se vérifient **en revue**. Un joueur qui hésite sur une palette perd souvent plus qu'en prenant la « mauvaise » feuille franchement.

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
| 3 | Sain, tueur à casse instantanée (ex. Demogorgon), Shred probablement prêt | → PRE-DROP tôt ou QUITTER | La palette debout ne se « respecte » pas ; poser tôt force le détour ou l'usage du pouvoir (qui coupe la Bloodlust pour les pouvoirs listés par le wiki, STRONG_SECONDARY) ; si le Shred est en recharge, le cas redevient celui d'un M1 |
| 4 | Huntress, tu es dans une tile basse, elle a une hachette armée et la LOS | → QUITTER vers murs hauts (FENÊTRE seulement si la réception est cachée) | La palette ne bloque pas un tir ; la LOS est la vraie ressource (lot 4) |
| 5 | Sain, 30 s de chase, Bloodlust palier 2, tile moyenne, 3 coéquipiers sur les gens | → PRE-DROP (ou stun si engagement) | Reset de Bloodlust **s'il casse** + ~15,6 s de rattrapage en ligne droite (CALC, plafond) ; chaque seconde ≈ 1/30 gen. Contre-jeu : il contourne pour garder la Bloodlust → la palette a quand même coûté un détour |
| 6 | Sain, coéquipiers au crochet et en soin, zone = 3 derniers gens | → QUITTER / hold W, garder les palettes | La chase rapporte peu maintenant ; ces palettes vaudront plus pendant le 3-gen |
| 7 | Endurance (décroché depuis 3 s), tueur revient, palette faible | → PRE-DROP ou QUITTER ; ne pas « tanker » sans but | Un coup = Deep Wound (FACT) : utile si tu protèges quelqu'un, sinon il te met en compte à rebours |
| 8 | Portes alimentées (les gens restants ne servent plus), tu es blessé à 1 crochet près d'une porte | → PRE-DROP généreux | Le tueur n'a plus que la fin de partie : chaque seconde vers la porte compte |
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
│   ├─ Il vault une fenêtre ──────────► 1,7 s → ≤ ~6,8 m bruts ; ~4,8 m nets si tu l'as
│   │                                   toi-même fast-vaultée (1,7 − 0,5 s, CALC lot 6 §2.3) ─► QUITTER MAINTENANT
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
│   Exemple : g ≈ 9,4 m (casse), tueur 4,6, pas de Bloodlust :
│     - si la « portée de fente » vaut ~2 m (gain de fente seul) : t < (9,4 − 2) / 0,6 ≈ 12 s, d ≈ 49 m ;
│     - si elle vaut ~6 m (portée totale avec hitbox, autre estimation communautaire) :
│       t < (9,4 − 6) / 0,6 ≈ 5,7 s, d ≈ 23 m.
│   [audit P14] Les deux estimations sont COMMUNITY_OBSERVATION et en désaccord : l'ordre de
│   grandeur honnête est « ~20 à ~50 m EN LIGNE DROITE », et pathing + Bloodlust réduisent encore.
│   Le traiter comme un plafond, pas comme une règle ; en cas de doute, viser la tile la plus proche.
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
- **PRENDRE LE COUP puis QUITTER** : acceptable **sain** quand aucune autre option n'existe ; le boost et le cooldown donnent le meilleur départ possible (l'annulation du boost par un vault immédiat n'est pas documentée : audit, question ouverte) ; blessé, ce n'est plus une option mais une mise au sol.
- **RESTER faute de mieux** : dead zone autour ; le temps gagné ici (même 5-10 s) vaut plus qu'une fuite perdue d'avance.

### 2.3 Autres arbres (versions courtes, à développer au lot 9)

**T-Q02 — Sauvetage (qui, quand)**
1. Où est le tueur ? — au crochet (< 16 m) / en chase ailleurs / inconnu. En chase ailleurs → fenêtre de sauvetage. Au crochet → Q2. Inconnu → approcher hors LOS, vérifier TR/red stain.
2. Combien reste-t-il dans la phase ? (70 s, FACT) — beaucoup → attendre qu'il parte ou que l'anti-camp agisse (< 16 m seulement, et surtout s'il est très proche : poids ×0,375 à 15 m ; durée non calculable, E-I04) ; peu → sauvetage même risqué, ou trade **justifié** (E-T01). **À 2 survivants restants** : si tu te fais accrocher pendant que l'autre l'est, sacrifice des deux (FACT 9.1.0) → le sauvetage risqué change de nature.
3. Qui y va ? — celui dont l'absence coûte le moins (pas en chase, gen non critique, 0 crochet, sain) **et** qui arrivera à temps. SoloQ : si quelqu'un y va déjà (HUD, Kindred), rester ; vérifier 10-15 s plus tard.
4. Après le décrochage : sauveteur entre tueur et décroché, directions différentes, pas de soin sur place (E-D10, E-A06).
Feuilles : SAUVER MAINTENANT · ATTENDRE (réparer en surveillant) · DISTRAIRE (SWF : un qui se montre, un qui décroche) · TRADE assumé · NE PAS SAUVER (fin de partie où le sauvetage coûte la sortie de deux survivants — rare, SITUATIONAL).

**T-Q03 — Soin**
1. Le tueur a-t-il un coup unique / Exposed fréquent ? oui → soin de faible valeur.
2. Un gen proche est-il à ≥ ~70-80 % (seuil HEURISTIC ; lot 9 : ~70 %) ? oui → finir le gen d'abord.
3. Une chase contre toi est-elle probable bientôt ? (tu es le plus proche du tueur, tu viens d'être décroché) oui → le soin vaut plus.
4. Coût : 16 s × 2 survivants (≈ 0,36 gen) ; med-kit ou pas ; Mangled (+25 % de durée, FACT).
5. Où ? hors de la zone du tueur, hors LOS, pas sous le crochet.
6. Combien de survivants restent ? À 2, le soin est presque toujours rentable (lot 9 §2.10, HEURISTIC).
Feuilles : SOIGNER MAINTENANT · SOIGNER PLUS TARD (après le gen) · NE PAS SOIGNER (jouer blessé en connaissant ce coût) · MENDING SEULEMENT (Deep Wound).

## 3. DRILLS D'ENTRAÎNEMENT (§33, T-R01)

Principes (HEURISTIC, inspirés de la pratique délibérée en général, non d'une source DBD) :
- **Un seul objectif par session** : le drill définit ce que tu regardes ; le reste de la partie est secondaire (tu acceptes de perdre des parties pendant un drill).
- **Retour immédiat** : chaque drill a une métrique que tu peux compter pendant ou juste après la partie (feuille §6).
- **Difficulté juste au-dessus du niveau actuel** : si la réussite est > 90 %, passer à la variante difficile ; si < 30 %, revenir à la variante facile.
- **Contextes** : « KYF » = partie personnalisée avec un ami tueur (mode Kill Your Friends ; existence connue, modalités non vérifiées par l'audit) ; « public » = partie publique normale ; « revue » = sur enregistrement.
- Tous les seuils de réussite ci-dessous sont **HEURISTIC / UNCERTAIN** : ils servent à mesurer un progrès **par rapport à ta propre base**, pas à te comparer aux autres.
- **Sans ami tueur [audit P14]** : les variantes KYF (DR-02, DR-05, DR-11) supposent un partenaire. Joueur SoloQ seul : faire la variante « public + revue » (relever les mêmes métriques en VOD) ; elle est plus lente et plus bruitée (tueurs et situations non contrôlés), donc exiger plus de parties avant de conclure.
- **Critère de réussite ≠ résultat de partie** : un critère qui compte des issues (« puni dans les 20 s », « perdu dans les 30 s ») mélange décision et variance (tueur, coéquipiers, latence) ; le lire avec la matrice décision × résultat de §5.5.

#### DR-01 · Caméra (regarder derrière sans casser le pathing)
- **Objectif** : garder un pathing propre (pas de collision, fast vaults réussis) tout en sachant où est le tueur.
- **Méthode** : KYF ou public. Variante facile : courir un circuit fixe (autour d'une tile connue) en faisant un check caméra sur chaque segment droit, jamais dans les 2-3 m avant un vault. Variante difficile : en chase réelle, annoncer à voix haute « derrière / gauche / droite » à chaque check.
- **Métrique** : collisions/accrochages de décor par chase ; vaults « medium » involontaires par chase ; nombre de coups reçus « sans l'avoir vu venir ».
- **Erreur typique** : checker trop tard (en approche du vault) ou trop longtemps (on regarde le tueur au lieu de sa route).
- **Réussite** : 3 parties de suite sans collision ni medium vault involontaire relevés en revue.

#### DR-02 · Fast vault
- **Objectif** : obtenir le fast vault (0,5 s, garde l'élan, FACT) à la demande, depuis tous les angles d'approche courants.
- **Méthode** : KYF (tueur passif) : sur 3 fenêtres de formes différentes (shack, jungle gym, fenêtre de main building), 10 approches chacune depuis des angles variés ; repérer l'arc qui donne la ligne droite de ≥ 2,5 m (FACT, angle toléré non documenté).
- **Métrique** : % de fast vaults / tentatives, par type de fenêtre.
- **Erreur typique** : couper l'angle ; tourner la caméra au dernier moment ; vaulter après un virage serré.
- **Réussite** : ≥ 90 % en KYF sur les 3 fenêtres ; ≥ 80 % des vaults en chase publique relevés en revue (UNCERTAIN).

#### DR-03 · Shack (tile unique, 5 composantes)
- **Objectif** : maîtriser entrée, fenêtre, palette, checkspots et rotations d'une tile très fréquente.
- **Méthode** : 3-5 parties où **toute** chase est emmenée vers le shack si possible ; noter pour chaque passage : par où j'entre, quand je vaulte, quand je pose, où je regarde (checkspots = trous dans les murs, coins par lesquels on voit le tueur), par où je sors. KYF : le tueur ami rejoue la même approche 5 fois, puis varie.
- **Métrique** : secondes gagnées par passage au shack (de l'entrée dans la tile à la sortie ou au coup) ; nombre de vaults avant la pose ; coups reçus au shack.
- **Erreur typique** : vault prématuré (tueur pas encore engagé vers l'autre porte) ; règle du seed « deux tours de fenêtre avant la palette » appliquée mécaniquement (elle dépend du tueur et du blocage au 3e vault) ; rester après le 3e vault.
- **Réussite** : décrire en revue, pour chaque passage, la feuille T-Q01 choisie et pourquoi ; ≥ 20 s **médians** par passage contre des tueurs M1 (UNCERTAIN), **sans** hausse des coups évitables (M-05) ni des sorties sans événement — sinon le drill pousse à rester au shack trop longtemps (E-A01) [audit P14].

#### DR-04 · Jungle gym (long wall / short wall)
- **Objectif** : reconnaître le côté fort (fenêtre sur le long mur) et jouer fenêtre puis palette.
- **Méthode** : hors chase, identifier le type de chaque gym croisé (long/short, côté fenêtre, côté palette) ; en chase, annoncer à voix haute le plan avant d'entrer (« fenêtre puis palette, sortie vers le shack »).
- **Métrique** : % de gyms correctement identifiés avant la chase ; secondes gagnées par gym ; fenêtres bloquées subies.
- **Erreur typique** : boucler le côté court ; rester quand le tueur se poste au milieu.
- **Réussite** : plan annoncé correct dans ≥ 80 % des gyms (revue).

#### DR-05 · Red stain et lecture d'approche
- **Objectif** : lire la direction du tueur sans le voir directement, et détecter les feintes (marche à reculons, FACT : trompe la red stain).
- **Méthode** : KYF : le tueur ami marche au hasard (avant/arrière/côté) derrière un mur haut ; tu annonces « gauche/droite/feinte » à chaque cycle ; 20 cycles, puis échange des rôles si possible.
- **Métrique** : % de lectures correctes ; temps de décision.
- **Erreur typique** : réagir à la première rotation de tête ; oublier que sous Undetectable il n'y a pas de red stain.
- **Réussite** : ≥ 75 % de lectures correctes sur 20 cycles (UNCERTAIN).

#### DR-06 · Identification du tueur (avant le reveal) et de ses add-ons
- **Objectif** : identifier le tueur **avant** son reveal par Match Details, à partir d'indices observables, puis repérer les add-ons qui changent la décision.
- **Méthode** : à chaque partie, noter dans la feuille l'heure (chrono de partie) et l'indice qui t'a fait identifier le tueur (berceuse, TR absent, son de pouvoir, trace de pouvoir sur la carte…) **avant** qu'il soit révélé par Match Details (révélé dès qu'**un survivant quelconque** entre en poursuite ou perd un état de santé, FACT VERIFIED_PRIMARY 9.6.0 [audit P14 : l'ancienne formulation laissait croire que seul ton contact comptait]) ; ensuite noter tout signe d'add-on (fiches lot 4).
- **Métrique** : % d'identification avant reveal **parmi les parties où tu as eu au moins un indice avant le reveal** (sinon la métrique mesure le déroulement de la partie — un coéquipier poursuivi à la 20e seconde révèle le tueur pour tous —, pas ta compétence) ; délai d'identification ; add-ons correctement devinés (vérifiables à l'écran de fin : le loadout adverse est visible à la fin, FACT).
- **Erreur typique** : confondre deux tueurs au TR proche ; ne pas réviser l'hypothèse.
- **Réussite** : ≥ 70 % d'identification avant reveal sur 20 parties (UNCERTAIN).

#### DR-07 · Perk deduction
- **Objectif** : déduire 2 à 4 perks du tueur en cours de partie et adapter son jeu.
- **Méthode** : journal d'indices dans la feuille (effet observé → perks candidates → conséquence pratique) ; mise à jour à chaque événement (gen qui explose/régresse, aura révélée, stun raccourci, Exposed…) ; vérification à l'écran de fin.
- **Métrique** : précision (perks justes / perks annoncées) ; rappel (perks trouvées / perks réelles) ; nombre de décisions modifiées grâce à la déduction.
- **Erreur typique** : annoncer une perk sur un seul indice ambigu ; ne rien changer à son jeu après l'avoir déduite.
- **Réussite** : précision ≥ 80 % **et** rappel ≥ 50 % sur 10 parties, avec au moins ~2 perks annoncées par partie en moyenne (UNCERTAIN) — la précision seule se « triche » en n'annonçant qu'une perk évidente [audit P14]. `kb/deliverables/PERK_DEDUCTION.md` existe désormais (lot 3) : s'y référer pour les indices.

#### DR-08 · Callouts (SWF)
- **Objectif** : transmettre l'essentiel en quelques mots : **qui / quoi / où / état / intention**.
- **Méthode** : fixer une grammaire d'équipe (landmark > horloge > relatif, comme le seed ch. 12 le propose) ; une partie où chaque callout est noté (enregistrement vocal) ; revue des callouts inutiles, ambigus, tardifs.
- **Métrique** : callouts par minute (trop ou trop peu), % de callouts actionnables, délai entre l'événement et le callout.
- **Erreur typique** : « il est là ! » sans lieu ; le chaseur qui commente tout ; oublier les états (crochets, gens en %).
- **Réussite** : ≥ 80 % de callouts actionnables en revue ; aucun sauvetage doublé par manque d'info.

#### DR-09 · Rotation de gens / anti-3-gen
- **Objectif** : choisir ses gens pour ne pas laisser un triangle serré.
- **Méthode** : au chargement, repérer les gens (une fois vus) et le triangle le plus serré ; décider « mon gen suivant » à chaque gen fini ; à 4 gens restants, refaire le point (E-T06).
- **Métrique** : nombre de 3-gens subis ; distance moyenne entre les 3 derniers gens (estimée en revue) ; temps « de marche » entre deux gens.
- **Erreur typique** : réparer le plus proche du spawn ; réparer à 4 sur un gen.
- **Réussite** : 0 3-gen « évitable » (le triangle avait été repéré) sur 10 parties.

#### DR-10 · Sauvetage (timing, approche, protection)
- **Objectif** : décrocher sans trade inutile et protéger le décroché.
- **Méthode** : sur 10 parties, pour chaque sauvetage : noter le temps restant dans la phase, la position du tueur, l'approche (hors LOS ?), ce qui s'est passé dans les 20 s suivantes.
- **Métrique** : % de sauvetages suivis d'un coup/d'une mise au sol dans les 20 s (sauveteur ou décroché) ; nombre de passages en phase 2 par retard ; sauvetages doublés.
- **Erreur typique** : arriver en ligne droite dans la LOS du tueur ; soigner sous le crochet.
- **Réussite** : < 25 % de sauvetages « punis » dans les 20 s sur 10 parties (UNCERTAIN, dépend fortement du tueur), **en excluant** les coups de protection pris volontairement par le sauveteur (E-A06) et les trades classés justifiés (E-T01), **et sans hausse** des passages en phase 2 par retard — sinon le moyen le plus simple de réussir est de ne plus sauver ou de ne plus protéger [audit P14].

#### DR-11 · Endgame (portes, trappe, EGC)
- **Objectif** : avoir un plan avant que la fin arrive.
- **Méthode** : à 1 gen restant, annoncer (à voix haute ou dans la feuille) : où sont les portes, qui ouvre, qui sauve, qui reste en réserve ; en solo final, plan trappe/portes (E-T07). KYF : scénarios répétés (tueur qui garde une porte, dernier survivant, sauvetage en EGC).
- **Métrique** : sorties réussies quand elles étaient possibles ; morts en endgame « évitables » (revue) ; secondes perdues à la porte.
- **Erreur typique** : traîner à la porte (E-A09), ouvrir la porte la plus proche du tueur.
- **Réussite** : plan annoncé à 1 gen dans 100 % des parties ; ≤ 1 mort évitable en endgame sur 10 parties (UNCERTAIN).

#### DR-12 · Décision de palette à voix haute
- **Objectif** : rendre l'arbre T-Q01 automatique.
- **Méthode** : avant chaque palette, dire la feuille choisie (« pre-drop », « tenir », « greed », « fenêtre », « quitter ») et la raison principale (« blessé 2 crochets », « Bloodlust »…). En revue, vérifier la décision **avec l'info disponible au moment**, pas avec le résultat.
- **Métrique** : palettes consommées par chase ; palettes « gaspillées » (posées sans que le tueur soit à moins d'une tile, sans raison T-Q01) ; mises au sol avec une palette debout à portée.
- **Erreur typique** : dire la feuille après avoir agi ; juger une décision sur son résultat.
- **Réussite** : feuille annoncée avant l'action ≥ 90 % des palettes ; baisse de moitié des palettes gaspillées par rapport à ta base (UNCERTAIN).

#### DR-13 · Route planning / tile chaining
- **Objectif** : toujours savoir où aller après la tile actuelle.
- **Méthode** : hors chase, en marchant vers un gen, nommer les 2 tiles de repli ; en chase, nommer la suivante avant de quitter la tile (arbre 2.2). Variante carte : 5 parties sur la même carte pour mémoriser les zones riches et mortes (lot 8, fixe vs RNG).
- **Métrique** : morts en dead zone ; départs de tile sur événement (vs sans événement) ; secondes de trajet exposé entre tiles.
- **Erreur typique** : partir vers le vide ; partir sans événement.
- **Réussite** : 0 mort en dead zone « évitable » sur 5 parties ; ≥ 80 % de départs sur événement (revue).

#### DR-14 · Skill checks et fondamentaux audio
- **Objectif** : ne plus perdre de temps sur les skill checks et entendre les signaux utiles.
- **Méthode** : réglages audio (musique réduite, casque) ; 5 parties en comptant les skill checks ratés ; exercice de « lever la caméra » toutes les N secondes sans rater de check.
- **Métrique** : skill checks ratés par partie (chacun ≈ 12 s perdues, §E-D06) ; % de Great (information seulement).
- **Erreur typique** : viser le Great au prix de ratés.
- **Réussite** : ≤ 1 raté par partie hors perks de skill check difficiles (UNCERTAIN).

#### DR-15 · Counterplay d'un tueur (une session = un tueur)
- **Objectif** : appliquer le counterplay spécifique d'un tueur (fiche lot 4).
- **Méthode** : choisir un tueur ; relire sa fiche (Identification, Tiles favorables/défavorables, Counterplay, Add-ons) ; dans les parties où il apparaît (ou en KYF), vérifier 3 comportements précis (ex. Huntress : LOS, changement de direction au lâcher, comptage des hachettes).
- **Métrique** : coups reçus de son pouvoir qui étaient évitables (revue) ; durée de chase contre ce tueur comparée à ta moyenne.
- **Erreur typique** : jouer le loop standard ; changer de plan trop tard.
- **Réussite** : 3 comportements appliqués dans 3 parties consécutives contre ce tueur.

#### DR-16 · Lecture du HUD en SoloQ
- **Objectif** : savoir à tout moment qui est en chase, au crochet, au sol, sur gen.
- **Méthode** : consulter les loadouts des coéquipiers (Match Details, FACT 9.6.0) en début de partie ; toutes les ~30 s (à chaque skill check, par exemple), un coup d'œil au HUD et une phrase mentale (« Meg en chase depuis 40 s, Dwight crochet phase 1 à mi-jauge »). Anticiper le PTB 10.2.0 (Survivor Intent System) : à revoir s'il sort.
- **Métrique** : sauvetages doublés ou manqués ; délais de réaction à un accrochage.
- **Erreur typique** : lire le HUD seulement quand un bruit de crochet retentit.
- **Réussite** : 0 sauvetage doublé et 0 passage en phase 2 « par oubli » **de ta part** (tu étais le mieux placé et tu n'as pas bougé) sur 10 parties SoloQ ; les oublis des coéquipiers ne comptent pas.

#### DR-17 · Comptage (horloge mentale)
- **Objectif** : tenir le compte des états de crochet, des gens, des palettes, de la Bloodlust.
- **Méthode** : à chaque accrochage, dire le décompte (« Claudette 2, moi 1, gens : 3 restants ») ; en chase, compter les secondes depuis le dernier coup/casse (15/25/35 s) ; en fin de partie, vérifier contre l'écran.
- **Métrique** : erreurs de comptage relevées ; décisions prises sur un compte faux.
- **Erreur typique** : ne compter que soi.
- **Réussite** : compte juste à chaque accrochage sur 5 parties.

#### DR-18 · Décision de soin
- **Objectif** : soigner quand c'est rentable, pas par réflexe (arbre T-Q03).
- **Méthode** : avant chaque soin, dire « soin : oui/non/plus tard » + raison ; noter le coût (16 s × 2) et ce qui arrive dans les 60 s suivantes.
- **Métrique** : soins interrompus ; soins suivis d'un coup dans les 30 s (état « perdu ») ; soins contre coup unique.
- **Erreur typique** : soigner sous le crochet ; se regrouper à 3 pour un soin (le wiki limite à 2 soigneurs, le seed dit 3 : CONFLICT-001, UNCERTAIN).
- **Réussite** : < 20 % de soins « inutiles » (interrompus ou perdus dans les 30 s) sur 10 parties (UNCERTAIN), **à lire avec** le nombre de mises au sol en un coup alors que tu étais blessé depuis longtemps sans raison — sinon « ne jamais soigner » maximise le critère [audit P14]. « Perdu dans les 30 s » est une issue, pas une décision : classer aussi la décision (T-Q03) avec l'info du moment.

#### DR-19 · Revue de partie (T-R04) — voir §5.5
- **Objectif** : transformer chaque partie en information exploitable.
- **Méthode** : procédure §5.5 + feuille §6.
- **Métrique** : nombre d'erreurs classées par ID ; une erreur « focus » choisie pour la semaine.
- **Erreur typique** : ne revoir que les défaites ; juger par le résultat.
- **Réussite** : 1 revue complète pour ~5 parties jouées (UNCERTAIN), et la même erreur focus en baisse sur 2 semaines.

#### DR-20 · Changement de rôle (jouer tueur)
- **Objectif** : comprendre ce que le tueur voit et entend (il n'entend pas son propre TR, ne voit pas sa red stain, FACT).
- **Méthode** : 5 parties tueur avec un tueur M1 ; noter ce qui t'a permis de trouver/toucher les survivants (griffures, grognements, bruit de vault, gens) et ce qui t'a fait perdre du temps (palettes, LOS).
- **Métrique** : liste des 5 signaux les plus utiles au tueur → liste des 5 habitudes survivant à corriger.
- **Erreur typique** : jouer pour gagner au lieu d'observer.
- **Réussite** : 5 habitudes survivant identifiées et reliées à des IDs d'erreur.

## 4. PROGRAMME D'ENTRAÎNEMENT EN 10 NIVEAUX (§34, T-R02)

### 4.1 Règles du programme (HEURISTIC)

- **Pratique délibérée, pas volume** : chaque niveau se travaille par **blocs** = 1 objectif + 1-2 drills + un nombre limité de parties focalisées + des revues. Jouer « plus » sans objectif ni revue ne compte pas pour le passage.
- **Critères de passage mesurables** : ils utilisent les métriques de §5 (IDs `M-xx`). On passe quand le critère est tenu sur **deux blocs consécutifs** (évite de passer sur une série chanceuse). **Taille d'un bloc [audit P14]** : ≥ 10 parties (la règle d'agrégation de §5.2) ; un niveau demande donc au minimum ~20 parties mesurées après la base, ce qui dépasse certaines « durées indicatives » ci-dessous : en cas de conflit, c'est le nombre de parties qui prime, pas la durée.
- **SoloQ et SWF mesurés séparément [audit P14]** : les critères qui dépendent des coéquipiers (M-02, M-09, M-17, M-19, DR-16) se comparent à une base du **même mode** ; ne jamais passer un niveau grâce à des parties SWF sur un critère mesuré en SoloQ (ou l'inverse).
- **Petits nombres** : un critère « ↓ 50 % vs base » n'a de sens que si la base est assez élevée (ex. ≥ ~1 événement par partie) ; avec une base de 0,3 erreur/partie, la différence entre 3 et 1,5 erreurs sur 10 parties est du bruit — utiliser alors un seuil absolu ou allonger les blocs (HEURISTIC).
- **Critère « justifié en revue »** : quand un critère repose sur ton propre jugement (niveaux 4, 7, 9), il est auto-complaisant par construction : le faire valider par un tiers (revue croisée SWF, ami, coach) ou décider des critères de classement **avant** de regarder la VOD.
- **Se comparer à sa propre base** : mesurer la base au début du niveau (5-10 parties) ; les critères « ↓ 50 % » s'entendent contre cette base. Raison : le matchmaking adapte l'adversité à ton niveau (le MMR tient compte aussi d'actions en partie depuis 10.1.0, FACT VERIFIED_PRIMARY), donc les valeurs absolues bougent quand tu progresses. Un **reset du MMR** en 10.1.0 (25/08/2026) est rapporté par la presse mais absent des notes officielles (UNCERTAIN) : s'il a eu lieu, l'adversité est instable pendant « un certain nombre de parties » (dev BHVR cité par l'audit) — une base mesurée fin août / septembre 2026 peut dériver sans que ton niveau change.
- **Retour en arrière autorisé** : si une métrique d'un niveau inférieur se dégrade nettement pendant 2 blocs, refaire un bloc de ce niveau.
- **Durées indicatives : UNCERTAIN** — ordre de grandeur pour un joueur qui joue ~4-6 h par semaine ; elles n'ont aucune source et varient énormément.
- Les niveaux 1-4 peuvent se chevaucher (ex. caméra et loops) ; à partir du 5, respecter l'ordre aide car chaque niveau suppose que le précédent est automatique.

### 4.2 Les 10 niveaux

| Niv. | Thème | Compétences | Drills | Critère de passage (mesurable) | Durée indicative (UNCERTAIN) |
|---|---|---|---|---|---|
| 1 | Fondamentaux | Constantes §0.2 (gens 90 s, crochet 70 s/phase, soin 16 s, vaults, palettes, statuts) ; skill checks ; déplacements silencieux ; HUD de base | DR-14, DR-17 (version simple), DR-02 (intro) | Quiz de 20 questions sur §0.2 ≥ 18/20 ; M-10 : ≤ 1 skill check raté/partie sur 5 parties ; M-13 : aucun corbeau AFK sur 5 parties | 1-2 semaines ; ~10 parties + 2 revues |
| 2 | Caméra + pathing | Checks caméra aux bons moments ; fast vault à la demande ; approche en arc | DR-01, DR-02 | M-06 : ≥ 80 % de fast vaults en chase (revue ; la cible de long terme de §5.3 est 90 %) ; 0 collision relevée sur 3 parties revues | 1-2 semaines ; 3 sessions KYF + ~10 parties |
| 3 | Loops de base | Shack, jungle gym, T-L, fillers ; arbre T-Q01 niveau Q1-Q4 ; compter ses vaults | DR-03, DR-04, DR-12 | Feuille T-Q01 annoncée avant l'action ≥ 90 % des palettes ; M-14 (palettes gaspillées) ↓ 50 % vs base ; M-01 médiane contre tueurs M1 ↑ vs base, **sans hausse de M-05** (sinon la baisse de M-14 vient du greed) [audit P14] | 2-3 semaines ; ~20 parties + 4 revues |
| 4 | Map awareness | Tiles de repli, zones riches/mortes, emplacement des gens, 3-gen potentiels, portes ; fixe vs RNG (lot 8) | DR-13, DR-09 | M-07 : 0 mort en dead zone évitable sur 5 parties ; 2 tiles de repli nommées à chaque déplacement vers un nouvel objectif (voix enregistrée ; auto-contrôle en revue ≥ 80 %) | 2-3 semaines ; 5 parties par carte sur 3-4 cartes |
| 5 | Killer counterplay | Identification avant reveal ; counterplay par archétype puis par tueur ; add-ons qui changent la décision | DR-06, DR-15, DR-05 | M-16 : identification avant reveal ≥ 70 % sur 20 parties **où un indice existait avant le reveal** (DR-06) ; M-12 (coups de pouvoir évitables) ↓ 50 % vs base sur les 5 tueurs travaillés, avec **≥ ~5 parties par tueur** (KYF si le tueur est rare en public) — en dessous, non mesurable [audit P14] | 4-6 semaines (1 tueur ou 1 archétype par semaine) |
| 6 | Macro | Rotation de gens, anti-3-gen, sauvetages (T-Q02), soins (T-Q03), répartition des risques selon les crochets | DR-09, DR-10, DR-18, DR-16 | M-09 : sauvetages punis < 25 % ; M-11 : soins inutiles < 20 % ; M-17 : 0 3-gen évitable sur 10 parties | 3-4 semaines ; ~25 parties + 5 revues |
| 7 | Game sense | Prédire la position du tueur et des coéquipiers ; comptage continu ; perk deduction ; reconnaître une partie qui bascule | DR-17, DR-07, DR-16 + exercice « prédiction » (toutes les 60 s, écrire/dire où est le tueur, vérifier en revue) | M-18 : 0 erreur de comptage sur 5 parties (comptes dits à voix haute et enregistrés) ; M-16 : précision perk deduction ≥ 80 % **et** rappel ≥ 50 % (DR-07) ; prédictions de position correctes ≥ 60 % (UNCERTAIN) — [audit P14] ta VOD survivant ne montre pas le tueur la plupart du temps : ne compter que les prédictions **vérifiables** (tueur vu, poursuite d'un coéquipier au HUD, lieu du prochain accrochage dans les ~15 s) et définir « correct » à l'avance (même zone / landmark) | 3-4 semaines |
| 8 | Chase avancée | Red stain et feintes, Bloodlust, quitter la tile sur événement, mindgames, loop vs hold W, marge de latence | DR-05 (difficile), DR-12 (difficile), DR-13 | M-05 : coups évitables par chase ↓ 50 % vs fin du niveau 3 ; M-15 : départs de tile sur événement ≥ 80 % ; M-04 (first-hit timing) médiane ↑ vs base **à palettes consommées égales** (M-03), coups achetés volontairement exclus (voir §5.1) [audit P14] | 4-6 semaines |
| 9 | Décision de haut niveau | Trades, casser/garder une chase, tempo d'équipe, valeur d'une seconde (§0.3), arbres complets, endgame | DR-19 intensif, DR-11, DR-10 | En revue : ≥ 80 % des moments pivots avec décision justifiée par l'info disponible ; erreurs E-T* ↓ 50 % vs base ; M-08 : 0 trade injustifié sur 10 parties | 4-8 semaines |
| 10 | Concepts compétitifs | SWF : rôles, protocoles, callouts, plan de carte, coordination des crochets ; lecture d'une partie en termes de tempo ; limites (règlements, bans : lot 10 BLOCKED) | DR-08, DR-11 en KYF, DR-19 en équipe (revue croisée) | Callouts actionnables ≥ 80 % (DR-08) ; plan de partie écrit pour 5 cartes et appliqué ; métriques des niveaux 3-9 maintenues contre une opposition plus forte (2 blocs) — [audit P14] le MMR n'est pas affiché : « plus forte » n'est mesurable que via des parties contre des adversaires identifiés (scrims, tueur connu en KYF, compétition), sinon critère non mesurable | Continu |

### 4.3 Structure d'une semaine type (HEURISTIC, exemple)

- **Séance 1 (60-90 min)** : 10 min de rappel (fiche du niveau, erreur focus) → parties focalisées sur le drill principal.
- **Séance 2** : KYF ou parties publiques sur le drill secondaire.
- **Séance 3** : parties « libres » mais feuille remplie (mesure en conditions normales).
- **Revue (30-45 min)** : 1-2 parties revues selon §5.5 ; mise à jour des métriques ; choix de l'erreur focus de la semaine suivante.
- **Pourquoi** : alterner focalisation et jeu normal vérifie que le geste tient hors du drill ; la revue fournit le retour que la partie elle-même ne donne pas (une victoire peut cacher 5 erreurs).

## 5. SYSTÈME DE MESURE (§35, T-R03) et REVUE DE PARTIE (T-R04)

### 5.1 Définitions exactes des métriques

Conventions : une **chase** commence au premier instant où le tueur te poursuit (entrée en poursuite selon les conditions FACT de §0.2 ; en pratique, en VOD : début de la musique de chase ou premier sprint de fuite avec le tueur en vue, à ± 2 s) et finit à la **première** de ces issues : mise au sol, fin de poursuite (tueur qui abandonne, ou toi qui le sèmes), ou changement de cible du tueur. Plusieurs chases peuvent avoir lieu dans une partie. Tous les chronos se prennent au chrono de la VOD.

| ID | Métrique | Définition exacte | Unité |
|---|---|---|---|
| M-01 | Durée de chase | Fin − début de chaque chase (convention ci-dessus). Rapporter la **médiane** par partie et par archétype de tueur | s |
| M-02 | Gens pendant la chase | Nombre de gens terminés par l'équipe entre le début et la fin de ta chase ; + « réparateurs actifs moyens » (0-3) estimé au HUD (lecture HUD : UNCERTAIN, §0.2). **Attention [audit P14]** : un compte de gens **terminés** est « en escalier » : une chase qui commence quand des gens sont à 90 % « rapporte » beaucoup, la même chase en début de partie peut rapporter 0 gen terminé pour autant de progression. Préférer M-19 pour juger ta chase | gens ; 0-3 |
| M-03 | Palettes par chase | Palettes **posées par toi** pendant la chase ; + ratio « secondes de chase par palette posée » | n ; s/palette |
| M-04 | First-hit timing | Secondes entre le début de la chase et le premier coup qui te fait perdre un état (un coup absorbé par Endurance compte à part). Non défini si tu commences la chase blessé (noter à part). Un coup **acheté** volontairement (E-I07 : boost vers une tile, protection d'un décroché) est marqué et exclu de la médiane : sinon M-04 punit un bon choix [audit P14]. Ne se lit qu'avec M-03 (un M-04 long obtenu en brûlant 4 palettes n'est pas un progrès) | s |
| M-05 | Coups évitables | Coups reçus classés « évitables » en revue : l'info disponible permettait une option qui ne prenait pas ce coup sans coûter plus (grille : free hit E-I07, greed E-I01, vault en angle E-D05, tile gardée trop longtemps E-A01, départ sans événement…) | n par chase |
| M-06 | Vaults ratés | Vaults medium/slow involontaires + tentatives sur une fenêtre bloquée + collisions de décor ; et % de fast vaults / vaults voulus rapides (l'intention n'est pas visible en VOD : compter tous les vaults faits en chase, sauf les slow vaults annoncés à voix haute [audit P14]) | n ; % |
| M-07 | Morts en dead zone | Mises au sol où, au moment du coup final, aucune ressource n'était atteignable, **alors qu'une route vers une ressource existait au début de la séquence** (sinon : dead zone « subie », comptée à part) | n par partie |
| M-08 | Hook trades | Sauvetages après lesquels le sauveteur ou le décroché est accroché dans les 60 s ; classés justifiés / injustifiés (T-Q02, E-T01) | n |
| M-09 | Mauvais sauvetages | Sauvetages suivis d'une perte d'état (sauveteur ou décroché) dans les 20 s, + sauvetages doublés, + passages de phase dus au retard. **Exclure** [audit P14] : le coup de protection pris volontairement par le sauveteur (E-A06 le recommande) et les trades classés justifiés (M-08) ; un coup sous Endurance qui donne Deep Wound se note à part (ce n'est pas une perte d'état au sens strict). Sans ces exclusions, M-09 pénalise le comportement que la base d'erreurs conseille | n ; % des sauvetages |
| M-10 | Efficacité gen | (secondes passées à réparer) / (secondes « disponibles » = vivant, pas en chase, pas au crochet, pas au sol, pas en soin nécessaire) ; + skill checks ratés. **Limites [audit P14]** : « soin nécessaire » est un jugement (le dénominateur dépend de ta propre justification) ; les trajets entre gens, sauvetages, totems et pre-runs (E-I14) font baisser M-10 alors qu'ils peuvent être corrects ; maximiser M-10 pousse à rester sur le gen trop tard et à ne jamais sauver. Ne pas le suivre seul : le coupler à M-07 / M-09 / E-I14 | % ; n |
| M-11 | Soins incorrects | Soins interrompus, soins dont le bénéfice est perdu dans les 30 s, soins contre un tueur à coup unique, soins sous le crochet | n ; % des soins |
| M-12 | Erreurs face au pouvoir | Coups reçus du **pouvoir** du tueur classés évitables (fiche lot 4 : LOS, timing d'esquive…) | n par partie |
| M-13 | Temps inactif | Secondes sans objectif (caché sans menace, marche sans but) ; corbeaux AFK | s ; n |
| M-14 | Palettes gaspillées | Palettes posées sans justification T-Q01 (tueur à plus d'une tile, pas de feuille PRE-DROP applicable). **Mesurabilité [audit P14]** : presque toute pose peut être « justifiée » après coup par une branche de T-Q01 ; exiger que la raison ait été **annoncée avant l'action** (DR-12), et relever en plus un indicateur objectif : palette posée qui n'a produit ni stun, ni casse, ni détour du tueur, ni accès à une autre ressource dans les ~10 s (seuil UNCERTAIN) | n par partie |
| M-15 | Départs sur événement | % des sorties de tile faites pendant une casse, un stun, un vault du tueur, un cooldown ou une perte de LOS | % |
| M-16 | Identification / deduction | % d'identifications du tueur avant reveal (dénominateur : parties avec au moins un indice avant le reveal, DR-06) ; précision **et** rappel de la perk deduction (vérifiés à l'écran de fin) | % |
| M-17 | 3-gen évitables | 3-gens subis alors que le triangle était repérable avant 4 gens restants | n |
| M-18 | Erreurs de comptage | États de crochet / gens / vaults mal comptés au moment d'une décision | n |
| M-19 | Valeur de chase (dérivée) | ≈ M-01 × réparateurs actifs moyens (charges d'équipe produites pendant ta chase, §0.3) ; à diviser par 90 pour l'exprimer en équivalents-gen. **Surestime** [audit P14] : suppose des réparateurs seuls à 1 c/s (à 2 sur un gen : 0,85 c/s chacun), sans trajets ni skill checks ratés ; valeur brute, pas contrefactuelle (le tueur aurait mis la pression ailleurs). Utile pour comparer tes chases entre elles, pas comme mesure absolue | charges ; équivalents-gen |

### 5.2 Comment les relever

- **À chaud (≤ 2 min, fin de partie)** : tueur, carte, SoloQ/SWF, résultat, ressenti, 1-3 moments pivots, décompte rapide (sauvetages, soins, palettes posées), perks déduites vs réelles (écran de fin).
- **En revue (VOD)** : chronos de chase (M-01, M-04), classement des coups (M-05, M-12), vaults (M-06), sauvetages (M-08, M-09), départs de tile (M-15), temps disponible/réparation (M-10, M-13) — c'est la partie la plus coûteuse : ne la faire que pour 1 partie sur ~3-5 (UNCERTAIN).
- **Agrégation** : par bloc de **10 parties** au minimum ; utiliser les médianes (une chase de 3 min contre un tueur débutant écrase une moyenne) ; séparer par archétype de tueur et SoloQ/SWF.
- **Outil** : la feuille §6 (un fichier par partie) + un tableau récapitulatif (une ligne par partie) ; aucun outil externe requis.

### 5.3 Valeurs cibles — toutes **HEURISTIC / UNCERTAIN**

Ces valeurs ne viennent d'aucune donnée : ce sont des ordres de grandeur de joueur, à remplacer par ta propre base. La **direction** est plus fiable que le chiffre.

| ID | Direction souhaitée | Ordre de grandeur indicatif (UNCERTAIN) | Remarque |
|---|---|---|---|
| M-01 | ↑ à ressources égales | Contre un tueur M1 : médiane qui progresse de bloc en bloc ; > 60 s est souvent cité comme « bonne chase » (valeur non sourcée) | À lire avec M-02/M-19 et M-03 |
| M-02 / M-19 | ↑ | M-19 : ~135 charges (≈ 1,5 équivalent-gen) pour une chase de 45 s si 3 coéquipiers réparent chacun seul (CALC plafond §0.3 : 45 × 3). **Corrigé [audit P14]** : l'ancienne cible « ≥ 1 gen terminé » ne découle pas du calcul — 135 charges réparties sur 3 gens = 45 charges chacun, soit **0 gen terminé** possible ; M-02 n'a donc pas de cible chiffrée | Dépend des coéquipiers, pas seulement de toi |
| M-03 | ↓ à durée égale | Chase de ~60 s avec 1-2 palettes plutôt que 4-5 | Une chase courte à 0 palette n'est pas forcément bonne |
| M-04 | ↑ | Sans cible chiffrée : comparer à la base | Très dépendant du tueur ; seulement à palettes consommées égales et hors coups achetés (§5.1) |
| M-05 | ↓ | ≤ 1 coup évitable par chase au niveau 3, ~0 visé au niveau 8 | Classement subjectif : utiliser la grille |
| M-06 | ↓ | ≥ 90 % de fast vaults voulus réussis (cible de long terme ; 80 % suffit pour le niveau 2) | — |
| M-07 | ↓ | 0 évitable | — |
| M-08 | ↓ injustifiés | 0 trade injustifié | Les trades justifiés ne sont pas des erreurs |
| M-09 | ↓ | < 25 % | Contre des tueurs qui campent ou tunnellent, relever à part ; toujours avec les passages de phase |
| M-10 | ↑ | > 70 % du temps disponible en réparation (UNCERTAIN) | Soins et sauvetages nécessaires exclus du dénominateur |
| M-11 | ↓ | < 20 % des soins | — |
| M-12 | ↓ | ↓ 50 % vs base sur un tueur travaillé | — |
| M-13 | ↓ | 0 corbeau AFK | Se cacher par choix tactique n'est pas « inactif » si justifié |
| M-14 | ↓ | ≤ 1 par partie | — |
| M-15 | ↑ | ≥ 80 % | — |
| M-16 | ↑ | ≥ 70 % identification avant reveal ; précision deduction ≥ 80 % | — |
| M-17, M-18 | ↓ | 0 | — |

### 5.4 Pièges d'interprétation (corrélation ≠ causalité)

- **Corrélation ≠ causalité** : « mes parties avec de longues chases sont des victoires » ne prouve pas que la longueur cause la victoire : un tueur faible produit à la fois de longues chases et des défaites pour lui. L'audit a déjà relevé ce biais dans le seed (A-122 : « builds de chase ≈ 28 % → une belle poursuite ne sert à rien », corrélation transformée en causalité). Pour tester un lien, comparer **à tueur, carte et mode (SoloQ/SWF) comparables**.
- **Facteurs de confusion** : tueur (archétype, add-ons), carte (densité de palettes, modifiée en 9.2.0/9.3.0, FACT), MMR, SoloQ/SWF, ping, coéquipiers. Toujours noter ces champs et ne comparer qu'à l'intérieur d'un même groupe.
- **Loi de Goodhart** : optimiser une métrique la déforme. Viser M-01 seule pousse à se cacher/ fuir loin et à ne jamais prendre de coup de protection ; viser M-03 seule pousse au greed. Toujours suivre un **couple** : M-01 avec M-03 et M-19 ; M-09 avec les passages de phase (ne plus sauver du tout ferait baisser M-09).
- **Petits échantillons** : 10 parties sont un minimum ; une série de 3 parties ne dit rien (variance du tueur et des coéquipiers). Utiliser les médianes et des blocs.
- **Biais de sélection** : ne revoir que les défaites (ou les parties « intéressantes ») surreprésente certaines erreurs. Choisir les parties à revoir **avant** de connaître le résultat (§5.5).
- **Biais de résultat** : une bonne décision peut mal finir (latence, feinte réussie du tueur, coéquipier) et une mauvaise bien finir. La revue juge la décision **avec l'info disponible au moment**, pas l'issue.
- **Biais rétrospectif** : en VOD on « sait » où était le tueur ; pendant la partie tu ne le savais pas. Mettre pause **avant** la décision et noter ce que tu savais réellement.
- **Latence** : ce que ta VOD montre n'est pas ce que le serveur a validé (coups validés côté tueur, FACT). Ne pas classer « évitable » un coup qui ne l'était qu'à l'écran (E-T08).
- **Métriques d'équipe** : M-02/M-19 dépendent des coéquipiers ; en SoloQ, elles mesurent autant le lobby que toi. M-16 (identification avant reveal) dépend aussi d'eux : le reveal arrive dès qu'**un** survivant est poursuivi ou blessé [audit P14].
- **Métriques qui récompensent l'inaction** [audit P14] : M-09 (ne plus sauver), M-11 (ne plus soigner), M-14 (ne plus poser de palette → greed), M-10 (ne jamais quitter le gen) s'améliorent toutes si l'on **évite l'action** au lieu de mieux la faire. Chaque métrique « ↓ erreurs » doit être lue avec le coût de l'excès inverse (passages de phase, mises au sol blessé, coups en greed, chases commencées au contact).
- **Métriques de résultat vs de décision** : M-09, M-11, DR-10, DR-18 comptent des **issues** dans une fenêtre (20 s, 30 s) ; une bonne décision peut y apparaître comme une erreur (tueur qui tunnelle, feinte réussie). Les compléter par le classement décision × résultat (§5.5, point 4).
- **Dérive du matchmaking** : quand tu progresses, tes adversaires aussi (MMR) ; une métrique stable peut donc signifier un progrès. D'où la comparaison à la base et les critères en variation.

### 5.5 Méthode de revue de ses propres parties (T-R04)

1. **Enregistrer** toutes les parties d'une session (outil de capture local). Décider **à l'avance** lesquelles seront revues (ex. la 1re et la 3e de chaque session + 1 au choix) pour éviter le biais de sélection.
2. **Fiche à chaud** (≤ 2 min) : partie « à chaud » du gabarit §6 — surtout les moments pivots *perçus* (ils serviront à mesurer l'écart entre ressenti et réalité).
3. **Revue à froid dans les 24-48 h** (UNCERTAIN ; assez tôt pour se souvenir de ses intentions) : première passe en ×2 pour repérer les séquences (chases, sauvetages, soins, endgame) et relever les chronos ; seconde passe en ×1 sur 3-5 **moments pivots** (un coup reçu, une palette, un sauvetage, une décision de gen, l'endgame).
4. **Pour chaque moment pivot** : pause **avant** la décision → écrire (a) ce que je savais (TR, red stain, HUD, comptes), (b) les options (feuilles d'arbre), (c) ce que j'ai choisi et pourquoi ; puis reprendre la lecture → (d) résultat ; (e) classer dans la matrice décision × résultat : *bonne décision / bon résultat*, *bonne décision / mauvais résultat* (variance : ne rien changer), *mauvaise décision / bon résultat* (chance : **à corriger quand même**), *mauvaise décision / mauvais résultat*.
5. **Classer** chaque erreur par ID (E-xx). Une erreur qui n'existe pas dans la base → proposer une nouvelle entrée (Erreur → Pourquoi → Punition → Correction → Drill).
6. **Relever les métriques** (§5.1) et les ajouter au tableau récapitulatif.
7. **Vue du tueur** : sur 1 moment pivot, se demander ce que le tueur voyait (griffures 10 s, flaques, grognements, bruit de vault, red stain qu'il ne voit pas, TR qu'il n'entend pas — FACT) : c'est souvent là qu'apparaît l'erreur d'information.
8. **Choisir UNE erreur focus** pour la semaine (la plus fréquente ou la plus coûteuse en secondes) et le drill associé ; ne pas en choisir trois.
9. **Hebdomadaire** : agrégat sur ≥ 10 parties, médianes, comparaison à la base du niveau (§4) ; décision : rester, passer, revenir en arrière.
10. **SWF** : revue croisée (chacun revoit la chase d'un autre, sans juger le résultat) ; revoir aussi les callouts (DR-08).

**Erreurs typiques de revue** : ne revoir que ses chases (la macro coûte souvent plus) ; accuser le tueur ou les coéquipiers (on ne contrôle que ses décisions) ; tirer une règle d'une seule partie ; noter « j'aurais dû poser » sans dire *quel indice* aurait dû déclencher la pose.

## 6. GABARIT — FICHE DE REVUE DE PARTIE (Markdown, à copier)

````markdown
# Revue de partie — AAAA-MM-JJ #n

## Contexte (à chaud)
- Patch : 10.1.2a (LIVE) | Mode : SoloQ / SWF (taille : _) | Ping ressenti : bas / moyen / haut
- Tueur : ______ | Archétype : M1 / anti-loop / ranged / mobilité / furtif / zone
- Identifié à : mm:ss, par l'indice : ______ | Avant le reveal : oui / non   (M-16)
- Carte : ______ | Offrande de carte : oui / non
- Mon personnage / build : ______ | Objet : ______
- Loadouts coéquipiers notables (Match Details) : ______
- Résultat : évadé / sacrifié / trappe | Équipe : _ évadés
- Niveau du programme : _ | Drill du jour : DR-__ | Erreur focus : E-__
- Ressenti (1 phrase) : ______
- Moments pivots perçus (1-3) : mm:ss ______ / mm:ss ______ / mm:ss ______

## Perk deduction (M-16)
| Indice (mm:ss) | Perk(s) candidate(s) | Conséquence pratique | Vérifié fin de partie |
|---|---|---|---|
| | | | ✔ / ✘ |

## Chases (une ligne par chase)
| # | Début | Fin | Issue (sol / semé / abandon / changement cible) | M-01 durée (s) | M-04 1er coup (s) | M-03 palettes posées | M-14 gaspillées | M-05 coups évitables | M-06 vaults ratés | M-15 départs sur événement (x/y) | Réparateurs actifs moy. | M-02 gens pendant | M-19 valeur (gens) |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | | | | | | | | | | | | | |

## Crochets et sauvetages
| mm:ss | Qui (état crochets) | Mon rôle (accroché / sauveteur / réparateur) | Temps restant de phase | Tueur à < 16 m ? | Issue à +20 s | Trade ? justifié ? (M-08) | Mauvais sauvetage ? (M-09) |
|---|---|---|---|---|---|---|---|
| | | | | | | | |

## Soins (M-11)
| mm:ss | Qui | Durée | Interrompu ? | Perdu dans les 30 s ? | Contre coup unique ? | Décision T-Q03 correcte ? |
|---|---|---|---|---|---|---|
| | | | | | | |

## Gens et macro
- Triangle repéré au début : ______ | 3-gen subi : oui / non / évitable (M-17)
- Temps à réparer / temps disponible (estimation) : ___ % (M-10) | Skill checks ratés : ___
- Temps inactif / corbeaux AFK (M-13) : ___
- Erreurs de comptage (M-18) : ___
- Morts en dead zone (M-07) : évitable ___ / subie ___
- Coups évitables du pouvoir (M-12) : ___

## Endgame
- Plan annoncé à 1 gen : oui / non | Contenu : ______
- Portes / trappe / EGC : ______ | Mort évitable en endgame : oui / non

## Moments pivots (revue à froid : pause AVANT la décision)
### Pivot 1 — mm:ss
- Ce que je savais : ______
- Options (feuilles d'arbre) : ______
- Mon choix et pourquoi : ______
- Résultat : ______
- Matrice : bonne décision/bon résultat · bonne/mauvais · mauvaise/bon · mauvaise/mauvais
- ID d'erreur : E-__ (ou nouvelle entrée proposée)
- Ce que voyait le tueur : ______

## Synthèse
- Erreurs classées (ID × nombre) : ______
- Nouvelle entrée pour la base d'erreurs : ______
- Erreur focus de la semaine : E-__ | Drill : DR-__
- Pièges vérifiés : biais de résultat ☐ · biais rétrospectif ☐ · latence ☐ · coéquipiers/tueur accusés à tort ☐
````

## 7. Écarts avec le guide seed (conseils trop absolus corrigés ici)

| Élément | Le seed dit | Correction dans ce fichier | Verdict |
|---|---|---|---|
| Palette de shack | « Faites au moins deux tours de fenêtre avant de toucher à la palette » (ch. 2) | Dépend du tueur, du blocage au 3e vault, de l'état de santé : T-Q01, DR-03 | Trop absolu (déjà relevé par l'audit) |
| God pallet | « Une god pallet se garde (sauf dernier crochet ou fin de partie) » | Valeur maintenant vs plus tard ; blessé à 2 crochets : poser (E-T09) | Trop absolu |
| Dead zone | « Ne jamais partir vers une dead zone » | Traversée courte sur événement parfois correcte (E-D03, arbre 2.2) | Trop absolu |
| Sauvetage | « Le plus proche décroche, un seul, les autres réparent » (ch. 6-7) | Le meilleur sauveteur = celui dont l'absence coûte le moins et qui arrive au bon moment (E-I03, T-Q02) | Trop absolu (audit) |
| Proxy camp | « L'anti-facecamp décrochera l'allié » | Rien au-delà de 16 m (audit A-283, FACT) (E-I10) | FAUX |
| Hex | « Purifiez un Hex dès qu'il s'allume » | Évaluer effet × temps × risque (E-I09) | Trop absolu (audit) |
| Plague | « Soignez vite contre les infections » | Choix SITUATIONAL (fontaines, Corrupt Purge) (E-I02) | Trop absolu (audit) |
| Valeur de la chase | « 1 s de chase ≈ 1/3 de gen » (ch. 7) | ≈ 1/30 de gen avec 3 réparateurs séparés (audit A-267) (§0.3) | FAUX |
| Vault | « Le vault annule l'élan » | Faux pour le fast vault (audit A-059) (E-D02, E-D05) | FAUX |
| Hold W | « Contre les anti-loop, tenir W » | Tendance, pas règle : faux contre les tueurs à mobilité (E-T03) | Imprécis |
| Chase = succès | « Builds de chase ≈ 28 % → une belle poursuite ne sert à rien » | Corrélation ≠ causalité (audit A-122) (§5.4) | Donnée mal interprétée |

## Points à sourcer

- **Portée de fente et hitbox** : toutes les distances « à portée de fente » des arbres sont UNCERTAIN (audit : estimation communautaire). Un test en jeu (KYF, mesure en m sur une tile connue) ou une source technique serait nécessaire.
- **Effet d'un stun de palette sur la Bloodlust** : non documenté (audit UNCERTAIN) ; il conditionne une partie de Q6 (T-Q01). Test en jeu : chronométrer la vitesse du tueur après un stun sans casse.
- **Durée d'abaissement d'une palette** et **fenêtre exacte du stun** (~50 % d'abaissement selon le wiki) : nécessaires pour rendre TENIR/stun-drop quantitatif.
- **Angle toléré pour le fast vault** : non documenté (audit) ; DR-02 serait plus précis avec une valeur.
- **Récupération au sol « à l'arrêt »** (E-A10) : précision du wiki à vérifier en jeu.
- **Actions qui désactivent Will to Live / Off the Record** (E-I11) : reprises du seed, à vérifier au lot 2.
- **Liste des casses instantanées par pouvoir** : STRONG_SECONDARY, « à reconfirmer par le lot tueurs » (audit).
- **Notification de bruit sur skill check raté** (E-D06) : connaissance courante, non recoupée dans l'audit.
- **Mode Kill Your Friends / parties personnalisées** : existence et options (bots, réglages) utilisées par les drills : à vérifier.
- **Toutes les valeurs cibles §5.3 et durées §4.2** : aucune source ; idéalement confrontées à des données (NightLight ne donne pas ces métriques) ou à l'avis de coachs identifiables (à citer comme EXPERT OPINION seulement s'ils sont lus).
- **Seuil de « bonne chase » ~60 s** : formule courante dans la communauté, non sourcée ici.
- **Efficacité de la pratique délibérée appliquée à DBD** : principe général transposé, aucune étude spécifique.
- **Coût réel d'un sauvetage en secondes (20-40 s de trajet)** : dépend des cartes ; à mesurer en VOD sur un échantillon (lot 8/9).
- **[audit P14] Taux de base de l'anti-camp depuis 9.3.0** (CONFLICT-003) : sans lui, E-I04/E-I10/T-Q02 ne peuvent pas dire en combien de temps un face camp à 4 m / 10 m libère l'allié.
- **[audit P14] Contenu exact du HUD survivant** (icônes d'action des coéquipiers, jauge de crochet, icône de poursuite) : utilisé par E-D12, E-I04, DR-16, M-02 ; question ouverte n° 38 de l'audit.
- **[audit P14] Liste des pouvoirs qui font perdre la Bloodlust** (le wiki en donne une liste ; seule la règle générale a été lue) et **palette posée vs projectiles** (hachette, harpon du Deathslinger, chien du Houndmaster).
- **[audit P14] Effet du rampement sur la récupération au sol** (E-A10 vs lot 9 §2.8).

## Questions ouvertes

1. **PTB 10.2.0** : le Survivor Intent System (si LIVE début octobre 2026) change-t-il DR-16 (HUD SoloQ), T-Q02 (qui sauve) et les erreurs SoloQ (E-D12, E-A11) ? La refonte d'Abandon change-t-elle E-A10 ?
2. Les **58 perks modifiées** du PTB 10.2.0 changent-elles les cas « perk d'Exhaustion » (E-A05) ou les perks de protection (E-T01) ?
3. Faut-il des **arbres T-Q04 à T-Q07** complets (gen, totems, fin de partie, slug) dans ce lot ou au lot 9 (macro) ? Ici seuls T-Q02/T-Q03 sont esquissés.
4. Les critères de passage doivent-ils être **différenciés SoloQ / SWF** (les métriques d'équipe M-02, M-09, M-19 dépendent fortement du mode) ? — [audit P14] réponse provisoire : mesurés séparément contre une base du même mode (§4.1) ; des seuils distincts restent à définir.
5. Comment **classer objectivement** un coup « évitable » (M-05) pour que deux relecteurs obtiennent le même compte ? Une grille plus fine (avec exemples VOD) serait nécessaire — bloquée tant qu'aucune VOD n'a été analysée.
6. La **valeur de chase M-19** suppose que les coéquipiers « réparent » ; faut-il une version qui compte aussi les soins/sauvetages utiles ?
7. Le lot 7 (tiles) et le lot 8 (cartes) devront fournir les **tiles de référence** des drills DR-03/DR-04/DR-13 et la séparation fixe/RNG par carte.
8. Faut-il un **programme côté tueur** symétrique (le §34 vise le survivant ; DR-20 n'est qu'un drill de compréhension) ?
