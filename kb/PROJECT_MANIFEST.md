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
| `kb/deliverables/` | Livrables §51 (perk database, handbook tueurs, perk deduction…) | en construction |

## 3. Contraintes d'accès connues (à relire avant chaque session)

| Session | Accès web | Conséquence |
|---|---|---|
| Phase 0 (27/09/2026, app) | Outil web résumant les pages ; wiki.gg, forums BHVR lisibles ; YouTube/X/Liquipedia/DBDL refusés ; infographies officielles illisibles | 239 affirmations vérifiées, pas de VOD |
| Lots 2-4 (27/09/2026, cloud) | **Seul `WebSearch` fonctionne** (liste d'URL + résumé généré). `WebFetch`/`curl` refusés par la politique réseau pour : deadbydaylight.wiki.gg, deadbydaylight.fandom.com, forums.bhvr.com, support.deadbydaylight.com, deadbydaylight.com, store.steampowered.com, nightlight.gg, timesaver.gg, patched.gg, reddit.com, en.wikipedia.org, otzdarva.com, dbd.tricky.lol | Confiance plafonnée à STRONG_SECONDARY pour tout ce qui n'a pas été vérifié en phase 0 ; les valeurs sont à re-vérifier sur page complète quand l'accès le permettra. Pour lever la limite : autoriser ces domaines dans les réglages réseau de l'environnement cloud. |

Aucune analyse de VOD n'a été faite ; le guide ne doit jamais prétendre le contraire.

## 4. État des lots (mission §44 PASS / §46 statuts)

| Lot | Périmètre | Statut | Fichiers |
|---|---|---|---|
| PASS 0-2 | Audit seed, taxonomie (23 familles, ~200 nœuds T-xxx), matrice, gap analysis | FAIT | `kb/seed/audit_phase0.txt` |
| 1 | État du jeu, patchs, mécaniques chase/objectifs/statuts, stats, compétitif | FAIT (PARTIALLY_VERIFIED) | idem |
| 2 | Perks survivant (176) | RESEARCHING (27/09) | `batch2_*` |
| 3 | Perks tueur vue survivant (145) + perk deduction | RESEARCHING (27/09) | `batch3_*` |
| 4 | 44 tueurs, volet survivant | RESEARCHING (27/09) | `batch4_*` |
| 5 | Objets, add-ons, offrandes, techniques (flash/pallet save, sabo, body block) | NOT_STARTED | — |
| 6 | Techniques de chase fines (red stain, caméra, checkspots, mindgames, latence) | NOT_STARTED | — |
| 7 | Loops et tiles, matrice tile × tueur, connectivité | NOT_STARTED | — |
| 8 | Cartes (44) : fixe vs RNG, dimensions stratégiques | NOT_STARTED | — |
| 9 | Macro, SoloQ/SWF, game sense, états de partie, endgame | NOT_STARTED | — |
| 10 | Compétitif approfondi / VOD | BLOCKED (accès) | — |
| 11 | Erreurs, arbres de décision, drills, programme, métriques | NOT_STARTED | — |
| 12 | Triangulation + freshness (sortie 10.2.0) | NOT_STARTED | — |
| 13-15 | Audits couverture / adversariaux ×2 / praticité | NOT_STARTED | — |
| 16-17 | Réécriture + fact-check final | NOT_STARTED | — |

(Cette table est mise à jour à la fin de chaque session ; voir `kb/ledgers/CHANGELOG.md`.)
