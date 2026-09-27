# Lot 4 — Fiches tueurs vue SURVIVANT, groupe 1 (tueurs 1 à 7)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) — voir kb/audit/pass14_lot4_g1-g3.md**

**Couverture web : 0 élément vérifié par recherche / 7 non re-vérifiés (quota WebSearch épuisé)** — les 7 tueurs sont traités ; seules les valeurs reprises de l'audit phase 0 sont vérifiées.

- Périmètre : Trapper, Wraith, Hillbilly, Nurse, Shape, Hag, Doctor.
- Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 non LIVE. Date de travail : 27/09/2026.
- Méthode prévue : WebSearch uniquement (WebFetch bloqué). Méthode réelle : **aucune recherche possible** (quota) → sources internes au repo seulement.
- Étiquettes : FACT / DATA / HEURISTIC / EXPERT OPINION / SITUATIONAL ; valeurs chiffrées : LIVE / PTB / OBSOLETE / HISTORICAL / UNCERTAIN.
- Seed comparé : `kb/seed/ch8_killers.txt` l. 257-546 ; audit : `kb/seed/audit_phase0.txt`.

> **AVERTISSEMENT DE VÉRIFICATION (bloquant)** — Au lancement de ce lot, le quota WebSearch de la session était **épuisé** (« 200 of 200 WebSearch calls », réponse de l'outil le 27/09/2026 ; les 2 premières requêtes Trapper n'ont renvoyé aucun résultat). **Aucune recherche web n'a donc été faite pour ce lot.**
> - Les seules valeurs confirmées viennent de `audit_phase0.txt` (déjà vérifié en phase 0) : elles sont marquées **[AUDIT]** avec la confiance de l'audit.
> - Valeurs reprises du seed sans vérification : **[SEED-NRV]** = « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) », confiance **UNCERTAIN**.
> - Valeurs ajoutées de ma propre connaissance : **[MÉM]** = « connaissance du modèle (antérieure à mi-2026), UNCERTAIN ». Ne pas les promouvoir en LIVE sans recherche.
> - Les parties analytiques (identification, chase, counterplay, erreurs, adaptations) sont des **HEURISTIC** (raisonnement mécanique, non sourcé). Aucun guide expert n'a pu être lu : l'étiquette EXPERT_OPINION n'est **pas** utilisée pour ne pas simuler une source.
> - Les champs « Version » sont limités à ce que l'audit a établi pour 9.0.0 → 10.1.2a.
> - Ce fichier est un **squelette survivant à re-vérifier** (lot à relancer quand WebSearch est disponible) ; voir « Questions ouvertes ».

## Règles transversales (vue survivant, les 7 tueurs)

- FACT [AUDIT] : classes de vitesse 4,6 m/s (115 %) ou 4,4 m/s (110 %) ; Nurse 3,85 m/s (STRONG_SECONDARY) ; classe 4,2 m/s (Evil Within I / Stalker de la Shape) UNCERTAIN [1].
- FACT [AUDIT] : l'identité du tueur est révélée ; son **loadout reste caché** jusqu'à la fin (D-092, notes 9.6.0) [1][4]. → Les sections « Identification » ci-dessous servent à déduire le pouvoir, les add-ons et la stratégie, pas les perks.
- FACT [AUDIT] : protections d'unhook LIVE 10.1.0 = Endurance + 10 % Haste 10 s + Elusive 10 s (pas une fois les gens alimentés) [1]. Pertinent contre les tueurs à pièges (Trapper, Hag) qui piègent le crochet. Ajout audit P14 : l'Endurance est **annulée par une action voyante** (conspicuous action) et ne protège pas un survivant déjà sous Deep Wound ; l'Elusive supprime griffures, grognements et flaques de sang et prend fin si le survivant est frappé (FACT [AUDIT], STRONG_SECONDARY) [1].
- FACT [AUDIT] : Diminishing Returns (9.6.0) sur Powers/Items/Perks/Offerings, **pas sur les add-ons** [1].
- FACT [AUDIT] (STRONG_SECONDARY) : règle d'origine du TR = **32 m pour les tueurs à 4,6 m/s, 24 m pour ceux à 4,4 m/s**, avec « beaucoup d'exceptions » pour les tueurs récents [1]. C'est un **indice**, pas une preuve par tueur : il soutient la mémoire du modèle pour le Hillbilly (32 m), mais le seed pour la Hag (24 m). Voir CONFLICT-L4G1-01 et 03.
- FACT [AUDIT] (STRONG_SECONDARY, « liste à reconfirmer ») : la liste wiki.gg Pallets des destructions **instantanées** par pouvoir ne cite **aucun** des 7 tueurs de ce lot ; la tronçonneuse du Hillbilly casse en ~1 s [1]. Les casses de palette attribuées par le seed à la Slaughtering Strike (Shape) ou à LoPro Chains (Hillbilly) sont donc **UNCERTAIN** : ne pas construire de counterplay dessus.
- HEURISTIC : les 7 tueurs de ce lot se classent vue survivant en 3 familles : (a) chase M1 + setup (Trapper, Hag, Doctor, Shape) → le temps de setup est la ressource du survivant ; (b) mobilité/coup unique (Hillbilly, Nurse) → LOS et imprévisibilité priment sur les palettes **contre le pouvoir** (en M1, le Hillbilly se boucle comme un 4,6 normal : voir sa fiche) ; (c) furtif/rotation (Wraith, Shape Stalker) → l'info (son, cloche, TR absent) prime.
- **Mode d'emploi des consignes (audit §26 P14)** : chaque « Counterplay » décrit l'**option par défaut** contre un joueur qui utilise normalement son pouvoir (HEURISTIC, pas règle). Un tueur expérimenté anticipe l'option par défaut (fausse cloche du Wraith, charge annulée du Hillbilly, blink retenu de la Nurse, fausse pose du Trapper) : s'il exploite visiblement ta réponse habituelle, **varier** vaut mieux que répéter la consigne.
- **SoloQ / SWF (audit §25 P14)** : les consignes « Équipe » et « Macro » (désarmer le 3-gen pendant qu'il chase ailleurs, sauveteur qui vérifie le sol, chrono des 60 s d'Evil Incarnate) supposent souvent une information partagée. En **SoloQ**, les appliquer sur signaux observables : HUD (qui est en chase, au crochet), cris de piège, sons de pouvoir, auras de perks ; en **SWF**, les annoncer.
- **LIVE / PTB (audit P14)** : perks citées ci-dessous et **modifiées au PTB 10.2.0** (non LIVE ; `deliverables/PERK_DATABASE.md` §1.4) : Spine Chill (rework), Calm Spirit, Borrowed Time (rework) côté survivant ; Agitation, Iron Grasp, Distressing (annoncées par le seed seulement) côté tueur. Leur valeur LIVE 10.1.2a s'applique jusqu'à la sortie de 10.2.0 ; revoir ces conseils à la sortie.
- **Cartes (audit §25 P14)** : les « Implications de carte » nomment des cartes sans tenir compte des changements de palettes 9.2.0 / 9.3.0 / 9.3.2 [1] : HEURISTIC à revoir avec les lots 7-8.
- **DRILL** : pas d'exercice propre à ces fiches ; utiliser DR-15 « Counterplay d'un tueur » (`kb/research/batch11_training.md` §3) avec 3 comportements tirés de la fiche.

## 1. The Trapper (Evan MacMillan) — archétype(s) : zone/piège | M1

- **Version** : aucun rework ni changement de pouvoir relevé par l'audit entre 9.0.0 et 10.1.2a [1]. Seed : « patch 9.5 : hitbox des pièges cohérente, exploits de placement corrigés » [SEED-NRV]. Statut LIVE présumé, UNCERTAIN.
- **Données LIVE** :
  - Vitesse 4,6 m/s ; TR 32 m ; grand [SEED-NRV] (cohérent avec la classe 4,6 [AUDIT]) — UNCERTAIN.
  - 8 pièges sur la carte ; 2 en main au départ, capacité 2 ; pose 2,5 s ; Haste +7,5 % 5 s après la pose [SEED-NRV] — UNCERTAIN. Le Haste post-pose n'est pas dans ma connaissance [MÉM] → à vérifier en priorité.
  - Survivant piégé : blessé s'il était sain ; libération par tentatives (~16,7 %/essai selon le seed) [SEED-NRV] — UNCERTAIN (la loi exacte des tentatives n'est pas confirmée).
  - Désarmement 3,5 s ; le Trapper peut tomber dans ses pièges [SEED-NRV] — UNCERTAIN.
- **Identification** (HEURISTIC) :
  - Avant reveal : pièges armés/désarmés visibles au sol (souvent herbe haute, entrées de tiles, crochets) ; aucun son de pouvoir à distance. Un piège qui « bouge » de place entre deux passages = Trapper en train de ramasser/reposer.
  - Pouvoir en action : animation de pose (accroupi) en chase ; claquement du piège + cri quand quelqu'un est pris.
  - Add-ons observables : pièges quasi invisibles (Tar Bottle probable) ; pièges qui se réarment seuls (Iridescent Stone probable) ; ramassage rapide de plusieurs pièges d'affilée (Trapper Bag / sac). Identification d'add-on = SITUATIONAL.
  - Stratégie probable : 3-gen piégé + garde de crochet (proxy camp) ; peu de pression cross-map.
- **Ce qu'il cherche en chase** (HEURISTIC) : te forcer à repasser par un point piégé (fenêtre, sortie de palette, coin de jungle gym) ; te faire courir en herbe haute/zone sombre ; te pousser vers le 3-gen piégé.
- **Tiles / structures** (HEURISTIC) :
  - Favorables : longues boucles à visibilité au sol (sols clairs), main buildings avec plusieurs sorties, chaînes de tiles non piégées.
  - Défavorables : tiles à entrée unique (shack côté fenêtre), herbe haute/maïs, zones déjà piégées (le temps de setup y est déjà payé).
  - Fenêtres vs palettes : une fenêtre piégée côté sortie est le piège classique ; une palette lâchée reste un obstacle normal.
  - Open areas : M1 pur, il est « un 4,6 sans pouvoir » s'il n'a pas de piège en main.
- **Mindgames propres** (HEURISTIC) : fausse pose (il s'accroupit/feinte pour te faire changer de trajet) ; pose visible pour te « parquer » d'un côté de la boucle ; piège dans le trajet d'un double-back.
- **Counterplay** (HEURISTIC) :
  - Mécanique : regarder le sol avant les vaults et sorties **qu'il a eu le temps de piéger** (il t'a perdu de vue, zone déjà fréquentée, sortie évidente de la tile) ; crouch-walk pour lire l'herbe ; ne pas sprinter aveuglément dans la végétation. Limite (audit §26 P14) : vérifier **chaque** vault en pleine chase coûte des mètres et la caméra ; contre un Trapper qui n'a pas quitté ta vue, il n'a pas pu poser sur ta sortie.
  - Positionnel : changer de tile tôt quand il a posé ; choisir les chaînes de tiles propres.
  - Macro : désarmer/déplacer les pièges du 3-gen et des crochets **pendant qu'il chase ailleurs** ; compter ses pièges en main (2 de base selon le seed [SEED-NRV], UNCERTAIN ; un add-on de sac en ajoute : si tu vois une 3e pose d'affilée, le comptage est faux).
  - Équipe : sauver en vérifiant le sol sous/autour du crochet ; ne pas s'agglutiner sur un gen piégé.
- **Habitudes punissables et erreurs classiques** (HEURISTIC) : courir en herbe haute par réflexe ; vaulter la même fenêtre deux fois ; décrocher sans regarder ses pieds ; ignorer les pièges « déjà vus » (ils ont pu être réarmés).
- **Adaptations avancées / échecs du counterplay** (SITUATIONAL) : avec pièges assombris + carte à herbe haute (maïs de Coldwind, Red Forest), la lecture du sol ne suffit plus → privilégier les zones dégagées et les trajets déjà parcourus. Contre un Trapper qui garde le crochet piégé en fin de partie, la sortie par la trappe ou l'autre porte vaut souvent mieux que le sauvetage (SITUATIONAL : dépend du nombre de survivants restants, des portes ouvertes et de la phase de l'accroché ; s'il reste à moins de 16 m du crochet, l'anti-facecamp 9.3.0 accélère la progression 1×/2×/4× [AUDIT], ce qui peut rendre le sauvetage plus rentable qu'attendre).
- **Add-ons qui changent la décision** (tous [SEED-NRV]/[MÉM], UNCERTAIN) :
  - Tar Bottle (pièges assombris) → le survivant doit éviter l'herbe/les zones sombres au lieu de compter sur la lecture visuelle.
  - Iridescent Stone (réarmement aléatoire périodique selon le seed) → **une fois l'add-on identifié** (piège désarmé retrouvé armé sans passage du tueur), ne plus considérer un piège désarmé comme sûr ; saboter/déplacer au lieu de juste désarmer. Sans ce signe, un piège désarmé reste un piège désarmé.
  - Honing Stone (libération → état mourant selon le seed, effet exact non confirmé) → ne pas se libérer seul si le tueur est proche ; attendre un sauveteur si possible.
  - Trapper Bag / sacs (capacité +1) → il pose plus en chase : quitter la tile encore plus tôt.
- **Implications de carte** (HEURISTIC) : fort sur cartes à herbe haute / intérieures sombres ; faible sur grandes cartes ouvertes à longues boucles (pièges trop dispersés).
- **Perks fréquentes à anticiper** : seed : Agitation, Brutal Strength, Corrupt Intervention, Iron Grasp, NOED [SEED-NRV]. HEURISTIC : Iron Grasp/Agitation → risque de crochet porté vers un piège ou un crochet de basement.
- **Écart avec le seed** : NON VÉRIFIABLE (quota). Seed à 75 % orienté tueur (§ « Comment le jouer »). Vue survivant du seed globalement cohérente (HEURISTIC). À vérifier : Haste post-pose, loi de libération, effets d'Iridescent/Honing Stone.
- **Sources** : [1] [2]

## 2. The Wraith (Philip Ojomo) — archétype(s) : furtif | mobilité | M1

- **Version** : aucun changement de pouvoir 9.0.0 → 10.1.2a relevé par l'audit [1]. Seed : « patch 9.5 : The Serpent – Soot désocculte aussi en cassant palette/mur ou en abîmant un gen » [SEED-NRV], UNCERTAIN.
- **Données LIVE** :
  - Vitesse 4,6 m/s ; 6,0 m/s occulté ; TR 32 m ; grand [SEED-NRV] — UNCERTAIN (6,0 m/s cohérent avec ma connaissance [MÉM]).
  - Occultation ~1,5 s ; Undetectable occulté ; invisible au-delà de 20 m, scintillement en dessous [SEED-NRV] — UNCERTAIN (seuil de distance non confirmé).
  - Pas d'attaque occulté ; cloche audible à l'échelle de la carte à la désoccultation ; sursaut de vitesse post-désoccultation (~6,9 m/s 1 s selon le seed) [SEED-NRV] — UNCERTAIN. Note de calcul (audit P14) : 6,9 m/s est exactement la vitesse de **fente** standard d'un tueur à 4,6 m/s (×1,5 = 6,9 m/s [AUDIT] STRONG_SECONDARY) ; confusion possible du seed entre fente et sursaut (HYPOTHESIS).
  - Surprise Attack = coup dans les 5 s après désoccultation [SEED-NRV] — UNCERTAIN.
- **Identification** (HEURISTIC) :
  - Avant reveal : cloche (sonnerie à la occultation/désoccultation) ; aucun TR alors qu'un tueur arrive « trop vite » ; distorsion visuelle proche ; souffle/grognement du Wraith à courte distance.
  - Pouvoir en action : scintillement qui se déplace à grande vitesse ; désoccultation = ralentissement visible puis accélération.
  - Add-ons observables : cloche inaudible ou non localisable (type Bone Clapper selon le seed) ; vitesse occultée anormalement haute (Windstorm) ; désoccultation très rapide (Swift Hunt). SITUATIONAL.
  - Stratégie probable : pression de gens par rotations rapides, chases courtes ; « gen tapping ».
- **Ce qu'il cherche en chase** (HEURISTIC) : te surprendre sur un gen ; se désocculter hors de ta vue près d'une palette pour gagner la course ; t'amener en zone morte où le sursaut suffit.
- **Tiles / structures** (HEURISTIC) :
  - Favorables : toutes les boucles standards (en chase il est un M1 4,6 sans anti-loop).
  - Défavorables : grands espaces ouverts entre tiles (il rattrape la distance occulté si tu casses le contact) ; tiles courtes où la désoccultation derrière un mur suffit.
  - LOS : casser la LOS aide moins (il est Undetectable/invisible) que garder une vue sur lui.
- **Mindgames propres** (HEURISTIC) : désocculter derrière un mur « au hasard » ; s'occulter en chase pour faire croire à un abandon puis revenir ; feinte de désoccultation au bord de la palette.
- **Counterplay** (HEURISTIC) :
  - Mécanique : garder la caméra sur lui en boucle ; lâcher la palette sur la désoccultation tardive, pas avant.
  - Info : écouter la cloche et sa direction ; une cloche de **désoccultation** proche = il **peut** attaquer très vite (durée de désoccultation ~1,5 s selon le seed, UNCERTAIN), mais il peut aussi désocculter sans attaquer ou attendre derrière un mur (voir Mindgames) : la cloche annonce une menace, pas le moment exact du coup. La cloche sonne aussi quand il **s'occulte** : distinguer les deux (HEURISTIC).
  - Lampe/pétard : aveugler pendant la désoccultation l'interromprait selon le seed [SEED-NRV], UNCERTAIN → SITUATIONAL.
  - Macro : quitter un gen quand la cloche est **proche et se rapproche** (ou quand une perk d'alerte confirme), pas à chaque cloche lointaine : un Wraith qui fait sonner sa cloche pour vider les gens gagne du temps sans chase (HEURISTIC). Éviter le duo sur un même gen **quand il patrouille près** : deux réparateurs = 1,7 charge/s contre 2,0 pour deux solos sur deux gens (coop 85 % [AUDIT], calcul P14), et deux cibles découvertes ; le duo reste acceptable pour finir un gen avancé (SITUATIONAL).
- **Habitudes punissables et erreurs classiques** (HEURISTIC) : réparer tête baissée sans perk d'info ; pré-lâcher par peur de la cloche ; courir en ligne droite en open (sursaut post-désoccultation).
- **Adaptations avancées / échecs** (SITUATIONAL) : cloche silencieuse/non localisable → Spine Chill ou perk d'alerte devient la principale source d'info (réserves : l'effet de Spine Chill contre un tueur **Undetectable** comme le Wraith occulté n'est pas vérifié ; Spine Chill est reworkée au **PTB 10.2.0**, non LIVE) ; si Windstorm, ne pas chercher à « reset » la chase en fuyant loin : il te rattrape occulté.
- **Add-ons qui changent la décision** (UNCERTAIN, noms/effets [SEED-NRV]) :
  - Bone Clapper / variante cloche → se fier au visuel (scintillement) et aux perks au lieu du son.
  - Windstorm (Blood/White/Mud) → ne pas quitter une tile pour une autre éloignée ; tenir la boucle en cours.
  - Swift Hunt → pas de marge pour lâcher la palette après la cloche : décider plus tôt.
  - The Serpent – Soot (effet 9.5 selon le seed) → il se révèle en cassant/tapant : moins de surprise sur gen, info gratuite.
- **Implications de carte** (HEURISTIC) : fort sur grandes cartes (traversée occultée) et cartes sombres ; faible sur petites cartes denses en palettes.
- **Perks fréquentes** : Bamboozle, Pain Resonance, Sloppy Butcher, Pop, NOED (seed/NightLight) [SEED-NRV]. HEURISTIC : Bamboozle → une fenêtre bloquée après son vault, prévoir la sortie palette.
- **Écart avec le seed** : NON VÉRIFIABLE (quota). À vérifier : distance d'invisibilité (20 m), sursaut post-désoccultation, add-on Soot 9.5, interaction lampe.
- **Sources** : [1] [2]

## 3. The Hillbilly (Max Thompson Jr.) — archétype(s) : mobilité | coup unique (instadown)

- **Version** : pas de changement relevé par l'audit 9.0.0 → 10.1.2a [1]. L'audit signale que la fiche Hillbilly du seed **contient des erreurs** (« Erreurs relevées (Hillbilly, …) ») sans les détailler dans `audit_phase0.txt` [1] → toute valeur du seed est suspecte.
- **Données LIVE** :
  - Vitesse 4,6 m/s [SEED-NRV], cohérent classe 4,6 [AUDIT].
  - **TR** : seed 40 m [SEED-NRV] vs **32 m** [MÉM] → CONFLICT-L4G1-01, UNCERTAIN.
  - **Sprint tronçonneuse** : seed ~10,1 m/s (~12 m/s en Overdrive) [SEED-NRV] vs ~8,8 m/s [MÉM, ancienne valeur possible] → CONFLICT-L4G1-02, UNCERTAIN.
  - Charge 2,5 s ; jauge Overdrive (bonus 20 s ; retombe après 8 s d'inactivité) ; récupération ~2,5-2,7 s [SEED-NRV] — UNCERTAIN (mécanique Overdrive non confirmée en session).
  - FACT de principe [MÉM], UNCERTAIN (non couvert par l'audit ; requalifié P14) : un coup de tronçonneuse met à terre depuis l'état sain.
  - Casse de palette à la tronçonneuse ~1 s (wiki Pallets via audit) [AUDIT], STRONG_SECONDARY.
- **Identification** (HEURISTIC) :
  - Avant reveal : vrombissement de la tronçonneuse (charge) audible bien au-delà du TR, puis sprint très rapide ; tueur qui arrive en quelques secondes depuis l'autre côté de la carte.
  - Add-ons observables : charge silencieuse hors TR (Apex Muffler selon le seed) ; charge très courte ; sprint qui traverse palettes/murs cassables (LoPro Chains selon le seed, UNCERTAIN).
  - Stratégie probable : forte pression de carte, punition des soins et réparations à découvert ; tunnel facile (instadown).
- **Ce qu'il cherche en chase** (HEURISTIC) : te surprendre en open ou sur un gen isolé ; un curve autour d'un petit obstacle ; te faire lâcher une palette trop tôt puis gagner du temps via la casse rapide.
- **Tiles / structures** (HEURISTIC) :
  - Favorables : tiles à hauts murs et obstacles serrés (jungle gyms, shack, main buildings, intérieurs), passages étroits où le sprint heurte un obstacle.
  - Défavorables : open areas, tiles basses ou fines (curves faciles), longues lignes droites.
  - Fenêtres vs palettes : en M1 il boucle comme un 4,6 normal ; la tronçonneuse sert surtout à combler la distance entre tiles.
  - Verticalité : les étages/rampes coupent ses trajectoires ; bon refuge.
- **Mindgames propres** (HEURISTIC) : charger puis annuler pour provoquer un pré-drop ; charger en angle pour couvrir deux sorties ; faux abandon de chase suivi d'un sprint.
- **Counterplay** (HEURISTIC) :
  - Mécanique : au son de la charge, se mettre derrière un obstacle solide ; esquiver par un virage perpendiculaire tardif (il tourne mal en fin de sprint selon le seed, mais les curves de début de sprint existent).
  - Positionnel : rester près des tiles « hautes », éviter les traversées en open.
  - Macro : ne pas se soigner/réparer en open ; se disperser (il punit les groupes).
  - Équipe : les sauvetages doivent être rapides (instadown → tunnel rapide).
- **Habitudes punissables et erreurs classiques** (HEURISTIC) : pré-lâcher **au premier son de charge, de loin** (il annule, puis casse la palette en ~1 s [AUDIT] ou la contourne) ; nuance P14 : quand il est **engagé** dans un sprint vers toi à travers la tile, une palette qui tombe sur sa trajectoire l'arrête (le sprint s'arrête à la collision, seed) — c'est l'engagement, pas le son, qui décide le drop ; courir en ligne droite en open ; croire qu'**être blessé protège** de la tronçonneuse (trompeur : blessé, n'importe quel coup te met à terre ; la tronçonneuse n'apporte rien de plus contre toi, mais son M1 suffit).
- **Adaptations avancées / échecs** (SITUATIONAL) : contre un Billy à charge silencieuse, l'alerte sonore disparaît → Spine Chill (PTB 10.2.0 : rework, non LIVE) / garder la caméra ouverte ; sur carte ouverte sans structures hautes, jouer la distance et la dispersion plutôt que la chase.
- **Add-ons qui changent la décision** (UNCERTAIN, [SEED-NRV]) :
  - Apex Muffler → pas de préavis sonore hors TR : tenir des positions plus proches des obstacles.
  - Tuned Carburettor / charge plus rapide → moins de temps pour atteindre l'obstacle : réagir au premier son.
  - LoPro Chains (traverse palettes/murs cassables selon le seed ; absent de la liste audit des casses par pouvoir, UNCERTAIN) → **si l'effet est observé**, une palette ne bloque plus le sprint : privilégier les murs solides.
- **Implications de carte** (HEURISTIC) : très fort sur cartes ouvertes (Coldwind, Red Forest) ; plus faible en intérieur (Lery's, Hawkins, Gideon) grâce aux murs.
- **Perks fréquentes** : Pain Resonance, Pop, Barbecue & Chili, Lethal Pursuer, Bamboozle ; trio Enduring/Lightborn/Tinkerer [SEED-NRV]. HEURISTIC : Tinkerer → il arrive silencieux sur un gen à 70 %.
- **Écart avec le seed** : IMPRÉCIS/SUSPECT (TR 40 m, vitesse de sprint, Overdrive) ; IMPRÉCIS / trompeur (requalifié P14, était « FAUX ») : « un survivant blessé est moins exposé à la tronçonneuse » (vrai au sens où la tronçonneuse n'apporte rien de plus contre un blessé ; faux s'il est lu comme une protection ; la synthèse le classe SUSPECT).
- **Sources** : [1] [2]

## 4. The Nurse (Sally Smithson) — archétype(s) : mobilité (téléportation) | anti-loop total

- **Version** : seed : « 9.6.0 : Heavy Panting nerfé ; 10.1 : correction de blinks hors carte » [SEED-NRV], UNCERTAIN (non relevé par l'audit).
- **Données LIVE** :
  - Vitesse **3,85 m/s** [AUDIT] (STRONG_SECONDARY) ; TR 32 m ; taille moyenne [SEED-NRV], UNCERTAIN.
  - 2 charges de blink ; 1er blink ~20 m max (charge ~2 s) ; 2e blink enchaîné ~12 m dans une fenêtre de 1,5 s [SEED-NRV] — UNCERTAIN.
  - Fatigue après blink : 2 s + 0,5 s par blink enchaîné + 1 s si attaque ratée [SEED-NRV] — UNCERTAIN.
  - FACT de principe [MÉM], UNCERTAIN (non couvert par l'audit ; requalifié P14) : le blink traverse murs, palettes et obstacles ; elle ne vaulte pas les fenêtres.
  - Calcul (P14, d'après l'audit) : hors blink elle marche à 3,85 m/s contre 4,0 m/s pour toi → tu gagnes 0,15 m/s, soit **1,5 m par 10 s** : courir tout droit ne crée presque pas de distance, seule la gestion de ses blinks et de sa fatigue compte.
- **Identification** (HEURISTIC) : son de charge/souffle, silhouette qui disparaît et réapparaît ; tueur très lent entre les blinks ; add-ons : blinks supplémentaires (3+ enchaînés), portée anormale, charge ultra-rapide. Stratégie : chases courtes, info via perks (aura), pression par vitesse de down.
- **Ce qu'il cherche en chase** (HEURISTIC) : une LOS continue sur toi ; un trajet prévisible ; un double-back mal timé ; le moment où tu t'arrêtes derrière un obstacle.
- **Tiles / structures** (HEURISTIC) :
  - Favorables : structures hautes et opaques, étages (main à plusieurs niveaux), zones à LOS cassée en permanence ; grands obstacles qui rendent la distance difficile à estimer.
  - Défavorables : open areas, petites tiles basses (elle voit tout), palettes (inutiles).
  - Fenêtres vs palettes : quasi sans valeur **comme obstacles** (elle blinke à travers) ; la tile reste utile comme source de LOS et de repositionnement.
  - Verticalité : forte (un blink au mauvais étage = fatigue gratuite).
- **Mindgames propres** (HEURISTIC) : blink court puis long ; attendre ta réaction avant le 2e blink ; faux blink (charge annulée).
- **Counterplay** (HEURISTIC) :
  - Mécanique : casser la LOS au moment de la charge ; changer de direction pendant son 1er blink (elle doit corriger au 2e) ; profiter de la fatigue pour repositionner, pas pour fuir en ligne droite.
  - Positionnel : garder, autant que possible, un obstacle haut entre elle et toi ; utiliser les étages.
  - Macro : réparer vite, rester dispersés ; contrer les perks d'aura avec Distortion. Correction P14 : **Calm Spirit n'est pas une perk anti-aura** (LIVE : corbeaux calmes, pas de cri ; `PERK_DATABASE.md`, SS ; modifiée au PTB 10.2.0) ; elle n'aide que contre ce qui fait crier.
  - Équipe : le temps de chase moyen est court → gens rapides plutôt que sauvetages risqués.
- **Habitudes punissables et erreurs classiques** (HEURISTIC) : courir en ligne droite ; lâcher des palettes ; double-back prévisible (toujours au même moment) ; rester visible derrière un obstacle bas.
- **Adaptations avancées / échecs** (SITUATIONAL) : contre une Nurse experte, le double-back devient lisible → alterner continuer/revenir ; avec add-ons de blinks multiples, compter ses blinks avant de se repositionner.
- **Add-ons qui changent la décision** (UNCERTAIN, [SEED-NRV]) :
  - Matchbox (charge plus rapide) → moins de temps pour lire la charge : casser la LOS plus tôt.
  - Campbell's Last Breath (enchaînement automatique selon le seed) / add-ons +blink → ne pas se repositionner après le 2e blink, attendre la fatigue.
  - Ataxic Respiration (portée) → la distance « sûre » augmente : se cacher plutôt que fuir.
- **Implications de carte** (HEURISTIC) : faible sur cartes à multi-niveaux complexes (intérieurs), forte sur cartes ouvertes plates.
- **Perks fréquentes** : Nowhere to Hide, Lethal Pursuer, Pain Resonance, Eruption / Barbecue [SEED-NRV]. FACT [AUDIT] : Nowhere to Hide LIVE 10.1.0 = auras à 24 m autour du gen abîmé (3/4/5 s) ; A Nurse's Calling 28/30/32 m (10.1.0) [1].
- **Écart avec le seed** : Vitesse OK [AUDIT] ; « Dead Hard peut valider l'esquive » : NON VÉRIFIABLE ; reste NON VÉRIFIABLE (quota).
- **Sources** : [1] [2]

## 5. The Shape (Michael Myers) — archétype(s) : furtif | coup unique (Slaughtering Strike) | M1

- **Version** : FACT [AUDIT] rework 9.2.0 (23 sept. 2025) : modes Stalker / Pursuer / Evil Incarnate + Slaughtering Strike ; ajustements 9.2.3 (21 oct. 2025) [1]. Licence Halloween : Shape retirée de la boutique le 19 janv. 2026, **reste jouable pour les possesseurs** ; perks renommés en perks généraux en 9.4.0 [1]. → Il reste rencontrable en LIVE (fréquence en baisse probable, HEURISTIC).
- **Données LIVE** :
  - FACT [AUDIT] (9.2.3, LIVE) : Evil Incarnate 60 s ; Slaughtering Strike 7,5 m/s ; recharge 4 s ; TR Pursuer 16 m / Evil Incarnate 32 m [1].
  - Stalker : 4,2 m/s, Undetectable, sans TR [SEED-NRV] ; la classe 4,2 m/s est UNCERTAIN dans l'audit (fandom) [1].
  - Pursuer / Evil Incarnate 4,6 m/s ; stalk 32 m, vitesse de stalk indépendante de la distance, jauge qui redescend après 20 s d'inactivité ; lunge Pursuer +20 % ; charge Slaughtering Strike jusqu'à 1,5 s, met à terre un survivant sain et casse palettes/murs [SEED-NRV] — UNCERTAIN. **Réserve P14** : la Shape n'est **pas** dans la liste wiki.gg Pallets des destructions par pouvoir relevée par l'audit (SS, « à reconfirmer ») ; la casse de palette par la Slaughtering Strike est donc douteuse.
  - Exécution à la main en Evil Incarnate d'un survivant sur son 2e crochet (sauf Endurance) [SEED-NRV] — UNCERTAIN (mécanique à confirmer en priorité, impact survivant majeur).
  - Pas d'Exposed basekit (sauf Fragrant Tuft of Hair) [SEED-NRV] — UNCERTAIN.
- **Identification** (HEURISTIC) :
  - Avant reveal : tueur visible sans TR ni lullaby (Stalker) ; silhouette immobile derrière un coin ; puis TR court (16 m) = Pursuer ; TR 32 m soudain + comportement agressif = Evil Incarnate (60 s).
  - Pouvoir en action : animation de stalk (il te fixe) ; charge de la Slaughtering Strike en ligne droite.
  - Add-ons observables : kill à la main sur survivant sain (Tombstone ?), Evil Incarnate qui revient après chaque crochet (Judith's Tombstone selon le seed), Exposed généralisé (Fragrant Tuft of Hair). SITUATIONAL.
  - Stratégie probable : snowball pendant les 60 s d'Evil Incarnate ; chasse de l'Obsession.
- **Ce qu'il cherche en chase** (HEURISTIC) : stalk gratuit quand tu ne le regardes pas ; en Evil Incarnate, un survivant sans obstacle solide proche ou une palette pré-lâchée qu'il casse en chargeant.
- **Tiles / structures** (HEURISTIC) :
  - Favorables : en Stalker, tout ce qui casse la LOS ; en Evil Incarnate, murs solides et fenêtres (une palette serait cassée par la charge selon le seed seulement, voir réserve ci-dessus : en attendant, traiter la palette comme **incertaine**, ni sûre ni perdue).
  - Défavorables : open areas pendant Evil Incarnate ; tiles « palette seule ».
  - Pursuer : boucles normales mais marge réduite par le lunge plus long.
- **Mindgames propres** (HEURISTIC) : stalk caché puis passage brusque en Evil Incarnate ; feinte de charge ; stalk pendant que tu soignes/décroches.
- **Counterplay** (HEURISTIC) :
  - Mécanique : casser la LOS dès que tu le vois stalker ; en Evil Incarnate, jouer les fenêtres et esquiver la charge latéralement au dernier moment.
  - Positionnel/temps : **gagner du temps** pendant Evil Incarnate (60 s : FACT [AUDIT] sur la durée) = objectif de chase prioritaire. Réserves P14 (HYPOTHESIS) : on ne sait pas si EI se termine **seulement** au chrono (une mise à terre ou un crochet peut changer la donne) ; « céder du terrain » ne doit pas te pousser dans une zone morte, où tu tombes avant la fin des 60 s.
  - Macro : ne pas grouper pendant Evil Incarnate ; en Stalker il est lent (4,2 m/s, UNCERTAIN) : c'est une bonne fenêtre pour les gens, **mais** il est Undetectable et peut passer en Pursuer près de toi → réparer en surveillant les angles (caméra), pas « sans pression ».
  - Équipe : garder l'Endurance (Borrowed Time — rework au PTB 10.2.0, non LIVE ; Off the Record 30/35/40 s depuis 9.2.2 [AUDIT]) pour le survivant sur 2e crochet si l'exécution à la main est confirmée (SITUATIONAL). Rappel [AUDIT] : l'Endurance saute sur une action voyante et ne protège pas sous Deep Wound.
- **Habitudes punissables et erreurs classiques** (HEURISTIC) : laisser un tueur sans TR te fixer ; pré-lâcher pendant Evil Incarnate (si la charge casse la palette : non confirmé, voir réserve) ; se soigner en open ; oublier le chrono des 60 s.
- **Adaptations avancées / échecs** (SITUATIONAL) : avec add-ons d'exécution (Tombstone), le survivant sur le point de mourir doit éviter toute chase et rester caché ; si Evil Incarnate est réactivé souvent (Judith's), la stratégie « tenir 60 s » ne suffit plus → dispersion et gens rapides.
- **Add-ons qui changent la décision** (UNCERTAIN, [SEED-NRV]) :
  - Judith's Tombstone (Evil Incarnate réinitialisé à chaque crochet selon le seed) → éviter les sauvetages rapides devant lui ; jouer la dispersion.
  - Tombstone Piece (Undetectable 20 s à l'activation selon le seed) → le TR 32 m n'annonce plus Evil Incarnate : surveiller le visuel.
  - Scratched Mirror (auras pendant le stalk) → se cacher derrière un mur ne suffit plus : bouger.
  - Fragrant Tuft of Hair (Exposed, sans Slaughtering Strike selon le seed) → tout coup met à terre : plus de soin inutile, éviter tout contact.
- **Implications de carte** (HEURISTIC) : fort sur cartes à nombreux coins/intérieurs (stalk facile) ; Lampkin Lane (Haddonfield) retirée de la rotation en 9.4.0 [AUDIT].
- **Perks fréquentes** : Bamboozle, Pain Resonance, Corrupt Intervention, Pop ; Keep Them Waiting / See How They Run [SEED-NRV]. FACT [AUDIT] : Keep Them Waiting 5 %/token (10.1.0) [1].
- **Écart avec le seed** : OK sur les valeurs 9.2.3 (EI 60 s, SS 7,5 m/s, CD 4 s, TR 16/32 m) [AUDIT] ; « retiré de la vente en janv. 2026 » OK [AUDIT] ; Stalker 4,2 m/s, exécution 2e crochet, Exposed : NON VÉRIFIABLE.
- **Sources** : [1] [2]

## 6. The Hag (Lisa Sherwood) — archétype(s) : zone/piège | téléportation | info

- **Version** : aucun changement relevé par l'audit 9.0.0 → 10.1.2a [1]. Statut LIVE présumé, UNCERTAIN.
- **Données LIVE** :
  - Vitesse 4,4 m/s [SEED-NRV], cohérent classe 4,4 [AUDIT] ; taille moyenne/petite [SEED-NRV].
  - **TR** : seed 24 m [SEED-NRV] vs **32 m** [MÉM] → CONFLICT-L4G1-03, UNCERTAIN. Indice P14 : la règle d'origine de l'audit (24 m pour les tueurs à 4,4 m/s) est **compatible avec le 24 m du seed**.
  - Jusqu'à 10 Phantasm Traps (pose ~1,9 s), le 11e remplace le plus ancien ; déclenchement à ~2,7 m sauf accroupi ; fantôme + faux TR 8 m ; téléportation sur piège déclenché à ≤ 48 m ; effacement accroupi 4 s ou lampe torche [SEED-NRV] — UNCERTAIN.
- **Identification** (HEURISTIC) : marques de boue au sol autour des gens/crochets ; fantôme de boue qui apparaît et tourne ta caméra ; faux TR bref ; tueur qui apparaît instantanément sur un piège. Add-ons : pièges sans fantôme/sans indication (Rusty Shackles selon le seed) ; téléportation vers n'importe quel piège (Mint Rag). Stratégie : 3-gen « toilé », crochet piégé, totems Hex (Ruin/Devour/Third Seal) + Undying.
- **Ce qu'il cherche en chase** (HEURISTIC) : te faire déclencher un piège posé sur la sortie d'une boucle puis te couper ; t'enfermer dans une zone piégée.
- **Tiles / structures** (HEURISTIC) :
  - Favorables : longues boucles vierges ; tiles à plusieurs sorties ; zones éloignées de son réseau.
  - Défavorables : tiles déjà « dessinées » ; passages obligés (fenêtres piégées).
  - Hors pièges, c'est un M1 4,4 : les boucles standards la battent (HEURISTIC).
- **Mindgames propres** (HEURISTIC) : piège posé en évidence pour t'orienter vers un piège caché ; téléportation différée (attendre que tu reviennes).
- **Counterplay** (HEURISTIC) :
  - Mécanique : crouch en traversant les marques [SEED-NRV] ; déclenchement → repartir immédiatement **en s'éloignant du piège** (elle arrive sur lui), vers une zone sans marques : fuir « à l'opposé » peut mener dans un autre piège ou une zone morte.
  - Positionnel : tirer la chase hors de son réseau.
  - Macro : effacer/flasher les pièges près des gens et du crochet ; totems : le build Hex est fréquent **selon le seed** (loadout caché jusqu'à la fin, FACT [AUDIT]) ; un totem coûte 14 s de purification (5 totems par partie, [AUDIT] SS) sans compter la recherche. Purifier les totems croisés en chemin, et chercher activement **quand un effet Hex est observé** (icône Cursed, effet de perk), pas par principe dès le début (l'audit relève « purifiez un Hex dès qu'il s'allume » comme règle absolue dangereuse du seed).
  - Équipe : sauveteur en crouch + vérification des marques autour du crochet.
- **Habitudes punissables et erreurs classiques** (HEURISTIC) : sprinter sur les marques ; rester à côté d'un piège déclenché ; ignorer les totems ; sauvetage direct sur crochet piégé.
- **Adaptations avancées / échecs** (SITUATIONAL) : Mint Rag → tout piège déclenché devient une téléportation possible partout : effacer plutôt que contourner ; Rusty Shackles → aucune alerte, rester accroupi dans son réseau.
- **Add-ons qui changent la décision** (UNCERTAIN, [SEED-NRV]) :
  - Mint Rag → nettoyer activement son réseau, ne plus seulement l'éviter.
  - Rusty Shackles → crouch systématique dans les zones à marques.
  - Add-ons de rayon de déclenchement (Disfigured Ear / Dead Hand selon le seed) → garder plus de distance latérale avec les marques.
- **Implications de carte** (HEURISTIC) : forte sur petites cartes/intérieures (réseau dense) ; faible sur grandes cartes ouvertes.
- **Perks fréquentes** : trio Hex Ruin/Devour Hope/Third Seal + Undying ; ou Pain Resonance, Grim Embrace, Pop, Sloppy Butcher [SEED-NRV]. FACT [AUDIT] : Hex: Ruin 100/125/150 % (9.2.0) [1]. HEURISTIC : les totems deviennent une priorité quand un effet Hex est observé, pas du seul fait de voir des marques de Hag.
- **Écart avec le seed** : TR 24 m NON VÉRIFIABLE (CONFLICT-L4G1-03 ; P14 : « SUSPECT » retiré, la règle d'origine de l'audit est compatible avec 24 m) ; reste NON VÉRIFIABLE.
- **Sources** : [1] [2]

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
