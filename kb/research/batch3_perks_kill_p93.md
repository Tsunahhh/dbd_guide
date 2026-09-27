# Lot 3 — Perks tueur vues du survivant, page 93 du guide seed

Couverture : 21/21 perks re-vérifiées sur page wiki complète (27/09/2026) ; dont 11 confirmées par note officielle (valeurs : Thrilling Tremors, Deerstalker, Hex: Thrill of the Hunt, Agitation, Iron Grasp, Dragon's Grip, Machine Learning, Silent Shadow, Hex: Retribution, Hex: Hive Mind, Secret Project).

Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 (15-21/09/2026) = **non LIVE**, toujours étiqueté PTB.
Méthode (lot 12a, re-vérification du 27/09/2026) : pages wiki.gg complètes via l'API MediaWiki (`kb/sources/wiki_perks_digest.md`) + notes officielles BHVR 9.0.0 → PTB 10.2.0 en texte complet (`kb/sources/patches/official_*.txt`). Confiance : STRONG_SECONDARY (wiki seul) ; VERIFIED_MULTI_SOURCE (wiki + note officielle concordante) ; VERIFIED_PRIMARY (note officielle seule, explicite).
Notes de menace / conseils = **HEURISTIC** sauf mention contraire.

Périmètre (21 perks) : Thrilling Tremors, Deerstalker, Hex: Thrill of the Hunt, Infectious Fright, Tinkerer, Spirit Fury, Hex: Face the Darkness, Agitation, Iron Grasp, Blood Warden, Remember Me, Dragon's Grip, Furtive Chase, Machine Learning, Trail of Torment, Silent Shadow, Hex: Retribution, Mindbreaker, Hex: Hive Mind, Secret Project, Scourge Hook: Monstrous Shrine.

## Historique de vérification

- 1re passe (lot 3) : 3/21 perks vérifiées par WebSearch (quota épuisé), 4 recoupées par l'audit phase 0.
- Re-vérification 12a (27/09/2026) : 21/21 perks sur page wiki complète + notes officielles.
- **PTB 10.2.0** : 6 perks de ce périmètre sont modifiées (Deerstalker, Hex: Thrill of the Hunt, Agitation, Iron Grasp, Machine Learning, Scourge Hook: Monstrous Shrine), d'après le wiki et la note officielle 559. Les 15 autres sont non modifiées.
- Les parties **indice observable / counterplay / adaptation** restent **HEURISTIC** ; elles ont été ajustées là où la valeur ou le déclencheur corrigé change la déduction.

---

### Thrilling Tremors — The Ghost Face
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (blocage)
- **Effet LIVE + valeurs** : après avoir **ramassé** un survivant, tous les générateurs **non réparés** à ce moment sont bloqués par l'Entité **16 s** ; leur aura apparaît en blanc au tueur. Recharge **40/35/30 s** depuis 9.0.0 (était 100/80/60 s) [24][15] — **VERIFIED_MULTI_SOURCE**. « Régression en pause pendant le blocage » (résumé fandom de la 1re passe [2]) : **absent** du texte LIVE complet → UNCERTAIN.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** : (HEURISTIC) au moment exact du **pickup**, les gens où personne ne répare deviennent bloqués (griffes de l'Entité, interaction impossible) ; un gen que vous alliez rejoindre devient inaccessible.
- **Soupçonner** : (HEURISTIC) pickup d'un coéquipier + gen « libre » soudain non interactif pendant ~16 s → Thrilling Tremors plausible (autres bloqueurs à distinguer : Grim Embrace, Dead Man's Switch, No Holds Barred, Corrupt Intervention). Si le heartbeat disparaît en même temps → combo avec **Secret Project** (tout blocage de gen donne 30 s d'Undetectable ; combo attesté par un correctif de la note 9.5.0 [20]).
- **Confirmer** : (HEURISTIC) blocage de **plusieurs** gens non réparés simultanément, synchronisé avec un pickup, puis levée ~16 s plus tard.
- **Adaptation robuste** : (HEURISTIC) pendant une chase qui va finir en down, **rester sur un gen** (un gen en cours de réparation n'est pas bloqué) ; éviter qu'aucun gen ne soit touché au moment du pickup.
- **Counterplay** : (HEURISTIC) garder 1-2 survivants **en train de réparer** en permanence ; en SWF, annoncer « down » pour que chacun touche un gen avant le pickup. Pas de répartition sur 3-4 gens vides.
- **Erreurs à ne pas faire** : (HEURISTIC) lâcher son gen pour aller « préparer » un unhook au moment du pickup ; croire à un Hex (aucun totem).
- **Menace (HEURISTIC 0-3)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : OK (16 s, 40/35/30 s). Le seed omet l'aura blanche → IMPRÉCIS mineur.
- **Sources** : [24][15][20] (anciennes : [1][2][3])

### Deerstalker — Générale
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (rework récent ; ancienne version : auras des survivants au sol dans 20/28/36 m)
- **Effet LIVE + valeurs** : quand un survivant lit votre aura, vous voyez la sienne pendant la même durée ; de plus, toutes les **40/35/30 s**, le survivant au **plus faible temps de chase cumulé** voit votre aura **3 s** (et vous voyez donc la sienne) [25]. Rework 9.2.0 [17] ; **3 s** confirmé par l'état « was 3s » de la note 559 [23] → **VERIFIED_MULTI_SOURCE** (CONFLICT-K93-01 résolu).
- **PTB 10.2.0 (NON LIVE)** : aura **3 → 4 s**, le reste inchangé [23][25] — VERIFIED_MULTI_SOURCE.
- **Indice observable (survivant)** : (HEURISTIC) vous voyez **l'aura rouge du tueur** quelques secondes, **sans perk d'aura** de votre côté, à intervalle régulier → c'est Deerstalker (c'est vous le moins chassé).
- **Soupçonner** : (HEURISTIC) le tueur vient droit sur vous après que vous avez utilisé une perk d'aura (Kindred, Alert, Premonition… à vérifier au cas par cas) ; ou aura du tueur « offerte » sans raison.
- **Confirmer** : (HEURISTIC) apparition de l'aura du tueur sans source + répétition au même intervalle (≈30-40 s).
- **Adaptation robuste** : (HEURISTIC) considérer que **chaque lecture d'aura du tueur vous révèle** ; ne pas « tunnel-gen » en croyant être caché ; bouger après chaque apparition d'aura.
- **Counterplay** : (HEURISTIC) l'aura dure 3 s → profiter de l'info (position du tueur) mais **changer de position** ensuite ; le survivant peu chassé doit se préparer à une chase (pallet/tile proche).
- **Erreurs à ne pas faire** : (HEURISTIC) se cacher sur place après l'aura (le tueur vous a vu aussi) ; spammer des perks d'aura contre ce tueur.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK pour LIVE (3 s, 40/35/30 s) et OK pour PTB (4 s). Le seed omet le volet « quand un survivant lit votre aura » → IMPRÉCIS.
- **Sources** : [25][17][23] (anciennes : [4][5][6][7][13])

### Hex: Thrill of the Hunt — Générale
- **Statut / catégorie** : LIVE 10.1.2a · hex (protection de totems)
- **Effet LIVE + valeurs** : Hex allumé dès le début de la partie ; 1 jeton par totem (terne ou Hex) restant, 5 au départ ; par jeton, **−8/9/10 %** de vitesse de purification **et** de bénédiction, max **40/45/50 %** ; −1 jeton à chaque totem purifié [26]. 8/9/10 % depuis 10.1.0 (était 8/10/12 % selon la note officielle [22]) → **VERIFIED_MULTI_SOURCE** (CONFLICT-K93-02 résolu). Le bonus « +10 % BP Hunter/jeton » a été **retiré en 8.4.0** (change log wiki) : obsolète. Aucune notification au tueur dans le texte LIVE.
- **PTB 10.2.0 (NON LIVE)** : **rework** — le 1er accrochage allume un totem terne ; à chaque accrochage, blocage des totems **6/7/8 s par Hex allumé** (wiki : max 30/35/40 s ; la note 559 dit « all Hex Totems », le wiki « all Totems ») ; le malus de purification disparaît [23][26] — VERIFIED_MULTI_SOURCE (portée exacte du blocage : UNCERTAIN).
- **Indice observable (survivant)** : (HEURISTIC) un totem Hex **allumé** dès le début ; la barre de purification/bénédiction avance nettement **plus lentement** (jusqu'à −40/50 % avec 5 totems restants).
- **Soupçonner** : (HEURISTIC) purification très lente d'un Hex + tueur qui revient vite vers le totem.
- **Confirmer** : (HEURISTIC) lenteur mesurable de purification (ou de bénédiction d'un terne) alors que les totems restants sont nombreux ; la lenteur diminue à chaque totem purifié.
- **Adaptation robuste** : (HEURISTIC) **purifier des totems ternes d'abord** (chaque terne retiré réduit le malus) ; ne pas purifier le Hex pendant que le tueur est proche.
- **Counterplay** : (HEURISTIC) SWF : un joueur « totems » pendant que le tueur est en chase loin ; Detective's Hunch / Small Game pour trouver les ternes.
- **Erreurs à ne pas faire** : (HEURISTIC) purifier un Hex à 5 jetons sous le rayon de terreur ; oublier que Pentimento peut rendre des jetons.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 0-1 (protège surtout d'autres Hex)
- **Écart avec le seed** : OK (LIVE 8/9/10 %, 5 jetons ; PTB correctement étiqueté).
- **Sources** : [26][22][23] (anciennes : [8][9][10][11][12])

### Infectious Fright — The Plague
- **Statut / catégorie** : LIVE 10.1.2a · info/aura · slugging
- **Effet LIVE + valeurs** : à chaque mise au sol (par n'importe quel moyen), tous les autres survivants **dans le rayon de terreur** crient et leur position est révélée **4/5/6 s** [27] — STRONG_SECONDARY
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** : (HEURISTIC) **vous criez** au moment où un coéquipier tombe alors que vous êtes dans le rayon de terreur (cri involontaire = indice direct).
- **Soupçonner** : (HEURISTIC) un down → le tueur abandonne le survivant au sol et arrive sur vous.
- **Confirmer** : (HEURISTIC) cri forcé synchronisé avec un down, vous dans le RT.
- **Adaptation robuste** : (HEURISTIC) **sortir du RT** d'une chase proche (ne pas « suivre » la chase pour sauver) ; ne pas rester groupé près d'une chase.
- **Counterplay** : (HEURISTIC) Calm Spirit (supprime les cris, à vérifier) ; SWF : se tenir hors RT, un seul sauveteur approche après le pickup.
- **Erreurs à ne pas faire** : (HEURISTIC) attendre juste à côté de la chase pour le « flashlight save » sans anticiper le cri.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : OK (RT, 4/5/6 s)
- **Sources** : [27]

### Tinkerer — The Hillbilly
- **Statut / catégorie** : LIVE 10.1.2a · info · stealth
- **Effet LIVE + valeurs** : quand un gen atteint **70 %**, Loud Noise Notification sur ce gen pour le tueur et Undetectable **12/14/16 s** ; **une seule fois par générateur et par partie** [28] — STRONG_SECONDARY
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** : (HEURISTIC) aucun indice HUD pour vous ; indirect : le **rayon de terreur disparaît** peu après que le gen dépasse ~70 %, puis le tueur surgit sans cœur.
- **Soupçonner** : (HEURISTIC) gen à ~70 % + perte du heartbeat + arrivée silencieuse du tueur.
- **Confirmer** : (HEURISTIC) icône Undetectable non visible côté survivant → confirmation surtout par **répétition** sur un **autre** gen (un même gen ne redéclenche pas) ou écran de fin.
- **Adaptation robuste** : (HEURISTIC) à l'approche de 70 %, **surveiller l'environnement / garder un œil sur la ligne de vue** ; un survivant « guette » pendant que l'autre répare.
- **Counterplay** : (HEURISTIC) Spine Chill / Alert / Kindred (info alternative) ; gen tapping ou rester sous 70 % puis rusher avec plusieurs ; SWF : chase call immédiat.
- **Erreurs à ne pas faire** : (HEURISTIC) considérer que « pas de cœur = tueur loin » quand un gen vient de passer 70 %.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : valeurs OK (70 %, 12/14/16 s) ; « la 1ʳᵉ fois qu'un gen atteint 70 % » : IMPRÉCIS (c'est une fois **par** gen)
- **Sources** : [28]

### Spirit Fury — The Spirit
- **Statut / catégorie** : LIVE 10.1.2a · chase
- **Effet LIVE + valeurs** : après avoir cassé manuellement **4/3/2** palettes au sol (tout moyen), la prochaine palette utilisée pour l'étourdir est **détruite instantanément** ; la durée du stun n'est pas modifiée ; la perk se désactive après usage [29] — STRONG_SECONDARY (la note 9.5.0 [20] : description réécrite, « destroys » les palettes). Recharge du compteur après usage : lecture du texte, UNCERTAIN.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** : (HEURISTIC) la palette **explose immédiatement** au moment du stun (visible directement).
- **Soupçonner** : (HEURISTIC) tueur qui casse systématiquement les palettes tôt, souvent avec Enduring (stun raccourci).
- **Confirmer** : (HEURISTIC) destruction instantanée d'une palette sur stun (hors pouvoirs qui cassent les palettes).
- **Adaptation robuste** : (HEURISTIC) après quelques palettes cassées, **ne pas compter sur le stun pour gagner la distance** : faire tomber la palette plus tôt (pré-drop) et quitter le tile.
- **Counterplay** : (HEURISTIC) compter les palettes cassées ; économiser les palettes fortes pour après l'activation ; transitions longues.
- **Erreurs à ne pas faire** : (HEURISTIC) stun puis rester sur la même boucle ; « jouer la palette » tardivement quand le tueur a Enduring + Spirit Fury.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK (4/3/2, stun subi)
- **Sources** : [29][20]

### Hex: Face the Darkness — The Knight
- **Statut / catégorie** : LIVE 10.1.2a · hex · info
- **Effet LIVE + valeurs** : s'il reste un totem terne, blesser un survivant (tout moyen) allume un Hex et **maudit** ce survivant ; toutes les **35/30/25 s**, les autres survivants **hors RT** crient et leur aura est révélée **2 s**. L'effet s'arrête (et le totem s'éteint) quand le maudit redevient sain **ou passe à l'état mourant** [30] — STRONG_SECONDARY
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** : (HEURISTIC) totem Hex allumé ; **cri périodique** alors que vous êtes loin du tueur ; icône « Cursed » (malédiction) sur le survivant blessé (à confirmer).
- **Soupçonner** : (HEURISTIC) cris réguliers hors RT pendant qu'un coéquipier est blessé.
- **Confirmer** : (HEURISTIC) les cris s'arrêtent quand le maudit est soigné, quand il tombe, ou quand le Hex est purifié ; le totem s'éteint alors (un totem Hex qui s'allume puis s'éteint = indice).
- **Adaptation robuste** : (HEURISTIC) **soigner le blessé en priorité** (coupe l'effet) ; chercher le totem Hex.
- **Counterplay** : (HEURISTIC) purifier le Hex ; Calm Spirit (à vérifier) ; ne pas rester blessé.
- **Erreurs à ne pas faire** : (HEURISTIC) jouer blessé toute la partie contre Knight ; ignorer les cris périodiques.
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : OK (35/30/25 s, 2 s, hors RT)
- **Sources** : [30]

### Agitation — The Trapper
- **Statut / catégorie** : LIVE 10.1.2a · transport
- **Effet LIVE + valeurs** : en portant un survivant, **+6/12/18 %** de vitesse (Haste visible depuis 8.7.0) et RT **+12 m** [31]. **VERIFIED_MULTI_SOURCE** (wiki + état « was 6/12/18% » de la note 559 [23]).
- **PTB 10.2.0 (NON LIVE)** : Haste **14/16/18 %**, RT +12 m inchangé [23][31] — VERIFIED_MULTI_SOURCE.
- **Indice observable (survivant)** : (HEURISTIC) **heartbeat** anormalement large pendant que le tueur porte quelqu'un ; tueur qui atteint un crochet lointain très vite.
- **Soupçonner** : (HEURISTIC) cœur audible de loin pendant un carry + crochet « impossible à rejoindre » atteint.
- **Confirmer** : (HEURISTIC) le RT se rétracte au moment de l'accrochage.
- **Adaptation robuste** : (HEURISTIC) sabotage / body block **seulement si le crochet est vraiment proche** du sauveteur ; sinon partir sur gen.
- **Counterplay** : (HEURISTIC) Breakdown, Saboteur (hooks proches à retirer) ; en SWF, flashlight/pallet save préparé **avant** le pickup.
- **Erreurs à ne pas faire** : (HEURISTIC) courir derrière le tueur pour un save de carry (inefficace contre le Haste).
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK (LIVE 6/12/18 %, +12 m) · PTB 14/16/18 % : OK, bien étiqueté
- **Sources** : [31][23]

### Iron Grasp — Générale
- **Statut / catégorie** : LIVE 10.1.2a · transport
- **Effet LIVE + valeurs** : temps pour se libérer **+4/8/12 %** ; le déport involontaire dû au débattement **−75 %** [32]. **VERIFIED_MULTI_SOURCE** (wiki + état « was 4/8/12% » de la note 559 [23]).
- **PTB 10.2.0 (NON LIVE)** : **+10/11/12 %**, −75 % inchangé [23][32] — VERIFIED_MULTI_SOURCE.
- **Indice observable (survivant porté)** : (HEURISTIC) la barre de wiggle monte plus lentement et le tueur **ne dévie presque pas**.
- **Soupçonner / confirmer** : (HEURISTIC) tueur qui marche droit malgré le wiggle.
- **Adaptation robuste** : (HEURISTIC) ne pas compter sur le wiggle ; préparer un sabotage/pallet save.
- **Counterplay** : (HEURISTIC) Boil Over / Flip-Flop (à vérifier) ; saves d'équipe.
- **Erreurs à ne pas faire** : (HEURISTIC) arrêter de wiggler (le wiggle nourrit toujours la progression).
- **Menace (HEURISTIC)** : SoloQ 0-1 · SWF 1
- **Écart avec le seed** : OK (LIVE 4/8/12 %, 75 % ; PTB 10/11/12 % bien étiqueté)
- **Sources** : [32][23]

### Blood Warden — The Nightmare
- **Statut / catégorie** : LIVE 10.1.2a · endgame
- **Effet LIVE + valeurs** : dès qu'une porte est ouverte, les auras des survivants **dans la zone de sortie** sont révélées au tueur ; **une fois par partie**, un accrochage pendant que la perk est active bloque **toutes les portes ouvertes 40/50/60 s** [33] — STRONG_SECONDARY (page complète + audit [12] ; notes officielles : correctifs seulement)
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** : (HEURISTIC) à l'accrochage après l'ouverture, l'Entité **bloque les portes** (griffes sur le passage de sortie ; impossible de sortir).
- **Soupçonner** : (HEURISTIC) porte ouverte + un survivant au sol / porté → risque maximal.
- **Confirmer** : (HEURISTIC) blocage visible sur la sortie au moment du hook.
- **Adaptation robuste** : (HEURISTIC) si une porte est ouverte et qu'un coéquipier est **porté**, soit **sortir immédiatement** (avant l'accrochage), soit préparer un save **avant** le hook ; ne pas attendre dans la sortie.
- **Counterplay** : (HEURISTIC) empêcher le hook (sabotage, pallet/flashlight save) ; les survivants restant dans la zone sont vus par aura → ne pas « tbag » dans la sortie.
- **Erreurs à ne pas faire** : (HEURISTIC) attendre en sortie pendant que le tueur accroche ; décrocher sous le blocage sans Borrowed Time.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1-2
- **Écart avec le seed** : OK
- **Sources** : [33][12]

### Remember Me — The Nightmare
- **Statut / catégorie** : LIVE 10.1.2a · endgame · obsession
- **Effet LIVE + valeurs** : +1 jeton par état de santé perdu par l'Obsession (tout moyen), max **3/4/5** ; chaque jeton ajoute **6 s** au temps d'ouverture des deux portes, max **+18/24/30 s** (ouverture totale **38/44/50 s** au lieu de 20 s) ; l'Obsession ouvre en 20 s [34] — STRONG_SECONDARY (la note 9.0.0 [15] ne fait que réécrire la description)
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** : (HEURISTIC) la barre d'ouverture de porte (20 s de base) avance **plus lentement** (jusqu'à 38-50 s) ; l'Obsession ouvre à vitesse normale.
- **Soupçonner** : (HEURISTIC) tueur qui cible l'Obsession de façon répétée + ouverture de porte anormalement longue.
- **Confirmer** : (HEURISTIC) comparer la vitesse d'ouverture Obsession vs autre survivant.
- **Adaptation robuste** : (HEURISTIC) **faire ouvrir la porte par l'Obsession** si elle est libre ; ouvrir la porte la plus éloignée du tueur (conseil déjà présent dans ch4_7).
- **Counterplay** : (HEURISTIC) limiter les coups sur l'Obsession ; Wake Up! (vitesse d'ouverture, à vérifier) ; gen à 99 %.
- **Erreurs à ne pas faire** : (HEURISTIC) ouvrir la porte proche du tueur en fin de partie.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK (3/4/5 jetons) ; valeur par jeton (6 s) omise → IMPRÉCIS
- **Sources** : [34][15]

### Dragon's Grip — The Blight
- **Statut / catégorie** : LIVE 10.1.2a · slugging / Exposed
- **Effet LIVE + valeurs** : après un coup de pied sur un gen, pendant **30 s**, le 1ᵉʳ survivant qui touche ce gen crie, est localisé **4 s** et devient **Exposed 60 s** ; recharge **60/45/30 s** [35]. Recharge 60/45/30 s depuis 9.1.0 (était 60/50/40 s) [16] → **VERIFIED_MULTI_SOURCE**. La « recharge plus longue » du souvenir du modèle est obsolète.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** : (HEURISTIC) **cri + icône Exposed** dès que vous touchez un gen fraîchement kické.
- **Soupçonner** : (HEURISTIC) tueur qui kicke puis s'éloigne peu.
- **Confirmer** : (HEURISTIC) icône Exposed immédiate au contact du gen (sans autre source).
- **Adaptation robuste** : (HEURISTIC) **attendre ~30 s** avant de reprendre un gen qui vient d'être kické, ou le toucher en étant en santé avec une chase possible.
- **Counterplay** : (HEURISTIC) se déplacer vers un autre gen ; Exposed = éviter toute confrontation 60 s.
- **Erreurs à ne pas faire** : (HEURISTIC) sauter sur le gen kické pour « arrêter la régression » immédiatement.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : OK (30 s, 4 s, 60 s, 60/45/30 s)
- **Sources** : [35][16]

### Furtive Chase — The Ghost Face
- **Statut / catégorie** : LIVE 10.1.2a · stealth · obsession
- **Effet LIVE + valeurs** : accrocher l'Obsession → **+10 % Haste** + Undetectable pendant **14/16/18 s** ; quand un autre survivant décroche l'Obsession, le statut d'Obsession passe au sauveteur [36] — STRONG_SECONDARY. La version PTB 9.3.0 a été revertée au 9.3.0 LIVE (note officielle [18], audit [12]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** : (HEURISTIC) après le hook de l'Obsession, **plus de heartbeat** alors que le tueur était proche ; l'icône Obsession **passe au sauveteur** après l'unhook.
- **Soupçonner** : (HEURISTIC) transfert d'Obsession au sauveteur + tueur silencieux après hook.
- **Confirmer** : (HEURISTIC) transfert d'Obsession au sauveteur (spécifique).
- **Adaptation robuste** : (HEURISTIC) le sauveteur de l'Obsession doit **s'attendre à être chassé ensuite** ; ne pas unhook sans vérifier les alentours.
- **Counterplay** : (HEURISTIC) unhook avec Borrowed Time ; ne pas envoyer le survivant le plus faible décrocher l'Obsession.
- **Erreurs à ne pas faire** : (HEURISTIC) lire « pas de cœur » comme « tueur parti » juste après un hook d'Obsession.
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : OK (10 %, 14/16/18 s, transfert)
- **Sources** : [36][18][12]

### Machine Learning — The Singularity
- **Statut / catégorie** : LIVE 10.1.2a · stealth / chase
- **Effet LIVE + valeurs** : frapper un gen le rend **compromis** (un seul à la fois : frapper un autre gen y transfère l'état ; aura jaune pour le tueur) ; quand ce gen est terminé : **Undetectable + 8 % Haste** pendant **40/50/60 s** ; la perk se **désactive après usage** [37]. 8 % (était 10 %) et 40/50/60 s depuis 9.0.0 [15] ; « was 8% » confirmé par la note 559 [23] → **VERIFIED_MULTI_SOURCE**. Le 10 % du ch8 du seed est la valeur d'avant 9.0.0 **et** celle du PTB 10.2.0.
- **PTB 10.2.0 (NON LIVE)** : jusqu'à **3** gens compromis à la fois ; à la complétion de l'un d'eux : Undetectable + **10 %** Haste 40/50/60 s, et les autres perdent l'état compromis [23][37] — VERIFIED_MULTI_SOURCE.
- **Indice observable (survivant)** : (HEURISTIC) aucun indice HUD ; à la **complétion d'un gen**, le heartbeat disparaît et le tueur est plus rapide pendant ~1 min.
- **Soupçonner** : (HEURISTIC) Singularity (ou autre) qui kicke un gen puis s'en désintéresse + disparition du RT à sa complétion.
- **Confirmer** : (HEURISTIC) répétition du schéma sur 2 gens ; écran de fin.
- **Adaptation robuste** : (HEURISTIC) après avoir fini **le dernier gen kické** par le tueur, **se disperser immédiatement** et se mettre en position de sécurité 40-60 s. En LIVE, l'effet ne se déclenche qu'**une fois** (désactivation après usage, lecture du texte) : après une première disparition du heartbeat liée à une complétion, la menace est passée.
- **Counterplay** : (HEURISTIC) terminer d'abord les gens non kickés quand c'est possible ; info (Kindred/Alert).
- **Erreurs à ne pas faire** : (HEURISTIC) rester groupés sur le gen terminé ; aller unhook « à la découverte » pendant l'Undetectable.
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : p93 OK (8 %, 40/50/60 s) ; ch8 l.1483 « 10 % » : **PTB-comme-LIVE** (valeur PTB 10.2.0, aussi valeur d'avant 9.0.0) ; PTB « 3 gens » : OK
- **Sources** : [37][15][23]

### Trail of Torment — The Executioner
- **Statut / catégorie** : LIVE 10.1.2a · stealth
- **Effet LIVE + valeurs** : coup de pied sur un gen → Undetectable ; l'aura du gen frappé est révélée **à tous les survivants, en jaune** ; l'effet s'arrête quand le gen cesse de régresser (tout moyen) ; recharge **60/45/30 s** (depuis 8.1.0) [38] — STRONG_SECONDARY (la note 9.5.0 [20] ne fait que réécrire la description)
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** : (HEURISTIC) **aura jaune d'un générateur visible sans perk** → c'est le signal quasi unique de Trail of Torment.
- **Soupçonner** : (HEURISTIC) aura de gen jaune + pas de heartbeat.
- **Confirmer** : (HEURISTIC) l'aura disparaît quand quelqu'un touche le gen (fin de régression) et le RT revient.
- **Adaptation robuste** : (HEURISTIC) tant que l'aura jaune est visible, **supposer le tueur furtif et proche** ; toucher le gen (même 1 s) pour **couper** l'Undetectable si c'est sûr.
- **Counterplay** : (HEURISTIC) un tap du gen arrête la régression → fin de l'effet ; en SWF, annoncer « ToT actif ».
- **Erreurs à ne pas faire** : (HEURISTIC) ignorer l'aura jaune ; croire que le tueur est loin faute de cœur.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : OK (recharge 60/45/30 s, « tant qu'il régresse » = formulation du wiki ; ch8 « jusqu'à ce qu'il soit réparé » : IMPRÉCIS mineur)
- **Sources** : [38][20]

### Silent Shadow — The Slasher (Jason Voorhees, 10.0.0)
- **Statut / catégorie** : LIVE 10.1.2a (perk de 10.0.0, origine vérifiée par l'audit) · stealth · endgame
- **Effet LIVE + valeurs** : Undetectable **11/12/13 s** à chaque accrochage ; Undetectable pour le reste de la partie une fois les portes alimentées (tous les gens terminés) [39]. Rework 10.0.0 (avant : au début de la partie) : **VERIFIED_MULTI_SOURCE** (wiki + note officielle 10.0.0 [21]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** : (HEURISTIC) **pas de heartbeat après chaque hook** (même tueur proche) ; en **fin de partie, aucun heartbeat du tout**.
- **Soupçonner** : (HEURISTIC) absence de RT juste après hook + endgame silencieux.
- **Confirmer** : (HEURISTIC) endgame entier sans heartbeat alors que le tueur est vu (aura/vision).
- **Adaptation robuste** : (HEURISTIC) en endgame, **supposer le tueur à proximité** à tout moment ; ouvrir les portes à deux (un guetteur).
- **Counterplay** : (HEURISTIC) Kindred / Alert / Bond pour localiser ; unhook avec BT.
- **Erreurs à ne pas faire** : (HEURISTIC) unhook instantané « parce qu'il n'y a pas de cœur ».
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : OK (origine Slasher, 11/12/13 s, endgame)
- **Sources** : [39][21][12]

### Hex: Retribution — The Deathslinger
- **Statut / catégorie** : LIVE 10.1.2a · hex · info
- **Effet LIVE + valeurs** : un survivant qui **bénit ou purifie un totem** (terne ou Hex) subit **Oblivious 40/50/60 s** ; quand un totem Hex est retiré **par n'importe quel moyen** (y compris le sien, et ceux des autres Hex), toutes les auras des survivants sont révélées **20 s** [40]. 40/50/60 s (était 35/40/45 s) et 20 s (était 15 s) depuis 9.0.0 [15] → **VERIFIED_MULTI_SOURCE**. Le souvenir du modèle (terne seulement, durée plus courte) est obsolète.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** : (HEURISTIC) **icône Oblivious** juste après avoir purifié **ou béni** un totem → confirmation directe.
- **Soupçonner** : (HEURISTIC) Oblivious sans autre cause après une purification ou une bénédiction.
- **Confirmer** : (HEURISTIC) icône Oblivious + totem Hex allumé quelque part.
- **Adaptation robuste** : (HEURISTIC) sous Oblivious, **jouer comme si le tueur était à côté** (pas de heartbeat) ; avant de purifier **n'importe quel** Hex (Ruin, Devour…), prévenir l'équipe et se positionner en sécurité (tous révélés 20 s).
- **Counterplay** : (HEURISTIC) limiter les interactions avec les totems (les Boons déclenchent aussi l'Oblivious) ; purifier les Hex quand le tueur est en chase loin.
- **Erreurs à ne pas faire** : (HEURISTIC) faire des gens en solo sous Oblivious sans vérifier ; purifier le Hex à côté d'un crochet occupé.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK (« terne ou hex », 40/50/60 s, 20 s) ; omet que la bénédiction déclenche aussi → IMPRÉCIS mineur
- **Sources** : [40][15]

### Mindbreaker — The Demogorgon
- **Statut / catégorie** : LIVE (retour de licence Stranger Things au 9.3.0 selon source citée par le seed) · autre (anti-info / fatigue)
- **Effet LIVE + valeurs** : en réparant un gen, les survivants subissent **Blindness** et **Exhausted** ; les deux persistent **3/4/5 s** après la fin de l'interaction. Mindbreaker ne remplace pas un Exhausted déjà présent : il **met son minuteur en pause** [41]. Aucun seuil de progression dans le texte LIVE. STRONG_SECONDARY ; perk réactivée en 9.3.0 (note officielle [18]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** : (HEURISTIC) icônes **Blindness + Exhausted** qui apparaissent **dès que vous réparez**.
- **Soupçonner / confirmer** : (HEURISTIC) Exhausted sans avoir utilisé de perk d'exhaustion, lié aux gens → confirmation directe.
- **Adaptation robuste** : (HEURISTIC) **quitter le gen tôt** (≥ 3-5 s avant l'arrivée du tueur) pour retrouver sa perk d'exhaustion ; si tu es déjà Exhausted, réparer **gèle** ton minuteur : ne compte pas récupérer ta perk en réparant. Ne pas dépendre des auras pendant la réparation.
- **Counterplay** : (HEURISTIC) privilégier des perks sans exhaustion (ex. Off the Record, Unbreakable — interactions à vérifier au lot 2) ; SWF : annonces vocales remplacent les auras.
- **Erreurs à ne pas faire** : (HEURISTIC) lâcher le gen au dernier moment en comptant sur Sprint Burst/Lithe.
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : OK (3/4/5 s) ; « réactivé au 9.3.0 » confirmé par la note officielle 9.3.0
- **Sources** : [41][18] ([14] lien du seed, non relu)

### Hex: Hive Mind — The First
- **Statut / catégorie** : LIVE 10.1.2a (The First = 9.4.0) · hex · slowdown / info
- **Effet LIVE + valeurs** : au 1ᵉʳ accrochage, un totem terne devient Hex ; le tueur voit les gens en aura, l'intensité indiquant leur progression ; quand **4 gens sont terminés** (1 restant à faire), **tous les gens restants explosent**, perdent **6/8/10 %** et régressent ; le totem redevient terne et la perk se désactive [42]. **VERIFIED_MULTI_SOURCE** (wiki + note officielle 9.4.0 [19]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** : (HEURISTIC) **Hex allumé après le 1ᵉʳ hook** ; gens qui perdent d'un coup de la progression quand il ne reste qu'un gen.
- **Soupçonner** : (HEURISTIC) totem Hex qui apparaît au premier hook contre The First.
- **Confirmer** : (HEURISTIC) explosion simultanée des gens au passage à « 1 gen restant ».
- **Adaptation robuste** : (HEURISTIC) **chercher et purifier le Hex avant le 4ᵉ gen** ; ne pas finir le 4ᵉ gen alors qu'un Hex est actif si les autres gens sont bas.
- **Counterplay** : (HEURISTIC) un survivant dédié aux totems après le 1ᵉʳ hook.
- **Erreurs à ne pas faire** : (HEURISTIC) ignorer un Hex « passif ».
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : OK (1er accrochage, 6/8/10 %, 1 gen restant)
- **Sources** : [42][19]

### Secret Project — The First
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (blocage) · stealth
- **Effet LIVE + valeurs** : chaque totem béni ou purifié bloque un gen non bloqué au hasard **20/25/30 s** ; **chaque fois qu'un ou plusieurs gens deviennent bloqués (quelle qu'en soit la source)**, Undetectable **30 s** [43]. **VERIFIED_MULTI_SOURCE** (wiki + note officielle 9.4.0 [19]). « Toute source » : texte LIVE + correctif 9.5.0 sur l'interaction avec Thrilling Tremors [20].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** : (HEURISTIC) un gen se bloque **juste après** une purification/bénédiction ; heartbeat qui disparaît ensuite, **aussi** après tout autre blocage de gen (DMS, Thrilling Tremors, No Holds Barred…).
- **Soupçonner / confirmer** : (HEURISTIC) corrélation purification → blocage aléatoire.
- **Adaptation robuste** : (HEURISTIC) purifier les totems **en dehors des moments critiques** (pas quand un gen est presque fini) ; après une purification **ou tout blocage de gen**, jouer « tueur furtif » pendant 30 s.
- **Counterplay** : (HEURISTIC) limiter les purifications inutiles de ternes ; coordonner en SWF.
- **Erreurs à ne pas faire** : (HEURISTIC) purifier tous les ternes par réflexe contre The First.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK (20/25/30 s, 30 s)
- **Sources** : [43][19][20]

### Scourge Hook: Monstrous Shrine — Générale
- **Statut / catégorie** : LIVE 10.1.2a · scourge
- **Effet LIVE + valeurs** : les 4 crochets de la cave + 4 autres crochets deviennent Fléau (aura blanche pour le tueur) ; quand le tueur est à **plus de 24 m** d'un survivant accroché à un crochet Fléau, le processus de sacrifice de ce survivant est accéléré de **10/15/20 %** [44] — STRONG_SECONDARY
- **PTB 10.2.0 (NON LIVE)** : **rework** — même condition (tueur à ≥ 24 m d'un survivant sur crochet Fléau), mais l'effet devient : les gens **non réparés** régressent à **150/175/200 %** (note 559 [23] ; le wiki dit « all Generators ») ; l'accélération du sacrifice disparaît (change log wiki [44]) — VERIFIED_MULTI_SOURCE.
- **Indice observable (survivant)** : (HEURISTIC) barre de sacrifice d'un coéquipier qui avance **plus vite** quand le tueur s'éloigne d'un crochet de cave ou d'un crochet Fléau. Visibilité des crochets Fléau côté survivant : UNCERTAIN (le wiki ne précise pas).
- **Soupçonner** : (HEURISTIC) crochets Fléau + la cave comptée (tous les hooks de cave).
- **Confirmer** : (HEURISTIC) icône Scourge de la perk sur les crochets blancs + progression accélérée.
- **Adaptation robuste** : (HEURISTIC) **unhook plus tôt** quand le tueur est loin d'un crochet Fléau ; éviter la cave.
- **Counterplay** : (HEURISTIC) Saboteur / Breakdown sur crochets Fléau ; ne pas se faire descendre près de la cave.
- **Erreurs à ne pas faire** : (HEURISTIC) attendre la fin de phase pour unhook sur un crochet Fléau.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : LIVE OK (cave + 4, > 24 m, 10/15/20 %) ; PTB « régression à 150/175/200 % » OK (bien étiqueté ; le doute de la 1re passe est levé)
- **Sources** : [44][23]

---

## Matériel pour la PERK DEDUCTION

Règles HEURISTIC (effets sous-jacents re-vérifiés sur page wiki complète le 27/09/2026).

1. **Aura rouge du tueur visible sans perk d'aura, à intervalle régulier** → Deerstalker (vous êtes le moins chassé) → bouger après chaque apparition, préparer une chase.
2. **Aura jaune d'un gen visible sans perk + pas de heartbeat** → Trail of Torment → supposer le tueur proche et furtif ; taper le gen si sûr pour couper l'effet.
3. **Pickup d'un coéquipier + plusieurs gens libres soudain bloqués ~16 s** → Thrilling Tremors (+ Secret Project si le heartbeat disparaît) → garder toujours 1-2 gens en cours de réparation pendant les chases qui finissent en down.
4. **Vous criez au moment d'un down, en étant dans le RT** → Infectious Fright → sortir du RT des chases, un seul sauveteur approche après pickup.
5. **Cri + Exposed en touchant un gen tout juste kické** → Dragon's Grip → attendre ~30 s ou changer de gen après un kick.
6. **Icône Oblivious après purification ou bénédiction d'un totem** → Hex: Retribution → jouer comme si le tueur était à côté ; purifier tout Hex seulement en sécurité (auras révélées 20 s).
7. **Blindness + Exhausted dès qu'on répare** → Mindbreaker → quitter le gen 3-5 s avant l'arrivée du tueur ; réparer gèle un Exhausted existant.
8. **Porte ouverte + coéquipier porté** → Blood Warden possible → sortir **avant** l'accrochage ou prévenir le hook ; jamais attendre en sortie.
9. **Heartbeat absent juste après un hook (et/ou tout l'endgame silencieux)** → Silent Shadow / Furtive Chase (si Obsession accrochée) → aucun unhook « parce qu'il n'y a pas de cœur » ; vérifier les angles.
10. **Heartbeat qui disparaît quand un gen passe ~70 % (une fois par gen) ou à la complétion d'un gen kické (une seule fois en LIVE)** → Tinkerer / Machine Learning → guetteur sur les gens avancés, dispersion immédiate après une complétion.
11. **Gen bloqué juste après une purification/bénédiction + heartbeat qui disparaît** → Secret Project → purifier hors moments critiques, jouer « tueur furtif » 30 s.

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| K93-01 | Thrilling Tremors : blocage 16 s des gens non réparés au pickup, recharge 40/35/30 s | [1][2][3] | LIVE (depuis 9.0.0) | STRONG_SECONDARY |
| K93-02 | Thrilling Tremors : recharge était 100/80/60 s avant 9.0.0 | [1][3] | HISTORICAL | STRONG_SECONDARY |
| K93-03 | Thrilling Tremors : régression des gens en pause pendant le blocage | [2] | LIVE | STRONG_SECONDARY |
| K93-04 | Deerstalker : toutes les 40/35/30 s, survivant au plus faible temps de chase voit l'aura du tueur 3 s | [6][7] (« was 3 s ») | LIVE | STRONG_SECONDARY (voir CONFLICT-K93-01) |
| K93-05 | Deerstalker : aura 4 s | [6][7] | PTB 10.2.0 | STRONG_SECONDARY |
| K93-06 | Thrill of the Hunt : −8/9/10 %/jeton purif./bénédiction, max 40/45/50 % | [8][12] | LIVE (10.1.0) | STRONG_SECONDARY (voir CONFLICT-K93-02) |
| K93-07 | Thrill of the Hunt : rework (1ᵉʳ hook allume un terne, chaque hook bloque les Hex 6/7/8 s par Hex allumé) | [10][11] | PTB 10.2.0 | STRONG_SECONDARY |
| K93-08 | Blood Warden : blocage des portes 40/50/60 s, 1×/partie | [12] | LIVE | STRONG_SECONDARY |
| K93-09 | Silent Shadow : perk de The Slasher (10.0.0) | [12] | LIVE | STRONG_SECONDARY |
| K93-10 | Furtive Chase : changement PTB 9.3.0 reverté au 9.3.0 LIVE | [12] | HISTORICAL | STRONG_SECONDARY |

## Conflits

#### CONFLICT-K93-01 : durée d'aura LIVE de Deerstalker (3 s vs 4 s)
- Source A : résumé de recherche fandom/wiki (« Current Effects » : aura **4 s**) — https://deadbydaylight.fandom.com/wiki/Deerstalker
- Source B : résumé des notes PTB 10.2.0 (« 4 seconds (was 3 seconds) ») — https://steampeaks.com/news/706656822950364293 , https://app.betahub.io/projects/pr-5642738318/releases/5737
- Hypothèse : la page wiki affiche déjà la valeur PTB (risque de contamination PTB signalé par l'audit, point 10).
- Résolution : **LIVE = 3 s, PTB = 4 s** retenu (probable), à reconfirmer quand 10.2.0 sort — UNRESOLVED formellement.

#### CONFLICT-K93-02 : valeur LIVE de Hex: Thrill of the Hunt (8/9/10 % vs 10/12/14 %)
- Source A : résumé fandom présenté comme « Patch 10.1.0 » : **10/12/14 %**, max 50/60/70 % — https://deadbydaylight.fandom.com/wiki/Hex:_Thrill_of_the_Hunt
- Source B : résumé wiki.gg / NightLight : **8/9/10 %**, max 40/45/50 % ; audit phase 0 (patch 10.1.0 : « Hex: Thrill of the Hunt 8/9/10 % »).
- Hypothèse : fandom (miroir moins maintenu) montre la valeur d'avant 10.1.0 ; le résumé a mal attribué le numéro de patch.
- Résolution : **8/9/10 % LIVE** retenu (audit + wiki.gg) ; 10/12/14 % = OUTDATED probable.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Thrilling Tremors | 16 s, recharge 40/35/30 s | idem (depuis 9.0.0) ; + pause de régression, aura blanche | OK (IMPRÉCIS mineur) |
| Deerstalker | aura 3 s toutes les 40/35/30 s ; 4 s au PTB | idem ; omet le volet « lecture d'aura réciproque » | OK / IMPRÉCIS |
| Hex: Thrill of the Hunt | 5 jetons, 8/9/10 %/jeton ; rework au PTB | idem | OK |
| Hex: Thrill of the Hunt (PTB) | s'allume au 1ᵉʳ hook, blocage Hex 6/7/8 s par Hex | idem, bien étiqueté PTB | OK |
| Deerstalker (PTB) | 4 s | idem | OK |
| Blood Warden | 40/50/60 s, 1×/partie, auras en sortie | idem (audit) | OK |
| Silent Shadow | perk du Slasher | idem (audit 10.0.0) | OK (valeurs NON VÉRIFIABLE) |
| Machine Learning | p93 : 8 % Haste ; ch8 l.1483 : 10 % Haste | non vérifié | IMPRÉCIS (incohérence interne) |
| Tinkerer | « la 1ʳᵉ fois qu'un gen atteint 70 % » | non vérifié (connaissance du modèle (antérieure à mi-2026), UNCERTAIN : une fois **par** gen) | NON VÉRIFIABLE (ambigu) |
| Hex: Retribution | Oblivious en touchant « un totem (terne ou hex) », révélation 20 s | non vérifié (connaissance du modèle (antérieure à mi-2026), UNCERTAIN : terne seulement, durée plus courte) | NON VÉRIFIABLE |
| Dragon's Grip | recharge 60/45/30 s | non vérifié | NON VÉRIFIABLE |
| Trail of Torment | recharge 60/45/30 s | non vérifié | NON VÉRIFIABLE |
| Monstrous Shrine (PTB) | « régression à 150/175/200 % » | non vérifié ; formulation suspecte | NON VÉRIFIABLE |
| Agitation / Iron Grasp (PTB) | 14/16/18 % ; 10/11/12 % | non vérifié | NON VÉRIFIABLE (étiquetage PTB correct) |
| Autres (Infectious Fright, Spirit Fury, Face the Darkness, Remember Me, Furtive Chase, Mindbreaker, Hive Mind, Secret Project) | voir fiches | non vérifié | NON VÉRIFIABLE |

## Questions ouvertes

- **Relancer ce lot quand le quota WebSearch est rétabli** : 18 perks sans vérification de valeur (priorité : Trail of Torment, Dragon's Grip, Hex: Retribution, Machine Learning, Tinkerer, Monstrous Shrine, Hive Mind, Secret Project).
- Deerstalker LIVE : 3 s confirmé seulement par le « was 3 s » des notes PTB ; relire la page wiki.gg (historique) pour exclure une contamination PTB.
- Thrill of the Hunt : le tueur est-il encore notifié quand un survivant commence à purifier ? (non vérifié)
- Liste complète des 58 perks PTB 10.2.0 (timesaver.gg [10]) non lue : impossible d'affirmer « non modifiée » pour les perks du périmètre hors Deerstalker / Thrill of the Hunt (et Agitation / Iron Grasp / Machine Learning / Monstrous Shrine selon le seed).
- Mindbreaker : condition de déclenchement exacte au retour 9.3.0 (seuil de progression ?).
- Calm Spirit contre Infectious Fright / Face the Darkness (suppression des cris) : à vérifier dans le lot 2.

## Sources

[1] Thrilling Tremors — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Thrilling_Tremors — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[2] Thrilling Tremors — Fandom — https://deadbydaylight.fandom.com/wiki/Thrilling_Tremors — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[3] Thrilling Tremors — NightLight — https://nightlight.gg/perks/Thrilling_Tremors — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[4] Deerstalker — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Deerstalker — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[5] Deerstalker — Fandom — https://deadbydaylight.fandom.com/wiki/Deerstalker — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[6] 10.2.0 | PTB Patch Notes — SteamPeaks — https://steampeaks.com/news/706656822950364293 — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[7] 10.2.0 PTB — BetaHub — https://app.betahub.io/projects/pr-5642738318/releases/5737 — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[8] Hex: Thrill of the Hunt — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Hex:_Thrill_of_the_Hunt — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[9] Hex: Thrill of the Hunt — Fandom — https://deadbydaylight.fandom.com/wiki/Hex:_Thrill_of_the_Hunt — consulté le 27/09/2026 via WebSearch (résumé de recherche ; valeurs probablement obsolètes)
[10] DBD Perk Changes: All 58 Killer and Survivor Perks in the 10.2.0 PTB — timesaver.gg — https://timesaver.gg/blog/dbd-perk-changes-10-2-0 — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[11] DBD Patch Notes 10.2.0 — timesaver.gg — https://timesaver.gg/blog/dbd-patch-notes-10-2-0 — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[12] Audit phase 0 (interne, déjà vérifié) — kb/seed/audit_phase0.txt (sections patchs 9.3.0, 10.0.0, 10.1.0 ; tableau Exit Gates → wiki.gg Exit Gates)
[13] Deerstalker — NightLight — https://nightlight.gg/perks/Deerstalker — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[14] Dead by Daylight update 9.3.0 out now, Mindbreaker perk is back — TheSixthAxis — https://www.thesixthaxis.com/2025/11/25/dead-by-daylight-update-9-3-0-out-now-mindbreaker-perk-is-back/ — cité par le seed, **non consulté** en session
