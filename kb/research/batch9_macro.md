# Lot 9 — Macro survivant, SoloQ vs SWF, game sense, états de partie, fin de partie

> **Statut : WRITTEN (brouillon), non audité, non sourcé par des experts — rédigé sans accès web le 27/09/2026**
> Référence de version : **LIVE 10.1.2a** (17/09/2026). **PTB 10.2.0 ≠ LIVE** (Survivor Intent System, refonte Abandon/Surrender : PTB uniquement).
> Mission couverte : §12 (macro), §13 (SoloQ vs SWF), §15 (game sense), §16 (états de partie), fin de partie (taxonomie T-J, T-K, T-M, T-N, T-O, T-Q02 à T-Q07), avec exemples au format §31 et arbres au format §32.
> Sources : **uniquement** `kb/seed/audit_phase0.txt` (chiffres FACT), le seed (critiqué), `kb/research/batch2_*`, `batch3_*`, `batch4_*` (exemples). Aucune recherche web, aucune VOD, aucun expert cité.

## 0. Légende et conventions

| Étiquette | Sens dans ce fichier |
|---|---|
| **FACT (audit, <confiance>)** | Valeur de la « Référence vérifiée » ou du registre de patchs de l'audit phase 0. Seuls chiffres présentés comme faits. |
| **CALC** | Arithmétique faite ici **sur des valeurs de l'audit**. Le calcul est sûr ; les hypothèses ajoutées (trajets, distances) sont UNCERTAIN et le sont signalées. |
| **NV** | Mécanique de jeu connue du rédacteur mais **absente de l'audit** : à vérifier en jeu avant de la présenter comme FACT. |
| **HEURISTIC** | Règle pratique du rédacteur (joueur expert, non sourcée). Jamais absolue. |
| **EXPERT OPINION (non sourcée)** | Conclusion de jugement, discutable, non attribuée à qui que ce soit. |
| **SITUATIONAL** | Dépend fortement du contexte ; les conditions sont données. |
| **HYPOTHESIS** | Interprétation plausible, non confirmée. |
| **UNCERTAIN** | Chiffre ou effet non issu de l'audit (seed, lots 2-4 via résumé, mémoire du modèle). |

Conventions :
- **s-surv** = seconde-survivant (1 survivant occupé pendant 1 s). 1 gen solo = **90 s-surv** (FACT audit, VERIFIED_MULTI_SOURCE).
- Chaque conseil suit le gabarit court **Pourquoi / Quand / Contre quoi / Risque / Alternative** (mission §26-27, §49), sous forme condensée quand c'est évident.
- **SoloQ** et **SWF** sont traités dans des blocs séparés, jamais fusionnés. Quand un arbre diffère, la branche est préfixée `[SoloQ]` ou `[SWF]`.

---

## 1. La monnaie de la partie : table de conversion en secondes

Toute la macro se ramène à une comptabilité : **le temps survivant converti en progression, contre le temps tueur converti en états de crochet.**

### 1.1 Valeurs de base (FACT audit)

| Élément | Valeur LIVE | Confiance audit |
|---|---|---|
| Gen solo | 90 charges, +1 c/s → **90 s** | VERIFIED_MULTI_SOURCE |
| Gens requis (4 survivants au départ) | 5 sur 7 ; portes alimentées après (survivants **au départ** + 1) gens | STRONG_SECONDARY |
| Pénalité coop | 85 % / 70 % / 55 % par personne → **~52,9 s / ~42,9 s / ~40,9 s** à 2 / 3 / 4 | STRONG_SECONDARY |
| Skill check | test 1×/s, 8 % de chance ; Great +1 % ; raté **−10 % et 3 s sans progression** | STRONG_SECONDARY |
| Coup de pied (kick) | action 1,8 s ; **−5 %** instantané puis **−0,25 c/s** ; stopper la régression = **réparer 5 %** ; plafond **8 regression events** | VERIFIED_MULTI_SOURCE |
| Phase de crochet | **70 s** par phase (Summoning 100→51 %, Struggle 50→1 %) | VERIFIED_PRIMARY |
| Accrocher / décrocher | 1,5 s / 1 s | STRONG_SECONDARY |
| Portage | 3,68 m/s ; wiggle 16 s cumulées | STRONG_SECONDARY |
| Soin d'un état | 16 s (16 charges) ; Mangled +25 % de durée | STRONG_SECONDARY |
| Auto-soin au Med-Kit | vitesse −33 %, efficacité de l'objet −33 % | STRONG_SECONDARY |
| Deep Wound | timer 20 s ; mending 10 s seul / 6 s par un allié | VERIFIED_PRIMARY |
| Bleed-out | 240 s cumulées | STRONG_SECONDARY |
| Récupération au sol | auto, plafond 95 %, **30,4 s** ; **aucune auto-relève basekit** | VERIFIED_MULTI_SOURCE / VERIFIED_PRIMARY |
| Totem | purification 14 s ; Boon 14 s (28 s sur un Hex), rayon 24 m ; le tueur éteint un Boon en 1 s | STRONG_SECONDARY |
| Porte | ouverture 20 s, progression conservée | STRONG_SECONDARY |
| EGC | 120 s ; moitié de vitesse si un survivant est au sol / accroché / en cage (max 4 min) ; jamais arrêté ; gens bloqués | STRONG_SECONDARY |
| Vitesses | survivant 4,0 m/s ; tueurs 4,6 ou 4,4 m/s (Nurse 3,85 ; Blight 4,4 depuis 9.6.0) | VERIFIED_MULTI_SOURCE |

### 1.2 Conversions dérivées (CALC)

| Question | Calcul | Résultat |
|---|---|---|
| Budget minimal de réparation d'une partie | 5 × 90 | **450 s-surv** (hors toolbox, Great, perks, régression) |
| Coût en s-surv d'un gen à 2 / 3 / 4 | 2 × 52,9 ; 3 × 42,9 ; 4 × 40,9 | **105,9 / 128,6 / 163,6 s-surv** (soit +18 % / +43 % / +82 % de gaspillage vs solo) |
| Valeur d'1 s de chase si les 3 autres réparent chacun un gen différent | 3 × 1/90 | **1/30 de gen par seconde** (le seed disait « 1/3 », FAUX : audit A-267) |
| Même chose si 2 réparent ensemble et 1 « regarde » | 1 × 1,7/90 | **~1/53 de gen par seconde** (la chase rapporte presque 2× moins) |
| Soin altruiste d'un état | 16 s × 2 survivants | **32 s-surv ≈ 0,36 gen** |
| Auto-soin Med-Kit d'un état | 16 / 0,67 (hypothèse : −33 % de vitesse appliqué simplement) | **≈ 24 s** (CALC sur hypothèse ; à vérifier en jeu) |
| Skill check raté | 9 charges perdues + 3 s bloquées | **≈ 12 s solo** perdues |
| Gen frappé laissé seul 60 s | 4,5 c (−5 %) + 60 × 0,25 c | **≈ 19,5 c ≈ 19,5 s de réparation solo** |
| Stopper la régression | 5 % de 90 c | **4,5 s solo** (≈ 2,6 s à 2) |
| Rattrapage en ligne droite, 10 m d'avance | 10 / (4,6 − 4,0) ; 10 / (4,4 − 4,0) | **~16,7 s / 25 s** bruts ; ~16,3 / 21,7 s avec Bloodlust, ~12-13 / 17-18 s avec une fente de 2-2,5 m (fente = COMMUNITY_OBSERVATION) — audit A-054 |
| Portage vers un crochet à 30 m | 30 / 3,68 + 1,5 | **≈ 9,7 s** (distance UNCERTAIN, exemple) |
| Fenêtre pour sauver avant la phase 2 | 1re phase | **70 s** après l'accrochage |
| Rayon où peut se trouver un tueur invisible depuis t secondes | 4,6 × t | 10 s → 46 m ; 20 s → 92 m (borne haute, ligne droite) |

> **HEURISTIC centrale** : une décision macro se juge à son **solde en s-surv** : « combien de secondes de réparation parallèle je crée ou je protège » moins « combien j'en consomme ou j'en offre au tueur ». Une chase finie par un crochet peut être très rentable si 3 réparateurs ont travaillé pendant ce temps (mission §14).

### 1.3 Le « tableau de course » (HEURISTIC)

- Les survivants doivent produire **450 s-surv utiles** de réparation (moins avec toolbox, Great, perks ; plus avec régression, blocages, skill checks ratés).
- Le tueur doit produire **12 événements de crochet** pour 4 kills (3 par survivant ; le 3e accrochage tue : FACT audit) — ou moins s'il laisse des phases expirer (chaque phase dure 70 s) ou s'il exile (The Judgment : l'Exile compte comme un état de crochet, FACT audit VERIFIED_PRIMARY).
- **Indicateur de course** (HEURISTIC, seuils arbitraires, à calibrer par la pratique) : comparer `gens finis / 5` et `états de crochet / 12`. Un écart ≥ 0,25 en faveur du tueur (ex. 1 gen pour 6 états de crochet → 0,2 vs 0,5) signale une partie qui bascule ; au-delà de 0,4 on passe en mode « limiter la casse » (sécuriser 1-2 évasions, trappe).
- Limite de l'indicateur : il ignore la **répartition** des crochets. 6 états répartis 2-2-1-1 ne valent pas 6 états concentrés 3-2-1 (1 mort = −1 réparateur définitif, soit −33 % de débit parallèle). C'est pourquoi le tunneling est rentable pour le tueur.

---
## 2. Macro survivant (§12)

### 2.1 Efficacité des gens : un par personne, sauf exceptions chiffrées

**FACT (audit, STRONG_SECONDARY)** : la pénalité coop fait passer le coût d'un gen de 90 s-surv (solo) à 105,9 (à 2), 128,6 (à 3) et 163,6 (à 4) s-surv.

- **Pourquoi réparer seul par défaut** (HEURISTIC) : à 4 sur un gen, l'équipe « brûle » ~74 s-surv de plus qu'en solo, presque un gen entier. Surtout, un tueur qui trouve 2+ survivants groupés a un **deuxième blessé gratuit** : le coût réel du groupement est la chase suivante, pas seulement les 16-74 s-surv.
- **Quand réparer à deux est correct** (SITUATIONAL) :
  1. **Finir vite un gen proche de la fin** quand le tueur arrive : un gen à 80 % (18 c restantes) se finit en ~18 s seul, **~10,6 s à 2**. Un gen fini ne peut plus être frappé : on convertit du risque en acquis.
  2. **Perks qui compensent** (Prove Thyself, etc. : valeurs lot 2, UNCERTAIN) et soumises aux DR depuis 9.6.0 (FACT audit, VERIFIED_PRIMARY). Ne pas supposer qu'elles annulent la pénalité : vérifier le compte.
  3. **Casser un 3-gen** : deux joueurs sur le gen clé du 3-gen, parce que le temps qu'il reste au tueur est la vraie contrainte.
  4. **Gens restants = 1** et tout le monde est libre : le temps mural (horloge) compte plus que le rendement, car chaque seconde de fin de partie est une seconde où le tueur peut accrocher avant l'alimentation.
- **Contre quoi le groupement est pire** (HEURISTIC) : tueurs à dégâts de zone ou multi-cibles (Legion, Plague, Trickster, Huntress sur cibles alignées : lot 4), perks d'aura autour du gen frappé (**Nowhere to Hide : auras à 24 m du gen frappé pendant 3/4/5 s**, LIVE 10.1.0, VERIFIED_PRIMARY via lot 3).
- **Risque** : le solo étale les survivants, donc un crochet coûte plus de trajet au sauveteur. **Alternative** : dispersion « en grappe » (gens proches les uns des autres, un survivant par gen), qui garde les trajets courts et le 3-gen sous contrôle.

### 2.2 Dispersion et configurations dangereuses (3-gen)

- **Définition** : un 3-gen est une fin de partie où les 3 gens restants sont assez proches pour qu'un tueur les défende tous en marchant. Ce n'est pas une mécanique mais une **géométrie** (EXPERT OPINION non sourcée).
- **Pourquoi il est mortel** (HEURISTIC) : le tueur n'a plus de trajet. Chaque kick lui coûte 1,8 s, chaque gen frappé perd 5 % puis 0,25 c/s, et il revient avant que les survivants aient réparé les 5 % nécessaires pour arrêter la régression (FACT audit : 5 % requis depuis 7.5.0, « gen tapping » supprimé). Avec 8 regression events max par gen (FACT), la partie peut durer très longtemps.
- **Comment il se forme** : les survivants finissent **les gens faciles d'accès** (isolés, en bord de carte, loin du tueur) et laissent le groupe central pour la fin.
- **Prévention** (HEURISTIC) :
  - Au début, repérer le groupe de gens le plus serré (Déjà Vu le montre selon le seed, valeurs UNCERTAIN) et **en attaquer au moins un** dès les 90 premières secondes.
  - Tenir un compte mental : « si on finit ce gen, quels 3 restent ? » Si la réponse est un triangle serré, **changer de gen**.
  - Laisser les gens isolés/extérieurs pour la fin : un tueur qui les défend doit traverser la carte.
- **Contre quoi c'est encore plus urgent** : tueurs à patrouille rapide sans mobilité (le 3-gen compense leur manque de mobilité) et tueurs à ralentissement par kick ou blocage (No Holds Barred bloque le gen le plus avancé à chaque gen fini, valeurs UNCERTAIN, lot 3). Contre un tueur très mobile (Nurse, Blight, Hillbilly…), la distance entre gens protège moins : le 3-gen compte moins que la chase (SITUATIONAL).
- **Risque de la prévention** : aller réparer au centre expose à plus de rencontres. **Alternative** : si le 3-gen est déjà formé, voir §2.9 (split pressure) et §7.3 (arbre gen).

### 2.3 Répartition de l'équipe

| Posture | Quand | Pourquoi | Risque |
|---|---|---|---|
| **Éclatée** (1 par gen, zones différentes) | Début de partie, tueur inconnu ou lent | Maximise le débit ; un seul survivant trouvé | Sauvetages lointains |
| **En grappe** (1 par gen, gens voisins) | Milieu de partie, crochets fréquents | Trajets de sauvetage courts ; 3-gen surveillé | Nowhere to Hide, tueurs à zone |
| **Duo sur un gen** | Gen presque fini, tueur approchant ; perks de duo | Transforme du risque en acquis | +18 % de coût ; deux cibles |
| **Regroupement** (plusieurs autour d'un blessé/d'un crochet) | Presque jamais utile | — | Donne des cibles multiples ; ralentit l'anti-camp (FACT : l'anti-camp est ralenti par les autres survivants à < 16 m) |

**HEURISTIC** : au premier crochet, l'équipe perd au minimum **2 réparateurs** (l'accroché et le sauveteur). Le but est de ne pas en perdre un 3e (un deuxième sauveteur ou un curieux).

### 2.4 Pression, états de crochet et hook stages

- **FACT (audit)** : 3e accrochage = sacrifice immédiat ; fin de la phase Struggle = sacrifice ; chaque phase = 70 s.
- **Conséquence (CALC)** : laisser un allié atteindre la fin de sa phase 1 (70 s) donne **un état de crochet gratuit** au tueur. Le sauver à 60 s plutôt qu'à 75 s, c'est lui garder une phase entière.
- **Règles spéciales à 2 survivants restants (FACT audit)** : auto-décrochage possible (4 %, 3 tentatives, −20 s par échec : valeur wiki) ; laisser passer **2 skill checks de lutte = sacrifice immédiat** (9.1.0) ; si **tous les survivants restants sont accrochés en même temps → sacrifice** (9.1.0) ; **Mori possible** si l'un est en phase Struggle et l'autre au sol (9.0.0).
- **Pression** (HEURISTIC) : le tueur « a la pression » quand il enchaîne une nouvelle chase peu après chaque crochet et quand au moins 2 survivants sont hors des gens (blessés en soin, sauvetage, chase). On la mesure en **nombre de survivants réellement sur un gen** à un instant donné : 3 = pas de pression ; 1 ou 0 = forte pression.
- **Répartir les crochets** (HEURISTIC) : l'équipe a intérêt à ce que les crochets soient **étalés** (1-1-1-1 puis 2-2-2-2), parce qu'une mort retire définitivement un réparateur. En pratique, ça veut dire : **quand c'est possible**, le survivant à 0 crochet prend les risques (protection hits, chase), et celui à 2 crochets joue discret. Contre-cas : si le survivant à 0 crochet est de loin le meilleur looper, le laisser prendre la chase reste bon même s'il a plus de crochets (SITUATIONAL).

### 2.5 Trades et saves

**Trade** = décrocher sous les yeux du tueur. Le tueur choisit : frapper le décroché (il a Endurance → Deep Wound au lieu de la mise au sol, FACT audit) ou frapper le sauveteur.

- **Quand un trade est acceptable** (SITUATIONAL) :
  - L'allié accroché va atteindre la fin de sa phase (proche de 70 s) : attendre offre de toute façon un état de crochet ; le trade ne coûte alors « que » le risque sur le sauveteur.
  - Le sauveteur est sain, à 0 crochet, avec une ressource de chase proche (palette, fenêtre, tile fort).
  - Les 2 autres réparent déjà : même un trade raté achète une chase.
  - **Exception, fin de partie à 2 survivants** : le Mori à 2 et le sacrifice quand tous les survivants restants sont accrochés (FACT audit) rendent le trade bien plus dangereux (voir §6.4).
- **Quand le refuser** (HEURISTIC) : sauveteur blessé, dead zone autour du crochet, tueur à coup unique prêt (Hillbilly, Cannibal, Oni en Blood Fury, Shape en Evil Incarnate : lot 4), ou quand l'accroché a encore > 20 s de phase et que le tueur risque de partir.
- **Saves** (flash save, pallet save, sabotage, body block) : techniques détaillées au **lot 5** (NOT_STARTED). Côté macro :
  - Un save réussi économise **un état de crochet complet** (le plus grand gain possible pour un seul geste) ; un save raté coûte le temps de 2 survivants et donne souvent 2 blessés (HEURISTIC).
  - **SoloQ** : un seul tentateur, et seulement s'il était déjà là (pas de traversée de carte pour une lampe).
  - **SWF** : annoncer « je suis sur le save » ; les autres **ne viennent pas**.
  - Le sabotage : sabotage 3 s, réparation auto 30 s ; les **4 crochets du sous-sol sont insabotables** (FACT audit, STRONG_SECONDARY).

### 2.6 Camping et proxy camp — corriger le seed

**FACT (audit)** sur l'anti-camp (Resolve) :
- Zone : **rayon de 16 m** autour du crochet (VERIFIED_MULTI_SOURCE). Poids par distance : 4 m ×2,5 ; 10 m ×1 ; 15 m ×0,375 ; **16 m ×0** (STRONG_SECONDARY).
- Durée de présence : 0-10 s **×1**, 10-20 s **×2**, > 20 s **×4** ; taux de base réduit en contrepartie (~50 %, non retrouvé en source primaire : CONFLICT-003, UNCERTAIN) ; le multiplicateur revient à zéro au décrochage (VERIFIED_PRIMARY, 9.3.0).
- **Grâce de 7 s** : pause de la jauge pour **tous** les survivants accrochés à chaque nouvel accrochage (VERIFIED_PRIMARY, 9.3.0).
- **Ralentie** par les autres survivants à < 16 m ; **en pause** si le tueur porte un survivant ; **désactivée dès que les portes sont alimentées** ; jauge pleine = tentative d'auto-décrochage garantie (STRONG_SECONDARY).

**Correction du seed** (audit A-283) : « contre un proxy camp, l'anti-camp décrochera l'allié » est **FAUX**. Au-delà de 16 m, la jauge **ne se remplit pas du tout**. Le temps de remplissage exact d'un face camp n'est **pas calculable** faute de taux de base fiable (le seed « inutile au-delà d'environ 20 s » : UNCERTAIN).

Conséquences décisionnelles (HEURISTIC) :
1. **Face camp (tueur à < ~10 m, immobile)** : la jauge monte de plus en plus vite (×2 après 10 s, ×4 après 20 s de présence). **Ne restez pas dans les 16 m** : votre présence **ralentit** la jauge (FACT) et vous offre en cible. Réparez. Réévaluez si le tueur reste plus d'environ 20-30 s (UNCERTAIN) : la jauge finira par libérer l'allié ou le tueur perd énormément de temps.
2. **Proxy camp (tueur à 16-30 m, patrouille entre crochet et gens proches)** : **aucune aide de l'anti-camp**. Il faut une vraie décision de sauvetage (arbre §7.1). Les gens **éloignés** du crochet sont gratuits ; les gens dans la zone de patrouille sont pièges.
3. **Portes alimentées** : l'anti-camp est **coupé** (FACT). Un camp de fin de partie est donc « légitime » mécaniquement : ne comptez plus sur le système (voir §6 et situation §31-C).
4. **Coût pour le tueur** (CALC) : chaque seconde de camp immobile = 0 pression ailleurs ; si 3 survivants réparent des gens hors de sa zone, il leur cède **3 s-surv par seconde**. Un camp de 60 s = ~2 gens de progression pour l'équipe. **Contre-cas** : si l'accroché est en phase 2 (mort à la fin) ou si c'est le dernier crochet d'une partie déjà gagnée pour le tueur, le camp est rentable pour lui (SITUATIONAL).

### 2.7 Tunneling

**FACT (audit, VERIFIED_PRIMARY, 10.1.0)** : protections de décrochage = **Endurance + 10 % de Haste pendant 10 s + Elusive 10 s**. **Elusive ne s'applique pas une fois tous les gens réparés** ; Endurance et Haste **restent** après l'alimentation (correction du seed, A-074). Endurance annulée par toute **action voyante** (réparer, soigner…), STRONG_SECONDARY. Elusive prend fin si le survivant est frappé ou passe au sol ; son annulation par une action voyante n'est pas documentée (UNCERTAIN). Aucun système anti-tunnel plus lourd n'est LIVE (PTB 9.2.0 reporté, PTB 9.3.0 reverted, FACT).

Perks liées (valeurs lot 2 / audit) : **Will to Live** stun 4 s, actif 40/50/60 s après un décrochage, désactivé portes alimentées (STRONG_SECONDARY) ; **Off the Record** 30/35/40 s avec Endurance (STRONG_SECONDARY via notes 9.2.2) ; **Babysitter** (+10 % Haste, pas de traces 20/25/30 s, STRONG_SECONDARY lot 2) ; **Borrowed Time** LIVE : UNCERTAIN (rework PTB 10.2.0 seulement).

Décisions (HEURISTIC) :
- **Vous êtes décroché et le tueur revient** : les 10 s d'Elusive + Haste sont votre fenêtre pour **casser la ligne de vue et changer de direction**, pas pour courir tout droit (le tueur ne voit ni traces ni aura, mais il vous voit si vous restez dans son champ). N'effectuez **aucune action voyante** pendant l'Endurance (FACT : elle serait perdue). Allez vers des tiles, pas vers un gen.
- **Un allié est tunnelé** : l'équipe **répare en priorité**. Le tueur investit toute sa chase sur une cible déjà « payée ». Un seul survivant sain peut prendre un protection hit s'il est déjà proche (SoloQ) ou si c'est son rôle (SWF).
- **Risque** : si le tunnel réussit vite (< ~30 s par chase, UNCERTAIN), l'équipe passe à 3 réparateurs très tôt. **Alternative** : quand le tunnel est certain et rapide, le sauveteur peut **retarder** le décrochage jusqu'à ce que le tueur s'engage ailleurs (voir §7.1), quitte à perdre ~10-20 s de phase.
- **Contre The Judgment** : l'Exile compte comme un état de crochet **sans déclencher les perks de crochet** (FACT audit) ; Off the Record / Will to Live / Babysitter ne s'activent pas. L'application des protections basekit à une libération d'Exile n'est pas vérifiée (lot 4 : jouer comme si elles ne s'appliquaient pas).

### 2.8 Slugging

**FACT (audit)** : récupération au sol **automatique**, plafond **95 %** en **30,4 s** (VERIFIED_MULTI_SOURCE) ; **aucune auto-relève basekit LIVE** (PTB 9.2.0 / 9.3.0 annulés, VERIFIED_PRIMARY) ; bleed-out 240 s ; rampement 0,7 m/s (1,05 m/s : UNCERTAIN, CONFLICT-002) ; **Abandon** possible au 3e passage au sol après avoir été relevé ou soigné 2 fois (9.2.0) ; **Surrender** quand tous les survivants sont au sol (8.6.0) ; refonte au PTB 10.2.0 (non LIVE). Relevage complet seul uniquement via perk (Unbreakable : une fois par épreuve, sur une mise au sol par le tueur, 9.5.0 ; Boon: Exponential dans 24 m, lot 2).

Décisions (HEURISTIC) :
- **Pourquoi le tueur slug** : relever coûte du temps aux survivants (le relevage d'un mourant n'est pas dans l'audit : NV, à mesurer) et attire un sauveteur qu'il peut mettre au sol aussi. Le slug est rentable pour lui quand **plusieurs survivants sont proches**.
- **Vous êtes au sol** : rampez vers **un coéquipier ou une zone couverte** (pas vers un gen occupé par d'autres, ni vers un cul-de-sac). Laissez la récupération auto travailler (30,4 s jusqu'à 95 %) : relevé à 95 %, le coéquipier finit plus vite (durée restante : NV).
- **Un allié est au sol et le tueur est à côté** : ne **venez pas à deux**. Un seul relève, **quand le tueur est engagé ailleurs** (chase visible, TR éloigné). Contre Knock Out (auras des mourants réduites à 32/24/16 m après un M1, STRONG_SECONDARY lot 3), vous ne verrez parfois pas l'allié : ne partez pas à l'aveugle vers son dernier endroit connu sans indice.
- **Tout le monde au sol sauf vous** : le **dernier debout ne doit pas se faire prendre en chase** ; jouez le relevage si le tueur s'éloigne, sinon la trappe (voir §6.3). Sans perk, rester loin est souvent plus rentable que tenter une relève sous ses yeux (SITUATIONAL : un tueur qui accroche un des survivants au sol vous rend du temps).
- **Abandon / Surrender** : ce sont des options de fin, pas des stratégies. Abandonner prive l'équipe d'un réparateur et d'un leurre : en SWF, l'annoncer avant ; en SoloQ, préférer ramper vers un allié tant qu'une chance réelle existe (EXPERT OPINION non sourcée).

### 2.9 Reset, regroupement, split pressure

- **Reset** (HEURISTIC) : moment où l'équipe récupère son état après une vague de pression (2 blessés, 1 crochet). La question : **combien de s-surv coûte le retour à « tout le monde sain »** ? Deux soins altruistes = 64 s-surv ≈ 0,7 gen. Un reset complet n'est rentable que si le tueur doit **encore** faire beaucoup de coups (tueur M1 sans coup unique, gens encore nombreux). Contre un tueur à coup unique ou une équipe à 1-2 gens de la fin, on ne reset pas.
- **Regroupement** : utile seulement pour **échanger des ressources** (soin rapide avec un Med-Kit, relevage, Boon) ou en fin de partie pour convertir (portes). Toute autre proximité donne des cibles multiples et ralentit l'anti-camp.
- **Split pressure** (HEURISTIC) : forcer le tueur à choisir entre deux objectifs éloignés (deux gens aux extrémités, deux portes, un crochet et un gen). Contre un 3-gen déjà formé, on attaque **simultanément** deux gens du triangle à deux survivants différents pendant qu'un troisième tient une chase : le tueur ne peut pas frapper deux gens à la fois. Risque : deux survivants proches du tueur. Alternative : si l'un des 3 gens est plus loin, jouer celui-là.

### 2.10 Quand soigner / quand ne PAS soigner

**Le prix d'un soin (CALC)** : 32 s-surv (altruiste, sans objet) ; ~24 s d'auto-soin au Med-Kit (hypothèse de calcul) ; Mangled +25 % ; Deep Wound à mender (10 s seul / 6 s allié) avant tout.

**Ce que rapporte un état de santé** (HYPOTHESIS, non mesurable avec l'audit seul) : au minimum un coup de plus pour le tueur, soit un cooldown de 2,7 s après coup réussi (FACT audit, VERIFIED_MULTI_SOURCE), plus le boost au coup (1,8 s, ×1,65 selon le wiki : STRONG_SECONDARY) et une nouvelle phase de rattrapage (10 m d'avance ≈ 16-25 s en terrain vide). Ordre de grandeur plausible : **15-30 s de chase en plus**, très dépendant des tiles. Donc un soin est **proche de l'équilibre** en s-surv, et ce sont les **facteurs de contexte** qui tranchent.

| Contexte | Décision | Pourquoi | Risque / alternative |
|---|---|---|---|
| Tueur à coup unique fréquent (Hillbilly, Cannibal, Oni Blood Fury, Shape Evil Incarnate…) | Soin souvent **non rentable** | L'état de santé ne vaut rien contre l'attaque spéciale | Mais utile contre ses M1 : SITUATIONAL selon qu'il joue pouvoir ou M1 |
| Tueur à blessure à distance / statut (Legion, Plague, Trickster, Krasue…) | **Ne pas soigner par réflexe** | Il reblesse vite et à distance ; le seed disait « soignez vite contre Plague » (règle absolue relevée par l'audit) | Contre Plague : purifier fait des fontaines corrompues (lot 4) ; jouer Broken est un compromis, pas une règle |
| Gen > ~70 % et tueur loin | **Finir le gen**, soigner après | Un gen fini est un acquis définitif | Si le tueur arrive, vous êtes blessé sur un gen presque fini : voir arbre §7.3 |
| Dernier gen, **Adrenaline** dans l'équipe | Le porteur ne se soigne pas | Adrenaline soigne d'un état à l'alimentation (lot 2, STRONG_SECONDARY) | Terminus rend Broken portes alimentées : Adrenaline ne soigne plus (lot 3, STRONG_SECONDARY) |
| Perks « blessé » (Resilience, etc., valeurs UNCERTAIN) | Rester blessé est **acceptable** | Bonus d'action | Un seul coup vous met au sol |
| Terror radius qui arrive pendant le soin | **Arrêter et partir** | Soin interrompu conservé (sauf Haemorrhage : −7 %/s, FACT audit) | Vous perdez la position ; choisir un soin plus loin |
| A Nurse's Calling possible (28/30/32 m, LIVE 10.1.0) | Soigner **loin** du tueur ou derrière de la couverture | Les auras de soin sont révélées dans ce rayon | Perk du tueur cachée (loadout invisible, FACT 9.6.0) : c'est une hypothèse à tester |
| Tueur avec forte pression et 2 blessés | **Un seul** soin, le plus utile (le meilleur looper ou le prochain « chasable ») | Le 2e soin coûte 0,36 gen de plus | Alternative : zéro soin, gens à fond |
| 2 survivants restants | Soin **presque toujours** rentable | Le tueur n'a plus de cibles alternatives : chaque coup encaissé allonge la partie | Sauf si la trappe/porte est proche |

**Nombre de soigneurs** : 2 max selon le wiki, 3 selon le seed (CONFLICT-001, UNCERTAIN). Ne planifiez pas de soin à 3.

### 2.11 Continuer ou lâcher un gen

**Faits utiles** (audit) : le kick coûte **1,8 s** au tueur et enlève **5 %** ; un gen fini ne peut plus être frappé ; skill check raté = **−10 %, 3 s bloqué** + bruit (bruit : NV). Nowhere to Hide révèle les auras à 24 m d'un gen frappé (LIVE). Pain Resonance fait exploser le gen **le plus avancé** (−10/15/20 %) et crier ceux qui le réparent (STRONG_SECONDARY, lot 3 ; la révélation de position est contestée : CONFLICT-L3P90-02).

Règle de décision (HEURISTIC) : comparer **le temps pour finir** au **temps d'arrivée du tueur**.
- Temps pour finir = charges restantes / débit (1 c/s seul ; 1,7 c/s à 2 ; 2,1 à 3 ; 2,2 à 4).
- Temps d'arrivée ≈ distance / vitesse du tueur. Un tueur à 4,6 m/s qui entre dans un TR de 32 m (valeur historique, beaucoup d'exceptions : FACT audit STRONG_SECONDARY) vous atteint en **~7 s** s'il vient droit sur vous ; ~5 s pour un TR de 24 m à 4,4 m/s (CALC).
- **Si fin < arrivée − 2 s** (marge pour le skill check et la fuite) : **finir**.
- **Sinon** : lâcher **avant** d'être vu (préserver la furtivité et une avance de départ), dans la direction opposée à l'arrivée du TR, vers une ressource de chase.
- **Exceptions** : tueur furtif (pas de TR fiable : Wraith, Pig accroupie, Ghost Face, Shape Stalker, Onryō, Slasher… lot 4) → le TR ne vous protège pas, regardez plutôt les indices visuels ; gen à 99 % volontaire (voir §6.1).

### 2.12 Économie de l'information

Chaque action émet ou coûte de l'information. Le tueur agit sur ce qu'il sait ; les survivants aussi.

| Ce que vous émettez | Qui le reçoit | Coût / gain | Source |
|---|---|---|---|
| Traces de griffures (course) | tueur, 10 s | Marcher les supprime ; indispensable après une perte de LOS | FACT audit STRONG_SECONDARY |
| Flaques de sang, grognements (blessé) | tueur | Rester blessé rend la furtivité plus difficile | FACT audit (existence) ; portée UNCERTAIN |
| Corbeaux (4 m) | tueur | Accroupi / Calm Spirit : pas d'envol | FACT audit STRONG_SECONDARY |
| Corbeaux AFK (80/100/120 s d'inactivité) | tueur | Se cacher trop longtemps sans bouger finit par vous signaler | FACT audit VERIFIED_PRIMARY |
| Skill check raté | tueur (bruit : NV) | −10 % + position | FACT (pénalité) |
| Gen fini | tout le monde | Le tueur sait qu'un gen est tombé ; chaque gen fini peut déclencher des perks (No Holds Barred, etc. UNCERTAIN) | NV (notification) |
| Porte / interrupteur | tueur (No Way Out : Loud Noise, STRONG_SECONDARY) | Blocage 12 s + 6/9/12 s par jeton | FACT audit |
| Accroupissements / gestes à < 10 m de The Judgment | tueur | 3 → Heresy | FACT audit |

Ce que vous **recevez** gratuitement : l'identité du tueur (révélée dès qu'un survivant entre en chase ou perd un état, FACT 9.6.0), les **loadouts de vos coéquipiers** dans Match Details (FACT 9.6.0), le TR, la musique de chase (couche 4), la tache rouge, les auras des alliés accrochés (NV), l'aura de la trappe pour le dernier survivant (FACT 5.3.0). Le **loadout du tueur reste caché** jusqu'à la fin (FACT, correction D-092 du seed) : toute « connaissance » de ses perks est une **déduction**.

**Principe d'économie** (HEURISTIC) : dépenser l'information du tueur (ne rien lui montrer) coûte peu en début de partie et beaucoup en fin ; au contraire, **acheter** de l'information (aller vérifier un crochet, regarder la chase d'un allié) coûte des s-surv. En SoloQ, on achète l'information avec des **perks** (Kindred, Bond, Empathy… valeurs UNCERTAIN lot 2) ; en SWF, avec la **voix**, qui est gratuite.

### 2.13 Positionnement

- **Distance au crochet probable** (HEURISTIC) : pendant une chase d'un allié, se placer à une distance qui permet d'atteindre la zone de crochets probable **en moins de 70 s** (idéalement 20-30 s de course, soit 80-120 m : CALC à 4 m/s) sans être sur son chemin de portage.
- **Éviter le gen « le plus proche du crochet »** au moment de l'accrochage : c'est le premier que le tueur visite en repartant (HEURISTIC), et c'est celui que Grim Embrace/Pain Res et Nowhere to Hide rendent dangereux (lot 3).
- **Respecter les 16 m** : en cas de face camp, être à > 16 m du crochet ne ralentit pas l'anti-camp (FACT) et ne vous expose pas.
- **Vigil (16 m)**, Boons (24 m), Bond, Empathy : les rayons des perks d'équipe dictent le positionnement **si** l'équipe les porte (voir Match Details).
- **Proximité des ressources** : réparer un gen **adossé à un tile fort** plutôt qu'en dead zone ; contre les tueurs à mobilité, la LOS haute compte plus que le nombre de palettes (lot 4, HEURISTIC).

---
## 3. Solo Queue (§13) — bloc SoloQ uniquement

> Hypothèse de base : vous ne parlez à personne. Tout ce qui suit suppose **zéro communication vocale**. Le **Survivor Intent System** (messages d'intention) est **PTB 10.2.0 uniquement** (FACT audit, registre) : il n'existe pas en LIVE 10.1.2a. Le seed (ch. 6, règle 9 ; Trio C) le présentait comme utilisable : c'est du PTB-comme-LIVE (audit §4).

### 3.1 Le problème central

En SoloQ, la perte principale n'est pas la chase, c'est **le doublon et l'inaction** : deux sauveteurs sur le même crochet, personne sur un crochet, deux soigneurs pour un blessé, trois réparateurs sur le même gen. Le seed chiffrait ces pertes (160 s-surv pour les doubles sauveteurs, etc.) avec des hypothèses de trajet **UNCERTAIN** ; l'ordre de grandeur (plusieurs gens perdus par partie désorganisée) est plausible (HYPOTHESIS), mais non mesuré.

### 3.2 Lecture du HUD et des signaux

| Signal | Ce qu'il dit | Fiabilité | Décision typique |
|---|---|---|---|
| **Match Details : loadouts des coéquipiers** (perks, objets, add-ons, offrandes) | Qui a Kindred, un Med-Kit, un anti-tunnel, Adrenaline… | FACT (9.6.0, VERIFIED_PRIMARY) | Adapter son rôle avant la partie et pendant : « qui décroche le mieux », « qui a un kit » |
| **Identité du tueur** (révélée dès qu'un survivant entre en chase ou perd un état) | Pouvoir, vitesse de classe | FACT (9.6.0) | Adapter soin, groupement, gens |
| **Onglet pouvoir du tueur dans Match Details** | Rappel du pouvoir | FACT (10.0.0, registre) | Lire les mots-clés du pouvoir si le tueur est peu connu |
| **Portrait / icône d'état de chaque survivant** (sain, blessé, mourant, accroché, porté, mort) | L'état de santé de l'équipe | NV (connu, absent de l'audit) | Savoir combien sont « chasables » |
| **Indicateur de chase sur le portrait** | Quel allié est poursuivi | NV | Si un allié est en chase, **réparer** |
| **Icônes d'action sur le portrait** (réparation, soin, décrochage, purification…) | Ce que chacun fait | NV (liste exacte à vérifier en jeu) | Éviter les doublons d'action |
| **Compteur d'états de crochet par survivant** | Qui est à 1 ou 2 crochets | NV (forme exacte à vérifier) | Qui prend les risques, qui joue discret |
| **Barre de phase d'un accroché** | Temps restant avant la phase suivante (70 s/phase) | FACT pour 70 s ; affichage : NV | Timing du sauvetage |
| **Jauge anti-camp** | Visible des **autres survivants accrochés** (9.3.0) | FACT audit STRONG_SECONDARY | Accroché : savoir si l'auto-décrochage garanti approche |
| **Barres de progression colorées** | Mention dans le registre 9.6.0 sans détail | FACT (existence) ; sens exact UNCERTAIN | À vérifier en jeu |
| **Aura d'un allié accroché / au sol** | Position à secourir ; Knock Out réduit la portée des auras des mourants après un M1 | NV (basekit) ; Knock Out : STRONG_SECONDARY (lot 3) | Si l'allié au sol est invisible, suspecter Knock Out ou une distance |
| **Nombre de gens restants** | Avancement | NV (affichage), FACT (5 requis) | Tableau de course (§1.3) |

**HEURISTIC** : faire un « tour de HUD » de ~1 s à chaque événement (crochet, gen fini, cri, fin de chase) plutôt que le fixer en continu. La caméra doit rester sur le jeu.

### 3.3 Comportements probabilistes

Vous ne savez pas ce que feront les trois autres, mais vous pouvez **estimer** (HEURISTIC, probabilités subjectives, non mesurées) :

| Situation | Hypothèse par défaut | Pourquoi | Ajustement |
|---|---|---|---|
| Allié accroché, vous n'êtes pas le plus proche | Quelqu'un **peut** y aller, mais pas sûrement | Beaucoup de joueurs SoloQ réagissent tard | Donner un **délai de confirmation** (ex. 15-20 s) : si aucun portrait ne montre d'action de sauvetage et qu'aucune aura (Kindred) ne bouge vers le crochet, **y aller** |
| Deux auras se dirigent vers le crochet (Kindred) | Doublon imminent | — | Le plus loin fait demi-tour ; **en cas d'égalité, celui qui est sur le gen le plus avancé reste** (règle de départage utile en SoloQ) |
| Un allié a Adrenaline | Il ne se soignera probablement pas au dernier gen | Loadout visible | Ne pas perdre 16 s à le soigner |
| Un allié blessé s'approche de vous | Il veut un soin, ou il amène le tueur | Pas de moyen de savoir | Vérifier le TR avant d'accepter ; le soin se fait loin du gen occupé |
| Un allié tourne en chase depuis longtemps près de votre gen | Il peut vous amener le tueur | Beaucoup de loopers restent dans leur zone | Lâcher le gen **tôt** si la chase se rapproche, pour ne pas devenir 2e cible |
| Un allié est au sol près du tueur | Au moins un autre joueur va tenter | Réflexe fréquent | Ne pas être le 2e : rester sur le gen ou se placer à distance de relevage « après » |

### 3.4 Communication indirecte (LIVE, sans système d'intention)

- **Mouvement visible** : se diriger franchement vers un crochet (visible avec Kindred pour les autres, NV) est un message. Faire demi-tour aussi.
- **Actions visibles au HUD** : commencer un soin ou un décrochage apparaît sur votre portrait (NV). Ne pas « tenter » une action pour signaler si elle coûte.
- **Gestes (point, « viens ici »)** et **accroupissements** : utiles pour guider un blessé vers vous ou montrer un totem, **mais** contre The Judgment, 3 accroupissements ou gestes à < 10 m donnent Heresy (FACT audit). Et ils ne servent à rien si l'allié ne vous regarde pas.
- **Laisser un gen en évidence** : lâcher un gen avancé indique « à finir » à qui le voit (HYPOTHESIS : dépend de la visibilité de la progression pour les autres, NV).
- **Sabotage, lampe, casier** : se préparer ostensiblement près d'un crochet indique un save ; les autres peuvent partir.

### 3.5 Décisions robustes

Une décision **robuste** est celle dont le **pire cas** reste acceptable, même si elle n'est pas optimale en moyenne (HEURISTIC). En SoloQ, l'incertitude sur les alliés est forte : préférer la robustesse.

| Choix | Version « optimale si l'équipe suit » | Version robuste SoloQ |
|---|---|---|
| Sauvetage | Attendre que le meilleur sauveteur y aille | Délai de confirmation court, puis y aller soi-même |
| Soin | Se faire soigner par un allié qui a un kit | Soin au kit / auto seulement si le coût est rentable (§2.10) ; sinon rester blessé et réparer |
| 3-gen | Coordonner deux gens du triangle | Réparer soi-même un gen du triangle au bon moment |
| Anti-tunnel | Un coéquipier prend le protection hit | Prendre soi-même un anti-tunnel (Will to Live, Off the Record : Match Details) |
| Endgame | Répartir les portes | Aller à la porte **la plus éloignée du dernier emplacement connu du tueur** ; ne pas attendre un allié dans la sortie sans raison |
| Info | Compter sur Kindred d'un allié | Prendre soi-même une perk d'info si personne ne l'a (Match Details) |

**Erreur SoloQ la plus coûteuse** (EXPERT OPINION non sourcée) : **« quelqu'un d'autre ira »** sur un crochet en fin de phase 1. Le coût d'un doublon (~20-40 s-surv, UNCERTAIN) est bien inférieur au coût d'un état de crochet offert (≈ une phase de 70 s de vie de l'allié et un pas vers une mort qui retire 1 réparateur).

---

## 4. SWF (§13) — bloc SWF uniquement

> Hypothèse de base : groupe en vocal. La coordination supprime les doublons, mais crée d'autres erreurs : **surconfiance, altruisme excessif, bruit radio**. Les chiffres du seed « +3 / +8 points d'évasion en vocal » **n'ont pas de source primaire** (audit A-119/A-255) : ne pas les citer.

### 4.1 Rôles (flexibles, pas des castes)

| Rôle | Mission | Perks/objets typiques (valeurs : lot 2, UNCERTAIN) | Échec typique |
|---|---|---|---|
| **Runner / looper** | Prendre la 1re chase, la tenir loin des gens | Perks de chase, Will to Live | Ramener le tueur vers les gens |
| **Gen jockey (×1-2)** | Réparer sans être trouvé, appeler les gens | Toolbox, Déjà Vu | Venir « voir » les chases |
| **Support / rescuer** | Suivre les crochets, soigner, décrocher | Med-Kit, Kindred, Babysitter, Reassurance | Trop tôt sur le crochet, trade au mauvais moment |
| **Shot-caller** (rôle de parole, pas de gameplay) | Trancher en cas de désaccord : qui sauve, quel gen, quelle porte | — | Parler trop, micro-gérer la chase |

**HEURISTIC** : les rôles changent avec l'état de la partie. Le runner blessé à 2 crochets devient gen jockey ; le jockey sain devient runner si le tueur le trouve.

### 4.2 Protocoles

1. **Protocole crochet** : l'accroché annonce la position + le comportement du tueur (« il part nord » / « il reste »). Le shot-caller désigne **un** sauveteur (le plus proche ou le plus sain) qui annonce son **ETA**. Les autres continuent. Le sauveteur annonce « décroché » ; le décroché annonce sa direction.
2. **Protocole chase** : le poursuivi annonce le tile, les palettes restantes, son état, et ce qu'il fera (« je traîne vers killer shack »). Il annonce **tôt** s'il va tomber (« je tombe dans 5 ») pour que le rescuer se prépare.
3. **Protocole gens** : chaque joueur donne son gen par un **repère de carte** et un % arrondi à la dizaine. Quand un gen dépasse 80 %, l'annoncer : c'est un candidat au 99 (§6.1).
4. **Protocole 3-gen** : dès 3 gens restants, le shot-caller nomme les gens restants et désigne deux réparateurs sur deux gens différents du groupe le plus serré.
5. **Protocole slug** : « au sol, tueur à côté » → personne ne vient ; « au sol, tueur parti » → un relève.
6. **Protocole endgame** : décision **explicite** : on tient le 99 ou on alimente ; qui ouvre quelle porte ; qui sauve.

### 4.3 Grammaire des callouts

**Structure** (HEURISTIC) : `[PRIORITÉ] SUJET – ÉTAT – LIEU – DIRECTION – INTENTION`, en **moins de 2 s**. Tout ce qui ne change pas une décision se tait pendant une chase.

- **Priorité** : « URGENT / STOP » (danger immédiat), sinon info normale. Pendant une chase, seul le poursuivi parle, sauf URGENT.
- **Lieu** : **repères** de carte (bâtiments, killer shack, main, sous-sol, coins nommés) plutôt que numéros ; en dernier recours, **boussole** relative au bâtiment principal (« nord de main »). Se mettre d'accord au chargement de la carte.
- **Nombres** : dizaines de % pour les gens (« shack 60 »), secondes pour les ETA (« ETA 10 »), états de crochet en entier (« Nea deux crochets »).
- **Négations utiles** : « pas de TR », « pas de BBQ » (pas d'aura révélée au crochet), « pas de Pop » : l'absence d'un effet est une information.

### 4.4 Lexique FR / EN (callouts)

| FR | EN courant | Sens | Quand |
|---|---|---|---|
| « Sur moi » | « On me » | Le tueur me poursuit | Début de chase |
| « Il part / il revient » | « He's leaving / he's back » | Direction du tueur après un crochet | Protocole crochet |
| « Proxy » | « Proxy camping » | Tueur qui patrouille à ~16-30 m du crochet | Décision de sauvetage |
| « Face camp » | « Face camping » | Tueur collé au crochet | Personne ne vient, gens à fond |
| « Je prends le save, ETA 15 » | « I'll go, 15 out » | Un seul sauveteur | Protocole crochet |
| « Reste sur ton gen » | « Stay on gen » | Évite le doublon | Protocole crochet |
| « Décroché » | « Unhooked » | Début des 10 s de protections | Pour que les autres sachent qu'Elusive court |
| « Je tombe dans 5 » | « Going down » | Mise au sol imminente | Préparation du sauvetage |
| « Trade » | « Trade » | Décrochage sous ses yeux, accepté | Décision assumée par l'équipe |
| « Body block / je prends le hit » | « I'll take a hit » | Protection hit prévu | Anti-tunnel |
| « Gen shack 70 » | « Shack gen 70 » | Progression | Protocole gens |
| « 99 » | « 99 » | Gen tenu à 99 % | Endgame |
| « Frappé / spikes » | « Kicked / spiked » | Gen frappé (pointes visibles dès le 4e event, FACT) | Tracker la régression |
| « Bloqué (blanc) » | « Blocked » | Gen bloqué par l'Entité | Déduction de perk (§4.5) |
| « Hex allumé à … » | « Hex at … » | Totem Hex trouvé | Décision totem (§7.4) |
| « Il a son pouvoir / pas de pouvoir » | « Power up / power down » | État du pouvoir (charges, cooldown) | Chase et sauvetages |
| « Dead zone » | « Dead zone » | Zone sans ressource | Choix de trajet |
| « Zone morte / palettes finies à … » | « Pallets gone at … » | Ressources épuisées | Game sense (§5.2) |
| « Porte à … / je l'ouvre » | « Gate at … / opening » | Gestion des portes | Endgame |
| « Trappe vue à … » | « Hatch at … » | Position de la trappe (dernier survivant : aura visible par lui seul, FACT) | Endgame |

### 4.5 Suivi du tueur et des perks (SWF)

Le loadout du tueur est **caché** jusqu'à la fin (FACT). Le SWF tient un **registre oral** des indices, et un joueur (souvent le shot-caller) le résume à chaque événement.

| Indice observé | Hypothèse de perk (vue survivant) | Confiance de l'effet (lot 3) |
|---|---|---|
| Gen le plus avancé perd un gros bloc et des survivants crient à un accrochage | Scourge Hook: Pain Resonance (−10/15/20 %) | STRONG_SECONDARY |
| Les 3 gens les plus éloignés du tueur bloqués en début de partie, déblocage au premier mourant | Corrupt Intervention (80/100/120 s) | STRONG_SECONDARY |
| Le tueur arrive droit sur des survivants à ~24 m d'un gen qu'il vient de frapper | Nowhere to Hide (LIVE 10.1.0 : 24 m, 3/4/5 s) | VERIFIED_PRIMARY |
| Gens non réparés qui régressent seuls | Hex: Ruin (100/125/150 %) | STRONG_SECONDARY |
| Gen le plus avancé bloqué à chaque gen fini | No Holds Barred (ex-Deadlock) | UNCERTAIN (valeurs) |
| Interrupteur bloqué avec bruit à l'ouverture | No Way Out (12 s + 6/9/12 s par jeton) | STRONG_SECONDARY |
| Portes bloquées après un accrochage une fois une porte ouverte | Blood Warden (40/50/60 s, une fois) | STRONG_SECONDARY |
| Exposed généralisé à l'alimentation | Hex: NOED | UNCERTAIN (valeurs) |
| Broken à l'alimentation, Adrenaline sans soin | Terminus | STRONG_SECONDARY (durée contestée, CONFLICT-3P92-01) |
| Aura d'un mourant invisible au-delà d'une certaine distance après un M1 | Knock Out | STRONG_SECONDARY |

Le **suivi des crochets** : quelqu'un tient le compte « A:1, B:2, C:0, D:1 » et le rappelle à chaque accrochage. Il détermine qui prend les risques (§2.4) et quand un trade devient inacceptable.

### 4.6 Erreurs spécifiques SWF (HEURISTIC)

1. **Trop d'altruisme** : deux sauveteurs, deux soigneurs. Règle **par défaut** (pas absolue, contrairement au seed) : un événement = un joueur, sauf appel explicite du shot-caller (ex. relevage + protection hit contre un slug, qui peut justifier 2 joueurs).
2. **La lampe au lieu du gen** : chercher un flash save coûte les s-surv d'un réparateur ; le faire seulement si l'on était déjà près du portage.
3. **Bruit radio** : parler pendant la chase d'un allié l'empêche d'entendre le TR et les sons du pouvoir du tueur. Silence par défaut pendant une chase.
4. **Sous-estimer l'adaptation du tueur** : une équipe qui répare vite déclenche souvent tunnel ou slug (EXPERT OPINION non sourcée). Anticiper dans la compo (Match Details est aussi visible en SWF).

---
## 5. Game sense (§15)

Le game sense n'est pas un don : c'est une **estimation continue** de quelques variables, mise à jour à chaque indice. Ce chapitre décrit les variables, les indices et la façon de s'entraîner (les drills complets sont au lot 11).

### 5.1 Prédire la position du tueur

- **Modèle du cône** (CALC + HEURISTIC) : dernier point connu + temps écoulé × vitesse. 10 s après la dernière vue, un tueur à 4,6 m/s peut être n'importe où dans ~46 m ; mais il se dirige presque toujours vers **l'objectif le plus rentable** pour lui : gen frappé récemment, dernier bruit (gen raté, vault rapide, notification), crochet où il vient d'accrocher, survivant blessé repéré.
- **Après un accrochage** (HEURISTIC) : le tueur repart vers (1) le gen le plus proche du crochet, (2) la direction d'où vient le sauveteur probable, (3) un gen qu'il sait réparé. S'il ne revient pas dans le TR en ~10 s, il s'est engagé ailleurs.
- **Indices** : TR (taille selon le tueur), musique de chase (couche 4), tache rouge (direction du regard), corbeaux qui s'envolent (4 m), bruits de kick/casse, cris (Pain Res), notifications de gen. Tous : FACT audit sauf les sons de kick (NV).
- **Tueurs furtifs** (lot 4) : le TR ment. Remplacer par : corbeaux, cloche du Wraith, rugissement de la Pig, zones sans TR suspectes, alertes de perks (Spine Chill : efficacité contre Undetectable UNCERTAIN).
- **Entraînement** (HEURISTIC) : à chaque perte de vue du tueur, **dire à voix haute** (ou penser) où il sera dans 10 s ; vérifier. Mesure : taux de prédictions correctes sur 10 parties.

### 5.2 Zones épuisées

- **Définition** : zone où les palettes sont cassées/utilisées et où les fenêtres sont bloquées (3e vault de la même fenêtre = blocage 30 s pour ce survivant : FACT audit STRONG_SECONDARY ; Bamboozle bloque 8/12/16 s pour tous).
- **Pourquoi c'est décisif** : les palettes ne réapparaissent pas (NV pour l'absence de réapparition hors perks) ; une zone épuisée tôt devient une dead zone pour tout le reste de la partie. L'espacement minimal entre palettes est de 14-20 m (FACT audit STRONG_SECONDARY) : dans une zone épuisée, la prochaine ressource est loin.
- **Tenir la carte** (HEURISTIC) : retenir 3 choses par zone : palettes restantes, fenêtre bloquée, gen fini. En SWF, l'annoncer (« palettes finies à shack »).
- **Conséquence macro** : **réparer près des zones riches** en fin de partie ; attirer la chase vers une zone riche plutôt que vers les gens ; ne pas gaspiller des palettes près des gens du 3-gen : ce sont les ressources de la fin (HEURISTIC).

### 5.3 Estimer les gens

- **Horloge simple** (CALC) : un gen commencé par un solo il y a t secondes est à ~t/90 ; à deux, t × 1,7/90. Soustraire les kicks (−5 % + 0,25 c/s après) et les skill checks ratés (−10 %).
- **Indices** : progression visible en réparant (NV), barres colorées (9.6.0, sens exact UNCERTAIN), le bruit d'explosion de gen (Pain Res, NV pour le son), les gens « à pointes » (≥ 4 regression events, FACT).
- **Usage** : savoir si l'on **finit** avant l'arrivée du tueur (§2.11) ; savoir **combien de temps** il reste avant les portes pour gérer un crochet (à 1 gen de la fin, la fenêtre de 70 s de l'accroché se compare au temps de finir + ouvrir : 20 s de porte).

### 5.4 Prédire les coéquipiers

- **SoloQ** : voir §3.3 (hypothèses par défaut). Indices : loadout (Match Details), style observé (un joueur qui a déjà fait deux sauvetages tardifs en fera probablement un troisième), portraits.
- **SWF** : annonces. Le risque est inverse : trop de confiance dans ce qu'un allié a annoncé ; vérifier que l'annonce est récente.

### 5.5 Lire les intentions et les patterns du tueur

| Pattern observé | Intention probable | Réponse (HEURISTIC) |
|---|---|---|
| Revient au crochet juste après le décrochage | Tunnel | Casser la LOS pendant les 10 s d'Elusive ; l'équipe répare |
| Reste à 16-30 m du crochet en frappant les gens voisins | Proxy camp | Sauvetage seulement quand il s'engage ; gens loin de sa zone |
| Laisse des survivants au sol et cherche les autres | Slug | Ne pas venir à deux ; rester loin si on n'a pas de relevage rapide |
| Frappe beaucoup de gens, ne poursuit pas longtemps | Stratégie de régression / 3-gen | Repérer le triangle, split pressure |
| Abandonne vite les chases longues | Il veut des coups rapides, pas de temps perdu | Tenir les tiles forts, ne pas s'exposer en dead zone |
| Garde la même cible quelle que soit la distance | Tunnel ou Obsession | Anti-tunnel ; les autres réparent |
| Patrouille entre deux portes après alimentation | Gate camp | Ouvrir les deux portes en même temps ; ne pas lâcher une porte à 90 % sous ses yeux |

### 5.6 Tracker perks et hook stages

- Perks : voir §4.5 (tableau d'indices). En SoloQ, ce suivi est **mental** ; se limiter aux 3 perks qui changent le plus les décisions : **slowdown** (Pain Res, Ruin, CI…), **aura** (Nowhere to Hide, BBQ…), **endgame** (NOED, No Way Out, Blood Warden, Terminus).
- Hook stages : tenir le compte de chaque survivant ; le survivant à 2 crochets est un **mort en sursis** si le tueur le trouve : il ne doit pas être celui qui fait les actions à risque.

### 5.7 Reconnaître un snowball

Signaux d'une partie qui bascule vers le tueur (HEURISTIC, seuils indicatifs) :
- **1er accrochage avant le 1er gen fini** et un 2e blessé au même moment.
- **Écart au tableau de course** ≥ 0,25 (§1.3).
- **Un mort avant 3 gens finis** : l'équipe perd 33 % de débit parallèle.
- **Palettes consommées tôt** dans la zone des gens restants (§5.2).
- **3-gen formé** avec 2 survivants ou moins valides.
- **Tueur à mobilité** sur une petite carte, sans que les chases dépassent ~30 s (UNCERTAIN).

Réponse : **passer en mode conversion** : moins de soins, plus de gens ; sacrifier des sauvetages douteux ; chercher 1-2 évasions (portes ou trappe) plutôt que 4 (EXPERT OPINION non sourcée). **Risque** : l'égoïsme prématuré (abandonner un allié sauvable) fait perdre des parties rattrapables. Le signal doit être **cumulé**, pas un seul indice.

### 5.8 Décider avec une information incomplète

1. **Lister les hypothèses** (2-3 suffisent) : « le tueur est au crochet » / « il est reparti vers le gen sud » / « il est en chase avec X ».
2. **Pondérer** avec les indices (TR, portraits, dernier bruit).
3. **Comparer les pires cas** : si l'une des actions a un pire cas catastrophique (mort d'un allié, 2 survivants au sol à 2 survivants restants), la rejeter même si elle est meilleure en moyenne.
4. **Acheter de l'info si elle est bon marché** : 2 s de marche pour vérifier une LOS valent mieux qu'un sauvetage à l'aveugle.
5. **Décider vite** : en DBD, une bonne décision prise 10 s trop tard coûte souvent plus qu'une décision moyenne prise à temps (HEURISTIC).

---

## 6. Fin de partie : portes, trappe, EGC

### 6.1 Le dernier gen et le « 99 »

**Pourquoi tenir un gen à 99 %** : l'alimentation des portes est **un interrupteur de règles**. À l'alimentation (FACT audit sauf mention) :
- l'**anti-camp est désactivé** (STRONG_SECONDARY) ;
- **Elusive** n'est plus donnée au décrochage ; Endurance + Haste 10 s restent (VERIFIED_PRIMARY) ;
- **Will to Live** est désactivé (STRONG_SECONDARY) ;
- les perks de fin de partie se déclenchent : Adrenaline, Hope, Wake Up! (survivants, lot 2) ; NOED, No Way Out, Terminus, Blood Warden (tueur, lot 3).

**Quand tenir le 99** (SITUATIONAL) :
- Un allié est accroché ou va l'être, et le tueur est près du crochet : alimenter lui coupe l'anti-camp et Elusive.
- Plusieurs blessés et Adrenaline dans l'équipe (Match Details) : alimenter **au moment** où ça soigne tout le monde utilement (fin de chase, pas au milieu d'un soin).
- Suspicion de NOED / Terminus / No Way Out : choisir le moment où l'équipe est en position (près des portes, pas en chase).

**Quand ne pas tenir le 99** (SITUATIONAL) :
- Le tueur est **sur** le gen ou arrive : un kick fait −5 % (99 → 94 %) puis régression ; il faut ensuite **réparer 5 %** pour stopper la régression (FACT). Le 99 devient un 90.
- **Hex: Ruin** actif : un gen non réparé régresse seul (lot 3) ; un 99 non tenu fond.
- **Heresy (The Judgment)** : un skill check Good fait −3 % (FACT audit) : un hérétique ne doit pas tenir un 99.
- **Tout le monde est sain et libre** : chaque seconde de 99 est une seconde où le tueur peut trouver quelqu'un. Alimenter et ouvrir.

**Technique** : à 99 %, un survivant **reste à côté** (pas dessus) ; le finir coûte ~1 s solo (0,9 c). Risque : les skill checks ne sont pas maîtrisables (8 % de chance par seconde de réparation, FACT) ; relâcher à 97-98 % laisse une marge.

### 6.2 Portes et gate camp

- **FACT (audit)** : ouverture **20 s**, progression **conservée** ; ouverture par le tueur 0,75 s (UNCERTAIN, non recoupé). Blocages de l'Entité : Blood Warden 40/50/60 s (une fois) ; No Way Out 12 s + 6/9/12 s par jeton (STRONG_SECONDARY). Remember Me : allongement par jeton, valeurs UNCERTAIN (lot 3).
- **Répartition** (HEURISTIC) : une porte par survivant libre, **la plus éloignée du tueur** d'abord. Deux portes ouvertes à la fois forcent le tueur à choisir.
- **Gate camp** (tueur qui patrouille entre les portes ou se poste à une porte) : ouvrir la porte qu'il ne regarde pas ; **lâcher** l'interrupteur quand il arrive (la progression est conservée) plutôt que de prendre un coup à 18/20 s ; revenir quand il repart. Contre un tueur qui arrive, ne pas lâcher à 95 % si l'on sait finir avant son arrivée : 1 s restante vaut mieux qu'un nouvel aller-retour.
- **Contre No Way Out** : le premier contact avec un interrupteur fait du bruit et bloque les deux interrupteurs : **toucher l'interrupteur quand le tueur est loin et occupé**, puis attendre à distance, pas collé.
- **Contre Blood Warden** : une fois une porte ouverte, **ne pas se faire accrocher** : un accrochage bloque les deux portes 40-60 s (FACT). Les auras dans les zones de sortie sont révélées : ne pas traîner dans la sortie.
- **Contre The Judgment** : **45 s dans le seuil d'une porte = Heresy** ; porte bloquée 8 s pour l'hérétique si la Heresy est acquise à < 32 m d'une porte (FACT audit). Ne pas attendre dans la porte.
- **Sortir** : le « t-bag » et l'attente dans la sortie donnent de l'information et, contre Judgment, la Heresy. Attendre à la porte n'a de valeur que pour un **save** prévu (EGC, protection hit sur un allié qui arrive).

### 6.3 La trappe

- **FACT (audit, STRONG_SECONDARY)** : la trappe **s'ouvre automatiquement quand il ne reste qu'un survivant** ; son aura est **visible de lui seul** (5.3.0) ; clé : 2,5 s ; **fermée par le tueur → EGC** ; se **referme après chaque évasion** (8.1.0).
- Emplacement : procédural (fixe vs RNG par carte : lot 8). Left Behind montre son aura (valeurs UNCERTAIN, lot 2).
- **Dernier survivant, gens restants** : deux options (HEURISTIC) :
  1. **Trappe** : se déplacer furtivement vers l'aura, ne pas courir (griffures) si le tueur est proche.
  2. **Portes** : seulement si les gens sont presque finis **et** qu'on sait où est le tueur ; sinon, finir un gen seul prend 90 s.
- **Standoff de trappe** (tueur et survivant près de la trappe) :
  - Le tueur **ne voit pas l'aura** de la trappe (FACT) ; s'il est déjà dessus, c'est qu'il l'a trouvée (bruit, repère, suivi).
  - Si le tueur la ferme, l'EGC démarre (120 s) : il faut atteindre une porte et l'ouvrir en **20 s**. Le tueur ne peut garder qu'une porte à la fois (HEURISTIC) : aller à celle qui est **opposée à sa position** au moment de la fermeture.
  - Le survivant n'a aucun moyen de « forcer » le passage d'un tueur collé : le temps de saut dans la trappe n'est pas dans l'audit (NV). **HEURISTIC** : ne pas se montrer ; attendre que le tueur quitte l'axe (il doit aussi garder les portes s'il craint un gen) ; si le tueur tourne autour de la trappe, se préparer à la fermeture et **pré-positionner** sa route vers la porte la plus éloignée.
  - **Clé** : peut rouvrir une trappe fermée selon le seed (Dull/Skeleton) : UNCERTAIN (non vérifié par l'audit) ; conditions précises NV.
- **Erreur typique** : courir vers la trappe devant le tueur ; il n'a qu'à la fermer ou vous couper la route.

### 6.4 EGC et fins à 2 survivants

- **FACT (audit)** : EGC 120 s, déclenché par l'ouverture d'une porte **ou** la fermeture de la trappe ; **moitié de vitesse** si un survivant est au sol, accroché ou en cage (max 4 min) ; **jamais arrêté** ; gens restants bloqués.
- **Conséquences** (HEURISTIC) :
  - Un allié accroché pendant l'EGC **ralentit le timer** : il reste du temps pour un sauvetage, mais la phase de crochet (70 s) continue de courir.
  - Pas de gen possible : la seule sortie est la porte (ou la trappe avant sa fermeture).
- **Fin à 2 survivants** (FACT audit) : auto-décrochage possible (4 %) ; 2 skill checks de lutte manqués = sacrifice ; **tous les survivants restants accrochés en même temps = sacrifice** ; **Mori** possible si l'un est en Struggle et l'autre au sol. Donc :
  - **Ne jamais se faire mettre au sol près d'un allié accroché en phase Struggle** quand vous êtes 2 : le tueur peut vous mori (catastrophique).
  - Tenter le sauvetage **seulement** si le tueur est engagé ailleurs ou loin ; sinon la trappe ne s'ouvrira que quand l'autre mourra (à 1 survivant).
  - Ce dilemme est **moral autant que stratégique** : jouer la trappe quand le sauvetage est impossible n'est pas « égoïste » (EXPERT OPINION non sourcée).

---
## 7. Arbres de décision (format §32)

> Les arbres sont des **HEURISTIC**. Ils ordonnent les questions ; ils ne remplacent pas le jugement. Chaque feuille donne une **action par défaut** et sa **principale exception**. Les branches `[SoloQ]` et `[SWF]` sont séparées.

### 7.1 CROCHET — un allié vient d'être accroché

```
HOOK → Le tueur quitte-t-il la zone du crochet (> 16 m et s'éloigne) ?
│
├─ OUI, il part
│   ├─ Suis-je le sauveteur le plus pertinent ?
│   │   [SoloQ] Portraits + Kindred : quelqu'un va-t-il déjà vers le crochet ?
│   │       ├─ Oui, plus proche que moi → je reste sur mon gen.
│   │       ├─ Oui, mais plus loin → j'y vais si je suis sain ; sinon je laisse.
│   │       └─ Aucun signe après ~15-20 s → j'y vais (décision robuste, §3.5).
│   │   [SWF] Le shot-caller désigne ; le sauveteur annonce l'ETA ; les autres ne bougent pas.
│   ├─ Trajet < temps restant de la phase (70 s) ?
│   │   ├─ Oui → décrocher dès l'arrivée si le TR est absent (le tueur engagé ailleurs est le meilleur moment).
│   │   └─ Non → quelqu'un d'autre doit y aller, ou l'allié passera en phase 2 : l'accepter si le gen en cours va tomber.
│   └─ Après le décrochage : l'allié part à l'opposé du tueur, CASSE LA LOS pendant les 10 s d'Elusive ;
│       soin loin du crochet (§7.2).
│
└─ NON, il reste (face camp < 16 m OU proxy camp 16-30 m)
    ├─ Distance du tueur au crochet ?
    │   ├─ < ~10 m, immobile (face camp) → ne PAS entrer dans les 16 m (ralentit l'anti-camp, FACT).
    │   │   Gens à fond. Réévaluer : la jauge monte ×2 après 10 s, ×4 après 20 s de présence.
    │   │   EXCEPTION : portes alimentées → anti-camp coupé (FACT) → voir 7.6.
    │   └─ 16-30 m (proxy) → l'anti-camp ne remplit RIEN (FACT). Il faut une décision :
    │       ├─ Hook stage de l'accroché ?
    │       │   ├─ Phase 1, > 30 s restantes → attendre qu'il s'engage (chase, kick lointain). Gens hors de sa zone.
    │       │   ├─ Phase 1, < ~15 s restantes → décrocher maintenant (trade accepté) SI sauveteur sain,
    │       │   │   0-1 crochet, ressource de chase proche. Sinon, laisser passer en phase 2.
    │       │   └─ Phase 2 (Struggle) → dernière chance : sauvetage prioritaire si > 2 survivants ;
    │       │       à 2 survivants, voir 6.4 (Mori, sacrifice si tous accrochés).
    │       ├─ Pouvoir du tueur ?
    │       │   ├─ Coup unique / ranged prêt (Hillbilly, Huntress, Deathslinger…) → le trade coûte 2 états : attendre.
    │       │   └─ M1 pur, pouvoir en cooldown → le trade est plus jouable.
    │       ├─ États des survivants ?
    │       │   ├─ Sauveteur blessé → ne pas trader (2 au sol / crochet enchaîné).
    │       │   └─ Plusieurs blessés dans l'équipe → le tueur récupère la pression après le trade : prudence.
    │       └─ Gens restants ?
    │           ├─ ≥ 3 → le camp du tueur est un cadeau : maximiser les gens loin de lui.
    │           └─ 1 → finir le gen PEUT être meilleur que sauver, SAUF que l'alimentation coupe l'anti-camp :
    │                 voir 99 (§6.1).
    │
    └─ Contre-indications spéciales :
        • Sous-sol : crochets insabotables (FACT) → sauvetage plus long, attendre que le tueur parte loin.
        • The Judgment (Exile) : pas de crochet → pas de protections de perks (FACT) ; route par les sanctuaires.
        • Grim Embrace / Pain Res suspectés (lot 3) : le sauvetage peut déclencher le ralentissement, le coût reste faible.
```

**Erreurs typiques** : deux sauveteurs (SoloQ) ; décrocher devant un tueur au pouvoir prêt ; rester dans les 16 m pendant un face camp ; « le plus proche décroche toujours » (règle absolue du seed : ignore la santé du sauveteur et le hook stage).

### 7.2 SOIN

```
Je suis blessé (ou un allié l'est) → Le tueur est-il proche (TR, chase en cours près de nous) ?
├─ OUI → pas de soin. Partir ; soin interrompu conservé (sauf Haemorrhage −7 %/s, FACT).
└─ NON → Le tueur a-t-il un coup unique fréquent ou une blessure à distance / statut ?
    ├─ Coup unique (Hillbilly, Cannibal, Oni Fury, Shape EI…) → soin peu rentable ; gens.
    ├─ Blessure à distance / statut (Legion, Plague, Trickster…) → ne pas soigner par réflexe ;
    │     soigner si l'on va prendre une chase bientôt (le meilleur looper), sinon gens.
    └─ M1 standard → Deep Wound ?
        ├─ Oui → mender d'abord (10 s seul / 6 s par un allié, FACT) : sinon mise au sol à la fin du timer.
        └─ Non → Combien de gens restent ?
            ├─ 1 gen ET Adrenaline dans l'équipe (Match Details) → le porteur ne se soigne pas.
            │     (Exception : Terminus suspecté → Broken → Adrenaline ne soigne pas.)
            ├─ Gen en cours > ~70 % et tueur loin → finir d'abord.
            └─ Sinon → Qui soigne ?
                ├─ Allié disponible à < ~10 s de trajet → soin altruiste (32 s-surv).
                ├─ Med-Kit → auto-soin (~24 s CALC) loin des gens occupés.
                └─ Rien → rester blessé et réparer ; Self-Care si porté (valeurs UNCERTAIN).
    [SoloQ] Un allié blessé vient vers moi : vérifier le TR avant d'arrêter mon gen.
    [SWF] Annoncer « je reste blessé » évite qu'un allié quitte son gen pour rien.
```

### 7.3 GEN — continuer, lâcher, tenir à 99

```
Je répare → Un signal de menace arrive (TR, chase qui approche, alerte de perk) ?
├─ NON → continuer. Skill checks : viser Great (+1 %) sans risquer le raté (−10 %, 3 s).
└─ OUI → Temps pour finir (charges restantes / débit) < temps d'arrivée estimé − 2 s ?
    ├─ OUI → finir (un gen fini ne peut pas être frappé).
    └─ NON → Suis-je furtif ici (pas vu, tueur sans info) ?
        ├─ OUI → lâcher MAINTENANT, marcher hors LOS (pas de griffures), revenir après son passage.
        │     Après un kick, revenir vite : il faut 5 % (4,5 s solo) pour stopper la régression.
        └─ NON (il m'a vu) → partir vers une ressource de chase, loin des autres réparateurs.
    Cas particuliers :
    • C'est le dernier gen ? → 99 si allié accroché / tueur au crochet / endgame perks suspectés (§6.1),
      SAUF Ruin actif, hérétique (Judgment), ou tueur en approche directe (le kick transforme 99 en ~90).
    • Gen de 3-gen ? → le gen du triangle vaut plus qu'un gen extérieur : accepter plus de risque (§2.2).
    • Deux sur le gen ? → le plus faible en chase part le premier ; l'autre finit si c'est possible.
    • Gen frappé 4+ fois (pointes) ? → au 8e event, le tueur ne peut plus le frapper (FACT) : bon gen pour la fin.
    [SoloQ] Ne pas supposer qu'un autre reviendra sur un gen lâché.
    [SWF] Annoncer « gen X à 60, lâché » pour que quelqu'un le reprenne.
```

### 7.4 TOTEM

```
Je vois un totem → Est-il allumé (Hex) ?
├─ OUI (Hex) → L'Hex change-t-il les décisions de l'équipe maintenant ?
│   ├─ OUI (Ruin : gens qui fondent ; Hex d'endgame ; Hex de chase qui fait perdre des chases)
│   │     → purifier (14 s) si le tueur est loin ; ou bénir en Boon (28 s sur un Hex, FACT) si l'équipe
│   │       en tire profit (Boons dans le loadout visible en Match Details).
│   └─ NON / effet faible → purifier en passant quand c'est sûr ; ne pas traverser la carte pour 14 s.
│   (Le seed disait « purifiez un Hex dès qu'il s'allume » : règle absolue relevée par l'audit.
│    Un Hex protégé ou gardé par le tueur peut coûter une chase ; comparer 14 s + trajet au gain.)
└─ NON (terne) → Quelle phase de la partie ?
    ├─ Début / milieu → en général ne pas purifier : 5 totems × 14 s = 70 s ≈ 0,8 gen (CALC).
    │     Exception : l'équipe veut un totem pour un Boon (un seul totem béni par survivant) → le garder.
    ├─ Fin (1-2 gens) et suspicion de NOED → purifier ceux qu'on croise sans détour.
    │     (NOED : aura du totem visible par les survivants dans un rayon qui grandit : valeurs UNCERTAIN.)
    └─ Totem près d'un gen ou d'une porte → le purifier en passant peut valoir 14 s.
    [SoloQ] Ne pas compter sur les autres pour les ternes ; en fin de partie, en purifier 1-2 sur la route.
    [SWF] Désigner un « chasseur de totems » seulement si le tueur a montré un Hex ou si l'équipe est en avance.
```

### 7.5 SLUG

```
Un allié est au sol → Où est le tueur ?
├─ À côté de l'allié / en vue → NE PAS y aller. Rester hors de vue. Il cherche la 2e cible.
├─ En chase avec quelqu'un d'autre → j'y vais SEUL si je suis le plus proche ;
│     l'allié a récupéré jusqu'à 95 % en 30,4 s (FACT) : le relevage restant est plus court (durée NV).
└─ Inconnu → Knock Out possible (aura de mourant invisible au-delà de 16-32 m) ?
    ├─ Je ne vois pas l'allié → ne pas partir à l'aveugle ; chercher un indice (portrait, dernier bruit).
    └─ Je le vois → approche prudente, relevage si TR absent.
Plusieurs au sol ?
├─ Je suis le dernier debout → éviter à tout prix la chase. Relever si le tueur s'éloigne ;
│     sinon, trappe (s'il ne reste plus que moi après les morts) ou attendre qu'il accroche.
└─ Deux debout → un relève, l'autre ne s'approche pas (ou fait diversion loin).
Je suis au sol ?
├─ Ramper vers un allié / une couverture, pas vers un gen occupé.
├─ Perk de relève (Unbreakable 1×/épreuve sur mise au sol par le tueur ; Exponential 24 m) → la garder
│     pour quand le tueur s'éloigne.
└─ Abandon (3e passage au sol après 2 relevages/soins) / Surrender (tous au sol) : options de fin, pas des stratégies.
    [SoloQ] Supposer qu'un allié viendra probablement, et ramper vers lui plutôt que d'attendre.
    [SWF] Annoncer « tueur à côté, ne venez pas » ou « il est parti, relève-moi ».
```

### 7.6 ENDGAME

```
Tous les gens finis ? 
├─ NON, 1 gen restant → 99 ou alimenter ? (§6.1)
│   ├─ Allié accroché + tueur près du crochet → 99 (sinon anti-camp coupé, Elusive perdue, WTL désactivé).
│   ├─ Blessés + Adrenaline dans l'équipe → alimenter au bon moment (hors chase, équipe en position).
│   └─ Ruin / hérétique / tueur qui arrive sur le gen → finir tout de suite.
└─ OUI, portes alimentées →
    ├─ Allié accroché ?
    │   ├─ Anti-camp COUPÉ (FACT) : le tueur peut camper sans pénalité.
    │   ├─ Ouvrir d'abord une porte à 99 % (ou l'ouvrir entièrement : l'EGC démarre) ?
    │   │   ├─ Ouvrir entièrement → EGC 120 s (ralenti de moitié tant qu'un survivant est accroché, FACT).
    │   │   └─ Laisser à ~90 % → pas d'EGC, mais porte à finir sous pression plus tard.
    │   ├─ Sauvetage : seulement avec un plan (protection hit, distraction) ; Endurance + Haste 10 s restent,
    │   │   PAS d'Elusive (FACT) ; Blood Warden possible si une porte est déjà ouverte.
    │   └─ À 2 survivants : Mori possible si l'accroché est en Struggle et le sauveteur tombe (FACT) → prudence maximale.
    ├─ Tueur à une porte (gate camp) → ouvrir l'autre ; lâcher un interrupteur quand il arrive (progression gardée).
    ├─ No Way Out suspecté → toucher l'interrupteur quand il est loin ; attendre le déblocage à distance.
    ├─ NOED (Exposed) → ne pas prendre de coup gratuit ; un joueur cherche le totem, les autres ouvrent.
    └─ Porte ouverte → sortir sauf plan précis (save). Pas d'attente dans le seuil (Judgment : 45 s = Heresy).
Dernier survivant ?
├─ Gens restants → trappe (aura visible de vous seul, FACT) ; marcher près du tueur.
├─ Trappe fermée par le tueur → EGC : porte la plus éloignée de lui, 20 s d'ouverture.
└─ Standoff → ne pas se montrer ; pré-positionner sa route vers la porte opposée ; clé : UNCERTAIN.
    [SoloQ] Supposer que les autres ouvrent la porte la plus proche d'eux : prendre l'autre.
    [SWF] Plan explicite : « A ouvre nord, B sud, C sauve ».
```

---
