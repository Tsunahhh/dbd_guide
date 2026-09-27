# PROJECT_MANIFEST — Base de connaissances experte Dead by Daylight

> **Statut global : NOT READY** (mission §47). Aucun domaine n'est COMPLETE.
> Référence de version : **patch LIVE 10.1.2a (hotfix serveur du 17/09/2026, chapitre 41 Chorus of Sin)** — état au **27/09/2026**.
> Le **PTB 10.2.0** (15 → 21/09/2026, 58 perks modifiées, Survivor Intent System, refonte Abandon) **n'est pas LIVE** ; sa sortie est estimée début octobre 2026 (non officiel). Toute valeur PTB est étiquetée comme telle.

## 1. Comment reprendre ce projet (nouvelle session)

1. Lire `prompt.md` (la mission complète, 54 sections).
2. Lire ce manifeste, puis `kb/ledgers/TODO_RESEARCH.md` (le **prochain lot exact** y est indiqué).
3. Contexte vérifié de la phase 0 : `kb/seed/audit_phase0.txt` (texte extrait du PDF `DBD_Rapport_Audit_Phase0.pdf`, 50 p.) — registre de patchs 9.0.0 → 10.1.2a, tables de mécaniques vérifiées, sources statistiques, compétitif, plan de recherche.
4. Le guide d'origine (**seed, non fiable**) : `DBD_Guide_Avance_2026.pdf` (140 p.) ; son texte par chapitre est dans `kb/seed/*.txt` (extraction PyMuPDF).
5. Les agents de recherche suivent `kb/research/AGENT_BRIEF.md`.

## 2. Carte des fichiers

| Fichier | Rôle | État |
|---|---|---|
| `prompt.md` | Mission | référence |
| `DBD_Guide_Avance_2026.pdf` | Guide seed (26/09/2026) | seed, POSSIBLY STALE |
| `DBD_Rapport_Audit_Phase0.pdf` | Rapport phase 0 (PASS 0-2 + lot 1) | fait (27/09/2026) |
| `last_result.md` | Compte rendu de la session précédente (lots 2-4 échoués) | historique |
| `Assets_outdated/` | Icônes du jeu (version 9.4.0, jusqu'à The First) — **périmé** : manque Trickster rework, Slasher, Judgment, Aurora, Shane… | à ne pas utiliser sans vérification |
| `kb/seed/` | Textes extraits du guide seed et de l'audit | référence |
| `kb/research/batch2_perks_surv_p*.md` | Lot 2 : perks survivant (par page du seed) | voir §4 |
| `kb/research/batch3_perks_kill_p*.md` | Lot 3 : perks tueur vues du survivant | voir §4 |
| `kb/research/batch4_killers_g*.md` | Lot 4 : 44 tueurs, volet survivant | voir §4 |
| `kb/ledgers/COVERAGE_MATRIX.md` | Matrice de couverture | tenue à jour |
| `kb/ledgers/CONFLICT_REGISTER.md` | Contradictions de sources | tenue à jour |
| `kb/ledgers/OUTDATED_CONTENT_REPORT.md` | Erreurs prouvées du seed | tenue à jour |
| `kb/ledgers/OPEN_QUESTIONS.md` | Non vérifié | tenue à jour |
| `kb/ledgers/TODO_RESEARCH.md` | File de lots + prochain lot exact | tenue à jour |
| `kb/ledgers/SOURCE_LEDGER.md` | Sources | tenue à jour |
| `kb/ledgers/CHANGELOG.md` | Historique du projet | tenue à jour |
| `kb/deliverables/` | Livrables §51 : `PERK_DATABASE.md` (§51-5), `PERK_DEDUCTION.md` (§10), `KILLER_COUNTERPLAY_HANDBOOK.md` (§51-3) | en construction |
| `kb/ledgers/BATCH_2_4_SYNTHESIS.md` | Bilan lots 2-4, erreurs du seed PROUVÉ/PROBABLE/SUSPECT, 58 conflits, file de re-vérification | fait |
| `kb/research/batch6/9/11_*.md` | Brouillons sans web (chase, macro, entraînement) | WRITTEN + AUDITED (sans web) |
| `kb/audit/pass14_*.md` | Rapports des audits adversariaux §25-26 | fait (27/09) |
| `kb/tools/summarize_batches.py` | Comptages des lots + `SOURCE_LEDGER_batches.md` | outil |

## 3. Contraintes d'accès connues (à relire avant chaque session)

| Session | Accès web | Conséquence |
|---|---|---|
| Phase 0 (27/09/2026, app) | Outil web résumant les pages ; wiki.gg, forums BHVR lisibles ; YouTube/X/Liquipedia/DBDL refusés ; infographies officielles illisibles | 239 affirmations vérifiées, pas de VOD |
| Lots 2-4 (27/09/2026, cloud) | **Seul `WebSearch` fonctionne, avec un quota de 200 recherches par session (atteint)** (liste d'URL + résumé généré). `WebFetch`/`curl` refusés par la politique réseau pour : deadbydaylight.wiki.gg, deadbydaylight.fandom.com, forums.bhvr.com, support.deadbydaylight.com, deadbydaylight.com, store.steampowered.com, nightlight.gg, timesaver.gg, patched.gg, reddit.com, en.wikipedia.org, otzdarva.com, dbd.tricky.lol | Confiance plafonnée à STRONG_SECONDARY pour tout ce qui n'a pas été vérifié en phase 0 ; les valeurs sont à re-vérifier sur page complète quand l'accès le permettra. Pour lever la limite : autoriser ces domaines dans les réglages réseau de l'environnement cloud. |

Aucune analyse de VOD n'a été faite ; le guide ne doit jamais prétendre le contraire.

## 4. État des lots (mission §44 PASS / §46 statuts)

| Lot | Périmètre | Statut | Fichiers |
|---|---|---|---|
| PASS 0-2 | Audit seed, taxonomie (23 familles, ~200 nœuds T-xxx), matrice, gap analysis | FAIT | `kb/seed/audit_phase0.txt` |
| 1 | État du jeu, patchs, mécaniques chase/objectifs/statuts, stats, compétitif | FAIT (PARTIALLY_VERIFIED) | idem |
| 2 | Perks survivant (176) | PARTIALLY_VERIFIED — 176 fiches ; 106 vérifiées via résumé WebSearch, 69 UNCERTAIN | `batch2_*`, `deliverables/PERK_DATABASE.md` |
| 3 | Perks tueur vue survivant (145) + perk deduction | PARTIALLY_VERIFIED — 145 fiches ; 42 web, 17 audit partiel, 86 UNCERTAIN | `batch3_*`, `deliverables/PERK_DEDUCTION.md`, `PERK_DATABASE.md` |
| 4 | 44 tueurs, volet survivant | WRITTEN, NON VÉRIFIÉ web (quota) — 44 fiches, 62 claims via audit | `batch4_*`, `deliverables/KILLER_COUNTERPLAY_HANDBOOK.md` |
| 5 | Objets, add-ons, offrandes, techniques (flash/pallet save, sabo, body block) | NOT_STARTED | — |
| 6 | Techniques de chase fines + chase theory avancée | WRITTEN + AUDITED (§25-26, 36 pb / 31 corrigés) | `batch6_chase_tech.md`, `audit/pass14_lot6_chase.md` |
| 7 | Loops et tiles, matrice tile × tueur, connectivité | NOT_STARTED | — |
| 8 | Cartes (44) : fixe vs RNG, dimensions stratégiques | NOT_STARTED | — |
| 9 | Macro, SoloQ/SWF, game sense, états de partie, endgame | WRITTEN + AUDITED (§25-26, 43 pb / 37 corrigés) | `batch9_macro.md`, `audit/pass14_lot9_macro.md` |
| 10 | Compétitif approfondi / VOD | BLOCKED (accès) | — |
| 11 | Erreurs, arbres de décision, drills, programme, métriques | WRITTEN + AUDITED (§25-26, 54 pb / 51 corrigés) | `batch11_training.md`, `audit/pass14_lot11_training.md` |
| 12 | Triangulation + freshness (sortie 10.2.0) — **PROCHAIN LOT** : file de 180 requêtes | NOT_STARTED | `ledgers/BATCH_2_4_SYNTHESIS.md` §5 |
| 13-15 | Audits couverture / adversariaux ×2 / praticité | PARTIEL : audits adversariaux §25-26 faits sur lots 6, 9, 11 et les 3 livrables (sans web) ; audit de couverture et de praticité restants | `kb/audit/pass14_*.md` |
| 16-17 | Réécriture + fact-check final | NOT_STARTED | — |

(Cette table est mise à jour à la fin de chaque session ; voir `kb/ledgers/CHANGELOG.md`.)
