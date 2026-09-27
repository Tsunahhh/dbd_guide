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
- **Effet LIVE + valeurs** : après un accrochage, le 1er générateur qu'un survivant **arrête de réparer** est bloqué par l'Entité 25/30/35 s. Pour le tueur, il est surligné en blanc. Pas de réactivation tant que l'effet précédent dure [1][2]. Les notes PTB 10.2.0 décrivent l'état actuel comme « blocage 25/30/35 s + **temps de recharge 50 s** » [11][12]. Ce délai de 50 s n'apparaît pas dans le résumé du wiki (voir CONFLICT-K91-02). Durée : STRONG_SECONDARY ; délai de recharge : UNCERTAIN.
- **PTB 10.2.0** : blocage 30/35/40 s, recharge 30/35/40 s. Le déclenchement change : il faut maintenant que le survivant arrête de réparer « pendant plus de 2 s ». Note de dev : BHVR veut éviter les combos avec les interruptions forcées [11][12][15]. Valeurs vérifiées via résumé ; formulation exacte du déclenchement : UNCERTAIN.
- **Indice observable (survivant)** (HEURISTIC) : juste après un accrochage, le gen que tu lâches (ou qu'un coéquipier lâche) devient bloqué (pics de l'Entité, interaction impossible). Pas d'icône de statut.
- **Soupçonner** (HEURISTIC) : Deathslinger en face + un gen bloqué pile après un crochet → plausible. Un gen bloqué après un crochet sans qu'aucun gen n'ait été terminé (donc pas No Holds Barred ni Grim Embrace) → très plausible.
- **Confirmer** (HEURISTIC) : le blocage arrive au moment exact où un survivant lâche un gen **après** un accrochage. Écran de fin (loadout).
- **Adaptation robuste** (HEURISTIC) : après un accrochage, ne lâche pas un gen très avancé pour rien. Soit tu le finis, soit tu en lâches d'abord un peu avancé. En LIVE, le 1er gen lâché « consomme » l'effet : un lâcher « sacrificiel » sur un gen peu avancé le neutralise.
- **Counterplay** (HEURISTIC) : si le tueur arrive et que tu dois fuir, lâche le gen le moins important en premier. En SWF, annonce « DMS » pour que personne ne quitte un gen à 80 %. Le PTB 10.2.0 (2 s) rendrait ce lâcher sacrificiel plus coûteux.
- **Erreurs à ne pas faire** (HEURISTIC) : lâcher un gen à 90 % pour aller décrocher juste après un accrochage.
- **Menace (HEURISTIC 0-3)** : SoloQ 2 / SWF 1,5.
- **Écart avec le seed** : OK pour 25/30/35 s et l'aura blanche. IMPRÉCIS : le seed omet le possible temps de recharge de 50 s (UNCERTAIN). La section PTB du seed (30/35/40 s, 2 s, recharge 30/35/40 s) est correcte et bien étiquetée PTB.
- **Sources** : [1][2][3][11][12][15]

### Eruption — The Nemesis
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (perte instantanée) + info
- **Effet LIVE + valeurs** : l'action « endommager un générateur » (coup de pied) surligne le gen en jaune pour le tueur. Quand un survivant passe à l'état mourant (par n'importe quel moyen), tous les gens surlignés explosent et régressent. Les survivants qui réparent crient et leur aura est révélée. Il n'y a plus d'Incapacitated dans la version actuelle [4][5]. **Perte : 10 % selon la page perk du wiki (via résumé), 5 % selon un résumé des notes 9.2.0** → CONFLICT-K91-01, **UNRESOLVED**. Durée de l'aura et temps de recharge (8/10/12 s, 30 s) : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN (non vérifié, quota épuisé ; les 58 perks modifiées n'ont pas été lues).
- **Indice observable (survivant)** (HEURISTIC) : tu **cries** en réparant, pile au moment où quelqu'un tombe. Le gen explose (étincelles, barre qui recule, régression). L'icône « aura révélée » n'existe pas : ton aura est visible sans que tu le saches.
- **Soupçonner** (HEURISTIC) : cri pendant la réparation au moment exact d'une mise au sol + gen qui recule → Eruption quasi certaine (Surge : seulement si le coup est une attaque de base, et dans un rayon de 32 m).
- **Confirmer** (HEURISTIC) : le cri et la régression arrivent **sur un gen déjà frappé**, même loin du tueur (Surge ne dépasse pas 32 m).
- **Adaptation robuste** (HEURISTIC) : sur un gen déjà frappé (entourage jaune invisible pour toi, mais tu as pu voir le coup de pied), lâche le gen quand un coéquipier va tomber (poursuite qui tourne mal). Préfère les gens jamais frappés.
- **Counterplay** (HEURISTIC) : lire les poursuites (Kindred, cris) et lâcher le gen **avant** la mise au sol : pas de cri, pas d'aura révélée. Un survivant slugué déclenche Eruption : un ramassage rapide limite le slug.
- **Erreurs à ne pas faire** (HEURISTIC) : rester sur un gen frappé pendant que le porteur de poursuite est blessé et coincé en zone morte.
- **Menace (HEURISTIC 0-3)** : SoloQ 2 / SWF 1,5.
- **Écart avec le seed** : 10 % → **NON VÉRIFIABLE** (conflit 10 / 5 %). « Temps de recharge 30 s », « 8/10/12 s » → NON VÉRIFIABLE. La mention cri + aura (et non Incapacitated) est OK.
- **Sources** : [4][5][8][9][10]

### Hex: Ruin — The Hag
- **Statut / catégorie** : LIVE 10.1.2a · hex · slowdown (régression)
- **Effet LIVE + valeurs** : tant que le totem Hex tient, tout gen **non réparé** régresse automatiquement à 100/125/150 % de la vitesse de régression normale. Les valeurs ont été relevées depuis 50/75/100 % [6][7][8]. Désactivée si le totem est purifié ou béni. STRONG_SECONDARY (valeur de la page wiki actuelle ; montée attribuée à 9.2.0 par le résumé [8]).
- **PTB 10.2.0** : UNCERTAIN (non vérifié). Le seed range Ruin dans « vitesse de régression soumise aux DR » : NON VÉRIFIABLE (l'audit note que la liste des catégories soumises aux DR n'est pas publiée).
- **Indice observable (survivant)** (HEURISTIC) : un gen lâché **recule tout seul** sans coup de pied (pas d'animation de kick, pas de bruit de dégât). Un totem allumé (flamme, grésillement audible de près) près de la zone de départ.
- **Soupçonner** (HEURISTIC) : un gen partiel qui a reculé pendant ton absence alors que le tueur était en poursuite ailleurs → Ruin (ou Call of Brine / Oppression / Lay Waste : écarter par la présence d'un coup de pied).
- **Confirmer** (HEURISTIC) : trouver le totem Hex allumé. Si le gen arrête de reculer seul une fois le totem purifié, c'est confirmé (aussi : Detective's Hunch, Small Game, Counterforce).
- **Adaptation robuste** (HEURISTIC) : ne pas éparpiller les réparations. Finir les gens entamés, travailler à 2 si ça évite les gens « abandonnés ». Chercher le totem tôt, en passant, sans lâcher un gen presque fini.
- **Counterplay** (HEURISTIC) : purification (14 s de base, non revérifiée ici), Counterforce, Boon: Circle of Healing / Shadow Step (une bénédiction coupe la Hex). En SWF, 1 joueur part purifier pendant qu'un autre fait tourner la poursuite.
- **Erreurs à ne pas faire** (HEURISTIC) : tout le monde part chercher le totem (pas de pression sur les gens) ; lâcher un gen à 70 % pour aller « toucher » un autre gen.
- **Menace (HEURISTIC 0-3)** : SoloQ 2,5 / SWF 1,5.
- **Écart avec le seed** : OK (100/125/150 %).
- **Sources** : [6][7][8]

### Barbecue & Chilli — The Cannibal
- **Statut / catégorie** : LIVE 10.1.2a · info/aura
- **Effet LIVE + valeurs** (seed) : à chaque accrochage, auras des survivants à plus de 60/50/40 m du crochet pendant 5 s. Le seed dit aussi que le bonus de Bloodpoints a été retiré en 6.1.0. **seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)** — UNCERTAIN (valeurs et patch du retrait BP).
- **PTB 10.2.0** : UNCERTAIN.
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct (pas d'icône). Avec Distortion, un jeton consommé au moment d'un accrochage est un indice fort d'aura (BBQ ou autre). Le tueur file droit vers toi juste après l'accrochage.
- **Soupçonner** (HEURISTIC) : trajet direct vers toi après chaque crochet, alors que tu étais loin et hors de vue → aura à l'accrochage (BBQ, Floods of Rage s'il s'agit d'un décrochage de Scourge).
- **Confirmer** (HEURISTIC) : Distortion, Object/Kindred (tu vois le tueur se tourner vers toi), écran de fin.
- **Adaptation robuste** (HEURISTIC) : au moment d'un accrochage, sois soit **proche** du crochet (sous le seuil), soit **caché** derrière un gros obstacle en ayant bougé ensuite. Casier à l'instant de l'accrochage : non vérifié ici que ça bloque l'aura (règle générale « les casiers bloquent les auras » : UNCERTAIN).
- **Counterplay** (HEURISTIC) : Distortion. Bouger après la révélation (le tueur voit une position figée de 5 s). Varier les gens pour qu'il ne sache pas lequel pressurer.
- **Erreurs à ne pas faire** (HEURISTIC) : rester sur le même gen isolé après chaque crochet, en croyant que la distance protège.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : NON VÉRIFIABLE (60/50/40 m, 5 s, retrait BP 6.1.0).
- **Sources** : aucune lue (quota)

### A Nurse's Calling — The Nurse
- **Statut / catégorie** : LIVE 10.1.2a · info/aura · anti-soin
- **Effet LIVE + valeurs** : auras des survivants qui soignent ou sont soignés dans un rayon de **28/30/32 m** (valeur 10.1.0 relevée par l'audit, patch notes 10.1.0) [14]. VERIFIED (audit phase 0).
- **PTB 10.2.0** : UNCERTAIN (non vérifié).
- **Indice observable (survivant)** (HEURISTIC) : aucun direct. Le tueur arrive droit sur un soin, souvent sans poursuite préalable.
- **Soupçonner** (HEURISTIC) : 2 soins interrompus d'affilée, et le tueur arrive par un angle sans ligne de vue → aura sur soin (A Nurse's Calling, ou Bitter Murmur / Nowhere to Hide exclus par le contexte).
- **Confirmer** (HEURISTIC) : un soin à plus de 32 m du tueur n'est jamais interrompu, un soin plus proche l'est. Distortion (jeton perdu pendant le soin).
- **Adaptation robuste** (HEURISTIC) : soigner loin du tueur (au-delà de 32 m) et hors de son trajet. Écourter les soins. Contre un tueur mobile (Nurse, Blight), préférer ne pas se soigner.
- **Counterplay** (HEURISTIC) : Distortion. Self-care bannis. En SWF, soigner quand le tueur est annoncé en poursuite ailleurs.
- **Erreurs à ne pas faire** (HEURISTIC) : soigner à côté du crochet ou d'un gen que le tueur patrouille.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : OK (28/30/32 m).
- **Sources** : [14]

### Surge — The Demogorgon
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (perte instantanée)
- **Effet LIVE + valeurs** (seed) : une mise au sol avec une **attaque de base** fait exploser les gens dans un rayon de 32 m, avec une perte de 6/7/8 % et de la régression. Nom : **Surge est le nom d'origine et actuel** ; « Jolt » n'a existé que de 5.3.0 à 7.3.3 (audit) [14]. Valeurs : **seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)** — UNCERTAIN. « Les réparateurs crient » : UNCERTAIN (non confirmé). Temps de recharge éventuel : non vérifié.
- **PTB 10.2.0** : UNCERTAIN.
- **Indice observable (survivant)** (HEURISTIC) : les gens proches de la mise au sol reculent brusquement (étincelles). Seulement sur mise au sol par coup de base, et seulement près du lieu de la chute.
- **Soupçonner** (HEURISTIC) : régression instantanée de gens **non frappés auparavant** au moment d'une chute proche → Surge. Si les gens explosent loin et avaient été frappés → Eruption.
- **Confirmer** (HEURISTIC) : la chute a lieu à moins de ~32 m du gen et c'est un coup de base (pas un pouvoir : Demogorgon Shred ne compte pas).
- **Adaptation robuste** (HEURISTIC) : ne pas mener une poursuite près d'un gen en cours (déjà une bonne règle). Réparer loin des poursuites.
- **Counterplay** (HEURISTIC) : éloigner les poursuites des gens avancés. Les tueurs à pouvoir (Nurse, Huntress…) déclenchent moins souvent si la chute vient du pouvoir.
- **Erreurs à ne pas faire** (HEURISTIC) : perdre la poursuite à côté du 3-gen.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : **FAUX** pour « Surge (ex-Jolt) », c'est l'inverse (audit). Valeurs NON VÉRIFIABLE.
- **Sources** : [14]

### No Holds Barred — Générale (ex-Deadlock, The Cenobite)
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (blocage)
- **Effet LIVE + valeurs** (seed) : à chaque gen terminé, le gen le plus avancé est bloqué 15/20/25 s (aura blanche pour le tueur). Renommage Deadlock → No Holds Barred en 9.0.0 (départ Hellraiser) ; les possesseurs du Cenobite gardent « Deadlock » (audit) [14]. Valeurs : **seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)** — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Indice observable (survivant)** (HEURISTIC) : juste après la pop d'un gen, un autre gen (le plus avancé) est bloqué par l'Entité. Très lisible.
- **Soupçonner** (HEURISTIC) : blocage immédiat après chaque gen terminé. À distinguer de Grim Embrace (blocage de tous les gens au 4e accrochage unique, et blocage d'un gen à chaque premier accrochage) et de DMS (lié à l'accrochage).
- **Confirmer** (HEURISTIC) : se reproduit à la 2e pop de gen.
- **Adaptation robuste** (HEURISTIC) : ne pas monter 2 gens proches à haute progression en même temps en attendant qu'un seul pop. Terminer les 2 derniers gens **simultanément** si possible (le blocage vise le plus avancé).
- **Counterplay** (HEURISTIC) : garder le 2e gen le plus avancé un peu en retrait, et pousser un gen neutre pour « absorber » le blocage. En SWF, synchroniser les pops.
- **Erreurs à ne pas faire** (HEURISTIC) : quitter tous le gen blocké pour se regrouper au même endroit.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : OK pour le nom. Valeurs NON VÉRIFIABLE.
- **Sources** : [14]

### Keep Them Waiting — Générale (ex-Save the Best for Last, The Shape)
- **Statut / catégorie** : LIVE 10.1.2a · chase
- **Effet LIVE + valeurs** : jetons gagnés en frappant un survivant autre que l'Obsession ; chaque jeton réduit le temps de récupération des attaques de base. **5 % par jeton** : changement 10.1.0 relevé par l'audit [14]. Plafonds (6/7/8 jetons, 30/35/40 %), perte de 2 jetons si l'Obsession est frappée, gel à la mort de l'Obsession : **seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)** — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Indice observable (survivant)** (HEURISTIC) : une **icône d'Obsession** est présente dans le HUD (un survivant est l'Obsession). Le tueur se remet très vite après un coup (essuyage court). Il enchaîne des coups rapprochés, au point qu'une Endurance perd de sa valeur.
- **Soupçonner** (HEURISTIC) : Obsession présente + tueur qui évite visiblement de frapper l'Obsession + récupérations courtes → KTW.
- **Confirmer** (HEURISTIC) : récupération de plus en plus courte au fil des coups sur des non-Obsession.
- **Adaptation robuste** (HEURISTIC) : ne pas compter sur la distance gagnée après un coup. L'Obsession peut « prendre » des coups pour vider les jetons (surtout en SWF).
- **Counterplay** (HEURISTIC) : l'Obsession fait des protection hits. Couvrir les décrochages avec l'Obsession proche.
- **Erreurs à ne pas faire** (HEURISTIC) : se soigner à côté du tueur en comptant sur le temps de récupération.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : OK pour 5 %/jeton. Reste NON VÉRIFIABLE.
- **Sources** : [14]

### Bamboozle — The Clown
- **Statut / catégorie** : LIVE 10.1.2a · chase (anti-loop)
- **Effet LIVE + valeurs** : chaque fenêtre sautée par le tueur est bloquée **pour tous les survivants 8/12/16 s**, une seule fenêtre à la fois. Pas d'effet sur les palettes. Icône de minuterie depuis 9.5.1 (audit, wiki.gg Bamboozle) [14]. Sauts de fenêtre 5/10/15 % plus rapides : marqué « historique » dans l'audit → UNCERTAIN que ce bonus soit toujours dans le texte LIVE.
- **PTB 10.2.0** : UNCERTAIN.
- **Indice observable (survivant)** (HEURISTIC) : après un saut du tueur, la fenêtre porte le blocage de l'Entité, avec une icône de minuterie (9.5.1). Très lisible.
- **Soupçonner / Confirmer** (HEURISTIC) : blocage de la fenêtre dès le **1er** saut du tueur (le blocage basekit n'arrive qu'au 3e saut du **survivant**) → Bamboozle confirmé.
- **Adaptation robuste** (HEURISTIC) : ne pas choisir de loops qui ne tiennent que par la fenêtre (shack, jungle gym simple) ; préférer les palettes. Anticiper la transition vers la tuile suivante.
- **Counterplay** (HEURISTIC) : forcer le tueur à contourner (tant qu'il ne saute pas, pas de blocage) ; utiliser la fenêtre bloquée pour « ralentir » ses mindgames.
- **Erreurs à ne pas faire** (HEURISTIC) : revenir en boucle vers une fenêtre qu'il vient de sauter.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1,5.
- **Écart avec le seed** : OK pour 8/12/16 s. IMPRÉCIS pour le bonus de saut 5/10/15 % (statut LIVE incertain).
- **Sources** : [14]

### Hex: No One Escapes Death (NOED) — Générale
- **Statut / catégorie** : LIVE 10.1.2a · hex · endgame
- **Effet LIVE + valeurs** (seed) : quand les portes sont alimentées, un totem terne devient Hex. Tous les survivants sont Exposed et le tueur gagne 2/3/4 % de Haste. L'aura du totem est visible par les survivants dans un rayon de 4 m, qui s'élargit jusqu'à 24 m en 30 s. **seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)** — UNCERTAIN. Mécanique générale cohérente avec connaissance du modèle (antérieure à mi-2026), UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Indice observable (survivant)** (HEURISTIC) : **icône Exposed** sur tous les survivants dès l'alimentation des portes. Un totem Hex allumé apparaît ; son aura devient visible de près.
- **Soupçonner** (HEURISTIC) : aucun totem purifié pendant la partie + tueur qui « lâche » en fin de partie. Le seul signe fiable est l'Exposed.
- **Confirmer** (HEURISTIC) : Exposed à l'alimentation des portes → NOED (ou Haunted Ground/Devour/NWO, qui ont d'autres déclencheurs).
- **Adaptation robuste** (HEURISTIC) : purifier les **totems ternes** pendant la partie quand ça ne coûte rien (en passant). En fin de partie : ne pas décrocher sans que les portes soient ouvertes et sans avoir trouvé le totem.
- **Counterplay** (HEURISTIC) : trouver le totem (aura qui s'élargit) avec 2 survivants pendant que le 3e ouvre. Garder de l'Endurance (Borrowed Time) pour un décrochage sûr.
- **Erreurs à ne pas faire** (HEURISTIC) : sauvetage « héroïque » Exposed au crochet de sous-sol ; se croire safe blessé.
- **Menace (HEURISTIC 0-3)** : SoloQ 2,5 / SWF 1,5.
- **Écart avec le seed** : NON VÉRIFIABLE (2/3/4 %, 4 → 24 m en 30 s).
- **Sources** : aucune lue (quota)

### Turn Back the Clock — The First
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (perte instantanée)
- **Effet LIVE + valeurs** (seed) : pendant 40/50/60 s après un accrochage, le bouton de pouvoir 1 fait exploser un générateur visible à moins de 20 m, avec une perte de 10 % et de la régression. **seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)** — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Indice observable (survivant)** (HEURISTIC) : explosion de gen **sans coup de pied**, **juste après un accrochage**, avec le tueur à portée de vue (moins de ~20 m).
- **Soupçonner** (HEURISTIC) : The First + gen qui explose peu après un crochet, tueur proche sans kick.
- **Confirmer** (HEURISTIC) : répétition après l'accrochage suivant ; écran de fin.
- **Adaptation robuste** (HEURISTIC) : après un accrochage, ne répare pas un gen en vue du tueur à courte portée. Change de gen ou attends qu'il s'éloigne.
- **Counterplay** (HEURISTIC) : le tueur doit être proche : c'est du proxy. Réparer loin du crochet.
- **Erreurs à ne pas faire** (HEURISTIC) : faire le gen à côté du crochet.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune lue (quota)

### Celestial Witness — The Judgment
- **Statut / catégorie** : LIVE 10.1.2a (perk du chapitre 10.1.0) · info/aura · Obsession
- **Effet LIVE + valeurs** (seed) : toutes les 30 s, si l'Obsession est à plus de 40 m, le tueur voit son aura pendant 2/2,5/3 s ; sinon, le survivant le plus éloigné devient l'Obsession. **seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)** — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Indice observable (survivant)** (HEURISTIC) : icône d'**Obsession** qui change de survivant au fil de la partie (le seed parle de transfert au plus éloigné).
- **Soupçonner** (HEURISTIC) : The Judgment + l'Obsession passe d'un survivant à l'autre sans raison visible (pas de DS, pas de Decisive) → Celestial Witness plausible.
- **Confirmer** (HEURISTIC) : l'Obsession loin du tueur se fait « visiter » régulièrement ; écran de fin.
- **Adaptation robuste** (HEURISTIC) : si tu es l'Obsession, pars du principe que ta position est connue par intervalles. Bouge après chaque tranche de 30 s ; utilise les obstacles.
- **Counterplay** (HEURISTIC) : Distortion. Rester à ≤40 m quand c'est tactique (ça transfère l'Obsession).
- **Erreurs à ne pas faire** (HEURISTIC) : se cacher longtemps au même endroit en étant l'Obsession.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 / SWF 1.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune lue (quota)

### Discordance — The Legion
- **Statut / catégorie** : LIVE 10.1.2a · info/aura
- **Effet LIVE + valeurs** (seed) : un gen réparé par 2 survivants ou plus est surligné en jaune dans un rayon de 64/96/128 m, avec une alerte. **seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)** — UNCERTAIN ; cohérent avec connaissance du modèle (antérieure à mi-2026), UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Indice observable (survivant)** (HEURISTIC) : aucun direct. Le tueur arrive sur le gen dès que tu es à 2 dessus.
- **Soupçonner** (HEURISTIC) : deux arrivées rapides sur des gens en duo, alors que les solos sont épargnés.
- **Confirmer** (HEURISTIC) : un duo attire le tueur à coup sûr, un solo non.
- **Adaptation robuste** (HEURISTIC) : **1 survivant par gen** (c'est aussi plus efficace).
- **Counterplay** (HEURISTIC) : si le tueur arrive, se séparer immédiatement dans 2 directions.
- **Erreurs à ne pas faire** (HEURISTIC) : rester à 3 sur le dernier gen alors que le tueur n'est pas en poursuite.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 0,5.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune lue (quota)

### Darkness Revealed — The Dredge
- **Statut / catégorie** : LIVE 10.1.2a · info/aura
- **Effet LIVE + valeurs** (seed) : ouvrir un casier révèle les survivants à moins de 8 m de **n'importe quel** casier pendant 6/7/8 s ; recharge 30 s. **seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)** — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Indice observable (survivant)** (HEURISTIC) : le tueur ouvre un casier sans raison apparente, puis se dirige vers un survivant proche d'un casier.
- **Soupçonner** (HEURISTIC) : ouvertures de casiers fréquentes + arrivées ciblées sur des survivants près de casiers (Dredge : combo naturel avec son pouvoir).
- **Confirmer** (HEURISTIC) : écran de fin.
- **Adaptation robuste** (HEURISTIC) : réparer, soigner et se cacher à plus de 8 m des casiers quand c'est possible.
- **Counterplay** (HEURISTIC) : Distortion.
- **Erreurs à ne pas faire** (HEURISTIC) : se soigner près d'une rangée de casiers.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 / SWF 0,5.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune lue (quota)

### Scourge Hook: Floods of Rage — The Onryō
- **Statut / catégorie** : LIVE 10.1.2a · scourge · info/aura
- **Effet LIVE + valeurs** (seed) : 4 crochets Fléau ; au décrochage d'un crochet Fléau, le tueur voit les autres survivants 5/6/7 s. **seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)** — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Indice observable (survivant)** (HEURISTIC) : crochets Fléau (le seed parle de « crochet blanc » ; visibilité côté survivant : UNCERTAIN). Le tueur revient droit sur le décrocheur ou sur un tiers juste après le décrochage.
- **Soupçonner** (HEURISTIC) : présence de crochets Fléau (d'autres Scourge ou plusieurs perks) + trajet direct après décrochage.
- **Confirmer** (HEURISTIC) : Distortion (jeton perdu au décrochage), écran de fin.
- **Adaptation robuste** (HEURISTIC) : après un décrochage d'un crochet Fléau, les tiers bougent et se cachent derrière des obstacles.
- **Counterplay** (HEURISTIC) : Distortion. Décrocher quand le tueur est loin.
- **Erreurs à ne pas faire** (HEURISTIC) : rester immobile près du crochet après le décrochage.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 / SWF 1.
- **Écart avec le seed** : NON VÉRIFIABLE.
- **Sources** : aucune lue (quota)

### Ultimate Weapon — The Xenomorph
- **Statut / catégorie** : LIVE 10.1.2a · info (cri) + aveuglement
- **Effet LIVE + valeurs** (seed) : ouvrir un casier fait crier (position révélée) les survivants à moins de 40 m et les aveugle (Blindness) 30 s ; recharge 55/50/45 s. **seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)** — UNCERTAIN. La connaissance du modèle (antérieure à mi-2026), UNCERTAIN, décrit plutôt une version où l'effet frappe les survivants qui **entrent dans le rayon de terreur** pendant une fenêtre après l'ouverture du casier. Je ne sais pas laquelle des deux versions est LIVE → UNCERTAIN (question ouverte).
- **PTB 10.2.0** : UNCERTAIN.
- **Indice observable (survivant)** (HEURISTIC) : **cri involontaire** + **icône Blindness** (tu ne vois plus les auras) peu après que le tueur a ouvert un casier. Très lisible.
- **Soupçonner / Confirmer** (HEURISTIC) : cri + Blindness sans poursuite ni coup → Ultimate Weapon quasi certaine (hors pouvoirs).
- **Adaptation robuste** (HEURISTIC) : sous Blindness, ne compte plus sur Kindred ou Bond ; pars de l'hypothèse que le tueur connaît ta position.
- **Counterplay** (HEURISTIC) : bouger immédiatement après le cri. Rester hors de portée d'un tueur qui ouvre un casier.
- **Erreurs à ne pas faire** (HEURISTIC) : reprendre le même gen après le cri.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : NON VÉRIFIABLE (portée et déclencheur à trancher).
- **Sources** : aucune lue (quota)

### Scourge Hook: Weeping Wounds — Générale (ex-Scourge Hook: Gift of Pain, The Cenobite)
- **Statut / catégorie** : LIVE 10.1.2a · scourge · anti-soin · slowdown (vitesse d'action)
- **Effet LIVE + valeurs** (seed) : décroché d'un crochet Fléau → Hemorrhage et Mangled 90 s. Après son 1er soin complet, le survivant répare et soigne 10/13/16 % plus lentement jusqu'à sa prochaine blessure. Renommage confirmé par l'audit (départ Hellraiser) [14]. Valeurs : **seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)** — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Indice observable (survivant)** (HEURISTIC) : icônes **Hemorrhage + Mangled** à la sortie d'un crochet. Après le soin, un statut de pénalité : son affichage exact dans le HUD est UNCERTAIN.
- **Soupçonner** (HEURISTIC) : Hemorrhage + Mangled juste après un décrochage (Sloppy Butcher exclu : il ne s'applique qu'aux coups).
- **Confirmer** (HEURISTIC) : réparation visiblement lente après le soin ; écran de fin.
- **Adaptation robuste** (HEURISTIC) : ne pas soigner la victime tout de suite si le tueur est en approche. Elle peut rester blessée et réparer (la pénalité ne tombe qu'**après** le soin complet, selon le seed).
- **Counterplay** (HEURISTIC) : garder les soins pour des moments sûrs. Prendre un coup protecteur « lave » la pénalité (redevenir blessé), selon le seed.
- **Erreurs à ne pas faire** (HEURISTIC) : soigner pour rien un survivant qui va reprendre un coup de toute façon.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 / SWF 1.
- **Écart avec le seed** : OK pour le nom. Valeurs NON VÉRIFIABLE.
- **Sources** : [14]

### Hex: Fortune's Fool — Générale (ex-Hex: Plaything, The Cenobite)
- **Statut / catégorie** : LIVE 10.1.2a · hex · info (Oblivious)
- **Effet LIVE + valeurs** (seed) : au 1er accrochage de chaque survivant, un Hex s'allume, lié à ce survivant. Le survivant devient Oblivious ; lui seul peut purifier le totem pendant 90 s, et il voit l'aura du totem dans un rayon de 24/20/16 m. Renommage confirmé par l'audit [14]. Valeurs : **seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)** — UNCERTAIN ; cohérent avec connaissance du modèle (antérieure à mi-2026), UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN.
- **Indice observable (survivant)** (HEURISTIC) : icône **Oblivious** après ton 1er accrochage ; aura d'un totem proche (à ≤ 24/20/16 m). Tu n'entends plus le rayon de terreur.
- **Soupçonner / Confirmer** (HEURISTIC) : Oblivious + totem Hex qui s'allume après le 1er crochet → confirmé.
- **Adaptation robuste** (HEURISTIC) : purifier son totem rapidement, surtout contre un tueur de poursuite ou un tueur furtif. Sous Oblivious, se déplacer avec prudence (regarder derrière soi).
- **Counterplay** (HEURISTIC) : après 90 s, n'importe qui peut purifier. En SWF, un coéquipier purifie à la place.
- **Erreurs à ne pas faire** (HEURISTIC) : ignorer le totem et réparer en Oblivious à côté d'un tueur à petit rayon.
- **Menace (HEURISTIC 0-3)** : SoloQ 1,5 / SWF 1.
- **Écart avec le seed** : OK pour le nom. Valeurs NON VÉRIFIABLE.
- **Sources** : [14]

---

## Matériel pour la PERK DEDUCTION

Toutes les règles ci-dessous sont des **HEURISTIC**.
1. **Cri en réparant + chute d'un coéquipier au même instant + gen qui recule**, avec un gen déjà frappé ou loin de la chute → **Eruption**. Si le gen était proche de la chute (≤32 m), non frappé, après un coup de base → **Surge**. Comportement robuste : lâcher les gens frappés dès qu'une poursuite tourne mal, et éloigner les poursuites des gens.
2. **Gen bloqué juste après un accrochage, au moment où un survivant le lâche** → **Dead Man's Switch**. Comportement robuste : après chaque crochet, faire le 1er « lâcher » sur un gen peu avancé.
3. **Gen bloqué juste après la pop d'un autre gen, et c'est le plus avancé** → **No Holds Barred** (≠ DMS, ≠ Grim Embrace). Comportement robuste : synchroniser les pops et ne pas laisser un seul gen très avancé.
4. **Gen lâché qui recule sans coup de pied** + totem allumé → **Hex: Ruin** (écarter Call of Brine/Oppression par l'absence de kick). Comportement robuste : finir les gens entamés, purifier en passant.
5. **Icône Exposed pour tous à l'alimentation des portes** → **NOED**. Comportement robuste : purifier les totems ternes en cours de partie ; en fin de partie, ne décrocher qu'avec les portes ouvertes et le totem localisé.
6. **Fenêtre bloquée par l'Entité dès le 1er saut du tueur (icône minuterie)** → **Bamboozle**. Comportement robuste : privilégier les palettes, anticiper la tuile suivante.
7. **Oblivious + totem Hex qui s'allume au 1er crochet** → **Fortune's Fool**. Comportement robuste : purifier vite (seul pendant 90 s selon le seed).
8. **Cri + Blindness peu après l'ouverture d'un casier par le tueur** → **Ultimate Weapon**. Comportement robuste : bouger tout de suite, ne pas compter sur les auras.
9. **Hemorrhage + Mangled à la sortie d'un crochet** (crochets Fléau présents) → **Weeping Wounds** ; si en plus le tueur revient droit sur un tiers → **Floods of Rage** plausible. Comportement robuste : différer le soin, bouger derrière un obstacle après un décrochage.
10. **Arrivées directes du tueur sur les soins (sans ligne de vue)** → **A Nurse's Calling** ; **sur les duos de réparation** → **Discordance** ; **après chaque crochet, vers les survivants lointains** → **BBQ**. Comportement robuste commun : 1 survivant par gen, soigner loin du tueur, bouger après chaque accrochage. Distortion aide à trancher.

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| K91-01 | Dead Man's Switch : blocage 25/30/35 s, aura blanche, pas de réactivation pendant l'effet | [1][2] | LIVE | STRONG_SECONDARY |
| K91-02 | Dead Man's Switch : temps de recharge 50 s (état « was » cité dans les notes PTB) | [11][12] | LIVE | UNCERTAIN |
| K91-03 | Dead Man's Switch : blocage 30/35/40 s, recharge 30/35/40 s, déclenchement après plus de 2 s d'arrêt | [11][12][15] | PTB 10.2.0 | STRONG_SECONDARY (résumé des notes officielles) |
| K91-04 | Dead Man's Switch : blocage réduit depuis 40/45/50 s | [1] | HISTORICAL | STRONG_SECONDARY |
| K91-05 | Eruption : cri + aura révélée, plus d'Incapacitated | [4][5] | LIVE | STRONG_SECONDARY |
| K91-06 | Eruption : perte 10 % (page wiki) vs 5 % (résumé 9.2.0) | [4] vs [8][9][10] | LIVE ? | UNCERTAIN (CONFLICT-K91-01) |
| K91-07 | Hex: Ruin : régression 100/125/150 % (était 50/75/100 %) | [6][7][8] | LIVE | STRONG_SECONDARY |
| K91-08 | Pop Goes the Weasel : 20 → 15 % (hors périmètre, signalé) | [8][9] | 9.2.0 ? | UNCERTAIN |
| K91-09 | A Nurse's Calling 28/30/32 m | [14] | LIVE 10.1.0 | VERIFIED (audit phase 0) |
| K91-10 | Keep Them Waiting 5 %/jeton | [14] | LIVE 10.1.0 | VERIFIED (audit phase 0) |
| K91-11 | Bamboozle : blocage pour tous 8/12/16 s, icône minuterie 9.5.1 | [14] | LIVE | STRONG_SECONDARY (audit) |
| K91-12 | Surge = nom d'origine et actuel ; Jolt 5.3.0 → 7.3.3 | [14] | HISTORICAL | STRONG_SECONDARY (audit) |
| K91-13 | Deadlock → No Holds Barred, Plaything → Fortune's Fool, Gift of Pain → Weeping Wounds (9.0.0) | [14] | LIVE | VERIFIED (audit) |

## Conflits

#### CONFLICT-K91-01 : perte de génération d'Eruption (10 % ou 5 %)
- Source A : page wiki Eruption (wiki.gg / fandom, via résumé de recherche) : « -10 % », buffée depuis -6 % [4][5].
- Source B : résumé de recherche sur les notes 9.2.0 Sinister Grace : « Decreased generator progress loss to 5/5/5 % (was 10/10/10 %) » [8][9][10]. Le résumé ne dit pas si la phrase vient des notes PTB ou LIVE.
- Contexte : l'audit (open question batch1_R3 n°11) signale que la page wiki 9.2.X dirait que les changements Pop / Eruption / Ruin / DMS du PTB 9.2.0 ont été annulés en LIVE. Or la page Ruin affiche bien 100/125/150 % (le buff serait donc LIVE), ce qui contredit une annulation globale.
- Hypothèse : changements partiellement appliqués (Ruin gardée, Eruption annulée ?), ou page Eruption pas à jour.
- Résolution : **UNRESOLVED** (quota de recherche épuisé). À trancher par une lecture directe des notes LIVE 9.2.0 (BHVR KB 523 / support.deadbydaylight.com article 41607788392212).

#### CONFLICT-K91-02 : temps de recharge de Dead Man's Switch en LIVE
- Source A : wiki (résumé) : « ne peut pas s'activer tant que l'effet précédent est actif » (pas de recharge chiffrée) [1][2].
- Source B : notes PTB 10.2.0 (résumé) : l'état précédent comprenait un « 50s cooldown » [11][12].
- Hypothèse : recharge de 50 s ajoutée en 9.2.0 ou plus tard, pas reprise par le résumé du wiki.
- Résolution : UNRESOLVED (plutôt en faveur de B, car la source est officielle, mais lue via un résumé).

#### CONFLICT-K91-03 : Ultimate Weapon, déclencheur et portée
- Source A : seed : cri pour les survivants à moins de 40 m, Blindness 30 s, recharge 55/50/45 s.
- Source B : connaissance du modèle (antérieure à mi-2026), UNCERTAIN (pas une source) : effet sur les survivants qui entrent dans le rayon de terreur pendant une fenêtre après l'ouverture du casier.
- Résolution : UNRESOLVED, à vérifier.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Surge | « Surge (ex-Jolt) » | Surge est le nom d'origine et actuel ; Jolt est un nom intermédiaire (audit) | FAUX |
| Dead Man's Switch LIVE | 25/30/35 s, pas de blocage tant que le précédent est actif | 25/30/35 s OK ; recharge 50 s probable, omise | IMPRÉCIS |
| Dead Man's Switch PTB | 30/35/40 s, 2 s, recharge 30/35/40 s (section PTB) | Concordant, bien étiqueté PTB | OK |
| Eruption | -10 %, cri + aura 8/10/12 s, recharge 30 s | 10 % vs 5 % en conflit ; durées non vérifiées | NON VÉRIFIABLE |
| Hex: Ruin | 100/125/150 % | Concordant | OK |
| A Nurse's Calling | 28/30/32 m | Concordant (10.1.0, audit) | OK |
| Keep Them Waiting | 5 %/jeton, 6/7/8 jetons, max 30/35/40 % | 5 %/jeton OK ; plafonds non vérifiés | OK (partiel) |
| Bamboozle | vault +5/10/15 %, blocage 8/12/16 s | Blocage OK ; bonus de vault marqué « historique » dans l'audit | IMPRÉCIS |
| Catégories p97 : « Les blocages ne subissent pas les rendements décroissants » | Affirmation | Les notes 9.6.0 ne disent rien des blocages (audit) | NON VÉRIFIABLE |
| Catégories p97 : Ruin soumise aux DR | Affirmation | Liste des catégories DR non publiée | NON VÉRIFIABLE |
| Catégories p97 : Eruption (10 %) | 10 % | Conflit 10 / 5 % | NON VÉRIFIABLE |
| BBQ, NOED, TBtC, Celestial Witness, Discordance, Darkness Revealed, Floods of Rage, Ultimate Weapon, Weeping Wounds, Fortune's Fool (valeurs) | Voir fiches | Non vérifiées (quota épuisé) | NON VÉRIFIABLE |
| Noms No Holds Barred / Weeping Wounds / Fortune's Fool / Keep Them Waiting | Renommages | Confirmés (audit) | OK |

## Questions ouvertes

1. Eruption LIVE : 10 % ou 5 % ? Les changements 9.2.0 (Pop 20 → 15 %, Eruption 10 → 5 %, DMS) sont-ils LIVE ou annulés ? Lire directement les notes LIVE 9.2.0.
2. Dead Man's Switch : recharge de 50 s en LIVE ? Depuis quel patch ?
3. Quelles perks de ce périmètre figurent parmi les 58 perks modifiées du PTB 10.2.0 (seule DMS est confirmée) ?
4. Valeurs LIVE non vérifiées : BBQ (60/50/40 m, 5 s), NOED (Haste 2/3/4 %, aura 4 → 24 m), Turn Back the Clock, Celestial Witness, Discordance, Darkness Revealed, Floods of Rage, Ultimate Weapon (déclencheur), Weeping Wounds (10/13/16 %, 90 s), Fortune's Fool (24/20/16 m, 90 s), Surge (6/7/8 %, cri ?), No Holds Barred (15/20/25 s), plafonds de KTW.
5. Bamboozle : le bonus de vault de 5/10/15 % est-il toujours dans le texte LIVE ?
6. Les survivants voient-ils les crochets Fléau (aura / HUD) ? Enjeu : utiliser le « crochet blanc » comme indice.
7. Les casiers bloquent-ils la lecture d'aura de BBQ / Discordance en LIVE ?
8. Les blocages (DMS, No Holds Barred) et les pertes instantanées (Eruption, Surge, TBtC) sont-ils soumis aux Diminishing Returns ?

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
