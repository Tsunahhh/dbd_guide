# Audit pass 14 — lot 4, fiches tueurs 23 à 44 (`batch4_killers_g4.md`, `g5.md`, `g6.md`)

- **Date** : 27/09/2026. **Référence** : LIVE 10.1.2a ; PTB 10.2.0 non LIVE ; 2v8 ≠ 1v4. **Aucune recherche web.**
- **Méthode** : AUDIT 1 (§25, auditeur hostile) + AUDIT 2 (§26, « que ferait un joueur qui applique ce texte à la lettre ? »), plus recalcul de tous les chiffres. Seule source de faits vérifiés : `kb/seed/audit_phase0.txt` (registre des patchs 9.0.0 → 10.1.2a, tables 1.1 à 1.7, Palettes, Skill checks, publications BHVR). Les sources primaires archivées depuis dans `kb/sources/` (notes BHVR, pages wiki) **n'ont pas été utilisées** : elles sont renvoyées aux « Lacunes ».
- **Cohérence** : recoupé avec `kb/audit/pass14_deliverables.md` (H1 pré-drop non universel ; Mastermind et Lich = destruction instantanée ; H3 Good Guy : buffs 9.4.2 = 2v8, casse 1v4 UNRESOLVED ; H14/H16/H18 ; H19 EXPERT OPINION), `KILLER_COUNTERPLAY_HANDBOOK.md` (KCH) §2.2 et fiches 23-44, `PERK_DEDUCTION.md` (PD), `ledgers/BATCH_2_4_SYNTHESIS.md` (conflit Eruption, CONFLICT-K96-01, Ghoul « pas prouvé faux »).
- **Fichiers modifiés** (Edit) : les trois fiches cibles uniquement ; ligne de statut ajoutée en tête de chacune. Pas de commit.
- Abréviations : SS = STRONG_SECONDARY ; s-survivant = seconde de travail d'un survivant ; c = charge de gen (90 par gen).

## Bilan

| Gravité | Trouvés | Corrigés | Non corrigeables sans source |
|---|---:|---:|---:|
| Haute | 5 | 5 | 0 |
| Moyenne | 27 | 24 | 3 |
| Basse | 36 | 35 | 1 |
| **Total** | **68** | **64** | **4** |

## 0. Recalculs

| Calcul | Base (audit sauf mention) | Recalcul | Verdict |
|---|---|---|---|
| Écart repris par un tueur à 4,4 / 4,6 m/s | survivant 4,0 m/s | 0,4 / 0,6 m/s ; 10 m en 25 s / 16,7 s | OK (Trickster, First, Slasher, Judgment, Animatronic) |
| Krasue Head 4,8 m/s sans Bloodlust | Bloodlust +0,2 / 0,4 / 0,6 m/s à 15 / 25 / 35 s | 4,8 = 4,6 + palier I ; tête plus rapide qu'un 4,6 jusqu'à 15 s, égale 15-25 s, plus lente après 25 s ; 10 m en 12,5 s | **Corrigé** : « chases longues plus viables » ne vaut qu'après ~25 s (C12) |
| Trickster en lançant | 3,86 m/s [SEED] | 4,0 − 3,86 = 0,14 m/s (≈ 1 m / 7 s) | Ajouté : une volée ne crée pas d'écart (A4) |
| Décroissance de Laceration | 16 s [AUDIT] puis 1 charge / 4,4 s [SEED] | 3 charges ≈ 29 s ; 5 charges ≈ 38 s | **Corrigé** : 16 s = délai, pas durée (A1) |
| « Jouer la montre » au rang S | 66 s [SEED] × 3 réparateurs | 198 s-survivant ≈ 2,2 gens solo | Ajouté comme coût (A2) |
| Skull Merchant sous drone | Hindered 10 % [AUDIT], Haste 5 % [SEED] | 3,6 contre 4,83 m/s → 1,23 m/s (×2) ; 3 m d'avance ≈ 2,4 s | Ajouté (B9) |
| Dash du Good Guy | 8 m/s × 1,8 s [SEED] | 14,4 m contre 7,2 m → ≈ 7 m repris par dash | **Contredit** « la distance brute a plus de valeur » (B3) |
| Nightfall et crochet | 60 s [SEED], phase de crochet 70 s | 60 < 70 : attendre la fin n'est possible qu'en début de phase | Ajouté (A14) |
| 5 % de gen (Houndmaster) | 90 c, coop 85 % | 4,5 s solo ; 4,5 / 1,7 = 2,65 s à deux | Ajouté (C3) |
| Retrait d'essaim (Artist) | 8 s [SEED] | 8 / 90 ≈ 9 % de gen solo | Ajouté (A12) |
| Slasher, TR coupé | 2 s [SEED], 4,0 m/s, espacement des palettes ≥ 14-20 m (SS), accroupi 2,5 s [SEED] à 1,13 m/s | 8 m courus en 2 s < espacement ; 2,5 s > 2 s | **Consigne irréalisable corrigée** (C18) |
| Heresy, coût en réparation | skill check 8 %/s (SS) ; Good −3 % = 2,7 c ; Great +1 % | pire cas 0,08 × 2,7 ≈ 0,22 c/s (≈ −22 %) ; moitié Great ≈ 0,11 c/s | Ajouté |
| Heresy, rentabilité du Repent | « décroissance 30 s » (sens à confirmer) + trajet T | 30 + T = 0,22 R → R ≈ 139 s + 4,6 T (moitié Great : ≈ 278 s + 9,3 T) | **Contredit** « Repent avant de retourner sur un gen » (C23) |
| Porte et Heresy | blocage 8 s, hérétique seul, acquise < 32 m | 8 s < 30 s + trajet | **Contredit** « purgez avant d'ouvrir » (C24) |
| Exiled Souls | +0,5 s × 10 max | +5 s | Ajouté |
| Eruption (Nemesis) | 10 → 5 % (registre 9.2.0) contre annulation LIVE (wiki 9.2.X) | — | Non tranché dans g4 : **conforme** à la synthèse (pas modifié) |

## 1. Problèmes et corrections

### 1.1 `batch4_killers_g4.md` (Trickster, Nemesis, Cenobite, Artist, Onryō, Dredge, Mastermind, Knight)

| ID | Passage (fichier + section) | Problème | Type | Gravité | Correction |
|---|---|---|---|---|---|
| A1 | g4 §23 Trickster, Counterplay « Macro » | « Laisser redescendre la Laceration (16 s sans touche) » : 16 s est le **délai avant** la décroissance ; ensuite −1 charge / 4,4 s [SEED]. Un joueur reprendrait un risque avec une Laceration encore haute. | calcul | moyenne | Délai + décroissance chiffrés (≈ 29 s depuis 3 charges, ≈ 38 s depuis 5, UNCERTAIN). |
| A2 | g4 §23, Counterplay « Équipe » | « Jouer la montre » pendant le rang S, lu à la lettre, arrête les gens : ≈ 2,2 gens solo perdus. Pas de variante SoloQ. | §26 / calcul | moyenne | Redéfini (« ne pas offrir de groupe ni de ligne ouverte », pas arrêter les gens) ; coût chiffré ; conduite SoloQ. |
| A3 | g4 §23, Tiles « Fenêtres vs palettes » | « Préférer les palettes posées tôt » : pré-drop sans coût ni limite ; une palette basse ne bloque probablement pas les lames. | §26 | basse | Raison réelle (éviter le vault dans sa LOS), alternative (casser la LOS), coût et mix-up. |
| A4 | g4 §23, Counterplay « Mécanique » | La vitesse en lançant (3,86 m/s) est citée sans conséquence pratique. | §25 (concept sans application) | basse | Calcul : 0,14 m/s, une volée ne crée pas d'écart. |
| A5 | g4 §23, Adaptations | « Un Trickster qui garde son rang S pour l'endgame » contredit la durée max de 66 s donnée plus haut. | contradiction | basse | Reformulé ; possibilité de retarder le rang S → HYPOTHESIS. |
| A6 | g4 §23, Perks | Hex: Crowd Control cité sans la valeur de l'audit (4/5/6 dernières fenêtres) ni le contre (purification). | §25 | basse | Valeur [AUDIT] et contre ajoutés. |
| A7 | g4 §24 Nemesis, Counterplay « Mécanique » | « Ne pas être à 4-6 m en ligne droite **derrière** lui » : c'est devant lui que le tentacule touche. Appliqué à la lettre, le conseil est inverse. | §26 (erreur littérale) | moyenne | « Dans son axe, à 4-6 m devant lui » ; strafe au son, pas à l'animation (feinte). |
| A8 | g4 §24, Tiles « Favorables » | « Garder > 6,5 m » : valeur [SEED] présentée comme marge exacte (même défaut que KCH H14). | étiquette | basse | [SEED] UNCERTAIN, ordre de grandeur. |
| A9 | g4 §24, Tiles « Fenêtres vs palettes » | Pré-drop dès MR2 sans dire pourquoi (le pouvoir punit l'attente, casser ne lui coûte rien) ni le contre d'un tueur qui attend le pré-drop. | §26 / cohérence KCH H1 | moyenne | Raison (b) de KCH §2.2 ; alternance pendant le cooldown et contre un joueur qui attend. |
| A10 | g4 §25 Cenobite, Counterplay « Macro/équipe » | « Un seul survivant gère la boîte » : impossible à désigner sans vocal. | §25 (SoloQ/SWF) | moyenne | Conduite SWF / SoloQ par signaux ; coût du porteur. |
| A11 | g4 §26 Artist, Tiles | « FACT relatif » sur une mécanique issue du seed et du modèle, contredite par le seed lui-même (CONFLICT-L4G4-02). | étiquette | moyenne | « Mécanique de principe, pas un FACT ». |
| A12 | g4 §26, Counterplay | « Ne **pas** réparer avec l'essaim » : absolu, sans coût du retrait. | §26 | basse | Condition (corbeau disponible) ; arbitrage chiffré (8 s ≈ 9 % de gen). |
| A13 | g4 §27 Onryō, Counterplay « Mécanique » | « Regarder derrière soi régulièrement » : exactement le « mauvais » exemple de §49 (ni quand, ni où, ni coût). | §25 / §49 | basse | Quand (TV à ~16 m, Condemned qui monte), où (accès, TV), coût (skill check raté −10 % + 3 s). Pas de fréquence chiffrée faute de source. |
| A14 | g4 §28 Dredge, Counterplay « Équipe » | « Pas de sauvetage risqué au milieu de Nightfall » : Nightfall 60 s [SEED] et phase de crochet 70 s → le report coûte souvent un état de crochet. | calcul / §26 | moyenne | Limite chiffrée ; sauver quand même par la route couverte. |
| A15 | g4 §28, Counterplay « Macro » | « Ne pas se cacher en casier » : absolu. | §26 | basse | « Éviter », avec la raison ; nuance sur les casiers verrouillés (verrou 2,25 s [SEED]). |
| A16 | g4 §28, Perks + Écart + G4-20 | Nerf de Dissolution « PTB 10.2.0 » annoncé par le seed seulement, jugé « OK ». Même défaut que KCH H15. | LIVE/PTB | basse | « Annoncé par le seed seulement, non vérifié » ; écart : existence NON VÉRIFIABLE. |
| A17 | g4 §29 Mastermind, Tiles « Palettes » | Pré-drop sans raison ni limite. L'audit classe Virulent Bound parmi les destructions instantanées : la raison n'est pas que casser lui coûte. | §26 / cohérence H1 | moyenne | Raison (b) ; drop normal sans token ; mix-up contre un Mastermind qui attend. |
| A18 | g4 §30 Knight, Counterplay « Équipe » | « Un unhook met fin à la chasse » étiqueté SITUATIONAL, alors que c'est une mécanique [SEED] non vérifiée (KCH H16). | étiquette | basse | [SEED] UNCERTAIN, ne pas planifier dessus. |
| A19 | g4 Claims G4-16 | Casse par les gardes du Knight donnée sans réserve, alors que 10.1.1 a changé « gardes et palettes » (contenu non lu). | §25 (fraîcheur) | basse | Réserve 10.1.1 ajoutée. |

### 1.2 `batch4_killers_g5.md` (Skull Merchant, Singularity, Xenomorph, Good Guy, Unknown, Lich, Dark Lord)

| ID | Passage (fichier + section) | Problème | Type | Gravité | Correction |
|---|---|---|---|---|---|
| B1 | g5 §34 Good Guy, Données LIVE | « Scamper casse la palette : **2v8 uniquement selon l'audit** ». Faux : l'audit prouve seulement que les **buffs 9.4.2** sont propres au 2v8 ; sa liste Pallets (SS) cite le Good Guy parmi les pouvoirs qui cassent. Un joueur en déduirait qu'il peut tenir une palette contre lui (erreur inverse de KCH H3). | contradiction (audit) / 2v8-1v4 | haute | UNRESOLVED en 1v4 ; mise en garde contre les deux erreurs. |
| B2 | g5 §34 Écart, tableau des écarts, CONFLICT-L4G5-03 | « FAUX en contexte 1v4 » et conflit marqué résolu : même surinterprétation. | contradiction (audit) | haute | FAUX limité à la datation et au mode des buffs ; source C (liste Pallets) ajoutée ; résolution partielle ; claim L4G5-05b. |
| B3 | g5 §34, Counterplay « Positionnel » | « À 110 %, la distance brute a plus de valeur » : chaque dash reprend ≈ 7 m [SEED]. Contredit « Défavorables : lignes droites » de la même fiche. | calcul / contradiction interne | moyenne | Calcul du dash ; condition (distance > portée du dash et obstacle pour le dévier). |
| B4 | g5 §34, Tiles « Fenêtres vs palettes » | Rien n'empêchait de lire « il traverse sans casser » comme une sécurité. | §26 | basse | Le conseil tient que la casse existe ou non ; ne jamais tenir la palette. |
| B5 | g5 §36 Lich, Données LIVE | La destruction **instantanée** Mage Hand + Vorpal Sword (liste Pallets, SS) manque ; seul le blocage de 4 s [SEED] est décrit. | §25 (fait d'audit omis) | haute | Ajouté en données, en claim L4G5-09b et en écart (omission du seed). |
| B6 | g5 §36, Counterplay « Mécanique » | « Jeter la palette plus tôt » sans « puis partir » : contre une palette cassée instantanément, ou relevée par Mage Hand ([CM]), le pré-drop suivi d'une tenue de palette est perdant (KCH H1). | §26 / cohérence H1 | moyenne | « Puis partir immédiatement » ; raison (b) ; drop normal si Mage Hand est en recharge ; mix-up. |
| B7 | g5 §36, Version | Date de 9.0.0 donnée comme 26/06/2025, qui est celle de 9.0.1 ; le registre donne 17/06/2025. | registre | basse | Corrigé (17/06/2025). |
| B8 | g5 §36, Version | « Kill rate élevé "all MMR" » : l'audit dit « broad », sans chiffre. | citation | basse | « Broad », KB 540, noms seulement. |
| B9 | g5 §31 Skull Merchant, Adaptations | Pré-drop sous drone sans chiffre ni alternative ; or elle n'a pas d'anti-palette (casse normale 2,34 s). | calcul / §26 | moyenne | Calcul 1,23 m/s ; alternative : sortir du rayon du drone. |
| B10 | g5 §32 Singularity, Counterplay « Mécanique » | « FACT de base du pouvoir » sur la mémoire du modèle, pour un tueur où l'audit relève des erreurs du seed. | étiquette | moyenne | « Principe [CM] UNCERTAIN, pas un FACT ». |
| B11 | g5 §32, Tiles et Habitudes | « Jeter la palette en étant marqué » = erreur absolue ; sans pod en vue, la palette se joue normalement. | §26 | moyenne | Condition : marqué **et** pod en vue. |
| B12 | g5 §32, Counterplay « Macro » | « Un porteur d'EMP par zone » suppose le vocal. | §25 (SoloQ/SWF) | basse | Conduite SoloQ. |
| B13 | g5 §35 Unknown, Counterplay « Positionnel » | « Le regarder de loin » : au-delà de 25 m [SEED], le regard ne compte pas. | §26 / cohérence interne | basse | « Loin mais à moins de 25 m ». |
| B14 | g5 §35, Perks | Unbound et Undone sans alerte : valeurs du seed SUSPECTES PTB-comme-LIVE (CONFLICT-K96-01) ; Undone retravaillée au PTB 10.2.0 [AUDIT]. | LIVE/PTB | moyenne | ⚠ ajouté ; principe seul. |
| B15 | g5 §36, Perks | Dark Arrogance : même problème. | LIVE/PTB | basse | ⚠ ajouté. |
| B16 | g5 §37 Dark Lord, Tiles | La forme loup casse les palettes (SS) mais la fiche ne dit pas que le pré-drop est contre-productif (catégorie Demogorgon de KCH §2.2). | §26 / cohérence KCH | basse | Précision loup / vampire ajoutée. |
| B17 | g5 §33 Xenomorph, Counterplay « Macro » | « Hors Crawler = M1 simple jusqu'à la recharge » : mécanique [CM] sans étiquette, durée inconnue → greed de tile. | étiquette / §26 | basse | [CM] UNCERTAIN ; ne pas dépasser une ou deux boucles. |
| B18 | g5 §34, §36, §37 « Équipe » | Annoncer la sortie de Hidey-Ho, partager les objets magiques, annoncer la forme : SWF seulement. | §25 (SoloQ/SWF) | basse | Mention SWF et signal SoloQ. |

### 1.3 `batch4_killers_g6.md` (Houndmaster, Ghoul, Animatronic, Krasue, The First, The Slasher, The Judgment)

| ID | Passage (fichier + section) | Problème | Type | Gravité | Correction |
|---|---|---|---|---|---|
| C1 | g6 méthode (l. 11-12) et §38, §39 (×2), §42, §43, §44 (×2) | « EXPERT OPINION » pour un « consensus tel que le modèle le connaît » ou pour une idée du seed : pas le sens de §41 (même défaut que KCH H19). | étiquette | moyenne | 7 passages requalifiés en HEURISTIC, ou en [SEED] UNCERTAIN + HEURISTIC ; légende réécrite. |
| C2 | g6 « Rappels système » | L'exception « générateurs alimentés » est appliquée à toutes les protections de décrochage ; dans le texte de l'audit, elle suit l'Elusive seul. | étiquette | basse | Ambiguïté signalée ; ne pas compter sur l'Elusive en endgame. |
| C3 | g6 §38 Houndmaster, Counterplay « Macro » | « Quittez le gen plutôt que de finir 5 % » : absolu, alors que 5 % = 4,5 s solo. | §26 / calcul | moyenne | Règle par défaut + exception chiffrée. |
| C4 | g6 §38, Tiles et Adaptations | « Coupée en moins de 5-6 m » et « jamais plus de ~8 m » : chiffres sans source, incohérents entre eux. | §26 / étiquette | basse | Ordres de grandeur ; portée du chien inconnue. |
| C5 | g6 §38, Perks | « Relâchez les gens après un crochet (DMS) » : contraire à PD (premier lâcher sur un gen peu avancé, ou reprise sans stop-and-go) et coûteux si la perk est absente. | contradiction (PD) / §26 | moyenne | Aligné sur PD, conditionné à une suspicion. |
| C6 | g6 §39 Ghoul, Données | « FACT » sur une valeur SS « liste à reconfirmer » (KCH §1-4 : probable, pas certaine). | étiquette | basse | « Probable, pas FACT ferme ». |
| C7 | g6 §39, Counterplay « Positionnel » | « Tile fermée à ≤ 10 m » : chiffre trop précis (KCH H18). | §26 | basse | Ordre de grandeur dérivé des 14 m [SEED]. |
| C8 | g6 §39, Tiles | « Plafond bas défavorable au Ghoul » contre « un étage lui profite » dans la même fiche. | contradiction interne | basse | Tension explicitée (visée contre bonds verticaux). |
| C9 | g6 tableau des écarts, Ghoul « > 60 % » | « FAUX » dans le tableau, « IMPRÉCIS / non étayé » dans la fiche ; la synthèse dit « pas prouvé faux ». | contradiction | basse | « NON ÉTAYÉ, pas prouvé faux ». |
| C10 | g6 §40 Animatronic, Counterplay « Mécanique » | « Sans hache, plus rapide… le moment de gagner de la distance » : à 4,6 m/s il reprend 0,6 m/s, contre 0,4 m/s avec la hache → on **perd** de la distance plus vite. | calcul | moyenne | Calcul et consigne corrigés (jouer la boucle, pas l'open). |
| C11 | g6 §41 Krasue, Counterplay « Macro » | « Ne gaspillez pas de champignon avant un crochet » repose sur le reset du Leech au crochet (hotfix 9.2.2 du seed), **absent** du résumé 9.2.2 du registre (Off the Record seulement). | registre / §26 | moyenne | Consigne conditionnée à ce reset ; risque inverse décrit ; ne pas planifier dessus. |
| C12 | g6 §41, Adaptations | « Absence de Bloodlust → chases longues plus viables » sans calcul : 4,8 m/s = 4,6 + palier I ; la tête est plus dangereuse au début. | calcul | moyenne | Calcul complet (0-15 / 15-25 / > 25 s) ; perte de Bloodlust à l'usage du pouvoir [AUDIT]. |
| C13 | g6 §41, Perks | Ravenous : valeurs du seed SUSPECTES PTB-comme-LIVE (CONFLICT-K96-01). | LIVE/PTB | basse | ⚠ ajouté. |
| C14 | g6 §42 The First, Counterplay « Équipe » | « Un seul survivant sur les horloges » sans conduite SoloQ. | §25 (SoloQ/SWF) | basse | Conduite SWF / SoloQ. |
| C15 | g6 §42, Adaptations | « Fenêtre de sécurité mesurable » de 35 s [SEED] : il reste les lianes et le M1. | §26 | basse | « Sans embuscade Upside Down, pas sans danger ». |
| C16 | g6 §42, Tiles | « Sa vitesse de 4,4 m/s le pénalise » sans ordre de grandeur. | §25 (concept sans application) | basse | 0,4 contre 0,6 m/s, et Bloodlust. |
| C17 | g6 §43 Slasher, Version | Ajustements d'add-ons attribués à « 10.0.2 / 10.0.3 » sans dire que le registre groupe les deux patchs (10.0.3 = Chaos Shuffle, Lights Out). | registre | basse | Précision ajoutée. |
| C18 | g6 §43, Counterplay « Mécanique » | « TR coupé → ~2 s : bougez hors des 16 m des palettes et fenêtres, ou accroupissez-vous (2,5 s) ». Irréalisable : 8 m en 2 s alors que les palettes sont espacées d'au moins 14-20 m [AUDIT SS], et 2,5 s > 2 s. Le joueur fuit une tile pour rien. | calcul / §26 | haute | Calcul ; consigne réécrite (anticiper ; en pleine tile, prendre la ressource la moins attendue). |
| C19 | g6 §43, Tiles « Favorables » | « Zones sans palette ni fenêtre » : ce sont des zones mortes dès qu'il chase normalement. | §26 | moyenne | Limité à la phase Omnipresent Evil. |
| C20 | g6 §43, Adaptations (DR) | Paragraphe confus : les DR présentés comme un contre à la Haste du tueur ; séparation par rôle non établie pour la vitesse de déplacement. | étiquette / §25 | basse | Reformulé : HYPOTHESIS explicites, « conséquence pratique : aucune ». |
| C21 | g6 §44 Judgment, Counterplay « Mécanique » | « (hors Zealous, la trajectoire se fige) » présenté comme un fait. Le registre dit seulement « fenêtre hors Zealous supprimée » ; le sens de la fenêtre est une HYPOTHESIS (question ouverte n° 4). | registre / étiquette | moyenne | FACT (audit) et HYPOTHESIS séparés ; mix-up contre un Judgment qui retarde la projection. |
| C22 | g6 §44, Tiles « Distance » | « Traversez la colonne » : consigne absolue, étiquetée EXPERT OPINION alors qu'elle vient du seed ; punie par un contrôle court. | §26 / étiquette | moyenne | [SEED] UNCERTAIN, avec le risque et la condition. |
| C23 | g6 §44, Counterplay « Macro » | « L'hérétique **doit** aller Repent avant de retourner sur un gen » : au pire l'Heresy coûte ≈ 0,22 c/s, et le Repent au moins 30 s plus le trajet. Il n'est rentable qu'au-delà de ≈ 140 s de réparation restante (≈ 280 s avec moitié de Great). | calcul / §26 | haute | Arbre de décision chiffré (Repent / Great / tâches sans gen). |
| C24 | g6 §44, Counterplay « Macro » (fin de partie) | « Purgez la Heresy avant d'ouvrir une porte proche » : le blocage (8 s) ne touche que l'hérétique, seulement si l'Heresy a été acquise à moins de 32 m, et purger coûte au moins 30 s. | calcul / §26 | moyenne | Nouveau point « Fin de partie » : laisser un non-hérétique ouvrir ; purger seulement dans le cas restant. |
| C25 | g6 §44, Habitudes et Adaptations | BT et OTR rangés dans les « perks de crochet » par interprétation ; « préférez des perks indépendantes du crochet » oublie qu'un Judgment accroche aussi normalement. | étiquette / §26 | basse | Interprétation signalée ; nuance ajoutée. |
| C26 | g6 §44, Adaptations | « Jouez comme si les protections ne s'appliquaient pas après un Exile », sans relever que les Exiled Souls (+0,5 s de protections, VERIFIED_PRIMARY) suggèrent le contraire. | §25 (contradiction interne) | basse | Indice contraire noté (HYPOTHESIS) ; consigne prudente conservée. |
| C27 | g6 §44, Counterplay « Équipe / Exile » | Réapparition ≥ 32 m (10.1.2) : son maintien en 10.1.2a n'est pas discuté. | registre | basse | « Non revertée selon l'audit → présumée LIVE » ; calcul 10 × 0,5 s. |

### 1.4 Transversal (les trois fichiers)

| ID | Passage | Problème | Type | Gravité | Correction |
|---|---|---|---|---|---|
| G1 | 22 fiches | Aucune rubrique DRILL (§27). | §25 / §27 | moyenne | **Non corrigeable sans source** : il faudrait des drills mesurés (lot 11) ; limite signalée dans les lignes de statut. |
| G2 | 22 fiches | Interactions perks survivant ↔ pouvoir absentes ou éparses : Endurance / Dead Hard contre les prises (Houndmaster, Ghoul), Lithe / Sprint Burst contre les ranged, Distortion contre Skull Merchant / Dredge / Knight, anti-slug. | §25 | moyenne | **Non corrigeable sans source** (valeurs de perks et de pouvoirs non vérifiées) ; renvoi à pass14_deliverables H20. |
| G3 | g4, g5, g6 (sauf valeurs [AUDIT]) | Toutes les valeurs de pouvoir de 17 tueurs sur 22 ne viennent que du seed (source unique, non fiable). | §25 (source unique) | moyenne | **Non corrigeable sans source** dans ce cadre (sources primaires archivées depuis dans `kb/sources/`, voir Lacunes 1-3). |
| G4 | `KILLER_COUNTERPLAY_HANDBOOK.md` fiches 39, 40, 42, 43, 44 | Après ces corrections, KCH contredit les fiches : EXPERT OPINION (Ghoul, First, Judgment), « Repent au Shrine d'abord, purger avant d'ouvrir une porte » (Judgment), « sortir des 16 m » (Slasher), « sans hache, gagner de la distance en boucle » (Animatronic). | contradiction | basse | **Non corrigé** : fichier hors périmètre ; à répercuter dans KCH à la prochaine passe. |

## 2. Lacunes restantes (tâches de recherche précises)

1. **Sources primaires désormais archivées, à exploiter** (non lues ici, pour respecter la consigne) :
   - `kb/sources/patches/official_536.txt` (9.4.2) et `kb/sources/wiki_killers/Charles_Lee_Ray.txt` : le Scamper casse-t-il les palettes en 1v4 ? (CONFLICT-L4G5-03, B1-B2).
   - `official_525.txt` (9.2.2) : Leech de la Krasue remis à zéro au crochet ? (C11).
   - `official_557.txt` (10.1.1) : contenu « Knight (gardes et palettes) » ; un décrochage met-il fin à la chasse d'un garde ? (A18-A19).
   - `official_523.txt` (9.2.0) : Eruption 10 ou 5 % en LIVE (conflit Eruption, Nemesis).
   - `official_544.txt` (9.6.0) : contenu des buffs Dredge, Mastermind, Unknown, Animatronic.
   - `official_552.txt` (10.0.2) : add-ons du Slasher.
   - `official_559.txt` (PTB 10.2.0) : Dissolution y est-elle modifiée ? (A16).
2. **wiki.gg Pallets**, liste des destructions instantanées en 10.1.2a : Mastermind (Virulent Bound), Lich (Mage Hand + Vorpal Sword), gardes du Knight après 10.1.1, loup du Dark Lord, Ghoul (3e bond + add-on), Good Guy.
3. **wiki.gg The Lich** : Mage Hand peut-il relever une palette tombée ? Qu'est-ce que Vorpal Sword (sort, objet) et comment se combine-t-il avec Mage Hand ? Cooldowns des sorts.
4. **wiki.gg The Judgment** : Heresy (3 accroupissements à 10 m de qui ? sens de « décroissance 30 s » ? autres effets ?) ; protections de décrochage après un Exile ; sens exact de la « fenêtre de courbe ». Le calcul de C23-C24 en dépend.
5. **wiki.gg Skill Checks** : reconfirmer 8 %/s en réparation standard et la taille des zones Great/Good (base du calcul Heresy).
6. **wiki.gg The Slasher** : délai avant Jump Scare (2 s ?), portée de réapparition (16 m ?), accroupi indétectable (2,5 s ?), effet de Rampage.
7. **wiki.gg The Trickster** : décroissance par charge (4,4 s ?), durée du rang S (66 s ?), le rang S peut-il être retardé (A5) ?
8. **wiki.gg The Good Guy** : durée et vitesse du dash (8 m/s, 1,8 s ?), rotation (B3).
9. **wiki.gg The Dredge** : durée de Nightfall ; casier (verrouillé ou non) et jauge (A14-A15).
10. **wiki.gg The Houndmaster** : portée et vitesse du chien en Chase Command ; fenêtres ; libération sur palette (C4).
11. **wiki.gg The Nemesis** : portée du tentacule par rang de Mutation ; le tentacule casse-t-il les palettes en MR1 ?
12. **Terror radius** (CONFLICT-L4G4-03, L4G5-01, L4G5-02, B4G6-03) : Onryō, Mastermind, Skull Merchant, Xenomorph en Crawler, Ghoul — `kb/sources/wiki_modules/Killers.lua` peut suffire.
13. **CONFLICT-K96-01** : valeurs LIVE d'Unbound, Undone, Dark Arrogance et Ravenous (B14, B15, C13).
14. **Artist** : les corbeaux traversent-ils les murs ? (CONFLICT-L4G4-02, A11).
15. **Guides experts lisibles** (Otzdarva, Hens, règles compétitives) sur : perks anti-Exile, traversée de colonne du Judgment, build de The First. But : remplacer les HEURISTIC requalifiées (C1) par une EXPERT OPINION sourcée.

## 3. Verdict de profondeur §27 (après corrections)

| Fichier | Section (par fiche) | Niveau atteint | Manque principal |
|---|---|---|---|
| g4-g6 | Version / Données LIVE | QUOI (registre de valeurs étiquetées) | sans objet ; valeurs [SEED] à vérifier |
| g4-g6 | Identification | +QUAND (avant le reveal / pouvoir / add-ons) | POURQUOI de la discrimination entre tueurs proches (berceuses, absence de TR) |
| g4-g6 | Ce qu'il cherche / Tiles / Mindgames | +POURQUOI | QUAND chiffré (portées [SEED]) ; données du lot 7 |
| g4-g6 | Counterplay (4 couches) | +COUNTER, avec coûts et limites sur les points corrigés (pré-drop, Heresy, Slasher, Houndmaster, Nightfall) | DRILL ; interactions de perks (G1-G2) |
| g4-g6 | Habitudes punissables / Adaptations avancées | +FAILURE | DRILL ; mesure de la fréquence des erreurs |
| g4-g6 | Add-ons qui changent la décision | +QUAND (add-on → réponse) | valeurs post-patch (nerfs et buffs 9.0.2, 9.5.2, 9.6.0, 10.0.2) |
| g4-g6 | Implications de carte / Perks | QUOI (+QUAND partiel) | POURQUOI par carte ; perks vérifiées |
| g6 | Judgment, Macro Heresy | +FAILURE (décision chiffrée Repent / Great / porte) | sens de « décroissance 30 s » (Lacune 4) |
| g4-g6 | Claims / Conflits / Écarts | QUOI (registre) | sans objet |

## 4. Les trois problèmes les plus importants

1. **Consignes chiffrées qui se contredisent elles-mêmes** (C23, C24, C18) : « Repent avant de retourner sur un gen » et « purger avant d'ouvrir une porte » coûtent plus qu'ils ne rapportent d'après les valeurs de l'audit (≈ 0,22 c/s au pire contre ≥ 30 s de Repent ; 8 s de blocage contre ≥ 30 s de purge). « Sortir des 16 m des palettes en 2 s » contre le Slasher est physiquement impossible (8 m courus ; palettes espacées d'au moins 14-20 m).
2. **Good Guy : 2v8 et 1v4 confondus dans l'autre sens** (B1-B2) : la fiche attribuait à l'audit « casse 2v8 uniquement », alors que l'audit prouve seulement que les buffs 9.4.2 étaient 2v8 et que sa liste Pallets cite le Good Guy. Un joueur aurait tenu des palettes « safe » contre lui.
3. **Casse instantanée et pré-drop** (B5-B6, A9, A17) : la destruction instantanée Mage Hand + Vorpal Sword du Lich manquait, et le pré-drop contre le Lich, le Mastermind et le Nemesis était enseigné sans « départ immédiat » ni limites. C'est le défaut H1 du handbook, réintroduit dans les fiches sources.
