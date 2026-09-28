# 7. Les tueurs (1/2) : typologie et tueurs 1 à 22

Trois questions, dans cet ordre : **quel type de tueur ?**, **comment le reconnaître avant que le jeu me le dise ?**, **que change-t-il à mes décisions ?** D'abord les principes par archétype, puis une fiche par tueur, de The Trapper (1) à The Twins (22). Tueurs 23 à 44 : chapitre 8.

Référence : **LIVE 10.1.2a (17/09/2026)**. Aucune valeur du PTB 10.2.0 n'est utilisée comme valeur de jeu ; quand une perk citée y est modifiée, c'est signalé « PTB 10.2.0 — non LIVE ». Mode 1v4 uniquement : les lignes « 2v8 » des notes de patch (Oni et Deathslinger en 9.6.0, Ghost Face et Executioner en 10.1.2) sont ignorées.

**Comment lire les fiches**

- Confiance d'un chiffre : **(VP)** note officielle BHVR ; **(VM)** page wiki complète + note officielle concordantes ; **(SS)** page wiki complète seule ; **(INC)** incertain ou contradictoire. Sans mention dans une ligne « Données LIVE », la valeur est (SS).
- Nature d'une consigne : **[FACT]**, **[DATA]** (chiffre ou calcul), **[HEURISTIQUE]**, **[SITUATIONNEL]**, **[HYPOTHÈSE]**, **[INCERTAIN]**. Toutes les consignes de counterplay sont des **[HEURISTIQUE]** fondées sur des valeurs vérifiées : aucun guide expert ni aucune vidéo n'a été analysé pour les écrire.
- Repères survivant utilisés dans les calculs (audit phase 0) : course **4,0 m/s**, marche **2,26 m/s**, accroupi **1,13 m/s** ; casse de palette au pied par le tueur **2,34 s** ; un générateur solo = **90 s**.

> **À retenir** : chaque « counterplay » décrit l'**option par défaut** contre un joueur qui utilise normalement son pouvoir. Un tueur expérimenté anticipe cette option (fausse cloche du Wraith, charge annulée du Hillbilly, Huntress qui tient sa hachette, Blight qui attend ton pré-drop). S'il exploite visiblement ta réponse habituelle, **varie** au lieu de répéter la consigne.

## Tableau récapitulatif des tueurs 1 à 22

Vitesse de base, terror radius (TR), taille, et **casse de palette par le pouvoir** (sans l'action de casse au pied de 2,34 s). « Non » signifie que le pouvoir ne détruit pas une palette baissée ; le tueur la casse alors au pied comme tout le monde.

| # | Tueur | Vitesse | TR | Taille | Casse de palette par le pouvoir | Archétypes principaux |
|---|---|---|---|---|---|---|
| 1 | Trapper | 4,6 m/s | 32 m | Grand | Non | Zone/piège · M1 |
| 2 | Wraith | 4,6 (6,0 occulté) | 32 m (aucun occulté) | Grand | Non | Furtif · mobilité · M1 |
| 3 | Hillbilly | 4,6 | **40 m** | Grand | **Oui**, tronçonneuse de base ~1 s, sans add-on (VP « Special-break » 9.5.0 ; durée SS) ; LoPro Chains : traverse sans s'arrêter | Mobilité · coup unique |
| 4 | Nurse | **3,85** | 32 m | Moyenne | Non (elle blinke à travers) | Mobilité (TP) · anti-loop total |
| 5 | Shape | 4,2 Stalker / 4,6 (VM) | aucun / **16 m** / 32 m (VM) | Grand | **Oui**, Slaughtering Strike en Evil Incarnate (VM) | Furtif · coup unique · M1 |
| 6 | Hag | 4,4 | **24 m** | Moyenne | Non | Zone/piège · TP · info |
| 7 | Doctor | 4,6 | 32 m | Grand | Non (palettes **illusoires** avec add-ons « Order ») | Anti-loop · info · M1 |
| 8 | Huntress | 4,4 | **20 m** (berceuse 45 m) | Grand | Non | Ranged · M1 |
| 9 | Cannibal | 4,6 | 32 m | Grand | **Oui**, tronçonneuse, 1 s de cooldown | M1 · anti-loop (insta-down court) |
| 10 | Nightmare | 4,6 | 32 m (berceuse 32 m endormi) | Moyenne | Non (Dream Pallets = fausses palettes) | Zone/piège · TP · info |
| 11 | Pig | 4,6 | **24 m** (depuis 9.1.0) | Moyenne | Non | Furtif · piège · M1 |
| 12 | Clown | 4,6 | 32 m | Grand | Non | Anti-loop (Hindered) · mobilité (Haste) |
| 13 | Spirit | 4,4 | 24 m | Moyenne | Non (elle phase à travers) | Mobilité · furtif |
| 14 | Legion | 4,6 (5,2 en Frenzy) | 32 m / **40 m** en Frenzy | Moyenne | Non de base (vaulte les palettes tombées en Frenzy) ; **casse** avec Iridescent Button | M1 · info · slug indirect |
| 15 | Plague | 4,6 | 32 m | Grand | Non | Ranged · zone · infection |
| 16 | Ghost Face | 4,6 (4,0 accroupi, VM) | **24 m** (aucun en Night Shroud) | Moyenne | Non | Furtif · M1 · info |
| 17 | Demogorgon | 4,6 | 32 m | Grand | **Oui**, Shred (cooldown 1,8 s) (VP) | Mobilité · anti-loop · info |
| 18 | Oni | 4,6 | 32 m | Grand | **Oui**, en Blood Fury (VP ; geste exact (INC)) | M1 · mobilité · coup unique |
| 19 | Deathslinger | 4,4 | 32 m | Grand | Non | Ranged · anti-loop |
| 20 | Executioner | 4,6 (4,2 en traçant, VM) | 32 m | Grand | Non de base ; **casse** avec Obsidian Goblet (VM) | Ranged · zone · anti-loop |
| 21 | Blight | **4,4** (depuis 9.6.0, VM) | **40 m** | Moyenne | **Oui**, Lethal Rush, mais **la casse lui coûte des tokens** (VM) | Mobilité · anti-loop |
| 22 | Twins | Charlotte 4,6 · Victor 6,0 | 32 m (aucun quand Charlotte dort) | Grand | Non | Slug · anti-loop · zone |

Lecture rapide [DATA] :
- **Règle du TR** : 32 m pour un tueur à 4,6 m/s, 24 m pour un tueur à 4,4 m/s… avec de nombreuses exceptions dans ce groupe : Hillbilly et Blight à **40 m** (8.6.0), Huntress **20 m**, Pig et Ghost Face **24 m** malgré leurs 4,6 m/s, Deathslinger **32 m** malgré ses 4,4 m/s. Ne déduis pas la vitesse du TR.
- **Tueurs plus lents que 4,6** : Nurse (3,85), Hag, Huntress, Spirit, Deathslinger, Blight (4,4). En ligne droite, un 4,4 ne te reprend que **0,4 m/s**, contre **0,6 m/s** pour un 4,6 : à distance égale, il lui faut ~1,5 fois plus de temps pour te rattraper en M1 pur [DATA, calcul]. La Nurse (3,85) est plus lente que toi hors pouvoir.
- **Six casseurs de palette par pouvoir de base** dans ce groupe : Hillbilly, Shape (EI), Cannibal, Demogorgon, Oni (Fury), Blight (avec coût). Deux casseurs **par add-on** : Legion (Iridescent Button), Executioner (Obsidian Goblet).

> **Note avancée** : cette liste suit l'errata (`kb/ledgers/AUDIT_PHASE0_ERRATA.md`), qui corrige la table 1.5 de l'audit (Shape et Executioner y manquaient). La note 9.5.0 classe en « Special-break » les pouvoirs du Hillbilly, de la Shape, du Demogorgon, de l'Oni et de la Blight (VP), pas ceux de l'Executioner, des Twins ou du Deathslinger.

## Identifier le tueur avant le reveal

### Pourquoi c'est encore utile [Intermédiaire]

[FACT] Depuis 9.6.0, Match Details montre le tueur à tous **dès qu'un survivant entre en chase ou perd un état de santé** (VP) ; son loadout reste caché jusqu'à la fin. Deviner avant ce moment (souvent la première minute) décide **où** réparer, **avec qui**, et quelle tile viser pour la première chase — c'est là qu'un furtif prend son coup gratuit. Après le reveal, l'identification continue : la **phase** du tueur (Shape, Oni, Legion) et ses **add-ons** se déduisent de ce que tu observes, et c'est cette lecture qui change le plus de décisions.

### Signaux d'identification (tueurs 1 à 22)

| Signal | Tueurs compatibles | Fiabilité |
|---|---|---|
| **Objets du pouvoir sur la carte** dès le début | Pièges au sol (Trapper), marques de boue (Hag), fontaines « Pools of Devotion » (Plague), réveils « Alarm Clocks » (Nightmare ; présence dès le début (INC)), Jigsaw Boxes (Pig) | Très forte |
| Traînées rouges au sol | Executioner | Très forte |
| **Berceuse au lieu d'un battement de cœur** | Huntress (fredonnement, 45 m), Nightmare (survivant endormi), Twins (cris de Victor, 12 à 18 m) | Forte, à confirmer à la silhouette |
| Cloche (tintement ≤ 24 m, souffle ≤ 40 m) | Wraith | Très forte |
| Tronçonneuse audible à 60 m | Hillbilly (longs sprints droits) ou Cannibal (balayages courts + Tantrum) | Forte ; la forme du déplacement tranche |
| Son de phase directionnel ≤ 24 m ; silhouette qui « clignote » | Spirit (phasing passif, 0,5 s toutes les 1 à 5 s) | Très forte |
| TR entendu **sans voir le tueur** au-delà de 32 m, silhouette intermittente entre 16 et 32 m | Nightmare (survivant éveillé) | Très forte |
| Skill checks anormaux, cris involontaires, crépitement électrique | Doctor (Madness) | Très forte |
| Son d'avertissement quand il vise vers toi | Deathslinger | Forte |
| Tueur **visible sans TR** | Shape (Stalker), Ghost Face (Night Shroud), Pig (accroupie), Wraith (scintillement proche), Demogorgon (12 s après un portail), Charlotte endormie (Twins) | Moyenne : l'absence de TR a plusieurs causes |
| TR très large (40 m) qui arrive très vite | Hillbilly, Blight, Legion (en Frenzy) | Moyenne |

```
Premier signal observé
 ├─ Objet de carte (piège, boue, fontaine, réveil, boîte, traînée) ─► tueur identifié : lire sa fiche
 ├─ Son de pouvoir (cloche, tronçonneuse, berceuse, phase, visée) ─► 1 à 2 candidats : confirmer à la vue
 ├─ Pas de TR mais un tueur à proximité ─► FURTIF : caméra ouverte, obstacle à portée, pas de soin à découvert
 └─ Rien de particulier ─► M1 / anti-loop « classique » : jouer standard, attendre le premier usage de pouvoir
```

> **Erreur fréquente** : conclure « pas de TR, donc pas de tueur ». Six des 22 tueurs de ce chapitre peuvent approcher sans TR avec leur seul pouvoir de base, et d'autres le peuvent avec un add-on (Hillbilly Filthy Slippers, Huntress Wooden Fox, Executioner Tablet of the Oppressor…).

> **Note avancée** : Spine Chill contre un tueur Undetectable : efficacité non vérifiée [INCERTAIN] (perk reworkée au PTB 10.2.0) ; elle **ne détecte pas Victor** (SS). La caméra reste l'info la plus sûre.

## Typologie transversale des tueurs

### Pourquoi raisonner par archétype [Intermédiaire]

La plupart des tueurs sont **hybrides** (2 à 4 archétypes). Le counterplay se construit en trois couches : (1) les principes de ses archétypes, superposés ; (2) sa **phase** actuelle ; (3) les exceptions de sa fiche (add-ons compris). La méthode marche aussi contre un tueur que tu connais mal.

Les archétypes de chaque tueur sont dans la dernière colonne du tableau récapitulatif (classement [HEURISTIQUE] du lot 4 et du handbook, `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md` §2.1). Chaque sous-section ci-dessous donne : quoi, pourquoi, comment, et **quand ça échoue**.

> **À retenir** : beaucoup de tueurs **changent d'archétype selon la phase** : Shape (Stalker furtif → Evil Incarnate coup unique), Oni (M1 → Fury), Legion (M1 → Frenzy anti-palette), Ghost Face (furtif → M1 contre un Marked qui tombe en un coup). Identifier la phase fait partie de l'identification.

### M1 : le tueur sans outil contre les boucles

- **Quoi** : pouvoir sans effet direct sur la boucle (Trapper sans piège en main, Wraith en chase, Shape en Pursuer, Legion hors Frenzy, Oni hors Fury, Charlotte seule).
- **Pourquoi le counterplay marche** : sans anti-loop, chaque palette le force à casser (2,34 s, soit ~9,4 m pour toi [DATA, calcul]), à tenter un mindgame ou à abandonner. Chaque ressource lui coûte du temps.
- **Comment** : tenir chaque tile aussi longtemps que possible ; palettes et fenêtres sont des ressources **pleines** ; ne pas gaspiller une palette en pré-drop inutile ; enchaîner vers la tile suivante sur un **événement** (casse, stun, vault du tueur).
- **Quand ça échoue** :
  - Le « M1 » n'est qu'une phase : Shape en Evil Incarnate, Oni en Fury, Legion en Frenzy, Ghost Face contre un Marked.
  - Zone déjà préparée (Trapper, Hag) : la tile « normale » cache un piège.
  - Zone morte : sans structure à portée, même un M1 finit par te toucher. Planifie la route **avant** la chase.
  - Perks : Bamboozle dévalue les fenêtres ; Enduring raccourcit le stun (−40/45/50 %).

### Anti-loop : décider plus tôt

- **Quoi** : un pouvoir qui supprime l'avantage du « dernier moment » à la palette ou à la fenêtre (Doctor, Cannibal, Nurse, Clown, Demogorgon, Deathslinger, Executioner, Blight, Twins, Legion en Frenzy).
- **Pourquoi** : ces pouvoirs frappent **pendant** que tu attends le bon moment.
- **Comment** : décider plus tôt (quitter la tile, pré-drop, ou rester hors de portée du pouvoir) ; enchaîner les tiles (tile-to-tile) au lieu de tenir une boucle.
- **Le pré-drop n'est pas universel** : trois cas différents.

| Cas | Tueurs 1-22 | Réponse par défaut |
|---|---|---|
| **(a) Casser lui coûte** | Blight (tokens de Rush ramenés à « 2 sous le max » + recharge à 0 %, VM) | Pré-drop **rentable** ; limite : il peut contourner sans casser |
| **(b) Son pouvoir punit l'attente à la palette** | Doctor (choc 0,65 s), Cannibal (balayage ; casse 1 s), Clown (Tonic sur la palette visée), Executioner (onde à travers la palette) | Pré-drop **puis départ immédiat** vers la tile suivante, pas « pré-drop puis tenir » |
| **(c) La casse est gratuite et le drop tardif n'est pas plus puni** | Demogorgon (Shred), Oni en Fury, Shape en EI (SS), Hillbilly contre une palette pré-lâchée | La palette vaut surtout le **stun** ou le blocage d'un sprint **engagé** ; pré-drop contre-productif |

- **Quand ça échoue** :
  - Contre un joueur qui **attend** ton pré-drop (il ralentit avant la palette), le pré-drop systématique lui offre la palette : mélanger pré-drop, départ anticipé sans drop, et drop normal quand le pouvoir est en recharge.
  - Tile-to-tile échoue quand l'open entre deux tiles est la zone idéale du pouvoir (Blight, Hillbilly, Huntress) : préférer une zone dense même pauvre en palettes.

### Ranged : couper la ligne, pas seulement esquiver

- **Quoi** : Huntress, Deathslinger, Plague (Corrupt Purge), Executioner (onde), Clown (bouteilles).
- **Pourquoi** : un projectile a besoin d'une trajectoire libre et d'un point d'arrivée prévisible. La **distance moyenne en terrain ouvert** est sa zone idéale.
- **Comment** : obstacles **hauts** entre toi et lui ; changer de direction **au moment du lâcher**, pas pendant toute la charge ; éviter les trajectoires prévisibles (sortie de vault face à lui, ligne droite, fin de boucle) ; **compter** les munitions et recharges (Huntress 7 hachettes, Deathslinger 2,6 s de rechargement après chaque tir, Clown 2,5 s).
- **Quand ça échoue** :
  - Projectile qui **traverse les murs** : onde de l'Executioner (palettes, fenêtres et murs), Dream Snares du Nightmare. Contre eux, la **distance** et le **déplacement latéral** priment sur la LOS.
  - Palette basse : ne bloquerait pas une hachette ni un harpon [INCERTAIN : pages muettes].
  - Add-on qui transforme un tir en coup unique : Huntress **Iridescent Head** (mais une seule hachette), Deathslinger **Iridescent Coin** (Exposed pendant le harpon tiré de ≥ 12 m).

### Mobilité : l'obstacle solide et le moment de récupération

- **Quoi** : Hillbilly, Nurse, Wraith, Spirit, Hag (TP), Nightmare (TP), Demogorgon (portails), Oni (Dash), Blight, Clown (Antidote).
- **Comment** : rester collé aux obstacles **hauts et solides** ; ne pas traverser l'open ; utiliser ses **fenêtres de récupération** (fatigue de la Nurse 2 à 3 s, fatigue de la Blight 2,5 s, cooldown du Hillbilly 2,5 s après un choc) pour **se repositionner**, pas pour fuir en ligne droite ; en macro, se disperser et ne pas laisser un 3-gen compact.
- **Quand ça échoue** :
  - Mobilité **qui traverse les obstacles** (blink de la Nurse, phase de la Spirit) : l'obstacle ne suffit plus, il faut casser la LOS au bon moment et lire les indices (husk figé, charge du blink).
  - Mobilité **ancrée sur la carte** : pièges de la Hag, gens et réveils du Nightmare, portails du Demogorgon. Une zone riche en ces points devient un **point d'arrivée** du tueur.
  - Casse de palette gratuite pendant la mobilité (Oni, Demogorgon, Hillbilly : ~1 s de base, sans s'arrêter avec LoPro) : voir anti-loop.

### Furtif : l'absence de TR est une information, pas une sécurité

- **Quoi** : Wraith, Shape (Stalker), Pig, Spirit (mindgame de phase), Ghost Face ; en partie Demogorgon (sortie de portail) et Twins (Charlotte endormie).
- **Pourquoi** : ces tueurs gagnent sur le **premier coup gratuit**. Privés de surprise, la plupart redeviennent des M1 en chase.
- **Comment** : caméra régulière sur gen ; réparer **face aux accès** ; garder un obstacle à portée ; révéler quand le pouvoir le permet (Ghost Face) ; ne pas soigner ni décrocher à l'aveugle.
- **Quand ça échoue** :
  - Cartes sombres, encombrées ou à nombreux coins (Ghost Face, Shape).
  - Add-ons qui suppriment l'alerte : Coxcombed Clapper (cloche muette) et Bone Clapper (cloche non localisable) du Wraith ; Apex Muffler (tronçonneuse inaudible hors TR) du Hillbilly ; Tombstone Piece (EI sans TR 20 s) de la Shape ; Knife Belt Clip (TR 12 m accroupi) du Ghost Face ; Cat's Eye (bond de Victor silencieux).
  - **Aucun add-on de phase silencieuse** n'existe pour la Spirit en LIVE (Prayer Beads Bracelet n'est plus dans la liste) : un son de phase absent veut dire qu'elle est à plus de 24 m ou ne phase pas.

### Zone / piège : son temps de setup est ta ressource

- **Quoi** : Trapper, Hag, Nightmare (Dream Pallets, snares), Pig (Reverse Bear Traps), Plague (fontaines, objets infectés), Executioner (traînées), Twins (Victor posé).
- **Pourquoi** : une zone ne rapporte que si tu y retournes.
- **Comment** : ne pas rejouer une zone préparée ; tirer la chase **hors** de son réseau ; nettoyer (désarmer, effacer) **pendant qu'il chase ailleurs** ; décider en équipe (Pig : moment de finir un gen quand plusieurs survivants sont piégés).
- **Quand ça échoue** :
  - Add-ons qui annulent le nettoyage : Iridescent Stone (Trapper : réarme un piège désarmé toutes les 30 s), Mint Rag (Hag : TP vers n'importe quel piège non déclenché), Tension Spring (réarmement 2 s après une libération).
  - Cartes favorables à la zone : herbe haute et maïs (Trapper), petites cartes et intérieurs (Hag).
  - Zone **mobile** (traînées de l'Executioner) : en chase, accepter parfois le Torment pour garder la distance.

### Info : ne pas nourrir son information

- **Quoi** : Hag (déclenchements), Doctor (Madness, cris), Nightmare (TP sur les soigneurs endormis), Legion (Killer Instinct), Plague, Ghost Face, Demogorgon (Killer Instinct près des portails).
- **Comment** : ne pas lui donner l'info gratuite (soin endormi contre le Nightmare, course dans la zone de cri de Victor, traversée debout des traînées) ; face à une révélation (Killer Instinct, aura), **bouger** plutôt que se cacher sur place.
- **Quand ça échoue** : info déclenchée par des actions indispensables (skill checks, soins) : l'accepter et jouer le mouvement.

### Slug : neutraliser le garde avant de relever

- **Quoi** : Twins (Victor garde un survivant au sol) ; en partie Legion (Deep Wound, 5e slash létal).
- **Pourquoi** : le slug immobilise plusieurs survivants à la fois ; neutraliser le garde rend la relève gratuite.
- **Comment** : ne pas se regrouper autour d'un survivant au sol gardé ; relever quand Victor est **rouge** (écrasable) ou rappelé ; kit anti-slug au choix (Unbreakable, Soul Guard…) [SITUATIONNEL].
- **Quand ça échoue** : Victor gardé en sécurité par un bon joueur ; Iridescent Pendant (écraser Victor = Exposed 45 s). [FACT, audit] **Aucune auto-relève basekit** en LIVE ; la refonte Abandon/Surrender est PTB 10.2.0, non LIVE.

### Coup unique : être blessé ne protège pas

- **Quoi** : Hillbilly (tronçonneuse), Cannibal (balayage), Shape (Slaughtering Strike), Oni (Demon Strike en Fury) ; par add-on, Huntress (Iridescent Head).
- **Comment** : une palette tardive devient un pari ; privilégier **murs solides et fenêtres** contre le pouvoir ; esquiver sur l'engagement, pas sur le son.
- **Erreur fréquente** : croire qu'être déjà blessé « protège » du coup unique. Blessé, n'importe quel coup te met à terre : le coup unique ne change rien contre toi, mais son M1 suffit.

### Matrice tile × archétype (tueurs 1-22) [HEURISTIQUE]

↑ = la structure gagne de la valeur pour toi ; ↓ = elle en perd ; ± = dépend du tueur (voir la fiche).

| Structure | M1 | Anti-loop | Ranged | Mobilité | Furtif | Zone/piège |
|---|---|---|---|---|---|---|
| Fenêtre forte | ↑ (Cannibal n'a aucun outil contre, sauf Bamboozle) | ± ↑ Demogorgon, Oni (le pouvoir ne vaulte pas) ; ↓ Legion en Frenzy | ↓ réception prévisible (Huntress, Deathslinger) | ± ↑ Hillbilly (il boucle en M1) ; ↓ Nurse | ≈ | ↓ fenêtre piégée côté sortie (Trapper, Hag) |
| Palette safe | ↑↑ | ↓ Demogorgon, Oni Fury, Shape EI, Legion Frenzy ; Blight avec coût | ± ↓ palette basse ne bloque ni hachette ni onde | ↓ Nurse, Spirit (jeter tôt puis marcher) ; Hillbilly (casse ~1 s ; LoPro sans s'arrêter) | ≈ | ≈ |
| Shack / murs hauts | ↑ | ↑ Oni, Demogorgon | ↑ Huntress, Deathslinger ; ↓ Executioner (onde à travers) | ↑ Hillbilly, Nurse (obstacle opaque) | ↓ Ghost Face (il stalke hors de ta vue) | ↓ Trapper (entrée unique) |
| Zone ouverte | ↓ | ↓ | ↓↓ | ↓↓ Hillbilly, Nurse, Oni, Blight, Victor | ↑ tu le vois venir | ↑ réseau dispersé |
| Intérieur, coins | ≈ | ± ↑ Demogorgon (Shred limité), Cannibal (Tantrum) | ↑ Huntress, Deathslinger ; ↓ Executioner | ↑ Hillbilly, Nurse (multi-niveaux) | ↓ Ghost Face, Shape | ↓ Hag, Doctor (Static Blast) |

Détail : `kb/research/batch7_tiles.md` §5 (palettes annulées par pouvoir) et `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md` §3.

### SoloQ et SWF

- En **SWF**, les consignes d'équipe (annoncer la position d'un Ghost Face, désigner le sauveteur d'une cage, un « écraseur » de Victor, compter les Rushes de la Blight) s'annoncent au vocal.
- En **SoloQ**, applique-les sur **signaux observables** : HUD (chase, crochet, sol), cris de piège, sons de pouvoir, auras de perks. Si un coéquipier plus proche bouge déjà vers l'objectif, reste sur ton gen et vérifie 10 à 15 s plus tard.

### Exercice [Intermédiaire]

**DR-15 « Counterplay d'un tueur »** (`kb/research/batch11_training.md`) : choisis un tueur, relis sa fiche, et vérifie **3 comportements précis** dans chaque partie contre lui (exemple Huntress : LOS avant tout, changement de direction au lâcher, comptage des 7 hachettes). Métrique : coups de pouvoir évitables reçus (en revue de partie). Réussite : 3 comportements appliqués dans 3 parties consécutives. Variante « identification » : pendant les 60 premières secondes, note mentalement ton hypothèse de tueur et le signal qui l'a donnée ; compare au reveal.

## Fiches : tueurs 1 à 7

Format fixe : données LIVE → identification → ce qu'il cherche → tiles → counterplay (mécanique, positionnel, macro, équipe) → erreurs classiques → quand le counterplay habituel échoue → add-ons qui changent la décision → implications de carte → perks / synergies à anticiper. Sauf mention, les consignes sont **[HEURISTIQUE]**.

### 1. The Trapper (Evan MacMillan) — zone/piège · M1 [Débutant]

**Données LIVE** : 4,6 m/s ; TR 32 m ; grand. Commence avec **2 pièges en main** ; **8 pièges désarmés** apparaissent sur la carte ; il voit l'aura de tous ses pièges. Pose **2,5 s** puis **Haste +7,5 % pendant 5 s** (VM, bug de cumul corrigé en 9.2.3). Il réarme un piège sur place sans le ramasser. Survivant piégé : immobilisé, blessé s'il était sain ; libération **1,8 s par tentative, 16,67 %, succès garanti à la 6e** ; sauvetage par un allié **1,5 s**. Désarmement **3,5 s** ; les pièges ne se sabotent plus et ne se déplacent pas (depuis 3.6.0). Aucun changement de pouvoir 9.0.0 → 10.1.2a (correctifs de hitbox et de pose en 9.5.0, VP).

**Identification** : pièges armés ou désarmés au sol (herbe haute, entrées de tiles, crochets, gens) ; aucun son de pouvoir à distance ; un piège qui a changé de place entre deux passages ; en chase, l'animation accroupie de pose ; claquement + cri quand quelqu'un est pris.

**Ce qu'il cherche** : te faire repasser sur un point piégé (sortie de fenêtre, sortie de palette, coin de jungle gym) ; te pousser dans l'herbe haute ou vers le 3-gen piégé ; poser en chase pour prendre ses 7,5 % de Haste.

**Tiles** :
- Favorables : longues boucles à sol clair, main buildings à plusieurs sorties, chaînes de tiles non piégées.
- Défavorables : tiles à entrée unique, herbe haute et maïs, zones déjà piégées (le setup y est payé). Sans piège en main, en open, c'est un 4,6 sans pouvoir.

**Counterplay** :
- *Mécanique* : regarder le sol avant les vaults et sorties **qu'il a eu le temps de piéger** (il t'a perdu de vue, zone déjà fréquentée). Un Trapper qui ne t'a pas quitté des yeux n'a pas pu piéger ta sortie : inutile de ralentir à chaque vault. Pendant sa pose (2,5 s immobile), **gagne la distance maintenant** : il repartira ensuite 7,5 % plus vite pendant 5 s.
- *Macro* : désarmer (3,5 s) les pièges du 3-gen et des crochets **pendant qu'il chase ailleurs**, en sachant que c'est temporaire (réarmement sur place). Compter ses pièges en main : 2 ; une 3e pose d'affilée = Trapper Bag.
- *Piégé* : seul, jusqu'à 6 tentatives de 1,8 s (~11 s au pire) [DATA] ; si un allié est proche, son sauvetage (1,5 s) est plus rapide.
- *Équipe* : sauver en vérifiant le sol autour du crochet ; ne pas s'agglutiner sur un gen piégé.

**Erreurs classiques** : courir dans l'herbe haute par réflexe ; vaulter deux fois la même fenêtre ; décrocher sans regarder ses pieds ; croire qu'un piège désarmé est neutralisé.

**Quand le counterplay échoue** [SITUATIONNEL] : Tar Bottle (pièges noircis) sur une carte à herbe haute : la lecture du sol ne suffit plus, marche là où tu es déjà passé. Trapper qui garde un crochet piégé en fin de partie : la trappe ou l'autre porte vaut souvent mieux que le sauvetage, **sauf** s'il reste à moins de 16 m du crochet (l'anti-facecamp accélère alors la progression 1×/2×/4×, [FACT, audit]).

**Add-ons qui changent la décision** (SS) :
- **Iridescent Stone** (réarme un piège désarmé aléatoire toutes les 30 s) → contourne les pièges désarmés **au lieu de** les traiter comme sûrs ; désarmer n'achète que ≤ 30 s.
- **Tar Bottle** (pièges noircis) → évite les zones sombres et reprends tes propres trajets **au lieu de** compter sur ta lecture du sol.
- **Honing Stone** (se libérer seul met à terre) → attends un sauveteur **au lieu de** tenter de te libérer.
- **Tension Spring** (réarmement 2 s après une libération) → quitte la case immédiatement **au lieu de** repasser dessus.
- **Bloody Coil** (désarmer sain te blesse) → désarme seulement déjà blessé, ou laisse le piège.
- **Bear Oil** (pose silencieuse) → garde le visuel **au lieu de** compter sur le son.

**Implications de carte** [HEURISTIQUE] :
- Aidé : herbe haute et maïs (Coldwind), intérieurs sombres à goulets (portes, couloirs, escaliers) où un piège ferme un passage obligé.
- Gêné : grandes cartes ouvertes à longues boucles : pièges dispersés, trajets longs pour un M1.

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Agitation** (sa perk : Haste + TR élargi en portant) ou **Iron Grasp** (wiggle lent) → crochet piégé ou de sous-sol atteignable ; signal : TR énorme pendant le portage → save préparé tôt. Les deux sont modifiées au PTB 10.2.0 — non LIVE.
- **Brutal Strength** (sa perk, casse rapide) → fenêtres plutôt que palettes. Le seed cite aussi Corrupt Intervention et NOED.

Détail : `kb/research/batch4_killers_g1.md` §1.

### 2. The Wraith (Philip Ojomo) — furtif · mobilité · M1 [Intermédiaire]

**Données LIVE** : 4,6 m/s, **6,0 m/s occulté** ; TR 32 m, supprimé occulté ; grand. Occulté : **Undetectable**, **invisible au-delà de 20 m**, scintillement en dessous, **totalement transparent à l'arrêt** ; il ne peut ni attaquer ni interagir avec un survivant. Occultation **1,5 s** (cloche + cliquetis dès le début). Désoccultation **3 s** : la cloche ne sonne **qu'à partir de 1,5 s** ; il avance à 1,6 m/s, puis **sursaut à 6,9 m/s pendant 1 s** et peut frapper immédiatement (le wiki a une ligne contradictoire « 6 m/s » (INC faible)). Portée sonore : **tintement ≤ 24 m**, souffle de transition ≤ 40 m. Étourdi occulté (palette, Head On) : désoccultation forcée + 4 s d'étourdissement. Lightburn supprimé en 6.7.0 : la lampe n'interrompt plus la désoccultation.

**Identification** : cloche (≤ 24 m) ; tueur qui arrive « trop vite » sans TR ; scintillement proche ; quasi-arrêt suivi d'un bond.

**Ce qu'il cherche** : te surprendre sur un gen ; se désocculter hors de ta vue près d'une palette ; t'amener en zone morte où le sursaut de 6,9 m/s suffit.

**Tiles** : en chase, c'est un M1 à 4,6 : les boucles standards fonctionnent. Défavorables : grands espaces entre tiles (occulté, il reprend la distance à 6 m/s) et tiles courtes où une désoccultation derrière un mur suffit. Casser la LOS l'aide plus qu'elle ne t'aide.

**Counterplay** :
- *Mécanique* : garder la caméra sur lui en boucle ; lâcher la palette sur la désoccultation tardive, pas avant.
- *Info* : distinguer **occultation** (cloche dès le début + cliquetis : il **part**) et **désoccultation** (silence puis cloche : il **arrive**). Quand tu entends la cloche de désoccultation, il lui reste ~1,5 s avant de pouvoir frapper, puis il bondit 1 s [DATA] : c'est le moment de rejoindre l'obstacle, pas de réparer une seconde de plus. La cloche annonce une menace, pas l'instant exact du coup.
- *Macro* : quitter le gen quand la cloche est **proche et se rapproche**, pas à chaque cloche. Éviter le duo sur un gen quand il patrouille près : deux réparateurs produisent 1,7 charge/s contre 2,0 pour deux solos sur deux gens (coopération 85 %, [DATA, audit + calcul]), et offrent deux cibles.

**Erreurs classiques** : réparer tête baissée sans info ; pré-lâcher par peur de la cloche ; courir en ligne droite en open ; croire qu'un Wraith immobile est loin (il est transparent à l'arrêt).

**Quand le counterplay échoue** : cloche muette ou non localisable (add-ons ci-dessous) → la caméra devient la principale source d'info. Avec Windstorm, fuir loin pour « reset » ne marche pas : il te rattrape occulté.

**Add-ons qui changent la décision** (SS ; Serpent VM) :
- **Coxcombed Clapper** (cloche muette) → répare caméra ouverte, obstacle à portée, **au lieu d'**attendre un signal sonore.
- **Bone Clapper** (cloche non localisable) → fie-toi au scintillement **au lieu du** son.
- **"The Ghost" – Soot** (TR et Red Stain supprimés 6 s de plus après la désoccultation) → ne conclus pas « il est reparti » sur l'absence de TR.
- **Windstorm** (+5/7/9 % occulté) → tiens la boucle en cours **au lieu de** fuir vers une tile éloignée.
- **Swift Hunt** (désoccultation −8/−10/−12 %, ~2,64 s au max, calcul) → décide le drop un peu plus tôt.
- **"The Serpent" – Soot** (se désocculte en cassant une palette ou en abîmant un gen, 9.5.0) → moins de surprise sur gen : info gratuite.

**Implications de carte** [HEURISTIQUE] :
- Aidé : grandes cartes (traversée occultée à 6 m/s) et cartes sombres.
- Gêné : petites cartes denses en palettes ; cartes lumineuses ou ouvertes (Mount Ormond), où le scintillement se lit mieux.

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Bamboozle** : fenêtre bloquée après son saut → prévois une sortie par palette. Signal : fenêtre bloquée au 1er vault du tueur.
- Pain Resonance, Sloppy Butcher (Mangled + Haemorrhage au 1er coup → soin en une fois), Pop, NOED : citées par le seed.

Détail : `kb/research/batch4_killers_g1.md` §2.

### 3. The Hillbilly (Max Thompson Jr.) — mobilité · coup unique [Intermédiaire]

**Données LIVE** : 4,6 m/s ; **TR 40 m** (32 → 40 m en 8.6.0) ; grand. Tronçonneuse : charge **2,5 s** (il avance à 3,68 m/s), bruit audible à **60 m**, son qui évolue avec la charge. **Sprint 10,12 m/s**, **12 m/s en Overdrive**. Virage **412 °/s pendant la 1re seconde** du sprint, puis **32 °/s**. Coup de tronçonneuse = **double dégâts** (un sain tombe). Cooldowns : touche 2,7 s ; **choc contre un obstacle 2,5 s** ; raté 2,7 s ; casse de palette/mur 1 s ; il marche à 1,84 m/s pendant le cooldown. Overdrive : jauge chargée en sprintant, vidée après 8 s sans tronçonneuse ; pleine = **20 s** de sprint à 12 m/s, charge +5 %, cooldowns −10 %. Palettes : la tronçonneuse casse une palette baissée en ~1 s **avec le pouvoir de base, sans add-on** (pouvoir classé « Special-break » en 9.5.0, VP ; 1 s : page Pallets, SS ; question tranchée le 27/09/2026, `kb/ledgers/CONFLICT_REGISTER.md`) ; **LoPro Chains** permet seulement de **continuer** le sprint à travers palettes et murs sans s'arrêter. Aucun changement de pouvoir 9.0.0 → 10.1.2a.

**Identification** : vrombissement à 60 m, puis sprint très rapide en ligne droite ; tueur qui traverse la carte en quelques secondes ; TR très large. Différence avec le Cannibal : sprints longs et droits (Hillbilly) contre balayages courts et Tantrums (Cannibal).

**Ce qu'il cherche** : un survivant en open ou sur un gen isolé ; un curve autour d'un petit obstacle pendant la 1re seconde ; une palette lâchée trop tôt qu'il casse en ~1 s ; accumuler l'Overdrive.

**Tiles** :
- Favorables : murs hauts et obstacles serrés (jungle gyms, shack, main buildings, intérieurs), passages étroits où le sprint heurte un obstacle (2,5 s de cooldown), étages et rampes.
- Défavorables : open, tiles basses ou fines (curves faciles), longues lignes droites. En M1, il boucle comme un 4,6 normal : la tronçonneuse sert surtout **entre** les tiles.

**Counterplay** :
- *Mécanique* : au son de la charge (2,5 s), mets un obstacle solide entre vous. Esquive par un virage **tardif** : passé la 1re seconde, il ne tourne plus qu'à 32 °/s [DATA] ; un virage trop tôt lui laisse le temps de corriger (412 °/s).
- *Palette* : c'est **l'engagement**, pas le son, qui décide le drop. Une palette lâchée sur un sprint **engagé** à travers la tile l'arrête (collision : 2,5 s, ou 1 s s'il la casse) **sauf LoPro Chains**. Une palette pré-lâchée au premier son, de loin, lui est offerte : il annule et la casse.
- *Macro/positionnel* : rester près des tiles hautes, ne pas se soigner ni réparer en open, se disperser. Après un choc contre un obstacle, il a 2,5 s à 1,84 m/s : c'est la fenêtre pour gagner la tile suivante.
- *Équipe* : sauvetages rapides et sûrs : un instadown rend le tunnel facile.

**Erreurs classiques** : pré-lâcher au premier son de charge ; courir en ligne droite en open ; croire qu'être blessé « protège » de la tronçonneuse.

**Quand le counterplay échoue** : carte ouverte sans structures hautes : jouer la distance et la dispersion plutôt que la chase.

**Add-ons qui changent la décision** (SS) :
- **LoPro Chains** (le sprint traverse palettes et murs en les cassant) → privilégie **murs solides et fenêtres** **au lieu des** palettes contre le sprint.
- **Apex Muffler** (tronçonneuse silencieuse hors TR) → surveille le TR (40 m) et répare près d'un obstacle **au lieu de** compter sur le son à 60 m.
- **Filthy Slippers** (Undetectable après 2 s de sprint) → TR qui disparaît pendant un sprint : reste à couvert **au lieu de** conclure qu'il s'éloigne.
- **Tuned Carburettor** (charge +20 %, mais **4,4 m/s** permanent) → réagis dès le premier son ; en M1, les boucles tiennent plus longtemps.
- **Counterweight** (virage initial −70 %) → un virage **précoce** suffit ; **Dad's Boots / Spiked Boots** (virage +20/30 %) → esquive **plus tard** et derrière un obstacle.
- **Cracked Primer Bulb** (tronçonneuse = 1 état de santé) → sain, un coup ne te met pas à terre : ne sacrifie pas tout pour l'esquiver.

**Implications de carte** [HEURISTIQUE] :
- Aidé : cartes ouvertes (Coldwind hors maïs, Red Forest) et grandes cartes (il compresse les trajets).
- Gêné : intérieurs à murs et rampes (Lery's, Hawkins, Gideon) : chocs contre obstacles, curves difficiles.

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Tinkerer** (sa perk : notification + Undetectable quand un gen atteint 70 %) → vers 70 %, garde un guetteur ou la caméra ouverte : TR disparu = il arrive.
- **Enduring** (stun de palette plus court) et **Lightborn** (pas d'aveuglement, celui qui tente est révélé) → drop pour bloquer puis transition ; arrête les flashs au 1er échec. Le seed cite aussi Pain Resonance, Pop, BBQ, Lethal Pursuer, Bamboozle.

Détail : `kb/research/batch4_killers_g1.md` §3.

### 4. The Nurse (Sally Smithson) — mobilité (téléportation) · anti-loop total [Avancé]

**Données LIVE** : **3,85 m/s** ; TR 32 m ; taille moyenne. **2 charges** de blink, recharge **3 s par charge**. Charge du blink **2 s** (elle avance à 2,89 m/s) ; 1er blink **≤ 20 m** ; **Chain Blink** dans une fenêtre de **1,5 s**, **≤ 12 m**. Blinks à travers murs, sols et plafonds. **Fatigue** : 2 s (1 blink), 2,5 s (2 blinks), 3 s (3 blinks), **+1 s** après une attaque ; elle se déplace à **0,96 m/s** et **ne peut pas être étourdie** pendant la fatigue. Toute attaque après un blink est une fente spéciale à 6,16 m/s. Heavy Panting nerfé en 9.6.0 (30 → 10 %, VM) ; nombreux correctifs de blinks hors carte jusqu'en 10.1.2 (VP). Peut-elle vaulter les fenêtres ? Non dit par la page (INC).

**Calcul utile** [DATA] : hors blink, tu gagnes 0,15 m/s sur elle (~1,5 m par 10 s) ; pendant sa fatigue, ~3 m/s, soit **6 à 9 m** sur 2 à 3 s. C'est **là** que se crée la distance.

**Identification** : son de charge, silhouette qui disparaît et réapparaît plus loin ; tueur très lent entre deux blinks.

**Ce qu'il cherche** : une LOS continue sur toi ; un trajet prévisible ; un double-back mal timé ; le moment où tu t'arrêtes derrière un obstacle bas.

**Tiles** :
- Favorables : structures hautes et opaques, étages, zones à LOS cassée en permanence, grands obstacles qui rendent la distance difficile à estimer.
- Défavorables : open, petites tiles basses (elle voit tout). Palettes et fenêtres n'ont quasi aucune valeur **comme obstacles** ; la tile reste utile comme source de LOS.

**Counterplay** :
- *Mécanique* : casser la LOS pendant sa charge (2 s) ; changer de direction pendant son 1er blink pour la forcer à corriger au 2e (≤ 12 m, 1,5 s) ; utiliser la fatigue pour **repositionner**, pas pour fuir en ligne droite. Compter ses blinks : après 2, elle attend ~3 s par charge.
- *Palette* : **ne pas lâcher une palette sur une Nurse en fatigue** : elle n'est pas étourdissable [FACT].
- *Macro* : réparer vite, rester dispersés. Sa perk A Nurse's Calling montre les survivants qui se soignent à 28/30/32 m (VM) : se soigner hors de ce rayon. Correction : **Calm Spirit n'est pas une perk anti-aura** (corbeaux calmes, pas de cri) ; Distortion l'est.

**Erreurs classiques** : courir en ligne droite ; lâcher des palettes ; double-back toujours au même moment (une Nurse experte le lit : alterne continuer et revenir) ; rester visible derrière un obstacle bas.

**Add-ons qui changent la décision** (SS) :
- **Torn Bookmark** (+1 charge, 3 blinks) → attends le **3e** blink avant de te repositionner **au lieu du** 2e.
- **Campbell's Last Breath** (re-blink automatique droit devant après un blink à pleine charge) → sors de son axe **au lieu de** reculer tout droit.
- **Jenner's Last Breath** (retour instantané au point de départ après ses blinks) → double-back **après** sa fatigue, pas pendant la fenêtre.
- **Matchbox** (**4,4 m/s** mais **1 seul blink**) → pas de chain blink : feinte le 1er blink puis tourne ; en M1, c'est un tueur 4,4.
- **Kavanagh's Last Breath** (Blindness 60 s à ≤ 8 m pendant sa fatigue) → ne reste pas collé à elle si tu comptes sur des auras.
- **Catatonic Boy's Treasure** (−65 % de fatigue de chain), **Ataxic Respiration** (fatigue −7 %, pas un add-on de portée), **Dark Cincture** → fenêtre de fatigue plus courte : repositionne plus tôt.

**Implications de carte** [HEURISTIQUE] :
- Aidée : cartes ouvertes et plates (LOS continue, distances faciles à estimer).
- Gênée : intérieurs multi-niveaux (The Game, Midwich, RPD) : un blink au mauvais étage lui coûte une fatigue, l'étage aide le survivant qui lit le blink.

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **A Nurse's Calling** (sa perk, voir *Macro*) et **Nowhere to Hide** (auras à ≤ 24 m du gen qu'elle abîme) → après un kick, sors des 24 m au lieu de te cacher derrière un mur. **Distortion** est la réponse anti-aura.
- **Lethal Pursuer** (auras au début de partie) → spawn : rejoins une structure forte. Le seed cite aussi Pain Resonance, Eruption, BBQ.

Détail : `kb/research/batch4_killers_g1.md` §4.

### 5. The Shape (Michael Myers) — furtif · coup unique · exécution [Avancé]

**Version** : rework **9.2.0** (VP), ajusté en **9.2.3** (EI 40 → 60 s, TR Pursuer 16 m, TR EI 32 m, Slaughtering Strike 7,5 m/s, recharge 4 s, VP). Retiré de la boutique en 9.4.0 mais **toujours jouable** par ses possesseurs (VP) : il reste rencontrable.

**Données LIVE** (VM sauf mention) :

| Mode | Vitesse | TR | Ce qu'il peut faire |
|---|---|---|---|
| **Stalker** (défaut) | **4,2 m/s** | aucun (Undetectable) | Stalk (il marche à 2,52 m/s) : survivant le plus proche surligné entre 2,5 et 32 m, jauge commune remplie en ~5 s de stalk continu à l'arrêt (1 point/s, −25 % si le survivant bouge ; 5 points) ; retombe à 50 % après 20 s sans stalk |
| **Pursuer** (auto à jauge pleine) | 4,6 m/s | **16 m** | Fente +20 %, casse 1,95 s, vault 1,42 s (SS) |
| **Evil Incarnate** (activé quand il veut, 2 s) | 4,6 m/s | **32 m** | **60 s** au chrono ; **Slaughtering Strike** et **exécution à la main** |

- **Slaughtering Strike** : charge 0,375 à 1,5 s, ruée de 0,5 à 1,5 s à **7,5 m/s** (portée ~3,75 à 11 m, calcul) ; **coup létal** (un sain tombe) ; **casse palettes baissées et murs** ; après une casse, il marche à 1,84 m/s ~2 s ; recharge 4 s ; virage limité, strafe ×0,25.
- **Exécution** : en EI, un tap d'attaque à **≤ 3 m** d'un survivant **debout ou au sol** qui a **2 phases de crochet** le **tue**. **Impossible sous Endurance.**
- **Pas d'Exposed de base** depuis 9.2.0.
- Signaux (SS) : le survivant stalké entend « the Hedge » à 50 % de jauge ; un **signal global** retentit quand la jauge est pleine.

**Identification** : tueur visible sans TR ni berceuse, silhouette immobile derrière un coin ; « Hedge » ; puis TR court (16 m) = Pursuer ; TR 32 m + arme modifiée = Evil Incarnate.

**Ce qu'il cherche** : un stalk gratuit quand tu ne le regardes pas ; en EI, un survivant sans obstacle solide, une palette pré-lâchée à casser, ou un survivant à 2 crochets à approcher à 3 m.

**Tiles** : en Stalker, tout ce qui casse la LOS ; en EI, **murs solides et fenêtres** (la SS casse les palettes baissées). En Pursuer, boucles normales avec une marge réduite (fente +20 %).

**Counterplay** :
- *Mécanique* : casser la LOS dès que tu le vois stalker : la jauge se remplit en ~5 s, chaque seconde refusée compte. En EI, jouer les fenêtres et esquiver la charge **latéralement**. Une palette lâchée devant une SS sera cassée, mais il en ressort à 1,84 m/s pendant ~2 s : fenêtre pour gagner la tile suivante.
- *Temps* : **gagner 60 s pendant l'EI** est l'objectif de chase prioritaire (fin au chrono seulement, sans add-on).
- *Survivant à 2 crochets* : pendant l'EI, éviter en priorité qu'il arrive à 3 m, même sain, même au sol (sauf sous Endurance). L'**Endurance** empêche l'exécution (protection de décrochage, Off the Record…) mais saute sur une action voyante et ne protège pas sous Deep Wound [FACT, audit].
- *Signaux* : au signal global de jauge pleine, réparer loin de lui et avoir fini ses soins **avant**.
- *Macro* : en Stalker, il est lent (4,2 m/s) : bonne fenêtre pour les gens, **mais** Undetectable : réparer en surveillant les angles, pas « sans pression ». Ne pas grouper pendant l'EI.

**Erreurs classiques** : laisser un tueur sans TR te fixer ; pré-lâcher pendant l'EI ; oublier le chrono des 60 s ; décrocher un survivant à 2 crochets sous ses yeux pendant l'EI.

**Quand le counterplay échoue** : si l'EI est prolongé à chaque crochet (Judith's Tombstone) ou à chaque SS (Reflective Fragment), « tenir 60 s » ne suffit plus : dispersion et gens rapides.

**Add-ons qui changent la décision** (VM) :
- **Judith's Tombstone** (accrocher en EI renouvelle l'EI, plafonné à 40 s) → ne lui offre pas de crochet rapide pendant l'EI **au lieu de** compter sur le chrono.
- **Tombstone Piece** (Undetectable 20 s à l'activation d'EI) → après le signal global, surveille le visuel **au lieu d'**attendre le TR 32 m.
- **Reflective Fragment** (SS = 1 seul état de santé ; +20 s d'EI par SS réussie) → sain, la SS ne te met pas à terre, mais chaque coup prolonge l'EI.
- **Hair Bow** (EI +20 s = 80 s) → recompte le chrono **au lieu de** 60 s.
- **Fragrant Tuft of Hair** (EI : Exposed pour tous, fente +50 %, **pas de SS**) → tout coup met à terre, mais les palettes redeviennent sûres : joue-les **au lieu de** ne jouer que les fenêtres.
- **Scratched Mirror** (auras à ≤ 32 m pendant le stalk ; bloqué en Stalker) → se cacher derrière un mur ne suffit pas, **mais** il n'a ni EI, ni SS, ni exécution : chase contre un M1 lent.

**Implications de carte** [HEURISTIQUE] :
- Aidé : intérieurs et cartes à coins (stalk sans être vu).
- Gêné : cartes lumineuses ou ouvertes, où sa silhouette immobile se repère de loin. Lampkin Lane (Haddonfield) est hors rotation depuis 9.4.0 : pas de « carte maison ».

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- Ses perks d'origine sont générales depuis 9.4.0. **Keep Them Waiting** (ex-Save the Best for Last : récupération après un coup raccourcie quand il touche un non-Obsession) → l'Obsession prend les coups protecteurs.
- Bamboozle, Pain Resonance, Corrupt Intervention, Pop : cités par le seed.

Détail : `kb/research/batch4_killers_g1.md` §5.

### 6. The Hag (Lisa Sherwood) — zone/piège · téléportation · info [Intermédiaire]

**Données LIVE** : 4,4 m/s ; **TR 24 m** ; taille moyenne. **10 Phantasm Traps** (le 11e recycle le plus ancien) ; pose **1,9 s**. Déclenchement dans un rayon de **2,7 m** : un Mud Phantasm apparaît, **tourne ta caméra** vers lui, émet un **faux TR de 8 m** ; la Hag est notifiée ; piège « déclenché » **6 s**. **Pas de déclenchement si tu es accroupi**, ou si tu interagis avec un objet (gen…) dans la zone. **Effacer** : accroupi, **4 s** (la lampe ne brûle plus les pièges depuis 6.7.0). **Téléportation** vers un piège déclenché à **≤ 48 m**, face au survivant. Dernier changement de pouvoir : 7.6.0.

**Identification** : marques de boue au sol autour des gens et crochets ; fantôme qui tourne ta caméra ; faux TR bref ; tueur qui apparaît instantanément sur un piège.

**Ce qu'il cherche** : un piège sur la sortie d'une boucle, déclenché pour te couper (elle arrive face à toi) ; t'enfermer dans une zone piégée.

**Tiles** : favorables : longues boucles vierges, tiles à plusieurs sorties, zones à plus de 48 m de son réseau. Défavorables : tiles déjà « dessinées », passages obligés piégés. Hors pièges, c'est un **M1 à 4,4** : les boucles standards la battent.

**Counterplay** :
- *Mécanique* : traverser les marques **accroupi** (ou en interagissant). Au déclenchement, repartir immédiatement **en s'éloignant du piège** (elle arrive dessus, tournée vers toi), vers une zone sans marques : fuir « à l'opposé » peut mener dans un autre piège.
- *Macro* : **effacer accroupi (4 s)** les pièges près des gens et du crochet quand elle est loin. Les totems Hex sont un build souvent cité pour elle (fréquence non vérifiée) : un totem coûte 14 s de purification ; purifier ceux que tu croises, et chercher activement **quand un effet Hex est observé**, pas par principe.
- *Équipe* : sauveteur accroupi, vérification des marques autour du crochet.

**Erreurs classiques** : sprinter sur les marques ; rester à côté d'un piège déclenché ; sauvetage direct sur un crochet piégé ; compter sur une lampe pour nettoyer son réseau.

**Quand le counterplay échoue** : Mint Rag et Rusty Shackles (ci-dessous).

**Add-ons qui changent la décision** (SS) :
- **Mint Rag** (TP vers n'importe quel piège **non déclenché** de la carte, CD 10 s) → **efface** son réseau autour des gens **au lieu de** seulement l'éviter : un piège loin d'elle n'est plus hors de portée.
- **Rusty Shackles** (pas de fantôme, aucune indication de déclenchement) → crouch systématique dans les zones à marques **au lieu de** compter sur le fantôme.
- **Disfigured Ear** (déclencher = Deafened 6 s) → pars **immédiatement** au lieu d'écouter son arrivée.
- **Grandma's Heart** (son TR supprimé pendant un déclenchement ; faux TR du fantôme 24 m) → le TR entendu est celui du fantôme : ne t'en sers pas pour la localiser.
- **Waterlogged Shoe** (**4,73 m/s**, plus de TP) → M1 plus rapide que d'habitude : évite les longues boucles en zone piégée.
- **Scarred Hand** (pièges et fantômes **bloquent le passage**, plus de TP) → les marques deviennent des murs : ne t'enferme pas dans une tile piégée.

**Implications de carte** [HEURISTIQUE] :
- Aidée : petites cartes et intérieurs (réseau dense, goulets).
- Gênée : grandes cartes ouvertes (pièges dispersés, zones à plus de 48 m de son réseau).

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- Build Hex (Ruin, Devour Hope, Third Seal, + Undying) souvent cité. Signaux : gen lâché qui recule sans kick (Ruin), Exposed après des décrochages loin d'elle (Devour Hope), Blindness au coup (Third Seal) → purifier **quand l'effet est observé** (voir *Macro*).
- Variante citée : Pain Resonance, Grim Embrace, Pop, Sloppy Butcher (build slowdown, sans totem).

Détail : `kb/research/batch4_killers_g1.md` §6.

### 7. The Doctor (Herman Carter) — anti-loop · info · M1 [Intermédiaire]

**Données LIVE** : 4,6 m/s ; TR 32 m ; grand.
- **Shock Therapy** : charge 1 s (il avance à 3,08 m/s), cône au sol de **12 m**, détonation **0,65 s** après le relâchement (0,8 → 0,75 s en 9.6.0, → **0,65 s en 9.6.1**, VM), recharge 1,5 s. Touché : +0,5 palier de Madness, **cri** qui interrompt l'action, **aucune interaction (palettes et fenêtres comprises) pendant 2,5 s**.
- **Static Blast** : charge **2 s**, onde qui **traverse les obstacles** et couvre **tout son TR** ; +1 palier ; **seul un casier protège** ; recharge **30 s** si personne n'était à portée, **45 s** sinon. Un survivant Oblivious est quand même touché.
- **Madness** : I = 33 % de skill checks de Madness ; II = 66 % + faux Doctors ; III = 100 %, cris intermittents, **objets inutilisables**, **aucune interaction à barre de progression faite ou reçue sauf décrocher**. **Snap Out of It** (12 s) ramène au palier I.

**Identification** : crépitement électrique, skill checks inhabituels, cris involontaires, faux Doctors ; Static Blast = charge audible + onde.

**Ce qu'il cherche** : te choquer juste avant la palette ou la fenêtre pour bloquer l'action 2,5 s ; enchaîner choc + M1 à courte portée (plus fiable depuis 0,65 s).

**Tiles** : favorables : longues boucles où tu peux garder plus de 12 m. Défavorables : tiles courtes « à la palette » (un choc au mauvais moment = coup garanti). **Aucune structure ne bloque le Static Blast** (le « casser la LOS » du seed est faux).

**Counterplay** :
- *Mécanique* : en 0,65 s, tu parcours 2,6 m [DATA] : si tu arrives à la palette à moins de ~3 m devant un choc lancé, ton action tombe dans la fenêtre. Une fois choqué, tu ne peux rien faire pendant 2,5 s (~10 m de course) : **ne vise pas une palette ou une fenêtre à moins de 10 m après un choc**.
- *Palette* : pré-lâcher tôt **puis partir**, ou vaulter avec de l'avance. La casse au pied lui coûte 2,34 s, donc le pré-drop n'est pas gratuit pour lui, mais un Doctor qui **ralentit avant la palette** l'obtient sans risque : mélange avec des drops normaux quand le choc est en recharge ou hors de portée. Une charge de choc visible lui fait perdre de la distance (3,08 m/s).
- *Static Blast* : **casier** si tu es dans son TR pendant la charge (2 s) et qu'un casier est à portée ; sinon, accepte le palier. Compter 30 à 45 s après une onde.
- *Macro* : réussir les skill checks ; Snap Out of It (12 s) **quand il est loin**. En Madness III, tu ne peux ni réparer, ni soigner, ni être soigné, ni utiliser d'objet : Snap Out of It devient prioritaire (décrocher reste permis). Il manque de mobilité : se disperser.

**Erreurs classiques** : jouer les palettes au dernier moment ; rester en Madness III dans son TR ; se cacher derrière un mur contre le Static Blast.

**Quand le counterplay échoue** : avec une portée augmentée (jusqu'à 16 m), les longues boucles perdent leur sûreté ; les add-ons « Discipline » réduisent encore le délai.

**Add-ons qui changent la décision** (SS ; Discipline VM) :
- **Interview Tape** (choc en faisceau étroit de 2 m × 24 m) → sors de l'axe **latéralement au lieu de** reculer.
- **Scrapped Tape** (anneau de 4 m de rayon placé 8 m devant lui) → reste **très près** ou **hors de l'anneau** au lieu de prendre la distance habituelle.
- **High Stimulus / Polished / Mouldy Electrode** (+4/+3/+2 m, jusqu'à 16 m) → prends plus de marge avant toute action.
- **"Discipline" – Carter's Notes / Class III / Class II** (délai 0,55 / 0,57 / 0,59 s, VM ; faux Red Stain/TR en Madness II-III) → pré-drop encore plus tôt, et **ne lis pas la distance au Red Stain** en Madness.
- **"Order"** (palettes illusoires pour les survivants en Madness) → en Madness, ne planifie pas une chase sur une palette apparue là où tu l'avais vue cassée.

**Implications de carte** [HEURISTIQUE] :
- Aidé : petites cartes et intérieurs (le Static Blast couvre une plus grande part de la carte).
- Gêné : grandes cartes : tu restes hors de son TR, et il manque de mobilité pour relancer la Madness partout.

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Distressing** (TR élargi ; modifiée au PTB 10.2.0 — non LIVE) : si le Static Blast couvre tout le TR, il s'élargit aussi [HYPOTHÈSE : interaction non vérifiée].
- **Unnerving Presence** / **Coulrophobia** (skill checks plus durs, soins ralentis dans le TR) et **Overcharge** (sa perk : skill check difficile après un kick) → soigne et répare hors TR, surtout en Madness.

Détail : `kb/research/batch4_killers_g1.md` §7.

## Fiches : tueurs 8 à 15

### 8. The Huntress (Anna) — ranged · M1 [Intermédiaire]

**Données LIVE** : 4,4 m/s (3,08 m/s en armant) ; **TR 20 m**, **berceuse 45 m** ; grande. **7 hachettes de base** (5 → 7 en 7.6.0 ; l'audit qui classait « 7 » comme erreur est corrigé par l'errata). **Aucun add-on n'augmente la capacité** : Iridescent Head la **réduit à 1**. Armement minimal 0,9 s (lancer à 25 m/s) ; charge complète 1 s de plus (40 m/s). Cooldown entre deux lancers 2 s. Recharge au casier **3 s**. Hitbox de collision avec le décor 0,1 m, détection du survivant 0,4 m. Aucun changement d'équilibrage 9.0.0 → 10.1.2a (VP).

**Identification** : fredonnement à la place du battement de cœur (portée 45 m), puis TR très court : elle arrive « de nulle part ». Confirmer à la silhouette ou au premier lancer. Bruit de casier à la recharge.

**Ce qu'elle cherche** : open, boucles basses, vaults à point d'atterrissage connu, fin de boucle en ligne droite, soins et décrochages à découvert.

**Tiles** : favorables : murs hauts (jungle gym, shack, main building, intérieurs). Défavorables : open, fillers bas, maïs (cache la vue ; ne bloquerait pas les hachettes (INC)). Une fenêtre donne un point d'arrivée prévisible : ne la vaulte pas face à une hachette armée **qui voit ta réception**, sauf si c'est la seule sortie.

**Counterplay** :
- *Mécanique* : change de direction **au lâcher**, pas pendant tout l'armement. À distance moyenne, un lancer rapide (25 m/s) laisse plus de temps d'esquive qu'un lancer chargé (40 m/s) [DATA]. Plutôt que d'esquiver en plein champ, **casse la LOS**. Limite : une Huntress expérimentée tient la charge et attend ton virage ; varie le moment (feinte, ligne droite courte vers un mur).
- *Distance* : à bout portant elle joue souvent au M1 ; la zone la plus dangereuse est la **distance moyenne en open**.
- *Macro* : **compte ses lancers à partir de 7** (fiable en 1v4). À 0, elle doit aller au casier (3 s) : fenêtre pour gagner une tile ou relancer un gen. Soins et décrochages derrière une LOS.

**Erreurs classiques** : soigner en plein champ ; courir en ligne droite ; rester dans le maïs en croyant être protégé ; trop jouer un filler bas.

**Quand le counterplay échoue** : carte ouverte où les murs hauts sont rares → planifier la route entre tiles avant la chase.

**Add-ons qui changent la décision** (SS) :
- **Iridescent Head** (hachette = mise à terre, **1 seule** hachette) → LOS en permanence, aucun décrochage à découvert ; chaque lancer l'envoie au casier : fenêtre sûre pour bouger.
- **Soldier's Puttee** (4,6 m/s quand elle est à 0 hachette) → ne compte pas sur la fenêtre du casier.
- **Wooden Fox** (Undetectable 30 s après une recharge) → après un bruit de casier, surveille visuellement.
- **Venomous Concoction** (Exhausted 5 s au toucher) / **Weighted Head** (Incapacitated 10 s) → après une hachette, vise une tile **au lieu de** compter sur ta perk d'Exhaustion ou sur une action.

**Implications de carte** [HEURISTIQUE] :
- Aidée : cartes ouvertes ou lumineuses (Mount Ormond, Coldwind hors maïs) et murs de gyms medium (Autohaven : elle voit ta tête).
- Gênée : intérieurs et labyrinthes (The Game, Midwich, RPD) : LOS courtes.

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Beast of Prey** (sa perk : Undetectable en Bloodlust) → berceuse coupée en chase longue : caméra sur elle. **Hex: Huntress Lullaby** → avertissement de skill check de plus en plus tardif : purifier tôt.
- **Territorial Imperative** (aura de qui entre au sous-sol quand elle est loin). Le seed cite aussi Lethal Pursuer, BBQ, Pain Resonance.

Détail : `kb/research/batch4_killers_g2.md` §8.

### 9. The Cannibal (Bubba Sawyer) — M1 · anti-loop (insta-down court) [Débutant]

**Données LIVE** : 4,6 m/s ; TR 32 m ; grand ; tronçonneuse audible à 60 m. **3 jetons**, rechargés en 4 s chacun quand la tronçonneuse n'est pas utilisée. Charge **2 s** (il ralentit jusqu'à **3,45 m/s**). **Chainsaw Sweep** 2,5 s jusqu'à **5,45 m/s** (buff 9.6.0, VM), **double dégâts**, **peut toucher plusieurs survivants** ; réappuyer = Dash qui consomme un jeton. **Casse de palette à la tronçonneuse : 1 s de cooldown**. **Tantrum** : en heurtant un obstacle pendant le sweep ou après **3 s** de rev sans lancer ; 3 à 6 s à 0,46 m/s, coups au hasard autour de lui. Un survivant sous Endurance est immunisé contre un 2e coup dans les 0,5 s (7.3.0).

**Identification** : tronçonneuse (60 m) ; balayages courts, Tantrums visibles (le Hillbilly, lui, sprinte en ligne droite).

**Ce qu'il cherche** : short loops et fillers, survivant qui garde une palette « pour le stun » pendant qu'il arme, groupes, body-blocks de crochet.

**Tiles** : favorables : **fenêtres** (son pouvoir ne lui donne aucun vault), longues boucles, LOS longues. Défavorables : tiles courtes où il balaie autour d'une palette debout, open.

**Counterplay** :
- *Palette* (cas « le pouvoir punit l'attente ») : quand il **arme** près d'une short loop, pré-lâche **puis pars** : la palette sert à éviter le balayage, pas à tenir la tile, puisqu'il la casse avec 1 s de cooldown. Contre un **tap-rev** (fausse charge) ou un Bubba qui arrive en M1 sans armer, la palette redevient une palette normale (stun possible).
- *Mécanique* : pendant sa charge, il marche à 3,45 m/s : gagne la distance vers la tile suivante. Un rev tenu plus de 3 s déclenche une Tantrum : il a au plus 3 s d'attente. Pendant une Tantrum (3 à 6 s), casse la LOS **hors de portée de ses coups**.
- *Macro* : pas de réparation à 2-3 sur le même gen quand il approche (multi-touche).
- *Équipe* : pas de body-block de face au crochet. L'Endurance de décrochage **absorbe un coup de tronçonneuse** (puis Deep Wound : le coup suivant met à terre).

**Erreurs classiques** : garder la palette pendant qu'il arme ; se grouper ; vaulter une palette vers une ligne droite ouverte.

**Quand le counterplay échoue** : avec **Bamboozle**, les fenêtres perdent leur valeur : reviens aux palettes jetées tôt et aux LOS.

**Add-ons qui changent la décision** (SS) :
- **Iridescent Flesh** (tous les jetons rechargés après un coup) → le 2e survivant proche part immédiatement **au lieu d'**attendre la recharge.
- **Long Guide Bar / The Grease** (+2/+3 s avant la Tantrum) → ne « attends » pas la Tantrum : pars.
- **Carburettor Tuning Guide** (un seul long sweep) → casse la LOS derrière un obstacle haut **au lieu de** compter sur la fin du sweep.
- **Speed Limiter** (tronçonneuse = 1 état de santé) → sain, tu peux encaisser un sweep **au lieu de** tout sacrifier pour l'éviter.

**Implications de carte** [HEURISTIQUE] :
- Gêné : cartes riches en fenêtres et longues boucles.
- Intérieurs étroits : sweeps à bout portant plus faciles, mais Tantrums plus probables pour lui [SITUATIONNEL].

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Barbecue & Chilli** (auras après un hook des survivants loin du crochet) → derrière un obstacle au moment du hook. **Knock Out** (LIVE : léger Hindered si tu t'éloignes d'une palette que tu viens de lâcher ; PTB 10.2.0 — non LIVE : plus fort) → marge avant la tile suivante.
- **Franklin's Demise** (objet au sol) → ne reviens pas le chercher près de lui. Le seed cite Bamboozle (voir *Quand le counterplay échoue*), Corrupt Intervention, Infectious Fright.

Détail : `kb/research/batch4_killers_g2.md` §9.

### 10. The Nightmare (Freddy Krueger) — zone/piège · téléportation · info [Intermédiaire]

**Données LIVE** (rework 8.5.0 ; aucun changement d'équilibrage depuis) : 4,6 m/s ; TR 32 m pour les éveillés, **berceuse 32 m** non directionnelle pour les endormis ; taille moyenne.
- **Éveillé** : tu entends son TR mais il est **invisible au-delà de 32 m**, visible par intermittence entre 16 et 32 m. **Microsleep** : endormissement passif en **60 s** en sa présence.
- **Endormi** : Oblivious ; **un soin donné ou reçu te révèle** (Killer Instinct). Un coup M1 endort immédiatement.
- **Réveil** : rater un skill check ; allié éveillé (**5 s**) ; **Alarm Clock** (2 s, CD 45 s, **immunité 30 s**) ; passer au sol.
- **Dream Snares** : projectile au sol 12 m/s, portée 18 m, **traverse les murs** ; CD 7 s. Endormi touché : **−12 % Hindered 4,5 s et pas de fast vault**.
- **Dream Pallets** : jusqu'à 8 ; **scintillement visible à moins de 6 m** ; « Rupture » après 1,5 s dans un rayon de **3,5 m** : un endormi dans la zone **perd un état de santé**. Une Dream Pallet qui ne rompt pas **peut** l'étourdir (elle se détruit).
- **Dream Projection** : TP vers n'importe quel gen ou près d'un **endormi qui se soigne** ; charge 2,5 s avec aura de « husk » à l'arrivée ; CD **30 s**, réduit de **15 % par survivant endormi** (max −60 %).

**Identification** : Alarm Clocks sur la carte ; TR entendu sans tueur visible au-delà de 32 m ; silhouette intermittente ; vision du Dream World.

**Ce qu'il cherche** : snares dans les couloirs et avant les fenêtres ; fausse palette à côté d'une vraie ; Rupture sur un endormi qui tourne autour d'une Dream Pallet ; TP sur un soin endormi.

**Tiles** : palettes connues avant la chase = fiables ; une palette qui **scintille à moins de 6 m** est fausse. Un mur protège de la visée d'un snare, pas du snare lui-même.

**Counterplay** :
- *Mécanique* : contourner les snares ; endormi, t'éloigner à plus de 3,5 m d'une Dream Pallet qu'il vise ; éveillé, une Rupture ne blesse pas (+60 s de Microsleep).
- *Macro* : **rester éveillé est rentable** : chaque endormi raccourcit sa TP de 15 %, et un soin endormi lui donne une cible. **Se réveiller avant de soigner**. Sur un gen, surveiller l'aura de husk (2,5 s) et s'écarter de plus de 8 m.
- *Équipe* : se réveiller mutuellement (5 s) en SWF ; en SoloQ, les Alarm Clocks (2 s) ou un skill check raté volontaire plutôt qu'attendre un allié.

**Erreurs classiques** : se soigner endormi ; laisser toute l'équipe endormie en fin de partie ; ouvrir une porte endormi.

**Quand le counterplay échoue** : build de fin de partie (Remember Me, Blood Warden) ou Class Photo / Black Box : l'ouverture des portes devient une décision d'équipe, **éveillé**.

**Add-ons qui changent la décision** (SS) :
- **Black Box** (portes bloquées 15 s pour les endormis) → réveille-toi **avant** l'endgame.
- **Class Photo** (TP sur les interrupteurs des portes) → n'ouvre pas une porte seul et à découvert ; ouvre quand il est engagé ailleurs.
- **Red Paint Brush** (auras des endormis au-delà de 32 m ; Microsleep 90 s) → endormi, la cachette à distance est inutile : réveille-toi.
- **Paint Thinner** (lâcher une Dream Pallet te révèle) → ne tente pas de stun avec ses Dream Pallets.

**Implications de carte** [HEURISTIQUE] :
- Aidé : grandes cartes : sa TP sur les gens compense sa vitesse normale ; un gen isolé et loin n'est pas à l'abri.

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Fire Up** LIVE +4/5/6 % par gen terminé (6/7/8 % = PTB 10.2.0 — non LIVE) (VP) : casse, vault et ramassage plus rapides en fin de partie → saves préparés plus tôt.
- **Remember Me** (ouverture des portes allongée, sauf pour l'Obsession) et **Blood Warden** (sorties bloquées au hook) → ouverture lente = l'Obsession ouvre ; sortir **avant** un hook d'endgame (voir *Quand le counterplay échoue*).

Détail : `kb/research/batch4_killers_g2.md` §10.

### 11. The Pig (Amanda Young) — furtif · piège · M1 [Intermédiaire]

**Données LIVE** : 4,6 m/s ; **TR 24 m** (32 → 24 m en 9.1.0, SS : absent de la note officielle) ; taille moyenne. **Accroupie** : Undetectable, **4,0 m/s** (VM) ; le TR met 3 s à disparaître et 1,4 s à revenir. **Ambush Dash** : charge **0,75 s** accroupie, ruée **2,3 s à 7,1 m/s** (VM) ; CD 2,7 s après un coup, **1,5 s après un raté**. **4 Reverse Bear Traps** posés sur un survivant au sol (3,3 s). Piège inactif → s'active **à la complétion d'un gen**. Piège actif : **150 s**, **en pause** au sol, au crochet ou **quand la Pig te chasse**. **5 Jigsaw Boxes** : il faut en fouiller **de 1 à 4** (12 s chacune) ; **12 fouilles au total** par partie ; les boîtes non fouillées sont visibles pour les piégés. **Sortir avec un piège actif tue** ; **la trappe reste possible** même piégé. Signal sonore de ruée : non décrit par la page (INC).

**Identification** : TR court qui disparaît et revient ; piège sur la tête d'un coéquipier ; ruée.

**Ce qu'elle cherche** : ruée à courte portée sur une tile courte ; accroupissement près d'une fenêtre ou d'un coin.

**Tiles** : la ruée dure 2,3 s en ligne droite : murs et coins la cassent ; tiles moyennes et longues la rendent peu rentable.

**Counterplay** :
- *Mécanique* : pendant la charge (0,75 s), contourner un coin ou vaulter ; après une ruée ratée (1,5 s), gagner la distance **tout de suite**.
- *Piégé* : aller directement vers les boîtes visibles ; en chase, **le minuteur est en pause** : ne pas paniquer. En SWF, annoncer les boîtes vides.
- *Macro* : piège inactif → continuer à réparer, mais **décider du moment où l'on termine un gen** quand plusieurs survivants sont piégés (1 piégé près des boîtes ≠ 3 piégés).
- *Stealth* : vérifier les angles morts près des gens, surtout après une disparition de TR.

**Erreurs classiques** : quitter une chase pour chercher les boîtes ; plusieurs piégés qui terminent un gen ensemble ; franchir la sortie piège actif.

**Quand le counterplay échoue** : add-ons de minuterie ou de fouille qui réduisent la marge (ci-dessous).

**Add-ons qui changent la décision** (SS) :
- **Video Tape** (tous commencent piégés) → la 1re complétion de gen active 4 pièges : coordonne le premier gen.
- **Tampered Timer** (130 s) / **Jigsaw's Annotated Plan** (−10 s sur les pièges actifs à chaque gen) → traite le piège comme une urgence.
- **Rules Set No.2** (auras des boîtes cachées tant que le piège est inactif) → repère les boîtes à vue avant qu'un gen ne se termine.

**Implications de carte** [HEURISTIQUE] :
- Grandes cartes : boîtes éloignées, recherche plus longue → Tampered Timer plus dangereux.
- Intérieurs à coins : embuscade accroupie plus facile (furtif).

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Make Your Choice** (sa perk : décrocher quand elle est loin rend le sauveteur Exposed) → décroche quand elle est proche mais engagée.
- **Scourge Hook: Hangman's Trick** (auras près des crochets Fléau en portant, sabotage notifié) et **Surveillance** (gens kickés suivis, réparation audible de plus loin) → reprendre un gen kické puis bouger.

Détail : `kb/research/batch4_killers_g2.md` §11.

### 12. The Clown (Kenneth Chase) — anti-loop (Hindered) · mobilité (Haste) [Débutant]

**Données LIVE** (buffs 9.1.0 puis ajustement 9.2.0, VM) : 4,6 m/s ; TR 32 m ; grand. **6 bouteilles** partagées ; recharge **2,5 s à 2,3 m/s**.
- **Tonic** (nuage rose, 10 s) : vision troublée, toux, **pas de fast vault** (jusqu'à 1 s après la sortie), **−14 % Hindered** (1,6 s après la sortie).
- **Antidote** (nuage blanc, **jaune après 1,6 s**) : **+12 % Haste 6 s pour tous**, survivants compris (VP ; le wiki affiche 14 % dans une phrase, tranché à 12 %).
- Les deux gaz **s'annulent** ; passer de l'un à l'autre annule les effets persistants du premier.

**Identification** : bruit de verre, nuages rose ou jaune, toux, recharge visible.

**Ce qu'il cherche** : Tonic sur la fenêtre ou la palette visée (pas de fast vault) ; ligne droite en Antidote.

**Tiles** : obstacles hauts (bloquent les bouteilles) ; tiles à plusieurs sorties pour contourner le rose.

**Counterplay** :
- *Mécanique* : contourner le rose, ou le traverser au plus court ; **traverser son jaune** (tu gagnes +12 % toi aussi) ; **un nuage jaune annule le rose** ; gagner la distance pendant sa recharge (2,5 s à 2,3 m/s).
- *Fenêtres* : évite de miser une chase sur un fast vault intoxiqué (pas de fast vault possible dans le Tonic).

**Erreurs classiques** : courir dans un nuage rose ; rester groupés dans le gaz ; ignorer son Antidote.

**Add-ons qui changent la décision** (SS) :
- **Redhead's Pinkie Finger** (coup direct = Exposed tant qu'intoxiqué ; 1 bouteille) → évite le coup direct avant tout ; après chaque lancer il recharge 2,5 s.
- **Tattoo's Middle Finger** (aura 6 s des survivants touchés par un des deux gaz) → prendre son jaune te révèle : ne le traverse pas pour aller te cacher.
- **Cigar Box** (auras à 6 m pour les revigorés) → le jaune ne sert pas à se cacher près de lui.
- **Flask of Bleach** (Hindered −16 %), **Bottle of Chloroform** (nuage +20 %) → contourne plus large **au lieu de** traverser.

**Implications macro** [HEURISTIQUE] : sans Antidote, il n'a aucune mobilité : gens dispersés. Pendant sa recharge (2,5 s à 2,3 m/s), quitte le gen ou la tile ; son jaune accélère aussi les survivants : il peut servir à rejoindre un crochet ou un gen.

**Implications de carte** [HEURISTIQUE] :
- Aidé : cartes ouvertes (l'Antidote rend ses lignes droites rentables). Gêné : obstacles hauts et intérieurs, qui bloquent les bouteilles.

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Bamboozle** (sa perk) + Tonic (pas de fast vault) → les fenêtres valent peu : palettes. **Coulrophobia** (soins ralentis dans son TR) → soigner hors TR. **Pop Goes the Weasel** (chute ~20 % au kick post-hook) → finir le gen ou revenir réparer 5 %.

Détail : `kb/research/batch4_killers_g2.md` §12.

### 13. The Spirit (Rin Yamaoka) — mobilité · furtif (mindgame) [Avancé]

**Données LIVE** (dernier changement de pouvoir 6.7.0 ; rien en 9.x-10.x, VP par absence) : 4,4 m/s ; TR 24 m ; taille moyenne. **Yamaoka's Haunting** : charge **1,5 s**, puis phase jusqu'à **5 s** à **7,04 m/s** ; elle laisse un **husk immobile** qui porte le TR. Recharge complète en **15 s** (plus courte après une phase courte). Pas de cooldown d'attaque en sortie de phase. En phase, **tu lui es invisible**, mais elle **voit les scratch marks**, **entend tous tes sons**, voit l'herbe bouger. **Son de phase directionnel ≤ 24 m**. **Phasing passif** (LIVE) : elle clignote 0,5 s toutes les 1 à 5 s. Les perks qui localisent le tueur ne montrent que le husk pendant la phase. Sa respiration n'est plus audible en phase (depuis 2.3.0).

**Identification** : clignotement du phasing passif ; son de phase directionnel ; husk figé puis réapparition brusque.

**Ce qu'elle cherche** : un survivant qui court (griffures) et qui gémit ; un survivant qui garde une palette pour le stun.

**Tiles** : **jeter la palette tôt puis marcher** est souvent plus fiable que la tenir ; tiles connectées et LOS hautes pour les double-backs.

**Counterplay** :
- *Mécanique* : **regarde le husk** (figé = probablement en phase) et **écoute le son directionnel**. Quand elle phase près de toi, **marche ou arrête-toi** : la marche (2,26 m/s = 56,5 % de la course) ne laisse pas de griffures [DATA, audit]. **Limites** : c'est un mix-up, pas une règle ; une Spirit qui attend l'exploite ; **blessé**, marcher laisse grognements et flaques de sang. Varie marcher, courir, changer de côté.
- *Fenêtre de décrochage* : l'Elusive de base (10 s) supprime griffures, grognements et flaques : elle perd ses trois indices [FACT, audit].
- *Macro* : après une phase **complète**, elle a 15 s de recharge : quitte la tile à ce moment.
- *Perks* : Iron Will (grognements), Lucky Break : utiles, sans garantie [SITUATIONNEL].

**Erreurs classiques** : courir en ligne droite pendant qu'elle phase ; deviner **sans lire** husk et son ; tenir la même palette plusieurs fois ; se croire invisible en marchant dans l'herbe haute.

**Quand le counterplay échoue** : si le son de phase est absent, elle est à plus de 24 m ou ne phase pas : **aucun add-on de silence n'existe en LIVE** (Prayer Beads Bracelet a disparu). Avec Wakizashi Saya, le husk figé n'indique plus sa direction.

**Add-ons qui changent la décision** (SS) :
- **Mother-Daughter Ring** (+25 % en phase ; **elle ne voit plus les griffures**) → marcher n'apporte rien de plus : casse la distance vite.
- **Dried Cherry Blossom** (Killer Instinct à moins de 3 m pendant la phase) → rester immobile à côté d'elle ne marche plus.
- **Mother's Glasses** (Killer Instinct si tu passes à moins de 2 m du husk) → ne longe pas le husk.
- **Kintsugi Teacup / Uchiwa** (recharge instantanée après une casse ou un stun) → un stun ou une palette cassée ne donne plus de répit.

**Implications de carte** [HEURISTIQUE] :
- Aidée : grandes cartes (mobilité pleinement utile).
- Herbe haute et maïs ne te cachent pas d'une Spirit en phase : elle voit l'herbe bouger.

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Spirit Fury** (sa perk : après plusieurs casses, la palette de stun explose), combo connu avec **Enduring** (ch. 10 §10.6) → compte les palettes cassées ; drop pour bloquer, pas pour stun.
- **Hex: Haunted Ground** (2 totems ; en purifier un rend tout le monde Exposed) → deux Hex allumés dès le début : purifier seulement quand elle est loin. **Rancor** (cris à chaque gen) → l'Obsession sort en priorité, loin d'elle.

Détail : `kb/research/batch4_killers_g2.md` §13.

### 14. The Legion (Frank, Julie, Susie, Joey) — M1 · info · slug indirect [Intermédiaire]

**Données LIVE** : **désactivé puis réactivé en 9.6.0** (VP) ; dernier équilibrage 1v4 en 8.6.0. 4,6 m/s ; **TR 32 m, 40 m en Frenzy** ; taille moyenne.
- **Feral Frenzy** : jusqu'à **11 s** à **5,2 m/s**, +0,24 m/s par survivant touché (max 6,16 m/s) ; recharge 15 s. **Feral Vault** en 0,9 s sur **palettes tombées et fenêtres** (pas sur une palette debout : correctif 9.1.0, VM).
- **Feral Slash** : blesse + **Deep Wound** ; Killer Instinct sur les survivants de son TR non touchés. **Toucher un survivant déjà sous Deep Wound ou rater met fin au Frenzy.**
- **Le 5e slash d'un même Frenzy est létal**, même sur un survivant sous Deep Wound (SS).
- **Fatigue** en fin de Frenzy : **2,5 s à 2,3 m/s**.
- **Deep Wound** : 20 s, **en pause quand tu cours** ou pendant le mending ; mending 10 s seul, 6 s par un allié.

**Identification** : cris, TR qui passe à 40 m, Killer Instinct, tueur qui vaulte palettes tombées et fenêtres très vite.

**Ce qu'il cherche** : blesser plusieurs survivants puis enchaîner un M1 ; ou enchaîner 5 slashes.

**Tiles** : en Frenzy, **une palette tombée ne l'arrête pas** ; une palette **lâchée sur lui** l'étourdit quand même.

**Counterplay** :
- *Mécanique* : **faire rater un slash** (feinte autour d'un obstacle) met fin au Frenzy et vide sa jauge. Pendant sa fatigue (2,5 s à 2,3 m/s), casser la LOS.
- *5e slash* : si le Killer Instinct montre qu'il enchaîne 4 slashes, le prochain survivant ciblé joue ce coup comme **mortel**.
- *Deep Wound* : le minuteur est en pause **quand tu cours**, pas « en chase » : marcher ou t'accroupir pour cacher tes griffures **consomme** le minuteur. Mender à deux gagne 4 s mais expose deux survivants.
- *Macro/équipe* : ne pas rester groupés ; jouer blessé est **normal** contre lui : un soin complet n'est pas toujours rentable.

**Erreurs classiques** : se soigner à côté d'un gen occupé à plusieurs ; laisser expirer le Deep Wound ; ignorer le Killer Instinct.

**Quand le counterplay échoue** : Iridescent Button (le Feral Vault **casse** la palette vaultée) : les palettes tombées ne tiennent plus.

**Add-ons qui changent la décision** (SS) :
- **Iridescent Button** → utilise les palettes pour le **stun**, pas pour gagner du temps une fois tombées.
- **Julie's Mix Tape** (Frenzy rechargé après un stun en Frenzy) → un stun ne donne pas de répit.
- **Mural Sketch** (+0,32 m/s par slash) / **Never-Sleep Pills** (Frenzy +10 s) → ne compte pas sur la fin du Frenzy.
- **Filthy Blade**, **Stylish Sunglasses**, les **Pins** (effets après un mending **seul**) → fais-toi mender par un allié quand c'est possible [HYPOTHÈSE : le mending coopératif n'est pas décrit].

**Implications de carte** [HEURISTIQUE] :
- Aidé : petites cartes (survivants proches, slashs enchaînés plus facilement).
- Gêné : grandes cartes quand l'équipe est dispersée : chaque Frenzy touche moins de monde.

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Discordance** (sa perk : gens à 2 réparateurs ou plus surlignés) → un survivant par gen, cohérent avec « ne pas rester groupés ».
- **Mad Grit** (frappe en portant) → pas de body block ; **Iron Maiden** (sortie de casier : cri + Exposed) → évite les casiers.

Détail : `kb/research/batch4_killers_g2.md` §14.

### 15. The Plague (Adiris) — ranged · zone (fontaines) · infection [Intermédiaire]

**Données LIVE** (aucun changement d'équilibrage 9.x-10.x, VP par absence) : 4,6 m/s ; TR 32 m ; grande.
- **Vile Purge** : charge 1,5 s, portée **~13 m** ; objets touchés infectieux **40 s**.
- **Sickness** : +1 %/s en courant ou en interagissant, **+2 %/s sur un objet infecté**, **0 % en marchant, accroupi ou au sol**. À 50 %, tu vomis ; à **100 % : blessé et Broken en permanence** (sans mise à terre).
- **Fontaines** : **5 saines + 1 déjà corrompue** au début. Se purifier (**8 s**) soigne complètement et corrompt la fontaine. Elle boit une fontaine corrompue → **Corrupt Purge 60 s**. Si toutes sont corrompues, elle le reçoit automatiquement.
- **Corrupt Purge** : le vomi **inflige un état de santé** ; **tout stun (palette, Decisive Strike, Head On…) la ramène immédiatement en Vile Purge**.

**Identification** : fontaines sur la carte dès le début ; son de vomissement ; toux.

**Ce qu'elle cherche** : en Corrupt Purge, tirs en fin de boucle et par-dessus palettes et fenêtres ; survivants blessés en permanence.

**Tiles** : en Corrupt Purge, murs hauts et LOS ; au-delà de ~13 m, tu es hors de portée du vomi.

**Counterplay** :
- *Macro* : **ne purifie pas par réflexe**, surtout en rafale : chaque purification crée une recharge de Corrupt Purge. Mais une fontaine est corrompue **dès le début** : elle peut prendre un Corrupt Purge à tout moment. Jouer Broken est viable, avec coordination [SITUATIONNEL].
- *Infection* : infecté hors chase, **marche** (0 %) ; évite les objets infectés (2 %/s).
- *Mécanique* : en Corrupt Purge, LOS et murs hauts ; **un stun de palette y met fin** : garder une palette debout pour le stun est une vraie option contre elle.

**Erreurs classiques** : purifier en rafale ; courir infecté hors chase ; toucher les gens infectés ; « soigner vite » comme règle absolue (l'audit la relève comme erronée).

**Quand le counterplay échoue** : Iridescent Seal (Corrupt Purge à chaque gen terminé) rend « ne pas purifier » inutile.

**Add-ons qui changent la décision** (SS) :
- **Iridescent Seal** (Corrupt Purge automatique de 40 s à chaque gen terminé) → termine un gen près d'un mur haut et quand elle est loin.
- **Blessed Apple / Ashen Apple** (fontaines corrompues en plus au départ) → compte les fontaines corrompues avant de planifier.
- **Devotee's / Exorcism Amulet** (Corrupt Purge +20/+10 s) → joue la LOS plus longtemps.
- **Olibanum Incense**, **Incensed Ointment** (auras en purifiant ou quand elle boit) → purifie hors de son TR.

**Implications de carte** [HEURISTIQUE] : (non évaluées par la recherche)
- En Corrupt Purge, intérieurs et murs hauts la gênent (LOS) ; cartes ouvertes l'aident (portée ~13 m sans obstacle).

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Corrupt Intervention** (sa perk : 3 gens les plus éloignés bloqués au début) → signal au spawn : tenir la 1re chase.
- **Infectious Fright** (cri au down d'un coéquipier) → reste hors du TR des chases ; **Dark Devotion** (TR transféré à l'Obsession blessée) → un TR qui suit un coéquipier n'est pas le tueur.

Détail : `kb/research/batch4_killers_g2.md` §15.

## Fiches : tueurs 16 à 22

### 16. The Ghost Face (Danny Johnson) — furtif · M1 · info [Intermédiaire]

**Données LIVE** : 4,6 m/s ; **accroupi 4,0 m/s** (9.6.1, VM) ; **TR 24 m** ; taille moyenne. **Night Shroud** : Undetectable ; une attaque de base y met fin ; recharge **15 s** (9.6.0, VM). **Stalk** : portée 40 m, marquage en **~4,4 s**, **~2,2 s en se penchant** derrière un couvert, sans pénalité de distance. **Marked** : **Exposed 60 s**, et un Marked **ne peut plus le révéler**. **Reveal** : ≥ 30 % de son modèle au centre de ton écran, à **≤ 32 m**, pendant **1,5 s** ; fin du Night Shroud, et il reçoit ta direction + 4 s de Killer Instinct.

**Calcul clé** [DATA] : accroupi, il va **exactement à ta vitesse de course**. En marchant (2,26 m/s), tu lui rends 1,74 m/s, soit ~17 m en 10 s : marcher pour cacher tes griffures face à un Ghost Face proche coûte cher.

**Identification** : ni TR, ni berceuse, ni red stain en Night Shroud ; seul indice sonore, un froissement de vêtements. Un envol de corbeaux est un indice faible (l'audit signale qu'ils ne s'envolent pas pour certains furtifs).

**Ce qu'il cherche** : te faire tourner autour d'une tile opaque pendant qu'il stalke penché (~2,2 s suffisent), puis un M1 = mise à terre.

**Tiles** : favorables : tiles où tu vois ses angles de lean en premier (fenêtres, fillers bas). Défavorables : murs hauts, rochers épais, intérieurs à coins (Midwich, Hawkins).

**Counterplay** :
- *Mécanique* : caméra derrière toi régulièrement sur gen ; **révèle-le** dès qu'il apparaît à ≤ 32 m (1,5 s de visée) : son pouvoir est coupé 15 s. Puis **change d'angle** : il connaît ta direction.
- *Marked* : joue « comme Exposed » pendant 60 s (pré-drop plus tôt, pas de tile à mindgame serré) ; inutile de chercher à le révéler. Un Marked qui vient d'être décroché garde l'Endurance de base 10 s (coup → Deep Wound) tant qu'il ne fait pas d'action voyante [FACT, audit].
- *Équipe* : en SWF, annoncer sa position ; un coéquipier qui regarde vers toi peut le révéler.

**Erreurs classiques** : réparer ou soigner longtemps sans tourner la caméra ; décrocher à l'aveugle ; croire qu'il est loin parce qu'il n'y a pas de TR.

**Quand le counterplay échoue** : zones sombres ou encombrées, où le reveal est difficile.

**Add-ons qui changent la décision** (SS) :
- **Leather Knife Sheath** (accroupi ~4,4 m/s, calcul) → accroupi, il **te rattrape** : casse la LOS tôt **au lieu de** compter sur « il ne gagne pas de terrain ».
- **Knife Belt Clip** (TR 12 m accroupi) → un TR qui apparaît = il est déjà tout proche : réagis tout de suite.
- **"Ghost Face Caught on Tape"** / **Olsen's Wallet** (recharge instantanée après un down / une casse) → après un down ou une casse, attends-toi à un Night Shroud immédiat.
- **Night Vision Monocular / Telephoto Lens** (Exhausted 10 s / Oblivious 60 s pour qui le révèle) → ne révèle que si c'est toi qu'il approche.
- **Driver's License** (marquer un réparateur fait exploser le gen, −20 %, bloqué 15 s) → lâche le gen dès qu'il stalke.

**Implications macro** [HEURISTIQUE] : sans TR, il peut être partout : répare sur des gens éloignés les uns des autres, caméra tournée régulièrement ; un Marked (60 s) quitte le gen défendu. Un reveal coupe son pouvoir 15 s : fenêtre pour soins et décrochages.

**Implications de carte** [HEURISTIQUE] :
- Aidé : intérieurs à coins (Midwich, Hawkins, Lery's, RPD). Gêné : cartes ouvertes, où le reveal est facile.

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Furtive Chase** (sa perk : Undetectable après le hook de l'Obsession) → inspecte avant de décrocher. Seed : Pain Resonance, Grim Embrace, Lethal Pursuer. Spine Chill contre Undetectable [INCERTAIN] ; Distortion peu utile (pas d'aura par défaut).

Détail : `kb/research/batch4_killers_g3.md` §16.

### 17. The Demogorgon — mobilité · anti-loop · info [Intermédiaire]

**Données LIVE** (buffs 9.6.0, VM) : 4,6 m/s ; TR 32 m ; grand.
- **Shred** : charge 1 s (il avance à **3,86 m/s**, moins vite que toi) ; relâché avant 65 %, simple lunge ; bond à **19 m/s** ; virage **55 °/s** (27,5 avant 9.6.0) ; **casse les palettes baissées et les murs** (cooldown 1,8 s, VP). Cooldowns : raté 2,25 s, réussi 2,7 s.
- **Portails** (6) : posés, ils sont **inactifs** et invisibles pour toi. Traversés, départ et arrivée deviennent **actifs** : visibles, scellables, avec une zone de **4 m où tu es Oblivious**. Sortie de portail en **Undetectable 12 s** (5 s avant 9.6.0). Bruit de portail 8 m.
- **Scellement** : **12 s seul**, ~9 s à deux, 8 s à trois ; son global ; un portail scellé retourne dans son inventaire.

**Identification** : portails actifs visibles ; posture ramassée de la charge du Shred ; son de sortie de portail.

**Ce qu'il cherche** : un Shred en ligne droite ; une palette pré-lâchée qu'il détruit en 1,8 s.

**Tiles** : favorables : murs hauts qui forcent des virages serrés ; **fenêtres** (le Shred ne franchit pas une fenêtre). Défavorables : lignes droites, open, palettes pré-lâchées.

**Counterplay** :
- *Mécanique* : pendant la charge, prends la distance ou coupe la ligne ; change de direction à la détente. Depuis 9.6.0, les esquives latérales tardives rapportent moins (virage doublé).
- *Palette* (cas « casse gratuite ») : ne pas pré-lâcher ; lâcher quand il est **engagé dans une animation**. Quand le Shred est chargé, reste collé à un obstacle haut.
- *Macro* : sceller les portails actifs proches des gens clés. À deux, on ne gagne que 3 s pour deux survivants mobilisés : en SoloQ, un seul scelleur. Après toute sortie de portail : **12 s** sans TR, vérifie les abords du gen.
- *Oblivious* : ne répare pas et ne soigne pas collé à un portail actif (pas de TR même s'il est proche).

**Erreurs classiques** : pré-drop systématique ; réparer près d'un portail actif ; croire qu'un tueur « disparu » est loin.

**Quand le counterplay échoue** : réseau étendu (8 portails) ou arrivées silencieuses (Red Moss).

**Add-ons qui changent la décision** (SS) :
- **Red Moss** (Undetectable +8 s, sortie silencieuse) → surveille les abords ~20 s après chaque sortie (12 + 8, calcul ; le total affiché par le wiki date d'avant 9.6.0 (INC)).
- **Lifeguard Whistle / Mews' Guts** (+2/+1 portail) → scelle en priorité près des gens clés **au lieu de** laisser le réseau grandir. **Deer Lung** (4 portails) → chaque scellement pèse plus.
- **Barb's Glasses** (cooldown −10 % après une casse au Shred) → garde la palette debout.
- **Sticky Lining** (zone d'Oblivious 6,5 m) → éloigne-toi davantage des portails actifs.

**Implications de carte** [HEURISTIQUE] :
- Aidé : grandes cartes (portails plus rentables) ; cartes riches en palettes safe, qu'il casse au Shred.
- Gêné : cartes à nombreux murs hauts (virages serrés, Shred limité).

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Surge** (sa perk : down au coup de base = recul des gens proches du tueur, sans cri) et perks de régression à distance (TP) → chases loin des gens.
- **Cruel Limits** (fenêtres bloquées à chaque gen terminé) → prévois la chase avant de finir un gen : les fenêtres sont ta tile clé contre le Shred. **Mindbreaker** (Blindness + Exhausted en réparant).

Détail : `kb/research/batch4_killers_g3.md` §17.

### 18. The Oni (Kazan Yamaoka) — M1 · mobilité · coup unique (Fury) [Intermédiaire]

**Version** : 9.1.0 = **nerf** (limite de rotation de la Demon Strike rétablie à 540°, VM) ; 9.2.0 = **buff** (orbes au crochet 2 → 5, VM). « Buffs Oni 9.1.0 » (audit, seed) est imprécis.

**Données LIVE** : 4,6 m/s ; TR 32 m ; grand. Jauge de 100 : gain passif plafonné à 98 ; **coup sur un survivant sain +40** ; orbe +2,5. Il absorbe à 3,45 m/s et voit les orbes à 8 m.
- **Orbes** (seulement les survivants **blessés**) : 2 toutes les 4 s ; 2 par interaction (palette, casier, vault) ; 2 par skill check raté ; **5 au crochet**. Ils ne disparaissent jamais. Délai sans orbes après un décrochage : 10 s (note 9.5.0) ou 15 s (wiki) (INC).
- **Blood Fury** : activation **3 s** (rugissement), **~45 s** max, **−7 s par down**. Un stun ne la termine que si la jauge est au-dessus de 99 ou sous 5.
- **Demon Dash** : charge 2 s, **7,82 m/s**. **Demon Strike** : charge 2 s, double dégâts, multi-touche, rotation max 540° en phase d'ouverture. Casse palettes et murs en Fury (VP ; geste exact (INC)).

**Identification** : M1 classique avant la Fury ; rugissement d'activation ; charge du Dash.

**Ce qu'il cherche** : blesser vite (+40 par coup), farmer les orbes près des crochets, puis lancer la Fury en terrain ouvert.

**Tiles** : en Fury, murs hauts et virages serrés ; **fenêtres** (le Dash ne vaulte pas). Défavorables en Fury : open et palettes (cassées).

**Counterplay** :
- *Mécanique* : en Fury, force le Dash à tourner derrière un mur haut ; la charge de 2 s laisse le temps de réagir. Au corps à corps, la Strike tourne jusqu'à 540° : l'esquive par le côté marche mal, mets un obstacle haut **avant** qu'il soit à portée.
- *Macro* : **hors Fury, se soigner** quand c'est sûr lui refuse des orbes ; **pendant la Fury, ne commence pas de soin**. Ne lui offre pas de coups gratuits sur un sain (+40). Après un crochet, 5 orbes l'attendent : prévois une Fury rapide.
- *Temps* : la Fury dure ~45 s et perd 7 s par down : temporiser la raccourcit.

**Erreurs classiques** : rester blessé longtemps ; pré-drop pendant la Fury ; fuir en ligne droite en open ; sous-estimer la portée de la Fury depuis un gen éloigné.

**Quand le counterplay échoue** : jauge probablement pleine (plusieurs blessés, crochet récent) → anticipe la Fury avant de prendre une tile faible.

**Add-ons qui changent la décision** (SS) :
- **Lion Fang / Yamaoka Sashimono / Chipped Saihai** (Fury +10/+8/+6 s) → tiens la LOS **au lieu de** compter sur la fin de Fury.
- **Splintered Hull** (+33 % d'orbes) → soigne plus tôt, évite les vaults inutiles blessé.
- **Shattered Wakizashi** (+0,2 charge/s passif) → se soigner ne suffit plus à retarder la Fury : joue la distance.
- **Iridescent Family Crest** (Strike ratée = cri et révélation à ≤ 24 m) → en Fury, éloigne-toi de plus de 24 m d'une chase.

**Implications de carte** [HEURISTIQUE] :
- Aidé : cartes ouvertes (Coldwind, maïs compris) pour la Fury ; palettes safe cassées en Fury.
- Gêné : intérieurs à murs hauts.

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Zanshin Tactics** (auras des palettes et fenêtres ; aura au drop) → change d'axe après un drop. **Blood Echo** (au hook, blessés Exhausted + Haemorrhage) → soigne-toi avant le hook suivant, cohérent avec *Macro*.
- **Nemesis** (stun → Obsession + Oblivious) → distance après un stun. Seed : Pain Resonance, Corrupt Intervention, Pop, Eruption. Iron Will et orbes : aucune interaction documentée [INCERTAIN].

Détail : `kb/research/batch4_killers_g3.md` §18.

### 19. The Deathslinger (Caleb Quinn) — ranged · anti-loop [Intermédiaire]

**Données LIVE** (dernier changement 1v4 en 8.0.0) : **4,4 m/s** ; **TR 32 m** ; grand. **Redeemer** : visée 0,4 s (il avance à 3,74 m/s), tir après 0,5 s, harpon **40 m/s**, portée **18 m** ; raté : CD 1,5 s ; **rechargement 2,6 s après chaque tir** (à 3,08 m/s). **Harponné** : immobilisé 0,75 s, puis enroulé ; le coup au bout de la chaîne = blessure + **Deep Wound**. **Chaîne** : casse en **~2,7 s si tu tires ET qu'elle frotte un obstacle**, ~4,4 s en frottement seul, ~5,7 s en tirant seul ; chaîne cassée = blessé + Deep Wound, et lui **étourdi 2,7 s**. **Avertissement sonore** quand il vise vers toi (dans son TR et à portée).

**Identification** : 4,4 m/s avec TR 32 m ; son d'avertissement de visée ; bruit de rechargement.

**Ce qu'il cherche** : une ligne droite ou une sortie de vault où tu ne peux pas tourner.

**Tiles** : favorables : obstacles serrés et hauts, jungle gyms fermés, intérieurs (ce sont aussi les obstacles qui cassent la chaîne vite). Défavorables : open, fenêtres exposées sur une longue ligne, fillers bas. Vaulter seulement si la sortie est couverte.

**Counterplay** :
- *Mécanique* : à l'avertissement, **casse la ligne** vers un obstacle au lieu de zigzaguer en open ; au-delà de 18 m, tu es hors de portée.
- *Harponné* : **tire ET frotte la chaîne contre un obstacle** (~2,7 s contre ~5,7 s). Casser la chaîne gagne 2,7 s, pas la sécurité : tu restes blessé sous Deep Wound, où le coup suivant te met à terre.
- *Macro* : il recharge 2,6 s après **chaque** tir : fais-le tirer dans le vide, puis gagne une tile pendant le rechargement.

**Erreurs classiques** : vault automatique vers l'open ; zigzag régulier et lisible ; rester en Deep Wound sans mender ; croire qu'une palette lâchée bloque un tir par-dessus (INC).

**Quand le counterplay échoue** : contre un bon tireur, une grosse tile séparée par de l'open ne vaut rien : préfère des chaînes de tiles serrées, même peu « safe ».

**Add-ons qui changent la décision** (SS) :
- **Iridescent Coin** (Exposed pendant le harpon tiré de ≥ 12 m) → harponné de loin, casse la chaîne **immédiatement** au lieu de te laisser ramener.
- **Hellshire Iron** (Undetectable pendant le harpon, puis 10 s) → après le harpon d'un coéquipier, ne te fie pas au TR ~10 s.
- **Gold Creek Whiskey / Marshal's Badge** (TR −8/−4 m en visée) → l'avertissement arrive plus tard : quitte l'open sans l'attendre.
- **Bayshore's Cigar** (étourdissement ~1,95 s) → après la casse, vise une LOS immédiate, pas une longue fuite.

**Implications de carte** [HEURISTIQUE] :
- Aidé : cartes ouvertes à longues lignes de tir ; murs de gyms medium (Autohaven : il voit ta tête).
- Gêné : intérieurs encombrés (tirs coupés, chaîne cassée vite).

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Dead Man's Switch** (sa perk : après un hook, le 1er gen lâché est bloqué 25/30/35 s ; PTB 10.2.0 — non LIVE : modifiée) → 1er lâcher sur un gen peu avancé. **Gearhead** (révélé après un Good) → viser les Great.
- **Hex: Retribution** (Oblivious en purifiant) → purifier quand l'équipe est à l'abri. Côté survivant, Lithe est citée par le seed.

Détail : `kb/research/batch4_killers_g3.md` §19.

### 20. The Executioner (Pyramid Head) — ranged · zone · anti-loop [Avancé]

**Données LIVE** (refonte 9.1.0, VM) : 4,6 m/s ; **4,2 m/s en traçant** ; TR 32 m ; grand.
- **Rites of Judgement** : 10 s de tracé max, recharge 40 s ; traînées **90 s** ; elles s'effacent en ~3 s près des gens, crochets, portes, trappe et au sous-sol.
- **Torment** : toucher une traînée **debout** donne Torment + Killer Instinct 3 s ; **accroupi, rien**. Torment ne s'enlève **qu'en sauvant quelqu'un d'une cage ou en étant sauvé**.
- **Punishment of the Damned** : onde de **10 m** devant lui (8 m avant 9.1.0), qui part après 0,27 s et **traverse les murs**, fenêtres et palettes (VM, preuve indirecte) ; CD 2,25 s.
- **Cage of Atonement** : un Tormented au sol peut être mis en cage au lieu d'être accroché ; la cage progresse **comme un crochet** ; elle apparaît **le plus loin possible** de lui ; il ne voit pas son aura. S'il reste à **≤ 10 m pendant 3,5 s**, la cage se déplace (anti-camp). Sauver : pas de bruit fort (9.2.3, VM) ; le sauvé reçoit 10 % Haste + Endurance 10 s + Elusive 10 s (10.1.0, VM).
- **Final Judgement** : exécution sur place d'un Tormented **au sol déjà en 2e phase** (il serait mort à son prochain crochet).

**Identification** : traînées rouges au sol ; bruit de l'onde ; cages loin de lui.

**Ce qu'il cherche** : te fixer derrière une palette, une fenêtre ou un mur fin, puis envoyer l'onde à travers.

**Tiles** : favorables : tiles longues, murs épais, distance latérale **> 10 m**. Défavorables : fillers bas, palettes courtes, couloirs en ligne, intérieurs à murs fins. La palette ne protège pas contre l'onde : elle sert à gagner de la distance.

**Counterplay** :
- *Mécanique* : bouger **latéralement** par rapport à son axe au lancer ; ne pas rester aligné derrière une palette.
- *Traînées* : hors chase, traverser **accroupi** (3 m ≈ 2,7 s au lieu de 0,75 s [DATA]) ; en chase, accepter parfois le Torment pour garder la distance [SITUATIONNEL].
- *Macro* : sauver les cages vite ; **priorité absolue** à un Tormented en 2e phase au sol (Final Judgement). Sauver retire le Torment au sauveteur **et** au sauvé.
- *Équipe* : cages loin de lui = sauveteurs éloignés. En SWF, désigner le plus proche ; en SoloQ, y aller si tu es le plus proche d'après le HUD et que personne ne bouge.

**Erreurs classiques** : croire que fenêtres, palettes ou murs bloquent l'onde ; traverser les traînées debout sans raison ; laisser au sol un Tormented en 2e phase ; croire que la cage bouge quand un **survivant** s'en approche (c'est lui qui la déclenche).

**Quand le counterplay échoue** : un joueur qui trace toutes les tiles : changer de tile tôt plutôt qu'accumuler les tours.

**Add-ons qui changent la décision** (SS) :
- **Obsidian Goblet** (l'onde casse palettes et murs ; CD +20 %) → ne lâche plus de palette pour le bloquer : file vers la tile suivante.
- **Iridescent Seal of Metatron** (portée −50 %, puis jusqu'à +200 % en traçant) → après un long tracé, fuis bien au-delà de 10 m (portée max exacte (INC)).
- **Tablet of the Oppressor** (Undetectable en traçant) → surveille les traînées à l'œil.
- **Scarlet Egg** (un Tormented qui court laisse ses propres traînées) → Tormented, ne cours pas à travers le groupe ou près d'un gen partagé.

**Implications de carte** [HEURISTIQUE] :
- Aidé : intérieurs à murs fins (Midwich, Lery's) : l'onde traverse ; goulets (couloirs) faciles à tracer.
- Gêné : tiles longues et espaces où tu prends plus de 10 m latéraux. Les traînées s'effacent au sous-sol.

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Forced Penance** (Broken après un coup protecteur) → body block seulement pour éviter un down. **Trail of Torment** (gen kické en aura jaune, tueur Undetectable) → gen jaune = tueur proche.
- **Deathbound** (cri du soigneur), **Nowhere to Hide** (LIVE 24 m autour du gen abîmé).

Détail : `kb/research/batch4_killers_g3.md` §20.

### 21. The Blight (Talbot Grimes) — mobilité · anti-loop [Avancé]

**Données LIVE** : **4,4 m/s** (nerf 9.6.0, VM) ; **TR 40 m** (8.6.0) ; taille moyenne. **5 tokens**, recharge **2 s par token**. **Rush** : **9,2 m/s** jusqu'à 3 s, sans attaque. **Slam** contre un obstacle sous un angle ≥ 45° (en dessous, il glisse) → fenêtre de chaîne de **1,25 s**. **Lethal Rush** : avec attaque ; **casse palettes baissées et murs** (VP). **Fatigue 2,5 s** en fin de chaîne ou après un Slam raté. Virage exact en Rush (INC).

**Coût d'une casse de palette** (9.6.0, VM ; correctif 9.6.2, VP) : casser une palette baissée, **au pied comme en Lethal Rush**, ramène ses tokens à « **2 sous le max** » et remet la recharge en cours à 0 %. À 5 tokens, une casse coûte **2 tokens + la recharge** ; à 3 tokens ou moins, elle coûte **aussi** des tokens depuis 9.6.2, quantité non précisée (INC).

**Identification** : TR 40 m qui arrive très vite ; sons de Rush et de Slam ; déplacement en rebonds sur les murs.

**Ce qu'il cherche** : un Lethal Rush en ligne droite, ou via un Slam sur l'obstacle de ta tile.

**Tiles** : favorables : tiles serrées aux murs hauts, obstacles irréguliers (un angle < 45° le fait glisser). Défavorables : open, longues lignes, fillers bas espacés.

**Counterplay** :
- *Mécanique* : tourner au dernier moment face au Lethal Rush ; après un Rush raté ou une fin de chaîne, repartir à l'opposé pendant ses **2,5 s de fatigue**.
- *Palette* (cas « la casse lui coûte ») : le pré-drop est **le plus souvent** plus rentable qu'avant 9.6.0. Limites : il peut contourner sans casser ; chaque pré-drop consomme une palette ; s'il a déjà peu de tokens, un drop normal suffit ; s'il ralentit avant la palette pour l'obtenir, mélange avec des départs anticipés sans drop.
- *Info* : compter ses Rushes au son (5 tokens, 2 s par token) pour estimer son stock.
- *Macro* : pas de 3-gen compact ; les gens éloignés ne sont pas plus sûrs.

**Erreurs classiques** : ligne droite en open ; attendre derrière une palette debout « pour le mindgame » ; appliquer le counterplay d'avant 9.6.0 (aucun pré-drop) ; ou l'inverse, pré-drop systématique même quand il contourne.

**Quand le counterplay échoue** : Blight « hug tech » qui exploite les tiles serrées : palettes et distance redeviennent prioritaires.

**Add-ons qui changent la décision** (SS) :
- **Adrenaline Vial** (7 tokens) → compte jusqu'à 7 ; une casse le ramène à 5 (calcul).
- **Iridescent Blight Tag** (3 tokens max, Rush +10 %) → après 3 Rushes, profite du creux **au lieu de** rester sur la défensive.
- **Compound Thirty-Three / Umbra Salts** (virage +11/+15 %) → moins de dodges tardifs : reste collé aux obstacles hauts.
- **Rose Tonic / Pustula Dust** (fenêtre de chaîne +1/+0,75 s) → ne pars pas dès le Slam : attends qu'il s'engage.
- **Vigo's Journal** (Undetectable pendant les Rushes) → écoute les Slams **au lieu du** TR.

**Implications de carte** [HEURISTIQUE] : [SITUATIONNEL]
- Aidé : cartes à nombreux obstacles « bumpables » (chaînes de Slams) ; grandes cartes (mobilité).
- Open très plat : vitesse, mais peu de Slams. Depuis 9.6.0, les palettes safe ne sont plus gratuites pour lui (tokens).

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Dragon's Grip** (sa perk : 30 s après un kick, le 1er qui touche le gen crie et devient Exposed) → attends 30 s sur un gen kické. **Hex: Blood Favour** (palettes debout bloquées autour à la perte de santé) → fuis vers une fenêtre.
- **Hex: Undying** (sa perk) avec un autre Hex. Seed : Pain Resonance, Pop, Eruption, Corrupt Intervention.

Détail : `kb/research/batch4_killers_g3.md` §21.

### 22. The Twins (Charlotte & Victor Deshayes) — slug · anti-loop · zone [Avancé]

**Données LIVE** (Victor peut lancer des chases depuis 9.0.0, VM) :
- **Charlotte** : 4,6 m/s ; TR 32 m ; grande. Endormie (Dormant) quand elle contrôle Victor : **ni TR ni red stain** ; elle garde sa collision 30 s.
- **Victor** : **6,0 m/s** ; berceuse (cris) 12 m au repos, 14 m accroché, 18 m contrôlé. Libération 0,75 s ; passage Charlotte → Victor 0,25 s, retour 1,5 s.
- **Détection** : Victor posé, un survivant qui **marche ou court** dans son rayon de cri est révélé ; **accroupi, rien**.
- **Bond** (charge 0,85 s) : sur un sain, Victor **s'accroche** (tu es blessé) ; sur un blessé, il te **met à terre** et garde le contrôle. Raté : **vulnérable 3 s**. Obstacle de plus de 80 cm à l'atterrissage : Victor détruit.
- **Accroché** : **Broken, Incapacitated, Oblivious**, pas de casier, **pas de sortie par une porte** (5 s après le retrait). **Retrait : 8 s.**
- **Écrasement** : **0,35 s** quand il brille en **rouge** (blanc = invulnérable). Rappel automatique au repos **90 s**.
- Spine Chill **ne détecte pas Victor** (SS).

**Identification** : cris de Victor (berceuse de 12 à 18 m) ; TR de Charlotte absent quand elle est immobile.

**Ce qu'il cherche** : Charlotte blesse, Victor achève ; Victor posé près d'un survivant au sol ou d'un crochet pour bloquer la relève.

**Tiles** : contre Victor, vaults et obstacles hauts qui cassent ses lignes de bond ; contre Charlotte seule, boucles standards. Défavorables : open (bond de Victor).

**Counterplay** :
- *Mécanique* : esquiver le bond (changer de direction pendant la charge de 0,85 s), puis **écraser Victor quand il est rouge** (0,35 s).
- *Positionnel* : près d'un Victor posé, **accroupi**.
- *Slug* : ne pas approcher un survivant au sol gardé par Victor sans pouvoir l'écraser ; attendre que Charlotte le rappelle (90 s au plus). Aucune auto-relève basekit en LIVE [FACT, audit].
- *Macro* : pendant que Charlotte contrôle Victor, elle est immobile et sans TR : fenêtre pour les gens **éloignés d'elle** ; ne traverse pas son corps pour fuir (collision 30 s).
- *Victor accroché* : fais-le retirer (8 s) **avant** de viser la sortie.
- *Équipe* : en SWF, un « écraseur » désigné pendant la relève ; en SoloQ, ne relève que si Victor est visible et rouge, ou rappelé.

**Erreurs classiques** : se regrouper autour d'un survivant au sol gardé ; marcher debout dans le rayon de cri ; croire que Victor ne peut pas lancer de chase.

**Quand le counterplay échoue** : un joueur qui garde Victor en sécurité → joue Charlotte comme un M1, sans quitter une zone de LOS blockers.

**Add-ons qui changent la décision** (SS) :
- **Iridescent Pendant** (écraser Victor pendant que Charlotte contrôle = Exposed 45 s) → n'écrase qu'en sécurité, jamais pendant une chase de Charlotte.
- **Silencing Cloth** (Charlotte Undetectable 20 s en sortant du Dormant) → après le retour de Victor, ne reprends pas le gen près d'elle.
- **Cat's Eye** (bond silencieux) → garde un obstacle entre toi et Victor **au lieu d'**attendre le cri de charge.
- **Madeleine's Glove / Soured Milk** (rayon de cri +4/+2 m) → accroupis-toi plus tôt.

**Implications de carte** [HEURISTIQUE] :
- Gênés : intérieurs et cartes encombrées (un obstacle de plus de 80 cm à l'atterrissage détruit Victor).
- Aidés : l'open (bonds de Victor).

**Perks / synergies à anticiper** (fréquences d'usage non vérifiables : effets LIVE, ch. 10 §10.4 et §10.10) :
- **Oppression** (sa perk : un kick fait régresser d'autres gens) → plusieurs gens qui reculent sans kick : réparer 5 %. **Coup de Grâce** (fente plus longue après une pop) → marge de distance.
- **Hoarder** (coffres surveillés) ; build Hex Ruin + Undying cité par le seed : purifier quand l'effet est observé.

Détail : `kb/research/batch4_killers_g3.md` §22.

## Points incertains à suivre

- Tokens perdus par la Blight sur une casse à 3 tokens ou moins ; délai sans orbes de l'Oni après un décrochage (10 ou 15 s) ; totaux d'Undetectable des add-ons du Demogorgon ; vault de fenêtre de la Nurse ; projectiles et palettes basses (Huntress, Deathslinger) : tous (INC).
- Fréquences de perks et d'add-ons : non vérifiables (NightLight inaccessible) ; les perks sont citées pour leur **effet**.
- À la sortie de 10.2.0 : revoir Agitation, Iron Grasp, Knock Out (LIVE 6 m / 5 % → PTB 10 m / 20 %), Fire Up, Dead Man's Switch, Hex: Blood Favour, Spine Chill, Calm Spirit, Borrowed Time. Aucun **pouvoir** des tueurs 1 à 22 n'est modifié au PTB 10.2.0 (VP).

## Sources du chapitre

- `kb/research/batch4_killers_g1.md` (tueurs 1-7), `kb/research/batch4_killers_g2.md` (8-15), `kb/research/batch4_killers_g3.md` (16-22) : fiches auditées et re-vérifiées le 27/09/2026 sur pages wiki complètes et notes officielles.
- `kb/ledgers/AUDIT_PHASE0_ERRATA.md` (casseurs de palette, 7 hachettes de la Huntress) ; `kb/seed/audit_phase0.txt` (vitesses survivant, protections de décrochage, anti-facecamp, Deep Wound).
- `kb/research/batch8_maps.md` §3.0 et §4.1 (profils de cartes × archétypes) ; `kb/deliverables/PERK_DEDUCTION.md` (signaux → perks) ; inventaire ch. 10 §10.10 (effets LIVE des perks citées).
- `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md` §2-3 (typologie, matrice tile × archétype) ; `kb/research/batch7_tiles.md` §5.2 (palettes annulées par pouvoir) ; `kb/research/batch11_training.md` (DR-15).
- Pages wiki.gg complètes (copies `kb/sources/wiki_killers/`) : Evan MacMillan, Philip Ojomo, Max Thompson Jr., Sally Smithson, Michael Myers, Lisa Sherwood, Herman Carter, Anna, Bubba Sawyer, Freddy Krueger, Amanda Young, Kenneth Chase, Rin Yamaoka, Frank Julie Susie Joey, Adiris, Danny Johnson, The Demogorgon, Kazan Yamaoka, Caleb Quinn, Pyramid Head, Talbot Grimes, Charlotte & Victor Deshayes ; page Pallets ; page Cages of Atonement.
- Notes officielles BHVR (copies `kb/sources/patches/official_*.txt`) : 9.1.0 (516), 9.2.0 (523), 9.2.3 (526), 9.5.0 (538), 9.6.0 (544), 9.6.1 (545), 9.6.2 (546), 10.1.0 (556) ; PTB 10.2.0 (559, non LIVE).
