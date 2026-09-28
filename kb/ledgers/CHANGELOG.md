# CHANGELOG du projet (livrable §51-9 pour la partie « différences avec le PDF seed » : voir aussi `OUTDATED_CONTENT_REPORT.md`)

## 2026-09-26 — Guide seed
- `DBD_Guide_Avance_2026.pdf` (140 p., 20 chapitres) : guide d'origine, revendique le patch 10.1.2a.

## 2026-09-27 — Phase 0 (session app)
- PASS 0-2 + lot 1 : audit intégral du seed, taxonomie (23 familles, ~200 nœuds), matrice de couverture, gap analysis, registre de l'état du jeu 9.0.0 → PTB 10.2.0, mécaniques vérifiées, sources statistiques, compétitif.
- Sortie : `DBD_Rapport_Audit_Phase0.pdf` (50 p.). Les fichiers de travail de cette session (`research/`, `ledgers/`, `audit/pass0_*.md`) **n'ont pas été versionnés** et sont perdus ; seul le PDF subsiste.
- Lots 2-4 lancés puis échoués (voir `last_result.md`).

## 2026-09-27 — Session cloud « lots 2-4 »
- **Infrastructure** : dossier `kb/` versionné (manifeste, registres reconstruits depuis le rapport PDF, textes extraits du seed et de l'audit dans `kb/seed/`, brief commun des agents, script `kb/tools/summarize_batches.py`).
- **Contrainte découverte** : seul `WebSearch` fonctionne (WebFetch/curl refusés par la politique réseau pour wiki.gg, forums BHVR, Steam, fandom, reddit, nightlight…) et le **quota de 200 recherches par session** a été atteint pendant les lots 2-3. Le lot 4 et une partie des lots 2-3 n'ont donc pas de vérification web.
- **Lot 2** (176 perks survivant) : 176 fiches multi-dimensions ; 106 vérifiées via résumé de recherche (STRONG_SECONDARY au mieux), 1 via audit, 69 non re-vérifiées (UNCERTAIN).
- **Lot 3** (145 perks tueur, vue survivant) : 145 fiches (indice observable, soupçon, confirmation, adaptation robuste, counterplay) ; 42 vérifiées web, 17 en partie via audit, 86 non re-vérifiées.
- **Lot 4** (44 tueurs, vue survivant) : 44 fiches rédigées ; 0 vérification web ; 62 claims confirmés via l'audit.
- **Livrables** : `kb/deliverables/PERK_DEDUCTION.md`, `PERK_DATABASE.md`, `KILLER_COUNTERPLAY_HANDBOOK.md`.
- **Brouillons sans web** (statut WRITTEN, non audités) : lot 6 techniques de chase, lot 9 macro / SoloQ-SWF / états de partie, lot 11 erreurs / arbres / drills / programme / métriques.
- **Synthèse** : `kb/ledgers/BATCH_2_4_SYNTHESIS.md` (erreurs du seed classées PROUVÉ / PROBABLE / SUSPECT, 58 conflits, questions ouvertes, **file de re-vérification de 180 requêtes**).
- Correction : le verdict « FAUX » sur Eruption (fiche Nemesis, lot 4) a été ramené à « conflit non tranché ».

## 2026-09-27 — même session, suite
- PR ouverte : https://github.com/Tsunahhh/dbd_guide/pull/1
- **Audits adversariaux §25-26** (sans web) avec corrections appliquées : lot 6 (36 problèmes, 31 corrigés), lot 9 (43/37), lot 11 (54/51), livrables (53/48). Principaux correctifs : condition de loop sûre (comparer des temps, pas des distances) ; modèle de greed requalifié HYPOTHESIS ; pré-drop contre Blight (tokens de Rush 9.6.0), Mastermind, Lich, Brutal Strength, Fire Up ; définition de « gens restants » et 3-gen ; récupération au sol « à l'arrêt » ; arbre crochet (bande 10-16 m) ; étiquettes surestimées corrigées. Rapports : `kb/audit/pass14_*.md`.
- **Nouveaux livrables** (consolidés depuis les brouillons audités) : `QUICK_REFERENCE.md`, `DECISION_TREES.md` (9 arbres), `TRAINING_PROGRAM.md` (10 niveaux, 33 drills, 19 métriques).

## 2026-09-27 (soir) → 28/09 — accès web complet, re-vérification, guide v2
- Environnement passé en accès réseau complet : `curl` vers le wiki (API MediaWiki) et les notes officielles BHVR fonctionne (WebFetch toujours bloqué). **39 notes officielles** archivées (`kb/sources/patches/`), **327 pages de perks** et **46 pages de tueurs** extraites en entier.
- **Re-vérification complète** : 321 perks et 44 tueurs re-vérifiés sur pages complètes + notes officielles ; nombreux verdicts du lot 2-4 corrigés ; **errata de l'audit de phase 0** (`AUDIT_PHASE0_ERRATA.md` : Eruption 10 % LIVE, Good Guy / Mastermind / Lich / Knight, 7 hachettes, Anti-Exhaustion Syringe…) ; piège du digest PTB documenté.
- **Lots 5 (objets), 7 (tiles), 8 (44 cartes)** écrits et audités ; audits adversariaux des 44 fiches tueurs ; questions mécaniques tranchées (2 soigneurs en 1v4, rampement 0,7 m/s, temps de remplissage Resolve, Hillbilly casse sans add-on…) dans `batch12_mechanics_open.md`.
- Livrables re-vérifiés : PERK_DATABASE v2, PERK_DEDUCTION v2, KILLER_COUNTERPLAY_HANDBOOK v2 ; nouveau MAP_LOOP_HANDBOOK (= ch. 4 + 5).
- **Master guide v2** : 15 chapitres (`kb/guide/`), fact-check final (pass17), audit de couverture (pass13 : 44/44 tueurs, 44/44 cartes, 176/176 + 145/145 perks), audit de profondeur/praticité (pass15) ; PDF `DBD_Guide_Expert_v2.pdf`.
- Registres finaux : OUTDATED_CONTENT_REPORT partie B (59 erreurs du seed prouvées, 42 points où le seed avait raison), OPEN_QUESTIONS (117 ouvertes), CONFLICT_REGISTER (85/113 résolus), SOURCE_LEDGER, COVERAGE_MATRIX finale.

## Prochaine session — travail exact à lancer

1. **Vérifier si 10.2.0 est sorti** (article officiel > 559 sur forums.bhvr.com, wiki « Patch 10.2.0 »). Si oui : archiver la note, relancer `python3 kb/tools/wiki_scrape.py perks > kb/sources/wiki_perks.json`, mettre à jour les 58 perks, Abandon/Surrender/End Trial, Survivor Intent System dans les fiches puis le guide (§15.8), rebâtir le PDF.
2. Traiter les questions encore ouvertes de `OPEN_QUESTIONS.md` partie B et les conflits ouverts de `CONFLICT_REGISTER.md` (priorité : ceux qui changent une décision survivant).
3. Chercher des sources expertes écrites et des VOD avec transcript (si l'accès le permet) pour transformer des [HEURISTIQUE] en [AVIS D'EXPERT] sourcés ; lot 10 (compétitif) quand dbdleague.com répond.
