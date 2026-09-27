# Lot 4 — Fiches TUEUR vues du SURVIVANT, groupe 2 (tueurs 8 à 15)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) — voir kb/audit/pass14_lot4_g1-g3.md**

Couverture web : 0 éléments vérifiés par recherche / 8 tueurs (toutes les valeurs de pouvoir, d'add-ons et de perks) non re-vérifiés (quota WebSearch épuisé, 200/200). Seules données vérifiées : celles reprises de l'audit phase 0 [2].

- Périmètre : The Huntress, The Cannibal, The Nightmare, The Pig, The Clown, The Spirit, The Legion, The Plague (seed `kb/seed/ch8_killers.txt` l. 547-844).
- Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 (15-21/09/2026) **non LIVE**, toujours étiqueté PTB.

> **AVERTISSEMENT MÉTHODE — À LIRE AVANT TOUTE RÉUTILISATION**
> - **0 recherche WebSearch effectuée** : dès le premier appel, l'outil a répondu « this session has used its web search budget (200 of 200 WebSearch calls) », budget épuisé par les lots parallèles. WebFetch/curl sont bloqués (brief).
> - Sources réellement utilisées : le seed ([1]), l'audit phase 0 ([2], seules données vérifiées de ce fichier) et la **mémoire du modèle** (connaissance du modèle, antérieure à mi-2026, non vérifiée cette session).
> - **Valeur du seed sans autre source = « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) », confiance UNCERTAIN.** Cela couvre toutes les mentions « seed : … », « valeurs du seed », « non vérifié(e) » et « NON VÉRIFIABLE » ci-dessous.
> - Étiquette de confiance propre à ce fichier : **UNCERTAIN-MM** = « connaissance du modèle (antérieure à mi-2026), UNCERTAIN » = valeur ou mécanique tirée de la mémoire du modèle. Au mieux UNCERTAIN au sens du brief. **Ne jamais la promouvoir en LIVE sans vérification.** Beaucoup de ces tueurs ont reçu des changements 2025-2026 (Freddy 8.5.0, Clown/Pig 9.1.0, Cannibal 9.6.0, selon [2]) dont **le contenu chiffré n'a pas pu être lu**.
> - Les conseils de counterplay sont des **HEURISTIC** (consensus communautaire tel que le modèle le connaît, sans URL). **Audit P14** : les anciennes étiquettes « EXPERT OPINION (non sourcée) » ont été **requalifiées en HEURISTIC** : au sens de la mission (§41), une EXPERT OPINION est la conclusion d'un expert identifiable, et aucun guide expert n'a été lu.
> - Le lot est **à relancer en vérification** quand le budget WebSearch sera rétabli (liste précise dans « Questions ouvertes »).

Légende (révisée P14) : **FACT [AUDIT]** = mécanique vérifiée dans l'audit phase 0 [2] · **FACT de principe [UNCERTAIN-MM]** = mécanique de base connue du modèle, non vérifiée cette session (ce n'est pas un FACT au sens de §41 : ne pas la citer comme vérifiée ; toutes les anciennes mentions « (FACT) » sans source de ce fichier sont à lire ainsi) · HEURISTIC · SITUATIONAL · HYPOTHESIS. « Confiance forte » = jugement subjectif du modèle, toujours UNCERTAIN-MM.

Éléments système utiles pour tous (VERIFIED dans [2]) :
- Protections d'unhook LIVE 10.1.0 : Endurance + 10 % Haste pendant 10 s, + Elusive 10 s (sans effet une fois les gens alimentés) [2].
- Anti-facecamp : zone 16 m, grâce de 7 s, multiplicateur 1×/2×/4× (9.3.0) [2].
- Diminishing Returns 9.6.0 : les modificateurs identiques issus de Powers/Items/Perks/Offerings se réduisent (100/50/25/12,5/5 %) ; les add-ons sont exclus [2]. Conséquence probable (HYPOTHESIS) : un Hindered de pouvoir (Clown, Freddy) cumulé à un Hindered de perk est atténué. Liste exacte des modificateurs concernés : publiée dans le **manuel du jeu (9.6.1)**, non consulté [2] (correction P14 : elle existe, elle n'a simplement pas été lue).
- Règle d'origine du TR (FACT [AUDIT], STRONG_SECONDARY) : **32 m pour les tueurs à 4,6 m/s, 24 m pour ceux à 4,4 m/s**, avec de nombreuses exceptions [2]. Indice, pas preuve par tueur : elle soutient la valeur de la mémoire pour la Pig (32 m) et pour la Spirit (24 m) ; la Huntress (20 m) est une exception.
- Endurance, Elusive, Deep Wound (FACT [AUDIT]) : l'Endurance est annulée par une action voyante et ne protège pas sous Deep Wound ; l'Elusive supprime griffures, grognements et flaques de sang ; Deep Wound = minuteur de 20 s **en pause en courant ou pendant le mending**, mending 10 s seul / 6 s par un allié, un dégât sous Deep Wound = état mourant [2].

Règles d'usage ajoutées par l'audit P14 :
- **Options par défaut, pas règles (§26)** : chaque « Counterplay » décrit l'option par défaut contre un joueur qui utilise normalement son pouvoir. Un tueur expérimenté anticipe (Huntress qui tient la charge, Spirit qui attend immobile, Cannibal qui tap-rev pour obtenir le pré-drop) : s'il exploite ta réponse habituelle, **varier**.
- **SoloQ / SWF (§25)** : les consignes « annoncer les boîtes fouillées » (Pig), « se réveiller mutuellement » (Nightmare), « purifier au bon moment » (Plague) supposent la communication. En **SoloQ**, se fier au HUD (état des coéquipiers, piège sur la tête, infection) et aux signaux visibles ; en **SWF**, annoncer.
- **LIVE / PTB (§25)** : perks citées et modifiées au **PTB 10.2.0** (non LIVE, `deliverables/PERK_DATABASE.md` §1.4) : Spine Chill (rework, vérifié en résumé) ; Knock Out et Fire Up (annoncées par le seed seulement). Garder les valeurs LIVE 10.1.2a jusqu'à la sortie.
- **Cartes** : les « Implications de carte » ne tiennent pas compte des changements de palettes 9.2.0 / 9.3.0 / 9.3.2 [2] (HEURISTIC, lots 7-8).
- **DRILL** : utiliser DR-15 « Counterplay d'un tueur » (`kb/research/batch11_training.md` §3).

---

## 8. The Huntress (Anna) — archétype(s) : ranged | M1
- **Version** : aucun rework 2025-2026 trouvé dans l'historique de [2] (9.0.0 → 10.1.2a) ; aucune recherche possible pour d'éventuels ajustements mineurs → statut LIVE présumé, UNCERTAIN.
- **Données LIVE** (toutes UNCERTAIN-MM sauf mention) :
  - Vitesse 4,4 m/s ; TR 20 m (UNCERTAIN-MM, « confiance forte » subjective ; 20 m = exception à la règle d'origine de l'audit, 24 m pour un 4,4), remplacé par une **berceuse** (lullaby) audible au-delà du TR (portée exacte non vérifiée ; seed : 45 m) ; grande taille (forte).
  - **5 hachettes** de base : **UNCERTAIN-MM** (corrigé P14, était « confiance forte »). Le seed dit 7 : erreur relevée par l'audit [2] (« Huntress "7 hachettes" »), **mais l'audit ne donne pas la bonne valeur** : « 7 = FAUX » est prouvé, « 5 » vient de la mémoire du modèle. Add-ons de capacité en plus (+1/+2, noms et valeurs non vérifiés).
  - Recharge au **casier** (entrée dans le casier, animation de plusieurs secondes, durée non vérifiée).
  - Ralentie pendant l'armement (seed 3,08 m/s : non vérifié). Hachette plus rapide et plus loin si chargée plus longtemps, trajectoire en cloche (FACT de principe [UNCERTAIN-MM], valeurs non vérifiées).
- **Identification** :
  - Avant le reveal : **berceuse fredonnée au lieu du battement de cœur** (FACT de principe [UNCERTAIN-MM]). Identification **forte mais pas certaine** (P14) : d'autres tueurs ont une berceuse (le handbook cite Dark Lord et Houndmaster) ; confirmer à la silhouette ou au premier lancer. Les berceuses ne sont pas coupées par Undetectable (FACT [AUDIT], SS). TR très court : elle arrive « de nulle part » quand la berceuse monte. Bruit de porte de casier quand elle recharge.
  - Pouvoir en action : grognement ou souffle d'armement, sifflement de la hachette, hachettes plantées au sol ou dans le décor.
  - Add-ons observables : plus de 5 lancers sans recharge = add-on de capacité **ou** base différente de 5 (valeur UNCERTAIN-MM) ; une hachette qui met à terre d'un coup = Iridescent Head (probable).
  - Stratégie probable : snipes sur soins ou unhooks à découvert, chases courtes en terrain ouvert, pression à distance (HEURISTIC).
- **Ce qu'il cherche en chase** : zones ouvertes, boucles basses (rochers bas, palettes filler), vaults prévisibles (point d'atterrissage connu), fin de boucle en ligne droite, survivant blessé qui court en ligne droite (HEURISTIC).
- **Tiles / structures** :
  - Favorables au survivant : murs hauts qui coupent la LOS (jungle gym, shack, main buildings, intérieurs) ; cartes intérieures ou encombrées (HEURISTIC).
  - Défavorables : open areas, fillers bas, champs de maïs : le maïs cache la vue mais **ne bloque pas** les hachettes (UNCERTAIN-MM).
  - Fenêtres vs palettes : un vault de fenêtre donne un point d'atterrissage prévisible, donc éviter de vaulter si elle a une hachette armée et une LOS **sur la réception** ; le vault reste possible si la réception est cachée par un mur ou si c'est la seule sortie (HEURISTIC, cohérent avec `batch11_training.md` T-Q01 cas 4). Une palette basse ne bloquerait pas une hachette lancée par-dessus : **UNCERTAIN-MM** (requalifié P14, était « FACT probable »).
  - Verticalité : elle snipe depuis les étages et les collines ; au sol sous elle, la LOS est coupée (SITUATIONAL).
- **Mindgames propres** : fausse charge (armer puis annuler) pour provoquer un zigzag ; tenir la charge en marchant pour forcer un changement de direction ; lancer « au bout de la boucle » (HEURISTIC).
- **Counterplay** :
  - Mécanique : changer de direction **au moment du lâcher**, pas pendant tout l'armement (HEURISTIC) ; rester collé aux murs hauts ; casser la LOS plutôt que tenter une esquive en plein champ. Limite (§26 P14) : une Huntress expérimentée **tient la charge** et attend ton changement de direction pour lancer ; si elle le fait, varier le moment (feinte de virage, ligne droite courte vers un mur) plutôt que tourner toujours au même instant.
  - Distance : à très courte portée elle joue souvent au M1 ; la zone la plus dangereuse est la distance moyenne en terrain ouvert (HEURISTIC).
  - Positionnel : enchaîner des tiles à murs hauts ; aller vers les zones intérieures (HEURISTIC).
  - Macro : compter ses lancers (hypothèse de départ : 5, UNCERTAIN-MM ; si elle en lance un 6e, abandonner le comptage). À 0, elle doit aller à un casier : c'est le moment de gagner de la distance ou de relancer un gen (HEURISTIC). Soigner et décrocher **derrière une LOS**.
  - Équipe : pas de soins ni d'unhooks à découvert ; espacer les gens pour la forcer à marcher (4,4 m/s) (HEURISTIC).
- **Habitudes punissables** : soigner en plein champ, courir en ligne droite, vaulter une fenêtre face à une hachette armée, trop jouer un filler bas, rester dans le maïs en croyant être protégé.
- **Adaptations avancées / échecs du counterplay** : avec Iridescent Head, chaque lancer met à terre : ne plus « tanker » un tir, réduire l'exposition au minimum, y compris pour décrocher (décrocher derrière une LOS ou quand elle recharge) (SITUATIONAL). Avec des add-ons de capacité, le comptage des lancers ne marche plus. Sur une carte ouverte, les murs hauts sont rares : pré-planifier la route entre tiles avant la chase.
- **Add-ons qui changent la décision** (tous UNCERTAIN-MM) :
  - Iridescent Head (hachette à terre, capacité très réduite) → le survivant doit jouer la LOS en permanence et ne plus décrocher à découvert, au lieu de compter sur un tir survivable.
  - Add-ons de capacité (+hachettes) → ne plus compter les lancers pour temporiser ; supposer qu'elle a encore des munitions.
  - Add-ons de vitesse de hachette → esquiver plus tôt, réduire la distance moyenne.
  - Réduction de la berceuse (si portée réduite par add-on) → surveillance visuelle plus active, perks d'info.
- **Implications de carte** : cartes ouvertes favorables à elle ; intérieurs et labyrinthes favorables au survivant (HEURISTIC). Les modifications de palettes 9.2.0 / 9.3.0 / 9.3.2 [2] n'ont pas été évaluées pour elle.
- **Perks fréquentes / synergies à anticiper** : non vérifiables (NightLight inaccessible). Le seed cite Lethal Pursuer, Barbecue & Chilli, Pain Resonance, Darkness Revealed. Ses teachables : Beast of Prey (Undetectable en Bloodlust), Hex: Huntress Lullaby (skill checks sans son d'avertissement et pénalités accrues), Territorial Imperative (aura au sous-sol) [description UNCERTAIN-MM].
- **Écart avec le seed** : FAUX (« 7 hachettes », audit [2] ; valeur de remplacement 5 = UNCERTAIN-MM) · FAUX (« plus haut kill rate global dans les stats BHVR 2026 » : [2] donne Huntress = **pick** le plus large ; le kill rate le plus haut tous MMR = Lich, et la vue d'ensemble du seed dit la même chose) · NON VÉRIFIABLE (vitesse de hachette 25-40 m/s, hitbox 0,4 m, berceuse 45 m, recharge 2 s, Beast of Prey « buff du 8.5 », kill rate NightLight 41,6 %).
- **Sources** : [1] [2] ; reste = mémoire du modèle.

## 9. The Cannibal (Bubba Sawyer) — archétype(s) : M1 | anti-loop (insta-down court)
- **Version** : **buff au 9.6.0 (28/04/2026)**, VERIFIED dans [2] (« Buffs Doctor, Cannibal… ») ; contenu chiffré non lu. Refonte antérieure (système de charges + Tantrum, 2022 environ, UNCERTAIN-MM). Statut LIVE.
- **Données LIVE** (UNCERTAIN-MM) : 4,6 m/s ; TR 32 m ; grande taille. Chainsaw Sweep : insta-down, peut toucher plusieurs survivants ; système de charges de tronçonneuse ; collision avec un obstacle pendant le sweep, ou sweep trop long → **Tantrum** (il frappe au hasard, très ralenti). Casse de palette à la tronçonneuse ≈ 1 s (STRONG_SECONDARY, [2] citant wiki.gg Pallets). Vitesse de sweep (seed 5,45 m/s « buff du 9.6.0 ») : non vérifiée.
- **Identification** :
  - Avant le reveal : TR 32 m classique ; bruit de tronçonneuse qui démarre. **Hillbilly vs Bubba** : Hillbilly fait des sprints longs en ligne droite (surchauffe selon la mémoire du modèle ; le seed décrit plutôt une jauge « Overdrive » : voir CONFLICT-L4G1-02 dans `batch4_killers_g1.md`) ; Bubba fait des balayages courts de gauche à droite (FACT de principe [UNCERTAIN-MM]).
  - Pouvoir en action : sweep latéral, Tantrum audible et visible.
  - Stratégie probable : pression sur les survivants groupés, chase courte, parfois camp près du crochet, freiné par l'anti-facecamp 9.3.0 [2] (HEURISTIC).
- **Ce qu'il cherche en chase** : boucles courtes à palette (short loops, fillers), survivants qui gardent une palette trop longtemps, groupes, body-blocks de crochet (HEURISTIC).
- **Tiles / structures** :
  - Favorables : longues boucles, **fenêtres** (sans son pouvoir, il n'a aucun outil contre elles, sauf perk Bamboozle), LOS longues pour gagner du temps (HEURISTIC).
  - Défavorables : tiles courtes où il peut balayer autour d'une palette debout, open areas.
  - Palettes : **faire tomber la palette tôt, puis partir** vers la tile suivante, quand il arme près d'une short loop (il ne traverse pas une palette tombée) ; il la casse ensuite à la tronçonneuse en ~1 s [AUDIT, SS] : la palette ne lui coûte presque rien, elle sert à éviter le balayage, pas à tenir la tile (HEURISTIC, cohérent avec le handbook §2.2 (b)). Limite : contre un tap-rev (fausse charge), un pré-drop systématique lui donne la palette gratuitement → quand il arrive en M1 sans armer, la palette redevient une palette normale (stun possible).
- **Mindgames propres** : tap-rev (fausse charge) pour obtenir une palette prématurée ; sweep qui contourne une petite tile (HEURISTIC).
- **Counterplay** :
  - Mécanique : garder un obstacle entre soi et lui dès qu'il arme ; profiter d'un Tantrum pour casser la LOS (FACT de principe [UNCERTAIN-MM] sur le Tantrum, conseil = HEURISTIC).
  - Positionnel : privilégier fenêtres et longues boucles.
  - Macro : ne pas réparer à 2-3 sur le même gen quand il approche : un sweep peut mettre plusieurs survivants à terre (HEURISTIC).
  - Équipe : pas de body-block de face au crochet ; décrocher en profitant de l'Endurance basekit (10 s) [2] — réserves [AUDIT] : elle saute sur une action voyante ; son effet exact contre un balayage (coup unique) n'est pas vérifié.
- **Habitudes punissables** : garder une palette « pour le stun » alors qu'il **arme** la tronçonneuse (contre son M1, le stun reste possible) ; body-block ; se grouper ; vaulter une palette dans une ligne droite ouverte.
- **Adaptations avancées** : avec des add-ons de charges ou de portée (valeurs non vérifiées), jeter les palettes encore plus tôt et éviter les ouvertures moyennes ; avec Bamboozle, les fenêtres perdent de la valeur : revenir aux palettes jetées tôt et aux LOS (SITUATIONAL).
- **Add-ons qui changent la décision** : non vérifiables cette session. Principe (HEURISTIC) : add-on de charge ou de vitesse → pré-drop plus tôt ; add-on qui réduit le risque de Tantrum → le « sweep dans le mur » ne le punit plus. Le seed cite Depth Gauge Rake, Carburettor Tuning Guide, Iridescent Flesh, sans vérification.
- **Implications de carte** : cartes riches en fenêtres et longues boucles défavorables à lui (HEURISTIC). Cartes intérieures étroites : sweeps à bout portant plus faciles, risque de Tantrum plus élevé pour lui (SITUATIONAL).
- **Perks fréquentes** : le seed cite Bamboozle, Corrupt Intervention, Infectious Fright (non vérifié). Teachables : Barbecue & Chilli (orthographe officielle « Chilli »), Franklin's Demise, Knock Out.
- **Écart avec le seed** : IMPRÉCIS / à vérifier (Knock Out : [2] classe la description du seed parmi les erreurs ; le seed décrit un effet de ralentissement après usage de palette. Correction P14 : que ces valeurs soient celles du PTB 10.2 est une **hypothèse** de ce lot, pas un fait ; l'effet principal omis par le seed est l'aura du survivant abattu visible seulement à 32/24/16 m (SS, `BATCH_2_4_SYNTHESIS.md` §2) ; Knock Out est annoncée modifiée au PTB 10.2.0 par le seed seulement) · NON VÉRIFIABLE (5,45 m/s, « 3 tokens », 2 s de charge, 2,5 s de sweep, kill rate 48,5 %) · OK (buff au 9.6.0, [2]).
- **Sources** : [1] [2].

## 10. The Nightmare (Freddy Krueger) — archétype(s) : zone/piège | mobilité (téléport) | info
- **Version** : **rework au 8.5.0 (28/01/2025)**, VERIFIED dans [2]. Contenu du rework **non lu** : toute valeur post-8.5.0 est UNCERTAIN. Statut LIVE.
- **Données LIVE** (UNCERTAIN-MM, peut-être antérieures au rework) : 4,6 m/s ; TR 32 m pour les éveillés ; taille moyenne. Dream World : les survivants s'endorment progressivement. Endormis, ils ne perçoivent plus normalement son TR et voient le monde du rêve. Réveil : réveils (alarm clocks), skill check raté, aide d'un coéquipier, mise à terre (seed ; mécanique post-rework non vérifiée). Deux outils : Dream Snares (Hindered, projectile au sol) et Dream Pallets (fausses palettes). Téléportation (Dream Projection) vers les générateurs. Valeurs du seed (12 %, 4,5 s, 45 s de cooldown global, 30 s de TP) : **toutes non vérifiées**.
- **Identification** :
  - Avant le reveal : **réveils (alarm clocks) posés sur la carte** dès le début (HYPOTHESIS [UNCERTAIN-MM], requalifié P14 : le rework 8.5.0 n'a pas été lu ; identification précoce si confirmé) ; icône ou effets d'endormissement ; tic-tac et berceuse du rêve.
  - Pouvoir en action : traînées de snares au sol ; palettes qui « apparaissent » en chase ; son et effet de sa projection sur un gen.
  - Stratégie probable : 3-gen par téléportation, pression de fin de partie, parfois build de portes (Remember Me, Blood Warden, selon le seed) (HEURISTIC).
- **Ce qu'il cherche en chase** : snares : lignes droites et couloirs, fenêtres (vault bloqué ou ralenti selon le seed) ; pallets : fausses palettes à côté des vraies pour obtenir un mauvais choix (HEURISTIC).
- **Tiles / structures** : palettes réelles déjà connues = fiables ; **une palette qui n'était pas là avant la chase = suspecte** (HEURISTIC). Les couloirs étroits favorisent les snares. Les LOS hautes réduisent ses projectiles (SITUATIONAL).
- **Mindgames propres** : palette vraie + fausse palette côte à côte ; snare devant la sortie de boucle ; téléport vers un gen puis retour (HEURISTIC).
- **Counterplay** :
  - Mécanique : contourner les snares plutôt que les traverser ; ne pas parier une chase sur une palette inconnue.
  - Macro : se réveiller aux réveils quand c'est rentable ; en réparation, rester attentif au signal de projection sur son gen (HEURISTIC).
  - Équipe : se réveiller mutuellement quand on est proches ; ne pas laisser toute l'équipe endormie en fin de partie (HEURISTIC ; en SoloQ, se réveiller soi-même aux réveils plutôt que compter sur un coéquipier).
- **Habitudes punissables** : rester endormi longtemps sans surveiller ; utiliser une palette « nouvelle » ; réparer à plusieurs sur le gen visé par la TP ; ouvrir les portes à découvert contre un build de portes.
- **Adaptations avancées** : face à un build de fin de partie (Remember Me, Blood Warden, No Way Out, etc.), l'ouverture des portes devient une décision d'équipe, qu'il faut préparer en amont (SITUATIONAL).
- **Add-ons qui changent la décision** : non vérifiables (rework 8.5.0 : les noms et effets du seed, Z-Block, Paint Thinner, Black Box, Class Photo, Unicorn Block, sont possiblement obsolètes).
- **Implications de carte** : grandes cartes = sa TP compense sa vitesse normale (HEURISTIC).
- **Perks fréquentes** : non vérifiables. Teachables : Fire Up, Remember Me, Blood Warden.
- **Écart avec le seed** : NON VÉRIFIABLE pour toutes les valeurs du pouvoir (rework 8.5.0 non lu). À contrôler en priorité : le seed ne mentionne **pas** le rework 8.5.0 dans sa fiche, et l'ajout « Z-Block (sélection de pallets ou snares selon version) » montre qu'il mélange des versions (IMPRÉCIS). Tier « B+ » et « 2e meilleur kill rate tous MMR » : cohérent avec la vue d'ensemble du seed (Lich, Nightmare, Onryō…), mais non vérifié contre les infographies officielles.
- **Sources** : [1] [2].

## 11. The Pig (Amanda Young) — archétype(s) : furtif | zone/piège (Reverse Bear Traps) | M1
- **Version** : **buffs au 9.1.0 (29/07/2025)**, VERIFIED dans [2] ; valeurs non lues. Statut LIVE.
- **Données LIVE** (UNCERTAIN-MM) :
  - Vitesse 4,6 m/s. **TR 32 m** selon la mémoire du modèle, le seed dit 24 m : voir CONFLICT-L4G2-02. Taille moyenne. **Undetectable accroupie** (FACT de principe [UNCERTAIN-MM] ; Undetectable = pas de TR ni de red stain, FACT [AUDIT]) ; vitesse accroupie (seed 4,0 m/s, buff 9.1) non vérifiée.
  - Ambush Dash : charge audible (**rugissement**), puis ruée courte.
  - **4 Reverse Bear Traps** (UNCERTAIN-MM, « confiance forte » subjective), posés sur un survivant à terre. Ils s'activent à la complétion d'un générateur. Compte à rebours (seed 150 s) en pause en chase. Pour les retirer : fouiller les **Jigsaw Boxes** (nombre non vérifié). **Un survivant qui franchit la porte de sortie avec un piège actif meurt** (FACT de principe [UNCERTAIN-MM], cohérent avec la ligne L4G2-08 des Claims ; le conseil « ne pas sortir piégé » reste prudent quelle que soit la vérification). Comportement une fois les gens terminés (pose et activation) : non vérifié.
- **Identification** :
  - Avant le reveal : **Jigsaw Boxes visibles sur la carte** (probable dès le début, UNCERTAIN-MM) ; TR absent puis présent de façon intermittente (accroupissements) ; rugissement de dash.
  - Pouvoir en action : piège sur la tête, minuteur, rugissement.
  - Stratégie probable : poser les pièges tôt pour retirer des survivants des gens, embuscades accroupie près des gens (HEURISTIC).
- **Ce qu'il cherche en chase** : dash à courte portée sur des tiles courtes ; accroupissement près d'une fenêtre ou d'un coin pour cacher sa red stain et son TR (HEURISTIC).
- **Tiles / structures** : le dash est prévisible (rugissement, charge) ; les murs et coins cassent la trajectoire. Les tiles moyennes et longues rendent le dash peu rentable (HEURISTIC).
- **Mindgames propres** : accroupissement près d'une boucle (TR et red stain disparaissent) ; faux départ de dash (HEURISTIC).
- **Counterplay** :
  - Mécanique : au rugissement, contourner un coin ou vaulter au bon moment (HEURISTIC).
  - Macro, pièges : piège actif → aller directement vers les boîtes les plus proches, en annonçant celles déjà fouillées ; piège inactif → continuer à réparer, mais **décider en équipe** du moment où l'on termine un gen quand plusieurs survivants sont piégés (HEURISTIC, pas de règle absolue : 1 piégé près des boîtes ≠ 3 piégés).
  - Stealth : vérifier les angles morts près des gens, surtout après un reset de TR (HEURISTIC). Efficacité de Spine Chill contre Undetectable : **UNCERTAIN** (non vérifiée ; Spine Chill reworkée au PTB 10.2.0, non LIVE).
  - Fin de partie : ne jamais sortir avec un piège actif (mécanique : FACT de principe [UNCERTAIN-MM] ; le conseil est prudent dans tous les cas).
- **Habitudes punissables** : quitter la chase pour chercher les boîtes au mauvais moment ; plusieurs piégés qui terminent un gen en même temps ; ignorer l'absence de TR près d'un gen.
- **Adaptations avancées** : si un add-on modifie les boîtes ou les minuteries (Rules Set No.2, Crate of Gears, Amanda's Letter : effets non vérifiés), adapter le rythme de complétion des gens (SITUATIONAL).
- **Add-ons qui changent la décision** : non vérifiables cette session.
- **Implications de carte** : grandes cartes = boîtes éloignées, donc plus de temps de recherche (HEURISTIC).
- **Perks fréquentes** : non vérifiables. Teachables : Make Your Choice, Scourge Hook: Hangman's Trick, Surveillance.
- **Écart avec le seed** : CONFLICT (TR 24 m contre 32 m selon la mémoire du modèle) · NON VÉRIFIABLE (valeurs du dash, 5 boîtes, 12 s de fouille, 0,8 s d'accroupissement, Spine Chill contre sa furtivité) · OK (buffs au 9.1, [2]).
- **Sources** : [1] [2].

## 12. The Clown (Kenneth Chase) — archétype(s) : anti-loop (Hindered) | mobilité (Haste)
- **Version** : **buffs au 9.1.0 (29/07/2025)**, VERIFIED dans [2] ; valeurs non lues. Statut LIVE.
- **Données LIVE** (UNCERTAIN-MM) : 4,6 m/s ; TR 32 m ; grande taille. Afterpiece Tonic (gaz rose) : Intoxicated (vision troublée, toux, Hindered) ; Antidote (gaz jaune) : Haste **pour lui ET pour les survivants** (FACT de principe [UNCERTAIN-MM]). Interaction P14 (HYPOTHESIS) : depuis 9.6.0, deux Haste identiques issues de pouvoirs/perks se réduisent (DR, [2]) ; la Haste de l'Antidote cumulée à une Haste de perk (Sprint Burst…) serait donc atténuée — catégories exactes dans le manuel 9.6.1, non consulté. Recharge des bouteilles : fenêtre de répit. Valeurs du seed (14 %, 12 %, 6 s, 1,6 s, 6 bouteilles) : non vérifiées. Blocage des fast vaults sous intoxication : **UNCERTAIN**.
- **Identification** : bruit de bouteilles et de verre ; nuages rose ou jaune ; toux des survivants intoxiqués ; recharge audible (HEURISTIC).
- **Ce qu'il cherche en chase** : lancer du gaz sur la fenêtre ou la palette visée ; longue ligne droite en Antidote (HEURISTIC).
- **Tiles / structures** : les obstacles hauts bloquent les bouteilles ; les tiles avec plusieurs sorties permettent de contourner le gaz rose (HEURISTIC).
- **Mindgames propres** : gaz lancé pour couper une route, puis attaque sur l'autre sortie ; Antidote pour rattraper en fin de boucle (HEURISTIC).
- **Counterplay** :
  - Mécanique : contourner le gaz rose, ou le traverser au plus court ; **utiliser son gaz jaune** (mécanique : FACT de principe [UNCERTAIN-MM]) ; gagner de la distance pendant qu'il recharge (HEURISTIC).
  - Positionnel : éviter les longues lignes droites ouvertes.
  - Macro : cibler les tiles à obstacles hauts.
- **Habitudes punissables** : courir dans un nuage rose ; tenir une boucle en ligne droite ; rester groupés dans le gaz.
- **Adaptations avancées** : si Diminishing Returns 9.6.0 atténue le cumul de Hindered pouvoir + perk (HYPOTHESIS, [2]), les perks Hindered le rendent moins fort qu'avant 9.6.0 : à vérifier.
- **Add-ons qui changent la décision** : non vérifiables (Redhead's Pinkie Finger, Starling Feather, etc.).
- **Implications de carte** : cartes ouvertes favorables à l'Antidote (HEURISTIC).
- **Perks fréquentes** : non vérifiables. Teachables : Bamboozle, Coulrophobia (**20/25/30 % au 10.1.0**, VERIFIED dans [2]), Pop Goes the Weasel (+15 % de régression → **20 % au total** au 9.5.0 selon [2]).
- **Écart avec le seed** : OK (Coulrophobia 20-30 % depuis le 10.1, [2]) · OK (Pop 20 % au total, [2]) · IMPRÉCIS (« Ces valeurs viennent des patchs 9.1 et 9.2 » : [2] ne documente pas de changement Clown au 9.2) · NON VÉRIFIABLE (valeurs chiffrées, blocage des fast vaults).
- **Sources** : [1] [2].

## 13. The Spirit (Rin Yamaoka) — archétype(s) : mobilité | furtif (mindgame)
- **Version** : aucun changement 9.0.0 → 10.1.2a trouvé dans [2]. Statut LIVE présumé, UNCERTAIN.
- **Données LIVE** (UNCERTAIN-MM) : **4,4 m/s ; TR 24 m** (UNCERTAIN-MM ; compatible avec la règle d'origine de l'audit, 24 m pour un tueur à 4,4 m/s) ; taille moyenne. Yamaoka's Haunting : la Spirit laisse une **enveloppe (husk) immobile** et devient invisible et plus rapide ; elle ne peut pas attaquer en phase. Vitesse de phase environ ×1,6 (seed : 7,04 m/s), durée et cooldown non vérifiés. **Phasing passif** évoqué par le seed : UNCERTAIN (le modèle se souvient d'une suppression antérieure ; non vérifié).
- **Identification** :
  - Avant le reveal : TR 24 m ; son de départ de phase ; **husk figé**, puis réapparition brusque (FACT de principe [UNCERTAIN-MM]).
  - Pouvoir en action : husk immobile et Spirit invisible, herbe qui bouge, son directionnel (UNCERTAIN-MM).
  - Stratégie probable : chases rapides, pression par la mobilité (HEURISTIC).
- **Ce qu'il cherche en chase** : un survivant qui court (scratch marks) et qui gémit (blessé) ; un survivant qui garde une palette « pour le stun » (HEURISTIC).
- **Tiles / structures** : **jeter la palette tôt puis marcher** est souvent plus fiable que tenir (HEURISTIC) ; les LOS hautes et les tiles connectées donnent des options de « double-back » (HEURISTIC).
- **Mindgames propres** : fausse phase (rester immobile), phase courte, phase à travers une palette (HEURISTIC).
- **Counterplay** :
  - Mécanique : **regarder le husk** (s'il est figé, elle est probablement en phase) ; **marcher ou s'arrêter** (pas de scratch marks) quand elle phase près de soi (HEURISTIC). Base vérifiée (calcul P14) : la marche à 2,26 m/s = 56,5 % de la course, sous le seuil de 60 % au-delà duquel les griffures apparaissent (FACT [AUDIT], SS). **Limites (§26)** : c'est un mix-up, pas une règle — une Spirit qui attend ou feinte l'arrêt l'exploite ; **blessé**, marcher ou s'arrêter laisse les grognements et les flaques de sang : l'arrêt prolongé blessé est le pire cas ; varier marcher / courir / changer de côté.
  - Interaction (FACT [AUDIT]) : juste après un décrochage, l'Elusive basekit (10 s) supprime griffures, grognements et flaques : fenêtre où la Spirit perd ses trois indices (ne s'applique pas une fois les gens alimentés).
  - Perks : Iron Will (grognements −80/90/100 %, inactive si Exhausted : [AUDIT] SS), perks anti-scratch marks (Lucky Break ; Urban Evasion accélère la marche accroupie, qui ne laisse pas de griffures), cités par le seed : utiles, sans garantie (SITUATIONAL).
  - Macro : quitter la tile pendant son cooldown (valeur non vérifiée) (HEURISTIC).
- **Habitudes punissables** : courir en ligne droite quand elle phase ; deviner **sans lire les indices** (husk, son, herbe) — un choix imprévisible reste légitime quand aucun indice n'existe ; tenir la même palette plusieurs fois.
- **Adaptations avancées** : si le son de phase est absent, un add-on silencieux est probable (Prayer Beads Bracelet, effet LIVE non vérifié) : jouer plus « à l'aveugle », en misant sur les pauses et la marche.
- **Add-ons qui changent la décision** : non vérifiables (Prayer Beads, Rusty Flute, Yakuyoke Amulet, Mother-Daughter Ring).
- **Implications de carte** : grandes cartes = sa mobilité est pleinement utile (HEURISTIC).
- **Perks fréquentes** : non vérifiables. Teachables : Spirit Fury, Hex: Haunted Ground, Rancor.
- **Écart avec le seed** : IMPRÉCIS / à vérifier (phasing passif, son directionnel 24 m, cooldown 15 s) · NON VÉRIFIABLE (valeurs d'add-ons, 63,5 % de kills NightLight). Le seed a été signalé par [2] comme contenant des erreurs sur la Spirit (non détaillées).
- **Sources** : [1] [2].

## 14. The Legion (Frank, Julie, Susie, Joey) — archétype(s) : M1 | info (Frenzy) | slug indirect (Deep Wound)
- **Version** : aucun changement 9.0.0 → 10.1.2a trouvé dans [2]. La « désactivation temporaire puis réactivation au 9.6.0 » du seed : **non documentée dans [2]**, UNCERTAIN. Statut LIVE.
- **Données LIVE** (UNCERTAIN-MM) : 4,6 m/s ; TR 32 m. Feral Frenzy : plus rapide, vaults de palettes et fenêtres, révèle en Killer Instinct les survivants non touchés ; le Feral Slash inflige Deep Wound (timer à mender) ; fatigue à la fin du Frenzy. **« Le 5e Feral Slash met à terre »** (seed) : le modèle se souvient que le Frenzy ne met plus à terre depuis longtemps ; UNCERTAIN. Tension à noter (P14) : l'audit donne la règle générale « un dégât sous Deep Wound = état mourant » [2] ; qu'un Feral Slash compte comme « dégât » sur un survivant déjà sous Deep Wound n'est pas vérifié.
- **Identification** : cris de Frenzy ; Killer Instinct ; Legion qui vault les palettes en Frenzy (FACT de principe [UNCERTAIN-MM]).
- **Ce qu'il cherche en chase** : blesser plusieurs survivants ; enchaîner avec un M1 (HEURISTIC).
- **Tiles / structures** : en Frenzy, les palettes debout ne stoppent pas son vault ; le vrai stun ne s'obtient qu'hors Frenzy (HEURISTIC).
- **Mindgames propres** : cancel du Frenzy avant la fatigue ; tourner autour d'une tile pour obtenir un 2e slash (HEURISTIC).
- **Counterplay** :
  - Mécanique : pendant sa fatigue, casser la LOS (FACT de principe [UNCERTAIN-MM] sur la fatigue).
  - Macro : ne pas rester groupés ; mender au bon moment (HEURISTIC). Base corrigée P14 (FACT [AUDIT], VERIFIED_PRIMARY, notes 8.6.0) : le minuteur de Deep Wound (20 s) est en pause **quand tu cours** ou pendant le mending — pas « en chase » ; mending 10 s seul, 6 s par un allié. Conséquence : marcher ou s'accroupir pour cacher tes griffures **consomme** le minuteur ; mender à deux fait gagner 4 s mais expose deux survivants.
  - Équipe : jouer blessé est « normal » contre Legion ; un soin complet n'est pas toujours rentable (HEURISTIC).
- **Habitudes punissables** : se soigner à côté d'un gen occupé par plusieurs survivants ; laisser le Deep Wound expirer ; ignorer le Killer Instinct.
- **Adaptations avancées** : si un add-on permet au Frenzy de casser les palettes (Iridescent Button selon le seed ; la liste wiki.gg Pallets de l'audit cite bien « Legion (Frenzy + add-on) » parmi les destructions par pouvoir, [AUDIT] STRONG_SECONDARY, liste à reconfirmer ; nom de l'add-on non vérifié), les palettes debout ne sont plus fiables en Frenzy.
- **Add-ons qui changent la décision** : non vérifiables.
- **Implications de carte** : petites cartes = chaînage de slashs plus facile (HEURISTIC).
- **Perks fréquentes** : non vérifiables. Teachables : Discordance, Mad Grit, Iron Maiden.
- **Écart avec le seed** : IMPRÉCIS (« 5e Feral Slash met à terre », UNCERTAIN) · NON VÉRIFIABLE (désactivation et réactivation au 9.6.0 ; vitesses de Frenzy 5,2 et 6,16 m/s).
- **Sources** : [1] [2].

## 15. The Plague (Adiris) — archétype(s) : ranged (Corrupt Purge) | info/zone (fontaines) | infection
- **Version** : aucun changement 9.0.0 → 10.1.2a trouvé dans [2]. Statut LIVE présumé, UNCERTAIN.
- **Données LIVE** (UNCERTAIN-MM) : 4,6 m/s ; TR 32 m ; grande taille. Vile Purge : infecte survivants et objets ; à infection complète, le survivant est blessé et Broken. Pools of Devotion (fontaines) : les survivants s'y purifient, puis la fontaine devient **corrompue**. Si Plague boit à une fontaine corrompue : **Corrupt Purge** (vomi à distance qui blesse), durée seed 60 s. Fin de Corrupt Purge sur un stun : UNCERTAIN.
- **Identification** : **fontaines (Pools of Devotion) sur la carte** (FACT de principe [UNCERTAIN-MM], identification précoce) ; son de vomissement ; toux et vomissements des survivants ; objets infectés (UNCERTAIN-MM).
- **Ce qu'il cherche en chase** : Corrupt Purge : tirs en fin de boucle, au-dessus des palettes et des fenêtres ; survivants blessés en permanence (HEURISTIC).
- **Tiles / structures** : en Corrupt Purge, LOS haute et murs = protection (HEURISTIC).
- **Mindgames propres** : attendre la purification pour boire ; attaque en Corrupt Purge au bout de la boucle (HEURISTIC).
- **Counterplay** :
  - Macro : **ne pas purifier par réflexe**, surtout plusieurs à la suite, car chaque fontaine purifiée devient une arme potentielle (HEURISTIC) ; jouer Broken est viable, avec coordination (HEURISTIC).
  - Mécanique : Corrupt Purge → LOS et murs hauts (HEURISTIC).
  - Équipe : se purifier loin d'elle et au bon moment (HEURISTIC).
- **Habitudes punissables** : purifier en rafale ; toucher des objets infectés en étant sain (seed) ; se soigner au lieu de réparer.
- **Adaptations avancées** : jouer 100 % Broken la prive de Corrupt Purge mais rend tout le monde vulnérable à un seul hit : c'est un compromis, pas une règle (SITUATIONAL). L'audit [2] signale déjà « soignez vite contre Plague » comme une règle absolue à corriger (ch7 du seed).
- **Add-ons qui changent la décision** : non vérifiables (Iridescent Seal, Worship Tablet, Black Incense, Limestone Seal).
- **Implications de carte** : non évaluées.
- **Perks fréquentes** : non vérifiables. Teachables : Corrupt Intervention, Infectious Fright, Dark Devotion.
- **Écart avec le seed** : IMPRÉCIS (« soignez vite contre Plague », ch7, déjà relevé par [2]) · NON VÉRIFIABLE (portée ~13 m, 40 s d'infection, 60 s de Corrupt Purge, Iridescent Seal).
- **Sources** : [1] [2].

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| L4G2-01 | Huntress : « 7 hachettes » faux ; 5 de base | [2] (7 = erreur) + mémoire modèle (5) | — | « 7 » FAUX : audit ; « 5 » : UNCERTAIN-MM (corrigé P14, était STRONG_SECONDARY) |
| L4G2-02 | Huntress : 4,4 m/s, TR 20 m, berceuse | mémoire modèle | — | UNCERTAIN-MM |
| L4G2-03 | Cannibal : buff au 9.6.0 | [2] | 9.6.0 | VERIFIED dans l'audit |
| L4G2-04 | Casse de palette à la tronçonneuse ≈ 1 s | [2] (wiki.gg Pallets) | — | STRONG_SECONDARY |
| L4G2-05 | Nightmare : rework au 8.5.0 (28/01/2025) | [2] | 8.5.0 | VERIFIED dans l'audit |
| L4G2-06 | Pig : buffs au 9.1.0 | [2] | 9.1.0 | VERIFIED dans l'audit |
| L4G2-07 | Pig : TR 32 m (seed : 24 m) | mémoire modèle | — | UNCERTAIN-MM (CONFLICT) |
| L4G2-08 | Pig : sortir avec un piège actif = mort | mémoire modèle | — | UNCERTAIN-MM |
| L4G2-09 | Clown : buffs au 9.1.0 | [2] | 9.1.0 | VERIFIED dans l'audit |
| L4G2-10 | Coulrophobia 20/25/30 % | [2] | 10.1.0 | VERIFIED dans l'audit |
| L4G2-11 | Pop Goes the Weasel 20 % au total | [2] | 9.5.0 | VERIFIED dans l'audit |
| L4G2-12 | Spirit : 4,4 m/s, TR 24 m | mémoire modèle | — | UNCERTAIN-MM |
| L4G2-13 | Legion : désactivé puis réactivé au 9.6.0 | [1] seulement | 9.6.0 | UNCERTAIN (absent de [2]) |
| L4G2-14 | Protections d'unhook : Endurance + 10 % Haste 10 s + Elusive 10 s | [2] | 10.1.0 | VERIFIED dans l'audit |

## Conflits

#### CONFLICT-L4G2-01 : Huntress « plus haut kill rate global » vs « pick le plus large »
- Source A : seed [1] : « Plus haut kill rate global dans les stats officielles BHVR 2026 ».
- Source B : audit [2] : pick Huntress (broad) ; kill rate le plus haut tous MMR = The Lich. La vue d'ensemble du seed dit aussi Lich, Nightmare, Onryō…
- Hypothèse : confusion entre pick rate et kill rate dans la fiche du seed.
- Résolution : B retenue (l'audit cite les données officielles) ; fiche du seed FAUSSE sur ce point.

#### CONFLICT-L4G2-02 : TR de la Pig
- Source A : seed [1] : 24 m.
- Source B : mémoire du modèle : 32 m.
- Hypothèse : erreur du seed, ou changement 9.1.0 non lu.
- Indice (audit P14) : règle d'origine « 32 m pour les tueurs à 4,6 m/s » (wiki.gg Terror Radius, SS, avec exceptions) → penche vers 32 m sans le prouver.
- Résolution : UNRESOLVED (aucune vérification possible cette session).

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Huntress, nombre de hachettes | 7 | 7 relevé comme erreur ([2]) ; 5 = mémoire du modèle, UNCERTAIN | FAUX (valeur de remplacement non vérifiée) |
| Huntress, kill rate | plus haut kill rate global BHVR 2026 | pick le plus large ; kill rate top = Lich ([2]) | FAUX |
| Huntress, valeurs de hachette | 25-40 m/s, hitbox 0,4 m, recharge 2 s | — | NON VÉRIFIABLE |
| Cannibal, buff 9.6.0 | oui | oui ([2]) | OK |
| Cannibal, 5,45 m/s | buff du 9.6.0 | contenu non lu | NON VÉRIFIABLE |
| Knock Out | ralentit après une palette ; valeurs PTB 10.2 (hypothèse du lot) | signalé comme erreur par [2] ; effet principal (aura à 32/24/16 m) omis | IMPRÉCIS / à vérifier (lot perks tueur) |
| Nightmare, valeurs du pouvoir | Snares 12 %, TP 30 s, CD réveil 45 s | rework 8.5.0 non lu | NON VÉRIFIABLE |
| Nightmare, Z-Block | « selon version » | — | IMPRÉCIS (versions mélangées) |
| Pig, TR | 24 m | 32 m (mémoire modèle) | CONFLICT (UNRESOLVED) |
| Pig, buff 9.1 | oui | oui ([2]) | OK |
| Clown, patchs 9.1 et 9.2 | valeurs 9.1 et 9.2 | seul 9.1.0 documenté ([2]) | IMPRÉCIS |
| Coulrophobia | 20-30 % depuis 10.1 | 20/25/30 % ([2]) | OK |
| Pop Goes the Weasel | 20 % au total | 20 % au total au 9.5.0 ([2]) | OK |
| Spirit, phasing passif | existe | suppression probable (mémoire modèle) | IMPRÉCIS / UNCERTAIN |
| Legion, 5e Feral Slash à terre | oui | probablement obsolète (mémoire modèle) | IMPRÉCIS / UNCERTAIN |
| Legion, désactivé puis réactivé au 9.6.0 | oui | absent de [2] | NON VÉRIFIABLE |
| Plague, « soignez vite » (ch7) | règle absolue | relevé par [2] | IMPRÉCIS |

## Questions ouvertes

À relancer avec WebSearch dès que le budget est rétabli :
1. Huntress : vitesse de hachette, capacité exacte des add-ons, portée de la berceuse, changements 2025-2026 éventuels.
2. Cannibal : contenu exact du buff 9.6.0 (vitesse de sweep, charges).
3. Nightmare : contenu complet du rework 8.5.0 (réveils, snares, pallets, TP, add-ons).
4. Pig : TR (24 ou 32 m), contenu du buff 9.1.0 (vitesse accroupie, dash), nombre de Jigsaw Boxes, comportement des pièges après alimentation des portes, efficacité de Spine Chill contre Undetectable.
5. Clown : contenu du buff 9.1.0 ; blocage des fast vaults sous intoxication.
6. Spirit : phasing passif, son directionnel, effet actuel de Prayer Beads Bracelet, cooldown.
7. Legion : Frenzy peut-il mettre à terre ? désactivation au 9.6.0 ?
8. Plague : un stun met-il fin à Corrupt Purge ? effet d'Iridescent Seal.
9. Pour tous : perks fréquentes (NightLight inaccessible) et impact des Diminishing Returns 9.6.0 sur les pouvoirs Hindered et Haste.

## Sources

[1] Guide seed, chapitre 8 — `/home/user/dbd_guide/kb/seed/ch8_killers.txt` (l. 1-256 et 547-844) — lu le 27/09/2026 (fichier local, non fiable).
[2] Audit phase 0 — `/home/user/dbd_guide/kb/seed/audit_phase0.txt` — lu le 27/09/2026 (historique des patchs 9.0.0 → 10.1.2a, erreurs relevées).

Aucune source web : budget WebSearch épuisé (200/200) au moment du lot. Toute information marquée UNCERTAIN-MM vient de la mémoire du modèle.
