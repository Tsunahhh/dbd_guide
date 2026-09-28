# PASS 18 — Contrôle final avant PDF (28/09/2026)

Référence : LIVE 10.1.2a (17/09/2026) ; PTB 10.2.0 non LIVE. Grille : `prompt.md` §25-28 et §47 ; `kb/guide/WRITING_BRIEF.md` ; `kb/guide/CANONICAL_FACTS.md` ; `kb/ledgers/AUDIT_PHASE0_ERRATA.md` ; `kb/deliverables/PERK_DATABASE.md` §1.4 (liste des 58 perks PTB) ; `kb/ledgers/COVERAGE_MATRIX.md` §0 et §4. Pas de commit.

## 1. Fact-check des rubriques ajoutées le 28/09 (ch. 7 et 8)

**Périmètre** : « Implications de carte » et « Perks / synergies à anticiper » (44 fiches), « Implications macro » (Clown, Ghost Face), « Quand le counterplay habituel échoue » (fiches 31, 32, 36, 37, 41), encadré « S'entraîner avec ces fiches » (ch. 8).

**Méthode** :
- Script d'extraction des rubriques, puis de chaque valeur chiffrée (55 occurrences), comparée à la fiche `kb/research/batch4_killers_g*.md` du tueur, au digest wiki des perks et au ch. 5 (tailles de cartes).
- Script de détection des perks citées (65 perks distinctes au ch. 7, 79 au ch. 8) contre la liste PTB de `PERK_DATABASE.md` §1.4 : chaque perk modifiée au PTB doit porter « PTB 10.2.0 — non LIVE » ou renvoyer à une ligne qui le fait.
- Relecture des effets décrits contre le digest wiki (texte LIVE ; pour les 7 pages piégées, la valeur LIVE de la PDB).
- Renvois DR-15, DR-06, M-12, E-D11, E-A03, E-T10 vérifiés dans les ch. 13-14.

**Résultat** : toutes les valeurs chiffrées sont sourcées (6 m/s Wraith, 2,5 s à 2,3 m/s Clown, ~13 m Plague, 60 s / 15 s Ghost Face, 10 m Executioner, 80 cm Twins, 30 s Dragon's Grip, 10 m / 1,23 m/s / 15 s / 32 m Skull Merchant, 5,7 s / +75 % / 3 s / 10 m / 20-24 m Singularity, 4 s / 45 s / −22 m / 20 s Lich, 2-32 m / 20 s / 50 % Dracula, 2,5 s / 4,8 m/s / ≤ 7 m Krasue, etc.). Aucune valeur PTB n'était donnée comme LIVE, mais **10 perks modifiées au PTB** étaient citées sans la mention.

| Fiche | Problème | Correction |
|---|---|---|
| 16 Ghost Face | Spine Chill (modifiée au PTB) sans mention | « LIVE ; retravaillée au PTB 10.2.0 — non LIVE » |
| 21 Blight | Hex: Blood Favour (PTB) sans mention | Effet LIVE précisé (perte d'un état **par tout moyen**) + mention PTB |
| 31 Skull Merchant | « La page wiki affiche leurs versions PTB » pour THWACK!, Leverage **et** Game Afoot : seule Game Afoot est modifiée | Mention PTB limitée à Game Afoot |
| 32 Singularity | Machine Learning (PTB) sans mention | Mention ajoutée |
| 35 Unknown | Unbound (PTB) sans mention ; « valeurs LIVE en partie [INCERTAIN] » alors qu'Unbound est VMS | Effet LIVE d'Unbound + mention PTB ; [INCERTAIN] limité à Undone |
| 36 Lich | Dark Arrogance « valeurs LIVE suspectes [INCERTAIN] » alors que la PDB la donne VMS (vaults +15/20/25 %, stuns et aveuglements +15 %) ; PTB sans mention ; DMS (seed) sans mention | Effet LIVE (VM) + mention PTB ; mention PTB pour DMS |
| 36 Lich (cas d'échec) | « un Lich qui garde Mage Hand et ralentit pour l'obtenir » (formulation obscure) | « qui garde Mage Hand en réserve et attend ton pré-drop » (fiche g5) |
| 37 Dark Lord | Dominance : « 1er coffre ou totem touché » ; PTB sans mention | « chaque coffre et chaque totem est bloqué dès son 1er contact, il en voit l'aura » + PTB |
| 38 Houndmaster | DMS « suspecté » sans mention PTB | Mention ajoutée |
| 39 Ghoul | Hex: Nothing but Misery (PTB, page wiki piégée) sans mention | Mention + renvoi §10.10 |
| 41 Krasue | Dissolution (PTB) sans mention ; Overture of Doom : « TR qui semble venir du gen le plus éloigné » (imprécis) | Effet LIVE de Dissolution + PTB ; Overture : TR transféré au gen maudit après 5 s de réparation, tueur Undetectable |

Restent sans mention, à juste titre : les perks renvoyées à une ligne « Perk à connaître » qui porte déjà la mention (Superior Anatomy, Help Wanted, Ravenous, Dissolution chez le Dredge) ; Kindred et Self-Preservation, citées comme options sans valeur.

**Complétude §28** (script sur les 44 fiches : pouvoir, counterplay, tiles, carte, macro, add-ons, perks, erreurs, cas d'échec) : il manquait « Tiles » à The Animatronic et The First, et un cas d'échec à The Nurse, The Clown et The Good Guy (« Fenêtre à exploiter » seulement). Ajoutés depuis `batch4_killers_g1.md`, `g2.md`, `g5.md`, `g6.md` ou depuis le texte déjà vérifié de la fiche, sans valeur nouvelle.

**Étiquettes** : présentes ([HEURISTIQUE] sur chaque rubrique de carte ; [INCERTAIN] / [HYPOTHÈSE] / [SITUATIONNEL] sur les usages seed et les interactions non vérifiées).

**Markdown** : le convertisseur du PDF (`python-markdown`, `kb/tools/build_pdf.py`) ne reconnaît pas une liste collée à la ligne de paragraphe précédente : les 44 rubriques « Implications de carte » / « Perks » du ch. 7 (et 176 cas au total dans les ch. 2-14, plus 1 liste dans une citation au ch. 12 et 1 après un paragraphe indenté au ch. 3) auraient été rendues comme du texte continu. Ligne vide insérée dans les 178 cas ; contrôle après correction : 0 liste mal rendue, tableaux à colonnes constantes, un seul `#` par fichier, blocs de code fermés.

**Tables « passer à la pratique » et §1.10** (ajouts du 28/09 hors ch. 7-8) : chiffres (griffures 10 s, auto-soin 24 s, 32 s-surv, 36 s, DMS 25/30/35 s) retrouvés dans les chapitres ; tous les renvois de section existent.

## 2. Audit adversarial du chapitre 15 (§25-26) et fact-check

**Chiffres contre les registres** : toutes les valeurs des tableaux 15.1 sont retrouvées dans les ch. 1-14 ou `CANONICAL_FACTS.md` ; décomptes de 15.4 (17 lignes A1, 59 / 55 erreurs, 64 imprécisions, 11 + 42 « le seed avait raison ») conformes à `OUTDATED_CONTENT_REPORT.md` B6 ; 15.5 (117 questions, 23 tranchées ; 113 conflits, 85 résolus, 26 distincts ouverts + 4 de phase 0) conforme à `OPEN_QUESTIONS.md` et `CONFLICT_REGISTER.md` ; tous les renvois de section du glossaire (173 termes) existent ; 58 perks PTB = 31 + 27.

| Section | Problème (§25 : périmé, faux ; §26 : trompeur si lu à la lettre) | Correction |
|---|---|---|
| 15.1, 15.5 | Deux « notes avancées » disaient que `CANONICAL_FACTS.md` classe encore Five Moves Ahead en PTB : corrigé depuis | Notes retirées ; idem en 15.8.1 (étapes 4 et 8) |
| 15.3.1 | 9.3.0 « palettes moins sûres sur 6 royaumes » : la note vise 5 royaumes **et** la carte Mount Ormond Resort (ch. 5) | Corrigé (même erreur dans `QUICK_REFERENCE.md` : « 10 cartes » / « 6 cartes ») |
| 15.3.2 | « Blood Favor » | « Blood Favour » |
| 15.6.1 | « 39 articles archivés » ; 527, 533, 542 « non archivés » | 48 articles (10 notes PTB), archivées le 28/09 |
| 15.6.2 | Tueurs : « 45 pages ; Cenobite sans copie locale » | 46 pages, Cenobite archivé |
| 15.6.3 | VOD « accès refusé » (le manifeste dit : pages YouTube lisibles sans transcript) ; « PTB 9.2.0, 9.5.0, 10.0.0, 10.1.0 non téléchargées » | « aucune vidéo visionnable (pages sans transcript) » ; ligne réduite aux notes 8.x |
| 15.7 | Tableau et verdict du 27/09 (conditions 1, 9, 11 PARTIEL) périmés | Réécrits (voir §3) |
| 15.8.2 / Sources | « audit de couverture de ce chapitre » (c'est celui du guide) ; pass15 et pass18 absents | Corrigé |

**Contradictions avec les autres fichiers** : aucune dans les chapitres. Hors guide : `QUICK_REFERENCE.md` gardait « soigneurs max : 2 ou 3 † », « portage 3,68 m/s † » et « taux de base † » de l'anti-camp, tranchés le 27/09 (2 en 1v4, SS, +1 c/s) → alignés ; `QUICK_REFERENCE.md` et `KILLER_COUNTERPLAY_HANDBOOK.md` affichaient « NOT READY » en dur → renvoi à §15.7. Définition de [AVIS D'EXPERT] : 4 définitions différentes (ch. 1, 9, 11, 13), dont une (« opinion répandue chez les bons joueurs ») qui suggérait une source → une seule définition honnête : jugement **attribué à aucun expert identifié**, à traiter comme une heuristique forte (R-32).

## 3. Registres et état réel (condition par condition)

Contrôles faits avant de juger : `kb/sources/patches/` contient bien 48 articles `official_*.txt` ; `wiki_killers/` 46 pages dont `Elliot_Spencer.txt` ; articles BHVR 560-562 toujours « Article not found » au 28/09 (10.2.0 non sorti).

- **Écart trouvé** : `SOURCE_LEDGER.md` n'avait **pas** été mis à jour (39 articles, 527/533/542 « non archivés », 522/537/548/555 « non consultés », 45 pages de tueurs). Corrigé : 9 lignes PTB ajoutées au tableau, total 48, page du Cenobite, lignes « non téléchargées » réduites aux notes 8.x.
- `COVERAGE_MATRIX.md` : en-tête (statut global), §0 point 7 (mise à jour P18), familles F, U, W, totaux (49 COMPLETE / 184 AUDITED / 0 WRITTEN), lignes T-W01-W08, T-U05, T-U09, T-F34, F40, F42, tâches R-03, R-04, R-20 (en partie), R-26, R-30, R-31, R-32.
- `PROJECT_MANIFEST.md` (ligne « Statut global », tableau des passes), `CHANGELOG.md` (entrée du 28/09), `TODO_RESEARCH.md`.

| # | Condition §47 | Statut |
|---:|---|---|
| 1 | Taxonomie auditée | FAIT (ré-audit 245 nœuds) |
| 2 | Aucune catégorie critique absente | FAIT (compétitif présent mais BLOCKED ; réglages et tilt, P2-P3, absents) |
| 3-5 | Tueurs, cartes, perks inventoriés | FAIT (44, 44, 321) |
| 6 | Mécaniques principales vérifiées | FAIT (valeurs non publiées listées) |
| 7 | Infos sensibles aux patches vérifiées | FAIT au 28/09 (périssable à 10.2.0) |
| 8 | Contradictions résolues ou marquées | FAIT |
| 9 | Sections avancées décisionnelles | FAIT (PASS 15 ; §28 complet sur 44 fiches) |
| 10 | ≥ 2 audits adversariaux | FAIT (P14 §25 + §26 ; P17 ; P18) |
| 11 | Sources traçables | FAIT (après mise à jour de `SOURCE_LEDGER.md`) |
| 12 | Non-résolus listés | FAIT |

## 4. Verdict

**COMPLETE au sens du §47 (28/09/2026, LIVE 10.1.2a).** Les 12 conditions sont remplies au sens strict : chacune a une preuve vérifiable et aucune ne repose sur une affirmation non contrôlée par cette passe.

Ce verdict est limité, et `kb/guide/15_annexes.md` §15.7.1-15.7.2 le dit : 49 nœuds sur 245 seulement sont COMPLETE au sens du §46 ; aucune VOD, aucune source experte écrite, aucune statistique n'ont pu être lues ; le PTB 10.2.0 est volontairement non intégré ; 117 questions restent ouvertes. Le verdict **redevient NOT READY** à la sortie LIVE de 10.2.0, tant que la procédure §15.8.1 n'a pas été appliquée.

Reste à faire hors §47 (matrice §4) : R-01 (10.2.0), R-02 et R-05-R-16 (tests en jeu), R-17-R-19 (accès), R-21-R-25, R-27-R-29, R-33. Le PDF `DBD_Guide_Expert_v2.pdf` n'existe pas encore dans le dépôt : il doit être généré (`python3 kb/tools/build_pdf.py`) après cette passe.
