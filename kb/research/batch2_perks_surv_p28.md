# Lot 2 — Perks survivant, page 28 du guide seed (ch3_survperks.txt l. 651-760)

**Couverture : 25/25 perks re-vérifiées sur page wiki complète (27/09/2026) ; dont 18 confirmées par note officielle** (Still Sight, Exultation, Moment of Glory, Clean Break, Do No Harm, Last Stand, Teamwork: Throw Down, One-Two-Three-Four!, Ghost Notes, Bada Bada Boom, Teamwork: Full Circuit, We See You, Teamwork: Soft-Spoken, A Place For Us, Flow State, Fruits of Your Labor, Streetwise, Boon: Illumination).

- Référence : **LIVE 10.1.2a** (17/09/2026). **PTB 10.2.0 non LIVE.** Travail du 27/09/2026.
- Méthode : lot 2 par WebSearch (résumés) ; **re-vérification lot 12a (27/09/2026)** sur les pages wiki complètes (API MediaWiki, `kb/sources/wiki_perks_digest.md` [47]) et les notes officielles BHVR lues en local (`kb/sources/patches/official_*.txt`). Confiance : STRONG_SECONDARY (page complète) ; VERIFIED_MULTI_SOURCE si une note officielle 9.x/10.x concorde ; VERIFIED_PRIMARY si la note officielle est la seule base explicite.
- **Historique** : au lot 2, le quota WebSearch avait été épuisé après 19 perks (Lend a Hand → Boon: Illumination et deux PTB restés UNCERTAIN) ; tout est re-vérifié au lot 12a. PTB 10.2.0 : la note 559 a été lue en entier ; seules Do No Harm, Flow State et Boon: Illumination sont modifiées sur cette page.
- Notes « Valeur » = **HEURISTIC** (0-3). Difficulté 1 facile – 3 exigeante (HEURISTIC).
- Périmètre : 25 perks.

---

### Bardic Inspiration — Aestri Yazar & Baermar Uraz
- **Statut** : LIVE 10.1.2a (ajoutée 8.0.0, D&D, juin 2024).
- **Effet LIVE** : immobile, bouton Active Ability → Performance jusqu'à 15 s ; les autres survivants à 16 m sont « empowered » pendant 90 s selon un d20 — STRONG_SECONDARY (page complète [1] ; aucun changement 8.x-10.x) [2]
- **Valeurs / CD / conditions / limites** : d20 = 1 : vous criez, rien ; 2-10 : +1 % ; 11-19 : +2 % ; 20 : +3 % de progression par **Basic** skill check réussi. CD 110/100/90 s après fin **ou annulation** de la Performance [1].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions, DR, anti-synergies** : le cri sur un 1 révèle la position (notification de bruit). Les Basic skill checks : un Great donne déjà son propre bonus ; l'interaction exacte Great + Bardic non vérifiée. DR 9.6.0 : bonus de progression de skill check possiblement concerné si cumulé avec d'autres sources identiques — HYPOTHESIS.
- **Synergies** : One-Two-Three-Four! (plus de skill checks = plus de bonus), Teamwork: Full Circuit, groupes sur gen (SWF).
- **Difficulté** : 2 (15 s immobile, placement).
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 2 · endgame 0
- **Quand elle produit de la valeur** : SWF qui se regroupe sur 2 gens voisins en début de partie, killer loin (pas de pression immédiate). 
- **Quand elle n'en produit pas** : SoloQ dispersée ; killer à forte pression/détection (15 s immobile = gen non réparé ; un 1 crie).
- **Écart avec le seed** : OK (« 0 à +3 % » = 1 à 3 % plus le cas nul).
- **Sources** : [1][2][40]

### Mirrored Illusion — Aestri Yazar & Baermar Uraz
- **Statut** : LIVE 10.1.2a (8.0.0).
- **Effet LIVE** : après 20 % de réparation cumulée, Active Ability près d'un Chest, Exit Gate, Generator ou Totem → Static Illusion de vous pendant 40/50/60 s ; se désactive après usage — STRONG_SECONDARY (page complète [3] ; 8.2.0 : seuil 50 → 20 %, durée 100/110/120 → 40/50/60 s ; bug d'illusions « placeholder » corrigé en 9.6.0 [36])
- **Valeurs / CD / conditions / limites** : se **désactive après usage** (réactivation après nouveaux 20 % : non précisé par la page complète → UNCERTAIN). L'illusion **reste visible** quand le killer ne voit plus les survivants (Spirit en Phase-Walk, Dark Lord en Bat Form) → trahit la ruse [3].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions, DR, anti-synergies** : aucune DR pertinente. Anti-synergie : killers à Phase-Walk / Bat Form (cf. ci-dessus).
- **Synergies** : Distortion / Lucky Break (se cacher pendant que l'illusion attire), Red Herring (leurres).
- **Difficulté** : 2.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 1
- **Produit de la valeur** : sur un killer qui patrouille à vue (détourne quelques secondes près d'une porte ou d'un gen).
- **N'en produit pas** : killers expérimentés, ou pouvoirs qui révèlent l'illusion ; usage unique.
- **Écart avec le seed** : IMPRÉCIS (« interrupteur » = Exit Gate ; le seed omet la désactivation après usage).
- **Sources** : [3][36][40]

### Still Sight — Aestri Yazar & Baermar Uraz
- **Statut** : LIVE 10.1.2a (8.0.0).
- **Effet LIVE** : après 4/3/2 s immobile, voit les auras du Killer, des Chests et des Generators à 24 m jusqu'à ce que vous bougiez — VERIFIED_MULTI_SOURCE (page complète [4] + note 9.1.0 « Decreased the time it takes to activate to 4/3/2 seconds (was 6/5/4) » [30])
- **Valeurs / conditions** : ne s'active **pas** si vous interagissez (gen, soin d'un autre…) ; s'active quand un autre survivant vous soigne [4].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions, DR** : aura du killer temporisée ? (durée « tant que immobile ») — interaction avec Eyes of Belmont non documentée. Pas de DR.
- **Synergies** : Open-Handed (portée +), jeu furtif (attendre caché le passage du killer).
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 1 · gen 0 · endgame 0
- **Produit de la valeur** : se faire soigner (on voit le killer arriver) ; attendre caché pour choisir le moment de repartir.
- **N'en produit pas** : en réparation (interaction = inactif) : c'est la limite majeure.
- **Écart avec le seed** : OK [4][30]. (Bug connu 10.1.0 : Still Sight inactivable après un sauvetage de l'Exile de The Judgment, corrigé en 10.1.1 [38][39].)
- **Sources** : [4][30][38][39][40]

### Specialist — Lara Croft
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : +1 token par Chest ouvert ou fouillé (max 6). Un Great de réparation consomme tous les tokens : réduit de façon permanente les charges requises de ce gen de 2/3/4 par token, **max 12/18/24 charges** — STRONG_SECONDARY (page complète [5] ; aucun changement 8.x-10.x)
- **Valeurs** : 90 charges par gen (référence classique, non re-vérifiée ici) → max ≈ 13/20/27 % d'un gen — HYPOTHESIS (dépend de la valeur de charges LIVE).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions** : on peut « garder » les tokens en ne faisant que des Good sur les gens où on ne veut pas les consommer [5]. Pas de DR (réduction de charges, pas un modificateur de vitesse).
- **Synergies** : Appraisal, Plunderer's Instinct, Streetwise, Hyperfocus/Stake Out (Greats).
- **Difficulté** : 2 (6 coffres = temps).
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 2 · endgame 1
- **Produit de la valeur** : builds coffres (items + gens) ; sauver les tokens pour finir un gen critique d'un coup.
- **N'en produit pas** : peu de coffres, killer à forte pression (le temps passé en coffres coûte plus qu'il ne rapporte).
- **Écart avec le seed** : IMPRÉCIS (omet le plafond 12/18/24 charges).
- **Sources** : [5][40]

### Exultation — Trevor Belmont
- **Statut** : LIVE 10.1.2a (8.2.0, Castlevania).
- **Effet LIVE** : en tenant un objet, stun du tueur à la palette → l'objet est rechargé de +75 % et monte à la rareté suivante ; CD 30/25/20 s ; **l'objet amélioré est conservé** si vous vous échappez avec (depuis 8.2.1) — VERIFIED_MULTI_SOURCE (page complète [6] + note 9.0.0 « 75% (was 25%) », « 30/25/20 seconds (was 40/35/30) » [29]). **Correction** : la mention « rareté d'origine rétablie en fin de trial » du lot 2 était fausse (comportement antérieur à 8.2.1).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions** : nécessite un objet tenu. Pas de DR.
- **Synergies** : Streetwise, Specialist (coffres), flashlight/toolbox + palettes fortes.
- **Difficulté** : 2.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Produit de la valeur** : chases longues sur maps riches en palettes, avec medkit/toolbox à recharger.
- **N'en produit pas** : killers anti-stun (Blight, Nurse), sans objet.
- **Écart avec le seed** : OK [6][29].
- **Sources** : [6][29][35][40]

### Eyes of Belmont — Trevor Belmont
- **Statut** : LIVE 10.1.2a (8.2.0).
- **Effet LIVE** : gen terminé → aura du Killer 1/2/3 s ; toutes les révélations **temporisées** de l'aura du killer pour vous +2 s ; bénéficie de son propre effet (→ 3/4/5 s effectifs) — STRONG_SECONDARY (page complète [48] ; aucun changement 8.x-10.x)
- **Limites** : sans effet sur les auras non temporisées (Kindred, Wiretap, add-on Blood Amber) [7] — précision du résumé de recherche, non reprise dans la description complète (« all instances ») : STRONG_SECONDARY à confirmer.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions** : pas de DR documentée (durée, pas vitesse).
- **Synergies** : Alert, Teamwork: Throw Down (aura du killer 6/8/10 s → +2 s pour vous, HYPOTHESIS), Still Sight (HYPOTHESIS : aura non temporisée), Open-Handed (portée seulement).
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 0 · endgame 1
- **Produit de la valeur** : builds d'info empilant des auras temporisées (Alert, Throw Down).
- **N'en produit pas** : seul (quelques secondes par gen).
- **Écart avec le seed** : IMPRÉCIS (omet l'auto-application et l'exclusion Kindred/Wiretap).
- **Sources** : [7][40][48]

### Moment of Glory — Trevor Belmont
- **Statut** : LIVE 10.1.2a ; buffée en 10.1.0 (2 coffres → **1 coffre**).
- **Effet LIVE** : après 1 Chest ouvert/fouillé : quand vous devenez blessé (sans être déjà Broken) → Broken ; après 80/70/60 s, si pas à terre, soigné instantanément — VERIFIED_MULTI_SOURCE (page complète [8] + note officielle 10.1.0 « (was previously 2 chests) » [38]) [9][28]
- **Limites** : inactif si déjà Broken ; se désactive après vous avoir soigné ; l'effet est **annulé si vous passez en Dying** avant la fin du minuteur — comportement prévu d'après la page complète [8] (l'ancienne mention de « bug 8.6.0 » [9] ne vise pas ce comportement voulu).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions** : Broken empêche les soins d'équipe pendant la durée ; anti-synergie avec perks de soin reçu. Anti-synergie avec Clean Break (même logique Broken).
- **Synergies** : Plunderer's Instinct, Resilience (jouer blessé), Streetwise.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 2 · gen 1 · endgame 0
- **Produit de la valeur** : SoloQ sans soigneur ; permet de rester sur gen au lieu de chercher un soin.
- **N'en produit pas** : si remis au sol avant le timer ; killers Broken/Deep Wound fréquents.
- **Écart avec le seed** : OK (seed conforme au 10.1.0).
- **Sources** : [8][9][28][38][40]

### Clean Break — Taurie Cain
- **Statut** : LIVE 10.1.2a ; valeurs 75/60/45 s depuis 10.1.0 (audit phase 0).
- **Effet LIVE** : après avoir soigné un autre survivant (action complète), Active Ability pendant qu'un allié vous soigne → Broken, puis soigné d'1 état de santé après 75/60/45 s — VERIFIED_MULTI_SOURCE (page complète [10] + note officielle 10.1.0 « (was 80/70/60 seconds) » [38]) [28]
- **Limites** : annulé si vous passez en Dying ; inactif si déjà Broken ; se désactive après le soin [10].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions** : l'allié arrête de vous soigner (gain de temps d'équipe). Anti-synergie : Moment of Glory.
- **Synergies** : Botany Knowledge / We'll Make It (soigner d'abord), Resilience.
- **Difficulté** : 2 (conditions en chaîne).
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Produit de la valeur** : libérer le soigneur rapidement (il retourne sur gen).
- **N'en produit pas** : si personne ne vous soigne (SoloQ) ; perk souvent redondante avec un medkit.
- **Écart avec le seed** : OK.
- **Sources** : [10][28][38][40]

### Do No Harm — Orela Rose
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : en soignant un autre survivant : +30/40/50 % de vitesse de soin altruiste **par Hook Stage** du soigné (max 60/80/100 %) ; les Great skill checks de soin donnent **+3 % de progression, indépendamment des Hook Stages** ; **pas** de bonus de chance de skill check — VERIFIED_MULTI_SOURCE. **LIVE reconstruite** : la description « current » du wiki [11] affiche déjà la version PTB (+3 % par Hook Stage max +6 %, +5 % de chance de skill check) ; la note 559 précise que le bonus Great « was separate from the Hook State » et que la chance de skill check est « (NEW) » [40]. **Correction** : la fiche du lot 2 donnait « +3 % par Hook Stage (max +6 %) » comme LIVE — c'est la valeur PTB.
- **PTB 10.2.0** (NON LIVE) : +30/40/50 % par Hook State (inchangé) ; bonus Great +3 % **par Hook State** (max +6 % selon le wiki) ; **+5 % de chance de skill check** (par Hook State selon la note, plafonné à +5 % selon le wiki) — VERIFIED_MULTI_SOURCE (wiki [11] + note 559 [40]) [12][13].
- **Interactions, DR** : DR 9.6.0 probable avec d'autres bonus de vitesse de soin (Botany, Flow State, medkit ? add-ons exclus) — HYPOTHESIS ; au LIVE, la seconde source identique n'apporterait que 50 %.
- **Synergies** : Empathy/Empathic Connection (trouver l'allié), Aftercare, builds skill checks.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 3 · gen 0 · endgame 0
- **Produit de la valeur** : soigner l'allié en 2e hook (le plus exposé, souvent tunnelé).
- **N'en produit pas** : en début de partie (0 Hook Stage = 0 bonus) ; sur soi-même.
- **Écart avec le seed** : LIVE **OK** (« 30/40/50 % par état de crochet, avec un petit bonus sur les greats » = +3 % fixe) [40] ; PTB IMPRÉCIS (« ajustée » : ne dit pas quoi — bonus Great indexé sur les Hook States + chance de skill check).
- **Sources** : [11][12][13][37][40]

### Last Stand — Michonne Grimes
- **Statut** : LIVE 10.1.2a (9.1.0). Désactivée après la sortie de 9.1.0, réactivée en 9.1.1 [31] puis de nouveau en 9.1.3 [32] (HISTORICAL) — CONFLICT-2-P28-02 résolu.
- **Effet LIVE** : après **120/105/90 s** dans le Terror Radius sans être poursuivi, s'active ; un Rushed Vault stun le killer 3 s s'il est à ≤ 2,5 m de la fenêtre ; **désactivée pour le reste du trial** après usage — VERIFIED_MULTI_SOURCE (page complète [14] + note 9.1.0 : 120/105/90 s « (was 80/70/60 seconds) » au PTB, stun 3 s, 2,5 m [30]). Le saut doit se faire **vers** le tueur ou en lui tombant dessus (correctif 9.1.0 [30]) ; fonctionne aussi sur les sauts rapides de palette (correctifs 9.1.0 / 9.1.3 [30][32]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions** : l'état « activé » est visible ? (non documenté). Rushed vault → notification de bruit.
- **Synergies** : Windows of Opportunity (trouver les fenêtres), Resilience (vault plus rapide), Lithe (rushed vault déjà prévu) — HEURISTIC.
- **Difficulté** : 3 (remplir la condition sans chase + placement précis).
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 2 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : protéger un allié ou casser une chase longue une fois ; killers qui suivent au vault.
- **N'en produit pas** : Nurse/Blight/killers à distance ; si vous êtes chassé tôt (condition jamais remplie).
- **Écart avec le seed** : IMPRÉCIS (« environ 90 à 120 s… valeurs différentes selon les sources » → valeurs précises 120/105/90 s).
- **Sources** : [14][15][30][31][32][40]

### Teamwork: Throw Down — Michonne Grimes
- **Statut** : LIVE 10.1.2a (9.1.0).
- **Effet LIVE** : quand vous aveuglez le killer (tous moyens) ou le stun avec une palette : les **autres** survivants **blessés** à 24 m gagnent Endurance 6/8/10 s — VERIFIED_MULTI_SOURCE (page complète [16] + note 9.1.0 [30]) ; et voient l'aura du killer pendant la même durée — VERIFIED_PRIMARY (note 9.1.0 « gain Endurance and see the Killer's aura for 6/8/10 seconds » [30], résumés [17]) mais **absent de la description complète du wiki** [16] → CONFLICT-2-P28-03.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions** : Endurance → Deep Wound. Le seed classe Endurance « Soul Guard, Made for This » : cumul d'Endurance = pas de cumul de durée (HYPOTHESIS). Protections d'unhook 10.1.0 déjà Endurance 10 s.
- **Synergies** : Flashlight/Flashbang, Blast Mine ; Head On ne déclenche pas (stun hors palette, HYPOTHESIS).
- **Difficulté** : 2.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 1 · macro 0 · info 1 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : sauvetage de chase d'un allié blessé proche (palette/flash).
- **N'en produit pas** : si aucun allié blessé à 24 m (cas fréquent).
- **Écart avec le seed** : OK (conforme à la note 9.1.0 [30]).
- **Sources** : [16][17][30][40]

### One-Two-Three-Four! — Vee Boonyasak
- **Statut** : LIVE 10.1.2a (9.2.0, 23/09/2025).
- **Effet LIVE** : Performance jusqu'à 15 s (skill checks continus pendant la Performance) ; survivants à 16 m empowered : +20 % de chance de skill checks en soin et réparation pendant 90 s ; CD 110/100/90 s (après fin ou annulation) — VERIFIED_MULTI_SOURCE (page complète [18] + note 9.2.0 [33])
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions, DR** : 9.6.0 : « positive skill check chance modifiers » ne subissent les DR qu'au sein d'un même rôle ; la note cite ONE-TWO-THREE-FOUR! comme exemple (elle réduisait Unnerving Presence au PTB 9.6.0) [36] → cumul avec d'autres bonus survivants de chance de skill check soumis à DR (calcul exact : HYPOTHESIS).
- **Synergies** : Bardic Inspiration (même mécanique Performance), Hyperfocus, Stake Out, Full Circuit.
- **Difficulté** : 2.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Produit de la valeur** : équipes skill-check (Hyperfocus, Stake Out) groupées.
- **N'en produit pas** : seule, sans perk exploitant les skill checks (plus de checks ≠ plus de vitesse).
- **Écart avec le seed** : OK.
- **Sources** : [18][28][33][36][40]

### Ghost Notes — Vee Boonyasak
- **Statut** : LIVE 10.1.2a (9.2.0).
- **Effet LIVE** : pendant Exhausted, vos scratch marks disparaissent 50 % plus vite ; récupération d'Exhausted 5/7,5/10 % plus rapide ; ne cause pas Exhausted — VERIFIED_MULTI_SOURCE (page complète [19] + note 9.2.0 [33])
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions** : Vigil (10.1.1 : 20/25/30 %, audit) — cumul de vitesses de récupération d'Exhausted soumis à DR ? HYPOTHESIS [28].
- **Synergies** : toute perk d'exhaustion (Sprint Burst, Lithe, Dead Hard, Overcome), Lucky Break.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : couper la ligne de vue après Sprint Burst/Lithe pour perdre le killer.
- **N'en produit pas** : sans perk d'exhaustion ; killers qui ne suivent pas les griffures.
- **Écart avec le seed** : OK.
- **Sources** : [19][33][40]

### Bada Bada Boom — Dustin Henderson
- **Statut** : LIVE 10.1.2a (9.4.0).
- **Effet LIVE** : après 20 % de réparation : Active Ability près d'une fenêtre → piège 40/50/60 s ; le killer qui y saute subit Hindered -50 % pendant 6 s ; aura des fenêtres piégées visible par **tous les survivants en jaune** ; désactivée après déclenchement ou fin du timer — VERIFIED_MULTI_SOURCE (page complète [20] + note 9.4.0 [34] ; description mise à jour en 9.5.0 [35])
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions** : DR sur Hindered si cumulé avec autres Hindered survivants ? HYPOTHESIS.
- **Synergies** : Windows of Opportunity, Last Stand (même fenêtre), Resilience.
- **Difficulté** : 3 (préparer + attirer le killer dans les 60 s).
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : pré-piéger la fenêtre d'une boucle forte près du gen travaillé.
- **N'en produit pas** : killers qui ne sautent pas (Nurse, Blight, Huntress à distance) ; fenêtre mal choisie.
- **Écart avec le seed** : OK (omet l'aura jaune).
- **Sources** : [20][34][35][40]

### Teamwork: Full Circuit — Dustin Henderson
- **Statut** : LIVE 10.1.2a (9.4.0, 27/01/2026).
- **Effet LIVE** : par autre survivant réparant avec vous : zone de Good skill check +15/20/25 % ; +5 % de vitesse de réparation si ≥ 1 allié répare avec vous — VERIFIED_MULTI_SOURCE (page complète [21] + note 9.4.0 [34])
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions, DR** : +5 % réparation cumulé à Soft-Spoken (+5 %) → DR 9.6.0 probable (modificateurs identiques) — HYPOTHESIS.
- **Synergies** : Soft-Spoken, Prove Thyself, SWF gen groupés.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Produit de la valeur** : rushs de gen en duo/trio, anti-Overcharge/Oppression.
- **N'en produit pas** : seul sur gen (0 effet).
- **Écart avec le seed** : OK.
- **Sources** : [21][34][40]

### We See You — Eleven
- **Statut** : LIVE 10.1.2a (9.4.0).
- **Effet LIVE** : +1 token quand le killer révèle votre aura (CD 10 s entre tokens) ; à 4 tokens, consommés : aura du killer révélée à vous et tous les autres survivants 10/12,5/15 s — VERIFIED_MULTI_SOURCE (page complète [22] + note 9.4.0 [34])
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions** : dépend du loadout du killer (Lethal Pursuer, Nowhere to Hide, BBQ…) ; Distortion l'empêche de se charger (HYPOTHESIS : aura non révélée). Eyes of Belmont → +2 s pour le porteur d'Eyes (HYPOTHESIS).
- **Synergies** : Eyes of Belmont, jeu contre killers d'auras.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : contre builds d'auras (fréquents en 2026) ; info d'équipe.
- **N'en produit pas** : killer sans aura-reading.
- **Écart avec le seed** : OK.
- **Sources** : [22][34][40]

### Teamwork: Soft-Spoken — Eleven
- **Statut** : LIVE 10.1.2a (9.4.0).
- **Effet LIVE** : par autre survivant réparant avec vous : portée du bruit de réparation du gen -15/20/25 % ; +5 % réparation si ≥ 1 allié — VERIFIED_MULTI_SOURCE (page complète [23] + note 9.4.0 [34])
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions, DR** : voir Full Circuit (+5 % × 2 → DR probable, HYPOTHESIS).
- **Synergies** : Full Circuit, Teamwork: Collective Stealth, Quick & Quiet.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Produit de la valeur** : gens groupés contre killers qui patrouillent au son.
- **N'en produit pas** : seul ; contre auras de gen (bruit non pertinent).
- **Écart avec le seed** : OK.
- **Sources** : [23][34][40]

### A Place For Us — Kwon Tae-young
- **Statut** : LIVE 10.1.2a (9.5.0, 17/03/2026).
- **Effet LIVE** : pendant que vous soignez un autre survivant : vous et lui Elusive ; soin terminé sur l'Obsession → vous deux Elusive 20/25/30 s ; réduit de -100 % votre chance d'être l'Obsession initiale — VERIFIED_MULTI_SOURCE (page complète [24] + note 9.5.0, dont le changement PTB → LIVE « you now both gain Elusive » [35])
- **Limites** : bug rapporté d'Elusive sur auto-soin (bugreport) — statut UNCERTAIN [25].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions** : Elusive (9.4.0) — effet exact (masquage d'aura) non re-vérifié ici. Cumul durée Elusive avec protections d'unhook 10.1.0 (Elusive 10 s) : pas de DR sur durée documentée.
- **Synergies** : Empathic Connection, Botany Knowledge, Do No Harm.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 0
- **Produit de la valeur** : contre killers à auras (Nowhere to Hide, BBQ) pendant les soins ; protéger l'Obsession.
- **N'en produit pas** : killer sans aura-reading ; pas d'Obsession dans la partie.
- **Écart avec le seed** : OK (omet le -100 % Obsession).
- **Sources** : [24][25][35][40]

### Flow State — Kwon Tae-young
- **Statut** : LIVE 10.1.2a (9.5.0).
- **Effet LIVE** : +1 token par gen terminé (max 5) ; par token : bénir/purifier, soigner et décrocher 8/9/10 % plus vite — VERIFIED_MULTI_SOURCE (page complète [26], onglet d'historique 9.5.0 = LIVE + note 9.5.0 [35] + note 559 « was 8/9/10% » [40])
- **PTB 10.2.0** (NON LIVE) : 13/14/15 % par jeton (bénir/purifier, soigner, décrocher), max 5 jetons inchangé — VERIFIED_MULTI_SOURCE (wiki [26] + note 559 [40]).
- **Interactions, DR** : vitesse de soin cumulée avec Botany/Do No Harm → DR probable — HYPOTHESIS.
- **Synergies** : Boon: Circle of Healing, Lend a Hand, Boon: Illumination (totems), Borrowed Time.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 2
- **Produit de la valeur** : mi/fin de partie (3+ gens faits) : décrochages et soins sensiblement plus rapides.
- **N'en produit pas** : début de partie (0 token) ; parties à 3-gen bloqué.
- **Écart avec le seed** : LIVE OK ; PTB 13/14/15 % **OK** [40].
- **Sources** : [26][35][40]

### Lend a Hand — Shane Wiigwaas
- **Statut** : LIVE 10.1.2a (buff 10.0.0 : suppression de la limite « une fois par partie »).
- **Effet LIVE** : purifier ou bénir un totem active la perk ; ensuite, **une fois par survivant**, pendant que vous soignez un survivant, Active Ability 2 → il reçoit **2/3/4 charges de soin permanentes** — STRONG_SECONDARY (page complète [41]).
- **Valeurs / CD / conditions / limites** : 2/3/4 charges ; une fois par allié [41]. Sens exact de « charges de soin permanentes » non détaillé par la page (HYPOTHESIS : progression de soin acquise d'avance ; ≈ 13-25 % d'un soin si un soin vaut 16 charges, valeur de référence non re-vérifiée).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions, DR** : pas un modificateur de vitesse → DR 9.6.0 a priori non concernée (HYPOTHESIS).
- **Synergies (HEURISTIC)** : Flow State (totems + soins), Boons, Inner Strength, Counterforce.
- **Difficulté (HEURISTIC)** : 2 (condition totem avant le soin).
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 0
- **Produit de la valeur (HEURISTIC)** : pré-soigner les alliés avant qu'ils soient touchés : leur prochain soin est plus court, donc moins de temps hors gen.
- **N'en produit pas (HEURISTIC)** : killer qui garde ses totems (peu de totems accessibles) ; « une fois par allié » plafonne le gain total.
- **Écart avec le seed** : **OK** [41].
- **Sources** : [40][41]

### Fruits of Your Labor — Aurora Stardotter
- **Statut** : LIVE 10.1.2a (perk du chapitre 10.1.0).
- **Effet LIVE** : +1 jeton à chaque générateur terminé ; quand vous finissez de réparer un gen, **par jeton** : +5 % de Haste pendant 2 s et +10/15/20 % de progression de soin — VERIFIED_MULTI_SOURCE (page complète [42] + note 10.1.0 [38]).
- **Valeurs / CD / conditions / limites** : aucun maximum de jetons indiqué (ni wiki ni note) ; la forme exacte du cumul « par jeton » (Haste plus forte ou plus longue ; progression de soin instantanée sur vous) n'est pas détaillée — UNCERTAIN.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions, DR** : Haste cumulée avec d'autres Haste identiques (Sprint Burst, protections d'unhook) → DR 9.6.0 probable — HYPOTHESIS.
- **Synergies (HEURISTIC)** : Five Moves Ahead / Boon: Steadfast (seed ch4_7), Resilience, Self-Care-like solo heals.
- **Difficulté (HEURISTIC)** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 1 · endgame 1
- **Produit de la valeur (HEURISTIC)** : quitter un gen qui vient de sauter avec un petit coup de Haste (le killer arrive souvent sur la notification) ; plus fort en fin de partie (plus de tokens).
- **N'en produit pas (HEURISTIC)** : si vous ne finissez pas vous-même les gens ; 2 s de Haste ne sauvent pas d'un killer déjà au contact.
- **Écart avec le seed** : **OK** [38][42].
- **Sources** : [38][40][42]

### Left Behind — Bill Overbeck
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : quand vous êtes le dernier survivant (Last Survivor Standing), l'aura de la trappe vous est révélée dans **24/28/32 m** — STRONG_SECONDARY (page complète [43] ; aucun changement 8.x-10.x).
- **Valeurs / conditions** : condition « Last Survivor Standing » [43] ; cas du dernier survivant accroché : non précisé.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions** : trappe fermée par le killer → aura inutile sauf clé (seed ch4_7).
- **Synergies (HEURISTIC)** : Down to the Last (seed), clé Dull/Skeleton, Distortion/Low Profile.
- **Difficulté (HEURISTIC)** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 0 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 1
- **Produit de la valeur (HEURISTIC)** : SoloQ quand l'équipe tombe tôt : trouver la trappe avant le killer.
- **N'en produit pas (HEURISTIC)** : 99 % de la partie (slot mort tant qu'il reste un allié).
- **Écart avec le seed** : **OK** [43].
- **Sources** : [40][43]

### Open-Handed — Ace Visconti
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : tous les survivants : portée de toutes les capacités de lecture d'aura **+8/12/16 m**, en permanence ; n'affecte que les auras émanant du survivant qui les déclenche ; un survivant ne bénéficie que d'une instance d'Open-Handed (pas de cumul) — STRONG_SECONDARY (page complète [44] ; aucun changement 8.x-10.x).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions, DR** : portée, pas vitesse → DR a priori non concernée (HYPOTHESIS).
- **Synergies (HEURISTIC)** : Bond, Still Sight (24 m), Kindred, Empathy/Empathic Connection si à portée limitée, Left Behind.
- **Difficulté (HEURISTIC)** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur (HEURISTIC)** : équipes d'auras (plusieurs perks à portée limitée dans l'équipe).
- **N'en produit pas (HEURISTIC)** : sans autre perk d'aura à portée limitée ; sert seulement d'amplificateur.
- **Écart avec le seed** : **OK** (omet la non-cumulabilité) [44].
- **Sources** : [40][44]

### Streetwise — Nea Karlsson
- **Statut** : LIVE 10.1.2a (rework 9.1.0 ; perk désactivée puis réactivée en 9.1.1 [31]).
- **Effet LIVE** : les objets à charges que vous récupérez dans les coffres ont **+60/70/80 % de charges** (permanent) ; la première fois que l'objet équipé se vide, aura du killer **8 s** — VERIFIED_MULTI_SOURCE (page complète [45] + note 9.1.0 [30] ; correctifs 9.1.1 [31] et 10.0.0 [37]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [40] — NON LIVE.
- **Interactions** : aura de 8 s temporisée → +2 s avec Eyes of Belmont (HYPOTHESIS, cf. [7]).
- **Synergies (HEURISTIC)** : Specialist, Exultation, Appraisal, Plunderer's Instinct, Eyes of Belmont.
- **Difficulté (HEURISTIC)** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Produit de la valeur (HEURISTIC)** : builds coffres/objets (plus d'usages d'un medkit ou d'une toolbox trouvés).
- **N'en produit pas (HEURISTIC)** : sans objet ni coffre ; items apportés du lobby (le bonus de charges vise les objets de coffre, selon le seed).
- **Écart avec le seed** : **OK** (rework 9.1.0, 8 s, 60/70/80 %) [30][45].
- **Sources** : [28][30][31][37][40][45]

### Boon: Illumination — Alan Wake
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : boon (rayon 24 m) : les survivants dans la zone voient les auras de **tous les coffres et de tous les générateurs** en bleu ; tant que vous avez un totem de boon allumé, vous bénissez et purifiez **+6/8/10 %** plus vite ; une seule instance par survivant — VERIFIED_MULTI_SOURCE (page complète [46], onglet d'historique 7.1.0 = LIVE + note 559 « was bless and cleanse 6/8/10% » [40] ; bug « auras de gens toujours bleues » corrigé en 9.5.0 [35]).
- **PTB 10.2.0** (NON LIVE) : bénédiction **+150/175/200 %** ; ne s'applique plus à la purification ; auras inchangées — VERIFIED_MULTI_SOURCE (wiki [46] + note 559 [40]).
- **Interactions** : se cumule sur un seul totem avec les autres Boons (seed p31, non re-vérifié) ; perdue si le killer éteint le totem.
- **Synergies (HEURISTIC)** : Boon: Circle of Healing / Shadow Step (même totem), Flow State, Lend a Hand, Specialist/Streetwise (coffres).
- **Difficulté (HEURISTIC)** : 2 (placement du totem).
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur (HEURISTIC)** : builds boons multiples ou builds coffres.
- **N'en produit pas (HEURISTIC)** : seule ; contre killers qui éteignent les boons (Shattered Hope).
- **Écart avec le seed** : **OK** (les gens sont bien inclus [46] ; « un peu plus vite » = 6/8/10 %) ; PTB « bénédiction bien plus rapide » OK (omet la perte du bonus de purification) [40].
- **Sources** : [35][40][46]

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| P28-01 | Bardic Inspiration : 15 s, 16 m, 90 s ; d20 1/2-10/11-19/20 → cri/+1/+2/+3 % ; CD 110/100/90 s | [1][2] | LIVE | STRONG_SECONDARY (page complète) |
| P28-02 | Mirrored Illusion : 20 % réparation ; illusion 40/50/60 s ; désactivée après usage | [3] | LIVE (8.2.0) | STRONG_SECONDARY (page complète) |
| P28-03 | Still Sight : 4/3/2 s immobile ; 24 m ; killer/coffres/gens | [4][30] | LIVE (9.1.0) | VERIFIED_MULTI_SOURCE |
| P28-04 | Specialist : max 6 tokens ; -2/3/4 charges/token ; max 12/18/24 | [5] | LIVE | STRONG_SECONDARY (page complète) |
| P28-05 | Exultation : +75 % charge, +1 rareté conservée à l'évasion ; CD 30/25/20 s | [6][29] | LIVE (9.0.0) | VERIFIED_MULTI_SOURCE |
| P28-06 | Eyes of Belmont : 1/2/3 s ; +2 s ; s'applique à elle-même | [48] | LIVE | STRONG_SECONDARY (page complète) |
| P28-07 | Moment of Glory : 1 coffre ; soin après 80/70/60 s | [8][38] | LIVE (10.1.0) | VERIFIED_MULTI_SOURCE |
| P28-08 | Clean Break : 75/60/45 s | [10][38] | LIVE (10.1.0) | VERIFIED_MULTI_SOURCE |
| P28-09 | Do No Harm LIVE : 30/40/50 %/hook stage, max 60/80/100 % ; Great +3 % **fixe** ; pas de bonus de chance de skill check | [11][40] | LIVE | VERIFIED_MULTI_SOURCE (reconstruite depuis la note 559) |
| P28-10 | Do No Harm PTB : Great +3 %/Hook State (max +6 %) ; +5 % chance de skill check | [11][40] | PTB 10.2.0 (NON LIVE) | VERIFIED_MULTI_SOURCE |
| P28-11 | Last Stand : 120/105/90 s ; stun 3 s ; ≤ 2,5 m ; 1×/trial | [14][30] | LIVE (9.1.0) | VERIFIED_MULTI_SOURCE |
| P28-12 | Throw Down : Endurance 6/8/10 s aux alliés blessés à 24 m ; + aura du killer (note 9.1.0) | [16][30] | LIVE (9.1.0) | VERIFIED_MULTI_SOURCE (Endurance) / VERIFIED_PRIMARY (aura, CONFLICT-03) |
| P28-13 | One-Two-Three-Four! : +20 % chance de skill check 90 s ; 16 m ; CD 110/100/90 s | [18][33] | LIVE (9.2.0) | VERIFIED_MULTI_SOURCE |
| P28-14 | Ghost Notes : griffures 50 % plus vite ; Exhausted 5/7,5/10 % | [19][33] | LIVE (9.2.0) | VERIFIED_MULTI_SOURCE |
| P28-15 | Bada Bada Boom : 20 % ; piège 40/50/60 s ; Hindered -50 % 6 s | [20][34] | LIVE (9.4.0) | VERIFIED_MULTI_SOURCE |
| P28-16 | Full Circuit : Good zone +15/20/25 %/allié ; +5 % réparation | [21][34] | LIVE (9.4.0) | VERIFIED_MULTI_SOURCE |
| P28-17 | We See You : 4 tokens (CD 10 s) ; aura 10/12,5/15 s pour tous | [22][34] | LIVE (9.4.0) | VERIFIED_MULTI_SOURCE |
| P28-18 | Soft-Spoken : bruit -15/20/25 %/allié ; +5 % réparation | [23][34] | LIVE (9.4.0) | VERIFIED_MULTI_SOURCE |
| P28-19 | A Place For Us : Elusive pendant soin ; 20/25/30 s pour vous deux après soin de l'Obsession ; -100 % chance Obsession | [24][35] | LIVE (9.5.0) | VERIFIED_MULTI_SOURCE |
| P28-20 | Flow State : max 5 tokens ; 8/9/10 %/token | [26][35][40] | LIVE (9.5.0) | VERIFIED_MULTI_SOURCE |
| P28-21 | Flow State PTB 13/14/15 % | [26][40] | PTB 10.2.0 (NON LIVE) | VERIFIED_MULTI_SOURCE |
| P28-22 | Lend a Hand : 2/3/4 charges de soin permanentes, une fois par allié | [41] | LIVE (10.0.0) | STRONG_SECONDARY (page complète) |
| P28-23 | Fruits of Your Labor : par jeton, 5 % Haste 2 s + 10/15/20 % de progression de soin | [38][42] | LIVE (10.1.0) | VERIFIED_MULTI_SOURCE |
| P28-24 | Left Behind : aura de la trappe 24/28/32 m en dernier survivant | [43] | LIVE | STRONG_SECONDARY (page complète) |
| P28-25 | Open-Handed : +8/12/16 m à toutes les auras des survivants, non cumulable | [44] | LIVE | STRONG_SECONDARY (page complète) |
| P28-26 | Streetwise : +60/70/80 % de charges (objets de coffre), aura 8 s au premier objet vidé | [30][45] | LIVE (9.1.0) | VERIFIED_MULTI_SOURCE |
| P28-27 | Boon: Illumination LIVE : coffres + gens en bleu, bénir/purifier +6/8/10 % ; PTB : bénir +150/175/200 %, plus de purification | [40][46] | LIVE / PTB (NON LIVE) | VERIFIED_MULTI_SOURCE |

## Conflits

#### CONFLICT-2-P28-01 : Last Stand — durée d'activation
- Source A : seed — « environ 90 à 120 s… valeurs différentes selon les sources ».
- Source B : wiki.gg (page complète) — 120/105/90 s par tier [14].
- Hypothèse : le seed a confondu une plage par tier avec une incertitude entre sources (le PTB 9.1.0 avait 80/70/60 s).
- Résolution : **RÉSOLU** — 120/105/90 s : note officielle 9.1.0 (« Increased the time … to 120/105/90 seconds (was 80/70/60 seconds) ») [30] + page complète [14]. VERIFIED_MULTI_SOURCE.

#### CONFLICT-2-P28-02 : Last Stand — disponibilité en 2025
- Source A : apptrigger « August patch returns Last Stand perk » [15] (suggère une désactivation temporaire).
- Source B : notes officielles 9.1.1 (« The Streetwise and Last Stand perks have been re-enabled ») [31] et 9.1.3 (« The Last Stand perk has been re-enabled ») [32].
- Hypothèse : perk désactivée pour bugs après 9.1.0, réactivée en 9.1.1, puis de nouveau désactivée et réactivée en 9.1.3.
- Résolution : **RÉSOLU** (HISTORICAL, sans impact sur la LIVE 10.1.2a) — VERIFIED_PRIMARY [31][32].

#### CONFLICT-2-P28-03 : Teamwork: Throw Down — aura du killer
- Source A : note officielle 9.1.0 : « other injured Survivors within 24/24/24 meters gain Endurance and see the Killer's aura for 6/8/10 seconds » [30] ; résumés nightlight / shacknews [17].
- Source B : description complète du wiki (texte courant) : seulement l'Endurance 6/8/10 s ; pas de change log 8.x-10.x [16].
- Hypothèse : omission de la page wiki (aucune note officielle ne retire l'aura).
- Résolution : UNRESOLVED — l'aura est retenue (VERIFIED_PRIMARY, note 9.1.0) mais à confirmer en jeu.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Last Stand | ~90-120 s, « valeurs différentes selon les sources » | 120/105/90 s, 1×/trial [14][30] | IMPRÉCIS |
| Do No Harm (LIVE) | 30/40/50 % par état de crochet, petit bonus sur les greats | idem ; Great +3 % fixe [40] | OK |
| Do No Harm (PTB) | « ajustée » | Great +3 %/Hook State + chance de skill check +5 % [40] | IMPRÉCIS |
| Specialist | -2/3/4 charges par token | + plafond 12/18/24 charges [5] | IMPRÉCIS |
| Eyes of Belmont | +2 s à toutes les auras du killer | s'applique à elle-même (3/4/5 s) ; exclusion des auras non temporisées selon [7] | IMPRÉCIS |
| Mirrored Illusion | près d'un « interrupteur » ; pas de limite | Exit Gate ; désactivée après usage [3] | IMPRÉCIS |
| A Place For Us | effet Elusive | + -100 % chance d'être Obsession [24][35] | IMPRÉCIS (omission mineure) |
| Bardic Inspiration | 0 à +3 %, CD 110/100/90 | idem [1] | OK |
| Still Sight | 4/3/2 s, 24 m | idem [4][30] | OK |
| Exultation | +75 %, CD 30/25/20 | idem ; rareté conservée à l'évasion [6][29] | OK |
| Moment of Glory | 80/70/60 s après 1 coffre | idem (10.1.0) [38] | OK |
| Clean Break | 75/60/45 s | idem [38] | OK |
| Teamwork: Throw Down | Endurance + aura 6/8/10 s, 24 m | idem (note 9.1.0 ; aura absente du wiki, CONFLICT-03) [30] | OK |
| One-Two-Three-Four! | +20 %, 90 s, CD 110/100/90 | idem [33] | OK |
| Ghost Notes | 50 % ; 5/7,5/10 % | idem [33] | OK |
| Bada Bada Boom | 20 %, 40/50/60 s, Hindered 50 % 6 s | idem [34] | OK |
| Teamwork: Full Circuit | +15/20/25 % ; +5 % | idem [34] | OK |
| We See You | 4 tokens, CD 10 s, 10/12,5/15 s | idem [34] | OK |
| Teamwork: Soft-Spoken | -15/20/25 % ; +5 % | idem [34] | OK |
| Flow State (LIVE) | 8/9/10 %/token, max 5 | idem [35] | OK |
| Flow State (PTB) | 13/14/15 % | idem [40] | OK |
| Lend a Hand | 2/3/4 charges, une fois par allié | idem [41] | OK |
| Fruits of Your Labor | 5 % Haste 2 s, 10/15/20 % | idem [38][42] | OK |
| Left Behind | 24/28/32 m | idem [43] | OK |
| Open-Handed | +8/12/16 m | idem ; non cumulable [44] | OK |
| Streetwise | rework 9.1.0 ; 8 s ; 60/70/80 % | idem [30][45] | OK |
| Boon: Illumination | coffres (+ gens ?) ; PTB bénédiction + rapide | coffres **et** gens, +6/8/10 % ; PTB +150/175/200 % bénédiction sans purification [40][46] | OK (incomplet) |

## Questions ouvertes

1. ~~Relancer une passe WebSearch pour les 6 perks non vérifiées + PTB~~ — **résolu** (lot 12a).
2. ~~Liste des perks de la page touchées par le PTB 10.2.0~~ — **résolu** : Do No Harm, Flow State, Boon: Illumination (note 559 [40]).
3. Mirrored Illusion : réactivable après de nouveaux 20 % de réparation ? — ouvert (la page dit seulement « deactivates after triggering successfully »).
4. DR 9.6.0 : Full Circuit + Soft-Spoken (+5 % réparation chacun) et vitesses de soin (Do No Harm / Flow State / Botany) sont-ils des « modificateurs identiques » réduits à 50 % ? — ouvert (la note 9.6.0 [36] donne le principe, pas la liste).
5. ~~Do No Harm PTB : quelles valeurs changent ?~~ — **résolu** [40].
6. ~~Last Stand : désactivation temporaire en 2025~~ — **résolu** (9.1.1 / 9.1.3) [31][32].
7. A Place For Us : bug d'Elusive en auto-soin toujours présent en 10.1.2a ? — ouvert (aucune note officielle ne le mentionne).
8. Teamwork: Throw Down : l'aura du killer est-elle toujours accordée en LIVE (CONFLICT-03) ?
9. Fruits of Your Labor : plafond de jetons et forme exacte du cumul « par jeton ».

## Sources

[1] deadbydaylight.wiki.gg/wiki/Bardic_Inspiration — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[2] Bardic Inspiration — NightLight — https://nightlight.gg/perks/Bardic_Inspiration — consulté le 27/09/2026 via WebSearch
[3] deadbydaylight.wiki.gg/wiki/Mirrored_Illusion — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[4] deadbydaylight.wiki.gg/wiki/Still_Sight — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[5] deadbydaylight.wiki.gg/wiki/Specialist — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[6] deadbydaylight.wiki.gg/wiki/Exultation — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[7] Eyes of Belmont — Official Dead by Daylight Wiki (fandom) — https://deadbydaylight.fandom.com/wiki/Eyes_of_Belmont — consulté le 27/09/2026 via WebSearch
[8] deadbydaylight.wiki.gg/wiki/Moment_of_Glory — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[9] Moment of Glory — NightLight — https://nightlight.gg/perks/Moment_of_Glory — consulté le 27/09/2026 via WebSearch
[10] deadbydaylight.wiki.gg/wiki/Clean_Break — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[11] deadbydaylight.wiki.gg/wiki/Do_No_Harm — page complète via API, consultée le 27/09/2026 (la description courante affiche la version PTB 10.2.0)
[12] Dead by Daylight v10.2.0 PTB — Perk Overhaul — Patched — https://patched.gg/games/dead-by-daylight/1020-ptb-patch-notes — consulté le 27/09/2026 via WebSearch
[13] Dead by Daylight 10.2.0 PTB Changes 58 Perks — HappyGamer — https://happygamer.com/dead-by-daylight-10-2-0-ptb-58-perk-changes-164427/ — consulté le 27/09/2026 via WebSearch
[14] deadbydaylight.wiki.gg/wiki/Last_Stand — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[15] Dead By Daylight August patch returns Last Stand perk — AppTrigger — https://apptrigger.com/dead-by-daylight-august-patch-returns-last-stand-perk-01k3rpjjtjj6 — consulté le 27/09/2026 via WebSearch (titre seul)
[16] deadbydaylight.wiki.gg/wiki/Teamwork:_Throw_Down — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[17] Teamwork: Throw Down — NightLight — https://nightlight.gg/perks/Teamwork:_Throw_Down ; Shacknews Michonne perks — https://www.shacknews.com/article/145043/dead-by-daylight-dbd-the-walking-dead-michonne-perks — consulté le 27/09/2026 via WebSearch
[18] deadbydaylight.wiki.gg/wiki/One-Two-Three-Four! — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[19] deadbydaylight.wiki.gg/wiki/Ghost_Notes — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[20] deadbydaylight.wiki.gg/wiki/Bada_Bada_Boom — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[21] deadbydaylight.wiki.gg/wiki/Teamwork:_Full_Circuit — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[22] deadbydaylight.wiki.gg/wiki/We_See_You — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[23] deadbydaylight.wiki.gg/wiki/Teamwork:_Soft-Spoken — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[24] deadbydaylight.wiki.gg/wiki/A_Place_For_Us — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[25] #1907 Unintended Elusive Activation on Self Heals with 'A Place For Us' — BHVR bug report — https://bugreport.deadbydaylight.com/projects/pr-5642738318/issues/1907 — consulté le 27/09/2026 via WebSearch (titre seul)
[26] deadbydaylight.wiki.gg/wiki/Flow_State — page complète via API, consultée le 27/09/2026 (initialement via WebSearch)
[27] DBD Patch Notes 10.2.0 — timesaver.gg — https://timesaver.gg/blog/dbd-patch-notes-10-2-0 — consulté le 27/09/2026 via WebSearch (listé, non exploité)
[28] Audit phase 0 (local) — kb/seed/audit_phase0.txt — notes 9.1.0, 9.5.0, 9.6.0, 10.1.0, 10.1.1 (VERIFIED_PRIMARY selon l'audit)
[29] 9.0.0 | Five Nights at Freddy's — note officielle BHVR KB 510 — https://forums.bhvr.com/dead-by-daylight/kb/articles/510 — lue en local (official_510.txt), 27/09/2026
[30] 9.1.0 | The Walking Dead — note officielle BHVR KB 516 — https://forums.bhvr.com/dead-by-daylight/kb/articles/516 — lue en local (official_516.txt), 27/09/2026
[31] 9.1.1 | Bugfix Patch — note officielle BHVR KB 517 — https://forums.bhvr.com/dead-by-daylight/kb/articles/517 — lue en local (official_517.txt), 27/09/2026
[32] 9.1.3 | Bugfix Patch — note officielle BHVR KB 520 — https://forums.bhvr.com/dead-by-daylight/kb/articles/520 — lue en local (official_520.txt), 27/09/2026
[33] 9.2.0 | Sinister Grace — note officielle BHVR KB 523 — https://forums.bhvr.com/dead-by-daylight/kb/articles/523 — lue en local (official_523.txt), 27/09/2026
[34] 9.4.0 | Stranger Things Chapter 2 — note officielle BHVR KB 534 — https://forums.bhvr.com/dead-by-daylight/kb/articles/534 — lue en local (official_534.txt), 27/09/2026
[35] 9.5.0 | All-Kill: Comeback — note officielle BHVR KB 538 — https://forums.bhvr.com/dead-by-daylight/kb/articles/538 — lue en local (official_538.txt), 27/09/2026
[36] 9.6.0 | Patch Notes — note officielle BHVR KB 544 — https://forums.bhvr.com/dead-by-daylight/kb/articles/544 — lue en local (official_544.txt), 27/09/2026
[37] 10.0.0 | Jason Patch Notes — note officielle BHVR KB 550 — https://forums.bhvr.com/dead-by-daylight/kb/articles/550 — lue en local (official_550.txt), 27/09/2026
[38] 10.1.0 | Chorus of Sin — note officielle BHVR KB 556 — https://forums.bhvr.com/dead-by-daylight/kb/articles/556 — lue en local (official_556.txt), 27/09/2026
[39] 10.1.1 Bugfix Patch — note officielle BHVR KB 557 — https://forums.bhvr.com/dead-by-daylight/kb/articles/557 — lue en local (official_557.txt), 27/09/2026
[40] 10.2.0 PTB Patch Notes — note officielle BHVR KB 559 — https://forums.bhvr.com/dead-by-daylight/kb/articles/559 — texte complet lu en local (official_559.txt), 27/09/2026
[41] deadbydaylight.wiki.gg/wiki/Lend_a_Hand — page complète via API, consultée le 27/09/2026
[42] deadbydaylight.wiki.gg/wiki/Fruits_of_Your_Labor — page complète via API, consultée le 27/09/2026
[43] deadbydaylight.wiki.gg/wiki/Left_Behind_(Perk) — page complète via API, consultée le 27/09/2026
[44] deadbydaylight.wiki.gg/wiki/Open-Handed — page complète via API, consultée le 27/09/2026
[45] deadbydaylight.wiki.gg/wiki/Streetwise — page complète via API, consultée le 27/09/2026
[46] deadbydaylight.wiki.gg/wiki/Boon:_Illumination — page complète via API, consultée le 27/09/2026
[47] Digest local des pages wiki complètes — kb/sources/wiki_perks_digest.md (brut : kb/sources/wiki_perks.json), extraction du 27/09/2026
[48] deadbydaylight.wiki.gg/wiki/Eyes_of_Belmont — page complète via API, consultée le 27/09/2026
