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

## Prochaine session — lot exact à lancer

1. **Vérifier d'abord l'état du jeu** : 10.2.0 est-il sorti en LIVE ? (1re requête de la file P0-A de `BATCH_2_4_SYNTHESIS.md` §5.) Si oui : mettre à jour le registre de version, puis traiter les 58 perks modifiées en priorité.
2. **Lot 12a — re-vérification** : dérouler la file de `BATCH_2_4_SYNTHESIS.md` §5 dans l'ordre (P0-A notes de patch → P0-B valeurs décisionnelles et erreurs suspectes → P1 perks méta → P2), en mettant à jour les fiches `batch*` concernées (remplacer « NON RE-VÉRIFIÉ » par la valeur + confiance) et les livrables. Budget : ≤ 180 recherches (quota 200/session). **Ne pas lancer plus de 3-4 agents web en parallèle** : ils partagent le quota.
3. Si l'accès web complet est rétabli (domaines autorisés), relire les pages wiki.gg / notes officielles au lieu des résumés et relever la confiance.
4. Puis lot 5 (objets/add-ons/offrandes/techniques de save), lot 7 (tiles), lot 8 (cartes), en appliquant `TODO_RESEARCH.md`.
5. Audits adversariaux (§25-26) sur les brouillons des lots 6, 9, 11.
