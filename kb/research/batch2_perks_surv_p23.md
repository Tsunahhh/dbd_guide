# Lot 2 — Perks survivant, page 23 du guide seed (tiers S et A)

**Couverture : 21/21 perks re-vérifiées sur page wiki complète (27/09/2026) ; dont 11 confirmées par note officielle** (Windows of Opportunity [PTB], Will to Live [renommage], Adrenaline, Sprint Burst, Off the Record, Five Moves Ahead, Déjà Vu [9.1.0], Resilience [PTB], Kindred [PTB], Unbreakable, Deliverance).

- Référence : **LIVE 10.1.2a** (17/09/2026). **PTB 10.2.0** (15-21/09/2026) = non LIVE, toujours étiqueté PTB.
- Méthode initiale (lot 2) : WebSearch seul (résumés). **Re-vérification lot 12a (27/09/2026)** : description LIVE 10.1.2a et change log 8.x-10.x des pages wiki.gg complètes (via API MediaWiki, `kb/sources/wiki_perks_digest.md`, brut `wiki_perks.json`) [18]-[38], croisées avec les notes officielles BHVR 9.x-10.x (`kb/sources/patches/official_*.txt`) [39]-[46]. Confiance : STRONG_SECONDARY (page wiki complète), VERIFIED_MULTI_SOURCE si une note officielle concorde.
- Historique : le lot 2 n'avait pu vérifier que 7 perks (quota WebSearch épuisé) ; les 14 autres reprenaient le seed ou la connaissance du modèle. Ces lignes sont maintenant remplacées par les valeurs du wiki.
- Anomalie de la source : pour Windows of Opportunity, le digest étiquette « LIVE (current) » un texte qui est en réalité celui du **PTB 10.2.0** (page wiki déjà basculée, sans drapeau). La LIVE a été reconstruite depuis l'historique de la page (version 5.3.0) et le change log.
- Les notes de valeur (0-3), synergies, anti-synergies comportementales et puces « quand elle produit / n'en produit pas » sont **HEURISTIC / EXPERT OPINION** (avis de l'auteur du lot, pas des données).
- DR = Diminishing Returns (9.6.0, [15]) : entre modificateurs **identiques** issus de Powers / Items / Perks / Offerings, le plus fort compte à 100 %, puis 50 / 25 / 12,5 / 5 %. Les add-ons sont exclus. La liste exacte des modificateurs concernés n'est pas publiée ; les interactions DR ci-dessous sont donc des **HYPOTHESIS**, sauf mention contraire.

Périmètre (21 perks, seed l. 95-199) : Windows of Opportunity, Will to Live, Lithe, Adrenaline, Sprint Burst, Off the Record, Five Moves Ahead, Déjà Vu, Resilience, Kindred, Unbreakable, Resurgence, Dead Hard, Finesse, Prove Thyself, Background Player, Made for This, Bond, Iron Will, Hyperfocus, Deliverance.

---

## Tier S du seed

### Windows of Opportunity — Kate Denson
- **Statut** : LIVE 10.1.2a ; **rework au PTB 10.2.0** (non LIVE).
- **Effet LIVE** : révèle en permanence les auras de chaque mur cassable, palette et fenêtre à 24/28/32 m ; **aucun cooldown**. Reconstruit depuis l'historique de la page wiki (version 5.3.0) et le change log (« Patch 5.3.0 : removed the Cool-down altogether »), aucune modification 8.x-10.1.2a. STRONG_SECONDARY [18][6][3]
- **Valeurs / CD / conditions / limites** : 24/28/32 m (LIVE, STRONG_SECONDARY [18][6][3]) ; pas de cooldown en LIVE (CONFLICT-L2P23-01 RÉSOLU, voir Conflits).
- **PTB 10.2.0 (NON LIVE)** : rework : auras des **fenêtres seulement** à **24 m** (fixe), fenêtres franchies **10 %** plus vite, cooldown **40/35/30 s** après un saut de fenêtre. Dev note : « specialize in Windows » ; l'ancien effet se retrouve avec Dark Sense ou Windows + Five Moves Ahead. VERIFIED_MULTI_SOURCE [1][18] (note officielle 559 + page wiki)
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
- **Écart avec le seed** : LIVE OK (24/28/32 m, permanent : l'absence de cooldown est confirmée par le wiki [18]). PTB IMPRÉCIS : le rayon PTB (24 m fixe, note 559 [1]) n'est pas mentionné.
- **Sources** : [1][2][3][4][5][6][18]

### Will to Live (= Decisive Strike) — Générale (ex-Laurie Strode)
- **Statut** : renommée (ex-Decisive Strike) ; perk générale pour qui ne possède pas le chapitre HALLOWEEN, depuis le retrait de la licence (janvier 2026 ; 9.4.0, note officielle 534 : « Decisive Strike is now Will to Live » [43]).
- **Effet LIVE** : après avoir été décroché ou s'être décroché seul, active pendant 40/50/60 s : si le tueur vous saisit ou vous ramasse, un skill check réussi vous libère et l'étourdit **4 s** ; vous devenez la prochaine Obsession. Désactivée quand les portes sont alimentées, désactivée prématurément par une action conspicuous, et désactivée pour le reste de l'épreuve après usage. Chance d'être l'Obsession initiale +100 %. STRONG_SECONDARY [19] ; 40/50/60 s et stun de 4 s concordent avec [15].
- **Valeurs / CD / conditions / limites** : 40/50/60 s (LIVE) ; stun 4 s (LIVE, depuis 8.0.0 : 5 → 4 s [19]) ; usage unique ; saisie (grab) comprise, pas seulement le ramassage.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [1][19].
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
- **Écart avec le seed** : OK (40/50/60 s, 4 s, Obsession, usage unique, désactivation sur action conspicuous et portes alimentées : tout concorde avec [19]).
- **Sources** : [10][15][19][43]

### Lithe — Feng Min
- **Statut** : LIVE 10.1.2a.
- **Effet LIVE** : à chaque **Rushed Vault** (saut rapide), +50 % de Haste pendant 3 s ; inutilisable si Exhausted ; provoque Exhausted 60/50/40 s. STRONG_SECONDARY [20][11]. La description wiki ne parle que de « Rushed Vault action » et ne mentionne pas le saut moyen : son exclusion reste UNCERTAIN [12].
- **Valeurs / CD / conditions / limites** : 50 % / 3 s / 60/50/40 s (LIVE, STRONG_SECONDARY [20]) ; aucune modification 8.x-10.1.2a au change log. Ne se déclenche pas si vous êtes déjà Exhausted.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [1][20].
- **Interactions, DR, anti-synergies** : une seule perk d'Exhaustion utile à la fois (Sprint Burst, Dead Hard, Background Player, Adrenaline qui l'ignore). Haste + Haste de base au décrochage (10 %) : cumul sans doute soumis aux DR (HYPOTHESIS).
- **Synergies** : Windows of Opportunity (trouver la fenêtre) ; Finesse (le saut est plus court, le boost part plus tôt) ; Vigil.
- **Difficulté** : 2 (il faut un vrai fast vault, donc arriver droit sur la fenêtre avec de l'élan)
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 3 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Vous choisissez quand l'utiliser (contrairement à Sprint Burst) : sur un fast vault de fenêtre ou de palette lâchée, le boost de 3 s ouvre assez de distance pour une nouvelle tile.
- **Quand elle n'en produit pas** :
  - Zones mortes sans fenêtre, ou tueurs à mobilité (Blight, Nurse) qui ignorent la distance gagnée.
- **Écart avec le seed** : IMPRÉCIS (« saut moyen ou rapide » : la description wiki complète dit « Rushed Vault » seulement [20]). Valeurs OK (50 %, 3 s, 60/50/40 s).
- **Sources** : [11][12][20]

### Adrenaline — Meg Thomas
- **Statut** : LIVE 10.1.2a ; modifiée en 10.1.0 [15].
- **Effet LIVE** : quand les portes sont alimentées (note 10.1.0 : « when all Generators are completed »), soigne d'un état de santé (à terre ou blessé), +50 % de Haste pendant **4 s** ; utilisable en étant Exhausted (ignore l'Exhausted existant), puis Exhausted 60/50/40 s. VERIFIED_MULTI_SOURCE [21][45]. Le report de l'effet si vous êtes accroché n'est pas décrit sur la page wiki : UNCERTAIN.
- **Valeurs / CD / conditions / limites** : 50 % / **4 s** (LIVE depuis 10.1.0, était 3 s) / 60/50/40 s. VERIFIED_MULTI_SOURCE (wiki [21] + note officielle 556 [45]) : CONFLICT-L2P23-03 RÉSOLU.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [1][21].
- **Interactions, DR, anti-synergies** : ignore l'Exhausted, donc compatible avec une autre perk d'Exhaustion. Pas de valeur si tous les survivants sont déjà morts ou si les gens ne sont jamais finis.
- **Synergies** : Sprint Burst / Lithe (deux Exhaustion) ; Hope (Haste de fin de partie, cumul soumis aux DR : HYPOTHESIS).
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 3
- **Quand elle produit de la valeur** :
  - Le dernier gen est fait pendant une chase ou quand vous êtes à terre : un état de santé gratuit + Haste retournent une fin de partie.
- **Quand elle n'en produit pas** :
  - Partie perdue avant les portes, ou tueur qui 3-gen et ne laisse jamais alimenter les portes.
- **Écart avec le seed** : OK (4 s, buff 10.1.0, confirmé par [21][45]).
- **Sources** : [14][15][21][45]

### Sprint Burst — Meg Thomas
- **Statut** : LIVE 10.1.2a ; **nerf 10.1.0** : Haste 3 → 2 s.
- **Effet LIVE** : quand vous commencez à courir, +50 % de Haste pendant 2 s ; inutilisable si Exhausted ; Exhausted 60/50/40 s. VERIFIED_MULTI_SOURCE [22][45][13][15]
- **Valeurs / CD / conditions / limites** : 50 % / 2 s / 60/50/40 s (LIVE ; wiki [22] + note officielle 556 [45]). Déclenchement automatique (d'où la marche pour la conserver).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [1][22].
- **Interactions, DR, anti-synergies** : auto-déclenchement : gâchée si vous courez sans raison. Une seule Exhaustion utile ; Vigil raccourcit la récupération.
- **Synergies** : Adrenaline ; perks d'info (Kindred, Spine Chill…) pour partir avant le contact.
- **Difficulté** : 2 (il faut marcher pour la garder)
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 2 · macro 1 · info 0 · anti-tunnel 1 · soin 0 · gen 1 · endgame 1
- **Quand elle produit de la valeur** :
  - Dès l'arrivée du tueur sur le gen : 2 s de Haste ≈ 1,5 m de plus que sans perk (HEURISTIC), assez pour atteindre une tile au lieu de prendre le coup au sol.
- **Quand elle n'en produit pas** :
  - Tueurs furtifs (sans rayon de terreur) : on la déclenche trop tard. Et si vous oubliez de marcher, elle est en cooldown au moment où il le faut.
- **Écart avec le seed** : OK (2 s, nerf 10.1.0 ; [22][45]).
- **Sources** : [13][15][22][45]

### Off the Record — Zarina Kassir
- **Statut** : LIVE 10.1.2a ; 9.2.0 retire l'Endurance et la désactivation aux portes, ajoute la suppression des scratch marks [40] ; 9.2.2 rend l'Endurance et passe la durée à 30/35/40 s [41] ; le PTB 9.3.0 (retour à 60/70/80 s sans Endurance) a été **annulé** à la sortie de 9.3.0 (« Changes from PTB… Reverted the following perks… Off the Record » [42]).
- **Effet LIVE** : après avoir été décroché ou s'être décroché seul, active 30/35/40 s : aura bloquée (non révélable), gémissements de douleur supprimés (blessé), **scratch marks supprimées**, **Endurance** (annulée prématurément par une action conspicuous). La page wiki ajoute : désactivée pour le reste de l'épreuve quand les portes sont alimentées (voir CONFLICT-L2P23-04). VERIFIED_MULTI_SOURCE pour durée + Endurance [23][41][42] ; texte complet STRONG_SECONDARY [23].
- **Valeurs / CD / conditions / limites** : 30/35/40 s (LIVE, VERIFIED_MULTI_SOURCE [23][41]). L'action conspicuous annule **l'Endurance seulement**, pas l'aura cachée ni le silence (texte wiki [23]). Désactivation « portes alimentées » : présente dans la description wiki actuelle mais retirée par la note 9.2.0 [40] et non ré-ajoutée par une note ultérieure lue → UNCERTAIN (CONFLICT-L2P23-04).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [1][23].
- **Interactions, DR, anti-synergies** : l'Endurance de la perk double celle des protections de base (10 s, 10.1.0) ; un seul état d'Endurance à la fois, donc son vrai apport vient des 20-30 s après la fin des protections de base (HYPOTHESIS). Endurance puis Deep Wound : Made for This ou un soin deviennent prioritaires.
- **Synergies** : Will to Live (fenêtres qui se recouvrent) ; Resurgence ; Iron Will n'apporte rien pendant la fenêtre (redondance).
- **Difficulté** : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 3 · SWF 2 · chase 1 · macro 1 · info 0 · anti-tunnel 3 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Tunnel juste après les protections de base : un coup encaissé en plus + aucune aura à suivre pour le tueur (contre Nemesis, BBQ, etc.).
- **Quand elle n'en produit pas** :
  - Tueur qui ne tunnel pas ; ou gens tous faits.
- **Tracking** : la suppression des scratch marks (depuis 9.2.0) rend aussi la perk forte contre le pistage visuel, pas seulement contre les auras (HEURISTIC).
- **Écart avec le seed** : durée OK ; Endurance OK (9.2.2 [41], maintenue en 9.3.0 [42] : CONFLICT-R2-02 du lot 1 **clos**) ; IMPRÉCIS : le seed omet la suppression des scratch marks ; « tant que des générateurs restent à réparer » concorde avec la page wiki mais contredit la note 9.2.0 (CONFLICT-L2P23-04).
- **Sources** : [15][23][40][41][42]

### Five Moves Ahead — Kwon Tae-young
- **Statut** : LIVE 10.1.2a (perk de la 9.5.0 [15]) ; **modifiée au PTB 10.2.0**.
- **Effet LIVE** : dans le rayon de terreur ou en poursuite : auras des 5 palettes **et fenêtres** les plus proches ; après avoir lâché une palette, vous repartez 50 % plus tôt (wiki : « Perform Pallet Drop interaction 50 % faster », formulation antérieure ; note 9.5.0 : « you start moving 50% earlier », texte clarifié sans changement de gameplay) ; cooldown de 40/35/30 s après un lâcher de palette. VERIFIED_MULTI_SOURCE [24][44].
- **Valeurs / CD / conditions / limites** : 5 éléments ; 50 % ; 40/35/30 s (LIVE ; CD relevé de 10 s par rang en 9.5.0, était 30/25/20 s au PTB 9.5.0 [24][44]).
- **PTB 10.2.0 (NON LIVE)** : auras des 5 palettes les plus proches **seulement** (« was Pallets and Windows ») ; le reste inchangé (repartir 50 % plus tôt, CD 40/35/30 s ; le wiki précise « when you drop a Pallet while this perk is activated »). Dev note : « specialize in Pallets ». VERIFIED_MULTI_SOURCE [1][24][2][17]. Le « repartir 50 % plus tôt » n'est **pas** un ajout PTB : CONFLICT-L2P23-02 RÉSOLU.
- **Interactions, DR, anti-synergies** : au PTB, Windows (fenêtres) et Five Moves Ahead (palettes) deviennent complémentaires ; en LIVE, elles se recoupent.
- **Synergies** : Lithe (vault sur palette lâchée), Resilience, Dead Hard.
- **Difficulté** : 2 (il faut du timing sur le lâcher de palette)
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 3 · macro 0 · info 2 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Loops de palette : repartir plus tôt après le lâcher réduit le risque de prendre un coup à travers la palette et donne une avance directe sur le tueur.
- **Quand elle n'en produit pas** :
  - Perk inactive hors rayon de terreur ou hors poursuite. Et contre les tueurs anti-palette (Blight, Spirit), où l'on lâche peu de palettes.
- **Écart avec le seed** : LIVE OK (5 palettes ou fenêtres, repartir 50 % plus tôt, 40/35/30 s). PTB FAUX dans les termes : « +50 % de vitesse après le lâcher » n'existe pas ; le PTB retire seulement les fenêtres, l'effet « repartir 50 % plus tôt » est LIVE depuis 9.5.0 [44][1].
- **Sources** : [1][2][5][7][8][9][17][24][44]

---

## Tier A du seed

> Ces 14 perks n'avaient pu être vérifiées au lot 2 (quota WebSearch épuisé). **Re-vérifiées au lot 12a (27/09/2026)** sur les pages wiki complètes et, quand elles existent, les notes officielles. Les notes de valeur, les synergies et les sections « quand elle produit de la valeur » restent HEURISTIC / EXPERT OPINION.

### Déjà Vu — Générale
- **Statut** : LIVE 10.1.2a ; 9.1.0 : les gens révélés ne sont plus suivis par les Maps [39][25].
- **Effet LIVE** : auras des 3 générateurs actuellement les plus proches les uns des autres, **en permanence** (aucune durée ni déclencheur dans la description) ; réparation 4/5/6 % plus rapide sur ces gens. STRONG_SECONDARY [25] ; la note 9.1.0 [39] confirme seulement le retrait du suivi par Map. L'hypothèse « 30 s au début et à chaque gen terminé » (connaissance du modèle) est **écartée** (ancienne version).
- **Valeurs / CD / conditions / limites** : 4/5/6 % (LIVE, STRONG_SECONDARY [25]) ; les gens révélés changent quand la configuration change (« currently in closest proximity »).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [1][25].
- **Interactions, DR, anti-synergies** : se cumule avec Resilience et Prove Thyself (vitesse de réparation) : cumul probablement soumis aux DR 9.6.0 (HYPOTHESIS).
- **Synergies** : Prove Thyself, Hyperfocus, Stake Out (builds « gen »).
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 3 · SWF 1 · chase 0 · macro 3 · info 2 · anti-tunnel 0 · soin 0 · gen 2 · endgame 0
- **Quand elle produit de la valeur** :
  - En SoloQ : elle montre le 3-gen et oriente les réparations vers les gens les plus dispersés, avant que le tueur ne s'enferme dans un 3-gen.
- **Quand elle n'en produit pas** :
  - En SWF, un joueur qui connaît la carte ou l'équipe au vocal fait déjà ce travail.
- **Écart avec le seed** : OK (3 gens, 4/5/6 %, aura permanente [25]).
- **Sources** : [25][39]

### Resilience — Générale
- **Statut** : LIVE 10.1.2a (texte inchangé depuis 6.2.0 selon l'historique wiki) ; **buff au PTB 10.2.0** (non LIVE).
- **Effet LIVE** : blessé : +3/6/9 % de vitesse pour bénir / purifier les totems, soigner (soi ou autrui), ouvrir les portes, réparer, saboter les crochets, fouiller les coffres, décrocher et **sauter les fenêtres**. STRONG_SECONDARY [26] ; la valeur LIVE 3/6/9 % est aussi confirmée par le « (was 3/6/9%) » de la note 559 [1] → VERIFIED_MULTI_SOURCE.
- **Valeurs / CD / conditions / limites** : 3/6/9 % (LIVE, VERIFIED_MULTI_SOURCE [26][1]).
- **PTB 10.2.0 (NON LIVE)** : toutes les vitesses passent à **7/8/9 %** (was 3/6/9 %). VERIFIED_MULTI_SOURCE [1][26].
- **Interactions, DR, anti-synergies** : bonus de réparation cumulés avec Déjà Vu, Prove Thyself : DR probables (HYPOTHESIS). Jamais cumulée avec Finesse (blessé vs en bonne santé, FACT d'après les deux descriptions wiki [26][31]). Anti-synergie de rôle : pousse à rester blessé.
- **Synergies** : No Mither (blessé en permanence), Lithe, Windows.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 2 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 2 · endgame 1
- **Quand elle produit de la valeur** :
  - Partie jouée blessé (tueurs à Deep Wound / Mangled, pas de soin rentable) : bonus passif sur tout.
- **Quand elle n'en produit pas** :
  - Joueur qui se soigne systématiquement, ou tueur « one-shot ».
- **Écart avec le seed** : OK (LIVE 3/6/9 % et PTB 7/8/9 %, correctement étiqueté PTB). Liste d'actions légèrement IMPRÉCISE : « sauter » = fenêtres seulement selon le wiki [26], fouille de coffres omise.
- **Sources** : [1][26]

### Kindred — Générale
- **Statut** : LIVE 10.1.2a (texte inchangé depuis 3.4.0 selon l'historique wiki) ; **buff au PTB 10.2.0** (non LIVE).
- **Effet LIVE** : quand un survivant est accroché : l'aura du tueur est révélée à tous les survivants quand il est à 8/12/16 m ou moins du crochet ; si c'est vous qui êtes accroché, tous les survivants voient les auras les uns des autres ; si c'est un autre, vous seul voyez les auras des autres survivants. STRONG_SECONDARY [27] ; 8/12/16 m confirmé par le « (was 8/12/16m) » de la note 559 [1] → VERIFIED_MULTI_SOURCE.
- **Valeurs / CD / conditions / limites** : 8/12/16 m (LIVE, VERIFIED_MULTI_SOURCE [27][1]).
- **PTB 10.2.0 (NON LIVE)** : rayon de révélation du tueur **14/15/16 m** (was 8/12/16 m) ; le reste inchangé. VERIFIED_MULTI_SOURCE [1][27].
- **Interactions, DR, anti-synergies** : redondante avec Bond pour les auras alliées. L'audit relève une incohérence interne du seed sur Kindred [15] ; la page 23 du seed concorde avec le wiki (l'incohérence est ailleurs dans le seed, non localisée ici).
- **Synergies** : Déjà Vu (SoloQ), Sprint Burst, Babysitter / Borrowed Time pour le sauveteur.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 3 · SWF 0 · chase 0 · macro 3 · info 3 · anti-tunnel 1 · soin 0 · gen 1 · endgame 1
- **Quand elle produit de la valeur** :
  - SoloQ : évite le double sauvetage et révèle le camping (le tueur reste près du crochet).
- **Quand elle n'en produit pas** :
  - SWF au vocal ; et tueur qui patrouille juste hors du rayon (8 m au rang I en LIVE : rayon court).
- **Écart avec le seed** : OK (8/12/16 m LIVE ; PTB 14/15/16 m correctement étiqueté PTB [1][27]). Nuance : quand un allié est accroché, c'est vous seul (porteur) qui voyez les auras alliées, pas « le même effet » pour tous.
- **Sources** : [1][27]

### Unbreakable — Bill Overbeck
- **Statut** : LIVE ; limitée en 9.5.0 [15].
- **Effet LIVE** : quand le tueur vous met à terre : récupération 25/30/35 % plus rapide et capacité de se relever entièrement seul, une fois par épreuve. VERIFIED_MULTI_SOURCE [28][44] (note 9.5.0 : « Once per trial, while downed by the Killer, you can fully recover. While downed, you recover 25/30/35% faster »).
- **Valeurs / CD / conditions / limites** : une fois par épreuve ; 25/30/35 % (LIVE, VERIFIED_MULTI_SOURCE [28][44]) ; mises à terre causées par le tueur seulement (9.5.0).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [1][28].
- **Interactions, DR, anti-synergies** : l'auto-récupération basekit LIVE (sans maintenir de bouton, depuis 9.2.0 [15]) réduit le coût d'attente. Vitesse de récupération cumulée avec Tenacity / Flip-Flop : DR probables (HYPOTHESIS).
- **Synergies** : Tenacity, Flip-Flop, Power Struggle, No Mither.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Contre les tueurs qui sluggent (Nurse, Blight, Oni en fin de partie) : un relever gratuit.
- **Quand elle n'en produit pas** :
  - Tueur qui accroche toujours ; mises à terre non causées par le tueur (exclues depuis 9.5.0).
- **Écart avec le seed** : OK (une fois par partie, mises à terre par le tueur, 25/30/35 % [28][44]).
- **Sources** : [15][28][44]

### Resurgence — Jill Valentine
- **Statut** : LIVE 10.1.2a (buff 8.1.0 : 40/45/50 → 50/60/70 %).
- **Effet LIVE** : après un décrochage par n'importe quel moyen (dont le vôtre), vous gagnez 50/60/70 % de progression de soin. STRONG_SECONDARY [29]
- **Valeurs / CD / conditions / limites** : 50/60/70 % (LIVE, STRONG_SECONDARY [29]).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [1][29].
- **Interactions, DR, anti-synergies** : le gain de progression est passif ; c'est **finir** le soin restant (auto-soin ou soin reçu) qui compte comme action : se soigner coupe Will to Live et annule l'Endurance d'Off the Record (action conspicuous, d'après leurs descriptions wiki [19][23]) ; être soigné par un allié n'est pas une action de votre part (HYPOTHESIS sur la définition exacte de « Conspicuous Action »).
- **Synergies** : Self-Care / Botany Knowledge ; Boon: Circle of Healing.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 3 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 3 · gen 1 · endgame 0
- **Quand elle produit de la valeur** :
  - SoloQ où personne ne vient soigner : le soin est fini en quelques secondes après le décrochage.
- **Quand elle n'en produit pas** :
  - Tueurs qui ignorent la santé (Deep Wound, one-shot) ou tunnel immédiat.
- **Écart avec le seed** : OK (50/60/70 % au décrochage [29]).
- **Sources** : [29]

### Dead Hard — David King
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki).
- **Effet LIVE** : s'active après un décrochage par n'importe quel moyen ; blessé et en course, bouton de capacité active = **Endurance pendant 0,5 s** ; inutilisable si Exhausted ; Exhausted 60/50/40 s. Aucune désactivation (portes, fin de gens) mentionnée dans la description. STRONG_SECONDARY [30]
- **Valeurs / CD / conditions / limites** : Endurance 0,5 s ; Exhausted 60/50/40 s (LIVE, STRONG_SECONDARY [30]). Keybind affiché dans la description depuis 9.5.0 (note [44], sans changement de gameplay).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [1][30].
- **Interactions, DR, anti-synergies** : perk d'Exhaustion (une seule utile) ; ne s'active qu'après un décrochage.
- **Synergies** : Resurgence, Will to Live, Vigil.
- **Difficulté** : 3 (timing contre la latence et les attaques à retardement)
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 2 · macro 0 · info 0 · anti-tunnel 2 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Pour atteindre une palette ou une fenêtre après un décrochage en sécurité : le coup est absorbé au moment choisi.
- **Quand elle n'en produit pas** :
  - Contre les tueurs capables de retarder leur attaque (le tueur attend la fin de la fenêtre), ou avant votre premier crochet.
- **Écart avec le seed** : OK (Endurance 0,5 s, après décrochage, blessé et en course, 60/50/40 s [30]).
- **Sources** : [30][44]

### Finesse — Lara Croft
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki ; correctif 9.2.0 : le cooldown se déclenche aussi quand la palette sautée est détruite par un pouvoir [40]).
- **Effet LIVE** : en bonne santé, vitesse de saut rapide (fast vault) +20 % ; cooldown de 40/35/30 s après un saut rapide. STRONG_SECONDARY [31]
- **Valeurs / CD / conditions / limites** : 20 % ; 40/35/30 s (LIVE, STRONG_SECONDARY [31]).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [1][31].
- **Interactions, DR, anti-synergies** : conditions opposées à Resilience (en bonne santé vs blessé) : les deux ne sont jamais actives en même temps (FACT d'après les descriptions wiki [26][31]). Vitesse de saut soumise aux DR avec Windows PTB (HYPOTHESIS).
- **Synergies** : Lithe, Windows.
- **Difficulté** : 2
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 2 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Premier contact en bonne santé sur une fenêtre forte : le saut plus court fait rater la fente au tueur.
- **Quand elle n'en produit pas** :
  - Une fois blessé (le reste de la chase).
- **Écart avec le seed** : OK (en bonne santé, +20 %, 40/35/30 s [31]).
- **Sources** : [31][40]

### Prove Thyself — Dwight Fairfield
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki).
- **Effet LIVE** : vitesse de réparation +6/8/10 % **cumulable par autre survivant** à 4 m ou moins, jusqu'à **18/24/30 %** ; l'effet s'étend à tous les survivants dans le rayon ; un survivant ne peut être affecté que par **une seule instance** de Prove Thyself à la fois. STRONG_SECONDARY [32]
- **Valeurs / CD / conditions / limites** : 4 m ; 6/8/10 % par survivant ; plafond 18/24/30 % (LIVE, STRONG_SECONDARY [32]).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [1][32].
- **Interactions, DR, anti-synergies** : deux Prove Thyself sur le même gen **ne se cumulent pas** (une seule instance par survivant, FACT [32]) : la question DR ne se pose donc pas entre elles. Cumul avec Déjà Vu / Resilience : DR possibles (HYPOTHESIS). Réparer à plusieurs est inefficace contre les tueurs à zone (Pop, Surge, Nurse).
- **Synergies** : Déjà Vu, Resilience, Hyperfocus.
- **Difficulté** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 2 · endgame 1
- **Quand elle produit de la valeur** :
  - SWF qui regroupe volontairement 2-3 réparateurs sur le dernier gen.
- **Quand elle n'en produit pas** :
  - SoloQ dispersée, ou tueur qui punit le groupe (Legion, Plague, Myers).
  - Un seul exemplaire utile par équipe (non cumul entre porteurs, [32]).
- **Écart avec le seed** : OK sur les valeurs (4 m, 6/8/10 % par survivant, pour tous) ; IMPRÉCIS : plafond 18/24/30 % et non-cumul entre plusieurs Prove Thyself omis [32].
- **Sources** : [32]

### Background Player — Renato Lyra
- **Statut** : LIVE (présumée).
- **Effet LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN) : quand le tueur ramasse un survivant, vous avez 10 s pour commencer à courir et gagner +50 % de Haste pendant 5 s ; Exhausted 30/25/20 s (seed). UNCERTAIN. L'audit signale une **incohérence interne du seed** sur cette perk [15].
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
- **Effet LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN) : +3 % de Haste avec Deep Wound ; quand vous finissez de soigner un allié alors que vous êtes blessé : Endurance 6/8/10 s (seed). UNCERTAIN ; Haste peut-être 1/2/3 % selon les versions : connaissance du modèle (antérieure à mi-2026), UNCERTAIN.
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
- **Effet LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN) : auras des autres survivants dans un rayon de 20/28/36 m. UNCERTAIN.
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
- **Effet LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN) : blessé, gémissements de douleur réduits ; inactive si vous êtes Exhausted. Le seed donne 80/90/100 % ; connaissance du modèle (antérieure à mi-2026), UNCERTAIN : 50/75/100 %. UNCERTAIN, à vérifier en priorité.
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
- **Effet LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN) : chaque great skill check en réparation ou en soin donne un jeton (max 6). Par jeton : skill checks +4 % plus fréquents, aiguille +4 % plus rapide, bonus de progression du great +10/20/30 %. Jetons perdus sur un good, un raté ou un arrêt. UNCERTAIN.
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
| Iron Will | 80/90/100 % | non re-vérifié (quota) ; connaissance du modèle (antérieure à mi-2026), UNCERTAIN : 50/75/100 % | NON VÉRIFIABLE (écart probable) |
| Déjà Vu | aura permanente (implicite) | non vérifié ; possiblement 30 s par événement | NON VÉRIFIABLE |
| Resilience PTB 7/8/9 %, Kindred PTB 14/15/16 m | cités comme PTB | absents des résumés lus | NON VÉRIFIABLE |
| Resurgence, Dead Hard, Finesse, Prove Thyself, Background Player, Made for This, Bond, Kindred, Resilience (LIVE) | valeurs page 23 | seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) | NON VÉRIFIABLE |

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
