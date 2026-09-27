# Lot 3 — Perks tueur vues du survivant, page 90 du guide seed (ch9_killperks.txt l. 62-127)

**Couverture web : 3 éléments vérifiés par recherche (Pain Resonance, Pop Goes the Weasel, Corrupt Intervention) / 3 non re-vérifiés par recherche (quota) — dont Nowhere to Hide et les règles de régression couverts par les preuves déjà établies dans l'audit phase 0 [12], et Grim Embrace + Lethal Pursuer = seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé).**

- Référence : LIVE 10.1.2a (17/09/2026) ; PTB 10.2.0 (15-21/09/2026) **non LIVE**, toujours étiqueté PTB.
- Méthode : WebSearch uniquement (WebFetch bloqué). Résumés de recherche = STRONG_SECONDARY au mieux ; « via résumé de recherche ».
- Périmètre : Scourge Hook: Pain Resonance, Pop Goes the Weasel, Corrupt Intervention, Grim Embrace, Lethal Pursuer, Nowhere to Hide + règles de régression (p. 89, l. 2-61) + catégories / PTB 10.2.0 (l. 754-841).
- Notes de menace = **HEURISTIC**. Rubriques analytiques (Indice observable, Soupçonner, Confirmer, Adaptation robuste, Counterplay, Erreurs, Menace, règles de PERK DEDUCTION) = **HEURISTIC / EXPERT OPINION**, sauf éléments explicitement marqués FACT.

> **Limite de vérification, à lire en premier.** Le quota WebSearch de la **session** (200 appels, partagé entre tous les agents) s'est épuisé après **4 recherches** de ce lot. Ont été vérifiés par WebSearch : Pain Resonance (2 recherches), Pop Goes the Weasel (1) et Corrupt Intervention (1). Pour les autres perks, seules servent les données **déjà prouvées** dans `kb/seed/audit_phase0.txt` (notes officielles 7.5.0 / 9.5.0 / 9.6.0 / 10.1.0 citées par l'audit).
> **Grim Embrace** et **Lethal Pursuer** n'ont reçu **aucune vérification** : leur fiche reprend l'effet du seed, marqué **UNCERTAIN / NON VÉRIFIABLE**. Elle ne doit pas servir de source tant qu'un lot suivant ne l'a pas vérifiée (voir Questions ouvertes).
> Pour les perks de la p. 90, aucune source lue ne mentionne de changement en PTB 10.2.0. La liste des 58 perks modifiées du PTB n'a pas pu être consultée.

---

## Règles de régression vérifiées

| Règle (seed p. 89) | Vérifié | Patch | Source | Confiance | Verdict |
|---|---|---|---|---|---|
| Coup de pied (Damage Generator) 1,8 s, −5 % de la progression totale d'un coup, puis régression | Action 1,8 s (depuis 6.1.0, avant 2 s) ; −5 % instantané depuis 7.5.0 (était 2,5 % depuis 6.1.0) | 7.5.0 (30/01/2024) | [12] (audit : wiki.gg Patch Notes 7.5.X, ComicBook, wiki.gg Generators) | VERIFIED_MULTI_SOURCE | OK |
| Régression de base 0,25 charge/s ; ~360 s de 90 à 0 | −0,25 c/s ; 90 charges → 0 en 360 s | — | [12] | VERIFIED_MULTI_SOURCE | OK |
| 8 « Regression Events » par gen ; event = perte instantanée ≥ 2,5 % causée par le tueur ; pointes dès le 4ᵉ ; au 8ᵉ, le tueur ne peut plus interagir | Confirmé tel quel | 7.5.0 | [12] (wiki.gg Patch Notes 7.5.X ; wiki.gg Generators) | VERIFIED_MULTI_SOURCE | OK |
| Les skill checks ratés ne comptent pas | Confirmé : ils ne comptent pas et font **toujours** régresser (même au plafond) | 7.5.0 | [12] | VERIFIED_MULTI_SOURCE | OK |
| Si le gen visé a atteint la limite, Pain Resonance se rabat sur un autre gen | Non trouvé dans les sources lues (question ouverte D-010 de l'audit) | — | — | UNCERTAIN | NON VÉRIFIABLE |
| « Le 3-gen infini n'existe plus » | Conséquence logique du plafond de 8 events : un gen au plafond ne peut plus être frappé. Le 3-gen reste un ralentissement fort | 7.5.0 | déduction de [12] | HEURISTIC | OK (heuristique) |
| Gen bloqué : progression et régression figées ; pas de perte instantanée pendant le blocage | Confirmé | — | [12] (wiki.gg Generators) | STRONG_SECONDARY | OK |
| Stopper la régression : réparer environ +5 % | Confirmé : il faut réparer 5 % (fin du « gen tapping ») | 7.5.0 | [12] | VERIFIED_MULTI_SOURCE | OK |
| Diminishing Returns 9.6.0 (28/04/2026) : 100 / 50 / 25 / 12,5 / 5 % | Confirmé ; le plus fort (en valeur absolue) compte à 100 % ; 5 % dès le 5ᵉ | 9.6.0 | [12] (notes officielles 9.6.0) | VERIFIED_PRIMARY | OK |
| DR : add-ons exclus | Confirmé (add-ons de pouvoir et d'objet) | 9.6.0 | [12] | VERIFIED_PRIMARY | OK |
| DR : pénalités de vitesse d'action négatives réduites seulement entre sources d'un même rôle | Confirmé ; même règle pour les bonus de chance de skill check | 9.6.0 | [12] | VERIFIED_PRIMARY | OK (incomplet) |
| Blocages et pertes instantanées « ne relèvent pas de la même catégorie », donc hors DR | Les notes 9.6.0 disent seulement « repeated positive or negative gameplay modifiers and status effects », sans liste. Rien sur les blocages ni sur les pertes instantanées | 9.6.0 | [12] | UNCERTAIN | NON VÉRIFIABLE (présenté comme un fait) |
| Pop « seul des 4 perks du build gen control qui subit la taxe » | Aucune source. Dépend de la liste des catégories DR, qui n'est pas publiée | — | — | HYPOTHESIS | NON VÉRIFIABLE |
| Empiler Ruin + Call of Brine + Overcharge + Lay Waste est peu rentable | Cohérent avec les DR **si** ce sont des modificateurs identiques de vitesse de régression. Non confirmé | 9.6.0 | déduction | HYPOTHESIS | IMPRÉCIS |
| Patch 9.2.0 (sept. 2025) : Ruin 100/125/150 %, Pop 20 → 15 %, DMS 25/30/35 s, Oppression ; nerfs de Pain Res / Eruption non passés | **Contradiction dans l'audit lui-même** : sa table des patchs donne 9.2.0 LIVE = Ruin 100/125/150, Pop 20 → 15 %, **Eruption 10 → 5 %**, DMS 25/30/35. Sa question ouverte 11 cite pourtant wiki.gg 9.2.X : les changements PTB de Pop, Eruption, Ruin et DMS ont été **annulés** au LIVE | 9.2.0 | [12] | UNCERTAIN | NON VÉRIFIABLE → CONFLICT-L3P90-01 |
| Pain Res toujours à 10/15/20 % | Confirmé par le wiki (via résumé de recherche) | LIVE | [1][2][3] | STRONG_SECONDARY | OK |
| Eruption à 10 % | Hors périmètre de cette page ; même conflit 9.2.0 | — | [12] | UNCERTAIN | NON VÉRIFIABLE |
| Pop 9.5.0 : +15 % au coup de pied, soit 20 % au total, calculé sur la progression totale | +15 % → 20 % au total confirmé (wiki). « Totale vs actuelle » : le résumé mentionne des changements passés entre ces deux bases de calcul, sans les dater | 9.5.0 (mars 2026) | [6][7][12] | STRONG_SECONDARY | OK (partie « totale » : IMPRÉCIS) |

**À retenir côté survivant (FACT, sauf mention)**
- Un coup de pied retire 5 % d'un coup, puis le gen régresse lentement. Pour stopper la régression, il faut réparer 5 %. Tapoter le gen ne suffit pas.
- Des pointes autour d'un gen signalent au moins 4 events. Au 8ᵉ, le tueur ne peut plus rien faire sur ce gen. Seuls les skill checks ratés le font encore régresser.
- Un gen bloqué ne peut ni progresser ni perdre de progression d'un coup. HEURISTIC : pendant un blocage (Corrupt, Grim Embrace), le gen le plus avancé est protégé des pertes instantanées.

---

## Fiches perks

### Scourge Hook: Pain Resonance — The Artist
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (perte instantanée) · scourge
- **Effet LIVE + valeurs** : au début de l'épreuve, 4 crochets aléatoires deviennent des crochets Fléau (le tueur voit leur aura en blanc). Le perk démarre avec 4 jetons. Chaque fois qu'un survivant est accroché sur un crochet Fléau **pour la première fois**, 1 jeton est consommé. Le gen **le plus avancé** explose et perd **10/15/20 % de sa progression totale**, puis la régression normale s'applique. Les survivants qui le réparent **crient**. Le perk est désactivé quand les 4 jetons sont consommés. — STRONG_SECONDARY (wiki via résumé de recherche, 2 recherches concordantes [1][2][3])
  - Historique : 15/20/25 % → 10/15/20 % avec le passage aux jetons (HISTORICAL, date non relevée).
- **PTB 10.2.0** : non modifiée d'après les sources lues (liste PTB non consultée) — UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) :
  - Juste après un accrochage : explosion du gen le plus avancé, avec une grosse chute de la barre pour ceux qui réparent ; ceux qui réparent crient. FACT (wiki)
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
- **Écart avec le seed** : OK pour l'effet et les valeurs. Le seed ne précise pas que la régression normale s'applique après l'explosion (le wiki le dit). Le seed affirme sans source que le perk se rabat sur un autre gen au plafond : NON VÉRIFIABLE.
- **Sources** : [1][2][3][4][5][12]

### Pop Goes the Weasel — The Clown
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (perte instantanée au coup de pied)
- **Effet LIVE + valeurs** : après un accrochage, le prochain coup de pied manuel sur un gen fait perdre **+15 %**, soit **20 %** au total avec les 5 % de base. — STRONG_SECONDARY [6][7][12]
  - Durée de la fenêtre : 35/40/45 s selon le seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) — UNCERTAIN.
  - Usage unique par accrochage : cohérent avec le texte du seed, non recoupé — UNCERTAIN.
- **PTB 10.2.0** : non modifiée d'après les sources lues — UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct (pas de statut survivant connu). Seul signal : une chute de progression d'environ 20 % au lieu de 5 % sur un coup de pied qui suit un accrochage.
- **Soupçonner** (HEURISTIC) : accrochage + le tueur quitte le crochet sans patrouiller et va droit sur un gen avancé → plausible.
- **Confirmer** (HEURISTIC) : la barre chute très fortement sur le coup de pied (visible si l'on revient sur le gen, ou avec un perk d'info comme Déjà Vu ou Blast Mine…).
- **Adaptation robuste** (HEURISTIC) : dans la fenêtre qui suit un accrochage (considérer environ 45 s, HEURISTIC), ne pas laisser sans surveillance un gen presque fini proche du crochet. Soit le terminer, soit y revenir tout de suite après le coup de pied pour réparer 5 %.
- **Counterplay** (HEURISTIC) :
  - Un gen au plafond (8 events) est immunisé.
  - Un gen bloqué ne subit pas de perte instantanée.
  - Finir les gens au lieu d'en avoir plusieurs à 70-90 %.
- **Erreurs à ne pas faire** (HEURISTIC) : lâcher un gen à 95 % quand le tueur arrive juste après un accrochage, sans y revenir.
- **Menace (HEURISTIC 0-3)** : SoloQ 2 / SWF 2
- **Écart avec le seed** : valeur +15 % / 20 % : OK. Fenêtre 35/40/45 s : NON VÉRIFIABLE. Historique 9.2.0 « 20 → 15 % » : conflit (CONFLICT-L3P90-01). « Calcul sur la progression totale » : IMPRÉCIS (non daté).
- **Sources** : [6][7][8][12]

### Corrupt Intervention — The Plague
- **Statut / catégorie** : LIVE 10.1.2a · slowdown (blocage en début de partie)
- **Effet LIVE + valeurs** : au début de l'épreuve, les **3 gens les plus éloignés du tueur** sont bloqués par l'Entité pendant **80/100/120 s**. Le perk se désactive dès que le **premier survivant passe à l'état mourant**. — STRONG_SECONDARY (wiki via résumé de recherche [9][10][11])
- **PTB 10.2.0** : non modifiée d'après les sources lues — UNCERTAIN
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
- **Sources** : [9][10][11]

### Grim Embrace — The Artist
- **Statut / catégorie** : LIVE 10.1.2a (présumé, seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) · slowdown (blocage) · info/aura (Obsession)
- **Effet LIVE + valeurs** : **seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)** — UNCERTAIN. Selon le seed, le 1er accrochage de chaque survivant donne un jeton. Quand le tueur est « à 16 m du crochet », tous les gens sont bloqués 6/8/10 s. Au 4ᵉ jeton : blocage de 40 s et aura de l'Obsession révélée 6 s. — UNCERTAIN
  - Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : le blocage se déclencherait quand le tueur **s'éloigne à au moins 16 m** du survivant accroché (pas « à 16 m » au sens de proximité).
- **PTB 10.2.0** : UNCERTAIN (non vérifié)
- **Indice observable (survivant)** (HEURISTIC) : si l'effet du seed est exact, **tous** les gens se bloquent brièvement peu après chaque 1er accrochage. Le blocage long (40 s) arrive au 4ᵉ survivant accroché. UNCERTAIN
- **Soupçonner** (HEURISTIC) : accrochage + Artist ou build gen-control + tous les gens deviennent non réparables peu après.
- **Confirmer** (HEURISTIC) : blocage global répété à chaque **nouveau** survivant accroché ; pas de blocage au 2ᵉ accrochage d'un même survivant.
- **Adaptation robuste** (HEURISTIC) :
  - Pendant un blocage court, aller vers le crochet ou vers le gen suivant, pas attendre sur place.
  - Au 4ᵉ nouveau survivant accroché, l'Obsession doit bouger ou se cacher : son aura est possiblement révélée.
- **Counterplay** (HEURISTIC) : éviter de donner 4 premiers accrochages rapides, en tenant les chases longues. Les blocages protègent aussi les gens des pertes instantanées (règle vérifiée).
- **Erreurs à ne pas faire** (HEURISTIC) : prendre le gen bloqué pour un gen « cassé » et l'abandonner définitivement.
- **Menace (HEURISTIC 0-3)** : SoloQ 2 / SWF 2
- **Écart avec le seed** : NON VÉRIFIABLE. La formulation « à 16 m du crochet » est ambiguë (s'éloigner à plus de 16 m ?) : IMPRÉCIS probable.
- **Sources** : aucune source web (seed uniquement, NON RE-VÉRIFIÉ — quota WebSearch épuisé)

### Lethal Pursuer — The Nemesis
- **Statut / catégorie** : LIVE 10.1.2a (présumé, seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)) · info/aura
- **Effet LIVE + valeurs** : **seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé)** — UNCERTAIN. Selon le seed, les auras de tous les survivants sont visibles 7/8/9 s au début de la partie, et les autres effets de lecture d'aura durent +2 s. Le seed écrit « tous vos autres effets de lecture d'aura » ; il reste à vérifier si l'extension ne vise que les auras **de survivants**. — UNCERTAIN
  - Connaissance du modèle (antérieure à mi-2026), UNCERTAIN : le +2 s viserait les effets de lecture d'aura **de survivants** uniquement.
- **PTB 10.2.0** : UNCERTAIN (non vérifié)
- **Indice observable (survivant)** (HEURISTIC) : aucun indice direct connu. Indirect : dès le début, le tueur va droit sur un survivant sans exploration. Si un survivant a Distortion, son jeton est consommé au début de partie (mécanique de Distortion non revérifiée ici : UNCERTAIN).
- **Soupçonner** (HEURISTIC) : tueur qui fonce en ligne droite vers vous dès le début + auras « longues » sur d'autres perks (BBQ, Nurse's Calling…) → plausible.
- **Confirmer** (HEURISTIC) : difficile sans Distortion. Écran de fin de partie ou Match Details.
- **Adaptation robuste** (HEURISTIC) : supposer que le tueur connaît vos positions de départ. Dès le début, se préparer à une chase immédiate (se placer près d'un loop fort, ne pas démarrer seul un gen en zone morte).
- **Counterplay** (HEURISTIC) :
  - Distortion ou casiers pour les auras suivantes (effet de l'aura dans un casier non vérifié).
  - Déplacement latéral juste après la fin de la fenêtre de 7-9 s.
- **Erreurs à ne pas faire** (HEURISTIC) : croire que le tueur « a de la chance » au spawn. Répéter la même position de départ prévisible.
- **Menace (HEURISTIC 0-3)** : SoloQ 1 / SWF 1 (le danger vient surtout de l'extension de durée combinée à d'autres auras)
- **Écart avec le seed** : NON VÉRIFIABLE
- **Sources** : aucune source web (seed uniquement, NON RE-VÉRIFIÉ — quota WebSearch épuisé)

### Nowhere to Hide — The Knight
- **Statut / catégorie** : LIVE 10.1.2a · info/aura
- **Effet LIVE + valeurs** : quand le tueur endommage un gen, les auras des survivants à **24 m** de ce gen lui sont révélées **3/4/5 s**. — VERIFIED_PRIMARY (notes 10.1.0 citées par l'audit [12]). La valeur de **18 m** n'existait qu'au **PTB 10.1.0** et n'est **pas** passée au LIVE.
- **PTB 10.2.0** : non modifiée d'après les sources lues — UNCERTAIN
- **Indice observable (survivant)** (HEURISTIC) : aucun indice HUD. Indirect : juste après un coup de pied, le tueur se tourne ou va droit vers votre cachette proche.
- **Soupçonner** (HEURISTIC) : coup de pied + réorientation immédiate vers des survivants cachés près du gen → plausible.
- **Confirmer** (HEURISTIC) : la répétition (plusieurs coups de pied, chaque fois suivis d'une traque directe).
- **Adaptation robuste** (HEURISTIC) : quand le tueur approche d'un gen que vous venez de quitter, s'éloigner **à plus de 24 m** au lieu de se cacher derrière un mur proche. Une aura ignore la ligne de vue.
- **Counterplay** (HEURISTIC) : Distortion ; quitter la zone tôt ; laisser le tueur frapper le gen puis revenir réparer 5 %.
- **Erreurs à ne pas faire** (HEURISTIC) : rester accroupi à 10 m du gen en attendant que le tueur parte.
- **Menace (HEURISTIC 0-3)** : SoloQ 2 / SWF 1
- **Écart avec le seed** : **FAUX / PTB-comme-LIVE**. Le seed écrit « la portée est passée de 24 à 18 m au patch 10.1.0 ». La valeur LIVE est 24 m ; 18 m était la valeur du PTB 10.1.0. Déjà prouvé par l'audit (CONFLICT-G11) ; ne pas re-corriger ailleurs.
- **Sources** : [12]

---

## Matériel pour la PERK DEDUCTION

*Règles HEURISTIC / EXPERT OPINION ; seuls les éléments marqués FACT sont vérifiés.*

1. **Accrochage + cri collectif + explosion sur le gen le plus avancé → Pain Resonance (FACT si observé).** Comportement robuste : ne jamais garder un seul gen très avancé au moment d'un 1er accrochage ; le finir ou répartir la progression. Compter les 4 jetons (1 par survivant).
2. **Cri Pain Res + gen bloqué juste après avoir lâché la réparation → Pain Res + Dead Man's Switch plausible.** Comportement robuste : après le cri, reprendre la réparation tout de suite ou changer de gen, sans stop-and-go. Combo : COMMUNITY_OBSERVATION.
3. **3 gens éloignés du tueur non réparables dès le début → Corrupt Intervention.** Comportement robuste : 1 ou 2 survivants sur les gens près du tueur, les autres sur totems et coffres ; tenir la 1ʳᵉ chase, car le 1er down lève le blocage.
4. **Tueur qui va en ligne droite vers vous dès le début (+ auras qui semblent durer longtemps) → Lethal Pursuer plausible.** Comportement robuste : partir du principe que votre spawn est connu ; se placer près d'une structure forte. (Effet non vérifié : UNCERTAIN.)
5. **Accrochage + tueur qui file directement vers un gen avancé + grosse chute de progression au coup de pied → Pop Goes the Weasel.** Comportement robuste : pendant environ 45 s après un accrochage (HEURISTIC), finir les gens proches du crochet ou revenir réparer 5 % aussitôt après le coup de pied.
6. **Coup de pied + tueur qui se retourne vers des survivants cachés tout près → Nowhere to Hide.** Comportement robuste : quitter la zone à plus de 24 m au lieu de se cacher près du gen ; revenir après.
7. **Tous les gens bloqués quelques secondes après chaque nouveau survivant accroché → Grim Embrace plausible.** Comportement robuste : utiliser le blocage pour se déplacer ou sauver ; au 4ᵉ nouveau survivant accroché, l'Obsession se méfie. (Effet non vérifié : UNCERTAIN.)
8. **Pointes autour d'un gen → au moins 4 events consommés (FACT).** Comportement robuste : un gen avancé avec pointes a une valeur défensive (peu de coups de pied restants) ; au 8ᵉ event, seul un skill check raté le fait encore régresser.

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| L3P90-C01 | Pain Res : 4 jetons, 1er accrochage Fléau de chaque survivant ; gen le plus avancé −10/15/20 % du total ; les réparateurs crient ; régression normale ensuite | [1][2][3] | LIVE | STRONG_SECONDARY |
| L3P90-C02 | Pop : +15 % au coup de pied, soit 20 % au total | [6][7][12] | 9.5.0 → LIVE | STRONG_SECONDARY |
| L3P90-C03 | Pop : fenêtre de 35/40/45 s | seed, NON RE-VÉRIFIÉ (quota) | ? | UNCERTAIN |
| L3P90-C04 | Corrupt : 3 gens les plus éloignés bloqués 80/100/120 s ; fin au 1er survivant mourant | [9][10][11] | LIVE | STRONG_SECONDARY |
| L3P90-C05 | Nowhere to Hide : 24 m, 3/4/5 s (18 m = PTB 10.1.0 seulement) | [12] (notes 10.1.0) | 10.1.0 → LIVE | VERIFIED_PRIMARY (via audit) |
| L3P90-C06 | Grim Embrace 6/8/10 s ; 40 s au 4ᵉ jeton ; aura de l'Obsession 6 s | seed, NON RE-VÉRIFIÉ (quota) | ? | UNCERTAIN |
| L3P90-C07 | Lethal Pursuer 7/8/9 s ; +2 s sur les auras | seed, NON RE-VÉRIFIÉ (quota) | ? | UNCERTAIN |
| L3P90-C08 | Coup de pied 1,8 s, −5 % instantané | [12] | 7.5.0 | VERIFIED_MULTI_SOURCE |
| L3P90-C09 | Régression de base 0,25 c/s (360 s de 90 à 0) | [12] | — | VERIFIED_MULTI_SOURCE |
| L3P90-C10 | 8 events par gen (≥ 2,5 %) ; pointes dès le 4ᵉ | [12] | 7.5.0 | VERIFIED_MULTI_SOURCE |
| L3P90-C11 | Stopper la régression = réparer 5 % | [12] | 7.5.0 | VERIFIED_MULTI_SOURCE |
| L3P90-C12 | DR 100/50/25/12,5/5 %, add-ons exclus | [12] | 9.6.0 | VERIFIED_PRIMARY |
| L3P90-C13 | Blocages et pertes instantanées hors DR | seed seul | 9.6.0 | UNCERTAIN |

## Conflits

#### CONFLICT-L3P90-01 : changements LIVE du patch 9.2.0 (Pop, Eruption, Ruin, DMS)
- Source A : table des patchs de l'audit (notes 9.2.0 résumées) : Ruin 100/125/150 %, Pop 20 → 15 %, Eruption 10 → 5 %, DMS 25/30/35 s au LIVE 9.2.0.
- Source B : wiki.gg Patch Notes 9.2.X (cité par la question ouverte 11 de l'audit) : les changements PTB de Pop, Eruption, Ruin et DMS ont été annulés au LIVE. Le seed ajoute une 3ᵉ version : Ruin, Pop et DMS passés, Pain Res et Eruption non passés.
- Hypothèse : la table de l'audit a pu recopier les notes du PTB 9.2.0. Pour Pop, l'enjeu est faible, puisque la réécriture 9.5.0 fixe la valeur actuelle à 20 % au total.
- Résolution : UNRESOLVED (recherche ciblée impossible, quota épuisé). Impact LIVE : Eruption (10 % ou 5 %) et DMS restent incertains.

#### CONFLICT-L3P90-02 : le cri de Pain Resonance révèle-t-il la position ?
- Source A : résumé du wiki (fandom) : « will scream, but not reveal their location ».
- Source B : le même résumé ajoute que « some older sources indicate… variations in whether location is revealed ».
- Hypothèse : la version actuelle ne révèle pas la position, contrairement aux anciennes versions.
- Résolution : partiellement résolue en faveur de A (STRONG_SECONDARY). Côté survivant, rester prudent : un tueur à portée d'oreille entend le cri.

#### CONFLICT-L3P90-03 : fenêtre de Pop Goes the Weasel
- Source A : seed : 35/40/45 s.
- Source B : aucune source lue ne donne la durée.
- Résolution : UNRESOLVED.

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Nowhere to Hide | « de 24 à 18 m au patch 10.1.0 » | 24 m LIVE ; 18 m = PTB 10.1.0 | **PTB-comme-LIVE / FAUX** |
| Pain Res | 10/15/20 %, 4 jetons, gen le plus avancé, cri | Confirmé ; la régression normale s'applique ensuite (omis) | OK |
| Pain Res, repli au plafond | Se rabat sur un autre gen | Non trouvé | NON VÉRIFIABLE |
| DR sur blocages et pertes instantanées | « ne relèvent pas de la même catégorie », mélanger reste efficace | Notes 9.6.0 muettes | NON VÉRIFIABLE (affirmé comme fait) |
| Pop « seul perk taxé » du build gen control | Affirmé | Aucune source | NON VÉRIFIABLE |
| Patch 9.2.0 | Ruin, Pop, DMS, Oppression passés ; Pain Res et Eruption non | Sources contradictoires | NON VÉRIFIABLE (CONFLICT-L3P90-01) |
| Pop 9.5.0 | +15 %, 20 % au total, sur la progression totale | +15 % / 20 % confirmés ; base « totale » non datée | OK / IMPRÉCIS |
| Pop, fenêtre | 35/40/45 s | Non trouvé | NON VÉRIFIABLE |
| Corrupt Intervention | 3 gens les plus éloignés, 80/100/120 s, fin au 1er down | Confirmé | OK |
| Grim Embrace | 6/8/10 s, « à 16 m du crochet », 40 s + Obsession 6 s | Non vérifié ; formulation ambiguë | NON VÉRIFIABLE (IMPRÉCIS probable) |
| Lethal Pursuer | 7/8/9 s, +2 s sur « tous vos autres effets d'aura » | Non vérifié | NON VÉRIFIABLE |
| Règles de régression (5 %, 0,25 c/s, 8 events, pointes au 4ᵉ, 5 % pour stopper, blocage) | — | Confirmées par l'audit | OK |
| DR 100/50/25/12,5/5, add-ons exclus, règle de rôle | — | Confirmé | OK |
| Stats NightLight (usage %) | Top 14, taux de kill par build | Non vérifiables (NightLight bloqué) | NON VÉRIFIABLE |

## Questions ouvertes

1. **Grim Embrace** et **Lethal Pursuer** : effet et valeurs LIVE 10.1.2a à vérifier. Une seule recherche WebSearch chacun suffira quand le quota sera rétabli.
2. Durée de la fenêtre de Pop (35/40/45 s ou fixe ?) et règle « un seul usage par accrochage ».
3. CONFLICT-L3P90-01 : quels changements de 9.2.0 sont réellement passés au LIVE ? À trancher avec les notes officielles 9.2.0.
4. Pain Res sur un gen au plafond de 8 events ou bloqué : pas d'effet, ou repli sur un autre gen (D-010) ?
5. Les blocages et pertes instantanées sont-ils soumis aux DR (manuel du jeu 9.6.1) ?
6. Les survivants voient-ils les crochets Fléau ? Quel est le rendu exact d'un gen bloqué côté survivant ?
7. PTB 10.2.0 : aucune des 6 perks de cette page n'est-elle dans la liste des 58 perks modifiées ? Liste non consultée.

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
