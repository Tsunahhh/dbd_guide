# Lot 2 — Perks survivant, page 24 du guide seed (ch3_survperks.txt l. 200-307)

**Couverture : 23/23 perks re-vérifiées sur page wiki complète (27/09/2026) ; dont 8 confirmées par note officielle** (valeur LIVE : We'll Make It, Plot Twist, Shoulder the Burden, Boon: Steadfast, Botany Knowledge, Vigil, Wicked, Hope) ; Head On et Blast Mine citées dans des notes officielles sans valeur chiffrée.

- Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 (15-21/09/2026) = **non LIVE**, signalé à part.
- Méthode initiale (lot 2) : WebSearch uniquement (résumés). **Re-vérification lot 12a (27/09/2026)** : description LIVE 10.1.2a et change log 8.x-10.x des pages wiki.gg complètes (via API MediaWiki, `kb/sources/wiki_perks_digest.md`, brut `wiki_perks.json`) [28]-[50], croisées avec les notes officielles BHVR 9.x-10.x lues en local (`kb/sources/patches/official_*.txt`) [51]-[61]. Confiance : STRONG_SECONDARY (page wiki complète) ; VERIFIED_MULTI_SOURCE si une note officielle concorde.
- Piège du digest (page wiki affichant déjà le PTB) : contrôlé pour les perks de ce fichier citées dans la note 559 — We'll Make It et Shoulder the Burden ont une LIVE tirée de l'historique wiki (4.0.2, 8.4.0) qui concorde avec les lignes « was … » de la 559 ; Head On n'y figure que pour un correctif de bug.
- Notes de valeur = **HEURISTIC**.
- Périmètre (23 perks) : Distortion, Reassurance, We'll Make It, Plot Twist, Shoulder the Burden, Boon: Circle of Healing, Boon: Shadow Step, Boon: Exponential, Boon: Steadfast, Botany Knowledge, Vigil, Wicked, Overcome, Hope, Fixated, Dramaturgy, Flashbang, Balanced Landing, Head On, Quick & Quiet, Deception, Blast Mine, Smash Hit.

> **Historique** : au lot 2, le quota WebSearch avait limité la vérification à 12 perks (+ Head On via l'audit) ; 10 perks reprenaient le seed ou la connaissance du modèle. Toutes sont maintenant re-vérifiées sur la page wiki complète. Deux soupçons tirés de la connaissance du modèle (Quick & Quiet 30/25/20 s, Deception 3 s / 60/50/40 s) sont **infirmés** : le seed avait raison.

---

## Perks vérifiées par WebSearch au lot 2 (re-vérifiées au lot 12a)

### Distortion — Jeff Johansen
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : quand le tueur tente de lire votre aura, consomme 1 jeton → aura bloquée + scratch marks supprimées pendant 8/10/12 s — STRONG_SECONDARY [28][1][2]
- **Valeurs / CD / conditions / limites** : 1 jeton au départ, max 2 ; +1 jeton par 15 s **de poursuite** (LIVE) ; ne se déclenche pas à l'état Dying [28]. Historique (change log wiki [28]) : **8.3.0** = 8/10/12 s (était 6/8/10), 1 jeton au départ et 2 max (était 3/3), recharge limitée à la poursuite ; **8.3.2** = recharge 30 → 15 s. Aucune mention de Distortion dans les notes officielles 9.x-10.x lues (dont 9.5.0 [56]) : l'attribution à 9.5.0 est **fausse**.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][28].
- **Interactions, DR, anti-synergies** : consomme des jetons même sur des lectures d'aura « inutiles » (ex. perks d'aura passives du tueur) ; ne cache pas les griffures hors activation ; pas de DR (effet binaire, pas un modificateur cumulable — HYPOTHESIS).
- **Synergies** (HEURISTIC) : perks de furtivité (Lucky Break, Iron Will, Boon: Shadow Step) ; perks qui vous mettent en chase pour recharger.
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 1 · chase 1 · macro 2 · info 2 · anti-tunnel 1 · soin 0 · gen 1 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : contre tueurs à aura (Nurse's Calling, BBQ, Lethal Pursuer, Nowhere to Hide) → le déclenchement **vous informe** qu'un effet d'aura existe ; en fin de chase, masque les griffures pour casser la ligne.
- **Quand elle n'en produit pas** (HEURISTIC) : contre un tueur sans aucune lecture d'aura (0 déclenchement) ; jetons gâchés au début si Lethal Pursuer sans poursuite ensuite.
- **Écart avec le seed** : effet OK (1/2 jetons, 15 s de poursuite, 8/10/12 s [28]) ; historique du seed (p. 32) « 9.5.0 : buff de Distortion (15 s) » **FAUX** : buff 30 → 15 s en 8.3.2 [28], rien en 9.5.0 [56].
- **Sources** : [1][2][3][28][56]

### Reassurance — Rebecca Chambers
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : à ≤ 6 m d'un survivant accroché, bouton actif → pause du processus de sacrifice 20/25/30 s, y compris les skill checks de lutte ; la silhouette du survivant est surlignée en blanc — STRONG_SECONDARY [29][4]
- **Valeurs / CD / conditions / limites** : 6 m ; 20/25/30 s ; une seule fois **par survivant et par instance de crochet** [29]. Aucune modification 8.x-10.1.2a au change log wiki.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][29].
- **Interactions, DR, anti-synergies** : pause de timer ≠ modificateur de vitesse → hors DR (HYPOTHESIS). Plusieurs Reassurance de survivants différents peuvent s'enchaîner sur le même crochet (déduit de « par survivant » — HYPOTHESIS).
- **Synergies** (HEURISTIC) : Kindred / Bond (savoir quand approcher), Deliverance/Borrowed Time pour la sortie du crochet, anti-camp basekit (la pause gagne du temps pendant que la jauge monte — HYPOTHESIS).
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 0 · macro 2 · info 0 · anti-tunnel 1 · soin 0 · gen 2 · endgame 3
- **Quand elle produit de la valeur** (HEURISTIC) : face-camping en fin de partie (portes ouvertes, dernier gen) → achète 20-30 s pour finir un gen ou organiser un sauvetage ; permet de s'approcher d'un crochet et repartir sans risquer un trade.
- **Quand elle n'en produit pas** (HEURISTIC) : tueur qui patrouille loin (le temps gagné n'est pas nécessaire) ; si l'approche à 6 m vous fait mettre à terre.
- **Écart avec le seed** : OK (6 m, 20/25/30 s ; « une fois par état de crochet » ≈ « par survivant et par instance de crochet » [29], IMPRÉCIS très mineur).
- **Sources** : [4][5][29]

### We'll Make It — Générale
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : après avoir décroché un autre survivant, vous soignez les autres 100 % plus vite pendant 30/60/90 s — VERIFIED_MULTI_SOURCE [30][60] (wiki, version LIVE = historique 4.0.2, la page affiche déjà le PTB ; « (was 30/60/90s) » dans la note 559)
- **Valeurs / CD / conditions / limites** : +100 % vitesse de soin altruiste ; LIVE 30/60/90 s.
- **PTB 10.2.0 (NON LIVE)** : durée **70/80/90 s** (was 30/60/90 s), +100 % inchangé. VERIFIED_MULTI_SOURCE [60][30]
- **Interactions, DR, anti-synergies** : +100 % de vitesse de soin = modificateur de vitesse d'action → **probablement soumis aux DR 9.6.0** si cumulé à Botany / Circle of Healing / Desperate Measures (HYPOTHESIS : la liste exhaustive des modificateurs DR n'a pas été lue — cf. audit §2.1).
- **Synergies** (HEURISTIC) : Borrowed Time / Deliverance (décrochages propres), Kindred.
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 3 · gen 1 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : décrochage à distance de sécurité → soin du décroché en ~8 s au lieu de 16 s, la protection d'Endurance n'est pas « perdue » en soin long.
- **Quand elle n'en produit pas** (HEURISTIC) : tueur qui revient immédiatement sur le décroché (tunnel) ; en tier I (30 s) on n'arrive souvent pas jusqu'à un coin sûr avant expiration.
- **Écart avec le seed** : OK (LIVE 30/60/90 s, PTB 70/80/90 s correctement étiqueté [30][60]).
- **Sources** : [6][7][8][9][30][60]

### Plot Twist — Nicolas Cage
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : blessé, accroupi et immobile → bouton actif = passer à l'état Dying sans notifier le tueur ; gémissements et flaques de sang supprimés ; auto-récupération complète débloquée, +25 % de vitesse de récupération ; après s'être relevé seul : soigné entièrement (full health) et +50 % Haste 2/3/4 s — STRONG_SECONDARY [31] ; le +25 % de récupération est confirmé par la note 9.2.0 [53] → VERIFIED_MULTI_SOURCE pour cette valeur.
- **Valeurs / CD / conditions / limites** : +25 % ; Haste 50 % 2/3/4 s ; désactivée après récupération (par tout moyen) ; se réactive une fois quand les portes sont alimentées [31].
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][31].
- **Interactions, DR, anti-synergies** : +25 % récupération cumulable avec Boon: Exponential / Unbreakable (DR probable — HYPOTHESIS) ; suppression des gémissements et des flaques de sang confirmée par le wiki [31]. Depuis 9.5.0, Plot Twist ne peut plus forcer l'activation de perks du tueur ou d'autres survivants hors de leur contrôle (ex. Forced Hesitation, Better Together) [56].
- **Synergies** (HEURISTIC) : Boon: Exponential (vitesse de relèvement), Distortion / Off the Record (furtivité), Resilience/Hope (Haste — DR si Haste identique : HYPOTHESIS).
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 1 · macro 1 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : blessé sans soigneur disponible → auto-soin complet sans médikit + burst de Haste ; en fin de chase blessé caché, le tueur perd la trace.
- **Quand elle n'en produit pas** (HEURISTIC) : tueur qui slug/patrouille (se mettre à terre = risque de pick-up) ; perte de temps de gen (~30 s au sol).
- **Écart avec le seed** : effet OK [31] ; historique « buff de Plot Twist en 9.2.0 » **OK** (note 9.2.0 : « Added a new effect: Increases recovery speed by 25% » [53], hors section « Postponed »).
- **Sources** : [10][11][12][31][53][56]

### Shoulder the Burden — Taurie Cain
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : une fois par partie, hors dernier crochet (Death Hook), face à un survivant accroché : bouton actif = le décroche et échange 1 état de crochet à son profit ; vous criez et êtes **Exposed 60/50/40 s** — VERIFIED_MULTI_SOURCE [32][60] (wiki, version LIVE = historique 8.4.0, la page affiche déjà le PTB ; « (was Exposed for 60/50/40s) » dans la note 559). CONFLICT-P24-01 RÉSOLU.
- **Valeurs / CD / conditions / limites** : Exposed appliqué même si le cri est supprimé (Calm Spirit, Hardened) ; état échangé indiqué par une pip jaune visible du tueur (résumés lot 2, non repris dans la description wiki : STRONG_SECONDARY au mieux). Historique : Exposed 30/25/20 s au PTB 8.4.0, doublé à la sortie 8.4.0 [32]. Correctif 9.1.0 : un décrochage par Shoulder the Burden déclenche bien We'll Make It [52].
- **PTB 10.2.0 (NON LIVE)** : vous devenez **blessé** (si en bonne santé) et **Broken 160/140/120 s** au lieu d'Exposed ; la perk est ensuite **désactivée pour tous les survivants** (anti-chaîne en 4-man). VERIFIED_MULTI_SOURCE [60][32]
- **Interactions, DR, anti-synergies** : l'échange est télégraphié au tueur (pip jaune) → il peut vous cibler Exposed ; anti-synergie avec vos propres perks de dernier crochet.
- **Synergies** (HEURISTIC) : Reassurance, Borrowed Time (décrochage protégé), Dead Hard/Off the Record contre le retour sur vous Exposed (HEURISTIC).
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 3 · chase 0 · macro 2 · info 0 · anti-tunnel 3 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : allié tunnelé à 2 crochets tôt en partie → vous encaissez l'état, l'équipe garde 4 joueurs.
- **Quand elle n'en produit pas** (HEURISTIC) : vous êtes déjà à 1 crochet ou le tueur est à portée (Exposed = mise à terre en 1 coup) ; en fin de partie où chaque crochet compte peu.
- **Écart avec le seed** : OK sur LIVE (Exposed 60/50/40 s [32][60]) et PTB (Broken 160/140/120 s) ; IMPRÉCIS : le PTB omet la mise en état blessé et la désactivation pour tous [60].
- **Sources** : [8][13][14][15][32][52][60]

### Boon: Circle of Healing — Mikaela Reid
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : totem béni, rayon 24 m : +50/75/100 % vitesse de soin altruiste **sans médikit** ; **l'aura de tout survivant blessé** (dans la zone) est révélée à tous les autres survivants ; un survivant n'est affecté que par une instance de Circle of Healing à la fois — STRONG_SECONDARY [33][16]
- **Valeurs / CD / conditions / limites** : 24 m ; 50/75/100 % ; pas d'auto-soin. Aucune modification 8.x-10.1.2a au change log wiki [33] (la date du passage 40/45/50 → 50/75/100 %, antérieure à 8.x, est hors périmètre).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][33].
- **Interactions, DR, anti-synergies** : cumul avec Botany / We'll Make It → DR probable (HYPOTHESIS) ; totem neutralisé par le tueur (snuff) ; Shattered Hope détruit le totem.
- **Synergies** (HEURISTIC) : autres boons sur le même totem (Shadow Step, Exponential, Steadfast) ; Botany, We'll Make It.
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 0 · macro 2 · info 1 · anti-tunnel 0 · soin 3 · gen 1 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : totem posé loin des gens de pression → station de soin rapide + info sur qui est blessé.
- **Quand elle n'en produit pas** (HEURISTIC) : tueur qui snuff systématiquement ; soins avec médikit (bonus inopérant).
- **Écart avec le seed** : **FAUX** (effet d'aura inversé) — le seed dit que « les blessés présents voient les auras des autres » ; la page wiki complète dit « If a Survivor is injured, their Aura is revealed to all other Survivors » [33]. Rayon 24 m et non-cumul non mentionnés.
- **Sources** : [16][17][33]

### Boon: Shadow Step — Mikaela Reid
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : dans le rayon du boon (24 m), scratch marks supprimées et auras cachées au tueur ; les deux effets persistent 2/3/4 s après la sortie — STRONG_SECONDARY [34][18]
- **Valeurs / CD / conditions / limites** : rayon 24 m (confirmé pour Shadow Step [34]) ; 2/3/4 s. Aucune modification 8.x-10.1.2a au change log wiki.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][34].
- **Interactions, DR, anti-synergies** : redondant avec Distortion à l'intérieur du rayon ; totem visible donc zone connue du tueur.
- **Synergies** (HEURISTIC) : Circle of Healing (zone de soin cachée), Plot Twist / Exponential.
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 2 · chase 1 · macro 2 · info 0 · anti-tunnel 1 · soin 1 · gen 1 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : contre tueurs à aura, et pour perdre le tueur en entrant dans la zone en fin de chase (griffures coupées).
- **Quand elle n'en produit pas** (HEURISTIC) : tueur qui snuff ; chase loin du totem.
- **Écart avec le seed** : OK (2/3/4 s [34]) ; rayon 24 m non mentionné.
- **Sources** : [18][34]

### Boon: Exponential — Jonah Vasquez
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : rayon 24 m : +90/95/100 % vitesse de récupération à l'état Dying et auto-récupération complète débloquée — STRONG_SECONDARY [35][19]
- **Valeurs / CD / conditions / limites** : 24 m ; 90/95/100 %. « ~16 s de relèvement au tier III » : non présent sur la page wiki (UNCERTAIN). Aucune modification 8.x-10.1.2a au change log wiki.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][35].
- **Interactions, DR, anti-synergies** : cumul avec Plot Twist / Unbreakable → DR probable sur la vitesse de récupération (HYPOTHESIS).
- **Synergies** (HEURISTIC) : Plot Twist, Circle of Healing, Shadow Step.
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 2 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : contre le slug (tueurs à mise à terre rapide) → auto-relève sans coéquipier.
- **Quand elle n'en produit pas** (HEURISTIC) : tueur qui ramasse immédiatement ; totem loin des chases.
- **Écart avec le seed** : OK (90/95/100 %, relèvement complet [35]).
- **Sources** : [19][35]

### Boon: Steadfast — Aurora Stardotter
- **Statut** : LIVE 10.1.2a (ajoutée en 10.1.0, 25/08/2026)
- **Effet LIVE** : rayon 24 m : les générateurs dans la zone régressent 50 % plus lentement et se réparent +8/9/10 % plus vite ; **les survivants dans la zone voient l'aura des générateurs concernés** — VERIFIED_MULTI_SOURCE [36][57] (note 10.1.0 : « Survivors within the Boon's range see the Auras of affected Generators »)
- **Valeurs / CD / conditions / limites** : 24 m ; −50 % de régression ; +8/9/10 % ; une seule instance de Steadfast par survivant ; tous les boons sur le même totem. Correctifs 10.1.0 : les gens inactifs ne régressaient pas à tort, l'effet ne se cumule pas entre deux totems [57].
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][36].
- **Interactions, DR, anti-synergies** : +8/9/10 % réparation cumulé à d'autres bonus de réparation → DR probable (HYPOTHESIS) ; ralentissement de régression vs perks de régression du tueur : interaction non documentée.
- **Synergies** (HEURISTIC) : autres boons, gens groupés autour d'un totem (3-gen défensif).
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 2 · chase 0 · macro 2 · info 1 (aura des gens dans la zone) · anti-tunnel 0 · soin 0 · gen 2 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : totem proche d'un groupe de gens disputés → régression amortie, finition plus rapide.
- **Quand elle n'en produit pas** (HEURISTIC) : totem isolé ; tueur qui snuff.
- **Écart avec le seed** : OK sur les chiffres [36][57] ; IMPRÉCIS : l'aura des générateurs dans la zone n'est pas mentionnée.
- **Sources** : [20][21][36][57]

### Botany Knowledge — Claudette Morel
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : effet permanent : +30/40/50 % de vitesse de soin — STRONG_SECONDARY [37][22]
- **Valeurs / CD / conditions / limites** : 30/40/50 % ; malus d'efficacité des objets de soin (−20 %) retiré en 9.0.0 — VERIFIED_MULTI_SOURCE [37][51] (note 9.0.0 : « Healing item efficiency reduction removed (was 20%) »).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][37].
- **Interactions, DR, anti-synergies** : cumul avec We'll Make It / CoH / Desperate Measures → DR probable (HYPOTHESIS).
- **Synergies** (HEURISTIC) : Self-Care / médikit, Resurgence, We'll Make It.
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 3 · gen 1 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : équipes qui se soignent beaucoup (retour rapide sur les gens) ; avec médikit sans pénalité depuis 9.0.0.
- **Quand elle n'en produit pas** (HEURISTIC) : contre tueurs anti-soin (Mangled, Sloppy) — le bonus reste mais le soin reste une perte de temps ; slot pris dans des builds déjà riches en soin.
- **Écart avec le seed** : OK (30/40/50 %, malus retiré en 9.0.0 [37][51]).
- **Sources** : [22][37][51]

### Vigil — Quentin Smith
- **Statut** : LIVE 10.1.2a (nerfée en 10.1.1)
- **Effet LIVE** : vous et les survivants à 16 m récupérez de **Exhausted** 20/25/30 % plus vite ; l'effet persiste **15 s** après la sortie de la zone ; un survivant n'est affecté que par une instance de Vigil à la fois — VERIFIED_MULTI_SOURCE [38][58][59]
- **Valeurs / CD / conditions / limites** : historique : avant 10.1.0 = 43/55/66 % selon le wiki (valeur codée ; note 10.1.0 : « was 44/55/66% ») sur 8 statuts ; **10.1.0** : 30/35/40 % [57] ; **10.1.1** : 20/25/30 %, Exhausted uniquement dans le texte [58], mais tous les statuts restaient affectés (bug) ; **10.1.2** : correctif, Exhausted seul [59][38]. Depuis 9.2.0, plusieurs Vigil ne se cumulent plus [53].
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][38].
- **Interactions, DR, anti-synergies** : plusieurs Vigil **ne se cumulent pas** (une instance par survivant, FACT depuis 9.2.0 [53][38]) : la question DR ne se pose pas entre elles.
- **Synergies** (HEURISTIC) : perks d'Exhaustion (Sprint Burst, Lithe, Dead Hard, Overcome, Balanced Landing).
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : build à perk d'Exhaustion utilisée souvent (Sprint Burst) ; groupe proche.
- **Quand elle n'en produit pas** (HEURISTIC) : depuis 10.1.1 contre Broken/Hindered/Mangled/Blindness etc. → **plus aucun effet**.
- **Écart avec le seed** : **FAUX** — le seed liste 8 statuts et 30/35/40 % (valeur 10.1.0) ; LIVE = Exhausted seul, 20/25/30 % [38][58][59]. « avant 44/55/66 % » : OK (note 10.1.0 [57] ; le wiki dit 43/55/66 %). « Dure 15 s après la sortie de zone » : OK [38].
- **Sources** : [23][24][25][27][38][53][57][58][59]

### Wicked — Sable Ward
- **Statut** : LIVE 10.1.2a ; rework 9.3.0 désactivé (kill-switch) puis version d'origine rétablie en 9.3.2 [54][55][39].
- **Effet LIVE** : après tout décrochage (y compris le vôtre), aura du tueur révélée 16/18/20 s ; accroché au sous-sol : 1er état de crochet = auto-décrochage réussi à 100 % ; 2e état ou dernier survivant = pas d'effet — VERIFIED_MULTI_SOURCE [39][55] (note 9.3.2 : « Your self-unhook attempts in the basement always succeed… you see the Killer's aura for 16/18/20 seconds (Reverted to this version) »)
- **Valeurs / CD / conditions / limites** : 16/18/20 s ; 100 % au 1er état au sous-sol ; exclu en dernier survivant [39]. Auto-décrochage basekit restreint depuis 9.0.0 (audit) → Wicked est une des rares sources.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][39].
- **Interactions, DR, anti-synergies** : aucune valeur si le tueur n'utilise pas le sous-sol ; aura du tueur = info immédiate au décrochage.
- **Synergies** (HEURISTIC) : Deliverance/Slippery Meat (autres auto-décrochages), perks de sortie de crochet (Off the Record).
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 2 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : tueurs orientés sous-sol (Trapper, Hag, Agitation/Iron Grasp) ; l'aura post-décrochage aide à fuir la direction du tunnel.
- **Quand elle n'en produit pas** (HEURISTIC) : crochets hors sous-sol (majorité des parties) — l'effet d'aura reste le seul gain.
- **Écart avec le seed** : OK (« au premier crochet au sous-sol » ≈ 1er état de crochet ; aura 16/18/20 s [39][55]) ; omet l'exclusion en dernier survivant (mineur).
- **Sources** : [26][27][39][54][55]

### Head On — Jane Romero (audit phase 0 au lot 2 ; page wiki complète au lot 12a)
- **Statut** : LIVE 10.1.2a (9.0.0 : condition « AFK crows » retirée [40]).
- **Effet LIVE** : après 3 s dans un casier, maintenir Sprint en sortant → vous jaillissez du casier et étourdissez le tueur **3 s** s'il est à ≤ **2,5 m** ; en cas d'échec, **Loud Noise Notification** pour le tueur ; inutilisable si Exhausted ; **Exhausted 60/50/40 s seulement sur un stun réussi** — STRONG_SECONDARY [40][27]
- **Valeurs / CD / conditions / limites** : 3 s dans le casier ; 2,5 m ; stun 3 s ; Exhausted 60/50/40 s sur réussite. Bug connu : contre la Nurse, un échec appliquait quand même l'Exhausted — corrigé dans la note **PTB 10.2.0** [60] (donc probablement encore présent en LIVE 10.1.2a, HYPOTHESIS).
- **PTB 10.2.0 (NON LIVE)** : effet non modifié au PTB 10.2.0 d'après le wiki et la note officielle 559 (seulement le correctif de bug Nurse ci-dessus) [60][40].
- **Interactions, DR, anti-synergies** : partage l'Exhaustion avec les autres perks Exhausted ; tueur qui ouvre le casier depuis le côté / ne s'approche pas.
- **Synergies** (HEURISTIC) : Quick & Quiet (entrer silencieusement), Vigil, Deception.
- **Difficulté** (HEURISTIC) : 3
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 2 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : sauvetage d'un allié porté (stun = libération) ; tueur qui fouille un casier près d'un gen.
- **Quand elle n'en produit pas** (HEURISTIC) : tueurs à distance ; tueur qui ne s'approche pas du casier ou qui l'ouvre après un délai. Un raté révèle votre position (Loud Noise) mais ne consomme pas l'Exhausted [40].
- **Écart avec le seed** : OK sur les valeurs (3 s, 2,5 m, 60/50/40 s) ; IMPRÉCIS : l'Exhausted n'est appliqué que sur un stun réussi, et le raté déclenche une Loud Noise Notification [40].
- **Sources** : [27][40][60]

---

## Perks non vérifiées au lot 2 (re-vérifiées au lot 12a)

Ces 10 perks reprenaient au lot 2 les valeurs du seed (quota WebSearch épuisé). Elles sont maintenant re-vérifiées sur les pages wiki complètes [41]-[50] et la note PTB 559 [60]. Interactions, synergies, notes et « quand utile » = **HEURISTIC / EXPERT OPINION**.

### Overcome — Jonah Vasquez
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki).
- **Effet LIVE** : quand vous passez de la pleine santé à l'état blessé, le boost de vitesse après le coup dure **+2 s** ; inutilisable si Exhausted ; Exhausted 60/50/40 s — STRONG_SECONDARY [41]
- **Valeurs / CD / conditions / limites** : +2 s ; Exhausted 60/50/40 s (LIVE, STRONG_SECONDARY [41]) ; déclencheur = perte de la pleine santé (pas un coup reçu en étant déjà blessé).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][41].
- **Interactions, DR, anti-synergies** : partage l'Exhaustion avec Sprint Burst / Dead Hard / Balanced Landing.
- **Synergies** (HEURISTIC) : Vigil, Resilience.
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 2 · macro 1 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : premier coup en terrain ouvert → distance suffisante pour atteindre la tuile suivante.
- **Quand elle n'en produit pas** (HEURISTIC) : contre tueurs à attaque spéciale sans boost utile (ex. à distance) ou si vous êtes Exhausted.
- **Écart avec le seed** : OK (+2 s, 60/50/40 s [41]).
- **Sources** : [41]

### Hope — Générale
- **Statut** : LIVE 10.1.2a ; nerf 9.2.0 (5/6/7 → 3/4/5 %) [42][53].
- **Effet LIVE** : quand les portes sont alimentées, +3/4/5 % de Haste pour le reste de l'épreuve — VERIFIED_MULTI_SOURCE [42][53] (note 9.2.0 : « Decreased the Haste status effect gained when the Exit Gates are powered to 3/4/5% (was 5/6/7%) », hors section « Postponed »)
- **Valeurs / CD / conditions / limites** : 3/4/5 % jusqu'à la fin de l'épreuve (aucune limite de durée dans la description wiki [42]).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][42].
- **Interactions, DR, anti-synergies** : Haste cumulée avec Resilience/autres Haste → DR probable (HYPOTHESIS) ; perdue en cas de No Way Out/Blood Warden n'est pas documenté.
- **Synergies** (HEURISTIC) : Adrenaline, Wake Up!.
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 2
- **Quand elle produit de la valeur** (HEURISTIC) : chases de fin de partie en terrain ouvert.
- **Quand elle n'en produit pas** (HEURISTIC) : parties perdues avant les portes (≈ 0 valeur pendant 90 % de la partie).
- **Écart avec le seed** : OK (3/4/5 %, nerf 9.2.0, jusqu'à la fin [42][53]).
- **Sources** : [42][53]

### Fixated — Nancy Wheeler
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki).
- **Effet LIVE** : effets permanents : **vitesse de marche** +10/15/20 % ; vous voyez vos propres scratch marks — STRONG_SECONDARY [43]. Ce n'est **pas** un statut Haste, et il n'y a **aucune condition de santé**.
- **Valeurs / CD / conditions / limites** : 10/15/20 % de vitesse de marche (LIVE, STRONG_SECONDARY [43]) ; l'audit phase 0 confirmait déjà « griffures visibles » [27].
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][43].
- **Interactions, DR, anti-synergies** : si Haste, DR avec d'autres Haste (HYPOTHESIS).
- **Synergies** (HEURISTIC) : Iron Will, Distortion (furtivité).
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : rotations entre gens en marchant (silencieux, sans griffures) ; apprentissage des griffures.
- **Quand elle n'en produit pas** (HEURISTIC) : en chase (vous courez).
- **Écart avec le seed** : IMPRÉCIS — le seed dit « +10/15/20 % de Haste » ; il s'agit d'un bonus de vitesse de marche, pas du statut Haste [43]. Valeurs OK.
- **Sources** : [27][43]

### Dramaturgy — Nicolas Cage
- **Statut** : LIVE 10.1.2a (9.4.0 : correctifs non documentés sur les objets donnés [44]).
- **Effet LIVE** : en pleine santé, bouton actif en courant → 0,5 s de course « genoux hauts », puis +25 % de Haste 2 s ; ensuite un effet secondaire aléatoire, **jamais le même deux fois de suite** : second Haste identique, **Exposed 12 s**, cri, ou un **objet Rare** avec add-ons aléatoires (l'objet tenu est lâché) ; inutilisable si Exhausted ; Exhausted 60/50/40 s — STRONG_SECONDARY [44]
- **Valeurs / CD / conditions / limites** : 25 % / 2 s ; Exposed 12 s ; Exhausted 60/50/40 s (LIVE, STRONG_SECONDARY [44]).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][44].
- **Interactions, DR, anti-synergies** : Exposed aléatoire = risque de mise à terre en 1 coup ; partage l'Exhaustion.
- **Synergies** (HEURISTIC) : Vigil, Plot Twist (fun).
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : burst de sortie en bonne santé loin du tueur (tirage sans risque).
- **Quand elle n'en produit pas** (HEURISTIC) : en chase proche (Exposed possible).
- **Écart avec le seed** : OK (25 % 2 s, Exposed 12 s, objet rare, cri, 60/50/40 s [44]) ; omet « jamais le même effet deux fois de suite » et la perte de l'objet tenu (mineur).
- **Sources** : [44]

### Flashbang — Leon S. Kennedy
- **Statut** : LIVE 10.1.2a (buff 8.2.0 : seuil 70/60/50 → 50/45/40 %).
- **Effet LIVE** : après avoir réparé des générateurs pour un total de 50/45/40 %, bouton actif dans un casier = fabrique une Flash Grenade ; la perk se désactive après usage — STRONG_SECONDARY [45]
- **Valeurs / CD / conditions / limites** : 50/45/40 % ; une seule grenade (désactivée après usage) [45].
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][45].
- **Interactions, DR, anti-synergies** : Lightborn du tueur annule ; aveuglement = sauvetage de porté / palette.
- **Synergies** (HEURISTIC) : Blast Mine, Head On (builds « save »).
- **Difficulté** (HEURISTIC) : 3
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 2 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : sauver un allié porté ; bloquer un pick-up.
- **Quand elle n'en produit pas** (HEURISTIC) : tueur avec Lightborn, ou si le temps passé au casier coûte un gen.
- **Écart avec le seed** : OK (50/45/40 %, casier, 1 charge [45]).
- **Sources** : [45]

### Balanced Landing — Nea Karlsson
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki).
- **Effet LIVE** : en tombant d'une hauteur : bruits de chute et d'atterrissage supprimés ; durée du stagger à l'atterrissage −75 % ; +50 % de Haste 3 s ; inutilisable si Exhausted ; Exhausted 60/50/40 s — STRONG_SECONDARY [46]
- **Valeurs / CD / conditions / limites** : −75 % ; 50 % / 3 s ; 60/50/40 s (LIVE, STRONG_SECONDARY [46]). Hauteur minimale « 1,25 m » (seed) : **non indiquée** sur la page wiki → UNCERTAIN.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][46].
- **Interactions, DR, anti-synergies** : dépend de la carte (hauteurs) ; partage l'Exhaustion.
- **Synergies** (HEURISTIC) : Vigil ; cartes à étages.
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 2 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : maps avec étages/bâtiments principaux (Coldwind Farm silo, etc.).
- **Quand elle n'en produit pas** (HEURISTIC) : maps plates.
- **Écart avec le seed** : OK sur les valeurs (50 % 3 s, −75 %, silencieux, 60/50/40 s [46]) ; « au moins 1,25 m » NON VÉRIFIABLE (absent de la description wiki).
- **Sources** : [46]

### Quick & Quiet — Meg Thomas
- **Statut** : LIVE 10.1.2a (buff 8.6.0 : cooldown 30/25/20 → 25/20/15 s).
- **Effet LIVE** : sur une action rapide (Rushed) de saut de palette ou de fenêtre, ou d'entrée / sortie de casier : supprime les bruits de l'interaction et la Loud Noise Notification ; cooldown 25/20/15 s — STRONG_SECONDARY [47]
- **Valeurs / CD / conditions / limites** : cooldown **25/20/15 s** (LIVE, STRONG_SECONDARY [47]) ; la valeur 30/25/20 s (connaissance du modèle) est **l'ancienne valeur d'avant 8.6.0** : soupçon infirmé. Correctif 9.6.0 : ne peut plus être utilisée juste avant la fin du cooldown [61].
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][47].
- **Interactions, DR, anti-synergies** : sans effet sur le bruit de palette.
- **Synergies** (HEURISTIC) : Head On, Lithe (vault silencieux + boost).
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : casser la ligne de vue puis vault/casier sans révéler la position.
- **Quand elle n'en produit pas** (HEURISTIC) : en chase avec vue directe.
- **Écart avec le seed** : OK (sauts et casiers silencieux, 25/20/15 s [47]) ; le soupçon du lot 2 était infondé.
- **Sources** : [47][61]

### Deception — Élodie Rakoto
- **Statut** : LIVE 10.1.2a (8.2.0 : cooldown 60/50/40 → 30/25/20 s ; 8.6.0 : suppression 3 → 5 s et cooldown → 25/20/15 s).
- **Effet LIVE** : maintenir Sprint en interagissant avec un casier → vous passez devant sans y entrer, ses portes s'ouvrent et se referment (feinte d'entrée rapide), Loud Noise Notification pour le tueur à cet endroit ; scratch marks **et flaques de sang** supprimées pendant **5 s** ; cooldown 25/20/15 s — STRONG_SECONDARY [48]
- **Valeurs / CD / conditions / limites** : 5 s ; 25/20/15 s (LIVE, STRONG_SECONDARY [48]). Les valeurs « 3 s / 60/50/40 s » (connaissance du modèle) sont des **valeurs antérieures à 8.2.0 / 8.6.0** : soupçon infirmé.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][48].
- **Interactions, DR, anti-synergies** : les flaques de sang (blessé) restent — à vérifier.
- **Synergies** (HEURISTIC) : Head On (mind game casier), Iron Will.
- **Difficulté** (HEURISTIC) : 3
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : après un break de ligne de vue près de casiers.
- **Quand elle n'en produit pas** (HEURISTIC) : tueur qui vous voit.
- **Écart avec le seed** : OK (feinte, fausse alerte, ni sang ni griffures 5 s, 25/20/15 s [48]) ; le soupçon du lot 2 était infondé.
- **Sources** : [48]

### Blast Mine — Jill Valentine
- **Statut** : LIVE 10.1.2a (8.2.0 : seuil 50 → 40 % ; description réécrite en 9.5.0 [56]).
- **Effet LIVE** : après l'équivalent de 40 % de réparation, bouton actif près d'un générateur = y installe un piège pour 100/110/120 s ; si le tueur endommage ce générateur, le piège se déclenche à mi-action : **stun 4 s** et **aveuglement de tous les joueurs à 12,5 m** ; piège désactivé à l'expiration ou au déclenchement ; auras des générateurs piégés révélées en jaune à tous les survivants — STRONG_SECONDARY [49]
- **Valeurs / CD / conditions / limites** : 40 % ; 100/110/120 s ; stun 4 s ; aveuglement 12,5 m (LIVE, STRONG_SECONDARY [49]).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][49].
- **Interactions, DR, anti-synergies** : Lightborn annule l'aveuglement (pas le stun — HYPOTHESIS).
- **Synergies** (HEURISTIC) : Flashbang, perks de gen.
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : tueurs qui kickent tous les gens ; l'explosion informe de la position du tueur.
- **Quand elle n'en produit pas** (HEURISTIC) : tueurs qui ne kickent pas.
- **Écart avec le seed** : OK (40 %, 100/110/120 s, visible des survivants, stun 4 s, aveuglement [49]) ; omet que l'aveuglement touche **tous les joueurs** à 12,5 m (survivants proches compris).
- **Sources** : [49][56]

### Smash Hit — Lee Yun-jin
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki).
- **Effet LIVE** : quand vous étourdissez le tueur avec une palette : +50 % de Haste 4 s ; inutilisable si Exhausted ; Exhausted 30/25/20 s — STRONG_SECONDARY [50]
- **Valeurs / CD / conditions / limites** : 50 % / 4 s ; 30/25/20 s (LIVE, STRONG_SECONDARY [50]).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [60][50].
- **Interactions, DR, anti-synergies** : partage l'Exhaustion ; tueurs immunisés aux stuns de palette (ou pouvoirs) → aucune valeur.
- **Synergies** (HEURISTIC) : Vigil, Poised.
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 2 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : tueurs qui chassent près des palettes (M1) → stun + distance.
- **Quand elle n'en produit pas** (HEURISTIC) : tueurs qui évitent les palettes (Nurse, Blight en vol).
- **Écart avec le seed** : OK (50 % 4 s, 30/25/20 s [50]).
- **Sources** : [50]

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| P24-01 | Distortion : 1 jeton au départ, max 2, +1 / 15 s de poursuite, 8/10/12 s | [28][1][2] | LIVE | STRONG_SECONDARY |
| P24-02 | Distortion : poursuite seule + 8/10/12 s en 8.3.0 ; recharge 30 → 15 s en 8.3.2 (pas 9.5.0) | [28][56] | 8.3.0 / 8.3.2 | STRONG_SECONDARY |
| P24-03 | Reassurance : pause 20/25/30 s à 6 m, une fois par survivant et par instance de crochet | [29][4] | LIVE | STRONG_SECONDARY |
| P24-04 | We'll Make It : +100 % soin altruiste 30/60/90 s | [30][60] | LIVE | VERIFIED_MULTI_SOURCE |
| P24-05 | We'll Make It : 70/80/90 s | [60][30] | PTB 10.2.0 (NON LIVE) | VERIFIED_MULTI_SOURCE |
| P24-06 | Plot Twist : +25 % récupération (9.2.0), +50 % Haste 2/3/4 s, réactivation aux portes alimentées | [31][53] | LIVE | VERIFIED_MULTI_SOURCE |
| P24-07 | Shoulder the Burden : Exposed 60/50/40 s | [32][60] | LIVE | VERIFIED_MULTI_SOURCE |
| P24-08 | Shoulder the Burden : blessé + Broken 160/140/120 s + désactivation pour tous | [60][32] | PTB 10.2.0 (NON LIVE) | VERIFIED_MULTI_SOURCE |
| P24-09 | Circle of Healing : +50/75/100 % soin altruiste sans médikit, 24 m ; auras des blessés révélées aux autres | [33] | LIVE | STRONG_SECONDARY |
| P24-10 | Shadow Step : 24 m, persistance 2/3/4 s | [34] | LIVE | STRONG_SECONDARY |
| P24-11 | Exponential : +90/95/100 % récupération, 24 m | [35] | LIVE | STRONG_SECONDARY |
| P24-12 | Steadfast : régression −50 %, réparation +8/9/10 %, 24 m, aura des gens concernés | [36][57] | LIVE (10.1.0) | VERIFIED_MULTI_SOURCE |
| P24-13 | Botany Knowledge : +30/40/50 % soin, sans malus d'objet de soin depuis 9.0.0 | [37][51] | LIVE | VERIFIED_MULTI_SOURCE |
| P24-14 | Vigil : Exhausted seul, 20/25/30 %, 16 m, persiste 15 s, non cumulable | [38][58][59][53] | LIVE (10.1.1, fix 10.1.2) | VERIFIED_MULTI_SOURCE |
| P24-15 | Wicked : 100 % auto-décrochage au 1er état au sous-sol ; aura du tueur 16/18/20 s | [39][55] | LIVE (rétablie 9.3.2) | VERIFIED_MULTI_SOURCE |
| P24-16 | Head On : stun 3 s, ≤ 2,5 m, 3 s dans le casier, Exhausted 60/50/40 s sur réussite seulement | [40] | LIVE | STRONG_SECONDARY |
| P24-17 | Overcome : +2 s de boost au passage en blessé ; 60/50/40 s | [41] | LIVE | STRONG_SECONDARY |
| P24-18 | Hope : 3/4/5 % de Haste, portes alimentées, jusqu'à la fin | [42][53] | LIVE (9.2.0) | VERIFIED_MULTI_SOURCE |
| P24-19 | Fixated : vitesse de marche +10/15/20 % (pas Haste), propres scratch marks visibles | [43] | LIVE | STRONG_SECONDARY |
| P24-20 | Dramaturgy : 25 % Haste 2 s ; Exposed 12 s possible ; 60/50/40 s | [44] | LIVE | STRONG_SECONDARY |
| P24-21 | Flashbang : 50/45/40 % de réparation, 1 grenade | [45] | LIVE (8.2.0) | STRONG_SECONDARY |
| P24-22 | Balanced Landing : −75 % stagger, 50 % Haste 3 s, 60/50/40 s | [46] | LIVE | STRONG_SECONDARY |
| P24-23 | Quick & Quiet : cooldown 25/20/15 s | [47] | LIVE (8.6.0) | STRONG_SECONDARY |
| P24-24 | Deception : 5 s sans scratch marks ni sang ; cooldown 25/20/15 s | [48] | LIVE (8.6.0) | STRONG_SECONDARY |
| P24-25 | Blast Mine : 40 % ; 100/110/120 s ; stun 4 s ; aveuglement 12,5 m | [49] | LIVE | STRONG_SECONDARY |
| P24-26 | Smash Hit : 50 % Haste 4 s ; 30/25/20 s | [50] | LIVE | STRONG_SECONDARY |

## Conflits

#### CONFLICT-P24-01 : Shoulder the Burden — Exposed (LIVE) ou Broken ?
- Source A : résumé wiki.gg / fandom / NightLight (requête 1) → Broken 160/140/120 s + désactivation pour tous. [13]
- Source B : résumé (requête 2) → Exposed 60/50/40 s. [13][14]
- Résolution : **RÉSOLU** — LIVE 10.1.2a = Exposed 60/50/40 s : historique wiki 8.4.0 [32] (la page affiche déjà le texte PTB) + note PTB 559 « You become Injured (was Exposed for 60/50/40s) … Broken 160/140/120s (NEW) » [60]. Broken = PTB 10.2.0 seulement.

#### CONFLICT-P24-02 : Boon: Circle of Healing — qui voit quelles auras ?
- Source A : seed → « les blessés présents voient les auras des autres ».
- Source B : résumé fandom → « If a Survivor is injured, their Aura is revealed to all other Survivors ». [16]
- Résolution : **RÉSOLU** — page wiki.gg complète [33] : « If a Survivor is injured, their Aura is revealed to all other Survivors ». Le seed a inversé l'effet (FAUX).

#### CONFLICT-P24-03 : Circle of Healing — date du passage 40/45/50 % → 50/75/100 %
- Source A : résumé → « March 2023 » 40/45/50 %, puis « April Developer Update (December 2023) » 50/75/100 %. [17]
- Résolution : hors périmètre (changement antérieur à 8.x, absent du change log 8.x-10.x [33]) ; sans impact LIVE (50/75/100 % confirmé [33]). UNRESOLVED sur la date seulement.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Vigil | 8 statuts, 30/35/40 %, « nerf 10.1.0 : avant 44/55/66 % » | Exhausted seul, 20/25/30 % depuis 10.1.1 (fix 10.1.2) [38][58][59] ; « avant 44/55/66 % » exact [57] | **FAUX** (valeur et statuts obsolètes) |
| Historique 10.1.0 (p. 32) | « Vigil 30/35/40 % » comme état final | valeur 10.1.0 exacte mais remplacée en 10.1.1 [58] | IMPRÉCIS (obsolète) |
| Boon: Circle of Healing | « les blessés présents voient les auras des autres » | les auras des blessés sont révélées aux autres [33] | **FAUX** (inversion) |
| Historique 9.5.0 (p. 32) | « buff de Distortion (15 s) » | buff 30 → 15 s en 8.3.2 [28] ; aucune mention en 9.5.0 [56] | **FAUX** (mauvais patch) |
| Historique 9.2.0 | « buff de Plot Twist » | +25 % de récupération ajouté en 9.2.0 [53][31] | OK |
| Fixated | « +10/15/20 % de Haste » | vitesse de marche +10/15/20 %, pas un statut Haste [43] | IMPRÉCIS |
| Head On | Exhausted 60/50/40 s | Exhausted seulement sur stun réussi ; Loud Noise sur raté [40] | IMPRÉCIS |
| Shoulder the Burden (PTB) | Broken 160/140/120 s à la place d'Exposed | + blessé si en bonne santé + désactivation pour tous [60] | IMPRÉCIS (omission) |
| Boon: Steadfast | régression −50 %, +8/9/10 % | concordant + aura des gens dans la zone [36][57] | OK / IMPRÉCIS (aura omise) |
| Blast Mine | explosion, stun 4 s, aveuglé | aveugle tous les joueurs à 12,5 m [49] | OK / IMPRÉCIS (mineur) |
| Balanced Landing | chute d'au moins 1,25 m | hauteur non indiquée sur le wiki [46] | NON VÉRIFIABLE (1,25 m) ; valeurs OK |
| Quick & Quiet | recharge 25/20/15 s | 25/20/15 s depuis 8.6.0 [47] | OK (soupçon du lot 2 infirmé) |
| Deception | 5 s sans griffures ni sang, recharge 25/20/15 s | idem depuis 8.6.0 [48] | OK (soupçon du lot 2 infirmé) |
| Distortion (effet), Reassurance, We'll Make It (LIVE + PTB), Plot Twist (effet), Shoulder the Burden (LIVE), Shadow Step, Exponential, Botany, Wicked, Overcome, Hope, Dramaturgy, Flashbang, Smash Hit | valeurs du seed | concordantes avec les pages wiki [28]-[50] (et notes officielles quand citées) | OK |

## Questions ouvertes

1. **Balanced Landing** : hauteur minimale de chute (1,25 m selon le seed) — absente de la description wiki.
2. **Head On** : le bug « Exhausted appliqué sur un raté contre la Nurse » (corrigé dans la note PTB 10.2.0 [60]) est-il bien présent en LIVE 10.1.2a ?
3. **Shoulder the Burden** : la pip jaune visible du tueur (résumés lot 2) n'est pas décrite sur la page wiki ; à confirmer en jeu.
4. **Boon: Exponential** : durée réelle d'un relèvement complet au tier III (~16 s selon un résumé, non présent sur la page wiki).
5. Liste officielle des modificateurs soumis aux DR 9.6.0 (manuel en jeu) pour trancher les HYPOTHESIS sur soins / récupération / Haste.

## Sources

[1] Distortion — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Distortion — consulté le 27/09/2026 via WebSearch (résumé)
[2] Distortion — Fandom — https://deadbydaylight.fandom.com/wiki/Distortion — consulté le 27/09/2026 via WebSearch (résumé)
[3] « DBD perk is getting buffed to make it easier to get your tokens back » — VideoGamer — https://www.videogamer.com/news/dead-by-daylight-perk-buff-easier-to-get-tokens-back/ — consulté le 27/09/2026 via WebSearch (résumé)
[4] Reassurance — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Reassurance — consulté le 27/09/2026 via WebSearch (résumé)
[5] Reassurance — Fandom — https://deadbydaylight.fandom.com/wiki/Reassurance — consulté le 27/09/2026 via WebSearch (résumé)
[6] We'll make it — NightLight — https://nightlight.gg/perks/We'll_make_it — consulté le 27/09/2026 via WebSearch (résumé)
[7] Dead by Daylight v10.2.0 PTB — Perk Overhaul — Patched — https://patched.gg/games/dead-by-daylight/1020-ptb-patch-notes — consulté le 27/09/2026 via WebSearch (résumé)
[8] DBD Perk Changes: All 58 Killer and Survivor Perks in the 10.2.0 PTB — timesaver.gg — https://timesaver.gg/blog/dbd-perk-changes-10-2-0 — consulté le 27/09/2026 via WebSearch (résumé)
[9] Dead by Daylight 10.2.0 PTB Changes 58 Perks — HappyGamer — https://happygamer.com/dead-by-daylight-10-2-0-ptb-58-perk-changes-164427/ — consulté le 27/09/2026 via WebSearch (résumé)
[10] Plot Twist — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Plot_Twist — consulté le 27/09/2026 via WebSearch (résumé)
[11] Plot Twist — NightLight — https://nightlight.gg/perks/Plot_Twist — consulté le 27/09/2026 via WebSearch (résumé)
[12] Patch Notes 9.2.X — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Patch_Notes_9.2.X — consulté le 27/09/2026 via WebSearch (résumé)
[13] Shoulder the Burden — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Shoulder_the_Burden — consulté le 27/09/2026 via WebSearch (résumé)
[14] Shoulder the Burden — NightLight — https://nightlight.gg/perks/Shoulder_the_Burden — consulté le 27/09/2026 via WebSearch (résumé)
[15] Dev Update: 10.2.0 Perks Update — BHVR forums — https://forums.bhvr.com/dead-by-daylight/discussion/472297/dev-update-10-2-0-perks-update — consulté le 27/09/2026 via WebSearch (résumé)
[16] Boon: Circle of Healing — Fandom — https://deadbydaylight.fandom.com/wiki/Boon:_Circle_of_Healing — consulté le 27/09/2026 via WebSearch (résumé)
[17] Dead by Daylight April 2023 Developer Update 6.7.0 — Sportskeeda — https://sportskeeda.com/esports/dead-daylight-april-2023-developer-update-6-7-0-dead-hard-nerfs-healing-changes-butterfly-tape-buffs — consulté le 27/09/2026 via WebSearch (résumé)
[18] Boon: Shadow Step — Fandom — https://deadbydaylight.fandom.com/wiki/Boon:_Shadow_Step — consulté le 27/09/2026 via WebSearch (résumé)
[19] Boon: Exponential — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Boon:_Exponential — consulté le 27/09/2026 via WebSearch (résumé)
[20] Boon: Steadfast — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Boon:_Steadfast — consulté le 27/09/2026 via WebSearch (résumé)
[21] Boon: Steadfast — NightLight — https://nightlight.gg/perks/Boon:_Steadfast — consulté le 27/09/2026 via WebSearch (résumé)
[22] Botany Knowledge — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Botany_Knowledge — consulté le 27/09/2026 via WebSearch (résumé)
[23] Vigil — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Vigil — consulté le 27/09/2026 via WebSearch (résumé)
[24] 10.1.1 Bugfix Patch — BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/557-10-1-1-bugfix-patch — consulté le 27/09/2026 via WebSearch (résumé)
[25] Patch Notes 10.1.X — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Patch_10.1.0 — consulté le 27/09/2026 via WebSearch (résumé)
[26] Wicked — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Wicked — consulté le 27/09/2026 via WebSearch (résumé)
[27] Audit phase 0 (local) — kb/seed/audit_phase0.txt (tableau « Référence vérifiée » : Head On, Vigil 10.1.1, Wicked reverté 9.3.2, Fixated/griffures) — consulté le 27/09/2026
[28] Distortion — deadbydaylight.wiki.gg/wiki/Distortion — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[29] Reassurance — deadbydaylight.wiki.gg/wiki/Reassurance — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[30] We'll Make It — deadbydaylight.wiki.gg/wiki/We'll_Make_It — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[31] Plot Twist — deadbydaylight.wiki.gg/wiki/Plot_Twist — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[32] Shoulder the Burden — deadbydaylight.wiki.gg/wiki/Shoulder_the_Burden — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[33] Boon: Circle of Healing — deadbydaylight.wiki.gg/wiki/Boon:_Circle_of_Healing — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[34] Boon: Shadow Step — deadbydaylight.wiki.gg/wiki/Boon:_Shadow_Step — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[35] Boon: Exponential — deadbydaylight.wiki.gg/wiki/Boon:_Exponential — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[36] Boon: Steadfast — deadbydaylight.wiki.gg/wiki/Boon:_Steadfast — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[37] Botany Knowledge — deadbydaylight.wiki.gg/wiki/Botany_Knowledge — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[38] Vigil — deadbydaylight.wiki.gg/wiki/Vigil — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[39] Wicked — deadbydaylight.wiki.gg/wiki/Wicked — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[40] Head On — deadbydaylight.wiki.gg/wiki/Head_On — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[41] Overcome — deadbydaylight.wiki.gg/wiki/Overcome — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[42] Hope — deadbydaylight.wiki.gg/wiki/Hope — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[43] Fixated — deadbydaylight.wiki.gg/wiki/Fixated — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[44] Dramaturgy — deadbydaylight.wiki.gg/wiki/Dramaturgy — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[45] Flashbang — deadbydaylight.wiki.gg/wiki/Flashbang — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[46] Balanced Landing — deadbydaylight.wiki.gg/wiki/Balanced_Landing — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[47] Quick & Quiet — deadbydaylight.wiki.gg/wiki/Quick_&_Quiet — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[48] Deception — deadbydaylight.wiki.gg/wiki/Deception — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[49] Blast Mine — deadbydaylight.wiki.gg/wiki/Blast_Mine — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[50] Smash Hit — deadbydaylight.wiki.gg/wiki/Smash_Hit — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[51] Note officielle BHVR 9.0.0 | Five Nights at Freddy's — https://forums.bhvr.com/dead-by-daylight/kb/articles/510 — lue en local (`kb/sources/patches/official_510.txt`), consultée le 27/09/2026
[52] Note officielle BHVR 9.1.0 | The Walking Dead — https://forums.bhvr.com/dead-by-daylight/kb/articles/516 — lue en local (`kb/sources/patches/official_516.txt`), consultée le 27/09/2026
[53] Note officielle BHVR 9.2.0 | Sinister Grace — https://forums.bhvr.com/dead-by-daylight/kb/articles/523 — lue en local (`kb/sources/patches/official_523.txt`), consultée le 27/09/2026
[54] Note officielle BHVR 9.3.0 | Mid-Chapter — https://forums.bhvr.com/dead-by-daylight/kb/articles/529 — lue en local (`kb/sources/patches/official_529.txt`), consultée le 27/09/2026
[55] Note officielle BHVR 9.3.2 | Bugfix Patch — https://forums.bhvr.com/dead-by-daylight/kb/articles/530 — lue en local (`kb/sources/patches/official_530.txt`), consultée le 27/09/2026
[56] Note officielle BHVR 9.5.0 | All-Kill: Comeback — https://forums.bhvr.com/dead-by-daylight/kb/articles/538 — lue en local (`kb/sources/patches/official_538.txt`), consultée le 27/09/2026
[57] Note officielle BHVR 10.1.0 | Chorus of Sin — https://forums.bhvr.com/dead-by-daylight/kb/articles/556 — lue en local (`kb/sources/patches/official_556.txt`), consultée le 27/09/2026
[58] Note officielle BHVR 10.1.1 | Bugfix Patch — https://forums.bhvr.com/dead-by-daylight/kb/articles/557 — lue en local (`kb/sources/patches/official_557.txt`), consultée le 27/09/2026
[59] Note officielle BHVR 10.1.2 | Bugfix Patch — https://forums.bhvr.com/dead-by-daylight/kb/articles/558 — lue en local (`kb/sources/patches/official_558.txt`), consultée le 27/09/2026
[60] Note officielle BHVR 10.2.0 PTB Patch Notes (NON LIVE) — https://forums.bhvr.com/dead-by-daylight/kb/articles/559 — lue en local (`kb/sources/patches/official_559.txt`), consultée le 27/09/2026
[61] Note officielle BHVR 9.6.0 | Patch Notes — https://forums.bhvr.com/dead-by-daylight/kb/articles/544 — lue en local (`kb/sources/patches/official_544.txt`), consultée le 27/09/2026
