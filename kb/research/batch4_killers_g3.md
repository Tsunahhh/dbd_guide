# Lot 4 — Fiches tueurs (côté SURVIVANT) — groupe 3 : tueurs 16 à 22

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) — voir kb/audit/pass14_lot4_g1-g3.md**

**Couverture web : 0 élément vérifié par recherche / 7 non re-vérifiés (quota)** — 7/7 tueurs traités ; 10 claims confirmés uniquement via l'audit phase 0 ou les ledgers (Claims B4G3-01, 02, 04-07, 09, 10, 12, 13) ; tout le reste = seed ou connaissance du modèle, UNCERTAIN.

- Périmètre : Ghost Face, Demogorgon, Oni, Deathslinger, Executioner, Blight, Twins (seed `kb/seed/ch8_killers.txt` l. 845-1093).
- Référence : patch LIVE 10.1.2a (17/09/2026). PTB 10.2.0 = **non LIVE**. Date de travail : 27/09/2026.
- Légende conseils : FACT (vérifié par l'audit) / FACT de principe (mécanique de base non re-vérifiée, UNCERTAIN) / HEURISTIC / SITUATIONAL / HYPOTHESIS. Notes de menace = HEURISTIC. (P14 : EXPERT OPINION retirée de la légende, aucune source experte n'ayant été lue.)

> **AVERTISSEMENT DE VÉRIFICATION (bloquant)** — **0 recherche WebSearch effectuée** pour ce lot : le budget de session était déjà épuisé (« 200 of 200 WebSearch calls ») au lancement de l'agent ; WebFetch/curl sont bloqués (voir `kb/PROJECT_MANIFEST.md` l. 42).
> - Seules sources utilisables : `kb/seed/audit_phase0.txt` (historique des patchs 9.0.0 → 10.1.2a, vérifié en phase 0) [1] et le seed [2] (non fiable).
> - Conventions : « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » = valeur reprise du seed, UNCERTAIN ; « connaissance du modèle (antérieure à mi-2026), UNCERTAIN » = valeur ajoutée sans source ; « FACT de principe » = mécanique de base stable, détail 2026 non re-vérifié.
> - Conséquence : toute valeur chiffrée non couverte par l'audit est **UNCERTAIN** (« connaissance du modèle (antérieure à mi-2026), UNCERTAIN » ou « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) », UNCERTAIN) ou **NON VÉRIFIABLE**. Aucune source experte n'a été lue : les conseils sont des **HEURISTIC** (connaissance générale du jeu), jamais des EXPERT OPINION sourcées.
> - Les changements 2025-2026 **non listés dans l'audit** (ex. détail des buffs Oni/Executioner 9.1.0, buff Ghost Face 9.6.0) sont **inconnus** : ils peuvent invalider des valeurs ci-dessous.
> - À relancer dès que le budget WebSearch est relevé (`CLAUDE_CODE_MAX_WEB_SEARCHES_PER_SESSION`) : cf. « Questions ouvertes ».

### Règles d'usage et faits transversaux (ajout audit P14)
- **Options par défaut, pas règles (§26)** : chaque « Counterplay » décrit l'option par défaut contre un joueur qui utilise normalement son pouvoir. Un tueur expérimenté l'anticipe (Blight qui attend le pré-drop ou contourne, Demogorgon qui garde le Shred chargé, Deathslinger qui tient la visée, Ghost Face qui feinte l'abandon) : s'il exploite ta réponse habituelle, **varier**.
- **SoloQ / SWF (§25)** : « annoncer sa position / les portails », « désigner le sauveteur le plus proche », « un survivant écraseur de Victor », « compter ses Rushes » supposent le vocal. En **SoloQ** : se fier au HUD (qui est en chase, au crochet, au sol), aux sons de pouvoir et aux auras de perks, et agir soi-même quand on est le plus proche ; en **SWF** : annoncer et répartir les rôles.
- **Casses de palette par pouvoir** (FACT [AUDIT], STRONG_SECONDARY, **liste wiki.gg Pallets à reconfirmer**) : Demogorgon (Shred), Oni (Blood Fury), Blight (Lethal Rush) figurent dans la liste ; **ni l'Executioner ni les Twins ni le Deathslinger** n'y figurent (les casses par add-on citées par le seed pour l'Executioner sont donc UNCERTAIN).
- **Règle d'origine du TR** (FACT [AUDIT], SS) : 32 m pour les tueurs à 4,6 m/s, 24 m pour ceux à 4,4 m/s, avec de nombreuses exceptions. Indice seulement : le TR 24 m du Ghost Face (4,6) et le TR 32 m du Deathslinger (4,4) seraient des exceptions à vérifier ; pour la Blight (4,6 à l'origine), la règle penche vers 32 m plutôt que 40 m.
- **Statuts utiles (FACT [AUDIT])** : Exposed = une attaque de base met à l'état mourant ; l'Endurance protège aussi contre l'Exposed (Deep Wound à la place), sauf si le survivant est déjà sous Deep Wound, et elle saute sur une action voyante ; Deep Wound = 20 s en pause en courant ou en mending, mending 10 s seul / 6 s à deux, un dégât sous Deep Wound = état mourant ; accroupi 1,13 m/s, marche 2,26 m/s, course 4,0 m/s.
- **LIVE / PTB** : perks citées ci-dessous et modifiées au **PTB 10.2.0** (non LIVE, `deliverables/PERK_DATABASE.md` §1.4) : Spine Chill (rework), Dead Man's Switch (30/35/40 s au PTB) ; Dead Hard est UNCERTAIN dans la base de perks. Garder les valeurs LIVE 10.1.2a jusqu'à la sortie.
- **Cartes** : les « Implications de carte » ne tiennent pas compte des changements de palettes 9.2.0 / 9.3.0 / 9.3.2 [1] (HEURISTIC, lots 7-8).
- **DRILL** : utiliser DR-15 « Counterplay d'un tueur » (`kb/research/batch11_training.md` §3).

---

## 16. The Ghost Face (Danny Johnson) — archétype(s) : furtif | M1 | info
- **Version** : buffs 9.6.0 (28/04/2026, détail non vérifié) + 9.6.1 (05/05/2026) : vitesse accroupi 4,0 m/s [1] — VERIFIED_PRIMARY (via audit). Pas de rework 9.x connu. Statut LIVE.
- **Données LIVE** :
  - Vitesse 4,6 m/s — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; concorde avec connaissance du modèle (antérieure à mi-2026), UNCERTAIN. Accroupi 4,0 m/s — LIVE, VERIFIED via audit [1]. Calcul P14 : c'est **exactement ta vitesse de course** (4,0 m/s) : en courant tu gardes l'écart sans en gagner ; en marchant (2,26 m/s) il te reprend 1,74 m/s, soit ~17 m en 10 s ; accroupi (1,13 m/s), 2,87 m/s. Marcher pour ne pas laisser de griffures face à un Ghost Face accroupi proche est donc coûteux.
  - TR 24 m hors Night Shroud — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN (exception à la règle d'origine de l'audit, 32 m pour un tueur à 4,6 m/s : à vérifier). En Night Shroud : Undetectable (pas de TR, pas de red stain) — FACT de principe (mécanique stable de longue date, UNCERTAIN sur détails 2026 ; la définition d'Undetectable est FACT [AUDIT]).
  - Stalk : remplit une jauge par survivant ; 100 % → Marked = Exposed (60 s — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN). Stalk plus rapide en se penchant (lean) — FACT de principe, facteur exact UNCERTAIN.
  - Reveal : un survivant qui le garde dans son champ de vision (distance/temps exacts UNCERTAIN) casse Night Shroud et met le pouvoir en recharge (seed : 15 s depuis 9.6.0, avant 17 s) — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
- **Identification** :
  - Avant le reveal : pas de TR ni de berceuse, pas de red stain en Night Shroud — FACT (Undetectable supprime TR et red stain, [AUDIT] SS ; qu'il soit Undetectable en Night Shroud = FACT de principe). Indices : pas de pas/respiration proches ; Spine Chill qui s'allume sans TR (UNCERTAIN : effet contre Undetectable non vérifié ; rework au PTB 10.2.0) ; corbeaux qui s'envolent — **réserve P14** : l'audit indique que les corbeaux ne s'envolent pas « pour certains tueurs furtifs » (liste non lue) : l'absence de corbeaux ne prouve rien, leur envol reste un indice faible — HEURISTIC.
  - Pouvoir en action : silhouette accroupie/penchée derrière un coin, bruit de « déclic »/stalk (UNCERTAIN), notification de reveal quand vous le repérez.
  - Stratégie probable : marquer les survivants concentrés (gen, soin, décrochage) puis one-shot l'Exposed ; souvent build d'info/régression — HEURISTIC.
- **Ce qu'il cherche en chase** : vous faire tourner autour d'une tile opaque pendant qu'il stalke en se penchant pour obtenir l'Exposed, puis M1 = down direct — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles avec LOS dégagée sur ses angles de lean (fenêtres, filler bas) où vous le voyez en premier — HEURISTIC.
  - Défavorables : murs hauts/rochers épais (il penche et stalke hors de votre vue), zones intérieures à nombreux coins (Midwich, Hawkins) — HEURISTIC/SITUATIONAL.
  - Fenêtres vs palettes : standard M1 hors Exposed ; Marked → une palette tardive devient risquée (le coup vous met à terre) — HEURISTIC.
- **Mindgames propres** : faux abandon de chase puis retour accroupi en Undetectable ; lean « fake » d'un côté puis contournement — HEURISTIC.
- **Counterplay** :
  - Mécanique : caméra régulièrement derrière vous sur les gens ; le révéler dès qu'il apparaît (casse le pouvoir) — FACT de principe.
  - Positionnel : réparer face aux accès probables ; éviter de rester dos à un mur ouvert — HEURISTIC.
  - Macro : annoncer sa position (SWF) ; en SoloQ, surveiller les auras de coéquipiers qui décrochent brutalement d'un gen — HEURISTIC.
  - Équipe : un coéquipier qui regarde vers vous peut le révéler — HEURISTIC.
- **Habitudes punissables** : réparer/soigner longtemps sans tourner la caméra ; décrochage « à l'aveugle » sans vérifier le pourtour (TR absent ≠ tueur absent) — HEURISTIC. **Erreur classique** : croire qu'il est loin parce qu'il n'y a pas de TR.
- **Adaptations avancées** : Marked → jouer « comme si Exposed » pendant toute la durée : pré-drop plus tôt, pas de tile à mindgame serré ; interaction (FACT [AUDIT]) : un survivant Marked qui vient d'être décroché garde l'Endurance basekit 10 s, qui transforme le coup Exposed en Deep Wound — tant qu'il ne fait pas d'action voyante ; contre un Ghost Face qui stalke en chase, casser la LOS vers ses angles de lean plutôt que courir tout droit — HEURISTIC. Échec du counterplay habituel : zones sombres/encombrées où le reveal est difficile.
- **Add-ons qui changent la décision** : NON VÉRIFIABLE en session. Seed : Walleye's Matchbook (recharge), Cinch Straps, « Ghost Face Caught on Tape » (Iri), Driver's License — effets 2026 non confirmés. Règle générale (HEURISTIC) : si des Marked sont révélés par aura/si la recharge est quasi nulle → ne pas se cacher en casier/derrière un mur après marquage, rejoindre une tile forte immédiatement.
- **Implications de carte** : cartes intérieures/à coins (Midwich, Hawkins, Lery's, RPD) favorisent le stalk ; cartes ouvertes favorisent le reveal — HEURISTIC/SITUATIONAL.
- **Perks fréquentes / synergies** : infos/stealth (seed : Pain Resonance, Grim Embrace, Lethal Pursuer, Furtive Chase) — NON VÉRIFIABLE ; côté survivant, Spine Chill est souvent citée comme contre-info contre Undetectable — UNCERTAIN (corrigé P14, était « de référence » : son effet contre Undetectable n'est pas vérifié, `batch4_killers_g2.md` fiche Pig le classe UNCERTAIN ; rework au PTB 10.2.0, non LIVE) ; la caméra reste l'info la plus sûre, Distortion peu utile (il ne voit pas d'auras par défaut) — HEURISTIC.
- **Écart avec le seed** : accroupi 4,0 m/s (9.6.1) OK ; recharge 17 → 15 s (9.6.0) NON VÉRIFIABLE ; Exposed 60 s, portée 40 m, reveal ~1,5 s NON VÉRIFIABLE ; tier « C (A chez propelrc) » NON VÉRIFIABLE.
- **Sources** : [1], [2].

## 17. The Demogorgon — archétype(s) : mobilité | anti-loop | info
- **Version** : buffs 9.6.0 (28/04/2026) : Shred 19 m/s, Undetectable 12 s (sortie de portail) [1] — VERIFIED_PRIMARY (via audit). Statut LIVE.
- **Données LIVE** :
  - Vitesse 4,6 m/s, TR 32 m, grand — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; concorde avec connaissance du modèle (antérieure à mi-2026), UNCERTAIN.
  - Portails (Of the Abyss) : nombre max (seed : 6, 8 avec Lifeguard Whistle) — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN. Traversée par l'Upside Down, sortie en Undetectable 12 s — LIVE [1] ; « 5 s avant 9.6.0 » — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
  - Scellement de portail par les survivants (seed : 12 s solo) — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
  - Shred : attaque chargée, 19 m/s (LIVE [1]) ; casse les palettes instantanément (audit, STRONG_SECONDARY, liste à reconfirmer) ; murs cassables — UNCERTAIN ; rotation « 55°/s doublée au 9.6.0 » — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
- **Identification** : TR 32 m ; portails posés (visibles seulement une fois activés — UNCERTAIN) ; cri/son d'émergence ; posture de charge du Shred (il se ramasse avant de bondir) — HEURISTIC.
  - Stratégie probable : réseau de portails autour du 3-gen/crochets centraux, arrivée Undetectable sur un gen — HEURISTIC.
- **Ce qu'il cherche en chase** : un Shred sur une ligne droite ou une palette pré-lâchée qu'il détruit sans perte de temps — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles à murs hauts qui cassent la LOS et forcent des virages serrés ; fenêtres (le Shred ne franchit pas une fenêtre) — HEURISTIC.
  - Défavorables : longues lignes droites, zones ouvertes, palettes pré-lâchées (cassées en Shred) — HEURISTIC.
- **Mindgames propres** : charge de Shred tenue puis relâchée en M1 ; faux repli vers un portail — HEURISTIC.
- **Counterplay** :
  - Mécanique : pendant qu'il charge le Shred il est plus lent → prendre de la distance ou couper la ligne ; changer de direction au moment de la détente — HEURISTIC (valeur de ralentissement UNCERTAIN).
  - Positionnel : ne pas pré-lâcher trop tôt ; lâcher la palette quand il est engagé dans une animation — HEURISTIC.
  - Macro : sceller les portails proches des gens clés (à deux seulement si le second survivant n'a pas mieux à faire : l'effet d'un scellement à deux n'est pas vérifié, et en SoloQ cela retire souvent un réparateur d'un gen) ; toute sortie = 12 s d'Undetectable → vérifier les abords du gen après son disparition — FACT (12 s) + HEURISTIC.
  - Équipe : annoncer les portails actifs ; le sceau d'un portail près du 3-gen vaut plus qu'un portail excentré — HEURISTIC.
- **Habitudes punissables** : réparer près d'un portail actif sans surveillance ; pré-drop systématique ; courir en ligne droite en open. **Erreur classique** : croire qu'un tueur « disparu » est parti loin (12 s d'Undetectable depuis 9.6.0).
- **Adaptations avancées** : quand le Shred est chargé, rester collé à l'obstacle (il ne peut pas « couper » un mur haut) ; si son virage a bien été amélioré (seed, non vérifié), les dodges tardifs marchent moins que sur l'ancien Demogorgon — UNCERTAIN.
- **Add-ons qui changent la décision** : NON VÉRIFIABLE. Seed : Red Moss (+Undetectable, sortie silencieuse), Lifeguard Whistle (+portails), Vermilion Webcap, Rat Liver / Unknown Egg. Règle (HEURISTIC) : sortie silencieuse → ne plus compter sur le son d'émergence, surveiller visuellement ; portails supplémentaires → prioriser le sceau.
- **Implications de carte** : grandes cartes = plus de valeur pour les portails ; cartes à nombreux murs hauts = Shred limité — HEURISTIC.
- **Perks fréquentes / synergies** : Surge (nom actuel, ex-Jolt, confirmé audit) [1] ; téléportation → perks de régression à distance — HEURISTIC.
- **Écart avec le seed** : Shred 19 m/s OK ; Undetectable 12 s OK ; « 5 s avant 9.6.0 », virage « doublé », Oblivious près des portails, 6/8 portails, scellement 12 s : NON VÉRIFIABLE.
- **Sources** : [1], [2].

## 18. The Oni (Kazan Yamaoka) — archétype(s) : M1 | mobilité | coup unique (Fury)
- **Version** : buffs 9.1.0 (29/07/2025, détail non documenté dans l'audit) [1]. Statut LIVE. Détails 9.1.0/9.2 (seed : 5 orbes par crochet, virage Demon Strike) — NON VÉRIFIABLE.
- **Données LIVE** :
  - Vitesse 4,6 m/s, TR 32 m, grand — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; concorde avec connaissance du modèle (antérieure à mi-2026), UNCERTAIN.
  - Yamaoka's Wrath : orbes de sang laissés par les survivants blessés, absorbés pour remplir la jauge ; jauge pleine → Blood Fury — FACT de principe ; durées/quantités (seed : ~45 s, 5 orbes/crochet, Demon Dash ~7,8 m/s, 3,45 m/s en absorption) — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
  - En Blood Fury : Demon Dash (charge puis course rapide) + Demon Strike (met à terre un survivant sain) ; casse les palettes instantanément (audit, STRONG_SECONDARY, liste à reconfirmer).
- **Identification** : TR 32 m ; avant la Fury = M1 standard ; activation de la Fury = cri/roar audible et musique de chase changée (UNCERTAIN sur portée) ; bruit de dash caractéristique — HEURISTIC.
  - Stratégie probable : blesser beaucoup tôt, farm d'orbes près des crochets, tournée de gens en Fury — HEURISTIC.
- **Ce qu'il cherche en chase** : injurer vite (orbes), puis Fury en terrain ouvert où la Demon Strike ne peut pas être évitée par une tile — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles à murs hauts et virages serrés (casse la LOS du dash) ; fenêtres (dash ≠ vault) — HEURISTIC.
  - Défavorables : open areas et longues lignes en Fury ; palettes en Fury (cassées instantanément) — HEURISTIC.
- **Mindgames propres** : dash annulé/flick au dernier moment ; absorption pendant la chase pour déclencher la Fury juste avant une tile — HEURISTIC.
- **Counterplay** :
  - Mécanique : en Fury, forcer le dash à tourner (virage au dernier moment, derrière un mur haut) ; attendre qu'il s'engage avant de changer de direction — HEURISTIC.
  - Positionnel : hors Fury, jouer normalement ; en Fury, se rapprocher d'un groupement de LOS blockers plutôt que d'une palette isolée — HEURISTIC.
  - Macro : limiter les orbes → se soigner quand c'est sûr et ne pas rester longtemps blessé (SITUATIONAL : ne pas soigner sous pression de gens) — HEURISTIC. Articulation avec `batch9_macro.md` §2.10 (P14) : là-bas, le soin est « souvent non rentable » contre un tueur à coup unique **en Blood Fury** ; ici, le soin **hors Fury** sert à lui refuser les orbes. Les deux tiennent : se soigner tôt pour retarder la Fury ; une fois la Fury lancée, ne pas commencer un soin.
  - Équipe : se disperser quand la Fury démarre ; éviter de se regrouper blessés — HEURISTIC.
- **Habitudes punissables** : rester blessé longtemps ; pré-drop pendant la Fury ; fuir en ligne droite en open. **Erreur classique** : sous-estimer la portée de la Fury depuis un gen éloigné.
- **Adaptations avancées** : si la jauge est probablement pleine (plusieurs blessés, crochet récent), anticiper la Fury avant de prendre une tile faible — HEURISTIC/SITUATIONAL.
- **Add-ons qui changent la décision** : NON VÉRIFIABLE. Seed : Lion Fang (+durée), Iridescent Family Crest, Renjiro's Bloody Glove, Splintered Hull. Règle (HEURISTIC) : add-on de durée → survivre en tenant la LOS plutôt que chercher une palette ; add-on d'aura sur orbes/blessés → ne pas compter sur la cachette.
- **Implications de carte** : cartes ouvertes (champs de maïs, Coldwind) favorisent la Fury ; cartes intérieures à murs hauts favorisent le survivant — HEURISTIC.
- **Perks fréquentes / synergies** : seed : Pain Resonance, Corrupt Intervention, Pop, Eruption — NON VÉRIFIABLE. Côté survivant, Iron Will n'a pas d'effet documenté sur les orbes (le seed l'affirme « selon version ») — UNCERTAIN.
- **Écart avec le seed** : buff 9.1.0 OK (existence) ; « 5 orbes par crochet depuis le 9.2 » NON VÉRIFIABLE ; « virage 540° au 9.1 » NON VÉRIFIABLE ; Iron Will contre les orbes IMPRÉCIS (probablement sans effet, UNCERTAIN).
- **Sources** : [1], [2].

## 19. The Deathslinger (Caleb Quinn) — archétype(s) : ranged | anti-loop
- **Version** : aucun changement 9.x → 10.1.2a trouvé dans l'audit [1]. Statut LIVE (valeurs non revérifiées).
- **Données LIVE** :
  - Vitesse 4,4 m/s, TR 32 m, grand — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; concorde avec connaissance du modèle (antérieure à mi-2026), UNCERTAIN.
  - The Redeemer : visée (ADS) puis harpon ; survivant touché = ramené vers lui, puis M1 ; chaîne cassée = survivant blessé + Deep Wound — FACT de principe (UNCERTAIN sur le détail 2026).
  - Portée, vitesse du projectile, rechargement, stun après chaîne cassée (seed : 18 m, 40 m/s, 2,6 s, 2,7 s) — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
- **Identification** : vitesse 4,4 ; TR 32 m ; bruit de visée/tir, cliquetis de rechargement — HEURISTIC. Stratégie : chases courtes via tirs à la sortie de vault/palette — HEURISTIC.
- **Ce qu'il cherche en chase** : une ligne droite ou une sortie de vault où vous ne pouvez pas tourner — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles à obstacles serrés et hauts (pas de ligne de tir), jungle gyms fermés, intérieurs — HEURISTIC.
  - Défavorables : open areas, fenêtres exposées sur une longue ligne de tir, fillers bas — HEURISTIC.
  - Fenêtres vs palettes : vaulter seulement si la sortie est couverte par un obstacle ; palettes à lâcher tôt si la sortie est en ligne droite — HEURISTIC.
- **Mindgames propres** : visée tenue pour vous forcer à zigzaguer (perte de distance) ; rechargement feint — HEURISTIC.
- **Counterplay** :
  - Mécanique : quand il vise, casser la ligne (virage vers un obstacle) plutôt que zigzag régulier en open — HEURISTIC.
  - Harponné : tirer la chaîne vers/autour d'un obstacle pour la casser (blessé + Deep Wound, mais pas de M1 immédiat) — FACT de principe. Suite (FACT [AUDIT] sur Deep Wound) : minuteur 20 s en pause en courant ; mending 10 s seul ; un nouveau coup sous Deep Wound met à terre et l'Endurance ne protège pas — casser la chaîne gagne du temps, pas la sécurité.
  - Positionnel : rester à courte distance des LOS blockers ; ne pas traverser l'open en ligne droite — HEURISTIC.
  - Macro : il perd du temps à recharger → le forcer à tirer dans le vide (bait) puis gagner une tile — HEURISTIC.
- **Habitudes punissables** : vault « automatique » vers l'open ; zigzag prévisible ; rester Deep Wound sans soin. **Erreur classique** : croire qu'une palette lâchée protège d'un tir au-dessus (la ligne de tir peut passer selon la hauteur — UNCERTAIN).
- **Adaptations avancées** : contre un bon tireur, privilégier des chaînes de tiles serrées même peu « safe » plutôt qu'une grosse tile séparée par de l'open — HEURISTIC.
- **Add-ons qui changent la décision** : NON VÉRIFIABLE. Seed : Warden's Keys (recharge), Bayshore's Cigar / Gold Belt Buckle, Iridescent Coin (Exposed harponné), Barbed Wire. Règle : si un harpon peut rendre Exposed (effet d'add-on non vérifié) → casser la chaîne en priorité plutôt que de subir le reel, sauf si l'obstacle le plus proche te ramène dans sa portée — HEURISTIC.
- **Implications de carte** : cartes ouvertes à longues lignes de tir le favorisent ; intérieures encombrées le handicapent — HEURISTIC.
- **Perks fréquentes / synergies** : Dead Man's Switch (valeur LIVE **contestée** : 25/30/35 s selon la table 9.2.0 de l'audit, mais la page wiki.gg 9.2.X citée par le même audit dit ces changements du PTB 9.2.0 annulés au LIVE [1] ; 30/35/40 s au **PTB 10.2.0**, non LIVE), Gearhead (ses perks) — fréquence NON VÉRIFIABLE pour 2026 ; côté survivant Lithe/Dead Hard (seed ; Dead Hard UNCERTAIN dans la base de perks) — HEURISTIC.
- **Écart avec le seed** : vitesse 4,4 OK (UNCERTAIN) ; valeurs du Redeemer NON VÉRIFIABLE.
- **Sources** : [1], [2].

## 20. The Executioner (Pyramid Head) — archétype(s) : ranged | zone | anti-loop
- **Version** : buffs 9.1.0 (29/07/2025, détail non documenté dans l'audit) [1]. Statut LIVE.
- **Données LIVE** :
  - Vitesse 4,6 m/s (4,2 m/s en traçant) ; TR 32 m ; grand — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
  - Rites of Judgement : Torment Trails au sol ; survivant qui les franchit **sans être accroupi** → Tormented — FACT de principe.
  - Punishment of the Damned : onde au sol qui **traverse** palettes, fenêtres et murs — FACT de principe ; portée/coût/recharge (seed : ~10 m, 2 charges, 2,25 s) — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
  - Cage of Atonement : un Tormented à terre peut être mis en cage au lieu d'un crochet — FACT de principe.
  - Final Judgement : exécute un Tormented déjà en phase finale (Struggle) — UNCERTAIN sur la formulation 2026.
- **Identification** : TR 32 m ; traînées rouges au sol ; bruit de l'onde ; cages loin de lui — HEURISTIC. Stratégie : punir les fins de boucles, cages pour gagner du temps, Final Judgement pour les 2e crochets — HEURISTIC.
- **Ce qu'il cherche en chase** : vous fixer derrière une palette/fenêtre/mur fin puis lancer l'onde à travers — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles longues, murs épais/plein angle droit, éviter les murs fins ; jouer la distance latérale — HEURISTIC.
  - Défavorables : fillers bas, palettes courtes (il frappe à travers), couloirs étroits en ligne — HEURISTIC.
  - Fenêtres vs palettes : la palette ne protège pas contre l'onde ; elle sert à gagner de la distance, pas à « se cacher » derrière — HEURISTIC.
- **Mindgames propres** : faux lancer ; traçage de la tile pour vous forcer à choisir entre crouch (lent) et Tormented — HEURISTIC.
- **Counterplay** :
  - Mécanique : bouger latéralement par rapport à son axe au moment du lancer ; ne pas rester aligné avec lui derrière une palette — HEURISTIC.
  - Positionnel : s'accroupir pour traverser les traînées hors chase — FACT de principe (évite Tormented ; requalifié P14, cohérent avec la ligne « Rites of Judgement ») ; coût calculé : accroupi 1,13 m/s contre 4,0 m/s en course [AUDIT] → traverser 3 m de traînée prend ~2,7 s au lieu de 0,75 s ; en chase, accepter parfois le Tormented pour garder la distance — HEURISTIC/SITUATIONAL.
  - Macro : sauver les cages vite (le chrono de phase continue comme un crochet — UNCERTAIN), surtout celles des survivants proches de Final Judgement — HEURISTIC.
  - Équipe : l'emplacement des cages éloigne les sauveteurs ; en SWF, désigner le sauveteur le plus proche ; en SoloQ, y aller si l'on est le plus proche d'après le HUD et que personne ne bouge — HEURISTIC.
- **Habitudes punissables** : traverser les traînées debout sans nécessité ; rester collé derrière une palette ; ignorer une cage. **Erreur classique** : croire que les fenêtres/palettes bloquent l'onde.
- **Adaptations avancées** : contre un joueur qui trace toutes les tiles, préférer changer de tile tôt plutôt que d'accumuler les tours « Tormented » ; sur carte intérieure, les murs sont traversés → privilégier la distance — HEURISTIC.
- **Add-ons qui changent la décision** : NON VÉRIFIABLE. Seed : Iridescent Seal of Metatron, Obsidian Goblet (onde casse palettes/murs), Burning Man Painting, Valtiel Sect Photograph, Scarlet Egg. Règle : **si l'effet est observé** (onde qui casse les palettes selon le seed ; l'Executioner est absent de la liste audit des casses par pouvoir, UNCERTAIN) → ne plus lâcher une palette pour le bloquer, filer vers la tile suivante — HEURISTIC.
- **Implications de carte** : intérieurs et murs fins (Midwich, Lery's) le favorisent — HEURISTIC/SITUATIONAL.
- **Perks fréquentes / synergies** : Forced Penance, Trail of Torment, Deathbound (ses perks) ; Nowhere to Hide LIVE 24 m (18 m = PTB 10.1.0) [3] — VERIFIED via ledger.
- **Écart avec le seed** : buff 9.1.0 OK (existence) ; « Final Judgement au 2e hameçon » IMPRÉCIS (concerne un survivant déjà en phase finale — UNCERTAIN) ; « la cage change de place si un autre survivant s'en approche » NON VÉRIFIABLE / douteux (UNCERTAIN) ; tier A vs kill rate 39,4 % : cohérent si difficulté (HEURISTIC).
- **Sources** : [1], [2], [3].

## 21. The Blight (Talbot Grimes) — archétype(s) : mobilité | anti-loop
- **Version** : nerf 9.6.0 (28/04/2026) : 4,6 → 4,4 m/s ; casser une palette au sol ramène les tokens de Rush à 2 sous le max et remet la recharge à 0 % [1] — VERIFIED_PRIMARY (via audit). Statut LIVE.
- **Données LIVE** :
  - Vitesse 4,4 m/s — LIVE, VERIFIED [1]. TR : 40 m (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN) vs 32 m (connaissance du modèle (antérieure à mi-2026), UNCERTAIN) — CONFLICT-B4G3-01. Taille moyenne — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
  - Blighted Corruption : 5 tokens (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN) ; Rush (pas d'attaque) → Slam sur obstacle → Lethal Rush (attaque) — FACT de principe. Vitesse du Rush 9,2 m/s, recharge 2 s/token, fatigue 2,5 s — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
  - Lethal Rush casse les palettes instantanément (audit, STRONG_SECONDARY, liste à reconfirmer) ; depuis 9.6.0, **casser une palette au sol** ramène ses tokens à « 2 sous le max » et remet la recharge à 0 % (FACT [AUDIT], VERIFIED_PRIMARY). Lecture précise (calcul P14) : le coût réel dépend de son stock — **2 tokens s'il était au max, 1 s'il était à max − 1, 0 token (seulement la recharge perdue) s'il était déjà à max − 2 ou moins** (interprétation de « ramène à », HYPOTHESIS) ; les notes, telles que l'audit les résume, ne distinguent pas la casse en Lethal Rush de la casse au pied.
- **Identification** : vitesse 4,4 ; sons de Rush/Slam très reconnaissables ; déplacement en rebonds sur les murs — HEURISTIC. Stratégie : pression de map (tournées de gens rapides), chases courtes, souvent build régression — HEURISTIC.
- **Ce qu'il cherche en chase** : un Lethal Rush en ligne droite ou via un bump sur l'obstacle de la tile — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles serrées aux murs hauts qui empêchent un bump propre ; zones à nombreux petits obstacles irréguliers — HEURISTIC (SITUATIONAL : un Blight expert « hug » ces tiles).
  - Défavorables : open areas et longues lignes, fillers bas espacés — HEURISTIC.
  - Palettes : depuis 9.6.0, le forcer à casser une palette lui coûte jusqu'à 2 tokens (selon son stock, voir ci-dessus) + la recharge → pré-drop **le plus souvent** plus rentable qu'avant — HEURISTIC fondé sur un FACT [1]. Limites (§26 P14, cohérent avec le handbook fiche 21) : il peut **ne pas casser** et contourner la palette, qui devient un simple mur ; chaque pré-drop consomme une palette de la carte ; quand il a déjà peu de tokens (juste après plusieurs Rushes, en fatigue), la casse ne lui coûte presque rien et un drop normal suffit ; contre un Blight qui ralentit avant la palette pour obtenir le pré-drop, mélanger avec des départs anticipés sans drop.
- **Mindgames propres** : faux Rush / rush court puis M1 ; bump tardif pour contourner la tile — HEURISTIC.
- **Counterplay** :
  - Mécanique : tourner au dernier moment face au Lethal Rush (virage limité) ; après un Rush raté, repartir à l'opposé pendant sa fatigue — HEURISTIC (durée UNCERTAIN).
  - Positionnel : rester près des obstacles hauts ; éviter de traverser l'open quand il a des tokens — HEURISTIC.
  - Macro : sa mobilité rend les gens éloignés moins sûrs ; ne pas laisser un 3-gen compact — HEURISTIC.
  - Équipe : compter ses Rushes (sons) pour estimer s'il est à court de tokens — HEURISTIC ; estimation grossière seulement : le nombre de tokens (5) et la recharge (2 s/token) viennent du seed, non vérifiés, et un add-on peut les changer.
- **Habitudes punissables** : ligne droite en open ; attendre derrière une palette debout « pour le mindgame ». **Erreur classique** : appliquer le counterplay pré-9.6.0 (éviter **tout** pré-drop) alors que la casse lui coûte désormais des tokens — HEURISTIC. Erreur inverse (P14) : pré-drop **systématique**, même quand il n'a presque plus de tokens ou qu'il contourne.
- **Adaptations avancées** : contre un Blight « hug tech », les tiles serrées perdent leur valeur → privilégier palettes + distance ; surveiller ses tokens avant de quitter une tile — HEURISTIC.
- **Add-ons qui changent la décision** : NON VÉRIFIABLE. Seed : Compound Thirty-Three, Adrenaline Vial (+tokens), Blighted Rat / Blighted Crow, Iridescent Blight Tag. Règle : plus de tokens → ne plus compter sur l'épuisement de ses Rushes ; add-on de Rush en ligne droite rapide → rester encore plus proche des obstacles — HEURISTIC.
- **Implications de carte** : cartes à nombreux obstacles bumpables le favorisent ; open maps très plates lui donnent de la vitesse mais peu de bumps — SITUATIONAL.
- **Perks fréquentes / synergies** : seed : Pain Resonance, Pop, Eruption, Corrupt Intervention — NON VÉRIFIABLE.
- **Écart avec le seed** : nerf 9.6.0 OK ; TR 40 m NON VÉRIFIABLE (connaissance du modèle : 32 m, UNCERTAIN) ; « fatigué 2,5 s après chaque Rush » NON VÉRIFIABLE ; « Sprint Burst 2 s désormais » hors périmètre, NON VÉRIFIABLE.
- **Sources** : [1], [2].

## 22. The Twins (Charlotte & Victor Deshayes) — archétype(s) : slug | anti-loop | zone
- **Version** : 9.0.0 (17/06/2025) : Victor peut déclencher des chases [1] — VERIFIED via audit. Pas de rework en 9.x ; rework 2024 largement annulé en PTB (patch exact non vérifié) [1]. Statut LIVE.
- **Données LIVE** :
  - Charlotte 4,6 m/s, TR 32 m ; Victor 6,0 m/s — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
  - Blood Bond : Charlotte libère Victor ; bond de Victor → sain = accroché (blessé, puis retrait nécessaire), blessé = à terre — FACT de principe ; durées (libération 0,75 s, retrait 8 s, écrasement 0,35 s, rappel 90 s) — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
  - Victor écrasable par les survivants quand il est vulnérable (après un bond raté / au repos) — FACT de principe.
- **Identification** : TR de Charlotte ; cris/rires aigus de Victor ; Charlotte immobile quand elle contrôle Victor — HEURISTIC. Stratégie : slug (Victor garde un survivant à terre), 3-gen, pression Hex (seed) — HEURISTIC.
- **Ce qu'il cherche en chase** : Charlotte blesse, Victor finit ; Victor posé sur un slug/crochet pour bloquer la revive — HEURISTIC.
- **Tiles / structures** :
  - Favorables : contre Victor, tiles avec vault et obstacles qui cassent ses lignes de bond ; contre Charlotte seule, loops standard — HEURISTIC.
  - Défavorables : open areas (bond de Victor), zones proches d'un slug gardé — HEURISTIC.
- **Mindgames propres** : Victor posé en embuscade près d'un gen ou d'un slug ; switch rapide Charlotte → Victor — HEURISTIC.
- **Counterplay** :
  - Mécanique : esquiver le bond (changer de direction pendant la charge) puis écraser Victor s'il est vulnérable — HEURISTIC.
  - Positionnel : ne pas approcher un survivant au sol gardé par Victor sans pouvoir l'écraser ; attendre que Charlotte le rappelle — HEURISTIC.
  - Macro : kit anti-slug (Unbreakable, Soul Guard, Boon: Exponential selon run) — HEURISTIC ; Charlotte immobile pendant le contrôle de Victor = fenêtre pour les gens éloignés d'elle — HEURISTIC. Faits utiles (FACT [AUDIT], ajout P14) : **aucune auto-relève basekit en LIVE** (les systèmes anti-slug des PTB 9.2.0 / 9.3.0 ont été reportés puis annulés) ; depuis 9.2.0, récupération au sol automatique et option Abandon après avoir été relevé/soigné de l'état mourant 2 fois ; Unbreakable (9.5.0, wiki) ne s'active que si l'on a été mis au sol **par le tueur**, une fois par partie (qu'une mise au sol par Victor compte « par le tueur » : non vérifié) ; la refonte Abandon / Surrender est **PTB 10.2.0**, non LIVE.
  - Équipe : en SWF, un survivant « écraseur » garde Victor sous contrôle pendant la revive ; en SoloQ, ne pas compter sur cette répartition : ne relever que si Victor est visible et écrasable, ou rappelé — HEURISTIC.
- **Habitudes punissables** : se regrouper autour d'un slug gardé ; ignorer la position de Charlotte ; chase en étant Broken (Victor accroché). **Erreur classique** : croire que Victor ne peut pas lancer de chase (faux depuis 9.0.0) [1].
- **Adaptations avancées** : contre un joueur qui garde Victor en sécurité, jouer Charlotte comme un M1 mais sans jamais quitter une zone de LOS blockers ; SITUATIONAL selon Hex.
- **Add-ons qui changent la décision** : NON VÉRIFIABLE. Seed : Iridescent Pendant (écraser Victor = Exposed), Madeleine's Scarf, Sewer Sludge, Cat Figurine. Règle : si écraser Victor punit (Exposed) → ne l'écraser qu'en sécurité, pas en chase de Charlotte — HEURISTIC.
- **Implications de carte** : intérieurs/cartes encombrées limitent les bonds ; open favorise Victor — HEURISTIC.
- **Perks fréquentes / synergies** : Hex (Ruin, Undying, seed) — NON VÉRIFIABLE ; Oppression, Coup de Grâce, Hoarder (ses perks) — NON VÉRIFIABLE pour 2026.
- **Écart avec le seed** : « Depuis la mi-2025, Victor peut déclencher des chases » OK (9.0.0, 17/06/2025) ; libération 0,75 s « depuis 7.7 » NON VÉRIFIABLE ; tier C vs « 3e kill rate au haut MMR » = incohérence interne (CONFLICT-B4G3-02).
- **Sources** : [1], [2].

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| B4G3-01 | Ghost Face accroupi 4,0 m/s | [1] | 9.6.1 | VERIFIED_PRIMARY (via audit) |
| B4G3-02 | Ghost Face buffé au 9.6.0 (détail inconnu) | [1] | 9.6.0 | VERIFIED_PRIMARY (existence) |
| B4G3-03 | Ghost Face recharge Night Shroud 15 s (17 avant) | [2] | 9.6.0 | UNCERTAIN |
| B4G3-04 | Demogorgon Shred 19 m/s | [1] | 9.6.0 | VERIFIED_PRIMARY (via audit) |
| B4G3-05 | Demogorgon Undetectable 12 s après portail | [1] | 9.6.0 | VERIFIED_PRIMARY (via audit) |
| B4G3-06 | Shred / Blood Fury / Lethal Rush cassent les palettes instantanément | [1] | — | STRONG_SECONDARY |
| B4G3-07 | Oni et Executioner buffés au 9.1.0 (détail inconnu) | [1] | 9.1.0 | VERIFIED_PRIMARY (existence) |
| B4G3-08 | Deathslinger 4,4 m/s | [2] + connaissance du modèle | — | UNCERTAIN |
| B4G3-09 | Blight 4,4 m/s (était 4,6) | [1] | 9.6.0 | VERIFIED_PRIMARY |
| B4G3-10 | Blight : casse de palette → tokens à 2 sous le max, recharge à 0 % (coût réel 0 à 2 tokens selon le stock : interprétation P14) | [1] | 9.6.0 | VERIFIED_PRIMARY (texte) ; interprétation du coût : HYPOTHESIS |
| B4G3-11 | Blight TR 40 m | [2] | — | UNCERTAIN (connaissance du modèle : 32 m) |
| B4G3-12 | Victor peut déclencher des chases | [1] | 9.0.0 | VERIFIED_PRIMARY (via audit) |
| B4G3-13 | Nowhere to Hide 24 m LIVE (18 m = PTB 10.1.0) | [3] | 10.1.0 | VERIFIED (ledger) |
| B4G3-14 | Toutes autres valeurs de pouvoir (portées, durées, recharges) | [2] | — | NON VÉRIFIABLE |

## Conflits

#### CONFLICT-B4G3-01 : Terror Radius de la Blight
- Source A : seed ch8 l. ~1000 : « RT : 40 m » [2].
- Source B : connaissance du modèle (antérieure à mi-2026), UNCERTAIN : 32 m (aucune source).
- Hypothèse : erreur du seed ou valeur modifiée ; aucune vérification possible en session.
- Indice (audit P14) : règle d'origine « 32 m pour les tueurs à 4,6 m/s » (la Blight était à 4,6 avant 9.6.0 ; le résumé du nerf 9.6.0 dans l'audit ne mentionne pas de changement de TR) → penche vers 32 m sans le prouver.
- Résolution : UNRESOLVED.

#### CONFLICT-B4G3-02 : force des Twins
- Source A : seed, tier C, kill rate NightLight 47,4 % [2].
- Source B : seed (vue d'ensemble) citant les stats BHVR oct. 2025 – févr. 2026 : Twins parmi les meilleurs kill rates au haut MMR (>60 %) [2].
- Hypothèse : pick rate très faible → échantillon de spécialistes ; tier « C » = accessibilité, pas plafond.
- Résolution : UNRESOLVED (infographies BHVR non consultées).

#### CONFLICT-B4G3-03 : Final Judgement / cages de l'Executioner
- Source A : seed : « Au 2e hameçon, Final Judgement tue directement » ; « la cage change de place si un autre survivant s'en approche » [2].
- Source B : connaissance du modèle (antérieure à mi-2026), UNCERTAIN : Final Judgement vise un Tormented déjà en phase finale ; comportement de relocalisation non confirmé.
- Résolution : UNRESOLVED.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Ghost Face accroupi | 4,0 m/s (9.6.1) | 4,0 m/s, 9.6.1 [1] | OK |
| Ghost Face recharge | 17 → 15 s (9.6.0) | buff 9.6.0 existe, valeur non vue | NON VÉRIFIABLE |
| Demogorgon Shred | 19 m/s | 19 m/s, 9.6.0 [1] | OK |
| Demogorgon Undetectable | 12 s (5 s avant 9.6.0) | 12 s [1] ; ancienne valeur non vue | OK (12 s) / NON VÉRIFIABLE (5 s) |
| Demogorgon | survivants Oblivious près d'un portail actif | — | NON VÉRIFIABLE |
| Oni | 5 orbes par crochet « depuis le 9.2 » | audit : buffs Oni au 9.1.0, pas au 9.2 | IMPRÉCIS (patch probable 9.1.0) / NON VÉRIFIABLE |
| Oni | Iron Will réduit les orbes | — | IMPRÉCIS (UNCERTAIN) |
| Deathslinger | valeurs Redeemer (18 m, 40 m/s, 2,6 s, 2,7 s) | — | NON VÉRIFIABLE |
| Executioner | Final Judgement « au 2e hameçon » | — | IMPRÉCIS (UNCERTAIN) |
| Executioner | cage qui se déplace si un survivant s'approche | — | NON VÉRIFIABLE (douteux) |
| Blight | 4,4 m/s ; casse de palette → tokens | idem [1] | OK |
| Blight | RT 40 m | connaissance du modèle 32 m (UNCERTAIN) | NON VÉRIFIABLE (CONFLICT-B4G3-01) |
| Twins | Victor lance des chases « depuis la mi-2025 » | 9.0.0, 17/06/2025 [1] | OK |
| Twins | tier C vs top kill rate haut MMR | — | NON VÉRIFIABLE (CONFLICT-B4G3-02) |

## Questions ouvertes

1. Détail des buffs 9.6.0 de Ghost Face (recharge, reveal, Marked) et de Demogorgon (rotation du Shred, portails).
2. Détail des buffs 9.1.0 de l'Oni et de l'Executioner (orbes, Demon Strike, onde, cages).
3. Valeurs LIVE : TR de la Blight ; fatigue et vitesse du Rush ; tokens de base.
4. Redeemer (Deathslinger) : portée, rechargement, stun de chaîne cassée en 10.1.2a.
5. Twins : timings LIVE (libération, retrait, écrasement, rappel), vitesse de Victor.
6. Add-ons « qui changent la décision » : aucun des 7 tueurs n'a pu être vérifié (effets 2026).
7. Le PTB 10.2.0 touche-t-il un de ces tueurs ? (non recherché ; ne pas intégrer comme LIVE).
8. **Action** : relancer ce lot avec un budget WebSearch disponible (~25-35 recherches).

## Sources

[1] Rapport d'audit phase 0 (historique des patchs 9.0.0 → 10.1.2a, notes officielles citées) — `kb/seed/audit_phase0.txt` (l. 440-700, 770-800, 2480-2500, 2815-2835) — consulté le 27/09/2026 (fichier local ; **aucune** recherche WebSearch possible : budget de session épuisé).
[2] Guide seed, chapitre 8 (non fiable) — `kb/seed/ch8_killers.txt` l. 1-256 et 845-1093 — consulté le 27/09/2026.
[3] Registre des contenus obsolètes (Nowhere to Hide 24 m LIVE) — `kb/ledgers/OUTDATED_CONTENT_REPORT.md` l. 28 — consulté le 27/09/2026.
