# KILLER COUNTERPLAY HANDBOOK — une fiche rapide par tueur (livrable §51-3)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) — voir kb/audit/pass14_deliverables.md**

- **Version de référence : LIVE 10.1.2a** (hotfix serveur du 17/09/2026, chapitre 41 Chorus of Sin). **État au 27/09/2026.**
- Le **PTB 10.2.0** (15 → 21/09/2026) **n'est pas LIVE** : aucune valeur PTB n'est utilisée comme valeur LIVE. Le mode **2v8** est exclu (jamais utilisé comme valeur 1v4).
- Nœuds de taxonomie couverts : **T-F45** (typologie transversale des tueurs), **T-C11** (matrice tile × archétype, v1 HEURISTIC).
- Sources : consolidation de `kb/research/batch4_killers_g1.md` … `g6.md` (lot 4, 44 tueurs). Ce document **condense** ; le détail, les claims et les conflits sont dans le fichier source cité en bas de chaque fiche.
- Couverture : **44/44 tueurs** (§4). Statut du domaine : **NOT READY** (voir `kb/PROJECT_MANIFEST.md`).

> ## ⚠️ AVERTISSEMENT DE VÉRIFICATION — À LIRE AVANT TOUT USAGE
>
> **Les 6 fiches du lot 4 n'ont bénéficié d'AUCUNE vérification web.** Le quota WebSearch de la session était épuisé (« 200 of 200 WebSearch calls ») avant la première requête de chacun des 6 agents ; WebFetch/curl sont bloqués par la politique réseau.
>
> - **Seules les valeurs issues de l'audit phase 0** (`kb/seed/audit_phase0.txt`, marquées **[AUDIT]**) sont vérifiées, avec la confiance que l'audit leur donne (VERIFIED_PRIMARY, VERIFIED_MULTI_SOURCE ou STRONG_SECONDARY). Elles n'ont pas été re-vérifiées dans le lot 4.
> - **Toutes les autres valeurs chiffrées** (portées, durées, cooldowns, TR, add-ons) viennent du guide seed ou de la mémoire du modèle : elles sont **UNCERTAIN**.
> - **Les TR, vitesses et durées contestés sont listés en §5.** Ne jamais enseigner une valeur de §5 comme un fait.
> - **Aucune analyse de VOD, aucun guide expert** n'a été lu. Tout le counterplay est **HEURISTIC** (raisonnement à partir de la mécanique), sauf mention **EXPERT OPINION (non sourcée)** reprise telle quelle des fichiers g2 et g6.
> - Les effets d'add-ons cités sont **tous UNCERTAIN** (noms et effets repris du seed). Plusieurs tueurs ont été modifiés en 2025-2026 sans que le contenu chiffré ait été lu (voir « Confiance » de chaque fiche).

## Légende

### Étiquettes de nature (mission §21, reprises des fichiers sources)

| Étiquette | Sens dans ce document |
|---|---|
| **FACT** | Mécanique confirmée par l'audit phase 0, **ou** mécanique de base « de principe » connue du modèle (fichiers g1-g3). Dans le second cas, le principe est jugé sûr mais **les détails 2026 restent UNCERTAIN**. La fiche précise laquelle des deux. |
| **HEURISTIC** | Raisonnement de jeu dérivé de la mécanique, non sourcé. **Étiquette par défaut de toute consigne de counterplay sans autre mention.** |
| **EXPERT OPINION** | Uniquement là où la fiche source l'emploie (g2, g6) : consensus communautaire tel que le modèle le connaît, **non sourcé** (pas d'URL, pas de guide lu). Les fichiers g1, g3, g4, g5 ont volontairement refusé cette étiquette. |
| **UNCERTAIN** | Valeur ou mécanique non vérifiée (seed ou mémoire du modèle), ou sources en conflit. |
| SITUATIONAL / HYPOTHESIS | Repris des sources : dépend du contexte indiqué / supposition explicite. |

### Étiquettes d'origine des valeurs

| Tag | Origine | Confiance |
|---|---|---|
| **[AUDIT]** | `kb/seed/audit_phase0.txt` (notes de patch / wiki lus en phase 0) | celle de l'audit (souvent précisée) |
| **[SEED]** | Guide seed `kb/seed/ch8_killers.txt`, **non re-vérifié** (= « seed-NRV », « SEED-NRV », « seed, NON RE-VÉRIFIÉ » dans les sources) | **UNCERTAIN** |
| **[CM]** | Connaissance du modèle antérieure à mi-2026 (= « [MÉM] » g1, « UNCERTAIN-MM » g2, « CM » g6) | **UNCERTAIN** |

Abréviations : TR = terror radius · LOS = ligne de vue · gen = générateur · EI = Evil Incarnate · CD = cooldown · §5 = table des valeurs contestées.

---

## 1. Comment utiliser ce handbook

1. **Avant le reveal** : lire la ligne « Identification » des tueurs compatibles avec ce que tu vois/entends (objets de carte spécifiques, TR absent ou anormal, sons de pouvoir).
2. **Au reveal** : retrouver son archétype en §2, appliquer les principes communs, puis la fiche §4.
3. **Choisir sa tile** : §3 dit quelles structures gagnent ou perdent de la valeur contre cet archétype.
4. **Chiffres** : n'utiliser que les valeurs [AUDIT] comme repères fermes ; tout le reste est un ordre de grandeur UNCERTAIN. Même parmi les [AUDIT], certaines sont STRONG_SECONDARY avec la mention « liste à reconfirmer » (ex. liste des pouvoirs qui détruisent les palettes) : les traiter comme probables, pas comme certaines.
5. **Les consignes sont des HEURISTIC, pas des règles** (audit §26 du 27/09/2026). Chaque « Faire / Ne pas faire » décrit l'option par défaut contre un joueur qui utilise normalement son pouvoir. Un tueur expérimenté **anticipe** l'option par défaut (il attend le pré-drop, il feinte la charge, il attend que tu bouges) : si le tueur exploite visiblement ta réponse habituelle, **varier** (mix-up) vaut mieux que répéter la consigne.
6. **SoloQ vs SWF** : les lignes « Macro/équipe » qui supposent une répartition des rôles (un seul porteur de boîte Cenobite, un « écraseur » de Victor, un sauveteur désigné, un seul survivant aux horloges de The First, annonces de forme/position) exigent la **communication vocale** en SWF. En SoloQ, les appliquer seulement par signaux observables (quelqu'un va déjà vers l'objet → ne pas y aller aussi ; auras via perks comme Kindred ou Empathy) et accepter qu'elles échouent plus souvent.

---

## 2. Typologie transversale (T-F45)

### 2.1 Tableau 44 tueurs × archétypes

- ● = archétype **déclaré dans l'en-tête de la fiche source** (étiquetage des agents du lot 4, HEURISTIC). Le rattachement de libellés proches (« téléportation », « TP », « casiers », « tunnels », « TV » → **Mobilité** ; « fontaines », « patrouilles », « Lament » → **Zone/piège** ; « usure », « Hindered », « gardes », « queue » → **Anti-loop**) est fait ici.
- ○ = rattachement secondaire proposé par ce document (HEURISTIC), à partir du texte de la fiche.
- « Autre » = catégorie déclarée hors des 8 colonnes.

| # | Tueur | M1 | Anti-loop | Ranged | Mobilité | Furtif | Zone/piège | Info | Slug | Autre (déclaré) | Src |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | Trapper | ● | | | | | ● | | | | g1 |
| 2 | Wraith | ● | | | ● | ● | | | | | g1 |
| 3 | Hillbilly | | | | ● | | | | | coup unique (instadown) | g1 |
| 4 | Nurse | | ● (« total ») | | ● (TP) | | | | | | g1 |
| 5 | Shape | ● | | | | ● | | | | coup unique (Slaughtering Strike) | g1 |
| 6 | Hag | | | | ● (TP) | | ● | ● | | | g1 |
| 7 | Doctor | ● | ● | | | | | ● | | | g1 |
| 8 | Huntress | ● | | ● | | | | | | | g2 |
| 9 | Cannibal | ● | ● | | | | | | | insta-down court | g2 |
| 10 | Nightmare | | | | ● (TP) | | ● | ● | | | g2 |
| 11 | Pig | ● | | | | ● | ● (RBT) | | | | g2 |
| 12 | Clown | | ● (Hindered) | | ● (Haste) | | | | | | g2 |
| 13 | Spirit | | | | ● | ● (mindgame) | | | | | g2 |
| 14 | Legion | ● | | | | | | ● (Frenzy) | ● (indirect, Deep Wound) | | g2 |
| 15 | Plague | | | ● (Corrupt Purge) | | | ● (fontaines) | ● | | infection | g2 |
| 16 | Ghost Face | ● | | | | ● | | ● | | | g3 |
| 17 | Demogorgon | | ● | | ● | | | ● | | | g3 |
| 18 | Oni | ● | | | ● | | | | | coup unique (Fury) | g3 |
| 19 | Deathslinger | | ● | ● | | | | | | | g3 |
| 20 | Executioner | | ● | ● | | | ● | | | | g3 |
| 21 | Blight | | ● | | ● | | | | | | g3 |
| 22 | Twins | | ● | | | | ● | | ● | | g3 |
| 23 | Trickster | | ● (usure) | ● | | | | | | | g4 |
| 24 | Nemesis | | ● | | | | ● (zombies) | | | | g4 |
| 25 | Cenobite | | | ● (chaîne) | | | ● (Lament) | | | | g4 |
| 26 | Artist | | | ● (à travers murs) | | | | ● | | | g4 |
| 27 | Onryō | | | | ● (TV) | ● | | | | condamnation (mori) | g4 |
| 28 | Dredge | | | | ● (casiers) | | ● (Nightfall) | ● | | | g4 |
| 29 | Mastermind | | ● | | ● | | | | | infection (usure) | g4 |
| 30 | Knight | | ● (gardes) | | | | ● (patrouilles) | | | | g4 |
| 31 | Skull Merchant | ● (+Haste) | | | | | ● | ● | | | g5 |
| 32 | Singularity | | ● (TP) | ● | ● | | | | | | g5 |
| 33 | Xenomorph | | ● (queue) | | ● (tunnels) | | | ● | | | g5 |
| 34 | Good Guy | | ● (dash, Scamper) | | ● | ● | | | | | g5 |
| 35 | Unknown | | | ● (UVX) | ● | ● | | | | | g5 |
| 36 | Lich | | ● (Mage Hand) | | ● (Fly) | | | ● | | | g5 |
| 37 | Dark Lord | | ● (loup) | ● (Hellfire) | ● (chauve-souris) | | ● (Hellfire) | | | | g5 |
| 38 | Houndmaster | | ● | ● (chien) | | | | ● | ○ (« slug léger », EXPERT OPINION) | | g6 |
| 39 | Ghoul | ● (après marquage) | ● | | ● | | | | | | g6 |
| 40 | Animatronic | | | ● | ● (portes) | ● | | ● | | | g6 |
| 41 | Krasue | | ● | ● | ● | | | | | statut (Leech) | g6 |
| 42 | The First | | ● | | ● | ● (Upside Down) | ● | | | | g6 |
| 43 | Slasher | | ● | ● (pics) | ● | ● | | | | | g6 |
| 44 | Judgment | | | ● | | | ● | | | alternative au crochet (Exile) ; pression de gens passive (Heresy) | g6 |
| | **Total ●** | **12** | **23** | **15** | **24** | **11** | **15** | **14** | **2** (+1 ○) | | |

Lecture (HEURISTIC) : la majorité des tueurs sont **hybrides** (2 à 4 archétypes). Le counterplay d'un tueur se construit donc en **superposant** les principes de ses archétypes, puis en appliquant les exceptions de sa fiche. Beaucoup de tueurs changent d'archétype selon la **phase** (Shape Stalker → EI, Oni avant/pendant Fury, Ghoul avant/après marque, Krasue corps/tête, The First hors/pendant Worldbreaker, Judgment hors/pendant Zealous, Trickster avant/au rang S) : identifier la phase fait partie de l'identification.

### 2.2 Principes de counterplay par archétype

Toutes les lignes de cette section sont **HEURISTIC** (synthèse des sections « Counterplay » et « Adaptations avancées / échecs » des 6 fichiers), sauf mention.

#### M1 (12 tueurs)
- **Principe** : tenir chaque tile le plus longtemps possible ; palettes et fenêtres sont des ressources pleines ; ne pas gaspiller une palette.
- **Pourquoi ça marche** : sans outil anti-loop, il doit casser la palette, tenter un mindgame ou abandonner ; chaque ressource utilisée lui coûte du temps de chase.
- **Quand ça échoue** :
  - Le « M1 » n'est souvent qu'une **phase** : Shape en EI (palette cassée par la charge selon [SEED]), Ghost Face après Marked (tout coup = down), Oni en Fury (palettes cassées instantanément, [AUDIT] STRONG_SECONDARY), Ghoul avant la marque (bonds par-dessus les palettes), Legion en Frenzy (vaulte les palettes), Skull Merchant sous drone (Hindered + Haste), Trapper sur zone déjà piégée.
  - Perks : Bamboozle dévalue les fenêtres (Wraith, Cannibal) ; Spirit Fury / Enduring dévaluent le stun tardif (fiche Slasher).
  - Zones mortes : sans structure à portée, le M1 gagne quand même ; planifier la route avant la chase.

#### Anti-loop (23 tueurs)
- **Principe** : **décider plus tôt**. Quitter la tile, pré-drop, ou garder une distance supérieure à la portée du pouvoir (Doctor : hors portée du choc ; Nemesis : > 6,5 m [SEED]) ; enchaîner les tiles (tile-to-tile).
- **Pourquoi ça marche** : son pouvoir supprime l'avantage du « dernier moment » (Shock Therapy 0,65 s [AUDIT], tentacule, Mage Hand, gaz Hindered, gardes du Knight) ; jouer avant la fenêtre du pouvoir le rend neutre.
- **Quand ça échoue — le pré-drop n'est PAS universel** (point le plus important de cette section). Deux raisons **différentes** de pré-drop existent ; ne pas les confondre :
  - **(a) Pré-drop parce que casser lui coûte** : Blight (depuis 9.6.0, casser une palette au sol ramène ses tokens à 2 sous le max et remet la recharge à 0 %, [AUDIT] VERIFIED_PRIMARY). C'est le seul cas de cette liste où le coût de casse est vérifié.
  - **(b) Pré-drop parce que son pouvoir punit l'attente à la palette** — la palette est souvent perdue (cassée par le pouvoir ou contournée), mais le pré-drop évite le coup : Doctor (Shock Therapy 0,65 s), Cannibal (le balayage punit le drop tardif ; sa casse à la tronçonneuse ne coûte que ~1 s, [AUDIT] STRONG_SECONDARY — casser ne lui « coûte » donc presque rien), Nemesis MR2+, Mastermind (Virulent Bound détruit la palette, [AUDIT] STRONG_SECONDARY, liste à reconfirmer), Lich (Mage Hand disponible ; Mage Hand + Vorpal Sword détruit la palette selon la même liste). Ici, **pré-drop = pré-drop + départ immédiat** vers la tile suivante, pas « pré-drop puis tenir ».
  - **Pré-drop contre-productif** quand casser est gratuit et que le pouvoir ne punit pas davantage le drop tardif : Demogorgon (le Shred casse instantanément une palette pré-lâchée), Ghoul (il saute une palette posée s'il a des tokens), Oni en Fury, Spirit (jeter tôt **puis marcher**, pas tenir).
  - **Contre un joueur qui attend le pré-drop** (il ralentit ou coupe court avant la palette pour la faire tomber gratuitement), le pré-drop systématique devient exploitable : mélanger pré-drop, départ anticipé sans drop et, quand le pouvoir est en recharge, drop « normal ».
  - **Tile-to-tile** échoue sur carte ouverte contre Mastermind et Houndmaster (la distance en open est leur portée idéale) : préférer les zones denses même pauvres en palettes.
  - Tiles serrées : bonnes contre Blight en général, mais un Blight « hug tech » les exploite (SITUATIONAL).
  - Patchs non lus : le changement Knight 10.1.1 « gardes et palettes » [AUDIT] peut invalider les conseils de palette contre lui.

#### Ranged (15 tueurs)
- **Principe** : couper la LOS avec des obstacles **hauts** ; esquiver **latéralement au relâchement**, pas pendant la charge ; ne pas offrir de trajectoire prévisible (sortie de vault, ligne droite, fin de boucle) ; compter les munitions/recharges (Huntress : le « 7 » du seed est une erreur relevée par l'audit, la valeur 5 vient de la mémoire du modèle [CM] ; Deathslinger rechargement ; Trickster 36 lames [AUDIT]).
- **Pourquoi ça marche** : un projectile a besoin d'une trajectoire libre ; la **distance moyenne en open** est sa zone idéale (EXPERT OPINION non sourcée, fiche Huntress).
- **Quand ça échoue** :
  - Projectiles qui **ignorent les murs** ou les contournent : corbeaux de l'Artist (traversent les murs), onde de l'Executioner (traverse palettes, fenêtres, murs), mini-glandes à tête chercheuse et fouet de la Krasue, tir en cloche/rebond de l'Unknown. Contre eux : **changer de direction** et gérer le statut (Swarmed, Tormented, Leech, Weakened) prime sur la LOS.
  - Courbe de trajectoire : Judgment en **Zealous** (courbe 0,6 s, [AUDIT]) → casser la LOS au lieu d'esquiver.
  - Add-ons : Iridescent Head (hachette = down), Trick Blades (ricochet), Mirror of the Creators (rebond), Iridescent Ring of Vlad (tête chercheuse), Access Panel (hache à travers les portes) — tous [SEED] UNCERTAIN.
  - Palette basse : ne bloque pas une hachette ni (UNCERTAIN) un tir du Deathslinger ; **exception** Houndmaster, dont le chien est arrêté par une palette posée ([SEED] + [CM]).

#### Mobilité (24 tueurs)
- **Principe** : rester collé aux obstacles hauts et solides ; ne pas traverser l'open ; utiliser ses fenêtres de récupération (fatigue de la Nurse, recovery du Fly, recharge des tokens Blight/Ghoul, CD de l'Upside Down) pour **se repositionner**, pas pour fuir en ligne droite ; en macro, se disperser et ne pas laisser un 3-gen compact.
- **Pourquoi ça marche** : sa mobilité convertit l'espace ouvert en coups ; un obstacle l'oblige à corriger ou à rater.
- **Quand ça échoue** :
  - Mobilité **qui traverse les obstacles** (blink de la Nurse, phase de la Spirit, Upside Down de The First, Omnipresent Evil du Slasher) : l'obstacle ne suffit plus, il faut casser la LOS au bon moment et lire l'info (husk figé, TR qui se coupe).
  - Mobilité **ancrée sur des objets de la carte** : casiers (Dredge), palettes/fenêtres (Slasher, chauve-souris du Dark Lord), portes (Animatronic), TV (Onryō), pods (Singularity). Une tile riche en ces objets devient un **point d'arrivée** du tueur.
  - Verticalité qui profite au tueur (Ghoul : « un toit n'est pas un refuge »).
  - Casse de palette gratuite pendant la mobilité (Oni, Demogorgon, Blight avec coût, Dark Lord loup) : voir anti-loop.

#### Furtif (11 tueurs)
- **Principe** : **l'absence de TR est une information, pas une sécurité**. Checkspots/caméra réguliers sur les gens ; réparer face aux accès ; révéler le tueur quand le pouvoir le permet (Ghost Face) ; une fois repéré, beaucoup redeviennent des M1 (Pig, Shape Stalker, Wraith en chase).
- **Pourquoi ça marche** : ces tueurs gagnent sur le **premier coup gratuit** ; les priver de la surprise les ramène à un M1.
- **Quand ça échoue** :
  - Cartes sombres/encombrées et intérieurs à coins (Onryō, Ghost Face à Midwich/Hawkins).
  - Add-ons qui suppriment l'alerte sonore : Bone Clapper (Wraith), Apex Muffler (Hillbilly), Prayer Beads (Spirit), Town Watch's Torch (Knight), Iridescent Wheel Handle (Houndmaster), Tombstone Piece (Shape), Iridescent Soteria Chip (The First) — tous [SEED] UNCERTAIN.
  - **Faux signaux** : faux pas de Good Guy, TR d'un leurre de l'Unknown (Iridescent OSS Report), TR de la hache de l'Animatronic (Faz-Coin), TR transféré par Unforeseen.
  - Spine Chill contre Undetectable : efficacité **UNCERTAIN** (non vérifiée).

#### Zone / piège (15 tueurs)
- **Principe** : **son temps de setup est ta ressource**. Ne pas rejouer une zone préparée ; tirer la chase hors de son réseau ; nettoyer (désarmer, effacer, pirater, sceller, verrouiller, retirer la cassette) **pendant qu'il chase ailleurs** ; décider en équipe (Pig : moment de finir un gen ; Cenobite : un seul porteur de boîte).
- **Pourquoi ça marche** : une zone ne rapporte que si un survivant y retourne ; un réseau nettoyé = setup perdu.
- **Quand ça échoue** :
  - Add-ons qui annulent le nettoyage : Iridescent Stone (réarmement, Trapper), Mint Rag (Hag), Iridescent Unpublished Manuscript (Skull Merchant), Iridescent Videotape (Onryō) — [SEED] UNCERTAIN.
  - Cartes favorables à la zone : herbe haute/maïs (Trapper), petites cartes et intérieurs (Hag), intérieurs pleins de casiers (Dredge : trop de casiers à verrouiller).
  - Zones **mobiles** : patrouilles du Knight, traînées de l'Executioner (en chase, accepter parfois le Tormented pour garder la distance, SITUATIONAL).
  - 3-gen défendu (Trapper, Skull Merchant) : en fin de partie, y aller à plusieurs.

#### Info (14 tueurs)
- **Principe** : ne pas **nourrir** son info (ne pas se cacher en casier contre le Dredge ; caméras de l'Animatronic seulement si l'info change une décision ; pas de spam d'objets magiques contre le Lich) ; face à une révélation (Killer Instinct, aura), **bouger** plutôt que se cacher.
- **Pourquoi ça marche** : l'info lui permet des rotations et des arrivées sur gen sans perte de temps ; la couper ralentit sa pression.
- **Quand ça échoue** :
  - Info déclenchée par des actions de base (skill checks et Madness du Doctor, ouverture de coffre contre le Lich, scan des drones, pods du Singularity) : il faut l'accepter et jouer le mouvement.
  - Add-ons d'aura (Scratched Mirror, Advanced Movement Prediction, Shredded Gown, Eyes of Gerhardt) : se cacher ne suffit plus.
  - Perks anti-aura : peu utiles contre un tueur sans aura par défaut (Distortion contre Ghost Face, fiche g3).

#### Slug (2 tueurs + 1 ○)
- **Principe** : kit anti-slug (Unbreakable, Soul Guard, Boon: Exponential selon la fiche Twins) ; ne pas se regrouper autour d'un survivant au sol gardé ; relever quand la garde est neutralisée (écraser Victor) ; mender/soigner le Deep Wound à temps (Legion, Houndmaster).
- **Pourquoi ça marche** : le slug immobilise plusieurs survivants à la fois ; neutraliser le garde rend le relevage gratuit.
- **Quand ça échoue** : Victor gardé en sécurité par un bon joueur ; Iridescent Pendant (écraser Victor = Exposed, [SEED]) ; contre Legion, soigner complètement n'est pas toujours rentable → jouer blessé est normal.

#### Catégories « Autre » (transversales)
- **Coup unique** (Hillbilly, Shape SS, Oni Fury, Cannibal, Ghost Face Marked, Huntress avec Iridescent Head) : une palette tardive devient un pari ; privilégier murs solides et fenêtres ; **être blessé ne protège pas** (un blessé tombe sur n'importe quel coup).
- **Statut / jauge d'usure** (Plague, Mastermind, Krasue, Trickster Laceration, Onryō Condemned, The First tokens, Judgment Heresy) : **gérer la jauge avant le seuil, pas après** (manger le champignon avant le palier, déposer la cassette tôt, laisser redescendre la Laceration, Repent avant de réparer, éviter 4 tokens avant le 2e crochet).

---

## 3. Matrice tile × archétype (T-C11, v1 — **HEURISTIC**)

**Toute la matrice est HEURISTIC** (première version, dérivée des sections « Tiles / structures » des 44 fiches ; aucune donnée de loop du lot 7 n'existe encore). Elle dit si la structure **gagne (↑) ou perd (↓) de la valeur pour le survivant** face à l'archétype ; ≈ = neutre ; ± = dépend du tueur (voir la note de la case).

| Structure | M1 | Anti-loop | Ranged | Mobilité | Furtif | Zone/piège | Info | Slug |
|---|---|---|---|---|---|---|---|---|
| **Fenêtres fortes** | ↑ (Cannibal : il n'a aucun outil contre, sauf Bamboozle) | ± ↑ Demogorgon (le Shred ne franchit pas une fenêtre), Oni (dash ≠ vault), Lich (ressource sûre après Mage Hand) ; ↓ Ghoul (bonds), Xenomorph (queue à travers), Legion Frenzy, Knight avec Iridescent Company Banner | ↓ atterrissage prévisible : Huntress, Deathslinger, Trickster (tir dans l'interstice), Animatronic, Plague (Corrupt Purge par-dessus) | ± ↑ Hillbilly (il boucle en M1) ; ↓ Nurse (inutiles), Slasher (point de Jump Scare), Dark Lord (point de TP chauve-souris) | ≈ ; ↓ Pig (accroupie près d'une fenêtre), Slasher | ↓ fenêtre piégée côté sortie (Trapper), passage obligé piégé (Hag) | ≈ | ↑ Twins (vault qui casse les lignes de bond de Victor) |
| **Palettes safe** | ↑↑ ressource pleine | ↓ cassées gratuitement ou contournées : Demogorgon, Oni Fury, Blight (avec coût de tokens), Nemesis MR2+, Mastermind, Ghoul, gardes du Knight, Lich Mage Hand, Dark Lord loup, Legion Frenzy, Krasue tête (vaulte) ; Good Guy : casse en 1v4 inconnue (§5.2) ; voir §2.2 anti-loop | ± ↓ palette basse ne bloque pas hachette/onde (Huntress, Executioner) ; ↑ Houndmaster (bloque le chien) | ↓ Nurse (inutiles), Spirit (jeter tôt puis marcher), Singularity (palette jetée marqué = perdue), Hillbilly LoPro Chains, The First (lianes/Upside Down) | ± ↓ Onryō démanifestée (pas stunnable), Good Guy (Scamper), Slasher (point d'apparition) ; ↑ Onryō manifestée (SITUATIONAL) | ≈ (Trapper : une palette lâchée reste un obstacle normal) ; ↓ sous un drone de Skull Merchant | ≈ | ≈ |
| **Shack** (murs hauts, fenêtre + palette) | ↑ | ↑ Houndmaster (angles courts), Blight (murs hauts gênent le bump, SITUATIONAL), Oni, Mastermind | ↑ murs hauts qui coupent la LOS (Huntress, Deathslinger, Trickster, Cenobite, Animatronic, Unknown) ; ↓ Artist, Executioner | ↑ Hillbilly, Nurse (obstacle opaque), Ghoul (tile fermé) | ↓ Ghost Face (murs hauts : il stalke hors de ta vue) | ↓ Trapper (tile à entrée unique, côté fenêtre) | ≈ | ≈ |
| **Jungle gym** | ↑ | ± ↑ Houndmaster ; ↓ Nemesis (jungle gyms courts dans sa portée en MR3), Xenomorph (petits tiles pincés) | ± ↑ Huntress, Deathslinger (« jungle gyms fermés ») ; ↓ Trickster (longues fenêtres de JG vues de loin) | ↑ Hillbilly (murs hauts, passages étroits) | ± coins favorables au stalk (Shape, Ghost Face) | ↓ coin de JG piégé (Trapper) | ≈ | ≈ |
| **Zones ouvertes** | ↓ zone morte | ↓ (Houndmaster, Mastermind : l'open est leur portée idéale) | ↓↓ (Huntress, Deathslinger, Trickster, Cenobite, Judgment) | ↓↓ (Hillbilly, Nurse, Oni Fury, Blight, Ghoul, Lich Fly) | ↑ tu le vois venir (Ghost Face révélé, Good Guy, Onryō visible) | ↑ pièges et réseau dispersés (Trapper, Hag faibles sur grandes cartes ouvertes) | ≈ | ↓ bond de Victor (Twins) |
| **Verticalité** (étages, rampes, dénivelés) | ≈ | ± ↑ Mastermind (bâtiments à étages) ; ↓ Ghoul (bonds vers le haut/bas) | ± ↑ Trickster (un dénivelé coupe la LOS) ; ↓ Huntress (snipe depuis les étages), Unknown (tir d'étage, [CM] UNCERTAIN) | ± ↑ Nurse (blink au mauvais étage = fatigue gratuite), Hillbilly (rampes) ; ↓ Ghoul | ≈ | ≈ | ≈ | ≈ |
| **Intérieur** (murs hauts, couloirs, coins) | ≈ | ± ↑ Demogorgon (Shred limité), Knight (tracés gênés), Cannibal (risque de Tantrum) ; ↓ Dredge (casiers), Nemesis à RPD (zombies dans les couloirs) | ± ↑ Huntress, Deathslinger, Trickster, Cenobite, Judgment, Unknown (plafond bas) ; ↓ Executioner (murs fins traversés), Artist (murs ignorés), Houndmaster (longs couloirs) | ± ↑ Hillbilly, Nurse (multi-niveaux), Oni, Mastermind ; ↓ Dredge, Slasher (densité de palettes/fenêtres) | ↓ Ghost Face, Shape, Onryō (coins, zones sombres) | ↓ Hag (réseau dense), Trapper (intérieurs sombres), Doctor (Static Blast couvre beaucoup) | ↓ Doctor (Static Blast) | ↑ Twins (bonds limités) |

Règles de lecture (HEURISTIC) :
- Une case ± signale une **décision tueur-dépendante** : lire la fiche §4 avant de choisir la tile.
- La même structure peut être excellente puis mauvaise contre le **même** tueur selon sa phase (ex. fenêtres contre Judgment hors/pendant Zealous ; palettes contre Onryō manifestée/démanifestée ; boucles longues contre The First hors/pendant Worldbreaker).
- À confronter au lot 7 (loops et tiles, matrice tile × tueur) quand il sera fait.

---

## 4. Fiches rapides (44)

Format fixe. Sauf mention, **chaque consigne est HEURISTIC**. Les chiffres cités reprennent l'étiquette de la fiche source. « Add-ons » : noms et effets **[SEED] UNCERTAIN** dans tous les cas.

### 1. The Trapper — zone/piège · M1
- **Identification avant reveal** : pièges au sol (herbe haute, entrées de tiles, crochets) ; aucun son de pouvoir à distance ; un piège qui change de place = il ramasse/repose.
- **Ce qu'il cherche** : te faire repasser par un point piégé (fenêtre, sortie de palette, coin de jungle gym) ; te pousser en herbe haute ou vers le 3-gen piégé.
- **Faire** : • regarder le sol avant chaque vault/sortie • changer de tile tôt après une pose • privilégier les longues boucles à sol lisible et les chaînes de tiles non piégées.
- **Ne pas faire** : • sprinter en herbe haute par réflexe • vaulter deux fois la même fenêtre • considérer un piège « déjà vu » comme sûr (il a pu être réarmé).
- **Macro/équipe** : désarmer/déplacer les pièges du 3-gen et du crochet **pendant qu'il chase ailleurs** ; décrocher en vérifiant le sol autour du crochet.
- **Add-ons** : Tar Bottle (pièges assombris → éviter herbe et zones sombres) · Iridescent Stone (réarmement → saboter/déplacer plutôt que désarmer) · Honing Stone (libération → mourant selon le seed → attendre un sauveteur).
- **Piège classique** : décrocher sans regarder ses pieds.
- **Confiance** : 4,6 m/s cohérent avec la classe [AUDIT] ; TR 32 m, 2 pièges en main, pose 2,5 s, Haste post-pose 7,5 % [SEED] UNCERTAIN (Haste à vérifier en priorité) ; loi de libération non confirmée.
- **Source** : `kb/research/batch4_killers_g1.md` §1

### 2. The Wraith — furtif · mobilité · M1
- **Identification avant reveal** : cloche à l'occultation/désoccultation ; tueur qui arrive « trop vite » sans TR ; distorsion visuelle, souffle proche.
- **Ce qu'il cherche** : te surprendre sur un gen ; se désocculter hors de ta vue près d'une palette ; t'amener en zone morte où le sursaut suffit.
- **Faire** : • garder la caméra sur lui en boucle • lâcher la palette sur la désoccultation tardive, pas avant • tenir la boucle en cours (en chase, c'est un M1 sans anti-loop).
- **Ne pas faire** : • pré-lâcher par peur de la cloche • courir en ligne droite en open après la désoccultation • « reset » en fuyant loin (il rattrape occulté).
- **Macro/équipe** : quitter le gen dès que la cloche est proche ; pas de duo sur un même gen.
- **Add-ons** : Bone Clapper (cloche inaudible → visuel + perks d'alerte) · Windstorm (→ ne pas partir vers une tile éloignée) · Swift Hunt (→ décider plus tôt).
- **Piège classique** : réparer tête baissée sans perk d'info.
- **Confiance** : 6,0 m/s occulté [SEED] + [CM] UNCERTAIN ; invisibilité > 20 m, sursaut 6,9 m/s, Surprise Attack 5 s [SEED] UNCERTAIN ; lampe/pétard pendant la désoccultation : SITUATIONAL, non vérifié.
- **Source** : `kb/research/batch4_killers_g1.md` §2

### 3. The Hillbilly — mobilité · coup unique
- **Identification avant reveal** : vrombissement de charge audible au-delà du TR, puis sprint très rapide ; arrivée en quelques secondes depuis l'autre bout de la carte.
- **Ce qu'il cherche** : te surprendre en open ou sur un gen isolé ; un curve autour d'un petit obstacle ; un pré-drop qu'il casse vite.
- **Faire** : • au son de la charge, se placer derrière un obstacle solide et haut • esquive perpendiculaire tardive • rester près des tiles hautes (jungle gym, shack, main) et des étages/rampes.
- **Ne pas faire** : • pré-lâcher au son de la charge • courir en ligne droite en open • croire qu'être blessé protège de la tronçonneuse (FAUX : blessé, n'importe quel coup met à terre).
- **Macro/équipe** : ni soin ni réparation en open ; se disperser ; sauvetages rapides (instadown → tunnel facile).
- **Add-ons** : Apex Muffler (charge silencieuse → rester près des obstacles, caméra ouverte) · Tuned Carburettor (→ réagir au premier son) · LoPro Chains (traverse palettes/murs cassables selon le seed → murs solides seulement).
- **Piège classique** : pré-drop au premier vrombissement.
- **Confiance** : casse de palette ~1 s [AUDIT] STRONG_SECONDARY ; down depuis sain (FACT de principe, [CM]) ; **TR 40 vs 32 m et sprint 10,1 vs 8,8 m/s → §5** ; Overdrive [SEED] UNCERTAIN ; la fiche seed Hillbilly est signalée erronée par l'audit (erreurs non détaillées).
- **Source** : `kb/research/batch4_killers_g1.md` §3

### 4. The Nurse — mobilité (téléportation) · anti-loop total
- **Identification avant reveal** : son de charge/souffle ; silhouette qui disparaît et réapparaît ; tueur très lent entre les blinks.
- **Ce qu'il cherche** : une LOS continue ; un trajet prévisible ; un double-back mal timé ; ton arrêt derrière un obstacle.
- **Faire** : • casser la LOS au moment de la charge • changer de direction pendant son 1er blink • utiliser sa fatigue pour se replacer derrière un obstacle haut ou à un autre étage.
- **Ne pas faire** : • lâcher des palettes (quasi sans valeur) • double-back toujours au même moment • rester visible derrière un obstacle bas.
- **Macro/équipe** : chases courtes → gens rapides et dispersion ; contrer les perks d'aura ; éviter les sauvetages risqués.
- **Add-ons** : Matchbox (charge rapide → casser la LOS plus tôt) · Campbell's Last Breath / +blinks (→ compter les blinks, attendre la fatigue) · Ataxic Respiration (portée → se cacher plutôt que fuir).
- **Piège classique** : fuir en ligne droite pendant la fatigue au lieu de se repositionner.
- **Confiance** : 3,85 m/s [AUDIT] STRONG_SECONDARY ; blink traverse tout, pas de vault (FACT de principe, [CM]) ; 2 blinks ~20/12 m, fatigue 2 s + 0,5 s/blink + 1 s si raté [SEED] UNCERTAIN ; Nowhere to Hide 24 m et A Nurse's Calling 28/30/32 m (10.1.0) [AUDIT].
- **Source** : `kb/research/batch4_killers_g1.md` §4

### 5. The Shape — furtif · coup unique · M1
- **Identification avant reveal** : tueur visible sans TR ni lullaby (Stalker), immobile derrière un coin ; puis TR court (Pursuer) ; TR 32 m soudain + agressivité = Evil Incarnate.
- **Ce qu'il cherche** : du stalk gratuit quand tu ne le regardes pas ; en EI, un survivant loin d'un obstacle solide ou une palette pré-lâchée.
- **Faire** : • casser la LOS dès qu'il stalke • en EI, jouer murs solides et fenêtres ; esquiver la Slaughtering Strike latéralement au dernier moment • **tenir les 60 s d'EI**, quitte à céder du terrain.
- **Ne pas faire** : • laisser un tueur sans TR te fixer • pré-lâcher pendant l'EI • te soigner en open / oublier le chrono.
- **Macro/équipe** : réparer pendant qu'il stalke (Stalker lent) ; dispersion en EI ; garder l'Endurance pour le survivant sur son 2e crochet si l'exécution à la main est confirmée (SITUATIONAL).
- **Add-ons** : Judith's Tombstone (EI réinitialisé à chaque crochet → dispersion, gens rapides) · Tombstone Piece (Undetectable à l'activation → surveiller le visuel) · Fragrant Tuft of Hair (Exposed → zéro contact) · Scratched Mirror (auras → bouger).
- **Piège classique** : oublier le chrono de 60 s.
- **Confiance** : EI 60 s, SS 7,5 m/s, CD 4 s, TR 16/32 m (9.2.3) [AUDIT] VERIFIED ; retirée de la boutique le 19/01/2026, jouable par les possesseurs [AUDIT] ; Stalker 4,2 m/s UNCERTAIN ; exécution au 2e crochet [SEED] UNCERTAIN (impact majeur, à vérifier).
- **Source** : `kb/research/batch4_killers_g1.md` §5

### 6. The Hag — zone/piège · téléportation · info
- **Identification avant reveal** : marques de boue au sol (gens, crochets) ; fantôme qui tourne ta caméra et faux TR bref ; tueur qui apparaît instantanément sur un piège.
- **Ce qu'il cherche** : un piège déclenché sur la sortie de ta boucle pour te couper ; t'enfermer dans une zone piégée.
- **Faire** : • crouch en traversant les marques [SEED] • après un déclenchement, repartir immédiatement à l'opposé du piège • tirer la chase hors de son réseau (hors pièges, c'est un M1 à 4,4 m/s).
- **Ne pas faire** : • sprinter sur les marques • rester à côté d'un piège déclenché • sauver en direct sur un crochet piégé.
- **Macro/équipe** : effacer/flasher les pièges près des gens et du crochet ; chercher et casser les totems tôt (build Hex + Undying fréquent selon le seed).
- **Add-ons** : Mint Rag (TP vers tout piège → nettoyer au lieu d'éviter) · Rusty Shackles (aucune alerte → crouch systématique dans son réseau) · Disfigured Ear / Dead Hand (rayon → distance latérale).
- **Piège classique** : ignorer les totems alors qu'on voit des marques.
- **Confiance** : 4,4 m/s cohérent avec la classe [AUDIT] ; **TR 24 vs 32 m → §5** ; 10 pièges, TP ≤ 48 m, faux TR 8 m [SEED] UNCERTAIN ; Hex: Ruin 100/125/150 % [AUDIT] (lié au conflit 9.2.0, §5).
- **Source** : `kb/research/batch4_killers_g1.md` §6

### 7. The Doctor — anti-loop · info · M1
- **Identification avant reveal** : crépitement électrique, skill checks inhabituels, cris involontaires, hallucinations (faux Doctors) ; Static Blast = charge audible puis onde.
- **Ce qu'il cherche** : te choquer juste avant la palette/fenêtre pour bloquer l'action, puis M1 à courte portée.
- **Faire** : • décaler palette et vault hors de la fenêtre de 0,65 s (pré-drop, vault avec avance) • garder une distance supérieure à la portée du choc • casser la LOS (ou casier, [SEED]) au Static Blast.
- **Ne pas faire** : • jouer la palette au dernier moment • réparer/soigner en Madness III dans son TR • ignorer le chrono du Static Blast.
- **Macro/équipe** : réussir les skill checks et redescendre en Madness quand il est loin ; il manque de mobilité → dispersion.
- **Add-ons** : Interview Tape (faisceau étroit et long → sortir de l'axe) · High Stimulus Electrode (+4 m → plus de distance) · « Discipline » – Carter's Notes (délai réduit → pré-drop encore plus tôt).
- **Piège classique** : croire que la marge « je lâche au dernier moment » existe encore (elle a disparu à 0,65 s).
- **Confiance** : Shock Therapy 0,65 s (9.6.1) [AUDIT] VERIFIED ; buff 9.6.0 existant, contenu non lu ; Static Blast 30-45 s, effets de Madness III [SEED] UNCERTAIN ; Coulrophobia 20/25/30 % (10.1.0) [AUDIT].
- **Source** : `kb/research/batch4_killers_g1.md` §7

### 8. The Huntress — ranged · M1
- **Identification avant reveal** : **berceuse fredonnée au lieu du battement de cœur** (FACT de principe, [CM]) ; TR très court ; porte de casier (recharge). Identification **forte mais pas certaine** : d'autres tueurs émettent une berceuse (chauve-souris du Dark Lord [SEED], chien du Houndmaster en Search Command, fiches 37-38) ; confirmer par la silhouette ou une hachette.
- **Ce qu'il cherche** : zones ouvertes, boucles basses, vaults à point d'atterrissage prévisible, blessé qui court en ligne droite.
- **Faire** : • changer de direction **au moment du lâcher**, pas pendant l'armement (EXPERT OPINION non sourcée) • rester collé aux murs hauts, casser la LOS • compter ses lancers (5 de base selon [CM], non vérifié ; des add-ons changent ce nombre) et gagner du terrain quand elle va au casier.
- **Ne pas faire** : • vaulter une fenêtre face à une hachette armée avec LOS • tenir un filler bas ou croire le maïs protecteur (il cache, ne bloque pas) • traverser l'open à distance moyenne (zone la plus dangereuse, EXPERT OPINION non sourcée).
- **Macro/équipe** : soins et unhooks derrière une LOS ; espacer les gens pour la forcer à marcher.
- **Add-ons** : Iridescent Head (hachette = down → zéro exposition, même pour décrocher) · add-ons de capacité (→ ne plus compter les lancers) · vitesse de hachette (→ esquiver plus tôt).
- **Piège classique** : se croire à l'abri dans le maïs.
- **Confiance** : le « 7 hachettes » du seed est une **erreur relevée par l'audit** [AUDIT] ; la valeur **5 de base** vient de la mémoire du modèle [CM] (l'audit ne donne pas le chiffre ; à confirmer, cf. `BATCH_2_4_SYNTHESIS.md` §2.1 n° 6) ; 4,4 m/s, TR 20 m [CM] (confiance forte, non vérifié) ; berceuse 45 m, vitesse de hachette [SEED] NON VÉRIFIABLE.
- **Source** : `kb/research/batch4_killers_g2.md` §8

### 9. The Cannibal — M1 · anti-loop (insta-down court)
- **Identification avant reveal** : TR 32 m ; démarrage de tronçonneuse ; balayages **courts gauche-droite** (≠ sprint long du Hillbilly, FACT) ; Tantrum visible.
- **Ce qu'il cherche** : short loops et fillers, survivant qui garde sa palette, groupes, body-block au crochet.
- **Faire** : • jeter la palette tôt quand il arme près d'une short loop, **puis partir** (sa casse à la tronçonneuse ne prend que ~1 s [AUDIT] : la palette pré-lâchée n'achète que peu de temps) • privilégier fenêtres et longues boucles (EXPERT OPINION non sourcée) • profiter d'un Tantrum pour casser la LOS.
- **Ne pas faire** : • garder la palette « pour le stun » • body-block de face au crochet • vaulter une palette dans une ligne droite ouverte.
- **Macro/équipe** : ne pas réparer à 2-3 sur un gen quand il approche (un sweep peut en mettre plusieurs à terre) ; décrocher en s'appuyant sur l'Endurance basekit [AUDIT].
- **Add-ons** : non vérifiables ; principe : add-on de charge/vitesse → pré-drop plus tôt ; add-on anti-Tantrum → le « sweep dans le mur » ne le punit plus. Bamboozle (perk) → fenêtres dévaluées (SITUATIONAL).
- **Piège classique** : se grouper.
- **Confiance** : buff 9.6.0 [AUDIT] (contenu non lu) ; casse de palette ~1 s [AUDIT] STRONG_SECONDARY ; sweep 5,45 m/s, charges [SEED] NON VÉRIFIABLE ; fiche seed signalée erronée par l'audit ; Knock Out : l'audit le liste parmi les erreurs du seed (sans détail) ; la description du seed ressemble à des valeurs PTB 10.2 (hypothèse du lot 4, non prouvée) et omet l'effet principal (aura du survivant à terre visible seulement à 32/24/16 m, SS, `PERK_DATABASE.md`).
- **Source** : `kb/research/batch4_killers_g2.md` §9

### 10. The Nightmare — zone/piège · mobilité (TP) · info
- **Identification avant reveal** : réveils (alarm clocks) posés dès le début (FACT probable) ; effets d'endormissement ; tic-tac et berceuse du rêve.
- **Ce qu'il cherche** : snares dans les lignes droites, couloirs et fenêtres ; une fausse palette à côté d'une vraie.
- **Faire** : • contourner les snares plutôt que les traverser • jouer les palettes **connues avant la chase** • utiliser les LOS hautes contre ses projectiles (SITUATIONAL).
- **Ne pas faire** : • parier une chase sur une palette « apparue » • rester endormi longtemps sans surveiller • réparer à plusieurs sur le gen visé par sa projection.
- **Macro/équipe** : se réveiller aux réveils quand c'est rentable ; se réveiller mutuellement (EXPERT OPINION non sourcée) ; contre un build de portes, ouverture = décision d'équipe préparée.
- **Add-ons** : non vérifiables ; les noms du seed (Z-Block, Paint Thinner, Black Box, Class Photo, Unicorn Block) sont possiblement obsolètes après le rework 8.5.0.
- **Piège classique** : une palette nouvelle = suspecte.
- **Confiance** : rework 8.5.0 (28/01/2025) [AUDIT], **contenu non lu** → toutes les valeurs du pouvoir (12 %, 4,5 s, 45 s, TP 30 s) UNCERTAIN ; 4,6 m/s, TR 32 m [CM].
- **Source** : `kb/research/batch4_killers_g2.md` §10

### 11. The Pig — furtif · zone/piège (Reverse Bear Traps) · M1
- **Identification avant reveal** : Jigsaw Boxes visibles (probable, [CM]) ; TR intermittent (accroupissements) ; rugissement du dash.
- **Ce qu'il cherche** : un dash à courte portée sur une tile courte ; s'accroupir près d'une fenêtre/d'un coin pour cacher TR et red stain.
- **Faire** : • au rugissement, contourner un coin ou vaulter au bon moment • jouer les tiles moyennes et longues (dash peu rentable, EXPERT OPINION non sourcée) • vérifier les angles morts près des gens après un reset de TR.
- **Ne pas faire** : • quitter la chase pour les boîtes au mauvais moment • ignorer l'absence de TR près d'un gen • **sortir avec un piège actif** (FACT de principe, [CM] : mort ; voir « Confiance »).
- **Macro/équipe** : piège actif → boîtes les plus proches, en annonçant celles fouillées ; décider en équipe du moment de finir un gen quand plusieurs survivants sont piégés.
- **Add-ons** : Rules Set No.2, Crate of Gears, Amanda's Letter (effets non vérifiés) → adapter le rythme de complétion des gens (SITUATIONAL).
- **Piège classique** : plusieurs piégés qui terminent un gen en même temps.
- **Confiance** : buffs 9.1.0 [AUDIT] (contenu non lu) ; 4 RBT, mort en sortie [CM] (confiance forte, non vérifié) ; **TR 24 vs 32 m → §5** ; Spine Chill contre Undetectable UNCERTAIN.
- **Source** : `kb/research/batch4_killers_g2.md` §11

### 12. The Clown — anti-loop (Hindered) · mobilité (Haste)
- **Identification avant reveal** : bruit de bouteilles/verre ; nuages rose ou jaune ; toux des survivants intoxiqués ; recharge audible.
- **Ce qu'il cherche** : du gaz sur la fenêtre ou la palette que tu vises ; une longue ligne droite en Antidote.
- **Faire** : • contourner le gaz rose, ou le traverser au plus court • **utiliser son gaz jaune** (Haste aussi pour toi, FACT) • gagner de la distance pendant sa recharge.
- **Ne pas faire** : • courir dans un nuage rose • tenir une boucle en ligne droite • rester groupés dans le gaz.
- **Macro/équipe** : cibler les tiles à obstacles hauts (ils bloquent les bouteilles) ; éviter les longues lignes droites ouvertes.
- **Add-ons** : non vérifiables (Redhead's Pinkie Finger, Starling Feather…).
- **Piège classique** : tenir la boucle en ligne droite face à l'Antidote.
- **Confiance** : buffs 9.1.0 [AUDIT] (contenu non lu) ; 14 %, 12 %, 6 s, 6 bouteilles [SEED] NON VÉRIFIABLE ; blocage des fast vaults UNCERTAIN ; Coulrophobia 20/25/30 % [AUDIT] ; Pop 20 % au total (9.5.0) [AUDIT] ; cumul Hindered pouvoir + perk atténué par les Diminishing Returns = HYPOTHESIS.
- **Source** : `kb/research/batch4_killers_g2.md` §12

### 13. The Spirit — mobilité · furtif (mindgame)
- **Identification avant reveal** : TR 24 m ; son de départ de phase ; **husk figé** puis réapparition brusque (FACT).
- **Ce qu'il cherche** : un survivant qui court (scratch marks) et qui gémit (blessé) ; un survivant qui garde sa palette « pour le stun ».
- **Faire** : • regarder le husk : figé = phase probable (EXPERT OPINION) • marcher ou s'arrêter quand elle phase près de toi (EXPERT OPINION) • jeter la palette tôt puis marcher (EXPERT OPINION non sourcée).
- **Limite (audit §26)** : « marcher / s'arrêter » est un **mix-up**, pas une règle. Une Spirit qui attend la fin de ta pause, écoute tes pas ou gémissements, ou feinte la phase (husk qui bouge) gagne du temps à chaque arrêt systématique. Alterner arrêt, marche et course selon ce qu'elle a fait au mix-up précédent ; s'arrêter longtemps en étant blessé est le pire cas (gémissements).
- **Ne pas faire** : • courir en ligne droite quand elle phase • deviner au hasard • tenir la même palette plusieurs fois.
- **Macro/équipe** : quitter la tile pendant son cooldown ; Iron Will / perks anti-scratch utiles sans garantie (SITUATIONAL).
- **Add-ons** : son de phase absent → add-on silencieux probable (Prayer Beads Bracelet, effet non vérifié) → jouer les pauses et la marche.
- **Piège classique** : garder la palette « pour le stun ».
- **Confiance** : 4,4 m/s, TR 24 m [CM] (confiance forte, non vérifié) ; phase ~7,04 m/s, CD 15 s [SEED] UNCERTAIN ; **phasing passif → §5** ; fiche seed Spirit signalée erronée par l'audit.
- **Source** : `kb/research/batch4_killers_g2.md` §13

### 14. The Legion — M1 · info (Frenzy) · slug indirect (Deep Wound)
- **Identification avant reveal** : cris de Frenzy ; Killer Instinct ; Legion qui vaulte les palettes (FACT).
- **Ce qu'il cherche** : blesser plusieurs survivants, puis enchaîner avec un M1.
- **Faire** : • casser la LOS pendant sa fatigue de fin de Frenzy (FACT sur la fatigue) • chercher le vrai stun **hors** Frenzy • mender le Deep Wound au bon moment.
- **Ne pas faire** : • compter sur une palette debout en Frenzy • se soigner à côté d'un gen occupé à plusieurs • laisser expirer le Deep Wound.
- **Macro/équipe** : ne pas rester groupés ; jouer blessé est normal contre lui, un soin complet n'est pas toujours rentable.
- **Add-ons** : non vérifiables ; l'audit liste « Legion (Frenzy + add-on) » parmi les pouvoirs qui détruisent les palettes ([AUDIT] STRONG_SECONDARY, liste à reconfirmer ; add-on nommé Iridescent Button par le seed, UNCERTAIN) → palettes debout non fiables en Frenzy avec cet add-on.
- **Piège classique** : ignorer le Killer Instinct.
- **Confiance** : aucune valeur vérifiée ; **« 5e Feral Slash met à terre » → §5** ; désactivation/réactivation 9.6.0 absente de l'audit ; Frenzy 5,2/6,16 m/s NON VÉRIFIABLE.
- **Source** : `kb/research/batch4_killers_g2.md` §14

### 15. The Plague — ranged (Corrupt Purge) · info/zone (fontaines) · infection
- **Identification avant reveal** : fontaines (Pools of Devotion) sur la carte (FACT probable) ; bruit de vomissement ; toux des survivants ; objets infectés.
- **Ce qu'il cherche** : en Corrupt Purge, des tirs en fin de boucle, par-dessus palettes et fenêtres ; des survivants blessés en permanence.
- **Faire** : • en Corrupt Purge, jouer LOS et murs hauts • choisir **quand et où** purifier (loin d'elle) • accepter de jouer Broken si l'équipe est coordonnée.
- **Ne pas faire** : • purifier par réflexe, surtout en rafale (chaque fontaine purifiée devient une arme, EXPERT OPINION) • se soigner au lieu de réparer • toucher des objets infectés en étant sain [SEED].
- **Macro/équipe** : 100 % Broken la prive de Corrupt Purge mais rend tout le monde vulnérable à un coup : compromis, pas règle (SITUATIONAL).
- **Add-ons** : non vérifiables (Iridescent Seal, Worship Tablet, Black Incense, Limestone Seal).
- **Piège classique** : appliquer « soignez vite contre Plague » comme règle absolue (erreur du seed relevée par l'audit).
- **Confiance** : aucune valeur vérifiée ; portée ~13 m, infection 40 s, Corrupt Purge 60 s [SEED] NON VÉRIFIABLE ; fin de Corrupt Purge sur stun UNCERTAIN.
- **Source** : `kb/research/batch4_killers_g2.md` §15

### 16. The Ghost Face — furtif · M1 · info
- **Identification avant reveal** : ni TR ni red stain en Night Shroud (FACT) ; corbeaux qui s'envolent, Spine Chill sans TR ; silhouette penchée derrière un coin.
- **Ce qu'il cherche** : te faire tourner autour d'une tile opaque pendant qu'il stalke en se penchant → Marked (Exposed) → un M1 = down.
- **Faire** : • le **révéler** dès qu'il apparaît (casse le pouvoir, FACT de principe) • casser la LOS vers ses angles de lean • une fois Marked, pré-drop plus tôt, pas de mindgame serré.
- **Ne pas faire** : • réparer/soigner longtemps sans tourner la caméra • décrocher « à l'aveugle » • croire qu'il est loin parce qu'il n'y a pas de TR.
- **Macro/équipe** : réparer face aux accès probables ; annoncer sa position (SWF) ; un coéquipier qui regarde vers toi peut le révéler.
- **Add-ons** : NON VÉRIFIABLE (Walleye's Matchbook, Cinch Straps, « Ghost Face Caught on Tape », Driver's License) ; règle : Marked révélés ou recharge quasi nulle → rejoindre une tile forte au lieu de se cacher.
- **Piège classique** : TR absent = tueur absent.
- **Confiance** : accroupi 4,0 m/s (9.6.1) [AUDIT] VERIFIED_PRIMARY ; buff 9.6.0 (détail inconnu) [AUDIT] ; TR 24 m, Exposed 60 s, recharge 15 s (17 avant) [SEED] UNCERTAIN.
- **Source** : `kb/research/batch4_killers_g3.md` §16

### 17. The Demogorgon — mobilité · anti-loop · info
- **Identification avant reveal** : TR 32 m ; portails ; son d'émergence ; posture de charge du Shred.
- **Ce qu'il cherche** : un Shred en ligne droite, ou sur une palette pré-lâchée qu'il détruit sans perte de temps.
- **Faire** : • pendant la charge du Shred (il ralentit), prendre de la distance ou couper la ligne ; changer de direction à la détente • rester collé aux obstacles hauts ; fenêtres (le Shred ne les franchit pas) • lâcher la palette quand il est engagé dans une animation.
- **Ne pas faire** : • pré-drop systématique (Shred = casse instantanée) • courir en ligne droite en open • réparer près d'un portail actif sans surveillance.
- **Macro/équipe** : sceller les portails proches des gens clés (priorité 3-gen) ; après sa disparition, vérifier les abords du gen (12 s d'Undetectable).
- **Add-ons** : NON VÉRIFIABLE ; sortie silencieuse (Red Moss) → surveiller visuellement ; + portails (Lifeguard Whistle) → prioriser le sceau.
- **Piège classique** : croire qu'un tueur « disparu » est parti loin.
- **Confiance** : Shred 19 m/s et Undetectable 12 s en sortie de portail (9.6.0) [AUDIT] VERIFIED_PRIMARY ; Shred casse les palettes instantanément [AUDIT] STRONG_SECONDARY ; rotation « doublée », 6/8 portails, scellement 12 s [SEED] UNCERTAIN.
- **Source** : `kb/research/batch4_killers_g3.md` §17

### 18. The Oni — M1 · mobilité · coup unique (Fury)
- **Identification avant reveal** : TR 32 m ; M1 standard avant la Fury ; activation = cri et musique de chase changée ; bruit de dash caractéristique.
- **Ce qu'il cherche** : blesser vite (orbes), puis une Fury en terrain ouvert où aucune tile ne protège.
- **Faire** : • en Fury, forcer le dash à tourner derrière un mur haut, virage au dernier moment • attendre qu'il s'engage avant de changer de direction • viser un groupe de LOS blockers et des fenêtres (dash ≠ vault).
- **Ne pas faire** : • pré-drop pendant la Fury (palette cassée instantanément) • fuir en ligne droite en open • rester blessé longtemps (orbes).
- **Macro/équipe** : se soigner quand c'est sûr (SITUATIONAL) ; se disperser au démarrage de la Fury ; anticiper la Fury (plusieurs blessés, crochet récent).
- **Add-ons** : NON VÉRIFIABLE ; durée (Lion Fang) → tenir la LOS au lieu de chercher une palette ; aura sur orbes/blessés → pas de cachette.
- **Piège classique** : sous-estimer la portée de la Fury depuis un gen éloigné.
- **Confiance** : buffs 9.1.0 (existence) [AUDIT] ; Blood Fury casse les palettes instantanément [AUDIT] STRONG_SECONDARY ; Fury ~45 s, 5 orbes/crochet, dash ~7,8 m/s [SEED] UNCERTAIN ; Iron Will contre les orbes : probablement sans effet, UNCERTAIN.
- **Source** : `kb/research/batch4_killers_g3.md` §18

### 19. The Deathslinger — ranged · anti-loop
- **Identification avant reveal** : 4,4 m/s ; TR 32 m ; bruit de visée/tir ; cliquetis de rechargement.
- **Ce qu'il cherche** : une ligne droite ou une sortie de vault où tu ne peux pas tourner.
- **Faire** : • quand il vise, casser la ligne par un virage vers un obstacle • harponné, tirer la chaîne autour d'un obstacle pour la casser (FACT de principe) • enchaîner des tiles serrées plutôt qu'une grosse tile isolée par de l'open.
- **Ne pas faire** : • vault « automatique » vers l'open • zigzag régulier et prévisible en open • croire qu'une palette lâchée protège d'un tir (UNCERTAIN).
- **Macro/équipe** : le faire tirer dans le vide puis gagner une tile pendant la recharge ; soigner le Deep Wound.
- **Add-ons** : NON VÉRIFIABLE ; harpon qui rend Exposed (Iridescent Coin selon le seed) → casser la chaîne à tout prix.
- **Piège classique** : vaulter vers une sortie non couverte.
- **Confiance** : aucune valeur vérifiée ; 4,4 m/s [SEED] + [CM] UNCERTAIN ; 18 m, 40 m/s, 2,6 s, 2,7 s [SEED] NON VÉRIFIABLE.
- **Source** : `kb/research/batch4_killers_g3.md` §19

### 20. The Executioner — ranged · zone · anti-loop
- **Identification avant reveal** : TR 32 m ; traînées rouges au sol (Torment Trails) ; bruit de l'onde ; cages loin de lui.
- **Ce qu'il cherche** : te fixer derrière une palette, une fenêtre ou un mur fin, puis lancer l'onde **à travers**.
- **Faire** : • bouger latéralement par rapport à son axe au lancer • jouer tiles longues, murs épais, distance latérale • changer de tile tôt s'il trace toutes les tiles.
- **Ne pas faire** : • rester aligné derrière une palette (l'onde traverse) • traverser les traînées debout sans nécessité (accroupi = pas de Tormented, FACT) • ignorer une cage.
- **Macro/équipe** : sauver vite les cages, surtout celles des survivants proches de Final Judgement ; désigner le sauveteur le plus proche.
- **Add-ons** : NON VÉRIFIABLE ; onde qui casse les palettes (Obsidian Goblet selon le seed) → ne plus lâcher de palette pour le bloquer, filer.
- **Piège classique** : croire que fenêtres et palettes bloquent l'onde.
- **Confiance** : buffs 9.1.0 (existence) [AUDIT] ; portée ~10 m, 2 charges, 2,25 s [SEED] UNCERTAIN ; **Final Judgement « au 2e hameçon » → §5** ; Nowhere to Hide 24 m LIVE [AUDIT].
- **Source** : `kb/research/batch4_killers_g3.md` §20

### 21. The Blight — mobilité · anti-loop
- **Identification avant reveal** : 4,4 m/s ; sons de Rush/Slam très reconnaissables ; déplacements en rebonds sur les murs.
- **Ce qu'il cherche** : un Lethal Rush en ligne droite ou via un bump sur l'obstacle de ta tile.
- **Faire** : • tourner au dernier moment face au Lethal Rush • après un Rush raté, repartir à l'opposé pendant sa fatigue • **pré-drop le plus souvent rentable** : depuis 9.6.0 la casse lui coûte des tokens [AUDIT]. Limites (HEURISTIC) : il peut **ne pas casser** et contourner la palette, qui devient un simple mur, et chaque pré-drop consomme une palette de la carte ; sans tokens (fatigue, recharge), un drop normal suffit.
- **Ne pas faire** : • ligne droite en open quand il a des tokens • attendre derrière une palette debout « pour le mindgame » • appliquer le counterplay d'avant 9.6.0 (éviter le pré-drop).
- **Macro/équipe** : compter ses Rushes au son ; ne pas laisser un 3-gen compact ; les gens éloignés sont moins sûrs.
- **Add-ons** : NON VÉRIFIABLE ; + tokens (Compound Thirty-Three, Adrenaline Vial) → ne plus compter sur l'épuisement des Rushes ; Rush rapide en ligne droite → encore plus près des obstacles.
- **Piège classique** : contre un Blight « hug tech », croire que les tiles serrées suffisent (SITUATIONAL).
- **Confiance** : 4,4 m/s et casse de palette → tokens à 2 sous le max + recharge à 0 % (9.6.0) [AUDIT] VERIFIED_PRIMARY ; **TR 40 vs 32 m → §5** ; 5 tokens, Rush 9,2 m/s, fatigue 2,5 s [SEED] UNCERTAIN.
- **Source** : `kb/research/batch4_killers_g3.md` §21

### 22. The Twins — slug · anti-loop · zone
- **Identification avant reveal** : TR de Charlotte ; cris et rires aigus de Victor ; Charlotte immobile quand elle contrôle Victor.
- **Ce qu'il cherche** : Charlotte blesse, Victor finit ; Victor posé sur un slug ou un crochet pour bloquer la revive.
- **Faire** : • esquiver le bond (changer de direction pendant la charge), puis écraser Victor s'il est vulnérable • tiles avec vault et obstacles qui cassent ses lignes de bond • contre Charlotte seule, loops standard sans quitter les LOS blockers.
- **Ne pas faire** : • approcher un slug gardé sans pouvoir écraser Victor • faire une chase en étant Broken (Victor accroché) • ignorer la position de Charlotte.
- **Macro/équipe** : kit anti-slug (Unbreakable, Soul Guard, Boon: Exponential) ; Charlotte immobile = fenêtre pour les gens loin d'elle ; un « écraseur » dédié pendant la revive.
- **Add-ons** : NON VÉRIFIABLE ; écraser Victor = Exposed (Iridescent Pendant selon le seed) → n'écraser qu'en sécurité.
- **Piège classique** : croire que Victor ne peut pas lancer de chase (faux depuis 9.0.0).
- **Confiance** : Victor peut déclencher des chases (9.0.0) [AUDIT] VERIFIED ; Charlotte 4,6 m/s, Victor 6,0 m/s, timings [SEED] UNCERTAIN ; tier C vs top kill rate → §5.
- **Source** : `kb/research/batch4_killers_g3.md` §22

### 23. The Trickster — ranged · anti-loop (usure)
- **Identification avant reveal** : TR court (24 m) pour un tueur non furtif, vitesse 110 % ; pluie de lames ; barre de Laceration ; au rang S, notification globale et TR 44 m.
- **Ce qu'il cherche** : longues lignes droites et zones ouvertes ; un vault de fenêtre face à lui (tir dans l'interstice).
- **Faire** : • couper la LOS très souvent (tiles à murs hauts, main building) • strafes latéraux larges plutôt que petits zigzags • préférer les palettes posées tôt aux fenêtres quand il est chargé.
- **Ne pas faire** : • traverser l'open avec une Laceration à 3+ • vaulter une fenêtre face à lui à distance moyenne • ignorer ta barre de Laceration.
- **Macro/équipe** : laisser redescendre la Laceration (16 s sans touche) avant de reprendre un risque ; au rang S, s'écarter, éviter l'unhook groupé, jouer la montre.
- **Add-ons** : Iridescent Photocard → quitter le gen au rang S · Death Throes Compilation → la fin du Main Event n'est pas une sécurité · Trick Blades (ricochet) → murs perpendiculaires à sa LOS (effets post-rework possiblement changés).
- **Piège classique** : se regrouper sur un gen à la notification de rang S (ou oublier qu'il peut garder le rang S pour l'endgame).
- **Confiance** : rework 9.5.0 + buffs 9.5.2 ; 4,4 m/s, TR 24 m / 44 m au rang S, 36 lames, Main Event au rang max, décroissance après 16 s [AUDIT] STRONG_SECONDARY ; rang S 66 s, ×1,67, −1 charge / 4,4 s [SEED] UNCERTAIN ; No Way Out → §5.
- **Source** : `kb/research/batch4_killers_g4.md` §23

### 24. The Nemesis — anti-loop · zone (zombies)
- **Identification avant reveal** : TR 32 m, grand ; zombies errants (identification quasi immédiate) ; murs/palettes détruits à distance = au moins MR2.
- **Ce qu'il cherche** : un survivant contaminé à 5-6,5 m derrière une palette basse ou une fenêtre ; un drop tardif ; une boucle courte.
- **Faire** : • strafe latéral au son de charge du tentacule • garder une distance supérieure à la portée du tentacule (6,5 m selon le seed, [SEED] UNCERTAIN : ordre de grandeur, pas une marge exacte), tiles longues et murs hauts • dès MR2, pré-drop et départ vers la tile suivante (SITUATIONAL).
- **Ne pas faire** : • rester à 4-5 m en ligne droite en se croyant hors portée • drop tardif contre MR2+ • réparer sans surveiller le zombie.
- **Macro/équipe** : vaccin quand il est loin ou occupé, sans le gaspiller en début de partie ; ne pas laisser les zombies bloquer un gen.
- **Add-ons** : Marvin's Blood / T-Virus Sample → MR2 acquis très tôt · Shattered S.T.A.R.S. Badge → surveiller les zombies en fin de partie · Iridescent Umbrella Badge (Exposed après vaccin) → vaccin hors chase.
- **Piège classique** : boucler une petite tile contre un MR3 (échoue presque toujours).
- **Confiance** : aucune valeur de pouvoir vérifiée ; tentacule 5/6,5 m, CD 2,25 s, MR2 5 pts / MR3 15 pts [SEED] UNCERTAIN ; **Eruption 10 % vs 5 % → §5 (non tranché)**.
- **Source** : `kb/research/batch4_killers_g4.md` §24

### 25. The Cenobite — ranged (chaîne pilotée) · zone (Lament Configuration)
- **Identification avant reveal** : TR 32 m, grand ; **la boîte (Lament Configuration) sur la carte** (indice sans ambiguïté) ; bruit de chaîne, portail lumineux.
- **Ce qu'il cherche** : un survivant à découvert entre deux tiles ; un vault imminent (chaîne = vault bloqué selon le seed).
- **Faire** : • casser la LOS vers le portail • longer le décor (la chaîne casse au contact des obstacles, [SEED]) • vaulter tôt ou changer de tile avant qu'il ait la trajectoire.
- **Ne pas faire** : • traverser un champ ouvert à 10-16 m de lui • te faire enchaîner juste avant un vault • résoudre la boîte près du tueur (téléportation, [SEED]).
- **Macro/équipe** : **un seul** survivant gère la boîte, loin du tueur, et la résout avant le Chain Hunt ; en endgame, prévoir le blocage des portes après retrait des chaînes (SITUATIONAL).
- **Add-ons** : Frank's Heart / Larry's Blood (portée) → 16 m n'est plus sûr · Torture Pillar → attribuer la boîte dès son apparition · Chatterer's Tooth → porteur approché sans TR.
- **Piège classique** : ignorer la boîte jusqu'au Chain Hunt, ou deux survivants qui se la disputent.
- **Confiance** : perks renommées en 9.0.0 (Deadlock → No Holds Barred, Plaything → Fortune's Fool, Gift of Pain → Weeping Wounds) [AUDIT] STRONG_SECONDARY ; Gateway 16 m, Chain Hunt 90 s, retrait 1 s, blocage 5 s [SEED] UNCERTAIN.
- **Source** : `kb/research/batch4_killers_g4.md` §25

### 26. The Artist — ranged (à travers les murs) · info
- **Identification avant reveal** : corbeaux sombres posés près des gens/totems ; cri de corbeau lancé ; statut Swarmed.
- **Ce qu'il cherche** : un survivant déjà Swarmed (2e corbeau = blessure, même derrière un mur) ; une sortie de tile prévisible ; un vault en fin de boucle.
- **Faire** : • strafe latéral net au dernier moment • changer souvent de direction (le corbeau va en ligne droite) ; bâtiments à plusieurs sorties • retirer l'essaim dès qu'elle n'est pas proche (ou casier, [SEED]).
- **Ne pas faire** : • se croire à l'abri derrière un mur • réparer en étant Swarmed • courir tout droit vers la tile suivante quand elle a un corbeau prêt.
- **Macro/équipe** : répartir les gens pour qu'un corbeau n'en couvre pas deux ; ne pas s'approcher d'un coéquipier Swarmed en chase (SITUATIONAL).
- **Add-ons** : Severed Hands (propagation) → pas de gen/soin à deux si quelqu'un est Swarmed · Iridescent Feather → approche silencieuse après une volée · vitesse de corbeau → strafer plus tôt.
- **Piège classique** : appliquer le counterplay « LOS » habituel des ranged (il échoue ici).
- **Confiance** : 3 corbeaux, retrait 8 s, recharge ~5/12 s [SEED] UNCERTAIN ; les murs protègent-ils ? contradiction interne du seed → §5 ; Hex: Pentimento : totems ravivés non bénissables [AUDIT] STRONG_SECONDARY.
- **Source** : `kb/research/batch4_killers_g4.md` §26

### 27. The Onryō — furtif · mobilité (TV) · condamnation (mori)
- **Identification avant reveal** : pas de TR en approche démanifestée ; scintillement de silhouette ; TV qui grésillent/s'allument ; Condemned qui monte près d'une TV.
- **Ce qu'il cherche** : un jumpscare sur un survivant qui ne regarde pas derrière lui ; des vaults « sans palette » ; des survivants à 5-6 stacks.
- **Faire** : • checkspots réguliers derrière soi • jouer les palettes quand elle est **manifestée** (stun-able selon le seed, SITUATIONAL) • surveiller ta barre de Condemned.
- **Ne pas faire** : • réparer dos à la zone d'arrivée ou près d'une TV allumée quand elle se projette • garder une cassette trop longtemps • oublier le Condemned en endgame (mori).
- **Macro/équipe** : déposer vite la cassette dans une TV **éloignée** ; retirer les cassettes des TV proches des gens à 3 ; partager le travail des cassettes.
- **Add-ons** : Tape Editing Deck → déposer immédiatement, loin · Ring Drawing → pas de cassette en chase · Iridescent Videotape → gens prioritaires, cassettes secondaires.
- **Piège classique** : « pas de TR = pas de tueur ».
- **Confiance** : **TR 24 vs 32 m → §5** ; 7 stacks = mori, −3 stacks par cassette, rayon 16 m [SEED] UNCERTAIN ; Call of Brine 30/40/50 % pendant 90 s (10.1.0) [AUDIT] STRONG_SECONDARY.
- **Source** : `kb/research/batch4_killers_g4.md` §27

### 28. The Dredge — mobilité (casiers) · zone (Nightfall) · info
- **Identification avant reveal** : grand, TR 32 m ; casiers qui claquent ; jauge Nightfall ; Remnant (silhouette) laissé sur la carte.
- **Ce qu'il cherche** : des boucles près de casiers ; son Remnant pour couper une rotation ; une chase pendant Nightfall.
- **Faire** : • ne pas se placer entre le Remnant et lui • finir la chase loin des casiers non verrouillés (tiles extérieures) • pendant Nightfall, rester près de tiles solides.
- **Ne pas faire** : • se cacher en casier (remplit la jauge, [SEED]) • rester blessés à plusieurs • réparer à côté d'un casier non verrouillé.
- **Macro/équipe** : verrouiller les casiers proches des gens et des crochets ; pas de sauvetage risqué en plein Nightfall ; si Nightfall en endgame, se rapprocher des portes avant.
- **Add-ons** : Field Recorder → dernier gen avec tout le monde sain près des portes · Lavalier Microphone → s'attendre à être révélé après ses TP · Iridescent Wooden Plank → éviter la chase en fin de Nightfall.
- **Piège classique** : compter sur le verrouillage sur une carte intérieure pleine de casiers.
- **Confiance** : buff 9.6.0 [AUDIT] (contenu non lu) ; Nightfall 60 s, 3 tokens, verrou 2,25 s [SEED] UNCERTAIN ; modification de Dissolution annoncée pour le **PTB 10.2.0** par le seed seulement (« oui? » dans `PERK_DATABASE.md`, non vérifié), non LIVE.
- **Source** : `kb/research/batch4_killers_g4.md` §28

### 29. The Mastermind — mobilité · anti-loop · infection (usure)
- **Identification avant reveal** : bruit de charge du bond ; caisses de sprays sur la carte ; icône d'infection Uroboros.
- **Ce qu'il cherche** : couloirs et open (élan), fenêtres vaultées sans avance, survivants près d'un mur (projection).
- **Faire** : • au son de charge, demi-tour ou strafe serré ; forcer le bond contre un obstacle • tiles serrées et coudées, bâtiments à étages • pré-drop puis partir (la palette est franchie ou cassée par le bond).
- **Ne pas faire** : • réagir au 1er bond comme s'il était l'attaque • courir en ligne droite entre deux tiles ou avec un mur dans le dos en open • tenir une palette « safe » comme contre un M1.
- **Macro/équipe** : sprays avant 100 si le Hindered est confirmé (SITUATIONAL) ; ne pas se soigner de l'infection quand il est proche ; ne pas se regrouper sur les sprays.
- **Add-ons** : Iridescent Uroboros Vial → gérer l'infection dès le début · Dark Sunglasses → l'infection complète d'un coéquipier signale une approche Undetectable · Loose Crank → distances de sécurité plus grandes.
- **Piège classique** : « tile-to-tile » sur une carte ouverte.
- **Confiance** : buff 9.6.0 [AUDIT] (contenu non lu) ; casse de palette par Virulent Bound [AUDIT] STRONG_SECONDARY (liste à reconfirmer) ; **TR 40 vs 32 m → §5** ; bonds ~7/14 m, Hindered 4 % [SEED] UNCERTAIN.
- **Source** : `kb/research/batch4_killers_g4.md` §29

### 30. The Knight — anti-loop (gardes) · zone (patrouilles)
- **Identification avant reveal** : trace fantomatique d'un tracé de patrouille, orbe, bannière, garde visible.
- **Ce qu'il cherche** : un « sandwich » garde + Knight de part et d'autre d'une tile ; une patrouille à travers une palette pour la casser.
- **Faire** : • quitter la tile où un garde arrive pour une tile neuve • pendant une chasse de garde, aller tôt vers la bannière [SEED] • bâtiments à plusieurs sorties.
- **Ne pas faire** : • jouer une boucle où garde et Knight se font face • rester sur une tile pendant qu'un garde arrive • paniquer vers une zone morte.
- **Macro/équipe** : sortir de la zone de détection plutôt que continuer à réparer ; Assassin → soigner le Deep Wound ; « un unhook met fin à la chasse de garde » : mécanique [SEED] UNCERTAIN, ne pas planifier un sauvetage sur cette base.
- **Add-ons** : Iridescent Company Banner (fenêtres cassables) → pas de vault répété · Town Watch's Torch → Knight sans TR pendant les chasses de garde.
- **Piège classique** : oublier la bannière.
- **Confiance** : buff 9.1.0 et changement 10.1.1 « gardes et palettes » [AUDIT] STRONG_SECONDARY, **contenu non lu** (conseils de palette à re-vérifier) ; gardes cassent les palettes [AUDIT] STRONG_SECONDARY ; patrouille 38 m, CD 20/30 s, Jailer 16 m [SEED] UNCERTAIN ; Nowhere to Hide LIVE 24 m (18 m = PTB **10.1.0**, abandonné au LIVE) [AUDIT].
- **Source** : `kb/research/batch4_killers_g4.md` §30

### 31. The Skull Merchant — zone/piège · info · M1 (+Haste)
- **Identification avant reveal** : drones stationnaires avec ligne de scan qui tourne ([CM]) ; drone sur ton gen dès le début ; arrivée **sans TR** juste après le rappel d'un drone.
- **Ce qu'il cherche** : t'amener sous un drone, ou en poser un sur ta boucle (Hindered + Haste lui donnent l'écart).
- **Faire** : • suivre la ligne de scan des yeux et la franchir juste après son passage • changer de tile quand elle pose un drone sur la tienne • si un drone est posé pendant la chase, pré-jeter la palette plus tôt (SITUATIONAL).
- **Ne pas faire** : • tenir une boucle « safe » sous un drone • ignorer un Claw Trap (révélation) • supposer « pas de TR = loin » après un rappel.
- **Macro/équipe** : pirater les drones quand elle est loin ; retirer vite les Claw Traps ; ne pas tous tomber en Lock-On dans la même zone.
- **Add-ons** : Expired Batteries → retirer le Claw Trap avant d'ouvrir un gen · Iridescent Unpublished Manuscript → pirater seulement si l'on sait où elle est · Advanced Movement Prediction → se déplacer, pas se cacher.
- **Piège classique** : enseigner « crouch/marche pour passer le scan » comme un FACT (non vérifiable).
- **Confiance** : rotation 105°/s, Hindered 10 % (9.3.0), Undetectable 8 s au rappel (9.3.2) [AUDIT] ; **TR 24 vs 32 m → §5** ; 6 drones, Lock-On 3 stacks, piratage 45 s [SEED] UNCERTAIN.
- **Source** : `kb/research/batch4_killers_g5.md` §31

### 32. The Singularity — mobilité · ranged · anti-loop (téléportation)
- **Identification avant reveal** : Biopods collés aux murs, imprimantes d'EMP sur la carte ([CM]) ; tueur immobile quand il contrôle un pod.
- **Ce qu'il cherche** : te marquer depuis un pod placé derrière toi, puis se téléporter juste avant ta palette.
- **Faire** : • repérer chaque pod de la zone et casser sa LOS (non marqué = pas de TP sur toi, [CM]) • quand il entre dans un pod, gagner de la distance ou couvrir la LOS • après sa TP, filer vers une autre tile ou une fenêtre au lieu de miser sur un stun (SITUATIONAL).
- **Ne pas faire** : • jeter la palette en étant marqué • réparer à plusieurs dans la vue d'un pod • utiliser l'EMP sans pods ni Slipstream à nettoyer.
- **Macro/équipe** : ramasser un EMP tôt, un porteur par zone de chase ; ne pas se grouper (propagation du marquage).
- **Add-ons** : Denied Requisition Form → EMP avant tout gen · Iridescent Crystal Shard → pas de furtivité près d'un pod neuf · Nutritional Slurry (+2 pods) → quitter vers une zone sans pods.
- **Piège classique** : jeter sa palette en étant marqué.
- **Confiance** : aucune valeur vérifiée ; bloc Overclock/Overheat/EMP [SEED] **suspect** (l'audit signale des erreurs sur la fiche Singularity, non détaillées).
- **Source** : `kb/research/batch4_killers_g5.md` §32

### 33. The Xenomorph — anti-loop (queue) · mobilité (tunnels) · info
- **Identification avant reveal** : Control Stations et tourelles récupérables sur la carte ; bruit de sortie de tunnel ; tueur à quatre pattes (Crawler Mode).
- **Ce qu'il cherche** : une touche de queue par-dessus une petite palette ou une fenêtre ; « pincer » une tile courte ; il évite les tourelles.
- **Faire** : • esquive **latérale** au début de l'animation de queue • amener la chase vers une tourelle posée ; murs hauts pleins • hors Crawler (M1 simple jusqu'à la recharge), tenir la tile.
- **Ne pas faire** : • tenir une palette basse contre la queue • compter sur un vault comme sécurité • marcher debout près d'une sortie de tunnel (crouch/immobile = non détecté selon le seed, UNCERTAIN).
- **Macro/équipe** : poser les tourelles **avant** la chase sur les tiles fortes, les gens et les crochets ; les remplacer après destruction.
- **Add-ons** : Ovomorph → fenêtre « M1 simple » plus courte · Kane's Helmet (Mangled) → soin près d'une tourelle ou reporté · Acidic Blood → préférer la distance au stun.
- **Piège classique** : poser une tourelle là où il n'y a pas de chase.
- **Confiance** : aucune valeur 1v4 vérifiée ; ajouté au **2v8** en 10.1.2 [AUDIT] (ne pas importer en 1v4) ; **TR 32 m / 24 m en Crawler → §5** ; queue ~4,8 m, 7 stations, tunnels 18 m/s [SEED] UNCERTAIN.
- **Source** : `kb/research/batch4_killers_g5.md` §33

### 34. The Good Guy — furtif · mobilité · anti-loop (dash, Scamper)
- **Identification avant reveal** : pas de TR ; faux pas (Illusory Footfalls) pendant Hidey-Ho ; petite silhouette difficile à voir ; dash rapide suivi d'une attaque.
- **Ce qu'il cherche** : un dash quand tu te retournes ou t'engages en ligne droite ; un Scamper pour annuler l'avantage d'une palette ou d'une fenêtre.
- **Faire** : • esquive latérale tardive au dash • jouer autour d'objets hauts, angles serrés • garder du mouvement : à 110 %, la distance brute a plus de valeur.
- **Ne pas faire** : • rester immobile derrière une palette abaissée • courir en ligne droite en open • faire confiance aux bruits de pas pendant Hidey-Ho.
- **Macro/équipe** : regarder autour de soi quand il n'y a pas de TR ; annoncer sa position à la sortie de Hidey-Ho ; après un dash raté, changer de tile (SITUATIONAL).
- **Add-ons** : Iridescent Amulet (Hidey-Ho +50 %) → quitter le gen au moindre indice visuel · Portable TV → en endgame, pas de lignes droites vers les portes, ouvrir en équipe.
- **Piège classique** : appliquer en 1v4 le counterplay 2v8 du seed (« Scamper casse la palette ») **comme un fait prouvé**. Attention à l'erreur inverse : la liste wiki.gg Pallets reprise par l'audit ([AUDIT] STRONG_SECONDARY, « liste à reconfirmer ») cite le Good Guy parmi les pouvoirs qui détruisent les palettes. Ce qui est prouvé, c'est seulement que les buffs 9.4.2 étaient propres au 2v8 ; le comportement 1v4 est **inconnu** → ne pas tenir une palette « safe » contre lui en supposant qu'il ne peut pas la casser.
- **Confiance** : buffs 9.4.2 = **2v8 uniquement** [AUDIT] ; 4,4 m/s [SEED] + [CM] UNCERTAIN ; Hidey-Ho 14 s, dash 8 m/s 1,8 s, CD 2,25 s si raté [SEED] UNCERTAIN ; comportement 1v4 du Scamper → §5.
- **Source** : `kb/research/batch4_killers_g5.md` §34

### 35. The Unknown — ranged (UVX) · furtif/mobilité (hallucinations, téléportation)
- **Identification avant reveal** : hallucinations (leurres fixes) sur la carte ([CM]) ; projectile qui rebondit et explose ; statut Weakened.
- **Ce qu'il cherche** : une explosion derrière un obstacle bas ou au rebond pour appliquer Weakened, puis blesser au tir suivant.
- **Faire** : • bouger latéralement au relâchement de la charge • jouer les murs hauts pleins (pas de tir en cloche ni de rebond) • déjà Weakened → quitter la zone plutôt que tenir la tile (SITUATIONAL).
- **Ne pas faire** : • tenir un muret bas • s'arrêter dans une zone d'impact • dissiper un leurre pendant une chase proche.
- **Macro/équipe** : soigner le Weakened hors danger (en le regardant de loin, [SEED]) ; dissiper les leurres proches des gens quand il est loin ; ne pas être plusieurs dans la même zone d'explosion.
- **Add-ons** : Slashed Backpack → ne dissiper qu'en étant sain et le tueur loin · Iridescent OSS Report → un TR près d'un leurre peut être faux, vérifier visuellement.
- **Piège classique** : garder le Weakened en pensant qu'il partira seul.
- **Confiance** : buff 9.6.0 [AUDIT] (sans détail) ; UVX 6,25 s « attribué à 9.6.0 », Hindered 6 %, TP 25 s [SEED] UNCERTAIN.
- **Source** : `kb/research/batch4_killers_g5.md` §35

### 36. The Lich — mobilité (Fly) · anti-loop (Mage Hand) · info
- **Identification avant reveal** : coffres et objets magiques ramassables ([CM]) ; vol au-dessus des obstacles ; entités fantomatiques ; palette bloquée.
- **Ce qu'il cherche** : Mage Hand sur ta palette au moment du drop (coup quasi garanti) ; Fly par-dessus une palette/fenêtre ; Flight of the Damned dans un couloir.
- **Faire** : • jeter la palette **plus tôt** quand Mage Hand est disponible • tiles à plusieurs palettes ou avec fenêtre alternative (après un Mage Hand, la fenêtre devient la ressource sûre) • s'accroupir face à Flight of the Damned sur terrain plat ([SEED] + [CM]).
- **Ne pas faire** : • attendre à la palette jusqu'au dernier moment • courir debout dans un couloir face aux entités • spammer les objets magiques qui révèlent.
- **Macro/équipe** : suivre ses cooldowns (hors sorts = M1 standard) ; partager les objets magiques utiles ; ouvrir un coffre peut révéler.
- **Add-ons** : Iridescent Book of Vile Darkness → le crouch ne protège plus et la fenêtre survolée est bloquée : casser la LOS · Ring of Spell Storing / Pearl of Power → sorts plus fréquents, moins de greed de palette.
- **Piège classique** : une palette unique et isolée contre Mage Hand.
- **Confiance** : sorts dès le début (9.0.0) [AUDIT] ; kill rate « broad » le plus élevé selon BHVR (noms seulement) [AUDIT] ; Fly 8 m/s, CD 20/30/30/35 s [SEED] UNCERTAIN.
- **Source** : `kb/research/batch4_killers_g5.md` §36

### 37. The Dark Lord — mobilité (chauve-souris) · ranged/zone (Hellfire) · anti-loop (loup)
- **Identification avant reveal** : berceuse de chauve-souris [SEED] ; Scent Orbs laissées en forme loup ; trois silhouettes distinctes (vampire, loup, chauve-souris).
- **Ce qu'il cherche** : piliers d'Hellfire sur une sortie de boucle ou une fenêtre ; Pounce du loup sur une palette ; arrivée en chauve-souris directement sur ta tile.
- **Faire** : • esquive latérale de l'Hellfire (ligne droite) • en chauve-souris (pas d'attaque), te repositionner en anticipant la palette/fenêtre d'arrivée • choisir la tile adaptée à sa forme actuelle (verrou de forme ~3,5 s, [SEED], SITUATIONAL).
- **Ne pas faire** : • rester dans l'axe d'un vampire qui charge • tenir une palette isolée contre le loup • te croire en sécurité parce que la berceuse est loin.
- **Macro/équipe** : ne pas laisser de traînée d'orbes en ligne droite ; annoncer sa forme.
- **Add-ons** : Iridescent Ring of Vlad (piliers à tête chercheuse) → casser la LOS derrière un mur · Cube of Zoe → pas de corps-à-corps juste après un gen · Warg's Fang → pas d'orbes près des gens.
- **Piège classique** : oublier qu'une tile dense en palettes/fenêtres est aussi son point de TP.
- **Confiance** : la forme loup casse les palettes [AUDIT] STRONG_SECONDARY ; toutes les autres valeurs [SEED] UNCERTAIN ; « loup 4,8 m/s avec orbes » : formulation suspecte.
- **Source** : `kb/research/batch4_killers_g5.md` §37

### 38. The Houndmaster — anti-loop · ranged (chien) · info
- **Identification avant reveal** : rien de spécifique (4,6 m/s, TR 32 m) ; une berceuse éloignée du TR ou un Killer Instinct sans tueur visible = Search Command ; aboiements.
- **Ce qu'il cherche** : une **ligne droite** entre le chien et toi (sorties de tile, couloirs, open) ; la prise ramène la cible pour un coup garanti.
- **Faire** : • décalage latéral tardif en mettant un obstacle entre la trajectoire et toi • tiles à angles courts (jungle gym, shack) et palettes posées (elles bloquent le chien) • si tu dois être pris, sois-le près d'une palette (la traîne s'interrompt, [SEED]).
- **Ne pas faire** : • « hold W » en ligne droite • quitter une tile vers l'open trop tôt pour « étirer » la chase • croire que l'Endurance annule la traîne (elle la raccourcit, [SEED]).
- **Macro/équipe** : gens loin de sa patrouille ; berceuse du chien sur toi = quitter le gen ; soigner tôt (Houndsense, Deep Wound) ; pas d'unhook en open avec Portia à moyenne distance.
- **Add-ons** : Leather Harness → décalage plus tôt · Marlinspike → s'écarter de la chase en cours · Iridescent Wheel Handle → berceuse non fiable, surveiller le Killer Instinct.
- **Piège classique** : le counterplay M1 « courir loin » échoue : l'open est sa portée idéale.
- **Confiance** : **aucune valeur couverte par l'audit** ; traîne 8 s (2 s avec Endurance), CD 3 s [SEED] UNCERTAIN ; chien et fenêtres [CM] UNCERTAIN.
- **Source** : `kb/research/batch4_killers_g6.md` §38

### 39. The Ghoul — mobilité · anti-loop · M1 (après marquage)
- **Identification avant reveal** : arrivée rapide et bruyante (bonds) ; tueur « tiré » vers un mur ou un toit.
- **Ce qu'il cherche** : une LOS sur toi à ≤ 14 m hors tile (premier coup quasi garanti en open) ; ensuite, M1 avec vaults accélérés et bonds par-dessus les palettes.
- **Faire** : • casser la LOS au moment où il vise • esquive latérale tardive au bond • après la marque, lui faire **dépenser ses tokens**, puis exploiter la recharge.
- **Ne pas faire** : • poser une palette tôt en pensant l'avoir bloqué • compter sur une fenêtre isolée • traverser l'open « parce que le TR est loin ».
- **Macro/équipe** : garder une tile fermée à proximité quand on répare (« ≤ 10 m » des fiches = ordre de grandeur HEURISTIC dérivé de la portée de bond de 14 m [SEED] UNCERTAIN) ; gens espacés ; décrocher quand il est engagé loin, pas juste après un bond. Tunnel facilité par sa mobilité (EXPERT OPINION).
- **Add-ons** : Iridescent Eye Patch → palette posée non sûre en Enragé · Hinami's Umbrella → soigner et décrocher plus tôt · Yamori's Mask → ne pas s'éloigner « par sécurité » pendant un crochet.
- **Piège classique** : raisonner en boucles de palette au lieu de **fenêtres de recharge**.
- **Confiance** : 3e bond + add-on détruit une palette [AUDIT] STRONG_SECONDARY (à reconfirmer) ; **TR 40 vs 32 m → §5** ; bond 14 m, tokens 4 s / 2,5 s en Enragé [SEED] UNCERTAIN ; « > 60 % de kill selon BHVR » non étayé.
- **Source** : `kb/research/batch4_killers_g6.md` §39

### 40. The Animatronic — ranged · mobilité (portes) · furtif · info
- **Identification avant reveal** : portes de sécurité sur la carte ; TR court ([SEED]) et Undetectable fréquent après usage de porte ; hache en main ou non (vitesse).
- **Ce qu'il cherche** : un lancer de hache en sortie de tile, puis une chase contre un survivant **Broken** ; récupérer sa hache.
- **Faire** : • esquive latérale au relâchement, pas au début du windup • tiles hauts qui coupent la LOS, loin des portes • quand il n'a pas la hache (plus rapide, sans projectile), gagner de la distance **en boucle**, pas en open.
- **Ne pas faire** : • entrer dans une porte quand il peut y entrer (jumpscare) • réparer dans le champ d'une porte récemment utilisée ou dans une zone de hache plantée • garder la hache plantée pour « finir le gen ».
- **Macro/équipe** : caméras = batterie **commune avec le tueur** → seulement si l'info change une décision ; retirer la hache plantée au plus vite (plus rapide avec un allié).
- **Add-ons** : Iridescent Remnant → après une sortie de porte, palettes proches bloquées : fenêtres/LOS · Access Panel → une porte n'est plus un bouclier · Faz-Coin → le TR peut être celui de la hache (nerfs 9.0.2 et buffs 9.6.0 non détaillés).
- **Piège classique** : vider la batterie pour toute l'équipe.
- **Confiance** : sortie 9.0.0, nom réel William Afton, nerfs d'add-ons 9.0.2, buffs 9.6.0 [AUDIT] ; 4,4/4,6 m/s, TR 24 m, hache 16 m, batterie 100 / reboot 45 s [SEED] UNCERTAIN.
- **Source** : `kb/research/batch4_killers_g6.md` §40

### 41. The Krasue — ranged · mobilité · anti-loop · statut (Leech)
- **Identification avant reveal** : **deux TR** (32 m puis 40 m) et changement de vitesse ; tête volante = Head Form ; champignons lumineux sur la carte.
- **Ce qu'il cherche** : en Body, des touches par rebond derrière les obstacles (jauge) ; en Head, des vaults gratuits de palette et un fouet qui ignore brièvement les murs.
- **Faire** : • changer de direction contre la glande principale, puis casser la LOS contre les mini-glandes • contre la tête, tiles qu'elle doit **contourner** (murs pleins, gros rochers) et stuns ponctuels • surveiller ton palier de Leech (sous le palier I, le fouet ne blesse pas, [SEED]).
- **Ne pas faire** : • boucler une palette contre la tête comme contre un M1 • courir en ligne droite contre la glande • oublier qu'un TR 40 m peut être la tête loin du corps.
- **Macro/équipe** : manger un champignon **avant** un palier, pas après ; au palier II (Broken), faire baisser la jauge avant de soigner ; repérer les champignons tôt.
- **Add-ons** : Chicken Head → le fouet blesse dès la 1re chase · Shredded Gown → manger vite, pas près d'un TR · Queen's Sceptre → glande de suivi après un fouet · Janjira's Hand → arrivée rapide après un gen.
- **Piège classique** : ignorer la jauge de Leech.
- **Confiance** : Body 4,6 m/s / TR 32 m, Head 4,8 m/s / TR 40 m, **Head Form sans Bloodlust** (9.2.0) [AUDIT] VERIFIED_PRIMARY ; paliers 100/200, champignons 5 (6 max) [SEED] UNCERTAIN ; reset du Leech au crochet (9.2.2) NON VÉRIFIABLE.
- **Source** : `kb/research/batch4_killers_g6.md` §41

### 42. The First — zone · furtif (Upside Down) · mobilité · anti-loop
- **Identification avant reveal** : 4,4 m/s ; TR qui **disparaît d'un coup** (Upside Down) ; lianes au sol après une charge lente ; anneaux rouges ; horloges sur la carte.
- **Ce qu'il cherche** : prédire ta position aux sorties de palette/fenêtre (zone retardée) ; accumuler des tokens avant le Worldbreaker.
- **Faire** : • feintes de vault et changements de direction tardifs • hors Worldbreaker, boucles longues qui exploitent sa lenteur ; tiles à plusieurs sorties • anneau d'Undergate : sortir vite ou casier ([SEED]).
- **Ne pas faire** : • vaulter par réflexe à la même sortie • ignorer la disparition du TR • garder le plan « longue boucle » en Worldbreaker (chaque liane blesse : tile à murs hauts, distance).
- **Macro/équipe** : suivre les tokens de l'équipe ; un survivant à 4 tokens au 2e crochet risque le Mind Break ([SEED]) → priorité anti-tunnel ; **un seul** survivant sur les horloges. Build de gens probable (EXPERT OPINION).
- **Add-ons** : Iridescent Soteria Chip → quitter les gens au déclenchement du Worldbreaker · Pizza Goggles → plus de fenêtre de sécurité après l'Upside Down · Chess Piece → attendre la 2e zone après un dodge.
- **Piège classique** : envoyer toute l'équipe aux horloges.
- **Confiance** : 4,4 m/s, TR 32 m, sortie 27/01/2026, Worldbreaker phase 2 = 50 s (9.5.0) [AUDIT] ; Upside Down 8 m/s, CD 35 s, Mind Break [SEED] UNCERTAIN ; « n°2 en kill rate » douteux (§6).
- **Source** : `kb/research/batch4_killers_g6.md` §42

### 43. The Slasher — furtif · mobilité · ranged (pics) · anti-loop
- **Identification avant reveal** : 4,4 m/s ; TR qui **se coupe** sans raison = Omnipresent Evil ; tas de ferraille sur la carte ; réapparition brutale sur une palette/fenêtre.
- **Ce qu'il cherche** : réapparaître sur la palette ou la fenêtre que tu allais utiliser, puis gagner la chase courte grâce à la Haste ; des pics sur un survivant sain qui arrive à une palette.
- **Faire** : • TR coupé → environ 2 s avant un Jump Scare possible : sortir des 16 m des palettes/fenêtres ou s'accroupir (2,5 s pour disparaître) ([SEED]) • contre les pics, esquive latérale + LOS, loin des murs (épinglage) • pendant sa Haste, casser la LOS et forcer un contournement.
- **Ne pas faire** : • rester debout immobile près d'une palette quand le TR disparaît • courir le long d'un mur face aux pics • miser sur un stun tardif contre Spirit Fury / Enduring.
- **Macro/équipe** : retirer immédiatement les pics de crochet (Broken, aura visible par Jason, [SEED]) ; au dernier crochet, zéro risque d'empalement (Finisher) ; réapparition ralentie près d'un accroché = fenêtre de sauvetage ([SEED]).
- **Add-ons** : Iridescent Boat Motor → palettes plutôt que fenêtres · Orderly's Shoe → casser la LOS plus longtemps · Deputy's Badge → pas de gens à moitié faits sur sa route · Sauna Rock → garder ta perk d'Exhaustion (ajustements 10.0.2/10.0.3 non détaillés).
- **Piège classique** : attendre un TR comme alerte : ici, c'est **son absence** qui alerte.
- **Confiance** : 4,4 m/s, 8,0 m/s en Omnipresent Evil, TR 32 m, sortie 10.0.0, état Impaled, perks [AUDIT] ; détection 16 m, Jump Scare ≤ 16 m, Haste 25 s, CD 12 s [SEED] UNCERTAIN.
- **Source** : `kb/research/batch4_killers_g6.md` §43

### 44. The Judgment — ranged · zone · Exile (alternative au crochet) · Heresy
- **Identification avant reveal** : grande silhouette, 4,4 m/s ; **Shrines sur la carte** ; colonne de lumière qui suit une cible ; survivant qui disparaît au sol au lieu d'être accroché (Exile).
- **Ce qu'il cherche** : une LOS prolongée pendant le contrôle, puis une projection quand tu es engagé (sortie de palette, couloir).
- **Faire** : • dodge **au moment de la projection**, pas pendant le contrôle (hors Zealous, la trajectoire ne se courbe plus) • en Zealous (~60 s après un exil, [SEED]), casser la LOS au lieu d'esquiver • tiles hauts et fermés, bâtiments avec plafond.
- **Ne pas faire** : • crouch spam / gestes répétés à moins de 10 m (Heresy) • attendre dans le seuil d'une porte de sortie (45 s = Heresy) • compter sur Off the Record / Borrowed Time contre un Exile (FACT : perks de crochet non déclenchées).
- **Macro/équipe** : un hérétique qui répare fait régresser (−3 % sur un Good) → Repent au Shrine d'abord, et purger avant d'ouvrir une porte proche ; dans l'Exile, esquiver les Seeds et collecter les âmes ; l'exilé réapparaît à ≥ 32 m → chacun gère sa fuite.
- **Add-ons** : Chains of the Heretic → LOS obligatoire en Zealous · Mirror of the Creators → structures fermées · Obsidian Feather → LOS plutôt que dodge · Eyes of Gerhardt → purger la Heresy en priorité.
- **Piège classique** : un anti-tunnel fondé sur les perks de décrochage (échoue contre l'Exile ; perks indépendantes du crochet = EXPERT OPINION non re-sourcée).
- **Confiance** : 4,4 m/s, TR 32 m, grand (10.1.0) [AUDIT] ; Exile (pas de perks de crochet, −3 s/Seed, +0,5 s/âme, 10 max, mort à 2 états) [AUDIT] VERIFIED_PRIMARY ; courbe 0,6 s en Zealous et **aucune hors Zealous** (10.1.2a), réapparition ≥ 32 m (10.1.2) [AUDIT] VERIFIED_MULTI_SOURCE ; Heresy (−3 %, 8 s si acquise < 32 m, 45 s, Repent) [AUDIT] STRONG_SECONDARY ; Divine Light (contrôle 3 s, CD 6 s) [SEED] UNCERTAIN ; protections basekit après un Exile : non vérifié (jouer comme si elles ne s'appliquaient pas).
- **Source** : `kb/research/batch4_killers_g6.md` §44

---

## 5. Table des valeurs contestées (TR, vitesses, durées, mécaniques)

**Aucune ligne « UNRESOLVED » ne doit être enseignée comme LIVE.** « Tranché » ne s'applique qu'aux lignes où l'audit phase 0 apporte une preuve.

### 5.1 Terror radius

| Tueur | Valeur seed | Autre valeur (origine) | Statut |
|---|---|---|---|
| Hillbilly | 40 m | 32 m ([CM], g1) | **UNRESOLVED** (CONFLICT-L4G1-01) ; fiche seed signalée erronée par l'audit |
| Hag | 24 m | 32 m ([CM], g1) | **UNRESOLVED** (CONFLICT-L4G1-03) |
| Blight | 40 m | 32 m ([CM], g3) | **UNRESOLVED** (CONFLICT-B4G3-01) |
| Pig | 24 m | 32 m ([CM], g2) | **UNRESOLVED** (CONFLICT-L4G2-02) ; changement 9.1.0 non lu |
| Onryō | 24 m | 32 m ([CM], g4) | **UNRESOLVED** (CONFLICT-L4G4-03) |
| Mastermind | 40 m | 32 m ([CM], g4) | **UNRESOLVED** (CONFLICT-L4G4-03) |
| Skull Merchant | 24 m | 32 m ([CM], g5) | **UNRESOLVED** (CONFLICT-L4G5-01) |
| Ghoul | 40 m | 32 m ([CM], g6) | **UNRESOLVED** (CONFLICT-B4G6-03) |
| Xenomorph (Crawler Mode) | 32 m / **24 m en Crawler** | aucune autre source (la mémoire du modèle n'est pas jugée assez fiable) | **UNRESOLVED** (CONFLICT-L4G5-02) |
| *Pour mémoire, non contestés* | Trickster 24 m / 44 m rang S ; Krasue 32/40 m ; Shape 16/32 m ; First, Slasher, Judgment 32 m | [AUDIT] | vérifiés (audit) |

### 5.2 Vitesses, durées et mécaniques

| Tueur / élément | Valeur seed | Autre valeur (origine) | Statut |
|---|---|---|---|
| **Nemesis — perk Eruption** (régression) | −10 % | **5 %** (table des patchs de l'audit : « Eruption 10 → 5 % » au LIVE 9.2.0) ; **10 %** (page wiki Eruption, via résumé de recherche, lot 3 `batch3_perks_kill_p91.md`) ; wiki.gg 9.2.X cité par l'audit : changements PTB 9.2.0 de Pop/Eruption/Ruin/DMS **annulés** au LIVE | **UNRESOLVED — non tranché.** `batch4_killers_g4.md` classe le « −10 % » du seed comme FAUX sur la foi de l'audit ; ce verdict est **contredit** par CONFLICT-K91-01 et CONFLICT-L3P90-01 (lot 3). Ne pas l'enseigner comme LIVE ni comme erreur prouvée. |
| Clown — Pop Goes the Weasel (perk) | 20 % au total | audit : +15 % → 20 % au total en 9.5.0 ; historique 9.2.0 (20 → 15 %) pris dans le même conflit 9.2.0 | 20 % au total retenu par l'audit (9.5.0) ; historique 9.2.0 **à confirmer** (lot 3) |
| Hillbilly — sprint | ~10,1 m/s (~12 m/s en Overdrive) | ~8,8 m/s ([CM], possiblement antérieure à l'Overdrive) | **UNRESOLVED** (CONFLICT-L4G1-02) |
| Hillbilly — Overdrive (bonus 20 s, retombe après 8 s) | présent | aucune | UNCERTAIN (mécanique non confirmée) |
| Shape — vitesse Stalker | 4,2 m/s | classe 4,2 m/s UNCERTAIN dans l'audit (fandom) | UNCERTAIN |
| Shape — exécution à la main en EI sur 2e crochet | présente | aucune | UNCERTAIN, impact survivant élevé |
| Doctor — Shock Therapy | 0,8 → 0,75 (9.6.0) → 0,65 s (9.6.1) | audit : 0,65 s LIVE ; buff 9.6.0 sans valeur | 0,65 s **vérifié** ; étape 0,75 s NON VÉRIFIABLE |
| Ghost Face — recharge Night Shroud | 17 → 15 s (9.6.0) | buff 9.6.0 existant (audit), valeur non lue | NON VÉRIFIABLE |
| Demogorgon — Undetectable de portail | 12 s (« 5 s avant 9.6.0 ») | audit : 12 s LIVE | 12 s **vérifié** ; « 5 s avant » NON VÉRIFIABLE |
| Legion — Frenzy | « 5e Feral Slash met à terre » | [CM] : le Frenzy ne met plus à terre depuis longtemps | UNCERTAIN (IMPRÉCIS probable) |
| Spirit — phasing passif | existe | [CM] : suppression antérieure probable | UNCERTAIN |
| Oni — orbes | « 5 orbes par crochet depuis le 9.2 » | audit : buffs Oni au **9.1.0**, rien au 9.2 | patch IMPRÉCIS ; valeur NON VÉRIFIABLE |
| Oni — Iron Will contre les orbes | réduit les orbes (« selon version ») | aucun effet documenté ([CM]) | UNCERTAIN (IMPRÉCIS probable) |
| Executioner — Final Judgement | « au 2e hameçon, tue directement » ; cage qui se déplace si un survivant approche | [CM] : vise un Tormented déjà en phase finale ; relocalisation non confirmée | **UNRESOLVED** (CONFLICT-B4G3-03) |
| Artist — les murs protègent-ils des corbeaux ? | « traverse les murs » **et** « coupez la ligne (…) pas le décor vertical très épais » (même fiche) | contradiction interne du seed | **UNRESOLVED** (CONFLICT-L4G4-02) |
| Artist — « s'accroupir évite le Killer Instinct » | affirmé | [CM] : le Killer Instinct ne dépend pas de la posture | NON VÉRIFIABLE, douteux |
| Trickster — No Way Out | 12 s par token (~60 s) | audit (wiki Exit Gates) : 12 s + 6/9/12 s par jeton | audit retenu (CONFLICT-L4G4-01) ; à reconfirmer par le lot 3 |
| Good Guy — Scamper casse la palette | 1v4 « depuis 9.4.2 » | audit : changements 9.4.2 propres au **2v8** ; **mais** la liste wiki.gg Pallets de l'audit (SS, à reconfirmer) cite le Good Guy parmi les destructions de palette par pouvoir | datation 9.4.2 en 1v4 : FAUSSE (CONFLICT-L4G5-03) ; **capacité 1v4 à casser les palettes : UNRESOLVED** (ne pas enseigner « il ne casse pas ») |
| Singularity — Overclock / Overheat / EMP | 5,7 s, +3 %, actions +75 %, immunité aux stuns ; Overheat 3 s Hindered 50 % ; EMP 45 s | audit : erreurs relevées sur la fiche Singularity, non détaillées | NON VÉRIFIABLE, **suspect** |
| Dark Lord — loup | 4,8 m/s avec Scent Orbs | aucune (formulation suspecte : Haste en % ?) | NON VÉRIFIABLE |
| Unknown — UVX | CD 6,25 s « (9.6.0) » | audit : buff 9.6.0 sans détail | NON VÉRIFIABLE |
| Krasue — Leech remis à zéro au crochet | hotfix 9.2.2 | résumé 9.2.2 de l'audit : seulement Off the Record | NON VÉRIFIABLE |
| Nowhere to Hide (perk, fiches Knight/Nurse/Executioner) | 18 m « en live » | notes 10.1.0 LIVE : **24 m** (18 m = PTB 10.1.0) | **tranché par l'audit** (CONFLICT-G11) : 24 m LIVE |
| Huntress — hachettes | 7 | audit : « 7 hachettes » relevé comme erreur, sans donner la bonne valeur ; 5 = [CM] | « 7 » FAUX (audit) ; **5 = UNCERTAIN [CM]**, à confirmer |

### 5.3 Statistiques contestées (ne pas citer de chiffres)

| Tueur | Affirmation du seed | Autre source | Statut |
|---|---|---|---|
| Huntress | « plus haut kill rate global BHVR 2026 » | audit : Huntress = **pick** le plus large ; kill rate le plus haut tous MMR = Lich | tranché par l'audit (CONFLICT-L4G2-01) : seed FAUX |
| Ghoul | « > 60 % de kill en MMR élevé selon BHVR » | audit : KB 540 sans chiffre en texte ; Ghoul cité pour le **pick rate** high MMR | **UNRESOLVED** (CONFLICT-B4G6-01) ; retirer le chiffre |
| The First | « n°2 en kill rate MMR élevé » | audit : seuls Krasue (high) et Lich (broad) cités ; sorti le 27/01/2026 | **UNRESOLVED** (CONFLICT-B4G6-02) |
| Twins | tier C **et** parmi les meilleurs kill rates haut MMR | incohérence interne du seed | **UNRESOLVED** (CONFLICT-B4G3-02) |
| Tous | kill rates NightLight par tueur | audit : chiffres sans échantillon ni date | IMPRÉCIS : pas de niveau absolu tiré de NightLight |

---

## 6. Erreurs du seed relevées par le lot 4

Compilées depuis les sections « Écarts avec le guide seed » des 6 fichiers. Le seed de référence est `kb/seed/ch8_killers.txt`.

### 6.1 Prouvées par l'audit phase 0

| # | Tueur | Le seed dit | Preuve (audit) | Verdict | Fichier |
|---|---|---|---|---|---|
| 1 | Huntress | 7 hachettes | l'audit relève « 7 hachettes » comme erreur (valeur correcte 5 = [CM], non donnée par l'audit) | FAUX (valeur de remplacement UNCERTAIN) | g2 |
| 2 | Huntress | plus haut kill rate global BHVR 2026 | pick le plus large ; kill rate top = Lich | FAUX | g2 |
| 3 | Knight (et partout) | Nowhere to Hide 18 m « depuis 10.1.0 », donc « moins bon » | 24 m LIVE ; 18 m = PTB 10.1.0 | FAUX (PTB présenté comme LIVE) | g4 |
| 4 | Good Guy | Scamper casse la palette en 1v4 « depuis 9.4.2 » + counterplay associé | buffs 9.4.2 = 2v8 | FAUX tel que présenté (2v8 présenté comme 1v4) ; la capacité 1v4 reste UNRESOLVED (liste wiki.gg Pallets de l'audit, §5.2) | g5 |
| 5 | Good Guy | « très buffé début 2026 » | buffs 2v8 | IMPRÉCIS | g5 |
| 6 | Ghoul | « > 60 % de kill en MMR élevé selon BHVR » | aucun chiffre ; Ghoul = pick rate | FAUX / non étayé | g6 |
| 7 | Cenobite | perks sous les noms Deadlock, Hex: Plaything, Scourge Hook: Gift of Pain | renommées en 9.0.0 (No Holds Barred, Fortune's Fool, Weeping Wounds) | IMPRÉCIS (OBSOLETE) | g4 |
| 8 | Trickster | No Way Out « 12 s par token, ~60 s » | 12 s + 6/9/12 s par jeton | IMPRÉCIS (à reconfirmer lot 3) | g4 |
| 9 | Knight | historique sans le changement 10.1.1 | 10.1.1 « gardes et palettes » | IMPRÉCIS (omission) | g4 |
| 10 | Skull Merchant | pas d'Undetectable au rappel de drone | 8 s au rappel (9.3.2) | IMPRÉCIS (omission importante) | g5 |
| 11 | Animatronic | nom réel « Springtrap » | William Afton | IMPRÉCIS | g6 |
| 12 | Animatronic | seulement 9.6.0 cité | + nerfs d'add-ons 9.0.2 | IMPRÉCIS (omission) | g6 |
| 13 | Judgment | hotfix 10.1.2a = 0,6 s en Zealous | + suppression de la fenêtre hors Zealous ; réapparition des exilés ≥ 32 m (10.1.2) | IMPRÉCIS (omissions) | g6 |
| 14 | Judgment | Heresy : « 3 gestes », porte bloquée 8 s | 3 accroupissements **ou** gestes ; 8 s si acquise < 32 m ; purge par Repent au Shrine | IMPRÉCIS (omission du counterplay principal) | g6 |
| 15 | Clown | « valeurs des patchs 9.1 et 9.2 » | seul 9.1.0 documenté | IMPRÉCIS | g2 |
| 16 | Plague (ch7) | « soignez vite contre Plague » en règle absolue | relevé par l'audit | IMPRÉCIS | g2 |
| 17 | Oni | 5 orbes par crochet « depuis le 9.2 » | buffs Oni au 9.1.0, rien au 9.2 | IMPRÉCIS (patch) ; valeur non vérifiée | g3 |
| 18 | Nightmare | fiche sans le rework 8.5.0 ; « Z-Block (… selon version) » | rework 8.5.0 (28/01/2025) | IMPRÉCIS (versions mélangées) | g2 |
| 19 | Cannibal (Knock Out) | effet décrit avec des valeurs PTB 10.2 | Knock Out listé parmi les erreurs du seed | IMPRÉCIS / à vérifier (lot 3) | g2 |
| 20 | Chapitre entier | ~75 % de conseils côté tueur | audit | IMPRÉCIS (angle tueur) | g1, g4, g6 |
| 21 | Chapitre entier | kill rates NightLight par tueur | chiffres sans n ni date | IMPRÉCIS | g1, g5 |
| 22 | Hillbilly, Spirit, Cannibal, Singularity | (fiches entières) | l'audit dit « erreurs relevées » **sans les détailler** dans `audit_phase0.txt` | erreurs prouvées mais **non localisées** → toute valeur de ces fiches est suspecte | g1, g2, g5 |

Confirmés **OK** par l'audit (pour mémoire ; « cassent les palettes » = liste wiki.gg Pallets STRONG_SECONDARY « à reconfirmer ») : Nurse 3,85 m/s ; Shape EI 60 s / SS 7,5 m/s / CD 4 s / TR 16-32 m, retrait boutique ; Doctor 0,65 s ; Cannibal, Pig, Clown, Dredge, Mastermind, Unknown : existence des buffs ; Coulrophobia 20/25/30 % ; Pop 20 % au total (9.5.0) ; Ghost Face accroupi 4,0 m/s ; Demogorgon Shred 19 m/s et Undetectable 12 s ; Blight 4,4 m/s et coût en tokens ; Twins, Victor lance des chases (9.0.0) ; Trickster 4,4 m/s / TR 24-44 m / 36 lames / 16 s ; Call of Brine 30/40/50 % 90 s ; Lich sorts dès le début ; Dark Lord et Ghoul (avec add-on) cassent les palettes ; Krasue, The First, Slasher, Judgment : vitesses, TR, dates ; Exile.

### 6.2 Suspectes, non prouvées (quota épuisé — à vérifier)

| # | Tueur | Le seed dit | Pourquoi suspect | Fichier |
|---|---|---|---|---|
| 1 | Hillbilly, Hag, Blight, Pig, Onryō, Mastermind, Skull Merchant, Ghoul, Xenomorph | TR (voir §5.1) | contredit par la mémoire du modèle (sauf Xenomorph : pas d'autre source) | g1-g6 |
| 2 | Nemesis | Eruption −10 % | **non tranché** : g4 le dit FAUX (audit 5 %), le lot 3 trouve 10 % sur le wiki et un possible revert 9.2.0 (§5.2) | g4 + lot 3 |
| 3 | Hillbilly | sprint ~10,1 / ~12 m/s, mécanique Overdrive | mémoire du modèle : ~8,8 m/s | g1 |
| 4 | Spirit | phasing passif | suppression probable (mémoire du modèle) | g2 |
| 5 | Legion | 5e Feral Slash met à terre ; désactivé puis réactivé en 9.6.0 | mémoire du modèle ; absent de l'audit | g2 |
| 6 | Oni | Iron Will réduit les orbes | aucun effet documenté | g3 |
| 7 | Executioner | Final Judgement « au 2e hameçon » ; cage qui se déplace | mémoire du modèle : Tormented en phase finale | g3 |
| 8 | Artist | murs épais protègent ; crouch évite le Killer Instinct | contradiction interne ; mécanique douteuse | g4 |
| 9 | Singularity | Overclock / Overheat / EMP | zone d'erreur signalée par l'audit (non localisée) | g5 |
| 10 | Skull Merchant | crouch/marche pour passer le scan ; rework « confirmé pour 2027 » | aucune source | g5 |
| 11 | Dark Lord | loup 4,8 m/s avec orbes ; Hellfire 9,5 s « 9.2.x » | formulation suspecte ; absent de l'audit | g5 |
| 12 | Unknown | UVX 6,25 s attribué à 9.6.0 | buff 9.6.0 sans détail | g5 |
| 13 | Ghost Face | recharge 17 → 15 s (9.6.0) | buff 9.6.0 sans détail | g3 |
| 14 | Demogorgon | « 5 s avant 9.6.0 », virage « doublé », Oblivious près des portails | absent de l'audit | g3 |
| 15 | Doctor | étape 0,75 s (9.6.0) ; Static Blast 30-45 s ; restrictions de Madness III | absent de l'audit | g1 |
| 16 | Trapper | Haste +7,5 % 5 s après la pose ; libération ~16,7 %/essai | inconnu de la mémoire du modèle | g1 |
| 17 | Wraith | invisibilité > 20 m, sursaut 6,9 m/s, add-on Soot « 9.5 » | absent de l'audit | g1 |
| 18 | Nurse | nerf de Heavy Panting 9.6.0, correction de blinks 10.1 | absent de l'audit | g1 |
| 19 | Shape | exécution en EI sur 2e crochet ; Stalker 4,2 m/s | impact élevé, non vérifié | g1 |
| 20 | Krasue | Leech remis à zéro au crochet (9.2.2) | absent du résumé 9.2.2 de l'audit | g6 |
| 21 | The First | « n°2 en kill rate MMR élevé » | non cité par l'audit ; sortie tardive | g6 |
| 22 | Cenobite | retrait de la vente « mars 2025 » ; difficulté « très élevée » vs « élevée » | date non confirmée ; incohérence interne | g4 |
| 23 | Twins | tier C vs top kill rate haut MMR | incohérence interne | g3 |
| 24 | Houndmaster, Ghoul | toutes les valeurs de pouvoir (buff 8.4.2, nerf 8.6.2, magnétisme 9.5.0) | non couvertes par l'audit | g6 |

### 6.3 Faux par logique de jeu (sans source externe)

| Tueur | Le seed dit | Raison | Confiance | Fichier |
|---|---|---|---|---|
| Hillbilly | « un survivant blessé est moins exposé à la tronçonneuse » | blessé, n'importe quel coup met à terre ; la tronçonneuse n'a d'intérêt que contre un sain | FAUX (HEURISTIC, confiance élevée) | g1 |

---

## 7. Prochaines étapes (rappel, non exécutées ici)

- Relancer le lot 4 avec un budget WebSearch (ou l'accès wiki.gg) : priorité aux TR de §5.1, à l'exécution de la Shape, au Hillbilly, au conflit Eruption, aux contenus des buffs 9.1.0 / 9.6.0 / 10.1.1 non lus, puis Houndmaster et Ghoul (non couverts par l'audit).
- Remplacer la matrice §3 par la matrice tile × tueur du lot 7.
- Recouper le counterplay HEURISTIC avec des guides experts sourcés (EXPERT OPINION) quand ils seront lisibles.
