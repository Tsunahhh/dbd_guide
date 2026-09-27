# Lot 2 — Perks survivant, page 25 du guide seed (ch3_survperks.txt l. 308-421)

**Couverture : 27/27 perks re-vérifiées sur page wiki complète (27/09/2026) ; dont 11 confirmées par note officielle** (valeur LIVE : Built to Last, Tenacity, Any Means Necessary, Empathic Connection, Champion of Light, Counterforce, Conviction, Self-Preservation, Desperate Measures, Extrasensory Perception, Salvation's Cry) ; Stake Out et Borrowed Time : note officielle pour le PTB seulement.

- Référence : **LIVE 10.1.2a (17/09/2026)** ; PTB 10.2.0 (15-21/09/2026) = **PTB, non LIVE**.
- Méthode initiale (lot 2) : WebSearch uniquement (résumés). **Re-vérification lot 12a (27/09/2026)** : description LIVE 10.1.2a et change log 8.x-10.x des pages wiki.gg complètes (via API MediaWiki, `kb/sources/wiki_perks_digest.md`, brut `wiki_perks.json`) [23]-[49], croisées avec les notes officielles BHVR 9.x-10.x lues en local (`kb/sources/patches/official_*.txt`) [50]-[57]. Confiance : STRONG_SECONDARY (page wiki complète) ; VERIFIED_MULTI_SOURCE si une note officielle concorde ; VERIFIED_PRIMARY quand la note officielle contredit le wiki et fait foi (Built to Last).
- Historique : au lot 2, le quota WebSearch avait laissé 9 perks sans aucune recherche (+ LIVE de Borrowed Time / Stake Out) ; elles sont toutes re-vérifiées ici et les mentions « NON VÉRIFIÉ » sont retirées.
- Notes de valeur (0-3) = **HEURISTIC** (avis d'analyste, pas des données).
- PTB 10.2.0 : la note officielle 559 complète a été lue en local ; seules Empathic Connection, Self-Preservation, Stake Out et Borrowed Time de cette page y figurent.

---

### Built to Last — Felix Richter
- **Statut** : LIVE 10.1.2a ; 9.1.0 : 14/13/12 → **14/12/10 s** (la valeur PTB 9.1.0 de 12/10/8 s a été relevée à la sortie, « Changes from PTB » [51]).
- **Effet LIVE** : caché dans un casier avec un objet **épuisé** équipé, après **14/12/10 s** l'objet est rechargé à 99 % (1re fois), 66 % (2e), 33 % (3e) ; la perk est désactivée après la 3e utilisation — durée VERIFIED_PRIMARY [51] ; mécanique 99/66/33 % et désactivation STRONG_SECONDARY [23][1].
- **Valeurs / CD / conditions / limites** : **14/12/10 s** (LIVE, note officielle 9.1.0 [51]). La page wiki complète affiche 12/10/8 s (change log « 9.1.0 : 14/13/12 → 12/10/8 ») = valeur du **PTB 9.1.0**, non retenue à la sortie → CONFLICT-P25-04. 3 utilisations max ; objet vide (0 charge) requis.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][23].
- **Interactions, DR, anti-synergies** : aucune DR connue (pas de modificateur de vitesse). Anti-synergie : casier = immobilité, dangereux dans le rayon de terreur ; perd de la valeur si l'objet est lâché/perdu.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Commodious Toolbox / médikit rare, Streetwise, Inner Strength (casier), Plunderer's Instinct (HYPOTHESIS).
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : objets à gros impact répétés (toolbox sur gen, médikit, lampe) quand le tueur est loin — le coût de 8-12 s en casier est alors marginal.
- **Quand elle n'en produit pas (HEURISTIC)** : contre tueurs à forte pression/fouille de casiers ; sans objet de valeur ; en fin de partie.
- **Écart avec le seed** : **OK** (14/12/10 s, conforme à la note officielle 9.1.0 [51] ; le verdict « FAUX » du lot 2, fondé sur des résumés du wiki, est **retiré**). IMPRÉCIS mineur : « 33 % de moins à chaque utilisation » est correct en substance (99/66/33), mais le seed omet la désactivation après la 3e.
- **Sources** : [1] [2] [23] [51]

### Self-Care — Claudette Morel
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki).
- **Effet LIVE** : permet de se soigner soi-même sans médikit à **25/30/35 %** de la vitesse de soin normale — STRONG_SECONDARY [24][3]. Le bonus « efficacité des médikits +10/15/20 % » du lot 2 **n'apparaît pas** dans la description wiki complète → non retenu (UNCERTAIN, probablement une ancienne version).
- **Valeurs / CD / conditions / limites** : 25/30/35 % ; auto-soin 16 s × (1/0,35) ≈ 45,7 s au tier III (calcul, HYPOTHESIS : suppose soin de base 16 s) ; skill checks classiques.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][24].
- **Interactions, DR, anti-synergies** : se cumule avec Botany Knowledge / Boon: Circle of Healing (modificateurs de vitesse de soin ; soumission aux DR 9.6.0 = HYPOTHESIS, liste DR exhaustive non lue). Anti-synergie : Sloppy Butcher / Mangled, tueurs à Deep Wound.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Botany Knowledge, Boon: Circle of Healing, Inner Strength (alternative), Resurgence.
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 2 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SoloQ sans coéquipier disponible pour soigner ; tueur qui ne revient pas vite (longues maps).
- **Quand elle n'en produit pas (HEURISTIC)** : contre tueurs « one-shot »/Nurse/Blight où ~45 s d'auto-soin coûtent plus qu'une réparation ; contre Thanatophobia/Coulrophobia.
- **Écart avec le seed** : OK (75/70/65 % plus lent = 25/30/35 % [24]). Le reproche d'omission du bonus médikit (lot 2) est retiré : ce bonus n'est pas dans la description LIVE.
- **Sources** : [3] [4] [24]

### We're Gonna Live Forever — David King
- **Statut** : LIVE 10.1.2a (8.3.0 : jetons supprimés, CD ajouté, +150 % ; 8.3.2 : retour à +100 %).
- **Effet LIVE** : +100 % de vitesse de soin sur un survivant à terre ; tout survivant à terre que vous remettez à l'état blessé gagne Endurance 6/8/10 s ; cet effet ne peut se déclencher qu'une fois toutes les 30 s — STRONG_SECONDARY [25][5]
- **Valeurs / CD / conditions / limites** : +100 % ; Endurance 6/8/10 s ; CD 30 s. L'annulation de cette Endurance par une action conspicuous (lot 2) **n'est pas mentionnée** dans la description wiki [25] → UNCERTAIN.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][25].
- **Interactions, DR, anti-synergies** : +100 % se cumule avec d'autres bonus de relève (Empathic Connection soigne « les autres ») — DR possible sur modificateurs identiques (HYPOTHESIS). Soul Guard + WGLF : un CD 30 s a été ajouté à Soul Guard justement pour limiter ce combo [6].
- **Synergies (HEURISTIC / EXPERT OPINION)** : Empathic Connection, Botany Knowledge, Buckle Up, Soul Guard (limitée par CD).
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 2 · soin 2 · gen 0 · endgame 1
- **Quand elle produit de la valeur (HEURISTIC)** : contre le slug (Knock Out, Nurse, builds slug) : relève en ~8 s au lieu de 16 et Endurance empêche le re-down immédiat.
- **Quand elle n'en produit pas (HEURISTIC)** : tueur qui accroche toujours immédiatement ; relever sous le nez du tueur (piège de slug).
- **Écart avec le seed** : OK (+100 %, 6/8/10 s, 30 s [25]).
- **Sources** : [5] [6] [25]

### Soul Guard — Cheryl Mason
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki).
- **Effet LIVE** : quand vous êtes soigné ou vous relevez depuis l'état à terre : Endurance 4/6/8 s (annulée par une action conspicuous), CD 30 s ; sous **Cursed**, débloque l'auto-récupération complète depuis l'état à terre — STRONG_SECONDARY [26][6]
- **Valeurs / CD / conditions / limites** : 4/6/8 s ; CD 30 s ; Endurance annulée par action conspicuous [26].
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][26].
- **Interactions, DR, anti-synergies** : contre Deep Wound déjà actif, Endurance ne protège pas. Dépend du killer (Hex) pour le self-pickup.
- **Synergies (HEURISTIC / EXPERT OPINION)** : WGLF / Buckle Up (effet primaire déclenché par la relève d'un allié), Tenacity, Flip-Flop, Unbreakable (HYPOTHESIS : anti-slug).
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : contre builds Hex (Hex: Undying, Plaything…) + slug ; Endurance après relève = anti re-down.
- **Quand elle n'en produit pas (HEURISTIC)** : tueur sans Hex (la moitié de la perk est morte) ; tueur qui accroche toujours.
- **Écart avec le seed** : IMPRÉCIS (seed : « chaque relèvement complet donne Endurance » ; wiki : « whenever you heal **or** recover from the Dying State » [26], donc aussi quand un allié vous relève). Cursed ≈ « sous l'effet d'un Hex » : OK. Valeurs OK.
- **Sources** : [6] [26]

### Tenacity — David Tapp
- **Statut** : LIVE 10.1.2a ; 9.2.0 : aura bloquée à terre (ajout), Haste 30/40/50 → 15/20/25 %, plus de rampe + récupération ; 9.3.0 : rampe + récupération rétablie, Haste 30/40/50 % [52][53].
- **Effet LIVE** : à terre : récupération possible en rampant ; +30/40/50 % de Haste (vitesse de rampe) ; volume des gémissements −75 % ; **votre aura ne peut pas être lue** — VERIFIED_MULTI_SOURCE [27][52][53]
- **Valeurs / CD / conditions / limites** : 30/40/50 % ; −75 % ; blocage d'aura à terre (ajouté en 9.2.0 et **conservé** en 9.3.0 : la note 9.3.0 ne revient que sur la Haste et la récupération [53]).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][27].
- **Interactions, DR, anti-synergies** : Haste de rampe (DR possible si autre Haste identique, HYPOTHESIS). Knock Out (killer) supprime la visibilité ; le blocage d'aura à terre (depuis 9.2.0 [27][52]) neutralise les lectures d'aura des survivants à terre (ex. Deerstalker : HYPOTHESIS forte d'après la description) ; Deadlock n'a pas d'interaction directe.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Unbreakable, Flip-Flop, Soul Guard, No Mither, Power Struggle (Flip-Flop pré-charge).
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur (HEURISTIC)** : contre slug : ramper vers un allié/pallet tout en récupérant ; contre tueur qui perd la trace (gémissements réduits).
- **Quand elle n'en produit pas (HEURISTIC)** : tueur qui accroche immédiatement ; tueur qui suit le son ou les flaques de sang plutôt que les auras.
- **Écart avec le seed** : OK sur les valeurs et le patch 9.3.0 [53] ; IMPRÉCIS : omet le blocage d'aura à l'état à terre (depuis 9.2.0 [52][27]).
- **Sources** : [7] [8] [27] [52] [53]

### Any Means Necessary — Yui Kimura
- **Statut** : LIVE 10.1.2a ; buff 9.1.0 (6/5/4 → 5/4/3 s) [51].
- **Effet LIVE** : auras des palettes tombées révélées ; à côté d'une palette tombée, maintenir le bouton de capacité active la relève en 5/4/3 s — VERIFIED_MULTI_SOURCE [28][51]
- **Valeurs / CD / conditions / limites** : 5/4/3 s ; **aucun cooldown** dans la description LIVE [28] (le CD 100/80/60 s du résumé [9] correspond à une ancienne version) → CONFLICT-P25-03 RÉSOLU.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][28].
- **Interactions, DR, anti-synergies** : palettes détruites (killer) non relevables ; Brutal Strength/Enduring rendent les resets moins rentables.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Windows of Opportunity, Resilience (HYPOTHESIS : pas de modificateur de vitesse d'action connu sur AMN), builds loop.
- **Difficulté (HEURISTIC)** : 3
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 2 · macro 1 · info 1 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : relever une palette forte (safe pallet) avant que le tueur revienne, en pré-chase ou mid-chase avec avance.
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs qui cassent tout (Blight, Hillbilly) ; relever en chase = hit gratuit sans distance.
- **Écart avec le seed** : OK (5/4/3 s, auras des palettes tombées, pas de cooldown [28]) ; buff 9.1.0 **confirmé** (note officielle [51]).
- **Sources** : [9] [20] [28] [51]

### Saboteur — Jake Park
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki).
- **Effet LIVE** : quand le tueur porte un autre survivant, auras de tous les crochets dans un rayon de 56 m **autour du point de ramassage** (blancs ; Scourge hooks en jaune) ; débloque le sabotage sans toolbox, +30 % de vitesse de sabotage sans toolbox ; CD 70/65/60 s après usage — STRONG_SECONDARY [29][10]
- **Valeurs / CD / conditions / limites** : 56 m ; +30 % ; CD 70/65/60 s [29].
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][29].
- **Interactions, DR, anti-synergies** : crochet saboté = réapparition après un délai (valeur non vérifiée). Scourge hooks : sabotage possible mais contexte Pain Resonance.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Breakout, Boil Over, Flip-Flop, Power Struggle (build « save / anti-carry »), Background Player.
- **Difficulté (HEURISTIC)** : 3
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 1 · info 1 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SWF qui coordonne sabotage + Breakout sur longues distances de portage (zones sans crochets proches).
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs à portage court/crochets denses ; Agitation / Iron Grasp ; SoloQ sans coordination.
- **Écart avec le seed** : IMPRÉCIS (56 m depuis le point de ramassage, pas depuis vous [29] ; « 2,3 s » de sabotage NON VÉRIFIABLE — le wiki donne +30 % de vitesse, pas une durée). CD 70/65/60 s OK.
- **Sources** : [10] [29]

### Breakout — Yui Kimura
- **Statut** : LIVE 10.1.2a (buff 8.7.0 : Haste 5/6/7 → 6/8/10 %).
- **Effet LIVE** : à 5 m du tueur portant un autre survivant : Haste **6/8/10 %** pour vous ; le survivant porté se débat +25 % plus vite ; un survivant n'est affecté que par une instance de Breakout — STRONG_SECONDARY [30][11]
- **Valeurs / CD / conditions / limites** : Haste 6/8/10 % (CONFLICT-P25-01 RÉSOLU : 5/6/7 % = valeur d'avant 8.7.0 [30]) ; +25 % lutte (16 s → 12,8 s, calcul) ; rayon 5 m.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][30].
- **Interactions, DR, anti-synergies** : Haste → DR avec autres Haste identiques (HYPOTHESIS). Non cumulable entre deux survivants (FACT [11]).
- **Synergies (HEURISTIC / EXPERT OPINION)** : Boil Over, Flip-Flop, Power Struggle, Saboteur, Blast Mine/Flashbang pour le save.
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : bodyblock + suivre le porteur pour réduire la lutte (Wiggle 12,8 s) avec un outil de save.
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs qui frappent les suiveurs ; Mad Grit ; Iron Grasp.
- **Écart avec le seed** : OK (6/8/10 %, 5 m, +25 % [30]).
- **Sources** : [11] [30]

### Boil Over — Kate Denson
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki).
- **Effet LIVE** : porté : effets de lutte sur le tueur +60/70/80 % ; le tueur ne peut pas lire l'aura des crochets à 16 m ; quand le tueur tombe d'une hauteur, +33 % de votre progression de lutte **actuelle** à l'atterrissage — STRONG_SECONDARY [31][12]
- **Valeurs / CD / conditions / limites** : 60/70/80 % ; 16 m ; +33 % de la progression actuelle [31]. Hauteur minimale « 1,25 m » : **non indiquée** sur la page wiki → UNCERTAIN.
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][31].
- **Interactions, DR, anti-synergies** : icône visible par le tueur (le tueur sait). Maps sans dénivelé → effet tertiaire nul.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Flip-Flop, Breakout, Power Struggle, Saboteur.
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : maps à étages (Midwich, Lery's, Hawkins?) et tueurs sans Agitation ; masquer les crochets gêne les portages longs.
- **Quand elle n'en produit pas (HEURISTIC)** : maps plates ; tueurs rapides/crochets proches.
- **Écart avec le seed** : IMPRÉCIS (« 33 % de progression de lutte » : c'est 33 % de la **progression actuelle** [31]) ; « 1,25 m » NON VÉRIFIABLE. Reste OK.
- **Sources** : [12] [31]

### Flip-Flop — Ash Williams
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki).
- **Effet LIVE** : pendant la récupération à terre, la jauge de lutte se charge à 50 % du taux de récupération, jusqu'à 40/45/50 % de lutte — STRONG_SECONDARY [32][13]
- **Valeurs / CD / conditions / limites** : 50 % du taux ; plafond 40/45/50 % [32].
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][32].
- **Interactions, DR, anti-synergies** : utile seulement si on récupère (inutile si relevé très vite). Tenacity (rampe + récup) augmente la récupération effective.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Power Struggle (pré-charge au-delà de 15/20/25 % → stun immédiat au ramassage [14]), Boil Over, Breakout, Tenacity.
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : slug prolongé suivi d'un ramassage ; combo Power Struggle.
- **Quand elle n'en produit pas (HEURISTIC)** : tueur qui ramasse instantanément ; Mad Grit/Agitation.
- **Écart avec le seed** : IMPRÉCIS (seed : « au ramassage, 50 % de votre progression devient lutte » ; wiki : charge continue à 50 % du taux de récupération pendant la récupération, plafonnée [32]). Plafond OK.
- **Sources** : [13] [14] [32]

### Power Struggle — Élodie Rakoto
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki).
- **Effet LIVE** : à terre, auras des palettes **debout** ; porté, après 25/20/15 % de lutte, vous pouvez faire tomber une palette proche pour étourdir le tueur et vous libérer ; se désactive après usage — STRONG_SECONDARY [33][14]
- **Valeurs / CD / conditions / limites** : 25/20/15 % ; une utilisation [33]. Dream Pallets (Nightmare) : ne l'étourdissent pas (résumé lot 2, non repris sur la page wiki : UNCERTAIN).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][33].
- **Interactions, DR, anti-synergies** : tueur qui évite les palettes en portant.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Flip-Flop (pré-charge), Boil Over, Tenacity (ramper vers une palette).
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 1 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : tueur inexpérimenté qui porte à côté des palettes ; zones denses en palettes.
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs expérimentés (contournent) ; fin de partie à palettes épuisées.
- **Écart avec le seed** : OK (25/20/15 %, palette → stun [33]). IMPRÉCIS mineur : omet l'aura des palettes debout à l'état à terre.
- **Sources** : [14] [33]

### Inner Strength — Nancy Wheeler
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki).
- **Effet LIVE** : après avoir purifié un totem de n'importe quel type, la perk s'active ; 10/9/8 s cachés dans un casier vous soignent d'un état de santé ; se désactive après usage ; inutilisable sous Broken — STRONG_SECONDARY [34][15]
- **Valeurs / CD / conditions / limites** : 10/9/8 s ; un soin par purification. La mention « blessé **ou sous Deep Wound** » du lot 2 n'est pas dans la description wiki [34] (UNCERTAIN). Correctif 9.2.0 : ne se désactive plus si l'on sort du casier avant le soin [52].
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][34].
- **Interactions, DR, anti-synergies** : totems limités (5 + boons) ; Hex / Boon cleanse compte (HYPOTHESIS : boons ennemis/propres ? non vérifié).
- **Synergies (HEURISTIC / EXPERT OPINION)** : Counterforce, Small Game, Detective's Hunch, Built to Last (casier).
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SoloQ, contre Hex builds (cleanse utile + soin), soin en 8 s au lieu de 16 s.
- **Quand elle n'en produit pas (HEURISTIC)** : totems déjà purifiés ; Sloppy/Broken (Pentimento? non vérifié) ; tueurs qui fouillent les casiers.
- **Écart avec le seed** : OK (10/9/8 s, une fois par purification [34]) ; IMPRÉCIS mineur : omet l'exclusion sous Broken.
- **Sources** : [15] [34] [52]

### Empathic Connection — Yoichi Asakawa
- **Statut** : LIVE 10.1.2a ; 9.0.0 : aura sur toute la carte (était 32/64/96 m), 30 % fixe → 25/30/35 % [50] ; buff au PTB 10.2.0 (non LIVE).
- **Effet LIVE** : effet permanent : vous soignez les autres survivants 25/30/35 % plus vite ; quand un autre survivant est blessé, votre aura (soigneur potentiel) lui est révélée, sans limite de distance — VERIFIED_MULTI_SOURCE [35][50][57] (version LIVE = historique 9.0.0 du wiki ; « was 25/30/35% » dans la note 559)
- **Valeurs / CD / conditions / limites** : 25/30/35 % (LIVE) ; aura carte entière depuis 9.0.0 (note officielle [50]).
- **PTB 10.2.0 (NON LIVE)** : soin altruiste **40/45/50 %** (was 25/30/35 %) ; aura inchangée — VERIFIED_MULTI_SOURCE [57][35].
- **Interactions, DR, anti-synergies** : cumul avec Botany Knowledge / Boon CoH / WGLF (DR possible, HYPOTHESIS).
- **Synergies (HEURISTIC / EXPERT OPINION)** : Botany Knowledge, We'll Make It, Aftercare, Bond.
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 2 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SoloQ : les blessés viennent à vous (économie de déplacements).
- **Quand elle n'en produit pas (HEURISTIC)** : SWF (communication vocale suffit) ; contre tueurs qui punissent les soins (Sloppy, Nurse's).
- **Écart avec le seed** : OK (LIVE 25/30/35 %, carte entière, PTB 40/45/50 % correctement étiqueté [35][50][57]).
- **Sources** : [16] [18] [35] [50] [57]

### Alert — Feng Min
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki ; description réécrite en 9.5.0 [55]).
- **Effet LIVE** : quand le tueur effectue une action Break (casser) ou Damage (endommager), son aura vous est révélée 3/4/5 s — STRONG_SECONDARY [36][17]
- **Valeurs / CD / conditions / limites** : 3/4/5 s ; aucun cooldown ; **aucun signal sonore** dans la description [36].
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][36].
- **Interactions, DR, anti-synergies** : Undetectable/Blindness du killer bloquent (HYPOTHESIS standard). Tueurs qui ne cassent pas (Deadlock, pas de kick) → peu d'activations.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Kindred, Bond, Distortion (pour ne pas être lu en retour : non), Resilience.
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : savoir où le tueur kick un gen / casse une palette pour choisir son gen.
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs à pression via pouvoir (pas de breaks) ; Undetectable.
- **Écart avec le seed** : IMPRÉCIS (« vous entendez un signal » absent de la description wiki [36] ; « Break » couvre toute action de casse, pas seulement palettes et murs). Durée OK.
- **Sources** : [17] [36] [55]

### Champion of Light — Alan Wake
- **Statut** : LIVE 10.1.2a ; 9.0.0 : cooldown 80/70/60 → 60/50/40 s [50].
- **Effet LIVE** : en éclairant avec une lampe : **+50 % de Haste** (statut Haste selon le wiki) ; après avoir aveuglé le tueur par n'importe quel moyen : Hindered −20 % pendant 6 s (non cumulable) ; cooldown 60/50/40 s après un aveuglement — STRONG_SECONDARY [37] ; cooldown VERIFIED_MULTI_SOURCE [37][50]
- **Valeurs / CD / conditions / limites** : 50 % ; Hindered 20 % / 6 s ; CD 60/50/40 s [37][50]. L'hypothèse du lot 2 « pas une Haste classique » n'est pas soutenue par le wiki (qui parle de « Haste Status Effect ») ; son interaction exacte avec le ralentissement en visant reste non documentée (HYPOTHESIS).
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][37].
- **Interactions, DR, anti-synergies** : Lightborn contre ; Hindered ↔ DR (HYPOTHESIS).
- **Synergies (HEURISTIC / EXPERT OPINION)** : lampe + Lightweight? / Flashbang, Blast Mine (HYPOTHESIS).
- **Difficulté (HEURISTIC)** : 3
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : flashlight saves/blind en chase contre tueurs sans Lightborn.
- **Quand elle n'en produit pas (HEURISTIC)** : Lightborn, tueurs rapides, sans lampe.
- **Écart avec le seed** : OK (+50 % de Haste, Hindered 20 % 6 s, 60/50/40 s [37][50]).
- **Sources** : [37] [50]

### Counterforce — Jill Valentine
- **Statut** : LIVE 10.1.2a ; buff 9.0.0 (vitesse de base 120 → 125 %, bonus cumulable 20 → 25 %, aura 2/3/4 → 10/12/14 s) [50].
- **Effet LIVE** : effet permanent : vitesse de purification de base portée à 125 % ; à chaque totem purifié : +25 % cumulable et aura du totem le plus éloigné 10/12/14 s — VERIFIED_MULTI_SOURCE [38][50]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][38].
- **Interactions** : Inner Strength, Small Game, Detective's Hunch.
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur (HEURISTIC)** : contre Hex builds (Undying/Pentimento/No One Escapes Death).
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs sans totems.
- **Écart avec le seed** : OK (25 %, +25 % par totem, 10/12/14 s [38][50]) ; le buff 9.0.0 est confirmé [50].
- **Sources** : [38] [50]

### Urban Evasion — Nea Karlsson
- **Statut** : LIVE 10.1.2a (aucune modification 8.x-10.1.2a au change log wiki).
- **Effet LIVE** : effet permanent : vitesse de déplacement accroupi +90/95/100 % — STRONG_SECONDARY [39]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][39].
- **Interactions, DR** : modificateur de vitesse accroupi (DR si cumulé avec autre bonus identique, HYPOTHESIS).
- **Synergies (HEURISTIC / EXPERT OPINION)** : Lightweight, Distortion, Quick & Quiet, Extrasensory Perception (accroupi).
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : rotations furtives, éviter le rayon de terreur / Stake Out.
- **Quand elle n'en produit pas (HEURISTIC)** : en chase, contre tueurs à détection (auras).
- **Écart avec le seed** : OK (90/95/100 % [39]).
- **Sources** : [39]

### Cross-Examination — Shane Wiigwaas
- **Statut** : LIVE 10.1.2a (perk 10.0.0) ; nerf 10.0.3 : ne s'active plus en poursuite [40].
- **Effet LIVE** : dans le rayon de terreur **et hors poursuite**, vous voyez les « Light Marks » laissées par le tueur en se déplaçant (durée 10 s) ; debout sur une Light Mark, vous gagnez Elusive, qui persiste 3/4/5 s — STRONG_SECONDARY [40]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][40].
- **Interactions** : Elusive (FACT audit : supprime griffures, grognements, flaques de sang, bloque la lecture d'aura par le tueur ; fin si frappé/à terre).
- **Difficulté (HEURISTIC)** : 2 (HYPOTHESIS)
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : rotations dans le rayon de terreur hors poursuite : se placer sur les Light Marks donne Elusive (pas de griffures, sang, gémissements ni lecture d'aura) pour s'éloigner ou approcher un crochet.
- **Quand elle n'en produit pas (HEURISTIC)** : en poursuite (inactive depuis 10.0.3 [40]) ; tueurs furtifs (sans rayon de terreur).
- **Écart avec le seed** : IMPRÉCIS — omet la condition « hors poursuite » (nerf 10.0.3 [40]). Valeurs OK (10 s, 3/4/5 s).
- **Sources** : [40]

### Conviction — Michonne Grimes
- **Statut** : LIVE 10.1.2a (perk 9.1.0 [51]) ; modifiée 9.3.0 [53].
- **Effet LIVE** : après avoir fini un soin sur un autre survivant, quand vous êtes à terre, la perk s'active ; après au moins 25 % de récupération, bouton actif = auto-récupération complète, puis Broken, et retour automatique à l'état à terre après 20/25/30 s — STRONG_SECONDARY [41] ; condition « soigner un autre survivant » VERIFIED_MULTI_SOURCE [41][53]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][41].
- **Interactions** : Plot Twist (boucle supprimée 9.3.0) ; Broken empêche d'être soigné.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Tenacity, Flip-Flop (HYPOTHESIS).
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur (HEURISTIC)** : sortir d'un slug pour atteindre un crochet/sortie ou relever un autre.
- **Quand elle n'en produit pas (HEURISTIC)** : retomber en plein milieu de la map sans allié.
- **Écart avec le seed** : OK (condition 9.3.0, 25 %, Broken, 20/25/30 s [41][53]).
- **Sources** : [8] [41] [51] [53]

### Self-Preservation — Lee Yun-jin
- **Statut** : LIVE 10.1.2a (rework 9.5.0 [55]) ; nerf au PTB 10.2.0 (non LIVE).
- **Effet LIVE** : quand un autre survivant est accroché, vous gagnez Elusive 20/25/30 s — VERIFIED_MULTI_SOURCE [42][55][57] (version LIVE = historique 9.5.0 du wiki ; note 9.5.0 « When another Survivor is hooked, you gain Elusive for 20/25/30s » ; « was 20/25/30s » dans la note 559)
- **Valeurs / CD / conditions / limites** : 20/25/30 s (LIVE). Elusive se termine si vous êtes frappé ou à terre [22]. Correctif 9.5.0 : ne s'active plus quand le porteur lui-même est accroché [55].
- **PTB 10.2.0 (NON LIVE)** : Elusive **13/14/15 s** (was 20/25/30 s) ; justification BHVR : plusieurs Self-Preservation font revenir le tueur au crochet plus souvent — VERIFIED_MULTI_SOURCE [57][42].
- **Interactions, DR** : Elusive non cumulatif en durée (HYPOTHESIS) ; interactions avec Elusive des protections d'unhook (10.1.0).
- **Synergies (HEURISTIC / EXPERT OPINION)** : Distortion, Urban Evasion, Kindred (se positionner pendant l'accrochage).
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 2 · chase 0 · macro 2 · info 0 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : se déplacer sans laisser de traces pendant qu'un allié est accroché (aller au save ou quitter la zone).
- **Quand elle n'en produit pas (HEURISTIC)** : tueur qui ne dépend pas des griffures (camp proche, pouvoir de localisation).
- **Écart avec le seed** : OK (LIVE et PTB correctement distingués [42][55][57]).
- **Sources** : [18] [22] [42] [55] [57]

### Wide Open Throttle — Shane Wiigwaas
- **Statut** : LIVE 10.1.2a (perk 10.0.0 ; aucune modification au change log wiki).
- **Effet LIVE** : un saut rapide (fast vault) de palette donne 10/12,5/15 % de Haste pendant 3 s ; la palette est immédiatement relevée, bloquée par l'Entité et révélée à tous les survivants pendant 60 s ; cooldown 60 s — STRONG_SECONDARY [43]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][43].
- **Interactions, DR** : Haste (DR avec Sprint Burst/Lithe etc. si identique, HYPOTHESIS).
- **Difficulté (HEURISTIC)** : 3 (HYPOTHESIS)
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : loops de palette où l'on peut enchaîner un fast vault : Haste + palette relevée et bloquée 60 s (le tueur ne peut pas la casser ni la franchir pendant ce temps : HYPOTHESIS sur « blocked by the Entity »).
- **Quand elle n'en produit pas (HEURISTIC)** : zones sans palettes ; tueurs qui ignorent les palettes (Blight, Nurse) ; CD 60 s entre deux usages.
- **Écart avec le seed** : OK (10/12,5/15 % 3 s, palette bloquée et visible 60 s, CD 60 s [43]).
- **Sources** : [43]

### Desperate Measures — Felix Richter
- **Statut** : LIVE 10.1.2a ; buff 9.0.0 (10/12/14 → 16/18/20 %) [50].
- **Effet LIVE** : active dès qu'un survivant (vous compris) n'est pas en bonne santé : soin et décrochage +16/18/20 % **cumulables par survivant** blessé, à terre ou accroché, jusqu'à **64/72/80 %** — VERIFIED_MULTI_SOURCE [44][50]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][44].
- **Interactions, DR** : bonus empilés sur la vitesse de soin → DR 9.6.0 probable (HYPOTHESIS).
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : équipes blessées en cascade (tueurs à blessures multiples).
- **Quand elle n'en produit pas (HEURISTIC)** : quand l'équipe reste en bonne santé.
- **Écart avec le seed** : OK (16/18/20 % par survivant [44][50]) ; IMPRÉCIS mineur : plafond 64/72/80 % omis ; buff 9.0.0 confirmé [50].
- **Sources** : [44] [50]

### Dance With Me — Kate Denson
- **Statut** : LIVE 10.1.2a (8.2.0 : CD 60/50/40 → 30/25/20 s ; 8.6.0 : durée 3 → 5 s, CD → 25/20/15 s) [45].
- **Effet LIVE** : sur une action rapide (Rushed) de **saut de fenêtre** ou de **sortie de casier** : scratch marks supprimées pendant 5 s ; cooldown **25/20/15 s** selon le change log (la description affiche « 20 / 20 / 15 », probable coquille) — STRONG_SECONDARY [45]
- **Valeurs / CD / conditions / limites** : 5 s ; 25/20/15 s (rang I contesté entre description et change log du même wiki : UNCERTAIN pour le rang I). Pas de déclenchement sur saut de palette ni sur saut moyen d'après la description [45].
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][45].
- **Synergies (HEURISTIC / EXPERT OPINION)** : Quick & Quiet, Lithe, Distortion.
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : casser la ligne de vue puis disparaître sans traces.
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs à audio/aura, Stridor.
- **Écart avec le seed** : IMPRÉCIS — « saut moyen/rapide » : seuls les sauts **rapides de fenêtre** et les sorties rapides de casier comptent [45]. Valeurs OK (5 s, 25/20/15 s selon le change log ; rang I UNCERTAIN).
- **Sources** : [45]

### Stake Out — David Tapp
- **Statut** : LIVE 10.1.2a (texte inchangé depuis 3.7.0 selon l'historique wiki) ; **rework au PTB 10.2.0** (non LIVE).
- **Effet LIVE** : rester dans le rayon de terreur sans être poursuivi rapporte +1 jeton toutes les 15 s (max 2/3/4) ; pendant une interaction à skill checks, un jeton convertit un **good** en **great** (+1 % de bonus de progression) ; les greats normaux ne consomment pas de jeton — STRONG_SECONDARY [46]
- **Valeurs / CD / conditions / limites** : 15 s ; 2/3/4 jetons ; +1 % [46].
- **PTB 10.2.0 (NON LIVE)** : rework : jeton après 15 s caché **à 24 m ou moins du tueur**, dans son rayon de terreur (max 2/3/4) ; avec au moins 1 jeton, les skill checks de base sont remplacés par des skill checks **spéciaux** (plus difficiles) : **+4 %** de progression en cas de réussite, **−4 %** de plus en cas d'échec ; chaque réussite ou échec consomme 1 jeton ; le skill check spécial n'active plus les autres perks de skill check — VERIFIED_MULTI_SOURCE [57][46]. **Correction** : la description PTB du lot 2 (« zones Good +150/175/200 %, Great +30 % ») était **fausse** — elle correspond à la perk voisine This is Not Happening dans la note 559.
- **Interactions, DR** : LIVE : combo Hyperfocus (jeton = great automatique) — le PTB supprime explicitement ce type d'interaction.
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC, LIVE)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : builds Hyperfocus / skill checks sous pression (Overcharge, Unnerving).
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs à petit rayon de terreur (peu de jetons) ; après le passage LIVE du 10.2.0 (rework).
- **Écart avec le seed** : LIVE OK (15 s, 2/3/4, good → great +1 % [46]) ; IMPRÉCIS (la page 25 ne signale pas le rework PTB, que la page 32 mentionne).
- **Sources** : [18] [19] [46] [57]

### Borrowed Time — Bill Overbeck
- **Statut** : LIVE 10.1.2a (texte inchangé depuis 6.1.0 selon l'historique wiki ; les changements du PTB 9.2.0 et du PTB 9.3.0 ont été annulés avant la sortie [52][53]) ; **rework complet au PTB 10.2.0** (non LIVE).
- **Effet LIVE** : quand vous décrochez un autre survivant, son Endurance est prolongée de 6/8/10 s et sa Haste de 10 s — STRONG_SECONDARY [47] (version LIVE = historique 6.1.0 ; la page affiche déjà le PTB). N'allonge pas l'Elusive des protections de décrochage (dev note 559 [57]).
- **Valeurs / CD / conditions / limites** : +6/8/10 s d'Endurance ; +10 s de Haste [47].
- **PTB 10.2.0 (NON LIVE)** : rework : quand vous subissez Deep Wound en ayant Endurance, soin passif (mend) en 40/35/30 s — VERIFIED_MULTI_SOURCE [57][47]. Historique : un rework PTB 9.3.0 (relève complète) a été reverted [53] (HISTORICAL).
- **Interactions** : protections d'unhook basekit 10 s Endurance + Haste + Elusive 10 s (10.1.0, audit [22]).
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC, LIVE)** : SoloQ 2 · SWF 2 · chase 0 · macro 0 · info 0 · anti-tunnel 2 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur (HEURISTIC)** : décrochages sous camping/tunnel.
- **Quand elle n'en produit pas (HEURISTIC)** : tueur qui quitte le crochet ; décrochages sûrs.
- **Écart avec le seed** : OK (LIVE +6/8/10 s d'Endurance et +10 s de Haste [47] ; PTB « rework complet » [57]).
- **Sources** : [19] [22] [47] [52] [53] [57]

### Extrasensory Perception — Eleven
- **Statut** : LIVE 10.1.2a (perk 9.4.0 [54], premier Elusive LIVE, FACT audit [22]).
- **Effet LIVE** : après 4 s accroupi : auras des survivants, du tueur et de divers objets (coffres, portes, générateurs, trappe, objets, palettes, totems, fenêtres) dans un rayon croissant jusqu'à 44 m ; Elusive et Oblivious ; tout s'arrête quand vous vous relevez ou après 11 s, puis cooldown 60/50/40 s — VERIFIED_MULTI_SOURCE [48][54]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][48].
- **Synergies (HEURISTIC / EXPERT OPINION)** : Urban Evasion (HYPOTHESIS).
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC) / n'en produit pas** : info en SoloQ vs danger d'Oblivious (pas de rayon de terreur) — HYPOTHESIS.
- **Écart avec le seed** : OK (4 s, 44 m, Elusive + Oblivious, 11 s, 60/50/40 s [48][54]).
- **Sources** : [22] [48] [54]

### Salvation's Cry — Aurora Stardotter
- **Statut** : LIVE 10.1.2a (perk 10.1.0 [56]).
- **Effet LIVE** : quand le tueur commence à vous poursuivre : vous voyez les auras des autres survivants 1/2/3 s ; les survivants hors poursuite voient votre aura et celle du tueur pendant 5 s — VERIFIED_MULTI_SOURCE [49][56]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [57][49].
- **Difficulté (HEURISTIC)** : 1 (HYPOTHESIS)
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 0 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SoloQ (annonce de chase sans communication) — HYPOTHESIS.
- **Quand elle n'en produit pas (HEURISTIC)** : SWF vocal.
- **Écart avec le seed** : OK (1/2/3 s, 5 s [49][56]).
- **Sources** : [49] [56]

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| P25-C01 | Built to Last : **14/12/10 s** (note 9.1.0, « Changes from PTB »), recharges 99/66/33 %, désactivée après 3 usages | [51][23] | LIVE (9.1.0) | VERIFIED_PRIMARY (durée) / STRONG_SECONDARY (mécanique) ; wiki en conflit (12/10/8 s) |
| P25-C02 | Self-Care : auto-soin à 25/30/35 % de la vitesse normale | [24] | LIVE | STRONG_SECONDARY |
| P25-C03 | WGLF : relève +100 %, Endurance 6/8/10 s, CD 30 s | [25] | LIVE (8.3.2) | STRONG_SECONDARY |
| P25-C04 | Soul Guard : Endurance 4/6/8 s après soin/relève depuis l'état à terre, CD 30 s ; self-recovery sous Cursed | [26] | LIVE | STRONG_SECONDARY |
| P25-C05 | Tenacity : rampe + récup, Haste 30/40/50 %, gémissements −75 %, aura bloquée à terre | [27][52][53] | LIVE (9.3.0) | VERIFIED_MULTI_SOURCE |
| P25-C06 | AMN : relève 5/4/3 s (buff 9.1.0) ; aucun cooldown | [28][51] | LIVE (9.1.0) | VERIFIED_MULTI_SOURCE |
| P25-C07 | Saboteur : auras crochets 56 m autour du ramassage ; sabotage sans toolbox +30 % ; CD 70/65/60 s | [29] | LIVE | STRONG_SECONDARY |
| P25-C08 | Breakout : 5 m, lutte +25 %, Haste 6/8/10 % | [30] | LIVE (8.7.0) | STRONG_SECONDARY |
| P25-C09 | Boil Over : lutte +60/70/80 %, crochets masqués 16 m, +33 % de la progression actuelle par chute | [31] | LIVE | STRONG_SECONDARY |
| P25-C10 | Flip-Flop : 50 % du taux de récup vers la lutte, max 40/45/50 % | [32] | LIVE | STRONG_SECONDARY |
| P25-C11 | Power Struggle : 25/20/15 % de lutte, palette → stun ; auras des palettes debout à terre | [33] | LIVE | STRONG_SECONDARY |
| P25-C12 | Inner Strength : 10/9/8 s casier après purification, pas sous Broken | [34] | LIVE | STRONG_SECONDARY |
| P25-C13 | Empathic Connection : 25/30/35 % LIVE, aura carte entière ; 40/45/50 % PTB | [35][50][57] | LIVE / PTB 10.2.0 | VERIFIED_MULTI_SOURCE |
| P25-C14 | Alert : aura tueur 3/4/5 s sur Break/Damage, sans signal sonore | [36] | LIVE | STRONG_SECONDARY |
| P25-C15 | Self-Preservation : Elusive 20/25/30 s LIVE ; 13/14/15 s PTB | [42][55][57] | LIVE (9.5.0) / PTB 10.2.0 | VERIFIED_MULTI_SOURCE |
| P25-C16 | Stake Out PTB : jeton à ≤ 24 m ; skill checks spéciaux +4 % / −4 % ; n'active plus d'autres perks | [57][46] | PTB 10.2.0 (NON LIVE) | VERIFIED_MULTI_SOURCE |
| P25-C17 | Borrowed Time PTB : Deep Wound sous Endurance → soin passif 40/35/30 s | [57][47] | PTB 10.2.0 (NON LIVE) | VERIFIED_MULTI_SOURCE |
| P25-C18 | Conviction : exige d'avoir soigné un autre survivant (9.3.0) ; ≥ 25 % ; Broken ; retombe après 20/25/30 s | [41][53] | LIVE (9.3.0) | VERIFIED_MULTI_SOURCE |
| P25-C19 | Champion of Light : +50 % Haste en éclairant ; Hindered 20 % 6 s ; CD 60/50/40 s | [37][50] | LIVE (9.0.0) | VERIFIED_MULTI_SOURCE |
| P25-C20 | Counterforce : base 125 %, +25 % par totem, aura 10/12/14 s | [38][50] | LIVE (9.0.0) | VERIFIED_MULTI_SOURCE |
| P25-C21 | Urban Evasion : accroupi +90/95/100 % | [39] | LIVE | STRONG_SECONDARY |
| P25-C22 | Cross-Examination : hors poursuite (10.0.3), Light Marks 10 s, Elusive 3/4/5 s | [40] | LIVE | STRONG_SECONDARY |
| P25-C23 | Wide Open Throttle : 10/12,5/15 % 3 s ; palette bloquée 60 s ; CD 60 s | [43] | LIVE | STRONG_SECONDARY |
| P25-C24 | Desperate Measures : 16/18/20 % par survivant, max 64/72/80 % | [44][50] | LIVE (9.0.0) | VERIFIED_MULTI_SOURCE |
| P25-C25 | Dance With Me : 5 s ; CD 25/20/15 s (description : 20/20/15) | [45] | LIVE (8.6.0) | STRONG_SECONDARY (rang I UNCERTAIN) |
| P25-C26 | Stake Out LIVE : jeton / 15 s, max 2/3/4, good → great +1 % | [46] | LIVE | STRONG_SECONDARY |
| P25-C27 | Borrowed Time LIVE : +6/8/10 s d'Endurance, +10 s de Haste | [47] | LIVE | STRONG_SECONDARY |
| P25-C28 | Extrasensory Perception : 4 s, 44 m, Elusive + Oblivious, 11 s, CD 60/50/40 s | [48][54] | LIVE (9.4.0) | VERIFIED_MULTI_SOURCE |
| P25-C29 | Salvation's Cry : 1/2/3 s ; 5 s pour les alliés hors poursuite | [49][56] | LIVE (10.1.0) | VERIFIED_MULTI_SOURCE |

## Conflits

#### CONFLICT-P25-01 : Haste de Breakout
- Source A : résumé wiki.gg/fandom — 5/6/7 %.
- Source B : 2e résumé — 6/8/10 % « current ».
- Résolution : **RÉSOLU (6/8/10 %)** — page wiki complète [30] : « 6 / 8 / 10 % Haste », change log « Patch 8.7.0 : increased the Haste strength from 5 / 6 / 7 % to 6 / 8 / 10 % ».

#### CONFLICT-P25-02 : Vitesse d'auto-soin de Self-Care
- Source A : résumé wiki.gg — 25/30/35 %, médikit +10/15/20 %.
- Source B : résumé fandom/nightlight — 30/40/50 %, médikit +50/75/100 %.
- Résolution : **RÉSOLU (25/30/35 %)** — page wiki complète [24] ; la description LIVE ne contient **aucun** bonus d'efficacité de médikit (ni 10/15/20 %, ni 50/75/100 %) : les deux bonus proviennent d'anciennes versions.

#### CONFLICT-P25-03 : Cooldown d'Any Means Necessary
- Source A : résumé wiki.gg/nightlight — CD 100/80/60 s.
- Source B : seed — aucun CD.
- Résolution : **RÉSOLU (pas de cooldown)** — description LIVE complète [28] sans cooldown ; buff 9.1.0 (6/5/4 → 5/4/3 s) confirmé par la note officielle [51].

#### CONFLICT-P25-04 : durée de Built to Last (wiki vs note officielle)
- Source A : page wiki complète [23] : 12/10/8 s ; change log « Patch 9.1.0 : 14/13/12 → 12/10/8 ».
- Source B : note officielle 9.1.0 [51] : section principale « Decreased the time spent in a locker to 14/12/10 seconds (was 14/13/12) » ; section « Changes from PTB » : « Increased the time spent in a locker to 14/12/10 seconds (was 12/10/8) ».
- Hypothèse : le wiki a enregistré la valeur du PTB 9.1.0 et n'a pas intégré la correction de sortie ; aucune note 9.2.0-10.1.2a lue ne modifie Built to Last.
- Résolution : **RÉSOLU en faveur de la note officielle (14/12/10 s, VERIFIED_PRIMARY)** ; à signaler au wiki. Le verdict « FAUX » porté sur le seed au lot 2 est retiré.

#### CONFLICT-P25-05 : cooldown de Dance With Me (rang I)
- Source A : description wiki [45] : « 20 / 20 / 15 seconds ».
- Source B : change log du même wiki [45] : 8.6.0 « 30 / 25 / 20 → 25 / 20 / 15 seconds » ; seed : 25/20/15 s.
- Hypothèse : coquille dans la description wiki (motif « 25/20/15 » identique à Quick & Quiet et Deception, modifiées au même patch 8.6.0).
- Résolution : UNRESOLVED (retenir 25/20/15 s, rang I UNCERTAIN).

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Built to Last — durée | 14/12/10 s | 14/12/10 s (note officielle 9.1.0 [51]) ; le wiki dit 12/10/8 s (valeur PTB) | **OK** (verdict FAUX du lot 2 retiré) |
| Built to Last — limite | « 33 % de moins à chaque utilisation » | 99/66/33 %, désactivée après 3 [23] | IMPRÉCIS (mineur) |
| Self-Care | 75/70/65 % plus lent | 25/30/35 % [24] ; pas de bonus médikit en LIVE | OK |
| WGLF | +100 %, Endurance 6/8/10 s, CD 30 s | idem [25] | OK |
| Soul Guard | Endurance à chaque relèvement complet | aussi quand un allié vous relève [26] | IMPRÉCIS |
| Tenacity | 30/40/50 %, rampe + récup, −75 %, buff 9.3.0 | idem + aura bloquée à terre [27][52][53] | OK / IMPRÉCIS (aura omise) |
| Any Means Necessary | 5/4/3 s, palettes tombées visibles | idem, pas de CD [28] ; buff 9.1.0 confirmé [51] | OK |
| Saboteur | crochets à 56 m (de vous) ; sabotage 2,3 s | 56 m autour du point de ramassage ; +30 % de vitesse sans toolbox [29] | IMPRÉCIS |
| Breakout | Haste 6/8/10 %, 5 m, +25 % | idem [30] | OK |
| Boil Over | chute ≥ 1,25 m → 33 % de progression | 33 % de la progression **actuelle** ; hauteur non précisée [31] | IMPRÉCIS |
| Flip-Flop | au ramassage, 50 % de la récup devient lutte | charge continue à 50 % du taux, plafonnée [32] | IMPRÉCIS |
| Power Struggle | 25/20/15 %, palette → stun | idem (+ auras des palettes debout à terre) [33] | OK |
| Inner Strength | 10/9/8 s blessé, une fois par purification | idem ; pas sous Broken [34] | OK (IMPRÉCIS mineur) |
| Empathic Connection | 25/30/35 % ; carte entière ; PTB 40/45/50 % | idem [35][50][57] | OK |
| Alert | signal sonore + aura 3/4/5 s | aura 3/4/5 s sur Break/Damage ; aucun signal [36] | IMPRÉCIS (signal inventé) |
| Champion of Light | +50 % Haste, Hindered 20 % 6 s, 60/50/40 s | idem [37][50] | OK |
| Counterforce | +25 %, +25 %/totem, 10/12/14 s | idem [38][50] | OK |
| Urban Evasion | +90/95/100 % accroupi | idem [39] | OK |
| Cross-Examination | dans le rayon de terreur, Light Marks 10 s, Elusive 3/4/5 s | idem **hors poursuite** (nerf 10.0.3) [40] | IMPRÉCIS |
| Conviction | condition 9.3.0, 25 %, Broken, 20/25/30 s | idem [41][53] | OK |
| Self-Preservation | 20/25/30 s ; PTB 13/14/15 s | idem [42][55][57] | OK |
| Wide Open Throttle | 10/12,5/15 % 3 s, palette bloquée 60 s, CD 60 s | idem [43] | OK |
| Desperate Measures | 16/18/20 % par survivant | idem, plafond 64/72/80 % omis [44][50] | OK (IMPRÉCIS mineur) |
| Dance With Me | sortie rapide de casier ou saut moyen/rapide ; 5 s ; 25/20/15 s | sauts **rapides de fenêtre** et sorties rapides de casier seulement [45] | IMPRÉCIS |
| Stake Out | LIVE good → great ; pas de mention PTB en p25 | LIVE OK [46] ; rework PTB [57] | IMPRÉCIS (omission PTB) |
| Borrowed Time | +6/8/10 s Endurance, +10 s Haste ; PTB rework complet | idem [47][57] | OK |
| Extrasensory Perception | 4 s, 44 m, Elusive + Oblivious, 11 s, 60/50/40 s | idem [48][54] | OK |
| Salvation's Cry | 1/2/3 s ; 5 s | idem [49][56] | OK |

## Questions ouvertes

1. Built to Last : faire corriger la page wiki (12/10/8 s) ou vérifier en jeu que la valeur LIVE est bien 14/12/10 s (CONFLICT-P25-04).
2. Dance With Me : cooldown du rang I (25 ou 20 s ; CONFLICT-P25-05).
3. Boil Over : hauteur minimale de chute (1,25 m selon le seed) — absente de la description wiki.
4. Saboteur : durée réelle d'un sabotage sans toolbox (« 2,3 s » du seed ?).
5. Inner Strength : fonctionne-t-elle sous Deep Wound (non précisé par le wiki) ?
6. Quels modificateurs de ces perks (vitesse de soin, Haste, vitesse de lutte) sont soumis aux DR 9.6.0 ? (liste officielle du manuel non lue).

## Sources

[1] Built to Last — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Built_to_Last — consulté le 27/09/2026 via WebSearch
[2] Built to Last — NightLight / DBDVault — https://nightlight.gg/perks/Built_to_Last ; https://www.dbdvault.com/perks/built-to-last — consulté le 27/09/2026 via WebSearch
[3] Self-Care — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Self-Care — consulté le 27/09/2026 via WebSearch
[4] Self-Care — Fandom / NightLight — https://deadbydaylight.fandom.com/wiki/Self-Care ; https://nightlight.gg/perks/Self-Care — consulté le 27/09/2026 via WebSearch
[5] We're Gonna Live Forever — NightLight / Fandom — https://nightlight.gg/perks/We're_Gonna_Live_Forever ; https://deadbydaylight.fandom.com/wiki/We're_Gonna_Live_Forever — consulté le 27/09/2026 via WebSearch
[6] Soul Guard — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Soul_Guard — consulté le 27/09/2026 via WebSearch
[7] Tenacity — wiki.gg / Fandom — https://deadbydaylight.wiki.gg/wiki/Tenacity ; https://deadbydaylight.fandom.com/wiki/Tenacity — consulté le 27/09/2026 via WebSearch
[8] 9.3.0 | Mid-Chapter (notes officielles) / Patch Notes 9.3.X — https://support.deadbydaylight.com/hc/en-us/articles/43679054706708-9-3-0-Mid-Chapter ; https://deadbydaylight.wiki.gg/wiki/Patch_Notes_9.3.X — consulté le 27/09/2026 via WebSearch
[9] Any Means Necessary — wiki.gg / NightLight — https://deadbydaylight.wiki.gg/wiki/Any_Means_Necessary ; https://nightlight.gg/perks/Any_Means_Necessary — consulté le 27/09/2026 via WebSearch
[10] Saboteur — Fandom / NightLight — https://deadbydaylight.fandom.com/wiki/Saboteur ; https://nightlight.gg/perks/Saboteur — consulté le 27/09/2026 via WebSearch
[11] Breakout — wiki.gg / Fandom — https://deadbydaylight.wiki.gg/wiki/Breakout ; https://deadbydaylight.fandom.com/wiki/Breakout — consulté le 27/09/2026 via WebSearch
[12] Boil Over — wiki.gg / Fandom — https://deadbydaylight.wiki.gg/wiki/Boil_Over ; https://deadbydaylight.fandom.com/wiki/Boil_Over — consulté le 27/09/2026 via WebSearch
[13] Flip-Flop — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Flip-Flop — consulté le 27/09/2026 via WebSearch
[14] Power Struggle — wiki.gg / Fandom — https://deadbydaylight.wiki.gg/wiki/Power_Struggle ; https://deadbydaylight.fandom.com/wiki/Power_Struggle — consulté le 27/09/2026 via WebSearch
[15] Inner Strength — wiki.gg / Fandom — https://deadbydaylight.wiki.gg/wiki/Inner_Strength — consulté le 27/09/2026 via WebSearch
[16] Empathic Connection — wiki.gg / Fandom — https://deadbydaylight.wiki.gg/wiki/Empathic_Connection — consulté le 27/09/2026 via WebSearch
[17] Alert — wiki.gg / Fandom — https://deadbydaylight.wiki.gg/wiki/Alert — consulté le 27/09/2026 via WebSearch
[18] 10.2.0 | PTB Patch Notes (Steam / Patched) — https://store.steampowered.com/news/app/381210/view/706656822950364293 ; https://patched.gg/games/dead-by-daylight/1020-ptb-patch-notes — consulté le 27/09/2026 via WebSearch
[19] DBD Perk Changes: All 58 Killer and Survivor Perks in the 10.2.0 PTB — timesaver — https://timesaver.gg/blog/dbd-perk-changes-10-2-0 — consulté le 27/09/2026 via WebSearch
[20] Patch Notes 9.1.X — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Patch_9.1.0 — consulté le 27/09/2026 via WebSearch (résumé sans détail AMN)
[21] Self-Care nerf discussion / 6.1.0 notes — https://www.shacknews.com/article/131473/dead-by-daylight-update-610-patch-notes — consulté le 27/09/2026 via WebSearch (historique seulement)
[22] Audit interne phase 0 — kb/seed/audit_phase0.txt (tableau patchs 9.3.0-9.5.0, glossaire Elusive) — lecture locale
[23] Built to Last — deadbydaylight.wiki.gg/wiki/Built_to_Last — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[24] Self-Care — deadbydaylight.wiki.gg/wiki/Self-Care — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[25] We're Gonna Live Forever — deadbydaylight.wiki.gg/wiki/We're_Gonna_Live_Forever — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[26] Soul Guard — deadbydaylight.wiki.gg/wiki/Soul_Guard — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[27] Tenacity — deadbydaylight.wiki.gg/wiki/Tenacity — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[28] Any Means Necessary — deadbydaylight.wiki.gg/wiki/Any_Means_Necessary — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[29] Saboteur — deadbydaylight.wiki.gg/wiki/Saboteur — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[30] Breakout — deadbydaylight.wiki.gg/wiki/Breakout — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[31] Boil Over — deadbydaylight.wiki.gg/wiki/Boil_Over — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[32] Flip-Flop — deadbydaylight.wiki.gg/wiki/Flip-Flop — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[33] Power Struggle — deadbydaylight.wiki.gg/wiki/Power_Struggle — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[34] Inner Strength — deadbydaylight.wiki.gg/wiki/Inner_Strength — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[35] Empathic Connection — deadbydaylight.wiki.gg/wiki/Empathic_Connection — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[36] Alert — deadbydaylight.wiki.gg/wiki/Alert — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[37] Champion of Light — deadbydaylight.wiki.gg/wiki/Champion_of_Light — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[38] Counterforce — deadbydaylight.wiki.gg/wiki/Counterforce — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[39] Urban Evasion — deadbydaylight.wiki.gg/wiki/Urban_Evasion — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[40] Cross-Examination — deadbydaylight.wiki.gg/wiki/Cross-Examination — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[41] Conviction — deadbydaylight.wiki.gg/wiki/Conviction — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[42] Self-Preservation — deadbydaylight.wiki.gg/wiki/Self-Preservation — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[43] Wide Open Throttle — deadbydaylight.wiki.gg/wiki/Wide_Open_Throttle — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[44] Desperate Measures — deadbydaylight.wiki.gg/wiki/Desperate_Measures — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[45] Dance With Me — deadbydaylight.wiki.gg/wiki/Dance_With_Me — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[46] Stake Out — deadbydaylight.wiki.gg/wiki/Stake_Out — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[47] Borrowed Time — deadbydaylight.wiki.gg/wiki/Borrowed_Time — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[48] Extrasensory Perception — deadbydaylight.wiki.gg/wiki/Extrasensory_Perception — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[49] Salvation's Cry — deadbydaylight.wiki.gg/wiki/Salvation's_Cry — page complète via API, consultée le 27/09/2026 (digest `kb/sources/wiki_perks_digest.md`)
[50] Note officielle BHVR 9.0.0 | Five Nights at Freddy's — https://forums.bhvr.com/dead-by-daylight/kb/articles/510 — lue en local (`kb/sources/patches/official_510.txt`), consultée le 27/09/2026
[51] Note officielle BHVR 9.1.0 | The Walking Dead — https://forums.bhvr.com/dead-by-daylight/kb/articles/516 — lue en local (`kb/sources/patches/official_516.txt`), consultée le 27/09/2026
[52] Note officielle BHVR 9.2.0 | Sinister Grace — https://forums.bhvr.com/dead-by-daylight/kb/articles/523 — lue en local (`kb/sources/patches/official_523.txt`), consultée le 27/09/2026
[53] Note officielle BHVR 9.3.0 | Mid-Chapter — https://forums.bhvr.com/dead-by-daylight/kb/articles/529 — lue en local (`kb/sources/patches/official_529.txt`), consultée le 27/09/2026
[54] Note officielle BHVR 9.4.0 | Stranger Things Chapter 2 — https://forums.bhvr.com/dead-by-daylight/kb/articles/534 — lue en local (`kb/sources/patches/official_534.txt`), consultée le 27/09/2026
[55] Note officielle BHVR 9.5.0 | All-Kill: Comeback — https://forums.bhvr.com/dead-by-daylight/kb/articles/538 — lue en local (`kb/sources/patches/official_538.txt`), consultée le 27/09/2026
[56] Note officielle BHVR 10.1.0 | Chorus of Sin — https://forums.bhvr.com/dead-by-daylight/kb/articles/556 — lue en local (`kb/sources/patches/official_556.txt`), consultée le 27/09/2026
[57] Note officielle BHVR 10.2.0 PTB Patch Notes (NON LIVE) — https://forums.bhvr.com/dead-by-daylight/kb/articles/559 — lue en local (`kb/sources/patches/official_559.txt`), consultée le 27/09/2026
