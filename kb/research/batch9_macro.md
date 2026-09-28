# Lot 9 — Macro survivant, SoloQ vs SWF, game sense, états de partie, fin de partie

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) — voir kb/audit/pass14_lot9_macro.md**
> Référence de version : **LIVE 10.1.2a** (17/09/2026). **PTB 10.2.0 ≠ LIVE** (Survivor Intent System, refonte Abandon/Surrender : PTB uniquement).
> **Périmètre : mode 1v4 uniquement.** Le mode **2v8** (13 gens présents / 8 requis, statut Revealed, deux tueurs : FACT audit STRONG_SECONDARY) a une macro différente et **n'est pas traité ici** ; aucun conseil de ce fichier ne doit y être transposé sans vérification.
> Mission couverte : §12 (macro), §13 (SoloQ vs SWF), §15 (game sense), §16 (états de partie), fin de partie (taxonomie T-J, T-K, T-M, T-N, T-O, T-Q02 à T-Q07), avec exemples au format §31 et arbres au format §32.
> Sources : **uniquement** `kb/seed/audit_phase0.txt` (chiffres FACT), le seed (critiqué), `kb/research/batch2_*`, `batch3_*`, `batch4_*` (exemples). Aucune recherche web, aucune VOD, aucun expert cité.

## 0. Légende et conventions

| Étiquette | Sens dans ce fichier |
|---|---|
| **FACT (audit, <confiance>)** | Valeur de la « Référence vérifiée » ou du registre de patchs de l'audit phase 0. Seuls chiffres présentés comme faits. |
| **CALC** | Arithmétique faite ici **sur des valeurs de l'audit**. Le calcul est sûr ; les hypothèses ajoutées (trajets, distances) sont UNCERTAIN et signalées comme telles. |
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
- **« Gens restants » = gens encore à réparer** pour alimenter les portes (5 requis en 1v4). Ne pas confondre avec les **gens encore présents sur la carte** : 7 − gens finis, soit **gens restants + 2** tant que 4 survivants ont commencé la partie (FACT audit : 7 présents / 5 requis, STRONG_SECONDARY). Exemple : « 3 gens restants » = 2 finis, **5** gens non réparés sur la carte ; « 1 gen restant » = 4 finis, **3** gens sur la carte.
- **3-gen (sens courant)** : les **3 derniers gens présents sur la carte** (donc 4 gens finis, 1 seul à faire) sont assez proches pour que le tueur les défende en marchant. On le **prépare** (ou on l'évite) bien avant : dès 4-3 gens restants, la question est « quels 3 gens resteront sur la carte ? ».

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
| Portage | 3,68 m/s (**UNCERTAIN** : l'audit classe explicitement la vitesse de portage et la durée du ramassage « information non suffisamment vérifiée » ; batch6/batch11 l'étiquettent à tort SS) ; wiggle 16 s cumulées | UNCERTAIN (vitesse) / STRONG_SECONDARY (wiggle) |
| Soin d'un état | 16 s (16 charges) ; Mangled +25 % de durée | STRONG_SECONDARY |
| Auto-soin au Med-Kit | vitesse −33 %, efficacité de l'objet −33 % | STRONG_SECONDARY |
| Deep Wound | timer 20 s ; mending 10 s seul / 6 s par un allié | VERIFIED_PRIMARY |
| Bleed-out | 240 s cumulées | STRONG_SECONDARY |
| Récupération au sol | auto, plafond 95 %, **30,4 s** ; le wiki précise qu'elle se fait **« à l'arrêt »** (ramper la suspend probablement : précision STRONG_SECONDARY, à tester) ; **aucune auto-relève basekit** | VERIFIED_MULTI_SOURCE / VERIFIED_PRIMARY |
| Totem | purification 14 s ; Boon 14 s (28 s sur un Hex), rayon 24 m ; le tueur éteint un Boon en 1 s | STRONG_SECONDARY |
| Porte | ouverture 20 s, progression conservée | STRONG_SECONDARY |
| EGC | 120 s ; moitié de vitesse si un survivant est au sol / accroché / en cage (max 4 min) ; jamais arrêté ; gens bloqués | STRONG_SECONDARY |
| Vitesses | survivant 4,0 m/s ; tueurs 4,6 ou 4,4 m/s « à quelques exceptions près » (Nurse 3,85 ; Blight 4,4 depuis 9.6.0) | VERIFIED_MULTI_SOURCE (classes) / VERIFIED_PRIMARY (Blight) / STRONG_SECONDARY (Nurse) |

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
| Portage vers un crochet à 30 m | 30 / 3,68 + 1,5 | **≈ 9,7 s** + durée du ramassage (non vérifiée) — vitesse 3,68 m/s et distance UNCERTAIN : ordre de grandeur seulement |
| Fenêtre pour sauver avant la phase 2 | 1re phase | **70 s** après l'accrochage |
| Rayon où peut se trouver un tueur invisible depuis t secondes | 4,6 × t | 10 s → 46 m ; 20 s → 92 m (borne haute, ligne droite) |

> **HEURISTIC centrale** : une décision macro se juge à son **solde en s-surv** : « combien de secondes de réparation parallèle je crée ou je protège » moins « combien j'en consomme ou j'en offre au tueur ». Une chase finie par un crochet peut être très rentable si 3 réparateurs ont travaillé pendant ce temps (mission §14).

### 1.3 Le « tableau de course » (HEURISTIC)

- Les survivants doivent produire **450 s-surv utiles** de réparation (moins avec toolbox, Great, perks ; plus avec régression, blocages, skill checks ratés).
- Le tueur doit produire **12 événements de crochet** pour 4 kills (3 par survivant ; le 3e accrochage tue : FACT audit) — ou moins s'il laisse des phases expirer (chaque phase dure 70 s), s'il exile (The Judgment : l'Exile compte comme un état de crochet, FACT audit VERIFIED_PRIMARY), ou via les fins hors crochet : bleed-out (240 s), EGC expiré, Mori de fin et règles à 2 survivants (tous accrochés = sacrifice ; 2 checks de lutte manqués = sacrifice) — FACT audit, voir §6.4.
- **Indicateur de course** (HEURISTIC, seuils arbitraires, à calibrer par la pratique) : comparer `gens finis / 5` et `états de crochet / 12`. Un écart ≥ 0,25 en faveur du tueur (ex. 1 gen pour 6 états de crochet → 0,2 vs 0,5) signale une partie qui bascule ; au-delà de 0,4 on passe en mode « limiter la casse » (sécuriser 1-2 évasions, trappe).
- Limite de l'indicateur : il ignore la **répartition** des crochets. 6 états répartis 2-2-1-1 ne valent pas 6 états concentrés 3-2-1 (1 mort = −1 survivant définitif, soit −25 % des survivants et −33 % de réparateurs parallèles quand un survivant est en chase : 3 → 2). C'est pourquoi le tunneling est rentable pour le tueur.

---
## 2. Macro survivant (§12)

### 2.1 Efficacité des gens : un par personne, sauf exceptions chiffrées

**FACT (audit, STRONG_SECONDARY)** : la pénalité coop fait passer le coût d'un gen de 90 s-surv (solo) à 105,9 (à 2), 128,6 (à 3) et 163,6 (à 4) s-surv.

- **Pourquoi réparer seul par défaut** (HEURISTIC) : à 4 sur un gen, l'équipe « brûle » ~74 s-surv de plus qu'en solo, presque un gen entier. Surtout, un tueur qui trouve 2+ survivants groupés a un **deuxième blessé gratuit** : le coût réel du groupement est la chase suivante, pas seulement les 16-74 s-surv.
- **Quand réparer à deux est correct** (SITUATIONAL) :
  1. **Finir vite un gen proche de la fin** quand le tueur arrive : un gen à 80 % (18 c restantes) se finit en ~18 s seul, **~10,6 s à 2**. Un gen fini ne peut plus être frappé : on convertit du risque en acquis.
  2. **Perks qui compensent** (Prove Thyself, etc. : valeurs lot 2, UNCERTAIN) et soumises aux DR depuis 9.6.0 (FACT audit, VERIFIED_PRIMARY). Ne pas supposer qu'elles annulent la pénalité : vérifier le compte.
  3. **Casser un 3-gen** (SITUATIONAL, deux options qui ne s'excluent pas) : (a) **duo sur le gen le plus avancé** du triangle quand le tueur est engagé en chase loin de lui (finir vite avant son retour) ; (b) **split sur deux gens différents** (§2.9) quand le tueur patrouille et frappe : il ne peut en défendre qu'un à la fois. Le choix dépend de la position du tueur et de l'avance des gens, pas d'une règle fixe.
  4. **Gens restants = 1** et tout le monde est libre : le temps mural (horloge) compte plus que le rendement, car chaque seconde de fin de partie est une seconde où le tueur peut accrocher avant l'alimentation.
- **Contre quoi le groupement est pire** (HEURISTIC) : tueurs à dégâts de zone ou multi-cibles (Legion, Plague, Trickster, Huntress sur cibles alignées : lot 4), perks d'aura autour du gen frappé (**Nowhere to Hide : auras à 24 m du gen frappé pendant 3/4/5 s**, LIVE 10.1.0, VERIFIED_PRIMARY via lot 3).
- **Risque** : le solo étale les survivants, donc un crochet coûte plus de trajet au sauveteur. **Alternative** : dispersion « en grappe » (gens proches les uns des autres, un survivant par gen), qui garde les trajets courts et le 3-gen sous contrôle.

### 2.2 Dispersion et configurations dangereuses (3-gen)

- **Définition** : un 3-gen est une fin de partie où les **3 derniers gens présents sur la carte** (4 gens finis, 1 seul à faire : voir §0) sont assez proches pour qu'un tueur les défende tous en marchant. Ce n'est pas une mécanique mais une **géométrie** (EXPERT OPINION non sourcée). Il se décide donc **avant** : à 3 gens restants, il y a encore 5 gens sur la carte, et le choix des 2 prochains gens finis fixe le triangle final.
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
- **Quand le refuser** (HEURISTIC) : sauveteur blessé, sauveteur lui-même à 2 crochets, dead zone autour du crochet, tueur à coup unique prêt (Hillbilly, Cannibal, Oni en Blood Fury : lot 4 ; Shape en Evil Incarnate / Slaughtering Strike : mise au sol d'un sain **UNCERTAIN**, lot 4 [SEED-NRV]), ou quand l'accroché a encore > 20 s de phase et que le tueur risque de partir.
- **Ce que coûte vraiment un trade raté** (FACT + HEURISTIC) : le décroché a Endurance (un coup → Deep Wound, pas la mise au sol) ; le pire cas n'est donc pas « 2 états de crochet » d'office, mais : sauveteur blessé (ou au sol s'il était blessé) + décroché remis au sol après un 2e coup. Compter les états réellement offerts, pas le nombre de survivants touchés.
- **Saves** (flash save, pallet save, sabotage, body block) : techniques détaillées au **lot 5** (NOT_STARTED). Côté macro :
  - Un save réussi économise **un état de crochet complet** (le plus grand gain possible pour un seul geste) ; un save raté coûte le temps de 2 survivants et donne souvent 2 blessés (HEURISTIC).
  - **SoloQ** : un seul tentateur, et seulement s'il était déjà là (pas de traversée de carte pour une lampe).
  - **SWF** : annoncer « je suis sur le save » ; les autres **ne viennent pas**.
  - Le sabotage : sabotage 3 s, réparation auto 30 s ; les **4 crochets du sous-sol sont insabotables** (FACT audit, STRONG_SECONDARY). Après un sacrifice, le crochet détruit **réapparaît 60 s plus tard** (8.1.0, FACT audit STRONG_SECONDARY) : la géographie des crochets change en cours de partie, ce qui modifie les distances de portage (et donc l'intérêt d'un sabotage) pendant une minute.

### 2.6 Camping et proxy camp — corriger le seed

**FACT (audit)** sur l'anti-camp (Resolve) :
- Zone : **rayon de 16 m** autour du crochet (VERIFIED_MULTI_SOURCE). Poids par distance : 4 m ×2,5 ; 10 m ×1 ; 15 m ×0,375 ; **16 m ×0** (STRONG_SECONDARY).
- Durée de présence : 0-10 s **×1**, 10-20 s **×2**, > 20 s **×4** ; taux de base réduit en contrepartie (~50 %, non retrouvé en source primaire : CONFLICT-003, UNCERTAIN) ; le multiplicateur revient à zéro au décrochage (VERIFIED_PRIMARY, 9.3.0).
- **Grâce de 7 s** : pause de la jauge pour **tous** les survivants accrochés à chaque nouvel accrochage (VERIFIED_PRIMARY, 9.3.0).
- **Ralentie** par les autres survivants à < 16 m ; **en pause** si le tueur porte un survivant ; **désactivée dès que les portes sont alimentées** ; jauge pleine = tentative d'auto-décrochage garantie (STRONG_SECONDARY).

**Correction du seed** (audit A-283) : « contre un proxy camp, l'anti-camp décrochera l'allié » est **FAUX**. Au-delà de 16 m, la jauge **ne se remplit pas du tout**. Le temps de remplissage exact d'un face camp n'est **pas calculable** faute de taux de base fiable (le seed « inutile au-delà d'environ 20 s » : UNCERTAIN).

Conséquences décisionnelles (HEURISTIC) :
1. **Face camp (tueur à < ~10 m, immobile)** : la jauge monte de plus en plus vite (×2 après 10 s, ×4 après 20 s de présence). **Ne restez pas dans les 16 m** : votre présence **ralentit** la jauge (FACT) et vous offre en cible. Réparez. Réévaluez si le tueur reste plus d'environ 20-30 s (UNCERTAIN) : la jauge finira par libérer l'allié ou le tueur perd énormément de temps.
   - **Zone grise 10-16 m** (tueur qui tourne autour du crochet sans être collé) : la jauge se remplit, mais **lentement** (poids ×1 à 10 m, ×0,375 à 15 m, ×0 à 16 m : FACT STRONG_SECONDARY). Un tueur qui oscille à 12-15 m tire l'essentiel du bénéfice d'un face camp en ne payant presque pas l'anti-camp : **le traiter comme un proxy camp** (point 2), pas comme un face camp que le système va résoudre.
   - **Perks qui changent la décision** (valeurs lot 2, WEB, STRONG_SECONDARY au mieux) : **Deliverance** (auto-décrochage 1×/partie après un décrochage sûr d'un allié ; Broken 160/140/120 s, 10.1.0 VERIFIED_PRIMARY), **Reassurance** (à ≤ 6 m de l'accroché, pause du sacrifice 20/25/30 s : elle achète du temps mais **impose d'entrer à 6 m**, donc dans la zone qui ralentit l'anti-camp et vous expose). Vérifier Match Details avant de décider.
2. **Proxy camp (tueur à 16-30 m, patrouille entre crochet et gens proches)** : **aucune aide de l'anti-camp**. Il faut une vraie décision de sauvetage (arbre §7.1). Les gens **éloignés** du crochet sont gratuits ; les gens dans la zone de patrouille sont pièges.
3. **Portes alimentées** : l'anti-camp est **coupé** (FACT). Un camp de fin de partie est donc « légitime » mécaniquement : ne comptez plus sur le système (voir §6 et situation §31-C).
4. **Coût pour le tueur** (CALC) : chaque seconde de camp immobile = 0 pression ailleurs ; si 3 survivants réparent des gens hors de sa zone, il leur cède **3 s-surv par seconde**. Un camp de 60 s = ~2 gens de progression pour l'équipe. **Contre-cas** : si l'accroché est en phase 2 (mort à la fin) ou si c'est le dernier crochet d'une partie déjà gagnée pour le tueur, le camp est rentable pour lui (SITUATIONAL).

### 2.7 Tunneling

**FACT (audit, VERIFIED_PRIMARY, 10.1.0)** : protections de décrochage = **Endurance + 10 % de Haste pendant 10 s + Elusive 10 s**. **Elusive ne s'applique pas une fois tous les gens réparés** ; Endurance et Haste **restent** après l'alimentation (correction du seed, A-074). Endurance annulée par toute **action voyante** (réparer, soigner…), STRONG_SECONDARY. Elusive prend fin si le survivant est frappé ou passe au sol ; son annulation par une action voyante n'est pas documentée (UNCERTAIN). Aucun système anti-tunnel plus lourd n'est LIVE (PTB 9.2.0 reporté, PTB 9.3.0 reverted, FACT).

Perks liées (valeurs lot 2 / audit) : **Will to Live** stun 4 s, actif 40/50/60 s après un décrochage, désactivé portes alimentées (STRONG_SECONDARY) ; **réparer ou soigner la coupe** (PERK_DATABASE §4.6, lot 2, STRONG_SECONDARY au mieux) — l'utiliser, c'est accepter de ne rien faire d'utile pendant la fenêtre ; **Off the Record** 30/35/40 s avec Endurance (STRONG_SECONDARY via notes 9.2.2) ; **Babysitter** (+10 % Haste, pas de traces 20/25/30 s, STRONG_SECONDARY lot 2) ; **Borrowed Time** LIVE : UNCERTAIN (rework PTB 10.2.0 seulement).

Décisions (HEURISTIC) :
- **Vous êtes décroché et le tueur revient** : les 10 s d'Elusive + Haste sont votre fenêtre pour **casser la ligne de vue et changer de direction**, pas pour courir tout droit (le tueur ne voit ni traces ni aura, mais il vous voit si vous restez dans son champ). N'effectuez **aucune action voyante** pendant l'Endurance (FACT : elle serait perdue). Allez vers des tiles, pas vers un gen.
- **Un allié est tunnelé** : l'équipe **répare en priorité**. Le tueur investit toute sa chase sur une cible déjà « payée ». Un seul survivant sain peut prendre un protection hit s'il est déjà proche (SoloQ) ou si c'est son rôle (SWF).
- **Risque** : si le tunnel réussit vite (< ~30 s par chase, UNCERTAIN), l'équipe passe à 3 réparateurs très tôt. **Alternative** : quand le tunnel est certain et rapide, le sauveteur peut **retarder** le décrochage jusqu'à ce que le tueur s'engage ailleurs (voir §7.1), quitte à perdre ~10-20 s de phase.
- **Contre The Judgment** : l'Exile compte comme un état de crochet **sans déclencher les perks de crochet** (FACT audit) ; Off the Record / Will to Live / Babysitter ne s'activent pas. L'application des protections basekit à une libération d'Exile n'est pas vérifiée (lot 4 : jouer comme si elles ne s'appliquaient pas). En revanche, les survivants libérés de l'Exil **réapparaissent à ≥ 32 m** (10.1.2, FACT audit) et chaque Exiled Soul ajoute +0,5 s aux protections de décrochage (10 max, 10.1.0, VERIFIED_PRIMARY) : la libération n'a pas la géographie d'un décrochage (le sauveteur ne peut pas couvrir l'exilé : lot 4, HEURISTIC), il faut replanifier la route vers un gen ou un tile depuis le point de réapparition.

### 2.8 Slugging

**FACT (audit)** : récupération au sol **automatique**, plafond **95 %** en **30,4 s** (VERIFIED_MULTI_SOURCE) ; **aucune auto-relève basekit LIVE** (PTB 9.2.0 / 9.3.0 annulés, VERIFIED_PRIMARY) ; bleed-out 240 s ; rampement 0,7 m/s (1,05 m/s : UNCERTAIN, CONFLICT-002) ; **Abandon** possible au 3e passage au sol après avoir été relevé ou soigné 2 fois (9.2.0) ; **Surrender** quand tous les survivants sont au sol (8.6.0) ; refonte au PTB 10.2.0 (non LIVE). Relevage complet seul uniquement via perk (Unbreakable : une fois par épreuve, sur une mise au sol par le tueur, 9.5.0 ; Boon: Exponential dans 24 m, lot 2).

Décisions (HEURISTIC) :
- **Pourquoi le tueur slug** : relever coûte du temps aux survivants (le relevage d'un mourant n'est pas dans l'audit : NV, à mesurer) et attire un sauveteur qu'il peut mettre au sol aussi. Le slug est rentable pour lui quand **plusieurs survivants sont proches**.
- **Vous êtes au sol** : arbitrage **ramper vs récupérer** (SITUATIONAL). La récupération auto (30,4 s jusqu'à 95 %) se fait **« à l'arrêt » selon le wiki** : ramper la suspend probablement (à tester en jeu). Donc :
  - ramper vers **un coéquipier ou une zone couverte** (pas vers un gen occupé par d'autres, ni vers un cul-de-sac, ni vers le crochet le plus proche) **si** cela rapproche réellement un sauveteur ou vous sort de la vue du tueur ;
  - rester immobile et récupérer **si** le tueur est parti loin et qu'un allié arrive déjà vers vous : relevé à 95 %, le coéquipier finit plus vite (durée restante : NV) ;
  - ne pas alterner au hasard : chaque changement perd du temps des deux côtés.
- **Un allié est au sol et le tueur est à côté** : ne **venez pas à deux**. Un seul relève, **quand le tueur est engagé ailleurs** (chase visible, TR éloigné). **Exception** (SITUATIONAL) : un tueur qui **attend** à côté du mourant indéfiniment ne s'engagera jamais ailleurs ; attendre coûte alors le bleed-out de l'allié (240 s) et les gens des autres. Un survivant **sain** peut le **tirer en chase** (se montrer puis partir vers un tile fort) pendant qu'un autre relève — en SWF sur annonce ; en SoloQ, seulement si vous êtes clairement le mieux placé, car personne ne garantit le relevage. Contre Knock Out (auras des mourants réduites à 32/24/16 m après un M1, STRONG_SECONDARY lot 3), vous ne verrez parfois pas l'allié : ne partez pas à l'aveugle vers son dernier endroit connu sans indice.
- **Tout le monde au sol sauf vous** : le **dernier debout ne doit pas se faire prendre en chase** ; jouez le relevage si le tueur s'éloigne, sinon la trappe (voir §6.3). Sans perk, rester loin est souvent plus rentable que tenter une relève sous ses yeux (SITUATIONAL : un tueur qui accroche un des survivants au sol vous rend du temps).
- **Abandon / Surrender** : ce sont des options de fin, pas des stratégies. Abandonner prive l'équipe d'un réparateur et d'un leurre : en SWF, l'annoncer avant ; en SoloQ, préférer ramper vers un allié tant qu'une chance réelle existe (EXPERT OPINION non sourcée).

### 2.9 Reset, regroupement, split pressure

- **Reset** (HEURISTIC) : moment où l'équipe récupère son état après une vague de pression (2 blessés, 1 crochet). La question : **combien de s-surv coûte le retour à « tout le monde sain »** ? Deux soins altruistes = 64 s-surv ≈ 0,7 gen. Un reset complet n'est rentable que si le tueur doit **encore** faire beaucoup de coups (tueur M1 sans coup unique, gens encore nombreux). Contre un tueur à coup unique ou une équipe à 1-2 gens de la fin, le reset complet est **rarement** rentable (SITUATIONAL) — mais un soin **ciblé** peut rester juste à 1-2 gens : survivant qui devra tenir la chase d'endgame ou faire un protection hit au crochet, ou absence d'Adrenaline dans l'équipe (Match Details). (Sous NOED/Exposed, être sain ne protège plus d'un coup : ce n'est pas une raison de soigner.)
- **Regroupement** : utile seulement pour **échanger des ressources** (soin rapide avec un Med-Kit, relevage, Boon) ou en fin de partie pour convertir (portes). Toute autre proximité donne des cibles multiples et ralentit l'anti-camp.
- **Split pressure** (HEURISTIC) : forcer le tueur à choisir entre deux objectifs éloignés (deux gens aux extrémités, deux portes, un crochet et un gen). Contre un 3-gen déjà formé, on attaque **simultanément** deux gens du triangle à deux survivants différents pendant qu'un troisième tient une chase : le tueur ne peut pas frapper deux gens à la fois. Risque : deux survivants proches du tueur. Alternative : si l'un des 3 gens est plus loin, jouer celui-là.

### 2.10 Quand soigner / quand ne PAS soigner

**Le prix d'un soin (CALC)** : 32 s-surv (altruiste, sans objet) ; ~24 s d'auto-soin au Med-Kit (hypothèse de calcul) ; Mangled +25 % ; Deep Wound à mender (10 s seul / 6 s allié) avant tout.

**Ce que rapporte un état de santé** (HYPOTHESIS, non mesurable avec l'audit seul) : au minimum un coup de plus pour le tueur, soit un cooldown de 2,7 s après coup réussi (FACT audit, VERIFIED_MULTI_SOURCE), plus le boost au coup (1,8 s, ×1,65 selon le wiki : STRONG_SECONDARY) et une nouvelle phase de rattrapage (10 m d'avance ≈ 16,7 / 25 s bruts à 4,6 / 4,4 m/s, mais ≈ 12-13 / 17-18 s avec Bloodlust et fente : CALC audit A-054, fente = COMMUNITY_OBSERVATION ; en terrain vide). Ordre de grandeur plausible : **~12-30 s de chase en plus**, très dépendant des tiles.
**Bilan (CALC sur cette hypothèse, avec le modèle du §1.2)** : si **3** alliés réparent pendant ces secondes, 12-30 s de chase ≈ **36-90 s-surv**, contre **32 s-surv** de soin altruiste → le soin est **rentable dans le cas idéal** ; avec **2** réparateurs (24-60 s-surv) il est **proche de l'équilibre** ; il devient **perdant** si le trajet vers le soigneur s'ajoute, si l'état de santé ne rallonge pas la chase (coup unique, reblessure à distance), ou si le soigné n'est pas le prochain survivant chassé (l'état n'est « encaissé » que s'il sert en chase). Ce sont donc les **facteurs de contexte** ci-dessous qui tranchent, pas une règle « toujours / jamais soigner ».

| Contexte | Décision | Pourquoi | Risque / alternative |
|---|---|---|---|
| Tueur à coup unique fréquent (Hillbilly, Cannibal, Oni Blood Fury : lot 4 ; Shape Evil Incarnate : UNCERTAIN, lot 4) | Soin souvent **non rentable** | L'état de santé ne vaut rien contre l'attaque spéciale | Mais utile contre ses M1 : SITUATIONAL selon qu'il joue pouvoir ou M1 |
| Tueur à blessure à distance / statut (Legion, Plague, Trickster, Krasue…) | **Ne pas soigner par réflexe** | Il reblesse vite et à distance ; le seed disait « soignez vite contre Plague » (règle absolue relevée par l'audit) | Contre Plague : purifier fait des fontaines corrompues (lot 4) ; jouer Broken est un compromis, pas une règle |
| Gen > ~70 % et tueur loin | **Finir le gen**, soigner après | Un gen fini est un acquis définitif | Si le tueur arrive, vous êtes blessé sur un gen presque fini : voir arbre §7.3 |
| Dernier gen, **Adrenaline** dans l'équipe | Le porteur ne se soigne pas | Adrenaline soigne d'un état à l'alimentation (lot 2, STRONG_SECONDARY) | Terminus rend Broken portes alimentées : Adrenaline ne soigne plus (lot 3, STRONG_SECONDARY) |
| Perks « blessé » (Resilience, etc., valeurs UNCERTAIN) | Rester blessé est **acceptable** | Bonus d'action | Un seul coup vous met au sol |
| Terror radius qui arrive pendant le soin | **Par défaut, arrêter et partir** ; exception : soin presque fini (même calcul que le gen, §2.11 : temps restant < arrivée estimée − 2 s) → finir | Soin interrompu conservé (sauf Haemorrhage : −7 %/s, FACT audit) ; mais partir à 90 % laisse deux survivants blessés sur place | Vous perdez la position ; choisir un soin plus loin. Contre un tueur furtif, le TR arrive trop tard : ne pas compter sur lui |
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
- **Respecter les 16 m** : en cas de face camp, être à > 16 m du crochet ne ralentit pas l'anti-camp (FACT). Cela ne vous rend **pas invisible** : à 16-30 m, un tueur qui regarde autour du crochet vous voit ; restez hors de sa ligne de vue, pas seulement hors du rayon.
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
| Allié accroché, vous n'êtes pas le plus proche | Quelqu'un **peut** y aller, mais pas sûrement | Beaucoup de joueurs SoloQ réagissent tard | Donner un **délai de confirmation** (ex. 15-20 s, valeur de rédacteur) : si aucun portrait ne montre d'action de sauvetage et qu'aucune aura (Kindred) ne bouge vers le crochet, **y aller**. **Adapter le délai au temps de phase restant et à votre trajet** : délai + trajet doit tomber avant la fin des 70 s. **Piège** : si les 3 joueurs appliquent le même délai fixe, ils partent **ensemble** à la 20e seconde → doublon ; en partant, vérifier à nouveau portraits/auras toutes les ~5 s et faire demi-tour si un autre est clairement devant |
| Deux auras se dirigent vers le crochet (Kindred) | Doublon imminent | — | Le plus loin fait demi-tour. **En cas d'égalité**, départager avec ce que **vous voyez réellement** : le survivant sain / à 0 crochet continue, le blessé ou celui à 2 crochets fait demi-tour ; à défaut, celui qui est déjà en course continue. (Ne pas départager sur l'avancement des gens des autres : vous ne le voyez pas de façon fiable) |
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
4. **Protocole 3-gen** : dès 3 gens restants (5 sur la carte), le shot-caller nomme les gens et désigne deux réparateurs sur deux gens différents du groupe le plus serré, **pour les finir avant qu'ils ne deviennent le 3-gen**. Si le 3-gen est déjà formé (1 gen restant, 3 sur la carte) : split sur deux gens du triangle ou duo sur le plus avancé selon la position du tueur (§2.1).
5. **Protocole slug** : « au sol, tueur à côté » → personne ne vient **par défaut** ; « au sol, tueur parti » → un relève. Exception annoncée par le shot-caller : si le tueur attend indéfiniment près du mourant (bleed-out 240 s qui court), un survivant sain le **tire en chase** pendant qu'un autre relève (2 joueurs sur un événement, assumé).
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
- **Indices** : TR (taille selon le tueur), musique de chase (couche 4), tache rouge (direction du regard), corbeaux qui s'envolent (4 m), bruits de kick/casse, cris (Pain Res), notifications de gen. FACT audit : TR, musique de chase, tache rouge, corbeaux ; **NV** : sons de kick, notification de gen fini (cf. §2.12) ; cris de Pain Res : lot 3 (STRONG_SECONDARY, révélation de position contestée : CONFLICT-L3P90-02).
- **Tueurs furtifs** (lot 4) : le TR ment. Remplacer par : corbeaux, cloche du Wraith, rugissement de la Pig, zones sans TR suspectes, alertes de perks (Spine Chill : efficacité contre Undetectable UNCERTAIN).
- **Entraînement** (HEURISTIC) : à chaque perte de vue du tueur, **dire à voix haute** (ou penser) où il sera dans 10 s ; vérifier. Mesure : taux de prédictions correctes sur 10 parties.

### 5.2 Zones épuisées

- **Définition** : zone où les palettes sont cassées/utilisées et où les fenêtres sont bloquées (3e vault de la même fenêtre dans une poursuite = blocage 30 s pour ce survivant seulement : FACT audit STRONG_SECONDARY ; Bamboozle bloque 8/12/16 s pour tous : lot 3, STRONG_SECONDARY). Une fenêtre bloquée est **temporaire** ; une palette cassée est **définitive** : ce sont les palettes qui font la zone épuisée.
- **Mise à jour 9.2.0** : la quantité et la répartition des palettes ont été ajustées sur 10 royaumes (MacMillan, Autohaven, Coldwind, Crotus Prenn, Haddonfield, Backwater, Red Forest, Yamaoka, Ormond, Decimated Borgo) pour réduire les dead zones (FACT audit, registre). Toute connaissance de carte antérieure à 9.2.0 sur ces royaumes est à revérifier (lot 8).
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
| Patrouille entre deux portes après alimentation | Gate camp | Ouvrir les deux portes en même temps. À une porte avancée quand il arrive : **finir** si le temps restant (à 90 % : 2 s, CALC sur 20 s) est inférieur à son temps d'arrivée ; **lâcher** (progression conservée) s'il est déjà à portée de coup — même règle qu'au §6.2 |

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
- Le tueur est **sur** le gen ou arrive : un kick fait −5 % (99 → 94 %) puis régression ; il faut ensuite **réparer 5 %** pour stopper la régression (FACT). Le 99 devient un ~90-94 % (ordre de grandeur, selon le délai avant le retour d'un réparateur).
- **Hex: Ruin** actif : un gen non réparé régresse seul (lot 3) ; un 99 non tenu fond.
- **Heresy (The Judgment)** : un skill check Good fait −3 % (FACT audit) : un hérétique ne doit pas tenir un 99.
- **Tout le monde est sain et libre** : chaque seconde de 99 est une seconde où le tueur peut trouver quelqu'un. Alimenter et ouvrir.

**Technique** : à 99 %, un survivant **reste à côté** (pas dessus) ; le finir coûte ~1 s solo (0,9 c). Risque : les skill checks ne sont pas maîtrisables (8 % de chance par seconde de réparation, FACT) ; relâcher à 97-98 % laisse une marge (un Great ajoute +1 %, FACT : près de 99 % il peut finir le gen par accident ; un raté fait −10 % et du bruit).
**Contre-jeu du tueur** (HEURISTIC) : un survivant qui « attend » à côté d'un gen sans réparer est un indice lisible ; un tueur qui soupçonne un 99 peut patrouiller ce gen et le frapper, ce qui annule l'avantage. Le 99 est un outil pour **quelques dizaines de secondes** autour d'un événement précis (crochet, chase qui finit), pas une posture par défaut.

### 6.2 Portes et gate camp

- **FACT (audit)** : ouverture **20 s**, progression **conservée** ; ouverture par le tueur 0,75 s (UNCERTAIN, non recoupé). Blocages de l'Entité : Blood Warden 40/50/60 s (une fois) ; No Way Out 12 s + 6/9/12 s par jeton (STRONG_SECONDARY). Remember Me : allongement par jeton, valeurs UNCERTAIN (lot 3).
- **Répartition** (HEURISTIC) : une porte par survivant libre, **la plus éloignée du tueur** d'abord. Deux portes ouvertes à la fois forcent le tueur à choisir.
- **Gate camp** (tueur qui patrouille entre les portes ou se poste à une porte) : ouvrir la porte qu'il ne regarde pas. Règle unique (HEURISTIC, même logique que le gen §2.11) : **temps restant d'ouverture** (20 s × % restant : 2 s à 90 %, 1 s à 95 %, CALC) **< temps d'arrivée du tueur** → finir ; sinon **lâcher** l'interrupteur (la progression est conservée) plutôt que de prendre un coup, et revenir quand il repart. Nuance : finir sous ses yeux ouvre la porte **et** lance l'EGC ; si un allié est encore accroché ou au sol, le moment d'ouvrir est aussi une décision d'équipe (§7.6).
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
  - **Éviter à tout prix d'être mis au sol pendant que l'allié est accroché en phase Struggle** quand vous êtes 2 — **où que vous soyez** : la condition du Mori est « l'un en Struggle, l'autre au sol » (FACT 9.0.0), sans condition de distance dans l'audit. La proximité du crochet augmente seulement la probabilité d'être trouvé.
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
│   │       └─ Aucun signe après ~15-20 s (délai à raccourcir si mon trajet est long) → j'y vais
│   │           (décision robuste, §3.5) en revérifiant portraits/auras en route (anti-doublon).
│   │   [SWF] Le shot-caller désigne ; le sauveteur annonce l'ETA ; les autres ne bougent pas.
│   ├─ Trajet < temps restant de la phase (≤ 70 s) ?
│   │   ├─ Oui → décrocher dès l'arrivée si le TR est absent (le tueur engagé ailleurs est le meilleur moment).
│   │   └─ Non → quelqu'un d'autre doit y aller, ou l'allié passera en phase 2 : l'accepter si le gen en cours va tomber.
│   └─ Après le décrochage : l'allié part à l'opposé du tueur, CASSE LA LOS pendant les 10 s d'Elusive ;
│       soin loin du crochet (§7.2).
│
└─ NON, il reste (face camp < ~10 m, zone grise 10-16 m, OU proxy camp 16-30 m)
    ├─ Distance du tueur au crochet ?
    │   ├─ < ~10 m, immobile (face camp) → ne PAS entrer dans les 16 m (ralentit l'anti-camp, FACT).
    │   │   Gens à fond. Réévaluer : la jauge monte ×2 après 10 s, ×4 après 20 s de présence.
    │   │   EXCEPTION : portes alimentées → anti-camp coupé (FACT) → voir 7.6.
    │   ├─ 10-16 m, en mouvement autour du crochet → la jauge monte, mais lentement (×1 à 10 m → ×0,375
    │   │   à 15 m, FACT SS) : ne pas compter sur elle ; traiter comme un proxy (branche suivante).
    │   └─ 16-30 m (proxy) → l'anti-camp ne remplit RIEN (FACT). Il faut une décision :
    │       ├─ Hook stage de l'accroché ?
    │       │   ├─ Phase 1, > 30 s restantes → attendre qu'il s'engage (chase, kick lointain). Gens hors de sa zone.
    │       │   ├─ Phase 1, ~15-30 s restantes → se rapprocher HORS de sa zone de patrouille et de sa LOS,
    │       │   │   choisir l'angle d'approche ; décrocher tout de suite s'il s'engage ailleurs.
    │       │   ├─ Phase 1, < ~15 s restantes → décrocher maintenant (trade accepté) SI sauveteur sain,
    │       │   │   0-1 crochet, ressource de chase proche. Sinon, laisser passer en phase 2.
    │       │   └─ Phase 2 (Struggle) → dernière chance : sauvetage prioritaire si > 2 survivants,
    │       │       SAUF si le seul sauveteur possible est lui-même à 2 crochets ou blessé face à un tueur
    │       │       au pouvoir prêt (risque d'échanger une mort contre une mort + un crochet) ;
    │       │       à 2 survivants, voir 6.4 (Mori, sacrifice si tous accrochés).
    │       ├─ Pouvoir du tueur ?
    │       │   ├─ Coup unique prêt (Hillbilly, Oni Blood Fury…) → le sauveteur sain peut tomber en un coup :
    │       │   │   le trade risque un 2e survivant accroché. Attendre qu'il s'engage.
    │       │   ├─ Ranged prêt (Huntress, Deathslinger…) → il peut toucher le sauveteur ou le décroché à distance
    │       │   │   (le décroché garde Endurance : Deep Wound, pas mise au sol) ; trade plus cher, pas « 2 états » d'office.
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
        • Sous-sol : crochets insabotables (FACT : cela ne change que le sabotage) ; la géométrie (peu d'accès, NV)
          rend le sauvetage très exposé si le tueur revient → attendre qu'il parte loin.
        • The Judgment (Exile) : pas de crochet → pas de perks de crochet (FACT) ; route par les sanctuaires (lot 4) ;
          l'exilé réapparaît à ≥ 32 m (FACT 10.1.2).
        • Pain Res / Grim Embrace suspectés (lot 3) : c'est l'ACCROCHAGE (1er de chaque survivant ; sur crochet Fléau pour Pain Res) qui déclenche,
          pas le décrochage ; un trade raté qui fait accrocher le sauveteur pour la 1re fois peut donc coûter
          en plus du gen (Pain Res) ou un blocage (Grim Embrace).
```

**Erreurs typiques** : deux sauveteurs (SoloQ) ; décrocher devant un tueur au pouvoir prêt ; rester dans les 16 m pendant un face camp ; « le plus proche décroche toujours » (règle absolue du seed : ignore la santé du sauveteur et le hook stage).

**Contre-jeu du tueur à haut niveau** (HEURISTIC) : un tueur qui connaît cet arbre peut **simuler le départ** (sortir des 16 m, puis revenir dès qu'il entend/voit le décrochage) ou rester juste hors de la LOS du crochet. La branche « OUI, il part » suppose une information fiable : un TR qui s'éloigne **et** un signe d'engagement ailleurs (chase d'un allié visible au HUD, kick lointain). Un simple silence n'est pas un départ, surtout contre un tueur furtif.

### 7.2 SOIN

```
Je suis blessé (ou un allié l'est) → Le tueur est-il proche (TR, chase en cours près de nous) ?
├─ OUI → pas de soin. Partir ; soin interrompu conservé (sauf Haemorrhage −7 %/s, FACT).
└─ NON → Le tueur a-t-il un coup unique fréquent ou une blessure à distance / statut ?
    ├─ Coup unique (Hillbilly, Cannibal, Oni Fury ; Shape EI : UNCERTAIN) → soin peu rentable contre le pouvoir ;
    │     il garde de la valeur contre ses M1 (pouvoir en cooldown, tiles où il joue M1) : SITUATIONAL. Par défaut, gens.
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
    • Gen à pointes (≥ 4 regression events, FACT) ? → il reste au tueur jusqu'à 4 events sur ce gen ; c'est seulement
      au 8e event qu'il ne peut plus interagir avec (FACT) et que le gen devient « sûr » contre les kicks
      (la régression déjà lancée court jusqu'à ce qu'on répare 5 %). Les skill checks ratés régressent toujours.
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
├─ À côté de l'allié / en vue → par défaut NE PAS y aller. Rester hors de vue. Il cherche la 2e cible.
│     Exception : il attend indéfiniment (bleed-out 240 s qui court, gens qui ne suffisent pas) →
│     un survivant SAIN le tire en chase vers un tile fort, un autre relève ([SWF] sur annonce ;
│     [SoloQ] seulement si vous êtes clairement le mieux placé).
├─ En chase avec quelqu'un d'autre → j'y vais SEUL si je suis le plus proche ;
│     si l'allié est resté immobile, il a récupéré jusqu'à 95 % en 30,4 s (FACT ; « à l'arrêt » selon le wiki) :
│     le relevage restant est plus court (durée NV). S'il a rampé, sa jauge est probablement plus basse.
└─ Inconnu → Knock Out possible (aura de mourant invisible au-delà de 16-32 m) ?
    ├─ Je ne vois pas l'allié → ne pas partir à l'aveugle ; chercher un indice (portrait, dernier bruit).
    └─ Je le vois → approche prudente, relevage si TR absent.
Plusieurs au sol ?
├─ Je suis le dernier debout → éviter la chase autant que possible (si je tombe : tous au sol, Surrender
│     possible, FACT). Relever si le tueur s'éloigne ; sinon attendre qu'il accroche (un accrochage le fixe
│     ailleurs) ; trappe seulement s'il ne reste plus que moi en vie. S'il me trouve quand même, tenir la
│     chase le plus longtemps possible près d'un tile fort : chaque seconde laisse récupérer les alliés au sol.
└─ Deux debout → un relève, l'autre ne s'approche pas (ou fait diversion loin).
Je suis au sol ?
├─ Ramper vers un allié / une couverture, pas vers un gen occupé — OU rester immobile pour récupérer
│     (« à l'arrêt ») si le tueur est loin et qu'un allié arrive déjà : voir l'arbitrage §2.8.
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
## 8. Matrice des 14 états de partie (§16)

> Priorités et erreurs = **HEURISTIC** (sauf faits cités). « Catastrophique » = erreur qui coûte au moins un état de crochet évitable ou ~1 gen de temps, ou qui retire définitivement un survivant.

| # | État (signal) | Priorités | Erreurs catastrophiques | Note SoloQ / SWF |
|---|---|---|---|---|
| 1 | **Début de partie** (0 à ~60 s ; spawn groupé à ≤ 12 m « when possible », FACT 9.0.0 ; sauf Shroud of Separation (apparitions séparées, offrande survivant) ou Vigo's Shroud (loin du tueur) ; Shroud of Vanishing du tueur fait rejeter les offrandes d'apparition survivantes — FACT 9.0.0) | Se séparer vers des gens **différents** ; attaquer au moins un gen du futur 3-gen ; lire Match Details (loadouts alliés, FACT 9.6.0) ; identifier le tueur dès le reveal | Rester à 2-4 sur le même gen sans raison (+18 à +82 % de coût, CALC, et 2e cible) ; chercher des coffres (8 s chacun, FACT) avant de savoir où est le tueur ; purifier des ternes | SoloQ : choisir son rôle selon les loadouts. SWF : annoncer les gens pris dès le chargement |
| 2 | **Premier contact** (tueur révélé, pas encore de chase) | Le survivant trouvé **éloigne** le tueur des gens ; les autres réparent ; adapter au pouvoir (lot 4) | Courir vers un gen occupé ; rester dans une dead zone ; lâcher sa furtivité trop tôt (courir = griffures) | SWF : « sur moi, direction X » |
| 3 | **Première chase** | Durer, **loin** des gens ; économiser les palettes près des gens clés ; les 3 autres réparent chacun un gen (chaque seconde ≈ 1/30 de gen, CALC) | Aller « voir » la chase (−1 réparateur) ; gaspiller les palettes d'une zone de 3-gen ; ramener le tueur sur un gen | SoloQ : ne pas quitter son gen pour une chase qu'on ne voit pas |
| 4 | **Premier crochet** | **Un** sauveteur ; décrocher avant 70 s ; décroché qui casse la LOS pendant les 10 s d'Elusive ; soin loin | Deux sauveteurs ; trade sous un tueur au pouvoir prêt ; laisser passer la phase 1 (état de crochet gratuit) ; soigner à côté du crochet | SoloQ : délai de confirmation (§3.3). SWF : protocole crochet (§4.2) |
| 5 | **Midgame** (1-2 gens finis, rotation chase/crochet ; les états 6-8 prennent le relais ensuite) | Garder 2-3 réparateurs actifs ; répartir les crochets ; surveiller le 3-gen ; ne soigner que ce qui est rentable | Laisser se former le 3-gen ; soins en série (2 × 32 s-surv) ; tout le monde à 1-2 crochets sans anti-tunnel | SWF : suivi oral des crochets et des perks (§4.5) |
| 6 | **3 gens restants** (2 finis, **5 encore sur la carte**, §0) | Choisir les **2 prochains gens finis** pour que les 3 derniers de la carte ne forment pas un triangle serré (finir **dans** le groupe serré, laisser les gens extérieurs) ; garder les palettes de la zone | Finir des gens **extérieurs** et laisser un groupe serré de 3 pour la fin ; lâcher un gen frappé sans y revenir (−5 % + 0,25 c/s) | SoloQ : réparer soi-même un gen du groupe serré. SWF : shot-caller nomme les gens à finir en priorité |
| 7 | **2 gens restants** | Anticiper les perks de fin (Match Details pour les alliés : Adrenaline/Hope ; indices tueur : NOED, No Way Out) ; purifier les ternes croisés si NOED suspecté ; placer les survivants près des portes probables | Soins inutiles juste avant une Adrenaline ; tous en chase/crochet en même temps ; gaspiller les dernières palettes | — |
| 8 | **1 gen restant** (4 finis, **3 sur la carte** : c'est ici qu'un 3-gen se joue) | Si 3-gen : split pressure ou duo selon la position du tueur (§2.1, §2.9) ; décider **99 ou alimenter** (§6.1) ; savoir où sont les portes ; un allié accroché change tout (anti-camp coupé à l'alimentation) | Alimenter pendant qu'un allié est accroché avec le tueur au crochet (anti-camp, Elusive et WTL perdus : FACT) ; laisser un 99 sous Ruin ; hérétique qui tient le 99 (Good = −3 %) | SWF : décision explicite du 99. SoloQ : on ne contrôle pas les autres : ne pas « tenir » un 99 seul trop longtemps |
| 9 | **Portes alimentées** | Ouvrir la porte la plus loin du tueur ; deux portes à la fois si possible ; sauvetage **planifié** seulement | Se faire accrocher après l'ouverture d'une porte (Blood Warden, 40-60 s de blocage : FACT) ; prendre un coup sous NOED ; décrocher sans plan (plus d'Elusive, plus d'anti-camp) | — |
| 10 | **Endgame Collapse** (120 s, ou ~240 s max ralenti) | Sortir ; sauvetage seulement si le timer ralenti (allié accroché/au sol) laisse le temps et qu'un plan existe | Attendre dans la sortie (Heresy à 45 s contre Judgment ; auras Blood Warden) ; revenir « aider » sans plan ; oublier que l'EGC ne s'arrête jamais | — |
| 11 | **Survivant en dernière phase** (death hook : 2 crochets) | Il **évite** les chases et les actions à risque ; les autres prennent les protection hits ; il répare dans les zones calmes | Le faire décrocher ou prendre la chase ; le laisser seul près d'un tueur qui tunnel ; l'utiliser pour un save risqué | SWF : le suivi « A:2 » est rappelé à chaque accrochage |
| 12 | **Plusieurs survivants au sol** | Le dernier debout évite la chase ; relever **un** allié quand le tueur est parti ; ramper vers les alliés | Venir relever à deux sous ses yeux ; le dernier debout qui se fait mettre au sol (tous au sol → Surrender possible, FACT) ; à 2 survivants, tomber (n'importe où) pendant que l'allié est en Struggle (Mori, FACT) | SoloQ : ramper vers l'allié debout. SWF : « ne venez pas » / « il est parti » |
| 13 | **Tueur sans pression** (≥ 3 survivants sur les gens, chases longues, 0-1 crochet) | **Convertir** : finir les gens vite plutôt que soigner ; ne pas donner de cible gratuite ; préparer l'endgame | Relâcher l'attention (se montrer, t-bag : info et Heresy contre Judgment) ; offrir un premier crochet par excès de confiance ; greed de palettes inutiles | — |
| 14 | **Tueur avec forte pression** (0-1 réparateur, blessés multiples, crochets enchaînés) | Casser le cycle : **une** chase longue, les autres réparent ; accepter de rester blessé ; éviter la zone du crochet ; viser 1-2 évasions si le tableau de course est perdu (§1.3) | Soins en série ; sauvetages multiples ; groupement ; ignorer le 3-gen ; abandonner trop tôt une partie rattrapable | SoloQ : décisions robustes (§3.5). SWF : le shot-caller réduit les annonces à l'essentiel |

**Transitions à surveiller** (HEURISTIC) : 3 → 4 (premier crochet) : qualité du premier sauvetage ; 5 → 6 : la géométrie des gens restants ; 8 → 9 : le moment de l'alimentation. Ce sont les trois moments où une seule décision change le plus souvent le résultat (EXPERT OPINION non sourcée).

---

## 9. Situations concrètes (format §31)

### 9.A — Proxy camp au premier crochet (SoloQ)

**Situation** : SoloQ. 4 gens restants. Meg est accrochée (1er crochet) à 35 s de sa phase 1. Le tueur (Trapper, M1, pièges) patrouille à ~20 m du crochet et frappe un gen voisin. Vous êtes sain, sur un gen à 40 % à ~50 m du crochet. Match Details : personne n'a Kindred ; Claudette a un Med-Kit.

**Informations connues** :
- Au-delà de 16 m, **l'anti-camp ne se remplit pas** (FACT audit). Il ne libérera pas Meg.
- Phase 1 : 70 s (FACT) ; il reste ~35 s.
- Protections de décrochage : Endurance + 10 % Haste 10 s + Elusive 10 s (FACT 10.1.0).
- Trapper : pièges possibles près du crochet (lot 4 : les tueurs à pièges piègent le crochet).

**Options** :
- A. Aller décrocher immédiatement.
- B. Rester sur le gen et attendre qu'il s'engage ailleurs, puis y aller.
- C. Rester sur le gen et laisser les autres gérer.

**Analyse** :
- A : trade quasi certain, tueur à 20 m ; en plus, risque de piège sur le trajet (un piège vous immobilise, et le tueur arrive). Cas probable : vous blessé + Meg (Endurance → Deep Wound au 1er coup) remise au sol puis raccrochée = **1 état** (le même que l'expiration de sa phase) **plus** votre blessure et du temps perdu. Pire cas : vous piégé ou mis au sol aussi → **2 états** offerts.
- B : le proxy du Trapper lui coûte des gens au loin (3 s-surv/s pour les 3 autres si elles réparent). Il reste 35 s ; si le tueur s'engage sur un autre survivant dans les 15-20 s, le sauvetage devient propre. Pire cas : phase 1 expire, Meg passe en Struggle (un état gratuit).
- C : en SoloQ, sans Kindred, rien ne garantit qu'un autre y aille : pire cas identique à B mais **sans** chance de sauvetage propre.

**Meilleure logique de décision** : **B avec échéance**. Se rapprocher à ~30-40 m (hors de sa zone de patrouille) en fin de délai ; si le tueur reste, décrocher vers ~10 s restantes **en approchant par un angle sans pièges visibles**, parce que laisser expirer la phase donne le même état de crochet que le trade raté « probable », sans la chance de réussir. Si vous étiez blessé, laisser plutôt passer la phase (le trade risquerait 2 états : vous au sol + Meg). **Limite de l'exemple** : le Trapper est un tueur M1 sans ranged ; contre un tueur à coup unique ou ranged prêt, l'échéance « ~10 s » devient bien plus risquée (arbre §7.1, branche pouvoir).

**Erreur typique** : « l'anti-camp va la décrocher, je répare » (le seed le disait : FAUX au-delà de 16 m) ; ou y aller à 3 survivants par réflexe SoloQ.

### 9.B — 3-gen formé, tueur qui patrouille et frappe (SWF)

**Situation** : SWF 4 joueurs. **4 gens finis, 1 gen restant** : les **3 derniers gens de la carte** forment un triangle serré (G1 et G2 à 30 m l'un de l'autre au centre, G3 à ~25 m des deux). G1 à 50 %, G2 à 30 %, G3 à 0 % ; G1 et G2 déjà frappés 3 fois chacun. Tueur M1 furtif (Wraith, lot 4), vu pour la dernière fois en train de frapper G2. Personne accroché ; trois sains, un blessé. Personne en chase.

**Informations connues** :
- Il suffit de finir **un seul** des trois gens pour alimenter les portes (FACT : 5 gens requis).
- Kick : −5 % puis −0,25 c/s ; stopper la régression = 5 % (FACT) ; pointes visibles dès le 4e event, plafond 8 (FACT) → il reste au tueur **5 events** sur G1 et sur G2.
- Débits (FACT, CALC) : solo 1 c/s ; duo 1,7 ; trio 2,1. G1 : 45 c restantes → 45 s solo, **~26,5 s** en duo, **~21,4 s** en trio. G2 : 63 c → 63 s solo.
- Un tueur à ~30 m revient en **~6,5 s** à 4,6 m/s (CALC, ligne droite) ; furtif = pas de TR fiable.

**Options** :
- A. Les 3 sains sur G1 (finir vite).
- B. Split : duo sain sur G1, le 3e sain sur G2 ; le blessé reste à distance, prêt à reprendre un gen lâché ou à tirer la chase loin des deux gens.
- C. Soigner d'abord le blessé, puis repartir.

**Analyse** :
- A : ~21 s de travail contre ~6-7 s de retour possible du tueur : il trouve **3 survivants groupés**, obtient un coup facile et frappe G1. Ne vaut que si le tueur est déjà engagé en chase **loin** du triangle.
- B : le tueur ne peut défendre qu'un gen à la fois. S'il va sur G1, le duo se sépare (le plus faible en chase part d'abord, l'autre finit si c'est possible, §7.3) pendant que G2 avance ; s'il va sur G2, G1 tombe en ~26 s. Chaque kick lui coûte 1,8 s et un aller-retour, et consomme un de ses 5 events restants.
- C : 32 s-surv pour un état de santé pendant qu'aucun gen n'avance et que G2 régresse ; le soin a de la valeur contre un M1, mais **après** l'alimentation (ou pendant une chase longue du tueur).

**Meilleure logique de décision** : **B**. Le shot-caller nomme les gens attaqués (« centre-nord duo, centre-sud solo ») ; le blessé reste hors du triangle et annonce la cloche du Wraith (lot 4) ; si le tueur s'engage en chase loin, basculer en A (tout le monde sur le gen le plus avancé). **Contre-jeu du tueur** : un tueur qui repère le duo peut ignorer G2 et chercher un coup sur le duo ; le duo doit donc réparer en surveillant les indices du Wraith et se séparer tôt.

**Erreur typique** : avoir fini les gens « faciles » extérieurs en milieu de partie (ce qui a créé ce triangle : voir état 6 du §8) ; ou se regrouper à 3 sur un gen et se faire trouver ensemble.

### 9.C — Portes alimentées, allié accroché, tueur au crochet (SoloQ)

**Situation** : SoloQ. Gens finis il y a ~20 s (quelqu'un a alimenté). Dwight est accroché (2e crochet, donc phase 2 : Struggle en cours, ~40 s restantes). Le tueur reste à 8 m du crochet. Vous êtes sain, près de la porte nord (à 60 % d'ouverture, soit 12 s déjà faites sur 20 s : CALC ; il reste **8 s**) ; Nea est blessée près de la porte sud. Vous êtes 3 en vie.

**Informations connues** :
- Portes alimentées → **anti-camp désactivé** (FACT) ; le camp ne sera jamais puni par le système.
- Décrochage en endgame : Endurance + 10 % Haste 10 s, **pas d'Elusive** (FACT 10.1.0).
- Porte : 20 s, progression conservée ; EGC 120 s, ralenti de moitié tant qu'un survivant est accroché (FACT).
- Blood Warden (40/50/60 s, une fois, après ouverture d'une porte) possible, non confirmé.

**Options** :
- A. Aller décrocher tout de suite.
- B. Finir d'ouvrir la porte nord, puis tenter un sauvetage coordonné par le comportement (Nea ?).
- C. Ouvrir la porte et sortir.

**Analyse** :
- A : le tueur à 8 m voit le sauvetage ; Dwight a Endurance mais pas Elusive ; vous êtes sain mais seul : le tueur peut vous mettre à 1 état et reprendre Dwight (Deep Wound, pas d'Elusive pour le semer). Pire cas : 2 morts, EGC non lancé.
- B : ouvrir lance l'EGC (120 s, mais ralenti tant que Dwight est accroché → le temps n'est pas le problème ; c'est les ~40 s de phase de Dwight). Porte ouverte = sortie sûre pour la suite. Nea (blessée, SoloQ : intentions inconnues) pourrait tenter aussi : risque de doublon, mais ici **deux** survivants au crochet peuvent être utiles (un décroche, l'autre prend le coup), si Nea n'est pas celle qui prend le coup (elle est blessée).
- C : sûr pour vous, mais abandonne Dwight alors qu'il reste ~40 s.

**Meilleure logique de décision** : **B**, puis sauvetage **si** le tueur s'éloigne ou se laisse distraire, sinon sortir à ~10 s de la fin de la phase de Dwight. Votre santé est la ressource : le protection hit (Endurance de Dwight + votre état sain) donne une petite fenêtre pour qu'il atteigne la porte ouverte. **En SoloQ**, on ne peut pas compter sur Nea : la décision doit être bonne **même si elle ne fait rien**.

**Erreur typique** : penser que les protections incluent Elusive en endgame (le seed ch. 0/07 disait même qu'elles disparaissaient toutes : les deux sont faux) ; décrocher avant d'ouvrir une porte (Dwight et vous devez alors ouvrir 20 s sous pression) ; attendre dans la porte ouverte en espérant que le tueur parte (Blood Warden, Judgment).

### 9.D — Standoff de trappe (dernier survivant)

**Situation** : Vous êtes le dernier survivant (les autres sont morts). 2 gens restants. Vous voyez l'aura de la trappe à ~25 m, près d'un bâtiment. Le tueur (Blight, mobile) patrouille à ~15 m de la trappe ; il ne vous a pas vu. Vous êtes blessé. Vous n'avez pas de clé.

**Informations connues** :
- Trappe visible **de vous seul** (FACT 5.3.0) ; le tueur l'a peut-être trouvée à la vue ou par hasard.
- Si le tueur la ferme : EGC 120 s ; il faut une porte (20 s) ; il ne peut garder qu'une porte à la fois (HEURISTIC).
- Blight : très mobile ; distance entre portes peu protectrice contre lui (lot 4).
- Blessé : flaques de sang, grognements (FACT audit, portée UNCERTAIN).

**Options** :
- A. Sprinter vers la trappe maintenant.
- B. Attendre hors de vue, en marchant/accroupi, qu'il s'éloigne ; puis marcher vers la trappe.
- C. Aller vers une porte en anticipant qu'il fermera la trappe.

**Analyse** :
- A : sprint = griffures + bruit ; à 25 m, il vous voit et vous coupe (il est plus proche de la trappe). Pire cas : mise au sol, fin.
- B : s'il ne connaît pas la trappe, il finira par s'éloigner (il doit aussi chercher le survivant) ; s'il la connaît et la ferme, vous êtes déjà hors de vue et pouvez partir vers la porte la plus éloignée de lui.
- C : sans info sur sa décision, partir vers une porte avant la fermeture vous éloigne de la trappe, qui est votre meilleure sortie tant qu'elle est ouverte.

**Meilleure logique de décision** : **B**, en préparant mentalement la route vers la porte **opposée** à sa position. Si vous entendez/voyez la fermeture (EGC lancé), partir immédiatement : contre un Blight, votre seule chance est qu'il choisisse la mauvaise porte ou qu'il perde votre trace (marcher hors LOS, pas de griffures).

**Erreur typique** : courir vers la trappe devant le tueur ; ou se soigner à côté (pas de Med-Kit : pas d'auto-soin sans perk, FACT) au lieu de bouger ; ou attendre si longtemps sans bouger que les **corbeaux AFK** (80/100/120 s) vous signalent (FACT audit, VERIFIED_PRIMARY).

---
## Claims (chiffres présentés comme FACT, tous issus de l'audit phase 0)

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| L9-01 | Gen = 90 charges, 90 s solo | audit « objectifs » 1.1 | 6.1.0 | VERIFIED_MULTI_SOURCE |
| L9-02 | Coop 85/70/55 % → ~52,9 / 42,9 / 40,9 s | audit 1.1 | — | STRONG_SECONDARY |
| L9-03 | Kick 1,8 s, −5 %, −0,25 c/s, 5 % pour stopper, 8 events max | audit 1.1 | 7.5.0 | VERIFIED_MULTI_SOURCE |
| L9-04 | Skill check raté −10 % + 3 s ; Great +1 % | audit 1.1 | — | STRONG_SECONDARY |
| L9-05 | Phase de crochet 70 s | audit 1.2 | 8.2.0 | VERIFIED_PRIMARY |
| L9-06 | Anti-camp : 16 m ; ×0 à 16 m ; ×1/×2/×4 ; grâce 7 s ; coupé portes alimentées ; ralenti par survivants < 16 m | audit 1.2 | 7.3.0 / 9.3.0 | VERIFIED_PRIMARY (9.3.0) / STRONG_SECONDARY (conditions) |
| L9-07 | Protections : Endurance + 10 % Haste 10 s + Elusive 10 s ; Elusive absente portes alimentées | audit 1.2 | 10.1.0 | VERIFIED_PRIMARY |
| L9-08 | Récupération au sol auto 95 % en 30,4 s ; pas d'auto-relève basekit | audit 1.3 | 9.2.0 | VERIFIED_MULTI_SOURCE / VERIFIED_PRIMARY |
| L9-09 | Abandon au 3e passage au sol après 2 relevages/soins ; Surrender tous au sol | audit 1.3 | 9.2.0 / 8.6.0 | VERIFIED_PRIMARY |
| L9-10 | 2 survivants : auto-décrochage 4 %, 2 checks de lutte manqués = mort, tous accrochés = mort, Mori possible | audit 1.2 / 1.3 / registre | 9.0.0 / 9.1.0 | VERIFIED_PRIMARY / STRONG_SECONDARY |
| L9-11 | Soin 16 s ; Med-Kit auto −33 % ; Mangled +25 % ; Deep Wound 10 s / 6 s | audit 1.4 | 8.6.0 | STRONG_SECONDARY / VERIFIED_PRIMARY |
| L9-12 | Trappe : auto à 1 survivant, visible de lui seul, clé 2,5 s, fermée → EGC, refermée après évasion | audit 1.6 | 5.3.0 / 8.1.0 | STRONG_SECONDARY |
| L9-13 | Porte 20 s, progression conservée | audit 1.6 | — | STRONG_SECONDARY |
| L9-14 | EGC 120 s, moitié de vitesse si survivant au sol/accroché/en cage (max 4 min), jamais arrêté | audit 1.6 | — | STRONG_SECONDARY |
| L9-15 | Blood Warden 40/50/60 s ; No Way Out 12 s + 6/9/12 s/jeton | audit 1.6 | — | STRONG_SECONDARY |
| L9-16 | Will to Live 4 s, 40/50/60 s, désactivé portes alimentées | audit mouvement 1.5 | 8.0.0 | STRONG_SECONDARY |
| L9-17 | Heresy : 3 accroupissements/gestes à < 10 m ou 45 s dans le seuil d'une porte ; Good = −3 % ; porte bloquée 8 s si < 32 m | audit 1.5 | 10.1.0 | VERIFIED_PRIMARY (principe) / STRONG_SECONDARY (valeurs) |
| L9-18 | Exile = état de crochet sans perks de crochet | audit 1.2 | 10.1.0 | VERIFIED_PRIMARY |
| L9-19 | Match Details : loadouts alliés visibles ; tueur révélé à la 1re chase/perte d'état ; loadout tueur caché | audit 1.6 | 9.6.0 | VERIFIED_PRIMARY |
| L9-20 | Corbeaux AFK 80/100/120 s ; corbeaux 4 m | audit mouvement 1.7 | 9.3.0 | VERIFIED_PRIMARY / STRONG_SECONDARY |
| L9-21 | Fenêtre bloquée 30 s après le 3e vault ; espacement palettes 14-20 m | audit mouvement 1.4 / 1.5 | — | STRONG_SECONDARY |
| L9-22 | Survivor Intent System = PTB 10.2.0 uniquement | audit registre | PTB 10.2.0 | VERIFIED_PRIMARY (statut) |
| L9-23 | Crochet détruit : réapparition 60 s après un sacrifice ; sabotage 3 s, réparation auto 30 s | audit 1.2 | 8.1.0 / 3.6.0 | STRONG_SECONDARY |
| L9-24 | Exilés libérés réapparaissent à ≥ 32 m ; Exiled Souls +0,5 s de protections chacune (10 max) | audit registre / 1.2 | 10.1.2 / 10.1.0 | VERIFIED_PRIMARY (registre) |
| L9-25 | 9.2.0 : quantité/répartition des palettes ajustées sur 10 royaumes (moins de dead zones) | audit registre | 9.2.0 | VERIFIED_PRIMARY (registre) |
| L9-26 | Apparition ≤ 12 m « when possible » ; Shroud of Separation / Vigo's Shroud / Shroud of Vanishing | audit 1.6 | 9.0.0 | VERIFIED_PRIMARY |
| L9-27 | Récupération au sol « à l'arrêt » (précision wiki) | audit 1.3 | 9.2.0 | STRONG_SECONDARY (précision) |
| — | **Non FACT** : portage 3,68 m/s (audit : UNCERTAIN) ; Slaughtering Strike de la Shape qui met au sol un sain (lot 4, SEED-NRV : UNCERTAIN) | — | — | UNCERTAIN |

## Écarts avec le guide seed (macro, ch. 6-7 et 10)

| Élément | Le seed dit | Constat | Verdict |
|---|---|---|---|
| Valeur d'une seconde de chase | « ≈ 1/3 de gen » (ch. 7) | ≈ 1/30 de gen quand 3 réparent séparément | FAUX (audit A-267) |
| Proxy camp | « l'anti-facecamp décrochera l'allié » (ch. 7) | Aucun remplissage au-delà de 16 m | FAUX (audit A-283) |
| Protections portes alimentées | inactives (ch. 0/07) | Seule Elusive disparaît | FAUX (audit A-074) |
| Face camp | « inutile au-delà d'environ 20 s » (ch. 0, 10) | Taux de base inconnu (CONFLICT-003) ; seuil non calculable | NON VÉRIFIABLE |
| Qui décroche | « le plus proche, et un seul » | Ignore santé du sauveteur, hook stage, pouvoir du tueur | IMPRÉCIS (règle absolue) |
| Altruisme SWF | « un seul joueur quitte son gen par événement » | Bon défaut, mais exceptions (slug + protection hit) | IMPRÉCIS (règle absolue) |
| Totems | « purifiez un Hex dès qu'il s'allume » | Dépend de l'effet, du trajet, du tueur | IMPRÉCIS (règle absolue relevée par l'audit) |
| Plague | « soignez vite » (ch. 7) | Fontaines corrompues, reblessure à distance | IMPRÉCIS (règle absolue relevée par l'audit) |
| Régression | « réparer brièvement suffit » à stopper | Il faut 5 % depuis 7.5.0 | IMPRÉCIS |
| Survivor Intent System | recommandé en SoloQ (ch. 6 règle 9, Trio C) | PTB 10.2.0 uniquement | PTB-comme-LIVE |
| Gain SWF vocal | +3 pts / +8 pts | Sans source primaire | NON VÉRIFIABLE (à retirer, audit A-119) |
| Chiffrage des pertes SoloQ (160 s-surv, etc.) | ordres de grandeur (ch. 6) | Hypothèses de trajet non mesurées | NON VÉRIFIABLE (garder comme HYPOTHESIS) |
| Décrocher « autour de 50 % » de la phase 1 si le tueur est proche | règle (ch. 6 règle 5) | Défendable comme HEURISTIC, mais dépend du proxy vs face camp, de l'anti-camp et du pouvoir | IMPRÉCIS |
| « Tunnel = le tueur perd 60-90 s » (Trio A) | chiffre | Non mesuré | NON VÉRIFIABLE |
| Endgame : « ouvrir la porte la plus éloignée du tueur » | règle | OK comme défaut ; exceptions (gate camp, No Way Out) | OK (HEURISTIC) |
| EGC | 2 min, ralenti si survivant au sol/accroché | Conforme | OK |

## Points à sourcer

1. **Taux de base de l'anti-camp après 9.3.0** (CONFLICT-003) : sans lui, aucun temps de face camp n'est calculable. Test en jeu (partie personnalisée, chronomètre à 4 m et 10 m).
2. **Valeur d'un état de santé en secondes de chase** (§2.10) : l'hypothèse « ~12-30 s » demande des mesures (VOD personnelles, lot 10/11) ; c'est la base de toute la politique de soin.
3. **Durée du relevage d'un allié au sol** (0 → 100 % et 95 → 100 %) : absente de l'audit.
4. **Éléments du HUD** : icônes d'action, compteur d'états de crochet, indicateur de chase, sens des « barres de progression colorées » (9.6.0) : à relever en jeu, captures datées.
5. **Aura basekit des alliés au sol / accrochés** et portée : nécessaire pour les arbres slug/crochet (Knock Out la réduit, lot 3).
6. **Notification de bruit** sur skill check raté, gen fini, kick : à confirmer (wiki complet).
7. **Trappe** : durée du saut, conditions d'ouverture à la clé (avant/après fermeture), règles avec plusieurs survivants et une clé.
8. **Ouverture de porte par le tueur (0,75 s)** et effet sur la progression survivant.
9. **Application des protections basekit à une libération d'Exile** (The Judgment).
10. **Délai de confirmation SoloQ (15-20 s)** et seuils du « tableau de course » : valeurs de rédacteur, à calibrer par l'observation de parties.
11. **Valeurs LIVE de Déjà Vu, Kindred, Bond, Prove Thyself, Hope, Wake Up!, NOED, Remember Me, Grim Embrace** (lots 2-3 : UNCERTAIN) : plusieurs recommandations en dépendent.
12. Une **source experte** (coach, joueur compétitif avec VOD datée) sur : priorité 3-gen vs chase, trade en proxy camp, gestion du 99 — aujourd'hui EXPERT OPINION non sourcée.
13. **Récupération au sol et rampement** : la jauge progresse-t-elle en rampant (wiki : « à l'arrêt ») ? Test : partie personnalisée, chronométrer 0 → 95 % immobile puis en rampant en continu. Conditionne l'arbitrage §2.8 / §7.5.
14. **Vitesse de portage et durée du ramassage** (audit : UNCERTAIN) : chronométrer un portage sur une distance mesurée ; tous les calculs de portage (ici, batch6, batch11) en dépendent.
15. **Slaughtering Strike (Shape, 9.2.0/9.2.3)** met-il au sol un survivant sain ? (lot 4 SEED-NRV) — conditionne la liste des « tueurs à coup unique » des §2.5, §2.10, §7.2.
16. **Désynchronisation SoloQ** : mesurer sur ~20 parties SoloQ la fréquence des doubles sauveteurs et le délai médian avant le premier départ vers un crochet, pour calibrer le « délai de confirmation » (§3.3) au lieu d'une valeur fixe.
17. **Gain d'un soin en secondes de chase** mesuré par tueur (M1 vs coup unique vs ranged), pour remplacer la fourchette HYPOTHESIS ~12-30 s du §2.10.

## Questions ouvertes

1. L'**Endurance** de décrochage est-elle perdue en ouvrant une porte (action voyante ?) ; Elusive est-elle annulée par une action voyante (audit : non documenté) ?
2. Le multiplicateur temporel de l'anti-camp (×1/×2/×4) continue-t-il de courir pendant la grâce de 7 s et pendant que le tueur porte un autre survivant ?
3. Nombre maximal de soigneurs simultanés : 2 (wiki) ou 3 (seed) — CONFLICT-001.
4. Rampement : 0,7 m/s constant ou montée à 1,05 m/s — CONFLICT-002 (impact sur « ramper vers un allié »).
5. La progression d'une porte lâchée régresse-t-elle dans certains cas (perks tueur type Haywire, cité par le seed, non vérifié) ?
6. Les gens requis restent-ils à 5 après une mort (l'audit dit « survivants au départ + 1 ») — à confirmer explicitement pour les fins à 3 et 2 survivants.
7. Survivor Intent System (PTB 10.2.0) : s'il sort en LIVE, les sections §3.4 et §3.5 (communication indirecte, décisions robustes) seront à réécrire ; idem pour la refonte Abandon/Surrender (PTB 10.2.0).
8. Pain Resonance révèle-t-elle la position des survivants qui crient (CONFLICT-L3P90-02) ? Cela change la décision « lâcher le gen qui explose ».
9. Les palettes ou totems réapparaissent-ils dans certains cas (perks, Pentimento pour les totems) au point de fausser la notion de « zone épuisée » ?
10. La condition du Mori de fin (« l'un en Struggle, l'autre au sol ») a-t-elle une condition de distance ou de délai non documentée dans l'audit ?