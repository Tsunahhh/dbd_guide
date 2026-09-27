# Lot 2 — Perks survivant, page 27 du guide seed (lignes 535-650 de `kb/seed/ch3_survperks.txt`)

**Couverture web : 14 éléments vérifiés par recherche / 13 non re-vérifiés (quota)**

- **Référence** : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 = **non LIVE**.
- **Méthode** : WebSearch uniquement (résumés générés, pages non lues directement) → confiance max **STRONG_SECONDARY** sauf recoupement avec des patch notes officielles ou avec `kb/seed/audit_phase0.txt`.
- **Limite importante** : le quota WebSearch de la session (200 appels, partagé entre agents) a été **épuisé après 14 perks**. Les 13 perks suivantes (Overzealous → Strength in Shadows) n'ont **pas pu être vérifiées** : leurs blocs reprennent la formulation du seed marquée « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — UNCERTAIN et ne doivent pas être intégrés comme FACT.
- Les notes de valeur (0-3) sont **HEURISTIC** (avis de l'agent, non mesuré).
- PTB 10.2.0 : les notes PTB officielles (BHVR KB 559) ont été renvoyées comme URL mais **leur contenu perk par perk n'a pas été lu** → pour chaque perk, l'état PTB est UNCERTAIN sauf mention.

---

## Perks vérifiées (14)

### Babysitter — Steve Harrington
- **Statut** : LIVE 10.1.2a (perk unique ; a existé sous le nom général *Guardian* pendant le retrait de la licence Stranger Things, puis rétablie).
- **Effet LIVE** : quand vous décrochez un survivant, vous voyez l'aura du tueur **8 s** ; le survivant décroché ne laisse **ni griffures ni flaques de sang** et gagne **+10 % de force de Haste** pendant **20/25/30 s** — STRONG_SECONDARY (page wiki via résumé [1][2]) ; **CONFLICT-P27-01** sur l'historique.
- **Valeurs / CD / conditions / limites** : déclenchement au décrochage par vous (pas l'auto-décrochage). « +10 % de force de Haste » = s'ajoute à la Haste basekit de décrochage (10 % pendant 10 s depuis 10.1.0, audit phase 0).
- **PTB 10.2.0** : UNCERTAIN (non citée par le seed ; notes PTB non lues).
- **Interactions, DR 9.6.0, anti-synergies** : l'audit relève que le wiki dit que la Haste de Babysitter « stack additively » avec la Haste de décrochage ; soumission de la Haste basekit aux DR = UNCERTAIN. Avec d'autres sources de Haste de perks identiques, DR 100/50/25 % (FACT audit 9.6.0).
- **Synergies (HEURISTIC)** : Borrowed Time, We'll Make It, Kindred (savoir quand décrocher), Reassurance.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 1 · macro 1 · info 1 · anti-tunnel 2 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** :
  - Décrochage sûr quand le tueur est proche : la Haste + absence de traces aident l'allié à casser la ligne de vue (POURQUOI : le tueur piste griffures/sang).
  - Aura du tueur 8 s : vous savez s'il revient vers le crochet (tunnel) ou part.
- **Quand elle n'en produit pas (HEURISTIC)** :
  - Si vous décrochez rarement (joueur de gen) ou si le tueur a déjà un contrôle d'aura/Undetectable pertinents.
  - Contre des tueurs à mobilité où 20-30 s de traces supprimées n'empêchent pas le tunnel.
- **Écart avec le seed** : effet **OK** ; « rework 9.2.0 » = **NON VÉRIFIABLE / douteux** (l'audit indique que les changements PTB 9.3.0 de Babysitter ont été revertés ; un résumé de recherche affirme au contraire un rework 9.3.0 « aura 20/25/30 s » — CONFLICT-P27-01). Durée « environ 8 s » OK ; le seed omet la durée 20/25/30 s de l'effet sur l'allié.
- **Sources** : [1] [2] [3] [4] [5] [21]

### Second Wind — Steve Harrington
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : après avoir soigné d'autres survivants l'équivalent d'**1 état de santé**, la perk s'active ; au prochain décrochage (par un allié ou vous-même) vous êtes **Broken**, puis **soigné instantanément après 28/24/20 s** si vous n'avez pas été mis à terre — STRONG_SECONDARY [6].
- **Valeurs / CD / conditions / limites** : ne s'active pas si vous êtes déjà Broken ; les auto-soins ne comptent pas ; se désactive si vous passez en bonne santé ou si vous tombez avant la fin (vous perdez Broken). Vigil raccourcit Broken mais pas le minuteur de soin.
- **PTB 10.2.0** : UNCERTAIN (non citée par le seed).
- **Interactions, DR, anti-synergies** : anti-synergie avec toute perk qui vous rend Broken (For the People, Invocation: Weaving Spiders) ; interaction avec Endurance de décrochage : Broken pendant la fenêtre de protection.
- **Synergies (HEURISTIC)** : perks de soin rapide (Botany Knowledge, Empathic Connection), Off the Record.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 2 · gen 1 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : économise un soin après décrochage (temps de gen gagné) quand le tueur ne tunnelle pas.
- **Quand elle n'en produit pas (HEURISTIC)** : contre tunnel immédiat (Broken = pas de soin possible) ; si vous ne soignez jamais d'alliés.
- **Écart avec le seed** : **OK** (le seed omet la condition « équivalent d'un état de santé soigné »).
- **Sources** : [6]

### Lucky Break — Yui Kimura
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : blessé, supprime **griffures et flaques de sang** pendant **40/50/60 s** au total ; se recharge du temps passé à soigner un autre survivant, jusqu'au maximum initial — STRONG_SECONDARY [7].
- **Valeurs / CD / conditions / limites** : se désactive à épuisement ou quand l'état de santé passe à autre chose que Blessé (pause, pas perte définitive d'après la formulation « deactivates » — nuance UNCERTAIN).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : redondance partielle avec Iron Will (sons) — complémentaire en fait (Lucky Break = visuel, Iron Will = audio).
- **Synergies (HEURISTIC)** : Iron Will, Distortion, Resilience (jouer blessé).
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 2 · macro 1 · info 0 · anti-tunnel 1 · soin 0 · gen 1 · endgame 1
- **Quand elle produit de la valeur (HEURISTIC)** : casser la poursuite après un coup (le tueur perd la piste), jouer blessé sur gen.
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs à aura/Undetectable ou tracking indépendant des traces (Nurse, Spirit…) ; en bonne santé.
- **Écart avec le seed** : **OK**.
- **Sources** : [7]

### For the People — Zarina Kassir
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : en bonne santé, en soignant un allié **sans médikit**, bouton actif → soin instantané (vers Blessé s'il était à terre ou en Deep Wound ; vers bonne santé s'il était blessé). Vous devenez **blessé**, **Broken 80/70/60 s**, et **l'Obsession** si vous ne l'étiez pas — STRONG_SECONDARY [8].
- **Valeurs / CD / conditions / limites** : usage conditionné à être en bonne santé ; pas de médikit.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : anti-synergie avec Second Wind (Broken) et avec perks nécessitant d'être en bonne santé (Sprint Burst, Light-Footed) ; devenir Obsession active les perks tueur d'Obsession.
- **Synergies (HEURISTIC)** : Vigil (réduit Broken), Resilience/Lucky Break (jouer blessé), Deliverance/Off the Record.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 2 · chase 0 · macro 2 · info 0 · anti-tunnel 1 · soin 3 · gen 1 · endgame 2
- **Quand elle produit de la valeur (HEURISTIC)** : relever instantanément un allié au sol près du tueur (pickup denial), transférer la « santé » au joueur qui chase le mieux.
- **Quand elle n'en produit pas (HEURISTIC)** : contre tueurs Obsession-centrés (Rancor, Nemesis tueur…) ; si vous êtes vous-même la cible.
- **Écart avec le seed** : **IMPRÉCIS mineur** (omet : « sans médikit » pendant l'action de soin, résultat différent selon l'état de l'allié, gain du statut d'Obsession).
- **Sources** : [8]

### Blood Pact — Cheryl Mason
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : quand vous ou l'Obsession êtes **blessés**, la perk s'active : **auras mutuelles** en permanence ; terminer un soin sur l'Obsession (ou être soigné par elle) donne à vous deux **5/6/7 % de Haste** tant que vous restez à **16 m** l'un de l'autre — STRONG_SECONDARY [9].
- **Valeurs / CD / conditions / limites** : désactivée si vous êtes vous-même l'Obsession ; réduit de −100 % vos chances d'être l'Obsession initiale.
- **PTB 10.2.0** : le seed la cite parmi les buffs PTB (sans valeur) — **UNCERTAIN** (notes PTB non lues).
- **Interactions, DR 9.6.0** : Haste de perk → DR avec d'autres Haste de perks identiques (Power of Two, Dark Theory) : la plus forte à 100 %, la suivante 50 %.
- **Synergies (HEURISTIC)** : For the People (vous rend Obsession… mais désactive alors la perk : anti-synergie), Teamwork: Power of Two.
- **Difficulté** : 3 (dépend du tueur qui choisit une Obsession et de la coordination)
- **Valeur (HEURISTIC)** : SoloQ 0 · SWF 1 · chase 1 · macro 1 · info 1 · anti-tunnel 0 · soin 1 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : en SWF avec le joueur Obsession, pour rotations rapides après soin.
- **Quand elle n'en produit pas (HEURISTIC)** : sans Obsession dans la partie, ou si l'Obsession meurt tôt.
- **Écart avec le seed** : **IMPRÉCIS** (omet la condition d'activation « blessé » et les auras mutuelles ; valeurs 5/6/7 % et 16 m OK).
- **Sources** : [9]

### Repressed Alliance — Cheryl Mason
- **Statut** : LIVE 10.1.2a (modifiée en 10.1.0 puis 10.1.1).
- **Effet LIVE** : après **40/35/30 s** de réparation cumulée, en réparant **seul**, bouton actif → bloque le générateur **15 s** — VERIFIED_MULTI_SOURCE (audit phase 0 [21] + résumé des notes 10.1.1 [10][11]).
- **Valeurs / CD / conditions / limites** : blocage **15 s** depuis 10.1.0 (avant : 30 s — HISTORICAL) ; seuil de réparation **55/50/45 s → 40/35/30 s** en **10.1.1** (compensation).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions** : bloque aussi les alliés ; ne protège pas contre la régression déjà appliquée.
- **Synergies (HEURISTIC)** : Deja Vu, perks d'info tueur (savoir quand il arrive).
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 2 · info 0 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : empêcher un kick (Pain Resonance/ Grim Embrace-like / Pop) sur un gen presque fini quand vous devez fuir.
- **Quand elle n'en produit pas (HEURISTIC)** : contre régression passive déjà engagée ou quand un allié vient réparer juste après.
- **Écart avec le seed** : **FAUX** (seed : 55/50/45 s de réparation = valeur pré-10.1.1 ; LIVE = 40/35/30 s). Blocage 15 s et « avant 30 s » : OK.
- **Sources** : [10] [11] [21]

### Appraisal — Élodie Rakoto
- **Statut** : LIVE 10.1.2a (buff 9.1.0).
- **Effet LIVE** : **4 jetons** au départ ; à côté d'un coffre **ouvert et vide**, action Rummage pour obtenir un objet supplémentaire (−1 jeton, **2 fois max par coffre**) ; fouille **+40/60/80 %** plus rapide — STRONG_SECONDARY [13].
- **Valeurs** : 9.1.0 : jetons 3 → 4, limite par coffre 1 → 2 (HISTORICAL/LIVE).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions** : Plunderer's Instinct (auras de coffres), Residual Manifest (fouille aussi un coffre ouvert — non vérifié).
- **Synergies (HEURISTIC)** : Plunderer's Instinct, Ace in the Hole, Built to Last (non vérifié).
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 1 (médikits) · gen 1 (boîtes) · endgame 1
- **Quand elle produit de la valeur (HEURISTIC)** : builds objets (médikits/boîtes/lampes) sur cartes riches en coffres.
- **Quand elle n'en produit pas (HEURISTIC)** : contre tueurs à forte pression (le temps de fouille coûte des gens).
- **Écart avec le seed** : **OK**.
- **Sources** : [13]

### Fast Track — Lee Yun-jin
- **Statut** : LIVE 10.1.2a (reworks 9.5.0 / 9.6.0).
- **Effet LIVE** : chaque fois que **vous** décrochez un survivant, +1 jeton (max **1/2/3**). Un **Great** en réparation consomme tous les jetons et réduit **définitivement** les charges requises du générateur de **5 charges par jeton** — VERIFIED_MULTI_SOURCE (audit 9.6.0 [21] + wiki via résumé [14]).
- **Valeurs** : 5 charges sur 90 (gen standard) ≈ 5,6 % par jeton (calcul, DATA dérivée). Ancienne version : jetons à chaque décrochage de n'importe qui, 2 % par jeton (OBSOLETE).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions** : Great requis → synergie Hyperfocus / Stake Out ; sans décrochages = 0 valeur.
- **Synergies (HEURISTIC)** : Stake Out, Hyperfocus, Borrowed Time/Babysitter (rôle de décrocheur).
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 2 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : joueur « sauveteur » qui enchaîne décrochage → gen.
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs qui accrochent peu (slug) ; si un autre survivant fait les décrochages.
- **Écart avec le seed** : **IMPRÉCIS** (« environ +5 % par jeton » : c'est −5 charges ≈ 5,6 % ; historique 9.5.0/9.6.0 cohérent avec l'audit).
- **Sources** : [14] [21]

### Bite the Bullet — Leon S. Kennedy
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : en soignant (vous ou un allié) : **sons de soin et gémissements supprimés** ; un skill check de soin raté ne déclenche **pas de notification sonore** et la pénalité tombe à **3/2/1 %** — STRONG_SECONDARY [15].
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions** : contre Nurse's Calling (aura) : inutile ; utile contre les notifications de skill checks ratés (Overcharge-like, Doctor).
- **Synergies (HEURISTIC)** : Self-Care / Strength in Shadows, Iron Will, Distortion.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 2 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : soins près du tueur contre tueurs à écoute (Doctor, Huntress avec Stridor).
- **Quand elle n'en produit pas (HEURISTIC)** : contre auras de soin (A Nurse's Calling), ou si l'on soigne loin du tueur.
- **Écart avec le seed** : **OK**.
- **Sources** : [15]

### Clairvoyance — Mikaela Reid
- **Statut** : LIVE 10.1.2a (buff de durée, patch non identifié).
- **Effet LIVE** : après avoir **béni ou purifié** un totem, **mains vides**, maintenir le bouton d'objet → auras des **coffres, interrupteurs, générateurs, trappe et crochets** à **64 m** pendant **10/11/12 s** — STRONG_SECONDARY [16] (CONFLICT-P27-02 résolu).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions** : incompatible avec objet en main (« empty-handed ») ; utilisation limitée par les totems disponibles (nombre d'utilisations exact UNCERTAIN).
- **Synergies (HEURISTIC)** : Detective's Hunch, Small Game, Boon perks.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 1 · endgame 2 (trappe/portes)
- **Quand elle produit de la valeur (HEURISTIC)** : trouver trappe ou gens restants en fin de partie, SoloQ sans info.
- **Quand elle n'en produit pas (HEURISTIC)** : SWF qui partage déjà les positions ; parties sans totems restants.
- **Écart avec le seed** : **OK** (10/11/12 s = valeur la plus récente ; le seed omet « maintenir » et « mains vides » — mentionne « sans objet »).
- **Sources** : [16]

### Corrective Action — Jonah Vasquez
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : **1/2/3 jetons** au départ, **+1 par Great** (max **5**). Un skill check **raté d'un autre survivant** est converti en **Good** (−1 jeton) et vous voyez son aura **6 s**. Ne s'applique pas aux skill checks spéciaux — STRONG_SECONDARY [17].
- **Conditions** : le résumé ne précise pas s'il faut coopérer sur la même action — UNCERTAIN (souvenir non vérifié : effet en coopération).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR 9.6.0** : non concernée (conversion, pas modificateur de chance) — HYPOTHESIS.
- **Synergies (HEURISTIC)** : Stake Out, Hyperfocus (farm de Greats), Prove Thyself / Leader (coop).
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 2 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SoloQ avec coéquipiers qui ratent des skill checks (pas d'explosion, pas de notification).
- **Quand elle n'en produit pas (HEURISTIC)** : si vous réparez seul ; contre skill checks spéciaux (Doctor Madness, Overcharge ? — non vérifié).
- **Écart avec le seed** : **OK**.
- **Sources** : [17]

### Boon: Dark Theory — Yoichi Asakawa
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : boon (rayon **24 m**) : tous les survivants dans la zone ont **+2 % de Haste**, qui persiste **2/3/4 s** après la sortie — STRONG_SECONDARY [18].
- **Valeurs** : toutes les boons d'un joueur partagent un seul totem.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR 9.6.0** : Haste de perk → DR avec Blood Pact/Power of Two/autres Haste identiques (seule la plus forte à 100 %).
- **Synergies (HEURISTIC)** : Boon: Circle of Healing, Boon: Shadow Step (même totem).
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : zone de boon sur une boucle forte, rotations plus rapides.
- **Quand elle n'en produit pas (HEURISTIC)** : tueur qui éteint la boon (Shattered Hope) ; zone mal placée.
- **Écart avec le seed** : **FAUX probable** (seed : +3 % ; source : **+2 %**, STRONG_SECONDARY — à confirmer, voir Questions ouvertes). 2/3/4 s : OK.
- **Sources** : [18]

### Parental Guidance — Yoichi Asakawa
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : après avoir **étourdi le tueur par n'importe quel moyen** (y compris sauvetage à la lampe), **griffures, sang et gémissements supprimés 5/6/7 s** — STRONG_SECONDARY [19].
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions** : « stun » = palette, lampe, Head On, Blast Mine… ; pas un « blind ».
- **Synergies (HEURISTIC)** : Head On, Lithe/Sprint Burst après stun, Iron Will.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 2 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : après un stun palette en zone à hautes herbes/structures pour perdre le tueur.
- **Quand elle n'en produit pas (HEURISTIC)** : terrain ouvert ; tueurs avec tracking alternatif.
- **Écart avec le seed** : **OK**.
- **Sources** : [19]

### Inner Focus — Haddie Kaur
- **Statut** : LIVE 10.1.2a (buffée, patch non identifié).
- **Effet LIVE** : vous voyez les **griffures des autres survivants** (plus de limite 32 m) ; quand un autre survivant perd un état de santé **à cause du tueur**, son aura vous est révélée **6/8/10 s** (plus de limite 32 m) — STRONG_SECONDARY [20].
- **Valeurs** : ancienne version 3/4/5 s + limites 32 m (OBSOLETE).
- **PTB 10.2.0** : UNCERTAIN.
- **Synergies (HEURISTIC)** : Kindred, Bond, perks de soin (aller vers l'allié blessé).
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 2 · info 3 · anti-tunnel 1 · soin 1 · gen 0 · endgame 1
- **Quand elle produit de la valeur (HEURISTIC)** : savoir où est le tueur à chaque coup (rotation, reset de gen, pré-positionnement pour décrochage).
- **Quand elle n'en produit pas (HEURISTIC)** : contre tueurs qui one-shot/slug peu de coups visibles… (info seulement au coup).
- **Écart avec le seed** : **IMPRÉCIS mineur** (le seed dit « quand un allié perd un état de santé » sans « à cause du tueur »).
- **Sources** : [20]

---

## Perks NON vérifiées (quota WebSearch épuisé) — 13

> Pour ces perks, seules la formulation du seed (« seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) », UNCERTAIN) et, le cas échéant, des remarques « connaissance du modèle (antérieure à mi-2026), UNCERTAIN » sont données. Aucune valeur ci-dessous n'est à reprendre comme FACT.

### Overzealous — Haddie Kaur
- **Statut** : UNCERTAIN (présumée LIVE).
- **Effet LIVE** : seed : après bénédiction/purification d'un totem, réparation +8/9/10 % (doublé si Hex) jusqu'à prendre un coup — « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — UNCERTAIN.
- **Valeurs / CD / conditions / limites** : « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR 9.6.0** : modificateur positif de vitesse de réparation → probablement soumis aux DR avec d'autres bonus identiques (HYPOTHESIS).
- **Synergies (HEURISTIC)** : Small Game, Detective's Hunch, boons.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 2 · endgame 0
- **Quand elle produit / ne produit pas de valeur (HEURISTIC)** : forte si vous trouvez un Hex tôt ; nulle après le premier coup reçu.
- **Écart avec le seed** : NON VÉRIFIABLE (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé))
- **Sources** : —

### Residual Manifest — Haddie Kaur
- **Statut** : UNCERTAIN.
- **Effet LIVE** : seed : aveuglement réussi → Blindness 20/25/30 s ; fouille unique d'un coffre ouvert — « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions** : Blindness = le tueur ne voit pas les auras (définition statut, audit).
- **Synergies (HEURISTIC)** : lampe/Flashbang, Appraisal (non vérifié).
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit / ne produit pas de valeur (HEURISTIC)** : contre tueurs à auras (Lethal Pursuer, BBQ) ; nulle sans outil d'aveuglement.
- **Écart avec le seed** : NON VÉRIFIABLE (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé))
- **Sources** : —

### Reactive Healing — Ada Wong
- **Statut** : UNCERTAIN.
- **Effet LIVE** : seed : blessé, quand un allié à 32 m prend un coup, vous regagnez 40/45/50 % de la progression de soin manquante — « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — UNCERTAIN (connaissance du modèle (antérieure à mi-2026), UNCERTAIN : la version connue parle de « partie de la progression de soin manquante » en rayon 32 m, cohérent).
- **PTB 10.2.0** : UNCERTAIN.
- **Difficulté** : 1 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 2 · gen 0 · endgame 0
- **Quand elle produit / ne produit pas de valeur (HEURISTIC)** : utile quand l'équipe joue proche (soins de groupe) ; nulle si vous êtes seul blessé.
- **Écart avec le seed** : NON VÉRIFIABLE (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé))
- **Sources** : —

### Fogwise — Vittorio Toscano
- **Statut** : UNCERTAIN.
- **Effet LIVE** : seed : Great en réparation → aura du tueur 4/5/6 s — « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — UNCERTAIN (connaissance du modèle (antérieure à mi-2026), UNCERTAIN : la perk demandait historiquement de réussir un Great pour révéler l'aura ; valeurs à confirmer).
- **PTB 10.2.0** : UNCERTAIN.
- **Synergies (HEURISTIC)** : Stake Out, Hyperfocus.
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit / ne produit pas de valeur (HEURISTIC)** : info régulière sur gen ; nulle contre Undetectable.
- **Écart avec le seed** : NON VÉRIFIABLE (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) (le seed la classe aussi en « troll/fun », incohérent avec une perk d'info — remarque éditoriale).
- **Sources** : —

### Blood Rush — Renato Lyra
- **Statut** : UNCERTAIN (l'audit phase 0 la classe **SUSPECT**).
- **Effet LIVE** : seed : après décrochage, 40/50/60 s pour annuler Exhausted une fois — « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — UNCERTAIN. connaissance du modèle (antérieure à mi-2026), UNCERTAIN : la version connue exige d'être à 1 crochet de la mort / prévoit une contrepartie (ex. état blessé/Broken ou perte de progression) — à vérifier impérativement.
- **PTB 10.2.0** : UNCERTAIN.
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 2 · macro 0 · info 0 · anti-tunnel 2 · soin 0 · gen 0 · endgame 0
- **Quand elle produit / ne produit pas de valeur (HEURISTIC)** : réactiver une perk d'Exhaustion après décrochage face au tunnel ; nulle sans perk d'Exhaustion.
- **Écart avec le seed** : NON VÉRIFIABLE (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) (suspect selon l'audit)
- **Sources** : [21]

### Teamwork: Power of Two — Thalita Lyra
- **Statut** : UNCERTAIN.
- **Effet LIVE** : seed : après soin d'un allié, +5 % de Haste pour les deux tant que vous restez à 8/12/16 m, +4 s après séparation — « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR 9.6.0** : Haste de perk → DR (Blood Pact, Dark Theory).
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 1 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 0 · endgame 0
- **Écart avec le seed** : NON VÉRIFIABLE (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé))
- **Sources** : —

### Scavenger — Gabriel Soma
- **Statut** : UNCERTAIN.
- **Effet LIVE** : seed : boîte à outils vide, Great → jeton ; 5 jetons = recharge, mais réparation −50 % pendant 40/35/30 s — « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Écart avec le seed** : NON VÉRIFIABLE (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé))
- **Sources** : —

### Troubleshooter — Gabriel Soma
- **Statut** : UNCERTAIN.
- **Effet LIVE** : seed : en poursuite, aura du générateur le plus avancé ; aura du tueur quelques secondes après avoir fait tomber une palette ; effet prolongé 6/8/10 s après la poursuite — « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — UNCERTAIN (« quelques secondes » = valeur manquante dans le seed).
- **PTB 10.2.0** : UNCERTAIN.
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 2 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Écart avec le seed** : NON VÉRIFIABLE (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) (IMPRÉCIS par construction : durée d'aura du tueur non chiffrée)
- **Sources** : —

### Scene Partner — Nicolas Cage
- **Statut** : UNCERTAIN.
- **Effet LIVE** : seed : dans le rayon de terreur, regarder le tueur → cri + aura 4/5/6 s ; 50 % de chance de second cri prolongeant l'effet — « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions** : le cri révèle votre position (anti-synergie furtivité).
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 2 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Écart avec le seed** : NON VÉRIFIABLE (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé))
- **Sources** : —

### Light-Footed — Ellen Ripley
- **Statut** : UNCERTAIN (le seed cite un buff 9.0.0).
- **Effet LIVE** : seed : en bonne santé et en course, pas silencieux ; recharge 14/12/10 s après action précipitée — « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — UNCERTAIN ; buff 9.0.0 non vérifié.
- **PTB 10.2.0** : UNCERTAIN.
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Écart avec le seed** : NON VÉRIFIABLE (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé))
- **Sources** : —

### Lucky Star — Ellen Ripley
- **Statut** : UNCERTAIN.
- **Effet LIVE** : seed : pas de gémissements en casier ; en sortant, aura du gen le plus proche et de tous les survivants, ni sang ni gémissements 30 s ; recharge 35/30/25 s — « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — UNCERTAIN (connaissance du modèle (antérieure à mi-2026), UNCERTAIN : la version connue a une durée d'aura de ~10 s et un cooldown plus long ; à confirmer).
- **PTB 10.2.0** : UNCERTAIN.
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 1 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Écart avec le seed** : NON VÉRIFIABLE (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé))
- **Sources** : —

### Invocation: Weaving Spiders — Sable Ward
- **Statut** : UNCERTAIN.
- **Effet LIVE** : seed : invocation 60 s au cercle du sous-sol (alliés peuvent aider) ; vous devenez blessé et Broken jusqu'à la fin ; gens restants −8/9/10 charges — « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — UNCERTAIN (valeurs de charges et durée à confirmer).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions** : Broken permanent → anti-synergie Second Wind/For the People/Resilience-ok.
- **Difficulté** : 3 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 2 · info 0 · anti-tunnel 0 · soin 0 · gen 2 · endgame 0
- **Écart avec le seed** : NON VÉRIFIABLE (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé))
- **Sources** : —

### Strength in Shadows — Sable Ward
- **Statut** : UNCERTAIN.
- **Effet LIVE** : seed : au sous-sol, auto-soin sans médikit (30 % plus lent), puis aura du tueur 6/8/10 s — « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 0 · info 1 · anti-tunnel 0 · soin 1 · gen 0 · endgame 0
- **Écart avec le seed** : NON VÉRIFIABLE (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé))
- **Sources** : —

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| P27-01 | Babysitter : aura tueur 8 s ; allié décroché sans griffures/sang et +10 % force de Haste 20/25/30 s | [1][2] | LIVE (présumé) | STRONG_SECONDARY (CONFLICT-P27-01) |
| P27-02 | Second Wind : Broken puis soin auto après 28/24/20 s ; activation après 1 état de santé soigné | [6] | LIVE | STRONG_SECONDARY |
| P27-03 | Lucky Break : 40/50/60 s de suppression sang/griffures, recharge par temps de soin | [7] | LIVE | STRONG_SECONDARY |
| P27-04 | For the People : Broken 80/70/60 s, devient Obsession | [8] | LIVE | STRONG_SECONDARY |
| P27-05 | Blood Pact : 5/6/7 % Haste à 16 m, activation quand blessé, auras mutuelles | [9] | LIVE | STRONG_SECONDARY |
| P27-06 | Repressed Alliance : réparation 40/35/30 s (10.1.1), blocage 15 s (10.1.0, was 30) | [10][11][21] | LIVE 10.1.1 | VERIFIED_MULTI_SOURCE |
| P27-07 | Appraisal : 4 jetons, 2 fouilles/coffre, +40/60/80 % vitesse (9.1.0) | [13] | LIVE | STRONG_SECONDARY |
| P27-08 | Fast Track : max 1/2/3 jetons (vos décrochages), −5 charges/jeton sur Great | [14][21] | LIVE 9.6.0 | VERIFIED_MULTI_SOURCE |
| P27-09 | Bite the Bullet : pénalité 3/2/1 %, pas de notification | [15] | LIVE | STRONG_SECONDARY |
| P27-10 | Clairvoyance : 64 m, 10/11/12 s (was 8/9/10) | [16] | LIVE | STRONG_SECONDARY |
| P27-11 | Corrective Action : 1/2/3 jetons, max 5, aura 6 s | [17] | LIVE | STRONG_SECONDARY |
| P27-12 | Boon: Dark Theory : +2 % Haste, 2/3/4 s après sortie, rayon 24 m | [18] | LIVE | STRONG_SECONDARY |
| P27-13 | Parental Guidance : 5/6/7 s après tout stun | [19] | LIVE | STRONG_SECONDARY |
| P27-14 | Inner Focus : aura tueur 6/8/10 s (was 3/4/5), plus de limite 32 m | [20] | LIVE | STRONG_SECONDARY |
| P27-15 | 13 perks Overzealous → Strength in Shadows : valeurs du seed uniquement | seed | ? | UNCERTAIN (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) |

## Conflits

#### CONFLICT-P27-01 : historique et version LIVE de Babysitter
- Source A : page wiki Babysitter (wiki.gg / fandom, via résumé) — version Haste +10 % / pas de traces 20/25/30 s / aura tueur 8 s [1][2].
- Source B : résumé de recherche sur 9.3.0 (steamdb PTB 9.3.0 + wiki Patch Notes 9.3.X + support 9.3.0) affirmant un rework 9.3.0 « aura du survivant et du tueur 20/25/30 s » [3][4][5].
- Source C : audit phase 0 [21] : 9.3.0 LIVE a **reverté** les changements PTB de Babysitter / Borrowed Time / Furtive Chase / Off the Record ; 9.2.0 a « postponed » le Tunneling Reduction Update.
- Hypothèse : le résumé B mélange PTB 9.3.0 et LIVE ; la version Haste de la page wiki est la version LIVE. Le « rework 9.2.0 » du seed est probablement faux (le rework version Haste date d'un patch antérieur non identifié).
- Résolution : **UNRESOLVED** (penche vers A+C ; à confirmer par lecture directe de la page wiki « Change Log »).

#### CONFLICT-P27-02 : durée de Clairvoyance
- Source A : résumé wiki : 8/9/10 s.
- Source B : même résumé, « more recent information » : 10/11/12 s (was 8/9/10 s) [16].
- Hypothèse : buff ultérieur ; 10/11/12 s = valeur actuelle.
- Résolution : résolu en faveur de 10/11/12 s (STRONG_SECONDARY, patch du buff non identifié).

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Repressed Alliance — réparation requise | 55/50/45 s | 40/35/30 s depuis 10.1.1 | **FAUX** |
| Boon: Dark Theory — Haste | +3 % | +2 % (wiki via résumé) | **FAUX (probable)** |
| Babysitter — « rework 9.2.0 » | rework 9.2.0 | 9.3.0 PTB revert ; date du rework non identifiée | **NON VÉRIFIABLE / douteux** |
| Babysitter — effet | Haste + pas de traces, aura tueur ~8 s | idem, durée allié 20/25/30 s omise | OK (IMPRÉCIS mineur) |
| Fast Track — valeur par jeton | ~+5 % | −5 charges ≈ 5,6 % | **IMPRÉCIS** |
| Blood Pact — condition | après soin mutuel avec l'Obsession | activation quand l'un est blessé + auras mutuelles ; Haste après soin | **IMPRÉCIS** |
| Blood Pact — PTB 10.2.0 | buffée | notes PTB non lues | NON VÉRIFIABLE |
| For the People | soin instantané, blessé + Broken 80/70/60 s | + devient Obsession ; résultat selon état de l'allié | IMPRÉCIS mineur |
| Inner Focus | quand un allié perd un état de santé | « à cause du tueur » | IMPRÉCIS mineur |
| Second Wind, Lucky Break, Appraisal, Bite the Bullet, Clairvoyance, Corrective Action, Parental Guidance | — | concordant | OK |
| Overzealous, Residual Manifest, Reactive Healing, Fogwise, Blood Rush, Power of Two, Scavenger, Troubleshooter, Scene Partner, Light-Footed, Lucky Star, Weaving Spiders, Strength in Shadows | — | non vérifiées (quota) | NON VÉRIFIABLE |

## Questions ouvertes

1. **13 perks non vérifiées** (quota WebSearch épuisé) : à relancer en priorité Blood Rush (SUSPECT audit), Lucky Star (durées), Light-Footed (buff 9.0.0), Invocation: Weaving Spiders (charges), Troubleshooter (durée aura tueur absente du seed).
2. Boon: Dark Theory : 2 % ou 3 % en LIVE 10.1.2a ? (un buff 2025-2026 non repéré est possible).
3. Babysitter : patch exact du rework « Haste + suppression traces » ; version LIVE à confirmer (CONFLICT-P27-01).
4. Corrective Action : faut-il coopérer sur la même action ?
5. Contenu exact du PTB 10.2.0 pour les 27 perks (seul Blood Pact est cité par le seed) : lire BHVR KB 559.
6. Babysitter : la Haste « +10 % de force » est-elle soumise aux DR avec la Haste basekit de décrochage ?

## Sources

1. Babysitter — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Babysitter — consulté le 27/09/2026 via WebSearch
2. Babysitter — DBD Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Babysitter — consulté le 27/09/2026 via WebSearch
3. Patch Notes 9.3.X — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Patch_Notes_9.3.X — consulté le 27/09/2026 via WebSearch
4. 9.3.0 PTB Patch Notes — SteamDB — https://steamdb.info/patchnotes/20652653/ — consulté le 27/09/2026 via WebSearch
5. 9.3.0 Mid-Chapter — support.deadbydaylight.com — https://support.deadbydaylight.com/hc/en-us/articles/43679054706708-9-3-0-Mid-Chapter — consulté le 27/09/2026 via WebSearch
6. Second Wind — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Second_Wind — consulté le 27/09/2026 via WebSearch
7. Lucky Break — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Lucky_Break — consulté le 27/09/2026 via WebSearch
8. For the People — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/For_the_People — consulté le 27/09/2026 via WebSearch
9. Blood Pact — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Blood_Pact — consulté le 27/09/2026 via WebSearch
10. 10.1.1 Bugfix Patch — BHVR KB 557 — https://forums.bhvr.com/dead-by-daylight/kb/articles/557-10-1-1-bugfix-patch — consulté le 27/09/2026 via WebSearch
11. Repressed Alliance — NightLight — https://nightlight.gg/perks/Repressed_Alliance — consulté le 27/09/2026 via WebSearch
12. 10.2.0 PTB Patch Notes — BHVR KB 559 — https://forums.bhvr.com/dead-by-daylight/kb/articles/559-10-2-0-ptb-patch-notes — URL renvoyée, contenu non lu — 27/09/2026
13. Appraisal — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Appraisal — consulté le 27/09/2026 via WebSearch
14. Fast Track — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Fast_Track — consulté le 27/09/2026 via WebSearch
15. Bite the Bullet — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Bite_the_Bullet — consulté le 27/09/2026 via WebSearch
16. Clairvoyance — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Clairvoyance — consulté le 27/09/2026 via WebSearch
17. Corrective Action — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Corrective_Action — consulté le 27/09/2026 via WebSearch
18. Boon: Dark Theory — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Boon:_Dark_Theory — consulté le 27/09/2026 via WebSearch
19. Parental Guidance — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Parental_Guidance — consulté le 27/09/2026 via WebSearch
20. Inner Focus — DBD Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Inner_Focus — consulté le 27/09/2026 via WebSearch
21. Audit phase 0 (interne) — `kb/seed/audit_phase0.txt` (chronologie 9.2.0-10.1.2a, Fast Track 9.6.0, Repressed Alliance 10.1.0/10.1.1, Blood Rush SUSPECT)
