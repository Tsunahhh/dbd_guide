# 13. Base d'erreurs et arbres de décision

Deux outils complémentaires : la **base d'erreurs** (51 erreurs de survivant, du débutant au très avancé, au format **Erreur → Pourquoi → Punition → Correction → Drill**) sert à se diagnostiquer en revue ; les **9 arbres de décision** (palette, quitter la tile, crochet, soin, gen/99, totem, slug, endgame, trappe) servent à décider en partie. Chaque arbre a un schéma ASCII, une justification par feuille et ses variantes SoloQ / SWF.

> **À retenir** : aucune ligne de ce chapitre n'est une règle absolue ; chaque correction et chaque feuille donne sa condition, son risque et son alternative.

**Version de référence** : LIVE 10.1.2a (17/09/2026), mode 1v4 uniquement (rien du 2v8 n'est transposé ici). Le PTB 10.2.0 (Survivor Intent System, refonte d'Abandon/Surrender, 58 perks modifiées) **n'est pas LIVE**. Rien ici n'en dépend. Les entrées qu'il pourrait changer portent la mention « à revoir après 10.2.0 ».

**Limite de fond** : les sources de ce chapitre ont été rédigées et auditées **sans VOD, sans coach, sans statistique**. Seuls les chiffres marqués [FACT] sont vérifiés ; le reste est un raisonnement de joueur, et les seuils de rédacteur (délais, pourcentages, distances) sont [INCERTAIN].

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
| Coup de pied (kick) | −5 % puis −0,25 c/s ; il faut réparer **5 %** pour stopper la régression ; 8 regression events max par gen | (VM), 7.5.0 |
| Phase de crochet | **70 s** ; 3e accrochage = mort | (VP), 8.2.0 |
| Protections de décrochage | Endurance + 10 % Haste pendant 10 s + Elusive 10 s (Elusive absente une fois les portes alimentées) ; Endurance perdue sur action voyante | (VP) 10.1.0 / (SS) annulation |
| Anti-camp | rayon **16 m**, rien au-delà ; poids 4 m ×2,5 / 10 m ×1 / 15 m ×0,375 / 16 m ×0 ; ×2 après 10 s, ×4 après 20 s ; grâce de 7 s à chaque accrochage ; ralenti par les survivants à < 16 m ; coupé quand les portes sont alimentées ; taux nominal +1 c/s (CONFLICT-003 résolu) → face camp ≤ 4 m ≈ **22,5 s de jauge** (≈ 29,5 s après l'accrochage), 10 m ≈ 37,5 s, 15 m ≈ 79 s (calcul, ±10 %) | (VM) 16 m / (SS) poids et taux |
| Fin à 2 survivants | tous les survivants restants accrochés = sacrifice ; 2 skill checks de lutte manqués = mort ; Mori possible si l'un est en Struggle et l'autre au sol | (VP) 9.0.0 / 9.1.0 |
| Soin | 16 s par état ; Mangled +25 % de durée ; Deep Wound 20 s, mending 10 s seul / 6 s par un allié ; **2 soigneurs max en 1v4** (3 = 2v8 seulement, CONFLICT-001 résolu) | (SS) / (VP) 8.6.0 / (VM) soigneurs |
| Vitesses | survivant 4,0 m/s ; tueurs 4,6 ou 4,4 m/s (Nurse 3,85) | (VM) |
| Coup | boost survivant 1,8 s ; cooldown tueur 2,7 s après un coup réussi, 1,5 s après un raté | (VP) / (VM) |
| Fenêtres | fast 0,5 s (≥ 2,5 m de course droite, garde l'élan, bruyant) · medium 0,9 s · slow 1,5 s ; tueur 1,7 s ; bloquée **30 s pour toi seul** après ton 3e vault de la même fenêtre dans la même poursuite | (SS) |
| Palettes | stun 2 s (palette abaissée à ~50 % au moins) ; casse **2,34 s** ; Enduring −40/45/50 % sur le stun | (VM) casse / (SS) |
| Bloodlust | +0,2 / +0,4 / +0,6 m/s à 15 / 25 / 35 s de poursuite ; perdue sur casse, coup réussi, ou usage des pouvoirs listés par le wiki ; effet d'un stun : non documenté | (VM) / (SS) / (INC) |

> **Erreur fréquente** : croire que tous les pouvoirs qui annulent une palette la cassent « instantanément ». Liste corrigée par l'errata en §13.4 (sous E-A03).

### 13.1.3 L'économie en secondes (calculs à réutiliser)

- **Une seconde de poursuite** vaut les charges produites ailleurs pendant cette seconde : avec 3 coéquipiers sur 3 gens différents, **1/30 de gen par seconde** (le « 1/3 » du seed est faux, A-267). 60 s de chase ≈ 2 équivalents-gen au **plafond** (sans trajets, ratés ni régression), répartis sur 3 gens ; ~0 si l'équipe soigne ou se cache.
- **Une palette cassée** : 2,34 s d'immobilité du tueur, soit ~9,4 m d'avance (4,0 × 2,34). Un tueur 4,6 m/s met ~15,6 s à refermer ces 9,4 m, un tueur 4,4 m/s ~23,4 s (calcul, ligne droite, sans fente ni Bloodlust : plafond théorique).
- **Un soin altruiste** : 16 s pour le soigné + 16 s pour le soigneur = 32 secondes-survivant ≈ **0,36 gen**. Un état de santé rapporterait ~12-30 s de chase [HYPOTHÈSE, lot 9 corrigé]. Le soin est rentable dans le cas idéal (3 alliés qui réparent), proche de l'équilibre avec 2 réparateurs, et perdant avec un trajet, contre un tueur à coup unique ou si le soigné n'est pas le prochain chassé.
- **Un état de crochet** : l'équipe n'a que 4 × 2 = 8 états « survivables » avant les morts.

> **Note avancée** : cette valeur est **brute** : sans toi, le tueur presserait quelqu'un d'autre. Juge une chase au **temps gagné par ressource consommée**, pas à sa durée.

---

## 13.2 Comment lire la base d'erreurs

- **Le niveau d'une erreur** est celui où elle devient le **principal frein** (un joueur avancé commet encore des erreurs débutant, mais elles ne le plafonnent plus).
- **Tags de domaine** : `CHASE` · `TILE` · `MACRO` · `SOIN` · `CROCHET` · `SOLOQ` · `SWF` · `ENDGAME` · `COUNTER` (counterplay d'un tueur) · `INFO`.
- **Chaque correction dit quand elle ne s'applique pas.** Plusieurs erreurs vont par paires opposées (§13.6.2) : corriger l'une en tombant dans l'autre n'est pas un progrès.
- **Drill** : chaque erreur renvoie à un exercice `DR-xx` (liste en §13.6). Le détail des drills, du programme et de la fiche de revue se trouve dans `kb/research/batch11_training.md` (§3 à §6) et `kb/deliverables/TRAINING_PROGRAM.md`.

**Revue en 3 questions** [HEURISTIQUE] : quel état ou quelle ressource ai-je perdu, à quelle seconde ? Quelle erreur décrit la **décision**, pas le résultat (un coup dû à la latence n'en est pas une, E-T08) ? Quel drill la travaille ?

---

## 13.3 Erreurs de niveau débutant [Débutant]

Quatorze erreurs. Elles portent sur la caméra, le pathing, la palette gaspillée, les réflexes de sauvetage et de soin, et la lecture de base du HUD.

### 13.3.1 Chase et tiles

| ID · tag | Erreur | Pourquoi on la fait | Punition | Correction (avec conditions) | Drill |
|---|---|---|---|---|---|
| **E-D01** · CHASE | Ne jamais regarder derrière soi | Réflexe naturel ; la musique de chase donne l'illusion de savoir où est le tueur | Coups « surprises » en sortie de coin ; palettes trop tard ou trop tôt ; le tueur coupe par l'intérieur | Regarder **aux moments utiles** : avant de s'engager sur une tile, sur les segments droits, au coin pour choisir le côté ; **pas** dans les 2-3 derniers mètres avant une fenêtre ou une palette (E-D02). Plus souvent contre un tueur Undetectable. Sinon : red stain (émise par la tête du tueur, [FACT (SS)]) et pas | DR-01 |
| **E-D02** · CHASE | Regarder derrière soi en approche de fenêtre, palette ou passage étroit | On veut « vérifier » au moment le plus stressant ; le personnage dévie avec la caméra | Vault en angle : **medium vault 0,9 s qui remet l'élan à zéro** au lieu d'un fast vault 0,5 s [FACT (SS)], souvent la différence entre un coup et rien | Aligner caméra et personnage **~2,5 m avant** la fenêtre (condition du fast vault, [FACT (SS)]) et ne plus toucher la caméra avant la fin du vault ; checker juste **après** | DR-01, DR-02 |
| **E-D03** · TILE | Courir vers une dead zone (fuir « loin du tueur » sans savoir ce qu'il y a devant) | Réflexe de fuite ; carte mal connue | En terrain ouvert, le tueur 4,6 m/s reprend 0,6 m/s : 10 m d'avance tiennent ~16 s (avec Bloodlust, sans fente), **~12-13 s avec une fente de 2-2,5 m** (valeur communautaire) ; bien moins contre un tueur à distance ou mobile | Repérer en permanence **les deux prochaines tiles** de repli ; en chase, viser la tile la plus forte *atteignable avant le coup*. Nuance : traverser une dead zone courte **sur un événement** (boost, casse, vault, cooldown 2,7 s) est parfois correct. Tout est mort autour : jouer le temps (LOS, rochers, maïs, 360 contre M1) | DR-13, DR-04 |
| **E-D04** · TILE | Poser la palette dès que le tueur approche (palette gaspillée) | Peur du coup ; « palette = sécurité » au lieu de « ressource limitée » | Casse (2,34 s) ou contournement ; zone épuisée pour les chases suivantes. Le coût est **différé**, donc invisible | Arbre Palette (§13.8). Le pre-drop est correct quand la tile ne tient pas autrement (filler, anti-loop, blessé à 2 crochets) ; sinon faire respecter la palette debout. Excès inverses : E-I01, E-T09 | DR-12, DR-03 |
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
| **E-D12** · SOLOQ | Ignorer le HUD et les loadouts visibles des coéquipiers | Attention entièrement sur son propre écran | Doublons de sauvetage ou personne au crochet ; tu répares alors que le seul chaseur est au sol depuis 30 s | Lire les loadouts des coéquipiers en début de partie (visibles depuis 9.6.0, [FACT (VP)]) : Kindred, We'll Make It, Borrowed Time, lampe… Relire le HUD à chaque changement d'état. Défaut SoloQ : un coéquipier plus proche et déjà en mouvement va au crochet → rester sur son gen, **vérifier 10-15 s plus tard**. Contenu exact du HUD [INCERTAIN] ; à revoir après 10.2.0 | DR-16 |

> **À retenir (débutant)** : on agit **au moment où l'on a peur** (palette trop tôt, vault en regardant derrière, décrochage immédiat, cachette) au lieu du moment où l'action rapporte le plus. Question-clé : « que se passe-t-il si j'attends 2 secondes ? »

**Variantes SoloQ / SWF (débutant)** :
- `[SoloQ]` E-D09 + E-D12 : sans information, attendre un signe d'engagement du tueur (icône de chase, TR qui s'éloigne) est la seule protection contre le trade.
- `[SWF]` L'accroché annonce le tueur (« il reste », « il part nord ») ; E-D14 devient un choix annoncé (« on duo le gen du bas »).

Détail : `kb/research/batch11_training.md` §1.1.

---

## 13.4 Erreurs de niveau intermédiaire et avancé

### 13.4.1 Intermédiaire [Intermédiaire]

Quatorze erreurs, dont E-I14 ajoutée par l'audit P14. Le joueur sait boucler une tile. Il perd maintenant du temps par **mauvaise allocation** : greed, soins, sauvetages, géométrie des gens, protections gaspillées.

**Tiles et chase**

| ID · tag | Erreur | Pourquoi on la fait | Punition | Correction (avec conditions) | Drill |
|---|---|---|---|---|---|
| **E-I01** · TILE | Greed incorrect : un tour de plus autour d'une palette qu'on n'atteindra pas avant le coup | On surestime sa distance (la fente ajoute ~2 m, estimation communautaire [INCERTAIN]) ; on oublie la Bloodlust | Coup à côté de la palette ; blessé → au sol, palette debout : **ressource ET état perdus** | Greeder seulement si (a) tu vois le tueur ou sa red stain, (b) tu as **fini** d'utiliser la palette (drop, ou vault 1,1 s s'il faut la franchir) avant sa portée de fente **même s'il coupe court** : la condition se compare en **temps**, en comptant le temps où tu es immobile dans la « porte » (≈ 5 m de trajet tueur pour un vault de palette, ≈ 2,3 m pour un fast vault ; chapitres 3.2 et 4.2.2), (c) un coup ne coûte pas un crochet de trop. Contre un anti-loop, le greed coûte souvent le coup. Dans le doute, **poser** | DR-12, DR-03 |
| **E-I07** · CHASE | Donner un coup gratuit (sortir côté tueur, rester sur une tile morte, vaulter vers un tueur qui attend à la réception) | Lecture tardive ; « panique vault » | Un état de santé contre 0 seconde gagnée ; la mise au sol suivante vient souvent 20-30 s plus tard [INCERTAIN] | Distinguer le **coup acheté** (atteindre une tile avec le boost de 1,8 s, protéger un décroché, body block qui libère un allié) du **coup donné**. Avant toute action risquée : « qu'est-ce que je gagne si je prends le coup ? » Si la réponse est « rien », ne pas le prendre, même au prix d'une palette | DR-12, DR-19 |
| **E-I12** · TILE | Compter sur une fenêtre déjà vaultée trois fois | On ne compte pas ses vaults | Après ton 3e vault de la même fenêtre dans une poursuite, elle est bloquée **30 s pour toi seul** [FACT (SS)] : mur, coup garanti | Compter 1-2-3 par fenêtre. Le 3e vault est permis, mais comme **vault de sortie** (quitter la tile ensuite, arbre §13.9). Alternative : utiliser la palette ou changer de tile avant le 3e | DR-03, DR-04 |

**Macro (gens, totems)**

| ID · tag | Erreur | Pourquoi on la fait | Punition | Correction (avec conditions) | Drill |
|---|---|---|---|---|---|
| **E-I06** · MACRO | Créer un 3-gen : finir d'abord les gens isolés, laisser trois gens proches pour la fin | On répare le gen le plus proche, sans vision globale | Le tueur défend trois gens en quelques secondes : parties longues, palettes épuisées ; scénario perdant typique en SoloQ [HEURISTIQUE] | Repérer dès le début le **triangle le plus serré** et en finir un gen tôt ; garder pour la fin des gens éloignés. Nuance [SITUATIONNEL] : dans une zone très riche en tiles, le finir tôt peut gaspiller la zone | DR-09 |
| **E-I08** · MACRO | « Taper » un gen pour stopper la régression | Habitude antérieure à la 7.5.0 | Depuis 7.5.0, il faut réparer **5 %** (≈ 4,5 s solo) pour stopper la régression [FACT (VM)] : un contact ne sert à rien | Rester ≥ 4,5 s (solo ; ~2,6 s à 2), ou ignorer le gen s'il est trop exposé. Un gen frappé puis laissé 20 s perd ~9,5 charges (−5 % du kick + 0,25 c/s, calcul corrigé P14) ; 60 s → ~19,5 charges. Parfois moins cher que de s'exposer | DR-09 |
| **E-I09** · MACRO | (a) Purifier tout Hex dès qu'il s'allume ; (b) oublier les totems | Règle apprise sans son coût ; ou oubli | (a) 14 s [FACT (SS)] + trajet, parfois en zone surveillée ; (b) un Hex fort (Devour Hope, NOED) décide la partie | Évaluer **effet × temps restant × risque d'accès** : un Hex de chase ou qui tue justifie un détour, un ralentissement modéré vaut parfois moins qu'un gen. Purifier les ternes **croisés en route** réduit le risque NOED. Boon sur Hex : 28 s | DR-07, DR-11 |
| **E-I13** · MACRO | Emmener la poursuite vers ses coéquipiers et leurs gens | Réflexe grégaire ; on connaît mieux la zone qu'on vient de réparer | Le tueur découvre les réparateurs, peut changer de cible vers un blessé ou lancer un pouvoir multi-cibles (Legion, Plague…) ; gens abandonnés | Pré-choisir un « couloir de chase » loin des gens actifs. Exception : gen presque fini à côté d'une tile forte, ou seule zone riche de la carte. [SWF] l'annoncer ; [SoloQ] accepter le risque en connaissance de cause | DR-13, DR-09 |
| **E-I14** · MACRO | Quitter le gen trop tard (on attend de voir le tueur) ou trop tôt (au premier battement de cœur, alors qu'il ne vient pas) | On veut finir le pourcentage ; ou peur réflexe du TR | Trop tard : chase au contact, sans avance ni route. Trop tôt : trajet aller-retour et coop perdus | Comparer **temps pour finir** (charges restantes / débit : 1 ; 1,7 ; 2,1 ; 2,2 c/s) et **arrivée du tueur** (≈ 7 s s'il entre dans un TR de 32 m et vient droit sur toi à 4,6 m/s, calcul ; TR 32 m = valeur historique à exceptions). Si tu ne finis pas avant, pre-run **vers ta tile de repli** dès que le TR ou la red stain indique qu'il vient. Contre un furtif, le TR ne sert pas | DR-09, DR-13 |

**Crochet et soin**

| ID · tag | Erreur | Pourquoi on la fait | Punition | Correction (avec conditions) | Drill |
|---|---|---|---|---|---|
| **E-I02** · SOIN | Over-heal : se soigner à chaque blessure | L'état sain rassure ; le coût (~0,36 gen) est invisible | Un tiers de gen par soin ; contre un tueur à coup unique (Hillbilly, Cannibal, Oni en Fury…), l'état sain rapporte **moins**, pas rien (ils frappent aussi en M1, [SITUATIONNEL]) ; le tueur qui revient trouve deux cibles | Soigner quand l'état sain **rapporte plus qu'il ne coûte** : chase probable bientôt contre un M1, gens presque finis, med-kit, **2 survivants restants**. Reporter : tueur qui joue ses coups uniques, gen à ~70-80 %+ à finir d'abord [INCERTAIN], tueur qui arrive. Excès inverse : ne **jamais** soigner raccourcit chaque chase d'un palier. Plague : purifier ou rester malade est [SITUATIONNEL] | DR-18 |
| **E-I03** · CROCHET | Surinvestir dans un sauvetage (2-3 survivants autour du crochet, attente de 40 s « au cas où ») | Peur de rater ; en SoloQ, personne ne sait qui y va | 2-3 c/s perdus pendant toute l'attente ; proxy camp qui en frappe un deuxième ; gens régressés | **Un** sauveteur, qui arrive au bon moment ; les autres réparent. Deux près du crochet seulement pour un plan précis (protection hit, camp avec perk suspectée, surtout en SWF). Le « plus proche décroche » du seed est trop absolu : le meilleur sauveteur est celui **dont l'absence coûte le moins et qui arrive à temps** | DR-10, DR-16 |
| **E-I04** · CROCHET | Mauvais timing de sauvetage : trop tôt (tueur à portée) ou trop tard (dernières secondes) | Impatience ; ou « je finis ce gen d'abord » sans compter | Trop tôt : trade ou double au sol. Trop tard : phase 2 ou mort → l'équipe passe à 3 | Partir pour **arriver** pendant une fenêtre sûre, au plus tard ~10-15 s avant la fin de phase [INCERTAIN]. En SoloQ, la jauge de crochet du HUD sert d'horloge. L'anti-camp n'agit qu'à < 16 m, d'autant plus lentement que le tueur est loin : ≈ 29,5 s après l'accrochage contre un face camp ≤ 4 m, ≈ 37,5 s de jauge à 10 m, ≈ 79 s à 15 m (calcul sur valeurs wiki, ±10 %, sans autre survivant proche). L'attendre est raisonnable contre un face camp **très proche**, pas comme plan par défaut | DR-10, DR-17 |
| **E-I05** · CROCHET | Faire prendre les risques au survivant à 2 crochets | Chacun joue « sa » partie sans compter les états des autres | L'équipe perd un joueur entier au lieu d'un état ; il faut toujours 5 gens (« survivants au départ + 1 », [FACT (SS)]) avec un réparateur de moins | **Quand c'est possible**, le survivant à 0 crochet prend sauvetages et chases de protection ; celui à 2 crochets joue les gens éloignés. Exceptions [SITUATIONNEL] : seul à pouvoir arriver à temps en fin de partie ; de loin le meilleur looper. À 2 survivants, être accrochés ensemble = sacrifice des deux [FACT (VP) 9.1.0] | DR-17, DR-16 |
| **E-I10** · CROCHET | Croire que l'anti-camp décrochera un allié proxy-campé (tueur à 16-25 m) | Conseil faux du seed (audit A-283) | L'allié passe en phase 2 ou meurt sans que la jauge bouge | L'anti-camp n'agit qu'à < 16 m [FACT (VM)], faiblement près de 16 m (×0,375 à 15 m, (SS)), et ralentit si d'autres survivants sont proches. Contre un proxy : soit réparer **en sachant** que l'allié perd sa phase (tempo gagné), soit organiser un sauvetage (en SWF : un sauveteur + une distraction). Choix [SITUATIONNEL] selon gens restants et état de l'allié | DR-10 |
| **E-I11** · CROCHET | Gaspiller les protections de décrochage (réparer ou soigner dans les 10 s, courir vers le tueur) | Envie de rattraper le temps perdu au crochet | Endurance perdue sur action voyante [FACT (SS)] : un coup met alors au sol au lieu de donner Deep Wound ; Elusive gaspillée si tu restes en vue | Les 10 s servent à **s'éloigner hors LOS** (Haste 10 % ; Elusive = ni griffures, ni flaques, ni grognements). Réparer seulement hors de portée et hors de piste. Will to Live : les actions qui la désactivent sont reprises du seed [INCERTAIN] | DR-10 |

> **Erreur fréquente** : corriger E-I02 par « je ne me soigne plus jamais ». La bonne question : « cet état servira-t-il dans une chase **avant** qu'un gen ne soit perdu ? »

**Variantes SoloQ / SWF (intermédiaire)** :
- `[SoloQ]` E-I03 et E-I04 coûtent le plus : défaut robuste = un seul sauveteur choisi par CRO-1 à CRO-3, avec vérification en route.
- `[SWF]` Un shot-caller désigne le sauveteur (ETA) ; E-I05 se règle à voix haute (« je suis à 2, je ne prends pas le save »).

Détail : `kb/research/batch11_training.md` §1.2.

### 13.4.2 Avancé [Avancé]

Onze erreurs. Le joueur tient des chases. Il perd maintenant de la valeur par **manque d'adaptation** : au tueur (anti-loop, red stain, Bloodlust), aux ressources de la carte, à la fin de partie.

| ID · tag | Erreur | Pourquoi on la fait | Punition | Correction (avec conditions) | Drill |
|---|---|---|---|---|---|
| **E-A01** · TILE | Rester trop longtemps sur une tile « perdue » (tueur posté au centre, palette cassée, fenêtre bloquée, Bloodlust haute) | Attachement à une tile qui « a marché » ; peur de l'espace suivant | Coup ou mise au sol « lente » : le tueur n'a plus qu'à attendre ton erreur ; 35 s sans casse ni coup = +0,6 m/s [FACT (VM)] | Arbre **Quitter la tile** (§13.9). Partir **sur un événement** : casse (2,34 s), stun (2 s), vault du tueur (1,7 s), cooldown après coup (2,7 s + ton boost de 1,8 s), usage de pouvoir, perte de LOS. Partir sans événement, tueur à 4 m = coup dans le dos | DR-13, DR-04 |
| **E-A02** · CHASE | Se fier aveuglément à la red stain | Indice fort et visible ; on oublie qu'elle suit **la tête**, pas les jambes | Un tueur qui marche à reculons ou de côté inverse la lecture [FACT (SS)] ; sous Undetectable, pas de red stain du tout | Croiser red stain + pas + TR + dernière position vue. Une red stain qui « hésite » sur une tile à murs hauts signale souvent un mindgame [HYPOTHÈSE]. Contre les tueurs souvent Undetectable (Shape, Ghost Face, Pig, Wraith…), jouer la vue directe par les trous des murs | DR-05 |
| **E-A03** · COUNTER | Jouer les palettes comme contre un M1 face à un tueur qui les annule (liste corrigée ci-dessous) | Loop « standard » non adapté | La palette « respectée » n'existe plus **tant que le pouvoir est disponible** (Oni hors Fury, Demogorgon en recharge, casseur par add-on sans l'add-on redeviennent des M1). Palette basse contre hachette : ne bloque pas le tir [INCERTAIN] | La palette sert à **gagner des mètres par le stun ou le pre-drop** (détour forcé, pouvoir utilisé au mauvais moment). **Blight** : la casse lui coûte des tokens de Rush depuis 9.6.0 [FACT (VP)], le pre-drop reste rentable. Un pre-drop qui ne force ni détour ni pouvoir est gaspillé : quitter ou jouer la LOS. Contre les ranged : murs hauts | DR-15 |
| **E-A04** · CHASE | Ignorer la Bloodlust : faire durer une chase sur une tile faible sans jamais la « remettre à zéro » | « Palette posée = palette perdue » | À 35 s, +0,6 m/s : un tueur 4,6 court à 5,2 m/s ; les boucles « safe » deviennent unsafe | Près des seuils 15/25/35 s, une palette qui l'oblige à **casser** remet la Bloodlust à zéro, comme un coup reçu [FACT] ; effet d'un stun [INCERTAIN]. Autre option : casser la poursuite (LOS perdue > 8 s, > 18 m). Contre-jeu : un tueur averti **contourne** pour garder sa Bloodlust | DR-12, DR-19 |
| **E-A05** · CHASE | Utiliser une perk d'Exhaustion au mauvais moment (dès le début, ou jamais) | Panique ou avarice | Trop tôt : distance vers nulle part, puis perk indisponible (Exhausted ne récupère pas en courant, (SS)). Trop tard : mort avec la ressource | L'utiliser pour **atteindre une zone riche** ou **sauver un état qui coûte un crochet**. Chaque perk a son timing (chapitre 9) ; la déclencher vers une dead zone ne se justifie que si l'alternative est un coup certain | DR-13, DR-19 |
| **E-A06** · CROCHET | Ne pas protéger le décroché (même direction que lui, ou abandon) | Sauvetage vu comme « fini » au décrochage | Le tueur retrouve les deux, ou tunnelle le décroché après 10 s ; aucun anti-tunnel au-delà des protections de base en LIVE (ceux des PTB 9.2.0/9.3.0 ne sont jamais sortis, [FACT (VP)]) | Le sauveteur (sain, crochets bas) **se place entre le tueur et le décroché** et accepte un coup de protection ; directions différentes. S'il vise le décroché : prendre la chase, body block en couloir. Pas de « tank » à 2 crochets | DR-10 |
| **E-A07** · TILE | Épuiser les palettes de la zone dès la première chase (4-5 pour 90 s) | Durée de chase vue comme seul objectif | Zone vide pour la suite, souvent celle des derniers gens | Juger en **temps gagné / ressources consommées** : au-delà d'une ou deux palettes pour un état, le coup + boost aurait-il coûté moins ? Exception : en début de partie contre un tueur fort, une chase coûteuse qui achète 2-3 gens | DR-12, DR-19 |
| **E-A08** · INFO | Ne pas tenir la carte des ressources (fuir vers une zone déjà vidée) | On ne mémorise que ses propres chases | Dead zone découverte au dernier moment | Mémoriser (ou annoncer en SWF) les palettes cassées ou posées vues, les casses entendues (le son porte loin, observation non chiffrée) ; mettre à jour sa route de repli | DR-17, DR-08 |
| **E-A09** · ENDGAME | Traîner à la porte ouverte (attendre, provoquer) | Envie de « finir en beauté » ; attente d'un coéquipier sans plan | Blood Warden bloque les portes 40/50/60 s si un survivant est accroché (SS) ; NOED/Exposed transforment un coup en mise au sol ; sacrifice offert | Sortir dès que ta présence n'apporte plus rien. Rester seulement pour un plan (sauvetage possible, body block, soin d'un allié qui va sortir). L'EGC (120 s, à moitié vitesse si quelqu'un est au sol ou accroché) laisse le temps d'un sauvetage **si** le tueur est loin | DR-11 |
| **E-A10** · ENDGAME / SOIN | Mal gérer l'état au sol : ramper sans arrêt, ou tout le monde qui fonce relever pendant que le tueur rôde | Impatience ; récupération automatique (9.2.0) méconnue | Pas de récupération en rampant (seulement à l'arrêt, sauf Tenacity [FACT (VM)], CONFLICT-002 résolu) ; le tueur qui slug frappe les sauveteurs l'un après l'autre | Sans menace, rester immobile (95 % en 30,4 s, (VM)). Si un allié vient, ramper vers lui (0,7 m/s constant [FACT (VM)]) raccourcit son trajet mais met la récupération en pause. Pour relever : **un seul** survivant, quand le tueur est engagé ailleurs. Surrender / Abandon : refonte au PTB 10.2.0 | DR-11, DR-17 |
| **E-A11** · SOLOQ | Supposer ce que les coéquipiers vont faire | Habitudes SWF transposées | Personne au crochet (passage en phase 2), ou tout le monde | Raisonner en **probabilités** : un coéquipier qui ne bouge pas vers le crochet 10-15 s après l'accrochage n'ira probablement pas [HEURISTIQUE]. Lire les perks visibles (Kindred, Bond…). Préférer l'**option robuste**, celle qui reste bonne si le coéquipier fait l'inverse de ce que tu crois | DR-16 |

**Liste corrigée des pouvoirs qui annulent une palette** (E-A03), d'après `kb/research/batch7_tiles.md` §5.2 et l'errata phase 0, qui prime sur l'audit :

| Catégorie | Tueurs (condition) |
|---|---|
| Casse par pouvoir de base | Hillbilly et Cannibal (tronçonneuse, 1 s) · Demogorgon (Shred) · Oni (en Blood Fury) · Blight (Lethal Rush, casse qui lui coûte des tokens depuis 9.6.0) · Dark Lord (bond en loup) · Shape (Evil Incarnate) · Nemesis (Tentacle Strike, Mutation Rate 2+) · Singularity (palette baissée sur lui en Overclock) |
| Casse **non instantanée** | Knight : un garde casse sur ordre en **1,8 s ou 5 s** ; depuis 10.1.1, une palette baissée pendant une Hunt force le garde à contourner (abandon si le détour dépasse 48 m) [FACT (VP) 10.1.1] · Lich : Mage Hand **relève** une palette baissée ou bloque une palette levée ; avec **Vorpal Sword**, casse en **4 s** |
| Franchit sans casser (casse seulement avec add-on) | Legion (Frenzy ; casse : Iridescent Button) · Mastermind (Virulent Bound ; casse : **Lab Photo**) · Ghoul (Kagune Leap ; casse au 3e bond : Iridescent Eye Patch) · Good Guy (Scamper de 1 s **sous** la palette en 1v4 ; casse : **Hard Hat**, la casse de base est propre au 2v8) · Krasue en Head Form (vault 1,9 s, pas de casse) |
| Casse par add-on seulement | Executioner (Obsidian Goblet) · The First (Shattered Wrist Rocket ; « seulement avec l'add-on » [INCERTAIN]) |

> **Note avancée** [HEURISTIQUE, lot 7] : (1) si **la casse lui coûte** (Blight), le pre-drop reste rentable ; (2) si **son pouvoir punit l'attente** (Doctor, Cannibal, Nemesis MR2+, Mastermind, Lich), pre-drop **puis départ immédiat** ; (3) si **la casse ou le franchissement est gratuit** (Demogorgon, Oni en Fury, Dark Lord ; Ghoul avec tokens, qui franchit sans casser, le vault déclenchant son cooldown), la palette vaut surtout le stun. Contre un casseur par add-on, vérifier l'add-on avant de changer de plan.

**Variantes SoloQ / SWF (avancé)** :
- `[SoloQ]` E-A11 est centrale : choisir la décision qui reste correcte **quoi que fassent les autres**. E-A08 est plus dur : la « palette suivante » a peut-être été utilisée.
- `[SWF]` E-A08 se règle par callouts (« palette du shack cassée ») ; E-A06 s'annonce (qui prend le coup de protection, quelle direction).

Détail : `kb/research/batch11_training.md` §1.3 ; `kb/research/batch7_tiles.md` §5.2.

---

## 13.5 Erreurs de niveau très avancé [Expert]

Douze erreurs. Le joueur maîtrise l'exécution. Il perd maintenant de la valeur sur des **arbitrages d'équipe** (trade, moment où casser la chase, 3-gen) et sur l'**information** (perk deduction, add-ons, latence, callouts).

| ID · tag | Erreur | Pourquoi on la fait | Punition | Correction (avec conditions) | Drill |
|---|---|---|---|---|---|
| **E-T01** · CROCHET | Hook trade sans valeur | Le trade semble « neutre », mais consomme un état et fait gagner du trajet au tueur | Un état et ~30-60 s de gens perdus [INCERTAIN] ; bonus si le tueur a des perks d'accrochage (Pain Resonance, Grim Embrace…) | Trade **généralement** justifié si l'allié va perdre sa phase sinon, si le risque passe à un survivant plus « riche » (0 crochet, sain, ressource proche), ou si les 2 autres réparent déjà. Refuser : sauveteur blessé, dead zone, tueur à coup unique prêt, **2 survivants restants** (sacrifice, Mori [FACT (VP)]) | DR-10, DR-19 |
| **E-T02** · INFO | Ne pas mettre à jour sa perk deduction (jouer comme si le tueur n'avait aucune perk, ou garder une hypothèse infirmée) | Le loadout du tueur est caché jusqu'à la fin [FACT (VP) 9.6.0] : il faut le déduire | Gen qui explose au prochain accrochage ; zone « tracée » par une perk d'aura ; surprise en endgame | Tenir un journal d'indices : effet observé → perk candidate → conséquence pratique. Réviser à chaque indice ; vérifier à l'écran de fin. Préparer la réponse **la plus coûteuse à ignorer** (en endgame : jouer comme si NOED était possible tant qu'il reste des totems ternes). Voir le chapitre 10 (déduction de perks) | DR-07 |
| **E-T03** · CHASE | Mauvais mode : boucler contre un tueur qui y gagne, ou « hold W » vers le vide contre un M1 | Un seul mode appris | Loop contre anti-loop = coup rapide ; hold W vers le vide = coup en ~12-16 s pour 10 m d'avance | Dépend de la **distance au contact** et du **type de tueur** : loin d'un tueur lent sans mobilité, tenir la distance **vers** des ressources ; au contact d'un M1, boucler ; contre un casseur, enchaîner les LOS. « Hold W contre anti-loop » est **faux** contre Blight ou Nurse [SITUATIONNEL] | DR-15, DR-13 |
| **E-T04** · CHASE | Réagir à la première feinte (changer de côté au premier mouvement du tueur) | On veut lire le tueur trop vite | Fausse avance, double-back : coup gratuit. À haut niveau, un survivant « prévisible dans sa réaction » est aussi exploitable qu'un survivant passif | S'engager au **dernier moment sûr** (la plus longue attente possible sans perdre l'accès à la ressource) ; préférer les positions qui gardent deux options (palette ET fenêtre en vue). [HYPOTHÈSE] La lecture précoce paie contre un tueur inexpérimenté et coûte contre un bon : adapter après 2-3 interactions | DR-05, DR-03 |
| **E-T05** · MACRO | Casser la poursuite au mauvais moment (disparaître quand l'équipe a besoin qu'il reste occupé, ou rester visible blessé à 2 crochets) | Survie personnelle optimisée au lieu du temps d'équipe | Le tueur libéré retourne aux gens, au crochet ou vers un blessé | « Que fait le tueur si je disparais maintenant ? » Sain, crochets bas : rester chassable sans donner de coup. Blessé à 2 crochets, gen critique ailleurs : disparaître. [SITUATIONNEL] | DR-19, DR-17 |
| **E-T06** · MACRO | Détecter le 3-gen trop tard (seulement à 3 gens restants) | Pas de plan initial (E-I06), ou plan non revu | Défense concentrée ; chaque retour du tueur repousse un gen | À **4 gens restants**, vérifier la géométrie et accepter un gen « moins confortable » pour casser le triangle. 3-gen acquis : duo dès qu'il part, split sur deux gens pendant qu'un troisième tient la chase, garder les palettes de la zone. « Lui faire épuiser ses 8 events par gen » **n'est pas un plan** | DR-09 |
| **E-T07** · ENDGAME | Dernier survivant : trappe contre porte mal arbitrées | Pas de scénario pré-appris | Le tueur ferme la trappe (→ EGC 120 s) et garde la porte la plus proche ; 20 s d'ouverture à découvert | **Avant** d'être seul : savoir où sont les portes, si l'une a de la progression (conservée [FACT (SS)]) et où la trappe est probable. Une fois seul, si la trappe est fermée : porte **la plus éloignée du tueur**, ouverture par étapes si besoin, en exploitant son trajet entre les portes. Arbre Trappe (§13.16) | DR-11 |
| **E-T08** · CHASE | Jouer les vaults et les poses « au pixel » en croyant l'écran | On croit que ce qu'on voit est la vérité serveur | Si la connexion du tueur est bonne, le coup est validé par **son client** [FACT (VP), principe] ; la latence cumulée le favorise (observation communautaire) : « touché derrière la palette » | Garder une marge sur les actions serrées (valeur [INCERTAIN], dépend du ping), surtout si le tueur semble avoir un ping élevé. Accepter que certains coups « injustes » fassent partie du jeu, et **ne pas en tirer de mauvaises leçons en revue** | DR-12, DR-19 |
| **E-T09** · TILE | Garder une palette forte « pour plus tard » jusqu'à tomber avec | Excès inverse du gaspillage (« une god pallet se garde », seed) | Au sol à côté d'une palette debout : ressource inutilisée ET état perdu | Une palette vaut ce qu'elle protège **maintenant** contre ce qu'elle protégera plus tard. Blessé à 2 crochets, pas de « plus tard » : poser. Sain en début de partie : la faire respecter. On la garde **tant que cela ne coûte pas d'état et qu'une autre ressource travaille à sa place** | DR-12 |
| **E-T10** · COUNTER | Ne pas adapter son jeu aux add-ons observés | On identifie le tueur, pas ses add-ons | Tu comptes des munitions qu'il n'a pas ; tu « tankes » un tir qui met au sol | Connaître, pour chaque tueur, 2-3 signes d'add-ons qui changent la décision et changer de plan au premier signe. Huntress : **7 hachettes de base** depuis 7.6.0 [FACT (SS)] (errata) ; davantage, ou une hachette qui met au sol d'un coup, signale un add-on [INCERTAIN] | DR-06, DR-15 |
| **E-T11** · SOIN | Mal gérer Deep Wound ou les soins sous pression d'un tueur à statut | Deep Wound traité comme une blessure normale | À zéro, état mourant ; un dégât sous Deep Wound = au sol même avec Endurance [FACT (VP)] | Le timer (20 s) est en pause quand tu cours [FACT] : courir hors de la zone, puis mending hors de vue (10 s seul, 6 s avec un allié). Contre Legion, éviter d'être groupé : le mending à deux fait gagner 4 s mais expose deux survivants | DR-18, DR-15 |
| **E-T12** · SWF | Callouts trop nombreux ou imprécis (« il est là ! ») | Confusion entre communiquer et informer | L'équipe ne distingue plus l'essentiel ; décisions retardées ; bruit qui couvre l'audio du jeu en pleine chase | Grammaire fixe **qui / quoi / où / état / intention**, en ≤ 5 mots pendant une chase ; le chaseur parle peu ; un seul joueur fait le point des gens environ chaque minute [HEURISTIQUE] | DR-08 |

> **À retenir (très avancé)** : E-T01, E-T05 et E-T06 sont la même faute : se demander « comment survivre à cette chase ? » au lieu de « quel usage de mon temps et de mes états rapporte le plus à l'équipe ? ».

**Variantes SoloQ / SWF (très avancé)** :
- `[SoloQ]` E-T05 : par défaut, rester chassable quand tu es sain et que le HUD montre des coéquipiers sur les gens. E-T01 : compter les états **réellement** offerts, personne ne viendra aider.
- `[SWF]` E-T12 est la seule erreur propre au SWF : lacune connue (§13.17).

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

---

## 13.7 Arbres de décision : mode d'emploi

**Format** : entrée → squelette ASCII (questions dans l'ordre où elles changent la décision, feuilles codées `[XXX-n]`) → table des feuilles → SoloQ / SWF et contre-jeu.

**Trois règles d'usage** [HEURISTIQUE] :
1. **Un arbre ordonne des questions, il ne donne pas « la » réponse.** Aucune feuille ne dit « toujours drop » ou « toujours greed ».
2. **En jeu, seulement les 3-4 premières questions** ; les suivantes se **préparent avant** (état d'équipe, palettes, perks suspectées) et se **vérifient en revue**. Une décision moyenne à temps vaut mieux qu'une bonne décision 10 s trop tard.
3. **Règle de conflit.** Si deux questions mènent à des feuilles opposées, **la question la plus haute choisit la feuille, les suivantes règlent le moment**. C'est une convention, pas une règle démontrée.

> **Erreur fréquente** : appliquer une feuille mécaniquement. Un tueur qui a compris ta réponse par défaut (il attend ton pre-drop, simule un départ du crochet) l'exploite. L'arbre sert à savoir **quelle information chercher**.

---

## 13.8 Arbre 1 — Palette [Intermédiaire]

**Entrée** : tu es poursuivi et une palette debout est à ta portée. **En jeu** : Q1 → Q2 → Q3 → Q5. Q6-Q10 sont des ajusteurs préparés avant la chase.

```
PALETTE
│
├─ Q1 Auras-tu FINI d'utiliser la palette avant d'être à portée de fente ?
│     (comparer des TEMPS, temps immobile dans la porte compris : chap. 3.2)
│   ├─ NON (il est sur toi) ─────────────────────────────► [PAL-0]  PRENDRE LE COUP
│   │     sauf palette à 1-2 pas ET coup = mise au sol ──► [PAL-0b] POSE IMMÉDIATE
│   ├─ DE JUSTESSE ──► Q2 (GREED exclu)
│   └─ LARGEMENT ────► Q2
│
├─ Q2 Le tueur peut-il annuler la palette MAINTENANT ?
│   ├─ Pouvoir qui casse / franchit, DISPONIBLE ─────────► [PAL-1]  PRE-DROP tôt / QUITTER
│   │     (pouvoir en recharge, Fury inactive → M1 : Q3)
│   ├─ Tueur à distance avec LOS sur toi ────────────────► [PAL-2]  FENÊTRE cachée / murs hauts
│   ├─ Mobilité qui franchit vite (Nurse, Blight…) ──────► [PAL-3]  LOS + imprévisibilité
│   ├─ Anti-loop bientôt prêt ───────────────────────────► [PAL-4]  PRE-DROP avant son retour
│   └─ M1 / pouvoir indisponible ──► Q3
│
├─ Q3 Combien te coûte un coup ?
│   ├─ Sain, 0-1 crochet ─────────► tout reste ouvert ──► Q4
│   ├─ Endurance (décroché < 10 s) ► marge d'un coup (Deep Wound) ──► Q4
│   ├─ Blessé 0-1 crochet / sain 2 crochets ► GREED exclu, TENIR prudent ──► Q4
│   └─ Blessé 2 crochets / Exposed / Deep Wound ─────────► [PAL-5]  PRE-DROP
│         (sauf tile plus forte atteignable → [PAL-10] sur événement)
│
├─ Q4 Que vaut CETTE ressource ?
│   ├─ Fenêtre non bloquée pour toi ─────────────────────► [PAL-6]  FENÊTRE d'abord
│   ├─ Palette forte (il ne te touche pas en tournant) ──► [PAL-7]  TENIR
│   ├─ Palette mindgame (il peut lire / couper) ─────────► [PAL-8]  TENIR + départ tôt
│   └─ Palette faible / filler ──────────────────────────► [PAL-9]  PRE-DROP ou QUITTER
│
└─ Q5 Loop suivant ?
    ├─ Fort et atteignable ──────────────────────────────► [PAL-10] QUITTER après un événement
    ├─ Faible ou épuisé ─────────────────────────────────► [PAL-11] TENIR plus longtemps ici
    └─ Rien (dead zone derrière) ────────────────────────► [PAL-12] TENIR ici, pas de pre-drop précoce
```

| Feuille | Action | Pourquoi | Risque → alternative |
|---|---|---|---|
| **PAL-0** | Prendre le coup | La palette n'est plus une option ; boost 1,8 s + cooldown 2,7 s donnent le meilleur départ | Blessé → au sol. Viser une ressource avec le boost (TIL-6) |
| **PAL-0b** | Poser tout de suite (stun de réaction) | Seule chance si le coup est critique | Stun raté (palette à moins de ~50 %), latence → PAL-0 |
| **PAL-1** | Pre-drop tôt **si** cela force un détour ou le pouvoir au mauvais moment ; sinon quitter / LOS | Une palette debout ne se « respecte » pas | Pre-drop parfois sans coût pour lui ; **exception Blight** (tokens, 9.6.0, VP). Liste en §13.4 |
| **PAL-2** | Fenêtre à réception cachée ou murs hauts | La LOS est la vraie ressource ; une palette ne bloque pas un tir (Huntress : [INCERTAIN]) | Réception prévisible punie par un tir |
| **PAL-3** | LOS et imprévisibilité ; pre-drop rarement utile | Contre la mobilité, la palette vaut peu | Brûler une palette pour rien |
| **PAL-4** | Pre-drop avant le retour du pouvoir | Elle ne vaudra plus rien une fois le pouvoir prêt | Moment de retour [INCERTAIN] → quitter |
| **PAL-5** | Pre-drop le plus tard possible sans risque | Un coup = au sol, voire mort | Palette consommée tôt → quitter sur événement si tile plus forte |
| **PAL-6** | Fenêtre d'abord (0,5 s contre 1,7 s pour le tueur) | Temps gagné sans consommer la palette | Blocage au 3e vault ; Bamboozle ; angle |
| **PAL-7** | Tenir : tourner palette debout, poser s'il s'engage | Maximum de temps par palette ; stun + casse possibles | Feinte, latence, Bloodlust → pre-drop |
| **PAL-8** | Tenir avec départ tôt | Il peut lire ton côté | Coup sur mindgame perdu → pre-drop si Q3 est serré |
| **PAL-9** | Pre-drop (pour la distance) ou quitter | Faible valeur future ; convertit la palette en ~9,4 m | Il contourne au lieu de casser |
| **PAL-10** | Quitter sur casse, stun, vault ou cooldown | Seul moment où la traversée est gratuite → arbre 2 | Départ sans événement = coup dans le dos |
| **PAL-11** | Rester et tenir | La suite ne vaut pas mieux | Bloodlust qui monte → quitter au premier événement |
| **PAL-12** | Maximiser le temps ici | Après cette palette, plus rien | Le tueur finit par lire → rendre le coup le plus tardif possible |
| **GREED** | Un cycle de plus palette debout | Palette gardée | **Pire résultat** : coup avec palette debout. Seulement sain/Endurance, grande avance, M1 visible, palettes rares |

**Ajusteurs Q6-Q10** (préparés avant la chase) :

| Question | Réponse → effet |
|---|---|
| Q6 Bloodlust | 15-35 s : pose + casse remet à zéro, donc pre-drop et stun plus rentables (mais il peut contourner) · ≥ 35 s sur tile moyenne ou faible : poser ou quitter **maintenant** |
| Q7 Équipe | 3 alliés sur les gens : allonger · alliés au crochet ou en soin : économiser · gen à 99 % : pre-drop accepté · zone du futur 3-gen : garder |
| Q8 Ressources | beaucoup : pre-drop peu coûteux · peu : chaque palette compte, perk d'Exhaustion pour quitter |
| Q9 Perks suspectées | Enduring (stun −40 à −50 %) : pre-drop > stun tardif · Bamboozle : fenêtre moins fiable |
| Q10 Phase | portes alimentées : pre-drop généreux · début de partie : éviter le pre-drop gratuit |

**Cas combinés** [HEURISTIQUE] : blessé à 2 crochets, M1, palette moyenne, tile suivante lointaine → **pre-drop**. Tueur Undetectable sans red stain : **jamais de greed**. Blessé, M1 à ~6 m, palette du shack, jungle gym à ~25 m → **pre-drop puis départ pendant la casse** (≈ 18 s gagnées, calcul lot 6).

| | [SoloQ] | [SWF] |
|---|---|---|
| Alliés sur les gens | Visibles seulement au HUD ([INCERTAIN]) : supposer qu'ils sont moins nombreux → **moins de greed** | Le poursuivi sait combien réparent et peut demander que personne ne vienne « aider » |
| Palette suivante | Peut-être déjà utilisée par un allié : un pre-drop « en comptant sur la suivante » est plus risqué | État des palettes annoncé |
| Tempo | Jouer comme si personne ne venait aider | « Je tiens encore 20 s, finissez le gen » |

**Contre-jeu du tueur** : alterner respect et non-respect de la palette ; casser tôt pour interdire le greed ; contourner une palette pré-jetée pour garder sa Bloodlust.

Détail : `kb/deliverables/DECISION_TREES.md` §1 ; `kb/research/batch6_chase_tech.md` (T05, §4.3).

---

## 13.9 Arbre 2 — Quitter la tile [Avancé]

**Entrée** : « si je reste un cycle de plus, peut-il me toucher ? »

```
QUITTER LA TILE ?
│
├─ R1 La tile a-t-elle encore une ressource que CE tueur doit respecter ?
│   ├─ Non (palette cassée ET fenêtre bloquée / inutile contre ce pouvoir) ──► R3
│   └─ Oui ──► R2
├─ R2 Le tueur a-t-il trouvé la solution ?
│   (posté au centre, coupe à chaque fois, Bloodlust ≥ 25-35 s, pouvoir prêt)
│   ├─ Oui ──► R3
│   └─ Non ──────────────────────────────────────────────► [TIL-1] RESTER un cycle
├─ R3 Un événement te donne-t-il de l'avance MAINTENANT ?
│   ├─ Casse (≈ +9,4 m) · stun (≈ +8 m) · vault du tueur · pouvoir raté
│   │   · perte de LOS ──────────────────────────────────► [TIL-2] QUITTER MAINTENANT
│   ├─ Tu viens d'être touché (boost + cooldown) ────────► [TIL-6] QUITTER tout de suite
│   └─ Aucun ──► R4
├─ R4 Peux-tu en créer un ?
│   ├─ Palette restante ─────────────────────────────────► [TIL-3] PRE-DROP, partir sur la casse
│   ├─ Fenêtre qui l'oblige à contourner ────────────────► [TIL-4] VAULT puis partir
│   ├─ Perk d'Exhaustion vers une ressource ─────────────► [TIL-5] EXHAUSTION
│   └─ Rien ──► R5
├─ R5 Où aller ? (avance à l'arrivée > portée de fente ?)
│   ├─ Tile suivante atteignable avec marge ─────────────► [TIL-2] QUITTER vers elle
│   ├─ Seulement une tile faible ────────────────────────► [TIL-7] y aller + pre-drop, ou 1 cycle ici
│   └─ Rien d'atteignable ───────────────────────────────► [TIL-8] RESTER faute de mieux
└─ R6 Filtre équipe : ta sortie mène-t-elle vers gens actifs / crochet / blessé ?
    ├─ Oui ──────────────────────────────────────────────► [TIL-9] AUTRE DIRECTION
    └─ Non ──► go
```

**Distance « sûre » (calcul, ordre de grandeur)** : l'avance à l'arrivée vaut l'avance initiale moins (écart de vitesse × temps de trajet). Après une casse (~9,4 m), contre un tueur 4,6 sans Bloodlust, le trajet sûr est d'environ ~46-49 m avec la fente utile de ~2-2,5 m retenue aux chapitres 3 et 4 (table D_max, 4.3.1), et tombe à ~23 m dans l'hypothèse très prudente d'une fente de 6 m (portée totale estimée). La fente est [INCERTAIN] : retenir « ~20 à ~50 m en ligne droite » et, dans le doute, la tile la plus proche. **Retire** ensuite le temps où tu seras immobile dans la porte d'arrivée : ≈ 2,3 m de marge pour un fast vault, ≈ 5 m pour un vault de palette (soit ≈ 15 m et ≈ 33 m de trajet en moins) ; la Bloodlust qui remonte en route réduit encore ces distances.

| Feuille | Action | Pourquoi | Risque → alternative |
|---|---|---|---|
| **TIL-1** | Rester un cycle, reposer R2 | La tile tient ; partir sans événement = coup dans le dos | Bloodlust → regarder la route de sortie pendant le cycle |
| **TIL-2** | Quitter sur l'événement | Seule traversée « gratuite » | Événement fantôme (il n'est pas en animation de casse) → TIL-3 |
| **TIL-3** | Pre-drop puis partir pendant la casse | Palette faible convertie en ~9 m | Il contourne (tile courte) → TIL-4 |
| **TIL-4** | Vault qui force un contournement, puis partir | Écart gagné sans palette | Blocage au 3e vault ; ranged sur la réception |
| **TIL-5** | Perk d'Exhaustion **vers une ressource** | Distance instantanée | Brûlée vers le vide → la garder pour la tile suivante |
| **TIL-6** | Sain : prendre le coup et partir avec le boost | Boost + cooldown = meilleur départ | Blessé, ce n'est plus une option ; effet d'un vault immédiat sur le boost non documenté |
| **TIL-7** | Aller à la tile faible et y pre-drop, ou rester 1 cycle | Meilleure de deux options faibles | Arriver sans marge → TIL-8 |
| **TIL-8** | Jouer le temps ici (LOS, obstacles, 360 contre M1) | 5-10 s gagnées valent plus qu'une fuite perdue d'avance | 360 raté = distance perdue |
| **TIL-9** | Autre direction, même un peu moins bonne | Ne pas coûter un 2e réparateur à l'équipe | Route moins bonne |

| | [SoloQ] | [SWF] |
|---|---|---|
| Filtre équipe (R6) | Positions des alliés connues seulement par HUD ou auras ([INCERTAIN]) : éviter les gens visiblement occupés | Annoncer la direction (« je l'emmène vers killer shack ») ; les alliés s'écartent |

Détail : `kb/deliverables/DECISION_TREES.md` §2 ; `kb/research/batch6_chase_tech.md` (T18).

---

## 13.10 Arbre 3 — Crochet / sauvetage [Intermédiaire]

**Entrée** : un allié vient d'être accroché.

```
HOOK — le tueur quitte-t-il la zone (> 16 m ET s'éloigne, avec un signe d'engagement ailleurs) ?
│
├─ OUI, il part
│   ├─ Qui y va ?
│   │   [SoloQ] quelqu'un va déjà vers le crochet ?
│   │       ├─ Oui, plus proche que moi ──────────────► [CRO-1] RESTER sur mon gen
│   │       ├─ Oui, mais plus loin ───────────────────► [CRO-2] Y ALLER si je suis sain
│   │       └─ Aucun signe après un délai ────────────► [CRO-3] Y ALLER + revérifier en route
│   │   [SWF] ────────────────────────────────────────► [CRO-4] UN sauveteur désigné (ETA)
│   ├─ Trajet < temps restant de la phase ?
│   │   ├─ Oui ───────────────────────────────────────► [CRO-5] DÉCROCHER dès l'arrivée
│   │   └─ Non ───────────────────────────────────────► [CRO-6] LAISSER / accepter la phase 2
│   └─ Après le décrochage ───────────────────────────► [CRO-7] PROTOCOLE APRÈS DÉCROCHAGE
│
└─ NON, il reste — à quelle distance ?
    ├─ < ~10 m, immobile (face camp) ─────────────────► [CRO-8] NE PAS ENTRER dans les 16 m
    │     (portes alimentées : anti-camp coupé → arbre 8)
    ├─ 10-16 m, en mouvement ─────────────────────────► [CRO-9] TRAITER COMME UN PROXY
    └─ 16-30 m (proxy) : l'anti-camp ne remplit RIEN
        ├─ Phase 1, > 30 s restantes ─────────────────► [CRO-10] ATTENDRE qu'il s'engage
        ├─ Phase 1, ~15-30 s restantes ───────────────► [CRO-11] S'APPROCHER hors LOS
        ├─ Phase 1, < ~15 s restantes
        │   ├─ Sauveteur sain, 0-1 crochet, ressource proche ► [CRO-12] DÉCROCHER (trade assumé)
        │   └─ Sinon ─────────────────────────────────► [CRO-13] LAISSER PASSER en phase 2
        └─ Phase 2 (Struggle)
            ├─ > 2 survivants ────────────────────────► [CRO-14] SAUVETAGE PRIORITAIRE
            └─ 2 survivants ──────────────────────────► arbre 8 (Mori / sacrifice)
[SWF] option ─────────────────────────────────────────► [CRO-15] DISTRAIRE (un se montre, un décroche)
Fin de partie où sauver coûte deux sorties (rare) ────► [CRO-16] NE PAS SAUVER
```

**Modulateurs de la branche proxy** : tueur à coup unique prêt → attendre (CRO-10) ; ranged prêt → trade plus cher ; M1 ou pouvoir en recharge → trade plus jouable ; sauveteur blessé → pas de trade ; ≥ 3 gens restants → le camp est un cadeau, maximiser les gens loin de lui.

| Feuille | Action | Pourquoi | Risque → alternative |
|---|---|---|---|
| **CRO-1** | Rester sur son gen | Un doublon retire un 3e réparateur | L'autre fait demi-tour sans que tu le voies → revérifier le HUD |
| **CRO-2** | Y aller si sain | Sauveteur riche en états | Doublon → laisser si blessé ou à 2 crochets |
| **CRO-3** | Y aller après un délai de confirmation (15-20 s, valeur de rédacteur [INCERTAIN]) avec délai + trajet < fin de phase | « Quelqu'un d'autre ira » : erreur SoloQ la plus coûteuse [AVIS D'EXPERT, non sourcé] | Départs simultanés si tous ont le même délai : revérifier toutes les ~5 s ; à égalité, le sain continue |
| **CRO-4** | Un sauveteur annonce son ETA ; les autres continuent | Supprime les doublons | Annonce périmée → l'accroché décrit le tueur (« il part nord ») |
| **CRO-5** | Décrocher dès l'arrivée | Tueur engagé ailleurs = meilleur moment | Faux départ → approche hors LOS |
| **CRO-6** | Laisser à un autre ou accepter la phase 2 | Tu n'arriveras pas à temps | État de crochet offert |
| **CRO-7** | Décroché : casser la LOS pendant l'Elusive, **aucune action voyante**. Sauveteur entre tueur et décroché ; directions différentes | Les protections sont une fenêtre de fuite, pas de soin | Tunnel ; Endurance gâchée → soin loin (arbre 4) |
| **CRO-8** | Rester hors des 16 m, réparer, réévaluer si le camp dure | Ta présence **ralentit** la jauge ; le tueur cède ~3 s-survivant par seconde (calcul) | Libération estimée ≈ 29,5 s après l'accrochage à ≤ 4 m (calcul, ±10 %, (SS)) ; tueur un peu plus loin → bien plus long ; Deliverance si présente |
| **CRO-9** | 10-16 m = proxy | Poids ×1 → ×0,375 → ×0 : ≈ 37,5 s de jauge à 10 m, ≈ 79 s à 15 m, rien à 16 m (calcul, ±10 %) ; il campe presque sans payer l'anti-camp | Attendre une jauge qui bouge à peine |
| **CRO-10** | Attendre qu'il s'engage ; gens **hors** de sa zone | Le proxy lui coûte des gens au loin | La phase avance → CRO-11 |
| **CRO-11** | Se rapprocher hors LOS ; décrocher dès qu'il s'engage | Position prête pour la fenêtre | Être repéré en approche |
| **CRO-12** | Décrocher vers ~10 s restantes | Laisser expirer coûte déjà l'état que le trade raté coûterait | Pire cas : 2 états offerts ; très risqué contre coup unique / ranged prêt |
| **CRO-13** | Laisser passer en phase 2 | Sauveteur sans ressource : risque de 2 états | Sauver en phase 2 quand il s'engage |
| **CRO-14** | Sauvetage prioritaire | Fin de phase 2 = un réparateur en moins pour toujours | Sauf seul sauveteur à 2 crochets ou blessé face à un pouvoir prêt |
| **CRO-15** | [SWF] Un se montre, un décroche | Couvre le sauvetage | Deux cibles → CRO-12 |
| **CRO-16** | Ne pas sauver [SITUATIONNEL, rare] | Sauver coûterait la sortie de deux survivants | Abandonner un allié sauvable |

**Contre-indications** : Pain Resonance / Grim Embrace se déclenchent à l'**accrochage** (un trade raté qui accroche le sauveteur pour la 1re fois coûte en plus) ; au sous-sol, c'est la géométrie qui expose. **Contre-jeu du tueur** : simuler le départ (sortir des 16 m puis revenir) ; un silence n'est pas un départ, surtout contre un furtif. Saves (flash, pallet, body block) : hors périmètre.

Détail : `kb/deliverables/DECISION_TREES.md` §3 ; `kb/research/batch9_macro.md` §2.5-2.7.

---

## 13.11 Arbre 4 — Soin [Intermédiaire]

**Entrée** : tu es blessé, ou un allié l'est.

```
SOIN
├─ Tueur proche ? ─ OUI ─ soin fini avant son arrivée (− 2 s) ? ─ oui ► [SOI-2] FINIR
│                                                             └ non ► [SOI-1] ARRÊTER ET PARTIR
│                 └ NON ──► type de tueur ?
├─ Coup unique fréquent (Hillbilly, Cannibal, Oni Fury) ────► [SOI-3] GENS par défaut
├─ Blessure à distance / statut (Legion, Plague, Trickster…) ► [SOI-4] PAS DE SOIN RÉFLEXE
└─ M1 standard ──► Deep Wound ?
    ├─ Oui ───────────────────────────────────────────────► [SOI-5] MENDER D'ABORD
    └─ Non ──► contexte
        ├─ 2 survivants restants ─────────────────────────► [SOI-6] SOIGNER
        ├─ 1 gen restant ET Adrenaline dans l'équipe ─────► [SOI-7] LE PORTEUR NE SE SOIGNE PAS
        ├─ Gen > ~70-80 % et tueur loin ──────────────────► [SOI-8] FINIR LE GEN d'abord
        ├─ Forte pression et 2 blessés ───────────────────► [SOI-9] UN SEUL SOIN
        └─ Qui soigne ?
            ├─ Allié à < ~10 s de trajet ─────────────────► [SOI-10] SOIN ALTRUISTE
            ├─ Med-Kit ───────────────────────────────────► [SOI-11] AUTO-SOIN
            └─ Rien ──────────────────────────────────────► [SOI-12] RESTER BLESSÉ ET RÉPARER
Où ? hors de la zone du tueur, hors LOS, jamais sous le crochet.
```

| Feuille | Action | Pourquoi | Risque → alternative |
|---|---|---|---|
| **SOI-1** | Arrêter et partir | Le soin interrompu est conservé (sauf Haemorrhage) | Contre un furtif, le TR arrive trop tard |
| **SOI-2** | Finir | Partir à 90 % laisse deux blessés | Mauvaise estimation d'arrivée → SOI-1 |
| **SOI-3** | Gens par défaut | L'état sain ne protège pas de l'attaque spéciale | Ses M1 restent dangereux [SITUATIONNEL] : soigner le prochain chassé s'il joue M1 |
| **SOI-4** | Ne soigner que le prochain looper probable | Il reblesse vite et à distance | Plague : purifier crée des fontaines corrompues |
| **SOI-5** | Mender (10 s seul, 6 s avec un allié) | Sinon au sol à la fin du timer | — |
| **SOI-6** | Soigner | Le tueur n'a plus d'autre cible : chaque coup encaissé allonge la partie | Trappe ou porte proche : partir |
| **SOI-7** | Le porteur d'Adrenaline reste blessé | Adrenaline soigne d'un état à l'alimentation (SS) | Terminus suspecté (Broken) → se soigner |
| **SOI-8** | Finir le gen, soigner après | Un gen fini est acquis | Tueur qui arrive → arbre 5 |
| **SOI-9** | Un seul soin (meilleur looper, prochain chassé) | Le 2e soin coûte ~0,36 gen de plus | Zéro soin, gens à fond |
| **SOI-10** | Soin altruiste (≈ 0,36 gen) | Rentable si l'état sert en chase | Trajet non compté → SOI-12 |
| **SOI-11** | Auto-soin au Med-Kit | Ne mobilise qu'un survivant | Durée à vérifier en jeu [INCERTAIN] |
| **SOI-12** | Rester blessé et réparer | Évite 32 s-survivant | Un coup = au sol ; sang et grognements |

**Autres points** : A Nurse's Calling (28/30/32 m) → soigner loin ou à couvert ; **pas de soin à 3** : 2 soigneurs max en 1v4 [FACT (VM)] (le 3e soigneur n'existe qu'en 2v8).

| | [SoloQ] | [SWF] |
|---|---|---|
| | Un allié blessé vient vers toi : vérifier le TR avant de lâcher ton gen (il peut amener le tueur) | Annoncer « je reste blessé » pour qu'un allié ne quitte pas son gen pour rien |

Détail : `kb/deliverables/DECISION_TREES.md` §4 ; `kb/research/batch9_macro.md` §2.10.

---

## 13.12 Arbre 5 — Gen : continuer, lâcher, tenir le 99 [Intermédiaire]

**Entrée** : tu répares.

```
GEN
├─ Signal de menace (TR, chase qui approche, alerte de perk) ?
│   ├─ NON ───────────────────────────────────────────────► [GEN-1] CONTINUER
│   └─ OUI ── fini avant son arrivée (− 2 s) ?
│       ├─ OUI ───────────────────────────────────────────► [GEN-2] FINIR
│       └─ NON ── suis-je encore non vu ?
│           ├─ OUI ───────────────────────────────────────► [GEN-3] LÂCHER, marcher hors LOS
│           └─ NON ───────────────────────────────────────► [GEN-4] PRE-RUN vers une tile
│   Tueur furtif : le TR ne protège pas ────────────────► [GEN-5] CAMÉRA + indices visuels
├─ Cas particuliers
│   ├─ Gen frappé, lâché ─────────────────────────────────► [GEN-6] REVENIR VITE (5 %)
│   ├─ Deux sur le gen ───────────────────────────────────► [GEN-7] LE PLUS FAIBLE EN CHASE PART
│   └─ Dernier gen ──► sous-arbre 99
└─ Quel gen ensuite ? (anti-3-gen)
    ├─ 3-4 gens restants, triangle serré ─────────────────► [GEN-9] FINIR DANS le groupe serré
    └─ 3-gen formé ── tueur en chase loin ────────────────► [GEN-10] DUO sur le plus avancé
                   └─ tueur qui patrouille ───────────────► [GEN-11] SPLIT sur deux gens du triangle

99 (dernier gen presque fini) :
├─ Allié accroché / va l'être, tueur près du crochet ─────► [GEN-12] TENIR LE 99
├─ Blessés + Adrenaline, ou NOED / No Way Out suspectés ──► [GEN-13] ALIMENTER AU BON MOMENT
└─ Tueur en approche · Ruin actif · tout le monde sain ───► [GEN-14] FINIR TOUT DE SUITE
```

| Feuille | Action | Pourquoi | Risque → alternative |
|---|---|---|---|
| **GEN-1** | Continuer ; Great sans risquer le raté | Un raté ≈ 12 s solo | — |
| **GEN-2** | Finir | Un gen fini ne peut plus être frappé (80 % → ~18 s solo, ~10,6 s à 2) | Estimation d'arrivée fausse → GEN-3 |
| **GEN-3** | Lâcher avant d'être vu, marcher à l'opposé du TR, revenir après | Garde la furtivité | Lâcher pour rien (E-I14) |
| **GEN-4** | Pre-run vers ta tile de repli, loin des autres | Chaque mètre d'avance avant la chase vaut ~1,7-2,5 s de chase (calcul) | Pre-run au moindre TR, vers une tile vidée ou vers les alliés |
| **GEN-5** | Rotations caméra, corbeaux, sons | Le TR ment | Réparer adossé à une tile forte |
| **GEN-6** | Revenir réparer 5 % (4,5 s solo) | Gen laissé 60 s ≈ −19,5 charges | Tueur qui attend ton retour |
| **GEN-7** | Le plus faible en chase part, l'autre finit | Évite deux cibles | — |
| **GEN-8** | Gen à pointes : pas « sûr » avant le 8e event | Les pointes apparaissent dès le 4e event ; le plafond est à 8 | Les skill checks ratés régressent toujours |
| **GEN-9** | Finir un gen **du** groupe serré, garder les gens éloignés pour la fin | Un 3-gen se décide à 3-4 gens restants | Contre un tueur très mobile, la distance protège moins |
| **GEN-10** | Duo sur le plus avancé | Finir avant son retour | Groupement trouvé → GEN-11 |
| **GEN-11** | Deux gens du triangle à la fois, un 3e tient la chase | Il ne défend qu'un gen à la fois | « Épuiser ses 8 events » n'est pas un plan |
| **GEN-12** | Tenir à 99 %, relâcher vers 97-98 % | L'alimentation coupe anti-camp, Elusive et Will to Live | Great accidentel ; kick → alimenter si le tueur approche |
| **GEN-13** | Alimenter au moment choisi, équipe en position | Adrenaline, perks d'endgame du tueur | Mauvais timing (au milieu d'un soin) |
| **GEN-14** | Finir tout de suite | Kick, Ruin ou Heresy font fondre le 99 | — |

**Contre-jeu du tueur** : un tueur qui soupçonne un 99 le patrouille. Le 99 est un outil de **quelques dizaines de secondes** autour d'un événement, pas une posture.

| | [SoloQ] | [SWF] |
|---|---|---|
| Gen lâché | Ne pas supposer qu'un autre reviendra | « Gen X à 60, lâché » |
| 99 | Ne pas tenir un 99 seul trop longtemps | Décision explicite ; annoncer tout gen > 80 % |
| 3-gen | Réparer soi-même un gen du groupe serré | Le shot-caller nomme les gens prioritaires |

Détail : `kb/deliverables/DECISION_TREES.md` §5 ; `kb/research/batch9_macro.md` §2.1-2.2, §2.11.

---

## 13.13 Arbre 6 — Totem [Intermédiaire]

```
TOTEM
├─ Allumé (Hex) ── change-t-il les décisions de l'équipe maintenant ?
│   ├─ OUI (Ruin, Hex d'endgame, Hex de chase) ── tueur loin ? ► [TOT-1] PURIFIER (14 s) / BÉNIR (28 s)
│   └─ NON / effet faible ─────────────────────────────────► [TOT-2] PURIFIER EN PASSANT si sûr
└─ Terne ── phase ?
    ├─ Début / milieu ─────────────────────────────────────► [TOT-3] NE PAS PURIFIER
    ├─ Fin (1-2 gens) + NOED suspecté ─────────────────────► [TOT-4] PURIFIER CEUX QU'ON CROISE
    └─ Près d'un gen / d'une porte ────────────────────────► [TOT-5] PURIFIER EN PASSANT
```

| Feuille | Action | Pourquoi | Risque → alternative |
|---|---|---|---|
| **TOT-1** | Purifier, ou Boon si l'équipe en profite | L'Hex coûte plus que 14 s + trajet | Hex gardé = revenir quand le tueur est engagé |
| **TOT-2** | Purifier sans traverser la carte | Gain faible | L'ignorer |
| **TOT-3** | Laisser (sauf totem voulu pour un Boon) | 5 × 14 s = 70 s ≈ 0,8 gen (calcul) | NOED plus tard → TOT-4 |
| **TOT-4** | Purifier sans détour | NOED (valeurs [INCERTAIN]) | Temps pris sur les portes : un cherche, les autres ouvrent |
| **TOT-5** | Purifier en passant | Coût marginal faible | — |

`[SoloQ]` Ne pas compter sur les autres pour les ternes ; en fin de partie, en purifier 1-2 sur sa route. `[SWF]` Un « chasseur de totems » seulement si un Hex s'est montré ou si l'équipe est en avance.

---

## 13.14 Arbre 7 — Slug [Avancé]

**Entrée** : un allié (ou toi) est au sol.

```
SLUG
├─ Un allié au sol — où est le tueur ?
│   ├─ À côté / en vue ───────────────────────────────────► [SLG-1] NE PAS Y ALLER
│   │     il attend indéfiniment (bleed-out 240 s) ───────► [SLG-2] UN SAIN LE TIRE EN CHASE, UN AUTRE RELÈVE
│   ├─ En chase avec quelqu'un d'autre ───────────────────► [SLG-3] Y ALLER SEUL si je suis le plus proche
│   └─ Inconnu ── je vois l'allié ? non ──────────────────► [SLG-4] NE PAS PARTIR À L'AVEUGLE
│                                    oui ─────────────────► [SLG-5] APPROCHE PRUDENTE
├─ Plusieurs au sol ── je suis le dernier debout ─────────► [SLG-6] ÉVITER LA CHASE
│                   └─ deux debout ───────────────────────► [SLG-7] UN RELÈVE, L'AUTRE RESTE LOIN
└─ Je suis au sol
    ├─ Un allié arrive / couvert proche ──────────────────► [SLG-8] RAMPER VERS LUI
    ├─ Tueur loin, personne ne vient encore ──────────────► [SLG-9] RESTER IMMOBILE (récupération)
    ├─ Perk de relève (Unbreakable…) ─────────────────────► [SLG-10] LA GARDER pour quand il s'éloigne
    └─ Abandon / Surrender ───────────────────────────────► [SLG-11] OPTIONS DE FIN, pas des stratégies
```

| Feuille | Action | Pourquoi | Risque → alternative |
|---|---|---|---|
| **SLG-1** | Rester hors de vue | Il cherche la 2e cible | Le bleed-out court → SLG-2 |
| **SLG-2** | Un sain se montre et part vers une tile forte ; un autre relève | Sinon l'allié saigne et les gens stagnent | [SoloQ] seulement si tu es clairement le mieux placé |
| **SLG-3** | Y aller seul | Le tueur est engagé ailleurs | — |
| **SLG-4** | Chercher un indice (portrait, dernier bruit) | Sans position du tueur, l'approche peut être un piège de slug (Knock Out ne masque plus l'aura des mourants depuis 8.6.0 : son effet LIVE est un Hindered 5 % après un drop de palette, (VM)) | Temps perdu |
| **SLG-5** | Approcher prudemment, relever si TR absent | — | Piège de slug → SLG-1 |
| **SLG-6** | Ne pas se faire prendre ; relever s'il s'éloigne ; trouvé : chase longue près d'une tile forte | Si tu tombes, tous au sol ; chaque seconde laisse récupérer les autres | Trappe seulement si tu es le seul en vie |
| **SLG-7** | Un relève, l'autre reste loin ou fait diversion | Évite le double au sol | — |
| **SLG-8** | Ramper vers l'allié ou un couvert (pas vers un gen occupé ni un cul-de-sac) | Raccourcit son trajet (0,7 m/s constant) | Pas de récupération en rampant sans Tenacity [FACT (VM)] |
| **SLG-9** | Rester immobile | 95 % en 30,4 s : relevage restant plus court | Personne ne vient → SLG-8 |
| **SLG-10** | Garder la perk | Unbreakable : une fois par épreuve (9.5.0) | La gaspiller sous ses yeux |
| **SLG-11** | Abandon (9.2.0) / Surrender (8.6.0) en dernier recours | Abandonner prive l'équipe d'un réparateur et d'un leurre | [SWF] annoncer avant ; refonte au PTB 10.2.0 |

Ne pas alterner ramper et récupérer au hasard. `[SoloQ]` Supposer qu'un allié viendra probablement, ramper vers lui. `[SWF]` « Tueur à côté, ne venez pas » / « il est parti, relève-moi ».

---

## 13.15 Arbre 8 — Endgame (portes, EGC, fin à 2 survivants) [Avancé]

```
ENDGAME
├─ 1 gen restant ─────────────────────────────────────────► arbre 5 (99 ou alimenter)
└─ Portes alimentées
    ├─ Allié accroché ? (anti-camp COUPÉ ; décrochage = Endurance + Haste, PAS d'Elusive)
    │   ├─ Pas de plan ───────────────────────────────────► [END-1] OUVRIR UNE PORTE D'ABORD
    │   ├─ Plan (protection hit, distraction) ────────────► [END-2] SAUVETAGE PLANIFIÉ
    │   └─ 2 survivants, accroché en Struggle ────────────► [END-3] NE PAS TOMBER (Mori)
    ├─ Tueur posté à une porte ───────────────────────────► [END-4] OUVRIR L'AUTRE
    ├─ Tueur arrive pendant que j'ouvre ─ fini avant ? oui ► [END-5] FINIR
    │                                                  non ► [END-6] LÂCHER (progression gardée)
    ├─ No Way Out suspecté ───────────────────────────────► [END-7] TOUCHER QUAND IL EST LOIN
    ├─ Blood Warden suspecté ─────────────────────────────► [END-8] NE PAS SE FAIRE ACCROCHER
    ├─ NOED (Exposed) ────────────────────────────────────► [END-9] AUCUN COUP GRATUIT
    └─ Porte ouverte ─────────────────────────────────────► [END-10] SORTIR (sauf save précis)
```

| Feuille | Action | Pourquoi | Risque → alternative |
|---|---|---|---|
| **END-1** | Ouvrir une porte avant de décrocher | Sortie sûre ; l'EGC est ralenti tant qu'un survivant est accroché : le vrai compteur est la **phase** de l'allié | Blood Warden → laisser la porte à ~90 % |
| **END-2** | Sauver avec un plan ; sinon sortir vers ~10 s de la fin de sa phase | Ni Elusive ni anti-camp | Deux morts possibles ; [SoloQ] décision bonne même si les autres ne font rien |
| **END-3** | Ne pas être mis au sol, où que tu sois | Mori possible (VP 9.0.0) ; tous accrochés = sacrifice | Sauver seulement s'il est engagé ailleurs ; jouer la trappe n'est pas « égoïste » [AVIS D'EXPERT, non sourcé] |
| **END-4** | Ouvrir la porte qu'il ne regarde pas | Il ne garde qu'une porte | — |
| **END-5** | Finir (2 s restantes à 90 %, calcul) | Temps restant < son arrivée | Finir sous ses yeux lance aussi l'EGC |
| **END-6** | Lâcher, revenir quand il repart | Progression conservée | Autre porte |
| **END-7** | Toucher l'interrupteur quand il est loin, attendre à distance | NWO : bruit + blocage 12 s + 6/9/12 s par jeton (SS) | — |
| **END-8** | Ne pas être accroché ; ne pas traîner dans la sortie | Blood Warden : portes bloquées 40/50/60 s (SS) | — |
| **END-9** | Aucun coup gratuit ; un cherche le totem, les autres ouvrent | Exposed : un coup = au sol | Arbre 6 (TOT-4) |
| **END-10** | Sortir | Contre The Judgment, 45 s dans le seuil = Heresy | Attendre seulement pour un save prévu |

| | [SoloQ] | [SWF] |
|---|---|---|
| Portes | Les autres ouvrent la porte la plus proche d'eux : prendre l'autre ; défaut = la porte la plus éloignée de la dernière position connue du tueur | « A ouvre nord, B sud, C sauve » |
| Sauvetage | Ne pas compter sur un protection hit d'un allié | Protocole : 99 ou alimentation, qui ouvre, qui sauve |

---

## 13.16 Arbre 9 — Trappe (dernier survivant) [Avancé]

```
TRAPPE — je suis le dernier survivant
├─ Avant d'être seul ─────────────────────────────────────► [TRP-0] SAVOIR où sont portes et progression
├─ Trappe ouverte, aura visible (de moi seul)
│   ├─ Tueur loin / inconnu ──────────────────────────────► [TRP-1] Y ALLER EN MARCHANT
│   └─ Tueur près de la trappe ───────────────────────────► [TRP-2] NE PAS SE MONTRER
├─ Gens presque finis ET position du tueur connue ────────► [TRP-3] PORTES (option secondaire)
└─ Trappe fermée par le tueur → EGC 120 s ────────────────► [TRP-4] PORTE LA PLUS ÉLOIGNÉE DE LUI
```

| Feuille | Action | Pourquoi | Risque → alternative |
|---|---|---|---|
| **TRP-0** | Mémoriser portes, progression et trappe probable | Scénario pré-appris (E-T07) | Emplacements fixes ou aléatoires : non documentés ici |
| **TRP-1** | Marcher vers l'aura | Courir = griffures + bruit | Blessé : sang, grognements |
| **TRP-2** | Rester caché, préparer la route vers la porte **opposée** | Il ne voit pas l'aura ; s'il ferme, tu pars déjà caché | Corbeaux AFK à 80 s ; **sprinter vers la trappe devant lui lui donne la course** : seulement si tu es sûr d'arriver avant |
| **TRP-3** | Portes seulement si les gens sont presque finis et que tu sais où il est | Un gen seul = 90 s | Tueur mobile → TRP-1 |
| **TRP-4** | Partir tout de suite vers la porte la plus éloignée ; ouvrir par étapes si besoin | Il ne garde qu'une porte à la fois ; 20 s d'ouverture | Tueur mobile qui choisit la bonne porte |

À 2 survivants avec un allié en Struggle, la trappe ne s'ouvre qu'à sa mort : voir END-3.

Détail (arbres 6 à 9) : `kb/deliverables/DECISION_TREES.md` §6-9 ; `kb/research/batch9_macro.md` §6-7.

---

## 13.17 Limites et corrections du seed

**Ce que ce chapitre ne sait pas** :
- **Distances non quantifiables** (portée de fente, abaissement de la palette, stun et Bloodlust) et anti-camp seulement estimé (±10 %) : les seuils des arbres 1 à 3 sont des ordres de grandeur.
- **Branches `[SoloQ]` fondées sur un HUD non vérifié** (icônes d'action, compteur de crochets, indicateur de chase). À revoir après 10.2.0 (Survivor Intent System).
- **Lacunes de la base d'erreurs** : aucune erreur sur les objets (lampe, toolbox, med-kit), les casiers en chase ou les saves (flash, pallet save, sabotage, body block d'équipe) ; SWF sous-représenté (1 entrée).
- **Aucun arbre n'a été testé en partie réelle** ; les délais de rédacteur (15-20 s, 70-80 %, ~10 s) n'ont pas de source.

**Conseils du seed corrigés** :

| Le seed dit | Correction | Verdict |
|---|---|---|
| « 1 s de chase ≈ 1/3 de gen » | ≈ 1/30 de gen avec 3 réparateurs séparés (A-267) | FAUX |
| « L'anti-facecamp décrochera l'allié » | Rien au-delà de 16 m (A-283) | FAUX |
| « Le vault annule l'élan » | Faux pour le fast vault (A-059) | FAUX |
| « Une god pallet se garde » | Valeur maintenant contre valeur future (E-T09) | Trop absolu |
| « Le plus proche décroche » | Celui dont l'absence coûte le moins et qui arrive à temps (E-I03) | Trop absolu |
| « Purifiez un Hex dès qu'il s'allume » | Effet × temps × risque (E-I09) | Trop absolu |

---

## Sources du chapitre

- `kb/research/batch11_training.md` §0-1, §2.3, §7 (base d'erreurs, auditée P14) ; audit `kb/audit/pass14_lot11_training.md`.
- `kb/deliverables/DECISION_TREES.md` (9 arbres, consolidés depuis batch6, batch9, batch11 audités).
- `kb/research/batch7_tiles.md` §5.2 (liste corrigée des pouvoirs qui annulent une palette).
- `kb/research/batch9_macro.md` (crochet, soin, gens, slug, endgame) ; `kb/research/batch6_chase_tech.md` (palette, quitter la tile).
- `kb/ledgers/AUDIT_PHASE0_ERRATA.md` (Knight, Lich, Mastermind, Good Guy, Huntress 7 hachettes).
- `kb/seed/audit_phase0.txt` (constantes vérifiées) ; notes officielles 7.5.0, 8.2.0, 9.0.0, 9.1.0, 9.3.0, 9.6.0, 10.1.0, 10.1.1 (`kb/sources/patches/`) ; page wiki Pallets et pages des tueurs citées par l'errata et le lot 7.
