# Lot 4 — Fiches tueurs vue SURVIVANT, groupe 1 (tueurs 1 à 7)

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
- FACT [AUDIT] : protections d'unhook LIVE 10.1.0 = Endurance + 10 % Haste 10 s + Elusive 10 s (pas une fois les gens alimentés) [1]. Pertinent contre les tueurs à pièges (Trapper, Hag) qui piègent le crochet.
- FACT [AUDIT] : Diminishing Returns (9.6.0) sur Powers/Items/Perks/Offerings, **pas sur les add-ons** [1].
- HEURISTIC : les 7 tueurs de ce lot se classent vue survivant en 3 familles : (a) chase M1 + setup (Trapper, Hag, Doctor, Shape) → le temps de setup est la ressource du survivant ; (b) mobilité/coup unique (Hillbilly, Nurse) → LOS et imprévisibilité priment sur les palettes ; (c) furtif/rotation (Wraith, Shape Stalker) → l'info (son, cloche, TR absent) prime.

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
  - Mécanique : regarder le sol avant chaque vault/sortie ; crouch-walk pour lire l'herbe ; ne pas sprinter aveuglément dans la végétation.
  - Positionnel : changer de tile tôt quand il a posé ; choisir les chaînes de tiles propres.
  - Macro : désarmer/déplacer les pièges du 3-gen et des crochets **pendant qu'il chase ailleurs** ; compter ses pièges (il n'en porte que 2 de base [SEED-NRV]).
  - Équipe : sauver en vérifiant le sol sous/autour du crochet ; ne pas s'agglutiner sur un gen piégé.
- **Habitudes punissables et erreurs classiques** (HEURISTIC) : courir en herbe haute par réflexe ; vaulter la même fenêtre deux fois ; décrocher sans regarder ses pieds ; ignorer les pièges « déjà vus » (ils ont pu être réarmés).
- **Adaptations avancées / échecs du counterplay** (SITUATIONAL) : avec pièges assombris + carte à herbe haute (maïs de Coldwind, Red Forest), la lecture du sol ne suffit plus → privilégier les zones dégagées et les trajets déjà parcourus. Contre un Trapper qui garde le crochet piégé en fin de partie, la sortie par la trappe ou l'autre porte vaut souvent mieux que le sauvetage.
- **Add-ons qui changent la décision** (tous [SEED-NRV]/[MÉM], UNCERTAIN) :
  - Tar Bottle (pièges assombris) → le survivant doit éviter l'herbe/les zones sombres au lieu de compter sur la lecture visuelle.
  - Iridescent Stone (réarmement aléatoire périodique selon le seed) → ne jamais considérer un piège désarmé comme sûr ; saboter/déplacer au lieu de juste désarmer.
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
  - Pas d'attaque occulté ; cloche audible à l'échelle de la carte à la désoccultation ; sursaut de vitesse post-désoccultation (~6,9 m/s 1 s selon le seed) [SEED-NRV] — UNCERTAIN.
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
  - Info : écouter la cloche et sa direction ; la cloche = il va attaquer dans la seconde qui suit, pas plus tard (sauf add-on).
  - Lampe/pétard : aveugler pendant la désoccultation l'interromprait selon le seed [SEED-NRV], UNCERTAIN → SITUATIONAL.
  - Macro : quitter un gen dès la cloche proche ; ne pas rester en duo sur un même gen (il punit les découverts).
- **Habitudes punissables et erreurs classiques** (HEURISTIC) : réparer tête baissée sans perk d'info ; pré-lâcher par peur de la cloche ; courir en ligne droite en open (sursaut post-désoccultation).
- **Adaptations avancées / échecs** (SITUATIONAL) : cloche silencieuse/non localisable → Spine Chill ou perk d'alerte devient la principale source d'info ; si Windstorm, ne pas chercher à « reset » la chase en fuyant loin : il te rattrape occulté.
- **Add-ons qui changent la décision** (UNCERTAIN, noms/effets [SEED-NRV]) :
  - Bone Clapper / variante cloche → se fier au visuel (scintillement) et aux perks au lieu du son.
  - Windstorm (Blood/White/Mud) → ne pas quitter une tile pour une autre éloignée ; tenir la boucle en cours.
  - Swift Hunt → pas de marge pour lâcher la palette après la cloche : décider plus tôt.
  - The Serpent – Soot (effet 9.5 selon le seed) → il se révèle en cassant/tapant : moins de surprise sur gen, info gratuite.
- **Implications de carte** (HEURISTIC) : fort sur grandes cartes (traversée occultée) et cartes sombres ; faible sur petites cartes denses en palettes.
- **Perks fréquentes** : Bamboozle, Pain Resonance, Sloppy Butcher, Pop, NOED (seed/NightLight) [SEED-NRV]. HEURISTIC : Bamboozle → une fenêtre bloquée après son vault, prévoir la sortie palette.
- **Écart avec le seed** : NON VÉRIFIABLE (quota). À vérifier : distance d'invisibilité (20 m), sursaut post-désoccultation, add-on Soot 9.5, interaction lampe.
- **Sources** : [1] [2]

