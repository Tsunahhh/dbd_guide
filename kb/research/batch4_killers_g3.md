# Lot 4 — Fiches tueurs (côté SURVIVANT) — groupe 3 : tueurs 16 à 22

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) + RE-VÉRIFIÉ (lot 12b, 27/09/2026) sur pages wiki complètes et notes officielles BHVR lues en local.** Voir aussi kb/audit/pass14_lot4_g1-g3.md.

**Couverture : 7/7 tueurs re-vérifiés sur page wiki complète (27/09/2026), dont 27 points confirmés par note officielle** (Claims marqués VERIFIED_PRIMARY ou VERIFIED_MULTI_SOURCE). Il reste 4 conflits ouverts, tous mineurs : coût exact d'une casse de palette pour la Blight à 3 tokens ou moins, délai avant les orbes de l'Oni après un décrochage, stats des Twins en 2026, totaux d'Undetectable des add-ons du Demogorgon.

- Périmètre : Ghost Face, Demogorgon, Oni, Deathslinger, Executioner, Blight, Twins (seed `kb/seed/ch8_killers.txt` l. 845-1093).
- Référence : patch LIVE 10.1.2a (17/09/2026). PTB 10.2.0 = **non LIVE**. Date de travail : 27/09/2026.
- Légende conseils : FACT (valeur lue sur la page wiki complète et/ou une note officielle, source citée) / FACT de principe (mécanique décrite qualitativement par la source) / HEURISTIC / SITUATIONAL / HYPOTHESIS. Notes de menace = HEURISTIC. (P14 : EXPERT OPINION retirée de la légende, aucune source experte n'ayant été lue.)

> **Méthode du lot 12b (remplace l'avertissement « 0 recherche » du lot 4)**
> - Pages wiki complètes (texte intégral via l'API wiki.gg, consultées le 27/09/2026) : `kb/sources/wiki_killers/<Nom>.txt` [4]-[10]. Une page supplémentaire a été lue via `kb/tools/wiki_text.py` : « Cages of Atonement » [11].
> - Notes officielles BHVR : `kb/sources/patches/official_<id>.txt` [12]-[24].
> - Confiance : STRONG_SECONDARY = page wiki complète ; VERIFIED_MULTI_SOURCE = wiki + note officielle concordantes ; VERIFIED_PRIMARY = note officielle explicite. Les notes 8.x (ex. TR de la Blight et du Ghost Face au 8.6.0) ne sont **pas** disponibles en local : ces valeurs restent STRONG_SECONDARY (change log du wiki).
> - **PTB 10.2.0** [23] : aucune modification de pouvoir pour ces 7 tueurs (seulement une correction pour les Twins et un « known issue » pour le Demogorgon). Les pages wiki affichent déjà Dead Man's Switch et Hex: Blood Favour en version 10.2.0 : ces valeurs ne sont pas LIVE et sont ignorées ici.
> - **2v8** : les changements « The Oni » et « The Deathslinger » de la note 9.6.0, et « The Ghostface » et « The Executioner » (largeur de l'onde +2 m) de la note 10.1.2, sont listés sous « Game Mode: 2v8 ». Ils ne s'appliquent **pas** en 1v1 et ne sont pas repris comme valeurs LIVE ci-dessous.
> - Aucune source experte ni VOD n'a été consultée : les conseils restent des **HEURISTIC** (connaissance générale du jeu), vérifiés seulement contre les valeurs ci-dessous.

### Règles d'usage et faits transversaux (ajout audit P14, mis à jour lot 12b)
- **Options par défaut, pas règles (§26)** : chaque « Counterplay » décrit l'option par défaut contre un joueur qui utilise normalement son pouvoir. Un tueur expérimenté l'anticipe (Blight qui attend le pré-drop ou contourne, Demogorgon qui garde le Shred chargé, Deathslinger qui tient la visée, Ghost Face qui feinte l'abandon) : s'il exploite ta réponse habituelle, **varier**.
- **SoloQ / SWF (§25)** : « annoncer sa position / les portails », « désigner le sauveteur le plus proche », « un survivant écraseur de Victor », « compter ses Rushes » supposent le vocal. En **SoloQ** : se fier au HUD (qui est en chase, au crochet, au sol), aux sons de pouvoir et aux auras de perks, et agir soi-même quand on est le plus proche ; en **SWF** : annoncer et répartir les rôles.
- **Casses de palette par pouvoir** : VERIFIED_PRIMARY. La note 9.5.0 [16] classe en « Special-break » (palette baissée ou mur cassé par le pouvoir) les pouvoirs du Demogorgon, de l'Oni et de la Blight, et **pas** ceux de l'Executioner, des Twins ou du Deathslinger. L'Executioner ne casse qu'avec l'add-on **Obsidian Goblet** : l'onde casse alors palettes et murs au contact [8], et les notes 9.1.0 [13] et 9.5.0 [16] y font référence (VERIFIED_MULTI_SOURCE). Détail : ces casses se font au contact, sans l'action de casse de 2,34 s, mais sont suivies d'un cooldown (Shred 1,8 s, Lethal Rush 2,5 s) [5][9].
- **TR : les exceptions sont confirmées** (STRONG_SECONDARY, change logs wiki) : Ghost Face 24 m (32 → 24 m au 8.6.0) [4] ; Deathslinger 32 m (24 → 32 m au 5.3.0) [7] ; **Blight 40 m** (32 → 40 m au 8.6.0) [9]. La « règle d'origine » de l'audit (32 m à 4,6 m/s, 24 m à 4,4 m/s) ne s'applique à aucun de ces trois tueurs. L'indice P14 qui faisait pencher la Blight vers 32 m était **faux**.
- **Statuts utiles (FACT [AUDIT])** : Exposed = une attaque de base met à l'état mourant ; l'Endurance protège aussi contre l'Exposed (Deep Wound à la place), sauf si le survivant est déjà sous Deep Wound, et elle saute sur une action voyante ; Deep Wound = 20 s en pause en courant ou en mending, mending 10 s seul / 6 s à deux, un dégât sous Deep Wound = état mourant ; accroupi 1,13 m/s, marche 2,26 m/s, course 4,0 m/s. Protections au décrochage LIVE : 10 % Haste + Endurance **10 s** + Elusive 10 s (10.1.0 [20], VERIFIED_PRIMARY ; 15 s entre 9.3.0 et 10.1.0).
- **LIVE / PTB** : perks citées ci-dessous et modifiées au **PTB 10.2.0** (non LIVE, `deliverables/PERK_DATABASE.md` §1.4) : Spine Chill (rework), Dead Man's Switch (30/35/40 s au PTB), Hex: Blood Favour ; Dead Hard est UNCERTAIN dans la base de perks. Garder les valeurs LIVE 10.1.2a jusqu'à la sortie.
- **Cartes** : les « Implications de carte » ne tiennent pas compte des changements de palettes 9.2.0 / 9.3.0 / 9.3.2 [1] (HEURISTIC, lots 7-8).
- **DRILL** : utiliser DR-15 « Counterplay d'un tueur » (`kb/research/batch11_training.md` §3).

---

## 16. The Ghost Face (Danny Johnson) — archétype(s) : furtif | M1 | info
- **Version** : 9.5.0, reveal « plus précis » à 18 m ou moins [16] ; 9.6.0, recharge de Night Shroud 17 → 15 s et Walleye's Matchbook −3 → −2 s [17] ; 9.6.1, vitesse accroupi 3,8 → 4,0 m/s [18]. Confiance : VERIFIED_PRIMARY, concordant avec le change log wiki [4]. La ligne « The Ghostface » de la note 10.1.2 [21] concerne le **2v8 uniquement**. PTB 10.2.0 : aucun changement. Statut LIVE.
- **Données LIVE** (page wiki [4], STRONG_SECONDARY sauf mention) :
  - Vitesse 4,6 m/s ; **accroupi 4,0 m/s** (VERIFIED_MULTI_SOURCE [4][18]) ; **TR 24 m** (32 → 24 m au 8.6.0 d'après le change log wiki) ; taille moyenne ; pas de berceuse. Calcul P14 : accroupi, il va **exactement à ta vitesse de course** (4,0 m/s). En courant, tu gardes l'écart sans en gagner. En marchant (2,26 m/s), il te reprend 1,74 m/s, soit ~17 m en 10 s ; accroupi (1,13 m/s), il te reprend 2,87 m/s. Marcher pour ne pas laisser de griffures face à un Ghost Face accroupi proche coûte donc cher.
  - Night Shroud : **Undetectable** (pas de TR ni de red stain). Une attaque de base met fin au mode et vide la jauge. Recharge **15 s** (VERIFIED_MULTI_SOURCE [4][17]), qui démarre 1,5 s après.
  - Stalk : portée 40 m, 22,5 pts/s, soit un marquage en ~4,4 s. **Deux fois plus rapide en se penchant** derrière un couvert (45 pts/s, ~2,2 s). Aucune pénalité de distance. Pendant le stalk actif, il se déplace à 0,76 m/s (accroupi) ou 0,92 m/s (debout).
  - Marked (100 pts) : **Exposed 60 s**, et le survivant Marked **ne peut plus le révéler**.
  - Reveal : il faut voir au moins 30 % de son modèle dans la zone centrale de l'écran, à **32 m** ou moins, pendant **1,5 s**. La progression régresse si la LOS est perdue ; elle ne retombe pas à zéro. Effets : fin du Night Shroud, marqueurs de direction sur son HUD et **Killer Instinct 4 s** après le reveal. Que ce Killer Instinct vise le survivant révélateur est une HYPOTHESIS logique : la page ne nomme pas la cible.
- **Identification** :
  - Avant le reveal : pas de TR, pas de berceuse, pas de red stain en Night Shroud (FACT [4]). Seul indice sonore : le froissement de vêtements, le son de proximité ayant été retiré au 3.0.1 [4]. Spine Chill qui s'allume sans TR : UNCERTAIN (effet contre Undetectable non vérifié ; rework au PTB 10.2.0). Corbeaux qui s'envolent : **réserve P14**, l'audit indique que les corbeaux ne s'envolent pas « pour certains tueurs furtifs » (liste non lue). L'absence de corbeaux ne prouve donc rien, et leur envol reste un indice faible (HEURISTIC).
  - Pouvoir en action : silhouette accroupie ou penchée derrière un coin ; notification quand vous le révélez.
  - Stratégie probable : marquer les survivants concentrés (gen, soin, décrochage) puis one-shot l'Exposed ; souvent un build d'info ou de régression (ses perks : I'm All Ears, Thrilling Tremors, Furtive Chase [4]) — HEURISTIC.
- **Ce qu'il cherche en chase** : vous faire tourner autour d'une tile opaque pendant qu'il stalke penché (~2,2 s de LOS suffisent pour l'Exposed, calcul [4]), puis un M1 = down direct — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles avec une LOS dégagée sur ses angles de lean (fenêtres, filler bas), où vous le voyez en premier — HEURISTIC.
  - Défavorables : murs hauts et rochers épais (il se penche et stalke hors de votre vue), zones intérieures à nombreux coins (Midwich, Hawkins) — HEURISTIC/SITUATIONAL.
  - Fenêtres vs palettes : standard en M1 hors Exposed ; une fois Marked, une palette tardive devient risquée (le coup vous met à terre) — HEURISTIC.
- **Mindgames propres** : faux abandon de chase puis retour accroupi en Undetectable (à 4,0 m/s, il vous suit sans perdre de terrain) ; lean « fake » d'un côté puis contournement — HEURISTIC.
- **Counterplay** :
  - Mécanique : tourner régulièrement la caméra derrière soi sur un gen ; le révéler dès qu'il apparaît à 32 m ou moins (1,5 s de visée, FACT [4]), ce qui casse son pouvoir pour 15 s. Coût : il reçoit votre direction et 4 s de Killer Instinct, donc après un reveal, changer d'angle ou de position — HEURISTIC.
  - Positionnel : réparer face aux accès probables ; éviter de rester dos à un mur ouvert — HEURISTIC.
  - Macro : annoncer sa position (SWF) ; en SoloQ, surveiller les auras de coéquipiers qui décrochent brutalement d'un gen — HEURISTIC.
  - Équipe : un coéquipier qui regarde vers vous peut le révéler — HEURISTIC.
- **Habitudes punissables** : réparer ou soigner longtemps sans tourner la caméra ; décrocher « à l'aveugle » sans vérifier les abords (pas de TR ≠ pas de tueur) — HEURISTIC. **Erreur classique** : croire qu'il est loin parce qu'il n'y a pas de TR.
- **Adaptations avancées** :
  - Une fois Marked, jouer « comme si Exposed » pendant 60 s : pré-drop plus tôt, pas de tile à mindgame serré. Inutile de chercher à le révéler, puisqu'un Marked ne le peut plus (FACT [4]) : jouer la distance.
  - Interaction (FACT [AUDIT]) : un survivant Marked qui vient d'être décroché garde l'Endurance basekit 10 s, qui transforme le coup Exposed en Deep Wound, tant qu'il ne fait pas d'action voyante.
  - Contre un Ghost Face qui stalke en chase, casser la LOS vers ses angles de lean plutôt que courir tout droit — HEURISTIC. Le counterplay habituel échoue dans les zones sombres ou encombrées, où le reveal est difficile.
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur [4] ; Walleye's Matchbook confirmé par [17]) :
  - Leather Knife Sheath (+10 % de vitesse accroupi, soit ~4,4 m/s, calcul) → accroupi, il **vous rattrape** en course : quitter la zone tôt ou casser la LOS, au lieu de compter sur « il ne gagne pas de terrain accroupi ».
  - Knife Belt Clip (TR −12 m accroupi, soit 12 m) → un TR qui apparaît signifie qu'il est déjà tout proche : réagir tout de suite au lieu de le croire à 24 m.
  - « Ghost Face Caught on Tape » (Iri : recharge instantanée après une mise à terre par attaque de base) ou Olsen's Wallet (recharge instantanée après une casse de palette ou de mur) → après un down ou une casse, s'attendre à un Undetectable immédiat : tourner la caméra au lieu de reprendre le gen « parce qu'il est en recharge ».
  - Cinch Straps (Night Shroud conservé après une attaque ratée) → une attaque esquivée ne le rend pas visible : continuer à le suivre du regard au lieu de se croire à l'abri du stalk.
  - Night Vision Monocular (Exhausted 10 s après l'avoir révélé) ou Telephoto Lens (Oblivious 60 s après l'avoir révélé) → révéler a un coût : ne révéler que si c'est vous qu'il approche, sinon s'éloigner hors de sa vue.
  - Olsen's Journal (les Marked sont Oblivious) → une fois Marked, ignorer complètement le TR et jouer à la vue.
  - Driver's License (quand il marque un survivant qui répare, le gen explose, perd 20 % et reste bloqué 15 s) → contre lui, lâcher le gen dès qu'il stalke au lieu de « finir la barre ».
  - Outdoor Security Camera (auras de tous les survivants 7 s après la mise à terre d'un Marked) → au down d'un Marked, ne pas compter sur la cachette pendant 7 s : bouger derrière des LOS blockers.
  - Walleye's Matchbook (−2 s, soit 13 s de recharge ; VERIFIED_PRIMARY [17]) : effet mineur, aucune adaptation.
- **Implications de carte** : cartes intérieures ou à coins (Midwich, Hawkins, Lery's, RPD) favorisent le stalk ; cartes ouvertes favorisent le reveal — HEURISTIC/SITUATIONAL.
- **Perks fréquentes / synergies** : seed : Pain Resonance, Grim Embrace, Lethal Pursuer, Furtive Chase — fréquence NON VÉRIFIABLE. Côté survivant, Spine Chill est souvent citée comme contre-info contre Undetectable : UNCERTAIN (corrigé P14, était « de référence » ; son effet contre Undetectable n'est pas vérifié ; rework au PTB 10.2.0, non LIVE). La caméra reste l'info la plus sûre ; Distortion est peu utile (il ne voit pas d'auras par défaut, sauf add-ons ci-dessus) — HEURISTIC.
- **Écart avec le seed** : accroupi 4,0 m/s (9.6.1) OK ; recharge 17 → 15 s (9.6.0) **OK, VERIFIED_PRIMARY** ; Exposed 60 s OK ; portée de stalk 40 m OK ; reveal ~1,5 s OK (portée 32 m) ; TR 24 m OK ; tier « C (A chez propelrc) » NON VÉRIFIABLE.
- **Sources** : [4], [16], [17], [18], [21], [1], [2].

## 17. The Demogorgon — archétype(s) : mobilité | anti-loop | info
- **Version** : buffs 9.6.0 [17] : Shred 18,4 → 19 m/s, virage du Shred **27,5 → 55 °/s**, Undetectable en sortie de portail **5 → 12 s**. Confiance : VERIFIED_PRIMARY, concordant avec le change log wiki [5]. Le wiki écrit « 18,3 m/s » et « 26,5 °/s » pour les anciennes valeurs, et son infobox affiche encore 18,4 m/s : la note officielle prime. 9.5.0 : pouvoir classé « Special-break » [16]. 9.6.2 : correction de Red Moss, qui ne coupait pas le gargouillis de sortie [19]. PTB 10.2.0 : « known issue » seulement. Statut LIVE.
- **Données LIVE** (page wiki [5], STRONG_SECONDARY sauf mention) :
  - Vitesse 4,6 m/s, **TR 32 m**, grand, pas de berceuse. En canalisant Of the Abyss : **3,86 m/s**.
  - Shred : charge 1 s. Relâché avant 65 % de charge, c'est un simple lunge. Bond à **19 m/s** (VERIFIED_MULTI_SOURCE). Détruit les palettes baissées et les murs cassables (cooldown 1,8 s ; Special-break VERIFIED_PRIMARY [16]). Cooldowns : Shred raté 2,25 s, réussi 2,7 s ; annuler un Shred chargé coûte 0,45 s.
  - Portails : capacité 6. Posé, un portail est **inactif** : invisible pour les survivants, non scellable, sans zone d'effet. Quand il traverse, le portail de départ et celui d'arrivée deviennent **actifs** : visibles, scellables, avec une zone de 4 m où les survivants sont **Oblivious en permanence** et révélés par Killer Instinct pendant qu'il canalise. Traversée à 32 m/s, entrée 1,35 s, recharge du pouvoir 10 s, sortie en **Undetectable 12 s** (VERIFIED_MULTI_SOURCE). Bruit de portail : 8 m. Pose interdite à moins de 2,5 m d'une palette, 4 m d'une porte de sortie ou d'un crochet, et 8 m d'un autre portail.
  - Scellement : **12 s seul**, ~9 s à deux (efficacité −33 %), 8 s à trois, 6 s à quatre. Le portail en cours de scellement montre son aura aux autres survivants et émet un son global. Un portail scellé retourne dans son inventaire : il peut le reposer.
- **Identification** : TR 32 m ; portails actifs visibles ; posture de charge du Shred (il se ramasse avant de bondir) ; son de sortie de portail (sauf Red Moss) — FACT [5] + HEURISTIC.
  - Stratégie probable : réseau de portails autour du 3-gen et des crochets centraux, arrivée Undetectable sur un gen — HEURISTIC.
- **Ce qu'il cherche en chase** : un Shred sur une ligne droite, ou une palette pré-lâchée qu'il détruit sans perte de temps (1,8 s de cooldown seulement) — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles à murs hauts qui cassent la LOS et forcent des virages serrés ; fenêtres (le Shred ne franchit pas une fenêtre) — HEURISTIC.
  - Défavorables : longues lignes droites, zones ouvertes, palettes pré-lâchées (cassées au Shred) — HEURISTIC.
- **Mindgames propres** : charge de Shred tenue puis relâchée en M1 (avant 65 % = lunge normal) ; faux repli vers un portail — HEURISTIC.
- **Counterplay** :
  - Mécanique : pendant la charge, il avance à 3,86 m/s contre 4,0 m/s pour vous (FACT [5]). Prendre de la distance ou couper la ligne ; changer de direction au moment de la détente. Depuis 9.6.0, son virage en Shred est doublé (55 °/s) : les esquives latérales tardives rapportent moins qu'avant — HEURISTIC fondé sur un FACT [17].
  - Positionnel : ne pas pré-lâcher trop tôt ; lâcher la palette quand il est engagé dans une animation — HEURISTIC.
  - Macro : sceller les portails actifs proches des gens clés. Seul : 12 s ; à deux : ~9 s, donc deux survivants mobilisés pour ne gagner que 3 s (FACT [5]). À deux seulement si le second n'a rien de mieux à faire ; en SoloQ, cela retire souvent un réparateur d'un gen. Toute sortie de portail = 12 s d'Undetectable : vérifier les abords du gen après sa disparition — FACT + HEURISTIC.
  - Près d'un portail actif (4 m), vous êtes Oblivious : pas de TR même s'il est proche. Ne pas réparer ou soigner collé à un portail actif — FACT [5] + HEURISTIC.
  - Équipe : annoncer les portails actifs ; le sceau d'un portail près du 3-gen vaut plus que celui d'un portail excentré. Le son de scellement est entendu par tous les survivants, donc inutile de l'annoncer en SoloQ — HEURISTIC.
- **Habitudes punissables** : réparer près d'un portail actif ; pré-drop systématique ; courir en ligne droite en open. **Erreur classique** : croire qu'un tueur « disparu » est parti loin (12 s d'Undetectable depuis 9.6.0).
- **Adaptations avancées** : quand le Shred est chargé, rester collé à l'obstacle (il ne peut pas « couper » un mur haut). Son virage a bien été doublé (27,5 → 55 °/s, VERIFIED_PRIMARY) : les dodges tardifs marchent moins que contre l'ancien Demogorgon — HEURISTIC.
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur [5]) :
  - Red Moss (Undetectable +8 s, bruits de sortie supprimés, sortie 15 % plus lente) → ne plus compter sur le son d'émergence : surveiller visuellement les abords des gens pendant ~20 s après chaque sortie, au lieu des 12 s habituelles. Le total de ~20 s est un calcul (12 + 8) : le wiki affiche « to 13 seconds », texte d'avant 9.6.0 (UNCERTAIN, CONFLICT-B4G3-07).
  - Vermilion Webcap (+3 s) ou Violet Waxcap (+1 s) → même adaptation, marge plus courte.
  - Lifeguard Whistle (+2 portails, soit 8) ou Mews' Guts (+1 portail) → prioriser le scellement des portails près des gens clés au lieu de laisser le réseau grandir.
  - Deer Lung (−2 portails, soit 4 ; traversée +30 %) → chaque scellement pèse plus : sceller dès que possible.
  - Leprose Lichen (auras de tous pendant la traversée, qui persistent 3 s pour les survivants à 16 m ou moins d'un portail actif) → pendant ses traversées, ne pas compter sur la cachette ; s'éloigner des portails actifs.
  - Brass Case Lighter (Blindness 60 s après avoir scellé) → sceller coûte vos auras : sceller quand même si le portail menace le 3-gen, sinon laisser.
  - Upside Down Resin (+20 %), Viscous Webbing (+10 %), Thorny Vines (+8 % et zone +1 m) → scellement plus long : ne sceller que les portails prioritaires.
  - Sticky Lining (zone +2,5 m, soit 6,5 m) → zone d'Oblivious plus large : s'éloigner davantage des portails actifs.
  - Barb's Glasses (−10 % de cooldown après une casse au Shred) → le pré-drop devient encore moins rentable : garder la palette debout.
- **Implications de carte** : grandes cartes = plus de valeur pour les portails ; cartes à nombreux murs hauts = Shred limité — HEURISTIC.
- **Perks fréquentes / synergies** : Surge (nom actuel, ex-Jolt ; perks de la page : Surge, Mindbreaker, Cruel Limits [5]) ; téléportation → perks de régression à distance — HEURISTIC.
- **Écart avec le seed** : Shred 19 m/s OK ; Undetectable 12 s OK ; « 5 s avant 9.6.0 » **OK (VERIFIED_PRIMARY)** ; virage « doublé » à 55 °/s **OK (VERIFIED_PRIMARY)** ; Oblivious près des portails actifs **OK** (zone de 4 m) ; 6 portails, 8 avec Lifeguard Whistle **OK** ; scellement 12 s seul **OK**.
- **Sources** : [5], [16], [17], [19], [23], [1], [2].

## 18. The Oni (Kazan Yamaoka) — archétype(s) : M1 | mobilité | coup unique (Fury)
- **Version** (tranche du lot 12b) :
  - 9.1.0 [13] : « Increased the Demon Strike turn rate limit during the open phase of the attack to 540 degrees (was disabled) ». La limite de rotation de la Demon Strike, supprimée au 8.7.0, est **rétablie** à 540° pendant la phase d'ouverture. Le wiki [6] le classe en **Nerf**. VERIFIED_MULTI_SOURCE.
  - 9.2.0 [14] : orbes de sang générés au crochet **2 → 5**. C'est le vrai buff, annoncé par la Developer Update d'août 2025 [24] comme compensation des mesures anti-slug. VERIFIED_MULTI_SOURCE.
  - 9.5.0 [16] : pouvoir classé « Special-break » (casse de palettes baissées et de murs).
  - 9.6.0 [17] : « perte de 10 s de Demon Mode par down » est une ligne **2v8 uniquement**. En 1v1, la pénalité reste 7 s [6].
  - → Les « buffs Oni 9.1.0 » de l'audit et du seed sont **IMPRÉCIS** : le 9.1.0 ajoute une limite (nerf), le buff date du 9.2.0. PTB 10.2.0 : aucun changement. Statut LIVE.
- **Données LIVE** (page wiki [6], STRONG_SECONDARY sauf mention) :
  - Vitesse 4,6 m/s, **TR 32 m**, grand, pas de berceuse.
  - Jauge de 100 charges. Gain passif de +0,2 charge/s, **plafonné à 98** : il doit absorber au moins un orbe pour atteindre 100. Coup réussi sur un survivant **sain** : +40 charges. Orbe absorbé : +2,5 charges. En absorption, il avance à **3,45 m/s**, voit l'aura des orbes à 8 m et les attire à 6 m (cône de 45°).
  - Orbes (émis par les survivants **blessés** seulement) : 2 toutes les 4 s en passif ; 2 par interaction (palette, casier, vault) ; 2 par skill check raté ; 1 en s'accroupissant ; **5 au crochet** (VERIFIED_MULTI_SOURCE). Ils ne disparaissent jamais (100 au maximum sur la carte). Ils sont invisibles pour les survivants, sauf un bref aperçu à leur apparition.
  - Délai avant les premiers orbes d'un survivant décroché : 10 s selon la note 9.5.0 [16], 15 s selon le wiki. CONFLICT-B4G3-05, faible impact.
  - Blood Fury : activation **3 s** (rugissement), durée max **~45,45 s** (−2,2 charges/s), −7 s par down en 1v1. Ramasser un survivant annule la Fury, mais les charges restantes sont conservées. Un stun palette ne met fin à la Fury que si la jauge est au-dessus de 99 ou en dessous de 5.
  - Demon Dash : charge **2 s**, **7,82 m/s**, maniabilité réduite.
  - Demon Strike : charge 2 s (bouton maintenu plus de 0,35 s). Double dégâts : un survivant sain va à terre. Peut toucher plusieurs survivants. Rotation max 540° pendant la phase d'ouverture. Cooldown 3 s si touché, 2 s si raté. L'attaque rapide en Fury compte comme attaque spéciale : pas de double dégâts via Exposed.
  - Casse de palettes et de murs par le pouvoir : Special-break, VERIFIED_PRIMARY [16]. La page ne précise pas le mécanisme ; une correction 9.6.0 évoque la casse d'un mur en Demon Dash [17], donc probablement au Dash (UNCERTAIN).
- **Identification** : TR 32 m. Avant la Fury, M1 standard. L'activation de la Fury prend 3 s avec un rugissement audible ; la charge du Dash (2 s) est reconnaissable — FACT [6] + HEURISTIC.
  - Stratégie probable : blesser beaucoup tôt (+40 charges par coup sur un survivant sain), farmer les orbes près des crochets (5 par crochet), puis tournée de gens en Fury — HEURISTIC fondé sur [6].
- **Ce qu'il cherche en chase** : blesser vite, puis lancer la Fury en terrain ouvert où la Demon Strike ne peut pas être évitée par une tile — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles à murs hauts et virages serrés (cassent la LOS du dash) ; fenêtres (le dash ne vaulte pas) — HEURISTIC.
  - Défavorables : zones ouvertes et longues lignes en Fury ; palettes en Fury (cassables par son pouvoir) — HEURISTIC.
- **Mindgames propres** : dash annulé ou flick au dernier moment ; absorption pendant la chase pour déclencher la Fury juste avant une tile — HEURISTIC.
- **Counterplay** :
  - Mécanique : en Fury, forcer le dash à tourner (virage au dernier moment, derrière un mur haut) ; attendre qu'il s'engage avant de changer de direction. La charge de 2 s du Dash comme de la Strike laisse le temps de réagir. En revanche, au corps à corps, la Strike tourne jusqu'à 540° : l'esquive « par le côté » marche mal, il faut mettre un obstacle haut entre vous avant qu'il ne soit à portée — HEURISTIC fondé sur [6].
  - Positionnel : hors Fury, jouer normalement ; en Fury, se rapprocher d'un groupe de LOS blockers plutôt que d'une palette isolée — HEURISTIC.
  - Macro : limiter les orbes. Blessé, un survivant émet 2 orbes toutes les 4 s, plus 2 par vault ou palette (FACT [6]) : se soigner quand c'est sûr (SITUATIONAL : pas sous pression de gens). Chaque coup sur un survivant sain lui donne 40 % de jauge (FACT) : ne pas offrir de coups gratuits. Articulation avec `batch9_macro.md` §2.10 (P14) : là-bas, le soin est « souvent non rentable » contre un tueur à coup unique **en Blood Fury** ; ici, le soin **hors Fury** sert à lui refuser des orbes. Les deux tiennent : se soigner tôt pour retarder la Fury ; une fois la Fury lancée, ne pas commencer un soin.
  - Après un crochet, 5 orbes sont au sol près du crochet (depuis 9.2.0) : attendre une Fury rapide — FACT + HEURISTIC.
  - La Fury dure au plus ~45 s et perd 7 s par down : temporiser (LOS, distance) raccourcit sa fenêtre — FACT + HEURISTIC.
  - Équipe : se disperser quand la Fury démarre ; éviter de se regrouper blessés — HEURISTIC.
- **Habitudes punissables** : rester blessé longtemps ; pré-drop pendant la Fury ; fuir en ligne droite en open. **Erreur classique** : sous-estimer la portée de la Fury depuis un gen éloigné.
- **Adaptations avancées** : si la jauge est probablement pleine (plusieurs blessés, crochet récent), anticiper la Fury avant de prendre une tile faible — HEURISTIC/SITUATIONAL.
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur [6]) :
  - Lion Fang (Fury +10 s), Yamaoka Sashimono (+8 s) ou Chipped Saihai (+6 s) → Fury jusqu'à ~55 s : tenir la LOS au lieu de compter sur la fin de la Fury.
  - Akito's Crutch (Dash +1 m/s), Kanai-Anzen Talisman (+0,64 m/s) ou Scalped Topknot (charge du Dash −0,5 s) → le dash vous rattrape plus vite : quitter l'open plus tôt, au lieu d'attendre de voir la charge.
  - Splintered Hull (+33 % d'orbes et +1 par interaction) ou Wooden Oni Mask (+14 % et +1) → rester blessé coûte encore plus : soigner plus tôt, éviter les vaults inutiles quand vous êtes blessé.
  - Renjiro's Bloody Glove (un survivant qui touche un orbe l'absorbe, et son aura est révélée 2 s par orbe ; les survivants voient les orbes) → contourner les orbes visibles au lieu de marcher dessus.
  - Iridescent Family Crest (une Demon Strike ratée fait crier et révèle les survivants à 24 m ou moins) → en Fury, ne pas rester caché près d'une chase : s'éloigner à plus de 24 m.
  - Tear-Soaked Tenugui (pénalité par down réduite de 4 s) ou Ink Lion (−2 s, et transitions plus courtes) → les downs raccourcissent moins la Fury : ne pas compter sur « un down = fin de Fury proche ».
  - Shattered Wakizashi (+0,2 charge/s en passif) ou Polished Maedate (+0,1) → Fury régulière même sans orbes : se soigner ne suffit plus à la retarder, jouer la distance.
- **Implications de carte** : cartes ouvertes (champs de maïs, Coldwind) favorisent la Fury ; cartes intérieures à murs hauts favorisent le survivant — HEURISTIC.
- **Perks fréquentes / synergies** : seed : Pain Resonance, Corrupt Intervention, Pop, Eruption — fréquence NON VÉRIFIABLE ; ses perks : Zanshin Tactics, Blood Echo, Nemesis [6]. Côté survivant, Iron Will : aucune interaction avec les orbes dans la mécanique décrite par la page Oni [6] (émission liée à l'état blessé et aux interactions, pas au bruit). Probablement sans effet, non prouvé (page Iron Will non lue) — UNCERTAIN.
- **Écart avec le seed** : buff 9.1.0 **IMPRÉCIS** (le 9.1.0 ajoute la limite de 540°, un nerf ; le buff d'orbes est au 9.2.0) ; « 5 orbes par crochet depuis le 9.2 » **OK (VERIFIED_PRIMARY [14])** ; « virage 540° au 9.1 » **OK (VERIFIED_PRIMARY [13])** ; Demon Dash ~7,8 m/s OK (7,82) ; 3,45 m/s en absorption OK ; Fury ~45 s OK (45,45 s) ; Iron Will contre les orbes IMPRÉCIS (probablement sans effet, UNCERTAIN).
- **Sources** : [6], [13], [14], [16], [17], [24], [1], [2].

## 19. The Deathslinger (Caleb Quinn) — archétype(s) : ranged | anti-loop
- **Version** : aucun changement 1v1 entre 9.0.0 et 10.1.2a dans les notes officielles locales, seulement des correctifs (ex. 9.1.3 [25], 9.3.0). La ligne « The Deathslinger » de la note 9.6.0 [17] (pénalité de rechargement en marchant, durée d'un tir raté) est **2v8 uniquement**. Dernier changement 1v1 d'après le wiki : 8.0.0 [7]. PTB 10.2.0 : Dead Man's Switch passe à 30/35/40 s (la page wiki affiche déjà cette version) : non LIVE. Statut LIVE.
- **Données LIVE** (page wiki [7], STRONG_SECONDARY) :
  - Vitesse **4,4 m/s**, **TR 32 m** (24 → 32 m au 5.3.0), grand, pas de berceuse.
  - The Redeemer : visée (ADS) en 0,4 s, pendant laquelle il avance à 3,74 m/s. Tir après un délai de 0,5 s. Harpon à **40 m/s**, portée **18 m**. Tir raté : cooldown 1,5 s. **Rechargement après chaque tir : 2,6 s** à 3,08 m/s.
  - Harponné : immobilisé 0,75 s, puis enroulé à 2,76 m/s. Le minuteur de Deep Wound est en pause pendant le harpon. Le coup final au bout de la chaîne = blessure + Deep Wound.
  - Chaîne (100 points) : −2,5/s de tension, −15/s si vous tirez, −20/s si la chaîne touche un obstacle. Elle casse en **~2,7 s si vous tirez ET que la chaîne frotte un obstacle**, ~4,4 s en collision seule, ~5,7 s en tirant seul, 40 s sinon. Chaîne cassée : vous êtes blessé + Deep Wound, et lui **étourdi 2,7 s**.
  - Avertissement : si vous êtes dans son TR et à portée, un son vous prévient quand il vise dans votre direction, plus fort à mesure que la visée se centre sur vous.
- **Identification** : vitesse 4,4 ; TR 32 m ; son d'avertissement de visée (FACT [7]) ; bruit de rechargement — HEURISTIC. Stratégie : chases courtes via des tirs à la sortie d'un vault ou d'une palette — HEURISTIC.
- **Ce qu'il cherche en chase** : une ligne droite ou une sortie de vault où vous ne pouvez pas tourner — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles à obstacles serrés et hauts (pas de ligne de tir), jungle gyms fermés, intérieurs. Ce sont aussi les obstacles contre lesquels la chaîne casse vite — HEURISTIC fondé sur [7].
  - Défavorables : zones ouvertes, fenêtres exposées sur une longue ligne de tir, fillers bas — HEURISTIC.
  - Fenêtres vs palettes : vaulter seulement si la sortie est couverte par un obstacle ; palettes à lâcher tôt si la sortie est en ligne droite — HEURISTIC.
- **Mindgames propres** : visée tenue pour vous forcer à zigzaguer (perte de distance) ; rechargement feint — HEURISTIC.
- **Counterplay** :
  - Mécanique : quand l'avertissement de visée sonne, casser la ligne (virage vers un obstacle) plutôt que zigzaguer régulièrement en open. Au-delà de 18 m, le harpon ne vous atteint pas (FACT [7]) — HEURISTIC fondé sur [7].
  - Harponné : **tirer ET frotter la chaîne contre un obstacle** (~2,7 s, contre ~5,7 s en tirant seul) — FACT [7]. Suite (FACT [AUDIT] sur Deep Wound) : minuteur de 20 s en pause en courant ; mending 10 s seul ; un nouveau coup sous Deep Wound met à terre et l'Endurance ne protège pas. Casser la chaîne gagne du temps (2,7 s d'étourdissement), pas la sécurité.
  - Positionnel : rester à courte distance des LOS blockers ; ne pas traverser l'open en ligne droite — HEURISTIC.
  - Macro : il doit recharger 2,6 s à 3,08 m/s après **chaque** tir (FACT [7]). Le forcer à tirer dans le vide (bait), puis gagner une tile pendant le rechargement — HEURISTIC.
- **Habitudes punissables** : vault « automatique » vers l'open ; zigzag prévisible ; rester en Deep Wound sans soin. **Erreur classique** : croire qu'une palette lâchée protège d'un tir par-dessus (la ligne de tir peut passer selon la hauteur — UNCERTAIN, non décrit par [7]).
- **Adaptations avancées** : contre un bon tireur, privilégier des chaînes de tiles serrées, même peu « safe », plutôt qu'une grosse tile séparée par de l'open — HEURISTIC.
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur [7]) :
  - Iridescent Coin (Exposed pendant le harpon si le tir part de 12 m ou plus) → harponné de loin, casser la chaîne tout de suite (tirer + obstacle) au lieu de se laisser ramener : le coup au bout de la chaîne vous mettrait à terre.
  - Hellshire Iron (Undetectable pendant le harpon, puis 10 s) → après le harpon d'un coéquipier, ne pas se fier au TR pendant ~10 s.
  - Gold Creek Whiskey (TR −8 m en visée) ou Marshal's Badge (−4 m) → l'avertissement de visée ne se déclenche que dans son TR : ne pas attendre le son pour quitter l'open.
  - Bayshore's Cigar (étourdissement −0,75 s, soit ~1,95 s) ou Chewing Tobacco (−0,25 s) → casser la chaîne rapporte moins de distance : viser une LOS immédiate après la casse, pas une longue fuite.
  - Honey Locust Thorn (Mangled 70 s après s'être libéré), Rusted Spike (Mangled 60 s une fois harponné), Barbed Wire (mending +3,5 s) ou Poison Oak Leaves (+1,5 s) → la Deep Wound est plus longue à gérer : mender dès qu'une LOS est sûre, avant le prochain tir.
  - Warden's Keys (rechargement −0,35 s), Modified Ammo Belt (−0,25 s) ou Tin Oil Can (cooldown de tir raté −0,5 s) → fenêtre plus courte après un tir : traverser moins d'open pendant le rechargement.
  - Prison Chain (temps de libération +10 %) → la chaîne tient plus longtemps : chercher l'obstacle encore plus tôt.
- **Implications de carte** : cartes ouvertes à longues lignes de tir le favorisent ; intérieurs encombrés le handicapent — HEURISTIC.
- **Perks fréquentes / synergies** : Dead Man's Switch (valeur LIVE **contestée** : 25/30/35 s selon la table 9.2.0 de l'audit, mais la page wiki.gg 9.2.X citée par le même audit dit ces changements du PTB 9.2.0 annulés au LIVE [1] ; 30/35/40 s au **PTB 10.2.0**, non LIVE ; la page du Deathslinger [7] n'affiche que la version PTB), Gearhead, Hex: Retribution (ses perks [7]) — fréquence NON VÉRIFIABLE pour 2026 ; côté survivant, Lithe et Dead Hard (seed ; Dead Hard UNCERTAIN dans la base de perks) — HEURISTIC.
- **Écart avec le seed** : vitesse 4,4 **OK** ; TR 32 m **OK** ; Redeemer 18 m, 40 m/s, rechargement 2,6 s, étourdissement 2,7 s **OK (STRONG_SECONDARY [7])** ; add-on « Gold Belt Buckle » : **absent** de la liste LIVE des add-ons [7] → FAUX (nom inexistant en LIVE).
- **Sources** : [7], [17], [25], [23], [1], [2].

## 20. The Executioner (Pyramid Head) — archétype(s) : ranged | zone | anti-loop
- **Version** (tranche du lot 12b) :
  - 9.1.0 [13] : portée de Punishment of the Damned **8 → 10 m** ; tracé max de Rites of Judgement **5 → 10 s** ; durée de vie des traînées **75 → 90 s** ; vitesse en traçant **4,4 → 4,2 m/s** ; commandes maintenables ; survivant sauvé d'une cage : **10 % Haste + Endurance 10 s** ; refonte de nombreux add-ons. VERIFIED_MULTI_SOURCE [8][13]. Conséquence notée par le wiki : la recharge passe de 20 à 40 s (taux inchangé).
  - 9.2.3 [15] : sauver un survivant d'une cage **ne déclenche plus** de notification de bruit fort. VERIFIED_PRIMARY.
  - 9.3.0 : bonus de sortie de cage portés à 15 s ; 10.1.0 [20] : retour à 10 s + Elusive, comme pour le décrochage [8]. VERIFIED_MULTI_SOURCE.
  - 10.1.2 [21] : « Punishment of the Damned width +2 m » est une ligne **2v8 uniquement**, pas en 1v1.
  - PTB 10.2.0 : aucun changement. Statut LIVE.
- **Données LIVE** (page wiki [8] et page Cages [11], STRONG_SECONDARY sauf mention) :
  - Vitesse 4,6 m/s ; **4,2 m/s en traçant** (VERIFIED_MULTI_SOURCE) ; 3,68 m/s pendant le lancement ou l'annulation de l'onde. **TR 32 m**, grand, pas de berceuse.
  - Rites of Judgement : jauge de 10 charges, −1/s en traçant (**10 s** de tracé max), recharge complète en **40 s**. Activation et annulation : 1 s chacune. Traînées : **90 s**, aura visible pour lui à 32 m. Autour des gens et crochets (4 m), des portes et de la trappe (3 m), au sous-sol et dans les escaliers, les traînées disparaissent en ~3 s.
  - Torment : toucher une traînée **sans être accroupi** donne Torment + Killer Instinct 3 s. Torment n'est retiré **qu'en sauvant quelqu'un d'une cage ou en étant sauvé d'une cage**.
  - Punishment of the Damned : onde de **10 m** devant lui (VERIFIED_MULTI_SOURCE), qui part après 0,267 s et se propage segment par segment. Coûte 2 charges ; cooldown 2,25 s (touché, raté ou bloqué). Elle ne gravit pas une pente de plus de 42°. Elle **traverse les murs** : FACT (la note 9.1.2 [26] corrige un cas où elle « ne traversait pas des murs et encadrements de porte praticables »).
  - Cage of Atonement (FACT [8][11]) :
    - Un survivant Tormented au sol peut être envoyé en cage (1 s) au lieu d'être accroché. La cage fait progresser les phases **comme un crochet**.
    - Les cages apparaissent **le plus loin possible du tueur**, sur 6 emplacements prédéfinis. Le tueur **ne voit pas leur aura**.
    - **Relocalisation** : si l'Executioner reste à 10 m ou moins pendant 3,5 s, la cage se déplace ailleurs et le sacrifice est mis en pause (anti-camp).
  - Final Judgement : exécution sur place (mini-mori) d'un survivant **Tormented au sol qui a déjà atteint la 2e phase** [8]. C'est donc un survivant qui mourrait à son prochain crochet ; il meurt au sol, sans crochet.
- **Identification** : TR 32 m ; traînées rouges au sol ; bruit de l'onde ; cages loin de lui — HEURISTIC. Stratégie : punir les fins de boucle, envoyer en cage pour gagner du temps, Final Judgement pour les survivants en 2e phase — HEURISTIC.
- **Ce qu'il cherche en chase** : vous fixer derrière une palette, une fenêtre ou un mur fin, puis lancer l'onde à travers — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles longues, murs épais et angles droits pleins ; jouer la distance latérale, à plus de 10 m quand c'est possible — HEURISTIC fondé sur [8].
  - Défavorables : fillers bas, palettes courtes (il frappe à travers), couloirs étroits en ligne — HEURISTIC.
  - Fenêtres vs palettes : la palette ne protège pas contre l'onde ; elle sert à gagner de la distance, pas à « se cacher » derrière — HEURISTIC.
- **Mindgames propres** : faux lancer ; traçage de la tile pour vous forcer à choisir entre vous accroupir (lent) et prendre Torment — HEURISTIC.
- **Counterplay** :
  - Mécanique : bouger latéralement par rapport à son axe au moment du lancer (0,27 s avant le départ de l'onde, puis propagation sur 10 m) ; ne pas rester aligné avec lui derrière une palette — HEURISTIC fondé sur [8].
  - Positionnel : s'accroupir pour traverser les traînées hors chase (évite Torment, FACT [8]). Coût calculé : accroupi 1,13 m/s contre 4,0 m/s en course [AUDIT], donc traverser 3 m de traînée prend ~2,7 s au lieu de 0,75 s. En chase, accepter parfois Torment pour garder la distance — HEURISTIC/SITUATIONAL.
  - Macro :
    - Sauver les cages vite : le chrono progresse comme sur un crochet (FACT [8][11]). Priorité absolue à un survivant Tormented en 2e phase : au sol, Final Judgement le tue sans crochet (FACT [8]).
    - Sauver une cage retire Torment au sauveteur comme au sauvé (FACT [8]) : un sauveteur Tormented y gagne doublement.
    - Le sauvetage ne déclenche plus de bruit fort (9.2.3), et le sauvé reçoit 10 % Haste + Endurance 10 s + Elusive 10 s (10.1.0) — VERIFIED_MULTI_SOURCE.
  - Équipe : l'emplacement des cages (loin de lui) éloigne les sauveteurs. En SWF, désigner le sauveteur le plus proche ; en SoloQ, y aller si l'on est le plus proche d'après le HUD et que personne ne bouge — HEURISTIC.
- **Habitudes punissables** : traverser les traînées debout sans nécessité ; rester collé derrière une palette ; ignorer une cage ; laisser au sol un Tormented en 2e phase. **Erreur classique** : croire que les fenêtres, palettes ou murs bloquent l'onde.
- **Adaptations avancées** : contre un joueur qui trace toutes les tiles, préférer changer de tile tôt plutôt que d'accumuler les tours avec Torment ; en intérieur, les murs sont traversés, donc privilégier la distance (plus de 10 m) — HEURISTIC.
- **Add-ons qui changent la décision** (noms et effets LIVE lus sur [8], refonte 9.1.0 [13]) :
  - Obsidian Goblet (l'onde casse palettes et murs au contact ; cooldown +20 %) → ne plus lâcher une palette pour le bloquer : filer vers la tile suivante.
  - Iridescent Seal of Metatron (portée de base −50 %, puis jusqu'à +200 % en traçant ; remise à zéro après un coup) → après un long tracé, fuir bien au-delà de 10 m au lieu de se croire hors de portée. La portée max exacte dépend de la base du +200 % (UNCERTAIN).
  - Lead Ring (portée +25 %, soit 12,5 m, largeur −25 %) → garder ~13 m ; Black Strap (largeur +25 %, portée −25 %) → l'esquive latérale devient plus difficile, jouer la distance.
  - Tablet of the Oppressor (Undetectable en traçant) → pas de TR pendant qu'il trace : surveiller les traînées rouges à l'œil.
  - Valtiel Sect Photograph (TR −2 m par survivant Tormented, jusqu'à −8 m) → avec beaucoup de Tormented, un TR faible ne veut pas dire tueur loin.
  - Scarlet Egg (un Tormented qui court crée ses propres traînées, 5 s ; le tueur ne voit plus l'aura des traînées) → Tormented : ne pas courir à travers le groupe ou près d'un gen partagé, pour ne pas tormenter les coéquipiers.
  - Crimson Ceremony Book (Haemorrhage + Mangled 80 s sur un coup d'onde), Lost Memories Book (Oblivious 80 s) ou Misty Day, Remains of Judgement (aura 8 s) → après un coup d'onde, casser la LOS et s'éloigner avant de se soigner, au lieu de se soigner sur place.
  - Mannequin Foot (Exhausted 10 s au contact d'une traînée) → traverser debout coûte aussi votre perk d'exhaustion : s'accroupir si elle est prête.
  - Spearhead (aura du sauveteur 8 s après un sauvetage de cage) → après le sauvetage, rejoindre une LOS au lieu de rester à la cage.
  - Copper Ring (tracé +5 s, soit 15 s) → plus de traînées par chase : changer de tile encore plus tôt.
- **Implications de carte** : intérieurs et murs fins (Midwich, Lery's) le favorisent — HEURISTIC/SITUATIONAL.
- **Perks fréquentes / synergies** : Forced Penance, Trail of Torment, Deathbound (ses perks [8]) ; Nowhere to Hide LIVE 24 m (18 m = PTB 10.1.0) [3] — VERIFIED via ledger.
- **Écart avec le seed** : buffs 9.1.0 **OK** (portée 10 m, tracé 10 s, traînées 90 s, VERIFIED_PRIMARY [13]) ; 4,2 m/s en traçant OK ; « 2 charges » OK ; cooldown 2,25 s OK ; « Final Judgement au 2e hameçon » **IMPRÉCIS** (il vise un Tormented au sol **déjà en 2e phase**, c'est-à-dire après 2 crochets ou cages : c'est la 3e mise à terre qui est fatale, pas le 2e crochet) ; « la cage change de place si un autre survivant s'en approche » **FAUX** (c'est l'Executioner qui déclenche la relocalisation en restant à 10 m ou moins pendant 3,5 s [8][11]) ; tier A vs kill rate 39,4 % : cohérent si difficulté (HEURISTIC).
- **Sources** : [8], [11], [13], [15], [20], [21], [26], [3], [1], [2].

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
