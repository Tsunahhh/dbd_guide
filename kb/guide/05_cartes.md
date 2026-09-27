# 5. Les cartes

> **Périmètre** : mode **1v4 uniquement**, version **LIVE 10.1.2a (17/09/2026)**. Les cartes « supersized » du 2v8 sont listées à part (§5.2.5) et **aucun conseil de ce chapitre ne s'y applique tel quel**. PTB 10.2.0 : aucun changement de carte hors correctifs de bugs (KB 559) — **PTB 10.2.0 — non LIVE**, sans effet sur ce chapitre.

Ce chapitre répond à trois questions : **quelles cartes existent** aujourd'hui, **comment en lire une** en quelques secondes, et **ce qui est vraiment fixe** sur chacune des 44 cartes 1v4. Le fonctionnement d'une tile (fenêtres, palettes, jungle gyms, shack) est traité dans le chapitre sur les tiles (`kb/research/batch7_tiles.md`) ; ici, la tile est une **pièce** d'un plan à l'échelle de la carte.

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

Les fiches utilisent cinq archétypes. Ils correspondent à ceux du chapitre sur les tueurs (`kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md`, 8 archétypes) :

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
