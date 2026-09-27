# QUICK REFERENCE : Dead by Daylight, survivant, 1v4 (livrable §51-2)

> **Informations vérifiées jusqu'au patch 10.1.2a / 27/09/2026 ; PTB 10.2.0 non intégré.**
> Mode **1v4 uniquement** : le 2v8 est exclu. Statut du projet : **NOT READY**. Consolidé sans web ni VOD depuis `kb/seed/audit_phase0.txt` (Référence vérifiée + registre des patchs), les lots 6, 9 et 11 audités, `PERK_DEDUCTION.md`, `KILLER_COUNTERPLAY_HANDBOOK.md` et `OUTDATED_CONTENT_REPORT.md`.

**Légende.** **FACT** : valeur de l'audit phase 0, avec sa confiance (**VP** = notes de patch officielles, **VMS** = plusieurs sources, **SS** = wiki.gg). **CALC** : calcul fait sur des FACT. **HEURISTIC** : règle pratique non sourcée, **jamais absolue**. **†** = **UNCERTAIN** (non documenté, en conflit, ou valeur communautaire) : ne s'enseigne pas comme un fait.

---

## 1. Chiffres clés (FACT, LIVE 10.1.2a)

| Domaine | Valeur LIVE | Patch | Conf. |
|---|---|---|---|
| **Vitesses** | Survivant : course 4,0 · marche 2,26 · accroupi 1,13 m/s. Blessé = même vitesse que sain | hist. (accroupi 1.7.0) | VMS / SS |
| | Ramper 0,7 m/s (1,05 m/s † : valeur d'un PTB annulé) · tueur qui porte 3,68 m/s † | — | VMS / † |
| | Tueurs 4,6 ou 4,4 m/s (« à quelques exceptions près ») · Nurse 3,85 · Blight 4,4 (était 4,6) | hist. / **9.6.0** | VMS / SS / VP |
| **Coups** | Boost au coup 1,8 s (×1,65 selon le wiki) · cooldown du tueur : **2,7 s** après un coup réussi, 1,5 s après un raté ou un coup bloqué par le décor | **6.1.0** | VP / VMS / SS |
| | Durée et portée de la fente † (~2 m de gain, estimation communautaire) · avec une bonne connexion du tueur, **c'est son client qui décide du coup** | 2020 (validation) | † / VP |
| **Gens** | **90 s** en solo (90 charges) · 7 gens présents, 5 requis · en coop, 85 / 70 / 55 % par réparateur → ~**52,9 / 42,9 / 40,9 s** à 2 / 3 / 4 | **6.1.0** | VMS / SS |
| | Skill check : 8 % de chance par seconde · Great +1 % · raté **−10 % + 3 s** sans progression | — | SS |
| | Coup de pied (kick) : 1,8 s · **−5 %** puis −0,25 charge/s · **réparer 5 %** arrête la régression · max 8 regression events (pointes visibles dès le 4e) · un gen bloqué ne progresse ni ne perd | **7.5.0** | VMS / SS |
| **Crochets** | **70 s par phase** · le 3e accrochage tue · accrocher 1,5 s / décrocher 1 s | **8.2.0** | VP / SS |
| | Auto-décrochage seulement à 2 survivants restants ou via offrande/perk (4 %, 3 tentatives) | **9.0.0** | VP |
| | À 2 survivants : 2 skill checks de lutte manqués = sacrifice ; tous les survivants restants accrochés en même temps = sacrifice · Mori si l'un est en Struggle et l'autre au sol | **9.1.0** / 9.0.0 | SS / VP |
| **Anti-camp (Resolve)** | Rayon de **16 m** (**rien** au-delà) · poids selon la distance : 4 m ×2,5 · 10 m ×1 · 15 m ×0,375 · 16 m ×0 | 7.3.0 / 9.3.0 | VMS / SS |
| | Selon le temps de présence du tueur : **×1** (0-10 s) · **×2** (10-20 s) · **×4** (> 20 s) · **grâce de 7 s** pour tous les accrochés à chaque accrochage · taux de base † | **9.3.0** | VP / † |
| | Ralenti par les autres survivants à < 16 m · en pause pendant un portage · **coupé une fois les portes alimentées** · jauge pleine = auto-décrochage garanti | — | SS |
| **Protections de décrochage** | **Endurance + 10 % de Haste 10 s + Elusive 10 s** · une fois les portes alimentées, **seule Elusive disparaît** | **10.1.0** | VP |
| | Endurance perdue sur action voyante (réparer, soigner…) · Elusive prend fin si tu es frappé ou mis au sol · perte d'Elusive sur action voyante † | — | SS / † |
| **Soins et état mourant** | Soin : 16 s par état · Mangled +25 % · Deep Wound : 20 s, mending **10 s seul / 6 s par un allié** · soigneurs max : 2 ou 3 † | 8.6.0 (DW) | SS / VP / † |
| | Bleed-out 240 s · récupération auto jusqu'à 95 % en 30,4 s · **aucune auto-relève sans perk** | **9.2.0** | SS / VMS / VP |
| **Fenêtres** | Vault fast **0,5 s** (garde l'élan) · medium 0,9 s · slow 1,5 s · fast vault = **≥ 2,5 m** de course droite (angle toléré †) · vault du tueur 1,7 s | hist. | SS |
| | Au **3e vault** de la même fenêtre dans une même poursuite → fenêtre bloquée **30 s, pour toi seulement** | — | SS |
| **Palettes et murs** | Stun **2 s** (seulement une fois la palette abaissée à ~50 % ; durée d'abaissement †) · casse de palette ou de mur **2,34 s** · tronçonneuse 1 s · vault de palette 1,1 / 2 s · Enduring −40/45/50 % | **6.1.0** (casse) | VMS / SS |
| | Espacement ≥ 14-20 m · densité revue sur 10 cartes (9.2.0), puis sécurité réduite sur 6 cartes (9.3.0) | 9.2.0 / 9.3.0 | SS / VP |
| **Bloodlust** | 15 / 25 / 35 s de poursuite → **+0,2 / +0,4 / +0,6 m/s** · perdue quand le tueur casse une palette, frappe ou utilise son pouvoir (pouvoirs listés par le wiki) · perdue sur stun ou aveuglement ? † | 6.1.0 | VMS / SS / † |
| **Poursuite** | Début : tu es dans son champ de vision à **≤ 12 m**, tu cours, il se déplace. Fin : **> 18 m** · 5 s dans un casier · ligne de vue perdue **> 8 s** · hors ±35° de son regard (délai d'application †) | — | SS |
| | Griffures 10 s (seulement en courant) · Undetectable supprime le TR et la tache rouge · la tache rouge suit la direction de son regard · TR d'origine 32 / 24 m (beaucoup d'exceptions) · Exhausted ne récupère pas en courant · corbeaux AFK à 80 / 100 / 120 s | 9.3.0 (AFK) | SS / VP |
| **DR (Diminishing Returns)** | Plusieurs modificateurs identiques (pouvoirs, objets, perks, offrandes) : le plus fort compte à 100 %, les suivants à 50 / 25 / 12,5 / 5 % · **add-ons exclus** · les malus de vitesse d'action et les bonus de chance de skill check ne se réduisent qu'entre sources du même rôle · pas de DR sur les palettes, fenêtres ou blocages · liste des catégories † · plafond de Haste † | **9.6.0** | VP / † |
| **Fin de partie** | Portes alimentées après (survivants au départ + 1) gens · ouverture **20 s**, progression conservée (ouverture par le tueur en 0,75 s †) | — | SS |
| | **EGC 120 s**, lancé par l'ouverture d'une porte ou la fermeture de la trappe · moitié de vitesse si un survivant est au sol, accroché ou en cage (max 4 min) · jamais arrêté · gens restants bloqués | — | SS |
| | **Trappe** : s'ouvre quand il ne reste qu'un survivant, aura **visible de lui seul** · clé 2,5 s · fermée par le tueur → EGC · se referme après chaque évasion | 5.3.0 / 8.1.0 | SS |
| | Blood Warden 40/50/60 s · No Way Out 12 s + 6/9/12 s par jeton | — | SS |
| **Offrandes** | Offrande de carte : **20 % fixes**, doublons non cumulables · apparition des survivants à ≤ 12 m « quand c'est possible » | **9.0.0** | VP |
| **Info visible** | Match Details : **loadouts des coéquipiers visibles** · le tueur est révélé dès qu'un survivant entre en poursuite ou perd un état de santé · **loadout du tueur caché jusqu'à la fin** | **9.6.0** | VP |

**Conversions (CALC)** : 1 s de chase avec 3 alliés sur 3 gens différents ≈ **1/30 de gen** · 1 soin altruiste = 32 s-surv ≈ **0,36 gen** · 10 m d'avance en ligne droite ≈ **16,3 s** (tueur 115 %) / **21,7 s** (110 %) avec Bloodlust, ~12-13 / 17-18 s avec la fente † · une palette cassée te rend ~9,4 m.

---

## 2. Les 10 réflexes (HEURISTIC, avec leurs conditions)

| # | Domaine | Réflexe par défaut | Seulement si / sauf si |
|---|---|---|---|
| 1 | Chase | **Pre-run** : partir vers une zone forte dès qu'un signal dit que le tueur vient vers toi (gen voisin frappé, TR qui monte dans ta direction). Marcher si ça suffit (pas de griffures) | Pas au moindre TR ; pas contre un tueur furtif (pas de signal fiable) ; jamais vers les gens de tes alliés |
| 2 | Chase | **Palette : re-décider à chaque cycle**. Pre-drop si un cycle de plus te coûte un coup ou si son pouvoir anti-loop est prêt ; greed seulement avec de la marge | Pre-drop contre-productif contre Demogorgon, Ghoul, Oni en Fury, Spirit ; si le tueur attend tes pre-drops, varie (Handbook §2.2) |
| 3 | Chase | **Compter la Bloodlust** (15/25/35 s) : quand elle est haute, force une casse ou casse la ligne de vue, et quitte les tiles faibles | Un stun ne la remet peut-être pas à zéro † ; ne compte pas dessus |
| 4 | Chase | **Fast vault seulement avec ≥ 2,5 m de course droite** ; pas de 4e vault prévu sur la même fenêtre ; garde de la marge contre la latence (c'est son client qui décide) | Le « 360 » n'est qu'un dernier recours, en terrain ouvert contre un M1, quand aucun tile n'est atteignable |
| 5 | Macro | **Un survivant par gen.** Duo seulement pour finir un gen avancé avant l'arrivée du tueur, casser un 3-gen, ou sur le dernier gen | Contre Legion, Plague, Nowhere to Hide (24 m), le groupement coûte encore plus cher |
| 6 | Macro | **Anti-3-gen** : dès 3 gens restants (5 encore sur la carte), se demander « lesquels resteront ? » et attaquer le groupe le plus serré | Compte moins contre un tueur très mobile (Nurse, Blight…) : là, c'est la chase qui décide |
| 7 | Macro | **Soin = 0,36 gen** : finis d'abord un gen > ~70 %, soigne loin du tueur, en une fois | Soin faible contre un coup unique ou une reblessure à distance ; presque toujours rentable quand il ne reste que 2 survivants |
| 8 | Crochet | **Face camp (< 16 m)** : ne pas entrer dans les 16 m, réparer. **Proxy camp (> 16 m)** : l'anti-camp ne fera rien, sauve quand il s'engage ailleurs, avant 70 s. **Une fois décroché** : casse la ligne de vue pendant les 10 s, aucune action voyante | Trade acceptable seulement si le sauveteur est sain, à 0 crochet, près d'une ressource, ou si la phase arrive à son terme |
| 9 | SoloQ | **Délai de confirmation avant un sauvetage** (~15-20 s, ajusté au temps de phase restant et à ton trajet), puis y aller ; revérifier le HUD et les auras toutes les ~5 s, demi-tour si quelqu'un est clairement devant. Un tour de HUD d'~1 s à chaque événement | Pas de système d'intention en LIVE (PTB 10.2.0 seulement) : on communique par ses déplacements et par les actions visibles au HUD |
| 10 | Endgame | **Porte** : finis si le temps restant (20 s × % restant) est inférieur au temps d'arrivée du tueur, sinon lâche (la progression reste). **99 %** seulement autour d'un événement précis (allié accroché près du tueur, Adrenaline). **À 2 survivants** : ne jamais être au sol pendant que l'autre est en Struggle. **Dernier survivant** : trappe en marchant, jamais sous ses yeux | Ne pas tenir de 99 sous Ruin, en Heresy (Judgment) ou si le tueur est sur le gen ; ne pas attendre dans la porte (Blood Warden, Heresy après 45 s) |

---

## 3. Archétype de tueur → ajustements (HEURISTIC)

Voir `KILLER_COUNTERPLAY_HANDBOOK.md` : §2.2 (principes), §3 (tiles), §4 (44 fiches). Les valeurs du lot 4 **ne sont pas vérifiées sur le web**.

| Archétype | 1-2 ajustements |
|---|---|
| **M1** | Tiens chaque tile au maximum, chaque palette est une ressource pleine · attention aux phases « coup unique » (Oni en Fury, Shape en EI, Ghost Face après Marked) |
| **Anti-loop** | **Décide plus tôt** : quitte le tile, ou pre-drop **et pars tout de suite** · Blight : le pre-drop paie (la casse lui coûte des tokens, 9.6.0 VP) ; contre Demogorgon, Ghoul, Oni en Fury, il est contre-productif |
| **Ranged** | Coupe la ligne de vue avec des obstacles **hauts** ; esquive sur le côté au moment où il relâche · contre un projectile qui traverse les murs (Artist, Executioner), change de direction et gère le statut |
| **Mobilité** | Reste collé aux obstacles hauts, jamais d'open · utilise ses temps de recharge pour te **repositionner** ; disperse les gens (anti-3-gen) |
| **Furtif** | **Pas de TR = une information, pas une sécurité** · vérifie régulièrement à la caméra ; une fois repérés, beaucoup redeviennent des M1 |
| **Zone / piège** | Son temps d'installation est ta ressource : ne rejoue pas une zone préparée, nettoie-la pendant qu'il chasse ailleurs |
| **Info** | Ne nourris pas son info (pas de casier contre le Dredge) · quand tu es révélé, **bouge** plutôt que de te cacher |
| **Slug** | Prends un kit anti-slug ; ne te regroupe pas autour d'un mourant surveillé · neutralise le gardien (Victor) avant de relever |
| **Coup unique / statut** | Palette tardive = pari ; être blessé ne protège pas · gère la jauge **avant** le seuil (Plague, Mastermind, Onryō, Judgment : Repent) |

---

## 4. Checklists

**Avant la partie**
- [ ] Match Details : ce que portent tes coéquipiers (Kindred, Med-Kit, anti-tunnel, Adrenaline) → choisis ton rôle (FACT 9.6.0 : visible).
- [ ] Offrande de carte = 20 % fixes, un doublon ne sert à rien (FACT 9.0.0).
- [ ] Au chargement : repère le groupe de gens le plus serré (futur 3-gen) et les zones fortes. En SWF : mettez-vous d'accord sur les repères.
- [ ] Si cette partie sera revue : enregistrement lancé, choisie **avant** de connaître le résultat. Garde une seule erreur focus en tête.

**Pendant la partie**
- [ ] Avant le reveal : indices d'identité (Handbook §1). Au reveal : archétype → §3 ci-dessus.
- [ ] Tour de HUD d'~1 s à chaque événement : crochet, gen fini, cri, fin de chase.
- [ ] Compter : états de crochet de chaque survivant · gens restants · Bloodlust en chase · vaults par fenêtre.
- [ ] Perk deduction : un déclencheur suivi du même effet, **plusieurs fois**. Le loadout du tueur est caché (FACT), donc sans certitude, applique les réflexes robustes (`PERK_DEDUCTION.md` §5).
- [ ] Indicateur de course (HEURISTIC) : compare gens finis / 5 et états de crochet / 12. S'il penche ≥ 0,25 pour le tueur, passe en mode conversion.

**Après la partie (revue, `batch11_training.md` §5-6)**
- [ ] À chaud, en ≤ 2 min : tueur, carte, SoloQ ou SWF, résultat, 1 à 3 moments pivots, perks déduites comparées aux perks réelles (écran de fin).
- [ ] À froid, une partie sur 3 à 5 : pause **avant** chaque décision pivot → ce que je savais / mes options / mon choix / le résultat → range-la dans la matrice décision × résultat.
- [ ] Classer les erreurs par ID (E-xx) · lire les métriques par paires (M-01 avec M-03 et M-19 ; M-09 avec les passages de phase), par blocs de ≥ 10 parties, en médianes.
- [ ] Une erreur focus et un drill pour la semaine, pas trois.

---

## 5. Pièges du seed à désapprendre (erreurs prouvées, `OUTDATED_CONTENT_REPORT.md` A1)

1. « Un gen ≈ 80 s » → **90 s** (6.1.0). « 1 s de chase ≈ 1/3 de gen » → **≈ 1/30**.
2. « Portes alimentées = plus de protections de décrochage » → seule **Elusive** disparaît ; Endurance et Haste restent (10.1.0).
3. « L'anti-camp décrochera l'allié proxy-campé » → la jauge **ne se remplit pas au-delà de 16 m**.
4. « Les offrandes de carte se cumulent » → **20 % fixes**, doublons inutiles (9.0.0).
5. « On voit les perks du tueur après la 1re chase » → seule **l'identité** est révélée ; le loadout reste caché jusqu'à la fin (9.6.0).
6. « Hyperfocus échappe aux DR » → les bonus de chance de skill check **sont soumis aux DR** (dans le même rôle) ; seuls les add-ons en sont exclus (9.6.0).
7. « Le vault annule l'élan » → faux pour le **fast vault** · « 10 m ≈ 17 / 25 s » → ≈ **16,3 / 21,7 s** avec la Bloodlust.
8. Casse de palette « 2,6 s » → **2,34 s** · Nowhere to Hide « 18 m » → **24 m** (18 m était la valeur du PTB) · « Surge (ex-Jolt) » est inversé : Surge est le nom d'origine.

**Ne pas « corriger »** ce que l'audit a confirmé : 70 s par phase, casse 2,34 s, stun de Will to Live 4 s, mending 10 / 6 s. **Ne pas utiliser comme LIVE** le contenu du PTB 10.2.0 (Survivor Intent System, refonte d'Abandon, 58 perks).
