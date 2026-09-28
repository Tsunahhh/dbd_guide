# Lot 3 — Perks tueur vues du survivant, page 91 du guide seed (tier A)

Couverture : 18/18 perks re-vérifiées sur page wiki complète (27/09/2026) ; dont 8 confirmées par note officielle (valeurs : Dead Man's Switch, Eruption, Hex: Ruin, A Nurse's Calling, Keep Them Waiting, Turn Back the Clock, Celestial Witness, Ultimate Weapon) + 3 renommages confirmés par la note 9.0.0 (No Holds Barred, Weeping Wounds, Fortune's Fool).

Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 (15-21/09/2026) = **non LIVE**, toujours étiqueté PTB.
Méthode (lot 12a, re-vérification du 27/09/2026) : pages wiki.gg complètes via l'API MediaWiki (`kb/sources/wiki_perks_digest.md`) + notes officielles BHVR 9.0.0 → PTB 10.2.0 en texte complet (`kb/sources/patches/official_*.txt`). Confiance : STRONG_SECONDARY (wiki seul) ; VERIFIED_MULTI_SOURCE (wiki + note officielle concordante) ; VERIFIED_PRIMARY (note officielle seule, explicite).
Notes de menace = **HEURISTIC**. Indices / adaptation / counterplay = **HEURISTIC** (raisonnement de jeu, pas de source).

Périmètre (18 perks, seed ch9 l. 128-230) : Dead Man's Switch, Eruption, Hex: Ruin, Barbecue & Chilli, A Nurse's Calling, Surge, No Holds Barred, Keep Them Waiting, Bamboozle, Hex: No One Escapes Death, Turn Back the Clock, Celestial Witness, Discordance, Darkness Revealed, Scourge Hook: Floods of Rage, Ultimate Weapon, Scourge Hook: Weeping Wounds, Hex: Fortune's Fool.

> **Historique** : la 1re passe (lot 3) n'avait vérifié que 3 perks par WebSearch (quota épuisé). La re-vérification 12a couvre les 18 perks. PTB 10.2.0 : seule Dead Man's Switch est modifiée dans ce périmètre (wiki + note officielle 559).

---

### Dead Man's Switch — The Deathslinger
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (blocage)
- **Effet LIVE + valeurs** : après un accrochage, le 1er générateur qu'un survivant **arrête de réparer** (instantanément, sans délai) est bloqué par l'Entité 25/30/35 s. Pour le tueur, il est surligné en blanc. Pas de réactivation tant que l'effet précédent dure [36]. Durée 25/30/35 s (était 40/45/50 s) : **VERIFIED_MULTI_SOURCE** (wiki [36] + note officielle 9.2.0 [16]). **Temps de recharge 50 s** : cité uniquement par la note officielle PTB 10.2.0, dans l'état « was » [39] ; absent du texte LIVE du wiki → **VERIFIED_PRIMARY** (CONFLICT-K91-02 résolu).
- **PTB 10.2.0 (NON LIVE)** : quand un survivant arrête de réparer un gen **pendant plus de 2 s** après un accrochage, le gen est bloqué 30/35/40 s ; recharge 30/35/40 s (était : arrêt instantané, 25/30/35 s, recharge 50 s). Note de dev : éviter les combos avec les interruptions forcées [39][36]. VERIFIED_MULTI_SOURCE (note 559 + wiki).
- **Indice observable (survivant)** (HEURISTIC) : juste après un accrochage, le gen que tu lâches (ou qu'un coéquipier lâche) devient bloqué (pics de l'Entité, interaction impossible). Pas d'icône de statut.
- **Soupçonner** (HEURISTIC) : Deathslinger en face + un gen bloqué pile après un crochet → plausible. Un gen bloqué après un crochet sans qu'aucun gen n'ait été terminé (donc pas No Holds Barred ni Grim Embrace) → très plausible.
- **Confirmer** (HEURISTIC) : le blocage arrive au moment exact où un survivant lâche un gen **après** un accrochage. Écran de fin (loadout).
- **Adaptation robuste** (HEURISTIC) : après un accrochage, ne lâche pas un gen très avancé pour rien. Soit tu le finis, soit tu en lâches d'abord un peu avancé. En LIVE, le 1er gen lâché « consomme » l'effet : un lâcher « sacrificiel » sur un gen peu avancé le neutralise.
- **Counterplay** (HEURISTIC) : si le tueur arrive et que tu dois fuir, lâche le gen le moins important en premier. En SWF, annonce « DMS » pour que personne ne quitte un gen à 80 %. Le PTB 10.2.0 (2 s) rendrait ce lâcher sacrificiel plus coûteux.
- **Erreurs à ne pas faire** (HEURISTIC) : lâcher un gen à 90 % pour aller décrocher juste après un accrochage.
- **Menace (HEURISTIC 0-3)** : SoloQ 2 / SWF 1,5.
- **Écart avec le seed** : OK pour 25/30/35 s et l'aura blanche. IMPRÉCIS : le seed omet le temps de recharge LIVE de 50 s (note officielle 559 [39]). La section PTB du seed (30/35/40 s, 2 s, recharge 30/35/40 s) est correcte et bien étiquetée PTB.
- **Sources** : [36][16][39] (anciennes : [1][2][3][11][12][15])

### Eruption — The Nemesis
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (perte instantanée) + info
- **Effet LIVE + valeurs** : l'action « endommager un générateur » (coup de pied) surligne le gen en jaune pour le tueur. Quand un survivant passe à l'état mourant (par n'importe quel moyen), tous les gens surlignés explosent, perdent instantanément **10 %** de leur progression totale et se mettent à régresser. Les survivants qui les réparent **crient** et leur aura est révélée **8/10/12 s**. **Recharge 30 s** après déclenchement, qui **efface aussi les surlignages** [37]. Pas d'Incapacitated. 10 % : **VERIFIED_MULTI_SOURCE** (wiki [37] + note officielle 9.2.0 [16] : le passage à 5 % testé au PTB 9.2.0 a été « postponed » et reverté avant la LIVE ; CONFLICT-K91-01 résolu). 8/10/12 s et 30 s : STRONG_SECONDARY [37].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : tu **cries** en réparant, pile au moment où quelqu'un tombe. Le gen explose (étincelles, barre qui recule, régression). L'icône « aura révélée » n'existe pas : ton aura est visible sans que tu le saches.
- **Soupçonner** (HEURISTIC) : cri pendant la réparation au moment exact d'une mise au sol + gen qui recule → Eruption quasi certaine (Surge ne fait **pas** crier d'après le texte LIVE : seulement attaque de base, gens à ≤ 32 m du tueur).
- **Confirmer** (HEURISTIC) : le cri et la régression arrivent **sur un gen déjà frappé**, même loin du tueur (Surge ne dépasse pas 32 m).
- **Adaptation robuste** (HEURISTIC) : sur un gen déjà frappé (entourage jaune invisible pour toi, mais tu as pu voir le coup de pied), lâche le gen quand un coéquipier va tomber (poursuite qui tourne mal). Préfère les gens jamais frappés. Juste après une explosion, les surlignages sont effacés et la perk est en recharge 30 s : un gen frappé **avant** l'explosion n'est plus piégé tant qu'il n'est pas re-frappé.
- **Counterplay** (HEURISTIC) : lire les poursuites (Kindred, cris) et lâcher le gen **avant** la mise au sol : pas de cri, pas d'aura révélée. Un survivant slugué déclenche Eruption : un ramassage rapide limite le slug.
- **Erreurs à ne pas faire** (HEURISTIC) : rester sur un gen frappé pendant que le porteur de poursuite est blessé et coincé en zone morte.
- **Menace (HEURISTIC 0-3)** : SoloQ 2 / SWF 1,5.
- **Écart avec le seed** : OK (−10 %, cri + aura 8/10/12 s, recharge 30 s, pas d'Incapacitated). Le seed omet l'effacement des surlignages au déclenchement : IMPRÉCIS mineur.
- **Sources** : [37][16][39] (anciennes : [4][5][8][9][10])

### Hex: Ruin — The Hag
- **Statut / catégorie** : LIVE 10.1.2a · hex · slowdown (régression)
- **Effet LIVE + valeurs** : tant que le totem Hex tient, tout gen **non réparé** régresse automatiquement à 100/125/150 % de la vitesse de régression normale (était 50/75/100 % avant 9.2.0) [38][16]. Désactivée si le totem est purifié ou béni. **VERIFIED_MULTI_SOURCE** (wiki + note officielle 9.2.0).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE). Le seed range Ruin dans « vitesse de régression soumise aux DR » : NON VÉRIFIABLE (l'audit note que la liste des catégories soumises aux DR n'est pas publiée).
- **Indice observable (survivant)** (HEURISTIC) : un gen lâché **recule tout seul** sans coup de pied (pas d'animation de kick, pas de bruit de dégât). Un totem allumé (flamme, grésillement audible de près) près de la zone de départ.
- **Soupçonner** (HEURISTIC) : un gen partiel qui a reculé pendant ton absence alors que le tueur était en poursuite ailleurs → Ruin (ou Call of Brine / Oppression / Lay Waste : écarter par la présence d'un coup de pied).
- **Confirmer** (HEURISTIC) : trouver le totem Hex allumé. Si le gen arrête de reculer seul une fois le totem purifié, c'est confirmé (aussi : Detective's Hunch, Small Game, Counterforce).
- **Adaptation robuste** (HEURISTIC) : ne pas éparpiller les réparations. Finir les gens entamés, travailler à 2 si ça évite les gens « abandonnés ». Chercher le totem tôt, en passant, sans lâcher un gen presque fini.
- **Counterplay** (HEURISTIC) : purification (14 s de base, non revérifiée ici), Counterforce, Boon: Circle of Healing / Shadow Step (une bénédiction coupe la Hex). En SWF, 1 joueur part purifier pendant qu'un autre fait tourner la poursuite.
- **Erreurs à ne pas faire** (HEURISTIC) : tout le monde part chercher le totem (pas de pression sur les gens) ; lâcher un gen à 70 % pour aller « toucher » un autre gen.
- **Menace (HEURISTIC 0-3)** : SoloQ 2,5 / SWF 1,5.
- **Écart avec le seed** : OK (100/125/150 %).
- **Sources** : [38][16] (anciennes : [6][7][8])

### Barbecue & Chilli — The Cannibal
- **Statut / catégorie** : LIVE 10.1.2a · info/aura
- **Effet LIVE + valeurs** : après un accrochage, auras des survivants situés à **au moins 60/50/40 m** du crochet pendant **5 s** [17]. Le texte LIVE ne contient plus de bonus de Bloodpoints (patch du retrait non couvert par le change log 8.x-10.x). Le changement de BBQ testé au PTB 9.2.0 a été reverté avant la LIVE (note officielle 9.2.0 [16], sans valeur). STRONG_SECONDARY.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct (pas d'icône). Avec Distortion, un jeton consommé au moment d'un accrochage est un indice fort d'aura (BBQ ou autre). Le tueur file droit vers toi juste après l'accrochage.
- **Soupçonner** (HEURISTIC) : trajet direct vers toi après chaque crochet, alors que tu étais loin et hors de vue → aura à l'accrochage (BBQ, Floods of Rage s'il s'agit d'un décrochage de Scourge).
- **Confirmer** (HEURISTIC) : Distortion, Object/Kindred (tu vois le tueur se tourner vers toi), écran de fin.
- **Adaptation robuste** (HEURISTIC) : au moment d'un accrochage, sois soit **proche** du crochet (sous le seuil), soit **caché** derrière un gros obstacle en ayant bougé ensuite. Casier à l'instant de l'accrochage : non vérifié ici que ça bloque l'aura (règle générale « les casiers bloquent les auras » : UNCERTAIN).
- **Counterplay** (HEURISTIC) : Distortion. Bouger après la révélation (le tueur voit une position figée de 5 s). Varier les gens pour qu'il ne sache pas lequel pressurer.
- **Erreurs à ne pas faire** (HEURISTIC) : rester sur le même gen isolé après chaque crochet, en croyant que la distance protège.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : OK (60/50/40 m, 5 s, plus de bonus BP). Date du retrait (6.1.0) : NON VÉRIFIABLE (hors change log lu).
- **Sources** : [17][16]

### A Nurse's Calling — The Nurse
- **Statut / catégorie** : LIVE 10.1.2a · info/aura · anti-soin
- **Effet LIVE + valeurs** : auras des survivants qui soignent ou sont soignés (y compris en self-heal) dans un rayon de **28/30/32 m** [18]. Rayon relevé en 9.2.0 (était 20/24/28 m) [16] ; depuis 10.1.0, révèle **tout** survivant en interaction de soin, quel que soit son état de santé [19]. **VERIFIED_MULTI_SOURCE** (wiki + notes 9.2.0 et 10.1.0).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : aucun direct. Le tueur arrive droit sur un soin, souvent sans poursuite préalable.
- **Soupçonner** (HEURISTIC) : 2 soins interrompus d'affilée, et le tueur arrive par un angle sans ligne de vue → aura sur soin (A Nurse's Calling, ou Bitter Murmur / Nowhere to Hide exclus par le contexte).
- **Confirmer** (HEURISTIC) : un soin à plus de 32 m du tueur n'est jamais interrompu, un soin plus proche l'est. Distortion (jeton perdu pendant le soin).
- **Adaptation robuste** (HEURISTIC) : soigner loin du tueur (au-delà de 32 m) et hors de son trajet. Écourter les soins. Contre un tueur mobile (Nurse, Blight), préférer ne pas se soigner.
- **Counterplay** (HEURISTIC) : Distortion. Self-care bannis. En SWF, soigner quand le tueur est annoncé en poursuite ailleurs.
- **Erreurs à ne pas faire** (HEURISTIC) : soigner à côté du crochet ou d'un gen que le tueur patrouille.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : OK (28/30/32 m).
- **Sources** : [18][16][19][14]

### Surge — The Demogorgon
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (perte instantanée)
- **Effet LIVE + valeurs** : une mise au sol avec une **attaque de base** fait exploser tous les gens à **32 m ou moins de la position du tueur** : perte instantanée de **6/7/8 %** puis régression [20]. Le texte LIVE ne mentionne **ni cri des réparateurs, ni temps de recharge**. STRONG_SECONDARY (la note 9.5.0 [21] ne fait que réécrire la description). Nom : **Surge est le nom d'origine et actuel** ; « Jolt » n'a existé que de 5.3.0 à 7.3.3 (audit) [14].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : les gens proches de la mise au sol reculent brusquement (étincelles). Seulement sur mise au sol par coup de base, et seulement près du lieu de la chute.
- **Soupçonner** (HEURISTIC) : régression instantanée de gens **non frappés auparavant** au moment d'une chute proche → Surge. Si les gens explosent loin et avaient été frappés → Eruption.
- **Confirmer** (HEURISTIC) : le tueur est à 32 m ou moins du gen au moment de la chute, c'est un coup de base (pas un pouvoir : Demogorgon Shred ne compte pas), et **personne ne crie** sur le gen (sinon Eruption).
- **Adaptation robuste** (HEURISTIC) : ne pas mener une poursuite près d'un gen en cours (déjà une bonne règle). Réparer loin des poursuites.
- **Counterplay** (HEURISTIC) : éloigner les poursuites des gens avancés. Les tueurs à pouvoir (Nurse, Huntress…) déclenchent moins souvent si la chute vient du pouvoir.
- **Erreurs à ne pas faire** (HEURISTIC) : perdre la poursuite à côté du 3-gen.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : **FAUX** pour « Surge (ex-Jolt) », c'est l'inverse (audit). Valeurs OK (32 m, 6/7/8 %).
- **Sources** : [20][21][14]

### No Holds Barred — Générale (ex-Deadlock, The Cenobite)
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (blocage)
- **Effet LIVE + valeurs** : à chaque gen terminé, le gen **le plus avancé** est bloqué **15/20/25 s** (aura blanche pour le tueur) ; 15/20/25 s depuis 8.0.0 [22]. STRONG_SECONDARY. Renommage Deadlock → No Holds Barred en 9.0.0 (départ Hellraiser) ; les possesseurs du Cenobite gardent « Deadlock » : VERIFIED_MULTI_SOURCE (wiki [22] + note officielle 9.0.0 [23]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : juste après la pop d'un gen, un autre gen (le plus avancé) est bloqué par l'Entité. Très lisible.
- **Soupçonner** (HEURISTIC) : blocage immédiat après chaque gen terminé. À distinguer de Grim Embrace (blocage de tous les gens au 4e accrochage unique, et blocage d'un gen à chaque premier accrochage) et de DMS (lié à l'accrochage).
- **Confirmer** (HEURISTIC) : se reproduit à la 2e pop de gen.
- **Adaptation robuste** (HEURISTIC) : ne pas monter 2 gens proches à haute progression en même temps en attendant qu'un seul pop. Terminer les 2 derniers gens **simultanément** si possible (le blocage vise le plus avancé).
- **Counterplay** (HEURISTIC) : garder le 2e gen le plus avancé un peu en retrait, et pousser un gen neutre pour « absorber » le blocage. En SWF, synchroniser les pops.
- **Erreurs à ne pas faire** (HEURISTIC) : quitter tous le gen blocké pour se regrouper au même endroit.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : OK (nom et 15/20/25 s).
- **Sources** : [22][23][14]

### Keep Them Waiting — Générale (ex-Save the Best for Last, The Shape)
- **Statut / catégorie** : LIVE 10.1.2a · chase
- **Effet LIVE + valeurs** : +1 jeton par coup de base sur un survivant autre que l'Obsession (max **6/7/8**) ; **−2 jetons** quand l'Obsession prend des dégâts (attaque de base ou spéciale) ; chaque jeton réduit de **5 %** le temps de récupération des attaques de base réussies, max **30/35/40 %** ; compteur gelé quand l'Obsession est sacrifiée ou tuée [24]. 5 % (était 4 %), 6/7/8, −2, gel : **VERIFIED_MULTI_SOURCE** (wiki + note 10.1.0 [19]). Renommage de Save the Best for Last en 9.4.0 : note officielle [25].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : une **icône d'Obsession** est présente dans le HUD (un survivant est l'Obsession). Le tueur se remet très vite après un coup (essuyage court). Il enchaîne des coups rapprochés, au point qu'une Endurance perd de sa valeur.
- **Soupçonner** (HEURISTIC) : Obsession présente + tueur qui évite visiblement de frapper l'Obsession + récupérations courtes → KTW.
- **Confirmer** (HEURISTIC) : récupération de plus en plus courte au fil des coups sur des non-Obsession.
- **Adaptation robuste** (HEURISTIC) : ne pas compter sur la distance gagnée après un coup. L'Obsession peut « prendre » des coups pour vider les jetons (surtout en SWF).
- **Counterplay** (HEURISTIC) : l'Obsession fait des protection hits. Couvrir les décrochages avec l'Obsession proche.
- **Erreurs à ne pas faire** (HEURISTIC) : se soigner à côté du tueur en comptant sur le temps de récupération.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : OK (5 %/jeton, 6/7/8 jetons, 30/35/40 %, −2 jetons, gel).
- **Sources** : [24][19][25][14]

### Bamboozle — The Clown
- **Statut / catégorie** : LIVE 10.1.2a · chase (anti-loop)
- **Effet LIVE + valeurs** : vitesse de saut du tueur **+5/10/15 %** (effet permanent, bien présent dans le texte LIVE) ; chaque fenêtre sautée par le tueur est bloquée **pour tous les survivants 8/12/16 s** ; la ressauter relance le minuteur, en sauter une autre y transfère l'effet (une seule fenêtre à la fois). Pas d'effet sur les palettes [26]. Icône de durée depuis 9.5.1 (changement non documenté, wiki). STRONG_SECONDARY (la note 9.5.0 [21] ne fait que réécrire la description).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : après un saut du tueur, la fenêtre porte le blocage de l'Entité, avec une icône de minuterie (9.5.1). Très lisible.
- **Soupçonner / Confirmer** (HEURISTIC) : blocage de la fenêtre dès le **1er** saut du tueur (le blocage basekit n'arrive qu'au 3e saut du **survivant**) → Bamboozle confirmé.
- **Adaptation robuste** (HEURISTIC) : ne pas choisir de loops qui ne tiennent que par la fenêtre (shack, jungle gym simple) ; préférer les palettes. Anticiper la transition vers la tuile suivante.
- **Counterplay** (HEURISTIC) : forcer le tueur à contourner (tant qu'il ne saute pas, pas de blocage) ; utiliser la fenêtre bloquée pour « ralentir » ses mindgames.
- **Erreurs à ne pas faire** (HEURISTIC) : revenir en boucle vers une fenêtre qu'il vient de sauter (chaque nouveau saut du tueur relance les 8/12/16 s).
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1,5.
- **Écart avec le seed** : OK (8/12/16 s et bonus de saut 5/10/15 %, tous deux LIVE).
- **Sources** : [26][21][14]

### Hex: No One Escapes Death (NOED) — Générale
- **Statut / catégorie** : LIVE 10.1.2a · hex · endgame
- **Effet LIVE + valeurs** : quand les portes sont alimentées, s'il reste un totem terne, il devient Hex : tous les survivants sont **Exposed** et le tueur gagne **2/3/4 %** de Haste. L'aura du totem est visible par les survivants à **4 m**, rayon qui s'élargit jusqu'à **24 m en 30 s**. Inactive s'il ne reste aucun totem terne [27]. STRONG_SECONDARY (aucun changement de valeur en 9.x-10.x ; la note 10.0.0 ne contient qu'un correctif de révélation [40]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : **icône Exposed** sur tous les survivants dès l'alimentation des portes. Un totem Hex allumé apparaît ; son aura devient visible de près.
- **Soupçonner** (HEURISTIC) : aucun totem purifié pendant la partie + tueur qui « lâche » en fin de partie. Le seul signe fiable est l'Exposed.
- **Confirmer** (HEURISTIC) : Exposed à l'alimentation des portes → NOED (ou Haunted Ground/Devour/NWO, qui ont d'autres déclencheurs).
- **Adaptation robuste** (HEURISTIC) : purifier les **totems ternes** pendant la partie quand ça ne coûte rien (en passant). En fin de partie : ne pas décrocher sans que les portes soient ouvertes et sans avoir trouvé le totem.
- **Counterplay** (HEURISTIC) : trouver le totem (aura qui s'élargit) avec 2 survivants pendant que le 3e ouvre. Garder de l'Endurance (Borrowed Time) pour un décrochage sûr.
- **Erreurs à ne pas faire** (HEURISTIC) : sauvetage « héroïque » Exposed au crochet de sous-sol ; se croire safe blessé.
- **Menace (HEURISTIC 0-3)** : SoloQ 2,5 / SWF 1,5.
- **Écart avec le seed** : OK (2/3/4 %, 4 → 24 m en 30 s).
- **Sources** : [27][40]

### Turn Back the Clock — The First
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (perte instantanée)
- **Effet LIVE + valeurs** : pendant **40/50/60 s** après un accrochage, le bouton d'aptitude fait exploser un générateur ciblé à **20 m** ou moins : perte de **10 %** puis régression [28]. **VERIFIED_MULTI_SOURCE** (wiki + note officielle 9.4.0 [25]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : explosion de gen **sans coup de pied**, **juste après un accrochage**, avec le tueur à portée de vue (moins de ~20 m).
- **Soupçonner** (HEURISTIC) : The First + gen qui explose peu après un crochet, tueur proche sans kick.
- **Confirmer** (HEURISTIC) : répétition après l'accrochage suivant ; écran de fin.
- **Adaptation robuste** (HEURISTIC) : après un accrochage, ne répare pas un gen en vue du tueur à courte portée. Change de gen ou attends qu'il s'éloigne.
- **Counterplay** (HEURISTIC) : le tueur doit être proche : c'est du proxy. Réparer loin du crochet.
- **Erreurs à ne pas faire** (HEURISTIC) : faire le gen à côté du crochet.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : OK (40/50/60 s, 20 m, 10 %).
- **Sources** : [28][25]

### Celestial Witness — The Judgment
- **Statut / catégorie** : LIVE 10.1.2a (perk du chapitre 10.1.0) · info/aura · Obsession
- **Effet LIVE + valeurs** : toutes les **30 s**, si l'Obsession est à **au moins 40 m** du tueur, il voit son aura **2/2,5/3 s** ; sinon, le survivant le plus éloigné devient l'Obsession [29]. **VERIFIED_MULTI_SOURCE** (wiki + note officielle 10.1.0 [19]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : icône d'**Obsession** qui change de survivant au fil de la partie (le seed parle de transfert au plus éloigné).
- **Soupçonner** (HEURISTIC) : The Judgment + l'Obsession passe d'un survivant à l'autre sans raison visible (pas de DS, pas de Decisive) → Celestial Witness plausible.
- **Confirmer** (HEURISTIC) : l'Obsession loin du tueur se fait « visiter » régulièrement ; écran de fin.
- **Adaptation robuste** (HEURISTIC) : si tu es l'Obsession, pars du principe que ta position est connue par intervalles. Bouge après chaque tranche de 30 s ; utilise les obstacles.
- **Counterplay** (HEURISTIC) : Distortion. Rester à ≤40 m quand c'est tactique (ça transfère l'Obsession).
- **Erreurs à ne pas faire** (HEURISTIC) : se cacher longtemps au même endroit en étant l'Obsession.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 / SWF 1.
- **Écart avec le seed** : OK.
- **Sources** : [29][19]

### Discordance — The Legion
- **Statut / catégorie** : LIVE 10.1.2a · info/aura
- **Effet LIVE + valeurs** : tout gen à **64/96/128 m** ou moins réparé par **2 survivants ou plus** est surligné en jaune ; au 1er surlignage, **Loud Noise Notification** sur le gen ; le surlignage **persiste 4 s** après la fin de la condition (hors portée ou 1 seul réparateur) [30]. STRONG_SECONDARY (aucune note officielle 9.x-10.x).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : aucun direct. Le tueur arrive sur le gen dès que tu es à 2 dessus.
- **Soupçonner** (HEURISTIC) : deux arrivées rapides sur des gens en duo, alors que les solos sont épargnés.
- **Confirmer** (HEURISTIC) : un duo attire le tueur à coup sûr, un solo non.
- **Adaptation robuste** (HEURISTIC) : **1 survivant par gen** (c'est aussi plus efficace).
- **Counterplay** (HEURISTIC) : si le tueur arrive, se séparer immédiatement dans 2 directions (le tueur garde l'aura 4 s après la séparation : bouger, ne pas rester à côté du gen).
- **Erreurs à ne pas faire** (HEURISTIC) : rester à 3 sur le dernier gen alors que le tueur n'est pas en poursuite.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 0,5.
- **Écart avec le seed** : OK (64/96/128 m, alerte). Omet la persistance de 4 s : IMPRÉCIS mineur.
- **Sources** : [30]

### Darkness Revealed — The Dredge
- **Statut / catégorie** : LIVE 10.1.2a · info/aura
- **Effet LIVE + valeurs** : fouiller un casier révèle les survivants à **8 m** ou moins de **n'importe quel** casier pendant **6/7/8 s** (était 3/4/5 s avant 8.1.0) ; recharge **30 s** [31]. STRONG_SECONDARY.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : le tueur ouvre un casier sans raison apparente, puis se dirige vers un survivant proche d'un casier.
- **Soupçonner** (HEURISTIC) : ouvertures de casiers fréquentes + arrivées ciblées sur des survivants près de casiers (Dredge : combo naturel avec son pouvoir).
- **Confirmer** (HEURISTIC) : écran de fin.
- **Adaptation robuste** (HEURISTIC) : réparer, soigner et se cacher à plus de 8 m des casiers quand c'est possible.
- **Counterplay** (HEURISTIC) : Distortion.
- **Erreurs à ne pas faire** (HEURISTIC) : se soigner près d'une rangée de casiers.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 / SWF 0,5.
- **Écart avec le seed** : OK.
- **Sources** : [31]

### Scourge Hook: Floods of Rage — The Onryō
- **Statut / catégorie** : LIVE 10.1.2a · scourge · info/aura
- **Effet LIVE + valeurs** : 4 crochets deviennent Fléau en début de partie (aura blanche, a priori pour le tueur) ; à chaque décrochage d'un crochet Fléau, le tueur voit les auras de **tous les autres survivants 5/6/7 s** [32]. STRONG_SECONDARY.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : crochets Fléau (le seed parle de « crochet blanc » ; visibilité côté survivant : UNCERTAIN). Le tueur revient droit sur le décrocheur ou sur un tiers juste après le décrochage.
- **Soupçonner** (HEURISTIC) : présence de crochets Fléau (d'autres Scourge ou plusieurs perks) + trajet direct après décrochage.
- **Confirmer** (HEURISTIC) : Distortion (jeton perdu au décrochage), écran de fin.
- **Adaptation robuste** (HEURISTIC) : après un décrochage d'un crochet Fléau, les tiers bougent et se cachent derrière des obstacles.
- **Counterplay** (HEURISTIC) : Distortion. Décrocher quand le tueur est loin.
- **Erreurs à ne pas faire** (HEURISTIC) : rester immobile près du crochet après le décrochage.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 / SWF 1.
- **Écart avec le seed** : OK (4 crochets, 5/6/7 s).
- **Sources** : [32]

### Ultimate Weapon — The Xenomorph
- **Statut / catégorie** : LIVE 10.1.2a · info (cri) + aveuglement
- **Effet LIVE + valeurs** : quand le tueur fouille un casier, tous les survivants à **40 m ou moins de ce casier** crient (position révélée) et subissent **Blindness 30 s** ; recharge **55/50/45 s** [33]. 40 m (était 32 m) et 55/50/45 s (était 80/70/60 s) depuis 9.2.0 : **VERIFIED_MULTI_SOURCE** (wiki + note officielle 9.2.0 [16]). La version « rayon de terreur » (souvenir du modèle) est **fausse** pour la LIVE (CONFLICT-K91-03 résolu).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : **cri involontaire** + **icône Blindness** (tu ne vois plus les auras) au moment où le tueur fouille un casier à 40 m ou moins. Très lisible.
- **Soupçonner / Confirmer** (HEURISTIC) : cri + Blindness sans poursuite ni coup → Ultimate Weapon quasi certaine (hors pouvoirs).
- **Adaptation robuste** (HEURISTIC) : sous Blindness, ne compte plus sur Kindred ou Bond ; pars de l'hypothèse que le tueur connaît ta position.
- **Counterplay** (HEURISTIC) : bouger immédiatement après le cri. Rester à plus de 40 m des casiers que le tueur peut fouiller (le rayon part du casier, pas du tueur). Après un déclenchement, 45-55 s de répit.
- **Erreurs à ne pas faire** (HEURISTIC) : reprendre le même gen après le cri.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : OK (40 m, Blindness 30 s, 55/50/45 s).
- **Sources** : [33][16]

### Scourge Hook: Weeping Wounds — Générale (ex-Scourge Hook: Gift of Pain, The Cenobite)
- **Statut / catégorie** : LIVE 10.1.2a · scourge · anti-soin · slowdown (vitesse d'action)
- **Effet LIVE + valeurs** : 4 crochets Fléau ; décroché d'un crochet Fléau → **Haemorrhage 90 s** (**pas de Mangled** dans le texte LIVE). Après le 1er soin complet de ce survivant, il répare et soigne **10/13/16 %** plus lentement jusqu'à ce qu'il soit de nouveau blessé (par n'importe quel moyen) [34]. STRONG_SECONDARY. Renommage (ex-Gift of Pain, départ Hellraiser) : VERIFIED_MULTI_SOURCE (wiki + note officielle 9.0.0 [23]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : icône **Haemorrhage** (seule, sans Mangled) à la sortie d'un crochet. Après le soin, un statut de pénalité : son affichage exact dans le HUD est UNCERTAIN.
- **Soupçonner** (HEURISTIC) : Haemorrhage juste après un décrochage, sans coup reçu (Sloppy Butcher exclu : il s'applique aux coups et donne aussi Mangled).
- **Confirmer** (HEURISTIC) : réparation visiblement lente après le soin ; écran de fin.
- **Adaptation robuste** (HEURISTIC) : ne pas soigner la victime tout de suite si le tueur est en approche. Elle peut rester blessée et réparer (la pénalité ne tombe qu'**après** le 1er soin complet, confirmé par le wiki).
- **Counterplay** (HEURISTIC) : garder les soins pour des moments sûrs. Redevenir blessé (coup protecteur, etc.) efface la pénalité (« until they are injured again by any means », wiki).
- **Erreurs à ne pas faire** (HEURISTIC) : soigner pour rien un survivant qui va reprendre un coup de toute façon.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 / SWF 1.
- **Écart avec le seed** : OK pour le nom, 90 s et 10/13/16 %. **FAUX** : « Hemorrhage **et Mangled** » (le texte LIVE n'applique que Haemorrhage).
- **Sources** : [34][23][14]

### Hex: Fortune's Fool — Générale (ex-Hex: Plaything, The Cenobite)
- **Statut / catégorie** : LIVE 10.1.2a · hex · info (Oblivious)
- **Effet LIVE + valeurs** : s'il reste un totem terne, le 1er accrochage de chaque survivant allume un Hex lié à ce survivant (maudit) : il devient **Oblivious** ; le totem est **bloqué pour tous les autres survivants 90 s** (ni purification ni bénédiction), le maudit peut le purifier ; le maudit voit l'aura du totem à **24/20/16 m** [35]. STRONG_SECONDARY. Renommage (ex-Hex: Plaything) : VERIFIED_MULTI_SOURCE (wiki + note officielle 9.0.0 [23]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 (NON LIVE).
- **Indice observable (survivant)** (HEURISTIC) : icône **Oblivious** après ton 1er accrochage ; aura d'un totem proche (à ≤ 24/20/16 m). Tu n'entends plus le rayon de terreur.
- **Soupçonner / Confirmer** (HEURISTIC) : Oblivious + totem Hex qui s'allume après le 1er crochet → confirmé.
- **Adaptation robuste** (HEURISTIC) : purifier son totem rapidement, surtout contre un tueur de poursuite ou un tueur furtif. Sous Oblivious, se déplacer avec prudence (regarder derrière soi).
- **Counterplay** (HEURISTIC) : après 90 s, n'importe qui peut purifier. En SWF, un coéquipier purifie à la place.
- **Erreurs à ne pas faire** (HEURISTIC) : ignorer le totem et réparer en Oblivious à côté d'un tueur à petit rayon.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : OK (nom, 90 s, 24/20/16 m).
- **Sources** : [35][23][14]

---

## Matériel pour la PERK DEDUCTION

Toutes les règles ci-dessous sont des **HEURISTIC**.
1. **Cri en réparant + chute d'un coéquipier au même instant + gen qui recule**, sur un gen déjà frappé → **Eruption** (Surge ne fait pas crier). **Gen qui recule sans cri**, tueur à ≤ 32 m, chute sur coup de base → **Surge**. Comportement robuste : lâcher les gens frappés dès qu'une poursuite tourne mal, et éloigner les poursuites des gens.
2. **Gen bloqué juste après un accrochage, au moment où un survivant le lâche** → **Dead Man's Switch**. Comportement robuste : après chaque crochet, faire le 1er « lâcher » sur un gen peu avancé.
3. **Gen bloqué juste après la pop d'un autre gen, et c'est le plus avancé** → **No Holds Barred** (≠ DMS, ≠ Grim Embrace). Comportement robuste : synchroniser les pops et ne pas laisser un seul gen très avancé.
4. **Gen lâché qui recule sans coup de pied** + totem allumé → **Hex: Ruin** (écarter Call of Brine/Oppression par l'absence de kick). Comportement robuste : finir les gens entamés, purifier en passant.
5. **Icône Exposed pour tous à l'alimentation des portes** → **NOED**. Comportement robuste : purifier les totems ternes en cours de partie ; en fin de partie, ne décrocher qu'avec les portes ouvertes et le totem localisé.
6. **Fenêtre bloquée par l'Entité dès le 1er saut du tueur (icône minuterie)** → **Bamboozle**. Comportement robuste : privilégier les palettes, anticiper la tuile suivante.
7. **Oblivious + totem Hex qui s'allume au 1er crochet** → **Fortune's Fool**. Comportement robuste : purifier vite (le maudit est le seul à pouvoir le faire pendant 90 s, confirmé wiki).
8. **Cri + Blindness au moment où le tueur fouille un casier à ≤ 40 m** → **Ultimate Weapon**. Comportement robuste : bouger tout de suite, ne pas compter sur les auras.
9. **Haemorrhage (sans Mangled) à la sortie d'un crochet** (crochets Fléau présents) → **Weeping Wounds** ; si en plus le tueur revient droit sur un tiers → **Floods of Rage** plausible. Comportement robuste : différer le soin, bouger derrière un obstacle après un décrochage.
10. **Arrivées directes du tueur sur les soins (sans ligne de vue)** → **A Nurse's Calling** ; **sur les duos de réparation** → **Discordance** ; **après chaque crochet, vers les survivants lointains** → **BBQ**. Comportement robuste commun : 1 survivant par gen, soigner loin du tueur, bouger après chaque accrochage. Distortion aide à trancher.

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| K91-01 | Dead Man's Switch : blocage 25/30/35 s (arrêt instantané), aura blanche, pas de réactivation pendant l'effet | [36][16] | LIVE | VERIFIED_MULTI_SOURCE |
| K91-02 | Dead Man's Switch : temps de recharge 50 s (état « was » de la note PTB 10.2.0 ; absent du texte wiki) | [39] | LIVE | VERIFIED_PRIMARY |
| K91-03 | Dead Man's Switch : arrêt > 2 s, blocage 30/35/40 s, recharge 30/35/40 s | [39][36] | PTB 10.2.0 (NON LIVE) | VERIFIED_MULTI_SOURCE |
| K91-04 | Dead Man's Switch : blocage réduit depuis 40/45/50 s en 9.2.0 | [16][36] | HISTORICAL | VERIFIED_MULTI_SOURCE |
| K91-05 | Eruption : −10 %, cri + aura 8/10/12 s, recharge 30 s qui efface les surlignages, plus d'Incapacitated | [37] | LIVE | STRONG_SECONDARY |
| K91-06 | Eruption : le passage à 5 % du PTB 9.2.0 a été reverté (« postponed ») avant la LIVE → 10 % LIVE | [16][37] | LIVE | VERIFIED_MULTI_SOURCE |
| K91-07 | Hex: Ruin : régression 100/125/150 % (était 50/75/100 %) | [38][16] | LIVE (9.2.0) | VERIFIED_MULTI_SOURCE |
| K91-08 | Pop Goes the Weasel : changement du PTB 9.2.0 reverté avant la LIVE (hors périmètre, signalé) | [16] | 9.2.0 | VERIFIED_PRIMARY |
| K91-09 | A Nurse's Calling 28/30/32 m, tout survivant en soin (10.1.0) | [18][16][19] | LIVE | VERIFIED_MULTI_SOURCE |
| K91-10 | Keep Them Waiting : 5 %/jeton, 6/7/8 jetons, max 30/35/40 %, −2 jetons (Obsession), gel | [24][19] | LIVE (10.1.0) | VERIFIED_MULTI_SOURCE |
| K91-11 | Bamboozle : blocage pour tous 8/12/16 s, saut +5/10/15 %, icône de durée 9.5.1 | [26] | LIVE | STRONG_SECONDARY |
| K91-12 | Surge : attaque de base, gens à ≤ 32 m du tueur, −6/7/8 %, pas de cri ; nom d'origine (Jolt 5.3.0 → 7.3.3) | [20][14] | LIVE / HISTORICAL | STRONG_SECONDARY |
| K91-13 | Deadlock → No Holds Barred, Plaything → Fortune's Fool, Gift of Pain → Weeping Wounds (9.0.0) | [23] + pages wiki | LIVE | VERIFIED_MULTI_SOURCE |
| K91-14 | Barbecue & Chilli : ≥ 60/50/40 m du crochet, 5 s, sans bonus BP | [17] | LIVE | STRONG_SECONDARY |
| K91-15 | No Holds Barred : gen le plus avancé bloqué 15/20/25 s à chaque gen terminé | [22] | LIVE | STRONG_SECONDARY |
| K91-16 | NOED : Exposed + Haste 2/3/4 %, aura du totem 4 → 24 m en 30 s | [27] | LIVE | STRONG_SECONDARY |
| K91-17 | Turn Back the Clock : 40/50/60 s après accrochage, gen à ≤ 20 m, −10 % | [28][25] | LIVE (9.4.0) | VERIFIED_MULTI_SOURCE |
| K91-18 | Celestial Witness : toutes les 30 s, Obsession ≥ 40 m → aura 2/2,5/3 s, sinon transfert au plus éloigné | [29][19] | LIVE (10.1.0) | VERIFIED_MULTI_SOURCE |
| K91-19 | Discordance : 64/96/128 m, ≥ 2 réparateurs, Loud Noise Notification, persistance 4 s | [30] | LIVE | STRONG_SECONDARY |
| K91-20 | Darkness Revealed : 8 m de tout casier, 6/7/8 s, recharge 30 s | [31] | LIVE | STRONG_SECONDARY |
| K91-21 | Floods of Rage : 4 crochets Fléau, auras des autres survivants 5/6/7 s au décrochage | [32] | LIVE | STRONG_SECONDARY |
| K91-22 | Ultimate Weapon : casier fouillé → cri + Blindness 30 s à ≤ 40 m du casier, recharge 55/50/45 s | [33][16] | LIVE (9.2.0) | VERIFIED_MULTI_SOURCE |
| K91-23 | Weeping Wounds : Haemorrhage 90 s (sans Mangled), puis −10/13/16 % soin/réparation après le 1er soin complet | [34] | LIVE | STRONG_SECONDARY |
| K91-24 | Fortune's Fool : Oblivious, totem bloqué aux autres 90 s, aura 24/20/16 m pour le maudit | [35] | LIVE | STRONG_SECONDARY |

## Conflits

#### CONFLICT-K91-01 : perte de génération d'Eruption (10 % ou 5 %)
- Source A : page wiki Eruption (page complète) : « −10 % of their total Progression » [37].
- Source B : résumé de recherche sur les notes 9.2.0 : « 5/5/5 % (was 10/10/10 %) » [8][9][10] (phrase issue des notes PTB 9.2.0).
- Preuve : la note officielle LIVE 9.2.0 [16], section « Tunneling Reduction Update » : « Postponed these changes… Reverted the perk changes associated with this update. Notably: … Eruption, Pop Goes the Weasel … ».
- Résolution : **RÉSOLU** — LIVE = 10 %. Le 5 % n'a existé qu'au PTB 9.2.0. Aucune modification ultérieure (9.3 → 10.1.2a, PTB 10.2.0).

#### CONFLICT-K91-02 : temps de recharge de Dead Man's Switch en LIVE
- Source A : wiki (page complète) : « cannot activate if its effect is still active from a previous activation », pas de recharge chiffrée [36].
- Source B : note officielle PTB 10.2.0 [39] : « (was when a Survivor instantly stopped repairing a Generator, and 25/30/35s block duration and 50s cooldown) ».
- Résolution : **RÉSOLU** en faveur de la note officielle (source primaire explicite ; le wiki est muet, il ne contredit pas). LIVE = recharge 50 s, VERIFIED_PRIMARY. Le patch d'introduction de ces 50 s n'est pas identifié (aucune note 9.x-10.1 ne le mentionne).

#### CONFLICT-K91-03 : Ultimate Weapon, déclencheur et portée
- Source A : seed : cri pour les survivants à moins de 40 m, Blindness 30 s, recharge 55/50/45 s.
- Source B : connaissance du modèle (pas une source) : effet sur les survivants qui entrent dans le rayon de terreur après l'ouverture du casier.
- Preuve : wiki (page complète) [33] et note officielle 9.2.0 [16] (« Increased range when opening a locker to 40 meters (was 32) ; cooldown 55/50/45 (was 80/70/60) »).
- Résolution : **RÉSOLU** — la version du seed est la bonne ; la version B est obsolète.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Surge | « Surge (ex-Jolt) » | Surge est le nom d'origine et actuel ; Jolt est un nom intermédiaire (audit) | FAUX |
| Surge (valeurs) | 32 m, 6/7/8 % | idem (wiki) | OK |
| Dead Man's Switch LIVE | 25/30/35 s, pas de blocage tant que le précédent est actif | 25/30/35 s OK (wiki + note 9.2.0) ; recharge 50 s omise (note 559) | IMPRÉCIS |
| Dead Man's Switch PTB | 30/35/40 s, 2 s, recharge 30/35/40 s (section PTB) | Concordant avec la note 559, bien étiqueté PTB | OK |
| Eruption | −10 %, cri + aura 8/10/12 s, recharge 30 s | idem (wiki ; 5 % reverté en 9.2.0) | OK |
| Hex: Ruin | 100/125/150 % | idem (wiki + note 9.2.0) | OK |
| Barbecue & Chilli | 60/50/40 m, 5 s, bonus BP retiré | idem (date du retrait non vérifiée) | OK |
| A Nurse's Calling | 28/30/32 m | idem (wiki + notes 9.2.0 / 10.1.0) | OK |
| No Holds Barred | 15/20/25 s, gen le plus avancé | idem | OK |
| Keep Them Waiting | 5 %/jeton, 6/7/8 jetons, max 30/35/40 % | idem (wiki + note 10.1.0) | OK |
| Bamboozle | vault +5/10/15 %, blocage 8/12/16 s | idem, les deux sont LIVE | OK |
| NOED | Haste 2/3/4 %, aura 4 → 24 m en 30 s | idem | OK |
| Turn Back the Clock | 40/50/60 s, 20 m, 10 % | idem (wiki + note 9.4.0) | OK |
| Celestial Witness | 30 s, > 40 m, 2/2,5/3 s | idem (wiki + note 10.1.0) | OK |
| Discordance | 64/96/128 m, ≥ 2 réparateurs, alerte | idem ; omet la persistance de 4 s | OK (IMPRÉCIS mineur) |
| Darkness Revealed | 8 m, 6/7/8 s, recharge 30 s | idem | OK |
| Floods of Rage | 5/6/7 s | idem | OK |
| Ultimate Weapon | 40 m, Blindness 30 s, 55/50/45 s | idem (wiki + note 9.2.0) | OK |
| Weeping Wounds | Hemorrhage **et Mangled** 90 s, puis 10/13/16 % | Haemorrhage seul 90 s ; 10/13/16 % OK | FAUX (Mangled) |
| Fortune's Fool | Oblivious, 90 s, 24/20/16 m | idem | OK |
| Catégories p97 : « Les blocages ne subissent pas les rendements décroissants » | Affirmation | Les notes 9.6.0 ne disent rien des blocages (audit) | NON VÉRIFIABLE |
| Catégories p97 : Ruin soumise aux DR | Affirmation | Liste des catégories DR non publiée | NON VÉRIFIABLE |
| Catégories p97 : Eruption (10 %) | 10 % | 10 % LIVE (conflit résolu) | OK |
| Noms No Holds Barred / Weeping Wounds / Fortune's Fool / Keep Them Waiting | Renommages | Confirmés (notes 9.0.0 et 9.4.0) | OK |

## Questions ouvertes

1. Dead Man's Switch : à quel patch la recharge de 50 s a-t-elle été introduite (aucune note 9.x-10.1 ne la mentionne) ?
2. Les survivants voient-ils les crochets Fléau (aura / HUD) ? Le wiki dit seulement « highlighted in white », sans préciser pour qui. Enjeu : utiliser le « crochet blanc » comme indice.
3. Les casiers bloquent-ils la lecture d'aura de BBQ / Discordance en LIVE ?
4. Les blocages (DMS, No Holds Barred) et les pertes instantanées (Eruption, Surge, TBtC) sont-ils soumis aux Diminishing Returns ?
5. Weeping Wounds : la pénalité de 10/13/16 % est-elle affichée comme statut dans le HUD du survivant ?

## Sources

[1] Dead Man's Switch — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Dead_Man's_Switch — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[2] Dead Man's Switch — Official DBD Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Dead_Man's_Switch — consulté le 27/09/2026 via WebSearch
[3] Dead Man's Switch — NightLight — https://nightlight.gg/perks/Dead_Man's_Switch — consulté le 27/09/2026 via WebSearch
[4] Eruption — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Eruption — consulté le 27/09/2026 via WebSearch
[5] Eruption — Official DBD Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Eruption — consulté le 27/09/2026 via WebSearch
[6] Hex: Ruin — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Hex:_Ruin — consulté le 27/09/2026 via WebSearch
[7] Hex: Ruin — Official DBD Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Hex:_Ruin — consulté le 27/09/2026 via WebSearch
[8] Patch Notes 9.2.X — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Patch_Notes_9.2.X — consulté le 27/09/2026 via WebSearch
[9] 9.2.0 | Sinister Grace Patch Notes — BHVR forums — https://forums.bhvr.com/dead-by-daylight/discussion/456978/9-2-0-sinister-grace-patch-notes — consulté le 27/09/2026 via WebSearch
[10] 9.2.0 | Sinister Grace — support.deadbydaylight.com — https://support.deadbydaylight.com/hc/en-us/articles/41607788392212-9-2-0-Sinister-Grace — consulté le 27/09/2026 via WebSearch
[11] 10.2.0 PTB Patch Notes — BHVR KB 559 — https://forums.bhvr.com/dead-by-daylight/kb/articles/559-10-2-0-ptb-patch-notes — consulté le 27/09/2026 via WebSearch
[12] Dead by Daylight v10.2.0 PTB — Perk Overhaul — Patched — https://patched.gg/games/dead-by-daylight/1020-ptb-patch-notes — consulté le 27/09/2026 via WebSearch
[13] 9.2.0 | PTB Patch Notes — Steam — https://steamcommunity.com/app/381210/eventcomments/594033220190780717/ — consulté le 27/09/2026 via WebSearch
[14] Audit phase 0 (local) — kb/seed/audit_phase0.txt (chronologie 10.1.0, points vérifiés §2.1, table Surge, tableau Bamboozle) — consulté le 27/09/2026
[15] 10.2.0 | PTB Patch Notes — SteamPeaks — https://steampeaks.com/news/706656822950364293 — consulté le 27/09/2026 via WebSearch
[16] 9.2.0 | Sinister Grace — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/523 — texte complet (kb/sources/patches/official_523.txt), consulté le 27/09/2026 (dont section finale « Postponed » : Eruption, Pop, BBQ, Pain Resonance…)
[17] deadbydaylight.wiki.gg/wiki/Barbecue_%26_Chilli — page complète via API, consultée le 27/09/2026
[18] deadbydaylight.wiki.gg/wiki/A_Nurse's_Calling — page complète via API, consultée le 27/09/2026
[19] 10.1.0 | Chorus of Sin — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/556 — texte complet (official_556.txt), consulté le 27/09/2026
[20] deadbydaylight.wiki.gg/wiki/Surge — page complète via API, consultée le 27/09/2026
[21] 9.5.0 | All-Kill: Comeback — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/538 — texte complet (official_538.txt), consulté le 27/09/2026 (réécriture des descriptions de perks)
[22] deadbydaylight.wiki.gg/wiki/No_Holds_Barred — page complète via API, consultée le 27/09/2026
[23] 9.0.0 | Five Nights at Freddy's — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/510 — texte complet (official_510.txt), consulté le 27/09/2026 (renommages Hellraiser)
[24] deadbydaylight.wiki.gg/wiki/Keep_Them_Waiting — page complète via API, consultée le 27/09/2026
[25] 9.4.0 | Stranger Things Chapter 2 — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/534 — texte complet (official_534.txt), consulté le 27/09/2026
[26] deadbydaylight.wiki.gg/wiki/Bamboozle — page complète via API, consultée le 27/09/2026
[27] deadbydaylight.wiki.gg/wiki/Hex:_No_One_Escapes_Death — page complète via API, consultée le 27/09/2026
[28] deadbydaylight.wiki.gg/wiki/Turn_Back_the_Clock — page complète via API, consultée le 27/09/2026
[29] deadbydaylight.wiki.gg/wiki/Celestial_Witness — page complète via API, consultée le 27/09/2026
[30] deadbydaylight.wiki.gg/wiki/Discordance — page complète via API, consultée le 27/09/2026
[31] deadbydaylight.wiki.gg/wiki/Darkness_Revealed — page complète via API, consultée le 27/09/2026
[32] deadbydaylight.wiki.gg/wiki/Scourge_Hook:_Floods_of_Rage — page complète via API, consultée le 27/09/2026
[33] deadbydaylight.wiki.gg/wiki/Ultimate_Weapon — page complète via API, consultée le 27/09/2026
[34] deadbydaylight.wiki.gg/wiki/Scourge_Hook:_Weeping_Wounds — page complète via API, consultée le 27/09/2026
[35] deadbydaylight.wiki.gg/wiki/Hex:_Fortune's_Fool — page complète via API, consultée le 27/09/2026
[36] deadbydaylight.wiki.gg/wiki/Dead_Man's_Switch — page complète via API, consultée le 27/09/2026 (onglet LIVE = historique 9.2.0 ; version PTB 10.2.0 affichée séparément)
[37] deadbydaylight.wiki.gg/wiki/Eruption — page complète via API, consultée le 27/09/2026
[38] deadbydaylight.wiki.gg/wiki/Hex:_Ruin — page complète via API, consultée le 27/09/2026
[39] 10.2.0 PTB Patch Notes — note officielle BHVR (NON LIVE) — https://forums.bhvr.com/dead-by-daylight/kb/articles/559 — texte complet (official_559.txt), consulté le 27/09/2026
[40] 10.0.0 | Jason — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/550 — texte complet (official_550.txt), consulté le 27/09/2026
