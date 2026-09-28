# Lot 2 — Perks survivant, page 27 du guide seed (lignes 535-650 de `kb/seed/ch3_survperks.txt`)

**Couverture : 27/27 perks re-vérifiées sur page wiki complète (27/09/2026) ; dont 8 confirmées par note officielle** (Babysitter, Blood Pact, Repressed Alliance, Appraisal, Fast Track, Clairvoyance, Light-Footed, Lucky Star).

- **Référence** : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 = **non LIVE**.
- **Méthode** : lot 2 par WebSearch (résumés) ; **re-vérification lot 12a (27/09/2026)** sur les pages wiki complètes (API MediaWiki, `kb/sources/wiki_perks_digest.md` [45]) et les notes officielles BHVR lues en local (`kb/sources/patches/official_*.txt`). Confiance : STRONG_SECONDARY (page complète) ; VERIFIED_MULTI_SOURCE si une note officielle 9.x/10.x concorde.
- **Historique** : au lot 2, le quota WebSearch avait été épuisé après 14 perks ; les 13 suivantes (Overzealous → Strength in Shadows) ont été vérifiées au lot 12a.
- Les notes de valeur (0-3) sont **HEURISTIC** (avis de l'agent, non mesuré).
- PTB 10.2.0 : la note officielle 559 a été lue en entier (lot 12a) ; seule **Blood Pact** est modifiée parmi ces 27 perks. Toute mention PTB = NON LIVE.

---

## Perks vérifiées au lot 2 puis re-vérifiées au lot 12a (14)

### Babysitter — Steve Harrington
- **Statut** : LIVE 10.1.2a (perk unique ; a existé sous le nom général *Guardian* pendant le retrait de la licence Stranger Things, puis rétablie).
- **Effet LIVE** : quand vous décrochez un survivant, vous voyez l'aura du tueur **8 s** ; le survivant décroché ne laisse **ni griffures ni flaques de sang** et gagne **+10 % de force de Haste** pendant **20/25/30 s** — VERIFIED_MULTI_SOURCE (page complète [1] + note 9.0.0 « Reduced Haste bonus … to 10% (was 15%) » [22] + note 9.3.0 « Reverted the following perks: Babysitter » [25]) ; CONFLICT-P27-01 **RÉSOLU**.
- **Valeurs / CD / conditions / limites** : déclenchement au décrochage par vous (pas l'auto-décrochage). « +10 % de force de Haste » = renforce la Haste basekit de décrochage (10 % pendant 10 s depuis 10.1.0 [28]). Historique : 8.1.0 (4/6/8 s → 20/25/30 s, +7 → +10 %), 8.7.0 (+15 %), 9.0.0 (retour à +10 %) [1][22]. Les reworks PTB 9.2.0 et 9.3.0 n'ont **jamais été LIVE** (9.2.0 : « Postponed … Reverted the perk changes » [24] ; 9.3.0 : « Reverted the following perks: Babysitter » [25]) — le change log du wiki qui liste un « Rework 9.3.0 » est erroné sur ce point.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
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
- **Écart avec le seed** : effet **OK** ; « rework 9.2.0 » = **FAUX** (le rework 9.2.0 a été reporté puis annulé avant la sortie [24], celui du PTB 9.3.0 reverté à la sortie [25] ; la version LIVE date de 8.1.0, Haste ramenée à +10 % en 9.0.0 [22]). Durée « environ 8 s » OK ; le seed omet la durée 20/25/30 s de l'effet sur l'allié.
- **Sources** : [1] [2] [3] [4] [5] [21] [22] [24] [25] [28]

### Second Wind — Steve Harrington
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : après avoir soigné d'autres survivants l'équivalent d'**1 état de santé**, la perk s'active ; au prochain décrochage (par un allié ou vous-même) vous êtes **Broken**, puis **soigné instantanément après 28/24/20 s** si vous n'avez pas été mis à terre — STRONG_SECONDARY (page complète [6] ; aucun changement 8.x-10.x).
- **Valeurs / CD / conditions / limites** : ne s'active pas si vous êtes déjà Broken ; seuls les soins d'**un autre** survivant comptent (« heal another Survivor ») ; se désactive quand Second Wind vous a soigné ou si vous passez en Dying avant la fin du minuteur [6]. « Vigil raccourcit Broken mais pas le minuteur » : non mentionné sur la page — UNCERTAIN.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
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
- **Effet LIVE** : blessé, supprime **griffures et flaques de sang** pendant **40/50/60 s** au total ; se recharge du temps passé à soigner un autre survivant, jusqu'au maximum initial — STRONG_SECONDARY (page complète [7] ; aucun changement 8.x-10.x).
- **Valeurs / CD / conditions / limites** : se désactive à épuisement ou quand l'état de santé passe à autre chose que Blessé (pause, pas perte définitive d'après la formulation « deactivates » — nuance UNCERTAIN).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
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
- **Effet LIVE** : en bonne santé, en soignant un allié **sans médikit**, bouton actif → soin instantané (vers Blessé s'il était à terre ou en Deep Wound ; vers bonne santé s'il était blessé). Vous devenez **blessé**, **Broken 80/70/60 s**, et **l'Obsession** si vous ne l'étiez pas ; −100 % de chance d'être l'Obsession initiale — STRONG_SECONDARY (page complète [8] ; aucun changement 8.x-10.x).
- **Valeurs / CD / conditions / limites** : usage conditionné à être en bonne santé ; pas de médikit.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
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
- **Effet LIVE** : quand vous ou l'Obsession êtes **blessés**, la perk s'active : **auras mutuelles** en permanence ; terminer un soin sur l'Obsession (ou être soigné par elle) donne à vous deux **5/6/7 % de Haste** tant que vous restez à **16 m** l'un de l'autre — VERIFIED_MULTI_SOURCE (page complète [9], onglet d'historique 4.3.0 = LIVE + note 559 qui conserve 5/6/7 % et 16 m : « we are happy with it's current Haste value » [12]).
- **Valeurs / CD / conditions / limites** : désactivée si vous êtes vous-même l'Obsession ; réduit de −100 % vos chances d'être l'Obsession initiale.
- **PTB 10.2.0** (NON LIVE) : valeurs inchangées ; **nouveau** : si vous êtes l'Obsession et êtes accroché, un autre survivant devient l'Obsession (la perk n'est plus simplement désactivée quand vous êtes l'Obsession) — VERIFIED_MULTI_SOURCE (wiki [9] + note 559 [12]).
- **Interactions, DR 9.6.0** : Haste de perk → DR avec d'autres Haste de perks identiques (Power of Two, Dark Theory) : la plus forte à 100 %, la suivante 50 %.
- **Synergies (HEURISTIC)** : For the People (vous rend Obsession… mais désactive alors la perk : anti-synergie), Teamwork: Power of Two.
- **Difficulté** : 3 (dépend du tueur qui choisit une Obsession et de la coordination)
- **Valeur (HEURISTIC)** : SoloQ 0 · SWF 1 · chase 1 · macro 1 · info 1 · anti-tunnel 0 · soin 1 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : en SWF avec le joueur Obsession, pour rotations rapides après soin.
- **Quand elle n'en produit pas (HEURISTIC)** : sans Obsession dans la partie, ou si l'Obsession meurt tôt.
- **Écart avec le seed** : **IMPRÉCIS** (omet la condition d'activation « blessé » et les auras mutuelles ; valeurs 5/6/7 % et 16 m OK [9][12]). PTB « buffée » (p32) : OK (amélioration de confort, pas de valeur chiffrée) [12].
- **Sources** : [9] [12]

### Repressed Alliance — Cheryl Mason
- **Statut** : LIVE 10.1.2a (modifiée en 10.1.0 puis 10.1.1).
- **Effet LIVE** : après **40/35/30 s** de réparation cumulée, en réparant **seul**, bouton actif → bloque le générateur **15 s** ; l'aura du gen bloqué est révélée en blanc à tous les survivants — VERIFIED_MULTI_SOURCE (page complète [30] + notes officielles 10.1.0 [28] et 10.1.1 [10]).
- **Valeurs / CD / conditions / limites** : blocage **15 s** depuis 10.1.0 (avant : 30 s — HISTORICAL) ; seuil de réparation **55/50/45 s → 40/35/30 s** en **10.1.1** (compensation).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Interactions** : bloque aussi les alliés ; ne protège pas contre la régression déjà appliquée.
- **Synergies (HEURISTIC)** : Deja Vu, perks d'info tueur (savoir quand il arrive).
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 2 · info 0 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : empêcher un kick (Pain Resonance/ Grim Embrace-like / Pop) sur un gen presque fini quand vous devez fuir.
- **Quand elle n'en produit pas (HEURISTIC)** : contre régression passive déjà engagée ou quand un allié vient réparer juste après.
- **Écart avec le seed** : **FAUX** (seed : 55/50/45 s de réparation = valeur pré-10.1.1 ; LIVE = 40/35/30 s). Blocage 15 s et « avant 30 s » : OK.
- **Sources** : [10] [11] [12] [21] [28] [30]

### Appraisal — Élodie Rakoto
- **Statut** : LIVE 10.1.2a (buff 9.1.0).
- **Effet LIVE** : **4 jetons** au départ ; à côté d'un coffre **ouvert et vide**, action Rummage pour obtenir un objet supplémentaire (−1 jeton, **2 fois max par coffre**) ; fouille **+40/60/80 %** plus rapide — VERIFIED_MULTI_SOURCE (page complète [13] + note 9.1.0 [23]).
- **Valeurs** : 9.1.0 : jetons 3 → 4, limite par coffre 1 → 2 [23].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Interactions** : Plunderer's Instinct (auras de coffres), Residual Manifest (fouille aussi un coffre ouvert — non vérifié).
- **Synergies (HEURISTIC)** : Plunderer's Instinct, Ace in the Hole, Built to Last (non vérifié).
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 1 (médikits) · gen 1 (boîtes) · endgame 1
- **Quand elle produit de la valeur (HEURISTIC)** : builds objets (médikits/boîtes/lampes) sur cartes riches en coffres.
- **Quand elle n'en produit pas (HEURISTIC)** : contre tueurs à forte pression (le temps de fouille coûte des gens).
- **Écart avec le seed** : **OK** [13][23].
- **Sources** : [12] [13] [23]

### Fast Track — Lee Yun-jin
- **Statut** : LIVE 10.1.2a (reworks 9.5.0 / 9.6.0).
- **Effet LIVE** : chaque fois que **vous** décrochez un survivant, +1 jeton (max **1/2/3**). Un **Great** en réparation consomme tous les jetons et gain **permanent** sur le générateur : **5 % de progression par jeton** selon la note officielle 9.6.0 (« the Generator gains 5% permanent progress ») [27], **5 charges par jeton** selon le wiki [14] — VERIFIED_MULTI_SOURCE pour la mécanique ; unité exacte : voir CONFLICT-P27-03.
- **Valeurs** : note officielle : 5 % ; wiki : 5 charges (≈ 5,6 % d'un gen de 90 charges, calcul). Ancienne version 9.5.0 : 1/2/3 jetons à chaque survivant accroché (max 9), 2 charges/2 % par jeton (OBSOLETE) [26][27].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Interactions** : Great requis → synergie Hyperfocus / Stake Out ; sans décrochages = 0 valeur.
- **Synergies (HEURISTIC)** : Stake Out, Hyperfocus, Borrowed Time/Babysitter (rôle de décrocheur).
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 2 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : joueur « sauveteur » qui enchaîne décrochage → gen.
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs qui accrochent peu (slug) ; si un autre survivant fait les décrochages.
- **Écart avec le seed** : **OK** (« environ +5 % par jeton » = formulation de la note officielle 9.6.0 [27] ; le wiki dit 5 charges ≈ 5,6 % — CONFLICT-P27-03) ; historique 9.5.0/9.6.0 OK [26][27].
- **Sources** : [12] [14] [21] [26] [27]

### Bite the Bullet — Leon S. Kennedy
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : en soignant (vous ou un allié) : **sons de soin et gémissements supprimés** ; un skill check de soin raté ne déclenche **pas de notification sonore** et la pénalité tombe à **3/2/1 %** de la progression totale — STRONG_SECONDARY (page complète [15] ; aucun changement 8.x-10.x).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Interactions** : contre Nurse's Calling (aura) : inutile ; utile contre les notifications de skill checks ratés (Overcharge-like, Doctor).
- **Synergies (HEURISTIC)** : Self-Care / Strength in Shadows, Iron Will, Distortion.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 2 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : soins près du tueur contre tueurs à écoute (Doctor, Huntress avec Stridor).
- **Quand elle n'en produit pas (HEURISTIC)** : contre auras de soin (A Nurse's Calling), ou si l'on soigne loin du tueur.
- **Écart avec le seed** : **OK**.
- **Sources** : [15]

### Clairvoyance — Mikaela Reid
- **Statut** : LIVE 10.1.2a (buff de durée en **9.2.0**).
- **Effet LIVE** : après avoir **béni ou purifié** un totem, **mains vides**, maintenir le bouton d'objet → auras des **coffres, interrupteurs, générateurs, trappe et crochets** à **64 m** pendant **10/11/12 s** (tant que le bouton est maintenu) — VERIFIED_MULTI_SOURCE (page complète [16] + note 9.2.0 « was 8/9/10 seconds » [24]) ; CONFLICT-P27-02 résolu.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Interactions** : incompatible avec objet en main (« empty-handed ») ; utilisation limitée par les totems disponibles (nombre d'utilisations exact UNCERTAIN).
- **Synergies (HEURISTIC)** : Detective's Hunch, Small Game, Boon perks.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 1 · endgame 2 (trappe/portes)
- **Quand elle produit de la valeur (HEURISTIC)** : trouver trappe ou gens restants en fin de partie, SoloQ sans info.
- **Quand elle n'en produit pas (HEURISTIC)** : SWF qui partage déjà les positions ; parties sans totems restants.
- **Écart avec le seed** : **OK** (10/11/12 s depuis 9.2.0 [24] ; le seed omet « maintenir » et « mains vides » — mentionne « sans objet »).
- **Sources** : [12] [16] [24]

### Corrective Action — Jonah Vasquez
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : **1/2/3 jetons** au départ, **+1 par Great** (max **5**). Un skill check **raté d'un autre survivant** est converti en **Good** (−1 jeton) et vous voyez son aura **6 s**. Ne s'applique pas aux skill checks spéciaux — STRONG_SECONDARY (page complète [17]).
- **Conditions** : **pas besoin de coopérer** : depuis 8.3.0, l'effet s'applique à tous les autres survivants de la partie (« While any other Survivor performs a skilful interaction » ; change log 8.3.0 : « now applies its effect to all Survivors within the Trial, instead of only to Survivors co-operating on the same action ») [17].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Interactions, DR 9.6.0** : non concernée (conversion, pas modificateur de chance) — HYPOTHESIS.
- **Synergies (HEURISTIC)** : Stake Out, Hyperfocus (farm de Greats), Kindred/Bond (l'aura de 6 s montre qui a raté et où).
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 2 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SoloQ avec coéquipiers qui ratent des skill checks (pas d'explosion, pas de notification).
- **Quand elle n'en produit pas (HEURISTIC)** : coéquipiers qui ratent peu ; contre skill checks spéciaux (exclus par le texte ; liste exacte des skill checks « spéciaux » non vérifiée).
- **Écart avec le seed** : **OK** (« quand un allié rate un skill check » = n'importe où sur la carte) [17].
- **Sources** : [12] [17]

### Boon: Dark Theory — Yoichi Asakawa
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : boon (rayon **24 m**) : tous les survivants dans la zone ont **+3 % de Haste**, qui persiste **2/3/4 s** après la sortie — STRONG_SECONDARY (page complète [18] ; change log 8.7.0 : « increased the Haste strength from +2 % to +3 % »). **Correction** : la valeur +2 % du lot 2 (résumé de recherche) était la valeur antérieure à 8.7.0.
- **Valeurs** : toutes les boons d'un joueur partagent un seul totem.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Interactions, DR 9.6.0** : Haste de perk → DR avec Blood Pact/Power of Two/autres Haste identiques (seule la plus forte à 100 %).
- **Synergies (HEURISTIC)** : Boon: Circle of Healing, Boon: Shadow Step (même totem).
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : zone de boon sur une boucle forte, rotations plus rapides.
- **Quand elle n'en produit pas (HEURISTIC)** : tueur qui éteint la boon (Shattered Hope) ; zone mal placée.
- **Écart avec le seed** : **OK** (seed : +3 % = LIVE depuis 8.7.0 [18] ; le verdict « FAUX probable » du lot 2 est retiré). 2/3/4 s : OK.
- **Sources** : [12] [18]

### Parental Guidance — Yoichi Asakawa
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : après avoir **étourdi le tueur par n'importe quel moyen** (y compris sauvetage à la lampe), **griffures, sang et gémissements supprimés 5/6/7 s** — STRONG_SECONDARY (page complète [19] ; aucun changement 8.x-10.x).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Interactions** : « stun » = palette, lampe, Head On, Blast Mine… ; pas un « blind ».
- **Synergies (HEURISTIC)** : Head On, Lithe/Sprint Burst après stun, Iron Will.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 2 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : après un stun palette en zone à hautes herbes/structures pour perdre le tueur.
- **Quand elle n'en produit pas (HEURISTIC)** : terrain ouvert ; tueurs avec tracking alternatif.
- **Écart avec le seed** : **OK**.
- **Sources** : [19]

### Inner Focus — Haddie Kaur
- **Statut** : LIVE 10.1.2a (buff 8.3.0, restriction 8.3.2).
- **Effet LIVE** : vous voyez les **griffures des autres survivants** (plus de limite 32 m) ; quand un autre survivant perd un état de santé **à cause du tueur**, l'aura **du tueur** vous est révélée **6/8/10 s** (plus de limite 32 m) — STRONG_SECONDARY (page complète [31]).
- **Valeurs** : 8.3.0 : 3/4/5 s → 6/8/10 s et suppression de la limite de 32 m ; 8.3.2 : seulement si la perte d'état de santé est causée par le tueur [31] (OBSOLETE : 3/4/5 s, 32 m).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Synergies (HEURISTIC)** : Kindred, Bond, perks de soin (aller vers l'allié blessé).
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 2 · info 3 · anti-tunnel 1 · soin 1 · gen 0 · endgame 1
- **Quand elle produit de la valeur (HEURISTIC)** : savoir où est le tueur à chaque coup (rotation, reset de gen, pré-positionnement pour décrochage).
- **Quand elle n'en produit pas (HEURISTIC)** : contre tueurs qui one-shot/slug peu de coups visibles… (info seulement au coup).
- **Écart avec le seed** : **IMPRÉCIS mineur** (le seed dit « quand un allié perd un état de santé » sans « à cause du tueur »).
- **Sources** : [12] [20] [31]

---

## Perks re-vérifiées au lot 12a (non vérifiées au lot 2, quota WebSearch) — 13

> Ces 13 fiches ont été re-vérifiées le 27/09/2026 sur la page wiki complète (API) et les notes officielles ; les anciennes mentions « seed, NON RE-VÉRIFIÉ » et « connaissance du modèle » ont été remplacées. Les notes de valeur restent HEURISTIC.

### Overzealous — Haddie Kaur
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : après avoir purifié ou béni un totem : réparation **+8/9/10 %** (totem Dull) ou **+16/18/20 %** (totem Hex) ; se désactive à la perte d'un état de santé **par n'importe quel moyen** — STRONG_SECONDARY (page complète [32] ; aucun changement 8.x-10.x).
- **Valeurs / CD / conditions / limites** : 8/9/10 % ou 16/18/20 % [32].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Interactions, DR 9.6.0** : modificateur positif de vitesse de réparation → probablement soumis aux DR avec d'autres bonus identiques (HYPOTHESIS).
- **Synergies (HEURISTIC)** : Small Game, Detective's Hunch, boons.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 2 · endgame 0
- **Quand elle produit / ne produit pas de valeur (HEURISTIC)** : forte si vous trouvez un Hex tôt ; nulle après le premier coup reçu.
- **Écart avec le seed** : **OK** (« double si Hex » = 16/18/20 % ; « prendre un coup » ≈ perte d'un état de santé par tout moyen — IMPRÉCIS mineur) [32].
- **Sources** : [12] [32]

### Residual Manifest — Haddie Kaur
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : après un aveuglement réussi du tueur, il subit **Blindness 20/25/30 s** ; une fois par partie, vous pouvez fouiller un coffre déjà ouvert, ce qui garantit une **lampe (Flashlight) basique** — STRONG_SECONDARY (page complète [33] ; aucun changement 8.x-10.x ; bug de coffre de la Secret Room de Nostromo Wreckage corrigé en 10.0.0 [29]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Interactions** : Blindness = le tueur ne voit pas les auras (définition statut, audit).
- **Synergies (HEURISTIC)** : lampe/Flashbang, Appraisal (non vérifié).
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit / ne produit pas de valeur (HEURISTIC)** : contre tueurs à auras (Lethal Pursuer, BBQ) ; nulle sans outil d'aveuglement.
- **Écart avec le seed** : **IMPRÉCIS mineur** (omet que la fouille garantit une lampe basique) [33].
- **Sources** : [12] [33] [29]

### Reactive Healing — Ada Wong
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : quand vous êtes blessé et qu'un autre survivant dans **32 m** perd un état de santé **par n'importe quel moyen**, vous gagnez **40/45/50 %** de votre progression de soin manquante — STRONG_SECONDARY (page complète [34] ; aucun changement 8.x-10.x).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Difficulté** : 1 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 2 · gen 0 · endgame 0
- **Quand elle produit / ne produit pas de valeur (HEURISTIC)** : utile quand l'équipe joue proche (soins de groupe) ; nulle si vous êtes seul blessé.
- **Écart avec le seed** : **OK** (« prend un coup » ≈ perte d'état de santé par tout moyen) [34].
- **Sources** : [12] [34]

### Fogwise — Vittorio Toscano
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : en réparant, chaque Great de réparation révèle l'aura du tueur **4/5/6 s** — STRONG_SECONDARY (page complète [35] ; aucun changement 8.x-10.x).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Synergies (HEURISTIC)** : Stake Out, Hyperfocus.
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit / ne produit pas de valeur (HEURISTIC)** : info régulière sur gen ; nulle contre Undetectable.
- **Écart avec le seed** : **OK** [35] (le seed la classe aussi en « troll/fun », incohérent avec une perk d'info — remarque éditoriale).
- **Sources** : [12] [35]

### Blood Rush — Renato Lyra
- **Statut** : LIVE 10.1.2a (version 8.3.0 ; le statut SUSPECT de l'audit phase 0 est levé).
- **Effet LIVE** : après avoir été décroché par n'importe quel moyen, Blood Rush s'active **40/50/60 s** ; bouton actif → vous récupérez instantanément d'un Exhausted en cours ; ne cause pas d'Exhausted ; désactivée prématurément par une **action bruyante (Conspicuous Action)** ; se désactive après usage et est **désactivée pour le reste de la partie une fois les portes alimentées** — STRONG_SECONDARY (page complète [36]).
- **Valeurs / conditions** : le rework 8.3.0 a supprimé l'exigence de 2 états de crochet et la contrepartie (perte d'un état de santé + Broken pendant l'auto-soin) ; l'ancienne remarque « connaissance du modèle » décrivait cette version OBSOLETE [36]. Le change log 8.3.0 indique aussi « can now activate up to 2 times per Trial » (non repris dans le texte LIVE — nombre d'activations exact : UNCERTAIN).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 2 · macro 0 · info 0 · anti-tunnel 2 · soin 0 · gen 0 · endgame 0
- **Quand elle produit / ne produit pas de valeur (HEURISTIC)** : réactiver une perk d'Exhaustion après décrochage face au tunnel ; nulle sans perk d'Exhaustion.
- **Écart avec le seed** : **OK** sur l'essentiel (40/50/60 s après décrochage, annule l'Exhausted) ; **IMPRÉCIS mineur** : omet la désactivation par action bruyante et après alimentation des portes [36].
- **Sources** : [12] [21] [36]

### Teamwork: Power of Two — Thalita Lyra
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : après avoir terminé le soin d'un autre survivant, vous deux gagnez **+5 % de Haste** tant que vous restez à **8/12/16 m** l'un de l'autre ; l'effet persiste **4 s** hors de portée et reprend si vous revenez avant la fin ; un survivant ne bénéficie que d'une instance — STRONG_SECONDARY (page complète [37] ; version 8.3.0 : plus de CD, ne se désactive plus à la perte d'un état de santé).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Interactions, DR 9.6.0** : Haste de perk → DR (Blood Pact, Dark Theory).
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 1 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 0 · endgame 0
- **Écart avec le seed** : **OK** [37].
- **Sources** : [12] [37]

### Scavenger — Gabriel Soma
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : avec une boîte à outils **vide** en main, chaque Great de réparation donne 1 jeton (max 5) ; à 5 jetons, ils sont consommés et la boîte est entièrement rechargée, puis réparation **−50 % pendant 40/35/30 s** ; une fois par partie, fouiller un coffre ouvert garantit une **boîte à outils basique** — STRONG_SECONDARY (page complète [38] ; aucun changement 8.x-10.x).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Écart avec le seed** : **IMPRÉCIS mineur** (omet la fouille unique garantissant une boîte à outils basique) [38].
- **Sources** : [12] [38]

### Troubleshooter — Gabriel Soma
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : en poursuite : aura du générateur le plus avancé ; aura du tueur **4/5/6 s** après avoir fait tomber une palette ; ces effets persistent **6/8/10 s** après la fin de la poursuite, puis la perk se désactive — STRONG_SECONDARY (page complète [39] ; aucun changement 8.x-10.x).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 2 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Écart avec le seed** : **IMPRÉCIS** (durée d'aura du tueur non chiffrée : 4/5/6 s ; 6/8/10 s OK) [39].
- **Sources** : [12] [39]

### Scene Partner — Nicolas Cage
- **Statut** : LIVE 10.1.2a (version 8.4.0).
- **Effet LIVE** : dans le rayon de terreur, regarder le tueur vous fait crier et révèle son aura **4/5/6 s** ; 50 % de chance de crier une seconde fois, prolongeant l'aura de **+2 s** ; **CD 40 s** — STRONG_SECONDARY (page complète [40] ; 8.4.0 : 3/4/5 s → 4/5/6 s, CD 60 → 40 s).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Interactions** : le cri révèle votre position (anti-synergie furtivité).
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 2 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Écart avec le seed** : **IMPRÉCIS mineur** (omet le CD de 40 s et la valeur +2 s) [40].
- **Sources** : [12] [40]

### Light-Footed — Ellen Ripley
- **Statut** : LIVE 10.1.2a (buff 9.0.0).
- **Effet LIVE** : en bonne santé, bruits de pas supprimés en course ; **CD 14/12/10 s** après un saut précipité (Rush Vault) — VERIFIED_MULTI_SOURCE (page complète [41] + note 9.0.0 « Decreased cooldown to 14/12/10 seconds (was 28/24/20 seconds) » [22]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Écart avec le seed** : **OK** (valeurs et buff 9.0.0 confirmés ; « action précipitée » = saut précipité) [22][41].
- **Sources** : [12] [22] [41]

### Lucky Star — Ellen Ripley
- **Statut** : LIVE 10.1.2a (version 9.2.0).
- **Effet LIVE** : caché dans un casier : gémissements supprimés ; en sortant, pendant **30 s** : ni gémissements ni flaques de sang, auras de tous les autres survivants, aura du générateur le plus proche (en jaune) ; **CD 35/30/25 s** (qui démarre à la fin de l'effet depuis 8.3.0) — VERIFIED_MULTI_SOURCE (page complète [42] + note 9.2.0 « was 40/35/30 seconds » [24]). L'ancienne remarque « ~10 s » correspondait à la version antérieure à 8.3.0 (OBSOLETE).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 1 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Écart avec le seed** : **OK** [24][42].
- **Sources** : [12] [24] [42]

### Invocation: Weaving Spiders — Sable Ward
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : au sous-sol, près du cercle, bouton actif → invocation de **60 s** ; pendant l'invocation, votre aura est révélée aux autres survivants, qui peuvent la rejoindre (+100 % de vitesse s'ils ont une perk d'Invocation, +50 % sinon) ; à la fin : **−8/9/10 charges** requises pour **tous** les générateurs, vous passez blessé et **Broken pour le reste de la partie** ; une seule Weaving Spiders par partie — STRONG_SECONDARY (page complète [43] ; 8.0.0 : 120 → 60 s, régression −20 → −1 c/s en cas d'interruption).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Interactions** : Broken permanent → anti-synergie Second Wind/For the People/Resilience-ok.
- **Difficulté** : 3 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 2 · info 0 · anti-tunnel 0 · soin 0 · gen 2 · endgame 0
- **Écart avec le seed** : **OK** (60 s, 8/9/10 charges, blessé + Broken) [43].
- **Sources** : [12] [43]

### Strength in Shadows — Sable Ward
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : au sous-sol : capacité de vous soigner sans médikit à **70 %** de la vitesse normale ; à la fin d'un soin au sous-sol, aura du tueur **6/8/10 s** — STRONG_SECONDARY (page complète [44] ; aucun changement 8.x-10.x).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [12] — NON LIVE.
- **Difficulté** : 2 · **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 0 · info 1 · anti-tunnel 0 · soin 1 · gen 0 · endgame 0
- **Écart avec le seed** : **OK** (« 30 % plus lent » = 70 % de la vitesse) [44].
- **Sources** : [12] [44]

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| P27-01 | Babysitter : aura tueur 8 s ; allié décroché sans griffures/sang et +10 % force de Haste 20/25/30 s ; reworks PTB 9.2.0 / 9.3.0 jamais LIVE | [1][22][24][25] | LIVE (version 8.1.0 + 9.0.0) | VERIFIED_MULTI_SOURCE |
| P27-02 | Second Wind : Broken puis soin auto après 28/24/20 s ; activation après 1 état de santé soigné sur autrui | [6] | LIVE | STRONG_SECONDARY (page complète) |
| P27-03 | Lucky Break : 40/50/60 s de suppression sang/griffures, recharge par temps de soin | [7] | LIVE | STRONG_SECONDARY (page complète) |
| P27-04 | For the People : Broken 80/70/60 s, devient Obsession | [8] | LIVE | STRONG_SECONDARY (page complète) |
| P27-05 | Blood Pact : 5/6/7 % Haste à 16 m, activation quand blessé, auras mutuelles ; PTB : transfert d'Obsession au crochet | [9][12] | LIVE / PTB (NON LIVE) | VERIFIED_MULTI_SOURCE |
| P27-06 | Repressed Alliance : réparation 40/35/30 s (10.1.1), blocage 15 s (10.1.0, was 30) | [10][28][30] | LIVE 10.1.1 | VERIFIED_MULTI_SOURCE |
| P27-07 | Appraisal : 4 jetons, 2 fouilles/coffre, +40/60/80 % vitesse (9.1.0) | [13][23] | LIVE | VERIFIED_MULTI_SOURCE |
| P27-08 | Fast Track : max 1/2/3 jetons (vos décrochages), gain permanent 5 % (note) / 5 charges (wiki) par jeton sur Great | [14][27] | LIVE 9.6.0 | VERIFIED_MULTI_SOURCE (mécanique) ; unité : CONFLICT-P27-03 |
| P27-09 | Bite the Bullet : pénalité 3/2/1 %, pas de notification | [15] | LIVE | STRONG_SECONDARY (page complète) |
| P27-10 | Clairvoyance : 64 m, 10/11/12 s (was 8/9/10, 9.2.0) | [16][24] | LIVE | VERIFIED_MULTI_SOURCE |
| P27-11 | Corrective Action : 1/2/3 jetons, max 5, aura 6 s, s'applique à tous les survivants (8.3.0) | [17] | LIVE | STRONG_SECONDARY (page complète) |
| P27-12 | Boon: Dark Theory : **+3 %** Haste (depuis 8.7.0), 2/3/4 s après sortie, rayon 24 m | [18] | LIVE | STRONG_SECONDARY (page complète) |
| P27-13 | Parental Guidance : 5/6/7 s après tout stun | [19] | LIVE | STRONG_SECONDARY (page complète) |
| P27-14 | Inner Focus : aura tueur 6/8/10 s (was 3/4/5), plus de limite 32 m, seulement si cause = tueur | [31] | LIVE | STRONG_SECONDARY (page complète) |
| P27-15 | Overzealous : +8/9/10 % (Dull) / +16/18/20 % (Hex), fin à la perte d'un état de santé | [32] | LIVE | STRONG_SECONDARY (page complète) |
| P27-16 | Residual Manifest : Blindness 20/25/30 s ; fouille unique → lampe basique | [33] | LIVE | STRONG_SECONDARY (page complète) |
| P27-17 | Reactive Healing : 32 m, 40/45/50 % du soin manquant | [34] | LIVE | STRONG_SECONDARY (page complète) |
| P27-18 | Fogwise : Great de réparation → aura du tueur 4/5/6 s | [35] | LIVE | STRONG_SECONDARY (page complète) |
| P27-19 | Blood Rush : 40/50/60 s après décrochage, annule l'Exhausted ; coupée par action bruyante et après alimentation des portes | [36] | LIVE (8.3.0) | STRONG_SECONDARY (page complète) |
| P27-20 | Teamwork: Power of Two : +5 % Haste, 8/12/16 m, linger 4 s | [37] | LIVE | STRONG_SECONDARY (page complète) |
| P27-21 | Scavenger : 5 jetons, −50 % réparation 40/35/30 s | [38] | LIVE | STRONG_SECONDARY (page complète) |
| P27-22 | Troubleshooter : aura du tueur 4/5/6 s après palette, linger 6/8/10 s | [39] | LIVE | STRONG_SECONDARY (page complète) |
| P27-23 | Scene Partner : aura 4/5/6 s (+2 s), CD 40 s | [40] | LIVE (8.4.0) | STRONG_SECONDARY (page complète) |
| P27-24 | Light-Footed : CD 14/12/10 s après saut précipité | [22][41] | LIVE (9.0.0) | VERIFIED_MULTI_SOURCE |
| P27-25 | Lucky Star : 30 s, CD 35/30/25 s | [24][42] | LIVE (9.2.0) | VERIFIED_MULTI_SOURCE |
| P27-26 | Invocation: Weaving Spiders : 60 s, −8/9/10 charges sur tous les gens, blessé + Broken permanent | [43] | LIVE | STRONG_SECONDARY (page complète) |
| P27-27 | Strength in Shadows : auto-soin à 70 % au sous-sol, aura 6/8/10 s | [44] | LIVE | STRONG_SECONDARY (page complète) |

## Conflits

#### CONFLICT-P27-01 : historique et version LIVE de Babysitter
- Source A : page wiki Babysitter (wiki.gg / fandom, via résumé) — version Haste +10 % / pas de traces 20/25/30 s / aura tueur 8 s [1][2].
- Source B : résumé de recherche sur 9.3.0 (steamdb PTB 9.3.0 + wiki Patch Notes 9.3.X + support 9.3.0) affirmant un rework 9.3.0 « aura du survivant et du tueur 20/25/30 s » [3][4][5] ; le change log de la page wiki complète contient aussi une ligne « Patch 9.3.0 | Rework » [1].
- Source C : audit phase 0 [21] : 9.3.0 LIVE a **reverté** les changements PTB de Babysitter / Borrowed Time / Furtive Chase / Off the Record ; 9.2.0 a « postponed » le Tunneling Reduction Update.
- Hypothèse : B décrit le PTB 9.3.0 ; la version Haste est la version LIVE.
- Résolution : **RÉSOLU** en faveur de A+C. Preuves : note officielle 9.3.0 (KB 529, « Changes from PTB … Reverted the following perks: Babysitter ») [25] ; note officielle 9.2.0 (KB 523, « Postponed these changes … Reverted the perk changes associated with this update. Notably: Babysitter ») [24] ; note 9.0.0 (Haste 10 %, was 15 %) [22] ; texte courant de la page complète = version Haste [1]. Le « rework 9.3.0 » du change log wiki est une erreur de la page.

#### CONFLICT-P27-02 : durée de Clairvoyance
- Source A : résumé wiki : 8/9/10 s.
- Source B : même résumé, « more recent information » : 10/11/12 s (was 8/9/10 s) [16].
- Hypothèse : buff ultérieur ; 10/11/12 s = valeur actuelle.
- Résolution : **RÉSOLU** — 10/11/12 s depuis 9.2.0 : note officielle 9.2.0 (« Increased aura reading duration to 10/11/12 seconds (was 8/9/10 seconds) ») [24] + page complète [16]. VERIFIED_MULTI_SOURCE.

#### CONFLICT-P27-03 : Fast Track — unité du gain permanent
- Source A : note officielle 9.6.0 (KB 544) : « the Generator gains 5% permanent progress (was 1% permanent progress on 9.6.0 PTB) » [27].
- Source B : page wiki complète : « Permanently reduces the Repair Charges requirement of that Generator by 5 charges per Token » [14] (≈ 5,6 % d'un gen de 90 charges).
- Hypothèse : le wiki décrit l'implémentation (charges) et la note arrondit en pourcentage, ou l'inverse.
- Résolution : UNRESOLVED (écart ≤ 0,6 point par jeton ; sans effet pratique notable).

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Repressed Alliance — réparation requise | 55/50/45 s | 40/35/30 s depuis 10.1.1 [10][30] | **FAUX** |
| Boon: Dark Theory — Haste | +3 % | +3 % depuis 8.7.0 (page complète) [18] | OK (verdict « FAUX probable » du lot 2 retiré) |
| Babysitter — « rework 9.2.0 » | rework 9.2.0 | rework 9.2.0 reporté/annulé, PTB 9.3.0 reverté ; version LIVE = 8.1.0 + 9.0.0 [22][24][25] | **FAUX** |
| Babysitter — effet | Haste + pas de traces, aura tueur ~8 s | idem, durée allié 20/25/30 s omise [1] | OK (IMPRÉCIS mineur) |
| Fast Track — valeur par jeton | ~+5 % | note officielle : 5 % ; wiki : 5 charges [14][27] | OK (CONFLICT-P27-03) |
| Blood Pact — condition | après soin mutuel avec l'Obsession | activation quand l'un est blessé + auras mutuelles ; Haste après soin [9] | **IMPRÉCIS** |
| Blood Pact — PTB 10.2.0 | buffée | transfert d'Obsession quand vous êtes accroché ; valeurs inchangées [12] | OK |
| For the People | soin instantané, blessé + Broken 80/70/60 s | + devient Obsession ; résultat selon état de l'allié [8] | IMPRÉCIS mineur |
| Inner Focus | quand un allié perd un état de santé | « à cause du tueur » [31] | IMPRÉCIS mineur |
| Troubleshooter | aura du tueur « quelques secondes » | 4/5/6 s [39] | IMPRÉCIS |
| Residual Manifest, Scavenger | fouille unique d'un coffre ouvert | garantit une lampe / boîte à outils basique [33][38] | IMPRÉCIS mineur |
| Scene Partner | cri + aura 4/5/6 s, 50 % de second cri | + CD 40 s, +2 s [40] | IMPRÉCIS mineur |
| Blood Rush (SUSPECT audit) | 40/50/60 s pour annuler Exhausted | idem ; + coupée par action bruyante et après alimentation des portes [36] | OK (IMPRÉCIS mineur) |
| Second Wind, Lucky Break, Appraisal, Bite the Bullet, Clairvoyance, Corrective Action, Parental Guidance | — | concordant (pages complètes ; notes 9.1.0 / 9.2.0) | OK |
| Overzealous, Reactive Healing, Fogwise, Power of Two, Light-Footed, Lucky Star, Weaving Spiders, Strength in Shadows | — | concordant (pages complètes ; notes 9.0.0 / 9.2.0) | OK |

## Questions ouvertes

1. ~~13 perks non vérifiées~~ — **résolu** (lot 12a) ; Blood Rush n'est plus SUSPECT (version 8.3.0 confirmée).
2. ~~Boon: Dark Theory : 2 % ou 3 % ?~~ — **résolu** : +3 % depuis 8.7.0 [18].
3. ~~Babysitter : patch exact / version LIVE~~ — **résolu** (CONFLICT-P27-01).
4. ~~Corrective Action : faut-il coopérer ?~~ — **résolu** : non, tous les survivants depuis 8.3.0 [17].
5. ~~Contenu PTB 10.2.0 pour les 27 perks~~ — **résolu** : seule Blood Pact est modifiée (note 559 [12]).
6. Babysitter : la Haste « +10 % de force » est-elle soumise aux DR avec la Haste basekit de décrochage ? — ouvert.
7. Fast Track : 5 % ou 5 charges par jeton ? (CONFLICT-P27-03).
8. Blood Rush : 1 ou 2 activations par partie (change log 8.3.0 vs texte LIVE) ?

## Sources

1. deadbydaylight.wiki.gg/wiki/Babysitter — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
2. Babysitter — DBD Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Babysitter — consulté le 27/09/2026 via WebSearch
3. Patch Notes 9.3.X — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Patch_Notes_9.3.X — consulté le 27/09/2026 via WebSearch
4. 9.3.0 PTB Patch Notes — SteamDB — https://steamdb.info/patchnotes/20652653/ — consulté le 27/09/2026 via WebSearch
5. 9.3.0 Mid-Chapter — support.deadbydaylight.com — https://support.deadbydaylight.com/hc/en-us/articles/43679054706708-9-3-0-Mid-Chapter — consulté le 27/09/2026 via WebSearch
6. deadbydaylight.wiki.gg/wiki/Second_Wind — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
7. deadbydaylight.wiki.gg/wiki/Lucky_Break — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
8. deadbydaylight.wiki.gg/wiki/For_the_People — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
9. deadbydaylight.wiki.gg/wiki/Blood_Pact — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
10. 10.1.1 Bugfix Patch — note officielle BHVR KB 557 — https://forums.bhvr.com/dead-by-daylight/kb/articles/557 — lue en local (official_557.txt), 27/09/2026
11. Repressed Alliance — NightLight — https://nightlight.gg/perks/Repressed_Alliance — consulté le 27/09/2026 via WebSearch
12. 10.2.0 PTB Patch Notes — note officielle BHVR KB 559 — https://forums.bhvr.com/dead-by-daylight/kb/articles/559 — texte complet lu en local (official_559.txt), 27/09/2026
13. deadbydaylight.wiki.gg/wiki/Appraisal — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
14. deadbydaylight.wiki.gg/wiki/Fast_Track — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
15. deadbydaylight.wiki.gg/wiki/Bite_the_Bullet — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
16. deadbydaylight.wiki.gg/wiki/Clairvoyance — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
17. deadbydaylight.wiki.gg/wiki/Corrective_Action — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
18. deadbydaylight.wiki.gg/wiki/Boon:_Dark_Theory — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
19. deadbydaylight.wiki.gg/wiki/Parental_Guidance — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
20. Inner Focus — DBD Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Inner_Focus — consulté le 27/09/2026 via WebSearch
21. Audit phase 0 (interne) — `kb/seed/audit_phase0.txt` (chronologie 9.2.0-10.1.2a, Fast Track 9.6.0, Repressed Alliance 10.1.0/10.1.1, Blood Rush SUSPECT)
22. 9.0.0 | Five Nights at Freddy's — note officielle BHVR KB 510 — https://forums.bhvr.com/dead-by-daylight/kb/articles/510 — lue en local (official_510.txt), 27/09/2026
23. 9.1.0 | The Walking Dead — note officielle BHVR KB 516 — https://forums.bhvr.com/dead-by-daylight/kb/articles/516 — lue en local (official_516.txt), 27/09/2026
24. 9.2.0 | Sinister Grace — note officielle BHVR KB 523 — https://forums.bhvr.com/dead-by-daylight/kb/articles/523 — lue en local (official_523.txt), 27/09/2026
25. 9.3.0 | Mid-Chapter — note officielle BHVR KB 529 — https://forums.bhvr.com/dead-by-daylight/kb/articles/529 — lue en local (official_529.txt), 27/09/2026
26. 9.5.0 | All-Kill: Comeback — note officielle BHVR KB 538 — https://forums.bhvr.com/dead-by-daylight/kb/articles/538 — lue en local (official_538.txt), 27/09/2026
27. 9.6.0 | Patch Notes — note officielle BHVR KB 544 — https://forums.bhvr.com/dead-by-daylight/kb/articles/544 — lue en local (official_544.txt), 27/09/2026
28. 10.1.0 | Chorus of Sin — note officielle BHVR KB 556 — https://forums.bhvr.com/dead-by-daylight/kb/articles/556 — lue en local (official_556.txt), 27/09/2026
29. 10.0.0 | Jason Patch Notes — note officielle BHVR KB 550 — https://forums.bhvr.com/dead-by-daylight/kb/articles/550 — lue en local (official_550.txt), 27/09/2026
30. deadbydaylight.wiki.gg/wiki/Repressed_Alliance — page complète via API, consultée le 27/09/2026
31. deadbydaylight.wiki.gg/wiki/Inner_Focus — page complète via API, consultée le 27/09/2026
32. deadbydaylight.wiki.gg/wiki/Overzealous — page complète via API, consultée le 27/09/2026
33. deadbydaylight.wiki.gg/wiki/Residual_Manifest — page complète via API, consultée le 27/09/2026
34. deadbydaylight.wiki.gg/wiki/Reactive_Healing — page complète via API, consultée le 27/09/2026
35. deadbydaylight.wiki.gg/wiki/Fogwise — page complète via API, consultée le 27/09/2026
36. deadbydaylight.wiki.gg/wiki/Blood_Rush — page complète via API, consultée le 27/09/2026
37. deadbydaylight.wiki.gg/wiki/Teamwork:_Power_of_Two — page complète via API, consultée le 27/09/2026
38. deadbydaylight.wiki.gg/wiki/Scavenger — page complète via API, consultée le 27/09/2026
39. deadbydaylight.wiki.gg/wiki/Troubleshooter — page complète via API, consultée le 27/09/2026
40. deadbydaylight.wiki.gg/wiki/Scene_Partner — page complète via API, consultée le 27/09/2026
41. deadbydaylight.wiki.gg/wiki/Light-Footed — page complète via API, consultée le 27/09/2026
42. deadbydaylight.wiki.gg/wiki/Lucky_Star — page complète via API, consultée le 27/09/2026
43. deadbydaylight.wiki.gg/wiki/Invocation:_Weaving_Spiders — page complète via API, consultée le 27/09/2026
44. deadbydaylight.wiki.gg/wiki/Strength_in_Shadows — page complète via API, consultée le 27/09/2026
45. Digest local des pages wiki complètes — kb/sources/wiki_perks_digest.md (brut : kb/sources/wiki_perks.json), extraction du 27/09/2026
