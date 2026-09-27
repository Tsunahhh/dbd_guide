# Lot 4 — Fiches tueurs vue SURVIVANT, groupe 1 (tueurs 1 à 7)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026) + RE-VÉRIFIÉ lot 12b (27/09/2026) sur pages wiki complètes et notes officielles BHVR locales**

**Couverture : 7/7 tueurs re-vérifiés sur page wiki complète (27/09/2026), dont __NOFF__ points confirmés par note officielle.**

- Périmètre : Trapper, Wraith, Hillbilly, Nurse, Shape, Hag, Doctor.
- Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 non LIVE (les pages wiki affichent déjà certaines perks « upcoming Patch 10.2.0 » : non retenues ici). Date de travail : 27/09/2026.
- Méthode (lot 12b) : lecture des pages wiki.gg **complètes** des 7 tueurs (`kb/sources/wiki_killers/<Nom>.txt`, extraites via l'API le 27/09/2026 : infobox, pouvoir, « Power Trivia », add-ons, change log), de la page wiki.gg **Pallets** (via `kb/tools/wiki_text.py`), et des notes officielles BHVR 9.0.0 → 10.1.2 (`kb/sources/patches/official_*.txt`).
- Étiquettes : FACT / DATA / HEURISTIC / EXPERT OPINION / SITUATIONAL ; valeurs chiffrées : LIVE / PTB / OBSOLETE / HISTORICAL / UNCERTAIN.
- Confiance : **STRONG_SECONDARY** = page wiki complète ; **VERIFIED_MULTI_SOURCE** = wiki + note officielle concordantes ; **VERIFIED_PRIMARY** = note officielle explicite.
- Seed comparé : `kb/seed/ch8_killers.txt` l. 257-546 ; audit : `kb/seed/audit_phase0.txt`.

> **Historique de vérification** — La 1re version (27/09/2026) avait été écrite **sans aucune recherche web** (quota WebSearch épuisé) : valeurs [SEED-NRV] / [MÉM] UNCERTAIN. Le lot 12b a remplacé ces valeurs par celles des pages wiki complètes et des notes officielles.
> - **[AUDIT]** = valeur déjà vérifiée en phase 0 (`audit_phase0.txt`), confiance de l'audit.
> - **[MÉM]** = connaissance du modèle, UNCERTAIN : ne subsiste que là où les pages lues ne disent rien (signalé).
> - Les parties analytiques (identification, chase, counterplay, erreurs, adaptations) restent des **HEURISTIC** (raisonnement mécanique à partir des valeurs vérifiées). Aucun guide expert n'a été lu : l'étiquette EXPERT_OPINION n'est pas utilisée.
> - Les pages wiki lues n'ont **pas de change log** détaillé 9.x-10.x pour Trapper, Wraith, Hillbilly, Nurse, Hag (dernières entrées : 7.3.0, 6.7.0, 8.6.0, 8.3.2, 7.6.0) ; les changements 2025-2026 viennent des notes officielles.

## Règles transversales (vue survivant, les 7 tueurs)

- FACT : vitesses LIVE du lot — 4,6 m/s : Trapper, Wraith (non occulté), Hillbilly, Doctor, Shape (Pursuer / Evil Incarnate) ; 4,4 m/s : Hag ; 3,85 m/s : Nurse ; **4,2 m/s : Shape en Stalker Mode** (VERIFIED_PRIMARY, notes 9.2.0 [13] ; le « UNCERTAIN » de l'audit est levé) [5]-[11].
- FACT [AUDIT] + VERIFIED_PRIMARY : le **loadout** du tueur reste caché jusqu'à la fin ; son **identité** est affichée à tous les survivants **dès qu'un survivant entre en chase ou perd un état de santé** (Match Details, notes 9.6.0 [18]) [1][4]. → Les sections « Identification » ci-dessous servent à deviner le tueur avant ce moment, puis à déduire ses add-ons et sa stratégie, pas ses perks.
- FACT [AUDIT] : protections d'unhook LIVE 10.1.0 = Endurance + 10 % Haste 10 s + Elusive 10 s (pas une fois les gens alimentés) [1]. Pertinent contre les tueurs à pièges (Trapper, Hag) qui piègent le crochet. Ajout audit P14 : l'Endurance est **annulée par une action voyante** (conspicuous action) et ne protège pas un survivant déjà sous Deep Wound ; l'Elusive supprime griffures, grognements et flaques de sang et prend fin si le survivant est frappé (FACT [AUDIT], STRONG_SECONDARY) [1].
- FACT [AUDIT] : Diminishing Returns (9.6.0) sur Powers/Items/Perks/Offerings, **pas sur les add-ons** [1].
- FACT (STRONG_SECONDARY, pages wiki complètes) : TR LIVE du lot — **32 m** : Trapper, Wraith (supprimé occulté), Nurse, Doctor ; **40 m : Hillbilly** (passé de 32 à 40 m au patch 8.6.0) ; **24 m : Hag** (depuis 1.9.3) ; **Shape : aucun en Stalker (Undetectable), 16 m en Pursuer, 32 m en Evil Incarnate** (VERIFIED_PRIMARY, notes 9.2.3 [14]) [5]-[11]. La règle d'origine « 32 m à 4,6 m/s, 24 m à 4,4 m/s » [1] vaut pour la Hag mais **pas** pour le Hillbilly (exception). CONFLICT-L4G1-01 et 03 **RÉSOLUS**.
- FACT (STRONG_SECONDARY, page wiki.gg Pallets lue en entier le 27/09/2026 [12]) : « The Hillbilly and The Cannibal can alternatively destroy a Pallet with their Power, being Chainsaws. Both actions only take one second. » et « The Shape can destroy a Pallet … by colliding with it while using Slaughtering Strike ». La réserve de l'audit P14 (« aucun des 7 tueurs dans la liste ») est **levée** : Shape (Slaughtering Strike, VERIFIED_MULTI_SOURCE avec les notes 9.2.0 [13]) et Hillbilly (tronçonneuse, ~1 s ; LoPro Chains permet en plus de **traverser** palettes et murs sans arrêter le sprint [7]) cassent les palettes par leur pouvoir. Les notes 9.5.0 classent le pouvoir du Hillbilly et celui de la Shape en « Special-break » [17].
- HEURISTIC : les 7 tueurs de ce lot se classent vue survivant en 3 familles : (a) chase M1 + setup (Trapper, Hag, Doctor, Shape) → le temps de setup est la ressource du survivant ; (b) mobilité/coup unique (Hillbilly, Nurse) → LOS et imprévisibilité priment sur les palettes **contre le pouvoir** (en M1, le Hillbilly se boucle comme un 4,6 normal : voir sa fiche) ; (c) furtif/rotation (Wraith, Shape Stalker) → l'info (son, cloche, TR absent) prime.
- **Mode d'emploi des consignes (audit §26 P14)** : chaque « Counterplay » décrit l'**option par défaut** contre un joueur qui utilise normalement son pouvoir (HEURISTIC, pas règle). Un tueur expérimenté anticipe l'option par défaut (fausse cloche du Wraith, charge annulée du Hillbilly, blink retenu de la Nurse, fausse pose du Trapper) : s'il exploite visiblement ta réponse habituelle, **varier** vaut mieux que répéter la consigne.
- **SoloQ / SWF (audit §25 P14)** : les consignes « Équipe » et « Macro » (désarmer le 3-gen pendant qu'il chase ailleurs, sauveteur qui vérifie le sol, chrono des 60 s d'Evil Incarnate) supposent souvent une information partagée. En **SoloQ**, les appliquer sur signaux observables : HUD (qui est en chase, au crochet), cris de piège, sons de pouvoir, auras de perks ; en **SWF**, les annoncer.
- **LIVE / PTB (audit P14)** : perks citées ci-dessous et **modifiées au PTB 10.2.0** (non LIVE ; `deliverables/PERK_DATABASE.md` §1.4) : Spine Chill (rework), Calm Spirit, Borrowed Time (rework) côté survivant ; Agitation, Iron Grasp, Distressing (annoncées par le seed seulement) côté tueur. Leur valeur LIVE 10.1.2a s'applique jusqu'à la sortie de 10.2.0 ; revoir ces conseils à la sortie.
- **Cartes (audit §25 P14)** : les « Implications de carte » nomment des cartes sans tenir compte des changements de palettes 9.2.0 / 9.3.0 / 9.3.2 [1] : HEURISTIC à revoir avec les lots 7-8.
- **DRILL** : pas d'exercice propre à ces fiches ; utiliser DR-15 « Counterplay d'un tueur » (`kb/research/batch11_training.md` §3) avec 3 comportements tirés de la fiche.

## 1. The Trapper (Evan MacMillan) — archétype(s) : zone/piège | M1

- **Version** : pas de changement de pouvoir 9.0.0 → 10.1.2a. Changements 2025-2026 = correctifs : pièges cachés sous des décors (9.0.0, 9.2.3, 9.6.0, 10.0.0), **cumul de Haste corrigé** en posant/réarmant plusieurs pièges (9.2.3 [14]), Iridescent Stone qui n'armait pas le dernier piège (9.2.0 [13]), **hitbox des pièges incohérente + contournements de zones de pose corrigés** (9.5.0 [17]) → le « patch 9.5 » du seed est **OK** (VERIFIED_PRIMARY). Dernier changement de pouvoir dans le change log wiki : 7.3.0 (8 pièges, Haste à la pose) [5]. Statut LIVE : STRONG_SECONDARY.
- **Données LIVE** (STRONG_SECONDARY [5] sauf mention) :
  - Vitesse 4,6 m/s ; TR 32 m ; grand (Tall).
  - Commence avec **2 pièges en main** ; **8 pièges désarmés** apparaissent sur la carte (près des gens en général depuis 7.3.1) ; capacité 2 ; il voit l'aura de tous les pièges en permanence.
  - Pose **2,5 s** (0,5 s accroupi + 1,5 s pose + 0,5 s relevé ; seule la phase centrale est modifiée par add-on) ; **Haste +7,5 % pendant 5 s** après chaque pose (depuis 7.3.0 ; un bug de cumul corrigé en 9.2.3 [14] → VERIFIED_MULTI_SOURCE). Il peut **réarmer un piège sur place** sans le ramasser ; ramassage 1 s.
  - Survivant piégé : immobilisé, **blessé s'il était sain** ; tentative de libération 1,8 s, **16,67 % par tentative, succès garanti à la 6e** ; sauvetage par un coéquipier 1,5 s ; le Trapper peut te **ramasser directement** dans le piège.
  - Désarmement **3,5 s** ; les pièges **ne se sabotent plus** (depuis 3.6.0) ; un survivant ne peut **pas** déplacer un piège. Distance minimale entre deux pièges 1,5 m.
  - Le Trapper peut se prendre dans ses propres pièges (sauf 3 s de grâce après la pose ; add-on Makeshift Wrap) : il lâche alors le survivant porté.
- **Identification** (HEURISTIC) :
  - Avant reveal : pièges armés/désarmés visibles au sol (souvent herbe haute, entrées de tiles, crochets, gens) ; aucun son de pouvoir à distance. Un piège déplacé entre deux passages = Trapper qui ramasse/repose.
  - Pouvoir en action : animation de pose (accroupi ~2,5 s) en chase ; claquement du piège + cri quand quelqu'un est pris.
  - Add-ons observables : pièges noircis (Tar Bottle) ; piège désarmé retrouvé armé sans passage du tueur (Iridescent Stone) ; **3 poses d'affilée sans ramassage** (Trapper Bag) ; aucun piège au sol en début de partie (Trapper Sack) ; pose silencieuse (Bear Oil) ; survivant libéré qui tombe au sol (Honing Stone). Identification d'add-on = SITUATIONAL.
  - Stratégie probable : 3-gen piégé + garde de crochet (proxy camp) ; peu de pression cross-map.
- **Ce qu'il cherche en chase** (HEURISTIC) : te forcer à repasser par un point piégé (fenêtre, sortie de palette, coin de jungle gym) ; te faire courir en herbe haute/zone sombre ; te pousser vers le 3-gen piégé ; poser en chase pour prendre les 7,5 % de Haste (5 s).
- **Tiles / structures** (HEURISTIC) :
  - Favorables : longues boucles à visibilité au sol (sols clairs), main buildings avec plusieurs sorties, chaînes de tiles non piégées.
  - Défavorables : tiles à entrée unique (shack côté fenêtre), herbe haute/maïs, zones déjà piégées (le temps de setup y est déjà payé).
  - Fenêtres vs palettes : une fenêtre piégée côté sortie est le piège classique ; une palette lâchée reste un obstacle normal.
  - Open areas : M1 pur, il est « un 4,6 sans pouvoir » s'il n'a pas de piège en main.
- **Mindgames propres** (HEURISTIC) : fausse pose (il s'accroupit/feinte pour te faire changer de trajet) ; pose visible pour te « parquer » d'un côté de la boucle ; piège dans le trajet d'un double-back.
- **Counterplay** (HEURISTIC) :
  - Mécanique : regarder le sol avant les vaults et sorties **qu'il a eu le temps de piéger** (il t'a perdu de vue, zone déjà fréquentée, sortie évidente de la tile) ; crouch-walk pour lire l'herbe ; ne pas sprinter aveuglément dans la végétation. Limite (audit §26 P14) : vérifier **chaque** vault en pleine chase coûte des mètres et la caméra ; contre un Trapper qui n'a pas quitté ta vue, il n'a pas pu poser sur ta sortie. Une pose lui coûte 2,5 s d'immobilité (DATA [5]) mais lui rend 7,5 % de Haste 5 s : gagner de la distance **pendant** la pose, pas après.
  - Positionnel : changer de tile tôt quand il a posé ; choisir les chaînes de tiles propres.
  - Macro : **désarmer** (3,5 s) les pièges du 3-gen et des crochets **pendant qu'il chase ailleurs** ; savoir que c'est temporaire (il réarme sur place sans ramasser [5]) : on ne peut ni saboter ni déplacer un piège. Compter ses pièges en main : 2 de base (DATA [5]) ; une 3e pose d'affilée = Trapper Bag.
  - Piégé : les tentatives de libération sont aléatoires (16,67 %, 6e garantie, 1,8 s chacune [5]) → jusqu'à ~11 s seul ; si un coéquipier est proche, **le sauvetage (1,5 s) est plus rapide** (DATA [5] ; HEURISTIC sur le choix).
  - Équipe : sauver en vérifiant le sol sous/autour du crochet ; ne pas s'agglutiner sur un gen piégé.
- **Habitudes punissables et erreurs classiques** (HEURISTIC) : courir en herbe haute par réflexe ; vaulter la même fenêtre deux fois ; décrocher sans regarder ses pieds ; considérer un piège désarmé comme neutralisé (il se réarme sur place, et tout seul avec Iridescent Stone).
- **Adaptations avancées / échecs du counterplay** (SITUATIONAL) : avec Tar Bottle + carte à herbe haute (maïs de Coldwind, Red Forest), la lecture du sol ne suffit plus → privilégier les zones dégagées et les trajets déjà parcourus. Contre un Trapper qui garde le crochet piégé en fin de partie, la sortie par la trappe ou l'autre porte vaut souvent mieux que le sauvetage (SITUATIONAL : dépend du nombre de survivants restants, des portes ouvertes et de la phase de l'accroché ; s'il reste à moins de 16 m du crochet, l'anti-facecamp 9.3.0 accélère la progression 1×/2×/4× [AUDIT], ce qui peut rendre le sauvetage plus rentable qu'attendre).
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur la page, STRONG_SECONDARY [5]) :
  - Tar Bottle (pièges noircis) → le survivant évite l'herbe/les zones sombres et marche là où il est déjà passé **au lieu de** compter sur la lecture visuelle du sol.
  - Iridescent Stone (réarme un piège désarmé **aléatoire toutes les 30 s**) → une fois identifié, le survivant contourne les pièges désarmés **au lieu de** les traiter comme sûrs ; désarmer n'achète que ≤ 30 s.
  - Tension Spring (réarme automatiquement le piège **2 s** après une libération) → le sauveteur/le libéré quitte la case immédiatement **au lieu de** repasser dessus.
  - Honing Stone (se libérer seul **met à terre**) → le survivant piégé attend un sauveteur **au lieu de** tenter de se libérer (si personne ne peut venir, se libérer = rester au sol à attendre le relevage ou le tueur).
  - Bloody Coil (désarmer en étant sain **te blesse**) → ne désarmer qu'en étant déjà blessé, ou laisser le piège **au lieu de** le désarmer par réflexe.
  - Lengthened Jaws (Deep Wound après libération) / Serrated Jaws (Haemorrhage) / Rusted Jaws (Mangled 70 s) → après un piège, se soigner/mender vite ou jouer blessé **au lieu de** compter sur un soin normal.
  - Trapper Bag (+1 piège porté, 3) → il pose plus en chase : quitter la tile encore plus tôt **au lieu de** compter 2 poses.
  - Trapper Sack (tous les pièges en main dès le départ, il ne peut plus les ramasser) → début de partie : le 3-gen et les crochets se piègent très vite ; désarmer un piège posé l'oblige à le **réarmer sur place**, il ne peut plus le déplacer.
  - Bear Oil (pose silencieuse) → garder le visuel sur lui **au lieu de** compter sur le son de pose.
- **Implications de carte** (HEURISTIC) : fort sur cartes à herbe haute / intérieures sombres ; faible sur grandes cartes ouvertes à longues boucles (pièges trop dispersés).
- **Perks fréquentes à anticiper** : seed : Agitation, Brutal Strength, Corrupt Intervention, Iron Grasp, NOED [SEED-NRV, non re-vérifié : fréquences]. Agitation (perk du Trapper) et Iron Grasp sont modifiées au **PTB 10.2.0** (non LIVE ; la page wiki affiche déjà la version 10.2.0 d'Agitation [5]). HEURISTIC : Iron Grasp/Agitation → risque de crochet porté vers un piège ou un crochet de basement.
- **Écart avec le seed** : valeurs du seed **OK** (vitesse, TR, 8 pièges, 2 en main, pose 2,5 s, Haste 7,5 % 5 s, 16,7 %/tentative, désarmement 3,5 s, patch 9.5) ; ajout : plafond de 6 tentatives. Iridescent Stone « réarmement aléatoire périodique » OK (30 s). Honing Stone OK (libération → état mourant). « Saboter/déplacer les pièges » (ancienne formulation de cette fiche) : **FAUX** depuis 3.6.0 (désarmer seulement).
- **Sources** : [1] [2] [5] [13] [14] [17]

## 2. The Wraith (Philip Ojomo) — archétype(s) : furtif | mobilité | M1

- **Version** : pas de changement de pouvoir 9.0.0 → 10.1.2a. 2025-2026 : **"The Serpent" – Soot modifié en 9.5.0** (VERIFIED_PRIMARY [17] : « While Cloaked, uncloak whenever you basic-break Pallets or Breakable Walls, explode or damage Generators ») → le « patch 9.5 » du seed est **OK** ; description du pouvoir réécrite en 10.0.0 (texte seulement, [20b]) ; correctifs (Wraith restant invisible après étourdissement par Last Stand / Head On / Blast Mine, 9.1.1-9.1.2 ; cloche muette avec une tenue, 9.6.0 ; "The Ghost" – Soot qui ne supprimait plus TR/Red Stain, 10.0.2). Dernier changement de pouvoir dans le change log wiki : 6.7.0 (suppression du Lightburn) [6].
- **Données LIVE** (STRONG_SECONDARY [6]) :
  - Vitesse 4,6 m/s ; **6,0 m/s occulté** ; TR 32 m (supprimé occulté) ; grand (Tall).
  - Occulté : **Undetectable** (pas de TR ni de Red Stain), **totalement invisible au-delà de 20 m**, partiellement visible (scintillement) en dessous, **totalement transparent à l'arrêt** ; ne peut ni attaquer ni interagir avec un survivant (il peut interagir avec les décors : palettes, gens).
  - **Occultation 1,5 s** (cloche pendant toute l'animation + bruit de cliquetis au début). **Désoccultation 3 s** : la cloche ne sonne **qu'à partir de 1,5 s** (moitié de l'animation) ; il avance à 1,6 m/s pendant la désoccultation, puis **sursaut à 150 % = 6,9 m/s pendant 1 s** (description du pouvoir ; la section « Trivia » de la page contient une ligne contradictoire « 1 second at 6 m/s ») ; il peut frapper **immédiatement** après.
  - Portée sonore : **tintement de cloche 24 m**, souffle (*whoosh*) de transition 40 m → la cloche **n'est pas** audible sur toute la carte.
  - Surprise Attack = coup de base dans les **5 s** après la désoccultation (score event utilisé par des add-ons).
  - Étourdi occulté (palette, Head On…) → désoccultation forcée + **4 s** d'étourdissement. **Lightburn supprimé en 6.7.0** : la lampe n'interrompt plus la désoccultation (OBSOLETE).
- **Identification** (HEURISTIC) :
  - Avant reveal : cloche (sonne à l'occultation et à la désoccultation, audible ≤ 24 m) ; aucun TR alors qu'un tueur arrive « trop vite » ; scintillement proche ; souffle/grognement à courte distance.
  - Pouvoir en action : scintillement qui se déplace vite ; désoccultation = quasi-arrêt (1,6 m/s) puis bond.
  - Add-ons observables : cloche impossible à localiser (Bone Clapper) ou muette (Coxcombed Clapper) ; TR qui reste audible alors qu'il est occulté ("The Beast" – Soot) ; TR absent 6 s après la désoccultation ("The Ghost" – Soot) ; il se désocculte en cassant une palette ou en tapant un gen ("The Serpent" – Soot) ; Blindness après un coup surprise ("Blind Warrior" – Mud). SITUATIONAL.
  - Stratégie probable : pression de gens par rotations rapides, chases courtes ; « hit and run ».
- **Ce qu'il cherche en chase** (HEURISTIC) : te surprendre sur un gen ; se désocculter hors de ta vue près d'une palette pour gagner la course ; t'amener en zone morte où le sursaut de 6,9 m/s suffit.
- **Tiles / structures** (HEURISTIC) :
  - Favorables : toutes les boucles standards (en chase il est un M1 4,6 sans anti-loop).
  - Défavorables : grands espaces ouverts entre tiles (il rattrape la distance occulté à 6 m/s si tu casses le contact) ; tiles courtes où la désoccultation derrière un mur suffit.
  - LOS : casser la LOS aide moins (il est Undetectable/invisible au-delà de 20 m) que garder une vue sur lui.
- **Mindgames propres** (HEURISTIC) : désocculter derrière un mur ; s'occulter en chase pour faire croire à un abandon puis revenir ; commencer la désoccultation (silencieuse pendant 1,5 s) au bord de la palette.
- **Counterplay** (HEURISTIC, sur valeurs [6]) :
  - Mécanique : garder la caméra sur lui en boucle ; lâcher la palette sur la désoccultation tardive, pas avant.
  - Info : la cloche de désoccultation est entendue ≤ 24 m et sonne **à mi-animation** : quand tu l'entends, il lui reste ~1,5 s avant de pouvoir frapper, puis il bondit à 6,9 m/s pendant 1 s (DATA [6]) → c'est le moment de rejoindre l'obstacle, pas de réparer une seconde de plus. Il peut aussi désocculter sans attaquer ou attendre derrière un mur : la cloche annonce une menace, pas le moment exact du coup. Distinguer occultation (cloche dès le début + cliquetis, il **part**) et désoccultation (silence puis cloche, il **arrive**).
  - Lampe/pétard : **ne comptent plus** pour interrompre la désoccultation (Lightburn supprimé 6.7.0, [6]). Un étourdissement (palette, Head On) pendant qu'il est occulté le force à se désocculter et l'étourdit 4 s (DATA [6]).
  - Macro : quitter un gen quand la cloche est **proche et se rapproche** (ou quand une perk d'alerte confirme), pas à chaque cloche : au-delà de 24 m tu n'entends plus le tintement, seulement le souffle (≤ 40 m). Éviter le duo sur un même gen **quand il patrouille près** : deux réparateurs = 1,7 charge/s contre 2,0 pour deux solos sur deux gens (coop 85 % [AUDIT], calcul P14), et deux cibles découvertes ; le duo reste acceptable pour finir un gen avancé (SITUATIONAL).
- **Habitudes punissables et erreurs classiques** (HEURISTIC) : réparer tête baissée sans perk d'info ; pré-lâcher par peur de la cloche ; courir en ligne droite en open (sursaut post-désoccultation) ; croire qu'un Wraith immobile est loin (transparent à l'arrêt).
- **Adaptations avancées / échecs** (SITUATIONAL) : cloche muette ou non localisable → Spine Chill ou perk d'alerte devient la principale source d'info (réserves : Spine Chill est reworkée au **PTB 10.2.0**, non LIVE ; son effet contre un tueur **Undetectable** comme le Wraith occulté n'est pas vérifié ici) ; avec Windstorm, ne pas chercher à « reset » la chase en fuyant loin : il te rattrape occulté.
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur la page, STRONG_SECONDARY [6]) :
  - Bone Clapper (distance et direction de la cloche indiscernables) → se fier au visuel (scintillement) et aux perks **au lieu du** son.
  - Coxcombed Clapper (cloche **muette**) → réparer caméra ouverte, se placer avec un obstacle à portée **au lieu d'**attendre un signal sonore.
  - "The Ghost" – Soot (TR et Red Stain supprimés **6 s de plus** après la désoccultation) → ne pas conclure « il est reparti » sur l'absence de TR après une cloche **au lieu de** rester sur ses gardes.
  - Windstorm – Mud/White/Blood (+5/7/9 % de vitesse occulté) → tenir la boucle en cours **au lieu de** fuir vers une tile éloignée.
  - Swift Hunt – Mud/White/Blood (désoccultation −8/−10/−12 %) → la marge après la cloche se réduit un peu (≈ 3 s → 2,64 s d'animation au max, calcul) : décider du drop un peu plus tôt **au lieu de** l'attendre jusqu'au dernier moment.
  - "Shadow Dance" – White/Blood (+40/60 % à la casse, aux dégâts de gen et aux vaults **occulté**) → une palette lâchée tient moins longtemps : enchaîner vers la tile suivante **au lieu de** rester à la regarder.
  - "Blind Warrior" – White (Haemorrhage + Mangled 70 s après un coup surprise) / – Mud (Blindness 60 s) → après un coup surprise, soin plus lent ou auras perdues : prévoir un soin en équipe **au lieu d'**un auto-soin rapide.
  - "The Serpent" – Soot (se désocculte en cassant palette/mur ou en abîmant un gen, 9.5.0 [17]) → il ne peut plus taper un gen occulté sans se révéler : moins de surprise sur gen, info gratuite.
  - "The Beast" – Soot (TR non supprimé occulté) → son TR te renseigne : l'utiliser comme alerte normale.
- **Implications de carte** (HEURISTIC) : fort sur grandes cartes (traversée occultée à 6 m/s) et cartes sombres ; faible sur petites cartes denses en palettes.
- **Perks fréquentes** : Bamboozle, Pain Resonance, Sloppy Butcher, Pop, NOED (seed/NightLight) [SEED-NRV, fréquences non re-vérifiées]. HEURISTIC : Bamboozle → une fenêtre bloquée après son vault, prévoir la sortie palette.
- **Écart avec le seed** : OK : 6,0 m/s occulté, invisibilité > 20 m, Surprise Attack 5 s, sursaut 6,9 m/s 1 s (l'hypothèse P14 « confusion fente/sursaut » est **réfutée** : la page donne bien 150 % pendant 1 s), occultation 1,5 s, Soot 9.5.0. **FAUX** : « cloche audible à l'échelle de la carte » (24 m / 40 m). **OBSOLETE** : « la lampe/le pétard interrompt la désoccultation » (Lightburn supprimé en 6.7.0). IMPRÉCIS : « désoccultation ~1,5 s » (c'est 3 s, cloche à 1,5 s).
- **Sources** : [1] [2] [6] [17] [20b]

## 3. The Hillbilly (Max Thompson Jr.) — archétype(s) : mobilité | coup unique (instadown)

- **Version** : pas de changement de pouvoir 9.0.0 → 10.1.2a. Dernières modifications (change log wiki [7]) : **8.3.0** (Overdrive nerfé : sprint Overdrive 13 → 12 m/s, délai de décharge 15 → 8 s, charge 2 → 1,5 c/s, cooldown de raté 2,5 → 2,7 s) et **8.6.0** (TR 32 → 40 m). 2025-2026 : description de LoPro Chains et du pouvoir mise à jour (« Special-break », 9.5.0 [17]) ; correctifs LoPro Chains (demi-tour en cassant une porte, 9.2.0 [13] ; saccade en cassant palette/mur avec latence, 9.3.0 [15]) ; sprint interrompu par un petit arbre à Toba Landing (9.3.2 [21]).
- **Données LIVE** (STRONG_SECONDARY [7]) :
  - Vitesse 4,6 m/s ; **TR 40 m** (8.6.0) ; grand (Tall). → CONFLICT-L4G1-01 **RÉSOLU** : le seed (40 m) avait raison, la mémoire du modèle (32 m) était la valeur d'avant 8.6.0.
  - Tronçonneuse : charge **2,5 s** (il avance à 3,68 m/s en chargeant) ; bruit de tronçonneuse audible à **60 m** ; le son varie avec la progression de la charge (on peut juger quand il va partir).
  - **Sprint 10,12 m/s** ; **12 m/s en Overdrive** → CONFLICT-L4G1-02 **RÉSOLU** : le seed (≈ 10,1 / 12 m/s) est OK ; 8,8 m/s (mémoire) était une ancienne valeur.
  - Virage : **412 °/s pendant la 1re seconde** du sprint, puis **32 °/s** → il peut contourner un obstacle en début de sprint, presque plus en fin de sprint.
  - Coup de tronçonneuse = **double dégâts** → met à terre un survivant sain (FACT, [7] ; l'ancien « FACT de principe [MÉM] » est confirmé).
  - Cooldowns : touche un survivant 2,7 s ; heurte un obstacle **2,5 s** ; raté 2,7 s ; casse palette/mur 1 s. Il marche à **1,84 m/s** pendant le cooldown.
  - **Overdrive** : jauge chargée en faisant tourner/sprinter (+1,5 c/s, seuil 20 → ~13 s cumulées) ; se vide (−1 c/s) après **8 s** sans tronçonneuse ; une fois pleine, **20 s** de bonus : sprint 12 m/s, charge +5 %, cooldowns −10 %.
  - Palettes : sa tronçonneuse **casse une palette baissée en ~1 s** (wiki Pallets [12], STRONG_SECONDARY ; [AUDIT] confirmé) ; **avec LoPro Chains**, le sprint **traverse** palettes et murs cassables en les cassant, sans s'arrêter [7]. Sans LoPro, un sprint qui percute un obstacle s'arrête (cooldown 2,5 s).
- **Identification** (HEURISTIC) :
  - Avant reveal : vrombissement de la tronçonneuse audible jusqu'à 60 m, puis sprint très rapide ; tueur qui arrive en quelques secondes depuis l'autre côté de la carte ; TR très large (40 m).
  - Add-ons observables : charge **inaudible hors de son TR** (Apex Muffler) ; il disparaît du TR pendant un sprint long (Filthy Slippers, Undetectable) ; sprint qui traverse les palettes (LoPro Chains) ; tueur lent hors pouvoir (4,4 m/s : Tuned Carburettor) ; coup de tronçonneuse qui ne met pas à terre (Cracked Primer Bulb).
  - Stratégie probable : forte pression de carte, punition des soins et réparations à découvert ; tunnel facile (instadown).
- **Ce qu'il cherche en chase** (HEURISTIC) : te surprendre en open ou sur un gen isolé ; un curve autour d'un petit obstacle pendant la 1re seconde de sprint ; te faire lâcher une palette trop tôt puis la casser en ~1 s à la tronçonneuse ; accumuler l'Overdrive (12 m/s).
- **Tiles / structures** (HEURISTIC) :
  - Favorables : tiles à hauts murs et obstacles serrés (jungle gyms, shack, main buildings, intérieurs), passages étroits où le sprint heurte un obstacle (2,5 s de cooldown à 1,84 m/s).
  - Défavorables : open areas, tiles basses ou fines (curves faciles), longues lignes droites.
  - Fenêtres vs palettes : en M1 il boucle comme un 4,6 normal ; la tronçonneuse sert surtout à combler la distance entre tiles.
  - Verticalité : les étages/rampes coupent ses trajectoires ; bon refuge.
- **Mindgames propres** (HEURISTIC) : charger puis annuler pour provoquer un pré-drop ; charger en angle pour couvrir deux sorties ; faux abandon de chase suivi d'un sprint.
- **Counterplay** (HEURISTIC, sur valeurs [7]) :
  - Mécanique : au son de la charge (2,5 s), se mettre derrière un obstacle solide ; esquiver par un virage **tardif** : passé la 1re seconde de sprint, il tourne à 32 °/s (DATA [7]) et ne peut plus te suivre ; un virage trop tôt laisse le temps de corriger (412 °/s).
  - Positionnel : rester près des tiles « hautes », éviter les traversées en open.
  - Macro : ne pas se soigner/réparer en open ; se disperser (il punit les groupes). Après un choc contre un obstacle, il a 2,5 s de cooldown à 1,84 m/s : c'est la fenêtre pour gagner la tile suivante.
  - Équipe : les sauvetages doivent être rapides (instadown → tunnel rapide).
- **Habitudes punissables et erreurs classiques** (HEURISTIC) : pré-lâcher **au premier son de charge, de loin** (il annule puis casse la palette en ~1 s à la tronçonneuse [12]) ; nuance P14 : quand il est **engagé** dans un sprint vers toi à travers la tile, une palette qui tombe sur sa trajectoire l'arrête (collision = cooldown 2,5 s [7]) **sauf LoPro Chains** — c'est l'engagement, pas le son, qui décide le drop ; courir en ligne droite en open ; croire qu'**être blessé protège** de la tronçonneuse (trompeur : blessé, n'importe quel coup te met à terre ; la tronçonneuse n'apporte rien de plus contre toi, mais son M1 suffit).
- **Adaptations avancées / échecs** (SITUATIONAL) : contre Apex Muffler, l'alerte sonore disparaît hors de ses 40 m de TR → Spine Chill (PTB 10.2.0 : rework, non LIVE) / caméra ouverte ; sur carte ouverte sans structures hautes, jouer la distance et la dispersion plutôt que la chase.
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur la page, STRONG_SECONDARY [7]) :
  - Apex Muffler (tronçonneuse **silencieuse pour les survivants hors du TR**) → réparer près d'un obstacle et surveiller le TR (40 m) **au lieu de** compter sur le son à 60 m.
  - Filthy Slippers (Undetectable après **2 s** de sprint, jusqu'à l'arrêt) → sur un sprint long, son TR disparaît : ne pas conclure qu'il s'éloigne **au lieu de** rester à couvert.
  - Tuned Carburettor (charge +20 %, mais **4,4 m/s** permanent) → réagir dès le premier son **au lieu d'**attendre ; en chase M1, les boucles tiennent plus longtemps (4,4 m/s).
  - LoPro Chains (sprint qui traverse palettes/murs en les cassant ; un survivant sain touché dans les 5 s qui suivent ne perd qu'un état, un blessé prend Deep Wound) → privilégier **murs solides et fenêtres** **au lieu des** palettes contre le sprint.
  - Iridescent Engravings (sprint +20 %, charge +12 % plus longue) → distance « sûre » plus grande : se rapprocher des obstacles **au lieu de** traverser en open.
  - Counterweight (virage initial −70 %) / Dad's Boots, Spiked Boots (virage +20/30 %) → contre Counterweight, un virage **précoce** suffit ; contre les bottes, esquiver **plus tard** et derrière un obstacle au lieu de compter sur un simple virage.
  - Cracked Primer Bulb (tronçonneuse = 1 seul état de santé, Overdrive plus rapide) → sain, un coup de tronçonneuse ne te met pas à terre : jouer la distance **au lieu de** tout sacrifier pour l'esquiver.
  - Begrimed Chains (Haemorrhage + Mangled 70 s) → surtout pertinent avec Cracked Primer Bulb / LoPro : soin plus lent.
- **Implications de carte** (HEURISTIC) : très fort sur cartes ouvertes (Coldwind, Red Forest) ; plus faible en intérieur (Lery's, Hawkins, Gideon) grâce aux murs.
- **Perks fréquentes** : Pain Resonance, Pop, Barbecue & Chili, Lethal Pursuer, Bamboozle ; trio Enduring/Lightborn/Tinkerer [SEED-NRV, fréquences non re-vérifiées]. Enduring LIVE : étourdissement de palette −40/45/50 % ; Lightborn : immunité aux aveuglements (lampes, pétards, flash grenades, Blast Mine) + aura du survivant qui tente 6/8/10 s ; Tinkerer : alerte bruyante sur un gen à 70 % [7]. HEURISTIC : Tinkerer → il arrive silencieux sur un gen à 70 %.
- **Écart avec le seed** : TR 40 m **OK** (CONFLICT-01 résolu, erreur du modèle) ; sprint 10,12 / 12 m/s **OK** (CONFLICT-02 résolu) ; Overdrive (20 s, retombe après 8 s) **OK** ; charge 2,5 s, récupération 2,5-2,7 s **OK** ; « il tourne mal en fin de sprint » **OK** (32 °/s après 1 s) ; LoPro Chains traverse palettes/murs **OK**. « Blessé = moins exposé à la tronçonneuse » : IMPRÉCIS / trompeur (inchangé). Les « erreurs de la fiche Hillbilly » signalées par l'audit ne sont donc **pas** sur ces valeurs.
- **Sources** : [1] [2] [7] [12] [13] [15] [17] [21]

## 4. The Nurse (Sally Smithson) — archétype(s) : mobilité (téléportation) | anti-loop total

- **Version** : pas de changement de pouvoir 9.0.0 → 10.1.2a. 2025-2026 : **Heavy Panting nerfé en 9.6.0** (allonge de la fente après plus d'un blink **30 % → 10 %**, VERIFIED_MULTI_SOURCE [18][8]) → seed OK ; nombreux correctifs de **blinks hors carte / dans le décor** (9.0.0, 9.1.0, 9.2.1-9.2.3, 9.3.0-9.3.2, 9.5.0, 10.0.0-10.0.3, **10.1.0, 10.1.1, 10.1.2** [20][21]) → le « 10.1 : correction de blinks hors carte » du seed est OK (VERIFIED_PRIMARY) ; Chain Blink qui pouvait ne pas se charger (9.2.2) ; corrections serveur de position après un blink (9.4.2).
- **Données LIVE** (STRONG_SECONDARY [8] ; vitesse aussi [AUDIT]) :
  - Vitesse **3,85 m/s** ; TR 32 m ; taille moyenne (Average).
  - **2 charges** de blink ; recharge **3 s par charge**. Charge du blink **2 s** (elle avance à 2,89 m/s en chargeant) ; 1er blink **≤ 20 m** (min. 1,5 m) ; elle peut viser plus court que la distance chargée, mais la **durée** du blink reste celle de la charge.
  - **Chain Blink** : fenêtre de **1,5 s** après le 1er blink (s'il reste une charge), **≤ 12 m** ; elle marche à 1,54 m/s pendant la fenêtre.
  - Blinks à travers murs, sols et plafonds (changement d'étage en visant le plafond/sol).
  - **Fatigue** : 2 s (1 blink), 2,5 s (2 blinks), 3 s (3 blinks) ; **+1 s** si elle a attaqué avant la fatigue (Wooden Horse le décrit comme la pénalité d'une attaque ratée) ; elle se déplace à **0,96 m/s** en fatigue et **ne peut pas être étourdie** pendant la fatigue (la fatigue prime sur les étourdissements).
  - Toute attaque après un blink (avant la fatigue) est une **Special Attack** (fente de blink à 6,16 m/s).
  - Lightburn supprimé en 6.7.0 : lampes, pétards et flash grenades n'empêchent plus ses blinks (OBSOLETE).
  - Calcul (P14, valeurs vérifiées) : hors blink elle marche à 3,85 m/s contre 4,0 m/s pour toi → tu gagnes 0,15 m/s, soit **1,5 m par 10 s** ; en fatigue (0,96 m/s) tu gagnes ~3 m/s, soit **6 à 9 m** sur 2-3 s de fatigue : c'est **là** que se crée la distance.
  - Vault de fenêtre : la page ne le dit pas ; « elle ne vaulte pas les fenêtres » reste [MÉM], UNCERTAIN.
- **Identification** (HEURISTIC) : son de charge/souffle, silhouette qui disparaît et réapparaît ; tueur très lent entre les blinks ; add-ons : 3 blinks enchaînés (Torn Bookmark), blink automatique après un blink complet (Campbell's), retour au point de départ (Jenner's), un seul blink mais tueur à 4,4 m/s (Matchbox). Stratégie : chases courtes, info via perks (aura), pression par vitesse de down.
- **Ce qu'il cherche en chase** (HEURISTIC) : une LOS continue sur toi ; un trajet prévisible ; un double-back mal timé ; le moment où tu t'arrêtes derrière un obstacle.
- **Tiles / structures** (HEURISTIC) :
  - Favorables : structures hautes et opaques, étages (main à plusieurs niveaux), zones à LOS cassée en permanence ; grands obstacles qui rendent la distance difficile à estimer.
  - Défavorables : open areas, petites tiles basses (elle voit tout), palettes (inutiles).
  - Fenêtres vs palettes : quasi sans valeur **comme obstacles** (elle blinke à travers) ; la tile reste utile comme source de LOS et de repositionnement. **Ne pas lâcher une palette sur une Nurse en fatigue** : elle n'est pas étourdissable pendant la fatigue (DATA [8]).
  - Verticalité : forte (un blink au mauvais étage = fatigue gratuite).
- **Mindgames propres** (HEURISTIC) : blink court puis long ; attendre ta réaction avant le 2e blink (fenêtre de 1,5 s) ; faux blink (charge annulée).
- **Counterplay** (HEURISTIC, sur valeurs [8]) :
  - Mécanique : casser la LOS pendant sa charge (2 s) ; changer de direction pendant son 1er blink (elle doit corriger au 2e, ≤ 12 m, dans une fenêtre de 1,5 s) ; profiter de la fatigue (2-3 s à 0,96 m/s) pour repositionner, pas pour fuir en ligne droite. Après ses 2 blinks, elle doit attendre ~3 s par charge : compter ses blinks.
  - Positionnel : garder, autant que possible, un obstacle haut entre elle et toi ; utiliser les étages.
  - Macro : réparer vite, rester dispersés ; contrer les perks d'aura avec Distortion. Correction P14 : **Calm Spirit n'est pas une perk anti-aura** (LIVE : corbeaux calmes, pas de cri ; `PERK_DATABASE.md`, SS ; modifiée au PTB 10.2.0) ; elle n'aide que contre ce qui fait crier. A Nurse's Calling (sa perk) montre les survivants qui se soignent à 28/30/32 m (VERIFIED_MULTI_SOURCE [8][13]) : se soigner hors de ce rayon.
  - Équipe : le temps de chase moyen est court → gens rapides plutôt que sauvetages risqués.
- **Habitudes punissables et erreurs classiques** (HEURISTIC) : courir en ligne droite ; lâcher des palettes ; double-back prévisible (toujours au même moment) ; rester visible derrière un obstacle bas.
- **Adaptations avancées / échecs** (SITUATIONAL) : contre une Nurse experte, le double-back devient lisible → alterner continuer/revenir ; avec Torn Bookmark (3 blinks), compter jusqu'à 3 avant de se repositionner.
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur la page, STRONG_SECONDARY [8]) :
  - Torn Bookmark (**+1 charge**, 3 blinks ; recharge ×1,3) → attendre le **3e** blink avant de se repositionner **au lieu du** 2e.
  - Campbell's Last Breath (après un blink à pleine charge, **re-blink automatique** à pleine charge droit devant, s'il reste une charge) → sortir de son axe après un long blink **au lieu de** reculer tout droit.
  - Jenner's Last Breath (après tous ses blinks, retour instantané au point de départ, +1 charge) → un double-back derrière elle peut être puni : le faire **après** sa fatigue **au lieu de** pendant la fenêtre.
  - Matchbox (**4,4 m/s** mais **1 seul blink**) → pas de chain blink : feinter le 1er blink puis tourner **au lieu de** fuir ; en M1 c'est un tueur 4,4.
  - Kavanagh's Last Breath (en fatigue, **Blindness 60 s** aux survivants à ≤ 8 m) → ne pas rester collé à elle pendant sa fatigue si tu comptes sur des auras.
  - "Bad Man's" Last Breath (Undetectable 25 s après un coup spécial, CD 45 s) / Spasmodic Breath (4,6 m/s pendant 60 s après un coup mais pouvoir désactivé) → après un coup, pas de TR / tueur M1 rapide : le blessé joue la LOS **au lieu d'**attendre le TR.
  - Plaid Flannel (elle voit la zone d'arrivée) / Dark Cincture (+30 % de vitesse pendant la fenêtre de chain) / Catatonic Boy's Treasure (−65 % de fatigue de chain) / Ataxic Respiration (fatigue −7 %) → la fenêtre de fatigue est plus courte : repositionner plus tôt, **au lieu de** compter sur 2-3 s pleines. (Correction : Ataxic Respiration n'augmente **pas** la portée.)
  - Heavy Panting (fente +10 % après 2-3 blinks, LIVE 9.6.0) → effet faible, ne change presque rien.
- **Implications de carte** (HEURISTIC) : faible sur cartes à multi-niveaux complexes (intérieurs), forte sur cartes ouvertes plates.
- **Perks fréquentes** : Nowhere to Hide, Lethal Pursuer, Pain Resonance, Eruption / Barbecue [SEED-NRV, fréquences non re-vérifiées]. FACT [AUDIT] : Nowhere to Hide LIVE 10.1.0 = auras à 24 m autour du gen abîmé (3/4/5 s) ; A Nurse's Calling 28/30/32 m (9.2.0 [13], page [8]) [1].
- **Écart avec le seed** : vitesse OK [AUDIT] ; 2 charges, 20 m + 12 m, fenêtre 1,5 s, fatigue 2 s +0,5 s/blink +1 s après attaque : **OK** ; Heavy Panting 9.6.0 **OK** (VERIFIED_MULTI_SOURCE) ; correctifs de blinks hors carte en 10.1 **OK**. « Dead Hard peut valider l'esquive » : NON VÉRIFIABLE (hors pages lues). Erreurs de **cette fiche** corrigées : Matchbox n'est pas une « charge plus rapide » (4,4 m/s + 1 blink) ; Ataxic Respiration n'est pas un add-on de portée (fatigue −7 %).
- **Sources** : [1] [2] [8] [13] [18] [20] [21]

## 5. The Shape (Michael Myers) — archétype(s) : furtif | coup unique (Slaughtering Strike) | exécution | M1

- **Version** : FACT **rework 9.2.0** (23 sept. 2025 [AUDIT]) : modes Stalker / Pursuer / Evil Incarnate + Slaughtering Strike (VERIFIED_PRIMARY [13]) ; **ajustements 9.2.3** : EI 40 → **60 s**, TR Pursuer 24 → **16 m**, TR EI 40 → **32 m**, Slaughtering Strike 6,9 → **7,5 m/s**, recharge 6 → **4 s**, bonus de casse/récupération d'étourdissement +20 % ajouté en EI, pénalité de vitesse à l'activation supprimée (VERIFIED_PRIMARY [14]) ; 9.3.0 : caméra de la Slaughtering Strike identique à la caméra normale, correctif « la SS ne cassait pas la palette si le bouton était relâché trop tôt » [15] ; 9.4.0 : **retrait de la boutique** (Shape et Laurie plus en vente, **restent jouables** pour les possesseurs), perks renommées (Adept Shape → Share the Pain…) [16][22] ; 9.5.0 : correctif « la Shape pouvait tuer un survivant pendant son animation d'auto-décrochage en EI » [17]. Il reste rencontrable en LIVE (fréquence en baisse probable, HEURISTIC).
- **Données LIVE** (VERIFIED_MULTI_SOURCE = page [9] + notes [13][14] ; détails « Trivia » = STRONG_SECONDARY [9]) :
  - **Stalker Mode** (mode par défaut) : **4,2 m/s**, **Undetectable** (aucun TR), vault 1,7 s ; accès au Stalk.
  - **Stalk** : maintenir le pouvoir, il marche à 2,52 m/s (60 %) ; survivants surlignés entre **2,5 et 32 m** ; draine le survivant surligné **le plus proche** à un rythme **fixe quelle que soit la distance** (1 point/s, −25 % s'il bouge) ; **5 points** remplissent la jauge (≈ 5 s de stalk continu à l'arrêt, calcul) ; **plus de réserve limitée par survivant** depuis 9.2.0 ; si la jauge n'est pas pleine, elle redescend jusqu'à **50 %** après **20 s** sans stalk.
  - Signaux sonores (STRONG_SECONDARY [9]) : le survivant stalké et la Shape entendent « the Hedge » quand la jauge atteint **50 %** ; un **signal sonore global** retentit quand la jauge est **pleine**.
  - Jauge pleine → passage **automatique** en Pursuer (Stalker indisponible) ; il **active** Evil Incarnate quand il veut (interaction de 2 s) [13][9].
  - **Pursuer Mode** : TR **16 m**, 4,6 m/s ; fente +20 % (phase ouverte 0,5 → 0,6 s), casse 1,95 s, étourdissement de palette 1,67 s, vault 1,42 s ; pas de stalk. Changement Stalker ↔ Pursuer : cooldown 3 s.
  - **Evil Incarnate** : **60 s**, TR **32 m**, 4,6 m/s, mêmes bonus de casse/étourdissement/vault que Pursuer ; donne la **Slaughtering Strike** et la **mise à mort à la main**. La page ne décrit **aucune autre fin** que le chrono (hors add-ons Lock of Hair / Judith's Tombstone / Reflective Fragment / Hair Bow) ; « Lingering time » 3 s s'il charge une SS à la fin.
  - **Slaughtering Strike** : charge de 0,375 s (minimum) à 1,5 s ; il avance à 3,22 m/s en chargeant, strafe ×0,25, virage limité à 160° ; attaque de **0,5 à 1,5 s à 7,5 m/s** (portée ≈ 3,75 à 11 m, calcul) ; coup **létal / double dégâts** (met à terre un survivant sain) ; **casse palettes baissées et murs cassables** (VERIFIED_MULTI_SOURCE [13][12]) ; après une casse par SS il marche à **1,84 m/s** (~2,1 s de « post-hit ») ; recharge **4 s** ; annuler une charge = 1 s de cooldown de SS (il peut quand même frapper normalement).
  - **Exécution à la main (Kill)** : en EI, un tap d'attaque **à ≤ 3 m** (angle ≤ 45°) d'un survivant **debout ou au sol** qui a **2 phases de crochet** (« final hook stage ») le **tue** (Memento Mori). **Impossible sur un survivant sous Endurance** (VERIFIED_MULTI_SOURCE [13][9]). → la question « exécution à la main ? » est **tranchée : OUI, basekit**, en EI seulement, quel que soit l'état de santé (sain, blessé ou au sol ; change log 9.2.0 [9]).
  - **Pas d'Exposed basekit** depuis 9.2.0 (« Survivors are no longer Exposed », VERIFIED_PRIMARY [13]) ; seul Fragrant Tuft of Hair le rend.
- **Identification** (HEURISTIC) :
  - Avant reveal : tueur visible sans TR ni lullaby (Stalker) ; silhouette immobile derrière un coin ; signal « Hedge » quand tu es stalké (50 %) ; signal global = jauge pleine ; puis TR court (16 m) = Pursuer ; TR 32 m + arme modifiée (effets visuels/sonores EI) = Evil Incarnate (60 s).
  - Pouvoir en action : animation de stalk (il te fixe, marche lentement) ; charge de la SS (arme levée en coup d'estoc depuis 9.4.0) puis ruée en ligne droite.
  - Add-ons observables : pas de TR à l'activation d'EI (Tombstone Piece, Undetectable 20 s) ; EI qui se prolonge après un crochet (Judith's Tombstone) ; Exposed généralisé et pas de SS (Fragrant Tuft of Hair) ; Shape qui ne quitte jamais le Stalker Mode (Scratched Mirror). SITUATIONAL.
  - Stratégie probable : snowball pendant les 60 s d'Evil Incarnate ; exécution des survivants à 2 crochets.
- **Ce qu'il cherche en chase** (HEURISTIC) : stalk gratuit quand tu ne le regardes pas ; en Evil Incarnate, un survivant sans obstacle solide proche, une palette pré-lâchée qu'il casse avec la SS, ou un survivant à 2 crochets qu'il peut **approcher à 3 m** pour l'exécuter.
- **Tiles / structures** (HEURISTIC) :
  - Favorables : en Stalker, tout ce qui casse la LOS ; en Evil Incarnate, **murs solides et fenêtres** (la SS casse les palettes baissées [13]).
  - Défavorables : open areas pendant Evil Incarnate ; tiles « palette seule ».
  - Pursuer : boucles normales mais marge réduite (fente +20 %, vault 1,42 s, casse 1,95 s).
- **Mindgames propres** (HEURISTIC) : stalk caché puis passage en Evil Incarnate au moment choisi (la jauge pleine ne force pas l'activation) ; feinte de charge ; stalk pendant que tu soignes/décroches.
- **Counterplay** (HEURISTIC, sur valeurs vérifiées) :
  - Mécanique : casser la LOS dès que tu le vois stalker (la jauge est commune à tous les survivants et se remplit en ~5 s : chaque seconde refusée compte) ; en Evil Incarnate, jouer les fenêtres et esquiver la charge **latéralement** (virage limité, strafe ×0,25) ; une palette lâchée devant une SS **sera cassée** — mais il ressort de la casse à 1,84 m/s pendant ~2 s (DATA [9]) : c'est la fenêtre pour gagner la tile suivante.
  - Positionnel/temps : **gagner du temps** pendant Evil Incarnate (60 s, fin au chrono seulement sans add-on [9]) = objectif de chase prioritaire ; « céder du terrain » ne doit pas te pousser dans une zone morte.
  - **Survivant à 2 crochets** : pendant EI, il ne doit **jamais** laisser la Shape arriver à 3 m (même sain, même au sol) → rester loin, se cacher, ne pas sauver ni réparer près de lui ; **l'Endurance empêche l'exécution** (Off the Record 30/35/40 s depuis 9.2.2 [AUDIT], Borrowed Time — rework au PTB 10.2.0, non LIVE ; protections d'unhook : Endurance [AUDIT]). Rappel [AUDIT] : l'Endurance saute sur une action voyante et ne protège pas sous Deep Wound.
  - Signaux : « Hedge » = tu es stalké, sa jauge est à 50 % ; signal global = EI disponible : réparer loin de lui, grouper les soins **avant** ce signal (HEURISTIC).
  - Macro : ne pas grouper pendant Evil Incarnate ; en Stalker il est lent (4,2 m/s, VERIFIED_PRIMARY) : bonne fenêtre pour les gens, **mais** il est Undetectable et peut passer en Pursuer (TR 16 m) près de toi → réparer en surveillant les angles (caméra), pas « sans pression ».
- **Habitudes punissables et erreurs classiques** (HEURISTIC) : laisser un tueur sans TR te fixer ; pré-lâcher pendant Evil Incarnate (la SS casse la palette) ; se soigner en open ; oublier le chrono des 60 s ; décrocher un survivant à 2 crochets sous ses yeux pendant EI.
- **Adaptations avancées / échecs** (SITUATIONAL) : si Evil Incarnate est prolongé à chaque crochet (Judith's Tombstone, plafonné à 40 s) ou par chaque coup de SS (Reflective Fragment, +20 s), la stratégie « tenir 60 s » ne suffit plus → dispersion et gens rapides.
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur la page, VERIFIED_MULTI_SOURCE avec les notes 9.2.0 [13] sauf mention) :
  - Judith's Tombstone (accrocher en EI **renouvelle** EI ; EI plafonné à **40 s**) → ne pas offrir de crochet rapide pendant EI (sauvetage/escorte loin de lui) **au lieu de** compter sur le chrono.
  - Tombstone Piece (**Undetectable 20 s** à l'activation d'EI) → le TR 32 m n'annonce plus EI : après le signal global de jauge pleine, surveiller le visuel **au lieu d'**attendre le TR.
  - Reflective Fragment (SS = 1 seul état de santé, chaque coup de SS ajoute **+20 s** à EI) → sain, la SS ne te met pas à terre : ne pas tout sacrifier pour l'esquiver, mais éviter de lui donner des coups qui prolongent EI.
  - Hair Bow (EI **+20 s** = 80 s, stalk −20 %) → recompter le chrono **au lieu de** 60 s.
  - Fragrant Tuft of Hair (EI : **Exposed** pour tous, fente +50 %, **pas de SS**) → en EI, tout coup met à terre : éviter tout contact, les palettes redeviennent sûres (pas de SS) **au lieu de** jouer les fenêtres seulement.
  - Scratched Mirror (auras à ≤ 32 m pendant le stalk, mais **ne peut plus quitter le Stalker Mode**) → il reste un tueur 4,2 m/s sans TR, sans EI ni SS ni exécution : se cacher derrière un mur ne suffit pas quand il stalke, **mais** la chase se joue comme contre un M1 lent.
  - Dead Rabbit (TR Pursuer −25 % = 12 m, TR EI +25 % = 40 m) → alerte Pursuer plus tardive.
  - Lock of Hair (peut finir EI plus tôt en gardant 50 % du reste en jauge) → la fin d'EI n'est plus au chrono : rester prudent après un arrêt brutal du TR 32 m.
- **Implications de carte** (HEURISTIC) : fort sur cartes à nombreux coins/intérieurs (stalk facile) ; Lampkin Lane (Haddonfield) retirée de la rotation en 9.4.0 [AUDIT].
- **Perks fréquentes** : Bamboozle, Pain Resonance, Corrupt Intervention, Pop ; Keep Them Waiting / See How They Run [SEED-NRV, fréquences non re-vérifiées]. FACT [AUDIT] : Keep Them Waiting 5 %/token (10.1.0) [1] ; ses perks d'origine sont devenues des perks générales en 9.4.0 [16].
- **Écart avec le seed** : **OK** sur toutes les valeurs de pouvoir : EI 60 s, SS 7,5 m/s, CD 4 s, TR 16/32 m [AUDIT]+[14] ; Stalker 4,2 m/s Undetectable (VERIFIED_PRIMARY [13]) ; stalk 32 m indépendant de la distance, retombée après 20 s ; fente Pursuer +20 % ; SS jusqu'à 1,5 s, insta-down et casse de palettes/murs ; **exécution en EI d'un survivant à 2 crochets, sauf Endurance** ; pas d'Exposed basekit ; effets de Judith's Tombstone, Tombstone Piece, Scratched Mirror, Fragrant Tuft. Imprécis : le seed omet le plafond de 40 s de Judith's Tombstone et le verrouillage en Stalker de Scratched Mirror. Erreur de **cette fiche** corrigée : « kill à la main sur survivant sain (Tombstone ?) » → l'exécution est basekit en EI, Tombstone Piece donne l'Undetectable.
- **Sources** : [1] [2] [9] [12] [13] [14] [15] [16] [17] [22]

## 6. The Hag (Lisa Sherwood) — archétype(s) : zone/piège | téléportation | info

- **Version** : pas de changement de pouvoir 9.0.0 → 10.1.2a. Dernier changement de pouvoir dans le change log wiki : **7.6.0** (téléport 40 → 48 m, pose phase 2 1 → 0,9 s, durée de déclenchement 5 → 6 s, effacement 3,5 → 4 s, rayon 3 → 2,7 m) [10]. 2025-2026 : correctifs seulement (blocage en vaultant vers un piège avec Scarred Hand, 9.1.0 ; Scarred Hand qui bloquait la Hag et Pussy Willow Catkins qui ne révélait qu'1 s, 9.3.0 [15] ; visibilité des auras de pièges, 9.6.0 [18] ; couleur d'aura des objets du tueur personnalisable, 9.6.0 [18]). Statut LIVE : STRONG_SECONDARY.
- **Données LIVE** (STRONG_SECONDARY [10]) :
  - Vitesse 4,4 m/s ; **TR 24 m** (réduit de 28 à 24 m au patch 1.9.3) ; taille moyenne (Average). → CONFLICT-L4G1-03 **RÉSOLU** : le seed (24 m) avait raison, la mémoire du modèle (32 m) était fausse.
  - **10 Phantasm Traps** en réserve ; le 11e recycle le plus ancien ; pose **1,9 s** (accroupie).
  - Déclenchement dans un rayon de **2,7 m** (zone visible seulement par la Hag) : un **Mud Phantasm** apparaît, **tourne ta caméra** vers lui et te fixe, émet un **faux TR de 8 m** ; la Hag reçoit une notification bruyante ; piège « déclenché » pendant **6 s**.
  - **Éviter de déclencher** : être **accroupi** dans la zone, **ou** être en train d'interagir avec un décor (gen, etc.) dans la zone.
  - **Effacer** : accroupi au-dessus du piège, **4 s**. La lampe torche **ne brûle plus** les pièges depuis 6.7.0 (OBSOLETE).
  - **Téléportation** vers un piège déclenché à **≤ 48 m**, à la place du Mud Phantasm, **face au survivant** qui l'a déclenché ; 1 s de ralentissement après la téléportation.
- **Identification** (HEURISTIC) : marques de boue au sol autour des gens/crochets ; fantôme de boue qui apparaît et tourne ta caméra ; faux TR bref (8 m) ; tueur qui apparaît instantanément sur un piège. Add-ons : aucun fantôme ni signal au déclenchement (Rusty Shackles) ; téléportation vers un piège **non déclenché** (Mint Rag) ; pièges et fantômes qui bloquent le passage (Scarred Hand) ; Hag rapide (4,73 m/s) sans téléportation (Waterlogged Shoe). Stratégie : 3-gen « toilé », crochet piégé, totems Hex (Ruin/Devour/Third Seal) + Undying.
- **Ce qu'il cherche en chase** (HEURISTIC) : te faire déclencher un piège posé sur la sortie d'une boucle puis te couper (elle arrive face à toi) ; t'enfermer dans une zone piégée.
- **Tiles / structures** (HEURISTIC) :
  - Favorables : longues boucles vierges ; tiles à plusieurs sorties ; zones éloignées de son réseau (> 48 m de ses pièges).
  - Défavorables : tiles déjà « dessinées » ; passages obligés (fenêtres piégées).
  - Hors pièges, c'est un M1 4,4 : les boucles standards la battent (HEURISTIC).
- **Mindgames propres** (HEURISTIC) : piège posé en évidence pour t'orienter vers un piège caché ; téléportation différée (le piège reste déclenché 6 s).
- **Counterplay** (HEURISTIC, sur valeurs [10]) :
  - Mécanique : traverser les marques **accroupi** (ou en réparant/interagissant dans la zone) ; déclenchement → repartir immédiatement **en s'éloignant du piège** (elle arrive sur lui, tournée vers toi), vers une zone sans marques : fuir « à l'opposé » peut mener dans un autre piège ou une zone morte. Le piège n'est téléportable que 6 s et à ≤ 48 m d'elle.
  - Positionnel : tirer la chase hors de son réseau.
  - Macro : **effacer accroupi (4 s)** les pièges près des gens et du crochet (la lampe ne sert plus à rien contre eux) ; totems : le build Hex est fréquent **selon le seed** (loadout caché jusqu'à la fin, FACT [AUDIT]) ; un totem coûte 14 s de purification (5 totems par partie, [AUDIT] SS) sans compter la recherche. Purifier les totems croisés en chemin, et chercher activement **quand un effet Hex est observé** (icône Cursed, effet de perk), pas par principe dès le début (l'audit relève « purifiez un Hex dès qu'il s'allume » comme règle absolue dangereuse du seed).
  - Équipe : sauveteur en crouch + vérification des marques autour du crochet.
- **Habitudes punissables et erreurs classiques** (HEURISTIC) : sprinter sur les marques ; rester à côté d'un piège déclenché ; ignorer les totems ; sauvetage direct sur crochet piégé ; compter sur une lampe pour nettoyer son réseau.
- **Adaptations avancées / échecs** (SITUATIONAL) : Mint Rag → elle peut apparaître sur **n'importe quel piège non déclenché** de la carte (CD 10 s) : effacer plutôt que contourner ; Rusty Shackles → aucune alerte, rester accroupi dans son réseau.
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur la page, STRONG_SECONDARY [10]) :
  - Mint Rag (téléportation vers **n'importe quel piège non déclenché, partout**, CD 10 s) → **effacer** activement son réseau autour des gens **au lieu de** seulement l'éviter ; un piège loin d'elle n'est plus « hors de portée ».
  - Rusty Shackles (aucune indication de déclenchement, pas de Mud Phantasm) → crouch systématique dans les zones à marques **au lieu de** compter sur le fantôme pour savoir si tu as déclenché.
  - Bog Water / Bloodied Water / Bloodied Mud (rayon de déclenchement −10/−20/−30 %) → zone plus petite : elle doit poser plus précisément (sortie de fenêtre, crochet) ; ne pas relâcher la vigilance aux passages obligés.
  - Disfigured Ear (déclencher → **Deafened 6 s**) → après un déclenchement, tu n'entends plus son arrivée : partir **immédiatement** au lieu d'écouter. (Correction : ce n'est **pas** un add-on de rayon ; « Dead Hand » n'existe pas dans la liste LIVE.)
  - Grandma's Heart (pendant un déclenchement : son TR est supprimé, faux TR du fantôme +16 m = 24 m) → le TR que tu entends est celui du fantôme : ne pas s'en servir pour la localiser.
  - Waterlogged Shoe (**4,73 m/s**, Hindered −9 % dans les zones de pièges, **plus de téléportation**) → M1 plus rapide que d'habitude : ne pas jouer de longues boucles en zone piégée ; les pièges ne la font plus apparaître.
  - Scarred Hand (pièges et fantômes **bloquent le passage**, plus de téléportation) → les marques deviennent des murs : ne pas s'enfermer dans une tile piégée.
  - Pussy Willow Catkins / Willow Wreath (aura du survivant qui déclenche 3/5 s) → après un déclenchement, changer de direction hors de sa vue.
- **Implications de carte** (HEURISTIC) : forte sur petites cartes/intérieures (réseau dense) ; faible sur grandes cartes ouvertes.
- **Perks fréquentes** : trio Hex Ruin/Devour Hope/Third Seal + Undying ; ou Pain Resonance, Grim Embrace, Pop, Sloppy Butcher [SEED-NRV, fréquences non re-vérifiées]. LIVE (page [10]) : Hex: Ruin 100/125/150 % de régression sur les gens non réparés ([AUDIT] 9.2.0) ; Hex: Devour Hope (tokens quand un survivant est décroché à ≥ 24 m : Haste à 2, **Exposed à 3**, kill à la main à 5) ; Hex: The Third Seal (Blindness permanente pour les 2/3/4 derniers survivants frappés). HEURISTIC : les totems deviennent une priorité quand un effet Hex est observé, pas du seul fait de voir des marques de Hag.
- **Écart avec le seed** : TR 24 m **OK** (CONFLICT-03 résolu ; erreur du modèle) ; 10 pièges, pose ~1,9 s, rayon ~2,7 m sauf accroupi, faux TR 8 m, téléport ≤ 48 m, effacement accroupi 4 s : **OK**. **OBSOLETE** : « effacement … ou lampe torche » (supprimé en 6.7.0). **FAUX** : « Disfigured Ear / Dead Hand = add-ons de rayon ». IMPRÉCIS : « Mint Rag = téléportation vers n'importe quel piège » (non déclenché, CD 10 s).
- **Sources** : [1] [2] [10] [15] [18] [21]

## 7. The Doctor (Herman Carter) — archétype(s) : anti-loop | info | M1

- **Version** : FACT [AUDIT] buff 9.6.0 (28 avr. 2026, détail non listé dans l'audit) ; 9.6.1 (5 mai 2026) : Shock Therapy 0,65 s [1]. Seed : 0,8 → 0,75 s (9.6.0) → 0,65 s (9.6.1) [SEED-NRV pour 0,8/0,75].
- **Données LIVE** :
  - Vitesse 4,6 m/s ; TR 32 m ; grand [SEED-NRV], cohérent classe 4,6 [AUDIT].
  - Shock Therapy : délai **0,65 s** [AUDIT], LIVE ; portée ~12 m ; bloque vault/palette ~2,5 s [SEED-NRV] — UNCERTAIN.
  - Static Blast : onde sur tout le TR, recharge 30 à 45 s selon le seed [SEED-NRV], UNCERTAIN (souvenir d'une recharge plus longue [MÉM]) ; évitable dans un casier [SEED-NRV].
  - Madness I/II/III (skill checks piégés 33/66/100 %, hallucinations, cris, objets bloqués en III, restrictions d'actions en III) [SEED-NRV] — UNCERTAIN (restrictions exactes de Madness III à confirmer).
- **Identification** (HEURISTIC) : électricité/crépitement, skill checks inhabituels, cris involontaires, hallucinations (faux Doctors) ; Static Blast = charge audible + onde. Add-ons : faisceau étroit et long (Interview Tape selon le seed), portée accrue (High Stimulus Electrode). Stratégie : chase anti-loop + info ; ralentissement via skill checks (Overcharge, Unnerving, Huntress Lullaby) ou Distressing/Coulrophobia.
- **Ce qu'il cherche en chase** (HEURISTIC) : te choquer juste avant la palette/fenêtre pour bloquer l'action ; enchaîner choc + M1 à courte portée (plus fiable depuis 0,65 s [AUDIT]).
- **Tiles / structures** (HEURISTIC) :
  - Favorables : longues boucles avec distance ; tiles où tu peux garder > portée du choc ; structures qui cassent la LOS du Static Blast.
  - Défavorables : tiles courtes « à la palette » (un choc au mauvais moment = coup garanti).
  - Fenêtres vs palettes : pré-lâcher tôt **puis partir** vers la tile suivante, ou vaulter avec de l'avance, plutôt qu'au dernier moment. La casse au pied lui coûte 2,34 s [AUDIT] : le pré-drop contre le Doctor n'est pas gratuit pour lui, mais un Doctor qui attend le pré-drop (il ralentit avant la palette) l'obtient sans risque → mélanger avec des drops normaux quand le choc est hors de portée (HEURISTIC).
- **Mindgames propres** (HEURISTIC) : feinte de choc (il marche sans tirer) pour te faire vaulter tôt ; choc de zone sur la sortie de la tile.
- **Counterplay** (HEURISTIC) :
  - Mécanique : décaler tes actions (palette/vault) hors de la fenêtre de 0,65 s ; garder de la distance. Calcul P14 : en 0,65 s tu parcours 2,6 m à 4,0 m/s [AUDIT] : si tu arrives à la palette à moins de ~3 m devant un choc lancé, l'action tombe dans la fenêtre.
  - Positionnel : casier ou LOS au Static Blast (selon le seed).
  - Macro : réussir les skill checks ; se remettre en Madness basse quand il est loin ; il manque de mobilité → dispersion.
  - Perks : Calm Spirit (cris) selon le seed (LIVE : pas de cri, SS ; modifiée au PTB 10.2.0, non LIVE) ; éviter les builds à skill checks (HEURISTIC).
- **Habitudes punissables et erreurs classiques** (HEURISTIC) : jouer les palettes au dernier moment ; soigner/réparer en Madness III dans son TR ; ignorer le chrono du Static Blast.
- **Adaptations avancées / échecs** (SITUATIONAL) : depuis 0,65 s, la marge « je lâche au dernier moment » disparaît à courte portée → pré-drop plus tôt ou quitter la tile ; avec portée accrue, les longues boucles perdent de leur sûreté.
- **Add-ons qui changent la décision** (UNCERTAIN, [SEED-NRV]) :
  - Interview Tape (faisceau étroit et long) → sortir de l'axe plutôt que reculer.
  - High Stimulus Electrode (+4 m) → prendre plus de distance avant toute action.
  - « Discipline » – Carter's Notes (délai −0,1 s) → délai effectif ~0,55 s si cumulé (UNCERTAIN, calcul HEURISTIC ; recalculé P14 : 0,65 − 0,1 = 0,55 s, sans réduction DR puisque les add-ons en sont exclus [AUDIT] ; faux si l'add-on agit en % et non en secondes) : pré-drop encore plus tôt.
- **Implications de carte** (HEURISTIC) : fort sur petites cartes/intérieures (Static Blast couvre beaucoup) ; faible sur grandes cartes.
- **Perks fréquentes** : Distressing, Coulrophobia, Unnerving Presence, Huntress Lullaby, Overcharge ; ou Pain Resonance, Grim Embrace, Lethal Pursuer [SEED-NRV]. FACT [AUDIT] : Coulrophobia 20/25/30 % (10.1.0) [1].
- **Écart avec le seed** : Shock Therapy 0,65 s (9.6.1) OK [AUDIT] ; valeurs Static Blast / Madness III : NON VÉRIFIABLE.
- **Sources** : [1] [2]

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| L4G1-C01 | Nurse 3,85 m/s | [1] (wiki via audit) | LIVE | STRONG_SECONDARY [AUDIT] |
| L4G1-C02 | Shape : Evil Incarnate 60 s, Slaughtering Strike 7,5 m/s, CD 4 s, TR Pursuer 16 m / EI 32 m | [1] | 9.2.3 (LIVE) | VERIFIED (audit) |
| L4G1-C03 | Shape : rework modes Stalker/Pursuer/Evil Incarnate | [1] | 9.2.0 | VERIFIED (audit) |
| L4G1-C04 | Shape retirée de la boutique, jouable pour possesseurs | [1] | 19/01/2026 ; renommages 9.4.0 | VERIFIED (audit) |
| L4G1-C05 | Doctor : Shock Therapy 0,65 s | [1] | 9.6.1 (LIVE) | VERIFIED (audit) |
| L4G1-C06 | Hillbilly/Cannibal : casse de palette à la tronçonneuse ~1 s | [1] (wiki Pallets) | LIVE | STRONG_SECONDARY [AUDIT] |
| L4G1-C07 | Shape Stalker 4,2 m/s | [1] (fandom), [2] | ? | UNCERTAIN |
| L4G1-C08 | Hillbilly TR 40 m (seed) vs 32 m | [2] vs [MÉM] | ? | UNCERTAIN |
| L4G1-C09 | Hillbilly sprint ~10,1 m/s (seed) vs ~8,8 m/s | [2] vs [MÉM] | ? | UNCERTAIN |
| L4G1-C10 | Hag TR 24 m (seed) vs 32 m | [2] vs [MÉM] | ? | UNCERTAIN |
| L4G1-C11 | Wraith 6,0 m/s occulté | [2], [MÉM] | ? | UNCERTAIN |
| L4G1-C12 | Nurse : 2 blinks, ~20 m puis ~12 m, fatigue 2 s +0,5/blink +1 s si raté | [2] | ? | UNCERTAIN |
| L4G1-C13 | Trapper : 8 pièges, 2 en main, pose 2,5 s, Haste 7,5 % 5 s | [2] | ? | UNCERTAIN |
| L4G1-C14 | Hag : 10 pièges, téléport ≤ 48 m, faux TR 8 m | [2] | ? | UNCERTAIN |
| L4G1-C15 | Doctor Static Blast recharge 30-45 s | [2] | ? | UNCERTAIN |
| L4G1-C16 | Protections d'unhook : Endurance + 10 % Haste 10 s + Elusive 10 s | [1] | 10.1.0 | VERIFIED (audit) |

## Conflits

#### CONFLICT-L4G1-01 : TR de The Hillbilly
- Source A : seed `ch8_killers.txt` (« RT : 40 m »).
- Source B : connaissance du modèle (antérieure à mi-2026) : 32 m. Aucune source web consultée (quota).
- Hypothèse : erreur du seed (l'audit signale des erreurs dans la fiche Hillbilly sans les détailler) ; 40 m est le TR de certains tueurs à distance, confusion possible.
- Indice (audit P14) : règle d'origine « 32 m pour les tueurs à 4,6 m/s » (wiki.gg Terror Radius, SS, avec exceptions) → penche vers 32 m, sans le prouver.
- Résolution : UNRESOLVED (à vérifier sur wiki.gg).

#### CONFLICT-L4G1-02 : vitesse de sprint tronçonneuse du Hillbilly
- Source A : seed (~10,1 m/s ; ~12 m/s en Overdrive).
- Source B : connaissance du modèle : ~8,8 m/s (valeur possiblement antérieure à l'Overdrive).
- Hypothèse : changement de mécanique (Overdrive) non capté par ma connaissance, ou erreur du seed.
- Résolution : UNRESOLVED.

#### CONFLICT-L4G1-03 : TR de The Hag
- Source A : seed (« RT : 24 m »).
- Source B : connaissance du modèle : 32 m.
- Hypothèse : erreur du seed, ou changement non capté.
- Indice (audit P14) : règle d'origine « 24 m pour les tueurs à 4,4 m/s » (wiki.gg Terror Radius, SS, avec exceptions) → **compatible avec le seed** ; la mémoire du modèle n'est donc pas un argument suffisant pour le déclarer suspect.
- Résolution : UNRESOLVED.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Orientation des 7 fiches | ~75 % « comment le jouer » (tueur) | audit [1] | IMPRÉCIS (angle tueur ; remplacé ici par vue survivant) |
| Nurse vitesse | 3,85 m/s | audit [1] | OK |
| Shape EI / SS / CD / TR | 60 s, 7,5 m/s, ~4 s, 16/32 m | audit [1] (9.2.3) | OK |
| Shape retrait boutique | janv. 2026 | audit [1] (19/01/2026) | OK |
| Shape Stalker 4,2 m/s | 4,2 m/s | audit : UNCERTAIN | NON VÉRIFIABLE |
| Doctor Shock Therapy | 0,65 s (9.6.1) | audit [1] | OK |
| Doctor 0,8 → 0,75 s (9.6.0) | étape intermédiaire | audit : « buff Doctor 9.6.0 » sans valeur | NON VÉRIFIABLE |
| Hillbilly TR | 40 m | mémoire : 32 m | SUSPECT → NON VÉRIFIABLE (CONFLICT-01) |
| Hillbilly sprint | ~10,1 / ~12 m/s | mémoire : ~8,8 m/s | NON VÉRIFIABLE (CONFLICT-02) |
| Hillbilly « blessé = moins exposé à la tronçonneuse » | conseil de counterplay | logique de jeu (tout coup met un blessé à terre) | IMPRÉCIS / trompeur (P14 : formulation ambiguë, pas une erreur prouvée ; synthèse : SUSPECT) |
| Hag TR | 24 m | mémoire : 32 m ; règle d'origine de l'audit (4,4 m/s → 24 m) compatible avec le seed | NON VÉRIFIABLE (CONFLICT-03) |
| Trapper Haste post-pose 7,5 % | présent | non connu de ma mémoire | NON VÉRIFIABLE |
| Wraith invisibilité > 20 m, sursaut 6,9 m/s | présent | — | NON VÉRIFIABLE |
| Wraith add-on Soot (9.5) | présent | non relevé par l'audit | NON VÉRIFIABLE |
| Nurse Heavy Panting nerf 9.6.0 | présent | non relevé par l'audit | NON VÉRIFIABLE |
| Shape exécution sur 2e crochet en EI | présent | — | NON VÉRIFIABLE (impact survivant élevé) |
| Doctor Static Blast 30-45 s, Madness III bloque les actions | présent | — | NON VÉRIFIABLE |
| Build/kill rates NightLight par tueur | chiffres sans n | audit : « ~70 kill rates NightLight par tueur sans n » | IMPRÉCIS (audit) |

## Questions ouvertes

1. **Relancer ce lot avec WebSearch** (quota épuisé le 27/09/2026) : les 7 tueurs sont à re-vérifier ; priorité aux valeurs à fort impact survivant : TR Hillbilly et Hag, sprint/Overdrive Hillbilly, exécution Shape en EI, Madness III et Static Blast (Doctor), Haste post-pose et libération du piège (Trapper).
2. Contenu exact du buff Doctor 9.6.0 (l'audit le cite sans valeurs).
3. Changements 9.x-10.x non relevés par l'audit sur Trapper, Wraith, Nurse, Hag (le seed mentionne 9.5 / 9.6.0 / 10.1 sans source).
4. Effets LIVE exacts des add-ons cités (Tar Bottle, Iridescent/Honing Stone, Bone Clapper, Windstorm, Swift Hunt, Serpent – Soot, Apex Muffler, LoPro Chains, Matchbox, Campbell's, Judith's/Tombstone, Scratched Mirror, Fragrant Tuft, Mint Rag, Rusty Shackles, Interview Tape, High Stimulus Electrode, Carter's Notes).
5. Guides de counterplay survivant écrits par des experts (à étiqueter EXPERT_OPINION) : non consultés.
6. Mécanique lampe/pétard vs désoccultation du Wraith au LIVE.
7. Fréquence réelle de la Shape en partie depuis le retrait boutique (19/01/2026).

## Sources

[1] Audit phase 0 du projet — `/home/user/dbd_guide/kb/seed/audit_phase0.txt` (tableau des patchs 9.2.0 → 10.1.2a, « Référence vérifiée ») — consulté le 27/09/2026 (fichier local, pas via WebSearch).
[2] Guide seed, chapitre 8 — `/home/user/dbd_guide/kb/seed/ch8_killers.txt` l. 1-546 — consulté le 27/09/2026 (fichier local ; brouillon non fiable).
[3] Brief des agents — `/home/user/dbd_guide/kb/research/AGENT_BRIEF.md` — consulté le 27/09/2026.
[4] Registre des contenus obsolètes — `/home/user/dbd_guide/kb/ledgers/OUTDATED_CONTENT_REPORT.md` (D-092) — consulté le 27/09/2026.
- Aucune source web : quota WebSearch épuisé (0 recherche aboutie). [MÉM] = connaissance du modèle (antérieure à mi-2026), non citée comme source.
