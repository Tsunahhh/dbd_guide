# Lot 3 — Perks tueur vues du survivant, page 95 du guide seed (ch9_killperks.txt l. 547-645)

Référence : LIVE 10.1.2a (17/09/2026) · PTB 10.2.0 non LIVE · rédigé le 27/09/2026, re-vérifié le 27/09/2026 (LOT 12a).
Périmètre (22 perks) : Hysteria, Surveillance, Make Your Choice, Dark Devotion, Franklin's Demise, Fire Up, Hex: Two Can Play, Batteries Included, Unforeseen, Languid Touch, Weave Attunement, Human Greed, All-Shaking Thunder, Forever Entwined, Hex: Nothing but Misery, None Are Free, Help Wanted, Phantom Fear, Haywire, Hex: Under Your Thumb, See How They Run, Cull the Weak.
Méthode (LOT 12a) : pages wiki.gg complètes via API (`kb/sources/wiki_perks_digest.md`, brut `wiki_perks.json`) + notes officielles BHVR locales (`kb/sources/patches/official_*.txt`). Première passe (WebSearch, 8 perks) conservée comme sources [1]-[17].

**Couverture : 22/22 perks re-vérifiées sur page wiki complète (27/09/2026) ; dont 10 confirmées par note officielle** (9 VERIFIED_MULTI_SOURCE : Dark Devotion, Franklin's Demise, Fire Up, Batteries Included, All-Shaking Thunder, Help Wanted, Phantom Fear, Haywire, Hex: Under Your Thumb ; 1 VERIFIED_PRIMARY : Hex: Nothing but Misery) ; + 2 renommages (See How They Run, Cull the Weak) confirmés par la note 9.4.0.

> Toutes les parties analytiques (indices, soupçonner/confirmer, adaptation, counterplay, erreurs, menace) sont **HEURISTIC / EXPERT OPINION** (non sourcées).

> **Piège du digest wiki** : pour **Hex: Nothing but Misery**, le texte marqué « LIVE (current) » (4 coups, vault −10 %) est en réalité le **texte PTB 10.2.0** (note 559 : « (was 8 times) », vault « (NEW) »). LIVE reconstruite depuis la note 559.
> PTB 10.2.0 : parmi ces 22 perks, seules **Fire Up, Hex: Nothing but Misery et Help Wanted** sont modifiées (note 559 + change log wiki) ; les autres sont « non modifiées au PTB 10.2.0 d'après le wiki et la note officielle 559 ».

---

## Fiches

### Hysteria — Nemesis
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (Oblivious) · soutien chase
- **Effet LIVE + valeurs** : quand le tueur blesse un survivant **en bonne santé**, tous les survivants blessés (y compris celui qui vient d'être touché) deviennent Oblivious **30/35/40 s** ; cooldown **20 s** — STRONG_SECONDARY [2][19] (buff 8.6.0 : CD 30 → 20 s, Oblivious 20/25/30 → 30/35/40 s, change log wiki)
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : icône de statut **Oblivious** sur le HUD juste après qu'un coéquipier (ou vous) passe blessé, alors que vous étiez déjà blessé ; perte du battement de cœur/musique de chase alors que le tueur est proche.
- **Soupçonner** (HEURISTIC) : Oblivious apparaît sans add-on/pouvoir connu (hors Myers, Ghost Face, Sadako, etc.) + au moment exact d'un premier coup sur un sain → Hysteria plausible.
- **Confirmer** (HEURISTIC) : répétition du motif (Oblivious sur tous les blessés à chaque « premier coup », au plus une fois toutes les 20 s) ; écran de fin de partie.
- **Adaptation robuste** (HEURISTIC) : blessé + Oblivious → se déplacer en regardant souvent derrière soi, éviter les zones mortes ; se soigner ou rester groupé avec un survivant sain.
- **Counterplay** (HEURISTIC) : garder la santé de l'équipe haute (moins de blessés = moins de cibles) ; appels vocaux en SWF (le TR ne compte plus quand Oblivious).
- **Erreurs à ne pas faire** (HEURISTIC) : croire que « pas de cœur = tueur loin » quand on est blessé ; rester sur un gen blessé sans visuel.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 · SWF 0-1
- **Écart avec le seed** : OK (30/35/40 s, CD 20 s = LIVE depuis 8.6.0)
- **Sources** : [1] [2] [3] [19]

### Surveillance — Pig
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (générateurs) · slowdown indirect
- **Effet LIVE + valeurs** : auras des générateurs endommagés : **blanc** tant qu'ils régressent ; **jaune pendant 8/12/16 s** quand la régression est interrompue par un survivant ; bruits de réparation audibles **+8 m** plus loin — STRONG_SECONDARY [4][19]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : **aucun indice direct** (aucune icône de statut, rien sur le HUD).
- **Soupçonner** (HEURISTIC) : le tueur revient **systématiquement** sur un gen juste après que vous l'ayez repris après un kick, depuis loin, sans aura/bruit apparent ; tueur à Pop/Eruption/Call of Brine qui kicke beaucoup.
- **Confirmer** (HEURISTIC) : écran de fin de partie ; ou test volontaire (toucher un gen kické puis partir, observer s'il revient en < 16 s).
- **Adaptation robuste** (HEURISTIC) : après avoir « tapé » un gen régressant, ne pas y rester seul si le tueur est proche ; préférer compléter d'autres gens non kickés ; l'arrêt de la régression révèle potentiellement votre position.
- **Counterplay** (HEURISTIC) : utiliser la reprise d'un gen kické comme leurre (toucher puis partir) pour faire perdre du temps ; en SWF, un seul survivant reprend le gen, les autres ailleurs.
- **Erreurs à ne pas faire** (HEURISTIC) : reprendre un gen kické à 8-16 s de marche du tueur sans plan de fuite ; oublier le +8 m sur le bruit de réparation (se cacher derrière le gen ne suffit pas).
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK
- **Sources** : [4] [5] [19]

### Make Your Choice — Pig
- **Statut / catégorie** : LIVE 10.1.2a · anti-sauvetage · Exposed
- **Effet LIVE + valeurs** : si un survivant est décroché pendant que le tueur est à **plus de 32 m** : le **sauveteur** crie et sa position est révélée, et il est **Exposed 40/50/60 s** ; cooldown **40/50/60 s** — STRONG_SECONDARY [6][19]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : **cri** du sauveteur + icône **Exposed** sur son portrait (et sur votre HUD si c'est vous).
- **Soupçonner** (HEURISTIC) : tueur qui quitte ostensiblement le crochet (> 32 m) au lieu de patrouiller.
- **Confirmer** (HEURISTIC) : cri + Exposed au décrochage = certitude (peu d'autres sources de cri+Exposed à l'unhook).
- **Adaptation robuste** (HEURISTIC) : décrocher quand le tueur est **proche (≤ 32 m) mais engagé en chase** avec quelqu'un d'autre ; le sauveteur Exposed se cache/fuit, c'est le décroché (protections d'unhook) qui doit prendre l'agro.
- **Counterplay** (HEURISTIC) : « trade » sûr impossible une fois Exposed → le sauveteur évite toute tile faible 40-60 s ; profiter du CD (40-60 s) pour un 2ᵉ sauvetage.
- **Erreurs à ne pas faire** (HEURISTIC) : sauver alors que le tueur est clairement loin et revient ; body-block pour le décroché en étant Exposed.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : OK
- **Sources** : [6] [7] [19]

### Dark Devotion — Plague
- **Statut / catégorie** : LIVE 10.1.2a · stealth (Undetectable + TR réel transféré)
- **Effet LIVE + valeurs** : quand l'Obsession **devient blessée** (par n'importe quel moyen), pendant **35/40/45 s** : le TR du tueur est **transféré à l'Obsession** et fixé à **40 m** ; le tueur est **Undetectable** — VERIFIED_MULTI_SOURCE (wiki [19] ; note 9.0.0 « 35/40/45 seconds (was 20/25/30) », « 40 meters (was 32) » [20]). Ce TR transféré déclenche les effets liés au TR (première passe [8], STRONG_SECONDARY)
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : l'**Obsession blessée** entend un TR/battement de cœur qui la suit même quand le tueur part ; les autres entendent un TR centré sur l'Obsession ; icône Undetectable non visible par les survivants (statut du tueur).
- **Soupçonner** (HEURISTIC) : juste après que l'Obsession passe blessée, le TR « reste » avec l'Obsession qui s'éloigne + le tueur apparaît sans cœur ailleurs → Dark Devotion plausible.
- **Confirmer** (HEURISTIC) : l'Obsession dit (SWF) « j'ai un TR sur moi en étant seule » ; le cœur se déplace avec l'Obsession.
- **Adaptation robuste** (HEURISTIC) : si vous êtes l'Obsession blessée, **ne pas rejoindre** les autres ni un gen occupé pendant ~45 s (vous leur amenez un TR et les poussez à fuir, ou vous masquez le vrai tueur). Les autres : pendant ~45 s, ne pas se fier au TR, regarder autour.
- **Counterplay** (HEURISTIC) : communication SWF ; l'Obsession blessée va se soigner loin/seule ou sert de leurre.
- **Erreurs à ne pas faire** (HEURISTIC) : lâcher un gen parce que le TR arrive (c'est l'Obsession) ; croire que le tueur est dans le TR.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : IMPRÉCIS (seed « prend un coup » ; LIVE : « devient blessée, par n'importe quel moyen ») ; valeurs OK
- **Sources** : [8] [9] [19] [20]

### Franklin's Demise — Cannibal
- **Statut / catégorie** : LIVE 10.1.2a · anti-objets · info/aura
- **Effet LIVE + valeurs** : les survivants touchés par une **attaque de base** lâchent leur objet ; auras des objets perdus visibles dans **32/48/64 m** — VERIFIED_MULTI_SOURCE (wiki [19] ; note 9.1.0 « 32/48/64 meters (was 32/32/32). No longer causes dropped items to lose charges over time. » [21])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : votre **objet tombe** au sol à chaque coup de base (très lisible).
- **Soupçonner** (HEURISTIC) : non nécessaire — l'objet qui tombe au premier coup est quasi une confirmation.
- **Confirmer** (HEURISTIC) : objet tombé après un coup de base = certitude.
- **Adaptation robuste** (HEURISTIC) : ne pas revenir chercher son objet quand le tueur est proche (il voit l'aura de l'objet → piège) ; laisser un coéquipier éloigné le ramasser plus tard. Depuis 9.1.0 l'objet au sol **ne perd plus de charges** → pas d'urgence à le récupérer.
- **Counterplay** (HEURISTIC) : utiliser l'objet (medkit/toolbox) avant d'entrer en chase ; objets de faible valeur ; en SWF, signaler qui a perdu quoi.
- **Erreurs à ne pas faire** (HEURISTIC) : camper son objet au sol ; se précipiter pour le ramasser.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1-2 (SWF dépend plus des objets)
- **Écart avec le seed** : OK
- **Sources** : [10] [11] [19] [21]

### Fire Up — Nightmare
- **Statut / catégorie** : LIVE 10.1.2a · chase / endgame (scaling)
- **Effet LIVE + valeurs** : +1 jeton par générateur terminé (**max 5**) ; chaque jeton : **+4/5/6 %** de vitesse d'action (max **20/25/30 %**) pour ramasser/déposer un survivant, casser murs cassables et palettes au sol, endommager les générateurs, vaulter les fenêtres — VERIFIED_MULTI_SOURCE (wiki, onglet 8.5.0 [19] ; note 559 « (was 4/5/6%) » [18])
- **PTB 10.2.0 (NON LIVE)** : **+6/7/8 % par jeton** (max 30/35/40 %) sur les mêmes actions [18][19]
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct (pas d'icône) ; indirect : casse de palette / vault de fenêtre du tueur visiblement plus rapides en fin de partie.
- **Soupçonner** (HEURISTIC) : fin de partie (≥ 3-4 gens faits) + tueur qui casse les palettes plus vite et vaulte des fenêtres en chase → plausible.
- **Confirmer** (HEURISTIC) : écran de fin de partie seulement (ou mesure : casse de palette nettement < 2,34 s en endgame).
- **Adaptation robuste** (HEURISTIC) : en fin de partie, ne pas compter sur les fenêtres « tueur-lentes » ; privilégier les boucles longues et le pré-drop précoce plutôt que de forcer une casse.
- **Counterplay** (HEURISTIC) : faire les derniers gens groupés et rapidement ; ne pas prolonger une chase en fin de partie sur fenêtre.
- **Erreurs à ne pas faire** (HEURISTIC) : croire que le tueur est toujours aussi lent aux vaults qu'en début de partie.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK sur le LIVE (4/5/6 %, max 5) ; PTB « 6/7/8 % » (p98) = 559 : OK (PTB)
- **Sources** : [12] [13] [18] [19]

### Hex: Two Can Play — Good Guy
- **Statut / catégorie** : LIVE 10.1.2a · hex · anti-stun/blind
- **Effet LIVE + valeurs** : après avoir été **étourdi ou aveuglé 4/3/2 fois** par des survivants, s'il reste au moins un **totem terne** et qu'aucun totem n'est déjà lié à la perk, un Hex s'allume : tout survivant qui étourdit ou aveugle le tueur est **aveuglé 1,5 s** (n'affecte pas un survivant porté). Jusqu'à purification/bénédiction du totem — STRONG_SECONDARY [14][19] ; les stuns de Last Stand comptent (correctif 9.1.1 [22])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : **Hex allumé** en cours de partie ; après votre stun/blind, **votre écran devient blanc** 1,5 s.
- **Soupçonner** (HEURISTIC) : après 2-4 stuns/flashes sur le tueur, un **nouveau totem allumé** apparaît (bruit de feu / flammes près d'un totem).
- **Confirmer** (HEURISTIC) : être aveuglé après un stun de palette ou un flash = certitude.
- **Adaptation robuste** (HEURISTIC) : compter les stuns/flashes de l'équipe ; au-delà de 2, chercher un totem allumé avant de reprendre des stuns agressifs.
- **Counterplay** (HEURISTIC) : **purifier le totem** ; si tous les totems ternes ont été purifiés **avant** le seuil, le Hex ne peut pas s'allumer ; ne pas faire de stun de palette qui mène à un cul-de-sac (le blind 1,5 s fait perdre la direction).
- **Erreurs à ne pas faire** (HEURISTIC) : spammer flashlight/firecracker après activation ; drop de palette « stun » puis course à l'aveugle vers un mur.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1-2 (surtout contre SWF flashlights)
- **Écart avec le seed** : OK (le seed omet la condition « totem terne disponible »)
- **Sources** : [14] [15] [19] [22]

### Batteries Included — Good Guy
- **Statut / catégorie** : LIVE 10.1.2a · chase (Haste)
- **Effet LIVE + valeurs** : à moins de **16 m** d'un générateur **terminé** : **+5 % Haste**, persistant **1/3/5 s** après sortie de la zone — VERIFIED_MULTI_SOURCE (wiki [19] ; note 9.0.0 « Reduced Haste bonus to 5% (was 7%). Increased area … to 16 meters (was 12) » [20]). La « désactivation une fois les portes alimentées » de la première passe [16] **n'apparaît ni sur la page complète ni dans la note 9.0.0** → UNCERTAIN, non retenue (CONFLICT-K95-03)
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct ; indirect : le tueur rattrape anormalement vite **autour d'un gen déjà fait**.
- **Soupçonner** (HEURISTIC) : chases perdues rapidement près des gens terminés + tueur qui « guide » la chase vers ces zones.
- **Confirmer** (HEURISTIC) : écran de fin de partie.
- **Adaptation robuste** (HEURISTIC) : **éloigner la chase des gens terminés** (> 16 m) ; ne pas boucler une tile adjacente à un gen fini ; en endgame, **supposer la perk toujours active** (5 gens finis = beaucoup de zones à Haste) tant que la désactivation n'est pas confirmée.
- **Counterplay** (HEURISTIC) : choisir l'ordre des gens pour ne pas « terminer » des gens au centre des meilleures tiles.
- **Erreurs à ne pas faire** (HEURISTIC) : faire des chases longues près des gens finis ; compter sur une désactivation en endgame non confirmée.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK (5 %, 16 m, 1/3/5 s). Le verdict IMPRÉCIS de la première passe (omission de la désactivation) est **retiré** : la désactivation n'est pas confirmée
- **Sources** : [16] [17] [19] [20]

### Unforeseen — Unknown
- **Statut / catégorie** : LIVE 10.1.2a · stealth
- **Effet LIVE + valeurs** : après l'action « endommager un générateur », pendant **22/26/30 s** : le TR du tueur est transféré au générateur endommagé et fixé à **32 m** ; le tueur est **Undetectable** ; cooldown **30 s** — STRONG_SECONDARY [19]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : TR/battement de cœur qui **émane d'un générateur** immobile juste après un kick.
- **Soupçonner** (HEURISTIC) : cœur qui ne bouge pas et reste centré sur un gen kické + tueur qui surgit sans cœur ailleurs.
- **Confirmer** (HEURISTIC) : cœur constant sans tueur visible en approchant du gen.
- **Adaptation robuste** (HEURISTIC) : après un kick, considérer le TR du gen comme **non-information** pendant ~30 s ; surveiller visuellement ; le cooldown de 30 s empêche un 2e transfert immédiat.
- **Counterplay** (HEURISTIC) : repérer quel gen a été kické (étincelles/régression) ; ne pas fuir « à l'opposé du cœur » sans visuel.
- **Erreurs à ne pas faire** (HEURISTIC) : abandonner le gen kické à cause du cœur (le tueur peut être ailleurs) ; ou au contraire s'y sentir en sécurité.
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : OK (32 m, 22/26/30 s ; omet le CD 30 s, mineur)
- **Sources** : [19]

### Languid Touch — Lich
- **Statut / catégorie** : LIVE 10.1.2a · anti-exhaustion
- **Effet LIVE + valeurs** : survivant qui fait s'envoler un corbeau à ≤ **36 m** du tueur → Exhausted **6/8/10 s** ; cooldown **5 s** (réduit de 20 s en 8.4.0) — STRONG_SECONDARY [19]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : icône **Exhausted** apparaissant **sans avoir utilisé de perk de sprint** juste après l'envol d'un corbeau.
- **Soupçonner** (HEURISTIC) : Exhausted « gratuit » + corbeaux envolés près du tueur.
- **Confirmer** (HEURISTIC) : Exhausted reproduit à chaque corbeau dérangé près du tueur.
- **Adaptation robuste** (HEURISTIC) : **marcher** (pas courir) près des corbeaux ; contourner les zones à corbeaux quand le tueur est à < ~36 m.
- **Counterplay** (HEURISTIC) : garder une perk d'exhaustion prête en évitant les corbeaux ; perks non-exhaustion.
- **Erreurs à ne pas faire** (HEURISTIC) : sprinter dans des corbeaux en début de chase avec Sprint Burst/Lithe prévu.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK (36 m, 6/8/10 s ; omet le CD 5 s, mineur)
- **Sources** : [19]

### Weave Attunement — Lich
- **Statut / catégorie** : LIVE 10.1.2a · anti-objets · info/aura
- **Effet LIVE + valeurs** : un objet vidé pour la première fois tombe automatiquement ; le tueur voit les auras des objets au sol et des survivants à ≤ **12 m** d'eux ; **les survivants concernés voient aussi l'aura de l'objet** ; ramasser un objet de survivant → Oblivious **20/25/30 s** — STRONG_SECONDARY [19] (12 m rétabli en 8.4.1) ; l'Oblivious s'applique à chaque survivant, pas seulement au premier (correctif 9.4.1 [23])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : objet **vide qui tombe tout seul** ; **aura d'un objet au sol visible quand on passe à ≤ 12 m** (= on est révélé) ; **Oblivious** juste après avoir ramassé un objet.
- **Soupçonner** (HEURISTIC) : objet vide lâché automatiquement (quasi signature).
- **Confirmer** (HEURISTIC) : Oblivious au ramassage = certitude ; aura d'objet au sol apparaissant en s'approchant.
- **Adaptation robuste** (HEURISTIC) : ne pas ramasser d'objet au sol quand le tueur est proche ; **si tu vois l'aura d'un objet au sol, considère que le tueur te voit** → t'éloigner à > 12 m.
- **Counterplay** (HEURISTIC) : combo classique avec Franklin's Demise → les objets au sol deviennent des pièges à aura ; les ignorer ou les contourner.
- **Erreurs à ne pas faire** (HEURISTIC) : aller ramasser l'objet d'un coéquipier en plein milieu de la map sans info.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1-2
- **Écart avec le seed** : OK (omet que les survivants voient l'aura de l'objet, mineur)
- **Sources** : [19] [23]

### Human Greed — Dark Lord
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (coffres)
- **Effet LIVE + valeurs** : le tueur peut **refermer d'un coup de pied** les coffres ouverts (cooldown **10 s** sur cette capacité) ; auras des coffres non ouverts visibles en permanence ; survivants à ≤ **8 m** d'un coffre non ouvert ou refermé révélés **3/4/5 s** — STRONG_SECONDARY [19] (valeurs 8.4.1). Refermer un coffre ne régénère pas d'objet (wiki, trivia)
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : **coffres ouverts qui se referment** (vus fermés alors qu'ils ont été fouillés) ; aucun indicateur d'aura révélée.
- **Soupçonner** (HEURISTIC) : tueur qui arrive droit sur vous après un passage près d'un coffre + coffres refermés.
- **Confirmer** (HEURISTIC) : coffre refermé = forte présomption (peu d'autres mécaniques le font).
- **Adaptation robuste** (HEURISTIC) : ne pas se cacher ni traverser près des coffres (≥ 8 m) ; éviter les fouilles de coffre en cours de partie ; un coffre refermé est **vide**.
- **Counterplay** (HEURISTIC) : ne pas dépendre des coffres ; information à partager en SWF.
- **Erreurs à ne pas faire** (HEURISTIC) : fouiller un coffre à côté d'un gen que le tueur surveille ; rouvrir un coffre refermé en espérant un objet.
- **Menace (HEURISTIC)** : SoloQ 0-1 · SWF 0-1
- **Écart avec le seed** : OK
- **Sources** : [19]

### All-Shaking Thunder — Houndmaster
- **Statut / catégorie** : LIVE 10.1.2a · chase
- **Effet LIVE + valeurs** : après une **chute d'une hauteur**, pendant **15/20/25 s** : portée de la fente (lunge) **+75 %** ; cooldown **5 s** — VERIFIED_MULTI_SOURCE (wiki [19] ; note 9.2.0 « 15/20/25 seconds (was 8/12/16) » [24])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct ; indirect : le tueur **saute** volontairement d'un étage puis touche de très loin avec une fente.
- **Soupçonner** (HEURISTIC) : tueur qui prend systématiquement les drops (Main Building, étages) + coups à portée anormale.
- **Confirmer** (HEURISTIC) : écran de fin de partie.
- **Adaptation robuste** (HEURISTIC) : après un drop du tueur, garder une distance **> portée de fente normale** pendant 15-25 s ; ne pas faire le drop si le tueur peut suivre.
- **Counterplay** (HEURISTIC) : utiliser les escaliers/boucles plates plutôt que les drops contre ce tueur.
- **Erreurs à ne pas faire** (HEURISTIC) : « mind-game » sur un bord de drop avec le tueur juste derrière.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK
- **Sources** : [19] [24]

### Forever Entwined — Ghoul
- **Statut / catégorie** : LIVE 10.1.2a · transport/crochet
- **Effet LIVE + valeurs** : +1 jeton chaque fois qu'un survivant subit des dégâts (max **6/7/8**) ; **+4 % par jeton** aux vitesses de dépôt, d'accrochage et de ramassage (max **24/28/32 %**) — STRONG_SECONDARY [19]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct ; indirect : ramassage et accrochage visiblement rapides en milieu/fin de partie.
- **Soupçonner** (HEURISTIC) : sabotages / body-blocks / flashlight saves qui échouent de peu à répétition.
- **Confirmer** (HEURISTIC) : écran de fin de partie.
- **Adaptation robuste** (HEURISTIC) : pour les sauvetages au ramassage (flash, palette), **se positionner plus tôt** ; accepter de moins tenter les saves serrés (jusqu'à −32 % de temps de ramassage).
- **Counterplay** (HEURISTIC) : sabotage anticipé ; éviter de se faire mettre au sol tôt (chaque dégât ajoute un jeton).
- **Erreurs à ne pas faire** (HEURISTIC) : tenter un flash-save au timing standard.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK
- **Sources** : [19]

### Hex: Nothing but Misery — Ghoul
- **Statut / catégorie** : LIVE 10.1.2a · hex · chase
- **Effet LIVE + valeurs** : après **8** coups de base au total, un totem terne devient Hex ; ensuite chaque survivant touché par une attaque de base est **Hindered 5 %** pendant **10/12,5/15 s** ; jusqu'à purification/bénédiction — VERIFIED_PRIMARY (note 559 : « (was 8 times) », Hindered 5 % 10/12,5/15 s inchangé, ralentissement de vault « (NEW) » [18])
- **Attention** : le texte « LIVE (current) » du digest (4 coups, vault −10 %) est **le texte PTB** (cf. 559)
- **PTB 10.2.0 (NON LIVE)** : s'allume après **4** coups de base ; chaque coup : Hindered 5 % **et vault 10 % plus lent** pendant 10/12,5/15 s [18]
- **Indice observable (survivant)** (HEURISTIC) : **totem Hex allumé en cours de partie** (après ~8 coups de l'équipe) ; icône **Hindered** après un coup.
- **Soupçonner** (HEURISTIC) : Hex apparaissant tard (après plusieurs coups) + Hindered au coup.
- **Confirmer** (HEURISTIC) : Hindered après un coup de base quand un Hex vient de s'allumer.
- **Adaptation robuste** (HEURISTIC) : blessé Hindered → ne pas tenter de boucle longue, aller vers la ressource la plus proche.
- **Counterplay** (HEURISTIC) : **purifier le totem** dès l'allumage ; compter les coups de l'équipe (8 en LIVE).
- **Erreurs à ne pas faire** (HEURISTIC) : ignorer un totem allumé en milieu de partie.
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : OK (8 coups, 5 %, 10/12,5/15 s ; « passera à 4 coups en 10.2.0 » = 559 : OK, bien étiqueté futur) ; PTB p98 « 4 coups + 10 % de vault » = 559 : OK (PTB)
- **Sources** : [18] [19]

### None Are Free — Ghoul
- **Statut / catégorie** : LIVE 10.1.2a · endgame
- **Effet LIVE + valeurs** : +1 jeton au **premier** accrochage de chaque survivant (max **4**) ; une fois **tous les gens terminés**, l'Entité bloque **toutes les fenêtres et palettes debout** pendant **12/14/16 s par jeton** (max **48/56/64 s**) — STRONG_SECONDARY [19] ; la mention « bloqué pour tout le monde » a été retirée de la description en 8.6.2 (portée exacte du blocage pour le tueur : UNCERTAIN)
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : **fenêtres/palettes bloquées (effet Entité)** au moment où le dernier gen est terminé.
- **Soupçonner** (HEURISTIC) : blocage généralisé de tiles à la fin du dernier gen (à distinguer de No Way Out, qui bloque les portes, et de Blood Warden).
- **Confirmer** (HEURISTIC) : blocage visuel des fenêtres/palettes partout sans chase = quasi certitude.
- **Adaptation robuste** (HEURISTIC) : **ne pas finir le dernier gen en étant blessé/en chase** si 3-4 survivants ont été accrochés ; se placer près d'une porte avant de finir le dernier gen.
- **Counterplay** (HEURISTIC) : 99 % du dernier gen puis compléter groupés près des portes ; en endgame, ne pas compter sur les palettes/fenêtres jusqu'à **48-64 s** (4 jetons).
- **Erreurs à ne pas faire** (HEURISTIC) : finir le dernier gen en chase en comptant sur une palette.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : OK (omet le plafond 48/56/64 s, mineur)
- **Sources** : [19]

### Help Wanted — Animatronic
- **Statut / catégorie** : LIVE 10.1.2a · chase / slowdown indirect
- **Effet LIVE + valeurs** : endommager un gen le rend **Compromis** (**1 seul** à la fois) ; quand ce gen est **terminé par les survivants**, récupération après coup réussi **+25 %** pendant **40/50/60 s** — VERIFIED_MULTI_SOURCE (wiki, onglet 9.0.0 [19] ; note 9.0.0 [20] ; note 559 « (was 40/50/60s) », « (was 1 Generator) » [18])
- **PTB 10.2.0 (NON LIVE)** : jusqu'à **3** gens compromis (aura jaune pour le tueur) ; à la complétion d'un gen compromis, pendant **100/110/120 s** : récupération +25 % **et** les gens non réparés régressent automatiquement à **150 %** ; les autres gens perdent l'état compromis [18][19]
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct connu (marquage visuel « compromis » côté survivant non décrit par le wiki).
- **Soupçonner** (HEURISTIC) : après avoir terminé un gen précédemment kické, le tueur ré-enchaîne ses coups plus vite (cooldown après coup court).
- **Confirmer** (HEURISTIC) : écran de fin de partie.
- **Adaptation robuste** (HEURISTIC) : après avoir terminé un gen kické, éviter les chases à proximité immédiate pendant ~60 s ; attention aux zones où deux survivants blessés se trouvent.
- **Counterplay** (HEURISTIC) : terminer en priorité des gens non kickés si possible (HYPOTHESIS).
- **Erreurs à ne pas faire** (HEURISTIC) : compter sur la distance gagnée après un coup (moins de temps de récupération).
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK (LIVE) ; PTB « jusqu'à 3 générateurs compromis » = 559 : OK (PTB)
- **Sources** : [18] [19] [20]

### Phantom Fear — Animatronic
- **Statut / catégorie** : LIVE 10.1.2a · info/aura
- **Effet LIVE + valeurs** : un survivant dans le TR qui **regarde le tueur** crie et son aura est révélée **2 s** ; cooldown **80/70/60 s** — VERIFIED_MULTI_SOURCE (wiki [19] ; note 9.0.0 [20]) ; ne se déclenche plus si le tueur n'est pas réellement à l'écran (correctif 9.6.2 [25])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : **cri involontaire** en regardant le tueur depuis le TR.
- **Soupçonner** (HEURISTIC) : cri sans avoir été frappé ni sans perk de cri connue.
- **Confirmer** (HEURISTIC) : cri au moment où le tueur entre dans votre champ de vision = certitude.
- **Adaptation robuste** (HEURISTIC) : ne pas « tracker » le tueur visuellement depuis une cachette dans le TR ; se fier au son et regarder ailleurs.
- **Counterplay** (HEURISTIC) : le CD est long (60-80 s) → après un cri, fenêtre pour regarder le tueur librement.
- **Erreurs à ne pas faire** (HEURISTIC) : jouer du « stealth » en fixant le tueur derrière un mur/haie.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK
- **Sources** : [19] [20] [25]

### Haywire — Animatronic
- **Statut / catégorie** : LIVE 10.1.2a · endgame
- **Effet LIVE + valeurs** : un interrupteur de porte **lâché après ≥ 80 %** de progression régresse à **80/90/100 %** de la vitesse d'ouverture ; pendant la régression, **les lumières de l'interrupteur clignotent aléatoirement** (visible par les survivants) — VERIFIED_MULTI_SOURCE (wiki [19] ; note 9.0.0 [20]) ; fonctionne aussi à 99 % (correctif 9.3.0 [26])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : **lumières de la porte qui clignotent au hasard** + **barre d'ouverture qui redescend** après relâchement.
- **Soupçonner** (HEURISTIC) : porte relâchée à > 80 % qui perd de la progression.
- **Confirmer** (HEURISTIC) : régression visible de la porte / clignotement = certitude.
- **Adaptation robuste** (HEURISTIC) : **ne pas lâcher une porte au-delà de 80 %** sauf nécessité ; si danger, lâcher tôt ou pas du tout.
- **Counterplay** (HEURISTIC) : ouvrir les portes à deux (une personne ouvre, l'autre surveille) ; ne pas « 99 » une porte contre ce tueur.
- **Erreurs à ne pas faire** (HEURISTIC) : la technique « 99 % de porte » habituelle.
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK (omet l'indice lumineux, mineur)
- **Sources** : [19] [20] [26]

### Hex: Under Your Thumb — Judgment
- **Statut / catégorie** : LIVE 10.1.2a · hex · anti-boosts de vitesse
- **Effet LIVE + valeurs** : la **première fois** qu'un survivant gagne un état de crochet, un totem terne devient Hex ; les survivants **qui courent** ne peuvent pas gagner plus de **25/20/15 %** de Haste à la fois ; quand un survivant qui court gagne de la Haste à ≤ **32 m**, le tueur est alerté (position révélée **4 s** selon le wiki) ; jusqu'à purification/bénédiction — VERIFIED_MULTI_SOURCE (wiki [19] ; note 10.1.0 [27]) ; durée 4 s de l'alerte : STRONG_SECONDARY (absente de la note)
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : **totem Hex allumé au 1ᵉʳ accrochage** ; boosts de Haste (Sprint Burst 50 %, etc.) plafonnés à 15-25 % en course.
- **Soupçonner** (HEURISTIC) : Hex qui s'allume au 1ᵉʳ hook + sprint qui « rend moins » que prévu.
- **Confirmer** (HEURISTIC) : purifier le totem et voir la vitesse de sprint redevenir normale.
- **Adaptation robuste** (HEURISTIC) : purifier les totems allumés tôt ; ne pas construire sa fuite sur un boost de Haste contre ce Hex ; activer un boost **hors des 32 m** du tueur évite l'alerte.
- **Counterplay** (HEURISTIC) : cleanse ; SWF : un joueur dédié aux totems après le 1ᵉʳ hook.
- **Erreurs à ne pas faire** (HEURISTIC) : ignorer un totem allumé au 1ᵉʳ hook ; déclencher Sprint Burst près du tueur (plafonné + position révélée).
- **Menace (HEURISTIC)** : SoloQ 1 · SWF 1
- **Écart avec le seed** : OK
- **Sources** : [19] [27]

### See How They Run — Générale (ex-Play With Your Food, The Shape)
- **Statut / catégorie** : LIVE 10.1.2a · chase (Haste)
- **Effet LIVE + valeurs** : renommage Play With Your Food → See How They Run en **9.4.0**, perk devenue générale (pour les joueurs ne possédant pas le chapitre HALLOWEEN®, qui gardent PWYF unique) — VERIFIED_MULTI_SOURCE (note 9.4.0 [28] ; wiki [19] ; audit [18a]). Effet : +1 jeton à chaque fois que le tueur **perd l'Obsession en chase** (max **3**, cooldown **10 s** entre deux gains) ; −1 jeton à chaque **attaque de base ou spéciale** pouvant blesser ; **3/4/5 % Haste par jeton** (max **9/12/15 %**) — STRONG_SECONDARY [19]. Diminishing Returns 9.6.0 : non documenté pour cette perk
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct ; l'**Obsession** est identifiable (icône d'Obsession) ; indirect : le tueur **lâche volontairement** l'Obsession en chase.
- **Soupçonner** (HEURISTIC) : tueur qui abandonne l'Obsession 1-3 fois sans raison + arrive ensuite très vite sur une autre cible.
- **Confirmer** (HEURISTIC) : écran de fin de partie.
- **Adaptation robuste** (HEURISTIC) : si vous êtes l'Obsession et que le tueur vous lâche, **prévenir/ne pas se croire tranquille** ; les autres : les chases suivantes seront plus courtes, jouer plus safe.
- **Counterplay** (HEURISTIC) : l'Obsession prévient l'équipe dès que le tueur la lâche ; tout le monde : pousser le tueur à attaquer (bait de coup, même raté) pour consommer un jeton.
- **Erreurs à ne pas faire** (HEURISTIC) : s'emballer quand le tueur « abandonne » la chase de l'Obsession.
- **Menace (HEURISTIC)** : SoloQ 1-2 · SWF 1
- **Écart avec le seed** : OK (renommage et valeurs)
- **Sources** : [18a] [19] [28]

### Cull the Weak — Générale (ex-Dying Light, The Shape)
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (vitesse d'action survivants)
- **Effet LIVE + valeurs** : renommage Dying Light → Cull the Weak en **9.4.0** — VERIFIED_MULTI_SOURCE (note 9.4.0 [28] ; wiki [19]). Effet : +1 jeton à chaque accrochage d'un survivant autre que l'Obsession ; tant que l'Obsession est vivante, les autres survivants subissent **−2/2,5/3 % par jeton** en réparation, soin et sabotage (max **22/27,5/33 %**, soit 11 jetons) ; l'Obsession n'est pas affectée et gagne **+33 %** en décrochage et en soin des autres — STRONG_SECONDARY [19]. Interaction avec les Diminishing Returns 9.6.0 (malus de vitesse d'action, appliqués au sein d'un même rôle [29]) : cumul avec d'autres malus tueur UNCERTAIN
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** (HEURISTIC) : aucune icône connue ; indirect : gens et soins qui ralentissent au fil des hooks ; tueur qui **évite l'Obsession**.
- **Soupçonner** (HEURISTIC) : tueur qui ne chasse jamais l'Obsession + accroche tout le monde sauf elle + gens de plus en plus lents.
- **Confirmer** (HEURISTIC) : écran de fin de partie ; mesure de vitesse de réparation (sans toolbox) nettement < normale.
- **Adaptation robuste** (HEURISTIC) : si le tueur ignore l'Obsession, **l'Obsession prend les sauvetages et les soins** (bonus de 33 %) ; les autres rushent les gens tôt (avant accumulation de jetons).
- **Counterplay** (HEURISTIC) : l'Obsession est le sauveteur/soigneur désigné.
- **Erreurs à ne pas faire** (HEURISTIC) : sacrifier l'Obsession pour « couper » la perk (perte d'un joueur > gain) ; laisser l'Obsession se cacher toute la partie.
- **Menace (HEURISTIC)** : SoloQ 2 · SWF 1
- **Écart avec le seed** : OK (renommage et valeurs ; « maximum 33 % » = palier 3)
- **Sources** : [18a] [19] [28] [29]

---

## Matériel pour la PERK DEDUCTION

1. J'ai observé **Oblivious** sur moi (blessé) au moment où un coéquipier sain vient d'être touché → **Hysteria** (30/35/40 s, CD 20 s) → blessé : regarder derrière soi, ne pas se fier au TR ; soigner l'équipe.
2. J'ai observé **cri + Exposed** du sauveteur alors que le tueur était loin du crochet → **Make Your Choice** (quasi certain) → les sauvetages suivants se font avec le tueur < 32 m mais occupé, ou pendant le CD (40-60 s).
3. J'ai observé un **TR qui suit l'Obsession blessée** + tueur surgissant sans cœur → **Dark Devotion** plausible → l'Obsession s'isole ~45 s ; les autres ignorent le TR et scannent visuellement.
4. J'ai observé mon **objet tomber au sol** sur un coup de base (+ Oblivious en le ramassant, + aura de l'objet visible en approchant) → **Franklin's Demise** (+ **Weave Attunement**) → ne pas retourner chercher les objets ; les utiliser avant chase.
5. J'ai observé **2-4 stuns/flashes** puis un **nouveau totem allumé**, et un **blind** après un stun → **Hex: Two Can Play** → purifier ; stopper les stuns jusqu'au cleanse.
6. J'ai observé le tueur **revenir en < 16 s** sur un gen kické que je venais de reprendre, sans info visible → **Surveillance** plausible (aucun indice HUD) → reprendre un gen kické puis bouger, ne pas y rester seul.
7. J'ai observé un **cœur fixe centré sur un gen kické** et aucun tueur en vue → **Unforeseen** (22-30 s, 32 m) → TR = non-information, regarder.
8. J'ai observé une **porte dont les lumières clignotent et la barre redescend** après relâchement → **Haywire** → ne plus lâcher une porte > 80 %.
9. J'ai observé les **fenêtres/palettes bloquées** à la complétion du dernier gen → **None Are Free** → finir le dernier gen groupés près des portes, sain, sans chase (blocage jusqu'à 48-64 s).
10. J'ai observé des **chases perdues vite près des gens terminés** → **Batteries Included** plausible → éloigner les chases à > 16 m des gens finis (désactivation en endgame **non confirmée**).
11. J'ai observé un **Hex allumé au 1er hook** et mon Sprint Burst plafonné → **Hex: Under Your Thumb** → purifier ; activer les boosts loin du tueur.

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| K95-01 | Hysteria : Oblivious 30/35/40 s, CD 20 s ; déclenché par sain → blessé | [19] | LIVE (depuis 8.6.0) | STRONG_SECONDARY |
| K95-02 | Surveillance : jaune 8/12/16 s, bruit de réparation +8 m | [4][19] | LIVE | STRONG_SECONDARY |
| K95-03 | Make Your Choice : > 32 m, Exposed 40/50/60 s, CD 40/50/60 s, cri | [6][19] | LIVE | STRONG_SECONDARY |
| K95-04 | Dark Devotion : 35/40/45 s, TR 40 m sur l'Obsession, Undetectable ; Obsession qui devient blessée | [19][20] | LIVE (depuis 9.0.0) | VERIFIED_MULTI_SOURCE |
| K95-05 | Franklin's Demise : aura objets 32/48/64 m, lâcher sur coup de base | [19][21] | LIVE (depuis 9.1.0) | VERIFIED_MULTI_SOURCE |
| K95-06 | Franklin's Demise : perte de charges / consommation de l'objet au sol | [19][21] | retiré en 9.1.0 | OUTDATED |
| K95-07 | Fire Up : 4/5/6 % par jeton, max 5 jetons (20/25/30 %) | [18][19] | LIVE | VERIFIED_MULTI_SOURCE |
| K95-08 | Two Can Play : 4/3/2 stuns/blinds, blind 1,5 s, totem terne requis | [19] | LIVE | STRONG_SECONDARY |
| K95-09 | Batteries Included : 16 m, +5 % Haste, 1/3/5 s | [19][20] | LIVE (depuis 9.0.0) | VERIFIED_MULTI_SOURCE |
| K95-09b | Batteries Included : désactivée une fois les portes alimentées | [16] seul | ? | UNCERTAIN (absente de la page complète) |
| K95-10 | PWYF → See How They Run, Dying Light → Cull the Weak (9.4.0) | [28][19] | LIVE | VERIFIED_MULTI_SOURCE |
| K95-11 | Unforeseen : 22/26/30 s, TR 32 m sur le gen, Undetectable, CD 30 s | [19] | LIVE | STRONG_SECONDARY |
| K95-12 | Languid Touch : corbeau ≤ 36 m → Exhausted 6/8/10 s, CD 5 s | [19] | LIVE | STRONG_SECONDARY |
| K95-13 | Weave Attunement : 12 m, Oblivious 20/25/30 s ; survivants voient l'aura de l'objet | [19] | LIVE | STRONG_SECONDARY |
| K95-14 | Human Greed : 8 m, 3/4/5 s ; CD 10 s sur la fermeture | [19] | LIVE | STRONG_SECONDARY |
| K95-15 | All-Shaking Thunder : lunge +75 % 15/20/25 s après chute, CD 5 s | [19][24] | LIVE (depuis 9.2.0) | VERIFIED_MULTI_SOURCE |
| K95-16 | Forever Entwined : +4 %/jeton, max 6/7/8 jetons (24/28/32 %) | [19] | LIVE | STRONG_SECONDARY |
| K95-17 | Hex: Nothing but Misery : 8 coups ; Hindered 5 % 10/12,5/15 s | [18] | LIVE | VERIFIED_PRIMARY |
| K95-18 | None Are Free : 12/14/16 s par jeton, max 4 jetons (48/56/64 s) | [19] | LIVE | STRONG_SECONDARY |
| K95-19 | Help Wanted : 1 gen compromis, récupération +25 % 40/50/60 s | [18][19][20] | LIVE (depuis 9.0.0) | VERIFIED_MULTI_SOURCE |
| K95-20 | Phantom Fear : cri + aura 2 s, CD 80/70/60 s | [19][20] | LIVE | VERIFIED_MULTI_SOURCE |
| K95-21 | Haywire : ≥ 80 %, régression 80/90/100 %, lumières qui clignotent | [19][20] | LIVE | VERIFIED_MULTI_SOURCE |
| K95-22 | Hex: Under Your Thumb : 1er état de crochet, Haste plafonnée 25/20/15 %, alerte 32 m | [19][27] | LIVE (depuis 10.1.0) | VERIFIED_MULTI_SOURCE |
| K95-23 | See How They Run : 3/4/5 %/jeton, max 3 jetons, CD 10 s entre gains | [19] | LIVE | STRONG_SECONDARY |
| K95-24 | Cull the Weak : 2/2,5/3 %/jeton, max 22/27,5/33 % ; Obsession +33 % | [19] | LIVE | STRONG_SECONDARY |
| K95-25 | PTB 10.2.0 : Fire Up 6/7/8 % ; Nothing but Misery 4 coups + vault −10 % ; Help Wanted 3 gens, 100/110/120 s, régression 150 % | [18][19] | PTB 10.2.0 (NON LIVE) | VERIFIED_PRIMARY (pour le PTB) |

## Conflits

#### CONFLICT-K95-01 : valeurs de Hysteria
- Source A : résumé WebSearch citant le wiki (fandom) — Oblivious 20/25/30 s, CD 30 s.
- Source B : même résumé, « certaines sources » — 30/35/40 s, CD 20 s.
- Résolution : **RÉSOLU** — page wiki.gg complète [19] : LIVE = 30/35/40 s, CD 20 s ; change log 8.6.0 : « reduced the Cool-down from 30 to 20 seconds », « increased Oblivious from 20/25/30 to 30/35/40 ». A = version antérieure à 8.6.0.

#### CONFLICT-K95-02 : consommation de l'objet (Franklin's Demise)
- Source A : résumé WebSearch — objet consommé/perdant ses charges s'il n'est pas récupéré.
- Source B : seed — effet actuel sans cette clause.
- Résolution : **RÉSOLU** — note officielle 9.1.0 [21] : « No longer causes dropped items to lose charges over time » ; clause = HISTORICAL (avant 9.1.0).

#### CONFLICT-K95-03 : Batteries Included désactivée à l'alimentation des portes ?
- Source A : première passe WebSearch [16] — « désactivée pour le reste de la partie une fois les portes alimentées ».
- Source B : page wiki.gg complète [19] et note officielle 9.0.0 [20] — aucune mention de désactivation.
- Hypothèse : confusion du résumé avec une autre perk ou une ancienne version.
- Résolution : UNRESOLVED (non retenue ; supposer la perk active en endgame par prudence).

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Hysteria | 30/35/40 s, CD 20 s | idem [19] | OK |
| Surveillance | blanc/jaune 8/12/16 s, +8 m | idem [19] | OK |
| Make Your Choice | > 32 m, cri, Exposed 40/50/60, CD 40/50/60 | idem [19] | OK |
| Dark Devotion | « quand l'Obsession prend un coup » | « devient blessée, par n'importe quel moyen » [19] | IMPRÉCIS |
| Franklin's Demise | lâcher + aura 32/48/64 m | idem [19][21] | OK |
| Fire Up (LIVE) | 4/5/6 %, max 5 | idem [18][19] | OK |
| Fire Up (PTB p98) | 6/7/8 % en 10.2.0 | idem [18] | OK (PTB) |
| Two Can Play | 4/3/2, blind 1,5 s | idem (+ condition totem terne) [19] | OK |
| Batteries Included | 5 %, 16 m, 1/3/5 s | idem [19][20] | OK (IMPRÉCIS de la 1re passe retiré) |
| Unforeseen | 32 m, 22/26/30 s | idem + CD 30 s [19] | OK |
| Languid Touch | 36 m, 6/8/10 s | idem + CD 5 s [19] | OK |
| Weave Attunement | objet vide lâché, 12 m, Oblivious 20/25/30 s | idem [19] | OK |
| Human Greed | coffres, 8 m, 3/4/5 s | idem [19] | OK |
| All-Shaking Thunder | +75 %, 15/20/25 s | idem [19][24] | OK |
| Forever Entwined | max 6/7/8 jetons, +4 % | idem [19] | OK |
| Hex: Nothing but Misery | 8 coups, 5 %, 10/12,5/15 s ; « 4 coups en 10.2.0 » | idem [18] | OK |
| Nothing but Misery (PTB p98) | 4 coups + 10 % de vault | idem [18] | OK (PTB) |
| None Are Free | max 4 jetons, 12/14/16 s par jeton | idem [19] | OK |
| Help Wanted | compromis, +25 %, 40/50/60 s | idem [18][19][20] | OK |
| Help Wanted (PTB p98) | jusqu'à 3 gens compromis | idem [18] | OK (PTB) |
| Phantom Fear | cri + 2 s, CD 80/70/60 s | idem [19][20] | OK |
| Haywire | ≥ 80 %, 80/90/100 % | idem [19][20] | OK |
| Hex: Under Your Thumb | 1er hook, 25/20/15 %, 32 m | idem [19][27] | OK |
| See How They Run / Cull the Weak | renommages 9.4.0, valeurs | idem [19][28] | OK |
| « [2,1 %] » / « [2,0 %] » (taux d'usage) | chiffres sans source | non vérifié | NON VÉRIFIABLE |

## Questions ouvertes

1. Batteries Included : existe-t-il réellement une désactivation à l'alimentation des portes ? (CONFLICT-K95-03)
2. None Are Free : depuis le retrait de « blocked for everyone » (8.6.2), le tueur peut-il franchir les fenêtres/palettes bloquées ?
3. Cull the Weak / See How They Run / Hysteria : effet exact des **Diminishing Returns** (9.6.0) quand plusieurs malus tueur se cumulent.
4. Help Wanted : existe-t-il un indicateur visuel du gen « compromis » côté survivant ?
5. Hex: Under Your Thumb : l'alerte au tueur (position révélée 4 s d'après le wiki) produit-elle un indice côté survivant ?

## Sources

[1] Hysteria — Official Dead by Daylight Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Hysteria — consulté le 27/09/2026 via WebSearch (résumé ; valeurs antérieures à 8.6.0)
[2] Hysteria — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Hysteria — consulté le 27/09/2026 via WebSearch (résumé)
[3] Hysteria — NightLight — https://nightlight.gg/perks/Hysteria — consulté le 27/09/2026 via WebSearch (résumé)
[4] Surveillance — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Surveillance — consulté le 27/09/2026 via WebSearch
[5] Surveillance — Fandom — https://deadbydaylight.fandom.com/wiki/Surveillance — consulté le 27/09/2026 via WebSearch
[6] Make Your Choice — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Make_Your_Choice — consulté le 27/09/2026 via WebSearch
[7] Make Your Choice — Fandom — https://deadbydaylight.fandom.com/wiki/Make_Your_Choice — consulté le 27/09/2026 via WebSearch
[8] Dark Devotion — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Dark_Devotion — consulté le 27/09/2026 via WebSearch
[9] Dark Devotion — Fandom — https://deadbydaylight.fandom.com/wiki/Dark_Devotion — consulté le 27/09/2026 via WebSearch
[10] Franklin's Demise — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Franklin%27s_Demise — consulté le 27/09/2026 via WebSearch
[11] Franklin's Demise — Fandom — https://deadbydaylight.fandom.com/wiki/Franklin's_Demise — consulté le 27/09/2026 via WebSearch
[12] Fire Up — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Fire_Up — consulté le 27/09/2026 via WebSearch
[13] Fire Up — Fandom — https://deadbydaylight.fandom.com/wiki/Fire_Up — consulté le 27/09/2026 via WebSearch
[14] Hex: Two Can Play — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Hex:_Two_Can_Play — consulté le 27/09/2026 via WebSearch
[15] Hex: Two Can Play — Fandom — https://deadbydaylight.fandom.com/wiki/Hex:_Two_Can_Play — consulté le 27/09/2026 via WebSearch
[16] Batteries Included — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Batteries_Included — consulté le 27/09/2026 via WebSearch (résumé ; clause de désactivation non confirmée)
[17] Batteries Included — Fandom — https://deadbydaylight.fandom.com/wiki/Batteries_Included — consulté le 27/09/2026 via WebSearch
[18] 10.2.0 PTB Patch Notes (NON LIVE) — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/559
[18a] Audit phase 0 (local) — /home/user/dbd_guide/kb/seed/audit_phase0.txt (renommages 9.4.0, The Animatronic 9.0.0, The Judgment 10.1.0) — lu le 27/09/2026
[19] Pages wiki.gg complètes via API (digest local `kb/sources/wiki_perks_digest.md`, brut `wiki_perks.json`), consultées le 27/09/2026 : deadbydaylight.wiki.gg/wiki/Hysteria ; /Surveillance ; /Make_Your_Choice ; /Dark_Devotion ; /Franklin%27s_Demise ; /Fire_Up ; /Hex:_Two_Can_Play ; /Batteries_Included ; /Unforeseen ; /Languid_Touch ; /Weave_Attunement ; /Human_Greed ; /All-Shaking_Thunder ; /Forever_Entwined ; /Hex:_Nothing_but_Misery ; /None_Are_Free ; /Help_Wanted ; /Phantom_Fear ; /Haywire ; /Hex:_Under_Your_Thumb ; /See_How_They_Run ; /Cull_the_Weak — page complète via API, consultée le 27/09/2026
[20] 9.0.0 | Five Nights at Freddy's — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/510
[21] 9.1.0 | The Walking Dead — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/516
[22] 9.1.1 | Bugfix Patch — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/517
[23] 9.4.1 | Bugfix Patch — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/535
[24] 9.2.0 | Sinister Grace — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/523
[25] 9.6.2 | Bugfix Patch — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/546
[26] 9.3.0 | Mid-Chapter — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/529
[27] 10.1.0 | Chorus of Sin — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/556
[28] 9.4.0 | Stranger Things Chapter 2 — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/534
[29] 9.6.0 | Patch Notes — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/544
