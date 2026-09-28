# PASS 15 — Audit de profondeur (§27) et de praticité du guide

Date : 28/09/2026. Périmètre : `kb/guide/01_introduction.md` → `15_annexes.md` (LIVE 10.1.2a). Références : `prompt.md` §27 (WHAT → WHY → WHEN → HOW → COUNTER → FAILURE CASE → DRILL), §31 (exemples concrets), §49 (anti-summary), §50 (objectif pédagogique) ; `kb/guide/WRITING_BRIEF.md`.

## Méthode

1. **Balayage automatique** de chaque section `##` : occurrences de marqueurs POURQUOI / QUAND / CONTRE / CAS D'ÉCHEC / EXERCICE, de renvois vers les drills (`DR-`, `DC-`, ch. 14), les erreurs (`E-xx`) et les arbres (ch. 13), et du format §31 (Situation → Informations → Options → Analyse → Meilleure logique → Erreur typique).
2. **Lecture** des sections signalées faibles et d'un échantillon des sections fortes (fiches tueurs 1-2 et 23-24, fiches de carte, techniques T04-T06, situations 3.9 et 6.12, arbres 2 et 6, catalogue 14.4).
3. **Verdicts** :
   - **Profondeur** = niveau le plus haut atteint de façon **systématique** dans la section : `QUOI` < `+POURQUOI` < `+QUAND` < `+CONTRE` < `+CAS D'ÉCHEC` < `+EXERCICE`. Une section « Référence » (tables de valeurs) est jugée sur sa fiabilité, pas sur la grille.
   - **Praticité** : **H** (le lecteur sait quoi faire en partie, exemple concret ou arbre, et renvoi vers un drill), **M** (sait quoi faire, mais sans exemple §31 ni lien vers le programme), **B** (connaissance seule). Colonnes « §31 » et « Drill » : présence d'un exemple concret au format §31 et d'un renvoi explicite vers un drill du ch. 14 / arbre du ch. 13.
   - Les corrections faites dans cette passe sont marquées **✔ corrigé** dans la colonne « Manque ».

## Constat général

- **Profondeur : bonne à très bonne.** Les chapitres de fond (3, 4, 6, 7, 8, 9, 13, 14) appliquent la grille §27 presque partout ; les chapitres 3, 4 et 11 l'affichent explicitement. Aucune section importante n'est restée au stade « QUOI seul » hors tables de référence (2.7 statuts, 5.2 inventaire, 9.7 / 10.10 inventaires, 15.x annexes), ce qui est leur fonction.
- **Faiblesse principale : la praticité par le lien.** Avant cette passe, les chapitres 2, 3, 4, 5, 8, 9, 10 et 11 ne contenaient **aucun** identifiant de drill (`DR-`/`DC-`), d'erreur (`E-xx`) ou d'arbre du ch. 13 (un seul renvoi dans le ch. 3). Leurs nombreux exercices internes portaient les mêmes noms que les drills du ch. 14 sans y être reliés : le lecteur ne pouvait pas passer de la théorie au programme ni savoir à quel niveau un exercice appartient. Inversement, le ch. 14 ne disait pas quoi relire avant chaque niveau.
- **Exemples §31** : présents et de bonne qualité en 3.9, 4.7, 6.12 et (format raisonné) 10.3 ; absents des ch. 2, 5, 8, 9, 11, 12 et des arbres 6-9.
- **CAS D'ÉCHEC manquants** repérés : 6.6, 6.10, 9.5, 10.6 (✔ corrigés) ; fiches tueurs 31, 32, 36, 37, 41 sans rubrique « Quand le counterplay habituel échoue » (non corrigé, voir fin).
- **§50** : aucune section ne formulait les 13 questions ; les réponses étaient dispersées (✔ section 1.10 ajoutée).

## Tableau de l'audit

| Chapitre | Section | Profondeur | Praticité (§31 / drill) | Manque |
|---|---|---|---|---|
| 1 Introduction | 1.1 Version de référence | Référence | M (— / —) | — |
| 1 | 1.2 PTB 10.2.0 (non LIVE) | +QUAND (1.2.3 « que faire en attendant ») | M (— / —) | — |
| 1 | 1.3-1.4 Registre, historique | Référence | B | Normal (contexte) |
| 1 | 1.5-1.6 Méthode, légende | +POURQUOI (limites) | M | — |
| 1 | 1.7 Apprendre avec ce guide | +EXERCICE (boucle jouer → revoir → drill) | H (— / ch. 13-14) | — |
| 1 | 1.8-1.9 Carte du guide, changements | Référence | M | — |
| 1 | **1.10 (nouveau)** Les 13 questions | +QUAND (lesquelles en chase / hors chase) | H (— / drills par question) | ✔ ajoutée (§50) |
| 2 Mécaniques | 2.1 Objectifs, tableau de course | +QUAND | M (— / —) | Lien drills → ✔ 2.13 |
| 2 | 2.2 Générateurs (2.2.5 finir/lâcher) | +EXERCICE | M → H | Pas de renvoi Arbre 5 / DR-09 → ✔ 2.13 |
| 2 | 2.3 Crochets, anti-camp | +EXERCICE | M → H | Pas de renvoi Arbre 3 / DR-10 → ✔ 2.13 |
| 2 | 2.4 Protections de décrochage | +CAS D'ÉCHEC (2.4.3 complet) | M → H | Pas d'exemple §31 ; lien E-I11 → ✔ 2.13 (exemple §31 : ✔ 6.6 couvre l'avant-décrochage) |
| 2 | 2.5 Soins | +EXERCICE (2.5.3 coût/gain, table de décision) | M → H | Lien Arbre 4 / DR-18 → ✔ 2.13 ; exemple §31 → ✔ 11.3 |
| 2 | 2.6 État mourant | +EXERCICE (2.6.3 complet) | M → H | Lien Arbre 7 → ✔ 2.13 |
| 2 | 2.7 Statuts | QUOI (+ interactions) | B | Glossaire : normal ; pas d'exemple de lecture d'icône en partie (non corrigé, faible priorité) |
| 2 | 2.8 Diminishing Returns | +POURQUOI (règle de rôle) + conséquences | M | Pas d'exercice (valeurs non publiées : acceptable) |
| 2 | 2.9 Signaux d'information | +QUAND + EXERCICE (« 8 secondes ») | M → H | Lien DR-05 / DC-11 → ✔ 2.13 |
| 2 | 2.10-2.11 Objets de carte, économie | +QUAND | M | Lien Arbres 6/8/9 → ✔ 2.13 |
| 2 | 2.12 Inconnues | Référence | M | — |
| 3 Chase | 3.0 Mode d'emploi | — | M → H | Table exercices ↔ drills/arbres → ✔ ajoutée |
| 3 | 3.1-3.2 Chiffres, calculateur | Référence + CALC | M | Normal |
| 3 | 3.3 Fondamentaux T01-T06 | +EXERCICE (grille complète) | H (3.9 / exercices) | IDs de drill absents → ✔ table 3.0 |
| 3 | 3.4 Information en chase T07-T16 | +EXERCICE | H | idem ✔ |
| 3 | 3.5 Techniques de tile T09-T17 | +EXERCICE | H | idem ✔ |
| 3 | 3.6 Gérer la chase T18-T23 | +EXERCICE | H | idem ✔ |
| 3 | 3.7 Contact, réseau, 360 | +EXERCICE | H | idem ✔ |
| 3 | 3.8 Chase theory (EV) | +EXERCICE ([HYPOTHÈSE] assumée) | H | — |
| 3 | 3.9 Situations concrètes | Format §31 complet (3 situations) | H (§31 ✔) | — |
| 3 | 3.10-3.11 Idées reçues, incertain | Référence | M | — |
| 4 Loops/tiles | 4.0-4.1 Fixe / RNG | +QUAND | M | — |
| 4 | 4.2 Modèle de la loop | +EXERCICE (4.2.2) | H | — |
| 4 | 4.3 Force d'une tile | +CONTRE | M | — |
| 4 | 4.4 Fiches des tiles | +CAS D'ÉCHEC (par tile) | H | — |
| 4 | 4.5 Matrice tile × archétype | +CONTRE | M → H | Lien DR-15 → ✔ 4.8 |
| 4 | 4.6 Connectivité | +CAS D'ÉCHEC (4.6.3), checklist | H | Lien Arbre 2 / DR-13 → ✔ 4.8 |
| 4 | 4.7 Trois exemples commentés | Format §31 (variante) | H (§31 ✔) | — |
| 4 | 4.8 Exercices | +EXERCICE | M → H | Pas de lien au programme ni CAS D'ÉCHEC → ✔ ajoutés |
| 4 | 4.9-4.10 Seed, incertitudes | Référence | M | — |
| 5 Cartes | 5.1-5.2 Fixe/RNG, inventaire | Référence | M | Normal |
| 5 | 5.3 Méthode d'analyse | +CAS D'ÉCHEC (5.3.1, 5.3.6) | H (checklist 8 questions) | Pas d'exemple §31 appliqué à une carte (non corrigé) |
| 5 | 5.4 Fiches par carte (44) | +QUAND (plan début / milieu / fin conditionnel) | M | Pas d'exemple §31 ; pas de renvoi DR-13 (✔ indirect : table 14.3 → 5.3, 5.7) |
| 5 | 5.5 Historique | +CAS D'ÉCHEC (5.5.2) | M | — |
| 5 | 5.6 SoloQ / SWF sur les cartes | +CAS D'ÉCHEC | M | — |
| 5 | 5.7 Drills de carte D1-D6 | +EXERCICE | H | D1-D6 absents du catalogue 14.4 (✔ renvoi depuis 14.3 niveau 4 ; intégration au catalogue : non faite) |
| 5 | 5.8 Récapitulatifs | Référence | M | — |
| 6 Macro | 6.1 Secondes-survivant | +QUAND | M | — |
| 6 | 6.2 Réparer, 3-gen | +EXERCICE | H | — |
| 6 | 6.3 Crochets, trades | +EXERCICE | H | — |
| 6 | 6.4 Camping, tunnel, slug | +EXERCICE | H | — |
| 6 | 6.5 Soigner ou non | +CONTRE + drill | H | — |
| 6 | 6.6 Économie de l'information | QUOI + positionnement | B → H | Ni POURQUOI appliqué, ni exemple, ni CAS D'ÉCHEC, ni drill → ✔ exemple §31 + CAS D'ÉCHEC + EXERCICE |
| 6 | 6.7 SoloQ | +CAS D'ÉCHEC (décisions robustes) | H | — |
| 6 | 6.8 SWF | +EXERCICE (DR-08) | H | — |
| 6 | 6.9 Game sense | +EXERCICE, CAS D'ÉCHEC (snowball) | H | — |
| 6 | 6.10 Les 14 états | +CONTRE (erreurs catastrophiques) | M → H | Pas d'arbre par état, pas d'exercice → ✔ ajoutés |
| 6 | 6.11 Fin de partie | +EXERCICE (DR-11) | H | — |
| 6 | 6.12 Situations concrètes | Format §31 complet (4 situations) | H (§31 ✔) | Pas de situation « slug » (non corrigé) |
| 7 Tueurs 1-22 | Tableau récapitulatif | Référence | M | — |
| 7 | Identifier avant le reveal | +POURQUOI + arbre d'identification | H | — |
| 7 | Typologie transversale | +CAS D'ÉCHEC, DR-15 cité | H | — |
| 7 | Fiches 1-22 | +CAS D'ÉCHEC (22/22 « Quand le counterplay échoue »), add-ons → décision | M-H | Pas d'exemple §31 par tueur (acceptable) ; pas de renvoi aux IDs E-xx (✔ via ch. 8 intro, commune) |
| 8 Tueurs 23-44 | 8.0 Récapitulatif | Référence | M | — |
| 8 | Fiches 23-44 (format) | +CAS D'ÉCHEC pour 16/22 | M → H | Aucun drill ni méthode d'entraînement → ✔ « S'entraîner avec ces fiches » (DR-15, DR-06, M-12, E-D11/E-A03/E-T10) |
| 8 | Fiches 31 Skull Merchant, 32 Singularity, 36 Lich, 37 Dark Lord, 41 Krasue | +CONTRE (pas de CAS D'ÉCHEC) | M | **Rubrique « Quand le counterplay habituel échoue » absente** (non corrigé, priorité PASS 16) |
| 8 | Fiche 34 Good Guy | « Fenêtre à exploiter » au lieu du cas d'échec | M | Format divergent (non corrigé) |
| 8 | Fiches 40 Animatronic, 42 The First | Sans rubrique « Tiles » (« Erreurs classiques » de 42 ajoutée par une passe parallèle) | M | À compléter depuis `batch4_killers_g6.md` (non corrigé) |
| 9 Perks survivant | 9.1 Valeur d'une perk | +QUAND | M | — |
| 9 | 9.2 DR appliqués | +POURQUOI + calcul | M | — |
| 9 | 9.3 Analyse par catégorie | +EXERCICE (2 exercices), CAS D'ÉCHEC nombreux | H | — |
| 9 | 9.4 Archétypes de builds | +CAS D'ÉCHEC (grille complète) | H | — |
| 9 | 9.5 Méthode de build | QUOI + exemple + erreur | M → H | POURQUOI, QUAND, CAS D'ÉCHEC, lien revue → ✔ ajoutés |
| 9 | 9.6 PTB 10.2.0 | +CAS D'ÉCHEC | M | — |
| 9 | 9.7 Inventaire 176 perks | Référence | M | Normal |
| 10 Perks tueur | 10.1-10.2 Observable, règles | QUOI + erreurs | M | Normal |
| 10 | 10.3 Méthode de déduction | +CONTRE, 3 raisonnements (quasi-§31) | H | — |
| 10 | 10.4 Table signaux → perks | QUOI + réponse robuste | M | Référence de terrain (acceptable) |
| 10 | 10.5 Règles par phase | +CAS D'ÉCHEC | H | — |
| 10 | 10.6 Combos | QUOI + COMMENT | M → H | QUAND, CAS D'ÉCHEC, exercice → ✔ ajoutés (DR-07, E-T02) |
| 10 | 10.7 Réflexes robustes | +CONTRE (coût si perk absente) | H | — |
| 10 | 10.8 Drills de déduction | +EXERCICE | H | — |
| 10 | 10.9-10.10 PTB, inventaire | Référence | M | — |
| 11 Objets | 11.0-11.1 Règles | +POURQUOI | M → H | Table objet → décision → arbre → drill → ✔ ajoutée |
| 11 | 11.2 Toolboxes | +CONTRE, usage CALC | M | ✔ lien via 11.0 |
| 11 | 11.3 Med-Kits | +CAS D'ÉCHEC (3 erreurs fréquentes) | M → H | Exemple §31 → ✔ « auto-soin ou gen ? » |
| 11 | 11.4-11.8 Lampes, Fog Vials, Keys, Maps, divers | QUOI + usage | M | Pas d'exemple ; ✔ lien via 11.0 |
| 11 | 11.9-11.10 Offrandes, coffres | +QUAND (quand ouvrir) | M | — |
| 11 | 11.11 Rentabilité | +POURQUOI (CALC) | M | — |
| 11 | 11.12 Techniques T1-T8 | +EXERCICE (grille complète) | H | ✔ lien arbres via 11.0 |
| 11 | 11.13-11.14 Synthèse, non tranché | QUOI | M | — |
| 12 Compétitif | 12.1-12.3 Deux jeux, écosystème, règlements | QUOI | B-M | Normal (contexte) |
| 12 | 12.4 Méta ≠ optimalité | +POURQUOI | M | — |
| 12 | 12.5 Ce qui se transfère | +EXERCICE (grille complète pour 1-2) | M | Items 3-5 sans exercice (non corrigé, faible) |
| 12 | 12.6 Ce qui ne se transfère pas | +CAS D'ÉCHEC (tableau) | M | — |
| 12 | 12.7 SWF | +EXERCICE (DR-08) | H | Doublon partiel de 6.8 (non corrigé ; à fusionner par renvoi) |
| 12 | 12.8 Littératie des données | +POURQUOI | M | — |
| 13 Erreurs/arbres | 13.1-13.2 Conventions | Référence | M | — |
| 13 | 13.3-13.5 Base d'erreurs (51) | +CAS D'ÉCHEC + drill par erreur | H | — |
| 13 | 13.6 Index | Référence (drills référencés) | H | — |
| 13 | 13.7 Mode d'emploi des arbres | +CAS D'ÉCHEC (erreur fréquente) | M → H | Aucun lien arbre → théorie → exemple → drill → ✔ table + exercice |
| 13 | 13.8-13.16 Arbres 1-9 | +CONTRE (colonne « Risque → alternative »), SoloQ/SWF | H | Arbre 7 Slug sans exemple §31 dans le guide (signalé dans la table 13.7, non écrit) |
| 13 | 13.17 Limites | Référence | M | — |
| 14 Entraînement | 14.1-14.2 Pourquoi, règles | +POURQUOI | H | — |
| 14 | 14.3 Programme 10 niveaux | +CAS D'ÉCHEC (« Piège du critère ») | H | Pas de « quoi relire » par niveau → ✔ table ajoutée |
| 14 | 14.4 Catalogue des drills | +EXERCICE (grille 14.4.5) | H | Drills de carte D1-D6 (5.7) non intégrés (non corrigé) |
| 14 | 14.5 Métriques | +CAS D'ÉCHEC (pièges des métriques) | H | — |
| 14 | 14.6 Revue de partie | +EXERCICE (revue minimale) | H | — |
| 14 | 14.7-14.8 Semaine type, limites | +QUAND | H | — |
| 15 Annexes | 15.1-15.8 | Référence | M (référence rapide) | Normal |

## Interventions faites (12 + section §50)

| # | Fichier / section | Nature | Lignes |
|---|---|---|---|
| 1 | `02_mecaniques.md` **2.13 (nouvelle)** « Passer à la pratique » | Table section → décision → arbre → erreurs → drill ; erreur fréquente | ~15 |
| 2 | `03_chase.md` 3.0 | Table exercices du chapitre (avec technique T-xx) → drills DR/DC, niveau, arbre, erreurs | ~14 |
| 3 | `04_loops_tiles.md` 4.8 | Table exercices → drills / niveaux / arbres ; CAS D'ÉCHEC « mourir entre les tiles » (M-07, M-15, M-01) | ~12 |
| 4 | `06_macro.md` 6.6 | Exemple §31 « accrochage à côté de ton gen » ; CAS D'ÉCHEC ; EXERCICE (DC-11, DR-21, DR-16) | ~13 |
| 5 | `06_macro.md` 6.10 | Arbre à sortir par état ; EXERCICE (DC-12) ; CAS D'ÉCHEC | ~5 |
| 6 | `08_tueurs_B.md` intro | « S'entraîner avec ces fiches » : DR-15, DR-06, M-12, E-D11/E-A03/E-T10 ; CAS D'ÉCHEC | ~8 |
| 7 | `09_perks_survivant.md` 9.5 | POURQUOI, QUAND, CAS D'ÉCHEC (mauvais diagnostic, béquille, build SWF en SoloQ), EXERCICE (DR-19) | ~12 |
| 8 | `10_perks_tueur.md` 10.6 | QUAND jouer anti-combo, CAS D'ÉCHEC (combo fantôme, mauvaise jonction, E-T02), EXERCICE (DR-07) | ~10 |
| 9 | `11_objets.md` 11.0 | Table objet → décision → arbre → erreurs → drill | ~10 |
| 10 | `11_objets.md` 11.3 | Exemple §31 « auto-soin ou gen ? » (valeurs déjà présentes ; 36 s = CALC 40 % × 90 s) | ~8 |
| 11 | `13_erreurs_arbres.md` 13.7 | Table arbre → théorie → exemple résolu → drill ; EXERCICE sur un pivot | ~14 |
| 12 | `14_entrainement.md` 14.3 | Table « quoi relire avant chaque niveau » (chapitres, arbre, erreurs) | ~15 |
| §50 | `01_introduction.md` **1.10 (nouvelle)** | Les 13 questions → chapitres + outil ; usage en partie ; erreur fréquente | ~22 |

Aucune valeur chiffrée nouvelle : toutes les valeurs citées figurent déjà dans le chapitre ou dans `CANONICAL_FACTS.md` (griffures 10 s, corbeaux AFK 80/100/120 s, auto-soin ≈ 24 s, DMS 25/30/35 s, 20-30 s de course déjà en 6.6). Markdown vérifié (blocs ``` appariés, colonnes de tableaux cohérentes sur les 15 chapitres).

## §50 — Les 13 questions : où le guide y répond

| # | Question | Chapitres qui y répondent |
|---|---|---|
| 1 | Que sait-on ? | 2.9, 2.11, 6.6 (ce que le jeu donne), 10.1 |
| 2 | Que ne sait-on pas ? | 10.1 (loadout caché), 2.12, 15.5, 10.3 |
| 3 | Où se trouve probablement le Killer ? | 6.9 (modèle du cône), 3.4, 7 (identification), 14.4 DR-21 |
| 4 | Quelle ressource ai-je ? | 3.3 T19, 4.6 (carte mentale), 6.9 (zones épuisées), 9, 11 |
| 5 | Combien de temps puis-je créer ? | 3.2, 4.2-4.3, 4.6.3 |
| 6 | Quelle ressource vaut la peine d'être consommée ? | 3.3 T05, 3.8, 11.11, Arbre 1 (13.8) |
| 7 | Que fait mon équipe ? | 6.7 (SoloQ), 6.8 (SWF), 2.11 (Match Details) |
| 8 | Quel est le risque ? | 3.8 (`C_hit`), 6.10 (erreurs catastrophiques) |
| 9 | Que gagne-t-on si je réussis ? | 1.7.1, 6.1, 3.8 |
| 10 | Que perd-on si j'échoue ? | 2.5.3, 6.3, 13.3-13.5 |
| 11 | Quelle est l'option la plus robuste ? | 6.7 « Décisions robustes », 6.9 « Décider avec une information incomplète », 10.7, arbres 13.8-13.16 |
| 12 | Comment l'adversaire peut-il punir cette option ? | Rubriques CONTRE (ch. 3, 4, 11), « Quand le counterplay échoue » (ch. 7-8), 10.5-10.6 |
| 13 | Quelle adaptation dois-je préparer ? | 6.10, 6.9 (snowball), colonnes « Risque → alternative » des arbres, 14.6 |

Chaque question avait déjà une réponse, mais **aucune section ne les formulait ni ne disait lesquelles poser en partie** : section **1.10** ajoutée à `01_introduction.md` avec ces renvois.

## Manques restants (priorité pour la passe suivante)

1. **Fiches tueurs 31, 32, 36, 37, 41** : ajouter « Quand le counterplay habituel échoue » depuis `kb/research/batch4_killers_g5.md` / `g6.md` (et harmoniser 34 « Fenêtre à exploiter », 40 et 42 sans « Tiles »). Note : une passe parallèle (commits b8e6821, a528b71) a ajouté « Implications de carte » et « Perks / synergies » aux fiches 1-44 pendant cet audit ; elle a aussi embarqué dans ses commits une partie des interventions ci-dessus (aucun commit fait par cette passe).
2. **Exemples §31 manquants** : une carte (ch. 5, plan de début de partie sur une carte à gens fixes), une situation de slug (ch. 6.12 / Arbre 7), une décision de lampe en SWF (ch. 11).
3. **Drills de carte D1-D6** (5.7) : les intégrer au catalogue 14.4 avec un identifiant (DR-xx) et une métrique.
4. **12.7** : remplacer la redite de 6.8 par un renvoi et garder seulement ce qui est propre au compétitif.
5. **2.7 Statuts** : un encadré « lire le HUD en 2 s » (quels statuts changent une décision immédiate) relierait le glossaire au jeu.
