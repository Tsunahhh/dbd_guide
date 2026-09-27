# Lot 3 — Perks tueur vues du survivant, page 94 du guide seed (tier C)

Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 (15-21/09/2026) = **non LIVE**, toujours étiqueté PTB.
Méthode : WebSearch uniquement (résumés de recherche, WebFetch bloqué) → confiance plafonnée à STRONG_SECONDARY sauf citation de notes officielles.
Notes de menace = **HEURISTIC**.

Périmètre (28 perks) : Whispers, Territorial Imperative, Predator, Distressing, Insidious, Knock Out, Shattered Hope, Dominance, Scourge Hook: Jagged Compass, Hex: Crowd Control, Hex: Huntress Lullaby, Unnerving Presence, Coulrophobia, Hubris, Dissolution, Superior Anatomy, Merciless Storm, Hex: Haunted Ground, Rancor, Hex: The Third Seal, Iron Maiden, Mad Grit, Zanshin Tactics, Blood Echo, Forced Penance, Forced Hesitation, Genetic Limits, Alien Instinct.

## ⚠ Limite de vérification de ce lot (à lire avant d'utiliser le fichier)

- Le **budget WebSearch de la session (200 appels, partagé entre agents) a été épuisé après 8 recherches** de ce lot (refus explicite de l'outil : « this session has used its web search budget »).
- **Vérifiées par WebSearch (8)** : Whispers, Territorial Imperative, Predator, Distressing, Insidious, Knock Out, Shattered Hope, Dominance. Confiance STRONG_SECONDARY (résumés wiki.gg / fandom).
- **Partiellement recoupées par l'audit local** `kb/seed/audit_phase0.txt` (qui cite des notes officielles) : Hex: Crowd Control (rework 9.5.0 : 4/5/6 dernières fenêtres), Coulrophobia (20/25/30 % en 10.1.0), Shattered Hope (rework au PTB 10.2.0).
- **Non vérifiées (20)** : les valeurs indiquées pour ces perks viennent de la **mémoire du modèle** (connaissance antérieure, possiblement obsolète) → étiquetées **UNCERTAIN** ; écart avec le seed = **NON VÉRIFIABLE** sauf mention. Elles doivent être re-vérifiées dans une session avec budget de recherche.
- **Aucune valeur PTB 10.2.0 n'a pu être vérifiée directement** pour ce périmètre (pas de recherche PTB possible). Les valeurs PTB du seed restent **UNCERTAIN (PTB, non recoupé)**.
- Les parties « indice observable / soupçonner / adaptation / counterplay » reposent sur les mécaniques générales (statuts, auras, Undetectable, Hex) : **HEURISTIC**, valables quelles que soient les valeurs exactes.

---

## Perks vérifiées (WebSearch)

### Whispers — Générale
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (détection de proximité)
- **Effet LIVE + valeurs** : le tueur entend des murmures de l'Entité tant qu'au moins un survivant est à ≤ 48/40/32 m de lui ; compte aussi les survivants accrochés et au sol — STRONG_SECONDARY [1]
- **PTB 10.2.0** : seed : « 28/26/24 m + 5 % de Haste hors portée » → UNCERTAIN (non recoupé)
- **Indice observable (survivant)** : aucun indice direct (son uniquement côté tueur)
- **Soupçonner** : tueur qui balaie une zone vide sans hésiter puis « s'arrête de chercher » et repart ailleurs + qui tourne longtemps autour d'une zone où quelqu'un est caché sans voir de scratch marks → plausible
- **Confirmer** : écran de fin (perks visibles) ; en jeu, pas de confirmation fiable
- **Adaptation robuste** : ne pas compter sur la cachette « statique » près d'un gen quand le tueur rôde à < 30 m ; quitter la zone plutôt que se cacher
- **Counterplay** : se déplacer hors du rayon (≥ 48 m au pire) quand le tueur fouille ; le tueur ne sait que « quelqu'un est proche », pas où
- **Erreurs à ne pas faire** : rester accroupi derrière un rocher en pensant que l'absence de scratch marks suffit
- **Menace (HEURISTIC 0-3)** : SoloQ 1 / SWF 0-1
- **Écart avec le seed** : OK (48/40/32 m)
- **Sources** : [1]

### Territorial Imperative — Huntress
- **Statut / catégorie** : LIVE 10.1.2a · info/aura
- **Effet LIVE + valeurs** : un survivant qui entre dans le Basement pendant que le tueur est à > 24 m de son entrée voit son aura révélée 4/5/6 s ; cooldown 45 s — STRONG_SECONDARY [2]
- **PTB 10.2.0** : « non modifiée d'après les sources lues » (aucune source PTB lue → à re-vérifier)
- **Indice observable (survivant)** : aucun indice direct
- **Soupçonner** : tueur qui arrive droit au Basement depuis l'autre bout de la map peu après ton entrée (coffre, sauvetage) → plausible (alternative : Bitter Murmur/Nowhere to Hide, BBQ… non liées au Basement)
- **Confirmer** : écran de fin uniquement
- **Adaptation robuste** : entrer au Basement uniquement pour décrocher ; pas de coffre du Basement quand le tueur n'est pas en chase ; ressortir vite
- **Counterplay** : Distortion (bloque l'aura, consomme un jeton = confirmation) ; entrer quand le tueur est engagé en chase
- **Erreurs à ne pas faire** : « farmer » le coffre du Basement / s'y cacher
- **Menace (HEURISTIC)** : SoloQ 0-1 / SWF 0
- **Écart avec le seed** : OK
- **Sources** : [2]

### Predator — Wraith
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (post-chase)
- **Effet LIVE + valeurs** : quand un survivant perd le tueur en chase, son aura est révélée 4 s ; cooldown 60/50/40 s — STRONG_SECONDARY [3] (fandom + wiki.gg dans les résultats ; un fil BHVR « Thoughts on new Predator » confirme qu'il s'agit d'une version retravaillée)
- **PTB 10.2.0** : « non modifiée d'après les sources lues » (aucune source PTB lue)
- **Indice observable (survivant)** : aucun indice direct ; si tu as Distortion, perte d'un jeton juste après la fin de chase = aura lue
- **Soupçonner** : tu casses la ligne de vue, la chase « se termine » (musique qui retombe), et le tueur revient exactement sur toi 2-5 s après → plausible
- **Confirmer** : jeton de Distortion consommé au moment où la chase se termine
- **Adaptation robuste** : après avoir semé le tueur, **continuer à bouger ~4 s puis changer de direction** (la position lue devient fausse) ; ne pas s'arrêter pile derrière le premier obstacle
- **Counterplay** : Distortion ; Lucky Break/Quick & Quiet pour disparaître après la révélation ; un coéquipier qui prend l'aggro
- **Erreurs à ne pas faire** : se cacher accroupi immédiatement au coin du mur où le tueur t'a perdu
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK
- **Sources** : [3]

### Distressing — Générale
- **Statut / catégorie** : LIVE 10.1.2a · autre (terror radius) / Bloodpoints
- **Effet LIVE + valeurs** : Terror Radius +20/25/30 % ; +100 % Bloodpoints en Deviousness — STRONG_SECONDARY [4]
- **PTB 10.2.0** : seed : « TR +30 % et réparation 6/7/8 % plus lente dans le rayon » → UNCERTAIN (PTB, non recoupé). La catégorie « vitesse d'action » du seed l'étiquette bien « à partir de 10.2.0 » (OK sur l'étiquette)
- **Indice observable (survivant)** : heartbeat perçu **plus loin que le TR de base** du tueur identifié (ex. tueur à TR 32 m entendu vers ~40 m)
- **Soupçonner** : heartbeat permanent sur plusieurs gens alors que le tueur est vu loin (aura via Kindred/Bond, cri d'un coéquipier) → plausible (alternatives : Unnerving Presence/Coulrophobia exploitant le TR, add-ons de TR)
- **Confirmer** : comparer la distance réelle (aura d'un coéquipier chassé, Alert, Bond) et l'intensité du heartbeat
- **Adaptation robuste** : **ne pas lâcher un gen au premier heartbeat** ; confirmer la direction/distance avant de fuir
- **Counterplay** : Spine Chill (portée fixe, indépendante du TR), infos d'équipe ; Distressing aide aussi le survivant (préavis plus long)
- **Erreurs à ne pas faire** : abandonner les gens en boucle « parce que le cœur bat »
- **Menace (HEURISTIC)** : SoloQ 1 (panique, perte de temps) / SWF 0
- **Écart avec le seed** : OK (LIVE) ; PTB correctement annoncé en « à partir de 10.2.0 »
- **Sources** : [4]

### Insidious — Générale
- **Statut / catégorie** : LIVE 10.1.2a · stealth
- **Effet LIVE + valeurs** : après 3/2/1 s immobile, Undetectable **tant que le tueur reste immobile** ; se désactive dès qu'il bouge — STRONG_SECONDARY [5]
- **PTB 10.2.0** : seed : « Undetectable après 2 s d'immobilité, persiste 6/7/8 s » → UNCERTAIN (PTB, non recoupé ; plusieurs fils BHVR « Insidious rework » existent [5])
- **Indice observable (survivant)** : disparition du TR/heartbeat et de la red stain sans tueur furtif par nature ; **respiration du tueur audible** ; **« stinger » sonore** quand il reprend son mouvement ; aura du tueur non visible (Undetectable bloque les auras)
- **Soupçonner** : TR coupé net près d'un crochet/gen 3 gens + tueur non-furtif + Kindred qui ne montre rien → plausible
- **Confirmer** : voir le tueur immobile sans red stain / entendre sa respiration à côté d'un crochet
- **Adaptation robuste** : **approcher les crochets en « peekant » les angles morts** (derrière les murs proches, casiers) ; ne pas unhook dès que le TR « disparaît »
- **Counterplay** : venir à deux (un appât, un sauveteur) ; Spine Chill (fonctionne sur la ligne de vue, pas sur le TR — UNCERTAIN si interaction Undetectable modifiée) ; casque/son pour la respiration
- **Erreurs à ne pas faire** : considérer l'absence de heartbeat comme une preuve que le tueur est parti
- **Menace (HEURISTIC)** : SoloQ 1-2 (proxy-camp furtif) / SWF 1
- **Écart avec le seed** : IMPRÉCIS (seed : « jusqu'à votre prochaine action » ; wiki : tant qu'il reste immobile / se coupe au mouvement)
- **Sources** : [5]

### Knock Out — Cannibal
- **Statut / catégorie** : LIVE 10.1.2a · chase / slugging
- **Effet LIVE + valeurs** : (1) quand le tueur met un survivant au sol avec une **attaque de base**, les autres ne voient l'aura de ce survivant au sol que dans un rayon de **32/24/16 m** ; (2) un survivant qui s'éloigne de > 6 m d'une palette dans les 6 s après l'avoir fait tomber est **Hindered 5 %** pendant 3/4/5 s — STRONG_SECONDARY [6]
- **PTB 10.2.0** : seed : « 10 m, Hindered 20 % » (+ « rework majeur ») → UNCERTAIN (PTB, non recoupé)
- **Indice observable (survivant)** : **icône Hindered** sur le HUD juste après une palette tombée ; **aura du coéquipier au sol absente** alors qu'il vient d'être abattu
- **Soupçonner** : coéquipier mis au sol (barre d'état) mais aucune aura visible à distance → plausible
- **Confirmer** : icône Hindered après palette ; l'aura du dying apparaît en s'approchant (~16-32 m)
- **Adaptation robuste** : sur un slug sans aura, **se rapprocher prudemment de sa dernière position connue** et communiquer ; en chase, anticiper le Hindered 5 % en ne comptant pas sur un « pré-drop + fuite » ultra-serré
- **Counterplay** : Bond/Empathy (auras via d'autres perks — interaction UNCERTAIN), le survivant au sol peut ramper vers les coéquipiers ; Boil Over/Flip-Flop hors sujet
- **Erreurs à ne pas faire** : conclure qu'un coéquipier au sol « a disparu » / est déjà ramassé
- **Menace (HEURISTIC)** : SoloQ 1-2 (slug caché) / SWF 1
- **Écart avec le seed** : IMPRÉCIS (le seed ne décrit que l'effet palette et omet l'effet principal de limitation d'aura du survivant au sol)
- **Sources** : [6]

### Shattered Hope — Générale
- **Statut / catégorie** : LIVE 10.1.2a · autre (anti-Boon) / info
- **Effet LIVE + valeurs** : le tueur **détruit** les Boon Totems au lieu de les éteindre ; les survivants dans le rayon du Boon à ce moment voient leur aura révélée 6/7/8 s — STRONG_SECONDARY [7] ; exception : l'effet d'aura est bloqué si le Boon détruit est Shadow Step (effet persistant)
- **PTB 10.2.0** : rework confirmé par l'audit (liste des reworks du Dev Update 10.2.0) ; valeurs du seed (« bloque les totems 16/18/20 s ») → UNCERTAIN (PTB)
- **Indice observable (survivant)** : le totem Boon **disparaît** (pas de totem terne à re-bénir) ; tu perds l'effet du Boon ; tu peux être poursuivi droit après
- **Soupçonner** : Boon « éteint » mais impossible à re-bénir au même endroit → Shattered Hope quasi certain
- **Confirmer** : totem absent à l'emplacement du Boon
- **Adaptation robuste** : **sortir du rayon du Boon quand le tueur s'en approche** ; ne pas re-bénir le même totem en boucle ; avoir un second emplacement de Boon en tête
- **Counterplay** : Boon placé dans une zone morte peu visitée ; Shadow Step (bloque l'aura) ; Hex: Pentimento peut réutiliser le totem détruit (côté tueur)
- **Erreurs à ne pas faire** : rester soigner sous Circle of Healing pendant que le tueur casse le Boon
- **Menace (HEURISTIC)** : SoloQ 1 (si Boon joué) / SWF 1
- **Écart avec le seed** : OK
- **Sources** : [7], [9]

### Dominance — Dark Lord
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (props) / anti-objet
- **Effet LIVE + valeurs** : la **première** interaction d'un survivant avec chaque coffre et chaque totem : l'Entité le bloque 8/12/16 s ; l'aura **du prop bloqué** est révélée en blanc au tueur (pas celle du survivant) — STRONG_SECONDARY [8] ; buff antérieur 4/6/8 → 8/12/16 s (date non précisée par le résumé)
- **PTB 10.2.0** : seed : « totems seulement, blocage 25 s » → UNCERTAIN (PTB, non recoupé)
- **Indice observable (survivant)** : **coffre/totem bloqué par l'Entité** (pointes) dès que tu commences l'interaction
- **Soupçonner** : premier coffre/totem bloqué alors qu'aucun autre perk de blocage n'est suspecté → quasi certain
- **Confirmer** : blocage visuel du prop après la première interaction
- **Adaptation robuste** : considérer que **ta position est probablement connue** (aura du prop) ; ne pas attendre devant le prop 8-16 s ; faire les totems/coffres quand le tueur est en chase ailleurs
- **Counterplay** : cleanse/ouverture pendant une chase d'un coéquipier ; après blocage, repartir et revenir plus tard (seule la première interaction déclenche)
- **Erreurs à ne pas faire** : attendre la fin du blocage à côté du coffre
- **Menace (HEURISTIC)** : SoloQ 0-1 / SWF 0
- **Écart avec le seed** : IMPRÉCIS (seed : « touchés… avec révélation d'aura » → c'est la **première** interaction, et l'aura révélée est celle du **prop**)
- **Sources** : [8]

---

## Perks NON vérifiées cette session (budget WebSearch épuisé)

> Valeurs = mémoire du modèle → **UNCERTAIN** partout. PTB 10.2.0 = UNCERTAIN. Écart seed = NON VÉRIFIABLE sauf indication.

### Scourge Hook: Jagged Compass — Houndmaster
- **Statut / catégorie** : LIVE 10.1.2a (présumé) · scourge / info (générateur)
- **Effet LIVE + valeurs** : seed : crochets d'où un survivant est décroché → Fléau ; accrocher sur un Fléau révèle le gen le plus avancé 6/8/10 s — UNCERTAIN (non vérifié ; mécanique exacte de conversion des crochets non confirmée)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : aucun indice direct sur le gen ; la visibilité des Scourge Hooks côté survivant est UNCERTAIN
- **Soupçonner** : tueur qui quitte un crochet et va droit sur le gen le plus avancé → plausible (alternatives : Nowhere to Hide, Surveillance, Deadlock/Grim Embrace)
- **Confirmer** : écran de fin
- **Adaptation robuste** : pendant un accrochage, ne pas rester seul sur le gen le plus avancé si le tueur est proche ; se décaler sur un 2e gen
- **Counterplay** : répartir la progression ; ne pas laisser un gen à 90 % « en vitrine »
- **Erreurs à ne pas faire** : empiler 3 survivants sur le gen le plus avancé pendant un hook
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 0-1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : — (recherche refusée)

### Hex: Crowd Control — Trickster
- **Statut / catégorie** : LIVE 10.1.2a · hex / chase
- **Effet LIVE + valeurs** : rework 9.5.0 : bloque les **4/5/6 dernières fenêtres** franchies par les survivants (audit, via patch notes 9.5.0) — STRONG_SECONDARY [9] ; vault +15 % et aura 24 m (seed) : UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **totem Hex allumé** (son de crépitement près du totem) ; **fenêtres bloquées par l'Entité** après les avoir franchies
- **Soupçonner** : fenêtre que tu viens de passer bloquée (sans Bamboozle qui ne bloque que pour le vault du tueur… et pour 8-16 s) → quasi certain
- **Confirmer** : plusieurs fenêtres restant bloquées + totem Hex trouvé
- **Adaptation robuste** : en chase, privilégier les **palettes** et les loops sans fenêtre ; nettoyer les totems tôt (cleanse = retour des fenêtres, présumé)
- **Counterplay** : un coéquipier cleanse le totem pendant la chase ; Small Game / Detective's Hunch
- **Erreurs à ne pas faire** : revenir en boucle sur une fenêtre déjà utilisée
- **Menace (HEURISTIC)** : SoloQ 1-2 / SWF 1
- **Écart avec le seed** : OK sur le cœur (4/5/6 fenêtres, confirmé par l'audit) ; bonus vault/aura NON VÉRIFIABLE
- **Sources** : [9]

### Hex: Huntress Lullaby — Huntress
- **Statut / catégorie** : LIVE (présumé) · hex / slowdown (skill-checks)
- **Effet LIVE + valeurs** : jetons par accrochage ; avertissement sonore des skill-checks retardé puis supprimé à 5 jetons ; pénalité de régression supplémentaire en cas de raté — valeurs UNCERTAIN (le seed évoque aussi une zone Good réduite : UNCERTAIN)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **son d'avertissement de skill-check absent ou tardif** ; totem Hex allumé
- **Soupçonner** : skill-checks « surprise » sans ding + ratés inhabituels après plusieurs hooks → quasi certain
- **Confirmer** : totem Hex trouvé ; absence totale du ding
- **Adaptation robuste** : surveiller visuellement la zone de skill-check ; cleanser tôt (les jetons s'accumulent)
- **Counterplay** : Small Game/Detective's Hunch ; Stake Out (Great = plus de marge) ; cleanse prioritaire
- **Erreurs à ne pas faire** : réparer en regardant ailleurs (caméra tournée) sous Lullaby
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Unnerving Presence — Trapper
- **Statut / catégorie** : LIVE (présumé) · slowdown (skill-checks)
- **Effet LIVE + valeurs** : dans le TR : chance de skill-check augmentée et zone de réussite réduite (seed : +10 %, 40/50/60 %) — UNCERTAIN ; interaction avec Diminishing Returns 9.6.0 (chances de skill-check) : UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **zones de skill-check nettement plus petites** uniquement **dans le heartbeat**
- **Soupçonner** : skill-checks rétrécis + fréquents seulement quand le TR est présent → quasi certain (alternative : Coulrophobia sur soins uniquement)
- **Confirmer** : comparer la taille de zone hors TR / dans TR
- **Adaptation robuste** : réparer hors TR quand possible ; ne pas soigner dans le TR
- **Counterplay** : Stake Out, Hyperfocus (risque), Resilience ne change pas la zone
- **Erreurs à ne pas faire** : tenter les Great sur une zone réduite
- **Menace (HEURISTIC)** : SoloQ 0-1 / SWF 0
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Coulrophobia — Clown
- **Statut / catégorie** : LIVE 10.1.2a · anti-soin
- **Effet LIVE + valeurs** : soins 20/25/30 % plus lents dans le TR (valeur changée en 10.1.0 d'après l'audit) — STRONG_SECONDARY [9] ; skill-checks de soin 50 % plus rapides (seed) : UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : barre de soin lente dans le TR ; **aiguille de skill-check de soin plus rapide**
- **Soupçonner** : soin anormalement lent uniquement dans le TR + skill-check rapide → quasi certain
- **Confirmer** : vitesse de soin normale hors TR
- **Adaptation robuste** : **ne jamais soigner dans le TR** ; se déplacer avant de soigner
- **Counterplay** : soin loin du tueur ; Botany/medkit compensent partiellement (DR 9.6.0 à considérer : UNCERTAIN)
- **Erreurs à ne pas faire** : soigner au pied du crochet avec le tueur à 20 m
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 0-1
- **Écart avec le seed** : OK (valeurs 10.1.0 recoupées par l'audit ; « nerf au 10.1.0 » : sens exact buff/nerf non vérifié)
- **Sources** : [9]

### Hubris — Knight
- **Statut / catégorie** : LIVE (présumé) · chase (anti-stun)
- **Effet LIVE + valeurs** : le survivant qui étourdit le tueur devient Exposed ~20/25/30 s ; cooldown ~20 s (seed) — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **icône Exposed** juste après un stun de palette
- **Soupçonner / Confirmer** : Exposed immédiatement après stun → confirmé
- **Adaptation robuste** : après un stun, **distance maximale et ne pas reprendre de risque** pendant la durée ; éviter les stuns « gratuits » si déjà blessé proche d'un one-shot inutile
- **Counterplay** : ne stun que quand le gain est net (palette vers un autre loop) ; Dead Hard/Endurance ne supprime pas Exposed (principe) — UNCERTAIN selon interactions
- **Erreurs à ne pas faire** : rester au contact du tueur après le stun en croyant avoir gagné du temps
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Dissolution — Dredge
- **Statut / catégorie** : LIVE (présumé) · chase (anti-palette)
- **Effet LIVE + valeurs** : après qu'un survivant a pris un coup, pendant une fenêtre temporaire, la prochaine palette qu'il franchit en vault rapide dans le TR se brise (seed : 3 s de délai, 12/16/20 s) — UNCERTAIN
- **PTB 10.2.0** : seed : « déclenchée uniquement par attaques de base » → UNCERTAIN (PTB)
- **Indice observable (survivant)** : **palette qui se brise sous toi** en vault rapide ; icône de statut côté survivant : UNCERTAIN
- **Soupçonner** : palette détruite lors de ton vault rapide juste après un coup → quasi certain
- **Adaptation robuste** : après avoir été touché, **ne pas faire de vault rapide de palette** pendant ~20 s ; privilégier fenêtres / vault lent
- **Counterplay** : utiliser les palettes debout comme obstacles sans les vaulter vite
- **Erreurs à ne pas faire** : fast-vault une palette « de sauvetage » juste après un coup
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 0-1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Superior Anatomy — Mastermind
- **Statut / catégorie** : LIVE (présumé) · chase (anti-fenêtre)
- **Effet LIVE + valeurs** : un vault rapide d'un survivant près du tueur rend le prochain vault du tueur plus rapide (30/35/40 %) ; portée, durée et cooldown du seed (12 m, 10 s, 25 s) : UNCERTAIN (mémoire : 8 m / 30 s de cooldown dans une version antérieure → possible écart)
- **PTB 10.2.0** : seed : « plusieurs vaults pendant 10 s, cooldown 20 s » → UNCERTAIN (PTB)
- **Indice observable (survivant)** : le tueur **vault la fenêtre derrière toi presque instantanément**
- **Soupçonner / Confirmer** : vault du tueur anormalement rapide juste après ton fast vault (hors Bamboozle/Wesker)
- **Adaptation robuste** : sur fenêtre, ne pas enchaîner vault → vault ; faire tourner le tueur autour du loop avant de revault
- **Counterplay** : utiliser la fenêtre comme menace sans la franchir quand le tueur est proche
- **Erreurs à ne pas faire** : « vault spam » sur une même fenêtre
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE (suspicion d'écart sur portée/cooldown)
- **Sources** : —

### Merciless Storm — Onryō
- **Statut / catégorie** : LIVE (présumé) · slowdown (blocage)
- **Effet LIVE + valeurs** : à 90 % de progression, skill-checks continus ; raté ou arrêt de réparation → gen bloqué 16/18/20 s (seed) — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **série de skill-checks enchaînés à 90 %** ; gen bloqué par l'Entité après raté/arrêt
- **Soupçonner / Confirmer** : skill-checks en rafale au dernier 10 % → confirmé
- **Adaptation robuste** : **ne pas lâcher un gen à 90 %** ; finir à 2 si possible ; éviter d'amener le tueur sur un gen à 90 %
- **Counterplay** : Stake Out, Hyperfocus (attention), réparer avec la caméra fixée sur l'écran de skill-check
- **Erreurs à ne pas faire** : commencer les 10 % finaux quand le tueur arrive
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 0-1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Hex: Haunted Ground — Spirit
- **Statut / catégorie** : LIVE (présumé) · hex / slugging (Exposed)
- **Effet LIVE + valeurs** : 2 totems Hex ; quand l'un est cleansé, tous les survivants deviennent Exposed (seed : 40/50/60 s) et l'autre totem disparaît (mémoire) — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **icône Exposed pour tout le monde juste après un cleanse** ; un Hex qui ne semble rien faire avant cleanse
- **Soupçonner** : totem Hex trouvé tôt alors qu'aucun effet Hex n'est perceptible → plausible (piège)
- **Confirmer** : Exposed collectif immédiatement après cleanse
- **Adaptation robuste** : **ne pas cleanser un Hex « inutile » quand le tueur est proche** ou quand plusieurs survivants sont en danger ; si cleansé, fuir/éviter tout contact pendant la durée
- **Counterplay** : SWF : annoncer avant de cleanser ; cleanser pendant une chase lointaine ; Detective's Hunch
- **Erreurs à ne pas faire** : cleanser par réflexe pendant que le tueur chase un blessé
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Rancor — Spirit
- **Statut / catégorie** : LIVE (présumé) · endgame / info
- **Effet LIVE + valeurs** : à chaque gen terminé, révélation des survivants ~3 s (mémoire : l'Obsession voit aussi le tueur — non vérifié) ; portes alimentées : l'Obsession est Exposed et peut être tuée à la main — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : Obsession (icône Obsession) ; en fin de partie, l'Obsession est Exposed ; mémoire : l'Obsession voit l'aura du tueur à chaque gen (UNCERTAIN)
- **Soupçonner** : tueur qui bondit sur des survivants juste après chaque gen terminé + Obsession présente → plausible
- **Confirmer** : Obsession tuée à la main (Mori) en endgame
- **Adaptation robuste** : **l'Obsession se tient loin du tueur en endgame** et sort en priorité ; bouger juste après chaque gen terminé
- **Counterplay** : Distortion ; l'équipe couvre l'Obsession à la sortie
- **Erreurs à ne pas faire** : l'Obsession qui fait du « heroic » en endgame
- **Menace (HEURISTIC)** : SoloQ 1-2 (Obsession) / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Hex: The Third Seal — Hag
- **Statut / catégorie** : LIVE (présumé) · hex / info (Blindness)
- **Effet LIVE + valeurs** : les 2/3/4 **derniers** survivants touchés sont Blindness tant que le totem tient — UNCERTAIN (seed : « les survivants que vous blessez » = formulation à préciser)
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **icône Blindness** après un coup ; perte des auras (Kindred, Bond…)
- **Soupçonner / Confirmer** : Blindness après un coup → confirmé (hors Mindbreaker/add-ons)
- **Adaptation robuste** : chercher/cleanser le totem ; communiquer vocalement (SWF) à la place des auras
- **Counterplay** : Detective's Hunch (vision totems — interaction avec Blindness UNCERTAIN), Small Game
- **Erreurs à ne pas faire** : compter sur Kindred au crochet
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 0
- **Écart avec le seed** : NON VÉRIFIABLE (IMPRÉCIS probable : « derniers » survivants touchés)
- **Sources** : —

### Iron Maiden — Legion
- **Statut / catégorie** : LIVE (présumé) · autre (anti-casier) / Exposed
- **Effet LIVE + valeurs** : ouverture des casiers plus rapide ; survivant qui sort d'un casier : cri/localisation ~4 s + Exposed ~30 s (seed) — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **cri + icône Exposed en sortant d'un casier**
- **Soupçonner / Confirmer** : Exposed à la sortie d'un casier → confirmé
- **Adaptation robuste** : éviter les casiers (hors Head On/DS au bon moment) ; si utilisé, attendre que le tueur soit loin
- **Counterplay** : ne pas utiliser les casiers comme cachette
- **Erreurs à ne pas faire** : casier pour se cacher du tueur proche
- **Menace (HEURISTIC)** : SoloQ 0-1 / SWF 0
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Mad Grit — Legion
- **Statut / catégorie** : LIVE (présumé) · autre (transport)
- **Effet LIVE + valeurs** : pendant le transport : pas de cooldown sur attaque ratée ; coup réussi → pause de la progression de débattement 2/3/4 s (seed) — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : le tueur **frappe en portant** sans ralentir après un raté
- **Soupçonner / Confirmer** : tueur qui swing en portant et récupère instantanément → quasi certain
- **Adaptation robuste** : **ne pas body-block un tueur qui porte** ; garder ≥ 3-4 m ; flashlight/palette save seulement
- **Counterplay** : saves à distance (flashlight, palette), pas au corps à corps
- **Erreurs à ne pas faire** : se coller au tueur pour « prendre le coup »
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Zanshin Tactics — Oni
- **Statut / catégorie** : LIVE (présumé) · info/aura (map + palette)
- **Effet LIVE + valeurs** : aura des palettes/fenêtres/murs cassables à portée ; survivant qui fait tomber une palette révélé quelques secondes (seed : 32 m, 3/4/5 s) — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : aucun indice direct
- **Soupçonner** : tueur qui revient droit sur toi juste après un drop de palette hors ligne de vue → plausible
- **Adaptation robuste** : après un drop, **ne pas rester derrière la palette** ; changer de direction
- **Counterplay** : Distortion
- **Erreurs à ne pas faire** : drop + hide à côté
- **Menace (HEURISTIC)** : SoloQ 0-1 / SWF 0
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Blood Echo — Oni
- **Statut / catégorie** : LIVE (présumé) · anti-soin / chase
- **Effet LIVE + valeurs** : à l'accrochage, les autres survivants blessés deviennent Exhausted et Hemorrhage (seed : 20/25/30 s ; cooldown éventuel non mentionné par le seed) — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **icônes Exhausted + Hemorrhage** au moment d'un accrochage alors que tu es blessé
- **Soupçonner / Confirmer** : Exhausted sans avoir utilisé de perk d'exhaustion au moment d'un hook → confirmé
- **Adaptation robuste** : ne pas compter sur son perk d'exhaustion juste après un accrochage adverse ; se soigner avant le prochain hook
- **Counterplay** : rester sain ; perks non-exhaustion (Dead Hard est une Exhaustion — UNCERTAIN selon version)
- **Erreurs à ne pas faire** : aller au crochet blessé en comptant sur Sprint Burst/Lithe
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Forced Penance — Executioner
- **Statut / catégorie** : LIVE (présumé) · anti-soin (Broken)
- **Effet LIVE + valeurs** : un survivant qui prend un coup protecteur devient Broken (seed : 60/70/80 s) — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **icône Broken** après avoir pris un coup pour un coéquipier
- **Soupçonner / Confirmer** : Broken après un protection hit → confirmé
- **Adaptation robuste** : réserver les coups protecteurs aux moments décisifs (endgame, sauvetage)
- **Counterplay** : body-block sans prendre le coup ; Borrowed Time interaction UNCERTAIN
- **Erreurs à ne pas faire** : « farmer » des protection hits en mid-game
- **Menace (HEURISTIC)** : SoloQ 0-1 / SWF 1 (SWF prend plus de protection hits)
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Forced Hesitation — Singularity
- **Statut / catégorie** : LIVE (présumé) · slugging / chase
- **Effet LIVE + valeurs** : quand le tueur met un survivant au sol, les survivants proches (seed : 16 m) sont Hindered (seed : 20 %, 10 s, cooldown 40/35/30 s) — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **icône Hindered** quand un coéquipier tombe près de toi
- **Soupçonner / Confirmer** : Hindered au moment du down d'un proche → confirmé
- **Adaptation robuste** : **ne pas suivre la chase de près** ; attendre à > 16 m pour un save
- **Counterplay** : saves à distance (flashlight longue portée, palette), pas de body-block collé
- **Erreurs à ne pas faire** : « shadow » la chase à 5 m pour un save
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Genetic Limits — Singularity
- **Statut / catégorie** : LIVE (présumé) · chase (Exhausted)
- **Effet LIVE + valeurs** : tout survivant qui perd un état de santé devient Exhausted (seed : 6/7/8 s) — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **icône Exhausted** juste après un coup
- **Soupçonner / Confirmer** : Exhausted après coup sans avoir utilisé de perk → confirmé
- **Adaptation robuste** : ne pas planifier Sprint Burst/Lithe « juste après le coup » ; utiliser le speed boost pour rejoindre un loop fort
- **Counterplay** : perks non-exhaustion (Resurgence, etc.)
- **Erreurs à ne pas faire** : tenter Lithe dans les secondes suivant un coup
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

### Alien Instinct — Xenomorph
- **Statut / catégorie** : LIVE (présumé) · info/aura + Oblivious
- **Effet LIVE + valeurs** : à chaque accrochage, le survivant blessé le plus éloigné est révélé et devient Oblivious (seed : 8 s, 40/50/60 s) — UNCERTAIN
- **PTB 10.2.0** : UNCERTAIN
- **Indice observable (survivant)** : **icône Oblivious** (plus de heartbeat) au moment d'un accrochage alors que tu es blessé et loin
- **Soupçonner / Confirmer** : Oblivious qui apparaît sur hook d'un coéquipier → confirmé
- **Adaptation robuste** : blessé + loin du crochet = **bouger dès l'accrochage** ; vigilance visuelle (pas de heartbeat)
- **Counterplay** : se soigner ; Distortion ; Spine Chill (indépendant du TR)
- **Erreurs à ne pas faire** : rester sur son gen blessé en se fiant au heartbeat
- **Menace (HEURISTIC)** : SoloQ 1-2 / SWF 1
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : —

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| K94-01 | Whispers : survivant à ≤ 48/40/32 m ; inclut accrochés et au sol | [1] | LIVE | STRONG_SECONDARY |
| K94-02 | Territorial Imperative : entrée au Basement, tueur > 24 m, aura 4/5/6 s, CD 45 s | [2] | LIVE | STRONG_SECONDARY |
| K94-03 | Predator : aura 4 s quand le survivant perd le tueur en chase, CD 60/50/40 s | [3] | LIVE | STRONG_SECONDARY |
| K94-04 | Distressing : TR +20/25/30 %, +100 % BP Deviousness | [4] | LIVE | STRONG_SECONDARY |
| K94-05 | Insidious : Undetectable après 3/2/1 s immobile, tant qu'immobile ; respiration audible ; stinger au mouvement | [5] | LIVE | STRONG_SECONDARY |
| K94-06 | Knock Out : aura du survivant abattu (attaque de base) visible seulement à 32/24/16 m | [6] | LIVE | STRONG_SECONDARY |
| K94-07 | Knock Out : > 6 m d'une palette dans les 6 s → Hindered 5 % 3/4/5 s | [6] | LIVE | STRONG_SECONDARY |
| K94-08 | Shattered Hope : détruit les Boons, aura des survivants dans le rayon 6/7/8 s | [7] | LIVE | STRONG_SECONDARY |
| K94-09 | Dominance : 1re interaction coffre/totem → bloqué 8/12/16 s, aura du prop en blanc | [8] | LIVE | STRONG_SECONDARY |
| K94-10 | Hex: Crowd Control : bloque les 4/5/6 dernières fenêtres (rework 9.5.0) | [9] | LIVE (depuis 9.5.0) | STRONG_SECONDARY (via audit) |
| K94-11 | Coulrophobia : 20/25/30 % (10.1.0) | [9] | LIVE (depuis 10.1.0) | STRONG_SECONDARY (via audit) |
| K94-12 | Shattered Hope fait partie des reworks du PTB 10.2.0 | [9] | PTB 10.2.0 | STRONG_SECONDARY (via audit) |
| K94-13 | Toutes les autres valeurs du périmètre (20 perks) | mémoire / seed | ? | UNCERTAIN |

## Conflits

#### CONFLICT-L3-94-01 : durée de l'Undetectable d'Insidious
- Source A : wiki.gg / fandom via résumé de recherche [5] — actif tant que le tueur reste immobile, coupé au mouvement.
- Source B : seed p94 — « jusqu'à votre prochaine action » ; seed p98 (PTB) — « persiste 6/7/8 s ».
- Hypothèse : le seed mélange la version LIVE et la version PTB 10.2.0 (Undetectable persistant après mouvement).
- Résolution : LIVE = [5] (tant qu'immobile) ; version persistante = PTB uniquement, non recoupée → UNRESOLVED pour les valeurs PTB.

#### CONFLICT-L3-94-02 : Superior Anatomy (portée / cooldown)
- Source A : seed p94 — 12 m, 10 s, cooldown 25 s.
- Source B : mémoire du modèle (version antérieure) — 8 m, cooldown 30 s ; non vérifiable cette session.
- Hypothèse : changement de valeurs entre 2024 et 2026 possible.
- Résolution : UNRESOLVED

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Whispers | 48/40/32 m | 48/40/32 m [1] | OK |
| Territorial Imperative | > 24 m, 4/5/6 s, CD 45 s | idem [2] | OK |
| Predator | aura 4 s, CD 60/50/40 s | idem [3] | OK |
| Distressing | TR +20/25/30 %, BP Deviousness | idem [4] | OK |
| Distressing (catégorie « vitesse d'action ») | « à partir de 10.2.0 » | effet LIVE = TR seulement | OK (étiqueté PTB) ; valeurs PTB NON VÉRIFIABLE |
| Insidious | Undetectable « jusqu'à votre prochaine action » | tant qu'immobile, coupé au mouvement [5] | IMPRÉCIS |
| Knock Out | seul effet palette (Hindered 5 %) | + effet principal : aura du survivant au sol limitée à 32/24/16 m [6] | IMPRÉCIS (effet principal omis) |
| Knock Out (PTB) | 10 m, Hindered 20 % | non recoupé | NON VÉRIFIABLE (PTB) |
| Shattered Hope | détruit le Boon, aura 6/7/8 s | idem [7] | OK |
| Dominance | coffres/totems « touchés », « avec révélation d'aura » | **1re** interaction ; aura **du prop** au tueur [8] | IMPRÉCIS |
| Hex: Crowd Control | 4/5/6 dernières fenêtres | idem (audit 9.5.0) [9] | OK (cœur) ; bonus NON VÉRIFIABLE |
| Coulrophobia | 20/25/30 %, « nerf 10.1.0 » | 20/25/30 % en 10.1.0 [9] | OK (sens nerf/buff NON VÉRIFIABLE) |
| Hex: The Third Seal | « les survivants que vous blessez » | mémoire : les 2/3/4 **derniers** touchés | NON VÉRIFIABLE (IMPRÉCIS probable) |
| Superior Anatomy | 12 m, 10 s, CD 25 s | non vérifié | NON VÉRIFIABLE (voir CONFLICT-L3-94-02) |
| 18 autres perks (Jagged Compass, Huntress Lullaby, Unnerving Presence, Hubris, Dissolution, Merciless Storm, Haunted Ground, Rancor, Iron Maiden, Mad Grit, Zanshin, Blood Echo, Forced Penance, Forced Hesitation, Genetic Limits, Alien Instinct…) | valeurs p94 | non vérifié (budget épuisé) | NON VÉRIFIABLE |
| PTB 10.2.0 p98 (Whispers, Distressing, Insidious, Knock Out, Shattered Hope, Dominance, Superior Anatomy, Dissolution) | valeurs PTB | aucune source PTB lue | NON VÉRIFIABLE (correctement étiquetées PTB dans le seed) |

## Questions ouvertes

1. Re-vérifier les 20 perks non vérifiées (budget WebSearch épuisé) — priorité : Jagged Compass (mécanique des crochets Fléau), Superior Anatomy (portée/CD), Alien Instinct, Blood Echo (cooldown ?), Hex: Huntress Lullaby (valeurs de régression), Rancor (l'Obsession voit-elle le tueur ?).
2. Les Scourge Hooks sont-ils visibles/distinguables côté survivant ? (clé pour l'indice observable de Jagged Compass).
3. Dissolution, Hex: Crowd Control : un indicateur de statut côté survivant existe-t-il ?
4. Coulrophobia 10.1.0 : buff ou nerf par rapport à la valeur précédente ?
5. Diminishing Returns (9.6.0) : Unnerving Presence et Huntress Lullaby (chances/zones de skill-check) sont-ils concernés ?
6. Valeurs PTB 10.2.0 de toutes les perks du périmètre (Knock Out, Insidious, Dominance, Shattered Hope…) — à vérifier dans le Dev Update 10.2.0 / notes PTB.
7. Predator : date exacte de la version « aura 4 s » (fil BHVR « Thoughts on new Predator »).

## Matériel pour la PERK DEDUCTION

> Règles HEURISTIC, construites sur les mécaniques vérifiées [1]-[9] quand c'est indiqué ; le reste sur des mécaniques UNCERTAIN.

1. **Coéquipier au sol (barre d'état) + aucune aura visible à distance** → Knock Out plausible [6] → se rapprocher de la dernière position connue, communiquer, ne pas conclure qu'il a été ramassé.
2. **Icône Hindered juste après avoir fait tomber une palette et couru** → Knock Out confirmé [6] → ne pas compter sur les pré-drops serrés ; garder de la marge avant la palette suivante.
3. **TR/heartbeat coupé net près d'un crochet + tueur non furtif + Kindred ne montre rien** → Insidious plausible [5] → peek les angles morts, écouter la respiration, approche à deux.
4. **Chase terminée derrière un obstacle + tueur revient droit sur toi 2-5 s après (+ jeton Distortion consommé)** → Predator [3] (ou Zanshin après un drop, UNCERTAIN) → après avoir semé, continuer à bouger 4 s puis changer d'axe.
5. **Premier coffre/totem touché instantanément bloqué par l'Entité** → Dominance quasi certain [8] → considérer sa position connue (aura du prop) et quitter la zone.
6. **Boon « éteint » introuvable / impossible à re-bénir** → Shattered Hope [7] → sortir du rayon quand le tueur approche un Boon ; prévoir un 2e emplacement.
7. **Heartbeat entendu sur un gen alors que le tueur est vu/entendu loin (aura d'un coéquipier, cri)** → Distressing plausible [4] → ne pas lâcher le gen sur le seul heartbeat, confirmer la distance.
8. **Fenêtre franchie qui reste bloquée + crépitement de totem Hex** → Hex: Crowd Control [9] → jouer palettes/loops sans fenêtre, faire cleanser le totem par un coéquipier.
9. **Exposed sur tous les survivants juste après un cleanse** → Hex: Haunted Ground (UNCERTAIN valeurs) → règle robuste : ne pas cleanser un Hex « sans effet visible » quand le tueur est proche ou qu'un coéquipier est en chase.
10. **Statut apparu sans action de ta part au moment d'un événement tueur (hook → Exhausted/Hemorrhage ou Oblivious ; coup → Exhausted ; stun → Exposed ; protection hit → Broken ; down proche → Hindered)** → Blood Echo / Alien Instinct / Genetic Limits / Hubris / Forced Penance / Forced Hesitation (valeurs UNCERTAIN) → lire le HUD après chaque événement et adapter (pas d'exhaustion planifiée, distance après stun, saves à > 16 m).

## Sources

[1] Whispers — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Whispers (+ fandom https://deadbydaylight.fandom.com/wiki/Whispers) — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[2] Territorial Imperative — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Territorial_Imperative — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[3] Predator — Official Dead by Daylight Wiki (fandom / wiki.gg) — https://deadbydaylight.fandom.com/wiki/Predator ; https://deadbydaylight.wiki.gg/wiki/Predator ; fil BHVR https://forums.bhvr.com/dead-by-daylight/discussion/429532/thoughts-on-new-predator — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[4] Distressing — Official Dead by Daylight Wiki (wiki.gg / fandom) — https://deadbydaylight.wiki.gg/wiki/Distressing — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[5] Insidious — Official Dead by Daylight Wiki (wiki.gg / fandom) — https://deadbydaylight.wiki.gg/wiki/Insidious ; fils BHVR https://forums.bhvr.com/dead-by-daylight/discussion/446900/insidious-rework — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[6] Knock Out — Official Dead by Daylight Wiki (wiki.gg / fandom) — https://deadbydaylight.wiki.gg/wiki/Knock_Out — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[7] Shattered Hope — Official Dead by Daylight Wiki (fandom / wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Shattered_Hope — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[8] Dominance — Official Dead by Daylight Wiki (fandom / wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Dominance — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[9] Audit local `kb/seed/audit_phase0.txt` (tableau des patchs 9.5.0 / 10.1.0 / PTB 10.2.0, fondé sur notes officielles et Dev Update 10.2.0) — fichier du projet, lu le 27/09/2026 (source secondaire interne)
