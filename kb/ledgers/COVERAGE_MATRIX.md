# COVERAGE_MATRIX

Profondeur : 0 absent · 1 mentionné · 2 décrit (QUOI) · 3 expliqué (POURQUOI/QUAND) · 4 expert (WHAT → WHY → WHEN → HOW → COUNTER → FAILURE → DRILL).
« Profondeur seed » = guide d'origine (audit phase 0). « Profondeur KB » = état de la base `kb/`.
Statuts (mission §46) : NOT_STARTED · INVENTORIED · RESEARCHING · PARTIALLY_VERIFIED · VERIFIED · WRITTEN · AUDITED · COMPLETE · BLOCKED · UNCERTAIN. **Aucun domaine n'est COMPLETE.**

Dernière mise à jour : 27/09/2026 (fin de session lots 2-4).

## 1. Matrice d'audit

| Domaine (taxonomie) | Prof. seed | Prof. KB | Vérifié | Priorité | Statut | Où |
|---|---:|---:|:-:|:-:|---|---|
| Registre de version / fraîcheur (T-U01) | 2 | 3 | ✓ | P0 | VERIFIED | manifeste, audit p.7-12 |
| Objectifs, gens (T-A01-02) | 3 | 3 | ◐ | P0 | PARTIALLY_VERIFIED | audit p.33 |
| Crochets, phases, anti-camp (T-A03, A09) | 3 | 3 | ✓ | P0 | VERIFIED (mécanique) | audit p.34 |
| Protections de décrochage (T-A08) | 2 | 3 | ✓ | P0 | VERIFIED (mécanique) | audit p.35 |
| État mourant, slug, abandon (T-A06-07) | 2 | 3 | ✓ | P1 | VERIFIED (mécanique) | audit p.35 |
| Soins (T-A05) | 2 | 2 | ◐ | P1 | PARTIALLY_VERIFIED (CONFLICT-001) | audit p.36 |
| Glossaire des statuts (T-A10) | 1 | 3 | ◐ | P1 | PARTIALLY_VERIFIED | audit p.36-37 |
| Signaux d'information (T-A11) | 1 | 2 | ◐ | P1 | PARTIALLY_VERIFIED | audit p.31-32 |
| Objets de carte, EGC, trappe (T-A12, O01-03) | 2 | 2 | ✓ | P1 | PARTIALLY_VERIFIED | audit p.37 |
| Économie, offrandes, MMR (T-A13) | 2 | 2 | ✓ | P0 | VERIFIED (reset MMR UNCERTAIN) | audit p.38 |
| Diminishing Returns (T-A14) | 2 | 2 | ✓ | P0 | PARTIALLY_VERIFIED (liste non publiée) | audit p.28-29, 33 |
| Vitesses, attaque (T-B01-02) | 2 | 2 | ✓ | P1 | PARTIALLY_VERIFIED | audit p.28-29 |
| Hitbox, latence (T-B03) | 1 | 1 | ◐ | P1 | RESEARCHING | audit p.29 |
| Vaults, palettes, bloodlust, chase (T-B04-07) | 2 | 2 | ✓ | P1 | VERIFIED (valeurs) | audit p.30-32 |
| Respect / greed / pre-drop (T-B08) | 2 | 2 | 0 | P1 | INVENTORIED | lot 6 |
| Red stain, moonwalk, caméra, checkspots (T-B09-11) | 1 | 1 | 0 | P1 | NOT_STARTED | lot 6 |
| Son / animation, mindgames (T-B12-13) | 1-2 | 1 | 0 | P1 | NOT_STARTED | lot 6 |
| Collision, body block (T-B15) | 1 | 1 | 0 | P2 | NOT_STARTED | lot 5-6 |
| Théorie des loops (T-C01, C10) | 2 | 2 | 0 | P1 | INVENTORIED | lot 7 |
| Catalogue de tiles (T-C02-09) | 2 | 2 | 0 | P1 | INVENTORIED | lot 7 |
| Matrice tile × tueur (T-C11) | 0 | 1 | 0 | P1 | RESEARCHING (indices dans lot 4) | lot 4 → 7 |
| Connectivité (T-D) | 1 | 1 | 0 | P1 | NOT_STARTED | lot 7 |
| Inventaire des cartes (T-E01) | 3 | 3 | ✓ | P2 | VERIFIED | audit |
| Fixe vs RNG (T-E02) | 1 | 1 | 0 | P0 | INVENTORIED | lot 8 |
| Dimensions stratégiques par carte (T-E03-07) | 0,9 | 0,9 | 0 | P1 | INVENTORIED | lot 8 |
| Fiches tueurs, volet survivant (T-F01-44) | ~1 | voir lot 4 | ◐ | P1 | RESEARCHING → voir §3 | `batch4_*` |
| Typologie / identification avant reveal (T-F45-46) | 0 | voir lot 4 | ◐ | P1 | RESEARCHING | `batch4_*` |
| Perks survivant (T-G01-03) | ≤2 | voir lot 2 | ◐ | P1 | RESEARCHING → voir §3 | `batch2_*` |
| Builds survivant (T-G04) | 2-3 | 2 | 0 | P1 | INVENTORIED | à faire après lot 2 |
| Perks tueur vue survivant (T-H01-02) | 0-1 | voir lot 3 | ◐ | P1 | RESEARCHING → voir §3 | `batch3_*` |
| Perk deduction (T-H03-04) | 0 | voir lot 3 | ◐ | P1 | RESEARCHING | `batch3_*`, `kb/deliverables/PERK_DEDUCTION.md` |
| Objets et add-ons (T-I01-08) | 2 | 2 | ◐ | P2 | PARTIALLY_VERIFIED | lot 5 |
| Techniques de save / sabo (T-I10) | 1 | 1 | 0 | P1 | NOT_STARTED | lot 5 |
| Macro survivant (T-J) | 2-3 | 2 | 0 | P1 | INVENTORIED | lot 9 |
| SoloQ (T-K01-02) | 1 | 1 | 0 | P1 | NOT_STARTED | lot 9 |
| SWF et callouts (T-K03-04) | 1-2 | 1 | 0 | P2 | INVENTORIED | lot 9 |
| Chase theory avancée (T-L) | 2 | 2 | 0 | P1 | NOT_STARTED | lot 6/9 |
| Game sense (T-M) | 1 | 1 | 0 | P1 | NOT_STARTED | lot 9 |
| États de partie (T-N) | 1-2 | 1 | 0 | P1 | NOT_STARTED | lot 9 |
| Fin de partie (T-O) | 2 | 2 | ◐ | P1 | PARTIALLY_VERIFIED | lot 9 |
| Base d'erreurs (T-P) | 0 | 0 | 0 | P1 | NOT_STARTED | lot 11 |
| Arbres de décision (T-Q) | 0 | 0 | 0 | P1 | NOT_STARTED | lot 11 |
| Drills, programme, métriques (T-R) | 0 | 0 | 0 | P1 | NOT_STARTED | lot 11 |
| Compétitif vs public (T-S) | 0 | 2 | ◐ | P2 | PARTIALLY_VERIFIED / BLOCKED (VOD) | audit p.42-44 |
| Littératie des données (T-T) | 0 | 2 | ✓ | P0 | VERIFIED (diagnostic) | audit p.39-42 |
| Audio, réglages, réseau (T-U02-03) | 1 | 1 | 0 | P3 | NOT_STARTED | — |
| Psychologie (T-U04) | 2 | 2 | 0 | P3 | INVENTORIED | — |
| Côté tueur (T-V) | 2-3 | 2 | 0 | P3 | INVENTORIED | — |
| Sources et traçabilité (T-W03) | — | 2 | ◐ | P0 | RESEARCHING | `SOURCE_LEDGER.md` |

## 2. Matrice de pipeline (mission §24)

✓ fait · ◐ partiel · ✗ non commencé.

| Sujet | Inventorié | Recherché | Source primaire | Sources secondaires | Vérifié | Intégré (guide réécrit) |
|---|:-:|:-:|:-:|:-:|:-:|:-:|
| État du jeu / patchs 9.0.0 → PTB 10.2.0 | ✓ | ✓ | ✓ | ✓ | ✓ | ✗ |
| Mécaniques de base | ✓ | ✓ | ◐ | ✓ | ◐ | ✗ |
| Objectifs, crochets, soins, statuts, EGC | ✓ | ✓ | ✓ | ✓ | ◐ | ✗ |
| Statistiques | ✓ | ✓ | ✓ | ✓ | ✓ | ✗ |
| Compétitif | ✓ | ◐ | ◐ | ◐ | ◐ | ✗ |
| Perks survivant (176) | ✓ | voir §3 | ✗ (accès) | ◐ | ◐ | ✗ |
| Perks tueur (145) | ✓ | voir §3 | ✗ (accès) | ◐ | ◐ | ✗ |
| Tueurs (44) | ✓ | voir §3 | ✗ (accès) | ◐ | ◐ | ✗ |
| Objets / add-ons / offrandes | ✓ | ◐ | ◐ | ◐ | ◐ | ✗ |
| Cartes et tiles | ✓ | ◐ | ◐ | ◐ | ✗ | ◐ (atlas seed) |
| Techniques de chase | ✓ | ✗ | ✗ | ✗ | ✗ | ✗ |
| Macro, SoloQ/SWF, game sense, états | ✓ | ✗ | ✗ | ✗ | ✗ | ✗ |
| Erreurs, arbres, drills, programme, métriques | ✓ | ✗ | ✗ | ✗ | ✗ | ✗ |

## 3. Détail des lots 2-4 et brouillons (27/09/2026)

| Domaine | Inventaire | Fiches écrites | Vérifiées web (résumé) | Via audit | UNCERTAIN | Prof. KB | Statut |
|---|---:|---:|---:|---:|---:|---:|---|
| Perks survivant (T-G01-03) | 176 | 176 | 106 | 1 | 69 | 3 | PARTIALLY_VERIFIED |
| Perks tueur vue survivant (T-H01-02) | 145 | 145 | 42 | 17 (partiel) | 86 | 3 | PARTIALLY_VERIFIED |
| Perk deduction (T-H03-04) | — | livrable (≈115 signaux, 30 règles, drills) | — | — | — | 3-4 | WRITTEN |
| Builds (T-G04) | 12 archétypes | dans PERK_DATABASE §5 | — | — | — | 2-3 | WRITTEN (HEURISTIC) |
| Tueurs, volet survivant (T-F01-44) | 44 | 44 | 0 | 62 claims | la plupart des valeurs | 3 (analyse) / 1 (valeurs) | WRITTEN, non vérifié |
| Typologie + tile × archétype (T-F45, T-C11) | — | handbook §2-3 | 0 | — | — | 2-3 | WRITTEN (HEURISTIC) |
| Techniques de chase + chase theory (T-B08-15, T-L) | — | batch6 | 0 | valeurs audit | — | 3 | WRITTEN (brouillon) |
| Macro, SoloQ/SWF, game sense, états, endgame (T-J, K, M, N, O) | — | batch9 | 0 | valeurs audit | — | 3 | WRITTEN (brouillon) |
| Erreurs, arbres, drills, programme, métriques (T-P, Q, R) | — | batch11 (50 erreurs, 20 drills, 19 métriques) | 0 | valeurs audit | — | 3 | WRITTEN (brouillon) |

Détail et erreurs du seed : `kb/ledgers/BATCH_2_4_SYNTHESIS.md`. Aucun de ces domaines n'est AUDITED (audits adversariaux §25-26 à faire).
