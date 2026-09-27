**Couverture web : 14 éléments vérifiés par recherche / 10 non re-vérifiés (quota)** — vérifiés : Quick Gambit, Potential Energy, Autodidact, Chemical Trap, Wiretap, Leader, Empathy, Lightweight, Spine Chill, No One Left Behind, Dark Sense, Plunderer's Instinct, Bound by Obsession, Poised (via notes 9.2.0) ; non re-vérifiés : Down to the Last, Wake Up!, Pharmacy, Detective's Hunch, Aftercare, Breakdown, Diversion, Solidarity, Buckle Up, Mettle of Man.

# Lot 2 — Perks survivant, page 26 du guide seed (Quick Gambit → Mettle of Man)

Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 = non LIVE. Recherche du 27/09/2026, WebSearch uniquement (résumés de recherche, pages non lues directement).
Périmètre : 24 perks (kb/seed/ch3_survperks.txt l. 422-534).


> **Avertissement de session** : le quota global WebSearch de la session (200 appels) a été épuisé après 21 recherches de ce lot. Les éléments non re-vérifiés portent la mention « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » et la confiance UNCERTAIN. Les PTB de Plunderer's / Pharmacy / Wake Up! / Solidarity ne sont pas vérifiés.
> Les notes « Valeur » sont toutes **HEURISTIC** (jugement de l'agent, pas des données).

---

### Quick Gambit — Vittorio Toscano
- **Statut** : LIVE 10.1.2a (perk unique, ajoutée 6.4.0).
- **Effet LIVE** : en poursuite, **vous** voyez l'aura des autres survivants ; les autres survivants réparent 3/4/5 % plus vite. Recharge 40 s à la perte d'un état de santé — STRONG_SECONDARY [1]
- **Valeurs / CD / conditions / limites** : +3/4/5 % réparation (alliés) · CD 40 s (était 60 s avant 9.2.0 — VERIFIED_MULTI_SOURCE [2][3]). La portée exacte du bonus (tous les alliés ou seulement ceux dont l'aura est visible) : UNCERTAIN.
- **PTB 10.2.0** : non modifiée d'après les sources lues (absente des résumés PTB consultés) — UNCERTAIN (liste PTB complète non lue).
- **Interactions, DR (9.6.0), anti-synergies** : bonus de vitesse de réparation d'origine perk → soumis aux DR avec d'autres bonus de réparation identiques (ex. Prove Thyself, Hyperfocus) — HYPOTHESIS (liste officielle des modificateurs DR non publiée).
- **Synergies** : builds chase longue (Windows of Opportunity, Resilience) ; SoloQ (l'aura montre où sont les gens pendant la chase).
- **Difficulté** : 2 (il faut tenir la chase sans perdre d'état de santé).
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 1 · chase 1 · macro 2 · info 2 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur** : longues chases sans coup (le bonus tourne en continu) ; SoloQ pour savoir s'il faut éloigner le tueur d'un gen occupé.
- **Quand elle n'en produit pas** : si vous êtes touché tôt (40 s de CD) ; si l'équipe ne répare pas pendant votre chase.
- **Écart avec le seed** : **FAUX** (sens de l'aura inversé : le seed dit « les autres survivants voient votre aura », le wiki dit que c'est vous qui voyez les leurs). Valeurs et CD OK.
- **Sources** : [1][2][3]

### Potential Energy — Vittorio Toscano
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : en réparant, activation → convertit les charges de réparation en jetons (1 jeton = 1 %) jusqu'à 10/15/20 ; nouvel appui sur n'importe quel gen partiellement réparé → +1 % par jeton instantanément — STRONG_SECONDARY [4]
- **Valeurs / CD / conditions / limites** : max 10/15/20 jetons · skill check raté : −20 % des jetons si pas au max, **−10 % de régression du gen** si au max · se désactive après usage ; perte de **tous** les jetons à la perte d'un état de santé « by any means » (pas seulement un coup) [4].
- **PTB 10.2.0** : non modifiée d'après les sources lues — UNCERTAIN.
- **Interactions, DR, anti-synergies** : les jetons stockés ne profitent pas des bonus de vitesse de réparation comme un gen normal ? — UNCERTAIN (non vérifié). Anti-synergie : skill checks ratés au max (régression).
- **Synergies** : Deja Vu / Blast Mine (plantage rapide sur le gen menacé), Hyperfocus (gestion des skill checks) — HEURISTIC.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 2 · info 0 · anti-tunnel 0 · soin 0 · gen 2 · endgame 1
- **Produit de la valeur** : pour « finir » un gen à 80 %+ d'un coup et éviter la régression ou un kick prévu ; pour contourner un gen protégé par un hex de régression.
- **N'en produit pas** : si vous êtes souvent touché (perte totale) ; si vous ratez des skill checks au plafond.
- **Écart avec le seed** : **IMPRÉCIS** (perte des jetons à la perte d'un état de santé par n'importe quel moyen, pas « un coup » ; pénalités de skill check raté omises). Buff 9.1.0 cité p32 : NON VÉRIFIABLE (contenu du buff non lu).
- **Sources** : [4]

### Autodidact — Adam Francis
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : réussir un skill check en soignant un autre survivant donne +1 jeton (max 3/4/5) ; les Great de soin sont supprimés ; progression par skill check : 0 jeton −15 %, 1 → 0 %, 2 → +15 %, 3 → +30 %, 4 → +45 %, 5 → +60 % — STRONG_SECONDARY [5]
- **Valeurs / CD / conditions / limites** : **inactif avec un Med-Kit** [5] ; ne s'applique qu'aux soins d'autrui.
- **PTB 10.2.0** : non modifiée d'après les sources lues — UNCERTAIN.
- **Interactions, DR, anti-synergies** : anti-synergie avec les Med-Kits et avec les perks de Great (ex. Botany non concerné, mais tout bonus de Great est perdu) ; augmente les skill checks de soin via les perks de fréquence (Hyperfocus ne s'applique pas au soin — non vérifié).
- **Synergies** : Empathy/Bond (trouver des blessés), Boon: Circle of Healing (vitesse de soin sur autrui) — HEURISTIC.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 2 · gen 0 · endgame 0
- **Produit de la valeur** : parties longues avec beaucoup de soins d'autrui sans kit.
- **N'en produit pas** : premières minutes (malus) ; avec Med-Kit ; contre tueurs anti-soin (Sloppy, Mangled).
- **Écart avec le seed** : **OK** (omet seulement l'inactivité avec Med-Kit et « soin d'un autre survivant »).
- **Sources** : [5]

### Chemical Trap — Ellen Ripley
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : après 20 % cumulés de réparation, appui près d'une palette tombée → piège 40/50/60 s ; si le tueur la casse : Hindered 50 % pendant 4 s ; auras des palettes piégées révélées aux survivants (jaune) — STRONG_SECONDARY [6]
- **Valeurs / CD / conditions / limites** : se désactive après déclenchement ou fin du timer.
- **PTB 10.2.0** : non modifiée d'après les sources lues — UNCERTAIN.
- **Interactions, DR, anti-synergies** : Hindered d'origine perk → DR si un autre Hindered identique est appliqué — HYPOTHESIS. Inutile contre un tueur qui ne casse pas la palette (tueurs à pouvoir de destruction, ou qui la laisse).
- **Synergies** : Hardened ? (non), Blast Mine / Wiretap (lot « trapper survivant »), Resilience — HEURISTIC.
- **Difficulté** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : sur une palette de « dead zone » que le tueur doit casser pour poursuivre (distance gagnée ~4 s).
- **N'en produit pas** : tueurs qui cassent via pouvoir ou ignorent la palette.
- **Écart avec le seed** : **OK**.
- **Sources** : [6]

### Wiretap — Ada Wong
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : après 40 % cumulés de réparation, appui près d'un gen partiellement réparé → piège 100/110/120 s ; quand le tueur entre dans 14 m du gen piégé, son aura est révélée à tous les survivants — STRONG_SECONDARY [7]
- **Valeurs / CD / conditions / limites** : se désactive si le gen est endommagé (kick) ou fin du timer. Durées actuelles = buff depuis 60/70/80 s [7].
- **PTB 10.2.0** : non modifiée d'après les sources lues — UNCERTAIN.
- **Interactions, DR, anti-synergies** : révélation d'aura → bloquée si le tueur est Undetectable ? — UNCERTAIN.
- **Synergies** : Blast Mine, Deja Vu, Bond — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 2 · info 2 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Produit de la valeur** : sur le gen le plus avancé d'un 3-gen que le tueur patrouille.
- **N'en produit pas** : tueurs qui kickent systématiquement (le micro saute au premier kick).
- **Écart avec le seed** : **OK** (« environ 14 m » = 14 m ; « frappe ce gen » = gen endommagé).
- **Sources** : [7]

### Leader — Dwight Fairfield
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : alliés dans 10 m : vitesse de Cleansing, Gate-Opening, Healing, Sabotaging, **Unhooking**, **Unlocking** +20/25/30 % ; persiste 15 s après sortie de zone ; un survivant ne bénéficie que d'une instance de Leader — STRONG_SECONDARY [8] ; valeurs et 10 m : VERIFIED_MULTI_SOURCE (notes 9.2.0 [2][3]).
- **Valeurs / CD / conditions / limites** : 9.2.0 : 15/20/25 % → 20/25/30 %, 8 m → 10 m, description simplifiée [2][3].
- **PTB 10.2.0** : non modifiée d'après les sources lues — UNCERTAIN.
- **Interactions, DR, anti-synergies** : bonus de vitesse d'action d'origine perk → soumis aux DR avec d'autres bonus identiques (ex. Botany sur le soin) — HYPOTHESIS.
- **Synergies** : Botany Knowledge, We'll Make It, Boon: Circle of Healing, Wake Up! (portes).
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 2
- **Produit de la valeur** : unhook + soin rapide groupés ; ouverture de portes en fin de partie ; sabotage d'équipe.
- **N'en produit pas** : joueurs dispersés (10 m) ; aucun bonus sur la réparation.
- **Écart avec le seed** : **IMPRÉCIS** (omet Unhooking et Unlocking, et la persistance de 15 s ; valeurs et 10 m OK).
- **Sources** : [2][3][8]

### Empathy — Claudette Morel
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : aura des survivants **blessés ou mourants (dying)** dans 64/96/128 m — STRONG_SECONDARY [9]
- **Valeurs / CD / conditions / limites** : 128 m ≈ toute la carte sur la plupart des maps (HEURISTIC).
- **PTB 10.2.0** : non modifiée d'après les sources lues — UNCERTAIN.
- **Interactions, DR** : aucune DR attendue (lecture d'aura).
- **Synergies** : Autodidact, Botany, We'll Make It, Bond, Kindred.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 2 · info 2 · anti-tunnel 1 · soin 2 · gen 0 · endgame 1
- **Produit de la valeur** : SoloQ : voir qui est au sol / blessé et en chase (l'aura bouge), savoir où est le tueur par déduction.
- **N'en produit pas** : SWF avec vocal ; builds pure gen.
- **Écart avec le seed** : **IMPRÉCIS** (p26 : « blessés » seulement ; les mourants sont aussi montrés — ch4_7 l. 351 est correct).
- **Sources** : [9]

### Lightweight — Générale
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : durée de vie de vos griffures −3/4/5 s ; chance d'apparition des patches de griffures −60 % (espacement irrégulier) — STRONG_SECONDARY [10]
- **Valeurs / CD / conditions / limites** : un signalement communautaire affirme que l'effet d'espacement ne fonctionne plus depuis 8.6.0 — COMMUNITY_OBSERVATION [11], statut actuel du bug UNCERTAIN.
- **PTB 10.2.0** : non modifiée d'après les sources lues — UNCERTAIN.
- **Interactions, DR** : n/a.
- **Synergies** : Quick & Quiet, Sprint Burst, Iron Will, Distortion (stealth / perte de LOS).
- **Difficulté** : 2 (demande de casser la ligne de vue).
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : après une perte de LOS contre tueurs qui traquent aux griffures.
- **N'en produit pas** : contre auras / pouvoirs de pistage ; en chase à vue.
- **Écart avec le seed** : **OK** (réserve : bug possible depuis 8.6.0).
- **Sources** : [10][11]

### Spine Chill — Générale
- **Statut** : LIVE 10.1.2a (rework prévu au PTB 10.2.0).
- **Effet LIVE** : quand le tueur est à ≤ 36 m (portée fixe) et vous regarde avec ligne de vue dégagée : icône allumée ; vitesse de Blessing, Cleansing, Gate-Opening, Healing, Repairing, Sabotaging, Unhooking, Unlocking +2/4/6 % ; persiste 0,5 s — STRONG_SECONDARY [12]
- **Valeurs / CD / conditions / limites** : 36 m fixe (était 12/24/36) [12].
- **PTB 10.2.0** : **rework vérifié** (PTB) : regard du tueur dans 40 m → notification, cris bloqués 12 s et saut de fenêtre +10 % pendant 12 s, CD 40/35/30 s ; dev : « Return of vault speed Spine Chill, now with a limited duration » — STRONG_SECONDARY [13][16][24] (maintien du bonus d'action speed : UNCERTAIN).
- **Interactions, DR** : LIVE : bonus d'action speed soumis aux DR — HYPOTHESIS. PTB : bonus de saut explicitement mis en avant « grâce aux DR » [16].
- **Synergies** : Alert, Premonition (info), Lithe/Windows (PTB).
- **Difficulté** : 1
- **Valeur (HEURISTIC, LIVE)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Produit de la valeur** : SoloQ contre tueurs furtifs (Ghost Face, Myers, Pig) — alerte même sans rayon de terreur.
- **N'en produit pas** : tueurs Undetectable n'empêchent pas Spine Chill (non vérifié) mais les faux positifs en chase d'un allié la rendent bruyante.
- **Écart avec le seed** : **OK** (LIVE) ; PTB « rework, 40 m » OK mais incomplet (bonus de saut 10 %/12 s, cris bloqués, CD).
- **Sources** : [12][13][16][24]

### No One Left Behind — Générale
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : quand les portes sont alimentées : Healing et Unhooking +50/75/100 % ; les survivants que vous décrochez gagnent +10 % de force et +5 s de durée à la Haste de décrochage ; aura des autres survivants ; bonus BP Altruism — STRONG_SECONDARY [17] (voir CONFLICT-B2P26-01).
- **Valeurs / CD / conditions / limites** : historique : 4/8/12 % → 30/40/50 % → 50/75/100 % ; Haste +7 % → +10 % [17].
- **PTB 10.2.0** : **buff** Healing/Unhooking 80/90/100 % (au lieu de 50/75/100 %) — STRONG_SECONDARY [14][18].
- **Interactions, DR** : le wiki indique que la Haste de NOLB et de Babysitter « stack additively » avec la Haste de décrochage (audit phase 0) ; or la Haste basique de décrochage « does not apply once all generators are powered » (notes 10.1.0, audit) → comportement exact de NOLB en endgame : UNCERTAIN (voir Questions).
- **Synergies** : Leader, Botany, We'll Make It, Borrowed Time, Adrenaline.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 1 · anti-tunnel 0 · soin 1 · gen 0 · endgame 2
- **Produit de la valeur** : sauvetage en fin de partie (unhook au timer, soin instantané ou presque au rang III).
- **N'en produit pas** : tout le reste de la partie (inactive avant alimentation des portes).
- **Écart avec le seed** : **OK** (50/75/100 %, +10 % Haste) ; omet +5 s et l'aura des survivants. PTB 80/90/100 % OK.
- **Sources** : [14][17][18]

### Dark Sense — Générale
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : à chaque gen terminé, s'active : la prochaine fois que le tueur arrive à 24 m, son aura vous est révélée 5/7/10 s ; se désactive après usage — STRONG_SECONDARY [19]
- **Valeurs / CD / conditions / limites** : 24 m ; déclencheur = n'importe quel gen terminé.
- **PTB 10.2.0** : **buff** 8/9/10 s + auras des palettes et fenêtres dans 24 m + auras des autres survivants — STRONG_SECONDARY [13].
- **Interactions, DR** : n/a.
- **Synergies** : Alert, Kindred, Spine Chill (info) — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 1
- **Produit de la valeur** : milieu/fin de partie, pour savoir si le tueur vient vers votre gen.
- **N'en produit pas** : début de partie (aucun gen fini).
- **Écart avec le seed** : **OK** (LIVE et PTB).
- **Sources** : [13][19]

### Plunderer's Instinct — Générale
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : auras des coffres fermés, des objets dans les coffres ouverts et des objets au sol dans 32/48/64 m ; +50 % (fixe) de chance d'objet de rareté supérieure dans les coffres — STRONG_SECONDARY [20]
- **Valeurs / CD / conditions / limites** : portées doublées depuis 16/24/32 m ; bonus de rareté passé de 14/24/46 % à 50 % fixe [20].
- **PTB 10.2.0** : cité comme buff par le seed ; détail NON VÉRIFIÉ (budget épuisé) — UNCERTAIN.
- **Interactions, DR** : rareté des coffres : cumul avec Appraisal / offrandes Chest — UNCERTAIN.
- **Synergies** : Appraisal, Pharmacy, Ace in the Hole, Streetwise.
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Produit de la valeur** : builds « items » (clé, trousse) et BP.
- **N'en produit pas** : parties compétitives (temps hors gen).
- **Écart avec le seed** : **IMPRÉCIS** (valeur du bonus de rareté absente : +50 % fixe ; objets dans coffres ouverts non mentionnés).
- **Sources** : [20]

### Bound by Obsession (= Object of Obsession) — Générale (ex-Laurie Strode, général depuis 9.4.0)
- **Statut** : LIVE 10.1.2a, renommée (ancien nom Object of Obsession, conservé pour les possesseurs — audit [23]).
- **Effet LIVE** : quand le tueur lit votre aura, vous voyez la sienne pour la même durée ; si vous êtes l'Obsession, votre aura lui est révélée automatiquement toutes les 30 s ; vitesse de Cleansing, Healing, Repairing +2/4/6 % ; +100 % de chance d'être l'Obsession initiale — STRONG_SECONDARY pour la structure [21] ; valeurs LIVE 2/4/6 % et 3 s d'après les notes PTB (« from 2/4/6 % », « from 3 s ») [14][22] — voir CONFLICT-B2P26-02.
- **Valeurs / CD / conditions / limites** : révélation 3 s toutes les 30 s (LIVE, déduit des notes PTB).
- **PTB 10.2.0** : **buff** 8/9/10 % sur soin/réparation, aura 4 s (au lieu de 3 s), bénit les totems plus vite (nouveau) — STRONG_SECONDARY [14][22].
- **Interactions, DR** : action speed → DR avec autres bonus identiques — HYPOTHESIS. Contre-interaction : Distortion / Undetectable (non vérifié).
- **Synergies** : Decisive/Will to Live, Dead Hard, Kindred — HEURISTIC.
- **Difficulté** : 2 (l'aura vous expose).
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 1 · info 2 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Produit de la valeur** : contre tueurs à lecture d'aura (Nurse's Calling, BBQ, Lethal) : vous voyez le tueur en retour.
- **N'en produit pas** : si vous n'êtes pas l'Obsession et que le tueur n'a pas d'aura ; en stealth.
- **Écart avec le seed** : **IMPRÉCIS** (le retour d'aura se déclenche à **toute** lecture d'aura par le tueur, pas seulement l'effet Obsession ; +100 % de chance d'être Obsession omis). Valeurs LIVE 2/4/6 % / 3 s et PTB 8/9/10 % : OK.
- **Sources** : [14][21][22][23]

### Poised — Jane Romero
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : aura du tueur 8 s la première fois que vous réparez chaque gen ; pas de griffures pendant 20/25/30 s après qu'un gen est terminé — VERIFIED_MULTI_SOURCE via notes 9.2.0 [2][3] (fiche wiki non lue).
- **Valeurs / CD / conditions / limites** : 9.2.0 : aura 6 → 8 s ; griffures 10/12/14 → 20/25/30 s [2][3]. Changements postérieurs à 9.2.0 : non vérifiés.
- **PTB 10.2.0** : non citée par le seed ni les résumés lus — UNCERTAIN.
- **Interactions, DR** : n/a.
- **Synergies** : Lightweight, Quick & Quiet, Distortion (stealth).
- **Difficulté** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Produit de la valeur** : info à chaque nouveau gen ; fuite discrète après un gen « pop ».
- **N'en produit pas** : si vous restez sur un seul gen ; contre tueurs à aura.
- **Écart avec le seed** : **OK**.
- **Sources** : [2][3]

---

## Perks non re-vérifiées sur le web (quota WebSearch épuisé)

Pour chacune : les valeurs viennent du seed avec la mention « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » — confiance **UNCERTAIN**. Les ajouts de mémoire sont étiquetés « connaissance du modèle (antérieure à mi-2026), UNCERTAIN ». Les parties analytiques sont **HEURISTIC**.

### Down to the Last (= Sole Survivor) — Générale (ex-Laurie Strode)
- **Statut** : LIVE 10.1.2a, renommée en 9.4.0 (Sole Survivor → Down to the Last, ancien nom conservé pour les possesseurs) — VERIFIED (audit [23]).
- **Effet LIVE** : 1 jeton par survivant mort ; avec au moins un jeton, le tueur ne peut pas lire votre aura dans un rayon de 20/22/24 m — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
- **Valeurs / CD / conditions / limites** : 20/22/24 m — seed, NON RE-VÉRIFIÉ, UNCERTAIN. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : les versions historiques comportaient aussi un bonus de réparation quand vous êtes le dernier survivant ; le sens exact de la condition de portée est à revérifier.
- **PTB 10.2.0** : rework confirmé (liste des reworks : audit [23], Dev Update [16]) ; contenu (« jetons, bonus pour les portes et la trappe ») — seed, NON RE-VÉRIFIÉ, UNCERTAIN.
- **Interactions, DR, anti-synergies** : aucune DR attendue (masquage d'aura) — HEURISTIC. Anti-synergie : Bound by Obsession / Object-like perks qui révèlent votre aura (HEURISTIC).
- **Synergies** : Left Behind, Distortion, Off the Record (stealth de fin de partie) — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 0 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 2
- **Quand elle produit de la valeur (HEURISTIC)** : quand des alliés sont déjà morts, contre des tueurs à lecture d'aura (BBQ, Nurse's Calling), pour chercher la trappe.
- **Quand elle n'en produit pas (HEURISTIC)** : partie à 4 vivants (0 jeton) ; tueur sans lecture d'aura.
- **Écart avec le seed** : NON VÉRIFIABLE (renommage 9.4.0 : OK).
- **Sources** : [16][23]

### Wake Up! — Quentin Smith
- **Statut** : LIVE 10.1.2a (présumé) — UNCERTAIN.
- **Effet LIVE** : quand tous les générateurs sont finis : aura des interrupteurs de portes, les alliés voient votre aura pendant que vous ouvrez, ouverture 8/10/12,5 % plus rapide par survivant vivant — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
- **Valeurs / CD / conditions / limites** : 8/10/12,5 % par survivant vivant — seed, NON RE-VÉRIFIÉ, UNCERTAIN. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : d'anciennes versions donnaient un bonus d'ouverture fixe ; la formule « par survivant vivant » est à confirmer.
- **PTB 10.2.0** : cité comme buff (p32 du seed) — seed, NON RE-VÉRIFIÉ, UNCERTAIN.
- **Interactions, DR, anti-synergies** : bonus de vitesse d'ouverture → DR probable avec Leader — HEURISTIC/HYPOTHESIS.
- **Synergies** : Leader, Hope, Adrenaline — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 0 · chase 0 · macro 0 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 2
- **Quand elle produit de la valeur (HEURISTIC)** : fin de partie en SoloQ (trouver la porte, signaler aux alliés où aller).
- **Quand elle n'en produit pas (HEURISTIC)** : le reste de la partie ; SWF qui communique déjà les portes.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : —

### Pharmacy — Quentin Smith
- **Statut** : LIVE 10.1.2a (présumé) — UNCERTAIN.
- **Effet LIVE** : coffres ouverts 75/100/125 % plus vite, bruit réduit (−12 m), médikit « rare » garanti — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
- **Valeurs / CD / conditions / limites** : seed, NON RE-VÉRIFIÉ, UNCERTAIN. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : l'objet garanti serait l'Emergency Med-Kit, une seule fois par partie ; sa rareté (« rare » selon le seed) est à vérifier.
- **PTB 10.2.0** : cité comme buff (p32 du seed) — seed, NON RE-VÉRIFIÉ, UNCERTAIN.
- **Interactions, DR, anti-synergies** : n/a (HEURISTIC).
- **Synergies** : Plunderer's Instinct, Appraisal, Self-Care ? (non), Botany Knowledge — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 1 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : si vous arrivez sans objet et qu'un coffre est proche en début de partie.
- **Quand elle n'en produit pas (HEURISTIC)** : si vous arrivez déjà avec un Med-Kit ; parties rapides.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : —

### Detective's Hunch — David Tapp
- **Statut** : LIVE 10.1.2a (présumé) — UNCERTAIN.
- **Effet LIVE** : quand un générateur est terminé, auras des coffres, générateurs et totems dans 32/48/64 m pendant 20 s — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
- **Valeurs / CD / conditions / limites** : 32/48/64 m, 20 s — seed, NON RE-VÉRIFIÉ. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : la durée pourrait être plus courte (10 s) ; à vérifier en priorité.
- **PTB 10.2.0** : non citée par le seed — non vérifié.
- **Interactions, DR, anti-synergies** : n/a — HEURISTIC.
- **Synergies** : Small Game, Inner Strength (anti-hex), Plunderer's — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0 (anti-hex 1)
- **Quand elle produit de la valeur (HEURISTIC)** : repérer les totems restants après un gen contre builds à hex ; trouver le prochain gen.
- **Quand elle n'en produit pas (HEURISTIC)** : début de partie (avant le premier gen) ; SWF avec calls.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : —

### Aftercare — Jeff Johansen
- **Statut** : LIVE 10.1.2a (présumé) — UNCERTAIN.
- **Effet LIVE** : vous et jusqu'à 1/2/3 survivants voyez vos auras mutuelles après un décrochage ou un soin échangé, jusqu'à votre prochain crochet — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
- **Valeurs / CD / conditions / limites** : 1/2/3 survivants — seed, NON RE-VÉRIFIÉ, UNCERTAIN.
- **PTB 10.2.0** : non citée par le seed — non vérifié.
- **Interactions, DR, anti-synergies** : n/a — HEURISTIC.
- **Synergies** : Bond, Kindred, Empathy (info d'équipe) — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 0 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SoloQ altruiste, après plusieurs interactions (décrochages / soins).
- **Quand elle n'en produit pas (HEURISTIC)** : si vous êtes accroché tôt (effet perdu) ; SWF en vocal.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : —

### Breakdown — Jeff Johansen
- **Statut** : LIVE 10.1.2a ; **revertée à son ancienne version en 9.3.2 (9 déc. 2025)** — VERIFIED (audit [23]).
- **Effet LIVE** : quand on vous décroche (ou que vous vous décrochez), le crochet se casse (réparé après 180 s) et vous voyez l'aura du tueur 4/5/6 s — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : correspond à l'« ancienne version » évoquée par l'audit.
- **Valeurs / CD / conditions / limites** : 180 s, 4/5/6 s — seed, NON RE-VÉRIFIÉ, UNCERTAIN.
- **PTB 10.2.0** : non citée par le seed — non vérifié.
- **Interactions, DR, anti-synergies** : anti-synergie (pour le tueur) avec Scourge Hooks sur le crochet cassé — HEURISTIC.
- **Synergies** : Saboteur, Boil Over, Breakout (réduire les crochets disponibles) — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : crochets du sous-sol / zones sans crochets proches, contre Scourge Hooks.
- **Quand elle n'en produit pas (HEURISTIC)** : cartes denses en crochets.
- **Écart avec le seed** : NON VÉRIFIABLE (le seed ne mentionne pas l'aller-retour 9.3.0 → 9.3.2 : IMPRÉCIS sur l'historique).
- **Sources** : [23]

### Diversion — Adam Francis
- **Statut** : LIVE 10.1.2a (présumé) — UNCERTAIN.
- **Effet LIVE** : après 30/25/20 s dans le rayon de terreur, accroupi et immobile (sans être poursuivi), vous lancez un caillou jusqu'à 20 m qui crée une alerte de bruit et des griffures — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
- **Valeurs / CD / conditions / limites** : 30/25/20 s, 20 m — seed, NON RE-VÉRIFIÉ, UNCERTAIN.
- **PTB 10.2.0** : non citée par le seed — non vérifié.
- **Interactions, DR, anti-synergies** : n/a — HEURISTIC.
- **Synergies** : Quick & Quiet, Urban Evasion, Distortion (stealth) — HEURISTIC.
- **Difficulté** : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : pour détourner un tueur qui fouille une zone (après un hook, en patrouille de 3-gen).
- **Quand elle n'en produit pas (HEURISTIC)** : contre des tueurs expérimentés (alerte ignorée) ; hors rayon de terreur.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : —

### Solidarity — Jane Romero
- **Statut** : LIVE 10.1.2a (présumé) — UNCERTAIN.
- **Effet LIVE** : blessé, quand vous soignez un allié sans Med-Kit, vous vous soignez à 50/60/70 % de cette vitesse — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
- **Valeurs / CD / conditions / limites** : 50/60/70 % — seed, NON RE-VÉRIFIÉ, UNCERTAIN.
- **PTB 10.2.0** : 65/70/75 % — seed, NON RE-VÉRIFIÉ, UNCERTAIN.
- **Interactions, DR, anti-synergies** : connaissance du modèle (antérieure à mi-2026), UNCERTAIN : le transfert suit la vitesse de soin effective (bénéficie donc de Botany / Leader). Anti-synergie : Med-Kit.
- **Synergies** : Botany Knowledge, We'll Make It, Autodidact (soins sans kit) — HEURISTIC.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 2 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : deux blessés qui se soignent mutuellement : économise un soin complet.
- **Quand elle n'en produit pas (HEURISTIC)** : en jouant Med-Kit ; si vous n'êtes pas blessé.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : —

### Buckle Up — Ash Williams
- **Statut** : LIVE 10.1.2a (présumé) — UNCERTAIN.
- **Effet LIVE** : pendant que vous relevez un survivant à terre, vous voyez tous deux le tueur ; ensuite il gagne +50 % de Haste et ne laisse pas de griffures pendant 3/4/5 s — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
- **Valeurs / CD / conditions / limites** : « +50 % de Haste » — seed, NON RE-VÉRIFIÉ ; **valeur suspecte** (HEURISTIC) : très au-dessus des Haste survivant documentées ailleurs dans le projet (≈ 3-10 %) ; confusion possible avec un autre paramètre. À vérifier en priorité.
- **PTB 10.2.0** : non citée par le seed — non vérifié.
- **Interactions, DR, anti-synergies** : Haste → soumise aux DR avec d'autres Haste identiques — HYPOTHESIS.
- **Synergies** : Unbreakable, Tenacity, We'll Make It (anti-slug) — HEURISTIC.
- **Difficulté** : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 1 · gen 0 · endgame 0 (anti-slug 2)
- **Quand elle produit de la valeur (HEURISTIC)** : contre le slug : relever en sachant où est le tueur et repartir sans griffures.
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs qui accrochent systématiquement.
- **Écart avec le seed** : NON VÉRIFIABLE (valeur 50 % suspecte).
- **Sources** : —

### Mettle of Man — Ash Williams
- **Statut** : LIVE 10.1.2a (présumé) — UNCERTAIN.
- **Effet LIVE** : après 3 protection hits, le prochain coup qui devait vous mettre à terre est ignoré ; une fois soigné, votre aura est révélée au tueur quand vous êtes à plus de 12/14/16 m — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : description cohérente avec la version connue.
- **Valeurs / CD / conditions / limites** : 3 protection hits, 12/14/16 m — seed, NON RE-VÉRIFIÉ, UNCERTAIN.
- **PTB 10.2.0** : non citée par le seed — non vérifié.
- **Interactions, DR, anti-synergies** : effet « proche Endurance » (seed p31) ; interaction avec Deep Wound / dégâts de pouvoir non vérifiée — UNCERTAIN.
- **Synergies** : Babysitter, Borrowed Time, Guardian (protection hits) — HEURISTIC.
- **Difficulté** : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 2 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SWF qui prend volontairement des protection hits ; joueurs très altruistes.
- **Quand elle n'en produit pas (HEURISTIC)** : SoloQ passive (3 protection hits rarement atteints) ; après activation, l'aura révélée pénalise la furtivité.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : —

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| B2P26-C01 | Quick Gambit : alliés +3/4/5 % réparation, vous voyez leurs auras en chase, CD 40 s | [1][2][3] | LIVE (CD 40 s depuis 9.2.0) | VERIFIED_MULTI_SOURCE (CD) / STRONG_SECONDARY (effet) |
| B2P26-C02 | Potential Energy : max 10/15/20 jetons, +1 %/jeton, raté au max = −10 % gen, perte totale à la perte d'un état de santé | [4] | LIVE | STRONG_SECONDARY |
| B2P26-C03 | Autodidact : −15 % à 0 jeton, +15 %/jeton, max 3/4/5, inactif avec Med-Kit | [5] | LIVE | STRONG_SECONDARY |
| B2P26-C04 | Chemical Trap : 20 % de réparation, 40/50/60 s, Hindered 50 % 4 s | [6] | LIVE | STRONG_SECONDARY |
| B2P26-C05 | Wiretap : 40 % de réparation, 100/110/120 s, 14 m | [7] | LIVE | STRONG_SECONDARY |
| B2P26-C06 | Leader : 20/25/30 %, 10 m, 6 actions dont Unhooking/Unlocking, linger 15 s | [2][3][8] | LIVE (9.2.0) | VERIFIED_MULTI_SOURCE |
| B2P26-C07 | Empathy : blessés **et mourants**, 64/96/128 m | [9] | LIVE | STRONG_SECONDARY |
| B2P26-C08 | Lightweight : −3/4/5 s, −60 % de spawn de griffures | [10] | LIVE | STRONG_SECONDARY |
| B2P26-C09 | Spine Chill LIVE : 36 m fixe, +2/4/6 % sur 8 actions | [12] | LIVE | STRONG_SECONDARY |
| B2P26-C10 | Spine Chill PTB : 40 m, saut +10 % 12 s, cris bloqués 12 s, CD 40/35/30 s | [13][16] | PTB 10.2.0 | STRONG_SECONDARY |
| B2P26-C11 | NOLB LIVE : 50/75/100 %, Haste +10 % et +5 s | [17] | LIVE | STRONG_SECONDARY |
| B2P26-C12 | NOLB PTB : 80/90/100 % | [14][18] | PTB 10.2.0 | STRONG_SECONDARY |
| B2P26-C13 | Dark Sense LIVE 5/7/10 s à 24 m ; PTB 8/9/10 s + palettes/fenêtres + survivants | [13][19] | LIVE / PTB | STRONG_SECONDARY |
| B2P26-C14 | Plunderer's : 32/48/64 m, +50 % fixe de rareté | [20] | LIVE | STRONG_SECONDARY |
| B2P26-C15 | Bound by Obsession LIVE 2/4/6 %, 3 s ; PTB 8/9/10 %, 4 s, bénédiction | [14][22] | LIVE / PTB | STRONG_SECONDARY (voir CONFLICT-02) |
| B2P26-C16 | Poised : aura 8 s, pas de griffures 20/25/30 s | [2][3] | LIVE (9.2.0) | VERIFIED_MULTI_SOURCE |
| B2P26-C17 | Breakdown revertée à l'ancienne version en 9.3.2 | [23] | LIVE depuis 9.3.2 | VERIFIED (audit) |

## Conflits

#### CONFLICT-B2P26-01 : No One Left Behind — valeurs LIVE
- Source A : résumé de recherche wiki.gg / fandom [17] (1re requête) : Healing/Unhooking +30/40/50 %, Haste +7 %.
- Source B : résumé de recherche wiki.gg [17] (2e requête, historique) : 4/8/12 % → 30/40/50 % → **50/75/100 %** ; Haste +7 % → **+10 %** et +5 s ; notes PTB 10.2.0 [14][18] : « 80/90/100 % (from 50/75/100 %) ».
- Hypothèse : la source A résume une ancienne version présente dans la section historique de la page.
- Résolution : LIVE = 50/75/100 % et +10 % (B, 2 sources concordantes dont notes PTB) — résolu, confiance STRONG_SECONDARY.

#### CONFLICT-B2P26-02 : Bound by Obsession — valeurs LIVE vs page wiki
- Source A : résumé wiki.gg [21] : 8/9/10 % (Cleansing/Healing/Repairing), aura 4 s toutes les 30 s.
- Source B : résumés des notes PTB 10.2.0 [14][22] : 8/9/10 % « from 2/4/6 % », 4 s « from 3 s ».
- Hypothèse : la page wiki.gg affiche déjà les valeurs PTB (ou le résumé de recherche les a mélangées).
- Résolution : LIVE 10.1.2a = 2/4/6 % et 3 s (B) ; PTB = 8/9/10 % et 4 s. Confiance STRONG_SECONDARY ; à reconfirmer en lisant la page wiki (onglet LIVE / PTB).

#### CONFLICT-B2P26-03 : Lightweight — espacement des griffures
- Source A : wiki.gg [10] : −60 % de chance d'apparition des patches.
- Source B : fil BHVR [11] : l'espacement ne fonctionne plus depuis 8.6.0.
- Hypothèse : bug signalé, correction non vérifiée.
- Résolution : UNRESOLVED.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Quick Gambit — aura | « les autres survivants voient votre aura » | **vous** voyez l'aura des autres [1] | FAUX |
| Quick Gambit — valeurs/CD | 3/4/5 %, CD 40 s | idem [1][2] | OK |
| Potential Energy — perte des jetons | « si vous prenez un coup » | perte d'un état de santé par n'importe quel moyen ; pénalités de skill check raté (−20 % jetons / −10 % gen au max) [4] | IMPRÉCIS |
| Autodidact | −15 %, +15 %/jeton, max 3/4/5, pas de great | idem ; inactif avec Med-Kit [5] | OK |
| Chemical Trap | 20 %, 40/50/60 s, Hindered 50 % 4 s | idem [6] | OK |
| Wiretap | 40 %, 100/110/120 s, ~14 m | idem [7] | OK |
| Leader | purif., soin, portes, sabotage 20/25/30 %, 10 m | + Unhooking + Unlocking, linger 15 s [8] | IMPRÉCIS |
| Empathy (p26) | survivants blessés | blessés **ou mourants** [9] | IMPRÉCIS |
| Lightweight | 3/4/5 s + espacement | idem (bug possible depuis 8.6.0) [10][11] | OK |
| Spine Chill LIVE | 36 m, +2/4/6 % | idem [12] | OK |
| Spine Chill PTB | « rework, 40 m » | 40 m + saut 10 % 12 s + cris bloqués + CD 40/35/30 s [13] | OK (incomplet) |
| NOLB LIVE | 50/75/100 %, +10 % Haste | idem, + 5 s de Haste, aura des survivants [17] | OK |
| NOLB PTB | 80/90/100 % | idem [14][18] | OK |
| Dark Sense LIVE/PTB | 5/7/10 s à 24 m ; PTB 8/9/10 s + palettes/fenêtres/survivants | idem [13][19] | OK |
| Plunderer's Instinct | 32/48/64 m, « rareté supérieure plus fréquente » | +50 % fixe ; objets des coffres ouverts inclus [20] | IMPRÉCIS |
| Bound by Obsession | aura 3 s/30 s, retour d'aura, 2/4/6 % ; PTB 8/9/10 % | retour d'aura à toute lecture d'aura par le tueur ; +100 % chance d'Obsession ; valeurs OK [14][21][22] | IMPRÉCIS |
| Poised | aura 8 s, 20/25/30 s sans griffures | idem (notes 9.2.0) [2][3] | OK |
| Leader/Poised/Quick Gambit buffés en 9.2.0 (p32) | buffs 9.2.0 | confirmé [2][3] | OK |
| Down to the Last, Wake Up!, Pharmacy, Detective's Hunch, Aftercare, Breakdown, Diversion, Solidarity, Buckle Up, Mettle of Man | voir fiches | seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) | NON VÉRIFIABLE |
| Solidarity PTB 65/70/75 %, Pharmacy/Wake Up!/Plunderer's PTB buffs | PTB | non lu | NON VÉRIFIABLE |
| Buckle Up « +50 % de Haste » | +50 % | non vérifié ; valeur suspecte | NON VÉRIFIABLE (priorité) |

## Questions ouvertes

1. Relancer la vérification des 10 perks NON VÉRIFIABLES (nouvelle session avec quota WebSearch) — priorités : Buckle Up (+50 % Haste ?), Detective's Hunch (durée 20 s ?), Down to the Last (sens de la condition de portée + contenu du rework PTB), Wake Up! (formule par survivant vivant), Pharmacy (rareté du Med-Kit garanti).
2. NOLB : la Haste de décrochage de base « ne s'applique pas une fois tous les gens alimentés » (notes 10.1.0) — alors sur quelle base s'ajoutent +10 % / +5 s de NOLB en endgame ?
3. Quick Gambit : le bonus de réparation s'applique-t-il à tous les alliés ou seulement à ceux dont l'aura est révélée ?
4. Spine Chill PTB : le bonus d'action speed 2/4/6 % est-il supprimé ?
5. Lightweight : bug d'espacement (8.6.0) corrigé ?
6. Page wiki.gg de Bound by Obsession : affiche-t-elle les valeurs PTB (cf. CONFLICT-02) ?
7. Contenu exact du buff 9.1.0 de Potential Energy (cité p32 du seed).
8. Quelles perks de ce lot figurent parmi les 26 ajustées « à cause des DR » au PTB 10.2.0 ?

## Sources

[1] Quick Gambit — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Quick_Gambit — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[2] Patch Notes 9.2.X — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Patch_Notes_9.2.X — consulté le 27/09/2026 via WebSearch
[3] 9.2.0 | Sinister Grace — support BHVR — https://support.deadbydaylight.com/hc/en-us/articles/41607788392212-9-2-0-Sinister-Grace — consulté le 27/09/2026 via WebSearch
[4] Potential Energy — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Potential_Energy — consulté le 27/09/2026 via WebSearch
[5] Autodidact — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Autodidact — consulté le 27/09/2026 via WebSearch
[6] Chemical Trap — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Chemical_Trap — consulté le 27/09/2026 via WebSearch
[7] Wiretap — Official Dead by Daylight Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Wiretap — consulté le 27/09/2026 via WebSearch
[8] Leader — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Leader — consulté le 27/09/2026 via WebSearch
[9] Empathy — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Empathy — consulté le 27/09/2026 via WebSearch
[10] Lightweight — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Lightweight — consulté le 27/09/2026 via WebSearch
[11] « Lightweight perk no longer makes scratch marks inconsistent… since 8.6.0 » — forums BHVR — https://forums.bhvr.com/dead-by-daylight/discussion/445667/lightweight-perk-no-longer-makes-scratch-marks-inconsistent-or-spaces-them-out-since-8-6-0 — consulté le 27/09/2026 via WebSearch
[12] Spine Chill — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Spine_Chill — consulté le 27/09/2026 via WebSearch
[13] DBD Perk Changes: All 58 Killer and Survivor Perks in the 10.2.0 PTB — timesaver.gg — https://timesaver.gg/blog/dbd-perk-changes-10-2-0 — consulté le 27/09/2026 via WebSearch
[14] Dead by Daylight v10.2.0 PTB — Perk Overhaul — patched.gg — https://patched.gg/games/dead-by-daylight/1020-ptb-patch-notes — consulté le 27/09/2026 via WebSearch
[15] 10.2.0 PTB Patch Notes — BHVR KB 559 — https://forums.bhvr.com/dead-by-daylight/kb/articles/559-10-2-0-ptb-patch-notes — consulté le 27/09/2026 via WebSearch (URL seulement)
[16] Dev Update: 10.2.0 Perks Update — forums BHVR — https://forums.bhvr.com/dead-by-daylight/discussion/472297/dev-update-10-2-0-perks-update — consulté le 27/09/2026 via WebSearch
[17] No One Left Behind — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/No_One_Left_Behind — consulté le 27/09/2026 via WebSearch
[18] Dead by Daylight 10.2.0 PTB Patch Notes — PatchTLDR — https://patchtldr.com/en/dead-by-daylight/patch-1020-ptb — consulté le 27/09/2026 via WebSearch
[19] Dark Sense — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Dark_Sense — consulté le 27/09/2026 via WebSearch
[20] Plunderer's Instinct — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Plunderer's_Instinct — consulté le 27/09/2026 via WebSearch
[21] Bound by Obsession (Object of Obsession) — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Bound_by_Obsession — consulté le 27/09/2026 via WebSearch
[22] 10.2.0 PTB — BetaHub (Dead by Daylight) — https://app.betahub.io/projects/pr-5642738318/releases/5737 — consulté le 27/09/2026 via WebSearch
[23] Audit interne phase 0 — kb/seed/audit_phase0.txt (9.3.2 : revert de Breakdown ; 9.4.0 : renommages des perks de Laurie) — lu le 27/09/2026
[24] Dead by Daylight (X), annonce PTB 10.2.0 — https://x.com/DeadbyDaylight/status/2099906208844960067 — consulté le 27/09/2026 via WebSearch
