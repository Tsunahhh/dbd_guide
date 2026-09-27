# 13. Base d'erreurs et arbres de décision

Ce chapitre rassemble deux outils de progression. Ils se complètent : la **base d'erreurs** sert à se diagnostiquer, les **arbres de décision** à décider en partie.

1. **La base d'erreurs** : 51 erreurs de survivant, classées du niveau débutant au niveau très avancé. Chacune suit le format **Erreur → Pourquoi → Punition → Correction → Drill**. On l'utilise en revue de partie : « quelle erreur m'a coûté cet état de santé ? »
2. **Les arbres de décision** : 9 arbres (palette, quitter la tile, crochet, soin, gen/99, totem, slug, endgame, trappe). Chacun ordonne les questions à se poser dans une situation donnée. Il comporte un schéma ASCII, une justification pour chaque feuille (action · pourquoi · risque · alternative) et ses variantes SoloQ / SWF.

> **À retenir** : aucune ligne de ce chapitre n'est une règle absolue. Chaque correction et chaque feuille dit **quand** elle s'applique, **ce qu'elle risque** et **quelle est l'alternative**. Un arbre ordonne des questions. Il ne donne pas « la » réponse.

**Version de référence** : LIVE 10.1.2a (17/09/2026), mode 1v4 uniquement (rien du 2v8 n'est transposé ici). Le PTB 10.2.0 (Survivor Intent System, refonte d'Abandon/Surrender, 58 perks modifiées) **n'est pas LIVE**. Rien ici n'en dépend. Les entrées qu'il pourrait changer portent la mention « à revoir après 10.2.0 ».

**Limite de fond** : les deux sources de ce chapitre (`kb/research/batch11_training.md`, `kb/deliverables/DECISION_TREES.md`) ont été rédigées et auditées **sans VOD, sans coach, sans statistique**. Les chiffres cités sont des valeurs vérifiées de l'audit phase 0 ou des notes officielles, avec leur confiance. Le reste est un raisonnement de joueur, étiqueté [HEURISTIQUE], [SITUATIONNEL] ou [HYPOTHÈSE]. Les seuils de rédacteur (délais, pourcentages de gen, distances) sont [INCERTAIN].

---

## 13.1 Conventions et constantes

### 13.1.1 Étiquettes utilisées dans ce chapitre

| Étiquette | Sens |
|---|---|
| **[FACT]** | Valeur vérifiée, suivie de sa confiance : **(VP)** note officielle · **(VM)** wiki + note / sources multiples · **(SS)** wiki seul · **(INC)** incertain |
| **calcul** | Arithmétique faite sur des [FACT], avec hypothèses simplificatrices (ligne droite, vitesses constantes, 100 % d'efficacité) |
| **[HEURISTIQUE]** | Règle pratique de joueur, utile en général, avec exceptions. **Toutes les corrections et toutes les feuilles sont heuristiques sauf mention contraire** |
| **[SITUATIONNEL]** | S'inverse selon le tueur, la carte ou l'état de partie |
| **[HYPOTHÈSE]** | Modèle plausible, non testé |
| **[AVIS D'EXPERT]** | Jugement stratégique repris des brouillons, **attribué à personne** (non sourcé) |
| **[INCERTAIN]** | Chiffre ou affirmation sans source vérifiée |
| `[SoloQ]` / `[SWF]` | Branche propre à un mode ; sans préfixe = valable dans les deux |

### 13.1.2 Les constantes qui reviennent partout

| Constante | Valeur LIVE | Confiance |
|---|---|---|
| Gen | 90 charges, +1 c/s → **90 s solo** ; à 2 / 3 / 4 réparateurs : ~52,9 / ~42,9 / ~40,9 s | (VM) valeur / (SS) coop |
| Skill check | raté : −10 % + 3 s sans progression ; Great : +1 % | (SS) |
| Coup de pied (kick) | −5 % puis −0,25 c/s ; il faut réparer **5 %** pour stopper la régression ; 8 regression events max par gen | (VM), 7.5.0 |
| Phase de crochet | **70 s** ; 3e accrochage = mort | (VP), 8.2.0 |
| Protections de décrochage | Endurance + 10 % Haste pendant 10 s + Elusive 10 s (Elusive absente une fois les portes alimentées) ; Endurance perdue sur action voyante | (VP) 10.1.0 / (SS) annulation |
| Anti-camp | rayon **16 m**, rien au-delà ; poids 4 m ×2,5 / 10 m ×1 / 15 m ×0,375 / 16 m ×0 ; ×2 après 10 s, ×4 après 20 s ; grâce de 7 s à chaque accrochage ; ralenti par les survivants à < 16 m ; coupé quand les portes sont alimentées ; **taux de base inconnu** depuis 9.3.0 | (VM) 16 m / (SS) poids / (INC) taux |
| Fin à 2 survivants | tous les survivants restants accrochés = sacrifice ; 2 skill checks de lutte manqués = mort ; Mori possible si l'un est en Struggle et l'autre au sol | (VP) 9.0.0 / 9.1.0 |
| Soin | 16 s par état ; Mangled +25 % de durée ; Deep Wound 20 s, mending 10 s seul / 6 s par un allié ; nombre max de soigneurs : 2 (wiki) ou 3 (seed) | (SS) / (VP) 8.6.0 / (INC) soigneurs |
| Au sol | récupération auto jusqu'à 95 % en 30,4 s (« à l'arrêt » selon le wiki) ; bleed-out 240 s | (VM) / (SS) |
| Vitesses | survivant 4,0 m/s ; tueurs 4,6 ou 4,4 m/s (Nurse 3,85) | (VM) |
| Coup | boost survivant 1,8 s ; cooldown tueur 2,7 s après un coup réussi, 1,5 s après un raté | (VP) / (VM) |
| Fenêtres | fast 0,5 s (≥ 2,5 m de course droite, garde l'élan, bruyant) · medium 0,9 s · slow 1,5 s ; tueur 1,7 s ; bloquée **30 s pour toi seul** après ton 3e vault de la même fenêtre dans la même poursuite | (SS) |
| Palettes | stun 2 s (palette abaissée à ~50 % au moins) ; casse **2,34 s** ; Enduring −40/45/50 % sur le stun | (VM) casse / (SS) |
| Bloodlust | +0,2 / +0,4 / +0,6 m/s à 15 / 25 / 35 s de poursuite ; perdue sur casse, coup réussi, ou usage des pouvoirs listés par le wiki ; effet d'un stun : non documenté | (VM) / (SS) / (INC) |
| Poursuite | fin : > 18 m, LOS perdue > 8 s, 5 s en casier… | (SS) |
| Totems | purification 14 s ; Boon 14 s (28 s sur un Hex) | (SS) |
| Portes / EGC | porte 20 s, progression conservée ; EGC 120 s, à moitié vitesse si un survivant est au sol ou accroché | (SS) |
| Match Details (9.6.0) | loadouts des coéquipiers visibles ; tueur révélé dès qu'un survivant entre en poursuite ou perd un état ; **loadout du tueur caché jusqu'à la fin** | (VP) |
| Corbeaux AFK | 80 / 100 / 120 s d'inactivité | (VP) 9.3.0 |

> **Erreur fréquente** : croire que les pouvoirs qui annulent une palette la cassent tous « instantanément ». La liste de l'audit phase 0 a été corrigée par l'errata : Knight (gardes) casse en 1,8 s ou 5 s ; Lich + Vorpal Sword casse en 4 s ; Mastermind et Good Guy ne cassent qu'avec un add-on (Lab Photo, Hard Hat) ; Shape, Executioner, Nemesis, Singularity et The First manquaient. Liste complète corrigée en §13.4 (E-A03).

### 13.1.3 L'économie en secondes (calculs à réutiliser)

- **Une seconde de poursuite** vaut les charges produites ailleurs pendant cette seconde. Avec 3 coéquipiers sur 3 gens différents, 3 c/s, soit **1/30 de gen par seconde** (audit A-267 : le « 1/3 de gen » du seed est faux). 60 s de chase donnent donc au plus ~2 équivalents-gen, et c'est un **plafond** (sans trajets, ratés, régression). Ces charges sont réparties sur 3 gens : il se peut qu'aucun ne soit terminé pendant la chase. Si l'équipe soigne, se cache ou marche pendant ce temps : ~0 gen.
- **Une palette cassée** : 2,34 s d'immobilité du tueur, soit ~9,4 m d'avance (4,0 × 2,34). Un tueur 4,6 m/s met ~15,6 s à refermer ces 9,4 m, un tueur 4,4 m/s ~23,4 s (calcul, ligne droite, sans fente ni Bloodlust : plafond théorique).
- **Un stun** : 2 s de gel (moins avec Enduring), puis souvent 2,34 s de casse ou un détour.
- **Un soin altruiste** : 16 s pour le soigné + 16 s pour le soigneur = 32 secondes-survivant ≈ **0,36 gen**. Un état de santé rapporterait ~12-30 s de chase [HYPOTHÈSE, lot 9 corrigé]. Le soin est rentable dans le cas idéal (3 alliés qui réparent), proche de l'équilibre avec 2 réparateurs, et perdant avec un trajet, contre un tueur à coup unique ou si le soigné n'est pas le prochain chassé.
- **Un état de crochet** : l'équipe dispose de 4 × 2 = 8 états « survivables » avant les morts. Chaque état perdu réduit la marge de tous.

> **Note avancée** : la valeur d'une seconde de chase est **brute**, pas contrefactuelle. Si tu n'étais pas poursuivi, le tueur mettrait la pression sur quelqu'un d'autre, et une partie de ces charges serait produite quand même. La durée de chase seule ne dit presque rien : juge une chase au **temps gagné par ressource consommée**.

---

## 13.2 Comment lire la base d'erreurs

- **Le niveau d'une erreur** est celui où elle devient le **principal frein**. Un joueur avancé peut encore commettre des erreurs débutant, mais elles ne sont plus ce qui le plafonne.
- **Tags de domaine** : `CHASE` · `TILE` · `MACRO` · `SOIN` · `CROCHET` · `SOLOQ` · `SWF` · `ENDGAME` · `COUNTER` (counterplay d'un tueur) · `INFO`.
- **Chaque correction dit quand elle ne s'applique pas.** Plusieurs erreurs vont par paires opposées (gaspiller une palette / la garder trop longtemps, soigner toujours / ne jamais soigner, quitter le gen trop tôt / trop tard). Corriger l'une en tombant dans l'autre n'est pas un progrès.
- **Drill** : chaque erreur renvoie à un exercice `DR-xx` (liste en §13.6). Le détail des drills, du programme et de la fiche de revue se trouve dans `kb/research/batch11_training.md` (§3 à §6) et `kb/deliverables/TRAINING_PROGRAM.md`.

**Méthode de revue en 3 questions** [HEURISTIQUE] :
1. Quel état ou quelle ressource ai-je perdu, et à quelle seconde ?
2. Quelle erreur de la base décrit la décision, **pas** le résultat ? Un coup reçu à cause de la latence n'est pas une erreur de décision (E-T08).
3. Quel drill la travaille, et sur combien de parties ?

---

## 13.3 Erreurs de niveau débutant [Débutant]

Quatorze erreurs. Elles portent sur la caméra, le pathing, la palette gaspillée, les réflexes de sauvetage et de soin, et la lecture de base du HUD.

### 13.3.1 Chase et tiles

| ID · tag | Erreur | Pourquoi on la fait | Punition | Correction (avec conditions) | Drill |
|---|---|---|---|---|---|
| **E-D01** · CHASE | Ne jamais regarder derrière soi | Réflexe naturel ; la musique de chase donne l'illusion de savoir où est le tueur | Coups « surprises » en sortie de coin ; palettes posées trop tard ou trop tôt ; le tueur coupe par l'intérieur de la tile | Regarder **aux moments utiles** : avant de s'engager sur une tile, sur les segments droits connus, au coin pour choisir le côté. **Pas** dans les 2-3 derniers mètres avant une fenêtre ou une palette (E-D02). Contre un tueur Undetectable, regarder plus souvent. Sans caméra : lire la red stain, émise par la tête du tueur [FACT (SS)], et les pas | DR-01 |
| **E-D02** · CHASE | Regarder derrière soi au mauvais moment (approche de fenêtre, palette, passage étroit) | On veut « vérifier » au moment le plus stressant ; le personnage dévie avec la caméra | Collision, vault en angle : **medium vault 0,9 s qui remet l'élan à zéro** au lieu d'un fast vault 0,5 s [FACT (SS)]. Perte de ~0,4 s + l'élan (calcul), souvent la différence entre un coup et rien | Aligner caméra et personnage **au moins ~2,5 m avant** la fenêtre (condition du fast vault, [FACT (SS)]), puis ne plus toucher la caméra jusqu'à la fin du vault. Check juste **après** le vault. Exception maîtrisée : check tardif volontaire sur une palette qu'on ne compte pas poser | DR-01, DR-02 |
| **E-D03** · TILE | Courir vers une dead zone (fuir « loin du tueur » sans savoir ce qu'il y a devant) | Réflexe de fuite ; carte mal connue | Terrain ouvert : le tueur 4,6 m/s reprend 0,6 m/s ; 10 m d'avance tiennent ~16 s (avec Bloodlust, sans fente), **~12-13 s avec une fente de 2-2,5 m** (valeur communautaire) ; bien moins contre un tueur à distance ou mobile | Repérer en permanence **les deux prochaines tiles** de repli. En chase, fuir vers la tile la plus forte *atteignable avant le coup*, même un peu plus près du tueur. Nuance : traverser une dead zone courte **sur un événement** (boost d'un coup, casse, vault, cooldown 2,7 s) est parfois correct. Tout est mort autour : jouer le temps (LOS, rochers, maïs, 360 contre M1) | DR-13, DR-04 |
| **E-D04** · TILE | Poser la palette dès que le tueur approche (palette gaspillée) | Peur du coup ; « palette = sécurité » au lieu de « palette = ressource limitée » | Casse (2,34 s) ou contournement ; zone épuisée ; les chases suivantes (souvent toi blessé, ou un coéquipier) se font sans ressource. Le coût est **différé**, donc invisible | Appliquer l'arbre Palette (§13.8). Le pre-drop est correct quand la tile ne tient pas autrement (filler, anti-loop, blessé à 2 crochets). Sinon, tenir la palette debout et la faire respecter. Excès inverse : greed incorrect (E-I01) et palette gardée jusqu'à tomber (E-T09) | DR-12, DR-03 |
| **E-D05** · CHASE | Vault en angle ou sans élan | On coupe la trajectoire pour « gagner du temps » | Medium vault 0,9 s au lieu de 0,5 s ; tueur à portée de fente à la réception | Arrondir l'approche **plus tôt** pour avoir ≥ 2,5 m de ligne droite : l'arc coûte moins que le medium vault. Contre un tueur qui vaulte lui-même (1,7 s), un fast vault raté ne se rattrape pas. Angle impossible : ne pas vaulter, continuer la tile | DR-02 |
| **E-D11** · COUNTER | Courir en ligne droite en terrain ouvert contre un tueur à distance (Huntress, Deathslinger, Trickster…) | Réflexe « distance » appris contre les M1 | Tir gratuit à distance moyenne, la zone la plus dangereuse contre la Huntress [HEURISTIQUE, lot 4] | Contre un ranged, la ressource est la **ligne de vue**, pas la distance : aller vers des murs hauts, changer de direction **au lâcher** du projectile, pas pendant tout l'armement. Contre un M1, la ligne droite vers une tile reste souvent correcte. Identifier le tueur d'abord | DR-15, DR-06 |

### 13.3.2 Gens, information, discrétion

| ID · tag | Erreur | Pourquoi on la fait | Punition | Correction (avec conditions) | Drill |
|---|---|---|---|---|---|
| **E-D06** · MACRO | Rater des skill checks par manque de préparation (son mal réglé, regard ailleurs) | Coût sous-estimé | −10 % (9 charges) + 3 s bloquées [FACT (SS)] ≈ **12 s perdues en solo** (calcul) ; à plusieurs, les 3 s bloquent tout le gen ; notification de bruit qui révèle ta position (connaissance courante, non recoupée) | Surveiller la jauge ; baisser la musique du jeu si besoin ; si des perks de skill checks difficiles sont suspectées, accepter le Good plutôt que viser le Great (+1 %). Ne pas cesser pour autant de lever la caméra (E-D08) | DR-14 |
| **E-D07** · MACRO | Se cacher alors que le tueur est loin | Peur ; « survivre = ne pas être vu » | 0 charge produite ; corbeaux AFK à 80 / 100 / 120 s d'inactivité [FACT (VP) 9.3.0] ; les 3 autres prennent toute la pression | Se cacher est un **outil** (tueur furtif proche, mauvais timing, dernier survivant), qui doit servir à reprendre un objectif dans les secondes suivantes. Tueur loin et occupé : réparer. Blessé et seul : se placer sur un gen proche d'une tile forte plutôt que se terrer | DR-16, DR-17 |
| **E-D08** · MACRO | Ne jamais lever la caméra en réparant | Concentration sur les skill checks | Tueurs furtifs (Shape, Ghost Face, Pig, Wraith, Good Guy, Slasher…) et tueurs à TR court (Huntress…) arrivent sans être vus : coup gratuit sur le gen | Rotations de caméra par intervalles, fréquentes contre un furtif suspecté, rares contre un TR normal [SITUATIONNEL]. Se placer du côté du gen qui offre la meilleure vue **et** la meilleure fuite vers une tile | DR-06, DR-14 |
| **E-D13** · INFO | Faire du bruit hors poursuite (fast vault inutile, course près du tueur) | « Le fast vault va plus vite » | Le fast vault est bruyant [FACT (SS)] ; les griffures restent 10 s [FACT (SS)] : le tueur remonte la piste | Près du tueur et hors chase : marcher, vault lent (1,5 s, sans notification de bruit fort, [FACT (SS)]). Loin du tueur, courir reste correct (gain de temps). Contre un tueur à perks d'aura, l'économie de bruit rapporte moins [SITUATIONNEL] | DR-01, DR-17 |
| **E-D14** · MACRO | Réparer à 3-4 sur le même gen en début de partie | Sentiment de sécurité ; la barre monte vite | À 4 : ~40,9 s pour 90 charges, soit ~2,2 c/s contre 4 c/s en solo [FACT (SS)] : **~45 % de production en moins** (calcul) ; un seul passage du tueur touche tout le monde | Se répartir sur des gens différents **en pensant à la géométrie** (E-I06). Réparer à 2 reste un bon choix de tempo pour finir vite un gen critique (dernier gen, gen menacé par une perk de régression). [SWF] Le « duo gen » est une décision d'équipe, pas un réflexe | DR-09 |

### 13.3.3 Crochet, soin, SoloQ

| ID · tag | Erreur | Pourquoi on la fait | Punition | Correction (avec conditions) | Drill |
|---|---|---|---|---|---|
| **E-D09** · CROCHET | Foncer décrocher sous les yeux du tueur | Envie d'aider ; on ignore que la phase dure 70 s [FACT (VP)] | Trade : le tueur frappe le sauveteur, ou remet au sol le décroché à la fin des 10 s d'Endurance ; deux survivants hors des gens ; parfois un double crochet | 70 s laissent presque toujours le temps d'attendre que le tueur **s'engage ailleurs** (chase lancée, TR qui s'éloigne, icône de chase d'un coéquipier). Décrocher tôt n'est correct que si le tueur est clairement parti ou si la phase se termine. Arbre Crochet (§13.10) | DR-10 |
| **E-D10** · SOIN | Soigner sous le crochet, juste après le décrochage | Réflexe « d'abord soigner » | Le tueur revient au crochet, l'endroit qu'il connaît ; le soin de 16 s est interrompu et les deux survivants sont blessés au même endroit. Soigner est une action voyante : l'Endurance du décroché tombe [FACT (SS)] | Quitter la zone du crochet (hors LOS, vers une tile ou un gen éloigné du tueur), **puis** décider du soin (arbre Soin). Exception [SITUATIONNEL] : tueur confirmé en chase loin et engagé (callout SWF ou HUD) | DR-10, DR-18 |
| **E-D12** · SOLOQ | Ignorer le HUD et les loadouts visibles des coéquipiers | Attention entièrement sur son propre écran | Doublons de sauvetage ou personne au crochet ; tu répares alors que le seul chaseur est au sol depuis 30 s | Lire les loadouts des coéquipiers en début de partie (visibles depuis 9.6.0, [FACT (VP)]) : qui a Kindred, We'll Make It, Borrowed Time, une lampe… Relire le HUD à chaque changement d'état. Défaut SoloQ : un coéquipier plus proche et déjà en mouvement va au crochet → rester sur son gen, puis **vérifier 10-15 s plus tard** qu'il y va vraiment. Limite : le contenu exact des icônes du HUD n'est pas vérifié [INCERTAIN]. À revoir après 10.2.0 (Survivor Intent System) | DR-16 |

> **À retenir (débutant)** : les erreurs débutant ont un point commun. On agit **au moment où l'on a peur** (palette posée trop tôt, vault en regardant derrière, décrochage immédiat, cachette), au lieu d'agir au moment où l'action rapporte le plus. La correction passe presque toujours par une question : « qu'est-ce qui arrive si j'attends 2 secondes ? »

**Variantes SoloQ / SWF (débutant)** :
- `[SoloQ]` E-D09 et E-D12 se combinent. Sans information, attendre un signe d'engagement du tueur (icône de chase au HUD, TR qui s'éloigne) est la seule protection contre le trade.
- `[SWF]` E-D09 disparaît en partie si l'accroché annonce le comportement du tueur (« il reste », « il part nord »). E-D14 devient un choix explicite (« on duo le gen du bas pour le finir avant son retour »).

Détail : `kb/research/batch11_training.md` §1.1.

---

## 13.4 Erreurs de niveau intermédiaire et avancé

### 13.4.1 Intermédiaire [Intermédiaire]

Quatorze erreurs, dont E-I14 ajoutée par l'audit P14. Le joueur sait boucler une tile. Il perd maintenant du temps par **mauvaise allocation** : greed, soins, sauvetages, géométrie des gens, protections gaspillées.

**Tiles et chase**

| ID · tag | Erreur | Pourquoi on la fait | Punition | Correction (avec conditions) | Drill |
|---|---|---|---|---|---|
| **E-I01** · TILE | Greed incorrect : un tour de plus autour d'une palette debout qu'on n'atteindra pas avant le coup | On a appris que greeder économise des palettes ; on surestime sa distance (la fente ajoute ~2 m, estimation communautaire [INCERTAIN]) ; on oublie la Bloodlust | Coup reçu à côté de la palette ; blessé → au sol avec la palette encore debout : **ressource perdue ET état perdu** | Greeder seulement si (a) tu vois le tueur ou lis sa red stain, (b) tu atteindras la palette avant sa portée de fente **même s'il coupe par le chemin court**, (c) un coup ne te coûte pas un crochet de trop. Contre un tueur anti-loop, greeder coûte souvent le coup. Dans le doute, **poser** : une palette perdue coûte moins qu'un état à 2 crochets | DR-12, DR-03 |
| **E-I07** · CHASE | Donner un coup gratuit (sortir côté tueur, rester sur une tile morte, vaulter vers un tueur qui attend à la réception) | Lecture tardive ; « panique vault » | Un état de santé contre 0 seconde gagnée ; la mise au sol suivante vient souvent 20-30 s plus tard [INCERTAIN] | Distinguer le **coup acheté** (atteindre une tile avec le boost de 1,8 s, protéger un décroché, body block qui libère un allié) du **coup donné**. Avant toute action risquée : « qu'est-ce que je gagne si je prends le coup ? » Si la réponse est « rien », ne pas le prendre, même au prix d'une palette | DR-12, DR-19 |
| **E-I12** · TILE | Compter sur une fenêtre déjà vaultée trois fois | On ne compte pas ses vaults | Après ton 3e vault de la même fenêtre dans une poursuite, elle est bloquée **30 s pour toi seul** [FACT (SS)] : mur, coup garanti | Compter 1-2-3 par fenêtre. Le 3e vault est permis, mais comme **vault de sortie** (quitter la tile ensuite, arbre §13.9). Alternative : utiliser la palette ou changer de tile avant le 3e | DR-03, DR-04 |

**Macro (gens, totems)**

| ID · tag | Erreur | Pourquoi on la fait | Punition | Correction (avec conditions) | Drill |
|---|---|---|---|---|---|
| **E-I06** · MACRO | Créer un 3-gen : faire d'abord les gens isolés et faciles, laisser trois gens proches pour la fin | On répare le gen le plus proche du spawn, sans vision globale | Le tueur défend trois gens en quelques secondes de trajet : parties longues, palettes épuisées. Le plafond de 8 regression events par gen [FACT (VM)] coûte aussi au tueur, mais le 3-gen reste le scénario perdant typique en SoloQ [HEURISTIQUE] | Dès le début, repérer le **triangle le plus serré** et en finir un gen tôt ; garder pour la fin des gens éloignés les uns des autres. Nuance [SITUATIONNEL] : si le triangle est dans une zone très riche en tiles, le finir tôt peut gaspiller la zone | DR-09 |
| **E-I08** · MACRO | « Taper » un gen pour stopper la régression | Habitude antérieure à la 7.5.0 | Depuis 7.5.0, il faut réparer **5 %** (≈ 4,5 s solo) pour stopper la régression [FACT (VM)] : un contact ne sert à rien | Rester ≥ 4,5 s (solo ; ~2,6 s à 2), ou ignorer le gen s'il est trop exposé. Un gen frappé puis laissé 20 s perd ~9,5 charges (−5 % du kick + 0,25 c/s, calcul corrigé P14) ; 60 s → ~19,5 charges. Parfois moins cher que de s'exposer | DR-09 |
| **E-I09** · MACRO | (a) Purifier tout Hex dès qu'il s'allume ; (b) ne jamais penser aux totems | (a) règle apprise sans son coût ; (b) oubli | (a) 14 s de purification [FACT (SS)] + trajet, parfois dans une zone surveillée ; (b) un Hex fort (Devour Hope à ses paliers, NOED en fin) décide la partie | Évaluer **effet sur l'équipe × temps restant × risque d'accès**. Un Hex qui touche la chase ou tue justifie un détour ; un Hex de ralentissement modéré vaut parfois moins qu'un gen. Purifier les totems ternes **croisés sur son chemin** réduit le risque NOED sans l'annuler. Boon sur un Hex : 28 s [FACT (SS)], plus lent mais laisse un Boon | DR-07, DR-11 |
| **E-I13** · MACRO | Emmener la poursuite vers ses coéquipiers et leurs gens | Réflexe grégaire ; on connaît mieux la zone qu'on vient de réparer | Le tueur découvre les réparateurs, peut changer de cible vers un blessé ou lancer un pouvoir multi-cibles (Legion, Plague…) ; gens abandonnés | Pré-choisir un « couloir de chase » loin des gens actifs. Exception : gen presque fini à côté d'une tile forte, ou seule zone riche de la carte. [SWF] l'annoncer ; [SoloQ] accepter le risque en connaissance de cause | DR-13, DR-09 |
| **E-I14** · MACRO | Quitter le gen trop tard (on attend de voir le tueur) ou trop tôt (au premier battement de cœur, alors qu'il ne vient pas) | On veut finir le pourcentage ; ou peur réflexe du TR | Trop tard : chase au contact, sans avance ni route (E-D03). Trop tôt : trajet aller-retour et coop perdus pour rien | Comparer **temps pour finir** (charges restantes / débit : 1 ; 1,7 ; 2,1 ; 2,2 c/s selon le nombre de réparateurs) et **temps d'arrivée du tueur** (un tueur 4,6 m/s qui entre dans un TR de 32 m t'atteint en ~7 s s'il vient droit sur toi, calcul ; TR 32 m = valeur historique avec beaucoup d'exceptions, (SS)). Si tu ne finis pas avant, pre-run **vers ta tile de repli** dès que le TR ou la red stain indique qu'il vient. Contre un furtif, le TR ne sert pas (E-D08) | DR-09, DR-13 |

**Crochet et soin**

| ID · tag | Erreur | Pourquoi on la fait | Punition | Correction (avec conditions) | Drill |
|---|---|---|---|---|---|
| **E-I02** · SOIN | Over-heal : se soigner à chaque blessure | L'état sain rassure ; le coût (~0,36 gen) est invisible | Un tiers de gen par soin. Contre un tueur à coup unique (Hillbilly, Cannibal, Oni en Fury…), l'état sain rapporte **moins**, mais pas rien : ces tueurs frappent aussi en M1 [SITUATIONNEL]. Le tueur qui revient pendant le soin trouve deux cibles | Soigner quand l'état sain **fait gagner plus de temps qu'il n'en coûte** : chase probable bientôt contre un M1, gens presque finis (tu seras chassé), med-kit disponible, **2 survivants restants** (soin presque toujours rentable). Reporter : tueur qui joue surtout ses coups uniques, gen à ~70-80 %+ à finir d'abord (seuil [INCERTAIN]), tueur qui arrive. Excès inverse : **ne jamais** soigner raccourcit chaque chase d'un palier. L'objectif est « 0 soin sans raison », pas « 0 soin ». Plague : purifier ou rester malade est [SITUATIONNEL] | DR-18 |
| **E-I03** · CROCHET | Surinvestir dans un sauvetage (2-3 survivants autour du crochet, ou attente de 40 s « au cas où ») | Peur de rater ; en SoloQ, personne ne sait qui y va | 2-3 c/s perdus pendant toute l'attente ; proxy camp qui en frappe un deuxième ; gens régressés | **Un** sauveteur, qui arrive au bon moment ; les autres réparent. Deux survivants près du crochet seulement pour un plan précis (protection hit juste après le décrochage, sauvetage contre un camp avec perk suspectée, surtout en SWF). Le « plus proche décroche » du seed est trop absolu : le meilleur sauveteur est celui **dont l'absence coûte le moins et qui arrive au bon moment** (pas celui en chase, à 2 crochets ou sur un gen à 90 %) | DR-10, DR-16 |
| **E-I04** · CROCHET | Mauvais timing de sauvetage : trop tôt (tueur à portée) ou trop tard (dernières secondes) | Impatience ; ou « je finis ce gen d'abord » sans compter | Trop tôt : trade ou double au sol. Trop tard : passage en phase 2 ou mort → l'équipe passe à 3 | Partir de manière à **arriver** pendant une fenêtre sûre, au plus tard ~10-15 s avant la fin de phase (marge [INCERTAIN]). Compter les 70 s ; en SoloQ, la jauge de crochet du HUD sert d'horloge (contenu du HUD [INCERTAIN]). L'anti-camp remplit la jauge seulement à < 16 m, d'autant plus lentement que le tueur est loin, et son taux de base est inconnu : **le temps de libération n'est pas calculable**. Attendre l'anti-camp est raisonnable contre un face camp **très proche**, pas comme plan par défaut | DR-10, DR-17 |
| **E-I05** · CROCHET | Faire prendre les risques au survivant à 2 crochets (chase, sauvetage risqué, body block) | Chacun joue « sa » partie sans compter les états des autres | L'équipe perd un joueur entier au lieu d'un état. Les portes s'alimentent après « survivants **au départ** + 1 » gens [FACT (SS)] : toujours 5 gens à 3 survivants, avec un réparateur de moins | **Quand c'est possible**, le survivant à 0 crochet prend sauvetages et chases de protection ; celui à 2 crochets joue les gens éloignés. Exceptions [SITUATIONNEL] : portes alimentées et survivant à 2 crochets seul à pouvoir arriver à temps ; survivant à 2 crochets qui est de loin le meilleur looper. À 2 survivants, un trade qui fait accrocher les deux en même temps = sacrifice des deux [FACT (VP) 9.1.0] | DR-17, DR-16 |
| **E-I10** · CROCHET | Croire que l'anti-camp décrochera un allié proxy-campé (tueur à 16-25 m) | Conseil faux du seed (audit A-283) | L'allié passe en phase 2 ou meurt sans que la jauge bouge | L'anti-camp n'agit qu'à < 16 m [FACT (VM)], faiblement près de 16 m (×0,375 à 15 m, (SS)), et ralentit si d'autres survivants sont proches. Contre un proxy : soit réparer **en sachant** que l'allié perd sa phase (tempo gagné), soit organiser un sauvetage (en SWF : un sauveteur + une distraction). Choix [SITUATIONNEL] selon gens restants et état de l'allié | DR-10 |
| **E-I11** · CROCHET | Gaspiller les protections de décrochage (réparer ou soigner dans les 10 s, courir vers le tueur) | Envie de rattraper le temps perdu au crochet | L'Endurance tombe sur action voyante [FACT (SS)] : un coup met alors au sol au lieu de donner Deep Wound. Elusive (10 s) gaspillée si tu restes en vue | Les 10 s servent à **s'éloigner hors LOS** (Haste 10 %, Elusive = pas de griffures, flaques ni grognements). Réparer seulement hors de portée et hors de piste. Coup reçu sous Endurance = Deep Wound (mending 10 s seul, 6 s avec un allié). Will to Live (40/50/60 s, stun 4 s, désactivée par les portes alimentées, (SS)) : les actions qui la désactivent sont reprises du seed, **à vérifier** [INCERTAIN] | DR-10 |

> **Erreur fréquente** : corriger E-I02 (over-heal) par « je ne me soigne plus jamais ». Le joueur qui ne soigne jamais raccourcit toutes ses chases suivantes d'un palier. La bonne question n'est pas « faut-il soigner ? » mais « cet état de santé servira-t-il dans une chase **avant** qu'un gen ne soit perdu ? ».

**Variantes SoloQ / SWF (intermédiaire)** :
- `[SoloQ]` E-I03 et E-I04 sont les erreurs SoloQ les plus coûteuses, parce que personne ne sait qui va au crochet. Défaut robuste : un seul sauveteur, choisi par l'arbre Crochet (CRO-1 à CRO-3), avec une vérification en route.
- `[SWF]` E-I03 devient un problème de protocole. Un shot-caller désigne un sauveteur avec son ETA ; les autres ne viennent que pour une distraction annoncée. E-I05 se règle à voix haute (« je suis à 2, je ne prends pas le save »).

Détail : `kb/research/batch11_training.md` §1.2.

### 13.4.2 Avancé [Avancé]

Onze erreurs. Le joueur tient des chases. Il perd maintenant de la valeur par **manque d'adaptation** : au tueur (anti-loop, red stain, Bloodlust), aux ressources de la carte, à la fin de partie.

| ID · tag | Erreur | Pourquoi on la fait | Punition | Correction (avec conditions) | Drill |
|---|---|---|---|---|---|
| **E-A01** · TILE | Rester trop longtemps sur une tile « perdue » (tueur posté au centre, palette cassée, fenêtre bloquée, Bloodlust haute) | Attachement à une tile qui « a marché » ; peur de l'espace suivant | Coup ou mise au sol « lente » : le tueur n'a plus qu'à attendre ton erreur ; 35 s sans casse ni coup = +0,6 m/s [FACT (VM)] | Arbre **Quitter la tile** (§13.9). Partir **sur un événement** : casse (2,34 s), stun (2 s), vault du tueur (1,7 s), cooldown après coup (2,7 s + ton boost de 1,8 s), usage de pouvoir, perte de LOS. Partir sans événement, tueur à 4 m = coup dans le dos | DR-13, DR-04 |
| **E-A02** · CHASE | Se fier aveuglément à la red stain | Indice fort et visible ; on oublie qu'elle suit **la tête**, pas les jambes | Un tueur qui marche à reculons ou de côté inverse la lecture [FACT (SS)] ; sous Undetectable, pas de red stain du tout | Croiser red stain + pas + TR + dernière position vue. Une red stain qui « hésite » sur une tile à murs hauts signale souvent un mindgame [HYPOTHÈSE]. Contre les tueurs souvent Undetectable (Shape, Ghost Face, Pig, Wraith…), jouer la vue directe par les trous des murs | DR-05 |
| **E-A03** · COUNTER | Jouer les palettes comme contre un M1 face à un tueur qui les annule (voir liste corrigée sous le tableau) | Loop « standard » non adapté | La palette « respectée » n'existe plus **tant que le pouvoir est disponible** ; Oni hors Fury, Demogorgon en recharge ou casseur par add-on sans l'add-on redeviennent des M1 face à la palette. Contre un ranged, une palette basse ne bloque pas une hachette lancée par-dessus (Huntress : non vérifié [INCERTAIN]) | La palette sert alors à **gagner des mètres par le stun ou le pre-drop** (détour forcé, pouvoir utilisé au mauvais moment, ce qui coupe la Bloodlust pour les pouvoirs listés par le wiki). **Blight** : casser une palette au sol lui coûte des tokens de Rush depuis 9.6.0 [FACT (VP)], donc le pre-drop reste rentable. Un pre-drop qui ne force ni détour ni pouvoir est une palette gaspillée : alors QUITTER ou jouer la LOS. Contre les ranged : murs hauts plutôt que palette | DR-15 |
| **E-A04** · CHASE | Ignorer la Bloodlust : faire durer une chase sur une tile faible sans jamais la « remettre à zéro » | « Palette posée = palette perdue » | À 35 s, +0,6 m/s : un tueur 4,6 court à 5,2 m/s ; les boucles « safe » deviennent unsafe | Autour des seuils 15/25/35 s, une palette qui oblige à **casser** remet la Bloodlust à zéro [FACT] ; un coup reçu aussi. Effet d'un stun : non documenté [INCERTAIN]. Autre option : casser la poursuite (LOS perdue > 8 s, distance > 18 m). Contre-jeu : un tueur averti **contourne** une palette faible pour garder sa Bloodlust. La pose ne remet à zéro que s'il casse | DR-12, DR-19 |
| **E-A05** · CHASE | Utiliser une perk d'Exhaustion au mauvais moment (dès le début, ou jamais) | Panique ou avarice | Trop tôt : distance vers nulle part, puis perk indisponible (Exhausted ne récupère pas en courant, (SS)). Trop tard : mort avec la ressource | L'utiliser pour **atteindre une zone riche** ou **sauver un état qui coûte un crochet**. Chaque perk a son timing (chapitre perks) ; ne jamais la déclencher vers une dead zone | DR-13, DR-19 |
| **E-A06** · CROCHET | Ne pas protéger le décroché (ou le faire mal) : partir dans la même direction, ou le laisser seul | Sauvetage considéré comme « fini » au décrochage | Le tueur retrouve les deux ensemble, ou tunnelle le décroché à la fin des 10 s. En LIVE, rien au-delà des protections de base ne l'en empêche : les anti-tunnel des PTB 9.2.0/9.3.0 n'ont jamais été mis en live [FACT (VP)] | Le sauveteur (sain, crochets bas) **se place entre le tueur et le décroché** et accepte un coup de protection (coup acheté, E-I07) ; les deux partent dans des directions différentes. Si le tueur ignore le sauveteur : prendre la chase en restant visible, body block dans un couloir. Ne pas « tanker » si tu es toi-même à 2 crochets | DR-10 |
| **E-A07** · TILE | Épuiser les ressources de la zone dès la première chase (4-5 palettes pour une chase de 90 s) | Durée de chase vécue comme seul objectif | Zone épuisée, souvent celle des derniers gens (base d'un 3-gen) ; les coéquipiers chassés plus tard n'ont plus rien | Évaluer une chase en **temps gagné / ressources consommées**. Au-delà d'une ou deux palettes pour un seul état de santé, se demander si prendre le coup et utiliser le boost aurait coûté moins. Pas une règle : contre un tueur fort en début de partie, une longue chase coûteuse peut valoir 2-3 gens | DR-12, DR-19 |
| **E-A08** · INFO | Ne pas tenir la carte des ressources (fuir vers une zone déjà vidée) | On ne mémorise que ses propres chases | Dead zone découverte au dernier moment | Mémoriser (ou annoncer en SWF) les palettes cassées ou posées vues, les casses entendues (le son porte loin, observation non chiffrée) ; mettre à jour sa route de repli | DR-17, DR-08 |
| **E-A09** · ENDGAME | Traîner à la porte ouverte (attendre, provoquer) | Envie de « finir en beauté » ; attente d'un coéquipier sans plan | Blood Warden bloque les portes 40/50/60 s si un survivant est accroché (SS) ; NOED/Exposed transforment un coup en mise au sol ; sacrifice offert | Sortir dès que ta présence n'apporte plus rien. Rester seulement pour un plan (sauvetage possible, body block, soin d'un allié qui va sortir). L'EGC (120 s, à moitié vitesse si quelqu'un est au sol ou accroché) laisse le temps d'un sauvetage **si** le tueur est loin | DR-11 |
| **E-A10** · ENDGAME / SOIN | Mal gérer l'état au sol : ramper sans arrêt, ou tous les survivants qui foncent relever pendant que le tueur rôde | Impatience ; récupération automatique (9.2.0) méconnue | Pas de récupération (elle se fait « à l'arrêt » selon le wiki, (SS)) ; le tueur qui slug frappe les sauveteurs l'un après l'autre | Sans menace immédiate, rester immobile pour récupérer (95 % en 30,4 s, (VM)). Si un allié vient, ramper vers lui raccourcit son trajet ; si personne ne vient ou si le tueur rôde, récupérer sur place. Aucune des deux n'est une règle ; l'effet du rampement sur la récupération est à tester [INCERTAIN]. Pour relever : **un seul** survivant, quand le tueur est engagé ailleurs. Surrender (8.6.0) et Abandon (9.2.0) existent ; refonte au PTB 10.2.0 | DR-11, DR-17 |
| **E-A11** · SOLOQ | Supposer ce que les coéquipiers vont faire | Habitudes SWF transposées | Personne au crochet (passage en phase 2), ou tout le monde | Raisonner en **probabilités** : un coéquipier qui ne bouge pas vers le crochet 10-15 s après l'accrochage n'ira probablement pas [HEURISTIQUE]. Lire les perks visibles (Kindred, Bond…). Préférer l'**option robuste**, celle qui reste bonne si le coéquipier fait l'inverse de ce que tu crois | DR-16 |

**Liste corrigée des pouvoirs qui annulent une palette** (E-A03), d'après `kb/research/batch7_tiles.md` §5.2 et l'errata phase 0, qui prime sur l'audit :

| Catégorie | Tueurs (condition) |
|---|---|
| Casse par pouvoir de base | Hillbilly et Cannibal (tronçonneuse, 1 s) · Demogorgon (Shred) · Oni (en Blood Fury) · Blight (Lethal Rush, casse qui lui coûte des tokens depuis 9.6.0) · Dark Lord (bond en loup) · Shape (Evil Incarnate) · Nemesis (Tentacle Strike, Mutation Rate 2+) · Singularity (palette baissée sur lui en Overclock) |
| Casse **non instantanée** | Knight : un garde casse sur ordre en **1,8 s ou 5 s** ; depuis 10.1.1, une palette baissée pendant une Hunt force le garde à contourner (abandon si le détour dépasse 48 m) [FACT (VP) 10.1.1] · Lich : Mage Hand **relève** une palette baissée ou bloque une palette levée ; avec **Vorpal Sword**, casse en **4 s** |
| Franchit sans casser (casse seulement avec add-on) | Legion (Frenzy ; casse : Iridescent Button) · Mastermind (Virulent Bound ; casse : **Lab Photo**) · Ghoul (Kagune Leap ; casse au 3e bond : Iridescent Eye Patch) · Good Guy (Scamper de 1 s **sous** la palette en 1v4 ; casse : **Hard Hat**, la casse de base est propre au 2v8) · Krasue en Head Form (vault 1,9 s, pas de casse) |
| Casse par add-on seulement | Executioner (Obsidian Goblet) · The First (Shattered Wrist Rocket) |

> **Note avancée** : trois cas **différents** contre un tueur qui agit sur les palettes [HEURISTIQUE, lot 7]. (1) **La casse lui coûte** (Blight) : le pre-drop reste rentable. (2) **Son pouvoir punit l'attente** à la palette (Doctor, Cannibal, Nemesis MR2+, Mastermind, Lich) : pre-drop **puis départ immédiat**, pas « pre-drop puis tenir ». (3) **La casse est gratuite** (Demogorgon Shred, Oni en Fury, Ghoul avec tokens, Dark Lord en loup) : la palette vaut surtout le stun. Contre un casseur par add-on, identifier l'add-on avant de changer de plan : la plupart des tueurs de la liste ne l'ont pas.

**Variantes SoloQ / SWF (avancé)** :
- `[SoloQ]` E-A11 est l'erreur centrale : la bonne décision est celle qui reste correcte **quoi que fassent les autres**. E-A08 est plus dur : tu ignores quelles palettes les autres ont utilisées, donc la « palette suivante » est moins sûre.
- `[SWF]` E-A08 se résout par les callouts (« palette du shack cassée »). E-A06 se prépare : le sauveteur annonce qu'il prendra le coup de protection, le décroché annonce sa direction.

Détail : `kb/research/batch11_training.md` §1.3 ; `kb/research/batch7_tiles.md` §5.2.

---

## 13.5 Erreurs de niveau très avancé [Expert]

Douze erreurs. Le joueur maîtrise l'exécution. Il perd maintenant de la valeur sur des **arbitrages d'équipe** (trade, moment où casser la chase, 3-gen) et sur l'**information** (perk deduction, add-ons, latence, callouts).

| ID · tag | Erreur | Pourquoi on la fait | Punition | Correction (avec conditions) | Drill |
|---|---|---|---|---|---|
| **E-T01** · CROCHET | Hook trade sans valeur : décrocher avec le tueur proche en comptant sur un trade qui ne rapporte rien | Le trade semble « neutre » ; il consomme pourtant un état de crochet et fait gagner du trajet au tueur | Un état de crochet et ~30-60 s de gens perdus [INCERTAIN] ; effet en plus si le tueur a des perks d'accrochage (Pain Resonance, Grim Embrace…) | Trade **généralement** justifié si : l'allié va perdre sa phase sinon ; le risque passe à un survivant plus « riche » (0 crochet, sain, ressource de chase proche) ; les 2 autres réparent déjà (même un trade raté achète une chase). Refuser : sauveteur blessé, dead zone autour du crochet, tueur à coup unique prêt, **2 survivants restants** (tous accrochés = sacrifice, Mori à 2 [FACT (VP)]). Sinon attendre ou distraire | DR-10, DR-19 |
| **E-T02** · INFO | Ne pas mettre à jour sa perk deduction (jouer comme si le tueur n'avait aucune perk, ou garder une hypothèse infirmée) | Le loadout du tueur est caché jusqu'à la fin [FACT (VP) 9.6.0] : il faut le déduire | Gen qui explose au prochain accrochage ; zone « tracée » par une perk d'aura ; surprise en endgame | Tenir un journal d'indices : effet observé → perk candidate → conséquence pratique. Réviser à chaque indice ; vérifier à l'écran de fin. Préparer la réponse **la plus coûteuse à ignorer** (en endgame : jouer comme si NOED était possible tant qu'il reste des totems ternes). Voir le chapitre perk deduction | DR-07 |
| **E-T03** · CHASE | Choisir le mauvais mode : boucler contre un tueur qui y gagne, ou « hold W » vers le vide contre un M1 alors qu'une tile forte est à côté | Un seul mode appris | Loop contre un anti-loop = coup rapide ; hold W vers le vide contre un M1 = coup au bout de ~16 s pour 10 m d'avance (~12-13 s avec fente) | Le choix dépend de la **distance au contact** et du **type de tueur**. À grande distance contre un tueur lent (4,4 m/s, sans mobilité) : tenir la distance **vers** des ressources. Au contact contre un M1 : boucler. Contre un casseur de palettes : enchaîner les LOS. « Hold W contre anti-loop » (seed) est vrai en tendance, **faux** contre un tueur mobile qui te rattrape en ligne droite (Blight, Nurse) [SITUATIONNEL] | DR-15, DR-13 |
| **E-T04** · CHASE | Réagir à la première feinte (changer de côté au premier mouvement du tueur) | On veut lire le tueur trop vite | Fausse avance, double-back : coup gratuit. À haut niveau, un survivant « prévisible dans sa réaction » est aussi exploitable qu'un survivant passif | S'engager au **dernier moment sûr** (la plus longue attente possible sans perdre l'accès à la ressource) ; préférer les positions qui gardent deux options (palette ET fenêtre en vue). [HYPOTHÈSE] La lecture précoce paie contre un tueur inexpérimenté et coûte contre un bon : adapter après 2-3 interactions | DR-05, DR-03 |
| **E-T05** · MACRO | Casser la poursuite au mauvais moment : disparaître alors que l'équipe a besoin que le tueur reste occupé, ou rester visible blessé à 2 crochets quand les autres sont en sécurité | On optimise sa survie au lieu du temps d'équipe | Le tueur libéré retourne aux gens, au crochet ou vers un blessé : l'équipe perd plus que ce que tu as sauvé | Question : « que fait le tueur si je disparais maintenant ? » Sain et crochets bas : rester « chassable » sans donner de coup est souvent plus utile. Blessé à 2 crochets avec un gen critique ailleurs : disparaître est souvent mieux. [SITUATIONNEL] par définition | DR-19, DR-17 |
| **E-T06** · MACRO | Détecter le 3-gen trop tard (seulement à 3 gens restants) | Pas de plan initial (E-I06), ou plan non revu | Défense concentrée ; chaque retour du tueur repousse un gen | À **4 gens restants**, vérifier la géométrie : lequel faire pour ne pas laisser un triangle serré ? Accepter un gen « moins confortable ». Si le 3-gen est acquis : duo dès qu'il part, split sur deux gens du triangle pendant qu'un troisième tient la chase, garder les palettes de la zone. Le plafond de 8 events par gen est un fond de décor : « le forcer à les épuiser » **n'est pas un plan** (8 × 3 gens) | DR-09 |
| **E-T07** · ENDGAME | Dernier survivant : trappe contre porte mal arbitrées | Pas de scénario pré-appris | Le tueur ferme la trappe (→ EGC 120 s) et garde la porte la plus proche ; 20 s d'ouverture à découvert | **Avant** d'être seul : savoir où sont les portes, si l'une a de la progression (conservée [FACT (SS)]) et où la trappe est probable. Une fois seul, si la trappe est fermée : porte **la plus éloignée du tueur**, ouverture par étapes si besoin, en exploitant son trajet entre les portes. Arbre Trappe (§13.16) | DR-11 |
| **E-T08** · CHASE | Jouer les vaults et les poses « au pixel » en croyant l'écran | On croit que ce qu'on voit est la vérité serveur | Si la connexion du tueur est bonne, le coup est validé par **son client** [FACT (VP), principe] ; la latence cumulée le favorise (observation communautaire) : « touché derrière la palette » | Garder une marge sur les actions serrées (valeur [INCERTAIN], dépend du ping), surtout si le tueur semble avoir un ping élevé. Accepter que certains coups « injustes » fassent partie du jeu, et **ne pas en tirer de mauvaises leçons en revue** | DR-12, DR-19 |
| **E-T09** · TILE | Garder une palette forte « pour plus tard » jusqu'à tomber avec | Excès inverse du gaspillage (« une god pallet se garde », seed) | Au sol à côté d'une palette debout : ressource inutilisée ET état perdu ; le tueur la casse ensuite en passant | Une palette vaut ce qu'elle protège **maintenant** comparé à ce qu'elle protégera plus tard (probabilité qu'elle serve × valeur future). Blessé à 2 crochets, il n'y a pas de « plus tard » : poser. Sain en début de partie : la faire respecter longtemps est souvent mieux. On la garde **tant que la garder ne coûte pas d'état et qu'une autre ressource (fenêtre, LOS) travaille à sa place** | DR-12 |
| **E-T10** · COUNTER | Ne pas adapter son jeu aux add-ons observés | On identifie le tueur, pas ses add-ons | Tu comptes des munitions qu'il n'a pas ; tu « tankes » un tir qui met au sol | Pour chaque tueur, connaître 2-3 signes d'add-ons qui changent la décision et changer de plan au premier signe. Exemple Huntress : la base est de **7 hachettes** depuis 7.6.0 [FACT (SS)] (errata phase 0) ; plus de hachettes sans recharger, ou une hachette qui met au sol d'un coup, signalent un add-on [INCERTAIN]. Voir le chapitre counterplay par tueur | DR-06, DR-15 |
| **E-T11** · SOIN | Mal gérer Deep Wound ou les soins sous pression d'un tueur à statut | Deep Wound traité comme une blessure normale | À zéro, état mourant ; un dégât sous Deep Wound = au sol même avec Endurance [FACT (VP)] | Le timer (20 s) est en pause quand tu cours [FACT] : courir hors de la zone, puis mending hors de vue (10 s seul, 6 s avec un allié). Contre Legion, éviter d'être groupé : le mending à deux fait gagner 4 s mais expose deux survivants | DR-18, DR-15 |
| **E-T12** · SWF | Callouts trop nombreux ou imprécis (« il est là ! ») | Confusion entre communiquer et informer | L'équipe ne distingue plus l'essentiel ; décisions retardées ; bruit qui couvre l'audio du jeu en pleine chase | Grammaire fixe **qui / quoi / où / état / intention**, en ≤ 5 mots pendant une chase ; le chaseur parle peu ; un seul joueur fait le point des gens environ chaque minute [HEURISTIQUE] | DR-08 |

> **À retenir (très avancé)** : à ce niveau, la plupart des erreurs viennent d'une question mal posée. On se demande « comment survivre à cette chase ? » au lieu de « quel usage de mon temps et de mes états rapporte le plus à l'équipe ? ». E-T01, E-T05 et E-T06 sont trois versions de la même faute.

**Variantes SoloQ / SWF (très avancé)** :
- `[SoloQ]` E-T05 est plus difficile : tu ne sais pas si les autres sont en sécurité. Par défaut, rester chassable quand tu es sain et que le HUD montre des coéquipiers sur les gens. E-T01 : un trade en SoloQ suppose que personne d'autre ne vient, donc compter les états **réellement** offerts.
- `[SWF]` E-T12 est la seule erreur propre au SWF dans la base. C'est une lacune connue (§13.17) : les erreurs de coordination SWF sont sous-représentées.

Détail : `kb/research/batch11_training.md` §1.4.

---

## 13.6 Index de la base d'erreurs

### 13.6.1 Par domaine

| Domaine | Débutant | Intermédiaire | Avancé | Très avancé |
|---|---|---|---|---|
| CHASE | E-D01, E-D02, E-D05 | E-I07 | E-A02, E-A04, E-A05 | E-T03, E-T04, E-T08 |
| TILE | E-D03, E-D04 | E-I01, E-I12 | E-A01, E-A07 | E-T09 |
| MACRO | E-D06, E-D07, E-D08, E-D14 | E-I06, E-I08, E-I09, E-I13, E-I14 | — | E-T05, E-T06 |
| CROCHET | E-D09 | E-I03, E-I04, E-I05, E-I10, E-I11 | E-A06 | E-T01 |
| SOIN | E-D10 | E-I02 | E-A10 | E-T11 |
| COUNTER | E-D11 | — | E-A03 | E-T10 |
| ENDGAME | — | — | E-A09, E-A10 | E-T07 |
| INFO | E-D13 | — | E-A08 | E-T02 |
| SOLOQ / SWF | E-D12 | — | E-A11 | E-T12 |

Total : 14 + 14 + 11 + 12 = **51 erreurs** (E-A10 porte deux tags).

### 13.6.2 Paires d'erreurs opposées

| Excès « trop peu » | Excès « trop » | Juste milieu (arbre) |
|---|---|---|
| E-D04 palette gaspillée | E-I01 greed, E-T09 palette gardée | Arbre Palette |
| E-I02 over-heal | « ne jamais soigner » (E-I02, excès inverse) | Arbre Soin |
| E-D09 / E-I04 sauvetage trop tôt | E-I04 sauvetage trop tard | Arbre Crochet |
| E-I14 quitter le gen trop tôt | E-I14 quitter le gen trop tard | Arbre Gen |
| E-A01 rester sur une tile perdue | partir sans événement (E-A01) | Arbre Quitter la tile |
| E-I09 (a) purifier tout Hex | E-I09 (b) ignorer les totems | Arbre Totem |
| E-T05 disparaître trop tôt | E-T05 rester visible trop longtemps | Revue de partie |

### 13.6.3 Drills référencés

| Drill | Objet | Drill | Objet |
|---|---|---|---|
| DR-01 | Caméra sans casser le pathing | DR-11 | Endgame (portes, trappe, EGC) |
| DR-02 | Fast vault | DR-12 | Décision de palette à voix haute |
| DR-03 | Shack (tile unique) | DR-13 | Route planning / enchaînement de tiles |
| DR-04 | Jungle gym | DR-14 | Skill checks et fondamentaux audio |
| DR-05 | Red stain et lecture d'approche | DR-15 | Counterplay d'un tueur (une session = un tueur) |
| DR-06 | Identification du tueur et de ses add-ons | DR-16 | Lecture du HUD en SoloQ |
| DR-07 | Perk deduction | DR-17 | Comptage (horloge mentale) |
| DR-08 | Callouts (SWF) | DR-18 | Décision de soin |
| DR-09 | Rotation de gens / anti-3-gen | DR-19 | Revue de partie |
| DR-10 | Sauvetage (timing, approche, protection) | DR-20 | Jouer tueur (changement de rôle) |

Tous les seuils de réussite des drills sont [HEURISTIQUE] / [INCERTAIN]. Ils mesurent un progrès **par rapport à ta propre base**, pas par rapport aux autres. Détail : `kb/research/batch11_training.md` §3.
