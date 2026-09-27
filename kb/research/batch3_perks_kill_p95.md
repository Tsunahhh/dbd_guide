# Lot 3 — Perks tueur vues du survivant, page 95 du guide seed (ch9_killperks.txt l. 547-645)

Référence : LIVE 10.1.2a (17/09/2026) · PTB 10.2.0 non LIVE · rédigé le 27/09/2026.
Périmètre (22 perks) : Hysteria, Surveillance, Make Your Choice, Dark Devotion, Franklin's Demise, Fire Up, Hex: Two Can Play, Batteries Included, Unforeseen, Languid Touch, Weave Attunement, Human Greed, All-Shaking Thunder, Forever Entwined, Hex: Nothing but Misery, None Are Free, Help Wanted, Phantom Fear, Haywire, Hex: Under Your Thumb, See How They Run, Cull the Weak.
Méthode : WebSearch uniquement (WebFetch bloqué) — sources lues « via résumé de recherche ».

**Couverture web : 8 éléments vérifiés par recherche / 14 non re-vérifiés (quota WebSearch épuisé)** (+ 2 renommages confirmés par l'audit phase 0).

> Toutes les parties analytiques (indices, soupçonner/confirmer, adaptation, counterplay, erreurs, menace) sont **HEURISTIC / EXPERT OPINION** (non sourcées).

> **AVERTISSEMENT DE COUVERTURE (important)** : le quota WebSearch **de la session** (200/200, partagé avec les autres agents) a été épuisé après **8 recherches** de ce lot. Seules les 8 premières perks (Hysteria → Batteries Included) ont une vérification web.
> Les 14 autres (Unforeseen → Cull the Weak) sont **NON VÉRIFIABLES** dans cette session : l'effet indiqué est celui du seed, éventuellement commenté par la **connaissance du modèle (antérieure à mi-2026), UNCERTAIN**. Les conseils survivant pour ces perks sont des **HEURISTIC/HYPOTHESIS** conditionnelles à l'exactitude du seed. **À revérifier en priorité** (voir Questions ouvertes).
> Aucune source lue ne porte sur le PTB 10.2.0 : toutes les mentions PTB du seed sont **NON VÉRIFIABLES** ici.

---

## Perks vérifiées (WebSearch)

### Hysteria — Nemesis
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (Oblivious) · soutien chase
- **Effet LIVE + valeurs** : quand vous blessez un survivant en bonne santé, **tous les survivants blessés** deviennent Oblivious pendant X s ; temps de recharge Y s. Valeurs en conflit dans le résumé : 20/25/30 s + CD 30 s (ancienne version probable) vs **30/35/40 s + CD 20 s** (version buffée) — **UNCERTAIN** (CONFLICT-K95-01). Le mécanisme (déclenché par passage sain → blessé) est STRONG_SECONDARY.
- **PTB 10.2.0** : UNCERTAIN (aucune source PTB lue)
- **Indice observable (survivant)** (HEURISTIC) : icône de statut **Oblivious** sur le HUD juste après qu'un coéquipier (ou vous) passe blessé, alors que vous étiez déjà blessé ; perte du battement de cœur/musique de chase alors que le tueur est proche.
- **Soupçonner** (HEURISTIC) : Oblivious apparaît sans add-on/pouvoir connu (hors Myers, Ghost Face, Sadako, etc.) + au moment exact d'un premier coup sur un sain → Hysteria plausible.
- **Confirmer** (HEURISTIC) : répétition du motif (Oblivious sur tous les blessés à chaque « premier coup ») ; écran de fin de partie.
- **Adaptation robuste** (HEURISTIC) : blessé + Oblivious → se déplacer en regardant souvent derrière soi, éviter les zones mortes ; se soigner ou rester groupé avec un survivant sain.
- **Counterplay** (HEURISTIC) : garder la santé de l'équipe haute (moins de blessés = moins de cibles) ; appels vocaux en SWF (le TR ne compte plus quand Oblivious).
- **Erreurs à ne pas faire** (HEURISTIC) : croire que « pas de cœur = tueur loin » quand on est blessé ; rester sur un gen blessé sans visuel.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : seed = 30/35/40 s, CD 20 s → cohérent avec la version buffée ; **NON VÉRIFIABLE** de façon définitive (conflit de résumé). Précision manquante : seul le passage **sain → blessé** déclenche.
- **Sources** : [1] [2] [3]

### Surveillance — Pig
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (générateurs) · slowdown indirect
- **Effet LIVE + valeurs** : auras des générateurs **en régression en blanc** ; si la régression est interrompue (un survivant reprend le gen), aura **en jaune pendant 8/12/16 s** ; bruits de réparation audibles **+8 m** plus loin — STRONG_SECONDARY (wiki fandom/wiki.gg via résumé)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **aucun indice direct** (aucune icône de statut, rien sur le HUD).
- **Soupçonner** (HEURISTIC) : le tueur revient **systématiquement** sur un gen juste après que vous l'ayez repris après un kick, depuis loin, sans aura/bruit apparent ; tueur à Pop/Eruption/Call of Brine qui kicke beaucoup.
- **Confirmer** (HEURISTIC) : écran de fin de partie ; ou test volontaire (toucher un gen kické puis partir, observer s'il revient en < 16 s).
- **Adaptation robuste** (HEURISTIC) : après avoir « tapé » un gen régressant, ne pas y rester seul si le tueur est proche ; préférer compléter d'autres gens non kickés ; l'arrêt de la régression révèle potentiellement votre position.
- **Counterplay** (HEURISTIC) : utiliser la reprise d'un gen kické comme leurre (toucher puis partir) pour faire perdre du temps ; en SWF, un seul survivant reprend le gen, les autres ailleurs.
- **Erreurs à ne pas faire** (HEURISTIC) : reprendre un gen kické à 8-16 s de marche du tueur sans plan de fuite ; oublier le +8 m sur le bruit de réparation (se cacher derrière le gen ne suffit pas).
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK
- **Sources** : [4] [5]

### Make Your Choice — Pig
- **Statut / catégorie** : LIVE 10.1.2a · anti-sauvetage · Exposed (slugging/Exposed)
- **Effet LIVE + valeurs** : si un survivant est décroché pendant que vous êtes à **plus de 32 m** du crochet : le sauveteur **crie et révèle sa position**, et est **Exposed 40/50/60 s** ; CD **40/50/60 s** — STRONG_SECONDARY (résumé wiki, cohérent avec plusieurs bases de perks)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **cri** du sauveteur + icône **Exposed** sur son portrait (et sur votre HUD si c'est vous).
- **Soupçonner** (HEURISTIC) : tueur qui quitte ostensiblement le crochet (> 32 m) au lieu de patrouiller.
- **Confirmer** (HEURISTIC) : cri + Exposed au décrochage = certitude (peu d'autres sources de cri+Exposed à l'unhook).
- **Adaptation robuste** (HEURISTIC) : décrocher quand le tueur est **proche (≤ 32 m) mais engagé en chase** avec quelqu'un d'autre, ou en chase avec le sauveteur proche ; le sauveteur Exposed se cache/fuit, c'est le décroché (protections d'unhook) qui doit prendre l'agro.
- **Counterplay** (HEURISTIC) : « trade » sûr impossible une fois Exposed → le sauveteur évite toute tile faible 40-60 s ; profiter du CD (40-60 s) pour un 2ᵉ sauvetage.
- **Erreurs à ne pas faire** (HEURISTIC) : sauver alors que le tueur est clairement loin et revient ; body-block pour le décroché en étant Exposed.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : OK
- **Sources** : [6] [7]

### Dark Devotion — Plague
- **Statut / catégorie** : LIVE 10.1.2a · stealth (Undetectable + faux TR réel)
- **Effet LIVE + valeurs** : quand l'Obsession **perd un état de santé** (par n'importe quel moyen selon le wiki), pendant **35/40/45 s** : votre rayon de terreur est **transféré à l'Obsession** et fixé à **40 m** ; vous êtes **Undetectable**. Ce TR transféré déclenche les effets liés au TR (ce n'est pas un simple faux TR) — STRONG_SECONDARY
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : l'**Obsession blessée** entend un TR/battement de cœur qui la suit même quand le tueur part ; les autres entendent un TR centré sur l'Obsession ; icône Undetectable non visible par les survivants (c'est un statut du tueur).
- **Soupçonner** (HEURISTIC) : juste après un coup sur l'Obsession, le TR « reste » avec l'Obsession qui s'éloigne + le tueur apparaît sans cœur ailleurs → Dark Devotion plausible.
- **Confirmer** (HEURISTIC) : l'Obsession dit (SWF) « j'ai un TR sur moi en étant seule » ; le cœur se déplace avec l'Obsession.
- **Adaptation robuste** (HEURISTIC) : si vous êtes l'Obsession blessée, **ne pas rejoindre** les autres ni un gen occupé pendant ~45 s (vous leur amenez un TR et les poussez à fuir, ou vous masquez le vrai tueur). Les autres : pendant ~45 s, ne pas se fier au TR, regarder autour.
- **Counterplay** (HEURISTIC) : communication SWF ; l'Obsession blessée va se soigner loin/seule ou sert de leurre.
- **Erreurs à ne pas faire** (HEURISTIC) : lâcher un gen parce que le TR arrive (c'est l'Obsession) ; croire que le tueur est dans le TR.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : IMPRÉCIS (seed « prend un coup » ; wiki : « perd un état de santé », tout moyen confondu)
- **Sources** : [8] [9]

### Franklin's Demise — Cannibal
- **Statut / catégorie** : LIVE 10.1.2a · anti-objets · info/aura
- **Effet LIVE + valeurs** : coups de base → le survivant **lâche son objet** ; vous voyez les **auras des objets au sol dans 32/48/64 m** — STRONG_SECONDARY. Le résumé mentionne aussi « objet consommé par l'Entité s'il n'est pas récupéré en 150/120/90 s » : **UNCERTAIN** (possiblement une ancienne version, CONFLICT-K95-02).
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : votre **objet tombe** au sol à chaque coup de base (très lisible).
- **Soupçonner** (HEURISTIC) : non nécessaire — l'objet qui tombe au premier coup est quasi une confirmation (hors cas rares de lâcher volontaire).
- **Confirmer** (HEURISTIC) : objet tombé après un coup de base = certitude.
- **Adaptation robuste** (HEURISTIC) : ne pas revenir chercher son objet quand le tueur est proche (il voit l'aura de l'objet → piège) ; laisser un coéquipier éloigné le ramasser plus tard.
- **Counterplay** (HEURISTIC) : utiliser l'objet (medkit/toolbox) avant d'entrer en chase ; objets de faible valeur ; en SWF, signaler qui a perdu quoi.
- **Erreurs à ne pas faire** (HEURISTIC) : camper son objet au sol ; prendre des objets rares contre un tueur qui l'a montrée.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1-2 (SWF dépend plus des objets)
- **Écart avec le seed** : OK (réserve : durée de consommation de l'objet non mentionnée par le seed et elle-même non confirmée)
- **Sources** : [10] [11]

### Fire Up — Nightmare
- **Statut / catégorie** : LIVE 10.1.2a · chase / endgame (scaling)
- **Effet LIVE + valeurs** : +1 jeton par générateur terminé (**max 5**) ; chaque jeton : **+4/5/6 %** de vitesse d'action (max **20/25/30 %**) pour **ramasser/déposer un survivant, casser murs et palettes au sol, endommager les générateurs, vaulter les fenêtres** — STRONG_SECONDARY (wiki via résumé)
- **PTB 10.2.0** : seed : « 6/7/8 % par jeton » → **NON VÉRIFIABLE** (aucune source PTB lue)
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct (pas d'icône) ; indirect : casse de palette / vault de fenêtre du tueur visiblement plus rapides en fin de partie.
- **Soupçonner** (HEURISTIC) : fin de partie (≥ 3-4 gens faits) + tueur qui casse les palettes plus vite et vaulte des fenêtres en chase → plausible.
- **Confirmer** (HEURISTIC) : écran de fin de partie seulement (ou mesure : casse de palette nettement < 2,34 s en endgame).
- **Adaptation robuste** (HEURISTIC) : en fin de partie, ne pas compter sur les fenêtres « tueur-lentes » ; privilégier les boucles longues et le pré-drop précoce plutôt que de forcer une casse.
- **Counterplay** (HEURISTIC) : faire les derniers gens groupés et rapidement ; ne pas prolonger une chase en fin de partie sur fenêtre.
- **Erreurs à ne pas faire** (HEURISTIC) : croire que le tueur est toujours aussi lent aux vaults qu'en début de partie.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK sur le LIVE (4/5/6 %, max 5). Valeur PTB non vérifiable. Le seed classe aussi Fire Up en « Fin de partie » : cohérent.
- **Sources** : [12] [13]

### Hex: Two Can Play — Good Guy
- **Statut / catégorie** : LIVE 10.1.2a · hex · anti-stun/blind
- **Effet LIVE + valeurs** : après avoir été **étourdi ou aveuglé 4/3/2 fois** par des survivants, s'il reste au moins un **totem terne** et qu'aucun totem n'est déjà lié à la perk, un Hex s'allume : tout survivant qui vous étourdit ou aveugle est **aveuglé 1,5 s** (n'affecte pas un survivant porté). Dure jusqu'à la purification/bénédiction du totem — STRONG_SECONDARY
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **Hex allumé** (totem qui brûle, icône Hex non affichée tant qu'on n'est pas affecté) ; après votre stun/blind, **votre écran devient blanc** 1,5 s.
- **Soupçonner** (HEURISTIC) : après 2-4 stuns/flashes sur le tueur, un **nouveau totem allumé** apparaît (bruit de feu / flammes près d'un totem).
- **Confirmer** (HEURISTIC) : être aveuglé après un stun de palette ou un flash = certitude.
- **Adaptation robuste** (HEURISTIC) : compter les stuns/flashes de l'équipe ; au-delà de 2, chercher un totem allumé avant de reprendre des stuns agressifs.
- **Counterplay** (HEURISTIC) : **purifier le totem** (activité d'équipe) ; ne pas faire de stun de palette en milieu de boucle qui mène à un cul-de-sac (le blind 1,5 s fait perdre la direction).
- **Erreurs à ne pas faire** (HEURISTIC) : spammer flashlight/firecracker après activation ; drop de palette « stun » puis course à l'aveugle vers un mur.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1-2 (surtout contre SWF flashlights)
- **Écart avec le seed** : OK (le seed omet la condition « totem terne disponible »)
- **Sources** : [14] [15]

### Batteries Included — Good Guy
- **Statut / catégorie** : LIVE 10.1.2a · chase (Haste)
- **Effet LIVE + valeurs** : à moins de **16 m** d'un générateur **terminé** : **+5 % Haste**, persistant **1/3/5 s** après sortie de la zone ; **désactivée pour le reste de la partie une fois les portes alimentées** — STRONG_SECONDARY (le résumé indique 12 m à la sortie en 7.4.0, puis 16 m après un patch ultérieur)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct ; indirect : le tueur rattrape anormalement vite **autour d'un gen déjà fait**.
- **Soupçonner** (HEURISTIC) : chases perdues rapidement près des gens terminés + tueur qui « guide » la chase vers ces zones.
- **Confirmer** (HEURISTIC) : écran de fin de partie.
- **Adaptation robuste** (HEURISTIC) : en milieu de partie, **éloigner la chase des gens terminés** (> 16 m) ; ne pas boucler une tile adjacente à un gen fini.
- **Counterplay** (HEURISTIC) : choisir l'ordre des gens pour ne pas « terminer » des gens au centre des meilleures tiles ; perk inactive en endgame (portes alimentées).
- **Erreurs à ne pas faire** (HEURISTIC) : craindre la perk en endgame (elle est désactivée) ; faire des chases longues près des gens finis.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : IMPRÉCIS — valeurs OK (5 %, 16 m, 1/3/5 s) mais le seed **omet la désactivation à l'alimentation des portes** (important pour l'endgame).
- **Sources** : [16] [17]

---

## Perks NON vérifiées (quota WebSearch épuisé)

> Pour chaque perk : « Effet seed » = texte du guide (non fiable) ; « Connaissance du modèle (antérieure à mi-2026), UNCERTAIN » = souvenir non sourcé, à ne pas utiliser comme valeur LIVE. Contexte chapitres confirmé par `audit_phase0.txt` [18] seulement quand indiqué.

### Unforeseen — Unknown
- **Statut / catégorie** : LIVE (probable) · stealth
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : après un coup de pied de gen, votre TR (32 m) est transféré au générateur et vous êtes Undetectable 22/26/30 s. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : déclenchement « quand un générateur commence à régresser », durée 22/26/30 s — UNCERTAIN. L'audit note un buff du pouvoir de l'Unknown en 9.6.0 (pas de mention de la perk) [18].
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : TR/battement de cœur qui **émane d'un générateur** immobile juste après un kick.
- **Soupçonner** (HEURISTIC) : cœur qui ne bouge pas et reste centré sur un gen kické + tueur qui surgit sans cœur ailleurs.
- **Confirmer** (HEURISTIC) : cœur constant sans tueur visible en approchant du gen.
- **Adaptation robuste** (HEURISTIC) : après un kick, considérer le TR du gen comme **non-information** pendant ~30 s ; surveiller visuellement.
- **Counterplay** (HEURISTIC) : repérer quel gen a été kické (étincelles/régression) ; ne pas fuir « à l'opposé du cœur » sans visuel.
- **Erreurs à ne pas faire** (HEURISTIC) : abandonner le gen kické à cause du cœur (le tueur peut être ailleurs) ; ou au contraire s'y sentir en sécurité.
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : [18] (contexte uniquement)

### Languid Touch — Lich
- **Statut / catégorie** : LIVE (probable) · anti-exhaustion / info
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : survivant qui fait s'envoler un corbeau à ≤ 36 m du tueur → Exhausted 6/8/10 s. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : cohérent (UNCERTAIN) ; existence possible d'un CD ou d'un cri non confirmée.
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : icône **Exhausted** apparaissant **sans avoir utilisé de perk de sprint** juste après l'envol d'un corbeau.
- **Soupçonner** (HEURISTIC) : Exhausted « gratuit » + corbeaux envolés près du tueur.
- **Confirmer** (HEURISTIC) : Exhausted reproduit à chaque corbeau dérangé près du tueur.
- **Adaptation robuste** (HEURISTIC) : **marcher** (pas courir) près des corbeaux ; contourner les zones à corbeaux quand le tueur est à < ~36 m.
- **Counterplay** (HEURISTIC) : garder une perk d'exhaustion prête en évitant les corbeaux ; perks non-exhaustion (Resilience, Windows, etc.).
- **Erreurs à ne pas faire** (HEURISTIC) : sprinter dans des corbeaux en début de chase avec Sprint Burst/Lithe prévu.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune lue

### Weave Attunement — Lich
- **Statut / catégorie** : LIVE (probable) · anti-objets · info/aura
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : objet vide tombe automatiquement ; auras des objets au sol et des survivants à ≤ 12 m d'eux ; ramasser un objet → Oblivious 20/25/30 s. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : cohérent (UNCERTAIN).
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : objet **vide qui tombe tout seul** ; **Oblivious** juste après avoir ramassé un objet.
- **Soupçonner** (HEURISTIC) : objet vide lâché automatiquement (quasi signature) ; Oblivious après ramassage.
- **Confirmer** (HEURISTIC) : Oblivious au ramassage = certitude.
- **Adaptation robuste** (HEURISTIC) : ne pas ramasser d'objet au sol quand le tueur est proche ; ne pas s'attarder à ≤ 12 m d'un objet au sol (aura révélée).
- **Counterplay** (HEURISTIC) : combo classique avec Franklin's Demise → les objets au sol deviennent des pièges à aura ; les ignorer.
- **Erreurs à ne pas faire** (HEURISTIC) : aller ramasser l'objet d'un coéquipier en plein milieu de la map sans info.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1-2
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune lue

### Human Greed — Dark Lord
- **Statut / catégorie** : LIVE (probable) · info/aura (coffres)
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : auras des coffres fermés, possibilité de refermer les coffres ouverts ; survivant à ≤ 8 m d'un coffre révélé 3/4/5 s. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : présence possible d'un CD non précisé — UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **coffres ouverts qui se referment** (vus fermés alors qu'ils ont été fouillés) ; aucun indicateur d'aura révélée sauf si la perk donne un cri (non confirmé).
- **Soupçonner** (HEURISTIC) : tueur qui arrive droit sur vous après un passage près d'un coffre + coffres refermés.
- **Confirmer** (HEURISTIC) : coffre refermé = forte présomption (peu d'autres mécaniques le font).
- **Adaptation robuste** (HEURISTIC) : ne pas se cacher ni traverser près des coffres (≥ 8 m) ; éviter les fouilles de coffre en cours de partie.
- **Counterplay** (HEURISTIC) : ne pas dépendre des coffres ; information à partager en SWF.
- **Erreurs à ne pas faire** (HEURISTIC) : fouiller un coffre à côté d'un gen que le tueur surveille.
- **Menace (HEURISTIC)** : SoloQ 0-1 · SWF 0-1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune lue

### All-Shaking Thunder — Houndmaster
- **Statut / catégorie** : LIVE (probable) · chase
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : après une chute (drop d'une hauteur), fentes 75 % plus longues pendant 15/20/25 s. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : effet lié à la chute de hauteur, forme exacte (durée de fente vs portée, bonus unique ou fenêtre) **UNCERTAIN**.
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct ; indirect : le tueur **saute** volontairement d'un étage puis touche de très loin avec une fente.
- **Soupçonner** (HEURISTIC) : tueur qui prend systématiquement les drops (Main Building, étages) + coups à portée anormale.
- **Confirmer** (HEURISTIC) : écran de fin de partie.
- **Adaptation robuste** (HEURISTIC) : sur les tiles à étage, ne pas faire le drop si le tueur peut suivre ; garder de la distance > portée de fente normale après un drop du tueur.
- **Counterplay** (HEURISTIC) : utiliser les escaliers/boucles plates plutôt que les drops contre ce tueur.
- **Erreurs à ne pas faire** (HEURISTIC) : « mind-game » sur un bord de drop avec le tueur juste derrière.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune lue

### Forever Entwined — Ghoul
- **Statut / catégorie** : LIVE (probable) · transport/crochet
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : jeton par dégât (max 6/7/8), +4 % par jeton à ramasser/déposer/accrocher. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : effet sur vitesses de transport/crochet — UNCERTAIN (valeurs non confirmées).
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct ; indirect : ramassage et accrochage visiblement rapides en milieu/fin de partie.
- **Soupçonner** (HEURISTIC) : sabotages / body-blocks / flashlight saves qui échouent de peu à répétition.
- **Confirmer** (HEURISTIC) : écran de fin de partie.
- **Adaptation robuste** (HEURISTIC) : pour les sauvetages au ramassage (flash, palette), **se positionner plus tôt** ; accepter de moins tenter les saves serrés.
- **Counterplay** (HEURISTIC) : Breakdown / sabotage anticipé ; éviter de se faire mettre au sol loin des crochets n'aide pas contre une perk de vitesse d'accrochage (seulement transport).
- **Erreurs à ne pas faire** (HEURISTIC) : tenter un flash-save au timing standard.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune lue

### Hex: Nothing but Misery — Ghoul
- **Statut / catégorie** : LIVE (probable) · hex · chase
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : s'allume après 8 coups de base ; ensuite chaque coup inflige Hindered 5 % pendant 10/12,5/15 s. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : UNCERTAIN (condition d'allumage et valeurs non confirmées).
- **PTB 10.2.0** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : « 4 coups + 10 % de ralentissement de vault » → **NON VÉRIFIABLE** ; le seed mélange une note PTB dans la ligne LIVE (« Passera à 4 coups en 10.2.0 ») — étiquetage correct (futur), mais valeur non sourcée.
- **Indice observable (survivant)** (HEURISTIC) : **totem Hex allumé en cours de partie** ; icône **Hindered** après un coup.
- **Soupçonner** (HEURISTIC) : Hex apparaissant tard (après plusieurs coups) + Hindered au coup.
- **Confirmer** (HEURISTIC) : Hindered après un coup de base quand un Hex vient de s'allumer.
- **Adaptation robuste** (HEURISTIC) : blessé Hindered → ne pas tenter de boucle longue, aller vers la ressource la plus proche.
- **Counterplay** (HEURISTIC) : **purifier le totem** dès l'allumage ; compter les coups de l'équipe (≈ 8 selon le seed).
- **Erreurs à ne pas faire** (HEURISTIC) : ignorer un totem allumé en milieu de partie.
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune lue

### None Are Free — Ghoul
- **Statut / catégorie** : LIVE (probable) · endgame
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : jeton au 1ᵉʳ accrochage de chaque survivant (max 4) ; tous les gens terminés → fenêtres et palettes debout bloquées 12/14/16 s par jeton. UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **fenêtres/palettes bloquées (effet Entité)** au moment où les portes s'alimentent.
- **Soupçonner** (HEURISTIC) : blocage généralisé de tiles à l'alimentation des portes (à distinguer de No Way Out, qui bloque les portes, et de Blood Warden).
- **Confirmer** (HEURISTIC) : blocage visuel des fenêtres/palettes partout sans chase = quasi certitude.
- **Adaptation robuste** (HEURISTIC) : **ne pas finir le dernier gen en étant blessé/en chase** si 3-4 survivants ont été accrochés ; se placer près d'une porte avant de finir le dernier gen.
- **Counterplay** (HEURISTIC) : 99 % du dernier gen puis compléter groupés près des portes ; en endgame, ne pas compter sur les palettes ~45-64 s (4 jetons × 12-16 s selon seed).
- **Erreurs à ne pas faire** (HEURISTIC) : finir le dernier gen en chase en comptant sur une palette.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune lue

### Help Wanted — Animatronic
- **Statut / catégorie** : LIVE (probable) · chase / slowdown indirect
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : gen frappé → « compromis » ; s'il est terminé, récupération après coup réussi 25 % plus rapide pendant 40/50/60 s. Contexte confirmé : The Animatronic sorti en 9.0.0 (17/06/2025) [18]. Effet de la perk UNCERTAIN.
- **PTB 10.2.0** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : « jusqu'à 3 générateurs compromis » → **NON VÉRIFIABLE**
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct connu (existence d'un marquage visuel « compromis » non confirmée).
- **Soupçonner** (HEURISTIC) : après avoir terminé un gen précédemment kické, le tueur ré-enchaîne ses coups plus vite (cooldown après coup court).
- **Confirmer** (HEURISTIC) : écran de fin de partie.
- **Adaptation robuste** (HEURISTIC) : après avoir terminé un gen kické, éviter les chases à proximité immédiate pendant ~60 s ; attention aux zones où deux survivants blessés se trouvent.
- **Counterplay** (HEURISTIC) : terminer en priorité des gens non kickés si possible (HYPOTHESIS).
- **Erreurs à ne pas faire** (HEURISTIC) : compter sur la distance gagnée après un coup (moins de temps de récupération).
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : [18] (contexte uniquement)

### Phantom Fear — Animatronic
- **Statut / catégorie** : LIVE (probable) · info/aura
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : survivant dans le TR qui **regarde le tueur** → crie et est révélé 2 s ; CD 80/70/60 s. UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **cri involontaire** en regardant le tueur depuis le TR.
- **Soupçonner** (HEURISTIC) : cri sans avoir été frappé ni sans perk de cri connue.
- **Confirmer** (HEURISTIC) : cri au moment où le tueur entre dans votre champ de vision = certitude.
- **Adaptation robuste** (HEURISTIC) : ne pas « tracker » le tueur visuellement depuis une cachette dans le TR ; se fier au son et regarder ailleurs.
- **Counterplay** (HEURISTIC) : le CD est long (60-80 s) → après un cri, fenêtre pour regarder le tueur librement.
- **Erreurs à ne pas faire** (HEURISTIC) : jouer du « stealth » en fixant le tueur derrière un mur/haie.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune lue

### Haywire — Animatronic
- **Statut / catégorie** : LIVE (probable) · endgame
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : porte lâchée après 80 % de progression → régresse à 80/90/100 % de la vitesse d'ouverture. UNCERTAIN (formulation seed ambiguë).
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **barre d'ouverture de porte qui redescend** après relâchement.
- **Soupçonner** (HEURISTIC) : porte relâchée à > 80 % qui perd de la progression.
- **Confirmer** (HEURISTIC) : régression visible de la porte = certitude.
- **Adaptation robuste** (HEURISTIC) : **ne pas lâcher une porte au-delà de 80 %** sauf nécessité ; si danger, lâcher tôt ou pas du tout.
- **Counterplay** (HEURISTIC) : ouvrir les portes à deux (une personne ouvre, l'autre surveille) ; ne pas « 99 » une porte contre ce tueur.
- **Erreurs à ne pas faire** (HEURISTIC) : la technique « 99 % de porte » habituelle.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune lue

### Hex: Under Your Thumb — Judgment
- **Statut / catégorie** : LIVE (probable) · hex · anti-boosts de vitesse
- **Effet LIVE + valeurs** : seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : Hex allumé au 1ᵉʳ accrochage ; Haste des survivants qui courent plafonnée à 25/20/15 % ; alerte si un survivant gagne de la Haste à ≤ 32 m. Contexte confirmé : The Judgment, 44ᵉ killer, 10.1.0 (25/08/2026) [18]. Effet **NON VÉRIFIÉ**, pas de connaissance du modèle fiable.
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : **totem Hex allumé au 1ᵉʳ accrochage** ; (si seed exact) boosts de vitesse moins efficaces.
- **Soupçonner** (HEURISTIC) : Hex qui s'allume au 1ᵉʳ hook + tueur Judgment ou perk inconnue + sprint qui « rend moins » que prévu.
- **Confirmer** (HEURISTIC) : icône Hex sur le HUD si la perk applique un statut (non confirmé) ; purifier et voir la perk disparaître.
- **Adaptation robuste** (HEURISTIC) : purifier les totems allumés tôt ; ne pas construire sa fuite sur un boost de Haste (Sprint Burst) contre ce Hex (HYPOTHESIS).
- **Counterplay** (HEURISTIC) : cleanse ; SWF : un joueur dédié aux totems après le 1ᵉʳ hook.
- **Erreurs à ne pas faire** (HEURISTIC) : ignorer un totem allumé au 1ᵉʳ hook.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1 (faible confiance)
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : [18] (contexte uniquement)

### See How They Run — Générale (ex-Play With Your Food, The Shape)
- **Statut / catégorie** : LIVE · chase (Haste)
- **Effet LIVE + valeurs** : renommage Play With Your Food → See How They Run en **9.4.0 (27/01/2026)**, perk devenue générale — FACT, audit [18]. Effet seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : jeton à chaque chase perdue sur l'Obsession (max 3), 3/4/5 % Haste par jeton, chaque attaque en retire un. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN (PWYF) : cohérent (UNCERTAIN ; nature des attaques qui consomment un jeton non confirmée). Soumission aux Diminishing Returns (9.6.0) : non vérifiée.
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct ; l'**Obsession** est identifiable (icône d'Obsession) ; indirect : le tueur **lâche volontairement** l'Obsession en chase.
- **Soupçonner** (HEURISTIC) : tueur qui abandonne l'Obsession 1-3 fois sans raison + arrive ensuite très vite sur une autre cible.
- **Confirmer** (HEURISTIC) : écran de fin de partie.
- **Adaptation robuste** (HEURISTIC) : si vous êtes l'Obsession et que le tueur vous lâche, **prévenir/ne pas se croire tranquille** ; les autres : les chases suivantes seront plus courtes, jouer plus safe.
- **Counterplay** (HEURISTIC) : l'Obsession prévient l'équipe dès que le tueur la lâche (un jeton de Haste vient probablement d'être gagné, selon le seed) ; tout le monde : pousser le tueur à attaquer (bait de coup) pour consommer un jeton (HYPOTHESIS).
- **Erreurs à ne pas faire** (HEURISTIC) : s'emballer quand le tueur « abandonne » la chase de l'Obsession.
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : OK sur le renommage ; effet NON VÉRIFIABLE
- **Sources** : [18]

### Cull the Weak — Générale (ex-Dying Light, The Shape)
- **Statut / catégorie** : LIVE · slowdown (vitesse d'action survivants)
- **Effet LIVE + valeurs** : renommage Dying Light → Cull the Weak en **9.4.0** — FACT, audit [18]. Effet seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN : jeton par accrochage d'un non-Obsession ; tant que l'Obsession vit, autres survivants réparent/soignent/sabotent 2/2,5/3 % plus lentement par jeton (max 33 %) ; l'Obsession décroche et soigne 33 % plus vite. Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : cohérent avec l'ancienne Dying Light, mais interaction avec les **Diminishing Returns** (9.6.0 : malus de vitesse d'action) non vérifiée → UNCERTAIN.
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : aucune icône connue ; indirect : gens et soins qui ralentissent au fil des hooks ; tueur qui **évite l'Obsession**.
- **Soupçonner** (HEURISTIC) : tueur qui ne chasse jamais l'Obsession + accroche tout le monde sauf elle + gens de plus en plus lents.
- **Confirmer** (HEURISTIC) : écran de fin de partie ; mesure de vitesse de réparation (sans toolbox) nettement < normale.
- **Adaptation robuste** (HEURISTIC) : si le tueur ignore l'Obsession, **l'Obsession prend l'agro** volontairement (tant qu'elle vit la perk est active ; sa mort la désactive — donc la garder en vie mais utile : elle fait les sauvetages et les soins, avec bonus de 33 %).
- **Counterplay** (HEURISTIC) : l'Obsession est le sauveteur/soigneur désigné ; les autres rushent les gens tôt (avant accumulation de jetons).
- **Erreurs à ne pas faire** (HEURISTIC) : sacrifier l'Obsession pour « couper » la perk (perte d'un joueur > gain) ; laisser l'Obsession se cacher toute la partie.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : OK sur le renommage ; valeurs NON VÉRIFIABLE
- **Sources** : [18]

---

## Matériel pour la PERK DEDUCTION

1. J'ai observé **Oblivious** sur moi (blessé) au moment où un coéquipier sain vient d'être touché → **Hysteria** plausible → blessé : regarder derrière soi, ne pas se fier au TR ; soigner l'équipe.
2. J'ai observé **cri + Exposed** du sauveteur alors que le tueur était loin du crochet → **Make Your Choice** (quasi certain) → les sauvetages suivants se font avec le tueur < 32 m mais occupé, ou pendant le CD (40-60 s).
3. J'ai observé un **TR qui suit l'Obsession blessée** + tueur surgissant sans cœur → **Dark Devotion** plausible → l'Obsession s'isole ~45 s ; les autres ignorent le TR et scannent visuellement.
4. J'ai observé mon **objet tomber au sol** sur un coup de base (+ Oblivious en le ramassant) → **Franklin's Demise** (+ **Weave Attunement**) → ne pas retourner chercher les objets ; les utiliser avant chase.
5. J'ai observé **2-4 stuns/flashes** puis un **nouveau totem allumé**, et un **blind** après un stun → **Hex: Two Can Play** → purifier ; stopper les stuns jusqu'au cleanse.
6. J'ai observé le tueur **revenir en < 16 s** sur un gen kické que je venais de reprendre, sans info visible → **Surveillance** plausible (aucun indice HUD) → reprendre un gen kické puis bouger, ne pas y rester seul.
7. J'ai observé un **cœur fixe centré sur un gen kické** et aucun tueur en vue → **Unforeseen** plausible (non vérifié) → ~30 s de TR = non-information, regarder.
8. J'ai observé une **barre de porte qui redescend** après relâchement → **Haywire** (non vérifié) → ne plus lâcher une porte > 80 %.
9. J'ai observé les **fenêtres/palettes bloquées** à l'alimentation des portes → **None Are Free** plausible (non vérifié) → finir le dernier gen groupés près des portes, sain, sans chase.
10. J'ai observé des **chases perdues vite près des gens terminés** en milieu de partie → **Batteries Included** plausible → éloigner les chases à > 16 m des gens finis ; perk inactive dès que les portes sont alimentées.

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| K95-01 | Hysteria : Oblivious 30/35/40 s, CD 20 s (vs 20/25/30 s, CD 30 s) | [1][2][3] | LIVE ? | UNCERTAIN (conflit) |
| K95-02 | Surveillance : jaune 8/12/16 s, bruit de réparation +8 m | [4][5] | LIVE | STRONG_SECONDARY |
| K95-03 | Make Your Choice : > 32 m, Exposed 40/50/60 s, CD 40/50/60 s, cri | [6][7] | LIVE | STRONG_SECONDARY |
| K95-04 | Dark Devotion : 35/40/45 s, TR 40 m sur l'Obsession, Undetectable ; perte d'un état de santé | [8][9] | LIVE | STRONG_SECONDARY |
| K95-05 | Franklin's Demise : aura objets 32/48/64 m, lâcher sur coup de base | [10][11] | LIVE | STRONG_SECONDARY |
| K95-06 | Franklin's Demise : objet consommé après 150/120/90 s | [10] | ? | UNCERTAIN (possiblement HISTORICAL) |
| K95-07 | Fire Up : 4/5/6 % par jeton, max 5 jetons (20/25/30 %) | [12][13] | LIVE | STRONG_SECONDARY |
| K95-08 | Two Can Play : 4/3/2 stuns/blinds, blind 1,5 s | [14][15] | LIVE | STRONG_SECONDARY |
| K95-09 | Batteries Included : 16 m, +5 % Haste, 1/3/5 s, désactivée portes alimentées | [16][17] | LIVE | STRONG_SECONDARY |
| K95-10 | PWYF → See How They Run, Dying Light → Cull the Weak (9.4.0, 27/01/2026) | [18] | LIVE | VERIFIED (audit phase 0) |
| K95-11 | Valeurs des 14 perks Unforeseen → Cull the Weak | seed | LIVE ? | UNCERTAIN / NON VÉRIFIABLE |

## Conflits

#### CONFLICT-K95-01 : valeurs de Hysteria
- Source A : résumé WebSearch citant le wiki (fandom/wiki.gg) — Oblivious 20/25/30 s, CD 30 s (https://deadbydaylight.fandom.com/wiki/Hysteria)
- Source B : même résumé, « certaines sources » — 30/35/40 s, CD 20 s (probablement wiki.gg / nightlight)
- Hypothèse : A = version de sortie (2021), B = version buffée ultérieure (le seed reprend B).
- Résolution : UNRESOLVED (tendance B, à confirmer par lecture directe du wiki.gg)

#### CONFLICT-K95-02 : consommation de l'objet (Franklin's Demise)
- Source A : résumé WebSearch — objet consommé par l'Entité s'il n'est pas récupéré en 150/120/90 s
- Source B : même résumé et seed — effet actuel décrit sans cette clause (lâcher + aura 32/48/64 m)
- Hypothèse : clause issue d'une ancienne version (HISTORICAL) conservée dans l'historique de la page.
- Résolution : UNRESOLVED

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Hysteria | 30/35/40 s, CD 20 s | conflit 20/25/30 + CD 30 vs 30/35/40 + CD 20 | NON VÉRIFIABLE (tendance OK) |
| Surveillance | blanc/jaune 8/12/16 s, +8 m | idem | OK |
| Make Your Choice | > 32 m, cri, Exposed 40/50/60, CD 40/50/60 | idem | OK |
| Dark Devotion | « quand l'Obsession prend un coup » | « perd un état de santé » (tout moyen) | IMPRÉCIS |
| Franklin's Demise | lâcher + aura 32/48/64 m | idem (+ clause 150/120/90 s incertaine) | OK |
| Fire Up (LIVE) | 4/5/6 %, max 5 | idem | OK |
| Fire Up (PTB) | 6/7/8 % en 10.2.0 | non vérifié | NON VÉRIFIABLE |
| Two Can Play | 4/3/2, blind 1,5 s | idem (+ condition totem terne) | OK |
| Batteries Included | 5 %, 16 m, 1/3/5 s | idem + **désactivée portes alimentées** | IMPRÉCIS (omission) |
| Batteries Included en catégorie « Poursuite » | — | cohérent | OK |
| Unforeseen → Hex: Under Your Thumb (14 perks) | valeurs seed | non vérifiées (quota) | NON VÉRIFIABLE |
| Nothing but Misery PTB | « 4 coups + 10 % vault » | non vérifié | NON VÉRIFIABLE |
| Help Wanted PTB | « jusqu'à 3 gens compromis » | non vérifié | NON VÉRIFIABLE |
| See How They Run / Cull the Weak (renommages) | ex-PWYF / ex-Dying Light, générales | 9.4.0 confirmé par l'audit | OK |
| « [2,1 %] » / « [2,0 %] » (taux d'usage) | chiffres sans source | non vérifié | NON VÉRIFIABLE |

## Questions ouvertes

1. **Relancer la vérification web des 14 perks non couvertes** (quota WebSearch de session épuisé) : Unforeseen, Languid Touch, Weave Attunement, Human Greed, All-Shaking Thunder, Forever Entwined, Hex: Nothing but Misery, None Are Free, Help Wanted, Phantom Fear, Haywire, Hex: Under Your Thumb, See How They Run, Cull the Weak.
2. Hysteria : valeurs LIVE exactes (CONFLICT-K95-01) et patch du buff.
3. Franklin's Demise : la consommation de l'objet (150/120/90 s) est-elle encore LIVE ?
4. Cull the Weak / See How They Run / Hysteria : effet des **Diminishing Returns** (9.6.0) sur leurs modificateurs ? (le seed range Cull the Weak dans « vitesse d'action des survivants » sans le préciser).
5. PTB 10.2.0 : lesquelles de ces 22 perks figurent parmi les 58 modifiées ? (seed : Fire Up, Nothing but Misery, Help Wanted — non vérifié).
6. Help Wanted : existe-t-il un indicateur visuel du gen « compromis » côté survivant ?
7. Hex: Under Your Thumb : l'alerte au tueur (Haste à ≤ 32 m) révèle-t-elle quelque chose côté survivant ?

## Sources

[1] Hysteria — Official Dead by Daylight Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Hysteria — consulté le 27/09/2026 via WebSearch (résumé)
[2] Hysteria — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Hysteria — consulté le 27/09/2026 via WebSearch (résumé)
[3] Hysteria — NightLight — https://nightlight.gg/perks/Hysteria — consulté le 27/09/2026 via WebSearch (résumé)
[4] Surveillance — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Surveillance — consulté le 27/09/2026 via WebSearch
[5] Surveillance — Official Dead by Daylight Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Surveillance — consulté le 27/09/2026 via WebSearch
[6] Make Your Choice — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Make_Your_Choice — consulté le 27/09/2026 via WebSearch
[7] Make Your Choice — Official Dead by Daylight Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Make_Your_Choice — consulté le 27/09/2026 via WebSearch
[8] Dark Devotion — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Dark_Devotion — consulté le 27/09/2026 via WebSearch
[9] Dark Devotion — Official Dead by Daylight Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Dark_Devotion — consulté le 27/09/2026 via WebSearch
[10] Franklin's Demise — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Franklin%27s_Demise — consulté le 27/09/2026 via WebSearch
[11] Franklin's Demise — Official Dead by Daylight Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Franklin's_Demise — consulté le 27/09/2026 via WebSearch
[12] Fire Up — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Fire_Up — consulté le 27/09/2026 via WebSearch
[13] Fire Up — Official Dead by Daylight Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Fire_Up — consulté le 27/09/2026 via WebSearch
[14] Hex: Two Can Play — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Hex:_Two_Can_Play — consulté le 27/09/2026 via WebSearch
[15] Hex: Two Can Play — Official Dead by Daylight Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Hex:_Two_Can_Play — consulté le 27/09/2026 via WebSearch
[16] Batteries Included — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Batteries_Included — consulté le 27/09/2026 via WebSearch
[17] Batteries Included — Official Dead by Daylight Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Batteries_Included — consulté le 27/09/2026 via WebSearch
[18] Audit phase 0 (local) — /home/user/dbd_guide/kb/seed/audit_phase0.txt (renommages 9.4.0, The Animatronic 9.0.0, The Judgment 10.1.0) — lu le 27/09/2026
