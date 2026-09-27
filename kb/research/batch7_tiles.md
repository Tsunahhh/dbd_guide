# Lot 7 — Théorie des loops, catalogue des tiles et connectivité (mission §5 et §6)

> **Statut : WRITTEN (27/09/2026), non audité.** Structure de fichier conforme à `kb/research/AGENT_BRIEF.md`.

- Référence de version : **LIVE 10.1.2a** (17/09/2026). Le **PTB 10.2.0** n'est **pas** LIVE : plusieurs pages wiki lues affichent déjà des descriptions 10.2.0 (Resilience, Dark Arrogance, Fire Up, Superior Anatomy, Unbound, Game Afoot). **Leurs valeurs ne sont pas utilisées ici.**
- Mode : **1v4 uniquement** (le 2v8 utilise des cartes agrandies ; rien ici ne s'y applique tel quel).
- Méthode (session du 27/09/2026, accès web par `curl` + API MediaWiki) :
  - pages wiki.gg lues **en entier** : Maze Tiles, Killer Shack, Pallets, Windows, Breakable Walls, Structures, Arbor, Car Crusher, Crane, Harvester, Hills, Lumber Pile, Patio, Pier, Sacrificial Tree, School Bus, Shrine (Structure), Water Tower, Basement, Chase, Status HUD/Bloodlust ; pages de cartes Coal Tower, The Pale Rose, Grim Pantry, Wreckers' Yard ; pages de royaumes Coldwind Farm, Red Forest, Crotus Prenn Asylum (journal des changements) ;
  - notes de patch officielles BHVR archivées : 9.2.0 (art. 523), 9.3.0 (529), 9.3.2 (530), 9.5.0 (538), 10.0.1 (551), PTB 10.2.0 (559, **non LIVE**) ; recherche par mot-clé dans toutes les notes 9.3.2 → 10.1.2a : **aucun autre changement de densité de palettes ou de tiles** après 9.3.2.
  - Guides experts écrits : **aucun guide écrit exploitable trouvé**. otzdarva.com renvoie vers une **vidéo** « All Common Tiles Explained » (not Otzdarva) : seul son titre a été lu (oEmbed), YouTube a renvoyé un captcha → **contenu non consulté, non utilisé**. hens333.com : page « Callouts » (système horaire de repérage), sans théorie de tiles. Guides Steam : niveau très faible (un seul cité, comme exemple de règle populaire). Reddit, NightLight, DuckDuckGo, forums (recherche) : bloqués.
- **Aucune VOD n'a été analysée.** Toute la partie tactique (sens, checkspots, greed, pre-drop, abandon) est **HEURISTIC** ou **EXPERT OPINION (non sourcée)** : elle vient du raisonnement de joueur, cohérent avec le lot 6 (`batch6_chase_tech.md`), jamais d'une mesure.
- Cohérence : les chiffres de chase (vitesses, vaults, palettes, Bloodlust, fente) et les formules de pathing sont **repris du lot 6 §1-2 et T11** ; la matrice tile × archétype complète le **§3 du KILLER_COUNTERPLAY_HANDBOOK** (sans la contredire, voir §5).

## 0. Conventions d'étiquetage

| Étiquette | Sens |
|---|---|
| **FACT [PN x.y.z]** | Texte de note de patch officielle BHVR lu (VERIFIED_PRIMARY) |
| **FACT [W]** | Page wiki.gg lue en entier le 27/09/2026 (STRONG_SECONDARY) |
| **FACT [W+PN]** | Les deux concordants (VERIFIED_MULTI_SOURCE) |
| **FACT [audit : …]** | Valeur reprise de l'audit phase 0 / lot 6 |
| **CALC** | Arithmétique sur des FACT ; ordre de grandeur, lignes droites, vitesses constantes |
| **HEURISTIC** | Règle de joueur non sourcée ; à tester, jamais absolue |
| **EXPERT OPINION (non sourcée)** | Consensus supposé de joueurs expérimentés, aucune source lue |
| **COMMUNITY_OBSERVATION** | Observation courante de la communauté, non documentée |
| **HYPOTHESIS** | Interprétation plausible non confirmée |
| **UNCERTAIN** | Non documenté ou contradictoire |

**Avertissement sur les schémas ASCII** : ce sont des **schémas de principe**, pas à l'échelle. Le wiki décrit la composition des tiles (murs, fenêtre, palette), pas leurs cotes. Les tiles apparaissent orientées différemment d'une partie à l'autre (COMMUNITY_OBSERVATION) : « gauche/droite » et « sens horaire » n'ont **aucun sens absolu**, seul compte le sens **relatif** à la fenêtre et à la palette.

Légende des schémas : `#` mur haut · `:` mur bas / muret · `W` fenêtre · `P` palette levée · `=` palette baissée · `D` ouverture sans obstacle · `B` mur cassable · `S` survivant · `K` tueur · `>` `<` `^` `v` trajets · `x` point de fente possible · `o` checkspot.

---

## 1. Ce qui est FIXE, ce qui est RNG, ce qui est OPINION

C'est la correction la plus importante du seed : il présente comme propriétés du jeu des classements (god / safe) qui sont des avis, et parle de loops « infinies » qui n'existent plus par construction.

### 1.1 Règles du jeu (FIXE) qui bornent toute loop

| Règle | Valeur LIVE | Source / confiance |
|---|---|---|
| Blocage de fenêtre par l'Entité | Après le **3e** vault d'une même fenêtre par le **même survivant** dans la **même poursuite**, la fenêtre est bloquée **pour lui seul** pendant **30 s** ; les autres survivants et le tueur peuvent toujours la franchir | FACT [W Windows] ; concorde avec l'audit (SS) |
| Rechute du blocage | S'il revaulte cette fenêtre dans les **30 s qui suivent le déblocage**, elle se rebloque **après ce seul vault** | FACT [W Windows] — **nouveau** par rapport à l'audit |
| Tampon de fin de poursuite | Pendant **5 s** après avoir perdu le tueur, les vaults comptent encore pour le compteur | FACT [W Windows] — **nouveau** |
| Origine du blocage | Introduit (patch 1.1.2) pour tuer les « Infinites » | FACT [W Windows, historique] |
| Vaults survivant (fenêtre) | Fast 0,5 s (≥ 2,5 m de course **droite** vers la fenêtre, garde l'élan, bruyant) ; medium 0,9 s (angle ou élan insuffisant, élan remis à 0, **plus de corps exposé** aux coups de loin) ; slow 1,5 s (silencieux) | FACT [W Windows] ; audit SS |
| Vault tueur (fenêtre) | 1,7 s par défaut | FACT [W Windows] |
| Saisie (grab) | Un survivant peut être saisi en plein vault (fenêtre ou palette ; pour la palette le wiki précise « Injured ») | FACT [W Windows, Pallets] |
| Palette : casse | 2,34 s ; caméra du tueur basculée vers le bas pendant l'animation | FACT [W Pallets] + audit VMS |
| Palette : stun | 2 s, appliqué quand la palette est abaissée à ~50 % ; depuis 5.2.0, pas de stun si le tueur est **du même côté** que le survivant | FACT [W Pallets] |
| Palette : vault survivant | Rapide 1,1 s (bruyant), lent 2 s (silencieux) | FACT [W Pallets] |
| Espacement des palettes | Emplacements prédéfinis, au moins **14, 16, 18 ou 20 m** entre deux palettes (exceptions, ex. Midwich) | FACT [W Pallets] (voir CONFLICT-L7-02) |
| Double palette | Supprimée en 1.5.1 sur les structures à plusieurs emplacements possibles | FACT [W Pallets, historique] |
| Murs cassables | Tueur seulement, 2,34 s ; la plupart des effets de casse de palette s'y appliquent ; le survivant ne peut rien en faire | FACT [W Breakable Walls] + audit VMS |
| Bloodlust | +0,2 / +0,4 / +0,6 m/s à 15 / 25 / 35 s de poursuite active ; perdue en cassant une **palette**, en touchant, en utilisant le pouvoir | FACT [W Bloodlust] + audit VMS |
| Bloodlust et fente | Depuis 1.5.0 la fente ignore le bonus de Bloodlust | FACT [W Bloodlust, historique] |
| Bloodlust et mur cassable | Le wiki ne cite que la **palette** : effet d'une casse de mur sur la Bloodlust **UNCERTAIN** | — |
| Fin de poursuite | > 18 m ; 5 s dans un casier ; LOS perdue > 8 s ; hors ±35° du centre du FOV (87° par défaut) | FACT [W Chase] + audit SS |

**Conséquence : il n'existe pas de loop « infinie » en LIVE** (CALC + FACT) :
- une fenêtre ne donne au même survivant que **3 vaults par poursuite**, puis 30 s de blocage, puis 1 seul vault avant rechute ;
- une palette est une ressource **finie** (le tueur la casse en 2,34 s et elle disparaît pour tous) ;
- la Bloodlust augmente la vitesse de rapprochement jusqu'à ×2 (tueur 4,6) ou ×2,5 (tueur 4,4) au bout de 35 s (lot 6 T06) : un cycle sûr à 0 s peut ne plus l'être à 25-35 s.
Le mot « infinite » survit dans la communauté pour désigner une loop que le tueur ne gagne pas **sans** casser, attendre le blocage ou partir (EXPERT OPINION) ; c'est une **loop forte**, pas une loop sans fin. Le wiki garde la trace de deux anciennes « quasi-infinite » corrigées : le Harvester et le School Bus (FACT [W]).

### 1.2 Génération des cartes : fixe vs RNG

| Élément | FIXE | RNG (change d'une partie à l'autre) | Source |
|---|---|---|---|
| Maze tiles (jungle gyms au sens large) | **Emplacement général** sur la carte (utilisable comme repère) | **Itération** choisie (L-T, pallet gym, jungle gym, 4-lane…), position fenêtre/palette selon la variante | FACT [W Maze Tiles] |
| Pool de maze tiles | Depuis 9.2.0, **tous les royaumes piochent dans le même pool** de layouts | Quelles itérations tombent | FACT [PN 9.2.0] + pages royaumes [W] = VMS (voir CONFLICT-L7-01) |
| Design des murs de maze | Propre au royaume (hauteur, matériau) | — | FACT [W Maze Tiles, « Designs »] |
| Killer Shack | Présent sur la plupart des cartes ; composition fixe : **1 fenêtre + 2 ouvertures dont 1 avec palette**, 2 casiers | Présence du sous-sol (sauf Wreckers' Yard et Rotten Fields : toujours), générateur, coffre, totem | FACT [W Killer Shack] |
| Cartes sans shack | Lampkin Lane, Treatment Theatre, The Game, Underground Complex, Midwich, RPD, Nostromo Wreckage | — | FACT [W Killer Shack] |
| Cartes sans maze tiles | Lampkin Lane, Badham Preschool(s), Treatment Theatre, Underground Complex, RPD West/East Wing | — | FACT [W Maze Tiles] |
| Main building | Présent par carte (détail : lot 8) | Contenu variable (générateur, sous-sol…) ; 9.3.0 : logique de spawn revue (main de Disturbed Ward, pontons de Backwater) pour « mieux randomiser » et équilibrer la distance fenêtres-palettes | FACT [PN 9.3.0] |
| Palettes | Emplacements **prédéfinis** et espacement minimal | Lesquelles apparaissent ; 9.3.2 : « Reviewed pallet randomization on certain tiles to provide more spawn variation » | FACT [W Pallets] + [PN 9.3.2] |
| Structures de royaume | Par royaume (Harvester, Cow Tree, Bus, Crane…) | Présence et variante (ex. Bus : 2 variantes, **un des deux vaults toujours bloqué**) | FACT [W] |
| Grille de carte | Les pages de cartes mesurent la surface en « tiles » de **8 × 8 m** (ex. Coal Tower 132 sqT) | — | FACT [W pages de cartes] ; lien exact avec la génération : HYPOTHESIS |

### 1.3 Historique récent de la densité et de la sécurité des palettes (VERIFIED_PRIMARY)

| Patch | Texte officiel (extraits) | Portée | Lecture pour ce lot |
|---|---|---|---|
| **9.2.0** (sept. 2025) | « adjust the quantity and distribution of pallets, reducing the presence of "dead zones" » — MacMillan, Autohaven, Coldwind, Crotus Prenn, Haddonfield, Backwater, Red Forest, Yamaoka, Ormond, Decimated Borgo. « Updated all Realms to draw from the same pool of available maze tile layouts. » | 10 royaumes ; pool commun pour tous | Moins de zones mortes ; les exclusivités de tiles par royaume du seed sont **à revérifier** |
| **9.3.0** (nov. 2025) | « Reviewed all pallet tiles to evaluate and reduce the safety of pallet loops on MacMillan Estate, Asylum, The Red Forest, Yamaoka Estate, Haddonfield and Mount Ormond Resort. » + logique de spawn (main de Disturbed Ward, pontons de Backwater, effet aussi sur Red Forest) « to better randomize items and balance the distance between windows and pallets » + main de Crotus Prenn « which could spawn near maze tiles and chain into other tiles » rendu moins safe | 6 cibles + Crotus Prenn | Premier cas officiel où BHVR nomme explicitement le **chaînage** de tiles comme un problème de sécurité |
| **9.3.2** (déc. 2025) | « Adjusted the length of loops that were too short and unsafe. Prevented pallets from spawning against certain small objects, creating short and awkward loops. Reviewed pallet randomization on certain tiles… » ; dev note : « a middle ground between the last two updates » | Autohaven, Backwater, Crotus Prenn, MacMillan, Ormond, Red Forest, Yamaoka | Moins de **fillers** trop courts contre des petits objets ; retour partiel vers plus de sécurité |
| 9.4.0 → 10.1.2a | Aucune note de densité / sécurité de palettes trouvée | — | État LIVE = 9.3.2 pour ce point |

Conséquence pratique (HEURISTIC) : les connaissances de tiles antérieures à fin 2025 (vidéos, guides, et le seed) peuvent être fausses **sur la présence et la sécurité** des palettes de ces royaumes ; la **géométrie** des maze tiles, elle, n'est pas décrite comme modifiée.

### 1.4 Ce qui est OPINION

- Les classements **god / safe / mindgame / unsafe / dead zone** : aucune définition officielle (le mot « dead zones » apparaît entre guillemets dans les notes 9.2.0, sans définition). Voir §3 : définitions **opérationnelles** proposées ici, étiquetées HEURISTIC.
- « Long wall > short wall », « outside (open) 4-lane > inside (closed) », « T plus sûr que L », « main X est god » : EXPERT OPINION (non sourcée), souvent vraies en moyenne, toujours dépendantes du tueur, des perks et de l'itération.
- Les noms « Wolfpack / Lone Wolf » (labyrinth gym), « double window gym », « small-wall gym », « edge tiles Z/U », « sandwich gym » du seed ne figurent pas sur le wiki : **NON VÉRIFIABLES** (noms communautaires probables).

---

## 2. Modèle de la loop (T-C01)

### 2.1 Une loop = deux trajets et des « portes »

Une loop existe quand le survivant dispose d'un **trajet fermé** autour d'un obstacle opaque ou non franchissable, et que ce trajet contient au moins une **porte asymétrique** : un passage que le survivant franchit plus vite que le tueur (fenêtre : 0,5 s contre 1,7 s ; palette baissée : 1,1 s contre « impossible » sauf exceptions, ou 2,34 s de casse). CALC de base (lot 6 T11) :

- la loop tient tant que `trajet_S × v_K / 4,0 < trajet_K − portée de fente` (portée utile de la fente : ~2-2,5 m, **UNCERTAIN**), avec `v_K` = 4,6 ou 4,4 m/s + Bloodlust ;
- en clair : le trajet du tueur doit dépasser celui du survivant de **15 %** (4,6) ou **10 %** (4,4), **plus** la fente, **plus** ~0,2 m par seconde de trajet et par palier de Bloodlust.

```
      trajet du survivant (court)            trajet du tueur (long)
   S ───────────────►W─────►                K ─────────────────────────┐
   (vault fast 0,5 s)                        (contourne ou vault 1,7 s) │
                                             ◄──────────────────────────┘
   La porte W « raccourcit » le trajet de S ; le tueur ne gagne que s'il coupe
   par un chemin plus court (le centre du tile) ou s'il lit le demi-tour.
```

### 2.2 Sens optimal, mauvais sens (définition générale)

- **Sens optimal** (HEURISTIC) : le sens de rotation où tu arrives sur la porte **après** avoir longé le mur le plus long et le plus haut, avec le tueur **derrière** toi et **sans** raccourci pour lui. Tu atteins la fenêtre avec ≥ 2,5 m de course droite (fast vault garanti) et la sortie de la fenêtre te mène vers la suite du cycle ou vers la tile suivante.
- **Mauvais sens** : le sens où le tueur peut atteindre **la sortie** de la porte avant toi en coupant par l'intérieur (ou par-dessus un mur bas), ou où tu arrives sur la fenêtre **en angle** (medium vault 0,9 s, plus de corps exposé : FACT [W]).
- Règle de choix (HEURISTIC) : le sens optimal dépend de **où est le tueur**, pas d'une orientation fixe ; le seed « serpenter dans le sens horaire » est donc faux comme règle (orientation RNG).

### 2.3 Ce qui use une loop (horloge de la tile)

| Horloge | Ce qui se passe | Nature |
|---|---|---|
| Compteur de fenêtre | 3 vaults par fenêtre et par poursuite, puis 30 s de blocage (pour toi seul) | FACT [W] |
| Bloodlust | Paliers à 15 / 25 / 35 s sans reset ; la casse d'une palette la remet à 0 | FACT [W] |
| Lecture du tueur | Après 1-2 cycles, le tueur connaît tes habitudes (même sens, même double-back) | HEURISTIC |
| Palette | Levée = menace (le tueur respecte ou prend un stun) ; baissée = porte asymétrique jusqu'à la casse | FACT (mécanique) + HEURISTIC (valeur) |

« Budget » d'une tile (CALC) : une tile à **une** fenêtre offre au plus 3 vaults à toi par poursuite ; une tile à **deux** fenêtres (L-T walls) jusqu'à 6 ; une tile fenêtre + palette offre 3 vaults + 1 drop + des vaults de palette jusqu'à la casse. Le temps réellement gagné dépend de ce que le tueur fait (il ne suit pas une fenêtre qu'il peut contourner) : ne jamais convertir ce budget en secondes sans regarder son trajet.

---

## 3. Force d'une tile : définitions opérationnelles (HEURISTIC / EXPERT OPINION)

**Aucune de ces catégories n'est une propriété du jeu.** Elles décrivent la relation **tile × tueur × état de la chase**. Référence implicite : tueur M1 à 4,6 m/s, sans Bloodlust, sans perk de chase, sans pouvoir utile sur la tile ; survivant sain qui joue proprement. Toute autre condition déplace la catégorie.

| Catégorie | Définition opérationnelle proposée | Test pratique (se poser la question) | Ce que le tueur « doit » faire |
|---|---|---|---|
| **God** (tile ou palette) | Même si le tueur joue parfaitement (coupe, attend, fausse avance), il **ne peut pas** atteindre la portée de fente avant que tu franchisses la porte, **et** la porte reste utilisable après usage (fenêtre avec cycle long ; palette dont la loop **baissée** reste forte). Limites externes seulement : blocage de fenêtre, Bloodlust II-III, pouvoir | « Si je le lis mal, est-ce que je prends quand même zéro coup ? » → oui | Casser, attendre le blocage, ou partir (abandon) |
| **Safe** | Tu atteins la palette **avant** qu'il soit en portée de fente, par tous ses trajets ; il doit **respecter** la palette levée ou la casser une fois baissée ; un mindgame est possible **seulement** s'il accepte le risque de stun | « Peut-il me toucher avant la palette s'il prend le plus court chemin ? » → non | Respecter, feinter pour provoquer un drop précoce, casser |
| **Mindgame** (« pseudo-safe » du seed) | L'issue dépend d'une **prédiction** (50/50) : il existe au moins un trajet du tueur qui gagne contre chacun de tes choix | « Mon choix est-il sûr quelle que soit sa direction ? » → non | Jouer la lecture, varier |
| **Unsafe** | S'il ne respecte pas la palette, il te touche **avant** ou **pendant** l'usage ; la palette n'a de valeur qu'en **pre-drop** (distance) ou en stun sur un tueur trop agressif | « Si je greed un cycle, est-ce que je prends un coup ? » → oui | Ne pas respecter, forcer le pre-drop |
| **Dead zone** | Zone d'où **aucune ressource** (palette, fenêtre, LOS utilisable) n'est atteignable avant d'être rattrapé, compte tenu de l'écart actuel | Voir le calcul ci-dessous | Rien : il te rattrape en ligne droite |

### 3.1 La dead zone est relative à ton avance (CALC)

Distance maximale que tu peux courir avant d'être rattrapé en terrain ouvert : `D_max ≈ 4,0 × (écart − fente) / v_r` (v_r = vitesse de rapprochement, lot 6 §2.1). Avec une fente utile de 2,5 m (UNCERTAIN) :

| Écart réel au départ | 4,6 sans BL (v_r 0,6) | 4,6 BL II (1,0) | 4,6 BL III (1,2) | 4,4 sans BL (0,4) | 4,4 BL III (1,0) |
|---|---|---|---|---|---|
| 4 m | 10 m | 6 m | 5 m | 15 m | 6 m |
| 6 m | 23 m | 14 m | 12 m | 35 m | 14 m |
| 8 m | 37 m | 22 m | 18 m | 55 m | 22 m |
| 10 m | 50 m | 30 m | 25 m | 75 m | 30 m |
| 15 m | 83 m | 50 m | 42 m | 125 m | 50 m |

Lecture (HEURISTIC) :
- Une zone n'est pas « morte » dans l'absolu : **elle l'est pour toi, maintenant**, si la prochaine ressource est plus loin que `D_max`.
- Comme deux **palettes** sont à ≥ 14-20 m l'une de l'autre (FACT [W]), une transition palette → palette (14-20 m) demande au minimum ≈ 6-8,5 m d’écart contre un 4,6 avec Bloodlust II-III (2,5 + v_r × D / 4). C'est pourquoi on quitte une tile **pendant** une casse (+9,4 m, lot 6 §2.3) ou un stun, pas après.
- **Dead zone structurelle** (vocabulaire, HEURISTIC) : zone où aucune ressource n'existe dans un rayon de ~30-40 m ; 9.2.0 a cherché à les réduire (FACT [PN 9.2.0]) mais la randomisation peut encore en créer.
- **Zone consommée** : zone qui avait des ressources mais dont les palettes sont cassées et les fenêtres bloquées **pour toi** (compteur personnel !). Une fenêtre bloquée pour toi reste ouverte pour un allié (FACT [W]).

### 3.2 Critique du tableau « 4 niveaux » du seed

| Seed | Problème | Correction |
|---|---|---|
| « God : impossible à mindgamer », exemples « fenêtre du shack bien jouée, main window, god pallets de maze » | Présenté comme propriété ; exemples dépendants de l'itération et du tueur | Catégorie **relative** (HEURISTIC) ; aucune tile n'est god contre Nurse, Blight, Hillbilly LoPro, etc. (§5) |
| « Safe : jungle gym long wall, 4-lane outside, debris gym » | Plausible en moyenne (EXPERT OPINION) ; 9.3.0 a **réduit** la sécurité des loops de palette sur 6 cartes, 9.3.2 l'a en partie rendue | Garder comme EXPERT OPINION datée (post-9.3.2 non mesuré) |
| « Pseudo-safe : murets bas (Cow Tree, Wreckers'), T-L » | Le Cow Tree est bien entouré de **murets de pierre** (FACT [W]) ; T-L en « pseudo-safe » : avis ; les murs de maze d'Autohaven sont décrits « medium walls » par le wiki | Renommer « mindgame / LOS lisible » ; lier à la hauteur des murs (§4.0) |
| « Unsafe / filler : arbre + rocher, voiture seule, balle de foin » | 9.3.2 a supprimé des palettes « contre certains petits objets » et rallongé des loops trop courtes (FACT [PN]) | Exemples à revérifier par carte (lot 8) |
| Absence de « dead zone » dans le tableau | Notion centrale de §6 | Ajoutée, avec définition relative (§3.1) |

---

## 4. Catalogue des tiles et structures (T-C02 à T-C09)

### 4.0 Données communes à lire avant les fiches

**Contenu garanti d'une maze tile** (FACT [W Maze Tiles]) : au moins un casier ; possiblement coffre, crochet, totem ; la plupart des itérations peuvent porter un générateur. Conséquence (HEURISTIC) : une maze tile peut être à la fois ta loop et **l'objectif du tueur** (gen à patrouiller, crochet à proximité) ; une chase qui y dure garde le tueur près d'un crochet.

**Hauteur des murs de maze par royaume** (FACT [W Maze Tiles, section « Designs »]) — c'est ce qui décide si la tile bloque la ligne de vue (LOS) :

| Royaume | Murs de maze (texte du wiki, résumé) | Lecture LOS (HEURISTIC) |
|---|---|---|
| MacMillan | Hauts murs de briques | Bloque la LOS |
| **Autohaven** | **Murs « medium »** de ferraille de voitures | LOS **partielle** : le tueur voit plus souvent ta tête → mindgames plus lisibles (contredit le seed « car piles : hauts murs », voir §7) |
| Coldwind | Hauts murs de planches (condamnés en 2.7.0 « pour être plus mindgame-ables ») | Bloque la LOS |
| Crotus Prenn | Hauts murs de béton | Bloque |
| Backwater | Hauts murs de boue et bois | Bloque |
| Red Forest | Hauts murs de rondins | Bloque |
| Gideon | Murs industriels jusqu'au plafond | Bloque totalement |
| Yamaoka | Hauts murs de bois moussu et bambou | Bloque |
| Ormond | Hauts murs de pierre enneigée | Bloque |
| Grave of Glenvale | Hauts murs de bois (style western) | Bloque |
| Silent Hill | Hautes haies à base de pierre | Bloque |
| Forsaken Boneyard | Hauts murs de grès | Bloque |
| Withered Isle | Hautes palissades ; **Garden of Joy** : 2 designs (béton « medium » + planches hautes) | Garden : LOS **mixte** selon le segment |
| Decimated Borgo | Murs de paille brûlés (hauteur non précisée) | UNCERTAIN |
| Toba Landing / Nostromo | Murs de roche (hauteur non précisée) | UNCERTAIN |

**Les fiches** suivent les 18 points de la mission §5. Les points « Forme / entrées / fenêtres / palettes » sont FACT [W] quand le wiki les décrit, sinon HYPOTHESIS ; **tous les autres points sont HEURISTIC** (ou EXPERT OPINION non sourcée) sauf mention contraire. Les tueurs cités renvoient au §5 et au handbook.

### 4.1 Killer Shack

```
 SCHÉMA DE PRINCIPE (HYPOTHESIS : le wiki donne seulement 1 fenêtre + 2 ouvertures dont 1 à palette ;
 la disposition exacte varie par royaume — chaque royaume a son itération, sauf Backwater)

        ┌───────────── boucle extérieure ─────────────┐
        │   ###########################W#####         │
        v   #                               #         ^
            D        intérieur              #    <─── S longe le mur, fast vault W
        ^   #     (zone du tueur « qui       P             quand K est derrière lui
        │   #       tient » le centre)      #
        │   ##################################        │
        └─────────────────────────────────────────────┘
   Boucle 1 (fenêtre) : extérieur → W → sortie par D ou P → extérieur → W (3 vaults max / poursuite)
   Boucle 2 (palette) : P baissée → S vaulte P (1,1 s), K doit faire le tour (ou casser 2,34 s)
```

| Point | Contenu |
|---|---|
| Forme | Petit bâtiment d'un niveau ; 2 casiers ; escalier du sous-sol possible ; trou dans le toit sans collision de jeu utile (Nurse ne peut plus se poser sur le toit depuis 1.9.0). Dead Dawg Saloon : itération western avec **mur cassable**. FACT [W] |
| Entrées | 3 passages : fenêtre W, ouverture à palette P, ouverture libre D. FACT [W] |
| Fenêtres | 1 (compteur personnel 3 vaults / poursuite). FACT [W] |
| Palettes | 1, dans une ouverture. FACT [W] |
| LOS | Murs hauts : le tueur te perd dès que tu passes un angle ; tu le perds aussi. Checkspots par W et les ouvertures. HEURISTIC |
| Sens optimal | Arriver sur W par l'extérieur **en longeant le mur**, tueur derrière toi sur le même côté : pour te suivre il vaulte (1,7 s) ou fait le tour par une ouverture. Sortir ensuite par l'ouverture qui t'éloigne de lui |
| Mauvais sens | Arriver sur W alors que le tueur est plus près de l'ouverture qui mène à la **sortie intérieure** de W : il t'attend à la réception. Ne pas vaulter ; continuer dehors ou jouer P |
| Checkspots | À travers W avant d'y arriver (voir s'il est entré) ; à chaque ouverture ; la tache rouge qui dépasse d'un angle |
| Pathing survivant | Coller les murs (cornering serré, lot 6 T12) ; mémoriser W, P, D **avant** la chase (pre-run) ; ne jamais s'arrêter à l'intérieur sans raison |
| Pathing tueur | 1) Suivre dehors pour lire ; 2) **tenir l'intérieur** (entre W et P) pour couvrir les deux portes ; 3) entrer par P pour casser le cycle (seed, plausible) ; 4) forcer le 3e vault puis attendre le blocage |
| Fast vault | L'approche de W doit comporter ≥ 2,5 m de course **droite** vers la fenêtre (FACT [W]) : tourner le coin **avant**, pas au dernier moment |
| Red stain | Tache qui fait le tour dehors = il suit → vault ; tache immobile ou qui sort par une ouverture proche de W = il tient/coupe → pas de vault, jouer P ou repartir dehors. Tache absente (Undetectable, tueur qui regarde au sol) = ne pas vaulter « à l'aveugle » |
| Double-back | Tile de référence : à un angle hors LOS, repartir dans l'autre sens quand il s'engage sur le long côté. Pas de double-back vers une W déjà vaultée 2 fois (le 3e est ton dernier) |
| Greed | Tant qu'il **suit** dehors et que ton compteur de W est ≤ 2 : greed la palette (la garder levée). Chaque cycle : réévaluer (lot 6 T05) |
| Pre-drop | Blessé et tueur à portée à l'approche de P ; tueur qui tient l'intérieur ; Bloodlust II-III ; pouvoir anti-loop prêt |
| Abandonner | W bloquée **pour toi** + P cassée ; ou tueur qui tient le centre et que tu n'as plus de porte sûre. Partir **pendant** la casse de P (2,34 s, caméra du tueur basculée : FACT [W]) par l'ouverture opposée à lui |
| Connecter | Repérer la tile suivante **pendant** le 1er cycle ; le shack est souvent à distance de maze tiles (emplacements fixes de la carte, lot 8). Sous-sol dans le shack = crochet proche : ne pas finir la chase blessé à côté |
| Tueurs qui changent tout | Nurse (blink à travers les murs) ; Blight (rush ; 9.6.0 : tokens sur casse de palette) ; Hillbilly/Cannibal (casse 1 s) ; casses instantanées (§5.2) ; Trapper (piège à la réception de W ou dans P) ; ranged : **murs hauts favorables au survivant** (handbook §3) ; Bamboozle / Hex: Crowd Control (W bloquée pour tous) |

**Critique du seed** : « au moins deux tours de fenêtre avant de toucher à la palette » est une **règle absolue** (audit) : elle est fausse dès que le tueur tient l'intérieur, que tu es blessé, ou contre un pouvoir anti-loop (lot 6 T05, Situation 1). « Au 3e vault, la fenêtre se bloque » : précision — le 3e vault est **permis**, le blocage vient **après**, pour toi seul, 30 s.

### 4.2 Jungle gym « long wall » (LW)

```
 SCHÉMA DE PRINCIPE — mur long (fenêtre) face à un mur en L ; fenêtre et palette TOUJOURS
 de côtés opposés (FACT [W]) ; l'emplacement de la fenêtre de l'autre variante devient un TROU (o)

      ####################W####################   <- mur long, fenêtre W
                                              #
      #          centre du tile               #
      #     (K « au milieu » couvre W et P)    
      #                                        
      ########o########              P          <- mur en L, trou o ; palette P côté opposé à W
       S boucle par l'extérieur du mur long → vault W → contourne → revient
```

| Point | Contenu |
|---|---|
| Forme / entrées | Deux murs (long + L) qui forment un espace central ouvert ; plusieurs entrées (les ouvertures entre les murs). FACT [W] pour fenêtre/palette/trou ; nombre d'entrées : non décrit |
| Fenêtres / palettes | 1 fenêtre sur le mur long, 1 palette côté opposé ; « trou » à l'emplacement de la fenêtre de la variante SW. FACT [W] |
| LOS | Dépend du royaume (§4.0). Le trou et la fenêtre sont des checkspots naturels |
| Sens optimal | Longer le mur long **par l'extérieur** vers W, tueur derrière toi : il ne peut pas couper (le mur est long). Vault W, repartir vers l'extrémité opposée du mur |
| Mauvais sens | Revenir vers W **par l'intérieur** du tile quand le tueur est au centre : il couvre la réception |
| Checkspots | Par W en approchant ; par le trou `o` ; aux extrémités du mur long |
| Pathing tueur | « Rester au milieu, ne pas suivre en rond » (seed : plausible) ; fausse avance sur P ; attendre au coin de W |
| Fast vault | L'approche le long du mur donne rarement 2,5 m droits **vers** la fenêtre : il faut « ouvrir » la trajectoire avant (léger écart puis ligne droite). HEURISTIC |
| Red stain / double-back | Tueur au centre : la tache pointe vers W ou vers P → aller vers l'autre porte. Double-back efficace au bout du mur long hors LOS |
| Greed / pre-drop | Greed P tant que la boucle W fonctionne (il suit) ; pre-drop P quand il s'installe au centre et que tu es entre lui et P sans marge |
| Abandonner | W bloquée pour toi, P cassée, ou tueur au centre qui couvre les deux portes. Sortie pendant la casse |
| Connecter | Les maze tiles occupent des emplacements fixes : la suivante est souvent à portée (espacement ≥ 14-20 m entre palettes) ; choisir celle **qui n'est pas du côté du tueur** |
| Tueurs | Houndmaster (angles courts ↑ pour toi, handbook) ; Nemesis MR3 (tiles courts dans sa portée) ; Trickster (longue fenêtre vue de loin) ; Trapper (coin piégé) |

### 4.3 Jungle gym « short wall » (SW)

| Point | Contenu |
|---|---|
| Forme | Même tile, fenêtre sur le mur **court en L** ; le mur long a un **trou** à la place de sa fenêtre. FACT [W] |
| Différence clé | Le trajet du tueur entre le centre et la réception de W est **court** : la fenêtre se couvre facilement → tile plus « mindgame » que safe (EXPERT OPINION non sourcée, cohérente avec le seed « long wall bien plus fort ») |
| Sens optimal | Utiliser W **uniquement** quand le tueur est engagé loin (côté mur long) ; sinon jouer la palette plus tôt que sur un LW |
| Pre-drop | Plus précoce que sur LW : la palette est ta vraie ressource |
| Abandonner | Dès que P est cassée : une W courte seule ne tient pas longtemps contre un tueur qui coupe |
| Checkspot | Le **trou** du mur long te montre le centre sans dévier |

### 4.4 L-T walls (T-L)

```
 SCHÉMA DE PRINCIPE — un mur en T et un mur en L, CHACUN avec une fenêtre (FACT [W]) ;
 un petit mur séparé (casier possible). Glenvale : un mur cassable en plus (FACT [W]).

          ###W###########                 ##########
                #                                  #
                #   (centre : K qui               W#
                #    « coupe »)                     #
                #                          ##########
   S serpente : vault W(T) → court vers W(L) → vault → revient
```

| Point | Contenu |
|---|---|
| Fenêtres / palettes | 2 fenêtres, **aucune palette** décrite par le wiki. FACT [W] (9.3.2 a « revu la randomisation des palettes sur certaines tiles » : ne pas exclure une palette proche, UNCERTAIN) |
| Budget | 2 compteurs indépendants : jusqu'à 3 vaults par fenêtre et par poursuite (CALC) |
| Sens optimal | Enchaîner les fast vaults en « S » entre les deux murs, toujours vers la fenêtre dont **la réception est loin du tueur** |
| Mauvais sens | Vaulter vers le côté où il se trouve ; tourner toujours dans le même sens (lu en 1 cycle) |
| Checkspots | Chaque fenêtre ; les extrémités des murs |
| Pathing tueur | Rester entre les deux murs (S) pour atteindre la réception de l'une ou l'autre (seed, plausible) |
| Red stain / double-back | La tile se joue presque entièrement à l'info : tache ou corps vus → choisir la fenêtre opposée ; double-back à l'extrémité du T |
| Greed / pre-drop | Pas de palette : « greed » = un vault de plus ; à éviter quand ton compteur d'une fenêtre est à 2 et que l'autre est couverte |
| Abandonner | Quand il coupe par le centre avec LOS sur toi (le seed dit « 50/50, partez pendant qu'il n'a plus de ligne de vue » : correct) ; quand les deux fenêtres sont bloquées pour toi |
| Connecter | Tile **de transition** idéale : pas de ressource consommable, tu peux l'utiliser en passant pour gagner 1-2 vaults puis partir vers une palette |
| Tueurs | Anti-loop à dash/projectile (handbook : ± selon tueur) ; Bamboozle / Crowd Control neutralisent la moitié de la tile ; Houndmaster (le chien vaulte les fenêtres : FACT [PN 9.3.2, correctif « dog … sent to vault a window or pallet »]) |

« Le T est généralement plus sûr que le L » (seed) : EXPERT OPINION non sourcée, **NON VÉRIFIABLE** ici.

### 4.5 4-lane (4-wall gym)

```
 SCHÉMA DE PRINCIPE — 4 murs parallèles ; fenêtre sur un mur EXTÉRIEUR = « opened »,
 sur un mur INTÉRIEUR = « closed » ; la palette est entre un mur extérieur et un mur intérieur
 qui n'ont PAS de fenêtre ; l'emplacement de l'autre fenêtre devient un trou (FACT [W])

   Variante « opened »                 Variante « closed »
   #######W#######  ext. A             ###############  ext. A
                                               
   #######o#######  int. B             #######W#######  int. B
                                             
   ###############  int. C             ###############  int. C
          P                                   P
   ###############  ext. D             ###############  ext. D
```

| Point | Contenu |
|---|---|
| Forme | 4 murs parallèles = 3 couloirs ; 1 fenêtre + 1 palette ; Glenvale : mur cassable en plus. FACT [W] |
| Présence | Le wiki (page non datée) l'exclut de Coldwind et Withered Isle ; les notes 9.2.0 imposent un **pool commun** → **CONFLICT-L7-01** |
| LOS | Les couloirs cassent la LOS (seed : correct si murs hauts ; Autohaven « medium ») |
| Sens optimal | Opened : boucler le mur extérieur qui porte W, vault quand il suit ; la palette sert quand il coupe vers les couloirs intérieurs. Closed : la W intérieure est plus facile à couvrir depuis les couloirs (EXPERT OPINION : opened > closed) |
| Checkspots | Le trou (`o`) et W ; les bouts de couloir |
| Pathing tueur | Se placer dans le couloir central pour voir les deux sorties ; zoner vers la palette pour la casser |
| Greed / pre-drop | Palette entre deux murs sans fenêtre : loop de palette longue (greed possible) tant que tu la vaultes plus vite qu'il ne contourne ; pre-drop si tu entres dans le couloir de P avec lui à portée |
| Abandonner | P cassée + W bloquée ; tueur au couloir central avec LOS |
| Tueurs | Ranged dans l'axe des couloirs (tir en ligne droite : ↓ pour toi, HEURISTIC) ; Demogorgon (Shred dans l'axe) ; Executioner (Punishment traverse les murs fins, handbook) |

### 4.6 Pallet gym

```
 SCHÉMA DE PRINCIPE — long mur en C + court mur en L, palette TOUJOURS entre les deux ;
 un petit mur en C séparé (totem possible) et un mur droit parallèle (crochet possible) (FACT [W])

        ##############
        #            #          ###   <- petit C (totem)
        #     C      P  L##         
        #            #   #          ###   <- mur droit (crochet)
        ##############
```

| Point | Contenu |
|---|---|
| Fenêtres / palettes | Pas de fenêtre décrite ; 1 palette garantie entre C et L. FACT [W]. Wiki (non daté) : absent de Withered Isle → CONFLICT-L7-01 |
| Sens optimal | Boucler le long mur en C **palette levée** tant que le tueur la respecte ; drop quand il s'engage sur le côté court (stun possible) |
| Greed | Tant qu'il respecte : c'est la seule ressource du tile, chaque cycle gagné gratuit est précieux |
| Pre-drop | Dès qu'il ne respecte plus (engagement franc) et que tu n'as pas la marge d'un cycle |
| Abandonner | « Faible une fois la palette cassée » (seed : correct, CALC : plus aucune porte asymétrique). Partir pendant la casse |
| Crochet | Un crochet peut apparaître sur le mur droit (FACT [W]) : une chute ici = crochet immédiat |
| Tueurs | Casses instantanées et vaulteurs de palette (§5.2) ; Dissolution (LIVE : après que tu as subi des dégâts, pendant 12/16/20 s, la prochaine palette que tu **fast-vaultes** dans son TR est détruite — valeur LIVE déduite du « was » des notes PTB 10.2.0 [PN 559] ; la page wiki affiche déjà la version PTB 13/14/15 s) → vault **lent** (2 s, silencieux) ou ne pas revaulter blessé |

### 4.7 Debris pile gym (= « Trash / Junk pile gym »)

| Point | Contenu |
|---|---|
| Forme | Deux murs principaux parallèles ; à gauche (vu de face) une **fenêtre à côté d'un tas de débris** ; à droite une **loop de palette coupée par un autre tas de débris** ; petit mur au fond ; casier au bout du mur de la palette. FACT [W] |
| Présence | Wiki : MacMillan, Red Forest, Yamaoka, Ormond (avant pool commun ?) → CONFLICT-L7-01 |
| Seed | Le seed liste « Debris pile gym » **et** « Trash pile gym » comme deux tiles différentes : **FAUX**, c'est le même tile (alias officiels du wiki) |
| Jeu (HEURISTIC) | Deux sous-loops (fenêtre à gauche, palette à droite) séparées par les murs parallèles : jouer la fenêtre tant qu'il suit, basculer vers la palette quand il coupe ; les tas de débris sont des obstacles de collision (ne pas s'y accrocher, lot 6 T20) |

### 4.8 Locker gym

| Point | Contenu |
|---|---|
| Forme | Trois segments : mur courbe à gauche avec **5 casiers** (totem possible devant) ; mur central avec **fenêtre au milieu** + 1 casier devant ; à droite deux murs fragmentés, **palette entre le central et le droit, à l'avant**. FACT [W] |
| Présence | Wiki : Red Forest, Ormond → CONFLICT-L7-01 |
| Jeu (HEURISTIC) | Fenêtre centrale → loop autour du mur central ; palette à l'avant pour le cycle de droite. Les casiers ne sont **pas** une ressource de chase (entrer sous les yeux du tueur = prise) ; ils servent après un chase break (lot 6 T07) |

### 4.9 Labyrinth gym

| Point | Contenu |
|---|---|
| Forme | Nombreux segments à petites avancées (aspect de labyrinthe) ; **5 chemins d'entrée** ; palette entre deux murs frontaux ; variante 1 : fenêtre **juste en face** de la palette ; variante 2 : fenêtre **plus à gauche**. FACT [W] |
| Présence | Wiki : Yamaoka, Ormond, Withered Isle → CONFLICT-L7-01 |
| Seed | Noms « Wolfpack » (alignée, fort) / « Lone Wolf » (séparée) : **NON VÉRIFIABLES** ; la géométrie correspond au wiki |
| Jeu (HEURISTIC) | 5 entrées = beaucoup d'options pour **les deux** : tile de mindgame et de double-back. Variante 1 : fenêtre et palette se couvrent mutuellement (un seul point à surveiller pour le tueur, mais un seul passage court pour toi) ; variante 2 : deux sous-loops plus espacées |

### 4.10 Variant gym

| Point | Contenu |
|---|---|
| Forme | 5 segments ; fenêtre près de l'avant du mur de gauche ; palette entre le mur central et le mur de droite, à l'avant ; deux segments à l'arrière ; 3 casiers. Ressemble au LW jungle gym (d'où son nom). FACT [W] |
| Présence | Wiki : MacMillan, Autohaven, Yamaoka, Ormond, Boneyard, Withered Isle → CONFLICT-L7-01 |
| Jeu (HEURISTIC) | Se joue comme un LW : fenêtre d'abord, palette quand il coupe ; les segments arrière offrent des angles de double-back |

### 4.11 Fillers (palettes « de remplissage »)

```
 SCHÉMA DE PRINCIPE — palette posée contre un petit objet (rocher, arbre, voiture, balle de foin, tronc)

        (rocher)
         ▓▓▓▓
         ▓▓▓▓ P ────── S       Boucle très courte : le tueur, plus rapide, rattrape le tour
         ▓▓▓▓                  → valeur = STUN ou PRE-DROP pour la distance, puis PARTIR
```

| Point | Contenu |
|---|---|
| Définition | Palette dont l'obstacle support est **court** : le cycle autour est plus court que « trajet × 1,10-1,15 + fente » → unsafe par construction (CALC, §2.1). HEURISTIC pour le classement |
| Changement LIVE | 9.3.2 : « Prevented pallets from spawning against certain small objects, creating short and awkward loops » + « Adjusted the length of loops that were too short and unsafe » (7 royaumes). FACT [PN 9.3.2] → moins de fillers « absurdes » qu'avant ; les connaissances antérieures sont périmées pour ces royaumes |
| Sens optimal | Arriver **sans** faire le tour : la palette sert d'une traite (drop puis départ) |
| Greed | Rare : seulement si le tueur est loin **et** respecte (il s'arrête devant) : tu gagnes du temps sans consommer |
| Pre-drop | Cas normal : dès qu'il sera en portée de fente à ton arrivée ; le pre-drop garantit la casse (2,34 s, Bloodlust à 0) ou un détour |
| Stun | Si le tueur s'engage franchement (ne respecte pas) : drop au bon moment = stun 2 s + casse éventuelle (lot 6 : ≈ +17 m) |
| Abandonner | Immédiatement après le drop : tourner autour d'un filler coûte un coup (seed : correct) |
| Connecter | Un filler est une **ressource de transition** : il sert à gagner les mètres pour atteindre la tile suivante, pas à y rester |
| Tueurs | Nurse (inutile), casses instantanées ; contre Spirit : « jeter tôt puis marcher » (handbook) |
| « God rocks » | Terme communautaire cité par l'audit (T-C07) : NON VÉRIFIABLE, non utilisé |

### 4.12 Fenêtres fortes / faibles, fenêtres à sens unique

Critères (HEURISTIC, aucun n'est documenté comme tel) :

| Critère | Fenêtre forte | Fenêtre faible |
|---|---|---|
| Trajet du tueur pour atteindre la réception | Long (mur long, pas de raccourci) | Court (mur court, ouverture proche) |
| Hauteur des murs autour | Haute (il ne voit pas ton choix) | Basse / « medium » (il lit ton approche) |
| Approche | Ligne droite ≥ 2,5 m naturelle (fast vault) | Approche en angle (medium vault 0,9 s, plus de corps exposé : FACT [W]) |
| Sortie | Vers une autre ressource ou le reste du cycle | Vers une zone morte |
| Réutilisation | Cycle qui te ramène à elle | À sens unique (drop-off) |

**Fenêtres à sens unique (drop-offs)**, FACT [W] :
- **Crane** (Autohaven) : fenêtre au sommet, le vault fait descendre de la grue.
- **Car Crusher** (Autohaven) : vault dans la benne → on retombe du camion.
- **School Bus** (Autohaven) : fenêtre à l'arrière de la moitié arrière = drop-off.
- **Harvester** (Coldwind) : vault **gauche** → panneau latéral d'où l'on **ne peut pas** revaulter ; vault **droit** → balle de foin d'où l'on **peut** revaulter dans les deux sens.
- **Shrine** (Yamaoka) : balustrade avec fenêtre et une descente ; une fenêtre intérieure donne sur la terrasse.
Lecture (HEURISTIC) : une fenêtre à sens unique n'est **pas une loop** ; c'est un **outil de transition** (le tueur doit faire le tour par la rampe/l'escalier ou vaulter 1,7 s). Ne compte pas dessus pour un 2e passage.

### 4.13 Main buildings (générique ; le détail par carte est au lot 8)

| Point | Contenu |
|---|---|
| Composition | Variable par carte : fenêtres (« main window »), palettes intérieures et extérieures, étages avec **drop-offs**, **murs cassables** (cartes retravaillées), escaliers, parfois sous-sol. FACT [W] pour les exemples lus : **Coal Tower** (entrepôt à 2 niveaux, escalier intérieur, **1 fenêtre** au rez-de-chaussée, **3 drop-offs** dont un bloqué par un mur cassable, **3 murs cassables** au rez-de-chaussée, **2 palettes à l'extérieur**) ; **Pale Rose** (bateau à 2 niveaux, 3 escaliers extérieurs, 4 entrées au rez-de-chaussée, **2 fenêtres à l'étage**, plusieurs palettes) ; **Grim Pantry** (Pantry + Cursed Cabin, 2 palettes chacun ; la Cabin a 1 fenêtre et une porte ; réparer le générateur de l'étage ouvre une vanne qui facilite l'accès) |
| Changements LIVE | 9.3.0 : main de **Crotus Prenn** rendu moins safe car il « pouvait apparaître près de maze tiles et s'y chaîner » ; main de **Disturbed Ward** : logique de spawn revue. FACT [PN 9.3.0] |
| Main window | « Souvent god » (seed) : EXPERT OPINION non sourcée ; le compteur de 3 vaults par poursuite s'applique aussi (FACT) — une main window n'est **jamais** infinie |
| Drops (étage) | Règle du seed « ne montez que s'il existe un drop libre ; descendez quand il monte l'escalier » : **HEURISTIC correcte** ; « il perd 3 à 5 s » : **NON VÉRIFIABLE** (aucune mesure) |
| Murs cassables | Le tueur peut ouvrir un raccourci (2,34 s) : tu gagnes ces 2,34 s **maintenant** (≈ +9,4 m CALC) mais la loop est **définitivement** plus courte pour lui ensuite. HEURISTIC : si le tueur casse un mur en pleine chase, profite des 2,34 s pour **changer de loop**, pas pour refaire la même |
| Pathing (HEURISTIC) | Mémoriser au pre-run : où est la main window, quelles palettes, où sont les drops, quels murs cassables sont déjà ouverts (état partagé par tous) |
| Tueurs | Mobilité verticale : Nurse (blink d'étage, ± : un blink raté = fatigue gratuite), Ghoul (bonds vers le haut/bas), Hillbilly (rampes) ; Huntress en hauteur (snipe) ; Mastermind (↑ bâtiments à étages, handbook) |

### 4.14 Murs cassables (modificateur de tile)

- FACT [W] : présents sur la plupart des cartes sorties ou retravaillées depuis Chains of Hate (liste du wiki, 22 cartes, probablement incomplète pour les cartes récentes : Coal Tower, Groaning Storehouse, Ironworks, Disturbed Ward, Father Campbell's Chapel, Lampkin Lane, Badham, The Game, Family Residence, Dead Dawg Saloon, Midwich, Eyrie of Crows, Garden of Joy…) ; exceptions retravaillées sans murs cassables : Shelter Woods, Wreckers' Yard, Rotten Fields, Sanctum of Wrath.
- FACT [W] : maze tiles de Glenvale : L-T et 4-lane ont **toujours** un mur cassable ; shack de Dead Dawg Saloon aussi.
- Perks liées (FACT [W], valeurs LIVE lues) : Brutal Strength (+10/15/20 % de vitesse de casse) ; THWACK! (casse de palette ou de mur → cri + aura des survivants à 36 m, 3 jetons) ; Rampage ; survivant : Alert (aura du tueur 3/4/5 s quand il casse).
- HEURISTIC : un mur **encore fermé** rend la loop du main plus longue pour le tueur ; il a intérêt à l'ouvrir **hors chase** (patrouille). Un mur ouvert avant ta chase = loop à réévaluer au pre-run.

### 4.15 Structures uniques par royaume (T-C09)

| Structure (royaume) | Description FACT [W] | Jeu (HEURISTIC) |
|---|---|---|
| **Sacrificial Tree / « Cow Tree »** (Coldwind) | Entouré de **murets de pierre** ; 1 fenêtre ; 1 palette entre deux autres murets | Murets bas = le tueur voit tout : peu de mindgame possible pour toi, beaucoup pour lui. Seed « fenêtre d'abord, palette ensuite » : plausible (garder la palette pour le moment où il coupe) |
| **Harvester** (Coldwind) | Accès par la tête et une rampe ; 2 vaults au sommet (gauche sens unique, droite sur une balle de foin avec aller-retour) ; ancien quasi-infini corrigé | Le vault droit permet un aller-retour ; le gauche est un drop de transition. Monter coûte du temps : ne monter que si la sortie est planifiée |
| **School Bus** (Autohaven) | 2 variantes (moitiés collées ou séparées par un couloir, 6.7.0) ; **un des deux vaults toujours bloqué** ; fenêtre arrière = drop-off ; palette **possible** au milieu de la moitié avant ; ancien quasi-infini (2 palettes, 2 fenêtres) | Seed « le bus se boucle en longueur » : IMPRÉCIS (dépend de la variante et du vault ouvert). Identifier la variante et le vault actif à l'arrivée |
| **Crane** (Autohaven) | Rampe en bois vers le sommet ; fenêtre au sommet = drop-off ; **toujours une palette entre la grue et une voiture** | Palette garantie = ressource fiable de la zone ; le sommet est une transition |
| **Car Crusher** (Autohaven) | Escaliers ; vault dans la benne (drop-off) ; voiture à côté | Transition, pas une loop |
| **Water Tower** (MacMillan) | Structure carrée en briques ; caisses à l'arrière (totem possible) | Le wiki ne décrit ni fenêtre ni palette : **obstacle de LOS**, loop « à pied » seulement |
| **Lumber Pile** (MacMillan) | Pile de bois + fendeuse ; 2 casiers possibles devant | Seed « long mur avec palette » : **NON VÉRIFIABLE** (le wiki ne mentionne pas de palette) |
| **Pier** (Backwater) | Étage avec générateur, 2 casiers, **plusieurs drop-offs** ; rez-de-chaussée « ressemblant à des jungle gyms » avec **plusieurs vaults et une palette** (2 emplacements possibles) ; 9.3.0 : spawn revu pour équilibrer fenêtres/palettes (FACT [PN]) | Structure riche : loops du bas + drops ; attention aux **corbeaux** du Swamp (seed : les « crow bombs » existent sur Pale Rose, FACT [W]) |
| **Arbor** (Yamaoka) | Bâtiment japonais ; 3 escaliers ; un côté avec un vault ; une **palette sur un rocher parallèle**, en face d'un pont rouge | Combiner vault de l'Arbor et palette du rocher (deux ressources proches) |
| **Shrine** (Yamaoka) | 2 escaliers vers la terrasse ; balustrade avec **fenêtre** et **descente** ; fenêtre intérieure vers la terrasse | Sortie par la descente = transition |
| **Patio** (Yamaoka) | Dallage entouré de **murets de pierre** avec plusieurs ouvertures ; **1 fenêtre + 1 palette** | Petite tile fenêtre + palette ; murets : LOS pour le tueur |
| **Hills** (plusieurs royaumes) | Sentier de pierre vers le sommet ; sommet : totem, coffre, objets de tueur ; Red Forest et Yamaoka : 2 accès ; absentes de nombreuses cartes | **Pas une loop** : obstacle de LOS et dénivelé ; tourner autour d'une colline casse la LOS contre ranged (HEURISTIC) |
| **Shrimp Boat** (Pale Rose) | 2 entrées latérales ; pont accessible par rampes ou par la fenêtre | Petite structure à fenêtre ; transition vers le Pale Rose |
| **Basement** (partout) | **Une seule entrée/sortie** ; 4 crochets ; 6 casiers | **Jamais une destination de chase** (cul-de-sac) |
| **Maïs** (Coldwind) | — (non traité par une page lue) | Seed « pas de loop, LOS cassée » : EXPERT OPINION plausible ; contre aura (perks, pouvoirs) : inutile |

Seed « **Coal Tower** : grande tour à hauts murs, se joue comme un shack » : **IMPRÉCIS** — c'est le main building d'une carte (entrepôt à 2 niveaux, 1 fenêtre, 3 drops, 3 murs cassables, 2 palettes dehors : FACT [W]), pas une structure générique jouable « comme un shack ».

### 4.16 « God pallet » : définition et critique du seed

- Définition proposée (HEURISTIC) : palette dont la **loop baissée** reste forte — après le drop, tu la vaultes (1,1 s) et le tueur doit faire un détour **plus long** que « ton trajet × 1,15 + fente » ; il n'a donc qu'un choix rentable : **casser** (2,34 s, Bloodlust à 0). Palettes levées impossibles à contester (il ne peut pas t'atteindre avant le drop) = « safe » ; « god » = safe **et** forte une fois baissée.
- Seed « une god pallet se garde (sauf dernier crochet ou fin de partie) » : **trop absolu** (audit, lot 6 T05). Contre-exemples : la garder coûte un coup (tueur qui coupe) ; tueur à casse instantanée (garder = la perdre sans stun) ; allié en chase qui en aura besoin **plus tard** (SoloQ : tu ne le sais pas) ; tu as déjà une ressource équivalente à côté (inutile de la garder). Règle de remplacement (HEURISTIC) : **on garde une palette forte tant que la garder ne coûte pas d'état de santé et qu'une autre ressource travaille à sa place** (fenêtre, LOS).

---

## 5. Matrice tile × tueur (T-C11) — complément au handbook §3

Le §3 du `KILLER_COUNTERPLAY_HANDBOOK.md` (HEURISTIC, v1) couvre : fenêtres fortes, palettes safe, shack, jungle gym, zones ouvertes, verticalité, intérieur. Ce lot **ne le contredit pas** et ajoute : (5.1) les lignes manquantes, (5.2) la liste corrigée des pouvoirs qui annulent les palettes, (5.3) les perks qui modifient les tiles.

### 5.1 Lignes ajoutées (HEURISTIC ; ↑ = la structure gagne de la valeur pour le survivant, ↓ = en perd)

| Structure | M1 | Anti-loop | Ranged | Mobilité | Furtif | Zone/piège | Info |
|---|---|---|---|---|---|---|---|
| **L-T walls** (2 fenêtres, 0 palette) | ↑ (budget 2 × 3 vaults) | ± ↓ Legion Frenzy, Ghoul, Xenomorph (tiles pincés), Houndmaster (le chien vaulte les fenêtres) ; ↑ Demogorgon, Oni (rien à casser) | ↓ réception de vault prévisible (Huntress, Deathslinger, Trickster) | ↓ Nurse, Blight (pas de palette pour le forcer à casser) | ≈ | ↓ fenêtre piégée (Trapper) | ≈ |
| **4-lane** | ↑ | ± ↓ Demogorgon (Shred dans l'axe d'un couloir) | ↓ tir dans l'axe des couloirs ; ↑ si tu changes de couloir hors LOS | ± | ↓ coins de couloir (Ghost Face, Shape) | ≈ | ≈ |
| **Pallet gym** (0 fenêtre, 1 palette) | ↑ tant que la palette est levée | ↓↓ tout casseur/vaulteur de palette (§5.2) | ± | ↓↓ Nurse, Spirit | ≈ | ↓ si la palette est déjà cassée (zone consommée) | ≈ |
| **Filler** | ≈ (ressource de distance) | ↓ (pre-drop inutile contre casse instantanée) | ↓ palette basse ne bloque pas les projectiles (Huntress, Executioner, handbook) | ↓↓ | ≈ | ≈ | ≈ |
| **Fenêtre à sens unique / drop** | ↑ transition | ± | ↓ réception en hauteur visible | ↓ Ghoul (bonds verticaux) ; ± Nurse (blink d'étage raté = fatigue) | ≈ | ≈ | ≈ |
| **Main à étage avec drops** | ↑ | ± ↑ Mastermind (handbook) | ± ↓ Huntress depuis l'étage | ± ↑ Hillbilly (rampes) ; ↓ Ghoul | ↓ Shape, Ghost Face (coins) | ↓ Hag (réseau dense) | ↓ Doctor (Static Blast) |
| **Murets bas** (Cow Tree, Patio, murs « medium » d'Autohaven) | ↓ (il lit tout) | ± | ↓↓ (tir par-dessus) | ↓ | ↑ (tu le vois aussi) | ≈ | ≈ |

### 5.2 Palettes annulées ou contournées par des pouvoirs (FACT [W Pallets] sauf mention)

| Tueur | Effet sur les palettes | Condition |
|---|---|---|
| Hillbilly, Cannibal | Casse à la tronçonneuse en **1 s** | Pouvoir de base |
| **Shape** | Détruit palettes **et murs cassables** avec Slaughtering Strike | Evil Incarnate (FACT [PN 9.2.0] + [W]) |
| Demogorgon | Détruit en se lançant avec Shred (Of the Abyss) | Pouvoir de base |
| Oni | Demon Dash → Demon Strike détruit la palette | Blood Fury |
| Blight | Lethal Rush contre une palette la casse (9.6.0 : tokens de Rush, audit) | Pouvoir de base |
| Nemesis | Tentacle Strike détruit les palettes visées | Mutation Rate 2+ |
| Knight | Ordre à un Garde de détruire une palette | Pouvoir de base |
| Singularity | Palette baissée sur lui en Overclock = détruite (pas de stun) | Overclock |
| Dark Lord | Bond en forme de loup | Pouvoir de base |
| Executioner | Punishment of the Damned casse la palette | **Add-on Obsidian Goblet** |
| Legion | Vaulte les palettes en Frenzy (de base) ; les **détruit** | Détruire : **add-on Iridescent Button** |
| Mastermind | Vaulte une palette en Virulent Bound (de base) ; la **détruit** | Détruire : **add-on Lab Photo** |
| Ghoul | Vaulte une palette en Kagune Leap (de base) ; la **détruit** au 3e bond consécutif | Détruire : **add-on Iridescent Eye Patch** |
| Good Guy | Vaulte les palettes (liste du wiki) ; les **détruit** en Scamper | Détruire : **add-on Hard Hat** |
| Lich | Mage Hand **bloque** une palette levée (FACT [W Windows, add-on Ring of Telekinesis]) ; **détruit** avec l'add-on | Détruire : **add-on Vorpal Sword** |
| The First | Undergate Attack détruit les palettes | **Add-on Shattered Wrist Rocket** |
| Krasue | Vaulte les palettes (liste du wiki) ; **Head Form ne peut pas casser de palette** | FACT [PN 9.2.0] pour la Head Form |
| Nightmare | Dream Pallets (fausses palettes qui se brisent au drop mais **peuvent** l'étourdir) | Pouvoir |
| Doctor | Palettes illusoires (Madness, add-on « Order ») | Add-on |
| Blocage de palettes levées | Hex: Blood Favour (LIVE : dégâts de tout type → palettes levées à 24/28/32 m bloquées 15 s, déduit du « was » PTB 10.2.0 [PN 559]) ; add-on « Iridescent Remnant » (tueur non vérifié ici) | Perk / add-on |

**Correction pour l'audit et le lot 6 §1.3** (CONFLICT-L7-03) : la liste de l'audit présentait Mastermind et Good Guy comme casseurs **sans** condition ; le wiki exige un add-on pour la **destruction** (Lab Photo, Hard Hat) ; il ajoutait aussi Shape, Executioner, Nemesis, Singularity, The First absents de la liste de l'audit.

Lecture (HEURISTIC) : contre un casseur **de base**, une palette « god » ne vaut que ce que vaut le **stun** (drop sur lui) ; la garder levée pour plus tard n'a de sens que si son pouvoir est en cooldown ou inutilisable à cet endroit. Contre un casseur **par add-on**, identifier l'add-on (lot 5 / handbook) avant de changer ton plan : la plupart des tueurs de la liste ne l'ont pas.

### 5.3 Perks qui modifient les tiles (valeurs LIVE lues ; les versions PTB 10.2.0 ne sont pas utilisées)

| Perk | Effet sur les tiles | Source / statut |
|---|---|---|
| Bamboozle (tueur) | Vault +5/10/15 % ; la fenêtre qu'il vaulte est **bloquée pour tous les survivants** 8/12/16 s ; revaulter réinitialise, vaulter une autre transfère ; aucun effet sur les palettes | FACT [W] |
| Hex: Crowd Control (tueur) | Refonte 9.5.0 : au 1er vault medium/fast d'un survivant, un totem terne s'allume ; les **4/5/6 dernières fenêtres** vaultées (medium/fast) par les survivants sont **bloquées** tant que le Hex tient ; il les vaulte 15 % plus vite et voit leur aura à 24 m | FACT [PN 9.5.0] + [W] = VMS |
| Cruel Limits (tueur) | À chaque générateur terminé : **toutes les fenêtres bloquées** pour les survivants 20/25/30 s | FACT [W] |
| Dissolution (tueur) | Voir §4.6 (valeur LIVE déduite) | FACT [PN 559, « was »] |
| Brutal Strength (tueur) | Casse palettes/murs/gens +10/15/20 % | FACT [W] |
| Zanshin Tactics (tueur) | Aura des palettes et fenêtres à 32 m ; aura du survivant 3/4/5 s quand il baisse une palette | FACT [W] |
| I'm All Ears (tueur) | Aura 8 s d'un survivant qui fait un Rushed Vault à ≤ 48 m ; CD 60/45/30 s | FACT [W] |
| THWACK! (tueur) | Casse de palette/mur → cris + aura à 36 m (jetons) | FACT [W] |
| Wide Open Throttle (survivant, 10.0.1) | Fast vault d'une palette baissée → Haste 10/12,5/15 % 3 s ; la palette est **remise levée**, **bloquée 60 s**, aura visible par tous ; CD 60 s | FACT [PN 10.0.1] |
| Any Means Necessary (survivant) | Relever une palette baissée | FACT [W Pallets] |
| Finesse / Lithe / Quick & Quiet / Cut Loose / Dance With Me (survivant) | Fast vault plus rapide (Finesse +20 % sain) ; Haste après Rushed Vault (Lithe) ; bruit supprimé (Q&Q, Cut Loose) ; griffures supprimées (DWM) | FACT [W Windows] |
| Windows of Opportunity (survivant) | Aura des ressources de chase ; **la page wiki affiche déjà la refonte PTB 10.2.0** (fenêtres seulement, 24 m, vault +10 %) → valeurs LIVE non relues ici | UNCERTAIN (LIVE) |
| Apocalyptic Ingenuity (survivant) | Crée une palette **fragile** (se brise à l'usage mais peut étourdir) | FACT [W Pallets] |

Lecture (HEURISTIC) : Bamboozle et Crowd Control transforment les tiles **à fenêtre seule** (L-T, fenêtres à sens unique) en tiles mortes ; contre elles, les tiles à **palette** gardent leur valeur. Wide Open Throttle transforme un pallet gym en tile réutilisable **une fois** (palette relevée) mais bloquée 60 s : ne pas compter sur un drop immédiat.

---

## 6. Tile connectivity (mission §6, T-D01 à T-D04)

### 6.1 Vocabulaire (définitions HEURISTIC)

| Terme | Définition opérationnelle |
|---|---|
| **Chain loop / tile chaining** | Suite de tiles assez proches pour qu'on passe de l'une à l'autre **sans** traverser de zone morte (au sens §3.1) ; BHVR nomme explicitement ce chaînage comme facteur de sécurité (main de Crotus Prenn « could spawn near maze tiles and chain into other tiles », FACT [PN 9.3.0]) |
| **Transition tile** | Tile qu'on traverse pour gagner quelques mètres sans y rester : L-T walls, fenêtres à sens unique, filler en pre-drop, murs hauts pour casser la LOS |
| **Escape route** | Chemin de sortie d'une tile prévu **avant** d'en avoir besoin, avec sa condition de déclenchement |
| **Resource route** | Chemin qui passe par le plus grand nombre de ressources **non consommées** (palettes levées, fenêtres non bloquées pour toi) |
| **Dead zone** | Relative : ressource suivante au-delà de `D_max` (§3.1) |
| **Zone consommée** | Zone dont les palettes sont cassées / fenêtres bloquées **pour toi** ; en SoloQ, zone dont tu **ne sais pas** si elle a été consommée |
| **Carte mentale** | Ce que tu sais (FIXE) + ce que tu as vu (RNG observé) + ce qui a été consommé |
| **Probabilité de la ressource suivante** | Chance qu'une ressource existe **et** soit encore disponible à l'arrivée (voir 6.5) |

### 6.2 Ce que tu peux savoir avant la chase

| Source d'info | Ce qu'elle donne | Nature |
|---|---|---|
| Connaissance de la carte (lot 8) | Emplacements **généraux** des maze tiles, du shack, du main, des structures de royaume | FIXE (FACT [W Maze Tiles] : « always spawn in the same general location ») |
| Écran de chargement / nom de la carte | Royaume → design des murs (hauteur, §4.0), structures possibles | FIXE |
| Pre-run (premières secondes, trajet vers un gen) | **Itération** de chaque maze tile vue (LW/SW, opened/closed, variante de labyrinthe), palettes présentes, murs cassables déjà ouverts | RNG observé |
| Sons et HUD pendant la partie | Casses de palettes, poursuites des alliés (icônes de HUD) | Partiel ; portée des sons de casse : UNCERTAIN |
| Perks d'aura | Palettes / fenêtres visibles (Windows of Opportunity LIVE : valeur non relue) | Conditionnel |

### 6.3 Planifier 5 à 15 secondes d'avance : la méthode des trois horizons (HEURISTIC)

1. **H1 — maintenant (0-5 s)** : quelle porte j'utilise, où est le tueur (un checkspot **avant** la décision : lot 6 T14), combien de vaults il me reste sur cette fenêtre (3 par poursuite).
2. **H2 — la sortie (5-10 s)** : quel **déclencheur** me fera quitter la tile (fenêtre bloquée pour moi, palette baissée qu'il va casser, tueur qui tient le centre, Bloodlust au palier II) et **par où** je sortirai (côté opposé à lui).
3. **H3 — la destination (10-15 s)** : tile suivante **et** plan B, avec la distance D et l'écart nécessaire (table ci-dessous). Si aucune destination ne passe le test → rester et étirer la tile actuelle (greed prudent), ou partir **pendant** la prochaine animation du tueur.

Le « test des 5 secondes » du seed (« où serai-je dans 5 s, pourra-t-il me toucher là ? ») est une bonne version courte de H1-H2 (lot 6 : OK, HEURISTIC).

**Écart nécessaire au départ pour atteindre une ressource à D mètres** (CALC : `v_r × D / 4,0`, **à quoi s'ajoutent la fente ~2-2,5 m (UNCERTAIN) et une marge pour utiliser la ressource (durée de drop : UNCERTAIN)**) :

| D | 4,6 · BL 0 | 4,6 · BL I | 4,6 · BL II | 4,6 · BL III | 4,4 · BL 0 | 4,4 · BL III |
|---|---|---|---|---|---|---|
| 10 m | 1,5 m | 2,0 m | 2,5 m | 3,0 m | 1,0 m | 2,5 m |
| 15 m | 2,3 m | 3,0 m | 3,8 m | 4,5 m | 1,5 m | 3,8 m |
| 20 m | 3,0 m | 4,0 m | 5,0 m | 6,0 m | 2,0 m | 5,0 m |
| 30 m | 4,5 m | 6,0 m | 7,5 m | 9,0 m | 3,0 m | 7,5 m |
| 40 m | 6,0 m | 8,0 m | 10,0 m | 12,0 m | 4,0 m | 10,0 m |

(Cohérent avec le lot 6 §2.2 : 20 m contre un 4,6 à BL II-III → 5-6 m + fente.)

**Quand partir : les « fenêtres de départ »** (gains du lot 6 §2.3, CALC) :

| Moment | Écart ajouté (ordre de grandeur) | Remarque |
|---|---|---|
| Il casse la palette | ≈ +9,4 m, Bloodlust à 0 | Caméra du tueur basculée vers le bas (FACT [W]) : il ne voit pas **par où** tu pars |
| Stun de palette | ≈ +8 m (+17 m s'il casse ensuite) | Départ + casse = meilleure transition possible |
| Il te suit par la fenêtre | ≈ +4,8 m | Rare : il préfère contourner |
| Coup manqué | ≤ +6 m | Cooldown 1,5 s |
| Coup reçu | ≈ +3 à +15 m (boost 1,8 s) | Coûte un état de santé ; Bloodlust à 0 |
| Il casse un mur cassable | ≈ +9,4 m | Effet sur la Bloodlust : UNCERTAIN |
| Perte de LOS (angle de mur haut) | 0 m, mais il doit **deviner** | Départ discret : la poursuite finit si LOS perdue > 8 s (FACT [W]) |

### 6.4 Checklist de transition (HEURISTIC)

Avant de quitter une tile, cocher :
1. **Direction** : la tile suivante n'est **pas du côté** du tueur (sinon il coupe la route) ; sinon choisir le plan B.
2. **Distance** : l'écart au départ ≥ table 6.3 + fente, pour **ton** palier de Bloodlust estimé.
3. **Terrain** : trajet couvert (murs hauts, dénivelés) contre ranged/mobilité ; ligne droite acceptable contre M1 sans pouvoir.
4. **État de la destination** : ressource vue au pre-run et non consommée (ou probabilité raisonnable, 6.5).
5. **Macro** : ne pas amener la chase sur les gens de tes alliés ni vers un crochet proche d'un gen à finir (seed principe 14, lot 9).
6. **Plan B** : une ressource de secours à portée si la destination est prise (tueur qui coupe, palette cassée entre-temps).

### 6.5 Probabilité de trouver la ressource suivante (HYPOTHESIS, modèle jouet)

- Une destination à **n** ressources indépendantes, chacune déjà consommée avec une probabilité q (inconnue en SoloQ), offre au moins une ressource avec la probabilité `1 − qⁿ` : pour q = 0,5, une tile à 1 palette → 50 % ; un main à 2 palettes + 1 fenêtre (fenêtre jamais « consommée » pour toi si tu ne l'as pas vaultée) → la fenêtre garantit au moins une porte. **Interprétation** : en cas de doute, un main ou une tile à **fenêtre** est une destination plus fiable qu'une tile à palette seule. Modèle non mesuré : q varie selon la phase de partie et le nombre de chases passées.
- En SoloQ : les palettes proches des générateurs très disputés et du shack sont plus souvent consommées (HEURISTIC) ; vérifier à distance (checkspot sur la palette) avant de s'engager.

### 6.6 Trois exemples commentés : « Tile A → Tile B → Main → filler »

Conventions : distances **inventées pour l'exemple** (schémas de principe) ; chiffres de temps et d'écart = CALC (lot 6) ; décisions = HEURISTIC.

#### Exemple 1 — Tueur M1 à 4,6 m/s, survivant sain, carte extérieure à murs hauts

```
                       18 m                         25 m                    15 m
   [A] Jungle gym LW ───────────► [B] L-T walls ─────────────► [MAIN] ─────────────► [F] filler
    W (3 vaults)  P                W1 (3)  W2 (3)               W main (3), 2 P, drop     P
        \                                                         ^
         \______________ 30 m à découvert (dead zone relative) ___/
   Départ de la chase : le tueur te repère à ~8 m de A.
```

| Temps | Situation | Options | Décision (et pourquoi) |
|---|---|---|---|
| 0 s | Tu arrives sur A, 8 m d'avance, BL 0 | (a) boucle fenêtre ; (b) pre-drop P ; (c) filer vers B | **(a)** : avec 8 m, rien ne presse ; (b) gaspille la palette ; (c) consomme de l'avance sans utiliser A |
| ~5-15 s | 2 vaults faits, il suit dehors | Continuer la fenêtre ; garder P levée | **Greed P** tant qu'il suit (T05). Compteur W = 2 : **le 3e vault est ton dernier** avant 30 s de blocage |
| ~15 s | BL I (+0,2). Il arrête de suivre et tient le centre | (a) 3e vault ; (b) aller à P ; (c) partir vers B (18 m) | **(b)** : le 3e vault vers un tueur au centre = réception couverte. À P : drop **quand il s'engage** (stun) ou pre-drop si tu n'as pas la marge |
| Drop | Il casse (2,34 s) | Revaulter P ; partir | **Partir vers B pendant la casse** : +9,4 m, BL à 0 ; D = 18 m demande ≈ 2,7 m + fente contre BL 0 → largement couvert |
| ~25 s | B : 2 fenêtres, 6 vaults potentiels | Serpenter ; tenir B longtemps | Utiliser B comme **transition** : 2-3 vaults pour replacer le tueur **derrière** toi, puis partir quand il coupe par le centre **hors LOS** (seed : correct) |
| Départ vers main | D = 25 m, BL I probable | Partir ; rester | Il faut ≈ 5 m + fente (BL I) : ne partir qu'après une réception de vault qu'il n'a pas couverte ou un coup manqué. **Ne pas** prendre le raccourci de 30 m à découvert depuis A |
| Main | Nouvelle fenêtre (compteur neuf), 2 palettes, drop | Monter ; boucler la main window | Monter **seulement** si le drop est libre ; main window d'abord, palettes en réserve ; les 3 vaults de la main window sont un budget séparé |
| Fin | Main consommé | Filler F (15 m) | F = **pre-drop pour la distance** (ou stun s'il s'engage), puis continuer vers la ressource suivante ; ne pas tourner autour |

Erreur typique : quitter A **après** la casse (il a déjà fini son animation) au lieu de **pendant** ; ou vaulter la 3e fois vers un tueur au centre « parce que la règle dit 2 tours puis palette ».

#### Exemple 2 — Tueur à distance (type Huntress / Deathslinger), survivant blessé

```
   [A] Shack ──12 m (derrière un muret bas) ──► [B] 4-lane (opened) ──20 m (couvert, le long de murs) ──► [MAIN]
                                                                                                          │ 10 m
                                                                                                         [F] filler
   Principe : contre un tueur à distance, la route COUVERTE bat la route COURTE.
```

| Étape | Options | Décision (HEURISTIC, cohérente avec handbook §3 : murs hauts ↑, open ↓↓ contre ranged) |
|---|---|---|
| Shack (A), blessé | Boucle fenêtre ; pre-drop | Les murs hauts du shack coupent ses tirs : **boucler la fenêtre** en coupant la LOS à chaque angle ; ne pas rester dans l'axe des ouvertures |
| Sortie de A | Route directe par le muret bas (12 m) ; route le long du shack puis du 4-lane | Muret bas = tir par-dessus : **ne partir que sur une casse ou hors LOS** ; changer de trajectoire pendant la course (pas de ligne droite prévisible) |
| 4-lane (B) | Couloir de la palette ; couloir de la fenêtre | Ne pas courir **dans l'axe** d'un couloir où il a la ligne : changer de couloir hors LOS ; pre-drop plus tôt (blessé) |
| Vers le main | Route courte en open ; route plus longue couverte | **Couverte**, même 5 m plus longue : en open, la distance ne vaut presque rien contre un tir (lot 6 §2.3, limites) |
| Main | Intérieur, plafond | Handbook : intérieur ↑ contre plusieurs ranged ; attention aux étages (tir depuis le haut) |
| Filler (F) | Pre-drop ; LOS derrière l'objet | Une palette basse **ne bloque pas** une hachette (handbook) : F sert surtout d'**obstacle de LOS** ; un pre-drop ne te protège pas du tir |

Erreur typique : choisir la tile la plus proche à travers une zone ouverte ; courir en ligne droite dans un couloir de 4-lane face au tueur.

#### Exemple 3 — Fin de chase, zone consommée, SoloQ, tueur à mobilité (type Blight) ou M1 à Bloodlust haute

```
   [A] Pallet gym (palette DÉJÀ CASSÉE : zone consommée) ──15 m──► [B] Debris gym (état inconnu)
                                          \                                  │ 20 m
                                           \───── 35 m ─────► [MAIN] ◄──────┘
                                                                 │ 15 m
                                                                [F] filler
```

| Étape | Options | Décision (HEURISTIC) |
|---|---|---|
| A consommée, BL II (+0,4) | Rester sur A ; B (15 m, inconnu) ; main (35 m) | A n'a plus de porte asymétrique → partir. Main à 35 m demande ≈ 8,8 m + fente contre un 4,6 à BL II (CALC) : **irréaliste** sans un coup reçu ou une casse |
| Choix de B | Vérifier la palette de B depuis un checkspot pendant la course | Si la palette de B est **visible levée** → B ; si inconnue → B reste le seul choix atteignable, mais préparer le plan B (sa fenêtre : compteur neuf pour toi) |
| À B | Fenêtre d'abord ; palette | Contre un casseur de base (Blight : Lethal Rush casse la palette), la palette vaut **le stun** : drop sur lui, pas de greed. Contre un M1 à BL II : pre-drop pour **remettre la Bloodlust à 0** quand il casse |
| Vers le main (20 m) | Partir sur la casse ; rester | **Pendant la casse** (+9,4 m, BL 0) : 20 m demandent ≈ 3 m + fente → couvert. Le main offre plusieurs ressources (6.5) : destination la plus probable |
| Main contre mobilité | Étages ; boucles serrées | Handbook : Blight — murs hauts gênent les rebonds (SITUATIONAL) ; boucles courtes à murs hauts plutôt que longues lignes droites |
| Filler final | Pre-drop / stun | Contre un casseur de base, le filler ne vaut qu'un stun ; si pas de stun possible, le garder pour un allié plus tard (ressource d'équipe) |

Erreur typique : aller vers la ressource la plus « forte » (main) à travers une zone morte au lieu de la plus **atteignable** (B) ; greed une palette contre un tueur qui la casse gratuitement.

### 6.7 Exercice « Annonce H3 » (drill, HEURISTIC)

- Objectif : avoir toujours une destination et un plan B.
- Méthode : en chase, annoncer à voix haute (ou mentalement) à l'entrée de chaque tile : « sortie : [déclencheur] ; suivante : [tile] à ~[D] m ; plan B : [tile] ».
- Métriques : % de transitions annoncées ; transitions vers une zone morte ; départs faits **pendant** une animation du tueur.
- Réussite : ≥ 90 % de transitions annoncées et ≥ 50 % des départs sur une animation (casse, stun, vault, coup manqué) sur 10 parties.

