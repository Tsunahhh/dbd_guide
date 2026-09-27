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

Les loops des cartes **intérieures** (RPD, Midwich, Treatment Theatre, Underground Complex, Lampkin Lane, Badham), qui n'ont pas de maze tiles, ne sont **pas** couvertes par ce chapitre (pages de cartes non lues) : voir le chapitre des cartes.

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

Les catégories tombent d'un cran (ou plus) dès que le tueur a un outil sur la porte : **aucune tile n'est god** contre une Nurse, un Blight, un Hillbilly bien équipé, etc. [AVIS D'EXPERT]. La matrice 4.5 donne le sens du déplacement par archétype. Réflexe : **« god contre qui ? »**.

> **Erreur fréquente** : apprendre « la palette X est god » et la jouer pareil contre tous les tueurs. Contre un Demogorgon, un Oni en Fury ou une Lich, la même palette ne vaut pas la même chose (4.5.2).

Détail : `kb/research/batch7_tiles.md` §3.

---
