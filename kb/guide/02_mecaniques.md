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

Comparer `gens finis / 5` à `états de crochet / 12` donne une lecture rapide de la partie. Cet indicateur ignore la **répartition** des crochets : 6 états répartis 2-2-1-1 ne valent pas 3-2-1 avec une mort, car une mort retire un réparateur pour toute la partie. C'est pour cela que le tunneling est rentable pour le tueur (voir chapitre 6).

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
| Vitesse du tueur qui porte | **3,68 m/s** (92 %), valeur fixe pour tous les tueurs selon le wiki ; aucune note officielle ne la contredit | — | SS (lot 12) |
| Durée du ramassage | Non documentée ; seul le **bonus** de vitesse de ramassage est plafonné (**+42 %**, 8.6.x) | 8.6.x | INC (durée) / SS (plafond) |

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
| Poids selon la distance | 4 m **×2,5** ; 10 m **×1** ; 15 m **×0,375** ; 16 m **×0** (avant 9.3.0 : ×5 / ×2 / ×0,75 / ×0,5 : chaque poids a été divisé par 2) | 9.3.0 | SS (lot 12) |
| Poids selon la durée de présence | 0-10 s **×1** ; 10-20 s **×2** ; > 20 s **×4** | 9.3.0 | VP |
| Accumulation du multiplicateur | Seulement quand le tueur est considéré comme campant (la jauge progresse) ; remis à zéro au décrochage | 9.3.0 | VP |
| Taux de base | **+1 charge/s**, multiplié par les poids de distance ci-dessus. La réduction « d'environ 50 % » (VP) a été appliquée aux poids : l'historique du wiki montre +1 c/s avant et après 9.3.0, avec des poids divisés par 2 | 9.3.0 | VP (réduction) / SS (valeurs, lot 12) |
| Temps de remplissage (calc.) | Tueur immobile, aucun autre survivant dans les 16 m : **≤ 4 m ≈ 22,5 s** de jauge (**≈ 29,5 s** après l'accrochage avec la grâce) ; **10 m ≈ 37,5 s** ; **15 m ≈ 79 s**. Avant 9.3.0 : 20 s / 50 s / ≈ 133 s. Marge ±10 % (« roughly ») | 9.3.0 | SS (calcul, lot 12) |
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

**QUAND il vous aide** : face camp (tueur immobile à < ~10 m). La jauge accélère (×2 après 10 s, ×4 après 20 s de présence). **Sauf raison précise (sauvetage imminent, perk qui l'exige), ne restez pas dans les 16 m** : votre présence **ralentit** la jauge (SS) et vous offre en cible. Réparez plutôt **[HEURISTIQUE]**.

**QUAND il ne sert à rien** :
- **Proxy camp** (tueur à 16-30 m qui patrouille entre crochet et gens proches) : **zéro remplissage** au-delà de 16 m.
- **Zone grise 10-16 m** : un tueur qui oscille à 12-15 m obtient l'essentiel d'un face camp en ne payant presque rien (×1 à ×0,375) **[HEURISTIQUE : traitez-le comme un proxy camp]**.
- **Portes alimentées** : jauge coupée ; un camp de fin de partie est mécaniquement « légitime ».

> **Erreur fréquente** : « contre un proxy camp, l'anti-camp finira par décrocher l'allié » (ancien guide, audit A-283). **Faux** : au-delà de 16 m, la jauge ne bouge pas.

> **Erreur fréquente** : « le face camp est inutile au-delà de ~20 s ». **Faux depuis 9.3.0** : à moins de 4 m, la jauge se remplit en ≈ 22,5 s de présence, soit ≈ 29,5 s après l'accrochage (SS, calcul ±10 % ; CONFLICT-003 résolu le 27/09/2026).

**CAS D'ÉCHEC** : attendre que le système travaille alors que le tueur proxy camp ; ou entrer à 6 m pour une perk (Reassurance) sans compter que vous ralentissez la jauge et devenez une cible.

**[FACT] (VP, lecture directe)** Le multiplicateur de durée n'accumule que « quand la jauge progresse » : il ne court donc ni pendant la grâce de 7 s ni pendant un portage (jauge en pause). Les temps ci-dessus reposent sur cette règle.

**Coût du camp pour le tueur** (calc.) : chaque seconde immobile au crochet cède **3 s-surv** si 3 survivants réparent hors de sa zone. Un camp de 60 s ≈ 2 gens. Contre-cas : accroché en phase 2, ou partie déjà gagnée → le camp est rentable pour lui **[SITUATIONNEL]**.

> **Exercice** `[Avancé]` : en partie personnalisée avec un ami tueur, chronométrez le remplissage de la jauge à 4 m puis à 10 m, sans autre survivant proche. Comparez à ≈ 22,5 s et ≈ 37,5 s (après la grâce de 7 s) : c'est la seule façon de vérifier le « roughly 50 % ». Notez la date et le patch.

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

**Conséquence [HEURISTIQUE]** : à 2, **évitez autant que possible d'être mis au sol pendant que l'allié est en Struggle**, où que vous soyez (aucune condition de distance n'est documentée) : le risque est un double sacrifice immédiat. Tenter le sauvetage seulement si le tueur est engagé loin ; sinon la trappe ne s'ouvrira qu'à la mort de l'autre. Jouer la trappe quand le sauvetage est impossible n'est pas « égoïste » **[AVIS D'EXPERT]**.

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
| Elusive et action voyante | **Non tranché** : la page wiki Hooks l'annule avec les autres protections, la page Elusive ne cite que le coup et la mise au sol ; notes 10.1.0 muettes. Jouez comme si une action voyante l'annulait | **INC** (CONFLICT-L12-04) |

Actions voyantes selon le wiki (SS) : bénir ou purifier un totem, soigner (soi ou un autre), **ouvrir une porte de sortie**, Invocation, réparer, saboter un crochet, décrocher un allié. Le texte officiel ne publie pas de liste.

### 2.4.3 Utiliser la fenêtre de 10 s

**QUOI** : 10 s pendant lesquelles un coup vous met en Deep Wound au lieu de vous mettre au sol, vous courez 10 % plus vite, et le tueur ne voit ni vos griffures, ni vos flaques, ni votre aura (Elusive).

**COMMENT [HEURISTIQUE]** : **casser la ligne de vue et changer de direction**, pas courir tout droit (Elusive ne vous rend pas invisible). **Aucune action voyante** pendant l'Endurance. Aller vers des tiles, pas vers un gen.

**CONTRE** : un tueur qui revient immédiatement vous voit encore s'il a la ligne de vue ; les pouvoirs à distance ne sont pas bloqués par Elusive.

**CAS D'ÉCHEC** : se soigner ou réparer dans les 10 s (perte de l'Endurance) ; courir en ligne droite dans le champ du tueur.

### 2.4.4 Ce qui n'existe pas en LIVE

**[FACT] (VP)** Aucun système anti-tunnel ou anti-slug complet n'est sorti : testé au PTB 9.2.0 (reporté) puis au PTB 9.3.0 (« Reverted » : protection de 30 s, jauge de relevé de 120 s, bonus de crochets uniques). Les perks anti-tunnel restent les outils : **Will to Live** (ex-Decisive Strike ; stun 4 s, actif 40/50/60 s après un décrochage, désactivé portes alimentées et après usage, SS), **Off the Record** (30/35/40 s avec Endurance, VM via note 9.2.2 ; **probablement désactivée portes alimentées** selon le texte wiki réécrit le jour de la 9.2.2, sans note officielle : INC), Babysitter, Deliverance (Broken 160/140/120 s depuis 10.1.0, VP). Borrowed Time : rework PTB 10.2.0 — non LIVE.

### 2.4.5 Le cas The Judgment (Exile)

**[FACT] (VP, 10.1.0)** L'**Exile** compte comme un état de crochet **sans déclencher les perks de crochet** ; il tue si le survivant a déjà 2 états. Seeds of Punishment : −3 s de timer. Chaque Exiled Soul ajoute +0,5 s aux protections de décrochage (10 max) ; elles n'en donnent plus une fois tous les gens réparés. Les survivants libérés de l'Exile réapparaissent à ≥ 32 m (10.1.2). L'application des protections de base à une libération d'Exile n'est pas vérifiée **[INCERTAIN]** : jouez comme si elles ne s'appliquaient pas.

Détail : `kb/research/batch9_macro.md` §2.7 ; note officielle 10.1.0.

---

## 2.5 Soins `[Débutant → Avancé]`

### 2.5.1 Valeurs de base

| Mécanique | Valeur LIVE | Conf. |
|---|---|---|
| Soin d'un état de santé | **16 charges**, +1 charge/s → **16 s** | SS |
| Soigneurs simultanés | **2 max en 1v4** (+2 c/s combinés). Le passage à **3** (9.4.0 / 9.4.2) figure dans la section **2v8** des notes : règle du mode 2v8 seulement | VM (CONFLICT-001 résolu) |
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

**Ce que rapporte un état de santé [HYPOTHÈSE]** : au minimum un coup de plus pour le tueur (cooldown 2,7 s après un coup réussi, VM ; boost au coup de 1,8 s pour le survivant, VM pour la durée) et une nouvelle phase de rattrapage : ordre de grandeur **~12-30 s de chase**, très dépendant des tiles. Avec 3 réparateurs, cela vaut ~36-90 s-surv contre 32 s-surv de soin : **rentable dans le cas idéal** ; avec 2 réparateurs, **proche de l'équilibre** ; perdant si le trajet s'ajoute ou si le tueur a un coup unique.

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
| Rampement | **0,7 m/s constante**. La montée à 1,05 m/s affichée par le wiki vient du paquet anti-slug : « Postponed » en 9.2.0, « Reverted » en 9.3.0 | 9.3.0 | VM (CONFLICT-002 résolu) |
| Récupérer en rampant | **Impossible** sans perk : la récupération se met en pause dès que vous rampez. Tenacity la rend possible (9.3.0) | 9.3.0 | VM |
| Durée du relevage par un allié | 1 état de santé = 16 charges à +1 c/s → **16 s** seul sans kit, **8 s** à deux, moins ce que le survivant a déjà récupéré (à 95 % : **< 1 s**) | — | SS (calcul, lot 12) |

### 2.6.2 Abandon et Surrender

| Option | Condition LIVE | Patch | Conf. |
|---|---|---|---|
| **Surrender** | Tous les survivants sont au sol | 8.6.0 | VP |
| **Abandon** | Disponible au **3e passage au sol** après avoir été relevé ou soigné de l'état mourant **2 fois** | 9.2.0 | VP |
| Détection du « going next » | Un survivant qui meurt volontairement tôt reçoit une pénalité de déconnexion et perd un grade complet | 9.0.0 | VP |

*PTB 10.2.0 — non LIVE : refonte d'Abandon / Surrender.*

### 2.6.3 Ramper ou récupérer ?

**QUOI** : au sol, vous avez deux options qui s'excluent : ramper, ou rester immobile pour récupérer.

**POURQUOI c'est un arbitrage** : la récupération ne progresse qu'à l'arrêt ; ramper la met en pause (VM : wiki + note 9.3.0 qui rend cette capacité à Tenacity seulement). Le PTB 9.3.0 l'avait écrit en toutes lettres : il faut « choisir entre rester immobile pour récupérer, ou ramper pour que le tueur ne vous trouve pas ».

**QUAND [SITUATIONNEL]** :
- **ramper** vers un coéquipier ou une zone couverte si cela rapproche réellement un sauveteur ou vous sort de la vue du tueur ; évitez en général de ramper vers un gen occupé, un cul-de-sac ou le crochet le plus proche (vous y attirez le tueur) ;
- **rester immobile** si le tueur est parti loin et qu'un allié arrive déjà : relevé à 95 %, il finit plus vite ;
- **ne pas alterner au hasard** : chaque changement perd du temps des deux côtés.

**CONTRE (côté tueur)** : le slug est rentable quand plusieurs survivants sont proches (relever coûte du temps et attire un sauveteur).

**CAS D'ÉCHEC** : deux sauveteurs viennent ensemble sous les yeux du tueur ; ou le dernier debout se fait prendre en chase alors que tout le monde est au sol.

> **Erreur fréquente** : croire à une « auto-relève » de base. Elle n'existe pas en LIVE : sans perk (Unbreakable, Boon: Exponential…), vous plafonnez à 95 %.

> **Exercice** `[Débutant]` : en partie personnalisée, chronométrez 0 → 95 % immobile (≈ 30,4 s attendues), puis vérifiez que la jauge s'arrête dès que vous rampez.

Détail : `kb/research/batch9_macro.md` §2.8 ; note officielle 9.2.0 (523).

---

## 2.7 Statuts : glossaire complet et interactions `[Débutant → Avancé]`

Définitions LIVE, d'après la page wiki.gg « Status Effects » (SS) sauf mention. Les statuts liés à un seul tueur sont signalés.

### 2.7.1 Glossaire

| Statut | Porté par | Définition courte | Précisions | Conf. |
|---|---|---|---|---|
| **Blessed** | Survivant | Dans la zone d'un Boon (24 m) | Voir 2.10.3 | SS |
| **Blindness** | Les deux rôles | Ne lit **aucune aura**, y compris les auras de base | Contre-intuitif : touche aussi les auras données par les perks | SS |
| **Bloodlust** | Tueur | Vitesse croissante en poursuite prolongée : 15 s → +0,2 m/s ; 25 s → +0,4 ; 35 s → +0,6 | Perdue en cassant une palette, en frappant, en utilisant son pouvoir ; stun et aveuglement **absents** de la liste des deux wikis (perte non prouvée ni exclue) | VM / INC |
| **Broken** | Survivant | Impossible d'être soigné au-delà de blessé | Bloque aussi les soins « automatiques » de perks (ex. Adrenaline sous Terminus, lot 3) | SS |
| **Cursed** | Survivant | Affecté par un Hex actif | — | SS |
| **Deep Wound** | Survivant | Barre de 20 s qui se vide hors course et hors mending ; à zéro, état mourant | Mending 10 s seul / 6 s par un allié (8.6.0) | VP |
| **Elusive** | Survivant | Supprime griffures, grognements et flaques de sang ; **bloque la révélation d'aura au tueur** | Introduit en 9.4.0 (Extrasensory Perception) ; fin si frappé ou mis au sol ; donné 10 s au décrochage depuis 10.1.0 | SS / VP |
| **Endurance** (survivant) | Survivant | Encaisse un coup : le coup qui mettrait au sol donne **Deep Wound** à la place | Annulée par une action voyante ; inopérante si déjà sous Deep Wound ; protège aussi du double dégât d'Exposed | SS |
| **Endurance** (tueur) | Tueur | Réduit fortement la durée des étourdissements | Ne pas confondre avec la perk Enduring (stuns de palette −40/45/50 %) | SS |
| **Exhausted** | Survivant | Empêche d'utiliser les perks d'épuisement | Se recharge **seulement** en marchant, accroupi ou immobile (la course met le timer en pause) ; le wiki indique une récupération instantanée au décrochage | SS |
| **Exposed** | Survivant | Une attaque de base met **directement à l'état mourant** | Endurance le contre (Deep Wound à la place) | SS |
| **Haemorrhage** | Survivant | Plus de flaques de sang ; soin partiel perdu à −7 %/s | — | SS |
| **Haste** | Les deux rôles | + vitesse de déplacement | Les sources se cumulent ; DR depuis 9.6.0 (Haste de perks concernée : note de dev 10.2.0) ; aucun plafond trouvé | VP / INC |
| **Hindered** | Les deux rôles | − vitesse de déplacement | Mêmes règles de cumul que Haste | VP |
| **Incapacitated** | Survivant | Ne peut pas interagir avec certains éléments ni avec les survivants | Liste des interactions bloquées : selon la source de l'effet **[INCERTAIN]** | SS |
| **Madness** | Survivant | Hallucinations et entraves | **Exclusif au Doctor** | SS |
| **Mangled** | Survivant | Soin 25 % plus long (vitesse −20 %) | Seulement de blessé à sain | SS |
| **Oblivious** | Survivant | N'entend **ni le rayon de terreur ni le battement de cœur** | Ses autres sons (pas, pouvoir) ne sont pas cités par la définition **[INCERTAIN]** | SS |
| **Undetectable** | Tueur | Supprime le rayon de terreur et la tache rouge ; aura cachée | Un « stinger » sonore marque sa fin ; les **lullabies ne sont pas affectées** | SS |
| **Impaled** | Survivant | **The Slasher** : touché par une Hook Spike, ne peut pas être soigné au-delà de blessé ; aura de la pique visible du tueur | Blessé + pique + mur → Impaled **et Immobilized** | VP (10.0.0) |
| **Heresy** | Survivant | **The Judgment** : mécanique de pouvoir, pas un statut général | Voir 2.7.3 | VP (principe) / SS (valeurs) |
| **Exile** | Survivant | **The Judgment** : compte comme un état de crochet sans déclencher les perks de crochet | Voir 2.4.5 | VP |
| Revealed / Glyph / Deafened | — | Aura visible des deux tueurs en 2v8 / malus lié aux glyphes / audio étouffé | **Revealed est propre au 2v8** : hors périmètre | SS |

> **Erreur fréquente** : confondre **Oblivious** (le survivant n'entend pas le TR) et **Undetectable** (le tueur n'émet pas de TR). Sous Oblivious, un tueur non furtif est à côté de vous sans bruit de cœur ; sous Undetectable, **tout le monde** est privé du TR et de la tache rouge.

### 2.7.2 Interactions à connaître

| Situation | Résultat | Conf. |
|---|---|---|
| Endurance + coup qui mettrait au sol | Deep Wound à la place | SS |
| Endurance + Exposed | Endurance l'emporte : Deep Wound, pas l'état mourant | SS |
| Endurance + déjà sous Deep Wound | **Sans effet** : le coup met au sol | SS |
| Deep Wound + tout dégât | État mourant | VP |
| Endurance + action voyante | Endurance perdue | SS |
| Elusive + portes alimentées | Elusive de décrochage n'est plus donnée | VP |
| Iron Will + Exhausted | Iron Will inactive (grognements de retour) | SS |
| Mangled + soin de mourant à blessé | Pas d'effet (Mangled ne joue que de blessé à sain) | SS |
| Haemorrhage + soin interrompu | Progression perdue à −7 %/s | SS |
| Broken + Adrenaline sous Terminus | Adrenaline ne soigne plus (portes alimentées) | SS (lot 3) |
| Blindness + perk d'aura | Aucune aura lue | SS |
| Overwhelming Presence (Doctor) | Commencer à utiliser un objet à ≤ 32 m du tueur → **Exhausted 15 s** | VM (lot 5) |
| Haste + Haste | Cumul, réduit par les DR (9.6.0) ; le « plus haut seulement » testé au PTB 8.7.0 a été annulé | VP |
| Haste de Babysitter / No One Left Behind + Haste de décrochage | « Stack additively » selon le wiki (non daté) ; soumission aux DR **inconnue** | INC |

### 2.7.3 Heresy (The Judgment) en détail

**[FACT]** (principe VP, valeurs SS) :
- **Comment on l'obtient** : touché par la Divine Light, ou en provoquant : **3 accroupissements ou gestes à moins de 10 m** du tueur, ou **45 s** dans le seuil d'une porte de sortie.
- **Effets** : un skill check **Good** sur un gen fait **−3 %** ; porte bloquée **8 s** pour l'hérétique si la Heresy est acquise à moins de 32 m d'une porte.
- **Purge** : « Repent » à un Shrine (décroissance 30 s).

**[HEURISTIQUE]** Un hérétique ne tient pas de gen à 99 % et n'attend pas dans une porte.

Détail : page wiki « Status Effects » ; `kb/seed/audit_phase0.txt` table 1.5 ; notes 10.0.0 (550) et 10.1.0.

---

## 2.8 Diminishing Returns (9.6.0) `[Avancé → Expert]`

### 2.8.1 Ce qui est sûr (note officielle 9.6.0, VP)

- **Périmètre** : « repeated positive or negative gameplay modifiers and status effects ». Les modificateurs **identiques**, côté tueur comme côté survivant, issus de **pouvoirs, objets, perks et offrandes**, sont réduits quand ils s'empilent.
- **Barème** : le modificateur de plus forte valeur absolue s'applique à **100 %**, puis **50 % / 25 % / 12,5 %**, et **5 %** à partir du 5e.
- **Exclusion totale** : les modificateurs issus des **add-ons** (add-ons de pouvoir du tueur et add-ons d'objet du survivant).
- **Règle de rôle** : les **modificateurs négatifs de vitesse d'action** et les **modificateurs positifs de chance de skill check** ne se réduisent qu'**entre sources d'un même rôle**.
- Le manuel du jeu a été mis à jour pour décrire le système (non consulté pour ce guide).

```
Exemple : trois bonus identiques de +20 %, +10 % et +10 % (valeurs fictives)
  +20 % × 100 % = +20 %
  +10 % ×  50 % = +5 %
  +10 % ×  25 % = +2,5 %
  Total effectif = +27,5 %   (et non +40 %)
```

### 2.8.2 Pourquoi la règle de rôle existe

La note de dev officielle donne deux exemples du PTB 9.6.0 (VP) :
- la pénalité volontaire de **−30 %** de vitesse de purification de **Calm Spirit** était réduite de 50 % par la pénalité de **−60 %** de **Hex: Thrill of the Hunt** : le survivant « gagnait » à porter une pénalité ;
- **ONE-TWO-THREE-FOUR!** (survivant) réduisait l'effet de **Unnerving Presence** (tueur) sur la chance de skill check.

Depuis le LIVE, ces paires ne se réduisent plus entre elles : chaque loadout fonctionne comme prévu par celui qui l'a choisi.

> **Erreur fréquente** : « Hyperfocus échappe aux DR » (ancien guide, A-233). **Faux** : les bonus de chance de skill check **sont** soumis aux DR, mais seulement entre sources survivantes.

### 2.8.3 Conséquences pratiques [HEURISTIQUE]

- **Empiler deux perks de même effet** rapporte moins qu'avant : la 2e ne vaut que la moitié. Préférez des effets différents.
- Le **bonus de base d'un objet** (ex. vitesse d'une toolbox) peut entrer dans les DR avec une perk de même type ; l'**add-on**, non. À bonus égal, un add-on « vaut » plus qu'une perk dans un build empilé.
- Côté tueur, les ralentissements de même nature (perks de vitesse d'action négative) s'empilent moins bien entre eux, mais ne sont pas réduits par les pénalités que les survivants s'infligent.

### 2.8.4 Ce qui reste inconnu

| Question | Statut |
|---|---|
| Liste itemisée des catégories jugées « identiques » | Publiée **dans le manuel en jeu** depuis 9.6.1 (« lists all Action Speeds and Modifiers affected ») ; non transcrite par les notes ni le wiki (VP pour l'existence ; contenu non consulté) |
| Vitesse de l'aiguille de skill check | **Soumise** aux DR (correctif 9.6.0) | 
| Haste de perks | **Soumise** (note de dev 10.2.0 sur Blood Pact, VP indirect) |
| Pertes instantanées de gen (Pop, Pain Resonance, Eruption…) et blocages | Rien dans les notes ni le wiki **[INCERTAIN]** |
| Palettes, fenêtres, nombre de stuns | **Aucun DR** mentionné : le système vise les modificateurs (VP, par absence dans un texte exhaustif) |
| Endurance (effet binaire) | Application **inconnue** |
| Vitesse de vault | **Concernée** selon la note de dev 10.2.0 sur Spine Chill (VP indirect) ; détail du calcul non publié |
| Effets de base (Haste de décrochage, boost au coup) | Soumission **inconnue** |
| Plafond de Haste | Aucun trouvé (notes, wiki) ; seul plafond tueur connu : vitesse de ramassage +42 % (8.6.x) — preuve par absence **[INCERTAIN]** |

> **Note avancée** : la note de dev du **PTB** disait « all major gameplay modifiers and status effects for both roles are included ». Le texte **LIVE** est plus prudent et ajoute la règle de rôle. Ne citez pas la formule du PTB comme une liste officielle.

Détail : notes officielles 9.6.0 (544), section « Diminishing Returns » et « Changes from PTB » ; `kb/research/batch5_items.md` §1.

---

## 2.9 Signaux d'information `[Débutant → Avancé]`

Chaque action émet ou coûte de l'information. Ce tableau recense les signaux, qui les reçoit, et ce qu'on en sait vraiment.

### 2.9.1 Poursuite, rayon de terreur, musique

| Signal | Valeur LIVE | Conf. |
|---|---|---|
| **Début de poursuite** | Survivant dans le champ de vision du tueur à **≤ 12 m**, survivant qui **court**, tueur qui se déplace | SS |
| **Fin de poursuite** | Distance **> 18 m** ; **5 s** dans un casier ; perte de ligne de vue **> 8 s** ; survivant au-delà de **± 35°** du centre du champ de vision (FOV tueur par défaut 87°) | SS ; temporisation de l'angle : INC |
| **Terror Radius (TR)** | « À l'origine » **32 m** (tueurs 4,6 m/s) et **24 m** (4,4 m/s) ; beaucoup de tueurs récents sont des exceptions | SS |
| **Musique de chase** | La couche 4 (chase) remplace la 3e couche de proximité. Le tueur **n'entend pas son propre TR** : il entend la musique de la carte jusqu'à la poursuite | SS |
| **Lullaby** | Non affectée par Undetectable | SS |
| **Undetectable** | Supprime TR et tache rouge ; stinger sonore à la fin | SS |
| **Révélation du tueur** | Son identité apparaît dans Match Details dès qu'un survivant entre en poursuite ou perd un état de santé | VP (9.6.0) |

> **Erreur fréquente** : « la musique de chase s'arrête, donc le tueur est parti ». Il peut simplement regarder ailleurs (condition d'angle) ou vous chercher derrière le mur.

### 2.9.2 Traces laissées par le survivant

| Signal | Valeur LIVE | Reçu par | Conf. |
|---|---|---|---|
| **Traces de griffures** | Quand le survivant **court** (ou atteint ≥ 60 % de sa vitesse en maintenant le sprint). Vie **10 s** : 1 s d'apparition, 8 s pleine visibilité, 1 s de fondu (fondu visible ~4 s plus tôt sur sol clair) | Tueur ; survivant seulement avec Fixated | SS (8.2.0, 8.6.0 ; couleurs personnalisables 9.3.0) |
| **Flaques de sang** | Sous les survivants blessés ou au sol ; fréquence et durée de vie **non documentées** ; Bloodhound +2/3/4 s ; Sloppy Butcher +50/75/100 % de fréquence | Tueur | SS (existence) / INC (valeurs) |
| **Grognements de douleur** | À l'état blessé ; portée **non documentée** (estimation communautaire ~12-16 m, variable selon le personnage) ; Iron Will −80/90/100 % (8.1.0), cumul additif (8.1.2), inactive si Exhausted | Tueur (et survivants proches) | SS (Iron Will) / INC (portée) |
| **Corbeaux d'ambiance** | S'envolent dans un rayon de **4 m** (test toutes les 0,5 s ; 0,6 m d'écrasement garanti) ; reviennent après **15 s** ; pas d'envol accroupi, avec Calm Spirit, ni pour certains tueurs furtifs | Tout le monde | SS |
| **Corbeaux AFK** | Seuils **80 / 100 / 120 s** d'inactivité (9.3.0 ; était 120/140/190 s) ; le 3e corbeau déclenche des **notifications de bruit continues** | Tueur | VP |
| **Elusive** | Supprime griffures, grognements, flaques | — | SS |

### 2.9.3 Tache rouge

**[FACT] (SS)** Émise par la **tête** du tueur, dans la direction où il **regarde et se déplace** ; le tueur ne la voit pas ; masquée par Undetectable. Le wiki décrit la marche à reculons ou de côté autour des murs (**moonwalk**) comme technique pour tromper le survivant. L'effet de « regarder vers le bas » pour la cacher n'est pas documenté **[INCERTAIN]**.

**[HEURISTIQUE]** Quand vous avez la ligne de vue sur le **corps**, fiez-vous au corps, pas à la tache. La tache est utile derrière un mur haut, combinée au TR et aux pas.

### 2.9.4 Notifications de bruit fort

Ce que l'on sait, source par source :

| Déclencheur | Bruit | Conf. |
|---|---|---|
| Fast vault de fenêtre | Bruyant | SS |
| Slow vault de fenêtre | Pas de notification de bruit fort | SS |
| Vault de palette rapide / lent | Bruyant / silencieux | SS |
| Entrée en sprint dans un casier | Bruit fort (sauf Quick & Quiet) ; entrée normale lente mais silencieuse | SS (lot 5) |
| Head On raté | Bruit fort | SS (lot 5) |
| Ouverture de coffre | Audible à 20 m | SS (lot 5) |
| 3e corbeau AFK | Notifications de bruit continues | VP |
| Premier contact avec un interrupteur sous No Way Out | Bruit fort | SS |
| Skill check raté | Bruit **[INCERTAIN : absent des sources vérifiées]** | INC |

### 2.9.5 Auras et HUD

| Élément | Ce qu'on sait | Conf. |
|---|---|---|
| Blindness | Bloque **toutes** les lectures d'aura | SS |
| Elusive | Bloque la révélation de l'aura **au tueur** | SS |
| Casier | Aura cachée à l'intérieur, sauf à l'entrée et à la sortie | SS (lot 5) |
| Trappe | Aura visible du **dernier survivant seulement** (5.3.0) | SS |
| Alliés accrochés / au sol | Auras de base : connues des joueurs, **absentes des sources vérifiées** | INC |
| Knock Out (perk tueur) | **Aucun effet d'aura en LIVE** : la réduction d'aura des mourants (32/24/16 m) a été retirée au rework 8.6.0. Effet LIVE : Hindered 5 % 3/4/5 s si vous vous éloignez de > 6 m d'une palette que vous venez de faire tomber (dans les 6 s) | VM (lot 3) |
| Personnalisation | Nouveaux types d'aura personnalisables en couleur (9.6.0) | VP |
| Jauge anti-camp | Visible des autres survivants accrochés (9.3.0) | VP |
| Timer de crochet | Deux barres depuis 10.1.0 | VP |
| Barre de progression | Jaune = plus rapide que la normale, rouge = plus lente (9.6.0) | VP |
| Match Details | Loadouts des coéquipiers (perks, objets, add-ons, offrandes) ; identité du tueur après la 1re chase ou la 1re perte d'état ; onglet du pouvoir du tueur (10.0.0) | VP |

**Principe d'économie [HEURISTIQUE]** : ne rien montrer au tueur coûte peu en début de partie et beaucoup en fin ; **acheter** de l'information (aller vérifier un crochet, regarder la chase d'un allié) coûte des s-surv. En SoloQ, on l'achète avec des perks ; en SWF, avec la voix, qui est gratuite.

> **Exercice** `[Débutant]` « 8 secondes » : à chaque perte de ligne de vue derrière un mur haut, choisissez de marcher 3-5 s puis vous accroupir, ou de continuer à courir. Notez si la musique de chase s'arrête. Sur 20 cas, identifiez quand marcher bat courir (avec ou sans info d'aura du tueur).

Détail : `kb/research/batch6_chase_tech.md` T07, T08, T16 ; `kb/research/batch9_macro.md` §2.12, §3.2.

---

## 2.10 Objets de la carte `[Débutant → Intermédiaire]`

### 2.10.1 Casiers

| Mécanique | Valeur LIVE | Conf. |
|---|---|---|
| Aura | Cachée à l'intérieur, sauf à l'entrée et à la sortie | SS |
| Entrée | Normale : lente mais silencieuse ; en sprint : bruit fort (sauf Quick & Quiet) | SS |
| Fin de poursuite | 5 s dans un casier | SS |
| Fouille par le tueur | 2,33 s pour un casier vide ; 5 s pour extraire un survivant, avec **immunité aux lampes** pendant la saisie | SS (lot 5) |
| Sous-sol | 6 casiers (6.4.0) | SS |
| Head On | Stun 3 s à ≤ 2,5 m après 3 s dans le casier ; Exhausted 60/50/40 s sur réussite seulement ; bruit fort si raté | SS |

**[HEURISTIQUE]** Un casier sert à rompre une poursuite hors de vue ou à préparer un save (Head On, Flashbang). Y entrer **sous les yeux** du tueur est une mise au sol offerte. Contre les tueurs qui exploitent les casiers (le Dredge, par exemple), évitez-les.

### 2.10.2 Coffres

| Mécanique | Valeur LIVE | Conf. |
|---|---|---|
| Nombre | **3** par défaut (2 aléatoires + 1 au sous-sol) ; de 1 à 13 selon les Coins et Hoarder ; au moins 48 m entre deux coffres (2.5.0) | SS |
| Ouverture ou fouille | **8 s** (10 → 8 s en 8.4.0), progression conservée, bruit audible à 20 m ; le tueur peut saisir le survivant | SS |
| Rareté | Décidée par **celui qui termine** l'ouverture | SS |
| Probabilités sans perk | Common 43 %, Uncommon 33 %, Rare 16 %, Very Rare 5 %, Ultra Rare 2 % | **INC** : étude communautaire de 2019, antérieure aux Fog Vials et à la refonte 9.1.0 |
| Coins (offrandes) | Shiny +2, Tarnished +1, Scratched −1, Cut −2 | SS |

**[HEURISTIQUE]** Un coffre coûte 8 s-surv minimum (plus le trajet) pour un objet de rareté aléatoire. Il se justifie surtout en début de partie, pour un build qui en dépend, ou avec une clé (refonte 9.1.0 : une charge = un objet Rare+ pour vous et un pour l'allié qui fouille le même coffre, VM).

### 2.10.3 Totems, Hex et Boons

| Mécanique | Valeur LIVE | Conf. |
|---|---|---|
| Totems | **5** par partie ; purification **14 s** | SS |
| Hex | Perk du tueur liée à un totem allumé ; les survivants touchés sont **Cursed** | SS |
| Boon | Bénir un totem terne **14 s**, un totem Hex **28 s** (−50 %) : l'Hex devient un Boon, avec les mêmes effets qu'une purification | SS |
| Zone d'un Boon | **24 m** (statut Blessed) | SS |
| Extinction | Le tueur éteint un Boon en **1 s** | SS |
| Limite | Un seul totem béni par survivant, toutes ses Boons dessus ; un totem ravivé par Pentimento ne peut pas être béni | SS |

**QUOI / POURQUOI** : purifier un Hex coupe la perk ; bénir un Hex en fait un Boon (28 s au lieu de 14 s, mais il en sort une zone utile à l'équipe). **QUAND [SITUATIONNEL]** : « purifiez un Hex dès qu'il s'allume » est une règle trop absolue (relevée par l'audit) ; tout dépend de l'effet, du trajet et du tueur (la liste des Hex et leurs valeurs est au chapitre 10). **CONTRE** : un Boon s'éteint en 1 s ; il ne rapporte que si le tueur doit faire un détour pour l'éteindre.

### 2.10.4 Portes de sortie

| Mécanique | Valeur LIVE | Conf. |
|---|---|---|
| Alimentation | Après (survivants au départ + 1) gens | SS |
| Ouverture | **20 s**, progression **conservée** | SS |
| Ouverture par le tueur | 0,75 s selon le wiki, **non recoupé** | INC |
| Blocages de l'Entité | Blood Warden **40/50/60 s** ; No Way Out **12 s + 6/9/12 s par jeton** | SS |
| Heresy | 45 s dans le seuil d'une porte → Heresy ; porte bloquée 8 s si acquise à < 32 m | SS |

**Ce que change l'alimentation (effet « interrupteur »)** : anti-camp désactivé ; Elusive de décrochage retirée ; Will to Live désactivé ; déclenchement des perks de fin de partie des deux camps (Adrenaline, Hope… ; NOED, No Way Out, Terminus, Blood Warden). C'est pourquoi tenir un gen à 99 % peut avoir du sens autour d'un événement précis (voir chapitre 6).

**[HEURISTIQUE]** Lâcher un interrupteur plutôt que prendre un coup : la progression reste. Finir si le temps restant (20 s × % restant) est inférieur au temps d'arrivée du tueur.

### 2.10.5 Trappe

| Mécanique | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Apparition | S'ouvre **automatiquement** quand il ne reste qu'un survivant ; aura visible **de lui seul** | 5.3.0 | SS |
| Clé | Dull ou Skeleton Key avec ≥ 1 charge : rouvre une trappe fermée en **2,5 s** ; impossible au sol ; le tueur peut saisir ; la clé n'est plus détruite (9.1.0) | 9.1.0 | VM |
| Fermeture par le tueur | Déclenche l'**EGC** | — | SS |
| Après une évasion | Se referme | 8.1.0 | SS |
| Offrandes | Blueprints : trappe plus probable près du Killer Shack ou du bâtiment principal (+100 % de probabilité) | — | SS |
| Durée du saut | Non documentée ; le tueur **ne peut plus** vous saisir en plein saut depuis qu'il peut fermer la trappe | 2.7.0 | INC (durée) / SS (saisie) |

> **Erreur fréquente** : chercher la trappe « au son » avant d'être le dernier. Elle ne s'ouvre (donc ne s'entend) qu'au dernier survivant.

### 2.10.6 Endgame Collapse (EGC)

| Mécanique | Valeur LIVE | Conf. |
|---|---|---|
| Durée | **120 s** | SS |
| Déclencheur | Ouverture d'une porte **ou** fermeture de la trappe | SS |
| Ralentissement | Moitié de vitesse si un survivant est au sol, accroché ou en cage (max 4 min) | SS |
| Arrêt | **Jamais** | SS |
| Gens restants | Bloqués | SS |
| Accélération | Aucune condition documentée | SS |

**[HEURISTIQUE]** Un allié accroché pendant l'EGC ralentit le timer : il reste du temps pour un sauvetage, mais sa phase de crochet (70 s) continue de courir.

### 2.10.7 Fenêtres et palettes (pour mémoire)

| Élément | Valeur LIVE | Conf. |
|---|---|---|
| Vaults de fenêtre | Fast **0,5 s** (garde l'élan, ≥ 2,5 m de course droite) / medium 0,9 s / slow 1,5 s ; tueur 1,7 s | SS |
| Blocage par l'Entité | Après le **3e vault** de la même fenêtre dans une poursuite : bloquée **30 s pour ce survivant seulement** | SS |
| Palettes | Stun **2 s** (à partir de ~50 % d'abaissement) ; casse **2,34 s** (6.1.0) ; tronçonneuse (Hillbilly, Cannibal) **1 s**, avec le **pouvoir de base** : le Hillbilly est classé « Special-break » (9.5.0, VP) ; LoPro Chains permet seulement de **continuer** le sprint à travers ; vault 1,1 s / 2 s | VM / SS |
| Murs cassables | 2,34 s, tueur seulement | VM |
| Espacement des palettes | Au moins 14, 16, 18 ou 20 m | SS |

Casses par pouvoir, Bloodlust et chase : voir le chapitre 3, les fiches des chapitres 7-8 et l'errata (Good Guy, Mastermind, Knight et Lich ne cassent **pas** instantanément en 1v4 sans conditions ; le Hillbilly casse en ~1 s avec son pouvoir de base).

Détail : `kb/research/batch5_items.md` §4, §5.7-5.9 ; `kb/research/batch9_macro.md` §6 ; `kb/ledgers/AUDIT_PHASE0_ERRATA.md`.

---

## 2.11 Économie hors partie `[Débutant]`

### 2.11.1 Bloodpoints (BP)

| Mécanique | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Plafond par partie | **10 000 par catégorie** (40 000 par partie) | — | SS |
| Offrandes de BP | Appliquées **après** le plafond | — | SS |
| Portefeuille | Plafonné à **5 000 000** ; codes promo, récompenses de connexion et codes e-mail exemptés | Testé à la Blood Moon d'avril 2025, puis conservé | SS |
| BP du tueur | Début de poursuite **500** (était 400) ; accrochage **750** (était 500) ; 1er accrochage d'un survivant **+750** (était 200) ; 2e **+250** (était 200) ; sacrifice **500** (était 200) | 9.3.0 | VP |
| Abandoned (survivant) | **2 000 BP** quand un coéquipier se déconnecte ou abandonne via ce système (était 600) | 9.0.0 | VP |

> **Note avancée** : la note 9.3.0 explique la hausse des BP de premier accrochage par la volonté d'« encourager les tueurs à répartir les premiers crochets ». C'est une incitation, pas une règle : elle ne protège pas du tunnel.

### 2.11.2 Offrandes

| Règle | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Offrandes de royaume / carte | **20 % fixes** ; les doublons ne se cumulent plus | 9.0.0 | VP |
| Offrandes secrètes | La plupart des offrandes qui modifient la partie sont face cachée (Blueprints, Coins, Luck personnelle, Reagents, royaume/carte, Shrouds, Wards sauf Sacrificial Ward) ; les Luck « pour tous » restent visibles | 9.0.0 | VM |
| Conflits | Raretés différentes : la plus rare brûle, les autres sont rendues ; rareté égale : toutes rebondissent (sauf cartes) | — | SS |
| Remboursement | Partie annulée (déconnexion au chargement ou dans la 1re minute) | — | SS |
| Sacrificial Ward | Rejette les offrandes de royaume des autres joueurs, sauf si tous brûlent la même ; ne bloque **pas** un royaume au tirage aléatoire | — | SS |
| Apparition | Survivants à ≤ 12 m les uns des autres et au même étage « when possible » ; Shroud of Separation (survivant) sépare ; Shroud of Vanishing (tueur) rejette les offrandes d'apparition survivantes ; Vigo's Shroud : apparaître le plus loin possible du tueur | 9.0.0 | VP |
| Luck | +1/2/3 % par offrande ; débloque les tentatives d'auto-décrochage au 1er palier | 9.0.0 | VM |
| Memento Mori (tueur) | Ivory / Ebony : tuer un / tous les survivants à 2 paliers, une fois au sol | — | SS |
| Oak (tueur) | Distance minimale entre crochets −1,5 / −2,5 / −3,5 m ; Petrified Oak +1 m | — | SS |

> **Erreur fréquente** : « les offrandes de royaume se cumulent » (ancien guide, A-190). **Faux depuis 9.0.0** : 20 % fixes, doublons inutiles. Le gain réel est même **inférieur à 20 points**, puisque le tirage aléatoire peut tomber sur ce royaume sans offrande (calc.).

### 2.11.3 MMR et matchmaking

| Point | Statut | Conf. |
|---|---|---|
| Calcul du MMR | Depuis 10.1.0, ne compte plus seulement kills et évasions : il « considère plus d'actions dans une partie, comme les emblèmes » | VP |
| Remise à zéro en 10.1.0 | Annoncée par la presse (AddictingGames, 23/08/2026, citant un événement Discord des développeurs) ; **absente des notes officielles** ; un CM a seulement dit qu'il faudrait « un certain nombre de parties pour recalculer » | **INC** (CONFLICT-G04) |
| Détail des actions prises en compte | Non publié | INC |
| « Team-based Ratings » pour les SWF (6.4.0) | Toujours actif après 10.1.0 ? Inconnu | INC |
| Play While You Wait | Un tueur en file peut jouer une partie survivant en gardant sa place (9.6.0) | VP |

**[HYPOTHÈSE]** Si le MMR compte désormais des actions « comme les emblèmes », une partie perdue mais bien jouée (gens, sauvetages, chase) pèse sans doute moins qu'avant sur votre cote. Le poids de chaque action n'étant pas publié, ne jouez pas « pour le MMR ».

### 2.11.4 Ce que vous voyez du loadout (Match Details, 9.6.0)

**[FACT] (VP)** :
- vous voyez le **loadout de vos coéquipiers** (perks, objets et add-ons, offrandes non secrètes), avec descriptions au survol ;
- le **tueur** est caché au début de la partie et apparaît à tous les survivants dès qu'**un** survivant entre en poursuite ou perd un état de santé ;
- le **loadout de l'équipe adverse reste caché jusqu'à la fin** de la partie.

> **Erreur fréquente** : « les survivants voient les perks du tueur après la 1re chase » (ancien guide, D-092). **Faux** : seule son **identité** est révélée. Toute « connaissance » de ses perks est une **déduction** (voir `kb/deliverables/PERK_DEDUCTION.md`).

**[HEURISTIQUE] SoloQ** : Match Details est la seule coordination d'objets et de perks sans voix : qui a Kindred, un kit, une clé, Adrenaline, un anti-tunnel. Faites-en le tour au début de chaque partie. **SWF** : l'information existait déjà par la voix ; l'intérêt est surtout de vérifier les offrandes visibles.

Détail : notes officielles 9.0.0, 9.3.0, 9.6.0, 10.1.0 ; `kb/research/batch5_items.md` §3 ; `kb/ledgers/CONFLICT_REGISTER.md`.

---

## 2.12 Ce qui reste inconnu (à ne pas enseigner comme un fait)

| # | Question | Pourquoi ça compte |
|---|---|---|
| 1 | ~~Taux de base de la jauge anti-camp~~ **Résolu 27/09/2026** : +1 c/s × poids divisés par 2 (SS) ; reste l'effet exact des survivants proches | Temps de face camp à ±10 % |
| 2 | ~~Nombre max de soigneurs~~ **Résolu** : 2 en 1v4, 3 en 2v8 (VM) | — |
| 3 | ~~Rampement~~ **Résolu** : 0,7 m/s constant (VM) | — |
| 4 | ~~Récupération en rampant~~ **Résolu** : non, sauf Tenacity (VM) | — |
| 5 | Elusive de décrochage annulée par une action voyante ? (la porte **est** une action voyante, SS) | Usage des 10 s de protection |
| 6 | Contenu de la liste des DR du manuel en jeu ; DR sur Endurance, effets de base, pertes instantanées | Construction de builds empilés |
| 7 | Plafond de Haste | Builds de vitesse |
| 8 | Chance de skill check avec toolbox (40 % ?) ; ouverture de porte par le tueur (0,75 s ?) | Valeurs du wiki non recoupées |
| 9 | Portée des grognements ; fréquence et durée des flaques de sang (lot 12 : aucune valeur trouvée) | Furtivité en étant blessé |
| 10 | Durée du ramassage (portage 3,68 m/s : SS) | Calculs de portage et de sabotage |
| 11 | Durée du saut dans la trappe (relevage : 16 s seul, SS) | Décisions de trappe |
| 12 | Perte de Bloodlust sur stun ou aveuglement (absente des listes wiki) | Valeur d'un stun en chase |
| 13 | Reset du MMR en 10.1.0 ; détail du nouveau calcul (CONFLICT-G04) | Lecture de sa cote |
| 14 | Probabilités de coffre actuelles (étude de 2019 seulement) | Rentabilité des coffres |
| 15 | Application des protections de décrochage à une libération d'Exile | Jeu contre The Judgment |

> **À retenir** : si le 10.2.0 sort en LIVE (Survivor Intent System, refonte d'Abandon / Surrender, nombreuses perks), une partie de ce chapitre sera à revérifier : Abandon, Slippery Meat, Calm Spirit, Plunderer's Instinct, Pharmacy, Iron Grasp et Agitation ont des valeurs PTB différentes.

---

## Sources du chapitre

**Fichiers de la base**
- `kb/ledgers/AUDIT_PHASE0_ERRATA.md` (corrections prioritaires)
- `kb/seed/audit_phase0.txt` : tables « Référence vérifiée : objectifs, crochets, soins, statuts » (1.1 à 1.6) et « mouvement, chase, combat » (1.1 à 1.8)
- `kb/research/batch9_macro.md` (§1, §2, §3.2, §6)
- `kb/research/batch6_chase_tech.md` (§1, §4.1-4.4, T07, T08, T16)
- `kb/research/batch5_items.md` (§1, §3, §4, §5.7-5.9)
- `kb/research/batch12_mechanics_open.md` (résolutions du 27/09/2026 : soigneurs, rampement, Resolve, portage, DR, Hillbilly)
- `kb/ledgers/CONFLICT_REGISTER.md`, `kb/ledgers/OPEN_QUESTIONS.md`, `kb/ledgers/OUTDATED_CONTENT_REPORT.md`
- `kb/deliverables/QUICK_REFERENCE.md` (cohérence des chiffres clés)

**Notes officielles BHVR** (`kb/sources/patches/`)
- 9.0.0 (510) : auto-décrochage, lutte, Mori de fin, offrandes 20 %, apparition, Abandoned 2 000 BP
- 9.1.0 (516) : sacrifice à 2 survivants (2 checks manqués, tous accrochés)
- 9.2.0 (523) : récupération au sol automatique, Abandon, densité de palettes
- 9.3.0 (529) : anti-camp ×1/×2/×4, base −50 %, grâce 7 s, 16 m, corbeaux AFK, BP du tueur, retrait des systèmes anti-tunnel et anti-slug
- 9.6.0 (544) : Diminishing Returns (règle de rôle et note de dev), barre de progression, Match Details
- 10.0.0 (550) : Impaled (The Slasher)
- 10.1.0 : protections de décrochage, Exile, timer de crochet en deux barres, MMR

**Pages wiki clés** (via l'audit) : Generators, Skill Checks, Hooks, Resolve / Camping, Dying State, Health States, Healing, Status Effects, Elusive, Endurance, Exhausted, Terror Radius, Red Stain, Scratch Marks, Pools of Blood, Crows, Chests, Totems, Hatch, Exit Gates, Endgame Collapse, Bloodpoints, Offerings.
