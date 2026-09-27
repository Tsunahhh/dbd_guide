# Lot 3 — Perks tueur vues du survivant, page 92 du guide seed (tier B)

**Couverture web : 8 éléments vérifiés par recherche (+1 via l'audit phase 0 : Call of Brine) / 14 non re-vérifiés (quota WebSearch épuisé).**

Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 (15-21/09/2026) = **non LIVE**, toujours étiqueté PTB.
Méthode : WebSearch uniquement (résumés de recherche, WebFetch bloqué) → confiance plafonnée à STRONG_SECONDARY sauf citation de notes officielles.
Notes de menace et toutes les lignes analytiques (indice, soupçonner, confirmer, adaptation, counterplay, erreurs, menace, matériel de déduction) = **HEURISTIC / EXPERT OPINION** (raisonnement à partir de l'effet, pas des mesures).

Périmètre (23 perks) : Brutal Strength, Enduring, Sloppy Butcher, Friends 'til the End, Starstruck, No Way Out, Coup de Grâce, Terminus, Hex: Undying, Hex: Pentimento, Hex: Devour Hope, Hex: Blood Favour, Thanatophobia, Deathbound, Call of Brine, Overcharge, Oppression, Lay Waste, Rapid Brutality, Lightborn, Nemesis, Gearhead, I'm All Ears.

> **LIMITE MAJEURE DE CE LOT** : le quota WebSearch de la session (200 appels, partagé entre agents) a été épuisé après **9 recherches** de ce lot (le moteur a refusé toute requête suivante).
> - **Vérifiées via WebSearch (8)** : Brutal Strength, Enduring, Sloppy Butcher, Friends 'til the End, Starstruck, No Way Out, Coup de Grâce, Terminus.
> - **Vérifiée via l'audit phase 0 (1)** : Call of Brine (notes 10.1.0 résumées dans `audit_phase0.txt`).
> - **Non vérifiées (14)** : Hex: Undying, Hex: Pentimento, Hex: Devour Hope, Hex: Blood Favour, Thanatophobia, Deathbound, Overcharge, Oppression, Lay Waste, Rapid Brutality, Lightborn, Nemesis, Gearhead, I'm All Ears. Pour celles-ci, l'effet décrit vient du seed et/ou de connaissances antérieures non re-vérifiées → **UNCERTAIN**, et toute valeur chiffrée est **à ne pas publier** avant une vérification dans un autre lot.
> - **PTB 10.2.0** : aucune perk de ce périmètre n'a pu être vérifiée côté PTB → UNCERTAIN partout (le seed ne cite que Hex: Blood Favour « 32 m »).

---

### Brutal Strength — Trapper
- **Statut / catégorie** : LIVE 10.1.2a · chase (anti-palette) + slowdown léger (coup de pied)
- **Effet LIVE + valeurs** : vitesse d'action +10/15/20 % pour casser palettes au sol et murs cassables, et pour endommager les générateurs [1][2] — STRONG_SECONDARY
- **PTB 10.2.0** : UNCERTAIN (non vérifié ; absent de la liste PTB du seed)
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct (pas d'icône). Indirect : casse de palette visiblement plus rapide que la normale (base 2,34 s, audit) ; coup de pied de gen plus court (base 1,8 s, audit).
- **Soupçonner** (HEURISTIC) : palette cassée « trop vite » + tueur M1 sans pouvoir anti-palette → plausible.
- **Confirmer** (HEURISTIC) : écran de fin (perks du tueur) ; au mieux, chronométrer à l'œil plusieurs casses.
- **Adaptation robuste** (HEURISTIC) : ne pas compter sur la casse pour gagner de la distance ; privilégier les tiles à fenêtre (vault) plutôt que les chaînes de palettes déjà jetées.
- **Counterplay** (HEURISTIC) : ne pas jeter les palettes trop tôt ; enchaîner vers une autre tile pendant la casse.
- **Erreurs à ne pas faire** (HEURISTIC) : lâcher une palette « gratuite » en pensant gagner 2+ s de distance.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK (valeurs et cibles correctes). Taux d'usage « 6,5 %, n°14 » vs 7,63 % n°13 au moment de la recherche [3] : DATA volatile, pas une erreur.
- **Sources** : [1][2][3]

### Enduring — Hillbilly
- **Statut / catégorie** : LIVE 10.1.2a · chase (anti-palette)
- **Effet LIVE + valeurs** : durée des étourdissements de palette −40/45/50 % (2 s → 1,2/1,1/1 s) ; sans effet en portant un survivant [4][5] ; résumé de recherche : « ne s'applique plus aux stuns déclenchés par des perks » [4] — STRONG_SECONDARY (la clause « perks » est à confirmer)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct. Indirect : le tueur se relève très vite après un stun de palette (~1 s au lieu de 2 s).
- **Soupçonner** (HEURISTIC) : stun de palette suivi d'un coup quasi immédiat, répété ; souvent avec Spirit Fury ou Brutal Strength.
- **Confirmer** (HEURISTIC) : écran de fin. Un stun en portant un survivant (sauvetage) garde sa durée normale.
- **Adaptation robuste** (HEURISTIC) : après un stun, **courir immédiatement** vers la tile suivante, ne pas faire de « palette → re-vault ».
- **Counterplay** (HEURISTIC) : utiliser la palette comme mur (drop précoce) plutôt que comme stun ; les sauvetages par palette restent pleins.
- **Erreurs à ne pas faire** (HEURISTIC) : rester à la palette pour la « jouer » une 2ᵉ fois après un stun.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1 (2 avec Spirit Fury)
- **Écart avec le seed** : OK (40/45/50 %, exception « en portant »). Seed muet sur la clause « stuns de perks » : IMPRÉCIS (mineur, à vérifier).
- **Sources** : [4][5]

### Sloppy Butcher — Générale
- **Statut / catégorie** : LIVE 10.1.2a · anti-soin + info (flaques de sang)
- **Effet LIVE + valeurs** : après un coup de base, Haemorrhage + Mangled pendant 70/80/90 s ; fréquence des flaques de sang +50/75/100 % ; régression de la progression de soin partielle +25 % (fixe) ; Mangled désormais à durée (et non « jusqu'au soin ») [6][7] — STRONG_SECONDARY (cohérent avec l'audit : flaques +50/75/100 %)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **oui, direct** — icônes de statut **Mangled** et **Haemorrhage** sur le HUD après un coup de base (hors pouvoir/add-on qui les applique aussi).
- **Soupçonner** (HEURISTIC) : les deux icônes apparaissent après un M1 sur un tueur dont le pouvoir ne les donne pas.
- **Confirmer** (HEURISTIC) : les icônes + un compteur/durée qui expire (~70-90 s) = Sloppy Butcher quasi certain.
- **Adaptation robuste** (HEURISTIC) : ne pas lancer un soin partiel qu'on risque d'interrompre (la progression fuit) ; soigner en une fois ou attendre l'expiration si le soin n'est pas urgent.
- **Counterplay** (HEURISTIC) : soins dans un coin sûr ; kit médical ; faire des gens pendant que le timer expire ; attention aux flaques qui trahissent la trace.
- **Erreurs à ne pas faire** (HEURISTIC) : s'interrompre à 80 % de soin ; laisser une traînée de sang vers un gen ou un allié.
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : OK sur l'essentiel (70/80/90 s, +25 %). IMPRÉCIS : le seed omet l'effet flaques de sang (+50/75/100 %), utile en déduction.
- **Sources** : [6][7]

### Friends 'til the End — Good Guy
- **Statut / catégorie** : LIVE 10.1.2a · info/aura + Exposed (obsession)
- **Effet LIVE + valeurs** : accrocher un non-Obsession → aura de l'Obsession révélée 6/8/10 s et Obsession Exposed 20 s ; accrocher l'Obsession → un survivant aléatoire crie (position révélée) et devient la nouvelle Obsession [8][9] — STRONG_SECONDARY
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : icône d'**Obsession** sur un survivant dès le début ; statut **Exposed** chez l'Obsession après un accrochage d'un autre ; **cri** d'un survivant quand l'Obsession est accrochée ; changement d'Obsession.
- **Soupçonner** (HEURISTIC) : Obsession qui devient Exposed juste après un hook ailleurs, ou cri « aléatoire » au hook de l'Obsession.
- **Confirmer** (HEURISTIC) : Exposed 20 s sur l'Obsession pile au moment d'un hook + tueur qui arrive droit sur elle ; transfert d'Obsession accompagné d'un cri.
- **Adaptation robuste** (HEURISTIC) : si on est l'Obsession et qu'un allié est accroché → se considérer **révélé et one-shot** pendant ~20 s : se cacher derrière un obstacle haut, loin du hook.
- **Counterplay** (HEURISTIC) : l'Obsession ne fait pas le sauvetage pendant la fenêtre Exposed ; distance > vitesse ; Endurance (Off the Record, etc.) convertit le coup en Deep Wound (audit).
- **Erreurs à ne pas faire** (HEURISTIC) : l'Obsession qui reste sur un gen proche du hook au moment où un allié est accroché.
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : OK (seed n'indique pas que le cri révèle la position : IMPRÉCIS mineur).
- **Sources** : [8][9]

### Starstruck — Trickster
- **Statut / catégorie** : LIVE 10.1.2a · Exposed (portage)
- **Effet LIVE + valeurs** : pendant le portage d'un survivant, les survivants dans le rayon de terreur sont Exposed ; l'effet persiste 26/28/30 s après avoir quitté le rayon ; à l'accrochage/lâcher, la persistance s'applique à ceux présents dans le rayon ; recharge 60 s une fois le portage terminé [10][11] — STRONG_SECONDARY
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **oui** — icône **Exposed** qui apparaît quand on entre dans le rayon de terreur d'un tueur **qui porte**.
- **Soupçonner** (HEURISTIC) : Exposed au contact du rayon pendant un portage (sans Hex allumé ni autre cause).
- **Confirmer** (HEURISTIC) : l'icône Exposed reste ~26-30 s après être sorti du rayon.
- **Adaptation robuste** (HEURISTIC) : ne jamais aller « bodyblock » / flashlight save / sabotage près d'un tueur qui porte sans perk d'Endurance ; rester hors rayon.
- **Counterplay** (HEURISTIC) : sabotage en avance (hook éloigné du rayon), sauvetages seulement après la persistance ; Endurance protège du one-shot (Deep Wound).
- **Erreurs à ne pas faire** (HEURISTIC) : suivre le porteur pour un save ; rester dans le rayon après le hook (on garde Exposed 26-30 s).
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 2 (punit fortement les saves SWF)
- **Écart avec le seed** : OK.
- **Sources** : [10][11]

### No Way Out — Trickster
- **Statut / catégorie** : LIVE 10.1.2a · endgame
- **Effet LIVE + valeurs** : 1 jeton par survivant accroché pour la 1ʳᵉ fois ; portes alimentées → quand un survivant touche un interrupteur : Loud Noise Notification au tueur, les deux interrupteurs sont bloqués 12 s + 6/9/12 s par jeton, max 36/48/60 s [12][13] — STRONG_SECONDARY (cohérent avec l'audit : 12 s + 6/9/12 s/jeton)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **oui** — interrupteur de porte **bloqué par l'Entité** (griffes/icône de blocage) dès qu'on le touche ; les deux portes bloquées.
- **Soupçonner** (HEURISTIC) : blocage des interrupteurs au premier contact, alors que Blood Warden (qui exige un hook après ouverture) ne peut pas encore agir.
- **Confirmer** (HEURISTIC) : blocage des deux interrupteurs + tueur qui arrive vers la porte (il a eu une notification).
- **Adaptation robuste** (HEURISTIC) : en fin de partie, **toucher l'interrupteur puis s'éloigner** / se cacher ; n'attendre le déblocage qu'à distance ; ne pas considérer la porte comme « sûre ».
- **Counterplay** (HEURISTIC) : garder un survivant jamais accroché réduit les jetons ; tester l'interrupteur tôt (dès la dernière gen) plutôt qu'en chase ; se répartir sur les deux portes après le déblocage.
- **Erreurs à ne pas faire** (HEURISTIC) : venir ouvrir la porte en étant poursuivi ; s'agglutiner à l'interrupteur bloqué.
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : OK (seed omet le plafond 36/48/60 s : IMPRÉCIS mineur).
- **Sources** : [12][13][18]

### Coup de Grâce — Twins
- **Statut / catégorie** : LIVE 10.1.2a · chase (portée de fente)
- **Effet LIVE + valeurs** : +2 jetons par générateur terminé ; chaque fente consomme 1 jeton et gagne +70/75/80 % de portée (multiplie la phase « ouverte » de la fente) ; 5 jetons maximum détenus simultanément ; un résumé mentionne aussi « max 10 jetons par partie » [14][15] — STRONG_SECONDARY (plafond par partie : UNCERTAIN, cf. CONFLICT-3P92-02)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : aucune icône. Indirect : **fente anormalement longue** (coup reçu alors qu'on pensait être hors de portée), surtout juste après une gen terminée.
- **Soupçonner** (HEURISTIC) : 2-3 coups « impossibles » à longue portée après les gens terminées.
- **Confirmer** (HEURISTIC) : écran de fin ; la longueur de fente revient à la normale après consommation des jetons.
- **Adaptation robuste** (HEURISTIC) : après chaque gen terminée, **augmenter la marge de distance** (≈+2 m) et ne pas faire de « dead zone » en ligne droite.
- **Counterplay** (HEURISTIC) : les fentes ratées (ou consommées sur des coups dans le vide) brûlent les jetons ; privilégier les virages serrés où la fente longue est inutile.
- **Erreurs à ne pas faire** (HEURISTIC) : courir en ligne droite dans un espace ouvert juste après une gen pop.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK sur 2 jetons / max 5 / 70/75/80 %. Plafond par partie non mentionné (NON VÉRIFIABLE).
- **Sources** : [14][15]

### Terminus — Mastermind
- **Statut / catégorie** : LIVE 10.1.2a · endgame (anti-soin)
- **Effet LIVE + valeurs** : portes alimentées → survivants blessés, mourants ou accrochés deviennent Broken jusqu'à l'ouverture d'une porte ; persiste **20/25/30 s** ensuite (résumé wiki) ; empêche le soin d'Adrenaline mais garde le sprint [16][17] — STRONG_SECONDARY (une seule source lue ; cf. CONFLICT-3P92-01)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **oui** — icône **Broken** qui apparaît à la dernière gen chez tous les blessés/au sol/accrochés.
- **Soupçonner** (HEURISTIC) : Broken simultané pour plusieurs survivants exactement à l'alimentation des portes.
- **Confirmer** (HEURISTIC) : Adrenaline qui ne soigne pas ; Broken qui disparaît ~20-30 s après l'ouverture de la porte.
- **Adaptation robuste** (HEURISTIC) : **se soigner avant la dernière gen** ; en fin de partie, jouer comme si le prochain coup mettait au sol.
- **Counterplay** (HEURISTIC) : ouvrir une porte vite pour lancer le compte à rebours ; éviter de prendre un coup juste avant la dernière gen ; Endurance.
- **Erreurs à ne pas faire** (HEURISTIC) : compter sur Adrenaline pour se soigner ; attendre la porte en étant blessé près du tueur.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1 (forte seulement en synergie NOED / No Way Out)
- **Écart avec le seed** : **FAUX probable** : le seed dit 35/40/45 s, le résumé wiki dit 20/25/30 s. À recouper (une seule source).
- **Sources** : [16][17]

### Hex: Undying — Blight
- **Statut / catégorie** : LIVE 10.1.2a (présumé) · hex (protection d'Hex) + info/aura
- **Effet LIVE + valeurs** : quand un autre Hex serait purifié, il est transféré sur le totem d'Undying (jetons conservés) — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) ; aura des survivants à 2/3/4 m des totems ternes — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) · UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : totem **Hex allumé** (flammes) ; après purification d'un Hex, son **icône Hex ne disparaît pas** du HUD / l'effet continue ; tueur qui vient vers vous quand vous touchez un totem terne.
- **Soupçonner** (HEURISTIC) : ≥2 totems allumés sur la carte + tueur jouant d'autres Hex.
- **Confirmer** (HEURISTIC) : purifier un Hex et constater que son effet persiste → transfert sur Undying.
- **Adaptation robuste** (HEURISTIC) : **purifier d'abord l'Hex le moins dangereux / celui trouvé en premier** si un 2ᵉ totem allumé existe ; ne pas s'attarder près des totems ternes.
- **Counterplay** (HEURISTIC) : SWF : annoncer la position de tous les totems allumés ; purifier Undying en premier quand il est identifiable (sinon purifier tous les totems allumés).
- **Erreurs à ne pas faire** (HEURISTIC) : célébrer la purification de Ruin/Devour sans vérifier que l'effet a disparu.
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE (quota épuisé).
- **Sources** : aucune lue (UNCERTAIN)

### Hex: Pentimento — Artist
- **Statut / catégorie** : LIVE 10.1.2a (présumé) · slowdown (vitesse d'action) + hex
- **Effet LIVE + valeurs** : le tueur voit les totems purifiés et peut les « rallumer » ; les pénalités croissent avec le nombre de totems rallumés ; à 5 totems, blocage permanent (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)). Les totems ravivés ne peuvent pas être bénis (audit, STRONG_SECONDARY [19]). Valeurs chiffrées (−20 % puis +1-3 %/totem) : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) · UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **totems purifiés qui se rallument** (flammes réapparaissent) ; icône Hex / statut de pénalité sur le HUD (présumé).
- **Soupçonner** (HEURISTIC) : un totem qu'on a purifié brûle de nouveau.
- **Confirmer** (HEURISTIC) : totem rallumé + ralentissement des réparations/soins.
- **Adaptation robuste** (HEURISTIC) : **purifier moins de totems ternes** (ne pas fournir de carburant) contre un tueur suspecté ; re-purifier immédiatement les totems rallumés.
- **Counterplay** (HEURISTIC) : Boons sur totems non purifiés (un totem ravivé ne peut pas être béni) ; SWF : tracer les totems rallumés.
- **Erreurs à ne pas faire** (HEURISTIC) : purifier systématiquement tous les totems ternes (« totem clean ») contre Pentimento.
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE (valeurs) ; interaction Boon OK (audit).
- **Sources** : [19]

### Hex: Devour Hope — Hag
- **Statut / catégorie** : LIVE 10.1.2a (présumé) · hex + endgame/Exposed
- **Effet LIVE + valeurs** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) : 1 jeton par décrochage fait à ≥24 m du tueur ; 2 jetons : Haste 3/4/5 % 10 s après un accrochage ; 3 : tous Exposed ; 5 : mori à la main — **UNCERTAIN**
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : totem **Hex allumé** ; icône **Exposed** permanente chez tous à 3 jetons (fort indice) ; icône Hex sur le HUD.
- **Soupçonner** (HEURISTIC) : tueur qui s'éloigne ostensiblement des hooks (pour laisser décrocher) + totem allumé.
- **Confirmer** (HEURISTIC) : Exposed généralisé sans cause visible ; mori sur un survivant.
- **Adaptation robuste** (HEURISTIC) : dès qu'un totem allumé est vu → **purifier en priorité** ; sinon, faire les décrochages lorsque le tueur est proche (< 24 m) plutôt que loin (paradoxal mais ne donne pas de jeton).
- **Counterplay** (HEURISTIC) : chercher le totem tôt ; Endurance contre Exposed ; Small Game / Detective's Hunch pour localiser.
- **Erreurs à ne pas faire** (HEURISTIC) : décrocher dès que le tueur part loin sans penser aux jetons.
- **Menace (HEURISTIC)** : SoloQ 3 / SWF 2
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune lue (UNCERTAIN)

### Hex: Blood Favour — Blight
- **Statut / catégorie** : LIVE 10.1.2a (présumé) · hex + chase (blocage de palettes)
- **Effet LIVE + valeurs** : quand un survivant perd un état de santé (connaissance du modèle (antérieure à mi-2026), UNCERTAIN ; seed : « quand vous blessez »), les palettes debout dans un rayon autour de lui sont bloquées par l'Entité 15 s. Rayon 24/28/32 m : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) ; 16/24/32 m : connaissance du modèle (antérieure à mi-2026), UNCERTAIN ; seed PTB « 32 m » non vérifié.
- **PTB 10.2.0** : UNCERTAIN (seed : rayon 32 m)
- **Indice observable (survivant)** (HEURISTIC) : **palettes bloquées par l'Entité** (griffes/pointes) juste après un coup ; totem **Hex allumé**.
- **Soupçonner** (HEURISTIC) : impossibilité de lâcher une palette dans la seconde qui suit un coup reçu.
- **Confirmer** (HEURISTIC) : palette bloquée qui se libère ~15 s plus tard ; effet qui s'arrête après purification d'un totem.
- **Adaptation robuste** (HEURISTIC) : après un coup, **courir vers une fenêtre** ou loin (hors rayon) plutôt que vers la palette la plus proche ; purifier le totem.
- **Counterplay** (HEURISTIC) : SWF : un allié non poursuivi purifie ; « chase hors rayon » ; utiliser les fenêtres pendant 15 s.
- **Erreurs à ne pas faire** (HEURISTIC) : spammer l'action palette sur une palette bloquée.
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE (rayon LIVE à confirmer ; risque que la valeur PTB 32 m ait été injectée dans le LIVE).
- **Sources** : aucune lue (UNCERTAIN)

### Thanatophobia — Nurse
- **Statut / catégorie** : LIVE 10.1.2a (présumé) · slowdown (vitesse d'action)
- **Effet LIVE + valeurs** : pénalité de réparation, purification et sabotage pour tous (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)), proportionnelle au nombre de survivants blessés/mourants/accrochés, bonus si les 4 le sont (1/1,5/2 % + 12 %, total 16/18/20 % : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) · UNCERTAIN ; soumise aux Diminishing Returns (9.6.0) en tant que modificateur de vitesse d'action : HYPOTHESIS
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct fiable (présence d'une icône de statut : UNCERTAIN). Indirect : gens lentes quand plusieurs survivants sont blessés.
- **Soupçonner** (HEURISTIC) : tueur qui blesse tout le monde sans chercher le down + progression de gen visiblement lente.
- **Confirmer** (HEURISTIC) : écran de fin.
- **Adaptation robuste** (HEURISTIC) : **se soigner** (au moins partiellement le groupe) avant de pousser des gens en longue durée.
- **Counterplay** (HEURISTIC) : Resilience compense partiellement ; soins groupés efficaces (Botany, kit).
- **Erreurs à ne pas faire** (HEURISTIC) : rester à 4 blessés sur des gens pendant plusieurs minutes.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune lue (UNCERTAIN)

### Deathbound — Executioner
- **Statut / catégorie** : LIVE 10.1.2a (présumé) · info (anti-soin)
- **Effet LIVE + valeurs** : un survivant qui soigne un allié **crie** (position révélée) puis devient Oblivious quand il s'éloigne du soigné ; aura associée ; valeurs 12/8/4 m : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) ; condition « soin à ≥32 m du tueur » : connaissance du modèle (antérieure à mi-2026), UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **cri** du soigneur à la fin d'un soin ; icône **Oblivious** ensuite.
- **Soupçonner** (HEURISTIC) : cri à la fin d'un soin sans autre déclencheur.
- **Confirmer** (HEURISTIC) : Oblivious apparaît après s'être éloigné du survivant soigné.
- **Adaptation robuste** (HEURISTIC) : soigner **loin du tueur** puis **se séparer immédiatement dans deux directions** ; le soigneur ne doit pas retourner vers le dernier gen connu.
- **Counterplay** (HEURISTIC) : self-care / kit ; rester près du soigné (si la distance du seed est juste) seulement si le tueur n'arrive pas.
- **Erreurs à ne pas faire** (HEURISTIC) : considérer qu'on entend le rayon de terreur pendant Oblivious.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE ; « (C+) » sur une page de tier B : IMPRÉCIS (incohérence éditoriale).
- **Sources** : aucune lue (UNCERTAIN)

### Call of Brine — Onryō
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (vitesse de régression, DR)
- **Effet LIVE + valeurs** : gen frappé → régression accélérée **30/40/50 % pendant 90 s** (10.1.0, était 70 s / 130-150 % en 9.0.0) ; tueur alerté lors des skill checks réussis (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) [18] — valeurs STRONG_SECONDARY (audit), mécanisme d'alerte UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct au HUD. Indirect : gen qui régresse **visiblement vite** après un coup de pied ; tueur qui revient pile sur le gen après un skill check.
- **Soupçonner** (HEURISTIC) : régression rapide + tueur qui « sait » qu'on a repris le gen.
- **Confirmer** (HEURISTIC) : tueur qui arrive systématiquement après le premier skill check sur un gen frappé ≤90 s.
- **Adaptation robuste** (HEURISTIC) : sur un gen frappé récemment, **accepter la perte ou reprendre à plusieurs** (sortir vite de la fenêtre) ; sinon aller sur un autre gen.
- **Counterplay** (HEURISTIC) : laisser passer ~90 s ; tapoter pour stopper la régression exige 5 % de réparation (audit), donc anticiper.
- **Erreurs à ne pas faire** (HEURISTIC) : reprendre seul un gen frappé il y a 10 s alors que le tueur est à 30 m.
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : OK (30/40/50 % 90 s, buff 10.1.0) sous réserve du mécanisme d'alerte.
- **Sources** : [18]

### Overcharge — Doctor
- **Statut / catégorie** : LIVE 10.1.2a (présumé) · slowdown (régression + skill check)
- **Effet LIVE + valeurs** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) : après un coup de pied, régression qui monte de 85 à 130 % en 30 s ; le prochain réparateur reçoit un skill check spécial ; raté → perte supplémentaire 2/3/4 % — **UNCERTAIN** (85 % seed ; 75 % : connaissance du modèle (antérieure à mi-2026), UNCERTAIN)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **skill check immédiat et difficile** (zone réduite) dès qu'on touche un gen frappé.
- **Soupçonner** (HEURISTIC) : skill check instantané au 1er contact avec un gen qui régressait.
- **Confirmer** (HEURISTIC) : répétition du phénomène sur plusieurs gens frappés.
- **Adaptation robuste** (HEURISTIC) : **anticiper le skill check** en touchant un gen frappé (être prêt à valider) ; ne pas laisser un débutant le reprendre.
- **Counterplay** (HEURISTIC) : Hyperfocus/Stake Out augmentent la marge ; reprendre rapidement le gen (régression accélérée avec le temps).
- **Erreurs à ne pas faire** (HEURISTIC) : toucher le gen en regardant ailleurs / en parlant.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune lue (UNCERTAIN)

### Oppression — Twins
- **Statut / catégorie** : LIVE 10.1.2a (présumé) · slowdown (régression multiple)
- **Effet LIVE + valeurs** : frapper un gen fait régresser jusqu'à 4 autres gens ; leurs réparateurs reçoivent un skill check difficile (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)). Recharge 45/40/35 s : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) · UNCERTAIN (recharge nettement plus longue : connaissance du modèle (antérieure à mi-2026), UNCERTAIN)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **skill check difficile soudain** sur un gen alors que le tueur est loin ; **gen qui se met à régresser** (étincelles) sans coup de pied.
- **Soupçonner** (HEURISTIC) : régression spontanée de plusieurs gens après un coup de pied ailleurs.
- **Confirmer** (HEURISTIC) : skill check « difficile » simultané chez plusieurs réparateurs.
- **Adaptation robuste** (HEURISTIC) : rester prêt au skill check en réparant ; en SWF, signaler les gens qui régressent seuls.
- **Counterplay** (HEURISTIC) : reprendre la réparation (5 % stoppe la régression) sur les gens éloignés du tueur.
- **Erreurs à ne pas faire** (HEURISTIC) : quitter un gen qui régresse en pensant que le tueur arrive.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE (recharge 45/40/35 s suspecte).
- **Sources** : aucune lue (UNCERTAIN)

### Lay Waste — Judgment (Chapter 41, 10.1.0)
- **Statut / catégorie** : LIVE 10.1.2a (perk introduite 25/08/2026) · slowdown (régression)
- **Effet LIVE + valeurs** : « un générateur frappé régresse 2 % plus vite par charge qu'il possède ; recharge 55/50/45 s » : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) · UNCERTAIN (perk récente, aucune source lue ; le sens de « charge » est ambigu)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct connu. Indirect : régression plus rapide sur les gens très avancés (si « charges » = progression).
- **Soupçonner** (HEURISTIC) : gens avancés qui fondent après un coup de pied.
- **Confirmer** (HEURISTIC) : écran de fin.
- **Adaptation robuste** (HEURISTIC) : ne pas laisser un gen très avancé sans surveillance ; finir les gens plutôt que d'en ouvrir de nouveaux.
- **Counterplay** (HEURISTIC) : 5 % de réparation stoppe la régression (audit).
- **Erreurs à ne pas faire** (HEURISTIC) : laisser un gen à 90 % se faire frapper à répétition.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1 (UNCERTAIN)
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune lue

### Rapid Brutality — Xenomorph
- **Statut / catégorie** : LIVE 10.1.2a (présumé) · chase
- **Effet LIVE + valeurs** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) : chaque coup de base donne 5 % de Haste pendant 8/9/10 s ; plus de Bloodlust — **UNCERTAIN** ; Haste soumise aux DR depuis 9.6.0 (audit)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : aucune icône. Indirect : après le coup, le tueur **ne perd pas de terrain** (sprint d'Endurance/on-hit rattrapé plus vite) ; jamais de Bloodlust en chase longue (difficile à percevoir).
- **Soupçonner** (HEURISTIC) : réduction de distance anormalement rapide après un coup.
- **Confirmer** (HEURISTIC) : écran de fin.
- **Adaptation robuste** (HEURISTIC) : après un coup, **utiliser le sprint on-hit pour atteindre une tile**, pas un espace ouvert.
- **Counterplay** (HEURISTIC) : chases longues favorables (pas de Bloodlust) ; loops sûres plutôt que ligne droite.
- **Erreurs à ne pas faire** (HEURISTIC) : courir en ligne droite après avoir été frappé.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune lue (UNCERTAIN)

### Lightborn — Hillbilly
- **Statut / catégorie** : LIVE 10.1.2a (présumé) · anti-objets / info
- **Effet LIVE + valeurs** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) : immunité à l'aveuglement ; les survivants qui tentent d'aveugler sont révélés 6/8/10 s — **UNCERTAIN**
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : le tueur **ne réagit pas** à la lampe/pétard (pas d'animation d'aveuglement) — indice fort.
- **Soupçonner** (HEURISTIC) : un flash réussi sans animation.
- **Confirmer** (HEURISTIC) : 2ᵉ tentative sans effet + tueur qui vient droit sur le lanceur.
- **Adaptation robuste** (HEURISTIC) : **arrêter toute tentative d'aveuglement** dès le 1ᵉʳ échec ; garder la lampe pour la lumière/Boons ou abandonner l'objet.
- **Counterplay** (HEURISTIC) : bodyblock, sabotage, palettes pour les saves.
- **Erreurs à ne pas faire** (HEURISTIC) : rester à portée pour retenter un flash.
- **Menace (HEURISTIC)** : SoloQ 0 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune lue (UNCERTAIN)

### Nemesis — Oni
- **Statut / catégorie** : LIVE 10.1.2a (présumé) · info/aura (obsession)
- **Effet LIVE + valeurs** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) : le survivant qui aveugle ou étourdit le tueur devient l'Obsession, Oblivious 40/50/60 s, aura révélée 8 s — UNCERTAIN (4 s : connaissance du modèle (antérieure à mi-2026), UNCERTAIN)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **icône Obsession** qui passe sur soi juste après un stun/flash + icône **Oblivious**.
- **Soupçonner** (HEURISTIC) : transfert d'Obsession immédiatement après un stun.
- **Confirmer** (HEURISTIC) : Oblivious simultané + tueur qui vient droit sur soi.
- **Adaptation robuste** (HEURISTIC) : après un stun, **supposer que le tueur voit où l'on va** : changer de direction hors de sa ligne de vue ; ne pas se fier au rayon de terreur pendant ~1 min.
- **Counterplay** (HEURISTIC) : éviter les stuns « gratuits » inutiles ; SWF : informer l'Obsession de la position du tueur.
- **Erreurs à ne pas faire** (HEURISTIC) : se cacher derrière un mur en comptant sur le cœur pendant l'Oblivious.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune lue (UNCERTAIN)

### Gearhead — Deathslinger
- **Statut / catégorie** : LIVE 10.1.2a (présumé) · info/aura
- **Effet LIVE + valeurs** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) : pendant 30 s après un dégât, chaque skill check « Good » en réparation révèle le survivant 6/7/8 s — **UNCERTAIN** (le Great déclenche-t-il ? non vérifié)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct (la victime ne voit pas que son aura est lue). Indirect : tueur qui arrive pile sur le gen juste après un coup porté ailleurs.
- **Soupçonner** (HEURISTIC) : un allié vient d'être frappé + le tueur arrive sur votre gen ~10-20 s plus tard.
- **Confirmer** (HEURISTIC) : Distortion qui perd un jeton sur skill check ; écran de fin.
- **Adaptation robuste** (HEURISTIC) : dans les ~30 s suivant un coup, **viser des Great** (présumé non déclencheur) ou lâcher le gen.
- **Counterplay** (HEURISTIC) : Distortion ; rotation de gen quand un allié prend un coup.
- **Erreurs à ne pas faire** (HEURISTIC) : réparer en ratant la moitié des skill checks juste après qu'un allié a été touché.
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune lue (UNCERTAIN)

### I'm All Ears — Ghost Face
- **Statut / catégorie** : LIVE 10.1.2a (présumé) · info/aura
- **Effet LIVE + valeurs** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) : action rapide (casier, vault) à ≤48 m → aura révélée 8 s ; recharge 60/45/30 s — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct. Indirect : le tueur change de trajectoire juste après un vault/casier rapide.
- **Soupçonner** (HEURISTIC) : après un vault rapide hors de sa vue, le tueur coupe le bon chemin.
- **Confirmer** (HEURISTIC) : Distortion qui perd un jeton ; écran de fin.
- **Adaptation robuste** (HEURISTIC) : **vaults lents / entrée en casier lente** quand le tueur ne vous voit pas.
- **Counterplay** (HEURISTIC) : Distortion ; casser la ligne après le vault (changer de direction).
- **Erreurs à ne pas faire** (HEURISTIC) : entrer en casier en courant pour « se cacher ».
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune lue (UNCERTAIN)

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| 3P92-C01 | Brutal Strength : casse palettes/murs et coup de pied de gen +10/15/20 % | [1][2] | LIVE 10.1.2a | STRONG_SECONDARY |
| 3P92-C02 | Enduring : stun de palette −40/45/50 % (2 s → 1,2/1,1/1 s), inactif en portant | [4][5] | LIVE | STRONG_SECONDARY |
| 3P92-C03 | Sloppy Butcher : Haemorrhage + Mangled 70/80/90 s, flaques +50/75/100 %, régression de soin +25 % | [6][7] | LIVE | STRONG_SECONDARY |
| 3P92-C04 | Friends 'til the End : aura Obsession 6/8/10 s + Exposed 20 s ; hook Obsession → cri + nouvelle Obsession | [8][9] | LIVE | STRONG_SECONDARY |
| 3P92-C05 | Starstruck : Exposed dans le TR pendant portage, persiste 26/28/30 s, recharge 60 s | [10][11] | LIVE | STRONG_SECONDARY |
| 3P92-C06 | No Way Out : 12 s + 6/9/12 s/jeton, max 36/48/60 s, Loud Noise Notification | [12][13][18] | LIVE | VERIFIED_MULTI_SOURCE |
| 3P92-C07 | Coup de Grâce : +2 jetons/gen, max 5 détenus, fente +70/75/80 % | [14][15] | LIVE | STRONG_SECONDARY |
| 3P92-C08 | Terminus : Broken jusqu'à l'ouverture + 20/25/30 s | [16][17] | LIVE | STRONG_SECONDARY (conflit seed) |
| 3P92-C09 | Call of Brine : 30/40/50 % pendant 90 s (10.1.0) | [18] | LIVE | STRONG_SECONDARY |
| 3P92-C10 | Pentimento : totems ravivés non bénissables | [19] | LIVE | STRONG_SECONDARY |
| 3P92-C11 | Valeurs des 14 perks non vérifiées (Undying → I'm All Ears, hors Call of Brine) | seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) | ? | UNCERTAIN |

## Conflits

#### CONFLICT-3P92-01 : durée de persistance de Terminus
- Source A : résumé wiki (fandom/wiki.gg Terminus) — « lingers for an additional 20/25/30 seconds » [16][17]
- Source B : guide seed p92 — 35/40/45 s
- Hypothèse : le seed a pu reprendre une valeur PTB/future ou une erreur ; ou le résumé est obsolète (aucun buff de Terminus trouvé, recherche de confirmation bloquée par le quota).
- Résolution : UNRESOLVED (préférer 20/25/30 s, étiqueté STRONG_SECONDARY, jusqu'à une 2ᵉ source).

#### CONFLICT-3P92-02 : plafond de jetons de Coup de Grâce
- Source A : résumé wiki.gg — « max 5 tokens at a time » **et** « up to 10 tokens per Trial » [14]
- Source B : autres résumés / seed — max 5 (sans plafond par partie)
- Hypothèse : les deux sont compatibles (5 détenus, 10 gagnés au total sur 5 gens) ; le résumé a signalé lui-même une ambiguïté.
- Résolution : UNRESOLVED (impact survivant faible).

#### CONFLICT-3P92-03 : rayon de Hex: Blood Favour (LIVE vs PTB)
- Source A : seed LIVE 24/28/32 m ; seed PTB 10.2.0 « 32 m »
- Source B : connaissance du modèle (antérieure à mi-2026), UNCERTAIN — aucune source : 16/24/32 m
- Hypothèse : si le PTB passe à 32 m fixe, la valeur LIVE est probablement graduée (16/24/32 ou 24/28/32).
- Résolution : UNRESOLVED (aucune source lue).

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Brutal Strength | 10/15/20 % palettes, murs, gens | idem [1][2] | OK |
| Enduring | −40/45/50 %, sauf en portant | idem ; + non-application aux stuns de perks (résumé) | OK (IMPRÉCIS mineur) |
| Sloppy Butcher | Haemorrhage + Mangled 70/80/90 s, +25 % | idem + flaques +50/75/100 % | OK (omission) |
| Friends 'til the End | Exposed 20 s, aura 6/8/10 s, cri | idem | OK |
| Starstruck | Exposed en portage, 26/28/30 s, 60 s | idem | OK |
| No Way Out | 12 s + 6/9/12 s/jeton, alerte | idem + max 36/48/60 s | OK |
| Coup de Grâce | 2 jetons/gen, max 5, 70/75/80 % | idem (plafond/partie ambigu) | OK |
| Terminus | persiste 35/40/45 s | 20/25/30 s (résumé wiki) | FAUX probable (UNRESOLVED) |
| Call of Brine | 30/40/50 % 90 s, buff 10.1.0 | idem (audit) | OK |
| Hex: Undying, Pentimento, Devour Hope, Blood Favour | valeurs diverses | non vérifié (quota) | NON VÉRIFIABLE |
| Thanatophobia, Deathbound, Overcharge, Oppression, Lay Waste | valeurs diverses | non vérifié | NON VÉRIFIABLE (Oppression 45/40/35 s et Deathbound 12/8/4 m suspects) |
| Rapid Brutality, Lightborn, Nemesis, Gearhead, I'm All Ears | valeurs diverses | non vérifié | NON VÉRIFIABLE |
| Deathbound « (C+) » | sur page tier B | incohérence éditoriale | IMPRÉCIS |
| Taux d'usage (ex. Brutal Strength 6,5 % n°14) | chiffres figés | 7,63 % n°13 au moment de la recherche [3] | DATA volatile (à dater ou retirer) |

## Questions ouvertes

1. Vérifier les 14 perks non couvertes (priorité : Terminus 2ᵉ source, Hex: Blood Favour rayon LIVE, Oppression recharge, Thanatophobia valeurs, Lay Waste texte exact, Nemesis durée d'aura, I'm All Ears durée/recharge, Gearhead Good vs Great).
2. Statut PTB 10.2.0 de toutes les perks de ce périmètre (seules les notes PTB officielles tranchent ; le seed ne liste que Blood Favour).
3. Quelles perks de ce lot sont soumises aux Diminishing Returns (Call of Brine, Overcharge, Oppression, Lay Waste, Thanatophobia, Pentimento, Rapid Brutality : HYPOTHESIS) et lesquelles sont retouchées pour cette raison en PTB.
4. Blessing d'un Hex et Hex: Undying : le transfert se produit-il ? (non vérifié).
5. Call of Brine : l'alerte porte-t-elle sur les skill checks Good seulement, ou aussi Great ?

## Matériel pour la PERK DEDUCTION

Règles HEURISTIC / EXPERT OPINION. Règles 1-5 : effets vérifiés ; règles 6-10 : effets NON RE-VÉRIFIÉS (quota).

1. Coup de base reçu + icônes **Mangled + Haemorrhage** (tueur sans pouvoir qui les donne) → **Sloppy Butcher** quasi certain → soigner en une seule fois, sinon différer et faire des gens pendant ~70-90 s.
2. Entrée dans le rayon d'un tueur **qui porte** + icône **Exposed** → **Starstruck** → ne plus tenter de save, rester hors rayon pendant le portage et ~30 s après.
3. Allié accroché + l'Obsession devient **Exposed** (et/ou cri au hook de l'Obsession) → **Friends 'til the End** → l'Obsession se cache loin du hook ~20 s, ne sauve pas.
4. Portes alimentées + icône **Broken** chez tous les blessés → **Terminus** → se soigner avant la dernière gen, ouvrir une porte vite, jouer « one-hit ».
5. Contact avec un interrupteur + les **deux portes bloquées** par l'Entité → **No Way Out** → s'éloigner, revenir à la fin du blocage, ne pas y mener le tueur.
6. Coup reçu + **palettes bloquées** autour + totem allumé → **Hex: Blood Favour** → viser fenêtres / sortir de la zone, purification par un allié.
7. Stun/flash réussi + on devient **Obsession** + **Oblivious** → **Nemesis** → changer de direction hors ligne de vue, ne pas se fier au cœur ~1 min.
8. Flash réussi **sans animation d'aveuglement** → **Lightborn** → arrêter les tentatives, jouer bodyblock/sabotage.
9. Totem **purifié qui se rallume** → **Hex: Pentimento** → re-purifier, arrêter le « totem clean » des ternes, Boons sur totems non purifiés.
10. Hex purifié mais **effet toujours actif** → **Hex: Undying** → trouver et purifier le 2ᵉ totem allumé ; plus tard, purifier Undying en premier.

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
[16] Terminus — Fandom — https://deadbydaylight.fandom.com/wiki/Terminus — consulté le 27/09/2026 via WebSearch
[17] Terminus — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Terminus — consulté le 27/09/2026 via WebSearch
[18] Audit phase 0 (fichier local `kb/seed/audit_phase0.txt`) — historique des patchs (10.1.0 : Call of Brine 30/40/50 % 90 s ; 9.0.0 : 70 s / 130-150 %), portes (No Way Out), régression (5 % pour stopper, 8 regression events) — lu le 27/09/2026
[19] Audit phase 0 (fichier local) — tableau Totems/Boons (wiki.gg Totems) : totems ravivés par Pentimento non bénissables ; Diminishing Returns 9.6.0 — lu le 27/09/2026
