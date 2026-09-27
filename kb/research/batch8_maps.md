# Lot 8 — Cartes (mission §7 MAP KNOWLEDGE, §29 audit de couverture par carte)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) — voir kb/audit/pass14_lot8_maps.md**
> Mode : **1v4 uniquement** (le 2v8 est isolé en §1.5 ; aucun conseil de ce fichier ne s'y applique tel quel).
> Portée des étiquettes (audit M25) : **aucun** contenu de carte (structures, tailles, gens fixes) ne figure dans `kb/seed/audit_phase0.txt` ; seuls la règle des offrandes (20 %, non cumulables) et la liste 9.2.0 y sont vérifiées. « FACT » signifie ici **documenté** (page wiki lue en entier et/ou note officielle) : sa solidité réelle est la **confiance** indiquée par fiche (STRONG_SECONDARY = wiki seul, jamais recoupé en jeu).

> Référence : **LIVE 10.1.2a (17/09/2026)** · date de travail 27/09/2026 · PTB 10.2.0 **non LIVE** (aucun changement de carte hors bugfix dans ses notes, KB 559 [16]).
> Sources lues **en texte complet** : wiki officiel (API MediaWiki deadbydaylight.wiki.gg, pages « Realms », 44 pages de cartes + Lampkin Lane + RPD original, 20 pages de royaume, Maze Tiles, Killer Shack, Basement, Hills, Sacrificial Tree, Harvester, 2v8) et notes de patch BHVR archivées (`kb/sources/patches/official_*.txt`). Module wiki `Datatable.lua` (table `maps`) et `Maps.lua` archivés.
> Pas de VOD, pas de NightLight (403), pas de reddit : **aucun kill rate** n'est donné (aucune fenêtre unique datée avec n n'a pu être lue). Voir §6.
> Étiquettes : **FACT** (wiki/notes) · **HEURISTIC** (mon analyse, non mesurée) · **COMMUNITY** (réputation non sourcée) · **NON VÉRIFIÉ**.
> Confiance : notes officielles = VERIFIED_PRIMARY ; page wiki complète seule = STRONG_SECONDARY ; les deux = VERIFIED_MULTI_SOURCE.

---

## 0. Règles générales fixe / RNG (à lire avant les fiches)

- **FACT** — « Minor tiles can be placed and rotated randomly, whereas major tiles with large structures tend to remain in the same location. Most Map tiles come in one of three sizes: 16x16, 16x32, or 32x32 metres. » (wiki Realms [1]). → Le **bâtiment principal (main)** et les **landmarks** sont à un emplacement **généralement** constant ; leur **contenu** varie (voir « potentially contains » dans chaque fiche).
- **FACT** — Maze Tiles (jungle gyms) : « They always spawn in the same general location of a Map, however, the chosen iteration may change between Trials » [17]. Donc : **zone** du gym ≈ stable, **type** (long wall, short wall, L-T, 4-lane…) = RNG.
- **FACT** — 9.2.0 : « Updated all Realms to draw from the same pool of available maze tile layouts » (KB 523 [4]). ⚠️ Les exclusivités de gyms par royaume encore listées sur la page wiki Maze Tiles (Locker Gym = Red Forest/Ormond, pas de 4-lane à Coldwind/Withered Isle, etc.) **datent d'avant 9.2.0** et sont **possiblement périmées** (UNCERTAIN — la formule « layouts » est ambiguë : dispositions ou types ?). Le seed les reprend comme vérités → voir écarts.
- **FACT** — Sous-sol (Basement) : toujours 4 crochets indestructibles sur un pilier central, 6 casiers, 1 coffre garanti, une seule entrée (wiki Basement, 6.4.0 : +2 casiers) [17]. Il apparaît soit dans le **Killer Shack**, soit dans le **main / un landmark** (« potentially contains the entrance to the Basement » sur presque toutes les cartes). Exceptions fixes documentées : **The Game** (escalier toujours derrière la Bathroom), **Wreckers' Yard** et **Rotten Fields** (toujours dans le Killer Shack, « as there are no other Landmarks on those Maps » — page Killer Shack [17] ; concorde avec le lot 7 §1.2). Emplacement **restreint à 2 options** : Treatment Theatre (Treatment Room ou Library), Underground Complex (2 emplacements, dont un dans le Rift Lab), RPD (2 emplacements sur le RPD original).
- **FACT** — Cartes **sans Killer Shack** : Lampkin Lane (retirée), Treatment Theatre, The Game, The Underground Complex, Midwich Elementary School, Raccoon City Police Station (East/West), Nostromo Wreckage [17]. Dead Dawg Saloon a un shack western avec **mur cassable** [17].
- **FACT** — Cartes **sans Maze Tiles** : Lampkin Lane, Badham Preschool, Treatment Theatre, The Underground Complex, RPD East Wing, RPD West Wing [17]. The Game est la seule carte **100 % intérieure** avec maze tiles [2].
- **FACT** — Collines (Hills) absentes de : Shelter Woods, Lampkin Lane, Treatment Theatre, Badham, The Game, Underground Complex, Dead Dawg Saloon, Midwich, RPD, Garden of Joy, Shattered Square, Toba Landing, Nostromo Wreckage [17].
- **FACT** — Taille : **aucune mesure officielle** ; les tailles sont mesurées par le wiki (segments de mur extérieur de 8 m ; 1 sqT = 8×8 m = 64 m²) ; les cartes intérieures (RPD) ne sont pas mesurées [1]. Le « tile » du seed (« 1 tile = 8×8 m ») confond l'unité wiki sqT avec les vraies tuiles de génération (16×16 à 32×32 m) → IMPRÉCIS.
- **FACT** — Sélection : 8.5.0 = Realm Repeat Prevention (même royaume deux fois de suite : chance nulle ; royaumes **récemment** joués : chance « unlikely, but not zero ») [1] ; **9.6.0 : « Map weighting has been adjusted in order for maps to have an equal chance of spawning - Realm Repeat Prevention remains in effect »** (KB 544 [10]) ; offrandes de royaume/carte : chance fixée à 20 %, non cumulables depuis 9.0.0 (déjà vérifié par l'audit phase 0 ; wiki : « to 20 % » [19] ; une offrande de **royaume** choisit ensuite une carte au hasard dans ce royaume, sauf royaume à carte unique et offrandes de carte de Dvarka [1]).
- **CALC (approximation, audit M22)** — Avec une chance égale par carte (9.6.0) et sans offrande, chaque carte ≈ 1/44 ≈ **2,3 %** par partie, et un royaume sort en proportion de son nombre de cartes : MacMillan, Autohaven, Coldwind ≈ 5/44 ≈ **11,4 %** chacun ; Withered Isle 4/44 ≈ 9,1 % ; royaumes à 2 cartes ≈ 4,5 % ; royaumes à carte unique ≈ 2,3 %. La Realm Repeat Prevention déforme ces valeurs d'une partie à l'autre (valeurs exactes **non publiées**). Conséquence pratique (HEURISTIC) : les 15 cartes de MacMillan/Autohaven/Coldwind représentent ≈ 1/3 des parties → à apprendre en premier ; on ne peut pas enchaîner deux parties publiques sur le même royaume → apprendre une carte précise se fait en **Custom Game** (variante I).
- **HEURISTIC (inférence, audit M08)** — Achievements « réparer le gen dans X et s'échapper » ⇒ X contient très probablement un gen **fixe** (sinon l'achievement serait parfois impossible) ; pour les cartes citées ici, la page wiki confirme séparément « contains a Generator » [2]. Ce n'est pas une règle documentée du jeu.
- **HEURISTIC** — Tout ce qui n'est pas marqué « contains » (fixe) sur le wiki doit être traité comme **possible, pas garanti** : coffre, totem, crochet, palette annexe, sous-sol.

---

## 1. Inventaire LIVE (§29)

### 1.1 Comptage

| Élément | Valeur | Source | Confiance |
|---|---|---|---|
| Royaumes listés par le wiki | 21 (dont Haddonfield retiré) | Realms [1] | STRONG_SECONDARY |
| Cartes listées par le wiki (hors variantes) | 46 (dont Lampkin Lane retirée et RPD original 2v8-only) | Realms [1], Datatable [3] | STRONG_SECONDARY |
| **Royaumes avec au moins une carte 1v4 LIVE** | **20** | déduction [1][7] | VERIFIED_MULTI_SOURCE |
| **Cartes 1v4 en rotation publique (LIVE 10.1.2a)** | **44** (variante I / carte unique ; RPD East + West comptées séparément) | [1][7][11] | VERIFIED_MULTI_SOURCE |
| Seed (« 20 royaumes, 44 cartes ») | concorde | — | OK |

### 1.2 Table des 44 cartes 1v4 LIVE

Taille = variante en rotation (sqT wiki ; ×64 = m²). « Patch » = sortie de la carte (Datatable [3]). Colonne « 9.2/9.3/9.3.2 » = le **royaume** figure dans la liste officielle de la passe palettes (9.2.0 densité [4] ; 9.3.0 sûreté [5] ; 9.3.2 longueur des loops [6]).

| # | Royaume | Carte | sqT | Sortie | Shack | Gyms | 9.2 / 9.3 / 9.3.2 |
|---|---|---|---|---|---|---|---|
| 1 | The MacMillan Estate | Coal Tower (I) | 132 | 1.0.0 | oui | oui | ✔ / ✔ / ✔ |
| 2 | MacMillan | Groaning Storehouse (I) | 156 | 1.5.2c | oui | oui | ✔ / ✔ / ✔ |
| 3 | MacMillan | Ironworks of Misery (I) | 160 | 1.0.0 | oui | oui | ✔ / ✔ / ✔ |
| 4 | MacMillan | Shelter Woods (I) | 176 | 1.0.0 | oui | oui | ✔ / ✔ / ✔ |
| 5 | MacMillan | Suffocation Pit (I) | 160 | 1.0.0 | oui | oui | ✔ / ✔ / ✔ |
| 6 | Autohaven Wreckers | Azarov's Resting Place (I) | 176 | 1.0.0 | oui | oui | ✔ / éclairage / ✔ |
| 7 | Autohaven | Blood Lodge | 156 | 1.0.0 | oui | oui | ✔ / éclairage / ✔ |
| 8 | Autohaven | Gas Heaven (I) | 156 | 1.4.1 | oui | oui | ✔ / éclairage / ✔ |
| 9 | Autohaven | Wreckers' Yard (I) | 144 | 1.0.0 | oui (centre) | oui (5) | ✔ / éclairage / ✔ |
| 10 | Autohaven | Wretched Shop (I) | 164 | 1.0.0 | oui | oui | ✔ / éclairage / ✔ |
| 11 | Coldwind Farm | Fractured Cowshed | 152 | 1.0.4 | oui | oui | ✔ / — / — |
| 12 | Coldwind | Rancid Abattoir (I) | 140 | 1.0.0 | oui | oui | ✔ / — / — |
| 13 | Coldwind | Rotten Fields | 160 | 1.0.0 | oui (centre) | oui | ✔ / — / — |
| 14 | Coldwind | The Thompson House (I) | 152 | 1.0.0 | oui | oui | ✔ / — / — |
| 15 | Coldwind | Torment Creek (I) | 156 | 1.0.0 | oui | oui | ✔ / — / — |
| 16 | Crotus Prenn Asylum | Disturbed Ward (I) | 152 | 1.1.0 | oui | oui | ✔ / ✔ / ✔ |
| 17 | Asylum | Father Campbell's Chapel (I) | 140 | 2.0.0 | oui | oui | ✔ / ✔ / ✔ |
| 18 | Backwater Swamp | The Pale Rose | 161 | 1.3.1 | oui | oui | ✔ / piers / ✔ |
| 19 | Swamp | Grim Pantry | 168 | 1.7.0 | oui | oui | ✔ / piers / ✔ |
| 20 | Léry's Memorial Institute | Treatment Theatre | 98 | 1.5.1 | **non** | **non** | — / — / — |
| 21 | Red Forest | Mother's Dwelling (I) | 152 | 1.6.0 | oui | oui | ✔ / ✔ / ✔ |
| 22 | Red Forest | The Temple of Purgation | 136 | 2.6.0 | oui | oui | ✔ / ✔ / ✔ |
| 23 | Springwood | Badham Preschool (I) | 144 | 1.8.0 | oui | **non** | — / — / — |
| 24 | Gideon Meat Plant | The Game | 142 (76 haut + 66 bas) | 1.9.0 | **non** | oui | — / — / — |
| 25 | Yamaoka Estate | Family Residence (I) | 156 | 2.2.0 | oui | oui | ✔ / ✔ / ✔ |
| 26 | Yamaoka | Sanctum of Wrath (I) | 156 | 3.4.0 | oui | oui | ✔ / ✔ / ✔ |
| 27 | Ormond | Mount Ormond Resort (I) | 156 | 3.2.0 | oui | oui | ✔ / ✔ (MOR nommée) / ✔ |
| 28 | Ormond | Ormond Lake Mine | 132 | 8.4.2 | oui | oui | ✔ / ? (non nommée) / ✔ |
| 29 | Hawkins National Laboratory | The Underground Complex | 138 (estimation wiki) | 3.2.0 | **non** | **non** | — / refonte navigation / — |
| 30 | Grave of Glenvale | Dead Dawg Saloon (I) | 136 | 3.6.0 | oui (western) | oui | — / — / — |
| 31 | Silent Hill | Midwich Elementary School | 113,5 (64 bas + 49,5 haut) | 4.0.0 | **non** | oui (tiles intérieurs/extérieurs, 8.2.0) | — / — / — |
| 32 | Raccoon City | RPD East Wing | non mesurée | 6.2.0 | **non** | **non** | — / — / — |
| 33 | Raccoon City | RPD West Wing | non mesurée | 6.2.0 | **non** | **non** | — / — / — |
| 34 | Forsaken Boneyard | Eyrie of Crows | 148 | 5.4.0 | oui | oui | — / — / — |
| 35 | Boneyard | Dead Sands | 140 | 8.6.0 | oui (landmark central) | oui | — / — / — |
| 36 | Withered Isle | Garden of Joy | 164 | 6.0.0 | oui | oui (2 designs) | — / — / — |
| 37 | Withered Isle | Greenville Square | 160 | 7.6.0 | oui | oui | — / — / — |
| 38 | Withered Isle | Freddy Fazbear's Pizza | 148 | 9.0.0 | oui | oui | — / — / — |
| 39 | Withered Isle | Fallen Refuge | 128 | 9.1.0 | oui | oui | — / — / — |
| 40 | The Decimated Borgo | The Shattered Square | 144 | 6.4.0 | oui | oui | ✔ / — / — |
| 41 | Borgo | Forgotten Ruins | 132 (92 surface + 40 donjon) | 8.0.0 | oui | oui | ✔ / — / — |
| 42 | Dvarka Deepwood | Toba Landing | 136 | 7.0.0 | oui | oui | — / — / — |
| 43 | Dvarka | Nostromo Wreckage | 152 | 7.2.0 | **non** | oui | — / — / — |
| 44 | Sleepless District | Trickster's Delusion | non mesurée | 9.5.0 (17/03/2026) | oui (adjacent au Market) | ? (non documenté) | — / — / — |

Notes de la table :
- « Shack oui » = non listée parmi les exceptions de la page Killer Shack [17] ; pour Badham, confirmé par la note 2.5.0 (« if the Basement spawned in the Killer Shack ») [2]. Pour Trickster's Delusion, confirmé par la page de la carte (« Market … with an adjacent Killer Shack »).
- Plus grandes cartes LIVE : Shelter Woods I et Azarov's Resting Place I (176). Plus petite **parmi les cartes mesurées** : Treatment Theatre (98), puis Midwich (113,5), Fallen Refuge (128) [1] — RPD East/West et Trickster's Delusion ne sont pas mesurées. Moyenne wiki 146 sqT (inclut variantes) [1] ; **CALC (audit M27)** sur les 41 cartes LIVE mesurées de la table : moyenne ≈ 148 sqT, médiane 152 sqT.
- ⚠️ Limites de la mesure (FACT, wiki Realms [1]) : la surface « disregards all structures placed within it that reduce the actual playable size » ; pour les cartes à étages, le wiki **additionne** les niveaux. L'emprise au sol est donc bien plus petite que le total pour The Game (76 sqT au niveau le plus grand), Midwich (64) et Forgotten Ruins (92 en surface) — à en tenir compte avant toute conclusion « grande / petite » (voir §3.0).
- 10.0.1 (KB 551 [11]) : « Badham Preschool, Grim Pantry and Pale Rose Maps have been re-enabled » → ces 3 cartes ont été **temporairement désactivées** avant 10.0.1 (date et cause **non trouvées** dans les notes archivées). Elles sont en rotation en 10.1.2a (aucune désactivation ultérieure trouvée dans KB 552-558).

### 1.3 Cartes retirées / hors rotation 1v4

| Carte | Statut | Preuve | Confiance |
|---|---|---|---|
| **Lampkin Lane** (Haddonfield) | Retirée : hors rotation **après le 19/01/2026** (FAQ officielle), puis « removed from map rotation **and custom game selection** » en **9.4.0** (LIVE 27/01/2026) ; offrande Strode Realty Key retirée | KB 531 [8], KB 534 [7], wiki Haddonfield | VERIFIED_MULTI_SOURCE |
| **Raccoon City Police Station** (original, 2 ailes) | Retirée du 1v4 en 6.2.0, remplacée par East/West ; **2v8 uniquement** depuis 8.5.1 | wiki RPD | STRONG_SECONDARY |
| The Underground Complex | Absente du 17/11/2021 au 06/11/2023 (7.3.3), **LIVE** aujourd'hui | wiki | STRONG_SECONDARY (historique) |
| Variantes II+ (voir 1.4) | Hors matchmaking public depuis 8.6.0 ; jouables en Custom Games | wiki Realms + pages cartes | STRONG_SECONDARY |

### 1.4 Variantes (« Map Variations »)

- **FACT** — 8.6.0 : « Disabled all Map Variations for ranked Trials. Only the original Map is chosen by the Map Selector … The two RPD Maps (West Wing and East Wing) were exempt … All removed Map Variations can still be selected for Custom Games » [1]. Le mot « ranked » est le vocabulaire du wiki pour les parties publiques (matchmaking MMR) par opposition aux Custom Games — **DBD n'a pas de mode classé distinct**.
- Variantes hors matchmaking public (Custom Games seulement) : Coal Tower II (136), Groaning Storehouse II (148), Ironworks of Misery II (156), Shelter Woods II (176), Suffocation Pit II (152) — ajoutées en 7.3.0 ; **Badham Preschool II (144), III (144), IV (140), V (148)** — ajoutées en 3.1.0 ; Family Residence II (156) et Sanctum of Wrath II (148) — 8.1.0 ; Mount Ormond Resort II (160) et III (156) — 8.1.0 [2][3].
- **Verdict seed** : « seule Badham I en classé » → le **fond est juste** (Badham I est la seule Badham en matchmaking public) mais la formulation « classé » est fausse et la règle vaut pour **toutes** les cartes à variantes, pas seulement Badham.

### 1.5 Cartes 2v8 (mode événementiel limité — à ne pas mélanger au 1v4)

- **FACT** — 2v8 = « recurring limited-time Game Mode Modifier » ; versions « supersized » exclusives, 3 Exit Gates, 13 gens (8 à réparer), 3 trappes ; maze tiles agrandis et palettes plus fréquentes (« Safe Double Pallets ») [18].
- Pool listé par le wiki (par itération) [18] : V1 Azarov's, Gas Heaven, Thompson House, Disturbed Ward, Suffocation Pit, Mother's Dwelling · V2 Wreckers' Yard, Rancid Abattoir, Father Campbell's Chapel, Dead Dawg Saloon, Family Residence, Sanctum of Wrath · V3 Mount Ormond Resort, **RPD original** · V4 Wretched Shop, Torment Creek, Coal Tower, Shelter Woods · V5 Treatment Theatre, Shattered Square, Greenville Square · V7 Rotten Fields, Groaning Storehouse · V8 Ironworks of Misery, Temple of Purgation · V9 Nostromo Wreckage. → **26 cartes** (le compteur de la page dit « 22 », non mis à jour).
- Confirmations officielles : 9.4.2 « NEW MAPS Groaning Storehouse, Rotten Field » [15] ; 9.6.0 « Maps: Added Temple of Purgation. Added Ironworks of Misery » (section 2v8) [10] ; 10.1.2 « Nostromo Wreckage is now available in 2v8 » [12].
- Tailles 2v8 connues (sqT) : Mother's Dwelling 200 · Rancid Abattoir 192 · Sanctum 192 · Disturbed Ward 188 · Suffocation Pit / Azarov / Gas Heaven / Family Residence 184 · Coal Tower / Shelter Woods / Thompson / Torment Creek / Chapel / MOR / Dead Dawg 180 · Wreckers' Yard 176 [1]. Autres : non mesurées.

### 1.6 Écart d'inventaire seed ↔ LIVE (§29)

- Cartes absentes du seed : **aucune** (les 44 sont présentes ; Lampkin Lane est bien signalée retirée).
- Cartes en trop : aucune ; mais le seed mentionne « The Mall (décembre 2026) » et une « refonte visuelle 2027 » (roadmap) → **non LIVE**, non vérifié ici ; à sortir de l'inventaire.
- Royaume : le seed ne signale pas les 3 cartes temporairement désactivées avant 10.0.1 (historique mineur).

---

## 2. Historique récent des cartes (patchs 9.x → 10.1.2a)

| Patch (LIVE) | Changement carte | Source | Confiance |
|---|---|---|---|
| 9.0.0 (17/06/2025) | Nouvelle carte **Freddy Fazbear's Pizza** (Withered Isle) ; mode « Map Showcase » (file sur une carte prédéterminée) ; offrandes de carte 20 % | KB 510 [13], wiki | VERIFIED_MULTI_SOURCE |
| 9.1.0 (29/07/2025) | Nouvelle carte **Fallen Refuge** (« special The Walking Dead themed tile ») | KB 516 [14] | VERIFIED_PRIMARY |
| **9.2.0** | Densité de palettes ajustée pour réduire les dead zones — **10 royaumes** : MacMillan, Autohaven, Coldwind, Crotus Prenn, Haddonfield, Backwater Swamp, Red Forest, Yamaoka, Ormond, Decimated Borgo ; **tous les royaumes piochent dans le même pool de maze tile layouts** | KB 523 [4] | VERIFIED_PRIMARY |
| 9.2.0 (wiki seul) | Torment Creek 168 → 156 sqT ; Disturbed Ward 172 → 152 sqT (pages wiki) — **absent des notes officielles 9.2.0** (non documenté par BHVR) | wiki [2] | STRONG_SECONDARY |
| 9.2.0 | Bugfix : navigation des **bots** autour du bus de Gas Heaven ; vault de la grue de Wreckers' Yard ; fenêtre d'Ironworks | KB 523 [4] | VERIFIED_PRIMARY |
| **9.3.0** | « Reduce the safety of pallet loops » : MacMillan, Asylum, Red Forest, Yamaoka, **Haddonfield**, **Mount Ormond Resort** ; spawn logic revue (main de **Disturbed Ward**, **piers** de Backwater Swamp, impact Red Forest) pour équilibrer distance fenêtre/palette ; Asylum : main moins safe (pouvait spawn près des maze tiles et s'y chaîner) | KB 529 [5] | VERIFIED_PRIMARY |
| 9.3.0 | **Underground Complex** : navigation améliorée, au moins une porte ouverte sur chaque côté des grandes salles, nouvel accès au gen au-dessus de la control room (Rift Lab) | KB 529 [5] | VERIFIED_MULTI_SOURCE |
| 9.3.0 | **Autohaven** : moins sombre (textures recalibrées, **brouillard ajouté**, éclairage/teinte revus) | KB 529 [5] | VERIFIED_PRIMARY |
| 9.3.0 | **Dead Dawg Saloon : « Fixed an issue … where a totem was guaranteed to spawn in the same place »** → le « totem garanti derrière le water tower » du wiki est **périmé** | KB 529 [5] | VERIFIED_PRIMARY |
| **9.3.2** | Passe palettes « middle ground » : Autohaven, Backwater Swamp, Crotus Prenn, MacMillan, Ormond, Red Forest, Yamaoka — loops trop courts rallongés, palettes empêchées contre de petits objets, randomisation de palettes revue sur certains tiles | KB 530 [6] | VERIFIED_PRIMARY |
| 9.4.0 (27/01/2026) | **Lampkin Lane retirée** (rotation + custom) ; Halloween quitte le jeu le 19/01/2026 | KB 534 [7], KB 531 [8] | VERIFIED_PRIMARY |
| 9.5.0 (17/03/2026) | **Nouveau royaume Sleepless District / carte Trickster's Delusion** | KB 538 [9] | VERIFIED_PRIMARY |
| 9.6.0 | **Pondération des cartes : chance égale pour chaque carte** (Realm Repeat Prevention maintenue) ; bugfix collision d'un mur près de l'arbre de Coldwind | KB 544 [10] | VERIFIED_PRIMARY |
| 10.0.1 | Badham Preschool, Grim Pantry, Pale Rose **ré-activées** | KB 551 [11] | VERIFIED_PRIMARY |
| 10.0.x-10.1.2 | Bugfix collisions/projectiles uniquement (Forgotten Ruins, Trickster's Delusion, Sanctum, Torment Creek, RPD…) ; 2v8 : Nostromo ajoutée | KB 550-558 | VERIFIED_PRIMARY |
| PTB 10.2.0 | Aucun changement de carte (bugfix seulement) — **non LIVE** | KB 559 [16] | VERIFIED_PRIMARY |

Reworks antérieurs utiles (wiki [2]) : Blood Lodge et Gas Heaven 6.7.0 (main rapproché du centre, moins de tiles à faible LOS, car piles traversables) ; Eyrie of Crows 6.5.0 (gyms éloignés du main et du shack) ; Shattered Square 7.3.0 (carré 12×12, main déplacé en coin) et 7.3.2 (plus de palettes max, loops moins safe) ; Mother's Dwelling et Temple 7.4.0 (réductions) ; Garden of Joy 7.4.0 (passe gameplay) ; MOR 7.5.0 (abords du chalet) ; Midwich 8.2.0 (LOS de couloir réduite) ; Forgotten Ruins 8.0.2 (≥ 4 crochets au donjon, Passages éloignés des palettes/fenêtres) et 8.1.0 (plus de palettes en surface) ; Cowshed 7.1.0 et Rancid 7.1.0 (nouvelles loops dans le main).

---

## 3. Fiches par carte

Format : **Fixe** (FACT wiki sauf mention) · **RNG / possible** · **Verticalité / intérieur** · **Lecture** (visibilité, zones fortes/faibles — COMMUNITY ou HEURISTIC) · **Tueurs** (HEURISTIC, descriptif) · **Plan** (HEURISTIC). Les données « contains » du wiki sont traitées comme fixes ; « potentially » comme RNG.

Archétypes utilisés (HEURISTIC, définitions) : **mobilité** (couvre la distance : Blight, Nurse, Spirit, Wesker, Billy…) · **distance/LOS** (projectiles, profitent des lignes de vue longues) · **furtif** (profite des murs hauts / faible LOS) · **zone/pièges** (profite des goulets : portes, couloirs, escaliers) · **M1/lent** (sans outil de déplacement ni anti-loop).

### 3.0 Comment lire les lignes « Tueurs » et « Plan » (ajout d'audit M10, M13 — à lire avant les fiches)

**Correspondance avec le handbook** (`deliverables/KILLER_COUNTERPLAY_HANDBOOK.md`, 8 archétypes) : « distance/LOS » = **Ranged** ; « M1/lent » = **M1** ; mobilité, furtif, zone/piège identiques. Les archétypes **Anti-loop**, **Info** et **Slug** du handbook n'ont pas de ligne ici : pour eux la carte compte surtout par la **densité de palettes** (anti-loop : une carte riche en palettes safe perd de la valeur contre Blight, Demogorgon, Oni… voir lot 7 §5.2) et par la densité de **casiers** (Dredge : intérieurs pleins de casiers = avantage tueur, handbook §2 et lot 4 g4). Une fiche qui dit « M1 pénalisés » ne dit **rien** d'un tueur anti-loop.

**Pourquoi la taille joue (mécanisme, HEURISTIC)** : sur une grande carte, le tueur perd plus de temps à se déplacer entre deux gens ou deux chases ; pendant ce trajet, les réparateurs avancent. Un tueur à mobilité compresse ce trajet, un M1 le subit.

**De combien (CALC, hypothèses : carte carrée, trajet en ligne droite d'un bord à l'autre, sans obstacle, taille wiki = surface totale)** : côté = √(sqT × 64).

| Surface (sqT) | Côté ≈ | Traversée tueur 4,6 m/s | 4,4 m/s | Survivant 4,0 m/s |
|---|---|---|---|---|
| 98 (Treatment Theatre) | 79 m | 17,2 s | 18,0 s | 19,8 s |
| 132 | 92 m | 20,0 s | 20,9 s | 23,0 s |
| 152 (médiane) | 99 m | 21,4 s | 22,4 s | 24,7 s |
| 176 (Shelter Woods, Azarov) | 106 m | 23,1 s | 24,1 s | 26,5 s |

- Entre la médiane et la plus grande carte : ≈ **1,7 s** par traversée pour un tueur 4,6 ; entre la plus petite et la plus grande : ≈ **5,9 s**. Avec 3 survivants qui réparent chacun seuls (1 charge/s, gen = 90 charges : audit), 1,7 s ≈ 5 charges ≈ **6 % d'un gen** par traversée ; 5,9 s ≈ 18 charges ≈ **20 % d'un gen**.
- **Lecture** : l'effet « grande carte → mobilité avantagée » est **net aux extrêmes** (Treatment Theatre, Midwich, The Game vs Shelter Woods, Azarov) et **faible entre cartes moyennes** (132-160 sqT) : là, la position RNG des gens, la densité de palettes (9.2.0-9.3.2) et la forme de la carte pèsent probablement plus que la surface (HYPOTHESIS, aucune mesure).
- **Quand la règle échoue** : carte allongée (trajet réel plus long que le côté du carré) ; gens RNG regroupés (petite distance utile même sur grande carte) ; surface gonflée par les étages (The Game, Midwich) ; carte à gros bâtiments qui bloquent le trajet ; tueur M1 qui compense par des perks de régression ou d'info (non chiffré ici).
- **Statut des lignes « Tueurs » des fiches** : ce sont des **hypothèses à tester**, dérivées de ce cadre et de la matrice du handbook §3 / lot 7 §5 ; aucune n'est appuyée par un kill rate (§6). Les lignes « Plan » sont des HEURISTIC ; les conditions, contre-cas et drills communs sont en §4.2.

### 3.1 The MacMillan Estate (industriel, murs de briques hauts)

Commun au royaume (FACT) : **The Tower (Coal Tower) et le Lumber Pile sur toutes les cartes sauf Shelter Woods** ; Water Tower = structure du royaume [19][17]. Passes 9.2.0 + 9.3.0 + 9.3.2 : royaume le plus retouché des 3 passes [4][5][6]. 9.2.0-9.3.2 : pas de liste de changements par carte, donc impossible de dire quelle loop précise a changé.

**Coal Tower (I, 132 sqT — petite)** — STRONG_SECONDARY
- Fixe : main « Warehouse » 2 niveaux, escalier intérieur ; RDC : 3 casiers, **3 murs cassables**, **1 fenêtre** ; étage : **gen fixe**, **coffre fixe**, 1 mur cassable qui bloque un drop ; 3 drops depuis l'étage ; 2 palettes à l'extérieur du bâtiment.
- RNG : escalier de sous-sol possible dans le main (sinon shack) ; gyms.
- Verticalité : oui (étage + drops). Extérieur.
- Tueurs (HEURISTIC) : petite carte → M1/lents moins pénalisés ; le tueur a intérêt à casser tôt les murs cassables qui prolongent le main (seed, logique plausible, non mesurée).
- Plan (HEURISTIC) : début = gen de l'étage exposé (drops = sortie) ; milieu = garder la fenêtre RDC + drops pour une chase longue ; fin = petite carte → gates rapidement couvertes, ne pas compter sur un long trajet.
- 9.3.2 : bugfix Nurse sur le rebord du bâtiment [6].

**Groaning Storehouse (I, 156)** — STRONG_SECONDARY
- Fixe : « Storehouse » grand bâtiment **un seul niveau** ; 2 entrées principales à 2 portes de garage chacune (4) — **certaines portes parfois fermées** (RNG) ; **2 fenêtres**, 1 mur cassable, 3 casiers, **coffre fixe**.
- RNG : palette intérieure possible ; gen possible ; sous-sol possible.
- Verticalité : non. Visibilité : grand volume fermé (HEURISTIC : LOS coupée depuis l'extérieur).
- Tueurs (HEURISTIC) : peu de relief → neutre ; furtifs aidés par les grands murs du royaume.
- Plan (HEURISTIC) : vérifier quelles portes de garage sont ouvertes dès le début (change la sûreté du main).
- Seed « 3 totems possibles dans le main » : NON VÉRIFIÉ.

**Ironworks of Misery (I, 160)** — STRONG_SECONDARY
- Fixe : « Foundry » 2 niveaux, **escalier intérieur (3 drops)** + **escalier extérieur (1 drop)** ; 7 casiers ; **gen RDC fixe** ; **coffre dans le bureau (étage)** ; 3 fenêtres (1 RDC, 2 à l'étage dont **une toujours bloquée**) ; 2 murs cassables (1 par niveau) ; 3 entrées RDC. Landmark secondaire : **Water Tower** (grince au passage = bruit informatif).
- RNG : crochet RDC possible, totem étage possible, sous-sol possible.
- Verticalité : forte (4 drops).
- Lecture (COMMUNITY, seed) : main réputé fort ; non mesuré.
- Tueurs (HEURISTIC) : main à étages → difficile pour M1 ; tueurs qui ignorent les drops (téléport, blink) moins gênés.
- Plan (HEURISTIC) : ne pas brûler le main tôt ; le grincement du Water Tower trahit un passage.
- 9.2.0 : fenêtre non vaultable corrigée ; 9.3.0 : gen inaccessible d'un côté corrigé ; 9.3.2 : navigation bobine/rocher [4][5][6].

**Shelter Woods (I, 176 — la plus grande en rotation, ex æquo Azarov)** — STRONG_SECONDARY
- Fixe : landmark central **Hunting Camp** (6.6.0) avec gen « Command Centre » (achievement ⇒ gen fixe) ; **Twisted Tree** déplacé sur un côté ; **pas de Tower ni de Lumber Pile** ; **pas de collines**.
- RNG : gyms, fillers, sous-sol (shack ou camp : non documenté).
- Verticalité : faible. Visibilité : boisée (arbres/rochers) (seed).
- Tueurs (HEURISTIC) : grande → mobilité avantagée, M1/lents désavantagés (gens éloignés) ; LOS cassée par les arbres aide les furtifs.
- Plan (HEURISTIC) : survivants : étaler les gens, la distance joue pour eux ; fin : gates potentiellement très éloignées l'une de l'autre.

**Suffocation Pit (I, 160)** — STRONG_SECONDARY
- Fixe : « Mine » grand bâtiment **un seul niveau** avec échafaudages ; 3 entrées (2 grandes, 1 petite) ; 3 fenêtres dont **une toujours bloquée** ; 1 mur cassable ; 2 casiers ; **coffre au-dessus de l'emplacement de sous-sol**.
- RNG : sous-sol possible dans la Mine.
- Verticalité : faible (échafaudages décoratifs, non documentés comme accessibles).
- Tueurs / plan (HEURISTIC) : profil « MacMillan standard » : murs hauts → furtifs aidés ; main à 2 fenêtres actives = ressource de mi-partie.
- 9.6.0 : texture au-dessus de l'entrée du sous-sol du main corrigée (confirme un spawn de sous-sol dans le main) [10].

### 3.2 Autohaven Wreckers (casse, vert)

Commun (FACT) : **Crane, School Bus et Car Crusher sur toutes les cartes** [19] ; 9.3.0 : éclairage éclairci + **brouillard ajouté** + teinte revue [5] ; passes palettes 9.2.0 et 9.3.2 [4][6]. Hauts murs de ferraille (design des gyms) [17].
- Lecture (COMMUNITY/seed) : réputé favorable aux survivants (hauts murs, faible LOS). Sans chiffre (§6).
- Tueurs (HEURISTIC) : furtifs aidés par la faible LOS ; tueurs à distance gênés par les murs ; 9.3.0 (plus clair mais brouillard) change la lecture visuelle — effet net non mesuré.

**Azarov's Resting Place (I, 176 — grande)** — STRONG_SECONDARY
- Fixe : « Office » petit bâtiment **un seul niveau** ; **1 fenêtre**, 2 entrées, 1 mur cassable, 2 casiers.
- RNG : sous-sol, coffre, totem possibles dans l'Office.
- Historique : 4.4.0, deux zones clôturées ouvertes (168 → 176).
- Tueurs (HEURISTIC) : grande + main faible → mobilité avantagée ; M1 pénalisés par la distance.
- Plan (HEURISTIC) : main peu utile en chase ; les survivants dépendent des tiles RNG et des car piles.

**Blood Lodge (156)** — STRONG_SECONDARY
- Fixe : « Lodge » petite cabane **2 niveaux reliés par une rampe** ; RDC : 1 fenêtre, 2 entrées, 1 mur cassable ; étage : 1 sortie + 1 drop ; **gen sur le porche** ; **coffre à l'étage** ; 2 casiers.
- RNG : sous-sol possible.
- Rework 6.7.0 : main rapproché du centre, moins de tiles à faible LOS, maze tiles dangereux revus, 168 → 156.
- Tueurs / plan (HEURISTIC) : main central → carrefour de rotations ; le gen du porche se fait près d'une ressource de chase.

**Gas Heaven (I, 156)** — STRONG_SECONDARY
- Fixe : « Gas Station » moyen, **un seul niveau** (garage + boutique + pompe) ; **gen dans le garage (le terminer ouvre la porte du garage)** ; 2 portes ; **2 fenêtres dont une seule ouverte** (RNG laquelle) ; plusieurs murs cassables ; « Driveway Bell » : la sonnette sonne quand un tueur **ou** un survivant marche sur le tuyau noir de la pompe (bruit informatif).
- RNG : coffre (coin boutique **ou** garage), nombre de casiers selon l'emplacement du sous-sol, sous-sol possible.
- Rework 6.7.0 : main rapproché du centre, car piles traversables, loops du bâtiment revues, 164 → 156.
- Tueurs / plan (HEURISTIC) : attention à la sonnette en infiltration (les deux camps).
- Seed « 9.2.0 : correctif de navigation autour du bus » → c'était la navigation des **bots** (IMPRÉCIS).

**Wreckers' Yard (I, 144)** — STRONG_SECONDARY
- Fixe : **pas de main building** ; **Killer Shack au centre, contient toujours le sous-sol** ; autour du shack : **pas de hauts murs** (murets bas, pull-downs, espace ouvert, souvent une petite colline) ; périphérie : hauts murs de ferraille, bus, grues, citernes. 6.7.0 : 5 maze tiles (au lieu de 6).
- RNG : type des gyms, fillers.
- Tueurs (HEURISTIC) : sous-sol central = crochet de sous-sol toujours proche → proxy-camp du sous-sol facile ; furtifs aidés en périphérie.
- Plan (HEURISTIC) : survivants : éviter d'être descendu près du centre (sous-sol garanti) ; tueur : chaser vers le centre.
- 9.2.0 : vault de la grue réparé [4].

**Wretched Shop (I, 164)** — STRONG_SECONDARY
- Fixe : « Garage » grand bâtiment **un seul niveau** ; **gen fixe**, **coffre fixe**, 1 mur cassable, 4 casiers, 2 entrées ; **4 fenêtres dont une seule ouverte à la fois** (RNG).
- RNG : crochet possible, sous-sol possible.
- Tueurs (HEURISTIC) : grande → mobilité avantagée.
- Plan (HEURISTIC) : repérer quelle fenêtre du garage est active dès la première visite.
- 9.4.0 : objets gênant la navigation autour d'un camion ; gen non interactif d'un côté [7].

### 3.3 Coldwind Farm (ferme, orange, « en plein jour » depuis 4.7.0)

Commun (FACT) : **Sacrificial Tree (« Cow Tree ») et Harvester sur toutes les cartes** [19]. Cow Tree : murets de pierre, **1 fenêtre dans un muret + 1 palette entre deux murets** [17]. Harvester : accès par la tête et la rampe ; en haut, vault gauche → panneau latéral **sans retour**, vault droit → balle de foin de la rampe **avec aller-retour** (ancienne quasi-infinite, nerfée) [17]. Maïs (seed : casse la LOS sans collision — cohérent avec l'expérience, non sourcé ici). 8.1.0 : nouveaux maze tiles + casiers. Seule passe palettes : **9.2.0** (pas en 9.3.0/9.3.2) [4][5][6].
- Tueurs (HEURISTIC) : champs → LOS basse au niveau du sol mais le maïs cache ; furtifs et tueurs à « lecture de scratch marks » avantagés dans le maïs ; tueurs à projectiles gênés par le maïs (pas de collision mais cache la cible — non mesuré).
- « Pas de 4-lane à Coldwind » (seed, wiki Maze Tiles) : **possiblement périmé** depuis le pool commun 9.2.0 (UNCERTAIN).

**Fractured Cowshed (152)** — STRONG_SECONDARY
- Fixe : « Barn » grand bâtiment **un seul niveau**, 4 entrées, **2 fenêtres**, **gen fixe**, 4 casiers ; pièce murée (lore Hillbilly). 7.1.0 : nouvelles loops dans le main dont 1 palette ; tailles 168 → 156 (3.7.0) → 152 (7.1.0).
- RNG : coffre, sous-sol possibles.
- Lecture (COMMUNITY, seed) : tiles safe enchaînables vers la fenêtre du shack — non vérifiable.
- Plan (HEURISTIC) : le gen du Barn est à côté d'une ressource de chase → à faire tôt quand le tueur est loin.

**Rancid Abattoir (I, 140)** — STRONG_SECONDARY
- Fixe : « Slaughterhouse » grand bâtiment **un seul niveau**, 4 entrées, **3 fenêtres**, **2 palettes**, 7 casiers ; 7.1.0 : 136 → 140, nouveaux tiles dans le main.
- RNG : gen, coffre, sous-sol possibles.
- Lecture (COMMUNITY, seed) : réputée plutôt tueur (petite, peu de ressources dehors) — non mesuré.
- Plan (HEURISTIC) : main riche (2 palettes + 3 fenêtres) = ressource à préserver pour la mi-partie.

**Rotten Fields (160)** — STRONG_SECONDARY
- Fixe : **aucun bâtiment principal** ; seuls landmarks : **Killer Shack** et **Sacrificial Tree** (+ Harvester commun au royaume) [2][17].
- Sous-sol : le wiki ne l'écrit pas pour cette carte ; faute de main, il est **très probablement** toujours au shack (inférence, non sourcée) ; le seed l'affirme comme fait → IMPRÉCIS (probable mais non documenté).
- Seed « presque symétrique, moitié à 2 structures = le haut » (guide Steam) : NON VÉRIFIÉ.
- Tueurs (HEURISTIC) : pas de main fort → dépend des tiles RNG ; grande (160) → mobilité avantagée.

**The Thompson House (I, 152)** — STRONG_SECONDARY
- Fixe : « Farmhouse » **2 étages**, escalier intérieur ; RDC **5 entrées** ; étage : **1 fenêtre**, **gen fixe**, **coffre fixe** ; 4 casiers.
- RNG : sous-sol possible.
- Verticalité : oui (étage avec 1 fenêtre).
- Plan (HEURISTIC) : le gen de l'étage se tient mal sans issue claire → le faire à 1-2, en gardant la fenêtre comme sortie.

**Torment Creek (I, 156)** — STRONG_SECONDARY
- Fixe : « Silo » grand bâtiment **un seul niveau**, 3 entrées, **1 fenêtre**, **gen fixe**, 1 casier.
- RNG : sous-sol, coffre, crochet possibles.
- 9.2.0 (wiki seul) : 168 → 156 ; non mentionné dans les notes officielles.
- 10.1.2 : collision de mur du main laissant passer les projectiles corrigée [12].

### 3.4 Crotus Prenn Asylum (béton, bois brûlé)

Commun : passes 9.2.0, 9.3.0 (**main moins safe : pouvait spawn près des maze tiles et s'y chaîner** ; spawn logic du main de Disturbed Ward revue) et 9.3.2 [4][5][6].
- Tueurs (HEURISTIC) : murs hauts (gris) → furtifs aidés ; le risque de « chaîne main + gyms » a été explicitement visé par BHVR (9.3.0).

**Disturbed Ward (I, 152)** — VERIFIED_MULTI_SOURCE pour la spawn logic, STRONG_SECONDARY pour le reste
- Fixe : « Shock Therapy Centre » **2 étages, 2 escaliers intérieurs** ; RDC : 3 fenêtres (**une toujours bloquée**), 3 entrées ; **gen au RDC et gen à l'étage** (2 gens fixes ; achievement = gen de l'étage) ; **coffre à l'étage** ; plusieurs palettes et casiers.
- RNG : sous-sol possible ; **position/contenu du main soumis à une spawn logic revue en 9.3.0** (fenêtre ↔ palette).
- 9.2.0 (wiki seul) : 172 → 152 sqT.
- Seed « cabane avec gen, ruines, bois brûlés » : NON VÉRIFIÉ.
- Tueurs (HEURISTIC) : 2 gens dans un bâtiment à étages = cluster naturel pour un 3-gen tueur (non garanti selon le reste de la carte).
- Plan (HEURISTIC) : début = les 2 gens du main se font en parallèle si le tueur est loin ; fin = attention au 3-gen centré sur le main.

**Father Campbell's Chapel (I, 140)** — STRONG_SECONDARY
- Fixe : Chapelle, seuls **RDC + 1er étage** accessibles (escalier supérieur bloqué par des gravats) ; **gen à l'étage** ; 3 casiers en bas + 1 en haut ; plusieurs fenêtres. **Clown's Caravan** (zone carnaval : Zoltar, stands, cible) : **plusieurs palettes**, **1 fenêtre** sur la caravane principale.
- RNG : coffre, sous-sol (chapelle) ; totem, coffre, gen (caravane).
- Lecture (COMMUNITY, seed) : « god window » de la chapelle + shack proche — non mesuré.
- Plan (HEURISTIC) : la caravane est une deuxième zone de ressources ; ne pas la brûler en même temps que la chapelle.
- 9.3.0 : collision invisible escaladable près du carnaval corrigée ; 9.6.0 : placeholder de tile [5][10].

### 3.5 Backwater Swamp (boue / bois)

Commun : **Pier (ponton) sur toutes les cartes** [19] ; 9.3.0 : **spawn logic des piers** revue [5] ; passes 9.2.0 et 9.3.2 [4][6] ; 2.5.0 : hauteur des roseaux réduite (visibilité). Page Killer Shack : Swamp = seul royaume sans shack « à son design » (le shack existe) [17].
- Seed « edge tiles sur une colline tout autour, shack séparé par la colline » : NON VÉRIFIÉ.
- Seed « crochets plus denses au centre sur le Swamp (2.5.0) » : la note wiki vise **The Pale Rose** seulement → IMPRÉCIS.

**The Pale Rose (161)** — STRONG_SECONDARY
- Fixe : bateau à aubes **2 niveaux, 3 escaliers extérieurs** ; pont inférieur **4 entrées** ; pont supérieur **2 fenêtres**, **gen fixe (déclenche la corne de brume)** et **coffre fixe** ; plusieurs palettes. **Shrimp Boat toujours présent** : 2 entrées latérales, accès par rampes ou fenêtre. « Crow bomb » : des corbeaux croassent en groupe près du Pale Rose (révèle une position).
- RNG : sous-sol possible (bateau) ; coffre/totem/gen possibles (Shrimp Boat).
- Historique : 215 → 161 (2.3.0) ; 2.5.0 : crochets plus probables au centre.
- Tueurs (HEURISTIC) : carte parmi les plus grandes → mobilité avantagée ; la corne de brume signale la fin du gen du bateau à tous.
- Plan (HEURISTIC) : attention au crow bomb en infiltration ; corne = le tueur sait où vous étiez.

**Grim Pantry (168)** — STRONG_SECONDARY
- Fixe : **Pantry** grand bâtiment ouvert 2 niveaux (plusieurs escaliers), **gen à l'étage** (le réparer **ouvre une vanne extérieure**, accès plus facile au bas), 2 palettes, 6 casiers (2 haut, 4 bas) ; **Cursed Cabin** 2 niveaux, **gen à l'étage** (ouvre sa vanne), 2 palettes, 1 fenêtre, 1 porte, **1 crochet**, 2 casiers ; coffre dans chacun (étage haut/bas selon le cas). 2.5.0 : nouveau crow bomb.
- RNG : reste des tiles.
- Tueurs (HEURISTIC) : grande (168) → mobilité avantagée ; 2 bâtiments à 2 palettes = ressources pour survivants.
- Plan (HEURISTIC) : les 2 gens fixes changent l'accès aux bâtiments une fois faits (vannes) → à anticiper pour les chases de fin.
- Désactivée temporairement avant 10.0.1 (ré-activée) [11].

### 3.6 Léry's Memorial Institute — Treatment Theatre (98 — la plus petite)

STRONG_SECONDARY
- Fixe : carte **intérieure**, **pas de shack, pas de maze tiles, pas de collines**. **Treatment Room** : 2 niveaux, 2 escaliers ; en bas : **gen** (+ crochet très proche possible) ; en haut : galerie avec fenêtres et drops, **coffre à l'étage** ; réparer le gen **ouvre des volets de la galerie → nouveaux vaults**. **Library** : 3 entrées, 1 fenêtre, bureau central, **palette dans un couloir étroit** devant une porte ; gen/sous-sol/totem possibles. Panneaux lumineux clignotants près des salles avec gen (aide à la navigation).
- RNG : **2.7.0 : fenêtres à configuration fixe par salle ; le RNG porte sur les ENTRÉES des salles** ; sous-sol (Treatment Room ou Library) ; répartition des gens.
- Verticalité : Treatment Room seulement.
- Tueurs (HEURISTIC) : très petite, couloirs → tueurs de zone/pièges et M1 moins pénalisés ; tueurs à grande mobilité perdent leur avantage de distance.
- Plan (HEURISTIC) : survivants : lire les panneaux pour trouver les gens ; garder la Treatment Room (vaults ouverts après le gen) pour la mi-partie.
- Seed « fenêtres ET entrées fixes » → **FAUX** pour les entrées (2.7.0).

### 3.7 Red Forest (rondins)

Commun : passes 9.2.0, 9.3.0 (spawn logic impactée), 9.3.2 [4][5][6] ; 6.6.0 : refonte visuelle. « Locker gym exclusif Red Forest/Ormond » (seed) : possiblement périmé (pool commun 9.2.0).

**Mother's Dwelling (I, 152)** — STRONG_SECONDARY
- Fixe : **Hunting Cabin** 2 niveaux, escaliers **intérieur et extérieur** vers le balcon ; RDC : 3 entrées, 4 fenêtres (**une toujours bloquée**), 2 casiers ; étage : 4 entrées, 1 fenêtre + 1 vault sur la terrasse, rebords à sauter ; **gen sur le balcon (fixe)**. **Smoke House** : 2 niveaux, 3 entrées RDC, étage avec 1 fenêtre et 1 ouverture.
- RNG : sous-sol possible (cabin) ; coffre possible (cabin ou smoke house).
- Historique : 188 → 152 (7.4.0) ; longtemps la plus grande carte. (Le « 200 » du seed = version 2v8.)
- Tueurs (HEURISTIC) : 2 bâtiments à étages proches du centre ; M1 pénalisés par les rebords.
- 9.6.0 : arbre qui pouvait spawn sur le gen près de la smoke house corrigé [10].

**The Temple of Purgation (136)** — STRONG_SECONDARY
- Fixe : **Temple** de pierre au centre, **3 niveaux accessibles**, plusieurs entrées ; **1 gen (catacombes, achievement) qui active structures et portes du temple une fois réparé** ; plusieurs casiers et vaults ; pluie + brume.
- Historique : 172 → 156 (3.7.0) → 136 (7.4.0).
- Tueurs (HEURISTIC) : petite + temple central → tueurs M1 moins pénalisés ; verticalité forte pour les survivants.
- Plan (HEURISTIC) : le gen du temple modifie le bâtiment → savoir s'il est fait avant d'y entrer en chase.

### 3.8 Springwood — Badham Preschool (I, 144)

STRONG_SECONDARY (seule Badham I en matchmaking public depuis 8.6.0 ; II-V en Custom Games)
- Fixe : **Preschool** 2 niveaux (RDC + chaufferie/boiler room à lumière rouge) — **3 niveaux s'il contient le sous-sol** ; RDC : **4 entrées**, les **latérales fermées par des murs cassables par défaut** ; **gen fixe** ; plusieurs palettes et casiers. **Pas de maze tiles** ; Killer Shack présent. 2.5.0 : **crochet garanti dans la chaufferie si le sous-sol est au shack**. Palette du couloir d'entrée (côté parking) retirée.
- RNG : sous-sol (Preschool ou shack), coffre possible, maisons (le seed dit : maison 2 étages + maison de Freddy qui échangent leurs positions « selon la variante » — **non vérifié**, et moot : seule I tourne).
- Lecture (COMMUNITY, seed) : réputée très favorable aux survivants (maisons + rue, beaucoup de palettes) — pas de chiffre.
- Tueurs (HEURISTIC) : beaucoup de bâtiments = murs hauts et fenêtres → M1 désavantagés ; tueurs anti-loop / à distance en ligne de rue avantagés.
- Plan (HEURISTIC) : tueur : casser tôt les murs cassables de la Preschool s'il veut réduire le main ; survivants : préserver les palettes de clôture.
- Désactivée temporairement avant 10.0.1 [11].
- Seed « fenêtre ajoutée 8.3.0 retirée 8.3.1 » : NON VÉRIFIÉ.

### 3.9 Gideon Meat Plant — The Game (142 = 76 haut + 66 bas)

STRONG_SECONDARY
- Fixe : **seule carte 100 % intérieure avec maze tiles** ; **2 étages sur toute la surface** ; **pas de shack** ; **Bathroom** (landmark) : salle longue et étroite dans un coin du **RDC**, **gen**, casiers, **coffre** ; **escalier du sous-sol toujours derrière la Bathroom** (sous-sol **fixe**). **Tous les gens sont reliés à des portes coulissantes** : une porte fermée ⇒ un gen non terminé à proximité. **Pig Vat** : ouverture en bas permettant de vaulter entre les étages. Freezer Room, Incinerator/Rack présents (lore).
- RNG : type des gyms intérieurs, autres gens.
- Seed (Control Room « 12 h », coins « pallet stairs »/« hole room ») : **NON VÉRIFIÉ** (absent du wiki ; convention de callout du seed).
- Verticalité : totale (2 étages) → sons et Terror Radius trompeurs (HEURISTIC).
- Tueurs (HEURISTIC) : couloirs et étages → zone/pièges aidés ; tueurs dépendant de l'ouïe gênés par la verticalité (les deux camps).
- Plan (HEURISTIC) : utiliser les portes coulissantes comme « radar à gens » ; ne jamais se faire descendre près de la Bathroom (sous-sol fixe).

### 3.10 Yamaoka Estate (bois moussu, bambou)

Commun : **Arbor** sur toutes les cartes ; structures Shrine/Patio du royaume ; collines à deux accès possibles [19][17] ; passes 9.2.0, 9.3.0, 9.3.2 [4][5][6]. Jizō (statues) qui se tournent vers le joueur (Sanctum) — cosmétique.

**Family Residence (I, 156)** — STRONG_SECONDARY
- Fixe : résidence japonaise 2 niveaux dont **seul le RDC est accessible**, plusieurs vaults ; **2 fenêtres** ; **gen fixe** ; 2 casiers. Colline propre à la carte (érable, lanternes ; gen possible au sommet).
- RNG : sous-sol possible.
- Tueurs (HEURISTIC) : main plat à plusieurs vaults → ressource moyenne ; royaume à murs hauts → furtifs aidés.

**Sanctum of Wrath (I, 156)** — STRONG_SECONDARY
- Fixe : **Shrine** moyen 2 niveaux, **4 escaliers** vers le sommet, **fenêtres sur les rambardes**, drops, **palette à côté de la statue**, **gen fixe**.
- RNG : sous-sol possible.
- Seed « seule carte où le shack a 2 emplacements possibles (bas gauche/droite) » : **NON VÉRIFIÉ** (absent du wiki).
- Tueurs (HEURISTIC) : shrine très vertical → M1 gênés ; tueurs capables de monter vite (ou de couper par le bas) mieux lotis.
- 10.0.0 : bugfix — le tueur pouvait bloquer l'entrée du sous-sol sur le côté de la structure principale (confirme un spawn de sous-sol au Shrine) [KB 550].

### 3.11 Ormond (neige, lumineux)

Commun : passes 9.2.0 et 9.3.2 (« Ormond ») ; 9.3.0 nomme **Mount Ormond Resort** seulement [4][5][6].

**Mount Ormond Resort (I, 156)** — VERIFIED_MULTI_SOURCE pour 9.3.0, STRONG_SECONDARY sinon
- Fixe : **Chalet** 3 niveaux (monter par l'escalier, sauter des balcons), **gen fixe**, 2 casiers, plusieurs fenêtres ; **Snowcat** (chenillette orange + **palette** fixe près d'un tas de rochers) ; **Chairlift** (cabane surélevée, escalier arrière, **3 drops : fenêtre, mur cassable, ouverture**).
- RNG : sous-sol possible (chalet) ; coffre possible (Snowcat, Chairlift) ; totem possible (Chairlift).
- 7.5.0 : abords avant/arrière du chalet refaits ; 9.3.0 : palettes moins safe + spawn logic fenêtre/palette.
- Visibilité : l'une des cartes les plus lumineuses (wiki) → HEURISTIC : furtifs désavantagés, lecture à distance facilitée pour les deux camps.
- Plan (HEURISTIC) : Chalet (3 niveaux) + Chairlift = deux zones de chase verticales à répartir dans la partie.

**Ormond Lake Mine (132)** — STRONG_SECONDARY
- Fixe : **Mine Building** 2 niveaux, **4 accès à l'étage** (2 extérieurs, 2 intérieurs), **gen garanti à l'étage** ; palettes : **3 emplacements à l'étage, 2 au RDC** (« spawns » : le wiki ne dit pas si toutes apparaissent → le « 5 palettes » du seed est IMPRÉCIS) ; 3 fenêtres (2 à l'étage près du gen, 1 au RDC à côté d'un mur cassable) ; **tunnel de glace souterrain vers la Mine Tower**. **Mine Tower** (à côté) : **gen garanti + palette garantie**, fenêtre à l'étage, drops, drop vers le milieu du tunnel. **Ascenseur scripté** au bord de la carte qui s'écrase quand un joueur approche (bruit fort).
- RNG : reste des tiles, sous-sol (non documenté).
- Tueurs (HEURISTIC) : 2 gens fixes **proches l'un de l'autre** (building + tower) → cluster naturel de fin de partie ; petite carte → M1 moins pénalisés.
- Plan (HEURISTIC) : survivants : ne pas laisser les gens du complexe Mine pour la fin (3-gen facile à tenir) ; l'ascenseur trahit un passage.

### 3.12 Hawkins National Laboratory — The Underground Complex (138, estimation)

VERIFIED_MULTI_SOURCE pour 9.3.0, STRONG_SECONDARY sinon
- Fixe : intérieur **2 niveaux** avec passerelles ; **pas de shack, pas de maze tiles** ; **Exit DOORS** coulissantes au lieu d'Exit Gates (plafond trop bas) ; **Rift Lab** : 2 niveaux reliés par escalier ; en bas labo fermé + le Rift, accès par un vault ou une porte ; **fenêtre à côté d'un bureau**, **palette entre un bureau et le mur au fond du labo** ; étage avec drops ; casiers en bas. **Interrogation Rooms** à l'étage (vaults, palettes possibles) ; **Isolation Room** voisine : **gen fixe**. Une moitié de carte (côté Rift Lab) en visuel « Upside Down » (plus sombre, cendres).
- RNG : **sous-sol : 2 emplacements possibles dans le Rift Lab** ; gen du Rift Lab (étage) possible ; crochet, coffre, totem possibles.
- 9.3.0 : navigation améliorée, **au moins une porte ouverte en permanence sur chaque côté des grandes salles**, nouvel accès au gen au-dessus de la control room.
- Tueurs (HEURISTIC) : couloirs/portes → zone/pièges et tueurs qui coupent les chemins aidés ; ouïe brouillée par les 2 niveaux.
- Plan (HEURISTIC) : ne pas se faire descendre près du Rift Lab (sous-sol) ; côté Upside Down plus sombre = meilleur pour se cacher, pire pour lire le tueur.
- Seed « la plus mortelle (54,7 %) » : chiffre supprimé (§6).

### 3.13 Grave of Glenvale — Dead Dawg Saloon (I, 136)

STRONG_SECONDARY (+ correction officielle 9.3.0)
- Fixe : **Saloon** 2 étages, beaucoup de fenêtres aux 2 niveaux, **gen sur le porche de l'étage** ; **Gallows** près du Saloon, du shack et de l'entrée de la ville : **gen à côté du pendu** (le terminer ouvre 2 trappes qui font tomber les survivants), **2 casiers sous le plancher** ; **Water Tower + Windmill** + petite cabane : **gen** (côté chemin **ou** près de la cabane), **palette entre les bases**, **fenêtre dans la cabane**, 2 casiers ; **shack western avec mur cassable** ; **pas de collines**. Carte au crépuscule (seule). Gyms du royaume (L-T et 4-lane) **toujours avec un mur cassable** [17].
- RNG : sous-sol possible (Saloon) ; coffres, totems, crochet possibles.
- ⚠️ Wiki « totem garanti derrière le water tower » → **corrigé en 9.3.0** (« a totem was guaranteed to spawn in the same place » = bug) → périmé.
- Seed (Western gym, « Sandwich gym », « Double L ») : noms communautaires NON VÉRIFIÉS.
- Tueurs (HEURISTIC) : 3 gens fixes, dont Saloon + Gallows proches → cluster ; ville = murs et bâtiments nombreux, murs cassables partout → tueurs qui cassent vite les murs (ou qui s'en moquent) aidés.
- Plan (HEURISTIC) : tueur : casser les murs cassables des gyms tôt ; survivants : les gens Saloon/Gallows proches forment un 3-gen potentiel.

### 3.14 Silent Hill — Midwich Elementary School (113,5 = 64 bas + 49,5 haut)

STRONG_SECONDARY
- Fixe : intérieur **2 niveaux** (+ extérieurs) ; **pas de shack** ; **Courtyard** central (landmark) : **gen**, nombreux casiers, **nombreuses palettes**, **2 fenêtres**, plusieurs murs cassables, nombreuses entrées ; **Clock Tower Secret Room** : réparer le gen du **Chemistry Lab** puis celui de la **Music Room**, puis déclencher l'EGC → la porte s'ouvre ; coffre garanti dedans (peut être vide selon l'ordre). Achievement : gen de la Music Room **ou** du Chemistry Lab.
- RNG : totem, coffre possibles (Courtyard) ; gens des salles.
- 8.2.0 : **LOS des couloirs réduite**, nouveaux tiles intérieurs/extérieurs.
- Tueurs (HEURISTIC) : très petite et intérieure → M1/zone aidés ; tueurs à distance moins aidés depuis 8.2.0 (couloirs coupés).
- Plan (HEURISTIC) : Courtyard = cœur des ressources ; ne pas l'épuiser tôt.
- Orientation « côté toilettes + réception = bas de carte » (seed) : convention, NON VÉRIFIÉE.

### 3.15 Raccoon City — RPD East Wing / RPD West Wing (non mesurées)

STRONG_SECONDARY — deux cartes distinctes, **toutes deux en rotation** (exemptées de 8.6.0) ; RPD original = 2v8 seulement.
- Fixe (les deux) : **Main Hall** (statue) : **gen soit en bas près du comptoir, soit à mi-hauteur au pied de la statue** (2 positions → RNG entre deux) ; **pas de shack, pas de maze tiles** ; **trou dans le sol de la Library vers la Dark Room** (les deux ailes) ; sur le RPD **original**, le wiki décrit **3 emplacements d'Exit Gates** et **2 emplacements de sous-sol** (escalier ex-chenil côté est, escalier sous la Dark Room côté ouest) — leur répartition exacte par aile n'est **pas documentée** (UNCERTAIN) ; 7.2.0 : porte cour d'entrée → Fire Escape élargie (**un crochet est toujours juste derrière**) ; toit accessible par le Fire Escape (East) ; passerelle de la Library bloquée (les deux).
- **East Wing** : moitié ouest (Operations, Records, S.T.A.R.S., Armurerie…) bloquée ; Break Room ouverte (mur retiré).
- **West Wing** : moitié est haute (Interrogation, Observation, Press Room, Break Room) bloquée ; **S.T.A.R.S. Office ouvert sur l'Armurerie** ; zone extérieure agrandie derrière Safety Deposit/Dark Room ; accès au toit bloqué.
- Tueurs (HEURISTIC) : intérieur à étages + portes → zone/pièges aidés ; navigation complexe = avantage au camp qui connaît la carte.
- Plan (HEURISTIC) : repérer tôt la position du gen du Main Hall (bas ou statue) ; repérer où le sous-sol est apparu dès la première rotation.

### 3.16 Forsaken Boneyard (grès, racines)

Pas dans les passes palettes 9.2.0/9.3.0/9.3.2. Offrande Crow's Eye = royaume, 20 % [19].

**Eyrie of Crows (148)** — STRONG_SECONDARY
- Fixe : **The Eyrie** grande tour dans la **moitié haute** de la carte ; plusieurs entrées au sol, passerelles à l'étage (nid), **balcon accessible tout autour** ; **gen fixe** ; plusieurs fenêtres, **plusieurs murs cassables**, casiers.
- RNG : totem (4 emplacements listés), coffre, crochet, sous-sol possibles.
- 6.5.0 : 156 → 148, forme ~carrée, **maze tiles éloignés du main et du shack** (anti-combos), feuillage ajouté (aide aux pièges).
- Tueurs (HEURISTIC) : main vertical et à murs cassables ; tueurs à pièges favorisés par le feuillage (intention déclarée 6.5.0).
- Plan (HEURISTIC) : la tour est dans une moitié → orientation facile ; gens côté opposé plus isolés.

**Dead Sands (140, 8.6.0)** — STRONG_SECONDARY (fiche **peu documentée**)
- Fixe : **centrée sur le Killer Shack**, **pas d'Eyrie** ; statues sentinelles (décor). Ajoutée « pour étendre le lore » et « pour nerfer l'offrande du royaume » (notes 8.6.0 citées par le wiki).
- RNG : tout le reste (non documenté).
- Sous-sol : probablement au shack faute de main (inférence non sourcée).
- Tueurs / plan (HEURISTIC) : sans main, la carte dépend des tiles RNG ; shack central = sous-sol central probable.

### 3.17 Withered Isle (planches blanches, végétation)

Pas dans les passes palettes 9.x. Garden of Joy = seule carte avec **2 designs de murs de gyms** [17]. « Pas de pallet gym ni de 4-lane » (seed, wiki) : possiblement périmé (pool commun 9.2.0). « Impostor jungle gyms » (seed) : NON VÉRIFIÉ.

**Garden of Joy (164)** — STRONG_SECONDARY
- Fixe : **Mansion** 2 niveaux : RDC salon/salle à manger/cuisine, **4 entrées** ; étage 4 chambres + débarras, accès au toit du porche ; **gen fixe à l'étage** ; **coffre garanti dans le débarras** (2e coffre possible) ; plusieurs fenêtres ; **1 à 2 palettes**. **Parking Lot** (bout de route, opposé au shack) : **palette** (voiture grise / poubelle) et **fenêtre** sur clôture fixes.
- RNG : **Gazebo OU Greenhouse** (mutuellement exclusifs) ; **Treehouse OU Train Car** (mutuellement exclusifs) ; Greenhouse : fenêtre **ou** palette ; sous-sol, totem (4 emplacements), crochet sur le toit possibles.
- 7.4.0 : passe gameplay réduisant la force de certains tiles.
- Lecture (COMMUNITY, seed) : « dining room window » très forte — non mesuré.
- Tueurs (HEURISTIC) : grande (164) → mobilité avantagée.
- Seed : présente Greenhouse, Gazebo, Treehouse, Train car comme tous présents → **IMPRÉCIS** (paires exclusives).

**Greenville Square (160)** — STRONG_SECONDARY
- Fixe : **Theatre** (cinéma) : **gen dans la cabine de projection**, 6 casiers, **coffre garanti dans les toilettes** (jusqu'à 5 coffres possibles), **2 palettes** (arcade, salle de projection), **3 fenêtres** (escalier extérieur, toilettes, comptoir) ; escalier intérieur + extérieur, un drop-down et un drop-off à l'étage, **rampe à sens unique** au RDC ; la palette de l'arcade fait sonner les flippers (bruit). **Pilgrim Statue** : clôture circulaire à 4 ouvertures.
- RNG : gen et coffre possibles près de la statue ; totem (3 emplacements) ; sous-sol possible.
- Tueurs (HEURISTIC) : ville à bâtiments → LOS cassée ; théâtre à étages = ressource forte.
- Plan (HEURISTIC) : le projecteur s'allume au gen de la cabine (signal visuel).

**Freddy Fazbear's Pizza (148, 9.0.0)** — STRONG_SECONDARY (fiche **peu documentée**)
- Fixe : **Pizzeria** (landmark) : **gen devant la scène** (le réparer lance un show des animatroniques, bruit) ; arcade, cuisine, toilettes employés, salle parts & service (décor).
- RNG : **ball pit dans l'arcade lorsque le sous-sol est au Killer Shack** (le ball pit remplace l'accès au sous-sol dans la pizzeria) ; reste non documenté.
- Seed « ball pit / arcade peut apparaître **à la place du Killer Shack** » → **FAUX** (c'est quand le sous-sol est AU shack).
- Tueurs / plan (HEURISTIC) : bâtiment principal intérieur à plusieurs salles → zone/pièges aidés dedans ; pas assez de données pour aller plus loin.

**Fallen Refuge (128, 9.1.0)** — VERIFIED_MULTI_SOURCE (fiche **peu documentée**)
- Fixe : **Prison Tower** (tile thématique The Walking Dead) = « variante d'un Short Wall Jungle Gym » ; **gen fixe dans la tour** ; rôdeurs pendus / portes barricadées qui s'agitent (bruit) au passage ou au gen.
- RNG : reste (carte ≈ Withered Isle « shack » + tile TWD ; nom de fichier « ApplePieShack »).
- Tueurs (HEURISTIC) : 3e plus petite carte → M1 moins pénalisés, mobilité moins utile.
- Plan (HEURISTIC) : la tour est une loop de type jungle gym, pas un main à étages → ne pas la surestimer.

### 3.18 The Decimated Borgo (turquoise depuis 8.0.0)

Passe palettes 9.2.0 seulement [4]. 8.0.0 : palette de couleurs rouge → turquoise (accessibilité, lisibilité du sang/auras) — le seed dit « éclairage plus clair » → IMPRÉCIS.

**The Shattered Square (144)** — STRONG_SECONDARY
- Fixe : **Gathering Hall** (petite taverne) **dans un coin** depuis 7.3.0 : **gen à l'étage**, **coffre garanti à l'étage** (2e possible), 6 casiers, **1 palette au RDC**, **2 fenêtres** (étage ; zone clôturée à côté), **2 entrées RDC, 2 drops depuis l'étage** ; **The Tree** (arbre aux racines pourpres + puits). **Pas de collines**.
- RNG : **Marketplace OU Gallows** (exclusifs) — Marketplace : plateforme surélevée, 2 escaliers, jusqu'à 2 palettes entre étals, 2 casiers ; Gallows : 1 escalier + 1 rampe, **fenêtre** sur la clôture, 2 casiers ; gen/totem/crochet possibles aux deux.
- 7.3.0 : 168 → 144, carte carrée 12×12, LOS bloquée par l'arrangement des tiles ; 7.3.2 : **plus de palettes max** (anti-dead zones) **et** loops moins safe.
- Tueurs / plan (HEURISTIC) : main en coin → ne pas s'y replier en fin si les gates sont à l'opposé.

**Forgotten Ruins (132 = 92 surface + 40 donjon, 8.0.0)** — STRONG_SECONDARY
- Fixe : **Rotted Tower** + **donjon souterrain** (Torture Room : gen de l'achievement → fixe) ; **Passages** = portes magiques qui téléportent d'un point à l'autre ; 8.0.2 : **au moins 4 crochets toujours au donjon**, Passages placés loin des palettes/fenêtres ; 8.1.0 : plus de palettes en surface.
- RNG : reste.
- Lecture (COMMUNITY, seed) : réputée très favorable au tueur (donjon étroit, peu de loops) — non mesuré.
- Tueurs (HEURISTIC) : donjon = couloirs → zone/pièges ; crochets garantis en bas → descendre au donjon est dangereux pour un survivant.
- Plan (HEURISTIC) : survivants : faire le gen du donjon tôt et en sortir ; utiliser les Passages pour casser une chase (les deux camps peuvent les utiliser — portée exacte non vérifiée ici).

### 3.19 Dvarka Deepwood

Pas dans les passes palettes 9.x. Chaque carte a **sa propre offrande de carte** (pas d'offrande de royaume) : Alien Flora (Toba), Airlock Doors (Nostromo), 20 % [19].

**Toba Landing (136, 7.0.0)** — STRONG_SECONDARY
- Fixe : **The Base** (vaisseau) **3 niveaux** : **niveaux 1 et 2 non reliés par l'intérieur** (sortir pour passer), niveau 3 = pont avec **gen fixe** ; plusieurs fenêtres, palettes (une au niveau 1 + sous/autour du vaisseau) ; **Alien Flower** et **Space Rover** : **chacun gen + 2 casiers + 1 palette + 1 fenêtre**, **toujours dans des coins opposés, positions interchangeables** (RNG laquelle est où). **Pas de collines**.
- RNG : sous-sol possible **sous** le vaisseau ; coffres (2 possibles), totems.
- Tueurs (HEURISTIC) : 3 gens fixes très écartés (centre + 2 coins opposés) → carte « à traversées » ; mobilité avantagée malgré la taille moyenne.
- Plan (HEURISTIC) : tueur : ne pas se laisser tirer entre les deux coins ; survivants : les deux structures de coin sont des spots de chase fiables (fenêtre + palette fixes).
- Seed « moitié gauche = murs plante, droite = roche » : NON VÉRIFIÉ.

**Nostromo Wreckage (152, 7.2.0)** — STRONG_SECONDARY
- Fixe : épave **un seul niveau** (couloirs), beaucoup de fenêtres et drops, **3 rampes** ; **2 gens garantis** (Mess Hall ; fond de l'aile gauche) + 1 possible (aile droite) ; **coffre fixe au Mess Hall** ; **2 pièges « coolant vent » réarmables** (ralentissent fortement le joueur touché ; les survivants peuvent les réarmer) ; salle secrète MU/TH/UR (Keycard sur un cadavre aléatoire → coffre garanti lampe ou toolbox). **Narcissus** (coin) : 4 entrées, 2 casiers, **palette fixe**. **Pas de shack**, **pas de collines**. **Exit Gates prévisibles** : une le long du segment de mur rectiligne du côté gauche, l’autre sur la moitié haute du long mur rectiligne du côté droit (repère wiki : main en haut).
- RNG : sous-sol (dehors du Nostromo **ou** Narcissus) ; 3e gen ; totem.
- Tueurs (HEURISTIC) : 2-3 gens dans un seul bâtiment → cluster ; gates prévisibles → tueur peut préparer la fin ; les vents punissent le tueur qui suit à travers.
- Plan (HEURISTIC) : survivants : faire tôt les gens de l'épave (sinon 3-gen) ; utiliser les vents en chase.

### 3.20 Sleepless District — Trickster's Delusion (9.5.0, 17/03/2026 ; taille non mesurée)

STRONG_SECONDARY (fiche **peu documentée** côté stratégie ; carte récente)
- Fixe : **Night Club** (landmark) **un seul niveau** : **gen fixe** près du balcon au-dessus de la piste, **palette fixe** proche, **1 fenêtre** en backstage, plusieurs entrées ; piste de danse inaccessible. **Market** (zone ouverte, **Killer Shack adjacent**) : **gen fixe**, **2 palettes fixes** (marché + food trucks). **High Streets** : 5 commerces ; gens possibles (restaurant, karaoké, supérette) ; **2 fenêtres** (karaoké ; gift store ↔ supérette). **Low Streets** : 10 bâtiments + ruelles ; gens possibles (2 supérettes, 1 storage, bar, record store) ; **4 emplacements de fenêtres, seulement 2 actifs** (paires listées par le wiki).
- RNG : sous-sol possible (Night Club, sinon shack) ; totems ; palettes des rues ; 30 % de chance d'une séquence de porte de garage (cris) ; corps qui tombe (Low Streets).
- Scripts utiles : gen du Night Club → brouillard dissipé + musique audible à proximité ; gen du Market → feu d'artifice **fort** (signal sonore pour tous).
- Tueurs (HEURISTIC) : bâtiments serrés + ruelles → LOS courte, zone/pièges et furtifs plausibles ; données insuffisantes.
- Plan (HEURISTIC) : Night Club + Market = 2 gens fixes, le Market est collé au shack.
- 10.0.0 : navigation des bots corrigée ; nombreuses corrections de collisions 9.5-10.1 [KB 538-558].

### 3.21 Carte retirée — Haddonfield / Lampkin Lane (132) — HISTORICAL, NON LIVE

- Retirée : hors rotation après le 19/01/2026 (FAQ) ; 9.4.0 retire aussi les Custom Games [7][8]. Myers' House (3 fenêtres RDC + 2 entrées, 2 fenêtres étage, sous-sol toujours via l'escalier intérieur), Doyle House, Wallace House ; pas de shack, pas de maze tiles, pas de collines ; 7.7.0 : 152 → 132, loops affaiblies. Passes 9.2.0/9.3.0 appliquées avant son retrait. **À ne plus présenter comme jouable.**

---

## 4. Synthèse transversale (HEURISTIC — non mesurée, à valider par données)

| Profil de carte | Cartes (LIVE) | Ce que ça change | Archétypes aidés | Archétypes gênés |
|---|---|---|---|---|
| Grande (≥ 160 sqT) | Shelter Woods, Azarov's, Grim Pantry, Wretched Shop, Garden of Joy, Pale Rose, Ironworks, Suffocation Pit, Rotten Fields, Greenville | Distance entre gens, rotations longues | mobilité | M1/lents |
| Petite (≤ 136 sqT) | Treatment Theatre, Midwich, Fallen Refuge, Coal Tower, Ormond Lake Mine, Forgotten Ruins, Temple, Toba, Dead Dawg | Pression rapide, gates vite couvertes | M1, zone | survivants dépendant de la distance |
| Intérieure / multi-niveaux intégrale | The Game, Midwich, RPD East/West, Underground Complex, Treatment Theatre (+ donjon de Forgotten Ruins) | Goulets, sons trompeurs entre étages, peu ou pas de shack | zone/pièges | tueurs dépendant de la LOS longue |
| Murs hauts / faible LOS | Autohaven (surtout), MacMillan, Asylum, Yamaoka | Casser la LOS, mindgames | furtifs | distance/LOS |
| Lumineuse / ouverte | Mount Ormond Resort, Coldwind (jour) | Lecture à distance pour les deux camps | distance/LOS | furtifs |
| Cluster de gens **fixes** proches | Ormond Lake Mine (Building + Tower), Nostromo (2-3 gens dans l'épave), Disturbed Ward (2 gens du main), Dead Dawg (Saloon + Gallows) | 3-gen de fin facile à tenir si laissé | tueur défensif | — |
| Sous-sol à emplacement fixe | The Game (derrière la Bathroom), Wreckers' Yard (shack central) ; probable : Rotten Fields, Dead Sands | Proxy-camp du sous-sol prévisible | tueur | survivants descendus à proximité |

Règles de plan communes (HEURISTIC) :
- **Début** : identifier main + gens fixes du main ; ne pas lancer à 2 le gen d'un main vertical si le tueur est proche (on brûle la meilleure ressource de chase).
- **Milieu** : garder main / structures fortes comme « banque » de chase ; surveiller le cluster de gens fixes (liste ci-dessus).
- **Fin** : sur les cartes à gates prévisibles (Nostromo) ou à sous-sol fixe, anticiper ; ailleurs, les gates sont RNG sur le pourtour — ne rien présumer.

---

## 5. Qualité de la documentation par carte (§29)

| Niveau | Cartes |
|---|---|
| Bien documentées (main + landmarks + changelog) | Coal Tower, Ironworks, Gas Heaven, Wreckers' Yard, Disturbed Ward, Chapel, Pale Rose, Grim Pantry, Treatment Theatre, Mother's Dwelling, Badham, The Game, MOR, Ormond Lake Mine, Underground Complex, Dead Dawg, Midwich, RPD East/West, Garden of Joy, Greenville, Shattered Square, Toba, Nostromo, Trickster's Delusion |
| Moyennement | Groaning Storehouse, Shelter Woods, Suffocation Pit, Azarov's, Blood Lodge, Wretched Shop, Cowshed, Rancid Abattoir, Thompson, Torment Creek, Temple, Family Residence, Sanctum, Eyrie, Forgotten Ruins |
| **Peu documentées** (à compléter) | **Rotten Fields**, **Dead Sands**, **Freddy Fazbear's Pizza**, **Fallen Refuge** (et Trickster's Delusion côté stratégie : carte de mars 2026) |
| Non documenté pour toutes | positions des gates, nombre de palettes par carte, spawns exacts des gens hors bâtiments, taux de palettes après 9.3.2 |

---

## 6. Kill rates

- **Aucun kill rate n'est donné.** Le seed mélange 3 fenêtres (8 dernières semaines, « 10.0.1 », mai/oct. 2025), sans n, avec des erreurs de recopie (audit phase 0). Aucune source lisible cette session ne fournit **une seule fenêtre datée avec n par carte** : NightLight renvoie 403 ; les posts « Stats » officiels BHVR archivés (KB 503, 540, 543, 554) ne contiennent **aucune** statistique par carte (texte) — les infographies ne sont pas lisibles.
- Les mentions « réputée tueur / survivant » ci-dessus sont COMMUNITY (réputation) ou HEURISTIC, **jamais** des faits.

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| B8-001 | 20 royaumes et 44 cartes 1v4 en rotation publique (wiki : 21 royaumes / 46 cartes dont Lampkin Lane retirée et RPD original 2v8-only) | [1][7] | LIVE 10.1.2a | VERIFIED_MULTI_SOURCE |
| B8-002 | Lampkin Lane hors rotation après le 19/01/2026 ; retirée de la rotation et des Custom Games en 9.4.0 | [7][8] | 9.4.0 | VERIFIED_PRIMARY |
| B8-003 | 8.6.0 : variantes II+ retirées du matchmaking public, jouables en Custom Games ; RPD East/West exemptées | [1][2] | 8.6.0 | STRONG_SECONDARY |
| B8-004 | 9.2.0 : densité de palettes revue sur 10 royaumes (liste) ; pool de maze tiles commun à tous les royaumes | [4] | 9.2.0 | VERIFIED_PRIMARY |
| B8-005 | 9.3.0 : sûreté des loops réduite (MacMillan, Asylum, Red Forest, Yamaoka, Haddonfield, Mount Ormond Resort) ; spawn logic main Disturbed Ward / piers Swamp ; main Asylum moins safe | [5] | 9.3.0 | VERIFIED_PRIMARY |
| B8-006 | 9.3.0 : Underground Complex — ≥ 1 porte ouverte par côté des grandes salles, nouvel accès au gen du Rift Lab | [5][2] | 9.3.0 | VERIFIED_MULTI_SOURCE |
| B8-007 | 9.3.0 : Autohaven éclairci + brouillard ajouté | [5] | 9.3.0 | VERIFIED_PRIMARY |
| B8-008 | 9.3.0 : le totem « garanti » de Dead Dawg Saloon était un bug, corrigé | [5] | 9.3.0 | VERIFIED_PRIMARY |
| B8-009 | 9.3.2 : loops trop courtes rallongées sur 7 royaumes (liste) | [6] | 9.3.2 | VERIFIED_PRIMARY |
| B8-010 | 9.6.0 : chance égale pour chaque carte ; Realm Repeat Prevention maintenue | [10] | 9.6.0 | VERIFIED_PRIMARY |
| B8-011 | 10.0.1 : Badham, Grim Pantry, Pale Rose ré-activées | [11] | 10.0.1 | VERIFIED_PRIMARY |
| B8-012 | Torment Creek 168→156 et Disturbed Ward 172→152 en 9.2.0 | wiki [2] seul | 9.2.0 | STRONG_SECONDARY (absent des notes) |
| B8-013 | Tailles LIVE (sqT) : cf. table §1.2 (mesures wiki, pas de mesure officielle) | [1][3] | LIVE | STRONG_SECONDARY |
| B8-014 | Treatment Theatre : fenêtres fixes par salle, RNG sur les entrées (2.7.0) | [2] | 2.7.0 | STRONG_SECONDARY |
| B8-015 | The Game : escalier du sous-sol toujours derrière la Bathroom ; gens reliés aux portes coulissantes | [2] | LIVE | STRONG_SECONDARY |
| B8-016 | Wreckers' Yard : shack central, contient toujours le sous-sol | [2] | LIVE | STRONG_SECONDARY |
| B8-017 | Toba Landing : Alien Flower et Space Rover toujours en coins opposés, positions interchangeables | [2] | LIVE | STRONG_SECONDARY |
| B8-018 | Nostromo : 2 gens garantis (+1 possible), 2 vents réarmables, gates à spawns prévisibles | [2] | LIVE | STRONG_SECONDARY |
| B8-019 | Forgotten Ruins : ≥ 4 crochets toujours au donjon (8.0.2) | [2] | 8.0.2 | STRONG_SECONDARY |
| B8-020 | Freddy Fazbear's Pizza : ball pit dans l'arcade quand le sous-sol est au shack | [2] | LIVE | STRONG_SECONDARY |
| B8-021 | Garden of Joy : Gazebo XOR Greenhouse, Treehouse XOR Train Car | [2] | LIVE | STRONG_SECONDARY |
| B8-022 | Shattered Square : Marketplace XOR Gallows ; main en coin depuis 7.3.0 | [2] | 7.3.0 | STRONG_SECONDARY |
| B8-023 | Trickster's Delusion : gens fixes Night Club + Market ; Low Streets 4 emplacements de fenêtres dont 2 actifs | [2][9] | 9.5.0 | STRONG_SECONDARY |
| B8-024 | 2v8 : pool wiki de 26 cartes supersized (V1-V9), dont RPD original et Nostromo (10.1.2) | [18][12][15][10] | LIVE (mode événementiel) | VERIFIED_MULTI_SOURCE (partiel) |

## Conflits

#### CONFLICT-B8-01 : totem garanti de Dead Dawg Saloon
- Source A : wiki Dead Dawg Saloon (Trivia) — « one of few Maps where there is a guaranteed totem spawn location, behind the water tower ».
- Source B : notes 9.3.0 (KB 529) — « Fixed an issue in the Dead Dawg Saloon map where a totem was guaranteed to spawn in the same place ».
- Hypothèse : trivia wiki non mise à jour.
- Résolution : la note officielle prime → plus de totem garanti (LIVE).

#### CONFLICT-B8-02 : réductions de taille 9.2.0 (Torment Creek, Disturbed Ward)
- Source A : pages wiki (« Patch 9.2.0 Change : reduced the Map size from 168 sqT to 156 sqT » ; 172 → 152).
- Source B : notes officielles 9.2.0 (KB 523) — aucune mention de taille ; seule la passe palettes est listée.
- Hypothèse : changement non documenté (effet de bord de la passe palettes), ou erreur d'attribution de patch côté wiki.
- Résolution : UNRESOLVED (valeur actuelle 156 / 152 cohérente entre Datatable et pages ; seule l'attribution 9.2.0 est incertaine).

#### CONFLICT-B8-03 : exclusivités de maze tiles par royaume
- Source A : wiki Maze Tiles (Locker Gym = Red Forest/Ormond ; Labyrinth = Yamaoka/Ormond/Withered Isle ; pas de 4-Wall à Coldwind/Withered Isle ; pas de Pallet Gym à Withered Isle ; Debris Pile = MacMillan/Red Forest/Yamaoka/Ormond).
- Source B : 9.2.0 (KB 523) — « Updated all Realms to draw from the same pool of available maze tile layouts ».
- Hypothèse : la page wiki n'a pas été mise à jour après 9.2.0 ; ou « layouts » désigne les dispositions et non les types.
- Résolution : UNRESOLVED — ne pas enseigner les exclusivités comme LIVE.

#### CONFLICT-B8-04 : date de retrait de Haddonfield
- Source A : audit phase 0 (mention 16/01/2026 corrigée en 19/01/2026).
- Source B : FAQ officielle (KB 531) — retrait des stores le 19/01/2026 11 h ET, carte hors rotation après le 19/01/2026 ; 9.4.0 (LIVE 27/01/2026) retire aussi les Custom Games.
- Résolution : 19/01/2026 (rotation) puis 9.4.0 (custom). Le seed est correct.

#### CONFLICT-B8-05 : nombre de cartes 2v8
- Source A : wiki 2v8 — « The following 22 Supersize-Maps ».
- Source B : même page, liste V1-V9 = 26 cartes ; notes 9.4.2, 9.6.0, 10.1.2 confirment les ajouts récents.
- Résolution : 26 (compteur wiki périmé).

#### CONFLICT-B8-06 : désactivation de Badham / Grim Pantry / Pale Rose
- Source A : 10.0.1 (KB 551) — « have been re-enabled ».
- Source B : aucune note archivée n'annonce la désactivation.
- Hypothèse : désactivation par hotfix/annonce hors notes (exploit ou crash) entre 10.0.0 et 10.0.1.
- Résolution : UNRESOLVED (sans impact LIVE : cartes actives en 10.1.2a).

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Inventaire | 20 royaumes, 44 cartes 1v4 | 20 / 44 | OK |
| Lampkin Lane | retirée le 19/01/2026 | hors rotation après le 19/01 (FAQ) ; retrait custom en 9.4.0 | OK (compléter par 9.4.0) |
| Variantes | « seules les variantes I tournent en partie classée (8.6.0) » | vrai pour le matchmaking public ; DBD n'a pas de mode classé ; RPD East/West exemptées | IMPRÉCIS |
| Badham | « I seulement en classé » | Badham I seule en matchmaking public ; II-V en Custom Games | IMPRÉCIS |
| 9.2.0 | plus de palettes dans les dead zones de 10 royaumes | liste officielle de 10 royaumes | OK |
| 9.2.0 | Torment Creek, Disturbed Ward réduites | wiki seulement, absent des notes | NON VÉRIFIABLE (officiellement) |
| 9.3.0 | palettes moins safe (MacMillan, Asylum, Red Forest, Yamaoka, Ormond) | + Haddonfield ; « Ormond » = Mount Ormond Resort nommément | IMPRÉCIS |
| 9.3.0 | main de l'Asylum affaibli, Hawkins plus ouvert, Autohaven plus lumineux | confirmé (+ brouillard Autohaven, portes ouvertes Hawkins) | OK |
| 9.3.2 | absent | passe « longueur des loops » sur 7 royaumes | OMISSION |
| 9.6.0 | absent | chance égale par carte | OMISSION |
| Offrandes | 20 %, non cumulables depuis 9.0.0 | confirmé (audit + wiki) | OK |
| Kill rates par royaume / carte | 3 fenêtres mélangées, sans n | aucune fenêtre unique datée avec n disponible | FAUX (méthode) — à supprimer |
| Unité | « 1 tile = 8×8 m » | sqT = unité wiki ; tuiles réelles 16-32 m ; pas de mesure officielle | IMPRÉCIS |
| Cartes sans shack | Treatment, The Game, Underground, Midwich, RPD, Nostromo (+ Lampkin) | identique | OK |
| Cartes sans maze tiles | Badham, Treatment, Underground, RPD E/W (+ Lampkin) | identique | OK |
| Rotten Fields | shack central contient toujours le sous-sol | wiki : seulement « pas de main » ; sous-sol au shack = inférence | IMPRÉCIS |
| Wreckers' Yard | shack central, sous-sol toujours | confirmé | OK |
| Hooks Swamp | densité plus forte au centre « sur le Swamp » (2.5.0) | note wiki = The Pale Rose | IMPRÉCIS |
| Gyms par royaume | Locker gym exclusif Red Forest/Ormond ; pas de 4-lane à Coldwind ; Withered Isle sans pallet gym ni 4-lane | antérieur au pool commun 9.2.0 | OUTDATED probable (UNCERTAIN) |
| Gas Heaven | 9.2.0 correctif de navigation autour du bus | navigation des **bots** | IMPRÉCIS |
| Coldwind | 9.6.0 collision de l'arbre améliorée pour la navigation du tueur | bugfix de collision d'un mur près de l'arbre | IMPRÉCIS |
| Treatment Theatre | fenêtres et entrées à configuration fixe | fenêtres fixes, **entrées RNG** (2.7.0) | FAUX (entrées) |
| Mother's Dwelling | « était 188-200 » | 188 → 152 (7.4.0) ; 200 = version 2v8 | IMPRÉCIS |
| Garden of Joy | Greenhouse, Gazebo, Treehouse, Train car listés comme présents | deux paires mutuellement exclusives | IMPRÉCIS (RNG présenté comme fixe) |
| Freddy Fazbear's Pizza | ball pit peut apparaître à la place du shack | ball pit dans l'arcade quand le sous-sol est au shack | FAUX |
| Ormond Lake Mine | 5 palettes au Mine Building | 3 + 2 **emplacements** de palettes | IMPRÉCIS |
| Shattered Square | 7.3.2 palettes moins safe ; 8.0.0 éclairage plus clair | 7.3.2 = plus de palettes max **et** loops moins safe ; 8.0.0 = palette de couleurs rouge → turquoise | IMPRÉCIS |
| Dead Dawg Saloon | (wiki) totem garanti | bug corrigé en 9.3.0 | OUTDATED (source wiki) |
| Sanctum of Wrath | seule carte à shack sur 2 emplacements | absent des sources lues | NON VÉRIFIABLE |
| Backwater Swamp | edge tiles sur colline, shack séparé par la colline | absent des sources lues | NON VÉRIFIABLE |
| Badham | maisons qui échangent leurs positions selon la variante ; fenêtre 8.3.0/8.3.1 | absent ; variantes hors matchmaking | NON VÉRIFIABLE |
| The Game | Control Room 12 h, coins « pallet stairs / hole room » | absent du wiki | NON VÉRIFIABLE |
| Toba Landing | moitié gauche « plante », droite « roche » | absent | NON VÉRIFIABLE |
| Withered Isle | « Impostor jungle gyms » | absent | NON VÉRIFIABLE |
| Rotten Fields | moitié à 2 structures = haut (guide Steam) | absent | NON VÉRIFIABLE |
| À venir | The Mall (déc. 2026), refonte visuelle 2027 | roadmap, non LIVE, non vérifié ici | hors périmètre LIVE |
| Schémas du seed | « landmarks fixes uniquement » | plusieurs éléments RNG présentés comme fixes (paires exclusives, fenêtres actives, sous-sol) | IMPRÉCIS |

## Questions ouvertes

1. Kill rate / escape rate par carte sur **une seule fenêtre datée avec n** (NightLight inaccessible ; infographies BHVR illisibles).
2. Date et cause de la désactivation de Badham / Grim Pantry / Pale Rose (ré-activées en 10.0.1).
3. Portée exacte de « same pool of available maze tile layouts » (9.2.0) : les exclusivités de gyms par royaume existent-elles encore ?
4. Réductions 9.2.0 de Torment Creek et Disturbed Ward : documentées ailleurs (PTB 9.2.0 KB 522 non archivé, dev update) ?
5. Emplacement du sous-sol sur Rotten Fields et Dead Sands (toujours au shack ?).
6. Taille de Trickster's Delusion et de RPD East/West (non mesurées par le wiki).
7. RPD : répartition par aile des 3 emplacements de gates et des 2 sous-sols.
8. Sanctum of Wrath (2 emplacements de shack ?) ; Backwater Swamp (collines de bord) ; The Game (disposition des coins).
9. Fiches à compléter : Freddy Fazbear's Pizza, Fallen Refuge, Dead Sands, Rotten Fields (pas de description de tiles sur le wiki).
10. Positions des Exit Gates : seules Nostromo (prévisibles), Underground Complex (Exit Doors) et RPD (3 emplacements) sont documentées.

## Sources

[1] Realms (wiki officiel, texte complet) — https://deadbydaylight.wiki.gg/wiki/Realms — consulté le 27/09/2026 via API MediaWiki (`kb/tools/wiki_text.py`)
[2] Pages wiki des cartes (texte complet) : Coal Tower, Groaning Storehouse, Ironworks of Misery, Shelter Woods, Suffocation Pit, Azarov's Resting Place, Blood Lodge, Gas Heaven, Wreckers' Yard, Wretched Shop, Fractured Cowshed, Rancid Abattoir, Rotten Fields, The Thompson House, Torment Creek, Disturbed Ward, Father Campbell's Chapel, Lampkin Lane, The Pale Rose, Grim Pantry, Treatment Theatre, Mother's Dwelling, The Temple of Purgation, Badham Preschool, The Game, Family Residence, Sanctum of Wrath, Mount Ormond Resort, Ormond Lake Mine, The Underground Complex, Dead Dawg Saloon, Midwich Elementary School, Raccoon City Police Station (+ East Wing, West Wing), Eyrie of Crows, Dead Sands, Garden of Joy, Greenville Square, Freddy Fazbear's Pizza, Fallen Refuge, The Shattered Square, Forgotten Ruins, Toba Landing, Nostromo Wreckage, Trickster's Delusion — https://deadbydaylight.wiki.gg/wiki/<Titre> — consulté le 27/09/2026 via API MediaWiki
[3] Module:Datatable (table `realms`/`maps`) et Module:Maps — archivés `kb/sources/wiki_modules/Datatable.lua`, `Maps.lua` — consultés le 27/09/2026
[4] 9.2.0 | Sinister Grace — https://forums.bhvr.com/dead-by-daylight/kb/articles/523 — archivé `official_523.txt`, consulté le 27/09/2026
[5] 9.3.0 | Mid-Chapter — https://forums.bhvr.com/dead-by-daylight/kb/articles/529 — `official_529.txt`, consulté le 27/09/2026
[6] 9.3.2 | Bugfix Patch — https://forums.bhvr.com/dead-by-daylight/kb/articles/530 — `official_530.txt`, consulté le 27/09/2026
[7] 9.4.0 | Stranger Things Chapter 2 — https://forums.bhvr.com/dead-by-daylight/kb/articles/534 — `official_534.txt`, consulté le 27/09/2026
[8] FAQ | The Halloween Content — https://forums.bhvr.com/dead-by-daylight/kb/articles/531 — `official_531.txt`, consulté le 27/09/2026
[9] 9.5.0 | All-Kill: Comeback — https://forums.bhvr.com/dead-by-daylight/kb/articles/538 — `official_538.txt`, consulté le 27/09/2026
[10] 9.6.0 | Patch Notes — https://forums.bhvr.com/dead-by-daylight/kb/articles/544 — `official_544.txt`, consulté le 27/09/2026
[11] 10.0.1 | Bugfix Patch — https://forums.bhvr.com/dead-by-daylight/kb/articles/551 — `official_551.txt`, consulté le 27/09/2026
[12] 10.1.2 | Bugfix Patch — https://forums.bhvr.com/dead-by-daylight/kb/articles/558 — `official_558.txt`, consulté le 27/09/2026
[13] 9.0.0 | Five Nights at Freddy's — https://forums.bhvr.com/dead-by-daylight/kb/articles/510 — `official_510.txt`, consulté le 27/09/2026
[14] 9.1.0 | The Walking Dead — https://forums.bhvr.com/dead-by-daylight/kb/articles/516 — `official_516.txt`, consulté le 27/09/2026
[15] 9.4.2 | Bugfix Patch — https://forums.bhvr.com/dead-by-daylight/kb/articles/536 — `official_536.txt`, consulté le 27/09/2026
[16] 10.2.0 PTB — https://forums.bhvr.com/dead-by-daylight/kb/articles/559 — `official_559.txt` (NON LIVE), consulté le 27/09/2026
[17] Pages wiki structures récurrentes : Maze Tiles, Killer Shack, Basement, Hills, Sacrificial Tree, Harvester, Structures — https://deadbydaylight.wiki.gg/wiki/<Titre> — consulté le 27/09/2026 via API MediaWiki
[18] 2v8 (wiki, section Map Selection) — https://deadbydaylight.wiki.gg/wiki/2v8 — consulté le 27/09/2026 via API MediaWiki
[19] Pages wiki des royaumes (changelogs 9.2.0/9.3.0, offrandes, structures communes) : The MacMillan Estate, Autohaven Wreckers, Coldwind Farm, Crotus Prenn Asylum, Haddonfield, Backwater Swamp, Léry's Memorial Institute, Red Forest, Springwood, Gideon Meat Plant, Yamaoka Estate, Ormond, Hawkins National Laboratory, Grave of Glenvale, Silent Hill (Realm), Raccoon City, Forsaken Boneyard, Withered Isle, The Decimated Borgo, Dvarka Deepwood, Sleepless District — https://deadbydaylight.wiki.gg/wiki/<Titre> — consulté le 27/09/2026 via API MediaWiki
[20] Copies wiki des patchs (dates de sortie 9.0.0, 9.1.0, 9.4.0, 9.5.0) — `kb/sources/patches/patch_9.*.txt` — consulté le 27/09/2026
[21] Seed : `kb/seed/ch10_14.txt` (chapitre 11) ; audit : `kb/seed/audit_phase0.txt` — référence interne
[22] 10.0.0 | Jason Patch Notes et 10.0.2-10.1.1 — https://forums.bhvr.com/dead-by-daylight/kb/articles/550 (et 552-557) — `official_55x.txt`, consulté le 27/09/2026 (cités « KB 550 », « KB 538-558 »)
