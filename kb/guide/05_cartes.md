# 5. Les cartes

> **Périmètre** : mode **1v4 uniquement**, version **LIVE 10.1.2a (17/09/2026)**. Les cartes « supersized » du 2v8 sont listées à part (§5.2.5) et **aucun conseil de ce chapitre ne s'y applique tel quel**. PTB 10.2.0 : aucun changement de carte hors correctifs de bugs (KB 559) — **PTB 10.2.0 — non LIVE**, sans effet sur ce chapitre.

Ce chapitre répond à trois questions : **quelles cartes existent** aujourd'hui, **comment en lire une** en quelques secondes, et **ce qui est vraiment fixe** sur chacune des 44 cartes 1v4. Le fonctionnement d'une tile (fenêtres, palettes, jungle gyms, shack) est traité au chapitre 4 (détail : `kb/research/batch7_tiles.md`) ; ici, la tile est une **pièce** d'un plan à l'échelle de la carte.

**Trois avertissements avant de commencer**

1. **Fixe ≠ RNG.** Le wiki distingue ce qu'une structure « *contains* » (toujours présent) de ce qu'elle « *potentially contains* » (possible). Un plan bâti sur un élément aléatoire supposé fixe est l'erreur n° 1 que ce chapitre corrige. Dans les fiches, **Fixe** = « contains » (wiki lu en entier, ou note officielle) ; **RNG** = tout le reste.
2. **Aucun kill rate par carte.** Aucune source lue ne fournit une fenêtre unique, datée, avec un effectif (n), par carte : NightLight était inaccessible, et les posts « Stats » officiels archivés (KB 503, 540, 543, 554) ne contiennent aucune statistique par carte lisible. Les chiffres qui circulent (« carte la plus mortelle à 54,7 % ») mélangent des fenêtres différentes sans n : ils sont **supprimés**. Toute phrase « cette carte avantage X » est donc une **[HYPOTHÈSE]** dérivée d'un mécanisme, pas une mesure.
3. **Le wiki seul n'est pas un fait vérifié.** Aucun contenu de carte (structures, tailles, gens fixes) ne figure dans l'audit phase 0. La quasi-totalité des fiches repose sur la page wiki complète de la carte : confiance **(SS)**. Quand une note officielle BHVR confirme ou corrige, c'est indiqué **(VP)** ou **(VM)**.

**Comment lire ce chapitre**

| Étiquette | Sens ici |
|---|---|
| **[FACT]** | Documenté : note officielle BHVR et/ou page wiki complète. Confiance : **(VP)** note officielle, **(VM)** wiki + note, **(SS)** wiki seul, **(INC)** incertain |
| **calcul** | Arithmétique sur des [FACT] ; hypothèses ajoutées (carte carrée, trajet en ligne droite) signalées |
| **[HEURISTIQUE]** | Règle pratique, jamais absolue : condition, risque et alternative donnés |
| **[HYPOTHÈSE]** | Inférence plausible, non confirmée (toutes les lignes « archétypes avantagés ») |
| **[SITUATIONNEL]** | S'inverse selon le tueur, l'état RNG ou l'état de partie |
| **[AVIS D'EXPERT]** | Réputation communautaire, non sourcée, non mesurée |
| **[INCERTAIN]** | Non tranché entre sources ; à vérifier en Custom Game |

Unités : **sqT** = unité de surface du wiki (1 sqT = 8 × 8 m = 64 m²). Ce n'est **pas** la taille des tuiles de génération (16 × 16, 16 × 32 ou 32 × 32 m). **1 gen solo = 90 s** ; vitesses de référence : survivant 4,0 m/s, tueur 4,6 ou 4,4 m/s [FACT] (VM).

---

## 5.1 Ce qui est fixe, ce qui est RNG `[Débutant]`

### Les règles de génération

| Élément | Règle | Confiance |
|---|---|---|
| **Main building et landmarks** | « Major tiles with large structures tend to remain in the same location » : emplacement **généralement** constant ; leur **contenu** varie | [FACT] (SS) |
| **Tuiles mineures** | Placées et tournées au hasard | [FACT] (SS) |
| **Maze tiles (jungle gyms)** | « Always spawn in the same general location », mais l'**itération** (long wall, short wall, L-T, 4-lane…) change d'une partie à l'autre | [FACT] (SS) |
| **Pool de maze tiles** | 9.2.0 : « all Realms draw from the same pool of available maze tile layouts ». Les exclusivités par royaume encore listées sur le wiki (Locker Gym = Red Forest/Ormond, pas de 4-lane à Coldwind ni à Withered Isle, pas de pallet gym à Withered Isle…) datent d'avant 9.2.0 | [FACT] (VP) pour la note ; exclusivités **[INCERTAIN]** : ne pas les enseigner comme LIVE |
| **Sous-sol (Basement)** | Toujours 4 crochets indestructibles sur un pilier, 6 casiers, 1 coffre garanti, **une seule entrée** ; apparaît soit au Killer Shack, soit dans le main / un landmark | [FACT] (SS) |
| **Coffres, totems, crochets annexes, palettes annexes** | Possibles, pas garantis, **sauf** mention « contains » dans la fiche | [HEURISTIQUE] de lecture |

> **À retenir** : sur une carte, vous connaissez d'avance **où** sont les grosses structures et **quelles** ressources elles contiennent toujours. Vous ne connaissez pas d'avance l'itération des gyms, la plupart des palettes, la fenêtre active quand il y en a plusieurs, l'emplacement du sous-sol (sauf 3 cartes) ni la plupart des gens.

### Sous-sol : les cas particuliers

| Situation | Cartes | Confiance |
|---|---|---|
| **Emplacement fixe** | **The Game** (escalier toujours derrière la Bathroom) ; **Wreckers' Yard** et **Rotten Fields** (toujours au Killer Shack, « as there are no other Landmarks on those Maps ») | [FACT] (SS) |
| **Deux emplacements possibles** | Treatment Theatre (Treatment Room **ou** Library) ; Underground Complex (2 emplacements, **dont un** au Rift Lab ; l'autre n'est pas décrit) ; RPD (2 emplacements décrits sur le RPD **original** ; répartition par aile non documentée) | [FACT] (SS) ; répartition RPD **[INCERTAIN]** |
| **Probablement au shack, non confirmé** | Dead Sands (carte centrée sur le shack, mais absente de la liste de la page Killer Shack) | **[INCERTAIN]** |

### Cartes sans shack, sans gyms, sans collines

| Absence | Cartes 1v4 LIVE concernées | Confiance |
|---|---|---|
| **Pas de Killer Shack** | Treatment Theatre, The Game, Underground Complex, Midwich, RPD East Wing, RPD West Wing, Nostromo Wreckage | [FACT] (SS) |
| **Pas de maze tiles** | Badham Preschool, Treatment Theatre, Underground Complex, RPD East Wing, RPD West Wing | [FACT] (SS) |
| **Pas de collines (Hills)** | Shelter Woods, Treatment Theatre, Badham, The Game, Underground Complex, Dead Dawg Saloon, Midwich, RPD, Garden of Joy, Shattered Square, Toba Landing, Nostromo Wreckage | [FACT] (SS) |

Particularités : **The Game** est la seule carte 100 % intérieure **avec** maze tiles ; **Dead Dawg Saloon** a un shack western avec **mur cassable** ; ses gyms L-T et 4-lane portent toujours un mur cassable [FACT] (SS).

### Comment le wiki fixe-t-il un gen ?

Deux voies. (1) La page dit « contains a Generator » : c'est le critère retenu ici. (2) Un achievement « réparer le gen de X et s'échapper » laisse penser que X a un gen fixe — sinon l'achievement serait parfois impossible. C'est une **inférence** [HEURISTIQUE], pas une règle du jeu ; pour toutes les cartes citées dans ce chapitre, la page wiki confirme séparément le gen.

> **Erreur fréquente** : lire la fiche d'une **variante** (Coal Tower II, Badham III…) et l'appliquer à une partie publique. Depuis 8.6.0, seule la variante I tourne en matchmaking (sauf RPD East/West, deux cartes distinctes). Les variantes existent encore, mais **en Custom Game seulement** (§5.2.4).

Détail : `kb/research/batch8_maps.md` §0.

---

## 5.2 Inventaire LIVE 10.1.2a `[Débutant]`

### 5.2.1 Les comptes

| Élément | Valeur | Confiance |
|---|---|---|
| Royaumes listés par le wiki | 21, dont Haddonfield (retiré) | [FACT] (SS) |
| Cartes listées par le wiki (hors variantes) | 46, dont Lampkin Lane (retirée) et le RPD original (2v8 seulement) | [FACT] (SS) |
| **Royaumes avec au moins une carte 1v4 LIVE** | **20** | [FACT] (VM) |
| **Cartes 1v4 en rotation publique** | **44** (variante I ou carte unique ; RPD East et West comptées séparément) | [FACT] (VM) |

Décomposition (calcul) : 3 royaumes à 5 cartes (MacMillan, Autohaven, Coldwind) = 15 ; Withered Isle = 4 ; 9 royaumes à 2 cartes = 18 ; 7 royaumes à carte unique = 7. Total 44.

### 5.2.2 Table des 44 cartes

Colonnes : **sqT** = taille wiki de la variante en rotation ; **Sortie** = patch d'ajout ; **Passes** = le royaume figure dans la liste officielle 9.2.0 (densité de palettes) / 9.3.0 (sûreté des loops ou autre retouche) / 9.3.2 (longueur des loops). Tailles : [FACT] (SS), aucune mesure officielle.

| # | Royaume | Carte | sqT | Sortie | Shack | Gyms | 9.2 / 9.3 / 9.3.2 |
|---|---|---|---|---|---|---|---|
| 1 | MacMillan Estate | Coal Tower (I) | 132 | 1.0.0 | oui | oui | ✔ / ✔ / ✔ |
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
| 17 | Crotus Prenn Asylum | Father Campbell's Chapel (I) | 140 | 2.0.0 | oui | oui | ✔ / ✔ / ✔ |
| 18 | Backwater Swamp | The Pale Rose | 161 | 1.3.1 | oui | oui | ✔ / piers / ✔ |
| 19 | Backwater Swamp | Grim Pantry | 168 | 1.7.0 | oui | oui | ✔ / piers / ✔ |
| 20 | Léry's Memorial Institute | Treatment Theatre | 98 | 1.5.1 | **non** | **non** | — / — / — |
| 21 | Red Forest | Mother's Dwelling (I) | 152 | 1.6.0 | oui | oui | ✔ / ✔ / ✔ |
| 22 | Red Forest | The Temple of Purgation | 136 | 2.6.0 | oui | oui | ✔ / ✔ / ✔ |
| 23 | Springwood | Badham Preschool (I) | 144 | 1.8.0 | oui | **non** | — / — / — |
| 24 | Gideon Meat Plant | The Game | 142 (76 + 66) | 1.9.0 | **non** | oui | — / — / — |
| 25 | Yamaoka Estate | Family Residence (I) | 156 | 2.2.0 | oui | oui | ✔ / ✔ / ✔ |
| 26 | Yamaoka Estate | Sanctum of Wrath (I) | 156 | 3.4.0 | oui | oui | ✔ / ✔ / ✔ |
| 27 | Ormond | Mount Ormond Resort (I) | 156 | 3.2.0 | oui | oui | ✔ / ✔ (nommée) / ✔ |
| 28 | Ormond | Ormond Lake Mine | 132 | 8.4.2 | oui | oui | ✔ / ? (non nommée) / ✔ |
| 29 | Hawkins National Laboratory | The Underground Complex | 138 (estim.) | 3.2.0 | **non** | **non** | — / navigation / — |
| 30 | Grave of Glenvale | Dead Dawg Saloon (I) | 136 | 3.6.0 | oui (western) | oui | — / — / — |
| 31 | Silent Hill | Midwich Elementary School | 113,5 (64 + 49,5) | 4.0.0 | **non** | oui (intérieurs et extérieurs) | — / — / — |
| 32 | Raccoon City | RPD East Wing | non mesurée | 6.2.0 | **non** | **non** | — / — / — |
| 33 | Raccoon City | RPD West Wing | non mesurée | 6.2.0 | **non** | **non** | — / — / — |
| 34 | Forsaken Boneyard | Eyrie of Crows | 148 | 5.4.0 | oui | oui | — / — / — |
| 35 | Forsaken Boneyard | Dead Sands | 140 | 8.6.0 | oui (central) | oui | — / — / — |
| 36 | Withered Isle | Garden of Joy | 164 | 6.0.0 | oui | oui (2 designs) | — / — / — |
| 37 | Withered Isle | Greenville Square | 160 | 7.6.0 | oui | oui | — / — / — |
| 38 | Withered Isle | Freddy Fazbear's Pizza | 148 | 9.0.0 | oui | oui | — / — / — |
| 39 | Withered Isle | Fallen Refuge | 128 | 9.1.0 | oui | oui | — / — / — |
| 40 | The Decimated Borgo | The Shattered Square | 144 | 6.4.0 | oui | oui | ✔ / — / — |
| 41 | The Decimated Borgo | Forgotten Ruins | 132 (92 + 40) | 8.0.0 | oui | oui | ✔ / — / — |
| 42 | Dvarka Deepwood | Toba Landing | 136 | 7.0.0 | oui | oui | — / — / — |
| 43 | Dvarka Deepwood | Nostromo Wreckage | 152 | 7.2.0 | **non** | oui | — / — / — |
| 44 | Sleepless District | Trickster's Delusion | non mesurée | 9.5.0 | oui (près du Market) | non documenté | — / — / — |

**Lire les tailles avec prudence**

- Plus grandes : **Shelter Woods** et **Azarov's Resting Place** (176). Plus petites **parmi les cartes mesurées** : **Treatment Theatre** (98), **Midwich** (113,5), **Fallen Refuge** (128). RPD East/West et Trickster's Delusion ne sont pas mesurées [FACT] (SS).
- Sur les 41 cartes mesurées : moyenne ≈ **148 sqT**, médiane **152 sqT** (calcul). Le « 146 » affiché par le wiki inclut variantes et 2v8.
- La mesure wiki **ignore les structures** qui réduisent l'espace jouable et **additionne les étages** [FACT] (SS). L'emprise au sol est bien plus petite que le total pour **The Game** (76 sqT au niveau le plus grand), **Midwich** (64 au RDC) et **Forgotten Ruins** (92 en surface).
- Deux réductions de taille attribuées à 9.2.0 par le wiki (Torment Creek 168 → 156, Disturbed Ward 172 → 152) **n'apparaissent pas** dans les notes officielles 9.2.0 : valeurs actuelles cohérentes, date du changement **[INCERTAIN]**.

### 5.2.3 Retirées ou hors rotation 1v4

| Carte | Statut | Confiance |
|---|---|---|
| **Lampkin Lane** (Haddonfield) | Hors rotation **après le 19/01/2026** (FAQ officielle, départ du contenu Halloween) ; puis retirée de la rotation **et des Custom Games** en **9.4.0** (LIVE 27/01/2026) ; offrande Strode Realty Key retirée. **À ne plus présenter comme jouable** | [FACT] (VP) |
| **RPD original** (2 ailes) | Retiré du 1v4 en 6.2.0 (remplacé par East/West) ; **2v8 seulement** depuis 8.5.1 | [FACT] (SS) |
| **Badham, Grim Pantry, Pale Rose** | « Re-enabled » en **10.0.1** : elles avaient donc été désactivées temporairement ; date et cause **non trouvées** dans les notes archivées. Actives en 10.1.2a | [FACT] (VP) ; cause **[INCERTAIN]** |
| **Underground Complex** | Absente du 17/11/2021 au 06/11/2023 (7.3.3) ; LIVE aujourd'hui | [FACT] (SS) |

Les annonces de roadmap (nouvelle carte « The Mall », refonte visuelle) ne sont **pas LIVE** : hors inventaire.

### 5.2.4 Variantes : hors matchmaking public

- 8.6.0 : « Only the original Map is chosen by the Map Selector… All removed Map Variations can still be selected for Custom Games. » RPD East et West exemptées [FACT] (SS). Le wiki dit « ranked Trials » : c'est son vocabulaire pour les **parties publiques** (MMR) ; Dead by Daylight n'a pas de mode classé distinct.
- Variantes jouables **en Custom Game seulement** : Coal Tower II (136), Groaning Storehouse II (148), Ironworks of Misery II (156), Shelter Woods II (176), Suffocation Pit II (152) ; Badham Preschool II (144), III (144), IV (140), V (148) ; Family Residence II (156), Sanctum of Wrath II (148) ; Mount Ormond Resort II (160) et III (156) [FACT] (SS).

> **Note avancée** : la Custom Game est le **seul** endroit où l'on peut apprendre une carte précise à la demande (§5.7). Choisissez toujours la **variante I**, sinon vous apprenez une carte que vous ne rencontrerez jamais en partie publique.

### 5.2.5 Le 2v8, à part

Le 2v8 est un mode événementiel récurrent : cartes « supersized » propres, **13 gens (8 à réparer)**, **3 Exit Gates**, 3 trappes, maze tiles agrandis, palettes plus fréquentes [FACT] (SS). Le pool wiki compte **26 cartes** (le compteur de la page dit « 22 », non mis à jour) ; ajouts confirmés par les notes : Groaning Storehouse et Rotten Fields (9.4.2), Temple of Purgation et Ironworks of Misery (9.6.0), **Nostromo Wreckage (10.1.2)** [FACT] (VM). Tailles 2v8 connues : de 176 (Wreckers' Yard) à 200 sqT (Mother's Dwelling).

> **Erreur fréquente** : citer « Mother's Dwelling = 200 sqT ». C'est la version 2v8 ; la version 1v4 fait **152** depuis 7.4.0 (188 avant).

### 5.2.6 Sélection des cartes et fréquences

| Règle | Détail | Confiance |
|---|---|---|
| **Realm Repeat Prevention** (8.5.0) | Même royaume deux fois de suite : chance **nulle** ; royaumes **récemment** joués : « unlikely, but not zero » | [FACT] (SS) |
| **Pondération 9.6.0** | « Maps have an equal chance of spawning » ; Realm Repeat Prevention maintenue | [FACT] (VP) |
| **Offrandes** | Chance fixée à **20 %**, non cumulables depuis 9.0.0. Une offrande de **royaume** tire ensuite une carte au hasard dans ce royaume (sauf royaume à carte unique). Dvarka n'a que des offrandes **de carte** (Alien Flora = Toba, Airlock Doors = Nostromo) | [FACT] (VM) |

**Fréquences approchées** (calcul, sans offrande, en ignorant la Realm Repeat Prevention dont les valeurs exactes ne sont pas publiées) :

| Groupe | Part des parties |
|---|---|
| Une carte donnée | 1/44 ≈ **2,3 %** |
| MacMillan, Autohaven ou Coldwind (5 cartes chacun) | 5/44 ≈ **11,4 %** chacun, **≈ 34 %** à eux trois |
| Withered Isle (4 cartes) | 4/44 ≈ 9,1 % |
| Un royaume à 2 cartes | 2/44 ≈ 4,5 % |
| Un royaume à carte unique | ≈ 2,3 % |

> **À retenir** : depuis 9.6.0, un royaume sort en proportion de son **nombre de cartes**. Les 15 cartes de MacMillan, Autohaven et Coldwind représentent environ **une partie sur trois** : ce sont elles qu'on apprend en premier [HEURISTIQUE].

Détail : `kb/research/batch8_maps.md` §1.

---

## 5.3 Méthode d'analyse d'une carte `[Intermédiaire]`

### 5.3.1 Pourquoi la taille compte, et de combien

**QUOI** : sur une grande carte, le tueur perd plus de temps entre deux gens ou deux chases ; pendant ce trajet, les réparateurs avancent. Un tueur à mobilité compresse ce trajet ; un tueur sans mobilité le subit [HEURISTIQUE].

**De combien** (calcul ; hypothèses : carte carrée, traversée en ligne droite d'un bord à l'autre, aucun obstacle, taille wiki = surface totale ; côté = √(sqT × 64)) :

| Surface (sqT) | Côté ≈ | Tueur 4,6 m/s | Tueur 4,4 m/s | Survivant 4,0 m/s |
|---|---|---|---|---|
| 98 (Treatment Theatre) | 79 m | 17,2 s | 18,0 s | 19,8 s |
| 132 | 92 m | 20,0 s | 20,9 s | 23,0 s |
| 152 (médiane) | 99 m | 21,4 s | 22,4 s | 24,7 s |
| 176 (Shelter Woods, Azarov's) | 106 m | 23,1 s | 24,1 s | 26,5 s |

- Médiane → plus grande carte : ≈ **1,7 s** de plus par traversée (tueur 4,6). Avec 3 survivants qui réparent chacun seuls, 1,7 s × 3 ≈ 5 charges ≈ **6 % d'un gen** par traversée.
- Plus petite → plus grande : ≈ **5,9 s**, soit ≈ 18 charges ≈ **20 % d'un gen** par traversée.

**POURQUOI c'est important** : l'effet « grande carte = mobilité avantagée » est **net aux extrêmes** (Treatment Theatre, Midwich, The Game contre Shelter Woods, Azarov's) et **faible entre cartes moyennes** (132-160 sqT). Là, la position RNG des gens, la densité de palettes (passes 9.2.0-9.3.2) et la forme de la carte pèsent probablement plus que la surface [HYPOTHÈSE, non mesurée].

**CAS D'ÉCHEC de la règle « taille »** :

- carte allongée : le trajet réel dépasse le côté du carré ;
- gens RNG regroupés : petite distance utile, même sur une grande carte ;
- surface gonflée par les étages (The Game, Midwich, Forgotten Ruins) ;
- gros bâtiments qui bloquent le trajet direct ;
- gens **fixes** très écartés sur une petite carte (**Toba Landing** : 136 sqT, mais diagonale ≈ 132 m, ≈ 29 s à 4,6 m/s entre les deux coins — calcul, hypothèse carrée) ;
- tueur sans mobilité qui compense par des perks de régression ou d'information (non chiffré).

### 5.3.2 Archétypes : la correspondance à connaître

Les fiches utilisent cinq archétypes. Ils correspondent à ceux des chapitres 7 et 8 sur les tueurs (`kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md`, 8 archétypes) :

| Terme des fiches | Archétype du handbook | Ce que la carte change pour lui [HYPOTHÈSE] |
|---|---|---|
| mobilité | Mobilité (Blight, Nurse, Spirit, Wesker, Billy…) | Distance entre gens et entre chases |
| distance / LOS | **Ranged** (projectiles) | Longueur des lignes de vue, hauteur des murs |
| furtif | Furtif | Murs hauts, coins, zones sombres |
| zone / pièges | Zone | Goulets : portes, couloirs, escaliers |
| M1 / lent | **M1** (sans mobilité ni anti-loop) | Distance, sûreté des loops |
| — | **Anti-loop** (Blight, Demogorgon, Oni…) | Surtout la **densité de palettes** : une carte riche en palettes safe perd de la valeur contre eux |
| — | **Info** | Peu d'effet de carte documenté |
| — | **Slug** | Peu d'effet de carte documenté |

Cas particulier documenté : **Dredge** et les intérieurs pleins de **casiers** (avantage tueur) ; **Nemesis** et les couloirs (zombies plus gênants) ; **Nurse** et les multi-niveaux (un blink au mauvais étage lui coûte une fatigue : l'étage peut **aider** le survivant qui lit le blink).

> **Erreur fréquente** : lire « M1 pénalisés » dans une fiche et l'appliquer à un tueur anti-loop sans mobilité. La ligne ne dit **rien** d'un Demogorgon ou d'un Oni : pour eux, regardez la densité de palettes, pas la taille.

### 5.3.3 La hauteur des murs de gyms par royaume

La hauteur des murs de maze tiles décide si une tile bloque la ligne de vue. C'est un fait **de royaume** [FACT] (SS, wiki Maze Tiles, section « Designs ») :

| Royaume | Murs de gyms | Lecture LOS [HEURISTIQUE] |
|---|---|---|
| MacMillan, Coldwind, Crotus Prenn, Backwater, Red Forest, Yamaoka, Ormond, Glenvale, Silent Hill, Boneyard, Withered Isle | **Hauts** | Bloquent la LOS |
| Gideon (The Game) | Jusqu'au plafond | Bloquent totalement |
| **Autohaven** | **Medium** (ferraille) | LOS **partielle** : le tueur voit plus souvent la tête du survivant |
| Garden of Joy | **2 designs** (béton medium + planches hautes) | Mixte selon le segment |
| Borgo, Dvarka | Hauteur non précisée | **[INCERTAIN]** |

> **Note avancée** : « murs hauts = furtifs aidés » est un critère **peu discriminant** : presque tous les royaumes en ont. Ce qui distingue vraiment une carte, ce sont ses exceptions (Autohaven medium, Garden of Joy mixte, maïs de Coldwind, intérieurs).

### 5.3.4 Profils de cartes [HYPOTHÈSE]

| Profil | Cartes LIVE | Ce que ça change | Aidés | Gênés | Limite / contre-cas |
|---|---|---|---|---|---|
| **Grande** (≥ 160 sqT) | Shelter Woods, Azarov's, Grim Pantry, Wretched Shop, Garden of Joy, Pale Rose, Ironworks, Suffocation Pit, Rotten Fields, Greenville | Rotations longues (≈ +1 à +1,7 s par traversée contre la médiane) | mobilité | M1 / lents | Gens RNG regroupés = effet annulé ; faible sous 176 sqT |
| **Petite** (≤ 136 sqT ou emprise ≤ 76 sqT) | Treatment Theatre, Midwich, Fallen Refuge, Coal Tower, Ormond Lake Mine, Forgotten Ruins, Temple, Toba, Dead Dawg ; + The Game (76 + 66) | Pression rapide, gates vite couvertes | M1, zone | survivants qui comptent sur la distance | Toba : gens fixes en coins opposés |
| **Intérieure / multi-niveaux** | The Game, Midwich, RPD East/West, Underground Complex, Treatment Theatre (+ donjon de Forgotten Ruins) | Goulets, sons trompeurs entre étages, peu ou pas de shack, beaucoup de casiers | zone / pièges ; Dredge ; furtifs à coins (Ghost Face, Onryō) | Ranged à longue LOS ; Nurse (étages) | Le handbook §3 « Intérieur » liste aussi des tueurs gênés (Demogorgon, Knight…) : lire la fiche du tueur |
| **Murs medium / mixtes** | Autohaven ; Garden of Joy | LOS partielle | distance / LOS (tir par-dessus) | survivants qui comptent sur les mindgames | La réputation « Autohaven = survivant » n'est **pas** expliquée par la hauteur des murs |
| **Lumineuse / ouverte** | Mount Ormond Resort ; Coldwind **hors maïs et hors gyms** | Lecture à distance pour les deux camps | distance / LOS | furtifs | À Coldwind, le maïs inverse la lecture |
| **Gens fixes proches** | Ormond Lake Mine, Disturbed Ward, Dead Dawg (Saloon + Gallows) ; Nostromo (jusqu'à 3 dans l'épave) | 3-gen possible **seulement** si un 3e gen proche reste avec eux | tueur défensif | — | Le 3e gen est RNG (sauf Nostromo) : vérifier à mi-partie |
| **Sous-sol fixe** | The Game, Wreckers' Yard, Rotten Fields ; probable Dead Sands | Crochet de sous-sol connu d'avance | tueur | survivants descendus à proximité | Information aussi pour les sauveteurs ; le tueur n'est pas obligé de l'utiliser |

### 5.3.5 La checklist en 8 questions `[Intermédiaire]`

À faire pendant l'écran de chargement et les premières secondes (pre-run) :

1. **Quel royaume ?** → hauteur des murs de gyms, structures de royaume garanties (Tower, Crane, Cow Tree, Pier, Arbor…).
2. **Quelle carte ?** → emplacement du main et des landmarks, **gens fixes**, ressources fixes (fenêtres, palettes, coffres).
3. **Qu'est-ce qui est RNG à confirmer ?** → fenêtre active (Gas Heaven, Wretched Shop), portes ouvertes (Groaning Storehouse), paires exclusives (Garden of Joy, Shattered Square), côté des structures (Toba), gen du Main Hall (RPD).
4. **Où peut être le sous-sol ?** → fixe (3 cartes), à 2 emplacements (3 cartes), sinon shack ou main.
5. **Verticalité ?** → étages, drops, rampes : ressource pour le survivant, piège pour une Nurse, avantage pour un Ghoul ou un Huntress en hauteur.
6. **Intérieur ou extérieur ?** → sons, casiers, couloirs, LOS.
7. **Quels gens fixes forment deux tiers d'un 3-gen ?** → surveiller le 3e gen RNG à mi-partie.
8. **Quel est le « plan de fin » connu ?** → gates documentées (Nostromo, Underground Complex, RPD) ou « ne rien présumer ».

### 5.3.6 Les cinq règles de plan communes [HEURISTIQUE]

**R1 — Début : identifier le main, ses gens fixes et ce qui est RNG.**

- POURQUOI : les gens fixes sont connus avant de les voir ; tout le reste est à confirmer.
- QUAND : pendant le trajet vers le premier gen.
- CAS D'ÉCHEC : lire la fiche d'une variante ; croire un « contains » du wiki que BHVR a corrigé depuis (le totem de Dead Dawg, 9.3.0).

**R2 — Ne pas démarrer à deux le gen d'un main vertical quand le tueur est proche.**

- POURQUOI : la chase qui commence là consomme d'emblée la meilleure ressource de la zone, et une seule patrouille trouve deux survivants.
- QUAND : tueur **proche** (Terror Radius, indice de patrouille). Tueur loin et en chase ailleurs : réparer au main est au contraire efficace, la ressource reste à portée.
- CONTRE : un tueur qui annule le main (Nurse, Blight, casseurs de palettes) → le main vaut moins, le « garder » n'a pas de sens.

**R3 — Milieu : garder une structure forte comme « banque » de chase.**

- POURQUOI : une ressource fixe et connue permet une chase longue au moment où les palettes aléatoires sont consommées.
- QUAND : tant que la garder ne coûte pas d'état de santé et qu'une autre ressource travaille à sa place.
- CAS D'ÉCHEC : (a) en SoloQ, un allié la consomme de toute façon ; (b) le tueur casse murs et palettes du main en patrouille ; (c) le main est au cœur d'un 3-gen que le tueur défend : y ramener la chase l'aide ; (d) garder une ressource pendant qu'un allié tombe faute de palettes n'a rien rapporté.

**R4 — Surveiller les gens fixes proches.**

- POURQUOI : 2 gens fixes proches + 1 gen RNG voisin = 3-gen défendable.
- QUAND : à mi-partie, compter les gens restants et leur voisinage ; agir seulement si les trois derniers sont proches.
- CONTRE : réparer ailleurs pendant que le tueur protège ce groupe est aussi une réponse ; en SoloQ, choisir le gen le plus isolé du groupe.

**R5 — Fin : anticiper les gates seulement quand c'est documenté.**

- Documenté : Nostromo (largement prévisibles, **pas garanties**), Underground Complex (Exit **Doors**), RPD (3 emplacements décrits sur le RPD original, répartition par aile inconnue). Ailleurs : positions RNG sur le pourtour, **ne rien présumer**.
- CAS D'ÉCHEC : partir vers « la gate habituelle » sans l'avoir vue.

### 5.3.7 Le coût des murs cassables (calcul)

Un mur cassable se casse en **2,34 s**, par le tueur seulement [FACT] (VM). Casser 3 murs coûte ≈ 7 s de tueur, soit ≈ 21 charges si 3 survivants réparent seuls (≈ **23 % d'un gen**). Un mur ouvert raccourcit **définitivement** la loop pour le tueur, mais peut aussi ouvrir une sortie au survivant (Badham) [HEURISTIQUE].

> **À retenir** : côté tueur, casser les murs **en patrouille**, quand ils serviront à plusieurs chases, plutôt qu'en pleine chase. Côté survivant, un mur cassé en pleine chase vous donne 2,34 s (≈ 9,4 m) : utilisez-les pour **changer de loop**, pas pour refaire la même.

Détail : `kb/research/batch8_maps.md` §3.0 et §4 ; `kb/research/batch7_tiles.md` §4.14.

---

## 5.4 Fiches par carte `[Intermédiaire]`

**Format de chaque fiche**

- **Fixe** : « contains » du wiki ou note officielle. Confiance par défaut **(SS)**.
- **RNG** : possible, pas garanti.
- **Verticalité / intérieur** : étages, drops, part d'intérieur.
- **Zones fortes / faibles** : seulement ce que les sources décrivent ; le reste est dit « non documenté ».
- **Archétypes** : toujours **[HYPOTHÈSE]** (aucun kill rate), avec le mécanisme.
- **Plan** : **[HEURISTIQUE]** début / milieu / fin, avec la condition.

Quand une fiche ne contient rien de propre à la carte dans les sources, elle le dit et renvoie au cadre général (§5.3). Mieux vaut une ligne vide qu'une ligne inventée.

---

### 5.4.1 The MacMillan Estate (industriel, hauts murs de briques)

**Commun au royaume** [FACT] (SS) : **The Tower (Coal Tower) et le Lumber Pile sur toutes les cartes sauf Shelter Woods** ; le Water Tower (structure carrée en briques, ni fenêtre ni palette décrites : obstacle de LOS). Murs de gyms **hauts**. Royaume visé par les **trois** passes 9.2.0, 9.3.0 et 9.3.2 (VP) — mais sans liste par carte : impossible de dire quelle loop précise a changé.

#### Coal Tower (I) — 132 sqT, petite
- **Fixe** : main « Warehouse » sur 2 niveaux, escalier intérieur. RDC : 3 casiers, **3 murs cassables**, **1 fenêtre**. Étage : **gen fixe**, **coffre fixe**, 1 mur cassable qui bloque un drop ; **3 drops** depuis l'étage. **2 palettes** à l'extérieur du bâtiment.
- **RNG** : escalier de sous-sol possible dans le main (sinon shack) ; gyms.
- **Verticalité / intérieur** : oui (étage + drops) ; carte extérieure.
- **Zones fortes / faibles** : fenêtre du RDC + drops = ressource de chase fixe ; un mur cassé change la loop du main (à réévaluer au pre-run).
- **Archétypes [HYPOTHÈSE]** : petite (≈ 1,4 s de moins par traversée que la médiane) → M1 un peu moins pénalisés. Tueur qui casse vite les murs : le main raccourcit pour lui.
- **Plan** :
  - *Début* : le gen de l'étage est exposé ; les drops sont la sortie. Le faire quand le tueur est loin.
  - *Milieu* : garder fenêtre + drops pour une chase longue (R3), **si** le tueur n'a pas cassé les murs qui prolongent le main.
  - *Fin* : petite carte → gates vite couvertes, ne pas compter sur un long trajet.
- **Côté tueur** : casser les murs qui prolongent le main coûte ≈ 7 s pour 3 murs (≈ 23 % d'un gen si 3 réparent) — rentable seulement si le main sert ensuite à plusieurs chases.
- 9.3.2 : correctif Nurse sur le rebord du bâtiment (VP).

#### Groaning Storehouse (I) — 156 sqT
- **Fixe** : « Storehouse », grand bâtiment **un seul niveau** ; 2 entrées principales à 2 portes de garage chacune ; **2 fenêtres**, 1 mur cassable, 3 casiers, **coffre fixe**.
- **RNG** : **certaines portes de garage parfois fermées** ; palette intérieure, gen, sous-sol possibles.
- **Verticalité / intérieur** : aucune verticalité ; grand volume fermé qui coupe la LOS depuis l'extérieur [HEURISTIQUE].
- **Zones fortes / faibles** : la sûreté du main dépend des portes ouvertes (RNG) ; le reste n'est pas documenté.
- **Archétypes [HYPOTHÈSE]** : peu de relief → neutre ; murs hauts du royaume → furtifs un peu aidés.
- **Plan** : *début* = noter quelles portes de garage sont ouvertes (change la sûreté du main) ; *milieu / fin* = cadre général.
- « 3 totems possibles dans le main » : **[INCERTAIN]**, absent des sources.

#### Ironworks of Misery (I) — 160 sqT
- **Fixe** : « Foundry » sur 2 niveaux ; **escalier intérieur (3 drops)** + **escalier extérieur (1 drop)** ; 7 casiers ; **gen RDC fixe** ; **coffre dans le bureau (étage)** ; 3 fenêtres (1 RDC, 2 à l'étage dont **une toujours bloquée**) ; 2 murs cassables (1 par niveau) ; 3 entrées RDC. Landmark secondaire : **Water Tower** qui grince au passage.
- **RNG** : crochet RDC, totem à l'étage, sous-sol possibles.
- **Verticalité / intérieur** : **forte** (4 drops).
- **Zones fortes / faibles** : main réputé fort [AVIS D'EXPERT, non mesuré].
- **Archétypes [HYPOTHÈSE]** : main à étages → difficile pour un M1. Nuance : la Nurse peut perdre une fatigue sur un blink au mauvais étage (l'étage **aide** le survivant qui lit le blink) ; Ghoul (bonds) et Hillbilly (rampes) sont moins gênés.
- **Plan** :
  - *Début* : le gen RDC est au pied d'une grosse ressource → à faire quand le tueur est loin (R2).
  - *Milieu* : garder le main pour une chase **si** le tueur n'a pas d'outil qui l'annule.
  - *Fin* : cadre général.
- Le grincement du Water Tower trahit un passage ; portée audible et notification éventuelle côté tueur **[INCERTAIN]**.
- Correctifs : fenêtre non vaultable (9.2.0), gen inaccessible d'un côté (9.3.0), navigation (9.3.2) (VP).

#### Shelter Woods (I) — 176 sqT, la plus grande (ex æquo Azarov's)
- **Fixe** : landmark central **Hunting Camp** (6.6.0) avec gen « Command Centre » ; **Twisted Tree** déplacé sur un côté ; **ni Tower ni Lumber Pile** ; **pas de collines**.
- **RNG** : gyms, fillers ; sous-sol (shack ou camp : non documenté).
- **Verticalité / intérieur** : faible ; carte boisée (arbres, rochers).
- **Zones fortes / faibles** : pas de main à étages ; non documenté au-delà.
- **Archétypes [HYPOTHÈSE]** : la plus grande → mobilité avantagée, M1 pénalisés (≈ 1,7 s de plus par traversée que la médiane) ; arbres qui cassent la LOS → furtifs aidés.
- **Plan** :
  - *Milieu / fin* : éviter de laisser les 3 derniers gens proches (3-gen). La distance entre gens restants joue pour les survivants, **mais** allonge aussi leurs propres trajets (≈ 26,5 s d'un bord à l'autre à 4,0 m/s).
  - *Fin* : gates potentiellement très éloignées l'une de l'autre (positions RNG) : repérer les deux avant l'EGC si possible.

#### Suffocation Pit (I) — 160 sqT
- **Fixe** : « Mine », grand bâtiment **un seul niveau** avec échafaudages ; 3 entrées (2 grandes, 1 petite) ; 3 fenêtres dont **une toujours bloquée** ; 1 mur cassable ; 2 casiers ; **coffre au-dessus de l'emplacement de sous-sol**.
- **RNG** : sous-sol possible dans la Mine (confirmé indirectement par un correctif 9.6.0 de texture au-dessus de son entrée) ; gyms.
- **Verticalité / intérieur** : faible (échafaudages non documentés comme accessibles).
- **Zones fortes / faibles** : main à **2 fenêtres actives** = ressource de mi-partie.
- **Archétypes [HYPOTHÈSE]** : profil « MacMillan standard » : murs hauts → furtifs aidés.
- **Plan** : main = banque de chase de mi-partie (R3) ; le reste relève du cadre général.

---

### 5.4.2 Autohaven Wreckers (casse, murs de gyms medium)

**Commun au royaume** [FACT] (SS) : **Crane, School Bus et Car Crusher sur toutes les cartes**. Crane : **toujours une palette entre la grue et une voiture** (ressource fiable). School Bus : 2 variantes, **un des deux vaults toujours bloqué** → identifier la variante et le vault actif à l'arrivée. Murs des gyms : « **medium** walls of metal scrap ». 9.3.0 : éclairage éclairci, **brouillard ajouté**, teinte revue (VP) ; passes palettes 9.2.0 et 9.3.2 (VP).

> **Erreur fréquente** : « Autohaven = hauts murs, faible LOS, royaume survivant ». Les murs de **gyms** sont medium : le tueur voit plus souvent la tête du survivant, les mindgames sont plus lisibles, et un Ranged peut tirer par-dessus. Les **hauts** murs de ferraille ne sont décrits qu'en **périphérie** de Wreckers' Yard. La réputation « favorable aux survivants » est une [AVIS D'EXPERT] sans chiffre ; l'effet net du changement d'éclairage 9.3.0 n'est pas mesuré.

#### Azarov's Resting Place (I) — 176 sqT, la plus grande (ex æquo)
- **Fixe** : « Office », petit bâtiment **un seul niveau** ; **1 fenêtre**, 2 entrées, 1 mur cassable, 2 casiers. 4.4.0 : deux zones clôturées ouvertes (168 → 176).
- **RNG** : sous-sol, coffre, totem possibles dans l'Office ; gyms, car piles.
- **Verticalité / intérieur** : faible.
- **Zones fortes / faibles** : **main faible** (une fenêtre) ; les survivants dépendent des tiles RNG, des car piles et de la palette fixe de la grue.
- **Archétypes [HYPOTHÈSE]** : grande + main faible → mobilité avantagée ; M1 pénalisés par la distance.
- **Plan** : *début* = repérer au pre-run les gyms et car piles utilisables (le main ne sauvera pas une chase) ; *milieu* = la palette de la grue est la seule palette garantie connue ; *fin* = gates potentiellement éloignées (RNG).

#### Blood Lodge — 156 sqT
- **Fixe** : « Lodge », petite cabane **2 niveaux reliés par une rampe** ; RDC : 1 fenêtre, 2 entrées, 1 mur cassable ; étage : 1 sortie + 1 drop ; **gen sur le porche** ; **coffre à l'étage** ; 2 casiers.
- **RNG** : sous-sol possible.
- **Historique** : rework 6.7.0 — main rapproché du centre, moins de tiles à faible LOS, maze tiles dangereux revus, 168 → 156.
- **Verticalité / intérieur** : légère (rampe + drop).
- **Zones fortes / faibles** : main central = carrefour des rotations.
- **Archétypes [HYPOTHÈSE]** : rien de spécifique au-delà du cadre §5.3.
- **Plan** : *début* = le gen du porche se fait près d'une ressource de chase (bon si le tueur est loin) ; *milieu* = main central, donc souvent traversé : le compter comme ressource commune, pas personnelle (SoloQ).

#### Gas Heaven (I) — 156 sqT
- **Fixe** : « Gas Station », **un seul niveau** (garage + boutique + pompe) ; **gen dans le garage — le terminer ouvre la porte du garage** ; 2 portes ; **2 fenêtres dont une seule ouverte** ; plusieurs murs cassables ; **Driveway Bell** : sonne quand un tueur **ou** un survivant marche sur le tuyau noir de la pompe.
- **RNG** : **quelle fenêtre est ouverte** ; coffre (coin boutique ou garage) ; nombre de casiers selon l'emplacement du sous-sol ; sous-sol possible.
- **Historique** : rework 6.7.0 — main rapproché du centre, car piles traversables, loops revues, 164 → 156.
- **Verticalité / intérieur** : aucune.
- **Zones fortes / faibles** : la valeur du main dépend de la fenêtre active ; la porte du garage change l'accès après le gen.
- **Plan** :
  - *Début* : repérer la fenêtre active à la première visite ; éviter la sonnette en infiltration (les deux camps l'entendent).
  - *Milieu* : après le gen du garage, la porte ouverte modifie les trajets autour du main : réévaluer la loop.
- Le « correctif de navigation autour du bus » de 9.2.0 concernait les **bots**, pas les joueurs (VP).

#### Wreckers' Yard (I) — 144 sqT
- **Fixe** : **pas de main building** ; **Killer Shack au centre, contient toujours le sous-sol**. Autour du shack : **pas de hauts murs** (murets bas, pull-downs, espace ouvert, souvent une petite colline). En périphérie : **hauts murs de ferraille**, bus, grues, citernes. 6.7.0 : **5 maze tiles** (au lieu de 6).
- **RNG** : itération des gyms, fillers.
- **Verticalité / intérieur** : faible.
- **Zones fortes / faibles** : **centre dégagé** (murets bas : peu de LOS à casser) = zone faible pour le survivant ; périphérie à hauts murs = obstacles de LOS.

```
   Wreckers' Yard (schéma de principe, pas à l'échelle)
   +--------------------------------------------+
   |  hauts murs de ferraille / bus / grues     |
   |    [gym]          [gym]          [gym]     |
   |          .   murets bas, ouvert  .         |
   |          .      [SHACK + sous-sol] .       |
   |          .    (petite colline ?)  .        |
   |    [gym]                        [gym]      |
   |  hauts murs de ferraille / citernes        |
   +--------------------------------------------+
   Positions exactes des gyms : non documentées (5 gyms, zones stables).
```

- **Archétypes [HYPOTHÈSE]** : sous-sol central = crochets de sous-sol à courte distance de presque toute la carte → le tueur peut l'utiliser plus souvent qu'ailleurs.
- **Plan** :
  - *Chase* : **quand on a le choix de la direction**, préférer la périphérie au centre dégagé.
  - *Sauvetage* : si un allié tombe près du centre, s'attendre au sous-sol et préparer un sauvetage **à plusieurs** (sortie unique).
  - *Contre-cas* : le tueur ne choisit pas librement le sens de la chase et n'est pas obligé d'utiliser le sous-sol ; n'en faites pas une certitude.
- 9.2.0 : vault de la grue réparé (VP).

#### Wretched Shop (I) — 164 sqT
- **Fixe** : « Garage », grand bâtiment **un seul niveau** ; **gen fixe**, **coffre fixe**, 1 mur cassable, 4 casiers, 2 entrées ; **4 fenêtres dont une seule ouverte à la fois**.
- **RNG** : **quelle fenêtre est active** ; crochet, sous-sol possibles.
- **Verticalité / intérieur** : aucune.
- **Zones fortes / faibles** : la valeur du main dépend de la position de la fenêtre active.
- **Archétypes [HYPOTHÈSE]** : grande → mobilité légèrement avantagée.
- **Plan** : *début* = repérer la fenêtre active dès la première visite et le dire (SWF) ; *milieu* = main à une fenêtre = 3 vaults par poursuite, puis blocage : prévoir la tile suivante.
- 9.4.0 : objets gênant la navigation autour d'un camion, gen non interactif d'un côté corrigés (VP).

---

### 5.4.3 Coldwind Farm (ferme, plein jour, maïs)

**Commun au royaume** [FACT] (SS) : **Sacrificial Tree (« Cow Tree ») et Harvester sur toutes les cartes**. Cow Tree : murets de pierre bas, **1 fenêtre** dans un muret + **1 palette** entre deux murets. Harvester : accès par la tête et la rampe ; au sommet, vault **gauche** = drop sans retour, vault **droit** = balle de foin avec aller-retour (ancienne quasi-infinite, nerfée). Murs de gyms **hauts**. Seule passe palettes : **9.2.0** (VP). 9.6.0 : collision d'un mur près de l'arbre corrigée (VP).

**Deux terrains opposés sur la même carte** [HYPOTHÈSE] :

| Terrain | Effet | Aidés | Gênés |
|---|---|---|---|
| **Maïs** | Cache sans bloquer | furtifs, tueurs qui lisent les scratch marks | projectiles (cible cachée) |
| **Zones dégagées** (plein jour, autour des structures) | Lecture à distance | Ranged | furtifs |
| **Gyms** (murs hauts) | LOS bloquée | mindgames | Ranged |

Contre les auras (perks, pouvoirs), le maïs n'aide pas. « Pas de 4-lane à Coldwind » : **[INCERTAIN]** depuis le pool commun 9.2.0.

> **Note avancée** : le Cow Tree est entouré de murets **bas** : le tueur voit tout, le survivant peu. C'est une tile de transition, pas un refuge. Au Harvester, ne montez que si la sortie est planifiée (le vault gauche est sans retour).

#### Fractured Cowshed — 152 sqT
- **Fixe** : « Barn », grand bâtiment **un seul niveau**, 4 entrées, **2 fenêtres**, **gen fixe**, 4 casiers ; pièce murée (décor). 7.1.0 : nouvelles loops dans le main, dont **1 palette** ; 168 → 156 (3.7.0) → 152 (7.1.0).
- **RNG** : coffre, sous-sol possibles.
- **Verticalité / intérieur** : aucune.
- **Zones fortes / faibles** : « tiles safe enchaînables vers la fenêtre du shack » [AVIS D'EXPERT, non vérifiable].
- **Archétypes** : rien de propre à la carte dans les sources → cadre §5.3 (taille médiane : effet de taille négligeable).
- **Plan** : *début* = le gen du Barn est à côté d'une ressource de chase → à faire tôt quand le tueur est loin ; *milieu* = 2 fenêtres + palette du main = banque de chase (R3).

#### Rancid Abattoir (I) — 140 sqT
- **Fixe** : « Slaughterhouse », grand bâtiment **un seul niveau**, 4 entrées, **3 fenêtres**, **2 palettes**, 7 casiers. 7.1.0 : 136 → 140, nouveaux tiles dans le main.
- **RNG** : gen, coffre, sous-sol possibles.
- **Verticalité / intérieur** : aucune.
- **Zones fortes / faibles** : **main riche** (2 palettes + 3 fenêtres) ; réputée « plutôt tueur : petite, peu de ressources dehors » [AVIS D'EXPERT, non mesuré].
- **Archétypes** : rien de propre à la carte dans les sources → cadre §5.3.
- **Plan** : *milieu* = main à préserver comme banque de chase (R3) **si** les ressources extérieures suffisent au début ; *contre-cas* : contre un tueur anti-loop, les palettes du main valent moins, la fenêtre reste utile.

#### Rotten Fields — 160 sqT
- **Fixe** : **aucun bâtiment principal** ; seuls landmarks : **Killer Shack** et **Sacrificial Tree** (+ Harvester du royaume). **Sous-sol toujours au Killer Shack**.
- **RNG** : tout le reste (tiles non décrits par le wiki).
- **Verticalité / intérieur** : Harvester seulement.
- **Zones fortes / faibles** : pas de main fort → dépend des tiles RNG ; fiche **peu documentée**.
- **Archétypes [HYPOTHÈSE]** : grande (160) → mobilité légèrement avantagée.
- **Plan** : même logique que Wreckers' Yard pour le sous-sol : sa position est connue dès que le shack est repéré. « Moitié à 2 structures = le haut » : **[INCERTAIN]**.

#### The Thompson House (I) — 152 sqT
- **Fixe** : « Farmhouse » **2 étages**, escalier intérieur ; RDC **5 entrées** ; étage : **1 fenêtre**, **gen fixe**, **coffre fixe** ; 4 casiers.
- **RNG** : sous-sol possible.
- **Verticalité / intérieur** : oui (étage à une fenêtre).
- **Zones fortes / faibles** : le gen de l'étage n'a qu'une issue claire (la fenêtre).
- **Archétypes** : rien de propre à la carte dans les sources → cadre §5.3.
- **Plan** : *début / milieu* = faire le gen de l'étage à 1 ou 2, en gardant la fenêtre comme sortie ; ne pas s'y faire surprendre à 3.

#### Torment Creek (I) — 156 sqT
- **Fixe** : « Silo », grand bâtiment **un seul niveau**, 3 entrées, **1 fenêtre**, **gen fixe**, 1 casier.
- **RNG** : sous-sol, coffre, crochet possibles.
- **Historique** : 168 → 156 attribué à 9.2.0 par le wiki seul **[INCERTAIN]** ; 10.1.2 : mur du main qui laissait passer les projectiles corrigé (VP).
- **Zones fortes / faibles** : main à **1 fenêtre** = ressource limitée (3 vaults par poursuite).
- **Plan** : réparer le gen du Silo avec une **sortie planifiée** vers une autre tile ; rien de spécifique au-delà du cadre §5.3.

Détail : `kb/research/batch8_maps.md` §3.1-3.3.

---
### 5.4.4 Crotus Prenn Asylum (béton, bois brûlé)

**Commun** : murs de gyms hauts (béton) ; passes 9.2.0, 9.3.0 et 9.3.2 (VP). 9.3.0 vise explicitement le main de l'Asylum : il « pouvait spawn près des maze tiles et s'y chaîner » → **main moins safe** (VP). Le risque de chaîne « main + gyms » a donc été réduit par BHVR.

#### Disturbed Ward (I) — 152 sqT
- **Fixe** : « Shock Therapy Centre » **2 étages, 2 escaliers intérieurs** ; RDC : 3 fenêtres (**une toujours bloquée**), 3 entrées ; **gen au RDC et gen à l'étage** (2 gens fixes) ; **coffre à l'étage** ; plusieurs palettes et casiers.
- **RNG** : sous-sol possible ; **contenu du main soumis à une spawn logic revue en 9.3.0** (équilibre fenêtre / palette) (VM).
- **Historique** : 172 → 152 attribué à 9.2.0 par le wiki seul **[INCERTAIN]**.
- **Verticalité / intérieur** : forte (2 étages, 2 escaliers).
- **Zones fortes / faibles** : main riche mais moins safe depuis 9.3.0.
- **Archétypes [HYPOTHÈSE]** : 2 gens fixes dans un bâtiment à étages = **deux tiers** d'un 3-gen ; il n'existe que si un 3e gen RNG est proche **et** si ces trois-là restent.
- **Plan** :
  - *Début* : les 2 gens du main se font en parallèle **si le tueur est loin** ; risque : deux survivants au même endroit, une seule patrouille les trouve.
  - *Milieu* : vérifier s'il existe un 3e gen proche du main. Sinon, pas de 3-gen à craindre ici.
  - *Fin* : si les 3 derniers gens sont autour du main, en finir un tôt ou réparer ailleurs pendant que le tueur le garde (R4).

#### Father Campbell's Chapel (I) — 140 sqT
- **Fixe** : chapelle, seuls **RDC + 1er étage** accessibles (escalier supérieur bloqué par des gravats) ; **gen à l'étage** ; 3 casiers en bas, 1 en haut ; plusieurs fenêtres. **Clown's Caravan** (zone carnaval) : **plusieurs palettes**, **1 fenêtre** sur la caravane principale.
- **RNG** : coffre, sous-sol (chapelle) ; totem, coffre, gen (caravane).
- **Verticalité / intérieur** : chapelle à un étage.
- **Zones fortes / faibles** : deux zones de ressources (chapelle, caravane) ; « god window » de la chapelle [AVIS D'EXPERT, non mesuré].
- **Archétypes** : rien de propre à la carte → cadre §5.3.
- **Plan** : ne pas brûler la caravane et la chapelle dans la même chase ; garder l'une comme banque (R3).
- Correctifs : collision escaladable près du carnaval (9.3.0), tile (9.6.0) (VP).

---

### 5.4.5 Backwater Swamp (boue, bois)

**Commun** [FACT] : **Pier (ponton) sur toutes les cartes** — étage avec gen, 2 casiers, plusieurs drops ; RDC avec plusieurs vaults et une palette (2 emplacements possibles). 9.3.0 : **spawn logic des piers revue** pour équilibrer fenêtres et palettes (VP). Passes 9.2.0 et 9.3.2 (VP). Murs de gyms hauts. 2.5.0 : roseaux abaissés (visibilité).

#### The Pale Rose — 161 sqT
- **Fixe** : bateau à aubes **2 niveaux, 3 escaliers extérieurs** ; pont inférieur **4 entrées** ; pont supérieur **2 fenêtres**, **gen fixe (déclenche la corne de brume)**, **coffre fixe** ; plusieurs palettes. **Shrimp Boat toujours présent** (2 entrées latérales, rampes ou fenêtre). **Crow bomb** : des corbeaux croassent en groupe près du Pale Rose et révèlent une position.
- **RNG** : sous-sol (bateau) ; coffre, totem, gen (Shrimp Boat).
- **Historique** : 215 → 161 (2.3.0) ; 2.5.0 : crochets plus probables au centre. Désactivée avant 10.0.1, puis ré-activée (VP).
- **Verticalité / intérieur** : oui (bateau à 2 niveaux).
- **Zones fortes / faibles** : le bateau (2 fenêtres, palettes, escaliers) ; le Shrimp Boat est une transition vers lui.
- **Archétypes [HYPOTHÈSE]** : parmi les plus grandes → mobilité avantagée.
- **Plan** : *début* = attention au crow bomb en infiltration ; *milieu* = après le gen du bateau, **le quitter** plutôt que d'y rester : ce que la corne ajoute à la notification d'un gen terminé, et sa portée, sont **[INCERTAIN]**.

#### Grim Pantry — 168 sqT
- **Fixe** : **Pantry**, grand bâtiment ouvert sur 2 niveaux (plusieurs escaliers), **gen à l'étage** — le réparer **ouvre une vanne extérieure** (accès plus facile au bas) — 2 palettes, 6 casiers. **Cursed Cabin** sur 2 niveaux : **gen à l'étage** (ouvre sa vanne), 2 palettes, 1 fenêtre, 1 porte, **1 crochet**, 2 casiers. Un coffre dans chacun.
- **RNG** : reste des tiles.
- **Verticalité / intérieur** : 2 bâtiments à 2 niveaux.
- **Zones fortes / faibles** : **2 bâtiments à 2 palettes** ; la Cursed Cabin a un crochet fixe (une chase qui s'y termine se termine près d'un crochet).
- **Archétypes [HYPOTHÈSE]** : grande (168) → mobilité avantagée.
- **Plan** : les 2 gens fixes **changent l'accès** aux bâtiments une fois faits (vannes) : savoir s'ils sont faits avant d'y mener une chase de fin. Désactivée avant 10.0.1, ré-activée (VP).

---

### 5.4.6 Léry's Memorial Institute — Treatment Theatre (98 sqT, la plus petite mesurée)

- **Fixe** : carte **intérieure**, **pas de shack, pas de maze tiles, pas de collines**. **Treatment Room** : 2 niveaux, 2 escaliers ; en bas : **gen** et **un crochet** ; en haut : galerie avec fenêtres et drops, **coffre à l'étage** ; réparer le gen **ouvre des volets de la galerie → nouveaux vaults**. **Library** : 3 entrées, 1 fenêtre, bureau central, **palette dans un couloir étroit** devant une porte.
- **RNG** : 2.7.0 : **fenêtres à configuration fixe par salle, mais les ENTRÉES des salles sont aléatoires** ; sous-sol (Treatment Room **ou** Library) ; répartition des gens ; gen, totem possibles à la Library.
- **Probable, pas garanti** : panneaux lumineux clignotants près des salles avec gen (2.5.0 : « increased the chances »).
- **Verticalité / intérieur** : intérieur intégral ; étage à la Treatment Room seulement.
- **Zones fortes / faibles** : Treatment Room (vaults supplémentaires **après** son gen) ; couloirs étroits.
- **Archétypes [HYPOTHÈSE]** : très petite + couloirs → zone / pièges et M1 moins pénalisés ; la mobilité perd son avantage de distance (≈ 4 s de moins par traversée que la médiane).
- **Plan** :
  - *Début* : utiliser les panneaux **quand ils sont là** ; un couloir sans panneau ne prouve pas l'absence de gen.
  - *Milieu* : une chase dans la Treatment Room se termine près d'un crochet fixe ; ses meilleurs vaults n'existent qu'après son gen.
  - *Fin* : très petite carte → gates vite couvertes.

> **Erreur fréquente** : « fenêtres et entrées fixes à Treatment Theatre ». Depuis 2.7.0, seules les **fenêtres** sont fixes par salle ; les **entrées** changent. Vérifier les portes à chaque partie.

---

### 5.4.7 Red Forest (rondins)

**Commun** : murs de gyms hauts ; passes 9.2.0, 9.3.0 (spawn logic impactée) et 9.3.2 (VP) ; refonte visuelle 6.6.0. « Locker gym exclusif » : **[INCERTAIN]** depuis 9.2.0.

#### Mother's Dwelling (I) — 152 sqT
- **Fixe** : **Hunting Cabin** 2 niveaux, escaliers **intérieur et extérieur** vers le balcon ; RDC : 3 entrées, 4 fenêtres (**une toujours bloquée**), 2 casiers ; étage : 4 entrées, 1 fenêtre + 1 vault sur la terrasse, rebords à sauter ; **gen sur le balcon**. **Smoke House** : 2 niveaux, 3 entrées RDC, étage avec 1 fenêtre et 1 ouverture.
- **RNG** : sous-sol (cabin) ; coffre (cabin ou smoke house).
- **Historique** : 188 → 152 (7.4.0), longtemps la plus grande carte.
- **Verticalité / intérieur** : forte (2 bâtiments à étages proches du centre).
- **Archétypes [HYPOTHÈSE]** : rebords et étages → M1 pénalisés.
- **Plan** : aucune ligne propre dans les sources ; appliquer R2-R3 (deux structures verticales = deux banques de chase à répartir dans la partie).

#### The Temple of Purgation — 136 sqT
- **Fixe** : **Temple** de pierre au centre, **3 niveaux accessibles**, plusieurs entrées ; **1 gen aux catacombes qui active structures et portes du temple une fois réparé** ; casiers et vaults ; pluie et brume.
- **Historique** : 172 → 156 (3.7.0) → 136 (7.4.0).
- **Archétypes [HYPOTHÈSE]** : petite + temple central → M1 moins pénalisés ; forte verticalité pour les survivants.
- **Plan** : le gen du temple **modifie le bâtiment** → savoir s'il est fait avant d'y entrer en chase.

---

### 5.4.8 Springwood — Badham Preschool (I) — 144 sqT

Seule Badham I en matchmaking public (II-V en Custom Game).

- **Fixe** : **Preschool** 2 niveaux (RDC + chaufferie à lumière rouge), **3 niveaux s'il contient le sous-sol** ; RDC : **4 entrées**, les **latérales fermées par des murs cassables** par défaut ; **gen fixe** ; plusieurs palettes et casiers. **Pas de maze tiles** ; shack présent. **Crochet garanti dans la chaufferie si le sous-sol est au shack** (2.5.0). Palette du couloir d'entrée côté parking retirée.
- **RNG** : sous-sol (Preschool ou shack) ; coffre ; disposition des maisons **[INCERTAIN]**.
- **Verticalité / intérieur** : maisons et rue ; chaufferie en sous-niveau.
- **Zones fortes / faibles** : « très favorable aux survivants (maisons + rue, beaucoup de palettes) » [AVIS D'EXPERT, pas de chiffre].
- **Archétypes [HYPOTHÈSE]** : nombreux bâtiments → M1 désavantagés ; anti-loop et Ranged en ligne de rue avantagés.
- **Plan** :
  - *Tueur* : casser les murs latéraux de la Preschool **ouvre** des entrées : raccourci pour lui, mais aussi sorties pour le survivant. Effet net **non mesuré** ; 2,34 s par mur.
  - *Survivants* : vérifier au pre-run quels murs sont déjà ouverts ; ne pas jeter les palettes de clôture sans nécessité (elles sont finies).
- Désactivée avant 10.0.1, ré-activée (VP).

---

### 5.4.9 Gideon Meat Plant — The Game (142 sqT = 76 haut + 66 bas)

- **Fixe** : **seule carte 100 % intérieure avec maze tiles** ; **2 étages sur toute la surface** ; **pas de shack**. **Bathroom** : salle longue et étroite dans un coin du **RDC**, **gen**, casiers, **coffre**. **Escalier du sous-sol toujours derrière la Bathroom**. **Tous les gens sont reliés à des portes coulissantes**. **Pig Vat** : ouverture en bas pour vaulter entre les étages. Murs de gyms jusqu'au plafond.
- **RNG** : itération des gyms intérieurs, autres gens.
- **[HYPOTHÈSE]** : « une porte fermée = un gen non terminé à proximité ». Le wiki ne dit **ni quand** la porte s'ouvre **ni quand** elle se ferme → à vérifier en Custom Game.
- **Verticalité / intérieur** : totale → sons et Terror Radius trompeurs entre étages.
- **Archétypes [HYPOTHÈSE]** : couloirs et étages → zone / pièges aidés ; tueurs qui dépendent de l'ouïe gênés (les deux camps).
- **Plan** :
  - *Début* : ne pas utiliser les portes comme « radar à gens » tant que l'hypothèse n'est pas vérifiée.
  - *Milieu* : **quand on a le choix du trajet**, éloigner la chase du coin de la Bathroom. Si l'on tombe près d'elle, les alliés savent **où** sera le crochet de sous-sol : information pour préparer le sauvetage.
  - *Contre-cas* : une bonne chase près de la Bathroom vaut mieux qu'une chase courte ailleurs.
- Callouts du seed (« Control Room 12 h », « pallet stairs », « hole room ») : absents du wiki **[INCERTAIN]**.

---

### 5.4.10 Yamaoka Estate (bois moussu, bambou)

**Commun** [FACT] (SS) : **Arbor sur toutes les cartes** (3 escaliers, un vault, **palette sur un rocher parallèle** face à un pont rouge) ; Shrine et Patio (murets bas, 1 fenêtre + 1 palette) comme structures du royaume ; collines à deux accès. Murs de gyms hauts. Passes 9.2.0, 9.3.0, 9.3.2 (VP).

#### Family Residence (I) — 156 sqT
- **Fixe** : résidence 2 niveaux dont **seul le RDC est accessible**, plusieurs vaults ; **2 fenêtres** ; **gen fixe** ; 2 casiers. Colline propre à la carte (gen possible au sommet).
- **RNG** : sous-sol.
- **Archétypes [HYPOTHÈSE]** : main plat à plusieurs vaults → ressource moyenne ; murs hauts → furtifs aidés.
- **Plan** : aucune ligne propre dans les sources → cadre §5.3 ; l'Arbor (vault + palette du rocher) est une ressource de royaume garantie.

#### Sanctum of Wrath (I) — 156 sqT
- **Fixe** : **Shrine** moyen 2 niveaux, **4 escaliers** vers le sommet, fenêtres sur les rambardes, drops, **palette à côté de la statue**, **gen fixe**. Sous-sol possible au Shrine (confirmé par un correctif 10.0.0).
- **RNG** : sous-sol.
- **Archétypes [HYPOTHÈSE]** : shrine très vertical → M1 gênés ; tueurs qui montent vite ou coupent par le bas mieux lotis.
- **Plan** : aucune ligne propre → cadre §5.3. « Shack à 2 emplacements possibles » : **[INCERTAIN]**, absent du wiki.

---

### 5.4.11 Ormond (neige, lumineux)

**Commun** : murs de gyms hauts (pierre enneigée) ; passes 9.2.0 et 9.3.2 (« Ormond ») ; **9.3.0 nomme Mount Ormond Resort seulement** (VP).

#### Mount Ormond Resort (I) — 156 sqT
- **Fixe** : **Chalet** 3 niveaux (escalier, sauts de balcons), **gen fixe**, 2 casiers, plusieurs fenêtres ; **Snowcat** (chenillette + **palette** fixe près d'un tas de rochers) ; **Chairlift** (cabane surélevée, escalier arrière, **3 drops** : fenêtre, mur cassable, ouverture).
- **RNG** : sous-sol (chalet) ; coffre (Snowcat, Chairlift) ; totem (Chairlift).
- **Historique** : 7.5.0 abords du chalet refaits ; 9.3.0 palettes moins safe + spawn logic fenêtre / palette (VP).
- **Verticalité / intérieur** : forte (Chalet, Chairlift).
- **Archétypes [HYPOTHÈSE]** : l'une des cartes les plus lumineuses → furtifs désavantagés ; lecture à distance pour les deux camps.
- **Plan** : Chalet + Chairlift = **deux zones de chase verticales** à répartir dans la partie (R3) ; palette du Snowcat = ressource garantie.

#### Ormond Lake Mine — 132 sqT
- **Fixe** : **Mine Building** 2 niveaux, **4 accès à l'étage** (2 extérieurs, 2 intérieurs), **gen garanti à l'étage** ; palettes : **3 emplacements à l'étage, 2 au RDC** (le wiki ne dit pas si toutes apparaissent) ; 3 fenêtres (2 à l'étage près du gen, 1 au RDC à côté d'un mur cassable) ; **tunnel de glace** vers la Mine Tower. **Mine Tower** : **gen garanti + palette garantie**, fenêtre à l'étage, drops, drop vers le tunnel. **Ascenseur scripté** en bord de carte qui s'écrase quand un joueur approche (bruit fort).
- **RNG** : reste des tiles ; sous-sol non documenté.
- **Verticalité / intérieur** : forte (étage, tunnel souterrain).
- **Archétypes [HYPOTHÈSE]** : **2 gens fixes proches** (Building + Tower) = deux tiers d'un 3-gen ; petite carte → M1 un peu moins pénalisés.
- **Plan** :
  - *Milieu* : dès qu'un 3e gen proche du complexe est repéré, éviter que ces trois-là soient les derniers (en finir au moins un avant la mi-partie).
  - *Contre-cas* : si le tueur patrouille le complexe, réparer ailleurs pour l'y fixer vaut aussi.
  - L'ascenseur trahit un passage (portée **[INCERTAIN]**).

---

### 5.4.12 Hawkins National Laboratory — The Underground Complex (138 sqT, estimation)

- **Fixe** : intérieur **2 niveaux** avec passerelles ; **pas de shack, pas de maze tiles** ; **Exit DOORS** coulissantes au lieu d'Exit Gates. **Rift Lab** : 2 niveaux, labo fermé + le Rift en bas (accès par un vault ou une porte), **fenêtre** à côté d'un bureau, **palette** entre un bureau et le mur du fond ; étage avec drops ; casiers. **Interrogation Rooms** à l'étage (vaults, palettes possibles) ; **Isolation Room** voisine : **gen fixe**. Une moitié de carte en visuel « Upside Down » (plus sombre).
- **RNG** : **sous-sol : 2 emplacements, dont un au Rift Lab** (l'autre non décrit) ; gen de l'étage du Rift Lab ; crochet, coffre, totem.
- **9.3.0** (VM) : navigation améliorée, **au moins une porte ouverte en permanence sur chaque côté des grandes salles**, nouvel accès au gen au-dessus de la control room.
- **Archétypes [HYPOTHÈSE]** : couloirs et portes → zone / pièges et tueurs qui coupent les chemins aidés ; ouïe brouillée par les 2 niveaux ; beaucoup de casiers → **Dredge** avantagé.
- **Plan** :
  - *Début* : repérer **lequel** des deux emplacements de sous-sol est actif avant d'en tirer une règle de chase.
  - *Milieu* : côté Upside Down = meilleur pour se cacher, pire pour lire le tueur.
  - *Fin* : Exit Doors à positions documentées (R5).

---

### 5.4.13 Grave of Glenvale — Dead Dawg Saloon (I) — 136 sqT

- **Fixe** : **Saloon** 2 étages, beaucoup de fenêtres aux 2 niveaux, **gen sur le porche de l'étage**. **Gallows** (près du Saloon, du shack et de l'entrée de la ville) : **gen à côté du pendu** — le terminer ouvre **2 trappes** qui font tomber les survivants — et **2 casiers sous le plancher**. **Water Tower + Windmill + cabane** : **gen** (côté chemin **ou** près de la cabane), **palette entre les bases**, **fenêtre dans la cabane**, 2 casiers. **Shack western avec mur cassable**. **Pas de collines**. Carte au crépuscule. Gyms L-T et 4-lane **toujours avec un mur cassable**.
- **RNG** : sous-sol (Saloon) ; coffres, totems, crochet.
- **Totem « garanti » derrière le water tower** : le wiki l'écrit encore, mais la note **9.3.0** l'a corrigé comme bug (VP) → **possible, pas garanti**.
- **Archétypes [HYPOTHÈSE]** : 3 gens fixes ; Saloon + Gallows proches = deux tiers d'un 3-gen (proximité du 3e, au Water Tower, non documentée). Ville à murs cassables → tueurs qui cassent vite (Brutal Strength) ou qui ignorent les murs (Nurse, Artist, Executioner) aidés.
- **Plan** :
  - *Tueur* : casser les murs des gyms **en patrouille** plutôt qu'en chase (coût cumulé élevé).
  - *Survivants, milieu* : Saloon + Gallows ne deviennent un 3-gen que si un 3e gen proche reste avec eux : le vérifier.
  - *Gallows* : ne pas finir ce gen en se tenant sur le plancher pendant une chase proche (effet exact en chase **[INCERTAIN]**).

---

### 5.4.14 Silent Hill — Midwich Elementary School (113,5 sqT = 64 bas + 49,5 haut)

- **Fixe** : intérieur **2 niveaux** (+ extérieurs) ; **pas de shack** ; **Courtyard** central : **gen**, nombreux casiers, **nombreuses palettes**, **2 fenêtres**, plusieurs murs cassables, nombreuses entrées. **Clock Tower Secret Room** : réparer le gen du **Chemistry Lab**, puis celui de la **Music Room**, puis déclencher l'EGC → la porte s'ouvre ; coffre garanti dedans (peut être vide selon l'ordre).
- **RNG** : totem, coffre (Courtyard) ; gens des salles (présence garantie du gen de chaque salle **[INCERTAIN]**).
- **8.2.0** : **LOS des couloirs réduite**, nouveaux tiles intérieurs et extérieurs.
- **Archétypes [HYPOTHÈSE]** : emprise au sol 64 sqT + intérieur → M1 et zone aidés ; Ranged moins aidés depuis 8.2.0 ; coins favorables aux furtifs (Ghost Face, Onryō) ; casiers nombreux → Dredge.
- **Plan** : Courtyard = cœur des ressources. L'utiliser quand il **rapporte** une longue chase, pas le garder par principe : une ressource gardée pendant qu'un allié tombe faute de palettes n'a rien rapporté (R3).

---

### 5.4.15 Raccoon City — RPD East Wing / RPD West Wing (non mesurées)

Deux cartes distinctes, **toutes deux en rotation** ; le RPD original est réservé au 2v8.

- **Fixe (les deux)** : **Main Hall** (statue) : **gen soit en bas près du comptoir, soit à mi-hauteur au pied de la statue** (RNG entre deux positions) ; **pas de shack, pas de maze tiles** ; **trou dans le sol de la Library vers la Dark Room** ; porte cour → Fire Escape élargie en 7.2.0, **un crochet toujours juste derrière** ; passerelle de la Library bloquée.
- **East Wing** : moitié ouest bloquée (Operations, Records, S.T.A.R.S., Armurerie…) ; Break Room ouverte ; **toit accessible** par le Fire Escape.
- **West Wing** : moitié est haute bloquée ; **S.T.A.R.S. Office ouvert sur l'Armurerie** ; zone extérieure agrandie derrière Safety Deposit / Dark Room ; accès au toit bloqué.
- **[INCERTAIN]** : sur le RPD original, le wiki décrit 3 emplacements de gates et 2 de sous-sol ; leur répartition par aile n'est pas documentée.
- **Archétypes [HYPOTHÈSE]** : intérieur à étages + portes → zone / pièges ; **Nemesis** (zombies plus gênants en couloirs) ; **Dredge** (casiers) ; navigation complexe = avantage au camp qui connaît la carte.
- **Plan** : *début* = repérer la position du gen du Main Hall et l'emplacement du sous-sol dès la première rotation ; *SoloQ* = supposer que les alliés connaissent mal la carte.

---

### 5.4.16 Forsaken Boneyard (grès, racines)

Pas dans les passes palettes 9.x. Murs de gyms hauts. Offrande Crow's Eye = royaume.

#### Eyrie of Crows — 148 sqT
- **Fixe** : **The Eyrie**, grande tour dans la **moitié haute** de la carte ; entrées au sol, passerelles à l'étage, **balcon accessible tout autour** ; **gen fixe** ; plusieurs fenêtres, **plusieurs murs cassables**, casiers.
- **RNG** : totem (4 emplacements), coffre, crochet, sous-sol.
- **6.5.0** : 156 → 148, forme ~carrée, **maze tiles éloignés du main et du shack** (anti-combos), feuillage ajouté (aide aux pièges, intention déclarée).
- **Archétypes [HYPOTHÈSE]** : main vertical à murs cassables ; tueurs à pièges aidés par le feuillage.
- **Plan** : la tour est dans une moitié → orientation facile ; les gens du côté opposé sont plus isolés (bons pour une réparation tranquille, mauvais pour se replier vers une ressource).

#### Dead Sands — 140 sqT (fiche peu documentée)
- **Fixe** : **centrée sur le Killer Shack**, **pas d'Eyrie** ; statues sentinelles (décor).
- **RNG** : tout le reste (non documenté).
- **Sous-sol** : probablement au shack faute de main, **[INCERTAIN]** (absente de la liste de la page Killer Shack).
- **Plan** : sans main, tout dépend des tiles RNG ; lire le pre-run avec soin.

---

### 5.4.17 Withered Isle (planches blanches, végétation)

Pas dans les passes palettes 9.x. Murs de gyms hauts (sauf Garden of Joy : 2 designs). « Pas de pallet gym ni de 4-lane » : **[INCERTAIN]** depuis 9.2.0.

#### Garden of Joy — 164 sqT
- **Fixe** : **Mansion** 2 niveaux, **4 entrées** au RDC ; étage (4 chambres + débarras, accès au toit du porche) avec **gen fixe** ; plusieurs fenêtres. **Parking Lot** (bout de route, opposé au shack) : **palette** et **fenêtre** fixes.
- **RNG** : **1 à 2 palettes** dans la Mansion ; **coffre non garanti** (« up to two Chests ») ; **Gazebo OU Greenhouse** ; **Treehouse OU Train Car** (paires exclusives) ; Greenhouse : fenêtre **ou** palette ; sous-sol, totem (4 emplacements), crochet sur le toit.
- **7.4.0** : passe gameplay réduisant la force de certains tiles.
- **Zones fortes / faibles** : « dining room window » très forte [AVIS D'EXPERT, non mesuré] ; LOS **mixte** selon le design de mur.
- **Archétypes [HYPOTHÈSE]** : grande (164) → mobilité légèrement avantagée.
- **Plan** : aucune ligne propre dans les sources → cadre §5.3 ; *début* = identifier quelle structure de chaque paire est présente.

#### Greenville Square — 160 sqT
- **Fixe** : **Theatre** : **gen dans la cabine de projection** (le projecteur s'allume quand il est fait), 6 casiers, **coffre garanti dans les toilettes**, **2 palettes** (arcade, salle de projection), **3 fenêtres** (escalier extérieur, toilettes, comptoir) ; escaliers intérieur et extérieur, un drop-down et un drop-off à l'étage, **rampe à sens unique** au RDC ; la palette de l'arcade fait sonner les flippers. **Pilgrim Statue** : clôture circulaire à 4 ouvertures.
- **RNG** : gen et coffre près de la statue ; totem (3 emplacements) ; sous-sol.
- **Archétypes [HYPOTHÈSE]** : ville à bâtiments → LOS cassée ; théâtre à étages = ressource forte.
- **Plan** : théâtre = banque de chase (R3) ; la rampe à sens unique est une **sortie**, pas une loop.

#### Freddy Fazbear's Pizza — 148 sqT (fiche peu documentée)
- **Fixe** : **Pizzeria** : **gen devant la scène** (le réparer lance un show des animatroniques, bruyant) ; arcade, cuisine, salles de service.
- **RNG** : **ball pit dans l'arcade lorsque le sous-sol est au Killer Shack** (il remplace l'accès au sous-sol de la pizzeria).
- **Archétypes [HYPOTHÈSE]** : bâtiment intérieur à plusieurs salles → zone / pièges aidés dedans.
- **Plan** : données insuffisantes au-delà du cadre §5.3.

> **Erreur fréquente** : « le ball pit peut remplacer le Killer Shack ». Faux : il apparaît **quand le sous-sol est au shack**.

#### Fallen Refuge — 128 sqT (fiche peu documentée)
- **Fixe** (VM) : **Prison Tower**, tile thématique The Walking Dead = **variante d'un Short Wall Jungle Gym** ; **gen fixe dans la tour** ; rôdeurs et portes barricadées qui s'agitent au passage (bruit).
- **RNG** : reste.
- **Archétypes [HYPOTHÈSE]** : 3e plus petite carte mesurée, mais seulement ≈ 1,7 s de moins par traversée que la médiane → effet de taille **faible**.
- **Plan** : la tour est une loop de type jungle gym, **pas** un main à étages : ne pas la surestimer.

---

### 5.4.18 The Decimated Borgo (turquoise depuis 8.0.0)

Passe palettes 9.2.0 seulement (VP). 8.0.0 : palette de couleurs rouge → turquoise (lisibilité du sang et des auras). Hauteur des murs de gyms **[INCERTAIN]**.

#### The Shattered Square — 144 sqT
- **Fixe** : **Gathering Hall** (taverne) **dans un coin** depuis 7.3.0 : **gen à l'étage**, **coffre garanti à l'étage** (2e possible), 6 casiers, **1 palette au RDC**, **2 fenêtres** (étage), **2 entrées RDC, 2 drops depuis l'étage**. **The Tree** (racines pourpres + puits). **Pas de collines**.
- **RNG** : **Marketplace OU Gallows** — Marketplace : plateforme, 2 escaliers, jusqu'à 2 palettes, 2 casiers ; Gallows : escalier + rampe, **fenêtre** sur la clôture, 2 casiers.
- **Historique** : 7.3.0 : 168 → 144, carré 12 × 12, LOS bloquée par l'arrangement des tiles ; 7.3.2 : **plus de palettes max** et loops moins safe.
- **Plan** : main en coin → **ne pas s'y replier en fin** si les gates sont à l'opposé ; *début* = noter Marketplace ou Gallows.

#### Forgotten Ruins — 132 sqT (92 surface + 40 donjon)
- **Fixe** : **Rotted Tower** + **donjon souterrain** (Torture Room : gen fixe) ; **Passages** = portes magiques qui téléportent d'un point à l'autre ; 8.0.2 : **au moins 4 crochets toujours au donjon**, Passages placés loin des palettes et fenêtres ; 8.1.0 : plus de palettes en surface.
- **RNG** : reste.
- **Zones fortes / faibles** : donjon étroit = zone faible pour le survivant [AVIS D'EXPERT : carte « très favorable au tueur », non mesuré].
- **Archétypes [HYPOTHÈSE]** : donjon en couloirs → zone / pièges.
- **Plan** : *début* = faire le gen du donjon **tôt**, quand le tueur est loin, puis en sortir ; *milieu* = les Passages cassent une chase (les deux camps peuvent les utiliser ; portée exacte **[INCERTAIN]**).

---

### 5.4.19 Dvarka Deepwood

Pas dans les passes palettes 9.x. Chaque carte a **sa propre offrande de carte** (pas d'offrande de royaume).

#### Toba Landing — 136 sqT
- **Fixe** : **The Base** (vaisseau) **3 niveaux** — **niveaux 1 et 2 non reliés par l'intérieur** (sortir pour passer) ; niveau 3 = pont avec **gen fixe** ; fenêtres, palettes (une au niveau 1 + autour du vaisseau). **Alien Flower** et **Space Rover** : **chacun gen + 2 casiers + 1 palette + 1 fenêtre**, **toujours dans des coins opposés**, positions interchangeables. **Pas de collines**.
- **RNG** : **quel coin** porte quelle structure ; sous-sol possible **sous** le vaisseau ; coffres (2 possibles), totems.

```
   Toba Landing (schéma de principe)
   +-----------------------------------+
   | [Flower OU Rover]                 |
   |  gen+fenêtre+palette              |
   |               [BASE, 3 niveaux]   |
   |                gen au niveau 3    |
   |                                   |
   |                 [Rover OU Flower] |
   |               gen+fenêtre+palette |
   +-----------------------------------+
   Diagonale ≈ 132 m ≈ 29 s à 4,6 m/s (calcul, carte supposée carrée)
```

- **Archétypes [HYPOTHÈSE]** : petite en surface, mais 3 gens fixes très écartés → trajets **longs** entre gens fixes : c'est la **position des gens**, pas la taille, qui avantage ici la mobilité. Aucun 3-gen possible avec ces trois gens fixes.
- **Plan** :
  - *Tueur* : ne pas se laisser tirer d'un coin à l'autre.
  - *Survivants* : les deux structures de coin sont des spots **garantis mais finis** (3 vaults de fenêtre par poursuite, 1 palette), faibles contre un anti-loop ou un Ranged ; prévoir la tile suivante.

#### Nostromo Wreckage — 152 sqT
- **Fixe** : épave **un seul niveau** (couloirs), beaucoup de fenêtres et drops, **3 rampes** ; **2 gens garantis** (Mess Hall ; fond de l'aile gauche) + 1 possible (aile droite) ; **coffre fixe au Mess Hall** ; **2 pièges « coolant vent »** armés au chargement, réarmables **par les survivants seulement**, qui se déclenchent quand **n'importe quel joueur** passe devant, avec un bref délai, et ralentissent fortement **tout joueur** touché ; salle MU/TH/UR (Keycard sur un cadavre aléatoire → coffre garanti). **Narcissus** (coin) : 4 entrées, 2 casiers, **palette fixe**. **Pas de shack, pas de collines**. **Exit Gates « largely predictable »** : une le long du mur rectiligne gauche, l'autre sur la moitié haute du long mur droit (repère wiki : main en haut) — **pas garanties**.
- **RNG** : sous-sol (hors épave **ou** Narcissus) ; 3e gen ; totem.
- **Archétypes [HYPOTHÈSE]** : seule carte documentée avec jusqu'à **3 gens dans un même bâtiment** ; gates largement prévisibles → le tueur peut préparer la fin.
- **Plan** :
  - *Milieu* : si le 3e gen est dans l'épave, ne pas laisser les 3 gens de l'épave pour la fin.
  - *Vents* : réarmer hors chase, puis passer devant **avec de l'avance** pour que le jet touche le tueur qui suit. Risque : délai court et non chiffré ; un survivant trop lent ou qui revient sur ses pas se ralentit lui-même ; un vent déjà déclenché ne protège plus. **Tester en Custom Game avant d'en faire un plan.**
  - *Fin* : regarder d'abord les deux emplacements « prévisibles », sans s'y engager à l'aveugle.

---

### 5.4.20 Sleepless District — Trickster's Delusion (9.5.0, 17/03/2026 ; non mesurée)

- **Fixe** : **Night Club** **un seul niveau** : **gen fixe** près du balcon au-dessus de la piste, **palette fixe** proche, **1 fenêtre** en backstage, plusieurs entrées. **Market** (zone ouverte, **Killer Shack adjacent**) : **gen fixe**, **2 palettes fixes**. **High Streets** : 5 commerces, **2 fenêtres** (karaoké ; gift store ↔ supérette). **Low Streets** : 10 bâtiments + ruelles, **4 emplacements de fenêtres dont 2 actifs**.
- **RNG** : gens possibles dans les rues ; fenêtres actives des Low Streets ; sous-sol (Night Club, sinon shack) ; totems ; palettes des rues ; événements sonores (porte de garage, 30 %).
- **Signaux** : gen du Night Club → brouillard dissipé + musique audible à proximité ; gen du Market → **feu d'artifice fort**.
- **Archétypes [HYPOTHÈSE]** : bâtiments serrés + ruelles → LOS courte, zone / pièges et furtifs plausibles ; données insuffisantes.
- **Plan** : 2 gens fixes (Night Club, Market) ; le Market est **collé au shack** (sous-sol possible à proximité) ; *début* = repérer les 2 fenêtres actives des Low Streets.

Détail : `kb/research/batch8_maps.md` §3.4-3.21.

---

## 5.5 Historique des changements (9.0.0 → 10.1.2a) `[Intermédiaire]`

Pourquoi ce paragraphe : une grande partie de ce qui circule sur les cartes (vidéos, guides, schémas) date d'**avant** les trois passes palettes de 2025-2026. Savoir **ce qui a changé et où** permet de trier une source avant de la croire.

### 5.5.1 Chronologie

| Patch (LIVE) | Changement de carte | Confiance |
|---|---|---|
| **9.0.0** (17/06/2025) | Nouvelle carte **Freddy Fazbear's Pizza** (Withered Isle) ; mode « Map Showcase » (file sur une carte prédéterminée) ; offrandes de royaume / carte : chance **fixe de 20 %**, **non cumulables** | [FACT] (VM) |
| **9.1.0** (29/07/2025) | Nouvelle carte **Fallen Refuge** (tile thématique The Walking Dead) | [FACT] (VP) |
| **9.2.0** | **Passe 1 — densité de palettes** : « adjust the quantity and distribution of pallets, reducing the presence of "dead zones" » sur **10 royaumes** : MacMillan, Autohaven, Coldwind, Crotus Prenn, Haddonfield, Backwater, Red Forest, Yamaoka, Ormond, Decimated Borgo. **Tous les royaumes piochent dans le même pool de maze tiles** | [FACT] (VP) |
| 9.2.0 (wiki seul) | Torment Creek 168 → 156 sqT ; Disturbed Ward 172 → 152 sqT — **absent** des notes officielles | valeurs actuelles (SS) ; date **[INCERTAIN]** |
| 9.2.0 | Correctifs : navigation des **bots** autour du bus de Gas Heaven ; vault de la grue de Wreckers' Yard ; fenêtre d'Ironworks non vaultable | [FACT] (VP) |
| **9.3.0** | **Passe 2 — sûreté des loops** : « reduce the safety of pallet loops » sur MacMillan, Asylum, Red Forest, Yamaoka, Haddonfield et **Mount Ormond Resort** (la carte, pas tout Ormond) ; logique de spawn revue (**main de Disturbed Ward**, **piers de Backwater**, Red Forest) pour équilibrer la distance fenêtre / palette ; main de l'Asylum moins safe (il pouvait apparaître près de maze tiles et s'y enchaîner) | [FACT] (VP) |
| 9.3.0 | **Underground Complex** : navigation améliorée, **au moins une porte ouverte sur chaque côté des grandes salles**, nouvel accès au gen de la salle du Rift | [FACT] (VP) |
| 9.3.0 | **Autohaven** : textures recalibrées, **brouillard ajouté**, éclairage et teinte revus (moins sombre) | [FACT] (VP) |
| 9.3.0 | **Dead Dawg Saloon** : « a totem was guaranteed to spawn in the same place » corrigé → le totem « garanti » du wiki est **périmé** | [FACT] (VP) |
| **9.3.2** | **Passe 3 — « middle ground »** sur Autohaven, Backwater, Crotus Prenn, MacMillan, Ormond, Red Forest, Yamaoka : loops trop courtes **rallongées**, palettes empêchées contre de petits objets, randomisation de palettes revue sur certains tiles | [FACT] (VP) |
| 9.4.0 (27/01/2026) | **Lampkin Lane** retirée de la rotation **et** des Custom Games (hors rotation depuis le 19/01/2026) | [FACT] (VP) |
| 9.5.0 (17/03/2026) | Nouveau royaume **Sleepless District** / carte **Trickster's Delusion** | [FACT] (VP) |
| **9.6.0** | « Map weighting has been adjusted in order for maps to have an **equal chance** of spawning — Realm Repeat Prevention remains in effect » ; correctif de collision d'un mur près de l'arbre de Coldwind | [FACT] (VP) |
| **10.0.1** | **Badham Preschool, Grim Pantry, Pale Rose « re-enabled »** (désactivation antérieure : date et cause non trouvées) | [FACT] (VP) ; cause **[INCERTAIN]** |
| 10.0.x → 10.1.2 | Correctifs de collisions / projectiles uniquement (Forgotten Ruins, Trickster's Delusion, Sanctum, Torment Creek, RPD…) ; en 2v8 : ajout de Nostromo | [FACT] (VP) |
| PTB 10.2.0 | Aucun changement de carte (correctifs seulement) — **PTB 10.2.0 — non LIVE** | [FACT] (VP) |

### 5.5.2 Les trois passes palettes : ce qu'elles changent pour vous

**QUOI** : trois retouches successives des palettes, par **royaume**, sans liste publiée par carte ni par tile.

| Royaume | 9.2.0 (densité) | 9.3.0 (sûreté) | 9.3.2 (longueur) | Cartes LIVE |
|---|---|---|---|---|
| MacMillan, Crotus Prenn, Red Forest, Yamaoka | ✔ | ✔ | ✔ | 11 |
| Ormond | ✔ | Mount Ormond Resort seulement | ✔ | 2 |
| Autohaven | ✔ | éclairage (pas les palettes) | ✔ | 5 |
| Backwater Swamp | ✔ | spawn des piers | ✔ | 2 |
| Coldwind, Decimated Borgo | ✔ | — | — | 7 |
| Les 11 autres royaumes (Léry's, Springwood, Gideon, Hawkins, Glenvale, Silent Hill, Raccoon City, Boneyard, Withered Isle, Dvarka, Sleepless District) | — | — | — | 17 |

Calcul : **27 cartes sur 44** (≈ 61 %) ont eu leurs palettes retouchées au moins une fois depuis 9.2.0 ; 17 n'ont été touchées par aucune passe.

**POURQUOI BHVR a fait trois passes** (notes de dev, VP) : 9.2.0 visait les « dead zones » ; 9.3.0 répondait aux retours sur cette première itération en réduisant la sûreté des loops ; 9.3.2 cherchait explicitement « a middle ground between the last two updates », avec un suivi annoncé des données.

**QUAND ça compte** : dès que vous appliquez un conseil de placement de palettes, de « loop safe » ou de « dead zone » tiré d'une source.

**COMMENT l'utiliser** [HEURISTIQUE] :

- Sur les **27 cartes retouchées**, un conseil de palette antérieur à 9.2.0 est suspect ; un conseil antérieur à 9.3.2 l'est aussi pour les 7 royaumes de la passe 3.
- Sur les **17 cartes non retouchées**, un conseil ancien n'est pas périmé **à cause des passes** — mais peut l'être à cause d'un rework (§5.5.3).

**CAS D'ÉCHEC** :

- Croire qu'une passe « ajoute des palettes » partout : 9.3.0 en a **réduit la sûreté** et 9.3.2 a surtout touché la **longueur** des loops.
- Citer un nombre de palettes par carte : **aucune source** ne donne le nombre de palettes par carte après 9.3.2 **[INCERTAIN]**. C'est à compter soi-même (drill D5).

> **Erreur fréquente** : « Ormond a été nerfée en 9.3.0 ». La note 9.3.0 nomme **Mount Ormond Resort**, pas le royaume ; Ormond Lake Mine n'est concernée que par 9.2.0 et 9.3.2.

### 5.5.3 Reworks antérieurs encore visibles

| Patch | Carte | Changement | Confiance |
|---|---|---|---|
| 4.4.0 | Azarov's | Deux zones clôturées ouvertes (168 → 176) | [FACT] (SS) |
| 6.5.0 | Eyrie of Crows | Gyms éloignés du main et du shack | [FACT] (SS) |
| 6.6.0 | Shelter Woods | Landmark central Hunting Camp ; Twisted Tree déplacé | [FACT] (SS) |
| 6.7.0 | Blood Lodge, Gas Heaven | Main rapproché du centre, moins de tiles à faible LOS, car piles traversables ; Wreckers' Yard à 5 gyms | [FACT] (SS) |
| 7.1.0 | Fractured Cowshed, Rancid Abattoir | Nouvelles loops dans le main | [FACT] (SS) |
| 7.3.0 / 7.3.2 | Shattered Square | Carré 12 × 12, main en coin (168 → 144) ; puis plus de palettes max et loops moins safe | [FACT] (SS) |
| 7.4.0 | Mother's Dwelling, Temple, Garden of Joy | Réductions de taille (Mother's 188 → 152) ; passe gameplay Garden of Joy | [FACT] (SS) |
| 7.5.0 | Mount Ormond Resort | Abords du chalet revus | [FACT] (SS) |
| 8.0.2 / 8.1.0 | Forgotten Ruins | ≥ 4 crochets au donjon, Passages éloignés des palettes et fenêtres ; plus de palettes en surface | [FACT] (SS) |
| 8.2.0 | Midwich | LOS de couloir réduite | [FACT] (SS) |
| 8.6.0 | toutes | Variantes retirées du matchmaking public (sauf RPD East / West) | [FACT] (SS) |

### 5.5.4 Dater une source de carte en 20 secondes [HEURISTIQUE]

```
Source (vidéo, guide, schéma) sur une carte
 ├─ Date antérieure à 8.6.0 ? ── oui → vérifier que c'est la variante I
 ├─ Parle de palettes / loops ?
 │    ├─ Carte des 27 retouchées ? ── source < 9.2.0 → suspecte
 │    │                              source < 9.3.2 et royaume de la passe 3 → suspecte
 │    └─ Carte des 17 non retouchées → vérifier seulement les reworks (§5.5.3)
 ├─ Cite un totem, un gen, un coffre « toujours là » ? → confronter à la fiche (§5.4) :
 │    le totem de Dead Dawg ne l'est plus depuis 9.3.0
 └─ Cite un kill rate par carte ? → écarter (aucune fenêtre datée avec n)
```

Détail : `kb/research/batch8_maps.md` §2.

---

## 5.6 SoloQ et SWF sur les cartes `[Intermédiaire]`

Les éléments **fixes** d'une carte sont les mêmes pour tout le monde. Ce qui change entre SoloQ et SWF, c'est la circulation de l'**état RNG** (quelle fenêtre, quelle porte, quel côté) et la confiance qu'on peut accorder aux alliés.

### 5.6.1 Ce qui change entre les deux [HEURISTIQUE]

| Question | SWF (voix) | SoloQ |
|---|---|---|
| Qui repère l'état RNG ? | Un seul joueur, puis annonce | Chacun, pour soi |
| Les alliés connaissent-ils les éléments fixes ? | Souvent (préparation possible) | **Supposer que non**, surtout sur les cartes rares (royaume à carte unique ≈ 2,3 % des parties) |
| La « banque » de chase (R3) tient-elle ? | Oui si l'équipe s'entend pour la garder | **Incertaine** : un allié peut la consommer à tout moment |
| 3-gen sur gens fixes (R4) | Répartition annoncée | Choisir le gen **le plus isolé** du groupe menacé |
| Sauvetage au sous-sol fixe | Organisé à plusieurs (sortie unique) | Ne descendre que si un second allié est visible ou en route |
| Offrande de carte | Préparée ensemble (§5.6.3) | Sans intérêt collectif (personne ne sait qu'elle vient de vous) |
| Signaux sonores de carte | Redondants avec la voix | **Seule** information partagée sans parler (§5.6.4) |

### 5.6.2 L'état RNG à annoncer (SWF) ou à vérifier seul (SoloQ)

| Carte | Information RNG | Quand la prendre | Pourquoi elle vaut du temps |
|---|---|---|---|
| Groaning Storehouse | Portes de garage ouvertes | Première approche du main | La sûreté du main en dépend |
| Gas Heaven | Fenêtre ouverte (1 sur 2) | Première visite | Une chase vers la mauvaise fenêtre finit sans vault |
| Wretched Shop | Fenêtre active (1 sur 4) | Première visite | Idem : 3 vaults par poursuite sur la bonne, zéro ailleurs |
| School Bus (Autohaven) | Variante et vault actif | À l'arrivée près du bus | Un des deux vaults est toujours bloqué |
| Garden of Joy, Shattered Square | Paire présente (Marketplace **ou** Gallows, etc.) | Pre-run | Change les ressources d'une zone entière |
| Toba Landing | Coin de l'Alien Flower / du Space Rover | Pre-run | Trajets entre gens fixes en coins opposés |
| RPD East / West | Position du gen du Main Hall (bas ou statue) | Première rotation | Route et exposition du gen |
| Treatment Theatre | Entrées ouvertes des salles | Premières secondes | Seules les fenêtres sont fixes (2.7.0) |
| Trickster's Delusion | 2 fenêtres actives sur 4 (Low Streets) | Pre-run | Seules ressources de vault des ruelles |
| Nostromo | 3e gen dans l'aile droite ou non | Mi-partie | Jusqu'à 3 gens dans l'épave = 3-gen possible |
| Toutes | Emplacement du sous-sol | Dès qu'il est vu | Décide où l'on se laisse charger / où l'on sauve |

**COMMENT annoncer** (SWF) [HEURISTIQUE] : une phrase, un lieu, un état — « Shop : fenêtre active côté X ». Le coût est d'une seconde ; le gain est d'éviter une chase vers une ressource absente, qui coûte souvent un état de santé.

**CAS D'ÉCHEC** : annoncer un élément **fixe** comme s'il était RNG (bruit inutile) ; ou l'inverse, présenter une paire exclusive comme présente en entier (erreur du seed sur Garden of Joy).

### 5.6.3 Offrandes de royaume et de carte (calcul)

[FACT] (VP) : « All Realm/Map offerings now grant a **flat 20 % chance** to be sent the associated Realm/Map » ; les doublons **ne se cumulent pas** (9.0.0). Une offrande de royaume tire ensuite une carte au hasard dans ce royaume [FACT] (SS).

Calcul, **sous hypothèse** que les 80 % restants suivent la sélection normale (1/44 par carte) — mécanisme exact **[INCERTAIN]**, interaction avec la Realm Repeat Prevention et avec une offrande adverse non documentée :

| Offrande brûlée | Chance d'obtenir la cible | Sans offrande |
|---|---|---|
| Offrande de **carte** (ex. Alien Flora → Toba) | ≈ 20 % + 80 % × 1/44 ≈ **21,8 %** | 2,3 % |
| Offrande de **royaume** à 5 cartes → le royaume | ≈ 20 % + 80 % × 5/44 ≈ **29 %** | 11,4 % |
| … → **une carte précise** de ce royaume | ≈ 29 % × 1/5 ≈ **5,8 %** | 2,3 % |
| Offrande de royaume à carte unique | ≈ **21,8 %** | 2,3 % |

> **À retenir** : une offrande de carte fonctionne environ **une fois sur cinq**. Elle ne vaut que si l'équipe a **préparé** cette carte (drill D1) ; sans kill rate par carte, **aucune offrande « carte forte » ne peut être recommandée sur données** [FACT sur l'absence de données].

**CONTRE** : côté tueur, la même mécanique s'applique ; brûler une offrande pour une petite carte intérieure est une [HYPOTHÈSE] cohérente avec §5.3.4, pas une recommandation mesurée.

### 5.6.4 Signaux sonores de carte : l'information « sans voix »

| Signal | Carte | Déclencheur |
|---|---|---|
| Sonnette (Driveway Bell) | Gas Heaven | Tueur **ou** survivant sur le tuyau de la pompe |
| Grincement du Water Tower | Ironworks of Misery | Passage à proximité |
| Corne de brume | The Pale Rose | Gen du bateau terminé |
| Crow bomb | The Pale Rose | Corbeaux près du bateau |
| Ascenseur qui s'écrase | Ormond Lake Mine | Joueur qui approche |
| Flippers | Greenville Square | Palette de l'arcade |
| Show des animatroniques | Freddy Fazbear's Pizza | Gen devant la scène |
| Rôdeurs, portes barricadées | Fallen Refuge | Passage |
| Feu d'artifice | Trickster's Delusion | Gen du Market terminé |

[FACT] (SS) pour les déclencheurs. **Portée audible et éventuelle notification visuelle côté tueur : [INCERTAIN] pour tous** (drill D4).

[HEURISTIQUE] En **SoloQ**, un signal entendu loin de vous indique qu'un allié (ou le tueur) est à cet endroit : c'est une information de position, pas une certitude sur **qui**. En **SWF**, ne comptez pas dessus : annoncez.

> **Erreur fréquente** : traverser la zone d'un signal en infiltration (sonnette, ascenseur, crow bomb) parce qu'« on ne sait pas si le tueur l'entend ». Tant que la portée n'est pas vérifiée, supposez qu'il l'entend.

### 5.6.5 Côté tueur : ce que SoloQ et SWF changent sur une carte [HYPOTHÈSE]

- Contre une **SWF**, l'état RNG (fenêtre active, portes, sous-sol) est partagé vite : l'avantage de connaître la carte se réduit aux éléments fixes et à la gestion des 3-gens.
- Contre une **SoloQ**, la même information circule mal : les survivants rejoignent plus souvent une ressource absente ou consommée. Une carte à gens fixes proches (§5.8, table A) se défend plus facilement si les survivants ne se coordonnent pas.
- Dans les deux cas, le sous-sol fixe (The Game, Wreckers' Yard, Rotten Fields) est connu **aussi** des sauveteurs : ce n'est pas une surprise.

Détail : `kb/research/batch8_maps.md` §4.3.

---

## 5.7 Drills de connaissance des cartes `[Intermédiaire]` → `[Avancé]`

Principe : la Custom Game est le seul endroit où l'on choisit la carte ; on y apprend la **variante I** et on y **teste** ce que les sources laissent [INCERTAIN]. Tous les drills sont des [HEURISTIQUE].

### Ordre d'apprentissage (calcul, pondération 9.6.0)

| Étape | Cartes | Part cumulée des parties |
|---|---|---|
| 1 | MacMillan, Autohaven, Coldwind (15 cartes) | 15/44 ≈ **34 %** |
| 2 | + Withered Isle (4) | 19/44 ≈ **43 %** |
| 3 | + les 9 royaumes à 2 cartes (18) | 37/44 ≈ **84 %** |
| 4 | + les 7 royaumes à carte unique | 100 % |

Exception [HEURISTIQUE] : apprenez **tôt** les cartes à règles propres, même rares, car une erreur y coûte plus cher : The Game, Underground Complex (Exit **Doors**), RPD East / West, Nostromo, Trickster's Delusion.

### D1 — Reconnaissance d'une carte (15-20 min, 1 carte par séance)

- **Objectif** : connaître les éléments fixes sans regarder.
- **Protocole** : Custom Game, variante I. Noter sur papier : main (niveaux, drops, fenêtres, palettes fixes), gens fixes, coffres fixes, emplacements possibles du sous-sol, structures du royaume (Tower, Crane, Cow Tree…). Relancer 2 ou 3 fois pour distinguer fixe et RNG. Comparer à la fiche §5.4.
- **Réussite** : vous redessinez le schéma de principe de la carte de mémoire.
- **Piège** : la fiche peut être périmée ou incomplète (4 cartes peu documentées : Rotten Fields, Dead Sands, Freddy Fazbear's Pizza, Fallen Refuge) — notez tout écart plutôt que de corriger votre observation.

### D2 — Les 30 premières secondes (en partie publique)

- **Objectif** : lire la carte avant le premier contact.
- **Protocole** : à chaque partie, en moins de 30 s : royaume + carte, position du main, gens fixes proches, **un** élément RNG à confirmer (§5.6.2). L'annoncer (SWF) ou le noter (SoloQ). Vérifier après la partie.
- **Réussite** : 10 parties de suite sans erreur d'identification.
- **Piège** : confondre deux cartes d'un même royaume (Autohaven, MacMillan) à cause des structures communes : identifiez par le **main**, pas par la grue ou la tour.

### D3 — Chronométrer une traversée

- **Objectif** : relier la surface (sqT) à un temps réel.
- **Protocole** : Custom Game, en tueur puis en survivant : chronométrer le trajet entre les deux gens fixes les plus éloignés (Toba : coin à coin ; Shelter Woods : bord à bord). Comparer au calcul §5.3.1 (≈ 23 s pour 176 sqT à 4,6 m/s, carte supposée carrée).
- **Réussite** : vous savez, pour 5 cartes, si le trajet réel dépasse le calcul, et de combien.
- **Piège** : le calcul suppose une ligne droite ; l'écart **est** l'information (obstacles, forme allongée).

### D4 — Tester une question ouverte (1 question par séance)

| Question | Protocole | Ce qui en dépend |
|---|---|---|
| The Game : quand les portes coulissantes s'ouvrent / se ferment ? | Noter l'état des portes avant, pendant et après la réparation de 3 gens | Le plan « porte fermée = gen non fini » (§5.4.9) |
| Nostromo : délai des vents, le déclencheur est-il touché ? | 2 joueurs, chronomètre, passage lent puis rapide | Tout usage des vents en chase |
| Dead Sands : sous-sol toujours au shack ? | 10 chargements, noter l'emplacement | Plan de sauvetage |
| Underground Complex : 2e emplacement du sous-sol ? | Chargements successifs, repérer hors Rift Lab | Plan de sauvetage |
| Portée des signaux sonores (§5.6.4) | 2 joueurs, distance maximale à laquelle le tueur entend ; notification visuelle ou non | Infiltration près des signaux |

### D5 — Compter les palettes après 9.3.2 `[Avancé]`

- **Objectif** : combler la lacune documentaire principale de ce chapitre.
- **Protocole** : pour une carte des 7 royaumes de la passe 9.3.2, compter les palettes visibles sur **5 chargements** (Custom Game) ; noter minimum et maximum.
- **Réussite** : un intervalle min-max par carte, daté du patch.
- **Piège** : un comptage vaut pour le patch où il a été fait ; toute passe ultérieure l'invalide.

### D6 — Plan de fin sur carte à gates documentées `[Avancé]`

- **Objectif** : appliquer R5 là où c'est possible, et **seulement** là.
- **Protocole** : sur Nostromo, Underground Complex et RPD, repérer les gates / Exit Doors en début de partie et vérifier à chaque partie si elles sont là où la fiche l'indique.
- **Réussite** : vous distinguez « prévisible » (Nostromo) de « garanti » (aucune carte).
- **Piège** : généraliser à une autre carte ; ailleurs, les gates sont RNG.

Détail : `kb/research/batch8_maps.md` §4.4 ; `kb/audit/pass14_lot8_maps.md` (vérifications en jeu recommandées).

---

## 5.8 Tableaux récapitulatifs `[Intermédiaire]`

### Table A — Cartes à plusieurs gens fixes (repère pour les 3-gens)

| Carte | Gens fixes | Proches ? | Lecture [HEURISTIQUE] |
|---|---|---|---|
| Disturbed Ward | 2 (RDC + étage du main) | Même bâtiment | Deux tiers d'un 3-gen si un 3e gen RNG est voisin |
| Grim Pantry | 2 (Pantry, Cursed Cabin), à l'étage | Non documenté | Faits → vannes ouvertes, accès modifiés |
| Ormond Lake Mine | 2 (Mine Building, Mine Tower) | Oui (tunnel) | Deux tiers d'un 3-gen |
| Dead Dawg Saloon | 3 (Saloon, Gallows, Water Tower — ce dernier sur 2 positions) | Saloon + Gallows proches | Deux tiers d'un 3-gen ; 3e proximité non documentée |
| Toba Landing | 3 (Base, Alien Flower, Space Rover) | **Non** (coins opposés) | Aucun 3-gen avec ces trois-là ; trajets longs |
| Nostromo Wreckage | 2 garantis + 1 possible | Même épave | Jusqu'à 3 gens dans un bâtiment |
| Trickster's Delusion | 2 (Night Club, Market) | Non documenté | Market collé au shack |

### Table B — Ce qu'aucune source ne documente (ne pas l'inventer)

| Lacune | Portée | Que faire |
|---|---|---|
| Kill rate / escape rate par carte | Toutes | Ne citer aucun chiffre ; lire les « archétypes » comme [HYPOTHÈSE] |
| Nombre de palettes par carte après 9.3.2 | Toutes | Drill D5 |
| Positions des Exit Gates | Toutes sauf Nostromo, Underground Complex, RPD | Ne rien présumer (R5) |
| Taille | RPD East / West, Trickster's Delusion | Profil « intérieur » ou « ville » plutôt que taille |
| Fiches sans ligne de plan propre | Mother's Dwelling, Family Residence, Sanctum of Wrath, Garden of Joy (plan) ; Cowshed, Rancid, Thompson, Chapel, Mount Ormond Resort (archétypes) | Appliquer §5.3.5-5.3.6 |
| Cartes peu documentées | Rotten Fields, Dead Sands, Freddy Fazbear's Pizza, Fallen Refuge | Drill D1, noter les écarts |
| Exclusivités de maze tiles par royaume | Toutes (pool commun depuis 9.2.0) | Ne pas enseigner comme LIVE |

> **À retenir** : ce chapitre dit **où** sont les ressources garanties et **quoi** vérifier ; il ne dit pas **qui gagne** sur une carte. Cette réponse n'existe pas dans les sources datées disponibles au 27/09/2026.

Détail : `kb/research/batch8_maps.md` §5-6 et « Questions ouvertes ».

---

## Sources du chapitre

- `kb/research/batch8_maps.md` (lot 8, cartes : inventaire, historique, 44 fiches, synthèse) et son audit `kb/audit/pass14_lot8_maps.md`.
- `kb/research/batch7_tiles.md` (fonctionnement des tiles, murs cassables, maze tiles).
- `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md` (archétypes de tueurs).
- `kb/ledgers/AUDIT_PHASE0_ERRATA.md` ; `kb/seed/audit_phase0.txt` (règle des offrandes 20 %, liste 9.2.0).
- Notes officielles BHVR archivées (`kb/sources/patches/`) : 9.0.0 (`official_510.txt`), 9.1.0 (`official_516.txt`), 9.2.0 (`official_523.txt`), 9.3.0 (`official_529.txt`), 9.3.2 (`official_530.txt`), FAQ Halloween (`official_531.txt`), 9.4.0 (`official_534.txt`), 9.4.2 (`official_536.txt`), 9.5.0 (`official_538.txt`), 9.6.0 (`official_544.txt`), 10.0.0-10.1.2 (`official_550.txt` à `official_558.txt`, dont 10.0.1 = `official_551.txt`), PTB 10.2.0 (`official_559.txt`, non LIVE).
- Wiki officiel (deadbydaylight.wiki.gg, pages complètes consultées le 27/09/2026) : Realms, pages des 21 royaumes et des 46 cartes, Maze Tiles, Killer Shack, Basement, Hills, Sacrificial Tree, Harvester, Structures, 2v8 ; Module:Datatable et Module:Maps (`kb/sources/wiki_modules/`).
