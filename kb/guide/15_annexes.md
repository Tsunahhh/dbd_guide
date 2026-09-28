# 15. Annexes

Ce chapitre ne t'apprend pas à jouer. Il te sert à **vérifier** : un chiffre, un mot, une date de patch, une source, ou l'état réel du projet. Il se consulte, il ne se lit pas d'une traite.

| Section | Tu y trouves | Quand l'ouvrir |
|---|---|---|
| 15.1 Chiffres clés | Les valeurs de référence LIVE 10.1.2a, avec patch et confiance | Avant de citer un chiffre, ou si deux chapitres te semblent se contredire |
| 15.2 Glossaire FR/EN | Plus de 170 termes de jeu, statuts, jargon de chase, de macro et callouts | Quand un terme anglais ou un sigle t'arrête |
| 15.3 Patchs 2025-2026 et PTB 10.2.0 | L'historique condensé et ce que le serveur de test changerait | Quand un conseil trouvé ailleurs contredit le guide |
| 15.4 Ce qui a changé par rapport à l'ancien guide | Les erreurs prouvées du PDF d'origine, et ce qu'il avait juste | Si tu as appris DBD avec l'ancien PDF |
| 15.5 Questions et conflits ouverts | Ce que personne n'a pu trancher | Avant de présenter une valeur comme certaine |
| 15.6 Sources et citation | Les notes officielles lues (avec URL), le wiki, ce qui n'a pas pu être lu | Pour remonter à la preuve |
| 15.7 Statut du projet | La Definition of Done, condition par condition, et le verdict | Pour savoir jusqu'où faire confiance au guide |
| 15.8 Maintenance | Quoi re-vérifier à la sortie de 10.2.0, et avec quels outils | Si tu reprends le projet |

> **À retenir** : référence **LIVE 10.1.2a (17/09/2026)**, état au 27-28/09/2026 (aucune note officielle après l'article 559 au 28/09). Toute valeur du serveur de test porte « PTB 10.2.0 — non LIVE ». Le 2v8 n'entre jamais dans les valeurs du 1v4.

Légende rapide (détail au §1.6) : **(VP)** note officielle BHVR ; **(VM)** wiki + note officielle concordants ; **(SS)** wiki seul ; **(INC)** incertain. « calc. » = calcul fait à partir de valeurs sourcées.

---

## 15.1 Chiffres clés `[Référence]`

Toutes les valeurs ci-dessous viennent de `kb/guide/CANONICAL_FACTS.md` et du chapitre 2, eux-mêmes alignés sur l'errata (`kb/ledgers/AUDIT_PHASE0_ERRATA.md`) et sur les fiches de recherche re-vérifiées. La colonne « Patch » indique la version qui a fixé la valeur actuelle quand elle est connue ; « — » signifie que la valeur n'a pas de patch d'introduction documenté dans les sources lues. Aucun chiffre n'a été ajouté ici qui ne figure pas déjà dans ces sources.

### 15.1.1 État du jeu

| Donnée | Valeur | Date / patch | Conf. |
|---|---|---|---|
| Version LIVE de référence | **10.1.2a** : édition serveur de l'article « 10.1.2 Bugfix Patch » | 17/09/2026 (10.1.2 : 08/09/2026) | VM |
| PTB le plus récent | **PTB 10.2.0**, Steam seulement ; **non LIVE** | ouvert le 15/09/2026 (VP) ; fermeture le 21/09 selon un site tiers (INC) | VP / INC |
| Sortie LIVE de 10.2.0 | Non annoncée (« TBA ») ; estimation tierce au 6/10/2026, non officielle | — | INC |
| Tueurs en LIVE | **44** (le dernier : The Judgment, 25/08/2026) | 10.1.0 | SS |
| Survivants en LIVE | **54** (la dernière : Aurora Stardotter) | 10.1.0 | VM |
| Cartes 1v4 en rotation publique | **44**, réparties dans **20 royaumes** (RPD East et West comptées séparément) | 10.1.2a | VM |
| Tueurs annoncés, non sortis | Art the Clown (CHAPTER 42, nov. 2026), Frank Stone (CHAPTER 43, mars 2027) — **ANNONCÉ** | roadmap du 22/09/2026 | presse |

### 15.1.2 Générateurs et objectifs

| Donnée | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Durée d'un gen en solo | **90 charges à +1 c/s = 90 s** | 6.1.0 (était 80 s) | VM |
| Efficacité en coop | **85 / 70 / 55 %** par réparateur (à 2 / 3 / 4) → ~52,9 / ~42,9 / ~40,9 s | — | SS (durées : calc.) |
| Skill check | Test 1 fois/s, **8 %** de chance ; Great 3 % du cadran (+1 %), Good 13 % ; raté = **−10 %** et 3 s bloquées | — | SS |
| Coup de pied (kick) | Action de **1,8 s** ; **−5 %** instantané puis **−0,25 c/s** | 7.5.0 | VM |
| Arrêter la régression | Réparer **5 %** du gen | 7.5.0 | VM |
| Plafond de régression | **8 regression events** par gen (perte instantanée ≥ 2,5 % causée par le tueur) ; les skill checks ratés n'y comptent pas | 7.5.0 | VM |
| Portes alimentées | Après (survivants au départ + 1) gens ; ouverture **20 s**, progression conservée | — | SS |
| Endgame Collapse | **120 s** ; moitié de vitesse si quelqu'un est au sol, accroché ou en cage (max 4 min) ; ne s'arrête jamais | — | SS |
| Trappe | S'ouvre seule au dernier survivant ; clé avec ≥ 1 charge : réouverture en **2,5 s**, clé non détruite | 9.1.0 | VM |
| Totems | **5** ; purification **14 s** ; Boon sur totem terne 14 s, sur Hex **28 s** ; zone Boon **24 m** | — | SS |
| Coffres | **3** par défaut ; ouverture **8 s** | 8.4.0 (était 10 s) | SS |

### 15.1.3 Crochets, anti-camp, protections

| Donnée | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Phase de crochet | **70 s** par phase (Summoning 100 → 51 %, Struggle 50 → 1 %) ; 3e accrochage = mort | 8.2.0 (était 60 s) | VP |
| Accrocher / décrocher | 1,5 s / 1 s | — | SS |
| Auto-décrochage | Seulement à 2 survivants, ou avec Luck (offrande), Slippery Meat ou Up the Ante ; **4 %**, 3 essais, −20 s par échec | 9.0.0 | VP / VM |
| Fin à 2 survivants | Laisser passer 2 skill checks de lutte = sacrifice immédiat ; tous les restants accrochés en même temps = tous sacrifiés | 9.1.0 | VP |
| Anti-camp (Resolve) : zone et grâce | **16 m** ; grâce de **7 s** pour tous les accrochés à chaque nouvel accrochage ; désactivé portes alimentées | 9.3.0 | VM / VP |
| Anti-camp : multiplicateurs | Durée : ×1 (0-10 s) / ×2 (10-20 s) / ×4 (> 20 s) ; distance : ×2,5 (≤ 4 m) / ×1 (10 m) / ×0,375 (15 m) / ×0 (16 m) ; base +1 c/s | 9.3.0 | VP (durée) / SS (distance) |
| Anti-camp : face camp | ≈ **22,5 s** de jauge à ≤ 4 m, soit ≈ **29,5 s** après l'accrochage ; 10 m ≈ 37,5 s ; 15 m ≈ 79 s ; rien au-delà de 16 m | 9.3.0 | SS (calc. ±10 %) |
| Protections de décrochage | **Endurance + 10 % Haste pendant 10 s + Elusive 10 s** ; seule l'Elusive disparaît portes alimentées | 10.1.0 | VP |
| Wiggle | **16 s** cumulées si tous les tests réussis | — | SS |
| Vitesse du tueur qui porte | **3,68 m/s** | — | SS |

### 15.1.4 Soins, état mourant

| Donnée | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Soin d'un état de santé | **16 s** (16 charges) | — | SS |
| Soigneurs simultanés | **2 max en 1v4** (3 = règle du 2v8) | — | VM |
| Med-Kits | 24 charges pour tous ; auto-soin au kit −33 % de vitesse | — | SS |
| Deep Wound | Barre de 20 s ; mending **10 s seul / 6 s par un allié** | 8.6.0 | VP |
| Bleed-out | **240 s** cumulées | — | SS |
| Récupération au sol | Automatique, à l'arrêt ; plafond **95 %** (≈ 30,4 s) | 9.2.0 | VM |
| Rampement | **0,7 m/s constant** ; pas de récupération en rampant sans Tenacity | 9.3.0 (1,05 m/s = PTB annulé) | VM |
| Auto-relève de base | **N'existe pas** en LIVE | — | VP |
| Relevage par un allié | 16 s seul sans kit, 8 s à deux, < 1 s si le mourant est à 95 % | — | SS (calc.) |
| Abandon | Au 3e passage au sol après avoir été relevé ou soigné de l'état mourant 2 fois | 9.2.0 | VP |
| Surrender | Tous les survivants au sol | 8.6.0 | VP |

### 15.1.5 Déplacement et chase

| Donnée | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Survivant : course / marche / accroupi | **4,0** / 2,26 / 1,13 m/s | — | VM |
| Tueurs : classes courantes | 4,6 m/s et 4,4 m/s ; Nurse **3,85 m/s** ; Blight **4,4 m/s** | 9.6.0 (Blight) | SS / VP |
| Terror Radius « d'origine » | 32 m (tueurs à 4,6 m/s) ; 24 m (4,4 m/s) ; nombreuses exceptions | — | SS |
| Cooldown d'attaque | **2,7 s** après un coup réussi ; **1,5 s** après un raté | 6.1.0 (était 3 s) | VM |
| Fente | Ouverture ≤ 0,5 s + frappe 0,3 s à ~6,9 m/s ; **distance non publiée** | — | SS / INC |
| Boost au coup | **1,8 s** ; ×1,65 | — | VM (durée) / SS (×1,65) |
| Bloodlust | 15 / 25 / 35 s de poursuite → +0,2 / +0,4 / +0,6 m/s | — | VM |
| Poursuite | Début : survivant vu à ≤ 12 m qui court ; fin : > 18 m, 5 s en casier, > 8 s sans LOS, hors ± 35° | — | SS |
| Fenêtres | Fast vault **0,5 s** (garde l'élan) / medium 0,9 s / slow 1,5 s ; tueur 1,7 s | — | SS |
| Blocage de fenêtre | Après le **3e** vault de la même fenêtre en poursuite : bloquée **30 s** pour ce survivant | — | SS |
| Palettes | Stun **2 s** (à ~50 % d'abaissement) ; casse **2,34 s** ; tronçonneuse 1 s ; vault de palette 1,1 s | 6.1.0 (casse) | VM / SS |
| Murs cassables | 2,34 s, tueur seulement | — | VM |
| Espacement des palettes | Au moins 14, 16, 18 ou 20 m | — | SS |
| Conversion utile | Fast vault 0,5 s ≈ 2,3 m à 4,6 m/s ; vault de palette 1,1 s ≈ 5 m | — | calc. |

### 15.1.6 Systèmes

| Donnée | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Diminishing Returns | Modificateurs identiques (pouvoirs, objets, perks, offrandes) : 100 / 50 / 25 / 12,5 / 5 % ; **add-ons exclus** ; skill check, Haste de perks et vitesse de vault concernés ; liste complète dans le manuel en jeu (non consulté) | 9.6.0 | VP |
| Offrandes de royaume / carte | **20 %** fixes, doublons non cumulables | 9.0.0 | VP |
| Loadout visible | Loadouts des **coéquipiers** dans Match Details ; tueur : identité révélée à la 1re poursuite ou au 1er état de santé perdu, **loadout caché jusqu'à la fin** | 9.6.0 | VP |
| Sélection des cartes | Chance égale par carte + Realm Repeat Prevention (≈ 1/44 ≈ 2,3 % par carte sans offrande) | 9.6.0 | VP (calc.) |
| MMR | Compte d'autres actions que kills et évasions ; remise à zéro rapportée par la presse seulement | 10.1.0 | VP / INC |

### 15.1.7 Tueurs : valeurs tranchées souvent citées

| Donnée | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| TR 40 m | Hillbilly, Blight, Mastermind, Ghoul | 8.6.0 (Hillbilly, Blight) | SS |
| TR 24 m | Hag, Pig, Onryō, Skull Merchant, Xenomorph en Crawler | Hag 1.9.3 ; Pig 9.1.0 ; Skull Merchant 8.6.0 | SS |
| Huntress | **7 hachettes** de base | 7.6.0 | SS |
| Shape | Evil Incarnate **60 s** ; Slaughtering Strike 7,5 m/s ; exécution à la main en Evil Incarnate (≤ 3 m, survivant à 2 hook stages, pas sous Endurance) | 9.2.0 / 9.2.3 | VM |
| Hillbilly | Casse une palette à la tronçonneuse en ~1 s **avec le pouvoir de base** (LoPro Chains prolonge seulement le sprint) | 9.5.0 (« Special-break ») | VP / SS |
| Blight | Casser une palette coûte des tokens de Rush | 9.6.0 / 9.6.2 | VP |
| Good Guy | Le Scamper passe **sous** la palette ; casse seulement avec **Hard Hat** (casse de base = 2v8) | 9.4.2 | VM |
| Mastermind | Virulent Bound **franchit** la palette ; casse avec **Lab Photo** seulement | 9.6.0 | VM |
| Lich | Mage Hand + **Vorpal Sword** : casse en **4 s** ; sans l'add-on, Mage Hand relève la palette | — | SS |
| Knight | Gardes : casse sur ordre en **1,8 s ou 5 s** ; palette baissée tôt = contournement (abandon si détour > 48 m) | 10.1.1 | VM |
| The First | Casse seulement avec Shattered Wrist Rocket | — | INC |
| Judgment | Divine Light en Zealous : fenêtre de 0,6 s (fenêtre hors Zealous retirée) ; exilés réapparaissent à ≥ 32 m | 10.1.2a / 10.1.2 | VM |

### 15.1.8 Perks : valeurs tranchées souvent citées

| Perk | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| Eruption | **−10 %** (le passage à −5 % a été reporté, « Postponed ») | 9.2.0 | VP |
| Pop Goes the Weasel | +15 % soit **20 % au total** ; fenêtre 35/40/45 s | 9.5.0 | VP |
| Hex: Ruin | 100/125/150 % | 9.2.0 | VP |
| Dead Man's Switch | 25/30/35 s ; recharge 50 s | 9.2.0 (recharge : note 559 « was ») | VP |
| Nowhere to Hide | **24 m** (18 m = PTB 10.1.0) | 10.1.0 | VP |
| Terminus | 35/40/45 s | 9.0.0 | VM |
| No Way Out | 12 s + 6/9/12 s par jeton (max 36/48/60 s) | — | VM |
| Iron Will | 80/90/100 % | 8.1.0 | SS |
| Built to Last | **14/12/10 s** (le wiki affiche 12/10/8 s, valeur PTB) | 9.1.0 | VP |
| Vigil | **20/25/30 %**, Exhausted seul | 10.1.1 | VP |
| Will to Live (ex-Decisive Strike) | 40/50/60 s ; stun **4 s** | 9.4.0 (nom) ; 8.0.0 (4 s) | VM |
| Off the Record | 30/35/40 s avec Endurance ; désactivation portes alimentées **INC** | 9.2.2 | VM / INC |
| Sprint Burst | Haste 50 % pendant **2 s** | 10.1.0 | VP |
| Adrenaline | Haste **4 s** | 10.1.0 | VP |
| Deliverance | Broken 160/140/120 s | 10.1.0 | VM |
| Technician | 16 m, 4/3/2 % | 10.1.0 | VP |
| Repressed Alliance | 40/35/30 s | 10.1.1 | VP |
| Windows of Opportunity | Auras palettes, fenêtres, murs cassables à 24/28/32 m, **sans cooldown** | 5.3.0 | SS |
| Five Moves Ahead | Auras des 5 palettes **et** fenêtres les plus proches ; après un drop, on repart 50 % plus tôt ; CD 40/35/30 s (« palettes seulement » = PTB) | 9.5.0 | VP |

**Objets** : **Anti-Exhaustion Syringe** existe bien (renommage 9.3.0, VM) ; **Fog Vial 4 charges** (9.5.0, VP) ; Pharmacy LIVE = ouverture de coffre accélérée seulement (VM).

> **Erreur fréquente** : citer la valeur affichée sur le wiki pendant un PTB. Au 27/09/2026, les pages de Dissolution, Distressing, Do No Harm, Hex: Nothing but Misery, Shattered Hope, Wake Up! et Windows of Opportunity montrent le texte du PTB 10.2.0 sans avertissement. La valeur LIVE se lit dans les lignes « (was …) » de la note officielle 559.

Détail : `kb/guide/CANONICAL_FACTS.md` ; chapitre 2 ; `kb/research/batch12_mechanics_open.md` ; `kb/ledgers/AUDIT_PHASE0_ERRATA.md`.

---

## 15.2 Glossaire FR / EN `[Débutant]`

Le guide garde en anglais les termes que tu verras dans le jeu, sur le wiki et en vocal (perks, statuts, tiles). Ce glossaire donne le terme utilisé dans le guide, son équivalent (français ou anglais courant), une définition courte et la section où il est expliqué. Les valeurs chiffrées sont celles du §15.1 ; une définition ne remplace pas la section de renvoi.

Tri alphabétique (accents ignorés ; les termes commençant par un chiffre sont en tête). Les noms de perks ne figurent ici que lorsqu'ils servent de jargon (NOED) ; pour les 321 perks, voir les inventaires §9.7 et §10.10. Les callouts vocaux (« Sur moi », « Il part », « Je prends le save »…) sont traduits dans le lexique du §6.8.

| Terme | FR / EN | Définition | Voir |
|---|---|---|---|
| **2v8** | mode 2v8 | Mode événementiel récurrent à 2 tueurs et 8 survivants (13 gens dont 8 à réparer, 3 portes, 3 trappes). Ses règles ne s'appliquent jamais au 1v4 du guide. | 2.7, 5.2.5 |
| **3-gen** | trois gens | Les trois derniers gens à faire, proches les uns des autres, que le tueur peut défendre en patrouillant. | 2.2.4, 6.2 |
| **360** | 360 | Pivot autour du tueur au moment de sa fente pour la faire rater ; dernier recours en terrain ouvert. | 3.7 (T22) |
| **4-lane (4-wall gym)** | tile à quatre murs | Maze tile à quatre murs formant des couloirs ; orientation et contenu tirés au hasard. | 4.4.5 |
| **50/50** | pari à deux issues | Situation où chaque camp choisit sans connaître le choix de l'autre (continuer / revenir, vaulter / attendre). | 3.5 (T10) |
| **99** | gen à 99 % | Gen volontairement laissé à 99 % pour le finir au moment choisi (callout « 99 »). | 6.11 |
| **Abandon** | abandonner | Option LIVE (9.2.0) disponible au 3e passage au sol après avoir été relevé ou soigné de l'état mourant 2 fois. Refonte au PTB 10.2.0 (non LIVE). | 2.6.2 |
| **Action voyante** | Conspicuous Action | Action d'objectif (réparer, soigner, purifier, ouvrir…) qui coupe certaines perks (Will to Live, Off the Record) et l'Endurance de décrochage. Définition exacte non publiée. | 2.4.2, 15.5 |
| **Add-on** | add-on | Module d'objet (survivant) ou de pouvoir (tueur). Exclu des Diminishing Returns. | 11, 7-8 |
| **Alimenter les portes** | power the gates | Terminer le dernier gen requis : les portes deviennent ouvrables, l'anti-camp se désactive, l'Elusive de décrochage ne s'applique plus. | 2.10.4 |
| **Anti-camp** | Resolve / anti-facecamp | Jauge de l'accroché qui se remplit si le tueur reste à moins de 16 m ; pleine, elle garantit l'auto-décrochage. | 2.3.3, 6.4 |
| **Anti-loop** | anti-loop | Archétype de tueur dont le pouvoir raccourcit ou annule les boucles (ex. Blight, Nurse, Doctor). | 7 (typologie) |
| **Anti-slug** | anti-slug | Paquet de mesures testé aux PTB 9.2.0 et 9.3.0 (barre Resolve au sol, auto-relève) : **jamais sorti en LIVE**. | 1.4, 2.6 |
| **Anti-tunnel** | anti-tunnel | Perks ou systèmes qui protègent le survivant décroché. Les protections de base LIVE sont celles de 10.1.0 ; les versions de PTB 9.2.0 / 9.3.0 ont été annulées. | 2.4, 9.3.6 |
| **Archétype** | archetype | Famille de tueurs qui se jouent pareil : M1, anti-loop, ranged, mobilité, furtif, zone / piège, info, slug, coup unique. | 7 (typologie) |
| **Aura** | aura | Silhouette visible à travers les murs, donnée par une perk, un pouvoir ou la base du jeu. Bloquée par Blindness chez celui qui la lit, et par Elusive pour le tueur. | 2.9.5 |
| **Auto-décrochage** | Attempt Unhook / self-unhook | Tentative de se décrocher seul : 4 %, 3 essais, −20 s par échec. Possible seulement à 2 survivants ou avec Luck, Slippery Meat, Up the Ante (9.0.0). | 2.3.2 |
| **Basekit** | basekit | Effet présent sans perk ni add-on (ex. protections de décrochage, anti-camp). | 2 |
| **Bleed-out** | saigner à mort | Mort au sol au bout de 240 s cumulées d'état mourant. | 2.6.1 |
| **Blessed** | béni | Statut du survivant dans la zone de 24 m d'un Boon. | 2.7.1 |
| **Blindness** | aveuglement (statut) | Le porteur ne lit aucune aura, y compris celles de ses perks. | 2.7.1 |
| **Bloodlust** | Bloodlust | Bonus de vitesse du tueur en poursuite prolongée : +0,2 / +0,4 / +0,6 m/s à 15 / 25 / 35 s ; perdu en cassant une palette, en frappant, en utilisant son pouvoir. | 3.3 (T06) |
| **Bloodpoints (BP)** | points de sang | Monnaie de progression hors partie. | 2.11.1 |
| **Body block** | blocage de corps | Se placer physiquement sur le trajet du tueur (collision) pour protéger un allié ou fermer un passage. | 3.7 (T20), 11 |
| **Boon** | Boon | Totem béni par un survivant (14 s, 28 s sur un Hex) ; effet dans une zone de 24 m ; le tueur l'éteint en 1 s. | 2.10.3 |
| **Boost au coup** | hit boost / speed boost on hit | Accélération du survivant touché : 1,8 s (VM), ×1,65 (SS). | 3.1 |
| **Broken** | Broken | Statut : impossible d'être soigné au-delà de blessé. | 2.7.1 |
| **Build** | build / loadout | Les 4 perks (et objet, add-ons, offrande) choisis pour une partie. | 9.4-9.5 |
| **Callout** | callout | Annonce vocale courte en SWF : priorité, sujet, état, lieu, direction, intention, en moins de 2 s. | 6.8 |
| **Carte** | map | Une des 44 cartes 1v4 en rotation ; les variantes II+ sont réservées aux Custom Games depuis 8.6.0. | 5 |
| **Carte mentale** | mental map | Ce que tu sais (fixe), ce que tu as vu (RNG observé) et ce qui a été consommé (palettes, gens). | 4.6.1 |
| **Casier** | locker | Cachette ; 5 s dedans met fin à la poursuite ; le tueur l'ouvre en 2,33 s (vide). | 2.10.1 |
| **Casse de palette** | pallet break | 2,34 s pour un tueur standard ; certaines casses par pouvoir, souvent conditionnées à un add-on. | 3.1, 4.5.2 |
| **Chaînage** | tile chaining | Suite de tiles assez proches pour passer de l'une à l'autre sans traverser de dead zone. | 4.6.1 |
| **Chase** | poursuite | État de poursuite : commence si le tueur voit un survivant qui court à ≤ 12 m ; finit à > 18 m, 5 s en casier, > 8 s sans ligne de vue ou hors ± 35°. | 2.9.1, 3.4 |
| **Chase break** | casser la poursuite | Mettre fin à la poursuite par la distance, la ligne de vue ou un casier. | 3.4 (T07) |
| **Checkspot** | checkspot | Point du trajet d'où l'on voit le tueur sans dévier ni perdre de distance. | 3.4 (T14) |
| **Cleanse** | purifier | Détruire un totem (14 s). | 2.10.3 |
| **Coffre** | chest | 3 par défaut ; ouverture 8 s ; la rareté est décidée par celui qui termine. | 2.10.2 |
| **Cooldown d'attaque** | attack cooldown | Temps de récupération du tueur : 2,7 s après un coup réussi, 1,5 s après un raté. | 3.1 |
| **Cornering** | cornering | Prendre les coins au plus serré pour raccourcir son trajet et casser la ligne de vue tôt. | 3.5 (T12) |
| **Counterplay** | counterplay | Réponse du survivant à un pouvoir, une perk ou une stratégie du tueur. | 7-8, 10 |
| **Coup de pied** | kick / damage generator | Action du tueur de 1,8 s : −5 % instantané, puis régression. | 2.2.3 |
| **Coup unique** | insta-down / one-shot | Attaque qui met à terre un survivant sain en un coup (ex. Exposed, Hillbilly, Shape en Evil Incarnate). | 7 (typologie) |
| **Crochet** | hook | Support où le tueur accroche un survivant ; 70 s par phase, 3e accrochage mortel. | 2.3 |
| **Crochet Fléau** | Scourge Hook | Crochet blanc désigné par une perk Scourge Hook ; il déclenche son effet quand on y est accroché. | 10 |
| **Cursed** | maudit | Statut du survivant touché par un Hex actif. | 2.7.1 |
| **Custom Game** | partie personnalisée | Partie privée ; seule façon de choisir une carte précise ou une variante II+. | 5.2.4, 14 |
| **Dead zone** | zone morte | Zone sans ressource de chase atteignable ; notion **relative** à l'avance du survivant. | 4.3.1 |
| **Déconnexion (pénalité)** | DC penalty | Pénalité appliquée à qui quitte ou se laisse mourir volontairement tôt (« going next », 9.0.0). | 2.6.2 |
| **Deep Wound** | Deep Wound | Barre de 20 s qui se vide hors course et hors mending ; à zéro, état mourant. Mending 10 s seul, 6 s par un allié. | 2.7.1 |
| **Diminishing Returns (DR)** | rendements décroissants | Depuis 9.6.0, des modificateurs identiques se réduisent : 100 / 50 / 25 / 12,5 / 5 % ; add-ons exclus. | 2.8 |
| **Double-back** | demi-tour | Faire demi-tour sur une tile pour lire ou tromper le tueur. | 3.5 (T09) |
| **Drop (de palette)** | drop / pallet drop | Faire tomber une palette ; stun de 2 s si le tueur est dessous vers la moitié de l'abaissement. | 3.3 (T04) |
| **Elusive** | Elusive | Statut survivant (9.4.0) : supprime griffures, grognements et flaques ; bloque la révélation d'aura au tueur. Donné 10 s au décrochage (10.1.0). | 2.7.1 |
| **Endgame** | fin de partie | Phase après l'alimentation des portes : portes, trappe, EGC. | 6.11 |
| **Endgame Collapse (EGC)** | effondrement | Compte à rebours de 120 s déclenché par l'ouverture d'une porte ou la fermeture de la trappe. | 2.10.6 |
| **Endurance** | Endurance | Statut survivant : un coup qui mettrait au sol donne Deep Wound à la place. Annulée par une action voyante. | 2.7.1 |
| **Entité** | Entity | Force du jeu qui bloque gens, fenêtres, portes ou totems (« bloqué par l'Entité »). | 2 |
| **Épuisement (perk d')** | exhaustion perk | Perk qui donne un boost puis le statut Exhausted (Sprint Burst, Lithe, Dead Hard…) ; une seule utile à la fois. | 9.3.1 |
| **Escape route** | itinéraire de fuite | Chemin de sortie prévu avant d'en avoir besoin, avec son déclencheur. | 4.6.1 |
| **État de partie** | game state | Situation type (14 dans le guide) qui change les priorités de l'équipe. | 6.10 |
| **État mourant** | dying state / downed | Survivant au sol : rampe à 0,7 m/s, récupère seul jusqu'à 95 % à l'arrêt, meurt au bout de 240 s. | 2.6 |
| **Exhausted** | épuisé | Statut qui interdit les perks d'épuisement ; se recharge en marchant, accroupi ou immobile. | 2.7.1 |
| **Exile** | Exil | Mécanique de The Judgment : compte comme un état de crochet sans déclencher les perks de crochet. | 2.4.5, 8 |
| **Exposed** | exposé | Statut : une attaque de base met directement à terre (sauf Endurance). | 2.7.1 |
| **Face camp** | face camping | Tueur collé au crochet (≤ 4 m) : la jauge anti-camp se remplit en ≈ 22,5 s. | 6.4 |
| **Fake vault / fake pallet** | feinte | Simuler un vault ou un drop pour faire réagir le tueur. | 3.5 (T17) |
| **Fast vault** | saut rapide | Vault de fenêtre en 0,5 s qui garde l'élan (≥ 2,5 m de course droite). Voir aussi « Rushed Vault ». | 3.3 (T03) |
| **Fente** | lunge | Attaque de base chargée du tueur ; ~6,9 m/s pendant la frappe ; distance non publiée. | 3.3 (T02) |
| **Filler** | filler | Palette ou petite structure « de remplissage » entre les grandes tiles. | 4.4.8 |
| **Flaques de sang** | pools of blood | Traces du survivant blessé ; durée de vie de base non publiée. | 2.9.2 |
| **Flash save** | sauvetage à la lampe | Aveugler le tueur qui porte un survivant : tout aveuglement ou étourdissement du porteur libère le survivant. | 11 |
| **Forced path** | trajet imposé | Trajet dicté par la géométrie ou une ressource (palette baissée, couloir, sortie unique). | 3.8.6 |
| **FOV** | champ de vision | Angle de vue du tueur (87° par défaut) ; sortir de ± 35° du centre peut finir la poursuite. | 2.9.1 |
| **Game sense** | lecture de partie | Prévoir la position du tueur, des coéquipiers et l'état des gens avec une information incomplète. | 6.9 |
| **Gate camp** | camper la porte | Tueur qui garde les portes en fin de partie. | 6.11 |
| **Gen** | générateur | Objectif principal : 90 charges, 90 s en solo. | 2.2 |
| **God pallet** | god pallet | Palette dont la boucle est particulièrement forte ; ne se « garde » pas en toute circonstance. | 4.4.13 |
| **Good / Great** | Good / Great skill check | Zones du cadran de skill check : Good 13 %, Great 3 % (+1 % de progression sur un gen). | 2.2.2 |
| **Grâce (anti-camp)** | grace period | Pause de 7 s de la jauge anti-camp pour tous les accrochés à chaque nouvel accrochage (9.3.0). | 2.3.3 |
| **Greed** | greed | Rester sur une tile au-delà du moment « sûr » pour gagner du temps, en acceptant le risque. | 3.3 (T05) |
| **Griffures** | scratch marks | Traces laissées par un survivant qui court ; durent 10 s ; supprimées par Elusive. | 2.9.2 |
| **Grognements** | grunts of pain | Sons du survivant blessé ; portée non publiée. | 2.9.2 |
| **Haemorrhage** | hémorragie | Statut : plus de flaques de sang ; un soin interrompu régresse. | 2.7.1 |
| **Haste** | Haste | Bonus de vitesse de déplacement ; soumis aux DR depuis 9.6.0 pour les perks ; aucun plafond trouvé. | 2.7.1 |
| **Hatch standoff** | standoff de trappe | Dernier survivant et tueur autour de la trappe, chacun attendant l'erreur de l'autre. | 6.11 |
| **Heresy** | Hérésie | Mécanique de The Judgment (pas un statut général). | 2.7.3 |
| **Hex** | Hex | Perk du tueur liée à un totem allumé ; détruire le totem l'annule. | 2.10.3 |
| **Hindered** | ralenti | Malus de vitesse de déplacement. | 2.7.1 |
| **Hitbox / hurtbox** | hitbox | Volumes de collision de l'attaque et du corps ; forme et taille non publiées. | 3.7 (T21) |
| **Hook stage** | phase de crochet | Chaque accrochage fait passer à la phase suivante ; 3 accrochages = mort. | 2.3.1, 6.3 |
| **HUD** | interface | Portraits, icônes et barres visibles en partie ; source principale d'information en SoloQ. | 6.7 |
| **Hugging** | hugging | Longer les murs au plus près pour raccourcir son trajet. | 3.5 (T13) |
| **Impaled** | empalé | Statut propre à The Slasher (10.0.0) : ne peut pas être soigné au-delà de blessé. | 2.7.1 |
| **Jungle gym LW / SW** | jungle gym long / short wall | Maze tile classique à fenêtre et palette ; variante à mur long ou court. | 4.4.2-4.4.3 |
| **Killer Instinct** | instinct du tueur | Signal qui révèle la position d'un survivant au tueur (déclenché par certains pouvoirs et perks). | 7-8, 10 |
| **Killer Shack** | cabane du tueur | Structure fixe de la plupart des cartes : 1 fenêtre, 2 ouvertures dont 1 avec palette ; sous-sol possible. | 4.4.1 |
| **L-T walls** | murs en L et en T | Maze tile de deux murs ; orientation aléatoire. | 4.4.4 |
| **LIVE** | LIVE | Version jouée en matchmaking public. Référence du guide : 10.1.2a. | 1.1 |
| **Loop** | boucle | Tourner autour d'un obstacle pour que le tueur ne rattrape pas ; aucune loop n'est infinie en LIVE. | 4.1.2, 4.2 |
| **Loop sûre** | safe loop | Loop où ton temps de passage (porte comprise) reste inférieur au temps du tueur ; se compare en **temps**, pas en mètres. | 3.2, 4.2.2 |
| **LOS** | ligne de vue | Ce que le tueur voit ; la couper permet de casser la poursuite ou un mindgame. | 3.4 (T07) |
| **Lullaby** | berceuse | Son qui remplace le battement de cœur chez certains tueurs (Huntress 45 m, Nightmare pour un survivant endormi) ; non affecté par Undetectable. | 2.9.1 |
| **M1 (tueur)** | tueur M1 | Tueur sans outil qui contourne les boucles ; il gagne surtout par la Bloodlust et les mindgames. | 7 (typologie) |
| **Macro** | macro | Décisions d'équipe à l'échelle de la partie : gens, crochets, soins, positions. | 6 |
| **Main building** | bâtiment principal | Grande structure centrale d'une carte, souvent avec fenêtre forte et palettes. | 4.4.10 |
| **Mangled** | Mangled | Statut : soin plus long (vitesse −20 %). | 2.7.1 |
| **Maze tile** | maze tile | Tile générée dans le pool commun (jungle gyms, L-T, 4-lane…). | 4.4 |
| **Medium vault** | saut moyen | Vault de fenêtre en 0,9 s. | 3.3 (T03) |
| **Mending** | mending | Action pour vider la barre de Deep Wound : 10 s seul, 6 s par un allié. | 2.7.1 |
| **Mindgame** | mindgame | Tromper la lecture de l'autre (tueur ou survivant) pour gagner un cycle. | 3.5 (T10) |
| **MMR** | MMR | Cote de matchmaking ; depuis 10.1.0, elle compte d'autres actions que kills et évasions (VP). | 2.11.3 |
| **Mobilité (tueur)** | mobility killer | Archétype qui traverse vite la carte (Hillbilly, Blight, Nurse…). | 7 (typologie) |
| **Moonwalk** | moonwalk | Reculer face au survivant pour cacher sa direction (tache rouge) ; vitesse non documentée. | 3.4 (T08) |
| **Mori** | Mori | Exécution par le tueur ; possible à 2 survivants restants depuis 9.0.0. | 1.4, 2.3.5 |
| **NOED** | Hex: No One Escapes Death | Hex qui s'active à l'alimentation des portes (Exposed). | 10 |
| **Oblivious** | inconscient | Statut survivant : n'entend ni le TR ni le battement de cœur. | 2.7.1 |
| **Obsession** | Obsession | Survivant désigné par certaines perks du tueur ou des survivants. | 9, 10 |
| **Offrande** | offering | Consommable brûlé avant la partie ; offrandes de royaume : 20 % fixes, doublons non cumulables (9.0.0). | 2.11.2 |
| **Option coverage** | couverture d'options | Se placer pour qu'une seule position couvre plusieurs options de l'adversaire. | 3.8.7 |
| **Palette** | pallet | Obstacle à faire tomber : stun 2 s, casse 2,34 s, vault 1,1 s. | 3.1, 4 |
| **Pallet gym** | pallet gym | Maze tile centrée sur une palette. | 4.4.6 |
| **Pathing** | pathing | Choix du trajet sur et entre les tiles. | 3.5 (T11) |
| **Perk deduction** | déduction de perks | Déduire le loadout caché du tueur à partir de signaux observables. | 10 |
| **Pointes (gen)** | spiked gen | Pointes visibles sur un gen dès le 4e regression event. | 2.2.3 |
| **Pre-drop** | pre-drop | Faire tomber la palette avant que le tueur soit dessous ; pas universel. | 3.3 (T05), 4.5.3 |
| **Pre-run** | pre-run | Se diriger vers une zone forte avant que la poursuite commence. | 3.6 (T23) |
| **Protection hit** | protection hit | Prendre un coup à la place d'un allié plus exposé. | 6.8 |
| **Protections de décrochage** | unhook protections | Endurance + 10 % Haste 10 s + Elusive 10 s (10.1.0). | 2.4 |
| **Proxy camp** | proxy camping | Tueur qui patrouille à distance du crochet ; au-delà de 16 m, la jauge anti-camp ne se remplit pas. | 6.4 |
| **PTB** | Public Test Build | Serveur de test public ; ses valeurs ne sont pas LIVE et peuvent changer ou être annulées. | 1.2 |
| **Rampement** | crawling | Déplacement au sol : 0,7 m/s constant ; met la récupération en pause (sauf Tenacity). | 2.6.1 |
| **Ranged (tueur)** | tueur à distance | Archétype qui frappe à distance (Huntress, Deathslinger…). | 7 (typologie) |
| **Realm** | royaume | Groupe de cartes au même décor ; 20 royaumes ont une carte 1v4 LIVE. | 5.2 |
| **Red stain** | tache rouge | Lumière rouge devant le tueur qui indique où il regarde ; supprimée par Undetectable. | 2.9.3, 3.4 (T08) |
| **Régression** | regression | Perte continue de progression d'un gen frappé : −0,25 charge/s. | 2.2.3 |
| **Regression event** | événement de régression | Perte instantanée ≥ 2,5 % causée par le tueur ; 8 max par gen. | 2.2.3 |
| **Reset** | reset | Moment où l'équipe se regroupe pour se soigner ou se replacer. | 6.5 |
| **Resource denial** | privation de ressources | Faire consommer ou détruire les ressources de l'autre camp (palettes, pouvoir). | 3.8.5 |
| **Resource route** | itinéraire de ressources | Chemin qui passe par le plus de ressources non consommées. | 4.6.1 |
| **Respect (palette)** | respect | Le tueur s'arrête devant une palette debout pour ne pas prendre le stun. | 3.3 (T05) |
| **RNG** | aléatoire | Tout ce qui est tiré à chaque partie (tiles, gens, palettes…), par opposition au fixe. | 4.1.3, 5.1 |
| **Rushed Vault** | vault rapide | Terme du jeu pour le saut rapide ; déclencheur de Lithe ; l'inclusion du saut moyen n'est pas établie (INC). | 9 |
| **Sabotage** | sabotage | Casser un crochet (3 s) ; il se répare seul en 30 s ; les crochets du sous-sol sont insabotables. | 2.3.4, 11 |
| **Sacrifice** | sacrifice | Mort sur le crochet (3e accrochage ou fin de la phase Struggle). | 2.3.1 |
| **Save** | sauvetage | Décrocher un allié ou lui éviter la mise au crochet. | 6.3 |
| **Secondes-survivant (s-surv)** | survivor-seconds | Unité du guide : une seconde de travail d'un survivant. Un gen solo = 90 s-surv. | 6.1 |
| **Skill check** | skill check | Test d'adresse pendant une action ; raté sur un gen : −10 % et 3 s bloquées. | 2.2.2 |
| **Slow vault** | saut lent | Vault de fenêtre en 1,5 s. | 3.3 (T03) |
| **Slug** | slug | Laisser un survivant au sol au lieu de l'accrocher. | 6.4 |
| **Snowball** | snowball | Enchaînement où un avantage en crée un autre plus vite qu'on ne le rattrape. | 6.9 |
| **SoloQ** | Solo Queue | Partie sans vocal avec des inconnus ; le HUD est la source principale d'information. | 6.7 |
| **Split pressure** | pression divisée | Occuper le tueur à deux endroits à la fois. | 6.5 |
| **Stealth** | furtivité | Jouer caché ; archétype de tueur furtif (Undetectable, sans TR). | 9.3.9, 7 |
| **Struggle** | lutte | Deuxième phase de crochet (50 → 1 %) ; à 2 survivants, 2 checks ratés = sacrifice immédiat. | 2.3.1-2.3.2 |
| **Stun** | étourdissement | Tueur immobilisé (palette : 2 s ; Will to Live : 4 s). | 3.1 |
| **Surrender** | se rendre | Option quand tous les survivants sont au sol (8.6.0). Refonte au PTB 10.2.0 (non LIVE). | 2.6.2 |
| **Survivor Intent System** | roue d'intentions | Roue de 8 messages prédéfinis testée au PTB 10.2.0 : **n'existe pas en LIVE**. | 1.2.1 |
| **SWF** | Survive With Friends | Groupe de survivants qui jouent ensemble, en général en vocal. | 6.8 |
| **Tempo** | tempo | Rythme des événements décisifs (gens finis, crochets, sauvetages). | 3.8.9 |
| **Terror Radius (TR)** | rayon de terreur | Zone où l'on entend le battement de cœur du tueur ; 32 m ou 24 m à l'origine, nombreuses exceptions. | 2.9.1 |
| **Tile** | tile | Bloc de décor qui offre une boucle (fenêtre, palette, murs). | 4 |
| **Totem** | totem | 5 par partie ; support des Hex et des Boons. | 2.10.3 |
| **Trade** | trade | Décrochage sous les yeux du tueur, accepté par l'équipe : on échange un état de santé contre du temps. | 6.3 |
| **Trappe** | hatch | Issue de secours du dernier survivant. | 2.10.5 |
| **Tunnel / tunneling** | tunneling | Tueur qui poursuit en priorité le survivant qu'on vient de décrocher. | 6.4 |
| **Undetectable** | indétectable | Statut tueur : pas de TR ni de tache rouge, aura cachée ; un stinger sonore marque la fin. | 2.7.1 |
| **Vault** | saut | Franchir une fenêtre ou une palette tombée. | 3.3 (T03) |
| **Wiggle** | se débattre | Se débattre sur l'épaule du tueur : 16 s cumulées si tous les tests sont réussis. | 2.3.1 |
| **Zone / piège (tueur)** | trap killer | Archétype qui prépare le terrain (Trapper, Hag…) ; son temps de préparation est ta ressource. | 7 (typologie) |
| **Zone épuisée** | dead area / used zone | Zone où les palettes sont consommées ; à éviter pour la chase suivante. | 6.9 |
| **Zoning** | zoning | Se placer pour rendre des options trop dangereuses et pousser l'adversaire vers une zone. | 3.8.6 |

> **À retenir** : trois paires sont souvent confondues. **Oblivious** (le survivant n'entend pas le TR) ≠ **Undetectable** (le tueur n'émet pas de TR). **Endurance** du survivant (encaisse un coup) ≠ perk **Enduring** du tueur (stuns de palette plus courts). **Fast vault** (0,5 s, garde l'élan) ≠ « vault » en général.

> **Erreur fréquente** : parler de « mode classé ». Dead by Daylight n'a pas de mode classé distinct : le wiki appelle « ranked » le matchmaking public (MMR), par opposition aux Custom Games.

Détail : chapitre 2 §2.7 (statuts) ; chapitre 3 (techniques T01-T23) ; chapitre 4 §4.6.1 ; chapitre 6 §6.8 (lexique des callouts).

---

## 15.3 Patchs 2025-2026 et PTB 10.2.0 `[Intermédiaire]`

Version condensée du §1.4 (qui détaille chaque hotfix et ce qu'il change pour toi). Dates de sortie : wiki.gg ; les articles BHVR paraissent souvent 2-3 jours plus tard.

### 15.3.1 De 9.0.0 à 10.1.2a

| Patch (sortie) | Ce qui compte encore en LIVE 10.1.2a |
|---|---|
| **9.0.0** (17/06/2025) | The Animatronic, Freddy Fazbear's Pizza. Auto-décrochage restreint (2 survivants, Luck, Slippery Meat, Up the Ante). Offrandes de royaume 20 % non cumulables. Perks du Cenobite renommées |
| **9.1.0** (29/07/2025) | À 2 survivants : 2 checks de lutte manqués = sacrifice. Fog Vial. Built to Last 14/12/10 s |
| **9.2.0** (23/09/2025) | The Krasue. Récupération au sol automatique, **Abandon**. Rework de The Shape. Palettes redistribuées sur 10 royaumes. Ruin, DMS, Oppression LIVE ; **Pop et Eruption reportés** ; anti-tunnel et anti-slug du PTB reportés |
| 9.2.2 / 9.2.3 (07-21/10/2025) | Off the Record récupère l'Endurance ; Shape : Evil Incarnate 60 s |
| **9.3.0** (25/11/2025) | Protections du PTB **annulées** ; décrochage : Endurance + Haste 15 s ; anti-camp 16 m, grâce 7 s, ×1/×2/×4. Palettes moins sûres sur 5 royaumes et la carte Mount Ormond Resort. Anti-Exhaustion Syringe |
| 9.3.2 (09/12/2025) | Loops trop courtes rallongées sur 7 royaumes |
| **9.4.0** (27/01/2026) | The First. Premier statut Elusive. Licence Halloween retirée : Decisive Strike → Will to Live, etc. Lampkin Lane retirée |
| **9.5.0** (17/03/2026) | Rework du Trickster ; Sleepless District. Unbreakable restreinte ; Pop réécrite (20 % au total) ; Fog Vial 4 charges |
| **9.6.0** (28/04/2026) | **Diminishing Returns**. Nerf de la Blight (4,4 m/s, tokens perdus en cassant). Loadouts des coéquipiers visibles ; celui du tueur caché |
| **10.0.0** (16/06/2026) | The Slasher, statut Impaled |
| **10.1.0** (25/08/2026) | The Judgment. **Protections : Endurance + 10 % Haste 10 s + Elusive 10 s.** MMR élargi. Sprint Burst, Adrenaline, Deliverance, Technician, Nowhere to Hide 24 m |
| 10.1.1 / 10.1.2 (01-08/09/2026) | Knight (gardes et palettes), Vigil 20/25/30 %, Repressed Alliance 40/35/30 s ; Judgment |
| **10.1.2a** (17/09/2026) | Édition serveur : Divine Light en Zealous à 0,6 s. **Version de référence** |

> **À retenir** : n'ont **jamais** été LIVE les protections de décrochage de 30 s, les « Unique Hook Bonuses », le bonus de réparation après une mort précoce, la barre Resolve anti-slug (90 puis 120 s), l'anti-camp à 20 m et toute auto-relève de base.

### 15.3.2 Ce que le PTB 10.2.0 changerait — **PTB 10.2.0, non LIVE**

Source : note officielle 559 et page wiki du patch. BHVR modifie souvent un PTB avant la sortie ; en 2025, deux paquets testés au PTB ne sont jamais sortis. Ne joue avec aucune de ces valeurs avant la note **de sortie**.

| Domaine | Changement testé | Où relire à la sortie |
|---|---|---|
| Système | **Survivor Intent System** (roue de 8 messages, sourdine possible) | ch. 6 (SoloQ) |
| Fin de partie | Surrender quand tous sont au sol ; Abandon et **End Trial** quand il ne reste que des bots | ch. 2 §2.6.2 |
| Perks (58 : 27 tueur, 31 survivant) | 26 touchées à cause des DR, 23 générales remises à niveau, 9 jugées « oppressives » | ch. 9, 10 |
| Perks tueur marquantes | Dead Man's Switch (lâcher > 2 s), Dissolution et Blood Favour (coup de base seulement), Distressing (ralentit les gens dans le TR), Dominance, Nothing but Misery (vaults −10 %), Thrill of the Hunt, Insidious, Knock Out (10 m, Hindered 20 %), Ravenous, Monstrous Shrine, Shattered Hope, Undone, Help Wanted / Machine Learning (3 gens) | ch. 1 §1.2.2, ch. 10 §10.9 |
| Perks survivant marquantes | Borrowed Time, Windows of Opportunity (fenêtres seulement), Self-Preservation (13/14/15 s), Shoulder the Burden (Broken), Spine Chill, Stake Out, Down to the Last, Premonition, Kindred (14/15/16 m) | ch. 1 §1.2.2, ch. 9 §9.6 |
| Bugs connus du PTB | Divine Light qui détecte les survivants en casier, This is Not Happening, Stake Out | — (bugs du PTB, pas du LIVE) |

Détail : chapitre 1 §1.2-1.4 ; `kb/sources/patches/official_510.txt` à `official_559.txt` ; `kb/sources/patches/patch_9.0.0.txt` à `patch_10.2.0.txt`.

---

## 15.4 Ce qui a changé par rapport à l'ancien guide `[Intermédiaire]`

Le PDF d'origine (`DBD_Guide_Avance_2026.pdf`, 140 p.) a été traité comme une liste d'affirmations à vérifier. Seules les affirmations **tranchées par une source** sont listées ici ; un soupçon n'est pas une correction. Liste complète : `kb/ledgers/OUTDATED_CONTENT_REPORT.md`.

### 15.4.1 Bilan chiffré

| Catégorie | Nombre | Source |
|---|---:|---|
| Erreurs prouvées en phase 0 (partie A1) | 17 lignes (A-186 annulée) | rapport, partie A |
| Erreurs distinctes prouvées ensuite (B1 + B4 + B5, sans doublon) | **59**, dont **55 nouvelles** | rapport, B6 |
| Imprécisions à impact (conseil faux si appliqué à la lettre) | 64 points | rapport, B2 |
| « Le seed avait raison » (suspicions infirmées) | 11 (phase 0) + **42** | rapport, A3 et B3 |

### 15.4.2 Erreurs prouvées (condensé)

| Domaine | Le seed disait | Réalité LIVE 10.1.2a | Preuve |
|---|---|---|---|
| Générateurs | Gen solo ≈ 80 s ; 1 s de chase ≈ 1/3 de gen ; kick à 5 % depuis 2025 | **90 s** ; ≈ **1/30** de gen avec 3 réparateurs ; 5 % depuis **7.5.0** (2024) | wiki ; calcul ; wiki 7.5.X |
| Crochets | Protections inactives portes alimentées ; l'anti-camp gère le proxy camp | Seule l'**Elusive** disparaît ; rien au-delà de **16 m** | notes 556, 529 |
| Système | Offrandes cumulables ; perks du tueur visibles après la 1re chase ; Hyperfocus hors DR | **20 %** fixes ; loadout caché ; skill check soumis aux DR | notes 510, 544 |
| Chase | Casse de palette 2,6 s ; « le vault annule l'élan » ; loops infinies | **2,34 s** ; faux pour le fast vault ; **aucune** loop infinie | notes 6.1.0 ; wiki Windows |
| Perks survivant | Vigil 30 % ; Repressed Alliance 55/50/45 s ; Technician −8 m ; Quick Gambit et Circle of Healing inversés ; Babysitter « rework 9.2.0 » ; Distortion « buff 9.5.0 » | 20/25/30 % ; 40/35/30 s ; 16 m ; effets dans l'autre sens ; rework reporté puis annulé ; buff en 8.3.2 | notes 557, 556, 523, 529 ; wiki |
| Perks tueur | Nowhere to Hide 18 m ; Pop −15 % en 9.2.0 ; « Surge (ex-Jolt) » ; Weeping Wounds + Mangled ; Leverage sur le décroché ; noms du Cenobite | **24 m** ; reporté ; Surge est le nom d'origine ; Haemorrhage seul ; le **sauveteur** ; renommées en 9.0.0 | notes 556, 523, 510 ; wiki |
| Tueurs | Doctor contré par la LOS ; lampe contre Hag et Wraith ; add-ons inexistants (Prayer Beads, Gold Belt Buckle, Infantry Belt de capacité) ; Dredge rempli par les survivants en casier ; Artist bloqué par les murs ; Unknown « grand » ; « Huntress plus haut kill rate » | Static Blast traverse les obstacles ; supprimé en 6.7.0 ; absents de la liste LIVE ; c'est le Dredge caché ; les Swarms traversent tout ; taille moyenne ; pick rate le plus large, kill rate n°1 = The Lich | wiki (pages tueurs) ; KB 540 |
| Objets | Kit + Anti-Exhaustion Syringe + Styptic Agent cumulables ; TIR Optic élargit le faisceau | La seringue consomme le kit ; seule Wide Lens élargit | wiki (add-ons) |
| Cartes et tiles | Debris / Trash pile = deux tiles ; T-L « souvent horaires » ; entrées fixes à Treatment Theatre | Une seule tile ; orientation RNG ; entrées RNG (2.7.0) | wiki Maze Tiles, cartes |
| Statistiques | +3/+8 points en vocal ; ~70 kill rates sans effectif ; kill rates de cartes de 3 périodes mélangées | **Retirés** (aucune source, ou périodes et effectifs absents) | rapport A2 |

### 15.4.3 Le seed avait raison (ne pas « corriger »)

Ces valeurs ont été soupçonnées (mémoire du modèle, résumés de recherche obsolètes, audit de phase 0) puis **confirmées** par la page complète ou la note officielle : phases de crochet 70 s ; casse de palette 2,34 s ; stun de Will to Live 4 s ; mending 10 s / 6 s ; coffre 8 s ; MMR fondé aussi sur les actions ; **Iron Will 80/90/100 %** ; **Built to Last 14/12/10 s** ; **Huntress 7 hachettes** ; TR 40 m (Hillbilly, Blight, Mastermind, Ghoul) et 24 m (Hag, Pig, Onryō, Skull Merchant) ; **Anti-Exhaustion Syringe** (A-186 annulée) ; Quick & Quiet, Deception, Terminus, Dark Theory, Déjà Vu, Eruption −10 %, Knock Out LIVE 6 m / 5 % ; rampement 0,7 m/s ; portage 3,68 m/s ; casse de base du Hillbilly à la tronçonneuse ; Fog Vial 4 charges.

> **Note avancée** : l'audit de phase 0 s'est lui-même trompé cinq fois (errata) : casse de palette par Good Guy, Lich, Mastermind et Knight, et historique de Pop / Eruption en 9.2.0. Leçon : seule une vérification sourcée modifie le texte, quelle que soit la source du soupçon.

### 15.4.4 PTB présenté comme LIVE, et 2v8 mêlé au 1v4

| Type | Élément du seed | Réalité |
|---|---|---|
| PTB 10.1.0 | Nowhere to Hide 18 m | LIVE 24 m |
| PTB 10.2.0 | Superior Anatomy « 10 s » ; Machine Learning 10 % ; Unbound 5 % / 25 s ; Dark Arrogance +25 % ; Ravenous 80-90 s ; rework d'Undone ; **Survivor Intent System** « disponible » | LIVE : un seul vault ; 8 % ; 7 % / 10 s ; +15 % ; 40/50/60 s ; version à jetons de skill checks ratés ; **n'existe pas** |
| 2v8 | Good Guy qui casse les palettes et « très buffé » (9.4.2) | Buffs et casse propres au 2v8 ; en 1v4, casse seulement avec Hard Hat |
| 2v8 | Mother's Dwelling « 188-200 » sqT | 152 sqT en 1v4 (200 = version 2v8) |
| 2v8 | « Jusqu'à 3 soigneurs » | **2** en 1v4 ; 3 en 2v8 seulement |

À l'inverse, le seed étiquetait **correctement** comme PTB plusieurs valeurs de sa page 98 (Deerstalker 4 s, Fire Up, Knock Out 10 m, Distressing, Shattered Hope…).

Détail : `kb/ledgers/OUTDATED_CONTENT_REPORT.md` (parties A et B) ; chapitre 1 §1.9 ; `kb/ledgers/AUDIT_PHASE0_ERRATA.md`.

---

## 15.5 Questions ouvertes et conflits non tranchés `[Avancé]`

Ce qui suit **n'est pas enseigné comme un fait** dans le guide. Quand un chapitre en parle, il porte **[INCERTAIN]** ou (INC). Source : `kb/ledgers/OPEN_QUESTIONS.md` partie B (état final du 27/09/2026 : **117 questions ouvertes**, 23 tranchées depuis la phase 0) et `kb/ledgers/CONFLICT_REGISTER.md` (113 conflits relevés pendant les lots, 85 résolus, **26 conflits distincts encore ouverts**, plus 4 de la phase 0).

### 15.5.1 Questions ouvertes, par thème

| Thème (n° dans OPEN_QUESTIONS) | Questions clés | Comment les trancher |
|---|---|---|
| PTB 10.2.0 et version (1-7) | 10.2.0 est-il sorti ? Valeurs finales des 58 perks ; liste des 26 perks ajustées « à cause des DR » ; 51 pages wiki qui montrent le texte PTB ; bug de Head On contre la Nurse en LIVE | Note de sortie officielle, puis relecture des pages |
| Diminishing Returns (8-14) | **Liste itemisée** des modificateurs concernés ; blocages de gens et pertes instantanées (Pop, Pain Resonance, Eruption…) ; Endurance et effets de base ; couples de perks de réparation, de soin, de Luck | Manuel en jeu (9.6.1), à transcrire |
| Chase (15-25) | Distance de la fente ; hitbox ; durée d'abaissement d'une palette ; Bloodlust perdue sur stun ou aveuglement ; temporisation de la fin de poursuite ; plafond de Haste ; palette contre projectiles | Tests chronométrés en Custom Game |
| Objectifs et crochets (26-39) | **Elusive de décrochage et action voyante** ; définition exacte d'une action voyante ; durée du ramassage ; règles fines des sauvetages ; conditions de la trappe ; Mori de fin ; Pain Resonance au plafond de 8 events | Tests en jeu ; wiki (historique) |
| Perks survivant (40-55) | **Off the Record désactivée portes alimentées ?** (penche oui) ; saut moyen de Lithe / Cut Loose ; Dance With Me rang I ; Fast Track (5 % ou 5 charges) ; Teamwork: Throw Down ; Lightweight | Tests ; historique wiki |
| Perks tueur (56-68) | Crochets Fléau visibles côté survivant ? Casiers contre BBQ ; Distressing palier 2 (25 ou 23 %) ; Batteries Included aux portes ; Undone LIVE ; Pentimento et Boons | Tests ; note de sortie 10.2.0 |
| Tueurs (69-85) | Nurse et fenêtres ; tokens de la Blight à ≤ 3 tokens ; délai des orbes de l'Oni ; Twins et Unbreakable ; Cenobite enchaîné et vault ; The First (casier, liane, palettes) ; Judgment (Repent, Heresy) | Tests ; notes 8.x non archivées |
| Objets (86-93) | Charges de l'Alex's Toolbox (18 ou 24) ; charges d'une fouille (8 ou 10) ; probabilités de coffre actuelles ; cumul des add-ons ; soin au kit 1,5 état | Tests ; wiki |
| Tiles et cartes (94-103) | Exclusivités de tiles par royaume après 9.2.0 ; distance minimale entre palettes ; **nombre de palettes par carte après 9.3.2** ; positions des portes ; tailles de RPD et Trickster's Delusion ; fiches peu documentées (Rotten Fields, Dead Sands, Freddy Fazbear's Pizza, Fallen Refuge) | Custom Games, relevés |
| Statistiques et compétitif (104-110) | Infographies officielles (kill rates par tueur, SWF 2024) ; définitions des taux ; reset MMR 10.1.0 ; NightLight ; règlement DBDLeague ; VOD de référence ; guides experts écrits | Accès aux images, à NightLight, à DBDL, à YouTube / Twitch |
| Entraînement et modèles (111-117) | Paramètres des modèles de chase (efficacité, `T_loop`, probabilité de coup) ; valeur d'un état de santé en secondes ; seuils du programme d'entraînement | Mesures sur ses propres parties (ch. 14) |

### 15.5.2 Conflits encore ouverts

| ID | Sujet | Ce que le guide retient | Impact pour toi |
|---|---|---|---|
| **L12-04** | L'Elusive de décrochage est-elle perdue sur une action voyante ? | Wiki Hooks et wiki Elusive se contredisent ; note 556 muette → INC | Ne compte pas sur l'Elusive si tu répares tout de suite |
| **L2P23-04 = L12-05** | Off the Record désactivée portes alimentées ? | Penche « oui », non prouvé → INC | Ne la compte pas en fin de partie |
| **B4G3-04** | Coût d'une casse pour la Blight à ≤ 3 tokens (après 9.6.2) | Partiel (note 546) | Le pre-drop contre elle reste une lecture |
| **L7-01 = B8-03** | Exclusivités de maze tiles par royaume | Non tranché | N'apprends pas une tile comme « propre » à un royaume |
| L7-02 | Distance minimale entre palettes | 14-20 m retenu (SS) | Ordre de grandeur seulement |
| B4G3-05, B4G3-07, L4G4-05 | Délai des orbes de l'Oni ; Undetectable des add-ons du Demogorgon ; totems de Pentimento bénissables | Non tranchés | Détails de fiches tueur |
| B4G3-02, B4G6-01, B4G6-02 | Twins au haut MMR en 2026 ; « Ghoul > 60 % » ; « The First n°2 » | Infographies illisibles → aucun chiffre retenu | Aucun |
| P24-03, P25-05, B2P26-03, P27-03, 2-P28-03 | Date de Circle of Healing ; Dance With Me rang I ; Lightweight ; Fast Track ; Throw Down | Écarts faibles ou sans impact LIVE | Faible |
| L3-94-03, K95-03, K96-05 | Distressing palier 2 ; Batteries Included aux portes ; rework PTB d'Undone | Non tranchés (Undone : sans impact LIVE) | Faible |
| L5-02 à L5-04, L5-06 | Toolbox d'Alex ; charges de fouille ; probabilités de coffre ; soin au kit | Valeur du wiki retenue, marquée | Faible |
| B8-02, B8-06, B8-07 | Réductions 9.2.0 de deux cartes ; désactivation temporaire de 3 cartes ; hauteur des murs d'Autohaven | Attribution ou vérification visuelle manquantes | Faible |
| G04 ; ST-02 / ST-04 / ST-06 (phase 0) | Reset MMR 10.1.0 ; statistiques | Aucune source primaire | Aucun chiffre enseigné |

> **À retenir** : aucun conflit ouvert ne change une valeur LIVE **centrale** d'une perk ou d'un pouvoir. Les quatre plus utiles à trancher en jeu : Elusive et action voyante, Off the Record aux portes, tokens de la Blight, exclusivités de tiles.

Détail : `kb/ledgers/OPEN_QUESTIONS.md` (partie B) ; `kb/ledgers/CONFLICT_REGISTER.md` (« Conflits des lots 2-11 après re-vérification ») ; chapitre 2 §2.12 ; chapitre 3 §3.11 ; chapitre 4 §4.10.

---

## 15.6 Sources et méthode de citation `[Référence]`

### 15.6.1 Notes officielles BHVR

Toutes publiées sur la base de connaissances officielle, à l'adresse `https://forums.bhvr.com/dead-by-daylight/kb/articles/<id>` ; téléchargées les 27 et 28/09/2026 et archivées en texte brut dans `kb/sources/patches/official_<id>.txt`. **48 articles archivés** : 29 notes de patch ou de hotfix LIVE, 10 notes PTB (509, 514, 522, 527, 533, 537, 542, 548, 555 et 559), 1 bilan « PTB To Live », 4 articles de statistiques (texte seulement), 3 Developer Updates, 1 FAQ.

| Id | Article | Id | Article |
|---:|---|---:|---|
| 510 | 9.0.0 Five Nights at Freddy's | 538 | 9.5.0 All-Kill: Comeback |
| 516 | 9.1.0 The Walking Dead (« Changes from PTB ») | 540 | Stats — First Look at Stats in 2026 |
| 521 | Developer Update, août 2025 | 544 | 9.6.0 (Diminishing Returns) |
| 523 | 9.2.0 Sinister Grace (section « Postponed ») | 546 | 9.6.2 Bugfix |
| 525 | 9.2.2 Bugfix | 549 | PTB To Live Changes: The Slasher |
| 529 | 9.3.0 Mid-Chapter (reverts, « Changes from PTB ») | 550 | 10.0.0 Jason |
| 530 | 9.3.2 Bugfix | 551 | 10.0.1 Bugfix |
| 531 | FAQ — Halloween content | 556 | 10.1.0 Chorus of Sin |
| 534 | 9.4.0 Stranger Things Chapter 2 | 557 | 10.1.1 Bugfix |
| 536 | 9.4.2 Bugfix (section 2v8 en tête) | 558 | 10.1.2 Bugfix + édition **10.1.2a** |
| — | — | **559** | **10.2.0 PTB Patch Notes (non LIVE)** |

Les autres (503, 507, 511, 512, 513, 517, 519, 520, 524, 526, 535, 539, 541, 543, 545, 552, 553, 554) sont des hotfix, statistiques ou annonces de moindre poids ; liste complète et dates dans `kb/ledgers/SOURCE_LEDGER.md` §1. Les notes PTB 9.0.0 → 10.1.0 (archivées le 28/09) ne servent qu'à dater un changement ou à montrer qu'il a été annulé : aucune valeur LIVE n'en est tirée. Exemple d'URL complète : `https://forums.bhvr.com/dead-by-daylight/kb/articles/556` (10.1.0).

### 15.6.2 Wiki officiel (deadbydaylight.wiki.gg)

| Usage | Volume | Stockage |
|---|---|---|
| Pages de perks | 327 pages (321 perks retenues) | `kb/sources/wiki_perks.json`, `wiki_perks_digest.md` |
| Pages de tueurs | 46 pages : les 44 tueurs LIVE (dont The Cenobite, archivé le 28/09) et 2 tueurs annoncés | `kb/sources/wiki_killers/` |
| Modules de données | 7 modules Lua (Datatable, Loadout, Killers, Maps…) | `kb/sources/wiki_modules/` |
| Pages de patch | 10 pages « Patch Notes 9.0.X » → « 10.2.X » | `kb/sources/patches/patch_*.txt` |
| Pages thématiques | ≈ 70 (objets, tiles, 28 pages de cartes et royaumes, mécaniques) | lues à la volée, citées dans les lots |

Toutes extraites les 27-28/09/2026 via l'API MediaWiki (`https://deadbydaylight.wiki.gg/api.php`, `action=parse`) ; adresse d'une page : `https://deadbydaylight.wiki.gg/wiki/<Titre>`. Wiki seul = (SS) ; wiki + note concordante = (VM). Pièges : 51 pages de perks affichent le texte PTB 10.2.0 ; Built to Last affiche la valeur PTB 9.1.0 ; Movement Speeds affiche encore le rampement d'un PTB annulé.

### 15.6.3 Ce qui n'a pas pu être consulté

| Source | Raison | Conséquence dans le guide |
|---|---|---|
| **VOD** (YouTube, Twitch) | Aucune vidéo visionnable (pages YouTube lisibles, sans transcript) | **Aucune VOD analysée** ; tous les counterplays restent [HEURISTIQUE] |
| **Infographies officielles** (images des articles 503, 540, 543, 554 ; SWF 2024) | Images illisibles | Aucun kill rate chiffré par tueur n'est donné comme fait |
| **NightLight** | 403 | Aucun taux d'usage ni kill rate NightLight |
| **DBDLeague**, Liquipedia | Refusés | Règlement et résultats compétitifs non vérifiés (lot 10 bloqué) |
| reddit, X | 403 / refusé | Étude des coffres (2019) et confirmation du reset MMR non lues |
| Manuel en jeu (9.6.1) | Hors ligne | Liste des DR inconnue |
| Notes 8.x et antérieures | Non téléchargées | TR fixés en 8.6.0 en (SS) |
| Guides experts écrits, coachs | Aucun identifié | Aucune [AVIS D'EXPERT] sourcée |
| Tests en jeu | Aucun client | Valeurs non publiées restées ouvertes (15.5) |

Sources secondaires (nightlight.gg, timesaver.gg, presse, agrégateurs) : vues seulement via des résumés de recherche en première passe ; **aucune valeur finale ne repose sur elles seules**, sauf les dates non officielles marquées [INCERTAIN] (fermeture du PTB, sortie estimée de 10.2.0, roadmap).

### 15.6.4 Méthode de citation

1. **Chaque chiffre important** porte sa confiance : (VP), (VM), (SS), (INC) ; un calcul porte « calc. » et hérite de la confiance de ses entrées.
2. **Chaque affirmation non évidente** porte sa nature : [FACT], [DATA], [HEURISTIQUE], [AVIS D'EXPERT], [HYPOTHÈSE], [SITUATIONNEL], [INCERTAIN].
3. **Chaque section** renvoie à son fichier de base (« Détail : `kb/research/…` ») ; chaque chapitre finit par « Sources du chapitre ».
4. Dans les fiches `kb/research/batch*.md`, les sources sont numérotées `[n]` et listées en fin de fichier ; `kb/ledgers/SOURCE_LEDGER_batches.md` dédoublonne 346 URL.
5. **Ordre de priorité** en cas de désaccord : errata de l'audit → fiches re-vérifiées et audits → livrables → audit de phase 0 → sources brutes. Une note officielle prime sur le wiki ; une ligne « (was …) » d'une note PTB donne la valeur LIVE.
6. **Interdits** : ajouter une valeur absente des sources ; présenter une valeur PTB ou 2v8 comme LIVE ; prétendre avoir analysé une vidéo.

Détail : `kb/ledgers/SOURCE_LEDGER.md` ; `kb/ledgers/SOURCE_LEDGER_batches.md` ; chapitre 1 §1.5-1.6.

---

## 15.7 Statut du projet (Definition of Done, mission §47) `[Référence]`

La mission ne permet le statut **COMPLETE** que si les **12 conditions** du §47 sont remplies ; sinon le statut est **NOT READY**. Ce tableau donne un statut honnête (**FAIT / PARTIEL / NON**), la preuve (le fichier qui permet de le vérifier) et la réserve qui reste. État au **28/09/2026**, après la passe 18 (`kb/audit/pass18_final_check.md`).

| # | Condition (§47) | Statut | Preuve et réserve |
|---:|---|---|---|
| 1 | La taxonomie a été auditée | **FAIT** | Ré-audit du 28/09 : **245 nœuds** (205 de la phase 0 + 40 découverts pendant le projet), chacun localisé dans le guide et classé selon le §46 (`kb/ledgers/COVERAGE_MATRIX.md` §0-3). Réserve : 49 nœuds COMPLETE et 184 AUDITED ; les nœuds surtout heuristiques ne peuvent pas dépasser AUDITED sans VOD ni source experte (15.7.1) |
| 2 | Aucune catégorie critique connue n'est absente | **FAIT** | Les 24 familles de la matrice (A à X) ont chacune un chapitre ou une section ; les familles P0-P1 sont toutes traitées en profondeur (`kb/audit/pass13_coverage.md`, matrice §1). Réserve : le compétitif est **présent mais BLOCKED** (ch. 12 : règlements, VOD, méta non lus) ; réglages audio / vidéo (T-U02) et tilt (T-U04) manquent, familles P2-P3 jugées non critiques (tâches R-22, R-23) |
| 3 | Tous les tueurs pertinents sont inventoriés | **FAIT** | 44/44 dans les ch. 7-8 (pass13) ; Art the Clown et Frank Stone exclus (annoncés, non sortis) |
| 4 | Toutes les cartes pertinentes sont inventoriées | **FAIT** | 44/44 cartes 1v4 avec une fiche au ch. 5 (pass13) ; cartes retirées, variantes et 2v8 traitées à part |
| 5 | Les perks sont inventoriées | **FAIT** | 176/176 survivant et 145/145 tueur, une ligne chacune (§9.7, §10.10) ; les 327 pages wiki = 321 perks + 6 inutilisées du code (matrice §0) |
| 6 | Les mécaniques principales sont vérifiées | **FAIT** | Ch. 2 et `CANONICAL_FACTS.md` (VP/VM/SS) ; conflits 001-003 tranchés (`kb/research/batch12_mechanics_open.md`). Réserve : valeurs **non publiées** listées en 15.5 (liste itemisée des DR, Elusive et action voyante, fente, abaissement de palette) : elles demandent le manuel en jeu ou des tests |
| 7 | Les informations sensibles aux patches sont vérifiées | **FAIT** (au 28/09/2026) | Notes officielles 9.0.0 → 10.1.2a et PTB 559, pages wiki complètes, `AUDIT_PHASE0_ERRATA.md` ; aucun article officiel après 559 au 28/09 (560-562 introuvables). Réserve : **périssable** dès la sortie de 10.2.0 (58 perks, 3 systèmes) ; TR fixés en 8.6.0 en (SS), notes 8.x non lues |
| 8 | Les contradictions importantes sont résolues ou marquées | **FAIT** | `CONFLICT_REGISTER.md` : 85 résolus sur 113, 26 ouverts distincts + 4 de phase 0, tous marqués (INC) ; contradictions entre chapitres corrigées (passes 17 et 18) ; `CANONICAL_FACTS.md` aligné (Five Moves Ahead) |
| 9 | Les sections avancées contiennent de la décision | **FAIT** | Grille QUOI → … → EXERCICE, arbres (ch. 13, `DECISION_TREES.md`), situations commentées ; PASS 15 (§27 + praticité, 12 corrections, `kb/audit/pass15_depth_practicality.md`) ; les 44 fiches tueurs ont toutes les rubriques du §28 (pouvoir, counterplay, tiles, carte, macro, add-ons, perks / synergies, erreurs) et un cas d'échec. Réserve : exemples §31 encore absents pour une carte, un slug et une lampe en SWF (R-27) |
| 10 | Au moins deux audits adversariaux ont été réalisés | **FAIT** | Passe 14 : 9 rapports `kb/audit/pass14_*.md`, chacun avec l'audit hostile (§25) **et** l'audit « application à la lettre » (§26), 434 problèmes relevés ; passe 17 (fact-check des ch. 1-14) ; passe 18 (ch. 15 en §25-26, ajouts du 28/09 aux fiches tueurs). Réserve : passe 14 faite sans web, avant la réécriture ; pas de rapport adversarial dédié aux fiches de perks des lots 2-3 (R-25) |
| 11 | Les sources sont traçables | **FAIT** | `SOURCE_LEDGER.md` à jour (48 notes officielles et 46 pages de tueurs archivées, page du Cenobite comprise), `SOURCE_LEDGER_batches.md` (346 URL), « Sources du chapitre » partout, sources numérotées affirmation par affirmation dans les fiches `kb/research/` ; manifeste, changelog et file de travail à jour ; [AVIS D'EXPERT] défini partout comme **non attribué**. Réserve : le guide renvoie au fichier et à la section, pas à chaque source ; ≈ 70 pages wiki thématiques citées par URL sans copie locale ; notes 8.x non archivées |
| 12 | Les éléments non résolus sont explicitement listés | **FAIT** | `OPEN_QUESTIONS.md` (117 questions ouvertes), `CONFLICT_REGISTER.md`, §15.5, matrice §4 (tâches R-01 à R-33), sections « ce qui reste incertain » des chapitres 2, 3, 4, 6, 7 |

### 15.7.1 Limites qui ne dépendent pas d'une case à cocher

Ces limites restent vraies **quel que soit le verdict** : le §47 vérifie la couverture et la méthode, pas l'accès à des sources qui n'ont pas pu être lues.

| Limite | Effet sur le guide |
|---|---|
| **Aucune VOD analysée** | Chase fine, mindgames, greed : [HEURISTIQUE] de joueur, jamais une observation de joueur pro |
| **Aucune source experte écrite trouvée** (guide, coach, analyste) | Aucune [AVIS D'EXPERT] attribuée à un expert ; les hiérarchies de tiles et les counterplays restent des heuristiques (d'où 184 nœuds plafonnés à AUDITED) |
| **Statistiques non lues** (infographies officielles, NightLight) | Aucun kill rate par tueur ou par carte donné comme fait ; fréquences d'usage des perks non vérifiables |
| **Compétitif non vérifié** (DBDLeague, Liquipedia, VOD) | Ch. 12 : règles et méta compétitives non sourcées (lot 10 BLOCKED) |
| **PTB 10.2.0 non intégré** (volontairement : non LIVE) | 58 perks et 3 systèmes à revoir dès la sortie (15.8) |
| **Aucun test en jeu** | Les valeurs non publiées (fente, ramassage, abaissement de palette, liste des DR) restent ouvertes |
| **117 questions ouvertes** et 26 conflits (+ 4 de phase 0) | Listés en 15.5 ; aucun ne change une valeur LIVE centrale, mais aucun n'est tranché |
| **Seuils d'entraînement non validés** | Le ch. 14 mesure un progrès par rapport à soi-même, pas un niveau absolu |

### 15.7.2 Verdict

**Statut final : COMPLETE au sens du §47 (28/09/2026, LIVE 10.1.2a).**

Motif : les 12 conditions sont remplies. Les trois conditions encore partielles le 27/09 ont été levées : la taxonomie a été ré-auditée (condition 1) ; l'audit de profondeur et de praticité (PASS 15) a été fait et les 44 fiches tueurs ont toutes les rubriques du §28 (condition 9) ; les registres, les archives de sources et l'en-tête du registre généré ont été mis à jour (condition 11). La passe 18 a audité ce chapitre, contrôlé les ajouts du 28/09 et corrigé ce qu'elle a trouvé (perks PTB non signalées, rubriques manquantes, registres en retard).

Ce que ce verdict **ne dit pas** :

- **COMPLETE ne veut pas dire que chaque nœud est COMPLETE** au sens du §46 : 49 nœuds sur 245 le sont ; 184 plafonnent à AUDITED parce que leur cœur est une heuristique qu'aucune VOD ni source experte n'a validée, ou une valeur non publiée. Les limites de 15.7.1 restent entières.
- **Le verdict est daté** : il redevient **NOT READY** dès la sortie LIVE de 10.2.0, tant que la procédure du §15.8.1 n'a pas été appliquée (condition 7).
- **Le guide se lit comme un manuel vérifié à une date** : ses valeurs sont sourcées et étiquetées, ses incertitudes sont dites, et le PTB comme le 2v8 sont isolés ; ses conseils de jeu restent des heuristiques raisonnées, pas des observations de joueurs experts.

---

## 15.8 Comment maintenir ce guide `[Avancé]`

### 15.8.1 À la sortie de 10.2.0 : quoi re-vérifier, dans l'ordre

1. **Confirmer la sortie** : chercher la note **de sortie** (pas celle du PTB) dans l'index BHVR (au 27/09/2026, les articles 560-565 renvoyaient « Article not found »). L'archiver en `kb/sources/patches/official_<id>.txt` et mettre à jour `kb_index.txt`.
2. **Comparer PTB → LIVE** : pour chacune des 58 perks, confronter la note 559 à la note de sortie (BHVR publie souvent une section « Changes from PTB »). Ne jamais supposer que la valeur PTB est passée telle quelle.
3. **Rescraper le wiki** : changer la constante `UPCOMING = "10.2.0"` de `kb/tools/wiki_scrape.py` pour le prochain patch annoncé, puis relancer `wiki_scrape.py perks` et `wiki_scrape.py killers`. Les 51 pages de perks qui affichaient le PTB (dont Dissolution, Distressing, Do No Harm, Nothing but Misery, Shattered Hope, Wake Up!, Windows of Opportunity) redeviennent la référence **seulement si** la note de sortie concorde.
4. **Mettre à jour les fiches**, dans cet ordre de priorité : `kb/ledgers/AUDIT_PHASE0_ERRATA.md` si une correction change → fiches `kb/research/batch2_*`, `batch3_*`, `batch4_*` concernées → `kb/deliverables/PERK_DATABASE.md` → `kb/guide/CANONICAL_FACTS.md` → chapitres.
5. **Chapitres à revoir en premier** : 1 (§1.1-1.4, version de référence), 2 (§2.6.2 Abandon / Surrender / End Trial), 6 (§6.7 SoloQ si le Survivor Intent System sort), 9 et 10 (inventaires, §9.6, §10.9), 7-8 (perks enseignables des tueurs 31-37, Superior Anatomy du Mastermind, Ravenous du Krasue, The Judgment), 15 (§15.1, 15.3).
6. **Questions ouvertes** : relire `OPEN_QUESTIONS.md` B1 (Undone, Thrill of the Hunt, bug de Head On, liste des perks « DR »).
7. **Refaire l'audit de couverture** (méthode de `kb/audit/pass13_coverage.md`) : nouveaux tueurs (Art the Clown annoncé en nov. 2026), nouvelles cartes (The Mall annoncée en déc. 2026), nouvelles perks. Un élément ANNONCÉ n'entre dans l'inventaire qu'une fois LIVE.
8. **Mettre à jour les registres** : `PROJECT_MANIFEST.md`, `COVERAGE_MATRIX.md`, `TODO_RESEARCH.md`, `CHANGELOG.md`, `SOURCE_LEDGER.md`, puis régénérer `SOURCE_LEDGER_batches.md`. Le verdict du §15.7 redevient **NOT READY** tant que les chapitres touchés par 10.2.0 n'ont pas été re-vérifiés (condition 7).
9. **Reconstruire le PDF** et relire les tableaux modifiés.

> **Erreur fréquente** : corriger le guide à partir d'une page wiki pendant un PTB. Vérifie d'abord la date de la page et la présence de « upcoming Patch » ou d'un onglet d'historique « PTB ». En cas de doute, la ligne « (was …) » de la note officielle donne la valeur LIVE.

### 15.8.2 Les outils de `kb/tools/`

| Outil | Usage | Sortie |
|---|---|---|
| `wiki_scrape.py` | `python3 kb/tools/wiki_scrape.py perks > sortie.json` (ou `killers`, ou une liste de titres de pages) : description courante (avec drapeau « upcoming Patch »), onglets d'historique, change log ; en déduit la description LIVE | JSON (`kb/sources/wiki_perks.json`, `wiki_killers_raw.json`) |
| `wiki_text.py` | `python3 kb/tools/wiki_text.py "<Page>" [n]` : texte d'une page wiki via l'API (à ≤ 1-2 requêtes/s) | Texte sur la sortie standard |
| `summarize_batches.py` | `python3 kb/tools/summarize_batches.py > résumé.md` : décompte des fiches, verdicts d'écart, niveaux de confiance, conflits | Résumé + réécriture de `kb/ledgers/SOURCE_LEDGER_batches.md` |
| `build_pdf.py` | `python3 kb/tools/build_pdf.py [sortie.pdf]` : assemble `kb/guide/NN_*.md` en HTML puis PDF (Chromium via playwright) | `DBD_Guide_Expert_v2.pdf` par défaut |

L'audit de couverture du guide (passe 13) a été fait par un script ad hoc non versionné ; sa méthode (sources des inventaires, normalisation, variantes de noms, contrôles de rubriques) est décrite en tête de `kb/audit/pass13_coverage.md` pour pouvoir le refaire.

### 15.8.3 Règles de maintenance

- Une valeur ne change dans le guide que sur **preuve datée** ; noter la confiance et le patch.
- Garder la séparation **LIVE / PTB / 2v8** : une valeur PTB porte toujours « PTB x.y.z — non LIVE ».
- Ne pas « corriger » une valeur confirmée au §15.4.3 sans source nouvelle : plusieurs soupçons se sont révélés faux.
- Après chaque passe, refaire au moins le contrôle de forme de la passe 17 (un seul `#` par fichier, tableaux à colonnes constantes, blocs fermés, pas de HTML).

---

## Sources du chapitre

- `kb/guide/CANONICAL_FACTS.md` ; chapitres 1 (§1.1-1.5, §1.9) et 2
- `kb/ledgers/AUDIT_PHASE0_ERRATA.md`, `OUTDATED_CONTENT_REPORT.md` (parties A et B), `OPEN_QUESTIONS.md` (partie B), `CONFLICT_REGISTER.md`, `SOURCE_LEDGER.md`, `PROJECT_MANIFEST.md`, `COVERAGE_MATRIX.md`, `TODO_RESEARCH.md`, `CHANGELOG.md`
- `kb/audit/pass13_coverage.md` (audit de couverture scripté), `kb/audit/pass14_*.md`, `kb/audit/pass15_depth_practicality.md`, `kb/audit/pass17_A.md` à `pass17_D.md`, `kb/audit/pass18_final_check.md` (audit de ce chapitre et verdict)
- `kb/research/batch8_maps.md` §1 (inventaire des cartes), `batch4_killers_g*.md`, `batch2_perks_surv_p*.md`, `batch3_perks_kill_p*.md`, `batch12_mechanics_open.md`
- `prompt.md` §28-30 et §47 (mission) ; `kb/tools/*.py`
- Notes officielles BHVR (`https://forums.bhvr.com/dead-by-daylight/kb/articles/<id>`) : 510, 516, 523, 529, 534, 538, 544, 556, 557, 558 et **559 (PTB 10.2.0, non LIVE)** — `kb/sources/patches/` (48 articles archivés)
- Wiki officiel `https://deadbydaylight.wiki.gg` : pages de perks, de tueurs, Realms et pages de patch (extraites les 27-28/09/2026)
