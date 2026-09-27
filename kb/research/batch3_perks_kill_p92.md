# Lot 3 — Perks tueur vues du survivant, page 92 du guide seed (tier B)

**Couverture : 23/23 perks re-vérifiées sur page wiki complète (27/09/2026) ; dont 5 confirmées par note officielle (valeurs : Terminus, Call of Brine, Oppression, Lay Waste, Hex: Blood Favour).**

Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 (15-21/09/2026) = **non LIVE**, toujours étiqueté PTB.
Méthode (lot 12a, re-vérification du 27/09/2026) : pages wiki.gg complètes via l'API MediaWiki (`kb/sources/wiki_perks_digest.md`) + notes officielles BHVR 9.0.0 → PTB 10.2.0 en texte complet (`kb/sources/patches/official_*.txt`). Confiance : STRONG_SECONDARY (wiki seul) ; VERIFIED_MULTI_SOURCE (wiki + note officielle concordante) ; VERIFIED_PRIMARY (note officielle seule, explicite).
Notes de menace et toutes les lignes analytiques (indice, soupçonner, confirmer, adaptation, counterplay, erreurs, menace, matériel de déduction) = **HEURISTIC / EXPERT OPINION** (raisonnement à partir de l'effet, pas des mesures).

Périmètre (23 perks) : Brutal Strength, Enduring, Sloppy Butcher, Friends 'til the End, Starstruck, No Way Out, Coup de Grâce, Terminus, Hex: Undying, Hex: Pentimento, Hex: Devour Hope, Hex: Blood Favour, Thanatophobia, Deathbound, Call of Brine, Overcharge, Oppression, Lay Waste, Rapid Brutality, Lightborn, Nemesis, Gearhead, I'm All Ears.

> **Historique** : la 1re passe (lot 3) n'avait vérifié que 8 perks par WebSearch (+ Call of Brine via l'audit), quota épuisé. La re-vérification 12a couvre les 23 perks.
> - **PTB 10.2.0** : seule **Hex: Blood Favour** est modifiée dans ce périmètre (wiki + note officielle 559). Lightborn n'apparaît dans la note 559 que dans un correctif de bots.

---

### Brutal Strength — Trapper
- **Statut / catégorie** : LIVE 10.1.2a · chase (anti-palette) + slowdown léger (coup de pied)
- **Effet LIVE + valeurs** : vitesse d'action +10/15/20 % pour casser palettes au sol et murs cassables, et pour endommager les générateurs [26] — STRONG_SECONDARY (la note 9.5.0 [22] ne fait que réécrire la description)
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct (pas d'icône). Indirect : casse de palette visiblement plus rapide que la normale (base 2,34 s, audit) ; coup de pied de gen plus court (base 1,8 s, audit).
- **Soupçonner** (HEURISTIC) : palette cassée « trop vite » + tueur M1 sans pouvoir anti-palette → plausible.
- **Confirmer** (HEURISTIC) : écran de fin (perks du tueur) ; au mieux, chronométrer à l'œil plusieurs casses.
- **Adaptation robuste** (HEURISTIC) : ne pas compter sur la casse pour gagner de la distance ; privilégier les tiles à fenêtre (vault) plutôt que les chaînes de palettes déjà jetées.
- **Counterplay** (HEURISTIC) : ne pas jeter les palettes trop tôt ; enchaîner vers une autre tile pendant la casse.
- **Erreurs à ne pas faire** (HEURISTIC) : lâcher une palette « gratuite » en pensant gagner 2+ s de distance.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK (valeurs et cibles correctes). Taux d'usage « 6,5 %, n°14 » vs 7,63 % n°13 au moment de la recherche [3] : DATA volatile, pas une erreur.
- **Sources** : [26][22] (anciennes : [1][2][3])

### Enduring — Hillbilly
- **Statut / catégorie** : LIVE 10.1.2a · chase (anti-palette)
- **Effet LIVE + valeurs** : durée des étourdissements de palette −40/45/50 % ; sans effet quand le tueur est étourdi en portant un survivant [27] — STRONG_SECONDARY. Base de 2 s (→ 1,2/1,1/1 s) : valeur de la 1re passe, non re-vérifiée ici. La clause « ne s'applique plus aux stuns de perks » (résumé de recherche [4]) **n'apparaît pas** dans le texte LIVE du wiki → UNCERTAIN.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct. Indirect : le tueur se relève très vite après un stun de palette (~1 s au lieu de 2 s).
- **Soupçonner** (HEURISTIC) : stun de palette suivi d'un coup quasi immédiat, répété ; souvent avec Spirit Fury ou Brutal Strength.
- **Confirmer** (HEURISTIC) : écran de fin. Un stun en portant un survivant (sauvetage) garde sa durée normale.
- **Adaptation robuste** (HEURISTIC) : après un stun, **courir immédiatement** vers la tile suivante, ne pas faire de « palette → re-vault ».
- **Counterplay** (HEURISTIC) : utiliser la palette comme mur (drop précoce) plutôt que comme stun ; les sauvetages par palette restent pleins.
- **Erreurs à ne pas faire** (HEURISTIC) : rester à la palette pour la « jouer » une 2ᵉ fois après un stun.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1 (2 avec Spirit Fury)
- **Écart avec le seed** : OK (40/45/50 %, exception « en portant »).
- **Sources** : [27] (anciennes : [4][5])

### Sloppy Butcher — Générale
- **Statut / catégorie** : LIVE 10.1.2a · anti-soin + info (flaques de sang)
- **Effet LIVE + valeurs** : après un coup de base, Haemorrhage + Mangled pendant 70/80/90 s ; fréquence des flaques de sang +50/75/100 % ; régression de la progression de soin partielle +25 % (fixe) ; Mangled à durée (et non « jusqu'au soin ») [28] — STRONG_SECONDARY (page complète, cohérente avec l'audit)
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : **oui, direct** — icônes de statut **Mangled** et **Haemorrhage** sur le HUD après un coup de base (hors pouvoir/add-on qui les applique aussi).
- **Soupçonner** (HEURISTIC) : les deux icônes apparaissent après un M1 sur un tueur dont le pouvoir ne les donne pas.
- **Confirmer** (HEURISTIC) : les icônes + un compteur/durée qui expire (~70-90 s) = Sloppy Butcher quasi certain.
- **Adaptation robuste** (HEURISTIC) : ne pas lancer un soin partiel qu'on risque d'interrompre (la progression fuit) ; soigner en une fois ou attendre l'expiration si le soin n'est pas urgent.
- **Counterplay** (HEURISTIC) : soins dans un coin sûr ; kit médical ; faire des gens pendant que le timer expire ; attention aux flaques qui trahissent la trace.
- **Erreurs à ne pas faire** (HEURISTIC) : s'interrompre à 80 % de soin ; laisser une traînée de sang vers un gen ou un allié.
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : OK sur l'essentiel (70/80/90 s, +25 %). IMPRÉCIS : le seed omet l'effet flaques de sang (+50/75/100 %), utile en déduction.
- **Sources** : [28] (anciennes : [6][7])

### Friends 'til the End — Good Guy
- **Statut / catégorie** : LIVE 10.1.2a · info/aura + Exposed (obsession)
- **Effet LIVE + valeurs** : accrocher un non-Obsession → aura de l'Obsession révélée 6/8/10 s et Obsession Exposed 20 s ; accrocher l'Obsession → un survivant aléatoire crie (position révélée) et devient la nouvelle Obsession [29] — STRONG_SECONDARY
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : icône d'**Obsession** sur un survivant dès le début ; statut **Exposed** chez l'Obsession après un accrochage d'un autre ; **cri** d'un survivant quand l'Obsession est accrochée ; changement d'Obsession.
- **Soupçonner** (HEURISTIC) : Obsession qui devient Exposed juste après un hook ailleurs, ou cri « aléatoire » au hook de l'Obsession.
- **Confirmer** (HEURISTIC) : Exposed 20 s sur l'Obsession pile au moment d'un hook + tueur qui arrive droit sur elle ; transfert d'Obsession accompagné d'un cri.
- **Adaptation robuste** (HEURISTIC) : si on est l'Obsession et qu'un allié est accroché → se considérer **révélé et one-shot** pendant ~20 s : se cacher derrière un obstacle haut, loin du hook.
- **Counterplay** (HEURISTIC) : l'Obsession ne fait pas le sauvetage pendant la fenêtre Exposed ; distance > vitesse ; Endurance (Off the Record, etc.) convertit le coup en Deep Wound (audit).
- **Erreurs à ne pas faire** (HEURISTIC) : l'Obsession qui reste sur un gen proche du hook au moment où un allié est accroché.
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : OK (seed n'indique pas que le cri révèle la position : IMPRÉCIS mineur).
- **Sources** : [29] (anciennes : [8][9])

### Starstruck — Trickster
- **Statut / catégorie** : LIVE 10.1.2a · Exposed (portage)
- **Effet LIVE + valeurs** : pendant le portage d'un survivant, les autres survivants dans le rayon de terreur sont Exposed ; l'effet persiste 26/28/30 s après avoir quitté le rayon ou après la désactivation (accrochage ou lâcher du porté) ; recharge 60 s [30] — STRONG_SECONDARY
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : **oui** — icône **Exposed** qui apparaît quand on entre dans le rayon de terreur d'un tueur **qui porte**.
- **Soupçonner** (HEURISTIC) : Exposed au contact du rayon pendant un portage (sans Hex allumé ni autre cause).
- **Confirmer** (HEURISTIC) : l'icône Exposed reste ~26-30 s après être sorti du rayon.
- **Adaptation robuste** (HEURISTIC) : ne jamais aller « bodyblock » / flashlight save / sabotage près d'un tueur qui porte sans perk d'Endurance ; rester hors rayon.
- **Counterplay** (HEURISTIC) : sabotage en avance (hook éloigné du rayon), sauvetages seulement après la persistance ; Endurance protège du one-shot (Deep Wound).
- **Erreurs à ne pas faire** (HEURISTIC) : suivre le porteur pour un save ; rester dans le rayon après le hook (on garde Exposed 26-30 s).
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 2 (punit fortement les saves SWF)
- **Écart avec le seed** : OK.
- **Sources** : [30] (anciennes : [10][11])

### No Way Out — Trickster
- **Statut / catégorie** : LIVE 10.1.2a · endgame
- **Effet LIVE + valeurs** : 1 jeton par survivant accroché pour la 1ʳᵉ fois ; portes alimentées → le 1er survivant qui touche un interrupteur déclenche une Loud Noise Notification, et les deux interrupteurs sont bloqués 12 s + 6/9/12 s par jeton, max 36/48/60 s [31] — STRONG_SECONDARY (page complète, cohérente avec l'audit ; aucune note officielle 9.x-10.x)
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : **oui** — interrupteur de porte **bloqué par l'Entité** (griffes/icône de blocage) dès qu'on le touche ; les deux portes bloquées.
- **Soupçonner** (HEURISTIC) : blocage des interrupteurs au premier contact, alors que Blood Warden (qui exige un hook après ouverture) ne peut pas encore agir.
- **Confirmer** (HEURISTIC) : blocage des deux interrupteurs + tueur qui arrive vers la porte (il a eu une notification).
- **Adaptation robuste** (HEURISTIC) : en fin de partie, **toucher l'interrupteur puis s'éloigner** / se cacher ; n'attendre le déblocage qu'à distance ; ne pas considérer la porte comme « sûre ».
- **Counterplay** (HEURISTIC) : garder un survivant jamais accroché réduit les jetons ; tester l'interrupteur tôt (dès la dernière gen) plutôt qu'en chase ; se répartir sur les deux portes après le déblocage.
- **Erreurs à ne pas faire** (HEURISTIC) : venir ouvrir la porte en étant poursuivi ; s'agglutiner à l'interrupteur bloqué.
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : OK (seed omet le plafond 36/48/60 s : IMPRÉCIS mineur).
- **Sources** : [31][18] (anciennes : [12][13])

### Coup de Grâce — Twins
- **Statut / catégorie** : LIVE 10.1.2a · chase (portée de fente)
- **Effet LIVE + valeurs** : +2 jetons par générateur terminé, **max 10 jetons gagnés par partie** ; la fente suivante consomme 1 jeton et gagne +70/75/80 % de portée ; **5 jetons détenus au maximum** à la fois [32] — STRONG_SECONDARY (CONFLICT-3P92-02 résolu : les deux plafonds coexistent)
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : aucune icône. Indirect : **fente anormalement longue** (coup reçu alors qu'on pensait être hors de portée), surtout juste après une gen terminée.
- **Soupçonner** (HEURISTIC) : 2-3 coups « impossibles » à longue portée après les gens terminées.
- **Confirmer** (HEURISTIC) : écran de fin ; la longueur de fente revient à la normale après consommation des jetons.
- **Adaptation robuste** (HEURISTIC) : après chaque gen terminée, **augmenter la marge de distance** (≈+2 m) et ne pas faire de « dead zone » en ligne droite.
- **Counterplay** (HEURISTIC) : les fentes ratées (ou consommées sur des coups dans le vide) brûlent les jetons ; privilégier les virages serrés où la fente longue est inutile. Au plus 10 fentes allongées sur toute la partie.
- **Erreurs à ne pas faire** (HEURISTIC) : courir en ligne droite dans un espace ouvert juste après une gen pop.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK sur 2 jetons / max 5 / 70/75/80 %. Omet le plafond de 10 jetons par partie : IMPRÉCIS mineur.
- **Sources** : [32] (anciennes : [14][15])

### Terminus — Mastermind
- **Statut / catégorie** : LIVE 10.1.2a · endgame (anti-soin)
- **Effet LIVE + valeurs** : portes alimentées → survivants blessés, mourants ou accrochés deviennent Broken jusqu'à l'ouverture d'une porte ; persiste **35/40/45 s** ensuite (était 20/25/30 s avant 9.0.0) [33][20]. Depuis 9.5.0, se déclenche plus tôt pour bloquer les soins simultanés (Adrenaline) [22]. **VERIFIED_MULTI_SOURCE** (wiki + notes 9.0.0 et 9.5.0 ; CONFLICT-3P92-01 résolu).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : **oui** — icône **Broken** qui apparaît à la dernière gen chez tous les blessés/au sol/accrochés.
- **Soupçonner** (HEURISTIC) : Broken simultané pour plusieurs survivants exactement à l'alimentation des portes.
- **Confirmer** (HEURISTIC) : Adrenaline qui ne soigne pas ; Broken qui disparaît ~35-45 s après l'ouverture de la porte.
- **Adaptation robuste** (HEURISTIC) : **se soigner avant la dernière gen** ; en fin de partie, jouer comme si le prochain coup mettait au sol.
- **Counterplay** (HEURISTIC) : ouvrir une porte vite pour lancer le compte à rebours ; éviter de prendre un coup juste avant la dernière gen ; Endurance.
- **Erreurs à ne pas faire** (HEURISTIC) : compter sur Adrenaline pour se soigner ; attendre la porte en étant blessé près du tueur.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1 (forte seulement en synergie NOED / No Way Out)
- **Écart avec le seed** : OK (35/40/45 s). Le « FAUX probable » de la 1re passe venait d'un résumé obsolète (valeur d'avant 9.0.0).
- **Sources** : [33][20][22] (anciennes : [16][17])

### Hex: Undying — Blight
- **Statut / catégorie** : LIVE 10.1.2a · hex (protection d'Hex) + info/aura
- **Effet LIVE + valeurs** : aura d'un survivant révélée tant qu'il est à **2/3/4 m** d'un totem terne ; quand un Hex est **purifié**, il est transféré sur le totem d'Undying, qu'il remplace [34] — STRONG_SECONDARY. « Jetons conservés » (seed) : absent du texte LIVE → UNCERTAIN. Le texte ne parle que de purification (« cleansed ») : un Hex **béni** ne serait pas transféré (HYPOTHESIS).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : totem **Hex allumé** (flammes) ; après purification d'un Hex, son **icône Hex ne disparaît pas** du HUD / l'effet continue ; tueur qui vient vers vous quand vous touchez un totem terne.
- **Soupçonner** (HEURISTIC) : ≥2 totems allumés sur la carte + tueur jouant d'autres Hex.
- **Confirmer** (HEURISTIC) : purifier un Hex et constater que son effet persiste → transfert sur Undying.
- **Adaptation robuste** (HEURISTIC) : **purifier d'abord l'Hex le moins dangereux / celui trouvé en premier** si un 2ᵉ totem allumé existe ; ne pas s'attarder près des totems ternes.
- **Counterplay** (HEURISTIC) : SWF : annoncer la position de tous les totems allumés ; purifier Undying en premier quand il est identifiable (sinon purifier tous les totems allumés). Bénir un Hex (Boon) plutôt que le purifier pourrait éviter le transfert (HYPOTHESIS tirée du texte LIVE, non testée).
- **Erreurs à ne pas faire** (HEURISTIC) : célébrer la purification de Ruin/Devour sans vérifier que l'effet a disparu.
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : OK (transfert, 2/3/4 m). « Jetons conservés » : NON VÉRIFIABLE (absent du texte LIVE).
- **Sources** : [34]

### Hex: Pentimento — Artist
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (vitesse d'action) + hex
- **Effet LIVE + valeurs** : le tueur voit les totems purifiés (aura blanche) et peut les raviver (Rekindled Totem), une fois par totem ; +1 jeton par totem ravivé (max 5). 1 jeton : soin et réparation **−20 %** ; jetons 2 à 5 : +1/2/3 % par jeton, max **24/28/32 %**. Les survivants maudits voient l'aura des totems ravivés à **16 m**. À 5 jetons, tous les totems ravivés sont bloqués pour le reste de la partie [35] — STRONG_SECONDARY (aura 16 m confirmée indirectement par un correctif de la note 9.5.0 [22]). Les totems ravivés ne peuvent pas être bénis (audit [19]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : **aura d'un totem ravivé visible à 16 m** (indice direct) ; **totems purifiés qui se rallument** (flammes réapparaissent) ; statut de pénalité sur le HUD (présumé).
- **Soupçonner** (HEURISTIC) : un totem qu'on a purifié brûle de nouveau.
- **Confirmer** (HEURISTIC) : totem rallumé + ralentissement des réparations/soins.
- **Adaptation robuste** (HEURISTIC) : **purifier moins de totems ternes** (ne pas fournir de carburant) contre un tueur suspecté ; re-purifier immédiatement les totems rallumés.
- **Counterplay** (HEURISTIC) : Boons sur totems non purifiés (un totem ravivé ne peut pas être béni) ; SWF : tracer les totems rallumés.
- **Erreurs à ne pas faire** (HEURISTIC) : purifier systématiquement tous les totems ternes (« totem clean ») contre Pentimento.
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : OK (−20 % puis +1/2/3 %/jeton, blocage à 5) ; interaction Boon OK (audit). Le seed omet l'aura à 16 m pour les survivants : IMPRÉCIS mineur.
- **Sources** : [35][22][19]

### Hex: Devour Hope — Hag
- **Statut / catégorie** : LIVE 10.1.2a · hex + endgame/Exposed
- **Effet LIVE + valeurs** : Hex allumé dès le début de la partie ; +1 jeton par décrochage fait à **≥ 24 m** du tueur (max 5) ; 2 jetons : 10 s après un accrochage, Haste **3/4/5 %** pendant 10 s ; 3 jetons : tous **Exposed** ; 5 jetons : mori à la main [36] — STRONG_SECONDARY
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : totem **Hex allumé** ; icône **Exposed** permanente chez tous à 3 jetons (fort indice) ; icône Hex sur le HUD.
- **Soupçonner** (HEURISTIC) : tueur qui s'éloigne ostensiblement des hooks (pour laisser décrocher) + totem allumé.
- **Confirmer** (HEURISTIC) : Exposed généralisé sans cause visible ; mori sur un survivant.
- **Adaptation robuste** (HEURISTIC) : dès qu'un totem allumé est vu → **purifier en priorité** ; sinon, faire les décrochages lorsque le tueur est proche (< 24 m) plutôt que loin (paradoxal mais ne donne pas de jeton).
- **Counterplay** (HEURISTIC) : chercher le totem tôt ; Endurance contre Exposed ; Small Game / Detective's Hunch pour localiser.
- **Erreurs à ne pas faire** (HEURISTIC) : décrocher dès que le tueur part loin sans penser aux jetons.
- **Menace (HEURISTIC)** : SoloQ 3 / SWF 2
- **Écart avec le seed** : OK.
- **Sources** : [36]

### Hex: Blood Favour — Blight
- **Statut / catégorie** : LIVE 10.1.2a · hex + chase (blocage de palettes)
- **Effet LIVE + valeurs** : Hex allumé dès le début de la partie ; quand un survivant perd un état de santé **par n'importe quel moyen** (coup, pouvoir, mise au sol…), toutes les palettes debout à **24/28/32 m** de lui sont bloquées **15 s** [37]. **VERIFIED_MULTI_SOURCE** (wiki + état « was » de la note officielle 559 : « any damage and 24/28/32m and 15s » [25] ; CONFLICT-3P92-03 résolu).
- **PTB 10.2.0 (NON LIVE)** : ne se déclenche plus que quand un survivant **en bonne santé devient blessé par une attaque de base** ; rayon fixe **32 m** ; durée **13/14/15 s** (les tiers portent sur la durée). Note de dev : combos avec Dissolution et les pouvoirs qui blessent vite, et refus des pallet saves [25][37]. VERIFIED_MULTI_SOURCE.
- **Indice observable (survivant)** (HEURISTIC) : **palettes bloquées par l'Entité** (griffes/pointes) juste après une perte d'état de santé (coup, pouvoir, mise au sol d'un coéquipier) ; totem **Hex allumé** dès le début.
- **Soupçonner** (HEURISTIC) : impossibilité de lâcher une palette dans la seconde qui suit un coup reçu, ou près d'un coéquipier qui vient de tomber (en LIVE, la mise au sol déclenche aussi : pallet save refusé).
- **Confirmer** (HEURISTIC) : palette bloquée qui se libère ~15 s plus tard ; effet qui s'arrête après purification d'un totem.
- **Adaptation robuste** (HEURISTIC) : après un coup, **courir vers une fenêtre** ou loin (hors rayon) plutôt que vers la palette la plus proche ; purifier le totem.
- **Counterplay** (HEURISTIC) : SWF : un allié non poursuivi purifie ; « chase hors rayon » ; utiliser les fenêtres pendant 15 s.
- **Erreurs à ne pas faire** (HEURISTIC) : spammer l'action palette sur une palette bloquée.
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : LIVE OK (24/28/32 m, 15 s). Déclencheur « quand vous blessez » : IMPRÉCIS (LIVE = toute perte d'état de santé, tout moyen). PTB « 32 m » : correct mais incomplet (omet 13/14/15 s et la restriction aux attaques de base) → IMPRÉCIS.
- **Sources** : [37][25]

### Thanatophobia — Nurse
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (vitesse d'action)
- **Effet LIVE + valeurs** : pénalité de vitesse de **purification, réparation et sabotage** pour tous : **1/1,5/2 %** par survivant blessé, mourant ou accroché, max **4/6/8 %** ; si les 4 le sont, **+12 %**, soit **16/18/20 %** [38] — STRONG_SECONDARY. Soumise aux Diminishing Returns (9.6.0) en tant que modificateur de vitesse d'action : HYPOTHESIS.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : une **icône externe de perk** existe pour Thanatophobia (un correctif officiel 10.0.0 corrige son affichage à tort [49]) : elle apparaît pendant les actions ralenties. Indirect : gens lentes quand plusieurs survivants sont blessés.
- **Soupçonner** (HEURISTIC) : tueur qui blesse tout le monde sans chercher le down + progression de gen visiblement lente.
- **Confirmer** (HEURISTIC) : icône externe pendant la réparation (si visible dans ton HUD) ; écran de fin.
- **Adaptation robuste** (HEURISTIC) : **se soigner** (au moins partiellement le groupe) avant de pousser des gens en longue durée.
- **Counterplay** (HEURISTIC) : Resilience compense partiellement ; soins groupés efficaces (Botany, kit).
- **Erreurs à ne pas faire** (HEURISTIC) : rester à 4 blessés sur des gens pendant plusieurs minutes.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK (1/1,5/2 %, +12 %, 16/18/20 %).
- **Sources** : [38][49]

### Deathbound — Executioner
- **Statut / catégorie** : LIVE 10.1.2a · info (anti-soin)
- **Effet LIVE + valeurs** : quand un survivant finit de soigner un allié (1 état de santé), le soigneur **crie** (position révélée) ; il devient **Oblivious** chaque fois qu'il est à plus de **12/8/4 m** du soigné, et voit l'aura du soigné ; l'effet dure jusqu'à ce que le soigneur perde un état de santé (pas de durée fixe) [39]. **Aucune condition de distance au tueur** depuis 8.3.0 (le « ≥ 32 m » du souvenir du modèle est faux). Un seul soigneur affecté à la fois (texte corrigé en 10.1.1 [24]). STRONG_SECONDARY.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : **cri** du soigneur à la fin d'un soin ; ensuite le soigneur **voit l'aura du soigné** (indice direct) et reçoit l'icône **Oblivious** dès qu'il s'en éloigne.
- **Soupçonner** (HEURISTIC) : cri à la fin d'un soin sans autre déclencheur.
- **Confirmer** (HEURISTIC) : Oblivious apparaît après s'être éloigné du survivant soigné.
- **Adaptation robuste** (HEURISTIC) : après le cri, le tueur connaît la position : **bouger tout de suite**. Le soigneur reste Oblivious (loin du soigné) jusqu'à sa prochaine blessure : il doit jouer sans heartbeat et surveiller ses angles.
- **Counterplay** (HEURISTIC) : self-care / kit ; rester à ≤ 12/8/4 m du soigné supprime l'Oblivious, mais regroupe deux cibles : seulement si le tueur n'arrive pas.
- **Erreurs à ne pas faire** (HEURISTIC) : considérer qu'on entend le rayon de terreur pendant Oblivious.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK (cri, Oblivious au-delà de 12/8/4 m) ; « (C+) » sur une page de tier B : IMPRÉCIS (incohérence éditoriale).
- **Sources** : [39][24]

### Call of Brine — Onryō
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (vitesse de régression, DR)
- **Effet LIVE + valeurs** : gen frappé → pendant **90 s**, régression à **130/140/150 %** de la vitesse normale (= 30/40/50 % plus vite), aura jaune pour le tueur, et **Loud Noise Notification** à chaque skill check **Good** réussi sur ce gen [40]. 130/140/150 % depuis 9.0.0 (était 115/120/125 %, 60 → 70 s) [20] ; 90 s depuis 10.1.0 (était 70 s) [23]. **VERIFIED_MULTI_SOURCE**.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct au HUD. Indirect : gen qui régresse **visiblement vite** après un coup de pied ; tueur qui revient pile sur le gen après un skill check **Good**.
- **Soupçonner** (HEURISTIC) : régression rapide + tueur qui « sait » qu'on a repris le gen.
- **Confirmer** (HEURISTIC) : tueur qui arrive systématiquement après un skill check Good sur un gen frappé il y a ≤ 90 s, jamais après un Great.
- **Adaptation robuste** (HEURISTIC) : sur un gen frappé récemment, **viser des Great** (seuls les Good déclenchent l'alerte d'après le texte LIVE) ; sinon **accepter la perte ou reprendre à plusieurs** ; sinon aller sur un autre gen.
- **Counterplay** (HEURISTIC) : laisser passer ~90 s ; tapoter pour stopper la régression exige 5 % de réparation (audit), donc anticiper.
- **Erreurs à ne pas faire** (HEURISTIC) : reprendre seul un gen frappé il y a 10 s alors que le tueur est à 30 m.
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : OK (30/40/50 % plus vite, 90 s, buff 10.1.0, alerte sur skill check Good).
- **Sources** : [40][20][23][18]

### Overcharge — Doctor
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (régression + skill check)
- **Effet LIVE + valeurs** : après un coup de pied, la régression monte de **85 % à 130 %** de la vitesse normale en **30 s** ; le prochain survivant qui touche ce gen reçoit un **skill check difficile** ; en plus, perte instantanée de **2/3/4 %** du gen en sus de la pénalité normale [41] — STRONG_SECONDARY (la note 9.5.0 [22] ne fait que réécrire la description). Le « 75 % » du souvenir du modèle est faux. Le texte LIVE ne précise pas si la perte de 2/3/4 % dépend de l'échec du skill check (UNCERTAIN).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : **skill check immédiat et difficile** (zone réduite) dès qu'on touche un gen frappé.
- **Soupçonner** (HEURISTIC) : skill check instantané au 1er contact avec un gen qui régressait.
- **Confirmer** (HEURISTIC) : répétition du phénomène sur plusieurs gens frappés.
- **Adaptation robuste** (HEURISTIC) : **anticiper le skill check** en touchant un gen frappé (être prêt à valider) ; ne pas laisser un débutant le reprendre.
- **Counterplay** (HEURISTIC) : Hyperfocus/Stake Out augmentent la marge ; reprendre rapidement le gen (régression accélérée avec le temps).
- **Erreurs à ne pas faire** (HEURISTIC) : toucher le gen en regardant ailleurs / en parlant.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK (85 → 130 % en 30 s, 2/3/4 %). « Raté → perte » : IMPRÉCIS possible (le texte LIVE ne lie pas explicitement la perte à l'échec).
- **Sources** : [41][22]

### Oppression — Twins
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (régression multiple)
- **Effet LIVE + valeurs** : frapper un gen fait aussi régresser **jusqu'à 4 autres gens** choisis au hasard ; leurs réparateurs reçoivent un **skill check difficile** ; recharge **45/40/35 s** [42]. 4 gens (était 3) et 45/40/35 s (était 60/50/40 s) depuis 9.2.0 : **VERIFIED_MULTI_SOURCE** (wiki + note officielle 9.2.0 [21]). La « recharge nettement plus longue » du souvenir du modèle est obsolète.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : **skill check difficile soudain** sur un gen alors que le tueur est loin ; **gen qui se met à régresser** (étincelles) sans coup de pied.
- **Soupçonner** (HEURISTIC) : régression spontanée de plusieurs gens après un coup de pied ailleurs.
- **Confirmer** (HEURISTIC) : skill check « difficile » simultané chez plusieurs réparateurs.
- **Adaptation robuste** (HEURISTIC) : rester prêt au skill check en réparant ; en SWF, signaler les gens qui régressent seuls.
- **Counterplay** (HEURISTIC) : reprendre la réparation (5 % stoppe la régression) sur les gens éloignés du tueur.
- **Erreurs à ne pas faire** (HEURISTIC) : quitter un gen qui régresse en pensant que le tueur arrive.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK (4 gens, 45/40/35 s).
- **Sources** : [42][21]

### Lay Waste — Judgment (Chapter 41, 10.1.0)
- **Statut / catégorie** : LIVE 10.1.2a (perk introduite 25/08/2026) · slowdown (régression)
- **Effet LIVE + valeurs** : frapper un gen le fait régresser **+2 % plus vite par Charge** qu'il possède ; recharge **55/50/45 s** après avoir frappé un gen [43]. **VERIFIED_MULTI_SOURCE** (wiki + note officielle 10.1.0 [23], texte identique). Le terme « Charge » n'est défini ni par le wiki ni par la note : unité de progression du gen (HYPOTHESIS) → plus le gen est avancé, plus la régression serait rapide.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct connu. Indirect : régression plus rapide sur les gens très avancés (si « charges » = progression).
- **Soupçonner** (HEURISTIC) : gens avancés qui fondent après un coup de pied.
- **Confirmer** (HEURISTIC) : écran de fin.
- **Adaptation robuste** (HEURISTIC) : ne pas laisser un gen très avancé sans surveillance ; finir les gens plutôt que d'en ouvrir de nouveaux.
- **Counterplay** (HEURISTIC) : 5 % de réparation stoppe la régression (audit).
- **Erreurs à ne pas faire** (HEURISTIC) : laisser un gen à 90 % se faire frapper à répétition.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1 (UNCERTAIN)
- **Écart avec le seed** : OK (texte identique ; sens de « Charge » non tranché).
- **Sources** : [43][23]

### Rapid Brutality — Xenomorph
- **Statut / catégorie** : LIVE 10.1.2a · chase
- **Effet LIVE + valeurs** : chaque coup de base réussi donne **+5 % de Haste** pendant **8/9/10 s** ; le tueur ne peut plus gagner de Bloodlust [44] — STRONG_SECONDARY ; Haste soumise aux DR depuis 9.6.0 (audit)
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : aucune icône. Indirect : après le coup, le tueur **ne perd pas de terrain** (sprint d'Endurance/on-hit rattrapé plus vite) ; jamais de Bloodlust en chase longue (difficile à percevoir).
- **Soupçonner** (HEURISTIC) : réduction de distance anormalement rapide après un coup.
- **Confirmer** (HEURISTIC) : écran de fin.
- **Adaptation robuste** (HEURISTIC) : après un coup, **utiliser le sprint on-hit pour atteindre une tile**, pas un espace ouvert.
- **Counterplay** (HEURISTIC) : chases longues favorables (pas de Bloodlust) ; loops sûres plutôt que ligne droite.
- **Erreurs à ne pas faire** (HEURISTIC) : courir en ligne droite après avoir été frappé.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK.
- **Sources** : [44]

### Lightborn — Hillbilly
- **Statut / catégorie** : LIVE 10.1.2a · anti-objets / info
- **Effet LIVE + valeurs** : immunité à l'aveuglement par **lampes torches, pétards, Flash Grenade et Blast Mine** ; les survivants qui tentent de l'aveugler (par tout moyen) sont révélés **6/8/10 s** [45] — STRONG_SECONDARY
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (qui ne la cite que pour un correctif de bots) (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : le tueur **ne réagit pas** à la lampe/pétard (pas d'animation d'aveuglement) — indice fort.
- **Soupçonner** (HEURISTIC) : un flash réussi sans animation.
- **Confirmer** (HEURISTIC) : 2ᵉ tentative sans effet + tueur qui vient droit sur le lanceur.
- **Adaptation robuste** (HEURISTIC) : **arrêter toute tentative d'aveuglement** dès le 1ᵉʳ échec (Flash Grenade et Blast Mine inclus) ; garder la lampe pour la lumière/Boons ou abandonner l'objet.
- **Counterplay** (HEURISTIC) : bodyblock, sabotage, palettes pour les saves.
- **Erreurs à ne pas faire** (HEURISTIC) : rester à portée pour retenter un flash.
- **Menace (HEURISTIC)** : SoloQ 0 / SWF 1
- **Écart avec le seed** : OK (6/8/10 s).
- **Sources** : [45][25]

### Nemesis — Oni
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (obsession)
- **Effet LIVE + valeurs** : un survivant (non-Obsession) qui aveugle le tueur (tout moyen) ou l'étourdit avec une **palette ou un casier** devient l'Obsession. **À chaque changement d'Obsession, quelle qu'en soit la cause**, la nouvelle Obsession est **Oblivious 40/50/60 s** et son aura est révélée **8 s** (4 s avant 8.6.0) [46] — STRONG_SECONDARY
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : **icône Obsession** qui passe sur soi (après un stun/flash, mais aussi après tout autre transfert d'Obsession) + icône **Oblivious**.
- **Soupçonner** (HEURISTIC) : Oblivious qui accompagne chaque transfert d'Obsession, y compris ceux causés par d'autres perks (Friends 'til the End, Furtive Chase, Celestial Witness…).
- **Confirmer** (HEURISTIC) : Oblivious simultané + tueur qui vient droit sur soi.
- **Adaptation robuste** (HEURISTIC) : après un stun, **supposer que le tueur voit où l'on va** : changer de direction hors de sa ligne de vue ; ne pas se fier au rayon de terreur pendant ~1 min.
- **Counterplay** (HEURISTIC) : éviter les stuns « gratuits » inutiles ; SWF : informer l'Obsession de la position du tueur.
- **Erreurs à ne pas faire** (HEURISTIC) : se cacher derrière un mur en comptant sur le cœur pendant l'Oblivious.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK (40/50/60 s, 8 s). Le seed omet que tout changement d'Obsession déclenche l'effet : IMPRÉCIS mineur.
- **Sources** : [46]

### Gearhead — Deathslinger
- **Statut / catégorie** : LIVE 10.1.2a · info/aura
- **Effet LIVE + valeurs** : quand un survivant perd un état de santé (tout moyen), Gearhead s'active **30 s** ; pendant ce temps, tout skill check **Good** réussi en réparation révèle l'aura du réparateur **6/7/8 s** [47] — STRONG_SECONDARY. Le texte cite uniquement « Good Skill Check » : les Great ne déclenchent pas (lecture du texte).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct (la victime ne voit pas que son aura est lue). Indirect : tueur qui arrive pile sur le gen juste après un coup porté ailleurs.
- **Soupçonner** (HEURISTIC) : un allié vient d'être frappé + le tueur arrive sur votre gen ~10-20 s plus tard.
- **Confirmer** (HEURISTIC) : Distortion qui perd un jeton sur skill check ; écran de fin.
- **Adaptation robuste** (HEURISTIC) : dans les ~30 s suivant un coup, **viser des Great** (non déclencheurs d'après le texte LIVE) ou lâcher le gen.
- **Counterplay** (HEURISTIC) : Distortion ; rotation de gen quand un allié prend un coup.
- **Erreurs à ne pas faire** (HEURISTIC) : réparer en ratant la moitié des skill checks juste après qu'un allié a été touché.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK (30 s, Good, 6/7/8 s).
- **Sources** : [47]

### I'm All Ears — Ghost Face
- **Statut / catégorie** : LIVE 10.1.2a · info/aura
- **Effet LIVE + valeurs** : un **saut rapide (Rushed Vault)** à **48 m** ou moins du tueur révèle l'aura du survivant **8 s** ; recharge **60/45/30 s** [48] — STRONG_SECONDARY. Le texte LIVE ne cite **que les sauts** (pas les casiers).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct. Indirect : le tueur change de trajectoire juste après un saut rapide.
- **Soupçonner** (HEURISTIC) : après un vault rapide hors de sa vue, le tueur coupe le bon chemin.
- **Confirmer** (HEURISTIC) : Distortion qui perd un jeton ; écran de fin.
- **Adaptation robuste** (HEURISTIC) : **sauts lents** (pas de sprint sur la fenêtre/palette) quand le tueur est à ≤ 48 m et ne te voit pas. L'entrée rapide en casier n'est pas concernée d'après le texte LIVE.
- **Counterplay** (HEURISTIC) : Distortion ; casser la ligne après le vault (changer de direction).
- **Erreurs à ne pas faire** (HEURISTIC) : sauter une fenêtre en sprint pour « couper » alors que le tueur est à ≤ 48 m et t'a perdu de vue.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK (48 m, 8 s, 60/45/30 s). **FAUX** pour « action rapide (casier, …) » : seuls les sauts rapides déclenchent.
- **Sources** : [48]

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| 3P92-C01 | Brutal Strength : casse palettes/murs et coup de pied de gen +10/15/20 % | [26] | LIVE 10.1.2a | STRONG_SECONDARY |
| 3P92-C02 | Enduring : stun de palette −40/45/50 %, inactif en portant | [27] | LIVE | STRONG_SECONDARY |
| 3P92-C03 | Sloppy Butcher : Haemorrhage + Mangled 70/80/90 s, flaques +50/75/100 %, régression de soin +25 % | [28] | LIVE | STRONG_SECONDARY |
| 3P92-C04 | Friends 'til the End : aura Obsession 6/8/10 s + Exposed 20 s ; hook Obsession → cri + nouvelle Obsession | [29] | LIVE | STRONG_SECONDARY |
| 3P92-C05 | Starstruck : Exposed dans le TR pendant portage, persiste 26/28/30 s, recharge 60 s | [30] | LIVE | STRONG_SECONDARY |
| 3P92-C06 | No Way Out : 12 s + 6/9/12 s/jeton, max 36/48/60 s, Loud Noise Notification | [31][18] | LIVE | STRONG_SECONDARY (wiki complet + audit ; aucune note officielle) |
| 3P92-C07 | Coup de Grâce : +2 jetons/gen, max 10/partie, max 5 détenus, fente +70/75/80 % | [32] | LIVE | STRONG_SECONDARY |
| 3P92-C08 | Terminus : Broken jusqu'à l'ouverture + 35/40/45 s (buff 9.0.0) ; déclenchement anticipé 9.5.0 | [33][20][22] | LIVE | VERIFIED_MULTI_SOURCE |
| 3P92-C09 | Call of Brine : 130/140/150 % pendant 90 s, alerte sur skill check Good | [40][20][23] | LIVE (10.1.0) | VERIFIED_MULTI_SOURCE |
| 3P92-C10 | Pentimento : −20 % puis +1/2/3 %/jeton (max 24/28/32 %), aura 16 m, blocage à 5 jetons ; totems ravivés non bénissables | [35][19] | LIVE | STRONG_SECONDARY |
| 3P92-C11 | Hex: Undying : aura à 2/3/4 m des ternes, transfert à la purification | [34] | LIVE | STRONG_SECONDARY |
| 3P92-C12 | Hex: Devour Hope : ≥ 24 m, Haste 3/4/5 %, Exposed à 3, mori à 5 | [36] | LIVE | STRONG_SECONDARY |
| 3P92-C13 | Hex: Blood Favour : toute perte d'état de santé, palettes à 24/28/32 m bloquées 15 s | [37][25] | LIVE | VERIFIED_MULTI_SOURCE |
| 3P92-C14 | Hex: Blood Favour : sain → blessé par attaque de base, 32 m, 13/14/15 s | [25][37] | PTB 10.2.0 (NON LIVE) | VERIFIED_MULTI_SOURCE |
| 3P92-C15 | Thanatophobia : 1/1,5/2 %/survivant (max 4/6/8 %), +12 % à 4 → 16/18/20 % ; icône externe | [38][49] | LIVE | STRONG_SECONDARY |
| 3P92-C16 | Deathbound : cri, Oblivious au-delà de 12/8/4 m, pas de condition de distance au tueur | [39][24] | LIVE | STRONG_SECONDARY |
| 3P92-C17 | Overcharge : 85 → 130 % en 30 s, skill check difficile, −2/3/4 % | [41] | LIVE | STRONG_SECONDARY |
| 3P92-C18 | Oppression : jusqu'à 4 gens, recharge 45/40/35 s | [42][21] | LIVE (9.2.0) | VERIFIED_MULTI_SOURCE |
| 3P92-C19 | Lay Waste : +2 % de régression par Charge, recharge 55/50/45 s | [43][23] | LIVE (10.1.0) | VERIFIED_MULTI_SOURCE |
| 3P92-C20 | Rapid Brutality : +5 % Haste 8/9/10 s par coup de base, pas de Bloodlust | [44] | LIVE | STRONG_SECONDARY |
| 3P92-C21 | Lightborn : immunité lampes/pétards/Flash Grenade/Blast Mine, aura 6/8/10 s | [45] | LIVE | STRONG_SECONDARY |
| 3P92-C22 | Nemesis : Oblivious 40/50/60 s + aura 8 s à tout changement d'Obsession | [46] | LIVE | STRONG_SECONDARY |
| 3P92-C23 | Gearhead : 30 s après perte d'état de santé, skill check Good → aura 6/7/8 s | [47] | LIVE | STRONG_SECONDARY |
| 3P92-C24 | I'm All Ears : saut rapide à ≤ 48 m → aura 8 s, recharge 60/45/30 s (pas les casiers) | [48] | LIVE | STRONG_SECONDARY |

## Conflits

#### CONFLICT-3P92-01 : durée de persistance de Terminus
- Source A : résumé wiki (1re passe) — « lingers for an additional 20/25/30 seconds » [16][17]
- Source B : guide seed p92 — 35/40/45 s
- Preuve : page wiki complète [33] (35/40/45 s, buff 9.0.0 « from 20/25/30 ») et note officielle 9.0.0 [20] : « Increased Broken duration once exit gates are open to 35/40/45 seconds (was 20/25/30 seconds) ».
- Résolution : **RÉSOLU** — LIVE = 35/40/45 s ; le résumé de la 1re passe affichait la valeur d'avant 9.0.0.

#### CONFLICT-3P92-02 : plafond de jetons de Coup de Grâce
- Source A : résumé wiki.gg — « max 5 tokens at a time » et « up to 10 tokens per Trial » [14]
- Source B : seed — max 5 (sans plafond par partie)
- Preuve : page wiki complète [32] : « up to a maximum of 10 Tokens per Trial … can only hold a maximum of 5 Tokens at a time ».
- Résolution : **RÉSOLU** — les deux plafonds coexistent (5 détenus, 10 gagnés par partie).

#### CONFLICT-3P92-03 : rayon de Hex: Blood Favour (LIVE vs PTB)
- Source A : seed LIVE 24/28/32 m ; seed PTB 10.2.0 « 32 m »
- Source B : souvenir du modèle (pas une source) : 16/24/32 m
- Preuve : page wiki complète [37] (LIVE 24/28/32 m, 15 s) et note officielle 559 [25] : « (was any damage and 24/28/32m and 15s) ».
- Résolution : **RÉSOLU** — LIVE = 24/28/32 m, 15 s, toute perte d'état de santé ; PTB = 32 m, 13/14/15 s, attaque de base sur survivant sain.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Brutal Strength | 10/15/20 % palettes, murs, gens | idem [26] | OK |
| Enduring | −40/45/50 %, sauf en portant | idem [27] | OK |
| Sloppy Butcher | Haemorrhage + Mangled 70/80/90 s, +25 % | idem + flaques +50/75/100 % | OK (omission) |
| Friends 'til the End | Exposed 20 s, aura 6/8/10 s, cri | idem | OK |
| Starstruck | Exposed en portage, 26/28/30 s, 60 s | idem | OK |
| No Way Out | 12 s + 6/9/12 s/jeton, alerte | idem + max 36/48/60 s | OK |
| Coup de Grâce | 2 jetons/gen, max 5, 70/75/80 % | idem + max 10/partie | OK (IMPRÉCIS mineur) |
| Terminus | persiste 35/40/45 s | idem (wiki + note 9.0.0) | OK (le « FAUX probable » de la 1re passe est retiré) |
| Call of Brine | 30/40/50 % 90 s, buff 10.1.0 | idem (wiki + notes 9.0.0 / 10.1.0) | OK |
| Hex: Undying | transfert, 2/3/4 m, jetons conservés | transfert et 2/3/4 m OK ; « jetons conservés » absent du texte | OK (partiel) |
| Hex: Pentimento | −20 %, +1-3 %/totem, blocage à 5 | idem | OK |
| Hex: Devour Hope | 24 m, Haste 3/4/5 %, Exposed, mori | idem | OK |
| Hex: Blood Favour (LIVE) | « quand vous blessez », 24/28/32 m, 15 s | valeurs OK ; déclencheur = toute perte d'état de santé | IMPRÉCIS |
| Hex: Blood Favour (PTB) | 32 m | 32 m + 13/14/15 s + attaque de base uniquement | IMPRÉCIS (incomplet, bien étiqueté PTB) |
| Thanatophobia | 1/1,5/2 % + 12 % (16/18/20 %) | idem | OK |
| Deathbound | cri, Oblivious 12/8/4 m | idem | OK |
| Overcharge | 85 → 130 % en 30 s, 2/3/4 % sur échec | valeurs OK ; lien à l'échec non explicite | OK (IMPRÉCIS possible) |
| Oppression | 4 gens, 45/40/35 s | idem (wiki + note 9.2.0) | OK |
| Lay Waste | 2 %/charge, 55/50/45 s | idem (wiki + note 10.1.0) | OK |
| Rapid Brutality | 5 % Haste 8/9/10 s, pas de Bloodlust | idem | OK |
| Lightborn | immunité, aura 6/8/10 s | idem | OK |
| Nemesis | Obsession, Oblivious 40/50/60 s, aura 8 s | idem ; tout changement d'Obsession déclenche | OK (IMPRÉCIS mineur) |
| Gearhead | 30 s, Good, 6/7/8 s | idem | OK |
| I'm All Ears | « action rapide (casier, vault) », 48 m, 8 s, 60/45/30 s | valeurs OK ; **sauts rapides seulement** | FAUX (casiers) |
| Deathbound « (C+) » | sur page tier B | incohérence éditoriale | IMPRÉCIS |
| Taux d'usage (ex. Brutal Strength 6,5 % n°14) | chiffres figés | 7,63 % n°13 au moment de la recherche [3] | DATA volatile (à dater ou retirer) |

## Questions ouvertes

1. Enduring : la durée de base d'un stun de palette (2 s) et l'éventuelle exclusion des stuns de perks sont à confirmer (absentes du texte LIVE).
2. Quelles perks de ce lot sont soumises aux Diminishing Returns (Call of Brine, Overcharge, Oppression, Lay Waste, Thanatophobia, Pentimento, Rapid Brutality : HYPOTHESIS) ?
3. Hex: Undying : un Hex **béni** est-il transféré ? Le texte LIVE ne parle que de purification (HYPOTHESIS : non).
4. Lay Waste : que désigne « Charge » (unité de progression du gen ?) ?
5. Overcharge : la perte de 2/3/4 % dépend-elle de l'échec du skill check ?
6. Thanatophobia : l'icône externe de perk est-elle visible par le survivant ralenti (déduit d'un correctif 10.0.0) ?

## Matériel pour la PERK DEDUCTION

Règles HEURISTIC / EXPERT OPINION. Effets sous-jacents re-vérifiés sur page wiki complète (27/09/2026).

1. Coup de base reçu + icônes **Mangled + Haemorrhage** (tueur sans pouvoir qui les donne) → **Sloppy Butcher** quasi certain → soigner en une seule fois, sinon différer et faire des gens pendant ~70-90 s.
2. Entrée dans le rayon d'un tueur **qui porte** + icône **Exposed** → **Starstruck** → ne plus tenter de save, rester hors rayon pendant le portage et ~30 s après.
3. Allié accroché + l'Obsession devient **Exposed** (et/ou cri au hook de l'Obsession) → **Friends 'til the End** → l'Obsession se cache loin du hook ~20 s, ne sauve pas.
4. Portes alimentées + icône **Broken** chez tous les blessés → **Terminus** → se soigner avant la dernière gen, ouvrir une porte vite (Broken persiste 35-45 s après), jouer « one-hit ».
5. Contact avec un interrupteur + les **deux portes bloquées** par l'Entité → **No Way Out** → s'éloigner, revenir à la fin du blocage, ne pas y mener le tueur.
6. Perte d'état de santé (coup, mise au sol d'un coéquipier) + **palettes bloquées** autour + totem allumé → **Hex: Blood Favour** → viser fenêtres / sortir de la zone (24-32 m), purification par un allié.
7. On devient **Obsession** (après un stun/flash ou tout autre transfert) + **Oblivious** → **Nemesis** → changer de direction hors ligne de vue, ne pas se fier au cœur ~40-60 s.
8. Flash réussi **sans animation d'aveuglement** → **Lightborn** → arrêter les tentatives (Flash Grenade, Blast Mine inclus), jouer bodyblock/sabotage.
9. Totem **purifié qui se rallume**, ou **aura d'un totem visible à 16 m** → **Hex: Pentimento** → re-purifier, arrêter le « totem clean » des ternes, Boons sur totems non purifiés.
10. Hex purifié mais **effet toujours actif** → **Hex: Undying** → trouver et purifier le 2ᵉ totem allumé ; plus tard, purifier Undying en premier.
11. Après un soin complet, le soigneur **crie** puis voit l'aura du soigné → **Deathbound** → bouger tout de suite ; le soigneur joue Oblivious jusqu'à sa prochaine blessure.
12. Tueur qui arrive après un skill check **Good** (jamais après un Great) sur un gen frappé → **Call of Brine** (ou Gearhead si un survivant vient d'être blessé) → viser les Great.

## Sources

[1] Brutal Strength — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Brutal_Strength — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[2] Brutal Strength — Fandom — https://deadbydaylight.fandom.com/wiki/Brutal_Strength — consulté le 27/09/2026 via WebSearch
[3] Brutal Strength — NightLight — https://nightlight.gg/perks/Brutal_Strength — consulté le 27/09/2026 via WebSearch
[4] Enduring — Fandom — https://deadbydaylight.fandom.com/wiki/Enduring — consulté le 27/09/2026 via WebSearch
[5] Enduring — NightLight — https://nightlight.gg/perks/Enduring — consulté le 27/09/2026 via WebSearch
[6] Sloppy Butcher — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Sloppy_Butcher — consulté le 27/09/2026 via WebSearch
[7] Sloppy Butcher — Fandom — https://deadbydaylight.fandom.com/wiki/Sloppy_Butcher — consulté le 27/09/2026 via WebSearch
[8] Friends 'til the End — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Friends_'til_the_End — consulté le 27/09/2026 via WebSearch
[9] Friends 'til the End — Fandom — https://deadbydaylight.fandom.com/wiki/Friends_'til_the_End — consulté le 27/09/2026 via WebSearch
[10] Starstruck — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Starstruck — consulté le 27/09/2026 via WebSearch
[11] Starstruck — Fandom — https://deadbydaylight.fandom.com/wiki/Starstruck — consulté le 27/09/2026 via WebSearch
[12] No Way Out — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/No_Way_Out — consulté le 27/09/2026 via WebSearch
[13] No Way Out — Fandom — https://deadbydaylight.fandom.com/wiki/No_Way_Out — consulté le 27/09/2026 via WebSearch
[14] Coup de Grâce — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Coup_de_Gr%C3%A2ce — consulté le 27/09/2026 via WebSearch
[15] Coup de Grâce — NightLight — https://nightlight.gg/perks/Coup_de_Gr%C3%A2ce — consulté le 27/09/2026 via WebSearch
[16] Terminus — Fandom — https://deadbydaylight.fandom.com/wiki/Terminus — consulté le 27/09/2026 via WebSearch (valeur obsolète, antérieure à 9.0.0)
[17] Terminus — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Terminus — consulté le 27/09/2026 via WebSearch
[18] Audit phase 0 (fichier local `kb/seed/audit_phase0.txt`) — historique des patchs (10.1.0 : Call of Brine 30/40/50 % 90 s ; 9.0.0 : 70 s / 130-150 %), portes (No Way Out), régression (5 % pour stopper, 8 regression events) — lu le 27/09/2026
[19] Audit phase 0 (fichier local) — tableau Totems/Boons (wiki.gg Totems) : totems ravivés par Pentimento non bénissables ; Diminishing Returns 9.6.0 — lu le 27/09/2026
[20] 9.0.0 | Five Nights at Freddy's — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/510 — texte complet (kb/sources/patches/official_510.txt), consulté le 27/09/2026
[21] 9.2.0 | Sinister Grace — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/523 — texte complet (official_523.txt), consulté le 27/09/2026
[22] 9.5.0 | All-Kill: Comeback — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/538 — texte complet (official_538.txt), consulté le 27/09/2026
[23] 10.1.0 | Chorus of Sin — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/556 — texte complet (official_556.txt), consulté le 27/09/2026
[24] 10.1.1 Bugfix Patch — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/557 — texte complet (official_557.txt), consulté le 27/09/2026
[25] 10.2.0 PTB Patch Notes — note officielle BHVR (NON LIVE) — https://forums.bhvr.com/dead-by-daylight/kb/articles/559 — texte complet (official_559.txt), consulté le 27/09/2026
[26] deadbydaylight.wiki.gg/wiki/Brutal_Strength — page complète via API, consultée le 27/09/2026
[27] deadbydaylight.wiki.gg/wiki/Enduring — page complète via API, consultée le 27/09/2026
[28] deadbydaylight.wiki.gg/wiki/Sloppy_Butcher — page complète via API, consultée le 27/09/2026
[29] deadbydaylight.wiki.gg/wiki/Friends_'til_the_End — page complète via API, consultée le 27/09/2026
[30] deadbydaylight.wiki.gg/wiki/Starstruck — page complète via API, consultée le 27/09/2026
[31] deadbydaylight.wiki.gg/wiki/No_Way_Out — page complète via API, consultée le 27/09/2026
[32] deadbydaylight.wiki.gg/wiki/Coup_de_Grâce — page complète via API, consultée le 27/09/2026
[33] deadbydaylight.wiki.gg/wiki/Terminus — page complète via API, consultée le 27/09/2026
[34] deadbydaylight.wiki.gg/wiki/Hex:_Undying — page complète via API, consultée le 27/09/2026
[35] deadbydaylight.wiki.gg/wiki/Hex:_Pentimento — page complète via API, consultée le 27/09/2026
[36] deadbydaylight.wiki.gg/wiki/Hex:_Devour_Hope — page complète via API, consultée le 27/09/2026
[37] deadbydaylight.wiki.gg/wiki/Hex:_Blood_Favour — page complète via API, consultée le 27/09/2026 (onglet LIVE = historique 5.3.0 ; version PTB 10.2.0 affichée séparément)
[38] deadbydaylight.wiki.gg/wiki/Thanatophobia — page complète via API, consultée le 27/09/2026
[39] deadbydaylight.wiki.gg/wiki/Deathbound — page complète via API, consultée le 27/09/2026
[40] deadbydaylight.wiki.gg/wiki/Call_of_Brine — page complète via API, consultée le 27/09/2026
[41] deadbydaylight.wiki.gg/wiki/Overcharge — page complète via API, consultée le 27/09/2026
[42] deadbydaylight.wiki.gg/wiki/Oppression — page complète via API, consultée le 27/09/2026
[43] deadbydaylight.wiki.gg/wiki/Lay_Waste — page complète via API, consultée le 27/09/2026
[44] deadbydaylight.wiki.gg/wiki/Rapid_Brutality — page complète via API, consultée le 27/09/2026
[45] deadbydaylight.wiki.gg/wiki/Lightborn — page complète via API, consultée le 27/09/2026
[46] deadbydaylight.wiki.gg/wiki/Nemesis — page complète via API, consultée le 27/09/2026
[47] deadbydaylight.wiki.gg/wiki/Gearhead — page complète via API, consultée le 27/09/2026
[48] deadbydaylight.wiki.gg/wiki/I'm_All_Ears — page complète via API, consultée le 27/09/2026
[49] 10.0.0 | Jason — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/550 — texte complet (official_550.txt), consulté le 27/09/2026 (correctif de l'icône externe de Thanatophobia)
