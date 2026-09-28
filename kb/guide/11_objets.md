# 11. Objets, add-ons, offrandes et techniques associées

> **Périmètre** : objets survivant et leurs **add-ons**, **offrandes**, **coffres**, **rentabilité d'un objet en secondes**, puis les **techniques** liées au portage et aux objets : flash save, pallet save, sabotage, body block, protection hit, save au casier, wiggle, trappe avec clé.
>
> **Version** : LIVE 10.1.2a (17/09/2026). Toute valeur du PTB 10.2.0 est marquée « PTB 10.2.0 — non LIVE ». **Mode 1v4 uniquement** : les objets de départ par classe et les 27 coffres du 2v8 (notes 10.1.2) ne s'appliquent pas ici.

## 11.0 Comment lire ce chapitre

| Étiquette | Sens ici |
|---|---|
| **[FACT]** | Valeur vérifiée. Confiance entre parenthèses : **(VP)** note officielle BHVR, **(VM)** note + wiki concordants, **(SS)** page wiki complète seule |
| **(CALC)** | Arithmétique faite sur des FACT. Hypothèses par défaut : réparation **solo** à 1 charge/s, 1 gen = 90 charges, bonus **additifs**, pas de Great. Aussi fiable que la moins fiable de ses entrées |
| **[DATA]** | Observation communautaire chiffrée (ici : probabilités de coffre, étude de 2019 = **HISTORICAL**) |
| **[HEURISTIQUE]** | Règle pratique de joueur, non sourcée |
| **[AVIS D'EXPERT]** | Conclusion défendable, sans source lue |
| **[HYPOTHÈSE]** | Modèle ou interprétation plausible, non confirmé |
| **[SITUATIONNEL]** | Conseil qui s'inverse selon le contexte |
| **[INCERTAIN]** / **(INC)** | Valeur non documentée ou sources en désaccord |

**Unité** : la **seconde-survivant (s-s)** = 1 survivant pendant 1 s. **1 gen solo = 90 s-s** [FACT] (VM).

**Techniques** (section 11.12) : grille **QUOI → POURQUOI → QUAND → COMMENT → CONTRE → CAS D'ÉCHEC → EXERCICE**. Sauf mention FACT ou CALC, les rubriques POURQUOI à EXERCICE sont des **[HEURISTIQUE]** calibrées sur un tueur « moyen ». Aucune vidéo ni site de statistiques n'a été utilisé.

**Passer à la pratique** : un objet ne change rien s'il n'est pas relié à une décision. Correspondances [HEURISTIQUE] :

| Objet / technique | Décision qu'il modifie | Arbre (ch. 13) | Erreurs | Drill (ch. 14) |
|---|---|---|---|---|
| Toolbox (11.2) | Finir ou lâcher ; quel gen du futur 3-gen | Arbre 5 — Gen (13.12) | E-I14, E-I06 | DR-09, DR-14 |
| Med-Kit (11.3) | Se soigner seul, maintenant ou plus tard | Arbre 4 — Soin (13.11) | E-I02, E-D10 | DR-18, DC-10 |
| Lampe, pallet save, body block, protection hit (T1, T2, T4, T5) | Suivre ou non un portage ; protéger le décroché | Arbre 3 — Crochet (13.10) | E-I03, E-A06, E-T01 | DR-10 (en SWF : DR-08) |
| Key, trappe (11.6, T8) | Trappe ou porte, dernier survivant | Arbre 9 — Trappe (13.16) | E-T07 | DR-11 |
| Coffres (11.10) | Ouvrir ou réparer | — | E-D07 (temps sans objectif) | M-13 (temps inactif) |

> **À retenir** : un objet ne « gagne » pas une partie. Il fait gagner ou perdre **quelques secondes** (toolbox, kit) ou **une décision** (lampe, clé, Fog Vial). Le bon réflexe est de se demander, pour chaque objet et chaque add-on : **est-ce que ça change ce que je fais ?** Si non, c'est du confort.

---

## 11.1 Règles transversales des objets [Débutant]

### Ce qu'il faut savoir sur tous les objets

| Règle | Détail | Confiance |
|---|---|---|
| Types réguliers | 7 : Firecrackers, Flashlights, Fog Vials, Keys, Maps, Med-Kits, Toolboxes | SS |
| Catégories (7.0.0) | Objets survivant (reviennent à l'inventaire à l'évasion), objets spéciaux (liés à un pouvoir, ex. Lament Configuration), objets temporaires (consommés à la sortie). Les objets limités ont **un emplacement séparé** : on peut porter un objet régulier **et** un objet limité | SS |
| Charges | Consommation par défaut **−1 charge/s**, sauf exceptions (toolbox, sabotage, auto-soin). Objet vide = inutilisable, sauf recharge (Built to Last, Scavenger) | SS |
| Lâcher / ramasser | **1 s**. On peut échanger un objet ou récupérer celui d'un survivant sacrifié sous son crochet | SS |
| Add-ons | **2 max**, non modifiables en partie, **toujours consommés** en fin de partie (évasion ou mort), sauf Ace in the Hole, Black Ward ou White Ward | SS |
| Mort | Sans White Ward : objet **et** add-ons perdus. Évasion : objet conservé et rechargé | SS |
| Raretés | Common, Uncommon, Rare, Very Rare, **Visceral** (nom depuis 8.7.0 de l'ex-Ultra Rare) | SS |
| Refonte 9.1.0 | Keys et Maps refondues, Fog Vial ajouté ; ces trois objets n'ont plus que **5 add-ons, un par rareté** | VM |

### Diminishing Returns (9.6.0) [Intermédiaire]

- [FACT] (VP) : les modificateurs **identiques** issus de *Powers, Items, Perks et Offerings* sont réduits (100 / 50 / 25 / 12,5 / 5 %). **Les add-ons sont exclus**. Les malus de vitesse d'action et les bonus de chance de skill check ne se réduisent qu'au sein d'un même rôle.
- Conséquence : le **bonus de base de l'objet** (+50 % de réparation d'une toolbox, +50 % de soin du Ranger) **peut** entrer en DR avec une perk qui donne le même type de bonus. Seul l'**add-on** y échappe sûrement. Sont confirmés soumis : vitesse de skill check (9.6.0), Haste de perks et vitesse de vault (notes de dev 10.2.0) [FACT] (VP). La liste complète est dans le manuel en jeu (9.6.1), non transcrite : le détail des modificateurs d'objet jugés « identiques » reste **[INCERTAIN]**.

### Les contres d'objet côté tueur (à connaître avant de sortir un objet)

| Perk | Effet LIVE | Ce que ça change pour vous |
|---|---|---|
| **Overwhelming Presence** (refonte 9.1.0) | Un survivant qui **commence à utiliser un objet** dans 32 m du tueur devient **Exhausted 15 s** ; le tueur voit l'aura du survivant Exhausted le plus proche 2/3/4 s ; cooldown 25 s [FACT] (VM) | Sortir une lampe, une Fog Vial ou un kit près de lui **coupe Sprint Burst, Lithe, Dead Hard**. [HEURISTIQUE] : dans 32 m, utilisez l'objet une fois ce risque identifié, ou acceptez l'Exhausted |
| **Franklin's Demise** | Un coup de base fait **tomber l'objet**, aura révélée au tueur (32/48/64 m). Depuis 9.1.0, l'objet tombé **ne perd plus ses charges** [FACT] (VM) | Ramassez-le (1 s) quand la chase est cassée, pas sous ses yeux |
| **Lightborn** | Immunité aux lampes, pétards, Flash Grenades et à l'aveuglement de Blast Mine ; votre aura révélée 6/8/10 s quand vous tentez [FACT] (SS) | Tous les saves par **aveuglement** tombent ; pallet save et Head On restent possibles |

### Match Details (9.6.0) : la seule « coordination » d'objets en SoloQ

- [FACT] (VP) : en partie, chaque survivant voit le **loadout de ses coéquipiers** (perks, objets, add-ons, offrandes non secrètes). Le loadout **du tueur** reste caché jusqu'à la fin de la partie.
- [HEURISTIQUE] SoloQ : regardez qui porte une lampe, une clé, une toolbox ou un kit. Ne doublez pas le save d'un porteur de lampe, laissez la trappe au porteur de clé, allez vers le porteur de kit pour un soin.
- Revers : **Lightborn, Franklin's Demise, Overwhelming Presence ne se voient pas avant d'être subis**. Il faut les déduire en partie (`kb/deliverables/PERK_DEDUCTION.md`).

Détail : `kb/research/batch5_items.md` §1.

---

## 11.2 Toolboxes [Intermédiaire]

**Rôle** : réparer plus vite (par transfert de charges) et **saboter** les crochets.

| Toolbox | Rareté | Charges | Réparation | Sabotage | Particularité |
|---|---|---|---|---|---|
| Worn-Out Tools | Common | 16 | +50 % | déverrouillé, sans bonus | Zone **Good** des tests −10 % |
| Toolbox | Uncommon | 20 | +50 % | +15 % | — |
| Commodious Toolbox | Rare | **32** | +50 % | +50 % | La référence réparation |
| Mechanic's Toolbox | Rare | 16 | +75 % | +25 % | — |
| Alex's Toolbox | Very Rare | **18** (INC : un tableau du wiki dit 24) | +10 % | **+100 %** | Spécialiste du sabotage |
| Engineer's Toolbox | Very Rare | 16 | **+100 %** | +10 % | — |
| Anniversary, Banquet, Festive, Masquerade | Event | 32 | +50 % | +50 % | Stats de la Commodious |

Toutes les valeurs : [FACT] (SS). Alex's : 18 charges retenues (description de l'objet), 24 dans le tableau de calcul de la même page : **[INCERTAIN]**, à vérifier en jeu.

### Mécanique propre à la toolbox [FACT] (SS)

- Elle **verse ses charges au gen au rythme de sa vitesse** (Commodious : −1,5 charge/s et +1,5 charge/s au gen). Toutes les toolboxes à 16 charges avancent un gen **de la même quantité** (17,8 %, CALC), plus ou moins vite.
- Conséquence : une toolbox à peu de charges sert surtout de **sprint final** d'un gen (gagner 1-2 s avant l'arrivée du tueur).
- **Chance de skill check** en réparant avec une toolbox : **40 % par seconde** (contre 8 % sans). Great = **+1 %** de progression, raté = **−10 %** et bruit fort.
- Sabotage : **−2 charges/s**, soit **6 charges par crochet** quelle que soit la vitesse (3 s par défaut).

### Add-ons : ceux qui changent la décision

| Add-on | Rareté | Effet [FACT] (SS) | Change la décision ? |
|---|---|---|---|
| **Instructions** | Common | **Supprime les tests de réparation normaux**. N'agit pas sur les tests **spéciaux** déclenchés par un effet extérieur | **Oui** (voir encadré) |
| **Protective Gloves** | Uncommon | **Supprime la Loud Noise Notification** du sabotage | **Oui** : le tueur n'apprend plus le sabotage et marche vers un crochet cassé |
| **Grip Wrench** | Rare | Réparation automatique du crochet saboté : 30 → **50 s** | **Oui**, pour pré-saboter ou couvrir un portage long |
| **Brand New Part** | Visceral | Action dédiée : **un test difficile** ; réussi, il retire **définitivement 10 charges** au besoin du gen. Consommé | **Oui** |

Add-ons de confort (vitesse ou charges brutes, [FACT] (SS)) : Clean Rag (Common, réparation +20 %), Scraps (Common, +8 charges), Cutting Wire (Uncommon, sabotage +20 %), **Socket Swivels** (Uncommon, réparation +30 %, le meilleur gain brut), Spring Clamp (Uncommon, bruits de réparation −8 m), Wire Spool (Uncommon, +12 charges), Hacksaw (Rare, sabotage +30 %).

> **Note avancée — Instructions** : utile contre ce qui **modifie les tests normaux** (Unnerving Presence, Lullaby de la Huntress : [HYPOTHÈSE] déduite du texte). **Inutile** contre les tests **spéciaux** : Overcharge, Oppression, Merciless Storm [FACT] (SS). Contre les Madness Skill Checks du Doctor : **[INCERTAIN]**. Coût : **plus aucun Great** (≈ 5 s perdues sur une Commodious si vous faisiez tous les Great, CALC 11.11), et incompatible avec Hyperfocus, Stake Out, Fast Track, Specialist.

> **Note avancée — Grip Wrench** : 30 s de réparation automatique couvrent **déjà** un wiggle complet (16 s). Les 20 s de plus ne servent donc pas au portage normal ; elles servent à **saboter avant le ramassage** (pendant la chase) ou à couvrir un portage long (lâchers, reprise) [HEURISTIQUE].

**Brand New Part** [FACT] (SS) : test « Always (1x) », zone Great de 7 %, pas de zone Good distincte, raté = −10 % de progression. −10 charges = **10 s-s** (11,1 % d'un gen, CALC).
- [HEURISTIQUE] Posez-la sur un **gen peu avancé que l'équipe va vraiment finir** : à 0 %, un raté ne retire aucune progression ; sur un gen à 70 %, il en retire jusqu'à 9 charges pour le même gain.
- Risques restants : un raté fait **probablement** un bruit fort ([HYPOTHÈSE], non indiqué) ; le bonus est **perdu** si le gen n'est jamais fini (abandonné, gen d'un 3-gen tenu par le tueur).

### Perks qui changent la toolbox

| Perk | Effet LIVE | Confiance |
|---|---|---|
| **Built to Last** | Dans un casier avec un objet **vide** : recharge après **14/12/10 s**, à 99 %, puis 66 %, puis 33 %, **3 fois max**. Le wiki affiche 12/10/8 s : c'est la valeur du **PTB** 9.1.0 | durée **VP** (note 9.1.0, « Changes from PTB ») ; mécanique SS |
| Scavenger | 5 Great avec une toolbox vide = recharge complète, mais −50 % de réparation pendant 40/35/30 s | SS |
| Change of Plan (9.4.0) | Dans un casier, transforme une toolbox (non événement) en Med-Kit de même rareté avec un add-on aléatoire, 80/90/100 % des charges, 2 jetons | VM |
| Streetwise (refonte 9.1.0) | Objets **trouvés dans un coffre** : +60/70/80 % de charges ; aura du tueur 8 s au premier épuisement | VM |

### Usage optimal [HEURISTIQUE]

- Gardez **3-5 s de charges** pour **finir** un gen quand le tueur arrive (CALC Commodious : 4,5 à 7,5 charges, soit 5-8 % d'un gen).
- Les gains chiffrés de la toolbox sont calculés **en solo**. En coop (efficacité 85/70/55 % par personne, [FACT] (SS)), on ne sait pas si le bonus s'applique avant ou après la pénalité : **[INCERTAIN]**. N'en déduisez pas « toujours réparer seul » : la coop finit un gen plus vite **à l'horloge**, ce qui compte quand le tueur approche.
- SWF sabotage : Alex's + Grip Wrench + Protective Gloves (ou Hacksaw).

> **Erreur fréquente** : toolbox près d'un tueur à pénalité de test (Unnerving Presence, Lullaby). Avec 40 %/s de tests, il y a 5 fois plus de tests **par seconde** et ≈ 3,3 fois plus **à progression égale** (CALC), chaque raté = bruit fort. Parades : Instructions (tests normaux seulement) ou ranger la toolbox sur un gen proche de ce tueur.

> **Erreur fréquente** : Built to Last « en rotation » (vider, casier, recommencer). Avec les 14/12/10 s LIVE, le gain net est **nul ou négatif** hors situation où le casier sert déjà (voir 11.11).

**Valeur** [HEURISTIQUE] : SoloQ **haute** (la réparation est l'objectif, zéro coordination). SWF **haute** (gen rush, sabotage).

Détail : `kb/research/batch5_items.md` §2.1.

---

## 11.3 Med-Kits [Intermédiaire]

| Med-Kit | Rareté | Charges | Soin altruiste | Auto-soin |
|---|---|---|---|---|
| Camping Aid Kit | Common | 24 | +35 % | −33 % de vitesse, −33 % d'efficacité |
| First Aid Kit | Uncommon | 24 | +40 % | idem |
| Emergency Med-Kit | Rare | 24 | +45 % | idem |
| Ranger Med-Kit | Very Rare | 24 | +50 % | idem |
| Lunchbox, Anniversary, Banquet, Masquerade | Event | 24 | +40 % | idem |

[FACT] (SS), concordant avec l'audit (24 charges pour tous depuis 6.7.0).

### Chiffres qui comptent [FACT] (SS)

- **Un état de santé = 16 charges**. Soin altruiste sans kit : **16 s**. Ranger : ~10,7 s ; Camping : ~11,9 s.
- **Auto-soin** avec kit : 0,667 charge/s → **~24 s par état**, et le kit perd 1,333 charge par charge soignée : **un seul auto-soin par kit** de base.
- Altruiste : un kit de base soigne **1,5 état** (le wiki l'écrit ; à vérifier en jeu, [INCERTAIN] mineur).

### Statuts qui changent la valeur du kit

| Statut | Effet | Conséquence |
|---|---|---|
| **Broken** | Impossible de soigner au-delà de blessé [FACT] (SS) | Kit inutile sur un Broken (Deliverance, Forced Penance, Moment of Glory…) |
| **Mangled** | Soin 25 % plus long [FACT] (SS) | Auto-soin ≈ 30 s au lieu de 24 (CALC, si les malus se multiplient : [HYPOTHÈSE]) |
| **Haemorrhage** | Un soin interrompu perd −7 %/s [FACT] (SS) | Un auto-soin de 24 s coupé est en partie perdu |
| **Deep Wound** | Se traite par le **mending** (10 s seul, 6 s par un allié) [FACT] (SS) | Effet du kit sur le mending : [INCERTAIN] |

### Add-ons

| Add-on | Rareté | Effet [FACT] (SS) | Change la décision ? |
|---|---|---|---|
| **Styptic Agent** | Very Rare | **+15 % d'efficacité en auto-soin** (depuis 9.3.0 : plus d'Endurance, plus consommé) [FACT] (VM) | Faible |
| **Anti-Exhaustion Syringe** | Visceral | Pendant un soin (de soi ou d'un allié) avec le kit, **action secondaire** : le survivant soigné **perd immédiatement Exhausted**. **Consomme le kit** [FACT] (VM) | **Oui** |
| **Gel Dressings** | Visceral | +16 charges (40 au total) | **Oui** : un auto-soin **et** un soin d'allié avec le même kit (CALC : 40 − 21,3 = 18,7 charges restantes) |
| Refined Serum | Event (Halloween) | Action secondaire : +5 % de vitesse 16 s + traînée de Blight ; consomme le kit | Hors saison |

Add-ons de confort ([FACT] (SS)) : charges (Bandages +8, Self Adherent Wrap +8 et +5 % de vitesse, Gauze Roll +10), vitesse (Butterfly Tape +5 %, Medical Scissors +10 %, Abdominal Dressing +15 %), tests (Rubber Gloves zone Great +10 %, Sponge +20 %, Needle & Thread +10 % de chance et +5 % de bonus Great, Surgical Suture +15 % et +10 %). Aucun ne change la décision.

> **Note avancée — le nom de la seringue** : le nom LIVE est bien **Anti-Exhaustion Syringe** (renommée **depuis** Anti-Haemorrhagic en 9.3.0) [FACT] (VM). L'audit phase 0 (A-186) avait inversé le sens ; l'errata le corrige.

**Usage de la seringue** ([HYPOTHÈSE] + [HEURISTIQUE]) :
- Elle agit **pendant un soin**. Pour vous-même, il faut donc être **blessé** et lancer un auto-soin. Sain, vous ne pouvez l'utiliser que sur un allié que vous soignez (« affected Survivor » = le survivant soigné : interprétation, [INCERTAIN]).
- Elle vaut **une activation d'Exhaustion supplémentaire** (Lithe, Sprint Burst, Dead Hard, Overcome…) au prix du kit entier.
- Utilisez d'abord les charges (soins), gardez la seringue pour quand le kit est presque vide.

### Usage optimal [HEURISTIQUE]

- Le kit sert surtout à **l'autonomie** : se soigner sans mobiliser un coéquipier.
- (CALC) Auto-soin au kit = **24 s-s**. Soin mutuel sans kit = 16 s × 2 survivants = **32 s-s + trajet**. L'auto-soin au kit est donc **moins cher en temps d'équipe**, même s'il est plus lent à l'horloge.
- (CALC) Soin d'allié au Ranger : 10,7 s × 2 = **21,3 s-s** par état, contre 32.

> **Erreur fréquente** : le combo « Looper » Syringe + Styptic Agent. La seringue **consomme le kit** : le bonus d'auto-soin du Styptic est perdu. Choisissez l'un ou l'autre.

> **Erreur fréquente** : s'auto-soigner quand le tueur **vient vers vous** (24 s, interrompu, charges brûlées à 1,33 par charge). Le Terror Radius seul n'est pas le critère : un tueur en chase ailleurs dans le TR ne vous interrompra pas.

> **Erreur fréquente** : prendre un Ranger pour s'auto-soigner. Son bonus est **altruiste** : inutile sur soi.

**Valeur** [HEURISTIQUE] : SoloQ **haute** (autonomie, erreurs pardonnées). SWF **moyenne-haute** (soins d'équipe, seringue).

### Exemple concret : auto-soin ou gen ? [HEURISTIQUE sur CALC]

- **Situation** : SoloQ, tu es blessé (1 crochet), Med-Kit de base plein. Tu viens de casser la chase ; le tueur a repris une autre cible (musique de chase lointaine). Un gen à ~60 % est à 20 m ; un allié blessé répare un autre gen.
- **Informations connues** : auto-soin au kit ≈ 24 s, **un seul** par kit de base [FACT] (SS) ; soin mutuel = 32 s-surv + trajet ; un auto-soin coupé sous Haemorrhage se perd en partie ; loadout du tueur inconnu.
- **Options** : A. auto-soin tout de suite, ici ; B. finir d'abord le gen (≈ 36 s seul, CALC), soigner après ; C. aller soigner l'allié blessé avec le kit (bonus altruiste), et rester blessé.
- **Analyse** : A coûte 24 s-surv, sans mobiliser personne, pendant que le tueur est **engagé ailleurs** : c'est la fenêtre la moins chère de la partie. B gagne le gen plus tôt mais tu restes à un coup du sol si le tueur revient. C est rentable seulement si l'allié est le prochain en chase (runner).
- **Meilleure logique** : A si la chase de l'allié dure (tueur loin et occupé) ; B si le gen est le dernier avant les portes, ou contre un tueur à blessure fréquente ou à statut où le soin se reperd vite (2.5.3).
- **Erreur typique** : lancer l'auto-soin **quand le TR monte** (24 s interrompues, charges brûlées) ; ou garder le kit « pour plus tard » et ne jamais l'utiliser.

Détail : `kb/research/batch5_items.md` §2.2.

---

## 11.4 Flashlights [Intermédiaire]

| Lampe | Rareté | Batterie | Modificateurs |
|---|---|---|---|
| Flashlight | Uncommon | 8 s | — |
| Sport Flashlight | Rare | 8 s | Visée **+20 %**, déplétion −11 % |
| Utility Flashlight | Very Rare | **12 s** | Luminosité +30 %, aveuglement +15 %, **visée −20 %** |
| Anniversary, Banquet, Masquerade, Will O' Wisp | Event | 8 s | Cosmétique |

**Valeurs par défaut** [FACT] (SS) : portée **10 m**, temps pour aveugler **1 s**, aveuglement **2 s**, angle du faisceau **20°**.

### Mécanique [FACT] (SS)

- Visez la **tête** du tueur (un peu en dessous : c'est là qu'est sa caméra). Le cône extérieur se resserre ; la réussite fait « clignoter » le faisceau.
- Le tueur n'est aveuglé **que s'il voit le faisceau sur son écran**. Contre : regarder le ciel, le sol ou un côté. L'aveuglement **régresse au même rythme** qu'il progresse : détourner la tête ne remet pas à zéro instantanément.
- Aveuglé, le tueur n'a que des **Quick Attacks** (pas de fente). Son ouïe n'est pas touchée.
- Un tueur qui **porte** un survivant et qui est aveuglé est étourdi et **lâche le survivant**.
- **Depuis 1.8.3, luminosité et add-ons n'accélèrent plus l'aveuglement** : la luminosité est un effet **visuel**.
- Historique utile : 6.3.0 délai entre deux allumages (anti-stroboscope) ; 6.4.0 **tampon de 0,4 s en fin d'animation de ramassage** et **immunité quand le tueur sort un survivant d'un casier** ; 6.7.0 fin du « lightburn » (Wraith, Nurse) et des interactions Hag / Spirit / Artist.
- Interactions encore LIVE : aveugler Shape / Ghost Face coupe leur traque ; aveugler Legion en Feral Frenzy ou Mastermind en Virulent Bound annule le pouvoir **sans fatigue** (il peut frapper aussitôt) ; aveugler les zombies de Nemesis les étourdit ; les **Guards** du Knight ne peuvent pas être aveuglés.
- Liste **incomplète** : les interactions avec les tueurs récents (Dredge, Dracula, Houndmaster, Lich, Ghoul, Krasue…) n'ont pas été relevées. Absence de ligne ≠ absence d'interaction : [INCERTAIN], voir `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md`.

### Add-ons

| Add-on | Rareté | Effet [FACT] (SS) | Change la décision ? |
|---|---|---|---|
| **Leather Grip** | Common | Visée +20 % | Oui (saves) |
| **Wide Lens** | Common | **Largeur +25 %, portée −25 %** | Oui : plus tolérant de près |
| **Rubber Grip** | Uncommon | **Visée +40 %** | Oui (saves) |
| Odd Bulb | Visceral | Luminosité +50 %, **aveuglement +25 %**, déplétion **+14 %** | Faible pour les saves |
| Broken Bulb | Event (Halloween) | Clignotement, luminosité +15 %, aveuglement +30 % | Hors saison |

Add-ons de confort ([FACT] (SS)) : batterie (Battery +2 s, Heavy Duty Battery +4 s, Long Life Battery +6 s, Low Amp Filament déplétion −24 %) ; luminosité et durée d'aveuglement (Power Bulb +20 % / +10 %, **TIR Optic** +30 % / +15 %, **sans** effet de largeur contrairement à ce qu'on lit souvent, Intense Halogen +40 % / +20 %) ; portée contre largeur (Focus Lens portée +25 %, largeur −15 %, luminosité +20 %, aveuglement +10 % ; High-End Sapphire Lens portée +25 %, largeur −25 %, luminosité +30 %, aveuglement +15 %).

### Ce qui compte vraiment [HYPOTHÈSE déduite des FACT]

- La **vitesse** d'aveuglement est fixe (1 s). Pour un save, la **visée** (moins de tremblement) et la **largeur** du faisceau comptent plus que la luminosité.
- La **durée** d'aveuglement (Odd Bulb, Utility) sert surtout en chase ou **après** le save : le save est acquis au moment de l'étourdissement.
- Kit de save plausible : **Sport Flashlight + Rubber Grip + Wide Lens (ou Leather Grip)**. Le combo souvent conseillé « Utility + Odd Bulb + Long Life » a une **visée −20 %** : il est plus long et plus brillant, pas meilleur pour sauver.
- Coût de Wide Lens : portée **7,5 m** au lieu de 10 (CALC). Il faut se cacher **plus près** du ramassage. Contre un tueur qui balaie autour de lui avant de ramasser, **Leather Grip** (visée, portée intacte) est l'alternative [HEURISTIQUE].

> **Erreur fréquente** : traverser la carte pour un save au lieu de réparer. Une tentative venue de loin coûte **20-40 s-s** d'un joueur qui ne répare pas, pour un résultat incertain.

**Valeur** [HEURISTIQUE] : SoloQ **faible à moyenne** (vos coéquipiers voient votre lampe dans Match Details, mais rien ne garantit qu'ils jouent autour). SWF **moyenne à haute** (saves annoncés, rotation de lampes, pression sur chaque ramassage).

Détail : `kb/research/batch5_items.md` §2.3 ; techniques en 11.12 (T1).

---

## 11.5 Fog Vials (depuis 9.1.0) [Intermédiaire]

| Fog Vial | Rareté | Charges | Expansion | Durée du nuage | Recharge |
|---|---|---|---|---|---|
| Apprentice's | Common | **4** | 2 s | 8 s | 70 s |
| Artisan's | Uncommon | **4** | 1,5 s | 10 s | 65 s |
| Vigo's | Rare | **4** | 1,2 s | 12 s | 60 s |

[FACT] (VM), notes 9.1.0 / 9.1.1 / 9.5.0 + wiki.

- Nuage de **8 m de rayon** (note 9.1.0 ; le wiki dit « size », ambigu), opacité **33 %** à l'intérieur. **Supprime auras et griffures** dans la zone, atténue sons et visibilité [FACT] (VM).
- Historique : 9.1.0 1 charge ; 9.1.2 **2 charges**, et **The Singularity peut se téléporter vers un survivant qu'il voit dans le nuage** ; 9.5.0 **4 charges**, nuage **totalement opaque vu de l'extérieur**, et les **auras d'un survivant au sol ou accroché restent visibles** à travers [FACT] (VM).
- Chaque usage coûte 1 charge et lance la recharge ([FACT] (SS), interprétation de la description). Comportement à 0 charge : [INCERTAIN].

### Add-ons [FACT] (VM)

| Add-on | Rareté | Effet | Change la décision ? |
|---|---|---|---|
| Volcanic Stone | Common | Recharge −5 s | Non |
| **Reactive Compound** | Uncommon | Expansion −1 s (Vigo's : 1,2 → 0,2 s, CALC) | **Oui** : le nuage devient utilisable **au contact**, en pleine chase |
| Oily Sap | Rare | Durée +2 s | Non |
| Mushroom Formula | Very Rare | Taille +2 m | Faible |
| **Potent Extract** | Visceral | Opacité **+100 %**, durée **−50 %**, taille **−25 %** | **Oui** : nuage court et petit mais vraiment opaque, pour casser **une** ligne de vue précise |

### Usage [HEURISTIQUE]

- **QUAND** : casser la **ligne de vue** au moment où le tueur casse une palette (2,34 s, caméra baissée) ou contourne un mur, pour cacher **la direction de sortie**.
- **PAS** dans un espace ouvert sans obstacle : le tueur contourne le nuage et vous reprend à la sortie (les griffures reprennent hors de la zone).
- **CONTRE** : The Singularity (vous voit dans le nuage = téléportation possible) ; Overwhelming Presence (lancer le nuage dans 32 m = Exhausted 15 s).

> **Erreur fréquente** : rester immobile dans le nuage en se croyant invisible. L'opacité intérieure n'est que de 33 % : un tueur qui entre vous voit.

> **Erreur fréquente** : jeter le nuage sur un allié au sol ou accroché pour le « cacher ». Depuis 9.5.0, leurs auras restent visibles.

**Valeur** [HEURISTIQUE] : SoloQ **haute** (survie personnelle, zéro coordination). SWF **moyenne**.

Détail : `kb/research/batch5_items.md` §2.4.

---

## 11.6 Keys (refonte 9.1.0) [Intermédiaire]

| Clé | Rareté | Charges | Aura des autres survivants | Coffres | Trappe |
|---|---|---|---|---|---|
| Broken Key | Common | 6 | 48 m, 8 s | Non | Non |
| Dull Key | Uncommon | 5 | 56 m, 9 s | Oui | Oui |
| Skeleton Key | Rare | 6 | 64 m, 10 s | Oui | Oui |

[FACT] (VM).

- **Lecture d'aura** : maintenir Use Item pour canaliser ; à la fin, **1 charge**, auras des autres survivants révélées. Durée de canalisation : [INCERTAIN] (Shrill Whistle la réduit de 35 %).
- **Coffre** (Dull / Skeleton) : ouverture rapide, **1 charge**, objet **Rare ou mieux garanti**. L'aura du coffre devient jaune pour les survivants dans 42 m, et **un autre survivant** peut le fouiller **une fois** (Rare ou mieux garanti) ; pendant sa fouille, son aura est révélée au porteur [FACT] (VM). Durée de l'ouverture rapide : [INCERTAIN].
- **Trappe** : rouvrir une trappe **fermée** en **2,5 s**, **1 charge**. Depuis 9.1.0, la clé **n'est plus détruite** [FACT] (VM). Une clé **vide** ne peut pas ouvrir la trappe [FACT] (SS).

### Add-ons [FACT] (VM)

| Add-on | Rareté | Effet | Change la décision ? |
|---|---|---|---|
| Friendship Charm | Common | +1 charge | Non |
| Shrill Whistle | Uncommon | Canalisation −35 % | Faible |
| Braided Bauble | Rare | Auras +2 s | Non |
| **Unique Wedding Ring** | Very Rare | Vous et l'Obsession voyez **en permanence** l'aura l'un de l'autre ; votre chance d'être l'Obsession **initiale** est réduite de 100 % | **Oui** : info permanente, mais votre aura est exposée à l'Obsession (pas au tueur) |
| **Blood Amber** | Visceral | Pendant la canalisation, **vous voyez l'aura du tueur et il voit la vôtre**. Auras −6 s, charges −2 | **Oui** : info risquée |

**Usage** [HEURISTIQUE] : d'abord un **objet d'information** (qui est en chase, qui répare où), puis en SWF un **générateur d'objets Rare+** pour l'équipe (11.10). La trappe ne sert que si **vous êtes le dernier** et que le tueur l'a **fermée** (technique T8).

> **Erreur fréquente** : vider la clé en lectures d'aura puis arriver à la trappe fermée avec 0 charge. **Gardez 1 charge** dès qu'il reste 2 survivants, sauf si une dernière lecture d'aura décide d'un sauvetage qui vaut plus que la trappe [HEURISTIQUE].

**Valeur** [HEURISTIQUE] : SoloQ **moyenne** (info ; trappe rarement décisive). SWF **moyenne** (redondant avec la voix, mais coffres Rare+ pour l'équipe).

---

## 11.7 Maps (refonte 9.1.0) [Débutant]

| Map | Rareté | Charges | Auras palettes + fenêtres |
|---|---|---|---|
| Cryptic Map | Common | 4 | 24 m, 10 s |
| Scribbled Map | Uncommon | 5 | 32 m, 12 s |
| Annotated Map | Rare | 6 | 40 m, 14 s |
| Bloodsense Map | Event | 8 | 48 m, 14 s, **plus les survivants blessés** ; flaques de sang sous vous |

- **Beam of Light** (action secondaire pendant la canalisation) : faisceau de **16 s** à votre position, visible et audible des **seuls survivants** ; les auras des **générateurs dans 32 m du faisceau** sont révélées **à tous les survivants** [FACT] (VM).
- Depuis 9.1.0, les objets révélés par des perks ne sont plus « trackables » par la Map [FACT] (VM).

| Add-on | Rareté | Effet [FACT] (VM) | Change la décision ? |
|---|---|---|---|
| Glowing Ink | Common | Auras +2 s | Non |
| Gnarled Compass | Uncommon | +2 charges | Non |
| Battered Tape | Rare | Portée +8 m | Non |
| **Sharpened Flint** | Very Rare | Révèle les **totems** dans la portée | **Oui** : chasse aux Hex, choix du totem de Boon |
| **Crimson Stamp** | Visceral | **Aura du tueur révélée à tous** quand il est dans 8 m du faisceau ; faisceau −10 s (donc 6 s), charges −2 | **Oui** : le faisceau devient une alarme (près d'un crochet, d'un gen clé) |

**Usage** [HEURISTIQUE] : une charge en tout début de partie pour **lire les tiles** autour de vous et **montrer à l'équipe les gens proches** (répartition, repérage du 3-gen) ; puis une charge à chaque arrivée dans une zone inconnue.

**Valeur** [HEURISTIQUE] : SoloQ **moyenne** (le faisceau informe même des coéquipiers muets). SWF **faible-moyenne** (la voix remplace le faisceau). Excellent objet d'**apprentissage** des cartes.

Détail : `kb/research/batch5_items.md` §2.5-2.6.

---

## 11.8 Firecrackers, objets d'événement et objets limités [Débutant]

- **Firecrackers** (Chinese Firecracker, Winter Party Starter, Third Year Party Starter) : aveuglent, assourdissent et étourdissent un tueur proche **et les survivants proches** ; usage unique ; **plus obtenables dans la Bloodweb** hors événements, stocks utilisables ; **bloqués par Lightborn** [FACT] (SS).
- **Variantes d'événement** (Anniversary, Banquet, Masquerade, Festive, Will O' Wisp, Lunchbox) : **mêmes statistiques** que leur modèle (Commodious, First Aid Kit, Flashlight) + effet cosmétique [FACT] (SS).

### Objets limités 1v4 qui changent une décision [FACT] (SS)

- **Flash Grenade** (perk Flashbang) : fabriquée dans un casier après 50/45/40 % de réparation **personnelle**, la perk se réactive à chaque seuil (plusieurs grenades par partie) ; bruit fort, aveugle aussi les survivants proches (T6).
- **Lament Configuration** (Cenobite) : la ramasser remet la Chain Hunt à zéro ; **Oblivious** tant que vous la portez.
- **Vaccine / First Aid Spray** (Nemesis / Mastermind), **EMP** (Singularity : Hindered −10 % en le tenant), **VHS Tape** (Onryō : −3 Condemned), **Glowing Fungus** (Krasue), **Remote Flame Turret** (Xenomorph : la porter = Hindered −35 % et **Exhausted**), **Eye / Hand of Vecna** (Lich : effets forts, mais le Lich peut alors vous tuer à 2 crochets et au sol).
- Détail par tueur : chapitres 7 et 8 et `kb/research/batch5_items.md` §2.8.

Les objets d'événements ou de modes spéciaux (Candelabra, Lantern, Void Crystal, Antidote 2v8…) sont hors 1v4 standard. Usage par tueur : chapitres 7 et 8.

---

## 11.9 Offrandes [Intermédiaire]

### Règles LIVE

| Règle | Détail | Confiance |
|---|---|---|
| **Royaume / carte (9.0.0)** | Chance **fixe de 20 %** d'aller dans le royaume ou sur la carte ciblée. **Les doublons brûlés par plusieurs joueurs ne se cumulent plus.** Plus aucune garantie | VM |
| **Offrandes secrètes (9.0.0)** | Face cachée à l'écran d'offrandes et dans Match Details, révélées au Tally : Blueprints, Coins, Luck **personnelle**, Reagents, royaume / carte, Shrouds, Wards **sauf** Sacrificial Ward. Les Luck « pour tous » restent visibles | VM |
| Conflits | Offrandes opposées de raretés différentes : la plus rare brûle, les autres sont rendues ; à rareté égale, **toutes** rebondissent (sauf carte) | SS |
| Remboursement | Partie annulée (déconnexion au chargement ou dans la 1re minute) | SS |
| **Sacrificial Ward** | Rejette les offrandes de royaume / carte **des autres**, sauf si tous les autres brûlent la **même**. Ne bloque **pas** un royaume : le tirage aléatoire peut encore y mener | SS |
| **Apparition (9.0.0)** | Par défaut, survivants à **≤ 12 m** les uns des autres et au même étage « when possible ». Shroud of Binding → **Shroud of Separation** ; l'ancienne Shroud of Separation du tueur → **Shroud of Vanishing** (rejette les offrandes d'apparition des survivants) | VM |
| **Luck (9.0.0)** | Au 1er palier, l'auto-décrochage n'est **débloqué** que par : 2 survivants restants, une **offrande de Luck**, Slippery Meat ou Up the Ante. Deliverance (après un décrochage sûr), Wicked (au sous-sol) et la jauge anti-camp pleine donnent un auto-décrochage **garanti**. Base **4 %**, 3 tentatives, chaque échec retire **20 s** au palier | VM (exceptions : VP) |
| BP | Les offrandes de BP s'appliquent **après** le plafond de 10 000 par catégorie ; aucun effet sur la partie | SS |

*PTB 10.2.0 — non LIVE : Slippery Meat refondue, sans Luck.*

### Quelles offrandes comptent vraiment (survivant)

| Offrande | Effet LIVE [FACT] (SS) | Secrète | Verdict [HEURISTIQUE] |
|---|---|---|---|
| **Vigo's Shroud** | Apparition le plus loin possible du tueur | Oui | **Utile en SoloQ** : moins de risque d'être la 1re cible. Contrepartie : vous quittez le spawn groupé, seul et loin des soins du début. Annulée par Shroud of Vanishing |
| **Shroud of Separation** | Tous les survivants séparés | Oui | Utile pour attaquer 4 gens d'emblée ; coûte la coordination du début |
| Shroud of Union | Vous commencez avec un autre survivant | Oui | **Presque redondante** : le spawn par défaut regroupe déjà à ≤ 12 m |
| **Luck personnelle** (Chalk / Cream / Ivory Chalk Pouch : +1/2/3 %) | Débloque **vos** auto-décrochages | Oui | **Assurance SoloQ** (camp, personne ne vient). CALC : 4 + 3 = 7 % par essai → **≈ 20 %** sur 3 essais (1 − 0,93³), pour −60 s si tout échoue, sur une phase de **70 s** [FACT] (VP). Chaque échec **raccourcit la fenêtre** d'un sauveteur : tentez seulement quand personne ne vient (HUD, Kindred) |
| Luck pour tous (Salt Pouch, Black Salt Statuette, Vigo's Jar of Salty Lips : +1/2/3 %) | Débloque les auto-décrochages de **tous** | **Non** | Même logique pour l'équipe ; visible par le tueur |
| **White Ward** | Objet protégé en cas de mort ; add-ons conservés (mort ou évasion) | Oui | Pour un objet rare ou des add-ons Visceral |
| Black Ward | Add-ons non consommés | Oui | Idem, add-ons seuls |
| Royaume / carte | 20 % vers la cible | Oui | **Faible** : dans 80 % des cas, tirage aléatoire (qui peut d'ailleurs tomber sur ce royaume sans l'offrande) → gain réel **inférieur à 20 points**. Utile pour « tenter » une carte d'entraînement |
| Sacrificial Ward | Rejette les offrandes de carte des autres | **Non** | Anti-offrande de carte du tueur, avec les limites ci-dessus |
| Annotated / Vigo's Blueprint | Trappe plus probable près du Killer Shack / du bâtiment principal | Oui | Niche (builds trappe) |
| Shiny / Tarnished Coin (+2 / +1 coffre) ; Cut / Scratched (−2 / −1) | Nombre de coffres | Oui | Builds coffres (11.10) |

> **À retenir** : trois offrandes changent vraiment une partie de survivant : **Vigo's Shroud** (SoloQ), **Luck** (auto-décrochage débloqué) et **White Ward** (protéger un bon objet). Les offrandes de royaume ne « choisissent » plus la carte.

### Offrandes du tueur que le survivant doit connaître

| Offrande | Effet LIVE [FACT] (SS) | Conséquence [HEURISTIQUE] |
|---|---|---|
| Ivory / Ebony Memento Mori (secrètes) | Tuer **un / tous** les survivants à **2 paliers de crochet**, une fois au sol | Sur le « death hook », **mis au sol = mort** : ni wiggle, ni flash save, ni sabotage. Jouez plus prudemment à 2 paliers |
| Mouldy / Rotten / Putrid Oak (−1,5 / −2,5 / −3,5 m) ; Petrified Oak (+1 m) | Distance minimale entre crochets | Crochets plus serrés = sabotage et wiggle moins efficaces |
| Bloodied / Torn Blueprint | Sous-sol plus probable dans le Killer Shack / le bâtiment principal ; aura des crochets du sous-sol 20 s pour le tueur | Plan « sous-sol » : crochets **insabotables** |
| Faint / Hazy / Murky Reagent | Brouillard +25 / 50 / 75 % | Visibilité réduite des deux côtés |
| Shroud of Vanishing | Annule vos Shrouds | « Ma Shroud n'a pas marché » |
| Royaume du tueur | Mêmes règles (20 %, non cumulables) | — |

Détail : `kb/research/batch5_items.md` §3.

---

## 11.10 Coffres et économie [Intermédiaire]

### Règles des coffres [FACT] (SS)

- **3 coffres par défaut** : 2 aléatoires + **1 au sous-sol**. Minimum **48 m** entre deux coffres. De **1 à 13** selon Coins et Hoarder.
- Ouvrir **ou** fouiller : **8 charges** à 1 charge/s = **8 s** (10 → 8 s en 8.4.0). Progression partielle conservée. Bruit audible à **20 m**. Le tueur peut **saisir** un survivant qui ouvre un coffre.
- La rareté de l'objet est décidée par **celui qui termine** l'ouverture.
- Fouille d'un coffre ouvert : 8 charges (page Chests) ou **10** (page Appraisal) : [INCERTAIN].

### Probabilités : [DATA] HISTORICAL

Le wiki publie des probabilités issues d'une **étude communautaire (Reddit) de 800+ coffres, juin 2019**. Elles sont **antérieures** aux Fog Vials (absentes), à la refonte Keys / Maps (9.1.0) et au passage de Plunderer's à +50 % fixe (8.4.0). À lire comme un ordre de grandeur, **pas** comme une valeur LIVE.

| Rareté | Sans perk | Plunderer's Instinct |
|---|---|---|
| Common | 43 % | 14 % |
| Uncommon | 33 % | 18 % |
| Rare | 16 % | 22 % |
| Very Rare | 5 % | 31 % |
| Ultra Rare | 2 % | 15 % |

| Type | Sans perk | Plunderer's |
|---|---|---|
| Med-Kits | 37 % | 23 % |
| Toolboxes | 37 % | 37 % |
| Flashlights | 16 % | 16 % |
| Keys | 7 % | 14 % |
| Maps | 2 % | 10 % |

[HYPOTHÈSE] : les proportions de **rareté** sont probablement encore proches ; les proportions de **type** sont forcément fausses (Fog Vial absente).

### Perks de coffre LIVE

| Perk | Effet LIVE | Confiance |
|---|---|---|
| **Plunderer's Instinct** | Auras des coffres fermés, des objets dans les coffres ouverts et des objets au sol dans **32/48/64 m** ; **+50 %** de chances d'objets plus rares | SS. *PTB 10.2.0 — non LIVE : portée illimitée, ouverture +150/175/200 %* |
| **Appraisal** | **4 jetons** ; fouiller un coffre ouvert et vide pour un objet de plus, **2 fois par coffre** ; fouille +40/60/80 % | SS |
| **Pharmacy** | **Ouverture** +75/100/125 %, bruit d'ouverture −12 m, **Emergency Med-Kit garanti**. Accélère **seulement l'ouverture** | VM (note 9.2.0). *PTB 10.2.0 — non LIVE : bonus étendu à la fouille, une fouille par coffre* |
| **Ace in the Hole** | Objet ordinaire tiré d'un coffre : 1er add-on **garanti (100 %)** de rareté **Visceral ou inférieure** ; 2e add-on avec **50/75/100 %** de chance, rareté **Uncommon ou inférieure**. Les add-ons de l'objet tenu **ne sont pas consommés** si vous vous échappez | SS (valeurs LIVE depuis 8.4.0 ; les chiffres « ≤ Very Rare, 10/25/50 % » encore cités ailleurs sont d'avant 8.4.0) |
| **Streetwise** | Objets de coffre : +60/70/80 % de charges | VM |
| **Residual Manifest** / **Scavenger** | Une fouille par partie d'un coffre ouvert : lampe de base / toolbox de base garantie | SS |
| Contre (tueur) | **Hoarder** : bruit fort 4 s à l'ouverture d'un coffre ou au ramassage d'un objet dans 32/48/64 m, +2 coffres. **Human Greed** (Dracula) : refermer les coffres, auras près des coffres fermés | SS |

Que Ace in the Hole s'applique à la trousse de Pharmacy, à la lampe de Residual Manifest et aux objets d'Appraisal : [INCERTAIN] (non recoupé sur page complète).

### Clé + coffre : le vrai levier économique

- Dull / Skeleton Key : **1 charge = 1 objet Rare+ pour vous + 1 objet Rare+ pour un allié** qui fouille le même coffre [FACT] (VM).
- (CALC sur [DATA] 2019) Rare+ sans clé = 16 + 5 + 2 = **23 %** ; avec la clé = **100 %**.
- [HEURISTIQUE] En SWF, une Skeleton Key **équipe l'équipe** en début de partie (Emergency Med-Kit, Commodious, Vigo's Fog Vial…). L'allié paie tout de même le temps de fouille.

### Quand ouvrir un coffre [HEURISTIQUE sur HYPOTHÈSE]

- Coût : 8 s + trajet (souvent 10-20 s) ≈ **18-28 s-s**, soit 20 à 30 % d'un gen.
- Rendement : 43 % de Common (données 2019) ; une Worn-Out Tools rapporte ~5 s.

```
Coffre en vue ?
 ├─ Vous avez déjà un objet utile ........................ NON, le gen rapporte plus
 ├─ Coffre hors de votre trajet (> ~10 s de détour) ...... NON
 ├─ Plunderer's / clé / Pharmacy / Ace in the Hole ....... OUI (build pensé pour)
 ├─ Aucun objet + tueur qui blesse souvent (besoin d'un kit) OUI si sur le trajet
 └─ Tueur en approche (saisie possible, bruit 20 m) ...... NON
```

Détail : `kb/research/batch5_items.md` §4.1-4.2 ; Ace in the Hole : `kb/research/batch2_perks_surv_p29.md`.

---

## 11.11 Rentabilité d'un objet, en secondes-survivant [Avancé]

> **[HYPOTHÈSE]** : tout ce qui suit est un **modèle** pour comparer des options. Les chiffres sont des CALC sur des FACT (SS) : réparation **solo**, bonus supposés **additifs**, Great ignorés sauf mention, aucune pénalité du tueur. Ils servent à classer, pas à produire un seuil absolu.

### Toolbox : gain = C × b / (1 + b)

C charges versées en C / (1 + b) s au lieu de C s (C = charges, b = bonus de vitesse).

| Configuration | C | b | Gain par toolbox pleine (CALC) |
|---|---|---|---|
| Alex's | 18 | 0,10 | **1,6 s** (2,2 s si 24 charges) |
| Worn-Out Tools | 16 | 0,50 | 5,3 s |
| Toolbox | 20 | 0,50 | 6,7 s |
| Mechanic's | 16 | 0,75 | 6,9 s |
| Engineer's | 16 | 1,00 | 8,0 s |
| Commodious | 32 | 0,50 | **10,7 s** |
| Commodious + Socket Swivels | 32 | 0,80 | 14,2 s |
| Commodious + Socket Swivels + Clean Rag | 32 | 1,00 | 16,0 s |
| Commodious + Socket Swivels + Wire Spool | 44 | 0,80 | **19,6 s** |
| Commodious + Socket Swivels + Brand New Part (réussie) | 32 | 0,80 | 14,2 + 10 = **24,2 s** |

Lecture :
- Une Commodious pleine vaut **≈ 12 % d'un gen**. Le meilleur loadout de réparation vaut **≈ un quart de gen**. C'est réel mais modeste : un seul test raté (−10 %, soit 9 charges) en efface presque tout.
- **Great avec toolbox** ([HYPOTHÈSE]) : 40 %/s pendant ~21 s (Commodious) ≈ 8,5 tests ; tous en Great = +8,5 % ≈ **+7,7 charges**, contre ~2,3 sur la même progression sans toolbox → **≈ +5 s** de plus. Ce gain suppose **100 %** de Great et baisse vite avec le taux réel ; il y a aussi ≈ 3,3 fois plus de tests à progression égale, donc plus de ratés possibles.
- **Alex's** : quasi nulle en réparation ; sa valeur est dans les **sabotages** (3 par toolbox, CALC 18 / 6).

### Built to Last : la recharge coûte presque ce qu'elle rapporte

- Durées LIVE **14/12/10 s** [FACT] (VP) pour recharger 99 % d'une Commodious (31,7 charges → ~10,6 s de gain).
- (CALC) Gain net ≈ **−3,4 s (rang I) à +0,6 s (rang III)** ; avec Socket Swivels (~14,1 s de gain) ≈ **+0,1 à +4 s**.
- [HEURISTIQUE] Rentable seulement quand le casier sert **déjà** à autre chose : se cacher d'un tueur proche, Head On, Flashbang.

### Med-Kit

| Cas | Sans kit | Avec kit | Gain (CALC) |
|---|---|---|---|
| Soin d'un allié, 1 état | 16 s × 2 = 32 s-s | Ranger ~10,7 × 2 = 21,3 s-s | **~10,7 s-s par état** ; ~16 par kit de base (1,5 état) ; ~27 avec Gel Dressings (2,5 états) |
| Se soigner soi-même | Soin mutuel : 32 s-s **+ trajet** + dépendance à un allié | Auto-soin : 24 s-s | **≥ 8 s-s + le trajet**, sans mobiliser personne |

### Lampe, Fog Vial, Map, Key : non chiffrables proprement

- **Flash save réussi** : annule un crochet (un palier de moins pour la victime) + le temps d'accrochage / décrochage épargné (trajet du sauveteur, 1,5 s d'accrochage, 1 s de décrochage). La durée d'une phase (70 s) n'est **pas** la valeur du save. **Tentative ratée : 20-40 s-s** d'un joueur qui ne répare pas.
- **Fog Vial** : vaut ce que vaut une **ligne de vue cassée** : de 0 (espace ouvert) à une chase entière (tueur perdu).
- **Map / Key** : valent l'**information**, surtout si elles évitent un trajet inutile ou le 3-gen.

> **À retenir** : en secondes brutes, **toolbox et kit** sont les seuls objets dont le gain se calcule, et il se compte en **dizaines de secondes par partie**, pas en gens. Les autres objets valent par la **décision** qu'ils permettent. Un coffre ouvert « pour voir » coûte souvent plus que l'objet ne rapporte.

Détail : `kb/research/batch5_items.md` §4.3.

---

## 11.12 Techniques associées

### Chiffres communs

| Élément | Valeur LIVE | Confiance |
|---|---|---|
| Tueur qui porte un survivant | **3,68 m/s** | SS |
| Wiggle | **16 s** cumulées pour se libérer | SS |
| Accrocher / décrocher | **1,5 s** / **1 s** | SS |
| Protections post-décrochage (10.1.0) | **10 s** d'Endurance + Haste 10 % + **10 s** d'Elusive (Elusive absente une fois tous les gens faits ; Endurance tombe à la première action voyante) | VP |
| Stun de palette / casse de palette | **2 s** / **2,34 s** | SS |
| Cooldown après coup réussi / boost du survivant touché | **2,7 s** / **1,8 s** | VM |

(CALC) En 16 s de portage, le tueur parcourt **≈ 59 m** (3,68 × 16). Tout ce qui l'oblige à marcher plus loin fait gagner le wiggle. 1 s de détour ≈ **3,7 m**.

| Perk du tueur (LIVE) | Effet sur le portage | Distance couverte en un wiggle complet (CALC) |
|---|---|---|
| Aucune | — | ≈ 59 m |
| **Agitation** III | Haste 6/12/18 % en portant [FACT] (VM) | ≈ 69 m (Haste supposée multiplicative) |
| **Iron Grasp** III | Wiggle 4/8/12 % plus lent, déport −75 % [FACT] (VM) | ≈ 66 m (≈ 17,9 s de wiggle) |
| Les deux au rang III | — | ≈ 78 m |

*PTB 10.2.0 — non LIVE : Iron Grasp 10/11/12 %, Agitation 14/16/18 %.*

```
Ramassage ──── portage (3,68 m/s) ────► crochet
   │                │                     │
 T1 flash save   T2 pallet save        T3 sabotage
 (fin de ramassage) T4 body block      T6 casier (Head On / Flashbang)
                 T7 wiggle en continu (16 s)
```

> **À retenir** : les saves se **combinent**. Wiggle + body block + sabotage + Breakout rendent un portage de 59 m souvent impossible pour le tueur. Seul, chaque outil gagne quelques mètres ; ensemble, ils gagnent le survivant.

---

### T1 — Flash save (et aveuglement à la casse de palette) [Avancé]

- **QUOI** : aveugler le tueur **pendant qu'il porte** un survivant, ou dans le **tampon de 0,4 s** en fin d'animation de ramassage : il est étourdi et lâche le survivant [FACT] (SS). Variante : aveugler un tueur **qui casse une palette** (2,34 s, caméra verrouillée vers le bas).
- **POURQUOI** : annule un crochet entier sans que le sauveteur prenne un coup s'il est bien placé. En chase, l'aveuglement à la palette donne 2 s de Quick Attack seulement ; avec **Residual Manifest**, Blindness 20/25/30 s [FACT] (SS).
- **QUAND** :
  - vous êtes **déjà** à portée (≤ 10 m par défaut) au moment de la mise au sol, **caché** ;
  - aucun indice de **Lightborn** (le loadout du tueur est caché : indices en partie seulement, par exemple une lampe braquée plus tôt sans effet ; sans indice, le risque existe à chaque tentative) ;
  - le ramassage **n'est pas** une saisie dans un casier (immunité).
- **Immunités LIVE** : Lightborn (votre aura révélée 6/8/10 s) ; saisie depuis un casier ; The Animatronic qui saisit dans une porte [FACT] (VP, 10.0.0/10.0.1) ; Legion avec **Iridescent Button** pendant les sauts spéciaux [FACT] (VP) ; les Guards du Knight (le Knight lui-même, si). Statut Light-Resistant : événement Black Banquet 2026, présence en file normale [INCERTAIN].
- **COMMENT** :
  1. Placez-vous **face au point où la caméra du tueur regardera à la fin du ramassage**, idéalement dans un coin qu'il ne peut pas « viser » en détournant la caméra.
  2. Restez hors de son champ jusqu'au **début** de l'animation de ramassage ; une fois lancée, elle ne s'annule pas.
  3. Il faut **1 s** de faisceau sur la tête : allumez **~1 s avant la fin** de l'animation pour finir dans le tampon de 0,4 s, ou visez-le **pendant le portage**. Durée exacte de l'animation : [INCERTAIN].
  4. Pendant l'animation d'**accrochage**, l'étourdissement n'est plus possible (retiré en 1.1.2a ; comportement LIVE non re-vérifié : [INCERTAIN]).
  5. Variante palette : placez-vous devant la palette à ≤ 10 m et allumez **dès le début** de la casse.
- **CONTRE (tueur)** : balayer autour avant de ramasser ; ramasser **face à un mur** ou tête baissée ; chasser d'abord le porteur de lampe ; Lightborn ; ne pas casser une palette quand une lampe attend ; Rampage (+1 % de Haste par jeton 13 s après un aveuglement ou un stun) [FACT] (VP). Dark Arrogance allonge au contraire les aveuglements subis de 15 % [FACT] (VP) (*PTB 10.2.0 — non LIVE : 25 %*).
- **Limite à haut niveau** : un tueur expérimenté ramasse **par réflexe** face au mur. Le flash save de ramassage réussit surtout contre des tueurs moyens. Contre un bon tueur, préférez les saves qui ne dépendent pas de sa caméra (T2, T3, T4, T6), ou simplement les gens.
- **CAS D'ÉCHEC** :
  - allumer trop tôt : il vous voit, détourne la tête, l'aveuglement régresse ;
  - être vu en approche : il vous frappe d'abord ou ramasse face au mur ;
  - venir de loin : **20-40 s-s** perdues ;
  - variante palette : rester collé au tueur aveuglé (il entend, un Quick Attack peut vous toucher) ; payer le trajet pour une palette qu'il décide de ne pas casser ; offrir une cible **saine et proche** pour un changement de cible.
- **EXERCICE** (partie personnalisée, un ami tueur) : 10 ramassages par séance en variant l'orientation (mur à gauche, à droite, en coin) ; notez quand vous allumez (début / milieu / fin d'animation) et le taux de réussite. Objectif indicatif : > 6/10 sur ramassage « libre », puis contre un tueur qui regarde un mur. Variante : 10 casses de palette, comptez les aveuglements. Un taux mesuré contre un ami coopératif **surestime** le taux en partie publique.

> **Erreur fréquente** : le flash save comme plan par défaut en SoloQ. Sans annonce vocale, un coéquipier double le save ou le tueur vous voit arriver ; le coût (20-40 s-s) dépasse souvent le gain espéré [HEURISTIQUE].

---

### T2 — Pallet save [Intermédiaire]

- **QUOI** : faire tomber une palette sur un tueur **qui porte** un survivant. Il est étourdi **2 s** et **lâche le survivant, qui repart blessé** [FACT] (SS).
- **POURQUOI** : aucun objet requis ; le stun ne s'évite pas en détournant la caméra ; **passe Lightborn** (ce n'est pas un aveuglement).
- **QUAND** : le trajet du porteur **passe par une palette debout**, ou le seul crochet atteignable est de l'autre côté d'une palette.
- **COMMENT** :
  1. Précédez le tueur à la palette ; attendez sans vous montrer.
  2. Le stun ne s'applique qu'une fois la palette tombée à ~50 % [FACT] (SS) : lâchez-la **juste avant** qu'il n'entre dans la zone.
  3. Jamais pendant l'animation de ramassage : seulement quand il peut **bouger** [FACT] (SS).
- **CONTRE (tueur)** : contourner les palettes debout en portant ; Agitation ; Awakened Awareness (voir les survivants proches en portant) ; lâcher le survivant pour frapper le sauveteur (lâcher = +25 % de wiggle, T7).
- **CAS D'ÉCHEC** :
  - lâcher trop tôt (il s'arrête, casse ou contourne) ;
  - attendre sur une palette qu'il n'a aucune raison d'emprunter ;
  - rester près de lui après le save : avec **Enduring** (stun de palette −40/45/50 %), le stun tombe à ~1-1,2 s (CALC) ; la libération reste acquise mais il frappe plus tôt.
- **EXERCICE** : partie personnalisée, trajets de portage vers 3 crochets ; pour chacun, repérez la palette « obligée », puis 10 tentatives en variant le moment du lâcher.

---

### T3 — Sabotage (toolbox, Saboteur, crochets Scourge, sous-sol) [Avancé]

- **QUOI** : casser temporairement un crochet pour que le tueur aille plus loin et que le survivant porté se libère en wigglant.
- **Règles LIVE** [FACT] (SS) :

| Élément | Valeur |
|---|---|
| Durée par défaut | **3 s** ; toujours **6 charges** par crochet |
| Durée calculée (CALC) | Commodious (+50 %) 2 s ; Alex's (+100 %) 1,5 s ; Saboteur sans toolbox (+30 %) ≈ 2,3 s, cooldown 70/65/60 s |
| Réparation automatique | **30 s** (+20 s avec Grip Wrench) |
| Bruit | **Loud Noise Notification** à chaque sabotage, sauf Protective Gloves |
| Sous-sol | Crochets **insabotables** (et ne cassent pas lors d'un sacrifice) |
| Saboteur | Pendant qu'un allié est porté : aura des crochets dans **56 m** du ramassage ; crochets **Scourge** en **jaune** |
| Crochets Scourge | 4 crochets au hasard, sabotables normalement, **indiscernables** sans Saboteur |

- **POURQUOI** : le wiggle se remplit en 16 s ; chaque crochet cassé ajoute du trajet au-delà des ~59 m de marge du tueur (CALC).
- **QUAND** :
  - un allié est porté **loin du sous-sol** et vous êtes près du crochet vers lequel il se dirige ;
  - crochets **Scourge** en priorité (Saboteur) ; mais un sabotage n'en prive le tueur que 30 s (50 s avec Grip Wrench), et seulement s'il visait ce crochet ;
  - **pré-sabotage** (avant le ramassage) : seulement avec Grip Wrench et près d'une chase qui va probablement finir au sol ; sans add-on, le crochet se répare avant le portage ;
  - **coût** : un survivant hors des gens (3 s + trajet). En SoloQ, un saboteur non annoncé peut doubler un sauveteur en route.
- **COMMENT** :
  1. Suivez la trajectoire du tueur (Saboteur, Kindred, son).
  2. Sabotez le crochet **visé**, **au dernier moment** : fin du sabotage 2-4 s avant son arrivée, donc **début ≈ 3,5-7 s avant** selon la toolbox (CALC). Trop tôt, le bruit le fait changer de crochet. Un tueur expérimenté vise d'emblée un crochet « de secours » : lisez sa direction avant de vous engager.
  3. Enchaînez sur le crochet suivant si possible (Alex's : 3 sabotages).
  4. Combinez avec **Breakout** (allié dans 5 m : +25 % de wiggle → 12,8 s, CALC ; Haste 6/8/10 %) et le body block (T4).
- **CONTRE (tueur)** : **Scourge Hook: Hangman's Trick** (bruit fort dès qu'un survivant **commence** un sabotage ; en portant, auras des survivants dans 12/14/16 m d'un crochet Scourge) [FACT] (SS) ; viser le **sous-sol** ; offrandes Oak ; Iron Grasp, Agitation ; Mad Grit ; frapper le saboteur (souvent sain, près du trajet).
- **CAS D'ÉCHEC** : saboter trop tôt ou un crochet qu'il ne visait pas ; saboter près du sous-sol (il ira au sous-sol) ; deux saboteurs sur le même crochet pendant que les gens n'avancent pas.
- **EXERCICE** : sur 3 cartes, repérez en partie personnalisée le sous-sol et les chaînes de crochets. Chronométrez « ramassage → crochet le plus proche » à 3,68 m/s ; entraînez-vous à **finir** le sabotage 3 s avant l'arrivée du tueur.

> **Note avancée** : le kit SWF « Alex's + Protective Gloves + Grip Wrench » change la nature du sabotage : sans bruit, le tueur découvre le crochet cassé **en arrivant**, et 50 s de réparation permettent de préparer la chaîne de crochets pendant la chase. C'est la seule configuration où le pré-sabotage est rentable [HEURISTIQUE].

---

### T4 — Body block [Intermédiaire]

- **QUOI** : se placer physiquement sur le chemin du tueur (collision) pour lui faire perdre du temps.
- **POURQUOI** : gagner les mètres qui manquent à un allié blessé, ou prolonger un portage (1 s de détour ≈ 3,7 m de portage, CALC).
- **QUAND** :
  - passages étroits : porte, couloir, escalier, sortie de fenêtre, entre deux obstacles ;
  - un allié porté : bloquer la route vers le crochet le plus proche ;
  - **par défaut, pas** si vous êtes à 2 paliers. Exceptions [SITUATIONNEL] : vous êtes sain et un coup ne vous met pas au sol ; fin de partie (EGC, dernier save qui décide de l'évasion) ; l'allié porté est celui dont l'équipe a le plus besoin.
- **COMMENT** : anticipez sa trajectoire, restez **au centre** du passage, bougez légèrement avec lui. S'il frappe, c'est un **protection hit** (T5) : partez aussitôt dans une autre direction.
- **CONTRE (tueur)** : frapper le bloqueur ; **Mad Grit** (chaque coup porté en portant met le wiggle en pause 2/3/4 s) rend le blocage coûteux ; lâcher l'allié pour frapper puis le reprendre (+25 % de wiggle) ; faire le tour.
- **CAS D'ÉCHEC** : bloquer en terrain ouvert (il contourne) ; bloquer en étant blessé (vous finissez au sol) ; bloquer un tueur qui n'avait pas besoin de passer là.
- **EXERCICE** : partie personnalisée, un ami porte un bot vers un crochet ; mesurez le temps gagné par un blocage dans une porte, puis en terrain ouvert.

---

### T5 — Protection hit [Intermédiaire]

- **QUOI** : prendre volontairement le coup à la place d'un allié plus fragile.
- **Définition du jeu** [FACT] (SS) : le Score Event *Protection* (200 BP) se déclenche quand vous **prenez un coup dans 10 m d'un survivant blessé**, ou **pendant que le tueur porte un survivant**. Perks liées : Duty of Care (sain : +25 % de Haste 4/5/6 s aux alliés dans 12 m), Mettle of Man (après 3 protection hits), et côté tueur **Forced Penance** (Broken 60/70/80 s à qui prend un protection hit).
- **POURQUOI** : le tueur perd son cooldown de **2,7 s** et doit réorienter la chase ; vous gagnez un boost de **1,8 s** ; l'allié garde sa santé. Gain net ≈ 3-5 s de chase + la réorientation ([HYPOTHÈSE], non mesuré).
- **QUAND** :
  - vous êtes **sain**, avec des paliers bas ;
  - l'allié est **blessé** et proche d'une tile, ou vient d'être décroché et a **perdu** son Endurance ;
  - le tueur n'est **pas** en one-shot et n'a pas montré Forced Penance.
- **COMMENT** : placez-vous **entre** le tueur et l'allié, dans l'axe de sa fente ; juste après le coup, partez **dans une autre direction** que l'allié pour séparer les cibles.
- **CONTRE (tueur)** : ne pas frapper le protecteur, le contourner ; Forced Penance.
- **CAS D'ÉCHEC** :
  - coup inutile (le tueur ne visait pas l'allié) : un état de santé offert ;
  - deux protecteurs : deux blessés ;
  - protéger un décroché qui a encore son **Endurance** (10 s) : souvent redondant, il encaisse déjà un coup (Deep Wound au lieu du sol). Passé 10 s ou après une action voyante, ou s'il est déjà en Deep Wound, le protection hit redevient utile.
- **EXERCICE** : partie personnalisée, un allié blessé boucle une tile ; interposez-vous au moment de la fente, 10 essais ; notez combien de coups étaient « inutiles ».

---

### T6 — Save au casier (Head On, Flashbang) [Avancé]

- **QUOI** : étourdir ou aveugler le tueur **depuis un casier** pour lui faire lâcher un allié porté. Tout étourdissement ou aveuglement du porteur libère le survivant (« by any means ») [FACT] (SS).
- **Outils LIVE** [FACT] (SS) :
  - **Head On** : après **3 s** dans le casier, sortie rapide ; stun **3 s** si le tueur est à **≤ 2,5 m** ; Exhausted 60/50/40 s si réussi ; **bruit fort si raté** ; inutilisable si Exhausted. **Pas un aveuglement** : passe Lightborn.
  - **Flashbang** : grenade fabriquée dans un casier (50/45/40 % de réparation personnelle, réutilisable). Aveugle tous les joueurs proches ; **bloquée par Lightborn**.
- **POURQUOI** : le casier cache votre présence (auras bloquées à l'intérieur, sauf à l'entrée et à la sortie) [FACT] (SS).
- **QUAND** : casier **sur le trajet** probable du porteur (entre ramassage et crochet), ou près d'un crochet quand le tueur revient.
- **COMMENT** : entrez **sans être vu** (entrée normale lente mais silencieuse ; entrée en sprint = bruit fort, sauf Quick & Quiet). Attendez 3 s (Head On), sortez quand il passe à **≤ 2,5 m**.
- **CONTRE (tueur)** : fouiller les casiers proches (2,33 s pour un casier vide ; 5 s pour extraire un survivant, **immunité aux lampes** pendant la saisie) [FACT] (SS) ; Lightborn contre Flashbang ; éviter les rangées de casiers en portant.
- **CAS D'ÉCHEC** : casier trop loin du trajet ; sortie trop tôt (bruit fort, le tueur vous trouve) ; Head On pendant votre Exhausted (Overwhelming Presence, Sprint Burst récent) ; être vu en entrant.
- **EXERCICE** : partie personnalisée, 10 passages du tueur devant un casier ; travaillez la distance de 2,5 m (repères visuels au sol).

> **Note avancée** : un casier utilisé pour Head On ou Flashbang est aussi le moment où **Built to Last** devient rentable (le temps de casier est déjà payé, 11.11).

---

### T7 — Wiggle, drop et libération [Débutant]

- **QUOI** : se libérer en étant porté.
- **Règles LIVE** [FACT] (SS) :
  - tests de wiggle alternés (zones à 3 h et 9 h) ; tant qu'ils sont réussis, la jauge monte à **+1 charge/s** : **16 s** pour se libérer ;
  - un raté **met en pause** la jauge et le déport latéral du tueur ; Good = déport 50 %, Great = 120 % ;
  - **lâcher** un survivant : **+25 %** de jauge ; au plus tard au 4e lâcher il est libre ; dès **75 %** de jauge, **le premier lâcher le libère** ;
  - perks : **Boil Over** (déport +60/70/80 %, auras des crochets dans 16 m cachées au tueur, +33 % de la jauge actuelle si le tueur tombe d'une hauteur), **Breakout** (allié dans 5 m : +25 % de wiggle, Haste 6/8/10 %), **Flip-Flop** (la récupération au sol remplit la jauge jusqu'à 40/45/50 %), **Power Struggle** (à 25/20/15 % de jauge, faire tomber une palette en étant porté : stun et libération).
- **POURQUOI** : chaque seconde de wiggle se combine avec le sabotage, le body block et le pallet save. Le tueur doit atteindre un crochet en < 16 s.
- **QUAND** : **toujours**, dès le ramassage, et en réussissant les tests.
- **COMMENT** : wigglez **vers** les obstacles et les coéquipiers qui bloquent ; avec Boil Over, vers les hauteurs ; avec Power Struggle, repérez les palettes debout sur le trajet.
- **CONTRE (tueur)** : crochets proches (offrandes Oak), sous-sol, Iron Grasp (4/8/12 %, déport −75 %), Agitation (Haste 6/12/18 %, TR +12 m), Mad Grit, Awakened Awareness.
- **CAS D'ÉCHEC** : rater les tests par panique (chaque raté fige la jauge) ; l'allié qui bloque se place du mauvais côté du déport.
- **EXERCICE** : partie personnalisée, 10 portages ; comptez les tests ratés. Objectif : 0.

---

### T8 — Trappe avec une clé [Avancé]

- **Règles LIVE** [FACT] (SS / VM) :
  - la trappe n'apparaît et ne s'ouvre **que s'il reste un seul survivant** ; elle reste ouverte tant que le tueur ne la ferme pas ;
  - la fermer déclenche l'**EGC** (120 s) ;
  - une **Dull ou Skeleton Key avec au moins 1 charge** la rouvre en **2,5 s** (1 charge) ; **impossible au sol** ; le tueur peut vous **saisir** pendant l'ouverture ; la clé n'est plus détruite depuis 9.1.0 ;
  - **Left Behind** : aura de la trappe dans 24/28/32 m quand vous êtes le dernier.
  - *PTB 10.2.0 — non LIVE : Down to the Last permettrait d'ouvrir la trappe sans clé avec ≥ 3 jetons.*
- **QUOI** : rouvrir une trappe fermée pendant l'EGC.
- **POURQUOI** : une 3e sortie que le tueur ne peut pas surveiller en même temps que les deux portes.
- **QUAND** : vous êtes le dernier, le tueur a fermé la trappe **et** s'éloigne vers une porte, ou vous êtes nettement plus proche de la trappe que lui.
- **COMMENT** :
  1. Repérez la trappe **dès que vous êtes le dernier** (Left Behind, son de la trappe ouverte). Avant, seules les Blueprints orientent la zone probable : la trappe ne s'ouvre, donc ne s'entend, qu'au dernier survivant.
  2. Après la fermeture, laissez le tueur choisir une porte, puis allez à la trappe.
  3. 2,5 s d'ouverture = **11,5 m** à 4,6 m/s, 11 m à 4,4 m/s (CALC), **plus** la portée de sa fente et la saisie. Un tueur « à ~2,5 s » = marge nulle. [HEURISTIQUE] : ≥ 15-20 m de vue dégagée, ou tueur hors de vue.
- **CONTRE (tueur)** : Franklin's Demise (la clé tombe) ; rester près de la trappe fermée ; Overwhelming Presence (Exhausted à l'usage de la clé).
- **CAS D'ÉCHEC** : clé vidée par les lectures d'aura (gardez **1 charge**) ; ouvrir sous les yeux du tueur (saisie) ; tenter la trappe au sol.
- **EXERCICE** : partie personnalisée, le tueur ferme la trappe et garde une porte ; entraînez les trajets porte ↔ trappe sur 3 cartes, chronomètre en main.

```
Dernier survivant, trappe FERMÉE, clé ≥ 1 charge
 ├─ Tueur visible, < 15-20 m de la trappe .......... portes (ou attendre qu'il parte)
 ├─ Tueur parti vers une porte, hors de vue ........ TRAPPE (2,5 s)
 ├─ Tueur à la trappe, porte non gardée ............ ouvrir la porte
 └─ Vous êtes au sol ............................... clé inutilisable
```

Détail des huit techniques : `kb/research/batch5_items.md` §5.

---

## 11.13 Synthèse : quel objet pour quel plan

Tableau entièrement [HEURISTIQUE] (raisonnement sur les FACT ci-dessus ; aucune statistique d'évasion consultée).

| Plan | SoloQ | SWF | Add-ons qui changent la décision |
|---|---|---|---|
| Réparer vite | Commodious (+ Socket Swivels / Wire Spool) | Idem, + Brand New Part | Instructions (anti-tests normaux), Brand New Part |
| Survivre à la chase | Vigo's Fog Vial | Fog Vial, ou kit + Anti-Exhaustion Syringe | Reactive Compound, Potent Extract, Syringe |
| Ne dépendre de personne | Med-Kit (Gel Dressings) | — | Gel Dressings, Syringe |
| Saves | Rarement rentable | Lampe (visée / largeur) ; Alex's (sabotage) | Rubber Grip, Wide Lens ; Protective Gloves, Grip Wrench |
| Information | Map (faisceau) ou Key | Key (coffres Rare+ pour l'équipe) | Sharpened Flint, Crimson Stamp ; Blood Amber, Wedding Ring |
| Fin de partie seul | Dull / Skeleton Key (1 charge gardée) | — | — |

[AVIS D'EXPERT] Le classement souvent cité pour la SoloQ (« 1. Toolbox, 2. Med-Kit, 3. Fog Vial, 4. Flashlight, 5. Map, 6. Key ») est **défendable**, pas une vérité. La valeur réelle dépend du tueur (Overwhelming Presence, Franklin's Demise, Lightborn) et de la composition de l'équipe.

> **À retenir** : en SoloQ, prenez un objet qui sert **sans coéquipier** (toolbox, kit, Fog Vial). En SWF, les objets de **coordination** (lampe, sabotage, clé + coffre) prennent leur valeur. Dans les deux cas, un add-on ne vaut sa place que s'il **change une décision**.

---

## 11.14 Points non tranchés

- **Valeurs** : Alex's Toolbox 18 ou 24 charges ; fouille de coffre 8 ou 10 charges ; probabilités de coffre actuelles ; canalisation Key / Map ; animation de ramassage ; aveuglement pendant l'accrochage.
- **Interactions** : toolbox en coop (avant ou après la pénalité) ; Instructions contre la Madness du Doctor ; bruit d'un Brand New Part raté ; cible exacte de la seringue ; bonus d'objet soumis aux DR ; lampe contre les pouvoirs des tueurs récents.
- **À la sortie de la 10.2.0** : relire Pharmacy, Plunderer's Instinct, Down to the Last, Slippery Meat, Iron Grasp, Agitation, Dark Arrogance.

---

## Sources du chapitre

- `kb/research/batch5_items.md` (lot 5, audité) et `kb/audit/pass14_lot5_items.md` (36 corrections : Built to Last 14/12/10 s, Pharmacy LIVE, Iron Grasp / Agitation LIVE, Instructions)
- `kb/research/batch2_perks_surv_p29.md` (Ace in the Hole, fiche re-vérifiée) ; `kb/research/batch2_perks_surv_p25.md` (Built to Last) ; `kb/research/batch2_perks_surv_p26.md` (Pharmacy) ; `kb/research/batch3_perks_kill_p93.md` (Iron Grasp, Agitation)
- `kb/ledgers/AUDIT_PHASE0_ERRATA.md` (Anti-Exhaustion Syringe)
- `kb/deliverables/PERK_DEDUCTION.md`, `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md`
- Notes officielles BHVR (`kb/sources/patches/`) : 9.0.0 (510 : offrandes, spawn, Luck), 9.1.0 (516 : Fog Vial, Keys, Maps, Built to Last « Changes from PTB », Overwhelming Presence), 9.1.1 (517), 9.1.2 (519), 9.2.0 (523 : Pharmacy, Dark Arrogance), 9.3.0 (529 : Syringe, Styptic), 9.5.0 (538 : Fog Vial 4 charges), 9.6.0 (544 : Diminishing Returns, Match Details), 10.0.0-10.0.1 (550-551), 10.1.0 (556 : protections de décrochage), PTB 10.2.0 (559, **non LIVE**)
- Pages wiki (deadbydaylight.wiki.gg, lues en entier le 27/09/2026) : Items, Toolboxes, Med-Kits, Flashlights, Fog Vials, Keys, Maps, Add-ons, Offerings, Chests, Hooks, Wiggle, Pallets, Lockers, Skill Checks, Protection Hits, Hatch, Lightborn, Instructions, Brand New Part
