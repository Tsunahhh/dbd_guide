# 14. S'entraîner : drills, programme et mesure

> **Version** : LIVE 10.1.2a (17/09/2026). Vue **survivant**, mode **1v4**. Rien dans ce chapitre ne dépend du PTB 10.2.0 (non LIVE) ; les points qu'il pourrait changer sont signalés.
>
> **Avertissement général — à lire avant tout le reste** : **tous les seuils, cibles, durées et tailles d'échantillon de ce chapitre sont des [HEURISTIQUE] non validées.** Aucune donnée de joueurs, aucun coach, aucune VOD n'a servi à les fixer. Ce sont des ordres de grandeur de joueur, destinés à mesurer ton progrès **par rapport à ta propre base**, jamais à te comparer aux autres. **La direction d'une métrique (elle monte ou elle baisse) est plus fiable que son chiffre.**

Ce chapitre transforme le reste du guide en **plan de travail** : un programme en 10 niveaux, un catalogue de drills, un système de métriques et une méthode de revue de partie. Il répond à une question simple : *comment savoir si je progresse, et sur quoi travailler cette semaine ?*

Il s'appuie sur :
- la **base d'erreurs** `E-xx` (E-D débutant, E-I intermédiaire, E-A avancé, E-T très avancé) de `kb/research/batch11_training.md` §1 ;
- les **arbres de décision** (PALETTE, QUITTER LA TILE, CROCHET, SOIN, GEN, ENDGAME, TRAPPE…) de `kb/deliverables/DECISION_TREES.md` (présentés au chapitre 13) ;
- les fiches tueurs (chapitres 7 et 8, `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md`) et la perk deduction (chapitre 10, `kb/deliverables/PERK_DEDUCTION.md`).

---

## 14.1 Pourquoi s'entraîner avec méthode [Débutant]

### QUOI
Un entraînement **délibéré** : un objectif précis, un drill qui l'isole, une métrique qu'on peut compter, une revue qui donne le retour que la partie ne donne pas.

### POURQUOI
- **Une partie ne te dit pas ce que tu as mal fait.** Une victoire peut cacher cinq erreurs (tueur faible, coéquipiers forts) ; une défaite peut venir d'une bonne décision punie par la variance. Sans revue, tu apprends au résultat, donc tu apprends mal. [HEURISTIQUE]
- **Jouer plus ne suffit pas.** Le principe de la pratique délibérée (objectif, retour immédiat, difficulté juste au-dessus de ton niveau) est un principe général transposé : **aucune étude propre à DBD** ne l'a testé. [HYPOTHÈSE]
- **Le jeu se compte en secondes.** Tant qu'une erreur ne se traduit pas en secondes perdues pour l'équipe, on la sous-estime. Les conversions de base :

| Élément | Valeur | Étiquette |
|---|---|---|
| Gen réparé seul | 90 charges à +1 c/s → **90 s** ; 5 gens requis à 4 survivants | [FACT] (VM) |
| Skill check raté | −10 % de progression + 3 s sans progression → **≈ 12 s perdues en solo** (à plusieurs, les 3 s bloquent tous les réparateurs du gen) | [FACT] (SS) + calcul |
| 1 s de ta chase, 3 coéquipiers chacun sur un gen | 3 c/s → **≈ 1/30 de gen** (le seed disait « 1/3 », FAUX) | Calcul, plafond théorique |
| Un soin complet | 16 s soigné + 16 s soigneur = 32 « secondes-survivant » ≈ **0,36 gen** | [FACT] (SS) + calcul |
| Phase de crochet | **70 s** par phase ; 3e accrochage = mort | [FACT] (VP) |
| Palette cassée | 2,34 s d'immobilité du tueur ≈ **9,4 m** d'avance pour toi (4,0 m/s × 2,34 s) | [FACT] (VM) + calcul |

> **À retenir** : un skill check raté par partie, c'est ~12 s ; trois ratés, c'est déjà plus d'un tiers de gen solo. Les « petites » erreurs de niveau 1 coûtent autant que certaines grosses erreurs de chase — c'est pour cela que le programme commence par elles.

### QUAND
Dès que tu joues avec un objectif de progression. Si tu joues pour te détendre, ne remplis pas de feuille : un programme appliqué à moitié produit des métriques fausses.

### COMMENT
Par **blocs** : 1 objectif + 1-2 drills + un nombre limité de parties focalisées + des revues (règles détaillées en 14.2).

### CONTRE (ce qui fausse l'entraînement)
Le matchmaking : quand tu progresses, tes adversaires aussi. Le MMR tient compte d'actions en partie depuis 10.1.0 [FACT] (VP). Une métrique **stable** peut donc signifier un **progrès**.

### CAS D'ÉCHEC
- Choisir trois erreurs focus à la fois → aucune ne baisse.
- Ne revoir que les défaites → on surreprésente certaines erreurs.
- Juger une décision à son issue → on « corrige » des bonnes décisions malchanceuses.

### EXERCICE
Avant ta prochaine session, écris **une seule** phrase : « Cette semaine je travaille ___ ; je le mesure avec ___. » Si tu ne sais pas remplir la seconde moitié, commence par le niveau 1.

---

## 14.2 Règles du programme [HEURISTIQUE]

| Règle | Contenu | Pourquoi |
|---|---|---|
| **Bloc** | ≥ **10 parties** mesurées avec le même objectif | En dessous, la variance (tueur, coéquipiers, carte) écrase le signal |
| **Passage de niveau** | Le critère doit tenir sur **2 blocs consécutifs** (≈ 20 parties après la base) | Évite de passer sur une série chanceuse |
| **Conflit parties / durée** | Si la durée indicative est atteinte mais pas le nombre de parties, **le nombre de parties prime** | Les durées n'ont aucune source |
| **Base personnelle** | Mesurer 5-10 parties au début de chaque niveau ; tout critère « ↓ 50 % » s'entend contre cette base | Les valeurs absolues bougent avec le MMR |
| **SoloQ ≠ SWF** | Les critères qui dépendent des coéquipiers (M-02, M-09, M-17, M-19, DR-16) se comparent à une base du **même mode** | Ne jamais valider un critère SoloQ avec des parties SWF, ni l'inverse |
| **Petits nombres** | Un « ↓ 50 % » n'a de sens que si la base est ≥ ~1 événement/partie ; sinon seuil absolu ou blocs plus longs | 3 erreurs contre 1,5 sur 10 parties, c'est du bruit |
| **Critères auto-évalués** (niveaux 4, 7, 9) | Validation par un tiers (revue croisée SWF, ami, coach) **ou** critères de classement écrits **avant** de regarder la VOD | On est complaisant avec soi-même par construction |
| **Retour en arrière** | Si une métrique d'un niveau inférieur se dégrade nettement pendant 2 blocs, refaire un bloc de ce niveau | Les automatismes s'érodent quand l'attention passe ailleurs |
| **Ordre** | Niveaux 1-4 chevauchables ; à partir du 5, respecter l'ordre | Chaque niveau suppose le précédent automatique |
| **Difficulté d'un drill** | Réussite > 90 % → variante difficile ; < 30 % → variante facile | Rester juste au-dessus de son niveau |
| **Résultat ≠ décision** | Un critère qui compte des **issues** (« puni dans les 20 s ») mélange décision et variance : le lire avec la matrice décision × résultat (14.6) | Une bonne décision peut mal finir |
| **Durées** | Ordre de grandeur pour ~4-6 h de jeu par semaine | [INCERTAIN], sans source |

**Contextes des drills** :
- **KYF** = partie personnalisée avec un ami tueur (« Kill Your Friends »). Existence connue ; options (bots, réglages) **non vérifiées** [INCERTAIN].
- **Public** = partie normale.
- **Revue** = sur enregistrement (VOD).
- **Sans ami tueur** : faire la variante « public + revue ». Elle est plus lente et plus bruitée (tueurs et situations non contrôlés) → exiger **plus de parties** avant de conclure.

> **Note avancée — le reset MMR** : un reset du MMR en 10.1.0 (25/08/2026) est rapporté par la presse mais **absent des notes officielles** [INCERTAIN]. S'il a eu lieu, l'adversité est instable pendant un certain nombre de parties : une base mesurée fin août / septembre 2026 peut dériver sans que ton niveau change. Si tes métriques bougent brutalement sans raison, refais une base.

> **Erreur fréquente** : « J'ai joué 40 parties cette semaine, je passe au niveau suivant. » Le volume ne compte pas ; seul le critère tenu sur 2 blocs compte.

Détail : `kb/research/batch11_training.md` §4.1 ; `kb/deliverables/TRAINING_PROGRAM.md` §0.

---

## 14.3 Le programme en 10 niveaux

### Vue d'ensemble

| Niv. | Thème | Tag | Drills principaux | Critère de passage (résumé) | Durée indicative [INCERTAIN] |
|---|---|---|---|---|---|
| 1 | Fondamentaux | [Débutant] | DR-14, DR-17, DR-02 | Quiz ≥ 18/20 ; ≤ 1 skill check raté/partie ; 0 corbeau AFK | 1-2 sem. ; ~10 parties |
| 2 | Caméra + pathing | [Débutant] | DR-01, DR-02 | ≥ 80 % fast vaults en chase ; 0 collision sur 3 parties revues | 1-2 sem. ; 3 KYF + ~10 parties |
| 3 | Loops de base | [Débutant] | DR-03, DR-04, DR-12 (+DC-01) | Feuille PALETTE annoncée ≥ 90 % ; M-14 ↓ 50 % ; M-01 ↑ sans hausse de M-05 | 2-3 sem. ; ~20 parties |
| 4 | Map awareness | [Intermédiaire] | DR-13, DR-09 (+DC-09) | 0 mort en dead zone évitable ; tiles de repli nommées ≥ 80 % | 2-3 sem. ; 5 parties × 3-4 cartes |
| 5 | Killer counterplay | [Intermédiaire] | DR-06, DR-15, DR-05 | Identification avant reveal ≥ 70 % ; M-12 ↓ 50 % sur 5 tueurs | 4-6 sem. |
| 6 | Macro | [Intermédiaire] | DR-09, DR-10, DR-18, DR-16 (+DC-10) | Sauvetages punis < 25 % ; soins inutiles < 20 % ; 0 3-gen évitable | 3-4 sem. ; ~25 parties |
| 7 | Game sense | [Avancé] | DR-17, DR-07, DR-16, DR-21 (+DC-11) | 0 erreur de comptage ; deduction précision ≥ 80 % et rappel ≥ 50 % ; prédictions ≥ 60 % | 3-4 sem. |
| 8 | Chase avancée | [Avancé] | DR-05, DR-12 (difficiles), DR-13 (+DC-02 à DC-06) | M-05 ↓ 50 % ; départs sur événement ≥ 80 % ; M-04 ↑ à palettes égales | 4-6 sem. |
| 9 | Décision de haut niveau | [Expert] | DR-19, DR-11, DR-10 (+DC-07, DC-08, DC-12) | ≥ 80 % de pivots justifiés ; E-T* ↓ 50 % ; 0 trade injustifié | 4-8 sem. |
| 10 | Concepts compétitifs | [Expert] | DR-08, DR-11 (KYF), DR-19 en équipe | Callouts actionnables ≥ 80 % ; plan écrit pour 5 cartes ; métriques maintenues contre plus fort | Continu |

> **À retenir** : chaque critère est une [HEURISTIQUE]. Son rôle est de t'obliger à **mesurer**, pas de te certifier. Si un critère te paraît mal calibré pour toi, garde la direction et ajuste le chiffre — mais décide-le **avant** le bloc, pas après.

**Quoi relire avant chaque niveau** (la théorie qui explique le POURQUOI du drill) :

| Niv. | Chapitres et sections | Arbre (ch. 13) | Erreurs à surveiller |
|---|---|---|---|
| 1 | 2.1-2.3, 2.9 ; 15.1 (chiffres clés, pour le quiz) | — | E-D06, E-D07, E-D08 |
| 2 | 3.3 T01-T03, T14 | — | E-D01, E-D02, E-D05 |
| 3 | 3.3 T04-T05, 4.2-4.4 ; 3.9 situations 1-2 | Arbre 1 — Palette | E-D04, E-I01, E-I12 |
| 4 | 4.6, 5.3, 5.7 (drills de carte D1-D5), 6.9 (zones épuisées) | Arbre 2 — Quitter la tile | E-D03, E-A07, E-A08 |
| 5 | 7 (identification, typologie), fiches 7-8, 4.5 | — | E-D11, E-A03, E-T10 |
| 6 | 2.5, 6.2-6.5, 6.7 ; 11.3 | Arbres 3, 4, 5 | E-I02 à E-I06, E-D09, E-D10 |
| 7 | 6.6, 6.9, 10.3-10.7 | Arbre 6 — Totem | E-A08, E-T02 |
| 8 | 3.3 T06-T23, 3.8, 4.7 | Arbres 1 et 2 (versions « difficiles ») | E-A01, E-A02, E-A04, E-T03, E-T04 |
| 9 | 3.8, 6.10, 6.12, 12.4 | Arbres 7, 8, 9 | E-T01, E-T05, E-T06, E-T07 |
| 10 | 6.8, 12.5-12.7 | — | E-T12 |

Chaque niveau ci-dessous suit le format : **Compétences · Drills · Critère de passage · Durée · Pourquoi ce critère · Piège du critère**.

### Niveau 1 — Fondamentaux [Débutant]

- **Compétences** : connaître les constantes (gen 90 s, crochet 70 s/phase, soin 16 s, vaults, palettes, statuts) ; réussir ses skill checks ; se déplacer sans bruit inutile ; lire le HUD de base.
- **Drills** : DR-14 (skill checks / audio), DR-17 version simple (compter les crochets), DR-02 en introduction (fast vault).
- **Critère de passage** :
  - quiz de 20 questions sur les constantes ≥ **18/20** ;
  - **M-10** : ≤ **1 skill check raté par partie** sur 5 parties ;
  - **M-13** : **aucun corbeau AFK** sur 5 parties (corbeaux à 80 / 100 / 120 s d'inactivité [FACT] (VP, 9.3.0)).
- **Durée** : 1-2 semaines ; ~10 parties + 2 revues.
- **Pourquoi** : les erreurs de ce niveau (skill checks ratés, temps mort caché loin du tueur) coûtent des secondes **sans aucune contrepartie**, et elles sont les plus faciles à éliminer.
- **Piège** : viser le Great au prix de ratés. Un Great rapporte +1 % ; un raté coûte −10 % + 3 s. Contre des perks de skill checks difficiles suspectées, **accepte le Good**.

**Exemple de quiz (extrait, réponses d'après les sources du guide)** :

| # | Question | Réponse | Confiance |
|---|---|---|---|
| 1 | Temps d'un gen réparé seul ? | 90 s | (VM) |
| 2 | Durée d'une phase de crochet ? | 70 s | (VP) |
| 3 | Durée d'un soin d'un état, seul ? | 16 s | (SS) |
| 4 | Coût d'un skill check raté ? | −10 % + 3 s sans progression | (SS) |
| 5 | Durée d'un fast vault ? D'un medium ? D'un slow ? | 0,5 s / 0,9 s / 1,5 s | (SS) |
| 6 | Course droite requise pour un fast vault ? | ≥ 2,5 m | (SS) |
| 7 | Que se passe-t-il après ton 3e vault de la même fenêtre dans la même poursuite ? | Fenêtre bloquée 30 s pour toi | (SS) |
| 8 | Durée d'un stun de palette ? Temps de casse ? | 2 s ; 2,34 s | (SS) ; (VM) |
| 9 | Paliers de Bloodlust ? | +0,2 / +0,4 / +0,6 m/s à 15 / 25 / 35 s de poursuite | (VM) |
| 10 | Durée de vie des griffures ? | 10 s | (SS) |
| 11 | Rayon de la zone anti-camp ? | 16 m (rien ne se remplit au-delà) | (VM) |
| 12 | Protections après un décrochage ? | Endurance + 10 % Haste pendant 10 s, + Elusive 10 s tant que tous les gens ne sont pas réparés | (VP, 10.1.0) |
| 13 | Quand le tueur est-il révélé par Match Details ? | Dès qu'**un** survivant entre en poursuite ou perd un état | (VP, 9.6.0) |

Complète jusqu'à 20 avec les constantes de `kb/deliverables/DECISION_TREES.md` §0.4. Ne mets dans ton quiz **que** des valeurs sourcées.

### Niveau 2 — Caméra + pathing [Débutant]

- **Compétences** : regarder derrière soi **aux bons moments** ; fast vault à la demande ; approche des fenêtres en arc.
- **Drills** : DR-01 (caméra), DR-02 (fast vault).
- **Critère de passage** :
  - **M-06** : ≥ **80 %** de fast vaults en chase (revue ; la cible de long terme est 90 %) ;
  - **0 collision** de décor relevée sur 3 parties revues.
- **Durée** : 1-2 semaines ; 3 sessions KYF + ~10 parties.
- **Pourquoi** : un medium vault involontaire coûte 0,4 s de plus qu'un fast vault et casse l'élan ; une collision coûte souvent le coup. Ce sont des pertes **mécaniques**, indépendantes de la décision.
- **Piège** : l'intention d'un vault n'est **pas visible** en VOD. Compte **tous** les vaults faits en chase, sauf les slow vaults annoncés à voix haute (« slow volontaire »).

### Niveau 3 — Loops de base [Débutant]

- **Compétences** : shack, jungle gym, T-L, fillers ; arbre **PALETTE** (questions Q1-Q4) ; compter ses vaults sur une même fenêtre.
- **Drills** : DR-03 (shack), DR-04 (jungle gym), DR-12 (palette à voix haute), + DC-01 (justifier chaque palette).
- **Critère de passage** :
  - feuille de l'arbre PALETTE **annoncée avant l'action** pour ≥ **90 %** des palettes ;
  - **M-14** (palettes gaspillées) ↓ **50 %** vs base ;
  - **M-01** (durée de chase) médiane contre tueurs M1 ↑ vs base, **sans hausse de M-05** (coups évitables).
- **Durée** : 2-3 semaines ; ~20 parties + 4 revues.
- **Pourquoi** : les palettes sont une ressource **finie** de la carte. Une palette gaspillée tôt, c'est une chase plus courte plus tard — pour toi ou un coéquipier.
- **Piège** : M-14 baisse aussi si tu **greedes** davantage (tu ne poses plus → tu prends le coup palette debout). D'où le couplage obligatoire avec M-05.

> **Erreur fréquente** : appliquer « deux tours de fenêtre avant de poser la palette du shack » comme une règle. Elle dépend du tueur, du blocage au 3e vault et de ton état de santé (arbre PALETTE). Le seed la présentait comme absolue.

### Niveau 4 — Map awareness [Intermédiaire]

- **Compétences** : tiles de repli, zones riches et mortes, emplacement des gens, 3-gens potentiels, portes ; distinguer ce qui est fixe de ce qui est aléatoire sur chaque carte (données cartes encore incomplètes dans `kb/`).
- **Drills** : DR-13 (route planning), DR-09 (anti-3-gen), + DC-09 (carte des palettes).
- **Critère de passage** :
  - **M-07** : **0 mort en dead zone évitable** sur 5 parties ;
  - 2 tiles de repli nommées à chaque déplacement vers un nouvel objectif (voix enregistrée ; ≥ **80 %** en revue), **validé par un tiers** ou avec des critères fixés avant la revue.
- **Durée** : 2-3 semaines ; 5 parties par carte sur 3-4 cartes.
- **Pourquoi** : la chase se gagne souvent **avant** le premier contact, selon l'endroit où tu te trouves quand le tueur arrive.
- **Piège** : auto-contrôle complaisant (« oui, je savais où aller »). La voix enregistrée **avant** le déplacement est la seule preuve.

### Niveau 5 — Killer counterplay [Intermédiaire]

- **Compétences** : identifier le tueur **avant** son reveal ; counterplay par archétype puis par tueur ; reconnaître les add-ons qui changent la décision.
- **Drills** : DR-06 (identification), DR-15 (un tueur par session), DR-05 (red stain).
- **Critère de passage** :
  - **M-16** : identification avant reveal ≥ **70 %** sur 20 parties **où un indice existait avant le reveal** ;
  - **M-12** (coups de pouvoir évitables) ↓ **50 %** vs base sur les 5 tueurs travaillés, avec **≥ ~5 parties par tueur** (KYF si le tueur est rare en public). En dessous de 5 parties, le critère n'est **pas mesurable**.
- **Durée** : 4-6 semaines (1 tueur ou 1 archétype par semaine).
- **Pourquoi** : jouer une loop standard contre un tueur anti-loop ou à distance coûte des coups qu'aucune mécanique de chase ne rattrape.
- **Piège** : le tueur est révélé dès qu'**un** survivant est poursuivi ou blessé [FACT] (VP, 9.6.0). Sans le filtre « indice avant reveal », M-16 mesure le déroulement de la partie (un coéquipier poursuivi à la 20e seconde), pas ta compétence.

### Niveau 6 — Macro [Intermédiaire]

- **Compétences** : rotation de gens et anti-3-gen ; sauvetages (arbre CROCHET) ; soins (arbre SOIN) ; répartition des risques selon les états de crochet.
- **Drills** : DR-09, DR-10 (sauvetage), DR-18 (soin), DR-16 (HUD SoloQ), + DC-10 (prix du coup).
- **Critère de passage** (SoloQ et SWF mesurés **séparément**) :
  - **M-09** : sauvetages punis < **25 %** (avec exclusions, voir 14.5), **sans hausse des passages de phase par retard** ;
  - **M-11** : soins inutiles < **20 %**, **lu avec** les mises au sol « blessé depuis longtemps sans raison » ;
  - **M-17** : **0 3-gen évitable** sur 10 parties.
- **Durée** : 3-4 semaines ; ~25 parties + 5 revues.
- **Pourquoi** : la macro coûte souvent plus que la chase. Un soin inutile ≈ 0,36 gen ; un sauvetage raté coûte un trajet **et** un état de crochet.
- **Piège** : ne plus sauver et ne plus soigner **améliorent** M-09 et M-11. C'est pour cela que chaque critère a son garde-fou.

### Niveau 7 — Game sense [Avancé]

- **Compétences** : prédire la position du tueur et des coéquipiers ; comptage continu (crochets, gens, palettes, Bloodlust) ; perk deduction ; reconnaître une partie qui bascule.
- **Drills** : DR-17 (horloge mentale), DR-07 (perk deduction), DR-16, DR-21 (prédiction), + DC-11 (qu'est-ce qu'il sait ?).
- **Critère de passage** :
  - **M-18** : **0 erreur de comptage** sur 5 parties (comptes dits à voix haute et enregistrés) ;
  - **M-16** (deduction) : précision ≥ **80 %** **et** rappel ≥ **50 %**, avec ~2 perks annoncées par partie ;
  - prédictions de position correctes ≥ **60 %** [INCERTAIN], **seulement les prédictions vérifiables** (tueur vu, poursuite d'un coéquipier au HUD, lieu du prochain accrochage dans les ~15 s), « correct » défini **avant** (même zone / même landmark).
- **Durée** : 3-4 semaines.
- **Pourquoi** : au-delà de ce niveau, la différence se fait sur l'information : savoir ce que le tueur va faire **avant** qu'il le fasse.
- **Piège** : la précision seule se « triche » en n'annonçant qu'une perk évidente. Et ta VOD survivant ne montre pas le tueur la plupart du temps : une prédiction non vérifiable ne compte ni pour ni contre.

### Niveau 8 — Chase avancée [Avancé]

- **Compétences** : red stain et feintes ; Bloodlust ; quitter la tile sur événement ; mindgames ; loop vs « hold W » ; marge de latence ; pre-run.
- **Drills** : DR-05 et DR-12 en variante difficile, DR-13, + DC-02 (horloge de Bloodlust), DC-03 (budget en mètres), DC-04 (autopsie de coup), DC-05 (360 mesuré), DC-06 (premier contact).
- **Critère de passage** :
  - **M-05** : coups évitables par chase ↓ **50 %** vs **fin du niveau 3** ;
  - **M-15** : départs de tile sur événement ≥ **80 %** ;
  - **M-04** (first-hit timing) médiane ↑ vs base **à palettes consommées égales** (M-03), coups achetés exclus.
- **Durée** : 4-6 semaines.
- **Pourquoi** : à ce niveau, les coups restants viennent de décisions fines (quand partir, quand tenir) et non plus de fautes mécaniques.
- **Piège** : un M-04 long obtenu en brûlant 4 palettes n'est **pas** un progrès.

### Niveau 9 — Décision de haut niveau [Expert]

- **Compétences** : trades ; casser ou garder une chase ; tempo d'équipe ; valeur d'une seconde de chase ; arbres complets ; endgame.
- **Drills** : DR-19 intensif (revue), DR-11 (endgame), DR-10, + DC-07 (EV à froid), DC-08 (bilan de chase), DC-12 (avance / retard).
- **Critère de passage** :
  - ≥ **80 %** des moments pivots avec une décision justifiée par **l'info disponible au moment** (validation par un tiers ou critères fixés avant) ;
  - erreurs **E-T*** ↓ **50 %** vs base ;
  - **M-08** : **0 trade injustifié** sur 10 parties.
- **Durée** : 4-8 semaines.
- **Pourquoi** : les erreurs E-T (trade sans valeur, chase cassée au mauvais moment, 3-gen détecté trop tard, trappe contre porte mal arbitrée…) coûtent des parties entières, mais elles ne se voient qu'en revue.
- **Piège** : le **biais rétrospectif**. En VOD tu « sais » où était le tueur ; pendant la partie, non. Pause **avant** chaque décision.

### Niveau 10 — Concepts compétitifs [Expert]

- **Compétences** : SWF (rôles, protocoles, callouts, plan de carte, coordination des crochets) ; lecture d'une partie en termes de tempo ; connaître les limites des formats compétitifs (règlements et bans : non documentés dans `kb/`).
- **Drills** : DR-08 (callouts), DR-11 en KYF, DR-19 en équipe (revue croisée).
- **Critère de passage** :
  - callouts actionnables ≥ **80 %** (DR-08) ;
  - plan de partie écrit pour 5 cartes, et appliqué ;
  - métriques des niveaux 3-9 **maintenues** contre une opposition plus forte sur 2 blocs.
- **Durée** : continu.
- **Piège** : le MMR n'est pas affiché. « Opposition plus forte » n'est mesurable **que** contre des adversaires identifiés (scrims, tueur connu en KYF, compétition). Sinon, ce critère est **non mesurable** — ne prétends pas l'avoir validé.

Détail : `kb/research/batch11_training.md` §4.2 ; `kb/deliverables/TRAINING_PROGRAM.md` §1.

---

## 14.4 Catalogue des drills

Format : **Objectif · Méthode · Métrique · Erreur typique · Réussite**. Tous les seuils de réussite sont des **[HEURISTIQUE] [INCERTAIN]**. Principes communs :
- **Un seul objectif par session** : le drill définit ce que tu regardes ; tu acceptes de perdre des parties.
- **Retour immédiat** : chaque drill a une métrique comptable pendant ou juste après la partie.
- **Réussite d'un drill ≠ résultat de partie.**

### 14.4.1 Chase et tiles

| Drill | Objectif | Méthode | Métrique | Erreur typique | Réussite |
|---|---|---|---|---|---|
| **DR-01 Caméra** [Débutant] | Pathing propre en sachant où est le tueur | *Facile* : circuit fixe autour d'une tile connue, check caméra sur chaque segment droit, **jamais dans les 2-3 m avant un vault**. *Difficile* : en chase réelle, annoncer « derrière / gauche / droite » à chaque check | Collisions par chase ; medium vaults involontaires ; coups « pas vus venir » | Check trop tard (en approche du vault) ou trop long (on regarde le tueur au lieu de sa route) | 3 parties de suite sans collision ni medium involontaire (revue) |
| **DR-02 Fast vault** [Débutant] | Fast vault (0,5 s, garde l'élan) à la demande | KYF, tueur passif : 3 fenêtres de formes différentes (shack, jungle gym, main building) × 10 approches d'angles variés ; trouver l'arc qui donne ≥ 2,5 m de ligne droite | % fast / tentatives, par type de fenêtre | Couper l'angle ; tourner la caméra au dernier moment ; vaulter après un virage serré | ≥ 90 % en KYF ; ≥ 80 % en chase publique (revue) |
| **DR-03 Shack** [Débutant] | Entrée, fenêtre, palette, checkspots, rotations | 3-5 parties en emmenant **toute** chase au shack si possible ; noter par passage : entrée, vault, pose, regard, sortie. KYF : même approche 5 fois, puis variée | Secondes par passage ; vaults avant la pose ; coups reçus au shack | Vault prématuré ; « deux tours de fenêtre » appliqué mécaniquement ; rester après le 3e vault | Feuille PALETTE justifiée par passage ; ≥ 20 s **médians** par passage contre M1, **sans** hausse de M-05 ni des sorties sans événement |
| **DR-04 Jungle gym** [Débutant] | Reconnaître le côté fort (fenêtre sur le long mur) | Hors chase, identifier chaque gym croisé (long/short, côté fenêtre, côté palette) ; en chase, annoncer le plan avant d'entrer (« fenêtre puis palette, sortie vers le shack ») | % de gyms identifiés ; secondes par gym ; fenêtres bloquées subies | Boucler le côté court ; rester quand le tueur se poste au milieu | Plan correct ≥ 80 % (revue) |
| **DR-05 Red stain** [Intermédiaire] | Lire la direction du tueur, détecter les feintes | KYF : le tueur marche au hasard (avant / arrière / côté) derrière un mur haut ; annoncer « gauche / droite / feinte » ; 20 cycles, puis échanger les rôles | % de lectures correctes ; temps de décision | Réagir à la 1re rotation de tête ; oublier qu'Undetectable retire la red stain | ≥ 75 % sur 20 cycles |
| **DR-12 Palette à voix haute** [Débutant→Avancé] | Rendre l'arbre PALETTE automatique | Avant chaque palette, dire la feuille (« pre-drop », « tenir », « greed », « fenêtre », « quitter ») et la raison (« blessé 2 crochets », « Bloodlust ») ; en revue, juger avec l'info **du moment** | Palettes par chase ; palettes gaspillées ; mises au sol avec une palette debout à portée | Dire la feuille **après** avoir agi ; juger au résultat | Feuille annoncée avant l'action ≥ 90 % ; palettes gaspillées ÷ 2 vs base |
| **DR-13 Route planning** [Intermédiaire] | Toujours savoir où aller après la tile | Hors chase, nommer 2 tiles de repli en marchant vers un gen ; en chase, nommer la suivante **avant** de quitter ; 5 parties sur la même carte | Morts en dead zone ; départs sur événement ; secondes de trajet exposé | Partir vers le vide ; partir sans événement | 0 mort en dead zone évitable sur 5 parties ; ≥ 80 % de départs sur événement |

> **Note avancée — pourquoi « jamais dans les 2-3 m avant un vault »** : le fast vault exige ≥ 2,5 m de course droite [FACT] (SS). Tourner la caméra dans ce segment dévie la trajectoire et transforme le fast (0,5 s) en medium (0,9 s). L'angle toléré n'est pas documenté [INCERTAIN] : c'est précisément ce que DR-02 te fait découvrir par toi-même.

### 14.4.2 Tueur et information

| Drill | Objectif | Méthode | Métrique | Erreur typique | Réussite |
|---|---|---|---|---|---|
| **DR-06 Identification** [Intermédiaire] | Identifier le tueur avant le reveal, puis ses add-ons | Noter chrono + indice (berceuse, TR absent, son ou trace de pouvoir) **avant** le reveal ; puis signes d'add-ons ; vérifier à l'écran de fin (le loadout du tueur y est visible [FACT] (VP)) | % avant reveal **parmi les parties avec un indice avant le reveal** ; délai ; add-ons devinés | Confondre deux tueurs au TR proche ; ne pas réviser l'hypothèse | ≥ 70 % sur 20 parties |
| **DR-07 Perk deduction** [Avancé] | Déduire 2-4 perks et **adapter son jeu** | Journal : effet observé → perks candidates → conséquence pratique ; mise à jour à chaque événement (gen qui régresse, aura révélée, stun raccourci, Exposed…) ; vérification en fin | Précision **et** rappel ; nombre de décisions modifiées | Annoncer sur un seul indice ambigu ; ne rien changer ensuite | Précision ≥ 80 % et rappel ≥ 50 % sur 10 parties, ~2 perks/partie |
| **DR-15 Un tueur par session** [Intermédiaire] | Appliquer le counterplay d'un tueur précis | Relire sa fiche (handbook) ; vérifier **3 comportements précis** (ex. Huntress : LOS, changement de direction au lâcher, comptage des hachettes) | Coups de pouvoir évitables ; durée de chase vs ta moyenne | Jouer la loop standard ; changer de plan trop tard | 3 comportements appliqués dans 3 parties consécutives contre lui |
| **DR-20 Jouer tueur** [Intermédiaire] | Voir ce que le tueur voit et entend (il n'entend pas son propre TR, ne voit pas sa red stain [FACT]) | 5 parties tueur avec un tueur M1 ; noter ce qui t'a permis de trouver / toucher les survivants (griffures, grognements, bruit de vault, gens) et ce qui t'a fait perdre du temps (palettes, LOS) | 5 signaux utiles au tueur → 5 habitudes survivant à corriger | Jouer pour gagner au lieu d'observer | 5 habitudes identifiées et reliées à des IDs d'erreur |
| **DR-21 Prédiction** [Avancé] | Estimer la position du tueur | Toutes les ~60 s, ou à chaque perte de vue, dire où il sera dans 10 s ; vérifier en revue | % de prédictions correctes **vérifiables** | Oublier qu'il va vers l'objectif le plus rentable pour lui | ≥ 60 % sur 10 parties |

> **Note avancée — le modèle du cône (DR-21)** : 10 s après la dernière vue, un tueur à 4,6 m/s [FACT] (VM) peut être n'importe où dans un rayon de ~46 m (calcul, borne haute en ligne droite). Mais il va presque toujours vers **l'objectif le plus rentable** pour lui : gen frappé récemment, dernier bruit (skill check raté, fast vault), crochet où il vient d'accrocher, survivant blessé repéré [HEURISTIQUE]. Prédire, c'est choisir la bonne direction dans ce cône.

### 14.4.3 Macro, équipe, fin de partie

| Drill | Objectif | Méthode | Métrique | Erreur typique | Réussite |
|---|---|---|---|---|---|
| **DR-08 Callouts** [Expert] (SWF) | Qui / quoi / où / état / intention en < 2 s | Grammaire d'équipe fixée (landmark > horloge > relatif) ; partie enregistrée ; revue des callouts inutiles, ambigus, tardifs | Callouts / min ; % actionnables ; délai événement → callout | « Il est là ! » sans lieu ; le chaseur qui commente tout ; oublier les états (crochets, gens en %) | ≥ 80 % actionnables ; 0 sauvetage doublé par manque d'info |
| **DR-09 Anti-3-gen** [Intermédiaire] | Ne pas laisser un triangle serré | Repérer le triangle le plus serré dès que les gens sont vus ; décider « mon gen suivant » à chaque gen fini ; refaire le point à 4 gens restants | 3-gens subis ; distance entre les 3 derniers ; temps de marche entre gens | Réparer le plus proche du spawn ; réparer à 4 sur un gen | 0 3-gen évitable sur 10 parties |
| **DR-10 Sauvetage** [Intermédiaire] | Décrocher sans trade inutile, protéger le décroché | 10 parties : pour chaque sauvetage, temps de phase restant, position du tueur, approche (hors LOS ?), 20 s suivantes | % punis dans les 20 s ; passages de phase par retard ; doublons | Arriver en ligne droite dans sa LOS ; soigner sous le crochet | < 25 % punis, **en excluant** protection hits volontaires et trades justifiés, **sans hausse** des passages de phase |
| **DR-11 Endgame** [Expert] | Avoir un plan **avant** la fin | À 1 gen : où sont les portes, qui ouvre, qui sauve, qui reste en réserve ; seul : plan trappe / portes. KYF : gate camp, dernier survivant, sauvetage en EGC | Sorties réussies quand possibles ; morts évitables ; secondes perdues à la porte | Traîner à la porte ; ouvrir la porte la plus proche du tueur | Plan annoncé à 1 gen dans 100 % des parties ; ≤ 1 mort évitable en endgame sur 10 |
| **DR-14 Skill checks / audio** [Débutant] | Ne plus perdre de temps, entendre les signaux | Réglages audio (musique réduite, casque) ; 5 parties en comptant les ratés ; lever la caméra toutes les N s sans rater de check | Ratés / partie (≈ 12 s solo chacun) ; % de Great (info seulement) | Viser le Great au prix de ratés | ≤ 1 raté / partie hors perks de skill check difficiles |
| **DR-16 HUD SoloQ** [Intermédiaire] | Savoir qui est en chase, au crochet, au sol, sur gen | Loadouts alliés (Match Details) au début ; coup d'œil au HUD ~toutes les 30 s (à chaque skill check, par exemple) + une phrase mentale (« Meg en chase depuis 40 s, Dwight crochet phase 1 à mi-jauge ») | Sauvetages doublés ou manqués ; délai de réaction à un accrochage | Lire le HUD seulement au bruit de crochet | 0 doublon et 0 passage en phase 2 « par oubli » **de ta part** sur 10 parties SoloQ |
| **DR-17 Horloge mentale** [Débutant→Avancé] | Compter crochets, gens, palettes, Bloodlust | Dire le décompte à chaque accrochage (« Claudette 2, moi 1, gens : 3 restants ») ; en chase, compter depuis le dernier coup / casse (15 / 25 / 35 s) ; vérifier en fin | Erreurs de comptage ; décisions prises sur un compte faux | Ne compter que soi | Compte juste à chaque accrochage sur 5 parties |
| **DR-18 Soin** [Intermédiaire] | Soigner quand c'est rentable (arbre SOIN) | Avant chaque soin, dire « oui / non / plus tard » + raison ; noter le coût (16 s × 2) et ce qui arrive dans les 60 s | Soins interrompus ; perdus dans les 30 s ; contre coup unique | Soigner sous le crochet ; se regrouper à 3 pour un soin (**2 soigneurs max en 1v4** [FACT] (VM) ; le « 3 » du seed est la règle du 2v8) | < 20 % inutiles sur 10 parties, **lu avec** les mises au sol blessé sans raison |
| **DR-19 Revue de partie** [Débutant→Expert] | Transformer chaque partie en information | Méthode et gabarit de 14.6 | Erreurs classées par ID ; 1 erreur focus / semaine | Ne revoir que les défaites ; juger au résultat | 1 revue complète pour ~5 parties ; erreur focus en baisse sur 2 semaines |

> **Erreur fréquente — DR-16** : compter les oublis des coéquipiers. Le critère ne compte que **tes** oublis : tu étais le mieux placé et tu n'as pas bougé. Note aussi que le contenu exact du HUD survivant (icônes d'action, jauge de crochet, indicateur de chase) **n'est pas documenté** dans les sources du guide [INCERTAIN], et que le Survivor Intent System du PTB 10.2.0 (non LIVE) changerait ce drill s'il sortait.

### 14.4.4 Drills complémentaires de chase et de décision (DC)

Rattachement de niveau proposé [HEURISTIQUE]. Issus des exercices de `kb/research/batch6_chase_tech.md`.

| Drill | Niv. | Objectif | Méthode | Métrique | Erreur typique | Réussite |
|---|---|---|---|---|---|---|
| **DC-01 Justifier chaque palette** | 3 | Chaque palette a une raison | Après 10 parties, écrire pour chaque palette sa justification en 1 ligne | % de palettes justifiées ; coups en greed ; palettes sans menace | Greed par habitude ; pre-drop contre un tueur loin | ≤ 1 palette gratuite et ≤ 1 coup en greed sur palette safe par partie |
| **DC-02 Horloge de Bloodlust** | 8 | Connaître le palier (+0 / +0,2 / +0,4 / +0,6 m/s) | Compter à voix haute ; remettre à 0 sur coup, casse, usage des pouvoirs listés par le wiki | Écart compte / VOD | Croire qu'un stun remet à zéro (**non documenté** [INCERTAIN]) | Palier correct ≥ 90 % sur 10 chases |
| **DC-03 Budget en mètres** | 8 | Estimer son avance en arrivant sur une tile | Annoncer « +X m » en arrivant ; comparer à la VOD | Erreur moyenne | Entrer dans une tile sans avance | Erreur ≤ 2 m sur 20 arrivées |
| **DC-04 Autopsie de coup** | 8 | Distinguer latence et erreur | 20 coups « injustes » en VOD : palier de Bloodlust, type de vault, distance au début de la fente | % expliqués hors latence | Blâmer le réseau | Savoir classer chaque cas ; si la majorité s'explique hors latence, travailler la marge |
| **DC-05 360 mesuré** | 8 | Savoir si le 360 est rentable **pour toi** | KYF, ami M1, 20 tentatives à courte distance en terrain ouvert | % de fentes ratées provoquées ; distance perdue en échec | 360 réflexe alors qu'une tile est atteignable | Pas de seuil fixe : coup inévitable → tout taux > 0 est un gain ; tile atteignable → taux très élevé requis. Résultat **surestimé** contre un ami |
| **DC-06 Premier contact** | 8 | Mesurer l'effet du pre-run | 10 parties : distance au premier contact ; déjà en route vers une tile ? | Durée des chases avec vs sans pre-run | Pre-run au moindre TR, en courant, vers les alliés | Une différence mesurée sur **tes** parties (aucun seuil sans données) |
| **DC-07 EV à froid** | 9 | Mettre à nu ses biais de palette | 10 décisions en VOD : estimer la probabilité de réussite et le temps de loop **avant** de voir la suite | Décisions cohérentes avec son propre modèle | Prendre le modèle ([HYPOTHÈSE]) pour une mesure | ≥ 70 % cohérentes + liste de tes biais |
| **DC-08 Bilan de chase** | 9 | Juger une chase à ce qu'elle rapporte à l'équipe | Par chase : durée, alliés sur gens, gens tombés, issue | Secondes-survivant nettes par chase ([HYPOTHÈSE]) | Compter les chases courtes comme des fautes | Moyenne positive ; chases courtes **comprises** (cause), pas comptées comme fautes |
| **DC-09 Carte des palettes** | 4 | Voir où l'on meurt | Dessiner en fin de partie les palettes utilisées et les mises au sol | Mises au sol en zone vidée | Ramener la chase dans une zone vidée | Tendance décroissante sur 20 parties |
| **DC-10 Prix du coup** | 6 | Connaître le coût réel d'un coup reçu | 10 parties : soin fait ? par qui ? durée ? chase suivante plus courte ? | Secondes-survivant réellement dépensées par coup | Soins inutiles ; greed blessé | Connaître ta moyenne et la réduire |
| **DC-11 Qu'est-ce qu'il sait ?** | 7 | Gérer l'information que tu émets | À chaque perte de LOS, dire ce que le tueur peut savoir (griffures 10 s, sang, son) | Annonce correcte + action cohérente | Fast vault bruyant juste après avoir cassé la LOS | ≥ 80 % en VOD |
| **DC-12 Avance / retard** | 9 | Adapter la variance à l'état de partie | Avant chaque chase : « avance / égalité / retard » + niveau de risque accepté | Cohérence en VOD | Style fixe quelle que soit la partie | ≥ 80 % des chases |

> **Note avancée — DC-07 et DC-10 sont des exercices de cohérence, pas de mesure** : le coût net d'un coup reçu en étant sain n'est pas connu, et les perks d'Exhaustion ne sont pas intégrées aux calculs sources. Ces drills t'apprennent à raisonner de façon **constante**, pas à obtenir un chiffre vrai.

### 14.4.5 Choisir son drill : QUOI → POURQUOI → QUAND → COMMENT → CONTRE → ÉCHEC → EXERCICE

- **QUOI** : le drill qui cible ton **erreur focus** de la semaine (celle qui revient le plus, ou qui coûte le plus de secondes).
- **POURQUOI** : travailler deux choses à la fois dilue l'attention ; tu ne sauras pas laquelle a fait bouger la métrique.
- **QUAND** : drill principal en Séance 1, drill secondaire en Séance 2 (14.7).
- **COMMENT** : lis l'erreur dans la base `E-xx` → prends le drill qu'elle cite → note la métrique de départ (base).
- **CONTRE** : un drill KYF surestime ta réussite (ami tueur prévisible, pas de pression de partie). Toujours confirmer en public.
- **CAS D'ÉCHEC** : drill réussi en KYF, métrique inchangée en public → le geste n'est pas automatique ; reste sur la variante facile en public avant de monter.
- **EXERCICE** : relis tes 3 dernières revues ; compte les IDs d'erreur ; le plus fréquent devient l'erreur focus, son drill devient le drill principal.

| Si ton erreur focus est… | Drill(s) cité(s) par la base d'erreurs |
|---|---|
| Skill checks ratés (E-D06) | DR-14 |
| Ne jamais regarder derrière / au mauvais moment (E-D01, E-D02) | DR-01, DR-02 |
| Palette posée dès que le tueur approche (E-D04) ou greed (E-I01) | DR-12, DR-03 |
| Course vers une dead zone (E-D03) | DR-13, DR-04 |
| Décrochage sous les yeux du tueur (E-D09) | DR-10 |
| Soin sous le crochet (E-D10) / over-heal (E-I02) | DR-10, DR-18 |
| 3-gen créé ou détecté trop tard (E-I06, E-T06) | DR-09 |
| Red stain suivie aveuglément / première feinte (E-A02, E-T04) | DR-05, DR-03 |
| Hook trade sans valeur (E-T01) | DR-10, DR-19 |
| Perk deduction figée (E-T02) | DR-07 |
| Callouts trop nombreux ou imprécis (E-T12) | DR-08 |

Détail : `kb/research/batch11_training.md` §1 et §3 ; `kb/deliverables/TRAINING_PROGRAM.md` §2.

---

## 14.5 Les métriques de progression

### 14.5.1 Définition d'une chase (convention commune)

Une **chase** commence au premier instant où le tueur te poursuit. En VOD : début de la musique de chase, ou premier sprint de fuite avec le tueur en vue (± 2 s). Elle finit à la **première** de ces issues :
- mise au sol ;
- fin de poursuite (le tueur abandonne, ou tu le sèmes) ;
- changement de cible du tueur.

Plusieurs chases peuvent avoir lieu dans une partie. Tous les chronos se prennent sur la VOD. On rapporte des **médianes**, séparées **par archétype de tueur** et **par mode** (SoloQ / SWF).

> **Note avancée** : les conditions de jeu d'une poursuite sont documentées — début : survivant visible à ≤ 12 m, qui court, tueur qui marche ; fin : > 18 m, 5 s en casier, LOS perdue > 8 s, ou hors de ± 35° du centre de vision [FACT] (SS). La convention VOD ci-dessus en est une approximation pratique.

### 14.5.2 Les 19 métriques

| ID | Métrique | Définition | Sens | Ordre de grandeur [INCERTAIN] | À coupler avec / piège |
|---|---|---|---|---|---|
| **M-01** | Durée de chase | Fin − début (s) | ↑ à ressources égales | Médiane qui progresse de bloc en bloc ; « > 60 s = bonne chase » : formule courante, **non sourcée** | M-03, M-19 ; viser M-01 seule pousse à fuir loin |
| **M-02** | Gens pendant ta chase | Gens **terminés** par l'équipe pendant la chase + réparateurs actifs moyens (0-3, lu au HUD [INCERTAIN]) | ↑ | **Pas de cible** | Compte « en escalier » : dépend de l'avancement initial → préférer M-19 |
| **M-03** | Palettes par chase | Palettes **posées par toi** ; + secondes de chase par palette | ↓ à durée égale | ~60 s avec 1-2 palettes plutôt que 4-5 | Une chase courte à 0 palette n'est pas « bonne » |
| **M-04** | First-hit timing | Début de chase → 1er coup qui te fait perdre un état (coup absorbé par Endurance noté à part) | ↑ | Pas de cible | Coups **achetés** exclus ; lire à palettes égales ; non défini si tu commences blessé |
| **M-05** | Coups évitables | Coups classés évitables avec une grille : free hit (E-I07), greed (E-I01), vault en angle (E-D05), tile gardée trop longtemps (E-A01), départ sans événement… | ↓ | ≤ 1 / chase au niv. 3 ; ~0 au niv. 8 | Classement subjectif ; latence : ne pas classer évitable ce qui ne l'était qu'à l'écran |
| **M-06** | Vaults ratés | Medium / slow involontaires + fenêtre bloquée + collisions ; % de fast | ↓ / ↑ | ≥ 90 % fast (80 % au niv. 2) | Tous les vaults de chase comptent, sauf slow annoncés |
| **M-07** | Morts en dead zone | Aucune ressource atteignable au coup final **alors qu'une route existait** au début de la séquence | ↓ | 0 évitable | Dead zones « subies » comptées à part |
| **M-08** | Hook trades | Sauveteur ou décroché accroché dans les 60 s ; classés justifiés / injustifiés | ↓ injustifiés | 0 injustifié | Un trade justifié n'est pas une erreur |
| **M-09** | Mauvais sauvetages | Perte d'état dans les 20 s + sauvetages doublés + passages de phase par retard | ↓ | < 25 % | **Exclure** protection hits volontaires et trades justifiés ; coup sous Endurance noté à part ; toujours avec les passages de phase |
| **M-10** | Efficacité gen | Temps à réparer ÷ temps disponible (vivant, pas en chase, pas accroché, pas au sol, pas en soin nécessaire) ; + skill checks ratés | ↑ | > 70 % | Dénominateur subjectif ; pousse à rester trop tard sur le gen → coupler M-07, M-09, E-I14 |
| **M-11** | Soins incorrects | Interrompus, perdus dans les 30 s, contre un tueur à coup unique, sous le crochet | ↓ | < 20 % des soins | Maximisé en ne soignant plus → lire avec les mises au sol blessé sans raison |
| **M-12** | Erreurs face au pouvoir | Coups du **pouvoir** classés évitables (LOS, timing d'esquive…) | ↓ | ↓ 50 % sur un tueur travaillé | ≥ ~5 parties par tueur |
| **M-13** | Temps inactif | Secondes sans objectif (caché sans menace, marche sans but) ; corbeaux AFK | ↓ | 0 corbeau AFK | Se cacher par choix tactique justifié ≠ inactif |
| **M-14** | Palettes gaspillées | Raison **annoncée avant l'action** absente + indicateur objectif : ni stun, ni casse, ni détour du tueur, ni accès à une autre ressource dans ~10 s (seuil [INCERTAIN]) | ↓ | ≤ 1 / partie | Baisse aussi en greedant → coupler M-05 |
| **M-15** | Départs sur événement | % des sorties de tile faites pendant une casse, un stun, un vault du tueur, un cooldown ou une perte de LOS | ↑ | ≥ 80 % | — |
| **M-16** | Identification / deduction | % d'identifications avant reveal (parties avec indice) ; précision **et** rappel de la perk deduction | ↑ | ≥ 70 % ; ≥ 80 % / ≥ 50 % | Dépend aussi des coéquipiers (reveal) |
| **M-17** | 3-gens évitables | 3-gen subi alors que le triangle était repérable avant 4 gens restants | ↓ | 0 | — |
| **M-18** | Erreurs de comptage | Crochets / gens / vaults mal comptés **au moment d'une décision** | ↓ | 0 | — |
| **M-19** | Valeur de chase (dérivée) | ≈ M-01 × réparateurs actifs moyens (charges d'équipe) ; ÷ 90 → équivalents-gen | ↑ | ~135 charges (≈ 1,5 équivalent-gen) pour 45 s avec 3 réparateurs seuls (calcul plafond) | **Surestime** ; non contrefactuelle ; **0 gen terminé possible** |

### 14.5.3 Zoom : M-19, ou pourquoi la durée de chase ne suffit pas [Avancé]

- **QUOI** : la valeur d'une chase = les charges que ton équipe produit **pendant** que tu occupes le tueur.
- **POURQUOI** : 60 s de chase pendant que trois coéquipiers réparent chacun un gen ≈ 180 charges ≈ **2 équivalents-gen** ; la même chase pendant que l'équipe se soigne ≈ **0**. La durée seule ne dit presque rien.
- **COMMENT** : M-19 ≈ durée × réparateurs actifs moyens. Exemple : 45 s × 3 = 135 charges ≈ 1,5 équivalent-gen.
- **CONTRE (limites)** :
  - suppose 1 c/s par réparateur ; à deux sur un gen, chacun produit ~0,85 c/s [FACT] (SS) ; trajets et skill checks ratés ignorés → **plafond** ;
  - 135 charges réparties sur 3 gens = 45 charges chacun → **aucun gen terminé** possible. L'ancienne cible « ≥ 1 gen terminé par chase de 45 s » était fausse et a été retirée ;
  - valeur **brute**, pas contrefactuelle : si tu n'étais pas poursuivi, le tueur mettrait la pression ailleurs et une partie de ces charges serait produite quand même [HYPOTHÈSE].
- **CAS D'ÉCHEC** : comparer ton M-19 à celui d'un ami. Il mesure autant le lobby (coéquipiers qui réparent ou non) que toi.
- **EXERCICE** : sur 10 chases, calcule M-19 ; trie-les ; regarde les 3 plus basses : était-ce ta chase qui était courte, ou tes coéquipiers qui ne réparaient pas ?

> **Erreur fréquente** : « 1 seconde de chase vaut 1/3 de gen » (affirmation du seed). **Faux** : avec 3 réparateurs séparés, c'est ~1/30 de gen par seconde.

### 14.5.4 Comment relever les métriques

| Moment | Durée | Ce qu'on relève |
|---|---|---|
| **À chaud** (fin de partie) | ≤ 2 min | Tueur, carte, SoloQ / SWF, résultat, ressenti, 1-3 moments pivots **perçus**, décompte rapide (sauvetages, soins, palettes posées), perks déduites vs réelles (écran de fin) |
| **En revue** (VOD) | 30-45 min | Chronos de chase (M-01, M-04), classement des coups (M-05, M-12), vaults (M-06), sauvetages (M-08, M-09), départs de tile (M-15), temps disponible / réparation (M-10, M-13) |
| **Agrégation** | 10 min / semaine | Par bloc de **≥ 10 parties** ; **médianes** (une chase de 3 min contre un tueur débutant écrase une moyenne) ; séparer par archétype et par mode |

- La revue VOD est la partie la plus coûteuse : ne la faire que pour **1 partie sur ~3-5** [INCERTAIN].
- **Outils** : la fiche de 14.6 (un fichier par partie) + un tableau récapitulatif (une ligne par partie). Aucun outil externe requis.

**Tableau récapitulatif — exemple de colonnes** :

```
| Date | # | Mode | Tueur | Archétype | Carte | Résultat | M-01 méd. | M-03 | M-05 | M-14 | M-09 | M-11 | Erreur focus | Revue VOD ? |
```

### 14.5.5 Couples obligatoires (loi de Goodhart)

Optimiser une métrique seule la déforme. Toujours suivre un **couple** :

| Métrique visée | À lire avec | Ce que le couple empêche |
|---|---|---|
| M-01 (durée) | M-03 (palettes) et M-19 (valeur) | Fuir loin, brûler toutes les palettes, refuser tout coup de protection |
| M-04 (first-hit) | M-03 | Retarder le coup en consommant 4 palettes |
| M-09 (mauvais sauvetages) | Passages de phase par retard | Ne plus sauver |
| M-11 (soins incorrects) | Mises au sol blessé sans raison | Ne plus soigner |
| M-14 (palettes gaspillées) | M-05 (coups évitables) | Greeder au lieu de poser |
| M-10 (efficacité gen) | M-07, M-09, E-I14 | Rester sur le gen trop tard, ne jamais sauver |

### 14.5.6 Pièges d'interprétation

| Piège | Ce qui se passe | Parade |
|---|---|---|
| **Corrélation ≠ causalité** | « Mes longues chases sont des victoires » : un tueur faible produit à la fois de longues chases et des défaites pour lui. Le seed a fait ce contresens (« builds de chase ≈ 28 % → une belle poursuite ne sert à rien ») | Comparer à tueur, carte et mode comparables |
| **Facteurs de confusion** | Tueur, add-ons, carte (palettes revues en 9.2.0 / 9.3.0 [FACT]), MMR, mode, ping, coéquipiers | Toujours les noter ; ne comparer qu'à l'intérieur d'un même groupe |
| **Petits échantillons** | 3 parties ne disent rien | ≥ 10 parties, médianes, blocs |
| **Biais de sélection** | Ne revoir que les défaites ou les parties « intéressantes » | Choisir les parties à revoir **avant** d'en connaître le résultat |
| **Biais de résultat** | Bonne décision / mauvaise issue (latence, feinte réussie, coéquipier) | Juger la décision avec l'info du moment |
| **Biais rétrospectif** | En VOD tu sais où était le tueur | Pause **avant** la décision |
| **Latence** | La VOD ne montre pas ce que le serveur a validé ; si la connexion du tueur est bonne, le coup est décidé par son client [FACT] (VP, principe) | Ne pas classer évitable un coup qui ne l'était qu'à l'écran (E-T08) |
| **Métriques d'équipe** | M-02, M-19, M-16 : en SoloQ, elles mesurent autant le lobby que toi | Bases séparées par mode ; prudence |
| **Inaction récompensée** | M-09, M-11, M-14, M-10 s'améliorent si l'on évite l'action | Couples obligatoires (14.5.5) |
| **Résultat vs décision** | M-09, M-11, DR-10, DR-18 comptent des **issues** dans une fenêtre (20 s, 30 s) | Compléter par la matrice décision × résultat |
| **Dérive du matchmaking** | Tes adversaires progressent avec toi | Une métrique stable peut être un progrès ; comparer à ta base |

> **À retenir** : une métrique n'est jamais un verdict. C'est une **question** : « pourquoi ce chiffre a-t-il bougé ? » La réponse se trouve dans la revue, pas dans le tableau.

Détail : `kb/research/batch11_training.md` §5.1-5.4 ; `kb/deliverables/TRAINING_PROGRAM.md` §3.

---

## 14.6 La revue de partie [Débutant→Expert]

### 14.6.1 QUOI → POURQUOI → QUAND

- **QUOI** : revoir l'enregistrement d'une partie pour classer tes décisions, pas pour revivre la partie.
- **POURQUOI** : c'est le seul retour fiable. La partie te donne une issue ; la revue te donne une cause.
- **QUAND** : fiche à chaud juste après la partie ; revue à froid **dans les 24-48 h** [INCERTAIN] — assez tôt pour te souvenir de tes intentions, assez tard pour ne plus être dans l'émotion.

### 14.6.2 Méthode en 10 étapes

1. **Enregistrer** toutes les parties d'une session (outil de capture local). Décider **à l'avance** lesquelles seront revues (ex. la 1re et la 3e de chaque séance + 1 au choix) → pas de biais de sélection.
2. **Fiche à chaud** (≤ 2 min) : partie « Contexte » du gabarit, surtout les moments pivots **perçus** (ils serviront à mesurer l'écart entre ressenti et réalité).
3. **Revue à froid** :
   - passe en **×2** pour repérer les séquences (chases, sauvetages, soins, endgame) et relever les chronos ;
   - passe en **×1** sur **3-5 moments pivots** (un coup reçu, une palette, un sauvetage, une décision de gen, l'endgame).
4. **Pour chaque pivot** : pause **avant** la décision, puis écrire :
   - (a) ce que je savais (TR, red stain, HUD, comptes) ;
   - (b) les options (feuilles d'arbre) ;
   - (c) ce que j'ai choisi et pourquoi ;
   - reprendre la lecture → (d) le résultat ;
   - (e) classer dans la matrice décision × résultat (ci-dessous).
5. **Classer** chaque erreur par ID `E-xx`. Erreur absente de la base → proposer une entrée au format **Erreur → Pourquoi → Punition → Correction → Drill**.
6. **Relever les métriques** et les ajouter au tableau récapitulatif.
7. **Vue du tueur** sur 1 pivot : qu'est-ce qu'il voyait ? Griffures (10 s), sang, grognements, bruit de vault — et ce qu'il ne voyait pas : ta red stain, son propre TR [FACT]. C'est souvent là qu'apparaît l'erreur d'information.
8. **Choisir UNE erreur focus** pour la semaine (la plus fréquente ou la plus coûteuse en secondes) + son drill. Pas trois.
9. **Hebdomadaire** : agrégat sur ≥ 10 parties, médianes, comparaison à la base du niveau ; décision : **rester / passer / revenir**.
10. **SWF** : revue croisée (chacun revoit la chase d'un autre, **sans juger le résultat**) + revue des callouts (DR-08).

### 14.6.3 La matrice décision × résultat

```
                       RÉSULTAT
                  bon              mauvais
             ┌────────────────┬────────────────────┐
   bonne     │ Bonne / Bon    │ Bonne / Mauvais    │
 DÉCISION    │ garder         │ VARIANCE :         │
             │                │ ne rien changer    │
             ├────────────────┼────────────────────┤
   mauvaise  │ Mauvaise / Bon │ Mauvaise / Mauvais │
             │ CHANCE :       │ corriger           │
             │ corriger quand │ (erreur focus      │
             │ même           │ candidate)         │
             └────────────────┴────────────────────┘
```

> **À retenir** : la case la plus dangereuse est **Mauvaise / Bon**. Une mauvaise décision qui a marché devient une habitude — et elle finira par coûter une partie. La case la plus mal traitée est **Bonne / Mauvais** : on « corrige » une bonne décision parce qu'elle a été punie par la variance.

### 14.6.4 CONTRE, CAS D'ÉCHEC, EXERCICE

- **CONTRE (ce qui rend la revue inutile)** :
  - ne revoir que ses chases : la macro coûte souvent plus ;
  - accuser le tueur ou les coéquipiers : on ne contrôle que ses décisions ;
  - tirer une règle d'une seule partie ;
  - écrire « j'aurais dû poser » **sans dire quel indice** aurait dû déclencher la pose.
- **CAS D'ÉCHEC** : une revue qui produit 12 erreurs et aucune erreur focus. Elle a pris 45 minutes et ne changera rien à la semaine suivante.
- **EXERCICE — la revue minimale** : si tu n'as que 15 minutes, fais seulement les étapes 2, 4 (sur **un** pivot) et 8. C'est mieux qu'une revue complète faite une fois par mois.

### 14.6.5 Gabarit — fiche de revue de partie (à copier)

````markdown
# Revue de partie — AAAA-MM-JJ #n

## Contexte (à chaud, ≤ 2 min)
- Patch : 10.1.2a (LIVE) | Mode : SoloQ / SWF (taille : _) | Ping ressenti : bas / moyen / haut
- Tueur : ______ | Archétype : M1 / anti-loop / ranged / mobilité / furtif / zone
- Identifié à : mm:ss, par l'indice : ______ | Avant le reveal : oui / non | Indice dispo avant reveal : oui / non (M-16)
- Carte : ______ | Offrande de carte : oui / non
- Mon build / objet : ______ | Loadouts coéquipiers notables (Match Details) : ______
- Résultat : évadé / sacrifié / trappe | Équipe : _ évadés
- Niveau du programme : _ | Drill du jour : DR-__ | Erreur focus : E-__
- Ressenti (1 phrase) : ______
- Moments pivots perçus (1-3) : mm:ss ______ / mm:ss ______ / mm:ss ______

## Perk deduction (M-16)
| Indice (mm:ss) | Perk(s) candidate(s) | Conséquence pratique | Vérifié fin de partie |
|---|---|---|---|
| | | | oui / non |

## Chases (une ligne par chase)
| # | Début | Fin | Issue (sol / semé / abandon / changement cible) | M-01 durée | M-04 1er coup (acheté ?) | M-03 palettes | M-14 gaspillées | M-05 évitables | M-06 vaults ratés | M-15 départs sur événement (x/y) | Réparateurs actifs moy. | M-02 gens | M-19 valeur |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | | | | | | | | | | | | | |

## Crochets et sauvetages
| mm:ss | Qui (état crochets) | Mon rôle | Temps restant de phase | Tueur à < 16 m ? | Issue à +20 s | Trade ? justifié ? (M-08) | Mauvais sauvetage ? exclusions ? (M-09) | Passage de phase par retard ? |
|---|---|---|---|---|---|---|---|---|
| | | | | | | | | |

## Soins (M-11)
| mm:ss | Qui | Durée | Interrompu ? | Perdu dans les 30 s ? | Contre coup unique ? | Décision (arbre SOIN) correcte ? |
|---|---|---|---|---|---|---|
| | | | | | | |
- Mises au sol alors que blessé depuis longtemps sans raison : ___

## Gens et macro
- Triangle repéré au début : ______ | 3-gen subi : oui / non / évitable (M-17)
- Temps à réparer / temps disponible : ___ % (M-10) | Skill checks ratés : ___
- Temps inactif / corbeaux AFK (M-13) : ___ | Erreurs de comptage (M-18) : ___
- Morts en dead zone (M-07) : évitable ___ / subie ___ | Coups de pouvoir évitables (M-12) : ___

## Endgame
- Plan annoncé à 1 gen : oui / non | Contenu : ______
- Portes / trappe / EGC : ______ | Mort évitable en endgame : oui / non

## Moments pivots (revue à froid : pause AVANT la décision)
### Pivot 1 — mm:ss
- Ce que je savais : ______
- Options (feuilles d'arbre) : ______
- Mon choix et pourquoi : ______
- Résultat : ______
- Matrice : bonne/bon · bonne/mauvais · mauvaise/bon · mauvaise/mauvais
- ID d'erreur : E-__ (ou nouvelle entrée proposée)
- Ce que voyait le tueur : ______

## Synthèse
- Erreurs classées (ID × nombre) : ______
- Nouvelle entrée pour la base d'erreurs : ______
- Erreur focus de la semaine : E-__ | Drill : DR-__
- Pièges vérifiés : biais de résultat [ ] · biais rétrospectif [ ] · latence [ ] · coéquipiers/tueur accusés à tort [ ] · inaction récompensée [ ]
````

> **Note avancée — la colonne « Tueur à < 16 m ? »** : 16 m est le rayon de la zone anti-camp [FACT] (VM) ; rien ne se remplit au-delà, et le poids décroît avec la distance. Ordre de grandeur (calcul SS, ±10 %, tueur immobile, aucun autre survivant proche) : tueur collé (≤ 4 m) → auto-décrochage ≈ 29,5 s après l'accrochage ; à 10 m ≈ 44,5 s ; à 15 m, pas avant la fin de la phase. La colonne sert d'abord à classer le contexte du sauvetage ; ces temps ne sont qu'un repère.

Détail : `kb/research/batch11_training.md` §5.5 et §6 ; `kb/deliverables/TRAINING_PROGRAM.md` §5-6.

---

## 14.7 La semaine type [HEURISTIQUE]

Hypothèse : ~4-6 h de jeu par semaine [INCERTAIN]. Les jours sont indicatifs : **l'ordre et les proportions** comptent plus que le calendrier.

| Moment | Durée | Contenu | Pourquoi |
|---|---|---|---|
| **Séance 1** | 60-90 min | 10 min de rappel (fiche du niveau, erreur focus, arbre concerné) → parties focalisées sur le **drill principal** | Un seul objectif par séance ; on accepte de perdre des parties |
| **Séance 2** | 60-90 min | KYF (ou public + revue si pas d'ami tueur) sur le **drill secondaire** | Répétition contrôlée ; sans ami : plus de parties avant de conclure |
| **Séance 3** | 60-90 min | Parties « libres », **fiche à chaud remplie** à chaque partie | Vérifier que le geste tient hors du drill (mesure en conditions normales) |
| **Revue** | 30-45 min, dans les 24-48 h | 1-2 parties revues (14.6) ; mise à jour des métriques ; choix de l'erreur focus suivante | La partie ne donne pas le retour : une victoire peut cacher 5 erreurs |
| **Bilan hebdo** | 10 min | Agrégat sur ≥ 10 parties (médianes, même mode) vs base ; décision **rester / passer / revenir** | Passage seulement sur 2 blocs consécutifs |

```
 Lun          Mer          Ven          Sam          Dim
 ┌────────┐   ┌────────┐   ┌────────┐   ┌────────┐   ┌────────┐
 │Séance 1│   │Séance 2│   │Séance 3│   │ Revue  │   │ Bilan  │
 │drill   │   │drill   │   │libre + │   │1-2 VOD │   │hebdo   │
 │principal│  │second. │   │fiche   │   │30-45 mn│   │10 min  │
 └────────┘   └────────┘   └────────┘   └────────┘   └────────┘
   (jours indicatifs — seul l'ordre compte)
```

- **Parties à revoir** : décidées **à l'avance** (ex. 1re et 3e de chaque séance + 1 au choix) ; revue VOD complète ≈ 1 partie sur 3-5 [INCERTAIN].
- **Variante SoloQ seul** : Séance 2 en public + revue ; critères d'équipe mesurés contre une base **SoloQ uniquement**.
- **Variante SWF** : revue croisée (chacun revoit la chase d'un autre, sans juger le résultat) + revue des callouts (DR-08).

### Exemple rempli : une semaine au niveau 3 [Débutant]

| Moment | Ce que tu fais concrètement |
|---|---|
| Rappel (10 min) | Relire les feuilles PAL de l'arbre PALETTE ; erreur focus de la semaine : **E-D04** (palette posée dès que le tueur approche) |
| Séance 1 | DR-12 : avant **chaque** palette, dire la feuille + la raison. Tu vas perdre des chases en parlant : c'est prévu |
| Séance 2 | DR-03 en KYF : l'ami tueur rejoue 5 fois la même approche du shack, puis varie. Sans ami : 3-5 parties publiques en emmenant les chases au shack, VOD de chaque passage |
| Séance 3 | Parties libres, fiche à chaud ; compter les palettes posées et les coups pris palette debout |
| Revue | 2 parties : pour chaque palette, la feuille était-elle annoncée **avant** ? M-14 (gaspillées) et M-05 (évitables) relevées ensemble |
| Bilan | M-14 a baissé **et** M-05 n'a pas monté → le bloc compte. M-14 a baissé mais M-05 a monté → tu greedes : le bloc ne compte pas, garder le focus |

> **Erreur fréquente** : sauter la Séance 3. Sans parties « libres » mesurées, tu ne sais pas si le geste tient quand tu ne penses pas au drill — et c'est la seule chose qui compte en partie réelle.

### SoloQ vs SWF

| Aspect | SoloQ | SWF |
|---|---|---|
| Drills d'équipe | DR-16 (HUD) remplace les callouts | DR-08 (callouts) ; revue croisée |
| Critères d'équipe (M-02, M-09, M-17, M-19) | Base SoloQ uniquement ; bruit plus fort (le lobby pèse) | Base SWF uniquement ; plus contrôlables |
| Critères auto-évalués | Critères écrits avant la VOD | Validation par un coéquipier possible |
| KYF | Nécessite un ami tueur ; sinon « public + revue » | Un membre du groupe peut jouer tueur (et apprend via DR-20) |

Détail : `kb/research/batch11_training.md` §4.3 ; `kb/deliverables/TRAINING_PROGRAM.md` §4.

---

## 14.8 Limites du programme (à lire avant de l'appliquer)

| Limite | Conséquence |
|---|---|
| **Aucune cible ni durée n'a de source** | Ordres de grandeur de joueur ; ne valent que comme **direction** et contre ta base |
| **Aucun seuil calibré** : le calibrage demandé par l'audit (M-01, M-03, M-05, M-09, M-11 relevés sur 30 parties : 10 SoloQ à MMR supposé bas, 10 SoloQ, 10 SWF) n'a pas été fait | Les seuils peuvent être trop durs ou trop faciles pour toi |
| **Grille « coup évitable » (M-05)** : accord entre deux relecteurs non testé | Deux personnes peuvent compter différemment la même VOD |
| **Pas de drill sur les objets** (lampe, toolbox, med-kit), les **casiers**, les **saves** (flash save, pallet save, sabotage, body block) | Programme incomplet côté SWF et saves |
| Distance de fente, durée d'abaissement d'une palette, effet d'un stun sur la Bloodlust **inconnus** ; remplissage de l'anti-camp seulement **calculé** (SS, ±10 %) | DR-12, DC-02, DC-03 et l'arbre PALETTE ne sont pas pleinement quantifiables |
| **HUD survivant** non documenté (icônes d'action, jauge de crochet, indicateur de chase) | DR-16, M-02, M-19 reposent sur une lecture [INCERTAIN] |
| **KYF / parties personnalisées** : options non vérifiées | Les variantes KYF supposent des réglages non confirmés |
| **Pratique délibérée** : principe général, aucune étude propre à DBD | Le cadre lui-même est une [HYPOTHÈSE] raisonnable |
| **Reset MMR 10.1.0** [INCERTAIN] | Une base mesurée depuis le 25/08/2026 peut dériver |
| Vitesse du tueur portant **3,68 m/s** (SS) ; efficacité de réparation **supposée** (0,8 dans le modèle du lot 6, 1 ailleurs : [HYPOTHÈSE]) | M-19 et DC-08 sont des **plafonds** |
| **Programme survivant seulement** | Pas de programme tueur symétrique (DR-20 n'est qu'un drill de compréhension) |
| **PTB 10.2.0 (non LIVE)** : Survivor Intent System, refonte d'Abandon | Changerait DR-16, les critères SoloQ et la gestion au sol : **à revoir à sa sortie LIVE** |

> **À retenir** : ce programme est un **cadre de mesure**, pas une vérité. Sa valeur vient de ce qu'il t'oblige à (1) choisir une seule chose à travailler, (2) la compter, (3) la juger contre toi-même, (4) vérifier que tu n'as pas triché avec la métrique. Les chiffres, eux, sont à remplacer par les tiens dès que tu as 20 parties mesurées.

Détail : `kb/deliverables/TRAINING_PROGRAM.md` §7 ; `kb/audit/pass14_lot11_training.md`.

---

## Sources du chapitre

- `kb/deliverables/TRAINING_PROGRAM.md` — programme consolidé (niveaux, drills DR/DC, métriques, semaine type, gabarit, limites).
- `kb/research/batch11_training.md` — §0 constantes et économie en secondes, §1 base d'erreurs E-xx, §3 drills, §4 programme, §5 mesure et revue, §6 gabarit, §7 écarts avec le seed.
- `kb/audit/pass14_lot11_training.md` — corrections d'audit (M-09, M-16, M-19, M-04, critères non mesurables).
- `kb/research/batch6_chase_tech.md` (exercices T05-T23, §4) — drills DC-01 à DC-12.
- `kb/research/batch9_macro.md` §5.1 — modèle du cône (DR-21), HUD SoloQ.
- `kb/deliverables/DECISION_TREES.md` — arbres PALETTE, QUITTER LA TILE, CROCHET, SOIN, ENDGAME.
- `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md`, `kb/deliverables/PERK_DEDUCTION.md` — support de DR-06, DR-07, DR-15.
- `kb/seed/audit_phase0.txt` (tables « Référence vérifiée ») et `kb/ledgers/AUDIT_PHASE0_ERRATA.md` — constantes (gen 90 s, crochet 70 s, soin 16 s, vaults, palettes, Bloodlust, anti-camp 16 m, corbeaux AFK 9.3.0, Match Details 9.6.0, MMR 10.1.0).
