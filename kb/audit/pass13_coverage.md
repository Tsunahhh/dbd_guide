# Pass 13 — Audit de couverture scripté (mission §28-30)

Date : 27/09/2026. Référence : LIVE 10.1.2a. Fichier produit par un script Python ad hoc (lecture seule de `kb/`), exécuté pendant la rédaction du chapitre 15 ; le script n'est pas versionné (scratchpad de session), sa logique est décrite ci-dessous pour pouvoir le refaire.

## Méthode

- **Corpus contrôlé** : `kb/guide/01_introduction.md` à `kb/guide/14_entrainement.md` (le chapitre 15 est exclu pour ne pas se compter lui-même ; `CANONICAL_FACTS.md` et `WRITING_BRIEF.md` exclus).
- **Normalisation** : accents retirés (NFKD), apostrophes typographiques ramenées à `'` ; recherche **sensible à la casse** avec **frontières de mot** (évite par exemple « Bond » dans « bondir »).
- **Tueurs** : 43 fichiers `kb/sources/wiki_killers/*.txt` (45 − Art the Clown − Frank Stone, non sortis) ; titre « The X » extrait de l'infobox. **The Cenobite n'a pas de fichier local** (page lue via `kb/tools/wiki_text.py`, cf. `batch4_killers_g4.md` [5]) : ajouté à la main → **44**. Variantes cherchées : titre, titre sans « The » (sauf First / Unknown / Judgment, trop ambigus), alias (Chucky, Pinhead, Onryo, Ghostface).
- **Cartes** : les 44 lignes de la table §1.2 de `kb/research/batch8_maps.md` (suffixe « (I) » retiré).
- **Perks** : chaque titre `### Nom — Propriétaire` des fiches `kb/research/batch2_perks_surv_p23-p30.md` (176) et `batch3_perks_kill_p90-p96.md` (145). Pour « Will to Live (= Decisive Strike) », les deux noms sont cherchés ; pour « Hex: No One Escapes Death (NOED) », le nom sans parenthèse.
- **Contrôles de profondeur** (au-delà de la simple présence) : (a) §28 — pour chaque fiche tueur des ch. 7-8, présence de 8 rubriques par mots-clés (pouvoir/données LIVE, counterplay, tiles, carte, macro, add-ons, perks/synergies, erreurs) ; (b) §29 — chaque carte a un titre de fiche dans `05_cartes.md` ; (c) §30 — chaque perk a une ligne dans l'inventaire compact (§9.7 ou §10.10).
- **Limite** : un contrôle par mots-clés prouve la présence d'une rubrique, pas sa qualité. La qualité relève des audits adversariaux (`kb/audit/pass14_*.md`, `pass17_*.md`).

## Résultat global

| Inventaire | Attendu | Trouvés dans le guide | Manquants | Dans le chapitre de référence | Mentionnés dans ≥ 2 fichiers |
|---|---|---|---|---|---|
| Tueurs (§28) | 44 | 44 | 0 | 44 (ch. 7-8) | 43 |
| Cartes 1v4 (§29) | 44 | 44 | 0 | 44 (ch. 5) | 17 |
| Perks survivant (§30) | 176 | 176 | 0 | 176 (ch. 9) | 87 |
| Perks tueur (§30) | 145 | 145 | 0 | 145 (ch. 10) | 77 |

**Verdict** : aucun élément manquant. Tous les tueurs, cartes et perks inventoriés sont présents dans leur chapitre de référence.

> Premier passage : « Rotten Fields » ressortait absent à cause d'une variante mal écrite dans le script (« Rotten Field » + frontière de mot). Corrigé ; la carte a bien sa fiche (`05_cartes.md` #### Rotten Fields). Le script a aussi été repassé en recherche sensible à la casse avec frontières de mot pour éliminer les faux positifs.

## §28 — Tueurs : présence et rubriques

| # | Tueur | Mentions (tous chapitres) | Fichiers | Mots de la fiche | Rubriques §28 non détectées |
|---|---|---|---|---|---|
| 1 | The Trapper | 30 | 01, 03, 04, 06, 07, 10 | 667 | perks/synergies |
| 2 | The Wraith | 22 | 03, 06, 07, 10, 11, 13 | 597 | carte, perks/synergies |
| 3 | The Hillbilly | 55 | 01, 02, 03, 04, 05, 06, 07, 10, 13 | 713 | perks/synergies |
| 4 | The Nurse | 68 | 02, 03, 04, 05, 06, 07, 09, 10, 11, 13 | 607 | — |
| 5 | The Shape | 36 | 01, 03, 04, 06, 07, 11, 13 | 854 | carte, perks/synergies |
| 6 | The Hag | 24 | 01, 04, 07, 10, 11 | 546 | perks/synergies |
| 7 | The Doctor | 26 | 01, 02, 03, 04, 07, 10, 11, 13 | 712 | perks/synergies |
| 8 | The Huntress | 53 | 01, 03, 04, 05, 06, 07, 10, 11, 12, 13, 14 | 513 | — |
| 9 | The Cannibal | 33 | 02, 03, 04, 06, 07, 10, 13 | 509 | carte, perks/synergies |
| 10 | The Nightmare | 16 | 04, 07, 10 | 609 | — |
| 11 | The Pig | 23 | 01, 03, 04, 05, 06, 07, 10, 13 | 463 | carte, perks/synergies |
| 12 | The Clown | 15 | 01, 03, 05, 07, 10 | 360 | carte, macro, perks/synergies |
| 13 | The Spirit | 45 | 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11 | 519 | carte |
| 14 | The Legion | 33 | 03, 04, 06, 07, 10, 11, 13 | 483 | carte, perks/synergies |
| 15 | The Plague | 19 | 04, 06, 07, 10, 13 | 453 | perks/synergies |
| 16 | The Ghost Face | 70 | 01, 03, 04, 05, 06, 07, 10, 11, 13 | 547 | carte, macro, perks/synergies |
| 17 | The Demogorgon | 41 | 03, 04, 05, 07, 10, 13 | 482 | carte, perks/synergies |
| 18 | The Oni | 45 | 01, 03, 04, 05, 06, 07, 10, 13 | 530 | carte, perks/synergies |
| 19 | The Deathslinger | 30 | 03, 04, 07, 10, 13 | 461 | carte, perks/synergies |
| 20 | The Executioner | 29 | 01, 03, 04, 05, 07, 10, 13 | 592 | carte, perks/synergies |
| 21 | The Blight | 80 | 01, 02, 03, 04, 05, 06, 07, 09, 10, 11, 13 | 519 | carte, perks/synergies |
| 22 | The Twins | 16 | 01, 07, 10 | 840 | — |
| 23 | The Trickster | 39 | 01, 03, 04, 05, 06, 08, 10, 12, 13 | 892 | perks/synergies |
| 24 | The Nemesis | 61 | 01, 03, 04, 05, 08, 10, 11, 13 | 803 | — |
| 25 | The Cenobite | 15 | 01, 04, 08, 11 | 778 | carte |
| 26 | The Artist | 12 | 04, 05, 08, 10, 11 | 708 | perks/synergies |
| 27 | The Onryō | 23 | 04, 05, 06, 08, 10, 11 | 717 | carte |
| 28 | The Dredge | 16 | 02, 05, 08, 10, 11 | 695 | — |
| 29 | The Mastermind | 33 | 01, 02, 03, 04, 08, 10, 11, 13 | 789 | — |
| 30 | The Knight | 38 | 01, 02, 03, 04, 05, 08, 10, 11, 13 | 795 | — |
| 31 | The Skull Merchant | 8 | 01, 08, 10 | 698 | carte |
| 32 | The Singularity | 15 | 01, 03, 04, 08, 10, 11, 13 | 600 | carte |
| 33 | The Xenomorph | 13 | 01, 04, 08, 10, 11 | 604 | carte, perks/synergies |
| 34 | The Good Guy | 30 | 01, 02, 03, 04, 08, 10, 13 | 638 | carte |
| 35 | The Unknown | 1 | 08 | 596 | perks/synergies |
| 36 | The Lich | 41 | 01, 02, 03, 04, 08, 10, 11, 12, 13 | 803 | carte |
| 37 | The Dark Lord | 14 | 03, 04, 08, 10, 13 | 678 | carte, perks/synergies |
| 38 | The Houndmaster | 15 | 04, 08, 10, 11 | 734 | — |
| 39 | The Ghoul | 28 | 03, 04, 05, 08, 10, 11, 12, 13 | 718 | carte |
| 40 | The Animatronic | 15 | 01, 04, 08, 10, 11 | 722 | — |
| 41 | The Krasue | 21 | 01, 03, 04, 06, 08, 10, 11, 12, 13 | 682 | — |
| 42 | The First | 14 | 01, 03, 04, 08, 10, 13 | 722 | erreurs |
| 43 | The Slasher | 23 | 01, 02, 04, 08, 10, 12, 13 | 700 | carte, perks/synergies |
| 44 | The Judgment | 26 | 01, 02, 06, 08, 13 | 1364 | — |

Fiches détectées : **44** (ch. 7 : 1-22, ch. 8 : 23-44). Fiches où une rubrique n'est pas détectée par mot-clé : **32** — The Trapper (perks/synergies); The Wraith (carte, perks/synergies); The Hillbilly (perks/synergies); The Shape (carte, perks/synergies); The Hag (perks/synergies); The Doctor (perks/synergies); The Cannibal (carte, perks/synergies); The Pig (carte, perks/synergies); The Clown (carte, macro, perks/synergies); The Spirit (carte); The Legion (carte, perks/synergies); The Plague (perks/synergies); The Ghost Face (carte, macro, perks/synergies); The Demogorgon (carte, perks/synergies); The Oni (carte, perks/synergies); The Deathslinger (carte, perks/synergies); The Executioner (carte, perks/synergies); The Blight (carte, perks/synergies); The Trickster (perks/synergies); The Cenobite (carte); The Artist (perks/synergies); The Onryō (carte); The Skull Merchant (carte); The Singularity (carte); The Xenomorph (carte, perks/synergies); The Good Guy (carte); The Unknown (perks/synergies); The Lich (carte); The Dark Lord (carte, perks/synergies); The Ghoul (carte); The First (erreurs); The Slasher (carte, perks/synergies)
Contrôle complémentaire dans les fiches de recherche `kb/research/batch4_killers_g1-g6.md` : **44** sections tueur, dont **44** avec les rubriques « Implications de carte » **et** « Perks fréquentes / synergies ». Les rubriques non détectées ci-dessus existent donc dans la base, mais **n'ont pas toutes été reprises dans les fiches condensées du guide** (surtout « carte » et « perks/synergies » au ch. 7). Écart de rédaction, pas de recherche : à combler lors d'une prochaine passe (voir ch. 15.7).

Remarque : les comptes de mentions de The First, The Unknown et The Judgment sont sous-estimés (seul le titre complet est cherché).

## §29 — Cartes : présence et fiche

| # | Royaume | Carte | Mentions | Fichiers | Fiche dédiée ch. 5 |
|---|---|---|---|---|---|
| 1 | The MacMillan Estate | Coal Tower | 9 | 04, 05 | oui |
| 2 | MacMillan | Groaning Storehouse | 6 | 05 | oui |
| 3 | MacMillan | Ironworks of Misery | 5 | 05 | oui |
| 4 | MacMillan | Shelter Woods | 12 | 04, 05 | oui |
| 5 | MacMillan | Suffocation Pit | 4 | 05 | oui |
| 6 | Autohaven Wreckers | Azarov's Resting Place | 8 | 05 | oui |
| 7 | Autohaven | Blood Lodge | 3 | 05 | oui |
| 8 | Autohaven | Gas Heaven | 7 | 05 | oui |
| 9 | Autohaven | Wreckers' Yard | 13 | 04, 05 | oui |
| 10 | Autohaven | Wretched Shop | 5 | 05 | oui |
| 11 | Coldwind Farm | Fractured Cowshed | 3 | 05 | oui |
| 12 | Coldwind | Rancid Abattoir | 3 | 05 | oui |
| 13 | Coldwind | Rotten Fields | 11 | 04, 05 | oui |
| 14 | Coldwind | The Thompson House | 2 | 05 | oui |
| 15 | Coldwind | Torment Creek | 5 | 05 | oui |
| 16 | Crotus Prenn Asylum | Disturbed Ward | 10 | 04, 05 | oui |
| 17 | Asylum | Father Campbell's Chapel | 4 | 05 | oui |
| 18 | Backwater Swamp | The Pale Rose | 12 | 04, 05 | oui |
| 19 | Swamp | Grim Pantry | 7 | 04, 05 | oui |
| 20 | Léry's Memorial Institute | Treatment Theatre | 16 | 04, 05 | oui |
| 21 | Red Forest | Mother's Dwelling | 6 | 05 | oui |
| 22 | Red Forest | The Temple of Purgation | 3 | 05 | oui |
| 23 | Springwood | Badham Preschool | 6 | 04, 05 | oui |
| 24 | Gideon Meat Plant | The Game | 17 | 04, 05 | oui |
| 25 | Yamaoka Estate | Family Residence | 4 | 05 | oui |
| 26 | Yamaoka | Sanctum of Wrath | 5 | 04, 05 | oui |
| 27 | Ormond | Mount Ormond Resort | 10 | 05 | oui |
| 28 | Ormond | Ormond Lake Mine | 7 | 05 | oui |
| 29 | Hawkins National Laboratory | The Underground Complex | 18 | 04, 05 | oui |
| 30 | Grave of Glenvale | Dead Dawg Saloon | 8 | 04, 05 | oui |
| 31 | Silent Hill | Midwich Elementary School | 2 | 05 | oui |
| 32 | Raccoon City | RPD East Wing | 4 | 05 | oui |
| 33 | Raccoon City | RPD West Wing | 4 | 05 | oui |
| 34 | Forsaken Boneyard | Eyrie of Crows | 3 | 05 | oui |
| 35 | Boneyard | Dead Sands | 7 | 05 | oui |
| 36 | Withered Isle | Garden of Joy | 15 | 04, 05 | oui |
| 37 | Withered Isle | Greenville Square | 3 | 05 | oui |
| 38 | Withered Isle | Freddy Fazbear's Pizza | 14 | 01, 05 | oui |
| 39 | Withered Isle | Fallen Refuge | 8 | 05 | oui |
| 40 | The Decimated Borgo | The Shattered Square | 6 | 05 | oui |
| 41 | Borgo | Forgotten Ruins | 8 | 05 | oui |
| 42 | Dvarka Deepwood | Toba Landing | 8 | 04, 05 | oui |
| 43 | Dvarka | Nostromo Wreckage | 9 | 01, 04, 05 | oui |
| 44 | Sleepless District | Trickster's Delusion | 10 | 05 | oui |

Hors inventaire 1v4 (vérifié traité à part dans `05_cartes.md` §5.2.3-5.2.5) : Lampkin Lane (retirée 9.4.0), RPD original (2v8 seulement), variantes II+ (Custom Games), pool 2v8.

## §30 — Perks : présence et ligne d'inventaire

### Perks survivant (176)

- Présentes dans le guide : **176/176**.
- Avec une ligne dans l'inventaire compact §9.7 : **176/176**.
- Citées dans un seul chapitre (le chapitre de référence) : **89** — c'est conforme au §30 (« toutes inventoriées et leur pertinence évaluée », pas forcément développées).

Détail par fiche de recherche :

| Fiche | Perks | Toutes présentes |
|---|---|---|
| `batch2_perks_surv_p23.md` | 21 | oui |
| `batch2_perks_surv_p24.md` | 23 | oui |
| `batch2_perks_surv_p25.md` | 27 | oui |
| `batch2_perks_surv_p26.md` | 24 | oui |
| `batch2_perks_surv_p27.md` | 27 | oui |
| `batch2_perks_surv_p28.md` | 25 | oui |
| `batch2_perks_surv_p29.md` | 25 | oui |
| `batch2_perks_surv_p30.md` | 4 | oui |

### Perks tueur (145)

- Présentes dans le guide : **145/145**.
- Avec une ligne dans l'inventaire compact §10.10 : **145/145**.
- Citées dans un seul chapitre (le chapitre de référence) : **68** — c'est conforme au §30 (« toutes inventoriées et leur pertinence évaluée », pas forcément développées).

Détail par fiche de recherche :

| Fiche | Perks | Toutes présentes |
|---|---|---|
| `batch3_perks_kill_p90.md` | 6 | oui |
| `batch3_perks_kill_p91.md` | 18 | oui |
| `batch3_perks_kill_p92.md` | 23 | oui |
| `batch3_perks_kill_p93.md` | 21 | oui |
| `batch3_perks_kill_p94.md` | 28 | oui |
| `batch3_perks_kill_p95.md` | 22 | oui |
| `batch3_perks_kill_p96.md` | 27 | oui |

## Conclusion

- Couverture d'inventaire (§28-30) : **complète** pour 44 tueurs, 44 cartes 1v4, 176 perks survivant et 145 perks tueur.
- §28 (rubriques par tueur) : 32 fiches condensées sur 44 ont au moins une rubrique non détectée dans le guide, surtout « carte » (23 fiches : 13 au ch. 7, 10 au ch. 8) et « perks/synergies » (23 fiches : 17 au ch. 7, 6 au ch. 8), plus « macro » (Clown, Ghost Face) et « erreurs » (The First), alors que les 44 fiches de recherche `batch4_killers_g*.md` les contiennent. Écart de rédaction à combler (reporté au ch. 15.7, condition 9).
- La couverture ne garantit pas la profondeur : 4 cartes restent peu documentées (Rotten Fields, Dead Sands, Freddy Fazbear's Pizza, Fallen Refuge, cf. `05_cartes.md`), RPD East/West et Trickster's Delusion ne sont pas mesurées, et 157 perks (89 survivant, 68 tueur) ne sont traitées que dans leur chapitre de référence, parfois par une seule ligne d'inventaire.
- The Cenobite n'a pas de copie locale de sa page wiki dans `kb/sources/wiki_killers/` (lue via l'outil) : sa traçabilité passe par `SOURCE_LEDGER_batches.md` (ligne 283).
- Art the Clown et Frank Stone (fichiers présents, tueurs **non sortis**, « upcoming ») sont hors inventaire LIVE, à juste titre.
