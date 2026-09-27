# Lot 3 — Perks tueur vues du survivant, page 93 du guide seed

Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 (15-21/09/2026) = **non LIVE**, toujours étiqueté PTB.
Méthode : WebSearch uniquement (résumés de recherche, WebFetch bloqué) → confiance plafonnée à STRONG_SECONDARY sauf citation de notes officielles.
Notes de menace / conseils = **HEURISTIC** sauf mention contraire.

**Couverture web : 3 éléments vérifiés par recherche (Thrilling Tremors, Deerstalker, Hex: Thrill of the Hunt) / 18 non re-vérifiés (quota WebSearch épuisé ; dont 3 partiellement recoupés par l'audit phase 0 : Blood Warden, Silent Shadow, Furtive Chase).**

Périmètre (21 perks) : Thrilling Tremors, Deerstalker, Hex: Thrill of the Hunt, Infectious Fright, Tinkerer, Spirit Fury, Hex: Face the Darkness, Agitation, Iron Grasp, Blood Warden, Remember Me, Dragon's Grip, Furtive Chase, Machine Learning, Trail of Torment, Silent Shadow, Hex: Retribution, Mindbreaker, Hex: Hive Mind, Secret Project, Scourge Hook: Monstrous Shrine.

## ⚠ Limite de vérification de ce lot (à lire en premier)

- Le **quota WebSearch de la session (200 appels, partagé entre agents) a été épuisé** après 6 recherches de ce lot. Les 3 recherches suivantes (Infectious Fright, Tinkerer, Spirit Fury) ont été refusées par l'outil.
- **Vérifiées par WebSearch** : Thrilling Tremors, Deerstalker, Hex: Thrill of the Hunt (3/21).
- **Recoupées par l'audit phase 0** (`kb/seed/audit_phase0.txt`, déjà vérifié) : Blood Warden (40/50/60 s), origine de Silent Shadow (The Slasher, 10.0.0), historique Furtive Chase (changement PTB 9.3.0 reverté), Mindbreaker (retour 9.3.0, lien source dans le seed).
- **Les 16-18 autres perks : valeurs NON VÉRIFIÉES.** Là où j'indique une valeur, elle provient du seed (marqué « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) », UNCERTAIN) ou de la connaissance du modèle (marqué « connaissance du modèle (antérieure à mi-2026), UNCERTAIN »). Aucune de ces valeurs ne doit passer en KB comme LIVE sans nouvelle recherche.
- Les parties **indice observable / counterplay / adaptation** reposent sur les mécaniques générales du jeu (statuts, cris, auras, blocage de l'Entité) : **HEURISTIC**, robustes même si la valeur exacte change.

---

### Thrilling Tremors — The Ghost Face
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (blocage)
- **Effet LIVE + valeurs** : après avoir **ramassé** un survivant, tous les générateurs **non réparés** à ce moment sont bloqués par l'Entité 16 s ; leur aura apparaît en blanc au tueur ; les gens en régression mettent leur régression **en pause** pendant le blocage. Recharge **40/35/30 s** depuis 9.0.0 (était 100/80/60 s) ; texte standardisé en 9.5.0 sans changement de valeur — STRONG_SECONDARY [1][2][3]
- **PTB 10.2.0** : non modifiée d'après les sources lues (absente des résumés PTB consultés) — UNCERTAIN (liste des 58 perks non lue en entier)
- **Indice observable (survivant)** : (HEURISTIC) au moment exact du **pickup**, les gens où personne ne répare deviennent bloqués (griffes de l'Entité, interaction impossible) ; un gen que vous alliez rejoindre devient inaccessible.
- **Soupçonner** : (HEURISTIC) pickup d'un coéquipier + gen « libre » soudain non interactif pendant ~16 s → Thrilling Tremors plausible (autres bloqueurs à distinguer : Grim Embrace, Dead Man's Switch, No Holds Barred, Corrupt Intervention).
- **Confirmer** : (HEURISTIC) blocage de **plusieurs** gens non réparés simultanément, synchronisé avec un pickup, puis levée ~16 s plus tard.
- **Adaptation robuste** : (HEURISTIC) pendant une chase qui va finir en down, **rester sur un gen** (un gen en cours de réparation n'est pas bloqué) ; éviter qu'aucun gen ne soit touché au moment du pickup.
- **Counterplay** : (HEURISTIC) garder 1-2 survivants **en train de réparer** en permanence ; en SWF, annoncer « down » pour que chacun touche un gen avant le pickup. Pas de répartition sur 3-4 gens vides.
- **Erreurs à ne pas faire** : (HEURISTIC) lâcher son gen pour aller « préparer » un unhook au moment du pickup ; croire à un Hex (aucun totem).
- **Menace (HEURISTIC 0-3)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : OK (valeurs LIVE conformes : 16 s, 40/35/30 s). Le seed omet la pause de régression et l'aura blanche → IMPRÉCIS mineur.
- **Sources** : [1][2][3]

### Deerstalker — Générale
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (rework récent ; ancienne version : auras des survivants au sol dans 20/28/36 m)
- **Effet LIVE + valeurs** : quand un survivant lit votre aura, vous voyez la sienne pendant la même durée ; de plus, toutes les **40/35/30 s**, le survivant au **plus faible temps de chase cumulé** voit votre aura **3 s** (et vous voyez la sienne) — STRONG_SECONDARY pour la mécanique [4][5] ; **3 s LIVE** retenu mais voir CONFLICT-K93-01
- **PTB 10.2.0** : aura **3 → 4 s** (changement vérifié : résumé des notes PTB 10.2.0) — STRONG_SECONDARY [6][7]
- **Indice observable (survivant)** : (HEURISTIC) vous voyez **l'aura rouge du tueur** quelques secondes, **sans perk d'aura** de votre côté, à intervalle régulier → c'est Deerstalker (c'est vous le moins chassé).
- **Soupçonner** : (HEURISTIC) le tueur vient droit sur vous après que vous avez utilisé une perk d'aura (Kindred, Alert, Premonition… à vérifier au cas par cas) ; ou aura du tueur « offerte » sans raison.
- **Confirmer** : (HEURISTIC) apparition de l'aura du tueur sans source + répétition au même intervalle (≈30-40 s).
- **Adaptation robuste** : (HEURISTIC) considérer que **chaque lecture d'aura du tueur vous révèle** ; ne pas « tunnel-gen » en croyant être caché ; bouger après chaque apparition d'aura.
- **Counterplay** : (HEURISTIC) l'aura dure 3 s → profiter de l'info (position du tueur) mais **changer de position** ensuite ; le survivant peu chassé doit se préparer à une chase (pallet/tile proche).
- **Erreurs à ne pas faire** : (HEURISTIC) se cacher sur place après l'aura (le tueur vous a vu aussi) ; spammer des perks d'aura contre ce tueur.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK pour LIVE (3 s, 40/35/30 s) et OK pour PTB (4 s). Le seed omet le volet « quand un survivant lit votre aura » → IMPRÉCIS.
- **Sources** : [4][5][6][7][13]

### Hex: Thrill of the Hunt — Générale
- **Statut / catégorie** : LIVE 10.1.2a · hex (protection de totems)
- **Effet LIVE + valeurs** : 1 jeton par totem restant ; par jeton, **−8/9/10 %** de vitesse de purification **et** de bénédiction, max **40/45/50 %** ; +10 % BP Hunter/jeton — STRONG_SECONDARY [8] + audit (valeur 8/9/10 % introduite au patch 10.1.0) ; voir CONFLICT-K93-02 (fandom affiche 10/12/14 %)
- **PTB 10.2.0** : **rework vérifié** — le 1er crochet allume un totem terne ; ensuite chaque crochet **bloque tous les totems Hex 6/7/8 s par Hex allumé** ; le malus passif de purification disparaît (PTB) — STRONG_SECONDARY [10][11]
- **Indice observable (survivant)** : (HEURISTIC) un totem Hex **allumé** ; la barre de purification/bénédiction avance nettement **plus lentement** ; (notif au tueur au début de purification : **UNCERTAIN**, non vérifié).
- **Soupçonner** : (HEURISTIC) purification très lente d'un Hex + tueur qui revient vite vers le totem.
- **Confirmer** : (HEURISTIC) icône de la perk au cleanse (Hex révélé à la fin) / lenteur mesurable sur un Hex alors que les ternes restants sont nombreux.
- **Adaptation robuste** : (HEURISTIC) **purifier des totems ternes d'abord** (chaque terne retiré réduit le malus) ; ne pas purifier le Hex pendant que le tueur est proche.
- **Counterplay** : (HEURISTIC) SWF : un joueur « totems » pendant que le tueur est en chase loin ; Detective's Hunch / Small Game pour trouver les ternes.
- **Erreurs à ne pas faire** : (HEURISTIC) purifier un Hex à 5 jetons sous le rayon de terreur ; oublier que Pentimento peut rendre des jetons.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 0-1 (protège surtout d'autres Hex)
- **Écart avec le seed** : OK (LIVE 8/9/10 %, 5 jetons ; PTB correctement étiqueté).
- **Sources** : [8][9][10][11][12]

### Infectious Fright — The Plague
- **Statut / catégorie** : LIVE (présumé) · info/aura · slugging
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : à chaque mise au sol, les survivants **dans le rayon de terreur** crient et sont révélés **4/5/6 s**. Connaissance du modèle (antérieure à mi-2026) concordante (cri + position révélée) — **UNCERTAIN**
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : (HEURISTIC) **vous criez** au moment où un coéquipier tombe alors que vous êtes dans le rayon de terreur (cri involontaire = indice direct).
- **Soupçonner** : (HEURISTIC) un down → le tueur abandonne le survivant au sol et arrive sur vous.
- **Confirmer** : (HEURISTIC) cri forcé synchronisé avec un down, vous dans le RT.
- **Adaptation robuste** : (HEURISTIC) **sortir du RT** d'une chase proche (ne pas « suivre » la chase pour sauver) ; ne pas rester groupé près d'une chase.
- **Counterplay** : (HEURISTIC) Calm Spirit (supprime les cris, à vérifier) ; SWF : se tenir hors RT, un seul sauveteur approche après le pickup.
- **Erreurs à ne pas faire** : (HEURISTIC) attendre juste à côté de la chase pour le « flashlight save » sans anticiper le cri.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune source lue ce lot

### Tinkerer — The Hillbilly
- **Statut / catégorie** : LIVE (présumé) · info · stealth
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : quand un gen atteint 70 % (seed : « la 1ʳᵉ fois »), le tueur est alerté et devient Undetectable **12/14/16 s**. connaissance du modèle (antérieure à mi-2026), UNCERTAIN : déclenchement **une fois par générateur** (formulation seed ambiguë) — **UNCERTAIN**
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : (HEURISTIC) aucun indice HUD pour vous ; indirect : le **rayon de terreur disparaît** peu après que le gen dépasse ~70 %, puis le tueur surgit sans cœur.
- **Soupçonner** : (HEURISTIC) gen à ~70 % + perte du heartbeat + arrivée silencieuse du tueur.
- **Confirmer** : (HEURISTIC) icône Undetectable non visible côté survivant → confirmation surtout par **répétition** (2 gens, même scénario) ou écran de fin.
- **Adaptation robuste** : (HEURISTIC) à l'approche de 70 %, **surveiller l'environnement / garder un œil sur la ligne de vue** ; un survivant « guette » pendant que l'autre répare.
- **Counterplay** : (HEURISTIC) Spine Chill / Alert / Kindred (info alternative) ; gen tapping ou rester sous 70 % puis rusher avec plusieurs ; SWF : chase call immédiat.
- **Erreurs à ne pas faire** : (HEURISTIC) considérer que « pas de cœur = tueur loin » quand un gen vient de passer 70 %.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE (ambiguïté « 1ʳᵉ fois »)
- **Sources** : aucune source lue ce lot

### Spirit Fury — The Spirit
- **Statut / catégorie** : LIVE (présumé) · chase
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : après **4/3/2** palettes cassées, le prochain stun de palette détruit la palette instantanément ; le stun est subi. Connaissance du modèle (antérieure à mi-2026) concordante — **UNCERTAIN**
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : (HEURISTIC) la palette **explose immédiatement** au moment du stun (visible directement).
- **Soupçonner** : (HEURISTIC) tueur qui casse systématiquement les palettes tôt, souvent avec Enduring (stun raccourci).
- **Confirmer** : (HEURISTIC) destruction instantanée d'une palette sur stun (hors pouvoirs qui cassent les palettes).
- **Adaptation robuste** : (HEURISTIC) après quelques palettes cassées, **ne pas compter sur le stun pour gagner la distance** : faire tomber la palette plus tôt (pré-drop) et quitter le tile.
- **Counterplay** : (HEURISTIC) compter les palettes cassées ; économiser les palettes fortes pour après l'activation ; transitions longues.
- **Erreurs à ne pas faire** : (HEURISTIC) stun puis rester sur la même boucle ; « jouer la palette » tardivement quand le tueur a Enduring + Spirit Fury.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune source lue ce lot

### Hex: Face the Darkness — The Knight
- **Statut / catégorie** : LIVE (présumé) · hex · info
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : blesser un survivant le **maudit** ; toutes les **35/30/25 s**, tant qu'un maudit reste blessé, les survivants **hors RT** crient et sont révélés 2 s. Ch8 du seed dit « 25-35 s ». connaissance du modèle (antérieure à mi-2026), UNCERTAIN : mécanique proche, valeurs **UNCERTAIN**
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : (HEURISTIC) totem Hex allumé ; **cri périodique** alors que vous êtes loin du tueur ; icône « Cursed » (malédiction) sur le survivant blessé (à confirmer).
- **Soupçonner** : (HEURISTIC) cris réguliers hors RT pendant qu'un coéquipier est blessé.
- **Confirmer** : (HEURISTIC) les cris s'arrêtent quand le maudit est soigné ou quand le Hex est purifié.
- **Adaptation robuste** : (HEURISTIC) **soigner le blessé en priorité** (coupe l'effet) ; chercher le totem Hex.
- **Counterplay** : (HEURISTIC) purifier le Hex ; Calm Spirit (à vérifier) ; ne pas rester blessé.
- **Erreurs à ne pas faire** : (HEURISTIC) jouer blessé toute la partie contre Knight ; ignorer les cris périodiques.
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune source lue ce lot

### Agitation — The Trapper
- **Statut / catégorie** : LIVE (présumé) · transport
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : en portant un survivant, **6/12/18 %** de Haste et RT **+12 m**. Connaissance du modèle (antérieure à mi-2026) concordante — **UNCERTAIN**
- **PTB 10.2.0** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : Haste **14/16/18 %** — UNCERTAIN (non vérifié en session)
- **Indice observable (survivant)** : (HEURISTIC) **heartbeat** anormalement large pendant que le tueur porte quelqu'un ; tueur qui atteint un crochet lointain très vite.
- **Soupçonner** : (HEURISTIC) cœur audible de loin pendant un carry + crochet « impossible à rejoindre » atteint.
- **Confirmer** : (HEURISTIC) le RT se rétracte au moment de l'accrochage.
- **Adaptation robuste** : (HEURISTIC) sabotage / body block **seulement si le crochet est vraiment proche** du sauveteur ; sinon partir sur gen.
- **Counterplay** : (HEURISTIC) Breakdown, Saboteur (hooks proches à retirer) ; en SWF, flashlight/pallet save préparé **avant** le pickup.
- **Erreurs à ne pas faire** : (HEURISTIC) courir derrière le tueur pour un save de carry (inefficace contre le Haste).
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE (LIVE) · PTB : étiquetage correct, valeur non vérifiée
- **Sources** : aucune source lue ce lot

### Iron Grasp — Générale
- **Statut / catégorie** : LIVE (présumé) · transport
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : débattement **4/8/12 %** plus lent ; les mouvements du porté déportent le tueur **75 %** moins. Connaissance du modèle (antérieure à mi-2026) concordante — **UNCERTAIN**
- **PTB 10.2.0** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : **10/11/12 %** — UNCERTAIN
- **Indice observable (survivant porté)** : (HEURISTIC) la barre de wiggle monte plus lentement et le tueur **ne dévie presque pas**.
- **Soupçonner / confirmer** : (HEURISTIC) tueur qui marche droit malgré le wiggle.
- **Adaptation robuste** : (HEURISTIC) ne pas compter sur le wiggle ; préparer un sabotage/pallet save.
- **Counterplay** : (HEURISTIC) Boil Over / Flip-Flop (à vérifier) ; saves d'équipe.
- **Erreurs à ne pas faire** : (HEURISTIC) arrêter de wiggler (le wiggle nourrit toujours la progression).
- **Menace (HEURISTIC)** : SoloQ 0-1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune source lue ce lot

### Blood Warden — The Nightmare
- **Statut / catégorie** : LIVE 10.1.2a · endgame
- **Effet LIVE + valeurs** : une fois une porte ouverte, les auras des survivants dans les zones de sortie sont révélées au tueur ; **une fois par partie**, un accrochage bloque les deux portes **40/50/60 s** — STRONG_SECONDARY (audit phase 0, wiki.gg Exit Gates) [12]
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : (HEURISTIC) à l'accrochage après l'ouverture, l'Entité **bloque les portes** (griffes sur le passage de sortie ; impossible de sortir).
- **Soupçonner** : (HEURISTIC) porte ouverte + un survivant au sol / porté → risque maximal.
- **Confirmer** : (HEURISTIC) blocage visible sur la sortie au moment du hook.
- **Adaptation robuste** : (HEURISTIC) si une porte est ouverte et qu'un coéquipier est **porté**, soit **sortir immédiatement** (avant l'accrochage), soit préparer un save **avant** le hook ; ne pas attendre dans la sortie.
- **Counterplay** : (HEURISTIC) empêcher le hook (sabotage, pallet/flashlight save) ; les survivants restant dans la zone sont vus par aura → ne pas « tbag » dans la sortie.
- **Erreurs à ne pas faire** : (HEURISTIC) attendre en sortie pendant que le tueur accroche ; décrocher sous le blocage sans Borrowed Time.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1-2
- **Écart avec le seed** : OK
- **Sources** : [12]

### Remember Me — The Nightmare
- **Statut / catégorie** : LIVE (présumé) · endgame · obsession
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : jeton par état de santé perdu par l'Obsession (max 3/4/5) ; chaque jeton **allonge l'ouverture des portes** pour les non-Obsession. Valeur par jeton **non donnée par le seed** ; connaissance du modèle (antérieure à mi-2026), UNCERTAIN : quelques secondes/jeton, valeurs **UNCERTAIN**
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : (HEURISTIC) la barre d'ouverture de porte (20 s de base) avance **plus lentement** ; l'Obsession ouvre à vitesse normale.
- **Soupçonner** : (HEURISTIC) tueur qui cible l'Obsession de façon répétée + ouverture de porte anormalement longue.
- **Confirmer** : (HEURISTIC) comparer la vitesse d'ouverture Obsession vs autre survivant.
- **Adaptation robuste** : (HEURISTIC) **faire ouvrir la porte par l'Obsession** si elle est libre ; ouvrir la porte la plus éloignée du tueur (conseil déjà présent dans ch4_7).
- **Counterplay** : (HEURISTIC) limiter les coups sur l'Obsession ; Wake Up! (vitesse d'ouverture, à vérifier) ; gen à 99 %.
- **Erreurs à ne pas faire** : (HEURISTIC) ouvrir la porte proche du tueur en fin de partie.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE (valeur par jeton manquante)
- **Sources** : aucune source lue ce lot

### Dragon's Grip — The Blight
- **Statut / catégorie** : LIVE (présumé) · slugging / Exposed
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : après un kick, le 1ᵉʳ survivant à toucher ce gen dans les 30 s crie, est localisé 4 s et devient **Exposed 60 s** ; recharge seed 60/45/30 s. Mécanique concordante avec la connaissance du modèle (antérieure à mi-2026), UNCERTAIN ; **recharge UNCERTAIN** (connaissance du modèle (antérieure à mi-2026), UNCERTAIN : plus longue, non vérifiée)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : (HEURISTIC) **cri + icône Exposed** dès que vous touchez un gen fraîchement kické.
- **Soupçonner** : (HEURISTIC) tueur qui kicke puis s'éloigne peu.
- **Confirmer** : (HEURISTIC) icône Exposed immédiate au contact du gen (sans autre source).
- **Adaptation robuste** : (HEURISTIC) **attendre ~30 s** avant de reprendre un gen qui vient d'être kické, ou le toucher en étant en santé avec une chase possible.
- **Counterplay** : (HEURISTIC) se déplacer vers un autre gen ; Exposed = éviter toute confrontation 60 s.
- **Erreurs à ne pas faire** : (HEURISTIC) sauter sur le gen kické pour « arrêter la régression » immédiatement.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE (recharge)
- **Sources** : aucune source lue ce lot

### Furtive Chase — The Ghost Face
- **Statut / catégorie** : LIVE (présumé) · stealth · obsession
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : accrocher l'Obsession → **10 % Haste** + Undetectable **14/16/18 s** ; le sauveteur devient la nouvelle Obsession. Audit : la version PTB 9.3.0 a été **revertée** au 9.3.0 LIVE [12] — valeurs exactes **UNCERTAIN**
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : (HEURISTIC) après le hook de l'Obsession, **plus de heartbeat** alors que le tueur était proche ; l'icône Obsession **passe au sauveteur** après l'unhook.
- **Soupçonner** : (HEURISTIC) transfert d'Obsession au sauveteur + tueur silencieux après hook.
- **Confirmer** : (HEURISTIC) transfert d'Obsession au sauveteur (spécifique).
- **Adaptation robuste** : (HEURISTIC) le sauveteur de l'Obsession doit **s'attendre à être chassé ensuite** ; ne pas unhook sans vérifier les alentours.
- **Counterplay** : (HEURISTIC) unhook avec Borrowed Time ; ne pas envoyer le survivant le plus faible décrocher l'Obsession.
- **Erreurs à ne pas faire** : (HEURISTIC) lire « pas de cœur » comme « tueur parti » juste après un hook d'Obsession.
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : [12] (historique uniquement)

### Machine Learning — The Singularity
- **Statut / catégorie** : LIVE (présumé) · stealth / chase
- **Effet LIVE + valeurs** : seed p93 (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) : gen frappé → « compromis » ; à sa complétion : **8 %** Haste + Undetectable **40/50/60 s**. **Le seed se contredit** : ch8 l.1483 dit **10 %** Haste. Valeurs **UNCERTAIN**
- **PTB 10.2.0** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : jusqu'à 3 gens compromis — UNCERTAIN
- **Indice observable (survivant)** : (HEURISTIC) aucun indice HUD ; à la **complétion d'un gen**, le heartbeat disparaît et le tueur est plus rapide pendant ~1 min.
- **Soupçonner** : (HEURISTIC) Singularity (ou autre) qui kicke un gen puis s'en désintéresse + disparition du RT à sa complétion.
- **Confirmer** : (HEURISTIC) répétition du schéma sur 2 gens ; écran de fin.
- **Adaptation robuste** : (HEURISTIC) après avoir fini un gen **que le tueur a kické**, **se disperser immédiatement** et se mettre en position de sécurité 1 min.
- **Counterplay** : (HEURISTIC) terminer d'abord les gens non kickés quand c'est possible ; info (Kindred/Alert).
- **Erreurs à ne pas faire** : (HEURISTIC) rester groupés sur le gen terminé ; aller unhook « à la découverte » pendant l'Undetectable.
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : IMPRÉCIS (incohérence interne 8 % vs 10 %) · NON VÉRIFIABLE
- **Sources** : aucune source lue ce lot

### Trail of Torment — The Executioner
- **Statut / catégorie** : LIVE (présumé) · stealth
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : après un kick, Undetectable tant que le gen régresse, **le gen est révélé aux survivants** ; recharge seed 60/45/30 s. Mécanique concordante avec la connaissance du modèle (antérieure à mi-2026), UNCERTAIN (aura **jaune** du gen visible par tous) ; **recharge UNCERTAIN**
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : (HEURISTIC) **aura jaune d'un générateur visible sans perk** → c'est le signal quasi unique de Trail of Torment.
- **Soupçonner** : (HEURISTIC) aura de gen jaune + pas de heartbeat.
- **Confirmer** : (HEURISTIC) l'aura disparaît quand quelqu'un touche le gen (fin de régression) et le RT revient.
- **Adaptation robuste** : (HEURISTIC) tant que l'aura jaune est visible, **supposer le tueur furtif et proche** ; toucher le gen (même 1 s) pour **couper** l'Undetectable si c'est sûr.
- **Counterplay** : (HEURISTIC) un tap du gen arrête la régression → fin de l'effet ; en SWF, annoncer « ToT actif ».
- **Erreurs à ne pas faire** : (HEURISTIC) ignorer l'aura jaune ; croire que le tueur est loin faute de cœur.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE (recharge) ; ch8 dit « jusqu'à ce qu'il soit réparé » vs p93 « tant qu'il régresse » (formulations compatibles)
- **Sources** : aucune source lue ce lot

### Silent Shadow — The Slasher (Jason Voorhees, 10.0.0)
- **Statut / catégorie** : LIVE 10.1.2a (perk de 10.0.0, origine vérifiée par l'audit) · stealth · endgame
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : Undetectable **11/12/13 s** à chaque accrochage ; Undetectable permanent une fois tous les gens terminés — **valeurs UNCERTAIN** (non vérifiées)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : (HEURISTIC) **pas de heartbeat après chaque hook** (même tueur proche) ; en **fin de partie, aucun heartbeat du tout**.
- **Soupçonner** : (HEURISTIC) absence de RT juste après hook + endgame silencieux.
- **Confirmer** : (HEURISTIC) endgame entier sans heartbeat alors que le tueur est vu (aura/vision).
- **Adaptation robuste** : (HEURISTIC) en endgame, **supposer le tueur à proximité** à tout moment ; ouvrir les portes à deux (un guetteur).
- **Counterplay** : (HEURISTIC) Kindred / Alert / Bond pour localiser ; unhook avec BT.
- **Erreurs à ne pas faire** : (HEURISTIC) unhook instantané « parce qu'il n'y a pas de cœur ».
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : OK (origine Slasher) · valeurs NON VÉRIFIABLE
- **Sources** : [12]

### Hex: Retribution — The Deathslinger
- **Statut / catégorie** : LIVE (présumé) · hex · info
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : interagir avec un totem (terne ou hex) → **Oblivious 40/50/60 s** ; purification d'un Hex → tous révélés **20 s**. connaissance du modèle (antérieure à mi-2026), UNCERTAIN : Oblivious sur purification de **totem terne** et révélation d'aura à la purification du Hex (durée plus courte que 20 s ?) — **UNCERTAIN**
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : (HEURISTIC) **icône Oblivious** juste après avoir purifié un totem terne → confirmation directe.
- **Soupçonner** : (HEURISTIC) Oblivious sans autre cause après une purification.
- **Confirmer** : (HEURISTIC) icône Oblivious + totem Hex allumé quelque part.
- **Adaptation robuste** : (HEURISTIC) sous Oblivious, **jouer comme si le tueur était à côté** (pas de heartbeat) ; avant de purifier le Hex, se positionner en sécurité (tous révélés).
- **Counterplay** : (HEURISTIC) garder les ternes ou les bénir (Boon) ; purifier le Hex quand le tueur est en chase loin.
- **Erreurs à ne pas faire** : (HEURISTIC) faire des gens en solo sous Oblivious sans vérifier ; purifier le Hex à côté d'un crochet occupé.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE (déclencheur « terne ou hex » et 20 s douteux)
- **Sources** : aucune source lue ce lot

### Mindbreaker — The Demogorgon
- **Statut / catégorie** : LIVE (retour de licence Stranger Things au 9.3.0 selon source citée par le seed) · autre (anti-info / fatigue)
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : en réparant, les survivants sont **Blind** et **Exhausted** ; l'effet persiste **3/4/5 s** après l'arrêt. Conditions éventuelles (seuil de progression) **UNCERTAIN**
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : (HEURISTIC) icônes **Blindness + Exhausted** qui apparaissent **dès que vous réparez**.
- **Soupçonner / confirmer** : (HEURISTIC) Exhausted sans avoir utilisé de perk d'exhaustion, lié aux gens → confirmation directe.
- **Adaptation robuste** : (HEURISTIC) **quitter le gen tôt** (≥ durée de persistance) quand le tueur approche pour retrouver sa perk d'exhaustion ; ne pas dépendre des auras pendant la réparation.
- **Counterplay** : (HEURISTIC) privilégier des perks sans exhaustion (ex. Off the Record, Unbreakable — interactions à vérifier au lot 2) ; SWF : annonces vocales remplacent les auras.
- **Erreurs à ne pas faire** : (HEURISTIC) lâcher le gen au dernier moment en comptant sur Sprint Burst/Lithe.
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE (valeurs) ; « réactivé au 9.3.0 » compatible avec le lien cité
- **Sources** : [14] (lien du seed, non relu)

### Hex: Hive Mind — The First
- **Statut / catégorie** : LIVE (présumé ; The First = 9.4.0) · hex · slowdown / info
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : au 1ᵉʳ accrochage, un Hex s'allume ; le tueur voit la progression de tous les gens ; quand il ne reste qu'un gen, **tous explosent** (−6/8/10 %, régression). **NON VÉRIFIÉ**
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : (HEURISTIC) **Hex allumé après le 1ᵉʳ hook** ; gens qui perdent d'un coup de la progression quand il ne reste qu'un gen.
- **Soupçonner** : (HEURISTIC) totem Hex qui apparaît au premier hook contre The First.
- **Confirmer** : (HEURISTIC) explosion simultanée des gens au passage à « 1 gen restant ».
- **Adaptation robuste** : (HEURISTIC) **chercher et purifier le Hex avant le 4ᵉ gen** ; ne pas finir le 4ᵉ gen alors qu'un Hex est actif si les autres gens sont bas.
- **Counterplay** : (HEURISTIC) un survivant dédié aux totems après le 1ᵉʳ hook.
- **Erreurs à ne pas faire** : (HEURISTIC) ignorer un Hex « passif ».
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune source lue ce lot

### Secret Project — The First
- **Statut / catégorie** : LIVE (présumé) · slowdown (blocage) · stealth
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : chaque totem béni ou purifié bloque un gen au hasard **20/25/30 s** ; chaque blocage de gen → Undetectable **30 s**. **NON VÉRIFIÉ** (déclencheur « chaque fois qu'un gen est bloqué » = toute source ? UNCERTAIN)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : (HEURISTIC) un gen se bloque **juste après** une purification/bénédiction ; heartbeat qui disparaît ensuite.
- **Soupçonner / confirmer** : (HEURISTIC) corrélation purification → blocage aléatoire.
- **Adaptation robuste** : (HEURISTIC) purifier les totems **en dehors des moments critiques** (pas quand un gen est presque fini) ; après une purification, jouer « tueur furtif ».
- **Counterplay** : (HEURISTIC) limiter les purifications inutiles de ternes ; coordonner en SWF.
- **Erreurs à ne pas faire** : (HEURISTIC) purifier tous les ternes par réflexe contre The First.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune source lue ce lot

### Scourge Hook: Monstrous Shrine — Générale
- **Statut / catégorie** : LIVE (présumé) · scourge
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : 4 crochets Fléau + tous les crochets de la cave ; quand le tueur est à **> 24 m**, un survivant sur crochet Fléau progresse **10/15/20 %** plus vite. **NON VÉRIFIÉ**
- **PTB 10.2.0** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) : « régression à 150/175/200 % » à > 24 m (rework) — UNCERTAIN ; formulation probablement « vitesse de progression du sacrifice », à vérifier
- **Indice observable (survivant)** : (HEURISTIC) crochets **blancs** (Fléau) visibles ; barre de sacrifice d'un coéquipier qui avance **plus vite** quand le tueur s'éloigne.
- **Soupçonner** : (HEURISTIC) crochets Fléau + la cave comptée (tous les hooks de cave).
- **Confirmer** : (HEURISTIC) icône Scourge de la perk sur les crochets blancs + progression accélérée.
- **Adaptation robuste** : (HEURISTIC) **unhook plus tôt** quand le tueur est loin d'un crochet Fléau ; éviter la cave.
- **Counterplay** : (HEURISTIC) Saboteur / Breakdown sur crochets Fléau ; ne pas se faire descendre près de la cave.
- **Erreurs à ne pas faire** : (HEURISTIC) attendre la fin de phase pour unhook sur un crochet Fléau.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune source lue ce lot

---

## Matériel pour la PERK DEDUCTION

Règles HEURISTIC (valeurs à revérifier ; les indices listés sont structurels et robustes).

1. **Aura rouge du tueur visible sans perk d'aura, à intervalle régulier** → Deerstalker (vous êtes le moins chassé) → bouger après chaque apparition, préparer une chase.
2. **Aura jaune d'un gen visible sans perk + pas de heartbeat** → Trail of Torment → supposer le tueur proche et furtif ; taper le gen si sûr pour couper l'effet.
3. **Pickup d'un coéquipier + plusieurs gens libres soudain bloqués ~16 s** → Thrilling Tremors → garder toujours 1-2 gens en cours de réparation pendant les chases qui finissent en down.
4. **Vous criez au moment d'un down, en étant dans le RT** → Infectious Fright → sortir du RT des chases, un seul sauveteur approche après pickup.
5. **Cri + Exposed en touchant un gen tout juste kické** → Dragon's Grip → attendre ~30 s ou changer de gen après un kick.
6. **Icône Oblivious après purification d'un terne** → Hex: Retribution → jouer comme si le tueur était à côté ; purifier le Hex seulement en sécurité.
7. **Blindness + Exhausted dès qu'on répare** → Mindbreaker → quitter le gen tôt quand le tueur approche ; ne pas dépendre de l'exhaustion.
8. **Porte ouverte + coéquipier porté** → Blood Warden possible → sortir **avant** l'accrochage ou prévenir le hook ; jamais attendre en sortie.
9. **Heartbeat absent juste après un hook (et/ou tout l'endgame silencieux)** → Silent Shadow / Furtive Chase (si Obsession accrochée) → aucun unhook « parce qu'il n'y a pas de cœur » ; vérifier les angles.
10. **Heartbeat qui disparaît quand un gen passe ~70 % ou à la complétion d'un gen kické** → Tinkerer / Machine Learning → guetteur sur les gens avancés, dispersion immédiate après une complétion.

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| K93-01 | Thrilling Tremors : blocage 16 s des gens non réparés au pickup, recharge 40/35/30 s | [1][2][3] | LIVE (depuis 9.0.0) | STRONG_SECONDARY |
| K93-02 | Thrilling Tremors : recharge était 100/80/60 s avant 9.0.0 | [1][3] | HISTORICAL | STRONG_SECONDARY |
| K93-03 | Thrilling Tremors : régression des gens en pause pendant le blocage | [2] | LIVE | STRONG_SECONDARY |
| K93-04 | Deerstalker : toutes les 40/35/30 s, survivant au plus faible temps de chase voit l'aura du tueur 3 s | [6][7] (« was 3 s ») | LIVE | STRONG_SECONDARY (voir CONFLICT-K93-01) |
| K93-05 | Deerstalker : aura 4 s | [6][7] | PTB 10.2.0 | STRONG_SECONDARY |
| K93-06 | Thrill of the Hunt : −8/9/10 %/jeton purif./bénédiction, max 40/45/50 % | [8][12] | LIVE (10.1.0) | STRONG_SECONDARY (voir CONFLICT-K93-02) |
| K93-07 | Thrill of the Hunt : rework (1ᵉʳ hook allume un terne, chaque hook bloque les Hex 6/7/8 s par Hex allumé) | [10][11] | PTB 10.2.0 | STRONG_SECONDARY |
| K93-08 | Blood Warden : blocage des portes 40/50/60 s, 1×/partie | [12] | LIVE | STRONG_SECONDARY |
| K93-09 | Silent Shadow : perk de The Slasher (10.0.0) | [12] | LIVE | STRONG_SECONDARY |
| K93-10 | Furtive Chase : changement PTB 9.3.0 reverté au 9.3.0 LIVE | [12] | HISTORICAL | STRONG_SECONDARY |

## Conflits

#### CONFLICT-K93-01 : durée d'aura LIVE de Deerstalker (3 s vs 4 s)
- Source A : résumé de recherche fandom/wiki (« Current Effects » : aura **4 s**) — https://deadbydaylight.fandom.com/wiki/Deerstalker
- Source B : résumé des notes PTB 10.2.0 (« 4 seconds (was 3 seconds) ») — https://steampeaks.com/news/706656822950364293 , https://app.betahub.io/projects/pr-5642738318/releases/5737
- Hypothèse : la page wiki affiche déjà la valeur PTB (risque de contamination PTB signalé par l'audit, point 10).
- Résolution : **LIVE = 3 s, PTB = 4 s** retenu (probable), à reconfirmer quand 10.2.0 sort — UNRESOLVED formellement.

#### CONFLICT-K93-02 : valeur LIVE de Hex: Thrill of the Hunt (8/9/10 % vs 10/12/14 %)
- Source A : résumé fandom présenté comme « Patch 10.1.0 » : **10/12/14 %**, max 50/60/70 % — https://deadbydaylight.fandom.com/wiki/Hex:_Thrill_of_the_Hunt
- Source B : résumé wiki.gg / NightLight : **8/9/10 %**, max 40/45/50 % ; audit phase 0 (patch 10.1.0 : « Hex: Thrill of the Hunt 8/9/10 % »).
- Hypothèse : fandom (miroir moins maintenu) montre la valeur d'avant 10.1.0 ; le résumé a mal attribué le numéro de patch.
- Résolution : **8/9/10 % LIVE** retenu (audit + wiki.gg) ; 10/12/14 % = OUTDATED probable.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Thrilling Tremors | 16 s, recharge 40/35/30 s | idem (depuis 9.0.0) ; + pause de régression, aura blanche | OK (IMPRÉCIS mineur) |
| Deerstalker | aura 3 s toutes les 40/35/30 s ; 4 s au PTB | idem ; omet le volet « lecture d'aura réciproque » | OK / IMPRÉCIS |
| Hex: Thrill of the Hunt | 5 jetons, 8/9/10 %/jeton ; rework au PTB | idem | OK |
| Hex: Thrill of the Hunt (PTB) | s'allume au 1ᵉʳ hook, blocage Hex 6/7/8 s par Hex | idem, bien étiqueté PTB | OK |
| Deerstalker (PTB) | 4 s | idem | OK |
| Blood Warden | 40/50/60 s, 1×/partie, auras en sortie | idem (audit) | OK |
| Silent Shadow | perk du Slasher | idem (audit 10.0.0) | OK (valeurs NON VÉRIFIABLE) |
| Machine Learning | p93 : 8 % Haste ; ch8 l.1483 : 10 % Haste | non vérifié | IMPRÉCIS (incohérence interne) |
| Tinkerer | « la 1ʳᵉ fois qu'un gen atteint 70 % » | non vérifié (connaissance du modèle (antérieure à mi-2026), UNCERTAIN : une fois **par** gen) | NON VÉRIFIABLE (ambigu) |
| Hex: Retribution | Oblivious en touchant « un totem (terne ou hex) », révélation 20 s | non vérifié (connaissance du modèle (antérieure à mi-2026), UNCERTAIN : terne seulement, durée plus courte) | NON VÉRIFIABLE |
| Dragon's Grip | recharge 60/45/30 s | non vérifié | NON VÉRIFIABLE |
| Trail of Torment | recharge 60/45/30 s | non vérifié | NON VÉRIFIABLE |
| Monstrous Shrine (PTB) | « régression à 150/175/200 % » | non vérifié ; formulation suspecte | NON VÉRIFIABLE |
| Agitation / Iron Grasp (PTB) | 14/16/18 % ; 10/11/12 % | non vérifié | NON VÉRIFIABLE (étiquetage PTB correct) |
| Autres (Infectious Fright, Spirit Fury, Face the Darkness, Remember Me, Furtive Chase, Mindbreaker, Hive Mind, Secret Project) | voir fiches | non vérifié | NON VÉRIFIABLE |

## Questions ouvertes

- **Relancer ce lot quand le quota WebSearch est rétabli** : 18 perks sans vérification de valeur (priorité : Trail of Torment, Dragon's Grip, Hex: Retribution, Machine Learning, Tinkerer, Monstrous Shrine, Hive Mind, Secret Project).
- Deerstalker LIVE : 3 s confirmé seulement par le « was 3 s » des notes PTB ; relire la page wiki.gg (historique) pour exclure une contamination PTB.
- Thrill of the Hunt : le tueur est-il encore notifié quand un survivant commence à purifier ? (non vérifié)
- Liste complète des 58 perks PTB 10.2.0 (timesaver.gg [10]) non lue : impossible d'affirmer « non modifiée » pour les perks du périmètre hors Deerstalker / Thrill of the Hunt (et Agitation / Iron Grasp / Machine Learning / Monstrous Shrine selon le seed).
- Mindbreaker : condition de déclenchement exacte au retour 9.3.0 (seuil de progression ?).
- Calm Spirit contre Infectious Fright / Face the Darkness (suppression des cris) : à vérifier dans le lot 2.

## Sources

[1] Thrilling Tremors — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Thrilling_Tremors — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[2] Thrilling Tremors — Fandom — https://deadbydaylight.fandom.com/wiki/Thrilling_Tremors — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[3] Thrilling Tremors — NightLight — https://nightlight.gg/perks/Thrilling_Tremors — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[4] Deerstalker — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Deerstalker — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[5] Deerstalker — Fandom — https://deadbydaylight.fandom.com/wiki/Deerstalker — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[6] 10.2.0 | PTB Patch Notes — SteamPeaks — https://steampeaks.com/news/706656822950364293 — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[7] 10.2.0 PTB — BetaHub — https://app.betahub.io/projects/pr-5642738318/releases/5737 — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[8] Hex: Thrill of the Hunt — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Hex:_Thrill_of_the_Hunt — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[9] Hex: Thrill of the Hunt — Fandom — https://deadbydaylight.fandom.com/wiki/Hex:_Thrill_of_the_Hunt — consulté le 27/09/2026 via WebSearch (résumé de recherche ; valeurs probablement obsolètes)
[10] DBD Perk Changes: All 58 Killer and Survivor Perks in the 10.2.0 PTB — timesaver.gg — https://timesaver.gg/blog/dbd-perk-changes-10-2-0 — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[11] DBD Patch Notes 10.2.0 — timesaver.gg — https://timesaver.gg/blog/dbd-patch-notes-10-2-0 — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[12] Audit phase 0 (interne, déjà vérifié) — kb/seed/audit_phase0.txt (sections patchs 9.3.0, 10.0.0, 10.1.0 ; tableau Exit Gates → wiki.gg Exit Gates)
[13] Deerstalker — NightLight — https://nightlight.gg/perks/Deerstalker — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[14] Dead by Daylight update 9.3.0 out now, Mindbreaker perk is back — TheSixthAxis — https://www.thesixthaxis.com/2025/11/25/dead-by-daylight-update-9-3-0-out-now-mindbreaker-perk-is-back/ — cité par le seed, **non consulté** en session
