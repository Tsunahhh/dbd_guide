# CONFLICT_REGISTER

Règle (mission §22) : ne jamais choisir arbitrairement. Chaque conflit garde ses deux sources, les dates, une hypothèse et une résolution ou **UNRESOLVED**.
Les 33 conflits de la phase 0 étaient dans des fichiers `research/batch1_*.md` **non conservés** dans le dépôt : seuls ceux cités dans le rapport PDF sont reconstruits ici. Les conflits des lots 2-4 sont dans chaque fichier `kb/research/batch*.md` (section « Conflits ») et résumés en bas de ce registre.

## Conflits de la phase 0 (reconstruits depuis `kb/seed/audit_phase0.txt`)

#### CONFLICT-001 : nombre maximal de soigneurs sur un même survivant
- Source A : wiki.gg Health States — 2 soigneurs max (+2 c/s, sans pénalité).
- Source B : guide seed — 3 soigneurs.
- Hypothèse : le PTB 9.4.0 a testé un soin coop à 3 (CONFLICT-G05) ; le seed a pu reprendre une valeur PTB.
- Résolution : **UNRESOLVED** (à trancher par test en jeu ou patch notes 9.4.0 LIVE).

#### CONFLICT-002 : vitesse de rampement
- Source A : wiki.gg Movement Speeds — 0,7 m/s montant jusqu'à 1,05 m/s selon le temps passé au sol.
- Source B : notes PTB 9.3.0 — 0,7 → 1,05 m/s faisait partie du paquet anti-slug **annulé** (« Reverted the Slugging changes », 9.3.0).
- Hypothèse : le wiki a gardé une valeur PTB.
- Résolution : provisoire **0,7 m/s LIVE**, 1,05 = UNCERTAIN.

#### CONFLICT-003 : taux de base de la jauge anti-camp (Resolve) après 9.3.0
- Source A : wiki.gg Resolve — +1 c/s de base, « significant reduction » en 9.3.0.
- Source B : valeur « ~50 % » de réduction citée sans source primaire lue.
- Résolution : **UNRESOLVED** ; seuls 16 m, grâce 7 s, multiplicateurs ×1/×2/×4 sont VERIFIED_PRIMARY.

#### CONFLICT-G04 : remise à zéro du MMR en 10.1.0
- Source A : all.gg / AddictingGames (23/08/2026) : « all MMR will be reset ».
- Source B : notes officielles 10.1.0 muettes ; CM Mandy (26/08/2026) : « It will take a number of matches to recalculate… ».
- Résolution : **UNCERTAIN** — refonte du calcul VERIFIED_PRIMARY, reset non confirmé par source primaire.

#### CONFLICT-G05 : soin coopératif à 3 (PTB 9.4.0)
- Testé en PTB 9.4.0 ; statut LIVE non confirmé. Lié à CONFLICT-001. **UNRESOLVED**.

#### CONFLICT-G11 : portée de Nowhere to Hide
- Source A : guide seed — 18 m « en live ».
- Source B : notes 10.1.0 LIVE — 24 m autour du gen endommagé (18 m = PTB 10.1.0).
- Résolution : **24 m LIVE** (VERIFIED_PRIMARY). Le seed est faux.

#### CONFLICT-R2-02 : Off the Record donne-t-il l'Endurance ?
- Historique : 9.2.0 retire l'Endurance ; 9.2.2 la rend (durée 30/35/40 s) ; PTB 9.3.0 revert de la perk annoncé.
- Résolution : à trancher par le lot 2 (voir `batch2_*` et résumé ci-dessous).

#### CONFLICT-ST-02 / ST-04 / ST-06 : statistiques
- ST-02 : niveau global de kill rate NightLight ~13-18 pts sous l'officiel.
- ST-04 : pages NightLight incohérentes entre elles.
- ST-06 : sommes kill + escape ≠ 100 % dans les billets officiels (définitions non publiées).
- Résolution : **pas de niveau absolu tiré de NightLight** ; tendances relatives datées seulement.

#### Pain Resonance / Eruption / Pop / Ruin / DMS en 9.2.0 (signalé en OPEN_QUESTIONS R3-11)
- Note amont du seed : nerfs Pain Res / Eruption testés PTB 9.2.0 non passés en LIVE ; Ruin/Pop/DMS changés.
- wiki.gg 9.2.X (lu en phase 0) : les changements Pop, Eruption, Ruin et DMS du PTB 9.2.0 auraient été annulés en LIVE.
- Résolution : à trancher par le lot 3.

## Conflits des lots 2-4 (27/09/2026)

Voir la section « Conflits » de chaque fichier `kb/research/batch2_*`, `batch3_*`, `batch4_*`. Synthèse : `kb/ledgers/BATCH_2_4_SYNTHESIS.md` (écrit à la fin des lots, **avant** la re-vérification : ses statuts sont périmés). **État final : section suivante.**

## Résolutions du 27/09/2026

Détail et sources : `kb/research/batch12_mechanics_open.md` (lot 12 ; notes officielles + wiki.gg lu en entier via l'API, historique des révisions compris).

| Conflit | Résolution | Preuve clé | Confiance |
|---|---|---|---|
| **CONFLICT-001** / **G05** : soigneurs simultanés | **Résolu : 2 en 1v4** ; **3 en 2v8 seulement** | La ligne « Cooperative Healing … to 3 (was 2) » est dans la section **2v8** du PTB 9.4.0 (art. 533) et de la 9.4.2 (art. 536) ; wiki Health States : « one or two other Survivors » | VERIFIED_MULTI_SOURCE |
| **CONFLICT-002** : vitesse de rampement | **Résolu : 0,7 m/s constante** ; pas de récupération en rampant sans Tenacity | 9.2.0 « Postponed » ; 9.3.0 « Reverted the Slugging changes » ; 9.3.0 Tenacity « Re-added the ability to recover while crawling » ; wiki : « Recovery progress pauses whenever a dying Survivor is crawling » | VERIFIED_MULTI_SOURCE |
| **CONFLICT-003** : taux de base Resolve | **Résolu : +1 c/s nominal, poids de distance divisés par 2** (×2,5 à ≤ 4 m, ×1 à 10 m, ×0,375 à 15 m, ×0 à 16 m) ; face camp ≤ 4 m ≈ 22,5 s de jauge (≈ 29,5 s après l'accrochage), 10 m ≈ 37,5 s, 15 m ≈ 79 s ; ±10 % | Wiki Hooks rév. 168478 (29/10/2025, avant 9.3.0) : ×5/×2/×0,75/×0,5 ; wiki Resolve après 9.3.0 : ×2,5/×1/×0,375/×0 ; note 9.3.0 « roughly 50 % » | STRONG_SECONDARY (calcul sur base VP) |
| **CONFLICT-L2P23-04** : Off the Record désactivée portes alimentées | **UNRESOLVED, penche oui** | Description wiki réécrite avec la clause le 07/10/2025 (jour de la 9.2.2, rév. 167681) ; mais notes 9.2.0 (clause retirée) et 9.2.2 (muette), module History wiki sans clause | UNCERTAIN |
| **CONFLICT-L12-04** (nouveau) : Elusive de décrochage et action voyante | **UNRESOLVED** | Wiki Hooks (10/08/2026) : annulée avec les autres protections — simple ajout d'Elusive à une phrase existante ; wiki Elusive : seulement coup ou mise au sol ; notes 10.1.0 muettes | UNCERTAIN |
| Question ouverte R2-08 / R3-1 : catégories DR | **Partiellement résolu** : vitesse de skill check soumise (correctif 9.6.0) ; Haste de perks et vitesse de vault soumises (notes de dev 10.2.0) ; liste complète **dans le manuel en jeu** (9.6.1), non transcrite | Notes 9.6.0 (544), 9.6.1 (545), PTB 10.2.0 (559) | VERIFIED_PRIMARY (règles) / UNRESOLVED (liste) |
| Question ouverte : Hillbilly et palettes sans add-on | **Résolu : oui**, casse en ~1 s avec le pouvoir de base ; LoPro Chains ne fait que prolonger le sprint | 9.5.0 : Hillbilly listé « Special-break » ; wiki Max Thompson Jr. et Pallets (1 s) | VERIFIED_PRIMARY / STRONG_SECONDARY (1 s) |
| Question ouverte A-044 : vitesse de portage | **3,68 m/s** (92 %), tous tueurs | Wiki Movement Speeds ; aucune note contraire | STRONG_SECONDARY |
| Boost au coup | **1,8 s** (6.1.0) ; ×1,65 → 6,6 m/s | Notes 6.1.0 (via wiki) ; ×1,65 : wiki seul | VERIFIED_MULTI_SOURCE (durée) / STRONG_SECONDARY (×1,65) |

Restent **UNRESOLVED** (aucune source trouvée) : durée du ramassage (seul le plafond de bonus +42 %, 8.6.x, est connu), durée du saut dans la trappe, plafond de Haste, perte de Bloodlust sur stun/aveuglement (absente des listes des deux wikis), portée des grognements, durée de vie des flaques de sang.

## Conflits des lots 2-11 après re-vérification (état FINAL, 27/09/2026 soir)

Liste compacte tirée des sections « Conflits » de tous les `kb/research/batch*.md` après la re-vérification sur pages wiki complètes et notes officielles archivées (`kb/sources/patches/official_<id>.txt` = `https://forums.bhvr.com/dead-by-daylight/kb/articles/<id>`), plus le lot 12 (`batch12_mechanics_open.md`) qui tranche des conflits de phase 0. Les lots 6, 9 et 11 n'ont ouvert aucun conflit (aucune source externe) ; ils renvoient à CONFLICT-001/002/003. Le détail (sources A/B, hypothèse) reste dans chaque fichier de lot.

Légende : **RÉSOLU** (preuve) · **UNRESOLVED** · **PARTIEL** (compté comme ouvert).

### Mise à jour des conflits de phase 0

| ID | Sujet | Statut |
|---|---|---|
| CONFLICT-001 / G05 | Soigneurs simultanés | **RÉSOLU** — 2 en 1v4, 3 en 2v8 seulement (notes 536 et PTB 533, ligne sous l'en-tête « 2v8 » ; wiki Health States) — L12-01 |
| CONFLICT-002 | Vitesse de rampement | **RÉSOLU** — 0,7 m/s constant ; 1,05 = PTB 9.3.0 annulé (notes 523, 529) — L12-02 |
| CONFLICT-003 | Taux de base de l'anti-camp après 9.3.0 | **RÉSOLU (STRONG_SECONDARY)** — +1 c/s, poids de distance divisés par 2 (historique wiki Resolve + note 529 « roughly 50 % ») — L12-03 |
| CONFLICT-G04 | Reset du MMR en 10.1.0 | UNRESOLVED (aucune source primaire) |
| CONFLICT-G11 | Nowhere to Hide | RÉSOLU — 24 m LIVE (note 556) |
| CONFLICT-R2-02 | Endurance d'Off the Record | **RÉSOLU** — présente, 30/35/40 s (notes 525, 529) |
| 9.2.0 Pop / Eruption / Ruin / DMS | Changements LIVE | **RÉSOLU** — Ruin, DMS, Oppression LIVE ; Pop et Eruption reportés (note 523) — L3P90-01 |
| CONFLICT-ST-02 / ST-04 / ST-06 | Statistiques | UNRESOLVED (inchangé) |

### Lot 2 — perks survivant (30 conflits : 24 résolus, 6 ouverts)

| ID | Sujet | Statut |
|---|---|---|
| L2P23-01 | Cooldown LIVE de Windows of Opportunity | RÉSOLU — aucun (wiki 5.3.0) ; 40/35/30 s = PTB 10.2.0 (note 559) |
| L2P23-02 | « Repartir 50 % plus tôt » de Five Moves Ahead | RÉSOLU — LIVE depuis 9.5.0 (note 538) |
| L2P23-03 | Haste d'Adrenaline | RÉSOLU — 4 s (note 556) |
| R2-02 (lot 1) | Endurance d'Off the Record | RÉSOLU — voir phase 0 |
| L2P23-04 | Off the Record désactivée portes alimentées | **UNRESOLVED** (penche oui, lot 12 Q5 ; = L12-05) |
| P24-01 | Shoulder the Burden : Exposed ou Broken | RÉSOLU — Exposed LIVE ; Broken = PTB (note 559) |
| P24-02 | Circle of Healing : qui voit quelles auras | RÉSOLU — aura des blessés révélée aux autres (wiki) |
| P24-03 | Circle of Healing : date du passage à 50/75/100 % | **UNRESOLVED** (date seulement, sans impact LIVE) |
| P25-01 | Haste de Breakout | RÉSOLU — 6/8/10 % (wiki, 8.7.0) |
| P25-02 | Vitesse de Self-Care | RÉSOLU — 25/30/35 %, sans bonus de kit (wiki) |
| P25-03 | Cooldown d'Any Means Necessary | RÉSOLU — aucun (wiki ; note 516) |
| P25-04 | Durée de Built to Last | RÉSOLU — 14/12/10 s (note 516) ; le wiki affiche la valeur PTB |
| P25-05 | Cooldown de Dance With Me (rang I) | **UNRESOLVED** |
| B2P26-01 | No One Left Behind LIVE | RÉSOLU — 50/75/100 %, +10 % (wiki 8.4.0 ; note 559 « was ») |
| B2P26-02 | Bound by Obsession LIVE | RÉSOLU — 2/4/6 %, 3 s (historique wiki ; note 559) |
| B2P26-03 | Lightweight : espacement des griffures | **UNRESOLVED** |
| P27-01 | Babysitter : historique et version LIVE | RÉSOLU — notes 523, 529, 510 |
| P27-02 | Durée de Clairvoyance | RÉSOLU — 10/11/12 s (note 523) |
| P27-03 | Fast Track : 5 % ou 5 charges | **UNRESOLVED** (écart ≤ 0,6 point) |
| 2-P28-01 | Durée de Last Stand | RÉSOLU — 120/105/90 s (note 516) |
| 2-P28-02 | Disponibilité de Last Stand en 2025 | RÉSOLU (HISTORICAL ; notes 517, 520) |
| 2-P28-03 | Teamwork: Throw Down, aura du tueur | **UNRESOLVED** (retenue par la note 516, absente du wiki) |
| P29-01 | Pénalité de Technician | RÉSOLU — 4/3/2 % (note 556) |
| P29-02 | Portée de Premonition au PTB | RÉSOLU — 32 m, PTB (note 559) |
| P29-03 | This Is Not Happening au PTB | RÉSOLU — PTB (note 559) |
| P29-04 | Red Herring | RÉSOLU — 1 s, 25/20/15 s (wiki 8.6.0) |
| P29-05 | Ace in the Hole | RÉSOLU — valeurs 8.4.0 (wiki) |
| P29-06 | Low Profile, usage unique ou multiple | RÉSOLU — redéclenchable (note 538, wiki) |
| L2P30-01 | Portée du soin de Road Life | RÉSOLU — +100 %, soin d'autrui inclus en LIVE (note 523, wiki) |
| L2P30-02 | Seuil de jetons de Road Life | RÉSOLU — 6/5/4 (note 523, « Changes from PTB ») |

### Lot 3 — perks tueur (24 conflits : 21 résolus, 3 ouverts)

| ID | Sujet | Statut |
|---|---|---|
| L3P90-01 | Changements LIVE 9.2.0 (Pop, Eruption, Ruin, DMS) | RÉSOLU — note 523 |
| L3P90-02 | Le cri de Pain Resonance révèle-t-il la position ? | RÉSOLU — pas de Loud Noise Notification (wiki) |
| L3P90-03 | Fenêtre de Pop | RÉSOLU — 35/40/45 s (note 538) |
| K91-01 | Eruption 10 % ou 5 % | RÉSOLU — 10 % (note 523) |
| K91-02 | Recharge LIVE de Dead Man's Switch | RÉSOLU — 50 s (note 559, « was ») |
| K91-03 | Ultimate Weapon, déclencheur | RÉSOLU — version du seed (wiki) |
| 3P92-01 | Persistance de Terminus | RÉSOLU — 35/40/45 s (wiki, note 510) |
| 3P92-02 | Plafond de jetons de Coup de Grâce | RÉSOLU — 5 détenus, 10 par partie (wiki) |
| 3P92-03 | Rayon de Hex: Blood Favour | RÉSOLU — LIVE 24/28/32 m ; 32 m = PTB (note 559) |
| K93-01 | Aura de Deerstalker | RÉSOLU — 3 s LIVE, 4 s PTB (note 559) |
| K93-02 | Hex: Thrill of the Hunt | RÉSOLU — 8/9/10 % (note 556) |
| L3-94-01 | Undetectable d'Insidious | RÉSOLU — tant qu'immobile ; 6/7/8 s = PTB (note 559) |
| L3-94-02 | Superior Anatomy | RÉSOLU — 12 m, CD 25 s ; 10 s = PTB (notes 510, 559) |
| L3-94-03 | Distressing, palier 2 du TR | **UNRESOLVED** (25 % wiki / 23 % note 559) |
| L3-94-04 | Knock Out, effet d'aura | RÉSOLU — antérieur au rework 8.6.0 (wiki) |
| L3-94-05 | Textes PTB affichés comme LIVE (Distressing, Shattered Hope, Dissolution) | RÉSOLU — LIVE reconstruit depuis la note 559 |
| K95-01 | Valeurs de Hysteria | RÉSOLU — 30/35/40 s, CD 20 s (wiki 8.6.0) |
| K95-02 | Franklin's Demise, consommation de l'objet | RÉSOLU — plus de perte de charges (note 516) |
| K95-03 | Batteries Included désactivée aux portes ? | **UNRESOLVED** |
| K96-01 | Valeurs PTB présentées comme LIVE (ch8) | RÉSOLU — ch8 = PTB 10.2.0 (note 559) |
| K96-02 | Cible de Leverage | RÉSOLU — le sauveteur (wiki) |
| K96-03 | Game Afoot, déclencheur | RÉSOLU — casser ou endommager un gen (wiki, note 559) |
| K96-04 | THWACK!, jetons | RÉSOLU (wiki) |
| K96-05 | Contenu du rework PTB d'Undone | **UNRESOLVED** (sans impact LIVE) |

### Lot 4 — tueurs (35 conflits : 28 résolus, 7 ouverts)

| ID | Sujet | Statut |
|---|---|---|
| L4G1-01 | TR du Hillbilly | RÉSOLU — 40 m (wiki) |
| L4G1-02 | Sprint du Hillbilly | RÉSOLU — 10,12 / 12 m/s (wiki) |
| L4G1-03 | TR de la Hag | RÉSOLU — 24 m (wiki) |
| L4G1-04 | Sursaut du Wraith | RÉSOLU (probable) — 6,9 m/s 1 s (wiki) |
| L4G1-05 | Casse de palette du Hillbilly sans add-on | **RÉSOLU par le lot 12 Q10** — oui, 1 s (note 538 « Special-break » ; wiki) |
| L4G2-01 | Huntress, kill rate vs pick rate | RÉSOLU — pick rate (KB 540) |
| L4G2-02 | TR de la Pig | RÉSOLU — 24 m (wiki) |
| L4G2-03 | Hachettes de la Huntress | RÉSOLU — 7 (wiki) |
| L4G2-04 | Antidote du Clown | RÉSOLU — 12 % (notes 516, 523) |
| L4G2-05 | 5e Feral Slash du Legion | RÉSOLU — met à terre (wiki) |
| L4G2-06 | Phasing passif de la Spirit | RÉSOLU — existe (wiki) |
| B4G3-01 | TR de la Blight | RÉSOLU — 40 m (wiki) |
| B4G3-02 | Force des Twins au haut MMR | **PARTIEL** — confirmé janv.-mars 2025 (KB 503) ; 2026 illisible (infographie) |
| B4G3-03 | Final Judgement / cages de l'Executioner | RÉSOLU (wiki) |
| B4G3-04 | Coût d'une casse pour la Blight à ≤ 3 tokens | **UNRESOLVED** (partiel ; note 546) |
| B4G3-05 | Délai des orbes de l'Oni après décrochage | **UNRESOLVED** |
| B4G3-06 | Nature du changement Oni 9.1.0 | RÉSOLU — nerf ; buff en 9.2.0 (notes 516, 523) |
| B4G3-07 | Undetectable des add-ons du Demogorgon | **UNRESOLVED** (Shred 19 m/s résolu, note 544) |
| L4G4-01 | Durée de No Way Out | RÉSOLU — 12 s + 6/9/12 s par jeton, max 36/48/60 s (wiki) |
| L4G4-02 | Artist : les murs protègent-ils ? | RÉSOLU — non (wiki) |
| L4G4-03 | TR de l'Onryō et du Mastermind | RÉSOLU — 24 m / 40 m (wiki) |
| L4G4-04 | Eruption | RÉSOLU — 10 % (note 523) |
| L4G4-05 | Pentimento : totems ravivés bénissables ? | **UNRESOLVED** |
| L4G4-06 | Casse « instantanée » par Virulent Bound et les gardes du Knight | RÉSOLU — non (wiki ; note 557) → errata |
| L4G5-01 | TR du Skull Merchant | RÉSOLU — 24 m (wiki) |
| L4G5-02 | TR du Xenomorph en Crawler | RÉSOLU — 32 m, 24 m en Crawler (wiki) |
| L4G5-03 | Scamper de Good Guy en 1v4 | RÉSOLU — Hard Hat requis (note 536, wiki) |
| L4G5-04 | Casse de palette par le Lich | RÉSOLU — 4 s avec Vorpal Sword (wiki) |
| L4G5-05 | Skull Merchant : wiki vs note 9.3.0 | RÉSOLU — la note 529 prime |
| B4G6-01 | Ghoul « > 60 % de kill » | **UNRESOLVED** (non étayé par le texte de KB 540 ; infographie illisible) |
| B4G6-02 | The First « n°2 en kill rate » | **UNRESOLVED** (même raison) |
| B4G6-03 | TR du Ghoul | RÉSOLU — 40 m (wiki) |
| B4G6-04 | Coroner's Coffee (Slasher) | RÉSOLU — 13 % depuis 10.0.1 (note 551, wiki) |
| B4G6-05 | Chien du Houndmaster, fenêtres et palettes | RÉSOLU — il vaulte les deux (wiki) |
| B4G6-06 | Ravenous (Krasue) | RÉSOLU — 40/50/60 s LIVE (note 559) |

### Lot 5 — objets (6 conflits : 2 résolus, 4 ouverts)

| ID | Sujet | Statut |
|---|---|---|
| L5-01 | Nom de la seringue | RÉSOLU — Anti-Exhaustion Syringe (note 529, wiki) ; A-186 annulé |
| L5-02 | Charges de l'Alex's Toolbox | **UNRESOLVED** (18 retenu) |
| L5-03 | Charges d'une fouille de coffre (8 vs 10) | **UNRESOLVED** |
| L5-04 | Probabilités de coffre | **UNRESOLVED** (HISTORICAL / COMMUNITY_OBSERVATION) |
| L5-05 | Taille du nuage de Fog Vial | RÉSOLU — 8 m (source primaire, note 538) |
| L5-06 | Soin altruiste au kit : 1,5 état ? | **UNRESOLVED** en jeu (1,5 retenu, wiki) |

### Lot 7 — tiles (6 conflits : 4 résolus, 2 ouverts)

| ID | Sujet | Statut |
|---|---|---|
| L7-01 | Exclusivités de maze tiles vs pool commun 9.2.0 | **UNRESOLVED** (= B8-03) |
| L7-02 | Distance minimale entre palettes | **UNRESOLVED** (14-20 m retenu, SS) |
| L7-03 | Liste des casses instantanées | RÉSOLU — wiki Pallets + note (Shape) → errata |
| L7-04 | Tueurs qui vaultent les palettes | RÉSOLU (STRONG_SECONDARY, pages tueurs) |
| L7-05 | Descriptions PTB affichées comme courantes | RÉSOLU — valeurs PTB exclues ; LIVE de Windows of Opportunity établie par L2P23-01 |
| L7-06 | Chien du Houndmaster et palettes | RÉSOLU par B4G6-05 |

### Lot 8 — cartes (7 conflits : 3 résolus, 4 ouverts)

| ID | Sujet | Statut |
|---|---|---|
| B8-01 | Totem garanti de Dead Dawg Saloon | RÉSOLU — supprimé (note 529) |
| B8-02 | Réductions de taille 9.2.0 (Torment Creek, Disturbed Ward) | **UNRESOLVED** (attribution seulement) |
| B8-03 | Exclusivités de maze tiles | **UNRESOLVED** (= L7-01) |
| B8-04 | Date de retrait de Haddonfield | RÉSOLU — 19/01/2026 puis 9.4.0 (FAQ 531) |
| B8-05 | Nombre de cartes 2v8 | RÉSOLU — 26 |
| B8-06 | Désactivation de Badham / Grim Pantry / Pale Rose | **UNRESOLVED** (sans impact LIVE) |
| B8-07 | Hauteur des murs à Autohaven | **PARTIEL** (vérification visuelle requise) |

### Lot 12 — mécaniques (5 conflits : 3 résolus, 2 ouverts)

| ID | Sujet | Statut |
|---|---|---|
| L12-01 | Soigneurs simultanés (= 001 / G05) | RÉSOLU — 2 en 1v4 (notes 536, 533 ; wiki) |
| L12-02 | Rampement (= 002) | RÉSOLU — 0,7 m/s (notes 523, 529) |
| L12-03 | Taux de base Resolve (= 003) | RÉSOLU (SS) — historique wiki + note 529 |
| L12-04 | Elusive de décrochage et action voyante | **UNRESOLVED** (wiki Hooks vs wiki Elusive ; note 556 muette) |
| L12-05 | Off the Record et portes (= L2P23-04) | **UNRESOLVED** (penche oui) |

### Décompte final

| | Blocs | Résolus | Ouverts (dont partiels) |
|---|---:|---:|---:|
| Lot 2 | 30 | 24 | 6 |
| Lot 3 | 24 | 21 | 3 |
| Lot 4 | 35 | 28 | 7 |
| Lot 5 | 6 | 2 | 4 |
| Lot 7 | 6 | 4 | 2 |
| Lot 8 | 7 | 3 | 4 |
| Lot 12 | 5 | 3 | 2 |
| **Total lots 2-12** | **113** | **85** | **28** |

Sans doublons (L12-05 = L2P23-04 ; B8-03 = L7-01) : **26 conflits distincts encore ouverts**, dont aucun ne change une valeur LIVE centrale d'une perk ou d'un pouvoir ; les plus utiles à trancher en jeu sont Elusive / action voyante (L12-04), Off the Record aux portes (L2P23-04), les tokens de la Blight (B4G3-04) et les exclusivités de tiles (L7-01). Phase 0 : restent ouverts G04 (MMR) et ST-02/04/06 (statistiques).
