# Lot 3 — Perks tueur vues du survivant, page 96 du guide seed (Tier D)

- Référence : LIVE 10.1.2a (17/09/2026) ; PTB 10.2.0 (15-21/09/2026) **non LIVE**, toujours étiqueté PTB.
- Méthode : WebSearch uniquement (WebFetch bloqué). Les résumés de recherche = STRONG_SECONDARY au mieux ; « via résumé de recherche ».
- Périmètre : 26 perks (seed `kb/seed/ch9_killperks.txt` l. 646-753) ; catégories/PTB seed l. 754-841.
- Notes de menace = **HEURISTIC**. Conseils d'adaptation / counterplay = **HEURISTIC** sauf mention.

> **Limite majeure de ce fichier.** Le budget WebSearch de la session (200 appels, partagé entre agents) a été épuisé après 12 recherches de ce lot, dont 9 exploitables.
> - **11 perks vérifiées** (source wiki.gg via résumé de recherche) : Bloodhound, Shadowborn, Stridor, Beast of Prey, Overwhelming Presence, Monitor & Abuse, Cruel Limits, Hoarder, Septic Touch (+ Pools of Blood, Patch Notes 9.1.X).
> - **15 perks NON VÉRIFIÉES** : Awakened Awareness, Game Afoot, THWACK!, Leverage, Unbound, Undone, Dark Arrogance, Hex: Wretched Fate, No Quarter, Scourge Hook: Hangman's Trick, Hex: Overture of Doom, Ravenous, Wandering Eye, Hex: Scared to Death, Rampage, Spies from the Shadows, Unrelenting, Bitter Murmur (18 en comptant les générales). Leur « effet » reprend le seed **à titre d'hypothèse** (UNCERTAIN) ; les incohérences internes du seed (p96 vs ch8) sont signalées. À re-vérifier en priorité par un lot ultérieur.
> - Aucune source PTB 10.2.0 n'a pu être consultée : les valeurs PTB citées viennent du seed (l. 800-841) et restent **UNCERTAIN**, sauf l'existence d'un rework d'Undone (confirmée par `audit_phase0.txt`, qui cite le Dev Update 10.2.0 et BHVR KB 559).

---

## A. Perks vérifiées (wiki.gg via résumé de recherche)

### Bloodhound — Wraith
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (pistage)
- **Effet LIVE + valeurs** : les Pools of Blood s'affichent en rouge vif et restent visibles 2/3/4 s de plus que la normale — STRONG_SECONDARY [1][2]
- **PTB 10.2.0** : non mentionnée dans les sources lues (aucune source PTB consultée) → UNCERTAIN
- **Indice observable (survivant)** : aucun indice direct (le sang n'est visible que par le tueur).
- **Soupçonner** : tueur qui vous retrouve blessé après avoir cassé la ligne de vue, alors que vous ne laissez pas de scratch marks visibles (marche accroupie/lente) → plausible (ou Wraith/Sloppy Butcher/Iron Will contre-indiqué).
- **Confirmer** : écran de fin de partie uniquement.
- **Adaptation robuste** : blessé, ne pas compter sur un « stealth reset » par la marche ; préférer un soin rapide ou rester loin (≥ 1 tile) des flaques récentes.
- **Counterplay** : se soigner tôt ; les flaques ne sont pas générées au même endroit si l'on change de direction après un mur (tourner à angle droit derrière un obstacle).
- **Erreurs à ne pas faire** : rester blessé et tenter de se cacher dans un buisson à 5 m de là où on a été touché.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK (« plus visibles » = rouge vif).
- **Sources** : [1][2]

### Shadowborn — Wraith
- **Statut / catégorie** : LIVE 10.1.2a · chase (anti-lampe)
- **Effet LIVE + valeurs** : quand vous êtes aveuglé par n'importe quel moyen, 6/8/10 % de Haste pendant 10 s — STRONG_SECONDARY [3]
- **PTB 10.2.0** : non mentionnée dans les sources lues → UNCERTAIN
- **Indice observable (survivant)** : aucun indice HUD ; le tueur semble accélérer juste après un aveuglement (lampe, Blast Mine, Flashbang, Head On n'aveugle pas).
- **Soupçonner** : tueur visiblement plus rapide juste après un blind réussi + il revient immédiatement sur le porteur de lampe → plausible.
- **Confirmer** : écran de fin de partie.
- **Adaptation robuste** : après un blind, courir **immédiatement** vers une ressource sûre au lieu de rester à regarder (10 s de Haste = gros gain de distance pour le tueur).
- **Counterplay** : utiliser la lampe pour sauver (pickup/palette) et non pour du « bully » gratuit ; un aveuglement en pickup-save ne profite pas de la Haste si l'autre survivant est déjà relevé/éloigné.
- **Erreurs à ne pas faire** : spam de lampe en open field sans ressource proche.
- **Menace** : SoloQ 0 · SWF 1 (SWF lampe-heavy)
- **Écart avec le seed** : OK
- **Sources** : [3]

### Stridor — Nurse
- **Statut / catégorie** : LIVE 10.1.2a · info (audio)
- **Effet LIVE + valeurs** : Grunts of Pain des blessés +30/40/50 % de volume ; respiration normale +15/20/25 %. Additif avec d'autres modificateurs (peut remonter un volume réduit à 0 % par une autre perk) — STRONG_SECONDARY [4]
- **PTB 10.2.0** : non mentionnée dans les sources lues → UNCERTAIN
- **Indice observable (survivant)** : aucun indice direct.
- **Soupçonner** : le tueur trouve des survivants blessés cachés (casier exclu) à répétition, sans aura ni cri → plausible (Stridor ou simplement bon casque).
- **Confirmer** : écran de fin de partie.
- **Adaptation robuste** : blessé, ne pas se cacher près du tueur : se déplacer ; Iron Will contre Stridor : l'interaction additive rend Iron Will moins complet (d'après [4]).
- **Counterplay** : se soigner ; en SWF, ne pas se regrouper blessés près du tueur.
- **Erreurs à ne pas faire** : croire qu'Iron Will annule totalement le son face à Stridor.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK (valeurs identiques).
- **Sources** : [4]

### Beast of Prey — Huntress
- **Statut / catégorie** : LIVE 10.1.2a · stealth
- **Effet LIVE + valeurs** : chaque fois que vous gagnez Bloodlust, Undetectable pendant 30/35/40 s — STRONG_SECONDARY [5]
- **PTB 10.2.0** : non mentionnée dans les sources lues → UNCERTAIN
- **Indice observable (survivant)** : en pleine poursuite (Bloodlust se gagne après ~15 s de chase sans coup — valeur de base non re-vérifiée ici), le rayon de terreur / battement disparaît et la tache rouge (red stain) s'éteint.
- **Soupçonner** : TR qui disparaît au milieu d'une longue chase **sans** que vous ayez vu d'animation de pouvoir → Beast of Prey très plausible.
- **Confirmer** : le TR revient ~30-40 s plus tard ou à la perte de Bloodlust (hypothèse, UNCERTAIN) ; fin de partie.
- **Adaptation robuste** : en chase, ne pas lâcher le visuel du tueur quand le cœur s'arrête ; après avoir « semé » le tueur, supposer qu'il est tout près pendant ~40 s.
- **Counterplay** : garder la caméra sur le tueur (ne pas jouer au son) ; alerter l'équipe (« TR coupé, Beast of Prey ? »).
- **Erreurs à ne pas faire** : croire qu'il a abandonné la chase parce que la musique s'arrête.
- **Menace** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK (valeurs 30/35/40 s ; absence de bonus BP non vérifiée → NON VÉRIFIABLE pour ce point).
- **Sources** : [5]

### Overwhelming Presence — Doctor
- **Statut / catégorie** : LIVE 10.1.2a (rework 9.1.0) · anti-objet / info-aura / anti-exhaustion
- **Effet LIVE + valeurs** : un survivant qui commence à utiliser un objet à ≤ 32 m du tueur devient Exhausted 15 s ; quand un survivant à ≤ 32 m devient Exhausted, le tueur voit l'aura du survivant Exhausted le plus proche 2/3/4 s ; cooldown 25 s. Avant 9.1.0 : consommation des objets +80/90/100 % dans le TR (OBSOLETE) — STRONG_SECONDARY (2 résumés concordants : page perk + Patch Notes 9.1.X) [6][7]
- **PTB 10.2.0** : non mentionnée dans les sources lues → UNCERTAIN
- **Indice observable (survivant)** : **icône Exhausted** qui apparaît au moment où vous activez un objet (medkit, toolbox, lampe, carte…) sans avoir utilisé de perk d'exhaustion. Indice direct et fiable.
- **Soupçonner** : Exhausted inexpliqué + tueur qui vient droit sur vous ensuite → quasi certain.
- **Confirmer** : Exhausted apparaît en utilisant un objet près du tueur (Doctor ou autre tueur) → confirmé.
- **Adaptation robuste** : si vous jouez une perk d'exhaustion (Sprint Burst, Lithe, Dead Hard…), ne pas utiliser d'objet quand le tueur peut être à ≤ 32 m (TR ou non) ; ~32 m ≈ TR standard de 32 m (tueurs 115 %).
- **Counterplay** : utiliser l'objet loin du tueur ; Vigil raccourcit Exhausted (interaction attendue, non vérifiée ici) ; lampe : l'utiliser uniquement pour un sauvetage qui justifie la perte d'exhaustion.
- **Erreurs à ne pas faire** : sortir le medkit en TR puis compter sur Sprint Burst pour fuir.
- **Menace** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : OK (valeurs identiques).
- **Sources** : [6][7]

### Monitor & Abuse — Doctor
- **Statut / catégorie** : LIVE 10.1.2a · stealth (TR réduit hors chase) / chase
- **Effet LIVE + valeurs** : augmente le TR de 5/10/15 % ; hors poursuite, le réduit de 15/20/25 %. Le wiki précise que la description en jeu simplifie le code (l'interaction exacte des deux modificateurs hors chase n'est pas lisible dans le résumé) — STRONG_SECONDARY pour les valeurs, UNCERTAIN pour l'effet net hors chase [8]
- **PTB 10.2.0** : non mentionnée dans les sources lues → UNCERTAIN
- **Indice observable (survivant)** : battement de cœur qui démarre **plus tard** que prévu pour ce tueur hors chase ; TR audible de plus loin en chase.
- **Soupçonner** : tueur à TR connu (ex. 32 m) qui arrive « sans prévenir » + TR plus large en chase → plausible (distinguer d'add-ons de TR, Distressing, Coulrophobia…).
- **Confirmer** : fin de partie.
- **Adaptation robuste** : sur gen, regarder régulièrement autour de soi au lieu de se fier au cœur ; considérer que le premier battement = tueur déjà proche.
- **Counterplay** : garder un peu de distance avec les zones où le tueur patrouille ; jouer avec Spine Chill / Alert si le stealth vous punit.
- **Erreurs à ne pas faire** : « je n'entends rien donc il est loin ».
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK sur les valeurs ; IMPRÉCIS possible sur la présentation « +x % en poursuite » (le code applique le bonus en permanence et la réduction hors chase, d'après la note du wiki) — à confirmer.
- **Sources** : [8]

### Cruel Limits — Demogorgon
- **Statut / catégorie** : LIVE 10.1.2a · chase / endgame
- **Effet LIVE + valeurs** : à chaque générateur terminé, bloque **toutes** les vault locations (fenêtres) de la carte pour tous les survivants pendant 20/25/30 s ; le tueur voit leurs auras en jaune — STRONG_SECONDARY [9]
- **PTB 10.2.0** : non mentionnée dans les sources lues → UNCERTAIN
- **Indice observable (survivant)** : fenêtres bloquées par l'Entity (blocker visible, impossibilité de vaulter) juste après un « pop » de gen.
- **Soupçonner** : fenêtre bloquée alors qu'aucun blocage anti-3-vaults n'est possible (vous n'avez pas vaulté 3 fois) → quasi certain.
- **Confirmer** : blocage de plusieurs fenêtres simultanément à la complétion d'un gen → confirmé.
- **Adaptation robuste** : si un gen va sauter alors qu'un coéquipier est en chase, **annoncer** / retarder la complétion de quelques secondes (en SWF) ou prévoir une boucle à palette.
- **Counterplay** : en chase au moment d'un pop, privilégier palettes et jungle-gym à palette ; ne pas partir vers une fenêtre « safe » pendant 30 s.
- **Erreurs à ne pas faire** : compter sur la fenêtre de la maison principale juste après un pop.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK
- **Sources** : [9]

### Hoarder — Twins
- **Statut / catégorie** : LIVE 10.1.2a · info (anti-objet) · autre
- **Effet LIVE + valeurs** : Loud Noise Notification 4 s quand un survivant à ≤ 32/48/64 m ouvre un coffre ou ramasse un objet (pas pour un Limited Item) ; +2 coffres dans l'épreuve — STRONG_SECONDARY [10]
- **PTB 10.2.0** : non mentionnée dans les sources lues → UNCERTAIN
- **Indice observable (survivant)** : **plus de coffres que la normale** (5 au lieu de 3 : base 3 selon `audit_phase0` + 2).
- **Soupçonner** : ≥ 4 coffres repérés sur la carte → quasi certain (sauf autre effet de spawn de coffres).
- **Confirmer** : tueur qui arrive sur un coffre qu'on vient d'ouvrir / un objet ramassé.
- **Adaptation robuste** : si > 3 coffres, n'ouvrir un coffre / ramasser un objet qu'après avoir localisé le tueur loin (≥ 64 m).
- **Counterplay** : ramasser l'objet d'un coéquipier au sol seulement si le tueur est en chase ailleurs.
- **Erreurs à ne pas faire** : ouvrir des coffres en début de partie contre un tueur à Hoarder (cadeau de position).
- **Menace** : SoloQ 0-1 · SWF 0-1
- **Écart avec le seed** : IMPRÉCIS (le seed omet la portée 32/48/64 m, la durée de 4 s et l'exception Limited Items).
- **Sources** : [10]

### Septic Touch — Dredge
- **Statut / catégorie** : LIVE 10.1.2a · anti-soin
- **Effet LIVE + valeurs** : un survivant qui effectue une action de soin dans le TR subit Blindness + Exhausted ; les effets persistent 20/25/30 s après l'interruption du soin — STRONG_SECONDARY [11]
- **PTB 10.2.0** : non mentionnée dans les sources lues → UNCERTAIN
- **Indice observable (survivant)** : **icônes Blindness et Exhausted** qui apparaissent dès que vous soignez (vous-même ou un autre — « Healing action », UNCERTAIN sur le cas soin d'autrui) dans le TR.
- **Soupçonner** : Exhausted inexpliqué en soignant dans le TR → quasi certain.
- **Confirmer** : Blind + Exhausted simultanés pendant un soin en TR → confirmé.
- **Adaptation robuste** : ne jamais soigner dans le TR si vous comptez sur une perk d'exhaustion ; attendre ~30 s après la fin du soin avant de s'y fier.
- **Counterplay** : soigner hors TR ; Blindness coupe vos lectures d'aura (Kindred, Bond…) → rester prudent.
- **Erreurs à ne pas faire** : commencer un soin en TR puis courir en comptant sur Lithe/Sprint Burst.
- **Menace** : SoloQ 1 · SWF 1
- **Écart avec le seed** : IMPRÉCIS probable (le seed dit « qui se soigne » ; la source dit « performs a Healing action », ce qui semble inclure soigner autrui — à confirmer).
- **Sources** : [11]

---

## B. Perks NON VÉRIFIÉES (budget WebSearch épuisé) — effet = hypothèse issue du seed

Pour chacune : **Effet LIVE** = hypothèse seed, confiance **UNCERTAIN** ; **Écart avec le seed** = NON VÉRIFIABLE, sauf incohérence interne du seed signalée.

### Awakened Awareness — Mastermind
- **Statut / catégorie** : LIVE (présumé) · info/aura (transport)
- **Effet LIVE + valeurs** : seed : en portant un survivant, voit les survivants à ≤ 16/18/20 m. Cohérent avec seed ch8 l. 1378 et avec la mémoire du rédacteur (non sourcée) — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : aucun direct.
- **Soupçonner** : tueur qui dépose le porté / change de trajectoire vers vous alors que vous étiez caché près du crochet → plausible.
- **Confirmer** : fin de partie.
- **Adaptation robuste** : pendant un transport, se tenir à > 20 m du porteur (pas de « body block » gratuit si le tueur peut vous lire).
- **Counterplay** : Distortion / Calm Spirit non concernés (Distortion bloque les auras : interaction attendue, non vérifiée).
- **Erreurs à ne pas faire** : attendre à côté du crochet prévu.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : — (seed uniquement)

### Game Afoot — Skull Merchant
- **Statut / catégorie** : LIVE (présumé) · chase
- **Effet LIVE + valeurs** : seed : le survivant le plus poursuivi devient l'Obsession ; casser (palette/mur) ou frapper pendant sa poursuite → 7 % Haste 8/9/10 s. Seed ch8 ne mentionne que les casses (pas « frapper ») — UNCERTAIN
- **PTB 10.2.0** : seed : Haste 10 % — UNCERTAIN (non vérifié)
- **Indice observable (survivant)** : statut **Obsession** qui change (icône Obsession sur le HUD).
- **Soupçonner** : l'Obsession change en cours de partie vers le survivant le plus chassé → Game Afoot plausible (autres perks d'Obsession possibles).
- **Confirmer** : fin de partie.
- **Adaptation robuste** : l'Obsession évite de laisser le tueur casser des palettes « gratuites » (ne pas pré-drop en boucle).
- **Counterplay** : faire tourner les chases (l'Obsession se cache et laisse d'autres prendre la chase).
- **Erreurs à ne pas faire** : chaîner des palettes cassées sur une même zone morte.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : NON VÉRIFIABLE ; incohérence interne mineure (p96 « casser ou frapper » vs ch8 « casser »).
- **Sources** : —

### THWACK! — Skull Merchant
- **Statut / catégorie** : LIVE (présumé) · info/aura (cri)
- **Effet LIVE + valeurs** : seed p96 : casser un mur/palette fait crier les survivants à ≤ 36 m et les révèle 4/5/6 s (système de jetons). Seed ch8 : 3 jetons au départ, +1 par crochet, 1 consommé par casse — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **votre personnage crie** (cri involontaire) au moment où une palette/un mur est cassé ailleurs.
- **Soupçonner** : cri involontaire synchronisé avec un bruit de palette cassée → quasi certain.
- **Confirmer** : répétition du phénomène.
- **Adaptation robuste** : après un cri, supposer que votre aura a été vue quelques secondes : bouger de gen si le tueur est proche.
- **Counterplay** : les casses sont limitées par jetons (d'après le seed) ; compter les crochets.
- **Erreurs à ne pas faire** : rester sur place après un cri inexpliqué.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Leverage — Skull Merchant
- **Statut / catégorie** : LIVE (présumé) · anti-soin
- **Effet LIVE + valeurs** : seed p96 : après un décrochage, le **sauveteur** soigne 20/25/30 % plus lentement 60 s. Seed ch8 : ce sont « les survivants **décrochés** » — contradiction interne — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : aucun direct connu (état Mangled éventuel non confirmé).
- **Soupçonner** : soins anormalement lents après un sauvetage (sans Mangled/Sloppy) → plausible.
- **Confirmer** : fin de partie.
- **Adaptation robuste** : après un décrochage, prévoir un soin long ; ne pas soigner en TR.
- **Counterplay** : Botany Knowledge / medkit compensent partiellement.
- **Erreurs à ne pas faire** : lancer un long soin à découvert.
- **Menace** : SoloQ 0-1 · SWF 0
- **Écart avec le seed** : NON VÉRIFIABLE ; conflit interne sauveteur vs décroché (CONFLICT-K96-02).
- **Sources** : —

### Unbound — Unknown
- **Statut / catégorie** : LIVE (présumé) · chase
- **Effet LIVE + valeurs** : seed p96 : pendant 24/27/30 s après une blessure, chaque vault de fenêtre donne 7 % Haste 10 s — UNCERTAIN
- **PTB 10.2.0** : seed l. 818 : 5 % de Haste pendant 25 s — UNCERTAIN
- **Indice observable (survivant)** : aucun direct ; tueur qui vaulte des fenêtres puis accélère.
- **Soupçonner** : tueur qui vaulte volontiers derrière vous et regagne beaucoup de distance → plausible.
- **Confirmer** : fin de partie.
- **Adaptation robuste** : face à un tueur qui vaulte, privilégier les palettes aux fenêtres.
- **Counterplay** : ne pas enchaîner les fenêtres en ligne droite.
- **Erreurs à ne pas faire** : —
- **Menace** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE ; **PTB-comme-LIVE probable dans le seed ch8** (l. 1588 : « 5 % pendant 25 s » = valeurs PTB du seed l. 818) — CONFLICT-K96-01.
- **Sources** : —

### Undone — Unknown
- **Statut / catégorie** : LIVE (présumé) · slowdown (perte instantanée + blocage)
- **Effet LIVE + valeurs** : seed p96 : chaque skill check raté = 3 jetons (max 18/24/30) ; le prochain kick consomme tout : 1 % de régression et 1 s de blocage par jeton — UNCERTAIN
- **PTB 10.2.0** : **rework confirmé** (existence) par `audit_phase0.txt` (Dev Update 10.2.0 / BHVR KB 559) — STRONG_SECONDARY ; valeurs seed (jetons aux crochets, 8/9/10 %) UNCERTAIN
- **Indice observable (survivant)** : gen **bloqué par l'Entity (blanc)** + grosse régression d'un coup après un kick, alors qu'il y a eu des skill checks ratés.
- **Soupçonner** : skill checks ratés + kick suivi d'un blocage → plausible (vs DMS, Grim Embrace, Pop).
- **Confirmer** : répétition ; fin de partie.
- **Adaptation robuste** : ne pas rater de skill checks inutilement (pas de « great » risqués sous Hyperfocus si vous ratez souvent).
- **Counterplay** : réparer seul avec prudence (moins de skill checks cumulés ?) — hypothèse.
- **Erreurs à ne pas faire** : tapper un gen (lâcher/reprendre) juste pour rater des checks.
- **Menace** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE ; **seed ch8 l. 1590 décrit la version PTB (jetons aux crochets, −10 %, 10 s) comme LIVE** → PTB-comme-LIVE dans ch8 (CONFLICT-K96-01).
- **Sources** : [12]

### Dark Arrogance — Lich
- **Statut / catégorie** : LIVE (présumé) · chase
- **Effet LIVE + valeurs** : seed p96 : vaults 15/20/25 % plus rapides ; stuns et aveuglements 15 % plus longs — UNCERTAIN
- **PTB 10.2.0** : seed : +15/20/25 % de récupération après attaque — UNCERTAIN
- **Indice observable (survivant)** : tueur qui vaulte des fenêtres très vite ; stun de palette qui semble plus long.
- **Soupçonner** : vaults rapides (hors Bamboozle : pas de blocage de fenêtre) → plausible.
- **Confirmer** : fin de partie.
- **Adaptation robuste** : privilégier les palettes (le tueur est puni plus longtemps par un stun, d'après le seed).
- **Counterplay** : jouer les palettes et les lampes ; éviter les boucles de fenêtre longues.
- **Erreurs à ne pas faire** : —
- **Menace** : SoloQ 0-1 · SWF 0-1
- **Écart avec le seed** : NON VÉRIFIABLE ; **incohérence interne** : ch8 l. 1625 dit « vault et recovery 15-25 %, stuns/blinds 25 % plus longs » (recovery = valeur PTB selon le seed l. 821) — CONFLICT-K96-01.
- **Sources** : —

### Hex: Wretched Fate — Dark Lord
- **Statut / catégorie** : LIVE (présumé) · hex · slowdown (Obsession)
- **Effet LIVE + valeurs** : seed : après le 1er gen terminé, l'Obsession répare 27/30/33 % plus lentement (tant que le hex tient) — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **totem allumé** (flamme, bruit de totem) ; icône Hex sur le HUD si la perk est affichée comme les autres Hex (UNCERTAIN) ; réparation lente pour l'Obsession.
- **Soupçonner** : l'Obsession répare nettement plus lentement que les autres après le 1er gen + totem allumé → plausible.
- **Confirmer** : cleanse du totem → la vitesse revient.
- **Adaptation robuste** : l'Obsession fait des totems / sauvetages plutôt que des gens tant que le hex tient.
- **Counterplay** : cleanse (Small Game, Detective's Hunch aident).
- **Erreurs à ne pas faire** : laisser l'Obsession seule sur un gen long.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### No Quarter — Houndmaster
- **Statut / catégorie** : LIVE (présumé) · anti-soin
- **Effet LIVE + valeurs** : seed : à 75 % d'un auto-soin, skill checks continus ; un raté → Broken 20/25/30 s — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **skill checks en rafale** en fin d'auto-soin ; **icône Broken** après un raté.
- **Soupçonner** : skill checks anormalement fréquents à ~75 % d'un self-heal → quasi certain.
- **Confirmer** : Broken après un raté → confirmé.
- **Adaptation robuste** : faire soigner par un coéquipier ; si auto-soin, se concentrer sur les checks (pas pendant un autre stress).
- **Counterplay** : soin mutuel.
- **Erreurs à ne pas faire** : self-heal sous Hex: Ruin/Doctor (checks plus difficiles).
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Scourge Hook: Hangman's Trick — Pig
- **Statut / catégorie** : LIVE (présumé) · scourge · info/aura
- **Effet LIVE + valeurs** : seed : 4 crochets Fléau ; en portant, révèle les survivants à ≤ 12/14/16 m d'un Scourge Hook ; alerte en cas de sabotage — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **crochets blancs** (Scourge Hooks) visibles en aura par les survivants.
- **Soupçonner** : crochets blancs + tueur qui vient vers vous en portant quelqu'un alors que vous étiez près d'un crochet blanc → plausible (6 perks Scourge selon le seed).
- **Confirmer** : fin de partie.
- **Adaptation robuste** : pendant un transport, s'éloigner des crochets blancs.
- **Counterplay** : ne pas saboter à côté d'un crochet blanc pendant le transport.
- **Erreurs à ne pas faire** : attendre un sauvetage caché à côté d'un Scourge Hook.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Hex: Overture of Doom — Krasue
- **Statut / catégorie** : LIVE (présumé) · hex · stealth
- **Effet LIVE + valeurs** : seed : hex sur le gen le plus éloigné ; après 5 s de réparation dessus, TR transféré sur le gen et tueur Undetectable 20/25/30 s — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **battement de cœur / TR qui semble venir du générateur** lui-même ; totem allumé.
- **Soupçonner** : TR qui « reste » sur le gen alors que le tueur n'est pas visible → quasi certain.
- **Confirmer** : cleanse du totem.
- **Adaptation robuste** : ne pas se fier au TR pendant ~30 s après avoir commencé le gen le plus éloigné ; regarder autour.
- **Counterplay** : cleanse le totem ; faire ce gen en dernier ou à plusieurs.
- **Erreurs à ne pas faire** : croire le tueur sur le gen parce que le cœur bat.
- **Menace** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Ravenous — Krasue
- **Statut / catégorie** : LIVE (présumé) · endgame / Exposed
- **Effet LIVE + valeurs** : seed p96 : 1 jeton par 1er accrochage de chaque survivant ; au 4e, tous crient et sont Exposed 40/50/60 s — UNCERTAIN
- **PTB 10.2.0** : seed : +4 % Haste/vitesse d'accrochage par jeton, Exposed 80/85/90 s — UNCERTAIN
- **Indice observable (survivant)** : **cri de tous** + **icône Exposed** quand le 4e survivant différent est accroché.
- **Soupçonner** : cri collectif + Exposed au moment du 4e premier crochet → quasi certain.
- **Confirmer** : icône Exposed.
- **Adaptation robuste** : Exposed = un coup = au sol : pas de prise de risque pendant la durée.
- **Counterplay** : éviter que les 4 soient accrochés (sacrifier le tempo pour ne pas se faire tous crocher une fois).
- **Erreurs à ne pas faire** : tenter un sauvetage risqué pendant Exposed.
- **Menace** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE ; **seed ch8 l. 1810 présente les valeurs PTB (Haste, 80-90 s) comme LIVE** — CONFLICT-K96-01.
- **Sources** : —

### Wandering Eye — Krasue
- **Statut / catégorie** : LIVE (présumé) · info/aura
- **Effet LIVE + valeurs** : seed : au début d'une poursuite, voit les autres blessés à ≤ 20 m pendant 5 s ; cooldown 40/35/30 s — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : aucun direct.
- **Soupçonner** : blessé près d'une chase, le tueur vous cible ensuite sans ligne de vue → plausible.
- **Confirmer** : fin de partie.
- **Adaptation robuste** : blessé, se tenir à > 20 m des poursuites en cours.
- **Counterplay** : se soigner ; Distortion (interaction attendue).
- **Erreurs à ne pas faire** : venir « aider » blessé près d'une chase.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Hex: Scared to Death — Slasher
- **Statut / catégorie** : LIVE (présumé, perk du chapitre 10.0.0 selon `audit_phase0`) · hex · chase
- **Effet LIVE + valeurs** : seed : s'allume après avoir accroché 3 survivants différents ; casser une palette en poursuite fait crier les survivants à ≤ 13 m et les rend Hindered 11/12/13 % pendant 3 s — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **cri + icône Hindered** après une palette cassée ; totem allumé tard dans la partie.
- **Soupçonner** : totem qui s'allume après le 3e survivant différent accroché → plausible.
- **Confirmer** : Hindered après casse de palette.
- **Adaptation robuste** : en chase, ne pas rester à ≤ 13 m d'une palette que le tueur casse ; quitter la palette avant la casse.
- **Counterplay** : cleanse le totem dès son apparition.
- **Erreurs à ne pas faire** : attendre au pied d'une palette cassée.
- **Menace** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE (existence confirmée par l'audit [12])
- **Sources** : [12]

### Rampage — Slasher
- **Statut / catégorie** : LIVE (présumé, chapitre 10.0.0) · chase (anti-stun)
- **Effet LIVE + valeurs** : seed : 1 jeton par palette ou mur cassé (max 13) ; stun ou blind → +1 % de Haste par jeton pendant 13 s ; cooldown 30/25/20 s — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : aucun direct ; tueur qui accélère après un stun en fin de partie.
- **Soupçonner** : tueur qui a cassé beaucoup de palettes et revient très vite après un stun → plausible (Shadowborn aussi si blind).
- **Confirmer** : fin de partie.
- **Adaptation robuste** : plus la partie avance (palettes cassées), plus un stun doit être suivi d'une fuite immédiate vers une autre ressource.
- **Counterplay** : ne pas gaspiller les palettes tôt (limite les jetons).
- **Erreurs à ne pas faire** : rester au contact après un stun.
- **Menace** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE (existence confirmée par l'audit [12])
- **Sources** : [12]

### Spies from the Shadows — Générale
- **Statut / catégorie** : LIVE (présumé) · info
- **Effet LIVE + valeurs** : seed : alerte quand un survivant fait s'envoler un corbeau à ≤ 20/28/36 m ; cooldown 5 s (cohérent avec la mémoire du rédacteur, non sourcée) — UNCERTAIN
- **PTB 10.2.0** : seed : 36/38/40 m, cooldown 3 s — UNCERTAIN
- **Indice observable (survivant)** : les corbeaux s'envolent (visible/audible par tous) ; pas d'indice du fait que le tueur reçoit l'alerte.
- **Soupçonner** : tueur qui arrive juste après que vous avez fait s'envoler des corbeaux → plausible.
- **Confirmer** : fin de partie.
- **Adaptation robuste** : marcher (pas courir) près des corbeaux quand le tueur peut être proche.
- **Counterplay** : contourner les corbeaux.
- **Erreurs à ne pas faire** : sprinter à travers un groupe de corbeaux pour aller se cacher.
- **Menace** : SoloQ 0-1 · SWF 0
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Unrelenting — Générale
- **Statut / catégorie** : LIVE (présumé) · chase
- **Effet LIVE + valeurs** : seed : récupération après attaque **ratée** 20/25/30 % plus courte (cohérent avec la mémoire du rédacteur) — UNCERTAIN
- **PTB 10.2.0** : seed : 30/35/40 % sur les ratés, +10 % sur les coups réussis — UNCERTAIN
- **Indice observable (survivant)** : aucun direct ; le tueur « se remet » vite d'un coup raté.
- **Soupçonner** : après un coup raté (dodge), la distance gagnée est anormalement faible → plausible.
- **Confirmer** : fin de partie.
- **Adaptation robuste** : ne pas miser sur un mind-game en open field comme seule ressource.
- **Counterplay** : jouer les tiles plutôt que les esquives.
- **Erreurs à ne pas faire** : —
- **Menace** : SoloQ 0-1 · SWF 0-1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Bitter Murmur — Générale
- **Statut / catégorie** : LIVE (présumé) · info/aura · endgame
- **Effet LIVE + valeurs** : seed : chaque gen terminé révèle 5 s les survivants à ≤ 16 m du gen ; au dernier gen, tous révélés 5/7/10 s — UNCERTAIN
- **PTB 10.2.0** : seed : 20 m pendant 8 s ; fin de partie 10/12/14 s — UNCERTAIN
- **Indice observable (survivant)** : aucun HUD ; le tueur arrive droit sur vous juste après le pop d'un gen.
- **Soupçonner** : tueur qui cible précisément les survivants qui ont fini un gen, ou qui sait où tout le monde est à l'ouverture de l'endgame → plausible (vs BBQ, Nowhere to Hide…).
- **Confirmer** : fin de partie.
- **Adaptation robuste** : dès qu'un gen saute, quitter la zone des 16 m en direction imprévisible ; au dernier gen, ne pas courir directement vers la porte la plus proche du tueur.
- **Counterplay** : Distortion ; se disperser à la complétion.
- **Erreurs à ne pas faire** : rester à 3 sur le gen après le pop.
- **Menace** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

---

## Matériel pour la PERK DEDUCTION

Règles HEURISTIC (tirées du périmètre p96). Confiance : règles 1-3 fondées sur des perks vérifiées ; 4-9 fondées sur le seed (UNCERTAIN).

1. **J'ai observé** icône Exhausted en sortant un objet + aucune perk d'exhaustion utilisée → **Overwhelming Presence** quasi certain → n'utiliser aucun objet à ≤ 32 m du tueur ; le tueur a vu votre aura 2-4 s : bouger.
2. **J'ai observé** Blindness + Exhausted en soignant dans le TR → **Septic Touch** confirmé → soigner uniquement hors TR ; ne plus compter sur l'exhaustion pendant ~30 s après le soin.
3. **J'ai observé** fenêtres bloquées juste après un gen terminé (sans 3 vaults) → **Cruel Limits** confirmé → à chaque pop, jouer palettes 30 s ; en SWF, prévenir le survivant en chase avant de finir le gen.
4. **J'ai observé** TR/cœur et red stain disparus en pleine chase longue (Huntress ou autre) sans pouvoir visible → **Beast of Prey** plausible (vérifié) → garder la caméra sur le tueur, supposer sa présence pendant 40 s.
5. **J'ai observé** 4 coffres ou plus sur la carte → **Hoarder** quasi certain (vérifié) → n'ouvrir coffre / ne ramasser un objet que si le tueur est localisé à > 64 m.
6. **J'ai observé** un cri involontaire au bruit d'une palette/d'un mur cassé ailleurs → **THWACK!** plausible (seed, UNCERTAIN) → changer de position après chaque cri.
7. **J'ai observé** cri collectif + Exposed au 4e survivant accroché (1er crochet) → **Ravenous** plausible (seed, UNCERTAIN) → jeu ultra-safe pendant Exposed.
8. **J'ai observé** cœur qui bat « depuis le gen » (le plus éloigné) sans tueur visible + totem allumé → **Hex: Overture of Doom** plausible (seed, UNCERTAIN) → regarder autour, chercher le totem.
9. **J'ai observé** skill checks en rafale à ~75 % d'un self-heal (+ Broken après un raté) → **No Quarter** plausible (seed, UNCERTAIN) → se faire soigner par un coéquipier.
10. **J'ai observé** Obsession qui change vers le survivant le plus chassé + tueur qui accélère après des casses de palettes → **Game Afoot** plausible (seed, UNCERTAIN) → l'Obsession évite les palettes « gratuites » et passe la chase.

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| K96-01 | Bloodhound : flaques rouge vif, +2/3/4 s | [1][2] | LIVE | STRONG_SECONDARY |
| K96-02 | Shadowborn : blind → 6/8/10 % Haste 10 s | [3] | LIVE | STRONG_SECONDARY |
| K96-03 | Stridor : grognements +30/40/50 %, respiration +15/20/25 %, additif | [4] | LIVE | STRONG_SECONDARY |
| K96-04 | Beast of Prey : Bloodlust → Undetectable 30/35/40 s | [5] | LIVE | STRONG_SECONDARY |
| K96-05 | Overwhelming Presence : objet à ≤ 32 m → Exhausted 15 s ; aura 2/3/4 s ; CD 25 s | [6][7] | LIVE (depuis 9.1.0) | VERIFIED_MULTI_SOURCE (2 résumés wiki) → STRONG_SECONDARY retenu |
| K96-06 | Overwhelming Presence pré-9.1.0 : consommation objets +80/90/100 % en TR | [6][7] | OBSOLETE | STRONG_SECONDARY |
| K96-07 | Monitor & Abuse : TR +5/10/15 % ; hors chase −15/20/25 % | [8] | LIVE | STRONG_SECONDARY (effet net UNCERTAIN) |
| K96-08 | Cruel Limits : toutes les vault locations bloquées 20/25/30 s à chaque gen terminé | [9] | LIVE | STRONG_SECONDARY |
| K96-09 | Hoarder : alerte 4 s à ≤ 32/48/64 m (coffre/objet, hors Limited) ; +2 coffres | [10] | LIVE | STRONG_SECONDARY |
| K96-10 | Septic Touch : soin en TR → Blind + Exhausted, persiste 20/25/30 s | [11] | LIVE | STRONG_SECONDARY |
| K96-11 | Undone reçoit un rework au PTB 10.2.0 | [12] | PTB | STRONG_SECONDARY (via audit) |
| K96-12 | Hex: Scared to Death et Rampage = perks du chapitre 10.0.0 (Slasher) | [12] | LIVE | STRONG_SECONDARY (via audit) |
| K96-13 | Valeurs LIVE des 15 autres perks | seed | LIVE ? | UNCERTAIN |

## Conflits

#### CONFLICT-K96-01 : valeurs PTB 10.2.0 présentées comme LIVE dans le seed ch8
- Source A : seed p96 (`ch9_killperks.txt` l. 646-753) — Unbound 7 %/10 s ; Undone 3 jetons/skill check raté, 1 %/1 s par jeton ; Dark Arrogance stuns +15 % ; Ravenous Exposed 40/50/60 s.
- Source B : seed ch8 (`ch8_killers.txt` l. 1588, 1590, 1625, 1810) — Unbound 5 %/25 s ; Undone jetons aux crochets, −10 %/10 s ; Dark Arrogance + recovery, stuns +25 % ; Ravenous Haste +4 %/jeton, Exposed 80-90 s.
- Hypothèse : ch8 recopie les valeurs PTB 10.2.0 (identiques ou proches de la liste PTB du seed l. 800-841) ; p96 donnerait le LIVE.
- Résolution : UNRESOLVED (aucune source externe consultée pour ces 4 perks).

#### CONFLICT-K96-02 : cible de Leverage
- Source A : seed p96 — « le **sauveteur** soigne 20/25/30 % plus lentement 60 s ».
- Source B : seed ch8 l. 1452 — « les survivants **décrochés** soignent 20-30 % plus lentement ».
- Hypothèse : l'une des deux formulations est erronée.
- Résolution : UNRESOLVED.

#### CONFLICT-K96-03 : Game Afoot, déclencheur de la Haste
- Source A : seed p96 — « casser **ou frapper** pendant sa poursuite ».
- Source B : seed ch8 l. 1450 — « casser des palettes ou des murs en le chassant ».
- Résolution : UNRESOLVED.

#### CONFLICT-K96-04 : THWACK!, fonctionnement des jetons
- Source A : seed p96 — « système de jetons » sans détail.
- Source B : seed ch8 l. 1453 — 3 jetons au départ, +1 par crochet, 1 consommé par casse.
- Résolution : UNRESOLVED (non contradictoire, mais non vérifié).

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Bloodhound | +2/3/4 s, plus visibles | rouge vif, +2/3/4 s [1] | OK |
| Shadowborn | 6/8/10 % Haste 10 s | idem [3] | OK |
| Stridor | 15/20/25 % respiration, 30/40/50 % grognements | idem [4] | OK |
| Beast of Prey | Undetectable 30/35/40 s | idem [5] | OK |
| Overwhelming Presence | Exhausted 15 s à 32 m, aura 2/3/4 s, CD 25 s | idem [6][7] | OK |
| Monitor & Abuse | +5/10/15 % en chase, −15/20/25 % hors chase | valeurs idem ; code : bonus permanent + malus hors chase [8] | OK / IMPRÉCIS possible |
| Cruel Limits | toutes les fenêtres 20/25/30 s | idem [9] | OK |
| Hoarder | alerte coffre/objet ; +2 coffres | + portée 32/48/64 m, 4 s, hors Limited Items [10] | IMPRÉCIS |
| Septic Touch | « qui se soigne » dans le TR | « performs a Healing action » [11] | IMPRÉCIS (probable) |
| Undone | « Rework prévu en 10.2.0 » (p96) | rework cité dans l'audit [12] | OK (p96) ; PTB-comme-LIVE (ch8 l. 1590) |
| Unbound | p96 7 %/10 s ; ch8 5 %/25 s | non vérifié | NON VÉRIFIABLE ; PTB-comme-LIVE probable (ch8) |
| Dark Arrogance | p96 stuns +15 % ; ch8 +25 % et recovery | non vérifié | NON VÉRIFIABLE ; PTB-comme-LIVE probable (ch8) |
| Ravenous | p96 Exposed 40/50/60 s ; ch8 80-90 s + Haste | non vérifié | NON VÉRIFIABLE ; PTB-comme-LIVE probable (ch8) |
| Leverage | p96 sauveteur ; ch8 décroché | non vérifié | NON VÉRIFIABLE (conflit interne) |
| 14 autres perks non vérifiées (Awakened Awareness, Game Afoot, THWACK!, Wretched Fate, No Quarter, Hangman's Trick, Overture of Doom, Wandering Eye, Scared to Death, Rampage, Spies, Unrelenting, Bitter Murmur) | valeurs p96 | — | NON VÉRIFIABLE |
| Valeurs PTB 10.2.0 du seed (l. 800-841) pour Game Afoot, Spies, Unbound, Dark Arrogance, Ravenous, Unrelenting, Bitter Murmur, Undone | chiffres PTB | non vérifiés (aucune source PTB lue) | NON VÉRIFIABLE (bien étiquetés PTB dans p98) |

## Questions ouvertes

1. Valeurs LIVE 10.1.2a des 15 perks non vérifiées (priorité : Leverage, Unbound, Undone, Dark Arrogance, Ravenous, à cause des conflits internes du seed).
2. Monitor & Abuse : effet net du TR hors chase (bonus + malus cumulés ou seul le malus ?).
3. Septic Touch : déclenchement en soignant un **autre** survivant ?
4. Beast of Prey : durée de chase nécessaire au Bloodlust en 10.1.2a, et fin de l'Undetectable à la perte de Bloodlust ?
5. Overwhelming Presence : Vigil / perks anti-Exhausted réduisent-ils les 15 s ?
6. Valeurs PTB 10.2.0 exactes (Dev Update 10.2.0, BHVR KB 559) pour les perks du périmètre citées dans le seed l. 800-841.
7. Hex: Wretched Fate : le hex a-t-il un totem « classique » cleansable ? Condition exacte d'allumage.

## Sources

[1] Bloodhound — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Bloodhound — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[2] Pools of Blood — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Pools_of_Blood — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[3] Shadowborn — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Shadowborn — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[4] Stridor — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Stridor — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[5] Beast of Prey — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Beast_of_Prey — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[6] Overwhelming Presence — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Overwhelming_Presence — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[7] Patch Notes 9.1.X — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Patch_Notes_9.1.X — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[8] Monitor & Abuse (+ page Talk) — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Monitor_&_Abuse — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[9] Cruel Limits — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Cruel_Limits — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[10] Hoarder — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Hoarder — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[11] Septic Touch — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Septic_Touch — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[12] Audit phase 0 du projet (interne) — `kb/seed/audit_phase0.txt` (état 10.0.0, contenu PTB 10.2.0, cite Dev Update 10.2.0 et BHVR KB 559) — lu le 27/09/2026
