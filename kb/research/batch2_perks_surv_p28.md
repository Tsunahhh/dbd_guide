# Lot 2 — Perks survivant, page 28 du guide seed (ch3_survperks.txt l. 651-760)

Couverture web : 19 éléments vérifiés par recherche / 6 non re-vérifiés (quota) — plus les PTB de Flow State et Boon: Illumination non re-vérifiés.

- Référence : **LIVE 10.1.2a** (17/09/2026). **PTB 10.2.0 non LIVE.** Travail du 27/09/2026.
- Méthode : WebSearch uniquement ; pages non lues directement → « via résumé de recherche ». Confiance max **STRONG_SECONDARY** sauf recoupement avec l'audit phase 0 (notes officielles 10.1.0 → VERIFIED_MULTI_SOURCE).
- **Incident** : quota WebSearch de la session (200/200, partagé entre agents) épuisé après 19 perks. Lend a Hand, Fruits of Your Labor, Left Behind, Open-Handed, Streetwise et Boon: Illumination portent la mention « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) », confiance UNCERTAIN ; tout ajout issu de la mémoire du modèle est étiqueté « connaissance du modèle (antérieure à mi-2026), UNCERTAIN ».
- Notes « Valeur » = **HEURISTIC** (0-3). Difficulté 1 facile – 3 exigeante (HEURISTIC).
- Périmètre : 25 perks.

---

### Bardic Inspiration — Aestri Yazar & Baermar Uraz
- **Statut** : LIVE 10.1.2a (ajoutée 8.0.0, D&D, juin 2024).
- **Effet LIVE** : immobile, bouton Active Ability → Performance jusqu'à 15 s ; les autres survivants à 16 m sont « empowered » pendant 90 s selon un d20 — STRONG_SECONDARY [1][2]
- **Valeurs / CD / conditions / limites** : d20 = 1 : vous criez, rien ; 2-10 : +1 % ; 11-19 : +2 % ; 20 : +3 % de progression par **Basic** skill check réussi. CD 110/100/90 s après fin **ou annulation** de la Performance [1].
- **PTB 10.2.0** : UNCERTAIN (non recherché ; non cité par le seed).
- **Interactions, DR, anti-synergies** : le cri sur un 1 révèle la position (notification de bruit). Les Basic skill checks : un Great donne déjà son propre bonus ; l'interaction exacte Great + Bardic non vérifiée. DR 9.6.0 : bonus de progression de skill check possiblement concerné si cumulé avec d'autres sources identiques — HYPOTHESIS.
- **Synergies** : One-Two-Three-Four! (plus de skill checks = plus de bonus), Teamwork: Full Circuit, groupes sur gen (SWF).
- **Difficulté** : 2 (15 s immobile, placement).
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 2 · endgame 0
- **Quand elle produit de la valeur** : SWF qui se regroupe sur 2 gens voisins en début de partie, killer loin (pas de pression immédiate). 
- **Quand elle n'en produit pas** : SoloQ dispersée ; killer à forte pression/détection (15 s immobile = gen non réparé ; un 1 crie).
- **Écart avec le seed** : OK (« 0 à +3 % » = 1 à 3 % plus le cas nul).
- **Sources** : [1][2]

### Mirrored Illusion — Aestri Yazar & Baermar Uraz
- **Statut** : LIVE 10.1.2a (8.0.0).
- **Effet LIVE** : après 20 % de réparation cumulée, Active Ability près d'un Chest, Exit Gate, Generator ou Totem → Static Illusion de vous pendant 40/50/60 s — STRONG_SECONDARY [3]
- **Valeurs / CD / conditions / limites** : se **désactive après usage** (réactivation après nouveaux 20 % : non précisé dans le résumé → UNCERTAIN). L'illusion **reste visible** quand le killer ne voit plus les survivants (Spirit en Phase-Walk, Dark Lord en Bat Form) → trahit la ruse [3].
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions, DR, anti-synergies** : aucune DR pertinente. Anti-synergie : killers à Phase-Walk / Bat Form (cf. ci-dessus).
- **Synergies** : Distortion / Lucky Break (se cacher pendant que l'illusion attire), Red Herring (leurres).
- **Difficulté** : 2.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 1
- **Produit de la valeur** : sur un killer qui patrouille à vue (détourne quelques secondes près d'une porte ou d'un gen).
- **N'en produit pas** : killers expérimentés, ou pouvoirs qui révèlent l'illusion ; usage unique.
- **Écart avec le seed** : IMPRÉCIS (« interrupteur » = Exit Gate ; le seed omet la désactivation après usage).
- **Sources** : [3]

### Still Sight — Aestri Yazar & Baermar Uraz
- **Statut** : LIVE 10.1.2a (8.0.0).
- **Effet LIVE** : après 4/3/2 s immobile, voit les auras du Killer, des Chests et des Generators à 24 m jusqu'à ce que vous bougiez — STRONG_SECONDARY [4]
- **Valeurs / conditions** : ne s'active **pas** si vous interagissez (gen, soin d'un autre…) ; s'active quand un autre survivant vous soigne [4].
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions, DR** : aura du killer temporisée ? (durée « tant que immobile ») — interaction avec Eyes of Belmont non documentée. Pas de DR.
- **Synergies** : Open-Handed (portée +), jeu furtif (attendre caché le passage du killer).
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 1 · gen 0 · endgame 0
- **Produit de la valeur** : se faire soigner (on voit le killer arriver) ; attendre caché pour choisir le moment de repartir.
- **N'en produit pas** : en réparation (interaction = inactif) : c'est la limite majeure.
- **Écart avec le seed** : OK.
- **Sources** : [4]

### Specialist — Lara Croft
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : +1 token par Chest ouvert ou fouillé (max 6). Un Great de réparation consomme tous les tokens : réduit de façon permanente les charges requises de ce gen de 2/3/4 par token, **max 12/18/24 charges** — STRONG_SECONDARY [5]
- **Valeurs** : 90 charges par gen (référence classique, non re-vérifiée ici) → max ≈ 13/20/27 % d'un gen — HYPOTHESIS (dépend de la valeur de charges LIVE).
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions** : on peut « garder » les tokens en ne faisant que des Good sur les gens où on ne veut pas les consommer [5]. Pas de DR (réduction de charges, pas un modificateur de vitesse).
- **Synergies** : Appraisal, Plunderer's Instinct, Streetwise, Hyperfocus/Stake Out (Greats).
- **Difficulté** : 2 (6 coffres = temps).
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 2 · endgame 1
- **Produit de la valeur** : builds coffres (items + gens) ; sauver les tokens pour finir un gen critique d'un coup.
- **N'en produit pas** : peu de coffres, killer à forte pression (le temps passé en coffres coûte plus qu'il ne rapporte).
- **Écart avec le seed** : IMPRÉCIS (omet le plafond 12/18/24 charges).
- **Sources** : [5]

### Exultation — Trevor Belmont
- **Statut** : LIVE 10.1.2a (8.2.0, Castlevania).
- **Effet LIVE** : stun palette → l'objet tenu monte d'une rareté et est rechargé de +75 % ; CD 30/25/20 s ; rareté d'origine rétablie en fin de trial — STRONG_SECONDARY [6]
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions** : nécessite un objet tenu. Pas de DR.
- **Synergies** : Streetwise, Specialist (coffres), flashlight/toolbox + palettes fortes.
- **Difficulté** : 2.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Produit de la valeur** : chases longues sur maps riches en palettes, avec medkit/toolbox à recharger.
- **N'en produit pas** : killers anti-stun (Blight, Nurse), sans objet.
- **Écart avec le seed** : OK.
- **Sources** : [6]

### Eyes of Belmont — Trevor Belmont
- **Statut** : LIVE 10.1.2a (8.2.0).
- **Effet LIVE** : gen terminé → aura du Killer 1/2/3 s ; toutes les révélations **temporisées** de l'aura du killer pour vous +2 s ; bénéficie de son propre effet (→ 3/4/5 s effectifs) — STRONG_SECONDARY [7]
- **Limites** : sans effet sur les auras non temporisées (Kindred, Wiretap, add-on Blood Amber) [7].
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions** : pas de DR documentée (durée, pas vitesse).
- **Synergies** : Alert, Teamwork: Throw Down (aura du killer 6/8/10 s → +2 s pour vous, HYPOTHESIS), Still Sight (HYPOTHESIS : aura non temporisée), Open-Handed (portée seulement).
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 0 · endgame 1
- **Produit de la valeur** : builds d'info empilant des auras temporisées (Alert, Throw Down).
- **N'en produit pas** : seul (quelques secondes par gen).
- **Écart avec le seed** : IMPRÉCIS (omet l'auto-application et l'exclusion Kindred/Wiretap).
- **Sources** : [7]

### Moment of Glory — Trevor Belmont
- **Statut** : LIVE 10.1.2a ; buffée en 10.1.0 (2 coffres → **1 coffre**).
- **Effet LIVE** : après 1 Chest ouvert/fouillé : quand vous devenez blessé (sans être déjà Broken) → Broken ; après 80/70/60 s, si pas à terre, soigné instantanément — VERIFIED_MULTI_SOURCE [8][9][28]
- **Limites** : inactif si déjà Broken ; se désactive après vous avoir soigné [9]. Bug historique (8.6.0) : désactivation prématurée à la mise au sol — HISTORICAL, statut actuel UNCERTAIN [9].
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions** : Broken empêche les soins d'équipe pendant la durée ; anti-synergie avec perks de soin reçu. Anti-synergie avec Clean Break (même logique Broken).
- **Synergies** : Plunderer's Instinct, Resilience (jouer blessé), Streetwise.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 2 · gen 1 · endgame 0
- **Produit de la valeur** : SoloQ sans soigneur ; permet de rester sur gen au lieu de chercher un soin.
- **N'en produit pas** : si remis au sol avant le timer ; killers Broken/Deep Wound fréquents.
- **Écart avec le seed** : OK (seed conforme au 10.1.0).
- **Sources** : [8][9][28]

### Clean Break — Taurie Cain
- **Statut** : LIVE 10.1.2a ; valeurs 75/60/45 s depuis 10.1.0 (audit phase 0).
- **Effet LIVE** : après avoir soigné un autre survivant (action complète), Active Ability pendant qu'un allié vous soigne → Broken, puis soigné d'1 état de santé après 75/60/45 s — VERIFIED_MULTI_SOURCE [10][28]
- **Limites** : annulé si vous passez en Dying ; inactif si déjà Broken ; se désactive après le soin [10].
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions** : l'allié arrête de vous soigner (gain de temps d'équipe). Anti-synergie : Moment of Glory.
- **Synergies** : Botany Knowledge / We'll Make It (soigner d'abord), Resilience.
- **Difficulté** : 2 (conditions en chaîne).
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Produit de la valeur** : libérer le soigneur rapidement (il retourne sur gen).
- **N'en produit pas** : si personne ne vous soigne (SoloQ) ; perk souvent redondante avec un medkit.
- **Écart avec le seed** : OK.
- **Sources** : [10][28]

### Do No Harm — Orela Rose
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : en soignant un autre survivant : +30/40/50 % de vitesse de soin altruiste **par Hook Stage** du soigné (max 60/80/100 %) ; +3 % de progression des Great skill checks de soin par Hook Stage (max +6 %) — STRONG_SECONDARY [11]
- **PTB 10.2.0** : changement confirmé par résumés : ajout de **+5 % de chance de skill check par Hook State**, bonus Great mis à l'échelle — PTB, STRONG_SECONDARY [12][13]. Valeurs PTB exactes (≠ LIVE ?) : le résumé répète 30/40/50 % et 3 % → pas de changement de ces valeurs, UNCERTAIN.
- **Interactions, DR** : DR 9.6.0 probable avec d'autres bonus de vitesse de soin (Botany, Flow State, medkit ? add-ons exclus) — HYPOTHESIS ; au LIVE, la seconde source identique n'apporterait que 50 %.
- **Synergies** : Empathy/Empathic Connection (trouver l'allié), Aftercare, builds skill checks.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 3 · gen 0 · endgame 0
- **Produit de la valeur** : soigner l'allié en 2e hook (le plus exposé, souvent tunnelé).
- **N'en produit pas** : en début de partie (0 Hook Stage = 0 bonus) ; sur soi-même.
- **Écart avec le seed** : LIVE OK ; PTB IMPRÉCIS (« ajustée » : ne dit pas quoi — ajout de chance de skill check).
- **Sources** : [11][12][13]

### Last Stand — Michonne Grimes
- **Statut** : LIVE 10.1.2a (9.1.0). Un article évoque un « retour » de la perk en août (désactivation temporaire ?) — HISTORICAL/UNCERTAIN [15].
- **Effet LIVE** : après **120/105/90 s** dans le Terror Radius sans être poursuivi, s'active ; un Rushed Vault stun le killer 3 s s'il est à ≤ 2,5 m de la fenêtre ; **désactivée pour le reste du trial** après usage — STRONG_SECONDARY [14]
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions** : l'état « activé » est visible ? (non documenté). Rushed vault → notification de bruit.
- **Synergies** : Windows of Opportunity (trouver les fenêtres), Resilience (vault plus rapide), Lithe (rushed vault déjà prévu) — HEURISTIC.
- **Difficulté** : 3 (remplir la condition sans chase + placement précis).
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 2 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : protéger un allié ou casser une chase longue une fois ; killers qui suivent au vault.
- **N'en produit pas** : Nurse/Blight/killers à distance ; si vous êtes chassé tôt (condition jamais remplie).
- **Écart avec le seed** : IMPRÉCIS (« environ 90 à 120 s… valeurs différentes selon les sources » → valeurs précises 120/105/90 s).
- **Sources** : [14][15]

### Teamwork: Throw Down — Michonne Grimes
- **Statut** : LIVE 10.1.2a (9.1.0).
- **Effet LIVE** : quand vous aveuglez le killer (tous moyens) ou le stun avec une palette : les **autres** survivants **blessés** à 24 m gagnent Endurance 6/8/10 s — STRONG_SECONDARY [16] ; et voient l'aura du killer pendant la même durée — STRONG_SECONDARY (2 résumés concordants, l'un issu de nightlight/shacknews) [16][17].
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions** : Endurance → Deep Wound. Le seed classe Endurance « Soul Guard, Made for This » : cumul d'Endurance = pas de cumul de durée (HYPOTHESIS). Protections d'unhook 10.1.0 déjà Endurance 10 s.
- **Synergies** : Flashlight/Flashbang, Blast Mine ; Head On ne déclenche pas (stun hors palette, HYPOTHESIS).
- **Difficulté** : 2.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 1 · macro 0 · info 1 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : sauvetage de chase d'un allié blessé proche (palette/flash).
- **N'en produit pas** : si aucun allié blessé à 24 m (cas fréquent).
- **Écart avec le seed** : OK.
- **Sources** : [16][17]

### One-Two-Three-Four! — Vee Boonyasak
- **Statut** : LIVE 10.1.2a (9.2.0, 23/09/2025).
- **Effet LIVE** : Performance jusqu'à 15 s (skill checks continus pendant la Performance) ; survivants à 16 m empowered : +20 % de chance de skill checks en soin et réparation pendant 90 s ; CD 110/100/90 s (après fin ou annulation) — STRONG_SECONDARY [18]
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions, DR** : 9.6.0 : « positive skill check chance modifiers » ne se combinent qu'au sein d'un même rôle (audit) → cumul avec Hyperfocus/Stake Out/Do No Harm PTB soumis à DR (HYPOTHESIS sur le calcul exact) [28].
- **Synergies** : Bardic Inspiration (même mécanique Performance), Hyperfocus, Stake Out, Full Circuit.
- **Difficulté** : 2.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Produit de la valeur** : équipes skill-check (Hyperfocus, Stake Out) groupées.
- **N'en produit pas** : seule, sans perk exploitant les skill checks (plus de checks ≠ plus de vitesse).
- **Écart avec le seed** : OK.
- **Sources** : [18][28]

### Ghost Notes — Vee Boonyasak
- **Statut** : LIVE 10.1.2a (9.2.0).
- **Effet LIVE** : pendant Exhausted, vos scratch marks disparaissent 50 % plus vite ; récupération d'Exhausted 5/7,5/10 % plus rapide ; ne cause pas Exhausted — STRONG_SECONDARY [19]
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions** : Vigil (10.1.1 : 20/25/30 %, audit) — cumul de vitesses de récupération d'Exhausted soumis à DR ? HYPOTHESIS [28].
- **Synergies** : toute perk d'exhaustion (Sprint Burst, Lithe, Dead Hard, Overcome), Lucky Break.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : couper la ligne de vue après Sprint Burst/Lithe pour perdre le killer.
- **N'en produit pas** : sans perk d'exhaustion ; killers qui ne suivent pas les griffures.
- **Écart avec le seed** : OK.
- **Sources** : [19]

### Bada Bada Boom — Dustin Henderson
- **Statut** : LIVE 10.1.2a (9.4.0).
- **Effet LIVE** : après 20 % de réparation : Active Ability près d'une fenêtre → piège 40/50/60 s ; le killer qui y saute subit Hindered -50 % pendant 6 s ; aura des fenêtres piégées visible par **tous les survivants en jaune** ; désactivée après déclenchement ou fin du timer — STRONG_SECONDARY (2 résumés) [20]
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions** : DR sur Hindered si cumulé avec autres Hindered survivants ? HYPOTHESIS.
- **Synergies** : Windows of Opportunity, Last Stand (même fenêtre), Resilience.
- **Difficulté** : 3 (préparer + attirer le killer dans les 60 s).
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : pré-piéger la fenêtre d'une boucle forte près du gen travaillé.
- **N'en produit pas** : killers qui ne sautent pas (Nurse, Blight, Huntress à distance) ; fenêtre mal choisie.
- **Écart avec le seed** : OK (omet l'aura jaune).
- **Sources** : [20]

### Teamwork: Full Circuit — Dustin Henderson
- **Statut** : LIVE 10.1.2a (9.4.0, 27/01/2026).
- **Effet LIVE** : par autre survivant réparant avec vous : zone de Good skill check +15/20/25 % ; +5 % de vitesse de réparation si ≥ 1 allié répare avec vous — STRONG_SECONDARY [21]
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions, DR** : +5 % réparation cumulé à Soft-Spoken (+5 %) → DR 9.6.0 probable (modificateurs identiques) — HYPOTHESIS.
- **Synergies** : Soft-Spoken, Prove Thyself, SWF gen groupés.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Produit de la valeur** : rushs de gen en duo/trio, anti-Overcharge/Oppression.
- **N'en produit pas** : seul sur gen (0 effet).
- **Écart avec le seed** : OK.
- **Sources** : [21]

### We See You — Eleven
- **Statut** : LIVE 10.1.2a (9.4.0).
- **Effet LIVE** : +1 token quand le killer révèle votre aura (CD 10 s entre tokens) ; à 4 tokens, consommés : aura du killer révélée à vous et tous les autres survivants 10/12,5/15 s — STRONG_SECONDARY [22]
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions** : dépend du loadout du killer (Lethal Pursuer, Nowhere to Hide, BBQ…) ; Distortion l'empêche de se charger (HYPOTHESIS : aura non révélée). Eyes of Belmont → +2 s pour le porteur d'Eyes (HYPOTHESIS).
- **Synergies** : Eyes of Belmont, jeu contre killers d'auras.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : contre builds d'auras (fréquents en 2026) ; info d'équipe.
- **N'en produit pas** : killer sans aura-reading.
- **Écart avec le seed** : OK.
- **Sources** : [22]

### Teamwork: Soft-Spoken — Eleven
- **Statut** : LIVE 10.1.2a (9.4.0).
- **Effet LIVE** : par autre survivant réparant avec vous : portée du bruit de réparation du gen -15/20/25 % ; +5 % réparation si ≥ 1 allié — STRONG_SECONDARY [23]
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions, DR** : voir Full Circuit (+5 % × 2 → DR probable, HYPOTHESIS).
- **Synergies** : Full Circuit, Teamwork: Collective Stealth, Quick & Quiet.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Produit de la valeur** : gens groupés contre killers qui patrouillent au son.
- **N'en produit pas** : seul ; contre auras de gen (bruit non pertinent).
- **Écart avec le seed** : OK.
- **Sources** : [23]

### A Place For Us — Kwon Tae-young
- **Statut** : LIVE 10.1.2a (9.5.0, 17/03/2026).
- **Effet LIVE** : pendant que vous soignez un autre survivant : vous et lui Elusive ; soin terminé sur l'Obsession → vous deux Elusive 20/25/30 s ; réduit de -100 % votre chance d'être l'Obsession initiale — STRONG_SECONDARY [24]
- **Limites** : bug rapporté d'Elusive sur auto-soin (bugreport) — statut UNCERTAIN [25].
- **PTB 10.2.0** : UNCERTAIN (non recherché).
- **Interactions** : Elusive (9.4.0) — effet exact (masquage d'aura) non re-vérifié ici. Cumul durée Elusive avec protections d'unhook 10.1.0 (Elusive 10 s) : pas de DR sur durée documentée.
- **Synergies** : Empathic Connection, Botany Knowledge, Do No Harm.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 0
- **Produit de la valeur** : contre killers à auras (Nowhere to Hide, BBQ) pendant les soins ; protéger l'Obsession.
- **N'en produit pas** : killer sans aura-reading ; pas d'Obsession dans la partie.
- **Écart avec le seed** : OK (omet le -100 % Obsession).
- **Sources** : [24][25]

### Flow State — Kwon Tae-young
- **Statut** : LIVE 10.1.2a (9.5.0).
- **Effet LIVE** : +1 token par gen terminé (max 5) ; par token : bénir/purifier, soigner et décrocher 8/9/10 % plus vite — STRONG_SECONDARY [26]
- **PTB 10.2.0** : seed : 13/14/15 % — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN. Flow State n'apparaît pas dans les résumés PTB lus pour Do No Harm (ce qui ne prouve rien).
- **Interactions, DR** : vitesse de soin cumulée avec Botany/Do No Harm → DR probable — HYPOTHESIS.
- **Synergies** : Boon: Circle of Healing, Lend a Hand, Boon: Illumination (totems), Borrowed Time.
- **Difficulté** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 2
- **Produit de la valeur** : mi/fin de partie (3+ gens faits) : décrochages et soins sensiblement plus rapides.
- **N'en produit pas** : début de partie (0 token) ; parties à 3-gen bloqué.
- **Écart avec le seed** : LIVE OK ; PTB NON VÉRIFIABLE.
- **Sources** : [26]

### Lend a Hand — Shane Wiigwaas
- **Statut** : LIVE 10.1.2a d'après le seed (perk du chapitre 10.0.x) — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN.
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : après avoir béni ou purifié un totem, pendant un soin sur un allié (une fois par allié), celui-ci reçoit 2/3/4 charges de soin permanentes — UNCERTAIN.
- **Valeurs / CD / conditions / limites** : seed : 2/3/4 charges ; une fois par allié — UNCERTAIN. Sens exact de « charges de soin permanentes » non vérifié (HYPOTHESIS : progression de soin acquise d'avance, soit ≈ 13-25 % d'un soin si un soin vaut 16 charges, valeur de référence non re-vérifiée).
- **PTB 10.2.0** : UNCERTAIN (le seed ne la cite pas comme modifiée ; non recherché).
- **Interactions, DR** : pas un modificateur de vitesse → DR 9.6.0 a priori non concernée (HYPOTHESIS).
- **Synergies (HEURISTIC)** : Flow State (totems + soins), Boons, Inner Strength, Counterforce.
- **Difficulté (HEURISTIC)** : 2 (condition totem avant le soin).
- **Valeur (HEURISTIC, basée sur le texte seed)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 0
- **Produit de la valeur (HEURISTIC)** : pré-soigner les alliés avant qu'ils soient touchés : leur prochain soin est plus court, donc moins de temps hors gen.
- **N'en produit pas (HEURISTIC)** : killer qui garde ses totems (peu de totems accessibles) ; « une fois par allié » plafonne le gain total.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune source web (seed uniquement).

### Fruits of Your Labor — Aurora Stardotter
- **Statut** : LIVE 10.1.2a d'après le seed (perk du chapitre 10.1.0) — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN.
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : +1 token par générateur fini ; quand vous finissez de réparer un gen, par token : +5 % de Haste pendant 2 s et +10/15/20 % de progression de soin — UNCERTAIN (on ne sait pas si le bonus de soin est une vitesse ou une progression instantanée sur soi).
- **Valeurs / CD / conditions / limites** : max de tokens non indiqué par le seed — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN (non cité par le seed ; non recherché).
- **Interactions, DR** : Haste cumulée avec d'autres Haste identiques (Sprint Burst, protections d'unhook) → DR 9.6.0 probable — HYPOTHESIS.
- **Synergies (HEURISTIC)** : Five Moves Ahead / Boon: Steadfast (seed ch4_7), Resilience, Self-Care-like solo heals.
- **Difficulté (HEURISTIC)** : 1.
- **Valeur (HEURISTIC, texte seed)** : SoloQ 1 · SWF 1 · chase 1 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 1 · endgame 1
- **Produit de la valeur (HEURISTIC)** : quitter un gen qui vient de sauter avec un petit coup de Haste (le killer arrive souvent sur la notification) ; plus fort en fin de partie (plus de tokens).
- **N'en produit pas (HEURISTIC)** : si vous ne finissez pas vous-même les gens ; 2 s de Haste ne sauvent pas d'un killer déjà au contact.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune source web (seed uniquement).

### Left Behind — Bill Overbeck
- **Statut** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN.
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : quand vous êtes le dernier survivant, aura de la trappe à 24/28/32 m — UNCERTAIN. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : effet de même nature (aura de la trappe en dernier survivant) ; valeurs non confirmées.
- **Valeurs / conditions** : ne fonctionne qu'en dernier survivant en vie (hors crochet ?) — détail non vérifié.
- **PTB 10.2.0** : UNCERTAIN (non cité par le seed).
- **Interactions** : trappe fermée par le killer → aura inutile sauf clé (seed ch4_7).
- **Synergies (HEURISTIC)** : Down to the Last (seed), clé Dull/Skeleton, Distortion/Low Profile.
- **Difficulté (HEURISTIC)** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 0 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 1
- **Produit de la valeur (HEURISTIC)** : SoloQ quand l'équipe tombe tôt : trouver la trappe avant le killer.
- **N'en produit pas (HEURISTIC)** : 99 % de la partie (slot mort tant qu'il reste un allié).
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune source web.

### Open-Handed — Ace Visconti
- **Statut** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN.
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : toutes les lectures d'aura à portée limitée des survivants gagnent +8/12/16 m (effet d'équipe) — UNCERTAIN. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : effet conforme ; plusieurs exemplaires dans l'équipe ne se cumulent pas.
- **PTB 10.2.0** : UNCERTAIN (non cité par le seed).
- **Interactions, DR** : portée, pas vitesse → DR a priori non concernée (HYPOTHESIS).
- **Synergies (HEURISTIC)** : Bond, Still Sight (24 m), Kindred, Empathy/Empathic Connection si à portée limitée, Left Behind.
- **Difficulté (HEURISTIC)** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur (HEURISTIC)** : équipes d'auras (plusieurs perks à portée limitée dans l'équipe).
- **N'en produit pas (HEURISTIC)** : sans autre perk d'aura à portée limitée ; sert seulement d'amplificateur.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune source web.

### Streetwise — Nea Karlsson
- **Statut** : rework en 9.1.0 confirmé par l'audit phase 0 (« Rework … Streetwise ») [28] ; contenu : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN.
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : la première fois qu'un de vos objets se vide, vous voyez l'aura du killer 8 s ; les objets trouvés dans les coffres ont +60/70/80 % de charges — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN (non cité par le seed).
- **Interactions** : aura de 8 s temporisée → +2 s avec Eyes of Belmont (HYPOTHESIS, cf. [7]).
- **Synergies (HEURISTIC)** : Specialist, Exultation, Appraisal, Plunderer's Instinct, Eyes of Belmont.
- **Difficulté (HEURISTIC)** : 1.
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Produit de la valeur (HEURISTIC)** : builds coffres/objets (plus d'usages d'un medkit ou d'une toolbox trouvés).
- **N'en produit pas (HEURISTIC)** : sans objet ni coffre ; items apportés du lobby (le bonus de charges vise les objets de coffre, selon le seed).
- **Écart avec le seed** : date du rework OK (audit) ; valeurs NON VÉRIFIABLES.
- **Sources** : [28]

### Boon: Illumination — Alan Wake
- **Statut** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN.
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : dans la zone du boon, les survivants voient les coffres (et les gens « selon les sources ») en bleu et bénissent/purifient un peu plus vite — UNCERTAIN. Le seed lui-même signale une incertitude sur les gens.
- **PTB 10.2.0** : seed : « bénédiction bien plus rapide » — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN.
- **Interactions** : se cumule sur un seul totem avec les autres Boons (seed p31, non re-vérifié) ; perdue si le killer éteint le totem.
- **Synergies (HEURISTIC)** : Boon: Circle of Healing / Shadow Step (même totem), Flow State, Lend a Hand, Specialist/Streetwise (coffres).
- **Difficulté (HEURISTIC)** : 2 (placement du totem).
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur (HEURISTIC)** : builds boons multiples ou builds coffres.
- **N'en produit pas (HEURISTIC)** : seule ; contre killers qui éteignent les boons (Shattered Hope).
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune source web.

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| P28-01 | Bardic Inspiration : 15 s, 16 m, 90 s ; d20 1/2-10/11-19/20 → cri/+1/+2/+3 % ; CD 110/100/90 s | [1][2] | LIVE | STRONG_SECONDARY |
| P28-02 | Mirrored Illusion : 20 % réparation ; illusion 40/50/60 s ; désactivée après usage | [3] | LIVE | STRONG_SECONDARY |
| P28-03 | Still Sight : 4/3/2 s immobile ; 24 m ; killer/coffres/gens | [4] | LIVE | STRONG_SECONDARY |
| P28-04 | Specialist : max 6 tokens ; -2/3/4 charges/token ; max 12/18/24 | [5] | LIVE | STRONG_SECONDARY |
| P28-05 | Exultation : +75 % charge, +1 rareté ; CD 30/25/20 s | [6] | LIVE | STRONG_SECONDARY |
| P28-06 | Eyes of Belmont : 1/2/3 s ; +2 s ; s'applique à elle-même | [7] | LIVE | STRONG_SECONDARY |
| P28-07 | Moment of Glory : 1 coffre ; soin après 80/70/60 s | [8][9][28] | LIVE (10.1.0) | VERIFIED_MULTI_SOURCE |
| P28-08 | Clean Break : 75/60/45 s | [10][28] | LIVE (10.1.0) | VERIFIED_MULTI_SOURCE |
| P28-09 | Do No Harm : 30/40/50 %/hook stage, max 60/80/100 % ; Great +3 %/stage max +6 % | [11] | LIVE | STRONG_SECONDARY |
| P28-10 | Do No Harm PTB : +5 % chance de skill check par Hook State | [12][13] | PTB 10.2.0 | STRONG_SECONDARY |
| P28-11 | Last Stand : 120/105/90 s ; stun 3 s ; ≤ 2,5 m ; 1×/trial | [14] | LIVE | STRONG_SECONDARY |
| P28-12 | Throw Down : Endurance + aura killer 6/8/10 s ; alliés blessés à 24 m | [16][17] | LIVE | STRONG_SECONDARY |
| P28-13 | One-Two-Three-Four! : +20 % chance de skill check 90 s ; 16 m ; CD 110/100/90 s | [18] | LIVE | STRONG_SECONDARY |
| P28-14 | Ghost Notes : griffures 50 % plus vite ; Exhausted 5/7,5/10 % | [19] | LIVE | STRONG_SECONDARY |
| P28-15 | Bada Bada Boom : 20 % ; piège 40/50/60 s ; Hindered -50 % 6 s | [20] | LIVE | STRONG_SECONDARY |
| P28-16 | Full Circuit : Good zone +15/20/25 %/allié ; +5 % réparation | [21] | LIVE | STRONG_SECONDARY |
| P28-17 | We See You : 4 tokens (CD 10 s) ; aura 10/12,5/15 s pour tous | [22] | LIVE | STRONG_SECONDARY |
| P28-18 | Soft-Spoken : bruit -15/20/25 %/allié ; +5 % réparation | [23] | LIVE | STRONG_SECONDARY |
| P28-19 | A Place For Us : Elusive pendant soin ; 20/25/30 s après soin de l'Obsession ; -100 % chance Obsession | [24] | LIVE | STRONG_SECONDARY |
| P28-20 | Flow State : max 5 tokens ; 8/9/10 %/token | [26] | LIVE | STRONG_SECONDARY |
| P28-21 | Flow State PTB 13/14/15 % | seed, NON RE-VÉRIFIÉ (quota) | PTB 10.2.0 | UNCERTAIN |
| P28-22 | Lend a Hand 2/3/4 charges ; Fruits of Your Labor 5 % Haste 2 s + 10/15/20 % ; Left Behind 24/28/32 m ; Open-Handed +8/12/16 m ; Streetwise 8 s + 60/70/80 % | seed, NON RE-VÉRIFIÉ (quota) | LIVE ? | UNCERTAIN |

## Conflits

#### CONFLICT-2-P28-01 : Last Stand — durée d'activation
- Source A : seed — « environ 90 à 120 s… valeurs différentes selon les sources ».
- Source B : wiki.gg (via résumé) — 120/105/90 s par tier [14].
- Hypothèse : le seed a confondu une plage par tier avec une incertitude entre sources.
- Résolution : 120/105/90 s (STRONG_SECONDARY). Résolu.

#### CONFLICT-2-P28-02 : Last Stand — disponibilité en 2025
- Source A : apptrigger « August patch returns Last Stand perk » [15] (suggère une désactivation temporaire).
- Source B : aucune autre source lue.
- Hypothèse : perk désactivée pour bug puis réactivée (août 2025 ?).
- Résolution : UNRESOLVED (sans impact LIVE 10.1.2a).

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Last Stand | ~90-120 s, « valeurs différentes selon les sources » | 120/105/90 s, 1×/trial | IMPRÉCIS |
| Do No Harm (PTB) | « ajustée » | +5 % chance de skill check par Hook State (PTB) | IMPRÉCIS |
| Specialist | -2/3/4 charges par token | + plafond 12/18/24 charges | IMPRÉCIS |
| Eyes of Belmont | +2 s à toutes les auras du killer | seulement auras temporisées ; s'applique à elle-même (3/4/5 s) | IMPRÉCIS |
| Mirrored Illusion | près d'un « interrupteur » ; pas de limite | Exit Gate ; désactivée après usage | IMPRÉCIS |
| A Place For Us | effet Elusive | + -100 % chance d'être Obsession | IMPRÉCIS (omission mineure) |
| Bardic Inspiration | 0 à +3 %, CD 110/100/90 | idem | OK |
| Still Sight | 4/3/2 s, 24 m | idem | OK |
| Exultation | +75 %, CD 30/25/20 | idem | OK |
| Moment of Glory | 80/70/60 s après 1 coffre | idem (10.1.0) | OK |
| Clean Break | 75/60/45 s | idem | OK |
| Teamwork: Throw Down | Endurance + aura 6/8/10 s, 24 m | idem | OK |
| One-Two-Three-Four! | +20 %, 90 s, CD 110/100/90 | idem | OK |
| Ghost Notes | 50 % ; 5/7,5/10 % | idem | OK |
| Bada Bada Boom | 20 %, 40/50/60 s, Hindered 50 % 6 s | idem | OK |
| Teamwork: Full Circuit | +15/20/25 % ; +5 % | idem | OK |
| We See You | 4 tokens, CD 10 s, 10/12,5/15 s | idem | OK |
| Teamwork: Soft-Spoken | -15/20/25 % ; +5 % | idem | OK |
| Flow State (LIVE) | 8/9/10 %/token, max 5 | idem | OK |
| Flow State (PTB) | 13/14/15 % | non vérifié | NON VÉRIFIABLE |
| Lend a Hand | 2/3/4 charges | non vérifié | NON VÉRIFIABLE |
| Fruits of Your Labor | 5 % Haste 2 s, 10/15/20 % | non vérifié | NON VÉRIFIABLE |
| Left Behind | 24/28/32 m | non vérifié | NON VÉRIFIABLE |
| Open-Handed | +8/12/16 m | non vérifié | NON VÉRIFIABLE |
| Streetwise | rework 9.1.0 ; 8 s ; 60/70/80 % | date OK (audit), valeurs non vérifiées | NON VÉRIFIABLE |
| Boon: Illumination | coffres (+ gens ?) ; PTB bénédiction + rapide | non vérifié | NON VÉRIFIABLE |

## Questions ouvertes

1. **Relancer une passe WebSearch** (budget session épuisé) pour : Lend a Hand, Fruits of Your Labor, Left Behind, Open-Handed, Streetwise (valeurs post-9.1.0), Boon: Illumination (LIVE + PTB), Flow State PTB (13/14/15 % ?).
2. Liste exacte des perks de la page touchées par le PTB 10.2.0 (seul Do No Harm confirmé ; seed cite aussi Flow State et Boon: Illumination).
3. Mirrored Illusion : réactivable après de nouveaux 20 % de réparation ?
4. DR 9.6.0 : Full Circuit + Soft-Spoken (+5 % réparation chacun) et vitesses de soin (Do No Harm / Flow State / Botany) sont-ils des « modificateurs identiques » réduits à 50 % ? (liste exhaustive du manuel 9.6.1 non consultée, cf. audit).
5. Do No Harm PTB : les valeurs 30/40/50 % changent-elles ou seule la chance de skill check est ajoutée ?
6. Last Stand : désactivation temporaire en 2025 (apptrigger) — date et cause.
7. A Place For Us : bug d'Elusive en auto-soin toujours présent en 10.1.2a ?

## Sources

[1] Bardic Inspiration — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Bardic_Inspiration — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[2] Bardic Inspiration — NightLight — https://nightlight.gg/perks/Bardic_Inspiration — consulté le 27/09/2026 via WebSearch
[3] Mirrored Illusion — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Mirrored_Illusion — consulté le 27/09/2026 via WebSearch
[4] Still Sight — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Still_Sight — consulté le 27/09/2026 via WebSearch
[5] Specialist — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Specialist — consulté le 27/09/2026 via WebSearch
[6] Exultation — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Exultation — consulté le 27/09/2026 via WebSearch
[7] Eyes of Belmont — Official Dead by Daylight Wiki (fandom) — https://deadbydaylight.fandom.com/wiki/Eyes_of_Belmont — consulté le 27/09/2026 via WebSearch
[8] Moment of Glory — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Moment_of_Glory — consulté le 27/09/2026 via WebSearch
[9] Moment of Glory — NightLight — https://nightlight.gg/perks/Moment_of_Glory — consulté le 27/09/2026 via WebSearch
[10] Clean Break — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Clean_Break — consulté le 27/09/2026 via WebSearch
[11] Do No Harm — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Do_No_Harm — consulté le 27/09/2026 via WebSearch
[12] Dead by Daylight v10.2.0 PTB — Perk Overhaul — Patched — https://patched.gg/games/dead-by-daylight/1020-ptb-patch-notes — consulté le 27/09/2026 via WebSearch
[13] Dead by Daylight 10.2.0 PTB Changes 58 Perks — HappyGamer — https://happygamer.com/dead-by-daylight-10-2-0-ptb-58-perk-changes-164427/ — consulté le 27/09/2026 via WebSearch
[14] Last Stand — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Last_Stand — consulté le 27/09/2026 via WebSearch
[15] Dead By Daylight August patch returns Last Stand perk — AppTrigger — https://apptrigger.com/dead-by-daylight-august-patch-returns-last-stand-perk-01k3rpjjtjj6 — consulté le 27/09/2026 via WebSearch (titre seul)
[16] Teamwork: Throw Down — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Teamwork:_Throw_Down — consulté le 27/09/2026 via WebSearch
[17] Teamwork: Throw Down — NightLight — https://nightlight.gg/perks/Teamwork:_Throw_Down ; Shacknews Michonne perks — https://www.shacknews.com/article/145043/dead-by-daylight-dbd-the-walking-dead-michonne-perks — consulté le 27/09/2026 via WebSearch
[18] One-Two-Three-Four! — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/One-Two-Three-Four! — consulté le 27/09/2026 via WebSearch
[19] Ghost Notes — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Ghost_Notes — consulté le 27/09/2026 via WebSearch
[20] Bada Bada Boom — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Bada_Bada_Boom — consulté le 27/09/2026 via WebSearch
[21] Teamwork: Full Circuit — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Teamwork:_Full_Circuit — consulté le 27/09/2026 via WebSearch
[22] We See You — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/We_See_You — consulté le 27/09/2026 via WebSearch
[23] Teamwork: Soft-Spoken — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Teamwork:_Soft-Spoken — consulté le 27/09/2026 via WebSearch
[24] A Place For Us — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/A_Place_For_Us — consulté le 27/09/2026 via WebSearch
[25] #1907 Unintended Elusive Activation on Self Heals with 'A Place For Us' — BHVR bug report — https://bugreport.deadbydaylight.com/projects/pr-5642738318/issues/1907 — consulté le 27/09/2026 via WebSearch (titre seul)
[26] Flow State — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Flow_State — consulté le 27/09/2026 via WebSearch
[27] DBD Patch Notes 10.2.0 — timesaver.gg — https://timesaver.gg/blog/dbd-patch-notes-10-2-0 — consulté le 27/09/2026 via WebSearch (listé, non exploité)
[28] Audit phase 0 (local) — kb/seed/audit_phase0.txt — notes 9.1.0, 9.5.0, 9.6.0, 10.1.0, 10.1.1 (VERIFIED_PRIMARY selon l'audit)
