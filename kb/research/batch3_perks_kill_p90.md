# Lot 3 — Perks tueur vues du survivant, page 90 du guide seed (ch9_killperks.txt l. 62-127)

**Couverture : 6/6 perks re-vérifiées sur page wiki complète (27/09/2026) ; dont 2 confirmées par note officielle** (Pop Goes the Weasel : note 9.5.0 ; Nowhere to Hide : note 10.1.0) **+ 1 indirectement** (Pain Resonance : changement PTB 9.2.0 « Postponed », note 9.2.0). Règles de régression re-vérifiées contre les notes officielles 9.x/10.x locales.

- Référence : LIVE 10.1.2a (17/09/2026) ; PTB 10.2.0 (15-21/09/2026) **non LIVE**, toujours étiqueté PTB.
- Méthode (lot 12a, 27/09/2026) : re-vérification sur les **pages wiki.gg complètes** (API MediaWiki, digest local `kb/sources/wiki_perks_digest.md`) [13] et les **notes officielles BHVR** locales (`kb/sources/patches/official_*.txt`) [14]-[24]. La 1ʳᵉ passe (lot 3) reposait sur des résumés WebSearch [1]-[11] et l'audit [12] ; ils restent cités quand ils concordent.
- Périmètre : Scourge Hook: Pain Resonance, Pop Goes the Weasel, Corrupt Intervention, Grim Embrace, Lethal Pursuer, Nowhere to Hide + règles de régression (p. 89, l. 2-61) + catégories / PTB 10.2.0 (l. 754-841).
- Notes de menace = **HEURISTIC**. Rubriques analytiques (Indice observable, Soupçonner, Confirmer, Adaptation robuste, Counterplay, Erreurs, Menace, règles de PERK DEDUCTION) = **HEURISTIC / EXPERT OPINION**, sauf éléments explicitement marqués FACT.

> **Historique de vérification.** Au lot 3, le quota WebSearch s'était épuisé après 4 recherches : Grim Embrace et Lethal Pursuer n'avaient reçu aucune vérification. Au lot 12a, les 6 perks ont été vérifiées sur page wiki complète [13] et les notes officielles 9.0.0 → PTB 10.2.0 ont été lues localement.
> **PTB 10.2.0** : aucune des 6 perks de la p. 90 ne figure dans la note officielle 559 [22] (Pop n'y est cité que comme point de comparaison dans la dev note d'Undone) ; le wiki ne donne aucune version PTB pour elles [13].
> Les règles des **Regression Events** (7.5.0) ne sont modifiées par aucune note officielle 9.x/10.x locale (recherche « regress » dans official_510 → 559) ; elles restent sourcées par l'audit [12].

---

## Règles de régression vérifiées

| Règle (seed p. 89) | Vérifié | Patch | Source | Confiance | Verdict |
|---|---|---|---|---|---|
| Coup de pied (Damage Generator) 1,8 s, −5 % de la progression totale d'un coup, puis régression | Action 1,8 s (depuis 6.1.0, avant 2 s) ; −5 % instantané depuis 7.5.0 (était 2,5 % depuis 6.1.0). Aucune note 9.x/10.x ne le modifie. La note 9.5.0 formalise les termes « Damaging Generators » (perte de progression due à l'action de base du tueur) et « Generator Explosions » (perte due à un pouvoir ou une perk) [17] | 7.5.0 (30/01/2024) ; termes 9.5.0 | [12] (audit : wiki.gg Patch Notes 7.5.X, ComicBook, wiki.gg Generators) ; [17] | VERIFIED_MULTI_SOURCE | OK |
| Régression de base 0,25 charge/s ; ~360 s de 90 à 0 | −0,25 c/s ; 90 charges → 0 en 360 s. Aucune note 9.x/10.x ne la modifie | — | [12] | VERIFIED_MULTI_SOURCE | OK |
| 8 « Regression Events » par gen ; event = perte instantanée ≥ 2,5 % causée par le tueur ; pointes dès le 4ᵉ ; au 8ᵉ, le tueur ne peut plus interagir | Confirmé tel quel (7.5.0). Aucune note officielle 9.0.0 → PTB 10.2.0 locale ne mentionne ni ne modifie ce plafond (recherche « regress » / « regression event ») | 7.5.0 | [12] (wiki.gg Patch Notes 7.5.X ; wiki.gg Generators) | VERIFIED_MULTI_SOURCE | OK |
| Les skill checks ratés ne comptent pas | Confirmé : ils ne comptent pas et font **toujours** régresser (même au plafond) | 7.5.0 | [12] | VERIFIED_MULTI_SOURCE | OK |
| Si le gen visé a atteint la limite, Pain Resonance se rabat sur un autre gen | Absent de la page wiki complète de la perk [13] (« the Generator with the most progression ») et des notes 9.x/10.x (question ouverte D-010 de l'audit) | — | [13] | UNCERTAIN | NON VÉRIFIABLE |
| « Le 3-gen infini n'existe plus » | Conséquence logique du plafond de 8 events : un gen au plafond ne peut plus être frappé. Le 3-gen reste un ralentissement fort | 7.5.0 | déduction de [12] | HEURISTIC | OK (heuristique) |
| Gen bloqué : progression et régression figées ; pas de perte instantanée pendant le blocage | Confirmé | — | [12] (wiki.gg Generators) | STRONG_SECONDARY | OK |
| Stopper la régression : réparer environ +5 % | Confirmé : il faut réparer 5 % (fin du « gen tapping ») | 7.5.0 | [12] | VERIFIED_MULTI_SOURCE | OK |
| Diminishing Returns 9.6.0 (28/04/2026) : 100 / 50 / 25 / 12,5 / 5 % | Confirmé par lecture directe de la note : « highest absolute value is always applied… 1st 100 %, 2nd 50 %, 3rd 25 %, 4th 12,5 %, 5th and up 5 % » ; s'applique aux modificateurs **identiques** (pouvoirs, objets, perks, offrandes) | 9.6.0 | [18] ; [12] | VERIFIED_PRIMARY | OK |
| DR : add-ons exclus | Confirmé : « Modifiers granted from Add-ons » exclus entièrement | 9.6.0 | [18] | VERIFIED_PRIMARY | OK |
| DR : pénalités de vitesse d'action négatives réduites seulement entre sources d'un même rôle | Confirmé ; même règle pour les bonus de chance de skill check (« only within their role ») ; exemple officiel Calm Spirit / Thrill of the Hunt | 9.6.0 | [18] | VERIFIED_PRIMARY | OK |
| Blocages et pertes instantanées « ne relèvent pas de la même catégorie », donc hors DR | La note 9.6.0 vise les « repeated positive or negative gameplay modifiers and status effects » et les modificateurs « identiques » ; elle ne liste ni les blocages ni les pertes instantanées. Aucune catégorie publiée | 9.6.0 | [18] | UNCERTAIN | NON VÉRIFIABLE (présenté comme un fait) |
| Pop « seul des 4 perks du build gen control qui subit la taxe » | Aucune source. Dépend de la définition de « modificateur identique », non publiée | — | [18] | HYPOTHESIS | NON VÉRIFIABLE |
| Empiler Ruin + Call of Brine + Overcharge + Lay Waste est peu rentable | Cohérent avec les DR **si** ce sont des modificateurs identiques de vitesse de régression. Non confirmé | 9.6.0 | déduction de [18] | HYPOTHESIS | IMPRÉCIS |
| Patch 9.2.0 (sept. 2025) : Ruin 100/125/150 %, Pop 20 → 15 %, DMS 25/30/35 s, Oppression ; nerfs de Pain Res / Eruption non passés | Note officielle 9.2.0 [15] : **passés au LIVE** : Hex: Ruin 100/125/150 % (était 50/75/100), Dead Man's Switch 25/30/35 s (était 40/45/50), Oppression 4 gens et 45/40/35 s. Section finale **« Postponed »** : le Tunneling Reduction Update est reporté et ses changements de perks **annulés**, dont **Eruption, Pop Goes the Weasel, Scourge Hook: Pain Resonance** (et Babysitter, Barbecue and Chili, Borrowed Time). Le wiki confirme (change logs de Ruin, DMS, Oppression en 9.2.0 ; aucun pour Pop/Eruption/Pain Res en 9.2.0) [13] | 9.2.0 | [15][13] | VERIFIED_MULTI_SOURCE | IMPRÉCIS : Ruin, DMS, Oppression OK ; « Pop 20 → 15 % » **FAUX** (annulé) ; Pain Res / Eruption non passés OK → CONFLICT-L3P90-01 RÉSOLU |
| Pain Res toujours à 10/15/20 % | Confirmé : page complète « 10 / 15 / 20 % of its total Progression » ; dernier changement de valeur 8.0.0 (15/20/25 → 10/15/20) ; changement PTB 9.2.0 annulé ; 9.5.0 = réécriture de description seulement ; absente du PTB 10.2.0 | LIVE | [13][15][17][22] | VERIFIED_MULTI_SOURCE | OK |
| Eruption à 10 % | Confirmé : page complète « Instantly regresses them by −10 % of their total Progression », aura 8/10/12 s, recharge 30 s ; aucun changement de valeur en 9.x/10.x (le 10 → 5 % du PTB 9.2.0 a été **annulé**, note 9.2.0 « Postponed ») | LIVE | [13][15] | VERIFIED_MULTI_SOURCE | OK |
| Pop 9.5.0 : +15 % au coup de pied, soit 20 % au total, calculé sur la progression totale | Confirmé par la note 9.5.0 : « loses 15% more progress (was 20% current progress, now total progress-only) », fenêtre 35/40/45 s ; wiki : « +15 % resulting in 20 % regression » | 9.5.0 (mars 2026) | [17][13] | VERIFIED_MULTI_SOURCE | OK |

**À retenir côté survivant (FACT, sauf mention)**
- Un coup de pied retire 5 % d'un coup, puis le gen régresse lentement. Pour stopper la régression, il faut réparer 5 %. Tapoter le gen ne suffit pas.
- Des pointes autour d'un gen signalent au moins 4 events. Au 8ᵉ, le tueur ne peut plus rien faire sur ce gen. Seuls les skill checks ratés le font encore régresser.
- Un gen bloqué ne peut ni progresser ni perdre de progression d'un coup. HEURISTIC : pendant un blocage (Corrupt, Grim Embrace), le gen le plus avancé est protégé des pertes instantanées.

---

## Fiches perks

### Scourge Hook: Pain Resonance — The Artist
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (perte instantanée) · scourge
- **Effet LIVE + valeurs** : au début de l'épreuve, 4 crochets aléatoires deviennent des crochets Fléau (le tueur voit leur aura en blanc). Le perk démarre avec 4 jetons. Chaque fois qu'un survivant est accroché sur un crochet Fléau **pour la première fois**, 1 jeton est consommé. Le gen **le plus avancé** explose et perd **10/15/20 % de sa progression totale**, puis la régression normale s'applique. Les survivants qui le réparent **crient**, **sans Loud Noise Notification**. Le perk est désactivé quand les 4 jetons sont consommés. — VERIFIED_MULTI_SOURCE pour la valeur (page wiki complète [13] ; note 9.2.0 : le changement PTB de Pain Res a été **annulé** (« Postponed ») [15] ; note 9.5.0 : réécriture de description seulement [17]) ; STRONG_SECONDARY pour le détail de l'effet (wiki seul).
  - Le tueur voit l'aura des 4 crochets Fléau en blanc [13].
  - Historique : 15/20/25 % → 10/15/20 % au patch **8.0.0** (change log wiki [13]) (HISTORICAL).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [13][22].
- **Indice observable (survivant)** (HEURISTIC) :
  - Juste après un accrochage : explosion du gen le plus avancé, avec une grosse chute de la barre pour ceux qui réparent ; ceux qui réparent crient (sans Loud Noise Notification ; le cri reste audible pour un tueur proche). FACT (wiki [13])
  - L'explosion ne se produit qu'au **1er accrochage de chaque survivant** sur un crochet Fléau. Il y a donc 4 déclenchements au maximum. FACT
  - Visibilité des crochets Fléau côté survivant : non vérifiée — UNCERTAIN. Ne pas compter dessus.
- **Soupçonner** (HEURISTIC) : un survivant est porté au-delà d'un crochet plus proche (le tueur vise un crochet précis) + Artist ou build gen-control + gens très avancés → plausible.
- **Confirmer** (HEURISTIC) : le cri et l'explosion au moment exact de l'accrochage.
- **Adaptation robuste** (HEURISTIC) :
  - Ne pas laisser un seul gen très avancé seul au moment d'un accrochage. Soit le finir avant, soit répartir la progression. Le gen visé est toujours **le plus avancé**.
  - Après un cri : réparer au moins 5 % sur ce gen pour stopper la régression, **ou** le laisser si le tueur arrive.
  - Suivre le compteur : quels survivants ont déjà été accrochés sur un crochet Fléau (4 jetons maximum, 1 par survivant).
- **Counterplay** (HEURISTIC) :
  - Mécanique : 5 % pour stopper la régression. Pour les gens déjà cramés, surveiller les pointes (≥ 4 events).
  - Positionnel : pendant un transport, se placer pour sauver ou gêner l'accrochage. Un sabotage n'est utile que si l'on sait quel crochet est un Fléau (UNCERTAIN).
  - Équipe : prévoir les 1ers accrochages sans empiler 3 survivants sur le gen le plus avancé.
- **Erreurs à ne pas faire** (HEURISTIC) :
  - Arrêter de réparer après le cri puis revenir plus tard. Combo supposé avec DMS : le cri interrompt la réparation, et DMS bloque les gens qu'on lâche (COMMUNITY_OBSERVATION, non vérifié ici [5]).
  - Garder un gen à 90 % « pour plus tard ».
- **Menace (HEURISTIC 0-3)** : SoloQ 3 / SWF 2
- **Écart avec le seed** : OK pour l'effet et les valeurs (10/15/20 %, 4 jetons, gen le plus avancé, cri ; « non passé en 9.2.0 » confirmé par la note 9.2.0). Le seed ne précise pas que la régression normale s'applique après l'explosion (le wiki le dit). Le seed affirme sans source que le perk se rabat sur un autre gen au plafond : NON VÉRIFIABLE (absent de la page complète).
- **Sources** : [13][15][17][22][1][2][3][4][5][12]

### Pop Goes the Weasel — The Clown
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (perte instantanée au coup de pied)
- **Effet LIVE + valeurs** : après un accrochage, Pop s'active **35/40/45 s** ; le prochain coup de pied manuel (action Damage Generator) sur un gen fait perdre **+15 % de la progression totale**, soit **20 %** au total avec les 5 % de base. — VERIFIED_MULTI_SOURCE (note 9.5.0 : « for the next 35/40/45s… loses 15% more progress (was 20% current progress, now total progress-only) » [17] ; page wiki complète [13])
  - Fenêtre : 35/40/45 s — confirmée (CONFLICT-L3P90-03 RÉSOLU).
  - Usage unique par accrochage : confirmé (« deactivates after use or once its timer elapses » [13]).
  - Avant 9.5.0 : 20 % de la progression **actuelle** (OBSOLETE). Le changement PTB 9.2.0 (« 20 → 15 % ») a été **annulé** (note 9.2.0 « Postponed » [15]).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [13][22] (citée seulement comme comparaison dans la dev note d'Undone).
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct (pas de statut survivant connu). Seul signal : une chute de progression d'environ 20 % au lieu de 5 % sur un coup de pied qui suit un accrochage.
- **Soupçonner** (HEURISTIC) : accrochage + le tueur quitte le crochet sans patrouiller et va droit sur un gen avancé → plausible.
- **Confirmer** (HEURISTIC) : la barre chute très fortement sur le coup de pied (visible si l'on revient sur le gen, ou avec un perk d'info comme Déjà Vu ou Blast Mine…).
- **Adaptation robuste** (HEURISTIC) : dans la fenêtre qui suit un accrochage (35/40/45 s, FACT ; compter 45 s par prudence), ne pas laisser sans surveillance un gen presque fini proche du crochet. Soit le terminer, soit y revenir tout de suite après le coup de pied pour réparer 5 %.
- **Counterplay** (HEURISTIC) :
  - Un gen au plafond (8 events) est immunisé.
  - Un gen bloqué ne subit pas de perte instantanée.
  - Finir les gens au lieu d'en avoir plusieurs à 70-90 %.
- **Erreurs à ne pas faire** (HEURISTIC) : lâcher un gen à 95 % quand le tueur arrive juste après un accrochage, sans y revenir.
- **Menace (HEURISTIC 0-3)** : SoloQ 2 / SWF 2
- **Écart avec le seed** : valeur +15 % / 20 % : OK. Fenêtre 35/40/45 s : OK (note 9.5.0). « Calcul sur la progression totale » : OK (depuis 9.5.0). Historique 9.2.0 « Pop 20 → 15 % passé au LIVE » : **FAUX** (changement annulé, note 9.2.0 « Postponed »).
- **Sources** : [13][15][17][22][6][7][8][12]

### Corrupt Intervention — The Plague
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (blocage en début de partie)
- **Effet LIVE + valeurs** : au début de l'épreuve, les **3 gens les plus éloignés du tueur** sont bloqués par l'Entité pendant **80/100/120 s**. Le perk se désactive dès que le **premier survivant passe à l'état mourant**. — STRONG_SECONDARY (page wiki complète [13], concordant avec [9][10][11])
  - Notes officielles : correctifs seulement (couleur d'aura des gens bloqués personnalisable, 9.5.1 [23] / 10.0.0 [24] ; Plot Twist désactivait la perk trop tôt, corrigé en 10.1.0 [20]) — aucune valeur modifiée en 9.x/10.x.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [13][22].
- **Indice observable (survivant)** (HEURISTIC) : dès le début, 3 gens sont non réparables (effet de l'Entité ; rendu exact non vérifié — UNCERTAIN). Le blocage disparaît au 1er survivant au sol.
- **Soupçonner** (HEURISTIC) : on apparaît près d'un gen qu'on ne peut pas réparer au début de la partie.
- **Confirmer** (HEURISTIC) : 3 gens bloqués, tous loin du tueur, qui se débloquent au 1er down ou à 80-120 s.
- **Adaptation robuste** (HEURISTIC) :
  - Les gens libres sont **près du tueur** : y aller à 1 ou 2 survivants maximum, et accepter la chase.
  - Les autres utilisent le temps pour les totems ou les coffres, ou se positionnent près des gens bloqués pour y démarrer dès le déblocage.
- **Counterplay** (HEURISTIC) : ne pas tomber vite. Tant que personne n'est au sol, le blocage court jusqu'au bout. Le premier down lève tout. Une chase longue au début de partie compense le temps perdu.
- **Erreurs à ne pas faire** (HEURISTIC) :
  - Se regrouper à 3 sur le seul gen libre près du tueur.
  - Traverser la carte pour rien.
- **Menace (HEURISTIC 0-3)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : OK
- **Sources** : [13][20][22][9][10][11]

### Grim Embrace — The Artist
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (blocage) · info/aura (Obsession)
- **Effet LIVE + valeurs** : chaque fois qu'un survivant est accroché **pour la première fois**, Grim Embrace gagne +1 jeton et s'active **une fois que le tueur est à au moins 16 m du crochet** : jetons 1 à 3 → **tous les gens bloqués 6/8/10 s** ; 4ᵉ jeton → **tous les gens bloqués 40 s** et **aura de l'Obsession révélée au tueur 6 s**. — STRONG_SECONDARY (page wiki complète [13])
  - Historique : blocage des jetons 1-3 réduit de 2 s au patch 8.0.0 (→ 6/8/10 s) [13]. Note 9.1.1 : correctif (l'effet du 4ᵉ jeton ne se déclenchait pas avec Thrilling Tremors) [14] — confirme l'existence de l'effet du 4ᵉ jeton, sans valeur.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [13][22].
- **Indice observable (survivant)** (HEURISTIC) : **tous** les gens se bloquent brièvement quand le tueur quitte le crochet (≥ 16 m) après chaque 1er accrochage (FACT, wiki). Le blocage long (40 s) arrive au 4ᵉ survivant accroché pour la 1ʳᵉ fois (FACT).
- **Soupçonner** (HEURISTIC) : accrochage + Artist ou build gen-control + tous les gens deviennent non réparables dès que le tueur s'éloigne du crochet.
- **Confirmer** (HEURISTIC) : blocage global répété à chaque **nouveau** survivant accroché ; pas de blocage au 2ᵉ accrochage d'un même survivant (FACT, « hooked for the first time »). Un tueur qui reste à moins de 16 m du crochet retarde le blocage.
- **Adaptation robuste** (HEURISTIC) :
  - Pendant un blocage court, aller vers le crochet ou vers le gen suivant, pas attendre sur place. Le départ du tueur (≥ 16 m) est aussi le moment du sauvetage.
  - Au 4ᵉ nouveau survivant accroché, l'Obsession doit bouger ou se cacher : son aura est révélée 6 s (FACT).
- **Counterplay** (HEURISTIC) : éviter de donner 4 premiers accrochages rapides, en tenant les chases longues. Les blocages protègent aussi les gens des pertes instantanées (règle vérifiée).
- **Erreurs à ne pas faire** (HEURISTIC) : prendre le gen bloqué pour un gen « cassé » et l'abandonner définitivement.
- **Menace (HEURISTIC 0-3)** : SoloQ 2 / SWF 2
- **Écart avec le seed** : IMPRÉCIS. Valeurs 6/8/10 s, 40 s, Obsession 6 s : OK. « À 16 m du crochet » : la page complète dit « **at least** 16 metres away from the Hook » (s'éloigner d'au moins 16 m), pas une proximité.
- **Sources** : [13][14][22]

### Lethal Pursuer — The Nemesis
- **Statut / catégorie** : LIVE 10.1.2a · info/aura
- **Effet LIVE + valeurs** : au début de l'épreuve, les auras de **tous les survivants** sont révélées au tueur **7/8/9 s** ; toute révélation d'aura **de survivant** au tueur dure **+2 s** ; Lethal Pursuer bénéficie de son propre effet (donc 9/10/11 s au début, déduction du libellé). — STRONG_SECONDARY (page wiki complète [13])
  - L'extension couvre aussi les auras de pouvoir / add-ons : notes 9.4.0 (add-ons de The First « extended by Lethal Pursuer ») [16] et 10.1.0 (dev note sur l'add-on « Aurora's Telereceptor » du tueur à Heresy / Seeds of Punishment : aura « extended by Lethal Pursuer ») [20] — confirmation indirecte, sans valeur.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [13][22].
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct connu. Indirect : dès le début, le tueur va droit sur un survivant sans exploration. Si un survivant a Distortion, son jeton est consommé au début de partie (mécanique de Distortion non revérifiée ici : UNCERTAIN).
- **Soupçonner** (HEURISTIC) : tueur qui fonce en ligne droite vers vous dès le début + auras « longues » sur d'autres perks (BBQ, Nurse's Calling…) → plausible.
- **Confirmer** (HEURISTIC) : difficile sans Distortion. Écran de fin de partie ou Match Details.
- **Adaptation robuste** (HEURISTIC) : supposer que le tueur connaît vos positions de départ. Dès le début, se préparer à une chase immédiate (se placer près d'un loop fort, ne pas démarrer seul un gen en zone morte).
- **Counterplay** (HEURISTIC) :
  - Distortion ou casiers pour les auras suivantes (effet de l'aura dans un casier non vérifié).
  - Déplacement latéral juste après la fin de la fenêtre de début (7/8/9 s, 9/10/11 s avec l'auto-extension).
  - Contre les auras de pouvoir (ex. add-ons de The First, add-on Aurora's Telereceptor) : compter +2 s sur leur durée habituelle.
- **Erreurs à ne pas faire** (HEURISTIC) : croire que le tueur « a de la chance » au spawn. Répéter la même position de départ prévisible.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 / SWF 1 (le danger vient surtout de l'extension de durée combinée à d'autres auras)
- **Écart avec le seed** : IMPRÉCIS. 7/8/9 s et +2 s : OK. « Tous vos autres effets de lecture d'aura » : l'extension ne vise que les auras **de survivants** (page complète) ; le seed omet l'auto-extension.
- **Sources** : [13][16][20][22]

### Nowhere to Hide — The Knight
- **Statut / catégorie** : LIVE 10.1.2a · info/aura
- **Effet LIVE + valeurs** : quand le tueur effectue l'action Damage Generator, les auras de tous les survivants à **24 m de l'emplacement du gen** lui sont révélées **3/4/5 s**. — VERIFIED_MULTI_SOURCE (note 10.1.0 : « for 3/4/5s, you see the Auras of Survivors within 24m of the Generator (was revealing auras around the Killer position) » [20] ; page wiki complète [13]). La valeur de **18 m** n'existait qu'au **PTB 10.1.0** et n'est **pas** passée au LIVE (change log wiki : « 10.1.0 PTB 24 → 18 m ; 10.1.0 : reversal 18 → 24 m ») [13].
  - Changement 10.1.0 : zone centrée sur le **gen** (avant : sur le tueur). Correctifs : 9.6.2 révèle désormais aussi les survivants à terre [19] ; 10.1.2 : incohérence entre description et portée en jeu corrigée [21].
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [13][22].
- **Indice observable (survivant)** (HEURISTIC) : aucun indice HUD. Indirect : juste après un coup de pied, le tueur se tourne ou va droit vers votre cachette proche.
- **Soupçonner** (HEURISTIC) : coup de pied + réorientation immédiate vers des survivants cachés près du gen → plausible.
- **Confirmer** (HEURISTIC) : la répétition (plusieurs coups de pied, chaque fois suivis d'une traque directe).
- **Adaptation robuste** (HEURISTIC) : quand le tueur approche d'un gen que vous venez de quitter, s'éloigner **à plus de 24 m** au lieu de se cacher derrière un mur proche. Une aura ignore la ligne de vue.
- **Counterplay** (HEURISTIC) : Distortion ; quitter la zone tôt ; laisser le tueur frapper le gen puis revenir réparer 5 %.
- **Erreurs à ne pas faire** (HEURISTIC) : rester accroupi à 10 m du gen en attendant que le tueur parte.
- **Menace (HEURISTIC 0-3)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : **FAUX / PTB-comme-LIVE**. Le seed écrit « la portée est passée de 24 à 18 m au patch 10.1.0 ». La valeur LIVE est 24 m ; 18 m était la valeur du PTB 10.1.0. Déjà prouvé par l'audit (CONFLICT-G11), reconfirmé par la note 10.1.0 [20] et le change log wiki [13] ; ne pas re-corriger ailleurs. Le seed omet aussi que la zone est centrée sur le gen depuis 10.1.0.
- **Sources** : [13][19][20][21][22][12]

---

## Matériel pour la PERK DEDUCTION

*Règles HEURISTIC / EXPERT OPINION ; seuls les éléments marqués FACT sont vérifiés.*

1. **Accrochage + cri collectif + explosion sur le gen le plus avancé → Pain Resonance (FACT si observé).** Comportement robuste : ne jamais garder un seul gen très avancé au moment d'un 1er accrochage ; le finir ou répartir la progression. Compter les 4 jetons (1 par survivant).
2. **Cri Pain Res + gen bloqué juste après avoir lâché la réparation → Pain Res + Dead Man's Switch plausible.** Comportement robuste : après le cri, reprendre la réparation tout de suite ou changer de gen, sans stop-and-go. Combo : COMMUNITY_OBSERVATION.
3. **3 gens éloignés du tueur non réparables dès le début → Corrupt Intervention.** Comportement robuste : 1 ou 2 survivants sur les gens près du tueur, les autres sur totems et coffres ; tenir la 1ʳᵉ chase, car le 1er down lève le blocage.
4. **Tueur qui va en ligne droite vers vous dès le début (+ auras qui semblent durer longtemps) → Lethal Pursuer plausible.** Comportement robuste : partir du principe que votre spawn est connu ; se placer près d'une structure forte. (Effet vérifié sur page wiki complète : 7/8/9 s au début, +2 s sur les auras de survivants.)
5. **Accrochage + tueur qui file directement vers un gen avancé + grosse chute de progression au coup de pied → Pop Goes the Weasel.** Comportement robuste : pendant 35/40/45 s après un accrochage (FACT, note 9.5.0), finir les gens proches du crochet ou revenir réparer 5 % aussitôt après le coup de pied.
6. **Coup de pied + tueur qui se retourne vers des survivants cachés tout près → Nowhere to Hide.** Comportement robuste : quitter la zone à plus de 24 m au lieu de se cacher près du gen ; revenir après.
7. **Tous les gens bloqués quelques secondes quand le tueur quitte le crochet (≥ 16 m) après chaque nouveau survivant accroché → Grim Embrace (FACT si observé).** Comportement robuste : utiliser le blocage pour se déplacer ou sauver ; au 4ᵉ nouveau survivant accroché, l'Obsession se méfie (aura révélée 6 s, blocage de 40 s). (Effet vérifié sur page wiki complète.)
8. **Pointes autour d'un gen → au moins 4 events consommés (FACT).** Comportement robuste : un gen avancé avec pointes a une valeur défensive (peu de coups de pied restants) ; au 8ᵉ event, seul un skill check raté le fait encore régresser.

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| L3P90-C01 | Pain Res : 4 jetons, 1er accrochage Fléau de chaque survivant ; gen le plus avancé −10/15/20 % du total ; les réparateurs crient (sans Loud Noise Notification) ; régression normale ensuite | [13] ; valeur non modifiée en 9.2.0 (Postponed) [15] | LIVE (valeur depuis 8.0.0) | VERIFIED_MULTI_SOURCE (valeur) / STRONG_SECONDARY (détails) |
| L3P90-C02 | Pop : +15 % de la progression totale au coup de pied, soit 20 % au total | [17][13] | 9.5.0 → LIVE | VERIFIED_MULTI_SOURCE |
| L3P90-C03 | Pop : fenêtre de 35/40/45 s, usage unique par activation | [17][13] | 9.5.0 → LIVE | VERIFIED_MULTI_SOURCE |
| L3P90-C04 | Corrupt : 3 gens les plus éloignés bloqués 80/100/120 s ; fin au 1er survivant mourant | [13][9][10][11] | LIVE | STRONG_SECONDARY |
| L3P90-C05 | Nowhere to Hide : 24 m autour du gen, 3/4/5 s (18 m = PTB 10.1.0 seulement) | [20][13] | 10.1.0 → LIVE | VERIFIED_MULTI_SOURCE |
| L3P90-C06 | Grim Embrace : activation à ≥ 16 m du crochet ; 6/8/10 s (jetons 1-3) ; 40 s + aura de l'Obsession 6 s au 4ᵉ jeton | [13] | LIVE (valeur depuis 8.0.0) | STRONG_SECONDARY |
| L3P90-C07 | Lethal Pursuer : 7/8/9 s au début ; +2 s sur les auras **de survivants** ; s'applique à elle-même | [13] ; [16][20] (indirect) | LIVE | STRONG_SECONDARY |
| L3P90-C08 | Coup de pied 1,8 s, −5 % instantané | [12] | 7.5.0 | VERIFIED_MULTI_SOURCE |
| L3P90-C09 | Régression de base 0,25 c/s (360 s de 90 à 0) | [12] | — | VERIFIED_MULTI_SOURCE |
| L3P90-C10 | 8 events par gen (≥ 2,5 %) ; pointes dès le 4ᵉ ; non modifié par les notes 9.x/10.x | [12] ; [14]-[22] (absence) | 7.5.0 | VERIFIED_MULTI_SOURCE |
| L3P90-C11 | Stopper la régression = réparer 5 % | [12] | 7.5.0 | VERIFIED_MULTI_SOURCE |
| L3P90-C12 | DR 100/50/25/12,5/5 % sur modificateurs identiques, add-ons exclus, pénalités négatives et chance de skill check limitées au même rôle | [18] | 9.6.0 | VERIFIED_PRIMARY |
| L3P90-C13 | Blocages et pertes instantanées hors DR | seed seul ; note 9.6.0 muette [18] | 9.6.0 | UNCERTAIN |
| L3P90-C14 | 9.2.0 LIVE : Ruin 100/125/150 %, DMS 25/30/35 s, Oppression 4 gens / 45/40/35 s ; changements de Pop, Eruption, Pain Res **annulés** (Postponed) | [15][13] | 9.2.0 | VERIFIED_MULTI_SOURCE |
| L3P90-C15 | Eruption LIVE : −10 % du total, aura 8/10/12 s, recharge 30 s | [13][15] | LIVE | VERIFIED_MULTI_SOURCE |
| L3P90-C16 | Aucune des 6 perks de la p. 90 n'est modifiée au PTB 10.2.0 | [22][13] | PTB 10.2.0 | VERIFIED_MULTI_SOURCE |

## Conflits

#### CONFLICT-L3P90-01 : changements LIVE du patch 9.2.0 (Pop, Eruption, Ruin, DMS)
- Source A : table des patchs de l'audit (notes 9.2.0 résumées) : Ruin 100/125/150 %, Pop 20 → 15 %, Eruption 10 → 5 %, DMS 25/30/35 s au LIVE 9.2.0.
- Source B : wiki.gg Patch Notes 9.2.X (cité par la question ouverte 11 de l'audit) : les changements PTB de Pop, Eruption, Ruin et DMS ont été annulés au LIVE. Le seed ajoute une 3ᵉ version : Ruin, Pop et DMS passés, Pain Res et Eruption non passés.
- Résolution : **RÉSOLU** par la note officielle 9.2.0 [15]. Passés au LIVE (section « Killer Perk Updates ») : **Hex: Ruin 100/125/150 %** (était 50/75/100), **Dead Man's Switch 25/30/35 s** (était 40/45/50), **Oppression** 4 gens / 45/40/35 s. Section finale « Postponed » : Tunneling Reduction Update reporté, « Reverted the perk changes associated with this update. Notably: Babysitter, Barbecue and Chili, Borrowed Time, **Eruption, Pop Goes the Weasel, Scourge Hook: Pain Resonance** ». Les change logs du wiki concordent (Ruin, DMS, Oppression modifiées en 9.2.0 ; rien pour Pop, Eruption, Pain Res) [13]. Donc : la table de l'audit a tort pour Pop et Eruption (valeurs PTB prises pour LIVE) ; l'audit Q11 / wiki 9.2.X a tort pour Ruin et DMS ; le seed a tort pour Pop seulement. Eruption LIVE = 10 %.

#### CONFLICT-L3P90-02 : le cri de Pain Resonance révèle-t-il la position ?
- Source A : résumé du wiki (fandom) : « will scream, but not reveal their location ».
- Source B : le même résumé ajoute que « some older sources indicate… variations in whether location is revealed ».
- Résolution : **RÉSOLU (STRONG_SECONDARY)** : la page complète dit « Causes all Survivors repairing the Damaged Generator to scream. This does not trigger a Loud Noise Notification » [13]. Pas de notification visuelle ; le cri reste audible pour un tueur à portée.

#### CONFLICT-L3P90-03 : fenêtre de Pop Goes the Weasel
- Source A : seed : 35/40/45 s.
- Source B : aucune source lue au lot 3 ne donnait la durée.
- Résolution : **RÉSOLU — 35/40/45 s** : note 9.5.0 « for the next 35/40/45s » [17] ; page complète [13].

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Nowhere to Hide | « de 24 à 18 m au patch 10.1.0 » | 24 m LIVE, centré sur le gen ; 18 m = PTB 10.1.0 [20][13] | **PTB-comme-LIVE / FAUX** |
| Pain Res | 10/15/20 %, 4 jetons, gen le plus avancé, cri | Confirmé [13] ; la régression normale s'applique ensuite (omis) | OK |
| Pain Res, repli au plafond | Se rabat sur un autre gen | Absent de la page complète et des notes | NON VÉRIFIABLE |
| DR sur blocages et pertes instantanées | « ne relèvent pas de la même catégorie », mélanger reste efficace | Note 9.6.0 muette (modificateurs « identiques », sans liste) [18] | NON VÉRIFIABLE (affirmé comme fait) |
| Pop « seul perk taxé » du build gen control | Affirmé | Aucune source | NON VÉRIFIABLE |
| Patch 9.2.0 | Ruin, Pop, DMS, Oppression passés ; Pain Res et Eruption non | Ruin, DMS, Oppression passés ; **Pop annulé** ; Pain Res et Eruption annulés [15] | **FAUX pour Pop** (le reste OK) |
| Pop 9.5.0 | +15 %, 20 % au total, sur la progression totale | Confirmé (note 9.5.0 [17]) | OK |
| Pop, fenêtre | 35/40/45 s | Confirmé (note 9.5.0 [17]) | OK |
| Corrupt Intervention | 3 gens les plus éloignés, 80/100/120 s, fin au 1er down | Confirmé [13] | OK |
| Grim Embrace | 6/8/10 s, « à 16 m du crochet », 40 s + Obsession 6 s | Valeurs OK ; activation quand le tueur est **à au moins 16 m** du crochet [13] | IMPRÉCIS |
| Lethal Pursuer | 7/8/9 s, +2 s sur « tous vos autres effets d'aura » | 7/8/9 s OK ; +2 s sur les auras **de survivants** seulement, auto-extension [13] | IMPRÉCIS |
| Règles de régression (5 %, 0,25 c/s, 8 events, pointes au 4ᵉ, 5 % pour stopper, blocage) | — | Confirmées par l'audit ; aucune note 9.x/10.x ne les modifie | OK |
| DR 100/50/25/12,5/5, add-ons exclus, règle de rôle | — | Confirmé (note 9.6.0 [18]) | OK |
| Stats NightLight (usage %) | Top 14, taux de kill par build | Non vérifiables (NightLight bloqué) | NON VÉRIFIABLE |

## Questions ouvertes

1. Pain Res sur un gen au plafond de 8 events ou bloqué : pas d'effet, ou repli sur un autre gen (D-010) ?
2. Les blocages et pertes instantanées sont-ils soumis aux DR ? Que recouvre « modificateurs identiques » (manuel du jeu 9.6.1 non consulté) ?
3. Les survivants voient-ils les crochets Fléau ? Quel est le rendu exact d'un gen bloqué côté survivant ?
4. Lethal Pursuer : l'auto-extension donne-t-elle bien 9/10/11 s au début (déduction du libellé « benefits from its own effect ») ?
5. Toutes les valeurs : à revérifier à la sortie LIVE du 10.2.0 (estimée début octobre 2026), même si aucune des 6 perks n'est touchée au PTB.

## Sources

[1] Scourge Hook: Pain Resonance — Official Dead by Daylight Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Scourge_Hook:_Pain_Resonance — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[2] Scourge Hook: Pain Resonance — NightLight — https://nightlight.gg/perks/Scourge_Hook:_Pain_Resonance — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[3] Scourge Hook: Pain Resonance — AllMyPerks — https://allmyperks.com/perks/scourge-hook-pain-resonance — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[4] Rectangular View, « Scourge Hooks for Beginners » (08/01/2026) — https://rectangularview.com/2026/01/08/dead-by-daylight-scourge-hooks-for-beginners/ — consulté le 27/09/2026 via WebSearch (titre seulement)
[5] BHVR Forums, « Scourge Hook: Pain Resonance + Dead Man's Switch » — https://forums.bhvr.com/dead-by-daylight/discussion/308936/scourge-hook-pain-resonance-dead-mans-switch ; Steam Guide « Play around Pain Resonance and Dead Man's Switch combo » — https://steamcommunity.com/sharedfiles/filedetails/?id=2758369464 — consulté le 27/09/2026 via WebSearch (titres seulement)
[6] Pop Goes the Weasel — Official Dead by Daylight Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Pop_Goes_the_Weasel — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[7] Pop Goes the Weasel — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Pop_Goes_the_Weasel — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[8] Pop Goes the Weasel — NightLight — https://nightlight.gg/perks/Pop_Goes_the_Weasel — consulté le 27/09/2026 via WebSearch
[9] Corrupt Intervention — Official Dead by Daylight Wiki (Fandom) — https://deadbydaylight.fandom.com/wiki/Corrupt_Intervention — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[10] Corrupt Intervention — Official Dead by Daylight Wiki (wiki.gg) — https://deadbydaylight.wiki.gg/wiki/Corrupt_Intervention — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[11] Corrupt Intervention — AllMyPerks / Perkatory — https://allmyperks.com/perks/corrupt-intervention ; https://perkatory.gg/perk/corrupt-intervention — consulté le 27/09/2026 via WebSearch
[12] Audit phase 0 du projet — `kb/seed/audit_phase0.txt` (tables « Référence vérifiée » : notes 7.5.0, 9.5.0, 9.6.0, 10.1.0 ; wiki.gg Generators / Patch Notes) — source interne, lue le 27/09/2026
[13] deadbydaylight.wiki.gg/wiki/<Page> — page complète via API, consultée le 27/09/2026 — pages : Scourge_Hook:_Pain_Resonance, Pop_Goes_the_Weasel, Corrupt_Intervention, Grim_Embrace, Lethal_Pursuer, Nowhere_to_Hide, et pour les règles : Eruption, Hex:_Ruin, Dead_Man's_Switch, Oppression (extrait local : `kb/sources/wiki_perks_digest.md`, brut `wiki_perks.json`)
[14] 9.1.1 | Bugfix Patch — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/517 — copie locale `kb/sources/patches/official_517.txt`, lue le 27/09/2026
[15] 9.2.0 | Sinister Grace (dont la section finale « Postponed ») — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/523 — copie locale `kb/sources/patches/official_523.txt`, lue le 27/09/2026
[16] 9.4.0 | Stranger Things Chapter 2 — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/534 — copie locale `kb/sources/patches/official_534.txt`, lue le 27/09/2026
[17] 9.5.0 | All-Kill: Comeback — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/538 — copie locale `kb/sources/patches/official_538.txt`, lue le 27/09/2026
[18] 9.6.0 | Patch Notes (Diminishing Returns Update) — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/544 — copie locale `kb/sources/patches/official_544.txt`, lue le 27/09/2026
[19] 9.6.2 | Bugfix Patch — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/546 — copie locale `kb/sources/patches/official_546.txt`, lue le 27/09/2026
[20] 10.1.0 | Chorus of Sin — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/556 — copie locale `kb/sources/patches/official_556.txt`, lue le 27/09/2026
[21] 10.1.2 | Bugfix Patch — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/558 — copie locale `kb/sources/patches/official_558.txt`, lue le 27/09/2026
[22] 10.2.0 PTB Patch Notes (NON LIVE) — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/559 — copie locale `kb/sources/patches/official_559.txt`, lue le 27/09/2026
[23] 9.5.1 | Bugfix Patch — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/539 — copie locale `kb/sources/patches/official_539.txt`, lue le 27/09/2026
[24] 10.0.0 | Jason Patch Notes — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/550 — copie locale `kb/sources/patches/official_550.txt`, lue le 27/09/2026
