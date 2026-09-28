# 4. Théorie des loops, tiles et connectivité

> **Périmètre** : ce chapitre explique **pourquoi** une loop tient ou casse (modèle en temps), sépare ce que le jeu garantit de ce que la génération tire au hasard et de ce qui n'est qu'un avis, donne une fiche par tile ou structure, une matrice tile × archétype de tueur, puis la **connectivité** : comment enchaîner les tiles en planifiant 5 à 15 s d'avance. Les chiffres de base de la chase (vitesses, fente, vaults, Bloodlust) sont au chapitre 3 ; les réponses tueur par tueur aux chapitres 7-8 ; la macro au chapitre 6.
>
> **Version** : LIVE 10.1.2a (17/09/2026). Aucune valeur PTB 10.2.0 n'est utilisée (plusieurs pages wiki affichent déjà des textes PTB ; quand c'est le cas, la valeur LIVE a été reconstruite depuis les lignes « was » de la note officielle 559, ou marquée incertaine). **1v4 uniquement** : le 2v8 a des cartes agrandies et d'autres règles de palettes.

## 4.0 Comment lire ce chapitre

**Étiquettes** (brief du guide) :

| Étiquette | Sens dans ce chapitre |
|---|---|
| **[FACT]** | Mécanique du jeu lue dans une source. Confiance entre parenthèses : **(VP)** note officielle BHVR, **(VM)** wiki + note ou multi-source, **(SS)** wiki seul (source unique, à trianguler), **(INC)** incertain |
| **(CALC)** | Arithmétique faite uniquement sur des FACT. Simplification : lignes droites, vitesses constantes. Aussi fiable que sa moins fiable entrée |
| **[HEURISTIQUE]** | Règle de joueur non sourcée, à tester, jamais absolue |
| **[AVIS D'EXPERT]** | Consensus supposé de joueurs expérimentés ; **aucune source écrite lue** pour ce chapitre |
| **[SITUATIONNEL]** | S'inverse selon le tueur, la santé, la phase de partie |
| **[HYPOTHÈSE]** | Interprétation plausible non confirmée |
| **[INCERTAIN]** | Valeur non documentée ou contradictoire |

**Honnêteté sur la méthode** : la géométrie des tiles vient des pages wiki (Maze Tiles, Killer Shack, Pallets, Windows, Structures…) et les changements de densité des notes officielles. **Aucune VOD n'a été analysée et aucun guide expert écrit exploitable n'a été trouvé** (la vidéo « All Common Tiles Explained » liée depuis le site d'Otzdarva n'a pas pu être consultée). Toute la partie tactique (sens, checkspots, greed, pre-drop, abandon) est donc **[HEURISTIQUE]** ou **[AVIS D'EXPERT]**, dérivée du modèle de la section 4.2 et cohérente avec le chapitre 3.

**Les schémas ASCII sont des schémas de principe, pas des plans à l'échelle.** Le wiki décrit la composition des tiles (murs, fenêtres, palettes), pas leurs cotes. Les tiles apparaissent orientées différemment d'une partie à l'autre (observation courante, non documentée) : « gauche / droite » et « sens horaire » n'ont **aucun sens absolu**. Seul compte le sens **relatif** à la fenêtre, à la palette et au tueur.

Légende des schémas :

```
#  mur haut          :  muret / mur bas        W  fenêtre         P  palette levée
=  palette baissée   D  ouverture libre        B  mur cassable    o  trou / checkspot
S  survivant         K  tueur                  > < ^ v  trajets   x  point de fente possible
```

**Unités** : on raisonne en **secondes gagnées** pour l'équipe (1 générateur réparé seul = 90 s) et en **mètres d'écart**. Contre un tueur à 4,6 m/s sans Bloodlust, il comble 1 m d'écart en ≈ 1,7 s (1 / 0,6 m/s de rapprochement, CALC) ; contre un 4,4, en ≈ 2,5 s. Les vitesses de référence (survivant 4,0 m/s ; tueurs 4,6 / 4,4 m/s ; Blight 4,4 m/s depuis 9.6.0) sont au chapitre 3 (VM / VP).

> **À retenir** : une tile n'a pas de « niveau » dans l'absolu. Sa valeur dépend du **tueur**, de **ta santé**, de **l'état de la poursuite** (compteur de fenêtre, Bloodlust) et de **ce qui l'entoure**. Ce chapitre donne des outils pour évaluer cette relation, pas un classement à apprendre par cœur.

---

## 4.1 Fixe, RNG, opinion [Débutant]

C'est la première correction à faire par rapport à l'ancien guide : il présentait des classements (god / safe) comme des propriétés du jeu et parlait de loops « infinies ». Trois couches à ne jamais mélanger :

| Couche | Exemple | Ce que tu en fais |
|---|---|---|
| **FIXE** (règle du jeu) | Blocage de fenêtre après 3 vaults ; casse de palette 2,34 s | Tu la connais par cœur, tu calcules avec |
| **RNG** (tirée à chaque partie) | Itération d'une maze tile, présence d'une palette | Tu l'**observes** (pre-run, checkspots) |
| **OPINION** | « Le long wall est plus fort que le short wall » | Tu la testes, tu sais qu'elle dépend du tueur |

### 4.1.1 Les règles fixes qui bornent toute loop

| Règle | Valeur LIVE | Confiance |
|---|---|---|
| Blocage de fenêtre par l'Entité | Après le **3e** vault d'une même fenêtre par le **même survivant** dans la **même poursuite**, elle est bloquée **pour lui seul** pendant **30 s**. Le 3e vault est **permis** ; les autres survivants et le tueur passent toujours | [FACT] (SS, concorde avec l'audit) |
| Rechute du blocage | S'il revaulte cette fenêtre dans les **30 s qui suivent le déblocage**, elle se rebloque **après ce seul vault** | [FACT] (SS) |
| Tampon de fin de poursuite | Pendant **5 s** après avoir perdu le tueur, les vaults comptent encore | [FACT] (SS) |
| Origine | Blocage introduit en 1.1.2 pour tuer les « infinites » | [FACT] (SS) |
| Vaults survivant (fenêtre) | Fast **0,5 s** (≥ 2,5 m de course **droite**, garde l'élan, bruyant) ; medium **0,9 s** (angle ou élan insuffisant, élan remis à zéro, plus de corps exposé) ; slow **1,5 s** (silencieux) | [FACT] (SS) ; angle toléré (INC) |
| Vault tueur (fenêtre) | **1,7 s** | [FACT] (SS) |
| Saisie en plein vault | Possible (fenêtre ; palette : blessé) | [FACT] (SS) |
| Casse de palette / mur | **2,34 s**, caméra du tueur basculée vers le bas pendant l'animation | [FACT] (VM) |
| Stun de palette | **2 s**, appliqué à ~50 % de l'abaissement ; **pas de stun si le tueur est du même côté** que toi (5.2.0). Enduring −40/45/50 % ; Krasue en Head Form : 2,5 s | [FACT] (SS) |
| Durée d'abaissement d'une palette | Non documentée | **(INC)** |
| Vault de palette (survivant) | Rapide **1,1 s** (bruyant), lent **2 s** (silencieux) | [FACT] (SS) |
| Espacement des palettes | Emplacements prédéfinis, au moins **14, 16, 18 ou 20 m** entre deux palettes (exceptions, ex. Midwich) ; l'historique 1.9.0 parle de 10 m : origine du critère 14-20 m non tranchée | [FACT] (SS) ; critère (INC) |
| Double palette | Supprimée en 1.5.1 sur les structures à plusieurs emplacements | [FACT] (SS) |
| Murs cassables | Tueur seulement, 2,34 s ; la plupart des effets de casse de palette s'y appliquent | [FACT] (VM) |
| Bloodlust | **+0,2 / +0,4 / +0,6 m/s** à 15 / 25 / 35 s de poursuite ; perdue en cassant une **palette**, en touchant, en utilisant **certains** pouvoirs ; perte par stun **(INC)** ; effet d'une casse de **mur** **(INC)** ; la fente ignore la Bloodlust (1.5.0) | paliers (VM) ; pertes (SS) |
| Fin de poursuite | > 18 m ; 5 s dans un casier ; LOS perdue > 8 s ; hors ±35° du centre du champ de vision (87° par défaut) | [FACT] (SS) |
| Portée utile de la fente | ~2-2,5 m de gain | **(INC)** |

### 4.1.2 Il n'existe aucune loop infinie en LIVE [FACT + CALC]

Trois mécanismes le garantissent :

1. **La fenêtre s'épuise** : 3 vaults par poursuite pour toi, puis 30 s de blocage, puis **un seul** vault avant rechute si tu y reviens dans les 30 s. Le compteur est **personnel** : une fenêtre bloquée pour toi reste ouverte pour un allié.
2. **La palette est finie** : le tueur la casse en 2,34 s et elle disparaît pour tout le monde.
3. **La Bloodlust érode tout cycle** : la vitesse de rapprochement double contre un 4,6 (0,6 → 1,2 m/s) et est multipliée par 2,5 contre un 4,4 (0,4 → 1,0 m/s) au bout de 35 s (CALC). Un cycle sûr à 0 s peut ne plus l'être à 25-35 s.

Le mot « infinite » survit dans la communauté pour désigner une loop que le tueur ne gagne pas **sans** casser, attendre le blocage ou partir [AVIS D'EXPERT]. C'est une **loop forte**, pas une loop sans fin. Le wiki garde la trace de deux anciennes « quasi-infinites » corrigées : le **Harvester** et le **School Bus** [FACT] (SS).

> **Erreur fréquente** : « au 3e vault la fenêtre se bloque ». Non : le 3e vault est permis, le blocage vient **après**, pour toi seul, 30 s. Et si tu reviens trop tôt après le déblocage, un seul vault suffit à la rebloquer.

> **Note avancée** : le compteur repart-il à zéro dans une nouvelle poursuite ? Le wiki parle de « same Chase sequence » et du tampon de 5 s ; la remise à zéro est donc probable mais **non écrite telle quelle** [HYPOTHÈSE]. Le compteur compte-t-il les vaults medium et slow ? Le wiki dit « vaults » sans distinguer **(INC)**.

### 4.1.3 Génération des cartes : ce qui est fixe, ce qui est tiré

| Élément | FIXE | RNG | Confiance |
|---|---|---|---|
| Maze tiles (jungle gyms au sens large) | **Emplacement général** sur la carte : repère fiable | **Itération** (L-T, pallet gym, jungle gym, 4-lane…), position fenêtre / palette selon la variante | [FACT] (SS) |
| Pool de maze tiles | **Depuis 9.2.0, tous les royaumes piochent dans le même pool** de layouts | Quelles itérations tombent | [FACT] (VM) — voir encadré |
| Design des murs | Propre au royaume (hauteur, matériau) : décide la LOS | — | [FACT] (SS) |
| Killer Shack | Sur la plupart des cartes ; **1 fenêtre + 2 ouvertures dont 1 avec palette**, 2 casiers | Sous-sol (toujours au shack à Wreckers' Yard et Rotten Fields), gen, coffre, totem | [FACT] (SS) |
| Cartes sans shack | Lampkin Lane, Treatment Theatre, The Game, Underground Complex, Midwich, RPD, Nostromo Wreckage | — | [FACT] (SS) |
| Cartes sans maze tiles | Lampkin Lane, Badham Preschool, Treatment Theatre, Underground Complex, RPD West/East Wing | — | [FACT] (SS) |
| Main building | Présent par carte | Contenu variable ; 9.3.0 : spawn revu (main de Disturbed Ward, pontons de Backwater) pour « mieux randomiser » et équilibrer la distance fenêtres-palettes | [FACT] (VP) |
| Palettes | Emplacements prédéfinis + espacement minimal | Lesquelles apparaissent ; 9.3.2 : « Reviewed pallet randomization on certain tiles » | [FACT] (SS + VP) |
| Structures de royaume | Harvester, Cow Tree, Bus, Crane… par royaume | Présence et variante (ex. Bus : 2 variantes, **un des deux vaults toujours bloqué**) | [FACT] (SS) |

> **Note avancée — pool commun et exclusivités** : la page wiki Maze Tiles (non datée) exclut encore certaines tiles de certains royaumes (4-lane absent de Coldwind et Withered Isle, pallet gym absent de Withered Isle, debris / locker / labyrinth / variant gym réservés à quelques royaumes). La note officielle 9.2.0 dit pourtant « Updated all Realms to draw from the same pool of available maze tile layouts ». Conflit **non résolu** : soit la page n'a pas été mise à jour, soit « layouts » désigne des agencements de zones et non des itérations. **Consigne : n'apprends aucune exclusivité de tile par royaume** ; identifie l'itération sur place.

Les loops des cartes **intérieures** (RPD, Midwich, Treatment Theatre, Underground Complex, Lampkin Lane, Badham), qui n'ont pas de maze tiles, ne sont **pas** couvertes par ce chapitre (pages de cartes non lues) : voir le chapitre 5.

### 4.1.4 Densité et sécurité des palettes : 9.2.0 → 9.3.0 → 9.3.2 [FACT] (VP)

| Patch | Texte officiel (extraits) | Royaumes | Lecture |
|---|---|---|---|
| **9.2.0** (sept. 2025) | « adjust the quantity and distribution of pallets, reducing the presence of "dead zones" » ; « Updated all Realms to draw from the same pool of available maze tile layouts » | MacMillan, Autohaven, Coldwind, Crotus Prenn, Haddonfield, Backwater, Red Forest, Yamaoka, Ormond, Decimated Borgo ; pool : tous | Moins de zones mortes ; exclusivités de tiles à oublier |
| **9.3.0** (nov. 2025) | « Reviewed all pallet tiles to evaluate and reduce the safety of pallet loops » ; spawn revu (Disturbed Ward, pontons de Backwater, effet sur Red Forest) ; main de Crotus Prenn « could spawn near maze tiles and chain into other tiles » rendu moins safe | MacMillan, Asylum, Red Forest, Yamaoka, Haddonfield, Ormond + Crotus Prenn | Loops de palette **moins sûres** ; BHVR nomme explicitement le **chaînage** de tiles comme facteur de sécurité |
| **9.3.2** (déc. 2025) | « Adjusted the length of loops that were too short and unsafe. Prevented pallets from spawning against certain small objects, creating short and awkward loops. » Dev note : « a middle ground between the last two updates » | Autohaven, Backwater, Crotus Prenn, MacMillan, Ormond, Red Forest, Yamaoka | Moins de fillers absurdes ; retour partiel vers plus de sécurité |
| 9.4.0 → 10.1.2a | Aucune note de densité ou de sécurité de palettes trouvée (recherche par mots-clés) | — | **État LIVE = 9.3.2** sur ce point |

> **À retenir** : tout savoir de tiles antérieur à fin 2025 (vidéos, vieux guides, l'ancien PDF) peut être faux **sur la présence et la sécurité des palettes** de ces royaumes. La **géométrie** des maze tiles, elle, n'est pas décrite comme modifiée.

### 4.1.5 Ce qui est opinion

- Les classements **god / safe / mindgame / unsafe / dead zone** : aucune définition officielle (« dead zones » apparaît entre guillemets dans la note 9.2.0, sans définition). La section 4.3 propose des définitions **opérationnelles** [HEURISTIQUE].
- « Long wall > short wall », « 4-lane opened > closed », « T plus sûr que L », « la main window de X est god » : [AVIS D'EXPERT] **non sourcé**, souvent vrai en moyenne, toujours dépendant du tueur, des perks et de l'itération.
- Les noms « Wolfpack / Lone Wolf », « double window gym », « small-wall gym », « edge tiles Z / U », « sandwich gym » de l'ancien guide ne figurent pas sur le wiki : **invérifiables** (noms communautaires probables). « God rocks » : idem.

Détail : `kb/research/batch7_tiles.md` §1.

---

## 4.2 Le modèle de la loop [Intermédiaire]

### 4.2.1 Une loop = deux trajets et des « portes »

Une loop existe quand tu disposes d'un **trajet fermé** autour d'un obstacle opaque ou infranchissable, et que ce trajet contient au moins une **porte asymétrique** : un passage que tu franchis plus vite que le tueur.

| Porte | Toi | Le tueur | Asymétrie |
|---|---|---|---|
| Fenêtre | 0,5 s (fast) / 0,9 s (medium) | 1,7 s de vault, ou contournement | Forte si le contournement est long |
| Palette baissée | 1,1 s (vault rapide) | Impossible pour la plupart ; sinon casse 2,34 s | Très forte, jusqu'à la casse |
| Palette levée | Menace de stun (2 s) | Doit respecter ou risquer le stun | Psychologique : dépend de sa lecture |
| Ouverture libre / trou | Rien | Rien | Aucune : c'est un **checkspot**, pas une porte |

**Exceptions à « impossible »** [FACT] (SS) : ces tueurs **franchissent** une palette baissée, qui devient beaucoup moins asymétrique contre eux :

| Tueur | Franchissement | Condition |
|---|---|---|
| Legion | Vault de palette | En Frenzy |
| Mastermind | Franchit en Virulent Bound | Pouvoir de base |
| Ghoul | Vault en Kagune Leap | Pouvoir de base |
| Good Guy | Scamper **1 s sous** une palette baissée **ou par-dessus** une fenêtre | Pendant Slice & Dice |
| Krasue | Vault de palette **1,9 s**, de fenêtre **1,67 s** | En Head Form (qui ne peut pas casser de palette) |

```
      trajet du survivant (court)            trajet du tueur (long)
   S ───────────────►W─────►                K ─────────────────────────┐
   (fast vault 0,5 s)                        (contourne, ou vault 1,7 s)│
                                             ◄──────────────────────────┘
   La porte W « raccourcit » le trajet de S. Le tueur ne gagne que s'il coupe
   par un chemin plus court (le centre de la tile) ou s'il lit ton demi-tour.
```

### 4.2.2 La condition de loop sûre se compare en TEMPS, porte comprise [Intermédiaire]

**QUOI.** Tu dois avoir **fini** de franchir la porte avant que le tueur soit en portée de fente. Le chapitre 3 donne la version « en distance » (comparer les trajets en tenant compte de sa vitesse) ; elle compare ton **arrivée** à la porte. Il manque le temps où tu es **immobile dans la porte**. La version correcte (CALC, audit pass 14 du lot 7, T01) :

```
   trajet_S / 4,0  +  t_porte_S   <   (trajet_K − fente) / v_K  +  t_porte_K

   t_porte_S : fast vault 0,5 s | medium 0,9 s | vault de palette 1,1 s | drop : (INC)
   t_porte_K : 0 s'il contourne | 1,7 s s'il te suit par la fenêtre | 2,34 s s'il casse
   v_K       : 4,6 ou 4,4 m/s (+0,2 / 0,4 / 0,6 selon Bloodlust)
   fente     : ~2-2,5 m (INC)
```

**POURQUOI.** Oublier `t_porte_S` surestime la sécurité de toutes les boucles serrées : c'est exactement l'écart entre une fenêtre « safe » et une fenêtre où tu prends le coup **en plein vault**.

**Conversion en mètres** (CALC, multiplier par `v_K`) : le trajet du tueur doit dépasser le tien de :

- **+15 %** (contre un 4,6) ou **+10 %** (contre un 4,4),
- **plus** la fente,
- **plus** ≈ 0,2 m par seconde de trajet et par palier de Bloodlust,
- **plus** le temps de porte converti : ≈ **2,3 m** pour un fast vault (2,2 m contre un 4,4), ≈ **4,1 m** pour un medium (4,0 m), ≈ **5,1 m** pour un vault de palette (4,8 m).

**Exemple chiffré** (CALC) : ton trajet jusqu'à la fenêtre 10 m + fast vault ; son contournement 14 m ; fente 2,5 m ; tueur 4,6 sans Bloodlust.

| Calcul | Toi | Lui | Verdict |
|---|---|---|---|
| Sans le temps de porte | 10 / 4 = 2,5 s | (14 − 2,5) / 4,6 = 2,5 s | « limite » |
| **Avec** le fast vault | 2,5 + 0,5 = **3,0 s** | **2,5 s** | **Pas sûr** : coup en plein vault |
| Trajet tueur requis | — | ≥ 3,0 × 4,6 + 2,5 ≈ **16,3 m** (≈ 15,7 m contre un 4,4) | — |

**QUAND l'utiliser.** Personne ne mesure les trajets au mètre en partie. L'usage réel est **qualitatif** [HEURISTIQUE] :

- un **medium vault** (approche en angle) coûte ≈ 1,8 m de plus qu'un fast : c'est souvent la différence entre sûr et touché ;
- un **vault de palette** te laisse ≈ 5 m exposé : une palette baissée « serrée » (petit obstacle) ne tient pas contre un tueur qui suit bien ;
- chaque palier de Bloodlust mange la marge ; une boucle juste à 0 s est perdante à 25 s.

**CONTRE (côté tueur).** Il réduit `trajet_K` : couper par le centre, tenir l'intérieur, « fausse avance » pour te faire tourner au mauvais moment. Il annule `t_porte_K` en ne te suivant jamais par la fenêtre.

**CAS D'ÉCHEC.** (1) Le trajet du tueur que tu imagines n'est pas celui qu'il prend (il coupe) ; (2) tu arrives en angle, medium vault ; (3) tu comptes le drop de palette comme instantané (sa durée est inconnue) ; (4) Bloodlust II-III non comptée.

**EXERCICE.** En partie personnalisée avec un ami tueur : sur un shack et un jungle gym, fais 10 cycles de fenêtre en fast vault puis 10 en medium vault volontaire ; note à chaque cycle si le tueur, en contournant au plus court, était à portée de fente à ta réception. Réussite : identifier sur chaque tile la **distance minimale d'avance** sous laquelle le medium vault devient touché [HEURISTIQUE, seuil à recalibrer].

> **Erreur fréquente** : greeder une fenêtre qui « a l'air » sûre parce qu'on arrive avant le tueur. Arriver avant ne suffit pas : il faut **ressortir** avant sa fente.

### 4.2.3 Sens optimal, mauvais sens (règle générale)

- **Sens optimal** [HEURISTIQUE] : le sens de rotation où tu arrives sur la porte **après** avoir longé le mur le plus long et le plus haut, avec le tueur **derrière** toi et **sans raccourci** pour lui. Tu atteins la fenêtre avec ≥ 2,5 m de course droite (fast vault **attendu** ; l'angle toléré est inconnu) et la sortie te mène vers la suite du cycle ou vers la tile suivante.
- **Mauvais sens** : le tueur peut atteindre **la sortie** de la porte avant toi en coupant par l'intérieur (ou par-dessus un mur bas), ou tu arrives **en angle** (medium vault, plus de corps exposé [FACT] (SS)).
- **Le sens optimal dépend d'où est le tueur, pas d'une orientation fixe** : l'ancienne règle « serpenter dans le sens horaire » est fausse comme règle (orientation tirée au hasard).

### 4.2.4 Ce qui use une tile : ses horloges

| Horloge | Ce qui se passe | Nature |
|---|---|---|
| Compteur de fenêtre | 3 vaults par fenêtre et par poursuite, puis 30 s de blocage (pour toi seul), puis 1 vault avant rechute | [FACT] (SS) |
| Bloodlust | Paliers à 15 / 25 / 35 s ; remise à 0 par casse de palette, coup, certains pouvoirs ; stun (INC) | (VM / SS) |
| Lecture du tueur | Après 1-2 cycles, il connaît tes habitudes (même sens, même double-back) | [HEURISTIQUE] |
| Palette | Levée = menace ; baissée = porte asymétrique jusqu'à la casse | [FACT] mécanique + [HEURISTIQUE] valeur |

**Budget d'une tile** (CALC) :

| Tile | Budget de portes pour toi, dans une poursuite |
|---|---|
| 1 fenêtre | 3 vaults, puis 30 s de blocage, puis 1 vault par période |
| 2 fenêtres (L-T walls) | jusqu'à 6 vaults avant blocage (2 compteurs indépendants) |
| 1 fenêtre + 1 palette | 3 vaults + 1 drop + des vaults de palette jusqu'à la casse |
| 1 palette seule | 1 drop + vaults de palette jusqu'à la casse |

Ce budget **n'est pas** un temps : le tueur ne suit pas une fenêtre qu'il peut contourner. Ne le convertis jamais en secondes sans regarder son trajet. Ordre de grandeur utile (CALC) : une casse de palette = 2,34 s de tueur immobile ≈ **+9,4 m** d'écart ; un tueur qui te suit par la fenêtre ≈ **+4,8 m**.

Détail : `kb/research/batch7_tiles.md` §2 ; `kb/audit/pass14_lot7_tiles.md` (T01, T04) ; chapitre 3 (calculateur).

---

## 4.3 Force d'une tile : définitions opérationnelles [Intermédiaire]

**Aucune de ces catégories n'est une propriété du jeu** [HEURISTIQUE]. Elles décrivent la relation **tile × tueur × état de la chase**. Référence implicite : tueur M1 à 4,6 m/s, sans Bloodlust, sans perk de chase, sans pouvoir utile sur la tile ; survivant sain qui joue proprement. Toute autre condition **déplace** la catégorie.

| Catégorie | Définition opérationnelle | La question à te poser | Réponse attendue du tueur |
|---|---|---|---|
| **God** | Même s'il joue parfaitement (coupe, attend, fausse avance), il **ne peut pas** atteindre la portée de fente avant que tu aies franchi la porte, **et** la porte reste utile après usage (fenêtre à cycle long ; palette dont la loop **baissée** reste forte). Seules limites : blocage de fenêtre, Bloodlust II-III, pouvoir | « Si je le lis mal, est-ce que je prends quand même zéro coup ? » → oui | Casser, attendre le blocage, ou **partir** |
| **Safe** | Tu atteins la palette **et finis de la baisser** (durée de drop INC) avant qu'il soit en portée, par tous ses trajets (test en temps, 4.2.2). Il doit respecter la palette levée ou la casser une fois baissée | « Peut-il me toucher avant la palette s'il prend le plus court chemin ? » → non | Respecter, feinter pour provoquer un drop précoce, casser |
| **Mindgame** (le « pseudo-safe » de l'ancien guide) | L'issue dépend d'une **prédiction** : pour chacun de tes choix, il existe un trajet du tueur qui gagne | « Mon choix est-il sûr quelle que soit sa direction ? » → non | Jouer la lecture, varier |
| **Unsafe** | S'il ne respecte pas, il te touche **avant ou pendant** l'usage ; la palette ne vaut qu'en **pre-drop** (distance) ou en stun sur un tueur trop agressif | « Si je greed un cycle, est-ce que je prends un coup ? » → oui | Ne pas respecter, forcer le pre-drop |
| **Dead zone** | Zone d'où **aucune ressource** (palette, fenêtre, LOS utilisable) n'est atteignable avant d'être rattrapé, **compte tenu de ton écart actuel** | Voir le tableau D_max ci-dessous | Rien : il te rattrape en ligne droite |

### 4.3.1 La dead zone est relative à ton avance (CALC)

Distance que tu peux courir avant d'être rattrapé en terrain ouvert : `D_max ≈ 4,0 × (écart − fente) / v_r`, avec `v_r` = vitesse de rapprochement (0,6 m/s contre un 4,6, 0,4 contre un 4,4, + Bloodlust). Fente prise à 2,5 m (INC). Hypothèses : ligne droite, palier de Bloodlust constant pendant la course (s'il monte en route, prends la colonne suivante), temps d'utilisation de la ressource **non** compté (retire ≈ 2,3 m pour un fast vault à l'arrivée).

| Écart au départ | 4,6 sans BL | 4,6 BL II | 4,6 BL III | 4,4 sans BL | 4,4 BL III |
|---|---|---|---|---|---|
| 4 m | 10 m | 6 m | 5 m | 15 m | 6 m |
| 6 m | 23 m | 14 m | 12 m | 35 m | 14 m |
| 8 m | 37 m | 22 m | 18 m | 55 m | 22 m |
| 10 m | 50 m | 30 m | 25 m | 75 m | 30 m |
| 15 m | 83 m | 50 m | 42 m | 125 m | 50 m |

Lecture [HEURISTIQUE] :

- Une zone n'est pas « morte » dans l'absolu : **elle l'est pour toi, maintenant**, si la prochaine ressource est plus loin que `D_max`. Partir vers une zone « morte » avec 15 m d'avance peut être correct.
- Deux palettes sont à ≥ 14-20 m l'une de l'autre [FACT] (SS) : une transition palette → palette demande au minimum ≈ **6 à 8,5 m** d'écart contre un 4,6 à Bloodlust II-III (CALC). D'où l'intérêt, **quand l'écart manque**, de quitter une tile **pendant** une casse (+9,4 m, Bloodlust à 0) ou un stun. Avec un écart déjà suffisant, partir à un autre moment reste correct — et un départ toujours calé sur la casse devient lisible : un bon tueur peut refuser de casser.
- **Dead zone structurelle** (vocabulaire) : aucune ressource dans un rayon de ~30-40 m. 9.2.0 a cherché à les réduire [FACT] (VP), la randomisation peut encore en créer.
- **Zone consommée** : palettes cassées, fenêtres bloquées **pour toi** (compteur personnel). La même zone peut être vivante pour un allié.

### 4.3.2 Ce que change le tueur

Les catégories tombent d'un cran (ou plus) dès que le tueur a un outil sur la porte : **aucune tile n'est god** contre une Nurse, un Blight, un Hillbilly (casse à la tronçonneuse en ~1 s avec son pouvoir de base, sans add-on), etc. [AVIS D'EXPERT]. La matrice 4.5 donne le sens du déplacement par archétype. Réflexe : **« god contre qui ? »**.

> **Erreur fréquente** : apprendre « la palette X est god » et la jouer pareil contre tous les tueurs. Contre un Demogorgon, un Oni en Fury ou une Lich, la même palette ne vaut pas la même chose (4.5.2).

Détail : `kb/research/batch7_tiles.md` §3.

---

## 4.4 Fiches des tiles et structures [Intermédiaire → Expert]

### 4.4.0 À lire avant les fiches

**Ce que contient toujours une maze tile** [FACT] (SS) : au moins un casier ; possiblement coffre, crochet, totem ; la plupart des itérations peuvent porter un générateur. Conséquence [HEURISTIQUE] : une maze tile peut être à la fois **ta loop** et **l'objectif du tueur** (gen à patrouiller, crochet à côté) ; une chase qui y dure le garde près d'un crochet.

**Hauteur des murs de maze par royaume** [FACT] (SS, section « Designs » du wiki) — c'est elle qui décide si la tile coupe la ligne de vue (LOS) :

| Royaume | Murs de maze | Lecture LOS [HEURISTIQUE] |
|---|---|---|
| MacMillan, Coldwind, Crotus Prenn, Backwater, Red Forest, Yamaoka, Ormond, Grave of Glenvale, Silent Hill, Forsaken Boneyard | Hauts (briques, planches, béton, boue et bois, rondins, bois et bambou, pierre, bois western, haies, grès) | Bloque la LOS |
| Gideon | Murs industriels jusqu'au plafond | Bloque totalement |
| **Autohaven** | **Murs « medium »** de ferraille de voitures | LOS **partielle** : il voit plus souvent ta tête, les mindgames sont plus lisibles (l'ancien guide disait « hauts murs » : imprécis) |
| Withered Isle | Hautes palissades ; **Garden of Joy** : béton « medium » + planches hautes | LOS **mixte** selon le segment |
| Decimated Borgo ; Toba Landing / Nostromo | Paille brûlée ; roche (hauteur non précisée) | **(INC)** |

**Comment lire une fiche.** Forme, entrées, fenêtres, palettes = [FACT] (SS) quand le wiki les décrit, sinon [HYPOTHÈSE]. **Tous les autres points (sens, checkspots, pathing, greed, pre-drop, abandon, connexion) sont [HEURISTIQUE]** dérivés du modèle 4.2, sauf mention. Les tueurs cités renvoient à 4.5 et aux chapitres 7-8.

**Vocabulaire des fiches** :

- **Checkspot** : regarder le tueur (par une fenêtre, un trou, un angle) **avant** de décider, sans ralentir.
- **Red stain** : la tache rouge projetée par la tête du tueur, dans la direction où il regarde et se déplace ; supprimée par Undetectable ; **manipulable** (moonwalk : il marche dans un sens en regardant dans l'autre).
- **Greed** : garder une ressource (palette levée, vault de plus) pour gagner un cycle gratuit.
- **Pre-drop** : baisser la palette **avant** qu'il soit à portée, pour la distance et non pour le stun.
- **Double-back** : repartir dans l'autre sens hors LOS quand il s'engage.

### 4.4.1 Killer Shack [Intermédiaire]

```
 SCHÉMA DE PRINCIPE ([HYPOTHÈSE] : le wiki donne seulement « 1 fenêtre + 2 ouvertures dont
 1 à palette » ; la disposition exacte varie selon le royaume)

        ┌───────────── boucle extérieure ─────────────┐
        │   ###########################W#####         │
        v   #                               #         ^
            D        intérieur              #    <─── S longe le mur, fast vault W
        ^   #     (zone du tueur qui        P             quand K est derrière lui
        │   #      « tient » le centre)     #
        │   ##################################        │
        └─────────────────────────────────────────────┘
   Boucle 1 (fenêtre) : extérieur → W → sortie par D ou P → extérieur → W  (3 vaults max)
   Boucle 2 (palette) : P baissée → S vaulte P (1,1 s), K fait le tour ou casse (2,34 s)
```

| Point | Contenu |
|---|---|
| Forme | Petit bâtiment d'un niveau, 2 casiers, escalier du sous-sol possible ; trou dans le toit sans collision utile (la Nurse ne peut plus s'y poser depuis 1.9.0). Dead Dawg Saloon : itération western avec **mur cassable** [FACT] (SS) |
| Entrées | 3 passages : fenêtre W, ouverture à palette P, ouverture libre D [FACT] (SS) |
| Fenêtres / palettes | 1 fenêtre (compteur personnel 3 vaults) ; 1 palette dans une ouverture [FACT] (SS) |
| LOS | Murs hauts : il te perd dès que tu passes un angle, et toi aussi. Checkspots par W et par les ouvertures |
| Sens optimal | Arriver sur W **par l'extérieur en longeant le mur**, tueur derrière toi du même côté : pour te suivre il vaulte (1,7 s) ou fait le tour par une ouverture. Ressortir par l'ouverture qui t'éloigne de lui |
| Mauvais sens | Arriver sur W alors qu'il est plus près de l'ouverture qui mène à la **réception intérieure** de W : il t'attend. Ne pas vaulter ; continuer dehors ou jouer P |
| Checkspots | À travers W **avant** d'y arriver (est-il entré ?) ; chaque ouverture ; la tache rouge qui dépasse d'un angle |
| Pathing survivant | Coller les murs (cornering serré) ; mémoriser W, P, D **avant** la chase ; ne jamais s'arrêter à l'intérieur sans raison |
| Pathing tueur | 1) suivre dehors pour lire ; 2) **tenir l'intérieur** entre W et P pour couvrir les deux portes ; 3) entrer par P pour casser le cycle ; 4) forcer le 3e vault puis attendre le blocage |
| Fast vault | L'approche de W doit offrir ≥ 2,5 m de course **droite** : tourner le coin **avant**, pas au dernier moment |
| Red stain | Tache qui fait le tour dehors = il suit → vault. Tache immobile, ou qui sort par une ouverture proche de W = il tient / coupe → pas de vault, jouer P ou repartir dehors. Tache absente (Undetectable) = checkspot à travers W ou une ouverture **avant** de vaulter, pas de vault à l'aveugle. Un tueur expérimenté montre sa tache exprès (moonwalk) |
| Double-back | Tile de référence : à un angle hors LOS, repartir quand il s'engage sur le long côté. Un double-back vers une W déjà vaultée 2 fois reste possible (le 3e est permis) **si** la sortie est prévue : après, W est bloquée pour toi 30 s |
| Greed | Point de départ : tant qu'il **suit** dehors, que le test en temps tient pour W et que ton compteur est ≤ 2, garder P levée. Réévaluer **chaque cycle** (santé, pouvoir, palettes restantes, Bloodlust : arbre de décision du chapitre 3) ; un greed toujours au même moment devient prévisible |
| Pre-drop | Blessé et tueur à portée à l'approche de P ; tueur qui tient l'intérieur ; Bloodlust II-III. **Pouvoir anti-loop prêt : ça dépend du pouvoir** (4.5.3) — rentable si la casse lui coûte (Blight : tokens) ; pre-drop **puis départ immédiat** si son pouvoir punit l'attente (Doctor, Nemesis MR2+, Cannibal) ; contre-productif si la casse est gratuite (Demogorgon Shred, Oni en Fury) ou si le tueur la franchit (Ghoul avec tokens : Kagune Leap, le vault déclenchant toutefois son cooldown) : garder P pour un stun ou changer de zone |
| Abandonner | W bloquée **pour toi** + P cassée ; ou tueur qui tient le centre alors que tu n'as plus de porte sûre. Partir **pendant** la casse de P (2,34 s, caméra basculée [FACT] (SS)) par l'ouverture opposée à lui |
| Connecter | Repérer la tile suivante **pendant** le 1er cycle. Sous-sol dans le shack = crochet à côté : ne pas finir la chase blessé ici |
| Tueurs qui changent tout | Nurse (blink à travers les murs) ; Blight (rush ; tokens sur casse depuis 9.6.0) ; Hillbilly / Cannibal (casse 1 s) ; casseurs de palette (4.5.2) ; Lich (Mage Hand **relève** P baissée ou **bloque** P levée 4 s) ; Knight (garde qui chasse : il **contourne** P baissée) ; Good Guy (Scamper 1 s par W ou sous P) ; Trapper (piège à la réception de W ou dans P) ; tueurs à distance : **les murs hauts t'avantagent** ; Bamboozle / Hex: Crowd Control / Cruel Limits (W bloquée pour tous) |

> **Erreur fréquente** : la règle populaire « au moins deux tours de fenêtre avant de toucher à la palette » (ou « 3 vaults puis palette »). C'est une **règle absolue**, fausse dès que le tueur tient l'intérieur, que tu es blessé, ou contre un pouvoir anti-loop.

**Exercice « shack à l'info »** [HEURISTIQUE] : en partie personnalisée, un ami tueur choisit au hasard, à chaque cycle, « suivre » ou « tenir l'intérieur ». Toi, tu n'as droit qu'à la tache rouge et à un checkspot par cycle pour décider W ou P. Mesure : % de cycles où tu as choisi la bonne porte sur 20 cycles ; refais l'exercice avec un tueur Undetectable (checkspots seuls).

### 4.4.2 Jungle gym « long wall » (LW) [Intermédiaire]

```
 SCHÉMA DE PRINCIPE — mur long (avec fenêtre) face à un mur en L ; fenêtre et palette TOUJOURS
 de côtés opposés [FACT] (SS) ; l'emplacement de la fenêtre de l'autre variante devient un TROU (o)

      ####################W####################   <- mur long, fenêtre W
                                              #
      #          centre de la tile            #
      #     (K « au milieu » couvre W et P)
      #
      ########o########              P          <- mur en L, trou o ; P du côté opposé à W
       S boucle par l'extérieur du mur long → vault W → contourne → revient
```

| Point | Contenu |
|---|---|
| Forme / entrées | Deux murs (long + L) autour d'un espace central ouvert ; plusieurs entrées (nombre non décrit) |
| Fenêtres / palettes | 1 fenêtre sur le mur long ; 1 palette côté opposé ; trou à l'emplacement de la fenêtre de la variante SW [FACT] (SS) |
| LOS | Selon le royaume (4.4.0). Le trou et la fenêtre sont des checkspots naturels |
| Sens optimal | Longer le mur long **par l'extérieur** vers W, tueur derrière : il ne peut pas couper (mur long). Vault W, repartir vers l'extrémité opposée du mur |
| Mauvais sens | Revenir vers W **par l'intérieur** quand il est au centre : il couvre la réception |
| Checkspots | Par W en approchant ; par le trou `o` ; aux deux extrémités du mur long |
| Pathing tueur | Rester au milieu plutôt que suivre en rond ; fausse avance sur P ; attendre au coin de W |
| Fast vault | Le long du mur, tu n'as souvent pas 2,5 m droits **vers** la fenêtre : « ouvrir » la trajectoire avant (léger écart puis ligne droite) |
| Red stain | Tueur au centre : la tache pointe vers W ou vers P → aller vers l'**autre** porte |
| Double-back | Efficace au bout du mur long, hors LOS |
| Greed | Garder P tant que la boucle W fonctionne (il suit) |
| Pre-drop | Quand il s'installe au centre et que tu es entre lui et P sans marge |
| Abandonner | W bloquée pour toi + P cassée ; ou tueur au centre qui couvre les deux portes. Sortie pendant la casse |
| Connecter | Les maze tiles occupent des emplacements fixes : la suivante est souvent à portée. Choisir celle qui **n'est pas du côté** du tueur |
| Tueurs | Houndmaster (angles courts favorables au survivant, selon le handbook) ; Nemesis MR3 (tiles courtes dans sa portée) ; Trickster (longue fenêtre vue de loin) ; Trapper (coin piégé) |

« Long wall bien plus fort que short wall » : [AVIS D'EXPERT] non sourcé, cohérent avec le modèle (trajet du tueur vers la réception plus long).

### 4.4.3 Jungle gym « short wall » (SW) [Intermédiaire]

| Point | Contenu |
|---|---|
| Forme | Même tile, fenêtre sur le mur **court en L** ; le mur long a un **trou** à la place de sa fenêtre [FACT] (SS) |
| Différence clé | Le trajet du tueur entre le centre et la réception de W est **court** : W se couvre facilement → tile plus « mindgame » que safe [AVIS D'EXPERT] |
| Sens optimal | Utiliser W **seulement** quand le tueur est engagé loin (côté mur long) |
| Mauvais sens | Vaulter W alors qu'il est au centre : réception couverte |
| Checkspot | Le **trou** du mur long montre le centre sans dévier |
| Fast vault / red stain / double-back | Comme le LW ; le double-back se fait plutôt autour du mur long (le côté où il a le plus long trajet) |
| Greed | Plus rare que sur LW : la palette est ta vraie ressource |
| Pre-drop | Plus précoce que sur LW |
| Abandonner | Quand P est cassée **et** qu'il coupe par le centre : une W courte seule ne tient pas [AVIS D'EXPERT]. S'il continue de suivre, W garde 1-2 vaults utiles pour préparer la transition |
| Connecter | Préparer la sortie **avant** la casse de P |
| Tueurs | Tout tueur qui profite d'une réception courte : ranged (Huntress, Deathslinger), anti-loop à dash |

### 4.4.4 L-T walls [Intermédiaire]

```
 SCHÉMA DE PRINCIPE — un mur en T et un mur en L, CHACUN avec une fenêtre [FACT] (SS) ;
 un petit mur séparé (casier possible). Grave of Glenvale : un mur cassable en plus.

          ###W###########                 ##########
                #                                  #
                #   (centre : K qui               W#
                #    « coupe »)                     #
                #                          ##########
   S serpente : vault W(T) → court vers W(L) → vault → revient
```

| Point | Contenu |
|---|---|
| Fenêtres / palettes | 2 fenêtres, **aucune palette** décrite par le wiki [FACT] (SS). 9.3.2 a revu la randomisation des palettes « sur certaines tiles » : une palette proche n'est pas exclue **(INC)** |
| Budget | 2 compteurs indépendants : jusqu'à 3 vaults par fenêtre (CALC) |
| LOS | Selon le royaume ; le jeu se fait presque entièrement **à l'info** |
| Sens optimal | Enchaîner les fast vaults en « S » entre les deux murs, toujours vers la fenêtre dont **la réception est loin du tueur** |
| Mauvais sens | Vaulter vers le côté où il se trouve ; tourner toujours dans le même sens (lu en 1 cycle) |
| Checkspots | Chaque fenêtre ; les extrémités des murs |
| Pathing tueur | Se placer entre les deux murs pour atteindre la réception de l'une ou l'autre |
| Fast vault | Chaque fenêtre doit être abordée droite : les murs étant séparés, tu as en général la place de t'aligner |
| Red stain / double-back | Tache ou corps vus → fenêtre opposée ; double-back à l'extrémité du T |
| Greed | Pas de palette : « greed » = un vault de plus ; à éviter quand ton compteur d'une fenêtre est à 2 et que l'autre est couverte |
| Abandonner | Quand il coupe par le centre avec LOS sur toi (l'ancien guide disait « 50/50, partez quand il n'a plus de ligne de vue » : correct) ; quand les deux fenêtres sont bloquées pour toi |
| Connecter | **Tile de transition idéale** : rien de consommable, tu gagnes 1-2 vaults en passant puis tu pars vers une palette |
| Tueurs | Anti-loop à dash ou projectile ; Bamboozle / Crowd Control neutralisent la moitié de la tile ; Houndmaster (le chien peut être envoyé par une fenêtre [FACT] (VP, correctif 9.3.2)) ; Good Guy (Scamper par-dessus une fenêtre) ; ranged (réception prévisible) |

« Le T est plus sûr que le L » : [AVIS D'EXPERT] **invérifiable** ici.

### 4.4.5 4-lane (4-wall gym) [Intermédiaire]

```
 SCHÉMA DE PRINCIPE — 4 murs parallèles ; fenêtre sur un mur EXTÉRIEUR = « opened »,
 sur un mur INTÉRIEUR = « closed » ; la palette est entre un mur extérieur et un mur intérieur
 SANS fenêtre ; l'emplacement de l'autre fenêtre devient un trou [FACT] (SS)

   Variante « opened »                 Variante « closed »
   #######W#######  ext. A             ###############  ext. A

   #######o#######  int. B             #######W#######  int. B

   ###############  int. C             ###############  int. C
          P                                   P
   ###############  ext. D             ###############  ext. D
```

| Point | Contenu |
|---|---|
| Forme | 4 murs parallèles = 3 couloirs ; 1 fenêtre + 1 palette ; Glenvale : mur cassable en plus [FACT] (SS) |
| Présence | Wiki non daté : absent de Coldwind et Withered Isle ; pool commun 9.2.0 → **conflit non résolu** (4.1.3) |
| LOS | Les couloirs cassent la LOS si les murs sont hauts (Autohaven : « medium ») |
| Sens optimal | **Opened** : boucler le mur extérieur qui porte W, vault quand il suit ; la palette sert quand il coupe vers les couloirs intérieurs. **Closed** : la W intérieure se couvre plus facilement depuis les couloirs (« opened > closed » : [AVIS D'EXPERT]) |
| Mauvais sens | Entrer dans le couloir de la palette alors qu'il est dans le couloir voisin : il coupe par l'extrémité |
| Checkspots | Le trou `o` et W ; les bouts de couloir |
| Pathing tueur | Se placer dans le couloir central pour voir les deux sorties ; zoner vers la palette pour la casser |
| Red stain / double-back | Changer de couloir **hors LOS** ; les bouts de couloir sont les points de double-back |
| Greed | Palette entre deux murs sans fenêtre : loop de palette longue, greed possible tant que tu la vaultes plus vite qu'il ne contourne |
| Pre-drop | Si tu entres dans le couloir de P avec lui à portée |
| Abandonner | P cassée + W bloquée ; tueur au couloir central avec LOS |
| Connecter | Sortir par le bout de couloir opposé à lui |
| Tueurs | Ranged dans l'axe des couloirs (tir en ligne droite : défavorable) ; Demogorgon (Shred dans l'axe) ; Executioner (Punishment traverse les murs fins) |

### 4.4.6 Pallet gym [Intermédiaire]

```
 SCHÉMA DE PRINCIPE — long mur en C + court mur en L, palette TOUJOURS entre les deux ;
 un petit mur en C séparé (totem possible) et un mur droit parallèle (crochet possible) [FACT] (SS)

        ##############
        #            #          ###   <- petit C (totem)
        #     C      P  L##
        #            #   #          ###   <- mur droit (crochet)
        ##############
```

| Point | Contenu |
|---|---|
| Fenêtres / palettes | Pas de fenêtre décrite ; 1 palette garantie entre C et L [FACT] (SS). Absent de Withered Isle selon le wiki (conflit 4.1.3) |
| LOS | Mur en C haut (selon royaume) : il ne voit pas ton choix de côté |
| Sens optimal | Boucler le long C **palette levée** tant qu'il la respecte ; drop quand il s'engage sur le côté court (stun possible) |
| Mauvais sens | Arriver sur P du même côté que lui : pas de stun possible (règle 5.2.0) |
| Checkspots | Les deux extrémités du C |
| Greed | Tant qu'il respecte : c'est la **seule** ressource de la tile, chaque cycle gratuit compte |
| Pre-drop | Dès qu'il ne respecte plus (engagement franc) et que tu n'as pas la marge d'un cycle |
| Abandonner | Une fois la palette cassée : plus aucune porte asymétrique (CALC). Partir **pendant** la casse |
| Connecter | Avoir repéré la suivante avant la casse ; un crochet peut apparaître sur le mur droit : une chute ici = crochet immédiat |
| Tueurs | Casseurs et vaulteurs de palette (4.5.2) : la tile perd presque tout. **Dissolution** (LIVE : après que tu as subi des dégâts, pendant 12/16/20 s, la prochaine palette que tu **fast-vaultes** dans son rayon de terreur est détruite — valeur LIVE reconstruite depuis le « was » de la note PTB 559 ; le wiki affiche déjà la version PTB) → vault **lent** (2 s, silencieux) ou ne pas revaulter blessé |

### 4.4.7 Autres gyms : debris, locker, labyrinth, variant [Avancé]

Forme = [FACT] (SS). Les listes de royaumes du wiki pour ces tiles sont **à ignorer** tant que le conflit du pool commun n'est pas levé (4.1.3). Le jeu ci-dessous est [HEURISTIQUE] déduit de la géométrie : **aucune source tactique** n'existe pour ces tiles.

| Tile | Forme [FACT] (SS) | Sens / portes | Greed / pre-drop / abandon | Pièges |
|---|---|---|---|---|
| **Debris pile gym** (= « Trash / Junk pile gym » : **une seule et même tile**, l'ancien guide en faisait deux) | Deux murs principaux parallèles ; d'un côté une **fenêtre à côté d'un tas de débris** ; de l'autre une **loop de palette coupée par un autre tas** ; petit mur au fond ; casier au bout du mur de la palette | Deux sous-loops séparées par les murs parallèles : fenêtre tant qu'il suit, bascule vers la palette quand il coupe | Greed de palette tant que la sous-loop fenêtre tient ; abandon quand W bloquée + P cassée | Les tas de débris sont des obstacles de collision : ne pas s'y accrocher |
| **Locker gym** | Mur courbe avec **5 casiers** (totem possible) ; mur central avec **fenêtre au milieu** + 1 casier ; deux murs fragmentés, **palette entre le central et le droit, à l'avant** | Loop autour du mur central par la fenêtre ; palette pour le cycle de droite | Comme une tile fenêtre + palette | Les casiers ne sont **pas** une ressource de chase (entrer sous ses yeux = prise) ; ils servent après un chase break |
| **Labyrinth gym** | Nombreux segments à petites avancées ; **5 chemins d'entrée** ; palette entre deux murs frontaux ; variante 1 : fenêtre **en face** de la palette ; variante 2 : fenêtre **plus à gauche** | 5 entrées = beaucoup d'options **pour les deux** : tile de mindgame et de double-back. V1 : fenêtre et palette se couvrent mutuellement (un seul point à surveiller pour lui, un seul passage court pour toi) ; V2 : deux sous-loops plus espacées | Greed plus risqué en V1 (il couvre les deux portes d'un point) | Noms « Wolfpack / Lone Wolf » invérifiables |
| **Variant gym** | 5 segments ; fenêtre près de l'avant du mur de gauche ; palette entre le mur central et celui de droite, à l'avant ; deux segments à l'arrière ; 3 casiers. Ressemble au LW | Se joue comme un LW : fenêtre d'abord, palette quand il coupe | Comme LW | Les segments arrière offrent des angles de double-back |

Checkspots, red stain et connexion : mêmes principes que le LW (4.4.2).

### 4.4.8 Fillers (palettes « de remplissage ») [Débutant → Intermédiaire]

```
 SCHÉMA DE PRINCIPE — palette posée contre un petit objet (rocher, arbre, voiture, balle de foin)

        (rocher)
         ▓▓▓▓
         ▓▓▓▓ P ────── S       Boucle très courte : le tueur, plus rapide, rattrape le tour
         ▓▓▓▓                  → valeur = STUN ou PRE-DROP pour la distance, puis PARTIR
```

| Point | Contenu |
|---|---|
| Définition | Palette dont l'obstacle support est **court** : le détour du tueur est plus court que « ton trajet × 1,10-1,15 + fente + `v_K` × durée de ton action » (vault de palette 1,1 s ≈ 5 m ; drop INC) → **unsafe par construction** (CALC ; le classement reste [HEURISTIQUE]) |
| Changement LIVE | 9.3.2 : « Prevented pallets from spawning against certain small objects » + loops trop courtes rallongées sur 7 royaumes [FACT] (VP) → moins de fillers absurdes ; les connaissances antérieures sont périmées pour ces royaumes |
| Sens optimal | Arriver **sans** faire le tour : la palette sert d'une traite (drop puis départ) |
| LOS / checkspots | Peu de LOS : l'objet est petit. Checkspot par-dessus l'épaule en approchant pour savoir s'il s'engage |
| Greed | Rare : seulement s'il est loin **et** respecte (il s'arrête devant) |
| Pre-drop | Cas normal **contre un tueur sans pouvoir sur les palettes** : dès qu'il sera en portée de fente à ton arrivée ; il doit alors casser (2,34 s, Bloodlust à 0) ou faire un détour. **Aucune garantie** contre les vaulteurs (Legion Frenzy, Mastermind, Ghoul, Good Guy Scamper 1 s, Krasue Head Form 1,9 s), les casseurs gratuits (4.5.2), la Lich (Mage Hand relève la palette). Contre un tueur qui **attend** ton pre-drop (il ralentit avant la zone de stun) : varier (départ sans drop, drop normal) |
| Stun | S'il s'engage franchement : drop au bon moment = stun 2 s, puis casse éventuelle (≈ +8 m, +17 m s'il casse ensuite, CALC chapitre 3) |
| Abandonner | **Immédiatement** après le drop : tourner autour d'un filler coûte un coup |
| Connecter | Un filler est une **ressource de transition** : il sert à gagner les mètres pour atteindre la tile suivante, pas à y rester |
| Tueurs | Nurse (peu utile) ; casseurs gratuits (valeur = stun ou rien) ; **exception Blight** : la casse lui coûte des tokens, le pre-drop rapporte ; Hillbilly / Cannibal : casse 1 s ≈ +4 m, pas zéro ; Spirit : « jeter tôt puis marcher » (handbook) |

### 4.4.9 Fenêtres fortes, faibles, à sens unique [Intermédiaire]

Critères [HEURISTIQUE] (aucun n'est documenté comme tel) :

| Critère | Fenêtre forte | Fenêtre faible |
|---|---|---|
| Trajet du tueur vers la réception | Long (mur long, pas de raccourci) | Court (mur court, ouverture proche) |
| Hauteur des murs | Haute (il ne voit pas ton choix) | Basse / « medium » (il lit ton approche) |
| Approche | Ligne droite ≥ 2,5 m naturelle (fast vault) | En angle (medium 0,9 s, corps exposé [FACT] (SS)) |
| Sortie | Vers une autre ressource ou le reste du cycle | Vers une zone morte |
| Réutilisation | Cycle qui te ramène à elle | À sens unique (drop-off) |

**Fenêtres à sens unique (drop-offs)** [FACT] (SS) :

- **Crane** (Autohaven) : fenêtre au sommet, le vault fait descendre de la grue.
- **Car Crusher** (Autohaven) : vault dans la benne, on retombe du camion.
- **School Bus** (Autohaven) : fenêtre à l'arrière de la moitié arrière.
- **Harvester** (Coldwind) : vault **gauche** → panneau latéral d'où l'on **ne peut pas** revaulter ; vault **droit** → balle de foin d'où l'on **peut** revaulter dans les deux sens.
- **Shrine** (Yamaoka) : balustrade avec fenêtre et une descente ; fenêtre intérieure vers la terrasse.

Lecture [HEURISTIQUE] : une fenêtre à sens unique **n'est pas une loop**, c'est un **outil de transition** (le tueur fait le tour par la rampe ou vaulte en 1,7 s). Ne compte pas dessus pour un 2e passage.

### 4.4.10 Main buildings (générique) [Avancé]

Le détail par carte est au chapitre 5. Ici, les principes.

| Point | Contenu |
|---|---|
| Composition | Variable : main window, palettes intérieures et extérieures, étages avec **drop-offs**, **murs cassables** (cartes retravaillées), escaliers, parfois sous-sol [FACT] (SS). Exemples lus : **Coal Tower** (entrepôt à 2 niveaux, escalier intérieur, **1 fenêtre** au rez-de-chaussée, **3 drop-offs** dont un derrière un mur cassable, **3 murs cassables**, **2 palettes dehors**) ; **Pale Rose** (bateau à 2 niveaux, 3 escaliers extérieurs, 4 entrées au rez-de-chaussée, **2 fenêtres à l'étage**, plusieurs palettes) ; **Grim Pantry** (Pantry + Cursed Cabin, 2 palettes chacun ; la Cabin a 1 fenêtre et une porte ; réparer le gen de l'étage ouvre une vanne qui facilite l'accès) |
| Changements LIVE | 9.3.0 : main de **Crotus Prenn** rendu moins safe (il pouvait « s'y chaîner » aux maze tiles) ; main de **Disturbed Ward** : spawn revu [FACT] (VP) |
| Main window | « Souvent god » : [AVIS D'EXPERT] non sourcé. Le compteur de 3 vaults s'applique aussi [FACT] : **aucune** main window n'est infinie |
| Sens optimal | Main window d'abord (compteur neuf), palettes en réserve ; les 3 vaults de la main window sont un budget **séparé** de ceux des tiles précédentes |
| Étages | « Ne monte que s'il existe un drop libre ; descends quand il monte l'escalier » : [HEURISTIQUE] correcte. « Il perd 3 à 5 s » : **invérifiable** (aucune mesure) |
| Murs cassables | S'il casse un mur en pleine chase, tu gagnes 2,34 s **maintenant** (≈ +9,4 m, CALC) mais la loop est **définitivement** plus courte pour lui : profite des 2,34 s pour **changer de loop**, pas pour refaire la même |
| Checkspots | Fenêtres intérieures, cages d'escalier, ouvertures |
| Pathing (pre-run) | Mémoriser où est la main window, quelles palettes, où sont les drops, quels murs sont déjà ouverts (état partagé par tous) |
| Abandonner | Main window bloquée pour toi + palettes cassées + étage sans drop libre |
| Tueurs | Nurse (blink d'étage ; un blink raté = fatigue gratuite) ; Ghoul (bonds vers le haut / bas) ; Hillbilly (rampes) ; Huntress en hauteur ; Mastermind (bâtiments à étages favorables au survivant selon le handbook) ; Shape, Ghost Face (coins) ; Doctor (Static Blast) |

### 4.4.11 Murs cassables (modificateur de tile)

- [FACT] (SS) : présents sur la plupart des cartes sorties ou retravaillées depuis Chains of Hate (liste du wiki de 22 cartes, probablement incomplète) ; exceptions retravaillées sans murs cassables : Shelter Woods, Wreckers' Yard, Rotten Fields, Sanctum of Wrath. À Glenvale, L-T et 4-lane ont **toujours** un mur cassable ; le shack de Dead Dawg Saloon aussi.
- Perks liées [FACT] (SS) : Brutal Strength (+10/15/20 % de vitesse de casse) ; THWACK! (casse de palette ou de mur → cri + aura des survivants à 36 m, 3 jetons) ; Rampage ; côté survivant, Alert (aura du tueur 3/4/5 s quand il casse).
- [HEURISTIQUE] : un mur **encore fermé** rend la loop plus longue pour le tueur ; il a intérêt à l'ouvrir **hors chase**. Un mur ouvert avant ta chase = loop à réévaluer au pre-run. Effet d'une casse de mur sur la Bloodlust : **(INC)**.

### 4.4.12 Structures propres aux royaumes [Avancé]

| Structure (royaume) | Description [FACT] (SS) | Jeu [HEURISTIQUE] |
|---|---|---|
| **Sacrificial Tree / « Cow Tree »** (Coldwind) | Entouré de **murets de pierre** ; 1 fenêtre ; 1 palette entre deux autres murets | Murets bas = il voit tout : peu de mindgame pour toi, beaucoup pour lui. « Fenêtre d'abord, palette ensuite » : plausible (garder la palette pour le moment où il coupe) |
| **Harvester** (Coldwind) | Accès par la tête et une rampe ; 2 vaults au sommet (gauche à sens unique, droite sur une balle de foin, aller-retour possible) ; ancien quasi-infini corrigé | Le vault droit permet un aller-retour ; le gauche est un drop de transition. Ne monter que si la sortie est planifiée |
| **School Bus** (Autohaven) | 2 variantes (moitiés collées ou séparées par un couloir, 6.7.0) ; **un des deux vaults toujours bloqué** ; fenêtre arrière = drop-off ; palette **possible** au milieu de la moitié avant ; ancien quasi-infini | « Le bus se boucle en longueur » : imprécis. Identifier la variante et le vault actif **en arrivant** |
| **Crane** (Autohaven) | Rampe en bois vers le sommet ; fenêtre au sommet = drop-off ; **toujours une palette entre la grue et une voiture** | Palette garantie = ressource fiable de la zone ; le sommet est une transition |
| **Car Crusher** (Autohaven) | Escaliers ; vault dans la benne (drop-off) ; voiture à côté | Transition, pas une loop |
| **Water Tower** (MacMillan) | Structure carrée en briques ; caisses à l'arrière (totem possible) ; ni fenêtre ni palette décrites | **Obstacle de LOS**, loop « à pied » seulement |
| **Lumber Pile** (MacMillan) | Pile de bois + fendeuse ; 2 casiers possibles | « Long mur avec palette » (ancien guide) : invérifiable, le wiki ne mentionne pas de palette |
| **Coal Tower** (MacMillan) | C'est le **main building** d'une carte (voir 4.4.10), pas une structure générique | « Se joue comme un shack » : imprécis |
| **Pier** (Backwater) | Étage avec gen, 2 casiers, **plusieurs drop-offs** ; rez-de-chaussée « ressemblant à des jungle gyms » avec **plusieurs vaults et une palette** (2 emplacements) ; 9.3.0 : spawn revu [FACT] (VP) | Structure riche : loops du bas + drops ; attention aux corbeaux (« crow bombs » documentés sur Pale Rose) |
| **Shrimp Boat** (Pale Rose) | 2 entrées latérales ; pont accessible par rampes ou par la fenêtre | Petite structure à fenêtre ; transition vers le Pale Rose |
| **Arbor** (Yamaoka) | Bâtiment japonais ; 3 escaliers ; un vault ; une **palette sur un rocher parallèle**, face à un pont rouge | Combiner le vault de l'Arbor et la palette du rocher |
| **Shrine** (Yamaoka) | 2 escaliers vers la terrasse ; balustrade avec **fenêtre** et **descente** ; fenêtre intérieure | Sortie par la descente = transition |
| **Patio** (Yamaoka) | Dallage entouré de **murets de pierre** à plusieurs ouvertures ; **1 fenêtre + 1 palette** | Petite tile fenêtre + palette ; murets : la LOS est pour lui |
| **Hills** (plusieurs royaumes) | Sentier vers le sommet ; totem, coffre, objets de tueur ; Red Forest et Yamaoka : 2 accès | **Pas une loop** : obstacle de LOS et dénivelé ; tourner autour casse la LOS contre ranged |
| **Basement** (partout) | **Une seule entrée / sortie** ; 4 crochets ; 6 casiers | **Presque jamais** une destination de chase (cul-de-sac, crochets sur place) ; l'escalier du shack reste un obstacle de LOS utilisable **dehors** |
| **Maïs** (Coldwind) | Non traité par les pages lues | « Pas de loop, LOS cassée » : [AVIS D'EXPERT] plausible ; inutile contre les auras |

### 4.4.13 La « god pallet » : définition et usage [Avancé]

**QUOI** [HEURISTIQUE]. Une palette dont la **loop baissée** reste forte : après le drop, tu la vaultes (1,1 s) et le tueur doit faire un détour **plus long** que « ton trajet × 1,15 + fente + ≈ 5 m » (les ≈ 5 m = 4,6 × 1,1 s où tu es immobile dans le vault). Il n'a alors que deux choix rentables : **casser** (2,34 s, Bloodlust à 0) ou **quitter** la chase. Définition valable contre un tueur **sans pouvoir sur les palettes**. Palette levée impossible à contester = « safe » ; « god » = safe **et** forte une fois baissée.

**POURQUOI la distinguer.** Elle force une décision coûteuse au tueur : c'est la ressource qui convertit le mieux une palette en secondes.

**QUAND la garder.** L'ancienne règle « une god pallet se garde, sauf dernier crochet ou fin de partie » est **trop absolue**. Règle de remplacement [HEURISTIQUE] : **on garde une palette forte tant que la garder ne coûte pas d'état de santé et qu'une autre ressource travaille à sa place** (fenêtre, LOS).

**CONTRE-EXEMPLES** (la garder est une erreur) :

- la garder te coûte un coup (tueur qui coupe) ;
- tueur à casse gratuite (la garder = la perdre sans stun) ;
- une ressource équivalente est à côté (inutile de l'économiser) ;
- **Hex: Blood Favour** peut la bloquer levée 15 s après une blessure (LIVE : 24/28/32 m, reconstruit depuis le « was » de la note 559) ;
- SoloQ : tu ne sais pas si un allié en aura besoin plus tard ; SWF : l'équipe peut décider qui la garde.

**CAS D'ÉCHEC.** Garder la palette « pour plus tard » et tomber en ligne droite avant d'y revenir ; ou la jouer baissée contre une Lich (Mage Hand la relève).

Détail : `kb/research/batch7_tiles.md` §4 ; `kb/audit/pass14_lot7_tiles.md` (T02, T07, T08, T22-T26, T40).

---

## 4.5 Matrice tile × archétype de tueur [Avancé]

### 4.5.1 La matrice

**Toute la matrice est [HEURISTIQUE]** : elle fusionne la matrice v1 du handbook de counterplay (§3) et les lignes ajoutées par le lot 7, avec les corrections de l'errata. ↑ = la structure **gagne** de la valeur pour le survivant face à l'archétype ; ↓ = elle en perd ; ≈ = neutre ; ± = dépend du tueur (lire sa fiche).

| Structure | M1 | Anti-loop | Ranged | Mobilité | Furtif | Zone / piège |
|---|---|---|---|---|---|---|
| **Shack** | ↑ | ↑ Houndmaster (angles courts), Oni, Mastermind, Blight (murs hauts gênent le rebond, SITUATIONNEL) | ↑ murs hauts coupent la LOS (Huntress, Deathslinger, Trickster, Cenobite, Animatronic, Unknown) ; ↓ Artist, Executioner | ↑ Hillbilly, Nurse (obstacle opaque), Ghoul (tile fermée) | ↓ Ghost Face (il stalke hors de ta vue) | ↓ Trapper (réception de W piégée) |
| **Jungle gym LW / SW** | ↑ (LW > SW) | ± ↑ Houndmaster ; ↓ Nemesis MR3 (tiles courtes dans sa portée), Xenomorph (tiles pincées) | ± ↑ Huntress, Deathslinger (tiles fermées) ; ↓ Trickster (longue fenêtre vue de loin) | ↑ Hillbilly (murs hauts, passages étroits) | ± coins de stalk (Shape, Ghost Face) | ↓ coin piégé (Trapper) |
| **L-T walls** (2 W, 0 P) | ↑ (budget 2 × 3 vaults) | ↓ Legion Frenzy, Ghoul, Xenomorph, Good Guy (Scamper par la fenêtre), Houndmaster (chien envoyé par une fenêtre), Mastermind ; ↑ Demogorgon, Oni (rien à casser) | ↓ réception prévisible (Huntress, Deathslinger, Trickster) | ↓ Nurse, Blight (pas de palette pour lui coûter des tokens) | ≈ | ↓ fenêtre piégée (Trapper) |
| **4-lane** | ↑ | ± ↓ Demogorgon (Shred dans l'axe d'un couloir) | ↓ tir dans l'axe ; ↑ si tu changes de couloir hors LOS | ± | ↓ coins de couloir (Ghost Face, Shape) | ≈ |
| **Pallet gym** (0 W, 1 P) | ↑ tant que P est levée | ↓↓ tout casseur / vaulteur de palette (4.5.2) | ± | ↓↓ Nurse, Spirit | ≈ | ↓ si P déjà cassée (zone consommée) |
| **Filler** | ≈ (ressource de distance) | ↓ contre une casse gratuite (stun ou rien) ; **exception Blight** (tokens) ; Hillbilly / Cannibal : 1 s ≈ +4 m | ↓ palette basse ne bloque pas les projectiles (Huntress, Executioner) | ↓↓ | ≈ | ≈ |
| **Fenêtres fortes** (main window, etc.) | ↑ (Cannibal n'a rien contre, sauf Bamboozle) | ± ↑ Demogorgon (le Shred ne franchit pas une fenêtre), Oni, Lich ; ↓ Ghoul (bonds), Xenomorph (queue à travers), Legion Frenzy, Good Guy | ↓ réception prévisible (Huntress, Deathslinger, Trickster, Animatronic, Plague) | ± ↑ Hillbilly ; ↓ Nurse, Slasher, Dark Lord (points de TP) | ≈ ; ↓ Pig accroupie près d'une fenêtre | ↓ Trapper, Hag (passage obligé piégé) |
| **Fenêtre à sens unique / drop** | ↑ transition | ± | ↓ réception en hauteur visible | ↓ Ghoul ; ± Nurse (blink d'étage raté = fatigue) | ≈ | ≈ |
| **Main à étages avec drops** | ↑ | ± ↑ Mastermind | ± ↓ Huntress depuis l'étage | ± ↑ Hillbilly (rampes) ; ↓ Ghoul | ↓ Shape, Ghost Face (coins) | ↓ Hag (réseau dense) ; ↓ Doctor (Static Blast) |
| **Murets bas** (Cow Tree, Patio, murs « medium » d'Autohaven) | ↓ (il lit tout) | ± | ↓↓ (tir par-dessus) | ↓ | ↑ (tu le vois aussi) | ≈ |
| **Zone ouverte** | ↓ zone morte | ↓ Houndmaster, Mastermind (portée idéale) | ↓↓ Huntress, Deathslinger, Trickster, Cenobite, Judgment | ↓↓ Hillbilly, Nurse, Oni Fury, Blight, Ghoul, Lich (Fly) | ↑ tu le vois venir | ↑ pièges dispersés (Trapper, Hag faibles en grand open) |

Règles de lecture [HEURISTIQUE] :

- Une case ± signale une **décision propre au tueur** : lire sa fiche (chapitres 7-8) avant de choisir la tile.
- La même structure peut être excellente puis mauvaise contre **le même** tueur selon sa phase (palettes contre Onryō manifestée / démanifestée ; boucles longues contre The First hors / pendant Worldbreaker ; fenêtres contre Judgment hors / pendant Zealous).
- **Houndmaster et palettes** : le handbook disait « une palette posée arrête le chien » ; le correctif 9.3.2 parle d'un chien « sent to vault a window **or pallet** » [FACT] (VP). Conflit **non résolu** : **ne compte pas** sur une palette baissée pour arrêter le chien.

### 4.5.2 Palettes annulées ou contournées par des pouvoirs (liste corrigée par l'errata)

L'ancienne liste de « casses instantanées » (audit phase 0, ancien guide) était fausse sur plusieurs points. **Version à utiliser** [FACT] (SS sauf mention) :

| Cas | Tueur | Effet | Condition |
|---|---|---|---|
| **Casse de base** | Shape | Slaughtering Strike détruit palettes **et** murs cassables | Evil Incarnate (VM) |
| | Demogorgon | Shred détruit la palette | Pouvoir de base |
| | Oni | Demon Strike détruit la palette | Blood Fury |
| | Blight | Lethal Rush contre une palette la casse ; **depuis 9.6.0, casser une palette au sol ramène ses tokens de Rush à 2 sous le max et la recharge à 0 %** (VP) → la casse lui **coûte** | Pouvoir de base |
| | Nemesis | Tentacle Strike détruit les palettes visées | Mutation Rate 2+ (MR1 : à vérifier) |
| | Singularity | Palette baissée sur lui = détruite, **pas de stun** | Overclock |
| | Dark Lord | Bond en forme de loup | Pouvoir de base |
| **Casse non instantanée** | Hillbilly, Cannibal | Tronçonneuse : **1 s** | Pouvoir de base |
| | Knight | Un garde casse sur ordre en **1,8 s ou 5 s**. **10.1.1** : une palette baissée pendant qu'un garde te chasse le fait **contourner** ; si le détour dépasse **48 m**, il abandonne ; palette baissée **sur** un garde : il la traverse, pas de stun (VP) | Pouvoir de base |
| | Lich | Mage Hand (portée 16 m) **relève** une palette baissée (0,5 + 0,5 s) **ou bloque** une palette levée 4 s ; avec **Vorpal Sword**, casse une palette baissée en **4 s** au lieu de la relever | Relever / bloquer : de base ; casse : add-on |
| **Casse seulement avec un add-on** | Mastermind | De base, Virulent Bound **franchit** la palette sans la casser | **Lab Photo** |
| | Good Guy | De base, Scamper 1 s **sous** la palette (casse de base propre au 2v8) | **Hard Hat** |
| | Legion | De base, vault en Frenzy | **Iridescent Button** |
| | Ghoul | De base, vault en Kagune Leap ; casse au 3e bond consécutif | **Iridescent Eye Patch** |
| | Executioner | Punishment of the Damned | **Obsidian Goblet** |
| | The First | Undergate Attack | **Shattered Wrist Rocket** ; « seulement avec l'add-on » **(INC)** (casse par la liane citée par le seed : non vérifiable) |
| **Vault sans casse** | Krasue | Head Form : vault de palette 1,9 s (fenêtre 1,67 s), stun 2,5 s, pas de Bloodlust, **ne casse pas** | Head Form |
| **Fausses palettes** | Nightmare | Dream Pallets : se brisent au drop mais **peuvent** l'étourdir | Pouvoir |
| | Doctor | Palettes illusoires | Add-on |
| **Palette levée bloquée** | Hex: Blood Favour | Dégâts de tout type → palettes levées à 24/28/32 m bloquées 15 s (LIVE reconstruit, note 559) | Perk |
| | Animatronic | Téléportation à une Security Door → palettes levées à 32 m bloquées 12 s | Add-on **Iridescent Remnant** |

> **Erreur fréquente** : « Good Guy, Mastermind et Knight cassent les palettes instantanément ». Faux en 1v4 LIVE : les deux premiers ont besoin d'un add-on, le Knight ne casse jamais instantanément. **Identifie l'add-on avant de changer ton plan** : la plupart des tueurs de la liste « add-on » ne l'ont pas.

### 4.5.3 Le pre-drop n'est pas universel : trois cas

Contre un tueur qui a un pouvoir sur les palettes, trois situations **différentes** [HEURISTIQUE fondée sur les FACT ci-dessus] :

1. **La casse lui coûte** (Blight : tokens) → le **pre-drop reste rentable**. Limite : il peut contourner sans casser. Appliquer contre Blight le conseil d'avant 9.6.0 (« éviter le pre-drop ») est une erreur.
2. **Son pouvoir punit l'attente à la palette** (Doctor, Cannibal, Nemesis MR2+, Mastermind, Lich) → **pre-drop puis départ immédiat** vers la tile suivante, pas « pre-drop puis tenir ».
3. **La casse (ou le franchissement) est gratuite et un drop tardif n'est pas plus puni** (Demogorgon Shred, Oni en Fury, Dark Lord loup ; Ghoul avec tokens, qui **franchit** la palette en Kagune Leap sans la casser, le vault déclenchant son cooldown) → la palette vaut surtout le **stun** ; la garder levée n'a de sens que si son pouvoir est en recharge ou inutilisable à cet endroit.

Contre un tueur qui a compris ta réponse par défaut (il attend le pre-drop), **varie**.

### 4.5.4 Perks qui modifient les tiles (valeurs LIVE)

| Perk | Effet sur les tiles | Confiance |
|---|---|---|
| Bamboozle (T) | Vault +5/10/15 % ; la fenêtre qu'il vaulte est **bloquée pour tous les survivants** 8/12/16 s ; aucun effet sur les palettes | (SS) |
| Hex: Crowd Control (T) | Refonte 9.5.0 : les **4/5/6 dernières fenêtres** vaultées (medium / fast) sont bloquées tant que le Hex tient ; il les vaulte 15 % plus vite et voit leur aura à 24 m | (VM) |
| Cruel Limits (T) | Chaque gen terminé : **toutes les fenêtres** bloquées 20/25/30 s | (SS) |
| Zanshin Tactics (T) | Aura des palettes et fenêtres à 32 m ; ton aura 3/4/5 s quand tu baisses une palette | (SS) |
| I'm All Ears (T) | Aura 8 s d'un survivant qui fait un Rushed Vault à ≤ 48 m ; CD 60/45/30 s | (SS) |
| Superior Anatomy (T, LIVE 9.0.0) | Vault medium / fast à ≤ 12 m de lui → son prochain vault +30/35/40 % ; CD 25 s | (VM : onglet 9.0.0 du wiki + note 9.0.0 ; la page wiki affiche par défaut la version PTB 10.2.0, non LIVE) |
| Knock Out (T) | Survivant qui s'éloigne de **> 6 m** d'une palette dans les **6 s** après l'avoir fait tomber → Hindered 5 % pendant 3/4/5 s (LIVE ; plus d'effet d'aura depuis 8.6.0 ; PTB 10.2.0 : 10 m / 20 %, non LIVE) | (VM) |
| Brutal Strength, THWACK!, Enduring, Spirit Fury (T) | Casse +10/15/20 % ; cri + aura sur casse ; stun −40/45/50 % ; après 4/3/2 casses, la prochaine palette qui l'étourdit est cassée instantanément (le stun a lieu) | (SS) |
| **Wide Open Throttle** (S, 10.0.1) | Fast vault d'une palette baissée → Haste 10/12,5/15 % 3 s ; la palette est **remise levée et bloquée 60 s**, aura visible par tous ; CD 60 s | (VP) |
| Five Moves Ahead (S, LIVE 9.5.0) | En poursuite ou dans le TR : aura des 5 palettes **et fenêtres** les plus proches ; après avoir fait tomber une palette, tu **repars 50 % plus tôt** (wiki : « drop 50 % plus rapide », même effet) ; CD 40/35/30 s après un drop (la version « palettes seulement » est PTB 10.2.0, non LIVE) | (VM, note 9.5.0) |
| Any Means Necessary (S) | Relever une palette baissée en 5/4/3 s | (SS) |
| Lithe / Balanced Landing (S) | Haste 50 % 3 s après un Rushed Vault / une chute ; Exhausted 60/50/40 s | (SS) |
| Last Stand (S) | Après 120/105/90 s dans le TR sans être poursuivi, un Rushed Vault étourdit le tueur 3 s s'il est à ≤ 2,5 m de la fenêtre ; une fois par partie | (SS) |
| Windows of Opportunity (S) | Auras permanentes des palettes, fenêtres et murs cassables à 24/28/32 m ; **aucun cooldown** en LIVE (le cooldown et la version « fenêtres seulement » affichés par le wiki sont la refonte PTB 10.2.0, non LIVE) | (SS, reconstruit depuis l'historique wiki et le change log 5.3.0) |

Lecture [HEURISTIQUE] :

- **Bamboozle et Crowd Control** transforment les tiles **à fenêtre seule** (L-T, fenêtres à sens unique) en tiles mortes ; contre elles, les tiles à **palette** gardent leur valeur.
- **Wide Open Throttle retire la porte de la loop pendant 60 s** : la palette revient levée **et bloquée**, tu ne peux plus la baisser, et le tueur passe dans l'ouverture. **Ne l'active pas sur la palette que tu comptes encore boucler.** Usage correct : **transition** (Haste 3 s vers la tile suivante), ou palette qui allait être cassée de toute façon.
- **Five Moves Ahead** réduit ton temps immobile après un drop (tu repars 50 % plus tôt) : un drop tardif coûte moins de marge dans la condition en temps (4.2.2). Que le stun tombe lui-même plus tôt n'est pas écrit (INC) ; géométrie inchangée ; le CD limite l'effet à un drop toutes les 30-40 s.
- **Superior Anatomy** rend un fast vault près de lui moins rentable ; s'il te suit par les fenêtres anormalement vite, identifie la perk avant de rejouer une W. **Last Stand** punit, une fois, un tueur qui colle ta réception.

Détail : `kb/research/batch7_tiles.md` §5 ; `kb/ledgers/AUDIT_PHASE0_ERRATA.md` ; `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md` §2.2-3.

---

## 4.6 Connectivité : enchaîner les tiles [Avancé]

### 4.6.1 Vocabulaire [HEURISTIQUE]

| Terme | Définition opérationnelle |
|---|---|
| **Chaînage (tile chaining)** | Suite de tiles assez proches pour passer de l'une à l'autre **sans** traverser de dead zone (au sens relatif de 4.3.1). BHVR le nomme comme facteur de sécurité (main de Crotus Prenn, 9.3.0 [FACT] (VP)) |
| **Tile de transition** | Tile qu'on traverse pour gagner quelques mètres : L-T, fenêtre à sens unique, filler en pre-drop, murs hauts pour casser la LOS |
| **Escape route** | Chemin de sortie prévu **avant** d'en avoir besoin, avec son déclencheur |
| **Resource route** | Chemin qui passe par le plus de ressources **non consommées** |
| **Carte mentale** | Ce que tu sais (FIXE) + ce que tu as vu (RNG observé) + ce qui a été consommé |

### 4.6.2 Ce que tu peux savoir avant la chase

| Source | Ce qu'elle donne | Nature |
|---|---|---|
| Connaissance de la carte | Emplacements **généraux** des maze tiles, du shack, du main, des structures | FIXE [FACT] (SS) |
| Nom de la carte | Royaume → hauteur des murs (4.4.0), structures possibles | FIXE |
| **Pre-run** (trajet vers ton premier gen) | Itération de chaque maze tile vue (LW / SW, opened / closed…), palettes présentes, murs déjà ouverts | RNG observé |
| Sons et HUD | Casses de palettes, poursuites des alliés | Partiel ; portée du son de casse **(INC)** |
| Perks d'aura | Palettes / fenêtres visibles | Conditionnel |

### 4.6.3 Planifier 5 à 15 s d'avance : les trois horizons [HEURISTIQUE]

**QUOI.** À chaque tile, trois questions, dans cet ordre :

1. **H1 — maintenant (0-5 s)** : quelle porte j'utilise, où est le tueur (checkspot **avant** la décision), combien de vaults il me reste sur cette fenêtre.
2. **H2 — la sortie (5-10 s)** : quel **déclencheur** me fera quitter la tile (fenêtre bloquée pour moi, palette baissée qu'il va casser, tueur qui tient le centre, Bloodlust au palier II) et **par où** je sortirai (côté opposé à lui).
3. **H3 — la destination (10-15 s)** : tile suivante **et** plan B, avec leur distance D et l'écart nécessaire (table ci-dessous). Si aucune destination ne passe le test : rester et étirer la tile actuelle (greed prudent), ou partir **pendant** sa prochaine animation.

**POURQUOI.** La plupart des coups « gratuits » se prennent **entre** deux tiles, pas dessus : on part trop tard, du mauvais côté, ou vers une ressource consommée.

Le « test des 5 secondes » (« où serai-je dans 5 s, pourra-t-il me toucher là ? ») est une bonne version courte de H1-H2.

**Écart nécessaire au départ pour atteindre une ressource à D mètres** (CALC : `v_r × D / 4,0`). **Ajoute** la fente (~2-2,5 m, INC) **et** le temps d'utilisation de la ressource en mètres (≈ 2,3 m pour un fast vault, ≈ 5 m pour un vault de palette, drop INC). Palier de Bloodlust supposé constant :

| D | 4,6 · BL 0 | 4,6 · BL I | 4,6 · BL II | 4,6 · BL III | 4,4 · BL 0 | 4,4 · BL III |
|---|---|---|---|---|---|---|
| 10 m | 1,5 m | 2,0 m | 2,5 m | 3,0 m | 1,0 m | 2,5 m |
| 15 m | 2,3 m | 3,0 m | 3,8 m | 4,5 m | 1,5 m | 3,8 m |
| 20 m | 3,0 m | 4,0 m | 5,0 m | 6,0 m | 2,0 m | 5,0 m |
| 30 m | 4,5 m | 6,0 m | 7,5 m | 9,0 m | 3,0 m | 7,5 m |
| 40 m | 6,0 m | 8,0 m | 10,0 m | 12,0 m | 4,0 m | 10,0 m |

**Quand partir : les « fenêtres de départ »** (CALC, gains repris du chapitre 3) :

| Moment | Écart ajouté | Remarque |
|---|---|---|
| Il casse la palette | ≈ +9,4 m, Bloodlust à 0 | Caméra basculée vers le bas [FACT] (SS) : il ne voit pas **par où** tu pars |
| Stun de palette | ≈ +8 m (+17 m s'il casse ensuite) | Meilleure transition possible |
| Il te suit par la fenêtre | ≈ +4,8 m | Rare : il préfère contourner |
| Coup manqué | ≤ +6 m | Cooldown 1,5 s |
| Coup reçu | ≈ +3 à +15 m (boost 1,8 s) | Coûte un état de santé ; Bloodlust à 0 |
| Il casse un mur | ≈ +9,4 m | Bloodlust : (INC) |
| Perte de LOS (angle de mur haut) | 0 m, mais il doit **deviner** | La poursuite finit si LOS perdue > 8 s [FACT] (SS) |

**QUAND / CONTRE.** Un bon tueur **refuse** les fenêtres de départ que tu attends : il ne casse pas, il contourne pour garder la Bloodlust, il coupe la direction de la tile suivante. Contre ça : partir **avant** d'en avoir besoin quand l'écart le permet.

**CAS D'ÉCHEC.** Destination choisie du **côté** du tueur (il coupe la route) ; destination consommée découverte à l'arrivée ; départ après la fin de sa casse au lieu de pendant.

### 4.6.4 Checklist de transition [HEURISTIQUE]

Avant de quitter une tile :

1. **Direction** : la tile suivante n'est **pas du côté** du tueur ; sinon, plan B.
2. **Distance** : écart ≥ table 4.6.3 + fente, pour **ton** palier de Bloodlust estimé.
3. **Terrain** : trajet couvert (murs hauts, dénivelés) contre ranged et mobilité ; ligne droite acceptable contre un M1 sans pouvoir.
4. **État de la destination** : ressource vue au pre-run et non consommée (ou probable, 4.6.5).
5. **Macro** : ne pas amener la chase sur les gens de tes alliés ni près d'un crochet à côté d'un gen à finir (chapitre 6).
6. **Plan B** : une ressource de secours à portée si la destination est prise.

### 4.6.5 Probabilité de trouver la ressource suivante [HYPOTHÈSE, modèle jouet]

- Une destination à **n** ressources indépendantes, chacune déjà consommée avec une probabilité q (inconnue en SoloQ), offre au moins une ressource avec la probabilité `1 − qⁿ`. Pour q = 0,5 : tile à 1 palette → 50 %. Un main à 2 palettes + 1 fenêtre : la fenêtre donne presque toujours une porte (sauf si **tu** l'as déjà vaultée 3 fois dans cette poursuite, ou si Bamboozle, Crowd Control ou Cruel Limits la bloquent).
- **Interprétation** : en cas de doute, une tile **à fenêtre** ou un main est une destination plus fiable qu'une tile à palette seule. Modèle **non mesuré** : q varie avec la phase de partie.
- En SoloQ, les palettes proches des gens disputés et du shack sont plus souvent consommées [HEURISTIQUE] : vérifier par un checkspot **avant** de s'engager.

### 4.6.6 SoloQ vs SWF sur les tiles [HEURISTIQUE, non mesuré]

| Point | SoloQ | SWF (vocal) |
|---|---|---|
| Carte mentale | Déduite : sons de casse, icônes de poursuite, pre-run ; vérifier la palette de destination par un checkspot | Annoncée : « palette du shack cassée », « L-T nord bloquée par Bamboozle » |
| Choix de destination | Préférer les destinations à **fenêtre** ou à plusieurs ressources | Palette seule acceptable si un allié confirme qu'elle est levée |
| Garder une palette forte | Valeur incertaine (tu ignores les besoins des autres) | L'équipe décide qui la garde (ex. palette d'endgame) |
| Macro | Ne pas amener la chase vers une zone où un gen avance sans savoir qui y est | Annoncer ta direction de sortie pour que les alliés quittent le trajet |
| Perks d'info de tile | Five Moves Ahead, Windows of Opportunity compensent en partie | Moins utiles |

Détail : `kb/research/batch7_tiles.md` §6.1-6.5, §6.8.

---

## 4.7 Trois exemples commentés : « Tile A → Tile B → Main → filler » [Expert]

Conventions : distances **inventées pour l'exemple** (schémas de principe) ; écarts et temps = CALC ; décisions = [HEURISTIQUE].

### Exemple 1 — Tueur M1 à 4,6 m/s, survivant sain, carte à murs hauts

```
                       18 m                         25 m                    15 m
   [A] Jungle gym LW ───────────► [B] L-T walls ─────────────► [MAIN] ─────────────► [F] filler
    W (3 vaults)  P                W1 (3)  W2 (3)               W main (3), 2 P, drop     P
        \                                                         ^
         \______________ 30 m à découvert (dead zone relative) ___/
   Le tueur te repère à ~8 m de A.
```

| Temps | Situation | Options | Décision et pourquoi |
|---|---|---|---|
| 0 s | Sur A, 8 m d'avance, BL 0 | (a) boucle fenêtre ; (b) pre-drop P ; (c) filer vers B | **(a)** : rien ne presse ; (b) gaspille la palette ; (c) consomme l'avance sans utiliser A |
| ~5-15 s | 2 vaults faits, il suit dehors | Continuer W ; garder P | **Greed P** tant qu'il suit. Compteur W = 2 : **le 3e vault est ton dernier** avant 30 s de blocage |
| ~15 s | BL I. Il arrête de suivre, tient le centre | (a) 3e vault ; (b) aller à P ; (c) partir vers B | **(b)** : un 3e vault vers un tueur au centre = réception couverte. À P : drop **quand il s'engage** (stun) ou pre-drop sans marge |
| Drop | Il casse (2,34 s) | Revaulter P ; partir | **Partir vers B pendant la casse** : +9,4 m, BL à 0 ; 18 m demandent ≈ 2,7 m + fente → largement couvert |
| ~25 s | B : 2 fenêtres, 6 vaults potentiels | Serpenter longtemps ; transition | B en **transition** : 2-3 vaults pour replacer le tueur **derrière** toi, puis partir quand il coupe par le centre **hors LOS** |
| Vers le main | D = 25 m, BL I probable | Partir ; rester | Il faut ≈ 5 m + fente : partir seulement après une réception qu'il n'a pas couverte ou un coup manqué. **Pas** le raccourci de 30 m à découvert depuis A |
| Main | Fenêtre à compteur neuf, 2 palettes, drop | Monter ; main window | Monter **seulement** si le drop est libre ; main window d'abord, palettes en réserve |
| Fin | Main consommé | Filler F (15 m) | **Pre-drop pour la distance** (ou stun s'il s'engage), puis continuer ; ne pas tourner autour |

> **Erreur typique** : quitter A **après** la casse (il a fini son animation) au lieu de **pendant** ; ou vaulter la 3e fois vers un tueur au centre « parce que la règle dit deux tours puis palette ».

### Exemple 2 — Tueur à distance (type Huntress / Deathslinger), survivant blessé

```
   [A] Shack ──12 m (derrière un muret bas) ──► [B] 4-lane (opened) ──20 m (couvert, le long de murs) ──► [MAIN]
                                                                                                          │ 10 m
                                                                                                         [F] filler
   Principe : contre un tueur à distance, la route COUVERTE bat souvent la route COURTE.
```

| Étape | Options | Décision (cohérente avec le handbook : murs hauts ↑, open ↓↓ contre ranged) |
|---|---|---|
| Shack (A), blessé | Boucle fenêtre ; pre-drop | Les murs hauts coupent ses tirs : **boucler W** en coupant la LOS à chaque angle ; ne pas rester dans l'axe des ouvertures |
| Sortie de A | Directe par le muret bas (12 m) ; le long du shack puis du 4-lane | Muret bas = tir par-dessus : **partir sur une casse ou hors LOS** ; changer de trajectoire pendant la course |
| 4-lane (B) | Couloir de P ; couloir de W | Ne pas courir **dans l'axe** d'un couloir où il a la ligne : changer de couloir hors LOS ; pre-drop plus tôt (blessé) |
| Vers le main | Courte en open ; longue couverte | **Couverte** en général, même 5 m plus longue : en open, la distance vaut **beaucoup moins** contre un tir. Elle compte encore (temps de vol, portée, recharge) : si la route couverte mange presque tout ton écart, la courte redevient discutable [SITUATIONNEL] |
| Main | Intérieur, plafond | L'intérieur favorise le survivant contre plusieurs ranged ; attention aux tirs depuis l'étage |
| Filler (F) | Pre-drop ; LOS derrière l'objet | Une palette basse **ne bloque pas** une hachette : F sert surtout d'**obstacle de LOS** |

> **Erreur typique** : choisir la tile la plus proche à travers une zone ouverte ; courir en ligne droite dans un couloir de 4-lane face au tueur.

### Exemple 3 — Fin de chase, zone consommée, SoloQ, Blight ou M1 à Bloodlust haute

```
   [A] Pallet gym (palette DÉJÀ CASSÉE : zone consommée) ──15 m──► [B] Debris gym (état inconnu)
                                          \                                  │ 20 m
                                           \───── 35 m ─────► [MAIN] ◄──────┘
                                                                 │ 15 m
                                                                [F] filler
```

| Étape | Options | Décision |
|---|---|---|
| A consommée, BL II | Rester ; B (15 m, inconnu) ; main (35 m) | A n'a plus de porte asymétrique → partir. Main à 35 m : ≈ **8,8 m** + fente contre un 4,6 à BL II → **irréaliste** sans coup reçu ni casse. (Blight à 4,4 : ≈ 7 m + fente, mais contre lui ce sont ses **tokens**, pas la course, qui décident) |
| Choix de B | Checkspot sur la palette de B pendant la course | Palette **vue levée** → B ; inconnue → B reste le seul choix atteignable ; plan B = sa fenêtre (compteur neuf pour toi) |
| À B | Fenêtre d'abord ; palette | **Blight** : sa casse lui coûte ses tokens depuis 9.6.0 → **pre-drop rentable** ; pas de greed debout derrière la palette quand il a des tokens. Casseur **gratuit** (Demogorgon, Oni en Fury) : la palette vaut le stun. **M1 à BL II** : pre-drop pour **remettre la Bloodlust à 0** s'il casse (il peut contourner pour la garder) |
| Vers le main (20 m) | Partir sur la casse ; rester | **Pendant la casse** (+9,4 m, BL 0) : 20 m demandent ≈ 3 m + fente → couvert. Le main offre plusieurs ressources : destination la plus probable |
| Main contre mobilité | Étages ; boucles serrées | Contre Blight, les murs hauts gênent les rebonds [SITUATIONNEL] : boucles courtes à murs hauts plutôt que longues lignes droites |
| Filler final | Pre-drop / stun | Blight : pre-drop (coût en tokens). Casseur gratuit : le filler vaut un stun ; sans stun possible, le laisser pour un allié |

> **Erreur typique** : viser la ressource la plus « forte » (main) à travers une zone morte au lieu de la plus **atteignable** (B) ; greeder une palette contre un tueur qui la casse gratuitement ; appliquer contre Blight le counterplay d'avant 9.6.0.

Détail : `kb/research/batch7_tiles.md` §6.6.

---

## 4.8 Exercices [Intermédiaire → Avancé]

**Exercice 1 — « Annonce H3 »** [HEURISTIQUE]

- **Objectif** : avoir toujours une destination et un plan B.
- **Méthode** : à l'entrée de chaque tile, annoncer (à voix haute ou mentalement) : « sortie : [déclencheur] ; suivante : [tile] à ~[D] m ; plan B : [tile] ».
- **Mesures** : % de transitions annoncées ; nombre de transitions vers une dead zone ; part des départs faits pendant une animation du tueur (casse, stun, vault, coup manqué). Cette dernière se **note** mais n'est pas un objectif : un départ anticipé avec assez d'écart vaut autant, et un départ toujours calé sur la casse devient prévisible.
- **Réussite** (seuil non calibré) : ≥ 90 % de transitions annoncées sur 10 parties.

**Exercice 2 — Chronométrer tes tiles** (partie personnalisée avec un ami tueur) : 10 cycles de shack, de jungle gym LW et SW, de L-T et de filler, contre un 4,6 puis un 4,4. Note le temps d'un cycle et l'avance minimale qui reste sûre. Ces mesures remplacent les distances « inventées » des exemples par les tiennes (lacune connue : aucun temps de cycle par tile n'est documenté).

**Exercice 3 — Pre-run** : pendant tes 20 premières secondes de partie, nomme chaque maze tile que tu vois (itération, palette présente ou non, murs cassables ouverts). Après la partie, vérifie si ta première chase est passée par une tile que tu avais identifiée. Objectif : que ta **première** chase commence toujours avec une destination connue.

**Exercice 4 — Test en temps** : voir 4.2.2 (fast vs medium vault sur la même fenêtre).

**Où ces exercices s'insèrent dans le programme** (ch. 14) [HEURISTIQUE] :

| Exercice | Drill du catalogue 14.4 | Niveau | Arbre et erreurs (ch. 13) |
|---|---|---|---|
| 1 — Annonce H3 | DR-13 (route planning) | 4 puis 8 | Arbre 2 — Quitter la tile (13.9) ; E-D03, E-A01, E-I07 |
| 2 — Chronométrer tes tiles | DR-03 (shack), DR-04 (jungle gym) | 3 | Arbre 1 — Palette (13.8) ; E-I01, E-I12 |
| 3 — Pre-run | DC-06 (premier contact) | 8 | E-D03 |
| 4 — Test en temps | DR-02 (fast vault) | 1-2 | E-D05 |
| Matrice 4.5 (un archétype par session) | DR-15 (un tueur par session) | 5 | E-A03 |

**CAS D'ÉCHEC du travail de tiles** : connaître les fiches 4.4 par cœur mais continuer à mourir **entre** les tiles. Le symptôme se lit dans la revue (ch. 14.5 : M-07 morts en dead zone, M-15 départs sur événement) : si le temps passé sur chaque tile monte sans que la durée totale de chase (M-01) monte, le problème est la transition (4.6), pas la loop.

---

## 4.9 Ce que l'ancien guide disait de faux ou d'imprécis

| L'ancien guide | Verdict | Correction |
|---|---|---|
| Certaines loops sont « infinies » | **Faux** | Blocage de fenêtre (3 vaults, 30 s, rechute), palettes finies, Bloodlust (4.1.2) |
| God / safe / pseudo-safe / unsafe = niveaux de tiles | Imprécis | Catégories **relatives** au tueur et à l'état de chase (4.3) |
| « Au 3e vault la fenêtre se bloque » | Imprécis | Le 3e est permis, blocage **après**, pour toi seul, 30 s |
| « Deux tours de fenêtre avant la palette » | Trop absolu | Dépend du trajet du tueur, de la santé, du pouvoir |
| « Serpenter dans le sens horaire » | Faux comme règle | Orientation tirée au hasard ; le sens dépend du tueur |
| Debris pile gym ≠ Trash pile gym | **Faux** | Une seule tile |
| Exclusivités de tiles par royaume | Probablement périmé | Pool commun depuis 9.2.0 (conflit non résolu) |
| « Une god pallet se garde » | Trop absolu | 4.4.13 |
| Car piles d'Autohaven « hauts murs » | Imprécis | Murs de maze d'Autohaven « medium » |
| Coal Tower « se joue comme un shack » | Imprécis | C'est un main à 2 niveaux |
| Bus « se boucle en longueur » | Imprécis | 2 variantes, un vault toujours bloqué, fenêtre arrière = drop-off |
| « Ne jamais partir vers une dead zone » | Imprécis | Dead zone relative à l'écart (4.3.1) |
| Good Guy, Mastermind (et Knight) cassent instantanément | **Faux** (errata) | 4.5.2 |
| WOT « rend une palette réutilisable » | **Faux dans l'effet** | La palette revient levée **et bloquée 60 s** : outil de transition |

---

## 4.10 Incertitudes à garder en tête

- **Durée d'abaissement d'une palette** : inconnue. Toutes les conditions « safe » de palette en dépendent.
- **Portée utile de la fente** : ~2-2,5 m, non tranchée. Toutes les tables CALC en dépendent.
- **Pool commun 9.2.0 vs exclusivités du wiki** : non résolu.
- **Chien du Houndmaster et palettes baissées** : non résolu (ne pas compter dessus).
- **Nemesis MR1** et palettes ; **The First** sans l'add-on Shattered Wrist Rocket ; **Bloodlust** après stun ou casse de mur ; remise à zéro du compteur de fenêtre entre deux poursuites ; vaults medium / slow dans le compteur : non documentés.
- Origine du critère d'espacement 14/16/18/20 m ; nombre de palettes par carte après 9.3.2 ; portée du son de casse.
- Hiérarchies « LW > SW », « opened > closed », « T > L » : aucune source experte écrite et datée.
- Tiles des cartes intérieures (RPD, Midwich, Lampkin Lane…) : non traitées ici.

---

## Sources du chapitre

- `kb/research/batch7_tiles.md` (lot 7, audité) et `kb/audit/pass14_lot7_tiles.md` (40 corrections, dont condition de loop en temps, Blight, Lich, WOT)
- `kb/ledgers/AUDIT_PHASE0_ERRATA.md` (casseurs de palettes : Good Guy, Mastermind, Lich, Knight, liste complétée)
- `kb/research/batch6_chase_tech.md` et chapitre 3 (vitesses, fente, gains en mètres) ; `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md` §2.2-3 (matrice v1)
- Notes officielles BHVR : 9.2.0 (`kb/sources/patches/official_523.txt`), 9.3.0 (529), 9.3.2 (530), 9.5.0 (538), 9.6.0 (544), 10.0.1 (551), 10.1.1 (557) ; PTB 10.2.0 (559) seulement pour les valeurs « was »
- Pages wiki.gg (consultées le 27/09/2026) : Windows, Pallets, Maze Tiles, Killer Shack, Breakable Walls, Structures (et pages liées), Chase, Status HUD/Bloodlust, The Lich ; pages tueurs archivées `kb/sources/wiki_killers/` (Krasue, Good Guy, Animatronic) ; `kb/sources/wiki_perks_digest.md`
