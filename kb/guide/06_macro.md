# 6. Macro, équipe et game sense

> **Périmètre** : mode **1v4 uniquement**, version **LIVE 10.1.2a (17/09/2026)**. Le 2v8 (13 gens présents / 8 requis, deux tueurs) a une macro différente : rien de ce chapitre ne s'y transpose. Le **Survivor Intent System** et la refonte **Abandon/Surrender** sont « **PTB 10.2.0 — non LIVE** » : ils n'existent pas dans les parties que vous jouez aujourd'hui.

Ce chapitre traite de tout ce qui se passe **hors de votre propre chase** : où réparer, qui sauve, quand soigner, comment lire la partie, comment finir. La chase elle-même (tiles, palettes, fenêtres) est traitée aux chapitres 3 et 4 ; ici, la chase est une **ressource de temps** que l'équipe convertit en gens.

**Comment lire ce chapitre**

| Étiquette | Sens ici |
|---|---|
| **[FACT]** | Valeur vérifiée (audit phase 0, notes officielles, wiki). Confiance en abrégé : **(VP)** note officielle, **(VM)** wiki + note / plusieurs sources, **(SS)** wiki seul, **(INC)** incertain |
| **calcul** | Arithmétique faite sur des [FACT] ; le calcul est juste, les hypothèses ajoutées (distances, trajets) sont signalées |
| **[HEURISTIQUE]** | Règle pratique, jamais absolue : toujours avec sa condition, son risque et son alternative |
| **[SITUATIONNEL]** | S'inverse selon le tueur, la carte ou l'état de partie |
| **[HYPOTHÈSE]** | Modèle plausible, non mesuré |
| **[AVIS D'EXPERT]** | Jugement stratégique **non sourcé** (aucune VOD ni coach consulté) : discutable |
| **[INCERTAIN]** | Valeur ou mécanique non tranchée ; « à vérifier en jeu » quand l'élément est connu des joueurs mais absent des sources vérifiées |

**Deux conventions qui évitent la moitié des malentendus**

- **s-surv** (seconde-survivant) : un survivant occupé pendant 1 s. **1 gen solo = 90 s-surv** [FACT] (VM).
- **« Gens restants » = gens encore à réparer** pour alimenter les portes (5 requis en 1v4). À ne pas confondre avec les **gens encore présents sur la carte** : 7 − gens finis, soit **gens restants + 2**. Exemple : « 3 gens restants » = 2 finis, **5** gens non réparés sur la carte ; « 1 gen restant » = 4 finis, **3** gens sur la carte.
- **3-gen** : les **3 derniers gens de la carte** (4 finis, un seul à faire) sont assez proches pour que le tueur les défende en marchant. Il se **prépare** (ou s'évite) dès 4-3 gens restants.

---

## 6.1 La monnaie de la partie : les secondes-survivant `[Intermédiaire]`

Toute la macro se ramène à une comptabilité : **le temps survivant converti en progression, contre le temps tueur converti en états de crochet.** Une décision macro se juge à son **solde en s-surv** : secondes de réparation parallèle que vous créez ou protégez, moins celles que vous consommez ou offrez au tueur.

### Les valeurs de base

| Élément | Valeur LIVE | Confiance |
|---|---|---|
| Gen solo | 90 charges, +1 charge/s → **90 s** | [FACT] (VM) |
| Gens requis | **5 sur 7** ; portes alimentées après (survivants **au départ** + 1) gens — toujours 5, même après une mort | [FACT] (SS) |
| Pénalité coop | 85 / 70 / 55 % par personne → gen en **~52,9 / ~42,9 / ~40,9 s** à 2 / 3 / 4 | [FACT] (SS) |
| Skill check | test 1×/s, 8 % de chance ; Great **+1 %** ; raté **−10 %** et **3 s** sans progression | [FACT] (SS) |
| Kick (coup de pied) | action **1,8 s** ; **−5 %** puis **−0,25 charge/s** ; il faut **réparer 5 %** pour stopper la régression ; plafond **8** regression events ; pointes visibles dès le 4e | [FACT] (VM) |
| Phase de crochet | **70 s** par phase ; 3e accrochage = sacrifice | [FACT] (VP) |
| Accrocher / décrocher | 1,5 s / 1 s | [FACT] (SS) |
| Soin d'un état | **16 s** ; Mangled +25 % ; auto-soin au Med-Kit : vitesse −33 % | [FACT] (SS) |
| Deep Wound | timer 20 s ; mending 10 s seul / 6 s par un allié | [FACT] (VP) |
| Au sol | récupération auto jusqu'à **95 % en 30,4 s**, **à l'arrêt seulement** (ramper la met en pause, sauf Tenacity) ; rampement **0,7 m/s** constant ; **aucune auto-relève basekit** ; bleed-out **240 s** | [FACT] (VM / VP) |
| Totem | purification **14 s** ; Boon 14 s (28 s sur un Hex), rayon 24 m | [FACT] (SS) |
| Porte / EGC | porte **20 s**, progression conservée ; EGC **120 s**, moitié de vitesse si un survivant est au sol / accroché (max 4 min), jamais arrêté | [FACT] (SS) |
| Vitesses | survivant **4,0 m/s** ; tueurs **4,6 ou 4,4 m/s** (Nurse 3,85 ; Blight 4,4 depuis 9.6.0) | [FACT] (VM) ; Nurse (SS) ; Blight (VP) |
| Portage | **3,68 m/s** (92 %), tous tueurs | [FACT] (SS) |

### Les conversions à connaître par cœur (calcul)

| Question | Résultat |
|---|---|
| Budget minimal de réparation d'une partie | **450 s-surv** (5 × 90 ; hors toolbox, Great, perks, régression) |
| Coût d'un gen à 2 / 3 / 4 | **105,9 / 128,6 / 163,6 s-surv** (+18 / +43 / +82 % de gaspillage) |
| Valeur d'1 s de chase si les 3 autres réparent **chacun un gen** | **1/30 de gen par seconde** (plafond : suppose une efficacité parfaite) |
| Même chose si 2 réparent **ensemble** et le 3e « regarde » | **~1/53 de gen par seconde** : la chase rapporte presque 2× moins |
| Soin altruiste d'un état | **32 s-surv ≈ 0,36 gen** |
| Skill check raté | **≈ 12 s solo** perdues (9 charges + 3 s) |
| Gen frappé laissé seul 60 s | **≈ 19,5 s** de réparation solo perdues |
| Stopper la régression | **4,5 s solo** (≈ 2,6 s à deux) |
| Fenêtre pour sauver avant la phase 2 | **70 s** après l'accrochage |
| Rayon possible d'un tueur perdu de vue depuis t s | 4,6 × t : **46 m à 10 s**, 92 m à 20 s (borne haute) |

> **Erreur fréquente** : « une seconde de chase vaut 1/3 de gen ». Faux d'un facteur 10 : c'est **1/30** quand 3 alliés réparent chacun un gen. Correct, c'est déjà énorme : 30 s de chase = 1 gen.

### Le tableau de course `[Avancé]`

- **QUOI** : les survivants doivent produire ~**450 s-surv utiles** ; le tueur doit produire **12 états de crochet** pour 4 kills (moins s'il laisse des phases expirer, s'il exile avec The Judgment — l'Exile compte comme un état de crochet [FACT] (VP) —, ou via bleed-out, EGC expiré, Mori et règles à 2 survivants).
- **COMMENT** [HEURISTIQUE] : comparer `gens finis / 5` et `états de crochet / 12`. Un écart **≥ 0,25** en faveur du tueur (ex. 1 gen pour 6 états : 0,2 contre 0,5) signale une partie qui bascule ; **au-delà de 0,4**, passer en mode « limiter la casse » (sécuriser 1-2 évasions, trappe). Ces seuils sont des valeurs de rédacteur, à calibrer par la pratique.
- **CAS D'ÉCHEC** : l'indicateur ignore la **répartition** des crochets. 6 états répartis 2-2-1-1 ne valent pas 6 états concentrés 3-2-1 : une mort retire définitivement un survivant (−25 % des survivants, et −33 % de réparateurs parallèles quand un survivant est en chase : 3 → 2). C'est pour cela que le tunneling est rentable pour le tueur.

> **À retenir** : une chase finie par un crochet peut être une **excellente** chase si 3 réparateurs ont travaillé pendant ce temps. Juger une chase à sa durée **et** à ce que les autres en ont fait.

Détail : `kb/research/batch9_macro.md` §1.

---

## 6.2 Réparer : efficacité, dispersion, 3-gen `[Intermédiaire]`

### Un par gen, sauf exceptions chiffrées

- **QUOI** : par défaut, **un survivant par gen**.
- **POURQUOI** : à 4 sur un gen, l'équipe brûle ~74 s-surv de plus qu'en solo, presque un gen entier. Surtout, un tueur qui trouve 2+ survivants groupés obtient un **deuxième blessé gratuit** : le coût réel du groupement est la chase suivante [HEURISTIQUE].
- **QUAND réparer à deux** [SITUATIONNEL] :
  1. **Finir vite un gen presque fini** quand le tueur arrive : à 80 % (18 charges), ~18 s seul, **~10,6 s à deux** (calcul). Un gen fini ne peut plus être frappé : on convertit du risque en acquis.
  2. **Perks de duo** (Prove Thyself : +6/8/10 % par autre survivant à ≤ 4 m, plafond 18/24/30 %, une seule instance par survivant (SS)…) : soumises aux rendements décroissants depuis 9.6.0 [FACT] (VP). Ne pas supposer qu'elles annulent la pénalité : faire le compte.
  3. **Casser un 3-gen** : duo sur le gen le plus avancé si le tueur est engagé **loin** ; split sur deux gens différents s'il patrouille (voir plus bas).
  4. **1 gen restant, tout le monde libre** : le temps mural compte plus que le rendement.
- **CONTRE** : le groupement est pire contre les tueurs à dégâts de zone ou multi-cibles (Legion, Plague, Trickster, Huntress sur cibles alignées) et contre **Nowhere to Hide** (auras à **24 m** du gen frappé pendant **3/4/5 s**, LIVE 10.1.0 [FACT] (VP)).
- **CAS D'ÉCHEC** : le solo étale les survivants, donc un crochet coûte plus de trajet au sauveteur. **Alternative** : dispersion **en grappe** (un survivant par gen, gens voisins).

### Répartition de l'équipe

| Posture | Quand | Pourquoi | Risque |
|---|---|---|---|
| **Éclatée** (1 par gen, zones différentes) | Début de partie, tueur inconnu ou lent | Débit maximal ; un seul survivant trouvé | Sauvetages lointains |
| **En grappe** (1 par gen, gens voisins) | Milieu de partie, crochets fréquents | Trajets de sauvetage courts ; 3-gen surveillé | Nowhere to Hide, tueurs à zone |
| **Duo sur un gen** | Gen presque fini + tueur qui approche ; perks de duo | Transforme du risque en acquis | +18 % de coût ; deux cibles |
| **Regroupement** autour d'un blessé / d'un crochet | Presque jamais | — | Cibles multiples ; ralentit l'anti-camp [FACT] (SS) |

> **À retenir** : au premier crochet, l'équipe perd au minimum **2 réparateurs** (l'accroché et le sauveteur). Tout l'enjeu est de ne pas en perdre un **3e** (un second sauveteur, un curieux qui va « voir »).

### Le 3-gen `[Avancé]`

```
Carte au départ : 7 gens            Objectif : en finir 5

  Mauvaise rotation                   Bonne rotation
  (on finit l'extérieur)              (on attaque le groupe serré)

   G . . . . . . G                     G . . . . . . G
   .   (G)(G)    .                     .   [x][x]    .
   .     (G)     .        →            .     (G)     .
   G . . . . . . G                     G . . . . . . G

  Restent : le triangle central       Restent : 3 gens éloignés
  = 3-gen, le tueur défend en          = le tueur doit traverser
    marchant                             la carte pour défendre
```

- **QUOI** : une **géométrie**, pas une mécanique : les 3 derniers gens de la carte sont si proches que le tueur les défend sans trajet [AVIS D'EXPERT].
- **POURQUOI il est mortel** : chaque kick coûte 1,8 s au tueur, enlève 5 % puis 0,25 charge/s, et il revient avant que les survivants aient réparé les **5 %** nécessaires pour arrêter la régression [FACT] (VM). Avec 8 regression events maximum par gen, la partie peut durer très longtemps.
- **QUAND il se forme** : quand l'équipe finit les gens **faciles** (isolés, en bord de carte, loin du tueur) et laisse le groupe central pour la fin. Il se décide **à 3-4 gens restants** : à 3 gens restants, il y a encore 5 gens sur la carte, et le choix des 2 prochains fixe le triangle final.
- **COMMENT le prévenir** [HEURISTIQUE] :
  - au début, repérer le groupe le plus serré et **en attaquer au moins un** dans les 90 premières secondes ;
  - tenir un compte mental : « si on finit ce gen, quels 3 restent ? » — si la réponse est un triangle serré, **changer de gen** ;
  - laisser les gens isolés / extérieurs pour la fin : un tueur qui les défend doit traverser la carte.
- **CONTRE** : plus urgent contre les tueurs à patrouille sans mobilité et contre les ralentissements par kick ou blocage (No Holds Barred bloque le gen le plus avancé 15/20/25 s à chaque gen fini (SS)). Contre un tueur très mobile (Nurse, Blight, Hillbilly…), la distance protège moins : la chase compte plus que le 3-gen [SITUATIONNEL].
- **Si le 3-gen est déjà formé** (1 gen restant, 3 sur la carte) :
  - **Duo sur le gen le plus avancé** quand le tueur est engagé en chase **loin** du triangle ;
  - **Split pressure** quand il patrouille et frappe : deux survivants sur **deux gens différents** du triangle pendant qu'un troisième tient une chase ; le tueur ne peut pas frapper deux gens à la fois. Risque : deux survivants proches du tueur. Alternative : si l'un des 3 gens est plus loin, jouer celui-là.
- **CAS D'ÉCHEC** : aller réparer au centre expose à plus de rencontres ; attaquer le groupe serré trop tard ne sert à rien.
- **EXERCICE** : DR-09 (rotation de gens / anti-3-gen) de `kb/research/batch11_training.md` — objectif : 0 3-gen « évitable » sur 10 parties.

> **Erreur fréquente** : « taper » un gen frappé 1 seconde pour stopper la régression. Depuis 7.5.0, il faut **réparer 5 %** [FACT] (VM), soit 4,5 s solo.

### Continuer ou lâcher un gen

- **QUOI** : comparer **le temps pour finir** au **temps d'arrivée du tueur** [HEURISTIQUE].
- **COMMENT** :
  - temps pour finir = charges restantes / débit (1 charge/s seul ; 1,7 à 2 ; 2,1 à 3 ; 2,2 à 4) ;
  - temps d'arrivée ≈ distance / vitesse : un tueur à 4,6 m/s qui entre dans un terror radius de 32 m (valeur historique, beaucoup d'exceptions [FACT] (SS)) vous atteint en **~7 s** s'il vient droit sur vous ; ~5 s pour un TR de 24 m à 4,4 m/s (calcul) ;
  - **si fin < arrivée − 2 s** (marge pour un skill check et la fuite) : **finir** ;
  - **sinon** : lâcher **avant d'être vu**, dans la direction opposée au TR, vers une ressource de chase ; marcher (pas de griffures).
- **CONTRE** : tueurs furtifs (Wraith, Pig accroupie, Ghost Face, Shape en Stalker, Onryō…) : le TR ne vous protège pas ; lire corbeaux, sons et zones silencieuses suspectes.
- **CAS D'ÉCHEC** : lâcher trop tard (vous devenez la 2e cible sur un gen presque fini) ou trop tôt (vous perdez 20 s pour un tueur qui passait). Après un kick, revenir **vite** : chaque minute de gen abandonné coûte ~19,5 s.
- **EXERCICE** : erreur E-I14 et drill DR-17 (horloge mentale), `kb/research/batch11_training.md`.

**Arbre GEN (version courte)** — complet : arbre 5 de `kb/deliverables/DECISION_TREES.md` (feuilles GEN-1 à GEN-14).

```
Je répare → menace (TR, chase qui approche, alerte de perk) ?
├─ NON → continuer ; viser Great (+1 %) sans risquer le raté (−10 %, 3 s)
└─ OUI → temps pour finir < arrivée estimée − 2 s ?
    ├─ OUI → FINIR (un gen fini ne se frappe plus)
    └─ NON → suis-je encore furtif ?
        ├─ OUI → lâcher MAINTENANT, marcher hors LOS, revenir après son passage
        └─ NON → partir vers une ressource de chase, loin des autres réparateurs
  Cas particuliers :
  • dernier gen → question du 99 (§6.11)
  • gen du triangle final → il vaut plus qu'un gen extérieur : accepter plus de risque
  • deux sur le gen → le plus faible en chase part d'abord, l'autre finit si possible
  • gen à pointes (≥ 4 events) → il reste au tueur jusqu'à 4 kicks ; « sûr » seulement au 8e
  [SoloQ] ne pas supposer qu'un autre reviendra sur un gen lâché
  [SWF]   annoncer « gen X à 60, lâché »
```

### Les totems en une ligne de macro

5 totems × 14 s = **70 s ≈ 0,8 gen** (calcul) : purifier les ternes en début de partie est rarement rentable. Un **Hex** se purifie s'il change les décisions de l'équipe **maintenant** (gens qui fondent sous Ruin, Hex de chase, suspicion d'endgame) et si le trajet est court ; « purifiez tout Hex dès qu'il s'allume » est une règle absolue que l'audit a rejetée. En fin de partie avec suspicion de NOED, purifier les ternes **croisés sur la route**, sans détour [HEURISTIQUE]. Arbre complet : arbre 6 de `DECISION_TREES.md`.

Détail : `kb/research/batch9_macro.md` §2.1-2.3, §2.9, §2.11, §7.3, §7.4.

---

## 6.3 Crochets : pression, trades, saves `[Intermédiaire]`

### Hook stages et répartition des crochets

- [FACT] (VP) : 3e accrochage = sacrifice ; fin de la phase Struggle = sacrifice ; chaque phase = **70 s**.
- **Conséquence (calcul)** : laisser un allié atteindre la fin de sa phase 1 donne **un état de crochet gratuit** au tueur. Le sauver à 60 s plutôt qu'à 75 s, c'est lui garder une phase entière.
- **La pression** [HEURISTIQUE] se mesure en **nombre de survivants réellement sur un gen** : 3 = aucune pression ; 1 ou 0 = forte pression.
- **Répartir les crochets** [HEURISTIQUE] : l'équipe a intérêt à des crochets **étalés** (1-1-1-1 puis 2-2-2-2), parce qu'une mort retire définitivement un réparateur. En pratique : **quand c'est possible**, le survivant à 0 crochet prend les risques (protection hits, chase), celui à 2 crochets joue discret. **Contre-cas** [SITUATIONNEL] : si le survivant à 0 crochet est de loin le meilleur looper, lui laisser la chase reste bon même s'il a plus de crochets.

> **Erreur fréquente** : faire décrocher ou protéger par le survivant à **2 crochets**. Il n'a plus d'état à offrir : s'il tombe, l'équipe perd un joueur entier au lieu d'un état (E-I05).

### Trades : décrocher sous les yeux du tueur

**QUOI** : le tueur choisit entre frapper le décroché (qui a **Endurance** : un coup le met en Deep Wound, pas au sol [FACT] (VP)) et frapper le sauveteur.

| Trade acceptable [SITUATIONNEL] | Trade à refuser [HEURISTIQUE] |
|---|---|
| L'accroché approche de la fin de sa phase : attendre offre de toute façon un état | Sauveteur **blessé** ou lui-même à **2 crochets** |
| Sauveteur sain, 0 crochet, ressource de chase proche (palette, fenêtre, tile fort) | Dead zone autour du crochet |
| Les 2 autres réparent déjà : même raté, le trade achète une chase | Tueur à **coup unique prêt** (Hillbilly, Cannibal, Oni en Blood Fury, Shape en Evil Incarnate avec la Slaughtering Strike (VM)) |
| — | L'accroché a encore > 20 s de phase et le tueur risque de partir |
| — | **Fin à 2 survivants** : Mori et « tous accrochés = sacrifice » (§6.11) |

**Ce que coûte vraiment un trade raté** : grâce à l'Endurance du décroché, le pire cas n'est **pas** « 2 états de crochet » d'office, mais : sauveteur blessé (ou au sol s'il était blessé) + décroché remis au sol après un **2e** coup. Compter les états réellement offerts, pas le nombre de survivants touchés.

### Saves

- Un save réussi (lampe, palette, sabotage, body block) économise **un état de crochet complet**, le plus gros gain possible pour un seul geste ; un save raté coûte le temps de deux survivants et donne souvent deux blessés [HEURISTIQUE].
- **[SoloQ]** : un seul tentateur, et seulement s'il était **déjà** là. Pas de traversée de carte pour une lampe.
- **[SWF]** : annoncer « je suis sur le save » ; les autres **ne viennent pas**.
- **Sabotage** : 3 s, réparation automatique en 30 s ; les **4 crochets du sous-sol sont insabotables** [FACT] (SS). Après un sacrifice, le crochet détruit **réapparaît 60 s plus tard** (8.1.0) [FACT] (SS) : la géographie des crochets change pendant une minute.

### Après le décrochage

- **QUOI** [FACT] (VP, 10.1.0) : **Endurance + 10 % de Haste pendant 10 s + Elusive 10 s**. Elusive **ne s'applique plus** une fois tous les gens réparés ; Endurance et Haste **restent** après l'alimentation. Endurance est annulée par toute **action voyante** (réparer, soigner, ouvrir une porte…) [FACT] (SS) ; que l'Elusive le soit aussi est **[INCERTAIN]** (wiki contradictoire) : jouer comme si c'était le cas.
- **COMMENT** : ces 10 s servent à **casser la ligne de vue et changer de direction** (le tueur ne voit ni traces ni aura, mais il vous voit si vous restez dans son champ). Aucune action voyante pendant l'Endurance. Soin **loin** du crochet.

> **Erreur fréquente** : soigner le décroché sous le crochet (E-D10). Le tueur qui revient trouve deux cibles, dont une qui vient de perdre son Endurance en se faisant soigner.

### Arbre CROCHET (version courte)

Complet : arbre 3 de `kb/deliverables/DECISION_TREES.md` (feuilles CRO-1 à CRO-16).

```
Un allié vient d'être accroché → le tueur PART-il (> 16 m, s'éloigne, ET signe
d'engagement ailleurs : chase visible au HUD, kick lointain) ?
├─ OUI
│   ├─ Qui y va ?
│   │   [SoloQ] quelqu'un y va déjà (portraits, Kindred) ?
│   │       ├─ oui, plus proche → je reste sur mon gen
│   │       ├─ oui, plus loin → j'y vais si je suis sain
│   │       └─ aucun signe après un délai ADAPTÉ (délai + trajet < fin de phase)
│   │          → j'y vais, en revérifiant portraits/auras toutes les ~5 s
│   │   [SWF] le shot-caller désigne UN sauveteur, qui annonce son ETA
│   ├─ Trajet < temps restant ? oui → décrocher dès l'arrivée si pas de TR
│   │                           non → laisser à un autre / accepter la phase 2
│   └─ Après : le décroché casse la LOS pendant ses 10 s ; soin loin
└─ NON, il reste — à quelle distance ?
    ├─ < ~10 m, immobile (face camp) → NE PAS entrer dans les 16 m ; gens à fond
    │     (portes alimentées : anti-camp coupé → §6.11)
    ├─ 10-16 m, en mouvement (zone grise) → traiter comme un proxy
    └─ 16-30 m (proxy) → l'anti-camp ne remplit RIEN : décider
        ├─ phase 1, > 30 s restantes → attendre qu'il s'engage ; gens hors de sa zone
        ├─ phase 1, 15-30 s → s'approcher hors zone et hors LOS, choisir l'angle
        ├─ phase 1, < 15 s → décrocher (trade assumé) SI sain, 0-1 crochet,
        │                    ressource proche ; sinon laisser passer en phase 2
        └─ phase 2 → sauvetage prioritaire si > 2 survivants, SAUF si le seul
                     sauveteur est à 2 crochets ou blessé face à un pouvoir prêt
  Modulateurs : coup unique prêt → attendre · ranged prêt → trade plus cher
  (Endurance : Deep Wound, pas « 2 états » d'office) · M1 / pouvoir en cooldown →
  trade plus jouable · sauveteur blessé → pas de trade · ≥ 3 gens restants →
  le camp est un cadeau · 1 gen restant → voir le 99
```

**Contre-jeu du tueur à haut niveau** [HEURISTIQUE] : un tueur qui connaît cet arbre **simule le départ** (sort des 16 m puis revient dès qu'il entend le décrochage) ou reste juste hors de la LOS du crochet. La branche « il part » exige un TR qui s'éloigne **et** un signe d'engagement ailleurs. Un simple silence n'est pas un départ, surtout contre un tueur furtif.

**Contre-indications spéciales** :
- **Sous-sol** : l'insabotabilité ne concerne que le sabotage ; c'est la **géométrie** (peu d'accès, [INCERTAIN] à vérifier en jeu) qui rend le sauvetage exposé → attendre que le tueur parte loin.
- **Pain Resonance / Grim Embrace suspectés** : c'est l'**accrochage** qui les déclenche (1er de chaque survivant ; crochet Fléau pour Pain Res), pas le décrochage : un trade raté qui fait accrocher le sauveteur pour la première fois peut coûter en plus un gen ou un blocage.
- **The Judgment** : l'Exile compte comme un état de crochet **sans déclencher les perks de crochet** [FACT] (VP) ; les exilés libérés réapparaissent à **≥ 32 m** (10.1.2) [FACT] (VP) ; chaque Exiled Soul ajoute +0,5 s aux protections de décrochage (10 max) [FACT] (VP). Le sauveteur ne peut pas couvrir un exilé : replanifier la route depuis le point de réapparition. L'application des protections basekit à une sortie d'Exile n'est pas vérifiée [INCERTAIN] : jouer comme si elles ne s'appliquaient pas.

**EXERCICE** : DR-10 (sauvetage : timing, approche, protection) ; erreurs E-I04, E-T01 (`kb/research/batch11_training.md`).

Détail : `kb/research/batch9_macro.md` §2.4-2.5, §7.1, §9.A.

---

## 6.4 Camping, proxy camp, tunneling, slugging `[Avancé]`

### Ce que fait vraiment l'anti-camp

| Règle | Valeur | Confiance |
|---|---|---|
| Zone | **rayon de 16 m** autour du crochet | [FACT] (VM) |
| Poids par distance | 4 m ×2,5 ; 10 m ×1 ; 15 m ×0,375 ; **16 m ×0** | [FACT] (SS) |
| Poids par durée de présence | 0-10 s ×1 ; 10-20 s **×2** ; > 20 s **×4** ; remis à zéro au décrochage | [FACT] (VP, 9.3.0) |
| Grâce | **7 s** de pause de la jauge pour **tous** les accrochés à chaque nouvel accrochage | [FACT] (VP, 9.3.0) |
| Ralentissement | par les **autres survivants à < 16 m** ; en pause si le tueur porte un survivant | [FACT] (SS) |
| Coupure | **désactivé dès que les portes sont alimentées** | [FACT] (SS) |
| Jauge pleine | tentative d'auto-décrochage garantie | [FACT] (SS) |
| Taux de base | **+1 charge/s nominal** × poids de distance (la réduction « roughly 50 % » de 9.3.0 a divisé chaque poids par 2) ; jauge de 100 charges | [FACT] (VP réduction / SS valeurs) |
| Temps de remplissage (tueur immobile, aucun autre survivant à < 16 m) | ≤ 4 m : **≈ 22,5 s** de jauge (**≈ 29,5 s** après l'accrochage, grâce comprise) ; 10 m : **≈ 37,5 s** ; 15 m : **≈ 79 s** | calcul (SS), **±10 %** |

> **Erreur fréquente** : « contre un proxy camp, l'anti-camp décrochera l'allié ». **Faux** : au-delà de 16 m, la jauge ne se remplit **pas du tout**. Et même un face camp collé (≤ 4 m) laisse la jauge se remplir en **≈ 22,5 s** seulement après la grâce de 7 s (calcul SS, ±10 %) ; à 10-15 m, il faut ≈ 37,5 à 79 s, soit plus qu'une phase de 70 s à 15 m. Chaque survivant dans les 16 m ralentit encore la jauge (ampleur non chiffrée).

### Face camp, zone grise, proxy camp

```
          crochet
             ●
        ┌────┴────┐
   < 10 m : FACE CAMP        jauge ×1 à ×2,5, puis ×2 / ×4 avec la durée (≤ 4 m : ≈ 29,5 s)
   10-16 m : ZONE GRISE      jauge lente (×1 → ×0,375) : ne pas compter dessus
   16-30 m : PROXY CAMP      jauge à ZÉRO : décision de sauvetage obligatoire
   > 30 m : tueur engagé ailleurs (si signe d'engagement) → sauvetage « propre »
```

1. **Face camp** (tueur à < ~10 m, immobile) [HEURISTIQUE] : la jauge accélère avec le temps (×2 après 10 s, ×4 après 20 s de présence). **Ne restez pas dans les 16 m** : votre présence **ralentit** la jauge [FACT] (SS) et vous offre en cible. Réparez. Collé (≤ 4 m) et sans survivant dans les 16 m, il laisse l'allié se décrocher **≈ 29,5 s** après l'accrochage (calcul SS, ±10 %) ; à ~10 m, ≈ 44,5 s. Réévaluez après ce délai : soit la jauge a libéré l'allié, soit le tueur s'est éloigné.
2. **Zone grise 10-16 m** (tueur qui tourne autour sans être collé) : il tire l'essentiel du bénéfice d'un face camp en ne payant presque pas l'anti-camp. **Le traiter comme un proxy.**
3. **Proxy camp** (16-30 m, patrouille entre crochet et gens voisins) : **aucune aide du système**. Il faut une vraie décision (arbre CROCHET, §6.3). Les gens **éloignés** du crochet sont gratuits ; les gens dans sa zone de patrouille sont des pièges.
4. **Portes alimentées** : anti-camp coupé [FACT] (SS). Un camp de fin de partie est « légitime » mécaniquement (§6.11).

**Le coût du camp pour le tueur (calcul)** : chaque seconde de camp immobile = 0 pression ailleurs ; si 3 survivants réparent hors de sa zone, il leur cède **3 s-surv par seconde**. **Un camp de 60 s ≈ 2 gens** de progression. **Contre-cas** [SITUATIONNEL] : si l'accroché est en phase 2, ou si la partie est déjà gagnée pour le tueur, le camp est rentable pour lui.

**Perks qui changent la décision** (voir Match Details avant de décider) :
- **Deliverance** : auto-décrochage 1×/partie après un décrochage sûr d'un allié ; Broken 160/140/120 s [FACT] (VP, 10.1.0).
- **Reassurance** : à ≤ 6 m de l'accroché, pause du sacrifice 20/25/30 s [FACT] (SS au mieux). Elle achète du temps mais **impose d'entrer à 6 m**, donc dans la zone qui ralentit l'anti-camp et vous expose.

### Tunneling

- **QUOI** : le tueur revient chercher le survivant qu'il vient d'accrocher.
- **POURQUOI il le fait** : une mort retire un réparateur ; c'est la stratégie la plus rentable contre une équipe qui répare vite (§6.1).
- **Protections basekit** : Endurance + Haste 10 s + Elusive 10 s (§6.3). **Aucun système anti-tunnel plus lourd n'est LIVE** (projets PTB 9.2.0 reportés, 9.3.0 annulés) [FACT] (VP).
- **Perks anti-tunnel** : **Will to Live** (stun 4 s, actif 40/50/60 s après un décrochage, désactivé portes alimentées [FACT] (SS) ; réparer ou soigner le coupe : l'utiliser, c'est accepter de ne rien faire d'utile pendant la fenêtre) ; **Off the Record** 30/35/40 s avec Endurance [FACT] (VM ; désactivation portes alimentées : [INCERTAIN]) ; **Babysitter** (+10 % Haste, pas de traces 20/25/30 s [FACT] (SS)) ; **Borrowed Time** LIVE : Endurance du décroché +6/8/10 s et Haste +10 s, pas l'Elusive [FACT] (SS) (la refonte est PTB 10.2.0 — non LIVE).
- **COMMENT** [HEURISTIQUE] :
  - **vous êtes décroché et il revient** : les 10 s servent à casser la LOS et changer de direction, pas à courir tout droit ; aucune action voyante ; allez vers des tiles, **pas vers un gen** ;
  - **un allié est tunnelé** : l'équipe **répare en priorité** — le tueur investit sa chase sur une cible déjà « payée ». Un seul survivant sain peut prendre un protection hit s'il est déjà proche ([SoloQ]) ou si c'est son rôle ([SWF]).
- **CAS D'ÉCHEC** : si le tunnel réussit vite, l'équipe passe à 3 réparateurs très tôt. **Alternative** : quand le tunnel est certain et rapide, le sauveteur peut **retarder** le décrochage jusqu'à ce que le tueur s'engage ailleurs, quitte à perdre ~10-20 s de phase.
- **EXERCICE** : erreurs E-I11 (gaspiller les protections) et E-A06 (mal protéger le décroché).

### Slugging

**Faits** : récupération au sol **automatique** jusqu'à **95 % en 30,4 s** [FACT] (VM), **à l'arrêt seulement** : ramper **met la récupération en pause** ; seule **Tenacity** permet de récupérer en rampant (9.3.0) [FACT] (VM) ; **aucune auto-relève basekit LIVE** [FACT] (VP) ; bleed-out **240 s** [FACT] (SS) ; rampement **0,7 m/s constant** [FACT] (VM) (le 1,05 m/s affiché par une page wiki est un reste du paquet anti-slug PTB 9.3.0, annulé) ; **Abandon** possible au 3e passage au sol après avoir été relevé ou soigné 2 fois (9.2.0) ; **Surrender** quand tous les survivants sont au sol (8.6.0) [FACT] (VP). Relevage complet seul uniquement via perk (Unbreakable 1×/épreuve sur une mise au sol par le tueur ; Boon: Exponential dans 24 m).

- **POURQUOI le tueur slug** : relever coûte du temps (**16 s** pour un allié seul sans kit, 8 s à deux, moins la part déjà récupérée : ≈ 0,8 s depuis 95 % ; calcul SS) et attire un sauveteur qu'il peut mettre au sol aussi. Le slug est rentable pour lui quand **plusieurs survivants sont proches**.
- **Vous êtes au sol — ramper ou récupérer ?** [SITUATIONNEL]
  - **ramper** vers un coéquipier ou une zone couverte (pas vers un gen occupé, un cul-de-sac ou le crochet le plus proche) **si** cela rapproche réellement un sauveteur ou vous sort de la vue du tueur ;
  - **rester immobile** si le tueur est parti loin et qu'un allié arrive déjà : relevé depuis 95 %, le coéquipier finit en ≈ 0,8 s au lieu de 16 s (calcul SS) ; ramper, c'est renoncer à cette récupération ;
  - ne pas alterner au hasard : chaque changement perd du temps des deux côtés.
- **Un allié est au sol, le tueur est à côté** : **ne venez pas à deux**. Un seul relève, **quand le tueur est engagé ailleurs**. **Exception** : un tueur qui **attend** indéfiniment ne s'engagera jamais ailleurs ; attendre coûte le bleed-out de l'allié. Un survivant **sain** peut alors le **tirer en chase** vers un tile fort pendant qu'un autre relève — en [SWF] sur annonce ; en [SoloQ] seulement si vous êtes clairement le mieux placé.
- **Allié au sol invisible** : ce n'est **pas** Knock Out (son effet d'aura a disparu au rework 8.6.0 ; LIVE : Hindered 5 % après un drop de palette suivi d'une course [FACT] (VM)) ; cherchez une autre cause (distance, perk ou add-on tiers, Blindness de Hex: The Third Seal). Ne partez pas à l'aveugle vers son dernier point connu.
- **Tout le monde au sol sauf vous** : le dernier debout **évite la chase** (s'il tombe : tous au sol, Surrender possible) ; relever si le tueur s'éloigne, sinon attendre qu'il accroche (un accrochage le fixe ailleurs). S'il vous trouve quand même, tenir la chase **le plus longtemps possible** près d'un tile fort : chaque seconde laisse récupérer les alliés au sol.
- **Abandon / Surrender** : des options de fin, pas des stratégies. Abandonner prive l'équipe d'un réparateur et d'un leurre : en [SWF], l'annoncer ; en [SoloQ], préférer ramper vers un allié tant qu'une chance réelle existe [AVIS D'EXPERT].

**Arbre SLUG (version courte)** — complet : arbre 7 de `DECISION_TREES.md` (SLG-1 à SLG-11).

```
Un allié est au sol → où est le tueur ?
├─ à côté / en vue → par défaut NE PAS y aller ; il cherche la 2e cible
│     exception : il attend indéfiniment → un SAIN le tire en chase, un autre relève
├─ en chase avec un autre → j'y vais SEUL si je suis le plus proche
│     (immobile depuis 30,4 s → allié à 95 % ; s'il a rampé, jauge plus basse)
└─ inconnu → je ne le vois pas (distance, Blindness…) → pas d'aller à l'aveugle
Plusieurs au sol ?
├─ je suis le dernier debout → éviter la chase ; relever s'il s'éloigne ;
│     sinon attendre qu'il accroche ; trappe seulement si je suis seul en vie
└─ deux debout → un relève, l'autre reste loin (ou fait diversion loin)
Je suis au sol → ramper vers allié/couverture OU rester immobile (récupération)
      perk de relève (Unbreakable, Exponential) → la garder pour quand il s'éloigne
  [SoloQ] supposer qu'un allié viendra probablement, ramper vers lui
  [SWF]   « tueur à côté, ne venez pas » / « il est parti, relève-moi »
```

**EXERCICE** : erreur E-A10 (mal gérer l'état au sol).

Détail : `kb/research/batch9_macro.md` §2.6-2.8, §7.5.

---

## 6.5 Soigner ou ne pas soigner `[Intermédiaire]`

### Le prix et le rapport d'un soin

- **Prix (calcul)** : **32 s-surv** pour un soin altruiste (16 s × 2 survivants) ; auto-soin au Med-Kit ≈ **24 s** (calcul sur l'hypothèse d'un −33 % de vitesse appliqué simplement : à vérifier en jeu) ; Mangled +25 % ; Deep Wound à mender avant tout (10 s seul / 6 s par un allié).
- **Rapport** [HYPOTHÈSE] : un état de santé force au minimum un coup de plus, soit le cooldown de coup réussi (**2,7 s** [FACT] (VM)), votre boost au coup, puis une nouvelle phase de rattrapage (10 m d'avance ≈ 16,7 / 25 s bruts à 4,6 / 4,4 m/s ; ≈ 12-13 / 17-18 s avec Bloodlust et fente : calcul). Ordre de grandeur plausible : **~12-30 s de chase en plus**, très dépendant des tiles.
- **Bilan (calcul sur cette hypothèse)** :

| Réparateurs pendant la chase gagnée | Gain de la chase | Coût du soin altruiste | Verdict |
|---|---|---|---|
| 3 | 36-90 s-surv | 32 s-surv | **rentable** dans le cas idéal |
| 2 | 24-60 s-surv | 32 s-surv | **proche de l'équilibre** |
| + trajet vers le soigneur, coup unique, reblessure à distance, soigné qui ne sera pas le prochain chassé | — | — | **perdant** |

> **À retenir** : ni « toujours soigner » ni « jamais soigner ». Un état de santé n'est « encaissé » que s'il sert **en chase** : soignez en priorité le prochain survivant qui sera chassé.

### Table de décision

| Contexte | Décision | Pourquoi | Risque / alternative |
|---|---|---|---|
| Tueur à **coup unique** fréquent (Hillbilly, Cannibal, Oni Blood Fury, Shape en Evil Incarnate via la Slaughtering Strike (VM)) | Soin souvent **non rentable** | L'état de santé ne vaut rien contre l'attaque spéciale | Il garde de la valeur contre ses M1 [SITUATIONNEL] |
| Tueur à **blessure à distance / statut** (Legion, Plague, Trickster, Krasue…) | **Pas de soin par réflexe** | Il reblesse vite et à distance | Contre Plague, purifier crée des fontaines corrompues ; rester Broken est un compromis, pas une règle |
| Gen > ~70 % et tueur loin | **Finir le gen**, soigner après | Un gen fini est un acquis définitif | Si le tueur arrive : arbre GEN |
| Dernier gen, **Adrenaline** dans l'équipe | Le porteur ne se soigne pas | Adrenaline soigne d'un état à l'alimentation [FACT] (SS) | **Terminus** rend Broken à l'alimentation : Adrenaline ne soigne plus [FACT] (VM) |
| Perks « blessé » (Resilience 3/6/9 % (VM)…) | Rester blessé est **acceptable** | Bonus d'action | Un seul coup vous met au sol |
| Le TR arrive pendant le soin | **Par défaut, arrêter et partir** ; si le soin est presque fini (temps restant < arrivée − 2 s), finir | Soin interrompu conservé, sauf **Haemorrhage** (−7 %/s) [FACT] (SS) | Contre un tueur furtif, le TR arrive trop tard |
| **A Nurse's Calling** possible (28/30/32 m, LIVE 10.1.0 [FACT] (VP)) | Soigner **loin** du tueur ou derrière de la couverture | Auras de soin révélées dans ce rayon | Loadout du tueur caché : c'est une hypothèse à tester |
| Forte pression, 2 blessés | **Un seul** soin, le plus utile (meilleur looper ou prochain chassé) | Le 2e soin coûte 0,36 gen de plus | Zéro soin, gens à fond |
| **2 survivants restants** | Soin **presque toujours** rentable | Plus de cibles alternatives : chaque coup encaissé allonge la partie | Sauf si trappe / porte proche |

**Nombre de soigneurs** : **2 maximum en 1v4** [FACT] (VM) ; le « 3 » cité ailleurs est la règle du **2v8** (9.4.0/9.4.2). Un 3e survivant qui vient « aider » un soin n'accélère rien : il retourne sur un gen.

### Reset, regroupement, split pressure

- **Reset** [HEURISTIQUE] : remettre l'équipe « tout le monde sain » après une vague de pression. Deux soins altruistes = **64 s-surv ≈ 0,7 gen**. Rentable seulement si le tueur doit **encore** faire beaucoup de coups (tueur M1, gens nombreux). À 1-2 gens de la fin ou contre un tueur à coup unique, **rarement** rentable — mais un soin **ciblé** reste juste pour le survivant qui tiendra la chase d'endgame ou fera un protection hit, ou si personne n'a Adrenaline. Sous NOED / Exposed, être sain ne protège plus : ce n'est pas une raison de soigner.
- **Regroupement** : seulement pour **échanger des ressources** (Med-Kit, relevage, Boon) ou pour convertir en fin de partie. Toute autre proximité donne des cibles multiples.

**Arbre SOIN (version courte)** — complet : arbre 4 de `DECISION_TREES.md` (SOI-1 à SOI-12).

```
Blessé (moi ou un allié) → tueur proche (TR, chase près de nous) ?
├─ OUI → pas de soin ; partir (soin interrompu conservé, sauf Haemorrhage)
└─ NON → type de tueur ?
    ├─ coup unique → peu rentable contre le pouvoir ; valeur contre ses M1 ; défaut : gens
    ├─ blessure à distance / statut → pas par réflexe ; soigner le prochain chassé
    └─ M1 standard → Deep Wound ? oui → mender d'abord (10 s / 6 s)
                     non → 1 gen + Adrenaline dans l'équipe → le porteur ne se soigne pas
                                (Terminus suspecté → Adrenaline ne soigne pas)
                           gen en cours > ~70 % et tueur loin → finir d'abord
                           sinon : allié à < ~10 s → soin altruiste (32 s-surv)
                                   Med-Kit → auto-soin loin des gens occupés
                                   rien → rester blessé et réparer
  [SoloQ] un allié blessé vient vers moi : vérifier le TR avant de lâcher mon gen
  [SWF]   « je reste blessé » évite qu'un allié quitte son gen pour rien
```

**EXERCICE** : DR-18 (décision de soin) ; erreurs E-I02 (over-heal), E-T11 (Deep Wound sous pression).

Détail : `kb/research/batch9_macro.md` §2.9-2.10, §7.2.

---

## 6.6 Économie de l'information et positionnement `[Avancé]`

### Ce que vous émettez

| Émission | Reçue par | Effet | Confiance |
|---|---|---|---|
| Traces de griffures (course) | tueur, 10 s | Marcher les supprime ; indispensable après une perte de LOS | [FACT] (SS) |
| Flaques de sang, grognements (blessé) | tueur | Rester blessé rend la furtivité plus difficile | [FACT] existence ; portée [INCERTAIN] |
| Corbeaux (4 m) | tueur | Accroupi / Calm Spirit : pas d'envol | [FACT] (SS) |
| Corbeaux AFK (80/100/120 s d'inactivité) | tueur | Se cacher trop longtemps immobile finit par vous signaler | [FACT] (VP) |
| Skill check raté | tueur | −10 % ; bruit : à vérifier en jeu | [FACT] pénalité ; bruit [INCERTAIN] |
| Gen fini | tout le monde | Peut déclencher des perks (No Holds Barred…) | notification [INCERTAIN] |
| Interrupteur de porte (No Way Out) | tueur | Loud Noise ; blocage 12 s + 6/9/12 s par jeton | [FACT] (SS) |
| Accroupissements / gestes à < 10 m de The Judgment | tueur | 3 → Heresy | [FACT] (VP) |

### Ce que vous recevez gratuitement

- l'**identité du tueur**, révélée dès qu'un survivant entre en chase ou perd un état [FACT] (VP, 9.6.0) ;
- les **loadouts de vos coéquipiers** dans Match Details (perks, objets, add-ons, offrandes) [FACT] (VP, 9.6.0) ;
- le TR, la musique de chase, la tache rouge, l'aura de la trappe pour le dernier survivant [FACT] (SS) ; les auras des alliés accrochés : à vérifier en jeu [INCERTAIN].

**Le loadout du tueur reste caché jusqu'à la fin** [FACT] (VP) : toute « connaissance » de ses perks est une **déduction** (§6.8, suivi des perks).

> **Note avancée** — principe d'économie [HEURISTIQUE] : ne rien montrer au tueur coûte peu en début de partie et beaucoup en fin ; **acheter** de l'information (aller vérifier un crochet, regarder la chase d'un allié) coûte des s-surv. En SoloQ, on achète l'information avec des **perks** (Kindred, Bond, Empathy…, valeurs [INCERTAIN]) ; en SWF, avec la **voix**, qui est gratuite.

### Positionnement

- **Distance au crochet probable** [HEURISTIQUE] : pendant la chase d'un allié, se placer de façon à atteindre la zone de crochets probable **bien avant 70 s** — idéalement 20-30 s de course, soit **80-120 m** (calcul à 4 m/s) — sans être sur son chemin de portage.
- **Éviter le gen le plus proche du crochet** au moment de l'accrochage : c'est le premier que le tueur visite en repartant, et celui que Pain Resonance / Grim Embrace et Nowhere to Hide rendent dangereux.
- **Respecter les 16 m** pendant un face camp : être au-delà ne ralentit pas l'anti-camp [FACT] (SS). Mais **hors rayon ≠ hors vue** : à 16-30 m, un tueur qui regarde autour du crochet vous voit.
- **Rayons d'équipe** : Vigil (16 m), Boons (24 m), Bond, Empathy dictent le placement **si** l'équipe les porte (Match Details).
- **Proximité des ressources** : réparer un gen **adossé à un tile fort** plutôt qu'en dead zone ; contre les tueurs à mobilité, la LOS haute compte plus que le nombre de palettes.

### Exemple concret : l'accrochage à côté de ton gen [HEURISTIQUE]

- **Situation** : SoloQ. Tu répares le gen le plus proche du crochet où un allié vient d'être accroché (phase 1). Le TR s'est éteint il y a quelques secondes ; deux alliés sont sur des gens éloignés (HUD).
- **Informations connues** : le tueur sait où est le crochet ; il repart souvent d'abord vers le gen le plus proche (6.9) ; courir laisse 10 s de griffures [FACT] (SS) ; son loadout est caché (Pain Resonance, Nowhere to Hide possibles).
- **Options** : A. rester sur le gen ; B. courir tout de suite vers le crochet ; C. **marcher** hors de l'axe crochet-gen, se placer à distance de sauvetage (20-30 s de course), attendre qu'il s'engage ailleurs.
- **Analyse** : A fait de toi la première cible ; B dessine une piste de griffures depuis la zone où il revient ; C coûte quelques secondes de gen mais garde **et** le sauvetage **et** ta santé.
- **Meilleure logique** : C, sauf si le gen finit avant son arrivée avec 2 s de marge (2.2.5).
- **Erreur typique** : courir droit vers le crochet, ou rester caché si longtemps que le sauvetage passe en phase 2 (E-I04) ou que les corbeaux AFK te signalent (80/100/120 s, VP).

**CAS D'ÉCHEC** : l'économie d'information poussée trop loin devient du temps mort (E-D07, M-13). Se cacher n'a de valeur que si le tueur **cherche** près de toi.

**EXERCICE** : DC-11 « Qu'est-ce qu'il sait ? », DR-21 (prédiction), DR-16 (HUD SoloQ) ; erreurs E-A08, E-D13.

Détail : `kb/research/batch9_macro.md` §2.12-2.13.

---

## 6.7 Solo Queue : jouer sans voix `[Intermédiaire]`

> **Hypothèse de base** : vous ne parlez à personne. Le Survivor Intent System (messages d'intention) est **PTB 10.2.0 — non LIVE** : en 10.1.2a, vous n'avez que le HUD, les loadouts et le mouvement des autres.

### Le problème central

En SoloQ, la perte principale n'est pas la chase : c'est **le doublon et l'inaction**. Deux sauveteurs sur le même crochet, personne sur un autre, deux soigneurs pour un blessé, trois réparateurs sur un gen. L'ordre de grandeur (plusieurs gens perdus par partie désorganisée) est plausible [HYPOTHÈSE], mais aucune mesure fiable ne le chiffre.

### Lire le HUD

| Signal | Ce qu'il dit | Fiabilité | Décision typique |
|---|---|---|---|
| **Match Details : loadouts des coéquipiers** | Qui a Kindred, un Med-Kit, un anti-tunnel, Adrenaline… | [FACT] (VP, 9.6.0) | Choisir son rôle avant et pendant la partie |
| **Identité du tueur** (révélée à la 1re chase / 1re perte d'état) | Pouvoir, classe de vitesse | [FACT] (VP, 9.6.0) | Adapter soin, groupement, gens |
| **Onglet pouvoir du tueur** (Match Details) | Rappel du pouvoir | [FACT] (10.0.0) | Lire les mots-clés d'un tueur peu connu |
| **Portraits : état de santé** (sain, blessé, au sol, accroché, porté, mort) | Combien sont « chassables » | à vérifier en jeu [INCERTAIN] | Qui peut prendre des risques |
| **Portraits : indicateur de chase** | Quel allié est poursuivi | [INCERTAIN] | Un allié en chase → **réparer** |
| **Portraits : icônes d'action** (réparation, soin, décrochage…) | Ce que chacun fait | [INCERTAIN] (liste exacte à relever) | Éviter les doublons |
| **Compteur d'états de crochet** | Qui est à 1 ou 2 crochets | [INCERTAIN] (forme exacte) | Qui prend les risques |
| **Barre de phase d'un accroché** | Temps avant la phase suivante | 70 s [FACT] ; affichage [INCERTAIN] | Timing du sauvetage |
| **Jauge anti-camp** | Visible des autres survivants accrochés | [FACT] (SS, 9.3.0) | Accroché : savoir si l'auto-décrochage approche |
| **Barres de progression colorées** (9.6.0) | Mentionnées sans détail | existence [FACT] ; sens [INCERTAIN] | À vérifier en jeu |
| **Aura d'un allié au sol** | Position à secourir | basekit [INCERTAIN] (Knock Out ne la réduit plus depuis 8.6.0 (VM)) | Allié invisible → distance, Blindness ou perk tierce |

> **À retenir** : faire un « tour de HUD » de ~1 s **à chaque événement** (crochet, gen fini, cri, fin de chase), pas en continu. La caméra reste sur le jeu.

> **Note avancée** : toutes les branches `[SoloQ]` des arbres reposent sur des éléments du HUD que les sources vérifiées ne décrivent pas en détail. Relevez-les vous-même en jeu (DR-16) avant de leur faire une confiance aveugle.

### Comportements probabilistes des coéquipiers

Vous ne savez pas ce que feront les trois autres, mais vous pouvez **estimer** (probabilités subjectives, non mesurées) [HEURISTIQUE] :

| Situation | Hypothèse par défaut | Ajustement |
|---|---|---|
| Allié accroché, vous n'êtes pas le plus proche | Quelqu'un **peut** y aller, pas sûrement | **Délai de confirmation** (ex. 15-20 s, valeur de rédacteur) **adapté** : délai + trajet doit tomber avant la fin des 70 s. Si aucun portrait ne montre de sauvetage et qu'aucune aura ne bouge vers le crochet, **y aller** |
| Piège du délai fixe | Si les 3 joueurs appliquent le même délai, ils partent **ensemble** | En route, revérifier portraits/auras toutes les ~5 s et faire demi-tour si un autre est clairement devant |
| Deux auras se dirigent vers le crochet (Kindred) | Doublon imminent | Le plus loin fait demi-tour ; en cas d'égalité, départager sur ce que **vous voyez** : le sain / à 0 crochet continue, le blessé ou à 2 crochets fait demi-tour ; sinon celui déjà en course continue |
| Un allié a Adrenaline | Il ne se soignera pas au dernier gen | Ne pas perdre 16 s à le soigner |
| Un allié blessé s'approche | Il veut un soin… ou il amène le tueur | Vérifier le TR avant d'accepter ; soin loin du gen occupé |
| Un allié tourne en chase près de votre gen | Il peut vous amener le tueur | Lâcher le gen **tôt** si la chase se rapproche |
| Un allié est au sol près du tueur | Au moins un autre va tenter | Ne pas être le 2e ; rester à distance de relevage « après » |

### Communication indirecte (LIVE)

- **Mouvement visible** : se diriger franchement vers un crochet (visible pour ceux qui ont Kindred) est un message ; faire demi-tour aussi.
- **Actions visibles au HUD** : commencer un soin ou un décrochage apparaît sur votre portrait [INCERTAIN]. Ne pas « tenter » une action pour signaler si elle coûte.
- **Gestes et accroupissements** : utiles pour guider un blessé ou montrer un totem, **mais** contre The Judgment, 3 accroupissements / gestes à < 10 m donnent Heresy [FACT] (VP). Inutiles si l'allié ne vous regarde pas.
- **Préparation ostensible d'un save** (lampe, sabotage près d'un crochet) : indique aux autres qu'ils peuvent rester sur leurs gens.

### Décisions robustes `[Avancé]`

**QUOI** : une décision **robuste** est celle dont le **pire cas** reste acceptable, même si elle n'est pas optimale en moyenne. En SoloQ, l'incertitude sur les alliés est forte : préférer la robustesse [HEURISTIQUE].

| Choix | Version « optimale si l'équipe suit » | Version robuste SoloQ |
|---|---|---|
| Sauvetage | Attendre que le meilleur sauveteur y aille | Délai de confirmation adapté, puis y aller soi-même |
| Soin | Se faire soigner par un allié qui a un kit | Soin seulement s'il est rentable (§6.5) ; sinon rester blessé et réparer |
| 3-gen | Coordonner deux gens du triangle | Réparer soi-même un gen du groupe serré au bon moment |
| Anti-tunnel | Un coéquipier prend le protection hit | Prendre soi-même un anti-tunnel (Match Details : personne n'en a ?) |
| Endgame | Répartir les portes | Porte **la plus éloignée du dernier emplacement connu du tueur** ; supposer que les autres ouvrent la plus proche d'eux |
| Info | Compter sur le Kindred d'un allié | Prendre soi-même une perk d'info si personne ne l'a |

> **Erreur fréquente** — la plus coûteuse en SoloQ [AVIS D'EXPERT] : **« quelqu'un d'autre ira »** sur un crochet en fin de phase 1. Un doublon coûte quelques dizaines de s-surv (ordre de grandeur [INCERTAIN]) ; un état de crochet offert coûte une phase de 70 s de la vie de l'allié et un pas vers une mort qui retire un réparateur.

**CAS D'ÉCHEC** : la robustesse poussée à l'extrême devient de l'égoïsme ou du doublon systématique. Le délai de confirmation n'est pas une règle : c'est une horloge à ajuster au trajet et à la phase.

**EXERCICE** : DR-16 (lecture du HUD en SoloQ) ; erreurs E-D12 (ignorer le HUD et les loadouts) et E-A11 (supposer ce que feront les coéquipiers), `kb/research/batch11_training.md`.

Détail : `kb/research/batch9_macro.md` §3.

---

## 6.8 SWF : jouer en vocal `[Intermédiaire]`

> **Hypothèse de base** : groupe en vocal. La coordination supprime les doublons, mais crée d'autres erreurs : **surconfiance, altruisme excessif, bruit radio**. Aucun chiffre sourcé ne mesure le « gain » du vocal : ne citez pas de pourcentage d'évasion.

### Rôles (flexibles, pas des castes)

| Rôle | Mission | Perks / objets typiques (valeurs [INCERTAIN]) | Échec typique |
|---|---|---|---|
| **Runner / looper** | Prendre la 1re chase, la tenir **loin** des gens | Perks de chase, Will to Live | Ramener le tueur vers les gens |
| **Gen jockey** (×1-2) | Réparer sans être trouvé, annoncer les gens | Toolbox, Déjà Vu | Aller « voir » les chases |
| **Support / rescuer** | Suivre les crochets, soigner, décrocher | Med-Kit, Kindred, Babysitter, Reassurance | Trop tôt sur le crochet ; trade au mauvais moment |
| **Shot-caller** (rôle de parole) | Trancher : qui sauve, quel gen, quelle porte | — | Parler trop ; micro-gérer la chase |

Les rôles **changent** avec l'état de la partie [HEURISTIQUE] : le runner blessé à 2 crochets devient gen jockey ; le jockey sain devient runner si le tueur le trouve.

### Protocoles

1. **Crochet** : l'accroché annonce position + comportement du tueur (« il part nord » / « il reste »). Le shot-caller désigne **un** sauveteur (le plus proche **ou** le plus sain), qui annonce son **ETA**. Les autres continuent. « Décroché » ; le décroché annonce sa direction.
2. **Chase** : le poursuivi annonce le tile, les palettes restantes, son état, son intention (« je traîne vers killer shack ») ; il annonce **tôt** s'il va tomber (« je tombe dans 5 »).
3. **Gens** : repère de carte + % arrondi à la dizaine. Au-delà de 80 %, l'annoncer : candidat au 99.
4. **3-gen** : dès 3 gens restants (5 sur la carte), le shot-caller désigne deux réparateurs sur **deux gens différents du groupe serré**, pour les finir avant qu'ils ne deviennent le triangle final. Triangle déjà formé : split ou duo selon la position du tueur (§6.2).
5. **Slug** : « au sol, tueur à côté » → personne ne vient **par défaut** ; « tueur parti » → un relève. Exception annoncée : tueur qui attend indéfiniment → un sain le tire en chase, un autre relève (2 joueurs, assumé).
6. **Endgame** : décision **explicite** : 99 ou alimenter ; qui ouvre quelle porte ; qui sauve.

### Grammaire des callouts

**Structure** [HEURISTIQUE] : `[PRIORITÉ] SUJET – ÉTAT – LIEU – DIRECTION – INTENTION`, en **moins de 2 s**. Tout ce qui ne change pas une décision se tait pendant une chase.

- **Priorité** : « URGENT / STOP » pour un danger immédiat. Pendant une chase, seul le poursuivi parle, sauf URGENT.
- **Lieu** : **repères** de carte (main, killer shack, sous-sol, coins nommés) ; à défaut, boussole relative au bâtiment principal (« nord de main »). Se mettre d'accord au chargement.
- **Nombres** : dizaines de % pour les gens (« shack 60 »), secondes pour les ETA (« ETA 10 »), crochets en entier (« Nea deux crochets »).
- **Négations utiles** : « pas de TR », « pas de BBQ », « pas de Pop » — l'absence d'un effet est une information.

### Lexique FR / EN

| FR | EN courant | Sens |
|---|---|---|
| « Sur moi » | « On me » | Le tueur me poursuit |
| « Il part / il revient » | « He's leaving / he's back » | Direction du tueur après un crochet |
| « Proxy » | « Proxy camping » | Tueur qui patrouille à ~16-30 m du crochet |
| « Face camp » | « Face camping » | Tueur collé au crochet : personne ne vient, gens à fond |
| « Je prends le save, ETA 15 » | « I'll go, 15 out » | Un seul sauveteur désigné |
| « Reste sur ton gen » | « Stay on gen » | Anti-doublon |
| « Décroché » | « Unhooked » | Les 10 s de protections commencent |
| « Je tombe dans 5 » | « Going down » | Mise au sol imminente |
| « Trade » | « Trade » | Décrochage sous ses yeux, accepté par l'équipe |
| « Je prends le hit » | « I'll take a hit » | Protection hit prévu |
| « Gen shack 70 » | « Shack gen 70 » | Progression d'un gen |
| « 99 » | « 99 » | Gen tenu à 99 % |
| « Frappé / pointes » | « Kicked / spiked » | Gen frappé (pointes dès le 4e event) |
| « Bloqué » | « Blocked » | Gen bloqué par l'Entité (indice de perk) |
| « Hex à … » | « Hex at … » | Totem Hex trouvé |
| « Il a son pouvoir / plus de pouvoir » | « Power up / power down » | État du pouvoir (charges, cooldown) |
| « Palettes finies à … » | « Pallets gone at … » | Zone épuisée |
| « Porte à … / je l'ouvre » | « Gate at … / opening » | Gestion des portes |
| « Trappe à … » | « Hatch at … » | Position de la trappe |

### Suivi du tueur et de ses perks

Le loadout du tueur est caché jusqu'à la fin [FACT] (VP). Un joueur (souvent le shot-caller) tient un **registre oral** des indices et le résume à chaque événement :

| Indice observé | Hypothèse de perk | Confiance de l'effet |
|---|---|---|
| Gen le plus avancé perd un gros bloc, cris à un accrochage | Scourge Hook: Pain Resonance (−10/15/20 % de la progression totale) | (VM) |
| Les 3 gens les plus éloignés bloqués au début, déblocage au premier mourant | Corrupt Intervention (80/100/120 s) | (SS) |
| Le tueur arrive droit sur des survivants à ~24 m d'un gen qu'il vient de frapper | Nowhere to Hide (24 m, 3/4/5 s) | (VP) |
| Gens non réparés qui régressent seuls | Hex: Ruin (100/125/150 %) | (SS) |
| Gen le plus avancé bloqué à chaque gen fini | No Holds Barred (15/20/25 s) | (SS) |
| Interrupteur bloqué avec bruit à l'ouverture | No Way Out (12 s + 6/9/12 s par jeton) | (SS) |
| Portes bloquées après un accrochage, une porte déjà ouverte | Blood Warden (40/50/60 s, une fois) | (SS) |
| Exposed généralisé à l'alimentation | Hex: No One Escapes Death (Haste 2/3/4 %) | (SS) |
| Broken à l'alimentation, Adrenaline sans soin | Terminus (Broken jusqu'à 35/40/45 s après l'ouverture) | (VM) |
| Hindered juste après un drop de palette suivi d'une course | Knock Out (> 6 m dans les 6 s : Hindered 5 % 3/4/5 s) | (VM) |

**Suivi des crochets** : quelqu'un tient le compte « A:1, B:2, C:0, D:1 » et le rappelle à chaque accrochage. Il décide qui prend les risques et quand un trade devient inacceptable. Déduction détaillée : `kb/deliverables/PERK_DEDUCTION.md`.

### Erreurs propres au SWF

1. **Trop d'altruisme** : deux sauveteurs, deux soigneurs. Défaut (pas absolu) : **un événement = un joueur**, sauf appel explicite du shot-caller (relevage + protection hit contre un slug, par exemple).
2. **La lampe au lieu du gen** : chercher un flash save coûte les s-surv d'un réparateur ; seulement si l'on était déjà près du portage.
3. **Bruit radio** : parler pendant la chase d'un allié l'empêche d'entendre le TR et les sons du pouvoir. Silence par défaut.
4. **Sous-estimer l'adaptation du tueur** : une équipe qui répare vite déclenche souvent tunnel ou slug [AVIS D'EXPERT]. L'anticiper dans la composition (les loadouts sont aussi visibles en SWF).
5. **Surconfiance dans une annonce** : vérifier qu'elle est **récente** ; une position de tueur vieille de 15 s vaut un cône de ~70 m de rayon (calcul : 4,6 m/s × 15 s).

**EXERCICE** : DR-08 (callouts) — objectif ≥ 80 % de callouts actionnables en revue ; erreur E-T12 (callouts trop nombreux ou imprécis).

Détail : `kb/research/batch9_macro.md` §4.

---

## 6.9 Game sense `[Avancé]`

Le game sense n'est pas un don : c'est une **estimation continue** de quelques variables, mise à jour à chaque indice. Voici les variables, les indices, et comment s'y entraîner.

### Prédire la position du tueur

- **Modèle du cône** (calcul + [HEURISTIQUE]) : dernier point connu + temps écoulé × vitesse. 10 s après la dernière vue, un tueur à 4,6 m/s peut être n'importe où dans ~46 m ; mais il va presque toujours vers **l'objectif le plus rentable pour lui** : gen frappé récemment, dernier bruit, crochet où il vient d'accrocher, survivant blessé repéré.
- **Après un accrochage**, il repart vers (1) le gen le plus proche du crochet, (2) la direction d'où vient le sauveteur probable, (3) un gen qu'il sait réparé. S'il ne revient pas dans le TR en ~10 s, il s'est engagé ailleurs.
- **Indices** : TR, musique de chase, tache rouge, corbeaux [FACT] (SS) ; sons de kick et notification de gen fini [INCERTAIN] ; cris de Pain Resonance (SS ; la révélation de position est contestée).
- **Tueurs furtifs** : le TR ment. Le remplacer par corbeaux, cloche du Wraith, rugissement de la Pig, zones silencieuses suspectes, alertes de perks (efficacité de Spine Chill contre Undetectable [INCERTAIN]).
- **EXERCICE** : à chaque perte de vue du tueur, **dire à voix haute** où il sera dans 10 s ; vérifier. Mesure : taux de prédictions correctes sur 10 parties.

### Zones épuisées

- **QUOI** : zone où les palettes sont cassées ou utilisées et les fenêtres bloquées. Une fenêtre bloquée est **temporaire** (3e vault de la même fenêtre dans une poursuite = blocage 30 s pour ce survivant [FACT] (SS) ; Bamboozle 8/12/16 s pour tous (SS)) ; une palette cassée est **définitive** : ce sont les palettes qui font la zone épuisée.
- **POURQUOI c'est décisif** : l'espacement minimal entre palettes est de 14-20 m [FACT] (SS) ; dans une zone épuisée, la prochaine ressource est loin, pour **tout le reste de la partie**.
- **Mise à jour 9.2.0** : quantité et répartition des palettes ajustées sur 10 royaumes (MacMillan, Autohaven, Coldwind, Crotus Prenn, Haddonfield, Backwater, Red Forest, Yamaoka, Ormond, Decimated Borgo) pour réduire les dead zones [FACT] (VP). Toute connaissance de carte antérieure est à revérifier.
- **COMMENT** : retenir 3 choses par zone — palettes restantes, fenêtre bloquée, gen fini. En SWF, l'annoncer. **Réparer près des zones riches** en fin de partie ; attirer la chase vers une zone riche plutôt que vers les gens ; **ne pas gaspiller les palettes près du futur 3-gen** : ce sont les ressources de la fin.

### Estimer les gens

- **Horloge simple (calcul)** : un gen commencé en solo il y a t secondes est à ~t/90 ; à deux, t × 1,7/90. Soustraire les kicks (−5 % puis 0,25 charge/s) et les skill checks ratés (−10 %).
- **Usage** : savoir si l'on **finit** avant l'arrivée du tueur (arbre GEN) ; savoir combien de temps il reste avant les portes pour gérer un crochet (à 1 gen de la fin, la fenêtre de 70 s de l'accroché se compare à « finir le gen + 20 s de porte »).

### Prédire les coéquipiers

- **SoloQ** : hypothèses par défaut (§6.7) + loadout + style observé (un joueur qui a fait deux sauvetages tardifs en fera probablement un troisième).
- **SWF** : annonces ; le risque est inverse (trop de confiance dans une annonce périmée).

### Lire les intentions du tueur

| Pattern observé | Intention probable | Réponse [HEURISTIQUE] |
|---|---|---|
| Revient au crochet juste après le décrochage | Tunnel | Casser la LOS pendant les 10 s ; l'équipe répare |
| Reste à 16-30 m du crochet en frappant les gens voisins | Proxy camp | Sauvetage seulement quand il s'engage ; gens loin de sa zone |
| Laisse des survivants au sol, cherche les autres | Slug | Ne pas venir à deux ; rester loin sans relevage rapide |
| Frappe beaucoup de gens, chases courtes | Régression / 3-gen | Repérer le triangle ; split pressure |
| Abandonne vite les chases longues | Cherche des coups rapides | Tenir les tiles forts ; ne pas s'exposer en dead zone |
| Garde la même cible quelle que soit la distance | Tunnel ou Obsession | Anti-tunnel ; les autres réparent |
| Patrouille entre deux portes après alimentation | Gate camp | Deux portes à la fois ; finir si le temps restant < son arrivée, sinon lâcher (§6.11) |

### Tracker perks et hook stages

- **Perks** : en SoloQ, le suivi est mental ; se limiter aux 3 familles qui changent le plus les décisions : **ralentissement** (Pain Res, Ruin, Corrupt Intervention…), **aura** (Nowhere to Hide, BBQ…), **endgame** (NOED, No Way Out, Blood Warden, Terminus).
- **Hook stages** : le survivant à 2 crochets est un **mort en sursis** si le tueur le trouve : il ne fait pas les actions à risque.

### Reconnaître un snowball

Signaux d'une partie qui bascule (seuils indicatifs [HEURISTIQUE]) :
- 1er accrochage **avant** le 1er gen fini, avec un 2e blessé au même moment ;
- écart au tableau de course ≥ 0,25 (§6.1) ;
- un mort avant 3 gens finis (−33 % de débit parallèle quand un survivant est en chase) ;
- palettes consommées tôt dans la zone des gens restants ;
- 3-gen formé avec 2 survivants valides ou moins ;
- tueur à mobilité sur une petite carte, chases qui ne dépassent jamais ~30 s [INCERTAIN].

**Réponse** : passer en **mode conversion** — moins de soins, plus de gens ; renoncer aux sauvetages douteux ; viser 1-2 évasions plutôt que 4 [AVIS D'EXPERT]. **Cas d'échec** : l'égoïsme prématuré perd des parties rattrapables. Le signal doit être **cumulé**, jamais un seul indice.

### Décider avec une information incomplète

1. **Lister 2-3 hypothèses** : « il est au crochet » / « il est reparti vers le gen sud » / « il chasse X ».
2. **Pondérer** avec les indices (TR, portraits, dernier bruit).
3. **Comparer les pires cas** : rejeter une action dont le pire cas est catastrophique (mort d'un allié, 2 au sol à 2 survivants), même si elle est meilleure en moyenne.
4. **Acheter l'info si elle est bon marché** : 2 s de marche pour vérifier une LOS valent mieux qu'un sauvetage à l'aveugle.
5. **Décider vite** : une bonne décision prise 10 s trop tard coûte souvent plus qu'une décision moyenne prise à temps [HEURISTIQUE].

**EXERCICE** : DR-17 (horloge mentale), DR-07 (perk deduction), DR-19 (revue de partie) ; erreurs E-A08 (ne pas tenir la carte des ressources), E-T02 (ne pas mettre à jour sa perk deduction), E-T06 (détecter le 3-gen trop tard).

Détail : `kb/research/batch9_macro.md` §5.

---

## 6.10 Les 14 états de partie `[Avancé]`

> Priorités et erreurs = [HEURISTIQUE] sauf faits cités. **Catastrophique** = coûte au moins un état de crochet évitable ou ~1 gen de temps, ou retire définitivement un survivant.

| # | État (signal) | Priorités | Erreurs catastrophiques | SoloQ / SWF |
|---|---|---|---|---|
| 1 | **Début de partie** (0 à ~60 s ; apparition groupée à ≤ 12 m « when possible » [FACT] (VP, 9.0.0), sauf Shroud of Separation / Vigo's Shroud ; Shroud of Vanishing du tueur fait rejeter les offrandes d'apparition survivantes) | Se séparer vers des gens **différents** ; attaquer un gen du futur 3-gen ; lire Match Details ; identifier le tueur dès le reveal | Rester à 2-4 sur un gen sans raison (+18 à +82 % de coût et une 2e cible) ; fouiller des coffres (8 s chacun [FACT]) avant de savoir où est le tueur ; purifier des ternes | SoloQ : choisir son rôle selon les loadouts. SWF : annoncer les gens pris dès le chargement |
| 2 | **Premier contact** (tueur révélé, pas encore de chase) | Le survivant trouvé **éloigne** le tueur des gens ; les autres réparent ; adapter au pouvoir | Courir vers un gen occupé ; rester en dead zone ; courir trop tôt (griffures) | SWF : « sur moi, direction X » |
| 3 | **Première chase** | Durer, **loin** des gens ; garder les palettes près des gens clés ; les 3 autres réparent chacun un gen (≈ 1/30 de gen par seconde) | Aller « voir » la chase ; gaspiller les palettes d'une zone de 3-gen ; ramener le tueur sur un gen | SoloQ : ne pas lâcher son gen pour une chase qu'on ne voit pas |
| 4 | **Premier crochet** | **Un** sauveteur ; décrocher avant 70 s ; décroché qui casse la LOS ; soin loin | Deux sauveteurs ; trade sous un pouvoir prêt ; laisser passer la phase 1 ; soigner sous le crochet | SoloQ : délai de confirmation adapté. SWF : protocole crochet |
| 5 | **Midgame** (1-2 gens finis, rotation chase/crochet) | Garder 2-3 réparateurs actifs ; répartir les crochets ; surveiller le 3-gen ; ne soigner que le rentable | Laisser se former le 3-gen ; soins en série (2 × 32 s-surv) ; tout le monde à 1-2 crochets sans anti-tunnel | SWF : suivi oral des crochets et des perks |
| 6 | **3 gens restants** (2 finis, **5 sur la carte**) | Choisir les **2 prochains gens finis** pour que les 3 derniers ne forment pas un triangle serré : finir **dans** le groupe serré ; garder les palettes de la zone | Finir des gens extérieurs et laisser un groupe serré pour la fin ; abandonner un gen frappé (−5 % puis 0,25 charge/s) | SoloQ : réparer soi-même un gen du groupe serré. SWF : le shot-caller nomme les gens prioritaires |
| 7 | **2 gens restants** | Anticiper les perks de fin (Adrenaline/Hope des alliés ; indices de NOED, No Way Out) ; purifier les ternes croisés si NOED suspecté ; se placer près des portes probables | Soins inutiles juste avant une Adrenaline ; tous en chase / crochet en même temps ; gaspiller les dernières palettes | — |
| 8 | **1 gen restant** (4 finis, **3 sur la carte** : ici se joue le 3-gen) | 3-gen : split ou duo selon la position du tueur ; décider **99 ou alimenter** ; savoir où sont les portes ; un allié accroché change tout | Alimenter pendant qu'un allié est accroché avec le tueur au crochet (anti-camp, Elusive et Will to Live perdus [FACT]) ; laisser un 99 sous Ruin ; hérétique qui tient le 99 (Good = −3 %) | SWF : décision explicite du 99. SoloQ : ne pas tenir un 99 seul trop longtemps |
| 9 | **Portes alimentées** | Porte la plus loin du tueur ; deux portes à la fois ; sauvetage **planifié** seulement | Se faire accrocher après l'ouverture d'une porte (Blood Warden : 40-60 s de blocage) ; prendre un coup sous NOED ; décrocher sans plan (ni Elusive ni anti-camp) | — |
| 10 | **Endgame Collapse** (120 s, ~240 s max ralenti) | Sortir ; sauvetage seulement si le timer ralenti laisse le temps **et** qu'un plan existe | Attendre dans la sortie (Heresy à 45 s contre The Judgment ; auras de Blood Warden) ; revenir « aider » sans plan ; oublier que l'EGC ne s'arrête jamais | — |
| 11 | **Survivant à 2 crochets** (death hook) | Il **évite** chases et actions à risque ; les autres prennent les protection hits ; il répare dans les zones calmes | Lui faire décrocher ou prendre la chase ; le laisser seul face à un tueur qui tunnel ; l'envoyer sur un save risqué | SWF : « A:2 » rappelé à chaque accrochage |
| 12 | **Plusieurs survivants au sol** | Le dernier debout évite la chase ; relever **un** allié quand le tueur est parti ; ramper vers les alliés | Relever à deux sous ses yeux ; dernier debout mis au sol (tous au sol → Surrender possible) ; à 2 survivants, tomber (n'importe où) pendant que l'allié est en Struggle (Mori [FACT]) | SoloQ : ramper vers l'allié debout. SWF : « ne venez pas » / « il est parti » |
| 13 | **Tueur sans pression** (≥ 3 survivants sur les gens, chases longues, 0-1 crochet) | **Convertir** : finir les gens plutôt que soigner ; ne pas offrir de cible ; préparer l'endgame | Relâcher l'attention (se montrer, t-bag : info, Heresy contre The Judgment) ; offrir un premier crochet par excès de confiance ; greed de palettes inutile | — |
| 14 | **Tueur avec forte pression** (0-1 réparateur, blessés multiples, crochets enchaînés) | Casser le cycle : **une** chase longue, les autres réparent ; accepter de rester blessé ; éviter la zone du crochet ; viser 1-2 évasions si le tableau de course est perdu | Soins en série ; sauvetages multiples ; groupement ; ignorer le 3-gen ; abandonner trop tôt une partie rattrapable | SoloQ : décisions robustes. SWF : le shot-caller réduit les annonces à l'essentiel |

> **À retenir** — trois transitions décident le plus souvent du résultat [AVIS D'EXPERT] : **3 → 4** (qualité du premier sauvetage), **5 → 6** (géométrie des gens restants), **8 → 9** (moment de l'alimentation).

**Quel arbre sortir dans quel état** (ch. 13) [HEURISTIQUE] : états 2-3 → Arbre 2 — Quitter la tile et Arbre 1 — Palette (13.8-13.9) ; état 4 et 11 → Arbre 3 — Crochet (13.10) ; états 5 et 14 → Arbre 4 — Soin (13.11) ; états 6-8 → Arbre 5 — Gen (13.12) ; état 7 → Arbre 6 — Totem (13.13) ; état 12 → Arbre 7 — Slug (13.14) ; états 9-10 → Arbre 8 — Endgame (13.15) ; dernier survivant → Arbre 9 — Trappe (13.16).

**EXERCICE** (DC-12 « avance / retard », niveau 9) : au début de chaque chase et à chaque accrochage, dis à voix haute le **numéro d'état** et la **priorité** de la ligne correspondante ; en revue, vérifie que ta décision suivante l'a respectée. **CAS D'ÉCHEC** : nommer l'état sans changer d'action (on joue l'état 13 alors qu'on est en 14).

Détail : `kb/research/batch9_macro.md` §8.

---

## 6.11 Fin de partie : 99, portes, trappe, EGC `[Avancé]`

### Le dernier gen et le « 99 »

- **QUOI** : tenir le dernier gen à ~99 % sans le finir, pour choisir **le moment** de l'alimentation.
- **POURQUOI** : l'alimentation des portes est **un interrupteur de règles** :
  - l'**anti-camp est désactivé** [FACT] (SS) ;
  - **Elusive** n'est plus donnée au décrochage ; Endurance + Haste restent [FACT] (VP) ;
  - **Will to Live** est désactivé [FACT] (SS) ;
  - les perks de fin se déclenchent : Adrenaline, Hope, Wake Up! côté survivants ; NOED, No Way Out, Terminus, Blood Warden côté tueur.
- **QUAND tenir le 99** [SITUATIONNEL] :
  - un allié est accroché (ou va l'être) et le tueur est près du crochet : alimenter lui coupe l'anti-camp et Elusive ;
  - plusieurs blessés et Adrenaline dans l'équipe : alimenter **au moment** où ça soigne utilement (fin de chase) ;
  - suspicion de NOED / Terminus / No Way Out : alimenter quand l'équipe est en position (près des portes, pas en chase).
- **QUAND ne pas le tenir** :
  - le tueur est **sur** le gen ou arrive : un kick fait 99 → 94 % puis régression ; le 99 devient un ~90-94 % (ordre de grandeur) ;
  - **Hex: Ruin** actif : un 99 non tenu fond ;
  - **Heresy** (The Judgment) : un skill check Good fait −3 % [FACT] (VP) : un hérétique ne tient pas de 99 ;
  - tout le monde est sain et libre : chaque seconde de 99 est une seconde où le tueur peut trouver quelqu'un. Alimenter et ouvrir.
- **COMMENT** : relâcher à **97-98 %** plutôt qu'à 99 (un Great ajoute +1 % et peut finir le gen par accident ; un raté fait −10 % et du bruit). Un survivant reste **à côté** (pas dessus) ; finir coûte ~1-3 s solo.
- **CONTRE (contre-jeu du tueur)** : un survivant qui attend à côté d'un gen sans réparer est un indice lisible ; un tueur qui soupçonne un 99 patrouille ce gen et le frappe. Le 99 est un outil pour **quelques dizaines de secondes** autour d'un événement précis, pas une posture par défaut.
- **CAS D'ÉCHEC** : en SoloQ, personne ne sait qu'un 99 est tenu ; un allié peut le finir. Ne pas bâtir un plan dessus.

### Portes et gate camp

- **Faits** : ouverture **20 s**, progression **conservée** [FACT] (SS) ; ouverture par le tueur 0,75 s [INCERTAIN]. Blocages de l'Entité : Blood Warden 40/50/60 s (une fois) ; No Way Out 12 s + 6/9/12 s par jeton [FACT] (SS) ; Remember Me : ouverture jusqu'à 38/44/50 s pour tous sauf l'Obsession [FACT] (SS).
- **Répartition** [HEURISTIQUE] : une porte par survivant libre, **la plus éloignée du tueur** d'abord. Deux portes ouvertes à la fois forcent le tueur à choisir. (Suppose de connaître l'emplacement des portes : voir le chapitre 5.)
- **Gate camp — règle unique** (même logique que le gen) : **temps restant d'ouverture** (20 s × % restant : **2 s à 90 %**, **1 s à 95 %**, calcul) **< temps d'arrivée du tueur** → **finir** ; sinon **lâcher** l'interrupteur (progression conservée) et revenir quand il repart. Nuance : finir ouvre la porte **et** lance l'EGC ; si un allié est encore accroché ou au sol, c'est une décision d'équipe.
- **Contre No Way Out** : le premier contact avec un interrupteur fait du bruit et bloque les deux : **toucher l'interrupteur quand le tueur est loin et occupé**, puis attendre à distance.
- **Contre Blood Warden** : une porte ouverte, **ne plus se faire accrocher** (blocage 40-60 s) ; ne pas traîner dans la sortie (auras révélées).
- **Contre The Judgment** : **45 s dans le seuil d'une porte = Heresy** ; porte bloquée 8 s pour l'hérétique si la Heresy est acquise à < 32 m d'une porte [FACT] (VP principe / SS valeurs).
- **Sortir** : attendre dans la sortie n'a de valeur que pour un **save** prévu. Le t-bag donne de l'information (et la Heresy contre The Judgment).

> **Erreur fréquente** : traîner à la porte ouverte (E-A09). L'EGC ne s'arrête jamais, et chaque seconde d'attente est une seconde d'exposition.

### La trappe et le standoff

- **Faits** [FACT] (SS) : la trappe s'**ouvre automatiquement quand il ne reste qu'un survivant** ; son aura est **visible de lui seul** (5.3.0) ; clé : 2,5 s ; **fermée par le tueur → EGC** ; elle **se referme après chaque évasion** (8.1.0).
- **Dernier survivant avec des gens restants** [HEURISTIQUE] :
  1. **trappe** : s'y déplacer furtivement, en marchant si le tueur est proche ;
  2. **portes** : seulement si les gens sont presque finis **et** qu'on sait où est le tueur — un gen seul, c'est 90 s.
- **Standoff** (tueur et survivant près de la trappe) :
  - le tueur **ne voit pas l'aura** : s'il est dessus, il l'a trouvée (repère, bruit, hasard) ;
  - s'il la ferme, l'EGC démarre : atteindre une porte et l'ouvrir (20 s). Il ne garde qu'une porte à la fois : aller à celle **opposée à sa position** au moment de la fermeture ;
  - vous ne pouvez pas « forcer » le passage d'un tueur collé (durée du saut : [INCERTAIN]) : ne pas se montrer, attendre qu'il quitte l'axe, **pré-positionner** sa route vers la porte la plus éloignée ;
  - rouvrir une trappe fermée avec une clé : [INCERTAIN].
- **Cas d'échec** : courir vers la trappe devant le tueur ; attendre immobile si longtemps que les **corbeaux AFK** (80/100/120 s) vous signalent.

### EGC et fins à 2 survivants

- **Faits** [FACT] (SS) : EGC **120 s**, déclenché par l'ouverture d'une porte **ou** la fermeture de la trappe ; **moitié de vitesse** si un survivant est au sol ou accroché (max 4 min) ; **jamais arrêté** ; gens bloqués.
- Un allié accroché pendant l'EGC **ralentit le timer** : il reste du temps pour un sauvetage, mais sa phase de 70 s continue de courir.
- **Fin à 2 survivants** [FACT] (VP / SS) : auto-décrochage possible (4 %) ; **2 skill checks de lutte manqués = sacrifice** ; **tous les survivants restants accrochés en même temps = sacrifice** ; **Mori** possible si l'un est en Struggle et l'autre au sol. Donc :
  - **éviter à tout prix d'être mis au sol pendant que l'allié est en Struggle, où que vous soyez** (refuser les chases évitables ; si elle est inévitable, la jouer sur le tile le plus fort) : les sources ne donnent aucune condition de distance pour ce Mori ; la proximité du crochet augmente seulement la probabilité d'être trouvé ;
  - tenter le sauvetage **seulement** si le tueur est engagé ailleurs ou loin ; sinon la trappe ne s'ouvrira qu'à la mort de l'autre ;
  - jouer la trappe quand le sauvetage est impossible n'est pas « égoïste » [AVIS D'EXPERT].

### Arbre ENDGAME (version courte)

Complet : arbres 5.2 (sous-arbre 99), 8 (endgame) et 9 (trappe) de `kb/deliverables/DECISION_TREES.md` (feuilles GEN, END-1 à END-10, TRP-0 à TRP-4).

```
Tous les gens finis ?
├─ NON, 1 gen restant → 99 ou alimenter ?
│   ├─ allié accroché + tueur près du crochet → 99 (sinon anti-camp, Elusive, WTL perdus)
│   ├─ blessés + Adrenaline dans l'équipe → alimenter hors chase, équipe en position
│   └─ Ruin / hérétique / tueur qui arrive sur le gen → finir tout de suite
└─ OUI, portes alimentées
    ├─ allié accroché ? → anti-camp COUPÉ : le tueur peut camper sans pénalité
    │   ├─ ouvrir entièrement une porte → EGC (ralenti tant qu'il est accroché)
    │   │   ou la laisser à ~90 % → pas d'EGC, mais 2 s à finir sous pression
    │   ├─ sauvetage seulement avec un plan (protection hit, distraction) :
    │   │   Endurance + Haste oui, Elusive NON ; Blood Warden si une porte est ouverte
    │   └─ à 2 survivants : Mori si l'accroché est en Struggle et le sauveteur tombe
    ├─ tueur à une porte → ouvrir l'autre ; lâcher l'interrupteur s'il arrive
    ├─ No Way Out suspecté → toucher l'interrupteur quand il est loin, attendre à distance
    ├─ NOED (Exposed) → aucun coup gratuit ; un joueur cherche le totem, les autres ouvrent
    └─ porte ouverte → sortir sauf plan précis ; pas d'attente dans le seuil
Dernier survivant ?
├─ gens restants → trappe (aura visible de vous seul) ; marcher près du tueur
├─ trappe fermée → EGC : porte la plus éloignée de lui, 20 s
└─ standoff → ne pas se montrer ; route pré-positionnée vers la porte opposée
  [SoloQ] supposer que les autres ouvrent la porte la plus proche d'eux : prendre l'autre
  [SWF]   plan explicite : « A ouvre nord, B sud, C sauve »
```

**EXERCICE** : DR-11 (endgame : plan annoncé à 1 gen restant dans 100 % des parties) ; erreurs E-A09 (traîner à la porte), E-T07 (trappe contre porte mal arbitrées).

Détail : `kb/research/batch9_macro.md` §6, §7.6.

---

## 6.12 Situations concrètes `[Expert]`

Format : situation → informations connues → options → analyse → meilleure logique → erreur typique. Les situations sont construites pour illustrer ; ce ne sont pas des parties observées.

### A. Proxy camp au premier crochet (SoloQ)

**Situation** : 4 gens restants. Meg est accrochée (1er crochet), il lui reste ~35 s de phase 1. Le tueur (Trapper, M1, pièges) patrouille à ~20 m du crochet et frappe un gen voisin. Vous êtes sain, sur un gen à 40 % à ~50 m. Match Details : personne n'a Kindred ; Claudette a un Med-Kit.

**Informations connues** : au-delà de 16 m, l'anti-camp **ne se remplit pas** [FACT] ; phase 1 = 70 s [FACT] (VP) ; protections : Endurance + Haste 10 s + Elusive 10 s [FACT] (VP) ; un Trapper piège volontiers les abords du crochet.

**Options** : A. décrocher tout de suite · B. rester sur le gen, attendre qu'il s'engage, puis y aller · C. rester et laisser les autres gérer.

**Analyse** :
- **A** : trade quasi certain, et risque de piège sur le trajet. Cas probable : vous blessé + Meg (Endurance → Deep Wound au 1er coup) remise au sol puis raccrochée = **1 état** (le même que l'expiration de sa phase) **plus** votre blessure. Pire cas : vous piégé ou au sol aussi → **2 états**.
- **B** : le proxy lui coûte les gens lointains (3 s-surv/s si les 3 autres réparent). S'il s'engage ailleurs dans les 15-20 s, le sauvetage devient propre. Pire cas : Meg passe en phase 2.
- **C** : sans Kindred, rien ne garantit qu'un autre y aille : même pire cas que B, **sans** la chance d'un sauvetage propre.

**Meilleure logique** : **B avec échéance**. En fin de délai, se rapprocher à ~30-40 m hors de sa zone ; s'il reste, décrocher vers ~10 s restantes **par un angle sans pièges visibles** : laisser expirer la phase donne le même état que le trade raté « probable », sans la chance de réussir. Blessé, laisser plutôt passer la phase. **Limite** : contre un coup unique ou un ranged prêt, l'échéance « ~10 s » devient bien plus risquée.

**Erreur typique** : « l'anti-camp va la décrocher, je répare » ; ou y aller à trois par réflexe SoloQ.

### B. 3-gen formé, tueur qui patrouille et frappe (SWF)

**Situation** : 4 gens finis, **1 gen restant** ; les 3 derniers gens forment un triangle serré (G1 et G2 à 30 m l'un de l'autre, G3 à ~25 m des deux). G1 à 50 %, G2 à 30 %, G3 à 0 % ; G1 et G2 déjà frappés 3 fois chacun. Tueur furtif (Wraith), vu en dernier en train de frapper G2. Trois sains, un blessé, personne accroché.

**Informations connues** : finir **un seul** gen alimente les portes [FACT] ; kick −5 % puis 0,25 charge/s, 5 % pour stopper, plafond 8 events [FACT] (VM) → il reste **5 kicks** au tueur sur G1 et G2. Débits (calcul) : G1 (45 charges) = 45 s solo, **~26,5 s** en duo, **~21,4 s** à trois ; G2 (63 charges) = 63 s solo. Un tueur à ~30 m revient en **~6,5 s** (calcul, ligne droite) ; furtif = pas de TR fiable.

**Options** : A. les 3 sains sur G1 · B. split : duo sain sur G1, 3e sain sur G2, le blessé à distance prêt à reprendre un gen lâché ou à tirer la chase loin · C. soigner d'abord le blessé.

**Analyse** :
- **A** : ~21 s de travail contre ~6-7 s de retour possible : il trouve **3 survivants groupés**, un coup facile, et frappe G1. Ne vaut que s'il est engagé en chase **loin** du triangle.
- **B** : il ne défend qu'un gen à la fois. S'il va sur G1, le duo se sépare (le plus faible en chase part, l'autre finit si possible) et G2 avance ; s'il va sur G2, G1 tombe en ~26 s. Chaque kick lui coûte 1,8 s, un aller-retour et un de ses 5 events restants.
- **C** : 32 s-surv pendant que rien n'avance et que G2 régresse. Le soin a de la valeur contre un M1, mais **après** l'alimentation ou pendant une chase longue.

**Meilleure logique** : **B**. Le shot-caller nomme les gens (« centre-nord duo, centre-sud solo ») ; le blessé reste hors du triangle et annonce la cloche du Wraith ; si le tueur s'engage en chase loin, basculer en A. **Contre-jeu du tueur** : il peut ignorer G2 et chercher un coup sur le duo ; le duo répare en surveillant les indices et se sépare tôt.

**Erreur typique** : avoir fini les gens extérieurs en milieu de partie (ce qui a créé ce triangle, état 6) ; se regrouper à trois sur un gen.

### C. Portes alimentées, allié accroché, tueur au crochet (SoloQ)

**Situation** : gens finis il y a ~20 s. Dwight est accroché pour la 2e fois (phase Struggle, ~40 s restantes). Le tueur reste à 8 m du crochet. Vous êtes sain, à la porte nord ouverte à 60 % (12 s faites, **8 s restantes**, calcul). Nea est blessée près de la porte sud. Vous êtes 3 en vie.

**Informations connues** : portes alimentées → **anti-camp désactivé** [FACT] (SS) ; décrochage en endgame : Endurance + Haste 10 s, **pas d'Elusive** [FACT] (VP) ; porte 20 s, progression conservée ; EGC ralenti tant qu'un survivant est accroché [FACT] (SS) ; Blood Warden possible, non confirmé.

**Options** : A. décrocher tout de suite · B. finir d'ouvrir la porte nord, puis tenter un sauvetage si une fenêtre s'ouvre · C. ouvrir et sortir.

**Analyse** :
- **A** : le tueur à 8 m voit le sauvetage ; Dwight a Endurance mais pas Elusive pour le semer ; seul, vous pouvez finir blessé et Dwight repris. Pire cas : deux morts, aucune porte ouverte.
- **B** : ouvrir lance l'EGC, mais ralenti tant que Dwight est accroché : le vrai compteur, ce sont ses ~40 s de phase. Une porte ouverte = sortie sûre pour la suite. Nea peut tenter aussi (doublon possible, mais deux survivants peuvent être utiles : un décroche, l'autre prend le coup — pas Nea, blessée).
- **C** : sûr pour vous, mais abandonne Dwight alors qu'il reste ~40 s.

**Meilleure logique** : **B**, puis sauvetage **si** le tueur s'éloigne ou se laisse distraire ; sinon sortir vers ~10 s de la fin de la phase de Dwight. Votre état sain est la ressource : protection hit + Endurance de Dwight donnent une petite fenêtre vers la porte ouverte. En SoloQ, la décision doit rester bonne **même si Nea ne fait rien**.

**Erreur typique** : croire qu'Elusive s'applique en endgame (ou, à l'inverse, que toutes les protections disparaissent) ; décrocher avant d'ouvrir une porte (20 s d'ouverture sous pression) ; attendre dans la porte ouverte (Blood Warden, The Judgment).

### D. Standoff de trappe (dernier survivant)

**Situation** : vous êtes le dernier survivant, 2 gens restants. L'aura de la trappe est à ~25 m, près d'un bâtiment. Le tueur (Blight, mobile) patrouille à ~15 m de la trappe ; il ne vous a pas vu. Vous êtes blessé, sans clé.

**Informations connues** : trappe visible **de vous seul** [FACT] (SS) ; fermée → EGC, porte de 20 s ; contre Blight, la distance entre portes protège peu ; blessé = flaques de sang et grognements.

**Options** : A. sprinter vers la trappe · B. attendre hors de vue (marche, accroupi) qu'il s'éloigne, puis marcher vers la trappe · C. partir vers une porte en anticipant la fermeture.

**Analyse** :
- **A** : griffures et bruit ; il est plus près de la trappe que vous : il vous coupe. Pire cas : fin de partie.
- **B** : s'il ne connaît pas la trappe, il finira par s'éloigner (il cherche aussi le survivant) ; s'il la ferme, vous êtes hors de vue et pouvez partir vers la porte la plus éloignée de lui.
- **C** : vous éloigne de votre meilleure sortie tant qu'elle est ouverte.

**Meilleure logique** : **B**, en préparant la route vers la porte **opposée** à sa position. Si la trappe se ferme, partir immédiatement : votre chance est qu'il choisisse la mauvaise porte ou perde votre trace.

**Erreur typique** : courir vers la trappe devant le tueur ; essayer de se soigner (pas d'auto-soin sans objet ni perk) au lieu de bouger ; rester immobile au point de déclencher les corbeaux AFK.

Détail : `kb/research/batch9_macro.md` §9.

---

## 6.13 Limites de ce chapitre

- **Aucune source experte, aucune VOD** n'a été consultée : les jugements stratégiques (priorité du 3-gen, erreur SoloQ la plus coûteuse, transitions décisives) sont des [AVIS D'EXPERT] **non sourcés**.
- **Non calculables faute de source** : valeur exacte d'un état de santé en secondes de chase, durée du ramassage, ampleur du ralentissement de l'anti-camp par les survivants proches. (Remplissage de l'anti-camp, relevage et portage sont désormais chiffrés : calculs SS, §6.1 et §6.4.)
- **HUD SoloQ** : icônes d'action, compteur de crochets, indicateur de chase et barres colorées (9.6.0) ne sont pas décrits par les sources vérifiées.
- **Valeurs de perks** : désormais re-vérifiées (Kindred 8/12/16 m, Déjà Vu 4/5/6 %, Hope 3/4/5 %, No Holds Barred 15/20/25 s, Remember Me 38/44/50 s… : voir chapitres 9 et 10) ; ce chapitre n'en cite que les effets qualitatifs.
- **Seuils de rédacteur** : délai de confirmation SoloQ (15-20 s), seuils du tableau de course (0,25 / 0,4), marge de 2 s : à calibrer par vos propres parties.
- **Questions ouvertes** : l'Elusive de décrochage est-elle annulée par une action voyante (wiki contradictoire [INCERTAIN]) ? (Ouvrir une porte **est** une action voyante (SS) : elle coupe l'Endurance.) Le Mori de fin a-t-il une condition de distance ? Pain Resonance révèle-t-elle la position ? Off the Record est-elle coupée à l'alimentation ? (Tranchés le 27/09/2026 : 2 soigneurs max, rampement 0,7 m/s sans récupération.)
- **PTB 10.2.0 — non LIVE** : si le Survivor Intent System et la refonte Abandon/Surrender sortent en LIVE, les parties SoloQ (§6.7) et slug (§6.4) seront à réécrire.

Détail des points à sourcer : `kb/research/batch9_macro.md` (« Points à sourcer », « Questions ouvertes ») et `kb/audit/pass14_lot9_macro.md`.

---

## Sources du chapitre

- `kb/research/batch9_macro.md` (lot 9, audité) — source principale.
- `kb/research/batch12_mechanics_open.md` (lot 12, 27/09/2026) — soigneurs, rampement, anti-camp (Resolve), portage, relevage.
- `kb/audit/pass14_lot9_macro.md` — audit adversarial du lot 9 (corrections appliquées).
- `kb/deliverables/DECISION_TREES.md` — arbres complets (crochet, soin, gen, totem, slug, endgame, trappe).
- `kb/research/batch11_training.md` — erreurs (E-…) et drills (DR-…) cités.
- `kb/deliverables/PERK_DEDUCTION.md`, `kb/deliverables/PERK_DATABASE.md` — déduction et valeurs de perks.
- `kb/ledgers/AUDIT_PHASE0_ERRATA.md` ; `kb/seed/audit_phase0.txt` (tables « Référence vérifiée », registre de patchs 9.0.0 → 10.1.2a).
- Notes officielles BHVR (`kb/sources/patches/patch_*.txt` et `official_*.txt`) : 9.0.0 (apparitions, Mori de fin), 9.1.0 (règles à 2 survivants), 9.2.0 (palettes, Abandon), 9.3.0 (anti-camp), 9.6.0 (Match Details), 10.1.0 (protections de décrochage, The Judgment), 10.1.2 (Exile).
- Pages wiki (générateurs, crochets, soin, état mourant, portes, trappe, Endgame Collapse) : via les tables de l'audit phase 0, pas de copie locale ; pages tueurs dans `kb/sources/wiki_killers/`.
