**Couverture : 24/24 perks re-vérifiées sur page wiki complète (27/09/2026) ; dont 14 confirmées par note officielle** (Quick Gambit, Potential Energy, Leader, Poised, Pharmacy, Detective's Hunch, Breakdown, Mettle of Man, No One Left Behind, Dark Sense, Plunderer's Instinct, Bound by Obsession, Wake Up!, Solidarity).

# Lot 2 — Perks survivant, page 26 du guide seed (Quick Gambit → Mettle of Man)

Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 = non LIVE. Recherche initiale du 27/09/2026 par WebSearch (résumés) ; **re-vérification lot 12a (27/09/2026)** sur les pages wiki complètes (API MediaWiki, `kb/sources/wiki_perks_digest.md` [45]) et les notes officielles BHVR (`kb/sources/patches/official_*.txt`).
Périmètre : 24 perks (kb/seed/ch3_survperks.txt l. 422-534).


> **Historique** : lors du lot 2, le quota WebSearch avait été épuisé après 21 recherches (10 fiches restées UNCERTAIN). Le lot 12a a levé cette limite : toutes les fiches ci-dessous sont re-vérifiées sur page complète, PTB inclus.
> Les notes « Valeur » sont toutes **HEURISTIC** (jugement de l'agent, pas des données).

---

### Quick Gambit — Vittorio Toscano
- **Statut** : LIVE 10.1.2a (perk unique, ajoutée 6.4.0).
- **Effet LIVE** : en poursuite, **vous** voyez l'aura des autres survivants ; les autres survivants réparent 3/4/5 % plus vite. Recharge 40 s à la perte d'un état de santé — STRONG_SECONDARY (page complète [1]) ; CD 40 s VERIFIED_MULTI_SOURCE (note 9.2.0 [25])
- **Valeurs / CD / conditions / limites** : +3/4/5 % réparation (alliés) · CD 40 s (était 60 s avant 9.2.0 — VERIFIED_MULTI_SOURCE [2][3]). Le bonus s'applique à tous les autres survivants, sans limite de portée (« Increases the Repair speed of other Survivors » ; limite de portée supprimée en 8.3.0) [1].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [15] — NON LIVE.
- **Interactions, DR (9.6.0), anti-synergies** : bonus de vitesse de réparation d'origine perk → soumis aux DR avec d'autres bonus de réparation identiques (ex. Prove Thyself, Hyperfocus) — HYPOTHESIS (principe officiel 9.6.0 : modificateurs identiques issus de perks réduits à 100/50/25/12,5/5 % [32] ; liste des modificateurs « identiques » non publiée).
- **Synergies** : builds chase longue (Windows of Opportunity, Resilience) ; SoloQ (l'aura montre où sont les gens pendant la chase).
- **Difficulté** : 2 (il faut tenir la chase sans perdre d'état de santé).
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 1 · chase 1 · macro 2 · info 2 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur** : longues chases sans coup (le bonus tourne en continu) ; SoloQ pour savoir s'il faut éloigner le tueur d'un gen occupé.
- **Quand elle n'en produit pas** : si vous êtes touché tôt (40 s de CD) ; si l'équipe ne répare pas pendant votre chase.
- **Écart avec le seed** : **FAUX** (sens de l'aura inversé : le seed dit « les autres survivants voient votre aura » ; page complète : « The Auras of other Survivors are revealed to you » [1]). Valeurs et CD OK (note 9.2.0 [25]).
- **Sources** : [1][2][3][15][25][32]

### Potential Energy — Vittorio Toscano
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : en réparant, activation → convertit les charges de réparation en jetons (1 jeton = 1 %) jusqu'à 10/15/20 ; nouvel appui sur le même gen ou un autre → +1 % par jeton instantanément — STRONG_SECONDARY (page complète [4]) ; 1 jeton = 1 % et absence de temps minimal de réparation : VERIFIED_MULTI_SOURCE (note 9.1.0 [26])
- **Valeurs / CD / conditions / limites** : max 10/15/20 jetons · skill check raté : −20 % des jetons si pas au max, **−10 % de régression du gen** si au max · se désactive après usage ; perte de **tous** les jetons à la perte d'un état de santé « by any means » (pas seulement un coup) [4].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [15] — NON LIVE.
- **Interactions, DR, anti-synergies** : les jetons stockés ne profitent pas des bonus de vitesse de réparation comme un gen normal ? — UNCERTAIN (non vérifié). Anti-synergie : skill checks ratés au max (régression).
- **Synergies** : Deja Vu / Blast Mine (plantage rapide sur le gen menacé), Hyperfocus (gestion des skill checks) — HEURISTIC.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 2 · info 0 · anti-tunnel 0 · soin 0 · gen 2 · endgame 1
- **Produit de la valeur** : pour « finir » un gen à 80 %+ d'un coup et éviter la régression ou un kick prévu ; pour contourner un gen protégé par un hex de régression.
- **N'en produit pas** : si vous êtes souvent touché (perte totale) ; si vous ratez des skill checks au plafond.
- **Écart avec le seed** : **IMPRÉCIS** (perte des jetons à la perte d'un état de santé par n'importe quel moyen, pas « un coup » ; pénalités de skill check raté omises). Buff 9.1.0 cité p32 : **OK** (note 9.1.0 : plus de temps minimal de réparation — était 12/10/8 s — et 1 jeton = 1 % au lieu de 1,5 % ; wiki : plafond fixe 20 → 10/15/20) [4][26].
- **Sources** : [4][15][26]

### Autodidact — Adam Francis
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : réussir un skill check en soignant un autre survivant donne +1 jeton (max 3/4/5) ; les Great de soin sont supprimés ; progression par skill check : 0 jeton −15 %, 1 → 0 %, 2 → +15 %, 3 → +30 %, 4 → +45 %, 5 → +60 % — STRONG_SECONDARY (page complète [5] ; −25 % → −15 % à 0 jeton en 8.1.0)
- **Valeurs / CD / conditions / limites** : **inactif avec un Med-Kit** [5] ; ne s'applique qu'aux soins d'autrui.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [15] — NON LIVE.
- **Interactions, DR, anti-synergies** : anti-synergie avec les Med-Kits et avec les perks de Great (ex. Botany non concerné, mais tout bonus de Great est perdu) ; augmente les skill checks de soin via les perks de fréquence (Hyperfocus ne s'applique pas au soin — non vérifié).
- **Synergies** : Empathy/Bond (trouver des blessés), Boon: Circle of Healing (vitesse de soin sur autrui) — HEURISTIC.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 2 · gen 0 · endgame 0
- **Produit de la valeur** : parties longues avec beaucoup de soins d'autrui sans kit.
- **N'en produit pas** : premières minutes (malus) ; avec Med-Kit ; contre tueurs anti-soin (Sloppy, Mangled).
- **Écart avec le seed** : **OK** (omet seulement l'inactivité avec Med-Kit et « soin d'un autre survivant » ; preuve : page complète [5]).
- **Sources** : [5][15]

### Chemical Trap — Ellen Ripley
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : après 20 % cumulés de réparation, appui près d'une palette tombée → piège 40/50/60 s ; si le tueur la casse : Hindered 50 % pendant 4 s ; auras des palettes piégées révélées à tous les survivants (jaune) — STRONG_SECONDARY (page complète [6] ; valeurs actuelles depuis 8.2.0 : seuil 70/60/50 % → 20 % fixe, durée 100/110/120 s → 40/50/60 s ; la note 9.5.0 ne change que la description [46])
- **Valeurs / CD / conditions / limites** : se désactive après déclenchement ou fin du timer.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [15] — NON LIVE.
- **Interactions, DR, anti-synergies** : Hindered d'origine perk → DR si un autre Hindered identique est appliqué — HYPOTHESIS. Inutile contre un tueur qui ne casse pas la palette (tueurs à pouvoir de destruction, ou qui la laisse).
- **Synergies** : Blast Mine / Wiretap (lot « trapper survivant »), Resilience — HEURISTIC.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : sur une palette de « dead zone » que le tueur doit casser pour poursuivre (distance gagnée ~4 s).
- **N'en produit pas** : tueurs qui cassent via pouvoir ou ignorent la palette.
- **Écart avec le seed** : **OK** (page complète [6]).
- **Sources** : [6][15][46]

### Wiretap — Ada Wong
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : après 40 % cumulés de réparation, appui près d'un gen partiellement réparé → piège 100/110/120 s ; quand le tueur entre dans 14 m du gen piégé, son aura est révélée à tous les survivants ; auras des gens piégés révélées en jaune à tous les survivants — STRONG_SECONDARY (page complète [33])
- **Valeurs / CD / conditions / limites** : se désactive si le gen est endommagé (kick) ou fin du timer. Change log 8.x-10.x du wiki : seul changement = seuil d'activation 50 % → 40 % (8.2.0) [33] ; l'historique « buff depuis 60/70/80 s » du résumé [7] n'y figure pas (antérieur à 8.x ou erroné — non vérifié, sans effet sur la valeur LIVE).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [15] — NON LIVE.
- **Interactions, DR, anti-synergies** : révélation d'aura → bloquée si le tueur est Undetectable ? — UNCERTAIN.
- **Synergies** : Blast Mine, Deja Vu, Bond — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 2 · info 2 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Produit de la valeur** : sur le gen le plus avancé d'un 3-gen que le tueur patrouille.
- **N'en produit pas** : tueurs qui kickent systématiquement (le micro saute au premier kick).
- **Écart avec le seed** : **OK** (« environ 14 m » = 14 m ; « frappe ce gen » = gen endommagé) [33].
- **Sources** : [7][15][33][46]

### Leader — Dwight Fairfield
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : alliés dans 10 m : vitesse de Cleansing, Gate-Opening, Healing, Sabotaging, **Unhooking**, **Unlocking** +20/25/30 % ; persiste 15 s après sortie de zone ; un survivant ne bénéficie que d'une instance de Leader — STRONG_SECONDARY (page complète [8]) ; valeurs et 10 m : VERIFIED_MULTI_SOURCE (note officielle 9.2.0 [25], [2][3]).
- **Valeurs / CD / conditions / limites** : 9.2.0 : 15/20/25 % → 20/25/30 %, 8 m → 10 m, description simplifiée [2][3].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [15] — NON LIVE.
- **Interactions, DR, anti-synergies** : bonus de vitesse d'action d'origine perk → soumis aux DR avec d'autres bonus identiques (ex. Botany sur le soin) — HYPOTHESIS.
- **Synergies** : Botany Knowledge, We'll Make It, Boon: Circle of Healing, Wake Up! (portes).
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 2
- **Produit de la valeur** : unhook + soin rapide groupés ; ouverture de portes en fin de partie ; sabotage d'équipe.
- **N'en produit pas** : joueurs dispersés (10 m) ; aucun bonus sur la réparation.
- **Écart avec le seed** : **IMPRÉCIS** (omet Unhooking et Unlocking, et la persistance de 15 s ; valeurs et 10 m OK — page complète [8], note 9.2.0 [25]).
- **Sources** : [2][3][8][15][25]

### Empathy — Claudette Morel
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : aura des survivants **blessés ou mourants (dying)** dans 64/96/128 m — STRONG_SECONDARY (page complète [9] ; aucun changement 8.x-10.x)
- **Valeurs / CD / conditions / limites** : 128 m ≈ toute la carte sur la plupart des maps (HEURISTIC).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [15] — NON LIVE.
- **Interactions, DR** : aucune DR attendue (lecture d'aura).
- **Synergies** : Autodidact, Botany, We'll Make It, Bond, Kindred.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 2 · info 2 · anti-tunnel 1 · soin 2 · gen 0 · endgame 1
- **Produit de la valeur** : SoloQ : voir qui est au sol / blessé et en chase (l'aura bouge), savoir où est le tueur par déduction.
- **N'en produit pas** : SWF avec vocal ; builds pure gen.
- **Écart avec le seed** : **IMPRÉCIS** (p26 : « blessés » seulement ; page complète : « injured or dying Survivors » [9] — ch4_7 l. 351 est correct).
- **Sources** : [9][15]

### Lightweight — Générale
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : durée de vie de vos griffures −3/4/5 s ; chance d'apparition des patches de griffures −60 % (espacement irrégulier) — STRONG_SECONDARY (page complète [10] ; aucun changement 8.x-10.x)
- **Valeurs / CD / conditions / limites** : un signalement communautaire affirme que l'effet d'espacement ne fonctionne plus depuis 8.6.0 — COMMUNITY_OBSERVATION [11], statut actuel du bug UNCERTAIN.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [15] — NON LIVE.
- **Interactions, DR** : n/a.
- **Synergies** : Quick & Quiet, Sprint Burst, Iron Will, Distortion (stealth / perte de LOS).
- **Difficulté** : 2 (demande de casser la ligne de vue).
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : après une perte de LOS contre tueurs qui traquent aux griffures.
- **N'en produit pas** : contre auras / pouvoirs de pistage ; en chase à vue.
- **Écart avec le seed** : **OK** (réserve : bug possible depuis 8.6.0).
- **Sources** : [10][11][15]

### Spine Chill — Générale
- **Statut** : LIVE 10.1.2a (rework prévu au PTB 10.2.0).
- **Effet LIVE** : quand le tueur est à ≤ 36 m (portée fixe) et vous regarde avec ligne de vue dégagée : icône allumée ; vitesse de Blessing, Cleansing, Gate-Opening, Healing, Repairing, Sabotaging, Unhooking, Unlocking +2/4/6 % ; persiste 0,5 s — STRONG_SECONDARY (page complète [12], onglet d'historique 7.1.0 = version LIVE ; la page courante affiche déjà le PTB)
- **Valeurs / CD / conditions / limites** : 36 m fixe (était 12/24/36) [12].
- **PTB 10.2.0** (NON LIVE) : **rework** : quand le tueur vous regarde dans 40 m (**ligne de vue dégagée plus exigée**) → notification, impossible de crier 12 s, saut +10 % pendant 12 s, puis CD 40/35/30 s ; le bonus d'action speed 2/4/6 % **disparaît** (« replaced activation effect ») ; dev : « Return of vault speed Spine Chill, now with a limited duration » — VERIFIED_MULTI_SOURCE (wiki [12] + note 559 [15]) [13][16][24].
- **Interactions, DR** : LIVE : bonus d'action speed soumis aux DR — HYPOTHESIS. PTB : bonus de saut explicitement mis en avant « grâce aux DR » [16].
- **Synergies** : Alert, Premonition (info), Lithe/Windows (PTB).
- **Difficulté** : 1
- **Valeur (HEURISTIC, LIVE)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Produit de la valeur** : SoloQ contre tueurs furtifs (Ghost Face, Myers, Pig) — alerte même sans rayon de terreur.
- **N'en produit pas** : tueurs Undetectable n'empêchent pas Spine Chill (non vérifié) mais les faux positifs en chase d'un allié la rendent bruyante.
- **Écart avec le seed** : **OK** (LIVE, page complète [12]) ; PTB « rework, 40 m » OK mais incomplet (bonus de saut 10 %/12 s, cris bloqués, CD, plus de LOS requise, perte du bonus d'action speed) [15].
- **Sources** : [12][13][15][16][24]

### No One Left Behind — Générale
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : quand les portes sont alimentées : Healing (des **autres** survivants, cf. correction de texte 10.1.1 [31]) et Unhooking +50/75/100 % ; les survivants que vous décrochez reçoivent une Haste de décrochage renforcée de +10 % et +5 s, soit **20 % pendant 15 s** ; aura des autres survivants — STRONG_SECONDARY (page complète [17], onglet d'historique 8.4.0 = LIVE) ; 50/75/100 % VERIFIED_MULTI_SOURCE (note 559 « was 50/75/100% » [15]). **Correction** : le bonus de BP Altruism a été **supprimé en 8.4.0** [17].
- **Valeurs / CD / conditions / limites** : historique : 30/40/50 % → 50/75/100 % et Haste +7 % → +10 % (8.4.0) ; depuis 8.7.0, la perk modifie la Haste de décrochage de base au lieu d'appliquer la sienne [17].
- **PTB 10.2.0** (NON LIVE) : **buff** Healing/Unhooking 80/90/100 % (au lieu de 50/75/100 %) ; reste inchangé — VERIFIED_MULTI_SOURCE (wiki [17] + note 559 [15]) [14][18].
- **Interactions, DR** : **résolu** — dans la note 10.1.0, c'est l'**Elusive** de décrochage (nouveau) qui « does not apply once all generators are powered » ; la Haste de base (10 % pendant 10 s, était 15 s) s'applique toujours [30]. NOLB la porte à 20 % / 15 s [17] — VERIFIED_MULTI_SOURCE.
- **Synergies** : Leader, Botany, We'll Make It, Borrowed Time, Adrenaline.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 1 · anti-tunnel 0 · soin 1 · gen 0 · endgame 2
- **Produit de la valeur** : sauvetage en fin de partie (unhook au timer, soin instantané ou presque au rang III).
- **N'en produit pas** : tout le reste de la partie (inactive avant alimentation des portes).
- **Écart avec le seed** : **OK** (50/75/100 %, +10 % Haste ; « tous les générateurs finis » = portes alimentées) ; omet +5 s et l'aura des survivants. PTB 80/90/100 % OK [15][17].
- **Sources** : [14][15][17][18][30][31]

### Dark Sense — Générale
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : à chaque gen terminé, s'active : la prochaine fois que le tueur arrive à 24 m, son aura vous est révélée 5/7/10 s ; se désactive après usage — STRONG_SECONDARY (page complète [19], onglet d'historique 6.1.0 = LIVE) ; 5/7/10 s VERIFIED_MULTI_SOURCE (note 559 « was 5/7/10s » [15])
- **Valeurs / CD / conditions / limites** : 24 m ; déclencheur = n'importe quel gen terminé.
- **PTB 10.2.0** (NON LIVE) : **buff** 8/9/10 s + auras des palettes et fenêtres dans 24 m + auras des autres survivants — VERIFIED_MULTI_SOURCE (wiki [19] + note 559 [15]) [13].
- **Interactions, DR** : n/a.
- **Synergies** : Alert, Kindred, Spine Chill (info) — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 1
- **Produit de la valeur** : milieu/fin de partie, pour savoir si le tueur vient vers votre gen.
- **N'en produit pas** : début de partie (aucun gen fini).
- **Écart avec le seed** : **OK** (LIVE et PTB) [15][19].
- **Sources** : [13][15][19]

### Plunderer's Instinct — Générale
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : auras des coffres fermés, des objets dans les coffres ouverts et des objets au sol dans 32/48/64 m ; +50 % (fixe) de chance d'objet de rareté supérieure dans les coffres — STRONG_SECONDARY (page complète [20], onglet d'historique 8.4.0 = LIVE) ; portée 32/48/64 m VERIFIED_MULTI_SOURCE (note 559 « was only within 32/48/64m » [15])
- **Valeurs / CD / conditions / limites** : portées doublées depuis 16/24/32 m ; bonus de rareté passé de 14/24/46 % à 50 % fixe [20].
- **PTB 10.2.0** (NON LIVE) : **buff** : auras des coffres et objets **sans limite de portée** ; déverrouillage des coffres +150/175/200 % (nouveau) ; +50 % de rareté inchangé — VERIFIED_MULTI_SOURCE (wiki [20] + note 559 [15]).
- **Interactions, DR** : rareté des coffres : cumul avec Appraisal / offrandes Chest — UNCERTAIN.
- **Synergies** : Appraisal, Pharmacy, Ace in the Hole, Streetwise.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : builds « items » (clé, trousse) et BP.
- **N'en produit pas** : parties compétitives (temps hors gen).
- **Écart avec le seed** : **IMPRÉCIS** (valeur du bonus de rareté absente : +50 % fixe ; objets dans coffres ouverts non mentionnés [20]). PTB « buff » (p32) : OK [15].
- **Sources** : [15][20]

### Bound by Obsession (= Object of Obsession) — Générale (ex-Laurie Strode, général depuis 9.4.0)
- **Statut** : LIVE 10.1.2a, renommée (ancien nom Object of Obsession, conservé pour les possesseurs — audit [23]).
- **Effet LIVE** : quand le tueur lit votre aura, vous voyez la sienne pour la même durée ; si vous êtes l'Obsession, votre aura lui est révélée automatiquement toutes les 30 s ; vitesse de Cleansing, Healing, Repairing +2/4/6 % ; +100 % de chance d'être l'Obsession initiale — STRONG_SECONDARY (page complète [21], onglet d'historique 4.7.0 = LIVE ; la page courante affiche déjà le PTB) ; 2/4/6 % et 3 s VERIFIED_MULTI_SOURCE (note 559 « was 2/4/6% », « was 3s » [15]) — CONFLICT-B2P26-02 RÉSOLU.
- **Valeurs / CD / conditions / limites** : révélation 3 s toutes les 30 s (LIVE) [15][21].
- **PTB 10.2.0** (NON LIVE) : **buff** 8/9/10 % sur purification **et bénédiction** (« was only cleanse »), soin, réparation ; aura 4 s (au lieu de 3 s) — VERIFIED_MULTI_SOURCE (wiki [21] + note 559 [15]) [14][22].
- **Interactions, DR** : action speed → DR avec autres bonus identiques — HYPOTHESIS. Contre-interaction : Distortion / Undetectable (non vérifié).
- **Synergies** : Decisive/Will to Live, Dead Hard, Kindred — HEURISTIC.
- **Difficulté** : 2 (l'aura vous expose).
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 1 · info 2 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Produit de la valeur** : contre tueurs à lecture d'aura (Nurse's Calling, BBQ, Lethal) : vous voyez le tueur en retour.
- **N'en produit pas** : si vous n'êtes pas l'Obsession et que le tueur n'a pas d'aura ; en stealth.
- **Écart avec le seed** : **IMPRÉCIS** (le retour d'aura se déclenche à **toute** lecture d'aura par le tueur, pas seulement l'effet Obsession ; +100 % de chance d'être Obsession omis). Valeurs LIVE 2/4/6 % / 3 s et PTB 8/9/10 % : OK.
- **Sources** : [14][15][21][22][23][29]

### Poised — Jane Romero
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : aura du tueur 8 s la première fois que vous commencez à réparer un gen ; pas de griffures pendant 20/25/30 s après qu'un gen (n'importe lequel) est terminé — VERIFIED_MULTI_SOURCE (page complète [34] + note officielle 9.2.0 [25], [2][3]).
- **Valeurs / CD / conditions / limites** : 9.2.0 : aura 6 → 8 s ; griffures 10/12/14 → 20/25/30 s [25]. Aucun changement postérieur à 9.2.0 dans le change log [34].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [15] — NON LIVE.
- **Interactions, DR** : n/a.
- **Synergies** : Lightweight, Quick & Quiet, Distortion (stealth).
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Produit de la valeur** : info à chaque nouveau gen ; fuite discrète après un gen « pop ».
- **N'en produit pas** : si vous restez sur un seul gen ; contre tueurs à aura.
- **Écart avec le seed** : **OK** [25][34].
- **Sources** : [2][3][15][25][34]

---

## Perks re-vérifiées au lot 12a (restées non vérifiées au lot 2, quota WebSearch)

Ces 10 fiches ont été re-vérifiées le 27/09/2026 sur la page wiki complète (API) et les notes officielles ; les anciennes mentions « seed, NON RE-VÉRIFIÉ » et « connaissance du modèle » ont été remplacées par les valeurs vérifiées. Les parties analytiques restent **HEURISTIC**.

### Down to the Last (= Sole Survivor) — Générale (ex-Laurie Strode)
- **Statut** : LIVE 10.1.2a, renommée en 9.4.0 (Sole Survivor → Down to the Last, ancien nom conservé pour les possesseurs) — VERIFIED (audit [23]).
- **Effet LIVE** : votre aura ne peut pas être lue par le tueur « within a maximum range of 20/22/24 metres for each killed or sacrificed Survivor » ; quand vous êtes le **dernier survivant** : réparation des gens **+75 %**, ouverture des portes et de la trappe **+50 %** — STRONG_SECONDARY (page complète [35], onglet d'historique 6.1.0 = LIVE ; aucun changement de valeur en 9.x-10.1, seul le renommage 9.4.0 [29]).
- **Valeurs / CD / conditions / limites** : 20/22/24 m par survivant tué ou sacrifié (lecture littérale : aucun effet tant que personne n'est mort ; mode exact de cumul de la portée : UNCERTAIN) ; bonus de dernier survivant +75 % / +50 % [35].
- **PTB 10.2.0** (NON LIVE) : **rework** : 1 jeton à chaque crochet subi ou gen terminé (max 6) ; par jeton, les autres survivants ouvrent les portes +10 % ; dernier survivant avec ≥ 3 jetons : peut ouvrir la trappe sans clé et, par jeton, aura masquée au tueur 6/8/10 s ; le wiki ajoute +100 % de chance d'être l'Obsession initiale — VERIFIED_MULTI_SOURCE (wiki [35] + note 559 [15] ; la note dit « complete a generator », le wiki « repair a Generator »).
- **Interactions, DR, anti-synergies** : aucune DR attendue (masquage d'aura) — HEURISTIC. Anti-synergie : Bound by Obsession / Object-like perks qui révèlent votre aura (HEURISTIC).
- **Synergies** : Left Behind, Distortion, Off the Record (stealth de fin de partie) — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 0 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 2
- **Quand elle produit de la valeur (HEURISTIC)** : quand des alliés sont déjà morts, contre des tueurs à lecture d'aura (BBQ, Nurse's Calling), pour chercher la trappe ; en dernier survivant (gens +75 %, portes/trappe +50 % : partie jouable en solo).
- **Quand elle n'en produit pas (HEURISTIC)** : partie à 4 vivants (0 jeton) ; tueur sans lecture d'aura.
- **Écart avec le seed** : **IMPRÉCIS** (omet les bonus de dernier survivant +75 % réparation / +50 % portes et trappe ; « un jeton par survivant mort » ≈ « par survivant tué ») [35]. Renommage 9.4.0 : OK [29]. PTB « jetons, bonus pour les portes et la trappe » : OK mais incomplet [15].
- **Sources** : [15][16][23][29][35]

### Wake Up! — Quentin Smith
- **Statut** : LIVE 10.1.2a (confirmée, version 8.5.0).
- **Effet LIVE** : quand tous les générateurs sont finis : aura des interrupteurs de portes (dans 128 m), votre aura est révélée aux autres survivants (dans 128 m) pendant que vous ouvrez, ouverture **+8/10/12,5 % par survivant vivant** (vous compris), soit max 32/40/50 % à 4 vivants — VERIFIED_MULTI_SOURCE. **LIVE reconstruite** : la description « current » du wiki affiche déjà la version PTB (8/9/10 % + … jusqu'à 68/69/70 %) ; la valeur LIVE vient du change log 8.5.0 du wiki [36] et de la note 559 (« was 8/10/12.5% per any Survivor alive ») [15]. Portées 128 m : texte de la page courante — STRONG_SECONDARY.
- **Valeurs / CD / conditions / limites** : 8.5.0 : bonus fixe 15/20/25 % → 8/10/12,5 % par survivant vivant (max 32/40/50 %) [36].
- **PTB 10.2.0** (NON LIVE) : 8/9/10 % pour vous + **20 % par autre survivant vivant** (max 68/69/70 %) ; dev : seul, 2,5 % plus lent qu'avant ; à 4 vivants, +20 % — VERIFIED_MULTI_SOURCE (wiki [36] + note 559 [15]).
- **Interactions, DR, anti-synergies** : bonus de vitesse d'ouverture → DR probable avec Leader — HEURISTIC/HYPOTHESIS.
- **Synergies** : Leader, Hope, Adrenaline — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 0 · chase 0 · macro 0 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 2
- **Quand elle produit de la valeur (HEURISTIC)** : fin de partie en SoloQ (trouver la porte, signaler aux alliés où aller).
- **Quand elle n'en produit pas (HEURISTIC)** : le reste de la partie ; SWF qui communique déjà les portes.
- **Écart avec le seed** : **OK** (LIVE 8/10/12,5 % par survivant vivant [15][36]) ; PTB « buff » (p32) : OK, mais léger nerf quand on est seul [15].
- **Sources** : [15][36]

### Pharmacy — Quentin Smith
- **Statut** : LIVE 10.1.2a (version 9.2.0).
- **Effet LIVE** : en déverrouillant un coffre : vitesse +75/100/125 %, portée audible des bruits de déverrouillage −12 m, **Emergency Med-Kit** garanti à la fin de l'interaction — VERIFIED_MULTI_SOURCE (page complète [37], onglet d'historique 9.2.0 = LIVE + note officielle 9.2.0 [25]).
- **Valeurs / CD / conditions / limites** : 9.2.0 : 70/85/100 % → 75/100/125 % ; bruit −16 m → −12 m [25][37]. Aucune limite « une fois par partie » dans le texte (la note 559 écrit « Whenever you unlock a Chest, it will contain a rare Med-Kit ») : l'ancienne hypothèse « une seule fois par partie » est **infirmée** ; « médikit rare » = formulation officielle [15].
- **PTB 10.2.0** (NON LIVE) : bonus de vitesse étendu à la fouille (rummage) ; possibilité de fouiller chaque coffre 1 fois (pour trouver un autre type d'objet) — VERIFIED_MULTI_SOURCE (wiki [37] + note 559 [15]).
- **Interactions, DR, anti-synergies** : n/a (HEURISTIC).
- **Synergies** : Plunderer's Instinct, Appraisal, Botany Knowledge — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 1 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : si vous arrivez sans objet et qu'un coffre est proche en début de partie.
- **Quand elle n'en produit pas (HEURISTIC)** : si vous arrivez déjà avec un Med-Kit ; parties rapides.
- **Écart avec le seed** : **OK** (75/100/125 %, −12 m, médikit rare = Emergency Med-Kit) [25][37] ; PTB « buff » : OK [15].
- **Sources** : [15][25][37]

### Detective's Hunch — David Tapp
- **Statut** : LIVE 10.1.2a (version 9.1.0).
- **Effet LIVE** : à chaque générateur terminé, auras des coffres, générateurs et totems dans 32/48/64 m pendant 20 s — VERIFIED_MULTI_SOURCE (page complète [38] + note officielle 9.1.0 [26]).
- **Valeurs / CD / conditions / limites** : 9.1.0 : durée 10 → 20 s ; les Maps ne suivent plus les objets révélés [26][38]. (L'ancienne hypothèse « 10 s » correspondait à la version antérieure à 9.1.0.)
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [15] — NON LIVE.
- **Interactions, DR, anti-synergies** : n/a — HEURISTIC.
- **Synergies** : Small Game, Inner Strength (anti-hex), Plunderer's — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0 (anti-hex 1)
- **Quand elle produit de la valeur (HEURISTIC)** : repérer les totems restants après un gen contre builds à hex ; trouver le prochain gen.
- **Quand elle n'en produit pas (HEURISTIC)** : début de partie (avant le premier gen) ; SWF avec calls.
- **Écart avec le seed** : **OK** (20 s, 32/48/64 m) [26][38].
- **Sources** : [15][26][38]

### Aftercare — Jeff Johansen
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : vous voyez l'aura des 1/2/3 survivants les plus récents que vous avez décrochés ou soignés (soin **terminé**), ou qui l'ont fait pour vous ; eux voient aussi la vôtre ; l'effet est réinitialisé quand le tueur vous accroche — STRONG_SECONDARY (page complète [39] ; aucun changement 8.x-10.x).
- **Valeurs / CD / conditions / limites** : 1/2/3 survivants ; pas de limite de portée indiquée [39].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [15] — NON LIVE.
- **Interactions, DR, anti-synergies** : n/a — HEURISTIC.
- **Synergies** : Bond, Kindred, Empathy (info d'équipe) — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SoloQ altruiste, après plusieurs interactions (décrochages / soins).
- **Quand elle n'en produit pas (HEURISTIC)** : si vous êtes accroché tôt (effet perdu) ; SWF en vocal.
- **Écart avec le seed** : **OK** (« soin échangé » = soin terminé ; reset au crochet) [39].
- **Sources** : [15][39]

### Breakdown — Jeff Johansen
- **Statut** : LIVE 10.1.2a ; **revertée à son ancienne version en 9.3.2 (9 déc. 2025)** — VERIFIED (audit [23]).
- **Effet LIVE** : après avoir été décroché par n'importe quel moyen (sauvetage ou auto-décrochage), le crochet se casse instantanément, sa réparation automatique passe à 180 s, et vous voyez l'aura du tueur 4/5/6 s — VERIFIED_MULTI_SOURCE (page complète [40] + note officielle 9.3.2 « Reverted to this version » [27]).
- **Valeurs / CD / conditions / limites** : 180 s, 4/5/6 s [27][40]. Historique : rework 9.3.0 (soin reçu +100 %, crochet 90 s, sans aura) jamais jouable — perk désactivée dès 9.3.0 [28] — puis revert 9.3.2 [27].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [15] — NON LIVE.
- **Interactions, DR, anti-synergies** : anti-synergie (pour le tueur) avec Scourge Hooks sur le crochet cassé — HEURISTIC.
- **Synergies** : Saboteur, Boil Over, Breakout (réduire les crochets disponibles) — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : crochets du sous-sol / zones sans crochets proches, contre Scourge Hooks.
- **Quand elle n'en produit pas (HEURISTIC)** : cartes denses en crochets.
- **Écart avec le seed** : **OK** pour la LIVE [27][40] (le seed ne mentionne pas l'aller-retour 9.3.0 → 9.3.2 : omission historique sans effet sur la LIVE).
- **Sources** : [15][23][27][28][40]

### Diversion — Adam Francis
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : après 30/25/20 s dans le rayon de terreur sans être poursuivi, Diversion s'active ; accroupi et immobile, appui sur la capacité active → caillou lancé dans la direction regardée, qui atterrit à 20 m : Loud Noise Notification + fausses griffures ; se désactive après usage — STRONG_SECONDARY (page complète [41] ; 8.2.0 : charge 40/35/30 s → 30/25/20 s).
- **Valeurs / CD / conditions / limites** : 30/25/20 s, 20 m [41]. Bug corrigé en 9.3.0 : la recharge ne progressait pas quand le rayon de terreur était transféré à la hache de The Animatronic (add-on Faz-Coin) [28].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [15] — NON LIVE.
- **Interactions, DR, anti-synergies** : n/a — HEURISTIC.
- **Synergies** : Quick & Quiet, Urban Evasion, Distortion (stealth) — HEURISTIC.
- **Difficulté** : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : pour détourner un tueur qui fouille une zone (après un hook, en patrouille de 3-gen).
- **Quand elle n'en produit pas (HEURISTIC)** : contre des tueurs expérimentés (alerte ignorée) ; hors rayon de terreur.
- **Écart avec le seed** : **OK** (« caché » = sans être poursuivi) [41].
- **Sources** : [15][28][41]

### Solidarity — Jane Romero
- **Statut** : LIVE 10.1.2a (version 8.1.0).
- **Effet LIVE** : blessé, en soignant un allié **sans Med-Kit**, vous vous soignez passivement à 50/60/70 % de votre vitesse de soin altruiste — VERIFIED_MULTI_SOURCE (page complète [42], onglet d'historique 8.1.0 = LIVE + note 559 « was without a Med-Kit and 50/60/70% » [15]).
- **Valeurs / CD / conditions / limites** : 50/60/70 % (8.1.0 : était 40/45/50 %) [42].
- **PTB 10.2.0** (NON LIVE) : 65/70/75 % et **restriction Med-Kit supprimée** — VERIFIED_MULTI_SOURCE (wiki [42] + note 559 [15]).
- **Interactions, DR, anti-synergies** : l'auto-soin est un pourcentage de la vitesse de soin altruiste [42] → les bonus de soin altruiste (Botany, Leader) le relèvent aussi (déduction du texte, STRONG_SECONDARY). Anti-synergie LIVE : Med-Kit.
- **Synergies** : Botany Knowledge, We'll Make It, Autodidact (soins sans kit) — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 2 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : deux blessés qui se soignent mutuellement : économise un soin complet.
- **Quand elle n'en produit pas (HEURISTIC)** : en jouant Med-Kit ; si vous n'êtes pas blessé.
- **Écart avec le seed** : **OK** (LIVE 50/60/70 % sans Med-Kit ; PTB 65/70/75 %) [15][42] ; le seed omet la levée de la restriction Med-Kit au PTB.
- **Sources** : [15][42]

### Buckle Up — Ash Williams
- **Statut** : LIVE 10.1.2a (version 8.0.0, description clarifiée en 8.4.0).
- **Effet LIVE** : en soignant un survivant mourant (Dying) : pendant le soin, vous et lui voyez l'aura du tueur ; une fois le soin terminé, le survivant relevé ne laisse pas de griffures et gagne **+50 % de Haste pendant 3/4/5 s** ; Buckle Up ne cause pas d'Exhausted — STRONG_SECONDARY (page complète [43]).
- **Valeurs / CD / conditions / limites** : +50 % Haste 3/4/5 s **confirmé** par la page complète (valeur atypique mais exacte ; rework 8.0.0 : Endurance des deux survivants → Haste du survivant relevé) — la suspicion du lot 2 est levée [43].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [15] — NON LIVE.
- **Interactions, DR, anti-synergies** : Haste → soumise aux DR avec d'autres Haste identiques — HYPOTHESIS.
- **Synergies** : Unbreakable, Tenacity, We'll Make It (anti-slug) — HEURISTIC.
- **Difficulté** : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 1 · gen 0 · endgame 0 (anti-slug 2)
- **Quand elle produit de la valeur (HEURISTIC)** : contre le slug : relever en sachant où est le tueur et repartir sans griffures.
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs qui accrochent systématiquement.
- **Écart avec le seed** : **OK** (+50 % Haste et pas de griffures 3/4/5 s confirmés) [43].
- **Sources** : [15][43]

### Mettle of Man — Ash Williams
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : après le 3e protection hit (par n'importe quel moyen) : tant que vous êtes blessé, vous êtes protégé de la prochaine attaque qui vous mettrait à terre ; après être revenu en pleine santé, votre aura est révélée au tueur quand vous êtes à plus de 12/14/16 m de lui ; se désactive au passage en Dying ; +100 % de chance d'être l'Obsession initiale — STRONG_SECONDARY (page complète [44]).
- **Valeurs / CD / conditions / limites** : 3 protection hits, 12/14/16 m [44]. Bug 10.1.0 (activation un coup trop tôt, known issue) corrigé en 10.1.1 : « only after the third protection hit » — VERIFIED_MULTI_SOURCE [30][31].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [15] — NON LIVE.
- **Interactions, DR, anti-synergies** : effet « proche Endurance » (seed p31) ; interaction avec Deep Wound / dégâts de pouvoir non vérifiée — UNCERTAIN.
- **Synergies** : Babysitter, Borrowed Time, Guardian (protection hits) — HEURISTIC.
- **Difficulté** : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 2 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SWF qui prend volontairement des protection hits ; joueurs très altruistes.
- **Quand elle n'en produit pas (HEURISTIC)** : SoloQ passive (3 protection hits rarement atteints) ; après activation, l'aura révélée pénalise la furtivité.
- **Écart avec le seed** : **OK** (omet seulement la désactivation en Dying et le +100 % d'Obsession) [44].
- **Sources** : [15][30][31][44]

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| B2P26-C01 | Quick Gambit : tous les autres survivants +3/4/5 % réparation, vous voyez leurs auras en chase, CD 40 s | [1][25] | LIVE (CD 40 s depuis 9.2.0) | VERIFIED_MULTI_SOURCE (CD) / STRONG_SECONDARY (effet, page complète) |
| B2P26-C02 | Potential Energy : max 10/15/20 jetons, +1 %/jeton, raté au max = −10 % gen, perte totale à la perte d'un état de santé | [4][26] | LIVE (9.1.0) | VERIFIED_MULTI_SOURCE (1 %/jeton) / STRONG_SECONDARY (reste) |
| B2P26-C03 | Autodidact : −15 % à 0 jeton, +15 %/jeton, max 3/4/5, inactif avec Med-Kit | [5] | LIVE | STRONG_SECONDARY (page complète) |
| B2P26-C04 | Chemical Trap : 20 % de réparation, 40/50/60 s, Hindered 50 % 4 s | [6] | LIVE (8.2.0) | STRONG_SECONDARY (page complète) |
| B2P26-C05 | Wiretap : 40 % de réparation, 100/110/120 s, 14 m | [33] | LIVE | STRONG_SECONDARY (page complète) |
| B2P26-C06 | Leader : 20/25/30 %, 10 m, 6 actions dont Unhooking/Unlocking, linger 15 s | [8][25] | LIVE (9.2.0) | VERIFIED_MULTI_SOURCE |
| B2P26-C07 | Empathy : blessés **et mourants**, 64/96/128 m | [9] | LIVE | STRONG_SECONDARY (page complète) |
| B2P26-C08 | Lightweight : −3/4/5 s, −60 % de spawn de griffures | [10] | LIVE | STRONG_SECONDARY (page complète) |
| B2P26-C09 | Spine Chill LIVE : 36 m fixe, LOS dégagée, +2/4/6 % sur 8 actions | [12] | LIVE | STRONG_SECONDARY (page complète) |
| B2P26-C10 | Spine Chill PTB : 40 m sans LOS, saut +10 % 12 s, cris bloqués 12 s, CD 40/35/30 s, plus de bonus d'action speed | [12][15] | PTB 10.2.0 (NON LIVE) | VERIFIED_MULTI_SOURCE |
| B2P26-C11 | NOLB LIVE : 50/75/100 %, Haste de décrochage portée à 20 % / 15 s ; bonus BP supprimé en 8.4.0 | [15][17][30] | LIVE | VERIFIED_MULTI_SOURCE |
| B2P26-C12 | NOLB PTB : 80/90/100 % | [15][17] | PTB 10.2.0 (NON LIVE) | VERIFIED_MULTI_SOURCE |
| B2P26-C13 | Dark Sense LIVE 5/7/10 s à 24 m ; PTB 8/9/10 s + palettes/fenêtres + survivants | [15][19] | LIVE / PTB (NON LIVE) | VERIFIED_MULTI_SOURCE |
| B2P26-C14 | Plunderer's : 32/48/64 m, +50 % fixe de rareté ; PTB : portée illimitée, déverrouillage +150/175/200 % | [15][20] | LIVE / PTB (NON LIVE) | VERIFIED_MULTI_SOURCE |
| B2P26-C15 | Bound by Obsession LIVE 2/4/6 %, 3 s ; PTB 8/9/10 % (+ bénédiction), 4 s | [15][21] | LIVE / PTB (NON LIVE) | VERIFIED_MULTI_SOURCE (CONFLICT-02 résolu) |
| B2P26-C16 | Poised : aura 8 s, pas de griffures 20/25/30 s | [25][34] | LIVE (9.2.0) | VERIFIED_MULTI_SOURCE |
| B2P26-C17 | Breakdown revertée en 9.3.2 : crochet cassé, 180 s, aura du tueur 4/5/6 s | [27][40] | LIVE depuis 9.3.2 | VERIFIED_MULTI_SOURCE |
| B2P26-C18 | Down to the Last LIVE : aura illisible 20/22/24 m par survivant tué ; dernier survivant : gens +75 %, portes/trappe +50 % | [35] | LIVE | STRONG_SECONDARY (page complète) |
| B2P26-C19 | Down to the Last PTB : rework jetons (max 6), portes +10 %/jeton pour les autres, trappe sans clé à ≥ 3 jetons | [15][35] | PTB 10.2.0 (NON LIVE) | VERIFIED_MULTI_SOURCE |
| B2P26-C20 | Wake Up! LIVE : +8/10/12,5 % par survivant vivant (max 32/40/50 %) ; PTB 8/9/10 % + 20 % par autre survivant vivant | [15][36] | LIVE (8.5.0) / PTB (NON LIVE) | VERIFIED_MULTI_SOURCE (LIVE reconstruite depuis le change log) |
| B2P26-C21 | Pharmacy : 75/100/125 %, −12 m, Emergency Med-Kit garanti | [25][37] | LIVE (9.2.0) | VERIFIED_MULTI_SOURCE |
| B2P26-C22 | Detective's Hunch : 32/48/64 m, 20 s | [26][38] | LIVE (9.1.0) | VERIFIED_MULTI_SOURCE |
| B2P26-C23 | Aftercare : 1/2/3 survivants, reset au crochet | [39] | LIVE | STRONG_SECONDARY (page complète) |
| B2P26-C24 | Diversion : 30/25/20 s, caillou à 20 m | [41] | LIVE (8.2.0) | STRONG_SECONDARY (page complète) |
| B2P26-C25 | Solidarity LIVE 50/60/70 % sans Med-Kit ; PTB 65/70/75 % avec Med-Kit | [15][42] | LIVE / PTB (NON LIVE) | VERIFIED_MULTI_SOURCE |
| B2P26-C26 | Buckle Up : relevé → +50 % Haste et pas de griffures 3/4/5 s, aura du tueur pendant le soin | [43] | LIVE | STRONG_SECONDARY (page complète) |
| B2P26-C27 | Mettle of Man : 3e protection hit, 12/14/16 m ; bug « un coup trop tôt » corrigé en 10.1.1 | [30][31][44] | LIVE | VERIFIED_MULTI_SOURCE (3e hit) / STRONG_SECONDARY (reste) |

## Conflits

#### CONFLICT-B2P26-01 : No One Left Behind — valeurs LIVE
- Source A : résumé de recherche wiki.gg / fandom [17] (1re requête) : Healing/Unhooking +30/40/50 %, Haste +7 %.
- Source B : résumé de recherche wiki.gg [17] (2e requête, historique) : 30/40/50 % → **50/75/100 %** ; Haste +7 % → **+10 %** et +5 s ; notes PTB 10.2.0 [14][18] : « 80/90/100 % (from 50/75/100 %) ».
- Hypothèse : la source A résume une ancienne version présente dans la section historique de la page.
- Résolution : **RÉSOLU** — LIVE = 50/75/100 % et +10 % / +5 s. Preuves : change log complet du wiki (8.4.0 : « from 30/40/50 % to 50/75/100 % », « from +7 % to +10 % ») [17] et note officielle 559 (« was 50/75/100% ») [15]. Confiance VERIFIED_MULTI_SOURCE.

#### CONFLICT-B2P26-02 : Bound by Obsession — valeurs LIVE vs page wiki
- Source A : résumé wiki.gg [21] : 8/9/10 % (Cleansing/Healing/Repairing), aura 4 s toutes les 30 s.
- Source B : résumés des notes PTB 10.2.0 [14][22] : 8/9/10 % « from 2/4/6 % », 4 s « from 3 s ».
- Hypothèse : la page wiki.gg affiche déjà les valeurs PTB (ou le résumé de recherche les a mélangées).
- Résolution : **RÉSOLU** — hypothèse confirmée : la page complète affiche le PTB comme version courante ; l'onglet d'historique 4.7.0 (= LIVE) donne 2/4/6 % et 3 s [21], et la note officielle 559 dit « was 2/4/6% », « was 3s » [15]. LIVE 10.1.2a = 2/4/6 % / 3 s ; PTB = 8/9/10 % / 4 s. Confiance VERIFIED_MULTI_SOURCE.

#### CONFLICT-B2P26-03 : Lightweight — espacement des griffures
- Source A : wiki.gg [10] (page complète) : −60 % de chance d'apparition des patches.
- Source B : fil BHVR [11] : l'espacement ne fonctionne plus depuis 8.6.0.
- Hypothèse : bug signalé ; la page wiki décrit l'effet prévu. Aucune note officielle 9.x-10.x ne mentionne Lightweight (ni bug connu ni correctif).
- Résolution : UNRESOLVED.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Quick Gambit — aura | « les autres survivants voient votre aura » | **vous** voyez l'aura des autres [1] | FAUX |
| Quick Gambit — valeurs/CD | 3/4/5 %, CD 40 s | idem [1][25] | OK |
| Potential Energy — perte des jetons | « si vous prenez un coup » | perte d'un état de santé par n'importe quel moyen ; pénalités de skill check raté (−20 % jetons / −10 % gen au max) [4] | IMPRÉCIS |
| Potential Energy — buff 9.1.0 (p32) | buff | plus de temps minimal, 1 % par jeton (était 1,5 %) [26] | OK |
| Autodidact | −15 %, +15 %/jeton, max 3/4/5, pas de great | idem ; inactif avec Med-Kit [5] | OK |
| Chemical Trap | 20 %, 40/50/60 s, Hindered 50 % 4 s | idem [6] | OK |
| Wiretap | 40 %, 100/110/120 s, ~14 m | idem [33] | OK |
| Leader | purif., soin, portes, sabotage 20/25/30 %, 10 m | + Unhooking + Unlocking, linger 15 s [8][25] | IMPRÉCIS |
| Empathy (p26) | survivants blessés | blessés **ou mourants** [9] | IMPRÉCIS |
| Lightweight | 3/4/5 s + espacement | idem (bug possible depuis 8.6.0) [10][11] | OK |
| Spine Chill LIVE | 36 m, +2/4/6 % | idem [12] | OK |
| Spine Chill PTB | « rework, 40 m » | 40 m sans LOS + saut 10 % 12 s + cris bloqués + CD 40/35/30 s, plus d'action speed [12][15] | OK (incomplet) |
| NOLB LIVE | 50/75/100 %, +10 % Haste | idem, + 5 s de Haste (20 % / 15 s), aura des survivants [15][17] | OK |
| NOLB PTB | 80/90/100 % | idem [15][17] | OK |
| Dark Sense LIVE/PTB | 5/7/10 s à 24 m ; PTB 8/9/10 s + palettes/fenêtres/survivants | idem [15][19] | OK |
| Plunderer's Instinct | 32/48/64 m, « rareté supérieure plus fréquente » | +50 % fixe ; objets des coffres ouverts inclus [20] | IMPRÉCIS |
| Plunderer's Instinct PTB (p32) | buff | portée illimitée + déverrouillage +150/175/200 % [15][20] | OK |
| Bound by Obsession | aura 3 s/30 s, retour d'aura, 2/4/6 % ; PTB 8/9/10 % | retour d'aura à toute lecture d'aura par le tueur ; +100 % chance d'Obsession ; valeurs OK [15][21] | IMPRÉCIS |
| Poised | aura 8 s, 20/25/30 s sans griffures | idem [25][34] | OK |
| Leader/Poised/Quick Gambit buffés en 9.2.0 (p32) | buffs 9.2.0 | confirmé [25] | OK |
| Down to the Last LIVE | 1 jeton par mort, aura illisible 20/22/24 m | idem, mais omet dernier survivant : gens +75 %, portes/trappe +50 % [35] | IMPRÉCIS |
| Down to the Last PTB | « jetons, bonus pour les portes et la trappe » | jetons (crochet / gen, max 6), portes +10 %/jeton pour les autres, trappe sans clé à ≥ 3 jetons [15][35] | OK (incomplet) |
| Wake Up! LIVE | 8/10/12,5 % par survivant vivant | idem (max 32/40/50 %) [15][36] | OK |
| Wake Up! PTB (p32) | buff | 8/9/10 % + 20 % par autre survivant vivant (seul : −2,5 %) [15] | OK (nuance) |
| Pharmacy | 75/100/125 %, −12 m, médikit rare garanti | idem (Emergency Med-Kit) [25][37] ; PTB : fouille [15] | OK |
| Detective's Hunch | 20 s, 32/48/64 m | idem (20 s depuis 9.1.0) [26][38] | OK |
| Aftercare | 1/2/3 survivants, jusqu'au prochain crochet | idem [39] | OK |
| Breakdown | crochet cassé 180 s, aura 4/5/6 s | idem (revert 9.3.2) [27][40] | OK |
| Diversion | 30/25/20 s, caillou à 20 m | idem [41] | OK |
| Solidarity LIVE / PTB | 50/60/70 % sans Med-Kit ; PTB 65/70/75 % | idem ; PTB supprime aussi la restriction Med-Kit [15][42] | OK |
| Buckle Up « +50 % de Haste » | +50 %, 3/4/5 s sans griffures | confirmé [43] | OK |
| Mettle of Man | 3 protection hits, aura > 12/14/16 m | idem ; + désactivation en Dying, +100 % Obsession [44] | OK |

## Questions ouvertes

1. ~~Relancer la vérification des 10 perks NON VÉRIFIABLES~~ — **résolu** (lot 12a, pages complètes + notes officielles).
2. ~~NOLB : base de la Haste de décrochage en endgame~~ — **résolu** : seule l'Elusive de décrochage ne s'applique plus une fois les gens alimentés ; la Haste 10 % / 10 s reste, NOLB la porte à 20 % / 15 s [17][30].
3. ~~Quick Gambit : portée du bonus~~ — **résolu** : tous les autres survivants, sans limite [1].
4. ~~Spine Chill PTB : bonus d'action speed supprimé ?~~ — **résolu** : oui, remplacé [12][15].
5. Lightweight : bug d'espacement (8.6.0) corrigé ? — toujours ouvert (CONFLICT-03).
6. ~~Page wiki.gg de Bound by Obsession : valeurs PTB affichées ?~~ — **résolu** : oui (CONFLICT-02).
7. ~~Contenu du buff 9.1.0 de Potential Energy~~ — **résolu** [26].
8. Quelles perks de ce lot figurent parmi les 26 ajustées « à cause des DR » au PTB 10.2.0 ? — la note 559 regroupe Bound by Obsession sous « Generic perks and perks impacted by Diminishing Returns » ; liste exhaustive non publiée.
9. Down to the Last LIVE : la portée 20/22/24 m s'additionne-t-elle par survivant mort ? (texte wiki ambigu).
10. Wake Up! : le wiki affiche déjà la version PTB comme courante ; vérifier en jeu la valeur LIVE (8/10/12,5 % par vivant) si possible.

## Sources

[1] Quick Gambit — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Quick_Gambit — consulté le 27/09/2026 via WebSearch (résumé) ; re-vérifié : page complète via API, consultée le 27/09/2026
[2] Patch Notes 9.2.X — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Patch_Notes_9.2.X — consulté le 27/09/2026 via WebSearch
[3] 9.2.0 | Sinister Grace — support BHVR — https://support.deadbydaylight.com/hc/en-us/articles/41607788392212-9-2-0-Sinister-Grace — consulté le 27/09/2026 via WebSearch
[4] deadbydaylight.wiki.gg/wiki/Potential_Energy — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[5] deadbydaylight.wiki.gg/wiki/Autodidact — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[6] deadbydaylight.wiki.gg/wiki/Chemical_Trap — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[7] Wiretap — Official Dead by Daylight Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Wiretap — consulté le 27/09/2026 via WebSearch
[8] deadbydaylight.wiki.gg/wiki/Leader — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[9] deadbydaylight.wiki.gg/wiki/Empathy — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[10] deadbydaylight.wiki.gg/wiki/Lightweight — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[11] « Lightweight perk no longer makes scratch marks inconsistent… since 8.6.0 » — forums BHVR — https://forums.bhvr.com/dead-by-daylight/discussion/445667/lightweight-perk-no-longer-makes-scratch-marks-inconsistent-or-spaces-them-out-since-8-6-0 — consulté le 27/09/2026 via WebSearch
[12] deadbydaylight.wiki.gg/wiki/Spine_Chill — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[13] DBD Perk Changes: All 58 Killer and Survivor Perks in the 10.2.0 PTB — timesaver.gg — https://timesaver.gg/blog/dbd-perk-changes-10-2-0 — consulté le 27/09/2026 via WebSearch
[14] Dead by Daylight v10.2.0 PTB — Perk Overhaul — patched.gg — https://patched.gg/games/dead-by-daylight/1020-ptb-patch-notes — consulté le 27/09/2026 via WebSearch
[15] 10.2.0 PTB Patch Notes — note officielle BHVR KB 559 — https://forums.bhvr.com/dead-by-daylight/kb/articles/559 — texte complet lu en local (kb/sources/patches/official_559.txt), 27/09/2026
[16] Dev Update: 10.2.0 Perks Update — forums BHVR — https://forums.bhvr.com/dead-by-daylight/discussion/472297/dev-update-10-2-0-perks-update — consulté le 27/09/2026 via WebSearch
[17] deadbydaylight.wiki.gg/wiki/No_One_Left_Behind — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[18] Dead by Daylight 10.2.0 PTB Patch Notes — PatchTLDR — https://patchtldr.com/en/dead-by-daylight/patch-1020-ptb — consulté le 27/09/2026 via WebSearch
[19] deadbydaylight.wiki.gg/wiki/Dark_Sense — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[20] deadbydaylight.wiki.gg/wiki/Plunderer's_Instinct — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[21] deadbydaylight.wiki.gg/wiki/Bound_by_Obsession — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[22] 10.2.0 PTB — BetaHub (Dead by Daylight) — https://app.betahub.io/projects/pr-5642738318/releases/5737 — consulté le 27/09/2026 via WebSearch
[23] Audit interne phase 0 — kb/seed/audit_phase0.txt (9.3.2 : revert de Breakdown ; 9.4.0 : renommages des perks de Laurie) — lu le 27/09/2026
[24] Dead by Daylight (X), annonce PTB 10.2.0 — https://x.com/DeadbyDaylight/status/2099906208844960067 — consulté le 27/09/2026 via WebSearch
[25] 9.2.0 | Sinister Grace — note officielle BHVR KB 523 — https://forums.bhvr.com/dead-by-daylight/kb/articles/523 — lue en local (official_523.txt), 27/09/2026
[26] 9.1.0 | The Walking Dead — note officielle BHVR KB 516 — https://forums.bhvr.com/dead-by-daylight/kb/articles/516 — lue en local (official_516.txt), 27/09/2026
[27] 9.3.2 | Bugfix Patch — note officielle BHVR KB 530 — https://forums.bhvr.com/dead-by-daylight/kb/articles/530 — lue en local (official_530.txt), 27/09/2026
[28] 9.3.0 | Mid-Chapter — note officielle BHVR KB 529 — https://forums.bhvr.com/dead-by-daylight/kb/articles/529 — lue en local (official_529.txt), 27/09/2026
[29] 9.4.0 | Stranger Things Chapter 2 — note officielle BHVR KB 534 — https://forums.bhvr.com/dead-by-daylight/kb/articles/534 — lue en local (official_534.txt), 27/09/2026
[30] 10.1.0 | Chorus of Sin — note officielle BHVR KB 556 — https://forums.bhvr.com/dead-by-daylight/kb/articles/556 — lue en local (official_556.txt), 27/09/2026
[31] 10.1.1 Bugfix Patch — note officielle BHVR KB 557 — https://forums.bhvr.com/dead-by-daylight/kb/articles/557 — lue en local (official_557.txt), 27/09/2026
[32] 9.6.0 | Patch Notes — note officielle BHVR KB 544 (Diminishing Returns) — https://forums.bhvr.com/dead-by-daylight/kb/articles/544 — lue en local (official_544.txt), 27/09/2026
[33] deadbydaylight.wiki.gg/wiki/Wiretap — page complète via API, consultée le 27/09/2026
[34] deadbydaylight.wiki.gg/wiki/Poised — page complète via API, consultée le 27/09/2026
[35] deadbydaylight.wiki.gg/wiki/Down_to_the_Last — page complète via API, consultée le 27/09/2026
[36] deadbydaylight.wiki.gg/wiki/Wake_Up! — page complète via API, consultée le 27/09/2026
[37] deadbydaylight.wiki.gg/wiki/Pharmacy — page complète via API, consultée le 27/09/2026
[38] deadbydaylight.wiki.gg/wiki/Detective's_Hunch — page complète via API, consultée le 27/09/2026
[39] deadbydaylight.wiki.gg/wiki/Aftercare — page complète via API, consultée le 27/09/2026
[40] deadbydaylight.wiki.gg/wiki/Breakdown — page complète via API, consultée le 27/09/2026
[41] deadbydaylight.wiki.gg/wiki/Diversion — page complète via API, consultée le 27/09/2026
[42] deadbydaylight.wiki.gg/wiki/Solidarity — page complète via API, consultée le 27/09/2026
[43] deadbydaylight.wiki.gg/wiki/Buckle_Up — page complète via API, consultée le 27/09/2026
[44] deadbydaylight.wiki.gg/wiki/Mettle_of_Man — page complète via API, consultée le 27/09/2026
[45] Digest local des pages wiki complètes — kb/sources/wiki_perks_digest.md (brut : kb/sources/wiki_perks.json), extraction du 27/09/2026
[46] 9.5.0 | All-Kill: Comeback — note officielle BHVR KB 538 (mise à jour de description de Wiretap / Chemical Trap) — https://forums.bhvr.com/dead-by-daylight/kb/articles/538 — lue en local (official_538.txt), 27/09/2026
