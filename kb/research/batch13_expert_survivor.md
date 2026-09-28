# Lot 13 — Sources expertes côté SURVIVANT (Hens333, Otzdarva, guides Steam)

> **Date de travail : 28/09/2026.** Référence : **LIVE 10.1.2a** ; **PTB 10.2.0 = NON LIVE**.
> **Accès** : `curl` + BeautifulSoup + Node (lecture des bundles JS). Les pages ont été lues **en entier** ; les images de callouts ont été **regardées** (8 sur 58). **Aucune vidéo n'a été vue ni transcrite** (YouTube : titres via oEmbed seulement, pages en 429). Reddit/NightLight non utilisés.
> **Archives** : `kb/sources/expert/` (12 fichiers : `hens333_*`, `otzdarva_*`, `steam_*`), avec titre, auteur, URL, date et date de consultation en tête.
> **Règle** : tout point expert = **[AVIS D'EXPERT]** attribué ; un point de guide Steam dont l'auteur n'est pas identifiable = **COMMUNITY_OBSERVATION** (étiqueté [AVIS COMMUNAUTAIRE]). **Aucun chiffre d'expert n'est promu en FACT.** Popularité et nombre d'étoiles ≠ preuve (prompt §39) ; build recommandé ≠ build optimal (§40).
> **Étiquettes de fraîcheur** : **CURRENT** (compatible avec LIVE 10.1.2a) · **POSSIBLY STALE** (antérieur à un changement pertinent, ou non daté) · **OUTDATED** (contredit par une note officielle postérieure).

---

## 0. Inventaire et date-check des sources

| # | Source | Auteur / statut | Date visible | Couverture de version (déduite) | Verdict global |
|---|---|---|---|---|---|
| S1 | hens333.com/callouts | Hens333 (streamer) ; images Lethia ; page de Zexov d'après Broosley et Evo — EXPERT_OPINION (outil) | aucune ; images servies avec Last-Modified 10/09/2026 et 21/09/2026 (déploiement, pas contenu) | 58 images = 44 cartes 1v4 LIVE (dont Trickster's Delusion, 9.5.0) **+ 13 variantes** Custom Game (8.6.0) **+ Lampkin Lane** (retirée 9.4.0) | Système : CURRENT ; liste de cartes : partiellement OUTDATED |
| S2 | hens333.com/survivorbuilds | Hens333 — EXPERT_OPINION | aucune (chunk JS Last-Modified 10/09/2026) | textes de perks : pré-8.1.0 à pré-10.1.0 selon la perk | Choix des perks : POSSIBLY STALE ; **textes de perks : OUTDATED** (4 perks, §2.2) |
| S3 | hens333.com/killerbuilds | Hens333 — EXPERT_OPINION | aucune | **42 tueurs : ni The Slasher (10.0.0, 16/06/2026) ni The Judgment (10.1.0, 25/08/2026)** | POSSIBLY STALE (données antérieures à 10.0.0 probables) |
| S4 | hens333.com/faq | Hens333 | — | aucun contenu de jeu | sans objet |
| S5 | otzdarva.com/dbd/beginner-guides | Otzdarva (DBD Creator Program) — EXPERT_OPINION | © 2026 | 5 liens = **vidéos** YouTube (chaîne « not Otzdarva ») | **Pointeurs seulement** (non vus) |
| S6 | otzdarva-builds.com (`/data/builds.json`) | Otzdarva — EXPERT_OPINION | builds.json Last-Modified **09/09/2026** ; scrape du wiki 25/08/2026 | **44 tueurs dont Slasher et Judgment** → postérieur à 10.1.0 | **CURRENT** (sauf perks modifiées au PTB 10.2.0) |
| S7 | Steam 2904838739 « DBD: Map Layouts, Callouts, and Tiles Guide – Update PTB 7.4.0 » | Eager Face — COMMUNITY_OBSERVATION | posté 04/01/2023, **maj 05/12/2023** ; 478 éval. 5★ ; 28 456 visiteurs | 7.3.0-7.4.0 : **avant** les passes palettes 9.2.0/9.3.0/9.3.2 et le pool commun 9.2.0 | Conventions de callout : CURRENT ; géométrie des tiles : POSSIBLY STALE ; exclusivités par royaume : OUTDATED/contestées |
| S8 | Steam 2792644224 « All Dead by Daylight Survivor Techs » | CΛLLMΣDΛDΛ — COMMUNITY_OBSERVATION | posté 13/04/2022, **maj 20/06/(2026)** ; 399 éval. 5★ | noms pré-9.4.0 encore utilisés (Decisive Strike, Save the Best for Last) | POSSIBLY STALE (tech par tech) |
| S9 | Steam 2371975971 « COMPLETE GUIDE ON LOOPING » | « M » — COMMUNITY_OBSERVATION | posté 23/01/2021, refait **17/02/2024** ; 251 éval. 5★ | générique, pré-9.x | POSSIBLY STALE ; **une erreur factuelle** (§5.3) ; faible valeur |
| S10 | Steam 3208139129 « How to Loop and win every Chase » | den — COMMUNITY_OBSERVATION | 31/03/2024 → 03/04/2024 ; 4★ | pré-9.x | POSSIBLY STALE ; valeurs de vault CURRENT |
| S11 | Steam 2709060449 « How to Run Map Specific Jungle Gyms » | Tokio Goose — COMMUNITY_OBSERVATION | 05/01/2022 | pré-9.2.0 ; schémas en images (non vues) | OUTDATED probable ; **non utilisé** (pointeur) |

**Sélection Steam** : recherche `searchText` = looping, tiles, survivor sur l'app 381210, tri « Most popular » puis « Top rated ». Retenus : les deux guides 5★ les plus vus sur tiles/callouts (S7) et techniques (S8), le guide 5★ le plus vu sur le looping (S9), un 4★ plus récent (S10). S11 consulté pour mémoire. Les centaines d'autres résultats sont des mèmes, des guides tueur ou des listes de builds non argumentées.

---

## 1. Hens333 — système de callouts « horloge » (S1)

### 1.1 Ce que dit la source
- [AVIS D'EXPERT] (Hens333, `hens333.com/callouts`, non daté, vu le 28/09/2026) : « the clock system divides the map into 12 sections, numbered from 1 to 12, starting from the top middle of the map ». Outil pour « communicate effectively and efficiently with your team ».
- Une image par carte (58). **Observé sur 8 images** (lecture visuelle, légendes non expliquées par la page) :
  - 12 est **en haut de l'image** ; les autres chiffres suivent le bord en cadran.
  - Repères : **M** (main), **S** (shack), **MID** ; sur les cartes allongées, bandes **TOP MID / MID / BOT MID** (Lampkin Lane, Sanctum of Wrath, Wreckers' Yard).
  - Coal Tower : M près de 12, S près de 6 ; « WT » près de 8 (légende non expliquée).
  - Rotten Fields : **pas de M**, S au centre, trois cases « C|H » : deux dans la moitié haute (11 et 1), une dans la moitié basse. [HYPOTHÈSE de l'agent] C|H = Cow tree | Harvester.
  - Toba Landing : M au **centre**, 12 juste au-dessus.
  - **Sanctum of Wrath** : **deux cases S** (près de 2 et près de 5) ; deux cases « P » (près de 12 et de 6 ; [HYPOTHÈSE] Patio).
  - **The Game** : cadran **non circulaire** : 9-10-11-12 le long du bord haut (12 = coin haut-droit), 6 = coin bas-gauche.
- Les images **ne précisent pas** comment orienter la carte **en jeu** : il faut les connaître par cœur ou les ouvrir à côté (fonction « popout » de la page).

### 1.2 Date-check
- Système d'horloge : **CURRENT** (convention de communication, sans dépendance au patch).
- Liste des cartes : **OUTDATED en partie** : Lampkin Lane (retirée 9.4.0) et 13 variantes « II / III / Preschool II-V », jouables **en Custom Game seulement** depuis 8.6.0 (`05_cartes.md` §5.2.3-5.2.4).
- Placement des repères sur les 12 royaumes retouchés en 9.2.0 / 9.3.0 : les **landmarks** (main, shack) ne bougent pas selon le guide (§5.1) → **CURRENT** pour M et S ; aucune palette n'est dessinée.

### 1.3 Comparaison avec le guide
| Point | Guide actuel | Verdict |
|---|---|---|
| Structure du lieu dans un callout | §6.8 : « repères de carte … à défaut, boussole relative au bâtiment principal (« nord de main ») » | **NOUVEAU** : Hens et Eager Face (S7) donnent une **convention d'horloge** partagée qui remplace la boussole |
| Convention d'orientation | aucune | **NOUVEAU** + **CONCORDE entre sources** : Hens (12 en haut, M souvent près de 12) = Eager Face (M « usually » à 12, shack « usually » vers 6, voir §5.1) |
| Callouts de The Game (« Control Room 12 h ») | §5.4.9 : « Callouts du seed … absents du wiki [INCERTAIN] » | **CONCORDE** avec Eager Face (Control Room = 12 étage, Vat room = 6) et avec la disposition en coins de l'image Hens. Ce sont des **conventions**, pas des données de jeu : le [INCERTAIN] peut devenir [AVIS COMMUNAUTAIRE] attribué |
| Rotten Fields « moitié à 2 structures = le haut » | §5.4.3 : [INCERTAIN] | **CONCORDE** : Eager Face le dit explicitement ; l'image Hens met deux « C|H » en haut. Convention attribuable |
| Sanctum of Wrath : shack à 2 emplacements | §5.4.10 : « [INCERTAIN], absent du wiki » | **CONCORDE partielle** : Eager Face (2023) et Hens (image) montrent ≥ 2 emplacements de shack ; **DIVERGE** sur leur position (Eager Face : les deux en bas ; Hens : un à 2 h, un à 5 h) → CONFLICT-L13-05 |

---

## 2. Hens333 — builds survivant (S2)

### 2.1 Les builds (aucune justification écrite sur la page)
| Nom sur la page | Perks |
|---|---|
| Best Overall Build | Dead Hard · Deliverance · Decisive Strike (= **Will to Live** depuis 9.4.0) · Unbreakable |
| Best SoloQ | Déjà Vu · Windows of Opportunity · Lithe · Kindred |
| Best Chase Build | Dramaturgy · Finesse · Resilience · Hope |
| Hens' Favorite Build | Resurgence · Hope · Lithe · Dramaturgy |
| Best Anti-Tunnel Build | Decisive Strike (Will to Live) · Dead Hard · Off the Record · Hope |

- [AVIS D'EXPERT] (Hens333, `/survivorbuilds`, non daté) : ce sont ses choix « curated ». **Aucun « pourquoi »** n'est donné : on ne peut attribuer à Hens que la **sélection**, pas un raisonnement.
- Constat : **Hope dans 3 builds sur 5**, perk d'épuisement dans 4 builds sur 5.

### 2.2 Date-check des textes de perks affichés (comparés à `PERK_DATABASE.md`)
| Perk | Texte Hens | LIVE 10.1.2a | Changement | Étiquette |
|---|---|---|---|---|
| Deliverance | Broken 100/80/60 s | **160/140/120 s** | nerf **10.1.0** (25/08/2026) | **OUTDATED** |
| Off the Record | 60/70/80 s | **30/35/40 s** + suppression des griffures | 9.2.0 / 9.2.2 | **OUTDATED** |
| Resurgence | +40/45/50 % de soin | **+50/60/70 %** | buff 8.1.0 | **OUTDATED** |
| Hope | Haste 5/6/7 % | **3/4/5 %** | nerf 9.2.0 | **OUTDATED** |
| Decisive Strike | nom de Laurie, désactivée aux portes | nom LIVE **Will to Live** (générale) ; effet 40/50/60 s, stun 4 s | renommage 9.4.0 | nom OUTDATED, effet CURRENT |
| Dead Hard, Déjà Vu, Dramaturgy, Finesse, Unbreakable, Kindred (8/12/16 m), Windows (24/28/32 m), Resilience (3/6/9 %) | valeurs | identiques | — | CURRENT (Kindred, Windows, Resilience : **modifiées au PTB 10.2.0**) |
| Lithe | texte tronqué (« After performing a ») | +50 % Haste 3 s après un rushed vault | — | défaut d'affichage |

Conséquence : le **choix** « Deliverance dans le meilleur build » et « Off the Record dans l'anti-tunnel » a pu être fait **avant** les nerfs 9.2.x et 10.1.0 → **POSSIBLY STALE**. Ne pas citer les chiffres de la page.

### 2.3 Comparaison avec le chapitre 9 (§9.4)
- **Anti-tunnel** (§9.4.6 : Will to Live · Off the Record · Deliverance · Lithe) : Hens garde **Will to Live + Off the Record** (CONCORDE), remplace Deliverance/Lithe par **Dead Hard + Hope**. Dead Hard figure déjà en **variante** du guide → CONCORDE.
- **SoloQ** (§9.4.9 : Will to Live · Windows · Deliverance · Empathy) : Hens garde **Windows** (CONCORDE), prend **Kindred** (variante du guide → CONCORDE), **Lithe** et **Déjà Vu** (DIVERGE : ni anti-tunnel ni Empathy).
- **Chase** (§9.4.1 : Lithe · Windows · Parental Guidance · Lucky Break) : Hens joue la **vitesse** (Dramaturgy, Finesse, Resilience), le guide la **discrétion après contact** → DIVERGE d'approche. **Finesse + Resilience = deux bonus de vitesse de saut** : le guide les classe comme soumis aux DR 9.6.0 (§9.2.2, « VP indirect ») → le cumul vaut **moins** que la somme (voir §6.2).
- **Fin de partie** : §9.4.8 dit « gardez une perk d'endgame dans un autre build [AVIS D'EXPERT] » (non attribué) → **CONCORDE** avec Hens (Hope dans 3 builds). Attribution possible.

---

## 3. Hens333 — builds tueur (S3), lus pour le côté survivant

- 42 tueurs × 4 builds (« Best Build Without Limitations », « Hens' Favorite », « Best Beginner Build », « Unique Builds – … »). La page annonce aussi « the best map for that killer » : **aucune carte** dans les données.
- **Date-check** : absence de The Slasher (10.0.0) et de The Judgment (10.1.0) → données **antérieures à 10.0.0** probables → POSSIBLY STALE, surtout pour les tueurs retouchés : Blight (9.6.0), Trickster (9.5.0), Shape (9.2.0), Knight (10.1.1). Les add-ons cités (Blighted Crow, Alchemist's Ring, Cut Thru U Single, Ripper Brace, Call to Arms, Lock of Hair…) existent dans les fiches `batch4_killers_g*` ; leurs effets n'ont pas été re-vérifiés ici.
- **Ce qui sert au survivant** : fréquence des perks dans « Best Build Without Limitations » (42 builds) : **Scourge Hook: Pain Resonance 32**, **Corrupt Intervention 26**, **Turn Back the Clock 18**, Dead Man's Switch 12, Eruption 11, Hex: Ruin 11, Hex: Thrill of the Hunt 9, Hex: Pentimento 8. [AVIS D'EXPERT] (Hens) = ce qu'un **expert conseille**, pas ce que les tueurs **jouent** : ce n'est pas une donnée d'usage (§39).
- Textes de perks tueur affichés : BBQ 60/50/40 m, Pain Resonance 10/15/20 %, Turn Back the Clock 40/50/60 s et 20 m, DMS 25/30/35 s, Agitation 6/12/18 %, Lethal Pursuer 7/8/9 s : **CURRENT** (DMS : recharge de 50 s absente du texte).

---

## 4. Otzdarva (S5, S6)

### 4.1 Beginner Guides : pointeurs vidéo seulement
- « All Tiles Explained Guide » → vidéo « All Common Tiles Explained | Dead by Daylight » (https://www.youtube.com/watch?v=E5QWNS14MS0).
- « Survivor Beginner Guide » → « A Survivor's Guide to every Killer in DBD » (https://youtu.be/zbX0b8S9njQ).
- « Survivor Beginner Perks » → « A Survivor's Guide to all Beginner Perks » (https://youtu.be/9dOJbQeN14w).
- Dates inconnues ; **contenu non consulté**. Déjà signalé par le lot 7 (`batch7_tiles.md` [17]). La question ouverte n° 12 du lot 7 (hiérarchies de tiles d'experts) **reste ouverte côté Otzdarva**.

### 4.2 Builds survivant (données `builds.json`, 09/09/2026) — CURRENT
Trois catégories, 20 builds, chacun avec des **notes de justification**. Extraits utiles (citations courtes, traduction de l'agent) :

| Build Otzdarva | Perks (alternatives) | Justification [AVIS D'EXPERT] (Otzdarva, otzdarva-builds.com, 09/09/2026) |
|---|---|---|
| Beginner Solo | Kindred · Windows of Opportunity · Lithe · Will to Live | « perfect balance of information and tools to help in chase » ; Windows/Alert pour savoir quelles palettes restent ; **Lithe sur un vault proche juste après s'être libéré avec Will to Live** |
| Advanced Solo | Five Moves Ahead (Windows, Alert) · Will to Live (Off the Record) · Lithe · Resurgence (+7 alternatives) | « Five Moves Ahead is a slightly stronger version of Windows » ; Lithe + Will to Live « still a great combo … if you're being tunneled off hook » |
| Tunnel-prevention (équipe) | Shoulder the Burden · Will to Live · Lithe (Plot Twist) · Deliverance (Babysitter, NOLB, Borrowed Time, Unbreakable) | prendre un état de crochet d'un allié tunnelé ; « still solid effects even if the Killer does not tunnel » |
| All Purpose Team | Resurgence · Will to Live (OTR) · Lithe (Dead Hard, Balanced Landing) · Plot Twist | Plot Twist **devant le tueur** pour le forcer à choisir : vous laisser vous soigner ou vous ramasser (Will to Live prête) |
| Chase-Focused | Five Moves Ahead (Windows) · Lithe (…) · Finesse (Troubleshooter) · Resilience (…) | « Five Moves Ahead/Windows + Exhaustion perk = easy way to reach safety » ; suppose une équipe coordonnée |
| Gen Rush Solo | Déjà Vu · Poised · Resurgence · Built to Last | « you don't leave any scratchmarks for 30 seconds after … a generator » (Poised) |
| Gen-Jockey | Déjà Vu · Sprint Burst · Prove Thyself · Change of Plan | réparer les gens de Déjà Vu « forcing the Killer to defend gens that are really far apart » |
| Simple Self-heal | Self-Care · Botany Knowledge · Déjà Vu · Kindred | « If an important gen can be finished safely, prioritize that instead » |
| « Noob Helper » | Aftercare · Corrective Action · Babysitter · We'll Make It | Babysitter montre le tueur après le décrochage → décider si l'on soigne vite avec WMI |
| Basement | Overcome · Wicked · Will to Live · Windows | Wicked : auto-décrochage garanti au sous-sol, « often denying … Scourge Hook perks » ; « tell your team mates » |
| Full Luck (SWF) | Slippery Meat · Up the Ante · Will to Live · Unbreakable | « nearly 100% chance to self-unhook » avec Up the Ante sur toute l'équipe + offrandes de chance |
| Autres | Anti-Totem, Super Aura, Houdini Stealth, Chest Specialist, Fading Scratchmarks, Aggressive Altruism, Boon Support, Background Helper, Solo Escapist, Beginner Starter | voir archive `otzdarva_builds_survivors.txt` |

**Date-check des affirmations chiffrées d'Otzdarva** (contre `PERK_DATABASE.md`) :
- Poised « 30 seconds » = rang III de 20/25/30 s → **CURRENT** (vrai au rang III seulement).
- Moment of Glory « heal in 60 seconds » = rang III de 80/70/60 s → **CURRENT** (rang III).
- Wicked (auto-décrochage garanti au sous-sol, 1re phase), Built to Last (recharge), Change of Plan (toolbox → médikit), Appraisal (refouiller), Lucky Break, Lend a Hand, Overzealous, Counterforce : **CURRENT**.
- Five Moves Ahead « helps you move faster after dropping a pallet » : LIVE = « **repartir 50 % plus tôt** » après un drop (CANONICAL_FACTS) → **imprécision** de formulation, pas de conflit de valeur.
- « Will to Live (also called Decisive Strike) », « Down to the Last (also known as Sole Survivor) » : renommages 9.4.0 **exacts**.
- « basekit endurance » (Full Luck) : protections de décrochage 10.1.0 → **CURRENT**.
- « nearly 100% chance to self-unhook » : **non vérifiable** (calcul absent ; chance de base, offrandes et cumul non documentés dans la KB) → [INCERTAIN]. Slippery Meat est **refondue au PTB 10.2.0** (plus de chance) → ce build deviendrait **OUTDATED** à la sortie de 10.2.0.
- Perks des builds modifiées au **PTB 10.2.0** : Windows of Opportunity, Five Moves Ahead, Kindred, Dark Sense, We'll Make It, Resilience, Shoulder the Burden, Self-Preservation, Borrowed Time, Slippery Meat, Small Game, Plunderer's Instinct, Pharmacy, Boon: Illumination, Empathic Connection, No One Left Behind, Down to the Last → à revoir à la sortie de 10.2.0.

### 4.3 Builds tueur (S6), lus pour le côté survivant
- 45 catégories (builds universels + **44 tueurs, dont The Slasher et The Judgment**) → **CURRENT**.
- Perks les plus fréquentes sur 184 builds : **No Holds Barred 64**, **Pain Resonance 57**, Hex: Ruin 38, Corrupt Intervention 34, **Hex: No One Escapes Death 32**, Sloppy Butcher 25, BBQ 24, Lethal Pursuer 23, Hex: Undying 22, Thrill of the Hunt 21, DMS 20, Blood Favour 20, Turn Back the Clock 19, Grim Embrace 18, Surge 17.
- Recoupement avec Hens (§3) : **Pain Resonance et Corrupt Intervention en tête chez les deux experts** → [AVIS D'EXPERT] convergent sur la méta **recommandée** ; pas une donnée de pick rate.
- Otzdarva cite Hens (« Oppressive Hex Build … Popularized by Hens ») : les deux sources **ne sont pas indépendantes** sur ce point.

### 4.4 Comparaison avec le chapitre 9 (§9.4)
| Archétype du guide | Otzdarva | Verdict |
|---|---|---|
| 9.4.1 Chase (Lithe · Windows · Parental Guidance · Lucky Break) | Chase-Focused : **FMA/Windows + Lithe** + Finesse + Resilience | **CONCORDE** sur le cœur « aura des tiles + perk d'épuisement » (Otzdarva l'énonce : « easy way to reach safety ») ; **DIVERGE** sur les deux dernières (vitesse contre discrétion). Le guide dit « Five Moves Ahead ferait doublon avec Windows » : Otzdarva les traite en **substituts** (FMA « slightly stronger ») → CONCORDE sur le doublon, choix inverse |
| 9.4.3 Générateurs (Déjà Vu …) | Gen Rush / Gen-Jockey : **Déjà Vu** dans les deux ; logique « casser le 3-gen pour éloigner les gens restants » | **CONCORDE** |
| 9.4.4 Soin (Botany · Self-Care …) | Simple Self-heal : **Self-Care + Botany** ; « prioriser un gen important » | **CONCORDE** |
| 9.4.5 Altruisme (Reassurance · Babysitter · WMI · WGLF) | Noob Helper : **Babysitter + WMI** et leur synergie | **CONCORDE** |
| 9.4.6 Anti-tunnel (WtL · OTR · Deliverance · Lithe) | Beginner/Advanced Solo, All Purpose, Tunnel-prevention : **Will to Live + Lithe** partout, OTR et Deliverance en alternatives | **CONCORDE** (la synergie « Lithe juste après la libération » est **dite** par Otzdarva) |
| 9.4.7 Anti-slug (Unbreakable · Tenacity · Exponential · WGLF) | Boon Support (Exponential), Aggressive Altruism (WGLF), Full Luck (Unbreakable) | **CONCORDE** partielle (pas de build anti-slug dédié) |
| 9.4.9 SoloQ (WtL · Windows · Deliverance · Empathy) | Beginner Solo : **Kindred · Windows · Lithe · WtL** | **CONCORDE** sur WtL + Windows ; **DIVERGE** : Otzdarva préfère **Kindred** et **Lithe** à Deliverance et Empathy (Empathy n'est qu'une alternative de Kindred) |
| 9.4.10 SWF (Shoulder the Burden · Breakout · Teamwork…) | Team Player : Shoulder the Burden (Tunnel-prevention) ; pas de Teamwork | CONCORDE partielle |

---

## 5. Guides Steam (S7-S10) — COMMUNITY_OBSERVATION

### 5.1 Eager Face — « Map Layouts, Callouts, and Tiles Guide » (maj 05/12/2023)

**Génération et tiles**
- [AVIS COMMUNAUTAIRE] (Eager Face, 12/2023) : « the category of tile will always be in the same spot … What is random is which tile is generated within that category, and which way it is rotated » → **CONCORDE** avec §4.1.3 et §5.1 (emplacement fixe, itération tirée). Le guide parle de **rotation**, pas de miroir (question ouverte n° 3 du lot 7 non tranchée).
- Grille : « 8x8 meter "Units" … Most Tiles are made up of 4 of these units in a square, meaning these Tiles are 16x16 meters » ; exception des cartes intérieures (RPD, Midwich) → **CONCORDE** avec `05_cartes.md` (1 sqT = 8 × 8 m ; tuiles 16 × 16, 16 × 32 ou 32 × 32 m).
- Killer Shack « always the same, except for orientation » ; « God pallet … almost impossible for the killer to play around without breaking once it's dropped » → CONCORDE avec §4.4.13 (god = forte une fois baissée) ; « toujours identique » répond en partie à la question ouverte n° 2 du lot 7 (disposition du shack par royaume) : **POSSIBLY STALE** (2023), à vérifier.
- **Edge tiles** (« Z Wall », « U Wall ») : « the weakest in the game … scratch marks are extremely visible against the outer wall » → **NOUVEAU** (le guide §4.1.5 dit ces noms « invérifiables, noms communautaires probables » : ils sont bien **communautaires**, attestés ici).
- **Straight / Corner tiles** (« road » centrale, longues loops de chaque côté) → **NOUVEAU** (vocabulaire).
- Noms communautaires attestés : Wolfpack / Lone Wolf (labyrinth), Double Window Gym, Small-Wall Gym (« Bad Gym »), Sandwich Gym (Dead Dawg), Impostor Gyms (Garden of Joy), Trash Pile Gym → §4.1.5 : « invérifiables » → **attribuables** comme noms communautaires (pas comme données wiki).
- Hiérarchies : Long Wall « very strong against most killers » ; 4-lane **Outside** (= « opened ») « considered the stronger variant as it can chain into other nearby tiles » ; Trash Pile « one of the strongest » ; Pallet Gym « relatively weak … once the pallet is broken » ; Double Window Gym « much weaker » ; Small-Wall Gym « by far the worst » → **CONCORDE** avec les [AVIS D'EXPERT] **non sourcés** de §4.1.5 et §4.4.2-4.4.6 (LW > SW, opened > closed) : ils deviennent **attribués** (communautaire, 2023). « T > L » : **non traité** par la source.
- **T-L walls** : « As a survivor, you want to run this tile **clockwise**, which will allow you to get consistent fast vaults on both windows. As a killer, you want to chase counter-clockwise » → **DIVERGE** de §4.2.3 et §4.9 (« serpenter dans le sens horaire » = faux comme règle) → **CONFLICT-L13-01**.
- Exclusivités par royaume (Labyrinth : Yamaoka et Ormond ; Locker Gym : Red Forest et Ormond ; Small-Wall : Autohaven ; Impostor : Garden of Joy ; Western / Sandwich : Dead Dawg) → **OUTDATED probable** (pool commun 9.2.0) ; cohérent avec la page wiki Maze Tiles, donc cohérent avec l'hypothèse « le wiki est antérieur à 9.2.0 » (CONFLICT-L7-01, §4.1.3). Ne pas enseigner.

**Callouts d'horloge et orientation**
- [AVIS COMMUNAUTAIRE] (Eager Face) : « we treat the map itself like a clock » ; conventions : « Main Building will (usually) be at the "Top" of the map, and will be position "12" » ; « Shack will (usually) be at the bottom … around position "6" » ; « mid », « top mid », « bottom mid » pour les zones ouvertes ; structures de royaume comme callouts (« cow tree », « bus ») ; « Not all maps can follow these conventions, so a convention is usually chosen arbitrarily » → **NOUVEAU** pour §6.8, **CONCORDE** avec Hens (§1).
- Astuces d'orientation carte par carte (**NOUVEAU**, POSSIBLY STALE 2023) :
  - Rotten Fields : moitié à **deux** structures (harvester ou cow tree) = haut ; l'autre moitié en a une, avec un maze tile de plus.
  - Wreckers' Yard : poche du bas **plus grande**, avec vue sur la pile de voitures près du shack ; poche du haut près de **3 jungle gyms**.
  - The Game : Control Room (étage) et Bathroom (rez-de-chaussée, escalier du sous-sol) = 12 ; Vat room (et congélateur en bas) = 6 ; les deux autres coins = escalier d'angle à palette **ou** salle au grand trou avec palette (interchangeables).
  - Sanctum of Wrath : « the only map where the Shack can spawn in multiple locations … both potential shack spawns are on the bottom » (CONFLICT-L13-05).
  - Midwich : côté toilettes et accueil = bas (orientation du jeu Silent Hill).
  - Toba Landing : moitié gauche = murs « végétaux », moitié droite = murs « rocheux ».
  - Lampkin Lane (maisons interchangeables) : **OUTDATED** (carte retirée en 9.4.0).
  - MacMillan : deux variantes par carte depuis 7.3.0 : **OUTDATED** pour le public (variantes en Custom Game seulement depuis 8.6.0).
  - Backwater Swamp : edge tiles sur une colline, **plus grandes**, pouvant porter gens, loops, totems, trappe près du bord → NOUVEAU, POSSIBLY STALE (9.3.0 a revu les pontons de Backwater).

### 5.2 CΛLLMΣDΛDΛ — « All Dead by Daylight Survivor Techs » (maj 20/06/2026)
Guide de **techniques nommées**. Les mécaniques sous-jacentes ne sont **pas vérifiées** par la KB : chaque point = [AVIS COMMUNAUTAIRE] + [INCERTAIN] sur la mécanique.

| Technique | Principe annoncé | Guide | Fraîcheur |
|---|---|---|---|
| CJ Tech (+ Cracked, Locker, Window, Generator, Reverse, AMN) | Forcer le tueur à **ramasser** au lieu de casser, fouiller, vaulter ou kicker (« killer CAN'T break a pallet while a survivor is mid vault »), puis sauvetage à la lampe ou au pétard | **NOUVEAU** (sauvetages : §6.3 ne décrit pas de setup) | POSSIBLY STALE (inventée en 2017) |
| Window Tech / Kek Tech | Passer **à travers** le tueur en fin de vault (plus de collision), timing « a lot more strict » aujourd'hui | NOUVEAU | POSSIBLY STALE (dit durci) |
| FOV / Fake Dead Hard Tech ; Pallet FOV Tech ; Left-Right Tech | Exploiter le champ de vision limité du tueur (collé à lui, pendant la casse, regard vers le sol) | **CONCORDE** avec T14 (caméra, checkspots) et « partir pendant la casse » (§4.4.1) ; noms NOUVEAUX | CURRENT probable |
| Pallet / Breakable Wall **Vacuum** | Contre un dash (Bubba, Blight), s'accroupir devant la palette : le pouvoir est « aspiré » vers la casse | CONCORDE partielle avec §4.5.3 (pre-drop contre Blight : tokens) | POSSIBLY STALE (Blight 9.6.0) |
| Locker Tech | Entrer dans un casier pour esquiver une ruée (Blight, Billy, Bubba) | **DIVERGE** en apparence de §4.4.7 (« les casiers ne sont pas une ressource de chase ») → [SITUATIONNEL] : esquive d'un dash seulement, prise ensuite possible | POSSIBLY STALE |
| Dumb Tech ; Ayrun Special ; Sladoinki Tech ; Swerve Tech | Jeux après un stun de palette, virage serré derrière un coin (T-L walls), strafe | CONCORDE avec T10-T12 (mindgames, cornering) ; noms NOUVEAUX | POSSIBLY STALE |
| **Shift Tech** | Une poursuite ne démarre que si le survivant est dans le champ du tueur **à ≤ 12 m**, **court**, et que le tueur **se déplace** ; en marchant dans son champ, pas de poursuite → le compteur de 3 vaults (qui vaut « dans la même poursuite ») ne tourne pas | **CONCORDE** avec §3.1 (mêmes trois conditions, SS ; blocage « dans la même poursuite », SS) ; la **conséquence** est NOUVELLE | CURRENT (conditions identiques à la KB) |
| Exit Gate Tech | S'arrêter sous **25 %** d'ouverture : « the first red light doesn't turn on » ; porte = 20 s → jusqu'à 5 s d'avance cachée | 20 s : **CONCORDE** (§6.1) ; seuil de voyant 25 % : **NOUVEAU [INCERTAIN]** | POSSIBLY STALE |
| Heal Tech | Le tueur ne peut pas ramasser un survivant **pendant qu'on le soigne** ; le survivant au sol qui tient Sprint **bloque** son soin | **NOUVEAU [INCERTAIN]** | POSSIBLY STALE |
| Inside Tech | Après un coup : « loses all collision … and receives a **150% speed boost for 2 seconds** » | **DIVERGE** (§3.1 : boost **1,8 s**, ×1,65 → 6,6 m/s) → **CONFLICT-L13-03** | chiffre OUTDATED ou approximatif |
| Gesture Tech | Un geste juste avant le coup annule l'animation de mise au sol | NOUVEAU [INCERTAIN] | POSSIBLY STALE (possiblement corrigé) |
| Borrowed Time Tech | Le sauveteur se place **dans** le modèle du décroché protégé | NOUVEAU [INCERTAIN] | POSSIBLY STALE (Borrowed Time LIVE : Endurance +6/8/10 s ; refondue au PTB 10.2.0) |
| Trap Buffer | Désarmer un piège du Trapper pendant qu'un allié passe dessus | NOUVEAU [INCERTAIN] | POSSIBLY STALE |
| Clinch Tech, Slide Vault, Harvester Tech | marquées « REMOVED » / « PATCHED » / « nerfed » par l'auteur | Harvester : cohérent avec §4.1.2 (quasi-infinite corrigée) | OUTDATED (selon la source) |
| Key / Flashbang / Clairvoyance Tech | Perdre la collision pendant une canalisation ou une action | NOUVEAU [INCERTAIN] | POSSIBLY STALE |

- Noms anciens dans une page mise à jour le 20/06/2026 : « Decisive Strike » (= Will to Live), « Save the Best For Last » (= Keep Them Waiting depuis 9.4.0) → la mise à jour **n'a pas tout révisé**.

### 5.3 « M » — « COMPLETE GUIDE ON LOOPING » (refait 17/02/2024)
- Contenu **générique** (connaître la carte, gérer les palettes et fenêtres, feintes, body block, perks). Style très général ; **peu de valeur ajoutée** au chapitre 3.
- **Erreur** : « "block" or create "zones" at windows preventing the killer from vaulting through them and forcing them to break the window instead » : aucune mécanique de **casse de fenêtre** n'existe dans la KB (§3.1 : fenêtres = vaults + blocage par l'Entité ; casse = palettes et murs cassables) → affirmation **rejetée** (CONFLICT-L13-07).
- « Fast vaults … Generate a noise … Slow vaults are quieter » : **CONCORDE** (§3.1).
- Perks citées sous d'anciens noms (Decisive Strike) → POSSIBLY STALE.

### 5.4 den — « How to Loop and win every Chase » (03/04/2024)
- Vaults « 0.5 / 0.9 / 1.5 seconds » ; blocage de la fenêtre après 3 rushed vaults « for 30 seconds » pour ce survivant seulement ; stun « 2 seconds » → **CONCORDE** avec §3.1 et CANONICAL_FACTS.
- « Fast or Medium Vaulting is considered a rushed action and will alert the Killer » → CONCORDE.
- Tight looping : coller la structure → CONCORDE (T13 Hugging).
- Shack : « The pallet is also called 'God pallet' … **Only use it after looping at least 2 times** or when you're about to go down » → **DIVERGE** : §4.4.1 classe exactement cette règle en « Erreur fréquente » (fausse dès que le tueur tient l'intérieur, que tu es blessé ou contre un pouvoir anti-loop) → **CONFLICT-L13-02**.
- « I recommend … Windows of Opportunity for the beginning » → CONCORDE avec §9.4.11 (Apprentissage).

---

## 6. Synthèse

### 6.1 CONCORDE → [HEURISTIQUE] du guide qui peuvent devenir [AVIS D'EXPERT] attribués
1. **Will to Live + Lithe** comme noyau anti-tunnel (§9.4.6) : Otzdarva (4 builds, justification explicite) ; Hens garde Will to Live dans 2 builds.
2. **Windows of Opportunity** comme perk d'apprentissage et de SoloQ (§9.4.9, §9.4.11) : Hens (Best SoloQ), Otzdarva (Beginner Solo, Basement), den.
3. **Kindred** en variante SoloQ (§9.4.9) : Hens et Otzdarva la placent **dans** le build SoloQ.
4. **Déjà Vu** pour casser le 3-gen (§9.4.3) : Hens (SoloQ), Otzdarva (Gen Rush, Gen-Jockey, avec le raisonnement « éloigner les gens restants »).
5. **Self-Care + Botany** (§9.4.4) et **Babysitter + We'll Make It** (§9.4.5) : Otzdarva, avec justification.
6. « **Gardez une perk d'endgame dans un autre build** » (§9.4.8, [AVIS D'EXPERT] non attribué) : Hens (Hope dans 3 builds sur 5).
7. Hiérarchies de tiles **LW > SW**, **4-lane opened > closed** (§4.1.5, §4.4.2-4.4.5) : Eager Face (2023, communautaire).
8. Emplacement fixe des catégories de tiles, itération et rotation tirées (§4.1.3, §5.1) ; grille 8 × 8 m, tiles 16 × 16 m (§5) : Eager Face.
9. Conditions de début de poursuite (≤ 12 m, survivant qui court, tueur qui bouge, §3.1) : CΛLLMΣDΛDΛ (Shift Tech).
10. Durées de vault, stun, blocage de fenêtre (§3.1) : den.

### 6.2 DIVERGE → conflits à exposer
- **T-L walls « clockwise »** (Eager Face) contre « sens horaire faux comme règle » (§4.2.3) : CONFLICT-L13-01.
- **Shack : « au moins 2 tours avant la palette »** (den) contre « Erreur fréquente » (§4.4.1) : CONFLICT-L13-02.
- **Boost au coup 150 % / 2 s** (CΛLLMΣDΛDΛ) contre 1,8 s / ×1,65 (§3.1) : CONFLICT-L13-03.
- **Build chase** : vitesse (Finesse + Resilience + Dramaturgy/Lithe, Hens et Otzdarva) contre discrétion (Parental Guidance + Lucky Break, §9.4.1). Pas un conflit de fait : **deux styles**. Note : Finesse et Resilience sont deux bonus de **vitesse de saut** que le guide classe comme soumis aux DR (§9.2.2, VP indirect) ; aucun des deux experts ne le mentionne → leur combinaison vaut **moins** que la somme [HYPOTHÈSE sur l'ampleur exacte].
- **SoloQ** : Deliverance + Empathy (guide) contre Kindred + Lithe (Otzdarva) ou Kindred + Lithe + Déjà Vu (Hens). Deliverance **nerfée en 10.1.0** : son absence chez Otzdarva (09/09/2026, après le nerf) est un indice que le guide la surévalue en SoloQ [HYPOTHÈSE].
- **Locker Tech** (casier contre un dash) contre « les casiers ne sont pas une ressource de chase » (§4.4.7) : à nuancer en [SITUATIONNEL].
- **Sanctum of Wrath** : positions des deux shacks (Eager Face contre image Hens) : CONFLICT-L13-05.

### 6.3 NOUVEAU
- **Convention de callout d'horloge** (Hens, Eager Face) et vocabulaire TOP MID / MID / BOT MID.
- **Astuces d'orientation** par carte (Rotten Fields, Wreckers' Yard, The Game, Midwich, Toba Landing).
- **Edge tiles** (Z / U walls) : les plus faibles ; griffures très visibles contre le mur extérieur. **Straight / Corner tiles**.
- Techniques nommées : CJ Tech (setups de sauvetage), Window / Kek Tech, Shift Tech, Exit Gate Tech, Heal Tech, Pallet Vacuum, Gesture Tech.
- Tactiques de build d'Otzdarva : Plot Twist « devant le tueur » pour le forcer à choisir ; Moment of Glory en laissant un coffre à 99 % ; Change of Plan avec la toolbox d'un allié ; Wicked pour refuser les crochets Scourge au sous-sol (annoncé à l'équipe).
- Méta **recommandée** côté tueur (Hens, Otzdarva) : Pain Resonance, Corrupt Intervention, No Holds Barred, Ruin, NOED, Turn Back the Clock → **priors de déduction** (à ne pas confondre avec des pick rates).

---

## 7. Propositions d'intégration (prêtes à insérer)

**P1 — `06_macro.md` §6.8, « Grammaire des callouts », puce « Lieu » (remplacer la phrase sur la boussole)**
> - **Lieu** : **repères** de carte (main, killer shack, sous-sol, coins nommés) ; sinon le **système de l'horloge** : la carte est un cadran, **main à 12 h** et **shack vers 6 h** quand c'est possible, « mid », « top mid », « bot mid » pour les zones centrales ; les structures du royaume (cow tree, bus, harvester) servent de repères [AVIS D'EXPERT] (Hens333, hens333.com/callouts, non daté ; convention identique dans le guide Steam d'Eager Face, 12/2023 [AVIS COMMUNAUTAIRE]). Quand une carte n'a ni main ni shack excentré (Rotten Fields, Wreckers' Yard), **mettez-vous d'accord au chargement** sur ce qui est « en haut ». Ce système est une **convention d'équipe**, pas une donnée du jeu.

**P2 — `06_macro.md` §6.8, fin de la section « Lexique FR / EN » (nouvelle ligne)**
> | « Gen à 3 h » / « Tueur top mid » | « Gen at 3 » / « Killer top mid » | Callout d'horloge : main = 12 h, shack ≈ 6 h (convention Hens333 / Eager Face) [AVIS D'EXPERT] |

**P3 — `05_cartes.md` §5.4.9 (The Game), remplacer la dernière puce**
> - Callouts courants : **Control Room** (étage) et **Bathroom** (rez-de-chaussée, escalier du sous-sol) = **12 h** ; **Vat room** (congélateur en bas) = **6 h** ; les deux autres coins = escalier d'angle à palette **ou** salle au grand trou avec palette, qui peuvent s'échanger [AVIS COMMUNAUTAIRE] (Eager Face, guide Steam 2904838739, 12/2023, POSSIBLY STALE). Ce sont des **conventions** de communication, pas des données du wiki.

**P4 — `05_cartes.md` §5.4.3 (Rotten Fields), remplacer « « Moitié à 2 structures = le haut » : [INCERTAIN] »**
> - **Orientation (convention)** : la moitié qui porte **deux** structures (harvester ou cow tree) est appelée « le haut » [AVIS COMMUNAUTAIRE] (Eager Face, 12/2023) ; même disposition sur l'image Hens333 [AVIS D'EXPERT]. Convention d'équipe, pas une règle du jeu.

**P5 — `05_cartes.md` §5.4.10 (Sanctum of Wrath), remplacer « « Shack à 2 emplacements possibles » : [INCERTAIN], absent du wiki »**
> - « Shack à **2 emplacements possibles** » : absent du wiki, mais attesté par deux sources communautaires (Eager Face, 12/2023 : les deux « en bas » ; carte de callouts Hens333 : un vers 2 h, un vers 5 h) **[INCERTAIN]** sur les positions ; à vérifier en Custom Game (variante I).

**P6 — `05_cartes.md` §5.7, drill D1 (ajout d'une étape)**
> - **Étape d'orientation** : avant de chercher les ressources, nommez le « 12 h » de la carte (main, ou convention d'équipe) et placez le shack sur le cadran. Repères d'orientation communautaires (Eager Face, 12/2023, POSSIBLY STALE) : Wreckers' Yard, grande poche du bas avec vue sur la pile de voitures ; Midwich, côté toilettes et accueil = bas ; Toba Landing, murs « végétaux » à gauche, « rocheux » à droite [AVIS COMMUNAUTAIRE].

**P7 — `04_loops_tiles.md` §4.1.5, 2e et 3e puces (réécriture)**
> - « Long wall > short wall », « 4-lane opened (fenêtre extérieure) > closed » : [AVIS COMMUNAUTAIRE] (Eager Face, guide Steam, 12/2023 : l'« Outside variant » est plus forte « as it can chain into other nearby tiles ») ; cohérent avec le modèle 4.2 ; antérieur aux passes palettes 9.2.0-9.3.2. « T plus sûr que L » : toujours **non sourcé**.
> - Les noms « Wolfpack / Lone Wolf », « double window gym », « small-wall gym », « edge tiles Z / U », « sandwich gym », « impostor gyms » sont des **noms communautaires** attestés (Eager Face, 2023), absents du wiki ; leurs listes de royaumes datent d'avant le pool commun 9.2.0 : **ne pas les apprendre**.

**P8 — `04_loops_tiles.md` §4.2.3, ajout après la 3e puce (conflit exposé)**
> - **Conflit (CONFLICT-L13-01)** : un guide communautaire très suivi (Eager Face, Steam, 12/2023) conseille de courir les **T-L walls dans le sens horaire** « pour avoir des fast vaults réguliers sur les deux fenêtres ». Une **rotation** de tile ne change pas le sens horaire **de la tile** : si les T-L walls ne sont jamais générées **en miroir**, ce conseil peut valoir **pour cette tile précise**. Le miroir n'est pas documenté (question ouverte). En attendant : repérez sur place la fenêtre dont la réception est loin du tueur (§4.4.4) ; le « sens horaire » est une **hypothèse à tester** en Custom Game, pas une règle.

**P9 — `04_loops_tiles.md` §4.4.1, « Erreur fréquente » (ajout d'une attribution)**
> Cette règle circule encore dans des guides récents (ex. guide Steam de den, 04/2024 : « Only use it after looping at least 2 times ») [AVIS COMMUNAUTAIRE] ; elle reste fausse comme règle absolue (CONFLICT-L13-02).

**P10 — `04_loops_tiles.md` §4.4.8 ou nouvelle sous-section « Edge tiles » (ajout)**
> **Edge tiles** (« Z wall », « U wall », petits murs contre la bordure) : les tiles les plus faibles, trop courtes pour empêcher une fente ; **tes griffures y sont très visibles contre le mur extérieur** [AVIS COMMUNAUTAIRE] (Eager Face, 12/2023). Cachette possible (zone peu visitée), mauvaise direction de fuite.

**P11 — `03_chase.md` §3.4, T07 (ajout d'une note avancée)**
> **Note avancée — « Shift tech »** [AVIS COMMUNAUTAIRE] (CΛLLMΣDΛDΛ, guide Steam 2792644224, maj 06/2026) : la poursuite exige les trois conditions de 3.1 (≤ 12 m dans son champ, tu cours, il bouge). En **marchant** dans son champ (ou en courant hors de son champ), la poursuite ne démarre pas, et le blocage après 3 vaults, qui compte **dans la même poursuite**, ne s'applique pas. Applicable surtout au shack contre un tueur qui suit à distance ; inutile dès qu'il est à portée. Temporisation exacte des conditions : **[INCERTAIN]** (3.11).

**P12 — `03_chase.md` §3.7, T20 (ajout)**
> **Techniques de collision nommées** [AVIS COMMUNAUTAIRE] (CΛLLMΣDΛDΛ, Steam, maj 06/2026 ; mécaniques **non vérifiées**, POSSIBLY STALE) : « Window / Kek tech » (traverser le tueur en fin de vault, timing « plus strict » qu'avant) ; « CJ tech » (vaulter la palette sous laquelle un allié est à terre pour que le tueur ne puisse que le **ramasser**, puis sauvetage à la lampe). À apprendre en Custom Game ; ne pas compter dessus en partie publique.

**P13 — `03_chase.md` §3.10 ou §3.11 (conflit exposé)**
> **CONFLICT-L13-03** : un guide Steam (CΛLLMΣDΛDΛ, maj 06/2026) annonce un boost au coup de « 150 % pendant 2 s ». La KB garde **1,8 s** (VP) et **×1,65** (SS) ; la valeur communautaire est probablement une approximation ou une valeur ancienne.

**P14 — `09_perks_survivant.md` §9.4.6 (Anti-tunnel), ajout à la fin de « POURQUOI »**
> Recoupement expert : **Will to Live + Lithe** est le noyau anti-tunnel des builds d'Otzdarva (« a great combo … if you're being tunneled off hook » ; Lithe sur un vault proche **juste après** la libération) [AVIS D'EXPERT] (otzdarva-builds.com, données du 09/09/2026). Hens333 garde Will to Live + Off the Record + Dead Hard [AVIS D'EXPERT] (hens333.com/survivorbuilds, non daté ; textes de perks antérieurs aux nerfs d'Off the Record 9.2.x et de Deliverance 10.1.0).

**P15 — `09_perks_survivant.md` §9.4.9 (SoloQ), ajout à « Variantes »**
> Les deux experts consultés **ne mettent pas Deliverance** dans leur build SoloQ : Otzdarva prend **Kindred · Windows · Lithe · Will to Live** (09/09/2026, après le nerf 10.1.0 de Deliverance) ; Hens prend **Déjà Vu · Windows · Lithe · Kindred** [AVIS D'EXPERT]. Des avis, pas des taux de victoire.

**P16 — `09_perks_survivant.md` §9.4.1 (Chase), ajout à « CAS D'ÉCHEC » ou « Variante »**
> Variante experte « vitesse » : **Five Moves Ahead ou Windows + Lithe + Finesse + Resilience** (Otzdarva) ; **Dramaturgy + Finesse + Resilience + Hope** (Hens) [AVIS D'EXPERT]. Attention : Finesse et Resilience accélèrent toutes deux le saut, famille soumise aux DR (§9.2.2) : le second bonus compte moins que prévu ; aucun des deux experts ne le signale. Otzdarva juge Five Moves Ahead « slightly stronger » que Windows (LIVE) ; les deux sont refondues au PTB 10.2.0.

**P17 — `09_perks_survivant.md` §9.4.8, dernière phrase**
> … gardez une perk d'endgame dans un autre build [AVIS D'EXPERT] (Hens333 met Hope dans 3 de ses 5 builds, hens333.com/survivorbuilds, non daté).

**P18 — `06_macro.md` §6.8, table « Suivi du tueur et de ses perks » (nouvelle ligne)**
> | Gen qui explose **sans kick** dans la minute qui suit un accrochage, tueur à ≤ 20 m | Turn Back the Clock (40/50/60 s après l'accrochage, −10 %) | (VM) |
> *Pourquoi cette ligne* : Turn Back the Clock figure dans 18 des 42 builds « sans limitation » de Hens et dans 19 des 184 builds d'Otzdarva [AVIS D'EXPERT : méta recommandée, pas un taux d'usage]. Déduction complète : `PERK_DEDUCTION.md`.

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| L13-C01 | Callouts : carte divisée en 12 secteurs, 1 à 12 à partir du haut-milieu | Hens333 /callouts | non daté (convention) | EXPERT_OPINION |
| L13-C02 | Convention : main ≈ 12 h, shack ≈ 6 h, « mid / top mid / bot mid » | Eager Face (Steam) | 12/2023 | COMMUNITY_OBSERVATION ; concordant avec L13-C01 |
| L13-C03 | Grille : unités de 8 × 8 m ; la plupart des tiles = 16 × 16 m | Eager Face | 12/2023 | COMMUNITY_OBSERVATION ; concorde avec `05_cartes.md` |
| L13-C04 | Vaults 0,5 / 0,9 / 1,5 s ; blocage 30 s après 3 rushed vaults ; stun 2 s | den (Steam) | 04/2024 | COMMUNITY_OBSERVATION ; concorde avec CANONICAL_FACTS |
| L13-C05 | Début de poursuite : ≤ 12 m dans le champ du tueur, survivant qui court, tueur qui marche | CΛLLMΣDΛDΛ | maj 06/2026 | COMMUNITY_OBSERVATION ; concorde avec §3.1 (SS) |
| L13-C06 | Porte : 20 s ; premier voyant rouge à 25 % | CΛLLMΣDΛDΛ | maj 06/2026 | 20 s : concorde (SS) ; 25 % : UNCERTAIN |
| L13-C07 | Boost au coup « 150 % pendant 2 s » | CΛLLMΣDΛDΛ | maj 06/2026 | **CONFLIT** (KB : 1,8 s VP, ×1,65 SS) |
| L13-C08 | Poised : pas de griffures « 30 seconds » après un gen | Otzdarva | 09/09/2026 | rang III de 20/25/30 s : concorde |
| L13-C09 | Moment of Glory : soin en « 60 seconds » | Otzdarva | 09/09/2026 | rang III de 80/70/60 s : concorde |
| L13-C10 | Full Luck : « nearly 100% chance to self-unhook » | Otzdarva | 09/09/2026 | UNCERTAIN ; Slippery Meat refondue au PTB 10.2.0 |
| L13-C11 | Textes Hens : Deliverance 100/80/60 s ; OTR 60/70/80 s ; Resurgence 40/45/50 % ; Hope 5/6/7 % | Hens333 | non daté | **OUTDATED** (LIVE : 160/140/120 ; 30/35/40 ; 50/60/70 ; 3/4/5) |
| L13-C12 | Perks les plus fréquentes, 42 builds « sans limitation » : Pain Resonance 32, CI 26, TBTC 18 | Hens333 /killerbuilds | antérieur à 10.0.0 probable | EXPERT_OPINION (recommandation, pas usage) |
| L13-C13 | Perks les plus fréquentes, 184 builds : NHB 64, Pain Resonance 57, Ruin 38, CI 34, NOED 32 | otzdarva-builds.com | 09/09/2026 | EXPERT_OPINION (recommandation, pas usage) |

## Conflits

#### CONFLICT-L13-01 : sens de rotation des T-L walls
- Source A : Eager Face, « DBD: Map Layouts, Callouts, and Tiles Guide » (Steam 2904838739, maj 05/12/2023) : « run this tile clockwise … consistent fast vaults on both windows ».
- Source B : guide §4.2.3 et §4.9, `batch7_tiles.md` l. 129 et 838 : « sens horaire = faux comme règle (orientation RNG) ».
- Hypothèse : une **rotation** conserve le sens horaire propre à la tile ; seul un **miroir** l'inverserait. Si les T-L walls ne sont jamais reflétées, la source A peut être juste **pour cette tile**, et l'argument « orientation tirée au hasard » de B ne suffit pas à la réfuter. Le conseil reste de toute façon subordonné à la position du tueur.
- Résolution : **UNRESOLVED** (dépend de la question ouverte n° 3 du lot 7 : miroir ou non).

#### CONFLICT-L13-02 : palette du shack « après au moins 2 tours »
- Source A : den, « How to Loop and win every Chase » (Steam 3208139129, 03/04/2024).
- Source B : §4.4.1 « Erreur fréquente » (règle absolue fausse : tueur qui tient l'intérieur, survivant blessé, pouvoir anti-loop).
- Hypothèse : A donne une règle de débutant valable contre un tueur qui suit dehors ; B la borne.
- Résolution : B prime (raisonnement en temps, §4.2.2) ; A = [AVIS COMMUNAUTAIRE] simplifié.

#### CONFLICT-L13-03 : boost de vitesse au coup reçu
- Source A : CΛLLMΣDΛDΛ (Steam 2792644224, maj 20/06/2026) : « 150% speed boost for 2 seconds ».
- Source B : §3.1 / CANONICAL_FACTS : **1,8 s** (VP) ; **×1,65** (SS).
- Hypothèse : arrondi communautaire ou valeur antérieure.
- Résolution : B prime (VP pour la durée) ; A non retenue.

#### CONFLICT-L13-04 : valeurs de perks affichées par hens333.com
- Source A : hens333.com/survivorbuilds (non daté) : Deliverance Broken 100/80/60 s ; Off the Record 60/70/80 s ; Resurgence 40/45/50 % ; Hope 5/6/7 %.
- Source B : `PERK_DATABASE.md` (re-vérifié 27/09/2026) et notes officielles : 160/140/120 s (10.1.0) ; 30/35/40 s (9.2.2) ; 50/60/70 % (8.1.0) ; 3/4/5 % (9.2.0).
- Hypothèse : base de textes du site non mise à jour.
- Résolution : **RESOLVED** : A = OUTDATED ; ne jamais citer les chiffres de la page.

#### CONFLICT-L13-05 : emplacements du shack à Sanctum of Wrath
- Source A : Eager Face (Steam, 12/2023) : deux emplacements possibles, « both … on the bottom of the map ».
- Source B : image Hens333 « Sanctum of Wrath » (non datée) : deux « S », près de 2 h et près de 5 h.
- Source C : guide §5.4.10 : « [INCERTAIN], absent du wiki ».
- Hypothèse : A et B confirment l'existence de ≥ 2 emplacements ; l'écart vient d'une **orientation** différente de la carte, ou d'un changement de carte (passes 9.2.0-9.3.2 sur Yamaoka).
- Résolution : **UNRESOLVED** (vérification en Custom Game).

#### CONFLICT-L13-06 : exclusivités de maze tiles par royaume
- Source A : Eager Face (12/2023) : Labyrinth = Yamaoka et Ormond ; Locker Gym = Red Forest et Ormond ; Small-Wall Gym = Autohaven ; Impostor Gyms = Garden of Joy.
- Source B : note officielle 9.2.0 : « Updated all Realms to draw from the same pool of available maze tile layouts » (§4.1.3).
- Hypothèse : A (et la page wiki Maze Tiles) décrivent l'état **d'avant 9.2.0**.
- Résolution : A = OUTDATED probable ; CONFLICT-L7-01 reste **UNRESOLVED** sur le sens exact de « layouts ».

#### CONFLICT-L13-07 : « casser une fenêtre »
- Source A : « M », « COMPLETE GUIDE ON LOOPING » (Steam 2371975971, 17/02/2024) : bloquer une fenêtre forcerait le tueur à « break the window ».
- Source B : §3.1 : une fenêtre se vaulte ou se bloque par l'Entité ; la casse concerne palettes et murs cassables. Aucune mécanique de casse de fenêtre dans la KB.
- Résolution : A **rejetée** (non fiable sur ce point) ; baisse la confiance dans le reste du guide A.

## Écarts avec le guide actuel

| Élément | Le guide dit | Sources expertes | Verdict |
|---|---|---|---|
| Lieu dans un callout (§6.8) | Repères, sinon boussole « nord de main » | Convention d'horloge (Hens, Eager Face) | **NOUVEAU** → P1, P2 |
| Callouts de The Game (§5.4.9) | [INCERTAIN], absents du wiki | Convention attestée (Eager Face) | IMPRÉCIS → P3 |
| Rotten Fields « moitié à 2 structures = le haut » (§5.4.3) | [INCERTAIN] | Convention attestée (Eager Face, Hens) | IMPRÉCIS → P4 |
| Sanctum : shack à 2 emplacements (§5.4.10) | [INCERTAIN] | Attesté, positions divergentes | reste INCERTAIN → P5 |
| Noms communautaires de tiles (§4.1.5) | « invérifiables » | Attestés comme noms communautaires | IMPRÉCIS → P7 |
| LW > SW, opened > closed (§4.1.5) | [AVIS D'EXPERT] non sourcé | Eager Face (communautaire, 2023) | OK → attribution (P7) |
| T-L « sens horaire » (§4.2.3) | Faux comme règle | « clockwise » (Eager Face) | **CONFLIT** L13-01 → P8 |
| Palette du shack après 2 tours (§4.4.1) | Erreur fréquente | Règle encore conseillée (den) | OK (le guide a raison) → P9 |
| Boost au coup (§3.1) | 1,8 s, ×1,65 | 150 % / 2 s | OK (le guide a raison) ; CONFLIT L13-03 |
| Anti-tunnel (§9.4.6) | [HEURISTIQUE] | Otzdarva et Hens concordent sur Will to Live (+ Lithe) | OK → attribution (P14) |
| SoloQ (§9.4.9) | Deliverance + Empathy au cœur | Aucun des deux experts ne les prend | **DIVERGENCE d'avis** → P15 |
| Chase (§9.4.1) | Discrétion après contact | Vitesse (Finesse, Resilience) ; DR non signalés par les experts | **DIVERGENCE d'avis** → P16 |

## Questions ouvertes

1. Les maze tiles peuvent-elles être générées **en miroir** ? (tranche CONFLICT-L13-01 ; test en Custom Game sur plusieurs T-L walls).
2. Sanctum of Wrath (variante I, LIVE) : combien d'emplacements de shack, et où ? (CONFLICT-L13-05).
3. Seuil du premier voyant d'une porte de sortie (25 % ?) : vérifiable en Custom Game.
4. « Heal tech » : le tueur peut-il ramasser un survivant **pendant** qu'un allié le soigne ? Un survivant au sol qui tient Sprint bloque-t-il son soin ?
5. CJ tech : le tueur est-il vraiment **incapable** de casser une palette pendant qu'un survivant la vaulte ?
6. Légendes des cartes Hens non expliquées : « WT » (Coal Tower), « C|H », « P » : à confirmer auprès de la page ou du Discord de Hens (non consulté).
7. Contenu des vidéos d'Otzdarva « All Common Tiles Explained » et « A Survivor's Guide to every Killer » : **non consulté** ; ses hiérarchies de tiles restent inconnues (question n° 12 du lot 7).
8. Date réelle des builds survivant de Hens (choix antérieurs ou postérieurs aux nerfs de Deliverance 10.1.0 et d'Off the Record 9.2.x ?).
9. Up the Ante + Slippery Meat + offrandes : chance réelle d'auto-décrochage cumulée (claim Otzdarva « nearly 100% »).
10. Pages non lues : otzdarva.com « Tierlists », « Otz's Opinions », otz-addon-tierlist (hors périmètre de ce lot, peut-être utiles au côté survivant).

## Sources

[1] Hens333 — « Hens' Callouts » — https://hens333.com/callouts (+ chunk `/_app/immutable/nodes/4.2b8a9365.js`, images `/img/dbd/callouts/*.webp`, 8 vues) — consulté le 28/09/2026 via curl — archive `kb/sources/expert/hens333_callouts.txt`
[2] Hens333 — « Hens' Survivor Builds » — https://hens333.com/survivorbuilds — consulté le 28/09/2026 via curl — `hens333_survivorbuilds.txt`
[3] Hens333 — « Hens' Killer Builds » — https://hens333.com/killerbuilds (+ chunk `/_app/immutable/chunks/KillerHandler.e0d96896.js`) — consulté le 28/09/2026 via curl + Node — `hens333_killerbuilds.txt`
[4] Hens333 — « Hens' FAQ » — https://hens333.com/faq — consulté le 28/09/2026 via curl — `hens333_faq.txt`
[5] Otzdarva — « Beginner Guides » — https://otzdarva.com/dbd/beginner-guides — consulté le 28/09/2026 via curl ; titres des vidéos via https://www.youtube.com/oembed (vidéos **non vues**) — `otzdarva_beginner-guides.txt`
[6] Otzdarva — « Otzdarva Builds » — https://otzdarva-builds.com/ ; données https://otzdarva-builds.com/data/builds.json (Last-Modified 09/09/2026) et /data/scrape.json (25/08/2026) — consulté le 28/09/2026 via curl — `otzdarva_builds_survivors.txt`, `otzdarva_builds_killers.txt`
[7] Eager Face — « DBD: Map Layouts, Callouts, and Tiles Guide – Update PTB 7.4.0 » — https://steamcommunity.com/sharedfiles/filedetails/?id=2904838739 (04/01/2023, maj 05/12/2023) — consulté le 28/09/2026 via curl — `steam_eagerface_map-layouts-callouts-tiles.txt`
[8] CΛLLMΣDΛDΛ — « All Dead by Daylight Survivor Techs » — https://steamcommunity.com/sharedfiles/filedetails/?id=2792644224 (13/04/2022, maj 20/06/2026) — consulté le 28/09/2026 via curl — `steam_callmedada_survivor-techs.txt`
[9] « M » — « COMPLETE GUIDE ON LOOPING » — https://steamcommunity.com/sharedfiles/filedetails/?id=2371975971 (23/01/2021, refait 17/02/2024) — consulté le 28/09/2026 via curl — `steam_M_complete-looping.txt`
[10] den — « How to Loop and win every Chase » — https://steamcommunity.com/sharedfiles/filedetails/?id=3208139129 (31/03/2024, maj 03/04/2024) — consulté le 28/09/2026 via curl — `steam_den_loop-every-chase.txt`
[11] Tokio Goose — « How to Run Map Specific Jungle Gyms » — https://steamcommunity.com/sharedfiles/filedetails/?id=2709060449 (05/01/2022) — consulté le 28/09/2026 via curl, non utilisé (schémas en images) — `steam_tokiogoose_map-specific-jungle-gyms.txt`
[12] Steam — recherche de guides Dead by Daylight (app 381210), mots-clés looping / tiles / survivor, tris « Most popular » et « Top rated » — https://steamcommunity.com/app/381210/guides/ — consulté le 28/09/2026 via curl
Références internes : `kb/guide/03_chase.md`, `04_loops_tiles.md`, `05_cartes.md`, `06_macro.md`, `09_perks_survivant.md`, `CANONICAL_FACTS.md` ; `kb/research/batch7_tiles.md` ; `kb/deliverables/PERK_DATABASE.md`, `PERK_DEDUCTION.md` ; `kb/sources/patches/official_544.txt`, `official_550.txt`, `official_556.txt`, `patch_10.0.0.txt` ; `kb/seed/audit_phase0.txt` (registre des patchs, p. 7-12).
