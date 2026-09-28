# PROJECT_MANIFEST — Base de connaissances experte Dead by Daylight

> **Statut global : voir `kb/guide/15_annexes.md` §15.7 (Definition of Done, mission §47).**
> Référence de version : **patch LIVE 10.1.2a (édition serveur du 17/09/2026, chapitre 41 Chorus of Sin)** — état au **27-28/09/2026**.
> Le **PTB 10.2.0** (15 → 21/09/2026, 58 perks modifiées, Survivor Intent System, refonte Abandon) **n'est pas LIVE** (wiki : « 10.2.0 TBA » ; aucun article officiel après 559). Toute valeur PTB est étiquetée comme telle.

## 1. Livrable principal

**`DBD_Guide_Expert_v2.pdf`** (racine du dépôt) = MASTER GUIDE (§51-1), généré depuis `kb/guide/00…15_*.md` par `python3 kb/tools/build_pdf.py`. Il remplace `DBD_Guide_Avance_2026.pdf` (seed, non fiable).

## 2. Comment reprendre ce projet (nouvelle session)

1. Lire `prompt.md` (la mission, 54 sections), puis ce manifeste, puis `kb/ledgers/CHANGELOG.md` (section « Prochaine session »).
2. Faits de référence du guide : `kb/guide/CANONICAL_FACTS.md` ; corrections qui priment : `kb/ledgers/AUDIT_PHASE0_ERRATA.md`.
3. Pour toute mise à jour de valeur : sources primaires archivées `kb/sources/patches/official_*.txt` (notes BHVR 9.0.0 → PTB 10.2.0, index `kb_index.txt`), pages wiki complètes (`kb/sources/wiki_perks.json`, `wiki_perks_digest.md`, `wiki_killers/`), outils `kb/tools/wiki_scrape.py`, `wiki_text.py`.
4. Règles des agents : `kb/research/AGENT_BRIEF.md` ; règles de rédaction : `kb/guide/WRITING_BRIEF.md`.
5. **Dès la sortie de 10.2.0** : suivre `kb/guide/15_annexes.md` §15.8 (58 perks, Abandon/Surrender, Intent System), relancer `wiki_scrape.py perks`, archiver la note officielle, mettre à jour les fiches puis le guide, rebâtir le PDF.

## 3. Carte des fichiers

| Emplacement | Contenu | État |
|---|---|---|
| `prompt.md` | Mission | référence |
| `DBD_Guide_Expert_v2.pdf` (+ `.html`) | Master guide v2 (15 chapitres) | livrable |
| `DBD_Guide_Avance_2026.pdf` | Guide seed du 26/09/2026 | OBSOLÈTE (voir `OUTDATED_CONTENT_REPORT.md`) |
| `DBD_Rapport_Audit_Phase0.pdf` | Rapport de phase 0 | historique (corrigé par l'errata) |
| `kb/guide/` | Chapitres Markdown du guide, faits canoniques, brief de rédaction | final |
| `kb/deliverables/` | QUICK_REFERENCE (§51-2), KILLER_COUNTERPLAY_HANDBOOK (§51-3), MAP_LOOP_HANDBOOK (§51-4, = ch. 4 + 5), PERK_DATABASE (§51-5), TRAINING_PROGRAM (§51-6), DECISION_TREES (§51-7), PERK_DEDUCTION (§10) | final |
| `kb/research/` | Fiches de recherche : batch2 (176 perks survivant), batch3 (145 perks tueur), batch4 (44 tueurs), batch5 (objets), batch6 (chase), batch7 (tiles), batch8 (44 cartes), batch9 (macro), batch11 (entraînement), batch12 (questions mécaniques) | re-vérifié / audité |
| `kb/audit/` | pass13 (couverture), pass14 (adversariaux §25-26), pass15 (profondeur/praticité), pass17 (fact-check final) | fait |
| `kb/ledgers/` | COVERAGE_MATRIX, CONFLICT_REGISTER, OUTDATED_CONTENT_REPORT (§51-10), OPEN_QUESTIONS (§51-11), SOURCE_LEDGER (§51-8), CHANGELOG (§51-9), TODO_RESEARCH, AUDIT_PHASE0_ERRATA, BATCH_2_4_SYNTHESIS (historique) | final |
| `kb/sources/` | Notes officielles BHVR archivées, pages wiki complètes, modules de données wiki | archive |
| `kb/seed/` | Textes extraits du seed et de l'audit de phase 0 | référence |
| `kb/tools/` | `wiki_scrape.py`, `wiki_text.py`, `build_pdf.py`, `summarize_batches.py` | outils |
| `Assets_outdated/` | Icônes du jeu (9.4.0) — périmé, non utilisé | à ignorer |

## 4. Contraintes d'accès connues

| Période | Accès | Conséquence |
|---|---|---|
| Phase 0 (27/09, app) | Outil web résumant les pages | 239 affirmations vérifiées |
| Lots 2-4 (27/09, cloud, réseau restreint) | Seul WebSearch (quota 200/session, atteint) | Confiance plafonnée STRONG_SECONDARY — **ensuite levé** |
| Après passage de l'environnement en accès complet (27/09 soir) | `curl` : wiki.gg (API MediaWiki), forums.bhvr.com (notes officielles), YouTube (pages sans transcript) OK ; reddit, nightlight.gg → 403 ; dbdleague.com → 503 ; WebFetch reste bloqué | Re-vérification complète sur pages entières + notes officielles |

Jamais d'analyse de VOD ; aucune statistique NightLight/infographie lue ; aucune source experte écrite trouvée.

## 5. État des lots (mission §44 / §46)

| Lot / PASS | Périmètre | Statut | Fichiers |
|---|---|---|---|
| PASS 0-2 | Audit seed, taxonomie, matrice, gap analysis | FAIT | `kb/seed/audit_phase0.txt` |
| 1 | État du jeu, patchs, mécaniques | FAIT (+ errata) | idem, `AUDIT_PHASE0_ERRATA.md` |
| 2 | Perks survivant (176) | VERIFIED (wiki complet + notes officielles) | `batch2_*` |
| 3 | Perks tueur (145) + perk deduction | VERIFIED | `batch3_*`, `PERK_DEDUCTION.md` |
| 4 | 44 tueurs, volet survivant | VERIFIED + AUDITED | `batch4_*`, `audit/pass14_lot4_*` |
| 5 | Objets, add-ons, offrandes, techniques | WRITTEN + AUDITED | `batch5_items.md` |
| 6 | Chase fine + chase theory | WRITTEN + AUDITED | `batch6_chase_tech.md` |
| 7 | Loops, tiles, connectivité | WRITTEN + AUDITED | `batch7_tiles.md` |
| 8 | 44 cartes | WRITTEN + AUDITED | `batch8_maps.md` |
| 9 | Macro, SoloQ/SWF, états, endgame | WRITTEN + AUDITED | `batch9_macro.md` |
| 10 | Compétitif / VOD | PARTIEL — BLOCKED (DBDL 503, VOD sans transcript) | guide ch. 12 |
| 11 | Erreurs, arbres, drills, programme, métriques | WRITTEN + AUDITED | `batch11_training.md` |
| 12 | Re-vérification + freshness + questions mécaniques | FAIT (27-28/09) | `batch12_mechanics_open.md`, ledgers |
| 13 | Audit de couverture | FAIT | `audit/pass13_coverage.md` |
| 14 | Audits adversariaux §25-26 | FAIT | `audit/pass14_*.md` |
| 15 | Audit de profondeur / praticité | FAIT | `audit/pass15_depth_practicality.md` |
| 16 | Réécriture (master guide) | FAIT | `kb/guide/`, PDF |
| 17 | Fact-check final | FAIT | `audit/pass17_*.md` |
