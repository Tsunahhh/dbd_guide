# Lot 12 — Mécaniques ouvertes (27/09/2026)

Référence : **LIVE 10.1.2a (17/09/2026)**. PTB 10.2.0 non LIVE.
Méthode (différente du brief initial) : notes officielles locales (`kb/sources/patches/official_*.txt`) + 3 notes PTB officielles téléchargées ce jour (articles 527, 533, 542) ; wiki.gg lu **en entier** via l'API (`kb/tools/wiki_text.py`), y compris **historique des révisions** et modules de données ; fandom lu via l'API en second avis. Pas de WebSearch.

Légende confiance : VP = VERIFIED_PRIMARY, VM = VERIFIED_MULTI_SOURCE, SS = STRONG_SECONDARY, INC = UNCERTAIN.

## Synthèse

| # | Question | Réponse | Confiance |
|---|---|---|---|
| 1 | Soigneurs max (1v4) | **2** (3 = règle du **mode 2v8** seulement, 9.4.0/9.4.2) | VM |
| 2a | Vitesse de rampement LIVE | **0,7 m/s constante** (montée à 1,05 m/s = paquet anti-slug jamais sorti) | VM |
| 2b | Récupération en rampant | **Non** : la récupération se met en pause quand on rampe ; seule Tenacity la permet (9.3.0) | VM |
| 3a | Taux de base Resolve après 9.3.0 | **+1 c/s × poids de distance divisés par 2** (×2,5 à ≤ 4 m, était ×5) ; réduction « roughly 50 % » officielle | VP (réduction) / SS (valeurs) |
| 3b | Temps de remplissage | Face camp ≤ 4 m : **≈ 22,5 s de jauge** (≈ 29,5 s après l'accrochage avec la grâce de 7 s) ; à 10 m ≈ 37,5 s ; à 15 m ≈ 79 s (sans autre survivant proche) | SS (calcul) |
| 4 | Elusive de décrochage et action voyante | **Non tranché** : wiki contradictoire, notes muettes. Ouvrir une porte **est** une action voyante (wiki) | INC (Elusive) / SS (porte) |
| 5 | Off the Record désactivée portes alimentées ? | **Probablement oui** (texte wiki mis à jour le jour de la 9.2.2) ; aucune note officielle | SS faible → INC |
| 6a | Vitesse de portage | **3,68 m/s** (92 %) pour tous les tueurs | SS |
| 6b | Durée du ramassage | **UNRESOLVED** (bonus de vitesse de ramassage plafonné à +42 % depuis 8.6.x) | INC / SS (plafond) |
| 6c | Durée du relevage (soin mourant → blessé) | **16 s** par un allié sans kit (16 charges à 1 c/s), **8 s** à deux ; moins ce que le survivant a déjà récupéré (95 % max) | SS (calcul) |
| 6d | Saut dans la trappe | Durée **UNRESOLVED** ; le tueur **ne peut plus** saisir en plein saut | SS (saisie) |
| 7 | Catégories soumises aux DR | Tous les « modificateurs et statuts majeurs » identiques issus de pouvoirs, objets, perks, offrandes ; exclus : add-ons ; règle de rôle pour 2 catégories ; vitesse de skill check incluse ; Haste et vitesse de vault concernées (notes de dev 10.2.0). **Liste itemisée : dans le manuel en jeu (9.6.1), non transcrite** | VP (règles) / UNRESOLVED (liste) |
| 8a | Plafond de Haste | **Aucun trouvé** (ni notes, ni wiki) | INC (absence) |
| 8b | Boost au coup | **1,8 s** (6.1.0, était 2 s) ; **×1,65 → 6,6 m/s** | VM (durée) / SS (×1,65) |
| 8c | Bloodlust et stun / aveuglement | **UNRESOLVED** : les deux wikis listent seulement casse de palette, coup réussi, pouvoir | INC |
| 8d | Fente (lunge) | Ouverture ≤ **0,5 s** + phase de frappe **0,3 s** à ~**6,9 m/s** ; cooldown **2,7 s** (touché) / **1,5 s** (raté) | SS |
| 9 | Portée des grognements ; durée des flaques | **UNRESOLVED** (aucune valeur dans les sources) | INC |
| 10 | Hillbilly : casse de palette sans add-on | **Oui** : le pouvoir de base est « Special-break » (9.5.0) ; casse en **1 s** ; LoPro Chains permet seulement de **continuer le sprint** à travers | VP (oui) / SS (1 s) |

---

## Q1 — Nombre max de soigneurs (1v4)
- **[FACT] (VP)** Notes 9.4.2 [1] : « Cooperative Healing: Increased the number of Survivors able to simultaneously heal one another to 3 (was 2) ». Le bloc est rangé **sous l'en-tête « 2v8 »** (avec The Good Guy 2v8, Nemesis 2v8, Dual Terror Radius).
- **[FACT] (VP)** PTB 9.4.0 [2] : même ligne, dans la section **2V8** (après « KILLER CLASS UPDATES », « NEW SURVIVOR CLASS: TORCHBEARER »). Le wiki (Patch Notes 9.4.X) [30] la range aussi sous 2v8.
- **[FACT] (SS)** wiki.gg Health States [3] : « Altruistic Healing occurs when a Survivor is being healed by **one or two** other Survivors » ; +1 c/s chacun → +2 c/s à deux.
- **Réponse : 2 soigneurs max en 1v4 (VM)** ; 3 en 2v8 uniquement. Le « 3 » du seed = règle 2v8 appliquée au 1v4.
- Non vérifié : pénalité d'efficacité en soin à deux (le wiki dit +2 c/s combinés, sans pénalité ; le mending à deux a −25 %).

## Q2 — Rampement et récupération en rampant
- **Chronologie officielle** :
  - Dev Update 08/2025 [7] : annonce montée progressive du rampement + récupération en rampant (design PTB 9.2.0).
  - 9.2.0 LIVE [6] : « Slugging Reduction Update — **Postponed** these changes » ; seul passage en LIVE : récupération **automatique** (plus de touche à maintenir).
  - PTB 9.3.0 [5] : « Crawling speed increases over time … from 0.7m/s to 1.05m/s » ; dev note : « We've **removed [recovery while crawling] from the base kit** so Survivors must choose between staying still and recovering, or crawling away ».
  - 9.3.0 LIVE [4], « Changes from PTB » : « Slugging Reduction Update — **Reverted the Slugging changes** ». Aucun changement de rampement dans 9.4.0 → 10.1.2 (grep « crawl » sur toutes les notes locales : rien d'autre).
  - 9.3.0 LIVE [4] : **Tenacity** « **Re-added** the ability to recover while crawling ; Haste 30/40/50 % » → la base ne récupère pas en rampant.
- **[FACT] (SS)** wiki.gg Health States / Dying State [3] : « A dying Survivor, **while stationary**, automatically recovers … to 95 % … 30.4 s. **The Recovery progress pauses whenever a dying Survivor is crawling around.** »
- **[FACT] (SS)** wiki.gg Movement Speeds [9] affiche encore « Crawling (Initial) 0.7 m/s / Crawling (Eventual) 1.05 m/s ». Cette ligne décrit le paquet PTB annulé ; le wiki Resolve [10] dit lui-même que le système anti-slug « was ultimately not implemented ».
- **Réponse : 0,7 m/s constante (VM) ; récupération en pause en rampant (VM : wiki + logique de la note Tenacity 9.3.0).**

## Q3 — Resolve (anti-facecamp) après 9.3.0
- **[FACT] (VP)** 9.3.0 LIVE [4] : multiplicateur de durée 0-10 s ×1, 10-20 s ×2, > 20 s ×4 ; « only accumulates when the Killer is considered camping (the meter is gaining progress) » ; reset au décrochage ; « **Decreased the base fill rate of the Anti-Facecamp meter by roughly 50 %** » ; grâce 7 s pour tous les accrochés ; zone **16 m** (20 m du PTB « reverted »).
- **[DATA] (SS)** Historique wiki.gg :
  - Hooks, révision 168478 (29/10/2025, **avant** 9.3.0) [11] : base **+1 c/s**, 100 charges, poids 0-4 m **×5**, 10 m ×2, 15 m ×0,75, 16 m ×0,5.
  - Resolve, révisions 169258-169470 (29/11 → 17/12/2025, **après** 9.3.0 LIVE) [10] : base **+1 c/s**, 100 charges, poids 4 m **×2,5**, 10 m ×1, 15 m ×0,375, 16 m ×0.
  - Chaque poids est **exactement divisé par 2** : la réduction « ~50 % » est encodée dans les poids de distance, la base nominale reste +1 c/s. Le « +1 c/s » n'est donc pas une valeur périmée (hypothèse de CONFLICT-003 levée).
- **Calcul (SS)**, tueur immobile, aucun autre survivant dans les 16 m, grâce 7 s non comptée dans le multiplicateur (jauge en pause = pas d'accumulation, règle VP) :

| Distance | Débit de base | 0-10 s | 10-20 s | Reste à ×4 | Jauge pleine après | Avant 9.3.0 |
|---|---|---|---|---|---|---|
| ≤ 4 m | 2,5 c/s | 25 | +50 = 75 | 25 / 10 c/s = 2,5 s | **≈ 22,5 s** (+7 s de grâce ≈ **29,5 s** après l'accrochage) | 20 s |
| 10 m | 1 c/s | 10 | +20 = 30 | 70 / 4 = 17,5 s | **≈ 37,5 s** | 50 s |
| 15 m | 0,375 c/s | 3,75 | +7,5 = 11,25 | 88,75 / 1,5 ≈ 59 s | **≈ 79 s** | ≈ 133 s |

- Cohérence : la dev note 9.3.0 dit que les survivants campés longtemps se décrochent « slightly earlier » → vrai à 10-15 m, légèrement faux à ≤ 4 m (22,5 s contre 20 s). Écart attribuable au « roughly » : **valeurs à ±10 %**.
- Inconnu restant : ampleur du ralentissement par les autres survivants proches ; interpolation exacte entre les paliers (le wiki dit « Linear »).
- **Réponse : taux nominal +1 c/s, poids de distance ×2,5 → ×0 (SS, cohérent avec VP) ; face camp ≈ 22,5 s de jauge, ≈ 30 s après l'accrochage (SS, calcul).**

## Q4 — Elusive de décrochage et action voyante
- **[FACT] (VP)** 10.1.0 [12] : « Anytime a Survivor is unhooked, they gain Elusive for 10 seconds (NEW - This does not apply once all generators are powered) ». Rien sur les actions voyantes.
- **Source A (SS)** wiki.gg Hooks, section Unhook Protections [11] : les protections (Haste, Endurance, **Elusive**) « are **instantly cancelled** when performing any Conspicuous Actions ». Mais le diff de la révision 189707 (10/08/2026) montre que l'éditeur a seulement **ajouté Elusive à la liste** ; la phrase d'annulation date d'avant (Endurance/Haste).
- **Source B (SS)** wiki.gg Elusive [13] : retiré seulement si le survivant est touché (attaque de base ou spéciale) ou mis au sol ; aucune mention des actions voyantes. La page Conspicuous Actions [14] ne parle que de l'**Endurance**.
- Contexte : le design PTB 9.2.0 (Dev Update 08/2025 [7]) disait « These effects are lost when the affected Survivor perform a Conspicuous Action » pour Haste/Endurance/Elusive/no-collision — design **non sorti** à l'époque.
- **Ouvrir une porte de sortie** est une action voyante selon la liste wiki [14] (SS) : bénir/purifier un totem, soigner (soi ou autrui), ouvrir une porte, Invocation, réparer, saboter un crochet, décrocher un allié.
- **Réponse : UNRESOLVED pour Elusive (INC)** ; jouer comme si l'action voyante l'annulait (prudence). Porte = action voyante (SS).

## Q5 — Off the Record et portes alimentées
- **[FACT] (VP)** 9.2.0 [6] : « Removed the stipulation that it disables once Exit Gates are powered ». 9.2.2 [16] : Endurance ré-ajoutée, 30/35/40 s — **aucune mention** de la clause. 9.3.0 [4] : les changements PTB d'Off the Record sont « Reverted » (on reste sur 9.2.2).
- **[DATA] (SS)** Module wiki `Datatable/Loadout/Descriptions` (texte courant de la perk) :
  - avant 9.2.0 (01/09/2025) : ancienne clause « deactivates once the Exit Gates are powered » ;
  - 25/09/2025 : clause retirée (9.2.0) ;
  - **révision 167681 du 07/10/2025, jour de sortie de la 9.2.2** : Endurance + **nouvelle formulation** « deactivates prematurely and is disabled for the remainder of the Trial upon powering the Exit Gates » ; inchangée depuis (révision 191267, 27/09/2026).
  - Mais le module `Datatable/Loadout/History` décrit la version « 9.2.2 » **sans** la clause, et le change log de la page dit à tort que 9.3.0 a retiré l'Endurance (confusion avec le PTB).
- Hypothèse : la 9.2.2 a remis la clause en jeu sans la noter (nouvelle formulation, typique d'un texte recopié du jeu). Non prouvé.
- **Réponse : probablement oui (SS faible, à confirmer en jeu) ; CONFLICT-L2P23-04 reste formellement ouvert.** Impact pratique faible (fenêtre de 30-40 s).

## Q6 — Portage, ramassage, relevage, trappe
- **Portage (SS)** wiki.gg Movement Speeds [9] : « Whenever any Killer is in the Carrying state, their Movement Speed is set to a new value of **3.68 m/s** » (92 %) ; cooldown d'attaque en portant : 2,7 s (touché), 1,5 s (raté). Aucune note officielle ne donne la valeur (pas de contradiction non plus). Exceptions historiques par tueur (ex. Nurse) signalées dans le change log wiki.
- **Ramassage** : aucune durée de base trouvée (wiki.gg, fandom, notes). **[FACT] (SS)** Patch Notes 8.6.X [19] : « Capped the "pick-up" speed buff at **+42 %** for Killers ». **UNRESOLVED** pour la durée.
- **Relevage d'un mourant (SS, calcul)** : un état de santé = 16 charges ; soin altruiste +1 c/s [3] → **16 s** seul sans Med-Kit, **8 s** à deux ; la récupération du mourant (jusqu'à 95 %, soit 15,2 charges) compte → un allié finit un survivant à 95 % en **≈ 0,8 s**. Hypothèse : la progression récupérée est bien la même jauge que celle du soin (le wiki le suggère : « recovers their Health to a maximum of 95 % »).
- **Wiggle** (rappel, SS) [18] : 16 charges à +1 c/s = 16 s ; lâcher = +25 %.
- **Trappe (SS)** [17] : « Hatch Grabs … Since the Hatch can be closed, this ability is **disabled** » → plus de saisie en plein saut. Ouverture à la clé : 2,5 s. **Durée du saut : UNRESOLVED.**

## Q7 — Catégories soumises aux Diminishing Returns
- **[FACT] (VP)** 9.6.0 [20] : « repeated positive or negative gameplay modifiers **and status effects** » ; « Identical Killer and Survivor modifiers granted by **Powers, Items, Perks and Offerings** » ; exclus : « Modifiers granted from **Add-ons** » ; règle de rôle : « Negative action speed modifiers », « Positive skill check chance modifiers ».
- **[FACT] (VP)** 9.6.0 bug fix [20] : « Fixed an issue where **skill check speed** was unaffected by Diminishing Returns » → la vitesse de l'aiguille est soumise.
- **[FACT] (VP)** PTB 9.6.0 [20] dev note : « All major gameplay modifiers and status effects for both roles are included ». Texte PTB, à ne pas citer comme liste LIVE.
- **[FACT] (VP)** 9.6.1 [20] : le manuel en jeu « Now lists **all Action Speeds and Modifiers affected** by Diminishing Returns ». La liste itemisée existe donc **en jeu**, pas dans les notes ni sur le wiki (page « Dead by Daylight Maths » [22] : seulement le barème et l'exclusion des add-ons).
- **[FACT] (VP, indirect)** Notes de dev du **PTB 10.2.0** [21] parlant du LIVE : Blood Pact (**Haste**) « ability to combine with other perks has been reduced since Diminishing Returns » ; Spine Chill (**vitesse de vault**) « Diminishing Returns is a good opportunity to explore it once again » ; Help Wanted : cooldown d'attaque réussie. → Haste de perks et vitesse de vault sont concernées.
- **Toujours inconnu** : Endurance (binaire), pertes instantanées de gen (Pop, Pain Resonance…), effets de base (Haste de décrochage, boost au coup) ; seules les modifications « identiques » se réduisent entre elles.
- **Réponse : règles VP ; Haste et vault : VP indirect ; liste complète : UNRESOLVED hors manuel en jeu.**

## Q8 — Haste, boost au coup, Bloodlust, fente
- **Plafond de Haste** : wiki.gg Haste [23] : « can be stacked when applied from multiple Haste sources » ; aucun plafond. Seul plafond trouvé côté tueur : vitesse de ramassage (+42 %). Le DR (9.6.0) limite en pratique l'empilement de Haste identiques. **UNRESOLVED (absence).**
- **Boost au coup** : Patch Notes 6.1.X [24] (texte des notes officielles) : « Duration of the Survivor speed boost when hit has been reduced to **1.8 seconds** (was 2 seconds) » (VM : note + wiki). Movement Speeds [9] : « On-hit Sprint 1.8 s **x1.65** → **6.6 m/s** » (SS, wiki seul).
- **Bloodlust** [25] (wiki.gg et fandom, textes identiques) : paliers 15 s / 25 s / 35 s → +0,2 / +0,4 / +0,6 m/s ; régression après fin de poursuite ; **perdu immédiatement** en cassant une palette, en touchant un survivant, en utilisant son pouvoir (liste par tueur). **Stun et aveuglement ne sont pas listés.** UNRESOLVED (absence ≠ preuve).
- **Fente** [9][26] : phase d'ouverture jusqu'à **0,5 s** puis phase de frappe **0,3 s** ; vitesse de fente ≈ **6,9 m/s** pour tous (×1,5 à 4,6 m/s ; ×1,568 à 4,4 m/s ; ×1,79 Nurse) ; cooldown **2,7 s** si touché, **1,5 s** si raté ; se cumule avec Haste/Hindered ; Bloodlust ne s'applique pas à la fente (1.5.0). Distance : non publiée ; ordre de grandeur **HYPOTHÈSE** ≈ 1,5-2 m de plus qu'en marchant.

## Q9 — Grognements, flaques de sang
- wiki.gg Pools of Blood [27] : existence, perks et add-ons (Bloodhound +2/3/4 s de durée de vie ; Blond Hair +100 % de durée) ; **aucune durée de base**. fandom : idem.
- Grognements : la page « Grunts of Pain » n'existe pas sur wiki.gg ; aucune portée dans les pages consultées (Health States, Status Effects, Iron Will via lot 2).
- **Réponse : UNRESOLVED** (mesure en jeu nécessaire).

## Q10 — Hillbilly : casse de palette sans add-on
- **[FACT] (VP)** 9.5.0 [29], « Killer Actions Update » : « Special-break: When a Downed Pallet or Breakable Wall is broken due to an ability granted by a Killer's Power » ; « The following Killers' Power descriptions have been updated: … Special-break … **The Hillbilly** ».
- **[FACT] (SS)** wiki.gg Max Thompson Jr. [28] : cooldown de la tronçonneuse après « Breaking Breakable Walls/Pallets: **1 second** » ; Pallets [28] : « The Hillbilly and The Cannibal can alternatively destroy a Pallet with their Power … Both actions only take **one second** ».
- **[FACT] (SS)** LoPro Chains [28] : « Grants the ability to **continue** a Chainsaw Sprint through Breakable Walls and dropped Pallets, breaking them in the process » (sans l'add-on : le sprint s'arrête sur la casse).
- **Réponse : oui, casse de base en ~1 s (VP / SS).**

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| L12-C01 | 2 soigneurs max en 1v4 ; 3 en 2v8 | [1][2][3][30] | 9.4.0/9.4.2 (2v8) | VERIFIED_MULTI_SOURCE |
| L12-C02 | Rampement 0,7 m/s constant en LIVE | [4][5][6][9] | 9.3.0 (revert) | VERIFIED_MULTI_SOURCE |
| L12-C03 | Pas de récupération en rampant sans Tenacity | [3][4][5] | 9.3.0 | VERIFIED_MULTI_SOURCE |
| L12-C04 | Resolve : +1 c/s × poids ×2,5 (≤ 4 m) / ×1 (10 m) / ×0,375 (15 m) / ×0 (16 m) | [4][10][11] | 9.3.0 | STRONG_SECONDARY |
| L12-C05 | Face camp ≤ 4 m : ≈ 22,5 s de jauge (≈ 29,5 s après accrochage) | calcul sur [4][10] | 9.3.0 | STRONG_SECONDARY |
| L12-C06 | Ouvrir une porte = action voyante | [14] | 6.1.0 | STRONG_SECONDARY |
| L12-C07 | Elusive de décrochage annulée par action voyante | [11] vs [13] | 10.1.0 | UNCERTAIN |
| L12-C08 | Off the Record désactivée portes alimentées | [15] vs [6][16] | 9.2.2 ? | UNCERTAIN (penche oui) |
| L12-C09 | Portage 3,68 m/s | [9] | — | STRONG_SECONDARY |
| L12-C10 | Bonus de vitesse de ramassage plafonné à +42 % | [19] | 8.6.x | STRONG_SECONDARY |
| L12-C11 | Relever un mourant : 16 s seul / 8 s à deux (sans kit, depuis 0 %) | calcul sur [3] | — | STRONG_SECONDARY |
| L12-C12 | Plus de saisie en plein saut dans la trappe | [17] | 2.7.0 | STRONG_SECONDARY |
| L12-C13 | Vitesse de skill check soumise aux DR | [20] | 9.6.0 | VERIFIED_PRIMARY |
| L12-C14 | Haste de perks et vitesse de vault soumises aux DR | [21] | 9.6.0 (dev notes 10.2.0 PTB) | VERIFIED_PRIMARY (indirect) |
| L12-C15 | Liste complète des DR dans le manuel en jeu | [20] | 9.6.1 | VERIFIED_PRIMARY |
| L12-C16 | Boost au coup 1,8 s | [24][9] | 6.1.0 | VERIFIED_MULTI_SOURCE |
| L12-C17 | Boost au coup ×1,65 (6,6 m/s) | [9] | — | STRONG_SECONDARY |
| L12-C18 | Fente : ≤ 0,5 s + 0,3 s à ~6,9 m/s ; cooldown 2,7 / 1,5 s | [9][26] | 2.2.0+ | STRONG_SECONDARY |
| L12-C19 | Hillbilly casse palettes et murs avec le pouvoir de base (Special-break), 1 s | [28][29] | 9.5.0 | VERIFIED_PRIMARY (oui) / STRONG_SECONDARY (1 s) |

## Conflits

#### CONFLICT-L12-01 : soigneurs simultanés (reprend CONFLICT-001 / G05)
- Source A : wiki.gg Health States — 1 ou 2 soigneurs.
- Source B : seed — « jusqu'à 3 soigneurs » ; notes 9.4.0 PTB / 9.4.2 — 3.
- Hypothèse : le seed a lu la ligne 9.4.2 sans voir qu'elle est dans la section 2v8.
- Résolution : **2 en 1v4, 3 en 2v8** (VM).

#### CONFLICT-L12-02 : rampement (reprend CONFLICT-002)
- Source A : wiki.gg Movement Speeds — 0,7 → 1,05 m/s.
- Source B : 9.2.0 « Postponed », 9.3.0 « Reverted the Slugging changes » ; wiki Resolve « not implemented ».
- Résolution : **0,7 m/s constant** ; la ligne 1,05 du wiki est un reste du PTB (VM).

#### CONFLICT-L12-03 : taux de base Resolve (reprend CONFLICT-003)
- Source A : wiki « +1 c/s » (soupçonné périmé).
- Source B : 9.3.0 « roughly 50 % ».
- Résolution : l'historique wiki montre que la réduction a été appliquée aux **poids de distance** (×5 → ×2,5 …), base nominale inchangée. **Résolu (SS)** ; temps ≈ ±10 %.

#### CONFLICT-L12-04 : Elusive de décrochage et action voyante
- Source A : wiki Hooks (10/08/2026) — protections, dont Elusive, annulées par action voyante.
- Source B : wiki Elusive — annulée seulement par un coup ou la mise au sol ; notes 10.1.0 muettes.
- Hypothèse : extension éditoriale de la phrase existante lors de l'ajout d'Elusive.
- Résolution : **UNRESOLVED** (test en jeu).

#### CONFLICT-L12-05 : Off the Record et portes (reprend CONFLICT-L2P23-04)
- Source A : description wiki courante, réécrite le 07/10/2025 (jour de la 9.2.2) avec la clause.
- Source B : notes 9.2.0 (clause retirée), 9.2.2 (muette) ; module History wiki (version 9.2.2 sans clause).
- Résolution : **UNRESOLVED**, penche « oui » (SS faible).

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Soigneurs (seed ch0_2 l. 179) | « jusqu'à 3 soigneurs simultanés » | 2 en 1v4 ; 3 en 2v8 | FAUX (règle 2v8) |
| Portage (ch0_2 l. 230) | 3,68 m/s | 3,68 m/s (wiki) | OK (SS) |
| Rampement (ch0_2 l. 230) | 0,7 m/s | 0,7 m/s constant | OK |
| Tronçonneuse (ch0_2 l. 211) | casse 1 s | 1 s, pouvoir de base | OK |
| Tenacity (ch3 l. 329) | +30/40/50 % de rampe, ramper et récupérer | Haste 30/40/50 % + récupération en rampant (9.3.0) | OK |

## Questions ouvertes

1. Elusive de décrochage et action voyante (test : décrocher, réparer 1 s, faire lire l'aura par une perk tueur).
2. Off the Record : clause des portes (lire la description en jeu).
3. Durée de base du ramassage ; durée du saut dans la trappe.
4. Portée des grognements ; durée de vie des flaques de sang.
5. Bloodlust perdu sur stun de palette / aveuglement ?
6. Liste itemisée des DR : transcrire le manuel en jeu (Game Manual, 9.6.1).
7. Plafond de Haste (aucune trace).
8. Ralentissement de la jauge Resolve par les survivants proches (ampleur) ; application exacte du « roughly 50 % ».

## Sources

[1] 9.4.2 Bugfix Patch — https://forums.bhvr.com/dead-by-daylight/kb/articles/536 — `official_536.txt`, consulté le 27/09/2026
[2] 9.4.0 PTB Patch Notes — https://forums.bhvr.com/dead-by-daylight/kb/articles/533 — curl, consulté le 27/09/2026
[3] wiki.gg Health States (Healing, Dying State) — https://deadbydaylight.wiki.gg/wiki/Health_States — API, 27/09/2026
[4] 9.3.0 Mid-Chapter — https://forums.bhvr.com/dead-by-daylight/kb/articles/529 — `official_529.txt`
[5] 9.3.0 PTB Patch Notes — https://forums.bhvr.com/dead-by-daylight/kb/articles/527 — curl, 27/09/2026
[6] 9.2.0 Sinister Grace — https://forums.bhvr.com/dead-by-daylight/kb/articles/523 — `official_523.txt`
[7] Developer Update August 2025 — https://forums.bhvr.com/dead-by-daylight/kb/articles/521 — `official_521.txt`
[8] (fusionné avec [3] : « Dying State » redirige vers Health States)
[9] wiki.gg Movement Speeds — https://deadbydaylight.wiki.gg/wiki/Movement_Speeds — API, 27/09/2026
[10] wiki.gg Resolve — https://deadbydaylight.wiki.gg/wiki/Resolve — révisions 168764, 169258, 169470 — API, 27/09/2026
[11] wiki.gg Hooks — https://deadbydaylight.wiki.gg/wiki/Hooks — révisions 168478 (29/10/2025) et 189707 (10/08/2026) — API, 27/09/2026
[12] 10.1.0 Chorus of Sin — https://forums.bhvr.com/dead-by-daylight/kb/articles/556 — `official_556.txt`
[13] wiki.gg Elusive (Status HUD/Elusive) — https://deadbydaylight.wiki.gg/wiki/Elusive — API, 27/09/2026
[14] wiki.gg Conspicuous Actions — https://deadbydaylight.wiki.gg/wiki/Conspicuous_Actions — API, 27/09/2026
[15] wiki.gg Off the Record + Module:Datatable/Loadout/Descriptions (révisions 166237 → 191267, dont 167681 du 07/10/2025) + Module:Datatable/Loadout/History — API, 27/09/2026
[16] 9.2.2 Bugfix Patch — https://forums.bhvr.com/dead-by-daylight/kb/articles/525 — `official_525.txt`
[17] wiki.gg Hatch — https://deadbydaylight.wiki.gg/wiki/Hatch — API, 27/09/2026
[18] wiki.gg Wiggle — https://deadbydaylight.wiki.gg/wiki/Wiggle — API, 27/09/2026
[19] wiki.gg Patch Notes 8.6.X — https://deadbydaylight.wiki.gg/wiki/Patch_Notes_8.6.X — API, 27/09/2026
[20] 9.6.0 Patch Notes (544), 9.6.1 Bugfix (545), 9.6.0 PTB (https://forums.bhvr.com/dead-by-daylight/kb/articles/542, curl) — 27/09/2026
[21] 10.2.0 PTB Patch Notes — https://forums.bhvr.com/dead-by-daylight/kb/articles/559 — `official_559.txt` (PTB, dev notes seulement)
[22] wiki.gg Dead by Daylight Maths (redirection de « Diminishing Returns ») — API, 27/09/2026
[23] wiki.gg Haste (Status HUD/Haste) — API, 27/09/2026
[24] wiki.gg Patch Notes 6.1.X — API, 27/09/2026
[25] wiki.gg Bloodlust ; fandom Status HUD/Bloodlust — https://deadbydaylight.fandom.com/wiki/Status_HUD/Bloodlust — API, 27/09/2026
[26] wiki.gg Attacks — https://deadbydaylight.wiki.gg/wiki/Attacks — API, 27/09/2026
[27] wiki.gg Pools of Blood ; fandom Pools of Blood — API, 27/09/2026
[28] wiki.gg Max Thompson Jr. ; wiki.gg Pallets — API, 27/09/2026
[29] 9.5.0 All-Kill: Comeback — https://forums.bhvr.com/dead-by-daylight/kb/articles/538 — `official_538.txt`
[30] wiki.gg Patch Notes 9.4.X — `kb/sources/patches/patch_9.4.0.txt`
