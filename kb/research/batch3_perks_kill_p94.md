# Lot 3 — Perks tueur vues du survivant, page 94 du guide seed (tier C)

**Couverture : 28/28 perks re-vérifiées sur page wiki complète (27/09/2026) ; dont 9 confirmées par note officielle** (8 VERIFIED_MULTI_SOURCE : Whispers, Insidious, Knock Out, Dominance, Hex: Crowd Control, Coulrophobia, Hubris, Superior Anatomy ; 1 VERIFIED_PRIMARY : Dissolution). Re-vérification LOT 12a.

Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 (15-21/09/2026) = **non LIVE**, toujours étiqueté PTB.
Méthode (LOT 12a) : pages wiki.gg complètes via API (`kb/sources/wiki_perks_digest.md`, brut `wiki_perks.json`) + notes officielles BHVR locales (`kb/sources/patches/official_*.txt`). Première passe (WebSearch, 8 perks) conservée comme source [1]-[8].
Notes de menace = **HEURISTIC**. Parties analytiques (indices, soupçonner/confirmer, adaptation, counterplay, erreurs) = **HEURISTIC / EXPERT OPINION**.

Périmètre (28 perks) : Whispers, Territorial Imperative, Predator, Distressing, Insidious, Knock Out, Shattered Hope, Dominance, Scourge Hook: Jagged Compass, Hex: Crowd Control, Hex: Huntress Lullaby, Unnerving Presence, Coulrophobia, Hubris, Dissolution, Superior Anatomy, Merciless Storm, Hex: Haunted Ground, Rancor, Hex: The Third Seal, Iron Maiden, Mad Grit, Zanshin Tactics, Blood Echo, Forced Penance, Forced Hesitation, Genetic Limits, Alien Instinct.

## ⚠ Points de méthode à lire avant d'utiliser le fichier

- **Piège du digest wiki** : pour **Distressing, Shattered Hope et Dissolution**, le texte marqué « LIVE (current) » dans le digest est en réalité **le texte PTB 10.2.0** (identique mot pour mot à la note officielle PTB 559, qui marque ces effets « (NEW) » / « (Rework) » / « (was …) »). Le wiki n'a pas encore d'onglet d'historique pour ces pages. La valeur LIVE a donc été reconstruite depuis la note 559 (« was … ») et/ou la première passe WebSearch.
- **Whispers** : LIVE « NON TROUVÉE » dans le digest → reconstruite depuis le change log 10.2.0 (« from 48 / 40 / 32 metres to 28 / 26 / 24 ») et la note 559 (« was 48/40/32m »).
- **Knock Out** : la première passe (WebSearch) décrivait un effet d'aura du survivant au sol (32/24/16 m) qui **n'existe plus depuis le rework 8.6.0** (page wiki complète, onglet 8.6.0). Correction appliquée partout (fiche, claims, écarts, matériel de déduction).
- Parties « indice observable / soupçonner / adaptation / counterplay » : **HEURISTIC**, ajustées quand la valeur corrigée changeait la déduction (Knock Out, Rancor, Hex: Huntress Lullaby, Hex: Crowd Control, Superior Anatomy, Iron Maiden, Dissolution, Distressing).

---

## Fiches

### Whispers — Générale
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (détection de proximité)
- **Effet LIVE + valeurs** : le tueur entend des murmures de l'Entité tant qu'au moins un survivant est à ≤ **48/40/32 m** de lui — VERIFIED_MULTI_SOURCE (LIVE reconstruite depuis le change log wiki 10.2.0 « from 48 / 40 / 32 metres » [10] + note PTB 559 « was 48/40/32m » [18]) ; « compte aussi les survivants accrochés et au sol » : détail du résumé WebSearch [1] seulement, non re-vérifié sur page complète (STRONG_SECONDARY)
- **PTB 10.2.0 (NON LIVE)** : murmures à ≤ 28/26/24 m ; **+5 % Haste** quand aucun survivant n'est dans ce rayon [10][18]
- **Indice observable (survivant)** : aucun indice direct (son uniquement côté tueur)
- **Soupçonner** : tueur qui balaie une zone vide sans hésiter puis « s'arrête de chercher » et repart ailleurs + qui tourne longtemps autour d'une zone où quelqu'un est caché sans voir de scratch marks → plausible
- **Confirmer** : écran de fin (perks visibles) ; en jeu, pas de confirmation fiable
- **Adaptation robuste** : ne pas compter sur la cachette « statique » près d'un gen quand le tueur rôde à < 30 m ; quitter la zone plutôt que se cacher
- **Counterplay** : se déplacer hors du rayon (≥ 48 m au pire) quand le tueur fouille ; le tueur ne sait que « quelqu'un est proche », pas où
- **Erreurs à ne pas faire** : rester accroupi derrière un rocher en pensant que l'absence de scratch marks suffit
- **Menace (HEURISTIC 0-3)** : SoloQ 1 / SWF 0-1
- **Écart avec le seed** : OK (48/40/32 m = LIVE, confirmé par [18])
- **Sources** : [1], [10], [18]

### Territorial Imperative — Huntress
- **Statut / catégorie** : LIVE 10.1.2a · info/aura
- **Effet LIVE + valeurs** : un survivant qui entre dans le Basement pendant que le tueur est à > 24 m de son entrée voit son aura révélée **4/5/6 s** ; cooldown **45 s** — STRONG_SECONDARY [2][10]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : aucun indice direct ; le signal sonore n'est **pas** audible par les survivants (bug corrigé en 9.2.1 : « Survivors could hear the audio cue on Territorial Imperative » [14])
- **Soupçonner** : tueur qui arrive droit au Basement depuis l'autre bout de la map peu après ton entrée (coffre, sauvetage) → plausible (alternative : Bitter Murmur/Nowhere to Hide, BBQ… non liées au Basement)
- **Confirmer** : écran de fin ; jeton de Distortion consommé à l'entrée du Basement
- **Adaptation robuste** : entrer au Basement uniquement pour décrocher ; pas de coffre du Basement quand le tueur n'est pas en chase ; ressortir vite
- **Counterplay** : Distortion (bloque l'aura, consomme un jeton = confirmation) ; entrer quand le tueur est engagé en chase
- **Erreurs à ne pas faire** : « farmer » le coffre du Basement / s'y cacher
- **Menace (HEURISTIC)** : SoloQ 0-1 / SWF 0
- **Écart avec le seed** : OK
- **Sources** : [2], [10], [14]

### Predator — Wraith
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (post-chase)
- **Effet LIVE + valeurs** : quand un survivant perd le tueur en chase, son aura est révélée **4 s** ; cooldown **60/50/40 s** — STRONG_SECONDARY [3][10] (rework 8.3.0, aura réduite de 6 à 4 s en 8.3.2 d'après le change log wiki)
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : aucun indice direct ; si tu as Distortion, perte d'un jeton juste après la fin de chase = aura lue
- **Soupçonner** : tu casses la ligne de vue, la chase « se termine » (musique qui retombe), et le tueur revient exactement sur toi 2-5 s après → plausible
- **Confirmer** : jeton de Distortion consommé au moment où la chase se termine
- **Adaptation robuste** : après avoir semé le tueur, **continuer à bouger ~4 s puis changer de direction** (la position lue devient fausse) ; ne pas s'arrêter pile derrière le premier obstacle
- **Counterplay** : Distortion ; Lucky Break/Quick & Quiet pour disparaître après la révélation ; un coéquipier qui prend l'aggro
- **Erreurs à ne pas faire** : se cacher accroupi immédiatement au coin du mur où le tueur t'a perdu
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK
- **Sources** : [3], [10]

### Distressing — Générale
- **Statut / catégorie** : LIVE 10.1.2a · autre (terror radius)
- **Effet LIVE + valeurs** : Terror Radius **+20/25/30 %** (valeurs depuis 8.4.0 d'après le change log wiki [10]) — STRONG_SECONDARY ; la note PTB 559 écrit « (was 20/23/30%) » → palier 2 en conflit (CONFLICT-L3-94-03). **Plus aucun effet Bloodpoints** : l'effet secondaire de bonus Deviousness a été **retiré en 8.4.0** (change log wiki) — la mention de la première passe [4] était OBSOLÈTE
- **Attention** : le texte « LIVE (current) » du digest (TR +30 % et réparation −6/7/8 %) est **le texte PTB** (cf. note 559)
- **PTB 10.2.0 (NON LIVE)** : TR **+30 %** (fixe) ; survivants dans le TR réparent **6/7/8 % plus lentement** (NEW) [18]
- **Indice observable (survivant)** : heartbeat perçu **plus loin que le TR de base** du tueur identifié (ex. tueur à TR 32 m entendu vers ~40 m)
- **Soupçonner** : heartbeat permanent sur plusieurs gens alors que le tueur est vu loin (aura via Kindred/Bond, cri d'un coéquipier) → plausible (alternatives : Unnerving Presence/Coulrophobia exploitant le TR, add-ons de TR)
- **Confirmer** : comparer la distance réelle (aura d'un coéquipier chassé, Alert, Bond) et l'intensité du heartbeat ; en LIVE, **aucun ralentissement de réparation** ne vient de Distressing (un gen lent dans le TR = autre perk)
- **Adaptation robuste** : **ne pas lâcher un gen au premier heartbeat** ; confirmer la direction/distance avant de fuir
- **Counterplay** : Spine Chill (portée fixe, indépendante du TR), infos d'équipe ; Distressing aide aussi le survivant (préavis plus long)
- **Erreurs à ne pas faire** : abandonner les gens en boucle « parce que le cœur bat »
- **Menace (HEURISTIC)** : SoloQ 1 (panique, perte de temps) / SWF 0
- **Écart avec le seed** : OK sur le TR (20/25/30 %) ; **FAUX** sur « Bonus de Bloodpoints en Deviousness » (retiré en 8.4.0) ; PTB correctement annoncé « à partir de 10.2.0 » (valeurs PTB du seed = 559 : OK)
- **Sources** : [4], [10], [18]

### Insidious — Générale
- **Statut / catégorie** : LIVE 10.1.2a · stealth
- **Effet LIVE + valeurs** : après **3/2/1 s** immobile, Undetectable **tant que le tueur reste immobile** ; se désactive dès qu'il recommence à bouger — VERIFIED_MULTI_SOURCE (wiki, onglet 9.1.0 [10] ; note 9.1.0 « 3/2/1 second (was 4/3/2) » [12] ; note 559 « was 3/2/1s » [18])
- **PTB 10.2.0 (NON LIVE)** : Undetectable après **2 s** d'immobilité ; persiste **6/7/8 s** une fois que le tueur agit (NEW) [10][18]
- **Indice observable (survivant)** : disparition du TR/heartbeat et de la red stain sans tueur furtif par nature ; **respiration du tueur audible** ; **« stinger » sonore** quand il reprend son mouvement ; aura du tueur non visible (Undetectable bloque les auras)
- **Soupçonner** : TR coupé net près d'un crochet/gen 3 gens + tueur non-furtif + Kindred qui ne montre rien → plausible
- **Confirmer** : voir le tueur immobile sans red stain / entendre sa respiration à côté d'un crochet ; en LIVE, le TR **revient dès qu'il bouge** (pas de persistance)
- **Adaptation robuste** : **approcher les crochets en « peekant » les angles morts** (derrière les murs proches, casiers) ; ne pas unhook dès que le TR « disparaît »
- **Counterplay** : venir à deux (un appât, un sauveteur) ; Spine Chill (fonctionne sur la ligne de vue, pas sur le TR — interaction exacte avec Undetectable UNCERTAIN) ; casque/son pour la respiration
- **Erreurs à ne pas faire** : considérer l'absence de heartbeat comme une preuve que le tueur est parti
- **Menace (HEURISTIC)** : SoloQ 1-2 (proxy-camp furtif) / SWF 1
- **Écart avec le seed** : IMPRÉCIS (seed : « jusqu'à votre prochaine action » ; LIVE : tant qu'il reste immobile, coupé au mouvement)
- **Sources** : [5], [10], [12], [18]

### Knock Out — Cannibal
- **Statut / catégorie** : LIVE 10.1.2a · chase (anti pré-drop)
- **Effet LIVE + valeurs** : un survivant qui s'éloigne de **> 6 m** d'une palette dans les **6 s** après l'avoir fait tomber est **Hindered 5 %** pendant **3/4/5 s** — VERIFIED_MULTI_SOURCE (wiki, onglet 8.6.0 [10] ; note 559 « was 6m and 5% » [18]). **Aucun effet d'aura** en LIVE : la limitation d'aura du survivant au sol (32/24/16 m) décrite par la première passe [6] est l'**ancienne version, retirée au rework 8.6.0** (OBSOLÈTE)
- **PTB 10.2.0 (NON LIVE)** : > **10 m** dans les 6 s, **Hindered 20 %** 3/4/5 s ; l'effet prend fin si la palette est cassée (NEW) [10][18]
- **Indice observable (survivant)** : **icône Hindered** sur le HUD juste après avoir fait tomber une palette et couru
- **Soupçonner** : léger ralentissement (5 %) en quittant une palette que tu viens de faire tomber → quasi certain si l'icône Hindered apparaît
- **Confirmer** : icône Hindered après palette (≥ 6 m parcourus dans les 6 s)
- **Adaptation robuste** : ne pas compter sur un « pré-drop + fuite » ultra-serré ; 5 % pendant 3-5 s = ~0,6-1 m perdu (HEURISTIC) → garder de la marge avant la palette suivante ; boucler autour de la palette plutôt que la quitter
- **Counterplay** : jouer la palette tombée (loop) au lieu de fuir vers le tile suivant immédiatement
- **Erreurs à ne pas faire** : enchaîner pré-drop + course longue vers un tile lointain
- **Menace (HEURISTIC)** : SoloQ 0-1 / SWF 0-1 (abaissée : l'effet de slug caché n'existe plus en LIVE)
- **Écart avec le seed** : OK (seed = LIVE exact ; « rework majeur prévu en 10.2.0 » = OK, cf. 559). L'IMPRÉCIS de la première passe est **retiré** (il reposait sur une version antérieure à 8.6.0)
- **Sources** : [6] (obsolète sur l'aura), [10], [18]

### Shattered Hope — Générale
- **Statut / catégorie** : LIVE 10.1.2a · autre (anti-Boon) / info
- **Effet LIVE + valeurs** : le tueur **détruit** les Boon Totems au lieu de les éteindre ; les survivants dans le rayon du Boon à ce moment voient leur aura révélée **6/7/8 s** — STRONG_SECONDARY (première passe [7] ; la note 559 [18] confirme que la destruction des Boons est l'effet existant et que tout le reste est « (Rework)/(NEW) ») ; exception : l'aura n'est pas révélée si le Boon détruit est Shadow Step [7]
- **Attention** : le texte « LIVE (current) » du digest (totems bloqués 16/18/20 s, auras des totems bénis) est **le texte PTB** (cf. 559)
- **PTB 10.2.0 (NON LIVE)** : Rework : les Boons éteints sont détruits ; à chaque totem béni, purifié ou détruit : **Dull Totems et Hex Totems bloqués 16/18/20 s** ; aura des Boon Totems **16/18/20 s** (plus d'aura des survivants) [18]
- **Indice observable (survivant)** : le totem Boon **disparaît** (pas de totem terne à re-bénir) ; tu perds l'effet du Boon ; tu peux être poursuivi droit après
- **Soupçonner** : Boon « éteint » mais impossible à re-bénir au même endroit → Shattered Hope quasi certain
- **Confirmer** : totem absent à l'emplacement du Boon
- **Adaptation robuste** : **sortir du rayon du Boon quand le tueur s'en approche** ; ne pas re-bénir le même totem en boucle ; avoir un second emplacement de Boon en tête
- **Counterplay** : Boon placé dans une zone morte peu visitée ; Shadow Step (bloque l'aura) ; Hex: Pentimento peut réutiliser le totem détruit (côté tueur)
- **Erreurs à ne pas faire** : rester soigner sous Circle of Healing pendant que le tueur casse le Boon
- **Menace (HEURISTIC)** : SoloQ 1 (si Boon joué) / SWF 1
- **Écart avec le seed** : OK (LIVE) ; valeurs PTB du seed (« bloque les totems 16/18/20 s ») = 559 : OK (PTB)
- **Sources** : [7], [10], [18]

### Dominance — Dark Lord
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (props) / anti-objet
- **Effet LIVE + valeurs** : la **première** interaction d'un survivant avec chaque coffre et chaque totem : l'Entité le bloque **8/12/16 s** ; l'aura **du prop bloqué** est révélée en blanc au tueur (pas celle du survivant) — VERIFIED_MULTI_SOURCE (wiki, onglet 8.4.0 [10] ; note 559 « was Totems and Chests », « was 8/12/16s » [18]) ; buff 4/6/8 → 8/12/16 s en 8.4.0 (change log wiki)
- **PTB 10.2.0 (NON LIVE)** : **totems seulement** (bénir/purifier), bloqués **25 s** ; le survivant **crie** et son aura est révélée **3/4/5 s** (NEW) [10][18]
- **Indice observable (survivant)** : **coffre/totem bloqué par l'Entité** (pointes) dès que tu commences l'interaction
- **Soupçonner** : premier coffre/totem bloqué alors qu'aucun autre perk de blocage n'est suspecté → quasi certain
- **Confirmer** : blocage visuel du prop après la première interaction
- **Adaptation robuste** : considérer que **ta position est probablement connue** (aura du prop) ; ne pas attendre devant le prop 8-16 s ; faire les totems/coffres quand le tueur est en chase ailleurs
- **Counterplay** : cleanse/ouverture pendant une chase d'un coéquipier ; après blocage, repartir et revenir plus tard (seule la première interaction déclenche)
- **Erreurs à ne pas faire** : attendre la fin du blocage à côté du coffre
- **Menace (HEURISTIC)** : SoloQ 0-1 / SWF 0
- **Écart avec le seed** : IMPRÉCIS (seed : « touchés… avec révélation d'aura » → c'est la **première** interaction, et l'aura révélée est celle du **prop**, pas du survivant ; la révélation du survivant = PTB)
- **Sources** : [8], [10], [18]

### Scourge Hook: Jagged Compass — Houndmaster
- **Statut / catégorie** : LIVE 10.1.2a · scourge / info (générateur)
- **Effet LIVE + valeurs** : au début de la partie, **4 crochets** deviennent Scourge Hooks (aura blanche **pour le tueur**) ; un crochet **normal** d'où un survivant est décroché devient Scourge Hook ; accrocher sur un Scourge Hook révèle au tueur l'aura du **gen le plus avancé** (jaune) **6/8/10 s** — STRONG_SECONDARY [10] (note 9.0.1 : bug de conversion des crochets avec Victor corrigé [19])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : aucun indice direct sur le gen ; la visibilité des Scourge Hooks côté survivant n'est pas décrite par le wiki → UNCERTAIN (HEURISTIC)
- **Soupçonner** : tueur qui quitte un crochet et va droit sur le gen le plus avancé → plausible (alternatives : Nowhere to Hide, Surveillance, Deadlock/Grim Embrace) (HEURISTIC)
- **Confirmer** : écran de fin
- **Adaptation robuste** : pendant un accrochage, ne pas rester seul sur le gen le plus avancé si le tueur est proche ; se décaler sur un 2e gen (HEURISTIC) ; le nombre de Scourge Hooks **augmente à chaque décrochage** → l'effet devient plus fréquent au fil de la partie
- **Counterplay** : répartir la progression ; ne pas laisser un gen à 90 % « en vitrine » (HEURISTIC)
- **Erreurs à ne pas faire** : empiler 3 survivants sur le gen le plus avancé pendant un hook (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 0-1
- **Écart avec le seed** : IMPRÉCIS (valeurs OK 6/8/10 s ; omet les **4 Scourge Hooks initiaux**)
- **Sources** : [10], [19]

### Hex: Crowd Control — Trickster
- **Statut / catégorie** : LIVE 10.1.2a · hex / chase
- **Effet LIVE + valeurs** : le **premier** vault moyen/rapide (rushed) d'un survivant sur une fenêtre allume un totem terne (Hex) ; les **4/5/6 dernières fenêtres** franchies en vault moyen/rapide sont **bloquées pour tous les survivants** ; le tueur passe les fenêtres bloquées **15 %** plus vite et voit leur aura dans **24 m** ; effets jusqu'à ce que le totem soit purifié ou béni — VERIFIED_MULTI_SOURCE (wiki [10] ; note 9.5.0, rework [15])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **fenêtre bloquée par l'Entité** juste après l'avoir franchie en vault rapide ; **aucun totem Hex allumé avant ce premier vault** (le Hex s'allume à ce moment-là) ; crépitement du totem ensuite (HEURISTIC)
- **Soupçonner** : fenêtre que tu viens de passer bloquée (Bamboozle ne bloque que pour un temps limité) → quasi certain (HEURISTIC)
- **Confirmer** : plusieurs fenêtres restant bloquées + totem Hex trouvé
- **Adaptation robuste** : en chase, privilégier les **palettes** et les loops sans fenêtre ; une fenêtre bloquée reste **franchissable par le tueur (+15 %)** → ne pas boucler autour ; nettoyer le totem tôt (cleanse = fin des effets) (HEURISTIC)
- **Counterplay** : un coéquipier cleanse ou bénit le totem pendant la chase ; vault **lent** (non-rushed) ne déclenche pas le blocage ; Small Game / Detective's Hunch (HEURISTIC)
- **Erreurs à ne pas faire** : revenir en boucle sur une fenêtre déjà utilisée ; chercher un totem Hex dès le début de partie (il n'est allumé qu'au premier vault) (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 1-2 / SWF 1
- **Écart avec le seed** : OK (4/5/6 fenêtres, vault +15 %, aura 24 m : tout confirmé par 9.5.0)
- **Sources** : [9], [10], [15]

### Hex: Huntress Lullaby — Huntress
- **Statut / catégorie** : LIVE 10.1.2a · hex / slowdown (skill-checks)
- **Effet LIVE + valeurs** : survivants qui **soignent ou réparent** : pénalité de raté de skill-check **+2/4/6 %** (dès le début, sans jeton) ; +1 jeton par accrochage (max 5) ; délai entre le son d'avertissement et l'apparition du skill-check réduit de **14 % par jeton** (−14/−28/−42/−56 %), **son supprimé à 5 jetons** ; jusqu'à purification/bénédiction du totem — STRONG_SECONDARY [10]. **Aucune réduction de la zone « Good »**
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **son d'avertissement de skill-check de plus en plus tardif** puis absent ; zone de skill-check de **taille normale** ; totem Hex allumé (HEURISTIC)
- **Soupçonner** : skill-checks « surprise » sans ding + ratés inhabituels après plusieurs hooks → quasi certain ; zone rétrécie = plutôt Unnerving Presence (HEURISTIC)
- **Confirmer** : totem Hex trouvé ; absence totale du ding après 5 accrochages
- **Adaptation robuste** : surveiller visuellement la zone de skill-check ; cleanser tôt (les jetons s'accumulent à chaque hook) (HEURISTIC)
- **Counterplay** : Small Game/Detective's Hunch ; Stake Out ; cleanse prioritaire (HEURISTIC)
- **Erreurs à ne pas faire** : réparer/soigner en regardant ailleurs (caméra tournée) sous Lullaby (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : **FAUX** sur « zone Good qui rétrécit » (n'existe pas) ; IMPRÉCIS sur la pénalité (seed la rattache aux 5 jetons ; elle s'applique dès le début, soin inclus)
- **Sources** : [10]

### Unnerving Presence — Trapper
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (skill-checks)
- **Effet LIVE + valeurs** : dans le TR, survivants qui **réparent ou soignent** : chance de skill-check **+10 %**, zone de réussite réduite de **40/50/60 %** — STRONG_SECONDARY [10] ; 9.6.0 : le Diminishing Returns sur les modificateurs positifs de chance de skill-check ne s'applique plus qu'**au sein d'un même rôle** (ONE-TWO-THREE-FOUR! ne réduit plus Unnerving) [16]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **zones de skill-check nettement plus petites** uniquement **dans le heartbeat** (HEURISTIC)
- **Soupçonner** : skill-checks rétrécis + fréquents seulement quand le TR est présent → quasi certain (alternative : Coulrophobia sur soins uniquement) (HEURISTIC)
- **Confirmer** : comparer la taille de zone hors TR / dans TR
- **Adaptation robuste** : réparer hors TR quand possible ; ne pas soigner dans le TR (HEURISTIC)
- **Counterplay** : Stake Out, Hyperfocus (risque) (HEURISTIC)
- **Erreurs à ne pas faire** : tenter les Great sur une zone réduite (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 0-1 / SWF 0
- **Écart avec le seed** : OK (+10 %, 40/50/60 %)
- **Sources** : [10], [16]

### Coulrophobia — Clown
- **Statut / catégorie** : LIVE 10.1.2a · anti-soin
- **Effet LIVE + valeurs** : dans le TR, toutes les vitesses de soin **−20/25/30 %** ; aiguille des skill-checks de soin **+50 %** plus rapide — VERIFIED_MULTI_SOURCE (wiki [10] ; note 10.1.0 « 20/25/30% slower (was 30/40/50%) », « spin 50% faster » [17])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : barre de soin lente dans le TR ; **aiguille de skill-check de soin plus rapide** (HEURISTIC)
- **Soupçonner** : soin anormalement lent uniquement dans le TR + skill-check rapide → quasi certain (HEURISTIC)
- **Confirmer** : vitesse de soin normale hors TR
- **Adaptation robuste** : **ne jamais soigner dans le TR** ; se déplacer avant de soigner (HEURISTIC)
- **Counterplay** : soin loin du tueur ; Botany/medkit compensent partiellement (DR 9.6.0 : les malus négatifs ne se compensent qu'au sein du même rôle [16] — interaction exacte avec les bonus survivants UNCERTAIN) (HEURISTIC)
- **Erreurs à ne pas faire** : soigner au pied du crochet avec le tueur à 20 m (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 0-1
- **Écart avec le seed** : OK (20/25/30 %, +50 % ; « nerf au 10.1.0 » confirmé : 30/40/50 → 20/25/30 %)
- **Sources** : [9], [10], [17]

### Hubris — Knight
- **Statut / catégorie** : LIVE 10.1.2a · chase (anti-stun)
- **Effet LIVE + valeurs** : le survivant qui étourdit le tueur **par n'importe quel moyen** devient Exposed **20/25/30 s** ; cooldown **20 s** — VERIFIED_MULTI_SOURCE (wiki [10] ; note 9.1.0 « 20/25/30 seconds (was 10/15/20) » [12]) ; cooldown : STRONG_SECONDARY [10]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **icône Exposed** juste après un stun (palette, Head On, flashlight…) (HEURISTIC)
- **Soupçonner / Confirmer** : Exposed immédiatement après stun → confirmé (HEURISTIC)
- **Adaptation robuste** : après un stun, **distance maximale et ne pas reprendre de risque** pendant 20-30 s ; un 2e stun dans les 20 s ne redéclenche pas (cooldown) (HEURISTIC)
- **Counterplay** : ne stun que quand le gain est net (palette vers un autre loop) ; les effets d'Endurance ne suppriment pas Exposed (principe — interactions précises UNCERTAIN) (HEURISTIC)
- **Erreurs à ne pas faire** : rester au contact du tueur après le stun en croyant avoir gagné du temps (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK (20/25/30 s, CD 20 s)
- **Sources** : [10], [12]

### Dissolution — Dredge
- **Statut / catégorie** : LIVE 10.1.2a · chase (anti-palette)
- **Effet LIVE + valeurs** : **3 s** après qu'un survivant a subi des dégâts (**toute source**), pendant **12/16/20 s**, la prochaine palette qu'il franchit en vault rapide dans le TR est **détruite** — VERIFIED_PRIMARY (note 559 : « (was any damage and 12/16/20s) » [18] ; délai 3 s inchangé) ; libellé « destroys » depuis 9.5.0 [15]
- **Attention** : le texte « LIVE (current) » du digest (attaque de base, 13/14/15 s) est **le texte PTB** (cf. 559)
- **PTB 10.2.0 (NON LIVE)** : déclenchée seulement par des dégâts d'**attaque de base** ; fenêtre **13/14/15 s** [18]
- **Indice observable (survivant)** : **palette qui se brise sous toi** en vault rapide ; icône de statut côté survivant : UNCERTAIN (HEURISTIC)
- **Soupçonner** : palette détruite lors de ton vault rapide 3-20 s après un coup (y compris un coup de pouvoir) → quasi certain (HEURISTIC)
- **Adaptation robuste** : après avoir été touché, **ne pas faire de vault rapide de palette** pendant ~20 s (de 3 s à 15-23 s après le coup) ; privilégier fenêtres / vault lent (HEURISTIC)
- **Counterplay** : utiliser les palettes debout comme obstacles sans les vaulter vite ; sortir du TR avant de vaulter (HEURISTIC)
- **Erreurs à ne pas faire** : fast-vault une palette « de sauvetage » juste après un coup (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 0-1
- **Écart avec le seed** : OK (3 s, 12/16/20 s, « prend un coup ») ; PTB « attaques de base uniquement » = 559 : OK (PTB)
- **Sources** : [10], [15], [18]

### Superior Anatomy — Mastermind
- **Statut / catégorie** : LIVE 10.1.2a · chase (anti-fenêtre)
- **Effet LIVE + valeurs** : quand un survivant fait un vault moyen/rapide à ≤ **12 m** du tueur, son **prochain** vault est **30/35/40 %** plus rapide ; l'effet se désactive **après ce vault** ; cooldown **25 s** — VERIFIED_MULTI_SOURCE (wiki, onglet 9.0.0 [10] ; note 9.0.0 « 12 meters (was 8) », « 25 seconds (was 30) » [11] ; note 559 « was basic-vault once faster and 25s cooldown » [18])
- **PTB 10.2.0 (NON LIVE)** : bonus de vault actif **10 s** (plusieurs vaults) ; cooldown **20 s** [10][18]
- **Indice observable (survivant)** : le tueur **vault la fenêtre derrière toi presque instantanément** (une seule fois) (HEURISTIC)
- **Soupçonner / Confirmer** : vault du tueur anormalement rapide juste après ton fast vault, puis vault normal au passage suivant (hors Bamboozle/Wesker) (HEURISTIC)
- **Adaptation robuste** : sur fenêtre, ne pas enchaîner vault → vault quand le tueur est à ≤ 12 m ; après son vault accéléré, le perk est en **cooldown 25 s** → la fenêtre redevient jouable (HEURISTIC)
- **Counterplay** : utiliser la fenêtre comme menace sans la franchir quand le tueur est proche ; vault lent hors portée (HEURISTIC)
- **Erreurs à ne pas faire** : « vault spam » sur une même fenêtre avec le tueur collé (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : **PTB-comme-LIVE (partiel)** : 12 m et CD 25 s = LIVE (OK), mais « pendant 10 s » = durée du PTB 10.2.0 (LIVE : un seul vault)
- **Sources** : [10], [11], [18]

### Merciless Storm — Onryō
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (blocage)
- **Effet LIVE + valeurs** : à **90 %** de progression, tous les survivants qui réparent ce gen subissent des skill-checks continus jusqu'à la fin ; raté ou interruption (par tout moyen) → gen bloqué **16/18/20 s** ; **une fois par gen et par partie** — STRONG_SECONDARY [10] (note 9.4.1 : le 1er skill-check n'est plus affecté par Teamwork: Full Circuit [20])
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **série de skill-checks enchaînés à 90 %** ; gen bloqué par l'Entité après raté/arrêt (HEURISTIC)
- **Soupçonner / Confirmer** : skill-checks en rafale au dernier 10 % → confirmé (HEURISTIC)
- **Adaptation robuste** : **ne pas lâcher un gen à 90 %** ; finir à 2 si possible ; éviter d'amener le tueur sur un gen à 90 % ; un gen déjà « passé » par Merciless ne le redéclenche plus (HEURISTIC)
- **Counterplay** : Stake Out, Hyperfocus (attention), réparer avec la caméra fixée sur l'écran de skill-check (HEURISTIC)
- **Erreurs à ne pas faire** : commencer les 10 % finaux quand le tueur arrive (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 0-1
- **Écart avec le seed** : OK (16/18/20 s ; omet « une fois par gen », mineur)
- **Sources** : [10], [20]

### Hex: Haunted Ground — Spirit
- **Statut / catégorie** : LIVE 10.1.2a · hex / slugging (Exposed)
- **Effet LIVE + valeurs** : 2 totems Hex au début ; **bénir ou purifier** l'un d'eux déclenche le piège : **tous** les survivants Exposed **40/50/60 s** ; le second totem s'éteint ; perk désactivée pour le reste de la partie — STRONG_SECONDARY [10]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **icône Exposed pour tout le monde juste après un cleanse/une bénédiction** ; un Hex qui ne semble rien faire avant cleanse (HEURISTIC)
- **Soupçonner** : deux totems Hex trouvés alors qu'aucun effet Hex n'est perceptible → plausible (piège) (HEURISTIC)
- **Confirmer** : Exposed collectif immédiatement après cleanse
- **Adaptation robuste** : **ne pas cleanser ni bénir un Hex « inutile » quand le tueur est proche** ou quand plusieurs survivants sont en danger ; si déclenché, fuir/éviter tout contact 40-60 s (HEURISTIC)
- **Counterplay** : SWF : annoncer avant de cleanser ; cleanser pendant une chase lointaine ; Detective's Hunch (HEURISTIC)
- **Erreurs à ne pas faire** : cleanser par réflexe pendant que le tueur chase un blessé ; croire qu'un **Boon** posé dessus est sans risque (la bénédiction déclenche aussi) (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : OK (40/50/60 s) ; IMPRÉCIS mineur (bénir déclenche aussi)
- **Sources** : [10]

### Rancor — Spirit
- **Statut / catégorie** : LIVE 10.1.2a · endgame / info
- **Effet LIVE + valeurs** : à chaque gen terminé, **tous les survivants crient** et déclenchent une **Loud Noise Notification** à leur position (persiste **3 s**) ; l'aura **du tueur** est révélée à l'Obsession **5/4/3 s** ; portes alimentées : l'Obsession est **Exposed jusqu'à la fin** et peut être tuée à la main — STRONG_SECONDARY [10]. **Pas de lecture d'aura des survivants** (correction de la première version de la fiche)
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **ton personnage crie tout seul** à chaque gen terminé ; si tu es l'Obsession, **tu vois l'aura du tueur** 3-5 s à chaque gen ; en endgame, l'Obsession est Exposed (HEURISTIC)
- **Soupçonner** : cri involontaire de tous les survivants au moment d'un gen terminé → quasi certain (HEURISTIC)
- **Confirmer** : Obsession qui voit l'aura du tueur à la fin d'un gen ; Obsession Exposed dès les portes alimentées
- **Adaptation robuste** : **bouger juste après chaque gen terminé** (la position est connue via la notification de bruit) ; **l'Obsession se tient loin du tueur en endgame** et sort en priorité ; l'Obsession exploite l'aura du tueur pour se placer (HEURISTIC)
- **Counterplay** : Distortion **n'aide pas** (ce n'est pas une lecture d'aura) ; Calm Spirit (suppression des cris) : interaction UNCERTAIN ; l'équipe couvre l'Obsession à la sortie (HEURISTIC)
- **Erreurs à ne pas faire** : rester sur place (gen voisin, cachette) après un cri de Rancor ; l'Obsession qui fait du « heroic » en endgame (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 1-2 (Obsession) / SWF 1
- **Écart avec le seed** : **FAUX** (seed : « vous montre tous les survivants pendant 3 s » → c'est un **cri + Loud Noise Notification** 3 s, et le seed omet l'aura du tueur donnée à l'Obsession) ; partie endgame OK
- **Sources** : [10]

### Hex: The Third Seal — Hag
- **Statut / catégorie** : LIVE 10.1.2a · hex / info (Blindness)
- **Effet LIVE + valeurs** : les **2/3/4 derniers** survivants touchés par une **attaque de base ou spéciale** sont Blindness en permanence tant que le totem tient (jusqu'à purification/bénédiction) — STRONG_SECONDARY [10] ; condition « attaque de base ou spéciale » confirmée par la note 9.2.0 (bug : se déclenchait sur toute perte d'état de santé) [13] → VERIFIED_MULTI_SOURCE pour la condition
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **icône Blindness** après un coup ; perte des auras (Kindred, Bond…) (HEURISTIC)
- **Soupçonner / Confirmer** : Blindness après un coup → confirmé (hors Mindbreaker/add-ons) (HEURISTIC)
- **Adaptation robuste** : chercher/cleanser le totem ; communiquer vocalement (SWF) à la place des auras ; un 3e-5e survivant touché « libère » le plus ancien (HEURISTIC)
- **Counterplay** : Detective's Hunch (vision totems — interaction avec Blindness UNCERTAIN), Small Game (HEURISTIC)
- **Erreurs à ne pas faire** : compter sur Kindred au crochet (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 0
- **Écart avec le seed** : IMPRÉCIS (seed : « les 2/3/4 survivants que vous blessez » → les 2/3/4 **derniers** touchés par attaque de base/spéciale)
- **Sources** : [10], [13]

### Iron Maiden — Legion
- **Statut / catégorie** : LIVE 10.1.2a · autre (anti-casier) / Exposed
- **Effet LIVE + valeurs** : fouille des casiers vides **30/40/50 %** plus rapide ; survivant qui sort d'un casier : **cri + Loud Noise Notification** (persiste **4 s**) + Exposed **30 s** — STRONG_SECONDARY [10]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **cri + icône Exposed en sortant d'un casier** (HEURISTIC)
- **Soupçonner / Confirmer** : Exposed à la sortie d'un casier → confirmé (HEURISTIC)
- **Adaptation robuste** : éviter les casiers (hors Head On/DS au bon moment) ; si utilisé, attendre que le tueur soit loin et **quitter la zone** (la notification de bruit donne ta position) (HEURISTIC)
- **Counterplay** : ne pas utiliser les casiers comme cachette ; Distortion n'aide pas (notification de bruit, pas aura) (HEURISTIC)
- **Erreurs à ne pas faire** : casier pour se cacher du tueur proche (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 0-1 / SWF 0
- **Écart avec le seed** : OK sur les valeurs (30/40/50 %, Exposed 30 s, 4 s) ; IMPRÉCIS mineur (« révélé 4 s » = notification de bruit, pas aura)
- **Sources** : [10]

### Mad Grit — Legion
- **Statut / catégorie** : LIVE 10.1.2a · autre (transport)
- **Effet LIVE + valeurs** : pendant le transport : pas de cooldown sur attaque de base **ratée** ; chaque coup réussi sur un autre survivant **met en pause** la progression de débattement **2/3/4 s** — STRONG_SECONDARY [10]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : le tueur **frappe en portant** sans ralentir après un raté (HEURISTIC)
- **Soupçonner / Confirmer** : tueur qui swing en portant et récupère instantanément → quasi certain (HEURISTIC)
- **Adaptation robuste** : **ne pas body-block un tueur qui porte** ; garder ≥ 3-4 m ; flashlight/palette save seulement (HEURISTIC)
- **Counterplay** : saves à distance (flashlight, palette), pas au corps à corps (HEURISTIC)
- **Erreurs à ne pas faire** : se coller au tueur pour « prendre le coup » (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK
- **Sources** : [10]

### Zanshin Tactics — Oni
- **Statut / catégorie** : LIVE 10.1.2a · info/aura (map + palette)
- **Effet LIVE + valeurs** : aura des **palettes et fenêtres** dans **32 m** (plus de murs cassables depuis 8.3.0) ; survivant qui fait tomber une palette : aura révélée **3/4/5 s** (réduit de 6/7/8 en 8.3.2) — STRONG_SECONDARY [10]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : aucun indice direct ; jeton de Distortion consommé juste après un drop (HEURISTIC)
- **Soupçonner** : tueur qui revient droit sur toi juste après un drop de palette hors ligne de vue → plausible (HEURISTIC)
- **Adaptation robuste** : après un drop, **ne pas rester derrière la palette** ; changer de direction (HEURISTIC)
- **Counterplay** : Distortion (HEURISTIC)
- **Erreurs à ne pas faire** : drop + hide à côté (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 0-1 / SWF 0
- **Écart avec le seed** : OK (32 m, 3/4/5 s)
- **Sources** : [10]

### Blood Echo — Oni
- **Statut / catégorie** : LIVE 10.1.2a · anti-soin / chase
- **Effet LIVE + valeurs** : à chaque accrochage, **tous** les survivants blessés deviennent Exhausted et Haemorrhage **20/25/30 s** ; **aucun cooldown** (retiré en 8.3.0) — STRONG_SECONDARY [10]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **icônes Exhausted + Haemorrhage** au moment d'un accrochage alors que tu es blessé (HEURISTIC)
- **Soupçonner / Confirmer** : Exhausted sans avoir utilisé de perk d'exhaustion au moment d'un hook → confirmé (HEURISTIC)
- **Adaptation robuste** : ne pas compter sur son perk d'exhaustion juste après un accrochage adverse ; se soigner avant le prochain hook (se redéclenche à **chaque** hook) (HEURISTIC)
- **Counterplay** : rester sain ; perks non-exhaustion (HEURISTIC)
- **Erreurs à ne pas faire** : aller au crochet blessé en comptant sur Sprint Burst/Lithe (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK (20/25/30 s ; absence de cooldown confirmée)
- **Sources** : [10]

### Forced Penance — Executioner
- **Statut / catégorie** : LIVE 10.1.2a · anti-soin (Broken)
- **Effet LIVE + valeurs** : un survivant qui déclenche un coup protecteur (Protection Hit) devient Broken **60/70/80 s** — STRONG_SECONDARY [10]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **icône Broken** après avoir pris un coup pour un coéquipier (HEURISTIC)
- **Soupçonner / Confirmer** : Broken après un protection hit → confirmé (HEURISTIC)
- **Adaptation robuste** : réserver les coups protecteurs aux moments décisifs (endgame, sauvetage) (HEURISTIC)
- **Counterplay** : body-block sans prendre le coup ; Borrowed Time interaction UNCERTAIN (HEURISTIC)
- **Erreurs à ne pas faire** : « farmer » des protection hits en mid-game (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 0-1 / SWF 1 (SWF prend plus de protection hits)
- **Écart avec le seed** : OK
- **Sources** : [10]

### Forced Hesitation — Singularity
- **Statut / catégorie** : LIVE 10.1.2a · slugging / chase
- **Effet LIVE + valeurs** : quand un survivant passe à l'état Dying **par n'importe quel moyen**, les autres survivants à ≤ **16 m** de lui sont **Hindered 20 %** pendant **10 s** ; cooldown **40/35/30 s** — STRONG_SECONDARY [10] ; icône de debuff corrigée en 9.2.1 [14] ; Plot Twist ne peut plus le déclencher (9.5.0) [15]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **icône Hindered** quand un coéquipier tombe près de toi (icône présente depuis le correctif 9.2.1) (HEURISTIC)
- **Soupçonner / Confirmer** : Hindered au moment du down d'un proche → confirmé (HEURISTIC)
- **Adaptation robuste** : **ne pas suivre la chase de près** ; attendre à > 16 m pour un save (HEURISTIC)
- **Counterplay** : saves à distance (flashlight longue portée, palette), pas de body-block collé (HEURISTIC)
- **Erreurs à ne pas faire** : « shadow » la chase à 5 m pour un save (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK (16 m, 20 %, 10 s, CD 40/35/30 s ; « quand vous mettez au sol » ≈ « par n'importe quel moyen », mineur)
- **Sources** : [10], [14], [15]

### Genetic Limits — Singularity
- **Statut / catégorie** : LIVE 10.1.2a · chase (Exhausted)
- **Effet LIVE + valeurs** : tout survivant qui perd un état de santé **par n'importe quel moyen** devient Exhausted **6/7/8 s** — STRONG_SECONDARY [10] ; appliqué au moment même de la perte d'état depuis 9.5.0 [15]
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **icône Exhausted** juste après un coup (HEURISTIC)
- **Soupçonner / Confirmer** : Exhausted après coup sans avoir utilisé de perk → confirmé (HEURISTIC)
- **Adaptation robuste** : ne pas planifier Sprint Burst/Lithe « juste après le coup » ; utiliser le speed boost pour rejoindre un loop fort (HEURISTIC)
- **Counterplay** : perks non-exhaustion (Resurgence, etc.) (HEURISTIC)
- **Erreurs à ne pas faire** : tenter Lithe dans les secondes suivant un coup (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 1 / SWF 1
- **Écart avec le seed** : OK
- **Sources** : [10], [15]

### Alien Instinct — Xenomorph
- **Statut / catégorie** : LIVE 10.1.2a · info/aura + Oblivious
- **Effet LIVE + valeurs** : à chaque accrochage, le survivant **blessé** le plus éloigné du tueur est révélé **8 s** et devient Oblivious **40/50/60 s** — STRONG_SECONDARY [10] (buff 8.6.0)
- **PTB 10.2.0 (NON LIVE)** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559
- **Indice observable (survivant)** : **icône Oblivious** (plus de heartbeat) au moment d'un accrochage alors que tu es blessé et loin (HEURISTIC)
- **Soupçonner / Confirmer** : Oblivious qui apparaît sur hook d'un coéquipier → confirmé (HEURISTIC)
- **Adaptation robuste** : blessé + loin du crochet = **bouger dès l'accrochage** ; vigilance visuelle (pas de heartbeat) (HEURISTIC)
- **Counterplay** : se soigner ; Distortion (bloque l'aura, pas l'Oblivious) ; Spine Chill (indépendant du TR) (HEURISTIC)
- **Erreurs à ne pas faire** : rester sur son gen blessé en se fiant au heartbeat (HEURISTIC)
- **Menace (HEURISTIC)** : SoloQ 1-2 / SWF 1
- **Écart avec le seed** : OK
- **Sources** : [10]

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| K94-01 | Whispers : survivant à ≤ 48/40/32 m | [10][18] | LIVE | VERIFIED_MULTI_SOURCE |
| K94-02 | Territorial Imperative : entrée au Basement, tueur > 24 m, aura 4/5/6 s, CD 45 s | [2][10] | LIVE | STRONG_SECONDARY |
| K94-03 | Predator : aura 4 s quand le survivant perd le tueur en chase, CD 60/50/40 s | [3][10] | LIVE (depuis 8.3.2) | STRONG_SECONDARY |
| K94-04 | Distressing : TR +20/25/30 % ; plus de bonus Bloodpoints (retiré 8.4.0) | [10] ; 559 dit 20/23/30 [18] | LIVE | STRONG_SECONDARY (palier 2 : CONFLICT-L3-94-03) |
| K94-05 | Insidious : Undetectable après 3/2/1 s immobile, tant qu'immobile | [10][12][18] | LIVE (depuis 9.1.0) | VERIFIED_MULTI_SOURCE |
| K94-06 | ~~Knock Out : aura du survivant abattu visible seulement à 32/24/16 m~~ → effet **retiré au rework 8.6.0** | [10] | OBSOLETE | OUTDATED |
| K94-07 | Knock Out : > 6 m d'une palette dans les 6 s → Hindered 5 % 3/4/5 s | [10][18] | LIVE (depuis 8.6.0) | VERIFIED_MULTI_SOURCE |
| K94-08 | Shattered Hope : détruit les Boons, aura des survivants dans le rayon 6/7/8 s | [7][18] | LIVE | STRONG_SECONDARY |
| K94-09 | Dominance : 1re interaction coffre/totem → bloqué 8/12/16 s, aura du prop en blanc | [10][18] | LIVE (depuis 8.4.0) | VERIFIED_MULTI_SOURCE |
| K94-10 | Hex: Crowd Control : 4/5/6 dernières fenêtres bloquées ; tueur +15 % ; aura 24 m ; Hex allumé au 1er vault | [10][15] | LIVE (depuis 9.5.0) | VERIFIED_MULTI_SOURCE |
| K94-11 | Coulrophobia : soins −20/25/30 %, skill-checks de soin +50 % | [10][17] | LIVE (depuis 10.1.0) | VERIFIED_MULTI_SOURCE |
| K94-12 | Shattered Hope, Distressing, Dissolution, Dominance, Insidious, Knock Out, Superior Anatomy, Whispers modifiées au PTB 10.2.0 | [18] | PTB 10.2.0 | VERIFIED_PRIMARY |
| K94-13 | Jagged Compass : 4 Scourge Hooks initiaux + conversion au décrochage ; gen le plus avancé 6/8/10 s | [10] | LIVE | STRONG_SECONDARY |
| K94-14 | Hex: Huntress Lullaby : raté +2/4/6 % (soin/réparation) ; −14 %/jeton sur le délai d'avertissement ; son supprimé à 5 jetons ; pas de réduction de zone | [10] | LIVE | STRONG_SECONDARY |
| K94-15 | Unnerving Presence : +10 % chance, zone −40/50/60 % (réparation/soin, dans le TR) | [10] | LIVE | STRONG_SECONDARY |
| K94-16 | Hubris : Exposed 20/25/30 s après stun, CD 20 s | [10][12] | LIVE (depuis 9.1.0) | VERIFIED_MULTI_SOURCE |
| K94-17 | Dissolution : 3 s après dégâts (toute source), 12/16/20 s, palette détruite au fast vault dans le TR | [18] | LIVE | VERIFIED_PRIMARY |
| K94-18 | Superior Anatomy : 12 m, +30/35/40 % sur le prochain vault, CD 25 s | [10][11][18] | LIVE (depuis 9.0.0) | VERIFIED_MULTI_SOURCE |
| K94-19 | Merciless Storm : 90 %, blocage 16/18/20 s, une fois par gen | [10] | LIVE | STRONG_SECONDARY |
| K94-20 | Hex: Haunted Ground : 2 totems, bénir/purifier → Exposed 40/50/60 s | [10] | LIVE | STRONG_SECONDARY |
| K94-21 | Rancor : cri + Loud Noise Notification 3 s ; aura du tueur à l'Obsession 5/4/3 s ; endgame Obsession Exposed + mori | [10] | LIVE | STRONG_SECONDARY |
| K94-22 | Hex: The Third Seal : 2/3/4 derniers touchés (attaque de base ou spéciale) Blindness | [10][13] | LIVE | STRONG_SECONDARY (condition : VERIFIED_MULTI_SOURCE) |
| K94-23 | Iron Maiden : fouille +30/40/50 % ; sortie de casier : cri + notification 4 s + Exposed 30 s | [10] | LIVE | STRONG_SECONDARY |
| K94-24 | Mad Grit : 2/3/4 s de pause du débattement | [10] | LIVE | STRONG_SECONDARY |
| K94-25 | Zanshin Tactics : palettes/fenêtres 32 m ; drop → aura 3/4/5 s | [10] | LIVE (depuis 8.3.2) | STRONG_SECONDARY |
| K94-26 | Blood Echo : Exhausted + Haemorrhage 20/25/30 s, sans cooldown | [10] | LIVE (depuis 8.3.0) | STRONG_SECONDARY |
| K94-27 | Forced Penance : Broken 60/70/80 s | [10] | LIVE | STRONG_SECONDARY |
| K94-28 | Forced Hesitation : 16 m, Hindered 20 % 10 s, CD 40/35/30 s | [10] | LIVE | STRONG_SECONDARY |
| K94-29 | Genetic Limits : Exhausted 6/7/8 s | [10] | LIVE (depuis 8.3.0) | STRONG_SECONDARY |
| K94-30 | Alien Instinct : aura 8 s + Oblivious 40/50/60 s | [10] | LIVE (depuis 8.6.0) | STRONG_SECONDARY |
| K94-31 | Valeurs PTB 10.2.0 citées dans les fiches (Whispers 28/26/24 m +5 % Haste ; Distressing +30 % & −6/7/8 % ; Insidious 2 s + 6/7/8 s ; Knock Out 10 m 20 % ; Shattered Hope 16/18/20 s ; Dominance 25 s + aura 3/4/5 s ; Dissolution 13/14/15 s ; Superior Anatomy 10 s CD 20 s) | [18] (+[10]) | PTB 10.2.0 (NON LIVE) | VERIFIED_PRIMARY (pour le PTB) |

## Conflits

#### CONFLICT-L3-94-01 : durée de l'Undetectable d'Insidious
- Source A : wiki.gg (onglet 9.1.0) [10], note 9.1.0 [12], note 559 [18] — actif tant que le tueur reste immobile, coupé au mouvement.
- Source B : seed p94 — « jusqu'à votre prochaine action » ; seed p98 (PTB) — « persiste 6/7/8 s ».
- Hypothèse : le seed mélange la version LIVE et la version PTB 10.2.0.
- Résolution : **RÉSOLU** — LIVE = tant qu'immobile (3/2/1 s d'activation) ; persistance 6/7/8 s après action = **PTB 10.2.0** (note 559 : « Whenever you act, this ends after 6/7/8s (NEW) »).

#### CONFLICT-L3-94-02 : Superior Anatomy (portée / cooldown)
- Source A : seed p94 — 12 m, 10 s, cooldown 25 s.
- Source B : connaissance du modèle — 8 m, cooldown 30 s.
- Résolution : **RÉSOLU** — 8 m / 30 s = valeurs **antérieures à 9.0.0** ; LIVE = 12 m / CD 25 s (note 9.0.0 [11], wiki [10], note 559 [18]) ; les « 10 s » du seed = durée **PTB 10.2.0** (LIVE : un seul vault).

#### CONFLICT-L3-94-03 : Distressing, palier 2 du Terror Radius
- Source A : change log wiki.gg, patch 8.4.0 [10] — 20/25/30 % (et première passe [4], seed p94).
- Source B : note officielle PTB 10.2.0 [18] — « (was 20/23/30%) ».
- Hypothèse : coquille dans la note PTB (les paliers de BHVR sont généralement réguliers) ; aucune note officielle 8.4.0 disponible localement pour trancher.
- Résolution : UNRESOLVED (valeur retenue 20/25/30 %, palier 2 UNCERTAIN ; impact survivant négligeable).

#### CONFLICT-L3-94-04 : Knock Out — effet d'aura du survivant au sol
- Source A : première passe WebSearch [6] — aura du survivant abattu visible seulement à 32/24/16 m.
- Source B : page wiki complète (onglet 8.6.0) [10] + note 559 (« was 6m and 5% ») [18] — seul effet palette/Hindered.
- Résolution : **RÉSOLU** — l'effet d'aura appartient à la version **antérieure au rework 8.6.0** (OBSOLETE) ; le résumé WebSearch mélangeait les versions.

#### CONFLICT-L3-94-05 : textes « LIVE (current) » du digest wiki pour Distressing / Shattered Hope / Dissolution
- Source A : digest `wiki_perks_digest.md` — « LIVE (current) » = TR +30 % & −6/7/8 % ; totems bloqués 16/18/20 s ; attaque de base 13/14/15 s.
- Source B : note PTB 10.2.0 [18] — ces mêmes textes sont les changements PTB « (NEW)/(Rework)/(was …) ».
- Résolution : **RÉSOLU** — le wiki affiche déjà le PTB comme texte courant sur ces 3 pages ; LIVE reconstruite depuis 559 (« was ») et la première passe.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Whispers | 48/40/32 m | 48/40/32 m [10][18] | OK |
| Territorial Imperative | > 24 m, 4/5/6 s, CD 45 s | idem [10] | OK |
| Predator | aura 4 s, CD 60/50/40 s | idem [10] | OK |
| Distressing | TR +20/25/30 % + « Bonus de Bloodpoints en Deviousness » | TR +20/25/30 % ; bonus BP **retiré en 8.4.0** [10] | **FAUX** (bonus BP obsolète) ; TR OK |
| Distressing (PTB p98) | TR +30 %, réparation −6/7/8 % | idem [18] | OK (PTB, bien étiqueté) |
| Insidious | Undetectable « jusqu'à votre prochaine action » | tant qu'immobile [10][12] | IMPRÉCIS |
| Knock Out | 6 m / 6 s / Hindered 5 % 3/4/5 s ; rework 10.2.0 | idem [10][18] | OK (verdict IMPRÉCIS de la 1re passe retiré) |
| Knock Out (PTB) | 10 m, Hindered 20 % | idem + fin si palette cassée [18] | OK (PTB) |
| Shattered Hope | détruit le Boon, aura 6/7/8 s | idem [7][18] | OK |
| Shattered Hope (PTB) | totems bloqués 16/18/20 s | idem [18] | OK (PTB) |
| Dominance | coffres/totems « touchés », « avec révélation d'aura » | **1re** interaction ; aura **du prop** [10][18] | IMPRÉCIS |
| Dominance (PTB) | totems seulement, 25 s | idem + cri + aura 3/4/5 s [18] | OK (PTB) |
| Jagged Compass | crochets décrochés → Fléau ; gen 6/8/10 s | + 4 Scourge Hooks dès le début [10] | IMPRÉCIS |
| Hex: Crowd Control | 4/5/6 fenêtres, +15 %, aura 24 m | idem [10][15] | OK |
| Hex: Huntress Lullaby | zone « Good » qui rétrécit ; raté +2/4/6 % « à 5 jetons » | pas de réduction de zone ; pénalité dès le début [10] | **FAUX** (zone) / IMPRÉCIS (pénalité) |
| Unnerving Presence | +10 %, zone −40/50/60 % | idem [10] | OK |
| Coulrophobia | 20/25/30 %, +50 %, « nerf 10.1.0 » | idem, nerf 30/40/50 → 20/25/30 [17] | OK |
| Hubris | Exposed 20/25/30 s, CD 20 s | idem [10][12] | OK |
| Dissolution | 3 s, 12/16/20 s | idem (toute source de dégâts) [18] | OK |
| Superior Anatomy | 12 m, « pendant 10 s », CD 25 s | 12 m, **un seul vault**, CD 25 s ; 10 s = PTB [10][11][18] | **PTB-comme-LIVE** (durée 10 s) |
| Merciless Storm | 90 %, 16/18/20 s | idem + une fois par gen [10] | OK |
| Hex: Haunted Ground | 2 Hex, purifié → Exposed 40/50/60 s | idem (bénir aussi) [10] | OK |
| Rancor | « vous montre tous les survivants pendant 3 s » | **cri + Loud Noise Notification 3 s** ; aura du tueur à l'Obsession 5/4/3 s [10] | **FAUX** (mécanique) |
| Hex: The Third Seal | « les 2/3/4 survivants que vous blessez » | les 2/3/4 **derniers** touchés (base/spéciale) [10][13] | IMPRÉCIS |
| Iron Maiden | 30/40/50 %, cri, Exposed 30 s, « révélé 4 s » | notification de bruit 4 s (pas aura) [10] | OK (valeurs) / IMPRÉCIS mineur |
| Mad Grit, Zanshin Tactics, Blood Echo, Forced Penance, Forced Hesitation, Genetic Limits, Alien Instinct | valeurs p94 | identiques [10] | OK |

## Questions ouvertes

1. Les Scourge Hooks (Jagged Compass) sont-ils visibles/distinguables côté survivant ? (le wiki ne décrit que l'aura blanche pour le tueur).
2. Dissolution : un indicateur de statut côté survivant existe-t-il ?
3. Distressing : palier 2 LIVE = 25 % (wiki 8.4.0) ou 23 % (note 559) ? (CONFLICT-L3-94-03)
4. Rancor : Calm Spirit supprime-t-il le cri (et donc la Loud Noise Notification) ?
5. Diminishing Returns (9.6.0) entre plusieurs perks **tueur** de skill-checks (Unnerving + autre) : cumul exact non documenté.
6. Whispers : prise en compte des survivants accrochés/au sol (détail WebSearch [1] non retrouvé sur page complète).

## Matériel pour la PERK DEDUCTION

> Règles HEURISTIC, construites sur les mécaniques re-vérifiées [10]-[20].

1. ~~Coéquipier au sol sans aura visible → Knock Out~~ **SUPPRIMÉE** : l'effet d'aura de Knock Out n'existe plus depuis 8.6.0. Un coéquipier au sol sans aura visible s'explique autrement (perks/add-ons tiers, distance, Blindness via Hex: The Third Seal).
2. **Icône Hindered juste après avoir fait tomber une palette et couru > 6 m** → Knock Out confirmé [10] → ne pas compter sur les pré-drops serrés ; garder de la marge avant la palette suivante.
3. **TR/heartbeat coupé net près d'un crochet + tueur non furtif + Kindred ne montre rien** → Insidious plausible [10] → peek les angles morts, écouter la respiration, approche à deux. En LIVE, le TR revient dès que le tueur bouge.
4. **Chase terminée derrière un obstacle + tueur revient droit sur toi 2-5 s après (+ jeton Distortion consommé)** → Predator [10] (ou Zanshin après un drop) → après avoir semé, continuer à bouger 4 s puis changer d'axe.
5. **Premier coffre/totem touché instantanément bloqué par l'Entité** → Dominance quasi certain [10] → considérer sa position connue (aura du prop) et quitter la zone.
6. **Boon « éteint » introuvable / impossible à re-bénir** → Shattered Hope [7] → sortir du rayon quand le tueur approche un Boon ; prévoir un 2e emplacement.
7. **Heartbeat entendu sur un gen alors que le tueur est vu/entendu loin** → Distressing plausible [10] → ne pas lâcher le gen sur le seul heartbeat, confirmer la distance. En LIVE, Distressing ne ralentit **pas** la réparation.
8. **Fenêtre franchie en vault rapide qui reste bloquée + totem Hex qui s'allume à ce moment** → Hex: Crowd Control [15] → jouer palettes/loops sans fenêtre, faire cleanser le totem ; vault lent si nécessaire.
9. **Exposed sur tous les survivants juste après un cleanse ou une bénédiction** → Hex: Haunted Ground [10] → ne pas cleanser un Hex « sans effet visible » quand le tueur est proche ou qu'un coéquipier est en chase.
10. **Tous les survivants crient à chaque gen terminé** → Rancor quasi certain [10] → bouger dès le cri ; l'Obsession exploite l'aura du tueur et se protège en endgame.
11. **Skill-checks sans ding (ou ding de plus en plus tardif) mais zone de taille normale** → Hex: Huntress Lullaby [10] ; **zone réduite dans le TR** → Unnerving Presence [10].
12. **Statut apparu sans action de ta part au moment d'un événement tueur (hook → Exhausted/Haemorrhage ou Oblivious ; coup → Exhausted ; stun → Exposed ; protection hit → Broken ; down proche → Hindered ; sortie de casier → Exposed + cri)** → Blood Echo / Alien Instinct / Genetic Limits / Hubris / Forced Penance / Forced Hesitation / Iron Maiden [10] → lire le HUD après chaque événement et adapter (pas d'exhaustion planifiée, distance après stun, saves à > 16 m).

## Sources

[1] Whispers — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Whispers (+ fandom https://deadbydaylight.fandom.com/wiki/Whispers) — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[2] Territorial Imperative — wiki.gg — https://deadbydaylight.wiki.gg/wiki/Territorial_Imperative — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[3] Predator — fandom / wiki.gg — https://deadbydaylight.fandom.com/wiki/Predator ; https://deadbydaylight.wiki.gg/wiki/Predator ; fil BHVR https://forums.bhvr.com/dead-by-daylight/discussion/429532/thoughts-on-new-predator — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[4] Distressing — wiki.gg / fandom — https://deadbydaylight.wiki.gg/wiki/Distressing — consulté le 27/09/2026 via WebSearch (résumé de recherche ; mention BP obsolète)
[5] Insidious — wiki.gg / fandom — https://deadbydaylight.wiki.gg/wiki/Insidious ; fil BHVR https://forums.bhvr.com/dead-by-daylight/discussion/446900/insidious-rework — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[6] Knock Out — wiki.gg / fandom — https://deadbydaylight.wiki.gg/wiki/Knock_Out — consulté le 27/09/2026 via WebSearch (résumé de recherche ; effet d'aura = version antérieure à 8.6.0)
[7] Shattered Hope — fandom / wiki.gg — https://deadbydaylight.wiki.gg/wiki/Shattered_Hope — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[8] Dominance — fandom / wiki.gg — https://deadbydaylight.wiki.gg/wiki/Dominance — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[9] Audit local `kb/seed/audit_phase0.txt` — fichier du projet, lu le 27/09/2026 (source secondaire interne)
[10] Pages wiki.gg complètes via API (digest local `kb/sources/wiki_perks_digest.md`, brut `wiki_perks.json`), consultées le 27/09/2026 : deadbydaylight.wiki.gg/wiki/Whispers ; /Territorial_Imperative ; /Predator ; /Distressing ; /Insidious ; /Knock_Out ; /Shattered_Hope ; /Dominance ; /Scourge_Hook:_Jagged_Compass ; /Hex:_Crowd_Control ; /Hex:_Huntress_Lullaby ; /Unnerving_Presence ; /Coulrophobia ; /Hubris ; /Dissolution ; /Superior_Anatomy ; /Merciless_Storm ; /Hex:_Haunted_Ground ; /Rancor ; /Hex:_The_Third_Seal ; /Iron_Maiden ; /Mad_Grit ; /Zanshin_Tactics ; /Blood_Echo ; /Forced_Penance ; /Forced_Hesitation ; /Genetic_Limits ; /Alien_Instinct — page complète via API, consultée le 27/09/2026
[11] 9.0.0 | Five Nights at Freddy's — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/510 (copie locale `kb/sources/patches/official_510.txt`)
[12] 9.1.0 | The Walking Dead — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/516
[13] 9.2.0 | Sinister Grace — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/523
[14] 9.2.1 | Bugfix Patch — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/524
[15] 9.5.0 | All-Kill: Comeback — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/538
[16] 9.6.0 | Patch Notes — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/544
[17] 10.1.0 | Chorus of Sin — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/556
[18] 10.2.0 PTB Patch Notes (NON LIVE) — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/559
[19] 9.0.1 | Bugfix Patch — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/511
[20] 9.4.1 | Bugfix Patch — note officielle BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/535
