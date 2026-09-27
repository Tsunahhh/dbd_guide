# TRAINING PROGRAM — programme d'entraînement survivant (livrable §51-6)

> **Version : LIVE 10.1.2a (hotfix serveur du 17/09/2026) — état au 27/09/2026.**
> **Statut : consolidé depuis des brouillons audités sans web ; heuristiques non validées par sources expertes.**

- **Aucun contenu factuel nouveau** : consolidation de `kb/research/batch11_training.md` (§3 drills, §4 programme, §5 mesure, §6 gabarit), des exercices de `kb/research/batch6_chase_tech.md` (T05-T23, §4) et de `kb/research/batch9_macro.md` (§5.1), **après** les corrections de `kb/audit/pass14_lot11_training.md`, `pass14_lot6_chase.md` et `pass14_lot9_macro.md`. Les points « non corrigeables sans source » sont en §7 (Limites).
- **Tous les seuils, cibles et durées sont HEURISTIC / UNCERTAIN** : aucune donnée, aucun coach, aucune VOD. Ils servent à mesurer un progrès **par rapport à ta propre base**, jamais à te comparer aux autres. La **direction** d'une métrique est plus fiable que son chiffre.
- Vue **survivant**, mode **1v4**. Les arbres cités (PAL, TIL, CRO…) sont dans `kb/deliverables/DECISION_TREES.md` ; les erreurs `E-xx` dans `kb/research/batch11_training.md` §1.

---

## 0. Règles du programme (HEURISTIC)

| Règle | Contenu |
|---|---|
| **Pratique délibérée, pas volume** | Un niveau se travaille par **blocs** : 1 objectif + 1-2 drills + parties focalisées + revues. Jouer plus sans objectif ni revue ne compte pas. (Principe général transposé, aucune étude propre à DBD.) |
| **Bloc** | ≥ **10 parties** mesurées. On passe un niveau quand le critère tient sur **2 blocs consécutifs** (≈ 20 parties après la base). En cas de conflit avec une « durée indicative », **le nombre de parties prime**. |
| **Base personnelle** | Mesurer 5-10 parties au début du niveau ; « ↓ 50 % » s'entend contre cette base. Le matchmaking suit ton niveau (MMR tenant compte d'actions en partie depuis 10.1.0, FACT VP) : une métrique stable peut signifier un progrès. Reset MMR 10.1.0 rapporté par la presse, absent des notes : **UNCERTAIN** → une base de fin août / septembre 2026 peut dériver. |
| **SoloQ ≠ SWF** | Les critères qui dépendent des coéquipiers (M-02, M-09, M-17, M-19, DR-16) se comparent à une base **du même mode**. Ne jamais passer un niveau avec des parties SWF sur un critère mesuré en SoloQ (ou l'inverse). |
| **Petits nombres** | « ↓ 50 % » n'a de sens que si la base est assez élevée (≥ ~1 événement/partie) ; sinon seuil absolu ou blocs plus longs. |
| **Critères auto-évalués** (niveaux 4, 7, 9) | Complaisants par construction : validation par un tiers (revue croisée SWF, ami, coach) **ou** critères de classement fixés **avant** de regarder la VOD. |
| **Retour en arrière** | Si une métrique d'un niveau inférieur se dégrade nettement pendant 2 blocs, refaire un bloc de ce niveau. |
| **Ordre** | Niveaux 1-4 chevauchables ; à partir du 5, respecter l'ordre (chaque niveau suppose le précédent automatique). |
| **Durées** | Ordre de grandeur pour ~4-6 h de jeu par semaine ; **UNCERTAIN**, sans source. |
| **Difficulté** | Réussite d'un drill > 90 % → variante difficile ; < 30 % → variante facile. |
| **Résultat ≠ décision** | Un critère qui compte des issues (« puni dans les 20 s ») mélange décision et variance : le lire avec la matrice décision × résultat (§5). |

**Contextes des drills** : **KYF** = partie personnalisée avec un ami tueur (existence connue, modalités non vérifiées par l'audit) · **public** = partie normale · **revue** = sur enregistrement. **Sans ami tueur** : faire la variante « public + revue » (plus lente, plus bruitée → exiger plus de parties avant de conclure).

---

## 1. Les 10 niveaux

Format : **Compétences · Drills · Critère de passage (mesurable) · Durée indicative (UNCERTAIN) · Piège du critère**.

### Niveau 1 — Fondamentaux
- **Compétences** : constantes du jeu (gen 90 s, crochet 70 s/phase, soin 16 s, vaults, palettes, statuts : table `DECISION_TREES.md` §0.4) ; skill checks ; déplacements silencieux ; HUD de base.
- **Drills** : DR-14, DR-17 (version simple), DR-02 (intro).
- **Passage** : quiz de 20 questions sur les constantes ≥ 18/20 ; **M-10** ≤ 1 skill check raté/partie sur 5 parties ; **M-13** aucun corbeau AFK sur 5 parties.
- **Durée** : 1-2 semaines ; ~10 parties + 2 revues.
- **Piège** : viser le Great au prix de ratés.

### Niveau 2 — Caméra + pathing
- **Compétences** : checks caméra aux bons moments ; fast vault à la demande ; approche en arc.
- **Drills** : DR-01, DR-02.
- **Passage** : **M-06** ≥ 80 % de fast vaults en chase (revue ; cible de long terme 90 %) ; 0 collision relevée sur 3 parties revues.
- **Durée** : 1-2 semaines ; 3 sessions KYF + ~10 parties.
- **Piège** : l'intention d'un vault n'est pas visible en VOD → compter **tous** les vaults de chase, sauf les slow vaults annoncés à voix haute.

### Niveau 3 — Loops de base
- **Compétences** : shack, jungle gym, T-L, fillers ; arbre PALETTE (Q1-Q4) ; compter ses vaults.
- **Drills** : DR-03, DR-04, DR-12 (+ DC-01).
- **Passage** : feuille de l'arbre PALETTE **annoncée avant l'action** ≥ 90 % des palettes ; **M-14** ↓ 50 % vs base ; **M-01** médiane contre tueurs M1 ↑ vs base, **sans hausse de M-05**.
- **Durée** : 2-3 semaines ; ~20 parties + 4 revues.
- **Piège** : M-14 baisse aussi en greedant davantage → toujours lire avec M-05.

### Niveau 4 — Map awareness
- **Compétences** : tiles de repli, zones riches/mortes, emplacement des gens, 3-gen potentiels, portes ; fixe vs RNG (lot 8, NOT_STARTED).
- **Drills** : DR-13, DR-09 (+ DC-09).
- **Passage** : **M-07** 0 mort en dead zone évitable sur 5 parties ; 2 tiles de repli nommées à chaque déplacement vers un nouvel objectif (voix enregistrée ; ≥ 80 % en revue, validée par un tiers ou avec critères fixés avant).
- **Durée** : 2-3 semaines ; 5 parties par carte sur 3-4 cartes.
- **Piège** : auto-contrôle complaisant.

### Niveau 5 — Killer counterplay
- **Compétences** : identification avant reveal ; counterplay par archétype puis par tueur (`KILLER_COUNTERPLAY_HANDBOOK.md`) ; add-ons qui changent la décision.
- **Drills** : DR-06, DR-15, DR-05.
- **Passage** : **M-16** identification avant reveal ≥ 70 % sur 20 parties **où un indice existait avant le reveal** ; **M-12** ↓ 50 % vs base sur les 5 tueurs travaillés, avec **≥ ~5 parties par tueur** (KYF si le tueur est rare en public) — en dessous, non mesurable.
- **Durée** : 4-6 semaines (1 tueur ou 1 archétype par semaine).
- **Piège** : le reveal arrive dès qu'**un** survivant est poursuivi ou blessé (FACT VP 9.6.0) : sans le filtre « indice avant reveal », M-16 mesure le déroulement de la partie.

### Niveau 6 — Macro
- **Compétences** : rotation de gens, anti-3-gen, sauvetages (arbre CROCHET), soins (arbre SOIN), répartition des risques selon les crochets.
- **Drills** : DR-09, DR-10, DR-18, DR-16 (+ DC-10).
- **Passage** : **M-09** sauvetages punis < 25 % (exclusions §3) **sans hausse des passages de phase par retard** ; **M-11** soins inutiles < 20 %, **lu avec** les mises au sol « blessé sans raison » ; **M-17** 0 3-gen évitable sur 10 parties. SoloQ et SWF mesurés séparément.
- **Durée** : 3-4 semaines ; ~25 parties + 5 revues.
- **Piège** : ne plus sauver / ne plus soigner améliore M-09 / M-11.

### Niveau 7 — Game sense
- **Compétences** : prédire la position du tueur et des coéquipiers ; comptage continu ; perk deduction (`PERK_DEDUCTION.md`) ; reconnaître une partie qui bascule.
- **Drills** : DR-17, DR-07, DR-16, DR-21 (prédiction).
- **Passage** : **M-18** 0 erreur de comptage sur 5 parties (comptes dits à voix haute et enregistrés) ; **M-16** précision ≥ 80 % **et** rappel ≥ 50 % avec ~2 perks annoncées/partie ; prédictions de position correctes ≥ 60 % (UNCERTAIN), **seulement les prédictions vérifiables** (tueur vu, poursuite d'un coéquipier au HUD, lieu du prochain accrochage dans les ~15 s), « correct » défini avant (même zone / landmark).
- **Durée** : 3-4 semaines.
- **Piège** : la précision seule se « triche » en n'annonçant qu'une perk évidente.

### Niveau 8 — Chase avancée
- **Compétences** : red stain et feintes, Bloodlust, quitter la tile sur événement, mindgames, loop vs hold W, marge de latence, pre-run.
- **Drills** : DR-05 (difficile), DR-12 (difficile), DR-13 (+ DC-02, DC-03, DC-04, DC-06).
- **Passage** : **M-05** coups évitables par chase ↓ 50 % vs fin du niveau 3 ; **M-15** départs de tile sur événement ≥ 80 % ; **M-04** médiane ↑ vs base **à palettes consommées égales** (M-03), coups achetés exclus.
- **Durée** : 4-6 semaines.
- **Piège** : un M-04 long obtenu en brûlant 4 palettes n'est pas un progrès.

### Niveau 9 — Décision de haut niveau
- **Compétences** : trades, casser/garder une chase, tempo d'équipe, valeur d'une seconde de chase, arbres complets, endgame.
- **Drills** : DR-19 intensif, DR-11, DR-10 (+ DC-07, DC-08, DC-12).
- **Passage** : ≥ 80 % des moments pivots avec décision justifiée par l'info disponible (validation tiers ou critères fixés avant) ; erreurs `E-T*` ↓ 50 % vs base ; **M-08** 0 trade injustifié sur 10 parties.
- **Durée** : 4-8 semaines.
- **Piège** : biais rétrospectif (en VOD on « sait » où était le tueur).

### Niveau 10 — Concepts compétitifs
- **Compétences** : SWF (rôles, protocoles, callouts, plan de carte, coordination des crochets) ; lecture d'une partie en tempo ; limites (règlements, bans : lot 10 BLOCKED).
- **Drills** : DR-08, DR-11 en KYF, DR-19 en équipe (revue croisée).
- **Passage** : callouts actionnables ≥ 80 % (DR-08) ; plan de partie écrit pour 5 cartes et appliqué ; métriques des niveaux 3-9 maintenues contre une opposition plus forte sur 2 blocs — **mesurable seulement** via des adversaires identifiés (scrims, tueur connu en KYF, compétition) ; sinon critère non mesurable (MMR non affiché).
- **Durée** : continu.

---

## 2. Catalogue des drills

Seuils = **HEURISTIC / UNCERTAIN**. Contexte : KYF / public / revue.

### 2.1 Chase et tiles

| Drill | Objectif | Méthode | Métrique | Erreur typique | Réussite |
|---|---|---|---|---|---|
| **DR-01 Caméra** | Pathing propre en sachant où est le tueur | Facile : circuit fixe, check caméra sur chaque segment droit, jamais 2-3 m avant un vault. Difficile : en chase, annoncer « derrière / gauche / droite » | Collisions / chase ; medium vaults involontaires ; coups « pas vus venir » | Check trop tard (approche du vault) ou trop long | 3 parties de suite sans collision ni medium involontaire (revue) |
| **DR-02 Fast vault** | Fast vault (0,5 s, garde l'élan) à la demande | KYF, tueur passif : 3 fenêtres différentes × 10 approches d'angles variés ; trouver l'arc donnant ≥ 2,5 m de ligne droite | % fast / tentatives, par type de fenêtre | Couper l'angle ; caméra tournée au dernier moment | ≥ 90 % en KYF ; ≥ 80 % en chase publique (revue) |
| **DR-03 Shack** | Entrée, fenêtre, palette, checkspots, rotations | 3-5 parties en emmenant toute chase au shack ; noter par passage : entrée, vault, pose, regard, sortie. KYF : même approche 5 fois puis variée | Secondes par passage ; vaults avant pose ; coups au shack | Vault prématuré ; « deux tours de fenêtre » appliqué mécaniquement ; rester après le 3e vault | Feuille PALETTE justifiée par passage ; ≥ 20 s **médians** par passage contre M1, **sans** hausse de M-05 ni des sorties sans événement |
| **DR-04 Jungle gym** | Reconnaître le côté fort (long/short wall) | Hors chase, identifier chaque gym ; en chase, annoncer le plan avant d'entrer | % gyms identifiés ; secondes par gym ; fenêtres bloquées subies | Boucler le côté court ; rester quand le tueur se poste au milieu | Plan correct ≥ 80 % (revue) |
| **DR-05 Red stain** | Lire la direction du tueur, détecter les feintes | KYF : tueur qui marche au hasard (avant/arrière/côté) derrière un mur haut ; annoncer « gauche / droite / feinte » ; 20 cycles | % lectures correctes ; temps de décision | Réagir à la 1re rotation de tête ; oublier qu'Undetectable retire la tache | ≥ 75 % sur 20 cycles |
| **DR-12 Palette à voix haute** | Rendre l'arbre PALETTE automatique | Avant chaque palette, dire la feuille et la raison ; en revue, juger avec l'info du moment | Palettes / chase ; palettes gaspillées ; mises au sol avec palette debout à portée | Dire la feuille **après** avoir agi ; juger au résultat | Feuille annoncée avant l'action ≥ 90 % ; palettes gaspillées ÷ 2 vs base |
| **DR-13 Route planning** | Toujours savoir où aller après la tile | Hors chase, nommer 2 tiles de repli ; en chase, nommer la suivante avant de quitter ; 5 parties sur la même carte | Morts en dead zone ; départs sur événement ; trajets exposés | Partir vers le vide ; partir sans événement | 0 mort en dead zone évitable sur 5 parties ; ≥ 80 % de départs sur événement |

### 2.2 Tueur et information

| Drill | Objectif | Méthode | Métrique | Erreur typique | Réussite |
|---|---|---|---|---|---|
| **DR-06 Identification** | Identifier le tueur avant le reveal, puis ses add-ons | Noter chrono + indice (berceuse, TR absent, son/trace de pouvoir) avant le reveal ; puis signes d'add-ons (lot 4) ; vérifier à l'écran de fin | % avant reveal **parmi les parties avec un indice avant le reveal** ; délai ; add-ons devinés | Confondre deux TR proches ; ne pas réviser | ≥ 70 % sur 20 parties |
| **DR-07 Perk deduction** | Déduire 2-4 perks et adapter son jeu | Journal : effet observé → perks candidates → conséquence ; mise à jour à chaque événement ; vérification en fin | Précision **et** rappel ; décisions modifiées | Annoncer sur un indice ambigu ; ne rien changer ensuite | Précision ≥ 80 % et rappel ≥ 50 % sur 10 parties, ~2 perks/partie |
| **DR-15 Un tueur par session** | Appliquer le counterplay d'un tueur | Relire sa fiche (handbook) ; vérifier 3 comportements précis (ex. Huntress : LOS, changement de direction au lâcher, comptage des hachettes) | Coups de pouvoir évitables ; durée de chase vs moyenne | Loop standard ; plan changé trop tard | 3 comportements appliqués dans 3 parties consécutives contre lui |
| **DR-20 Jouer tueur** | Voir ce que le tueur voit et entend (il n'entend pas son TR, ne voit pas sa red stain, FACT) | 5 parties avec un tueur M1 ; noter ce qui trouve/touche les survivants et ce qui fait perdre du temps | 5 signaux utiles au tueur → 5 habitudes survivant | Jouer pour gagner au lieu d'observer | 5 habitudes identifiées et reliées à des IDs d'erreur |
| **DR-21 Prédiction** (lot 11 niv. 7 + lot 9 §5.1) | Estimer la position du tueur | Toutes les ~60 s (lot 11) ou à chaque perte de vue (lot 9), dire où il sera dans 10 s (modèle du cône : 10 s ≈ 46 m à 4,6 m/s, CALC) ; vérifier en revue | % de prédictions correctes **vérifiables** | Oublier qu'il va vers l'objectif le plus rentable pour lui | ≥ 60 % (UNCERTAIN) sur 10 parties |

### 2.3 Macro, équipe, fin de partie

| Drill | Objectif | Méthode | Métrique | Erreur typique | Réussite |
|---|---|---|---|---|---|
| **DR-08 Callouts (SWF)** | Qui / quoi / où / état / intention en < 2 s | Grammaire d'équipe (landmark > horloge > relatif) ; partie enregistrée ; revue des callouts inutiles, ambigus, tardifs | Callouts/min ; % actionnables ; délai événement → callout | « Il est là ! » sans lieu ; le chaseur qui commente tout | ≥ 80 % actionnables ; 0 sauvetage doublé par manque d'info |
| **DR-09 Anti-3-gen** | Ne pas laisser un triangle serré | Repérer le triangle le plus serré ; décider « mon gen suivant » à chaque gen fini ; refaire le point à 4 gens restants | 3-gens subis ; distance entre les 3 derniers ; temps de marche | Gen le plus proche du spawn ; réparer à 4 | 0 3-gen évitable sur 10 parties |
| **DR-10 Sauvetage** | Décrocher sans trade inutile, protéger le décroché | 10 parties : temps de phase restant, position du tueur, approche, 20 s suivantes | % punis dans les 20 s ; passages de phase par retard ; doublons | Arriver en ligne droite dans sa LOS ; soigner sous le crochet | < 25 % punis, **en excluant** protection hits volontaires et trades justifiés, **sans hausse** des passages de phase |
| **DR-11 Endgame** | Avoir un plan avant la fin | À 1 gen : portes, qui ouvre, qui sauve, qui reste en réserve ; seul : plan trappe/portes. KYF : gate camp, dernier survivant, sauvetage en EGC | Sorties réussies possibles ; morts évitables ; secondes perdues à la porte | Traîner à la porte ; ouvrir la porte la plus proche du tueur | Plan annoncé à 1 gen dans 100 % des parties ; ≤ 1 mort évitable en endgame sur 10 |
| **DR-16 HUD SoloQ** | Savoir qui est en chase / crochet / au sol / sur gen | Loadouts alliés (Match Details) au début ; coup d'œil au HUD ~toutes les 30 s + phrase mentale | Sauvetages doublés ou manqués ; délai de réaction à un accrochage | Lire le HUD seulement au bruit de crochet | 0 doublon et 0 passage en phase 2 « par oubli » **de ta part** sur 10 parties SoloQ. HUD non vérifié ; à revoir après PTB 10.2.0 |
| **DR-18 Soin** | Soigner quand c'est rentable (arbre SOIN) | Avant chaque soin, dire « oui / non / plus tard » + raison ; noter ce qui arrive dans les 60 s | Soins interrompus ; perdus dans les 30 s ; contre coup unique | Soigner sous le crochet ; planifier un soin à 3 (CONFLICT-001) | < 20 % inutiles sur 10 parties, **lu avec** les mises au sol blessé sans raison |
| **DR-14 Skill checks / audio** | Ne plus perdre de temps, entendre les signaux | Réglages audio ; 5 parties en comptant les ratés ; lever la caméra toutes les N s sans rater | Ratés/partie (≈ 12 s solo chacun) ; % Great (info) | Viser le Great au prix de ratés | ≤ 1 raté/partie hors perks de skill check difficiles |
| **DR-17 Horloge mentale** | Compter crochets, gens, palettes, Bloodlust | Dire le décompte à chaque accrochage ; en chase, compter depuis le dernier coup/casse (15/25/35 s) ; vérifier en fin | Erreurs de comptage ; décisions sur compte faux | Ne compter que soi | Compte juste à chaque accrochage sur 5 parties |
| **DR-19 Revue de partie** | Transformer chaque partie en information | Méthode §5 + gabarit §6 | Erreurs classées par ID ; 1 erreur focus/semaine | Ne revoir que les défaites ; juger au résultat | 1 revue complète pour ~5 parties ; erreur focus en baisse sur 2 semaines |

### 2.4 Drills complémentaires issus du lot 6 (rattachement de niveau proposé, HEURISTIC)

| Drill | Niv. | Objectif | Méthode | Métrique | Erreur typique | Réussite |
|---|---|---|---|---|---|---|
| **DC-01 Justifier chaque palette** (T05) | 3 | Chaque palette a une raison | Après 10 parties, écrire pour chaque palette les critères A-F de T05 en 1 ligne | % de palettes justifiées ; coups en greed ; palettes sans menace | Greed par habitude ; pre-drop contre un tueur loin | ≤ 1 palette gratuite et ≤ 1 coup en greed sur palette safe par partie |
| **DC-02 Horloge de Bloodlust** (T06) | 8 | Connaître le palier +0 / +0,2 / +0,4 / +0,6 | Compter à voix haute ; remettre à 0 sur coup, casse, pouvoir (listé par le wiki) | Écart compte / VOD | Croire qu'un stun remet à zéro (non documenté) | Palier correct ≥ 90 % sur 10 chases |
| **DC-03 Budget en mètres** (T18) | 8 | Estimer son avance à l'arrivée sur un tile | Annoncer « +X m » en arrivant ; comparer à la VOD | Erreur moyenne | Entrer dans un tile sans avance | Erreur ≤ 2 m sur 20 arrivées |
| **DC-04 Autopsie de coup** (T21) | 8 | Distinguer latence et erreur | 20 coups « injustes » en VOD : palier de Bloodlust, type de vault, distance au début de la fente | % expliqués hors latence | Blâmer le réseau | Savoir classer chaque cas ; si la majorité s'explique hors latence, travailler la marge |
| **DC-05 360 mesuré** (T22) | 8 | Savoir si le 360 est rentable pour toi | KYF, ami M1, 20 tentatives à courte distance en terrain ouvert | % de fentes ratées provoquées ; distance perdue en échec | 360 réflexe alors qu'un tile est atteignable | Pas de seuil fixe : coup inévitable → tout taux > 0 est un gain ; tile atteignable → taux très élevé requis. Surestimé contre un ami |
| **DC-06 Premier contact** (T23) | 8 | Mesurer l'effet du pre-run | 10 parties : distance au premier contact, déjà en route vers un tile ? | Durée des chases avec vs sans pre-run | Pre-run au moindre TR, en courant, vers les alliés | Une différence mesurée sur tes parties (aucun seuil sans données) |
| **DC-07 EV à froid** (§4.3) | 9 | Mettre à nu ses biais de palette | 10 décisions en VOD : estimer `p` et `T_loop` **avant** de voir la suite | Décisions cohérentes avec son propre modèle | Prendre le modèle (HYPOTHESIS) pour une mesure | ≥ 70 % cohérentes + liste de tes biais |
| **DC-08 Bilan de chase** (§4.12) | 9 | Juger une chase à ce qu'elle rapporte à l'équipe | Par chase : durée, alliés sur gens, gens tombés, issue | s-surv nets par chase (HYPOTHESIS) | Compter les chases courtes comme des fautes | Moyenne positive ; chases courtes **comprises** (cause), pas comptées comme fautes |
| **DC-09 Carte des palettes** (§4.5) | 4 | Voir où l'on meurt | Dessiner en fin de partie palettes utilisées et downs | Downs en zone vidée | Ramener la chase dans une zone vidée | Tendance décroissante sur 20 parties |
| **DC-10 Prix du coup** (§4.4) | 6 | Connaître le coût réel d'un coup reçu | 10 parties : soin fait ? par qui ? durée ? chase suivante plus courte ? | s-surv réellement dépensés par coup | Soins inutiles, greed blessé | Connaître ta moyenne et la réduire |
| **DC-11 Qu'est-ce qu'il sait ?** (§4.8) | 7 | Gérer l'information émise | À chaque perte de LOS, dire ce que le tueur peut savoir (griffures, sang, son) | Annonce correcte + action cohérente | Fast vault bruyant juste après avoir cassé la LOS | ≥ 80 % en VOD |
| **DC-12 Avance / retard** (§4.9) | 9 | Adapter la variance à l'état de partie | Avant chaque chase : « avance / égalité / retard » + niveau de risque | Cohérence en VOD | Style fixe quelle que soit la partie | ≥ 80 % des chases |

---

## 3. Métriques de progression

**Chase** = du premier instant de poursuite (en VOD : musique de chase ou premier sprint de fuite avec le tueur en vue, ± 2 s) à la **première** issue : mise au sol, fin de poursuite, changement de cible. Chronos pris sur la VOD. Rapporter des **médianes**, par archétype de tueur et par mode.

| ID | Métrique | Définition courte | Sens | Ordre de grandeur (UNCERTAIN) | À coupler avec / piège |
|---|---|---|---|---|---|
| M-01 | Durée de chase | Fin − début | ↑ à ressources égales | Médiane qui progresse ; « > 60 s = bonne chase » : non sourcé | M-03, M-19 ; viser M-01 seule pousse à fuir loin |
| M-02 | Gens pendant ta chase | Gens **terminés** par l'équipe pendant la chase + réparateurs actifs moyens (HUD, UNCERTAIN) | ↑ | **Pas de cible** | « En escalier » : dépend de l'avancement initial → préférer M-19 |
| M-03 | Palettes par chase | Palettes posées par toi ; s/palette | ↓ à durée égale | ~60 s avec 1-2 palettes plutôt que 4-5 | Chase courte à 0 palette ≠ bonne |
| M-04 | First-hit timing | Début de chase → 1er coup qui fait perdre un état | ↑ | Pas de cible | Coups **achetés** exclus ; lire à palettes égales ; non défini si tu commences blessé |
| M-05 | Coups évitables | Coups classés évitables (grille : free hit, greed, vault en angle, tile gardée trop longtemps, départ sans événement…) | ↓ | ≤ 1/chase au niv. 3 ; ~0 au niv. 8 | Classement subjectif ; latence (ne pas classer évitable ce qui ne l'était qu'à l'écran) |
| M-06 | Vaults ratés | Medium/slow involontaires + fenêtre bloquée + collisions ; % fast | ↓ / ↑ | ≥ 90 % fast (80 % au niv. 2) | Tous les vaults de chase comptent sauf slow annoncés |
| M-07 | Morts en dead zone | Aucune ressource atteignable au coup final **alors qu'une route existait** au début | ↓ | 0 évitable | « Subies » comptées à part |
| M-08 | Hook trades | Sauveteur ou décroché accroché dans les 60 s ; justifié / injustifié | ↓ injustifiés | 0 injustifié | Un trade justifié n'est pas une erreur |
| M-09 | Mauvais sauvetages | Perte d'état dans les 20 s + doublons + passages de phase par retard | ↓ | < 25 % | **Exclure** protection hits volontaires et trades justifiés ; coup sous Endurance noté à part ; toujours avec les passages de phase |
| M-10 | Efficacité gen | Temps à réparer / temps disponible ; + skill checks ratés | ↑ | > 70 % | Dénominateur subjectif ; pousse à rester trop tard sur le gen → coupler M-07, M-09, E-I14 |
| M-11 | Soins incorrects | Interrompus, perdus dans les 30 s, contre coup unique, sous le crochet | ↓ | < 20 % | Maximisé en ne soignant plus → lire avec les mises au sol blessé sans raison |
| M-12 | Erreurs face au pouvoir | Coups de pouvoir évitables | ↓ | ↓ 50 % sur un tueur travaillé | ≥ ~5 parties par tueur |
| M-13 | Temps inactif | Secondes sans objectif ; corbeaux AFK | ↓ | 0 corbeau AFK | Se cacher par choix tactique justifié ≠ inactif |
| M-14 | Palettes gaspillées | Raison **annoncée avant l'action** absente + indicateur objectif : ni stun, ni casse, ni détour, ni accès à une ressource dans ~10 s (seuil UNCERTAIN) | ↓ | ≤ 1/partie | Baisse aussi en greedant → coupler M-05 |
| M-15 | Départs sur événement | % de sorties de tile pendant casse, stun, vault du tueur, cooldown, perte de LOS | ↑ | ≥ 80 % | — |
| M-16 | Identification / deduction | % avant reveal (parties avec indice) ; précision **et** rappel | ↑ | ≥ 70 % ; ≥ 80 % / ≥ 50 % | Dépend aussi des coéquipiers (reveal) |
| M-17 | 3-gens évitables | 3-gen subi alors que le triangle était repérable avant 4 gens restants | ↓ | 0 | — |
| M-18 | Erreurs de comptage | Crochets / gens / vaults mal comptés au moment d'une décision | ↓ | 0 | — |
| M-19 | Valeur de chase | ≈ M-01 × réparateurs actifs moyens (÷ 90 → équivalents-gen) | ↑ | ~135 charges (≈ 1,5 équivalent-gen) pour 45 s avec 3 réparateurs seuls (CALC plafond) — **0 gen terminé possible** | Surestime (1 c/s supposé, pas de trajets) ; non contrefactuelle : comparer tes chases entre elles |

**Couples obligatoires (loi de Goodhart)** : M-01 avec M-03 et M-19 · M-09 avec les passages de phase · M-11 avec les mises au sol blessé · M-14 avec M-05 · M-10 avec M-07/M-09 · M-04 avec M-03.

**Pièges d'interprétation** (condensé de lot 11 §5.4) :
- Corrélation ≠ causalité : comparer à tueur, carte et mode comparables (l'audit a relevé ce biais dans le seed, A-122).
- Facteurs de confusion : tueur, add-ons, carte (palettes revues en 9.2.0/9.3.0, FACT), MMR, mode, ping, coéquipiers → toujours les noter.
- Petits échantillons : 10 parties minimum, médianes, blocs.
- Biais de sélection (ne revoir que les défaites), de résultat (bonne décision / mauvaise issue), rétrospectif (en VOD tu sais où était le tueur).
- Métriques d'équipe (M-02, M-19, M-16) : en SoloQ elles mesurent autant le lobby que toi.
- **Métriques qui récompensent l'inaction** : M-09, M-11, M-14, M-10 s'améliorent si l'on évite l'action ; lire chaque « ↓ erreurs » avec le coût de l'excès inverse.

---

## 4. Plan de la semaine type (HEURISTIC, exemple)

Hypothèse : ~4-6 h de jeu par semaine (durée UNCERTAIN). Les jours sont indicatifs ; l'ordre et les proportions comptent plus que le calendrier.

| Moment | Durée | Contenu | Pourquoi |
|---|---|---|---|
| **Séance 1** | 60-90 min | 10 min de rappel (fiche du niveau, erreur focus de la semaine, arbre concerné) → parties focalisées sur le **drill principal** | Un seul objectif par séance ; on accepte de perdre des parties |
| **Séance 2** | 60-90 min | KYF (ou public + revue si pas d'ami tueur) sur le **drill secondaire** | Répétition contrôlée ; sans ami : plus de parties avant de conclure |
| **Séance 3** | 60-90 min | Parties « libres », **feuille à chaud remplie** à chaque partie | Vérifier que le geste tient hors du drill (mesure en conditions normales) |
| **Revue** | 30-45 min, dans les 24-48 h | 1-2 parties revues (§5) ; mise à jour des métriques ; choix de l'erreur focus suivante | La partie ne donne pas le retour : une victoire peut cacher 5 erreurs |
| **Bilan hebdo** | 10 min | Agrégat sur ≥ 10 parties (médianes, même mode) vs base ; décision : **rester / passer / revenir** | Passage seulement sur 2 blocs consécutifs |

- **Parties à revoir** : décidées **à l'avance** (ex. 1re et 3e de chaque séance + 1 au choix) ; revue VOD complète ≈ 1 partie sur 3-5 (UNCERTAIN).
- **Variante SoloQ seul** : Séance 2 en public + revue ; critères d'équipe mesurés contre une base SoloQ uniquement.
- **Variante SWF** : revue croisée (chacun revoit la chase d'un autre, sans juger le résultat) + revue des callouts (DR-08).

---

## 5. Méthode de revue (T-R04, condensée)

1. **Enregistrer** toutes les parties ; choisir à l'avance celles à revoir.
2. **Fiche à chaud** (≤ 2 min) : partie « Contexte » du gabarit, surtout les moments pivots **perçus**.
3. **Revue à froid** (24-48 h) : passe ×2 pour repérer chases, sauvetages, soins, endgame et relever les chronos ; passe ×1 sur 3-5 moments pivots.
4. **Chaque pivot** : pause **avant** la décision → (a) ce que je savais, (b) options (feuilles d'arbre), (c) choix et raison → reprendre → (d) résultat → (e) matrice : bonne/bon · bonne/mauvais (variance : ne rien changer) · mauvaise/bon (chance : **corriger quand même**) · mauvaise/mauvais.
5. **Classer** chaque erreur par ID `E-xx` ; erreur inconnue → proposer une entrée (Erreur → Pourquoi → Punition → Correction → Drill).
6. **Relever les métriques** et les ajouter au tableau récapitulatif (une ligne par partie).
7. **Vue du tueur** sur 1 pivot : griffures (10 s), sang, grognements, bruit de vault — ce qu'il voyait.
8. **Une seule erreur focus** pour la semaine + son drill.
9. **Hebdomadaire** : agrégat ≥ 10 parties vs base (§0).
10. **SWF** : revue croisée + callouts.

Erreurs de revue : ne revoir que ses chases (la macro coûte souvent plus) ; accuser tueur ou coéquipiers ; tirer une règle d'une seule partie ; écrire « j'aurais dû poser » sans dire **quel indice** aurait dû déclencher la pose.

---

## 6. Gabarit — fiche de revue de partie (à copier)

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
| | | | ✔ / ✘ |

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
- Pièges vérifiés : biais de résultat ☐ · biais rétrospectif ☐ · latence ☐ · coéquipiers/tueur accusés à tort ☐ · inaction récompensée ☐
````

---

## 7. Limites (à lire avant d'appliquer le programme)

### 7.1 Points déclarés « non corrigeables sans source » par les audits

| Audit | Limite | Conséquence pour le programme |
|---|---|---|
| lot 11 P14-53 | **Toutes les cibles (§3) et durées (§1) sont sans source** | Ordres de grandeur de joueur ; ne valent que comme **direction** et contre ta base |
| lot 11 P14-30 | Aucune erreur ni drill sur les **objets** (lampe, toolbox, med-kit), les **casiers**, les **saves** (flash/pallet, sabotage, body block) : lot 5 NOT_STARTED | Pas de drill de save ; SWF sous-représenté |
| lot 11 P14-54 | Portée de fente, durée d'abaissement de palette, effet d'un stun sur la Bloodlust, taux de base de l'anti-camp **inconnus** | DR-12, DC-02, DC-03 et les arbres de palette ne sont pas quantifiables |
| lot 11 P14-35 (partiel) | Niveau 10 : « opposition plus forte » mesurable seulement via adversaires identifiés | Sinon critère non mesurable |
| lot 9 N3 | HUD survivant non vérifié (icônes d'action, jauge de crochet, indicateur de chase, barres colorées 9.6.0) | DR-16, M-02, M-19 reposent sur une lecture UNCERTAIN |
| lot 9 N5 | Délai de confirmation SoloQ et seuils du « tableau de course » = valeurs de rédacteur | À calibrer (≈ 20 parties SoloQ enregistrées) |
| lot 6 P08 / P29 | Coût net d'un coup reçu sain inconnu ; perks d'épuisement absentes des calculs | DC-07, DC-10 restent des exercices de **cohérence**, pas de mesure |

### 7.2 Autres limites

- **Aucun seuil calibré** : le calibrage demandé par l'audit (M-01, M-03, M-05, M-09, M-11 relevés sur 30 parties : 10 SoloQ bas MMR supposé, 10 SoloQ, 10 SWF) n'a pas été fait.
- **Grille « coup évitable » (M-05)** : accord entre deux relecteurs non testé (question ouverte).
- **KYF / parties personnalisées** : existence connue, options non vérifiées par l'audit.
- **Pratique délibérée** : principe général transposé, aucune étude propre à DBD.
- **PTB 10.2.0** : le Survivor Intent System changerait DR-16 et les critères SoloQ ; la refonte Abandon changerait la gestion au sol. À revoir à sa sortie LIVE.
- **Reset MMR 10.1.0** : UNCERTAIN ; peut rendre instable une base mesurée depuis le 25/08/2026.
- **Portage 3,68 m/s** : UNCERTAIN (et non SS comme l'écrivent batch6/batch11) ; **efficacité `e`** 0,8 (lot 6) vs 1 (lots 9/11) : M-19 et DC-08 sont des plafonds.
- **Programme survivant seulement** : pas de programme tueur symétrique (DR-20 n'est qu'un drill de compréhension).
- **`PERK_DEDUCTION.md`** existe mais n'a pas été relu pour le lot 11 : DR-07 s'y réfère sans recoupement.

### 7.3 Renvois

| Partie | Source |
|---|---|
| §0 Règles, §1 Niveaux | batch11 §4.1-4.2 (+ audit lot 11 P14-31 à P14-38) |
| §2.1-2.3 Drills DR-01 à DR-20 | batch11 §3 (+ P14-06, 07, 08, 39, 40) |
| DR-21 | batch9 §5.1 |
| §2.4 DC-01 à DC-12 | batch6 T05, T06, T18, T21, T22, T23, §4.3, §4.4, §4.5, §4.8, §4.9, §4.12 (+ audit lot 6 P13, P24, P28) |
| §3 Métriques | batch11 §5.1-5.4 (+ P14-01, 02, 09 à 13, 27) |
| §4 Semaine type | batch11 §4.1, §4.3, §5.2, §5.5 |
| §5-6 Revue et gabarit | batch11 §5.5, §6 |
