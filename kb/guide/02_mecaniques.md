# 2. Les mécaniques fondamentales

> **Version de référence : LIVE 10.1.2a (17/09/2026), mode 1v4 uniquement.** Toute valeur du PTB 10.2.0 est signalée « PTB 10.2.0 — non LIVE ». Le 2v8 n'est pas traité (il a ses propres règles : 13 gens présents, 8 requis).

Ce chapitre est le socle chiffré du guide. Chaque chapitre suivant (chase, macro, perks, tueurs) s'appuie sur les valeurs posées ici. Le but n'est pas de tout mémoriser, mais de savoir **ce qui est sûr, ce qui est approximatif et ce qui est inconnu**, et de pouvoir convertir chaque mécanique en **secondes gagnées ou perdues**.

**Comment lire les chiffres**

| Code | Sens |
|---|---|
| **(VP)** | Note de patch officielle BHVR (source primaire) |
| **(VM)** | Wiki + note officielle ou plusieurs sources concordantes |
| **(SS)** | Wiki seul (wiki.gg) : solide, mais pas primaire |
| **(INC)** | Incertain : non documenté, en conflit ou valeur communautaire |
| **calc.** | Arithmétique faite sur des valeurs sourcées ; aussi fiable que la moins fiable de ses entrées |

Étiquettes de contenu : **[FACT]** fait sourcé, **[HEURISTIQUE]** règle pratique non sourcée, **[AVIS D'EXPERT]** jugement non attribué, **[HYPOTHÈSE]** interprétation plausible, **[SITUATIONNEL]** conseil qui s'inverse selon le contexte, **[INCERTAIN]** valeur non tranchée.

> **À retenir** : l'unité de compte du guide est la **seconde-survivant** (s-surv) : 1 survivant occupé pendant 1 seconde. **1 gen solo = 90 s-surv** (VM). Toute décision se juge à son solde : secondes de réparation créées ou protégées, moins secondes consommées ou offertes au tueur.

---

## 2.1 Objectifs et conditions de victoire `[Débutant]`

### Ce que chaque camp doit produire

| Camp | Objectif mécanique | Chiffre de base | Conf. |
|---|---|---|---|
| Survivants | Réparer assez de gens pour alimenter les portes, puis sortir | 7 gens présents, **5 requis** avec 4 survivants au départ | SS |
| Survivants | Portes alimentées après (nombre de survivants **au départ** + 1) gens | 4 survivants → 5 gens | SS |
| Tueur | Sacrifier ou tuer les survivants | **3 accrochages** par survivant (le 3e tue) → 12 événements de crochet pour 4 kills | SS |

Autres tailles d'équipe au départ (SS) : 6 gens présents / 4 requis avec 3 survivants ; 5 / 3 avec 2 ; 4 / 2 avec 1.

> **Note avancée** : la règle dit « survivants **au départ** + 1 ». Si un survivant meurt en cours de partie, le nombre de gens requis ne baisse pas d'après cette formule. La confirmation explicite pour les fins à 3 ou 2 survivants manque dans les sources **[INCERTAIN]**.

### Comment une partie se termine pour un survivant

| Issue | Déclencheur | Conf. |
|---|---|---|
| **Évasion par une porte** | Porte ouverte (20 s d'interaction), puis sortie | SS |
| **Évasion par la trappe** | Elle s'ouvre seule quand il ne reste **qu'un** survivant ; aura visible de lui seul (5.3.0) | SS |
| **Sacrifice** | 3e accrochage (sacrifice immédiat) ou fin de la phase Struggle | SS |
| **Sacrifice à 2 survivants** | 2 skill checks de lutte manqués (9.1.0) ; ou tous les survivants restants accrochés en même temps (9.1.0) | VP |
| **Mori de fin** | 2 survivants vivants : l'un accroché en Struggle, l'autre au sol (9.0.0) | VP |
| **Bleed-out** | 240 s cumulées à l'état mourant | SS |
| **EGC expiré** | Fin du timer de l'Endgame Collapse | SS |
| **Mori par offrande** | Ivory / Ebony Memento Mori : tuer un / tous les survivants ayant 2 paliers de crochet, une fois au sol | SS |
| **Abandon / Surrender** | Voir 2.6 (options de fin, pas des stratégies) | VP |

> **Note avancée** : la note officielle 9.0.0 précise que lancer ce Mori de fin **déclenche immédiatement le sacrifice** des survivants accrochés en phase Struggle (VP). Le seed doutait de ce point : il est réglé.

### Le « tableau de course » `[Intermédiaire]`

**[HEURISTIQUE]** Toute partie est une course entre deux compteurs :
- les survivants doivent produire **450 s-surv** de réparation utile (5 × 90 ; moins avec Great skill checks, toolbox et perks ; plus avec la régression, les skill checks ratés et les blocages) ;
- le tueur doit produire **12 états de crochet** (moins si des phases expirent, s'il exile avec The Judgment, s'il fait saigner ou s'il obtient un Mori).

Comparer `gens finis / 5` à `états de crochet / 12` donne une lecture rapide de la partie. Cet indicateur ignore la **répartition** des crochets : 6 états répartis 2-2-1-1 ne valent pas 3-2-1 avec une mort, car une mort retire un réparateur pour toute la partie. C'est pour cela que le tunneling est rentable pour le tueur (voir chapitre macro).

**[FACT] calc.** Si un survivant est en chase en permanence et que les 3 autres réparent chacun un gen différent, **1 seconde de chase ≈ 1/30 de gen** (3 × 1/90). Le seed disait « 1/3 de gen » : c'est faux (audit A-267). Avec 2 réparateurs sur le même gen et un 3e qui « regarde », on tombe à ~1/53 de gen par seconde.

> **Erreur fréquente** : juger une chase à « ai-je survécu ? ». Une chase de 60 s terminée par un crochet peut valoir ~2 gens si 3 alliés réparent pendant ce temps ; une chase de 90 s pendant laquelle personne ne répare ne vaut presque rien.

Détail : `kb/research/batch9_macro.md` §1.

---

## 2.2 Générateurs `[Débutant → Avancé]`

### 2.2.1 Débit de réparation

| Mécanique | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Charges d'un gen | **90 charges**, +1 charge/s → **90 s en solo** | 6.1.0 (était 80 s) | VM |
| Pénalité coop | −15 % par réparateur en plus : **85 % / 70 % / 55 %** d'efficacité par personne | — | SS |
| Débit à 2 / 3 / 4 | 1,7 / 2,1 / 2,2 charges/s → **~52,9 s / ~42,9 s / ~40,9 s** | — | SS |
| Coût réel en s-surv | 90 (solo) ; 105,9 (à 2) ; 128,6 (à 3) ; 163,6 (à 4) → +18 % / +43 % / +82 % de gaspillage | calc. | — |

**QUOI** : un gen est une jauge de 90 charges. **POURQUOI** c'est important : la pénalité coop fait que 4 survivants sur un gen « brûlent » ~74 s-surv de plus qu'en solo, presque un gen entier. **QUAND** réparer à plusieurs **[SITUATIONNEL]** :
1. Finir vite un gen avancé quand le tueur arrive : un gen à 80 % (18 charges restantes) se finit en ~18 s seul, **~10,6 s à 2** (calc.). Un gen fini ne peut plus être frappé : on convertit du risque en acquis.
2. Casser un 3-gen (voir 2.2.4).
3. Dernier gen, tout le monde libre : l'horloge compte plus que le rendement.

**CONTRE** : groupé, vous offrez au tueur un deuxième blessé gratuit, et certaines perks punissent le groupement (Nowhere to Hide : auras à **24 m** du gen frappé en LIVE 10.1.0, VP ; 18 m était la valeur PTB).

> **Erreur fréquente** : l'ancien guide disait « un gen solo ≈ 80 s ». C'est **90 s depuis 6.1.0** (VM). Tous les calculs de l'ancien PDF fondés sur 80 s sont faux d'environ 11 %.

### 2.2.2 Skill checks

| Mécanique | Valeur LIVE | Conf. |
|---|---|---|
| Déclenchement | Test **1 fois par seconde**, **8 %** de chance en réparation standard | SS |
| Avec toolbox | 40 % selon le wiki, **non recoupé** | INC |
| Zones du cadran (réparation) | Great **3 %** du cadran, Good **13 %** | SS |
| Bonus Great | **+1 %** de progression (gen) ; +3 % (soin) | SS |
| Skill check raté | **−10 %** de progression **et 3 s** sans progression possible | SS |
| Coût d'un raté | 9 charges + 3 s bloquées ≈ **12 s de réparation solo** perdues | calc. |

**[FACT]** Les skill checks ratés **ne comptent pas** dans le plafond de 8 regression events : ils font toujours perdre 10 % (SS).

**[FACT] (VP, 9.6.0)** La barre de progression des interactions est **jaune** quand l'action va plus vite que la normale, **rouge** quand elle va plus lentement ; ses flèches ont trois vitesses fixes (rapide, normale, lente). C'est un signal gratuit : une barre rouge sur un gen sans raison visible trahit un effet de ralentissement (perk du tueur, Heresy, etc.).

> **À retenir** : un skill check raté coûte plus qu'un kick moins la régression qui suit (−10 % contre −5 %), et il fait du bruit. Contre les tueurs qui multiplient les skill checks, jouer la sécurité (viser le Good, pas le Great) est souvent rentable **[HEURISTIQUE]**.

### 2.2.3 Régression, coup de pied, plafond et blocage

| Mécanique | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Coup de pied (kick) | Action de **1,8 s** ; **−5 %** instantané, puis régression **−0,25 charge/s** (90 → 0 en 360 s) | 7.5.0 (−5 % ; était 2,5 %) | VM |
| Arrêter la régression | Il faut **réparer 5 %** du gen (fin du « gen tapping ») | 7.5.0 | VM |
| Plafond | **8 regression events** par gen. Un event = perte **instantanée ≥ 2,5 %** causée par le tueur (kick, perks). Pointes visibles dès le 4e event ; au 8e, le tueur **ne peut plus interagir** avec le gen | 7.5.0 | VM |
| Gen bloqué (par l'Entité) | Progression figée ; **aucune perte instantanée** tant que dure le blocage | — | SS |

Conversions (calc.) :
- Stopper la régression = 4,5 charges = **4,5 s solo** (≈ 2,6 s à 2).
- Gen frappé laissé seul 60 s : 4,5 + 60 × 0,25 = **≈ 19,5 charges ≈ 19,5 s** de réparation solo perdues.

**POURQUOI** c'est un arbitrage : un kick coûte **1,8 s** au tueur. S'il frappe un gen et part en chase ailleurs, chaque minute de régression coûte ~15 s de réparation ; s'il frappe un gen qu'un survivant reprend aussitôt, il a « payé » 1,8 s pour 4,5 charges.

> **Erreur fréquente** : « réparer brièvement suffit à stopper la régression ». Depuis **7.5.0 (30/01/2024)**, il faut **5 %** (VM). L'ancien guide datait aussi le passage à 5 % de « début 2025 » : faux.

> **Note avancée** : le plafond de 8 events borne les kicks et les perks de perte instantanée, mais **pas** la régression continue, ni les skill checks ratés. Un gen au 8e event est « protégé » des perks de kick, pas de la régression déjà lancée **[HYPOTHÈSE sur l'ordre des effets ; l'interaction exacte n'est pas détaillée dans les sources]**.

### 2.2.4 Le 3-gen `[Intermédiaire]`

**QUOI** : fin de partie où les **3 derniers gens présents sur la carte** (4 gens finis, 1 seul à faire) sont assez proches pour que le tueur les défende en marchant. Ce n'est pas une mécanique mais une **géométrie** **[AVIS D'EXPERT]**.

**POURQUOI il est mortel** : le tueur n'a plus de trajet. Chaque kick coûte 1,8 s, retire 5 %, et il revient avant que les 5 % nécessaires pour stopper la régression soient réparés (VM). Avec 8 events par gen, la partie peut durer très longtemps.

**QUAND il se décide** **[HEURISTIQUE]** : **avant**. À 3 gens restants, il reste 5 gens sur la carte ; le choix des 2 prochains gens finis fixe le triangle final.

**COMMENT le prévenir** **[HEURISTIQUE]** :
- repérer dès le début le groupe de gens le plus serré et en attaquer au moins un tôt ;
- se demander à chaque gen : « si on finit celui-ci, quels 3 restent ? » ; si c'est un triangle serré, changer de gen ;
- laisser les gens isolés, en bord de carte, pour la fin.

**CONTRE** : plus urgent contre les tueurs lents sans mobilité et ceux qui ralentissent par kick ou blocage ; moins important contre un tueur très mobile (Nurse, Blight, Hillbilly…), pour qui la distance entre gens protège peu **[SITUATIONNEL]**.

**CAS D'ÉCHEC** : le 3-gen est déjà formé. Alternatives : **split pressure** (deux survivants sur deux gens différents du triangle pendant qu'un troisième tient la chase : le tueur ne peut pas frapper deux gens à la fois) ou duo sur le gen le plus avancé quand le tueur est engagé loin **[SITUATIONNEL]**.

### 2.2.5 Continuer ou lâcher un gen

**[HEURISTIQUE]** Comparer le **temps pour finir** (charges restantes / débit) au **temps d'arrivée du tueur**. Un tueur à 4,6 m/s qui entre dans un rayon de terreur de 32 m vous atteint en ~7 s s'il vient droit sur vous ; ~5 s pour 24 m à 4,4 m/s (calc. ; rayons « d'origine », avec beaucoup d'exceptions, SS).
- Fin < arrivée − 2 s (marge pour un skill check et la fuite) → **finir**.
- Sinon → **lâcher avant d'être vu**, dans la direction opposée, vers une ressource de chase.
- Exception : tueur furtif (pas de rayon de terreur fiable) → le TR ne vous protège pas.

> **Exercice** `[Intermédiaire]` : pendant 5 parties, à chaque arrivée du TR sur votre gen, annoncez à voix haute « je finis » ou « je lâche » **avant** de regarder le pourcentage, puis notez si vous avez été touché. Objectif : zéro coup reçu sur un gen lâché trop tard.

Détail : `kb/research/batch9_macro.md` §2.1-2.2, §2.11 ; `kb/research/batch6_chase_tech.md` §1.5.

---

## 2.3 Crochets `[Débutant → Expert]`

### 2.3.1 Phases, mort, accrochage

| Mécanique | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Durée d'une phase | **70 s** par phase : Summoning 100 → 51 %, Struggle 50 → 1 % | 8.2.0 (était 60 s) | VP |
| Mort | 3e accrochage = **sacrifice immédiat** ; fin de la phase Struggle = sacrifice | — | SS |
| Accrocher / décrocher | **1,5 s** / **1 s** | — | SS |
| Affichage | Le timer de crochet est divisé en **deux barres** (clarifie le 2e palier et les déclencheurs de mort) | 10.1.0 | VP |
| Wiggle (porté) | **16 s** cumulées si tous les tests de wiggle sont réussis ; lâcher le survivant = +25 % de jauge (libre au plus tard au 4e lâcher) | — | SS |
| Vitesse du tueur qui porte | 3,68 m/s | — | **INC** (l'audit la classe « non suffisamment vérifiée ») |
| Durée du ramassage | Non documentée | — | INC |

```
Premier accrochage                     Deuxième accrochage          Troisième
|---- Phase 1 : 70 s ----|---- Phase 2 (Struggle) : 70 s ----|      = mort immédiate
 100 %              51 % | 50 %                           1 % → sacrifice
         sauvetage ici = on garde la phase 2 intacte
```

**[FACT] calc.** Laisser un allié atteindre la fin de sa phase 1 donne au tueur un état de crochet **gratuit**. Le sauver à 60 s plutôt qu'à 75 s lui garde une phase entière.

> **À retenir** : un sauvetage n'est pas « le plus tôt possible » ni « le plus tard possible » : il doit tomber **avant la fin de la phase** et **quand le tueur est engagé ailleurs**.

### 2.3.2 Lutte et auto-décrochage (9.0.0 / 9.1.0)

| Règle | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Auto-décrochage (Attempt Unhook) | Disponible **uniquement** si : 2 survivants restants ; ou Luck augmentée par une offrande ; ou perk Slippery Meat ou Up the Ante | 9.0.0 | VP |
| Auto-décrochage garanti | Deliverance (après un décrochage sûr), Wicked (au sous-sol), jauge anti-camp pleine | — | SS |
| Chance de base | **4 %** par tentative, **3 tentatives** max, chaque échec retire **20 s** au palier | 9.0.0 | VM |
| Lutte à plus de 2 survivants | Skill checks de lutte **sans chance d'évasion ni pénalité** ; laisser passer 2 checks ne tue plus | 9.0.0 | VP |
| Lutte à 2 survivants | Laisser passer **2 skill checks de lutte = sacrifice immédiat** | 9.1.0 | VP |
| Tous accrochés | À 2 survivants, si **tous les survivants restants sont accrochés en même temps** → tous sacrifiés | 9.1.0 | VP |
| Nombre de checks par phase | 11 selon le wiki | — | SS |

Calcul utile (calc., à partir de 4 % et des offrandes de Luck +1/2/3 %) : avec une Ivory Chalk Pouch (+3 %), **7 % par essai ≈ 20 %** de réussite sur 3 essais (1 − 0,93³), pour un coût de 60 s de palier si tout échoue. Sans Luck, à 2 survivants : 4 % par essai ≈ **11,5 %** sur 3 essais.

**[HEURISTIQUE]** Chaque échec raccourcit la fenêtre de sauvetage de vos alliés de 20 s. Tentez seulement quand personne ne vient (HUD, auras), pas dès l'accrochage.

*PTB 10.2.0 — non LIVE : Slippery Meat refondue sans Luck.*

### 2.3.3 Anti-camp (jauge Resolve) `[Avancé]`

| Élément | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Zone | **Rayon de 16 m** autour du crochet | 7.3.0 ; 16 m rétabli en 9.3.0 (le PTB avait testé 20 m) | VM |
| Jauge | 100 charges | 7.3.0 | SS |
| Poids selon la distance | 4 m **×2,5** ; 10 m **×1** ; 15 m **×0,375** ; 16 m **×0** | 7.3.0 | SS |
| Poids selon la durée de présence | 0-10 s **×1** ; 10-20 s **×2** ; > 20 s **×4** | 9.3.0 | VP |
| Accumulation du multiplicateur | Seulement quand le tueur est considéré comme campant (la jauge progresse) ; remis à zéro au décrochage | 9.3.0 | VP |
| Taux de base | Réduit « d'environ 50 % » en 9.3.0 en contrepartie ; **valeur absolue inconnue** (le wiki donne +1 charge/s, sans date sûre) | 9.3.0 | VP (réduction) / **INC** (valeur) |
| Grâce | **7 s** de pause de la jauge pour **tous** les survivants accrochés à chaque nouvel accrochage (avant : seulement le dernier accroché) | 9.3.0 | VP |
| Ralentissement | Remplissage ralenti par les **autres survivants à moins de 16 m** | 7.3.0 | SS |
| Pauses et arrêt | En pause si le tueur **porte** un survivant ; **désactivé dès que les portes sont alimentées** | — | SS |
| Visibilité | Jauge visible des autres survivants accrochés | 9.3.0 | VP |
| Jauge pleine | Tentative d'auto-décrochage **garantie** | 7.3.0 | SS |

```
            Poids de présence du tueur selon la distance au crochet
  0 m ──── 4 m ──────── 10 m ─────── 15 m ─ 16 m ─────────────── 30 m
  [ ×2,5 ]   [   ×1   ]   [ ×0,375 ]  [×0]   [ aucune jauge : proxy camp ]
  └────────── face camp ──────────┘ └ zone grise ┘
```

**QUOI** : un système qui libère l'accroché si le tueur reste tout près de lui. **POURQUOI** il ne règle pas tout : il ne s'intéresse qu'aux 16 m et ne se déclenche plus une fois les portes alimentées.

**QUAND il vous aide** : face camp (tueur immobile à < ~10 m). La jauge accélère (×2 après 10 s, ×4 après 20 s de présence). **Ne restez pas dans les 16 m** : votre présence **ralentit** la jauge (SS) et vous offre en cible. Réparez.

**QUAND il ne sert à rien** :
- **Proxy camp** (tueur à 16-30 m qui patrouille entre crochet et gens proches) : **zéro remplissage** au-delà de 16 m.
- **Zone grise 10-16 m** : un tueur qui oscille à 12-15 m obtient l'essentiel d'un face camp en ne payant presque rien (×1 à ×0,375) **[HEURISTIQUE : traitez-le comme un proxy camp]**.
- **Portes alimentées** : jauge coupée ; un camp de fin de partie est mécaniquement « légitime ».

> **Erreur fréquente** : « contre un proxy camp, l'anti-camp finira par décrocher l'allié » (ancien guide, audit A-283). **Faux** : au-delà de 16 m, la jauge ne bouge pas.

> **Erreur fréquente** : « le face camp est inutile au-delà de ~20 s ». **Non vérifiable** : sans le taux de base, aucun temps de remplissage ne se calcule (CONFLICT-003).

**CAS D'ÉCHEC** : attendre que le système travaille alors que le tueur proxy camp ; ou entrer à 6 m pour une perk (Reassurance) sans compter que vous ralentissez la jauge et devenez une cible.

**[HYPOTHÈSE]** Le multiplicateur de durée n'accumulant que « quand la jauge progresse », il ne devrait pas courir pendant la grâce de 7 s ni pendant un portage (jauge en pause). Ce n'est pas écrit explicitement dans les notes.

**Coût du camp pour le tueur** (calc.) : chaque seconde immobile au crochet cède **3 s-surv** si 3 survivants réparent hors de sa zone. Un camp de 60 s ≈ 2 gens. Contre-cas : accroché en phase 2, ou partie déjà gagnée → le camp est rentable pour lui **[SITUATIONNEL]**.

> **Exercice** `[Avancé]` : en partie personnalisée avec un ami tueur, chronométrez le remplissage de la jauge à 4 m puis à 10 m, sans autre survivant proche. Vous produirez la seule mesure qui manque au guide (taux de base post-9.3.0). Notez la date et le patch.

### 2.3.4 Crochets détruits, sabotage, sous-sol

| Mécanique | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Crochet détruit après un sacrifice | Réapparaît **60 s** plus tard | 8.1.0 | SS |
| Sabotage | **3 s** ; réparation automatique **30 s** | 3.6.0 | SS |
| Sous-sol | **4 crochets indestructibles et insabotables**, 1 coffre, 6 casiers | 6.4.0 (casiers) | SS |
| Libération du porté | Tout étourdissement ou aveuglement du porteur libère le survivant | — | SS |

**[HEURISTIQUE]** Un sabotage n'a de valeur que s'il allonge réellement le portage au-delà de ce que le wiggle laisse (16 s). La géographie des crochets change pendant 60 s après chaque sacrifice : c'est à ce moment qu'un sabotage rapporte le plus.

### 2.3.5 Fins à 2 survivants `[Expert]`

Toutes les règles ci-dessous sont **[FACT] (VP)** :
- auto-décrochage possible (4 %, 3 essais) ;
- 2 checks de lutte manqués = sacrifice ;
- tous les survivants restants accrochés en même temps = sacrifice ;
- Mori possible si l'un est accroché en Struggle et l'autre au sol, et ce Mori **sacrifie aussi l'accroché**.

**Conséquence [HEURISTIQUE]** : à 2, **ne jamais être mis au sol pendant que l'allié est en Struggle**, où que vous soyez (aucune condition de distance n'est documentée). Tenter le sauvetage seulement si le tueur est engagé loin ; sinon la trappe ne s'ouvrira qu'à la mort de l'autre. Jouer la trappe quand le sauvetage est impossible n'est pas « égoïste » **[AVIS D'EXPERT]**.

Détail : `kb/research/batch9_macro.md` §2.4-2.6, §6.4 ; notes officielles 9.0.0 (510), 9.1.0 (516), 9.3.0 (529).

---

## 2.4 Protections de décrochage (10.1.0) et tunneling `[Intermédiaire]`

### 2.4.1 Ce que donne un décrochage aujourd'hui

| Effet | Valeur LIVE 10.1.0 | Après alimentation des portes | Conf. |
|---|---|---|---|
| **Endurance** | 10 s | **Reste active** | VP |
| **Haste 10 %** | 10 s | **Reste active** | VP |
| **Elusive** (nouveau) | 10 s | **Ne s'applique plus** | VP |

Historique (VM) : 6.1.0 : 5 s, Haste 7 % → 6.2.0 : 10 s, 10 % → 9.3.0 : 15 s → **10.1.0 : 10 s + Elusive**.

> **Erreur fréquente** : « les protections de décrochage sont inactives une fois les portes alimentées » (ancien guide, audit A-074). **Seule Elusive disparaît** ; Endurance et Haste restent (VP).

### 2.4.2 Comment on les perd

| Effet | Perdu quand | Conf. |
|---|---|---|
| Endurance | Toute **action voyante** (*conspicuous action* : réparer, soigner, etc.) ; inopérante si le survivant est déjà sous Deep Wound | SS |
| Haste de décrochage | Même règle que l'Endurance selon la presse du PTB 6.1.0 | SS (source ancienne) |
| Elusive | Survivant frappé (attaque de base ou spéciale) ou mis au sol | SS |
| Elusive et action voyante | **Rien n'est documenté** | **INC** |

La liste exacte des actions « voyantes » n'est pas publiée **[INCERTAIN]** ; ouvrir une porte en fait-il partie ? Inconnu.

### 2.4.3 Utiliser la fenêtre de 10 s

**QUOI** : 10 s pendant lesquelles un coup vous met en Deep Wound au lieu de vous mettre au sol, vous courez 10 % plus vite, et le tueur ne voit ni vos griffures, ni vos flaques, ni votre aura (Elusive).

**COMMENT [HEURISTIQUE]** : **casser la ligne de vue et changer de direction**, pas courir tout droit (Elusive ne vous rend pas invisible). **Aucune action voyante** pendant l'Endurance. Aller vers des tiles, pas vers un gen.

**CONTRE** : un tueur qui revient immédiatement vous voit encore s'il a la ligne de vue ; les pouvoirs à distance ne sont pas bloqués par Elusive.

**CAS D'ÉCHEC** : se soigner ou réparer dans les 10 s (perte de l'Endurance) ; courir en ligne droite dans le champ du tueur.

### 2.4.4 Ce qui n'existe pas en LIVE

**[FACT] (VP)** Aucun système anti-tunnel ou anti-slug complet n'est sorti : testé au PTB 9.2.0 (reporté) puis au PTB 9.3.0 (« Reverted » : protection de 30 s, jauge de relevé de 120 s, bonus de crochets uniques). Les perks anti-tunnel restent les outils : **Will to Live** (ex-Decisive Strike ; stun 4 s, actif 40/50/60 s après un décrochage, désactivé portes alimentées et après usage, SS), **Off the Record** (30/35/40 s avec Endurance, SS via note 9.2.2), Babysitter, Deliverance (Broken 160/140/120 s depuis 10.1.0, VP). Borrowed Time : rework PTB 10.2.0 — non LIVE.

### 2.4.5 Le cas The Judgment (Exile)

**[FACT] (VP, 10.1.0)** L'**Exile** compte comme un état de crochet **sans déclencher les perks de crochet** ; il tue si le survivant a déjà 2 états. Seeds of Punishment : −3 s de timer. Chaque Exiled Soul ajoute +0,5 s aux protections de décrochage (10 max) ; elles n'en donnent plus une fois tous les gens réparés. Les survivants libérés de l'Exile réapparaissent à ≥ 32 m (10.1.2). L'application des protections de base à une libération d'Exile n'est pas vérifiée **[INCERTAIN]** : jouez comme si elles ne s'appliquaient pas.

Détail : `kb/research/batch9_macro.md` §2.7 ; note officielle 10.1.0.

---

## 2.5 Soins `[Débutant → Avancé]`

### 2.5.1 Valeurs de base

| Mécanique | Valeur LIVE | Conf. |
|---|---|---|
| Soin d'un état de santé | **16 charges**, +1 charge/s → **16 s** | SS |
| Soigneurs simultanés | **2 max** selon le wiki (+2 c/s sans pénalité) ; 3 selon l'ancien guide | **INC** (CONFLICT-001) |
| Auto-soin | Exige un Med-Kit ou une perk (Self-Care). Avec Med-Kit : vitesse **−33 %**, efficacité de l'objet −33 % | SS |
| Durée d'un auto-soin au kit | ≈ 24 s (16 / 0,67, si le −33 % s'applique simplement) | calc. sur hypothèse |
| Med-Kits | **24 charges** pour tous ; bonus de soin altruiste : Camping +35 %, First Aid +40 %, Emergency +45 %, Ranger +50 % | SS |
| Bonus Great (soin) | +3 % | SS |
| Soin interrompu | Progression conservée (sauf Haemorrhage) | SS |

> **Note avancée** : depuis 9.6.0, le bonus de base d'un kit **peut** entrer dans les Diminishing Returns avec une perk qui donne le même bonus ; seul l'**add-on** y échappe sûrement (voir 2.8).

### 2.5.2 Les statuts qui touchent le soin

| Statut | Effet | Patch | Conf. |
|---|---|---|---|
| **Mangled** | Soin **25 % plus long** (vitesse −20 %) ; ne s'applique qu'au passage de blessé à sain | — | SS |
| **Haemorrhage** | Plus de flaques de sang ; la progression de soin partielle se **perd à −7 %/s** quand on arrête | — | SS |
| **Deep Wound** | Timer **20 s**, en pause en courant ou pendant le mending ; à zéro → état mourant. **Mending : 10 s seul, 6 s par un allié** (8.6.0 ; avant 12 s et 8 s). Un dégât sous Deep Wound = état mourant, l'Endurance ne protège pas | 4.5.0 (timer unifié) / 8.6.0 | VP |
| **Broken** | Impossible d'être soigné au-delà de blessé | — | SS |
| **Impaled** (The Slasher) | Survivant touché par une Hook Spike : ne peut pas être soigné au-delà de blessé ; l'aura de la pique plantée est visible du tueur. Blessé + pique + mur → Impaled **et** Immobilized | 10.0.0 | VP |

Add-ons de kit modifiés en 9.3.0 (VP) : **Styptic Agent** ne donne plus d'Endurance, n'est plus consommé, +15 % d'efficacité en auto-soin ; **Anti-Exhaustion Syringe** (nom LIVE depuis 9.3.0, confirmé par l'errata) retire l'Exhaustion et consomme le kit (action secondaire).

### 2.5.3 Le prix d'un soin et ce qu'il rapporte `[Avancé]`

| Soin | Coût | Base |
|---|---|---|
| Altruiste, sans objet | 16 s × 2 survivants = **32 s-surv ≈ 0,36 gen** (+ déplacements) | calc. |
| Auto-soin au kit | ≈ 24 s + charges du kit | calc. sur hypothèse |
| Altruiste sous Mangled | ≈ 40 s-surv | calc. |
| Mending (Deep Wound) | 10 s seul, ou 6 s × 2 = 12 s-surv avec un allié | VP |

**Ce que rapporte un état de santé [HYPOTHÈSE]** : au minimum un coup de plus pour le tueur (cooldown 2,7 s après un coup réussi, VM ; boost au coup de 1,8 s pour le survivant, VP pour la durée) et une nouvelle phase de rattrapage : ordre de grandeur **~12-30 s de chase**, très dépendant des tiles. Avec 3 réparateurs, cela vaut ~36-90 s-surv contre 32 s-surv de soin : **rentable dans le cas idéal** ; avec 2 réparateurs, **proche de l'équilibre** ; perdant si le trajet s'ajoute ou si le tueur a un coup unique.

| Contexte | Décision par défaut [HEURISTIQUE] | Exception |
|---|---|---|
| Tueur à coup unique fréquent | Soin souvent non rentable | Utile contre ses M1 |
| Tueur à blessure à distance ou à statut | Ne pas soigner par réflexe | — |
| Gen > ~70 %, tueur loin | Finir le gen, soigner après | Si le tueur arrive, lâcher |
| Adrenaline dans l'équipe (Match Details) | Le porteur ne se soigne pas au dernier gen | Terminus : Broken portes alimentées, Adrenaline ne soigne plus (SS, lot 3) |
| TR qui arrive pendant le soin | Arrêter et partir | Soin presque fini → finir |
| 2 blessés, forte pression | Un seul soin, le plus utile | Zéro soin, gens à fond |
| 2 survivants restants | Soin presque toujours rentable | Trappe ou porte proche |

> **Erreur fréquente** : « je cours aussi vite blessé, donc ce n'est pas grave ». Vrai pour la vitesse (SS : aucune différence), faux pour le coût : un blessé grogne, saigne, et le prochain coup le met au sol.

> **Exercice** `[Intermédiaire]` : sur 10 parties, notez chaque soin reçu ou donné et s'il a servi (le soigné a-t-il ensuite encaissé un coup en chase ?). Objectif : réduire la part des soins « non encaissés ».

Détail : `kb/research/batch9_macro.md` §2.10 ; `kb/research/batch6_chase_tech.md` §4.4 ; `kb/research/batch5_items.md` §2.2.

---

## 2.6 État mourant, slug, récupération au sol, Abandon `[Intermédiaire]`

### 2.6.1 Valeurs

| Mécanique | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Bleed-out | **240 s** cumulées | — | SS |
| Récupération au sol | **Automatique** (plus besoin de maintenir la touche) ; le wiki précise « **à l'arrêt** » | 9.2.0 | VM |
| Plafond de récupération | **95 %**, à 50 % de la vitesse de soin → **30,4 s** | 9.2.0 | VM |
| Relevage complet seul | Seulement via une perk (touche Interact quand disponible) | 9.2.0 | VP |
| Auto-relève de base | **Inexistante en LIVE** (PTB 9.2.0 à 90 s et PTB 9.3.0 à 120 s annulés) | — | VP |
| Rampement | **0,7 m/s** (le wiki affiche une montée à 1,05 m/s, valeur d'un PTB annulé) | — | VM (0,7) / **INC** (1,05) |
| Durée du relevage par un allié | Non documentée dans les sources | — | INC |

### 2.6.2 Abandon et Surrender

| Option | Condition LIVE | Patch | Conf. |
|---|---|---|---|
| **Surrender** | Tous les survivants sont au sol | 8.6.0 | VP |
| **Abandon** | Disponible au **3e passage au sol** après avoir été relevé ou soigné de l'état mourant **2 fois** | 9.2.0 | VP |
| Détection du « going next » | Un survivant qui meurt volontairement tôt reçoit une pénalité de déconnexion et perd un grade complet | 9.0.0 | VP |

*PTB 10.2.0 — non LIVE : refonte d'Abandon / Surrender.*

### 2.6.3 Ramper ou récupérer ?

**QUOI** : au sol, vous avez deux options qui s'excluent probablement : ramper, ou rester immobile pour récupérer.

**POURQUOI c'est un arbitrage** : la récupération se fait « à l'arrêt » selon le wiki (SS) ; ramper la suspend **probablement** **[HYPOTHÈSE, à tester]**.

**QUAND [SITUATIONNEL]** :
- **ramper** vers un coéquipier ou une zone couverte si cela rapproche réellement un sauveteur ou vous sort de la vue du tueur ; jamais vers un gen occupé, un cul-de-sac ou le crochet le plus proche ;
- **rester immobile** si le tueur est parti loin et qu'un allié arrive déjà : relevé à 95 %, il finit plus vite ;
- **ne pas alterner au hasard** : chaque changement perd du temps des deux côtés.

**CONTRE (côté tueur)** : le slug est rentable quand plusieurs survivants sont proches (relever coûte du temps et attire un sauveteur).

**CAS D'ÉCHEC** : deux sauveteurs viennent ensemble sous les yeux du tueur ; ou le dernier debout se fait prendre en chase alors que tout le monde est au sol.

> **Erreur fréquente** : croire à une « auto-relève » de base. Elle n'existe pas en LIVE : sans perk (Unbreakable, Boon: Exponential…), vous plafonnez à 95 %.

> **Exercice** `[Débutant]` : en partie personnalisée, chronométrez 0 → 95 % immobile, puis en rampant en continu. Vous saurez si ramper suspend vraiment la jauge (point encore ouvert dans le guide).

Détail : `kb/research/batch9_macro.md` §2.8 ; note officielle 9.2.0 (523).

