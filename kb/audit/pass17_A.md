# Passe 17 (fact-check final) — lot A : chapitres 1, 2, 12

Référence : `kb/guide/CANONICAL_FACTS.md`, `kb/ledgers/AUDIT_PHASE0_ERRATA.md`, `kb/ledgers/CONFLICT_REGISTER.md` (Résolutions du 27/09/2026), fiches `kb/research/batch*.md`. Date : 27/09/2026. Pas de commit.

| Chapitre | Problème | Correction |
|---|---|---|
| 01_introduction | §1.6.2 : l'exemple (INC) « taux de base de l'anti-camp depuis 9.3.0 » est tranché (CONFLICT-003 résolu) | Exemple remplacé par Off the Record désactivée portes alimentées (toujours UNRESOLVED) |
| 01_introduction | §1.9 point 7 : « À ajouter : Shape, Executioner, Nemesis, Singularity, The First » mettait sur le même plan les casses de base et les casses avec add-on ; Hillbilly absent | Lignes séparées : Hillbilly (casse de base ~1 s, sans add-on) ; Shape / Nemesis / Singularity (pouvoir de base) ; Executioner (Obsidian Goblet) et The First (Shattered Wrist Rocket, [INCERTAIN]) avec add-on seulement ; renvoi aux ch. 3 et 7-8 |
| 02_mecaniques | §2.9.5 : Knock Out « auras des mourants réduites à 32/24/16 m » = effet retiré au rework 8.6.0 (batch3 p94, K94-06) | Remplacé par : aucun effet d'aura en LIVE ; effet LIVE = Hindered 5 % 3/4/5 s si > 6 m d'une palette tombée dans les 6 s (VM) |
| 02_mecaniques | §2.3.3 : « ≈ 30 s après l'accrochage » vs canonique ≈ 29,5 s | Aligné sur ≈ 29,5 s (±10 %) |
| 02_mecaniques | §2.5.3 : boost au coup 1,8 s noté VP | VM (CONFLICT_REGISTER : VERIFIED_MULTI_SOURCE pour la durée) |
| 02_mecaniques | §2.4.4 : Off the Record 30/35/40 s noté SS | VM (batch2 p23 C12 : VERIFIED_MULTI_SOURCE) ; clause portes alimentées reste INC |
| 02_mecaniques | §2.10.1 : Head On « Exhausted 60/50/40 s » sans condition | Précisé : sur réussite seulement ; bruit fort si raté (batch2 p24) |
| 02_mecaniques | Conseils absolus : « Ne restez pas dans les 16 m », « ne jamais être mis au sol… », « jamais vers un gen occupé » | Reformulés en conditionnels avec la raison / le risque |
| 02_mecaniques | §2.10.3 : phrase ambiguë « règle absolue relevée par l'audit » | « règle trop absolue (relevée par l'audit) » |
| 02_mecaniques | Renvois non numérotés (« chapitre macro », « chapitre chase », « chapitre des perks tueur ») | Chapitres 6, 3 + 7-8, 10 ; mention Hillbilly (casse de base ~1 s) dans le renvoi palettes |
| 12_competitif | Renvoi « le chapitre tueurs » ; renvoi au programme sans numéro ; « DR-08 » confondable avec Diminishing Returns | Chapitres 7-8 et 3 ; chapitre 14 ; « drill DR-08 » |
| 12_competitif | Protocoles SWF sans étiquette ; protocole 3-gen formulé en règle fixe (« finir deux gens ») | Étiquette [HEURISTIQUE] ; « finir en priorité… si le tueur le permet » + renvoi ch. 2 §2.2.4 et ch. 6 |
| 01 / 02 / 12 | Markdown : un seul `#`, tableaux (même nombre de colonnes), blocs ``` fermés, pas de HTML | Vérifié par script : aucun défaut |

## Vérifié sans changement
Gen 90 s, coop 85/70/55 %, kick −5 % / 1,8 s, 8 regression events ; crochet 70 s ; 2 soigneurs max en 1v4 ; rampement 0,7 m/s ; Resolve 16 m / 7 s / ×1-2-4 / poids ×2,5-×1-×0,375-×0 ; protections de décrochage 10.1.0 ; portage 3,68 m/s ; DR 100/50/25/12,5/5 % ; Eruption −10 % ; Pop 9.5.0 ; NTH 24 m ; Built to Last 14/12/10 s ; Huntress 7 hachettes ; Good Guy / Mastermind / Lich / Knight conformes à l'errata ; valeurs PTB 10.2.0 du §1.2 (DMS, Blood Favour, Dominance, Insidious, Knock Out, Ravenous, Kindred, Self-Preservation, Shoulder the Burden, Windows of Opportunity) toutes étiquetées PTB avec valeur LIVE correcte ; No Way Out, Technician, Vigil, Deliverance, Fog Vial, TR Hag/Pig. Aucune affirmation d'analyse vidéo ; aucune stat NightLight présentée comme lue.

## Hors périmètre (à corriger par le lot concerné)
- `06_macro.md` l. 326, 338, 476, 598 et `09_perks_survivant.md` l. 451, 583 décrivent encore Knock Out comme réduisant l'aura des mourants (effet retiré en 8.6.0) ; contredit `10_perks_tueur.md` l. 114 et désormais le ch. 2.
