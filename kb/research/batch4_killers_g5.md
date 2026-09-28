# Lot 4 — Fiches tueur vues du survivant, groupe 5 (tueurs 31 à 37)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026) + RE-VÉRIFIÉ (lot 12b, 27/09/2026) sur pages wiki complètes et notes officielles BHVR locales** — voir kb/audit/pass14_lot4_g4-g6.md
>
> Rappels de l'audit : toutes les consignes sont des **HEURISTIC** (option par défaut, à varier contre un tueur qui l'anticipe) ; le **pré-drop n'est pas universel** (KCH §2.2) ; **2v8 ≠ 1v4** (Good Guy : la casse de palette par Scamper est une Innate Skill **2v8** ; en 1v4 elle n'existe qu'avec l'add-on **Hard Hat** — RÉSOLU, CONFLICT-L4G5-03) ; les lignes « Équipe » supposant des rôles demandent le vocal (SWF).

Couverture : 7/7 tueurs re-vérifiés sur page wiki complète (27/09/2026), dont 28 points confirmés par note officielle.

- Référence : LIVE 10.1.2a (17/09/2026) ; PTB 10.2.0 (15-21/09/2026) **non LIVE** (les descriptions de perks du wiki marquées « upcoming Patch 10.2.0 » n'ont pas été reprises). Mode 2v8 = jamais utilisé comme valeur 1v4.
- Périmètre : Skull Merchant, Singularity, Xenomorph, Good Guy, Unknown, Lich, Dark Lord (seed `kb/seed/ch8_killers.txt` l. 1419-1663).
- Méthode (lot 12b) : pages wiki.gg complètes enregistrées localement (`kb/sources/wiki_killers/*.txt`, extraites via l'API le 27/09/2026) + pages Pallets, Vorpal Sword et Treasure Chest (`kb/tools/wiki_text.py`) + notes officielles BHVR locales (`kb/sources/patches/official_*.txt`). Aucune page n'a été lue via WebSearch.
- Limites restantes : perks enseignables et builds non re-vérifiés (hors périmètre ; le wiki affiche déjà leurs versions PTB 10.2.0) ; stats NightLight non vérifiables ; aucun avis d'expert sourcé.

## Légende des étiquettes (propre à ce fichier)

- **[n]** : source numérotée (voir `## Sources`). Pages wiki complètes = **STRONG_SECONDARY** ; wiki + note officielle concordants = **VERIFIED_MULTI_SOURCE** ; note officielle explicite = **VERIFIED_PRIMARY**.
- **[AUDIT]** : fait tiré de `kb/seed/audit_phase0.txt`, non re-vérifié ici (sauf mention contraire). ⚠ La table « Palettes » de l'audit (« destruction instantanée par pouvoir ») est **corrigée** par ce lot pour le Good Guy (add-on Hard Hat requis) et le Lich (4 s, pas instantané).
- **[seed, NON RE-VÉRIFIÉ, UNCERTAIN]** : valeur du guide seed non couverte par ce lot (perks, builds, stats) → UNCERTAIN.
- **[connaissance du modèle, UNCERTAIN]** : connaissance interne du modèle, non sourcée → UNCERTAIN (quelques points résiduels seulement).
- **HEURISTIC / SITUATIONAL** : raisonnement de jeu dérivé de la mécanique vérifiée. Ce ne sont pas des avis d'experts sourcés : **aucune source EXPERT_OPINION n'a pu être consultée**.
- Les tiers et notes de menace sont **HEURISTIC**.

---

## 31. The Skull Merchant (Adriana Imai) — archétype(s) : zone/piège | info | M1 (+ Haste)
- **Version** : rework du pouvoir en **7.3.0** (Drones à ligne de scan, Lock-On, Claw Trap) [4]. Ajustements **9.3.0** (rotation 105°/s, Hindered 10 %, cooldown de pose 7 s, Undetectable 6 s, fin de l'immunité au fast vault, Lock-On progressif sous un drone) [5], puis **9.3.2** (Undetectable 8 s, obtenu **au rappel** d'un drone et non plus à la pose) [6]. 9.6.0 : icônes de pouvoir seulement (QoL) [8]. Aucun changement de gameplay en 10.x (bugfixes seulement). Le « rework confirmé pour 2027 » du seed reste NON VÉRIFIABLE. **Statut : LIVE 9.3.2 inchangé jusqu'à 10.1.2a** (VERIFIED_MULTI_SOURCE [4][5][6]).
- **Données LIVE** (page wiki complète [4], sauf mention) :
  - Vitesse 4,6 m/s (115 %) ; **TR 24 m** (réduit de 32 à 24 m en 8.6.0) ; taille moyenne (STRONG_SECONDARY [4]). → CONFLICT-L4G5-01 **RÉSOLU** : le seed avait raison.
  - 6 Drones ; cooldown de pose **7 s** (VERIFIED_PRIMARY [5]) ; zone de scan de **10 m** de rayon ; lignes de scan visibles par les survivants **à moins de 16 m** seulement ; rotation **105°/s** (VERIFIED_MULTI_SOURCE [4][5]) ; initialisation 0,3 s après la pose ; distance minimale entre drones 12 m.
  - Lock-On : +1 stack par détection, avec **2,5 s d'immunité** entre deux détections ; **3 stacks** → blessure si sain / **Deep Wound** si blessé, **Broken**, et **Claw Trap** (STRONG_SECONDARY [4]).
  - Sous un drone : **+1 Lock-On toutes les 2,5 s** (auparavant instantané) (VERIFIED_PRIMARY [5]). ⚠ Le texte de pouvoir du wiki (« plus de 1 s sous un drone surélevé → Locked On instantané ») n'a pas été mis à jour : la note officielle 9.3.0 prime.
  - **Non détectés** par la ligne : survivants **accroupis ou immobiles** (faisceau blanc ; orange = tu seras détecté) [4]. Le **fast vault ne protège plus** depuis 9.3.0 (VERIFIED_PRIMARY [5] ; le texte de pouvoir du wiki le mentionne encore, à tort).
  - Claw Trap : batterie **45 s**, position envoyée en continu au Radar (32 m de rayon d'affichage) ; un survivant **porteur de Claw Trap** scanné subit **Hindered 10 % pendant 6 s** + Killer Instinct 3 s (VERIFIED_MULTI_SOURCE [4][5]).
  - Haste **+5 % pendant 8 s** si un survivant est détecté **dans les 5 s** qui suivent la pose d'un drone ou le changement de sens de rotation (STRONG_SECONDARY [4]).
  - Piratage : réussi → drone désactivé **45 s** ; raté → +1 Lock-On ; mini-jeu limité à 30 s [4].
  - Rappel d'un drone → **Undetectable 8 s** (VERIFIED_MULTI_SOURCE [4][6]). Vitesse réduite à 4,4 m/s pendant la pose d'un drone [4].
  - Les drones ne détectent pas à travers les murs ni les étages des maps à plusieurs niveaux (7.3.0, [4]).
  - Aucun effet anti-palette dans le pouvoir (casse normale).
- **Identification** :
  - Avant le reveal : drones stationnaires surélevés, avec une ligne de scan qui tourne (visible à < 16 m) [4]. Un drone posé sur ton gen en début de partie est un indice quasi certain (HEURISTIC).
  - Pouvoir en action : un survivant blessé d'un coup sans attaque (Lock-On complet) ; icône Claw Trap ; une Skull Merchant qui arrive **sans TR** juste après avoir rappelé un drone (Undetectable 8 s).
  - Add-ons observables : tous les survivants avec un Claw Trap dès le départ (Expired Batteries) ; un TR de 32 m sortant d'un drone désactivé (Iridescent Unpublished Manuscript) [4].
  - Stratégie probable : contrôle de zone, défense d'un groupe de gens proches (HEURISTIC). Le 3-gen était son style historique d'avant 7.3.0 (HISTORICAL [4]).
- **Ce qu'il cherche en chase** : poser un drone sur la boucle en cours (la ligne apparaît perpendiculaire à sa vue [4]) pour une détection immédiate → Haste 5 % ; puis empiler le Lock-On jusqu'à la blessure « gratuite » (HEURISTIC fondé sur [4]).
- **Tiles / structures** :
  - Favorables au survivant : tiles longs **hors du rayon de 10 m** d'un drone ; bâtiments à étages (pas de détection à travers les planchers [4]).
  - Défavorables : boucles courtes sous un drone actif, où chaque passage de la ligne ajoute un stack (toutes les 2,5 s au plus).
  - Fenêtres vs palettes : pas d'anti-palette dans son pouvoir. Jouer les palettes normalement **hors zone**. Le fast vault ne protège plus du scan (9.3.0) (HEURISTIC fondé sur [5]).
- **Mindgames propres** : rappel de drone → Undetectable 8 s pour un retour furtif sur le tile [4][6] ; changement de sens de rotation pour surprendre un survivant qui a calé son passage sur la ligne (et regagner la Haste) [4] (HEURISTIC).
- **Counterplay** :
  - Mécanique : suivre la ligne de scan des yeux et la franchir juste après son passage. **S'accroupir ou s'immobiliser** quand la ligne arrive (faisceau blanc = pas de détection) est une mécanique réelle [4] (STRONG_SECONDARY) — en chase, s'arrêter coûte de la distance : à réserver hors chase ou quand elle est loin (HEURISTIC).
  - Positionnel : changer de tile quand elle pose un drone sur le tien, plutôt que de le tenir ; ne pas stationner **sous** un drone (1 stack / 2,5 s) (HEURISTIC fondé sur [5]).
  - Macro : pirater les drones quand elle est loin (désactivation 45 s, un échec = +1 stack) [4]. Ne pas travailler sur 3 gens collés sans plan (HEURISTIC). Le Claw Trap s'éteint seul après 45 s ; son retrait manuel n'est pas décrit par le texte de pouvoir (l'add-on Infrared Upgrade parle pourtant de « retirer » le Claw Trap → procédure exacte UNCERTAIN).
  - Équipe : un survivant pirate pendant que la chase est loin. Éviter de tous tomber en Lock-On sur la même zone (HEURISTIC).
- **Habitudes punissables / erreurs classiques** :
  - Tenir une boucle « safe » sous un drone.
  - Compter sur le fast vault pour passer la ligne (plus d'immunité depuis 9.3.0).
  - Supposer « pas de TR = elle est loin » après le rappel d'un drone.
  - (HEURISTIC)
- **Adaptations avancées** : contre un drone posé **pendant** la chase et un survivant **porteur de Claw Trap**, pré-jeter la palette plus tôt (SITUATIONAL). Calcul (Hindered 10 % [4][5] et Haste 5 % [4] tous deux LIVE, mais simultanés seulement si tu es Claw-trapped **et** scanné dans les 5 s d'une pose/rotation) : toi 4,0 × 0,9 = 3,6 m/s, elle 4,6 × 1,05 = 4,83 m/s → elle reprend ≈ 1,23 m/s, **deux fois plus vite** que les 0,6 m/s habituels ; 3 m d'avance durent ≈ 2,4 s. Sans Claw Trap : pas de Hindered, seule la Haste (≈ 0,83 m/s repris). Limite : pas d'anti-palette, la casse normale (2,34 s [AUDIT]) lui coûte ; l'autre option, souvent meilleure, est de **sortir du rayon de 10 m** avant de jouer la palette. En fin de partie, les gens à 3 défendus par des drones demandent d'être à plusieurs (HEURISTIC).
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur [4], STRONG_SECONDARY) :
  - Expired Batteries (tous les survivants commencent avec un Claw Trap, batterie à 50 %) → le survivant évite les lignes de scan pendant les ~22 premières secondes au lieu d'ouvrir un gen sous un drone (chaque scan = Hindered + Killer Instinct).
  - Iridescent Unpublished Manuscript (drone désactivé → elle devient Undetectable 15 s et le drone émet un TR de 32 m pendant 15 s) → le survivant ne pirate que s'il sait où elle se trouve, et ignore le TR du drone piraté au lieu de fuir dans la mauvaise direction.
  - Advanced Movement Prediction (aura 6 s de tout nouveau Claw-trapped) → le survivant se déplace après un Lock-On au lieu de se cacher.
  - Powdered Glass (Claw-trapped touché par une attaque de base → Haemorrhage + Mangled 70 s) → le survivant évite de se faire toucher tant que le Claw Trap est actif et reporte le soin au lieu de le lancer tout de suite.
  - Loose Screw (Claw-trapped → Exhausted 6 s) → le survivant ne compte pas sur Sprint Burst/Lithe pendant le Claw Trap.
  - Low-Power Mode (lignes de scan **immobiles**, rotation −100 %) → le survivant contourne le faisceau fixe au lieu de chronométrer son passage.
  - Geographical Readout (casse de palette et vault +20 % pendant 8 s après une pose) → le survivant quitte la palette au lieu de la « faire casser » juste après une pose de drone.
- **Implications de carte** : pas de Realm propre ; son camp se trouve sur Shelter Woods (MacMillan Estate) [4]. Chapitre Tools of Torment sorti le 07/03/2023 [4]. Les petites maps et les gens proches favorisent la zone de drones (HEURISTIC). Maps à étages : pas de scan à travers les planchers [4].
- **Perks fréquentes / synergies** : Pain Resonance, Grim Embrace, Pop, Lethal Pursuer (build seed [seed, NON RE-VÉRIFIÉ, UNCERTAIN]). Ses enseignables : Game Afoot, Leverage, THWACK! [4] (⚠ la page wiki affiche déjà leurs versions **PTB 10.2.0**, non LIVE : valeurs LIVE non re-vérifiées ici). Contre THWACK! : un cri et une aura après une casse de palette → repérer l'emplacement avant de se cacher (HEURISTIC).
- **Écart avec le seed** :
  - TR 24 m : **OK** (8.6.0, [4]) — CONFLICT-L4G5-01 résolu.
  - Undetectable 8 s au rappel du drone absent du seed : **IMPRÉCIS** (omission importante pour le survivant) — confirmé [4][6].
  - « Crouch/marche pour passer le scan » : **IMPRÉCIS** — crouch ou **immobilité** protègent [4] ; la simple marche n'est pas citée.
  - « Hindered 10 % » présenté comme général : **IMPRÉCIS** — ne s'applique qu'aux survivants porteurs d'un Claw Trap [4].
  - Rework 2027 : **NON VÉRIFIABLE**. Tier D « unanime » : HEURISTIC non vérifiable.
- **Sources** : [1] [2] [4] [5] [6] [8]

## 32. The Singularity (HUX-A7-13) — archétype(s) : mobilité | ranged | anti-loop (téléportation)
- **Version** : derniers changements du pouvoir en **8.1.0 / 8.1.1 / 8.7.0** [9]. En 9.x/10.x : seulement l'add-on **Soma Family Photo** (9.3.0 : Hindered 6 s au lieu de 3 s, Deep Wound retiré) (VERIFIED_MULTI_SOURCE [5][9]), la téléportation vers les survivants visibles dans le brouillard d'un Fog Vial (9.1.2 [21]) et une mise à jour de texte « Basic-break » (9.5.0 [7]), plus des bugfixes. **Statut : LIVE inchangé** (STRONG_SECONDARY [9]).
- **Données LIVE** (page wiki complète [9], STRONG_SECONDARY) :
  - Vitesse 4,6 m/s ; **TR 32 m** ; taille moyenne. DLC End Transmission.
  - 8 Biopods (le plus ancien est recyclé), pose à **22 m** max. ; tag de Temporal Slipstream depuis un pod contrôlé : **ligne de vue + 20 m**, charge 0,8 s ; la progression décroît si la LOS est perdue plus de 0,25 s. Cooldown de 3 s après un tag ou une téléportation.
  - Slipstream : se propage aux survivants à **6 m** en 2 s ; déclenche Killer Instinct 3 s.
  - Téléportation : **uniquement vers un survivant Slipstreamed** (depuis un pod ou en lui tirant dessus). Traverser une **palette abaissée** la casse instantanément **et le met en Overheat**.
  - **Overclock** (après chaque téléportation) : **5,7 s**, vitesse ×1,03 (4,738 m/s), actions (dégâts aux gens, casse de murs/palettes, vault de fenêtres) **+75 %**, immunité aux stuns : une tentative de stun à la palette **casse la palette** et le fait passer en **Overheat**.
  - **Overheat** : **3 s**, Hindered **−50 %** (2,3 m/s), **aucun pod** ne peut être contrôlé ni tiré.
  - EMP : **4 Supply Cases** (aura à 28 m pour les survivants sans EMP) ; EMP = zone de **10 m** : retire le Slipstream et désactive les pods **45 s**. Immunité de 1 s au re-tag après un EMP.
  - Anti-camp : pod trop près d'un survivant accroché (10 m) → charge 10 fois plus lente.
- **Identification** :
  - Avant le reveal : Biopods collés aux murs et aux surfaces, Supply Cases à EMP visibles en aura [9]. Leur présence identifie le tueur dès les premières secondes (HEURISTIC).
  - Pouvoir en action : un **Killer Instinct** sur toi au moment du tag (Slipstream reçu) [9] ; le tueur immobile quand il contrôle un pod ; un survivant qui brille en blanc pour lui quand il est ciblable.
  - Stratégie probable : pression multi-chases par téléportation, pods sur les gens (HEURISTIC).
- **Ce qu'il cherche en chase** : te marquer depuis un pod placé **derrière** toi, puis se téléporter juste avant que tu atteignes ou jettes la palette, et profiter de l'Overclock (+75 % casse/vault) (HEURISTIC, cohérent avec [9]).
- **Tiles / structures** :
  - Favorables : tiles où l'on peut casser la LOS avec **tous** les pods voisins (la LOS est une condition du tag [9]) ; rester à **plus de 20 m** d'un pod suffit aussi. Structures intérieures sans surfaces de pose visibles (HEURISTIC).
  - Défavorables : grands espaces dégagés couverts par des pods en hauteur.
  - Fenêtres vs palettes : quand il arrive en Overclock, la palette ne le stun pas **mais** la tentative le met en Overheat 3 s à 2,3 m/s (FACT [9]) : ce n'est pas un stun, mais c'est de la distance. Une palette abaissée sur la trajectoire de sa téléportation est cassée et le met aussi en Overheat [9]. Hors Overclock, la palette se joue normalement (HEURISTIC).
- **Mindgames propres** : faux contrôle de pod (il reste immobile puis reprend la chase) ; pod en angle mort derrière le survivant ; auto-aim qui revient sur le dernier survivant tagué pendant 12 s [9] (HEURISTIC).
- **Counterplay** :
  - Mécanique : repérer chaque pod de la zone et casser sa LOS pendant les 0,8 s de charge. Tant que tu n'es pas Slipstreamed, il ne peut pas se téléporter sur toi (FACT, STRONG_SECONDARY [9]).
  - Positionnel : quand il entre dans un pod, gagner de la distance ou couvrir la LOS au lieu de rester dans la boucle (HEURISTIC).
  - Palette contre l'Overclock : si la téléportation te met au contact et que tu es sur une palette, la **jeter sur lui** reste utile : pas de stun, mais Overheat 3 s à 2,3 m/s → environ **5 m** de distance regagnés sur ton 4,0 m/s (calcul : (4,0 − 2,3) × 3 s ≈ 5,1 m), au prix de la palette (HEURISTIC fondé sur [9]).
  - Macro : ramasser un EMP tôt (HEURISTIC ; « un porteur par zone » suppose le vocal — en SoloQ, prendre un EMP si tu n'en vois pas chez les autres et le garder pour un Slipstream ou un groupe de pods réel). Ne pas se grouper (propagation 6 m [9]).
  - Équipe : l'EMP d'un coéquipier « nettoie » tout dans 10 m, Slipstream compris [9].
- **Habitudes punissables / erreurs classiques** :
  - Rester dans la LOS d'un pod à moins de 20 m.
  - Réparer à plusieurs dans la vue d'un pod (propagation 6 m).
  - Utiliser l'EMP trop tôt, sans pods ni Slipstream à nettoyer.
  - (HEURISTIC)
- **Adaptations avancées** : pendant l'Overclock (5,7 s), les vaults de fenêtre et la casse de palette lui sont 75 % plus rapides : courir vers une ressource **plus loin** plutôt que de tenir la palette actuelle ; après l'Overheat (3 s), il repasse à 4,6 m/s sans Overclock (SITUATIONAL fondé sur [9]).
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur [9], STRONG_SECONDARY) :
  - Denied Requisition Form (tous Slipstreamed au départ, premiers EMP imprimés 30 s plus tard) → le survivant se méfie de toute téléportation dès la 1re minute et part vers une Supply Case au lieu de s'installer sur un gen.
  - Iridescent Crystal Shard (aura 6 s des survivants à 10 m d'un pod fraîchement posé) → le survivant s'éloigne d'un pod neuf au lieu de compter sur la furtivité.
  - Nutritional Slurry (+2 pods) → plus de couverture : le survivant se déplace vers une zone sans pods au lieu de tenter de casser toutes les LOS.
  - Diagnostic Tool (Repair) (portée de tag +4 m = 24 m) → le survivant compte 24 m, et non 20 m, comme distance de sécurité.
  - Foreign Plant Fibres (pénalité de vitesse après un stun de palette en Overclock réduite de 20 %) → la palette jetée sur un Overclock rapporte moins que ≈ 5 m.
  - Cremated Remains (Slipstreamed = Blindness) / Spent Oxygen Tank (Slipstreamed = Exhausted 6 s) → après un tag, le survivant ne compte ni sur ses auras ni sur sa perk d'Exhaustion immédiate.
- **Implications de carte** : maps à murs hauts et nombreuses surfaces → meilleur réseau de pods. Maps ouvertes → longues LOS (HEURISTIC). Realm : Dvarka Deepwood ; chapitre End Transmission sorti le 13/06/2023 [9].
- **Perks fréquentes / synergies** : Pain Resonance, Grim Embrace, Pop, Lethal Pursuer ou Machine Learning [seed, NON RE-VÉRIFIÉ, UNCERTAIN]. Ses enseignables : Genetic Limits (Exhausted sur blessure → garder la perk d'exhaustion pour plus tard), Forced Hesitation (Hindered si quelqu'un tombe près de toi → s'écarter de la chase d'un allié), Machine Learning (Undetectable + Haste après un gen « compromis ») (valeurs [seed, NON RE-VÉRIFIÉ, UNCERTAIN] ; non re-lues pour ce lot).
- **Écart avec le seed** : 8 pods, 22 m, 20 m, 6 m, Overclock 5,7 s (+3 %, +75 %, immunité), Overheat 3 s à 50 %, 4 EMP, 10 m, 45 s : **OK** [9]. « Stunner pendant l'Overclock ne sert à rien : attendez la fin des 5,7 s » : **FAUX** — la tentative de stun le met en **Overheat 3 s à 2,3 m/s** et sans pods [9] : elle coûte la palette mais rapporte de la distance. « Toutes les palettes au sol sur sa route sont détruites » : **IMPRÉCIS** (omet l'Overheat déclenché par cette casse [9]). L'erreur Singularity signalée par l'audit phase 0 est probablement celle-ci (non confirmable : `audit/pass0_*` absent).
- **Sources** : [1] [2] [5] [7] [9] [21]

## 33. The Xenomorph — archétype(s) : anti-loop (queue) | mobilité (tunnels) | info
- **Version** : derniers changements 1v4 en **7.2.2** et **8.6.0** [10]. En 9.x/10.x : bugfixes seulement (1v4), et ajout au **2v8** en **10.1.2** avec des Innate Skills propres au 2v8 (tourelle auto-détruite après l'avoir sorti du Crawler, recharge du Crawler +25 %, Mangled 70 s sur coup de queue, Haste 5 % 3 s en sortie de tunnel) (VERIFIED_MULTI_SOURCE [10][16]). **Ces Innate Skills ne s'appliquent pas en 1v4.** Statut 1v4 : LIVE inchangé depuis 8.6.0 (STRONG_SECONDARY [10]).
- **Données LIVE** (page wiki complète [10], STRONG_SECONDARY) :
  - Vitesse 4,6 m/s (aussi en Crawler) ; **TR 32 m, 24 m en Crawler Mode** ; taille moyenne. → CONFLICT-L4G5-02 **RÉSOLU** (le seed avait raison).
  - Tunnels : **7 Control Stations** (aura visible par les survivants à 12 m) ; sous terre : **18 m/s**, Undetectable, recharge du Crawler ×8. Sortie de tunnel : **2,25 s**, déclenche Killer Instinct 3 s et désactive les tourelles 2,5 s dans un rayon de **16 m**.
  - Détection des pas depuis les tunnels : **16 m** ; **s'accroupir ou rester immobile** empêche la détection ; porter une tourelle aussi.
  - Crawler Mode : se remplit à **1 charge/s** hors tunnel (seuil **35** → ≈ 35 s) et **8 charges/s** en tunnel (≈ 4,4 s). Il n'en sort que s'il porte un survivant (il garde alors jusqu'à 75 % de la jauge) ou si les tourelles le brûlent.
  - Tail Strike : portée **4,8 m**, charge 0,3 s ; cooldown **2,5 s** (raté/obstrué) ou **2,7 s** (touché), à 1,2 m/s pendant ce temps.
  - Tourelles : **4** au total ; récupération à une Control Station (cooldown 30 s par station) ; porter une tourelle = Hindered **−35 %**, Exhausted, Incapacitated. Tir si le Xeno en Crawler est à **10 m** avec LOS ; **125 charges** de feu → stun 1 s et sortie du Crawler. Tourelle détruite → retour après 60 s ; tourelle posée au sol non déployée → auto-destruction en 30 s (en pause si un survivant reste à 6 m). Surchauffe : panne de 3,5 s, réparation 3 s.
- **Identification** :
  - Avant le reveal : Control Stations (aura à 12 m) et tourelles récupérables [10]. Un **Killer Instinct** soudain près d'une station = sortie de tunnel [10].
  - Pouvoir en action : tueur à quatre pattes (Crawler Mode, TR réduit à 24 m) avec l'attaque de queue.
  - Add-ons observables : blessure en stunnant le Xeno juste après une sortie de tunnel (Acidic Blood [10]).
  - Stratégie probable : pression par tunnels, anti-loop à la queue (HEURISTIC).
- **Ce qu'il cherche en chase** : toucher à la queue (4,8 m) sur un petit tile, ou par-dessus un obstacle bas. Il évite les zones de tourelles (HEURISTIC).
- **Tiles / structures** :
  - Favorables : tiles couverts par une tourelle posée (10 m, LOS). Murs hauts pleins qui bloquent la queue (une queue « obstruée » par le décor rate [10]).
  - Défavorables : palettes basses et petits tiles où les 4,8 m de la queue suffisent. Open areas.
  - Fenêtres vs palettes : la queue passe au-dessus des obstacles bas (palette, fenêtre) selon [connaissance du modèle, UNCERTAIN] — le wiki ne le dit pas explicitement, il ne mentionne que des queues « obstruées » par le décor. Ne pas considérer le vault comme sûr contre un Xeno en Crawler (HEURISTIC).
- **Mindgames propres** : feinte de queue (annulable seulement dans une fenêtre très courte [10]), puis M1 (HEURISTIC). Sortie de tunnel inattendue près des gens (Undetectable en tunnel [10]).
- **Counterplay** :
  - Mécanique : lire le début de l'animation de la queue (charge 0,3 s, son audible) et esquiver **latéralement** (HEURISTIC). Une queue ratée le laisse **2,5 s à 1,2 m/s** [10] : c'est ≈ 7 m de distance regagnés sur ton 4,0 m/s ((4,0 − 1,2) × 2,5).
  - Positionnel : amener la chase vers une tourelle posée. Poser les tourelles **avant** la chase sur les tiles forts et sur les gens (HEURISTIC). Hors chase, près d'une Control Station : **s'accroupir ou s'immobiliser** empêche la détection des pas depuis le tunnel [10].
  - Macro : une fois sorti du Crawler (par une tourelle), il est un M1 à 32 m de TR jusqu'à la recharge : **≈ 35 s** s'il reste en surface, mais **≈ 4,4 s** s'il repasse par un tunnel [10]. La fenêtre n'est donc longue que loin d'une Control Station : tenir le tile et avancer les gens seulement dans ce cas (HEURISTIC fondé sur [10]).
  - Équipe : poser les tourelles de façon à couvrir hooks et gens. Les remplacer après destruction (retour 60 s) (HEURISTIC).
- **Habitudes punissables / erreurs classiques** :
  - Tenir une palette basse contre la queue.
  - Poser une tourelle là où il n'y a pas de chase ; la laisser tomber non déployée (auto-destruction en 30 s).
  - Marcher debout près d'une Control Station alors qu'il est peut-être en tunnel.
  - (HEURISTIC)
- **Adaptations avancées** : s'il détruit systématiquement les tourelles, les poser par paires ou derrière un obstacle pour lui coûter du temps (HEURISTIC). Une tourelle qui tire en continu surchauffe (panne 3,5 s) : ne pas compter sur une seule tourelle pour tout un tile.
- **Add-ons qui changent la décision** (noms et effets LIVE 1v4 lus sur [10], STRONG_SECONDARY) :
  - Ovomorph (recharge du Crawler +25 % hors tunnel, ≈ 28 s) → le survivant greede moins longtemps après l'avoir sorti du Crawler.
  - Kane's Helmet (Mangled 70 s sur coup de queue) → le survivant se soigne près d'une tourelle ou reporte le soin au lieu de le lancer en pleine zone.
  - Multipurpose Hatchet (Haemorrhage jusqu'au soin complet sur coup de queue) → le survivant finit son soin au lieu de le laisser partiel.
  - Acidic Blood (un stun **dans les 20 s après une sortie de tunnel**, en Crawler, blesse le survivant ou lui inflige Deep Wound) → le survivant préfère la distance au stun juste après une sortie de tunnel, au lieu de stunner par réflexe.
  - Ripley's Watch (tourelle auto-détruite après l'avoir sorti du Crawler) → le survivant va chercher une nouvelle tourelle après chaque sortie réussie au lieu de compter sur la même.
  - Brett's Cap (tourelle détruite → Blindness 25 s à 16 m) → le survivant ne compte pas sur ses perks d'aura près d'une tourelle cassée.
  - Crew Headset (détection des pas depuis le tunnel à 22 m au lieu de 16 m) → le survivant s'accroupit plus tôt près des stations.
- **Implications de carte** : map Nostromo Wreckage (ses hooks en viennent [10] ; utilisée en 2v8 [AUDIT]). La position des 7 Control Stations dépend de la map (non vérifié en détail).
- **Perks fréquentes / synergies** : Bamboozle (le seed cite un taux de kill NightLight de 58,8 %, [seed, NON RE-VÉRIFIÉ, UNCERTAIN]), Pain Resonance, Pop. Ses enseignables : Alien Instinct (Oblivious), Rapid Brutality (Haste sur coup, sans Bloodlust), Ultimate Weapon (cri + Blindness à l'ouverture d'un casier → un cri sans chase indique la perk) (valeurs [seed, NON RE-VÉRIFIÉ, UNCERTAIN]).
- **Écart avec le seed** : TR 24 m en Crawler, queue 4,8 m, 7 stations, 18 m/s, 4 tourelles, 125 charges, détection 16 m (crouch/immobile = pas de détection) : **OK** [10]. Stats NightLight (41,5 % / 58,8 %) **NON VÉRIFIABLE**, sans échantillon ni date.
- **Sources** : [1] [2] [10] [16]

## 34. The Good Guy (Chucky) — archétype(s) : furtif | mobilité | anti-loop (dash + Scamper)
- **Version** : derniers changements 1v4 en **8.4.1** (Slice & Dice 1,8 s à 8 m/s) et **8.6.0** (recharge de Hidey-Ho 12 s, pas de cooldown initial) [11]. **9.4.2** = arrivée du Good Guy en **2v8** avec des Innate Skills propres à ce mode, dont « Performing a Scamper under a pallet breaks it immediately » (VERIFIED_PRIMARY [15], section « Game Mode: 2v8 »). 9.5.0 : sa description de pouvoir est classée **« Special-vault »** (pas « Special-break ») et l'add-on Hard Hat est ré-écrit (VERIFIED_PRIMARY [7]). **Statut 1v4 : LIVE inchangé depuis 8.6.0** (VERIFIED_MULTI_SOURCE [7][11][15]).
- **Données LIVE** (page wiki complète [11], STRONG_SECONDARY) :
  - Vitesse **4,4 m/s (110 %)** ; **TR 32 m** ; taille **petite** (Short).
  - Hidey-Ho Mode : **14 s**, cooldown **12 s** ; Undetectable + Illusionary Footfalls (faux pas dans **16 m** autour de chaque survivant, 2 leurres max par survivant). Chaque tentative d'attaque en Hidey-Ho réduit sa durée restante de 50 %. Transition entre modes : 1 s.
  - Slice & Dice (seulement en Hidey-Ho) : **8 m/s pendant 1,8 s**, fente de 0,6 s ; cooldown **3 s** si touché, **2,25 s** si raté ou obstrué.
  - **Scamper** : seulement **pendant** un Slice & Dice, au contact d'une **palette abaissée** ou d'une **fenêtre** ; passe dessous/par-dessus en **1 s**.
  - **Casse de palette par le Scamper en 1v4 : NON** en kit de base. Elle n'existe qu'avec l'add-on **Hard Hat** (« Instantly breaks Pallets when performing a Scamper under them ») ou en **2v8** (Innate Skill) [11][15]. → CONFLICT-L4G5-03 **RÉSOLU** (VERIFIED_MULTI_SOURCE : texte de pouvoir wiki [11] + note 9.4.2 qui range la casse dans les Innate Skills 2v8 [15] + note 9.5.0 qui classe le Good Guy en « Special-vault » et non en « Special-break » [7]).
- **Identification** :
  - Avant le reveal : pas de TR, faux pas (Illusionary Footfalls) autour de toi pendant Hidey-Ho [11]. Petite silhouette difficile à voir derrière le décor.
  - Pouvoir en action : un dash rapide suivi d'une fente ; passage **sous** une palette ou par une fenêtre en fin de dash (Scamper).
  - Add-ons observables : une palette **cassée instantanément** par un Scamper = **Hard Hat** (1v4) [11].
  - Stratégie probable : hit-and-run furtif, pression de mobilité (HEURISTIC).
- **Ce qu'il cherche en chase** : un dash au moment où le survivant se retourne ou s'engage dans une ligne droite. Un Scamper pour annuler l'avantage d'une palette ou d'une fenêtre (HEURISTIC).
- **Tiles / structures** :
  - Favorables : tiles avec obstacles hauts et angles serrés, qui limitent la trajectoire du dash (le Slice & Dice a une limite de rotation [11]). Hauteur et longues LOS pour le voir venir malgré sa taille (HEURISTIC).
  - Défavorables : grandes lignes droites, où le dash comble l'écart (HEURISTIC).
  - Fenêtres vs palettes : le Scamper traverse les deux en 1 s pendant un dash [11]. **En 1v4 sans Hard Hat, la palette reste au sol après son Scamper** : elle reste réutilisable pour la boucle suivante, mais elle ne t'a protégé que si tu as gagné de la distance pendant la seconde de Scamper (HEURISTIC fondé sur [11]). Ne pas s'arrêter juste derrière une palette : garder du mouvement.
- **Mindgames propres** : dash retardé, Hidey-Ho pour disparaître puis retour en angle mort ; sortie manuelle de Hidey-Ho (HEURISTIC).
- **Counterplay** :
  - Mécanique : esquive latérale tardive au moment du dash (rotation limitée [11]). Pas de virage anticipé qu'il pourrait suivre (HEURISTIC).
  - Positionnel : jouer autour d'objets hauts. À 110 % (4,4 m/s, STRONG_SECONDARY [11]), un « hold W » perd moins vite qu'à 115 % (il reprend 0,4 m/s au lieu de 0,6 : 10 m en 25 s au lieu de 16,7 s) — HEURISTIC. **Mais** le dash change le calcul : à 8 m/s pendant 1,8 s [11] il parcourt ≈ 14,4 m pendant que tu en fais 7,2 → chaque dash reprend ≈ 7 m d'un coup. La distance brute n'a donc de valeur que si elle dépasse nettement cette portée **et** qu'un obstacle permet de dévier le dash ; en ligne droite dégagée, elle ne protège pas.
  - Palette : en 1v4, jeter la palette **reste utile** (elle n'est pas cassée par le Scamper sans Hard Hat) ; contre un Scamper, la palette ne le stun pas mais lui coûte 1 s de Scamper (HEURISTIC fondé sur [11]).
  - Macro : regarder régulièrement autour de soi quand il n'y a pas de TR. Les faux pas sont des indices peu fiables (HEURISTIC).
  - Équipe : annoncer sa position dès qu'il sort de Hidey-Ho (HEURISTIC ; SWF seulement — en SoloQ, se fier à ses propres checks et aux auras de perks).
- **Habitudes punissables / erreurs classiques** :
  - Rester immobile derrière une palette abaissée en supposant qu'elle protège d'un Slice & Dice.
  - Courir en ligne droite dans un espace ouvert.
  - Faire confiance aux sons de pas pendant Hidey-Ho.
  - (HEURISTIC)
- **Adaptations avancées** : après un dash **raté**, cooldown de **2,25 s** [11] ; après un dash réussi, 3 s. Hidey-Ho doit ensuite se recharger 12 s [11] : c'est la fenêtre pour changer de tile (SITUATIONAL).
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur [11], STRONG_SECONDARY) :
  - **Hard Hat** (le Scamper sous une palette la casse instantanément) → le survivant ne compte plus sur la palette déjà tombée pour la boucle suivante : dès la première casse par Scamper, jouer fenêtres et tiles sans palette unique au lieu de ramener la chase sur des palettes abaissées.
  - Iridescent Amulet (Hidey-Ho +50 % = 21 s ; une attaque de base met fin au mode) → phases sans TR plus longues : le survivant quitte le gen au moindre indice visuel au lieu d'attendre le TR.
  - Portable TV (Slice & Dice à 170 % de sa durée, ≈ 3,1 s, une fois les portes alimentées) → en endgame, le survivant évite les lignes droites vers les portes et ouvre en équipe.
  - Jump Rope (Slice & Dice à 108 %) → portée du dash un peu plus longue : garder un obstacle de plus entre lui et soi.
  - Silk Pillow (TR −6 m en permanence, charge du dash ×1,5) → TR de 26 m : le survivant ne se fie pas à la taille du TR pour juger la distance.
  - Plastic Bag (traverser un faux pas = Exhausted 15 s) → le survivant ne compte pas sur sa perk d'exhaustion en Hidey-Ho.
  - Straight Razor (coup de Slice & Dice → Haemorrhage + Mangled 80 s) → le survivant reporte le soin ou se soigne loin de lui.
- **Implications de carte** : maps encombrées (hautes herbes, décor) → sa petite taille l'avantage. Maps ouvertes → le survivant le voit venir (HEURISTIC).
- **Perks fréquentes / synergies** : Pain Resonance, Friends 'til the End, Grim Embrace, Lethal Pursuer [seed, NON RE-VÉRIFIÉ, UNCERTAIN]. Ses enseignables : Hex: Two Can Play (aveuglé après un stun ou une lampe → chercher le totem), Friends 'til the End (Obsession Exposed), Batteries Included (Haste près d'un gen terminé) (valeurs [seed, NON RE-VÉRIFIÉ, UNCERTAIN]).
- **Écart avec le seed** : « Scamper casse la palette depuis 9.4.2 » présenté comme 1v4 : **FAUX** — en 1v4, seul l'add-on Hard Hat donne cette casse ; la casse de base est une Innate Skill **2v8** de 9.4.2 [7][11][15] (VERIFIED_MULTI_SOURCE). Le conseil du seed « jouez le tile, pas la palette » est **IMPRÉCIS** : la palette reste une ressource en 1v4 sans Hard Hat. « Très buffé début 2026 » : **IMPRÉCIS** (buffs 2v8). Vitesse 4,4 m/s, TR 32 m, Hidey-Ho 14 s / 12 s, Slice & Dice 8 m/s 1,8 s, Scamper 1 s, cooldown raté 2,25 s, Portable TV 170 %, Iridescent Amulet +50 % : **OK** [11]. Tier A- : HEURISTIC non vérifiable.
- **Sources** : [1] [2] [3] [7] [11] [15] [23]

## 35. The Unknown — archétype(s) : ranged (UVX) | furtif/mobilité (hallucinations, téléportation)
- **Version** : buffs **9.2.0** (Weakened prolongé de 8 s au lieu de 6 s quand l'UVX blesse un survivant sain ; recovery après téléportation 1,3 s ; visée plus haute ; plusieurs add-ons) (VERIFIED_MULTI_SOURCE [12][17]) et **9.6.0** (cooldown de l'UVX **6,25 s** au lieu de 7 s ; « vision linger » du Stare Down 0,75 s au lieu de 1,25 s) (VERIFIED_MULTI_SOURCE [8][12]). Aucun changement en 10.x. **Statut : LIVE 9.6.0.**
- **Données LIVE** (page wiki complète [12], STRONG_SECONDARY sauf mention) :
  - Vitesse 4,6 m/s ; **TR 32 m** ; taille **moyenne** (Average) — et non « grande ».
  - UVX : charge 1 s (il marche à ≈ 4,0 m/s en chargeant), projectile qui rebondit (jusqu'à 5 s en vol), zone d'explosion de **2,25 m** ; toucher le projectile **en vol** → Hindered **6 %** pendant **3 s** ; toucher la zone → **Weakened** ; un survivant déjà Weakened touché par une zone est **blessé** (+8 s de Weakened). Cooldown **6,25 s** (VERIFIED_PRIMARY [8]).
  - Stare Down : se débarrasser du Weakened en regardant le tueur **à ≤ 25 m** pendant **10 s cumulées** ; une perte de LOS de plus de **0,75 s** interrompt l'action (VERIFIED_MULTI_SOURCE [8][12]) ; le survivant apparaît alors en rose au tueur.
  - Hallucinations : **4** max., une nouvelle toutes les **45 s** (plus vite quand des survivants sont Weakened : ≈ 13 s si les 4 le sont) ; aura visible des survivants à **8 m**. Dissiper = 4 s (−25 % de vitesse si Weakened) ; un **échec** (interruption, ou téléportation du tueur dessus) → Weakened + Killer Instinct **5 s**.
  - Téléportation vers une hallucination à ≥ 3 m (portée illimitée) : cooldown **25 s** ; laisse un **Decoy de 5 s** ; ralentissement de 1,3 s à l'arrivée.
- **Identification** :
  - Avant le reveal : **hallucinations** (leurres fixes, aura à 8 m) sur la map [12]. Leur présence identifie le tueur.
  - Pouvoir en action : projectile qui rebondit et explose ; statut Weakened sur le HUD ; un Killer Instinct après un dispel raté.
  - Stratégie probable : blessure en deux temps (Weakened, puis explosion), pression par téléportation vers les hallucinations (HEURISTIC).
- **Ce qu'il cherche en chase** : une explosion derrière un obstacle bas ou au rebond, pour appliquer Weakened puis blesser au tir suivant (6,25 s plus tard au plus tôt) (HEURISTIC, cohérent avec [12]).
- **Tiles / structures** :
  - Favorables : **murs hauts pleins** qui empêchent les tirs en cloche et les rebonds (HEURISTIC).
  - Défavorables : palettes et murets bas, open areas.
  - Verticalité : sa visée verticale a été élargie en 9.2.0 [17] : un tir depuis un étage ou vers un étage est plus facile qu'avant (HEURISTIC fondé sur [17]).
- **Mindgames propres** : Decoy laissé par la téléportation (5 s [12]). Tir retardé pour attraper le changement de direction (HEURISTIC).
- **Counterplay** :
  - Mécanique : bouger latéralement au moment où il relâche la charge (1 s de charge audible/visible). Ne pas s'arrêter dans une zone d'impact (HEURISTIC).
  - Positionnel : se débarrasser du Weakened quand on est hors de danger, en le regardant **à moins de 25 m** pendant 10 s cumulées [12] ; depuis 9.6.0, casser la LOS plus de 0,75 s interrompt [8] : choisir un angle de vue **stable**. Compromis : le plus loin possible sous 25 m, avec un obstacle proche pour couper sa LOS s'il charge un tir (HEURISTIC).
  - Macro : dissiper les hallucinations proches des gens **quand il est loin** (un échec = Weakened + Killer Instinct 5 s [12] ; il peut aussi se téléporter dessus pendant le dispel).
  - Équipe : ne pas être plusieurs dans la même zone d'explosion. Rester sain et non-Weakened ralentit aussi ses hallucinations (HEURISTIC fondé sur [12]).
- **Habitudes punissables / erreurs classiques** :
  - Tenir un muret bas.
  - Garder le Weakened en pensant qu'il s'en ira seul.
  - Dissiper une hallucination pendant une chase proche.
  - (HEURISTIC)
- **Adaptations avancées** : s'il est déjà Weakened, le survivant perd la marge d'une première explosion. Prioriser les murs hauts ou quitter la zone au lieu de tenir le tile ; profiter des 6,25 s de cooldown après chaque tir pour traverser la zone ouverte (SITUATIONAL).
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur [12], STRONG_SECONDARY) :
  - Captured by the Dark (tous Weakened dès le départ, une hallucination de moins) → le survivant fait son Stare Down dès la première rencontre au lieu d'attendre d'être touché.
  - Slashed Backpack (un UVX qui touche une hallucination la désintègre en zone d'explosion et accélère la suivante de 65 %) → le survivant ne se tient pas à côté d'une hallucination pendant une chase, au lieu de la croire inoffensive.
  - Iridescent OSS Report (téléportation −5 s = 20 s ; Decoys de 15 s qui émettent TR et Red Stain) → un TR et une Red Stain près d'une hallucination peuvent être faux : le survivant vérifie visuellement avant de fuir.
  - Vanishing Box (hallucinations 120 % plus lentes, mais les survivants qui terminent un gen deviennent Weakened) → le survivant fait son Stare Down juste après chaque gen terminé.
  - Homemade Mask (dispel réussi → Blindness 60 s) / Punctured Eyeball (dispel en étant blessé et Weakened → Deep Wound) → le survivant ne dissipe que sain et non-Weakened.
  - B-Movie Poster (blessure par UVX → Broken 30 s) → le survivant ne tente pas de soin immédiat après une blessure par UVX.
- **Implications de carte** : intérieurs à plafond bas → moins de tirs en cloche ([connaissance du modèle, UNCERTAIN], non vérifié). Maps ouvertes → portée maximale (HEURISTIC).
- **Perks fréquentes / synergies** : Pain Resonance, Unforeseen, Pop, Lethal Pursuer [seed, NON RE-VÉRIFIÉ, UNCERTAIN]. Ses enseignables : Unbound (Haste au vault après un stun ou une blessure), Unforeseen (TR transféré sur le gen + Undetectable → un TR soudain sur un gen frappé n'est pas le tueur), Undone (régression par token) (valeurs [seed, NON RE-VÉRIFIÉ, UNCERTAIN]). ⚠ Unbound et Undone : les valeurs du seed ch8 ressemblent à la liste PTB 10.2.0 (CONFLICT-K96-01, SUSPECT PTB-comme-LIVE) et Undone est **retravaillée au PTB 10.2.0** [AUDIT] → ne retenir que le principe.
- **Écart avec le seed** : cooldown UVX 6,25 s (9.6.0) : **OK** (VERIFIED_MULTI_SOURCE [8][12]). Zone 2,25 m, Hindered 6 % 3 s, 25 m / 10 s, 4 hallucinations, téléportation 25 s, Decoy 5 s : **OK** [12]. Taille « grande » : **FAUX** (Average [12]). Slashed Backpack « une hallucination touchée explose » : **IMPRÉCIS** (c'est l'UVX qui touche l'hallucination et la transforme en zone d'explosion [12]). NightLight 49,9 % : **NON VÉRIFIABLE**. Stat BHVR avril 2024 (64 % de kill au premier mois) : HISTORICAL [AUDIT].
- **Sources** : [1] [2] [8] [12] [17]

## 36. The Lich (Vecna) — archétype(s) : mobilité (Fly) | anti-loop (Mage Hand) | info (Dispelling Sphere, objets)
- **Version** : **9.0.0** (17/06/2025) : tous les sorts disponibles dès le début, cooldowns réduits (Fly 20 s, Flight of the Damned 30 s, Dispelling Sphere 30 s, Mage Hand 35 s), Fly 5 s, Sphere rapide puis lente, Killer Instinct 5 s (VERIFIED_MULTI_SOURCE [13][19]). **9.1.0** : correction du **temps affiché** de casse de Vorpal Sword (bugfix, [20]). 9.5.0 : descriptions de Ring of Telekinesis et Vorpal Sword réécrites [7]. Aucun changement de gameplay ensuite. Kill rate le plus élevé en MMR « broad » selon BHVR (KB 540, noms seulement) [AUDIT]. **Statut : LIVE 9.0.0.**
- **Données LIVE** (page wiki complète [13], STRONG_SECONDARY ; valeurs de 9.0.0 VERIFIED_MULTI_SOURCE [13][19]) :
  - Vitesse 4,6 m/s ; **TR 32 m** ; taille moyenne. 4,0 m/s pendant la charge d'un sort (0,2 s) ; 3,68 m/s pendant 2 s après un sort.
  - **Fly** : **8 m/s**, **5 s** max., ignore palettes abaissées et fenêtres ; ensuite **2,75 s sans pouvoir attaquer** ; cooldown **20 s**.
  - **Flight of the Damned** : **5** entités, 9 m/s, **22 m** (≈ 26 m de portée effective depuis le Lich), hauteur de vol 1,4 m → **ne touchent pas un survivant accroupi sur terrain plat** ; survivant abattu par le sort = Killer Instinct 5 s ; cooldown **30 s**.
  - **Dispelling Sphere** : **invisible pour les survivants** (sauf Archivist), 9,75 → 6,5 m/s en 3 s, rayon 6 m, dure 25 s ; contact → Killer Instinct **5 s** + objets magiques désactivés **45 s** ; cooldown **30 s**.
  - **Mage Hand** : portée **16 m** ; palette **debout** → bloquée **4 s** (après 0,35 s) ; palette **abaissée** → **relevée** en 0,5 s (après 0,5 s d'attente), puis 0,55 s pendant lesquelles le survivant ne peut pas la rabaisser ; cooldown **35 s**.
  - **6 Treasure Chests** (d20 : objets magiques, objets ordinaires vides ou à 50 %, Broken Key, Hand/Eye of Vecna sur un 20) ; **un coffre est un Mimic** qui saisit le survivant [18]. Chaque objet magique révèle l'aura du Lich **2 s** quand il lance le sort associé ; Interloper = Haste **+7 % pendant 4 s** au lancement de Mage Hand.
  - Hand / Eye of Vecna : coûtent un état de santé, Broken 30 s, Killer Instinct après usage ; un porteur avec 2 phases de crochet peut être exécuté (mini-mori) [13][18].
  - **Casse de palette (Vorpal Sword)** : Mage Hand **casse une palette abaissée au lieu de la relever**, en **4 s** (valeur codée ; la description en jeu affiche un peu moins, ≈ 0,8 s d'écart, [22]). **Ce n'est PAS une casse instantanée** (VERIFIED_MULTI_SOURCE : wiki [13][22] + note officielle 9.1.0 qui corrige « the wrong time for the Mage Hand to break downed pallets » [20]). → CONFLICT-L4G5-04 **RÉSOLU**.
- **Identification** :
  - Avant le reveal : Treasure Chests et objets magiques [13]. Leur présence identifie le tueur dès le début.
  - Pouvoir en action : vol au-dessus des obstacles ; entités fantomatiques ; une palette qui se relève ou reste bloquée ; Killer Instinct sans raison visible (Sphere invisible).
  - Add-on observable : une palette abaissée que la main **casse** au lieu de la relever = Vorpal Sword.
  - Stratégie probable : chases courtes grâce à Mage Hand, mobilité avec Fly (HEURISTIC).
- **Ce qu'il cherche en chase** : Mage Hand sur la palette **debout** au moment où tu veux la jeter (blocage 4 s) → coup quasi garanti ; ou Mage Hand sur la palette **abaissée** pour la relever et passer. Fly pour franchir une palette ou une fenêtre. Flight of the Damned dans un couloir (HEURISTIC, cohérent avec [13]).
- **Tiles / structures** :
  - Favorables : tiles avec **plusieurs palettes ou une fenêtre** en alternative, car Mage Hand n'agit que sur une palette à la fois puis part en cooldown 35 s (HEURISTIC fondé sur [13]).
  - Défavorables : palette unique et isolée. Open areas contre Fly et Flight of the Damned.
  - Fenêtres vs palettes : après un Mage Hand, la fenêtre devient la ressource sûre (HEURISTIC).
- **Mindgames propres** : Mage Hand gardé en réserve pendant que le survivant hésite à jeter. Fly utilisé comme feinte de direction. Palette relevée : le survivant peut la **rabaisser 0,55 s après** la levée — le Lich qui relève trop tôt s'expose à un stun (HEURISTIC fondé sur [13]).
- **Counterplay** :
  - Mécanique : **s'accroupir** face à Flight of the Damned sur terrain plat (FACT, STRONG_SECONDARY [13] : hauteur de vol 1,4 m). Jeter la palette **plus tôt** quand Mage Hand est disponible **puis partir** vers la tile suivante (HEURISTIC). Pourquoi « partir » : une palette abaissée ne le retient pas — Mage Hand la **relève** en ≈ 1 s (kit de base) ou la **casse en 4 s à distance** (Vorpal Sword) sans qu'il ait à s'arrêter pour la casser [13][22] ; le pré-drop sert à éviter le **blocage de 4 s** de la palette debout, pas à tenir la palette (KCH §2.2 b). Limites : Mage Hand en cooldown (35 s [13]) → drop normal ; contre un Lich qui garde Mage Hand et attend ton pré-drop, varier (départ sans drop, fenêtre alternative).
  - Positionnel : pendant les **2,75 s** après Fly où il ne peut pas attaquer [13], prendre de la distance vers un autre tile.
  - Macro : suivre les cooldowns (20/30/30/35 s). Hors sorts, c'est un M1 standard. La Sphere est invisible : un Killer Instinct soudain + objets magiques grisés = tu viens d'être détecté (FACT [13]).
  - Équipe : partager les objets magiques utiles (SWF ; en SoloQ, ne ramasser que ce qui sert à sa propre situation). Ouvrir un coffre ne déclenche pas de Killer Instinct dans le texte du pouvoir ; le risque réel est le **Mimic** (un coffre sur six) et l'add-on Robe of Eyes [13][18] (l'affirmation du seed « ouvrir un coffre peut révéler (Killer Instinct) » n'est pas confirmée).
- **Habitudes punissables / erreurs classiques** :
  - Attendre à la palette debout jusqu'au dernier moment quand Mage Hand est prêt.
  - Courir debout dans un couloir face aux entités.
  - Rester près d'une palette qu'il vient de relever sans la rabaisser.
  - (HEURISTIC)
- **Adaptations avancées** : Iridescent Book of Vile Darkness (voir ci-dessous) → le crouch ne protège plus : casser la LOS à la place (SITUATIONAL fondé sur [13]).
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur [13], STRONG_SECONDARY) :
  - **Vorpal Sword** (Mage Hand casse une palette abaissée en 4 s au lieu de la relever ; blessé dans la Sphere → Broken 30 s) → le survivant ne revient pas boucler sur une palette qu'il vient de jeter : elle disparaît quelques secondes plus tard ; il enchaîne vers une autre ressource au lieu de compter sur la même palette au tour suivant.
  - Iridescent Book of Vile Darkness (Flight of the Damned 0,7 m plus bas → touche les survivants accroupis, mais **2 entités seulement** ; Fly à travers une fenêtre la bloque 45 s) → le survivant se met derrière un obstacle au lieu de s'accroupir, et ne compte pas sur une fenêtre que le Lich a survolée.
  - Cloak of Elvenkind (TR −22 m pendant Fly et 6 s après) → le survivant ne se fie pas au TR pour anticiper un Fly : regarder en l'air.
  - Cloak of Invisibility (les 4 sorts en cooldown → Undetectable 20 s) → après une rafale de sorts, le survivant considère qu'il peut arriver sans TR.
  - Dragontooth Dagger (coup de base sur un porteur d'objet magique → Haemorrhage + Mangled 60 s) → le survivant ne ramasse un objet magique que s'il en a l'usage.
  - Staff of Withering (entrer dans la Sphere → Exhausted 30 s) → après un Killer Instinct de Sphere, le survivant ne compte pas sur sa perk d'exhaustion.
  - Ring of Spell Storing (−1 s sur toutes les recharges) / Pearl of Power (−2 s sur les recharges en cours à chaque coup de base) → gain faible : garder le suivi 20/30/30/35 s en ajustant de quelques secondes, **pas** de changement de stratégie (le seed exagérait l'effet).
- **Implications de carte** : maps ouvertes → Fly et Flight of the Damned plus forts. Terrain en pente → le crouch ne protège peut-être pas (le wiki précise « level terrain ») (HEURISTIC fondé sur [13]).
- **Perks fréquentes / synergies** : Pain Resonance, Surge, Dead Man's Switch, Barbecue & Chilli [seed, NON RE-VÉRIFIÉ, UNCERTAIN]. Ses enseignables : Dark Arrogance (vault et recovery plus rapides, mais stuns plus longs → un stun de palette rapporte plus de distance ; ⚠ valeurs du seed ch8 SUSPECTES PTB-comme-LIVE, CONFLICT-K96-01), Languid Touch (Exhausted si des corbeaux s'envolent près de toi → marcher autour des corbeaux), Weave Attunement (objets au sol + auras) (valeurs [seed, NON RE-VÉRIFIÉ, UNCERTAIN]).
- **Écart avec le seed** : « sorts dès le début (9.0.0) » : **OK** [13][19]. Fly 8 m/s 5 s 20 s 2,75 s ; Flight 30 s 5 entités 22 m ; Sphere 30 s / 45 s ; Mage Hand 35 s / 4 s ; 6 coffres : **OK** [13]. Casse de palette par Mage Hand + Vorpal Sword : **omise** par le seed (IMPRÉCIS) — et elle **n'est pas instantanée** (4 s, [13][20][22]) : l'étiquette « instantanée » venait de la table Pallets de l'audit phase 0, qui est donc **fausse sur ce point**. Ring of Spell Storing / Pearl of Power « cooldowns réduits → réduire le greed » : **IMPRÉCIS** (−1 s / −2 s). « Ouvrir un coffre révèle (Killer Instinct) » : **NON CONFIRMÉ** [13][18]. « N°1 tous MMR » : **OK en substance** [AUDIT]. Top 5 MMR élevé et NightLight 50,1 % : **NON VÉRIFIABLE**.
- **Sources** : [1] [2] [7] [13] [18] [19] [20] [22] [23]

## 37. The Dark Lord (Dracula) — archétype(s) : mobilité (chauve-souris) | ranged/zone (Hellfire) | anti-loop (loup)
- **Version** : ajustements **9.2.0** (Hellfire : cooldown 9,5 s au lieu de 10 s, 8 piliers au lieu de 7, charge à 3,68 m/s, recovery 2,35 s ; Pounce : charge 0,9 s ; Scent Orbs : 1 toutes les 6 s ; friction en chauve-souris ; passe d'add-ons) (VERIFIED_MULTI_SOURCE [14][17]). La portée de l'Hellfire passée de 8 à 10 m en 9.2.0 n'est donnée que par le wiki (STRONG_SECONDARY [14]). 9.5.0 : pouvoir classé « Special-break », descriptions de Pocket Watch et Sylph Feather réécrites [7]. 10.x : bugfixes seulement. **Statut : LIVE 9.2.0.**
- **Données LIVE** (page wiki complète [14], STRONG_SECONDARY sauf mention) :
  - Vitesse 4,6 m/s (vampire et loup) ; **6,5 m/s en chauve-souris** ; **TR 32 m** ; **berceuse 48 m** en chauve-souris (Undetectable) ; taille **grande** (Tall).
  - Changement de forme : cooldown **3,5 s** ; transition 1 s (depuis vampire/loup) ou **1,5 s depuis la chauve-souris**, à 2,3 m/s.
  - **Hellfire** (vampire) : charge **0,9 s** (à 3,68 m/s), **8 piliers** en ligne droite sur **10 m**, qui **passent au-dessus des obstacles bas** ; cooldown **9,5 s** (VERIFIED_PRIMARY [17]) ; après le tir, il repart de 2 m/s et retrouve sa vitesse en 2,35 s.
  - **Loup** : Scent Orbs laissées par chaque survivant (1 toutes les 6 s, durée 10 s, 5 max., aura à 12 m pour lui) ; en ramasser une → Haste **+4,35 % pendant 2,5 s (4,8 m/s)** et cooldown du Pounce −20 %. Les actions bruyantes (Loud Noise) déclenchent Killer Instinct 2 s en forme loup.
  - **Pounce** : charge 0,9 s (à 3,91 m/s), jusqu'à **2** bonds de 6 m (le 2e est annulé si le 1er touche un survivant ou un objet cassable) ; **toucher une palette abaissée ou un mur cassable pendant un Pounce le détruit** ; cooldown **20 s** (2,25 s de ralentissement si raté, 2,7 s si touché).
  - **Chauve-souris** : pas d'attaque ni d'interaction avec les survivants ; **les survivants lui sont invisibles**, mais leurs Scratch Marks restent visibles et leurs pas sont **50 % plus forts** ; survole palettes abaissées et fenêtres ; **téléportation vers une palette abaissée ou une fenêtre entre 2 et 32 m** (12 m/s), cooldown **15 s**.
- **Identification** :
  - Avant le reveal : **berceuse** (48 m) sans TR = chauve-souris ; Scent Orbs = forme loup [14].
  - Pouvoir en action : les trois silhouettes distinctes (vampire, loup, chauve-souris).
  - Stratégie probable : arrivée en chauve-souris sur un tile, puis loup ou vampire selon le tile (HEURISTIC).
- **Ce qu'il cherche en chase** : piliers d'Hellfire pour couper une sortie de boucle ou tirer par-dessus un obstacle bas ; Pounce du loup sur une palette abaissée ; arrivée en chauve-souris directement sur la palette ou la fenêtre du tile (HEURISTIC).
- **Tiles / structures** :
  - Favorables : tiles longs à plusieurs palettes (seed). **Obstacles hauts** qui cassent la ligne de l'Hellfire (les piliers passent au-dessus des obstacles bas [14]) (HEURISTIC).
  - Défavorables : couloirs droits (Hellfire, 10 m). Palettes isolées (loup).
  - Contre le loup, le **pré-drop est risqué** : un Pounce qui touche la palette abaissée la détruit immédiatement [14] (comme le Shred du Demogorgon, KCH §2.2) ; mais cette casse **consomme son Pounce** (cooldown 20 s, moins 20 % par Scent Orb) : après une casse, le survivant a une fenêtre sans Pounce pour atteindre la palette suivante (HEURISTIC fondé sur [14]). Contre le vampire, la palette redevient une ressource normale (HEURISTIC).
  - Fenêtres vs palettes : les palettes **abaissées** et les fenêtres sont des **points de téléportation** de la chauve-souris [14] : un tile dense en palettes déjà tombées lui sert aussi.
- **Mindgames propres** : changements de forme successifs (le cooldown de 3,5 s limite l'enchaînement). Hellfire pré-placé sur la sortie (HEURISTIC).
- **Counterplay** :
  - Mécanique : esquive **latérale** de l'Hellfire (ligne droite de 10 m, charge de 0,9 s) ; ne pas rester dans l'axe (HEURISTIC).
  - Positionnel : en chauve-souris il ne peut pas attaquer et doit repasser par **1,5 s de transformation à 2,3 m/s** avant de frapper [14] : c'est la fenêtre pour prendre de la distance quand il arrive par téléportation. Il **ne te voit pas** dans cette forme (Scratch Marks et pas seulement) : marcher supprime les Scratch Marks, mais les pas restent audibles et amplifiés (HEURISTIC fondé sur [14]).
  - Macro : ne pas laisser une traînée de Scent Orbs en ligne droite (seed). Casser le chemin ; éviter les actions bruyantes en forme loup (Killer Instinct 2 s) (HEURISTIC fondé sur [14]).
  - Équipe : annoncer la forme actuelle (HEURISTIC ; SWF — en SoloQ, la berceuse de chauve-souris et les Scent Orbs sont les seuls signaux partagés).
- **Habitudes punissables / erreurs classiques** :
  - Rester dans l'axe d'un vampire qui charge.
  - Tenir une palette abaissée seule contre un loup dont le Pounce est prêt.
  - Se croire en sécurité parce que la berceuse est loin (48 m, et une téléportation couvre 32 m à 12 m/s).
  - (HEURISTIC)
- **Adaptations avancées** : exploiter le cooldown de transformation. Juste après une transformation, il est bloqué dans cette forme pendant **3,5 s** [14] → choisir le tile adapté à la forme actuelle (SITUATIONAL). Après un Hellfire (cooldown 9,5 s) ou un Pounce (20 s), il n'a plus cet outil : c'est le moment de jouer le tile correspondant.
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur [14], STRONG_SECONDARY) :
  - Iridescent Ring of Vlad (les piliers se dirigent vers les survivants proches) → l'esquive latérale ne suffit plus : le survivant casse la LOS derrière un mur haut au lieu d'esquiver sur place.
  - Cube of Zoe (à chaque gen terminé, piliers en continu autour de lui pendant 10 s) → le survivant n'approche pas au corps à corps pendant les 10 s qui suivent un gen.
  - Alucard's Shield (piliers en continu dans la zone de la porte ouverte) → le survivant ne stationne pas dans l'encadrement de la porte ouverte ; il sort directement.
  - Warg's Fang (quand le Pounce redevient disponible, aura 5 s des survivants dont il a ramassé les orbes) → le survivant ne laisse pas d'orbes à portée et ne se cache pas en comptant sur l'absence de TR.
  - Pocket Watch (téléportation rechargée instantanément après une casse de palette) → après la casse d'une palette, le survivant s'attend à une nouvelle arrivée en chauve-souris sur la palette ou la fenêtre suivante.
  - Lapis Lazuli (fenêtre bloquée 8 s après une téléportation dessus) / Medusa's Hair (Hindered 8 % pendant 4 s à 8 m de la destination) → le survivant s'éloigne de la fenêtre ou de la palette où la chauve-souris arrive au lieu de la jouer.
  - Moonstone Necklace (TR −8 m en vampire et loup, 24 m) → le survivant ne juge pas la distance au TR.
- **Implications de carte** : maps denses en palettes et fenêtres → mobilité de la chauve-souris accrue (HEURISTIC). Chapitre Castlevania sorti le 27/08/2024 [14] ; map de chapitre non vérifiée.
- **Perks fréquentes / synergies** : Pain Resonance, Grim Embrace, Pop, Lethal Pursuer [seed, NON RE-VÉRIFIÉ, UNCERTAIN]. Ses enseignables : Hex: Wretched Fate (réparation plus lente pour l'Obsession → chercher le totem), Human Greed, Dominance (blocage de coffre ou de totem) (valeurs [seed, NON RE-VÉRIFIÉ, UNCERTAIN]).
- **Écart avec le seed** : 4,6 / 6,5 m/s, TR 32 m, berceuse 48 m, cooldown 3,5 s, Hellfire 0,9 s / 8 piliers / 10 m / 9,5 s, Pounce 2 bonds / 20 s, téléportation 2-32 m / 15 s : **OK** [14][17]. « 4,8 m/s en loup avec Scent Orbs » : **OK** (Haste 4,35 % pendant 2,5 s par orbe [14]) — l'ancien verdict « formulation suspecte » est levé. « Hellfire buffé en 9.2.x » : **OK** (9.2.0 [17]). Casse de palette en forme loup : **OK**, mais par un **Pounce qui touche la palette abaissée** (et qui consomme le Pounce) [14]. Le seed omet que les survivants lui sont **invisibles** en chauve-souris et la transformation de 1,5 s en sortie de chauve-souris : **IMPRÉCIS** (omission).
- **Sources** : [1] [2] [7] [14] [17] [23]

---

## Claims

Calculs dérivés (HEURISTIC, fondés sur les valeurs vérifiées) : Skull Merchant, survivant Claw-trapped scanné (Hindered 10 %) + elle en Haste 5 % → 3,6 contre 4,83 m/s, écart repris ≈ 1,23 m/s ; Singularity en Overheat (2,3 m/s, 3 s) → ≈ 5 m regagnés ; Xenomorph après une queue ratée (1,2 m/s, 2,5 s) → ≈ 7 m regagnés ; Good Guy à 4,4 m/s → 0,4 m/s repris, mais dash 8 m/s × 1,8 s ≈ 14,4 m contre 7,2 m → ≈ 7 m repris par dash.

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| L4G5-01 | Skull Merchant : rotation 105°/s, Hindered 10 % (Claw-trapped scanné, 6 s), cooldown de pose 7 s | [4] [5] | 9.3.0 | VERIFIED_MULTI_SOURCE |
| L4G5-02 | Skull Merchant : Undetectable 8 s au **rappel** d'un drone | [4] [6] | 9.3.2 | VERIFIED_MULTI_SOURCE |
| L4G5-02b | Skull Merchant : fast vault ne protège plus du scan ; sous un drone = +1 Lock-On / 2,5 s | [5] | 9.3.0 | VERIFIED_PRIMARY (texte de pouvoir du wiki périmé sur ces 2 points) |
| L4G5-03 | Skull Merchant : pas de changement de gameplay 9.3.2 → 10.1.2a | [4] [8] + notes 10.x | — | VERIFIED_MULTI_SOURCE |
| L4G5-04 | Skull Merchant TR 24 m (depuis 8.6.0), 4,6 m/s, taille moyenne | [4] | 8.6.0 | STRONG_SECONDARY |
| L4G5-04b | Skull Merchant : crouch ou immobilité = pas de détection ; drones 10 m, lignes visibles à 16 m, 3 stacks → blessure/Deep Wound + Broken + Claw Trap 45 s | [4] | LIVE | STRONG_SECONDARY |
| L4G5-05 | Good Guy : casse de palette par Scamper = Innate Skill **2v8** (9.4.2) | [15] | 9.4.2 | VERIFIED_PRIMARY |
| L4G5-05b | Good Guy en 1v4 : Scamper = vault spécial (1 s) sans casse ; casse seulement avec l'add-on **Hard Hat** | [7] [11] [23] | LIVE | VERIFIED_MULTI_SOURCE |
| L4G5-06 | Good Guy 4,4 m/s, TR 32 m, taille petite ; Hidey-Ho 14 s / 12 s ; Slice & Dice 8 m/s 1,8 s ; cooldown raté 2,25 s / touché 3 s | [11] | 8.6.0 | STRONG_SECONDARY |
| L4G5-07 | Unknown : UVX 6,25 s ; linger du Stare Down 0,75 s | [8] [12] | 9.6.0 | VERIFIED_MULTI_SOURCE |
| L4G5-08 | Unknown : Weakened +8 s si l'UVX blesse un sain ; recovery téléportation 1,3 s | [12] [17] | 9.2.0 | VERIFIED_MULTI_SOURCE |
| L4G5-08b | Unknown : taille moyenne, zone 2,25 m, Hindered 6 % 3 s, Stare Down 25 m / 10 s, 4 hallucinations, téléportation 25 s | [12] | LIVE | STRONG_SECONDARY |
| L4G5-09 | Lich : sorts dès le début ; cooldowns Fly 20 s, Flight 30 s, Sphere 30 s, Mage Hand 35 s ; Fly 5 s | [13] [19] | 9.0.0 | VERIFIED_MULTI_SOURCE |
| L4G5-09b | Lich : Mage Hand + Vorpal Sword casse une palette abaissée en **4 s** (pas instantané) ; sans Vorpal Sword, Mage Hand la **relève** | [13] [20] [22] [23] | 8.0.2 / 9.1.0 | VERIFIED_MULTI_SOURCE |
| L4G5-09c | Lich : Flight of the Damned (hauteur 1,4 m) ne touche pas un survivant accroupi sur terrain plat ; Iridescent Book l'abaisse de 0,7 m | [13] | LIVE | STRONG_SECONDARY |
| L4G5-10 | Lich : kill rate le plus élevé « broad » | [1] (KB 540) | — | VERIFIED selon l'audit (noms seulement) |
| L4G5-11 | Xenomorph ajouté au 2v8 (10.1.2), Innate Skills 2v8 ≠ 1v4 | [10] [16] | 10.1.2 | VERIFIED_MULTI_SOURCE |
| L4G5-11b | Xenomorph : TR 32 m / 24 m en Crawler ; queue 4,8 m ; 7 stations ; 18 m/s ; 4 tourelles ; 125 charges ; Crawler 35 s hors tunnel / ≈ 4,4 s en tunnel | [10] | 8.6.0 | STRONG_SECONDARY |
| L4G5-12 | Dark Lord : Hellfire 9,5 s, 8 piliers, charge à 3,68 m/s, recovery 2,35 s ; Pounce charge 0,9 s ; orbes 1 / 6 s | [14] [17] | 9.2.0 | VERIFIED_MULTI_SOURCE |
| L4G5-12b | Dark Lord : un Pounce qui touche une palette abaissée la détruit (pouvoir « Special-break ») | [7] [14] [23] | LIVE | VERIFIED_MULTI_SOURCE |
| L4G5-12c | Dark Lord : survivants invisibles en chauve-souris ; transformation depuis la chauve-souris 1,5 s ; téléportation 2-32 m / 15 s ; Hellfire 10 m | [14] | LIVE | STRONG_SECONDARY |
| L4G5-13 | Singularity : Overclock 5,7 s (+3 %, actions +75 %, immunité aux stuns) ; stun tenté ou palette traversée → palette cassée + **Overheat 3 s à −50 %** sans pods | [9] [23] | 8.1.0 | STRONG_SECONDARY |
| L4G5-13b | Singularity : Soma Family Photo Hindered 6 s ; téléportation dans le brouillard du Fog Vial | [5] [9] [21] | 9.3.0 / 9.1.2 | VERIFIED_MULTI_SOURCE / VERIFIED_PRIMARY |
| L4G5-14 | Perks enseignables, builds, stats NightLight des 7 fiches | [2] | — | UNCERTAIN / NON VÉRIFIABLE (hors périmètre du lot 12b) |

## Conflits

#### CONFLICT-L4G5-01 : TR de The Skull Merchant
- Source A : seed ch8 l. 1420, « TR : 24 m ».
- Source B : connaissance interne du modèle, 32 m (non sourcée).
- Source C : wiki.gg Adriana_Imai [4] : TR 24 m ; change log 8.6.0 « reduced the Terror Radius from 32 metres to 24 metres ».
- Résolution : **RÉSOLU — 24 m** (STRONG_SECONDARY [4]). La valeur 32 m était l'ancienne (avant 8.6.0) ; le seed avait raison.

#### CONFLICT-L4G5-02 : TR du Xenomorph en Crawler Mode
- Source A : seed, 24 m en Crawler.
- Source B : wiki.gg The_Xenomorph [10] : « Alternate Terror Radius 24 metres (Crawler Mode) » ; texte du pouvoir « Reduces its Terror Radius to 24 metres ».
- Résolution : **RÉSOLU — 32 m, 24 m en Crawler** (STRONG_SECONDARY [10]).

#### CONFLICT-L4G5-03 : Scamper de Good Guy qui casse les palettes en 1v4
- Source A : seed, « depuis 9.4.2 », présenté comme 1v4.
- Source B : note officielle 9.4.2 [15], section « Game Mode: 2v8 — The Good Guy - Innate Skills » : « Performing a Scamper under a pallet breaks it immediately ».
- Source C : audit phase 0, table Palettes (« Good Guy » parmi les destructions « instantanées » par pouvoir, sans condition).
- Source D : wiki.gg Charles_Lee_Ray [11] : le texte de pouvoir décrit le Scamper comme un passage sous la palette en 1 s, **sans casse** ; l'add-on **Hard Hat** « Instantly breaks Pallets, when performing a Scamper under them » ; l'Innate Skill 2v8 reprend la casse.
- Source E : wiki.gg Pallets [23] : « The Good Guy can destroy Pallets by Scampering underneath them […], **if the Hard Hat add-on is equipped** ».
- Source F : note officielle 9.5.0 [7] : Good Guy classé dans les pouvoirs « **Special-vault** » (pas « Special-break ») ; description de Hard Hat mise à jour.
- Résolution : **RÉSOLU — en 1v4, le Scamper ne casse PAS la palette en kit de base** ; seul Hard Hat le permet (VERIFIED_MULTI_SOURCE [7][11][15][23]). L'audit phase 0 avait omis la condition « add-on ».

#### CONFLICT-L4G5-04 : casse « instantanée » de palette par le Lich (Mage Hand + Vorpal Sword)
- Source A : audit phase 0, table Palettes : « destruction instantanée par pouvoir […] Lich (Mage Hand + Vorpal Sword) », STRONG_SECONDARY, « liste à reconfirmer ».
- Source B : wiki.gg Vecna [13] et Vorpal Sword [22] : Mage Hand « break dropped Pallets, instead of lifting them. This action takes **4 seconds** to complete » (3 s avant le nerf 8.0.2) ; la description en jeu affiche une valeur un peu plus courte (≈ 0,8 s d'écart, animation d'entrée/sortie).
- Source C : note officielle 9.1.0 [20] : « Fixed an issue where The Lich's Vorpal Sword add-on would display the wrong time for the Mage Hand to break downed pallets » (confirme qu'il existe une durée).
- Source D : wiki.gg Pallets [23] : le Lich « can destroy Pallets by using Mage Hand on them, if the Vorpal Sword add-on is equipped » (aucune mention d'instantanéité).
- Résolution : **RÉSOLU — casse à distance en 4 s, pas instantanée**, et uniquement avec Vorpal Sword (VERIFIED_MULTI_SOURCE [13][20][22][23]). L'étiquette « instantanée » de l'audit est fausse pour ce cas.

#### CONFLICT-L4G5-05 : Skull Merchant, texte de pouvoir du wiki vs note 9.3.0
- Source A : texte de pouvoir wiki [4] : « stands below an elevated Drone for longer than 1 second → instantly Locked On » ; « performing a Fast Vault […] cannot be detected ».
- Source B : note officielle 9.3.0 [5] : « For every 2.5 seconds spent standing underneath a Drone, the Survivor gains 1 Lock On (was instant) » ; « Removed the fast vault immunity to Scan Lines » ; le change log du même wiki [4] le confirme.
- Résolution : **RÉSOLU — la note officielle prime** (VERIFIED_PRIMARY [5]) : le texte de pouvoir du wiki n'a pas été mis à jour.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Skull Merchant TR | 24 m | 24 m depuis 8.6.0 [4] | OK |
| Skull Merchant, Undetectable au rappel d'un drone | absent | 8 s (9.3.2) [4][6] | IMPRÉCIS (omission) |
| Skull Merchant, fast vault n'immunise plus | oui | 9.3.0 [5] | OK |
| Skull Merchant, crouch/marche pour éviter le scan | « crouch ou marche » | crouch ou **immobile** [4] | IMPRÉCIS |
| Skull Merchant, Hindered 10 % | présenté comme général | seulement pour un survivant Claw-trapped scanné [4] | IMPRÉCIS |
| Skull Merchant, rework 2027 | confirmé | non | NON VÉRIFIABLE |
| Singularity, 8 pods / 22 m / 20 m / 6 m / Overclock 5,7 s / Overheat 3 s / 4 EMP / 10 m / 45 s | oui | [9] | OK |
| Singularity, « stunner pendant l'Overclock ne sert à rien » | oui | la tentative casse la palette mais le met en **Overheat 3 s à −50 %** sans pods [9] | FAUX |
| Singularity, palettes détruites par la téléportation | oui | oui, **avec Overheat 3 s** [9] | IMPRÉCIS (omission) |
| Xenomorph TR en Crawler | 24 m | [10] | OK |
| Xenomorph, queue 4,8 m / 7 stations / 18 m/s / 4 tourelles / 125 charges / crouch = non détecté | oui | [10] | OK |
| Good Guy, Scamper qui casse la palette en 1v4 (depuis 9.4.2) | oui | casse = Innate Skill 2v8 (9.4.2) ; en 1v4 seulement avec Hard Hat [7][11][15][23] | FAUX |
| Good Guy, « jouez le tile, pas la palette » | oui | la palette reste une ressource en 1v4 sans Hard Hat | IMPRÉCIS |
| Good Guy « très buffé début 2026 » | oui | buffs 2v8 [15] | IMPRÉCIS |
| Good Guy, 4,4 m/s / 32 m / Hidey-Ho 14 s-12 s / S&D 8 m/s 1,8 s / Scamper 1 s / Portable TV 170 % | oui | [11] | OK |
| Unknown UVX 6,25 s (9.6.0) | oui | [8][12] | OK |
| Unknown, taille | grande | moyenne (Average) [12] | FAUX |
| Unknown, Slashed Backpack | « une hallucination touchée explose » | l'UVX qui touche une hallucination la transforme en zone d'explosion [12] | IMPRÉCIS |
| Lich, sorts dès le début (9.0.0) et cooldowns 20/30/30/35 s | oui | [13][19] | OK |
| Lich n°1 tous MMR (BHVR) | oui | [AUDIT] | OK (noms seulement, sans chiffres) |
| Lich, casse de palette (Mage Hand + Vorpal Sword) | non mentionnée | casse à distance en 4 s, non instantanée [13][20][22] | IMPRÉCIS (omission) |
| Lich, Ring of Spell Storing / Pearl of Power | « cooldowns réduits » | −1 s / −2 s [13] | IMPRÉCIS (effet exagéré) |
| Lich, ouvrir un coffre révèle (Killer Instinct) | oui | non décrit ; risque réel = Mimic, Robe of Eyes [13][18] | NON CONFIRMÉ |
| Dark Lord, loup 4,8 m/s avec orbes | oui | Haste 4,35 % 2,5 s = 4,8 m/s [14] | OK |
| Dark Lord, Hellfire 0,9 s / 8 piliers / 10 m / 9,5 s « 9.2.x » | oui | 9.2.0 [14][17] | OK |
| Dark Lord, loup casse les palettes | oui | par un Pounce qui touche la palette abaissée [7][14][23] | OK |
| Dark Lord, invisibilité des survivants en chauve-souris | absente | [14] | IMPRÉCIS (omission) |
| Stats NightLight (Xeno 41,5/58,8 %, Unknown 49,9 %, Lich 50,1 %) | oui | non | NON VÉRIFIABLE (ni échantillon ni date) |

## Questions ouvertes

1. Perks enseignables des 7 tueurs : valeurs LIVE à re-vérifier (le wiki affiche déjà les versions PTB 10.2.0 ; il faut une source antérieure au 15/09/2026 ou attendre la sortie de 10.2.0).
2. Skull Merchant : le survivant peut-il retirer manuellement un Claw Trap ? Le texte de pouvoir ne décrit que l'extinction de la batterie (45 s), mais l'add-on Infrared Upgrade parle d'un retrait.
3. Xenomorph : la queue passe-t-elle au-dessus des palettes et des fenêtres dans tous les cas ? Le wiki ne le dit pas explicitement.
4. Unknown : les tirs en cloche de l'UVX sont-ils limités en intérieur à plafond bas ? Non documenté.
5. Aucune source EXPERT_OPINION (guides survivants écrits, VOD) n'a pu être consultée : tout le counterplay de ce fichier reste HEURISTIC, fondé sur des valeurs désormais vérifiées.
6. La table « Palettes » de `audit_phase0.txt` doit être corrigée dans les ledgers (Good Guy : Hard Hat requis ; Lich : 4 s, non instantané) — hors du périmètre de ce fichier.

## Sources

[1] Audit phase 0 (historique des patchs 9.0.0 → 10.1.2a, référence vérifiée) — `kb/seed/audit_phase0.txt` — lu le 27/09/2026 (fichier local).
[2] Guide seed, chapitre 8 (brouillon non fiable) — `kb/seed/ch8_killers.txt` l. 1-256 et 1419-1663 — lu le 27/09/2026 (fichier local).
[3] Outdated content report — `kb/ledgers/OUTDATED_CONTENT_REPORT.md` l. 48 — lu le 27/09/2026 (fichier local).
[4] wiki.gg, Adriana Imai (The Skull Merchant) — https://deadbydaylight.wiki.gg/wiki/Adriana_Imai — page complète via API, consultée le 27/09/2026 (`kb/sources/wiki_killers/Adriana_Imai.txt`).
[5] BHVR, 9.3.0 | Mid-Chapter — https://forums.bhvr.com/dead-by-daylight/kb/articles/529 — consulté le 27/09/2026 (fichier local).
[6] BHVR, 9.3.2 | Bugfix Patch — https://forums.bhvr.com/dead-by-daylight/kb/articles/530 — consulté le 27/09/2026 (fichier local).
[7] BHVR, 9.5.0 | All-Kill: Comeback (Killer Actions Update : Special-break / Special-vault) — https://forums.bhvr.com/dead-by-daylight/kb/articles/538 — consulté le 27/09/2026 (fichier local).
[8] BHVR, 9.6.0 | Patch Notes — https://forums.bhvr.com/dead-by-daylight/kb/articles/544 — consulté le 27/09/2026 (fichier local).
[9] wiki.gg, HUX-A7-13 (The Singularity) — https://deadbydaylight.wiki.gg/wiki/HUX-A7-13 — page complète via API, consultée le 27/09/2026.
[10] wiki.gg, The Xenomorph — https://deadbydaylight.wiki.gg/wiki/The_Xenomorph — page complète via API, consultée le 27/09/2026.
[11] wiki.gg, Charles Lee Ray (The Good Guy) — https://deadbydaylight.wiki.gg/wiki/Charles_Lee_Ray — page complète via API, consultée le 27/09/2026.
[12] wiki.gg, The Unknown — https://deadbydaylight.wiki.gg/wiki/The_Unknown — page complète via API, consultée le 27/09/2026.
[13] wiki.gg, Vecna (The Lich) — https://deadbydaylight.wiki.gg/wiki/Vecna — page complète via API, consultée le 27/09/2026.
[14] wiki.gg, Dracula (The Dark Lord) — https://deadbydaylight.wiki.gg/wiki/Dracula — page complète via API, consultée le 27/09/2026.
[15] BHVR, 9.4.2 | Bugfix Patch (2v8 : The Good Guy - Innate Skills) — https://forums.bhvr.com/dead-by-daylight/kb/articles/536 — consulté le 27/09/2026 (fichier local).
[16] BHVR, 10.1.2 Bugfix Patch (2v8 : The Xenomorph - Innate Skills) — https://forums.bhvr.com/dead-by-daylight/kb/articles/558 — consulté le 27/09/2026 (fichier local).
[17] BHVR, 9.2.0 | Sinister Grace (Unknown, Dark Lord) — https://forums.bhvr.com/dead-by-daylight/kb/articles/523 — consulté le 27/09/2026 (fichier local).
[18] wiki.gg, Treasure Chest — https://deadbydaylight.wiki.gg/wiki/Treasure_Chest — via `kb/tools/wiki_text.py`, consulté le 27/09/2026.
[19] BHVR, 9.0.0 | Five Nights at Freddy's (The Lich) — https://forums.bhvr.com/dead-by-daylight/kb/articles/510 — consulté le 27/09/2026 (fichier local).
[20] BHVR, 9.1.0 | The Walking Dead (bugfix Vorpal Sword) — https://forums.bhvr.com/dead-by-daylight/kb/articles/516 — consulté le 27/09/2026 (fichier local).
[21] BHVR, 9.1.2 | Bugfix Patch (Fog Vial / Singularity) — https://forums.bhvr.com/dead-by-daylight/kb/articles/519 — consulté le 27/09/2026 (fichier local).
[22] wiki.gg, Vorpal Sword — https://deadbydaylight.wiki.gg/wiki/Vorpal_Sword — via `kb/tools/wiki_text.py`, consulté le 27/09/2026.
[23] wiki.gg, Pallets (section destruction par pouvoir) — https://deadbydaylight.wiki.gg/wiki/Pallets — via `kb/tools/wiki_text.py`, consulté le 27/09/2026.
