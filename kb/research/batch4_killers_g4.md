# Lot 4 — Fiches tueurs 23 à 30 vues du SURVIVANT (ch8_killers.txt l. 1094-1418)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) — voir kb/audit/pass14_lot4_g4-g6.md**
>
> Rappels de l'audit : toutes les consignes sont des **HEURISTIC** (option par défaut, à varier contre un tueur qui l'anticipe) ; le **pré-drop n'est pas universel** (voir `KILLER_COUNTERPLAY_HANDBOOK.md` §2.2) ; les lignes « Équipe » qui supposent une répartition des rôles demandent le vocal (SWF) — en SoloQ, les appliquer seulement sur signaux observables ; aucune fiche n'a encore de rubrique DRILL ni d'interactions perks survivant ↔ pouvoir vérifiées.

**Couverture web : 0 élément vérifié par recherche / 8 tueurs (toutes valeurs) non re-vérifiés (quota WebSearch de session épuisé 200/200 avant la 1re requête de cet agent).**

- Référence : LIVE 10.1.2a (17/09/2026) ; PTB 10.2.0 (15-21/09/2026) **non LIVE**, toujours étiqueté PTB. Date de travail : 27/09/2026.
- Périmètre : Trickster, Nemesis, Cenobite, Artist, Onryō, Dredge, Mastermind, Knight.
- Sources réellement utilisées : seed `kb/seed/ch8_killers.txt` [1] et audit `kb/seed/audit_phase0.txt` [2] (historique des patchs 9.0.0 → 10.1.2a, corrections déjà prouvées). **Aucune source web consultée par cet agent.**
- Conventions de valeur :
  - « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) » → **UNCERTAIN**.
  - « audit [2] » → repris de l'audit phase 0 (vérifié par un lot antérieur sur notes de patch / wiki), non re-vérifié ici → **STRONG_SECONDARY (via audit)**.
  - « connaissance du modèle (antérieure à mi-2026) » → **UNCERTAIN** ; à re-vérifier avant intégration.
- Conseils : **HEURISTIC** = analyse de l'agent, non sourcée ; **EXPERT OPINION** n'est utilisé nulle part car aucun guide expert n'a pu être lu ; **SITUATIONAL** = dépend du contexte indiqué ; **FACT** seulement quand la mécanique est confirmée par [2].
- Abréviations : TR = terror radius ; LOS = ligne de vue ; gen = générateur.

---

## 23. The Trickster (Ji-Woon Hak) — archétype(s) : ranged | anti-loop (usure)

- **Version** : rework 9.5.0 « All-Kill: Comeback » (LIVE 17/03/2026) + buffs 9.5.2 (31/03/2026 : décroissance de Laceration 16 s, add-ons) — audit [2], STRONG_SECONDARY. Aucun changement ultérieur relevé dans [2] jusqu'à 10.1.2a. Statut LIVE.
- **Données LIVE** :
  - Vitesse 4,4 m/s (110 %, was 4,6) — audit [2], STRONG_SECONDARY.
  - TR 24 m, **44 m au rang S** (was 32 m) — audit [2], STRONG_SECONDARY.
  - 36 lames (was 44) ; Main Event disponible seulement au rang maximal — audit [2], STRONG_SECONDARY.
  - 3,86 m/s en lançant ; ~3 lames/s ; Laceration 6 charges = 1 état de santé ; l'attaque de base retire 3 charges — seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN.
  - Décroissance : 16 s sans touche (audit [2], STRONG_SECONDARY) puis 1 charge / 4,4 s (seed, NON RE-VÉRIFIÉ, UNCERTAIN).
  - Rang S : notification globale, révélation des survivants à 44 m pendant 4,4 s, Laceration figée, durée max 66 s ; Main Event 10 s, cadence ×1,67, interdit à moins de 20 m d'un survivant accroché — seed, NON RE-VÉRIFIÉ, UNCERTAIN.
  - Taille : moyenne — seed, UNCERTAIN.
- **Identification** :
  - Avant le reveal : TR court (24 m) pour un tueur non furtif, vitesse 110 % (il rattrape moins vite qu'un 115 % sur un couloir) — HEURISTIC fondé sur valeurs audit.
  - Pouvoir en action : pluie de lames lumineuses, barre de Laceration sur le HUD du survivant, bruit de recharge au casier (seed, UNCERTAIN).
  - Rang S : notification pour tous + TR qui passe à 44 m (seed ; TR 44 m confirmé par [2]) → **signal clair** qu'une fenêtre dangereuse de ≤ 66 s commence (HEURISTIC).
  - Stratégie probable : usure multi-survivants pour monter en rang, puis Main Event sur un groupe (unhook, gen à plusieurs) — HEURISTIC.
- **Ce qu'il cherche en chase** : longues lignes droites et zones ouvertes (tirs ≥ 16 m bonus), survivants qui tiennent un vault de fenêtre face à lui (tir dans l'interstice), actions variées pour ses Style Points — seed (barème), UNCERTAIN ; lecture HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles à murs hauts et pleins, boucles courtes où la LOS se coupe souvent, structures intérieures (main building) — HEURISTIC.
  - Défavorables : tiles bas « see-through » (rochers bas, palettes de champs), longues fenêtres de jungle gym vues de loin, couloirs droits — HEURISTIC.
  - Fenêtres vs palettes : une fenêtre vaultée dans sa LOS l'expose à un tir en « interstice » (3 points au barème seed) → quand il est déjà chargé en lames, préférer une palette posée un peu plus tôt, ou mieux, **casser la LOS sans vaulter** — HEURISTIC / SITUATIONAL. Limite : une palette basse ne bloque probablement pas les lames (projectiles, comme les hachettes, [CM] UNCERTAIN) ; le gain du drop anticipé est d'éviter l'animation de vault dans sa LOS, pas de le bloquer. Coût : la palette est consommée ; un Trickster qui attend le drop sans tirer la récupère gratuitement → varier (drop normal quand il n'a pas de LOS).
  - Verticalité : un dénivelé coupe la LOS mieux qu'un mur bas — HEURISTIC.
- **Mindgames propres** : il pré-lance avant l'angle (seed) → changer de direction au coin plutôt que de courir la trajectoire attendue ; le forcer à recharger au casier crée des fenêtres de reset — HEURISTIC.
- **Counterplay** :
  - Mécanique : couper la LOS très souvent ; strafes latéraux larges plutôt que petits zigzags (les lames sont des projectiles, pas du hitscan — seed) — HEURISTIC. Calcul : en lançant il irait à 3,86 m/s [SEED] contre 4,0 m/s pour toi [AUDIT] : tu ne gagnes que 0,14 m/s (≈ 1 m toutes les 7 s) pendant ses volées → **une volée ne crée pas d'écart**, seule la LOS coupée en crée.
  - Positionnel : rester près de tiles à murs hauts ; ne pas traverser une zone ouverte quand il a des lames — HEURISTIC.
  - Macro : attention, les 16 s [AUDIT] sont le **délai avant que la Laceration commence à baisser**, pas la durée de sa disparition. Ensuite −1 charge / 4,4 s [SEED] : depuis 3 charges ≈ 16 + 3 × 4,4 ≈ 29 s sans touche ; depuis 5 charges ≈ 38 s (ordre de grandeur, UNCERTAIN). Attendre ce délai avant de reprendre un risque n'est rentable que si tu n'es pas en chase ; se soigner n'est pas forcément prioritaire si la Laceration est haute — SITUATIONAL.
  - Équipe : au rang S, s'écarter les uns des autres et éviter l'unhook « groupé » (Main Event bloqué à < 20 m d'un accroché selon seed, UNCERTAIN) ; « jouer la montre » jusqu'à la fin du rang S (≤ 66 s, seed) veut dire **ne pas lui offrir de groupe ni de ligne ouverte**, pas arrêter les gens : 66 s d'arrêt de 3 réparateurs ≈ 198 s-survivant ≈ 2,2 gens solo perdus — HEURISTIC. En SoloQ, la notification globale est le seul signal commun : s'écarter de soi-même sans attendre d'annonce.
- **Habitudes punissables et erreurs classiques** (HEURISTIC) :
  - Courir en ligne droite dans un champ ouvert « pour atteindre la tile suivante » avec une Laceration à 3+.
  - Vaulter une fenêtre face à lui à distance moyenne.
  - Se regrouper sur un gen quand la notification de rang S tombe.
  - Ignorer la barre de Laceration (on croit être « sain » alors qu'1-2 lames suffisent).
- **Adaptations avancées / échecs du counterplay** (HEURISTIC) :
  - Contre un Trickster qui arrive au rang S en endgame, le « jouer la montre » échoue : à portes alimentées, éviter les longues lignes vers la sortie. (Peut-il **retarder** volontairement le rang S ? Mécanique non vérifiée, en tension avec la durée max de 66 s [SEED] : HYPOTHESIS.)
  - Sur une map intérieure (LOS courte), la valeur du tueur baisse fortement — ne pas sur-jouer la prudence au prix des gens.
- **Add-ons qui changent la décision** (tous : seed, NON RE-VÉRIFIÉ, UNCERTAIN ; les effets post-rework ont pu changer en 9.5.0/9.5.2) :
  - Iridescent Photocard (Main Event plus long, auras, blocage des gens selon seed) → au rang S, quitter le gen et casser la LOS plutôt que de « finir le gen ».
  - Death Throes Compilation (recharge après Main Event) → ne pas considérer la fin du Main Event comme une fenêtre de sécurité.
  - Trick Blades (ricochet) → les murs obliques ne protègent plus totalement ; privilégier les murs perpendiculaires à sa LOS.
- **Implications de carte** : maps ouvertes (champs, Coldwind-like, Red Forest ouverte) = avantage tueur ; maps intérieures ou très encombrées = avantage survivant — HEURISTIC. Map Trickster's Delusion (Sleepless District, 9.5.0 — audit [2]) : aucune donnée lue.
- **Perks fréquentes / synergies** : Grim Embrace, Pain Resonance, Pop Goes the Weasel, Lethal Pursuer, No Way Out (seed, UNCERTAIN) ; Hex: Crowd Control (perk perso, reworkée en 9.5.0 : bloque les 4/5/6 dernières fenêtres vaultées — audit [2]) → après des vaults de fenêtre répétés, s'attendre à des fenêtres bloquées sur les boucles déjà jouées ; c'est un Hex : le purifier supprime l'effet (HEURISTIC).
- **Écart avec le seed** : OK pour vitesse / TR / 36 lames / 16 s (cohérent avec [2]) ; IMPRÉCIS pour No Way Out (« 12 s par token, ~60 s » vs audit « 12 s + 6/9/12 s par jeton ») ; reste NON VÉRIFIABLE (barème Style Points, 66 s, ×1,67, add-ons).
- **Sources** : [1], [2].

---

## 24. The Nemesis (T-Type) — archétype(s) : anti-loop | zone (zombies)

- **Version** : aucun changement de pouvoir 1v4 relevé dans [2] entre 9.0.0 et 10.1.2a ; 2v8 : Nemesis ajouté en 9.4.x avec 4 zombies (audit [2]) — ne pas mélanger avec le 1v4. Statut LIVE ; dernier changement 1v4 : non vérifié.
- **Données LIVE** (toutes : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN) :
  - 4,6 m/s (115 %), TR 32 m, grand.
  - Tentacle Strike : charge 0,35 s, portée 5 m (6,5 m en MR3), cooldown 2,25 s ; survivant non contaminé touché → Contaminated sans perte de santé (+ Hindered 20 % 2 s selon seed) ; déjà contaminé → perd un état de santé.
  - Mutation : MR2 à 5 points (casse palettes et murs cassables au tentacule), MR3 à 15 points.
  - 2 zombies (1v4), ~1 m/s ; vaccins dans des caisses (4 selon seed), usage = Killer Instinct 3 s.
- **Identification** :
  - Avant le reveal : TR 32 m, silhouette grande, zombies errants sur la map = identification quasi immédiate — HEURISTIC.
  - Pouvoir : bruit de charge du tentacule ; icône Contaminated ; murs/palettes détruits à distance → il est au moins MR2 (seed, UNCERTAIN).
  - Stratégie probable : contaminer tout le monde tôt pour monter en mutation, puis anti-loop — HEURISTIC.
- **Ce qu'il cherche en chase** : survivants contaminés à 5-6,5 m derrière une palette basse ou une fenêtre ; drops de palette tardifs ; boucles courtes — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles longues où l'on garde plus que la portée du tentacule (6,5 m en MR3 selon le seed, [SEED] UNCERTAIN : ordre de grandeur, pas une marge exacte) ; murs hauts qui coupent la trajectoire du tentacule — HEURISTIC.
  - Défavorables : petites tiles « pallet + mur bas » (couvertes par la portée en MR3), jungle gyms courts — HEURISTIC.
  - Fenêtres vs palettes : en MR1 (connaissance du modèle, UNCERTAIN : le tentacule ne casse pas les palettes), une palette posée reste une vraie ressource ; dès MR2 il la casse à distance → pré-drop + départ vers la tile suivante plutôt que « jouer autour » — SITUATIONAL. C'est un pré-drop « parce que le pouvoir punit l'attente », pas parce que casser lui coûte (KCH §2.2 b) : la palette est perdue de toute façon. Contre un Nemesis qui ralentit avant la palette pour obtenir le pré-drop gratuit, ou pendant le cooldown du tentacule (2,25 s selon seed), alterner avec un drop normal ou un départ sans drop.
- **Mindgames propres** : faux-charge du tentacule pour provoquer un drop ou un vault ; il peut cancel la charge — HEURISTIC.
- **Counterplay** :
  - Mécanique : strafe latéral au moment du son de charge (le tentacule est une ligne droite — seed) ; ne pas rester **dans son axe, à 4-6 m devant lui** (portée 5 / 6,5 m [SEED]) — HEURISTIC. Un Nemesis qui feinte la charge exploite un strafe systématique : strafer au son, pas à l'animation seule.
  - Positionnel : quand vous êtes contaminé, chaque touche coûte un état de santé → jouer les tiles longues, pas les « safe » courtes — HEURISTIC.
  - Macro : prendre un vaccin quand il est loin/occupé (Killer Instinct au moment de l'usage, seed) ; les vaccins sont limités, ne pas les gaspiller en début de partie si on reste loin de lui — SITUATIONAL.
  - Équipe : éviter de laisser les zombies bloquer un gen ; les écarter avec un stun de palette seulement si ça ne coûte pas une palette clé (seed : zombies stunnables) — HEURISTIC.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) :
  - Rester « à distance de tentacule » en croyant être safe à 4-5 m.
  - Drop de palette tardif contre un Nemesis MR2+ (il casse sans stun et touche dans la foulée).
  - Réparer sans surveiller le zombie (coup gratuit, bruit de raté).
- **Adaptations avancées / échecs** (HEURISTIC) : contre MR3, la « boucle sur petite tile » échoue presque toujours → enchaîner les tiles (tile-to-tile) et utiliser la hauteur/LOS ; un zombie peut couper l'unique sortie d'une tile, vérifier sa position avant d'engager.
- **Add-ons qui changent la décision** (seed, NON RE-VÉRIFIÉ, UNCERTAIN) :
  - Marvin's Blood / T-Virus Sample (mutation plus rapide) → considérer MR2 comme acquis très tôt, pré-drop plus tôt.
  - Shattered S.T.A.R.S. Badge (zombies accélérés après chaque gen) → ne plus ignorer les zombies en fin de partie.
  - Iridescent Umbrella Badge (Exposed après vaccin, selon seed) → ne prendre le vaccin qu'hors de portée du tueur et hors chase.
- **Implications de carte** : maps avec beaucoup de petites tiles (Autohaven, Coldwind) favorisent le tentacule ; maps à gros bâtiments / murs hauts favorisent le survivant ; RPD (map RE) : couloirs et portes → zombies plus gênants — HEURISTIC.
- **Perks fréquentes / synergies** : Lethal Pursuer (son perk), Pain Resonance, Eruption, Grim Embrace, Pop (seed, UNCERTAIN). Hysteria (Oblivious aux blessés) → avec un Nemesis qui blesse souvent, surveiller le TR réel plutôt que l'audio (HEURISTIC).
- **Écart avec le seed** : **CONTESTÉ (non tranché)** — Eruption « −10 % » : le registre de patchs de l'audit [2] cite 10 → 5 % en 9.2.0, mais le lot 3 (batch3_perks_kill_p91) et la page wiki.gg 9.2.X indiquent que ce changement PTB aurait été annulé en LIVE (conflit UNRESOLVED, voir CONFLICT_REGISTER) ; reste NON VÉRIFIABLE (valeurs du pouvoir, points de mutation, add-ons).
- **Sources** : [1], [2].

---

## 25. The Cenobite (Pinhead) — archétype(s) : ranged (chaîne pilotée) | zone (Lament Configuration)

- **Version** : licence Hellraiser quittée en 2025 ; au patch 9.0.0 (17/06/2025) ses perks sont devenues générales et ont été renommées : Deadlock → **No Holds Barred**, Hex: Plaything → **Hex: Fortune's Fool**, Scourge Hook: Gift of Pain → **Scourge Hook: Weeping Wounds** ; les possesseurs du Cenobite gardent le nom « Deadlock » — audit [2], STRONG_SECONDARY. Aucune modification de pouvoir relevée dans [2]. Statut LIVE (jouable par les possesseurs).
- **Données LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN) :
  - 4,6 m/s (115 %), TR 32 m, grand.
  - Gateway à 16 m max, chaîne pilotée ; survivant touché = enchaîné (Incapacitated, pas de course, ralenti), chaîne retirable en 1 s ; chaîne tendue cassée par le décor ; 5 s sans ouvrir de porte après retrait.
  - Lament Configuration : 90 s → Chain Hunt ; porteur Oblivious ; résolution 6 s + Killer Instinct ; téléportation du Cenobite possible vers la résolution ; si le Cenobite ramasse la boîte, 3 chaînes à tous.
- **Identification** :
  - Avant le reveal : TR 32 m, grand ; la **boîte** (Lament Configuration) qui apparaît sur la map est un indice sans ambiguïté — HEURISTIC.
  - Pouvoir : tunnel lumineux/portail, bruit de chaîne ; Chain Hunt = chaînes qui arrivent sur tous (seed).
  - Stratégie probable : 3-gen facilité par No Holds Barred/Deadlock (sa perk) ; pression par la boîte — HEURISTIC.
- **Ce qu'il cherche en chase** : survivants à découvert entre deux tiles (la chaîne a besoin d'une trajectoire libre), vault imminent (chaîne = vault bloqué selon seed) — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tout décor dense ; la chaîne se casse au contact d'obstacles (seed ; mécanique largement connue, UNCERTAIN) → coller les murs — HEURISTIC.
  - Défavorables : zones ouvertes, longues lignes droites vers la tile suivante — HEURISTIC.
  - Fenêtres vs palettes : se faire enchaîner juste avant un vault = coup gratuit → vaulter tôt ou changer de tile avant qu'il ait la trajectoire — HEURISTIC.
- **Mindgames propres** : faux portail / timing de lancer ; courbe de chaîne autour d'un tile (add-ons de portée) — HEURISTIC.
- **Counterplay** :
  - Mécanique : casser la LOS vers le portail ; arracher les chaînes immédiatement quand il ne peut pas punir — seed, HEURISTIC.
  - Positionnel : se déplacer d'une tile à l'autre en longeant le décor — HEURISTIC.
  - Macro/équipe : **un seul** survivant gère la boîte, loin du tueur, et la résout avant le Chain Hunt ; ne pas la résoudre si le tueur est proche (téléportation, seed) — HEURISTIC. SWF : le rôle se désigne au vocal. SoloQ : pas de désignation possible → si tu vois un coéquipier aller vers la boîte (ou la porter), ne pas y aller aussi ; si personne ne la prend et qu'elle est près de toi, la prendre toi-même plutôt que d'attendre le Chain Hunt. Coût : le porteur ne répare pas pendant ce temps.
  - Endgame : prévoir le blocage de 5 s des portes après retrait des chaînes (seed, UNCERTAIN) — SITUATIONAL.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : traverser un champ ouvert à 10-16 m de lui ; ignorer la boîte jusqu'au Chain Hunt ; deux survivants qui se battent pour la boîte ; résoudre la boîte à côté d'un gen où le tueur patrouille.
- **Adaptations avancées / échecs** (HEURISTIC) : avec des add-ons de portée, « coller le décor » ne suffit plus si le tueur courbe la chaîne → préférer les tiles à murs hauts qui bloquent la trajectoire de départ plutôt que les objets bas.
- **Add-ons qui changent la décision** (seed, NON RE-VÉRIFIÉ, UNCERTAIN) :
  - Frank's Heart / Larry's Blood (portée) → engager la chase plus tôt vers une tile dense ; ne plus considérer 16 m comme sûr.
  - Torture Pillar (Chain Hunt plus tôt) → attribuer la boîte dès son apparition.
  - Chatterer's Tooth (aura de la boîte, Undetectable quand ramassée, selon seed) → le porteur doit s'attendre à une approche sans TR.
- **Implications de carte** : maps intérieures / encombrées (Midwich, Hawkins, RPD, Lery's) = chaîne très gênée → avantage survivant ; maps ouvertes = avantage tueur — HEURISTIC.
- **Perks fréquentes / synergies** : No Holds Barred (ex-Deadlock), Pain Resonance, Grim Embrace, Lethal Pursuer (seed, UNCERTAIN). Hex: Fortune's Fool, Scourge Hook: Weeping Wounds = ex-perks du Cenobite, désormais générales (audit [2]) → à anticiper chez n'importe quel tueur.
- **Écart avec le seed** : **IMPRÉCIS/OBSOLETE** — perks enseignables listées sous leurs anciens noms (Hex: Plaything, Scourge Hook: Gift of Pain ; Deadlock n'est le nom que pour les possesseurs) → renommées en 9.0.0 (audit [2]) ; « retiré de la vente en mars 2025 » : date NON VÉRIFIABLE ([2] ne cite que « 2025 » et le patch 9.0.0) ; difficulté « très élevée » dans la fiche vs « élevée » dans le tableau d'ensemble = incohérence interne.
- **Sources** : [1], [2].

---

## 26. The Artist (Carmina Mora) — archétype(s) : ranged (à travers les murs) | info

- **Version** : aucun changement relevé dans [2] entre 9.0.0 et 10.1.2a. Dernier rework : non vérifié. Statut LIVE.
- **Données LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN) :
  - 4,6 m/s (115 %), TR 32 m, taille moyenne.
  - 3 Dire Crows (1 s de charge), un corbeau posé reste ≤ 10 s puis part en ligne droite **à travers les murs** ; touche = Swarmed (Killer Instinct 3 s puis aura tant que l'essaim reste) ; 2e touche sur un Swarmed = état de santé perdu ; retirer l'essaim : 8 s ou casier ; recharge ~5 s / corbeau, 12 s si les 3 sont lancés.
- **Identification** :
  - Avant le reveal : corbeaux sombres posés près des gens/totems (indice visuel), cri de corbeau lancé (seed : ~12 m) — HEURISTIC.
  - Pouvoir : statut Swarmed sur un coéquipier/soi ; aura/Killer Instinct après touche.
  - Stratégie probable : pression globale (corbeaux sur des gens lointains) puis blessures à distance à travers le décor — HEURISTIC.
- **Ce qu'il cherche en chase** : survivants déjà Swarmed (2e corbeau = blessure à travers un mur), sorties de tile prévisibles, vaults de fenêtre en fin de boucle — HEURISTIC.
- **Tiles / structures** :
  - Mécanique de principe, **pas un FACT** (seed + connaissance du modèle, UNCERTAIN ; non couverte par l'audit, et contredite par une autre phrase du seed, CONFLICT-L4G4-02) : les corbeaux traversent les murs → **les murs ne protègent pas comme contre un ranged classique**.
  - Favorables : tiles où l'on peut changer de direction souvent (le corbeau va en ligne droite) ; bâtiments avec plusieurs sorties — HEURISTIC.
  - Défavorables : longues lignes droites, couloirs, tiles à une seule sortie — HEURISTIC.
- **Mindgames propres** : corbeau « posé » sur une sortie de tile = piège de trajectoire ; elle peut attendre votre choix de direction avant de lancer — HEURISTIC.
- **Counterplay** :
  - Mécanique : strafe latéral net au dernier moment ; ne pas courir dans l'axe d'un corbeau posé — HEURISTIC.
  - Si Swarmed : retirer l'essaim dès que le tueur n'est pas en chase proche, ou casier (seed) ; éviter de réparer avec l'essaim quand elle a un corbeau disponible (un 2e corbeau = blessure, même à travers le décor) — HEURISTIC. Arbitrage : le retrait coûte ~8 s [SEED] (≈ 9 % de gen solo) ; si elle est en chase loin et sans corbeau prêt, finir un gen presque terminé peut valoir plus que ces 8 s — SITUATIONAL.
  - Macro : répartir les gens pour qu'un corbeau n'en couvre pas deux ; ne pas se regrouper en ligne — HEURISTIC.
  - Équipe : un coéquipier Swarmed est une cible facile → ne pas s'en approcher en chase (Severed Hands, seed) — SITUATIONAL.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : se croire à l'abri derrière un mur ; réparer en étant Swarmed ; courir tout droit vers la tile suivante quand elle a un corbeau prêt.
- **Adaptations avancées / échecs** (HEURISTIC) : le counterplay « LOS » habituel contre les ranged échoue ; la seule protection est le changement de direction et l'absence de statut Swarmed → prioriser le retrait de l'essaim plus haut que contre un tueur classique.
- **Add-ons qui changent la décision** (seed, NON RE-VÉRIFIÉ, UNCERTAIN) :
  - Severed Hands (essaim propagé à 3 m) → ne pas faire de gen ou de soin à deux quand un joueur est Swarmed.
  - Iridescent Feather (Undetectable pendant le cooldown, 1 corbeau de moins) → après une volée, s'attendre à une approche silencieuse.
  - Add-ons de vitesse de corbeau → strafer plus tôt, ne plus attendre le « dernier moment ».
- **Implications de carte** : maps ouvertes et longues (champs) = avantage tueur ; maps très coudées avec beaucoup de changements de direction = mieux pour le survivant ; les murs intérieurs ne comptent pas — HEURISTIC.
- **Perks fréquentes / synergies** : Pain Resonance, Grim Embrace (ses perks), Pop, Dead Man's Switch, Eruption (seed, UNCERTAIN) ; Hex: Pentimento (sa perk) → totems purifiés peuvent être rallumés ; les totems ravivés par Pentimento ne peuvent pas être bénis (audit [2], STRONG_SECONDARY).
- **Écart avec le seed** : conseil « coupez la ligne de corbeau (…) pas le décor vertical très épais » : **NON VÉRIFIABLE** et contradictoire avec « traverse les murs » dans la même fiche ; valeurs NON VÉRIFIABLE ; « S'accroupir évite le Killer Instinct » : NON VÉRIFIABLE et douteux (Killer Instinct ne dépend normalement pas de la posture — connaissance du modèle, UNCERTAIN).
- **Sources** : [1], [2].

---

## 27. The Onryō (Sadako Yamamura) — archétype(s) : furtif | mobilité (TV) | condamnation (mori)

- **Version** : aucun changement de pouvoir relevé dans [2] entre 9.0.0 et 10.1.2a. Dernier rework : non vérifié. Statut LIVE.
- **Données LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN) :
  - 4,6 m/s (115 %), TR 24 m (voir Questions ouvertes), petite.
  - Démanifestée : Undetectable, invisible au-delà de 24 m ; ne peut ni attaquer ni être stun par palette.
  - Projection sur TV : +1 Condemned aux survivants à 16 m de la TV d'arrivée ; 6,9 m/s pendant 2 s après projection.
  - Condemned : 7 stacks = mori ; stacks verrouillés par les crochets (3 au 1er, 6 au 2e selon seed).
  - Cassettes : TV éteinte 70 s après retrait ; déposer une cassette retire 3 stacks ; porter une cassette fait monter le Condemned.
- **Identification** :
  - Avant le reveal : **pas de TR** en approche démanifestée ; scintillement de silhouette ; TV qui grésillent / s'allument ; statut Condemned qui monte près d'une TV — HEURISTIC.
  - Stratégie probable : mori sans crochet en fin de partie ; pression passive par projections près des gens — HEURISTIC.
- **Ce qu'il cherche en chase** : jumpscare sur un survivant qui ne regarde pas derrière lui ; vaults « sans palette » (immunité au stun démanifestée) ; survivants à 5-6 stacks — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles standard avec palettes quand elle est **manifestée** (elle redevient stun-able, seed) — SITUATIONAL.
  - Défavorables : zones sombres ou encombrées où l'on ne voit pas son approche ; zones à 16 m d'une TV allumée — HEURISTIC.
- **Mindgames propres** : manifestation juste avant le coup ; démanifester pour traverser une palette sans risque de stun — seed, HEURISTIC.
- **Counterplay** :
  - Mécanique : regarder derrière soi régulièrement (checkspots) pendant les gens ; surveiller la barre de Condemned — HEURISTIC. Quand : surtout si une TV à moins de ~16 m [SEED] est allumée, si ton Condemned vient de monter (projection proche) ou si un coéquipier vient de la perdre de vue ; où : vers les accès du gen et la TV, pas au hasard. Coût : chaque check fait rater des skill checks si mal synchronisé (raté = −10 % + 3 s, [AUDIT]) → checker entre deux skill checks. Pas de fréquence chiffrée sourcée.
  - Positionnel : ne pas réparer à 16 m d'une TV allumée quand elle se projette (seed) — HEURISTIC.
  - Macro : gérer les cassettes : un survivant la dépose vite dans une TV **éloignée** ; retirer les cassettes des TV proches des gens à 3 pour éteindre ses points de projection — HEURISTIC.
  - Équipe : partager le travail des cassettes pour qu'aucun survivant n'approche 7 stacks ; à 5-6 stacks, jouer très prudemment — HEURISTIC.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : garder une cassette trop longtemps ; réparer dos à la zone d'arrivée ; oublier le Condemned en endgame (mori direct).
- **Adaptations avancées / échecs** (HEURISTIC) : l'habitude « pas de TR = pas de tueur » échoue totalement ; contre Iridescent Videotape (seed) les TV restent allumées → le counterplay « éteindre les TV » ne sert plus, mais le Condemned de projection disparaît.
- **Add-ons qui changent la décision** (seed, NON RE-VÉRIFIÉ, UNCERTAIN) :
  - Tape Editing Deck (tous commencent avec une cassette) → déposer immédiatement, loin.
  - Ring Drawing (accrocher un porteur de cassette donne +1 Condemned aux autres) → ne pas porter de cassette en chase.
  - Iridescent Videotape (TV pas coupées, pas de Condemned de projection) → priorité aux gens, gestion des cassettes secondaire.
- **Implications de carte** : maps sombres et encombrées (Swamp, Yamaoka, Red Forest) = furtivité renforcée ; maps claires/ouvertes = approche visible — HEURISTIC.
- **Perks fréquentes / synergies** : Call of Brine (sa perk ; LIVE 10.1.0 = 30/40/50 % pendant 90 s — audit [2], STRONG_SECONDARY), Merciless Storm, Scourge Hook: Floods of Rage, Pain Resonance, Pop (seed, UNCERTAIN).
- **Écart avec le seed** : Call of Brine 30/40/50 % 90 s : **OK** (cohérent avec [2]) ; valeurs du pouvoir et TR 24 m : NON VÉRIFIABLE.
- **Sources** : [1], [2].

---

## 28. The Dredge — archétype(s) : mobilité (casiers) | zone (Nightfall) | info

- **Version** : **buffé en 9.6.0** (28/04/2026) — audit [2], STRONG_SECONDARY ; détail du buff non lu (seed : « 4 m/s pendant la charge de téléportation », NON RE-VÉRIFIÉ). Statut LIVE.
- **Données LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN) :
  - 4,6 m/s (115 %), TR 32 m, grand.
  - Gloaming : téléportation vers un casier (tokens, seed : 3), Remnant laissé au départ (retour possible).
  - Nightfall : jauge passive (plus rapide avec survivants blessés ou en casier), durée 60 s selon seed (voir Questions ouvertes) ; vision survivant réduite, Dredge Undetectable, téléportations plus rapides.
  - Verrous : un survivant peut verrouiller un casier ; le Dredge qui arrive doit casser le verrou (2,25 s), verrou non réutilisable.
- **Identification** : grand tueur, TR 32 m, casiers qui « claquent » quand il se téléporte ; jauge Nightfall visible côté survivant (seed) ; Remnant (silhouette) laissé sur la map — HEURISTIC.
- **Ce qu'il cherche en chase** : survivants qui font des boucles près de casiers ; zones où son Remnant permet de revenir couper une rotation ; chase pendant Nightfall (vision survivant réduite) — HEURISTIC.
- **Tiles / structures** : défavorables = zones de casiers et bâtiments bourrés de casiers (téléportation au cœur de la tile) ; favorables = tiles extérieures sans casiers proches — HEURISTIC.
- **Mindgames propres** : faux retour au Remnant ; téléportation vers un casier derrière vous en fin de tile — HEURISTIC.
- **Counterplay** :
  - Mécanique : repérer le Remnant et ne pas se placer entre lui et le Dredge (seed) — HEURISTIC.
  - Positionnel : verrouiller les casiers proches des gens actifs et des crochets (seed) ; éviter de finir une chase près d'un casier non verrouillé — HEURISTIC.
  - Macro : éviter de se cacher en casier (remplit la jauge selon le seed, et un casier est un point d'arrivée de sa téléportation) ; limiter les survivants blessés en même temps (jauge) — HEURISTIC. Nuance : un casier verrouillé retarde seulement son arrivée (verrou à casser en 2,25 s selon le seed) ; l'effet d'un survivant caché dans un casier verrouillé sur la jauge reste UNCERTAIN.
  - Équipe : pendant Nightfall, rester près de tiles solides et se signaler les positions (SWF) ; éviter les sauvetages risqués au milieu de Nightfall — SITUATIONAL. Limite (calcul) : Nightfall dure 60 s selon le seed (UNCERTAIN) et une phase de crochet 70 s [AUDIT] → attendre la fin de Nightfall n'est possible que si l'accroché vient d'entrer dans sa phase ; sinon le report coûte un état de crochet, et il faut sauver quand même en prenant la route la plus couverte.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : se cacher en casier ; ignorer la jauge ; réparer à côté d'un casier non verrouillé ; rester blessés à plusieurs.
- **Adaptations avancées / échecs** (HEURISTIC) : sur les maps intérieures pleines de casiers, le verrouillage ne suffit pas (trop de casiers) → jouer les tiles extérieures ; si Nightfall est lancé en endgame, les portes restent le repère fixe : s'en rapprocher avant.
- **Add-ons qui changent la décision** (seed, NON RE-VÉRIFIÉ, UNCERTAIN) :
  - Field Recorder (début en Nightfall, Nightfall auto au dernier gen) → préparer le dernier gen avec tout le monde sain et près des portes.
  - Lavalier Microphone (révélation au dernier token) → après ses téléportations, s'attendre à être révélé.
  - Iridescent Wooden Plank (Exposed en fin de Nightfall) → les 12 dernières secondes de Nightfall sont les plus dangereuses : éviter la chase à ce moment.
- **Implications de carte** : Lery's, Hawkins, RPD, main buildings chargés = beaucoup de casiers → avantage tueur ; maps extérieures ouvertes avec peu de casiers = moins de mobilité — HEURISTIC.
- **Perks fréquentes / synergies** : Darkness Revealed (sa perk, casiers), Dissolution, Septic Touch, Pain Resonance, Grim Embrace, No Holds Barred/Deadlock (seed, UNCERTAIN). Dissolution : une modification au **PTB 10.2.0** (attaque de base seulement) est **annoncée par le seed seulement** (« oui? » dans `PERK_DATABASE.md`, non vérifiée, l'audit ne la liste pas) — **PTB, pas LIVE** ; en LIVE, considérer la palette fast-vaultée après blessure comme cassable (seed, UNCERTAIN).
- **Écart avec le seed** : buff 9.6.0 : existence **OK** ([2]) ; contenu du buff (4 m/s en charge) NON VÉRIFIABLE ; Dissolution : le seed l'étiquette bien PTB, mais l'existence même de ce changement PTB est **NON VÉRIFIABLE**.
- **Sources** : [1], [2].

---

## 29. The Mastermind (Albert Wesker) — archétype(s) : mobilité | anti-loop | infection (usure)

- **Version** : **buffé en 9.6.0** (28/04/2026) — audit [2], STRONG_SECONDARY ; détail non lu (seed : 2e bond dans une fenêtre de 2,5 s, recovery 2,7 s, Loose Crank buffé, NON RE-VÉRIFIÉ). Refactor 9.5.0 (désynchronisation) : seed, NON RE-VÉRIFIÉ. Statut LIVE.
- **Données LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN) :
  - 4,6 m/s (115 %), TR 40 m selon seed (voir Questions ouvertes), taille moyenne.
  - Virulent Bound : 2 tokens, charge 1,5 s, bond ~7 m puis 2e bond ~14 m ; saisie = dégâts, projection contre un mur = infection accrue ; passe fenêtres et palettes.
  - Uroboros : jauge 0-100 (0,8/s passif, +20 par contact) ; à 100 Hindered 4 % selon seed ; sprays (6 caisses, 2 usages, Killer Instinct 4 s).
  - Casse de palette instantanée par Virulent Bound : listée par l'audit [2] (wiki Pallets, STRONG_SECONDARY, « liste à reconfirmer par le lot tueurs »).
- **Identification** : bruit de charge de bond ; caisses de sprays sur la map ; icône d'infection Uroboros sur le HUD — HEURISTIC.
- **Ce qu'il cherche en chase** : couloirs et zones ouvertes (élan), fenêtres vaultées sans avance, survivants près d'un mur (projection) — seed / HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles serrées, coudées, avec objets qui bloquent le bond ; bâtiments à plusieurs étages — HEURISTIC.
  - Défavorables : longues lignes, fenêtres isolées, champs ouverts — HEURISTIC.
  - Palettes : la palette peut être franchie ou cassée par le bond (seed + [2] : Virulent Bound dans la liste des destructions instantanées, STRONG_SECONDARY, à reconfirmer) → pré-drop et départ, ne pas « tenir » une palette — SITUATIONAL. Raison : son pouvoir punit l'attente à la palette, **pas** parce que casser lui coûte (la casse est instantanée) ; la palette est perdue de toute façon (KCH §2.2 b). Limites : sans token de bond disponible (2 tokens selon seed), il redevient un M1 face à cette palette → drop normal ; contre un Mastermind qui attend le pré-drop sans lancer le bond, varier (départ sans drop, drop normal).
- **Mindgames propres** : charge feinte ; 1er bond court pour se repositionner puis 2e bond (seed) → ne pas réagir au premier bond comme s'il était l'attaque — HEURISTIC.
- **Counterplay** :
  - Mécanique : au son de charge, demi-tour ou strafe serré ; forcer le bond contre un obstacle — HEURISTIC.
  - Positionnel : éviter les murs derrière soi en espace ouvert (projection) — HEURISTIC.
  - Macro : utiliser les sprays avant 100 si le Hindered est confirmé (seed) ; ne pas se soigner de l'infection quand il est proche (Killer Instinct) — SITUATIONAL.
  - Équipe : éviter de se regrouper sur les sprays — HEURISTIC.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : courir en ligne droite entre deux tiles ; vaulter une fenêtre avec peu d'avance ; tenir une palette « safe » comme contre un M1.
- **Adaptations avancées / échecs** (HEURISTIC) : sur maps ouvertes, le « tile-to-tile » échoue souvent → privilégier les zones denses même si elles ont moins de palettes.
- **Add-ons qui changent la décision** (seed, NON RE-VÉRIFIÉ, UNCERTAIN) :
  - Iridescent Uroboros Vial (tous infectés au départ, Exposed à 100 selon seed) → gérer l'infection dès le début, sprays prioritaires.
  - Dark Sunglasses (Undetectable après infection complète d'un survivant) → surveiller l'état d'infection des coéquipiers comme signal.
  - Loose Crank (vitesse entre les bonds) → distances de sécurité à augmenter.
- **Implications de carte** : maps ouvertes (champs, Coldwind, Red Forest) = très forte mobilité ; maps intérieures étroites = bonds bloqués — HEURISTIC.
- **Perks fréquentes / synergies** : Pain Resonance, Brutal Strength, Pop, Lethal Pursuer (seed) ; Superior Anatomy (vault plus rapide après fast vault proche), Terminus (endgame, Broken), Awakened Awareness (seed, UNCERTAIN).
- **Écart avec le seed** : buff 9.6.0 : existence **OK** ([2]) ; valeurs du buff et TR 40 m : NON VÉRIFIABLE.
- **Sources** : [1], [2].

---

## 30. The Knight (Tarhos Kovács) — archétype(s) : anti-loop (gardes) | zone (patrouilles)

- **Version** : **buff 9.1.0** (29/07/2025, audit [2]) ; **changement 10.1.1** (01/09/2026) « Knight (gardes et palettes) » — audit [2], STRONG_SECONDARY, contenu non détaillé. Statut LIVE. Le seed ne mentionne pas 10.1.1.
- **Données LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; peuvent être modifiées par 10.1.1) :
  - 4,6 m/s (115 %), TR 32 m, taille moyenne.
  - Patrouille tracée jusqu'à 38 m (depuis 9.1.0 selon seed), 3 gardes à cooldown séparé.
  - Carnifex : ordres rapides, cooldown 20 s ; Assassin : chasse la plus rapide (4,4 m/s), Deep Wound, cooldown 30 s ; Jailer : détection 16 m, chasses/patrouilles 24 s.
  - Fin de chasse du garde : toucher la bannière (Haste 50 % + Endurance 3 s selon seed), décrocher quelqu'un, ou tenir jusqu'à la fin.
  - Garde qui patrouille près d'une palette/mur/gen : casse ou endommage — casse de palette par gardes listée dans [2] (STRONG_SECONDARY).
- **Identification** : trace fantomatique du tracé de patrouille, orbe, bannière sur la map, garde visible — seed / HEURISTIC.
- **Ce qu'il cherche en chase** : « sandwich » garde + Knight de part et d'autre d'une tile ; patrouille à travers une palette pour la casser — seed / HEURISTIC.
- **Tiles / structures** :
  - Favorables : quitter une tile où un garde arrive et aller vers une tile neuve ; bâtiments à plusieurs sorties — HEURISTIC.
  - Défavorables : tiles à une seule palette « verrouillées » par une patrouille ; culs-de-sac — HEURISTIC.
- **Mindgames propres** : tracé de patrouille qui coupe la sortie « évidente » ; choix du garde selon la situation (Jailer pour les gens) — HEURISTIC.
- **Counterplay** :
  - Mécanique : pendant une chasse de garde, se diriger tôt vers la bannière (seed) avant que le Knight n'arrive — HEURISTIC.
  - Positionnel : ne pas jouer une boucle où garde et Knight se font face ; changer de tile — seed / HEURISTIC.
  - Macro : sortir de la zone de détection d'une patrouille plutôt que continuer la réparation ; Assassin → soigner le Deep Wound rapidement (seed) — SITUATIONAL.
  - Équipe : « un unhook met fin à la chasse de garde » est une mécanique **[SEED] UNCERTAIN** (non vérifiée, possiblement modifiée par 10.1.1) → ne pas planifier un sauvetage sur cette base ; au mieux un bonus si elle se confirme.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : rester sur une tile pendant qu'un garde arrive ; oublier la bannière ; paniquer vers une zone morte.
- **Adaptations avancées / échecs** (HEURISTIC) : le changement 10.1.1 sur « gardes et palettes » peut invalider les conseils de palette ci-dessus → à re-vérifier avant intégration.
- **Add-ons qui changent la décision** (seed, NON RE-VÉRIFIÉ, UNCERTAIN) :
  - Iridescent Company Banner (fenêtres cassables selon seed) → ne pas compter sur un vault de fenêtre répété.
  - Town Watch's Torch (Undetectable pendant les chasses) → pendant une chasse de garde, s'attendre au Knight sans TR.
  - Map of the Realm / Sharpened Mount : effets non décrits dans le seed → NON VÉRIFIABLE.
- **Implications de carte** : maps ouvertes = patrouilles longues efficaces ; maps intérieures = tracés gênés — HEURISTIC.
- **Perks fréquentes / synergies** : Hex: Face the Darkness, Hubris, Nowhere to Hide (ses perks) ; Pain Resonance, Grim Embrace, Pop, Lethal Pursuer (seed). **Nowhere to Hide LIVE = 24 m autour du gen endommagé, 3/4/5 s** (notes 10.1.0 via audit [2], STRONG_SECONDARY).
- **Écart avec le seed** : **FAUX** — Nowhere to Hide « 18 m (nerf 10.1.0) » : 18 m = valeur PTB 10.1.0, **LIVE = 24 m** ([2]) ; conseil « Nowhere to Hide est moins bon depuis le passage à 18 m » donc infondé. **IMPRÉCIS** — absence du changement 10.1.1 sur les gardes/palettes.
- **Sources** : [1], [2].

---

## Claims

Calculs dérivés (audit pass 14) : Trickster 4,4 vs 4,0 m/s → il reprend 0,4 m/s (10 m en 25 s, contre 16,7 s pour un tueur à 4,6 m/s) ; décroissance de Laceration ≈ 16 s + n × 4,4 s (n = charges, partie 4,4 s UNCERTAIN) ; 66 s d'arrêt × 3 réparateurs = 198 s-survivant ≈ 2,2 gens solo ; Nightfall 60 s [SEED] < phase de crochet 70 s [AUDIT].

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| G4-01 | Trickster 4,4 m/s (was 4,6) | [2] | 9.5.0 | STRONG_SECONDARY (via audit) |
| G4-02 | Trickster TR 24 m, 44 m au rang S (was 32 m) | [2] | 9.5.0 | STRONG_SECONDARY (via audit) |
| G4-03 | Trickster 36 lames (was 44), Main Event au rang max seulement | [2] | 9.5.0 | STRONG_SECONDARY (via audit) |
| G4-04 | Laceration : décroissance après 16 s | [2] | 9.5.2 | STRONG_SECONDARY (via audit) |
| G4-05 | Laceration : −1 charge / 4,4 s ; rang S 66 s ; Main Event 10 s ×1,67 | [1] | ? | UNCERTAIN (seed) |
| G4-06 | Eruption : perte 5 % (was 10 %) — contestée (annulation LIVE possible, conflit Eruption du lot 3) | [2] | 9.2.0 | UNCERTAIN |
| G4-07 | Nemesis tentacle 5 / 6,5 m, cooldown 2,25 s, MR2 5 pts / MR3 15 pts | [1] | ? | UNCERTAIN (seed) |
| G4-08 | Perks Hellraiser renommées : Deadlock → No Holds Barred, Plaything → Fortune's Fool, Gift of Pain → Weeping Wounds | [2] | 9.0.0 | STRONG_SECONDARY (via audit) |
| G4-09 | Cenobite Chain Hunt à 90 s, chaîne retirée en 1 s, portail 16 m | [1] | ? | UNCERTAIN (seed) |
| G4-10 | Artist : 3 corbeaux, 2e touche sur Swarmed = blessure, retrait 8 s | [1] | ? | UNCERTAIN (seed) |
| G4-11 | Call of Brine 30/40/50 % pendant 90 s | [2] | 10.1.0 | STRONG_SECONDARY (via audit) |
| G4-12 | Onryō : 7 stacks Condemned = mori ; cassette −3 stacks | [1] | ? | UNCERTAIN (seed) |
| G4-13 | Dredge buffé | [2] | 9.6.0 | STRONG_SECONDARY (via audit) ; contenu UNCERTAIN |
| G4-14 | Dredge Nightfall 60 s ; 4 m/s en charge de téléportation | [1] | 9.6.0 ? | UNCERTAIN (seed) |
| G4-15 | Mastermind buffé | [2] | 9.6.0 | STRONG_SECONDARY (via audit) ; contenu UNCERTAIN |
| G4-16 | Virulent Bound et gardes du Knight cassent les palettes instantanément | [2] (wiki Pallets) | — | STRONG_SECONDARY (via audit), à reconfirmer ; pour le Knight, le changement 10.1.1 « gardes et palettes » a pu modifier ce point |
| G4-17 | Knight buffé en 9.1.0 ; modifié (gardes et palettes) en 10.1.1 | [2] | 9.1.0 / 10.1.1 | STRONG_SECONDARY (via audit) ; contenu UNCERTAIN |
| G4-18 | Nowhere to Hide LIVE : 24 m autour du gen, 3/4/5 s (18 m = PTB) | [2] | 10.1.0 | STRONG_SECONDARY (via audit) |
| G4-19 | No Way Out : 12 s + 6/9/12 s par jeton | [2] (wiki Exit Gates) | — | STRONG_SECONDARY (via audit) |
| G4-20 | Dissolution : attaque de base seulement | [1] seul (absent de l'audit) | PTB 10.2.0 (annoncé par le seed) | PTB (non LIVE), UNCERTAIN — existence du changement non vérifiée |

## Conflits

#### CONFLICT-L4G4-01 : No Way Out (durée de blocage)
- Source A : seed [1] fiche Trickster — « 12 s par token (jusqu'à 60 s environ) ».
- Source B : audit [2] (wiki.gg Exit Gates) — « 12 s + 6/9/12 s par jeton ».
- Hypothèse : le seed confond base et bonus par token.
- Résolution : B prévaut (source vérifiée par un lot antérieur) ; à reconfirmer avec le lot 3 (perks tueur).

#### CONFLICT-L4G4-02 : Artist — les murs protègent-ils des corbeaux ?
- Source A : seed [1] — « le corbeau traverse les murs ».
- Source B : seed [1], même fiche — « coupez la ligne de corbeau (…) pas le décor vertical très épais ».
- Hypothèse : contradiction interne ; « décor vertical très épais » n'a pas de référence connue.
- Résolution : UNRESOLVED (pas de vérification web possible).

#### CONFLICT-L4G4-03 : TR de l'Onryō et du Mastermind
- Source A : seed [1] — Onryō 24 m, Mastermind 40 m.
- Source B : connaissance du modèle (antérieure à mi-2026), UNCERTAIN — valeurs plus courantes de 32 m pour ces deux tueurs (souvenir non sourcé).
- Hypothèse : erreur du seed ou changement de patch non connu.
- Résolution : UNRESOLVED.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Knight — Nowhere to Hide | 18 m depuis 10.1.0, « moins bon » | 24 m LIVE (18 m = PTB 10.1.0) [2] | FAUX (PTB-comme-LIVE) |
| Nemesis — Eruption | −10 % | 5 % selon registre audit ; annulation LIVE possible (conflit lot 3) | NON VÉRIFIABLE (conflit ouvert) |
| Cenobite — perks enseignables | Deadlock, Hex: Plaything, Scourge Hook: Gift of Pain | renommées en 9.0.0 : No Holds Barred, Hex: Fortune's Fool, Scourge Hook: Weeping Wounds [2] | IMPRÉCIS (OBSOLETE) |
| Trickster — No Way Out | 12 s/token, ~60 s | 12 s + 6/9/12 s par jeton [2] | IMPRÉCIS |
| Knight — historique | 38 m depuis 9.1.0 ; rien sur 10.1.1 | 9.1.0 buff et 10.1.1 « gardes et palettes » confirmés, contenu non lu [2] | IMPRÉCIS (omission 10.1.1) |
| Trickster — 4,4 m/s, TR 24/44 m, 36 lames, décroissance 16 s | idem | idem [2] | OK |
| Onryō — Call of Brine | 30/40/50 %, 90 s | idem [2] | OK |
| Dredge / Mastermind — buffs 9.6.0 | existence + détails | existence confirmée [2], détails non lus | OK (existence) / NON VÉRIFIABLE (détails) |
| Dredge — Dissolution | nerf PTB 10.2.0 | étiqueté PTB dans le seed ; changement absent de l'audit | OK (étiquetage) / NON VÉRIFIABLE (existence) |
| Cenobite — retrait boutique | mars 2025 | [2] : « départ Hellraiser, 2025 », renommage 9.0.0 | NON VÉRIFIABLE |
| Cenobite — difficulté | « très élevée » (fiche) | « élevée » (tableau d'ensemble du seed) | IMPRÉCIS (incohérence interne) |
| Artist — « s'accroupir évite le Killer Instinct » | affirmé | aucune source | NON VÉRIFIABLE (douteux) |
| Toutes les autres valeurs de pouvoir / add-ons (8 tueurs) | voir fiches | — | NON VÉRIFIABLE (quota) |
| Orientation des fiches | ~75 % joueur tueur | refondu ici en vue survivant | — |

## Questions ouvertes

1. Valeurs LIVE complètes du Trickster post-9.5.0/9.5.2 (barème Style Points, durée rang S, Main Event, décroissance par charge, add-ons refondus).
2. Contenu exact des buffs 9.6.0 du Dredge et du Mastermind, et du changement 10.1.1 du Knight (gardes et palettes).
3. TR réels de l'Onryō (24 m ?) et du Mastermind (40 m ?) — CONFLICT-L4G4-03.
4. Nemesis : effet exact d'un tentacule sur un survivant non contaminé (Hindered 20 % 2 s ?), seuils de mutation, nombre de caisses de vaccin.
5. Durée du Nightfall (60 s ?) et nombre de tokens de Gloaming.
6. Uroboros : Hindered réel à 100 % d'infection ; nombre de caisses et d'usages de sprays.
7. Knight : mécanique exacte de la bannière (Haste 50 % + Endurance ?), portée de patrouille 38 m.
8. Artist : effet exact de Swarmed (aura vs Killer Instinct), durée de retrait, propagation.
9. Cenobite : statut actuel en boutique et date exacte de retrait.
10. Guides experts écrits vue survivant (8 tueurs) : aucun lu — les parties counterplay sont toutes HEURISTIC et devraient être recoupées.

## Sources

[1] Guide seed, chapitre 8 « Les 44 tueurs » — `/home/user/dbd_guide/kb/seed/ch8_killers.txt` (l. 1-256, 1094-1418) — lu le 27/09/2026 (brouillon non fiable).
[2] Audit phase 0 — `/home/user/dbd_guide/kb/seed/audit_phase0.txt` (historique des patchs 9.0.0 → 10.1.2a, OUTDATED CONTENT REPORT, référence vérifiée) — lu le 27/09/2026.

Aucune source web : quota WebSearch de session épuisé (200/200) avant la première requête de cet agent ; aucune URL n'est citée pour ne pas inventer de source.
