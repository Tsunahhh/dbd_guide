# Lot 2 — Perks survivant, page 23 du guide seed (tiers S et A)

- Référence : **LIVE 10.1.2a** (17/09/2026). **PTB 10.2.0** (15-21/09/2026) = non LIVE, toujours étiqueté PTB.
- Méthode : WebSearch seul (résumés de recherche ; WebFetch bloqué). Confiance plafonnée à STRONG_SECONDARY, sauf quand une valeur recoupe `kb/seed/audit_phase0.txt` (lot 1, notes officielles lues), noté [15].
- **Limite de session majeure** : le quota WebSearch de la session (200 appels, partagé entre agents) a été épuisé après **10 recherches** de ce lot. Seules 7 perks sur 21 ont pu être vérifiées en ligne (Windows of Opportunity, Five Moves Ahead, Will to Live, Lithe, Sprint Burst, Deliverance, Adrenaline en partie). Pour les 14 autres, la ligne « Effet LIVE » reprend la connaissance du modèle, étiquetée **UNCERTAIN (non vérifié cette session)**, et l'écart avec le seed est noté **NON VÉRIFIABLE**. À reprendre dans un lot ultérieur.
- Les notes de valeur (0-3) sont **HEURISTIC** (avis de l'auteur du lot, pas des données).
- DR = Diminishing Returns (9.6.0, [15]) : entre modificateurs **identiques** issus de Powers / Items / Perks / Offerings, le plus fort compte à 100 %, puis 50 / 25 / 12,5 / 5 %. Les add-ons sont exclus. La liste exacte des modificateurs concernés n'est pas publiée ; les interactions DR ci-dessous sont donc des **HYPOTHESIS**, sauf mention contraire.

Périmètre (21 perks, seed l. 95-199) : Windows of Opportunity, Will to Live, Lithe, Adrenaline, Sprint Burst, Off the Record, Five Moves Ahead, Déjà Vu, Resilience, Kindred, Unbreakable, Resurgence, Dead Hard, Finesse, Prove Thyself, Background Player, Made for This, Bond, Iron Will, Hyperfocus, Deliverance.

---

## Tier S du seed

### Windows of Opportunity — Kate Denson
- **Statut** : LIVE 10.1.2a ; **rework au PTB 10.2.0** (non LIVE).
- **Effet LIVE** : révèle en permanence les auras des palettes, fenêtres et murs cassables à 24/28/32 m. STRONG_SECONDARY [6][3]
- **Valeurs / CD / conditions / limites** : 24/28/32 m (LIVE, VERIFIED_MULTI_SOURCE [6][3]). **Cooldown LIVE contesté** : aucun selon le wiki fandom (supprimé en 5.3.0 ; la mention revenue dans la description en 7.2.0 serait purement visuelle) vs 30/25/20 s selon timesaver → CONFLICT-L2P23-01.
- **PTB 10.2.0** : fenêtres seulement, rayon **24 m fixe**, fenêtres franchies 10 % plus vite, cooldown 40/35/30 s après un saut de fenêtre. BHVR : « specialize in Windows » ; l'ancien effet se retrouve avec Dark Sense (PTB) ou Windows + Five Moves Ahead. VERIFIED_MULTI_SOURCE [1][2][3][4][5] (PTB)
- **Interactions, DR, anti-synergies** : redondante avec Five Moves Ahead en LIVE (palettes lues deux fois). Au PTB, le +10 % de vitesse de saut de fenêtre se cumulerait avec d'autres bonus de saut (Resilience, Finesse) et serait sans doute soumis aux DR (HYPOTHESIS).
- **Synergies** : Lithe, Finesse, Resilience (build « chase » du seed) ; Dead Hard / Sprint Burst pour atteindre la tile repérée.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 3 · SWF 2 · chase 3 · macro 1 · info 2 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Joueurs qui ne connaissent pas encore les cartes procédurales : on repère la prochaine tile sans la chercher, donc la chase dure plus longtemps.
  - Cartes ou zones denses en fenêtres et murs : on planifie son itinéraire avant le contact.
- **Quand elle n'en produit pas** :
  - Joueur expert qui lit déjà la carte, et sa valeur tombe aussi contre les tueurs qui ignorent les palettes (Blight, Nurse).
  - Palettes déjà consommées en fin de partie : l'aura ne montre plus que des structures faibles.
- **Écart avec le seed** : LIVE OK (24/28/32 m). PTB IMPRÉCIS : le rayon PTB (24 m fixe) n'est pas mentionné. Le seed passe aussi sous silence le cooldown LIVE contesté.
- **Sources** : [1][2][3][4][5][6]

### Will to Live (= Decisive Strike) — Générale (ex-Laurie Strode)
- **Statut** : renommée (ex-Decisive Strike) ; perk générale pour qui ne possède pas le chapitre HALLOWEEN, depuis le retrait de la licence (janvier 2026 ; 9.4.0 selon [15]).
- **Effet LIVE** : pendant 40/50/60 s après le décrochage, tant que les générateurs ne sont pas tous réparés : si le tueur vous ramasse, un skill check spécial vous libère et l'étourdit 4 s ; vous devenez l'Obsession. Réussir ou rater le skill check désactive la perk pour le reste de l'épreuve. STRONG_SECONDARY [10] ; 40/50/60 s et stun de 4 s confirmés par [15].
- **Valeurs / CD / conditions / limites** : 40/50/60 s (LIVE) ; stun de 4 s (LIVE) ; usage unique ; se désactive aussi sur une action conspicuous (réparer, soigner, etc. ; formulation du seed et de [15], non relue dans le résumé [10]).
- **PTB 10.2.0** : non modifiée d'après les sources lues (absente des résumés [1][4]). UNCERTAIN, faute d'avoir lu la liste complète des 58 perks.
- **Interactions, DR, anti-synergies** : les protections de décrochage de base (Endurance + 10 % Haste 10 s + Elusive 10 s, 10.1.0 [15]) couvrent déjà le début de la fenêtre. Anti-synergie comportementale : toute action d'objectif la coupe, ce qui pousse à « jouer caché » pendant 40-60 s.
- **Synergies** : Off the Record (le tueur ne voit plus votre aura) ; Resurgence et Dead Hard (build « 82 % » du seed, corrélation NightLight non vérifiée) ; Babysitter chez le sauveteur.
- **Difficulté** : 2 (sans usage, il faut éviter toute action conspicuous pendant la fenêtre)
- **Valeur (HEURISTIC, 0-3)** : SoloQ 3 · SWF 3 · chase 1 · macro 1 · info 0 · anti-tunnel 3 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Contre un tueur qui tunnel juste après le décrochage : les 4 s de stun + la nouvelle chase font gagner 20-40 s à l'équipe (ordre de grandeur HEURISTIC).
  - Menace invisible : un tueur qui la soupçonne hésite à ramasser (valeur en « perk deduction »).
- **Quand elle n'en produit pas** :
  - Le tueur slugge (ne ramasse pas) ou attend l'expiration de la fenêtre, ou vous réparez / soignez trop tôt.
  - Tous les générateurs sont faits : la perk est inactive.
- **Écart avec le seed** : OK (40/50/60 s, 4 s, Obsession, désactivations).
- **Sources** : [10][15]

### Lithe — Feng Min
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : après un **rushed vault** (saut rapide de fenêtre ou de palette), +50 % de Haste pendant 3 s ; provoque Exhausted 60/50/40 s. Selon les résumés, « rushed » = saut rapide (fast vault), sans le saut moyen. STRONG_SECONDARY [11] ; exclusion du saut moyen : UNCERTAIN (une seule source faible [12]).
- **Valeurs / CD / conditions / limites** : 50 % / 3 s / 60/50/40 s (LIVE). Ne se déclenche pas si vous êtes déjà Exhausted.
- **PTB 10.2.0** : non modifiée d'après les sources lues (UNCERTAIN).
- **Interactions, DR, anti-synergies** : une seule perk d'Exhaustion utile à la fois (Sprint Burst, Dead Hard, Background Player, Adrenaline qui l'ignore). Haste + Haste de base au décrochage (10 %) : cumul sans doute soumis aux DR (HYPOTHESIS).
- **Synergies** : Windows of Opportunity (trouver la fenêtre) ; Finesse (le saut est plus court, le boost part plus tôt) ; Vigil.
- **Difficulté** : 2 (il faut un vrai fast vault, donc arriver droit sur la fenêtre avec de l'élan)
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 3 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Vous choisissez quand l'utiliser (contrairement à Sprint Burst) : sur un fast vault de fenêtre ou de palette lâchée, le boost de 3 s ouvre assez de distance pour une nouvelle tile.
- **Quand elle n'en produit pas** :
  - Zones mortes sans fenêtre, ou tueurs à mobilité (Blight, Nurse) qui ignorent la distance gagnée.
- **Écart avec le seed** : IMPRÉCIS (« saut moyen ou rapide » : les sources parlent de rushed vault, et une source l'assimile au seul fast vault). Valeurs OK.
- **Sources** : [11][12]

### Adrenaline — Meg Thomas
- **Statut** : LIVE 10.1.2a ; modifiée en 10.1.0 [15].
- **Effet LIVE** : quand les portes sont alimentées, soigne instantanément d'un état de santé (à terre compris ; si vous êtes accroché, l'effet attend votre décrochage), +50 % de Haste ; ignore l'Exhausted existant, puis vous rend Exhausted 60/50/40 s. STRONG_SECONDARY [14]
- **Valeurs / CD / conditions / limites** : durée de la Haste **contestée** : 4 s selon les notes 10.1.0 relues par le lot 1 [15] ; 3 s selon le résumé wiki [14], sans doute en cache antérieur → CONFLICT-L2P23-03.
- **PTB 10.2.0** : non modifiée d'après les sources lues (UNCERTAIN).
- **Interactions, DR, anti-synergies** : ignore l'Exhausted, donc compatible avec une autre perk d'Exhaustion. Pas de valeur si tous les survivants sont déjà morts ou si les gens ne sont jamais finis.
- **Synergies** : Sprint Burst / Lithe (deux Exhaustion) ; Hope (Haste de fin de partie, cumul soumis aux DR : HYPOTHESIS).
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 3
- **Quand elle produit de la valeur** :
  - Le dernier gen est fait pendant une chase ou quand vous êtes à terre : un état de santé gratuit + Haste retournent une fin de partie.
- **Quand elle n'en produit pas** :
  - Partie perdue avant les portes, ou tueur qui 3-gen et ne laisse jamais alimenter les portes.
- **Écart avec le seed** : OK si l'on retient 4 s (notes 10.1.0 [15]) ; conflit de sources signalé.
- **Sources** : [14][15]

### Sprint Burst — Meg Thomas
- **Statut** : LIVE 10.1.2a ; **nerf 10.1.0** : Haste 3 → 2 s.
- **Effet LIVE** : quand vous commencez à courir, +50 % de Haste pendant 2 s ; Exhausted 60/50/40 s. VERIFIED_MULTI_SOURCE [13][15]
- **Valeurs / CD / conditions / limites** : 50 % / 2 s / 60/50/40 s (LIVE). Déclenchement automatique (d'où la marche pour la conserver).
- **PTB 10.2.0** : non modifiée d'après les sources lues (UNCERTAIN).
- **Interactions, DR, anti-synergies** : auto-déclenchement : gâchée si vous courez sans raison. Une seule Exhaustion utile ; Vigil raccourcit la récupération.
- **Synergies** : Adrenaline ; perks d'info (Kindred, Spine Chill…) pour partir avant le contact.
- **Difficulté** : 2 (il faut marcher pour la garder)
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 2 · macro 1 · info 0 · anti-tunnel 1 · soin 0 · gen 1 · endgame 1
- **Quand elle produit de la valeur** :
  - Dès l'arrivée du tueur sur le gen : 2 s de Haste ≈ 1,5 m de plus que sans perk (HEURISTIC), assez pour atteindre une tile au lieu de prendre le coup au sol.
- **Quand elle n'en produit pas** :
  - Tueurs furtifs (sans rayon de terreur) : on la déclenche trop tard. Et si vous oubliez de marcher, elle est en cooldown au moment où il le faut.
- **Écart avec le seed** : OK (2 s, nerf 10.1.0).
- **Sources** : [13][15]

### Off the Record — Zarina Kassir
- **Statut** : LIVE 10.1.2a ; 9.2.0 retire l'Endurance, 9.2.2 la rend avec une durée de 30/35/40 s [15].
- **Effet LIVE** : après le décrochage, pendant 30/35/40 s : Endurance, gémissements réduits de 100 %, aura cachée au tueur. Durée et Endurance : STRONG_SECONDARY via [15] (notes 9.2.2) ; texte exact **non relu cette session** (quota).
- **Valeurs / CD / conditions / limites** : 30/35/40 s (LIVE, [15]). Condition « tant que des générateurs restent à réparer » : UNCERTAIN. Désactivation sur action conspicuous : affirmée par le seed (ch. 4-7), non vérifiée.
- **PTB 10.2.0** : non vérifiée (UNCERTAIN).
- **Interactions, DR, anti-synergies** : l'Endurance de la perk double celle des protections de base (10 s, 10.1.0) ; un seul état d'Endurance à la fois, donc son vrai apport vient des 20-30 s après la fin des protections de base (HYPOTHESIS). Endurance puis Deep Wound : Made for This ou un soin deviennent prioritaires.
- **Synergies** : Will to Live (fenêtres qui se recouvrent) ; Resurgence ; Iron Will n'apporte rien pendant la fenêtre (redondance).
- **Difficulté** : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 3 · SWF 2 · chase 1 · macro 1 · info 0 · anti-tunnel 3 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Tunnel juste après les protections de base : un coup encaissé en plus + aucune aura à suivre pour le tueur (contre Nemesis, BBQ, etc.).
- **Quand elle n'en produit pas** :
  - Tueur qui ne tunnel pas ; ou gens tous faits.
- **Écart avec le seed** : durée OK ([15]) ; Endurance OK selon 9.2.2 [15] (CONFLICT-R2-02 du lot 1 à clore) ; conditions NON VÉRIFIABLE cette session.
- **Sources** : [15]

### Five Moves Ahead — Kwon Tae-young
- **Statut** : LIVE 10.1.2a (perk de la 9.5.0 [15]) ; **modifiée au PTB 10.2.0**.
- **Effet LIVE** : dans le rayon de terreur ou en poursuite : auras des 5 palettes ou fenêtres les plus proches ; après avoir lâché une palette, vous repartez 50 % plus tôt ; cooldown de 40/35/30 s après un lâcher de palette. STRONG_SECONDARY [8][9]. La présence des fenêtres en LIVE se déduit du Dev Update (« removed visibility of Windows » au PTB) [2].
- **Valeurs / CD / conditions / limites** : 5 éléments ; 50 % ; 40/35/30 s (LIVE).
- **PTB 10.2.0** : palettes seulement (fenêtres retirées). Les résumés présentent aussi « added 50 % earlier movement after dropping a pallet » comme une nouveauté PTB, alors que d'autres résumés placent déjà cet effet en LIVE → CONFLICT-L2P23-02. VERIFIED_MULTI_SOURCE pour « palettes seulement » [2][5][17].
- **Interactions, DR, anti-synergies** : au PTB, Windows (fenêtres) et Five Moves Ahead (palettes) deviennent complémentaires ; en LIVE, elles se recoupent.
- **Synergies** : Lithe (vault sur palette lâchée), Resilience, Dead Hard.
- **Difficulté** : 2 (il faut du timing sur le lâcher de palette)
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 3 · macro 0 · info 2 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Loops de palette : repartir plus tôt après le lâcher réduit le risque de prendre un coup à travers la palette et donne une avance directe sur le tueur.
- **Quand elle n'en produit pas** :
  - Perk inactive hors rayon de terreur ou hors poursuite. Et contre les tueurs anti-palette (Blight, Spirit), où l'on lâche peu de palettes.
- **Écart avec le seed** : LIVE OK. PTB IMPRÉCIS : « +50 % de vitesse après le lâcher » est faux dans les termes (il s'agit de repartir 50 % plus tôt, pas de Haste), et il n'est pas établi que ce soit un ajout PTB.
- **Sources** : [2][5][7][8][9][17]

---

## Tier A du seed

> Pour les 14 perks suivantes, **aucune recherche web n'a pu être faite** (quota épuisé). Les effets sont donnés d'après la connaissance du modèle, étiquetés UNCERTAIN, pour structurer la reprise. Aucune correction du seed n'en est tirée.

### Déjà Vu — Générale
- **Statut** : LIVE (présumée).
- **Effet LIVE** : auras des 3 générateurs les plus proches les uns des autres ; réparation 4/5/6 % plus rapide sur ces gens. UNCERTAIN. Point à vérifier : l'aura est-elle permanente (seed) ou limitée à 30 s au début de l'épreuve et à chaque gen terminé (souvenir du modèle, versions 6.x) ?
- **Valeurs / CD / conditions / limites** : 4/5/6 % (UNCERTAIN).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : se cumule avec Resilience et Prove Thyself (vitesse de réparation) : cumul probablement soumis aux DR 9.6.0 (HYPOTHESIS).
- **Synergies** : Prove Thyself, Hyperfocus, Stake Out (builds « gen »).
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 3 · SWF 1 · chase 0 · macro 3 · info 2 · anti-tunnel 0 · soin 0 · gen 2 · endgame 0
- **Quand elle produit de la valeur** :
  - En SoloQ : elle montre le 3-gen et oriente les réparations vers les gens les plus dispersés, avant que le tueur ne s'enferme dans un 3-gen.
- **Quand elle n'en produit pas** :
  - En SWF, un joueur qui connaît la carte ou l'équipe au vocal fait déjà ce travail.
- **Écart avec le seed** : NON VÉRIFIABLE (permanence de l'aura à trancher).
- **Sources** : aucune cette session.

### Resilience — Générale
- **Statut** : LIVE (présumée) ; buff annoncé au PTB 10.2.0 selon le seed.
- **Effet LIVE** : blessé : +3/6/9 % de vitesse pour réparer, soigner, saboter, décrocher, purifier / bénir, ouvrir les portes, déverrouiller et sauter. UNCERTAIN.
- **Valeurs / CD / conditions / limites** : 3/6/9 % (UNCERTAIN).
- **PTB 10.2.0** : 7/8/9 % selon le seed ; **non retrouvé** dans les résumés lus ([1] ne la cite pas). UNCERTAIN.
- **Interactions, DR, anti-synergies** : bonus de vitesse de saut et de réparation cumulés avec Finesse, Déjà Vu, Prove Thyself : DR probables (HYPOTHESIS). Anti-synergie de rôle : pousse à rester blessé.
- **Synergies** : No Mither (blessé en permanence), Lithe, Windows.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 2 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 2 · endgame 1
- **Quand elle produit de la valeur** :
  - Partie jouée blessé (tueurs à Deep Wound / Mangled, pas de soin rentable) : bonus passif sur tout.
- **Quand elle n'en produit pas** :
  - Joueur qui se soigne systématiquement, ou tueur « one-shot ».
- **Écart avec le seed** : NON VÉRIFIABLE (LIVE et PTB).
- **Sources** : aucune.

### Kindred — Générale
- **Statut** : LIVE (présumée).
- **Effet LIVE** : vous accroché : tous les survivants voient les auras les uns des autres, et celle du tueur s'il est à 8/12/16 m ou moins du crochet ; même effet pour vous quand un autre survivant est accroché. UNCERTAIN.
- **Valeurs / CD / conditions / limites** : 8/12/16 m (UNCERTAIN).
- **PTB 10.2.0** : 14/15/16 m selon le seed ; non vérifié. UNCERTAIN.
- **Interactions, DR, anti-synergies** : redondante avec Bond pour les auras alliées. L'audit relève une incohérence interne du seed sur Kindred [15].
- **Synergies** : Déjà Vu (SoloQ), Sprint Burst, Babysitter / Borrowed Time pour le sauveteur.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 3 · SWF 0 · chase 0 · macro 3 · info 3 · anti-tunnel 1 · soin 0 · gen 1 · endgame 1
- **Quand elle produit de la valeur** :
  - SoloQ : évite le double sauvetage et révèle le camping (le tueur reste près du crochet).
- **Quand elle n'en produit pas** :
  - SWF au vocal ; et tueur qui patrouille juste hors du rayon.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune.

### Unbreakable — Bill Overbeck
- **Statut** : LIVE ; limitée en 9.5.0 [15].
- **Effet LIVE** : une fois par épreuve, quand le tueur vous met à terre, vous pouvez vous relever entièrement seul ; récupération 25/30/35 % plus rapide. Limite 9.5.0 (mises à terre causées par le tueur, une fois par épreuve) : STRONG_SECONDARY [15] ; pourcentages UNCERTAIN.
- **Valeurs / CD / conditions / limites** : une fois par épreuve (LIVE, [15]) ; 25/30/35 % (UNCERTAIN).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : l'auto-récupération basekit LIVE (sans maintenir de bouton, depuis 9.2.0 [15]) réduit le coût d'attente. Vitesse de récupération cumulée avec Tenacity / Flip-Flop : DR probables (HYPOTHESIS).
- **Synergies** : Tenacity, Flip-Flop, Power Struggle, No Mither.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Contre les tueurs qui sluggent (Nurse, Blight, Oni en fin de partie) : un relever gratuit.
- **Quand elle n'en produit pas** :
  - Tueur qui accroche toujours ; mises à terre non causées par le tueur (exclues depuis 9.5.0).
- **Écart avec le seed** : conditions OK ([15]) ; valeurs NON VÉRIFIABLE.
- **Sources** : [15]

### Resurgence — Jill Valentine
- **Statut** : LIVE (présumée).
- **Effet LIVE** : quand vous êtes décroché (ou vous décrochez seul), vous gagnez immédiatement 50/60/70 % de progression de soin. UNCERTAIN.
- **Valeurs / CD / conditions / limites** : 50/60/70 % (UNCERTAIN).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : se combine mal avec Will to Live et Off the Record : finir le soin est une action conspicuous qui les désactive (à vérifier).
- **Synergies** : Self-Care / Botany Knowledge ; Boon: Circle of Healing.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 3 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 3 · gen 1 · endgame 0
- **Quand elle produit de la valeur** :
  - SoloQ où personne ne vient soigner : le soin est fini en quelques secondes après le décrochage.
- **Quand elle n'en produit pas** :
  - Tueurs qui ignorent la santé (Deep Wound, one-shot) ou tunnel immédiat.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune.

### Dead Hard — David King
- **Statut** : LIVE (présumée).
- **Effet LIVE** : après un décrochage, blessé et en course : bouton de capacité active = protection brève contre le coup (0,5 s selon le seed) ; Exhausted 60/50/40 s. UNCERTAIN (nature exacte : Endurance ou invulnérabilité, versions 2022-2023 ; non vérifié).
- **Valeurs / CD / conditions / limites** : 0,5 s ; 60/50/40 s (UNCERTAIN).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : perk d'Exhaustion (une seule utile) ; ne s'active qu'après un décrochage.
- **Synergies** : Resurgence, Will to Live, Vigil.
- **Difficulté** : 3 (timing contre la latence et les attaques à retardement)
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 2 · macro 0 · info 0 · anti-tunnel 2 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Pour atteindre une palette ou une fenêtre après un décrochage en sécurité : le coup est absorbé au moment choisi.
- **Quand elle n'en produit pas** :
  - Contre les tueurs capables de retarder leur attaque (le tueur attend la fin de la fenêtre), ou avant votre premier crochet.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune.

### Finesse — Lara Croft
- **Statut** : LIVE (présumée).
- **Effet LIVE** : en bonne santé, sauts rapides 20 % plus rapides ; cooldown de 40/35/30 s après un saut rapide. UNCERTAIN.
- **Valeurs / CD / conditions / limites** : 20 % ; 40/35/30 s (UNCERTAIN).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : conditions opposées à Resilience (en bonne santé vs blessé) : les deux ne sont jamais actives en même temps (FACT logique, si les conditions sont exactes). Vitesse de saut soumise aux DR avec Windows PTB (HYPOTHESIS).
- **Synergies** : Lithe, Windows.
- **Difficulté** : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 2 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Premier contact en bonne santé sur une fenêtre forte : le saut plus court fait rater la fente au tueur.
- **Quand elle n'en produit pas** :
  - Une fois blessé (le reste de la chase).
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune.

### Prove Thyself — Dwight Fairfield
- **Statut** : LIVE (présumée).
- **Effet LIVE** : le seed dit « +6/8/10 % par survivant à 4 m, pour tous ». La mécanique exacte (cumul par survivant ou non, bonus aux coéquipiers) n'est pas vérifiée. UNCERTAIN.
- **Valeurs / CD / conditions / limites** : 4 m ; 6/8/10 % (UNCERTAIN).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : plusieurs Prove Thyself sur le même gen = modificateurs identiques, donc DR très probables (HYPOTHESIS). Réparer à plusieurs est inefficace contre les tueurs à zone (Pop, Surge, Nurse).
- **Synergies** : Déjà Vu, Resilience, Hyperfocus.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 2 · endgame 1
- **Quand elle produit de la valeur** :
  - SWF qui regroupe volontairement 2-3 réparateurs sur le dernier gen.
- **Quand elle n'en produit pas** :
  - SoloQ dispersée, ou tueur qui punit le groupe (Legion, Plague, Myers).
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune.

### Background Player — Renato Lyra
- **Statut** : LIVE (présumée).
- **Effet LIVE** : quand le tueur ramasse un survivant, vous avez 10 s pour commencer à courir et gagner +50 % de Haste pendant 5 s ; Exhausted 30/25/20 s (seed). UNCERTAIN. L'audit signale une **incohérence interne du seed** sur cette perk [15].
- **Valeurs / CD / conditions / limites** : 10 s ; 50 % / 5 s ; 30/25/20 s (UNCERTAIN).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : Exhaustion (une seule utile).
- **Synergies** : Flashlight / Flashbang (sauvetage au ramassage), Kindred.
- **Difficulté** : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 3 · chase 1 · macro 2 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - SWF qui planifie les sauvetages au ramassage ou le trade du crochet.
- **Quand elle n'en produit pas** :
  - Aucun ramassage (slug) ou déjà Exhausted.
- **Écart avec le seed** : NON VÉRIFIABLE (et incohérence interne du seed à résoudre).
- **Sources** : [15]

### Made for This — Gabriel Soma
- **Statut** : LIVE (présumée).
- **Effet LIVE** : +3 % de Haste avec Deep Wound ; quand vous finissez de soigner un allié alors que vous êtes blessé : Endurance 6/8/10 s (seed). UNCERTAIN (Haste peut-être 1/2/3 % selon les versions).
- **Valeurs / CD / conditions / limites** : 3 % ; 6/8/10 s (UNCERTAIN).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : Haste cumulée avec d'autres Haste (Hope, protections de base) : DR probables (HYPOTHESIS).
- **Synergies** : Off the Record / Dead Hard (qui donnent du Deep Wound) ; perks de soin.
- **Difficulté** : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 1 · macro 1 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Soigner un allié sous pression : l'Endurance vous protège quand le tueur revient.
- **Quand elle n'en produit pas** :
  - Rarement blessé en soignant, ou peu de Deep Wound dans la partie.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune.

### Bond — Dwight Fairfield
- **Statut** : LIVE (présumée).
- **Effet LIVE** : auras des autres survivants dans un rayon de 20/28/36 m. UNCERTAIN.
- **Valeurs / CD / conditions / limites** : 20/28/36 m (UNCERTAIN).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : redondante avec Kindred (pendant les crochets) et Empathy.
- **Synergies** : Prove Thyself, Leader, Déjà Vu.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 0 · chase 1 · macro 2 · info 2 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Quand elle produit de la valeur** :
  - SoloQ : ne pas amener le tueur sur un allié qui répare, et trouver un soigneur.
- **Quand elle n'en produit pas** :
  - En SWF au vocal.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune.

### Iron Will — Jake Park
- **Statut** : LIVE (présumée).
- **Effet LIVE** : blessé, gémissements de douleur réduits ; inactive si vous êtes Exhausted. Le seed donne 80/90/100 % ; la connaissance du modèle suggère 50/75/100 % (versions antérieures). UNCERTAIN, à vérifier en priorité.
- **Valeurs / CD / conditions / limites** : pourcentages UNCERTAIN ; condition non-Exhausted (UNCERTAIN).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : anti-synergie avec les perks d'Exhaustion (Iron Will est coupée pendant l'Exhausted qu'elles provoquent). Redondante pendant Off the Record.
- **Synergies** : Distortion, Lucky Break (discrétion complète).
- **Difficulté** : 2 (il faut savoir casser la ligne de vue)
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 2 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Mindgames et fins de chase à l'écoute, surtout contre les tueurs qui pistent au son.
- **Quand elle n'en produit pas** :
  - Build à perks d'Exhaustion ; tueurs à aura ou à pouvoir global.
- **Écart avec le seed** : NON VÉRIFIABLE (écart probable sur les pourcentages).
- **Sources** : aucune.

### Hyperfocus — Rebecca Chambers
- **Statut** : LIVE (présumée).
- **Effet LIVE** : chaque great skill check en réparation ou en soin donne un jeton (max 6). Par jeton : skill checks +4 % plus fréquents, aiguille +4 % plus rapide, bonus de progression du great +10/20/30 %. Jetons perdus sur un good, un raté ou un arrêt. UNCERTAIN.
- **Valeurs / CD / conditions / limites** : 6 jetons ; 4 % ; 10/20/30 % (UNCERTAIN).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : **soumise aux DR** (chance de skill check, au sein du rôle survivant ; seuls les add-ons sont exclus) : STRONG_SECONDARY [15], qui corrige l'ancienne affirmation « Hyperfocus hors DR ». Anti-synergie avec les tueurs à skill checks difficiles (Unnerving Presence, Merciless Storm, Doctor).
- **Synergies** : Stake Out (goods convertis en greats), Déjà Vu, Prove Thyself.
- **Difficulté** : 3 (il faut enchaîner les greats)
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 1 · gen 3 · endgame 0
- **Quand elle produit de la valeur** :
  - Joueur régulier aux greats, sur un gen solo sans interruption.
- **Quand elle n'en produit pas** :
  - Tueurs qui interrompent souvent, qui déforment les skill checks, ou en cas de latence.
- **Écart avec le seed** : NON VÉRIFIABLE (texte) ; le seed ne dit rien des DR (IMPRÉCIS au regard de [15]).
- **Sources** : [15]

### Deliverance — Adam Francis
- **Statut** : LIVE ; **nerf 10.1.0**.
- **Effet LIVE** : une fois par épreuve, après avoir décroché un allié en sécurité, vous pouvez vous décrocher seul ; ce décrochage vous rend Broken 160/140/120 s (était 100/80/60 s). VERIFIED_MULTI_SOURCE [13][15]
- **Valeurs / CD / conditions / limites** : Broken 160/140/120 s (LIVE) ; décrochage « safe » requis.
- **PTB 10.2.0** : non modifiée d'après les sources lues (UNCERTAIN).
- **Interactions, DR, anti-synergies** : le Broken empêche tout soin (Resurgence, Adrenaline sans effet de soin pendant la durée : HYPOTHESIS, selon la définition de Broken).
- **Synergies** : Kindred, Borrowed Time / Babysitter (décrochage sûr), Off the Record.
- **Difficulté** : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 3 · SWF 1 · chase 0 · macro 2 · info 0 · anti-tunnel 1 · soin 0 · gen 1 · endgame 1
- **Quand elle produit de la valeur** :
  - SoloQ où personne ne vient vous chercher : le sauveteur n'est pas nécessaire, le temps d'équipe est économisé.
- **Quand elle n'en produit pas** :
  - Vous êtes accroché avant d'avoir fait un décrochage sûr ; ou le tueur campe.
- **Écart avec le seed** : OK (160/140/120 s, 10.1.0).
- **Sources** : [13][15]

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| L2P23-C01 | Windows of Opportunity : auras palettes / fenêtres / murs à 24/28/32 m | [6][3] | LIVE | VERIFIED_MULTI_SOURCE |
| L2P23-C02 | WoO PTB : fenêtres seulement, 24 m, +10 % de vitesse de saut, CD 40/35/30 s | [1][2][3][4][5] | PTB 10.2.0 | VERIFIED_MULTI_SOURCE |
| L2P23-C03 | WoO cooldown LIVE : aucun (fandom) vs 30/25/20 s (timesaver) | [6][3] | LIVE | UNCERTAIN |
| L2P23-C04 | Five Moves Ahead : 5 palettes / fenêtres ; repartir 50 % plus tôt ; CD 40/35/30 s | [7][8][9] | LIVE | STRONG_SECONDARY |
| L2P23-C05 | Five Moves Ahead PTB : palettes seulement | [2][5][17] | PTB 10.2.0 | VERIFIED_MULTI_SOURCE |
| L2P23-C06 | Will to Live : 40/50/60 s, stun 4 s, devient Obsession, usage unique | [10][15] | LIVE | VERIFIED_MULTI_SOURCE |
| L2P23-C07 | Lithe : rushed vault → 50 % de Haste 3 s ; Exhausted 60/50/40 s | [11] | LIVE | STRONG_SECONDARY |
| L2P23-C08 | Lithe ne se déclenche pas sur un saut moyen | [12] | LIVE | UNCERTAIN |
| L2P23-C09 | Sprint Burst : 50 % de Haste 2 s (était 3 s) ; 60/50/40 s | [13][15] | LIVE (10.1.0) | VERIFIED_MULTI_SOURCE |
| L2P23-C10 | Adrenaline : Haste 4 s (3 → 4 en 10.1.0) | [15] vs [14] | LIVE | UNCERTAIN (conflit) |
| L2P23-C11 | Deliverance : Broken 160/140/120 s (était 100/80/60 s) | [13][15] | LIVE (10.1.0) | VERIFIED_MULTI_SOURCE |
| L2P23-C12 | Off the Record : 30/35/40 s avec Endurance | [15] | LIVE (9.2.2) | STRONG_SECONDARY |
| L2P23-C13 | Unbreakable : une fois par épreuve, mises à terre causées par le tueur | [15] | LIVE (9.5.0) | STRONG_SECONDARY |
| L2P23-C14 | Hyperfocus soumise aux DR (chance de skill check) | [15] | LIVE (9.6.0) | STRONG_SECONDARY |

## Conflits

#### CONFLICT-L2P23-01 : cooldown LIVE de Windows of Opportunity
- Source A : wiki fandom [6] (via résumé) : cooldown supprimé en 5.3.0 ; la mention revenue en 7.2.0 serait purement visuelle, sans cooldown réel.
- Source B : timesaver [3] (via résumé) : « Previously… on a 30 / 25 / 20 second cooldown » (état avant le PTB, donc LIVE).
- Hypothèse : timesaver recopie la description en jeu (visuelle) ; ou un cooldown réel a été réintroduit après la rédaction de la page fandom (qui n'est plus le wiki officiel à jour ; le wiki officiel est wiki.gg).
- Résolution : UNRESOLVED. À trancher sur deadbydaylight.wiki.gg/wiki/Windows_of_Opportunity ou par un test en jeu.

#### CONFLICT-L2P23-02 : « repartir 50 % plus tôt » de Five Moves Ahead, LIVE ou ajout PTB ?
- Source A : wiki.gg / allmyperks / NightLight [7][8][9] (via résumés) : effet déjà présent dans la description actuelle.
- Source B : patched.gg / Dev Update [5][2] (via résumés) : « added 50 % earlier movement after dropping a pallet » au PTB.
- Hypothèse : le PTB modifie la valeur ou la formulation (résumé ambigu) ; ou les pages wiki résumées ont déjà intégré le texte PTB.
- Résolution : UNRESOLVED.

#### CONFLICT-L2P23-03 : durée de la Haste d'Adrenaline
- Source A : audit lot 1 [15] (notes 10.1.0 lues) : 3 → 4 s.
- Source B : résumé wiki fandom / wiki.gg [14] : 3 s « most recent ».
- Hypothèse : résumé fondé sur une version en cache antérieure au 10.1.0 (août 2026).
- Résolution : provisoirement 4 s (source primaire lue par le lot 1), à reconfirmer. Statut : UNRESOLVED jusqu'à relecture.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Windows of Opportunity (LIVE) | 24/28/32 m, permanent | 24/28/32 m ; cooldown LIVE contesté | OK / IMPRÉCIS (CD passé sous silence) |
| Windows of Opportunity (PTB) | fenêtres seulement, +10 %, 40/35/30 s | idem + rayon fixe 24 m | IMPRÉCIS (rayon omis) |
| Five Moves Ahead (PTB) | « palettes seulement, +50 % de vitesse après le lâcher » | palettes seulement ; « repartir 50 % plus tôt » (pas de Haste) | IMPRÉCIS |
| Lithe | « saut moyen ou rapide » | rushed vault ; saut moyen probablement exclu | IMPRÉCIS (UNCERTAIN) |
| Will to Live | 40/50/60 s, stun 4 s, Obsession, usage unique | idem | OK |
| Sprint Burst | 2 s (nerf 10.1.0) | idem | OK |
| Deliverance | Broken 160/140/120 s (10.1.0) | idem | OK |
| Adrenaline | 4 s (10.1.0) | 4 s [15] vs 3 s [14] | OK (conflit ouvert) |
| Off the Record | 30/35/40 s, Endurance | idem [15] | OK (conditions NON VÉRIFIABLE) |
| Unbreakable | limitée aux mises à terre par le tueur (9.5.0) | idem [15] | OK (valeurs NON VÉRIFIABLE) |
| Hyperfocus | aucune mention des DR | soumise aux DR [15] | IMPRÉCIS |
| Iron Will | 80/90/100 % | non vérifié ; souvenir du modèle : 50/75/100 % | NON VÉRIFIABLE (écart probable) |
| Déjà Vu | aura permanente (implicite) | non vérifié ; possiblement 30 s par événement | NON VÉRIFIABLE |
| Resilience PTB 7/8/9 %, Kindred PTB 14/15/16 m | cités comme PTB | absents des résumés lus | NON VÉRIFIABLE |
| Resurgence, Dead Hard, Finesse, Prove Thyself, Background Player, Made for This, Bond, Kindred, Resilience (LIVE) | valeurs page 23 | aucune recherche possible (quota) | NON VÉRIFIABLE |

## Questions ouvertes

1. Cooldown LIVE réel de Windows of Opportunity (CONFLICT-L2P23-01).
2. « Repartir 50 % plus tôt » de Five Moves Ahead : LIVE ou PTB (CONFLICT-L2P23-02) ?
3. Adrenaline : 3 ou 4 s de Haste en LIVE (CONFLICT-L2P23-03) ?
4. Lithe se déclenche-t-elle sur un saut moyen ?
5. Off the Record : désactivation sur action conspicuous ? Condition « générateurs restants » ?
6. Iron Will : 80/90/100 % (seed) ou 50/75/100 % ? Condition « non Exhausted » toujours présente ?
7. Déjà Vu : aura permanente ou temporaire ?
8. Dead Hard LIVE : Endurance ou invulnérabilité, durée exacte, désactivation portes alimentées ?
9. Prove Thyself : bonus cumulatif par survivant ? Bonus appliqué aux coéquipiers ?
10. Background Player : Exhausted 30/25/20 s ou autre (incohérence interne du seed, [15]) ?
11. Made for This : Haste 3 % fixe ou 1/2/3 % ?
12. PTB 10.2.0 : Resilience (7/8/9 %) et Kindred (14/15/16 m) figurent-elles bien dans les 58 perks ? Liste complète à relire sur [1] / [4].
13. DR 9.6.0 : les bonus de vitesse de réparation (Déjà Vu / Resilience / Prove Thyself) et de saut (Finesse / Resilience / WoO PTB) sont-ils des « modificateurs identiques » soumis aux DR ?
14. Reprendre les 14 perks du tier A sans vérification web lorsque le quota WebSearch sera rétabli.

## Sources

[1] 10.2.0 PTB Patch Notes — BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/559-10-2-0-ptb-patch-notes — consulté le 27/09/2026 via WebSearch
[2] Dev Update: 10.2.0 Perks Update — BHVR — https://forums.bhvr.com/dead-by-daylight/discussion/472297/dev-update-10-2-0-perks-update — consulté le 27/09/2026 via WebSearch
[3] DBD Windows of Opportunity Rework: 10.2.0 PTB Changes and Alternatives — timesaver.gg — https://timesaver.gg/blog/dbd-windows-of-opportunity-rework — consulté le 27/09/2026 via WebSearch
[4] DBD Perk Changes: All 58 Killer and Survivor Perks in the 10.2.0 PTB — timesaver.gg — https://timesaver.gg/blog/dbd-perk-changes-10-2-0 — consulté le 27/09/2026 via WebSearch
[5] Dead by Daylight v10.2.0 PTB — Perk Overhaul — patched.gg — https://patched.gg/games/dead-by-daylight/1020-ptb-patch-notes — consulté le 27/09/2026 via WebSearch
[6] Windows of Opportunity — Dead by Daylight Wiki (fandom) — https://deadbydaylight.fandom.com/wiki/Windows_of_Opportunity — consulté le 27/09/2026 via WebSearch
[7] Five Moves Ahead — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Five_Moves_Ahead — consulté le 27/09/2026 via WebSearch
[8] Five Moves Ahead — allmyperks — https://allmyperks.com/perks/five-moves-ahead — consulté le 27/09/2026 via WebSearch
[9] Five Moves Ahead — NightLight — https://nightlight.gg/perks/Five_Moves_Ahead — consulté le 27/09/2026 via WebSearch
[10] Will to Live (Decisive Strike) — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Will_to_Live — consulté le 27/09/2026 via WebSearch
[11] Lithe — Official Dead by Daylight Wiki (wiki.gg / fandom) — https://deadbydaylight.wiki.gg/wiki/Lithe ; https://deadbydaylight.fandom.com/wiki/Lithe — consulté le 27/09/2026 via WebSearch
[12] Lithe (Dead by Daylight) — Grokipedia (source faible) — https://grokipedia.com/page/Lithe_Dead_by_Daylight — consulté le 27/09/2026 via WebSearch
[13] Patch Notes 10.1.X — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Patch_10.1.0 ; dlcompare « Dead by Daylight officially releases Update 10.1.0 » — https://www.dlcompare.com/gaming-news/dead-by-daylight-officially-releases-update-10-1-0-82846 — consulté le 27/09/2026 via WebSearch
[14] Adrenaline — Dead by Daylight Wiki (wiki.gg / fandom) — https://deadbydaylight.wiki.gg/wiki/Adrenaline ; https://deadbydaylight.fandom.com/wiki/Adrenaline — consulté le 27/09/2026 via WebSearch
[15] Audit phase 0 + lot 1 (notes 9.2.2, 9.5.0, 9.6.0, 10.1.0 relues par le lot 1) — fichier interne kb/seed/audit_phase0.txt — consulté le 27/09/2026
[16] DBD Patch Notes 10.2.0: PTB Date, 58 Perk Changes — timesaver.gg — https://timesaver.gg/blog/dbd-patch-notes-10-2-0 ; HappyGamer — https://happygamer.com/dead-by-daylight-10-2-0-ptb-58-perk-changes-164427/ — consulté le 27/09/2026 via WebSearch
[17] Windows Of Opportunity and Five Moves Ahead Changes — forum BHVR — https://forums.bhvr.com/dead-by-daylight/discussion/472358/windows-of-opportunity-and-five-moves-ahead-changes — consulté le 27/09/2026 via WebSearch
