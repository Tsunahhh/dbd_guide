# COVERAGE_MATRIX — état final après ré-audit de la taxonomie

- **Date** : 28/09/2026. **Référence de jeu** : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 (15-21/09/2026) **non LIVE** ; 2v8 hors périmètre.
- **Statut global du projet : NOT READY** (mission §47). 43 nœuds sur 245 sont COMPLETE ; les autres sont bloqués par un plafond de vérification (heuristiques sans VOD ni source experte), une valeur non publiée ou un ajout non encore contrôlé.
- **Remplace** la version du 27/09/2026 (fin des lots 2-4), qui affichait encore NOT_STARTED pour la chase, les tiles, la macro et les arbres.

## 0. Méthode du ré-audit (mission §3, §24, §46 ; condition 1 du §47)

1. **Taxonomie de référence** : les 205 nœuds T-A01 … T-W04 de la phase 0 (`kb/seed/audit_phase0.txt`, pages 15-19), familles A à W (mission §3-18).
2. **Localisation** de chaque nœud dans le guide final `kb/guide/01…15_*.md` (titres de sections, recherche de termes par script), puis dans les livrables `kb/deliverables/` et les fiches `kb/research/batch*.md`.
3. **Vérification** : niveau de confiance repris des fiches et du guide, avec les registres `CANONICAL_FACTS.md`, `AUDIT_PHASE0_ERRATA.md`, `OPEN_QUESTIONS.md` (partie B, 117 questions) et `CONFLICT_REGISTER.md`.
4. **Audits pris en compte** : P13 (couverture scriptée, `kb/audit/pass13_coverage.md`) ; P14 (audits adversariaux §25-26 des lots 4, 5, 6, 7, 8, 9, 11 et des livrables, 434 problèmes relevés, faits **sans web**) ; P15 (profondeur §27 et praticité, `pass15_depth_practicality.md`, 28/09) ; P17 (fact-check final des chapitres 1 à 14, `pass17_A…D.md`). **Le chapitre 15 n'a été audité par aucune passe.**
5. **Contrôles faits pendant ce ré-audit** (28/09) : (a) les 327 pages de perks de `kb/sources/wiki_perks.json` correspondent aux 321 perks inventoriées plus 6 perks inutilisées du code (UNUSED) : l'inventaire des perks est complet par rapport au wiki ; (b) les 44 fiches tueurs des ch. 7-8 contiennent désormais les rubriques « Implications de carte » et « Perks / synergies » (l'écart de 32 fiches relevé par P13 est comblé), mais The Animatronic et The First n'ont pas de rubrique « Tiles » et The Good Guy garde un format divergent ; (c) les mentions périmées de Knock Out (effet d'aura retiré en 8.6.0), des « 3 soigneurs » et du rampement ne figurent plus dans le guide.
6. **Ajouts postérieurs aux audits** : les commits du 28/09 (`b8e6821`, `a528b71`, `281ae32`, `d0e84dd`) ont ajouté des rubriques de fiches tueurs, des tables « passer à la pratique » (ch. 2, 3, 4, 6, 11, 13, 14) et la section 1.10. Aucun ne contient de valeur nouvelle, mais aucun n'a été relu par une passe indépendante. Les nœuds concernés sont donc au plus AUDITED.

### Légendes

**Profondeur** (dans le guide, pas dans les fiches de recherche) : 0 absent · 1 mentionné · 2 décrit (QUOI) · 3 expliqué (POURQUOI / QUAND) · 4 expert (QUOI → POURQUOI → QUAND → COMMENT → CONTRE → CAS D'ÉCHEC → EXERCICE). « inv. » = nœud d'inventaire, jugé sur l'exhaustivité.

**Vérification** (faits centraux du nœud) : **VP** note officielle BHVR · **VM** wiki complet + note concordants · **SS** page wiki complète seule · **CALC** calcul sur des valeurs vérifiées · **HEURISTIQUE** raisonnement de jeu tiré de faits vérifiés, sans source experte ni VOD · **HYPOTHÈSE** modèle non mesuré · **INCERTAIN** valeur absente ou sources contradictoires.

**Statuts §46**, attribués par ces règles :

| Statut | Règle appliquée |
|---|---|
| **COMPLETE** | Recherché (fiche `batch*` ou lot 1/12) **+** vérifié (faits centraux VP, VM ou SS sans conflit ouvert qui change une décision) **+** intégré (profondeur ≥ 3, ou inventaire exhaustif) **+** audité (P14, P15 ou P17 sur le texte actuel). Un nœud **surtout heuristique** ne peut pas être COMPLETE : sans VOD ni source experte, il n'est pas vérifiable (§39-41). |
| **AUDITED** | Intégré et audité, mais une condition de COMPLETE manque : heuristique sans source, valeur centrale INC, profondeur ≤ 2, ou texte ajouté après l'audit. |
| **WRITTEN** | Intégré au guide, jamais audité (chapitre 15, section 1.10). |
| **VERIFIED** | Vérifié, pas intégré au guide. |
| **UNCERTAIN** | Le cœur du nœud reste non tranché après recherche. |
| **BLOCKED** | Le cœur du nœud dépend d'une source inaccessible (manuel en jeu, DBDLeague, VOD, infographies) ou d'un événement futur. |
| **INVENTORIED / NOT_STARTED** | Listé sans recherche / rien. |

Aucun nœud n'est RESEARCHING ni PARTIALLY_VERIFIED : les lots de recherche sont clos, et leurs résultats sont intégrés au guide.

## 1. Matrice par domaine

« dont (+) » = nœuds découverts pendant le projet et ajoutés par ce ré-audit.

| Famille | Nœuds (dont +) | Prof. | Vérif. dominante | COMPLETE | AUDITED | Autres | Statut du domaine | Chapitres | Audits |
|---|---:|:-:|---|---:|---:|---|---|---|---|
| A. Fondamentaux | 21 (7) | 1-4 | VP/VM | 10 | 7 | 3 UNCERTAIN, 1 BLOCKED | AUDITED (mécanique vérifiée ; DR et Elusive ouverts) | 2, 6 | P17 A, C ; lot 12 |
| B. Mouvement et chase | 18 (3) | 3-4 | SS + HEURISTIQUE | 3 | 15 | — | AUDITED | 3 | P14 lot 6 ; P17 B |
| C. Loops et tiles | 17 (6) | 3-4 | SS + HEURISTIQUE | 4 | 13 | — | AUDITED | 3, 4 | P14 lot 7 ; P17 B |
| D. Connectivité | 4 (0) | 3-4 | HEURISTIQUE | 0 | 4 | — | AUDITED | 4 | P14 lot 7 ; P17 B |
| E. Cartes | 12 (4) | 2-3 | SS | 4 | 8 | — | AUDITED (inventaire COMPLETE) | 5 | P13 ; P14 lot 8 ; P17 C |
| F. Tueurs | 46 (0) | 3-4 | SS/VM + HEURISTIQUE | 1 | 45 | — | AUDITED (ajouts du 28/09 à contrôler) | 7, 8 | P13 ; P14 lot 4 + livrables ; P17 D |
| G. Perks survivant | 6 (1) | inv.-4 | VMS/SS | 2 | 2 | 1 UNCERTAIN, 1 VERIFIED | AUDITED (inventaire COMPLETE) | 9 | P13 ; P14 livrables (PDB v1) ; P17 D |
| H. Perks tueur et déduction | 5 (1) | inv.-4 | VMS/SS + HEURISTIQUE | 2 | 3 | — | AUDITED (inventaire COMPLETE) | 10 | P13 ; P14 livrables ; P17 D |
| I. Objets et techniques | 12 (2) | 2-4 | SS/VM | 4 | 8 | — | AUDITED | 11 | P14 lot 5 ; P17 C |
| J. Macro | 12 (0) | 3-4 | VP + HEURISTIQUE | 1 | 11 | — | AUDITED | 2, 6, 13 | P14 lot 9 ; P17 C |
| K. SoloQ / SWF | 4 (0) | 2-4 | HEURISTIQUE | 0 | 4 | — | AUDITED | 6, 12 | P14 lot 9 ; P17 A, C |
| L. Chase theory | 9 (1) | 3-4 | CALC + HYPOTHÈSE | 2 | 7 | — | AUDITED | 3 | P14 lot 6 ; P17 B |
| M. Game sense | 8 (0) | 3 | HEURISTIQUE | 0 | 8 | — | AUDITED | 6 | P14 lot 9 ; P17 C |
| N. États de partie | 14 (0) | 3 | HEURISTIQUE | 0 | 14 | — | AUDITED | 6 | P14 lot 9 ; P15 ; P17 C |
| O. Fin de partie | 5 (0) | 3-4 | VP/VM + HEURISTIQUE | 2 | 3 | — | AUDITED | 2, 6, 9, 13 | P14 lot 9 ; P17 C |
| P. Base d'erreurs | 4 (0) | 4 | HEURISTIQUE | 0 | 4 | — | AUDITED | 13 | P14 lot 11 ; P17 B |
| Q. Arbres de décision | 9 (2) | 3-4 | CALC + HEURISTIQUE | 0 | 9 | — | AUDITED | 13 | P14 lot 11 + livrables ; P17 B |
| R. Entraînement | 5 (1) | 3-4 | HEURISTIQUE | 0 | 5 | — | AUDITED | 14 | P14 lot 11 ; P17 C |
| S. Compétitif | 4 (0) | 2-3 | INCERTAIN | 0 | 1 | 3 BLOCKED | BLOCKED | 12 | P17 A |
| T. Littératie des données | 4 (0) | 3 | VP + méthode | 4 | 0 | — | COMPLETE | 12, 15 | P17 A |
| U. Méta-savoir | 9 (4) | 1-4 | VP | 3 | 3 | 2 WRITTEN, 1 NOT_STARTED | AUDITED (réglages absents) | 1, 3, 14, 15 | P17 A, B |
| V. Côté tueur | 5 (0) | 2 | HEURISTIQUE | 0 | 5 | — | AUDITED (secondaire, P3) | 2, 3, 6, 10, 12 | indirects |
| W. Annexes et traçabilité | 8 (4) | 3-4 | VP | 1 | 1 | 6 WRITTEN | WRITTEN | 1, 15 | ch. 15 non audité |
| X. (+) PTB 10.2.0 et contenu annoncé | 4 (4) | 1-3 | VP (PTB) | 0 | 2 | 1 BLOCKED, 1 INVENTORIED | BLOCKED (sortie non confirmée) | 1, 2, 6, 9, 10, 15 | P17 A, D |
| **Total** | **245 (40)** | | | **43** | **182** | 8 WRITTEN · 5 BLOCKED · 4 UNCERTAIN · 1 VERIFIED · 1 INVENTORIED · 1 NOT_STARTED | **NOT READY** | | |

**Comptes par statut** (245 nœuds) :

| Statut | Taxonomie phase 0 (205) | Nœuds ajoutés (40) | Total |
|---|---:|---:|---:|
| COMPLETE | 32 | 11 | **43** |
| AUDITED | 164 | 18 | **182** |
| WRITTEN | 4 | 4 | **8** |
| BLOCKED | 3 | 2 | **5** |
| UNCERTAIN | 1 | 3 | **4** |
| VERIFIED | 0 | 1 | **1** |
| INVENTORIED | 0 | 1 | **1** |
| NOT_STARTED | 1 | 0 | **1** |
| RESEARCHING / PARTIALLY_VERIFIED | 0 | 0 | 0 |

Lecture : 225 nœuds sur 245 (92 %) sont intégrés **et** audités (COMPLETE + AUDITED). Les 182 AUDITED se répartissent ainsi : (1) 44 fiches tueurs, qui ont reçu des ajouts après le fact-check ; (2) 101 nœuds surtout heuristiques ou modélisés, qu'aucune VOD ni source experte n'a pu valider ; (3) 37 nœuds bloqués par une valeur centrale non publiée ou contradictoire (fente, abaissement de palette, Bloodlust, Elusive, trappe, Mori de fin…), une profondeur ≤ 2 ou une valeur PTB non encore LIVE.

## 2. Matrice de pipeline (mission §24)

✓ fait · ◐ partiel · ✗ non fait · — sans objet. « Source primaire » = notes officielles BHVR (39 archivées dans `kb/sources/patches/`) ; « Secondaires » = wiki.gg complet (API), fandom en second avis, résumés WebSearch (1re passe, jamais seuls pour une valeur finale).

| Domaine | Inventorié | Recherché | Source primaire | Secondaires | Vérifié | Intégré au guide | Audité | Fichiers de recherche |
|---|:-:|:-:|:-:|:-:|:-:|:-:|:-:|---|
| État du jeu, patchs 9.0.0 → 10.1.2a | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ (ch. 1, 15) | ✓ (P17 A ; ch. 15 ✗) | phase 0 ; `SOURCE_LEDGER.md` |
| PTB 10.2.0 (58 perks, SIS, Abandon) | ✓ | ✓ | ✓ (note 559) | ✓ | ◐ (PTB seulement ; sortie LIVE non vérifiée) | ✓ (étiqueté PTB) | ✓ (P17 A, D) | `batch2_*`, `batch3_*`, PDB §1.4 |
| Fondamentaux (objectifs, gens, crochets, soins, sol, statuts, signaux, objets de carte) | ✓ | ✓ | ✓ | ✓ | ◐ (Elusive, trappe, portées : INC) | ✓ (ch. 2) | ✓ (P17 A) | phase 0 ; `batch12_mechanics_open.md` |
| Diminishing Returns | ✓ | ✓ | ✓ (règles) | ✓ | ◐ (liste itemisée : manuel en jeu) | ✓ (ch. 2, 9, 10, 11) | ✓ | `batch12` Q7 |
| Économie hors partie | ✓ | ◐ (prestige non recherché) | ✓ | ✓ | ◐ (reset MMR) | ◐ | ✓ | phase 0 |
| Mouvement et chase (T01-T23) | ✓ | ✓ | ◐ (Hit Validation, patchs) | ✓ | ◐ (fente, abaissement, Bloodlust, fin de poursuite) | ✓ (ch. 3) | ✓ (P14 lot 6, P17 B) | `batch6_chase_tech.md`, `batch12` |
| Chase theory en secondes | ✓ | ✓ | — (calculs) | — | ◐ (paramètres de modèle) | ✓ (ch. 3 §3.8) | ✓ | `batch6` |
| Loops et tiles | ✓ | ✓ | ◐ (passes 9.2.0-9.3.2) | ✓ | ◐ (hiérarchies [AVIS D'EXPERT], exclusivités) | ✓ (ch. 4) | ✓ (P14 lot 7, P17 B) | `batch7_tiles.md` |
| Connectivité | ✓ | ✓ | — | ◐ | ◐ (heuristique) | ✓ (ch. 4 §4.6-4.7) | ✓ | `batch7` |
| Cartes (44) | ✓ | ✓ | ◐ (historique) | ✓ (28 pages) | ◐ (palettes après 9.3.2, portes, 4 fiches minces, 3 non mesurées) | ✓ (ch. 5) | ✓ (P13, P14 lot 8, P17 C) | `batch8_maps.md` |
| Tueurs (44) | ✓ | ✓ | ◐ (changements de patch) | ✓ (44 pages) | ✓ valeurs / ◐ counterplay (heuristique) | ✓ (ch. 7-8) | ◐ (ajouts du 28/09 non relus) | `batch4_killers_g1…g6.md`, KCH v2 |
| Perks survivant (176) | ✓ | ✓ | ◐ (81 + 2 partielles) | ✓ (176 pages) | ✓ (0 effet principal INC ; 23 détails U) | ◐ (89 en une ligne) | ✓ (P13, P17 D ; pas d'audit dédié des fiches) | `batch2_perks_surv_p23…p30.md`, PDB v2 |
| Perks tueur (145) et déduction | ✓ | ✓ | ◐ (63) | ✓ (145 pages) | ✓ (10 détails U) | ◐ (68 en une ligne) | ✓ (P13, P14 livrables, P17 D) | `batch3_perks_kill_p90…p96.md`, `PERK_DEDUCTION.md` |
| Objets, add-ons, offrandes, techniques | ✓ | ✓ | ◐ (9.1.0, 9.3.0, 9.5.0) | ✓ | ◐ (ramassage, coffres, cumuls) | ✓ (ch. 11) | ✓ (P14 lot 5, P15, P17 C) | `batch5_items.md` |
| Macro, SoloQ / SWF, game sense, états, fin de partie | ✓ | ✓ | ◐ (valeurs) | ◐ | ◐ (heuristique ; HUD, trappe, Mori de fin INC) | ✓ (ch. 6) | ✓ (P14 lot 9, P15, P17 C) | `batch9_macro.md` |
| Erreurs, arbres de décision | ✓ | ✓ | — | — | ◐ (heuristique, non validée) | ✓ (ch. 13) | ✓ (P14 lot 11, P15, P17 B) | `batch11_training.md`, `DECISION_TREES.md` |
| Drills, programme, métriques, revue | ✓ | ✓ | — | — | ◐ (seuils non validés) | ✓ (ch. 14) | ✓ (P14 lot 11, P15, P17 C) | `batch11`, `TRAINING_PROGRAM.md` |
| Compétitif | ✓ | ◐ | ✗ (DBDL refusé) | ◐ | ✗ | ◐ (ch. 12, mince) | ✓ (P17 A) | phase 0 p. 42-44 ; lot 10 **BLOCKED** |
| Littératie des données | ✓ | ✓ | ✓ (textes BHVR) / ✗ (infographies) | ✗ (NightLight 403) | ✓ (méthode) | ✓ (ch. 12 §12.8) | ✓ (P17 A) | phase 0 p. 39-42 |
| Réglages, réseau, psychologie | ✓ | ✗ (sauf Hit Validation) | ◐ | ✗ | ✗ | ◐ (fragments ch. 1, 3, 14) | ◐ | — |
| Côté tueur (secondaire) | ✓ | ◐ (indirect) | — | — | ◐ | ◐ (fragments) | ◐ | — |
| Annexes, errata, registres | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ (ch. 15) | ✗ (ch. 15 non audité) | `kb/ledgers/*` |
## 3. Matrice par nœud T-xxx (taxonomie de phase 0 + nœuds découverts)

Colonnes : **Où** = chapitre et section du guide `kb/guide/` (« ch. 2 §2.3 ») puis, s'il y a lieu, livrable ; **Prof.** = profondeur dans le guide (0-4 ; « inv. » = nœud d'inventaire, jugé sur l'exhaustivité) ; **Vérif.** = niveau dominant des faits centraux ; **Statut** = §46 selon les règles ci-dessus ; **Réserve** = ce qui empêche COMPLETE (renvoi `OPEN_QUESTIONS.md` partie B « Bn-q » ou `CONFLICT_REGISTER.md`). Les nœuds ajoutés par ce ré-audit sont marqués **(+)**.

### A. Fondamentaux

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-A01 | Objectifs et conditions de victoire | ch. 2 §2.1 ; §2.11.3 (MMR) | 3 | VP | COMPLETE | Emblèmes seulement cités |
| T-A02 | Générateurs (débit, skill checks, régression, plafond, blocage, 3-gen) | ch. 2 §2.2 ; ch. 6 §6.2 ; ch. 10 §10.2 ; ch. 13 arbre 5 | 4 | VP/VM | COMPLETE | — |
| T-A03 | Crochets et phases (lutte, auto-décrochage, sous-sol, sabotage, réapparition) | ch. 2 §2.3.1-2.3.4 ; ch. 6 §6.3 | 4 | VP/VM (réapparition 60 s, sous-sol : SS) | COMPLETE | Crochets Fléau vus du survivant : B6-56 (côté H) |
| T-A04 | Sacrifice, mori, abandon | ch. 2 §2.3.1, §2.3.5, §2.6.2 | 3 | VP | AUDITED | Condition du Mori de fin INC (B4-33) ; refonte Abandon = PTB (T-X02) |
| T-A05 | Soins | ch. 2 §2.5 ; ch. 6 §6.5 ; ch. 11 §11.3 ; ch. 13 arbre 4 | 4 | VM (2 soigneurs max en 1v4, 16 s) | COMPLETE | Soin au kit 1,5 état (L5-06), impact faible |
| T-A06 | État mourant (bleed-out, 95 %, rampement, relevage, wiggle) | ch. 2 §2.6.1, §2.6.3 ; ch. 6 §6.4 | 4 | VM (relevage : SS calc.) | COMPLETE | Durée du ramassage INC (B4-29) : traitée en T-I03 / T-I10 |
| T-A07 | Slugging | ch. 2 §2.6 ; ch. 6 §6.4 ; ch. 9 §9.3.7 ; ch. 13 arbre 7 | 4 | VM + HEURISTIQUE | COMPLETE | Knock Out corrigé dans le guide (P17) ; reste périmé dans `kb/research/batch9_macro.md` l. 280, 396 |
| T-A08 | Protections de décrochage (Endurance / Haste / Elusive 10.1.0) | ch. 2 §2.4 ; ch. 6 §6.3 | 4 | VP (note 556) / INC | AUDITED | « Ce qui les annule » : Elusive et action voyante non tranché (T-A15) |
| T-A09 | Anti-camp (Resolve) | ch. 2 §2.3.3 ; ch. 6 §6.4 ; ch. 13 | 4 | VP (règles) / SS (temps calculés ±10 %) | COMPLETE | Effet des autres survivants proches (B4-28), secondaire |
| T-A10 | Glossaire des statuts | ch. 2 §2.7 ; ch. 15 §15.2 | 3 | SS/VM | COMPLETE | Interactions DR par statut : T-A14c |
| T-A11 | Signaux d'information (TR, berceuse, chase, tache, griffures, sang, grognements, bruit, corbeaux, auras) | ch. 2 §2.9 ; ch. 3 T07, T08, T16 | 4 | SS/VP / INC (portées) | AUDITED | Portée des grognements, durée des flaques (B3-22) ; HUD (B4-38) |
| T-A12 | Objets de carte (casiers, coffres, totems, portes, trappe, EGC) | ch. 2 §2.10 ; ch. 11 §11.10 | 3 | SS/VP | AUDITED | Conditions de spawn de la trappe (B4-31) |
| T-A13 | Économie hors partie (BP, offrandes, MMR, prestige, loadouts) | ch. 2 §2.11 | 2 | VP/SS | AUDITED | **Prestige absent du guide** ; reset MMR 10.1.0 sans source primaire (G04) |
| T-A14 | Diminishing Returns (nœud parent) | ch. 2 §2.8 ; ch. 9 §9.2 ; ch. 10 §10.2 ; ch. 11 §11.1 | 3 | VP (règles) / INC (liste) | AUDITED | Détaillé en A14a-A14d |
| T-A14a (+) | DR : règles publiées (100/50/25/12,5/5 %, add-ons exclus, règle de rôle ; skill check, Haste de perks, vitesse de vault soumis) | ch. 2 §2.8.1-2.8.3 | 3 | VP (notes 544, 559) | COMPLETE | — |
| T-A14b (+) | DR : liste itemisée des modificateurs (manuel en jeu 9.6.1) | ch. 2 §2.8.4 (dite inconnue) | 1 | INCERTAIN | BLOCKED | Manuel en jeu illisible sans client (B2-8) |
| T-A14c (+) | DR × perks (couples réduits, blocages, pertes instantanées) | ch. 9 §9.2.2 ; ch. 10 §10.2 | 2 | INCERTAIN | UNCERTAIN | B2-9 à B2-13 ; 26 perks « ajustées pour les DR » au PTB non listées (B1-6) |
| T-A14d (+) | DR × objets et effets de base (Endurance, Haste de décrochage, boost au coup) | ch. 11 §11.1 ; ch. 2 §2.8.4 | 2 | VP (add-ons exclus) / INC | UNCERTAIN | B2-10, B2-14 |
| T-A15 (+) | Elusive (statut 10.1.0 : effets, ce qui le fait perdre) | ch. 2 §2.4, §2.7 ; ch. 3 §3.8.8 ; ch. 6 §6.3, §6.13 | 3 | VP (existence, 10 s) / INC | UNCERTAIN | CONFLICT-L12-04 : wiki Hooks ≠ wiki Elusive, note 556 muette (B4-26, B4-27) |
| T-A16 (+) | Heresy / Exile (The Judgment) | ch. 2 §2.4.5, §2.7.3 ; ch. 8 §44 ; ch. 6 §6.10 | 3 | SS/VM | AUDITED | Repent, autres effets de l'Heresy (B7-82) |
| T-A17 (+) | Match Details : visibilité des loadouts (9.6.0) | ch. 2 §2.11.4 ; ch. 6 §6.7 ; ch. 10 §10.1 ; ch. 11 §11.1 | 3 | VP | COMPLETE | Erreur du seed corrigée (loadout du tueur jamais révélé en partie) ; lobby avant verrouillage (B4-39) secondaire |

### B. Mouvement et mécaniques de chase

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-B01 | Vitesses (survivant, tueurs, portage, Haste / Hindered) | ch. 3 §3.1, T01 ; ch. 6 §6.1 | 4 | VM/SS | COMPLETE | Plafond de Haste : preuve par absence (B3-23) |
| T-B02 | Attaque du tueur (fente, cooldowns, boost au coup) | ch. 3 §3.1, T02 | 3 | SS (durées) / INC (distance) | AUDITED | Distance de fente non publiée (B3-15) ; distances sûres données en fourchette |
| T-B03 | Hitbox, hurtbox, latence | ch. 3 T21 | 3 | VP (Hit Validation) / INC (hitbox) | AUDITED | Forme et taille des hitbox, seuil de validation (B3-15) : tests |
| T-B04 | Vaults (fast / medium / slow, tueur, blocage) | ch. 3 T03 ; ch. 2 §2.10.7 | 4 | SS/VM | COMPLETE | Angle maximal du fast vault (B3-17) |
| T-B05 | Palettes (drop, stun, casse, vault) | ch. 3 §3.1, T04 | 4 | SS / INC (abaissement) | AUDITED | Durée d'abaissement et fenêtre de stun (B3-16) |
| T-B06 | Bloodlust | ch. 3 T06 | 4 | SS | AUDITED | Perte sur stun, aveuglement, casse de mur INC (B3-18) |
| T-B07 | Chase : début, fin, ligne de vue | ch. 3 T07 | 4 | SS / INC | AUDITED | Temporisation de fin de poursuite (B3-19) |
| T-B08 | Respect / greed / pre-drop | ch. 3 T05 ; ch. 4 §4.5.3 ; ch. 13 arbre 1 | 4 | HEURISTIQUE (sur CALC) | AUDITED | Modèle de greed = HYPOTHÈSE ; aucune VOD ni source experte |
| T-B09 | Red stain et moonwalk | ch. 3 T08 | 4 | SS + HEURISTIQUE | AUDITED | Tache vers le bas (B3-21) |
| T-B10 | Double-back, cornering, hugging, pathing | ch. 3 T09, T11, T12-T13 | 4 | HEURISTIQUE | AUDITED | Plafond heuristique (pas de VOD) |
| T-B11 | Caméra et checkspots | ch. 3 T14 ; ch. 14 DR-01, DR-02 | 4 | HEURISTIQUE | AUDITED | idem |
| T-B12 | Lecture d'animation et de son | ch. 3 T15, T16 | 4 | SS + HEURISTIQUE | AUDITED | Portées sonores INC (B3-22) |
| T-B13 | Fake vault / fake pallet / mindgames | ch. 3 T10, T17 | 4 | HEURISTIQUE | AUDITED | Plafond heuristique |
| T-B14 | Gestion de distance et de ressources | ch. 3 T18, T19, §3.2 | 4 | HEURISTIQUE + CALC | AUDITED | idem |
| T-B15 | Collision, body block, protection hit | ch. 3 T20 ; ch. 11 T4, T5 | 4 | SS + HEURISTIQUE | AUDITED | Règles de collision non publiées |
| T-B16 (+) | Le « 360 » | ch. 3 T22 | 4 | SS (fente, cooldown) + HEURISTIQUE | AUDITED | Vitesse de rotation du tueur INC |
| T-B17 (+) | Pre-run et début de chase | ch. 3 T23 | 4 | HEURISTIQUE | AUDITED | Plafond heuristique |
| T-B18 (+) | Calculateur distance / temps (rattrapage, gains par interaction) | ch. 3 §3.2 ; ch. 13 §13.1.3 | 4 | CALC sur VM/SS | COMPLETE | Hérite de l'INC de la distance de fente (affichée) |

### C. Théorie des loops et catalogue de tiles

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-C01 | Modèle de la loop | ch. 4 §4.2 | 4 | CALC sur SS/VP | COMPLETE | `T_loop` par tile non mesuré (B11-112), sans effet sur le modèle |
| T-C02 | Killer Shack | ch. 4 §4.4.1 | 4 | SS + HEURISTIQUE | AUDITED | Disposition par royaume (B9-96) ; pas de VOD |
| T-C03 | Jungle gyms (long / short wall, impostor) | ch. 4 §4.4.2-4.4.3 | 4 | SS + HEURISTIQUE | AUDITED | « LW > SW » = [AVIS D'EXPERT] non sourcé (B9-98) |
| T-C04 | T-L walls | ch. 4 §4.4.4 | 4 | SS + HEURISTIQUE | AUDITED | « T > L » invérifiable |
| T-C05 | Four-lane | ch. 4 §4.4.5 | 4 | SS + HEURISTIQUE | AUDITED | Exclusivités par royaume (CONFLICT-L7-01) |
| T-C06 | Pallet / debris / locker / labyrinth / variant gyms, double window, edge tiles | ch. 4 §4.4.6-4.4.7, §4.4.9 | 3 | SS + HEURISTIQUE | AUDITED | Gyms rares sans exercice dédié |
| T-C07 | Fillers (arbre + rocher, voitures, foin, troncs, maïs) | ch. 4 §4.4.8, §4.4.12 | 4 | SS + HEURISTIQUE | AUDITED | Maïs : [AVIS D'EXPERT] |
| T-C08 | Main buildings | ch. 4 §4.4.10 ; ch. 5 fiches | 3 | SS + HEURISTIQUE | AUDITED | Mains par carte inégalement documentés |
| T-C09 | Structures uniques par royaume | ch. 4 §4.4.12 ; ch. 5 §5.4 | 3 | SS | AUDITED | Loops des cartes intérieures (B9-97) |
| T-C10 | Force d'une tile (god / safe / pseudo / unsafe) | ch. 4 §4.3, §4.4.13 | 4 | CALC + HEURISTIQUE | AUDITED | Plafond heuristique |
| T-C11 | Matrice tile × type de tueur | ch. 4 §4.5.1 ; ch. 7 (matrice 1-22) ; KCH §3 | 3 | HEURISTIQUE sur VM | AUDITED | idem |
| T-C12 (+) | Condition de loop sûre en TEMPS, porte comprise | ch. 3 §3.2 ; ch. 4 §4.2.2 | 4 | CALC sur SS | COMPLETE | Erreur des brouillons corrigée (P14 lot 6, P03), contrôlée (P17 B) |
| T-C13 (+) | Casse / contournement de palette par pouvoir | ch. 3 §3.1 ; ch. 4 §4.5.2 ; ch. 7-8 ; `CANONICAL_FACTS.md` | 3 | VP/VM/SS | AUDITED | The First + Shattered Wrist Rocket INC ; Blight à ≤ 3 tokens (CONFLICT-B4G3-04) |
| T-C14 (+) | Pre-drop non universel (3 cas : casse coûteuse, gratuite, contournée) | ch. 3 T05 ; ch. 4 §4.5.3 | 4 | HEURISTIQUE sur VP | AUDITED | Dépend de T-C13 |
| T-C15 (+) | Murs cassables | ch. 4 §4.4.11 ; ch. 5 §5.3.7 | 3 | SS + CALC | COMPLETE | — |
| T-C16 (+) | Densité et sécurité des palettes 9.2.0 → 9.3.2 | ch. 4 §4.1.4 ; ch. 5 §5.5.2 | 3 | VP | AUDITED | Nombre de palettes par carte après 9.3.2 inconnu (B9-95) |
| T-C17 (+) | Aucune loop infinie (blocage Entity 3 vaults / 30 s) | ch. 4 §4.1.2 | 3 | SS/VP | COMPLETE | Compteur et vaults moyens / lents (B3-17), secondaire |

### D. Connectivité des tiles

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-D01 | Chaînes de tiles, routes (5-15 s d'avance) | ch. 4 §4.6.1-4.6.3 | 4 | HEURISTIQUE | AUDITED | Plafond heuristique |
| T-D02 | Dead zones et zones consommées | ch. 4 §4.3.1 ; ch. 6 §6.9 | 3 | CALC + HEURISTIQUE | AUDITED | Palettes / totems qui réapparaissent (B4-37) |
| T-D03 | Transitions | ch. 4 §4.6.4 ; ch. 13 arbre 2 | 4 | HEURISTIQUE | AUDITED | Plafond heuristique |
| T-D04 | Exemples commentés « Tile A → B → main → filler » | ch. 4 §4.7 | 4 | HEURISTIQUE | AUDITED | idem |

### E. Connaissance des cartes

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-E01 | Inventaire royaumes / cartes | ch. 5 §5.2 | inv. | SS/VP | COMPLETE | 44/44 (P13) |
| T-E02 | Fixe vs RNG | ch. 5 §5.1, fiches « Fixe / RNG » ; ch. 4 §4.1.3 | 3 | SS | AUDITED | Exclusivités (L7-01) ; positions des portes (B9-102) |
| T-E03 | Architecture et landmarks | ch. 5 §5.4 | 3 | SS | AUDITED | 4 fiches peu documentées (Rotten Fields, Dead Sands, Freddy Fazbear's Pizza, Fallen Refuge) ; RPD E/W et Trickster's Delusion non mesurées (B9-100, 101) |
| T-E04 | Zones fortes / faibles / dead zones | fiches ch. 5 | 2 | HEURISTIQUE / AVIS non sourcé | AUDITED | 7 fiches citent un [AVIS D'EXPERT] non sourcé |
| T-E05 | Gens, clusters, portes | ch. 5 §5.8 (table A) ; fiches | 2 | SS / INC | AUDITED | Portes documentées pour 3 cartes seulement (B9-102) |
| T-E06 | Tueurs favorisés / défavorisés | fiches « Archétypes » ; ch. 5 §5.3.2 | 2 | HYPOTHÈSE | AUDITED | Aucun kill rate par carte lu (B10-107) |
| T-E07 | Stratégie début / milieu / fin par carte | fiches « Plan » ; ch. 5 §5.3.6 | 2 | HEURISTIQUE | AUDITED | Plusieurs fiches renvoient au cadre général faute de source |
| T-E08 | Historique des cartes par patch | ch. 5 §5.5 | 3 | VP | COMPLETE | Attribution 9.2.0 de 2 cartes (CONFLICT-B8-02), secondaire |
| T-E09 (+) | Cartes retirées, variantes, 2v8 | ch. 5 §5.2.3-5.2.5 | 3 | VP/SS | COMPLETE | — |
| T-E10 (+) | Sélection des cartes et offrandes de royaume (fréquences) | ch. 5 §5.2.6, §5.6.3 ; ch. 11 §11.9 | 3 | VP | COMPLETE | — |
| T-E11 (+) | Signaux sonores de carte | ch. 5 §5.6.4 | 3 | SS / INC | AUDITED | Portées audibles (B9-103) |
| T-E12 (+) | Hauteur des murs de gyms par royaume | ch. 5 §5.3.3 | 2 | SS / INC | AUDITED | CONFLICT-B8-07 |

### F. Tueurs : connaissance pour le survivant

Commun aux 44 fiches : valeurs re-vérifiées sur page wiki complète (SS) et notes officielles pour les changements de patch (VM/VP) ; counterplay [HEURISTIQUE] (aucune VOD, aucun guide expert). Auditées : P14 lot 4 (g1-g3 : 69 pb / 64 corrigés ; g4-g6 : 68 / 64), audit du handbook (P14 livrables), re-vérification 12b, P17 D. **Toutes les fiches sont AUDITED et aucune n'est COMPLETE** : les rubriques « Implications de carte » et « Perks / synergies » (écart relevé par P13 sur 32 fiches) ont été ajoutées aux 44 fiches le 28/09/2026 (commits `b8e6821`, `a528b71`), puis « Quand le counterplay habituel échoue » aux fiches 31, 32, 36, 37, 41 (commit `d0e84dd`, après P15) : ces ajouts sont postérieurs au fact-check P17 D et restent à contrôler (§4, R-08). Profondeur 4 = toutes les rubriques du §8 de la mission présentes (contrôle par script de ce ré-audit) ; 3 = une rubrique manque.

| ID | Tueur | Où | Prof. | Vérif. | Statut | Réserve propre |
|---|---|---|---|---|---|---|
| T-F01 | The Trapper | ch. 7 §1 | 4 | SS/VM + HEUR | AUDITED | — |
| T-F02 | The Wraith | ch. 7 §2 | 4 | SS/VM + HEUR | AUDITED | — |
| T-F03 | The Hillbilly | ch. 7 §3 | 4 | VP/SS + HEUR | AUDITED | Casse ~1 s de base tranchée (note 538) |
| T-F04 | The Nurse | ch. 7 §4 | 4 | SS/VM + HEUR | AUDITED | Vault de fenêtre INC (B7-69) |
| T-F05 | The Shape | ch. 7 §5 | 4 | VM + HEUR | AUDITED | Fréquence depuis le retrait boutique (B7-85) |
| T-F06 | The Hag | ch. 7 §6 | 4 | SS + HEUR | AUDITED | — |
| T-F07 | The Doctor | ch. 7 §7 | 4 | SS + HEUR | AUDITED | Calm Spirit et cris de Madness (B6-62) |
| T-F08 | The Huntress | ch. 7 §8 | 4 | SS/VM + HEUR | AUDITED | 7 hachettes (seed confirmé) |
| T-F09 | The Cannibal | ch. 7 §9 | 4 | SS + HEUR | AUDITED | — |
| T-F10 | The Nightmare | ch. 7 §10 | 4 | SS + HEUR | AUDITED | Alarm Clocks visibles dès le début ? (B7-72) |
| T-F11 | The Pig | ch. 7 §11 | 4 | SS + HEUR | AUDITED | TR 24 m : wiki seul (B7-70) |
| T-F12 | The Clown | ch. 7 §12 | 4 | SS + HEUR | AUDITED | — |
| T-F13 | The Spirit | ch. 7 §13 | 4 | SS + HEUR | AUDITED | — |
| T-F14 | The Legion | ch. 7 §14 | 4 | SS/VM + HEUR | AUDITED | Deep Wound et Feral Slash (B7-71) |
| T-F15 | The Plague | ch. 7 §15 | 4 | SS + HEUR | AUDITED | Iron Will et vomissements (B7-72) |
| T-F16 | The Ghost Face | ch. 7 §16 | 4 | SS + HEUR | AUDITED | TR 24 m : note 8.6.0 non archivée (B7-77) |
| T-F17 | The Demogorgon | ch. 7 §17 | 4 | SS + HEUR | AUDITED | Undetectable des add-ons (CONFLICT-B4G3-07) |
| T-F18 | The Oni | ch. 7 §18 | 4 | SS + HEUR | AUDITED | Délai sans orbes 10 ou 15 s (CONFLICT-B4G3-05) |
| T-F19 | The Deathslinger | ch. 7 §19 | 4 | SS + HEUR | AUDITED | Palette contre le harpon (B3-25) |
| T-F20 | The Executioner | ch. 7 §20 | 4 | SS + HEUR | AUDITED | Portée avec Iridescent Seal (B7-75) |
| T-F21 | The Blight | ch. 7 §21 | 4 | VM + HEUR | AUDITED | Tokens perdus à ≤ 3 tokens (CONFLICT-B4G3-04) ; TR 40 m SS (B7-77) |
| T-F22 | The Twins | ch. 7 §22 | 4 | SS + HEUR | AUDITED | Victor et Unbreakable (B7-76) |
| T-F23 | The Trickster | ch. 8 §23 | 4 | SS/VM + HEUR | AUDITED | Palette contre les lames (B7-79) |
| T-F24 | The Nemesis | ch. 8 §24 | 4 | SS/VM + HEUR | AUDITED | — |
| T-F25 | The Cenobite | ch. 8 §25 | 4 | SS + HEUR | AUDITED | Page wiki sans copie locale ; survivant enchaîné et vault (B7-78) |
| T-F26 | The Artist | ch. 8 §26 | 4 | SS + HEUR | AUDITED | — |
| T-F27 | The Onryō | ch. 8 §27 | 4 | SS + HEUR | AUDITED | TV / cassette (B7-79) |
| T-F28 | The Dredge | ch. 8 §28 | 4 | SS + HEUR | AUDITED | — |
| T-F29 | The Mastermind | ch. 8 §29 | 4 | VM + HEUR | AUDITED | −0,5 s par infecté après 9.6.0 ? (B7-80) |
| T-F30 | The Knight | ch. 8 §30 | 4 | VP/SS + HEUR | AUDITED | Tiles où le détour dépasse 48 m (B7-80) |
| T-F31 | The Skull Merchant | ch. 8 §31 | 4 | SS + HEUR | AUDITED | Perks enseignables affichées en PTB sur le wiki (B1-7) ; retrait de Claw Trap (B7-81) |
| T-F32 | The Singularity | ch. 8 §32 | 4 | SS + HEUR | AUDITED | Perks enseignables : B1-7 |
| T-F33 | The Xenomorph | ch. 8 §33 | 4 | SS + HEUR | AUDITED | Queue et palettes (B7-81) ; B1-7 |
| T-F34 | The Good Guy | ch. 8 §34 | 3 | VP/SS + HEUR | AUDITED | Casse seulement avec Hard Hat (errata) ; « Fenêtre à exploiter » au lieu de « Quand le counterplay échoue » (P15) ; B1-7 |
| T-F35 | The Unknown | ch. 8 §35 | 4 | SS + HEUR | AUDITED | Tirs en cloche en intérieur (B7-81) ; B1-7 |
| T-F36 | The Lich | ch. 8 §36 | 4 | SS + HEUR | AUDITED | Vorpal Sword 4 s (errata) ; B1-7 |
| T-F37 | The Dark Lord | ch. 8 §37 | 4 | SS + HEUR | AUDITED | B1-7 |
| T-F38 | The Houndmaster | ch. 8 §38 | 4 | SS + HEUR | AUDITED | Longueur max de Chase Command (B7-84) |
| T-F39 | The Ghoul | ch. 8 §39 | 4 | SS + HEUR | AUDITED | Franchit les palettes sans les casser (P17 B) |
| T-F40 | The Animatronic | ch. 8 §40 | 3 | SS + HEUR | AUDITED | Pas de rubrique « Tiles » dans le guide (P15) ; recharge de batterie (B7-84) |
| T-F41 | The Krasue | ch. 8 §41 | 4 | SS + HEUR | AUDITED | Ravenous : valeurs PTB à suivre |
| T-F42 | The First | ch. 8 §42 | 3 | SS + HEUR / INC | AUDITED | Pas de rubrique « Tiles » (P15) ; casse de palettes (Shattered Wrist Rocket) INC ; casier / Undergate, liane, tokens (B7-83) |
| T-F43 | The Slasher | ch. 8 §43 | 4 | VP/SS + HEUR | AUDITED | — |
| T-F44 | The Judgment | ch. 8 §44 | 4 | SS/VM + HEUR / INC | AUDITED | Repent, Heresy (B7-82) |
| T-F45 | Typologie transversale (M1, anti-loop, ranged, mobilité, furtif, zone, info, slug, coup unique) | ch. 7 « Typologie transversale » ; KCH §2 | 4 | HEURISTIQUE | AUDITED | Classement de rédacteur, non sourcé |
| T-F46 | Identification avant le reveal | ch. 7 « Identifier le tueur avant le reveal » ; ch. 8 rubriques « Identification » ; ch. 14 DR-06, M-16 | 4 | SS + HEURISTIQUE | COMPLETE | Spine Chill contre Undetectable (B7-69), secondaire |

### G. Perks survivant

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-G01 | Inventaire complet vérifié (176) | ch. 9 §9.7 ; `PERK_DATABASE.md` §1.1 | inv. | VM/SS | COMPLETE | P13 : 176/176. Contrôle de ce ré-audit (28/09) : les 327 pages de `kb/sources/wiki_perks.json` = 321 perks inventoriées (176 + 145) + 6 perks UNUSED du code (T-G06) |
| T-G02 | Fiche par perk (effet, valeurs, interactions, valeur par dimension) | ch. 9 §9.3 (≈ 87 perks développées) + §9.7 (89 en une ligne) ; fiches `batch2_*` ; PDB §2 | 3 | VP 1 · VMS 80 · SS 95 (23 avec détail U) | AUDITED | 89 perks n'ont qu'une ligne dans le guide ; pas d'audit adversarial dédié des fiches du lot 2 (PDB v1 audité, re-vérif. 12a, P17 D) |
| T-G03 | Impact des DR sur les perks | ch. 9 §9.2 | 2 | INCERTAIN | UNCERTAIN | = T-A14c |
| T-G04 | Archétypes de builds | ch. 9 §9.4-9.5 ; PDB §5 | 4 | HEURISTIQUE | AUDITED | 12 archétypes sur les 14 demandés : **stealth et anti-hex absents** (seulement les catégories §9.3.9-9.3.10) |
| T-G05 | Perks renommées / retirées / PTB | ch. 9 §9.6 ; ch. 1 §1.2.2 ; PDB §1.4-1.5 | 3 | VP | COMPLETE | Valeurs PTB à re-vérifier à la sortie (T-X01) |
| T-G06 (+) | Frontière d'inventaire : 6 perks UNUSED (Artefact Hunter, In the Dark, Last Standing, Overconfidence, Tough Runner, Underperform) | aucun (cette matrice) | 0 | SS | VERIFIED | Exclusion justifiée, à signaler en §9.7 / §15 |

### H. Perks tueur et déduction

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-H01 | Inventaire vérifié (145) | ch. 10 §10.10 ; PDB §1.1 | inv. | VM/SS | COMPLETE | P13 : 145/145 ; même contrôle wiki que T-G01 |
| T-H02 | Fiche orientée survivant (indice, soupçon, confirmation, adaptation) | ch. 10 §10.4 + §10.10 (68 en une ligne) ; fiches `batch3_*` | 3 | VP 2 · VMS 61 · SS 82 (10 avec détail U) | AUDITED | Même réserve que T-G02 |
| T-H03 | Perk deduction | ch. 10 §10.1, §10.3-10.5, §10.7-10.8 ; `PERK_DEDUCTION.md` | 4 | VP (loadout caché) / SS + HEURISTIQUE | AUDITED | Observables INC : crochets Fléau (B6-56), casiers et BBQ (B6-58), indices côté survivant (B6-60, 63, 65) |
| T-H04 | Combos courants et comment les casser | ch. 10 §10.6 | 4 | HEURISTIQUE sur VM | AUDITED | Fréquences d'usage non vérifiables (NightLight 403) |
| T-H05 (+) | Observabilité : ce qui se voit et ne se voit pas du loadout tueur | ch. 10 §10.1 | 3 | VP/SS | COMPLETE | — |

### I. Objets, add-ons, offrandes et techniques

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-I01 | Med-kits | ch. 11 §11.3 | 4 | SS/VM | COMPLETE | Kit 1,5 état (L5-06), faible |
| T-I02 | Toolboxes | ch. 11 §11.2 | 4 | SS | COMPLETE | Alex's Toolbox 18 / 24 (L5-02), faible |
| T-I03 | Flashlights | ch. 11 §11.4, T1 | 4 | SS | AUDITED | Durée du ramassage (B4-29, 30) : timing du flash save non chiffrable ; lampe × tueurs récents (B8-93) |
| T-I04 | Keys | ch. 11 §11.6, T8 | 3 | VM | AUDITED | Canalisation (B8-86) ; trappe avec clé (B4-31) |
| T-I05 | Maps | ch. 11 §11.7 | 2 | VM | AUDITED | Durées (B8-86) |
| T-I06 | Fog Vial | ch. 11 §11.5 | 3 | VM | COMPLETE | — |
| T-I07 | Autres objets (firecrackers, événement, limités) | ch. 11 §11.8 | 2 | SS | AUDITED | Light-Resistant (B8-91) |
| T-I08 | Add-ons importants et DR | ch. 11 §11.2-11.7 (add-ons), §11.1 | 3 | SS / VP (add-ons exclus des DR) | AUDITED | Cumul des add-ons (B8-88) |
| T-I09 | Offrandes | ch. 11 §11.9 ; ch. 2 §2.11.2 ; ch. 5 §5.6.3 | 3 | VP | COMPLETE | Cumul Luck (B8-90), faible |
| T-I10 | Techniques : flash save, pallet save, sabotage, body block, protection hit, casier, wiggle, trappe | ch. 11 §11.12 T1-T8 | 4 | SS + HEURISTIQUE | AUDITED | Ramassage et règles fines des sauvetages (B4-29, 30) |
| T-I11 (+) | Coffres, probabilités, Plunderer's | ch. 11 §11.10 ; ch. 2 §2.10.2 | 3 | SS / DATA HISTORICAL | AUDITED | Probabilités actuelles (L5-04), charges de fouille (L5-03) |
| T-I12 (+) | Rentabilité d'un objet en secondes-survivant | ch. 11 §11.11, §11.13 | 3 | CALC + HYPOTHÈSE | AUDITED | Lampe, Fog Vial, Map, Key non chiffrables |

### J. Macro survivant

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-J01 | Efficacité et dispersion des gens | ch. 6 §6.1-6.2 ; ch. 2 §2.2.1 | 4 | VP + CALC | COMPLETE | — |
| T-J02 | Configurations dangereuses (3-gen) | ch. 2 §2.2.4 ; ch. 6 §6.2 ; ch. 5 table A | 4 | CALC + HEURISTIQUE | AUDITED | Géométrie = [AVIS D'EXPERT] non sourcé |
| T-J03 | Répartition de l'équipe | ch. 6 §6.2 | 3 | HEURISTIQUE | AUDITED | Plafond heuristique |
| T-J04 | Pression et états de crochet | ch. 6 §6.3 | 3 | VP + HEURISTIQUE | AUDITED | idem |
| T-J05 | Trades, saves, timing de sauvetage | ch. 6 §6.3 ; ch. 13 arbre 3 | 4 | SS calc. + HEURISTIQUE | AUDITED | Délai de confirmation 15-20 s = valeur de rédacteur (B11-114) |
| T-J06 | Proxy camp, camp, tunnel, slug : réponses | ch. 6 §6.4 | 4 | VP/SS + HEURISTIQUE | AUDITED | Elusive (T-A15) |
| T-J07 | Reset, regroupement, split pressure | ch. 6 §6.5 | 3 | HEURISTIQUE | AUDITED | Plafond heuristique |
| T-J08 | Quand soigner / ne pas soigner | ch. 6 §6.5 ; ch. 13 arbre 4 | 4 | CALC + HYPOTHÈSE | AUDITED | Valeur d'un état de santé (B11-113) |
| T-J09 | Continuer / abandonner un gen | ch. 2 §2.2.5 ; ch. 6 §6.2 ; ch. 13 arbre 5 | 4 | CALC + HEURISTIQUE | AUDITED | Plafond heuristique |
| T-J10 | Économie de l'information | ch. 6 §6.6 ; ch. 3 §3.8.8 | 3 | SS + HEURISTIQUE | AUDITED | idem |
| T-J11 | Positionnement | ch. 6 §6.6 | 3 | HEURISTIQUE | AUDITED | idem |
| T-J12 | Gestion des portes et trappe | ch. 6 §6.11 ; ch. 13 arbres 8-9 | 4 | VP/SS + HEURISTIQUE | AUDITED | Trappe (B4-31) |

### K. SoloQ vs SWF

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-K01 | SoloQ : HUD, comportements probabilistes, communication indirecte, décisions robustes | ch. 6 §6.7 ; ch. 14 DR-16 | 4 | SS + HEURISTIQUE / INC (HUD) | AUDITED | Icônes du HUD (B4-38) ; fréquence des doubles sauveteurs (B11-114) |
| T-K02 | Survivor Intent System (**PTB 10.2.0, non LIVE**) | ch. 1 §1.2.1 ; ch. 6 §6.7 (encadré), §6.13 ; ch. 15 §15.3.2 | 2 | VP (note 559, PTB) | AUDITED | N'existe pas en LIVE ; §6.7 à réécrire s'il sort (voir famille X) |
| T-K03 | SWF : rôles, protocoles, suivi | ch. 6 §6.8 ; ch. 12 §12.7 | 3 | HEURISTIQUE | AUDITED | Plafond heuristique |
| T-K04 | Vocabulaire de callouts | ch. 6 §6.8 (grammaire, lexique FR / EN) ; ch. 12 §12.7 | 3 | HEURISTIQUE | AUDITED | idem |

### L. Chase theory avancée

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-L01 | Économie en secondes | ch. 3 §3.8.1 ; ch. 6 §6.1 ; ch. 13 §13.1.3 | 4 | VP + CALC | COMPLETE | — |
| T-L02 | EV d'une palette | ch. 3 §3.8.3 | 4 | CALC sur HYPOTHÈSE (`p*`) | AUDITED | Probabilité de coup non mesurée (B11-112) |
| T-L03 | Coût temporel pour le tueur (casse, stun, vault) | ch. 3 §3.8.2 | 3 | SS | COMPLETE | — |
| T-L04 | Coût d'une blessure | ch. 3 §3.8.4 | 3 | HYPOTHÈSE | AUDITED | B11-113 |
| T-L05 | Resource denial, zoning, forced path, option coverage | ch. 3 §3.8.5-3.8.7 | 3 | HEURISTIQUE | AUDITED | Plafond heuristique |
| T-L06 | Asymétrie d'information | ch. 3 §3.8.8 | 3 | SS + HEURISTIQUE | AUDITED | Portées sonores (B3-22) |
| T-L07 | Risk / reward, tempo, pressure conversion | ch. 3 §3.8.9-3.8.10 | 3 | CALC + HEURISTIQUE | AUDITED | Seuils de chase rentable = modèle (B11-112) |
| T-L08 | Engagement et abandon de chase | ch. 3 §3.8.11 | 3 | HEURISTIQUE | AUDITED | Plafond heuristique |
| T-L09 (+) | SoloQ vs SWF dans les calculs de chase | ch. 3 §3.8.12 ; ch. 4 §4.6.6 | 3 | HEURISTIQUE | AUDITED | Non mesuré (B11-114) |

### M. Game sense

Tous dans ch. 6 §6.9, audités (P14 lot 9 : 43 pb / 37 corrigés ; P17 C). Plafond : aucune VOD, aucune donnée de partie.

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-M01 | Prédire la position du tueur | ch. 6 §6.9 | 3 | HEURISTIQUE | AUDITED | Plafond heuristique |
| T-M02 | Prédire les coéquipiers | ch. 6 §6.9 | 3 | HEURISTIQUE | AUDITED | idem |
| T-M03 | Zones épuisées | ch. 6 §6.9 ; ch. 4 §4.3.1 | 3 | HEURISTIQUE | AUDITED | B4-37 |
| T-M04 | Estimer les gens | ch. 6 §6.9 ; ch. 14 DR-17 | 3 | HEURISTIQUE | AUDITED | idem |
| T-M05 | Lire les intentions et patterns | ch. 6 §6.9 | 3 | HEURISTIQUE | AUDITED | idem |
| T-M06 | Suivre perks et états de crochet | ch. 6 §6.9 ; ch. 10 ; ch. 14 DR-17 | 3 | HEURISTIQUE | AUDITED | idem |
| T-M07 | Reconnaître un snowball | ch. 6 §6.9 | 3 | HEURISTIQUE | AUDITED | idem |
| T-M08 | Décider avec information incomplète | ch. 6 §6.9 ; ch. 10 §10.7 | 3 | HEURISTIQUE | AUDITED | idem |

### N. États de partie

Tous dans la table de ch. 6 §6.10 (priorités, erreurs catastrophiques, SoloQ / SWF), avec renvois aux arbres du ch. 13. Faits cités VP ; priorités [HEURISTIQUE] ; « trois transitions décisives » = [AVIS D'EXPERT] non sourcé.

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-N01 | Début de partie | ch. 6 §6.10 ligne 1 | 3 | VP + HEURISTIQUE | AUDITED | Plafond heuristique |
| T-N02 | Premier contact | ch. 6 §6.10 ligne 2 | 3 | HEURISTIQUE | AUDITED | idem |
| T-N03 | Première chase | ch. 6 §6.10 ligne 3 | 3 | HEURISTIQUE | AUDITED | idem |
| T-N04 | Premier crochet | ch. 6 §6.10 ligne 4 ; ch. 13 arbre 3 | 3 | VP + HEURISTIQUE | AUDITED | idem |
| T-N05 | Milieu de partie | ch. 6 §6.10 ligne 5 | 3 | HEURISTIQUE | AUDITED | idem |
| T-N06 | 3 gens restants | ch. 6 §6.10 ligne 6 | 3 | HEURISTIQUE | AUDITED | idem |
| T-N07 | 2 gens restants | ch. 6 §6.10 ligne 7 | 3 | HEURISTIQUE | AUDITED | idem |
| T-N08 | 1 gen restant | ch. 6 §6.10 ligne 8 ; ch. 13 arbre 5 | 3 | HEURISTIQUE | AUDITED | idem |
| T-N09 | Portes alimentées | ch. 6 §6.10 ligne 9 ; ch. 13 arbre 8 | 3 | VP + HEURISTIQUE | AUDITED | idem |
| T-N10 | Endgame Collapse | ch. 6 §6.10 ligne 10 ; ch. 2 §2.10.6 | 3 | VP + HEURISTIQUE | AUDITED | idem |
| T-N11 | Survivant en dernière phase | ch. 6 §6.10 ligne 11 | 3 | HEURISTIQUE | AUDITED | idem |
| T-N12 | Plusieurs survivants au sol | ch. 6 §6.10 ligne 12 ; ch. 13 arbre 7 | 3 | VM + HEURISTIQUE | AUDITED | idem |
| T-N13 | Tueur sans pression | ch. 6 §6.10 ligne 13 | 3 | HEURISTIQUE | AUDITED | idem |
| T-N14 | Tueur avec forte pression | ch. 6 §6.10 ligne 14 | 3 | HEURISTIQUE | AUDITED | idem |

### O. Fin de partie

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-O01 | Portes (99, ouverture, gate camp) | ch. 2 §2.10.4 ; ch. 6 §6.11 ; ch. 13 arbre 8 | 4 | VP/SS + HEURISTIQUE | AUDITED | Progression d'une porte lâchée (B4-32) ; ouverture par le tueur (B4-35) |
| T-O02 | Trappe (spawn, standoff, clés) | ch. 2 §2.10.5 ; ch. 6 §6.11 ; ch. 11 T8 ; ch. 13 arbre 9 | 4 | SS / INC | AUDITED | Conditions de spawn, clé (B4-31) ; durée du saut (B4-29) |
| T-O03 | EGC (durée, ralentissement) | ch. 2 §2.10.6 ; ch. 6 §6.11 | 3 | VP | COMPLETE | — |
| T-O04 | Perks d'endgame (NOED, Remember Me, Blood Warden, Terminus, No Way Out) | ch. 9 §9.3.8 ; ch. 10 §10.5 phase D ; ch. 6 §6.11 | 4 | VM | COMPLETE | Off the Record portes alimentées : T-X / L2P23-04 (hors liste du nœud) |
| T-O05 | Fin à 2 survivants, fin à 1 | ch. 2 §2.3.5 ; ch. 6 §6.11-6.12 ; ch. 13 arbres 8-9 | 4 | VP + HEURISTIQUE / INC | AUDITED | Mori de fin (B4-33) ; gens requis après une mort (B4-32) |

### P. Base d'erreurs

51 erreurs au format Erreur → Pourquoi → Punition → Correction → Drill ; auditées (P14 lot 11 : 54 pb / 51 corrigés ; P17 B). Plafond : aucune validée sur des parties réelles.

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-P01 | Erreurs débutant | ch. 13 §13.3 | 4 | HEURISTIQUE (+ FACT cités) | AUDITED | Plafond heuristique |
| T-P02 | Erreurs intermédiaire | ch. 13 §13.4.1 | 4 | HEURISTIQUE | AUDITED | idem |
| T-P03 | Erreurs avancé | ch. 13 §13.4.2 | 4 | HEURISTIQUE | AUDITED | idem |
| T-P04 | Erreurs très avancé | ch. 13 §13.5 | 4 | HEURISTIQUE | AUDITED | idem |

### Q. Arbres de décision

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-Q01 | Palette | ch. 13 §13.8 ; `DECISION_TREES.md` | 4 | CALC + HEURISTIQUE | AUDITED | Seuils de rédacteur |
| T-Q02 | Crochet / sauvetage | ch. 13 §13.10 | 4 | SS calc. + HEURISTIQUE | AUDITED | Délai de confirmation INC (B11-114) |
| T-Q03 | Soin | ch. 13 §13.11 | 4 | CALC + HEURISTIQUE | AUDITED | B11-113 |
| T-Q04 | Gen (continuer / lâcher / 99) | ch. 13 §13.12 | 4 | CALC + HEURISTIQUE | AUDITED | `OPEN_QUESTIONS` B11-116 périmée (arbre rédigé) |
| T-Q05 | Totems | ch. 13 §13.13 | 3 | HEURISTIQUE | AUDITED | idem |
| T-Q06 | Fin de partie | ch. 13 §13.15 | 4 | VP + HEURISTIQUE | AUDITED | idem |
| T-Q07 | Slug | ch. 13 §13.14 | 4 | VM + HEURISTIQUE | AUDITED | idem |
| T-Q08 (+) | Quitter la tile | ch. 13 §13.9 | 4 | CALC + HEURISTIQUE | AUDITED | Plafond heuristique |
| T-Q09 (+) | Trappe (dernier survivant) | ch. 13 §13.16 | 4 | SS + HEURISTIQUE | AUDITED | B4-31 |

### R. Entraînement et mesure

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-R01 | Drills | ch. 14 §14.4 (33 DR / DC) ; exercices ch. 3-5 ; `TRAINING_PROGRAM.md` | 4 | HEURISTIQUE | AUDITED | Critères de réussite non validés (B11-115) |
| T-R02 | Programme progressif en 10 niveaux | ch. 14 §14.3 | 4 | HEURISTIQUE | AUDITED | Durées et seuils non validés |
| T-R03 | Métriques de progression (19) | ch. 14 §14.5 | 4 | HEURISTIQUE | AUDITED | Grille du « coup évitable » (B11-115) |
| T-R04 | Méthode de revue de parties | ch. 14 §14.6 | 4 | HEURISTIQUE | AUDITED | Plafond heuristique |
| T-R05 (+) | Organisation des sessions (semaine type, un objectif par session) | ch. 14 §14.2, §14.7 | 3 | HEURISTIQUE | AUDITED | idem |

### S. Compétitif vs matchmaking public

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-S01 | Écosystème (ligues, organisateurs, VODs) | ch. 12 §12.2 | 2 | INCERTAIN | BLOCKED | DBDLeague, Liquipedia, YouTube, Twitch refusés (B10-109, 110) |
| T-S02 | Règlements (bans, pools, scoring) | ch. 12 §12.3 | 2 | INCERTAIN | BLOCKED | Règlement DBDL non lu (B10-109) |
| T-S03 | Ce qui se transfère / ne se transfère pas | ch. 12 §12.5-12.6 | 3 | HYPOTHÈSE / AVIS non sourcé | AUDITED | Analyse construite sur règles non vérifiées |
| T-S04 | Méta compétitive vs méta publique | ch. 12 §12.4 | 2 | HEURISTIQUE sans données | BLOCKED | Aucune donnée de méta lue (NightLight 403, DBDL refusé) |

### T. Littératie des données

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-T01 | Sources (BHVR, NightLight…) et méthodes | ch. 12 §12.8 ; ch. 15 §15.6 | 3 | VP (textes BHVR) + méthode | COMPLETE | Les infographies restent illisibles : aucun chiffre enseigné (voulu) |
| T-T02 | Biais (sélection, MMR, plateforme, échantillon) | ch. 12 §12.8 | 3 | méthode | COMPLETE | — |
| T-T03 | Pick rate ≠ win rate, corrélation ≠ causalité | ch. 12 §12.8 | 3 | méthode | COMPLETE | — |
| T-T04 | Citer une statistique (période, population, n, plateforme) | ch. 12 §12.8 ; ch. 15 §15.6.4 | 3 | méthode | COMPLETE | — |

### U. Méta-savoir et environnement

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-U01 | Suivi des patchs (LIVE / PTB / HISTORICAL), lecture des notes | ch. 1 §1.1-1.4 ; ch. 15 §15.3, §15.8 | 4 | VP | COMPLETE | Périssable dès la sortie de 10.2.0 ; notes 8.x non archivées |
| T-U02 | Réglages audio / vidéo / accessibilité, casque, FOV | ch. 3 T16 (« casque » seulement) | 1 | — | NOT_STARTED | Aucune recherche |
| T-U03 | Réseau et latence (ping, région, serveurs) | ch. 3 T21 | 2 | VP (Hit Validation) | AUDITED | Ping, région, choix de serveur non recherchés |
| T-U04 | Psychologie, tilt, sessions, apprentissage | ch. 1 §1.7 ; ch. 14 §14.2, §14.5.6, §14.6.3, §14.7 | 2 | HEURISTIQUE | AUDITED | Tilt et gestion émotionnelle absents ; biais de résultat / rétrospectif et sessions présents |
| T-U05 | Historique des versions du guide (changelog) | ch. 1 §1.9 ; ch. 15 §15.4 ; `CHANGELOG.md` | 3 | VP | WRITTEN | §15.4 non audité ; `CHANGELOG.md` arrêté aux lots 2-4 |
| T-U06 (+) | Séparation LIVE / PTB / 2v8 | ch. 1 §1.6 ; ch. 15 §15.4.4 ; tous chapitres | 3 | VP | COMPLETE | Contrôlée par P17 (aucune valeur PTB / 2v8 donnée comme LIVE) |
| T-U07 (+) | Pièges du wiki pendant un PTB | ch. 1 §1.1 ; ch. 15 §15.6.2 ; `AUDIT_PHASE0_ERRATA.md` | 3 | VP | COMPLETE | — |
| T-U08 (+) | Étiquettes de nature et de confiance | ch. 1 §1.6 ; légendes ch. 9, 11, 13 | 3 | — | AUDITED | [AVIS D'EXPERT] défini de 3 façons (ch. 1 l. 221, ch. 9 l. 21, ch. 13 l. 24) et employé ≈ 25 fois sans source |
| T-U09 (+) | Les 13 questions de décision (mission §50) | ch. 1 §1.10 (ajoutée par P15) | 3 | — | WRITTEN | Écrite par l'audit P15 lui-même : non relue par une autre passe |

### V. Côté tueur (secondaire)

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-V01 | Pression et macro tueur | ch. 12 §12.5 (5) ; ch. 3 §3.8.10-3.8.11 ; ch. 5 §5.6.5 | 2 | HEURISTIQUE | AUDITED | Pas de fiche de recherche dédiée (périmètre P3) |
| T-V02 | Choix de cible, tunnel / slug raisonnés | ch. 6 §6.4 ; ch. 2 §2.11.1 (BP incitatifs) | 2 | VP + HEURISTIQUE | AUDITED | idem |
| T-V03 | 3-gen côté tueur | ch. 2 §2.2.4 ; ch. 6 §6.2 | 2 | HEURISTIQUE | AUDITED | idem |
| T-V04 | Builds tueur | ch. 10 §10.6 (combos, vue survivant) | 2 | HEURISTIQUE | AUDITED | idem |
| T-V05 | Mindgames tueur | ch. 3 T10, T17 | 2 | HEURISTIQUE | AUDITED | idem |

### W. Annexes et traçabilité

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-W01 | Glossaire FR / EN | ch. 15 §15.2 ; ch. 6 §6.8 (lexique) | 3 | SS | WRITTEN | Ch. 15 jamais audité |
| T-W02 | Tables de données | ch. 15 §15.1 ; `CANONICAL_FACTS.md` ; `QUICK_REFERENCE.md` | 3 | VP/VM | WRITTEN | idem |
| T-W03 | Sources | ch. 15 §15.6 ; `SOURCE_LEDGER.md` ; « Sources du chapitre » ×15 | 3 | VP | WRITTEN | Cenobite sans copie locale ; notes PTB 527 / 533 / 542 non archivées ; en-tête de `SOURCE_LEDGER_batches.md` périmé |
| T-W04 | Historique des patchs | ch. 1 §1.4 ; ch. 5 §5.5 ; ch. 15 §15.3 | 4 | VP | COMPLETE | §1.4 et §5.5 contrôlés (P17 A, C) |
| T-W05 (+) | Errata de l'audit phase 0 et erreurs prouvées du seed | ch. 1 §1.9 ; ch. 15 §15.4 ; `AUDIT_PHASE0_ERRATA.md` (8 lignes) ; `OUTDATED_CONTENT_REPORT.md` | 4 | VP/VM | AUDITED | §15.4 non audité |
| T-W06 (+) | Questions ouvertes et conflits | ch. 15 §15.5 ; `OPEN_QUESTIONS.md` (117) ; `CONFLICT_REGISTER.md` (26 + 4 ouverts) | 3 | — | WRITTEN | Note de §15.5 sur Five Moves Ahead périmée (`CANONICAL_FACTS.md` corrigé depuis) |
| T-W07 (+) | Statut du projet (Definition of Done §47) | ch. 15 §15.7 | 3 | — | WRITTEN | Condition 9 cite encore « 32 fiches sans rubriques » (comblé le 28/09) ; condition 1 à réviser avec cette matrice |
| T-W08 (+) | Maintenance (procédure 10.2.0, outils `kb/tools/`) | ch. 15 §15.8 | 3 | — | WRITTEN | Non audité |

### X. (+) Suivi du PTB 10.2.0 et du contenu annoncé (famille nouvelle)

Le Survivor Intent System reste compté une seule fois, en T-K02.

| ID | Nœud | Où | Prof. | Vérif. | Statut | Réserve |
|---|---|---|---|---|---|---|
| T-X01 (+) | 58 perks modifiées au PTB (31 survivant, 27 tueur) | ch. 1 §1.2.2 ; ch. 9 §9.6 ; ch. 10 §10.9 ; PDB §1.4 | 3 | VP (note 559) | AUDITED | Valeurs PTB, jamais LIVE : à confronter à la note de sortie |
| T-X02 (+) | Refonte Abandon / Surrender / End Trial | ch. 1 §1.2.1 ; ch. 2 §2.6.2 ; ch. 6 §6.4 | 2 | VP (PTB) | AUDITED | idem |
| T-X03 (+) | Sortie LIVE de 10.2.0 et écarts PTB → LIVE | ch. 15 §15.8.1 (procédure seulement) | 1 | — | BLOCKED | Non sortie au 27/09 (articles 560-565 introuvables) ; non re-vérifié le 28/09 |
| T-X04 (+) | Contenu annoncé non LIVE (Art the Clown, Frank Stone, carte The Mall) | ch. 15 §15.8.1 ; `pass13_coverage.md` | 1 | INCERTAIN | INVENTORIED | N'entre dans l'inventaire qu'à sa sortie LIVE |

## 4. Lacunes restantes (tâches de recherche)

Chaque tâche indique les nœuds débloqués, la méthode et les fichiers à mettre à jour. Priorité : **P0** = change une valeur LIVE ou un statut global ; **P1** = change une décision en partie ; **P2** = complétude ; **P3** = confort. Les renvois « Bn-q » pointent vers `kb/ledgers/OPEN_QUESTIONS.md` partie B.

### 4.1 Vérification et version (P0)

| ID | Tâche | Nœuds | Méthode / source | Mettre à jour |
|---|---|---|---|---|
| R-01 | Confirmer la sortie LIVE de 10.2.0 et archiver la note de sortie ; confronter chacune des 58 perks, le Survivor Intent System et la refonte Abandon / Surrender / End Trial à la note PTB 559 (section « Changes from PTB ») | T-X01-X03, T-K02, T-G05, T-U01, T-F31-F37, T-F41 | Index des articles BHVR (560 et suivants), puis `kb/tools/wiki_scrape.py` avec `UPCOMING` changé | fiches `batch2_*`, `batch3_*`, PDB, `CANONICAL_FACTS.md`, ch. 1, 2 §2.6.2, 6 §6.7, 9, 10, 15 |
| R-02 | Transcrire la liste itemisée des modificateurs soumis aux DR (manuel en jeu, 9.6.1) ; trancher blocages, pertes instantanées, Endurance, effets de base, couples de perks et objets | T-A14b-d, T-G03, T-I08 | Client du jeu (capture du manuel) ; B2-8 à B2-14 | ch. 2 §2.8, 9 §9.2, 10 §10.2, 11 §11.1 |
| R-03 | Fact-checker les ajouts postérieurs à P17 : rubriques « Implications de carte » et « Perks / synergies » des 44 fiches, « Quand le counterplay échoue » des fiches 31, 32, 36, 37, 41, tables « passer à la pratique » (ch. 2 §2.13, 3.0, 4.8, 6.6, 6.10, 8 intro, 9.5, 10.6, 11.0, 11.3, 13.7, 14.3) et section 1.10 | T-F01-F44, T-U09 et nœuds des ch. 2-14 | Passe P17 bis contre `batch4_killers_g*.md`, `CANONICAL_FACTS.md`, PDB v2 | ch. 1-14 ; `kb/audit/` |
| R-04 | Auditer le chapitre 15 (§25-26 + fact-check), jamais relu | T-W01-W03, T-W05-W08, T-U05 | Même grille que P17 | ch. 15 |

### 4.2 Valeurs non publiées : tests en Custom Game (P1)

| ID | Tâche | Nœuds | Méthode | Mettre à jour |
|---|---|---|---|---|
| R-05 | **Elusive de décrochage** et action voyante (CONFLICT-L12-04) ; Endurance de décrochage perdue en ouvrant une porte ; définition d'une « action voyante » | T-A15, T-A08, T-J06 | Test chronométré à 2 comptes ; B4-26, B4-27 | ch. 2 §2.4, 6 §6.3, `CONFLICT_REGISTER.md` |
| R-06 | Off the Record désactivée portes alimentées (CONFLICT-L2P23-04 = L12-05) | T-O04, T-G02 | Test en fin de partie ; B5-40 | ch. 6, 9, PDB |
| R-07 | Fente (distance), abaissement de palette et fenêtre de stun, Bloodlust perdue sur stun / aveuglement / casse de mur, temporisation de fin de poursuite, angle max du fast vault | T-B02, T-B05, T-B06, T-B07, T-B04, T-B18 | Enregistrement image par image ; B3-15 à B3-20 | ch. 3 §3.1-3.2, T02-T07 ; ch. 13 (distance sûre) |
| R-08 | Durée du ramassage d'un survivant au sol et du saut dans la trappe ; règles fines des sauvetages à la lampe | T-A06, T-I03, T-I10, T-O02 | Test ; B4-29, B4-30 | ch. 2 §2.6, 11 T1 |
| R-09 | Trappe : condition de spawn selon les gens, clé avant / après fermeture, plusieurs survivants ; progression d'une porte lâchée ; condition du Mori de fin ; gens requis après une mort | T-A04, T-A12, T-J12, T-O01, T-O02, T-O05, T-Q09 | Test + historique wiki ; B4-31 à B4-33 | ch. 2 §2.10, 6 §6.11, 13 arbres 8-9 |
| R-10 | Signaux : portée des grognements, durée des flaques, crochets Fléau visibles côté survivant, casiers contre BBQ / Discordance, icônes de statuts des perks tueur | T-A11, T-H03, T-L06 | Test à 2 comptes ; B3-22, B6-56, 58, 60, 63, 65 | ch. 2 §2.9, 10 §10.4 |
| R-11 | Blight : tokens perdus sur une casse à ≤ 3 tokens (note 9.6.2) ; The First : casse de palettes avec Shattered Wrist Rocket, casier contre l'Undergate, liane ; Judgment : Repent et Heresy | T-F21, T-F42, T-F44, T-C13, T-A16 | Test ou note de dev ; CONFLICT-B4G3-04, B7-82, B7-83 | ch. 7 §21, ch. 8 §42 et §44, ch. 3 §3.1, 4 §4.5.2 |
| R-12 | HUD SoloQ : icônes d'action des coéquipiers, compteur d'états de crochet, indicateur de poursuite, auras basekit des alliés au sol | T-K01, T-A11 | Captures d'écran commentées ; B4-38 | ch. 6 §6.7, 14 DR-16 |

### 4.3 Cartes et tiles (P1-P2)

| ID | Tâche | Nœuds | Méthode | Mettre à jour |
|---|---|---|---|---|
| R-13 | Compter les palettes par carte après 9.3.2 et relever les positions des portes (documentées pour 3 cartes seulement) | T-C16, T-E02, T-E05 | Custom Game, 3 seeds par carte ; B9-95, B9-102 | ch. 5 fiches + table A ; 4 §4.1.4 |
| R-14 | Exclusivités de maze tiles par royaume après le pool commun 9.2.0 (CONFLICT-L7-01) ; disposition du Killer Shack par royaume | T-C02, T-C05, T-E02 | Custom Game ; B9-94, B9-96 | ch. 4 §4.4, 5 |
| R-15 | Compléter les 4 fiches minces (Rotten Fields, Dead Sands, Freddy Fazbear's Pizza, Fallen Refuge) ; mesurer RPD East / West et Trickster's Delusion ; loops des cartes intérieures (RPD, Midwich, Treatment Theatre, Underground Complex, Badham) | T-E03, T-C09 | Wiki + Custom Game ; B9-97, B9-100, B9-101 | ch. 5 §5.4 |
| R-16 | Portées audibles des signaux de carte ; hauteur réelle des murs d'Autohaven (CONFLICT-B8-07) | T-E11, T-E12 | Test | ch. 5 §5.3.3, §5.6.4 |

### 4.4 Sources inaccessibles (BLOCKED tant que l'accès manque)

| ID | Tâche | Nœuds | Accès nécessaire | Mettre à jour |
|---|---|---|---|---|
| R-17 | Lire les infographies officielles 2024-2026 (kill / escape rates par tueur et par carte, SWF 2024) et NightLight (fréquences de perks et d'add-ons) | T-E06, T-H04, T-F01-F44 (fréquences), T-T01 | Lecture d'image ; nightlight.gg autorisé dans le réseau de l'environnement | ch. 5, 7-8, 10, 12 §12.8 |
| R-18 | Règlement DBDLeague, pools, résultats 2026 ; 3 à 5 VOD de référence | T-S01, T-S02, T-S04, T-S03 | DBDL, Liquipedia, YouTube / Twitch autorisés | ch. 12 |
| R-19 | Trouver des sources expertes écrites et datées (guides de chase, hiérarchies de tiles, SoloQ) pour sourcer ou retirer les ≈ 25 [AVIS D'EXPERT] non sourcés | T-C03-C07, T-E04, T-J02, T-N01-N14, T-S03, T-U08 | Recherche web + lecture complète | ch. 4, 5, 6, 9, 11, 12 |
| R-20 | Archiver les notes 8.x (TR de la Blight 40 m et du Ghost Face 24 m, passés en 8.6.0) et les notes PTB 527, 533, 542 ; copier en local la page wiki du Cenobite | T-F16, T-F21, T-F25, T-W03 | Téléchargement des articles BHVR, `kb/tools/wiki_text.py` | `kb/sources/`, `SOURCE_LEDGER.md` |

### 4.5 Nœuds absents ou minces dans le guide (P2-P3)

| ID | Tâche | Nœuds | Méthode | Mettre à jour |
|---|---|---|---|---|
| R-21 | Rechercher prestige (règles actuelles, effet sur les BP et les déblocages) et reset MMR 10.1.0 (source primaire) | T-A13 | Notes BHVR, wiki ; G04 | ch. 2 §2.11 |
| R-22 | Rechercher réglages audio / vidéo / accessibilité (casque, son spatial, FOV, luminosité, options de daltonisme) et réseau (ping, région, choix de serveur) | T-U02, T-U03 | Wiki, support officiel | ch. 3 T16 / T21 ou nouvelle annexe |
| R-23 | Rédiger le volet tilt / gestion émotionnelle / fatigue de session | T-U04 | Sources de psychologie du jeu compétitif (à trouver) ; sinon [HEURISTIQUE] étiquetée | ch. 14 |
| R-24 | Ajouter les archétypes de builds « stealth » et « anti-hex » (demandés au §9 de la mission) | T-G04 | Depuis les fiches `batch2_*` (valeurs déjà vérifiées) | ch. 9 §9.4, PDB §5 |
| R-25 | Développer au-delà d'une ligne d'inventaire les 89 perks survivant et 68 perks tueur citées dans un seul chapitre, ou justifier leur faible pertinence ; audit adversarial dédié des fiches des lots 2-3 | T-G02, T-H02 | Fiches `batch2_*`, `batch3_*` | ch. 9 §9.7, 10 §10.10 |
| R-26 | Fiches tueurs : ajouter « Tiles » à The Animatronic et The First ; harmoniser The Good Guy (« Fenêtre à exploiter » → cas d'échec) | T-F34, T-F40, T-F42 | `batch4_killers_g5.md`, `g6.md` | ch. 8 |
| R-27 | Exemples §31 manquants : plan de début sur une carte à gens fixes, situation de slug, décision de lampe en SWF ; intégrer les drills de carte D1-D6 au catalogue 14.4 ; fusionner 12.7 avec 6.8 | T-E07, T-Q07, T-I03, T-R01, T-K03 | Reprise de P15 (« Manques restants ») | ch. 5, 6 §6.12, 11, 12, 14 |
| R-28 | Mesurer sur ses propres parties les paramètres des modèles (efficacité des réparateurs, `T_loop`, probabilité de coup, valeur d'un état de santé, délai de confirmation) et valider les seuils du programme | T-L02, T-L04, T-L07, T-J05, T-J08, T-R01-R03 | Protocole ch. 14 §14.5-14.6 ; B11-112 à B11-115 | ch. 3 §3.8, 6, 14 |
| R-29 | Objets : charges de l'Alex's Toolbox (18 / 24), charges d'une fouille (8 / 10), probabilités de coffre actuelles, cumul des add-ons, soin au kit 1,5 état | T-I01, T-I02, T-I08, T-I11 | Test ; CONFLICT-L5-02 à L5-06 | ch. 11 |

### 4.6 Cohérence des registres (P2, sans recherche)

| ID | Tâche | Fichiers |
|---|---|---|
| R-30 | Mettre à jour `PROJECT_MANIFEST.md` (lots 5-12, guide, P13-P17), `TODO_RESEARCH.md` et `CHANGELOG.md`, arrêtés aux lots 2-4 ; corriger l'en-tête de `SOURCE_LEDGER_batches.md` | `kb/PROJECT_MANIFEST.md`, `kb/ledgers/*` |
| R-31 | Ch. 15 : §15.5 (note sur Five Moves Ahead dans `CANONICAL_FACTS.md`, désormais corrigée), §15.7 conditions 1 et 9 (matrice mise à jour ; fiches tueurs complétées ; P15 fait) | `kb/guide/15_annexes.md` |
| R-32 | Harmoniser la définition de [AVIS D'EXPERT] (3 définitions : ch. 1 l. 221, ch. 9 l. 21, ch. 13 l. 24) | ch. 1, 9, 11, 13 |
| R-33 | Retirer l'ancien effet de Knock Out de `kb/research/batch9_macro.md` (l. 280, 396) ; marquer `OPEN_QUESTIONS.md` B11-116 comme tranchée (arbres T-Q04 à T-Q07 rédigés) ; signaler les 6 perks UNUSED en §9.7 / §15 | `kb/research/batch9_macro.md`, `OPEN_QUESTIONS.md`, ch. 9 |

**Ce que la matrice ne dit pas** : un nœud COMPLETE est vérifié **au 27-28/09/2026 pour la LIVE 10.1.2a**. La sortie de 10.2.0 fera repasser en AUDITED tous les nœuds qui citent une des 58 perks modifiées (R-01).
