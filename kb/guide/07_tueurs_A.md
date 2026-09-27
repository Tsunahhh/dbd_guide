# 7. Les tueurs (1/2) : typologie et tueurs 1 à 22

Ce chapitre répond à trois questions, dans cet ordre : **à quel type de tueur ai-je affaire ?**, **comment le reconnaître avant que le jeu me le dise ?**, et **que change-t-il à mes décisions ?** La première moitié donne les principes communs par archétype ; la seconde, une fiche par tueur, de The Trapper (1) à The Twins (22). Les tueurs 23 à 44 sont traités au chapitre 8.

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
| 3 | Hillbilly | 4,6 | **40 m** | Grand | **Oui**, tronçonneuse ~1 s (mécanique de base exacte (INC)) ; LoPro Chains : traverse sans s'arrêter | Mobilité · coup unique |
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

> **Note avancée** : la liste de la table 1.5 de l'audit phase 0 est corrigée par l'errata (`kb/ledgers/AUDIT_PHASE0_ERRATA.md`) : la Shape et l'Executioner (add-on) y manquaient. La note 9.5.0 classe en « Special-break » les pouvoirs du Hillbilly, de la Shape, du Demogorgon, de l'Oni et de la Blight (VP), et **pas** ceux de l'Executioner, des Twins ou du Deathslinger.

## Identifier le tueur avant le reveal

### Pourquoi c'est encore utile [Intermédiaire]

[FACT] Depuis 9.6.0, l'écran Match Details montre le tueur à tous les survivants **dès qu'un survivant entre en chase ou perd un état de santé** (VP). Son loadout (perks, add-ons) reste caché jusqu'à la fin.

Conséquences :
- Avant ce moment (souvent les 30 à 90 premières secondes), deviner le tueur te permet de choisir **où** réparer, **avec qui**, et quelle tile viser pour la première chase. Contre un furtif, le premier coup gratuit se joue justement pendant cette phase.
- Après le reveal, l'identification continue : la **phase** du tueur (Shape Stalker ou Evil Incarnate, Oni avant ou pendant la Fury, Legion en Frenzy) et ses **add-ons** se déduisent de ce que tu observes. C'est cette seconde lecture qui change le plus de décisions.

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
| TR court pour un tueur rapide | Pig, Ghost Face (24 m), Huntress (20 m) | Faible seule |

```
Premier signal observé
 ├─ Objet de carte (piège, boue, fontaine, réveil, boîte, traînée) ─► tueur identifié : lire sa fiche
 ├─ Son de pouvoir (cloche, tronçonneuse, berceuse, phase, visée) ─► 1 à 2 candidats : confirmer à la vue
 ├─ Pas de TR mais un tueur à proximité ─► FURTIF : caméra ouverte, obstacle à portée, pas de soin à découvert
 └─ Rien de particulier ─► M1 / anti-loop « classique » : jouer standard, attendre le premier usage de pouvoir
```

> **Erreur fréquente** : conclure « pas de TR, donc pas de tueur ». Six des 22 tueurs de ce chapitre peuvent approcher sans TR avec leur seul pouvoir de base, et d'autres le peuvent avec un add-on (Hillbilly Filthy Slippers, Huntress Wooden Fox, Executioner Tablet of the Oppressor…).

> **Note avancée** : l'efficacité de **Spine Chill** contre un tueur Undetectable (Wraith occulté, Shape Stalker, Ghost Face, Pig accroupie) n'est **pas vérifiée** [INCERTAIN], et la perk est reworkée au PTB 10.2.0 (non LIVE). La page des Twins confirme seulement que Spine Chill **ne détecte pas Victor**. La caméra reste l'information la plus sûre.

## Typologie transversale des tueurs

### Pourquoi raisonner par archétype [Intermédiaire]

La plupart des tueurs sont **hybrides** (2 à 4 archétypes). Le counterplay se construit en trois couches : (1) les principes de chaque archétype du tueur, superposés ; (2) la **phase** actuelle du tueur ; (3) les exceptions de sa fiche (add-ons compris). Cette méthode te permet aussi de jouer correctement un tueur que tu connais mal : identifie ses archétypes, applique les principes, corrige ensuite.

| # | Tueur | M1 | Anti-loop | Ranged | Mobilité | Furtif | Zone/piège | Info | Slug | Autre |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | Trapper | ● | | | | | ● | | | |
| 2 | Wraith | ● | | | ● | ● | | | | |
| 3 | Hillbilly | | | | ● | | | | | coup unique |
| 4 | Nurse | | ● | | ● | | | | | |
| 5 | Shape | ● | | | | ● | | | | coup unique, exécution |
| 6 | Hag | | | | ● | | ● | ● | | |
| 7 | Doctor | ● | ● | | | | | ● | | |
| 8 | Huntress | ● | | ● | | | | | | |
| 9 | Cannibal | ● | ● | | | | | | | coup unique court |
| 10 | Nightmare | | | | ● | | ● | ● | | |
| 11 | Pig | ● | | | | ● | ● | | | |
| 12 | Clown | | ● | | ● | | | | | |
| 13 | Spirit | | | | ● | ● | | | | |
| 14 | Legion | ● | | | | | | ● | ● (indirect) | |
| 15 | Plague | | | ● | | | ● | ● | | infection |
| 16 | Ghost Face | ● | | | | ● | | ● | | |
| 17 | Demogorgon | | ● | | ● | | | ● | | |
| 18 | Oni | ● | | | ● | | | | | coup unique (Fury) |
| 19 | Deathslinger | | ● | ● | | | | | | |
| 20 | Executioner | | ● | ● | | | ● | | | exécution (Final Judgement) |
| 21 | Blight | | ● | | ● | | | | | |
| 22 | Twins | | ● | | | | ● | | ● | |

Classement [HEURISTIQUE] repris des fiches du lot 4 et du handbook (`kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md` §2.1).

> **À retenir** : beaucoup de tueurs **changent d'archétype selon la phase** : Shape (Stalker furtif → Evil Incarnate coup unique), Oni (M1 → Fury), Legion (M1 → Frenzy anti-palette), Ghost Face (furtif → M1 contre un Marked qui tombe en un coup). Identifier la phase fait partie de l'identification.

### M1 : le tueur sans outil contre les boucles

- **Quoi** : un tueur dont le pouvoir ne l'aide pas directement à gagner une boucle (Trapper sans piège en main, Wraith en chase, Shape en Stalker/Pursuer, Pig debout, Legion hors Frenzy, Ghost Face contre un non-Marked, Oni hors Fury, Charlotte seule).
- **Pourquoi le counterplay marche** : sans anti-loop, chaque palette le force à casser (2,34 s, soit ~9,4 m pour toi [DATA, calcul]), à tenter un mindgame ou à abandonner. Chaque ressource lui coûte du temps.
- **Comment** : tenir chaque tile aussi longtemps que possible ; palettes et fenêtres sont des ressources **pleines** ; ne pas gaspiller une palette en pré-drop inutile ; enchaîner vers la tile suivante sur un **événement** (casse, stun, vault du tueur).
- **Quand ça échoue** :
  - Le « M1 » n'est qu'une phase : Shape en Evil Incarnate, Oni en Fury, Legion en Frenzy, Ghost Face contre un Marked.
  - Zone déjà préparée (Trapper, Hag) : la tile « normale » cache un piège.
  - Zone morte : sans structure à portée, même un M1 finit par te toucher. Planifie la route **avant** la chase.
  - Perks : Bamboozle dévalue les fenêtres ; Enduring raccourcit le stun (−40/45/50 %).

### Anti-loop : décider plus tôt

- **Quoi** : un pouvoir qui supprime l'avantage du « dernier moment » à la palette ou à la fenêtre (Doctor, Cannibal, Nurse, Clown, Demogorgon, Deathslinger, Executioner, Blight, Twins, Legion en Frenzy).
- **Pourquoi** : ces pouvoirs frappent **pendant** que tu attends le bon moment. Jouer avant la fenêtre du pouvoir le rend neutre.
- **Comment** : décider plus tôt (quitter la tile, pré-drop, ou rester hors de portée du pouvoir) ; enchaîner les tiles (tile-to-tile) au lieu de tenir une boucle.
- **Le pré-drop n'est pas universel** : trois cas différents.

| Cas | Tueurs 1-22 | Réponse par défaut |
|---|---|---|
| **(a) Casser lui coûte** | Blight (tokens de Rush ramenés à « 2 sous le max » + recharge à 0 %, VM) | Pré-drop **rentable** ; limite : il peut contourner sans casser |
| **(b) Son pouvoir punit l'attente à la palette** | Doctor (choc 0,65 s), Cannibal (balayage ; casse 1 s), Clown (Tonic sur la palette visée), Executioner (onde à travers la palette) | Pré-drop **puis départ immédiat** vers la tile suivante, pas « pré-drop puis tenir » |
| **(c) La casse est gratuite et le drop tardif n'est pas plus puni** | Demogorgon (Shred), Oni en Fury, Shape en EI (SS), Hillbilly contre une palette pré-lâchée | La palette vaut surtout le **stun** ou le blocage d'un sprint **engagé** ; pré-drop contre-productif |

- **Quand ça échoue** :
  - Contre un joueur qui **attend** ton pré-drop (il ralentit avant la palette), le pré-drop systématique lui offre la palette : mélanger pré-drop, départ anticipé sans drop, et drop normal quand le pouvoir est en recharge.
  - Chaque pré-drop consomme une palette de la carte : en fin de partie, la zone est morte.
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
- **Pourquoi** : la mobilité convertit l'espace ouvert en coups ; un obstacle solide l'oblige à corriger ou à rater.
- **Comment** : rester collé aux obstacles **hauts et solides** ; ne pas traverser l'open ; utiliser ses **fenêtres de récupération** (fatigue de la Nurse 2 à 3 s, fatigue de la Blight 2,5 s, cooldown du Hillbilly 2,5 s après un choc) pour **se repositionner**, pas pour fuir en ligne droite ; en macro, se disperser et ne pas laisser un 3-gen compact.
- **Quand ça échoue** :
  - Mobilité **qui traverse les obstacles** (blink de la Nurse, phase de la Spirit) : l'obstacle ne suffit plus, il faut casser la LOS au bon moment et lire les indices (husk figé, charge du blink).
  - Mobilité **ancrée sur la carte** : pièges de la Hag, gens et réveils du Nightmare, portails du Demogorgon. Une zone riche en ces points devient un **point d'arrivée** du tueur.
  - Casse de palette gratuite pendant la mobilité (Oni, Demogorgon, Hillbilly LoPro) : voir anti-loop.

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
- **Pourquoi** : une zone ne rapporte que si un survivant y retourne. Un réseau nettoyé = temps de setup perdu pour lui.
- **Comment** : ne pas rejouer une zone préparée ; tirer la chase **hors** de son réseau ; nettoyer (désarmer, effacer) **pendant qu'il chase ailleurs** ; décider en équipe (Pig : moment de finir un gen quand plusieurs survivants sont piégés).
- **Quand ça échoue** :
  - Add-ons qui annulent le nettoyage : Iridescent Stone (Trapper : réarme un piège désarmé toutes les 30 s), Mint Rag (Hag : TP vers n'importe quel piège non déclenché), Tension Spring (réarmement 2 s après une libération).
  - Cartes favorables à la zone : herbe haute et maïs (Trapper), petites cartes et intérieurs (Hag).
  - Zone **mobile** (traînées de l'Executioner) : en chase, accepter parfois le Torment pour garder la distance.

### Info : ne pas nourrir son information

- **Quoi** : Hag (déclenchements), Doctor (Madness, cris), Nightmare (TP sur les soigneurs endormis), Legion (Killer Instinct), Plague, Ghost Face, Demogorgon (Killer Instinct près des portails).
- **Pourquoi** : l'info lui permet des rotations et des arrivées sur gen sans perte de temps.
- **Comment** : ne pas lui donner l'info gratuite (soin endormi contre le Nightmare, course dans la zone de cri de Victor, traversée debout des traînées) ; face à une révélation (Killer Instinct, aura), **bouger** plutôt que se cacher sur place.
- **Quand ça échoue** : info déclenchée par des actions indispensables (skill checks et Madness, soins) : il faut l'accepter et jouer le mouvement. Les perks anti-aura (Distortion) servent peu contre un tueur sans aura par défaut (Ghost Face).

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
| Palette safe | ↑↑ | ↓ Demogorgon, Oni Fury, Shape EI, Legion Frenzy ; Blight avec coût | ± ↓ palette basse ne bloque ni hachette ni onde | ↓ Nurse, Spirit (jeter tôt puis marcher) ; Hillbilly LoPro | ≈ | ≈ |
| Shack / murs hauts | ↑ | ↑ Oni, Demogorgon | ↑ Huntress, Deathslinger ; ↓ Executioner (onde à travers) | ↑ Hillbilly, Nurse (obstacle opaque) | ↓ Ghost Face (il stalke hors de ta vue) | ↓ Trapper (entrée unique) |
| Zone ouverte | ↓ | ↓ | ↓↓ | ↓↓ Hillbilly, Nurse, Oni, Blight, Victor | ↑ tu le vois venir | ↑ réseau dispersé |
| Intérieur, coins | ≈ | ± ↑ Demogorgon (Shred limité), Cannibal (Tantrum) | ↑ Huntress, Deathslinger ; ↓ Executioner | ↑ Hillbilly, Nurse (multi-niveaux) | ↓ Ghost Face, Shape | ↓ Hag, Doctor (Static Blast) |

Détail : `kb/research/batch7_tiles.md` §5 (palettes annulées par pouvoir) et `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md` §3.

### SoloQ et SWF

- En **SWF**, les consignes d'équipe (annoncer la position d'un Ghost Face, désigner le sauveteur d'une cage, un « écraseur » de Victor, compter les Rushes de la Blight) s'annoncent au vocal.
- En **SoloQ**, applique-les seulement sur **signaux observables** : HUD (qui est en chase, au crochet, au sol), cris de piège, sons de pouvoir, auras de perks. Heuristique : si un coéquipier plus proche bouge déjà vers l'objectif, reste sur ton gen, mais vérifie 10 à 15 s plus tard qu'il y va vraiment.

### Exercice [Intermédiaire]

**DR-15 « Counterplay d'un tueur »** (`kb/research/batch11_training.md`) : choisis un tueur, relis sa fiche, et vérifie **3 comportements précis** dans chaque partie contre lui (exemple Huntress : LOS avant tout, changement de direction au lâcher, comptage des 7 hachettes). Métrique : coups de pouvoir évitables reçus (en revue de partie). Réussite : 3 comportements appliqués dans 3 parties consécutives. Variante « identification » : pendant les 60 premières secondes, note mentalement ton hypothèse de tueur et le signal qui l'a donnée ; compare au reveal.

