# Lot 2 — Perks survivant, page 25 du guide seed (ch3_survperks.txt l. 308-421)

**Couverture web : 18 éléments vérifiés par recherche (dont 3 partiellement : Conviction, Stake Out, Borrowed Time — PTB/9.3.0 seulement) / 9 non re-vérifiés (quota)** — total 27 perks.

- Référence : **LIVE 10.1.2a (17/09/2026)** ; PTB 10.2.0 (15-21/09/2026) = **PTB, non LIVE**.
- Méthode : WebSearch uniquement (WebFetch bloqué). Toutes les sources sont lues **via résumé de recherche** → confiance max STRONG_SECONDARY, sauf quand le résumé cite les patch notes officielles (alors VERIFIED_PRIMARY « via résumé »).
- **Incident de méthode (FACT)** : le quota WebSearch **de la session** (200 appels, partagé entre tous les agents parallèles) a été épuisé après 26 recherches de ce lot. **10 perks n'ont pu recevoir aucune recherche** : Champion of Light, Counterforce, Urban Evasion, Cross-Examination, Wide Open Throttle, Desperate Measures, Dance With Me, Extrasensory Perception, Salvation's Cry, et l'état LIVE de Borrowed Time / Stake Out. Pour elles, le bloc est marqué **NON VÉRIFIÉ** ; tout ce qui y figure vient du seed ou de connaissances antérieures non sourcées (**UNCERTAIN**). À reprendre en priorité quand le quota sera relevé.
- Notes de valeur (0-3) = **HEURISTIC** (avis d'analyste, pas des données).
- Le seed ne donne pas de mention PTB pour les perks non listées dans le PTB ; « non modifiée d'après les sources lues » ne vaut que pour les perks dont j'ai lu un résumé des notes PTB sans mention. La liste complète des 31 perks survivant du PTB **n'a pas été lue** en entier → PTB = UNCERTAIN par défaut.

---

### Built to Last — Felix Richter
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : caché dans un casier avec un objet **épuisé** équipé, après 12/10/8 s l'objet est rechargé à 99 % (1re fois), 66 % (2e), 33 % (3e) ; la perk est désactivée après la 3e utilisation — STRONG_SECONDARY [1][2]
- **Valeurs / CD / conditions / limites** : 12/10/8 s (LIVE ; ancien 14/13/12 s = OBSOLETE [2]) ; 3 utilisations max par trial ; objet doit être vide (0 charge).
- **PTB 10.2.0** : UNCERTAIN (non lu dans les résumés PTB).
- **Interactions, DR, anti-synergies** : aucune DR connue (pas de modificateur de vitesse). Anti-synergie : casier = immobilité, dangereux dans le rayon de terreur ; perd de la valeur si l'objet est lâché/perdu.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Commodious Toolbox / médikit rare, Streetwise, Inner Strength (casier), Plunderer's Instinct (HYPOTHESIS).
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : objets à gros impact répétés (toolbox sur gen, médikit, lampe) quand le tueur est loin — le coût de 8-12 s en casier est alors marginal.
- **Quand elle n'en produit pas (HEURISTIC)** : contre tueurs à forte pression/fouille de casiers ; sans objet de valeur ; en fin de partie.
- **Écart avec le seed** : FAUX (seed : 14/12/10 s ; vérifié : 12/10/8 s). IMPRÉCIS : « 33 % de moins à chaque utilisation » est correct en substance (99/66/33), mais le seed omet la désactivation après la 3e.
- **Sources** : [1] [2]

### Self-Care — Claudette Morel
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : permet de se soigner soi-même sans médikit à **25/30/35 %** de la vitesse de soin normale ; augmente l'efficacité des médikits utilisés en auto-soin de 10/15/20 % — STRONG_SECONDARY [3] (un 2e résumé [4] donnait 30/40/50 % et 50/75/100 % : valeurs mélangées/anciennes, voir CONFLICT-P25-02)
- **Valeurs / CD / conditions / limites** : auto-soin 16 s × (1/0,35) ≈ 45,7 s au tier III (calcul, HYPOTHESIS : suppose soin de base 16 s) ; skill checks classiques.
- **PTB 10.2.0** : UNCERTAIN (non vu dans les résumés PTB).
- **Interactions, DR, anti-synergies** : se cumule avec Botany Knowledge / Boon: Circle of Healing (modificateurs de vitesse de soin ; soumission aux DR 9.6.0 = HYPOTHESIS, liste DR exhaustive non lue). Anti-synergie : Sloppy Butcher / Mangled, tueurs à Deep Wound.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Botany Knowledge, Boon: Circle of Healing, Inner Strength (alternative), Resurgence.
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 2 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SoloQ sans coéquipier disponible pour soigner ; tueur qui ne revient pas vite (longues maps).
- **Quand elle n'en produit pas (HEURISTIC)** : contre tueurs « one-shot »/Nurse/Blight où ~45 s d'auto-soin coûtent plus qu'une réparation ; contre Thanatophobia/Coulrophobia.
- **Écart avec le seed** : OK sur la vitesse (75/70/65 % plus lent = 25/30/35 %). IMPRÉCIS : omet le bonus d'efficacité médikit 10/15/20 %.
- **Sources** : [3] [4]

### We're Gonna Live Forever — David King
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : +100 % de vitesse pour relever (soigner) un survivant à terre ; le survivant relevé gagne Endurance 6/8/10 s ; cet effet d'Endurance ne se déclenche qu'une fois toutes les 30 s — STRONG_SECONDARY [5]
- **Valeurs / CD / conditions / limites** : +100 % ; Endurance 6/8/10 s ; CD 30 s. Endurance annulée par une action voyante (conspicuous).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : +100 % se cumule avec d'autres bonus de relève (Empathic Connection soigne « les autres ») — DR possible sur modificateurs identiques (HYPOTHESIS). Soul Guard + WGLF : un CD 30 s a été ajouté à Soul Guard justement pour limiter ce combo [6].
- **Synergies (HEURISTIC / EXPERT OPINION)** : Empathic Connection, Botany Knowledge, Buckle Up, Soul Guard (limitée par CD).
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 2 · soin 2 · gen 0 · endgame 1
- **Quand elle produit de la valeur (HEURISTIC)** : contre le slug (Knock Out, Nurse, builds slug) : relève en ~8 s au lieu de 16 et Endurance empêche le re-down immédiat.
- **Quand elle n'en produit pas (HEURISTIC)** : tueur qui accroche toujours immédiatement ; relever sous le nez du tueur (piège de slug).
- **Écart avec le seed** : OK.
- **Sources** : [5] [6]

### Soul Guard — Cheryl Mason
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : Endurance 4/6/8 s **après avoir été soigné depuis l'état à terre ou s'être relevé soi-même** (CD 30 s) ; sous l'effet **Cursed** (Hex actif), débloque la récupération complète seule depuis l'état à terre — STRONG_SECONDARY [6]
- **Valeurs / CD / conditions / limites** : 4/6/8 s ; CD 30 s ; Endurance annulée par action voyante.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : contre Deep Wound déjà actif, Endurance ne protège pas. Dépend du killer (Hex) pour le self-pickup.
- **Synergies (HEURISTIC / EXPERT OPINION)** : WGLF / Buckle Up (effet primaire déclenché par la relève d'un allié), Tenacity, Flip-Flop, Unbreakable (HYPOTHESIS : anti-slug).
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : contre builds Hex (Hex: Undying, Plaything…) + slug ; Endurance après relève = anti re-down.
- **Quand elle n'en produit pas (HEURISTIC)** : tueur sans Hex (la moitié de la perk est morte) ; tueur qui accroche toujours.
- **Écart avec le seed** : IMPRÉCIS (seed : « chaque relèvement complet donne Endurance » ; vérifié : aussi quand on est **soigné** par un allié depuis l'état à terre, pas seulement auto-relevé). Cursed ≈ « sous l'effet d'un Hex » : OK.
- **Sources** : [6]

### Tenacity — David Tapp
- **Statut** : LIVE 10.1.2a (buff 9.3.0)
- **Effet LIVE** : à terre : +30/40/50 % de vitesse de rampe (Haste), rampe et récupération simultanées, volume des gémissements −75 % — STRONG_SECONDARY [7] ; buff 9.3.0 (récupération en rampant réajoutée, Haste 30/40/50 %) — VERIFIED_PRIMARY via résumé [8]
- **Valeurs / CD / conditions / limites** : 30/40/50 % ; −75 % gémissements. Antérieurement nerfée à 15/20/25 % sans rampe+récup (OBSOLETE).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : Haste de rampe (DR possible si autre Haste identique, HYPOTHESIS). Knock Out (killer) supprime la visibilité ; Deadlock/Deerstalker contrent.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Unbreakable, Flip-Flop, Soul Guard, No Mither, Power Struggle (Flip-Flop pré-charge).
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur (HEURISTIC)** : contre slug : ramper vers un allié/pallet tout en récupérant ; contre tueur qui perd la trace (gémissements réduits).
- **Quand elle n'en produit pas (HEURISTIC)** : tueur qui accroche immédiatement ; tueurs à Deerstalker / auras.
- **Écart avec le seed** : OK (valeurs et patch 9.3.0 confirmés).
- **Sources** : [7] [8]

### Any Means Necessary — Yui Kimura
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : relève une palette tombée en 5/4/3 s ; auras des palettes tombées révélées — STRONG_SECONDARY [9]
- **Valeurs / CD / conditions / limites** : 5/4/3 s ; **cooldown 100/80/60 s** selon un résumé [9] (le même résumé signale un mélange de versions → UNCERTAIN, voir CONFLICT-P25-03). Buff 9.1.0 affirmé par le seed : **non confirmé** (les résumés 9.1.0 n'ont pas détaillé AMN).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : palettes détruites (killer) non relevables ; Brutal Strength/Enduring rendent les resets moins rentables.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Windows of Opportunity, Resilience (HYPOTHESIS : pas de modificateur de vitesse d'action connu sur AMN), builds loop.
- **Difficulté (HEURISTIC)** : 3
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 2 · macro 1 · info 1 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : relever une palette forte (safe pallet) avant que le tueur revienne, en pré-chase ou mid-chase avec avance.
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs qui cassent tout (Blight, Hillbilly) ; relever en chase = hit gratuit sans distance.
- **Écart avec le seed** : IMPRÉCIS (omet le cooldown si LIVE = 100/80/60 s) ; buff 9.1.0 NON VÉRIFIABLE.
- **Sources** : [9] [20]

### Saboteur — Jake Park
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : quand le tueur porte un autre survivant, auras des crochets dans un rayon de 56 m **autour du point de ramassage** (Scourge hooks en jaune) ; débloque le sabotage sans toolbox, +30 % de vitesse de sabotage sans toolbox ; CD 70/65/60 s — STRONG_SECONDARY [10]
- **Valeurs / CD / conditions / limites** : 56 m ; +30 % ; CD 70/65/60 s.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : crochet saboté = réapparition après un délai (valeur non vérifiée). Scourge hooks : sabotage possible mais contexte Pain Resonance.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Breakout, Boil Over, Flip-Flop, Power Struggle (build « save / anti-carry »), Background Player.
- **Difficulté (HEURISTIC)** : 3
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 1 · info 1 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SWF qui coordonne sabotage + Breakout sur longues distances de portage (zones sans crochets proches).
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs à portage court/crochets denses ; Agitation / Iron Grasp ; SoloQ sans coordination.
- **Écart avec le seed** : IMPRÉCIS (56 m depuis le point de ramassage, pas depuis vous ; « 2,3 s » de sabotage NON VÉRIFIABLE — la source indique +30 % de vitesse, pas une durée).
- **Sources** : [10]

### Breakout — Yui Kimura
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : à 5 m du tueur portant un survivant : Haste pour vous ; le survivant porté se débat +25 % plus vite ; un survivant n'est affecté que par une instance de Breakout — STRONG_SECONDARY [11]
- **Valeurs / CD / conditions / limites** : Haste **6/8/10 % ou 5/6/7 %** (CONFLICT-P25-01, UNRESOLVED) ; +25 % lutte (16 s → 12,8 s) ; rayon 5 m (était 6 m).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : Haste → DR avec autres Haste identiques (HYPOTHESIS). Non cumulable entre deux survivants (FACT [11]).
- **Synergies (HEURISTIC / EXPERT OPINION)** : Boil Over, Flip-Flop, Power Struggle, Saboteur, Blast Mine/Flashbang pour le save.
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 2 · chase 0 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : bodyblock + suivre le porteur pour réduire la lutte (Wiggle 12,8 s) avec un outil de save.
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs qui frappent les suiveurs ; Mad Grit ; Iron Grasp.
- **Écart avec le seed** : OK sur +25 % et 5 m ; valeurs de Haste NON VÉRIFIABLE (conflit).
- **Sources** : [11]

### Boil Over — Kate Denson
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : porté : effets de lutte sur le tueur +60/70/80 % ; le tueur ne voit pas l'aura des crochets à 16 m ; chaque chute du tueur d'au moins 1,25 m donne +33 % de votre progression de lutte **actuelle** — STRONG_SECONDARY [12]
- **Valeurs / CD / conditions / limites** : 60/70/80 % ; 16 m ; 1,25 m (mêmes hauteurs que Balanced Landing) ; +33 % de la progression actuelle (FACT via résumé : « of your current wiggle progress »).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : icône visible par le tueur (le tueur sait). Maps sans dénivelé → effet tertiaire nul.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Flip-Flop, Breakout, Power Struggle, Saboteur.
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : maps à étages (Midwich, Lery's, Hawkins?) et tueurs sans Agitation ; masquer les crochets gêne les portages longs.
- **Quand elle n'en produit pas (HEURISTIC)** : maps plates ; tueurs rapides/crochets proches.
- **Écart avec le seed** : IMPRÉCIS (« 33 % de progression de lutte » : c'est 33 % de la **progression actuelle**, pas 33 points absolus). Reste OK.
- **Sources** : [12]

### Flip-Flop — Ash Williams
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : pendant la récupération à terre, la jauge de lutte se charge à 50 % du taux de récupération, jusqu'à 40/45/50 % de lutte max — STRONG_SECONDARY [13]
- **Valeurs / CD / conditions / limites** : 50 % du taux ; plafond 40/45/50 %.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : utile seulement si on récupère (inutile si relevé très vite). Tenacity (rampe + récup) augmente la récupération effective.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Power Struggle (pré-charge au-delà de 15/20/25 % → stun immédiat au ramassage [14]), Boil Over, Breakout, Tenacity.
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : slug prolongé suivi d'un ramassage ; combo Power Struggle.
- **Quand elle n'en produit pas (HEURISTIC)** : tueur qui ramasse instantanément ; Mad Grit/Agitation.
- **Écart avec le seed** : IMPRÉCIS (seed : « au ramassage, 50 % de votre progression devient lutte » ; vérifié : charge continue à 50 % du taux pendant la récupération, plafonnée).
- **Sources** : [13] [14]

### Power Struggle — Élodie Rakoto
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : à terre, auras des palettes disponibles ; porté, à 25/20/15 % de lutte, vous pouvez faire tomber une palette debout proche pour étourdir le tueur et vous libérer ; se désactive après succès — STRONG_SECONDARY [14]
- **Valeurs / CD / conditions / limites** : 25/20/15 % ; une utilisation. Dream Pallets (Nightmare) ne l'étourdissent pas (utilisations multiples possibles).
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : tueur qui évite les palettes en portant.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Flip-Flop (pré-charge), Boil Over, Tenacity (ramper vers une palette).
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 1 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : tueur inexpérimenté qui porte à côté des palettes ; zones denses en palettes.
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs expérimentés (contournent) ; fin de partie à palettes épuisées.
- **Écart avec le seed** : OK. IMPRÉCIS mineur : omet l'aura des palettes à terre.
- **Sources** : [14]

### Inner Strength — Nancy Wheeler
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : chaque purification de totem active la perk : 10/9/8 s dans un casier en étant blessé **ou sous Deep Wound** vous soignent d'un état de santé ; se désactive après usage ; ne s'active pas sous Broken — STRONG_SECONDARY [15]
- **Valeurs / CD / conditions / limites** : 10/9/8 s (compte à partir de l'entrée complète dans le casier) ; Deep Wound → Injured.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : totems limités (5 + boons) ; Hex / Boon cleanse compte (HYPOTHESIS : boons ennemis/propres ? non vérifié).
- **Synergies (HEURISTIC / EXPERT OPINION)** : Counterforce, Small Game, Detective's Hunch, Built to Last (casier).
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SoloQ, contre Hex builds (cleanse utile + soin), soin en 8 s au lieu de 16 s.
- **Quand elle n'en produit pas (HEURISTIC)** : totems déjà purifiés ; Sloppy/Broken (Pentimento? non vérifié) ; tueurs qui fouillent les casiers.
- **Écart avec le seed** : IMPRÉCIS (omet Deep Wound et l'exclusion Broken). Valeurs OK.
- **Sources** : [15]

### Empathic Connection — Yoichi Asakawa
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : vous soignez les autres survivants 25/30/35 % plus vite ; les survivants blessés voient votre aura sur toute la carte (était 32/64/96 m) — STRONG_SECONDARY [16] ; 25/30/35 % confirmé comme valeur « was » dans les notes PTB — VERIFIED_PRIMARY via résumé [18]
- **Valeurs / CD / conditions / limites** : 25/30/35 % (LIVE ; ancien 30 % fixe = OBSOLETE) ; aura carte entière (9.0.0 selon seed — date non confirmée par la recherche).
- **PTB 10.2.0** : **changement vérifié** — soin 40/45/50 % (was 25/30/35 %) [18] (PTB).
- **Interactions, DR, anti-synergies** : cumul avec Botany Knowledge / Boon CoH / WGLF (DR possible, HYPOTHESIS).
- **Synergies (HEURISTIC / EXPERT OPINION)** : Botany Knowledge, We'll Make It, Aftercare, Bond.
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 2 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SoloQ : les blessés viennent à vous (économie de déplacements).
- **Quand elle n'en produit pas (HEURISTIC)** : SWF (communication vocale suffit) ; contre tueurs qui punissent les soins (Sloppy, Nurse's).
- **Écart avec le seed** : OK (LIVE 25/30/35 % et PTB 40/45/50 % correctement étiqueté).
- **Sources** : [16] [18]

### Alert — Feng Min
- **Statut** : LIVE 10.1.2a
- **Effet LIVE** : quand le tueur effectue une action Break (palette, mur, porte…) ou Damage (générateur), son aura vous est révélée 3/4/5 s — STRONG_SECONDARY [17]
- **Valeurs / CD / conditions / limites** : 3/4/5 s ; pas de CD cité.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : Undetectable/Blindness du killer bloquent (HYPOTHESIS standard). Tueurs qui ne cassent pas (Deadlock, pas de kick) → peu d'activations.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Kindred, Bond, Distortion (pour ne pas être lu en retour : non), Resilience.
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : savoir où le tueur kick un gen / casse une palette pour choisir son gen.
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs à pression via pouvoir (pas de breaks) ; Undetectable.
- **Écart avec le seed** : IMPRÉCIS (« vous entendez un signal » non retrouvé ; les breaks couvrent aussi les portes/objets cassables selon le résumé « Break action »).
- **Sources** : [17]

### Champion of Light — Alan Wake — **NON VÉRIFIÉ**
- **Statut** : LIVE présumé (UNCERTAIN)
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN : +50 % de vitesse en éclairant avec une lampe, aveuglement réussi = Hindered 20 % 6 s, CD 60/50/40 s. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : le +50 % compense la pénalité de vitesse en visant (pas une « Haste » classique).
- **Valeurs / CD / conditions / limites** : UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR, anti-synergies** : Lightborn contre ; Hindered ↔ DR (HYPOTHESIS).
- **Synergies (HEURISTIC / EXPERT OPINION)** : lampe + Lightweight? / Flashbang, Blast Mine (HYPOTHESIS).
- **Difficulté (HEURISTIC)** : 3
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : flashlight saves/blind en chase contre tueurs sans Lightborn.
- **Quand elle n'en produit pas (HEURISTIC)** : Lightborn, tueurs rapides, sans lampe.
- **Écart avec le seed** : NON VÉRIFIABLE (et « Haste » probablement IMPRÉCIS, HYPOTHESIS).
- **Sources** : —

### Counterforce — Jill Valentine — **NON VÉRIFIÉ**
- **Statut** : LIVE présumé ; buff 9.0.0 selon seed (non vérifié).
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN : purification +25 %, +25 % par totem purifié, puis aura du totem le plus éloigné 10/12/14 s.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions** : Inner Strength, Small Game, Detective's Hunch.
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 1 · anti-tunnel 0 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur (HEURISTIC)** : contre Hex builds (Undying/Pentimento/No One Escapes Death).
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs sans totems.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : —

### Urban Evasion — Nea Karlsson — **NON VÉRIFIÉ**
- **Statut** : LIVE présumé.
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN : accroupi +90/95/100 % de vitesse de déplacement. Cohérent avec la connaissance du modèle (antérieure à mi-2026), UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR** : modificateur de vitesse accroupi (DR si cumulé avec autre bonus identique, HYPOTHESIS).
- **Synergies (HEURISTIC / EXPERT OPINION)** : Lightweight, Distortion, Quick & Quiet, Extrasensory Perception (accroupi).
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 1 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : rotations furtives, éviter le rayon de terreur / Stake Out.
- **Quand elle n'en produit pas (HEURISTIC)** : en chase, contre tueurs à détection (auras).
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : —

### Cross-Examination — Shane Wiigwaas — **NON VÉRIFIÉ**
- **Statut** : perk 10.0.x (seed) ; non vérifiée.
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN : dans le rayon de terreur, vous voyez des « Light Marks » laissées par le tueur (10 s) ; marcher dessus → Elusive 3/4/5 s. Aucun élément vérifié.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions** : Elusive (FACT audit : supprime griffures, grognements, flaques de sang, bloque la lecture d'aura par le tueur ; fin si frappé/à terre).
- **Difficulté (HEURISTIC)** : 2 (HYPOTHESIS)
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC) / n'en produit pas** : non évaluable sans effet vérifié.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : —

### Conviction — Michonne Grimes — **PARTIELLEMENT VÉRIFIÉ**
- **Statut** : LIVE 10.1.2a ; modifiée 9.3.0.
- **Effet LIVE** : 9.3.0 : exige de **soigner un autre survivant** (pour empêcher la boucle avec Plot Twist) ; bug corrigé où elle s'activait avec toute perk de self-recovery — VERIFIED_PRIMARY via résumé [8]. Reste de l'effet — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN : relève instantanée à ≥25 % de récupération, Broken, retombée au sol après 20/25/30 s.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions** : Plot Twist (boucle supprimée 9.3.0) ; Broken empêche d'être soigné.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Tenacity, Flip-Flop (HYPOTHESIS).
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur (HEURISTIC)** : sortir d'un slug pour atteindre un crochet/sortie ou relever un autre.
- **Quand elle n'en produit pas (HEURISTIC)** : retomber en plein milieu de la map sans allié.
- **Écart avec le seed** : OK sur la condition 9.3.0 ; valeurs NON VÉRIFIABLES.
- **Sources** : [8]

### Self-Preservation — Lee Yun-jin
- **Statut** : LIVE 10.1.2a (rework 9.5.0)
- **Effet LIVE** : quand un autre survivant est accroché, vous gagnez Elusive 20/25/30 s — VERIFIED_PRIMARY via résumé (valeur « was 20/25/30s » des notes PTB) [18] ; rework 9.5.0 selon l'audit phase 0 (wiki) [22]
- **Valeurs / CD / conditions / limites** : 20/25/30 s (LIVE). Elusive se termine si vous êtes frappé ou à terre [22].
- **PTB 10.2.0** : **changement vérifié** — Elusive 13/14/15 s (was 20/25/30 s) ; justification BHVR : plusieurs Self-Preservation font revenir le tueur au crochet plus souvent [18] (PTB).
- **Interactions, DR** : Elusive non cumulatif en durée (HYPOTHESIS) ; interactions avec Elusive des protections d'unhook (10.1.0).
- **Synergies (HEURISTIC / EXPERT OPINION)** : Distortion, Urban Evasion, Kindred (se positionner pendant l'accrochage).
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 2 · chase 0 · macro 2 · info 0 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : se déplacer sans laisser de traces pendant qu'un allié est accroché (aller au save ou quitter la zone).
- **Quand elle n'en produit pas (HEURISTIC)** : tueur qui ne dépend pas des griffures (camp proche, pouvoir de localisation).
- **Écart avec le seed** : OK (LIVE et PTB correctement distingués).
- **Sources** : [18] [22]

### Wide Open Throttle — Shane Wiigwaas — **NON VÉRIFIÉ**
- **Statut** : perk 10.0.x (seed) ; non vérifiée.
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN : saut rapide de palette → Haste 10/12,5/15 % 3 s ; palette relevée mais bloquée 60 s et visible ; CD 60 s. Rien de vérifié.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR** : Haste (DR avec Sprint Burst/Lithe etc. si identique, HYPOTHESIS).
- **Difficulté (HEURISTIC)** : 3 (HYPOTHESIS)
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC) / n'en produit pas** : non évaluable sans effet vérifié.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : —

### Desperate Measures — Felix Richter — **NON VÉRIFIÉ**
- **Statut** : LIVE présumé ; buff 9.0.0 selon seed (non vérifié).
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN : par survivant blessé/à terre/accroché, soin et décrochage +16/18/20 %. Non vérifié.
- **PTB 10.2.0** : UNCERTAIN.
- **Interactions, DR** : bonus empilés sur la vitesse de soin → DR 9.6.0 probable (HYPOTHESIS).
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 1 · soin 2 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : équipes blessées en cascade (tueurs à blessures multiples).
- **Quand elle n'en produit pas (HEURISTIC)** : quand l'équipe reste en bonne santé.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : —

### Dance With Me — Kate Denson — **NON VÉRIFIÉ**
- **Statut** : LIVE présumé.
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN : sortie rapide de casier / saut moyen-rapide → pas de griffures 5 s, CD 25/20/15 s. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : valeurs historiques différentes (durée/CD plus longs) — non tranché.
- **PTB 10.2.0** : UNCERTAIN.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Quick & Quiet, Lithe, Distortion.
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 1 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : casser la ligne de vue puis disparaître sans traces.
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs à audio/aura, Stridor.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : —

### Stake Out — David Tapp — **LIVE NON VÉRIFIÉ / PTB VÉRIFIÉ**
- **Statut** : LIVE présumé ; rework au PTB 10.2.0.
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN : 15 s caché dans le rayon de terreur → jeton (max 2/3/4) ; un jeton convertit un good en great (+1 %).
- **PTB 10.2.0** : **changement vérifié** (rework) : le skill check spécial devient plus difficile et n'active plus les autres perks de skill check ; zones Good de base +150/175/200 %, zones Great de base +30 % [18][19] (PTB).
- **Interactions, DR** : LIVE : combo Hyperfocus (jeton = great automatique) — le PTB supprime explicitement ce type d'interaction.
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC, LIVE)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 1 · gen 1 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : builds Hyperfocus / skill checks sous pression (Overcharge, Unnerving).
- **Quand elle n'en produit pas (HEURISTIC)** : tueurs à petit rayon de terreur (peu de jetons) ; après le passage LIVE du 10.2.0 (rework).
- **Écart avec le seed** : IMPRÉCIS (la page 25 ne signale pas le rework PTB, que la page 32 mentionne) ; valeurs LIVE NON VÉRIFIABLES.
- **Sources** : [18] [19]

### Borrowed Time — Bill Overbeck — **LIVE NON VÉRIFIÉ / PTB VÉRIFIÉ**
- **Statut** : LIVE présumé ; rework complet au PTB 10.2.0.
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN : décrocher un allié allonge son Endurance de 6/8/10 s et sa Haste de 10 s. Indice indirect : les devs disent ne pas avoir voulu que Borrowed Time « prolonge la durée » d'Elusive nouvellement ajouté aux protections → la version LIVE prolonge bien les protections d'unhook (HYPOTHESIS cohérente avec le seed) [19].
- **PTB 10.2.0** : **changement vérifié** : quand vous subissez Deep Wound en ayant Endurance, soin passif du Deep Wound en 40/35/30 s [19] (PTB). Historique : un rework PTB 9.3.0 (relève complète) a été reverted [22] (HISTORICAL).
- **Interactions** : protections d'unhook basekit 10 s Endurance + Haste + Elusive 10 s (10.1.0, audit [22]).
- **Difficulté (HEURISTIC)** : 1
- **Valeur (HEURISTIC, LIVE)** : SoloQ 2 · SWF 2 · chase 0 · macro 0 · info 0 · anti-tunnel 2 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur (HEURISTIC)** : décrochages sous camping/tunnel.
- **Quand elle n'en produit pas (HEURISTIC)** : tueur qui quitte le crochet ; décrochages sûrs.
- **Écart avec le seed** : NON VÉRIFIABLE (LIVE) ; PTB « rework complet » OK.
- **Sources** : [19] [22]

### Extrasensory Perception — Eleven — **NON VÉRIFIÉ**
- **Statut** : perk 9.4.0 (premier Elusive LIVE, FACT audit [22]) ; détails non vérifiés.
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN : après 4 s accroupi, auras (tueur, survivants, objets) dans un rayon croissant jusqu'à 44 m, Elusive + Oblivious ; fin en se relevant ou après 11 s ; CD 60/50/40 s. Non vérifié.
- **PTB 10.2.0** : UNCERTAIN.
- **Synergies (HEURISTIC / EXPERT OPINION)** : Urban Evasion (HYPOTHESIS).
- **Difficulté (HEURISTIC)** : 2
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 1 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC) / n'en produit pas** : info en SoloQ vs danger d'Oblivious (pas de rayon de terreur) — HYPOTHESIS.
- **Écart avec le seed** : NON VÉRIFIABLE (seule l'association Eleven/9.4.0/Elusive est confirmée par l'audit).
- **Sources** : [22]

### Salvation's Cry — Aurora Stardotter — **NON VÉRIFIÉ**
- **Statut** : perk 10.1.0 (seed) ; non vérifiée.
- **Effet LIVE** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN : quand le tueur commence à vous poursuivre, vous voyez les survivants 1/2/3 s et les alliés hors poursuite voient votre aura et celle du tueur 5 s. Non vérifié.
- **PTB 10.2.0** : UNCERTAIN.
- **Difficulté (HEURISTIC)** : 1 (HYPOTHESIS)
- **Valeur (HEURISTIC)** : SoloQ 2 · SWF 0 · chase 0 · macro 1 · info 2 · anti-tunnel 0 · soin 0 · gen 1 · endgame 0
- **Quand elle produit de la valeur (HEURISTIC)** : SoloQ (annonce de chase sans communication) — HYPOTHESIS.
- **Quand elle n'en produit pas (HEURISTIC)** : SWF vocal.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : —

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| P25-C01 | Built to Last : 12/10/8 s, recharges 99/66/33 %, désactivée après 3 usages | [1][2] | LIVE 10.1.2a | STRONG_SECONDARY |
| P25-C02 | Self-Care : auto-soin 25/30/35 %, efficacité médikit +10/15/20 % | [3] | LIVE | STRONG_SECONDARY (conflit [4]) |
| P25-C03 | WGLF : relève +100 %, Endurance 6/8/10 s, CD 30 s | [5] | LIVE | STRONG_SECONDARY |
| P25-C04 | Soul Guard : Endurance 4/6/8 s après soin/relève depuis l'état à terre, CD 30 s ; self-recovery sous Cursed | [6] | LIVE | STRONG_SECONDARY |
| P25-C05 | Tenacity : rampe 30/40/50 %, rampe + récup, gémissements −75 % ; buff 9.3.0 | [7][8] | LIVE (9.3.0) | VERIFIED_MULTI_SOURCE |
| P25-C06 | AMN : reset 5/4/3 s ; CD 100/80/60 s | [9] | LIVE ? | STRONG_SECONDARY (reset) / UNCERTAIN (CD) |
| P25-C07 | Saboteur : auras crochets 56 m autour du ramassage ; sabotage sans toolbox +30 % ; CD 70/65/60 s | [10] | LIVE | STRONG_SECONDARY |
| P25-C08 | Breakout : 5 m, lutte +25 % (12,8 s), Haste 6/8/10 % ou 5/6/7 % | [11] | LIVE | UNCERTAIN (Haste) |
| P25-C09 | Boil Over : lutte +60/70/80 %, crochets masqués 16 m, +33 % de la progression actuelle par chute ≥1,25 m | [12] | LIVE | STRONG_SECONDARY |
| P25-C10 | Flip-Flop : 50 % du taux de récup vers la lutte, max 40/45/50 % | [13] | LIVE | STRONG_SECONDARY |
| P25-C11 | Power Struggle : 25/20/15 % de lutte, palette → stun ; auras palettes à terre | [14] | LIVE | STRONG_SECONDARY |
| P25-C12 | Inner Strength : 10/9/8 s casier, blessé ou Deep Wound, pas sous Broken | [15] | LIVE | STRONG_SECONDARY |
| P25-C13 | Empathic Connection : 25/30/35 % LIVE ; 40/45/50 % PTB | [16][18] | LIVE / PTB 10.2.0 | VERIFIED_PRIMARY (via résumé) |
| P25-C14 | Alert : aura tueur 3/4/5 s sur Break/Damage | [17] | LIVE | STRONG_SECONDARY |
| P25-C15 | Self-Preservation : Elusive 20/25/30 s LIVE ; 13/14/15 s PTB | [18] | LIVE / PTB 10.2.0 | VERIFIED_PRIMARY (via résumé) |
| P25-C16 | Stake Out PTB : Good +150/175/200 %, Great +30 %, check spécial n'active plus d'autres perks | [18][19] | PTB 10.2.0 | VERIFIED_PRIMARY (via résumé) |
| P25-C17 | Borrowed Time PTB : Deep Wound sous Endurance → soin passif 40/35/30 s | [19] | PTB 10.2.0 | STRONG_SECONDARY |
| P25-C18 | Conviction 9.3.0 : exige de soigner un autre survivant | [8] | LIVE (9.3.0) | VERIFIED_PRIMARY (via résumé) |

## Conflits

#### CONFLICT-P25-01 : Haste de Breakout
- Source A : résumé wiki.gg/fandom Breakout — « Grants you a 5/6/7 % Haste » (https://deadbydaylight.fandom.com/wiki/Breakout, https://deadbydaylight.wiki.gg/wiki/Breakout)
- Source B : 2e résumé des mêmes pages — « current version grants 6/8/10 % Haste… updated from an older version that had 5/6/7 % »
- Hypothèse : le résumé A lit l'ancienne valeur ou l'historique ; B est plus explicite sur « current ». Le seed donne 6/8/10 %.
- Résolution : UNRESOLVED (penche légèrement vers 6/8/10 %, à vérifier sur la page wiki).

#### CONFLICT-P25-02 : Vitesse d'auto-soin de Self-Care
- Source A : résumé wiki.gg (requête site:) — 25/30/35 %, médikit +10/15/20 % (https://deadbydaylight.wiki.gg/wiki/Self-Care)
- Source B : résumé fandom/nightlight — 30/40/50 %, médikit +50/75/100 %, mais même résumé cite aussi 0,25/0,3/0,35 charge/s
- Hypothèse : B mélange plusieurs versions historiques (le résumé est auto-contradictoire). A est cohérent et correspond au seed.
- Résolution : retenu 25/30/35 % (STRONG_SECONDARY) ; efficacité médikit 10/15/20 % à confirmer.

#### CONFLICT-P25-03 : Cooldown d'Any Means Necessary
- Source A : résumé wiki.gg/nightlight — CD 100/80/60 s, reset 5/4/3 s (https://deadbydaylight.wiki.gg/wiki/Any_Means_Necessary)
- Source B : le même résumé avertit que « information from different patch versions » est mélangée ; le seed ne mentionne aucun CD.
- Hypothèse : le buff 9.1.0 (seed) a pu retirer/raccourcir le CD ; non confirmé.
- Résolution : UNRESOLVED.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Built to Last — durée | 14/12/10 s | 12/10/8 s (14/13/12 = ancienne) | FAUX |
| Built to Last — limite | « 33 % de moins à chaque utilisation » | 99/66/33 %, désactivée après 3 | IMPRÉCIS |
| Self-Care | 75/70/65 % plus lent | 25/30/35 % (+ médikit 10/15/20 %) | OK (omission médikit : IMPRÉCIS) |
| WGLF | +100 %, Endurance 6/8/10 s, CD 30 s | idem | OK |
| Soul Guard | Endurance à chaque relèvement complet | aussi après soin depuis état à terre | IMPRÉCIS |
| Tenacity | 30/40/50 %, buff 9.3.0 | idem | OK |
| Any Means Necessary | 5/4/3 s, pas de CD mentionné | CD 100/80/60 s possible | IMPRÉCIS / NON VÉRIFIABLE |
| AMN buff 9.1.0 | buff | non confirmé | NON VÉRIFIABLE |
| Saboteur | crochets à 56 m (de vous) ; sabotage 2,3 s | 56 m autour du point de ramassage ; +30 % vitesse sans toolbox | IMPRÉCIS |
| Breakout | Haste 6/8/10 %, 5 m, +25 % | 5 m, +25 % OK ; Haste en conflit | NON VÉRIFIABLE (Haste) |
| Boil Over | chute → 33 % de progression | 33 % de la progression **actuelle** | IMPRÉCIS |
| Flip-Flop | au ramassage, 50 % de la récup devient lutte | charge continue à 50 % du taux, plafonnée | IMPRÉCIS |
| Power Struggle | 25/20/15 %, palette → stun | idem (+ auras palettes à terre) | OK |
| Inner Strength | 10/9/8 s blessé | + Deep Wound ; pas sous Broken | IMPRÉCIS (mineur) |
| Empathic Connection | 25/30/35 % ; PTB 40/45/50 % | idem | OK |
| Alert | signal sonore + aura 3/4/5 s | aura 3/4/5 s sur Break/Damage ; signal non retrouvé | IMPRÉCIS |
| Self-Preservation | 20/25/30 s ; PTB 13/14/15 s | idem | OK |
| Stake Out | pas de mention PTB en p25 | rework PTB 10.2.0 vérifié | IMPRÉCIS (omission PTB) |
| Borrowed Time | PTB : rework complet | rework vérifié (soin passif Deep Wound 40/35/30 s) | OK (PTB) / LIVE NON VÉRIFIABLE |
| Conviction | exige de soigner un autre survivant (9.3.0) | idem | OK (valeurs NON VÉRIFIABLES) |
| Champion of Light, Counterforce, Urban Evasion, Cross-Examination, Wide Open Throttle, Desperate Measures, Dance With Me, Extrasensory Perception, Salvation's Cry | voir blocs | non recherchées (quota) | NON VÉRIFIABLE |

## Questions ouvertes

1. Haste de Breakout (6/8/10 vs 5/6/7 %) — lire la page wiki.gg directement.
2. AMN a-t-il encore un cooldown LIVE (100/80/60 s ?) et quel était le buff 9.1.0 ?
3. Valeur exacte de Borrowed Time LIVE (prolongation Endurance/Haste, et Elusive ?) après 10.1.0.
4. Liste complète des 31 perks survivant du PTB 10.2.0 : l'une des perks de cette page autre qu'Empathic Connection / Self-Preservation / Stake Out / Borrowed Time est-elle touchée ?
5. 9 perks entièrement non vérifiées (quota WebSearch de session épuisé) : Champion of Light, Counterforce, Urban Evasion, Cross-Examination, Wide Open Throttle, Desperate Measures, Dance With Me, Extrasensory Perception, Salvation's Cry.
6. Quels modificateurs de ces perks (vitesse de soin, Haste, vitesse de lutte) sont soumis aux DR 9.6.0 ? (liste officielle du manuel 9.6.1 non lue).
7. Alert : l'audio « signal » existe-t-il ou est-ce une invention du seed ?

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
