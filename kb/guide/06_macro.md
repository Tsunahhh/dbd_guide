# 6. Macro, équipe et game sense

> **Périmètre** : mode **1v4 uniquement**, version **LIVE 10.1.2a (17/09/2026)**. Le 2v8 (13 gens présents / 8 requis, deux tueurs) a une macro différente : rien de ce chapitre ne s'y transpose. Le **Survivor Intent System** et la refonte **Abandon/Surrender** sont « **PTB 10.2.0 — non LIVE** » : ils n'existent pas dans les parties que vous jouez aujourd'hui.

Ce chapitre traite de tout ce qui se passe **hors de votre propre chase** : où réparer, qui sauve, quand soigner, comment lire la partie, comment finir. La chase elle-même (tiles, palettes, fenêtres) est traitée ailleurs ; ici, la chase est une **ressource de temps** que l'équipe convertit en gens.

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
| Au sol | récupération auto jusqu'à **95 % en 30,4 s**, « à l'arrêt » selon le wiki ; **aucune auto-relève basekit** ; bleed-out **240 s** | [FACT] (VM / VP) ; « à l'arrêt » (SS) |
| Totem | purification **14 s** ; Boon 14 s (28 s sur un Hex), rayon 24 m | [FACT] (SS) |
| Porte / EGC | porte **20 s**, progression conservée ; EGC **120 s**, moitié de vitesse si un survivant est au sol / accroché (max 4 min), jamais arrêté | [FACT] (SS) |
| Vitesses | survivant **4,0 m/s** ; tueurs **4,6 ou 4,4 m/s** (Nurse 3,85 ; Blight 4,4 depuis 9.6.0) | [FACT] (VM) ; Nurse (SS) ; Blight (VP) |
| Portage | 3,68 m/s | **[INCERTAIN]** (INC) : ordre de grandeur seulement |

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
  2. **Perks de duo** (Prove Thyself…) : valeurs [INCERTAIN] et soumises aux rendements décroissants depuis 9.6.0 [FACT] (VP). Ne pas supposer qu'elles annulent la pénalité : faire le compte.
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
- **CONTRE** : plus urgent contre les tueurs à patrouille sans mobilité et contre les ralentissements par kick ou blocage (No Holds Barred bloque le gen le plus avancé à chaque gen fini, valeurs [INCERTAIN]). Contre un tueur très mobile (Nurse, Blight, Hillbilly…), la distance protège moins : la chase compte plus que le 3-gen [SITUATIONNEL].
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
| Les 2 autres réparent déjà : même raté, le trade achète une chase | Tueur à **coup unique prêt** (Hillbilly, Cannibal, Oni en Blood Fury ; Shape en Evil Incarnate : [INCERTAIN]) |
| — | L'accroché a encore > 20 s de phase et le tueur risque de partir |
| — | **Fin à 2 survivants** : Mori et « tous accrochés = sacrifice » (§6.11) |

**Ce que coûte vraiment un trade raté** : grâce à l'Endurance du décroché, le pire cas n'est **pas** « 2 états de crochet » d'office, mais : sauveteur blessé (ou au sol s'il était blessé) + décroché remis au sol après un **2e** coup. Compter les états réellement offerts, pas le nombre de survivants touchés.

### Saves

- Un save réussi (lampe, palette, sabotage, body block) économise **un état de crochet complet**, le plus gros gain possible pour un seul geste ; un save raté coûte le temps de deux survivants et donne souvent deux blessés [HEURISTIQUE].
- **[SoloQ]** : un seul tentateur, et seulement s'il était **déjà** là. Pas de traversée de carte pour une lampe.
- **[SWF]** : annoncer « je suis sur le save » ; les autres **ne viennent pas**.
- **Sabotage** : 3 s, réparation automatique en 30 s ; les **4 crochets du sous-sol sont insabotables** [FACT] (SS). Après un sacrifice, le crochet détruit **réapparaît 60 s plus tard** (8.1.0) [FACT] (SS) : la géographie des crochets change pendant une minute.

### Après le décrochage

- **QUOI** [FACT] (VP, 10.1.0) : **Endurance + 10 % de Haste pendant 10 s + Elusive 10 s**. Elusive **ne s'applique plus** une fois tous les gens réparés ; Endurance et Haste **restent** après l'alimentation. Endurance est annulée par toute **action voyante** (réparer, soigner…) [FACT] (SS).
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

