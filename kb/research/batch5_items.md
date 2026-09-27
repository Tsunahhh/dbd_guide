# Lot 5 — Objets, add-ons, offrandes, économie et techniques de save (mission §11)

> **Statut : WRITTEN (vérifié web, 27/09/2026), NON AUDITÉ (§25-26 à faire).**

- Référence de version : **LIVE 10.1.2a** (17/09/2026). Le **PTB 10.2.0** n'est **pas** LIVE : ses valeurs (Plunderer's Instinct, Pharmacy, Down to the Last…) sont signalées **PTB** et jamais utilisées comme LIVE.
- Mode : **1v4**. Les objets de départ par classe et les 27 coffres du **2v8** (notes 10.1.2) ne s'appliquent pas au 1v4.
- Méthode : pages wiki **lues en entier** via l'API MediaWiki de deadbydaylight.wiki.gg (`kb/tools/wiki_text.py`, 27/09/2026) : Items, Toolboxes, Med-Kits, Flashlights, Keys, Maps, Fog Vials, Add-ons (raretés extraites du HTML), Offerings, Chests, Hatch, Hooks, Wiggle, Pallets, Lockers, Skill Checks, Protection Hits, pages de perks citées. Notes officielles BHVR archivées : 9.0.0 (510), 9.1.0-9.1.3 (516-520), 9.2.0 (523), 9.3.0 (529), 9.3.2 (530), 9.5.0 (538), 9.6.0 (544), 10.0.0-10.0.1 (550-551), 10.1.0 (556), 10.1.2 (558), PTB 10.2.0 (559).
- Aucune vidéo n'a été analysée. Aucun site de statistiques n'a été consulté pour ce lot (reddit/nightlight : 403).

## 0. Conventions

| Étiquette | Sens |
|---|---|
| **FACT [VP]** | Note officielle BHVR (VERIFIED_PRIMARY) |
| **FACT [VMS]** | Note officielle + page wiki concordantes (VERIFIED_MULTI_SOURCE) |
| **FACT [SS]** | Page wiki complète seule (STRONG_SECONDARY) |
| **CALC** | Arithmétique faite ici sur des FACT. Hypothèses : réparation solo 1 c/s, 1 gen = 90 charges, bonus additifs, pas de Great. Aussi fiable que la moins fiable des entrées |
| **HEURISTIC** | Règle pratique de joueur, non sourcée |
| **HYPOTHESIS** | Modèle ou interprétation plausible non confirmée |
| **UNCERTAIN** | Valeur non trouvée ou sources en désaccord |

Unité économique : **seconde-survivant (s-surv)** = 1 survivant × 1 s. Un gen = 90 s-surv en solo (FACT audit VMS).

Raretés : depuis la refonte 8.7.0, la rareté la plus haute des add-ons s'appelle **Visceral** (ex-Ultra Rare) dans le wiki (FACT [SS]).

---

## 1. Règles transversales des objets

- **7 types d'objets réguliers** : Firecrackers, Flashlights, Fog Vials, Keys, Maps, Med-Kits, Toolboxes (FACT [SS], page Items).
- **3 catégories** depuis 7.0.0 : objets survivant (retournent à l'inventaire à l'évasion), objets spéciaux (liés à un pouvoir, ex. Lament Configuration), objets temporaires (utilisables en partie, consommés à la sortie). Les objets limités ont **un emplacement séparé** : on peut porter un objet régulier et un objet limité (FACT [SS]).
- **Charges** : consommation par défaut **−1 c/s**, sauf exceptions (toolbox, sabotage, auto-soin). Un objet vide est inutilisable, sauf recharge (Built to Last, Scavenger) (FACT [SS]).
- **Lâcher / ramasser un objet : 1 s**. On peut échanger un objet ou reprendre celui d'un survivant sacrifié sous son crochet (FACT [SS]).
- **2 add-ons max**, non modifiables en partie. Ils sont **toujours consommés** à la fin de la partie (évasion ou mort), sauf **Ace in the Hole**, **Black Ward** ou **White Ward** (FACT [SS]).
- **Mort sans White Ward = objet et add-ons perdus**. Évasion = objet conservé et rechargé (FACT [SS]).
- **Refonte 9.1.0** : Keys et Maps refondues, Fog Vial ajouté, et chaque objet de ce type n'a plus que **5 add-ons, un par rareté** (FACT [VMS]).
- **Diminishing Returns (9.6.0)** : les modificateurs identiques issus de *Powers, Items, Perks et Offerings* sont réduits (100 / 50 / 25 / 12,5 / 5 %). **Les add-ons sont exclus**. Les modificateurs négatifs de vitesse d'action et positifs de chance de skill check ne se réduisent qu'**au sein d'un même rôle** (FACT [VP], notes 9.6.0).
  - Conséquence : le **bonus de base de l'objet** (ex. +50 % de réparation d'une toolbox, +50 % de soin du Ranger) **peut** entrer dans les DR avec une perk qui donne le même type de bonus. Seul l'add-on y échappe sûrement. Liste exacte des modificateurs jugés « identiques » : **UNCERTAIN** (manuel du jeu non consulté).
- **Contres tueur transversaux** :
  - **Overwhelming Presence** (Doctor, refonte 9.1.0) : un survivant qui **commence à utiliser un objet** dans 32 m du tueur devient **Exhausted 15 s**. Le tueur voit alors l'aura du survivant Exhausted le plus proche 2/3/4 s. Cooldown 25 s (FACT [VMS]). Conséquence : sortir une lampe, une Fog Vial ou un kit près de ce tueur **coupe Sprint Burst, Lithe, Dead Hard…**
  - **Franklin's Demise** (Cannibal) : un coup de base fait **tomber l'objet**, dont l'aura est révélée au tueur (32/48/64 m). Depuis 9.1.0, l'objet tombé **ne perd plus ses charges** (FACT [VMS]).
  - Dans 32 m d'Overwhelming Presence : HEURISTIC, n'utilisez l'objet qu'une fois le tueur identifié, ou acceptez l'Exhausted.

---

## 2. Objets, un par un

### 2.1 Toolboxes

**Rôle** : réparer plus vite (transfert de charges) et **saboter** les crochets.

| Toolbox | Rareté | Charges | Réparation | Sabotage | Particularité |
|---|---|---|---|---|---|
| Worn-Out Tools | Common | 16 | +50 % | déverrouillé, sans bonus | Zone **Good** des tests −10 % (seul objet à le faire) |
| Toolbox | Uncommon | 20 | +50 % | +15 % | — |
| Commodious Toolbox | Rare | 32 | +50 % | +50 % | — |
| Mechanic's Toolbox | Rare | 16 | +75 % | +25 % | — |
| Alex's Toolbox | Very Rare | **18** (tableau de calcul du wiki : 24, voir CONFLICT-L5-02) | +10 % | **+100 %** | Spécialiste du sabotage |
| Engineer's Toolbox | Very Rare | 16 | **+100 %** | +10 % | — |
| Anniversary / Banquet / Festive / Masquerade | Event | 32 | +50 % | +50 % | Stats de la Commodious. Festive : pétards sur Great, feu d'artifice sur raté |

Toutes les valeurs : FACT [SS] (pages Items + Toolboxes, lues en entier).

**Mécanique propre à la toolbox** (FACT [SS]) :
- Elle **transfère ses charges au gen au même rythme que sa vitesse** (Commodious : −1,5 c/s et +1,5 c/s). Toutes les toolboxes à 16 charges avancent un gen **de la même quantité** (17,8 %), mais plus ou moins vite.
- Conséquence tirée par le wiki : une toolbox à peu de charges sert mieux de **« sprint final »** d'un gen (gagner 1-2 s avant l'arrivée du tueur).
- **Chance de skill check** en réparant avec une toolbox : **40 % par seconde** (contre 8 % sans). Great = **+1 %** de progression, raté = **−10 %** (FACT [SS], page Skill Checks).
- Sabotage : **−2 c/s**, soit **6 charges par crochet** saboté (3 s par défaut) (FACT [SS]).

**Add-ons** (raretés : FACT [SS], extraites de la page Add-ons ; effets : FACT [SS]) :

| Add-on | Rareté | Effet | Change la décision ? |
|---|---|---|---|
| Clean Rag | Common | +20 % de vitesse de réparation à la toolbox | Non (vitesse brute) |
| Instructions | Common | **Supprime les tests de réparation normaux** (pas les tests spéciaux) | **Oui** : plus de raté possible (utile contre Doctor, Huntress Lullaby, Unnerving Presence, Overcharge… HEURISTIC), mais **plus aucun Great** : incompatible avec Hyperfocus, Stake Out, Fast Track, Specialist |
| Scraps | Common | +8 charges | Non |
| Cutting Wire | Uncommon | +20 % de vitesse de sabotage | Non |
| Protective Gloves | Uncommon | **Supprime la Loud Noise Notification** du sabotage | **Oui** : le tueur n'apprend plus le sabotage, il marche vers un crochet cassé |
| Socket Swivels | Uncommon | +30 % de vitesse de réparation | Non |
| Spring Clamp | Uncommon | −8 m de portée des bruits de réparation | Faible (stealth) |
| Wire Spool | Uncommon | +12 charges | Non |
| Grip Wrench | Rare | +20 s avant la réparation automatique du crochet saboté (30 → 50 s) | **Oui** : un sabotage « tient » tout un portage |
| Hacksaw | Rare | +30 % de vitesse de sabotage | Non |
| Brand New Part | Visceral | Action dédiée près d'un gen : **un test difficile** ; réussi, il retire **définitivement 10 charges** au besoin de ce gen. Consommé | **Oui** (voir usage) |

**Brand New Part : détails** (FACT [SS]) : test « Always (1x) », zone Great de 7 %, pas de zone Good distincte ; raté = −10 % de progression. Historique : insta-complétion (avant 1.5.3), puis +15 %/+25 % (2.1.0), puis −10 charges (7.1.0).
- CALC : −10 charges = **10 s-surv** (11,1 % d'un gen).
- HEURISTIC : posez-le **sur un gen à 0 %**. Un raté y coûte −10 % de rien, donc aucun risque. Sur un gen avancé, un raté coûte jusqu'à 9 charges.

**Perks qui changent la toolbox** :
- Built to Last (LIVE) : dans un casier avec un objet **vide**, recharge après **12/10/8 s** : 99 %, puis 66 %, puis 33 %, 3 fois max (FACT [SS]).
- Scavenger : 5 Great avec une toolbox vide = recharge complète, mais −50 % de réparation pendant 40/35/30 s (FACT [SS]).
- Change of Plan (9.4.0) : dans un casier, transforme une toolbox (non-événement) en Med-Kit de même rareté avec un add-on aléatoire, 80/90/100 % des charges, 2 jetons (FACT [VMS]).
- Streetwise (refonte 9.1.0) : les objets **trouvés dans un coffre** ont +60/70/80 % de charges permanentes. Aura du tueur 8 s au premier épuisement (FACT [VMS]).

**Usage optimal** (HEURISTIC) :
- Réparer seul un gen que personne d'autre ne touche : la toolbox n'ajoute pas de pénalité de groupe.
- Garder 3-5 s de charges pour **finir** un gen quand le tueur arrive.
- En SWF sabo : Alex's + Grip Wrench + Protective Gloves (ou Hacksaw).

**Erreurs fréquentes** (HEURISTIC) :
- Instructions avec Hyperfocus / Stake Out (le seed le signale correctement).
- Toolbox près d'un tueur à pénalité de test (Unnerving Presence, Lullaby, Overcharge) : 40 %/s de tests = 5 fois plus d'occasions de rater, chaque raté est un bruit fort.
- Brand New Part posée sur un gen à 70 % : risque maximal, gain identique.
- Built to Last « en rotation » (voir §4.3 : le gain net est faible hors situation de cachette).

**Valeur** (HEURISTIC) : SoloQ **haute** (la réparation est l'objectif, aucune coordination requise). SWF **haute** (gen rush, sabotage).

### 2.2 Med-Kits

| Med-Kit | Rareté | Charges | Soin altruiste | Auto-soin |
|---|---|---|---|---|
| Camping Aid Kit | Common | 24 | +35 % | −33 % de vitesse, −33 % d'efficacité |
| First Aid Kit | Uncommon | 24 | +40 % | idem |
| Emergency Med-Kit | Rare | 24 | +45 % | idem |
| Ranger Med-Kit | Very Rare | 24 | +50 % | idem |
| All Hallows' Eve Lunchbox, Anniversary, Banquet, Masquerade | Event | 24 | +40 % | idem (Lunchbox : « considerably more visible ») |

FACT [SS] (Items, Med-Kits). Concorde avec l'audit (24 charges pour tous, 6.7.0).

**Calculs du wiki** (FACT [SS]) :
- **Un état de santé = 16 charges**. Soin altruiste sans kit : 16 s. Ranger : ~10,7 s ; Camping : ~11,9 s.
- Auto-soin avec kit : 0,667 c/s → **~24 s par état**, et le kit perd 1,333 charge par charge soignée : **un seul auto-soin** par kit de base.
- Altruiste : un kit de base soigne **1,5 état**.

**Add-ons** :

| Add-on | Rareté | Effet | Change la décision ? |
|---|---|---|---|
| Bandages | Common | +8 charges | Non |
| Butterfly Tape | Common | +5 % de vitesse de soin | Non |
| Rubber Gloves | Common | Zone Great des tests de soin +10 % | Non |
| Medical Scissors | Uncommon | +10 % de vitesse de soin | Non |
| Needle & Thread | Uncommon | +10 % de chance de test, +5 % de bonus Great | Non |
| Self Adherent Wrap | Uncommon | +5 % de vitesse, +8 charges | Non |
| Sponge | Uncommon | Zone Great +20 % | Non |
| Gauze Roll | Rare | +10 charges | Non |
| Surgical Suture | Rare | +15 % de chance de test, +10 % de bonus Great | Faible |
| Abdominal Dressing | Very Rare | +15 % de vitesse de soin du kit | Non |
| **Styptic Agent** | Very Rare | **+15 % d'efficacité en auto-soin** (depuis 9.3.0 : plus d'Endurance, plus consommé) | Faible |
| **Anti-Exhaustion Syringe** | Visceral | Pendant un soin (de soi ou d'un allié) avec le kit, **action secondaire** : le survivant soigné **perd immédiatement Exhausted**. **Consomme le kit** | **Oui** (voir usage) |
| Gel Dressings | Visceral | +16 charges (40 au total) | **Oui** : permet un auto-soin **et** un soin d'allié avec le même kit (CALC : 40 − 21,3 = 18,7 charges restantes) |
| Refined Serum | Event (Halloween) | Action secondaire : +5 % de vitesse de déplacement 16 s + traînée de Blight. Consomme le kit | Hors saison |

- Effets : FACT [SS]. Syringe et Styptic : **FACT [VMS]** (notes 9.3.0 + wiki).
- **Nom LIVE : « Anti-Exhaustion Syringe »**. Les notes 9.3.0 LIVE écrivent « Anti-Exhaustion Syringe (renamed Anti-Hemorrhagic Syringe) ». Le wiki précise que l'add-on a été renommé **de** Anti-Haemorrhagic **en** Anti-Exhaustion. Le PTB 9.3.0 utilisait encore « Anti-Hemorrhagic Syringe ». → L'audit phase 0 (A-186) avait **inversé** le sens (voir CONFLICT-L5-01).

**Usage de l'Anti-Exhaustion Syringe** (HYPOTHESIS + HEURISTIC) :
- Elle agit **pendant un soin**. Pour vous-même, il faut donc être **blessé** et lancer un auto-soin. Sain, vous ne pouvez l'utiliser que sur un allié que vous soignez (« affected Survivor » : le survivant soigné, interprétation HYPOTHESIS).
- Elle vaut **une activation d'Exhaustion supplémentaire** (Lithe, Sprint Burst, Dead Hard, Overcome…) au prix du kit entier.
- HEURISTIC : utilisez les charges d'abord (soins), gardez la seringue pour quand le kit est presque vide.

**Usage optimal** (HEURISTIC) :
- Le kit sert surtout à **l'autonomie** : se soigner sans mobiliser un coéquipier.
- CALC : auto-soin kit = 24 s-surv. Soin mutuel sans kit = 16 s × 2 survivants = **32 s-surv + trajet**. L'auto-soin au kit est donc **moins cher en temps d'équipe** qu'un soin mutuel sans kit, même s'il est plus lent à l'horloge.
- Soin d'allié au Ranger : 10,7 s × 2 = 21,3 s-surv par état (contre 32).

**Erreurs fréquentes** (HEURISTIC) :
- Seringue + Styptic Agent (combo « Looper » du seed) : la seringue **consomme le kit**, le bonus d'auto-soin du Styptic est alors perdu.
- S'auto-soigner dans le Terror Radius : 24 s, interrompu, charges brûlées au taux 1,33.
- Prendre un Ranger pour s'auto-soigner : le bonus altruiste ne sert à rien en auto-soin.

**Valeur** (HEURISTIC) : SoloQ **haute** (autonomie, erreurs pardonnées). SWF **moyenne-haute** (soins d'équipe, seringue).

### 2.3 Flashlights

| Lampe | Rareté | Batterie | Modificateurs |
|---|---|---|---|
| Flashlight | Uncommon | 8 s | — |
| Sport Flashlight | Rare | 8 s | Visée **+20 %**, déplétion −11 % |
| Utility Flashlight | Very Rare | **12 s** | Luminosité +30 %, durée d'aveuglement +15 %, **visée −20 %** |
| Anniversary, Banquet, Masquerade, Will O' Wisp | Event | 8 s | Cosmétique (confettis, teinte) |

**Statistiques par défaut** (FACT [SS], page Flashlights) : portée **10 m**, temps pour aveugler **1 s**, aveuglement **2 s**, angle du faisceau **20°**.

**Mécanique** (FACT [SS]) :
- Viser la **tête** du tueur (un peu en dessous : c'est là qu'est sa caméra). Le cône extérieur se resserre sur le cône intérieur, un grésillement s'entend ; la réussite fait « clignoter » le faisceau et déclenche le Score Event *Killer Blind*.
- Le tueur ne peut être aveuglé **que s'il voit le faisceau sur son écran** (1.6.1).
- **Contre** : regarder le ciel, le sol ou un côté. L'aveuglement **régresse au même rythme** qu'il progresse : détourner la tête ne remet pas à zéro.
- Un tueur aveuglé ne peut faire que des **Quick Attacks** (pas de fente). Son ouïe n'est pas affectée.
- Tueur qui **porte** un survivant et qui est aveuglé : **étourdi, il lâche le survivant** (Flashlight Rescue).
- **Depuis 1.8.3, la luminosité et les add-ons n'accélèrent plus l'aveuglement.** La luminosité est un effet **visuel** (plus fort côté tueur).
- 6.3.0 : délai entre deux allumages (anti-stroboscope). 6.4.0 : **tampon de 0,4 s à la fin de l'animation de ramassage** pendant lequel un aveuglement étourdit le tueur ; **immunité quand le tueur sort un survivant d'un casier**. 6.7.0 : suppression du « lightburn » (Wraith, Nurse) et des interactions Hag / Spirit / Artist.
- Interactions spéciales encore LIVE (FACT [SS]) : aveugler Shape / Ghost Face coupe leur traque ; aveugler Legion en Feral Frenzy annule le pouvoir **sans fatigue** (il peut frapper aussitôt) ; même chose pour Mastermind en Virulent Bound ; aveugler les zombies de Nemesis les étourdit.

**Add-ons** :

| Add-on | Rareté | Effet | Change la décision ? |
|---|---|---|---|
| Battery | Common | +2 s de batterie | Non |
| Leather Grip | Common | Visée +20 % | Oui (saves) |
| Power Bulb | Common | Luminosité +20 %, aveuglement +10 % | Non |
| Wide Lens | Common | **Largeur +25 %, portée −25 %** | Oui : plus tolérant à courte distance |
| Focus Lens | Uncommon | Portée +25 %, luminosité +20 %, aveuglement +10 %, largeur −15 % | Faible |
| Heavy Duty Battery | Uncommon | +4 s | Non |
| Low Amp Filament | Uncommon | Déplétion −24 % | Non |
| Rubber Grip | Uncommon | **Visée +40 %** | Oui (saves) |
| TIR Optic | Uncommon | Luminosité +30 %, aveuglement +15 % | Non (**pas** un add-on de largeur, contrairement au seed) |
| Intense Halogen | Rare | Luminosité +40 %, aveuglement +20 % | Faible |
| Long Life Battery | Rare | +6 s | Non |
| High-End Sapphire Lens | Very Rare | Portée +25 %, luminosité +30 %, aveuglement +15 %, largeur −25 % | Faible |
| Odd Bulb | Visceral | Luminosité +50 %, **aveuglement +25 %**, déplétion **+14 %** | Faible pour les saves |
| Broken Bulb | Event (Halloween) | Clignotement, luminosité +15 %, aveuglement +30 % | Hors saison |

Raretés et effets : FACT [SS].

**Ce qui compte vraiment** (HYPOTHESIS, déduite des FACT ci-dessus) :
- La **vitesse** d'aveuglement est fixe (1 s). Pour un save, la **visée** (tremblement) et la **largeur** du faisceau comptent plus que la luminosité.
- La **durée** d'aveuglement (Odd Bulb, Utility) allonge surtout l'aveuglement **en chase** ou **après** le save. Le save lui-même est déjà acquis au moment de l'étourdissement.
- Kit de save plausible : **Sport Flashlight + Rubber Grip + Wide Lens (ou Leather Grip)**. Le combo seed « Utility + Odd Bulb + Long Life » a une visée −20 % : il est surtout plus long et plus brillant.

**Erreurs fréquentes** (HEURISTIC) :
- Traverser la carte pour un save au lieu de réparer (déjà relevé au lot 9).
- Allumer trop tôt : le tueur voit le faisceau et regarde un mur.
- Lampe contre Lightborn (immunité, et votre aura est révélée 6/8/10 s).

**Valeur** (HEURISTIC) : SoloQ **faible à moyenne** (aucune coordination, et les coéquipiers ne jouent pas autour). SWF **moyenne à haute** (saves annoncés, rotation de lampes, pression sur chaque ramassage).

### 2.4 Fog Vials (objet ajouté en 9.1.0)

| Fog Vial | Rareté | Charges | Expansion | Durée du nuage | Recharge |
|---|---|---|---|---|---|
| Apprentice's | Common | 4 | 2 s | 8 s | 70 s |
| Artisan's | Uncommon | 4 | 1,5 s | 10 s | 65 s |
| Vigo's | Rare | 4 | 1,2 s | 12 s | 60 s |

- Nuage de **8 m de rayon** (notes 9.1.0 : « 8-meter radius » ; wiki : « maximum size of 8 metres »). Opacité **33 %** à l'intérieur. **Supprime les auras et les griffures** dans la zone, **atténue sons et visibilité** (FACT [VMS]).
- Historique (FACT [VMS]) : 9.1.0 : 1 charge (recharge infinie), opacité 40 %. 9.1.1 : opacité 33 %. 9.1.2 : **2 charges**, et **The Singularity peut se téléporter vers un survivant qu'il voit dans le nuage**. 9.5.0 : **4 charges**, nuage **toujours totalement opaque vu de l'extérieur**, et les **auras d'un survivant au sol ou accroché restent visibles** à travers le nuage.
- Charges **et** recharge : chaque usage coûte 1 charge et lance le délai de recharge (interprétation de la description wiki, FACT [SS] ; comportement exact de la recharge sans charge restante : UNCERTAIN).

**Add-ons** (raretés et effets : FACT [VMS], notes 9.1.0 / 9.1.1 / 9.5.0 + wiki) :

| Add-on | Rareté | Effet | Change la décision ? |
|---|---|---|---|
| Volcanic Stone | Common | Recharge −5 s | Non |
| Reactive Compound | Uncommon | Expansion −1 s (Vigo's : 1,2 → 0,2 s, CALC) | **Oui** : le nuage devient utilisable en pleine chase, au contact |
| Oily Sap | Rare | Durée +2 s | Non |
| Mushroom Formula | Very Rare | Taille +2 m | Faible |
| Potent Extract | Visceral | Opacité **+100 %** (9.5.0, relatif au nouveau rendu), durée **−50 %**, taille **−25 %** | **Oui** : nuage court et petit mais vraiment opaque. Pour casser une ligne de vue précise, pas pour « couvrir une zone » |

**Usage optimal** (HEURISTIC) :
- Casser la **ligne de vue** : au moment où le tueur casse une palette (2,34 s d'animation, caméra baissée) ou contourne un mur, pour cacher **la direction de sortie**.
- Pas dans un espace ouvert sans obstacle : le tueur contourne le nuage et vous reprend à la sortie (les griffures reprennent hors de la zone).
- Contre The Singularity : le nuage ne protège pas s'il vous voit dedans (9.1.2).

**Erreurs fréquentes** (HEURISTIC) :
- Lancer le nuage dans le Terror Radius d'un tueur avec Overwhelming Presence : Exhausted 15 s.
- S'y cacher immobile en pensant être invisible (opacité 33 % à l'intérieur ; le tueur qui entre peut vous voir).
- L'utiliser pour cacher un allié au sol ou accroché : leurs auras restent visibles (9.5.0).

**Valeur** (HEURISTIC) : SoloQ **haute** (survie personnelle, pas de coordination). SWF **moyenne**.

### 2.5 Keys (refonte 9.1.0)

| Clé | Rareté | Charges | Lecture d'aura des survivants | Coffres | Trappe |
|---|---|---|---|---|---|
| Broken Key | Common | 6 | 48 m, 8 s | Non | Non |
| Dull Key | Uncommon | 5 | 56 m, 9 s | Oui | Oui |
| Skeleton Key | Rare | 6 | 64 m, 10 s | Oui | Oui |

FACT [VMS] (notes 9.1.0 + wiki).

- **Lecture d'aura** : maintenir Use Item pour canaliser. À la fin, **1 charge** consommée, auras des **autres survivants** révélées. Durée de canalisation par défaut : **UNCERTAIN** (non indiquée ; Shrill Whistle la réduit de 35 %).
- **Coffre** (Dull / Skeleton) : ouverture rapide, **1 charge**, objet **Rare ou mieux garanti**. L'aura du coffre devient jaune pour les survivants dans 42 m, et **un autre survivant** peut le fouiller **une fois** (Rare ou mieux garanti). Pendant sa fouille, son aura est révélée au porteur de la clé (FACT [VMS]). Durée de l'« ouverture rapide » : **UNCERTAIN**.
- **Trappe** (Dull / Skeleton) : rouvrir une trappe **fermée** en **2,5 s**, **1 charge**. Depuis 9.1.0, la clé **n'est plus détruite** en ouvrant la trappe (FACT [VMS]). Une clé **vide** ne peut pas ouvrir la trappe (5.1.0, FACT [SS]).

**Add-ons** (FACT [VMS]) :

| Add-on | Rareté | Effet | Change la décision ? |
|---|---|---|---|
| Friendship Charm | Common | +1 charge | Non |
| Shrill Whistle | Uncommon | Canalisation −35 % | Faible |
| Braided Bauble | Rare | Auras +2 s | Non |
| Unique Wedding Ring | Very Rare | Vous et l'Obsession voyez **en permanence** l'aura l'un de l'autre (passif). Votre chance d'être l'Obsession **initiale** est réduite de 100 % | **Oui** : info permanente sur l'Obsession, mais votre aura aussi exposée à elle seule (pas au tueur) |
| Blood Amber | Visceral | Pendant la canalisation : **vous voyez l'aura du tueur et il voit la vôtre**. Auras −6 s, charges −2 | **Oui** : outil d'info risqué |

**Usage optimal** (HEURISTIC) : la clé est d'abord un **objet d'information** (savoir qui est en chase, qui répare où) puis, en SWF, un **générateur d'objets Rare+** pour les coéquipiers (§4.2). Pour la trappe, elle ne sert que si **vous êtes le dernier** et que le tueur a **fermé** la trappe (§5.9).

**Valeur** (HEURISTIC) : SoloQ **moyenne** (info ; trappe rarement décisive). SWF **moyenne** (redondant avec la voix, mais coffres Rare+ pour l'équipe).

### 2.6 Maps (refonte 9.1.0)

| Map | Rareté | Charges | Auras palettes + fenêtres |
|---|---|---|---|
| Cryptic Map | Common | 4 | 24 m, 10 s |
| Scribbled Map | Uncommon | 5 | 32 m, 12 s |
| Annotated Map | Rare | 6 | 40 m, 14 s |
| Bloodsense Map | Event | 8 | 48 m, 14 s, **plus les survivants blessés** ; crée des flaques de sang sous vous |

- **Beam of Light** (action secondaire pendant la canalisation) : faisceau de **16 s** à votre position, **visible et audible des seuls survivants**. Les auras des **générateurs dans 32 m du faisceau** sont révélées (en rouge) **à tous les survivants** (FACT [VMS]).
- 9.1.0 : les objets révélés par des perks ne sont plus « trackables » par la Map (FACT [VMS]).

**Add-ons** (FACT [VMS]) :

| Add-on | Rareté | Effet | Change la décision ? |
|---|---|---|---|
| Glowing Ink | Common | Auras +2 s | Non |
| Gnarled Compass | Uncommon | +2 charges | Non |
| Battered Tape | Rare | Portée +8 m | Non |
| Sharpened Flint | Very Rare | Révèle les **totems** dans la portée | **Oui** : chasse aux Hex, choix du totem de Boon |
| Crimson Stamp | Visceral | **Aura du tueur révélée à tous les survivants** quand il est dans 8 m du faisceau. Faisceau −10 s (donc 6 s), charges −2 | **Oui** : le faisceau devient une « alarme » (ex. près d'un crochet) |

**Usage optimal** (HEURISTIC) : une charge en tout début de partie pour **lire les tiles** autour de vous et **montrer à l'équipe les gens proches** (répartition, repérage du 3-gen). Ensuite, une charge à chaque arrivée dans une zone inconnue.

**Valeur** (HEURISTIC) : SoloQ **moyenne** (le faisceau informe même des coéquipiers muets). SWF **faible-moyenne** (la voix remplace le faisceau). Bon objet d'**apprentissage** des cartes.

### 2.7 Firecrackers et objets d'événement

- **Firecrackers** (Chinese Firecracker, Winter Party Starter, Third Year Party Starter) : aveuglent, assourdissent et étourdissent un tueur proche **et les survivants proches**. Usage unique. **Plus obtenables dans la Bloodweb** hors événements ; les stocks restent utilisables (FACT [SS]).
- Variantes d'événement des autres objets (Anniversary, Banquet, Masquerade, Festive, Will O' Wisp, Lunchbox) : **mêmes statistiques** que leur modèle de base (Commodious pour les toolboxes, First Aid Kit pour les kits, Flashlight pour les lampes), plus un effet cosmétique (FACT [SS]).
- Firecrackers et Flash Grenades sont **bloqués par Lightborn** (FACT [SS]).

### 2.8 Objets limités (1v4) qui changent une décision

| Objet | Contexte | Point de décision (FACT [SS] sauf mention) |
|---|---|---|
| Flash Grenade | Perk Flashbang | Fabriquée dans un casier après 50/45/40 % de réparation **personnelle** ; **réutilisable** (une nouvelle grenade à chaque seuil). Bruit fort, aveugle aussi les survivants proches |
| Lament Configuration | Contre Cenobite | La ramasser remet la Chain Hunt à zéro ; la résoudre révèle votre position et permet au tueur de se téléporter vers vous ; **Oblivious** tant que vous la portez |
| Vaccine / First Aid Spray | Contre Nemesis / Mastermind | Cure l'infection (1 / 2 utilisations) |
| EMP | Contre Singularity | Imprimé dans les Supply Cases (100 charges, dont 3 à imprimer activement). Hindered −10 % en le tenant ; 10 m de zone ; retire le Slipstream, désactive les Biopods 45 s |
| VHS Tape | Contre Onryō | Insérée dans la bonne TV : −3 Condemned |
| Remote Flame Turret | Contre Xenomorph | La porter : Hindered −35 %, **Exhausted**, Incapacitated, aura révélée aux alliés |
| Glowing Fungus | Contre Krasue | 3 s pour la manger, marche forcée ; vide le Leeched Meter |
| Eye / Hand of Vecna | Contre Lich (coffre au 20) | Effets forts, mais permettent au Lich de vous tuer à 2 crochets et au sol |
| Keycard | Nostromo Wreckage | Ouvre une salle secrète avec un coffre |

Objets d'événements ou de modes spéciaux (Candelabra, Lantern, Blood Can, Void Crystal, Invoking Salt, Fog Crystal, Pocket / Fragile Mirror, Searcher's Pendant, Antidote 2v8) : présents dans le wiki mais **hors 1v4 standard**. Non détaillés.

---

## 3. Offrandes

### 3.1 Règles LIVE

- **Offrandes de royaume / carte (9.0.0)** : chance **fixe de 20 %** d'aller dans le royaume ou sur la carte ciblée. **Les doublons brûlés par plusieurs joueurs ne se cumulent plus** (FACT [VMS]). Elles ne « garantissent » plus rien.
- **Offrandes secrètes (9.0.0)** : la plupart des offrandes qui modifient la partie sont **secrètes** (face cachée à l'écran d'offrandes et dans Match Details, révélées au Tally) : Blueprints, Coins, Luck **personnelle**, Reagents, royaume / carte, Shrouds, Wards **sauf** Sacrificial Ward. Les Luck « pour tous » restent visibles (FACT [VMS]).
- **Conflits** : entre offrandes de raretés différentes qui s'opposent, la plus rare brûle et les autres sont rendues ; à rareté égale, **toutes** rebondissent (sauf offrandes de carte). Les offrandes qui se cumulent « tremblent » à l'écran (FACT [SS]).
- **Remboursement** si la partie est annulée (déconnexion au chargement ou dans la 1re minute) (FACT [SS]).
- **Sacrificial Ward** : rejette les offrandes de royaume / carte **des autres joueurs**, sauf si tous les autres brûlent la **même** offrande. Il ne bloque **pas** un royaume : le tirage aléatoire peut encore y mener (FACT [SS]).
- **Apparition (9.0.0)** : par défaut, les survivants apparaissent **à ≤ 12 m les uns des autres et au même étage** « when possible ». Shroud of Binding → **Shroud of Separation** (survivants séparés). L'ancienne Shroud of Separation du tueur → **Shroud of Vanishing** (rejette toutes les offrandes d'apparition des survivants) (FACT [VMS]).
- **Luck (9.0.0)** : hors 2 survivants restants ou perk (Slippery Meat, Up the Ante), **une offrande de Luck est la seule façon de débloquer les tentatives d'auto-décrochage** au 1er palier. Base **4 %** par tentative, 3 tentatives max, chaque échec retire **20 s** au palier (FACT [VMS], notes 9.0.0 + wiki Hooks / Luck).
- **BP** : les offrandes de BP s'appliquent **après** le plafond de 10 000 par catégorie (FACT audit SS). Les offrandes de BP ne modifient pas la partie.

### 3.2 Quelles offrandes comptent vraiment (survivant)

| Offrande | Effet LIVE | Secrète ? | Verdict (HEURISTIC) |
|---|---|---|---|
| **Vigo's Shroud** | Vous apparaissez **le plus loin possible du tueur** | Oui | **Forte en SoloQ** : évite d'être la première cible au spawn. Annulée par Shroud of Vanishing |
| **Shroud of Separation** | Tous les survivants apparaissent séparés | Oui | **Utile** si l'équipe veut 4 gens d'emblée. Coûte la coordination du début (soins, info) |
| Shroud of Union | Vous commencez avec un autre survivant | Oui | **Presque redondante** depuis 9.0.0 : le spawn par défaut regroupe déjà à ≤ 12 m |
| Luck personnelle (Chalk / Cream / Ivory Chalk Pouch : +1/2/3 %) | Débloque vos auto-décrochages | Oui | **Assurance SoloQ** (camp, personne ne vient). CALC : 4 + 3 = 7 % par essai → **≈ 20 %** sur 3 essais, pour −60 s de palier si tout échoue |
| Luck pour tous (Salt Pouch, Black Salt Statuette, Vigo's Jar of Salty Lips : +1/2/3 %) | Débloque les auto-décrochages de **tous** | **Non** | Même logique, pour l'équipe ; visible par le tueur |
| White Ward | Objet protégé en cas de mort ; add-ons conservés (mort ou évasion) | Oui | Pour un objet rare ou des add-ons Visceral |
| Black Ward | Add-ons non consommés | Oui | Idem, add-ons seuls |
| Royaume / carte (20 %) | 20 % vers le royaume ciblé | Oui | **Faible** : 80 % de chances de ne rien changer. Utile seulement pour « tenter » une carte d'entraînement |
| Sacrificial Ward | Rejette les offrandes de royaume des autres | **Non** | Anti-offrande de carte du tueur, avec les limites ci-dessus |
| Annotated / Vigo's Blueprint | Trappe plus probable près du Killer Shack / du bâtiment principal (+100 % de probabilité) | Oui | Niche (builds trappe) |
| Shiny / Tarnished Coin (+2 / +1 coffre), Cut / Scratched (−2 / −1) | Nombre de coffres | Oui | Pour builds coffres (§4) |
| Clear Reagent (brouillard −50 %) | Carte plus lisible | Oui | Faible (confort) |
| Escape! Cake, Survivor Pudding (+100 % pour vous), Bloody Party Streamers (+100 % pour tous), Bound Envelope (+25 % pour les survivants), Hollow Shell / Sealed Envelope (+25 %), fleurs (+50/75/100 % par catégorie) | BP | Non | Aucun effet sur la partie. Streamers : cumul entre plusieurs Streamers **UNCERTAIN** (non indiqué sur la page) |

Effets : FACT [SS] (page Offerings, lue en entier) ; règles 9.0.0 : FACT [VMS].

### 3.3 Offrandes du tueur que le survivant doit connaître

| Offrande | Effet LIVE (FACT [SS]) | Conséquence pour le survivant (HEURISTIC) |
|---|---|---|
| Ivory / Ebony Memento Mori (secrètes) | Tuer **un / tous** les survivants ayant **2 paliers de crochet**, une fois au sol | Sur le « death hook », **être mis au sol = mourir** : pas de wiggle, flash save ni sabotage possible. Joue plus prudemment à 2 paliers |
| Mouldy / Rotten / Putrid Oak (−1,5 / −2,5 / −3,5 m) ; Petrified Oak (+1 m) | Distance minimale entre crochets | Crochets plus serrés = sabotage et wiggle moins efficaces |
| Bloodied / Torn Blueprint | Sous-sol plus probable dans le Killer Shack / le bâtiment principal ; aura des crochets du sous-sol 20 s pour le tueur | Plan « sous-sol » : crochets **insabotables** |
| Faint / Hazy / Murky Reagent | Brouillard +25 / 50 / 75 % | Visibilité réduite des deux côtés |
| Shroud of Vanishing | Annule vos Shrouds | Si « votre Shroud n'a pas marché » |
| Offrandes de royaume du tueur | Mêmes règles (20 %, non cumulables) | — |

---

## 4. Économie : coffres, rentabilité des objets

### 4.1 Coffres (FACT [SS] sauf mention)

- **3 coffres par défaut** : 2 aléatoires + **1 au sous-sol** (au fond, ou derrière le mur de casiers). Minimum **48 m** entre deux coffres (2.5.0). De **1 à 13** coffres selon Coins et Hoarder.
- Ouvrir **ou** fouiller : **8 charges** à 1 c/s = **8 s** (10 → 8 s en 8.4.0), progression partielle conservée, bruit audible à **20 m**. Le tueur peut **saisir** un survivant qui ouvre un coffre.
- La rareté de l'objet est décidée par **celui qui termine** l'ouverture.
- Probabilités publiées par le wiki (**source : étude Reddit de 800+ coffres, juin 2019**) :

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

  - **Statut : HISTORICAL / COMMUNITY_OBSERVATION**, pas LIVE vérifié. L'étude date de 2019 : elle est antérieure aux **Fog Vials** (absentes du tableau), à la refonte Keys / Maps (9.1.0) et au passage de Plunderer's à +50 % fixe (8.4.0).
- **Perks de coffre LIVE** :
  - **Plunderer's Instinct** (LIVE = 8.4.0) : auras des coffres fermés, des objets dans les coffres ouverts et des objets au sol dans **32/48/64 m** ; **+50 %** de chances d'objets plus rares. Ne touche pas la Luck. *PTB 10.2.0 : portée illimitée + ouverture 150/175/200 % plus rapide — non LIVE.*
  - **Appraisal** (LIVE = 9.1.0) : **4 jetons**, fouiller un coffre ouvert et vide pour un objet de plus, **2 fois par coffre** ; fouille +40/60/80 %.
  - **Pharmacy** (LIVE = 9.2.0) : ouverture et fouille +75/100/125 %, bruit −12 m, **Emergency Med-Kit garanti**, une fouille par coffre.
  - **Ace in the Hole** : objets de coffre livrés avec 1 add-on (Visceral ou moins) + 50/75/100 % de chance d'un 2e (Uncommon ou moins) ; conserve les add-ons de l'objet tenu à l'évasion.
  - **Streetwise** : +60/70/80 % de charges pour les objets de coffre.
  - **Residual Manifest / Scavenger** : une fouille par partie d'un coffre ouvert, lampe de base / toolbox de base garantie.
  - Contre (tueur) : **Hoarder** (bruit fort 4 s à l'ouverture d'un coffre ou au ramassage d'un objet dans 32/48/64 m, +2 coffres), **Human Greed** (Dracula : refermer les coffres ouverts, auras près des coffres fermés).

### 4.2 Clé + coffre (refonte 9.1.0)

- Dull / Skeleton Key : **1 charge = 1 objet Rare+ pour vous + 1 objet Rare+ pour un allié** qui fouille le même coffre (FACT [VMS]).
- CALC : Rare+ sans clé = 16 + 5 + 2 = **23 %** (données 2019) ; avec la clé = **100 %**.
- HEURISTIC : en SWF, une Skeleton Key **équipe l'équipe** en début de partie (kit Emergency, Commodious, Vigo's Fog Vial…). L'allié paie tout de même le temps de fouille.

### 4.3 Rentabilité d'un objet, en secondes-survivant

Modèle : un objet « rapporte » les s-surv qu'il fait gagner, moins ce qu'il coûte (trajet, action, risque). **Tous les chiffres ci-dessous sont des CALC sur des FACT [SS], puis des HYPOTHESIS pour l'usage réel** (Great ignorés sauf mention, bonus supposés additifs, aucune pénalité du tueur).

**Toolbox** : gain = C × b / (1 + b) (C = charges, b = bonus de vitesse ; C charges versées en C/(1+b) s au lieu de C s).

| Configuration | C | b | Gain par toolbox pleine |
|---|---|---|---|
| Alex's (18) | 18 | 0,10 | **1,6 s** (24 charges : 2,2 s) |
| Worn-Out Tools | 16 | 0,50 | 5,3 s |
| Toolbox | 20 | 0,50 | 6,7 s |
| Mechanic's | 16 | 0,75 | 6,9 s |
| Engineer's | 16 | 1,00 | 8,0 s |
| Commodious | 32 | 0,50 | **10,7 s** |
| Commodious + Socket Swivels | 32 | 0,80 | 14,2 s |
| Commodious + Socket Swivels + Clean Rag | 32 | 1,00 | 16,0 s |
| Commodious + Socket Swivels + Wire Spool | 44 | 0,80 | **19,6 s** |
| Commodious + Socket Swivels + Brand New Part (réussie) | 32 | 0,80 | 14,2 + 10 = **24,2 s** |

- Great avec toolbox (HYPOTHESIS) : 40 %/s pendant ~21 s (Commodious) ≈ 8,5 tests. Tous en Great : +8,5 % ≈ **+7,7 charges**, contre ~2,3 sur la même progression sans toolbox. Gain supplémentaire ≈ **+5 s**, mais aussi **5 fois plus de ratés possibles** (−10 % et bruit fort chacun).
- **Built to Last** (HYPOTHESIS) : 8-12 s de casier pour recharger 99 % d'une Commodious (~10,6 s de gain) → **gain net ≈ 0 à +3 s**, davantage avec add-ons (Socket Swivels : ~+6 s). Rentable surtout quand le casier sert **déjà** à se cacher.
- Alex's Toolbox : quasi nulle en réparation ; sa valeur est dans les sabotages (§5.4).

**Med-Kit** :
- Soin d'un allié (1 état) : sans kit 16 s × 2 survivants = 32 s-surv ; Ranger ~10,7 × 2 = 21,3 s-surv → **~10,7 s-surv gagnées par état**, ~16 par kit de base (1,5 état), ~27 avec Gel Dressings (2,5 états).
- Auto-soin : 24 s-surv, contre 32 s-surv + trajet pour un soin mutuel sans kit → **≥ 8 s-surv gagnées, plus le trajet**, sans dépendre d'un allié.

**Coffre** (HYPOTHESIS) :
- Coût : 8 s + trajet (souvent 10-20 s) ≈ **18-28 s-surv**.
- Rendement : 43 % de Common (données 2019). Une Worn-Out Tools rapporte ~5 s ; un Camping Aid Kit, surtout de l'autonomie.
- → Ouvrir un coffre est **rentable** si vous n'avez **pas d'objet**, si le coffre est **sur votre trajet**, avec Plunderer's ou une clé, ou pour **un kit** (auto-soin) contre un tueur qui blesse souvent. Sinon, le gen rapporte plus.

**Lampe / Fog Vial / Map / Key** : gains non chiffrables proprement (HYPOTHESIS) :
- Un flash save réussi **annule un crochet** (≈ un palier de 70 s de pression du tueur, plus le trajet d'un sauveteur). Une tentative ratée coûte **20-40 s-surv** d'un joueur qui ne répare pas.
- Une Fog Vial vaut ce que vaut **une ligne de vue cassée** : de 0 (espace ouvert) à une chase entière (perte du tueur).
- Map et Key valent l'**information** : utiles surtout si elles évitent un trajet inutile ou le 3-gen.

