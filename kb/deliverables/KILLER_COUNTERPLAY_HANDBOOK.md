# KILLER COUNTERPLAY HANDBOOK — une fiche rapide par tueur (livrable §51-3)

> **Statut : WRITTEN + AUDITED (§25-26) + fiches re-vérifiées (27/09/2026)** sur pages wiki.gg complètes et notes officielles BHVR (lot 12b). Version 2 : remplace entièrement la v1 (écrite sans accès web, valeurs [SEED]/[CM] non vérifiées).

- **Version de référence : LIVE 10.1.2a** (hotfix serveur du 17/09/2026, chapitre 41 *Chorus of Sin*). **État au 27/09/2026.**
- **PTB 10.2.0** (15 → 21/09/2026) : **non LIVE**. Aucune valeur PTB n'est utilisée ; une perk affichée par le wiki en version PTB est signalée « PTB 10.2.0 — non LIVE ». Aucun **pouvoir** des 44 tueurs n'est modifié au PTB 10.2.0 (note 559).
- **Mode 1v4 uniquement** : les valeurs 2v8 (Innate Skills de Good Guy, Xenomorph, Ghost Face, Executioner ; zombies du Nemesis 9.4.2…) ne sont jamais utilisées.
- **Sources** : `kb/research/batch4_killers_g1.md` … `g6.md` (fiches auditées puis re-vérifiées), cohérence avec les chapitres `kb/guide/07_tueurs_A.md` et `08_tueurs_B.md` (tableaux récapitulatifs), `kb/research/batch7_tiles.md` §5 (matrice tile × tueur, palettes), `kb/ledgers/AUDIT_PHASE0_ERRATA.md` (prime sur l'audit phase 0). Infobox vitesse / TR / taille des 44 tueurs recontrôlées le 27/09/2026 sur `kb/sources/wiki_killers/*.txt`.
- **Nœuds couverts** : T-F45 (typologie transversale), T-C11 (matrice tile × archétype, v2). Couverture : **44/44**. Statut du domaine : **NOT READY** (voir `kb/PROJECT_MANIFEST.md`).
- **Limites qui restent** : aucun guide expert ni aucune VOD n'a été lu ; tout le counterplay est **[HEURISTIQUE]** fondé sur des valeurs vérifiées. Fréquences de perks et d'add-ons : non vérifiables (NightLight inaccessible). Conflits encore ouverts : §6.

## Légende

**Confiance d'une valeur** (dernière colonne du tableau §4, parenthèses dans les fiches) :

| Code | Sens | Niveau mission §21 |
|---|---|---|
| **VP** | Note officielle BHVR (patch notes) | VERIFIED_PRIMARY |
| **VM** | Page wiki complète + note officielle concordantes | VERIFIED_MULTI_SOURCE |
| **SS** | Page wiki complète seule (infobox, pouvoir, Power Trivia) | STRONG_SECONDARY |
| **INC** | Incertain, page muette ou sources contradictoires (voir §6) | UNCERTAIN |

Sans mention, une valeur chiffrée d'une fiche est **SS**.

**Nature d'une consigne** : **[FACT]** mécanique lue ; **[DATA]** chiffre ou calcul ; **[HEURISTIQUE]** raisonnement de jeu tiré de la mécanique (**étiquette par défaut** de toute consigne « Faire / Ne pas faire ») ; **[SITUATIONNEL]** ; **[HYPOTHÈSE]** ; **[INCERTAIN]**. Aucune étiquette EXPERT OPINION : aucune source experte n'a été lue.

**Abréviations** : TR = terror radius · LOS = ligne de vue · gen = générateur · CD = cooldown · KI = Killer Instinct · EI = Evil Incarnate · MR = Mutation Rate · « → » = « le survivant fait X au lieu de Y ».

**Repères survivant** (audit phase 0) : course **4,0 m/s**, marche **2,26 m/s**, accroupi **1,13 m/s** ; casse de palette au pied par le tueur **2,34 s** ; gen solo **90 s** ; phase de crochet **70 s**. Un tueur à 4,6 m/s reprend 0,6 m/s (10 m en ≈ 16,7 s) ; à 4,4 m/s, 0,4 m/s (10 m en 25 s) [DATA].

---

## 1. Comment utiliser ce handbook

1. **Avant le reveal** : ligne « Identification » des fiches §5 (objets de carte, TR absent ou anormal, sons de pouvoir). Depuis 9.6.0, le tueur est révélé à tous dès qu'un survivant entre en chase ou perd un état de santé (VP) ; son loadout reste caché.
2. **Au reveal** : archétype(s) au §4, principes au §2, structures au §3, puis la fiche §5.
3. **Pendant la partie** : identifier la **phase** (Shape Stalker/EI, Oni hors/pendant Fury, Legion Frenzy, Ghoul marqué, Krasue corps/tête, The First hors/pendant Worldbreaker, Judgment hors/pendant Zealous, Trickster rang S) et les **add-ons** observés (ligne « Add-ons » de la fiche).
4. **Les consignes sont l'option par défaut**, pas des règles. Un tueur expérimenté l'anticipe (il attend le pré-drop, feinte la charge, tient sa hachette) : s'il exploite ta réponse habituelle, **varie**.
5. **SoloQ / SWF** : une consigne qui répartit des rôles (porteur de la boîte du Cenobite, « écraseur » de Victor, un seul survivant aux horloges de The First, scelleur de portails) demande le vocal (SWF). En SoloQ, n'agir que sur des signaux observables (HUD, cris, auras de perks) : si un coéquipier va déjà vers l'objectif, reste sur ton gen et revérifie 10-15 s plus tard.

---

## 2. Typologie transversale (T-F45)

La plupart des tueurs sont **hybrides** (2 à 4 archétypes, §4). Le counterplay se construit en trois couches : (1) principes de ses archétypes, superposés ; (2) sa **phase** ; (3) exceptions de sa fiche, add-ons compris. Classement [HEURISTIQUE], aligné sur les chapitres 7-8.

### 2.1 Archétypes

| Archétype | Tueurs (principal) | Principe de counterplay | Quand ça échoue |
|---|---|---|---|
| **M1** | Trapper, Wraith (en chase), Shape (Pursuer), Doctor, Huntress (bout portant), Cannibal, Pig, Legion (hors Frenzy), Ghost Face, Oni (hors Fury), Ghoul (contre un marqué), Charlotte seule | Tenir chaque tile ; palettes et fenêtres = ressources pleines (chaque casse lui coûte 2,34 s ≈ 9,4 m pour toi [DATA]) ; changer de tile sur un **événement** (casse, stun, vault du tueur) | Le M1 n'est qu'une phase (Shape EI, Oni Fury, Legion Frenzy, Ghost Face contre un Marked) ; zone préparée (Trapper, Hag) ; zone morte ; Bamboozle, Enduring |
| **Anti-loop** | Doctor, Cannibal, Nurse, Clown, Demogorgon, Deathslinger, Executioner, Blight, Twins, Legion (Frenzy), Nemesis, Mastermind, Knight, Singularity, Xenomorph, Good Guy, Lich, Dark Lord (loup), Houndmaster, Ghoul | **Décider plus tôt** : quitter la tile, pré-drop ou rester hors de portée du pouvoir ; enchaîner les tiles. Le pré-drop dépend du cas (§2.2) | Le tueur attend ton pré-drop ; tile-to-tile en open contre un tueur dont l'open est la portée idéale (Houndmaster, Mastermind, Blight, Hillbilly) |
| **Ranged** | Huntress, Deathslinger, Plague (Corrupt Purge), Executioner, Clown, Trickster, Cenobite, Artist, Singularity, Unknown, Dark Lord (Hellfire), Houndmaster (chien), Animatronic, Krasue, Slasher (pics), Judgment | Obstacles **hauts** ; esquive latérale **au relâchement**, pas pendant la charge ; pas de trajectoire prévisible (sortie de vault, ligne droite) ; compter munitions et recharges | Projectile qui **traverse** les murs : Swarms de l'Artist, onde de l'Executioner, Divine Light du Judgment, Dream Snares → changer de direction et gérer le statut prime sur la LOS ; tirs en cloche (Unknown, Animatronic) |
| **Mobilité** | Hillbilly, Nurse, Wraith, Spirit, Hag (TP), Nightmare (TP), Demogorgon, Oni, Blight, Clown (Antidote), Onryō, Dredge, Mastermind, Singularity, Xenomorph, Good Guy, Unknown, Lich, Dark Lord, Ghoul, Animatronic, Krasue, First, Slasher | Collé aux obstacles hauts et solides ; pas d'open ; utiliser ses **récupérations** (fatigue Nurse 2-3 s, Blight 2,5 s, choc du Hillbilly 2,5 s, après-Fly du Lich 2,75 s) pour **se repositionner** ; macro : dispersion, pas de 3-gen compact | Mobilité **qui traverse** (blink, phase, Upside Down, Omnipresent Evil) ; mobilité **ancrée sur la carte** (casiers, TV, portes, pods, palettes/fenêtres du Slasher et de la chauve-souris) : ces objets deviennent ses points d'arrivée |
| **Furtif** | Wraith, Shape (Stalker), Pig, Spirit, Ghost Face, Onryō, Good Guy (Hidey-Ho), Animatronic, First (Upside Down), Slasher (OE) ; partiellement Demogorgon (12 s après portail), Charlotte endormie, Skull Merchant (rappel de drone) | **L'absence de TR est une information, pas une sécurité** : caméra régulière, réparer face aux accès, obstacle à portée, révéler quand c'est possible (Ghost Face, caméras de l'Animatronic) | Cartes sombres et intérieurs à coins ; add-ons d'Undetectable ou de son coupé ; **faux signaux** (faux pas du Good Guy, TR du fantôme de la Hag, leurres de l'Unknown avec OSS Report, TR de la hache avec Faz-Coin, TR d'un drone piraté avec Unpublished Manuscript) |
| **Zone / piège** | Trapper, Hag, Nightmare, Pig (RBT), Plague (fontaines), Executioner (traînées), Twins (Victor posé), Nemesis (zombies), Cenobite (boîte), Dredge (Nightfall), Knight (patrouilles), Skull Merchant (drones), Dark Lord (Hellfire), First (lianes), Judgment (Shrines, Heresy) | **Son temps de setup est ta ressource** : ne pas rejouer une zone préparée ; tirer la chase hors de son réseau ; nettoyer (désarmer, effacer, pirater, verrouiller, sceller, retirer une cassette) **pendant qu'il chase ailleurs** | Add-ons qui annulent le nettoyage (Iridescent Stone, Mint Rag, Iridescent Videotape…) ; zones mobiles (traînées, patrouilles) ; herbe haute ; 3-gen défendu (y aller à plusieurs) |
| **Info** | Hag, Doctor, Nightmare, Legion, Plague, Ghost Face, Demogorgon, Artist, Dredge, Skull Merchant, Xenomorph, Lich, Houndmaster (Houndsense) | **Ne pas nourrir son info** (soin endormi contre le Nightmare, casier contre le Dredge, marche debout près d'une station Xeno ou d'un Victor posé) ; face à une révélation, **bouger** | Info déclenchée par des actions indispensables (skill checks, soins, sprays) : l'accepter et jouer le mouvement |
| **Slug** | Twins (Victor garde le sol) ; partiellement Legion (Deep Wound, 5e slash létal) | Ne pas se regrouper autour d'un survivant au sol gardé ; relever quand le garde est neutralisé (Victor **rouge** ou rappelé) | Victor gardé en sécurité ; Iridescent Pendant. Aucune auto-relève basekit en LIVE (Abandon = PTB 10.2.0) |
| **Coup unique** | Hillbilly, Cannibal, Shape (SS en EI), Oni (Fury) ; par add-on Huntress (Iridescent Head), Ghost Face contre un Marked (Exposed) | Palette tardive = pari ; privilégier **murs solides et fenêtres** contre le pouvoir ; esquiver sur l'**engagement**, pas sur le son | **Être blessé ne protège pas** : blessé, son M1 suffit. Add-ons « 1 état de santé » (Cracked Primer Bulb, Speed Limiter, Reflective Fragment) changent l'arbitrage |
| **Statut / jauge** | Plague (Sickness), Legion (Deep Wound), Trickster (Laceration), Mastermind (Uroboros), Krasue (Leech), Onryō (Condemned), Doctor (Madness), First (tokens), Judgment (Heresy), Artist (Swarmed), Unknown (Weakened) | **Gérer la jauge avant le seuil, pas après** (champignon avant Leeched II, désinfection avant 100, cassette tôt, Repent à 2 états, Snap Out of It hors de son TR) | La jauge se remplit pendant la chase : la gérer seulement hors chase |
| **Élimination hors crochet** | Shape (exécution en EI), Pig (RBT en sortie), Executioner (Final Judgement), Onryō (Condemned 7), First (Mind Break), Slasher (Finisher), Judgment (Exile à 2 états d'hérétique) | Le survivant à 2 états de crochet devient la **priorité d'équipe** ; connaître la condition exacte (fiche) | Anti-tunnel par perks de décrochage inutile contre l'Exile (pas de perks de crochet) |

### 2.2 Le pré-drop n'est pas universel (quatre cas)

| Cas | Tueurs | Réponse par défaut [HEURISTIQUE] |
|---|---|---|
| **(a) Casser lui coûte du pouvoir** | Blight (casse = tokens ramenés à 2 sous le max + recharge à 0 %, VM ; coût aussi à ≤ 3 tokens depuis 9.6.2, quantité INC) ; Singularity (palette jetée en Overclock ou TP à travers = casse + **Overheat 3 s** à 2,3 m/s, ≈ 5 m pour toi) ; Dark Lord loup (le Pounce qui casse est en CD 20 s) ; Ghoul (vault = CD ≈ 8 s ; casse = 1 token, 2 en Enragé) | Blight : pré-drop **le plus souvent rentable** (limite : il contourne). Autres : la palette « perdue » achète une fenêtre de recharge → gagner la tile suivante pendant ce temps |
| **(b) Son pouvoir punit l'attente à la palette** | Doctor (choc 0,65 s), Cannibal (balayage ; casse 1 s), Clown (Tonic : pas de fast vault), Executioner (onde à travers), Nemesis MR2+, Lich (Mage Hand prêt : palette debout **bloquée 4 s**), Mastermind **avec Lab Photo**, Knight (garde : baisser à ≥ 3 m force un détour) | Pré-drop **puis départ immédiat** vers la tile suivante, pas « pré-drop puis tenir » |
| **(c) Casse gratuite, drop tardif pas plus puni** | Demogorgon (Shred, CD 1,8 s), Oni en Fury, Shape en EI, Hillbilly (contre une palette pré-lâchée), Slasher (Jump Scare sur la ressource) | La palette vaut le **stun** ou le blocage d'un engagement ; le pré-drop lui offre la palette |
| **(d) La palette survit au pouvoir** | Mastermind **sans** Lab Photo (franchit ; rejouable après 1,5 s de CD), Good Guy **sans** Hard Hat (Scamper dessous en 1 s, la palette reste au sol), Legion en Frenzy (vaulte, stun possible si lâchée **sur** lui), Krasue tête (vaulte en 1,9 s ; stun 2,5 s possible), Houndmaster (le chien vaulte en 0,65 s ; une palette **debout** sert à se libérer) | Ne pas la considérer perdue ; ne pas rester **juste derrière** dans l'axe du pouvoir |

Contre un casseur **par add-on** (Legion, Executioner, Mastermind, Good Guy, Lich, Ghoul, The First, Judgment), identifier l'add-on (première casse observée) avant de changer de plan : sans lui, la palette reste une ressource. Contre un tueur qui attend ton pré-drop (il ralentit avant la palette), mélanger pré-drop, départ sans drop et drop normal pendant la recharge du pouvoir.

---

## 3. Matrice tile × archétype (T-C11, v2 — [HEURISTIQUE])

↑ = la structure gagne de la valeur pour toi ; ↓ = elle en perd ; ≈ = neutre ; ± = dépend du tueur (lire sa fiche). Les faits cités entre parenthèses sont vérifiés (fiches re-vérifiées, `batch7_tiles.md` §5.2) ; la cotation est [HEURISTIQUE]. Cette v2 intègre les lignes ajoutées par `batch7_tiles.md` §5.1 (L-T, 4-lane, pallet gym, filler, murets bas) et corrige la v1 (chien du Houndmaster, Good Guy, Mastermind, Lich, Knight).

| Structure | M1 | Anti-loop | Ranged | Mobilité | Furtif | Zone / piège | Info |
|---|---|---|---|---|---|---|---|
| **Fenêtre forte** | ↑ (Cannibal n'a rien contre, sauf Bamboozle) | ± ↑ Demogorgon, Oni (le pouvoir ne vaulte pas), Lich (ressource sûre après Mage Hand) ; ↓ Legion Frenzy, Ghoul (Leap Vault), Mastermind (Virulent Vault), Good Guy (Scamper 1 s), Krasue tête (1,67 s), Houndmaster (le chien vaulte ; vaulter à son arrivée = blessure), Clown (Tonic : pas de fast vault), Knight + Iridescent Company Banner | ↓ réception prévisible : Huntress, Deathslinger, Trickster (touche « dans un interstice »), Animatronic ; le mur ne protège pas : Artist, Judgment | ± ↑ Hillbilly (il boucle en M1) ; ↓ Nurse, Slasher et Dark Lord chauve-souris (point d'arrivée), First et Slasher (traversent en Upside Down / OE) | ≈ ; ↓ Pig accroupie près d'une fenêtre | ↓ fenêtre piégée côté sortie (Trapper, Hag) | ≈ |
| **Palette safe** | ↑↑ ressource pleine | ↓ cassée gratuitement : Demogorgon, Oni Fury, Shape EI, Nemesis MR2+, Slasher ; ↓ avec coût : Blight, Dark Lord loup (Pounce) ; **± reste en jeu** : Mastermind, Good Guy, Legion Frenzy, Krasue tête (§2.2 d) ; ± Lich (relevée, ou bloquée 4 s debout) ; Knight (garde : ordre 1,8 / 5 s ; baisser tôt force un détour) | ± palette basse contre projectile : ne bloque pas l'onde (Executioner) ni la Divine Light ; hachette, harpon, lames : INC ; ↑ Plague (un stun met fin au Corrupt Purge) ; ↑ Houndmaster (palette **debout** = libération de la prise) | ↓ Nurse (pas de stun en fatigue), Spirit (jeter tôt puis marcher), Singularity (casse + Overheat), Hillbilly LoPro Chains, Ghoul (bond) | ± ↓ Onryō démanifestée (pas de stun) ; ↑ Onryō manifestée | ≈ ; ↓ sous un drone (Skull Merchant, Lock-On) ; Nightmare : palette apparue = suspecte (Dream Pallet) | ≈ ; Doctor « Order » : palettes illusoires en Madness |
| **Shack / murs hauts pleins** | ↑ | ↑ Oni, Demogorgon, Mastermind, Houndmaster (angles courts), Blight (angle < 45° = glisse) | ↑ Huntress, Deathslinger, Trickster, Cenobite, Unknown, Animatronic, Krasue (la tête doit contourner) ; ↓ Artist, Executioner, Judgment (traversent : les murs ne font que **cacher** ta position) | ↑ Hillbilly, Nurse (obstacle opaque), Ghoul (tile fermé) | ↓ Ghost Face (stalk penché hors de ta vue), Shape Stalker | ↓ Trapper (entrée unique piégée) | ≈ |
| **Jungle gym** (LW / SW) | ↑ | ± ↑ Houndmaster ; ↓ Nemesis MR3 (JG courts dans 6,5 m), Xenomorph (queue 4,8 m) | ± ↑ Huntress, Deathslinger (JG fermés) ; ↓ Trickster (longues fenêtres vues de loin) | ↑ Hillbilly | ± coins favorables au stalk (Shape, Ghost Face) | ↓ coin piégé (Trapper) | ≈ |
| **L-T walls** (2 fenêtres, 0 palette) | ↑ (budget de vaults) | ± ↓ Legion Frenzy, Ghoul, Xenomorph, Houndmaster, Good Guy, Mastermind ; ↑ Demogorgon, Oni (rien à casser) | ↓ réception de vault prévisible | ↓ Nurse ; ↓ Blight (pas de palette pour le forcer à payer) | ≈ | ↓ fenêtre piégée | ≈ |
| **4-lane** | ↑ | ± ↓ Demogorgon (Shred dans l'axe d'un couloir) | ↓ tir dans l'axe ; ↑ si tu changes de couloir hors LOS | ± | ↓ coins (Ghost Face, Shape) | ≈ | ≈ |
| **Pallet gym** (1 palette, 0 fenêtre) | ↑ tant que la palette est levée | ↓↓ tout casseur ou vaulteur de palette (§4) ; Lich : Mage Hand sur l'unique palette | ± | ↓↓ Nurse, Spirit | ≈ | ↓ si la palette est déjà cassée | ≈ |
| **Filler** | ≈ (ressource de distance) | ↓ contre une casse gratuite (viser le stun ou partir) ; **exception Blight** (coût) ; Hillbilly / Cannibal : casse 1 s ≈ 4 m pour toi, pas zéro | ↓ palette basse (voir palette safe) | ↓↓ | ≈ | ≈ | ≈ |
| **Murets bas** (Cow Tree, Patio…) | ↓ (il lit tout) | ± | ↓↓ tir par-dessus ; Hellfire du Dark Lord **au-dessus des obstacles bas** ; tirs en cloche (Unknown, Animatronic) | ↓ | ↑ tu le vois aussi | ≈ | ≈ |
| **Zone ouverte** | ↓ zone morte | ↓ ; ↓↓ Houndmaster, Mastermind (portée idéale) | ↓↓ Huntress, Deathslinger, Trickster, Cenobite, Judgment | ↓↓ Hillbilly, Nurse, Oni Fury, Blight, Ghoul, Lich Fly, Victor | ↑ Ghost Face, Good Guy (tu les vois venir) ; ↓ Onryō (invisible à > 24 m) | ↑ réseau dispersé (Trapper, Hag faibles sur grande carte) | ≈ |
| **Verticalité / main à étage** | ≈ / ↑ | ± ↑ Mastermind ; ↓ Ghoul (bonds jusqu'à 8 m de dénivelé : un toit n'est pas un refuge) | ± ↑ Trickster (un dénivelé coupe la LOS) ; ↓ Huntress depuis l'étage, Unknown (visée verticale élargie en 9.2.0) | ± ↑ Nurse (blink d'étage raté = fatigue), Hillbilly (rampes) ; ↓ Ghoul | ↓ Shape, Ghost Face (coins) | ↑ Skull Merchant (pas de scan à travers planchers) ; ↓ Hag (réseau dense) | ↓ Doctor (Static Blast couvre tout le TR) |
| **Intérieur, couloirs, coins** | ≈ | ± ↑ Demogorgon (Shred limité), Cannibal (risque de Tantrum) ; ↓ Dredge (casiers), Nemesis (zombies dans les couloirs), Houndmaster (longs couloirs droits) | ± ↑ Huntress, Deathslinger, Trickster (sa valeur chute), Cenobite ; ↓ Executioner, Artist, Judgment (traversent) | ± ↑ Hillbilly, Nurse (multi-niveaux) ; ↓ Dredge, Slasher (densité de palettes/fenêtres = points d'apparition) | ↓ Ghost Face, Shape, Onryō | ↓ Hag, Trapper (zones sombres) | ↓ Doctor |

Slug (Twins) : ↑ vaults et obstacles hauts qui cassent les lignes de bond de Victor ; ↓ zone ouverte.

Règles de lecture : une case ± signale une décision tueur-dépendante (lire la fiche) ; la même structure change de valeur selon la **phase** (fenêtres contre Judgment hors / pendant Zealous, palettes contre Onryō manifestée / démanifestée, boucles longues contre The First hors / pendant Worldbreaker, palettes contre Legion hors / en Frenzy). Perks qui modifient les tiles (Bamboozle, Crowd Control, Cruel Limits, Wide Open Throttle…) : `batch7_tiles.md` §5.3.

---

## 4. Tableau des 44 tueurs

Vitesse, TR et taille : infobox wiki.gg recontrôlées le 27/09/2026 (SS), confirmées par note officielle quand indiqué (VM/VP). **Casse de palette par le pouvoir** (1v4) : **Oui** = pouvoir de base ; **Add-on** = seulement avec l'add-on nommé ; **Non** = le tueur casse au pied (2,34 s) comme tout le monde. Taille : Grand / Moyen / Petit (infobox Tall / Average / Short).

| # | Tueur | Vitesse (m/s) | TR | Taille | Casse de palette par le pouvoir | Archétype(s) | Conf. (stats · casse) |
|---|---|---|---|---|---|---|---|
| 1 | Trapper | 4,6 | 32 m | Grand | Non | Zone/piège · M1 | SS · SS |
| 2 | Wraith | 4,6 ; 6,0 occulté | 32 m ; aucun occulté | Grand | Non | Furtif · mobilité · M1 | SS · SS |
| 3 | Hillbilly | 4,6 ; sprint 10,12 (12 en Overdrive) | **40 m** (8.6.0) | Grand | **Oui**, tronçonneuse (~1 s) ; **LoPro Chains** : traverse sans s'arrêter | Mobilité · coup unique | SS · SS (mécanique sans LoPro INC) |
| 4 | Nurse | **3,85** | 32 m | Moyen | Non (blinke à travers) | Mobilité (TP) · anti-loop | SS · SS |
| 5 | Shape | 4,2 Stalker ; 4,6 Pursuer / EI | aucun (Stalker) ; **16 m** ; 32 m (EI) | Grand | **Oui**, Slaughtering Strike en EI | Furtif · coup unique · exécution | VM · VM |
| 6 | Hag | 4,4 | **24 m** | Moyen | Non | Zone/piège · TP · info | SS · SS |
| 7 | Doctor | 4,6 | 32 m | Grand | Non (palettes illusoires avec « Order ») | Anti-loop · info · M1 | SS · SS |
| 8 | Huntress | 4,4 | **20 m** (berceuse 45 m) | Grand | Non | Ranged · M1 | SS · SS |
| 9 | Cannibal | 4,6 | 32 m | Grand | **Oui**, tronçonneuse (CD 1 s) | M1 · anti-loop · coup unique | SS · SS |
| 10 | Nightmare | 4,6 | 32 m (berceuse 32 m endormi) | Moyen | Non (Dream Pallets = fausses) | Zone/piège · TP · info | SS · SS |
| 11 | Pig | 4,6 (4,0 accroupie) | **24 m** (9.1.0) | Moyen | Non | Furtif · piège · M1 | SS · SS |
| 12 | Clown | 4,6 | 32 m | Grand | Non | Anti-loop · mobilité (Haste) | VM · SS |
| 13 | Spirit | 4,4 | 24 m | Moyen | Non (phase à travers) | Mobilité · furtif | SS · SS |
| 14 | Legion | 4,6 ; 5,2 en Frenzy | 32 m ; **40 m** en Frenzy | Moyen | **Add-on** Iridescent Button (vaulte les palettes tombées en base) | M1 · info · slug indirect | SS · SS |
| 15 | Plague | 4,6 | 32 m | Grand | Non | Ranged · zone · infection | SS · SS |
| 16 | Ghost Face | 4,6 ; 4,0 accroupi | **24 m** ; aucun en Night Shroud | Moyen | Non | Furtif · M1 · info | VM · SS |
| 17 | Demogorgon | 4,6 | 32 m | Grand | **Oui**, Shred (CD 1,8 s) | Mobilité · anti-loop · info | SS · VP |
| 18 | Oni | 4,6 | 32 m | Grand | **Oui**, en Blood Fury | M1 · mobilité · coup unique | SS · VP (geste exact INC) |
| 19 | Deathslinger | 4,4 | **32 m** | Grand | Non | Ranged · anti-loop | SS · SS |
| 20 | Executioner | 4,6 ; 4,2 en traçant | 32 m | Grand | **Add-on** Obsidian Goblet | Ranged · zone · anti-loop | VM · VM |
| 21 | Blight | **4,4** (9.6.0) | **40 m** (8.6.0) | Moyen | **Oui**, Lethal Rush, **avec coût en tokens** | Mobilité · anti-loop | VM · VM |
| 22 | Twins | Charlotte 4,6 ; Victor 6,0 | 32 m ; aucun (Charlotte endormie) | Grand | Non | Slug · anti-loop · zone | SS · SS |
| 23 | Trickster | 4,4 | 24 m ; 44 m au rang S | Moyen | Non | Ranged · usure (Laceration) | VM · SS |
| 24 | Nemesis | 4,6 | 32 m | Grand | **Oui dès MR2** (Tentacle Strike) | Anti-loop · zone (zombies) | SS · VM |
| 25 | Cenobite | 4,6 | 32 m | Grand | Non (aucune casse décrite) | Ranged (chaîne) · zone (boîte) | SS · SS |
| 26 | Artist | 4,6 | 32 m | Moyen | Non | Ranged (à travers murs) · info | SS · SS |
| 27 | Onryō | 4,6 | **24 m** + berceuse 24 m | **Petit** | Non | Furtif · mobilité (TV) · condamnation | SS · SS |
| 28 | Dredge | 4,6 | 32 m | Grand | Non | Mobilité (casiers) · zone · info | SS · SS |
| 29 | Mastermind | 4,6 | **40 m** | Moyen | **Add-on** Lab Photo ; en base Virulent Bound **franchit** | Mobilité · anti-loop · infection | SS · VM |
| 30 | Knight | 4,6 | 32 m | Moyen | **Oui, différée** : ordre de garde **1,8 s** (Carnifex) / **5 s** (Assassin, Jailer) ; 10.1.1 : palette baissée tôt = détour | Anti-loop (gardes) · zone | SS · VM |
| 31 | Skull Merchant | 4,6 | **24 m** (8.6.0) | Moyen | Non | Zone/piège (drones) · info | SS · SS |
| 32 | Singularity | 4,6 | 32 m | Moyen | **Oui** : TP à travers une palette baissée, ou palette jetée sur lui en Overclock (→ Overheat 3 s) | Mobilité (TP) · ranged · anti-loop | SS · SS |
| 33 | Xenomorph | 4,6 | 32 m ; **24 m en Crawler** | Moyen | Non | Anti-loop (queue) · mobilité (tunnels) | SS · SS |
| 34 | Good Guy | **4,4** | 32 m | **Petit** | **Add-on** Hard Hat ; en base Scamper **sous** la palette (1 s) | Furtif · mobilité · anti-loop | SS · VM |
| 35 | Unknown | 4,6 | 32 m | Moyen | Non | Ranged (UVX) · furtif / mobilité | SS · SS |
| 36 | Lich | 4,6 | 32 m | Moyen | **Add-on** Vorpal Sword (casse en **4 s**) ; en base Mage Hand **relève** / bloque | Mobilité (Fly) · anti-loop · info | SS · VM |
| 37 | Dark Lord | 4,6 ; 6,5 en chauve-souris | 32 m ; berceuse 48 m en chauve-souris | Grand | **Oui**, Pounce du loup sur palette baissée | Mobilité · ranged/zone (Hellfire) · anti-loop (loup) | SS · VM |
| 38 | Houndmaster | 4,6 | 32 m | Moyen | Non (le chien **vaulte** fenêtres et palettes tombées) | Anti-loop · ranged (chien) · info | SS · VM |
| 39 | Ghoul | 4,6 | **40 m** | Moyen | **Add-on** Iridescent Eye Patch (3e bond en Enragé) ; en base, bond **franchit** | Mobilité · anti-loop · M1 (marqué) | SS · VM |
| 40 | Animatronic | 4,4 hache en main ; 4,6 sans | **24 m** | Moyen | Non (Iridescent Remnant **bloque** les palettes debout 12 s) | Ranged (hache) · mobilité (portes) · furtif | SS · SS |
| 41 | Krasue | 4,6 corps ; **4,8 tête** | 32 m ; **40 m** tête | Moyen | Non (la tête **vaulte** en 1,9 s) | Ranged · mobilité · statut (Leech) | VM · SS |
| 42 | The First | 4,4 ; 8,0 dans l'Upside Down | 32 m | Moyen | **Add-on** Shattered Wrist Rocket (Undergate) ; liane : non documentée (INC) | Zone · furtif · mobilité | VM · SS |
| 43 | Slasher | 4,4 ; 8,0 en Omnipresent Evil | 32 m | Moyen | **Oui**, Jump Scare (special-break ou special-vault) | Furtif · mobilité · ranged (pics) | VM · VP |
| 44 | Judgment | 4,4 | 32 m | Grand | **Add-on** Superheated Glass (en Zealous) | Ranged · zone · Exile · Heresy | VM · SS |

**Bilan casse par le pouvoir** : **11 Oui** (Hillbilly, Shape, Cannibal, Demogorgon, Oni, Blight, Nemesis, Knight, Singularity, Dark Lord, Slasher) · **8 Add-on** (Legion, Executioner, Mastermind, Good Guy, Lich, Ghoul, The First, Judgment ; plus LoPro Chains qui change la casse du Hillbilly) · **25 Non**. Liste conforme à l'errata (Good Guy, Lich, Mastermind, Knight) et à `batch7_tiles.md` §5.2. La note 9.5.0 classe en « Special-break » Hillbilly, Shape, Demogorgon, Oni, Blight, Nemesis, Knight, Dark Lord et en « Special-vault » Mastermind et Good Guy (VP).

**Lecture rapide** [DATA] :
- **TR ≠ vitesse** : 32 m pour un 4,6 et 24 m pour un 4,4 n'est qu'une tendance. Exceptions : **40 m** Hillbilly, Blight, Mastermind, Ghoul (Legion en Frenzy, Krasue tête) ; **24 m** Pig, Ghost Face, Onryō, Skull Merchant, Animatronic, Xenomorph en Crawler malgré 4,6 ; **32 m** Deathslinger, Good Guy, First, Slasher, Judgment malgré 4,4 ; Huntress **20 m**.
- **Plus lents que 4,6** (hors pouvoir) : Nurse 3,85 ; Hag, Huntress, Spirit, Deathslinger, Blight, Trickster, Good Guy, First, Slasher, Judgment, Animatronic hache en main : 4,4. Un 4,4 met ~1,5 fois plus de temps qu'un 4,6 à combler la même distance en M1.
- **Plus rapides que 4,6** en chase normale : Krasue tête (4,8, sans Bloodlust), Legion en Frenzy (5,2), Victor (6,0).
- **Petits** (silhouette plus dure à suivre derrière un muret) : Onryō, Good Guy.

---
## 5. Fiches rapides (44)

Format fixe, 9 lignes. Sauf mention, chaque consigne est **[HEURISTIQUE]** (option par défaut, à varier contre un tueur qui l'anticipe). « Add-ons » = effets LIVE lus sur la page wiki du tueur (SS, VM si note officielle), avec la décision qu'ils changent (« → »). Le détail (données complètes, tiles, cas d'échec) est dans le chapitre du guide et le fichier de recherche cités en dernière ligne.

### 1. The Trapper — zone/piège · M1
- **Identification** : pièges au sol (8 désarmés sur la carte au départ ; herbe haute, entrées de tiles, crochets, gens) ; aucun son de pouvoir à distance ; un piège qui a changé de place ; claquement + cri quand quelqu'un est pris.
- **Ce qu'il cherche** : te faire repasser sur un point piégé (sortie de fenêtre ou de palette, coin de jungle gym) ; te pousser en herbe haute ou vers le 3-gen piégé ; poser en chase pour sa Haste.
- **Faire** : regarder le sol avant les vaults et sorties **qu'il a eu le temps de piéger** (il t'a perdu de vue) ; gagner la distance **pendant** sa pose (2,5 s immobile), il repart ensuite +7,5 % 5 s ; pris avec un allié proche, attendre son sauvetage (1,5 s).
- **Ne pas faire** : sprinter en herbe haute par réflexe ; vaulter deux fois la même fenêtre ; croire un piège désarmé neutralisé (il le réarme sur place).
- **Macro / équipe** : désarmer (3,5 s) les pièges du 3-gen et des crochets **pendant qu'il chase ailleurs**, en sachant que c'est temporaire (plus de sabotage ni de déplacement depuis 3.6.0) ; compter ses pièges en main (2 ; une 3e pose d'affilée = Trapper Bag).
- **Add-ons** : Iridescent Stone (réarme un piège désarmé toutes les 30 s → contourner aussi les pièges désarmés) · Tar Bottle (pièges noircis → repasser où tu es déjà passé) · Honing Stone (se libérer seul met à terre → attendre un sauveteur) · Tension Spring (réarmement 2 s après une libération → quitter la case) · Bloody Coil (désarmer sain blesse → désarmer blessé ou laisser).
- **Piège classique** : décrocher sans regarder ses pieds ; en fin de partie, sauver sur un crochet piégé gardé (sauf s'il reste à < 16 m : l'anti-facecamp accélère, [FACT, audit]).
- **Chiffres clés** : 4,6 m/s · 32 m · grand ; pose 2,5 s + Haste 7,5 % 5 s (VM) ; libération 1,8 s par essai, 16,67 %, 6e garantie (≈ 11 s au pire) ; aucun changement de pouvoir 9.0.0 → 10.1.2a (correctifs 9.5.0, VP).
- **Source** : `kb/research/batch4_killers_g1.md` §1 · guide ch. 7 fiche 1

### 2. The Wraith — furtif · mobilité · M1
- **Identification** : cloche (tintement ≤ 24 m, souffle ≤ 40 m) ; tueur qui arrive « trop vite » sans TR ; scintillement proche ; totalement transparent à l'arrêt.
- **Ce qu'il cherche** : te surprendre sur un gen ; se désocculter hors de ta vue près d'une palette ; t'amener en zone morte où son sursaut (6,9 m/s 1 s) suffit.
- **Faire** : distinguer **occultation** (cloche dès le début + cliquetis : il **part**) et **désoccultation** (silence puis cloche : il **arrive**, ~1,5 s avant de pouvoir frapper) ; en chase, caméra sur lui et palette lâchée sur la désoccultation tardive ; tenir la boucle (en chase, c'est un M1 à 4,6).
- **Ne pas faire** : pré-lâcher par peur de la cloche ; fuir loin pour « reset » (il rattrape à 6,0 m/s occulté) ; compter sur une lampe (Lightburn supprimé en 6.7.0).
- **Macro / équipe** : quitter le gen quand la cloche est proche **et se rapproche** ; éviter le duo sur gen quand il patrouille (deux cibles, et 1,7 charge/s contre 2,0 pour deux solos, [DATA]).
- **Add-ons** : Coxcombed Clapper (cloche muette) / Bone Clapper (non localisable) → caméra ouverte, obstacle à portée · "The Ghost" – Soot (TR et Red Stain coupés 6 s de plus après désoccultation) → absence de TR ≠ départ · Windstorm (+5/7/9 % occulté) → tenir la boucle en cours · "The Serpent" – Soot (désoccultation forcée en cassant une palette ou en abîmant un gen) → info gratuite.
- **Piège classique** : croire qu'un Wraith immobile est loin.
- **Chiffres clés** : 4,6 / 6,0 occulté · 32 m (aucun occulté) · grand ; invisible > 20 m ; désoccultation 3 s, cloche à partir de 1,5 s ; sursaut 6,9 m/s 1 s (une ligne wiki dit 6 m/s, INC faible) ; stun occulté = 4 s.
- **Source** : `batch4_killers_g1.md` §2 · guide ch. 7 fiche 2

### 3. The Hillbilly — mobilité · coup unique
- **Identification** : vrombissement audible à 60 m, puis sprint très rapide **en ligne droite** ; TR large (40 m) ; traversée de carte en quelques secondes. Le Cannibal, lui, balaie court et fait des Tantrums.
- **Ce qu'il cherche** : un survivant en open ou sur un gen isolé ; un curve autour d'un petit obstacle pendant la 1re seconde du sprint ; une palette pré-lâchée qu'il casse en ~1 s ; accumuler l'Overdrive.
- **Faire** : au son de la charge (2,5 s), mettre un obstacle **haut et solide** entre vous ; virage **tardif** (après 1 s il ne tourne plus qu'à 32 °/s, contre 412 °/s avant) ; lâcher la palette sur un sprint **engagé** à travers la tile (collision = 2,5 s, ou 1 s s'il casse) ; après un choc contre un obstacle, gagner la tile suivante (2,5 s à 1,84 m/s).
- **Ne pas faire** : pré-lâcher au premier son ; courir en ligne droite en open ; croire qu'être blessé protège (blessé, son M1 suffit).
- **Macro / équipe** : ni soin ni réparation en open ; dispersion ; sauvetages rapides et sûrs (un instadown rend le tunnel facile).
- **Add-ons** : LoPro Chains (sprint à travers palettes et murs) → murs solides et fenêtres au lieu des palettes · Apex Muffler (tronçonneuse silencieuse hors TR) → surveiller le TR de 40 m · Filthy Slippers (Undetectable après 2 s de sprint) → TR qui disparaît ≠ départ · Tuned Carburettor (4,4 m/s permanent) → boucles plus longues en M1 · Cracked Primer Bulb (1 état de santé) → sain, ne pas tout sacrifier pour esquiver.
- **Piège classique** : pré-drop au premier vrombissement.
- **Chiffres clés** : 4,6 · **40 m** (8.6.0) · grand ; sprint 10,12 m/s, 12 en Overdrive (20 s) ; CD choc 2,5 s, touche/raté 2,7 s, casse 1 s ; casse **sans** LoPro : mécanique exacte INC (§6).
- **Source** : `batch4_killers_g1.md` §3 · guide ch. 7 fiche 3

### 4. The Nurse — mobilité (TP) · anti-loop total
- **Identification** : son de charge, silhouette qui disparaît et réapparaît plus loin ; tueur très lent entre deux blinks (3,85 m/s, plus lent que toi).
- **Ce qu'elle cherche** : une LOS continue ; un trajet prévisible ; un double-back mal timé ; ton arrêt derrière un obstacle bas.
- **Faire** : casser la LOS pendant sa charge (2 s) ; changer de direction pendant le 1er blink pour la forcer à corriger au 2e (≤ 12 m, fenêtre 1,5 s) ; **repositionner** pendant sa fatigue (2 à 3 s à 0,96 m/s ≈ 6-9 m pour toi) ; compter ses blinks (2 charges, 3 s de recharge chacune).
- **Ne pas faire** : lâcher une palette sur une Nurse en fatigue (pas étourdissable, [FACT]) ; courir en ligne droite ; double-back toujours au même moment ; rester visible derrière un obstacle bas.
- **Macro / équipe** : chases courtes → gens rapides et dispersion ; se soigner hors du rayon de A Nurse's Calling (28/30/32 m, VM). Calm Spirit n'est **pas** une perk anti-aura (Distortion l'est).
- **Add-ons** : Torn Bookmark (3 blinks) → attendre le 3e · Matchbox (**4,4 m/s mais 1 seul blink**) → feinter le blink puis tourner ; en M1, un 4,4 · Campbell's Last Breath (re-blink automatique droit devant) → sortir de l'axe · Jenner's Last Breath (retour au point de départ) → double-back après la fatigue · Kavanagh's Last Breath (Blindness 60 s à ≤ 8 m pendant sa fatigue).
- **Piège classique** : fuir en ligne droite pendant la fatigue au lieu de se replacer derrière un obstacle haut ou à un autre étage.
- **Chiffres clés** : 3,85 · 32 m · moyenne ; blink ≤ 20 m puis chain ≤ 12 m ; fatigue 2 / 2,5 / 3 s (+1 s après attaque) ; Heavy Panting 30 → 10 % en 9.6.0 (VM) ; vault de fenêtre : INC.
- **Source** : `batch4_killers_g1.md` §4 · guide ch. 7 fiche 4

### 5. The Shape — furtif · coup unique · exécution
- **Identification** : tueur visible **sans TR** ni berceuse, immobile derrière un coin (Stalker) ; son « the Hedge » à 50 % de jauge ; TR 16 m = Pursuer ; **signal global** puis TR 32 m = Evil Incarnate.
- **Ce qu'il cherche** : un stalk gratuit quand tu ne le regardes pas ; en EI, un survivant loin d'un obstacle solide, une palette pré-lâchée à casser, un survivant **à 2 crochets** à approcher à 3 m.
- **Faire** : casser la LOS dès qu'il stalke (jauge pleine en ~5 s de stalk continu) ; en EI, **murs solides et fenêtres**, esquive latérale de la Slaughtering Strike ; **tenir les 60 s d'EI** ; après une SS qui casse une palette, il marche à 1,84 m/s ~2 s : gagner la tile suivante.
- **Ne pas faire** : laisser un tueur sans TR te fixer ; pré-lâcher pendant l'EI ; se soigner en open ; laisser un survivant à 2 crochets à moins de 3 m de lui pendant l'EI (même sain, même au sol).
- **Macro / équipe** : réparer pendant qu'il stalke (Stalker à 4,2 m/s) **en surveillant les angles** ; finir ses soins **avant** le signal global ; l'Endurance empêche l'exécution (mais saute sur une action voyante) ; pas de groupe pendant l'EI.
- **Add-ons** : Judith's Tombstone (crochet en EI = EI renouvelé, plafond 40 s) → pas de crochet rapide offert en EI · Hair Bow (EI 80 s) → recompter · Reflective Fragment (SS = 1 état ; +20 s d'EI par SS réussie) · Fragrant Tuft of Hair (Exposed pour tous, **pas de SS**) → les palettes redeviennent sûres · Tombstone Piece (Undetectable 20 s à l'activation) · Scratched Mirror (auras en stalk, **plus d'EI**) → chase contre un M1 lent.
- **Piège classique** : oublier le chrono des 60 s ; décrocher un survivant à 2 crochets sous ses yeux pendant l'EI.
- **Chiffres clés** : 4,2 Stalker / 4,6 · aucun / 16 / 32 m (l'infobox affiche 32 m en Stalker, le corps de page 0 m : retenu aucun) · grand ; EI 60 s, SS 7,5 m/s, CD 4 s (9.2.3, VM) ; exécution en EI à ≤ 3 m (VM) ; pas d'Exposed de base depuis 9.2.0 ; retiré de la boutique, **toujours jouable** (VP).
- **Source** : `batch4_killers_g1.md` §5 · guide ch. 7 fiche 5

### 6. The Hag — zone/piège · TP · info
- **Identification** : marques de boue autour des gens et crochets ; fantôme qui tourne ta caméra et faux TR bref (8 m) ; tueur qui apparaît instantanément sur un piège.
- **Ce qu'elle cherche** : un piège sur la sortie d'une boucle, déclenché pour te couper (elle arrive face à toi) ; t'enfermer dans une zone piégée.
- **Faire** : traverser les marques **accroupi** (ou en interagissant) ; au déclenchement, repartir **en s'éloignant du piège** vers une zone sans marques ; tirer la chase hors de son réseau (hors pièges, M1 à 4,4).
- **Ne pas faire** : sprinter sur les marques ; rester à côté d'un piège déclenché ; décrocher en direct sur un crochet piégé ; compter sur une lampe (ne brûle plus les pièges depuis 6.7.0).
- **Macro / équipe** : **effacer accroupi (4 s)** les pièges près des gens et du crochet quand elle est loin ; purifier les totems croisés, chercher activement seulement si un effet Hex est observé ; sauveteur accroupi.
- **Add-ons** : Mint Rag (TP vers tout piège **non déclenché**, CD 10 s) → effacer son réseau au lieu de l'éviter · Rusty Shackles (aucune indication de déclenchement) → crouch systématique · Grandma's Heart (son TR coupé, faux TR 24 m) → ne pas la localiser au TR · Waterlogged Shoe (4,73 m/s, plus de TP) → M1 plus rapide · Scarred Hand (pièges qui **bloquent le passage**, plus de TP).
- **Piège classique** : fuir « à l'opposé » d'un piège déclenché… vers un autre piège.
- **Chiffres clés** : 4,4 · **24 m** (1.9.3) · moyenne ; 10 pièges, pose 1,9 s, rayon 2,7 m, TP ≤ 48 m ; effacement 4 s accroupi ; dernier changement de pouvoir 7.6.0.
- **Source** : `batch4_killers_g1.md` §6 · guide ch. 7 fiche 6

### 7. The Doctor — anti-loop · info · M1
- **Identification** : crépitement électrique, skill checks anormaux, cris involontaires, faux Doctors ; Static Blast = charge audible puis onde.
- **Ce qu'il cherche** : te choquer juste avant la palette ou la fenêtre (aucune interaction pendant 2,5 s), puis M1 à courte portée.
- **Faire** : décaler palette et vault hors de la fenêtre du choc (en 0,65 s tu fais 2,6 m : à < 3 m de la palette devant un choc lancé, ton action tombe dedans) ; pré-lâcher tôt **puis partir**, ou vaulter avec de l'avance ; après un choc, ne pas viser une ressource à < 10 m ; Static Blast : **casier** si tu es dans son TR pendant la charge (2 s).
- **Ne pas faire** : jouer la palette au dernier moment ; se cacher derrière un mur contre le Static Blast (il traverse tout) ; rester en Madness III dans son TR.
- **Macro / équipe** : réussir les skill checks ; Snap Out of It (12 s) **quand il est loin** ; en Madness III, ni réparation, ni soin, ni objet (décrocher reste permis) ; il manque de mobilité → dispersion.
- **Add-ons** : "Discipline" – Carter's Notes / Class III / Class II (délai 0,55 / 0,57 / 0,59 s, VM ; faux Red Stain/TR en Madness II-III) → pré-drop plus tôt, ne pas lire la distance au Red Stain · Interview Tape (faisceau 2 × 24 m) → sortir latéralement · Scrapped Tape (anneau 4 m à 8 m devant) → rester très près ou hors de l'anneau · Electrodes (+2 à +4 m, jusqu'à 16 m) → plus de marge · "Order" (palettes illusoires en Madness).
- **Piège classique** : croire que la marge « je lâche au dernier moment » existe encore.
- **Chiffres clés** : 4,6 · 32 m · grand ; choc cône 12 m, détonation **0,65 s** (9.6.1, VM), recharge 1,5 s ; Static Blast couvre tout le TR, CD 30 s (personne touché) / 45 s ; Coulrophobia 20/25/30 % (10.1.0).
- **Source** : `batch4_killers_g1.md` §7 · guide ch. 7 fiche 7

### 8. The Huntress — ranged · M1
- **Identification** : fredonnement (berceuse 45 m) à la place du battement de cœur, puis TR très court (20 m) ; bruit de casier à la recharge. Une berceuse existe aussi chez d'autres (Nightmare, Victor, chauve-souris du Dark Lord, chien du Houndmaster) : confirmer à la silhouette ou au premier lancer.
- **Ce qu'elle cherche** : open à distance moyenne, boucles basses, vaults à réception visible, fin de boucle en ligne droite, soins et décrochages à découvert.
- **Faire** : changer de direction **au lâcher**, pas pendant tout l'armement (un lancer rapide à 25 m/s laisse plus de temps qu'un chargé à 40 m/s) ; **casser la LOS** plutôt qu'esquiver en plein champ ; **compter ses lancers à partir de 7** ; à 0, elle va au casier (3 s) : gagner une tile ou relancer un gen.
- **Ne pas faire** : vaulter une fenêtre face à une hachette armée **qui voit ta réception** ; croire le maïs protecteur (il cache, blocage des hachettes INC) ; traverser l'open à distance moyenne.
- **Macro / équipe** : soins et décrochages derrière une LOS ; gens espacés pour la forcer à marcher (4,4 m/s ; 3,08 en armant).
- **Add-ons** : Iridescent Head (hachette = mise à terre, **1 seule** hachette) → LOS permanente ; chaque lancer l'envoie au casier · Soldier's Puttee (4,6 m/s à 0 hachette) → pas de fenêtre gratuite au casier · Wooden Fox (Undetectable 30 s après recharge) → surveiller à l'œil après un bruit de casier · Venomous Concoction (Exhausted 5 s) / Weighted Head (Incapacitated 10 s) → après une touche, viser une tile. **Aucun add-on n'augmente le nombre de hachettes.**
- **Piège classique** : se croire à l'abri dans le maïs ; soigner en plein champ.
- **Chiffres clés** : 4,4 · **20 m** (berceuse 45 m) · grande ; **7 hachettes** de base (depuis 7.6.0) ; armement 0,9 s + 1 s de charge ; CD entre lancers 2 s ; casier 3 s ; aucun changement 9.0.0 → 10.1.2a (VP).
- **Source** : `batch4_killers_g2.md` §8 · guide ch. 7 fiche 8

### 9. The Cannibal — M1 · anti-loop · coup unique
- **Identification** : tronçonneuse audible à 60 m ; **balayages courts** et Tantrums (le Hillbilly sprinte long et droit) ; TR 32 m.
- **Ce qu'il cherche** : short loops et fillers, survivant qui garde une palette « pour le stun » pendant qu'il arme, groupes (le sweep touche plusieurs survivants), body-blocks de crochet.
- **Faire** : quand il **arme** près d'une short loop, pré-lâcher **puis partir** (il casse avec 1 s de CD) ; pendant sa charge (3,45 m/s), gagner la tile suivante ; un rev tenu > 3 s déclenche une Tantrum → casser la LOS hors de portée ; privilégier **fenêtres** et longues boucles.
- **Ne pas faire** : garder la palette pendant qu'il arme ; se grouper ; body-block de face au crochet ; vaulter une palette vers une ligne droite ouverte.
- **Macro / équipe** : pas de réparation à 2-3 sur le même gen quand il approche ; l'Endurance de décrochage absorbe un coup de tronçonneuse (puis Deep Wound). Contre un tap-rev ou un Bubba en M1 sans armer, la palette redevient normale (stun possible).
- **Add-ons** : Iridescent Flesh (jetons rechargés après un coup) → le 2e survivant proche part aussitôt · Long Guide Bar / The Grease (+2/+3 s avant Tantrum) → ne pas « attendre » la Tantrum · Carburettor Tuning Guide (un seul long sweep) → casser la LOS derrière un obstacle haut · Speed Limiter (1 état de santé) → sain, un sweep ne met pas à terre.
- **Piège classique** : se grouper ; contre Bamboozle (perk), les fenêtres perdent leur valeur → palettes jetées tôt et LOS.
- **Chiffres clés** : 4,6 · 32 m · grand ; 3 jetons (4 s de recharge chacun) ; charge 2 s ; sweep 2,5 s jusqu'à **5,45 m/s** (9.6.0, VM) ; casse 1 s ; Tantrum 3 à 6 s ; Knock Out LIVE 6 m / 5 % (10 m / 20 % = PTB 10.2.0, non LIVE).
- **Source** : `batch4_killers_g2.md` §9 · guide ch. 7 fiche 9

### 10. The Nightmare — zone/piège · TP · info
- **Identification** : Alarm Clocks sur la carte (présence dès le début : INC) ; éveillé, TR entendu **sans voir le tueur** au-delà de 32 m, silhouette intermittente entre 16 et 32 m ; endormi, berceuse de 32 m et monde du rêve.
- **Ce qu'il cherche** : Dream Snares dans les couloirs et avant les fenêtres ; une Dream Pallet à côté d'une vraie ; une Rupture sur un endormi près d'une Dream Pallet ; une TP sur un endormi qui se soigne.
- **Faire** : contourner les snares (ils traversent les murs) ; jouer les palettes **connues avant la chase** (une palette qui **scintille à < 6 m** est fausse) ; endormi, s'éloigner à > 3,5 m d'une Dream Pallet qu'il vise ; éveillé, une Rupture ne blesse pas.
- **Ne pas faire** : se soigner endormi (révélation) ; laisser toute l'équipe endormie en fin de partie ; ouvrir une porte endormi.
- **Macro / équipe** : **rester éveillé est rentable** (chaque endormi raccourcit sa TP de 15 %) ; se réveiller avant de soigner (Alarm Clock 2 s, allié 5 s, skill check raté) ; sur gen, s'écarter de > 8 m de l'aura de husk (charge 2,5 s).
- **Add-ons** : Black Box (portes bloquées 15 s pour les endormis) → se réveiller avant l'endgame · Class Photo (TP sur les interrupteurs) → ouvrir quand il est engagé ailleurs · Red Paint Brush (auras des endormis > 32 m ; Microsleep 90 s) → se réveiller · Paint Thinner (lâcher une Dream Pallet te révèle) → pas de stun avec ses fausses palettes.
- **Piège classique** : parier une chase sur une palette « apparue ».
- **Chiffres clés** : 4,6 · 32 m · moyenne ; rework 8.5.0 (aucun changement d'équilibrage depuis) ; Microsleep 60 s ; snares 12 m/s, 18 m, −12 % 4,5 s, CD 7 s ; jusqu'à 8 Dream Pallets, Rupture 3,5 m ; TP CD 30 s (−15 % par endormi, max −60 %) ; Fire Up LIVE 4/5/6 %.
- **Source** : `batch4_killers_g2.md` §10 · guide ch. 7 fiche 10

### 11. The Pig — furtif · piège · M1
- **Identification** : TR court qui disparaît (3 s) et revient (1,4 s) ; ruée ; piège sur la tête d'un coéquipier ; Jigsaw Boxes.
- **Ce qu'elle cherche** : une ruée à courte portée sur une tile courte ; s'accroupir près d'une fenêtre ou d'un coin pour cacher TR et Red Stain.
- **Faire** : pendant la charge de ruée (0,75 s), contourner un coin ou vaulter ; après une ruée ratée (CD 1,5 s), gagner la distance **tout de suite** ; jouer les tiles moyennes et longues (la ruée dure 2,3 s en ligne droite).
- **Ne pas faire** : quitter une chase pour chercher les boîtes (le minuteur est **en pause quand elle te chasse**) ; ignorer l'absence de TR près d'un gen ; **franchir la sortie avec un piège actif** (mort ; la trappe reste possible).
- **Macro / équipe** : piégé → boîtes visibles les plus proches (1 à 4 fouilles de 12 s ; 12 fouilles par partie) ; SWF : annoncer les boîtes vides ; décider en équipe **quand terminer un gen** si plusieurs survivants sont piégés (le gen active les pièges).
- **Add-ons** : Video Tape (tous commencent piégés) → coordonner le 1er gen · Tampered Timer (130 s) / Jigsaw's Annotated Plan (−10 s par gen) → piège = urgence · Rules Set No.2 (auras des boîtes cachées tant que le piège est inactif) → repérer les boîtes à vue avant la fin d'un gen.
- **Piège classique** : plusieurs piégés qui terminent un gen en même temps.
- **Chiffres clés** : 4,6 (4,0 accroupie, VM) · **24 m** (9.1.0 ; absent de la note officielle, SS) · moyenne ; ruée 7,1 m/s 2,3 s (VM) ; 4 RBT ; piège actif 150 s ; signal sonore de la ruée : INC.
- **Source** : `batch4_killers_g2.md` §11 · guide ch. 7 fiche 11

### 12. The Clown — anti-loop (Hindered) · mobilité (Haste)
- **Identification** : bruit de verre, nuages **rose** (Tonic) ou **jaune** (Antidote), toux des intoxiqués, recharge visible.
- **Ce qu'il cherche** : du Tonic sur la fenêtre ou la palette que tu vises (pas de fast vault) ; une ligne droite en Antidote.
- **Faire** : contourner le rose ou le traverser au plus court ; **traverser son jaune** (+12 % pour toi aussi) ; un nuage jaune **annule** le rose ; gagner la distance pendant sa recharge (2,5 s à 2,3 m/s) ; tiles à obstacles hauts (bloquent les bouteilles) et à plusieurs sorties.
- **Ne pas faire** : courir dans un nuage rose ; miser une chase sur un fast vault intoxiqué ; tenir une boucle en ligne droite face à l'Antidote.
- **Macro / équipe** : ne pas rester groupés dans le gaz ; éviter les longues lignes droites ouvertes.
- **Add-ons** : Redhead's Pinkie Finger (coup direct = Exposed tant qu'intoxiqué ; 1 bouteille) → éviter le coup direct avant tout · Tattoo's Middle Finger (aura 6 s des touchés par un gaz) → ne pas traverser le jaune pour aller se cacher · Cigar Box (auras à 6 m des revigorés) · Flask of Bleach (−16 %) / Bottle of Chloroform (nuage +20 %) → contourner plus large.
- **Piège classique** : ignorer son Antidote (il l'utilise pour boucler vite).
- **Chiffres clés** : 4,6 · 32 m · grand ; 6 bouteilles ; Tonic −14 % Hindered, pas de fast vault ; Antidote **+12 %** 6 s pour tous (VP ; une phrase du wiki dit 14 %) ; buffs 9.1.0 et 9.2.0 (VM).
- **Source** : `batch4_killers_g2.md` §12 · guide ch. 7 fiche 12

### 13. The Spirit — mobilité · furtif (mindgame)
- **Identification** : phasing passif (clignotement 0,5 s toutes les 1 à 5 s) ; son de phase **directionnel ≤ 24 m** ; husk figé puis réapparition brusque.
- **Ce qu'elle cherche** : un survivant qui court (elle voit les griffures en phase) ou qui gémit ; un survivant qui garde une palette pour le stun.
- **Faire** : **regarder le husk** (figé = probablement en phase) et écouter le son ; quand elle phase près de toi, **marcher ou s'arrêter** (pas de griffures) en variant avec courir et changer de côté ; **jeter la palette tôt puis marcher** ; après une phase complète (15 s de recharge), quitter la tile.
- **Ne pas faire** : courir en ligne droite pendant sa phase ; deviner **sans lire** husk et son ; tenir la même palette plusieurs fois ; se croire invisible en marchant **blessé** (grognements, sang).
- **Macro / équipe** : la fenêtre de décrochage (Elusive 10 s de base) lui retire griffures, grognements et flaques [FACT, audit] ; Iron Will, Lucky Break utiles sans garantie [SITUATIONNEL].
- **Add-ons** : Mother-Daughter Ring (+25 % en phase, **ne voit plus les griffures**) → marcher n'apporte rien, casser la distance · Dried Cherry Blossom (KI à < 3 m en phase) → l'immobilité à côté d'elle échoue · Mother's Glasses (KI à < 2 m du husk) → ne pas longer le husk · Kintsugi Teacup / Uchiwa (recharge instantanée après casse ou stun) → pas de répit. **Aucun add-on de phase silencieuse en LIVE** (Prayer Beads n'existe plus).
- **Piège classique** : tenir la palette « pour le stun ».
- **Chiffres clés** : 4,4 · 24 m · moyenne ; charge 1,5 s, phase ≤ 5 s à 7,04 m/s ; recharge 15 s ; respiration inaudible en phase depuis 2.3.0 ; dernier changement de pouvoir 6.7.0 (rien en 9.x-10.x, VP par absence).
- **Source** : `batch4_killers_g2.md` §13 · guide ch. 7 fiche 13

### 14. The Legion — M1 · info · slug indirect
- **Identification** : cris, TR qui passe à **40 m**, Killer Instinct, tueur qui vaulte palettes tombées et fenêtres très vite (Feral Vault 0,9 s).
- **Ce qu'il cherche** : blesser plusieurs survivants puis enchaîner un M1 ; ou enchaîner les slashes (le **5e slash d'un Frenzy est létal**, même sous Deep Wound).
- **Faire** : **faire rater un slash** (feinte autour d'un obstacle) : fin du Frenzy ; pendant sa fatigue (2,5 s à 2,3 m/s), casser la LOS ; en Frenzy, une palette tombée ne l'arrête pas, mais une palette lâchée **sur lui** l'étourdit.
- **Ne pas faire** : se soigner à côté d'un gen occupé à plusieurs ; laisser expirer le Deep Wound ; ignorer le KI (s'il enchaîne 4 slashes, le prochain est mortel).
- **Macro / équipe** : jouer blessé est **normal** (soin complet pas toujours rentable) ; Deep Wound en pause **quand tu cours** (marcher ou t'accroupir le consomme) ; mending 10 s seul, 6 s par un allié ; pas de groupe.
- **Add-ons** : **Iridescent Button** (le Feral Vault **casse** la palette) → palettes pour le stun seulement · Julie's Mix Tape (Frenzy rechargé après un stun en Frenzy) → un stun ne donne pas de répit · Mural Sketch (+0,32 m/s par slash) / Never-Sleep Pills (Frenzy +10 s) → ne pas compter sur la fin du Frenzy.
- **Piège classique** : croire que le Frenzy ne peut pas mettre à terre.
- **Chiffres clés** : 4,6 ; 5,2 en Frenzy (+0,24 par touche, max 6,16) · 32 / 40 m · moyenne ; Frenzy ≤ 11 s, recharge 15 s ; Deep Wound 20 s ; désactivé puis réactivé en 9.6.0 (VP) ; pas de Feral Vault sur palette debout (9.1.0, VM).
- **Source** : `batch4_killers_g2.md` §14 · guide ch. 7 fiche 14

### 15. The Plague — ranged · zone (fontaines) · infection
- **Identification** : fontaines (Pools of Devotion) dès le début, dont **une déjà corrompue** ; vomissements, toux.
- **Ce qu'elle cherche** : en Corrupt Purge, tirs en fin de boucle et par-dessus palettes et fenêtres ; des survivants blessés en permanence.
- **Faire** : infecté hors chase, **marcher** (0 % de Sickness) ; en Corrupt Purge, murs hauts, LOS, et rester au-delà de ~13 m ; **un stun de palette y met fin** : garder une palette debout pour le stun est une vraie option.
- **Ne pas faire** : purifier par réflexe ou en rafale (chaque purification = un Corrupt Purge possible) ; courir infecté hors chase ; toucher les objets infectés (+2 %/s).
- **Macro / équipe** : décider en équipe des purifications (8 s, soigne complètement) ; jouer Broken est viable avec coordination [SITUATIONNEL] ; « soigner vite » n'est pas une règle absolue.
- **Add-ons** : Iridescent Seal (Corrupt Purge 40 s à chaque gen terminé) → finir un gen près d'un mur haut et quand elle est loin · Blessed Apple / Ashen Apple (fontaines corrompues en plus) → les compter avant de planifier · Devotee's / Exorcism Amulet (Corrupt Purge +20/+10 s) → LOS plus longtemps · Olibanum Incense, Incensed Ointment (auras) → purifier hors de son TR.
- **Piège classique** : purifier toutes les fontaines en début de partie.
- **Chiffres clés** : 4,6 · 32 m · grande ; Vile Purge ~13 m, charge 1,5 s ; objets infectés 40 s ; Sickness 100 % = blessé + Broken permanent (pas de mise à terre) ; Corrupt Purge 60 s ; aucun changement 9.x-10.x (VP par absence).
- **Source** : `batch4_killers_g2.md` §15 · guide ch. 7 fiche 15

### 16. The Ghost Face — furtif · M1 · info
- **Identification** : ni TR, ni berceuse, ni Red Stain en Night Shroud ; seul indice sonore, un froissement de vêtements ; silhouette penchée derrière un coin.
- **Ce qu'il cherche** : te faire tourner autour d'une tile opaque pendant qu'il stalke **penché** (~2,2 s suffisent), puis un M1 = mise à terre (Marked = Exposed 60 s).
- **Faire** : caméra derrière toi sur gen ; **le révéler** dès qu'il apparaît à ≤ 32 m (1,5 s de visée, ≥ 30 % de son modèle au centre de l'écran) : pouvoir coupé 15 s, puis **changer d'angle** (il reçoit ta direction + 4 s de KI) ; Marked, jouer « comme Exposed » 60 s (pré-drop plus tôt, pas de mindgame serré).
- **Ne pas faire** : réparer ou soigner longtemps sans tourner la caméra ; décrocher à l'aveugle ; **marcher** pour cacher tes griffures quand il te suit accroupi (il va à 4,0 m/s, ta vitesse de course : tu perds ~17 m en 10 s, [DATA]).
- **Macro / équipe** : SWF : annoncer sa position ; un coéquipier qui regarde vers toi peut le révéler ; un Marked tout juste décroché garde l'Endurance de base 10 s tant qu'il ne fait pas d'action voyante [FACT, audit].
- **Add-ons** : Leather Knife Sheath (accroupi ~4,4 m/s) → il te rattrape accroupi : casser la LOS tôt · Knife Belt Clip (TR 12 m accroupi) → un TR qui apparaît = il est tout proche · "Ghost Face Caught on Tape" / Olsen's Wallet (recharge instantanée après un down / une casse) → Night Shroud immédiat · Driver's License (marquer un réparateur fait exploser le gen) → lâcher le gen dès qu'il stalke.
- **Piège classique** : croire qu'il est loin parce qu'il n'y a pas de TR.
- **Chiffres clés** : 4,6 ; 4,0 accroupi (9.6.1, VM) · **24 m** · moyenne ; stalk 40 m, Marked en ~4,4 s (~2,2 s penché) ; Night Shroud recharge 15 s (9.6.0, VM) ; un Marked ne peut plus le révéler.
- **Source** : `batch4_killers_g3.md` §16 · guide ch. 7 fiche 16

### 17. The Demogorgon — mobilité · anti-loop · info
- **Identification** : portails actifs (visibles, scellables) ; posture ramassée de la charge du Shred ; son de sortie de portail (8 m).
- **Ce qu'il cherche** : un Shred en ligne droite ; une palette pré-lâchée qu'il détruit gratuitement ; une arrivée par portail sans TR.
- **Faire** : pendant la charge (il avance à 3,86 m/s, moins vite que toi), prendre la distance ou couper la ligne ; lâcher la palette quand il est **engagé** dans une animation ; Shred chargé → rester collé à un obstacle haut ; **fenêtres** (le Shred ne les franchit pas).
- **Ne pas faire** : pré-drop systématique (casse gratuite, CD 1,8 s) ; réparer ou soigner collé à un portail actif (zone de 4 m d'Oblivious) ; croire qu'un tueur « disparu » est loin (Undetectable **12 s** après un portail).
- **Macro / équipe** : sceller les portails actifs proches des gens clés (12 s seul ; à deux on ne gagne que 3 s : en SoloQ, un seul scelleur) ; après chaque sortie de portail, vérifier les abords du gen.
- **Add-ons** : Red Moss (Undetectable +8 s, sortie silencieuse) → surveiller ~20 s après chaque sortie · Lifeguard Whistle / Mews' Guts (+2/+1 portail) → sceller en priorité · Deer Lung (4 portails) → chaque scellement pèse plus · Barb's Glasses (CD −10 % après casse au Shred) → garder la palette debout · Sticky Lining (Oblivious à 6,5 m).
- **Piège classique** : esquive latérale tardive « comme avant » : depuis 9.6.0 son virage est doublé (55 °/s).
- **Chiffres clés** : 4,6 · 32 m · grand ; Shred 19 m/s (l'infobox affiche encore 18,4, INC résolu à 19), casse palettes et murs (VP) ; CD raté 2,25 s / réussi 2,7 s ; 6 portails ; buffs 9.6.0 (VM).
- **Source** : `batch4_killers_g3.md` §17 · guide ch. 7 fiche 17

### 18. The Oni — M1 · mobilité · coup unique (Fury)
- **Identification** : M1 classique avant la Fury ; orbes de sang au sol ; rugissement d'activation (3 s) ; charge du Dash.
- **Ce qu'il cherche** : blesser vite (+40 de jauge par coup sur un sain), farmer les orbes près des crochets, puis lancer la Fury en terrain ouvert.
- **Faire** : en Fury, forcer le Dash à tourner derrière un mur haut (charge 2 s) ; mettre un obstacle haut **avant** qu'il soit à portée de Strike (rotation jusqu'à 540°) ; **fenêtres** (le Dash ne vaulte pas) ; temporiser (la Fury dure ~45 s, −7 s par down).
- **Ne pas faire** : pré-drop pendant la Fury (palettes cassées) ; fuir en ligne droite en open ; rester blessé longtemps hors Fury.
- **Macro / équipe** : **hors Fury, se soigner** quand c'est sûr (les blessés lâchent des orbes) ; **pendant la Fury, ne pas commencer de soin** ; après un crochet, 5 orbes l'attendent : anticiper une Fury rapide.
- **Add-ons** : Lion Fang / Yamaoka Sashimono / Chipped Saihai (Fury +10/+8/+6 s) → tenir la LOS plus longtemps · Splintered Hull (+33 % d'orbes) → soigner plus tôt · Shattered Wakizashi (+0,2 charge/s) → se soigner ne retarde plus assez la Fury · Iridescent Family Crest (Strike ratée = cri et révélation à ≤ 24 m) → s'éloigner de > 24 m d'une chase.
- **Piège classique** : sous-estimer la portée de la Fury depuis un gen éloigné.
- **Chiffres clés** : 4,6 · 32 m · grand ; Dash 7,82 m/s ; casse en Fury (VP ; geste exact INC) ; stun = fin de Fury seulement si jauge > 99 ou < 5 ; 9.1.0 = **nerf** (540°), 9.2.0 = buff (5 orbes au crochet) ; délai sans orbes après décrochage 10 ou 15 s (INC, §6).
- **Source** : `batch4_killers_g3.md` §18 · guide ch. 7 fiche 18

### 19. The Deathslinger — ranged · anti-loop
- **Identification** : 4,4 m/s mais TR 32 m ; **son d'avertissement** quand il vise vers toi (dans son TR et à portée) ; bruit de rechargement.
- **Ce qu'il cherche** : une ligne droite ou une sortie de vault où tu ne peux pas tourner.
- **Faire** : à l'avertissement, **casser la ligne** vers un obstacle (au-delà de 18 m, hors de portée) ; harponné, **tirer ET frotter la chaîne contre un obstacle** (~2,7 s au lieu de ~5,7 s) ; le faire tirer dans le vide puis gagner une tile pendant son rechargement (2,6 s après **chaque** tir).
- **Ne pas faire** : vault automatique vers l'open ; zigzag régulier et lisible ; rester en Deep Wound sans mender ; croire qu'une palette lâchée bloque un tir (INC).
- **Macro / équipe** : chaînes de tiles serrées plutôt qu'une grosse tile séparée par de l'open ; casser la chaîne gagne 2,7 s de stun, pas la sécurité (blessé + Deep Wound).
- **Add-ons** : Iridescent Coin (Exposed pendant un harpon tiré de ≥ 12 m) → casser la chaîne **immédiatement** · Hellshire Iron (Undetectable pendant le harpon, puis 10 s) → ne pas se fier au TR ~10 s · Gold Creek Whiskey / Marshal's Badge (TR −8/−4 m en visée) → quitter l'open sans attendre l'avertissement · Bayshore's Cigar (stun ~1,95 s) → viser une LOS immédiate.
- **Piège classique** : vaulter une fenêtre exposée sur une longue ligne.
- **Chiffres clés** : 4,4 · **32 m** · grand ; harpon 40 m/s, portée 18 m, visée 0,4 s ; rechargement 2,6 s ; dernier changement 1v4 en 8.0.0.
- **Source** : `batch4_killers_g3.md` §19 · guide ch. 7 fiche 19

### 20. The Executioner — ranged · zone · anti-loop
- **Identification** : traînées rouges au sol ; bruit de l'onde ; cages qui apparaissent loin de lui.
- **Ce qu'il cherche** : te fixer derrière une palette, une fenêtre ou un mur fin, puis envoyer l'onde **à travers** ; mettre en cage les Tormented, exécuter ceux déjà en 2e phase.
- **Faire** : bouger **latéralement** au lancer ; garder une distance latérale > 10 m ; hors chase, traverser les traînées **accroupi** (rien) ; en chase, accepter parfois le Torment pour garder la distance [SITUATIONNEL].
- **Ne pas faire** : croire que fenêtres, palettes ou murs bloquent l'onde ; rester aligné derrière une palette ; laisser au sol un Tormented en 2e phase (Final Judgement).
- **Macro / équipe** : sauver les cages vite (le sauvetage retire le Torment au sauveteur **et** au sauvé ; sauvé : Haste 10 % + Endurance + Elusive 10 s, 10.1.0) ; cages loin de lui : SWF = le plus proche ; SoloQ = y aller si tu es le plus proche au HUD et que personne ne bouge. C'est **lui** (≤ 10 m pendant 3,5 s) qui fait bouger la cage.
- **Add-ons** : Obsidian Goblet (l'onde **casse** palettes et murs ; CD +20 %) → ne plus lâcher de palette pour le bloquer · Iridescent Seal of Metatron (portée −50 % puis jusqu'à +200 % en traçant) → fuir bien au-delà de 10 m après un long tracé · Tablet of the Oppressor (Undetectable en traçant) → lire les traînées à l'œil · Scarlet Egg (un Tormented qui court laisse ses traînées) → ne pas courir à travers le groupe.
- **Piège classique** : croire que la cage se déplace quand un **survivant** s'en approche.
- **Chiffres clés** : 4,6 ; 4,2 en traçant · 32 m · grand ; onde 10 m, CD 2,25 s ; tracé 10 s, recharge 40 s, traînées 90 s ; refonte 9.1.0 (VM).
- **Source** : `batch4_killers_g3.md` §20 · guide ch. 7 fiche 20

### 21. The Blight — mobilité · anti-loop
- **Identification** : TR de 40 m qui arrive très vite ; sons de Rush et de Slam ; déplacement en rebonds sur les murs.
- **Ce qu'il cherche** : un Lethal Rush en ligne droite, ou via un Slam sur l'obstacle de ta tile.
- **Faire** : tourner au dernier moment face au Lethal Rush ; après un Rush raté ou une fin de chaîne, repartir à l'opposé pendant ses **2,5 s de fatigue** ; **pré-drop le plus souvent rentable** (une casse lui coûte des tokens) ; compter ses Rushes au son (5 tokens, 2 s par token).
- **Ne pas faire** : ligne droite en open ; attendre derrière une palette debout « pour le mindgame » ; pré-drop systématique quand il contourne sans casser ou qu'il a déjà peu de tokens.
- **Macro / équipe** : pas de 3-gen compact ; les gens éloignés ne sont pas plus sûrs contre lui.
- **Add-ons** : Adrenaline Vial (7 tokens) → compter jusqu'à 7 · Iridescent Blight Tag (3 tokens, Rush +10 %) → exploiter le creux après 3 Rushes · Compound Thirty-Three / Umbra Salts (virage +11/+15 %) → moins de dodges tardifs, rester collé aux obstacles hauts · Rose Tonic / Pustula Dust (fenêtre de chaîne +1/+0,75 s) → attendre qu'il s'engage · Vigo's Journal (Undetectable en Rush) → écouter les Slams.
- **Piège classique** : appliquer le counterplay d'avant 9.6.0 (aucun pré-drop), ou l'inverse (pré-drop systématique).
- **Chiffres clés** : **4,4** (9.6.0, VM) · **40 m** (8.6.0) · moyenne ; Rush 9,2 m/s ≤ 3 s ; fenêtre de chaîne 1,25 s ; casse = tokens à « 2 sous le max » + recharge à 0 % (VM) ; perte aussi à ≤ 3 tokens depuis 9.6.2, quantité INC (§6).
- **Source** : `batch4_killers_g3.md` §21 · guide ch. 7 fiche 21

### 22. The Twins — slug · anti-loop · zone
- **Identification** : cris de Victor (berceuse 12 à 18 m) ; TR de Charlotte absent quand elle contrôle Victor (Dormant) ; Spine Chill **ne détecte pas** Victor.
- **Ce qu'il cherche** : Charlotte blesse, Victor achève (bond sur un blessé = mise à terre) ; Victor posé près d'un survivant au sol ou d'un crochet pour bloquer la relève.
- **Faire** : esquiver le bond (changer de direction pendant la charge de 0,85 s), puis **écraser Victor quand il est rouge** (0,35 s ; blanc = invulnérable) ; près d'un Victor posé, **accroupi** (marcher ou courir dans son rayon te révèle) ; vaults et obstacles hauts contre ses lignes de bond.
- **Ne pas faire** : se regrouper autour d'un survivant au sol gardé ; traverser le corps de Charlotte endormie pour fuir (collision 30 s) ; viser la sortie avec Victor accroché (pas de sortie par une porte).
- **Macro / équipe** : pendant que Charlotte contrôle Victor, elle est immobile et sans TR → gens **éloignés d'elle** ; Victor accroché : le faire retirer (8 s) avant la sortie ; SWF : un « écraseur » désigné pendant la relève ; SoloQ : relever seulement si Victor est visible et rouge, ou rappelé (90 s au plus). Aucune auto-relève basekit en LIVE.
- **Add-ons** : Iridescent Pendant (écraser Victor pendant que Charlotte le contrôle = Exposed 45 s) → écraser seulement en sécurité · Silencing Cloth (Charlotte Undetectable 20 s en sortant du Dormant) → ne pas reprendre le gen près d'elle · Cat's Eye (bond silencieux) → obstacle entre toi et Victor · Madeleine's Glove / Soured Milk (rayon de cri +4/+2 m) → s'accroupir plus tôt.
- **Piège classique** : croire que Victor ne peut pas lancer de chase (il le peut depuis 9.0.0, VM).
- **Chiffres clés** : Charlotte 4,6 / Victor 6,0 · 32 m · grand ; accroché = Broken, Incapacitated, Oblivious ; retrait 8 s ; rappel 90 s ; bond raté = Victor vulnérable 3 s.
- **Source** : `batch4_killers_g3.md` §22 · guide ch. 7 fiche 22

### 23. The Trickster — ranged · usure (Laceration)
- **Identification** : jauges de Laceration sur les portraits dès le chargement ; berceuse audible de loin (44 m) mais **silencieuse à < 8 m** : une berceuse qui disparaît = il est tout près.
- **Ce qu'il cherche** : lignes droites et open, vaults face à lui (touche « dans un interstice » = 3 points de style), survivants à 3+ charges.
- **Faire** : **couper la LOS très souvent** (c'est la vraie source de distance : une volée courte ne te rend que 0,14 m/s) ; strafes latéraux larges ; poser une palette un peu plus tôt plutôt que vaulter face à lui chargé en lames [SITUATIONNEL].
- **Ne pas faire** : traverser un champ avec 3+ charges ; vaulter une fenêtre face à lui à distance moyenne ; se regrouper sur un gen quand le rang S tombe ; se croire tranquille parce que la berceuse s'est tue.
- **Macro / équipe** : 16 s sans touche **avant** que la Laceration baisse (3 charges ≈ 29 s pour revenir à 0, 5 charges ≈ 38 s) ; **au rang S elle ne baisse plus** (66 s) → s'écarter, ne lui offrir ni groupe ni ligne ouverte, sans arrêter les gens (66 s d'arrêt de 3 réparateurs ≈ 2,2 gens solo) ; Main Event interdit à < 20 m d'un accroché : le risque commence **après** le décrochage.
- **Add-ons** : Iridescent Photocard (Main Event 20 s ; auras de tous, gens bloqués 6 s) → quitter le gen et casser la LOS · Death Throes Compilation (75 % des lames rechargées après Main Event) → la fin du Main Event n'est plus une fenêtre sûre · Trick Blades (ricochet) → murs perpendiculaires à sa LOS · Edge of Revival Album (touches à > 20 m : Laceration doublée) · Bloody Boa (décroissance −75 %) → jauge quasi permanente.
- **Piège classique** : oublier sa jauge (1-2 lames suffisent à la fin).
- **Chiffres clés** : 4,4 · 24 m (44 m au rang S) · moyenne ; 36 lames, ≈ 3/s, 55 m/s ; 6 charges = 1 état ; vitesse en lançant 3,86 → 3,53 → 3,16 m/s ; rang S 66 s ; Main Event 10 s ; rework 9.5.0, ajusté 9.5.1-9.5.2 (VM) ; blocage des lames par une palette baissée : INC.
- **Source** : `batch4_killers_g4.md` §23 · guide ch. 8 §23

### 24. The Nemesis — anti-loop · zone (zombies)
- **Identification** : zombies sur la carte (2 en 1v4), grande silhouette, TR 32 m ; murs ou palettes détruits à distance = il est au moins MR2.
- **Ce qu'il cherche** : un survivant contaminé à 5-6,5 m derrière une palette basse ou une fenêtre ; les boucles courtes.
- **Faire** : strafe latéral **au son** de la charge (pas à l'animation seule) ; ne pas rester dans son axe à 4-6,5 m ; en **MR1**, la palette est une vraie ressource ; dès **MR2**, pré-drop **puis départ** : la frappe qui casse ne peut pas te toucher, et le tentacule repart en CD 2,25 s → délai pour gagner la tile suivante.
- **Ne pas faire** : se croire safe à 4-5 m (6,5 m en MR3) ; tenir une palette debout contre un MR2+ en attendant le stun ; réparer face à un zombie (un skill check raté l'attire).
- **Macro / équipe** : 4 vaccins pour toute la partie (ils ne soignent pas ; KI 3 s) → les prendre quand il est loin ; ne détruire un zombie avec une palette clé (retour en 45 s) que s'il bloque un gen ou une sortie ; lampe ou pétards l'immobilisent 15 s sans palette.
- **Add-ons** : Marvin's Blood / T-Virus Sample (mutation plus rapide) → MR2/MR3 plus tôt · Shattered S.T.A.R.S. Badge (zombies +1,5 m/s 60 s après chaque gen) · Depleted Ink Ribbon (zombies dans la zone de sortie portes alimentées) → vérifier avant d'y courir · Iridescent Umbrella Badge (Exposed 60 s après un vaccin) → vacciner loin de lui · Ne-α Parasite (Oblivious 60 s) → surveiller visuellement.
- **Piège classique** : boucler une petite tile en MR3 : enchaîner les tiles, utiliser hauteur et LOS.
- **Chiffres clés** : 4,6 · 32 m · grand ; tentacule 5 m (MR1-2), 6,5 m (MR3), charge 0,35 s, CD 2,25 s ; 1re touche = Contaminated sans dégât + Hindered −20 % 2 s ; MR2 à 5 points, MR3 à 14-15 (wiki contradictoire, INC) ; pouvoir 1v4 inchangé depuis 5.2.0 ; Eruption LIVE −10 % (VM).
- **Source** : `batch4_killers_g4.md` §24 · guide ch. 8 §24

### 25. The Cenobite — ranged (chaîne) · zone (boîte)
- **Identification** : aura de la **Lament Configuration** dès le début de partie ; portail et bruit de chaîne. Retiré des boutiques (4/03/2025), toujours jouable.
- **Ce qu'il cherche** : un survivant à découvert entre deux tiles, sur une trajectoire libre de moins de 24 m.
- **Faire** : casser la LOS vers le portail ; se déplacer de tile en tile **en longeant le décor** (la chaîne casse au contact, mais une chaîne de remplacement retente) ; arracher les chaînes (1 s chacune) dès qu'il ne peut pas punir ; changer de tile **avant** qu'il ait la trajectoire.
- **Ne pas faire** : traverser un champ à 10-24 m du portail ; ignorer la boîte jusqu'au Chain Hunt (90 s) ; se battre à deux pour la boîte ; aller à l'interrupteur enchaîné (portes bloquées + 5 s).
- **Macro / équipe** : **un seul** survivant résout la boîte (6 s), loin de lui, avant 90 s (coût : Oblivious, ne répare pas) ; ne jamais la laisser près de lui (s'il la ramasse : 3 chaînes sur tous) ; SWF : porteur désigné ; SoloQ : si quelqu'un y va, ne pas y aller aussi ; si elle est près de toi et que personne ne la prend, la prendre.
- **Add-ons** : Frank's Heart / Larry's Blood (gateway 24 m / chaîne 28 m) → changer de tile plus tôt · Engineer's Fang (la chaîne **blesse** un sain) → chaque tir = un coup · Original Pain (aura 8 s après arrachage) → arracher derrière un obstacle · Iridescent Lament Configuration (boîte invisible à > 24 m hors Chain Hunt) → se répartir pour la trouver · Chatterer's Tooth (Undetectable 25 s au ramassage ; qui ramasse : INC).
- **Piège classique** : résoudre la boîte à côté d'un gen qu'il patrouille.
- **Chiffres clés** : 4,6 · 32 m · grand ; chaîne 24 m de trajet, CD 5 s ; enchaîné : plus de course (1,13 à 2,26 m/s selon les chaînes) ; Chain Hunt à 90 s ; TP sur la boîte 3,25 s ; perks renommées en 9.0.0 (No Holds Barred, Hex: Fortune's Fool, Scourge Hook: Weeping Wounds) ; « chaîne = vault bloqué » : INC.
- **Source** : `batch4_killers_g4.md` §25 · guide ch. 8 §25

### 26. The Artist — ranged (à travers murs) · info
- **Identification** : corbeaux posés, croassement à ≤ 12 m, **auras de Swarms** (visibles de tous) qui traversent la carte.
- **Ce qu'elle cherche** : un survivant **déjà Swarmed** (la 2e touche blesse, à travers un mur) ; des sorties de tile prévisibles.
- **Faire** : suivre l'aura du Swarm et faire un **pas latéral net** ; changer souvent de direction ; hors chase, s'**accroupir** au passage d'un Swarm (pas de KI) ; après une volée de 3 corbeaux (≈ 12 s de recharge), traverser l'open.
- **Ne pas faire** : se croire à l'abri derrière un mur (aucun décor ne bloque un Swarm) ; traverser un corbeau posé ; réparer Swarmed quand elle a un corbeau prêt ; courir tout droit vers la tile suivante.
- **Macro / équipe** : retirer l'essaim (8 s, ou casier instantané) **avant** d'entrer en chase ; exception : gen presque fini et elle loin sans corbeau [SITUATIONNEL] ; ne pas se regrouper en ligne ; ne pas approcher un coéquipier Swarmed en chase.
- **Add-ons** : Severed Hands (tout survivant à ≤ 3 m d'un Swarmed le devient) → pas de gen ni de soin à deux avec un Swarmed · Garden of Rot (Exposed 4 s après retrait) → retirer loin d'elle · O Grief, O Lover (Exhausted tant que Swarmed) → retirer avant la chase · Charcoal Stick (auras des corbeaux en vol invisibles) → écouter · Iridescent Feather (Undetectable sans corbeau) → approche sans TR après une volée · Ink Egg (+1 corbeau). **Aucun add-on de vitesse de corbeau.**
- **Piège classique** : appliquer le réflexe « LOS » des ranged classiques.
- **Chiffres clés** : 4,6 · 32 m · moyenne ; 3 corbeaux, charge 1 s ; 7,5 m de trajectoire puis Swarm à 35 m/s à travers tout ; recharge 5 / 9 / 12 s ; aucun changement de pouvoir LIVE depuis 6.7.0.
- **Source** : `batch4_killers_g4.md` §26 · guide ch. 8 §26

### 27. The Onryō — furtif · mobilité (TV) · condamnation
- **Identification** : ni TR ni silhouette à > 24 m, clignotement à ≤ 24 m ; TV qui s'allument (30 s après le début) ; Condemned qui monte d'un coup chez tout le monde (projection). Petite silhouette.
- **Ce qu'elle cherche** : un survivant qui ne regarde jamais derrière lui ; une palette jetée alors qu'elle est **démanifestée** (pas de stun possible) ; les survivants à 5-6 stacks.
- **Faire** : checks réguliers derrière soi sur gen, **entre deux skill checks**, surtout si une TV à ≤ 16 m est allumée ou si ton Condemned vient de monter ; palette seulement quand elle est **manifestée** (pendant ses 1,5 s de manifestation derrière toi [SITUATIONNEL]).
- **Ne pas faire** : réparer à ≤ 16 m d'une TV allumée ou dos à sa zone d'arrivée ; jeter une palette sur une Onryō démanifestée ; oublier le Condemned en endgame (7 stacks = mori à terre).
- **Macro / équipe** : retirer les cassettes des TV proches des gens (TV éteinte 70 s) ; porter la cassette à la TV indiquée (−3 stacks ; la porter ne fait **plus** monter le Condemned) ; partager ce travail ; après 2 crochets, 6 stacks verrouillés = un stack de marge.
- **Add-ons** : Iridescent Videotape (projection sans Condemned ni extinction de TV) → faire les gens au lieu de gérer les TV · Ring Drawing (accrocher un porteur de cassette = +1 stack à tous) → ne pas garder de cassette en chase · Distorted Photo (voir sa manifestation à ≤ 16 m = cri + aura) → s'éloigner au lieu de la regarder · Remote Control (auras près des TV après projection) · Yoichi's Fishing Net (Blindness dès 4 stacks).
- **Piège classique** : « pas de TR = pas de tueur ».
- **Chiffres clés** : 4,6 · **24 m** + berceuse 24 m · **petite** ; projection : +1 Condemned à ≤ 16 m de **n'importe quelle** TV allumée ; verrouillage au crochet 3 puis 6 stacks ; rework 7.5.0/7.5.1 ; bug connu 10.1.0 : parfois visible à > 24 m démanifestée (VP) ; Call of Brine 90 s (10.1.0, VM).
- **Source** : `batch4_killers_g4.md` §27 · guide ch. 8 §27

### 28. The Dredge — mobilité (casiers) · zone (Nightfall) · info
- **Identification** : grande silhouette, casiers qui claquent, Remnant laissé sur la carte, jauge Nightfall avec alerte à 85 %.
- **Ce qu'il cherche** : des boucles près de casiers ; un Remnant qui coupe ta rotation ; des chases pendant Nightfall (obscurité, il est Undetectable).
- **Faire** : ne pas se placer entre le Remnant et lui ; **toucher le Remnant le supprime** (s'il n'est pas tout près) ; verrouiller les casiers près des gens actifs et des crochets (0,1 s : un casier verrouillé attire sa TP mais il en sort en 2,25 s **bruyamment** : c'est une alarme, pas un mur) ; jouer les tiles extérieures sans casier.
- **Ne pas faire** : **se cacher en casier** (s'il se téléporte dans un casier occupé, il en ressort en te portant) ; ouvrir un casier qui « avertit » ; réparer à côté d'un casier non verrouillé ; ignorer l'alerte 85 %.
- **Macro / équipe** : limiter les blessés simultanés (jusqu'à +4/s sur la jauge) ; c'est **le Dredge caché** qui remplit la jauge (+6/s), pas toi ; pendant Nightfall, rester près de tiles solides ; attendre la fin de la nuit (60 s) pour sauver ne marche que si l'accroché vient d'entrer en phase (70 s).
- **Add-ons** : Field Recorder (partie en Nightfall au départ, Nightfall auto au dernier gen) → finir le dernier gen sain et près des portes · Broken Doll (Nightfall 80 s) → ne plus attendre la fin pour sauver · Boat Key (verrous cassés portes alimentées) · Sacrificial Knife (vaults bloqués 5 s à ≤ 16 m du casier dont il sort) → quitter la zone · Tilling Blade (Blindness + Haemorrhage + Mangled si blessé en Nightfall).
- **Piège classique** : verrouiller « tous les casiers » d'une carte intérieure : jouer plutôt les tiles extérieures.
- **Chiffres clés** : 4,6 · 32 m · grand ; 3 jetons de TP ; CD 10 s (4 s en Nightfall) ; Nightfall 60 s, jauge 300 ; buff 9.6.0 (4,0 m/s en charge, VM) ; Dissolution LIVE = tout dégât, 12/16/20 s (le texte « 13/14/15 s » du wiki = PTB 10.2.0, non LIVE).
- **Source** : `batch4_killers_g4.md` §28 · guide ch. 8 §28

### 29. The Mastermind — mobilité · anti-loop · infection
- **Identification** : TR **40 m**, bruit de charge du bond, caisses de sprays, jauge Uroboros sur les portraits.
- **Ce qu'il cherche** : couloirs et open (élan) ; fenêtres vaultées sans avance ; survivants près d'un mur (dégât à la collision) ou **en interaction** (coup direct).
- **Faire** : au son de charge (1,5 s), demi-tour ou strafe serré, forcer le bond contre un obstacle ; ne pas traiter le 1er bond comme l'attaque (le 2e suit dans les 2,5 s) ; après un drop ou un vault, s'écarter **latéralement** ; en base, la palette **reste utilisable** après son passage (CD 1,5 s = fenêtre pour la rejouer).
- **Ne pas faire** : courir en ligne droite entre deux tiles ; vaulter avec peu d'avance puis rester derrière ; réparer, soigner ou décrocher quand il a un bond prêt à portée ; **considérer la palette perdue** alors qu'il l'a seulement franchie.
- **Macro / équipe** : infection critique en ≈ 100 s de passif → se désinfecter avant 100, spray quand il est loin (KI 4 s) ; un crochet remet l'infection à 1 ; ne pas coller un coéquipier en chase (le survivant projeté le blesse) ; sur carte ouverte, zones denses même pauvres en palettes.
- **Add-ons** : **Lab Photo** (le bond **casse** palettes et murs, plus de franchissement) → retour à « pré-drop + départ » · Iridescent Uroboros Vial (tous infectés au départ ; Exposed 30 s en critique) → se désinfecter bien avant 100 · Dark Sunglasses (Undetectable 20 s quand quelqu'un atteint le critique) → surveiller les jauges des coéquipiers · Loose Crank (+15 % pendant la fenêtre du 2e bond) → plus de distance après le 1er.
- **Piège classique** : pré-drop réflexe contre un Mastermind sans Lab Photo.
- **Chiffres clés** : 4,6 · **40 m** · moyenne ; 2 bonds (≈ 7 puis ≈ 14 m), recharge 5 s par jeton, 2e bond dans 2,5 s (9.6.0, VM) ; Virulent Vault = special-vault (9.5.0, VP) ; Uroboros +20 par contact, à 100 : Hindered −4 % et prochain contact double dégât ; Superior Anatomy LIVE CD 25 s (texte 30/35/40 % 20 s du wiki = PTB 10.2.0).
- **Source** : `batch4_killers_g4.md` §29 · guide ch. 8 §29

### 30. The Knight — anti-loop (gardes) · zone (patrouilles)
- **Identification** : orbe de tracé visible, garde sur la carte, étendard planté.
- **Ce qu'il cherche** : le « sandwich » garde + Knight de part et d'autre d'une tile ; un **ordre de garde** sur ta palette baissée, ton mur cassable ou ton gen (un garde ne casse pas en patrouillant).
- **Faire** : pendant une chasse de garde, viser l'**étendard tôt** (Haste 50 % + Endurance 3 s), avant que le Knight arrive ; s'il reste à ≤ 8 m de son garde, tenir le minuteur devient réaliste (×3) ; baisser une palette **tôt** contre un garde (≥ 3 m : il doit contourner, abandon si détour > 48 m) ; quitter une tile où un garde arrive.
- **Ne pas faire** : baisser la palette au contact du garde (< 3 m : il passe à travers) ; faire du Loud Noise (skill check raté) près d'un garde en patrouille ; paniquer vers une zone morte.
- **Macro / équipe** : **un décrochage met fin à la chasse de garde de celui qui décroche** [FACT] ; sortir de la zone de patrouille plutôt que finir la réparation ; contre l'Assassin, mender vite (Deep Wound).
- **Add-ons** : Iridescent Company Banner (fenêtres du tracé bloquées 25 s, fenêtres vaultées par le chassé bloquées, **portes bloquées pour le chassé**) → palettes et changements de tile, pas les portes pendant une chasse · Town Watch's Torch (Knight Undetectable pendant une chasse) · Blacksmith's Hammer / Broken Hilt (Broken / Haemorrhage + Mangled si blessé par un garde) → viser l'étendard · Dried Horsemeat / Tattered Tabard (chasse +4 s / patrouille +8 s).
- **Piège classique** : rester sur la tile pendant qu'un garde arrive.
- **Chiffres clés** : 4,6 · 32 m · moyenne ; tracé 38 m, 15 m/s, 10 s (9.1.0, VM) ; ordre de garde à ≤ 6 m : casse en **1,8 s** (Carnifex) ou **5 s** (Assassin, Jailer) ; Carnifex 4,1 m/s, Assassin 4,4 m/s + Deep Wound, Jailer vision 16 m ; règle palette 10.1.1 (VM) ; Nowhere to Hide LIVE 24 m.
- **Source** : `batch4_killers_g4.md` §30 · guide ch. 8 §30

### 31. The Skull Merchant — zone/piège (drones) · info
- **Identification** : drones surélevés avec une ligne qui tourne (visible à < 16 m) ; un survivant blessé sans attaque (Lock-On complet) ; une tueuse qui arrive **sans TR** juste après avoir rappelé un drone.
- **Ce qu'elle cherche** : poser un drone sur ta boucle pour une détection immédiate (Haste 5 %), puis empiler le Lock-On jusqu'à la blessure « gratuite ».
- **Faire** : franchir la ligne juste après son passage ; hors chase, **s'accroupir ou s'immobiliser** (non détecté) ; changer de tile quand elle pose un drone sur la tienne ; jouer les tiles longues **hors du rayon de 10 m** ou les étages (pas de détection à travers planchers) ; porteur de Claw Trap sous drone : sortir du rayon avant de jouer la palette.
- **Ne pas faire** : tenir une boucle « safe » sous un drone (+1 Lock-On toutes les 2,5 s) ; compter sur le fast vault (immunité supprimée en 9.3.0) ; conclure « pas de TR = elle est loin » après un rappel (Undetectable 8 s).
- **Macro / équipe** : pirater quand elle est loin (drone off 45 s ; raté = +1 Lock-On) ; le Claw Trap s'éteint seul en 45 s ; ne pas tomber en Lock-On à plusieurs dans la même zone ; 3-gen défendu par des drones = y aller à plusieurs.
- **Add-ons** : Expired Batteries (tous commencent avec un Claw Trap) → éviter les lignes ≈ 22 s · Iridescent Unpublished Manuscript (drone piraté : elle Undetectable 15 s, le drone émet un TR 32 m) → pirater en sachant où elle est · Low-Power Mode (lignes immobiles) → contourner le faisceau · Geographical Readout (casse et vault +20 % 8 s après une pose) → quitter la palette après une pose.
- **Piège classique** : croire que marcher suffit à passer le scan (il faut être accroupi ou immobile).
- **Chiffres clés** : 4,6 · **24 m** (8.6.0) · moyenne ; 6 drones, pose toutes les 7 s, scan 10 m ; 3 Lock-On = blessure (Deep Wound si blessé) + Broken + Claw Trap ; Claw-trapped scanné : Hindered 10 % 6 s (toi 3,6 contre elle 4,83 m/s près d'une pose) ; ajustements 9.3.0 / 9.3.2 (VM) ; retrait manuel du Claw Trap : INC.
- **Source** : `batch4_killers_g5.md` §31 · guide ch. 8 §31

### 32. The Singularity — mobilité (TP) · ranged · anti-loop
- **Identification** : Biopods collés au décor et Supply Cases en aura dès le début ; KI au moment d'un tag.
- **Ce qu'il cherche** : te tagger depuis un pod placé derrière toi, se téléporter juste avant ta palette, profiter de l'Overclock (actions +75 %, immunité aux stuns).
- **Faire** : repérer chaque pod et **casser sa LOS** pendant les 0,8 s de charge (ou rester à > 20 m) ; non Slipstreamed = pas de TP sur toi [FACT] ; palette jetée sur lui en Overclock : pas de stun, mais **Overheat 3 s à 2,3 m/s** (≈ 5 m pour toi) ; pendant l'Overclock (5,7 s), viser une ressource plus loin plutôt que tenir la palette actuelle.
- **Ne pas faire** : rester dans la LOS d'un pod à < 20 m ; réparer à plusieurs dans la vue d'un pod (Slipstream propagé à 6 m) ; utiliser l'EMP sans rien à nettoyer.
- **Macro / équipe** : ramasser un EMP tôt et le garder pour un vrai Slipstream ou un groupe de pods (zone 10 m, pods off 45 s) ; SoloQ : en prendre un si personne n'en a visiblement.
- **Add-ons** : Denied Requisition Form (tous Slipstreamed au départ) → aller vers une Supply Case · Diagnostic Tool (Repair) (tag à 24 m) → distance sûre 24 m · Nutritional Slurry (+2 pods) → changer de zone · Foreign Plant Fibres (Overheat −20 %) → la palette sur Overclock rapporte moins · Cremated Remains / Spent Oxygen Tank (Blindness / Exhausted 6 s si Slipstreamed).
- **Piège classique** : croire que stunner en Overclock « ne sert à rien » (erreur du seed).
- **Chiffres clés** : 4,6 · 32 m · moyenne ; 8 pods, pose à 22 m, tag LOS 20 m en 0,8 s ; TP à travers une palette baissée = casse + Overheat ; 4 Supply Cases ; pouvoir inchangé depuis 8.7.0.
- **Source** : `batch4_killers_g5.md` §32 · guide ch. 8 §32

### 33. The Xenomorph — anti-loop (queue) · mobilité (tunnels)
- **Identification** : Control Stations et tourelles dès le début ; KI soudain près d'une station = sortie de tunnel ; TR qui passe de 32 à 24 m = Crawler Mode.
- **Ce qu'il cherche** : la queue (4,8 m) sur petite tile ou par-dessus un obstacle bas ; il évite les tourelles.
- **Faire** : lire le début de la queue (0,3 s, audible) et esquiver **latéralement** (une queue ratée = 2,5 s à 1,2 m/s ≈ 7 m pour toi) ; amener la chase vers une tourelle posée ; poser les tourelles **avant** la chase, sur les tiles fortes et les gens ; près d'une station, hors chase, **accroupi ou immobile** (pas détecté).
- **Ne pas faire** : tenir une palette basse contre la queue (passage au-dessus des palettes et fenêtres : INC, ne pas considérer le vault comme sûr) ; poser une tourelle hors des zones de chase ou la laisser tomber non déployée (autodestruction 30 s) ; marcher debout près d'une station.
- **Macro / équipe** : sorti du Crawler, il est M1 ≈ 35 s **s'il reste en surface**, mais ≈ 4,4 s s'il repasse par un tunnel ; tourelles couvrant crochets et gens, par paires ou derrière un obstacle (une tourelle seule surchauffe).
- **Add-ons** : Acidic Blood (stun dans les 20 s après une sortie de tunnel = blessure ou Deep Wound) → préférer la distance au stun · Ovomorph (recharge Crawler +25 %) · Ripley's Watch (tourelle détruite après l'avoir sorti du Crawler) → en chercher une autre · Crew Headset (détection à 22 m) → s'accroupir plus tôt.
- **Piège classique** : croire la fenêtre M1 longue alors qu'il est près d'une station.
- **Chiffres clés** : 4,6 · 32 m, **24 m en Crawler** · moyenne ; queue 4,8 m, CD 2,5 s (raté) / 2,7 s ; tunnels 18 m/s, détection 16 m ; tourelles : tir à 10 m, 125 charges = sortie du Crawler ; 1v4 inchangé depuis 8.6.0 (Innate Skills 10.1.2 = 2v8).
- **Source** : `batch4_killers_g5.md` §33 · guide ch. 8 §33

### 34. The Good Guy — furtif · mobilité · anti-loop
- **Identification** : pas de TR en Hidey-Ho, **faux pas** autour de toi (16 m), petite silhouette ; dash puis fente ; passage **sous** une palette (Scamper). Une palette **cassée** par un Scamper = add-on Hard Hat.
- **Ce qu'il cherche** : un dash au moment où tu te retournes ou t'engages en ligne droite ; un Scamper pour annuler l'avantage d'une palette ou d'une fenêtre.
- **Faire** : esquive latérale **tardive** au dash (rotation limitée) ; obstacles hauts et angles serrés ; **en 1v4 sans Hard Hat, la palette reste au sol après son Scamper** : elle t'a servi si tu as gagné de la distance pendant sa seconde de Scamper, et reste réutilisable ; après un dash raté (2,25 s) puis 12 s de recharge du Hidey-Ho, changer de tile.
- **Ne pas faire** : rester immobile juste derrière une palette baissée ; courir en ligne droite en open (un dash reprend ≈ 7 m d'un coup) ; croire les pas pendant Hidey-Ho.
- **Macro / équipe** : checks visuels réguliers quand il n'y a pas de TR ; SWF : annoncer sa sortie de Hidey-Ho ; SoloQ : checks et auras de perks.
- **Add-ons** : **Hard Hat** (le Scamper casse la palette) → dès la 1re casse, fenêtres et tiles sans palette unique · Iridescent Amulet (Hidey-Ho 21 s) → quitter le gen au moindre indice visuel · Portable TV (dash à 170 % portes alimentées) → pas de ligne droite vers les portes · Silk Pillow (TR 26 m) → ne pas juger la distance au TR · Plastic Bag (traverser un faux pas = Exhausted 15 s).
- **Piège classique** : « jouer la tile, pas la palette » (conseil du seed, faux en 1v4 sans Hard Hat).
- **Chiffres clés** : **4,4** · 32 m · **petit** ; Hidey-Ho 14 s, CD 12 s ; Slice & Dice 8 m/s 1,8 s ; Scamper 1 s ; casse de base = Innate Skill **2v8** (9.4.2), special-vault en 9.5.0 (VM) ; 1v4 inchangé depuis 8.6.0.
- **Source** : `batch4_killers_g5.md` §34 · guide ch. 8 §34

### 35. The Unknown — ranged (UVX) · furtif / mobilité
- **Identification** : hallucinations fixes sur la carte (aura à 8 m) ; projectile qui rebondit ; statut Weakened.
- **Ce qu'il cherche** : une explosion derrière un obstacle bas ou au rebond pour te mettre Weakened, puis te blesser au tir suivant (6,25 s plus tard au plus tôt).
- **Faire** : bouger latéralement au relâchement (1 s de charge audible) ; **murs hauts pleins** ; traverser l'open pendant ses 6,25 s de CD ; faire le **Stare Down** (10 s cumulées à ≤ 25 m) avec un angle stable (une coupure de 0,75 s l'interrompt) et un obstacle proche.
- **Ne pas faire** : tenir un muret bas ; garder le Weakened en pensant qu'il partira seul ; dissiper une hallucination pendant une chase proche ; être plusieurs dans la même zone d'explosion.
- **Macro / équipe** : dissiper les hallucinations proches des gens **quand il est loin** (échec = Weakened + KI 5 s) ; rester sain et non-Weakened ralentit aussi l'apparition des hallucinations.
- **Add-ons** : Captured by the Dark (tous Weakened au départ) → Stare Down dès la 1re rencontre · Vanishing Box (finir un gen = Weakened) → Stare Down après chaque gen · Iridescent OSS Report (TP 20 s ; leurres avec TR et Red Stain) → vérifier à l'œil avant de fuir un TR · Slashed Backpack (UVX sur une hallucination = zone d'explosion) → pas de chase près d'une hallucination · B-Movie Poster (blessure UVX = Broken 30 s).
- **Piège classique** : déjà Weakened, tenir la tile comme si la 1re explosion était gratuite.
- **Chiffres clés** : 4,6 · 32 m · **moyen** (pas grand) ; UVX explosion 2,25 m, CD **6,25 s** (9.6.0, VM) ; TP vers une hallucination, CD 25 s ; visée verticale élargie en 9.2.0 (étages).
- **Source** : `batch4_killers_g5.md` §35 · guide ch. 8 §35

### 36. The Lich — mobilité (Fly) · anti-loop (Mage Hand) · info
- **Identification** : coffres et objets magiques dès le début ; palette qui se **relève** ou reste **bloquée** ; KI sans raison visible (Dispelling Sphere, invisible pour toi). Palette abaissée que la main **casse** = Vorpal Sword.
- **Ce qu'il cherche** : Mage Hand sur ta palette **debout** au moment où tu veux la jeter (4 s de blocage) ou sur la palette abaissée pour la relever ; Fly (8 m/s) pour franchir ; Flight of the Damned dans un couloir.
- **Faire** : **s'accroupir** face à Flight of the Damned sur terrain plat (les entités volent à 1,4 m) ; Mage Hand disponible : jeter la palette **plus tôt, puis partir** ; 0,55 s après une relève, tu peux rabaisser la palette (un Lich qui relève trop tôt s'expose au stun) ; après un Mage Hand (CD 35 s), la fenêtre devient la ressource sûre ; après un Fly, 2,75 s sans attaque : prendre la distance.
- **Ne pas faire** : attendre à la palette debout jusqu'au dernier moment avec Mage Hand prêt ; courir debout face aux entités ; rester près d'une palette relevée sans la rabaisser.
- **Macro / équipe** : suivre ses CD (Fly 20 s, Flight 30 s, Sphere 30 s, Mage Hand 35 s) : hors sorts, c'est un M1 ; KI soudain + objets grisés = Sphere ; le vrai risque des coffres est le **Mimic** ; ne ramasser que les objets utiles.
- **Add-ons** : **Vorpal Sword** (Mage Hand casse la palette abaissée en **4 s**) → ne pas revenir boucler sur la palette jetée · Iridescent Book of Vile Darkness (entités plus basses : touchent les accroupis) → obstacle au lieu de s'accroupir · Cloak of Elvenkind (TR −22 m en Fly) → regarder en l'air · Cloak of Invisibility (4 sorts en CD = Undetectable 20 s) · Staff of Withering (Sphere = Exhausted 30 s).
- **Piège classique** : croire que Mage Hand « casse » les palettes sans add-on.
- **Chiffres clés** : 4,6 · 32 m · moyen ; Mage Hand 16 m : palette debout bloquée 4 s, abaissée relevée en ≈ 1 s ; tous les sorts dès le début (9.0.0, VM) ; durée de Vorpal Sword corrigée en 9.1.0 (VP).
- **Source** : `batch4_killers_g5.md` §36 · guide ch. 8 §36

### 37. The Dark Lord — mobilité · ranged/zone (Hellfire) · anti-loop (loup)
- **Identification** : trois formes distinctes ; **berceuse sans TR** = chauve-souris (48 m) ; Scent Orbs au sol = loup ; ligne de piliers de feu = vampire.
- **Ce qu'il cherche** : piliers pour couper une sortie ou tirer **par-dessus un obstacle bas** ; Pounce du loup sur une palette abaissée ; arrivée en chauve-souris **sur** la palette ou la fenêtre de ta tile.
- **Faire** : esquive **latérale** de l'Hellfire (ligne de 10 m, charge 0,9 s) ; obstacles **hauts** ; contre le vampire, palette normale ; contre le loup, une casse par Pounce **consomme le Pounce (CD 20 s)** → fenêtre vers la palette suivante ; en sortie de chauve-souris, 1,5 s à 2,3 m/s avant qu'il frappe : prendre la distance.
- **Ne pas faire** : rester dans l'axe d'un vampire qui charge ; tenir seul une palette abaissée contre un loup au Pounce prêt ; se croire loin parce que la berceuse l'est (une TP couvre 32 m).
- **Macro / équipe** : il est bloqué 3,5 s dans sa forme après chaque transformation → choisir la tile adaptée à la forme actuelle ; ne pas laisser une traînée d'orbes en ligne droite ; en chauve-souris il ne te voit pas (griffures visibles, pas +50 %) ; SWF : annoncer la forme.
- **Add-ons** : Iridescent Ring of Vlad (piliers guidés) → casser la LOS derrière un mur haut · Pocket Watch (TP rechargée après une casse de palette) → nouvelle arrivée sur la ressource suivante · Lapis Lazuli / Medusa's Hair (fenêtre bloquée 8 s / Hindered 8 % près de la destination) → s'éloigner de la ressource d'arrivée · Cube of Zoe (piliers 10 s après chaque gen) · Moonstone Necklace (TR 24 m).
- **Piège classique** : ignorer que palettes abaissées et fenêtres sont ses **points de TP** en chauve-souris.
- **Chiffres clés** : 4,6 ; 6,5 en chauve-souris · 32 m ; berceuse 48 m · grand ; Hellfire CD 9,5 s (VP) ; Pounce 2 × 6 m, CD 20 s ; TP 2-32 m, CD 15 s ; loup 4,8 m/s avec orbe (Haste 4,35 %) ; pouvoir special-break (9.5.0, VM).
- **Source** : `batch4_killers_g5.md` §37 · guide ch. 8 §37

### 38. The Houndmaster — anti-loop · ranged (chien) · info
- **Identification** : berceuse du chien éloignée du TR, ou KI sans tueur visible = Search Command ; aboiements ; chien lancé en ligne droite.
- **Ce qu'elle cherche** : une **ligne droite** entre le chien et toi (sortie de tile, couloir, open). Fenêtre ou palette tombée **n'arrêtent pas** le chien : il les vaulte en 0,65 s.
- **Faire** : décalage latéral **tardif** derrière un obstacle plein, avec un 2e décalage en réserve (redirection possible une fois) ; tiles à **angles courts** (jungle gym, shack) ; pris, tirer vers une palette **debout** et la faire **tomber sur le chien** (stun 3 s) ; traverser l'open seulement avec une vraie avance.
- **Ne pas faire** : hold W en ligne droite ; **vaulter au moment où le chien arrive** (collision = blessure) ; croire que l'Endurance annule la traîne (8 s → 2 s).
- **Macro / équipe** : berceuse du chien + KI sur toi = repéré et sous **Houndsense** (prochaine blessure = Deep Wound) → en général quitter le gen (exception : 5 % restants et Portia hors de vue) ; soigner tôt ; un allié à ≤ 20 m libère en 0,65 s si Portia est loin ; pas de décrochage en open à moyenne distance d'elle.
- **Add-ons** : Leather Harness (chien +20 % 30 s après chaque gen, permanent en endgame) → décaler plus tôt · Iridescent Wheel Handle (Portia Undetectable en Search Command) → la berceuse du chien ≠ « Portia est loin » · Marlinspike (Houndsense à tous à ≤ 20 m du chien lors d'une prise) → le sauveteur le sait · Spiked Collar (blessé pendant la prise = Haemorrhage + Mangled 60 s).
- **Piège classique** : « courir loin pour étirer la chase » : l'open est sa portée idéale.
- **Chiffres clés** : 4,6 · 32 m · moyenne ; chien 35 m/s ; prise 8 s max (2 s sous Endurance), portes bloquées + 1,5 s ; CD 3 s (8.4.2) ; aucun changement d'équilibrage 9.0.0 → 10.1.2a ; vaults du chien (VM : correctifs KB 550 et 552).
- **Source** : `batch4_killers_g6.md` §38 · guide ch. 8 §38

### 39. The Ghoul — mobilité · anti-loop · M1 (contre un marqué)
- **Identification** : TR de 40 m, arrivée par bonds vers les murs et les toits ; **un bond qui t'atteint sans te blesser annonce le Grab-Attack au bond suivant**.
- **Ce qu'il cherche** : une LOS sur toi à ≤ 14 m hors d'une tile pour enchaîner deux bonds dans les 5 s ; contre un survivant marqué, il redevient un M1 avec bonds de mobilité.
- **Faire** : casser la LOS au moment où il vise ; après un 1er bond non blessant, **couper la ligne immédiatement** ; esquive latérale tardive (magnétisme quasi nul depuis 9.5.0) ; poser la palette **tard**, pour le stun ou pour vider ses tokens (vault = recharge ≈ 8 s ; casse = 1 token, 2 en Enragé), puis exploiter la recharge ; tiles hauts et fermés.
- **Ne pas faire** : traverser l'open « parce que le TR est loin » ; compter sur une fenêtre isolée ; se réfugier sur un toit (bonds jusqu'à 8 m de dénivelé) ; rester sur la même ligne après un 1er bond.
- **Macro / équipe** : **mender vite** les marqués : c'est le **mend** (ou le passage au sol) qui retire la marque et lance la fin de l'Enragé, pas le soin complet ; gens espacés (sa mobilité rend la défense 3-gen mobile) ; décrocher quand il est engagé loin.
- **Add-ons** : **Iridescent Eye Patch** (3e bond enchaîné en Enragé sur une palette tombée = palette détruite) → en Enragé, enchaîner vers la tile suivante · Hinami's Umbrella (+10 s de Countdown par grab parfait) → mender plus tôt · Yamori's Mask (crochet en Enragé révèle 3 s les survivants à > 40 m) → rester à ≤ 40 m derrière un obstacle · Red-Headed Centipede (fenêtre vaultée bloquée 10 s en Enragé) → quitter la boucle.
- **Piège classique** : boucler une palette tant qu'il a des tokens : penser en fenêtres de recharge.
- **Chiffres clés** : 4,6 · **40 m** · moyenne ; 2 tokens (3 en Enragé), bond ≤ 14 m (nerf 8.6.2), recharge complète ≈ 8 s (≈ 7,5 s en Enragé) ; Countdown 40 s (50 s après grab parfait) ; plus de coup automatique après Leap Vault (9.5.0, VM).
- **Source** : `batch4_killers_g6.md` §39 · guide ch. 8 §39

### 40. The Animatronic — ranged (hache) · mobilité (portes) · furtif
- **Identification** : Security Doors sur la carte ; TR court (24 m) et Undetectable fréquent ; hache plantée dans le décor (zone de KI 15 s). « Springtrap » est un alias de William Afton.
- **Ce qu'il cherche** : un lancer à la sortie de tile, puis rejoindre à ≤ 3 m le survivant qui porte la hache : **Grab Axe = sur l'épaule, sans second coup** [FACT].
- **Faire** : esquive latérale **au relâchement** (windup 1 s ; trajectoire en cloche) ; sans hache, il est à 4,6 m/s mais sans projectile → jouer la boucle, pas l'open ; hache plantée en toi : la retirer (8 s seul, 5 s par un allié) dès que tu as ce temps hors de portée, sinon rester à > 3 m de lui.
- **Ne pas faire** : entrer dans une porte quand il peut y entrer aussi ; garder la hache pour « finir le gen » ; se laisser rattraper à 3 m avec la hache plantée ; réparer dans le champ d'une porte récemment utilisée.
- **Macro / équipe** : les caméras sont une ressource **partagée avec lui** (batterie commune) : le regarder 4 s le révèle **à toute l'équipe** 10 s et coupe son Undetectable → à utiliser pendant une chase, un portage ou un sauvetage, pas « pour voir » ; SWF : le plus proche retire la hache pendant qu'il est engagé ailleurs.
- **Add-ons** : Iridescent Remnant (à son arrivée par une porte, palettes debout à ≤ 32 m bloquées 12 s) → fenêtres et tiles de LOS · Access Panel (la hache traverse les portes) · Faz-Coin (la hache émet une copie de son TR ; +10 s d'Undetectable) → localiser la source du TR · Loot Bag (hache plantée = portes bloquées pour le porteur et à ≤ 12 m) → retirer la hache avant la porte.
- **Piège classique** : vider la batterie des caméras sans décision à la clé.
- **Chiffres clés** : **4,4 hache en main** / 4,6 sans · **24 m** · moyen ; hache 30 m/s, portée 16 m ; Undetectable 20 s en sortie de porte ; recharge de la hache 6 s (décor) / 8 s (survivant) et batterie (9.6.0, VM) ; Help Wanted : LIVE non relue (INC).
- **Source** : `batch4_killers_g6.md` §40 · guide ch. 8 §40

### 41. The Krasue — ranged · mobilité · statut (Leech)
- **Identification** : deux TR (32 m corps, **40 m tête**) et un changement de vitesse ; tête volante ; champignons lumineux sur la carte.
- **Ce qu'elle cherche** : en corps, te toucher par rebond de glande derrière les obstacles ; en tête, **vaulter gratuitement les palettes** et fouetter à travers un coin (0,32 s).
- **Faire** : contre la glande principale, changer de direction, **puis** casser la LOS contre les mini-glandes (tête chercheuse à ≤ 7 m) ; contre la tête, murs pleins et gros rochers qu'elle doit **contourner** ; un stun de palette (2,5 s) reste possible quand elle vaulte mal.
- **Ne pas faire** : boucler une palette contre la tête comme contre un M1 ; courir en ligne droite contre la glande ; oublier qu'un TR de 40 m peut être la tête **loin du corps** ; manger un champignon à portée de glande.
- **Macro / équipe** : manger un champignon **avant** Leeched II (60 s depuis Leeched I), hors de portée ; le crochet remet le Leech à zéro (9.2.2, VP) : ne pas gaspiller un champignon juste avant un crochet probable ; au palier II (blessé + Broken), faire baisser la jauge avant de soigner.
- **Add-ons** : Chicken Head (tous Leeched I au départ) → le fouet blesse dès la 1re chase · Spattered Handkerchief (portes alimentées : tous Leeched I, champignons détruits) → éviter la tête en endgame · Shredded Gown (auras près d'un champignon à chaque changement de forme) → manger vite et partir · Queen's Sceptre (fouet qui touche = glande jaillit de toi) → casser la LOS après un fouet · Janjira's Hand (vol rechargé après chaque gen).
- **Piège classique** : « étirer » la chase contre la tête dès le départ : sans Bloodlust, elle ne devient plus lente qu'un 4,6 qu'après ~25 s ; les premières secondes sont les plus dangereuses.
- **Chiffres clés** : corps 4,6 / **tête 4,8** (sans Bloodlust) · 32 / 40 m · moyenne ; fouet : ne blesse qu'à partir de Leeched I ; tête vaulte palettes 1,9 s, fenêtres 1,67 s ; Ravenous LIVE Exposed 40/50/60 s (80/85/90 s = PTB 10.2.0, non LIVE).
- **Source** : `batch4_killers_g6.md` §41 · guide ch. 8 §41

### 42. The First — zone · furtif (Upside Down) · mobilité
- **Identification** : 4,4 m/s ; TR qui disparaît d'un coup (Upside Down) ; anneaux rouges au sol (liane, Undergate) ; horloges sur la carte.
- **Ce qu'il cherche** : prédire ta sortie de palette ou de fenêtre (zone retardée) ; hors Worldbreaker, il **construit** ses tokens (lianes sans dégât) ; en Worldbreaker, lianes et Undergate **blessent**.
- **Faire** : **bouger dès que l'indicateur apparaît** (0,6 s de délai = 2,4 m pour toi, plus que le rayon de 1,46 m) ; sortir tout de suite d'un anneau d'Undergate ; hors Worldbreaker, boucles longues (il ne reprend que 0,4 m/s) ; en Worldbreaker, raccourcir la chase, murs hauts, couper la LOS.
- **Ne pas faire** : rester immobile ou vaulter pendant l'indicateur ; compter sur un casier contre l'Undergate (non confirmé, INC) ; envoyer deux survivants à la même horloge.
- **Macro / équipe** : horloges : **un seul** survivant (le 2e ne gagne qu'≈ 7 s pour ≈ 20 s de réparation perdue, [HEURISTIQUE ; taux = HYPOTHÈSE]) ; SoloQ : si quelqu'un est déjà sur une horloge, rester sur ton gen ; un survivant à 2 crochets et 4 tokens risque le Mind Break → priorité anti-tunnel ; décrocher et sortir de la zone d'une liane au crochet (délai 6 s).
- **Add-ons** : **Shattered Wrist Rocket** (l'Undergate casse les palettes et abîme les gens) → quitter l'anneau au lieu de compter sur la palette · Electroshock Collar (vaults bloqués 12 s à ≤ 32 m en sortie d'Upside Down) → tile à murs ou palette debout · Chess Piece (liane à 2 charges) → attendre la 2e zone · Pizza Goggles (Upside Down ≈ toutes les 10 s) → se répartir · Iridescent Soteria Chip (au Worldbreaker : Undetectable + auras à ≤ 12 m) → quitter les gens proches.
- **Piège classique** : croire « 35 s sans danger » après une sortie d'Upside Down : c'est 35 s sans **nouvelle embuscade par ce biais**.
- **Chiffres clés** : 4,4 ; 8,0 dans l'Upside Down · 32 m · moyen ; Upside Down traverse palettes, fenêtres et **murs cassables** (pas les murs pleins), CD 35 s ; Worldbreaker à 2 ou 4 tokens, phase 2 = 50 s (9.5.0, VP), en pause pendant un portage ; casse par la liane : INC.
- **Source** : `batch4_killers_g6.md` §42 · guide ch. 8 §42

### 43. The Slasher — furtif · mobilité · ranged (pics)
- **Identification** : TR qui se coupe sans raison = Omnipresent Evil (OE) ; tas de ferraille ; réapparition brutale **sur** une palette ou une fenêtre.
- **Ce qu'il cherche** : réapparaître sur la ressource que tu allais utiliser (cassée ou franchie, puis **bloquée 4 s**), puis gagner la chase courte avec la Haste (25 s).
- **Faire** : quand le TR se coupe, il lui faut ≈ 5 s minimum avant de frapper après un Jump Scare ; hors chase, **s'accroupir** (plus détecté après 2,5 s) ; en chase, **ne pas prendre la ressource évidente** ; s'il réapparaît devant toi, 1,5 s + 1 s te laissent ≈ 10 m pour changer de direction ; esquive latérale des pics.
- **Ne pas faire** : rester debout et immobile près d'une palette quand le TR disparaît (le rayon de 16 m se mesure **depuis lui**) ; réparer seul près de lui en OE ; courir groupés ou le long d'un mur blessé (poussée d'un pic).
- **Macro / équipe** : retirer **immédiatement** un pic de crochet (empalé = Broken, aura à ≤ 26 m) ; au dernier crochet, éviter tout pic (Finisher) ; Jump Scare 3× plus lent près d'un accroché (même étage) = fenêtre de sauvetage ; un épinglé peut être libéré.
- **Add-ons** : Iridescent Boat Motor (fenêtres traversées en OE bloquées 13 s au Jump Scare) → chase sur les palettes · Orderly's Shoe (Haste 30 s) → casser la LOS plus longtemps · Deputy's Badge (en OE, passer près d'un gen le fait exploser ; skill check spécial) → réussir le skill check au lieu de lâcher le gen · Sauna Rock (Exhausted 3 s après un Jump Scare) → garder le Sprint Burst pour après · Burnt Fuse (empalé : portes bloquées pour lui et à ≤ 13 m).
- **Piège classique** : « TR = info » : ici c'est **l'absence** de TR qui est l'info.
- **Chiffres clés** : 4,4 ; 8,0 en OE · 32 m · moyen ; Jump Scare à ≤ 16 m de lui, réapparition 1,5 s (4,5 s près d'un accroché) + 1 s sans attaque ; special-break / special-vault (VP) ; sorti en 10.0.0, add-ons ajustés 10.0.1-10.0.3 ; Coroner's Coffee LIVE 13 % (10.0.1).
- **Source** : `batch4_killers_g6.md` §43 · guide ch. 8 §43

### 44. The Judgment — ranged · zone · Exile · Heresy
- **Identification** : grande silhouette à 4,4 m/s ; Shrines of Judgment sur la carte ; colonne de lumière (aura visible à ≤ 48 m) ; un survivant qui **disparaît au sol** au lieu d'être accroché = Exile.
- **Ce qu'il cherche** : une LOS prolongée pour guider la colonne, puis une projection quand tu es engagé sur une trajectoire ; des survivants **hérétiques** à exiler (à 2 états de crochet : tués).
- **Faire** : **dodger au moment de la projection, pas pendant le contrôle** (après ≥ 1 s de contrôle, 0,3 s de délai ; contrôle court, jusqu'à 0,9 s) ; traverser une colonne **encore contrôlée** perpendiculairement d'un seul trait (sans danger) ; en **Zealous** (60 s après un exil), il corrige encore 0,6 s → **casser la LOS** plutôt qu'esquiver ; hors Zealous, la trajectoire est figée à la projection (10.1.2a).
- **Ne pas faire** : teabag ou crouch spam près de lui (3 accroupissements ou gestes à ≤ 10 m = Heresy) ; attendre dans le seuil d'une porte ouverte (45 s = Heresy) ; compter sur un mur (la lumière traverse : il cache seulement ta position).
- **Macro / équipe** : **Repent** (Shrine, retrait en 30 s) en priorité si tu es hérétique **à 2 états de crochet** ; à 0-1 état, si un Shrine est proche ou si l'équipe compte sur des perks de décrochage ; hérétique, viser les **Great** (un Good coûte −3 %) ; porte bloquée 8 s seulement pour l'hérétique qui l'a acquise à ≤ 32 m d'une porte → laisser un non-hérétique ouvrir ; dans l'Exile, esquiver les Seeds (−3 s) et collecter les âmes (+0,5 s de protections chacune) ; le sauveteur prie à un des 2 Shrines les plus proches **du Judgment** : attendre qu'il soit engagé ailleurs.
- **Add-ons** : Superheated Glass (en Zealous, la lumière **casse** palettes et murs ; survivants à ≤ 12 m hérétiques) → pas de palette en Zealous, s'éloigner à > 12 m · Chains of the Heretic (la lumière revient **vers le Judgment**) → sortir de l'axe colonne-Judgment · Mirror of the Creators (rebond sur 2 obstacles) → s'éloigner de l'axe au lieu de se coller au mur · Obsidian Feather (projection automatique ≈ 2,25 s) → dodger à ce moment · Eyes of Gerhardt (un hérétique qui finit un gen révèle tous les hérétiques) → purger avant.
- **Piège classique** : compter sur Off the Record ou Borrowed Time contre un Exile (pas de perks de crochet) : l'état qui compte est « hérétique ou non ».
- **Chiffres clés** : 4,4 · 32 m · grand ; colonne 3 s max, CD 6 s ; Exile = crochet sans perks de crochet, mort à 2 états (VP) ; exilé libéré à 8-16 m du Shrine et à ≥ 32 m du Judgment, 1 s d'immunité (10.1.2, VM) ; fenêtre de courbe : 0,6 s en Zealous, **aucune** hors Zealous (10.1.2a, VM) ; protections de décrochage basekit à la sortie d'Exile (VM).
- **Source** : `batch4_killers_g6.md` §44 · guide ch. 8 §44

---
## 6. Conflits encore ouverts

Seuls les conflits **non résolus** après la re-vérification du 27/09/2026 figurent ici. Aucun ne change une consigne principale ; ne jamais enseigner la valeur contestée comme LIVE.

| ID | Sujet | Sources en désaccord | Ce qu'on retient en attendant | Impact |
|---|---|---|---|---|
| CONFLICT-L4G1-05 | Hillbilly : casse de palette **sans** LoPro Chains | Page Pallets + note 9.5.0 (« Special-break ») vs page du Hillbilly (casse mentionnée seulement pour LoPro ; « Breaking Pallets: 1 s » sans condition) | Une palette pré-lâchée ne tient pas contre lui ; une palette lâchée sur un sprint engagé l'arrête, sauf LoPro | Faible |
| CONFLICT-B4G3-04 | Blight : tokens perdus sur une casse à ≤ 3 tokens | Note 9.6.0 + wiki (« 2 sous le max ») vs correctif 9.6.2 (il doit aussi perdre des tokens à ≤ 3) | Toute casse lui coûte des tokens ; quantité exacte à bas stock inconnue | Faible |
| CONFLICT-B4G3-05 | Oni : délai sans orbes après un décrochage | Note 9.5.0 (10 s) vs wiki (15 s) | « ~10-15 s sans orbes » | Très faible |
| CONFLICT-B4G3-07 | Demogorgon : totaux d'Undetectable de Violet Waxcap / Vermilion Webcap / Red Moss | Wiki (totaux sur base 5 s) vs note 9.6.0 (base 12 s) | Retenir les bonus (+1 / +3 / +8 s) ; ~20 s après une sortie avec Red Moss (calcul) | Très faible |
| CONFLICT-L4G4-05 | Hex: Pentimento (perk de l'Artist) : totems ravivés bénissables ? | Audit (wiki Totems : non) vs texte générique de la perk (oui) | Ne pas compter sur une bénédiction d'un totem ravivé | Faible |
| CONFLICT-B4G3-02 | Twins : force au haut MMR en 2026 | Présence en tête des kill rates confirmée pour janv.-mars 2025 (VP) ; chiffre « > 60 % » et période 2026 illisibles (infographies) | Ne citer aucun chiffre | Aucun sur le jeu |
| CONFLICT-B4G6-01 | Ghoul « > 60 % de kills au haut MMR » | Seed vs texte officiel KB 540 (Ghoul = le plus **joué**, aucun chiffre) | Chiffre retiré ; seule l'infographie reste à lire | Aucun sur le jeu |
| CONFLICT-B4G6-02 | The First « n°2 en kill rate au haut MMR » | Seed vs KB 540 / 554 (non cité) | Non étayé ; infographie à lire | Aucun sur le jeu |

**Points incertains sans conflit de sources** (pages muettes, INC) : vault de fenêtre de la Nurse ; blocage des hachettes, harpons et lames par une palette basse ou le maïs (Huntress, Deathslinger, Trickster) ; queue du Xenomorph au-dessus des palettes et fenêtres ; vault bloqué d'un survivant enchaîné (Cenobite) ; casse de palette par la liane et protection du casier contre l'Undergate (The First) ; geste exact de la casse de l'Oni en Fury ; MR3 du Nemesis à 14 ou 15 points ; retrait manuel du Claw Trap (Skull Merchant) ; portée maximale avec Iridescent Seal of Metatron ; ramasseur de la boîte pour Chatterer's Tooth ; Repent (faut-il rester au Shrine pendant les 30 s ?) ; Spine Chill contre Undetectable (perk modifiée au PTB 10.2.0) ; Help Wanted et Windows of Opportunity LIVE (le wiki affiche le PTB). Shape en Stalker : l'infobox affiche 32 m, le corps de page 0 m (retenu : aucun TR, cohérent avec l'Undetectable).

**Conflits de la v1 désormais fermés** (pour mémoire) : TR de Hillbilly, Hag, Blight, Pig, Onryō, Mastermind, Skull Merchant, Ghoul et Xenomorph en Crawler ; sprint du Hillbilly ; sursaut du Wraith (6,9 m/s, probable) ; hachettes de la Huntress ; Antidote du Clown (12 %) ; 5e slash de la Legion ; phasing passif de la Spirit ; Final Judgement et cages ; nature du changement Oni 9.1.0 ; Eruption (−10 %) ; No Way Out ; murs contre les corbeaux de l'Artist ; casses « instantanées » (Mastermind, Knight, Good Guy, Lich) ; texte du Skull Merchant vs note 9.3.0 ; Coroner's Coffee (13 %) ; Ravenous (40/50/60 s LIVE) ; **chien du Houndmaster et palettes** (CONFLICT-L7-06 de `batch7_tiles.md`, fermé par CONFLICT-B4G6-05 : le chien vaulte fenêtres **et** palettes tombées).

---

## 7. Erreurs du seed : bilan mis à jour

Seed de référence : `kb/seed/ch8_killers.txt`. Compilation des sections « Écarts avec le guide seed » des six fichiers re-vérifiés. **PROUVÉ** = contredit par une page wiki complète et/ou une note officielle (preuve citée dans le fichier source).

### 7.1 Le seed avait raison (contrairement à la v1 de ce handbook, à l'audit phase 0 ou à la mémoire du modèle)

| Élément | Le seed dit | Qui le contestait | Preuve |
|---|---|---|---|
| Huntress, nombre de hachettes | 7 | audit phase 0 (« erreur ») + mémoire du modèle (5) | 7 depuis 7.6.0 (page Anna, change log) ; errata |
| TR Hillbilly / Blight | 40 m | mémoire du modèle (32 m) | 32 → 40 m en 8.6.0 (pages wiki) |
| TR Hag | 24 m | mémoire du modèle | infobox ; 28 → 24 m en 1.9.3 |
| TR Pig | 24 m | mémoire du modèle | 32 → 24 m en 9.1.0 (wiki ; absent de la note officielle) |
| TR Onryō / Mastermind / Ghoul | 24 / 40 / 40 m | mémoire du modèle | infobox |
| TR Skull Merchant | 24 m | mémoire du modèle | 32 → 24 m en 8.6.0 |
| TR Xenomorph en Crawler | 24 m | non tranché en v1 | « Alternate Terror Radius 24 metres » |
| Hillbilly, sprint | ~10,1 m/s (~12 en Overdrive) | mémoire du modèle (8,8) | 10,12 / 12 m/s (page wiki) |
| Legion, 5e Feral Slash à terre | oui | mémoire du modèle | page wiki (y compris sous Deep Wound) |
| Spirit, phasing passif | existe | mémoire du modèle | page wiki (0,5 s toutes les 1 à 5 s) |
| Eruption | −10 % | audit phase 0 (5 %) | changement PTB 9.2.0 annulé (note 9.2.0) ; errata |
| Mastermind, palettes | « passe fenêtres et palettes » | audit phase 0 (casse instantanée) | franchissement ; casse seulement avec Lab Photo (errata) |
| Shape : exécution en EI, Stalker 4,2 m/s | présents | v1 (« non vérifié ») | notes 9.2.0 / 9.2.3 + wiki (VM) |
| Wraith sursaut 6,9 m/s ; Trapper Haste 7,5 % 5 s ; Nurse Heavy Panting 9.6.0 | présents | v1 (« suspect ») | wiki (+ notes 9.2.3, 9.6.0) |
| Ghost Face 17 → 15 s ; Demogorgon 5 → 12 s et virage doublé ; Doctor 0,75 s (9.6.0) ; Unknown 6,25 s (9.6.0) | présents | v1 (« non vérifiable ») | notes 9.6.0 / 9.6.1 + wiki |
| Oni, 5 orbes au crochet « depuis 9.2 » | oui | audit (« buffs 9.1.0 ») | 9.2.0 = buff d'orbes ; 9.1.0 = nerf (540°) |
| Clown, valeurs 9.1 et 9.2 | présentes | v1 (seul 9.1.0 documenté) | notes 9.1.0 et 9.2.0 |
| Krasue, Leech remis à zéro au crochet (9.2.2) | oui | v1 (absent du résumé de l'audit) | note 9.2.2 (VP) |
| Artist, « s'accroupir évite le KI » | oui | v1 (« douteux ») | page wiki |
| Dark Lord, loup 4,8 m/s, Hellfire 9,5 s (9.2.0) ; Singularity, valeurs du pouvoir ; Houndmaster et Ghoul, valeurs de base | présents | v1 (« suspect ») | pages wiki (+ notes) |
| Knock Out (LIVE 6 m / 5 % ; 10 m / 20 % au PTB) ; Dissolution étiquetée PTB | étiquetage correct | v1 (« PTB présenté comme LIVE ? ») | note PTB 10.2.0 (« was ») |

### 7.2 PROUVÉ faux (valeur ou mécanique contredite)

| Tueur | Le seed dit | Vérifié | Verdict |
|---|---|---|---|
| Huntress | Infantry Belt = +2 hachettes | +3 % Haste 5 s au toucher ; aucun add-on de capacité | FAUX |
| Huntress | plus haut kill rate global BHVR 2026 | Huntress = pick le plus large ; kill rate top tous MMR = Lich | FAUX |
| Knight | Nowhere to Hide 18 m « depuis 10.1.0 » | 24 m LIVE ; 18 m = PTB 10.1.0 | FAUX (PTB comme LIVE) |
| Knight | Iridescent Company Banner = « fenêtres cassables » | fenêtres bloquées 25 s + portes bloquées pour le chassé | FAUX |
| Knight | un garde qui patrouille près d'une palette la casse | casse seulement sur ordre (1,8 / 5 s) ; règle 10.1.1 omise | FAUX |
| Good Guy | le Scamper casse la palette en 1v4 « depuis 9.4.2 » | casse de base = 2v8 ; en 1v4, seulement avec Hard Hat | FAUX |
| Unknown | taille grande | moyenne | FAUX |
| Singularity | « stunner pendant l'Overclock ne sert à rien » | casse + Overheat 3 s (−50 %, sans pods) | FAUX |
| Artist | « pas le décor vertical très épais » ; add-ons de vitesse de corbeau | les Swarms traversent tout ; aucun add-on de ce type | FAUX |
| Dredge | se cacher en casier remplit la jauge | c'est le Dredge caché qui la remplit | FAUX |
| Onryō | porter une cassette fait monter le Condemned | supprimé (7.1.0 / 7.5.0) | FAUX (OBSOLETE) |
| Executioner | la cage bouge si un survivant s'approche | déclenché par l'Executioner (10 m, 3,5 s) | FAUX |
| Deathslinger | add-on « Gold Belt Buckle » | absent de la liste LIVE | FAUX |
| Doctor | « cassez la LOS » contre le Static Blast | l'onde traverse les obstacles ; seul un casier protège | FAUX |
| Hag | effacer les pièges à la lampe ; Disfigured Ear / Dead Hand « améliorent le déclenchement » | lampe supprimée en 6.7.0 ; Disfigured Ear = Deafened 6 s ; Dead Hand absent | FAUX |
| Wraith | cloche audible dans toute la carte ; lampe/pétard interrompt la désoccultation | tintement 24 m, souffle 40 m ; Lightburn supprimé en 6.7.0 | FAUX |
| Nurse | Matchbox = charge plus rapide ; Ataxic Respiration = portée | Matchbox = 4,4 m/s + 1 blink ; Ataxic = fatigue −7 % | FAUX |
| Shape | Tombstone Piece / Judith's Tombstone donnent le kill à la main | exécution basekit depuis 9.2.0 ; add-ons retravaillés | FAUX (OBSOLETE) |
| Nightmare | Z-Block « sélection pallets ou snares selon version » | aura 3 s des touchés ; bascule de base depuis 8.5.0 | FAUX |
| Spirit | respiration audible en phase ; Prayer Beads (phase silencieuse) | inaudible depuis 2.3.0 ; Prayer Beads absent en LIVE | FAUX (OBSOLETE) |
| Hillbilly | un blessé est « moins exposé » à la tronçonneuse | blessé, n'importe quel coup met à terre | FAUX (logique de jeu) |

### 7.3 PROUVÉ imprécis (omission ou formulation trompeuse)

Hag : Mint Rag vers un piège **non déclenché** (CD 10 s). Pig : Jigsaw Boxes (1 à 4 fouilles, 12 par partie). Legion : Deep Wound en pause **en courant** (pas « en chase ») ; un slash remplit entièrement la jauge. Plague : fontaine corrompue dès le départ omise ; « soignez vite » en règle absolue. Executioner : Final Judgement = Tormented au sol **déjà en 2e phase**. Oni : Iron Will contre les orbes (aucune interaction documentée, probablement faux). Cenobite : perks sous leurs anciens noms (OBSOLETE) ; difficulté « élevée » dans le tableau d'ensemble (page : Very Hard). Trickster : No Way Out (12 s + 6/9/12 s par jeton, max 36/48/60 s) ; vitesse en lançant à valeur unique (3,86 → 3,53 → 3,16 m/s). Onryō : projection à ≤ 16 m de **n'importe quelle** TV allumée. Skull Merchant : Undetectable 8 s au rappel omis ; « crouch ou marche » (réel : accroupi ou **immobile**) ; Hindered 10 % présenté comme général (seulement Claw-trapped) ; « rework 2027 » invérifiable. Singularity : Overheat omis après une TP à travers une palette. Good Guy : « très buffé début 2026 » (buffs 2v8) ; « jouer la tile, pas la palette ». Lich : Ring of Spell Storing / Pearl of Power exagérés (−1 / −2 s) ; casse avec Vorpal Sword omise ; « ouvrir un coffre révèle » non confirmé. Dark Lord : invisibilité des survivants en chauve-souris omise. Houndmaster : libération (faire **tomber** la palette sur le chien, ou un allié en 0,65 s) ; Leather Harness (30 s après chaque gen, permanent en endgame). Ghoul : marque retirée par le **mend**, pas le soin. Animatronic : nom réel (William Afton) ; historique 9.0.2 omis ; Grab Axe = portage direct ; caméra = aura révélée à tous 10 s. The First : Upside Down à travers murs **cassables** seulement ; horloges (+33 % pour le 2e survivant) ; « liane casse les palettes » et « casier contre l'Undergate » non vérifiables. Slasher : traversée des murs **cassables** seulement ; épinglage seulement si le pic met au sol ; ajustements 10.0.3 omis. Judgment : suppression de la fenêtre de courbe hors Zealous (10.1.2a) et réapparition à ≥ 32 m (10.1.2) omises ; Heresy (accroupissements **ou** gestes, à ≤ 10 m **du Judgment** ; 8 s seulement si acquise à ≤ 32 m d'une porte ; Repent ; seul un hérétique est exilable). Chapitre entier : ~75 % de conseils côté tueur ; kill rates NightLight sans échantillon ni date.

### 7.4 Non étayé (pas prouvé faux, aucun chiffre lisible)

Ghoul « > 60 % de kills au haut MMR » ; The First « n°2 en kill rate au haut MMR » ; Twins « top kill rate haut MMR » pour 2026 (confirmé seulement pour janv.-mars 2025) — voir §6.

### 7.5 Erreurs de la v1 de ce handbook, corrigées ici

Chien du Houndmaster « arrêté par une palette posée » (faux : il vaulte fenêtres et palettes tombées) ; « 5 hachettes de base » (faux : 7) ; neuf TR présentés comme contestés (tous résolus en faveur du seed) ; Good Guy « casse en 1v4 non tranchée » (tranché : Hard Hat requis) ; Mastermind et Lich « destruction de palette par pouvoir » (Mastermind franchit, Lich relève ; casse par add-on, en 4 s pour le Lich) ; Knight « casse instantanée » (ordre de garde 1,8 / 5 s) ; Eruption « non tranché » (−10 % LIVE) ; protections de décrochage après un Exile « non vérifiées » (elles s'appliquent, VM) ; Divine Light « bloquée par les tiles fermés » (elle traverse).

---

## 8. Sources

- Fiches re-vérifiées (27/09/2026, pages wiki.gg complètes + notes officielles BHVR locales) : `kb/research/batch4_killers_g1.md` (1-7), `g2.md` (8-15), `g3.md` (16-22), `g4.md` (23-30), `g5.md` (31-37), `g6.md` (38-44) ; audits `kb/audit/pass14_lot4_g1-g3.md`, `pass14_lot4_g4-g6.md`.
- Chapitres rédigés (tableaux récapitulatifs réutilisés) : `kb/guide/07_tueurs_A.md`, `kb/guide/08_tueurs_B.md`.
- Tiles et palettes : `kb/research/batch7_tiles.md` §5 (matrice tile × tueur, liste des palettes annulées, perks de tiles).
- Corrections prioritaires : `kb/ledgers/AUDIT_PHASE0_ERRATA.md` ; repères chiffrés : `kb/seed/audit_phase0.txt`.
- Pages wiki copiées localement : `kb/sources/wiki_killers/*.txt` (infobox des 44 tueurs recontrôlées le 27/09/2026) ; notes officielles : `kb/sources/patches/official_*.txt` (9.0.0 → 10.1.2a ; PTB 10.2.0 = 559, non LIVE, utilisée seulement pour écarter les textes PTB affichés par le wiki).
