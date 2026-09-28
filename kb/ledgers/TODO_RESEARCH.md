# TODO_RESEARCH — file de travail

Mis à jour à chaque fin de session. Le **prochain lot exact** est en tête.

## État au 28/09/2026
Les lots 1-9, 11, 12 et les PASS 13-17 sont faits (voir `kb/PROJECT_MANIFEST.md` §5). Le tableau ci-dessous est le plan historique ; ce qui reste est dans `kb/ledgers/CHANGELOG.md` (« Prochaine session »), `OPEN_QUESTIONS.md` et `COVERAGE_MATRIX.md` §4.

## ➜ Prochain lot exact (à la reprise)

Voir la section « Prochaine session » en bas de `kb/ledgers/CHANGELOG.md` (elle est réécrite à chaque fin de session).

## Lots restants (plan de phase 0, ajusté)

| Lot | PASS | Périmètre | Sortie attendue | Critère de fin |
|---|---|---|---|---|
| 5 | 5 | Objets (med-kit, toolbox, flashlight, key, map, Fog Vial, objets d'événement), add-ons marquants, offrandes (royaume 20 %, apparition, BP, mori, Shroud), techniques : flash save (angles), pallet save, sabotage, body block, protection hit, coffres / Plunderer's | `kb/research/batch5_items.md` | Tous les objets LIVE inventoriés, add-ons qui changent la décision, techniques au format WHAT→DRILL |
| 6 | 4/8 | Red stain, moonwalk, double-back, caméra, checkspots, fake vault/pallet, lecture son/animation, hitbox/latence/validation serveur, collision/body block | `batch6_chase_tech.md` | Chaque technique au format WHAT → WHY → WHEN → HOW → COUNTER → FAILURE → DRILL |
| 7 | 7 | Tiles (pool commun depuis 9.2.0) : shack, jungle gyms, T/L, four-lane, pallet/debris/locker gyms, fillers, main buildings, structures uniques ; matrice tile × archétype de tueur ; connectivité (5-15 s) | `batch7_tiles.md` | Fiche complète par tile + exemples « Tile A → B → main → filler » |
| 8 | 7 | 44 cartes 1v4 : fixe vs RNG, main, landmarks, gates, dead zones, killers favorisés (descriptif), plan début/milieu/fin ; historique 9.2.0/9.3.0/9.3.2 ; un seul tableau de kill rates daté avec n | `batch8_maps_*.md` | 44 cartes |
| 9 | 10 | Macro (gens, 3-gen, trades, saves, proxy camp, tunnel/slug, heal/no heal), SoloQ (HUD), SWF (callouts), game sense, 14 états de partie, endgame (portes, trappe, EGC) | `batch9_macro.md` | Matrice des états + arbres de décision |
| 10 | 9 | Compétitif (règlements DBDL, formats, transfert) ; VOD si accès | `batch10_comp.md` | **BLOCKED** tant que YouTube/Twitch/DBDL inaccessibles |
| 11 | 15 | Base d'erreurs (4 niveaux), arbres de décision (palette, crochet, soin, gen, totem, endgame, slug), drills, programme 10 niveaux, métriques | `batch11_training.md` | Format mission |
| 12 | 11-12 | Triangulation + freshness : **dès que 10.2.0 sort**, re-vérifier les 58 perks, Abandon/Surrender, Survivor Intent System | ledgers | Aucune valeur POSSIBLY STALE non signalée |
| 13-15 | 13-15 | Audit de couverture, 2 audits adversariaux, audit de praticité | `kb/audit/pass13…15.md` | Mission §25-27 |
| 16-17 | 16-17 | Réécriture (master guide + livrables §51) puis fact-check final | PDF + fichiers | Definition of Done §47 |

## Reprises de vérification (dette de confiance)

- Toutes les valeurs des lots 2-4 notées STRONG_SECONDARY « via résumé de recherche » doivent être relues sur la page complète (wiki.gg + patch notes) quand l'accès web le permettra.
- Liste des modificateurs soumis aux DR (manuel du jeu 9.6.1).
- Infographies officielles de stats (images) : kill rates par tueur sept. 2025 – févr. 2026.

## Banque de questions (extrait de la phase 0, à étendre)

Voir `kb/seed/audit_phase0.txt` lignes 5249-5308 (44 questions). Les questions dérivées des lots 2-4 sont dans chaque fichier `batch*` (« Questions ouvertes »).
