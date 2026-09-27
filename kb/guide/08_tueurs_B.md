# 8. Les tueurs (2/2) : tueurs 23 à 44

Ce chapitre prolonge le chapitre 7 : même format de fiche, pour les tueurs 23 (The Trickster) à 44 (The Judgment). La typologie transversale (archétypes, principes communs de counterplay, identification avant le reveal) est au chapitre 7 : on ne la répète pas ici.

**Référence** : LIVE **10.1.2a (17/09/2026)**. Toute valeur du PTB 10.2.0 est signalée « PTB 10.2.0 — non LIVE ». Les valeurs propres au mode 2v8 ne sont jamais utilisées comme valeurs 1v4.

**Comment lire une fiche**

- **Données LIVE** : tableau des chiffres utiles au survivant, chacun avec sa confiance : **(VP)** note officielle BHVR, **(VM)** page wiki complète + note officielle concordantes, **(SS)** page wiki complète seule, **(INC)** incertain.
- **Identification** : comment le reconnaître avant et après le reveal.
- **Ce qu'il cherche** : la situation que son pouvoir veut créer.
- **Tiles** : structures favorables / défavorables au survivant.
- **Counterplay par couche** : mécanique (la seconde près de lui), positionnel (où se placer), macro (gens, soins, ressources), équipe (avec la distinction **SoloQ / SWF** : tout ce qui suppose une répartition de rôles demande le vocal).
- **Erreurs classiques** et **cas d'échec** : où le réflexe habituel coûte cher.
- **Add-ons qui changent la décision** : seulement des add-ons réels, lus sur la page wiki LIVE, sous la forme « → le survivant fait X au lieu de Y ».
- Étiquettes : **[FACT]** mécanique lue sur la page wiki ou la note officielle ; **[HEURISTIQUE]** raisonnement de jeu tiré de la mécanique (option par défaut, à varier si le tueur l'anticipe) ; **[SITUATIONNEL]** ; **[HYPOTHÈSE]** ; **[INCERTAIN]**. Aucun guide d'expert n'a été lu pour ces fiches : il n'y a donc pas d'étiquette [AVIS D'EXPERT] dans ce chapitre.

Repères chiffrés utilisés partout : survivant **4,0 m/s** en course ; tueur à 115 % = 4,6 m/s (il reprend 0,6 m/s, soit 10 m en ≈ 16,7 s) ; tueur à 110 % = 4,4 m/s (0,4 m/s, 10 m en 25 s) ; 1 générateur solo = **90 s** ; phase de crochet = 70 s ; casse de palette normale ≈ 2,34 s (audit phase 0).

> **À retenir** : le pré-drop n'est **pas** une règle universelle. Il se justifie quand le pouvoir punit l'attente (Nemesis MR2+, Lich avec Mage Hand prêt, Mastermind avec Lab Photo…) et se paie d'une palette. Contre un tueur qui ralentit exprès pour l'obtenir, alterner avec un drop normal ou un départ sans drop (détail : `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md` §2.2).

## 8.0 Tableau récapitulatif (tueurs 23 à 44)

| # | Tueur | Vitesse | TR | Taille | Casse de palette par le pouvoir (1v4) | Menace principale |
|---|---|---|---|---|---|---|
| 23 | Trickster | 4,4 m/s (VM) | 24 m, 44 m au rang S (VM) | Moyenne | Non | Lames à distance, Laceration, rang S / Main Event |
| 24 | Nemesis | 4,6 m/s (SS) | 32 m (SS) | Grande | **Oui dès MR2** (tentacule, à distance) (VM) | Tentacule 5 / 6,5 m, zombies |
| 25 | Cenobite | 4,6 m/s (SS) | 32 m (SS) | Grande | Non décrite | Chaîne pilotée 24 m, boîte / Chain Hunt |
| 26 | Artist | 4,6 m/s (SS) | 32 m (SS) | Moyenne | Non | Swarms qui traversent les murs |
| 27 | Onryō | 4,6 m/s (SS) | 24 m + berceuse 24 m (SS) | Petite | Non | Furtivité totale à > 24 m, mori par Condemned |
| 28 | Dredge | 4,6 m/s (SS) | 32 m (SS) | Grande | Non | Téléportation par casiers, Nightfall |
| 29 | Mastermind | 4,6 m/s (SS) | **40 m** (SS) | Moyenne | **Non** : Virulent Bound **franchit** la palette ; casse seulement avec **Lab Photo** (VM) | Bonds, infection critique |
| 30 | Knight | 4,6 m/s (SS) | 32 m (SS) | Moyenne | Par **ordre de garde** : **1,8 s** (Carnifex) ou **5 s** (Assassin, Jailer), pas instantané (SS) | Gardes, sandwich garde + Knight |
| 31 | Skull Merchant | 4,6 m/s (SS) | 24 m (SS) | Moyenne | Non | Drones, Lock-On, Undetectable au rappel |
| 32 | Singularity | 4,6 m/s (SS) | 32 m (SS) | Moyenne | **Oui** : téléportation à travers une palette abaissée, ou palette jetée sur lui en Overclock (+ Overheat) (SS) | Téléportation sur survivant Slipstreamed |
| 33 | Xenomorph | 4,6 m/s (SS) | 32 m, 24 m en Crawler (SS) | Moyenne | Non | Queue 4,8 m, tunnels |
| 34 | Good Guy | 4,4 m/s (SS) | 32 m (SS) | Petite | **Non** en 1v4 ; seulement avec l'add-on **Hard Hat** (VM) | Dash 8 m/s, Scamper, Hidey-Ho sans TR |
| 35 | Unknown | 4,6 m/s (SS) | 32 m (SS) | Moyenne | Non | UVX en deux temps (Weakened puis blessure) |
| 36 | Lich | 4,6 m/s (SS) | 32 m (SS) | Moyenne | **Non** en base (Mage Hand **relève** la palette) ; **Vorpal Sword** : casse en **4 s** (VM) | Mage Hand, Fly, Flight of the Damned |
| 37 | Dark Lord | 4,6 m/s ; 6,5 m/s en chauve-souris (SS) | 32 m ; berceuse 48 m en chauve-souris (SS) | Grande | **Oui** : Pounce du loup sur palette abaissée (SS) | Hellfire, loup, téléportation de chauve-souris |
| 38 | Houndmaster | 4,6 m/s (SS) | 32 m (SS) | Moyenne | Non (le chien **vaulte** fenêtres et palettes tombées) (VM) | Chien en ligne droite, prise, Houndsense |
| 39 | Ghoul | 4,6 m/s (SS) | **40 m** (SS) | Moyenne | Non en base ; **Iridescent Eye Patch** (3e bond en Enragé) (VM) | Bonds de 14 m, Grab-Attack, Deep Wound |
| 40 | Animatronic | 4,4 m/s hache en main, 4,6 m/s sans (SS) | 24 m (SS) | Moyenne | Non | Hache (Broken + Grab Axe), portes, Undetectable 20 s |
| 41 | Krasue | 4,6 m/s (corps), 4,8 m/s (tête) (VM) | 32 m / 40 m (VM) | Moyenne | Non : la tête **vaulte** les palettes (SS) | Leech, glandes, fouet, tête sans Bloodlust |
| 42 | First | 4,4 m/s ; 8 m/s dans l'Upside Down (VM) | 32 m (VM) | Moyenne | Seulement avec **Shattered Wrist Rocket** (Undergate) (SS) ; liane : non documentée (INC) | Tokens puis Worldbreaker, Mind Break |
| 43 | Slasher | 4,4 m/s ; 8,0 m/s en Omnipresent Evil (VM) | 32 m (VM) | Moyenne | **Oui** : Jump Scare = special-break ou special-vault sur la cible (VP) | Réapparition sur palette / fenêtre, pics, Finisher |
| 44 | Judgment | 4,4 m/s (VM) | 32 m (VM) | Grande | Non en base ; **Superheated Glass** en Zealous (SS) | Divine Light, Heresy, Exile (mort à 2 états) |

> **Erreur fréquente** (corrigée par l'errata de l'audit phase 0) : plusieurs listes de « casse de palette instantanée par pouvoir » sont fausses. **Good Guy** : en 1v4, le Scamper passe **sous** la palette en 1 s et ne la casse qu'avec **Hard Hat** (la casse de base est une Innate Skill **2v8**, 9.4.2). **Lich** : Mage Hand **relève** la palette ; avec **Vorpal Sword**, il la casse en **4 s**, pas instantanément. **Mastermind** : Virulent Bound **franchit** la palette sans la casser ; casse seulement avec **Lab Photo**. **Knight** : les gardes cassent sur ordre en **1,8 s ou 5 s** ; depuis **10.1.1**, une palette baissée tôt force le garde à la contourner (abandon si le détour dépasse 48 m).

> **Note avancée** : l'errata de l'audit ajoute The First à la liste des casseurs « par pouvoir ». La page wiki Pallets conditionne cette casse à l'add-on **Shattered Wrist Rocket** (Undergate). Ce chapitre suit la page : sans cet add-on, aucune casse par le pouvoir du First n'est documentée **[INCERTAIN]**.

## 23. The Trickster (Ji-Woon Hak) [Intermédiaire]

*Archétype : ranged (lames) + usure (Laceration). Version LIVE : rework 9.5.0, ajustements 9.5.1 et 9.5.2 ; aucun changement de pouvoir ensuite ni au PTB 10.2.0.*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,4 m/s ; TR 24 m (44 m au rang S) ; moyenne | VM / SS |
| Berceuse | 44 m ; **inaudible à < 8 m** ; coupée au rang S | SS |
| Lames | 36 ; ≈ 3 lames/s ; 55 m/s (projectiles, pas du hitscan) ; portée 128 m | VM |
| Vitesse en lançant | 3,86 m/s, puis 3,53 m/s après 5 lames, 3,16 m/s après 10 | VM |
| Laceration | 6 charges = 1 état de santé ; une attaque de base retire 3 charges ; décroissance −1 / 4,4 s après **16 s** sans touche | VM |
| Rang S | notification à tous, Killer Instinct ≤ 44 m pendant 4,4 s, **Laceration figée**, dure **66 s** (en pause pendant Main Event) | VM |
| Main Event | 10 s, lames illimitées, cadence ×1,67 ; **interdit à < 20 m d'un survivant accroché** | VM |
| Recharge au casier | 3 s | SS |

**Identification** [FACT] : les jauges de Laceration apparaissent sur les portraits dès le chargement. Berceuse audible de loin mais silencieuse à moins de 8 m : une berceuse qui « disparaît » veut dire qu'il est **tout près**, pas qu'il est parti [HEURISTIQUE].

**Ce qu'il cherche** : les lignes droites et les zones ouvertes (une touche à > 16 m rapporte 2 points de style), et les vaults face à lui (une touche « dans un interstice » en rapporte 3) [FACT sur le barème ; lecture HEURISTIQUE].

**Tiles** [HEURISTIQUE] : favorables = murs hauts et pleins, boucles courtes où la LOS se coupe souvent, bâtiments intérieurs, dénivelés. Défavorables = tiles bas « see-through », longues fenêtres vues de loin, couloirs droits.

**Counterplay par couche**

- **Mécanique** : couper la LOS très souvent ; strafes latéraux larges plutôt que petits zigzags. Calcul : une courte volée ne te donne presque rien (+0,14 m/s sur toi) ; une volée de 10+ lames (≈ 3,3 s) te rend +0,84 m/s ; pendant Main Event (3,92 m/s), presque rien. **La vraie source de distance reste la LOS coupée.**
- **Fenêtres** : vaulter face à lui chargé en lames = touche à 3 points. Préférer casser la LOS sans vaulter, ou poser une palette un peu plus tôt [SITUATIONNEL]. Qu'une palette abaissée bloque les lames n'est écrit nulle part **[INCERTAIN]**.
- **Macro** : les 16 s sont le délai **avant** que la Laceration commence à baisser. Depuis 3 charges, il faut ≈ 29 s sans touche pour revenir à 0 ; depuis 5 charges, ≈ 38 s. Au rang S, **elle ne baisse pas du tout**. Se soigner n'est pas forcément prioritaire quand la jauge est haute [SITUATIONNEL].
- **Équipe** : au rang S, s'écarter les uns des autres. Il ne peut pas lancer Main Event à moins de 20 m de l'accroché : le vrai risque du sauvetage commence **après** l'unhook, quand les survivants se regroupent. « Jouer la montre » veut dire ne pas lui offrir de groupe ni de ligne ouverte, pas s'arrêter : 66 s d'arrêt de 3 réparateurs ≈ 2,2 gens solo perdus. SoloQ : la notification globale est le seul signal commun, s'écarter de soi-même.

**Erreurs classiques** [HEURISTIQUE] : traverser un champ avec 3+ charges de Laceration ; vaulter une fenêtre face à lui à distance moyenne ; se regrouper sur un gen quand le rang S tombe ; oublier sa jauge (1-2 lames suffisent) ; se croire tranquille parce que la berceuse s'est tue.

**Quand le counterplay habituel échoue** : rang S en endgame, portes alimentées → le « jouer la montre » ne marche plus, éviter les longues lignes vers la sortie. Sur map intérieure (LOS courtes), sa valeur chute : ne pas sur-jouer la prudence au prix des gens [HEURISTIQUE].

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Iridescent Photocard | Main Event 20 s ; à l'activation, toutes les auras pour lui, tous les gens bloqués 6 s | Au rang S, quitter le gen et casser la LOS au lieu de « finir le gen » |
| Death Throes Compilation | 75 % des lames rechargées à la fin du Main Event | Ne plus traiter la fin du Main Event comme une fenêtre sûre |
| Trick Blades | Les lames ricochent une fois | Se cacher derrière des murs perpendiculaires à sa LOS, pas obliques |
| Edge of Revival Album | Touches à > 20 m : Laceration doublée | Couper la LOS au lieu de fuir en ligne droite |
| Bloody Boa | Décroissance de Laceration −75 % | Traiter la jauge comme quasi permanente : se soigner ou jouer safe au lieu d'attendre |
| Waiting For You Watch | Aura révélée 10 s quand la Laceration retombe à 0 | Ne pas être près d'un gen ou d'un blessé au moment où la jauge se vide |
| Cut Thru U Single | Killer Instinct ≤ 32 m dès le rang A | S'attendre à être localisé avant le rang S |

> **À retenir** : contre le Trickster, la distance ne sauve pas, la LOS oui. Surveille ta jauge comme un état de santé, et disperse l'équipe dès la notification de rang S.

Détail : `kb/research/batch4_killers_g4.md` §23.

## 24. The Nemesis (T-Type) [Intermédiaire]

*Archétype : anti-loop (tentacule) + zone (zombies). Pouvoir 1v4 inchangé depuis 5.2.0. Les 4 zombies et leur vitesse +35 % de 9.4.2 sont du 2v8 uniquement.*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,6 m/s ; 32 m ; grande | SS |
| Tentacle Strike | charge 0,35 s ; portée **5 m** (MR1/MR2), **6,5 m** (MR3) ; vitesse en charge 3,8 / 4,0 m/s (MR3) ; cooldown 2,25 s ; annulation 1,5 s | SS |
| Contamination | 1re touche : Contaminated **sans dégât** + Hindered −20 % 2 s ; contaminé touché : perd un état de santé | SS |
| Mutation | MR2 à 5 points (casse palettes baissées et murs cassables) ; MR3 à 14-15 points (le wiki se contredit) | SS / INC |
| Casse + touche | Une frappe ne peut pas casser une palette **et** toucher un survivant ; Nemesis classé « special-break » en 9.5.0 | SS / VP |
| Zombies (1v4) | 2 ; 1 m/s ; détection 14 m dans ±95°, audio 6 m, attirés par les Loud Noise ; détruits par stun de palette (retour 45 s) ; lampe ou pétards : immobiles 15 s | SS |
| Vaccins | 4 caisses, 1 vaccin chacune ; ouverture 4 s, injection 3 s ; Killer Instinct 3 s ; **ne soigne pas** | SS |

**Identification** : TR 32 m, grande silhouette, zombies sur la map = identification quasi immédiate. Murs ou palettes détruits à distance = il est au moins MR2 [FACT].

**Ce qu'il cherche** : un survivant contaminé à 5-6,5 m derrière une palette basse ou une fenêtre ; les boucles courtes [HEURISTIQUE].

**Tiles** : favorables = tiles longues où l'on garde plus que la portée du tentacule, murs hauts qui coupent sa trajectoire. Défavorables = petites tiles « palette + mur bas », jungle gyms courts (couverts en MR3) [HEURISTIQUE].

**Counterplay par couche**

- **Mécanique** : strafe latéral **au son** de la charge (pas à l'animation seule, pour ne pas se faire feinter) ; ne pas rester dans son axe à 4-6,5 m devant lui. En charge, il avance à 3,8 / 4,0 m/s : **il ne te rattrape pas en tenant la charge**, il te rattrape entre deux charges.
- **Palettes** [SITUATIONNEL] : en **MR1**, le tentacule ne casse rien, la palette est une vraie ressource. Dès **MR2**, pré-drop puis départ vers la tile suivante plutôt que « jouer autour ». Le détail qui compte : la frappe qui casse la palette ne peut pas te toucher, puis le tentacule repart en cooldown 2,25 s → c'est ton délai pour gagner la tile suivante.
- **Positionnel** : contaminé, chaque touche coûte un état : jouer les tiles longues.
- **Macro** : 4 vaccins pour toute la partie : les prendre quand il est loin (Killer Instinct 3 s). Réparer **derrière** un zombie ou hors de sa trajectoire ; un skill check raté l'attire.
- **Équipe** : n'utiliser une palette clé pour détruire un zombie (45 s) que s'il bloque vraiment un gen ou une sortie. Lampe et pétards l'immobilisent 15 s sans dépenser de palette.

**Erreurs classiques** [HEURISTIQUE] : se croire safe à 4-5 m (6,5 m en MR3) ; tenir une palette debout contre un MR2+ en attendant le stun ; réparer face à un zombie.

**Quand le counterplay habituel échoue** : en MR3, la boucle sur petite tile échoue presque toujours → enchaîner les tiles, utiliser la hauteur et la LOS. Un zombie peut fermer l'unique sortie d'une tile : vérifier sa position avant d'engager [HEURISTIQUE].

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Marvin's Blood / T-Virus Sample | Mutation plus rapide (+0,5 point par touche / +1 par zombie détruit) | Considérer MR2/MR3 atteints plus tôt ; pré-drop plus tôt |
| Shattered S.T.A.R.S. Badge | Zombies +1,5 m/s pendant 60 s après chaque gen | S'éloigner des zombies juste après un gen |
| Depleted Ink Ribbon | Zombies plus rapides, et réapparition **dans la zone de sortie** portes alimentées | Vérifier la zone de sortie avant d'y courir |
| Iridescent Umbrella Badge | Exposed 60 s après un vaccin | Vacciner loin de lui et hors chase |
| Ne-α Parasite | Oblivious 60 s après contamination | Surveiller visuellement au lieu de se fier au TR |
| Licker Tongue | Hindered porté à 3 s | Éviter la première touche près d'un mur |

**Perk à connaître** : **Eruption** LIVE = **−10 %** (la valeur −5 % était le PTB 9.2.0, reporté) (VM).

Détail : `kb/research/batch4_killers_g4.md` §24.

## 25. The Cenobite (Pinhead) [Avancé]

*Archétype : ranged (chaîne pilotée) + zone (Lament Configuration). Retiré des boutiques le 4 mars 2025, toujours jouable par ses possesseurs. Ses perks sont générales depuis 9.0.0 et renommées : No Holds Barred (ex-Deadlock), Hex: Fortune's Fool (ex-Plaything), Scourge Hook: Weeping Wounds (ex-Gift of Pain) (VP).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,6 m/s ; 32 m ; grande | SS |
| Chaîne pilotée | Gateway jusqu'à 16 m ; 10 → 40 m/s ; **24 m** de trajet max ; cooldown 5 s | SS |
| Survivant enchaîné | 3 chaînes ; plus de course : 1,13 / 1,695 / 2,26 m/s avec 3 / 2 / 1 chaîne(s) ; 1 s par chaîne arrachée ; **portes de sortie bloquées** tant qu'il est enchaîné + 5 s | SS |
| Chaîne et décor | Casse au contact du décor, **mais une chaîne de remplacement retente** ; cassée par un allié = pas remplacée ; rupture au-delà de 18 m | SS |
| Lament Configuration | Aura visible ; Chain Hunt au bout de **90 s** ; résolution 6 s ; porteur Oblivious | SS |
| Téléportation sur la boîte | Charge 3,25 s, arrivée à 10-12 m ; interrompt la résolution | SS |
| Chain Hunt | Chaînes toutes les 9-12 s près de chaque survivant ; s'il ramasse la boîte lui-même : **3 chaînes sur tous** + cri | SS |

**Identification** [FACT] : l'aura de la boîte dès le début de partie est un indice sans ambiguïté. Portail, bruit de chaîne.

**Ce qu'il cherche** : un survivant à découvert entre deux tiles, sur une trajectoire libre de moins de 24 m [HEURISTIQUE]. Le seed affirmait « chaîne = vault bloqué » : absent de la page **[INCERTAIN]** ; ce qui est sûr, c'est la perte de la course.

**Tiles** [HEURISTIQUE] : favorables = décor dense, tiles à murs hauts qui bloquent la trajectoire de départ. Défavorables = open, longues lignes droites. Le décor gagne du temps (la chaîne casse) mais ne suffit pas seul (remplacement).

**Counterplay par couche**

- **Mécanique** : casser la LOS vers le portail ; arracher les chaînes (1 s chacune) dès qu'il ne peut pas punir. Se faire lier en arrivant sur une tile = coup quasi gratuit : vaulter tôt ou changer de tile avant qu'il ait la trajectoire.
- **Positionnel** : se déplacer de tile en tile en longeant le décor.
- **Macro** : **un seul** survivant gère la boîte, loin du tueur, et la résout avant les 90 s. Coût : le porteur est Oblivious et ne répare pas. Ne jamais la laisser traîner près de lui (3 chaînes sur tous s'il la ramasse).
- **Équipe** : SWF = désigner le porteur au vocal. SoloQ = si un coéquipier va vers la boîte ou la porte, ne pas y aller aussi ; si personne ne la prend et qu'elle est près de toi, la prendre plutôt qu'attendre le Chain Hunt.
- **Endgame** : arracher les chaînes **avant** d'arriver à l'interrupteur (portes bloquées enchaîné + 5 s) [FACT].

**Erreurs classiques** [HEURISTIQUE] : traverser un champ à 10-24 m du portail ; ignorer la boîte jusqu'au Chain Hunt ; deux survivants qui se battent pour la boîte ; résoudre la boîte à côté d'un gen qu'il patrouille.

**Quand le counterplay habituel échoue** : avec des add-ons de portée, « coller le décor » ne suffit plus → préférer les murs hauts aux objets bas [HEURISTIQUE].

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Frank's Heart / Larry's Blood | Gateway à 24 m / chaîne 28 m | Changer de tile plus tôt ; 16-24 m ne sont plus sûrs |
| Engineer's Fang | La chaîne **blesse** un survivant sain | Traiter chaque tir comme un coup : couper la LOS |
| Original Pain | Aura 8 s après avoir arraché une chaîne | Arracher derrière un obstacle ou vers la tile suivante |
| Slice of Frank | Porteur de la boîte Exhausted | Résoudre loin de lui, sans compter sur une perk d'exhaustion |
| Iridescent Lament Configuration | Boîte invisible à > 24 m hors Chain Hunt | Se répartir pour la trouver au lieu d'attendre de la voir |
| Chatterer's Tooth | Il voit l'aura de la boîte ; ramassage = Undetectable 25 s (qui ramasse : texte ambigu) [INCERTAIN] | Ne pas laisser la boîte près de lui ; s'attendre à une approche sans TR |

Détail : `kb/research/batch4_killers_g4.md` §25.

## 26. The Artist (Carmina Mora) [Avancé]

*Archétype : ranged à travers le décor + info. Aucun changement de pouvoir LIVE depuis 6.7.0 ; les changements d'add-ons du PTB 9.0.0 ont été annulés (VP).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,6 m/s ; 32 m ; moyenne | SS |
| Dire Crows | 3 ; charge 1 s ; posés à 2,5 m ; restent ≤ 10 s ; son audible à ≤ 12 m ; toucher un corbeau posé = Swarmed | SS |
| Lancement | 7,5 m de trajectoire, puis (ou dès qu'un obstacle est heurté) **Swarm qui traverse tous les obstacles** à 35 m/s | SS |
| Aura des Swarms | **Visible de tous les joueurs** | SS |
| Touche | Swarmed (aura pour elle) ; déjà Swarmed = **perte d'un état de santé** | SS |
| Killer Instinct | 3 s quand un Swarm passe près de toi, **sauf si tu es accroupi** | SS |
| Retrait | 8 s (Repel), ou instantané en entrant dans un casier | SS |
| Recharge | 5 / 9 / 12 s après 1 / 2 / 3 corbeaux lancés | SS |

**Identification** : corbeaux posés, croassement à ≤ 12 m, auras de Swarms qui traversent la map [FACT].

**Ce qu'elle cherche** : un survivant déjà Swarmed (la 2e touche blesse à travers un mur), des sorties de tile prévisibles [HEURISTIQUE].

**Tiles** : **les murs ne protègent pas** comme contre un ranged classique : seule la phase de 7,5 m est arrêtée (et transformée en Swarm) par le décor [FACT]. Favorables = tiles où l'on change souvent de direction, bâtiments à plusieurs sorties. Défavorables = lignes droites, couloirs, tiles à sortie unique [HEURISTIQUE].

**Counterplay par couche**

- **Mécanique** : suivre l'aura du Swarm et faire un pas latéral net ; ne pas traverser un corbeau posé. Hors chase, s'accroupir au passage d'un Swarm évite le Killer Instinct [FACT].
- **Si Swarmed** : retirer l'essaim (8 s) dès qu'elle n'est pas en chase proche, ou entrer dans un casier (instantané). Arbitrage : 8 s ≈ 9 % d'un gen solo ; si elle est loin sans corbeau prêt, finir un gen presque fini peut valoir plus [SITUATIONNEL].
- **Fenêtre de pression** : après une volée de 3 corbeaux, elle n'a plus rien pendant ≈ 12 s : c'est le moment de traverser l'open.
- **Macro / équipe** : ne pas se regrouper en ligne ; ne pas approcher un coéquipier Swarmed en chase.

**Erreurs classiques** [HEURISTIQUE] : se croire à l'abri derrière un mur ; réparer Swarmed quand elle a un corbeau prêt ; courir tout droit vers la tile suivante ; courir debout près d'un Swarm (Killer Instinct gratuit).

**Quand le counterplay habituel échoue** : le réflexe « LOS » contre les ranged ne marche pas. La protection vient du changement de direction, de la lecture des auras et de l'absence de statut Swarmed → retirer l'essaim passe plus haut dans les priorités que contre un autre tueur [HEURISTIQUE].

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Charcoal Stick | Auras des corbeaux en vol invisibles (0,5 s à l'invocation) | Se fier au son (12 m) et aux corbeaux posés pour strafer |
| Severed Hands | Tout survivant à ≤ 3 m d'un Swarmed devient Swarmed | Plus de gen ni de soin à deux quand l'un est Swarmed |
| Garden of Rot | Exposed 4 s après le retrait | Retirer l'essaim uniquement loin d'elle |
| Thorny Nest | Haemorrhage + Mangled 70 s après un dégât de corbeau | Reporter le soin long ou utiliser une trousse |
| O Grief, O Lover | Exhausted tant que Swarmed | Retirer l'essaim avant d'entrer en chase |
| Iridescent Feather | Undetectable quand elle n'a plus de corbeau | Après une volée, s'attendre à une approche sans TR |
| Ink Egg | +1 corbeau | Compter 4 corbeaux par volée |

> **Erreur fréquente** : il n'existe **aucun** add-on de « vitesse de corbeau » (affirmation du seed, fausse).

Détail : `kb/research/batch4_killers_g4.md` §26.

