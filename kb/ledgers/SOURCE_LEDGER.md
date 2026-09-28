# SOURCE_LEDGER — registre des sources

Livrable §51-8. État FINAL au 27/09/2026 (soir), après la re-vérification complète des lots 2-12 ; **mis à jour le 28/09/2026** (9 notes PTB et page wiki du Cenobite archivées ; passe 18).
Référence de version : **LIVE 10.1.2a** (édition serveur du 17/09/2026). **PTB 10.2.0** (ouvert le 15/09/2026) **non LIVE**.

Ce registre dit **quelles sources ont réellement été lues, comment, et ce qui n'a pas pu l'être**. Le détail URL par URL, fichier par fichier, est dans `kb/ledgers/SOURCE_LEDGER_batches.md`, régénéré par `python3 kb/tools/summarize_batches.py` (346 URL distinctes au 27/09/2026 soir). Attention : l'en-tête de ce fichier généré dit encore « toutes consultées via le résumé de WebSearch » ; c'est vrai pour la **première passe** des lots 2-4 seulement. La colonne « Ligne d'origine » indique pour chaque source si elle a ensuite été lue en entier (« lu en local », « API », `official_<id>.txt`).

## 0. Historique des méthodes d'accès (27/09/2026)

| Étape | Accès | Confiance maximale obtenue |
|---|---|---|
| Phase 0 (PASS 0-2, lot 1) | outil web résumant les pages (wiki.gg, forums BHVR lisibles) | VERIFIED_PRIMARY pour les notes officielles citées (`kb/seed/audit_phase0.txt`) |
| Lots 2-4, 1re passe | `WebSearch` seul (liste d'URL + résumé généré), quota de 200 recherches **épuisé** | STRONG_SECONDARY au mieux |
| Re-vérification (lots 12a / 12b), lots 5, 7, 8, 12 | lecture **complète** : notes officielles BHVR téléchargées et archivées ; pages wiki.gg via l'API MediaWiki (`action=parse`) | VERIFIED_PRIMARY / VERIFIED_MULTI_SOURCE (note officielle + wiki concordants) ; STRONG_SECONDARY (wiki seul) |
| Lots 6, 9, 11 | aucune source externe (brouillons audités sur la base de l'audit phase 0) | selon l'audit phase 0 |

## 1. Sources primaires — notes officielles BHVR

Toutes publiées sur la base de connaissances officielle : `https://forums.bhvr.com/dead-by-daylight/kb/articles/<id>`. Archivées en texte brut dans `kb/sources/patches/official_<id>.txt` (téléchargées le 27/09/2026) ; l'index des titres des articles 495-565 est dans `kb/sources/patches/kb_index.txt`.

**Date de publication** : les fichiers archivés ne contiennent **pas** la date de publication de l'article (seulement le titre, l'URL et le corps). La colonne « Date » donne donc, quand elle existe, la **date de sortie du patch** lue dans les pages wiki « Patch Notes » archivées (`kb/sources/patches/patch_<version>.txt`, section « Release Dates »), ou un indice daté lisible dans le corps de l'article (marqué « texte »). « — » = aucune date lisible.

| ID | Titre | Patch / nature | Date (source de la date) |
|---:|---|---|---|
| 503 | Stats \| January - March 2025 | statistiques (texte, infographies non lues) | — (période janv.-mars 2025, titre) |
| 507 | Developer Update \| May 2025 | annonce de design | — (mai 2025, titre) |
| 509 | 9.0.0 \| PTB Patch Notes | **PTB 9.0.0, non LIVE** (archivée le 28/09/2026 ; sert à dater un changement ou à montrer qu'il a été annulé) | — (date du PTB non relevée) |
| 510 | 9.0.0 \| Five Nights at Freddy's | patch 9.0.0 | 17/06/2025 (wiki Patch 9.0.X) |
| 511 | 9.0.1 \| Bugfix Patch | hotfix | 26/06/2025 (wiki) |
| 512 | 9.0.2 \| Bugfix Patch | hotfix | 02/07/2025 (wiki) |
| 513 | Developer Update \| July 2025 | annonce de design | — (juillet 2025, titre) |
| 514 | 9.1.0 \| PTB Patch Notes | **PTB 9.1.0, non LIVE** (archivée le 28/09/2026 ; sert à dater un changement ou à montrer qu'il a été annulé) | — (date du PTB non relevée) |
| 516 | 9.1.0 \| The Walking Dead | patch 9.1.0 (avec « Changes from PTB ») | 29/07/2025 (wiki) |
| 517 | 9.1.1 \| Bugfix Patch | hotfix | 06/08/2025 (wiki) |
| 519 | 9.1.2 \| Bugfix Patch | hotfix | 14/08/2025 (wiki) |
| 520 | 9.1.3 \| Bugfix Patch | hotfix | 26/08/2025 (wiki) |
| 521 | Developer Update \| August 2025 | annonce (design anti-slug / anti-tunnel du PTB 9.2.0) | — (août 2025, titre) |
| 522 | 9.2.0 \| PTB Patch Notes | **PTB 9.2.0, non LIVE** (archivée le 28/09/2026 ; sert à dater un changement ou à montrer qu'il a été annulé) | — (date du PTB non relevée) |
| 523 | 9.2.0 \| Sinister Grace | patch 9.2.0 (section « Postponed ») | 23/09/2025 (wiki) |
| 524 | 9.2.1 \| Bugfix Patch | hotfix | 30/09/2025 (wiki) |
| 525 | 9.2.2 \| Bugfix Patch | hotfix | 07/10/2025 (wiki) |
| 526 | 9.2.3 \| Bugfix Patch | hotfix | 21/10/2025 (wiki) |
| 527 | 9.3.0 \| PTB Patch Notes | **PTB 9.3.0, non LIVE** (archivée le 28/09/2026 ; sert à dater un changement ou à montrer qu'il a été annulé) | PTB du 04/11/2025 |
| 529 | 9.3.0 \| Mid-Chapter | patch 9.3.0 (« Changes from PTB », reverts) | 25/11/2025 (wiki) |
| 530 | 9.3.2 \| Bugfix Patch | hotfix (9.3.1 sauté) | 09/12/2025 (wiki) |
| 531 | FAQ \| THE HALLOWEEN CONTENT | retrait de la licence Halloween | — (retrait le 19/01/2026, texte) |
| 533 | 9.4.0 \| PTB Patch Notes | **PTB 9.4.0, non LIVE** (archivée le 28/09/2026 ; sert à dater un changement ou à montrer qu'il a été annulé) | PTB du 06/01/2026 |
| 534 | 9.4.0 \| Stranger Things Chapter 2 | patch 9.4.0 | 27/01/2026 (wiki) |
| 535 | 9.4.1 \| Bugfix Patch | hotfix | 03/02/2026 (wiki) |
| 536 | 9.4.2 \| Bugfix Patch | hotfix (section **2v8** en tête : Good Guy, soin à 3) | 10/02/2026 (wiki) |
| 537 | 9.5.0 \| PTB Patch Notes | **PTB 9.5.0, non LIVE** (archivée le 28/09/2026 ; sert à dater un changement ou à montrer qu'il a été annulé) | — (date du PTB non relevée) |
| 538 | 9.5.0 \| All-Kill: Comeback | patch 9.5.0 | 17/03/2026 (wiki) |
| 539 | 9.5.1 \| Bugfix Patch | hotfix | 24/03/2026 (wiki) |
| 540 | Stats \| First Look at Stats in 2026 | statistiques (texte seulement ; infographies non lues) | — (« already almost April », texte : fin mars 2026 probable) |
| 541 | 9.5.2 \| Bugfix Patch | hotfix | 31/03/2026 (wiki) |
| 542 | 9.6.0 \| PTB Patch Notes | **PTB 9.6.0, non LIVE** (archivée le 28/09/2026 ; sert à dater un changement ou à montrer qu'il a été annulé) | PTB du 07/04/2026 |
| 543 | Stats \| The Trickster | statistiques | — (données jusqu'au 16/03/2026, texte) |
| 544 | 9.6.0 \| Patch Notes | patch 9.6.0 (Diminishing Returns) | 28/04/2026 (wiki) |
| 545 | 9.6.1 \| Bugfix Patch | hotfix (manuel DR en jeu) | 05/05/2026 (wiki) |
| 546 | 9.6.2 \| Bugfix Patch | hotfix | 12/05/2026 (wiki) |
| 548 | 10.0.0 \| Jason PTB Patch Notes | **PTB 10.0.0, non LIVE** (archivée le 28/09/2026 ; sert à dater un changement ou à montrer qu'il a été annulé) | — (date du PTB non relevée) |
| 549 | PTB To Live Changes: The Slasher | changements PTB → LIVE du chapitre 10.0.0 | — (avant la sortie du 16/06/2026, texte) |
| 550 | 10.0.0 \| Jason Patch Notes | patch 10.0.0 | 16/06/2026 (wiki) |
| 551 | 10.0.1 \| Bugfix Patch | hotfix | 23/06/2026 (wiki) |
| 552 | 10.0.2 \| Bugfix Patch | hotfix | 06/07/2026 (wiki) |
| 553 | 10.0.3 \| Bugfix Patch | hotfix | 21/07/2026 (wiki) |
| 554 | Stats \| Global Stats | statistiques (texte seulement) | — |
| 555 | 10.1.0 \| PTB Patch Notes | **PTB 10.1.0, non LIVE** (archivée le 28/09/2026 ; sert à dater un changement ou à montrer qu'il a été annulé) | — (date du PTB non relevée) |
| 556 | 10.1.0 \| Chorus of Sin | patch 10.1.0 | 25/08/2026 (wiki) |
| 557 | 10.1.1 Bugfix Patch | hotfix | 01/09/2026 (wiki) |
| 558 | 10.1.2 Bugfix Patch | hotfix 10.1.2 + édition **10.1.2a** | 08/09/2026 (wiki) ; ajout 10.1.2a « Edited to add on the 17th September » (texte) |
| 559 | 10.2.0 PTB Patch Notes | **PTB, non LIVE** ; lignes « was … » = valeurs LIVE | PTB ouvert le 15/09/2026 (wiki) ; sortie LIVE « TBA » |

Total : **48 articles archivés** (29 notes de patch ou de hotfix LIVE, **10 notes PTB** (509, 514, 522, 527, 533, 537, 542, 548, 555, 559), 1 bilan « PTB To Live » (549), 4 articles de statistiques, 3 Developer Updates, 1 FAQ). Les 9 notes PTB 9.0.0 → 10.1.0 ont été archivées le 28/09/2026. Les plus cités par les lots : 523 (9.2.0), 559 (PTB 10.2.0), 538 (9.5.0), 510 (9.0.0), 516 (9.1.0), 544 (9.6.0), 556 (10.1.0), 529 (9.3.0), 534 (9.4.0), 550 (10.0.0).

**Notes PTB** : 527, 533 et 542, lues en entier au lot 12, sont désormais archivées avec 509, 514, 522, 537, 548 et 555 (28/09/2026). Ce sont des notes **PTB** : utilisées seulement pour dater un changement ou montrer qu'il a été annulé, jamais comme valeur LIVE.

**Non consultés** (présents dans `kb_index.txt`) : 528 (Stats Haunted by Daylight), 532 (Stats 2025 Year in Review), 547 (Stats Blood Moon 2026) ; toutes les notes antérieures à l'article 495 (patchs 8.x et avant, dont la **8.6.0** qui fonde plusieurs TR). Les articles 560-565 renvoient « Article not found » (560-562 re-contrôlés le 28/09/2026 : toujours introuvables).

Autres sources officielles vues seulement via résumé WebSearch (1re passe) : discussions du forum BHVR (10 fils, dont « Dev Update: 10.2.0 Perks Update » n° 472297), support.deadbydaylight.com (3 pages), bugreport.deadbydaylight.com (1), page Steam (1).

## 2. Wiki — deadbydaylight.wiki.gg (pages complètes)

| Lot / usage | Pages | Méthode d'extraction | Stockage |
|---|---|---|---|
| Perks (lots 2, 3, 12a) | **327 pages de perks** (321 perks retenues dans `PERK_DATABASE.md`) | `kb/tools/wiki_scrape.py perks` : API MediaWiki `action=parse`, BeautifulSoup ; description courante + drapeau « upcoming Patch 10.2.0 » + onglets d'historique + change log 8.x-10.x | `kb/sources/wiki_perks.json` (brut), `kb/sources/wiki_perks_digest.md` (digest) |
| Tueurs (lot 4, 12b) | **46 pages de personnages tueurs** : 44 tueurs LIVE (The Cenobite = `Elliot_Spencer.txt`, archivée le 28/09/2026) + 2 annoncés (pouvoir, add-ons, perks, trivia) | `kb/tools/wiki_scrape.py killers` | `kb/sources/wiki_killers/*.txt`, `kb/sources/wiki_killers_raw.json` |
| Modules de données | **7 modules Lua** (`Datatable`, `Datatable/Loadout`, `…/Descriptions`, `…/History`, `Datatable/Various`, `Killers`, `Maps`) + historique des révisions (lot 12) | API MediaWiki | `kb/sources/wiki_modules/` |
| Pages de patch | **10 pages** « Patch Notes 9.0.X » → « 10.2.X » (dates de sortie, textes des notes) + 6.1.X, 8.6.X lues en ligne (lot 12) | API MediaWiki | `kb/sources/patches/patch_<version>.txt` |
| Pages thématiques | ≈ 70 pages : objets (Toolboxes, Med-Kits, Flashlights, Maps, Keys, Chests, Luck, Offerings, Hooks, Skill Checks, Instructions, Flashbang…), tiles (Pallets, Windows, Maze Tiles, Killer Shack, School Bus, Crane…), **28 pages de cartes / royaumes** (lot 8), mécaniques (Health States, Movement Speeds, Resolve, Hooks, Elusive, Conspicuous Actions, Hatch, Wiggle, Haste, Bloodlust, Attacks, Pools of Blood, Dead by Daylight Maths) | `kb/tools/wiki_text.py <Page>` (API, ≤ 1-2 requêtes/s) ; historique des révisions pour Resolve, Hooks et la description d'Off the Record | lu à la volée (cité dans chaque lot) |

- **Date** : toutes les extractions datent du **27/09/2026** (une page wiki peut changer ensuite).
- **Volume** : ≈ 390 pages extraites en masse + ≈ 70 pages thématiques (décompte approximatif : certaines pages servent à plusieurs lots). `SOURCE_LEDGER_batches.md` liste 186 URL wiki.gg distinctes citées nommément.
- **Confiance** : wiki seul = STRONG_SECONDARY ; wiki + note officielle concordante = VERIFIED_MULTI_SOURCE.
- **Pièges connus** (voir `AUDIT_PHASE0_ERRATA.md`) : **51 des 327 pages de perks** affichent déjà le texte PTB 10.2.0 comme texte courant (LIVE reconstruite depuis l'onglet d'historique ou les « was » de la note 559) ; Built to Last affiche la valeur PTB 9.1.0 (12/10/8 s) au lieu de 14/12/10 s ; Movement Speeds affiche encore le rampement 1,05 m/s d'un PTB annulé ; texte de pouvoir du Skull Merchant non mis à jour après 9.3.0 ; infobox du Demogorgon (Shred 18,4 m/s contre 19 m/s) ; description d'Off the Record ambiguë (clause des portes).
- **fandom** (deadbydaylight.fandom.com, 49 URL) : résumés WebSearch en 1re passe, puis quelques pages lues via l'API en second avis (lot 12 : Bloodlust, Pools of Blood).

## 3. Sources secondaires citées

Toutes vues **via le résumé de WebSearch** (1re passe des lots 2-4), jamais lues en entier ; aucune valeur finale ne repose sur elles seules.

| Source | URL citées | Usage |
|---|---:|---|
| nightlight.gg | 24 | pages de perks (taux d'usage) ; pages lues **refusées (403)** ensuite |
| timesaver.gg | 3 | résumés du PTB 10.2.0 |
| allmyperks.com | 3 | fiches de perks |
| steamcommunity.com | 3 | guides (cartes, perks) |
| shacknews.com | 2 | articles de patch |
| patched.gg, patchtldr.com | 1 + 1 | résumés de patch notes |
| sportskeeda, videogamer, happygamer, apptrigger, thesixthaxis, dlcompare | 1 chacun | articles de presse jeu vidéo |
| dbdvault.com, perkatory.gg, steamdb.info, steampeaks.com, rectangularview.com, hens333.com, grokipedia.com, app.betahub.io | 1 chacun | agrégateurs, statistiques Steam, divers |
| otzdarva.com, youtube.com, x.com | 1 chacun | URL renvoyées par la recherche ; contenu **non consulté** (vidéo / réseau social) |

Phase 0 (`kb/seed/audit_phase0.txt`) : sources presse sur le reset MMR 10.1.0 (all.gg, AddictingGames, CONFLICT-G04) ; dennisreep.nl (origine possible des « 76 % / 80 % des votants », non confirmée).

## 4. Ce qui n'a PAS pu être consulté

| Source | Raison | Conséquence |
|---|---|---|
| **VOD** (YouTube, Twitch) | accès refusé dans toutes les sessions | **aucune analyse de VOD** ; tous les counterplays restent HEURISTIC ; le guide ne doit jamais prétendre le contraire |
| **Infographies officielles** (images des articles de stats 503, 540, 543, 554 ; image SWF 2024) | images non lisibles (hébergement us.v-cdn.net) | kill / escape rates chiffrés par tueur non vérifiés ; « Ghoul > 60 % », « The First n°2 » non étayés |
| **NightLight** (nightlight.gg) | **403** en lecture directe ; viewer en JavaScript | pas de taux d'usage ni de kill rate NightLight datés avec n |
| **reddit** | 403 | étude des probabilités de coffre (2019) non lue |
| **DBDLeague (DBDL)**, Liquipedia | refusés | règlement, pool, résultats compétitifs non vérifiés (lot 10 BLOCKED) |
| X (Twitter) | refusé | confirmation primaire du reset MMR 10.1.0 impossible |
| Manuel en jeu (9.6.1) | hors ligne (client du jeu) | liste itemisée des Diminishing Returns inconnue |
| Tests en jeu | aucun client disponible | valeurs non publiées (fente en distance, abaissement de palette, ramassage, Bloodlust sur stun…) restent UNRESOLVED |
| Notes officielles 8.x et avant | non téléchargées | TR 8.6.0 (Blight, Ghost Face, Hillbilly, Skull Merchant) en STRONG_SECONDARY ; réductions de cartes 9.2.0 non attribuées |
| Guides experts écrits, coachs | aucun identifié ni lu | aucune EXPERT_OPINION sourcée |
