# Lot 2 — Perks survivant, page 29 du guide seed (Tier D)

**Couverture : 25/25 perks re-vérifiées sur page wiki complète (27/09/2026) ; dont 10 confirmées par note officielle** (Premonition, This Is Not Happening, Calm Spirit, Technician, No Mither, Better Together, Better Than New, Low Profile, Friendly Competition, Apocalyptic Ingenuity) **+ 2 partiellement** (Slippery Meat, Up the Ante : règle d'accès à l'auto-décrochage, notes 9.0.0). Toutes les notes de valeur, synergies et « quand utile » sont HEURISTIC / EXPERT OPINION de l'agent.

- Référence : **LIVE 10.1.2a** (17/09/2026). **PTB 10.2.0** (15-21/09/2026) **non LIVE** : toujours étiqueté PTB.
- Méthode (lot 12a, 27/09/2026) : re-vérification sur les **pages wiki.gg complètes** (API MediaWiki, digest local `kb/sources/wiki_perks_digest.md`) [27] et les **notes officielles BHVR** locales (`kb/sources/patches/official_*.txt`) [28]-[34]. La première passe (lot 2) reposait sur des résumés WebSearch [1]-[26] ; ils restent cités quand ils concordent.
- Périmètre : 25 perks (seed `kb/seed/ch3_survperks.txt` l. 761-872).
- **Historique** : au lot 2, le quota WebSearch avait empêché de vérifier Friendly Competition (LIVE), Deadline, Hardened, Invocation: Treacherous Crows, Duty of Care, Rapid Response et Apocalyptic Ingenuity. Ces 7 perks sont désormais vérifiées sur page complète (lot 12a).
- Notes de valeur (0-3) = **HEURISTIC** (appréciation de l'agent, pas une donnée).

---

### Premonition — Générale
- **Statut** : LIVE 10.1.2a (version « cône sonore »)
- **Effet LIVE** : cône invisible dans la direction regardée (angle de détection 45°, portée 36 m) ; signal sonore quand le tueur s'y trouve — VERIFIED_MULTI_SOURCE (wiki, onglet historique 2.6.2 = LIVE [27] ; note 559 « was 36m and within 45 degrees » [34])
- **Valeurs / CD / conditions / limites** : recharge 60/45/30 s (LIVE ; note 559 « was 60/45/30s » [34]). Aucune restriction en poursuite au LIVE (la restriction est ajoutée au PTB).
- **PTB 10.2.0 (NON LIVE)** : **rework** : hors poursuite, regarder dans la direction du tueur à **32 m** (plus d'angle) → notification + **aura du tueur 3 s** ; recharge **70/65/60 s** [27][34]. CONFLICT-P29-02 RÉSOLU (32 m confirmé).
- **Interactions, DR, anti-synergies** : doublon d'info avec Spine Chill / Alert ; aucun modificateur chiffré soumis aux DR 9.6.0 (effet d'info). Inutile contre un tueur déjà en poursuite (cône ≠ Terror Radius).
- **Synergies** : builds furtifs (Distortion, Lightweight), Calm Spirit (moins de bruit en fuite).
- **Difficulté** : 2 (il faut balayer la caméra)
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Contre tueurs furtifs (Terror Radius nul) quand vous balayez régulièrement avant de vous engager sur un gen isolé.
- **Quand elle n'en produit pas** :
  - En SWF avec comms, ou dès que la poursuite commence (vous savez déjà où il est) ; recharge longue en tier I.
- **Écart avec le seed** : OK (LIVE : 45°, 36 m, 60/45/30 s = note 559) ; PTB « rework » OK, « 32 m » (p32) OK (note 559)
- **Sources** : [27][34][1][2][3][4]

### Slippery Meat — Générale
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : +3 tentatives d'auto-décrochage pendant la 1ʳᵉ phase de crochet (donc 6 au total) et +2/3/4 % de chance de réussite — STRONG_SECONDARY (wiki, onglet historique 4.3.0 = LIVE [27] ; concordant avec [6])
- **Valeurs / CD / conditions / limites** : depuis 9.0.0, l'auto-décrochage n'est disponible que si 2 survivants restent, avec offrande de chance, **Slippery Meat** ou Up the Ante — VERIFIED_PRIMARY (note 9.0.0 [28], l. 72-75). La perk sert donc aussi de **clé d'accès** à l'auto-décrochage — point omis par le seed. Chance de base 4 %/tentative : audit [12] (non recoupé par une note 9.x/10.x).
- **PTB 10.2.0 (NON LIVE)** : **rework** : les autres survivants vous décrochent 90/95/100 % plus vite ; +5 % de Haste en plus quand vous êtes décroché (wiki : « Haste granted by Unhook Protections +5 % ») ; pensée comme anti-tunnel générale pour débutants (dev note) [27][34].
- **Interactions, DR** : chance (Luck) cumulable avec Up the Ante / offrandes ; application exacte des DR 9.6.0 aux Luck de perks identiques → HYPOTHESIS (liste DR non consultée). Chaque échec = pénalité de temps sur le crochet (audit : −20 s, wiki) [12].
- **Synergies** : Up the Ante, offrandes de chance (Chalk Pouch/Salt… non vérifié ici).
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Coup de chance quand personne ne peut venir vous décrocher (4+4 % par essai au mieux, ≈ 8 %/essai).
- **Quand elle n'en produit pas** :
  - Presque toujours : chaque échec accélère la mort ; espérance faible sur 6 essais.
- **Écart avec le seed** : IMPRÉCIS (valeurs OK ; omet qu'elle **débloque** l'auto-décrochage depuis 9.0.0, note [28]) ; PTB OK
- **Sources** : [27][28][34][6][3][4][12]

### Small Game — Générale
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : cône invisible de 45°, 8/10/12 m ; signal sonore quand un totem (tout type) s'y trouve — STRONG_SECONDARY (wiki, onglet historique 4.7.0 = LIVE [27] ; concordant avec [7])
- **Valeurs / CD / conditions / limites** : recharge 14/12/10 s. +1 jeton par totem purifié (max 5) : −5° d'angle par jeton (max −25°) [27].
- **PTB 10.2.0 (NON LIVE)** : **rework** : vous voyez l'aura des totems à 10/11/12 m [27][34].
- **Interactions, DR** : aucune. Signale aussi les totems ternes et bénis (« any type of Totem ») [7].
- **Synergies** : Detective's Hunch / Counterforce (chasse aux Hex), Boons (trouver un totem à bénir).
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 1 (No One Escapes Death)
- **Quand elle produit de la valeur** :
  - Contre builds Hex/NOED, en balayant la caméra en déplacement entre gens.
- **Quand elle n'en produit pas** :
  - Le cône se resserre à chaque totem purifié (plus dur à viser) ; perte de temps si le tueur n'a aucun Hex.
- **Écart avec le seed** : OK
- **Sources** : [27][34][7][3][4]

### This Is Not Happening — Générale
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : quand vous êtes Injured, la zone de succès des **Great** skill checks en **réparation et soin** est agrandie de 10/20/30 % — VERIFIED_MULTI_SOURCE (wiki, onglet historique 3.6.0 = LIVE [27] ; note 559 « was while injured and 10/20/30% » [34])
- **Valeurs / CD / conditions / limites** : état Injured requis ; réparation + soin seulement.
- **PTB 10.2.0 (NON LIVE)** : **buff** : en réparant ou en soignant (plus de condition Injured), zones **Good** des skill checks basiques +150/175/200 % (nouveau) et zones **Great** **+30 % fixe** à tous les tiers [27][34]. CONFLICT-P29-03 RÉSOLU.
- **Interactions, DR** : modificateur de zone de skill check → potentiellement soumis aux DR 9.6.0 avec Stake Out / Hyperfocus (HYPOTHESIS, liste DR non consultée). Anti-synergie avec les perks « rester en bonne santé ».
- **Synergies** : No Mither / Deadline (toujours Injured), Stake Out, Resilience.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Quand elle produit de la valeur** :
  - Build « Injured » (No Mither) où chaque Great de gen = +1 % de progression.
- **Quand elle n'en produit pas** :
  - Joueur sain ou déjà précis sur les Greats ; gain marginal en LIVE.
- **Écart avec le seed** : IMPRÉCIS mineur (omet « réparation et soin ») ; PTB « good et great agrandies » OK (non chiffré ; valeurs : note 559)
- **Sources** : [27][34][8][9][3][4]

### Calm Spirit — Jake Park
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : les corbeaux ne s'envolent pas à votre proximité (sauf contact), vous ne criez jamais (« from any cause ») ; ouverture de coffres et purification/bénédiction de totems silencieuses mais 40/35/30 % plus lentes — VERIFIED_MULTI_SOURCE (wiki, onglet historique 6.1.0 = LIVE [27] ; note 559 « was 40/35/30% slower » [34] ; note 9.6.0 cite le −30 % [32])
- **Valeurs / CD / conditions / limites** : malus 40/35/30 % (LIVE). Immunise contre les effets fondés sur les cris (ex. Hex: Face the Darkness, Infectious Fright) [10].
- **PTB 10.2.0 (NON LIVE)** : **buff** : malus retiré, remplacé par **+8/9/10 %** de vitesse sur bénédiction, purification et coffres [27][34].
- **Interactions, DR** : note 9.6.0 : les pénalités de vitesse négatives ne se réduisent qu'entre sources d'un même rôle ; exemple officiel : le −30 % de Calm Spirit n'est plus réduit par Hex: Thrill of the Hunt — VERIFIED_PRIMARY [32]. Anti-synergie avec Hardened : les deux suppriment le cri ; que Hardened révèle encore le tueur quand Calm Spirit empêche le cri n'est pas documenté (HYPOTHESIS).
- **Synergies** : builds furtifs, Distortion.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 1 (anti-info tueur) · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Contre tueurs/perks à cris (Doctor, Infectious Fright, Face the Darkness) : prive le tueur d'info.
- **Quand elle n'en produit pas** :
  - Build totem/coffre : le malus LIVE coûte cher.
- **Écart avec le seed** : OK (LIVE) ; PTB p32 « 8/9/10 % » OK
- **Sources** : [27][32][34][10][4][12]

### Technician — Feng Min
- **Statut** : LIVE 10.1.2a (retouchée en 10.1.0)
- **Effet LIVE** : bruit de réparation réduit de **16 m** ; un skill check de réparation raté ne fait pas exploser le gen (pas de Loud Noise Notification), mais la pénalité de progression est augmentée — VERIFIED_MULTI_SOURCE (wiki page complète [27] + note 10.1.0 [33])
- **Valeurs / CD / conditions / limites** : pénalité supplémentaire **+4/3/2 %** (note 10.1.0 : « 4/3/2% more progress (was 5/4/3%) » ; « 16m shorter (was 8 meters) ») [33] ; avant 10.1.0 : −8 m et +5/4/3 % (OBSOLETE).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [27][34].
- **Interactions, DR** : contre Gen Tap / Oppression-like et perks liées aux ratés (ex. Ruin n'est pas concerné) : empêche la notification. Pas de DR pertinent.
- **Synergies** : Deadline (ratés moins pénalisés), builds furtifs.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 1 (anti-info) · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur** :
  - Joueurs qui ratent des skill checks (lag, Doctor, Deadline) et veulent éviter l'alerte.
- **Quand elle n'en produit pas** :
  - Joueurs réguliers sur les skill checks : la pénalité en plus n'est jamais compensée.
- **Écart avec le seed** : **FAUX / OBSOLETE** (8 m et 5/4/3 % = valeurs d'avant 10.1.0 ; LIVE = 16 m et 4/3/2 %)
- **Sources** : [27][33][11][12] — CONFLICT-P29-01 (résolu)

### No Mither — David King
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : Broken toute la partie ; en échange : pas de flaques de sang ; gémissements de douleur supprimés (Injured et Dying) ; récupération au sol complète possible, vitesse de récupération +15/20/25 % — VERIFIED_MULTI_SOURCE (wiki page complète [27] ; note 9.2.0 : gémissements « 100% across all tiers (was 25/50/75%) » [30])
- **Valeurs / CD / conditions / limites** : suppression des flaques de sang confirmée (wiki [27]). Incompatible avec les perks exigeant Healthy ou un auto-soin [13].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [27][34].
- **Interactions, DR** : Broken annule les soins d'alliés ; anti-synergie avec Dead Hard/Made for This (conditions Healthy/Injured variables), Botany, Self-Care.
- **Synergies** : Unbreakable, Deadline, This Is Not Happening, Resilience.
- **Difficulté** : 3
- **Valeur (HEURISTIC)** : SoloQ 0 · SWF 1 · chase 1 (furtivité) · macro 1 · info 0 · anti-tunnel 0 · soin 1 (économise le temps de soin d'équipe) · gen 1 · endgame 0
- **Quand elle produit de la valeur** :
  - Joueur de chase/stealth qui refuse de perdre du temps en soins ; contre tueurs qui one-shot déjà.
- **Quand elle n'en produit pas** :
  - SoloQ : pas de marge d'erreur, cible facile à tunnel.
- **Écart avec le seed** : OK (sang, −100 %, +15/20/25 %, relèvement complet : tous confirmés)
- **Sources** : [27][30][34][13]

### Ace in the Hole — Ace Visconti
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : objet ordinaire tiré d'un coffre : 1er emplacement : **100 %** de chance d'un add-on de rareté **Visceral (= Ultra Rare) ou inférieure** ; 2e emplacement : **50/75/100 %** de chance d'un add-on **Uncommon ou inférieur** ; les add-ons de l'objet tenu ne sont pas consommés si vous vous échappez — STRONG_SECONDARY (wiki page complète [27] ; change log 8.4.0 : rareté max Very Rare → Ultra Rare, 2e add-on 10/25/50 % → 50/75/100 %)
- **Correction (lot 12a)** : la 1ʳᵉ passe (résumé fandom [14]) donnait « ≤ Very Rare » et « 10/25/50 % » : ce sont les valeurs **d'avant 8.4.0** (OBSOLETE).
- **Valeurs / CD / conditions / limites** : s'applique aussi à la trousse garantie de Pharmacy, à la lampe de Residual Manifest, aux objets d'Appraisal [14] (non recoupé sur la page complète : UNCERTAIN).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [27][34].
- **Interactions, DR** : aucune.
- **Synergies** : Plunderer's Instinct, Appraisal, Pharmacy, Residual Manifest.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 0 · SWF 0 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 1 (via medkit) · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Build coffres (Plunderer's + Appraisal) pour obtenir toolbox/medkit avec 2 add-ons (le 2e garanti en tier III).
- **Quand elle n'en produit pas** :
  - Partie compétitive : fouiller les coffres coûte du temps de gen.
- **Écart avec le seed** : **IMPRÉCIS** (seed : « rare ou mieux », 2e add-on uncommon à 50/75/100 %. Vérifié : 2e emplacement **OK** ; 1er emplacement = jusqu'à Ultra Rare (« ou inférieur »), pas « rare ou mieux »). Le verdict « FAUX » du lot 2 reposait sur des valeurs pré-8.4.0 : annulé.
- **Sources** : [27][34][14]

### Up the Ante — Ace Visconti
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : débloque la tentative d'auto-décrochage en 1ʳᵉ phase de crochet pour **tous** les survivants ; +1 jeton par survivant encore dans l'épreuve ; +1/2/3 % de chance (Luck) d'auto-décrochage par jeton pour tous, max 3/6/9 % — STRONG_SECONDARY (wiki page complète [27], concordant avec [15]) ; déblocage : VERIFIED_MULTI_SOURCE (note 9.0.0 [28])
- **Valeurs / CD / conditions / limites** : max 3/6/9 % [27]. Le wiki dit « every Survivor still in the Trial » ; le plafond 3/6/9 % implique 3 jetons max (vous exclu ou plafond) — détail de décompte UNCERTAIN.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [27][34].
- **Interactions, DR** : cumul de chance avec Slippery Meat ; application des DR à plusieurs Up the Ante → HYPOTHESIS.
- **Synergies** : Slippery Meat, offrandes de chance, SWF « tous Up the Ante » (fun).
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Début de partie (4 survivants en vie) pour donner une chance de s'échapper seul à toute l'équipe.
- **Quand elle n'en produit pas** :
  - Dès qu'un survivant meurt ; chance de base trop faible pour justifier l'emplacement.
- **Écart avec le seed** : IMPRÉCIS (valeurs OK ; omet le déblocage de l'auto-décrochage pour tous et le max 3/6/9 %)
- **Sources** : [27][28][34][15][12]

### Visionary — Felix Richter
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : aura des générateurs à 32 m ; désactivée 20/18/16 s à chaque générateur terminé — STRONG_SECONDARY (wiki page complète [27], concordant avec [16])
- **Valeurs / CD / conditions / limites** : portée étendue par Open-Handed ; montre aussi les gens bloqués par l'Entité [16] (non recoupé sur la page complète). Note 10.0.3 [35] : correctif (auras non révélées en sortant d'un casier après la désactivation) — sans changement de valeur.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [27][34].
- **Interactions, DR** : aucune.
- **Synergies** : Open-Handed, Deja Vu (redondant), Built to Last/Hyperfocus (non vérifié).
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur** :
  - Joueurs débutants / cartes mal connues pour trouver les gens rapidement.
- **Quand elle n'en produit pas** :
  - Joueurs connaissant les spawns ; l'info ne dit pas quels gens sont intéressants.
- **Écart avec le seed** : OK
- **Sources** : [27][34][16]

### Better Together — Nancy Wheeler
- **Statut** : LIVE 10.1.2a (buff 9.1.0, redevenue Unique)
- **Effet LIVE** : en réparant, l'aura de votre générateur est révélée (jaune) à tous les survivants, sans limite de portée ; si le tueur met à terre un autre survivant pendant votre réparation, vous voyez l'aura de tous les survivants 20/25/30 s — VERIFIED_MULTI_SOURCE (wiki page complète [27] ; note 9.1.0 [29])
- **Valeurs / CD / conditions / limites** : 9.1.0 : durée 8/9/10 → 20/25/30 s ; limite de portée retirée (note 9.1.0 [29]). 9.5.0 : Plot Twist ne peut plus forcer l'activation [31].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [27][34].
- **Interactions, DR** : aucune.
- **Synergies** : Kindred, Bond, Prove Thyself.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 0 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur** :
  - SoloQ : évite les doublons de gen et montre où sont les alliés après une mise à terre.
- **Quand elle n'en produit pas** :
  - SWF vocal : info redondante.
- **Écart avec le seed** : OK
- **Sources** : [27][29][31][34][17]

### Camaraderie — Steve Harrington
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : accroché en phase de lutte : dès qu'un survivant entre à 16 m de votre crochet, le compteur de la phase de lutte est mis en pause pendant 26/30/34 s — STRONG_SECONDARY (wiki page complète [27], concordant avec [18])
- **Valeurs / CD / conditions / limites** : phase de lutte (2e crochet) uniquement.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [27][34].
- **Interactions, DR** : pas de DR. Contre anti-camp / Reassurance : effets proches (non comparé).
- **Synergies** : Kindred, Reassurance, Deliverance.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Quand un allié arrive tard pour un sauvetage de phase 2.
- **Quand elle n'en produit pas** :
  - Tueur qui camp (l'allié n'approche pas) ou décrochage déjà rapide.
- **Écart avec le seed** : OK
- **Sources** : [27][34][18]

### Red Herring — Zarina Kassir
- **Statut** : LIVE 10.1.2a (buffée : 3 → 1 s, recharge 60/50/40 → 25/20/15 s)
- **Effet LIVE** : après ≥1 s de réparation, l'aura du gen est surlignée en jaune ; entrer dans un casier déclenche une Loud Noise Notification pour le tueur sur ce gen — STRONG_SECONDARY (wiki page complète [27] ; change log 8.6.0 : 3 → 1 s, 60/50/40 → 25/20/15 s)
- **Valeurs / CD / conditions / limites** : recharge 25/20/15 s (LIVE) ; surlignage perdu si gen terminé, autre gen commencé ou entrée en casier [27]. Notes 9.5.1 / 9.6.0 : correctifs seulement (surlignage resté actif, icône de recharge) [31][32].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [27][34].
- **Interactions, DR** : aucune.
- **Synergies** : Quick & Quiet, Lucky Break, Distortion (fausses pistes).
- **Difficulté** : 3
- **Valeur (HEURISTIC)** : SoloQ 0 · SWF 1 · chase 1 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Pour attirer le tueur loin d'un allié en difficulté, ou lui faire perdre une poursuite en casier.
- **Quand elle n'en produit pas** :
  - Tueurs expérimentés qui ignorent les notifications isolées.
- **Écart avec le seed** : OK (1 s, 25/20/15 s)
- **Sources** : [19] — CONFLICT-P29-04 (résolu)

### Rookie Spirit — Leon S. Kennedy
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : après 5/4/3 skill checks Good ou Great de réparation, vous voyez pour le reste de la partie l'aura des gens qui régressent, jusqu'à ce qu'ils cessent — STRONG_SECONDARY [20]
- **Valeurs / CD / conditions / limites** : n'affiche pas les gens bloqués par un effet (tant qu'ils restent bloqués) [20].
- **PTB 10.2.0** : non citée dans les résumés lus — UNCERTAIN
- **Interactions, DR** : aucune.
- **Synergies** : Stake Out, Hyperfocus (skill checks rapides).
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur** :
  - Contre tueurs à régression (Pop, Eruption, Grim Embrace) pour savoir quels gens toucher.
- **Quand elle n'en produit pas** :
  - Tueurs sans régression active ; activation tardive.
- **Écart avec le seed** : OK
- **Sources** : [20]

### Better Than New — Rebecca Chambers
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : quand vous finissez de soigner un allié, il bénit/purifie, soigne et ouvre les coffres 12/14/16 % plus vite jusqu'à ce qu'il perde un état de santé — STRONG_SECONDARY [21]
- **Valeurs / CD / conditions / limites** : 12/14/16 % (LIVE).
- **PTB 10.2.0** : **buff (PTB)** : 40/45/50 % [25][4].
- **Interactions, DR** : bonus de vitesse de soin → possible DR 9.6.0 avec d'autres bonus identiques (HYPOTHESIS).
- **Synergies** : Botany Knowledge, Boon: Circle of Healing, builds soigneurs.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 1 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Équipe qui se soigne beaucoup et fait des totems.
- **Quand elle n'en produit pas** :
  - En LIVE, gain trop faible ; effet perdu au premier coup.
- **Écart avec le seed** : OK (LIVE et PTB) ; « pourrait remonter » = spéculation non sourcée
- **Sources** : [21][25][4]

### Low Profile — Ada Wong
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : quand vous êtes le seul survivant non neutralisé (autres **à terre, portés ou accrochés**), gémissements, flaques de sang et griffures supprimés 70/80/90 s — STRONG_SECONDARY [22]
- **Valeurs / CD / conditions / limites** : usage unique (se désactive après usage) ; ne compte que les survivants encore en jeu [22].
- **PTB 10.2.0** : non citée dans les résumés lus — UNCERTAIN
- **Interactions, DR** : aucune.
- **Synergies** : builds trappe/furtivité (Lightweight, Distortion, Left Behind).
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Fin de partie où vous restez seul debout : se cacher/aller à la trappe.
- **Quand elle n'en produit pas** :
  - Toute la partie avant cet état, soit l'essentiel du match.
- **Écart avec le seed** : IMPRÉCIS mineur (omet « portés » ; usage unique)
- **Sources** : [22]

### Teamwork: Collective Stealth — Renato Lyra
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : quand un allié finit de vous soigner, vos griffures et les siennes sont supprimées tant que vous restez à 8/12/16 m l'un de l'autre ; l'effet persiste 4 s hors portée — STRONG_SECONDARY [23]
- **Valeurs / CD / conditions / limites** : reprise si on revient en portée avant la fin des 4 s [23].
- **PTB 10.2.0** : non citée dans les résumés lus — UNCERTAIN
- **Interactions, DR** : aucune.
- **Synergies** : Teamwork: Power of Two, builds duo SWF.
- **Difficulté** : 2 (coordination)
- **Valeur (HEURISTIC)** : SoloQ 0 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Duo SWF qui se soigne puis part ensemble sur un gen.
- **Quand elle n'en produit pas** :
  - SoloQ : les alliés se séparent aussitôt.
- **Écart avec le seed** : OK
- **Sources** : [23]

### Cut Loose — Thalita Lyra
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : après un « Rush Vault » en poursuite, 4/5/6 s pendant lesquelles les sauts rapides ne déclenchent ni Loud Noise Notification ni sons ; chaque nouveau Rush Vault relance le compteur — STRONG_SECONDARY [24]
- **Valeurs / CD / conditions / limites** : recharge 45 s ; le **premier** saut n'est pas silencieux ; ne couvre pas les sorties/entrées rapides de casier [24].
- **PTB 10.2.0** : non citée dans les résumés lus — UNCERTAIN
- **Interactions, DR** : aucune.
- **Synergies** : Lithe, Quick & Quiet, zones à fenêtres.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 0 · SWF 0 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Perdre un tueur à travers une suite de fenêtres (moins d'info sonore).
- **Quand elle n'en produit pas** :
  - En ligne de vue du tueur : le silence ne change rien.
- **Écart avec le seed** : IMPRÉCIS / UNCERTAIN (le seed dit « saut moyen ou rapide » ; la source dit « Rush Vault » — inclusion du saut moyen non confirmée)
- **Sources** : [24]

### Friendly Competition — Thalita Lyra
- **Statut** : LIVE 10.1.2a (supposé)
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : en finissant un gen avec ≥1 allié, les participants réparent 5 % plus vite pendant 100/110/120 s — UNCERTAIN
- **Valeurs / CD / conditions / limites** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN (5 %, 100/110/120 s) — UNCERTAIN.
- **PTB 10.2.0** : **buff (PTB)** : les survivants qui ont fini le gen réparent 10 % plus vite pendant 80/85/90 s [25][4].
- **Interactions, DR** : bonus de vitesse de réparation → DR 9.6.0 probable avec d'autres bonus identiques (HYPOTHESIS).
- **Synergies** : Teamwork: Full Circuit, Prove Thyself (duo sur gen).
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur** :
  - Équipe qui travaille à deux sur les gens.
- **Quand elle n'en produit pas** :
  - Joueurs dispersés (SoloQ solitaire), ou après les gens.
- **Écart avec le seed** : LIVE NON VÉRIFIABLE ; PTB OK
- **Sources** : [25][4]

### Deadline — Alan Wake
- **Statut** : LIVE 10.1.2a (supposé)
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : Injured → skill checks 6/8/10 % plus fréquents, placés au hasard, pénalité d'échec réduite de 50 % — UNCERTAIN
- **Valeurs / CD / conditions / limites** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
- **PTB 10.2.0** : non vérifiable — UNCERTAIN
- **Interactions, DR** : fréquence de skill checks → combinable avec Stake Out/Hyperfocus (HEURISTIC).
- **Synergies** : No Mither, This Is Not Happening, Technician.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur** :
  - Build Injured/Great skill checks.
- **Quand elle n'en produit pas** :
  - Joueur sain ; skill checks aléatoires = plus de ratés.
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune (seed)

### Hardened — Lara Croft
- **Statut** : LIVE 10.1.2a (supposé)
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : après avoir béni/purifié un totem ET ouvert un coffre, chaque cri révèle l'aura du tueur 3/4/5 s — UNCERTAIN
- **Valeurs / CD / conditions / limites** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN. Question ouverte : le cri est-il supprimé ou non ?
- **PTB 10.2.0** : non vérifiable — UNCERTAIN
- **Interactions, DR** : anti-synergie logique avec Calm Spirit (plus de cris) — HYPOTHESIS.
- **Synergies** : Plunderer's Instinct, Small Game ; contre Doctor/Infectious Fright.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 0 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Contre Doctor / builds à cris, après un détour coffre + totem.
- **Quand elle n'en produit pas** :
  - Conditions d'activation coûteuses ; tueurs qui ne font pas crier.
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune (seed)

### Invocation: Treacherous Crows — Taurie Cain
- **Statut** : LIVE 10.1.2a (supposé)
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : invocation de 60 s au sous-sol ; vous devenez Injured et Broken pour le reste de la partie ; quand le tueur effraie un corbeau près d'un survivant, son aura est révélée 1/1,5/2 s — UNCERTAIN
- **Valeurs / CD / conditions / limites** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; bénéficiaires de la révélation (vous ou toute l'équipe) non vérifiés.
- **PTB 10.2.0** : non vérifiable — UNCERTAIN
- **Interactions, DR** : Broken permanent → anti-synergie avec soins et perks Healthy (FACT sur Broken ; application à cette perk = seed).
- **Synergies** : No Mither (déjà Broken), builds Injured.
- **Difficulté** : 3
- **Valeur (HEURISTIC)** : SoloQ 0 · SWF 0 · chase 0 · macro 0 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Parties fun / défi ; info marginale sur des cartes riches en corbeaux.
- **Quand elle n'en produit pas** :
  - Toute partie sérieuse : 60 s au sous-sol + Broken permanent.
- **Écart avec le seed** : NON VÉRIFIABLE (« l'une des pires perks » = EXPERT OPINION non sourcée)
- **Sources** : aucune (seed)

### Duty of Care — Orela Rose
- **Statut** : LIVE 10.1.2a (supposé)
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : protection hit pris en bonne santé → alliés à 12 m gagnent 25 % de Haste pendant 4/5/6 s — UNCERTAIN
- **Valeurs / CD / conditions / limites** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; valeur « 25 % Haste » inhabituellement haute → à vérifier en priorité.
- **PTB 10.2.0** : non vérifiable — UNCERTAIN
- **Interactions, DR** : Haste soumis aux DR 9.6.0 entre sources identiques ; cumul avec protections d'unhook (10 % Haste) → HYPOTHESIS.
- **Synergies** : Borrowed Time, We're Gonna Live Forever, Babysitter (non vérifié).
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Joueur « bodyblocker » qui prend des coups pour un allié blessé.
- **Quand elle n'en produit pas** :
  - Pas de protection hit dans la partie.
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune (seed)

### Rapid Response — Orela Rose
- **Statut** : LIVE 10.1.2a (supposé)
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : sortie rapide de casier → Exhausted 30/25/20 s ; chaque fois que vous devenez Exhausted, vous voyez le tueur 2 s — UNCERTAIN
- **Valeurs / CD / conditions / limites** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
- **PTB 10.2.0** : non vérifiable — UNCERTAIN
- **Interactions, DR** : anti-synergie évidente avec les perks d'Exhaustion (Sprint Burst, Lithe, Dead Hard) si l'Exhaustion est imposée (HYPOTHESIS, selon libellé exact).
- **Synergies** : Vigil (réduction d'Exhaustion) — HYPOTHESIS.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 0 · SWF 0 · chase 0 · macro 0 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Info ponctuelle sur le tueur avec une perk d'Exhaustion (seed).
- **Quand elle n'en produit pas** :
  - Si elle bloque votre perk d'Exhaustion principale.
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune (seed)

### Apocalyptic Ingenuity — Rick Grimes
- **Statut** : LIVE 10.1.2a (retouchée en 10.1.0 : « 1 coffre » d'après l'audit)
- **Effet LIVE** : partiellement vérifié. Audit (notes 10.1.0) : condition ramenée à **1 coffre** [12]. Reste — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — (3 s près d'une palette cassée → palette fragile ; aura des palettes cassées à 24/28/32 m) = seed, UNCERTAIN.
- **Valeurs / CD / conditions / limites** : 1 coffre (10.1.0, VERIFIED via audit) ; le reste seed.
- **PTB 10.2.0** : non vérifiable — UNCERTAIN
- **Interactions, DR** : palette « fragile » (casse au lieu d'étourdir ? non vérifié).
- **Synergies** : Plunderer's Instinct, Appraisal, Ace in the Hole.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Carte dépouillée de palettes en milieu de partie.
- **Quand elle n'en produit pas** :
  - Début de partie (palettes intactes) ; tueurs qui ignorent les palettes fragiles.
- **Écart avec le seed** : OK sur « 1 coffre » ; reste NON VÉRIFIABLE
- **Sources** : [12]

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| P29-C01 | Premonition : cône 45°, 36 m, recharge 60/45/30 s | [1][2] | LIVE | STRONG_SECONDARY |
| P29-C02 | Premonition : aura 3 s, recharge 70/65/60 s, désactivée en poursuite | [3][4] | PTB 10.2.0 | STRONG_SECONDARY |
| P29-C03 | Slippery Meat : +3 tentatives, +2/3/4 % | [6] | LIVE | STRONG_SECONDARY |
| P29-C04 | Slippery Meat : décrochage par allié 90/95/100 % plus rapide + 5 % Haste | [3][4] | PTB 10.2.0 | STRONG_SECONDARY |
| P29-C05 | Small Game : 45°, 8/10/12 m, recharge 14/12/10 s, −5°/jeton (max −25°) | [7] | LIVE | STRONG_SECONDARY |
| P29-C06 | Small Game : aura des totems à 10/11/12 m | [3][4] | PTB 10.2.0 | STRONG_SECONDARY |
| P29-C07 | TINH : Great +10/20/30 % en réparation et soin, Injured requis | [8] | LIVE | STRONG_SECONDARY |
| P29-C08 | TINH : Good +150/175/200 %, Great +30 %, sans condition Injured | [9] | PTB 10.2.0 | UNCERTAIN |
| P29-C09 | Calm Spirit : totems/coffres 40/35/30 % plus lents | [10] | LIVE | STRONG_SECONDARY |
| P29-C10 | Calm Spirit : +8/9/10 % sur totems/coffres | [4] | PTB 10.2.0 | STRONG_SECONDARY |
| P29-C11 | Technician : −16 m de bruit, pénalité +4/3/2 % | [12][11] | LIVE (10.1.0) | VERIFIED_MULTI_SOURCE |
| P29-C12 | No Mither : gémissements −100 % (9.2.0), récupération +15/20/25 % | [13] | LIVE | STRONG_SECONDARY |
| P29-C13 | Ace in the Hole : 100 % add-on ≤ Very Rare, 10/25/50 % second ≤ Uncommon | [14] | LIVE | STRONG_SECONDARY |
| P29-C14 | Up the Ante : +1/2/3 % par jeton, max 3/6/9 % | [15] | LIVE | STRONG_SECONDARY |
| P29-C15 | Visionary : 32 m, désactivée 20/18/16 s | [16] | LIVE | STRONG_SECONDARY |
| P29-C16 | Better Together : 20/25/30 s, portée illimitée (9.1.0) | [17] | LIVE | STRONG_SECONDARY |
| P29-C17 | Camaraderie : 16 m, pause 26/30/34 s | [18] | LIVE | STRONG_SECONDARY |
| P29-C18 | Red Herring : 1 s, recharge 25/20/15 s | [19] | LIVE | STRONG_SECONDARY |
| P29-C19 | Rookie Spirit : 5/4/3 skill checks | [20] | LIVE | STRONG_SECONDARY |
| P29-C20 | Better Than New : 12/14/16 % (LIVE) → 40/45/50 % (PTB) | [21][25][4] | LIVE / PTB 10.2.0 | STRONG_SECONDARY |
| P29-C21 | Low Profile : 70/80/90 s, usage unique | [22] | LIVE | STRONG_SECONDARY |
| P29-C22 | Collective Stealth : 8/12/16 m, 4 s de persistance | [23] | LIVE | STRONG_SECONDARY |
| P29-C23 | Cut Loose : 4/5/6 s, recharge 45 s, 1er saut non silencieux | [24] | LIVE | STRONG_SECONDARY |
| P29-C24 | Friendly Competition : 10 % pendant 80/85/90 s | [25][4] | PTB 10.2.0 | STRONG_SECONDARY |
| P29-C25 | Apocalyptic Ingenuity : condition 1 coffre | [12] | LIVE (10.1.0) | STRONG_SECONDARY (audit) |

## Conflits

#### CONFLICT-P29-01 : Technician, pénalité de skill check raté
- Source A : résumé wiki Technician [11] : « increased by 4/3/2% »
- Source B : même résumé, section historique : « decreased from +3/+4/+5% to +2/+3/+4% »
- Hypothèse : B liste les tiers dans l'ordre inverse (III→I) ; valeurs identiques en ensemble (5/4/3 → 4/3/2).
- Résolution : **4/3/2 % (tier I→III)**, confirmé par l'audit phase 0 (notes 10.1.0) [12].

#### CONFLICT-P29-02 : Premonition PTB, portée
- Source A : seed p32 : « directionnelle, 32 m »
- Source B : résumés patched.gg / timesaver [3][4] : aura 3 s, recharge 70/65/60 s, désactivée en poursuite ; aucune portée citée.
- Hypothèse : 32 m peut être exact mais absent des résumés.
- Résolution : UNRESOLVED

#### CONFLICT-P29-03 : This Is Not Happening PTB, valeurs
- Source A : résumé [9] : Good +150/175/200 %, Great « 30 % (reduced from 10/20/30 %) », condition Injured supprimée.
- Source B : seed : « zones good et great agrandies » (sans chiffres) ; timesaver : « buffed to fit the same niche as Stake Out » [4].
- Hypothèse : Great passe à 30 % fixe sur tous les tiers (hausse pour I/II), formulation du résumé erronée.
- Résolution : UNRESOLVED (valeurs exactes)

#### CONFLICT-P29-04 : Red Herring, activation et recharge
- Source A : premier résumé [19] : 3 s, recharge 60/50/40 s
- Source B : second résumé [19] : buff 3 → 1 s, 60/50/40 → 25/20/15 s
- Hypothèse : A = texte d'avant le buff.
- Résolution : **1 s / 25/20/15 s** (LIVE), STRONG_SECONDARY.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Technician | bruit −8 m, pénalité +5/4/3 % | −16 m, +4/3/2 % (10.1.0) | FAUX (OBSOLETE) |
| Ace in the Hole | add-on « rare ou mieux », 2e à 50/75/100 % | ≤ Very Rare (100 %), 2e ≤ Uncommon à 10/25/50 % | FAUX |
| Slippery Meat | 6 tentatives, +2/3/4 % | exact, mais omet qu'elle débloque l'auto-décrochage (9.0.0) | IMPRÉCIS |
| Up the Ante | +1/2/3 % par allié vivant | exact ; omet max 3/6/9 % et le déblocage d'auto-décrochage | IMPRÉCIS |
| This Is Not Happening (LIVE) | Great +10/20/30 % blessé | + réparation et soin seulement | IMPRÉCIS mineur |
| This Is Not Happening (PTB) | good et great agrandies | Good +150/175/200 %, Great 30 %, sans Injured (UNCERTAIN) | OK (non chiffré) |
| Premonition (PTB, p32) | directionnelle, 32 m | aura 3 s, CD 70/65/60 s, off en poursuite ; 32 m non trouvé | NON VÉRIFIABLE (portée) |
| Slippery Meat (PTB, p32) | +5 % Haste | + décrochage par allié 90/95/100 % plus rapide | IMPRÉCIS |
| Small Game (PTB) | aura 10/11/12 m | idem | OK |
| Calm Spirit (PTB) | 8/9/10 % plus rapide | idem | OK |
| Better Than New (PTB) | 40/45/50 % | idem | OK |
| Friendly Competition (PTB) | 10 % pendant 80/85/90 s | idem | OK |
| Friendly Competition (LIVE) | 5 % pendant 100/110/120 s | non vérifié (quota) | NON VÉRIFIABLE |
| Low Profile | autres à terre ou accrochés | + portés ; usage unique | IMPRÉCIS mineur |
| Cut Loose | saut moyen ou rapide | « Rush Vault » ; 1er saut non silencieux | IMPRÉCIS / UNCERTAIN |
| Red Herring | 1 s, 25/20/15 s | idem | OK |
| Premonition, Small Game, Calm Spirit, No Mither, Visionary, Better Together, Camaraderie, Rookie Spirit, Better Than New, Collective Stealth (LIVE) | valeurs seed | concordantes | OK |
| Deadline, Hardened, Treacherous Crows, Duty of Care, Rapid Response | valeurs seed | non vérifiées (quota) | NON VÉRIFIABLE |
| Apocalyptic Ingenuity | 1 coffre, 3 s, 24/28/32 m | 1 coffre confirmé (audit) ; reste non vérifié | OK partiel / NON VÉRIFIABLE |
| Historique 9.1.0 « buff de Better Together » | — | 8/9/10 → 20/25/30 s, portée retirée | OK |
| Historique 9.2.0 « No Mither à 100 % » | — | gémissements 100 % | OK |
| Historique 10.1.0 « Technician retouchée » | — | oui, mais la p29 affiche les valeurs d'avant | Incohérence interne du seed |

## Questions ouvertes

1. Vérifier (quand le quota WebSearch le permet) : Friendly Competition LIVE, Deadline, Hardened, Invocation: Treacherous Crows, Duty of Care (valeur « 25 % Haste » suspecte), Rapid Response, Apocalyptic Ingenuity (3 s, 24/28/32 m, nature de la palette fragile).
2. PTB 10.2.0 : liste complète des 58 perks non consultée → confirmer qu'aucune autre perk de cette page (Technician, No Mither, Visionary, Red Herring…) n'y figure.
3. Premonition PTB : portée exacte (32 m ?). TINH PTB : valeurs exactes des zones Great.
4. Cut Loose : le « Rush Vault » inclut-il le saut moyen ?
5. Luck (Slippery Meat, Up the Ante) et vitesses de soin/réparation (Better Than New, Friendly Competition) : soumis aux DR 9.6.0 ? (liste DR du manuel 9.6.1 non consultée).
6. No Mither : suppression des flaques de sang non re-confirmée par le résumé lu.

## Sources

[1] Premonition — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Premonition — consulté le 27/09/2026 via WebSearch (résumé)
[2] Premonition — DBD Wiki Fandom — https://deadbydaylight.fandom.com/wiki/Premonition — consulté le 27/09/2026 via WebSearch
[3] Dead by Daylight v10.2.0 PTB — Perk Overhaul | Patched — https://patched.gg/games/dead-by-daylight/1020-ptb-patch-notes — consulté le 27/09/2026 via WebSearch
[4] DBD Perk Changes: All 58 Killer and Survivor Perks in the 10.2.0 PTB — timesaver.gg — https://timesaver.gg/blog/dbd-perk-changes-10-2-0 — consulté le 27/09/2026 via WebSearch
[5] Dead by Daylight - 10.2.0 | PTB Patch Notes — Steam News — https://store.steampowered.com/news/app/381210/view/706656822950364293 — consulté le 27/09/2026 via WebSearch (URL renvoyée, contenu non résumé)
[6] Slippery Meat — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Slippery_Meat — consulté le 27/09/2026 via WebSearch
[7] Small Game — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Small_Game — consulté le 27/09/2026 via WebSearch
[8] This Is Not Happening — DBD Wiki — https://deadbydaylight.wiki.gg/wiki/This_Is_Not_Happening — consulté le 27/09/2026 via WebSearch
[9] Dead by Daylight 10.2.0 PTB Patch Notes — PatchTLDR — https://patchtldr.com/en/dead-by-daylight/patch-1020-ptb — consulté le 27/09/2026 via WebSearch
[10] Calm Spirit — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Calm_Spirit — consulté le 27/09/2026 via WebSearch
[11] Technician — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Technician — consulté le 27/09/2026 via WebSearch
[12] Audit phase 0 du projet (notes officielles 9.0.0, 9.6.0, 10.1.0 déjà vérifiées) — `kb/seed/audit_phase0.txt` l. 700-760, 3265-3335 — lu le 27/09/2026
[13] No Mither — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/No_Mither — consulté le 27/09/2026 via WebSearch
[14] Ace in the Hole — DBD Wiki Fandom — https://deadbydaylight.fandom.com/wiki/Ace_in_the_Hole — consulté le 27/09/2026 via WebSearch
[15] Up the Ante — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Up_the_Ante — consulté le 27/09/2026 via WebSearch
[16] Visionary — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Visionary — consulté le 27/09/2026 via WebSearch
[17] Better Together — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Better_Together — consulté le 27/09/2026 via WebSearch
[18] Camaraderie — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Camaraderie — consulté le 27/09/2026 via WebSearch
[19] Red Herring — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Red_Herring — consulté le 27/09/2026 via WebSearch (2 requêtes)
[20] Rookie Spirit — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Rookie_Spirit — consulté le 27/09/2026 via WebSearch
[21] Better than New — DBD Wiki Fandom — https://deadbydaylight.fandom.com/wiki/Better_than_New — consulté le 27/09/2026 via WebSearch
[22] Low Profile — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Low_Profile — consulté le 27/09/2026 via WebSearch
[23] Teamwork: Collective Stealth — DBD Wiki Fandom — https://deadbydaylight.fandom.com/wiki/Teamwork:_Collective_Stealth — consulté le 27/09/2026 via WebSearch
[24] Cut Loose — Official DBD Wiki — https://deadbydaylight.wiki.gg/wiki/Cut_Loose — consulté le 27/09/2026 via WebSearch
[25] 10.2.0 | PTB Patch Notes — SteamPeaks — https://steampeaks.com/news/706656822950364293 — consulté le 27/09/2026 via WebSearch
[26] Dev Update: 10.2.0 Perks Update — BHVR forums — https://forums.bhvr.com/dead-by-daylight/discussion/472297/dev-update-10-2-0-perks-update — consulté le 27/09/2026 via WebSearch (URL renvoyée, non résumée)
