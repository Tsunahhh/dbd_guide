# Lot 2 — Perks survivant, page 24 du guide seed (ch3_survperks.txt l. 200-307)

**Couverture web : 12 éléments vérifiés par recherche (+ Head On via audit phase 0 sourcé) / 10 non re-vérifiés (quota WebSearch épuisé)** — 23 perks traitées.

- Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 (15-21/09/2026) = **non LIVE**, signalé à part.
- Méthode : WebSearch uniquement (WebFetch bloqué) → toutes les sources sont « via résumé de recherche » ; confiance max STRONG_SECONDARY sauf notes officielles citées.
- Notes de valeur = **HEURISTIC**.
- Périmètre (23 perks) : Distortion, Reassurance, We'll Make It, Plot Twist, Shoulder the Burden, Boon: Circle of Healing, Boon: Shadow Step, Boon: Exponential, Boon: Steadfast, Botany Knowledge, Vigil, Wicked, Overcome, Hope, Fixated, Dramaturgy, Flashbang, Balanced Landing, Head On, Quick & Quiet, Deception, Blast Mine, Smash Hit.

> **Limite de session** : le quota WebSearch de la session (200 appels, partagé entre agents) a été épuisé après 21 recherches de ce lot. **12 perks ont été vérifiées par WebSearch**, 1 (Head On) par l'audit phase 0 déjà sourcé, et **10 perks n'ont pas pu être vérifiées** (Overcome, Hope, Fixated, Dramaturgy, Flashbang, Balanced Landing, Quick & Quiet, Deception, Blast Mine, Smash Hit). Pour ces 10, les valeurs données sont celles du seed, marquées « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » (UNCERTAIN) ; ajouts de mémoire marqués « connaissance du modèle (antérieure à mi-2026), UNCERTAIN », à reprendre dans un lot ultérieur.

---

## Perks vérifiées par WebSearch

### Distortion — Jeff Johansen
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : quand le tueur tenterait de lire votre aura, consomme 1 jeton → aura bloquée + griffures supprimées pendant 8/10/12 s — STRONG_SECONDARY (wiki.gg + fandom via résumé)
- **Valeurs / CD / conditions / limites** : 1 jeton au départ, max 2 ; +1 jeton par 15 s **de poursuite** (LIVE) ; ne se déclenche pas à l'état Dying (wiki). Historique : recharge 30 s → 15 s mais limitée à la poursuite (au lieu du terror radius) — patch attribué à 9.5.0 par le résumé (UNCERTAIN sur le numéro, la requête contenait « 9.5.0 »).
- **PTB 10.2.0** : UNCERTAIN (non citée dans les résumés du PTB lus [7][8])
- **Interactions, DR, anti-synergies** : consomme des jetons même sur des lectures d'aura « inutiles » (ex. perks d'aura passives du tueur) ; ne cache pas les griffures hors activation ; pas de DR (effet binaire, pas un modificateur cumulable — HYPOTHESIS).
- **Synergies** (HEURISTIC) : perks de furtivité (Lucky Break, Iron Will, Boon: Shadow Step) ; perks qui vous mettent en chase pour recharger.
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 1 · chase 1 · macro 2 · info 2 · anti-tunnel 1 · soin 0 · gen 1 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : contre tueurs à aura (Nurse's Calling, BBQ, Lethal Pursuer, Nowhere to Hide) → le déclenchement **vous informe** qu'un effet d'aura existe ; en fin de chase, masque les griffures pour casser la ligne.
- **Quand elle n'en produit pas** (HEURISTIC) : contre un tueur sans aucune lecture d'aura (0 déclenchement) ; jetons gâchés au début si Lethal Pursuer sans poursuite ensuite.
- **Écart avec le seed** : OK (1/2 jetons, 15 s de poursuite, 8/10/12 s) ; historique « buff 9.5.0 (15 s) » cohérent mais n'indique pas la restriction à la poursuite → IMPRÉCIS (mineur).
- **Sources** : [1][2][3]

### Reassurance — Rebecca Chambers
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : à ≤ 6 m d'un survivant accroché, bouton actif → pause du processus de sacrifice 20/25/30 s, y compris les skill checks de lutte — STRONG_SECONDARY
- **Valeurs / CD / conditions / limites** : une seule fois **par survivant et par instance de crochet** (wiki).
- **PTB 10.2.0** : UNCERTAIN (non citée dans les résumés lus)
- **Interactions, DR, anti-synergies** : pause de timer ≠ modificateur de vitesse → hors DR (HYPOTHESIS). Plusieurs Reassurance de survivants différents peuvent s'enchaîner sur le même crochet (déduit de « par survivant » — HYPOTHESIS).
- **Synergies** (HEURISTIC) : Kindred / Bond (savoir quand approcher), Deliverance/Borrowed Time pour la sortie du crochet, anti-camp basekit (la pause gagne du temps pendant que la jauge monte — HYPOTHESIS).
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 0 · macro 2 · info 0 · anti-tunnel 1 · soin 0 · gen 2 · endgame 3
- **Quand elle produit de la valeur** (HEURISTIC) : face-camping en fin de partie (portes ouvertes, dernier gen) → achète 20-30 s pour finir un gen ou organiser un sauvetage ; permet de s'approcher d'un crochet et repartir sans risquer un trade.
- **Quand elle n'en produit pas** (HEURISTIC) : tueur qui patrouille loin (le temps gagné n'est pas nécessaire) ; si l'approche à 6 m vous fait mettre à terre.
- **Écart avec le seed** : OK (« une fois par état de crochet » ≈ « par survivant et par instance de crochet », IMPRÉCIS très mineur).
- **Sources** : [4][5]

### We'll Make It — Générale
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : après avoir décroché un survivant, vous soignez les autres 100 % plus vite pendant 30/60/90 s — STRONG_SECONDARY
- **Valeurs / CD / conditions / limites** : +100 % vitesse de soin altruiste ; LIVE 30/60/90 s.
- **PTB 10.2.0** : durée 70/80/90 s (tier III inchangé) — STRONG_SECONDARY (plusieurs résumés concordants, **PTB**, non LIVE)
- **Interactions, DR, anti-synergies** : +100 % de vitesse de soin = modificateur de vitesse d'action → **probablement soumis aux DR 9.6.0** si cumulé à Botany / Circle of Healing / Desperate Measures (HYPOTHESIS : la liste exhaustive des modificateurs DR n'a pas été lue — cf. audit §2.1).
- **Synergies** (HEURISTIC) : Borrowed Time / Deliverance (décrochages propres), Kindred.
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 3 · gen 1 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : décrochage à distance de sécurité → soin du décroché en ~8 s au lieu de 16 s, la protection d'Endurance n'est pas « perdue » en soin long.
- **Quand elle n'en produit pas** (HEURISTIC) : tueur qui revient immédiatement sur le décroché (tunnel) ; en tier I (30 s) on n'arrive souvent pas jusqu'à un coin sûr avant expiration.
- **Écart avec le seed** : OK (LIVE 30/60/90 s, PTB 70/80/90 s correctement étiqueté).
- **Sources** : [6][7][8][9]

### Plot Twist — Nicolas Cage
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : blessé, accroupi et immobile → bouton actif = passer silencieusement à l'état Dying ; +25 % vitesse de récupération ; possibilité de se relever seul ; en se relevant : soigné et +50 % Haste 2/3/4 s — STRONG_SECONDARY
- **Valeurs / CD / conditions / limites** : désactivée après récupération (par tout moyen) ; se réactive une fois quand les portes sont alimentées.
- **PTB 10.2.0** : UNCERTAIN (non citée dans les résumés lus)
- **Interactions, DR, anti-synergies** : +25 % récupération cumulable avec Boon: Exponential / Unbreakable (DR probable — HYPOTHESIS) ; « pas de flaques de sang/gémissements » pendant l'état Dying = formulation du seed, non confirmée par la recherche (UNCERTAIN).
- **Synergies** (HEURISTIC) : Boon: Exponential (vitesse de relèvement), Distortion / Off the Record (furtivité), Resilience/Hope (Haste — DR si Haste identique : HYPOTHESIS).
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 1 · macro 1 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : blessé sans soigneur disponible → auto-soin complet sans médikit + burst de Haste ; en fin de chase blessé caché, le tueur perd la trace.
- **Quand elle n'en produit pas** (HEURISTIC) : tueur qui slug/patrouille (se mettre à terre = risque de pick-up) ; perte de temps de gen (~30 s au sol).
- **Écart avec le seed** : effet OK ; historique « buff de Plot Twist en 9.2.0 » → **NON VÉRIFIABLE** (seul un bugfix Animatronic trouvé dans les notes 9.2.X).
- **Sources** : [10][11][12]

### Shoulder the Burden — Taurie Cain
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : une fois par partie, hors dernier crochet, face à un survivant accroché : bouton actif = décroche et échange 1 état de crochet à son profit ; vous criez et êtes Exposed 60/50/40 s — STRONG_SECONDARY (voir CONFLICT-P24-01)
- **Valeurs / CD / conditions / limites** : Exposed appliqué même si le cri est supprimé (Calm Spirit, Hardened) ; état échangé indiqué par une pip jaune visible du tueur. Historique : PTB d'origine Exposed 30/25/20 s, doublé à la sortie (résumé).
- **PTB 10.2.0** : Broken 160/140/120 s au lieu d'Exposed + se **désactive pour tous les survivants** après usage (anti-chaîne en 4-man) — STRONG_SECONDARY (PTB)
- **Interactions, DR, anti-synergies** : l'échange est télégraphié au tueur (pip jaune) → il peut vous cibler Exposed ; anti-synergie avec vos propres perks de dernier crochet.
- **Synergies** (HEURISTIC) : Reassurance, Borrowed Time (décrochage protégé), Dead Hard/Off the Record contre le retour sur vous Exposed (HEURISTIC).
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 3 · chase 0 · macro 2 · info 0 · anti-tunnel 3 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : allié tunnelé à 2 crochets tôt en partie → vous encaissez l'état, l'équipe garde 4 joueurs.
- **Quand elle n'en produit pas** (HEURISTIC) : vous êtes déjà à 1 crochet ou le tueur est à portée (Exposed = mise à terre en 1 coup) ; en fin de partie où chaque crochet compte peu.
- **Écart avec le seed** : OK sur LIVE (Exposed 60/50/40 s) et PTB (Broken 160/140/120 s) ; IMPRÉCIS : omet la désactivation pour tous au PTB et l'Exposed indépendant du cri.
- **Sources** : [13][14][8][15]

### Boon: Circle of Healing — Mikaela Reid
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : totem béni, rayon 24 m : +50/75/100 % vitesse de soin altruiste **sans médikit** ; les auras des survivants blessés sont révélées aux autres survivants (formulation du résumé fandom) — STRONG_SECONDARY
- **Valeurs / CD / conditions / limites** : historique : 40/45/50 % (2023) puis 50/75/100 % (Dev Update 6.7.0, avril 2023 — résumé contradictoire sur la date, UNCERTAIN). Pas d'auto-soin.
- **PTB 10.2.0** : UNCERTAIN (non citée ; seul Boon: Illumination est cité parmi les boons)
- **Interactions, DR, anti-synergies** : cumul avec Botany / We'll Make It → DR probable (HYPOTHESIS) ; totem neutralisé par le tueur (snuff) ; Shattered Hope détruit le totem.
- **Synergies** (HEURISTIC) : autres boons sur le même totem (Shadow Step, Exponential, Steadfast) ; Botany, We'll Make It.
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 0 · macro 2 · info 1 · anti-tunnel 0 · soin 3 · gen 1 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : totem posé loin des gens de pression → station de soin rapide + info sur qui est blessé.
- **Quand elle n'en produit pas** (HEURISTIC) : tueur qui snuff systématiquement ; soins avec médikit (bonus inopérant).
- **Écart avec le seed** : IMPRÉCIS — le seed dit que « les blessés présents voient les auras des autres » ; le résumé wiki indique au contraire que **ce sont les auras des blessés** qui sont révélées aux autres survivants. Rayon 24 m non mentionné.
- **Sources** : [16][17]

### Boon: Shadow Step — Mikaela Reid
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : dans le rayon du boon, griffures supprimées et auras cachées au tueur ; effet persiste 2/3/4 s après la sortie — STRONG_SECONDARY
- **Valeurs / CD / conditions / limites** : rayon 24 m (standard des boons, via [19][20] — UNCERTAIN pour Shadow Step spécifiquement).
- **PTB 10.2.0** : UNCERTAIN
- **Interactions, DR, anti-synergies** : redondant avec Distortion à l'intérieur du rayon ; totem visible donc zone connue du tueur.
- **Synergies** (HEURISTIC) : Circle of Healing (zone de soin cachée), Plot Twist / Exponential.
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 2 · chase 1 · macro 2 · info 0 · anti-tunnel 1 · soin 1 · gen 1 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : contre tueurs à aura, et pour perdre le tueur en entrant dans la zone en fin de chase (griffures coupées).
- **Quand elle n'en produit pas** (HEURISTIC) : tueur qui snuff ; chase loin du totem.
- **Écart avec le seed** : OK.
- **Sources** : [18]

### Boon: Exponential — Jonah Vasquez
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : rayon 24 m : +90/95/100 % vitesse de récupération à l'état Dying et possibilité de se relever entièrement seul — STRONG_SECONDARY
- **Valeurs / CD / conditions / limites** : ~16 s de relèvement au tier III (résumé, UNCERTAIN).
- **PTB 10.2.0** : UNCERTAIN
- **Interactions, DR, anti-synergies** : cumul avec Plot Twist / Unbreakable → DR probable sur la vitesse de récupération (HYPOTHESIS).
- **Synergies** (HEURISTIC) : Plot Twist, Circle of Healing, Shadow Step.
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 2 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : contre le slug (tueurs à mise à terre rapide) → auto-relève sans coéquipier.
- **Quand elle n'en produit pas** (HEURISTIC) : tueur qui ramasse immédiatement ; totem loin des chases.
- **Écart avec le seed** : OK.
- **Sources** : [19]

### Boon: Steadfast — Aurora Stardotter
- **Statut** : LIVE 10.1.2a (ajoutée en 10.1.0, 25/08/2026)
- **Effet LIVE** : rayon 24 m : générateurs régressent 50 % plus lentement, réparation +8/9/10 % — STRONG_SECONDARY ; le résumé ajoute un effet d'aura (« Survivors see their auras while inside the Boon's range ») formulé de façon ambiguë → UNCERTAIN
- **Valeurs / CD / conditions / limites** : une seule instance de Steadfast active par survivant ; tous les boons sur le même totem.
- **PTB 10.2.0** : UNCERTAIN
- **Interactions, DR, anti-synergies** : +8/9/10 % réparation cumulé à d'autres bonus de réparation → DR probable (HYPOTHESIS) ; ralentissement de régression vs perks de régression du tueur : interaction non documentée.
- **Synergies** (HEURISTIC) : autres boons, gens groupés autour d'un totem (3-gen défensif).
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 2 · chase 0 · macro 2 · info 0 · anti-tunnel 0 · soin 0 · gen 2 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : totem proche d'un groupe de gens disputés → régression amortie, finition plus rapide.
- **Quand elle n'en produit pas** (HEURISTIC) : totem isolé ; tueur qui snuff.
- **Écart avec le seed** : OK sur les chiffres ; IMPRÉCIS : l'éventuel effet d'aura n'est pas mentionné (à confirmer).
- **Sources** : [20][21]

### Botany Knowledge — Claudette Morel
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : +30/40/50 % vitesse de soin — STRONG_SECONDARY
- **Valeurs / CD / conditions / limites** : malus d'efficacité du médikit (−20 %) retiré en 9.0.0 (résumé).
- **PTB 10.2.0** : UNCERTAIN (non citée)
- **Interactions, DR, anti-synergies** : cumul avec We'll Make It / CoH / Desperate Measures → DR probable (HYPOTHESIS).
- **Synergies** (HEURISTIC) : Self-Care / médikit, Resurgence, We'll Make It.
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 3 · gen 1 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : équipes qui se soignent beaucoup (retour rapide sur les gens) ; avec médikit sans pénalité depuis 9.0.0.
- **Quand elle n'en produit pas** (HEURISTIC) : contre tueurs anti-soin (Mangled, Sloppy) — le bonus reste mais le soin reste une perte de temps ; slot pris dans des builds déjà riches en soin.
- **Écart avec le seed** : OK.
- **Sources** : [22]

### Vigil — Quentin Smith
- **Statut** : LIVE 10.1.2a (nerfée en 10.1.1)
- **Effet LIVE** : vous et les survivants à 16 m récupérez de **Exhausted** 20/25/30 % plus vite — STRONG_SECONDARY (wiki + notes 10.1.1 via résumé ; audit phase 0 confirme 20/25/30 %)
- **Valeurs / CD / conditions / limites** : 10.1.0 : 30/35/40 % ; 10.1.1 : 20/25/30 %, **Exhausted uniquement** (intention BHVR) ; un bug laissait l'effet sur tous les statuts en 10.1.1, **corrigé en 10.1.2** (résumé, STRONG_SECONDARY). La persistance « 15 s après la sortie de zone » du seed n'a pas été vérifiée (UNCERTAIN).
- **PTB 10.2.0** : UNCERTAIN (non citée)
- **Interactions, DR, anti-synergies** : cumul de plusieurs Vigil → DR (modificateur identique — HYPOTHESIS forte vu la définition 9.6.0).
- **Synergies** (HEURISTIC) : perks d'Exhaustion (Sprint Burst, Lithe, Dead Hard, Overcome, Balanced Landing).
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : build à perk d'Exhaustion utilisée souvent (Sprint Burst) ; groupe proche.
- **Quand elle n'en produit pas** (HEURISTIC) : depuis 10.1.1 contre Broken/Hindered/Mangled/Blindness etc. → **plus aucun effet**.
- **Écart avec le seed** : **FAUX** — le seed liste 8 statuts et 30/35/40 % (valeur 10.1.0) ; LIVE = Exhausted seul, 20/25/30 %. « avant 44/55/66 % » : NON VÉRIFIABLE.
- **Sources** : [23][24][25][27]

### Wicked — Sable Ward
- **Statut** : LIVE 10.1.2a (version d'origine rétablie en 9.3.2 d'après l'audit phase 0)
- **Effet LIVE** : accroché au sous-sol, au 1er état de crochet, tentative d'auto-décrochage réussie à 100 % (pas au 2e état) ; après vous être décroché ou avoir été décroché, aura du tueur révélée 16/18/20 s — STRONG_SECONDARY
- **Valeurs / CD / conditions / limites** : auto-décrochage basekit restreint depuis 9.0.0 (audit) → Wicked est une des rares sources.
- **PTB 10.2.0** : UNCERTAIN
- **Interactions, DR, anti-synergies** : aucune valeur si le tueur n'utilise pas le sous-sol ; aura du tueur = info immédiate au décrochage.
- **Synergies** (HEURISTIC) : Deliverance/Slippery Meat (autres auto-décrochages), perks de sortie de crochet (Off the Record).
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 2 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : tueurs orientés sous-sol (Trapper, Hag, Agitation/Iron Grasp) ; l'aura post-décrochage aide à fuir la direction du tunnel.
- **Quand elle n'en produit pas** (HEURISTIC) : crochets hors sous-sol (majorité des parties) — l'effet d'aura reste le seul gain.
- **Écart avec le seed** : OK (« au premier crochet au sous-sol » ≈ 1er état de crochet ; aura 16/18/20 s).
- **Sources** : [26][27]

### Head On — Jane Romero (vérification par l'audit phase 0, pas de recherche dans ce lot)
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : après 3 s dans un casier, sortie rapide → étourdit le tueur 3 s s'il est à ≤ 2,5 m ; Exhausted 60/50/40 s — STRONG_SECONDARY (audit : wiki.gg Head On, condition « AFK crows » retirée en 9.0.0)
- **Valeurs / CD / conditions / limites** : voir ci-dessus.
- **PTB 10.2.0** : UNCERTAIN
- **Interactions, DR, anti-synergies** : partage l'Exhaustion avec les autres perks Exhausted ; tueur qui ouvre le casier depuis le côté / ne s'approche pas.
- **Synergies** (HEURISTIC) : Quick & Quiet (entrer silencieusement), Vigil, Deception.
- **Difficulté** (HEURISTIC) : 3
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 2 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : sauvetage d'un allié porté (stun = libération) ; tueur qui fouille un casier près d'un gen.
- **Quand elle n'en produit pas** (HEURISTIC) : tueurs à distance ; tueur qui ne s'approche pas du casier ou qui l'ouvre après un délai.
- **Écart avec le seed** : OK.
- **Sources** : [27]

---

## Perks NON vérifiées dans ce lot (quota de recherche épuisé)

Pour chacune : les valeurs sont **celles du seed**, mention « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) », confiance **UNCERTAIN** ; tout ajout de mémoire est marqué « connaissance du modèle (antérieure à mi-2026), UNCERTAIN ». Interactions, synergies, notes et « quand utile » = **HEURISTIC / EXPERT OPINION**. Aucune n'est citée dans les résumés du PTB 10.2.0 lus (ce qui ne prouve pas qu'elles sont non modifiées).

### Overcome — Jonah Vasquez
- **Statut** : LIVE 10.1.2a (présumé)
- **Effet LIVE** : blessé par un coup → le boost de vitesse du coup dure +2 s ; Exhausted 60/50/40 s — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN
- **Valeurs / CD / conditions / limites** : durée d'Exhausted à vérifier (connaissance du modèle (antérieure à mi-2026), UNCERTAIN : cohérente avec 60/50/40 s).
- **PTB 10.2.0** : UNCERTAIN
- **Interactions, DR, anti-synergies** : partage l'Exhaustion avec Sprint Burst / Dead Hard / Balanced Landing.
- **Synergies** (HEURISTIC) : Vigil, Resilience.
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 2 · macro 1 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : premier coup en terrain ouvert → distance suffisante pour atteindre la tuile suivante.
- **Quand elle n'en produit pas** (HEURISTIC) : contre tueurs à attaque spéciale sans boost utile (ex. à distance) ou si vous êtes Exhausted.
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune (à faire)

### Hope — Générale
- **Statut** : LIVE 10.1.2a (présumé)
- **Effet LIVE** : portes alimentées (tous les gens finis) → +3/4/5 % Haste jusqu'à la fin de la partie (valeur seed, nerf attribué à 9.2.0) — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN
- **Valeurs / CD / conditions / limites** : valeurs historiques 5/6/7 % (connaissance du modèle (antérieure à mi-2026), UNCERTAIN) laissent penser que le nerf 9.2.0 est plausible, non confirmé.
- **PTB 10.2.0** : UNCERTAIN
- **Interactions, DR, anti-synergies** : Haste cumulée avec Resilience/autres Haste → DR probable (HYPOTHESIS) ; perdue en cas de No Way Out/Blood Warden n'est pas documenté.
- **Synergies** (HEURISTIC) : Adrenaline, Wake Up!.
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 2
- **Quand elle produit de la valeur** (HEURISTIC) : chases de fin de partie en terrain ouvert.
- **Quand elle n'en produit pas** (HEURISTIC) : parties perdues avant les portes (≈ 0 valeur pendant 90 % de la partie).
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune

### Fixated — Nancy Wheeler
- **Statut** : LIVE 10.1.2a (présumé)
- **Effet LIVE** : +10/15/20 % vitesse de marche ; vous voyez vos propres griffures — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN (le seed dit « Haste » ; la nature exacte du bonus — Haste ou vitesse de marche — et une éventuelle condition « en bonne santé » sont à vérifier)
- **Valeurs / CD / conditions / limites** : audit phase 0 confirme seulement « griffures visibles par le survivant avec Fixated » [27].
- **PTB 10.2.0** : UNCERTAIN
- **Interactions, DR, anti-synergies** : si Haste, DR avec d'autres Haste (HYPOTHESIS).
- **Synergies** (HEURISTIC) : Iron Will, Distortion (furtivité).
- **Difficulté** (HEURISTIC) : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : rotations entre gens en marchant (silencieux, sans griffures) ; apprentissage des griffures.
- **Quand elle n'en produit pas** (HEURISTIC) : en chase (vous courez).
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : [27] (partiel)

### Dramaturgy — Nicolas Cage
- **Statut** : LIVE 10.1.2a (présumé)
- **Effet LIVE** : en bonne santé et en course, bouton actif → +25 % Haste 2 s puis un effet aléatoire (Haste supplémentaire, Exposed 12 s, objet, cri) ; Exhausted 60/50/40 s — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN
- **Valeurs / CD / conditions / limites** : à vérifier (nature de l'objet donné, durée d'Exposed).
- **PTB 10.2.0** : UNCERTAIN
- **Interactions, DR, anti-synergies** : Exposed aléatoire = risque de mise à terre en 1 coup ; partage l'Exhaustion.
- **Synergies** (HEURISTIC) : Vigil, Plot Twist (fun).
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : burst de sortie en bonne santé loin du tueur (tirage sans risque).
- **Quand elle n'en produit pas** (HEURISTIC) : en chase proche (Exposed possible).
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune

### Flashbang — Leon S. Kennedy
- **Statut** : LIVE 10.1.2a (présumé)
- **Effet LIVE** : après 50/45/40 % de réparation cumulée, fabrique une grenade aveuglante dans un casier (1 charge) — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Interactions, DR, anti-synergies** : Lightborn du tueur annule ; aveuglement = sauvetage de porté / palette.
- **Synergies** (HEURISTIC) : Blast Mine, Head On (builds « save »).
- **Difficulté** (HEURISTIC) : 3
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 2 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : sauver un allié porté ; bloquer un pick-up.
- **Quand elle n'en produit pas** (HEURISTIC) : tueur avec Lightborn, ou si le temps passé au casier coûte un gen.
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune

### Balanced Landing — Nea Karlsson
- **Statut** : LIVE 10.1.2a (présumé)
- **Effet LIVE** : chute (hauteur minimale indiquée à 1,25 m par le seed) → +50 % Haste 3 s ; étourdissement de chute −75 % et silencieux ; Exhausted 60/50/40 s — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Interactions, DR, anti-synergies** : dépend de la carte (hauteurs) ; partage l'Exhaustion.
- **Synergies** (HEURISTIC) : Vigil ; cartes à étages.
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 2 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : maps avec étages/bâtiments principaux (Coldwind Farm silo, etc.).
- **Quand elle n'en produit pas** (HEURISTIC) : maps plates.
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune

### Quick & Quiet — Meg Thomas
- **Statut** : LIVE 10.1.2a (présumé)
- **Effet LIVE** : vault ou entrée rapide en casier sans notification bruyante — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN
- **Valeurs / CD / conditions / limites** : seed = recharge 25/20/15 s ; connaissance du modèle (antérieure à mi-2026), UNCERTAIN : 30/25/20 s, à vérifier en priorité.
- **PTB 10.2.0** : UNCERTAIN
- **Interactions, DR, anti-synergies** : sans effet sur le bruit de palette.
- **Synergies** (HEURISTIC) : Head On, Lithe (vault silencieux + boost).
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : casser la ligne de vue puis vault/casier sans révéler la position.
- **Quand elle n'en produit pas** (HEURISTIC) : en chase avec vue directe.
- **Écart avec le seed** : NON VÉRIFIABLE (recharge suspecte)
- **Sources** : aucune

### Deception — Élodie Rakoto
- **Statut** : LIVE 10.1.2a (présumé)
- **Effet LIVE** : en sprint, interaction avec un casier → pas d'entrée mais fausse notification bruyante ; griffures supprimées quelques secondes — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN
- **Valeurs / CD / conditions / limites** : seed = griffures 5 s, recharge 25/20/15 s ; connaissance du modèle (antérieure à mi-2026), UNCERTAIN : plutôt 3 s et 60/50/40 s, à vérifier en priorité.
- **PTB 10.2.0** : UNCERTAIN
- **Interactions, DR, anti-synergies** : les flaques de sang (blessé) restent — à vérifier.
- **Synergies** (HEURISTIC) : Head On (mind game casier), Iron Will.
- **Difficulté** (HEURISTIC) : 3
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : après un break de ligne de vue près de casiers.
- **Quand elle n'en produit pas** (HEURISTIC) : tueur qui vous voit.
- **Écart avec le seed** : NON VÉRIFIABLE (valeurs suspectes)
- **Sources** : aucune

### Blast Mine — Jill Valentine
- **Statut** : LIVE 10.1.2a (présumé)
- **Effet LIVE** : après X % de réparation, piège un générateur (visible des survivants) ; si le tueur le frappe : explosion, étourdissement + aveuglement — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN
- **Valeurs / CD / conditions / limites** : seed = 40 % de réparation, piège 100/110/120 s, stun 4 s ; valeurs à vérifier (seuil et durée de stun non confirmés).
- **PTB 10.2.0** : UNCERTAIN
- **Interactions, DR, anti-synergies** : Lightborn annule l'aveuglement (pas le stun — HYPOTHESIS).
- **Synergies** (HEURISTIC) : Flashbang, perks de gen.
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur** (HEURISTIC) : tueurs qui kickent tous les gens ; l'explosion informe de la position du tueur.
- **Quand elle n'en produit pas** (HEURISTIC) : tueurs qui ne kickent pas.
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune

### Smash Hit — Lee Yun-jin
- **Statut** : LIVE 10.1.2a (présumé)
- **Effet LIVE** : étourdir le tueur avec une palette → +50 % Haste 4 s ; Exhausted 30/25/20 s — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; cohérent avec la connaissance du modèle (antérieure à mi-2026), UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Interactions, DR, anti-synergies** : partage l'Exhaustion ; tueurs immunisés aux stuns de palette (ou pouvoirs) → aucune valeur.
- **Synergies** (HEURISTIC) : Vigil, Poised.
- **Difficulté** (HEURISTIC) : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 2 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** (HEURISTIC) : tueurs qui chassent près des palettes (M1) → stun + distance.
- **Quand elle n'en produit pas** (HEURISTIC) : tueurs qui évitent les palettes (Nurse, Blight en vol).
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| P24-01 | Distortion : 1 jeton au départ, max 2, +1 / 15 s de poursuite, 8/10/12 s | [1][2] | LIVE | STRONG_SECONDARY |
| P24-02 | Distortion : recharge 30 → 15 s et limitée à la poursuite | [3] | 9.5.0 ? | UNCERTAIN (patch) |
| P24-03 | Reassurance : pause 20/25/30 s à 6 m, une fois par survivant et par instance de crochet | [4][5] | LIVE | STRONG_SECONDARY |
| P24-04 | We'll Make It : +100 % soin 30/60/90 s | [6][7] | LIVE | STRONG_SECONDARY |
| P24-05 | We'll Make It : 70/80/90 s | [7][8][9] | PTB 10.2.0 | STRONG_SECONDARY |
| P24-06 | Plot Twist : +25 % récupération, +50 % Haste 2/3/4 s, réactivation aux portes alimentées | [10][11] | LIVE | STRONG_SECONDARY |
| P24-07 | Shoulder the Burden : Exposed 60/50/40 s | [13][14] | LIVE | UNCERTAIN (CONFLICT-P24-01) |
| P24-08 | Shoulder the Burden : Broken 160/140/120 s + désactivation pour tous | [8][15] | PTB 10.2.0 | STRONG_SECONDARY |
| P24-09 | Circle of Healing : +50/75/100 % soin altruiste sans médikit, 24 m | [16][17] | LIVE | STRONG_SECONDARY |
| P24-10 | Shadow Step : persistance 2/3/4 s | [18] | LIVE | STRONG_SECONDARY |
| P24-11 | Exponential : +90/95/100 % récupération, 24 m | [19] | LIVE | STRONG_SECONDARY |
| P24-12 | Steadfast : régression −50 %, réparation +8/9/10 %, 24 m | [20][21] | LIVE (10.1.0) | STRONG_SECONDARY |
| P24-13 | Botany Knowledge : +30/40/50 % soin, sans malus médikit depuis 9.0.0 | [22] | LIVE | STRONG_SECONDARY |
| P24-14 | Vigil : Exhausted seul, 20/25/30 %, 16 m | [23][24][27] | LIVE (10.1.1, fix 10.1.2) | STRONG_SECONDARY |
| P24-15 | Wicked : 100 % auto-décrochage au 1er état au sous-sol ; aura du tueur 16/18/20 s | [26] | LIVE | STRONG_SECONDARY |
| P24-16 | Head On : stun 3 s, ≤ 2,5 m, 3 s dans le casier, Exhausted 60/50/40 s | [27] | LIVE | STRONG_SECONDARY |

## Conflits

#### CONFLICT-P24-01 : Shoulder the Burden — Exposed (LIVE) ou Broken ?
- Source A : résumé de wiki.gg / fandom / NightLight (requête 1) → « scream, become injured and suffer from Broken 160/140/120 s … deactivated for all Survivors », mais la même réponse cite une note wiki sur l'**Exposed** indépendant du cri. [13]
- Source B : résumé (requête 2, mêmes domaines) → Exposed 60/50/40 s, doublé depuis le PTB d'origine (30/25/20 s). [13][14]
- Hypothèse : la page wiki a été mise à jour avec les valeurs du PTB 10.2.0 (pratique courante) ou le résumé mélange PTB et LIVE ; timesaver [8] présente explicitement Broken comme **changement du PTB 10.2.0**.
- Résolution : LIVE 10.1.2a = Exposed 60/50/40 s (le PTB n'est pas LIVE et [8] le présente comme un changement) — confiance STRONG_SECONDARY ; à reconfirmer à la sortie de 10.2.0.

#### CONFLICT-P24-02 : Boon: Circle of Healing — qui voit quelles auras ?
- Source A : seed → « les blessés présents voient les auras des autres ».
- Source B : résumé fandom → « If a Survivor is injured, their Aura is revealed to all other Survivors ». [16]
- Hypothèse : le seed a inversé l'effet.
- Résolution : UNRESOLVED (un seul résumé ; la page n'a pas été lue).

#### CONFLICT-P24-03 : Circle of Healing — date du passage 40/45/50 % → 50/75/100 %
- Source A : résumé → « March 2023 » 40/45/50 %, puis « April Developer Update (December 2023) » 50/75/100 % (contradiction interne avril/décembre). [17]
- Résolution : UNRESOLVED (sans impact LIVE : la valeur actuelle 50/75/100 % est concordante).

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Vigil | 8 statuts, 30/35/40 %, « nerf 10.1.0 : avant 44/55/66 % » | Exhausted seul, 20/25/30 % depuis 10.1.1 (bug de 10.1.1 corrigé en 10.1.2) | **FAUX** |
| Historique 10.1.0 (p. 32) | « Vigil 30/35/40 % » comme état final | valeur 10.1.0 exacte mais remplacée en 10.1.1 | IMPRÉCIS (obsolète) |
| Boon: Circle of Healing | « les blessés présents voient les auras des autres » | les auras des blessés sont révélées aux autres (résumé) | IMPRÉCIS (probable inversion) |
| Shoulder the Burden (PTB) | Broken 160/140/120 s à la place d'Exposed | + désactivation pour tous les survivants après usage | IMPRÉCIS (omission) |
| Historique 9.2.0 | « buff de Plot Twist » | seul un bugfix (Animatronic) trouvé | NON VÉRIFIABLE |
| Distortion (histo 9.5.0) | « buff de Distortion (15 s) » | 30 → 15 s **mais** recharge limitée à la poursuite | IMPRÉCIS (mineur) |
| Boon: Steadfast | régression −50 %, +8/9/10 % | concordant ; effet d'aura possible non mentionné | OK / IMPRÉCIS |
| Distortion, Reassurance, We'll Make It (LIVE + PTB), Plot Twist (effet), Shoulder the Burden (LIVE), Shadow Step, Exponential, Botany, Wicked, Head On | valeurs du seed | concordantes | OK |
| Quick & Quiet | recharge 25/20/15 s | seed, NON RE-VÉRIFIÉ (quota) ; connaissance du modèle (antérieure à mi-2026), UNCERTAIN : 30/25/20 s | NON VÉRIFIABLE (suspect) |
| Deception | 5 s sans griffures, recharge 25/20/15 s | seed, NON RE-VÉRIFIÉ (quota) ; connaissance du modèle (antérieure à mi-2026), UNCERTAIN : 3 s / 60/50/40 s | NON VÉRIFIABLE (suspect) |
| Overcome, Hope, Fixated, Dramaturgy, Flashbang, Balanced Landing, Blast Mine, Smash Hit | valeurs du seed | seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) | NON VÉRIFIABLE |

## Questions ouvertes

1. Vérifier en priorité **Quick & Quiet** et **Deception** (recharges et durée sans griffures du seed suspectes).
2. Vérifier **Hope** (nerf 9.2.0 à 3/4/5 %, durée « jusqu'à la fin ») et **Blast Mine** (seuil 40 %, stun 4 s).
3. **Fixated** : bonus = Haste ou vitesse de marche ? condition de santé ?
4. **Vigil** : persistance après sortie de zone (15 s ?) et valeur avant 10.1.0 (44/55/66 % ?).
5. **Circle of Healing** : sens exact de l'effet d'aura (CONFLICT-P24-02).
6. **Boon: Steadfast** : existe-t-il un effet d'aura ?
7. **PTB 10.2.0** : lire la liste complète des 58 perks (timesaver [8] / KB BHVR 559) pour confirmer qu'aucune des 21 autres perks de la page n'est modifiée.
8. Liste officielle des modificateurs soumis aux DR 9.6.0 (manuel en jeu) pour trancher les HYPOTHESIS sur soins/récupération/Haste.

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
