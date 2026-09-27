# Lot 5 — Objets, add-ons, offrandes, économie et techniques de save (mission §11)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) — voir kb/audit/pass14_lot5_items.md** (rédaction : vérifiée sur pages wiki complètes et notes officielles, 27/09/2026).

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

**Portée des étiquettes (audit §25)** : **FACT [SS]** = une seule source (page wiki), à recouper au lot 12. Au sens du projet, seules les valeurs présentes aussi dans `kb/seed/audit_phase0.txt` (ou dans une note officielle, [VP] / [VMS]) sont vérifiées. Deux valeurs que l'audit notait faibles ont été relues sur page complète : chance de test 40 %/s avec toolbox (audit : UNCERTAIN ; tableau de la page Skill Checks lu : SS) et portage 3,68 m/s (audit : SS via fandom ; page wiki.gg Hooks : 3,68 m/s).

**PTB 10.2.0 (NON LIVE) touchant ce lot** (note officielle 559, lue en local) : Pharmacy (fouille accélérée + une fouille par coffre), Plunderer's Instinct (auras illimitées, ouverture +150/175/200 %), Down to the Last (trappe sans clé), Slippery Meat (refonte : **plus de Luck**), Iron Grasp (10/11/12 %), Agitation (Haste 14/16/18 %), Dark Arrogance (aveuglements et stuns subis +25 % au lieu de 15 %), Better Than New (coffres +40/45/50 %). Tout le fichier utilise les valeurs **LIVE** ; relire ces lignes à la sortie de la 10.2.0.

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
- **Match Details (9.6.0, FACT audit VP)** : en partie, chaque survivant voit le **loadout de ses coéquipiers** (perks, objets, add-ons, offrandes non secrètes). Le loadout **du tueur** reste caché jusqu'à la fin de la partie.
  - Conséquence SoloQ (HEURISTIC) : on peut savoir qui porte une lampe, une clé, une toolbox ou un kit, et jouer autour (ne pas doubler un save, garder la trappe pour le porteur de clé, demander un soin au porteur de kit). C'est la seule « coordination » d'objets possible sans voix.
  - Conséquence contre le tueur : **Lightborn, Franklin's Demise, Overwhelming Presence ne se voient pas avant d'être subis**. Il faut les déduire en partie (`deliverables/PERK_DEDUCTION.md`).

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
| Instructions | Common | **Supprime les tests de réparation normaux**. Ne touche **pas** aux « special Skill Checks triggered by outside effects » (FACT [SS], page Instructions) | **Oui** : plus de raté possible sur les tests normaux. Utile contre ce qui **modifie** les tests normaux (Unnerving Presence, Huntress Lullaby : HYPOTHESIS déduite du texte). **Inutile** contre les tests **spéciaux** : Overcharge, Oppression, Merciless Storm (listés comme tests à part sur la page Skill Checks, FACT [SS]). Doctor : les Madness Skill Checks sont un type à part, effet d'Instructions **UNCERTAIN**. Coût : **plus aucun Great** (≈ +5 s de gain perdu par Commodious, §4.3) ; incompatible avec Hyperfocus, Stake Out, Fast Track, Specialist |
| Scraps | Common | +8 charges | Non |
| Cutting Wire | Uncommon | +20 % de vitesse de sabotage | Non |
| Protective Gloves | Uncommon | **Supprime la Loud Noise Notification** du sabotage | **Oui** : le tueur n'apprend plus le sabotage, il marche vers un crochet cassé |
| Socket Swivels | Uncommon | +30 % de vitesse de réparation | Non |
| Spring Clamp | Uncommon | −8 m de portée des bruits de réparation | Faible (stealth) |
| Wire Spool | Uncommon | +12 charges | Non |
| Grip Wrench | Rare | +20 s avant la réparation automatique du crochet saboté (30 → 50 s) | **Oui**, mais pas pour la raison intuitive : 30 s couvrent **déjà** un wiggle complet (16 s). Les 20 s de plus servent à **saboter avant le ramassage** (pendant la chase) ou à couvrir un portage long (lâchers, reprise) (HEURISTIC) |
| Hacksaw | Rare | +30 % de vitesse de sabotage | Non |
| Brand New Part | Visceral | Action dédiée près d'un gen : **un test difficile** ; réussi, il retire **définitivement 10 charges** au besoin de ce gen. Consommé | **Oui** (voir usage) |

**Brand New Part : détails** (FACT [SS]) : test « Always (1x) », zone Great de 7 %, pas de zone Good distincte ; raté = −10 % de progression. Historique : insta-complétion (avant 1.5.3), puis +15 %/+25 % (2.1.0), puis −10 charges (7.1.0).
- CALC : −10 charges = **10 s-surv** (11,1 % d'un gen).
- HEURISTIC : posez-le **sur un gen peu avancé que l'équipe va vraiment finir**. À 0 %, un raté ne coûte aucune progression ; sur un gen avancé, il coûte jusqu'à 9 charges. Risques qui restent (pas « aucun risque ») : un test raté est **probablement** un bruit fort comme tout test de réparation raté (HYPOTHESIS, non indiqué sur la page) ; le bonus est **perdu** si ce gen n'est jamais terminé (abandonné, ou gen d'un 3-gen que le tueur tient).

**Perks qui changent la toolbox** :
- Built to Last (LIVE) : dans un casier avec un objet **vide**, recharge après **14/12/10 s** (FACT [VP], note officielle 9.1.0, section « Changes from PTB » : « Increased the time spent in a locker to 14/12/10 seconds (was 12/10/8) ») : 99 %, puis 66 %, puis 33 %, 3 fois max (FACT [SS]). La page wiki affiche 12/10/8 s, valeur du **PTB** 9.1.0 (CONFLICT-P25-04, `batch2_perks_surv_p25.md`).
- Scavenger : 5 Great avec une toolbox vide = recharge complète, mais −50 % de réparation pendant 40/35/30 s (FACT [SS]).
- Change of Plan (9.4.0) : dans un casier, transforme une toolbox (non-événement) en Med-Kit de même rareté avec un add-on aléatoire, 80/90/100 % des charges, 2 jetons (FACT [VMS]).
- Streetwise (refonte 9.1.0) : les objets **trouvés dans un coffre** ont +60/70/80 % de charges permanentes. Aura du tueur 8 s au premier épuisement (FACT [VMS]).

**Usage optimal** (HEURISTIC) :
- Les gains chiffrés de la toolbox (§4.3) sont calculés **en réparation solo**. En coop (efficacité 85/70/55 % par personne, FACT audit SS), on ne sait pas si le bonus de la toolbox s'applique avant ou après la pénalité : gain réel **UNCERTAIN**. Ne pas en déduire « toujours réparer seul » : la coop finit un gen plus vite à l'horloge, ce qui compte quand le tueur arrive.
- Garder 3-5 s de charges pour **finir** un gen quand le tueur arrive (CALC Commodious à 1,5 c/s : 4,5 à 7,5 charges, soit 5-8 % d'un gen).
- En SWF sabo : Alex's + Grip Wrench + Protective Gloves (ou Hacksaw).

**Erreurs fréquentes** (HEURISTIC) :
- Instructions avec Hyperfocus / Stake Out (le seed le signale correctement).
- Toolbox près d'un tueur à pénalité de test (Unnerving Presence, Lullaby) : 40 %/s de tests = 5 fois plus de tests **par seconde** (≈ 3,3 fois plus **à progression égale**, CALC : la toolbox réduit aussi la durée), chaque raté est un bruit fort. Parade : Instructions (tests normaux seulement) ou une autre toolbox d'objet.
- Brand New Part posée sur un gen à 70 % : risque maximal, gain identique.
- Built to Last « en rotation » (voir §4.3 : avec les 14/12/10 s LIVE, le gain net est **nul ou négatif** hors situation de cachette).

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

---

## 5. Techniques (WHAT → WHY → WHEN → HOW → COUNTER → FAILURE → DRILL)

Chiffres communs (FACT [SS] sauf mention) : tueur qui porte un survivant **3,68 m/s** ; **wiggle 16 s** cumulées ; accrocher **1,5 s** ; décrocher **1 s** ; protections post-décrochage (LIVE 10.1.0) : **10 s** d'Endurance et de Haste + **10 s** d'Elusive (FACT audit VP) ; stun de palette **2 s** ; casse de palette **2,34 s** ; cooldown après un coup réussi **2,7 s** et boost de vitesse du survivant touché **1,8 s** (FACT audit).

CALC utile : en 16 s de portage, le tueur parcourt **≈ 59 m** (3,68 × 16). Tout ce qui l'oblige à marcher plus loin que ça fait gagner le wiggle.

### 5.1 Flash save (sauvetage à la lampe)

- **WHAT** : aveugler le tueur **pendant qu'il porte** un survivant (ou dans les 0,4 s de fin du ramassage) : il est étourdi et lâche le survivant (FACT [SS]).
- **WHY** : annule un crochet entier, sans que le sauveteur prenne un coup s'il est bien placé.
- **WHEN** :
  - Vous êtes **déjà** à portée (≤ 10 m, faisceau par défaut) au moment de la mise au sol, **caché**.
  - Le tueur n'a **pas Lightborn** (vérifiez la fin de partie précédente, ou un tueur qui ne réagit pas à la lampe).
  - Le ramassage **n'est pas** une saisie dans un casier (**immunité**, 6.4.0).
- **Tueurs / états immunisés LIVE** :
  - **Lightborn** : immunité aux lampes, pétards, Flash Grenades et à l'aveuglement de Blast Mine (pas à son stun) ; votre aura est révélée 6/8/10 s (FACT [SS]).
  - Saisie depuis un **casier** (FACT [SS], 6.4.0).
  - **The Animatronic** qui saisit un survivant dans une porte : immunité voulue (corrigée en 10.0.0 / 10.0.1, FACT [VP]).
  - **The Legion** avec **Iridescent Button** : immunité pendant les sauts spéciaux (FACT [VP] par la correction de description 10.0.0 ; détail wiki SS).
  - Les **Guards** du Knight ne peuvent pas être aveuglés (le Knight lui-même, si) (FACT [SS]).
  - Statut **Light-Resistant** : réservé à l'événement Black Banquet 2026 (FACT [SS]) ; présence en file normale le 27/09/2026 : UNCERTAIN.
- **HOW** :
  1. Placez-vous **face au point où la caméra du tueur regardera à la fin du ramassage**, idéalement dos à un mur ou dans un coin qu'il ne peut pas « viser » en détournant la caméra (HEURISTIC, cohérent avec le seed).
  2. Restez caché (hors de son champ) jusqu'au **début** de l'animation de ramassage. Le ramassage **ne peut pas être annulé** : une fois lancé, il est engagé.
  3. Il faut **1 s** de faisceau sur la tête. Allumez donc **~1 s avant la fin** de l'animation, pour finir dans le tampon de 0,4 s, ou visez le tueur **pendant le portage** avant qu'il n'atteigne le crochet. Durée exacte de l'animation de ramassage : **UNCERTAIN** (non documentée).
  4. Pendant l'animation d'**accrochage**, un étourdissement n'est plus possible (retiré en 1.1.2a ; comportement LIVE non re-vérifié : UNCERTAIN).
- **COUNTER (tueur)** :
  - Regarder autour avant de ramasser ; ramasser **face à un mur** ou tête baissée.
  - Frapper ou chasser d'abord le porteur de lampe ; laisser le survivant au sol.
  - Lightborn. Dark Arrogance allonge en fait les aveuglements subis de 15 % (perk à contrepartie, FACT [VP] 9.2.0).
- **FAILURE** :
  - Allumer trop tôt : le tueur vous voit, détourne la tête, et le blind **régresse** au même rythme qu'il progresse.
  - Être vu en approche : il vous frappe d'abord ou ramasse face au mur.
  - Venir de loin : 20-40 s-surv perdues (lot 9).
- **DRILL** (partie personnalisée, 1 ami tueur) : 10 ramassages par séance, en variant l'orientation (mur à gauche, à droite, en coin). Notez à quel moment vous allumez (début / milieu / fin de l'animation) et le taux de réussite. Objectif : > 6/10 sur ramassage « libre », puis contre un tueur qui regarde un mur.

### 5.2 Aveuglement en chase et à la casse de palette

- **WHAT** : aveugler le tueur **pendant qu'il casse une palette** (2,34 s, caméra verrouillée vers le bas, il ne peut pas détourner la tête) (FACT [SS]).
- **WHY** : 2 s d'aveuglement (plus avec add-ons) et **Quick Attack seulement** pendant ce temps. Avec Residual Manifest : Blindness 20/25/30 s (plus de lecture d'aura) (FACT [SS]).
- **WHEN** : face à un tueur qui casse beaucoup de palettes. Jamais contre Lightborn.
- **HOW** : placez-vous devant la palette, à ≤ 10 m, et commencez **dès** le début de la casse (il faut 1 s).
- **COUNTER** : ne pas casser la palette quand une lampe attend ; perks qui récompensent l'aveuglement ou le stun (Rampage : +1 % de Haste par jeton pendant 13 s après un aveuglement ou un stun, FACT [VP] 10.0.0).
- **FAILURE** : rester à côté du tueur aveuglé. Il entend toujours, et un Quick Attack peut vous toucher.
- **DRILL** : partie personnalisée, le tueur casse 10 palettes ; comptez les blinds réussis.

### 5.3 Pallet save (sauvetage à la palette)

- **WHAT** : faire tomber une palette sur un tueur **qui porte** un survivant. Le tueur est étourdi 2 s et **lâche le survivant, qui repart blessé** (FACT [SS]).
- **WHY** : pas d'objet requis, et le stun ne peut pas être « évité » en détournant la caméra.
- **WHEN** : le trajet du porteur **passe par une palette debout** (ou le tueur n'a pas d'autre crochet que de l'autre côté d'une palette).
- **HOW** :
  1. Précédez le tueur à la palette ; attendez-le sans vous montrer.
  2. Le stun ne s'applique qu'une fois la palette tombée à ~50 % : lâchez-la **juste avant** qu'il n'entre dans la zone (FACT [SS] pour le seuil de 50 %).
  3. Pas pendant l'animation de ramassage (non annulable) : seulement quand il peut **bouger** (FACT [SS]).
- **COUNTER** : contourner les palettes debout en portant ; Agitation (portage plus rapide) ; Awakened Awareness (voir les survivants près de soi en portant) ; lâcher le survivant et frapper le sauveteur (pénalité de lâcher : +25 % de wiggle, voir §5.8).
- **FAILURE** : lâcher trop tôt (le tueur s'arrête, casse ou contourne) ; attendre sur une palette qu'il n'a aucune raison d'emprunter.
- **DRILL** : partie personnalisée, trajets de portage vers 3 crochets différents ; pour chacun, repérez la palette « obligée ». Puis 10 tentatives en variant le moment du lâcher.

### 5.4 Sabotage (toolbox, Saboteur, crochets Scourge, sous-sol)

- **WHAT** : casser temporairement un crochet pour que le tueur doive aller plus loin, et que le survivant porté wiggle hors de ses mains.
- **Règles LIVE** (FACT [SS]) :
  - **3 s** par défaut ; avec une toolbox, **6 charges** par crochet. Commodious +50 % → 2 s (CALC) ; Alex's +100 % → 1,5 s (CALC) ; Saboteur sans toolbox +30 % → ≈ 2,3 s (CALC), cooldown 70/65/60 s.
  - Réparation automatique **30 s** (+20 s Grip Wrench).
  - Toujours une **Loud Noise Notification** (sauf Protective Gloves).
  - **Crochets du sous-sol : insabotables**, et ils ne cassent pas non plus lors d'un sacrifice.
  - Saboteur (LIVE) : pendant qu'un allié est porté, aura des crochets dans **56 m** du point de ramassage ; les **crochets Scourge** apparaissent en **jaune** (FACT [SS]).
  - **Crochets Scourge** : 4 crochets choisis au hasard ; ce sont des crochets normaux pour le sabotage. Ils sont **indiscernables** sans Saboteur (FACT [SS]).
- **WHY** : le wiggle se remplit en 16 s ; chaque crochet cassé ajoute du trajet (CALC : ~59 m de marge).
- **WHEN** :
  - Un allié est porté, **loin du sous-sol**, et vous êtes près du crochet vers lequel il se dirige.
  - Priorité aux **crochets Scourge** (Saboteur) : ils appliquent l'effet de la perk Scourge (ex. Pain Resonance), les casser prive le tueur de sa perk (HEURISTIC).
- **HOW** :
  1. Suivez la trajectoire du tueur (Saboteur, Kindred, son).
  2. Sabotez le crochet **visé**, **au dernier moment** (2-4 s avant son arrivée). Le bruit l'avertit : trop tôt, il change de crochet.
  3. Enchaînez avec le crochet suivant si possible (Alex's : 3 sabotages par toolbox, CALC 18 / 6).
  4. Combinez avec Breakout (+25 % de wiggle → 12,8 s, CALC) et le body block (§5.5).
- **COUNTER (tueur)** :
  - **Scourge Hook: Hangman's Trick** : bruit fort dès qu'un survivant **commence** un sabotage, et en portant, auras des survivants dans 12/14/16 m d'un crochet Scourge (FACT [SS]).
  - Aller vers le **sous-sol** ; offrandes Oak (crochets plus serrés) ; Iron Grasp, Agitation ; Mad Grit.
  - Frapper le saboteur (il est souvent sain, près du trajet).
- **FAILURE** :
  - Saboter trop tôt (le tueur reroute) ou un crochet qu'il ne visait pas.
  - Saboter près du sous-sol : il ira au sous-sol.
  - Deux saboteurs sur le même crochet pendant que les gens n'avancent pas.
- **DRILL** : sur 3 cartes, repérez en partie personnalisée l'emplacement du sous-sol et les chaînes de crochets. Chronométrez « ramassage → crochet le plus proche » à 3,68 m/s ; entraînez-vous à arriver 3 s avant le tueur.

### 5.5 Body block

- **WHAT** : se placer physiquement sur le chemin du tueur (collision) pour lui faire perdre du temps.
- **WHY** : gagner les mètres qui manquent à un allié blessé, ou prolonger un portage (wiggle).
- **WHEN** :
  - Passages étroits : porte, couloir, escalier, sortie de fenêtre, entre deux obstacles.
  - Un allié porté : bloquer la route vers le crochet le plus proche. Chaque détour compte (CALC : 1 s de détour ≈ 3,7 m de portage).
  - **Jamais** si vous êtes vous-même à 2 paliers (lot 9 et 11).
- **HOW** : anticipez sa trajectoire, restez **au centre** du passage, bougez légèrement avec lui. Acceptez le coup s'il frappe : c'est alors un **protection hit** (§5.6).
- **COUNTER** : frapper le bloqueur (il perd un état de santé) ; lâcher l'allié porté pour le frapper puis le reprendre (lâcher = +25 % de wiggle) ; faire le tour.
- **FAILURE** : bloquer dans un espace ouvert (il vous contourne) ; bloquer en étant blessé (vous vous faites mettre au sol) ; bloquer un tueur qui n'avait pas besoin de passer par là.
- **DRILL** : partie personnalisée, un ami porte un bot vers un crochet : mesurez le temps gagné par un blocage dans une porte, puis en terrain ouvert.

### 5.6 Protection hit

- **WHAT** : prendre volontairement le coup à la place d'un allié plus fragile.
- **Définition du jeu** (FACT [SS], page Protection Hits) : le Score Event *Protection* (200 BP) se déclenche quand vous **prenez un coup dans 10 m d'un survivant blessé**, ou **pendant que le tueur porte un survivant**. Toutes les attaques ne le déclenchent pas (liste sur la page *Attacks*, non lue).
- **Perks liées** (FACT [SS]) : Duty of Care (sain : +25 % de Haste 4/5/6 s aux alliés dans 12 m) ; Mettle of Man (après 3 protection hits) ; **Forced Penance** (tueur : Broken 60/70/80 s à qui prend un protection hit).
- **WHY** : le tueur perd son cooldown de **2,7 s** et doit réorienter la chase. Vous gagnez un boost de **1,8 s**. L'allié garde sa santé (HYPOTHESIS sur le gain net : environ 3-5 s de chase plus la réorientation, non mesuré).
- **WHEN** :
  - Vous êtes **sain**, avec des paliers bas.
  - L'allié est **blessé** et proche d'une tile, ou vient d'être décroché.
  - Le tueur n'est **pas** à one-shot, et n'a pas Forced Penance (sinon Broken 60-80 s).
- **HOW** : placez-vous **entre** le tueur et l'allié, dans l'axe de sa fente. Juste après le coup, partez **dans une autre direction** que l'allié pour séparer les cibles.
- **COUNTER** : ne pas frapper le bloqueur, le contourner (vous « prenez » sans avoir été frappé) ; Forced Penance.
- **FAILURE** :
  - Prendre un coup inutile (le tueur ne visait pas l'allié) : un état de santé offert.
  - Deux protecteurs : deux blessés.
  - Protéger un décroché qui a encore son **Endurance** (10 s) : il encaisse déjà le coup sans aller au sol.
- **DRILL** : partie personnalisée, un allié blessé boucle une tile ; interposez-vous au moment de la fente. 10 essais.

### 5.7 Save au casier (Head On, Flashbang)

- **WHAT** : étourdir ou aveugler le tueur **depuis un casier** pour lui faire lâcher un allié porté. Tout étourdissement ou aveuglement du porteur **libère** le survivant (« by any means », FACT [SS] page Hooks).
- **Outils LIVE** (FACT [SS]) :
  - **Head On** : après 3 s dans le casier, sortie en sprint ; stun **3 s** si le tueur est à **≤ 2,5 m** ; Exhausted 60/50/40 s si réussi ; **bruit fort si raté** ; inutilisable si Exhausted. **Pas un aveuglement** : Lightborn ne le bloque pas.
  - **Flashbang** : grenade fabriquée dans un casier (50/45/40 % de réparation personnelle, réutilisable). Aveugle tous les joueurs proches, **bloquée par Lightborn**.
- **WHY** : le casier cache votre présence (auras bloquées à l'intérieur, sauf à l'entrée et à la sortie, FACT [SS]).
- **WHEN** : casier **sur le trajet** probable du porteur (entre le lieu du ramassage et le crochet), ou près d'un crochet quand le tueur revient.
- **HOW** : entrez **sans être vu** (une entrée normale est lente mais silencieuse ; une entrée en sprint fait un bruit fort, sauf Quick & Quiet). Attendez 3 s (Head On), puis sortez quand le tueur passe **à ≤ 2,5 m**.
- **COUNTER** : fouiller les casiers proches (2,33 s pour un casier vide ; 5 s pour extraire un survivant, avec **immunité aux lampes** pendant la saisie) ; Lightborn contre Flashbang ; éviter les rangées de casiers en portant.
- **FAILURE** : casier trop loin du trajet ; sortie trop tôt (raté = bruit fort, le tueur vous trouve) ; Head On pendant votre Exhausted ; être vu en entrant.
- **DRILL** : partie personnalisée, 10 passages de tueur devant un casier ; travaillez la distance de 2,5 m.

### 5.8 Wiggle, drop et libération

- **WHAT** : se libérer en étant porté.
- **Règles LIVE** (FACT [SS], page Wiggle) :
  - Tests de wiggle « ping-pong » (zones à 3 h et 9 h). Tant qu'ils sont réussis, la jauge monte à **+1 c/s** : **16 s** pour se libérer.
  - Un raté **met en pause** la jauge et le déport latéral du tueur. Good = déport 50 %, Great = 120 %.
  - **Lâcher** un survivant (dribble) : **+25 %** de jauge. Au plus tard au 4e lâcher, il est libre. Dès 75 % de jauge, **le premier lâcher le libère**.
  - Perks : Boil Over (déport +60/70/80 %, auras des crochets dans 16 m cachées au tueur, +33 % de la jauge actuelle si le tueur tombe d'une hauteur), Breakout (allié dans 5 m : +25 % de wiggle, Haste 6/8/10 %), Flip-Flop (la récupération au sol remplit la jauge jusqu'à 40/45/50 %), Power Struggle (à 25/20/15 % de jauge, faire tomber une palette en étant porté : stun et libération).
  - Contres : Iron Grasp (déport −75 %, +10/11/12 % de temps pour se libérer ; **modifiée au PTB 10.2.0**, valeur LIVE à re-vérifier : UNCERTAIN), Agitation, Mad Grit (pause de la jauge 2/3/4 s par coup porté), Awakened Awareness.
- **WHY** : chaque seconde de wiggle se combine avec le sabotage, le body block et le pallet save. Le tueur doit arriver au crochet en < 16 s.
- **WHEN** : toujours wiggler, et réussir les tests (un raté fige la jauge).
- **HOW** : wigglez **vers** les obstacles et les coéquipiers qui bloquent ; avec Boil Over, vers les hauteurs.
- **COUNTER** : crochets proches (Oak), sous-sol, Iron Grasp.
- **FAILURE** : rater les tests par panique ; l'allié qui bloque se place du mauvais côté du déport.
- **DRILL** : partie personnalisée, 10 portages : comptez les tests ratés. Objectif 0.

### 5.9 Trappe avec une clé

- **Règles LIVE** (FACT [SS] / [VMS]) :
  - La trappe n'apparaît et ne s'ouvre **que s'il reste un seul survivant** (5.3.0). Elle reste ouverte **tant que le tueur ne la ferme pas**.
  - Le tueur qui la ferme déclenche l'**EGC** (120 s, FACT audit).
  - Une **Dull ou Skeleton Key avec au moins 1 charge** la rouvre en **2,5 s** (1 charge). **Impossible en étant au sol**. Le tueur peut vous **saisir** pendant l'ouverture. Depuis 9.1.0, la clé n'est plus détruite.
  - Left Behind : aura de la trappe dans 24/28/32 m quand vous êtes le dernier (FACT [SS]).
  - *PTB 10.2.0 : Down to the Last permettrait d'ouvrir la trappe sans clé avec ≥ 3 jetons — **non LIVE**.*
- **WHAT** : rouvrir une trappe fermée pendant l'EGC.
- **WHY** : une 3e sortie que le tueur ne peut pas surveiller en même temps que les deux portes.
- **WHEN** : vous êtes le dernier, le tueur a fermé la trappe **et** s'éloigne vers une porte, ou vous êtes plus proche de la trappe que lui.
- **HOW** :
  1. Repérez la trappe **avant** d'être le dernier (Left Behind, son de la trappe ouverte, Blueprints qui orientent son apparition).
  2. Après la fermeture, laissez le tueur choisir une porte, puis allez à la trappe.
  3. 2,5 s d'ouverture : ne la lancez que si le tueur est à plus de ~2,5 s de vous (HEURISTIC).
- **COUNTER** : Franklin's Demise (la clé tombe) ; rester près de la trappe fermée ; Overwhelming Presence (Exhausted à l'usage de la clé).
- **FAILURE** : clé déjà vidée par les lectures d'aura (gardez **1 charge**) ; ouvrir sous les yeux du tueur (saisie) ; tenter la trappe au sol.
- **DRILL** : partie personnalisée : le tueur ferme la trappe et garde une porte ; entraînez les trajets porte ↔ trappe sur 3 cartes.

---

## 6. Synthèse : quel objet pour quel plan

Tout ce tableau est **HEURISTIC** (raisonnement à partir des FACT ci-dessus, aucune statistique d'évasion consultée pour ce lot).

| Plan | SoloQ | SWF | Add-ons qui changent la décision |
|---|---|---|---|
| Réparer vite | Commodious (+ Socket Swivels / Wire Spool) | Idem, + Brand New Part | Instructions (anti-tests), Brand New Part |
| Survivre à la chase | Vigo's Fog Vial | Fog Vial ou kit + Anti-Exhaustion Syringe | Reactive Compound, Potent Extract, Syringe |
| Ne dépendre de personne | Med-Kit (Gel Dressings) | — | Gel Dressings, Syringe |
| Saves | Rarement rentable | Lampe (visée / largeur) ; Alex's (sabotage) | Rubber Grip, Wide Lens ; Protective Gloves, Grip Wrench |
| Information | Map (faisceau) ou Key | Key (coffres Rare+ pour l'équipe) | Sharpened Flint, Crimson Stamp ; Blood Amber, Wedding Ring |
| Fin de partie seul | Dull / Skeleton Key (1 charge gardée) | — | — |

Critique du classement seed (« 1. Toolbox, 2. Med-Kit, 3. Fog Vial, 4. Flashlight, 5. Map, 6. Key ») : ordre **défendable** pour la SoloQ (EXPERT OPINION non sourcée), mais pas une vérité. La valeur dépend du tueur (Overwhelming Presence, Franklin's Demise, Lightborn) et de la composition.

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| L5-01 | Toolbox 20 ch +50 % ; Commodious 32 ch +50 % / sabo +50 % ; Mechanic's 16 ch +75 % ; Engineer's 16 ch +100 % ; Worn-Out 16 ch +50 %, zone Good −10 % ; Alex's 18 ch, +10 % / sabo +100 % | [1][2] | LIVE | STRONG_SECONDARY (Alex's : CONFLICT-L5-02) |
| L5-02 | Chance de test en réparant avec toolbox 40 %/s (8 % sans) ; Great +1 %, raté −10 % | [15] | LIVE | STRONG_SECONDARY |
| L5-03 | Sabotage 3 s, 6 charges, réparation auto 30 s, bruit fort, sous-sol insabotable | [2][11] | LIVE | STRONG_SECONDARY |
| L5-04 | Brand New Part : un test difficile, −10 charges au gen ; Visceral | [2][20] | LIVE (7.1.0) | STRONG_SECONDARY |
| L5-05 | Tous les Med-Kits 24 charges ; altruiste +35/40/45/50 % ; auto-soin −33 % vitesse et efficacité ; 1 état = 16 charges | [1][3] | LIVE (6.7.0) | STRONG_SECONDARY |
| L5-06 | Add-on « Anti-Exhaustion Syringe » (nom LIVE) : retire Exhausted, consomme le kit | [3][21][O-9.3.0] | 9.3.0 | VERIFIED_MULTI_SOURCE |
| L5-07 | Styptic Agent : +15 % d'efficacité en auto-soin, plus d'Endurance, plus consommé | [22][O-9.3.0] | 9.3.0 | VERIFIED_MULTI_SOURCE |
| L5-08 | Lampes : 8 / 8 / 12 s ; Sport visée +20 %, déplétion −11 % ; Utility luminosité +30 %, aveuglement +15 %, visée −20 % | [1][4] | LIVE | STRONG_SECONDARY |
| L5-09 | Lampe : portée 10 m, 1 s pour aveugler, aveuglement 2 s ; add-ons n'accélèrent plus l'aveuglement (1.8.3) | [4] | LIVE | STRONG_SECONDARY |
| L5-10 | Tampon 0,4 s en fin de ramassage ; immunité lors d'une saisie au casier (6.4.0) | [4] | LIVE | STRONG_SECONDARY |
| L5-11 | Lightborn : immunité lampes, pétards, Flash Grenades, aveuglement Blast Mine ; aura 6/8/10 s | [10] | LIVE | STRONG_SECONDARY |
| L5-12 | Fog Vial : 4 charges ; 2 / 1,5 / 1,2 s ; 8 / 10 / 12 s ; recharge 70 / 65 / 60 s ; rayon 8 m ; opacité 33 % | [6][O-9.1.0][O-9.1.1][O-9.5.0] | 9.5.0 | VERIFIED_MULTI_SOURCE |
| L5-13 | Fog Vial 9.5.0 : opaque vu de l'extérieur ; auras des survivants au sol / accrochés visibles | [6][O-9.5.0] | 9.5.0 | VERIFIED_MULTI_SOURCE |
| L5-14 | Singularity peut se téléporter vers un survivant visible dans le nuage | [O-9.1.2] | 9.1.2 | VERIFIED_PRIMARY |
| L5-15 | Keys : Broken 6 ch / 48 m / 8 s ; Dull 5 ch / 56 m / 9 s ; Skeleton 6 ch / 64 m / 10 s ; coffre Rare+ + fouille d'un allié ; trappe 2,5 s, 1 charge | [5][O-9.1.0] | 9.1.0 | VERIFIED_MULTI_SOURCE |
| L5-16 | Maps : 4/5/6/8 ch ; 24/32/40/48 m ; 10/12/14/14 s ; faisceau 16 s, gens dans 32 m révélés à tous | [7][O-9.1.0] | 9.1.0 | VERIFIED_MULTI_SOURCE |
| L5-17 | Add-ons Key / Map / Fog Vial : 5 par objet, 1 par rareté (valeurs du §2) | [5][6][7][O-9.1.0] | 9.1.0 | VERIFIED_MULTI_SOURCE |
| L5-18 | DR : Powers, Items, Perks, Offerings ; add-ons exclus ; 100/50/25/12,5/5 % | [O-9.6.0] | 9.6.0 | VERIFIED_PRIMARY |
| L5-19 | Offrandes de royaume : 20 % fixe, doublons non cumulables ; offrandes « gameplay » secrètes | [8][O-9.0.0] | 9.0.0 | VERIFIED_MULTI_SOURCE |
| L5-20 | Spawn ≤ 12 m par défaut ; Shroud of Separation (survivant) ; Shroud of Vanishing (tueur) | [8][O-9.0.0] | 9.0.0 | VERIFIED_MULTI_SOURCE |
| L5-21 | Luck : seule façon hors exceptions de tenter l'auto-décrochage ; 4 % de base ; −20 s par échec ; 3 essais | [11][16][O-9.0.0] | 9.0.0 | VERIFIED_MULTI_SOURCE |
| L5-22 | Coffres : 3 par défaut (1 au sous-sol), 8 s, bruit 20 m, 1 à 13 coffres | [9] | LIVE (8.4.0) | STRONG_SECONDARY |
| L5-23 | Probabilités de coffre 43/33/16/5/2 % | [9] (Reddit 2019) | HISTORICAL | COMMUNITY_OBSERVATION |
| L5-24 | Plunderer's LIVE : auras 32/48/64 m, +50 % de rareté | [17] | 8.4.0 | STRONG_SECONDARY |
| L5-25 | Appraisal LIVE : 4 jetons, 2 fouilles par coffre, +40/60/80 % | [18] | 9.1.0 | STRONG_SECONDARY |
| L5-26 | Wiggle 16 s ; lâcher +25 % ; ≥ 75 % → libéré au 1er lâcher ; portage 3,68 m/s | [12][11] | LIVE | STRONG_SECONDARY |
| L5-27 | Pallet stun 2 s ; tueur qui porte : lâche le survivant (blessé) ; pas pendant le ramassage | [13] | LIVE | STRONG_SECONDARY |
| L5-28 | Protection hit : coup pris dans 10 m d'un survivant blessé, ou pendant un portage | [14] | LIVE | STRONG_SECONDARY |
| L5-29 | Overwhelming Presence : usage d'un objet dans 32 m → Exhausted 15 s | [19][O-9.1.0] | 9.1.0 | VERIFIED_MULTI_SOURCE |
| L5-30 | Built to Last : 12/10/8 s ; 99/66/33 % ; 3 fois | [23] | 9.1.0 | STRONG_SECONDARY |
| L5-31 | Head On : 3 s en casier, stun 3 s à ≤ 2,5 m, Exhausted 60/50/40 s | [24] | 9.0.0 | STRONG_SECONDARY |
| L5-32 | Flashbang : 50/45/40 % de réparation personnelle, réutilisable | [25] | 8.2.0 | STRONG_SECONDARY |
| L5-33 | Saboteur : crochets dans 56 m, Scourge en jaune, sabotage sans toolbox +30 %, cooldown 70/65/60 s | [26] | 7.1.0 | STRONG_SECONDARY |
| L5-34 | Trappe : n'apparaît qu'au dernier survivant ; fermée → EGC ; clé impossible au sol ; saisie possible | [27] | LIVE | STRONG_SECONDARY |
| L5-35 | Gains de toolbox en s-surv (§4.3) | CALC sur L5-01 | — | CALC (hypothèses additives) |

## Conflits

#### CONFLICT-L5-01 : nom de la seringue (Anti-Exhaustion vs Anti-Haemorrhagic)
- Source A : audit phase 0, A-186 (`kb/ledgers/OUTDATED_CONTENT_REPORT.md`) : « Anti-Exhaustion Syringe » n'existerait pas, le nom serait Anti-Haemorrhagic Syringe.
- Source B : notes officielles 9.3.0 LIVE (forums BHVR, article 529) : « Anti-Exhaustion Syringe (renamed Anti-Hemorrhagic Syringe) » ; wiki *Anti-Exhaustion Syringe* : « renamed the Add-on **from** Anti-Haemorrhagic Syringe **to** Anti-Exhaustion Syringe » ; la page wiki Med-Kits liste l'add-on sous ce nom. Les notes du **PTB** 9.3.0 (copie wiki) disaient encore « Anti-Hemorrhagic Syringe ».
- Hypothèse : l'audit a lu la parenthèse « (renamed Anti-Hemorrhagic Syringe) » comme le nouveau nom, ou s'est fondé sur les notes PTB.
- Résolution : **nom LIVE = Anti-Exhaustion Syringe** (VERIFIED_MULTI_SOURCE). **A-186 est à retirer** de l'OUTDATED CONTENT REPORT ; le seed avait raison sur le nom.

#### CONFLICT-L5-02 : charges de l'Alex's Toolbox
- Source A : description de l'objet (pages Items et Toolboxes) : **18 charges**.
- Source B : tableau « Repair Speeds » de la même page Toolboxes : **24 charges** (21,8 s, 26,7 %).
- Hypothèse : tableau non mis à jour (ou description non mise à jour).
- Résolution : **UNRESOLVED**. Retenu : 18 (description en tête d'article, concordante avec le seed). À vérifier en jeu.

#### CONFLICT-L5-03 : charges d'une fouille de coffre (8 vs 10)
- Source A : page Chests : ouvrir **et** fouiller demandent 8 charges (réduit de 10 à 8 en 8.4.0, pour l'ouverture).
- Source B : page Appraisal, section Calculations : la fouille demande **10 charges**.
- Hypothèse : la réduction 8.4.0 ne visait que l'ouverture, ou la page Appraisal n'a pas été mise à jour.
- Résolution : **UNRESOLVED**.

#### CONFLICT-L5-04 : probabilités de coffre
- Source A : page Chests (wiki) : 43/33/16/5/2 %, types 37/37/16/7/2 %.
- Source B : leur propre référence est une étude Reddit de juin 2019, antérieure aux Fog Vials, à la refonte Keys / Maps (9.1.0) et à Plunderer's +50 % (8.4.0).
- Hypothèse : tables de rareté probablement toujours proches, tables de **type** certainement fausses (Fog Vial absente).
- Résolution : **UNRESOLVED** → étiquette HISTORICAL / COMMUNITY_OBSERVATION.

#### CONFLICT-L5-05 : taille du nuage de Fog Vial
- Source A : notes 9.1.0 : « 8-meter **radius** ».
- Source B : wiki : « maximum **size** of 8 metres » (ambigu : rayon ou diamètre).
- Résolution : rayon de 8 m retenu (source primaire). Le rendu refait en 9.5.0 n'a pas changé la valeur annoncée.

#### CONFLICT-L5-06 : soin altruiste au kit, 1,5 état ou plus ?
- Source A : wiki Med-Kits : consommation altruiste « −1 c/s », vitesse 1,35-1,5 c/s.
- Source B : même page : « allows to heal the equivalent of 1.5 Health States » (24 / 16).
- Hypothèse : la consommation suit les charges de soin (16 par état), pas le temps. Sinon un Ranger soignerait ~2,25 états.
- Résolution : **1,5 état retenu** (texte explicite du wiki) ; UNRESOLVED en jeu.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Nom de la seringue | « Anti-Exhaustion / Anti-Haemorrhagic Syringe », « Anti-Exhaustion Syringe » (builds 3, 24) | Nom LIVE : **Anti-Exhaustion Syringe** (9.3.0) | **OK** (c'est l'audit A-186 qui est faux, CONFLICT-L5-01) ; la double appellation est IMPRÉCIS |
| Seringue « idéale avec Lithe, Sprint Burst, Dead Hard » ; « second Lithe » | Reset d'Exhausted à la demande | Seulement **pendant un soin** (vous devez être blessé, ou soigner un allié) ; consomme le kit | IMPRÉCIS |
| Combo « Looper : kit + Syringe + Styptic Agent » | — | La seringue consomme le kit : le Styptic devient inutile | FAUX (incohérent) |
| Fog Vial « 4 charges depuis la 9.5.0 » | 4 charges | 1 (9.1.0, recharge infinie) → 2 (9.1.2) → **4 (9.5.0)** | OK |
| Fog Vial : 8/10/12 s, recharge 70/65/60 s, ~8 m, 33 % | — | Idem ; manquent l'expansion (2/1,5/1,2 s) et les changements 9.5.0 (opaque vu de l'extérieur, auras des survivants au sol / accrochés visibles) | OK / incomplet |
| Potent Extract « opacité doublée, durée /2, taille −25 % » | — | +100 % d'opacité (9.5.0), −50 %, −25 % | OK |
| Toolboxes Commodious / Engineer's / Mechanic's / Alex's / Worn-Out | 32 / 16 / 16 / 18 / 16 charges | Idem (Alex's : CONFLICT-L5-02) ; la **Toolbox de base (20 ch)** manque ; Worn-Out a aussi +50 % de réparation | OK / incomplet |
| Commodious « +50 % de réparation et de sabotage » | — | Idem | OK |
| Add-ons de toolbox (BNP −10 charges, Socket Swivels +30 %, Clean Rag +20 %, Wire Spool +12, Scraps +8, Hacksaw +30 %, Cutting Wire +20 %, Grip Wrench +20 s, Protective Gloves, Instructions, Spring Clamp −8 m) | — | Idem | OK |
| Built to Last « casier 10 s (T3) … 99 %, puis −33 % » | 10 s au T3 | **8 s au T3** (12/10/8) ; 99/66/33 %, 3 fois | IMPRÉCIS |
| Med-Kits : 24 charges, 16 par état, −33 %, +35/40/45/50 % | — | Idem | OK |
| Add-ons de kit (Gel +16, Gauze +10, Bandages +8, Self Adherent +8 et +5 %, Abdominal +15 %, Scissors +10 %, Butterfly +5 %, Suture, Needle, Sponge / Rubber Gloves) | — | Idem | OK |
| Lampe standard 8 s ; Sport visée +20 %, déplétion −11 % ; Utility 12 s, +30 %, +15 %, −20 % | — | Idem | OK |
| Odd Bulb « le plus fort » ; combo save « Utility + Odd Bulb + Long Life » | La luminosité rend plus fort | La luminosité est **visuelle** depuis 1.8.3 ; l'aveuglement prend 1 s quoi qu'il arrive ; Utility a **−20 % de visée** | IMPRÉCIS (choix discutable pour les saves) |
| « TIR Optic, Wide Lens : faisceau large mais court » | TIR élargit | TIR Optic = luminosité +30 %, aveuglement +15 %, **aucun effet de largeur** ; seule Wide Lens élargit (+25 %, portée −25 %) | FAUX (TIR) |
| Odd Bulb « batterie −14 % » | — | **Déplétion +14 %** (la batterie dure moins) | OK (formulation ambiguë) |
| Lampe : lightburn retiré 6.7.0, anti-stroboscope 6.3.0, immunité saisie au casier, Lightborn | — | Idem (casier : 6.4.0) | OK |
| Tampon de 0,4 s après l'animation (build 17) | — | 0,4 s **à la fin** de l'animation de ramassage (6.4.0) | OK |
| Maps : 24/32/40/48 m, 4/5/6/8 charges ; faisceau 16 s, gens dans 32 m pour tous | — | Idem ; manquent les durées d'aura (10/12/14/14 s) | OK |
| Crimson Stamp « aura du tueur près du faisceau, −10 s, −2 charges » | — | Idem (8 m du faisceau, révélée à **tous** les survivants) | OK |
| Keys : 48/56/64 m, 8/9/10 s, 6/5/6 charges | — | Idem | OK |
| Dull / Skeleton « rouvrent la trappe en 2,5 s sans être consommées » | Sans coût | Clé non détruite, mais **1 charge consommée**, clé vide inutilisable, impossible au sol | IMPRÉCIS |
| Unique Wedding Ring « vous ne pouvez plus être Obsession » | Jamais Obsession | Chance d'être l'Obsession **initiale** réduite de 100 % | IMPRÉCIS |
| « Les add-ons échappent aux DR (9.6.0) » | — | Vrai ; mais le **bonus de base de l'objet** (Items) est soumis aux DR | OK / incomplet |
| Offrandes de royaume « se cumulent, poids 2 / 5 / 9999 » | Cumul pondéré | **20 % fixe, doublons non cumulables** (9.0.0) | FAUX (déjà A-190) |
| Chalk Pouch / Salt « anecdotique, pour les memes » | Sans intérêt | Depuis 9.0.0, la Luck **débloque** l'auto-décrochage (sinon impossible hors exceptions) | IMPRÉCIS (sous-évalué) |
| Shroud of Union « (depuis 9.0.0, n'affecte plus l'autre paire) » | — | Non vérifié ; et le spawn par défaut regroupe déjà à ≤ 12 m | NON VÉRIFIABLE / valeur surestimée |
| Shroud of Separation / Vigo's Shroud / Shroud of Vanishing | — | Idem (9.0.0) | OK |
| Bloody Party Streamers « se cumule si plusieurs en brûlent » | Cumul | Non indiqué par le wiki | NON VÉRIFIABLE |
| White Ward « garde l'objet et les add-ons même si vous mourez » | — | Idem | OK |
| Coins +2 / +1 / −1 / −2 | — | Idem ; 1 à 13 coffres | OK |
| « Sabotage : crochet réparé en 30 s » ; « crochets du sous-sol insabotables » | — | Idem | OK |
| Saboteur « crochets dans 56 m du point de ramassage » | — | Idem, + Scourge en jaune | OK |
| Flashbang « grenades chargées tous les 40 % » | — | 50/45/40 %, réutilisable | OK (T3) |
| Power Struggle « dès 15 % de wiggle » ; Flip-Flop « jusqu'à 50 % » | — | 25/20/15 % ; 40/45/50 % | OK (T3) |
| Head On « 3 s, stun 3 s à < 2,5 m, Exhausted 60/50/40 s » | — | Idem | OK |
| Champion of Light « +50 % de Haste en éclairant, Hindered 20 % 6 s » | — | Idem, cooldown 60/50/40 s | OK |
| Residual Manifest « Blindness 20/25/30 s, lampe dans un coffre ouvert » | — | Idem (une fois par partie, lampe de base) | OK |
| Absences | — | Overwhelming Presence et Franklin's Demise (contres d'objet), probabilités des coffres, clé → coffre Rare+ pour 2 joueurs, Instructions contre les tueurs à tests, 2v8 hors sujet | Incomplet |

## Questions ouvertes

1. Durées de canalisation de la Key et de la Map, et durée de l'« ouverture rapide » d'un coffre à la clé (non indiquées).
2. Durée exacte de l'animation de ramassage (pour caler le flash save) ; possibilité d'aveugler pendant l'accrochage au LIVE (retirée en 1.1.2a, non re-vérifiée).
3. Alex's Toolbox : 18 ou 24 charges (CONFLICT-L5-02) ; fouille : 8 ou 10 charges (CONFLICT-L5-03).
4. Probabilités de coffre actuelles, y compris la part des Fog Vials (CONFLICT-L5-04).
5. Cumul des bonus d'add-ons (additif ou multiplicatif) : les calculs §4.3 supposent l'additif.
6. Quels bonus d'objet entrent dans les DR avec quelles perks (liste du manuel 9.6.1 non consultée).
7. « Affected Survivor » de l'Anti-Exhaustion Syringe : le survivant soigné seulement, ou aussi le soigneur ?
8. Cumul de plusieurs offrandes de Luck (personnelle + collective) et de plusieurs Bloody Party Streamers.
9. Valeurs LIVE d'Iron Grasp et d'Agitation (le wiki affiche déjà le PTB 10.2.0).
10. Statut Light-Resistant (Black Banquet 2026) : présent en file normale au 27/09/2026 ?
11. Comportement de la Fog Vial à 0 charge (la recharge continue-t-elle ?).

## Sources

Pages wiki lues **en entier** via l'API MediaWiki (`kb/tools/wiki_text.py`), consultées le 27/09/2026 :

1. Items — https://deadbydaylight.wiki.gg/wiki/Items
2. Toolboxes — https://deadbydaylight.wiki.gg/wiki/Toolboxes
3. Med-Kits — https://deadbydaylight.wiki.gg/wiki/Med-Kits
4. Flashlights — https://deadbydaylight.wiki.gg/wiki/Flashlights
5. Keys — https://deadbydaylight.wiki.gg/wiki/Keys
6. Fog Vials — https://deadbydaylight.wiki.gg/wiki/Fog_Vials
7. Maps — https://deadbydaylight.wiki.gg/wiki/Maps
8. Offerings — https://deadbydaylight.wiki.gg/wiki/Offerings
9. Chests — https://deadbydaylight.wiki.gg/wiki/Chests (probabilités : étude Reddit de juin 2019 citée par le wiki, non lue : reddit en 403)
10. Lightborn — https://deadbydaylight.wiki.gg/wiki/Lightborn
11. Hooks — https://deadbydaylight.wiki.gg/wiki/Hooks
12. Wiggle — https://deadbydaylight.wiki.gg/wiki/Wiggle
13. Pallets — https://deadbydaylight.wiki.gg/wiki/Pallets
14. Protection Hits — https://deadbydaylight.wiki.gg/wiki/Protection_Hits
15. Skill Checks — https://deadbydaylight.wiki.gg/wiki/Skill_Checks
16. Luck — https://deadbydaylight.wiki.gg/wiki/Luck
17. Plunderer's Instinct — https://deadbydaylight.wiki.gg/wiki/Plunderer%27s_Instinct
18. Appraisal — https://deadbydaylight.wiki.gg/wiki/Appraisal
19. Overwhelming Presence — https://deadbydaylight.wiki.gg/wiki/Overwhelming_Presence
20. Brand New Part — https://deadbydaylight.wiki.gg/wiki/Brand_New_Part
21. Anti-Exhaustion Syringe — https://deadbydaylight.wiki.gg/wiki/Anti-Exhaustion_Syringe
22. Styptic Agent — https://deadbydaylight.wiki.gg/wiki/Styptic_Agent
23. Built to Last — https://deadbydaylight.wiki.gg/wiki/Built_to_Last
24. Head On — https://deadbydaylight.wiki.gg/wiki/Head_On
25. Flashbang — https://deadbydaylight.wiki.gg/wiki/Flashbang
26. Saboteur — https://deadbydaylight.wiki.gg/wiki/Saboteur
27. Hatch — https://deadbydaylight.wiki.gg/wiki/Hatch
28. Add-ons (raretés extraites du HTML) — https://deadbydaylight.wiki.gg/wiki/Add-ons
29. Autres pages lues : Lockers, Blindness, Scourge Hook Perks, Basement, Pharmacy, Ace in the Hole, Streetwise, Residual Manifest, Champion of Light, Breakout, Boil Over, Change of Plan, Franklin's Demise, Bloody Party Streamers, Iridescent Button, Firecrackers, Status HUD/Light-Resistant, Score Events (wikitext) — https://deadbydaylight.wiki.gg/wiki/<Titre>

Notes officielles BHVR (archives locales `kb/sources/patches/`, consultées le 27/09/2026) :

- [O-9.0.0] https://forums.bhvr.com/dead-by-daylight/kb/articles/510 — offrandes, spawn, Luck
- [O-9.1.0] …/articles/516 — Fog Vial, refonte Keys / Maps, Overwhelming Presence, Franklin's Demise
- [O-9.1.1] …/articles/517 — opacité 33 %, Potent Extract
- [O-9.1.2] …/articles/519 — 2 charges, téléportation de la Singularity
- [O-9.2.0] …/articles/523 — Dark Arrogance, Pharmacy
- [O-9.3.0] …/articles/529 — Anti-Exhaustion Syringe, Styptic Agent
- [O-9.3.2] …/articles/530 — Breakdown / Wicked réactivées
- [O-9.5.0] …/articles/538 — Fog Vial 4 charges, rendu, auras
- [O-9.6.0] …/articles/544 — Diminishing Returns
- [O-10.0.0 / 10.0.1] …/articles/550, 551 — immunités (Animatronic, Iridescent Button), Rampage
- [O-10.1.2] …/articles/558 — objets de départ et coffres du **2v8** (hors 1v4)
- [O-PTB 10.2.0] …/articles/559 — **PTB, non LIVE**

Sources internes : `kb/seed/ch4_7.txt` (seed, pages 33-35, 41-42, 50-54) ; `kb/seed/audit_phase0.txt` (tables 1.2, 1.6, registre des patchs, A-186, A-190).
