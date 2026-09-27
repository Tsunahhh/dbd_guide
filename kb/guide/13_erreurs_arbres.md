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
