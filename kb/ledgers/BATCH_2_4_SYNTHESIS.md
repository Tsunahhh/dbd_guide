# BATCH_2_4_SYNTHESIS — synthèse des lots 2 (perks survivant), 3 (perks tueur) et 4 (tueurs)

> **Mise à jour 27/09 (soir) : re-vérification complète effectuée, la file de re-vérification §5 est CLOSE ; voir `OUTDATED_CONTENT_REPORT.md` partie B.**
> - Les 321 perks et les 44 tueurs ont été re-vérifiés sur pages wiki complètes (API MediaWiki) et notes officielles BHVR archivées (`kb/sources/patches/`) ; les lots 5, 7, 8 et 12 ont été écrits avec ces sources. Le blocage « quota WebSearch épuisé » décrit ci-dessous ne s'applique plus.
> - **§1 (comptages)** et **§2 (statuts PROUVÉ / PROBABLE / SUSPECT)** sont **périmés** : tous les PROBABLE et SUSPECT sont tranchés. État final des erreurs du seed : `OUTDATED_CONTENT_REPORT.md` partie B (59 erreurs distinctes prouvées, 42 points où le seed avait raison, dont Iron Will, Built to Last, 7 hachettes, TR de Hillbilly / Blight / Hag / Pig / Skull Merchant, Terminus).
> - **§3 (conflits)** : état final dans `CONFLICT_REGISTER.md`, section « Conflits des lots 2-11 après re-vérification » (113 blocs, 85 résolus, 26 conflits distincts encore ouverts ; Eruption = −10 % LIVE, résolu).
> - **§4 (questions ouvertes)** : état final dans `OPEN_QUESTIONS.md` partie B (117 questions ouvertes, 23 tranchées).
> - **§5 (file de re-vérification)** : CLOSE — ne pas la dérouler. Sources lues : `SOURCE_LEDGER.md`.


Rédigé le 27/09/2026 à partir des 21 fichiers `kb/research/batch2_*.md`, `batch3_*.md` et `batch4_*.md` (ligne « Couverture web » en tête, sections Claims, Conflits, Écarts avec le guide seed et Questions ouvertes).
Référence de version : **LIVE 10.1.2a (17/09/2026)**. Le **PTB 10.2.0** (15-21/09/2026) **n'est pas LIVE**.
Aucune recherche web n'a été faite pour cette synthèse (quota de 200 recherches de la session épuisé). Aucune valeur n'y est ajoutée : tout vient des fichiers de lot ou de `kb/seed/audit_phase0.txt`.

**Rappel de méthode.** Pendant les lots 2-4, seul `WebSearch` fonctionnait : il renvoie une liste d'URL et un **résumé généré**, pas la page elle-même. Une valeur « vérifiée par recherche » a donc au mieux la confiance STRONG_SECONDARY. Seules les valeurs reprises de l'audit phase 0, qui citait les notes de patch officielles, dépassent ce plafond.

---

## 1. Bilan chiffré par lot

Les colonnes « vérifiés web », « via audit » et « non re-vérifiés » reprennent la ligne « Couverture web » de chaque fichier. « Entrées » et « Conflits » viennent de `kb/tools/summarize_batches.py` et ont été recomptés à la main.

### Lot 2 — perks survivant (176 perks)

| Fichier | Entrées | Vérifiées web | Via audit seul | Non re-vérifiées | Conflits (résolus / UNRESOLVED) |
|---|---:|---:|---:|---:|---|
| batch2_perks_surv_p23 | 21 | 7 | 0 (3 des 14 non re-vérifiées sont en partie recoupées par l'audit : Off the Record, Unbreakable, Hyperfocus) | 14 | 3 (0 / 3) |
| batch2_perks_surv_p24 | 23 | 12 | 1 (Head On) | 10 | 3 (1 / 2) |
| batch2_perks_surv_p25 | 27 | 18 (dont 3 partielles : Conviction, Stake Out, Borrowed Time) | 0 | 9 | 3 (1 / 2) |
| batch2_perks_surv_p26 | 24 | 14 (Poised via les notes 9.2.0) | 0 (Breakdown en partie : revert 9.3.2) | 10 | 3 (2 / 1) |
| batch2_perks_surv_p27 | 27 | 14 | 0 | 13 | 2 (1 / 1) |
| batch2_perks_surv_p28 | 25 | 19 | 0 | 6 (+ les valeurs PTB de Flow State et de Boon: Illumination) | 2 (1 / 1) |
| batch2_perks_surv_p29 | 25 | 18 | 0 (Apocalyptic Ingenuity en partie : condition « 1 coffre ») | 7 | 4 (2 / 2) |
| batch2_perks_surv_p30 | 4 | 4 (12 recherches ; 2 vérifications prévues n'ont pas pu être faites) | 0 | 0 | 2 (1 / 1) |
| **Total lot 2** | **176** | **106** | **1** | **69** | **22 (9 / 13)** |

### Lot 3 — perks tueur vues du survivant (145 perks)

| Fichier | Entrées | Vérifiées web | Via audit seul (en partie) | Non re-vérifiées (ni web ni audit) | Conflits (résolus / UNRESOLVED) |
|---|---:|---:|---:|---:|---|
| batch3_perks_kill_p90 | 6 | 3 (Pain Resonance, Pop, Corrupt Intervention) | 1 (Nowhere to Hide) | 2 (Grim Embrace, Lethal Pursuer) | 3 (1 partiel / 2) |
| batch3_perks_kill_p91 | 18 | 3 (DMS, Eruption [conflit], Ruin) | 5 (A Nurse's Calling, Keep Them Waiting, Bamboozle, Surge, No Holds Barred) | 10 | 3 (0 / 3) |
| batch3_perks_kill_p92 | 23 | 8 | 1 (Call of Brine) | 14 | 3 (0 / 3) |
| batch3_perks_kill_p93 | 21 | 3 (Thrilling Tremors, Deerstalker, Thrill of the Hunt) | 3 (Blood Warden, Silent Shadow, Furtive Chase) | 15 | 2 (1 / 1) |
| batch3_perks_kill_p94 | 28 | 8 | 2 (Hex: Crowd Control, Coulrophobia) | 18 | 2 (1 partiel / 1) |
| batch3_perks_kill_p95 | 22 | 8 | 2 (renommages : See How They Run, Cull the Weak) | 12 | 2 (0 / 2) |
| batch3_perks_kill_p96 | 27 | 9 | 3 (Undone : rework PTB ; Hex: Scared to Death et Rampage : chapitre 10.0.0) | 15 | 4 (0 / 4) |
| **Total lot 3** | **145** | **42** | **17** | **86** | **19 (1 résolu + 2 partiels / 16)** |

### Lot 4 — 44 tueurs, volet survivant

Aucune recherche web n'a été faite pour ce lot : le quota était épuisé avant la première requête des agents. Les seules valeurs vérifiées viennent de l'audit phase 0. Le décompte se fait donc par ligne de la table Claims.

| Fichier | Tueurs | Vérifiés web | Claims confirmés via audit | Claims UNCERTAIN (seed ou mémoire du modèle) | Conflits (résolus / UNRESOLVED) |
|---|---:|---:|---:|---:|---|
| batch4_killers_g1 | 7 | 0 | 7 | 9 | 3 (0 / 3) |
| batch4_killers_g2 | 8 | 0 | 9 | 5 | 2 (1 / 1) |
| batch4_killers_g3 | 7 | 0 | 10 | 4 | 3 (0 / 3) |
| batch4_killers_g4 | 8 | 0 | 13 | 7 | 3 (1 / 2) |
| batch4_killers_g5 | 7 | 0 | 9 | 4 | 3 (1 / 2) |
| batch4_killers_g6 | 7 | 0 | 14 | 7 | 3 (0 / 3) |
| **Total lot 4** | **44** | **0** | **62** | **36** | **17 (3 / 14)** |

Toutes les autres valeurs de pouvoir, d'add-ons et de perks des 44 fiches (portées, durées, recharges) sont **NON VÉRIFIABLES** pour l'instant.

### Totaux lots 2-4

| | Lot 2 | Lot 3 | Lot 4 | Total |
|---|---:|---:|---:|---:|
| Entrées | 176 | 145 | 44 | **365** |
| Vérifiées par recherche (résumé, STRONG_SECONDARY max) | 106 | 42 | 0 | **148** |
| Conflits | 22 | 19 | 17 | **58** (13 résolus, 2 partiellement, 43 UNRESOLVED) |

Autres sorties du script, à lire avec prudence :
- Les verdicts des lignes « Écart avec le seed » des fiches donnent OK 95, FAUX 2, IMPRÉCIS 35, NON VÉRIFIABLE 156 et PTB-comme-LIVE 0. Ces lignes ne couvrent pas les tableaux de fin de fichier, qui sont consolidés au §2.
- Les colonnes de confiance du script comptent des **occurrences de mots**, pas des entrées : elles ne sont pas des comptages de claims.
- Le script trouve 287 lignes de sources, soit **250 URL distinctes** lors d'une exécution le 27/09/2026. Le fichier `SOURCE_LEDGER_batches.md` du dépôt n'a pas été régénéré et en liste encore 212 ; il faut relancer le script pour le mettre à jour.

---

## 2. Erreurs du seed

Statuts :
- **PROUVÉ** : source primaire, ou audit phase 0 qui cite les notes officielles.
- **PROBABLE** : résumé(s) de recherche seulement, page non lue.
- **SUSPECT** : connaissance du modèle, incohérence interne du seed ou simple absence dans l'audit. Ce n'est **jamais** une erreur établie.

Les lignes « déjà A » figurent déjà dans `OUTDATED_CONTENT_REPORT.md`, partie A ; elles ne sont pas nouvelles.

### 2.1 Valeurs ou faits contredits

| # | Élément | Le seed dit | Valeur trouvée | Preuve (fichier + confiance) | Statut |
|---:|---|---|---|---|---|
| 1 | Vigil | 8 statuts, 30/35/40 % (« nerf 10.1.0 ») | Exhausted seul, 20/25/30 % depuis 10.1.1 ; bug de 10.1.1 corrigé en 10.1.2 | batch2_p24 (P24-14), audit notes 10.1.1 — STRONG_SECONDARY + audit | **PROUVÉ** (déjà A-245) |
| 2 | Repressed Alliance | réparation requise 55/50/45 s | 40/35/30 s depuis 10.1.1 (blocage 15 s depuis 10.1.0) | batch2_p27 (P27-06), audit 10.1.0 / 10.1.1 — VERIFIED_MULTI_SOURCE | **PROUVÉ** |
| 3 | Technician | bruit −8 m, pénalité +5/4/3 % | −16 m, +4/3/2 % (10.1.0) ; le seed p32 cite pourtant la retouche 10.1.0 (incohérence interne) | batch2_p29 (P29-C11, CONFLICT-P29-01), audit notes 10.1.0 — VERIFIED_MULTI_SOURCE | **PROUVÉ** |
| 4 | Nowhere to Hide (p90 ; fiche Knight) | 18 m depuis 10.1.0 | 24 m LIVE, 3/4/5 s (18 m = PTB 10.1.0) | batch3_p90 (L3P90-C05), batch4_g4 (G4-18) — VERIFIED_PRIMARY via audit | **PROUVÉ** (déjà G11) |
| 5 | Surge | « Surge (ex-Jolt) » | Surge est le nom d'origine et le nom actuel ; Jolt n'a été utilisé que de 5.3.0 à 7.3.3 | batch3_p91 (K91-12) — audit | **PROUVÉ** (déjà A, ch. 09) |
| 6 | Huntress, nombre de hachettes | 7 | 5 de base | batch4_g2 (L4G2-01) — erreur relevée par l'audit ; le chiffre 5 vient de la mémoire du modèle | **PROUVÉ** (erreur ; confirmer la valeur 5) |
| 7 | Huntress, kill rate | « plus haut kill rate global BHVR 2026 » | Huntress = pick rate le plus large ; kill rate le plus haut tous MMR = The Lich (KB 540, noms seulement) | batch4_g2 (CONFLICT-L4G2-01) — audit | **PROUVÉ** |
| 8 | Good Guy, Scamper qui casse les palettes | présenté comme 1v4 depuis 9.4.2 | buffs 9.4.2 propres au 2v8 | batch4_g5 (CONFLICT-L4G5-03) — audit | **PROUVÉ** (déjà A5 ; comportement 1v4 exact à confirmer) |
| 9 | Cenobite, perks enseignables | Deadlock, Hex: Plaything, Scourge Hook: Gift of Pain | renommées en 9.0.0 : No Holds Barred, Hex: Fortune's Fool, Scourge Hook: Weeping Wounds | batch4_g4 (G4-08), batch3_p91 (K91-13) — audit | **PROUVÉ** (OBSOLETE) |
| 10 | No Way Out (fiche Trickster) | 12 s par jeton, ~60 s | 12 s + 6/9/12 s par jeton, max 36/48/60 s | batch4_g4 (CONFLICT-L4G4-01), batch3_p92 (3P92-C06) — audit (wiki Exit Gates) + VERIFIED_MULTI_SOURCE | **PROUVÉ** |
| 11 | Built to Last | 14/12/10 s | 12/10/8 s (14/13/12 = ancienne valeur) | batch2_p25 (P25-C01) — STRONG_SECONDARY [1][2] | PROBABLE |
| 12 | Quick Gambit, aura | « les autres survivants voient votre aura » | **vous** voyez l'aura des autres | batch2_p26 — STRONG_SECONDARY [1] | PROBABLE |
| 13 | Ace in the Hole | add-on « rare ou mieux », 2e à 50/75/100 % | ≤ Very Rare à 100 %, 2e ≤ Uncommon à 10/25/50 % | batch2_p29 (P29-C13) — STRONG_SECONDARY [14] | PROBABLE |
| 14 | Boon: Dark Theory | Haste +3 % | +2 % | batch2_p27 (P27-12) — STRONG_SECONDARY [18] | PROBABLE |
| 15 | Terminus | persiste 35/40/45 s | 20/25/30 s | batch3_p92 (3P92-C08, CONFLICT-3P92-01 UNRESOLVED) — STRONG_SECONDARY | PROBABLE |
| 16 | Boon: Circle of Healing, auras | « les blessés voient les auras des autres » | l'aura des blessés est révélée aux autres (inversion) | batch2_p24 (CONFLICT-P24-02 UNRESOLVED) — 1 résumé | PROBABLE |
| 17 | Five Moves Ahead (PTB) | « +50 % de vitesse après le lâcher » | « repartir 50 % plus tôt », sans Haste | batch2_p23 — résumés [2][5] | PROBABLE |
| 18 | Insidious | Undetectable « jusqu'à votre prochaine action » ; p98 : persiste 6/7/8 s | tant que le tueur est immobile, coupé au mouvement ; la persistance serait une valeur PTB | batch3_p94 (K94-05, CONFLICT-L3-94-01) — STRONG_SECONDARY | PROBABLE |
| 19 | Dominance | coffres/totems « touchés », avec révélation d'aura | **1re** interaction ; aura **du prop** montrée au tueur | batch3_p94 (K94-09) — STRONG_SECONDARY | PROBABLE |
| 20 | Saboteur | auras de crochets à 56 m « de vous » | 56 m autour du point de ramassage ; sabotage +30 % sans toolbox | batch2_p25 (P25-C07) — STRONG_SECONDARY | PROBABLE |
| 21 | Boil Over | chute → 33 % de progression | 33 % de la progression **actuelle** | batch2_p25 (P25-C09) — STRONG_SECONDARY | PROBABLE |
| 22 | Flip-Flop | au ramassage, 50 % de la récupération devient de la lutte | charge continue à 50 % du taux, plafonnée à 40/45/50 % | batch2_p25 (P25-C10) — STRONG_SECONDARY | PROBABLE |
| 23 | Mirrored Illusion | près d'un « interrupteur », pas de limite | Exit Gate ; désactivée après usage | batch2_p28 (P28-02) — STRONG_SECONDARY | PROBABLE |
| 24 | Eyes of Belmont | +2 s à toutes les auras du tueur | seulement les auras temporisées ; s'applique à elle-même (3/4/5 s) | batch2_p28 (P28-06) — STRONG_SECONDARY | PROBABLE |
| 25 | Blood Pact | activation après soin mutuel avec l'Obsession | activation quand l'un des deux est blessé + auras mutuelles ; Haste après soin | batch2_p27 (P27-05) — STRONG_SECONDARY | PROBABLE |
| 26 | Teamwork: Toughen Up | « aveugle ou étourdit le tueur » | aveuglement (tout moyen) ou stun **avec palette** seulement | batch2_p30 (P30-03) — VERIFIED_MULTI_SOURCE via résumés | PROBABLE |
| 27 | Lithe | « saut moyen ou rapide » | rushed vault ; saut moyen probablement exclu | batch2_p23 (L2P23-C08) — UNCERTAIN [12] | PROBABLE (faible) |
| 28 | Undone (seed ch8 l. 1590) | valeurs présentées comme LIVE | le rework est un changement du PTB 10.2.0 | batch3_p96 (K96-11, CONFLICT-K96-01) — audit (rework PTB) + incohérence interne | PROBABLE (PTB-comme-LIVE) |
| 29 | Unbound, Dark Arrogance, Ravenous (seed ch8) | ch8 : Unbound 5 %/25 s ; DA +25 % et recovery ; Ravenous Exposed 80-90 s + Haste | p96 : Unbound 7 %/10 s ; DA +15 % ; Ravenous Exposed 40/50/60 s ; ch8 ressemble à la liste PTB du seed | batch3_p96 (CONFLICT-K96-01) — incohérence interne seule | SUSPECT (PTB-comme-LIVE ?) |
| 30 | Leverage | p96 : le **sauveteur** soigne moins vite ; ch8 : les **décrochés** | — | batch3_p96 (CONFLICT-K96-02) — incohérence interne seule | SUSPECT |
| 31 | Machine Learning | p93 : 8 % de Haste ; ch8 l. 1483 : 10 % | — | batch3_p93 — incohérence interne seule | SUSPECT |
| 32 | Iron Will | 80/90/100 % | 50/75/100 % (mémoire) | batch2_p23 — mémoire du modèle | SUSPECT |
| 33 | Quick & Quiet | recharge 25/20/15 s | 30/25/20 s (mémoire) | batch2_p24 — mémoire du modèle | SUSPECT |
| 34 | Deception | 5 s sans griffures, recharge 25/20/15 s | 3 s, 60/50/40 s (mémoire) | batch2_p24 — mémoire du modèle | SUSPECT |
| 35 | Déjà Vu | aura permanente (implicite) | peut-être 30 s par événement (mémoire) | batch2_p23 — mémoire du modèle | SUSPECT |
| 36 | Babysitter | « rework 9.2.0 » | 9.3.0 LIVE a annulé les changements PTB ; date du rework (version Haste) non identifiée | batch2_p27 (CONFLICT-P27-01 UNRESOLVED) — résumés + audit, rien ne contredit directement | SUSPECT |
| 37 | Hex: Blood Favour, rayon LIVE | 24/28/32 m | 16/24/32 m (mémoire) | batch3_p92 (CONFLICT-3P92-03) | SUSPECT |
| 38 | Ultimate Weapon, déclencheur | cri à < 40 m, Blindness 30 s | survivants qui entrent dans le TR pendant une fenêtre après le casier (mémoire) | batch3_p91 (CONFLICT-K91-03) | SUSPECT |
| 39 | Superior Anatomy | 12 m, 10 s, CD 25 s | 8 m, CD 30 s (mémoire, version antérieure) | batch3_p94 (CONFLICT-L3-94-02) | SUSPECT |
| 40 | Hex: The Third Seal | « les survivants que vous blessez » | les 2/3/4 **derniers** touchés (mémoire) | batch3_p94 | SUSPECT |
| 41 | Tinkerer | « la 1re fois qu'un gen atteint 70 % » | une fois **par** gen (mémoire) | batch3_p93 | SUSPECT |
| 42 | Hex: Retribution | Oblivious en touchant « un totem (terne ou hex) », révélation 20 s | totem terne seulement, durée plus courte (mémoire) | batch3_p93 | SUSPECT |
| 43 | Hillbilly, TR | 40 m | 32 m (mémoire) | batch4_g1 (CONFLICT-L4G1-01) | SUSPECT |
| 44 | Hillbilly, sprint | ~10,1 m/s (~12 en Overdrive) | ~8,8 m/s (mémoire, peut-être d'avant l'Overdrive) | batch4_g1 (CONFLICT-L4G1-02) | SUSPECT |
| 45 | Hillbilly, conseil | « blessé = moins exposé à la tronçonneuse » | tout coup met à terre un survivant déjà blessé | batch4_g1 — logique de jeu (HEURISTIC, confiance élevée) | SUSPECT |
| 46 | Hag, TR | 24 m | 32 m (mémoire) | batch4_g1 (CONFLICT-L4G1-03) | SUSPECT |
| 47 | Pig, TR | 24 m | 32 m (mémoire) | batch4_g2 (CONFLICT-L4G2-02) | SUSPECT |
| 48 | Blight, TR | 40 m | 32 m (mémoire) | batch4_g3 (CONFLICT-B4G3-01) | SUSPECT |
| 49 | Onryō / Mastermind, TR | 24 m / 40 m | 32 m tous deux (mémoire) | batch4_g4 (CONFLICT-L4G4-03) | SUSPECT |
| 50 | Skull Merchant, TR | 24 m | 32 m (mémoire) | batch4_g5 (CONFLICT-L4G5-01) | SUSPECT |
| 51 | Ghoul, TR | 40 m | 32 m ? (mémoire) | batch4_g6 (CONFLICT-B4G6-03) | SUSPECT |
| 52 | Spirit, phasing passif | existe | probablement supprimé (mémoire) | batch4_g2 | SUSPECT |
| 53 | Legion, 5e Feral Slash qui met à terre | oui | probablement obsolète (mémoire) | batch4_g2 | SUSPECT |
| 54 | Executioner, Final Judgement | tue directement « au 2e hameçon » ; cage relocalisée si un survivant approche | vise un Tormented déjà en phase finale ; relocalisation non confirmée (mémoire) | batch4_g3 (CONFLICT-B4G3-03) | SUSPECT |
| 55 | Oni | 5 orbes par crochet « depuis le 9.2 » | l'audit ne cite des buffs de l'Oni qu'en 9.1.0 | batch4_g3 — absence dans l'audit ≠ preuve | SUSPECT |
| 56 | Plot Twist | « buff 9.2.0 » | seul un bugfix (Animatronic) a été trouvé | batch2_p24 — 1 résumé, pas de contradiction directe | SUSPECT |

### 2.2 Omissions ou formulations trompeuses (la valeur du seed n'est pas fausse, mais elle induit en erreur)

| Élément | Le seed dit / omet | Constat | Preuve | Statut |
|---|---|---|---|---|
| Knight, historique | 38 m depuis 9.1.0 ; rien sur 10.1.1 | changement 10.1.1 (gardes et palettes) omis | batch4_g4 — audit | PROUVÉ |
| Judgment | hotfix 10.1.2a, Heresy, Exile | fenêtre hors Zealous supprimée ; purge Repent au Shrine ; exilés libérés réapparaissent à ≥ 32 m (10.1.2) | batch4_g6 — audit | PROUVÉ |
| Skull Merchant | pas de mention | Undetectable 8 s au rappel d'un drone (9.3.2) | batch4_g5 — audit | PROUVÉ |
| Animatronic | nom réel « Springtrap » ; seul 9.6.0 cité | nom réel William Afton ; nerfs d'add-ons 9.0.2 + buffs 9.6.0 | batch4_g6 — audit | PROUVÉ |
| Hyperfocus | aucune mention des DR | soumise aux DR (9.6.0) | batch2_p23 — audit | PROUVÉ (déjà A-233) |
| Road Life | aucune limite | usage unique ; condition « non Broken » ; skill checks basiques | batch2_p30 — STRONG_SECONDARY | PROBABLE |
| Knock Out | seul effet palette (Hindered 5 %) | effet principal omis : aura du survivant abattu visible seulement à 32/24/16 m. L'audit avait déjà relevé Knock Out parmi les erreurs du seed | batch3_p94 (K94-06), batch4_g2 | PROBABLE |
| Batteries Included | — | désactivée une fois les portes alimentées | batch3_p95 — STRONG_SECONDARY | PROBABLE |
| Any Means Necessary | pas de recharge | recharge de 100/80/60 s possible (conflit P25-03) | batch2_p25 — UNCERTAIN | PROBABLE (faible) |
| Dead Man's Switch LIVE | pas de recharge | recharge de 50 s probable (valeur « was » des notes PTB 10.2.0) | batch3_p91 (CONFLICT-K91-02) — UNCERTAIN | PROBABLE (faible) |
| Last Stand | « ~90-120 s, valeurs différentes selon les sources » | 120/105/90 s par tier ; 1 fois par épreuve | batch2_p28 — STRONG_SECONDARY | PROBABLE |
| Fast Track | ~+5 % par jeton | −5 charges ≈ 5,6 % | batch2_p27 — VERIFIED_MULTI_SOURCE via résumés | PROBABLE |
| Specialist, Soul Guard, Leader, Empathy, Potential Energy, Plunderer's Instinct, Bound by Obsession, Inner Strength, Alert, Distortion (9.5.0), Shoulder the Burden (PTB), Do No Harm (PTB), Slippery Meat, Up the Ante, Low Profile, Cut Loose, Come and Get Me!, Change of Plan, For the People, Inner Focus, Babysitter (durée), Sloppy Butcher, Enduring, Hoarder, Septic Touch, Dark Devotion, Thrilling Tremors, Deerstalker, Bamboozle | omissions mineures | voir les tableaux « Écarts » de batch2_p24 à p30 et batch3_p91 à p96 | résumés | PROBABLE (mineur) |

### 2.3 Écarté du décompte : conflits non résolus ou affirmations non étayées

- **Eruption −10 % (fiche Nemesis, p91, p97).** Le conflit 10 % / 5 % est **NON RÉSOLU** : CONFLICT-K91-01 et CONFLICT-L3P90-01 sont UNRESOLVED. `batch4_killers_g4` le classe FAUX (G4-06 : « 5 % depuis 9.2.0 », d'après la table 9.2.0 de l'audit). Or cette table a pu recopier les notes du PTB 9.2.0, et la page wiki.gg 9.2.X parle d'annulation en LIVE. **Il n'est pas compté comme erreur.** Le verdict de batch4_g4 est à corriger le jour où le conflit sera tranché.
- **Ghoul « > 60 % de kill en MMR élevé selon BHVR ».** La KB 540 ne donne aucun chiffre en texte et cite le Ghoul pour le pick rate. Le chiffre n'est donc pas étayé, mais il n'est pas prouvé faux (infographie non lue ; CONFLICT-B4G6-01 UNRESOLVED).
- **The First « n°2 en kill rate MMR élevé » et Twins « tier C » contre « top kill rate au haut MMR ».** Non étayés (CONFLICT-B4G6-02 et B4G3-02 UNRESOLVED).
- **Affirmations du seed sans aucune source** (NON VÉRIFIABLES, à retirer ou à sourcer) :
  - « les blocages et pertes instantanées ne subissent pas les DR » ;
  - « Ruin soumise aux DR » ;
  - « Pop, seul perk taxé » ;
  - Artist : « s'accroupir évite le Killer Instinct » ;
  - Skull Merchant : « rework 2027 » ;
  - Road Life : « ~0,1 % d'usage » ;
  - taux d'usage « [2,1 %] » ;
  - Brutal Strength « 6,5 % n°14 » (7,63 % n°13 dans le résumé : donnée volatile) ;
  - stats NightLight par tueur sans n.

### 2.4 Décompte

| Statut | Nombre (2.1) | dont déjà en partie A | Nouveaux |
|---|---:|---:|---:|
| PROUVÉ | 10 | 4 (Vigil, Nowhere to Hide, Surge, Good Guy) | **6** (Repressed Alliance, Technician, Huntress hachettes, Huntress kill rate, noms des perks Cenobite, No Way Out) |
| PROBABLE | 18 | 0 | 18 |
| SUSPECT | 28 | 0 | 28 |
| **Total 2.1** | **56** | 4 | 52 |

S'ajoutent 5 omissions PROUVÉES en 2.2 (Knight 10.1.1, Judgment, Skull Merchant, Animatronic, Hyperfocus ; Hyperfocus figure déjà dans A-233). Eruption n'est pas comptée.

---

## 3. Conflits des lots 2-4 (58)

| ID | Sujet | Statut | Fichier |
|---|---|---|---|
| CONFLICT-L2P23-01 | Cooldown LIVE de Windows of Opportunity (aucun vs 30/25/20 s) | UNRESOLVED | batch2_perks_surv_p23 |
| CONFLICT-L2P23-02 | « Repartir 50 % plus tôt » de Five Moves Ahead : LIVE ou PTB | UNRESOLVED | batch2_perks_surv_p23 |
| CONFLICT-L2P23-03 | Adrenaline, Haste 3 ou 4 s | UNRESOLVED (provisoirement 4 s d'après les notes 10.1.0 lues par l'audit) | batch2_perks_surv_p23 |
| CONFLICT-P24-01 | Shoulder the Burden : Exposed (LIVE) ou Broken | Résolu : Exposed 60/50/40 s LIVE, Broken = PTB (STRONG_SECONDARY) | batch2_perks_surv_p24 |
| CONFLICT-P24-02 | Circle of Healing : qui voit quelles auras | UNRESOLVED | batch2_perks_surv_p24 |
| CONFLICT-P24-03 | Circle of Healing : date du passage à 50/75/100 % | UNRESOLVED (sans impact LIVE) | batch2_perks_surv_p24 |
| CONFLICT-P25-01 | Haste de Breakout (6/8/10 vs 5/6/7 %) | UNRESOLVED | batch2_perks_surv_p25 |
| CONFLICT-P25-02 | Vitesse d'auto-soin de Self-Care | Résolu : 25/30/35 % (médikit 10/15/20 % à confirmer) | batch2_perks_surv_p25 |
| CONFLICT-P25-03 | Cooldown d'Any Means Necessary | UNRESOLVED | batch2_perks_surv_p25 |
| CONFLICT-B2P26-01 | No One Left Behind, valeurs LIVE | Résolu : 50/75/100 %, +10 % de Haste | batch2_perks_surv_p26 |
| CONFLICT-B2P26-02 | Bound by Obsession, LIVE vs page wiki | Résolu provisoirement : LIVE 2/4/6 %, 3 s ; PTB 8/9/10 %, 4 s | batch2_perks_surv_p26 |
| CONFLICT-B2P26-03 | Lightweight : espacement des griffures (bug 8.6.0) | UNRESOLVED | batch2_perks_surv_p26 |
| CONFLICT-P27-01 | Historique et version LIVE de Babysitter | UNRESOLVED | batch2_perks_surv_p27 |
| CONFLICT-P27-02 | Durée de Clairvoyance | Résolu : 10/11/12 s | batch2_perks_surv_p27 |
| CONFLICT-2-P28-01 | Last Stand, durée d'activation | Résolu : 120/105/90 s | batch2_perks_surv_p28 |
| CONFLICT-2-P28-02 | Last Stand, disponibilité en 2025 | UNRESOLVED (sans impact LIVE) | batch2_perks_surv_p28 |
| CONFLICT-P29-01 | Technician, pénalité de skill check raté | Résolu : 4/3/2 % (audit 10.1.0) | batch2_perks_surv_p29 |
| CONFLICT-P29-02 | Premonition PTB, portée (32 m ?) | UNRESOLVED | batch2_perks_surv_p29 |
| CONFLICT-P29-03 | This Is Not Happening PTB, valeurs | UNRESOLVED | batch2_perks_surv_p29 |
| CONFLICT-P29-04 | Red Herring, activation et recharge | Résolu : 1 s, 25/20/15 s | batch2_perks_surv_p29 |
| CONFLICT-L2P30-01 | Road Life LIVE : portée du bonus de soin (soi / autrui) | UNRESOLVED | batch2_perks_surv_p30 |
| CONFLICT-L2P30-02 | Seuil de jetons de Road Life | Résolu : 6/5/4 LIVE ; 8/7/6 = PTB 9.2.0 | batch2_perks_surv_p30 |
| CONFLICT-L3P90-01 | Changements LIVE de 9.2.0 (Pop, Eruption, Ruin, DMS) | UNRESOLVED | batch3_perks_kill_p90 |
| CONFLICT-L3P90-02 | Le cri de Pain Resonance révèle-t-il la position | Partiellement résolu : pas de révélation (STRONG_SECONDARY) | batch3_perks_kill_p90 |
| CONFLICT-L3P90-03 | Fenêtre de Pop Goes the Weasel (35/40/45 s ?) | UNRESOLVED | batch3_perks_kill_p90 |
| CONFLICT-K91-01 | Eruption : perte de 10 % ou 5 % | UNRESOLVED | batch3_perks_kill_p91 |
| CONFLICT-K91-02 | Dead Man's Switch : recharge de 50 s en LIVE | UNRESOLVED (penche pour 50 s) | batch3_perks_kill_p91 |
| CONFLICT-K91-03 | Ultimate Weapon : déclencheur et portée | UNRESOLVED | batch3_perks_kill_p91 |
| CONFLICT-3P92-01 | Terminus : persistance 20/25/30 vs 35/40/45 s | UNRESOLVED (penche pour 20/25/30 s) | batch3_perks_kill_p92 |
| CONFLICT-3P92-02 | Coup de Grâce : plafond de jetons (5 détenus / 10 par partie) | UNRESOLVED | batch3_perks_kill_p92 |
| CONFLICT-3P92-03 | Hex: Blood Favour : rayon LIVE vs PTB | UNRESOLVED | batch3_perks_kill_p92 |
| CONFLICT-K93-01 | Deerstalker : aura LIVE 3 ou 4 s | UNRESOLVED formellement (LIVE 3 s, PTB 4 s probables) | batch3_perks_kill_p93 |
| CONFLICT-K93-02 | Thrill of the Hunt : 8/9/10 % vs 10/12/14 % | Résolu : 8/9/10 % LIVE (audit + wiki.gg) | batch3_perks_kill_p93 |
| CONFLICT-L3-94-01 | Insidious : durée de l'Undetectable | Partiel : LIVE = tant qu'immobile ; valeurs PTB UNRESOLVED | batch3_perks_kill_p94 |
| CONFLICT-L3-94-02 | Superior Anatomy : portée et recharge | UNRESOLVED | batch3_perks_kill_p94 |
| CONFLICT-K95-01 | Valeurs de Hysteria | UNRESOLVED | batch3_perks_kill_p95 |
| CONFLICT-K95-02 | Franklin's Demise : objet consommé après 150/120/90 s | UNRESOLVED | batch3_perks_kill_p95 |
| CONFLICT-K96-01 | Valeurs PTB 10.2.0 présentées comme LIVE dans le seed ch8 (Unbound, Undone, Dark Arrogance, Ravenous) | UNRESOLVED | batch3_perks_kill_p96 |
| CONFLICT-K96-02 | Cible de Leverage | UNRESOLVED | batch3_perks_kill_p96 |
| CONFLICT-K96-03 | Game Afoot : déclencheur de la Haste | UNRESOLVED | batch3_perks_kill_p96 |
| CONFLICT-K96-04 | THWACK! : fonctionnement des jetons | UNRESOLVED | batch3_perks_kill_p96 |
| CONFLICT-L4G1-01 | TR du Hillbilly (40 vs 32 m) | UNRESOLVED | batch4_killers_g1 |
| CONFLICT-L4G1-02 | Sprint tronçonneuse du Hillbilly | UNRESOLVED | batch4_killers_g1 |
| CONFLICT-L4G1-03 | TR de la Hag (24 vs 32 m) | UNRESOLVED | batch4_killers_g1 |
| CONFLICT-L4G2-01 | Huntress : « plus haut kill rate » vs « pick le plus large » | Résolu : audit (pick rate ; kill rate = Lich) | batch4_killers_g2 |
| CONFLICT-L4G2-02 | TR de la Pig (24 vs 32 m) | UNRESOLVED | batch4_killers_g2 |
| CONFLICT-B4G3-01 | TR de la Blight (40 vs 32 m) | UNRESOLVED | batch4_killers_g3 |
| CONFLICT-B4G3-02 | Force des Twins (tier C vs top kill rate au haut MMR) | UNRESOLVED | batch4_killers_g3 |
| CONFLICT-B4G3-03 | Final Judgement et cages de l'Executioner | UNRESOLVED | batch4_killers_g3 |
| CONFLICT-L4G4-01 | No Way Out, durée de blocage | Résolu : 12 s + 6/9/12 s par jeton (audit) | batch4_killers_g4 |
| CONFLICT-L4G4-02 | Artist : les murs protègent-ils des corbeaux | UNRESOLVED (contradiction interne du seed) | batch4_killers_g4 |
| CONFLICT-L4G4-03 | TR de l'Onryō et du Mastermind | UNRESOLVED | batch4_killers_g4 |
| CONFLICT-L4G5-01 | TR de la Skull Merchant | UNRESOLVED | batch4_killers_g5 |
| CONFLICT-L4G5-02 | TR du Xenomorph en Crawler Mode | UNRESOLVED | batch4_killers_g5 |
| CONFLICT-L4G5-03 | Scamper de Good Guy en 1v4 | Résolu : l'audit prime, les buffs 9.4.2 sont propres au 2v8 ; comportement 1v4 à confirmer | batch4_killers_g5 |
| CONFLICT-B4G6-01 | Ghoul « > 60 % de kill en MMR élevé » | UNRESOLVED (retirer le chiffre) | batch4_killers_g6 |
| CONFLICT-B4G6-02 | The First « n°2 en kill rate » | UNRESOLVED | batch4_killers_g6 |
| CONFLICT-B4G6-03 | TR du Ghoul (40 vs 32 m) | UNRESOLVED | batch4_killers_g6 |

Liens avec le registre de la phase 0 (`CONFLICT_REGISTER.md`) :
- **CONFLICT-R2-02 (Off the Record).** batch2_p23 retient Endurance 30/35/40 s (9.2.2, via l'audit, STRONG_SECONDARY). Aucun nouveau conflit, mais les conditions de la perk restent NON VÉRIFIABLES.
- **Pain Res / Eruption / Pop / Ruin / DMS en 9.2.0 (R3-11).** Toujours ouvert, via CONFLICT-L3P90-01 et CONFLICT-K91-01. Incohérence à noter : batch4_g4 (G4-06) traite Eruption 5 % comme acquis.

---

## 4. Questions ouvertes (dédoublonnées, par thème)

### 4.1 Statut et contenu du PTB 10.2.0
1. 10.2.0 est-il sorti en LIVE ? Si oui, toute la file ci-dessous change de référence.
2. Liste complète des 58 perks modifiées : 31 côté survivant ? Cette question est posée par presque tous les fichiers. Elle confirme ou infirme l'absence de changement pour chaque perk du périmètre.
3. Valeurs PTB à confirmer :
   - perks survivant : Resilience 7/8/9 %, Kindred 14/15/16 m, Flow State 13/14/15 %, Solidarity 65/70/75 %, Pharmacy, Wake Up!, Plunderer's Instinct, Boon: Illumination, Blood Pact, Premonition (32 m ?), This Is Not Happening (zones Great), Do No Harm (les 30/40/50 % changent-ils ?), Spine Chill (le bonus d'action 2/4/6 % est-il supprimé ?), Five Moves Ahead ;
   - perks tueur : Fire Up 6/7/8 %, Nothing but Misery, Help Wanted, Knock Out (10 m, Hindered 20 %), Insidious (6/7/8 s), Dominance, Shattered Hope, Superior Anatomy, Dissolution, Whispers, Distressing, Game Afoot, Spies, Unbound, Dark Arrogance, Ravenous, Unrelenting, Bitter Murmur, Undone, Monstrous Shrine (formulation « régression à 150/175/200 % » suspecte), Agitation, Iron Grasp, Machine Learning, Hex: Blood Favour (32 m).
4. Quelles perks figurent parmi les 26 ajustées « à cause des DR » ?

### 4.2 Diminishing Returns (9.6.0 / 9.6.1)
5. Liste officielle des modificateurs soumis aux DR (manuel en jeu 9.6.1) : bonus de réparation (Déjà Vu, Resilience, Prove Thyself, Full Circuit, Soft-Spoken), de soin (Botany, Do No Harm, Flow State, Better Than New, Friendly Competition), de saut (Finesse, Resilience, Windows of Opportunity PTB), de Haste (Babysitter contre Haste de décrochage basekit ; Jump Scare contre Rampage), de chance (Slippery Meat, Up the Ante), de skill check (Unnerving Presence, Huntress Lullaby), et Cull the Weak, See How They Run, Hysteria.
6. Les blocages (DMS, No Holds Barred, Corrupt) et les pertes instantanées (Pop, Pain Resonance, Eruption, Surge, Turn Back the Clock, Grim Embrace) sont-ils soumis aux DR ?
7. Les DR s'appliquent-ils aux pouvoirs (Hindered, Haste) ?

### 4.3 Patch 9.2.0 et historique des perks tueur
8. Quels changements de 9.2.0 (Pop 20 → 15 %, Eruption 10 → 5 %, DMS 25/30/35 s, Ruin 100/125/150 %) sont vraiment passés en LIVE ?
9. Dead Man's Switch : recharge de 50 s en LIVE ? Depuis quel patch ?
10. Pop : durée de la fenêtre (35/40/45 s ?) ; un seul usage par accrochage ?
11. Pain Resonance sur un gen au plafond de 8 events ou bloqué : pas d'effet, ou repli sur un autre gen ?

### 4.4 Valeurs LIVE de perks survivant à trancher
12. Conflits ouverts : Windows of Opportunity (cooldown), Five Moves Ahead (50 % plus tôt), Adrenaline (3/4 s), Breakout (Haste), Any Means Necessary (recharge, buff 9.1.0), Circle of Healing (auras), Lightweight (bug 8.6.0), Babysitter (version et date du rework), Road Life (soi / autrui ; skill checks spéciaux).
13. Valeurs suspectes : Iron Will, Quick & Quiet, Deception, Déjà Vu, Buckle Up (+50 % de Haste ?), Duty of Care (25 % de Haste ?), Hope (3/4/5 % et durée), Blast Mine (seuil 40 %, stun 4 s), Fixated (Haste ou vitesse de marche ?), Detective's Hunch (20 s ?), Down to the Last, Wake Up!, Pharmacy, Blood Rush, Lucky Star, Light-Footed, Weaving Spiders, Troubleshooter.
14. Conditions : Off the Record (désactivation sur action conspicuous, gens restants), Dead Hard (Endurance ou invulnérabilité, désactivation portes alimentées), Prove Thyself, Background Player (Exhausted), Made for This (1/2/3 % ?), Lithe et Cut Loose (saut moyen), Borrowed Time LIVE, Self-Care (médikit), Alert (signal sonore inventé ?), Quick Gambit (bonus pour tous les alliés ?), Corrective Action (même action ?), Mirrored Illusion (réactivable ?), A Place For Us (bug d'Elusive), No Mither (flaques de sang), Vigil (persistance 15 s ; ancienne valeur 44/55/66 %), Boon: Steadfast (effet d'aura ?), NOLB (base de la Haste en endgame), Come and Get Me! (fenêtre, cooldown), Toughen Up (Blast Mine ou Flashbang comptent-ils ?), Change of Plan (add-ons d'origine, boîte vide).
15. Toutes les perks survivant « NON RE-VÉRIFIÉES » : 69 au total (liste dans chaque fichier).

### 4.5 Valeurs LIVE de perks tueur à trancher
16. Conflits ouverts : Eruption, DMS, Ultimate Weapon, Terminus, Coup de Grâce, Blood Favour, Deerstalker, Superior Anatomy, Hysteria, Franklin's Demise, Leverage, Game Afoot, THWACK!, Unbound, Undone, Dark Arrogance, Ravenous.
17. Non vérifiées :
    - tier S/A : Grim Embrace, Lethal Pursuer, BBQ, NOED, Turn Back the Clock, Celestial Witness, Discordance, Darkness Revealed, Floods of Rage, Weeping Wounds, Fortune's Fool, Surge (valeurs, cri), No Holds Barred, plafonds de Keep Them Waiting, bonus de saut de Bamboozle ;
    - tier B et en dessous : 14 + 18 + 20 + 14 + 18 perks, listées dans batch3_p92 à p96.
18. Mécaniques : Thrill of the Hunt (notification de purification) ; Mindbreaker (seuil au retour en 9.3.0) ; Monitor & Abuse (effet net) ; Septic Touch (soin d'autrui) ; Beast of Prey (fin de l'Undetectable) ; Overwhelming Presence (effet de Vigil) ; Wretched Fate (totem purifiable ?) ; Coulrophobia 10.1.0 (buff ou nerf ?) ; Predator (date de la version 4 s) ; Call of Brine (Good seulement ?) ; Hex: Undying (transfert sur un Hex béni ?) ; Rancor (l'Obsession voit-elle le tueur ?) ; Blood Echo (cooldown).

### 4.6 Tueurs (44)
19. Terror Radius : Hillbilly, Hag, Pig, Blight, Onryō, Mastermind, Skull Merchant, Ghoul, Xenomorph (Crawler).
20. Contenu des buffs cités sans détail :
    - 9.1.0 : Pig, Clown, Oni, Executioner, Knight ;
    - 9.6.0 : Doctor (0,8 → 0,75 s ?), Cannibal, Ghost Face (recharge 17 → 15 s ?), Demogorgon, Dredge, Mastermind, Unknown (UVX 6,25 s ?), Animatronic ;
    - autres : Knight 10.1.1, Nightmare 8.5.0, Slasher 10.0.2/10.0.3, Animatronic 9.0.2 ;
    - Nurse (Heavy Panting 9.6.0), Wraith (add-on Soot 9.5), Legion (désactivation 9.6.0), Krasue (Leech remis à zéro au crochet, hotfix 9.2.2).
21. Mécaniques à fort impact survivant :
    - Shape : exécution au 2e crochet en Evil Incarnate ; Stalker 4,2 m/s ;
    - Doctor : Madness III, Static Blast ;
    - Trapper : Haste après la pose, libération du piège ;
    - Nurse : blinks, fatigue ;
    - Huntress : vitesse des hachettes, portée de la berceuse ;
    - Pig : pièges après alimentation des portes, Spine Chill contre Undetectable ;
    - Clown : blocage du fast vault ;
    - Spirit : son directionnel, Prayer Beads ;
    - Plague : un stun met-il fin à Corrupt Purge ? ;
    - Deathslinger : Redeemer ;
    - Twins : timings ;
    - Trickster : barème post-9.5.2 ;
    - Nemesis : tentacule sur un survivant non contaminé, caisses de vaccin ;
    - Cenobite : Chain Hunt, statut en boutique ;
    - Artist : Swarmed, murs ;
    - Onryō : stacks ;
    - Dredge : Nightfall, Gloaming ;
    - Mastermind : Uroboros, sprays ;
    - Knight : bannière, patrouille 38 m ;
    - Skull Merchant : Lock-On, Claw Traps, ligne de vue, crouch ;
    - Singularity : Overclock, EMP (erreur relevée par l'audit, non détaillée ; `audit/pass0_*.md` absent du dépôt) ;
    - Xenomorph : crouch près des tunnels ;
    - Good Guy : Scamper en 1v4 ;
    - Lich : cooldowns des sorts ;
    - Dark Lord : loup à 4,8 m/s ;
    - Judgment : 10 m du tueur ou d'un survivant ? l'Exile déclenche-t-il les protections de décrochage ? fenêtre de courbe ;
    - Ghoul : le soin retire-t-il la Kagune Mark ? ;
    - Houndmaster : fenêtres en Chase Command, libération pendant la traîne ;
    - Wraith : lampe et pétard contre la désoccultation ;
    - Demogorgon : Oblivious près d'un portail ;
    - Executioner : relocalisation des cages.
22. Add-ons « qui changent la décision » : aucun n'a été vérifié (les listes sont dans batch4_g1 et g3).
23. Le PTB 10.2.0 touche-t-il des tueurs ?

### 4.7 Interface et lisibilité côté survivant
24. Les survivants voient-ils les Scourge Hooks (aura / HUD) ? Rendu d'un gen bloqué ? C'est la clé de la perk deduction (Pain Resonance, Jagged Compass, « crochet blanc »).
25. Indicateurs de Help Wanted (gen compromis), Dissolution, Hex: Crowd Control, Hex: Under Your Thumb.
26. Les casiers bloquent-ils BBQ et Discordance ?
27. Calm Spirit contre Infectious Fright et Face the Darkness.

### 4.8 Statistiques
28. Infographies BHVR (sept. 2025 – févr. 2026) : kill rates chiffrés (Twins, Ghoul, The First, Krasue, Lich).
29. Taux d'usage NightLight des perks, dont Road Life et les 4 perks de p30 (NightLight est inaccessible).
30. Fréquence de la Shape depuis son retrait de la boutique (19/01/2026).

### 4.9 Dates et historique (faible impact)
31. Circle of Healing (date du passage à 50/75/100 %) ; Last Stand (désactivation en 2025) ; Clairvoyance (patch du buff) ; Potential Energy (buff 9.1.0) ; Cenobite (date de retrait de la boutique) ; Distortion (patch 30 → 15 s).

### 4.10 Sources expertes
32. Aucun guide survivant écrit par un expert n'a été lu, pour aucun tueur : tout le counterplay est HEURISTIC et devra être recoupé (EXPERT_OPINION).

---

## 5. FILE DE RE-VÉRIFICATION (prochaine session, ~200 recherches)

**Budget : 174 requêtes planifiées + 6 de réserve = 180.** La réserve sert aux relances quand deux résumés se contredisent.

Règles d'usage :
- Exécuter dans l'ordre : P0-A, puis P0-B, puis P1, puis P2.
- Après chaque requête « notes de patch », **cocher tous les éléments qu'elle tranche** (les renvois sont dans la colonne « Élément ») et sauter les requêtes P0-B, P1 ou P2 devenues inutiles. Cela devrait libérer 15 à 30 requêtes.
- Consigner « via résumé de recherche » et l'URL. Un résumé qui contredit un autre donne UNCERTAIN, pas une correction.
- **Si A01 montre que 10.2.0 est LIVE**, passer toutes les valeurs PTB à la nouvelle référence LIVE avant de continuer.

### P0-A — notes de patch officielles (16 requêtes, couvrent beaucoup d'éléments d'un coup)

| # | Élément | À vérifier | Requête WebSearch |
|---|---|---|---|
| A01 | Référence de version | 10.2.0 est-il sorti en LIVE ? Date, hotfix | `Dead by Daylight 10.2.0 patch notes live release date` |
| A02 | PTB 10.2.0 (58 perks) | Liste complète ; Survivor Intent System ; Abandon | `site:forums.bhvr.com "10.2.0" PTB patch notes` |
| A03 | PTB 10.2.0, perks survivant | Resilience, Kindred, Solidarity, Pharmacy, Wake Up!, Flow State, Boon: Illumination, Blood Pact, Premonition, TINH, Do No Harm, Spine Chill, Five Moves Ahead | `"10.2.0" PTB survivor perk changes Resilience Kindred Solidarity Pharmacy "Wake Up" "Flow State" "Boon: Illumination" "Blood Pact"` |
| A04 | PTB 10.2.0, perks tueur (1) | Fire Up, Nothing but Misery, Help Wanted, Knock Out, Insidious, Dominance, Superior Anatomy, Dissolution | `"10.2.0" PTB killer perk changes "Fire Up" "Nothing but Misery" "Help Wanted" "Knock Out" Insidious Dominance "Superior Anatomy" Dissolution` |
| A05 | PTB 10.2.0, perks tueur (2) | Game Afoot, Spies, Unbound, Dark Arrogance, Ravenous, Unrelenting, Bitter Murmur, Undone, Monstrous Shrine | `"10.2.0" PTB "Game Afoot" Spies Unbound "Dark Arrogance" Ravenous Unrelenting "Bitter Murmur" Undone "Monstrous Shrine"` |
| A06 | PTB 10.2.0, perks tueur (3) | Agitation, Iron Grasp, Machine Learning, Whispers, Distressing, Shattered Hope, Blood Favour (32 m), Deerstalker (« was 3 s »), DMS (« was 50 s ») | `"10.2.0" PTB Agitation "Iron Grasp" "Machine Learning" Whispers Distressing "Shattered Hope" "Blood Favour"` |
| A07 | Notes 10.1.1 | Knight (gardes et palettes), Repressed Alliance, Vigil, Judgment | `site:forums.bhvr.com "10.1.1" patch notes Knight "Repressed Alliance" Vigil` |
| A08 | Notes 10.1.0 | Adrenaline 3 → 4 s, Sprint Burst, Deliverance, Technician, Nowhere to Hide, Coulrophobia (sens), Thrill of the Hunt, Keep Them Waiting (plafonds) | `Dead by Daylight "10.1.0" patch notes perk changes Adrenaline Technician Coulrophobia "Keep Them Waiting"` |
| A09 | Notes 9.6.0, DR | Règle des DR, perks concernées | `site:forums.bhvr.com "9.6.0" patch notes diminishing returns` |
| A10 | Notes 9.6.0, tueurs | Doctor, Cannibal, Ghost Face, Demogorgon, Dredge, Mastermind, Unknown, Animatronic, Blight, Nurse, Legion | `Dead by Daylight "9.6.0" patch notes Doctor Cannibal "Ghost Face" Demogorgon Dredge Mastermind Unknown Animatronic` |
| A11 | Notes 9.6.1 et manuel, DR | Liste des modificateurs ; blocages et pertes instantanées | `Dead by Daylight "9.6.1" diminishing returns modifiers list generator blocking regression` |
| A12 | Notes 9.5.0 | Trickster, Distortion (30 → 15 s), Crowd Control, Pop 20 %, Wraith (Soot) | `Dead by Daylight "9.5.0" patch notes Trickster Distortion "Crowd Control" "Pop Goes the Weasel"` |
| A13 | Notes 9.2.0 LIVE | Eruption 10/5 %, Pop, DMS, Ruin, Off the Record, Plot Twist, Babysitter, Krasue | `site:forums.bhvr.com "9.2.0" patch notes Eruption "Dead Man's Switch" "Hex: Ruin"` |
| A14 | wiki 9.2.X | Changements PTB 9.2.0 annulés en LIVE ? | `deadbydaylight.wiki.gg "Patch Notes 9.2.X" Eruption reverted` |
| A15 | Notes 9.1.0 | Buffs Pig, Clown, Oni, Executioner, Knight ; Better Together, AMN, Potential Energy, Streetwise | `Dead by Daylight "9.1.0" patch notes Pig Clown Oni Executioner Knight "Any Means Necessary"` |
| A16 | Notes 9.3.0 | Annulations Babysitter, Borrowed Time, Off the Record, Furtive Chase ; Tenacity, Conviction, Mindbreaker | `Dead by Daylight "9.3.0" patch notes reverted Babysitter "Borrowed Time" "Off the Record" "Furtive Chase"` |

### P0-B — valeurs qui changent une décision survivant et erreurs suspectes du seed (45 requêtes)

| # | Élément | À vérifier | Requête WebSearch |
|---|---|---|---|
| B01 | TR, liste globale | TR de tous les tueurs (tri rapide) | `Dead by Daylight terror radius list all killers 24 32 40 metres` |
| B02 | Hillbilly | TR 40/32 m ; sprint ~10,1 / 8,8 m/s ; Overdrive | `site:deadbydaylight.wiki.gg "The Hillbilly" terror radius chainsaw sprint Overdrive` |
| B03 | Hag | TR 24/32 m ; pièges, téléportation | `site:deadbydaylight.wiki.gg "The Hag" terror radius Phantasm Trap` |
| B04 | Pig | TR 24/32 m ; buff 9.1.0 ; pièges aux portes | `site:deadbydaylight.wiki.gg "The Pig" terror radius Reverse Bear Trap` |
| B05 | Blight | TR 40/32 m ; jetons, fatigue | `site:deadbydaylight.wiki.gg "The Blight" terror radius Lethal Rush` |
| B06 | Onryō | TR 24/32 m ; Condemned, cassette | `site:deadbydaylight.wiki.gg "The Onryō" terror radius Condemned` |
| B07 | Mastermind | TR 40/32 m ; Uroboros | `site:deadbydaylight.wiki.gg "The Mastermind" terror radius Uroboros` |
| B08 | Skull Merchant | TR 24/32 m ; Lock-On, crouch | `site:deadbydaylight.wiki.gg "The Skull Merchant" terror radius drone Lock-On` |
| B09 | Ghoul | TR 40/32 m ; Kagune Leap ; Kagune Mark | `site:deadbydaylight.wiki.gg "The Ghoul" terror radius Kagune Leap` |
| B10 | Xenomorph | TR en Crawler Mode | `site:deadbydaylight.wiki.gg "The Xenomorph" Crawler Mode terror radius` |
| B11 | Shape | Exécution au 2e crochet en EI ; Stalker 4,2 m/s | `"The Shape" "Evil Incarnate" second hook mori Dead by Daylight 9.2.0 rework` |
| B12 | Huntress | Nombre de hachettes de base (5 ?) ; vitesse | `"The Huntress" hatchets base capacity Dead by Daylight wiki` |
| B13 | Spirit | Phasing passif supprimé ? | `"The Spirit" passive phasing removed Dead by Daylight` |
| B14 | Legion | Feral Frenzy peut-il mettre à terre ? désactivation 9.6.0 | `"The Legion" Feral Frenzy down survivor Dead by Daylight 9.6.0` |
| B15 | Executioner | Final Judgement ; relocalisation des cages ; buff 9.1.0 | `site:deadbydaylight.wiki.gg "The Executioner" "Final Judgement" Cage of Atonement` |
| B16 | Good Guy | Scamper casse-t-il les palettes en 1v4 ? | `"The Good Guy" Scamper pallet 1v4 "9.4.2" Dead by Daylight` |
| B17 | Singularity | Overclock, Overheat, EMP (erreur relevée par l'audit) | `site:deadbydaylight.wiki.gg "The Singularity" Overclock EMP Slipstream` |
| B18 | Stats BHVR | Kill rates chiffrés : Krasue, Lich, Ghoul, The First, Twins | `Dead by Daylight official statistics 2026 kill rate high MMR Krasue Lich Ghoul Twins` |
| B19 | Iron Will | 80/90/100 % vs 50/75/100 % ; condition « non Exhausted » | `site:deadbydaylight.wiki.gg "Iron Will" perk` |
| B20 | Quick & Quiet + Deception | Recharges ; durée sans griffures | `site:deadbydaylight.wiki.gg "Quick & Quiet" Deception perk cooldown` |
| B21 | Déjà Vu | Aura permanente ou temporaire | `site:deadbydaylight.wiki.gg "Déjà Vu" perk aura` |
| B22 | Built to Last + Quick Gambit | 12/10/8 s ; sens de l'aura | `site:deadbydaylight.wiki.gg "Built to Last" "Quick Gambit"` |
| B23 | Ace in the Hole + Boon: Dark Theory | Raretés et % ; Haste 2 ou 3 % | `site:deadbydaylight.wiki.gg "Ace in the Hole" "Dark Theory"` |
| B24 | Boon: Circle of Healing | Qui voit quelles auras | `site:deadbydaylight.wiki.gg "Boon: Circle of Healing" aura injured` |
| B25 | Windows of Opportunity | Cooldown LIVE | `site:deadbydaylight.wiki.gg "Windows of Opportunity" cooldown` |
| B26 | Adrenaline | Haste 3 ou 4 s (si A08 n'a pas tranché) | `site:deadbydaylight.wiki.gg Adrenaline perk Haste 10.1.0` |
| B27 | Breakout | Haste 6/8/10 vs 5/6/7 % | `site:deadbydaylight.wiki.gg Breakout perk Haste` |
| B28 | Buckle Up + Duty of Care | +50 % et 25 % de Haste (valeurs suspectes) | `site:deadbydaylight.wiki.gg "Buckle Up" "Duty of Care" Haste` |
| B29 | Shoulder the Burden | Exposed LIVE vs Broken PTB | `site:deadbydaylight.wiki.gg "Shoulder the Burden" Exposed` |
| B30 | Babysitter | Version LIVE, change log | `site:deadbydaylight.wiki.gg Babysitter perk change log` |
| B31 | Terminus | 20/25/30 vs 35/40/45 s | `site:deadbydaylight.wiki.gg Terminus perk Broken` |
| B32 | Eruption | 10 ou 5 % (si A13/A14 n'ont pas tranché) | `site:deadbydaylight.wiki.gg Eruption perk generator progress` |
| B33 | Dead Man's Switch | Recharge de 50 s LIVE (si A06 n'a pas tranché) | `site:deadbydaylight.wiki.gg "Dead Man's Switch" cooldown` |
| B34 | Hex: Blood Favour | Rayon LIVE | `site:deadbydaylight.wiki.gg "Hex: Blood Favour" radius` |
| B35 | Ultimate Weapon | Déclencheur, portée, Blindness | `site:deadbydaylight.wiki.gg "Ultimate Weapon" perk Blindness locker` |
| B36 | Superior Anatomy | Portée, durée, recharge | `site:deadbydaylight.wiki.gg "Superior Anatomy" perk` |
| B37 | Hex: The Third Seal | Cibles (derniers touchés ?) | `site:deadbydaylight.wiki.gg "Hex: The Third Seal"` |
| B38 | Tinkerer + Hex: Retribution | Une fois par gen ? ; totems concernés, durée | `site:deadbydaylight.wiki.gg Tinkerer "Hex: Retribution"` |
| B39 | Oppression + Deathbound | 45/40/35 s ; 12/8/4 m (suspects) | `site:deadbydaylight.wiki.gg Oppression Deathbound perk` |
| B40 | Leverage | Cible : sauveteur ou décroché | `site:deadbydaylight.wiki.gg Leverage perk healing` |
| B41 | Game Afoot + THWACK! | Déclencheur ; jetons | `site:deadbydaylight.wiki.gg "Game Afoot" "THWACK!"` |
| B42 | Unbound + Undone | LIVE vs PTB (seed ch8) | `site:deadbydaylight.wiki.gg Unbound Undone perk` |
| B43 | Dark Arrogance + Ravenous | LIVE vs PTB (seed ch8) | `site:deadbydaylight.wiki.gg "Dark Arrogance" Ravenous perk` |
| B44 | Machine Learning | Haste 8 ou 10 % | `site:deadbydaylight.wiki.gg "Machine Learning" perk Haste` |
| B45 | Hysteria | 20/25/30 s, CD 30 s vs 30/35/40 s, CD 20 s | `site:deadbydaylight.wiki.gg Hysteria perk Oblivious` |

### P1 — perks méta (tiers S/A/B du seed) (41 requêtes)

| # | Élément | À vérifier | Requête WebSearch |
|---|---|---|---|
| C01 | Dead Hard | Endurance ou invulnérabilité, durée, désactivation portes alimentées | `site:deadbydaylight.wiki.gg "Dead Hard"` |
| C02 | Resurgence | Valeurs LIVE | `site:deadbydaylight.wiki.gg Resurgence perk` |
| C03 | Finesse | Valeurs ; DR | `site:deadbydaylight.wiki.gg Finesse perk` |
| C04 | Prove Thyself | Bonus cumulatif, coéquipiers | `site:deadbydaylight.wiki.gg "Prove Thyself"` |
| C05 | Background Player | Exhausted 30/25/20 s ? | `site:deadbydaylight.wiki.gg "Background Player"` |
| C06 | Made for This | Haste 3 % fixe ou 1/2/3 % | `site:deadbydaylight.wiki.gg "Made for This"` |
| C07 | Bond + Kindred | Portées LIVE | `site:deadbydaylight.wiki.gg Bond Kindred perk` |
| C08 | Resilience | Valeurs LIVE ; DR | `site:deadbydaylight.wiki.gg Resilience perk` |
| C09 | Off the Record | Conditions (action conspicuous, gens restants) | `site:deadbydaylight.wiki.gg "Off the Record"` |
| C10 | Unbreakable | Valeurs 9.5.0 | `site:deadbydaylight.wiki.gg Unbreakable perk 9.5.0` |
| C11 | Hyperfocus | Valeurs ; DR | `site:deadbydaylight.wiki.gg Hyperfocus perk` |
| C12 | Lithe | Saut moyen ou non | `site:deadbydaylight.wiki.gg Lithe "rushed vault" medium vault` |
| C13 | Five Moves Ahead | « 50 % plus tôt » LIVE ou PTB | `site:deadbydaylight.wiki.gg "Five Moves Ahead"` |
| C14 | Borrowed Time | Valeurs LIVE après 10.1.0 | `site:deadbydaylight.wiki.gg "Borrowed Time"` |
| C15 | Any Means Necessary | Recharge 100/80/60 s ? | `site:deadbydaylight.wiki.gg "Any Means Necessary" cooldown` |
| C16 | Grim Embrace | Effet et valeurs | `site:deadbydaylight.wiki.gg "Grim Embrace"` |
| C17 | Lethal Pursuer | Effet et valeurs | `site:deadbydaylight.wiki.gg "Lethal Pursuer"` |
| C18 | Pop Goes the Weasel | Durée de la fenêtre ; usage par accrochage | `site:deadbydaylight.wiki.gg "Pop Goes the Weasel" duration` |
| C19 | Barbecue & Chilli | 60/50/40 m, 5 s ; casiers | `site:deadbydaylight.wiki.gg "Barbecue & Chilli"` |
| C20 | NOED | Haste 2/3/4 %, aura 4 → 24 m | `site:deadbydaylight.wiki.gg "No One Escapes Death"` |
| C21 | Turn Back the Clock | Effet et valeurs | `Dead by Daylight "Turn Back the Clock" perk wiki` |
| C22 | Celestial Witness + Darkness Revealed | Valeurs | `site:deadbydaylight.wiki.gg "Celestial Witness" "Darkness Revealed"` |
| C23 | Discordance | Valeurs ; casiers | `site:deadbydaylight.wiki.gg Discordance perk` |
| C24 | Floods of Rage | Valeurs | `site:deadbydaylight.wiki.gg "Floods of Rage"` |
| C25 | Weeping Wounds + Fortune's Fool | 10/13/16 %, 90 s ; 24/20/16 m | `site:deadbydaylight.wiki.gg "Weeping Wounds" "Fortune's Fool"` |
| C26 | Surge | 6/7/8 % ? cri ? | `site:deadbydaylight.wiki.gg Surge perk` |
| C27 | No Holds Barred | 15/20/25 s ? | `site:deadbydaylight.wiki.gg "No Holds Barred"` |
| C28 | Keep Them Waiting + Bamboozle | Plafonds ; bonus de saut 5/10/15 % toujours là ? | `site:deadbydaylight.wiki.gg "Keep Them Waiting" Bamboozle` |
| C29 | Hex: Undying + Devour Hope + Pentimento | Valeurs ; transfert sur un Hex béni | `site:deadbydaylight.wiki.gg "Hex: Undying" "Devour Hope" Pentimento` |
| C30 | Thanatophobia | Valeurs | `site:deadbydaylight.wiki.gg Thanatophobia perk` |
| C31 | Overcharge | Valeurs ; DR | `site:deadbydaylight.wiki.gg Overcharge perk` |
| C32 | Lay Waste | Texte exact | `site:deadbydaylight.wiki.gg "Lay Waste" perk` |
| C33 | Rapid Brutality | Valeurs | `site:deadbydaylight.wiki.gg "Rapid Brutality"` |
| C34 | Lightborn + Nemesis | Valeurs ; durée d'aura de Nemesis | `site:deadbydaylight.wiki.gg Lightborn Nemesis perk` |
| C35 | Gearhead + I'm All Ears | Good ou Great ; durée et recharge | `site:deadbydaylight.wiki.gg Gearhead "I'm All Ears"` |
| C36 | Knock Out | Effet principal (aura au sol limitée) | `site:deadbydaylight.wiki.gg "Knock Out" perk` |
| C37 | Jagged Compass | Mécanique des crochets Fléau | `site:deadbydaylight.wiki.gg "Jagged Compass"` |
| C38 | Scourge Hooks côté survivant | Visibles, distinguables ? | `Dead by Daylight can survivors see Scourge Hooks white aura` |
| C39 | Coup de Grâce | 5 détenus / 10 par partie | `site:deadbydaylight.wiki.gg "Coup de Grâce"` |
| C40 | Hope + Blast Mine | 3/4/5 %, durée ; seuil 40 %, stun 4 s | `site:deadbydaylight.wiki.gg Hope "Blast Mine" perk` |
| C41 | Distortion | Jetons, recharge limitée à la poursuite | `site:deadbydaylight.wiki.gg Distortion perk` |

### P2 — le reste (72 requêtes)

Perks survivant non re-vérifiées, groupées par 3 (19 requêtes)

| # | Élément | À vérifier | Requête WebSearch |
|---|---|---|---|
| D01 | Overcome, Fixated, Dramaturgy | Valeurs LIVE | `site:deadbydaylight.wiki.gg Overcome Fixated Dramaturgy perk` |
| D02 | Flashbang, Balanced Landing, Smash Hit | Valeurs LIVE | `site:deadbydaylight.wiki.gg Flashbang "Balanced Landing" "Smash Hit"` |
| D03 | Champion of Light, Counterforce, Urban Evasion | Valeurs LIVE | `site:deadbydaylight.wiki.gg "Champion of Light" Counterforce "Urban Evasion"` |
| D04 | Cross-Examination, Wide Open Throttle, Desperate Measures | Valeurs LIVE | `site:deadbydaylight.wiki.gg "Cross-Examination" "Wide Open Throttle" "Desperate Measures"` |
| D05 | Dance With Me, Extrasensory Perception, Salvation's Cry | Valeurs LIVE | `site:deadbydaylight.wiki.gg "Dance With Me" "Extrasensory Perception" "Salvation's Cry"` |
| D06 | Down to the Last, Wake Up!, Pharmacy | Condition de portée, formule, rareté | `site:deadbydaylight.wiki.gg "Down to the Last" "Wake Up!" Pharmacy` |
| D07 | Detective's Hunch, Aftercare, Breakdown | 20 s ? ; revert 9.3.2 | `site:deadbydaylight.wiki.gg "Detective's Hunch" Aftercare Breakdown` |
| D08 | Diversion, Solidarity, Mettle of Man | Valeurs LIVE | `site:deadbydaylight.wiki.gg Diversion Solidarity "Mettle of Man"` |
| D09 | Overzealous, Residual Manifest, Reactive Healing | Valeurs LIVE | `site:deadbydaylight.wiki.gg Overzealous "Residual Manifest" "Reactive Healing"` |
| D10 | Fogwise, Blood Rush, Power of Two | Valeurs ; Blood Rush suspect | `site:deadbydaylight.wiki.gg Fogwise "Blood Rush" "Power of Two"` |
| D11 | Scavenger, Troubleshooter, Scene Partner | Durée de l'aura du tueur (Troubleshooter) | `site:deadbydaylight.wiki.gg Scavenger Troubleshooter "Scene Partner"` |
| D12 | Light-Footed, Lucky Star, Weaving Spiders, Strength in Shadows | Buff 9.0.0, durées, charges | `site:deadbydaylight.wiki.gg "Light-Footed" "Lucky Star" "Weaving Spiders" "Strength in Shadows"` |
| D13 | Lend a Hand, Fruits of Your Labor, Left Behind | Valeurs LIVE | `site:deadbydaylight.wiki.gg "Lend a Hand" "Fruits of Your Labor" "Left Behind"` |
| D14 | Open-Handed, Streetwise, Boon: Illumination | Valeurs post-9.1.0 | `site:deadbydaylight.wiki.gg "Open-Handed" Streetwise "Boon: Illumination"` |
| D15 | Friendly Competition, Deadline, Hardened | Valeurs LIVE | `site:deadbydaylight.wiki.gg "Friendly Competition" Deadline Hardened` |
| D16 | Treacherous Crows, Rapid Response, Apocalyptic Ingenuity | 3 s, 24/28/32 m | `site:deadbydaylight.wiki.gg "Treacherous Crows" "Rapid Response" "Apocalyptic Ingenuity"` |
| D17 | Road Life + Change of Plan | Soin de soi ou d'autrui ; add-ons, boîte vide | `site:deadbydaylight.wiki.gg "Road Life" "Change of Plan"` |
| D18 | Lightweight + Self-Care | Bug d'espacement 8.6.0 ; efficacité médikit | `site:deadbydaylight.wiki.gg Lightweight "Self-Care"` |
| D19 | Vigil + Boon: Steadfast | Persistance 15 s ; effet d'aura | `site:deadbydaylight.wiki.gg Vigil "Boon: Steadfast"` |

Perks tueur non re-vérifiées, groupées par 3 à 4 (22 requêtes)

| # | Élément | À vérifier | Requête WebSearch |
|---|---|---|---|
| E01 | Blood Warden, Remember Me, Furtive Chase | Valeurs LIVE | `site:deadbydaylight.wiki.gg "Blood Warden" "Remember Me" "Furtive Chase"` |
| E02 | Dragon's Grip, Trail of Torment | Recharges 60/45/30 s ? | `site:deadbydaylight.wiki.gg "Dragon's Grip" "Trail of Torment"` |
| E03 | Infectious Fright, Spirit Fury, Face the Darkness | Valeurs LIVE | `site:deadbydaylight.wiki.gg "Infectious Fright" "Spirit Fury" "Face the Darkness"` |
| E04 | Mindbreaker, Hive Mind, Secret Project | Seuil ; valeurs | `site:deadbydaylight.wiki.gg Mindbreaker "Hive Mind" "Secret Project"` |
| E05 | Silent Shadow, Agitation, Iron Grasp, Monstrous Shrine | Valeurs LIVE | `site:deadbydaylight.wiki.gg "Silent Shadow" Agitation "Iron Grasp" "Monstrous Shrine"` |
| E06 | Hex: Huntress Lullaby, Unnerving Presence | Régression ; skill checks | `site:deadbydaylight.wiki.gg "Huntress Lullaby" "Unnerving Presence"` |
| E07 | Hubris, Dissolution, Merciless Storm | Valeurs LIVE | `site:deadbydaylight.wiki.gg Hubris Dissolution "Merciless Storm"` |
| E08 | Haunted Ground, Rancor, Iron Maiden | L'Obsession voit-elle le tueur (Rancor) ? | `site:deadbydaylight.wiki.gg "Haunted Ground" Rancor "Iron Maiden"` |
| E09 | Mad Grit, Zanshin, Blood Echo | Recharge de Blood Echo | `site:deadbydaylight.wiki.gg "Mad Grit" "Zanshin Tactics" "Blood Echo"` |
| E10 | Forced Penance, Forced Hesitation, Genetic Limits, Alien Instinct | Valeurs LIVE | `site:deadbydaylight.wiki.gg "Forced Penance" "Forced Hesitation" "Genetic Limits" "Alien Instinct"` |
| E11 | Hex: Crowd Control, Coulrophobia | Bonus ; indicateur ; sens du changement 10.1.0 | `site:deadbydaylight.wiki.gg "Hex: Crowd Control" Coulrophobia` |
| E12 | Unforeseen, Languid Touch, Weave Attunement | Valeurs LIVE | `site:deadbydaylight.wiki.gg Unforeseen "Languid Touch" "Weave Attunement"` |
| E13 | Human Greed, All-Shaking Thunder, Forever Entwined | Valeurs LIVE | `site:deadbydaylight.wiki.gg "Human Greed" "All-Shaking Thunder" "Forever Entwined"` |
| E14 | Hex: Nothing but Misery, None Are Free, Help Wanted | Valeurs ; indicateur de gen compromis | `site:deadbydaylight.wiki.gg "Nothing but Misery" "None Are Free" "Help Wanted"` |
| E15 | Phantom Fear, Haywire, Hex: Under Your Thumb | Valeurs ; signal côté survivant | `site:deadbydaylight.wiki.gg "Phantom Fear" Haywire "Under Your Thumb"` |
| E16 | See How They Run, Cull the Weak, Franklin's Demise | Valeurs ; consommation de l'objet | `site:deadbydaylight.wiki.gg "See How They Run" "Cull the Weak" "Franklin's Demise"` |
| E17 | Awakened Awareness, Hex: Wretched Fate, No Quarter | Totem purifiable ? | `site:deadbydaylight.wiki.gg "Awakened Awareness" "Wretched Fate" "No Quarter"` |
| E18 | Hangman's Trick, Overture of Doom, Wandering Eye | Valeurs LIVE | `site:deadbydaylight.wiki.gg "Hangman's Trick" "Overture of Doom" "Wandering Eye"` |
| E19 | Hex: Scared to Death, Rampage, Spies | Valeurs LIVE | `site:deadbydaylight.wiki.gg "Scared to Death" Rampage Spies perk` |
| E20 | Unrelenting, Bitter Murmur, Monitor & Abuse | Valeurs ; effet net de M&A | `site:deadbydaylight.wiki.gg Unrelenting "Bitter Murmur" "Monitor & Abuse"` |
| E21 | Deerstalker + Insidious | LIVE 3 s ; Undetectable LIVE | `site:deadbydaylight.wiki.gg Deerstalker Insidious perk` |
| E22 | Septic Touch + Beast of Prey + Overwhelming Presence | Soin d'autrui ; fin de l'Undetectable ; effet de Vigil | `site:deadbydaylight.wiki.gg "Septic Touch" "Beast of Prey" "Overwhelming Presence"` |

Pouvoirs des tueurs sans TR en cause, ou dont le détail n'est pas couvert par les notes de patch (31 requêtes)

| # | Élément | À vérifier | Requête WebSearch |
|---|---|---|---|
| F01 | Trapper | Haste après la pose, libération, nombre de pièges | `site:deadbydaylight.wiki.gg "The Trapper" Bear Trap` |
| F02 | Wraith | Invisibilité, désoccultation (lampe, pétard), add-on Soot | `site:deadbydaylight.wiki.gg "The Wraith" Wailing Bell uncloak` |
| F03 | Nurse | Blinks, fatigue, Heavy Panting 9.6.0 | `site:deadbydaylight.wiki.gg "The Nurse" Spencer's Last Breath blink fatigue` |
| F04 | Doctor | Static Blast, Madness III, buff 9.6.0 | `site:deadbydaylight.wiki.gg "The Doctor" "Static Blast" Madness` |
| F05 | Cannibal | Buff 9.6.0 (sweep, charges) | `"The Cannibal" 9.6.0 buff chainsaw Dead by Daylight` |
| F06 | Nightmare | Rework 8.5.0 (snares, palettes, TP, réveil) | `"The Nightmare" rework 8.5.0 Dream Snare Dream Pallet` |
| F07 | Clown | Buff 9.1.0 ; blocage du fast vault | `site:deadbydaylight.wiki.gg "The Clown" Afterpiece Tonic` |
| F08 | Plague | Un stun met-il fin à Corrupt Purge ? ; Iridescent Seal | `site:deadbydaylight.wiki.gg "The Plague" "Corrupt Purge"` |
| F09 | Ghost Face | Recharge Night Shroud 15 s ? ; buff 9.6.0 | `site:deadbydaylight.wiki.gg "The Ghost Face" "Night Shroud"` |
| F10 | Demogorgon | Buff 9.6.0 ; Oblivious près des portails | `site:deadbydaylight.wiki.gg "The Demogorgon" portal Undetectable` |
| F11 | Oni | Orbes ; buff 9.1.0 ; Iron Will | `site:deadbydaylight.wiki.gg "The Oni" Blood Orbs` |
| F12 | Deathslinger | Redeemer (portée, rechargement, stun) | `site:deadbydaylight.wiki.gg "The Deathslinger" Redeemer` |
| F13 | Twins | Timings de libération, retrait, écrasement ; vitesse de Victor | `site:deadbydaylight.wiki.gg "The Twins" Victor Charlotte` |
| F14 | Trickster | Barème post-9.5.2, rang S, Main Event | `site:deadbydaylight.wiki.gg "The Trickster" Laceration Main Event` |
| F15 | Nemesis | Tentacule sur un non contaminé, mutations, vaccins | `site:deadbydaylight.wiki.gg "The Nemesis" Contamination tentacle` |
| F16 | Cenobite | Chain Hunt, portail, retrait de la boutique | `site:deadbydaylight.wiki.gg "The Cenobite" "Chain Hunt"` |
| F17 | Artist | Swarmed, corbeaux et murs | `site:deadbydaylight.wiki.gg "The Artist" Swarmed Dire Crows` |
| F18 | Dredge | Nightfall, Gloaming, buff 9.6.0 | `site:deadbydaylight.wiki.gg "The Dredge" Nightfall` |
| F19 | Knight | Bannière, patrouille, 10.1.1 | `site:deadbydaylight.wiki.gg "The Knight" Guardia Compagnia patrol` |
| F20 | Unknown | UVX 6,25 s ? ; buff 9.6.0 | `site:deadbydaylight.wiki.gg "The Unknown" UVX` |
| F21 | Lich | Cooldowns des sorts | `site:deadbydaylight.wiki.gg "The Lich" spells cooldown` |
| F22 | Dark Lord | Loup (4,8 m/s ?), Hellfire | `site:deadbydaylight.wiki.gg "The Dark Lord" wolf Hellfire` |
| F23 | Animatronic | Batterie, reboot ; 9.0.2 / 9.6.0 | `site:deadbydaylight.wiki.gg "The Animatronic" battery` |
| F24 | Krasue | Leech remis à zéro au crochet (9.2.2) ; paliers | `site:deadbydaylight.wiki.gg "The Krasue" Leech` |
| F25 | The First | Upside Down (8 m/s ?, CD 35 s) | `site:deadbydaylight.wiki.gg "The First" "Upside Down"` |
| F26 | Slasher | Détection, Jump Scare, add-ons 10.0.2 | `site:deadbydaylight.wiki.gg "The Slasher" "Jump Scare"` |
| F27 | Judgment | Heresy (10 m de qui ?), Exile et protections | `site:deadbydaylight.wiki.gg "The Judgment" Heresy Exile` |
| F28 | Houndmaster | Chase Command, traîne, libération | `site:deadbydaylight.wiki.gg "The Houndmaster" "Chase Command"` |
| F29 | Ghoul | Kagune Mark (retirée par le soin ?), palette au 3e bond | `site:deadbydaylight.wiki.gg "The Ghoul" "Kagune Mark"` |
| F30 | Huntress | Vitesse des hachettes, berceuse | `site:deadbydaylight.wiki.gg "The Huntress" hatchet speed lullaby` |
| F31 | Spirit | Son directionnel, Prayer Beads | `site:deadbydaylight.wiki.gg "The Spirit" "Yamaoka's Haunting" Prayer Beads` |

**Récapitulatif du budget :** P0-A 16 + P0-B 45 + P1 41 + P2 72 (19 + 22 + 31) = **174**, plus **6 de réserve** = **180**.

Hors budget, à ne pas refaire : NightLight, les infographies (images) et les VOD sont illisibles par `WebSearch` ; chaque requête dessus serait perdue.

---

## 6. Recommandation pour lever le blocage

- **Cause.** Pendant les lots 2-4, `WebFetch` et `curl` ont été **refusés par la politique réseau de l'environnement cloud** pour : deadbydaylight.wiki.gg, deadbydaylight.fandom.com, forums.bhvr.com, support.deadbydaylight.com, deadbydaylight.com, store.steampowered.com, nightlight.gg, timesaver.gg, patched.gg, reddit.com, en.wikipedia.org, otzdarva.com, dbd.tricky.lol (voir `kb/PROJECT_MANIFEST.md` §3).
- **Conséquence.** Seul `WebSearch` fonctionnait. Il ne rend qu'un résumé généré, qui mélange parfois les versions (valeurs PTB affichées sur les pages wiki, historique pris pour la valeur actuelle). D'où le plafond STRONG_SECONDARY, 43 conflits UNRESOLVED, et 44 tueurs sans aucune vérification web.
- **Remède.** Le propriétaire du projet doit autoriser ces domaines dans les **réglages réseau de l'environnement cloud** : menu de l'environnement dans la barre de titre de la session, puis *Edit*, puis *Network access*. Il peut soit ajouter les domaines à la liste autorisée, soit choisir un niveau d'accès plus large. Les niveaux sont décrits sur https://code.claude.com/docs/en/claude-code-on-the-web.
- **Priorité minimale** si l'on n'ouvre que quelques domaines : `deadbydaylight.wiki.gg`, `forums.bhvr.com` et `support.deadbydaylight.com` (notes officielles), puis `store.steampowered.com` (annonces Steam de patch).
- **Gain attendu.** Lire les pages complètes (notes de patch officielles, onglets LIVE/PTB et change logs du wiki) au lieu des résumés. Une seule page de notes (9.2.0, 9.6.0, 10.1.0, 10.1.1, PTB 10.2.0) tranche des dizaines d'éléments. Beaucoup de lignes de la file du §5 deviendraient inutiles, et les claims pourraient passer de STRONG_SECONDARY à VERIFIED_PRIMARY.
- **Si l'accès n'est pas ouvert**, suivre la file du §5 dans l'ordre. Garder PROBABLE et SUSPECT tant qu'aucune source primaire ne tranche. Ne jamais corriger le seed sur la seule mémoire du modèle.
