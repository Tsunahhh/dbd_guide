# Lot 3 — Perks tueur vues du survivant, page 96 du guide seed (Tier D)

**Couverture : 27/27 perks re-vérifiées sur page wiki complète (27/09/2026) ; dont 17 confirmées par note officielle** (VERIFIED_MULTI_SOURCE : Overwhelming Presence, Monitor & Abuse, Septic Touch, Game Afoot, THWACK!, Leverage, Unbound, Dark Arrogance, Scourge Hook: Hangman's Trick, Hex: Overture of Doom, Ravenous, Wandering Eye, Hex: Scared to Death, Rampage, Spies from the Shadows, Unrelenting, Bitter Murmur). Re-vérification LOT 12a.

- Référence : LIVE 10.1.2a (17/09/2026) ; PTB 10.2.0 (15-21/09/2026) **non LIVE**, toujours étiqueté PTB.
- Méthode (LOT 12a) : pages wiki.gg complètes via API (`kb/sources/wiki_perks_digest.md`, brut `wiki_perks.json`) + notes officielles BHVR locales (`kb/sources/patches/official_*.txt`). Première passe (WebSearch, 9 perks) conservée comme sources [1]-[11].
- Périmètre : 27 perks (seed `kb/seed/ch9_killperks.txt` l. 646-753) ; catégories/PTB seed l. 754-841.
- Notes de menace = **HEURISTIC**. Rubriques analytiques (indices observables, soupçonner/confirmer, adaptation, counterplay, erreurs) = **HEURISTIC / EXPERT OPINION**.

> **Points de méthode.**
> - **Undone** et **Ravenous** : LIVE « NON TROUVÉE » dans le digest → reconstruite depuis le change log wiki 10.2.0 (« from X to Y ») et, pour Ravenous, la note 9.2.0 (sortie) et la note PTB 559 (« was 40/50/60s »). Undone LIVE reste partiellement documentée (nombre de jetons et cooldown non décrits).
> - PTB 10.2.0 : parmi ces 27 perks, **Game Afoot, Unbound, Undone, Dark Arrogance, Ravenous, Spies from the Shadows, Unrelenting, Bitter Murmur** sont modifiées (note 559 + change log wiki) ; les autres sont « non modifiées au PTB 10.2.0 d'après le wiki et la note officielle 559 ».
> - Le seed ch8 (`ch8_killers.txt`) présente comme LIVE des valeurs qui sont en réalité **PTB 10.2.0** (Unbound, Undone, Dark Arrogance, Ravenous) : confirmé (CONFLICT-K96-01 RÉSOLU).

---

## Fiches

### Bloodhound — Wraith
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (pistage)
- **Effet LIVE + valeurs** : les Pools of Blood des survivants blessés apparaissent en **rouge vif** et durent **2/3/4 s** de plus — STRONG_SECONDARY [1][13]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : aucun indice direct (le sang n'est visible que par le tueur).
- **Soupçonner** : tueur qui vous retrouve blessé après avoir cassé la ligne de vue, alors que vous ne laissez pas de scratch marks visibles (marche accroupie/lente) → plausible.
- **Confirmer** : écran de fin de partie uniquement.
- **Adaptation robuste** : blessé, ne pas compter sur un « stealth reset » par la marche ; préférer un soin rapide ou rester loin (≥ 1 tile) des flaques récentes.
- **Counterplay** : se soigner tôt ; changer de direction derrière un obstacle.
- **Erreurs à ne pas faire** : rester blessé et tenter de se cacher dans un buisson à 5 m de là où on a été touché.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK (« plus visibles » = rouge vif).
- **Sources** : [1][2][13]

### Shadowborn — Wraith
- **Statut / catégorie** : LIVE 10.1.2a · chase (anti-lampe)
- **Effet LIVE + valeurs** : quand le tueur est aveuglé par n'importe quel moyen : **6/8/10 % de Haste pendant 10 s** — STRONG_SECONDARY [3][13] ; correctif 10.0.3 : ne s'activait pas quand Rampage avait des jetons [21]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : aucun indice HUD ; le tueur semble accélérer juste après un aveuglement (lampe, Blast Mine, Flashbang…).
- **Soupçonner** : tueur visiblement plus rapide juste après un blind réussi + il revient immédiatement sur le porteur de lampe → plausible.
- **Confirmer** : écran de fin de partie.
- **Adaptation robuste** : après un blind, courir **immédiatement** vers une ressource sûre au lieu de rester à regarder (10 s de Haste = gros gain de distance pour le tueur).
- **Counterplay** : utiliser la lampe pour sauver (pickup/palette) et non pour du « bully » gratuit.
- **Erreurs à ne pas faire** : spam de lampe en open field sans ressource proche.
- **Menace** : SoloQ 0 · SWF 1 (SWF lampe-heavy)
- **Écart avec le seed** : OK
- **Sources** : [3][13][21]

### Stridor — Nurse
- **Statut / catégorie** : LIVE 10.1.2a · info (audio)
- **Effet LIVE + valeurs** : Grunts of Pain des blessés **+30/40/50 %** de volume ; respiration normale **+15/20/25 %** ; additif avec d'autres modificateurs depuis 8.1.1 (peut remonter un volume réduit à 0 % par une autre perk) — STRONG_SECONDARY [4][13]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : aucun indice direct.
- **Soupçonner** : le tueur trouve des survivants blessés cachés à répétition, sans aura ni cri → plausible (Stridor ou simplement bon casque).
- **Confirmer** : écran de fin de partie.
- **Adaptation robuste** : blessé, ne pas se cacher près du tueur : se déplacer ; Iron Will ne rend pas silencieux face à Stridor (effet additif).
- **Counterplay** : se soigner ; en SWF, ne pas se regrouper blessés près du tueur.
- **Erreurs à ne pas faire** : croire qu'Iron Will annule totalement le son face à Stridor.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK (valeurs identiques).
- **Sources** : [4][13]

### Beast of Prey — Huntress
- **Statut / catégorie** : LIVE 10.1.2a · stealth
- **Effet LIVE + valeurs** : chaque fois que le tueur gagne **Bloodlust**, Undetectable pendant **30/35/40 s** (durée fixe depuis 8.5.0 : n'est plus perdu à la fin du Bloodlust, mais ne dure plus tant que Bloodlust est actif) ; bonus de Bloodpoints retiré en 8.5.0 — STRONG_SECONDARY [5][13]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : en pleine chase (au moment où le Bloodlust est gagné), le TR / battement disparaît et la red stain s'éteint.
- **Soupçonner** : TR qui disparaît au milieu d'une longue chase **sans** animation de pouvoir → Beast of Prey très plausible.
- **Confirmer** : le TR revient **30-40 s** plus tard, **même si** la chase s'est arrêtée ou si vous avez été touché (durée fixe) ; fin de partie.
- **Adaptation robuste** : en chase, ne pas lâcher le visuel du tueur quand le cœur s'arrête ; après avoir « semé » le tueur, supposer qu'il est tout près pendant ~40 s (la perte du Bloodlust ne rend **pas** le TR).
- **Counterplay** : garder la caméra sur le tueur (ne pas jouer au son) ; alerter l'équipe (« TR coupé, Beast of Prey ? »).
- **Erreurs à ne pas faire** : croire qu'il a abandonné la chase parce que la musique s'arrête.
- **Menace** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK (30/35/40 s ; « plus de bonus de Bloodpoints » confirmé, 8.5.0)
- **Sources** : [5][13]

### Overwhelming Presence — Doctor
- **Statut / catégorie** : LIVE 10.1.2a (rework 9.1.0) · anti-objet / info-aura / anti-exhaustion
- **Effet LIVE + valeurs** : un survivant qui commence à utiliser un objet à ≤ **32 m** du tueur devient Exhausted **15 s** ; quand un survivant à ≤ 32 m devient Exhausted (par tout moyen), le tueur voit l'aura du survivant Exhausted le plus proche **2/3/4 s** ; cooldown **25 s** — VERIFIED_MULTI_SOURCE (wiki [13] ; note 9.1.0 [14]) ; clés, cartes et Fog Vials concernés depuis le correctif 9.1.1 [15]. Avant 9.1.0 : consommation des objets accélérée dans le TR (OBSOLETE)
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **icône Exhausted** qui apparaît au moment où vous activez un objet (medkit, toolbox, lampe, carte, clé…) sans avoir utilisé de perk d'exhaustion. Indice direct et fiable.
- **Soupçonner** : Exhausted inexpliqué + tueur qui vient droit sur vous ensuite → quasi certain.
- **Confirmer** : Exhausted apparaît en utilisant un objet près du tueur → confirmé.
- **Adaptation robuste** : si vous jouez une perk d'exhaustion, ne pas utiliser d'objet quand le tueur peut être à ≤ 32 m ; toute exhaustion (y compris Sprint Burst) près du tueur peut révéler votre aura 2-4 s.
- **Counterplay** : utiliser l'objet loin du tueur ; lampe : uniquement pour un sauvetage qui justifie la perte d'exhaustion.
- **Erreurs à ne pas faire** : sortir le medkit en TR puis compter sur Sprint Burst pour fuir.
- **Menace** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : OK (valeurs identiques).
- **Sources** : [6][7][13][14][15]

### Monitor & Abuse — Doctor
- **Statut / catégorie** : LIVE 10.1.2a · stealth (TR réduit hors chase) / chase
- **Effet LIVE + valeurs** : **en chase** : TR **+5/10/15 %** ; **hors chase** : TR **−15/20/25 %** — VERIFIED_MULTI_SOURCE (wiki [13] ; note 9.2.0 « While in a chase … increased by 5/10/15% (was 6/7/8 meters). Otherwise … decreased by 15/20/25% » [16]). Le rework 9.2.0 a supprimé l'ancien écart code/description signalé par la première passe [8]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : battement de cœur qui démarre **plus tard** que prévu pour ce tueur hors chase (ex. TR 32 m → ~24-27 m) ; TR audible de plus loin en chase.
- **Soupçonner** : tueur à TR connu qui arrive « sans prévenir » + TR plus large en chase → plausible (distinguer d'add-ons de TR, Distressing…).
- **Confirmer** : fin de partie.
- **Adaptation robuste** : sur gen, regarder régulièrement autour de soi au lieu de se fier au cœur ; considérer que le premier battement = tueur déjà proche.
- **Counterplay** : Spine Chill / Alert si le stealth vous punit.
- **Erreurs à ne pas faire** : « je n'entends rien donc il est loin ».
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK (la réserve « IMPRÉCIS possible » de la première passe est levée)
- **Sources** : [8][13][16]

### Cruel Limits — Demogorgon
- **Statut / catégorie** : LIVE 10.1.2a · chase / endgame
- **Effet LIVE + valeurs** : à chaque générateur terminé, **toutes les fenêtres** sont bloquées pour tous les survivants pendant **20/25/30 s** ; le tueur voit leurs auras en jaune — STRONG_SECONDARY [9][13]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : fenêtres bloquées par l'Entité juste après un « pop » de gen.
- **Soupçonner** : fenêtre bloquée alors que vous n'avez pas vaulté 3 fois → quasi certain.
- **Confirmer** : blocage de plusieurs fenêtres simultanément à la complétion d'un gen → confirmé.
- **Adaptation robuste** : si un gen va sauter alors qu'un coéquipier est en chase, **annoncer** / retarder la complétion (en SWF) ou prévoir une boucle à palette.
- **Counterplay** : en chase au moment d'un pop, privilégier palettes et jungle-gym à palette pendant 20-30 s.
- **Erreurs à ne pas faire** : compter sur la fenêtre de la maison principale juste après un pop.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK
- **Sources** : [9][13]

### Hoarder — Twins
- **Statut / catégorie** : LIVE 10.1.2a · info (anti-objet) · autre
- **Effet LIVE + valeurs** : **Loud Noise Notification 4 s** quand un survivant à ≤ **32/48/64 m** du tueur ouvre un coffre ou ramasse un objet ; **+2 coffres** dans l'épreuve — STRONG_SECONDARY [10][13] ; l'exception « Limited Items » citée par la première passe [10] n'apparaît pas dans la description complète → UNCERTAIN
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **plus de coffres que la normale** (5 au lieu de 3 : base 3 selon `audit_phase0` + 2).
- **Soupçonner** : ≥ 4 coffres repérés sur la carte → quasi certain (sauf autre effet de spawn de coffres).
- **Confirmer** : tueur qui arrive sur un coffre qu'on vient d'ouvrir / un objet ramassé.
- **Adaptation robuste** : si > 3 coffres, n'ouvrir un coffre / ramasser un objet qu'après avoir localisé le tueur loin (≥ 64 m).
- **Counterplay** : ramasser l'objet d'un coéquipier au sol seulement si le tueur est en chase ailleurs.
- **Erreurs à ne pas faire** : ouvrir des coffres en début de partie contre un tueur à Hoarder (cadeau de position).
- **Menace** : SoloQ 0-1 · SWF 0-1
- **Écart avec le seed** : IMPRÉCIS (le seed omet la portée 32/48/64 m et la durée de 4 s).
- **Sources** : [10][13]

### Septic Touch — Dredge
- **Statut / catégorie** : LIVE 10.1.2a · anti-soin
- **Effet LIVE + valeurs** : un survivant qui effectue **une action de soin** (« performs a Healing action ») dans le TR subit **Blindness + Exhausted** ; les effets persistent **20/25/30 s** après l'interruption du soin — VERIFIED_MULTI_SOURCE (wiki [13] ; note 9.2.0 « linger duration … 20/25/30 seconds » [16])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **icônes Blindness et Exhausted** qui apparaissent dès que vous soignez dans le TR (la formulation « Healing action » couvre a priori aussi le soin d'un coéquipier — non explicite, UNCERTAIN).
- **Soupçonner** : Exhausted inexpliqué en soignant dans le TR → quasi certain.
- **Confirmer** : Blind + Exhausted simultanés pendant un soin en TR → confirmé.
- **Adaptation robuste** : ne jamais soigner dans le TR si vous comptez sur une perk d'exhaustion ; attendre ~30 s après la fin du soin avant de s'y fier.
- **Counterplay** : soigner hors TR ; Blindness coupe vos lectures d'aura (Kindred, Bond…) → rester prudent.
- **Erreurs à ne pas faire** : commencer un soin en TR puis courir en comptant sur Lithe/Sprint Burst.
- **Menace** : SoloQ 1 · SWF 1
- **Écart avec le seed** : IMPRÉCIS probable (seed « qui se soigne » ; wiki « performs a Healing action »)
- **Sources** : [11][13][16]

### Awakened Awareness — Mastermind
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (transport)
- **Effet LIVE + valeurs** : en portant un survivant, le tueur voit l'aura des autres survivants à ≤ **16/18/20 m** — STRONG_SECONDARY [13]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : aucun direct ; Distortion consomme un jeton si l'aura est lue.
- **Soupçonner** : tueur qui dépose le porté / change de trajectoire vers vous alors que vous étiez caché près du crochet → plausible.
- **Confirmer** : fin de partie ; jeton de Distortion consommé pendant un transport.
- **Adaptation robuste** : pendant un transport, se tenir à > 20 m du porteur (pas de « body block » gratuit si le tueur peut vous lire).
- **Counterplay** : Distortion (bloque la lecture d'aura).
- **Erreurs à ne pas faire** : attendre à côté du crochet prévu.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK
- **Sources** : [13]

### Game Afoot — Skull Merchant
- **Statut / catégorie** : LIVE 10.1.2a · chase
- **Effet LIVE + valeurs** : quand le tueur **touche avec une attaque de base** le survivant ayant le plus de temps de chase cumulé, celui-ci devient l'Obsession ; en chassant l'Obsession, **casser** (palette/mur) ou **endommager un générateur** donne **+7 % Haste 8/9/10 s** — VERIFIED_MULTI_SOURCE (wiki, onglet 8.7.0 [13] ; note 559 « (was 7%) » [12]) ; ne s'applique plus aux casses spéciales de murs (correctif 9.6.1 [22])
- **PTB 10.2.0 (NON LIVE)** : **+10 % Haste** 8/9/10 s [12][13]
- **Indice observable (survivant)** : statut **Obsession** qui change (icône Obsession sur le HUD) après un coup.
- **Soupçonner** : l'Obsession passe au survivant le plus chassé au moment où il est touché → Game Afoot plausible (autres perks d'Obsession possibles).
- **Confirmer** : fin de partie.
- **Adaptation robuste** : l'Obsession évite de laisser le tueur casser des palettes « gratuites » (ne pas pré-drop en boucle) ; en chase de l'Obsession, ne pas l'amener près d'un gen que le tueur peut kicker.
- **Counterplay** : faire tourner les chases (l'Obsession se cache et laisse d'autres prendre la chase).
- **Erreurs à ne pas faire** : chaîner des palettes cassées sur une même zone morte.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : IMPRÉCIS (« casser **ou frapper** » : c'est casser **ou endommager un générateur** ; transfert d'Obsession au **coup** sur le plus chassé) ; PTB « Haste 10 % » = 559 : OK (PTB)
- **Sources** : [12][13][22]

### THWACK! — Skull Merchant
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (cri)
- **Effet LIVE + valeurs** : **3 jetons** au départ, **+1 par accrochage** ; casser un mur cassable ou une palette tombée consomme 1 jeton : tous les survivants à ≤ **36 m** du tueur **crient** et leur aura est révélée **4/5/6 s** — VERIFIED_MULTI_SOURCE (wiki [13] ; note 9.0.0 « 36 meters (was 24) », « 4/5/6 seconds (was 3/4/5) » [17])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **votre personnage crie** (cri involontaire) au moment où une palette/un mur est cassé à ≤ 36 m.
- **Soupçonner** : cri involontaire synchronisé avec un bruit de palette cassée → quasi certain.
- **Confirmer** : répétition du phénomène.
- **Adaptation robuste** : après un cri, supposer que votre aura a été vue 4-6 s : bouger de gen si le tueur est proche.
- **Counterplay** : les casses sont limitées par jetons (3 + 1 par hook) ; Distortion bloque l'aura (pas le cri).
- **Erreurs à ne pas faire** : rester sur place après un cri inexpliqué.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK (p96 et ch8 concordent avec le wiki)
- **Sources** : [13][17]

### Leverage — Skull Merchant
- **Statut / catégorie** : LIVE 10.1.2a · anti-soin
- **Effet LIVE + valeurs** : le survivant qui **effectue l'action de décrochage** (le sauveteur) soigne **20/25/30 %** plus lentement pendant **60 s** — VERIFIED_MULTI_SOURCE (wiki [13] ; note 9.2.0 « 20/25/30% (was 30/40/50%) », « 60 seconds (was 30) » [16])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : aucun direct connu.
- **Soupçonner** : le sauveteur soigne anormalement lentement pendant ~1 min après un décrochage (sans Mangled/Sloppy) → plausible.
- **Confirmer** : fin de partie.
- **Adaptation robuste** : après un décrochage, **le décroché soigne** (ou se fait soigner par un 3e) plutôt que le sauveteur ; ne pas soigner en TR.
- **Counterplay** : Botany Knowledge / medkit compensent partiellement.
- **Erreurs à ne pas faire** : le sauveteur qui lance un long soin à découvert juste après l'unhook.
- **Menace** : SoloQ 0-1 · SWF 0
- **Écart avec le seed** : OK pour p96 (sauveteur) ; **FAUX** pour ch8 l. 1452 (« les survivants décrochés »)
- **Sources** : [13][16]

### Unbound — Unknown
- **Statut / catégorie** : LIVE 10.1.2a · chase
- **Effet LIVE + valeurs** : quand un survivant devient blessé (par tout moyen), pendant **24/27/30 s**, chaque vault de fenêtre du tueur donne **+7 % Haste 10 s** (non cumulable) — VERIFIED_MULTI_SOURCE (wiki, onglet 9.0.0 [13] ; note 9.0.0 « 7% (was 10%) » [17] ; note 559 « was 24/27/30s and 7% Haste for 10s » [12]) ; vaults via pouvoir exclus (correctif 9.1.0 [14])
- **PTB 10.2.0 (NON LIVE)** : fenêtre **26/28/30 s** ; **+5 % Haste pendant 25 s** [12][13]
- **Indice observable (survivant)** : aucun direct ; tueur qui vaulte des fenêtres puis accélère.
- **Soupçonner** : tueur qui vaulte volontiers derrière vous juste après un coup et regagne beaucoup de distance → plausible.
- **Confirmer** : fin de partie.
- **Adaptation robuste** : face à un tueur qui vaulte, privilégier les palettes aux fenêtres pendant ~30 s après chaque blessure.
- **Counterplay** : ne pas enchaîner les fenêtres en ligne droite.
- **Erreurs à ne pas faire** : —
- **Menace** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK pour p96 ; **PTB-comme-LIVE** pour ch8 l. 1588 (« 5 % pendant 25 s » = PTB)
- **Sources** : [12][13][14][17]

### Undone — Unknown
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (perte instantanée + blocage)
- **Effet LIVE + valeurs** (reconstruit depuis le change log wiki 10.2.0, LIVE « NON TROUVÉE » dans le digest) : jetons gagnés quand un survivant **rate un skill-check** ; le prochain kick consomme les jetons : **−1 % de progression et 1 s de blocage par jeton** ; la perk a un **cooldown** (valeur non documentée) — STRONG_SECONDARY [13] ; nombre de jetons par raté (3) et maximum (18/24/30) : valeurs du seed, **non confirmées** → UNCERTAIN
- **PTB 10.2.0 (NON LIVE)** : **Rework** — +1 jeton par accrochage, jusqu'à **3** ; kick : par jeton, **−8/9/10 %** de progression et **blocage 8/9/10 s** ; le gen régresse à la fin du blocage (note 559 [12]). Le wiki PTB décrit une variante (max 1/2/3 jetons, 10 %/10 s par jeton, cooldown supprimé) → CONFLICT-K96-05
- **Indice observable (survivant)** : gen **bloqué par l'Entité** + perte de progression d'un coup après un kick, alors qu'il y a eu des skill-checks ratés.
- **Soupçonner** : skill-checks ratés + kick suivi d'un blocage → plausible (vs DMS, Grim Embrace, Pop).
- **Confirmer** : répétition ; fin de partie.
- **Adaptation robuste** : ne pas rater de skill-checks inutilement (chaque raté alimente la perk).
- **Counterplay** : Stake Out, jouer les checks prudemment (pas de Great risqués si vous ratez souvent).
- **Erreurs à ne pas faire** : tapper un gen (lâcher/reprendre) en ratant des checks.
- **Menace** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK partiel pour p96 (1 %/1 s par jeton sur skill-check raté confirmés ; 3 jetons / max 18/24/30 NON VÉRIFIABLE ; cooldown omis) ; « rework prévu en 10.2.0 » OK ; **PTB-comme-LIVE** pour ch8 l. 1590 ; PTB p98 (« jetons en accrochant, 8/9/10 % ») = 559 : OK (PTB)
- **Sources** : [12][13][18a]

### Dark Arrogance — Lich
- **Statut / catégorie** : LIVE 10.1.2a · chase
- **Effet LIVE + valeurs** : vaults de fenêtre **15/20/25 %** plus rapides ; stun de palette : récupération **−15 %** ; aveuglements du tueur **+15 %** plus longs — VERIFIED_MULTI_SOURCE (wiki, onglet 9.2.0 [13] ; note 9.2.0 « 15% (was 25%) » [16] ; note 559 « (was 15%) » [12]). Le wiki note que le code n'a appliqué ces 15 % qu'à partir de 9.2.3
- **PTB 10.2.0 (NON LIVE)** : ajoute **récupération des attaques de base +15/20/25 %** ; stuns/blinds **+25 %** [12][13]
- **Indice observable (survivant)** : tueur qui vaulte des fenêtres très vite ; stun de palette qui semble plus long.
- **Soupçonner** : vaults rapides sans blocage de fenêtre (≠ Bamboozle) → plausible.
- **Confirmer** : fin de partie.
- **Adaptation robuste** : privilégier les palettes (le tueur est puni un peu plus longtemps par un stun).
- **Counterplay** : jouer les palettes et les lampes ; éviter les boucles de fenêtre longues.
- **Erreurs à ne pas faire** : —
- **Menace** : SoloQ 0-1 · SWF 0-1
- **Écart avec le seed** : OK pour p96 ; **PTB-comme-LIVE** pour ch8 l. 1625 (recovery + 25 %)
- **Sources** : [12][13][16]

### Hex: Wretched Fate — Dark Lord
- **Statut / catégorie** : LIVE 10.1.2a · hex · slowdown (Obsession)
- **Effet LIVE + valeurs** : après la complétion d'un générateur, un totem terne aléatoire devient Hex et maudit l'**Obsession** : réparation **−27/30/33 %** ; **l'Obsession voit l'aura du totem Hex à ≤ 12 m** — STRONG_SECONDARY [13]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : l'Obsession voit une **aura de totem** en passant à ≤ 12 m ; totem allumé après le 1er gen ; réparation lente pour l'Obsession.
- **Soupçonner** : l'Obsession répare nettement plus lentement que les autres après le 1er gen + totem allumé → quasi certain.
- **Confirmer** : cleanse du totem → la vitesse revient.
- **Adaptation robuste** : l'Obsession fait des totems / sauvetages plutôt que des gens tant que le hex tient ; elle peut repérer le totem via l'aura à 12 m.
- **Counterplay** : cleanse (Small Game, Detective's Hunch aident).
- **Erreurs à ne pas faire** : laisser l'Obsession seule sur un gen long.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK (omet l'aura du totem pour l'Obsession, mineur)
- **Sources** : [13]

### No Quarter — Houndmaster
- **Statut / catégorie** : LIVE 10.1.2a · anti-soin
- **Effet LIVE + valeurs** : quand un survivant qui se soigne **lui-même** (par tout moyen) atteint **75 %**, skill-checks continus jusqu'à la fin ; raté ou interruption → **Broken 20/25/30 s** — STRONG_SECONDARY [13] (correctif 9.0.1 : Broken appliqué correctement [19])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **skill-checks en rafale** en fin d'auto-soin ; **icône Broken** après un raté ou un arrêt.
- **Soupçonner** : skill-checks anormalement fréquents à ~75 % d'un self-heal → quasi certain.
- **Confirmer** : Broken après un raté → confirmé.
- **Adaptation robuste** : faire soigner par un coéquipier ; si auto-soin, ne pas l'**interrompre** après 75 % (l'arrêt donne aussi Broken).
- **Counterplay** : soin mutuel.
- **Erreurs à ne pas faire** : lâcher un self-heal à 80 % parce que le TR arrive.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK (omet que l'interruption déclenche aussi Broken, mineur)
- **Sources** : [13][19]

### Scourge Hook: Hangman's Trick — Pig
- **Statut / catégorie** : LIVE 10.1.2a · scourge · info/aura
- **Effet LIVE + valeurs** : **4** crochets deviennent Scourge Hooks au début (aura blanche **pour le tueur**) ; en portant un survivant, le tueur voit les survivants à ≤ **12/14/16 m** d'un Scourge Hook ; quand un survivant **commence à saboter** un crochet (quelconque), Loud Noise Notification à ce crochet — VERIFIED_MULTI_SOURCE (wiki [13] ; note 9.1.0 « 12/14/16 meters (was 8/10/12) » [14])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : aucun direct confirmé ; la visibilité des Scourge Hooks côté survivant n'est pas décrite par le wiki (UNCERTAIN).
- **Soupçonner** : tueur qui vient vers vous en portant quelqu'un alors que vous étiez près d'un crochet → plausible ; tueur qui arrive dès que vous commencez un sabotage → quasi certain.
- **Confirmer** : fin de partie.
- **Adaptation robuste** : pendant un transport, s'éloigner des crochets ; ne saboter qu'en sachant que la position est donnée.
- **Counterplay** : saboter pendant que le tueur est engagé loin ; Distortion contre la lecture d'aura.
- **Erreurs à ne pas faire** : attendre un sauvetage caché à côté d'un crochet.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK
- **Sources** : [13][14]

### Hex: Overture of Doom — Krasue
- **Statut / catégorie** : LIVE 10.1.2a · hex · stealth
- **Effet LIVE + valeurs** : Hex qui maudit le **générateur le plus éloigné** du totem (aura jaune pour le tueur) ; quand un survivant le répare **≥ 5 s**, pendant **20/25/30 s** : TR transféré sur ce gen et fixé à **32 m**, tueur **Undetectable** ; une fois ce gen réparé, le suivant le plus éloigné est maudit — VERIFIED_MULTI_SOURCE (wiki [13] ; note 9.2.0 [16])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **battement de cœur / TR qui semble venir du générateur** lui-même ~5 s après avoir commencé à réparer ; totem allumé.
- **Soupçonner** : TR qui « reste » sur le gen alors que le tueur n'est pas visible → quasi certain.
- **Confirmer** : cleanse du totem.
- **Adaptation robuste** : ne pas se fier au TR pendant ~30 s après avoir commencé le gen maudit ; regarder autour.
- **Counterplay** : cleanse le totem ; faire ce gen en dernier ou à plusieurs.
- **Erreurs à ne pas faire** : croire le tueur sur le gen parce que le cœur bat.
- **Menace** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : OK (32 m implicite)
- **Sources** : [13][16]

### Ravenous — Krasue
- **Statut / catégorie** : LIVE 10.1.2a · endgame / Exposed
- **Effet LIVE + valeurs** (LIVE « NON TROUVÉE » dans le digest, reconstruite) : +1 jeton au **premier** accrochage de chaque survivant (max 4) ; à 4 jetons, **tous les survivants crient** et sont **Exposed 40/50/60 s** — VERIFIED_MULTI_SOURCE (note 9.2.0, sortie [16] ; note 559 « (was 40/50/60s) » [12] ; change log wiki 10.2.0 [13])
- **PTB 10.2.0 (NON LIVE)** : par jeton : **+4 % Haste en portant** et **accrochage +4 %** ; à 4 jetons : cri + **Exposed 80/85/90 s** [12][13]
- **Indice observable (survivant)** : **cri de tous** + **icône Exposed** quand le 4e survivant différent est accroché.
- **Soupçonner** : cri collectif + Exposed au moment du 4e premier crochet → quasi certain.
- **Confirmer** : icône Exposed.
- **Adaptation robuste** : Exposed = un coup = au sol : pas de prise de risque pendant 40-60 s.
- **Counterplay** : éviter que les 4 soient accrochés une fois (sacrifier du tempo si nécessaire).
- **Erreurs à ne pas faire** : tenter un sauvetage risqué pendant Exposed.
- **Menace** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK pour p96 (« buff prévu en 10.2.0 » OK) ; **PTB-comme-LIVE** pour ch8 l. 1810 (Haste, 80-90 s)
- **Sources** : [12][13][16]

### Wandering Eye — Krasue
- **Statut / catégorie** : LIVE 10.1.2a · info/aura
- **Effet LIVE + valeurs** : au début d'une chase, le tueur voit les autres survivants **blessés** à ≤ **20 m** pendant **5 s** ; cooldown **40/35/30 s** — VERIFIED_MULTI_SOURCE (wiki [13] ; note 9.2.0 [16], 20 m au lieu de 16 m au PTB)
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : aucun direct ; Distortion consomme un jeton.
- **Soupçonner** : blessé près d'une chase, le tueur vous cible ensuite sans ligne de vue → plausible.
- **Confirmer** : fin de partie.
- **Adaptation robuste** : blessé, se tenir à > 20 m des chases en cours.
- **Counterplay** : se soigner ; Distortion.
- **Erreurs à ne pas faire** : venir « aider » blessé près d'une chase.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK
- **Sources** : [13][16]

### Hex: Scared to Death — Slasher
- **Statut / catégorie** : LIVE 10.1.2a (perk du chapitre 10.0.0) · hex · chase
- **Effet LIVE + valeurs** : après avoir accroché **3 survivants différents**, un totem terne devient Hex ; en chase, **casser une palette (basic-break)** fait **crier** les survivants à ≤ **13 m** et leur inflige **Hindered 11/12/13 % pendant 3 s** — VERIFIED_MULTI_SOURCE (wiki [13] ; note 10.0.0 [18])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **cri + icône Hindered** après une palette cassée ; totem allumé tard dans la partie (après le 3e survivant différent accroché).
- **Soupçonner** : totem qui s'allume après le 3e survivant différent accroché → plausible.
- **Confirmer** : Hindered + cri après casse de palette.
- **Adaptation robuste** : en chase, ne pas rester à ≤ 13 m d'une palette que le tueur casse ; quitter la palette avant la casse.
- **Counterplay** : cleanse le totem dès son apparition.
- **Erreurs à ne pas faire** : attendre au pied d'une palette cassée.
- **Menace** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK
- **Sources** : [13][18]

### Rampage — Slasher
- **Statut / catégorie** : LIVE 10.1.2a (perk du chapitre 10.0.0) · chase (anti-stun)
- **Effet LIVE + valeurs** : +1 jeton par palette ou mur cassable cassé (basic-break, max **13**) ; quand le tueur est aveuglé ou étourdi par palette : **+1 % Haste par jeton pendant 13 s** ; cooldown **30/25/20 s** — VERIFIED_MULTI_SOURCE (wiki [13] ; note 10.0.0 [18])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : aucun direct ; tueur qui accélère après un stun en fin de partie.
- **Soupçonner** : tueur qui a cassé beaucoup de palettes et revient très vite après un stun → plausible (Shadowborn aussi si blind).
- **Confirmer** : fin de partie.
- **Adaptation robuste** : plus la partie avance (palettes cassées), plus un stun doit être suivi d'une fuite immédiate vers une autre ressource (jusqu'à +13 % pendant 13 s).
- **Counterplay** : ne pas gaspiller les palettes tôt (limite les jetons).
- **Erreurs à ne pas faire** : rester au contact après un stun.
- **Menace** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK
- **Sources** : [13][18]

### Spies from the Shadows — Générale
- **Statut / catégorie** : LIVE 10.1.2a · info
- **Effet LIVE + valeurs** : quand un survivant fait s'envoler un corbeau à ≤ **20/28/36 m** du tueur, Loud Noise Notification (forme de corbeau) ; cooldown **5 s** — VERIFIED_MULTI_SOURCE (wiki, onglet 2.6.0 [13] ; note 559 « was 20/28/36m and 5s » [12])
- **PTB 10.2.0 (NON LIVE)** : **36/38/40 m**, cooldown **3 s** [12][13]
- **Indice observable (survivant)** : les corbeaux s'envolent (visible/audible par tous) ; pas d'indice du fait que le tueur reçoit l'alerte.
- **Soupçonner** : tueur qui arrive juste après que vous avez fait s'envoler des corbeaux → plausible.
- **Confirmer** : fin de partie.
- **Adaptation robuste** : marcher (pas courir) près des corbeaux quand le tueur peut être proche.
- **Counterplay** : contourner les corbeaux.
- **Erreurs à ne pas faire** : sprinter à travers un groupe de corbeaux pour aller se cacher.
- **Menace** : SoloQ 0-1 · SWF 0
- **Écart avec le seed** : OK ; PTB p98 (36/38/40 m, 3 s) = 559 : OK (PTB)
- **Sources** : [12][13]

### Unrelenting — Générale
- **Statut / catégorie** : LIVE 10.1.2a · chase
- **Effet LIVE + valeurs** : cooldown des attaques de base **ratées** **−20/25/30 %** — VERIFIED_MULTI_SOURCE (wiki, onglet 1.4.0 [13] ; note 559 « (was 20/25/30%) » [12])
- **PTB 10.2.0 (NON LIVE)** : ratées (et attaques obstruées) **−30/35/40 %** ; attaques **réussies −10 %** (NEW) [12][13]
- **Indice observable (survivant)** : aucun direct ; le tueur « se remet » vite d'un coup raté.
- **Soupçonner** : après un coup raté (dodge), la distance gagnée est anormalement faible → plausible.
- **Confirmer** : fin de partie.
- **Adaptation robuste** : ne pas miser sur un mind-game en open field comme seule ressource.
- **Counterplay** : jouer les tiles plutôt que les esquives.
- **Erreurs à ne pas faire** : —
- **Menace** : SoloQ 0-1 · SWF 0-1
- **Écart avec le seed** : OK ; PTB p98 = 559 : OK (PTB)
- **Sources** : [12][13]

### Bitter Murmur — Générale
- **Statut / catégorie** : LIVE 10.1.2a · info/aura · endgame
- **Effet LIVE + valeurs** : chaque gen terminé révèle **5 s** les survivants à ≤ **16 m** de ce gen ; au **dernier** gen, tous les survivants révélés **5/7/10 s** — VERIFIED_MULTI_SOURCE (wiki, onglet 2.1.0 [13] ; note 559 « (was 16m and 5s) », « (was 5/7/10s) » [12])
- **PTB 10.2.0 (NON LIVE)** : **20 m pendant 8 s** ; dernier gen **10/12/14 s** [12][13]
- **Indice observable (survivant)** : aucun HUD ; le tueur arrive droit sur vous juste après le pop d'un gen ; Distortion consomme un jeton.
- **Soupçonner** : tueur qui cible précisément les survivants qui ont fini un gen, ou qui sait où tout le monde est à l'ouverture de l'endgame → plausible (vs BBQ, Nowhere to Hide…).
- **Confirmer** : fin de partie ; jeton Distortion consommé au pop.
- **Adaptation robuste** : dès qu'un gen saute, quitter la zone des 16 m en direction imprévisible ; au dernier gen, ne pas courir directement vers la porte la plus proche du tueur.
- **Counterplay** : Distortion ; se disperser à la complétion.
- **Erreurs à ne pas faire** : rester à 3 sur le gen après le pop.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK ; PTB p98 = 559 : OK (PTB)
- **Sources** : [12][13]

---

## Matériel pour la PERK DEDUCTION

Règles HEURISTIC / EXPERT OPINION (tirées du périmètre p96), toutes fondées sur des mécaniques re-vérifiées [13] (+ notes officielles).

1. **J'ai observé** icône Exhausted en sortant un objet + aucune perk d'exhaustion utilisée → **Overwhelming Presence** quasi certain → n'utiliser aucun objet à ≤ 32 m du tueur ; le tueur a vu votre aura 2-4 s : bouger.
2. **J'ai observé** Blindness + Exhausted en soignant dans le TR → **Septic Touch** confirmé → soigner uniquement hors TR ; ne plus compter sur l'exhaustion pendant ~30 s après le soin.
3. **J'ai observé** fenêtres bloquées juste après un gen terminé (sans 3 vaults) → **Cruel Limits** confirmé → à chaque pop, jouer palettes 20-30 s ; en SWF, prévenir le survivant en chase avant de finir le gen.
4. **J'ai observé** TR/cœur et red stain disparus en pleine chase longue sans pouvoir visible → **Beast of Prey** plausible → garder la caméra sur le tueur, supposer sa présence pendant 30-40 s (durée fixe).
5. **J'ai observé** 4 coffres ou plus sur la carte → **Hoarder** quasi certain → n'ouvrir coffre / ne ramasser un objet que si le tueur est localisé à > 64 m.
6. **J'ai observé** un cri involontaire au bruit d'une palette/d'un mur cassé à proximité → **THWACK!** (≤ 36 m, aura 4-6 s) ou, avec Hindered, **Hex: Scared to Death** (≤ 13 m) → changer de position après chaque cri ; chercher le totem si Hindered.
7. **J'ai observé** cri collectif + Exposed au 4e survivant accroché (1er crochet) → **Ravenous** (Exposed 40-60 s en LIVE) → jeu ultra-safe pendant Exposed.
8. **J'ai observé** cœur qui bat « depuis le gen » (le plus éloigné) sans tueur visible + totem allumé → **Hex: Overture of Doom** → regarder autour, chercher le totem.
9. **J'ai observé** skill-checks en rafale à ~75 % d'un self-heal (+ Broken après un raté ou un arrêt) → **No Quarter** → se faire soigner par un coéquipier ; ne pas interrompre un self-heal > 75 %.
10. **J'ai observé** Obsession transférée au survivant le plus chassé au moment où il est touché + tueur qui accélère après des casses ou des kicks → **Game Afoot** → l'Obsession évite les palettes « gratuites » et passe la chase.
11. **J'ai observé** (Obsession) une aura de totem à ≤ 12 m + réparation lente après le 1er gen → **Hex: Wretched Fate** → cleanser ce totem en priorité.
12. **J'ai observé** le tueur arriver dès que je commence un sabotage de crochet → **Scourge Hook: Hangman's Trick** → saboter seulement quand le tueur est engagé loin.

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| K96-01 | Bloodhound : flaques rouge vif, +2/3/4 s | [1][13] | LIVE | STRONG_SECONDARY |
| K96-02 | Shadowborn : blind → 6/8/10 % Haste 10 s | [3][13] | LIVE | STRONG_SECONDARY |
| K96-03 | Stridor : grognements +30/40/50 %, respiration +15/20/25 %, additif | [4][13] | LIVE (depuis 8.1.1) | STRONG_SECONDARY |
| K96-04 | Beast of Prey : Bloodlust → Undetectable 30/35/40 s (durée fixe), plus de BP | [5][13] | LIVE (depuis 8.5.0) | STRONG_SECONDARY |
| K96-05 | Overwhelming Presence : objet à ≤ 32 m → Exhausted 15 s ; aura 2/3/4 s ; CD 25 s | [13][14] | LIVE (depuis 9.1.0) | VERIFIED_MULTI_SOURCE |
| K96-06 | Overwhelming Presence pré-9.1.0 : consommation accélérée des objets en TR | [13][14] | OBSOLETE | VERIFIED_MULTI_SOURCE |
| K96-07 | Monitor & Abuse : TR +5/10/15 % en chase ; −15/20/25 % hors chase | [13][16] | LIVE (depuis 9.2.0) | VERIFIED_MULTI_SOURCE |
| K96-08 | Cruel Limits : toutes les fenêtres bloquées 20/25/30 s à chaque gen terminé | [9][13] | LIVE | STRONG_SECONDARY |
| K96-09 | Hoarder : alerte 4 s à ≤ 32/48/64 m (coffre/objet) ; +2 coffres | [13] | LIVE | STRONG_SECONDARY (exception Limited Items : UNCERTAIN) |
| K96-10 | Septic Touch : soin en TR → Blind + Exhausted, persiste 20/25/30 s | [13][16] | LIVE (depuis 9.2.0) | VERIFIED_MULTI_SOURCE |
| K96-11 | Undone : rework au PTB 10.2.0 (jetons aux crochets, 8/9/10 % et 8/9/10 s par jeton, max 3) | [12] | PTB 10.2.0 (NON LIVE) | VERIFIED_PRIMARY |
| K96-12 | Hex: Scared to Death et Rampage = perks du chapitre 10.0.0 (Slasher), valeurs 13 m / 11-13 % / 3 s ; 13 jetons / 13 s / CD 30/25/20 s | [13][18] | LIVE | VERIFIED_MULTI_SOURCE |
| K96-13 | Awakened Awareness : aura à ≤ 16/18/20 m en portant | [13] | LIVE | STRONG_SECONDARY |
| K96-14 | Game Afoot : +7 % Haste 8/9/10 s (casse ou dégât de gen en chassant l'Obsession) | [12][13] | LIVE | VERIFIED_MULTI_SOURCE |
| K96-15 | THWACK! : 3 jetons + 1/hook ; 36 m ; aura 4/5/6 s | [13][17] | LIVE (depuis 9.0.0) | VERIFIED_MULTI_SOURCE |
| K96-16 | Leverage : sauveteur −20/25/30 % soin 60 s | [13][16] | LIVE (depuis 9.2.0) | VERIFIED_MULTI_SOURCE |
| K96-17 | Unbound : 24/27/30 s, +7 % Haste 10 s au vault | [12][13][17] | LIVE (depuis 9.0.0) | VERIFIED_MULTI_SOURCE |
| K96-18 | Undone LIVE : jetons sur skill-check raté, −1 % et 1 s de blocage par jeton, cooldown | [13] (change log) | LIVE | STRONG_SECONDARY (nombre de jetons/max : UNCERTAIN) |
| K96-19 | Dark Arrogance : vault +15/20/25 %, stun/blind +15 % | [12][13][16] | LIVE (depuis 9.2.0/9.2.3) | VERIFIED_MULTI_SOURCE |
| K96-20 | Hex: Wretched Fate : Obsession −27/30/33 % réparation ; aura du totem à 12 m pour l'Obsession | [13] | LIVE | STRONG_SECONDARY |
| K96-21 | No Quarter : 75 %, Broken 20/25/30 s (raté ou interruption) | [13] | LIVE | STRONG_SECONDARY |
| K96-22 | Hangman's Trick : 4 Scourge Hooks, 12/14/16 m, alerte au sabotage | [13][14] | LIVE (depuis 9.1.0) | VERIFIED_MULTI_SOURCE |
| K96-23 | Overture of Doom : 5 s de réparation → TR 32 m + Undetectable 20/25/30 s | [13][16] | LIVE | VERIFIED_MULTI_SOURCE |
| K96-24 | Ravenous : 4 jetons → cri + Exposed 40/50/60 s | [12][13][16] | LIVE | VERIFIED_MULTI_SOURCE |
| K96-25 | Wandering Eye : blessés à ≤ 20 m, 5 s, CD 40/35/30 s | [13][16] | LIVE | VERIFIED_MULTI_SOURCE |
| K96-26 | Spies from the Shadows : 20/28/36 m, CD 5 s | [12][13] | LIVE | VERIFIED_MULTI_SOURCE |
| K96-27 | Unrelenting : ratés −20/25/30 % | [12][13] | LIVE | VERIFIED_MULTI_SOURCE |
| K96-28 | Bitter Murmur : 16 m / 5 s ; dernier gen 5/7/10 s | [12][13] | LIVE | VERIFIED_MULTI_SOURCE |
| K96-29 | Valeurs PTB 10.2.0 : Game Afoot 10 % ; Unbound 26/28/30 s & 5 %/25 s ; Dark Arrogance recovery 15/20/25 % & 25 % ; Ravenous +4 %/jeton & 80/85/90 s ; Spies 36/38/40 m CD 3 s ; Unrelenting 30/35/40 % + 10 % ; Bitter Murmur 20 m/8 s & 10/12/14 s | [12][13] | PTB 10.2.0 (NON LIVE) | VERIFIED_PRIMARY (pour le PTB) |

## Conflits

#### CONFLICT-K96-01 : valeurs PTB 10.2.0 présentées comme LIVE dans le seed ch8
- Source A : seed p96 — Unbound 7 %/10 s ; Undone skill-checks ratés, 1 %/1 s par jeton ; Dark Arrogance stuns +15 % ; Ravenous Exposed 40/50/60 s.
- Source B : seed ch8 (l. 1588, 1590, 1625, 1810) — Unbound 5 %/25 s ; Undone jetons aux crochets, −10 %/10 s ; Dark Arrogance + recovery, stuns +25 % ; Ravenous Haste +4 %/jeton, Exposed 80-90 s.
- Résolution : **RÉSOLU** — p96 = LIVE, ch8 = PTB 10.2.0 (note 559 [12] : « was 24/27/30s and 7% Haste for 10s », « (was 15%) », « (was 40/50/60s) » ; change log wiki [13] pour Undone).

#### CONFLICT-K96-02 : cible de Leverage
- Source A : seed p96 — « le **sauveteur** ».
- Source B : seed ch8 l. 1452 — « les survivants **décrochés** ».
- Résolution : **RÉSOLU** — wiki [13] : « Whenever a Survivor performs an Unhook action, **they** suffer… » = le sauveteur (depuis le rework 8.3.0) ; ch8 = FAUX.

#### CONFLICT-K96-03 : Game Afoot, déclencheur de la Haste
- Source A : seed p96 — « casser **ou frapper** pendant sa poursuite ».
- Source B : seed ch8 l. 1450 — « casser des palettes ou des murs en le chassant ».
- Résolution : **RÉSOLU** — wiki [13] et note 559 [12] : casser (palette/mur) **ou endommager un générateur** en chassant l'Obsession ; p96 (« frapper ») et ch8 (incomplet) sont tous deux IMPRÉCIS.

#### CONFLICT-K96-04 : THWACK!, fonctionnement des jetons
- Source A : seed p96 — « système de jetons » sans détail.
- Source B : seed ch8 l. 1453 — 3 jetons au départ, +1 par crochet, 1 consommé par casse.
- Résolution : **RÉSOLU** — wiki [13] confirme ch8.

#### CONFLICT-K96-05 : Undone, contenu exact du rework PTB 10.2.0 (NON LIVE)
- Source A : note officielle PTB 559 [12] — jusqu'à 3 jetons ; par jeton −8/9/10 % et blocage 8/9/10 s.
- Source B : wiki.gg, onglet PTB [13] — jusqu'à 1/2/3 jetons ; par jeton −10 % et blocage 10 s (max 10/20/30) ; cooldown supprimé.
- Hypothèse : le wiki reflète une itération différente (ou une erreur de transcription) ; la note officielle fait foi pour le PTB tel qu'annoncé.
- Résolution : UNRESOLVED (sans impact LIVE ; valeur PTB retenue = 559).

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Bloodhound | +2/3/4 s, plus visibles | rouge vif, +2/3/4 s [13] | OK |
| Shadowborn | 6/8/10 % Haste 10 s | idem [13] | OK |
| Stridor | 15/20/25 % respiration, 30/40/50 % grognements | idem [13] | OK |
| Beast of Prey | Undetectable 30/35/40 s ; plus de bonus BP | idem [13] | OK |
| Overwhelming Presence | Exhausted 15 s à 32 m, aura 2/3/4 s, CD 25 s | idem [13][14] | OK |
| Monitor & Abuse | +5/10/15 % en chase, −15/20/25 % hors chase | idem [13][16] | OK |
| Cruel Limits | toutes les fenêtres 20/25/30 s | idem [13] | OK |
| Hoarder | alerte coffre/objet ; +2 coffres | + portée 32/48/64 m, 4 s [13] | IMPRÉCIS |
| Septic Touch | « qui se soigne » dans le TR | « performs a Healing action » [13] | IMPRÉCIS (probable) |
| Awakened Awareness | 16/18/20 m | idem [13] | OK |
| Game Afoot | « casser ou frapper » ; « le plus poursuivi devient l'Obsession » | casser ou **endommager un gen** ; transfert au **coup** [12][13] | IMPRÉCIS |
| Game Afoot (PTB p98) | Haste 10 % | idem [12] | OK (PTB) |
| THWACK! | 36 m, 4/5/6 s, jetons | idem [13][17] | OK |
| Leverage | p96 sauveteur ; ch8 décroché | sauveteur [13][16] | OK (p96) / **FAUX** (ch8) |
| Unbound | p96 7 %/10 s ; ch8 5 %/25 s | LIVE 7 %/10 s ; 5 %/25 s = PTB [12][13] | OK (p96) / **PTB-comme-LIVE** (ch8) |
| Undone | 3 jetons/raté, max 18/24/30 ; 1 %/1 s par jeton | 1 %/1 s par jeton sur raté confirmés ; cooldown omis ; nb de jetons non documenté [13] | OK partiel / NON VÉRIFIABLE (jetons) ; **PTB-comme-LIVE** (ch8) |
| Undone (PTB p98) | jetons en accrochant, 8/9/10 % | idem [12] | OK (PTB) |
| Dark Arrogance | p96 stuns +15 % ; ch8 +25 % et recovery | LIVE 15 % ; 25 % + recovery = PTB [12][13][16] | OK (p96) / **PTB-comme-LIVE** (ch8) |
| Hex: Wretched Fate | Obsession −27/30/33 % | idem (+ aura du totem 12 m) [13] | OK |
| No Quarter | 75 %, Broken 20/25/30 s | idem (+ interruption) [13] | OK |
| Hangman's Trick | 4 crochets, 12/14/16 m, alerte sabotage | idem [13][14] | OK |
| Overture of Doom | gen le plus éloigné, 5 s, 20/25/30 s | idem [13][16] | OK |
| Ravenous | p96 Exposed 40/50/60 s ; ch8 80-90 s + Haste | LIVE 40/50/60 s ; 80/85/90 + Haste = PTB [12][13] | OK (p96) / **PTB-comme-LIVE** (ch8) |
| Wandering Eye | 20 m, 5 s, CD 40/35/30 s | idem [13][16] | OK |
| Hex: Scared to Death | 3 survivants, 13 m, 11/12/13 %, 3 s | idem [13][18] | OK |
| Rampage | 13 jetons, +1 %/jeton 13 s, CD 30/25/20 s | idem [13][18] | OK |
| Spies from the Shadows | 20/28/36 m, CD 5 s ; PTB 36/38/40 m, 3 s | idem [12][13] | OK (LIVE et PTB) |
| Unrelenting | ratés −20/25/30 % ; PTB 30/35/40 % + 10 % | idem [12][13] | OK (LIVE et PTB) |
| Bitter Murmur | 16 m 5 s ; 5/7/10 s ; PTB 20 m 8 s, 10/12/14 s | idem [12][13] | OK (LIVE et PTB) |

## Questions ouvertes

1. Undone LIVE : nombre de jetons par skill-check raté, maximum et valeur du cooldown (non décrits par la page wiki actuelle, qui affiche le PTB).
2. Undone PTB : quelle version fait foi (559 : 8/9/10 % par jeton, max 3 ; wiki : 10 % par jeton, max 1/2/3) ? (CONFLICT-K96-05)
3. Septic Touch : déclenchement en soignant un **autre** survivant ?
4. Hoarder : exception « Limited Items » réelle ?
5. Scourge Hooks (Hangman's Trick) : visibles/distinguables côté survivant ?
6. Overwhelming Presence : Vigil / perks anti-Exhausted réduisent-ils les 15 s ?

## Sources

[1] Bloodhound — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Bloodhound — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[2] Pools of Blood — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Pools_of_Blood — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[3] Shadowborn — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Shadowborn — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[4] Stridor — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Stridor — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[5] Beast of Prey — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Beast_of_Prey — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[6] Overwhelming Presence — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Overwhelming_Presence — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[7] Patch Notes 9.1.X — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Patch_Notes_9.1.X — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[8] Monitor & Abuse (+ page Talk) — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Monitor_&_Abuse — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[9] Cruel Limits — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Cruel_Limits — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[10] Hoarder — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Hoarder — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[11] Septic Touch — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Septic_Touch — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[12] 10.2.0 PTB Patch Notes (NON LIVE) — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/559
[13] Pages wiki.gg complètes via API (digest local `kb/sources/wiki_perks_digest.md`, brut `wiki_perks.json`), consultées le 27/09/2026 : deadbydaylight.wiki.gg/wiki/Bloodhound ; /Shadowborn ; /Stridor ; /Beast_of_Prey ; /Overwhelming_Presence ; /Monitor_%26_Abuse ; /Cruel_Limits ; /Hoarder ; /Septic_Touch ; /Awakened_Awareness ; /Game_Afoot ; /THWACK! ; /Leverage ; /Unbound ; /Undone ; /Dark_Arrogance ; /Hex:_Wretched_Fate ; /No_Quarter ; /Scourge_Hook:_Hangman%27s_Trick ; /Hex:_Overture_of_Doom ; /Ravenous ; /Wandering_Eye ; /Hex:_Scared_to_Death ; /Rampage ; /Spies_from_the_Shadows ; /Unrelenting ; /Bitter_Murmur — page complète via API, consultée le 27/09/2026
[14] 9.1.0 | The Walking Dead — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/516
[15] 9.1.1 | Bugfix Patch — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/517
[16] 9.2.0 | Sinister Grace — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/523 (valeurs citées hors section finale « Postponed »)
[17] 9.0.0 | Five Nights at Freddy's — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/510
[18] 10.0.0 | Jason Patch Notes — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/550
[18a] Audit phase 0 du projet (interne) — `kb/seed/audit_phase0.txt` — lu le 27/09/2026
[19] 9.0.1 | Bugfix Patch — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/511
[21] 10.0.3 | Bugfix Patch — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/553
[22] 9.6.1 | Bugfix Patch — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/545
