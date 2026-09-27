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

## 27. The Onryō (Sadako Yamamura) [Intermédiaire]

*Archétype : furtif + mobilité (TV) + condamnation (mori). Dernier rework 7.5.0 / 7.5.1. Problème connu signalé par BHVR en 10.1.0 : elle peut parfois être vue à plus de 24 m en étant démanifestée (VP).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,6 m/s ; TR 24 m + berceuse 24 m ; **petite** | SS |
| Démanifestée | Undetectable ; **invisible à > 24 m**, clignote à ≤ 24 m ; ne peut ni attaquer ni **être stun par une palette** | SS |
| (Dé)manifestation | 1,5 s de charge, à 4,0 m/s | SS |
| Projection | Vers n'importe quelle TV allumée : **+1 Condemned à tous les survivants à ≤ 16 m de n'importe quelle TV allumée** ; 6,9 m/s pendant 2 s après | SS |
| TV | Allumées 30 s après le début ; éteintes **70 s** quand un survivant retire ou insère une cassette ; 45 s après une projection | SS |
| Condemned | 7 stacks = mori possible **à terre** ; le crochet verrouille jusqu'à 3 stacks (1er) puis 6 (2e) | SS |
| Cassettes | Insérée dans la TV indiquée : **−3 stacks** ; la porter ne fait **plus** monter le Condemned | SS |

**Identification** : pas de TR ni de silhouette à > 24 m, clignotement à ≤ 24 m, TV qui s'allument, Condemned qui monte d'un coup chez tout le monde (projection) [FACT].

**Ce qu'elle cherche** : un survivant qui ne regarde jamais derrière lui ; une palette jetée alors qu'elle est démanifestée (pas de stun possible) ; les survivants à 5-6 stacks [HEURISTIQUE].

**Tiles** : la palette redevient normale quand elle est **manifestée** ; zones sombres et encombrées, et abords (≤ 16 m) d'une TV allumée = défavorables [HEURISTIQUE fondée sur FACT].

**Counterplay par couche**

- **Mécanique** : checks réguliers derrière soi pendant les gens, surtout si une TV à ≤ 16 m est allumée ou si ton Condemned vient de monter. Rappel : à > 24 m, elle est invisible, un check ne voit que les 24 m. Checker **entre deux skill checks** (un raté coûte −10 % et 3 s).
- **Palettes** : ne jamais compter sur un stun tant qu'elle est démanifestée. Pendant ses 1,5 s de manifestation derrière toi, une palette baissée peut stun [SITUATIONNEL].
- **Positionnel** : ne pas réparer à ≤ 16 m d'une TV allumée.
- **Macro** : retirer les cassettes des TV proches des gens (TV éteinte 70 s) ; porter la cassette à la TV indiquée pour −3 stacks.
- **Équipe** : partager le travail des cassettes. Après 2 crochets, 6 stacks verrouillés = un seul stack de marge.

**Erreurs classiques** [HEURISTIQUE] : réparer près d'une TV allumée ou dos à la zone d'arrivée ; oublier le Condemned en endgame (mori direct à terre) ; palette sur une Onryō démanifestée.

**Quand le counterplay habituel échoue** : « pas de TR = pas de tueur » échoue totalement. Contre **Iridescent Videotape**, la gestion des TV perd sa valeur : les gens reprennent la priorité.

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Iridescent Videotape | Projection sans Condemned et sans extinction de TV | Faire les gens au lieu de gérer les TV |
| Tape Editing Deck | Tous commencent avec une cassette ; aura 6 s à l'insertion | Insérer quand elle est occupée ailleurs |
| Ring Drawing | Accrocher un porteur de cassette = +1 stack à tous les autres | Ne pas garder de cassette en chase |
| Distorted Photo | Survivants à ≤ 16 m qui la voient se manifester : cri + aura 4 s | S'éloigner dès qu'elle clignote au lieu de la regarder |
| Remote Control | Auras à ≤ 12 m d'une TV allumée 7 s après une projection | Éviter les abords des TV au lieu de s'y cacher |
| Yoichi's Fishing Net | Blindness dès 4 stacks | Surveiller visuellement à 4+ stacks |

**Perk à connaître** : **Call of Brine** LIVE = régression 130/140/150 % pendant **90 s** (was 70 s, 10.1.0) (VM).

Détail : `kb/research/batch4_killers_g4.md` §27.

## 28. The Dredge [Intermédiaire]

*Archétype : mobilité (casiers) + zone (Nightfall) + info. Buff 9.6.0 : 4,0 m/s pendant la charge de Gloaming (was 3,8) (VM).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,6 m/s ; 32 m ; grande | SS |
| Gloaming | Laisse un **Remnant** ; 3 jetons = 3 téléportations de casier en casier ; retour au Remnant s'il existe encore ; cooldown 10 s (4 s en Nightfall) | SS |
| Remnant | Disparaît après la 1re téléportation **ou si un survivant le touche** | SS |
| Casier | S'il se téléporte dans un casier **occupé**, il en ressort **en te portant** ; avertissement sonore après 8 s | SS |
| Verrous | 0,1 s à poser ; casier verrouillé **prioritaire** ; il en sort en 2,25 s **bruyamment** | SS |
| Nightfall | Jauge 300 ; **+6/s quand le Dredge est caché** (pas le survivant) ; +1/s par blessé (max +4) ; alerte à 85 % ; **dure 60 s** ; obscurité, Dredge Undetectable | SS |

**Identification** : grande silhouette, casiers qui claquent, Remnant laissé sur la map, jauge Nightfall et alerte à 85 % [FACT].

**Ce qu'il cherche** : des boucles près de casiers, un Remnant qui lui permet de couper la rotation, des chases pendant Nightfall [HEURISTIQUE].

**Tiles** [HEURISTIQUE] : favorables = tiles extérieures sans casier proche. Défavorables = bâtiments bourrés de casiers.

**Counterplay par couche**

- **Mécanique** : ne pas se placer entre le Remnant et lui ; si le Remnant est sur ta route et qu'il n'est pas tout près, **le toucher le supprime** [FACT].
- **Positionnel** : verrouiller les casiers près des gens actifs et des crochets. Un casier verrouillé attire sa téléportation mais l'oblige à sortir en 2,25 s bruyamment : c'est une **alarme**, pas un mur.
- **Macro** : **ne pas se cacher en casier**. Limiter le nombre de blessés simultanés (jusqu'à +4/s sur la jauge). Un casier qui « avertit » = il est dedans : ne pas l'ouvrir.
- **Équipe** : pendant Nightfall, rester près de tiles solides (SWF : annoncer les positions). Attendre la fin de Nightfall pour sauver n'est possible que si l'accroché vient d'entrer dans sa phase (60 s de nuit contre 70 s de phase) ; sinon, sauver par la route la plus couverte [SITUATIONNEL].

**Erreurs classiques** [HEURISTIQUE] : se cacher en casier ; ignorer l'alerte 85 % ; réparer à côté d'un casier non verrouillé ; rester blessés à plusieurs. Le seed disait « se cacher en casier remplit la jauge » : faux, c'est le Dredge caché qui la remplit.

**Quand le counterplay habituel échoue** : sur map intérieure pleine de casiers, verrouiller ne suffit pas → jouer les tiles extérieures ; Nightfall en endgame → se rapprocher des portes avant.

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Field Recorder | Partie en Nightfall au départ, Nightfall automatique au dernier gen, Exhausted au contact du Remnant | Finir le dernier gen sain et près des portes ; ne pas toucher le Remnant avec une perk d'exhaustion à garder |
| Broken Doll | Nightfall 80 s | Ne plus attendre la fin de la nuit pour sauver (80 s > 70 s) |
| Iridescent Wooden Plank | Exposed les 12 dernières secondes de Nightfall | Rester prudent jusqu'à la fin de la nuit |
| Boat Key | Verrous cassés quand les portes sont alimentées | Ne plus compter sur les verrous en endgame |
| Sacrificial Knife | En Nightfall, vaults bloqués 5 s à ≤ 16 m du casier dont il sort | Quitter la zone au lieu de viser la fenêtre proche |
| Tilling Blade | Blindness + Haemorrhage + Mangled 80 s si blessé en Nightfall | Éviter tout coup pendant la nuit |

**Perk à connaître** : **Dissolution** LIVE = n'importe quel dégât, **12/16/20 s** (le texte « attaque de base, 13/14/15 s » affiché par le wiki est le **PTB 10.2.0 — non LIVE**) (VP).

Détail : `kb/research/batch4_killers_g4.md` §28.

## 29. The Mastermind (Albert Wesker) [Avancé]

*Archétype : mobilité + anti-loop (bonds) + infection. Buff 9.6.0 (VM). La description du pouvoir sur le wiki n'est pas à jour : les valeurs LIVE sont celles de la note 9.6.0.*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,6 m/s ; **40 m** ; moyenne | SS |
| Virulent Bound | 2 jetons (recharge **5 s** chacun) ; charge 1,5 s à 3,68 m/s ; 2e bond dans une fenêtre de **2,5 s** ; ≈ 7 m puis ≈ 14 m | VM / SS |
| Collision | Survivant **en interaction** : coup direct ; sinon saisie puis projection ; dégât seulement si le survivant heurte un obstacle | SS |
| Palette / fenêtre | **Virulent Vault** : il **franchit** sans casser ; un survivant juste derrière est touché ; classé « special-vault » (9.5.0) | VM |
| Casse de palette | **Seulement avec l'add-on Lab Photo** (qui supprime le franchissement) | VM |
| Cooldowns | 1,5 s après un franchissement ; 2,7 s pour ceux qui étaient à 3 s | SS / VM |
| Uroboros | +20 par contact de bond ; +0,8/s ; **crochet = remise à 1** ; à 100 : Hindered −4 % et **prochain contact = double dégât** | SS |
| Sprays | 6 caisses, 2 usages ; 5 s ; Killer Instinct 4 s | SS |

**Identification** : TR 40 m, bruit de charge du bond, caisses de sprays, jauge Uroboros sur les portraits [FACT].

**Ce qu'il cherche** : couloirs et open (élan), fenêtres vaultées sans avance, survivants près d'un mur (dégât à la collision) ou en interaction (coup direct) [HEURISTIQUE fondée sur FACT].

**Tiles** : favorables = tiles serrées et coudées, étages ; défavorables = longues lignes, fenêtres isolées, champs [HEURISTIQUE]. **Palettes** : en base, la palette baissée **reste utilisable après son passage**. Le danger est d'être **juste derrière** elle dans l'axe du bond. Après un franchissement, 1,5 s de cooldown = fenêtre pour rejouer la palette dans l'autre sens [SITUATIONNEL].

**Counterplay par couche**

- **Mécanique** : au son de charge (1,5 s), demi-tour ou strafe serré ; forcer le bond contre un obstacle. Ne pas réagir au 1er bond comme s'il était l'attaque (le 2e suit dans les 2,5 s).
- **Positionnel** : en open, pas de mur ni de coéquipier juste derrière toi. Après un drop ou un vault, s'écarter latéralement.
- **Interactions** : ne pas réparer, soigner ou décrocher quand il a un bond prêt à portée (coup direct).
- **Macro** : l'infection critique arrive en ≈ 100 s de passif depuis la première infection : se désinfecter avant 100, spray quand il est loin (Killer Instinct 4 s). Un crochet remet l'infection à 1.
- **Équipe** : ne pas coller un coéquipier en chase (le survivant projeté qui le percute le blesse + Deep Wound).

**Erreurs classiques** [HEURISTIQUE] : courir en ligne droite entre deux tiles ; vaulter avec peu d'avance puis rester derrière ; réparer en infection critique ; **considérer la palette perdue alors qu'il l'a seulement franchie**.

**Quand le counterplay habituel échoue** : sur maps ouvertes, le tile-to-tile échoue souvent → préférer les zones denses même avec moins de palettes. Avec **Lab Photo**, retour au schéma « pré-drop + départ ».

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Lab Photo | Casse palettes et murs au bond ; ne franchit plus les palettes | Pré-drop et départ au lieu de rejouer la palette |
| Iridescent Uroboros Vial | Tous infectés au départ ; Exposed 30 s en infection critique | Se désinfecter bien avant 100, sprays tôt |
| Dark Sunglasses | Undetectable 20 s quand un survivant atteint l'infection critique | Surveiller les jauges des coéquipiers comme alerte « sans TR » |
| Loose Crank | +15 % pendant la fenêtre du 2e bond | Garder plus de distance après le 1er bond |
| Maiden Medallion / Uroboros Virus | Blindness 60 s / aura 4 s en infection critique | Se soigner avant 100 |
| Helicopter Stick / Bullhorn | Aura 8 s / Oblivious 30 s après un spray | Utiliser le spray loin de sa zone de réparation |

**Perk à connaître** : **Superior Anatomy** LIVE = son prochain vault de fenêtre plus rapide après ton fast vault à ≤ 12 m, cooldown 25 s ; le texte du wiki (30/35/40 %, 20 s) est le **PTB 10.2.0 — non LIVE**.

Détail : `kb/research/batch4_killers_g4.md` §29.

## 30. The Knight (Tarhos Kovács) [Avancé]

*Archétype : anti-loop (gardes) + zone (patrouilles). Buff 9.1.0 (tracé 38 m) ; **changement 10.1.1** sur les palettes contre les gardes (VM).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,6 m/s ; 32 m ; moyenne | SS |
| Tracé de patrouille | 15 m/s ; **38 m** max ; 10 s max ; orbe visible des survivants ; tracé long = Haste 5 % pour lui | VM |
| Ordre de garde | À ≤ 6 m d'une palette baissée, d'un mur cassable ou d'un gen entamé ; durée **1,8 s** (Carnifex) ou **5 s** (Assassin, Jailer) ; gen −5 % | SS |
| Détection | Vision 180° + LOS, **ou** Loud Noise ; le garde rejoint la position en 2,5 s, plante un **étendard**, puis chasse | SS |
| Carnifex | Chasse 4,1 m/s 12 s ; cooldown 20 s | SS |
| Assassin | Chasse **4,4 m/s** 12 s ; **Deep Wound** ; cooldown 30 s | SS |
| Jailer | Patrouille 4,1 m/s 24 s ; vision **16 m** ; chasse 24 s ; cooldown 25 s | SS |
| Fin de chasse | Toucher l'étendard (**Haste 50 % + Endurance 3 s**), **décrocher un autre survivant**, ou tenir jusqu'au bout ; minuteur **3× plus rapide** si le Knight est à ≤ 8 m de son garde | SS |
| Palette contre un garde (10.1.1) | Baissée quand le garde est à ≥ 3 m : il doit **contourner** ; détour > **48 m** = chasse abandonnée ; baissée sur lui (< 3 m) : il **passe à travers** | VM |

**Identification** : orbe de tracé, garde visible, étendard sur la map [FACT].

**Ce qu'il cherche** : le « sandwich » garde + Knight de part et d'autre d'une tile ; un ordre de garde sur ta palette baissée ou ton gen [HEURISTIQUE fondée sur FACT]. Un garde ne casse pas une palette « en patrouillant » : la casse passe toujours par un ordre.

**Tiles** : favorables = quitter une tile où un garde arrive pour une tile neuve ; bâtiments à plusieurs sorties. Défavorables = tile à palette unique (ordre de garde), culs-de-sac [HEURISTIQUE].

**Counterplay par couche**

- **Mécanique** : pendant une chasse de garde, viser l'étendard **tôt**, avant que le Knight arrive. S'il reste à ≤ 8 m de son garde, tenir le temps devient réaliste (minuteur ×3).
- **Palettes (10.1.1)** [SITUATIONNEL] : baisser **tôt** contre un garde (≥ 3 m), jamais au contact. Limite : la plupart des tiles se contournent en bien moins de 48 m ; l'abandon concerne surtout les longs murs et les bâtiments [HYPOTHÈSE]. Le Knight lui-même casse normalement.
- **Détection** : pas de Loud Noise (skill check raté, actions précipitées) près d'un garde en patrouille ; rester hors de sa vision (10 m, 16 m pour le Jailer).
- **Macro** : sortir de la zone de patrouille plutôt que finir la réparation ; contre l'Assassin, mender vite le Deep Wound.
- **Équipe** : **un unhook met fin à la chasse de garde de celui qui décroche** [FACT] : chassé près d'un crochet, décrocher te libère aussi (le Knight reste une menace).

**Erreurs classiques** [HEURISTIQUE] : rester sur une tile pendant qu'un garde arrive ; oublier l'étendard ; paniquer vers une zone morte ; baisser la palette au contact du garde.

**Quand le counterplay habituel échoue** : contre **Iridescent Company Banner**, les fenêtres ne sont plus fiables → palettes et changements de tile.

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Iridescent Company Banner | Fenêtres du tracé bloquées 25 s ; fenêtres vaultées par le chassé bloquées ; **portes bloquées pour le chassé** | Jouer palettes et changements de tile ; ne pas foncer aux portes pendant une chasse |
| Town Watch's Torch | Knight Undetectable pendant une chasse | S'attendre au Knight sans TR |
| Blacksmith's Hammer / Broken Hilt | Broken 60 s / Haemorrhage + Mangled 70 s si blessé par un garde | Viser l'étendard plutôt qu'accepter la blessure |
| Grim Iron Mask / Ironworker's Tongs | Blindness 75 s / Oblivious 60 s | Surveiller visuellement |
| Sharpened Mount | Étendards 15 % plus lents à apparaître | Partir vers l'étendard un peu plus tard |
| Dried Horsemeat / Tattered Tabard | Chasse +4 s / patrouille +8 s | Compter des durées plus longues |

**Perk à connaître** : **Nowhere to Hide** LIVE = **24 m**, 3/4/5 s ; le « 18 m » du seed était la valeur PTB 10.1.0 (VM).

Détail : `kb/research/batch4_killers_g4.md` §30.

## 31. The Skull Merchant (Adriana Imai) [Intermédiaire]

*Archétype : zone / piège (drones) + info. Rework 7.3.0, ajustements 9.3.0 et 9.3.2 ; LIVE inchangé jusqu'à 10.1.2a (VM). Le « rework 2027 » du seed est invérifiable.*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,6 m/s ; **24 m** (depuis 8.6.0) ; moyenne | SS |
| Drones | 6 ; pose toutes les **7 s** ; zone de scan 10 m ; ligne visible des survivants à < 16 m ; rotation 105°/s | VP / VM |
| Lock-On | +1 par détection (2,5 s d'immunité) ; **sous un drone : +1 toutes les 2,5 s** ; 3 stacks = blessure (Deep Wound si blessé), Broken, Claw Trap | SS / VP |
| Non détectés | Survivants **accroupis ou immobiles** ; le **fast vault ne protège plus** depuis 9.3.0 | SS / VP |
| Claw Trap | 45 s ; porteur scanné : **Hindered 10 % 6 s** + Killer Instinct 3 s | VM |
| Haste | +5 % 8 s si un survivant est détecté dans les 5 s après une pose ou un changement de sens | SS |
| Piratage | Réussi : drone off 45 s ; raté : +1 Lock-On | SS |
| Rappel d'un drone | **Undetectable 8 s** | VM |
| Étages | Pas de détection à travers murs ni planchers | SS |

**Identification** : drones surélevés avec une ligne qui tourne ; un survivant blessé sans attaque (Lock-On complet) ; une tueuse qui arrive **sans TR** juste après avoir rappelé un drone.

**Ce qu'elle cherche** : poser un drone sur ta boucle pour une détection immédiate (Haste), puis empiler le Lock-On jusqu'à la blessure « gratuite » [HEURISTIQUE fondée sur FACT].

**Tiles** : favorables = tiles longues **hors du rayon de 10 m** d'un drone, bâtiments à étages. Défavorables = boucles courtes sous un drone actif. Pas d'anti-palette dans son pouvoir : palettes normales hors zone.

**Counterplay par couche**

- **Mécanique** : franchir la ligne juste après son passage ; hors chase, **s'accroupir ou s'immobiliser** quand elle arrive (faisceau blanc = pas de détection). En chase, s'arrêter coûte de la distance.
- **Positionnel** : changer de tile quand elle pose un drone sur le tien ; ne pas stationner sous un drone.
- **Calcul** [SITUATIONNEL] : porteur de Claw Trap **et** scanné dans les 5 s d'une pose → toi 3,6 m/s, elle 4,83 m/s : elle reprend ≈ 1,23 m/s, deux fois plus vite que d'habitude (3 m d'avance durent ≈ 2,4 s). Pré-drop plus tôt ou, souvent mieux, **sortir du rayon de 10 m** avant de jouer la palette.
- **Macro** : pirater quand elle est loin. Le Claw Trap s'éteint seul en 45 s (retrait manuel : procédure non décrite **[INCERTAIN]**).
- **Équipe** : ne pas tous tomber en Lock-On dans la même zone ; gens à 3 défendus par des drones = y aller à plusieurs en fin de partie.

**Erreurs classiques** [HEURISTIQUE] : tenir une boucle « safe » sous un drone ; compter sur le fast vault ; croire « pas de TR = elle est loin » après un rappel.

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Expired Batteries | Tous commencent avec un Claw Trap (50 %) | Éviter les lignes pendant ≈ 22 s au lieu d'ouvrir un gen sous un drone |
| Iridescent Unpublished Manuscript | Drone piraté : elle Undetectable 15 s, le drone émet un TR de 32 m | Pirater seulement en sachant où elle est ; ignorer le TR du drone |
| Low-Power Mode | Lignes **immobiles** | Contourner le faisceau fixe |
| Geographical Readout | Casse et vault +20 % 8 s après une pose | Quitter la palette au lieu de la faire casser juste après une pose |
| Powdered Glass / Loose Screw | Haemorrhage + Mangled / Exhausted 6 s pour les Claw-trapped | Éviter le coup, ne pas compter sur sa perk d'exhaustion |

Détail : `kb/research/batch4_killers_g5.md` §31.

## 32. The Singularity (HUX-A7-13) [Avancé]

*Archétype : mobilité (téléportation) + ranged + anti-loop. Pouvoir inchangé depuis 8.7.0 ; en 9.x seulement l'add-on Soma Family Photo et des correctifs (SS).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,6 m/s ; 32 m ; moyenne | SS |
| Biopods | 8 (le plus ancien recyclé) ; pose à 22 m ; tag : **LOS + 20 m**, charge **0,8 s** ; perdre la LOS > 0,25 s fait reculer la charge | SS |
| Slipstream | Se propage aux survivants à **6 m** ; Killer Instinct 3 s | SS |
| Téléportation | **Uniquement vers un survivant Slipstreamed** ; traverser une palette abaissée la casse et le met en **Overheat** | SS |
| Overclock | 5,7 s après chaque téléportation ; ×1,03 ; casse, vault et dégâts de gen **+75 %** ; immunisé aux stuns : une palette jetée **se casse** et le met en Overheat | SS |
| Overheat | 3 s ; **Hindered −50 % (2,3 m/s)** ; aucun pod | SS |
| EMP | 4 Supply Cases ; zone 10 m : retire le Slipstream, pods off **45 s** | SS |

**Identification** : Biopods collés au décor et Supply Cases en aura dès le début ; Killer Instinct au moment du tag.

**Ce qu'il cherche** : te tagger depuis un pod placé derrière toi, se téléporter juste avant ta palette, profiter de l'Overclock [HEURISTIQUE].

**Tiles** : favorables = tiles où l'on casse la LOS avec **tous** les pods voisins, ou à plus de 20 m d'eux. Défavorables = grands espaces couverts par des pods en hauteur.

**Counterplay par couche**

- **Mécanique** : repérer chaque pod et casser sa LOS pendant les 0,8 s de charge. Non Slipstreamed = pas de téléportation sur toi [FACT].
- **Palette contre l'Overclock** : la jeter sur lui reste utile : pas de stun, mais Overheat 3 s à 2,3 m/s → ≈ **5 m** regagnés ((4,0 − 2,3) × 3 s), au prix de la palette. Le seed disait « stunner en Overclock ne sert à rien » : faux.
- **Pendant l'Overclock** (5,7 s) : ses vaults et casses sont 75 % plus rapides → viser une ressource **plus loin** plutôt que tenir la palette actuelle [SITUATIONNEL].
- **Macro** : ramasser un EMP tôt et le garder pour un vrai Slipstream ou un groupe de pods (SoloQ : en prendre un si personne n'en a visiblement). Ne pas se grouper (propagation 6 m).

**Erreurs classiques** [HEURISTIQUE] : rester dans la LOS d'un pod à < 20 m ; réparer à plusieurs dans la vue d'un pod ; utiliser l'EMP sans rien à nettoyer.

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Denied Requisition Form | Tous Slipstreamed au départ ; EMP 30 s plus tard | Aller vers une Supply Case au lieu de s'installer sur un gen |
| Diagnostic Tool (Repair) | Tag à 24 m | Compter 24 m, pas 20 m, comme distance sûre |
| Nutritional Slurry | +2 pods | Changer de zone au lieu de casser toutes les LOS |
| Foreign Plant Fibres | Pénalité d'Overheat réduite de 20 % | La palette sur un Overclock rapporte moins de 5 m |
| Cremated Remains / Spent Oxygen Tank | Slipstreamed = Blindness / Exhausted 6 s | Après un tag, ne compter ni sur ses auras ni sur sa perk d'exhaustion |

Détail : `kb/research/batch4_killers_g5.md` §32.

## 33. The Xenomorph [Intermédiaire]

*Archétype : anti-loop (queue) + mobilité (tunnels). 1v4 inchangé depuis 8.6.0. Les Innate Skills ajoutées en 10.1.2 sont **2v8 uniquement** (VM).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,6 m/s (aussi en Crawler) ; 32 m, **24 m en Crawler** ; moyenne | SS |
| Tunnels | 7 Control Stations (aura à 12 m) ; 18 m/s, Undetectable ; sortie 2,25 s = Killer Instinct 3 s + tourelles off 2,5 s à 16 m | SS |
| Détection depuis le tunnel | Pas à **16 m** ; **accroupi ou immobile = pas détecté** | SS |
| Crawler Mode | Recharge ≈ **35 s** en surface, ≈ **4,4 s** en tunnel | SS |
| Tail Strike | Portée **4,8 m** ; charge 0,3 s ; cooldown 2,5 s (raté) / 2,7 s (touché), **à 1,2 m/s** | SS |
| Tourelles | 4 ; tir à 10 m avec LOS ; 125 charges = stun 1 s + sortie du Crawler ; porter = Hindered −35 % ; posée non déployée : autodestruction 30 s ; surchauffe 3,5 s | SS |

**Identification** : Control Stations et tourelles dès le début ; Killer Instinct soudain près d'une station = sortie de tunnel.

**Ce qu'il cherche** : la queue sur petite tile ou par-dessus un obstacle bas ; il évite les tourelles [HEURISTIQUE].

**Tiles** : favorables = tiles couvertes par une tourelle ; murs hauts pleins (une queue « obstruée » rate). Défavorables = palettes basses et petites tiles. Que la queue passe au-dessus des palettes et fenêtres n'est pas écrit sur le wiki **[INCERTAIN]** : ne pas considérer le vault comme sûr.

**Counterplay par couche**

- **Mécanique** : lire le début de la queue (0,3 s, audible) et esquiver **latéralement**. Une queue ratée = 2,5 s à 1,2 m/s → ≈ **7 m** regagnés.
- **Positionnel** : amener la chase vers une tourelle posée ; poser les tourelles **avant** la chase, sur les tiles forts et les gens. Près d'une station, hors chase, s'accroupir ou s'immobiliser.
- **Macro** : sorti du Crawler, il redevient un M1 à 32 m de TR pendant ≈ 35 s **s'il reste en surface**, mais ≈ 4,4 s s'il repasse par un tunnel → la fenêtre n'est longue que loin d'une station.
- **Équipe** : tourelles couvrant crochets et gens ; les remplacer après destruction (retour 60 s).

**Erreurs classiques** [HEURISTIQUE] : tenir une palette basse contre la queue ; poser une tourelle là où il n'y a pas de chase, ou la laisser tomber non déployée ; marcher debout près d'une station.

**Quand le counterplay habituel échoue** : s'il détruit toutes les tourelles, les poser par paires ou derrière un obstacle ; une tourelle seule surchauffe.

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Acidic Blood | Stun dans les 20 s après une sortie de tunnel = blessure ou Deep Wound | Préférer la distance au stun juste après un tunnel |
| Ovomorph | Recharge du Crawler +25 % (≈ 28 s) | Greeder moins longtemps après l'avoir sorti |
| Ripley's Watch | Tourelle autodétruite après l'avoir sorti du Crawler | Aller chercher une nouvelle tourelle après chaque sortie |
| Crew Headset | Détection des pas à 22 m | S'accroupir plus tôt près des stations |
| Kane's Helmet / Multipurpose Hatchet | Mangled 70 s / Haemorrhage sur coup de queue | Soigner près d'une tourelle, finir le soin |

Détail : `kb/research/batch4_killers_g5.md` §33.

## 34. The Good Guy (Chucky) [Intermédiaire]

*Archétype : furtif + mobilité + anti-loop (dash, Scamper). **1v4 inchangé depuis 8.6.0.** La casse de palette par Scamper de 9.4.2 est une Innate Skill **2v8** ; en 9.5.0, son pouvoir est classé « special-vault », pas « special-break » (VM).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | **4,4 m/s** ; 32 m ; **petite** | SS |
| Hidey-Ho Mode | 14 s ; cooldown 12 s ; Undetectable + faux pas à 16 m autour de chaque survivant ; chaque tentative d'attaque divise la durée restante par 2 | SS |
| Slice & Dice | **8 m/s pendant 1,8 s** ; cooldown 3 s (touché) / **2,25 s** (raté) | SS |
| Scamper | Pendant un dash, sous une palette abaissée ou par une fenêtre, en **1 s** | SS |
| Casse de palette | **Non** en 1v4 ; seulement avec **Hard Hat** | VM |

**Identification** : pas de TR, faux pas autour de toi, petite silhouette ; dash puis fente ; passage **sous** une palette. Une palette **cassée** par un Scamper = Hard Hat.

**Ce qu'il cherche** : un dash au moment où tu te retournes ou t'engages en ligne droite ; un Scamper pour annuler l'avantage d'une palette ou d'une fenêtre [HEURISTIQUE].

**Tiles** : favorables = obstacles hauts et angles serrés (le dash a une rotation limitée), hauteur pour le voir venir. Défavorables = lignes droites dégagées.

**Counterplay par couche**

- **Mécanique** : esquive latérale **tardive** au moment du dash ; pas de virage anticipé qu'il pourrait suivre.
- **Distance** : à 4,4 m/s, un hold W perd moins vite (10 m en 25 s). **Mais** un dash parcourt ≈ 14,4 m pendant que tu en fais 7,2 → chaque dash reprend ≈ 7 m d'un coup. La distance ne vaut que si elle dépasse nettement cette portée **et** qu'un obstacle permet de dévier le dash.
- **Palette** : **en 1v4 sans Hard Hat, elle reste au sol après son Scamper** et reste réutilisable ; elle t'a servi si tu as gagné de la distance pendant sa seconde de Scamper. Ne pas s'arrêter juste derrière.
- **Macro** : checks visuels réguliers quand il n'y a pas de TR ; les pas entendus peuvent être faux.
- **Équipe** : SWF = annoncer sa sortie de Hidey-Ho ; SoloQ = checks et auras de perks.

**Erreurs classiques** [HEURISTIQUE] : rester immobile derrière une palette abaissée ; courir en ligne droite en open ; croire les pas pendant Hidey-Ho ; « jouer le tile, pas la palette » (conseil du seed, faux en 1v4 sans Hard Hat).

**Fenêtre à exploiter** : après un dash raté, 2,25 s ; ensuite Hidey-Ho met 12 s à revenir : c'est le moment de changer de tile [SITUATIONNEL].

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| **Hard Hat** | Le Scamper casse la palette instantanément | Dès la 1re casse, jouer fenêtres et tiles sans palette unique au lieu de revenir sur une palette tombée |
| Iridescent Amulet | Hidey-Ho 21 s (une attaque de base y met fin) | Quitter le gen au moindre indice visuel |
| Portable TV | Dash à 170 % (≈ 3,1 s) portes alimentées | En endgame, éviter les lignes droites vers les portes |
| Silk Pillow | TR −6 m permanent (26 m) | Ne pas juger la distance au TR |
| Plastic Bag | Traverser un faux pas = Exhausted 15 s | Ne pas compter sur sa perk d'exhaustion en Hidey-Ho |
| Straight Razor | Haemorrhage + Mangled 80 s sur coup de dash | Reporter le soin ou se soigner loin |

Détail : `kb/research/batch4_killers_g5.md` §34.

## 35. The Unknown [Intermédiaire]

*Archétype : ranged (UVX en deux temps) + furtif / mobilité (hallucinations). Buffs 9.2.0 et 9.6.0 (VM).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,6 m/s ; 32 m ; **moyenne** (pas « grande ») | SS |
| UVX | Charge 1 s ; rebondit ; explosion **2,25 m** ; projectile en vol : Hindered 6 % 3 s ; zone : **Weakened** ; Weakened touché par une zone = **blessé** ; cooldown **6,25 s** | SS / VP |
| Stare Down | Regarder le tueur **à ≤ 25 m** pendant **10 s cumulées** ; perte de LOS > **0,75 s** = interruption (9.6.0) | VM |
| Hallucinations | 4 max ; une toutes les 45 s (≈ 13 s si les 4 survivants sont Weakened) ; aura à 8 m ; dissipation 4 s ; échec = Weakened + Killer Instinct 5 s | SS |
| Téléportation | Vers une hallucination, portée illimitée ; cooldown 25 s ; Decoy 5 s | SS |

**Identification** : hallucinations fixes (aura à 8 m) sur la map ; projectile qui rebondit ; statut Weakened.

**Ce qu'il cherche** : une explosion derrière un obstacle bas ou au rebond pour te mettre Weakened, puis te blesser au tir suivant (6,25 s plus tard au plus tôt) [HEURISTIQUE].

**Tiles** : favorables = **murs hauts pleins** (pas de tir en cloche ni de rebond). Défavorables = palettes et murets bas, open ; les étages l'aident plus depuis l'élargissement de sa visée verticale en 9.2.0.

**Counterplay par couche**

- **Mécanique** : bouger latéralement au relâchement (1 s de charge audible) ; ne pas s'arrêter dans une zone d'impact.
- **Positionnel** : faire le Stare Down hors de danger, à moins de 25 m, avec un **angle stable** (une coupure de 0,75 s suffit à l'interrompre) et un obstacle proche pour couper sa LOS s'il charge un tir.
- **Macro** : dissiper les hallucinations proches des gens **quand il est loin** (échec = Weakened + Killer Instinct). Rester sain et non-Weakened ralentit aussi l'apparition des hallucinations.
- **Fenêtre** : ses 6,25 s de cooldown après un tir = le moment de traverser l'open.

**Erreurs classiques** [HEURISTIQUE] : tenir un muret bas ; garder le Weakened en pensant qu'il partira seul ; dissiper pendant une chase proche ; être plusieurs dans la même zone d'explosion.

**Quand le counterplay habituel échoue** : déjà Weakened, tu n'as plus la marge d'une première explosion → murs hauts ou changement de zone au lieu de tenir le tile.

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Captured by the Dark | Tous Weakened au départ | Stare Down dès la première rencontre |
| Vanishing Box | Hallucinations plus lentes, mais finir un gen = Weakened | Stare Down juste après chaque gen |
| Slashed Backpack | Un UVX sur une hallucination la transforme en zone d'explosion | Ne pas rester à côté d'une hallucination en chase |
| Iridescent OSS Report | Téléportation 20 s ; Decoys 15 s avec TR et Red Stain | Vérifier visuellement avant de fuir un TR près d'une hallucination |
| Homemade Mask / Punctured Eyeball | Dispel réussi = Blindness 60 s / Deep Wound si blessé et Weakened | Dissiper seulement sain et non-Weakened |
| B-Movie Poster | Blessure par UVX = Broken 30 s | Pas de soin immédiat après une blessure UVX |

Détail : `kb/research/batch4_killers_g5.md` §35.

## 36. The Lich (Vecna) [Avancé]

*Archétype : mobilité (Fly) + anti-loop (Mage Hand) + info. LIVE 9.0.0 (tous les sorts dès le début) (VM) ; 9.1.0 corrige le **temps** de casse de Vorpal Sword (VP).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,6 m/s ; 32 m ; moyenne ; 3,68 m/s pendant 2 s après un sort | SS |
| Fly | **8 m/s**, 5 s max, ignore palettes abaissées et fenêtres ; puis **2,75 s sans attaque** ; cooldown 20 s | VM |
| Flight of the Damned | 5 entités, 22 m ; hauteur de vol 1,4 m → **ne touchent pas un survivant accroupi sur terrain plat** ; cooldown 30 s | VM / SS |
| Dispelling Sphere | **Invisible** pour les survivants ; contact = Killer Instinct 5 s + objets magiques off 45 s ; cooldown 30 s | VM |
| Mage Hand | Portée 16 m ; palette **debout** : **bloquée 4 s** ; palette **abaissée** : **relevée** en ≈ 1 s, puis 0,55 s sans pouvoir la rabaisser ; cooldown 35 s | SS |
| Vorpal Sword (add-on) | Mage Hand **casse** la palette abaissée en **4 s** (pas instantané) | VM |
| Coffres | 6 ; **un est un Mimic** qui saisit le survivant ; chaque objet magique révèle l'aura du Lich 2 s quand il lance le sort associé | SS |

**Identification** : coffres et objets magiques dès le début ; palette qui se relève ou reste bloquée ; Killer Instinct sans raison visible (Sphere). Palette abaissée que la main **casse** = Vorpal Sword.

**Ce qu'il cherche** : Mage Hand sur la palette **debout** au moment où tu veux la jeter (4 s de blocage = coup quasi garanti), ou sur la palette abaissée pour la relever et passer ; Fly pour franchir ; Flight of the Damned dans un couloir [HEURISTIQUE].

**Tiles** : favorables = tiles à **plusieurs palettes ou une fenêtre** en alternative (Mage Hand n'agit qu'une fois puis 35 s de cooldown). Défavorables = palette unique isolée, open. Après un Mage Hand, la fenêtre devient la ressource sûre.

**Counterplay par couche**

- **Mécanique** : **s'accroupir** face à Flight of the Damned sur terrain plat [FACT]. Mage Hand disponible : jeter la palette **plus tôt, puis partir**. Le pré-drop sert à éviter le blocage de 4 s de la palette debout, pas à tenir la palette : abaissée, il la relève (ou la casse en 4 s avec Vorpal Sword) sans s'arrêter [HEURISTIQUE].
- **Contre-jeu sur la relève** : 0,55 s après la relève, tu peux rabaisser la palette ; un Lich qui relève trop tôt s'expose à un stun [HEURISTIQUE].
- **Positionnel** : les 2,75 s après un Fly, il ne peut pas attaquer : prendre de la distance vers un autre tile.
- **Macro** : suivre les cooldowns (20 / 30 / 30 / 35 s) ; hors sorts, c'est un M1. Killer Instinct soudain + objets grisés = Sphere. Ouvrir un coffre ne déclenche pas de Killer Instinct dans le texte du pouvoir ; le risque réel est le Mimic.
- **Équipe** : SWF = partager les objets utiles ; SoloQ = ne ramasser que ce qui sert.

**Erreurs classiques** [HEURISTIQUE] : attendre à la palette debout jusqu'au dernier moment avec Mage Hand prêt ; courir debout face aux entités ; rester près d'une palette relevée sans la rabaisser. Contre un Lich qui **garde** Mage Hand en attendant ton pré-drop : varier (départ sans drop, fenêtre).

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| **Vorpal Sword** | Mage Hand casse la palette abaissée en 4 s ; blessé dans la Sphere = Broken 30 s | Ne pas revenir boucler sur la palette jetée : enchaîner vers une autre ressource |
| Iridescent Book of Vile Darkness | Entités 0,7 m plus bas (touchent les accroupis), 2 entités ; Fly à travers une fenêtre la bloque 45 s | Se mettre derrière un obstacle au lieu de s'accroupir |
| Cloak of Elvenkind | TR −22 m pendant Fly et 6 s après | Regarder en l'air au lieu de se fier au TR |
| Cloak of Invisibility | 4 sorts en cooldown = Undetectable 20 s | Après une rafale de sorts, attendre une approche sans TR |
| Staff of Withering | Entrer dans la Sphere = Exhausted 30 s | Après un Killer Instinct de Sphere, ne pas compter sur sa perk d'exhaustion |
| Ring of Spell Storing / Pearl of Power | −1 s / −2 s sur les recharges | Effet faible : ajuster le suivi, pas la stratégie |

Détail : `kb/research/batch4_killers_g5.md` §36.

## 37. The Dark Lord (Dracula) [Avancé]

*Archétype : mobilité (chauve-souris) + ranged / zone (Hellfire) + anti-loop (loup). LIVE 9.2.0 ; pouvoir classé « special-break » en 9.5.0 (VM).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,6 m/s (vampire, loup) ; **6,5 m/s** en chauve-souris ; TR 32 m ; **berceuse 48 m** en chauve-souris (Undetectable) ; grande | SS |
| Changement de forme | Cooldown **3,5 s** ; transition 1 s, **1,5 s depuis la chauve-souris** (à 2,3 m/s) | SS |
| Hellfire (vampire) | Charge 0,9 s ; 8 piliers en ligne sur **10 m**, **au-dessus des obstacles bas** ; cooldown **9,5 s** | VP / SS |
| Loup | Scent Orbs (1 toutes les 6 s par survivant, 10 s) ; orbe ramassée = Haste +4,35 % 2,5 s (4,8 m/s) | SS |
| Pounce | 2 bonds de 6 m ; **toucher une palette abaissée la détruit** ; cooldown **20 s** | SS |
| Chauve-souris | Pas d'attaque ; **les survivants lui sont invisibles** (Scratch Marks visibles, pas +50 %) ; téléportation vers une palette abaissée ou une fenêtre entre 2 et 32 m ; cooldown 15 s | SS |

**Identification** : berceuse sans TR = chauve-souris ; Scent Orbs = loup ; trois silhouettes distinctes.

**Ce qu'il cherche** : piliers pour couper une sortie ou tirer par-dessus un obstacle bas ; Pounce sur une palette abaissée ; arrivée en chauve-souris directement sur la palette ou la fenêtre de ton tile [HEURISTIQUE].

**Tiles** : favorables = tiles longs à plusieurs palettes, obstacles **hauts** (l'Hellfire passe au-dessus des bas). Défavorables = couloirs droits, palettes isolées contre le loup. Les palettes abaissées et fenêtres sont ses **points de téléportation**.

**Counterplay par couche**

- **Mécanique** : esquive **latérale** de l'Hellfire (ligne de 10 m, 0,9 s de charge).
- **Palettes contre le loup** : pré-drop risqué (un Pounce la détruit), mais cette casse **consomme le Pounce** (20 s) → fenêtre pour atteindre la palette suivante. Contre le vampire, palette normale [HEURISTIQUE fondée sur FACT].
- **Positionnel** : sortant de chauve-souris, il lui faut 1,5 s à 2,3 m/s avant de frapper : c'est la fenêtre pour prendre de la distance. En chauve-souris il ne te voit pas : marcher supprime les Scratch Marks, mais tes pas restent audibles et amplifiés.
- **Adaptation** : bloqué 3,5 s dans sa forme après chaque transformation → choisir le tile adapté à la forme actuelle ; après un Hellfire (9,5 s) ou un Pounce (20 s), jouer le tile correspondant [SITUATIONNEL].
- **Macro** : ne pas laisser une traînée d'orbes en ligne droite ; éviter les actions bruyantes en forme loup (Killer Instinct 2 s).
- **Équipe** : SWF = annoncer la forme ; SoloQ = berceuse et orbes sont les seuls signaux partagés.

**Erreurs classiques** [HEURISTIQUE] : rester dans l'axe d'un vampire qui charge ; tenir une palette abaissée seule contre un loup au Pounce prêt ; se croire loin parce que la berceuse l'est (une téléportation couvre 32 m).

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Iridescent Ring of Vlad | Piliers guidés vers les survivants proches | Casser la LOS derrière un mur haut au lieu d'esquiver sur place |
| Cube of Zoe | Piliers autour de lui 10 s après chaque gen | Ne pas approcher pendant ces 10 s |
| Alucard's Shield | Piliers dans la zone de la porte ouverte | Sortir directement, ne pas stationner dans l'encadrement |
| Pocket Watch | Téléportation rechargée après une casse de palette | S'attendre à une nouvelle arrivée sur la ressource suivante |
| Lapis Lazuli / Medusa's Hair | Fenêtre bloquée 8 s / Hindered 8 % près de la destination | S'éloigner de la ressource où la chauve-souris arrive |
| Moonstone Necklace | TR 24 m en vampire et loup | Ne pas juger la distance au TR |

Détail : `kb/research/batch4_killers_g5.md` §37.

## 38. The Houndmaster (Portia Maye) [Intermédiaire]

*Archétype : anti-loop + ranged (chien) + info. Aucun changement d'équilibrage de 9.0.0 à 10.1.2a (correctifs seulement). Cooldown de Chase Command 3 s depuis 8.4.2 (SS).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,6 m/s ; 6 m/s sur le chemin d'une Search Command ; 3,68 m/s en visant ; TR 32 m ; moyenne | SS |
| Chase Command | Chemin tracé, chien à 35 m/s ; **redirigeable une fois** ; ne contourne que les petits obstacles (2 m d'écart max) ; cooldown 3 s (1 s si annulé) | SS |
| Vaults du chien | **Vaulte fenêtres et palettes tombées** (0,65 s) ; percuter un survivant **en train de vaulter** = blessure | VM |
| Prise | Incapacitated, Hindered −10 %, traction vers Portia **8 s max (2 s avec Endurance)** ; portes bloquées + 1,5 s | SS |
| Se libérer | **Faire tomber une palette sur le chien** (stun 3 s ; palettes debout à ≤ 16 m révélées) ou **un allié interagit avec le chien (0,65 s)** ; alliés à ≤ 20 m voient l'aura | SS |
| Search Command | Balise 5-40 m ; berceuse du chien 32 m ; détection = Killer Instinct + **Houndsense** (45 s) | SS |
| Houndsense | Survivant sain : la prochaine blessure = **Deep Wound** | SS |

**Identification** : berceuse éloignée du TR ou Killer Instinct sans tueur visible = Search Command ; aboiements, chien lancé en ligne droite.

**Ce qu'il cherche** : une **ligne droite** entre le chien et toi (sortie de tile, couloir, open). Une fenêtre ou une palette tombée **n'arrête pas** le chien : elle lui coûte 0,65 s [HEURISTIQUE fondée sur FACT].

**Tiles** : favorables = tiles à **angles courts** (jungle gym, shack) où un **mur plein** coupe vite la ligne ; palettes **debout** à proximité (pour se libérer). Défavorables = longs murs sans fenêtre, bords de map, maïs ouvert.

**Counterplay par couche**

- **Mécanique** : décalage latéral **tardif** derrière un obstacle plein ; garder un 2e décalage en réserve (redirection). **Ne pas vaulter au moment où le chien arrive** (collision = blessure). Pris : tirer vers une palette debout et la faire tomber sur le chien.
- **Positionnel** : rester collé aux structures ; traverser l'open seulement avec une vraie avance.
- **Macro** : berceuse du chien + Killer Instinct sur toi = repéré et sous Houndsense → en général, quitter le gen. Exception : à 5 % restants (4,5 s solo), si Portia n'est ni en vue ni dans le TR, finir coûte moins que revenir. Soigner tôt (la prochaine blessure serait un Deep Wound).
- **Équipe** : un allié à ≤ 20 m libère en 0,65 s : y aller si Portia est loin, rester en retrait si elle arrive. Ne pas décrocher en open quand elle est à moyenne distance.

**Erreurs classiques** [HEURISTIQUE] : hold W en ligne droite ; quitter une tile vers l'open trop tôt ; **vaulter une fenêtre « pour semer le chien »** ; ignorer le Killer Instinct de la patrouille ; croire que l'Endurance annule la traîne (elle la réduit à 2 s).

**Quand le counterplay habituel échoue** : « courir loin pour étirer la chase » échoue : la distance en open est exactement sa portée idéale → pre-run vers la structure suivante pour offrir le moins de ligne droite possible.

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Leather Harness | Chien +20 % 30 s après chaque gen, **permanent** en endgame | Se décaler plus tôt juste après un gen et en endgame |
| Marlinspike | Houndsense à tous les survivants à ≤ 20 m du chien lors d'une prise | Le sauveteur décide en sachant qu'il prendra Houndsense |
| Iridescent Wheel Handle | Portia Undetectable pendant la Search Command | Ne plus lire la berceuse du chien comme « Portia est loin » |
| Spiked Collar | Blessé pendant la prise = Haemorrhage + Mangled 60 s | Finir la chase avant de soigner |

**Perk à connaître** : No Quarter (auto-soin à 75 % → skill checks en continu, raté = Broken) → ne lancer un auto-soin que si tu peux le finir.

Détail : `kb/research/batch4_killers_g6.md` §38.

## 39. The Ghoul (Ken Kaneki) [Avancé]

*Archétype : mobilité + anti-loop (bonds) puis M1. Nerf 8.6.2 (portée 14 m) ; 9.2.0 : survivant relâché **au début** du vault du Ghoul (VM) ; 9.5.0 : magnétisme réduit (0,05 s) et **plus de coup automatique après un Leap Vault** (VM).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | 4,6 m/s ; **40 m** ; moyenne | SS |
| Kagune Leap | 2 tokens (3 en Enragé) ; cible ≤ **14 m** ; charge 0,35 s ; 5 s pour enchaîner ; franchit fenêtres et palettes tombées (Leap Vault 1,5 s) | SS |
| Recharge | 4 s par token (2,5 s en Enragé) ; le pouvoir ne revient qu'**une fois tous les tokens rechargés** : ≈ 8 s (≈ 7,5 s en Enragé) | SS |
| Touche sur survivant | Le **1er bond ne blesse pas** ; le **bond suivant** = Grab-Attack : blessure, **Deep Wound**, Kagune Mark, portes bloquées + 5 s | SS |
| Kagune Mark | Retirée quand le survivant **termine de mend** (ou passe au sol) ; un marqué ne peut plus être blessé par un Grab-Attack | SS |
| Enraged Mode | Tant qu'un survivant est marqué, puis **Countdown 40 s** (50 s après un grab parfait) | SS |
| Palettes | La casser force un cooldown d'1 token (2 en Enragé) ; destruction en bond seulement avec **Iridescent Eye Patch** | VM |

**Identification** : TR large (40 m), arrivée rapide par bonds vers les murs et les toits. **Un bond qui t'atteint sans te blesser annonce le Grab-Attack au bond suivant.**

**Ce qu'il cherche** : une LOS sur toi à ≤ 14 m hors d'un tile pour enchaîner deux bonds dans les 5 s. Contre un survivant marqué, il redevient un M1 avec bonds de mobilité [HEURISTIQUE].

**Tiles** : favorables = tiles hauts et fermés (murs pleins, shacks). Défavorables = open, tiles bas, fenêtres isolées. **Un étage lui profite** (bonds jusqu'à 8 m de dénivelé) : un toit n'est pas un refuge.

**Counterplay par couche**

- **Mécanique** : casser la LOS au moment où il vise. Après un 1er bond non blessant, **couper la ligne immédiatement** (obstacle, angle). Esquive latérale tardive (magnétisme quasi nul depuis 9.5.0).
- **Palettes** : elles ne gagnent pas une boucle mais **coûtent son pouvoir** (vault = cooldown ≈ 8 s ; casse = 1 ou 2 tokens). Poser tard, pour le stun ou pour vider ses tokens, puis exploiter la recharge.
- **Macro** : compléter des gens espacés (sa mobilité rend la défense 3-gen mobile). **Mender vite** les marqués : c'est le **mend** qui retire la marque et lance le compte à rebours de fin d'Enragé, pas le soin complet.
- **Équipe** : décrocher quand il est engagé loin, pas juste après un déplacement au bond.

**Erreurs classiques** [HEURISTIQUE] : traverser l'open « parce que le TR est loin » (40 m, bonds de 14 m en chaîne) ; compter sur une fenêtre isolée ; palette posée tôt ; rester sur la même ligne après un 1er bond.

**Quand le counterplay habituel échoue** : « tenir la boucle de palette » échoue tant qu'il a des tokens → penser en fenêtres de recharge (≈ 8 s / ≈ 7,5 s). Un marqué en bonne position peut étirer la chase plutôt que chercher un mend risqué [SITUATIONNEL].

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Iridescent Eye Patch | 3e bond enchaîné en Enragé sur une palette tombée = palette détruite | En Enragé, enchaîner vers le tile suivant au lieu de boucler |
| Hinami's Umbrella | +10 s de Countdown par grab parfait (60 s) | Mender plus tôt |
| Yamori's Mask | Accrocher en Enragé révèle 3 s les survivants à > 40 m | Rester à ≤ 40 m, derrière un obstacle, pendant un crochet |
| Red-Headed Centipede | En Enragé, fenêtre qu'il vaulte bloquée 10 s | Quitter la boucle au lieu de compter sur le re-vault |

**Perk à connaître** : **None Are Free** (endgame : fenêtres et palettes debout bloquées 12-16 s par token) → en endgame, aller directement aux portes.

Détail : `kb/research/batch4_killers_g6.md` §39.

## 40. The Animatronic (William Afton) [Intermédiaire]

*Archétype : ranged (hache) + mobilité (portes) + furtif. Sorti en 9.0.0 ; nerfs d'add-ons 9.0.2 ; 9.6.0 : recharge de la hache 6 s (décor) / 8 s (survivant), batterie −6 %/s par caméra et −12 % par téléportation (VM). « Springtrap » est un alias.*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR / taille | **4,4 m/s hache en main**, **4,6 m/s** hache plantée ; TR **24 m** ; moyenne | SS |
| Fire Axe | Windup 1 s ; 30 m/s ; portée 16 m ; forte gravité (trajectoire en cloche) | SS |
| Hache plantée | Survivant sain touché : blessé + **Broken + Oblivious** jusqu'au retrait (**5 s** par un allié, **8 s** seul) | SS |
| Grab Axe | À ≤ 3 m d'un porteur de hache : **il le charge directement sur l'épaule** | SS |
| Security Doors | 7 ; Afton en sort **Undetectable 20 s** ; un survivant qui le regarde **4 s** par caméra le révèle à **tous** 10 s et coupe l'Undetectable ; batterie commune (reboot 45 s à 0) ; porte occupée par un survivant = jumpscare | SS / VM |

**Identification** : portes de sécurité sur la map ; TR court et Undetectable fréquent ; hache plantée dans le décor (zone de Killer Instinct 15 s).

**Ce qu'il cherche** : un lancer à la sortie de tile, puis rejoindre à ≤ 3 m le survivant qui porte la hache : **épaule sans second coup** [FACT].

**Counterplay par couche**

- **Mécanique** : esquive latérale **au relâchement**, pas au début du windup. Sans hache, il est plus rapide (reprend 0,6 m/s au lieu de 0,4) mais sans projectile → sans hache, jouer la boucle, pas l'open.
- **Hache plantée en toi** : tu es à un grab de l'épaule. De 10 m, il comble les 7 m en ≈ 11,7 s, et peut rappeler puis relancer au bout de 8 s. Retirer la hache dès que tu as ≈ 8 s (seul) ou 5 s (allié) hors de portée ; sinon, rester à plus de 3 m [HEURISTIQUE].
- **Positionnel** : ne pas réparer dans le champ d'une porte récemment utilisée ; ne pas rester dans une zone de hache plantée.
- **Macro** : les caméras sont une ressource **partagée avec lui** : les utiliser pour le regarder 4 s (révélation à toute l'équipe) pendant une chase, un portage ou un sauvetage, pas « pour voir ».
- **Équipe** : SWF = le plus proche retire la hache pendant qu'il est engagé ailleurs.

**Erreurs classiques** [HEURISTIQUE] : entrer dans une porte quand il peut y entrer aussi ; vider la batterie ; garder la hache pour « finir le gen » ; se laisser rattraper à 3 m avec la hache plantée.

**Quand le counterplay habituel échoue** : l'info TR échoue (24 m + 20 s d'Undetectable après chaque porte) → écouter les portes, utiliser Kindred ou Alert, repérer les portes proches de ton gen.

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Iridescent Remnant | À son arrivée par une porte, palettes debout à ≤ 32 m bloquées 12 s | Fuir vers fenêtres et tiles de LOS |
| Access Panel | La hache traverse les portes | Ne plus se cacher près d'une porte « à l'abri » |
| Faz-Coin | La hache émet une copie de son TR ; +10 s d'Undetectable | Localiser la source : le TR peut venir de la hache |
| Loot Bag | Hache plantée = portes bloquées pour le porteur et à ≤ 12 m | En endgame, retirer la hache avant la porte ; les autres restent à > 12 m |

**Perk à connaître** : Haywire → ne pas lâcher une porte de sortie à 80 %+ sans nécessité. Help Wanted : la page affiche le texte PTB 10.2.0, valeur LIVE non relue **[INCERTAIN]**.

Détail : `kb/research/batch4_killers_g6.md` §40.

## 41. The Krasue (Burong Sukapat) [Avancé]

*Archétype : ranged + mobilité + statut (Leech). Sortie 9.2.0 ; 9.2.1 et **9.2.2** : **le Leech est entièrement retiré au crochet** (VP).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR | Corps 4,6 m/s, TR 32 m ; **tête 4,8 m/s, TR 40 m** ; vol 7 m/s ; moyenne | VM |
| Bloodlust | **Aucune en Head Form** | VM |
| Regurgitate (corps) | Glande qui rebondit puis se divise en 4 (tête chercheuse à ≤ 7 m) ; toute touche = **Leeched I immédiat** ; cooldown 2,5 s | SS |
| Head Form | **Vaulte** palettes (1,9 s) et fenêtres (1,67 s) ; stun de palette 2,5 s ; vol : 12 charges, recharge complète 30 s | SS |
| Intestinal Whip | Windup 0,3 s ; ignore les obstacles **0,32 s** ; **ne blesse qu'à partir de Leeched I** | VP / SS |
| Leeched | I à 100 charges ; monte seul → **Leeched II en 60 s** ; II = blessé + **Broken** ; **crochet = remise à zéro** | SS / VP |
| Champignons | 5 (6 max) ; mangeables dès Leeched I ; 3 s puis −5 charges/s (20 s par palier) ; **annulé si tu es touché** | SS |

**Identification** : deux TR (32 puis 40 m) et un changement de vitesse ; tête volante ; champignons lumineux sur la map.

**Ce qu'il cherche** : en corps, te toucher par rebond derrière les obstacles ; en tête, vaulter gratuitement les palettes et fouetter à travers un coin [HEURISTIQUE].

**Tiles** : favorables = murs pleins et gros rochers que la tête doit **contourner** ; stuns ponctuels (2,5 s) quand elle vaulte mal. Défavorables = tiles de palette classiques contre la tête, open à murs proches (rebonds).

**Counterplay par couche**

- **Mécanique** : changer de direction contre la glande principale, **puis** casser la LOS contre les mini-glandes. Sous Leeched I, le fouet ne blesse pas ; une seule glande te met Leeched I → contre le corps, esquiver la glande vaut une blessure future.
- **Macro** : manger un champignon **avant** Leeched II (60 s depuis Leeched I), hors de portée de glande. Le crochet remet à zéro : ne pas gaspiller un champignon juste avant un crochet probable [SITUATIONNEL]. Au palier II, faire baisser la jauge avant de soigner (Broken).
- **Chase contre la tête** : 4,8 m/s dès le départ, elle reprend 0,8 m/s (10 m en 12,5 s). Faute de Bloodlust, elle ne devient plus lente qu'un tueur à 4,6 m/s qu'après 25 s de chase → **les premières secondes sont les plus dangereuses**, « étirer » ne paie qu'une fois la chase longue installée [HEURISTIQUE fondée sur FACT].

**Erreurs classiques** [HEURISTIQUE] : ignorer la jauge ; boucler une palette contre la tête comme contre un M1 ; courir en ligne droite contre la glande ; oublier qu'un TR de 40 m peut être la tête **loin du corps** ; manger à portée de glande.

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Chicken Head | Tous Leeched I au départ (+2 champignons) | Le fouet blesse dès la 1re chase : manger tôt ou jouer la distance |
| Spattered Handkerchief | Portes alimentées : tous Leeched I, champignons détruits | En endgame, éviter la tête |
| Shredded Gown | À chaque changement de forme, auras à ≤ 8 m d'un champignon | Manger vite et quitter la zone |
| Queen's Sceptre | Un fouet qui touche fait jaillir une glande depuis toi | Après un fouet, casser la LOS |
| Janjira's Hand | Vol rechargé après chaque gen, permanent au dernier | Attendre une arrivée rapide après un gen et en endgame |

**Perk à connaître** : **Ravenous** LIVE = Exposed **40/50/60 s** à 4 tokens (VP) ; le « 80/85/90 s » affiché par le wiki est le **PTB 10.2.0 — non LIVE**.

Détail : `kb/research/batch4_killers_g6.md` §41.

## 42. The First (Henry Creel) [Avancé]

*Archétype : zone (lianes) + furtif (Upside Down) + mobilité. Sorti en 9.4.0 ; 9.5.0 : 2e phase du Worldbreaker 50 s, add-ons retravaillés (VM).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR | 4,4 m/s ; 32 m ; 8 m/s dans l'Upside Down ; moyenne | VM |
| Vine Attack | Charge 0,4 s + cast 0,6 s ; zone de **rayon 1,46 m** qui se déclenche **0,6 s** après ; hors Worldbreaker : 1 token, **pas de dégât** ; à ≤ 8 m d'un accroché : délai **6 s** | VM / SS |
| Upside Down | Undetectable, 8 m/s ; traverse palettes, fenêtres et murs **cassables** ; cooldown 35 s (50 % au début) | SS |
| Undergate | Anneau qui grandit en 1,65 s ; hors Worldbreaker : 2 tokens | VM |
| Worldbreaker | Se déclenche à 2 ou 4 tokens ; lianes et Undergate **blessent** ; phase 1 : 60 s par survivant vivant ; phase 2 : **50 s** ; **en pause quand il porte un survivant** | SS / VP |
| Horloges | 4, phase 1 seulement ; 1 / 2 / 3 / 4 survivants : −9 / −12 / −15 / −18 par s | SS |
| Mind Break | Survivant à **2 états de crochet et 4 tokens** mis au sol en Worldbreaker : mini-mori | SS |

**Identification** : 4,4 m/s ; TR qui disparaît d'un coup (Upside Down) ; anneaux rouges ; horloges sur la map.

**Ce qu'il cherche** : prédire ta sortie de palette ou de fenêtre (zone retardée) ; hors Worldbreaker, il **construit** ses tokens [HEURISTIQUE].

**Counterplay par couche**

- **Mécanique** : en 0,6 s tu parcours 2,4 m, plus que le rayon de 1,46 m → **bouger dès que l'indicateur apparaît** suffit presque toujours ; rester immobile ou vaulter à ce moment se fait toucher. Anneau d'Undergate : sortir tout de suite (« le casier protège » : non confirmé **[INCERTAIN]**).
- **Positionnel** : hors Worldbreaker, boucles longues (il reprend seulement 0,4 m/s). En Worldbreaker, raccourcir la chase et couper la LOS.
- **Macro** : suivre les tokens de l'équipe ; un survivant à 4 tokens au 2e crochet risque la mort directe → priorité d'anti-tunnel. Le Worldbreaker ne s'écoule pas pendant un portage.
- **Équipe — horloges** : **un seul** survivant. Calcul (4 vivants, 240 charges) : 1 survivant ≈ 27 s, 2 ≈ 20 s, 3 ≈ 16 s → le 2e ne fait gagner qu'≈ 7 s pour ≈ 20 s de réparation perdue [HEURISTIQUE ; lecture des taux = HYPOTHÈSE]. SoloQ : si un coéquipier est déjà sur une horloge, rester sur ton gen.
- **Sauvetage** : une liane à ≤ 8 m du crochet met 6 s à se déclencher : décrocher et sortir de la zone passent avant.

**Quand le counterplay habituel échoue** : « exploiter sa lenteur » échoue en Worldbreaker → tile à murs hauts, penser distance plutôt que durée. Après chaque sortie d'Upside Down, 35 s sans nouvelle embuscade par ce biais (≈ 10 s avec Pizza Goggles), pas 35 s sans danger.

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Shattered Wrist Rocket | L'Undergate **casse les palettes** et endommage les gens | Quitter la zone de l'anneau au lieu de compter sur la palette |
| Electroshock Collar | En sortie d'Upside Down, vaults bloqués 12 s à ≤ 32 m | Fuir vers un tile à murs ou une palette **debout** |
| Chess Piece | Liane à 2 charges, rayon −40 % | Après un 1er dodge, attendre la 2e zone |
| Pizza Goggles | Upside Down toutes les ≈ 10 s, Undergate minuscule | Se répartir ; plus besoin de fuir un grand anneau |
| Iridescent Soteria Chip | Au Worldbreaker : Undetectable + auras à ≤ 12 m | Quitter les gens proches au déclenchement |

**Perks à connaître** : Turn Back the Clock (après un crochet, explosion d'un gen à ≤ 20 m) → pas de gen avancé à sa portée juste après un crochet ; Hex: Hive Mind → purifier avant le 4e gen.

Détail : `kb/research/batch4_killers_g6.md` §42.

## 43. The Slasher (Jason Voorhees) [Avancé]

*Archétype : furtif + mobilité + ranged (pics). Sorti en 10.0.0 ; add-ons ajustés en 10.0.1, 10.0.2 et 10.0.3 ; depuis 10.0.3, l'anti-camp du Jump Scare ne s'applique plus entre étages (VP).*

**Données LIVE**

| Paramètre | Valeur | Conf. |
|---|---|---|
| Vitesse / TR | 4,4 m/s ; 8,0 m/s en Omnipresent Evil ; 32 m ; moyenne | VM |
| Omnipresent Evil (OE) | Invisible + Undetectable ; traverse palettes, fenêtres, murs cassables ; **ne voit ni n'entend** les survivants (sauf réparations) ; « sent » à ≤ 16 m (brume immobile, empreintes en mouvement) ; **accroupi depuis > 2,5 s = non détecté** | SS |
| Jump Scare | Cible une palette, une fenêtre ou un mur cassable à ≤ 16 m **de lui** ; visée 0,5 s + réapparition **1,5 s** (**4,5 s** près d'un accroché, même étage) + 1 s sans attaque ; special-break ou special-vault ; ressource **bloquée 4 s** ; puis Haste 25 s (4,6 m/s) | SS / VP |
| Pics | Windup 0,9 s ; touche = état de santé perdu + poussée ; pic de crochet sur un sain = **empalé** (Broken, retrait 5 s, aura à ≤ 26 m) ; épinglage si le pic **met au sol** contre un mur | SS / VP |
| Finisher | Survivant au dernier crochet empalé et mis au sol par un pic de crochet, ou épinglé : tuable | SS |

**Identification** : TR qui se coupe sans raison = OE ; tas de ferraille ; réapparition brutale sur une palette ou une fenêtre.

**Ce qu'il cherche** : réapparaître **sur** la ressource que tu allais utiliser (cassée ou franchie, puis bloquée 4 s), gagner la chase courte avec la Haste [HEURISTIQUE].

**Tiles** : pendant l'OE, s'éloigner des palettes, fenêtres et murs cassables (ses points d'apparition) : le rayon de 16 m se mesure **depuis lui**. Limite : une zone sans ressource devient une zone morte dès qu'il te chase.

**Counterplay par couche**

- **Mécanique** : quand le TR se coupe, il lui faut ≈ **5 s** au minimum avant de pouvoir frapper après un Jump Scare. Hors chase, **s'accroupir** (plus rien après 2,5 s). En chase, **ne pas prendre la ressource évidente** ; s'il réapparaît devant toi, 1,5 s + 1 s te laissent ≈ 10 m pour changer de direction.
- **Pics** : esquive latérale au lancer ; blessé, s'éloigner des murs ; rester à distance des coéquipiers (le survivant poussé blesse celui qu'il percute).
- **Macro** : retirer **immédiatement** un pic de crochet ; au dernier crochet, éviter tout pic (Finisher).
- **Équipe** : Jump Scare 3× plus lent près d'un accroché (même étage) = fenêtre de sauvetage ; un épinglé peut être libéré.

**Erreurs classiques** [HEURISTIQUE] : rester debout et immobile près d'une palette quand le TR disparaît ; réparer seul près de lui en OE ; garder un pic « pour plus tard » ; courir groupés ou le long d'un mur.

**Quand le counterplay habituel échoue** : « TR = info » échoue, c'est **l'absence** de TR qui est l'info. Contre Spirit Fury / Enduring, ne pas miser sur un stun tardif ; contre Rampage chargé, quitter la boucle après un stun.

**Add-ons qui changent la décision**

| Add-on | Effet LIVE | Décision du survivant |
|---|---|---|
| Iridescent Boat Motor | Fenêtres traversées en OE marquées, bloquées 13 s au Jump Scare | Construire la chase sur les palettes |
| Orderly's Shoe | Haste du Jump Scare 30 s | Casser la LOS plus longtemps avant de reboucler |
| Deputy's Badge | En OE, passer à ≤ 2 m d'un gen le fait exploser (−5 %) ; skill check spécial | Réussir le skill check au lieu de lâcher le gen |
| Sauna Rock | Exhausted **3 s** aux survivants détectés après un Jump Scare | Garder le Sprint Burst pour après ces 3 s |
| Burnt Fuse | Empalé : portes bloquées pour lui et à ≤ 13 m | Retirer le pic avant la porte ; les autres à > 13 m |

Détail : `kb/research/batch4_killers_g6.md` §43.

