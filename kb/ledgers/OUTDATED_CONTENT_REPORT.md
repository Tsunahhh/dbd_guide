# OUTDATED_CONTENT_REPORT — contenu faux, obsolète ou trompeur du guide seed

Livrable §51-10. Version 3 (27/09/2026, soir : état FINAL après re-vérification complète).
- **Partie A** : repris du rapport de phase 0 (vérifié par sources, `kb/seed/audit_phase0.txt` p. 26-28).
- **Partie B** : consolidation FINALE des lots 2-11 après re-vérification du 27/09/2026 (pages wiki complètes via l'API MediaWiki + notes officielles BHVR archivées dans `kb/sources/patches/`), à partir des sections « Écarts avec le guide seed » de tous les `kb/research/batch*.md` et des audits `kb/audit/pass14_*.md`. Elle **remplace** les statuts PROUVÉ / PROBABLE / SUSPECT de `BATCH_2_4_SYNTHESIS.md` §2 (écrits quand le quota de recherche était épuisé).

Règle : seules les affirmations **tranchées par une source** figurent ici. Un soupçon n'est pas une correction.

## Partie A — Phase 0

### A1. Faux

| Réf. | Le guide dit | Valeur vérifiée (LIVE 10.1.2a) | Preuve |
|---|---|---|---|
| D-087 | Un gen solo ≈ 80 s | **90 s** (90 charges depuis 6.1.0) | wiki.gg Generators ; notes 6.1.0 |
| A-267 | 1 s de chase ≈ 1/3 de gen | ≈ **1/30 de gen** quand 3 survivants réparent chacun un gen | arithmétique sur 90 s |
| A-074 | Protections de décrochage inactives portes alimentées | Seule **Elusive** disparaît ; Endurance + 10 % Haste 10 s restent | notes 10.1.0 |
| A-283 | Contre un proxy camp, l'anti-camp décrochera l'allié | La jauge ne se remplit pas au-delà de **16 m** | wiki.gg Resolve ; notes 9.3.0 |
| A-190 | Offrandes de royaume cumulables | **20 % fixes**, doublons non cumulables depuis 9.0.0 | notes 9.0.0 |
| A-233 | Hyperfocus échappe aux DR | Les modificateurs de chance de skill check **sont soumis aux DR** (au sein du rôle survivant) ; seuls les add-ons sont exclus | notes 9.6.0 |
| D-092 | Les survivants voient les perks du tueur après la 1re chase | Seule l'**identité** du tueur est révélée ; son loadout reste caché jusqu'à la fin | notes 9.6.0 |
| D-063 | Casse de palette ≈ 2,6 s | **2,34 s** depuis 6.1.0 | notes 6.1.0 |
| A-059 | « Le vault annule l'élan » | Faux pour le **fast vault** (0,5 s), qui garde l'élan | wiki.gg Windows |
| A-054 | 10 m d'avance ≈ 17 s / 25 s | ≈ 16,3 s / 21,7 s avec Bloodlust, sans fente | calcul |
| ~~A-186~~ | « Anti-Exhaustion Syringe » | **ANNULÉ (27/09)** : ce nom existe bien en LIVE (renommage 9.3.0) — voir `AUDIT_PHASE0_ERRATA.md` | notes 9.3.0 |
| D-006 | 5 % au coup de pied depuis début 2025 | Depuis **7.5.0 (30/01/2024)** | wiki.gg 7.5.X |
| ch. 09 | « Surge (ex-Jolt) » | **Surge** est le nom d'origine et actuel ; Jolt n'a existé que de 5.3.0 à 7.3.3 | wiki.gg Surge |
| G11 | Nowhere to Hide 18 m en live | **24 m** (18 m = PTB 10.1.0) | notes 10.1.0 |
| A-245 | Vigil 30 % | **20/25/30 %** depuis 10.1.1 | notes 10.1.1 |
| A-237 | Will to Live / Off the Record couvrent « la minute » | WtL 40/50/60 s ; OTR 30/35/40 s | wiki.gg ; notes 9.2.2 |
| Halloween | Licence retirée le 16/01/2026 | **19/01/2026** | annonce officielle |
| G-001 | « Patch 10.1.2a, 26/09/2026 » | 10.1.2a = édition serveur du **17/09/2026** | BHVR KB 558 |

### A2. Données non étayées (à retirer ou dater)

SWF « en vocal » +3 / +8 pts (aucune source) · stats 2026 47 % vs 43 % (relais non vérifiable) · période officielle « oct. 2025 – févr. 2026 » (réelle : sept. 2025 – févr. 2026) · ~70 kill rates NightLight par tueur sans n · « la chase ne sert à rien » (corrélation → causalité) · kill rates de cartes issus de 3 fenêtres mélangées · « Coldwind favorable » · « 1 survivant perdu sur 3 est dans un casier » · « 76 / 80 % des votants BHVR » · build « 82 % d'évasion » (sous-échantillon) · reset MMR 10.1.0 (UNCERTAIN).

### A3. Suspicions infirmées — le seed avait raison (ne pas « corriger »)

70 s par phase de crochet · casse de palette 2,34 s · stun Will to Live 4 s · protections 10 s + Elusive · mending 10 s seul / 6 s par un allié · Boon posable sur un Hex (28 s) · coffre 8 s · 24 charges pour tous les med-kits · MMR fondé aussi sur les actions · Vigil 16 m · Bloodlust perdue en utilisant le pouvoir.

### A4. PTB 10.2.0 présenté comme LIVE

A-223, A-240, A-246, Trio C (ch. 05/06b) ; toute mention du Survivor Intent System comme disponible.

### A5. 2v8 utilisé en 1v4

Good Guy : buffs 9.4.2 propres au 2v8 cités comme counterplay 1v4.


## Partie B — Lots 2-11 après re-vérification (état FINAL, 27/09/2026 soir)

Méthode : chaque ligne vient d'un verdict **FAUX / OBSOLETE / PTB-comme-LIVE** d'une section « Écarts avec le guide seed » (lots 2, 3, 4, 5, 7, 8, 9) ou d'un audit pass 14, **confirmé par une page wiki lue en entier ou une note officielle BHVR archivée** (`kb/sources/patches/official_<id>.txt`, URL `https://forums.bhvr.com/dead-by-daylight/kb/articles/<id>`). « wiki » = page deadbydaylight.wiki.gg complète (API MediaWiki, 27/09/2026 ; pages tueurs archivées dans `kb/sources/wiki_killers/`, perks dans `kb/sources/wiki_perks_digest.md`). Les lots 6 et 11 n'ont pas de table d'écarts (brouillons sans comparaison ligne à ligne) ; leurs constats sur le seed sont ceux de la partie A (A-054, A-059, A-267).

Les lignes marquées **(déjà A)** figurent en partie A ; elles sont reconfirmées, pas nouvelles.

### B1. Erreurs prouvées

| # | Élément | Le seed dit | Valeur LIVE vérifiée (10.1.2a) | Preuve |
|---:|---|---|---|---|
| | **Perks survivant** | | | |
| 1 | Vigil (p24) | 8 statuts, 30/35/40 % | Exhausted seul, 20/25/30 % (10.1.1 ; correctif 10.1.2) | notes 557, 558 ; wiki Vigil **(déjà A-245)** |
| 2 | Repressed Alliance (p27) | 55/50/45 s de réparation requis | 40/35/30 s depuis 10.1.1 | note 557 ; wiki |
| 3 | Technician (p29) | bruit −8 m, raté +5/4/3 % | −16 m, +4/3/2 % depuis 10.1.0 (le seed p32 cite pourtant la retouche) | note 556 ; wiki |
| 4 | Quick Gambit (p26) | « les autres survivants voient votre aura » | **vous** voyez l'aura des autres survivants | wiki (page complète) ; note 523 pour les valeurs |
| 5 | Boon: Circle of Healing (p24) | « les blessés voient les auras des autres » | l'aura des blessés est révélée aux autres (effet inversé) | wiki (page complète), CONFLICT-P24-02 |
| 6 | Babysitter (p27, historique p32) | « rework 9.2.0 » | rework 9.2.0 reporté, PTB 9.3.0 annulé ; LIVE = version 8.1.0, Haste 10 % depuis 9.0.0 | notes 523 (« Postponed »), 529 (« Reverted »), 510 |
| 7 | Distortion, historique (p32) | « buff 9.5.0 (15 s) » | buff 30 → 15 s en **8.3.2** ; rien en 9.5.0 | wiki (change log) ; note 538 |
| 8 | Five Moves Ahead, PTB (p23) | « +50 % de vitesse après le lâcher » | effet inexistant ; « repartir 50 % plus tôt » est LIVE depuis 9.5.0, le PTB retire seulement les fenêtres | notes 538, 559 |
| | **Perks tueur** | | | |
| 9 | Nowhere to Hide (p90, fiche Knight) | 18 m depuis 10.1.0 | **24 m** (18 m = PTB 10.1.0) | note 556 ; wiki **(déjà G11)** |
| 10 | Pop Goes the Weasel, historique (p90) | « 20 → 15 % passé au LIVE en 9.2.0 » | changement **reporté** (« Postponed ») ; Pop inchangé jusqu'à sa réécriture 9.5.0 | note 523 |
| 11 | Surge (p91) | « Surge (ex-Jolt) » | Surge = nom d'origine et actuel | wiki **(déjà A, ch. 09)** |
| 12 | Weeping Wounds (p91) | Haemorrhage **et Mangled** 90 s | Haemorrhage seul, 90 s, puis 10/13/16 % | wiki |
| 13 | I'm All Ears (p92) | « action rapide (casier, vault) » | sauts rapides seulement | wiki |
| 14 | Distressing (p94) | bonus de Bloodpoints en Deviousness | bonus retiré en 8.4.0 (TR +20/25/30 % exact) | wiki (change log) |
| 15 | Hex: Huntress Lullaby (p94) | zone « Good » qui rétrécit | aucune réduction de zone ; pénalité de raté dès le début | wiki |
| 16 | Rancor (p94) | « vous montre tous les survivants 3 s » | cri + Loud Noise Notification 3 s ; aura du tueur donnée à l'Obsession 5/4/3 s | wiki |
| 17 | Leverage (ch8 l. 1452) | les survivants **décrochés** soignent moins vite | c'est le **sauveteur** (rework 8.3.0) ; la p96 est juste | wiki (CONFLICT-K96-02) |
| 18 | Perks du Cenobite (ch8) | Deadlock, Hex: Plaything, Scourge Hook: Gift of Pain | renommées en 9.0.0 : No Holds Barred, Hex: Fortune's Fool, Scourge Hook: Weeping Wounds (OBSOLETE) | note 510 |
| | **Tueurs (ch8)** | | | |
| 19 | Shape | Tombstone Piece / Judith's Tombstone « donnent le kill à la main » | kill à la main en Evil Incarnate = basekit depuis le rework 9.2.0 ; add-ons retravaillés (OBSOLETE) | note 523 ; wiki Michael Myers |
| 20 | Doctor | casser la LOS contre le Static Blast | il traverse les obstacles ; seul un casier protège | wiki Herman Carter |
| 21 | Hag | effacer les pièges à la lampe | supprimé en 6.7.0 (OBSOLETE) | wiki Lisa Sherwood |
| 22 | Hag | Disfigured Ear / Dead Hand améliorent le déclenchement | Disfigured Ear = Deafened 6 s ; Dead Hand absent de la liste LIVE | wiki Lisa Sherwood |
| 23 | Wraith | cloche audible sur toute la carte | tintement 24 m, souffle 40 m | wiki Philip Ojomo |
| 24 | Wraith | lampe / pétard interrompt la désoccultation | Lightburn supprimé en 6.7.0 (OBSOLETE) | wiki Philip Ojomo |
| 25 | Nurse | Matchbox = charge de blink plus rapide | 4,4 m/s et un seul blink | wiki Sally Smithson |
| 26 | Nurse | Ataxic Respiration = portée | fatigue −7 % | wiki Sally Smithson |
| 27 | Huntress | Infantry Belt = +2 hachettes | +3 % Haste 5 s au toucher ; aucun add-on de capacité | wiki Anna |
| 28 | Huntress | « plus haut kill rate global BHVR 2026 » | pick rate le plus large ; kill rate n°1 tous MMR = The Lich | KB 540 (texte ; CONFLICT-L4G2-01) |
| 29 | Nightmare | Z-Block = « sélection palettes ou snares selon version » | aura 3 s des survivants touchés ; bascule de pouvoir basekit depuis 8.5.0 | wiki Freddy Krueger |
| 30 | Spirit | respiration audible pendant la phase | inaudible en phase depuis 2.3.0 | wiki Rin Yamaoka |
| 31 | Spirit | Prayer Beads (add-on fort) | absent de la liste LIVE (OBSOLETE) | wiki Rin Yamaoka |
| 32 | Deathslinger | add-on « Gold Belt Buckle » | absent de la liste LIVE | wiki Caleb Quinn |
| 33 | Executioner | la cage se déplace si un survivant s'approche | relocalisation déclenchée par l'Executioner (10 m, 3,5 s) | wiki Pyramid Head (CONFLICT-B4G3-03) |
| 34 | Knight | Iridescent Company Banner = « fenêtres cassables » | bloque 25 s les fenêtres du tracé et celles vaultées par le chassé ; portes bloquées pour le chassé | wiki Tarhos Kovács |
| 35 | Knight | un garde qui patrouille près d'une palette la casse | casse **sur ordre** (1,8 s / 5 s) ; depuis 10.1.1 une palette baissée tôt force un contournement (abandon si détour > 48 m) | wiki Tarhos Kovács ; note 557 |
| 36 | Onryō | la cassette portée fait monter le Condemned | supprimé en 7.1.0 / 7.5.0 (OBSOLETE) | wiki Sadako Yamamura |
| 37 | Artist | un décor vertical épais coupe le corbeau | les Swarms traversent tous les obstacles | wiki Carmina Mora (CONFLICT-L4G4-02) |
| 38 | Artist | « add-ons de vitesse de corbeau » | aucun add-on de ce type | wiki Carmina Mora |
| 39 | Dredge | se cacher en casier remplit la jauge | c'est le **Dredge** caché qui la remplit (+6/s) | wiki The Dredge |
| 40 | Singularity | stunner pendant l'Overclock ne sert à rien | la tentative casse la palette mais le met en Overheat 3 s (−50 %, sans pods) | wiki HUX-A7-13 |
| 41 | Good Guy | le Scamper casse la palette en 1v4 (9.4.2) | casse = Innate Skill **2v8** ; en 1v4 seulement avec l'add-on Hard Hat | note 536 ; wiki Charles Lee Ray **(déjà A5)** |
| 42 | Unknown | taille « grande » | Average | wiki The Unknown |
| | **Objets (lot 5)** | | | |
| 43 | Combo « kit + Anti-Exhaustion Syringe + Styptic Agent » | cumul utile | la seringue consomme le kit : le Styptic Agent est perdu | wiki (add-ons de Med-Kit) |
| 44 | TIR Optic | élargit le faisceau | luminosité +30 %, aveuglement +15 %, aucun effet de largeur (seule Wide Lens élargit) | wiki (add-ons de Flashlight) |
| | **Tiles et cartes (lots 7-8)** | | | |
| 45 | Loops « infinies » | certaines loops sont infinies | aucune en LIVE : blocage de fenêtre après 3 vaults en 30 s (rechute), Bloodlust, palettes finies | wiki Windows ; audit phase 0 |
| 46 | Debris pile gym / Trash pile gym | deux tiles différentes | une seule tile (alias) | wiki Maze Tiles |
| 47 | T-L walls | « souvent sens horaire » | orientation RNG, aucune règle | wiki Maze Tiles |
| 48 | Treatment Theatre | entrées à configuration fixe | fenêtres fixes, **entrées RNG** (2.7.0) | wiki Treatment Theatre |
| 49 | Freddy Fazbear's Pizza | le ball pit remplace le shack | ball pit dans l'arcade quand le sous-sol est au shack | wiki Freddy Fazbear's Pizza |

Reconfirmés par les lots mais comptés en partie A seulement : offrandes de royaume cumulables (A-190, lot 5), kill rates par carte à 3 fenêtres mélangées (A2, lot 8), « 1 s de chase ≈ 1/3 de gen » (A-267), proxy camp et anti-camp (A-283), protections inactives portes alimentées (A-074) (lot 9).

**Décompte B1 : 49 erreurs prouvées, dont 5 déjà en partie A (n° 1, 9, 11, 41 et, pour mémoire, les 5 lignes ci-dessus hors tableau) → 44 nouvelles.** S'y ajoutent les 7 PTB-comme-LIVE nouveaux de B4.

### B2. Imprécisions à impact (valeur non fausse, mais conseil erroné si appliqué à la lettre)

Toutes prouvées par la page wiki complète (et la note officielle quand citée) ; détail dans la table d'écarts du lot.
- **Perks survivant** : Lithe / Cut Loose = Rushed Vault seulement (saut moyen non couvert) · Dance With Me = sauts **rapides de fenêtre** et sorties rapides de casier · Cross-Examination hors poursuite seulement (nerf 10.0.3) · Made for This : Haste **1/2/3 %** (pas 3 %) · Alert : aucun signal sonore, aura 3/4/5 s sur Break/Damage · Head On : Exhausted seulement sur stun réussi · Road Life : usage unique, « non Broken » · Slippery Meat / Up the Ante : débloquent l'auto-décrochage (9.0.0) · Teamwork: Toughen Up : stun **de palette** seulement · Mirrored Illusion : Exit Gate, désactivée après usage · Saboteur : 56 m autour du point de ramassage · Boil Over : 33 % de la progression **actuelle** · Flip-Flop : charge continue plafonnée à 40/45/50 % · Blood Pact : activation quand l'un est blessé · Fixated : vitesse de marche, pas Haste · Prove Thyself : plafond 18/24/30 % · Down to the Last : bonus du dernier survivant omis · Plunderer's Instinct : +50 % fixe · Ace in the Hole : 1er add-on jusqu'à Ultra Rare (pas « rare ou mieux ») · historique Off the Record : Endurance retirée en 9.2.0, rendue en 9.2.2 (pas « nerf 9.2.0 »).
- **Perks tueur** : Grim Embrace (tueur à **au moins** 16 m du crochet) · Lethal Pursuer (+2 s sur les auras **de survivants** seulement) · Dead Man's Switch (recharge 50 s omise, note 559) · Hex: Blood Favour (toute perte d'état de santé) · Tinkerer (une fois **par** gen) · Remember Me (+6 s/jeton, max 38/44/50 s) · Insidious (tant qu'immobile) · Dominance (1re interaction, aura du prop) · Hex: The Third Seal (2/3/4 **derniers** touchés) · Jagged Compass (4 crochets Fléau dès le début) · Game Afoot (casser ou **endommager un gen**) · Dark Devotion (blessée par n'importe quel moyen) · No Way Out (12 s + 6/9/12 s par jeton, max 36/48/60 s).
- **Tueurs** : Hillbilly « blessé = moins exposé » (trompeur) · Oni : 9.1.0 = nerf, buff 9.2.0 · Executioner : Final Judgement sur un Tormented déjà en 2e phase · Legion : Deep Wound en pause **en courant** ; le slash remplit toute la jauge · Plague : 1 fontaine corrompue dès le début · Pig : il faut fouiller 1 à 4 boîtes · Skull Merchant : accroupi **ou immobile** ; Hindered 10 % pour un Claw-trapped scanné seulement ; Undetectable 8 s au rappel (9.3.2) omis · Singularity : téléportation = Overheat · Lich : casse de palette en 4 s avec Vorpal Sword omise ; Ring / Pearl = −1 s / −2 s · The First / Slasher : murs **cassables** seulement · Slasher : épinglage seulement si le pic met au sol · Judgment : hotfix 10.1.2a, Heresy, réapparition des exilés ≥ 32 m (10.1.2) omis · Ghoul : marque retirée par le **mend** · Houndmaster : faire **tomber** la palette sur le chien · Onryō : ≤ 16 m de **n'importe quelle** TV allumée · Trickster : 3,86 → 3,53 → 3,16 m/s selon les lames.
- **Objets** : Anti-Exhaustion Syringe utilisable seulement pendant un soin · Odd Bulb (luminosité visuelle ; aveuglement 1 s fixe) · Dull / Skeleton Key : 1 charge consommée · Unique Wedding Ring : Obsession **initiale** seulement · Chalk Pouch / Salt sous-évalués (Luck = auto-décrochage).
- **Tiles / cartes** : fenêtre bloquée **après** le 3e vault (pas au 3e) · « god pallet se garde » et « ne jamais partir vers une dead zone » trop absolus · variantes : pas de mode classé, seulement le matchmaking public · liste 9.3.0 incomplète (Haddonfield) · Garden of Joy : paires exclusives RNG présentées comme fixes · Ormond Lake Mine : 3 + 2 **emplacements** de palettes · Mother's Dwelling 188 → 152 (7.4.0).
- **Macro (lot 9)** : régression stoppée par **5 %** de réparation (7.5.0), pas « brièvement » · règles absolues (qui décroche, un seul altruiste, purifier tout Hex, « soignez vite » contre la Plague).

### B3. Le seed avait raison (suspicions infirmées — ne pas « corriger »)

Suspicions venues de la mémoire du modèle, de résumés WebSearch obsolètes ou de l'audit phase 0, **infirmées** par la page complète ou la note officielle :

1. **Iron Will** 80/90/100 % (wiki).
2. **Built to Last** 14/12/10 s (note 9.1.0, 516, « Changes from PTB » ; le wiki affiche la valeur PTB 12/10/8 s).
3. **Huntress : 7 hachettes** de base depuis 7.6.0 (wiki Anna ; l'audit phase 0 se trompait, voir errata).
4. **Hillbilly TR 40 m** (8.6.0) et sprint ~10,12 m/s / 12 m/s en Overdrive.
5. **Blight TR 40 m** (8.6.0).
6. **Hag TR 24 m** (1.9.3).
7. **Pig TR 24 m** (9.1.0).
8. **Skull Merchant TR 24 m** (8.6.0).
9. **Onryō TR 24 m**, **Mastermind TR 40 m**.
10. **Ghoul TR 40 m**.
11. **Anti-Exhaustion Syringe** : nom LIVE depuis 9.3.0 (note 529) — A-186 annulé.
12. **Quick & Quiet** 25/20/15 s (8.6.0).
13. **Deception** 5 s, 25/20/15 s (8.6.0).
14. **Terminus** 35/40/45 s (note 510 ; le résumé montrait la valeur d'avant 9.0.0).
15. **Boon: Dark Theory** +3 % (8.7.0).
16. **Déjà Vu** aura permanente, 4/5/6 %.
17. **Eruption** −10 % (5 % = PTB 9.2.0 reporté, note 523).
18. **Ultimate Weapon** : déclencheur du seed correct (CONFLICT-K91-03).
19. **Hex: Blood Favour** 24/28/32 m, 15 s en LIVE (32 m = PTB).
20. **Hex: Retribution** : totem terne **ou** Hex, révélation 20 s.
21. **Knock Out** LIVE 6 m / Hindered 5 % ; l'« aura 32/24/16 m » date d'avant le rework 8.6.0.
22. **Superior Anatomy** 12 m, CD 25 s (seule la durée « 10 s » est PTB, voir B4).
23. **Any Means Necessary** sans recharge.
24. **Batteries Included** (5 %, 16 m) : la « désactivation aux portes » soupçonnée n'est pas prouvée (CONFLICT-K95-03).
25. **Blood Rush** 40/50/60 s (soupçon de l'audit).
26. **Plot Twist** buff 9.2.0 (+25 % de récupération, note 523).
27. **Hysteria** 30/35/40 s, CD 20 s ; **Hex: Thrill of the Hunt** 8/9/10 % ; **Deerstalker** 3 s LIVE (résumés contaminés par des valeurs anciennes ou PTB).
28. **Red Herring** 1 s, 25/20/15 s (8.6.0).
29. **Spirit** : phasing passif existe en LIVE.
30. **Legion** : le 5e Feral Slash met à terre, même sous Deep Wound.
31. **Oni** : 5 orbes par crochet depuis 9.2.0.
32. **Mastermind** : Virulent Bound **franchit** la palette (casse seulement avec Lab Photo) — c'est l'audit qui parlait de casse instantanée.
33. **Wraith** : sursaut 6,9 m/s pendant 1 s après désoccultation (hypothèse d'audit P14 réfutée).
34. **Artist** : s'accroupir évite le Killer Instinct des Swarms.
35. **Clown** : valeurs des patchs 9.1.0 et 9.2.0 (notes 516, 523 ; lacune de l'audit, pas du seed).
36. **Fog Vial** 4 charges depuis 9.5.0.
37. **Rotten Fields / Wreckers' Yard** : le shack contient toujours le sous-sol (page Killer Shack ; audit M02).
38. **Haddonfield / Lampkin Lane** : hors rotation le 19/01/2026 (FAQ 531), retrait des Custom Games en 9.4.0.
39. **Ace in the Hole** : 2e add-on ≤ Uncommon à 50/75/100 % (verdict « FAUX » du lot 2 annulé ; seul le 1er emplacement est imprécis, voir B2).

**Décompte B3 : 39 points** (s'ajoutent aux 11 de A3).

### B4. PTB présenté comme LIVE

| Élément (page seed) | Le seed présente comme LIVE | LIVE 10.1.2a | Source PTB |
|---|---|---|---|
| Nowhere to Hide (p90, fiche Knight) | 18 m | 24 m | PTB **10.1.0** (note 556) — **déjà G11** |
| Superior Anatomy (p94) | vault accéléré « pendant 10 s » | un seul vault | PTB 10.2.0 (note 559) |
| Machine Learning (ch8 l. 1483) | Haste 10 % | 8 % (p93 juste) | PTB 10.2.0 (note 559) |
| Unbound (ch8) | 5 % / 25 s | 7 % / 10 s (p96 juste) | PTB 10.2.0 (note 559, « was ») |
| Dark Arrogance (ch8) | stuns +25 % + récupération | +15 % (p96 juste) | PTB 10.2.0 (note 559) |
| Ravenous (ch8) | Exposed 80-90 s + Haste | Exposed 40/50/60 s (p96 juste) | PTB 10.2.0 (note 559) |
| Undone (ch8 l. 1590) | rework (jetons en accrochant) | version LIVE à jetons de skill check ratés | PTB 10.2.0 (note 559, wiki) |
| Survivor Intent System (ch. 6 règle 9, Trio C) | outil SoloQ disponible | n'existe pas en LIVE | PTB 10.2.0 (note 559 ; wiki Patch 10.2.0 : sortie « TBA ») |

Plus, en partie A : A-223, A-240, A-246, Trio C (ch. 05/06b). À l'inverse, les listes PTB de la p98 (Deerstalker 4 s, Fire Up 6/7/8 %, Nothing but Misery, Help Wanted, Knock Out 10 m, Distressing, Shattered Hope, Dominance, Game Afoot…) sont **correctement étiquetées PTB** par le seed.

Piège pour la suite : **51 des 327 pages de perks du wiki** affichent déjà le texte PTB 10.2.0 comme texte courant (`kb/sources/wiki_perks.json`, champ `current_flag`) ; la valeur LIVE se lit dans l'onglet d'historique ou les lignes « was » de la note 559 (voir `AUDIT_PHASE0_ERRATA.md`).

### B5. 2v8 utilisé en 1v4

| Élément | Le seed dit | Réalité 1v4 | Preuve |
|---|---|---|---|
| Good Guy, Scamper | casse les palettes (9.4.2) | Innate Skill 2v8 ; en 1v4 seulement avec Hard Hat | note 536 (section 2v8) ; wiki — **déjà A5** |
| Good Guy | « très buffé début 2026 » | les buffs 9.4.2 sont ceux du 2v8 | note 536 |
| Mother's Dwelling | taille « était 188-200 » | 188 → 152 en 7.4.0 ; 200 = version 2v8 | wiki Mother's Dwelling |
| Soin coopératif | 3 soigneurs simultanés | l'augmentation à 3 (9.4.2) est rangée **sous la section 2v8** de la note ; 1v4 = 2 selon le wiki | note 536 ; lot 12 Q1 (`batch12_mechanics_open.md`, en cours) — CONFLICT-001, **probable, pas encore tranché** |

### B6. Décompte final (partie B)

| Catégorie | Nombre | dont déjà en partie A |
|---|---:|---:|
| Erreurs prouvées (B1) | 49 | 4 (Vigil, Nowhere to Hide, Surge, Good Guy) |
| PTB présenté comme LIVE (B4) | 8 | 1 (Nowhere to Hide, compté aussi en B1) |
| 2v8 dans le 1v4 (B5) | 3 prouvés + 1 probable | 1 (Good Guy) |
| Le seed avait raison (B3) | 39 | — |

Les verdicts « PROBABLE » et « SUSPECT » de `BATCH_2_4_SYNTHESIS.md` §2 sont **tous tranchés** : ils sont soit ici (B1, B2, B4), soit dans B3.
