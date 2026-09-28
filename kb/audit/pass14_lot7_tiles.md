# Audit pass 14 — lot 7 : loops, tiles, matrice tile × tueur, connectivité (`kb/research/batch7_tiles.md`)

- Date : 27/09/2026. Référence : LIVE 10.1.2a. PTB 10.2.0 et 2v8 exclus. **WebSearch/WebFetch indisponibles.** Relectures faites par `kb/tools/wiki_text.py` (≤ 1 requête/s) : Pallets, Windows, Maze Tiles, The Lich, School Bus, Crane (contrôle par sondage) ; pages tueurs archivées `kb/sources/wiki_killers/` (Krasue, Good Guy, Animatronic) ; `kb/sources/wiki_perks_digest.md` ; notes officielles archivées 9.3.2 (530), 9.5.0 (538), 9.6.0 (544), 10.0.1 (551), 10.1.1 (557), 10.1.2 (558), PTB 10.2.0 (559).
- Méthode : AUDIT 1 (§25, auditeur hostile), AUDIT 2 (§26, « que ferait un joueur qui applique ce texte à la lettre ? »), recalcul des chiffres à partir de `kb/seed/audit_phase0.txt`, avec `kb/ledgers/AUDIT_PHASE0_ERRATA.md` qui prime sur l'audit.
- Cohérence vérifiée avec : `batch6_chase_tech.md` (audité : condition de loop sûre en **temps**, T11 / P03 ; pré-drop **non universel**, situation 1 / P14), `deliverables/KILLER_COUNTERPLAY_HANDBOOK.md` §2.2 et §3, errata phase 0 (liste corrigée des casseurs de palettes).
- Fichier modifié : **`kb/research/batch7_tiles.md` uniquement** (aucun autre fichier touché, pas de commit).

## 0. Recalculs vérifiés

| Bloc | Vérification | Résultat |
|---|---|---|
| §1.1 Bloodlust | Rapprochement 0,6 → 1,2 m/s (4,6) = ×2 ; 0,4 → 1,0 m/s (4,4) = ×2,5 | OK |
| §2.1 formule en distance | `trajet_S × (v_K + b) / 4` = `trajet_S × v_K / 4` + `b × t_S` → +15 % / +10 % + 0,2 m par seconde et par palier | OK, **mais le temps passé dans la porte manquait** (T01) |
| §3.1 D_max (25 valeurs) | `4 × (écart − 2,5) / v_r` : 10/6/5/15/6 ; 23/14/12/35/14 ; 37/22/18/55/22 ; 50/30/25/75/30 ; 83/50/42/125/50 | OK (arrondis justes) |
| §3.1 transition palette → palette | 2,5 + 1,0 × 14 / 4 = 6,0 m ; 2,5 + 1,2 × 20 / 4 = 8,5 m | OK |
| §6.3 écart nécessaire (30 valeurs) | `v_r × D / 4` pour D = 10/15/20/30/40 m | OK (toutes justes) ; cohérent avec lot 6 §2.2 (20 m, BL II-III → 5-6 m + fente) |
| §6.3 départs | casse 4 × 2,34 = 9,36 m ; stun 8 m ; stun + casse 17,4 m ; fenêtre suivie 4 × 1,2 = 4,8 m ; coup manqué ≤ 6 m ; coup reçu +3 à +15,5 m (lot 6) | OK |
| §6.6 exemples | 0,6 × 18 / 4 = 2,7 m ; 0,8 × 25 / 4 = 5,0 m ; 1,0 × 35 / 4 = 8,75 m ; 0,6 × 20 / 4 = 3,0 m ; Blight 4,4 à BL II : 0,8 × 35 / 4 = 7,0 m | OK |
| Nouveau §2.1 (temps) | 10 / 4 + 0,5 = 3,0 s ; (14 − 2,5) / 4,6 = 2,5 s ; trajet tueur requis 3,0 × 4,6 + 2,5 = 16,3 m (4,4 : 15,7 m) ; v_K × t_porte : 4,6 × 0,5 = 2,3 ; × 0,9 = 4,1 ; × 1,1 = 5,1 m (4,4 : 2,2 / 4,0 / 4,8) | OK |
| 90 s par gen, coop 85/70/55 % | Non utilisés dans ce fichier | — |

## 1. Problèmes trouvés

| ID | Passage (fichier + section) | Problème | Type | Gravité | Correction appliquée |
|---|---|---|---|---|---|
| T01 | batch7 §2.1 « Une loop = deux trajets et des portes » | La condition `trajet_S × v_K / 4 < trajet_K − fente` compare l'**arrivée** à la porte, pas sa **sortie** : le temps où le survivant est immobile dans la porte (fast 0,5 s, medium 0,9 s, vault de palette 1,1 s, drop UNCERTAIN) est oublié alors que le fichier définit la loop par ces portes. Contre un 4,6, un fast vault « coûte » ≈ 2,3 m de trajet tueur, un vault de palette ≈ 5,1 m. Appliqué à la lettre : on classe « safe » des fenêtres où l'on prend le coup en plein vault. | calcul / §26 | haute | Réécrit **en temps** : `trajet_S/4 + t_porte_S < (trajet_K − fente)/v_K + t_porte_K`, conversions en mètres, exemple chiffré (3,0 s contre 2,5 s ; 16,3 m requis). Claim L7-C31. Signalé comme précision du lot 6 T11 (même omission, fichier non modifié). |
| T02 | batch7 §4.16 définition « god pallet » | Même omission : « détour > ton trajet × 1,15 + fente » sans les 1,1 s du vault de palette (≈ 5 m) → surclasse des palettes en « god ». Ne citait que « casser » comme option du tueur. | calcul | moyenne | Ajout des ≈ 5 m, de l'option « quitter », et de la condition « tueur sans pouvoir sur les palettes ». |
| T03 | batch7 §4.11 fiche filler, « Définition » | Même omission (durée du drop / du vault). | calcul | basse | Corrigé (terme `v_K × durée de l'action`). |
| T04 | batch7 §2.3 « Budget d'une tile » | « Au plus 3 vaults par poursuite » contredit §1.1 (rechute : 1 vault de plus après 30 s de blocage) ; remise à zéro du compteur à la poursuite suivante non dite. | calcul / contradiction interne | basse | Corrigé ; remise à zéro étiquetée HYPOTHESIS (déduite de « same Chase sequence »). |
| T05 | batch7 §3.1 et §6.3 (tables) | Hypothèses cachées : palier de Bloodlust constant pendant la course ; temps d'utilisation de la ressource à l'arrivée non compté. | calcul / étiquette | basse | Hypothèses écrites en tête des deux tables ; marge `v_K × t_porte_S` ajoutée en 6.3. |
| T06 | batch7 §6.6 exemple 3 (« À B », « Filler final ») et §5.2 « Lecture » | Blight traité comme casseur **gratuit** (« la palette vaut le stun, pas de greed ») : **contredit** l'audit VP 9.6.0 (casse = tokens ramenés à 2 sous le max, recharge à 0 %), le lot 6 situation 1 (exception Blight, P14) et le handbook fiche 21 (« pré-drop le plus souvent rentable »). Mauvais conseil contre un tueur précis. | contradiction | haute | Corrigé : exception Blight dans l'exemple 3, le filler, §5.2 (ligne Blight détaillée) ; « erreur typique » = counterplay d'avant 9.6.0. Claim L7-C37. |
| T07 | batch7 §4.1 Killer Shack, ligne « Pre-drop » | « Pouvoir anti-loop prêt → pre-drop » présenté comme universel : faux contre les casseurs gratuits (lot 6 situation 1 ; handbook §2.2 « le pré-drop n'est pas universel »). | §26 / contradiction | moyenne | Réécrit en trois cas (la casse lui coûte / son pouvoir punit l'attente → pre-drop puis départ / casse gratuite → stun ou changer de zone). |
| T08 | batch7 §4.11 filler, « Pre-drop » | « Le pre-drop garantit la casse ou un détour » : faux contre les vaulteurs de palette (Legion, Mastermind, Ghoul, Good Guy, Krasue), les casseurs, la Lich ; exploitable par un tueur qui attend le pre-drop. | §26 | moyenne | Réécrit : cas normal limité aux tueurs sans pouvoir sur les palettes, liste des exceptions, consigne de variation. |
| T09 | batch7 §5.1 ligne « Filler », colonne anti-loop | « Pre-drop inutile contre casse instantanée » : absolu ; ignore Blight et la casse à la tronçonneuse (1 s ≈ +4 m, pas 0). | §26 | moyenne | Nuancé (exception Blight, Hillbilly/Cannibal). |
| T10 | batch7 §5.2 ligne Lich | Contredit l'errata : la casse avec Vorpal Sword prend **4 s** (pas instantanée) ; surtout, l'interaction majeure « Mage Hand **relève** une palette baissée » manquait (seul le blocage d'une palette levée était cité). Contre la Lich, une palette baissée n'est pas une porte durable. | contradiction (errata) / §25 | haute | Réécrit depuis la page wiki The Lich relue (portée 16 m, relève 0,5 + 0,5 s, blocage 4 s, casse 4 s) ; renvoi ajouté dans la fiche shack. Claim L7-C32. |
| T11 | batch7 §5.2 ligne Good Guy | « Vaulte les palettes » imprécis : Scamper 1 s **sous** une palette baissée **ou par-dessus une fenêtre** pendant Slice & Dice ; casse seulement avec Hard Hat (1v4). L'effet sur les fenêtres (loops L-T) manquait. | §25 / étiquette | basse | Corrigé (page Good Guy) ; ajouté en §5.1 L-T et §2.1. Claim L7-C36. |
| T12 | batch7 §5.2 ligne Knight | Fraîcheur : la note 10.1.1 (art. 557) change l'interaction garde/palette (le garde contourne une palette baissée pendant un Hunt, abandon si détour > 48 m ; palette baissée sur un garde = il la traverse). Absent du fichier (et marqué « contenu non lu » au lot 6 P34). | §25 (freshness) | moyenne | Ajouté, FACT [PN 10.1.1]. Claim L7-C33. |
| T13 | batch7 §5.2 « Iridescent Remnant (tueur non vérifié) » | Add-on non attribué. | §25 | basse | Attribué : Animatronic, palettes levées bloquées à 32 m d'une Security Door, 12 s. Claim L7-C35. |
| T14 | batch7 §5.2 Krasue ; CONFLICT-L7-04 ; question ouverte 9 | Conditions de vault de la Krasue laissées UNCERTAIN alors que la page tueur archivée les donne. | §25 | basse | Head Form : vault palette 1,9 s, fenêtre 1,67 s, stun 2,5 s ; conflit et question marqués résolus. Claim L7-C34. |
| T15 | batch7 §5.3 « Lecture » (Wide Open Throttle) | « WOT transforme un pallet gym en tile réutilisable une fois » : **faux dans son effet pratique** — la palette revient levée **et bloquée 60 s**, donc le survivant ne peut plus la baisser et le tueur passe : WOT **retire** la porte de la loop. Appliqué à la lettre : on déclenche WOT sur sa palette de loop et on perd la tile. | §26 | haute | Réécrit : WOT = outil de transition (Haste 3 s), pas sur la palette qu'on compte encore boucler. |
| T16 | batch7 §5.3 (perks qui modifient les tiles) | Interactions manquantes : Five Moves Ahead (LIVE 9.5.0 : drop 50 % plus rapide → change le timing du pre-drop et du stun), Superior Anatomy (LIVE 9.0.0), Enduring, Spirit Fury, Lithe, Balanced Landing (drops d'étage), Last Stand, valeurs d'Any Means Necessary. | §25 | moyenne | Lignes ajoutées avec valeurs wiki (STRONG_SECONDARY, versions LIVE reconstruites depuis l'historique quand le wiki affiche le PTB) + lecture. Claim L7-C38. |
| T17 | batch7 §0 Conventions (FACT [W]) | « FACT [W] » appliqué à des valeurs absentes de l'audit phase 0 (rechute de blocage, tampon 5 s, Cruel Limits, Zanshin, exclusivités de tiles…) : le lecteur peut les prendre pour vérifiées. | étiquette | moyenne | Convention réécrite : STRONG_SECONDARY, source unique, FACT = nature et non niveau de vérification, triangulation au lot 12. |
| T18 | batch7 §1.1 Bloodlust ; §2.3 | « Perdue en utilisant le pouvoir » (tous les pouvoirs) alors que l'audit dit « liste des pouvoirs concernés » ; perte par stun non signalée UNCERTAIN ; confiance « FACT [W] » alors que l'audit donne VMS/SS. | étiquette | basse | Corrigé (« certains pouvoirs », stun UNCERTAIN, étiquettes audit). |
| T19 | batch7 §1.1 stun de palette | Modificateurs absents : Enduring (audit SS), Krasue Head Form 2,5 s. | §25 | basse | Ajoutés. |
| T20 | batch7 §2.2 « Sens optimal » | « Fast vault garanti » avec ≥ 2,5 m droits : l'angle toléré est INV dans l'audit. | §26 / étiquette | basse | « Attendu », angle UNCERTAIN. |
| T21 | batch7 §3.1 lecture | « On quitte une tile pendant une casse ou un stun, pas après » : absolu ; un départ toujours calé sur la casse devient lisible (le tueur peut refuser de casser). | §26 | basse | Conditionné à « quand l'écart manque » + risque de prévisibilité. |
| T22 | batch7 §4.1 shack, ligne « Greed » | « Compteur ≤ 2 et il suit → greed » formulé comme règle ; ignore santé, pouvoir, palettes restantes (arbre A-F du lot 6 T05) et le test en temps. | §26 | moyenne | Réécrit en point de départ HEURISTIC + réévaluation A-F + prévisibilité. |
| T23 | batch7 §4.1 shack, « Red stain » | « Ne pas vaulter à l'aveugle » sans alternative ; manipulation de la tache (moonwalk, lot 6 T08) non rappelée. | §26 | basse | Alternative (checkspot par W ou une ouverture) + avertissement moonwalk. |
| T24 | batch7 §4.1 shack, « Double-back » | « Pas de double-back vers une W vaultée 2 fois » : absolu alors que le 3e vault est permis. | §26 | basse | Possible si la sortie est prévue ; conséquence (blocage 30 s) rappelée. |
| T25 | batch7 §4.3 SW, « Abandonner » | « Dès que P est cassée » : absolu ; faux si le tueur suit encore. Opinion non étiquetée. | §26 / étiquette | basse | Conditionné (« et qu'il coupe par le centre »), EXPERT OPINION non sourcée. |
| T26 | batch7 §4.15 Basement | « Jamais une destination de chase » : absolu. | §26 | basse | « Presque jamais » + usage de l'escalier comme obstacle de LOS extérieur (HEURISTIC). |
| T27 | batch7 §6.6 exemple 2 (« Vers le main ») | « En open, la distance ne vaut presque rien contre un tir » : généralisation ; la distance compte encore (temps de vol, portée, recharge). | §26 | moyenne | Nuancé (« beaucoup moins »), cas où la route courte redevient discutable (SITUATIONAL). |
| T28 | batch7 §6.5 modèle de probabilité | « La fenêtre garantit au moins une porte » : faux si le survivant l'a déjà vaultée 3 fois ou si Bamboozle / Crowd Control / Cruel Limits la bloquent. | §26 | basse | Exceptions ajoutées. |
| T29 | batch7 §6.7 drill « Annonce H3 » | Seuil « ≥ 50 % des départs sur une animation » : arbitraire et incite à attendre l'animation au lieu de partir avec assez d'écart. | §26 | basse | Seuil retiré (mesure seulement), seuils marqués non calibrés ; variante de mesure de `T_loop` en partie personnalisée ajoutée. |
| T30 | batch7 §6 (connectivité) | Différences SoloQ / SWF presque absentes (une ligne en 6.1 et 6.5) alors que la carte mentale en dépend entièrement. | §25 | moyenne | §6.8 ajouté (tableau HEURISTIC, limite « non mesuré »). |
| T31 | batch7 §3 table, « Safe » | « Tu atteins la palette avant la fente » : il faut l'avoir **baissée** ; durée de drop INV. | calcul / étiquette | basse | Corrigé + renvoi au test en temps. |
| T32 | batch7 §4.4 / §5.1 (Houndmaster) vs handbook §2.2 | Le correctif 9.3.2 dit que le chien peut être « sent to vault a window **or pallet** » ; le handbook affirme que le chien est arrêté par une palette posée ([SEED] + [CM]). Contradiction non tranchable sans la page du tueur. | contradiction | moyenne | **Non corrigeable sans source** : CONFLICT-L7-06 ouvert (UNRESOLVED), consigne prudente dans la matrice. |
| T33 | batch7 §2.1 définition de la porte asymétrique | « Palette baissée : impossible pour le tueur sauf exceptions » sans les exceptions (vaulteurs) alors qu'elles changent le modèle. | §25 | moyenne | Liste des vaulteurs et durées ajoutée. |
| T34 | batch7 §4 (catalogue) | Aucune fiche pour les loops des cartes **intérieures** (RPD, Midwich, Treatment Theatre, Underground Complex, Lampkin Lane, Badham : pas de maze tiles, FACT [W]). | §25 | moyenne | **Non corrigeable sans source** (pages de cartes non lues) → question ouverte 14, lot 8. |
| T35 | batch7 §2.1, §3, §4.11 | Toutes les conditions « safe » de palette dépendent de la durée d'abaissement, INV dans l'audit et absente de la page wiki Pallets relue. | §25 | moyenne | **Non corrigeable sans source** → question ouverte 13 ; signalée UNCERTAIN partout. |
| T36 | batch7 §1.4, §4.2-4.5 (hiérarchies LW > SW, opened > closed, T > L) | Aucune source experte écrite ni VOD : toute la partie tactique repose sur le raisonnement. | §25 | moyenne | **Non corrigeable sans source** (déjà étiqueté EXPERT OPINION non sourcée ; question 12). |
| T37 | batch7 §5.2 vs `batch6_chase_tech.md` §1.3 et T11 | Le lot 6 garde l'ancienne liste de casseurs de l'audit (Mastermind et Good Guy sans condition, Lich instantanée, sans Shape/Executioner/Nemesis/Singularity/The First) et la condition de loop sans temps de porte. | contradiction inter-fichiers | moyenne | Corrigé **dans la cible** (renvoi à l'errata, condition en temps) ; le lot 6 n'est pas modifié (consigne : un seul fichier) → tâche de réécriture. |
| T38 | batch7 §5.3 Windows of Opportunity | Valeur LIVE inconnue (le wiki affiche la refonte PTB ; la note 559 ne donne pas de « was »). | §25 | basse | **Non corrigeable sans source** (question ouverte 15). |
| T39 | batch7 §6.6 exemple 3 | Calcul fait contre un 4,6 alors que le tueur type de l'exemple (Blight) est à 4,4 m/s depuis 9.6.0 (audit VP). | calcul | basse | Valeur Blight ajoutée (≈ 7 m + fente) et rappel que ses tokens décident plus que la course. |
| T40 | batch7 §4.16 contre-exemples à « garder une god pallet » | Manquaient : Hex: Blood Favour (palette levée bloquée 15 s après une blessure) et la différence SWF (l'équipe peut annoncer qui la garde). | §25 | basse | Ajoutés. |

**Bilan : 40 problèmes — 4 hauts, 16 moyens, 20 bas. 35 corrigés dans la cible, 5 non corrigeables sans source (T32, T34, T35, T36, T38).** T37 est corrigé côté lot 7 mais reste à répercuter dans le lot 6 et le handbook.

Contrôle par sondage des faits de structure (pages relues) : School Bus (2 variantes, un vault toujours bloqué, fenêtre arrière en drop-off, palette possible), Crane (palette toujours entre la grue et une voiture), Maze Tiles (même emplacement général, L-T à 2 fenêtres, cartes sans maze tiles), Windows (blocage, rechute, tampon 5 s), Pallets (casseurs, 14/16/18/20 m, 5.2.0 même côté) : **conformes**.

## 2. Lacunes restantes (tâches de recherche précises)

1. **Durée d'abaissement d'une palette** (`t_porte_S` du drop) : absente de la page wiki Pallets relue ; capture 60 fps en partie personnalisée, 10 drops, et instant où la zone de stun s'active (~50 %). Débloque T35 et toutes les conditions « safe » de palette.
2. **Portée utile de la fente** (4,6 et 4,4) : même protocole que le lot 6 (lacune 3) ; fixe les tables §3.1 et §6.3.
3. **Chien du Houndmaster et palettes** (CONFLICT-L7-06) : `python3 kb/tools/wiki_text.py "The Houndmaster" 200000`, section Power (ordres Search / Chase, franchissement de palettes baissées) ; puis corriger le handbook §2.2.
4. **Datation de la page Maze Tiles** (CONFLICT-L7-01) : API MediaWiki `action=query&prop=revisions&titles=Maze_Tiles&rvlimit=50` pour savoir si la section « Iterations » est postérieure au 26/09/2025 (9.2.0) ; sinon partie personnalisée sur Coldwind et Withered Isle (présence d'un 4-lane).
5. **Loops des cartes intérieures** (T34) : pages wiki RPD West/East Wing, Midwich Elementary School, Treatment Theatre, The Underground Complex, Lampkin Lane, Badham Preschool I-V : fenêtres, palettes, murs cassables → fiches au lot 8.
6. **Windows of Opportunity LIVE** (T38) : reconstruire depuis `kb/sources/wiki_modules/Datatable_Loadout_History.lua` (dernière version avant 10.2.0).
7. **Bloodlust** : liste exacte des pouvoirs qui la remettent à 0, effet d'un stun et d'une casse de **mur** (page Status HUD/Bloodlust complète).
8. **`T_loop` par tile** : chronométrer shack, LW, SW, L-T, pallet gym, filler contre 4,6 et 4,4 en partie personnalisée (10 cycles chacun) pour remplacer les distances « inventées pour l'exemple » du §6.6.
9. **Nemesis MR1** : la page Pallets dit « Rate 2 » ; vérifier sur la page du tueur si la Tentacle Strike MR1 casse les palettes.
10. **Source experte écrite et datée** sur les hiérarchies de tiles (LW > SW, opened > closed, T > L) ; la vidéo d'Otzdarva n'a pas pu être consultée.
11. **Report des corrections** (hors périmètre de cet audit) : lot 6 §1.3 (liste des casseurs → errata), lot 6 T11 (ajouter `t_porte_S`), handbook §3 (Lich relève/bloque, Good Guy Scamper, Knight 10.1.1, Animatronic Iridescent Remnant).
12. **Nombre de palettes par carte après 9.3.2** et **portée du son de casse** (carte mentale SoloQ) : pages de cartes (lot 8) et page Sounds / Loud Noise Notification.

## 3. Verdict de profondeur (§27)

| Section de `batch7_tiles.md` | Niveau atteint | Commentaire |
|---|---|---|
| §1 Fixe / RNG / opinion | +POURQUOI (voulu) | Tables de règles avec sources et conséquences ; rôle de référence. |
| §2 Modèle de la loop | +FAILURE | Condition en temps, exemple chiffré, cas d'échec (oublier le temps de porte) ; pas de drill propre (renvoi au lot 6 T11). |
| §3 Force d'une tile | +COUNTER | Définitions opérationnelles, test pratique, réponse du tueur ; pas de drill. |
| §4.1 Killer Shack | +FAILURE | 18 points de la mission, critique du seed ; pas de drill dédié. |
| §4.2-4.4 LW / SW / L-T | +COUNTER | Sens, checkspots, greed/pre-drop, tueurs ; pas de cas d'échec ni de drill par tile. |
| §4.5-4.10 autres gyms | +POURQUOI | Forme FACT + une ligne de jeu HEURISTIC : **section la plus mince** (pas de QUAND, COUNTER ni DRILL). |
| §4.11 Fillers | +COUNTER | Définition, pre-drop conditionné, exceptions par tueur. |
| §4.12-4.15 fenêtres, mains, murs, structures | +QUAND | Utilisation et transition ; peu de contre-jeu tueur. |
| §4.16 God pallet | +FAILURE | Définition, contre-exemples, règle de remplacement. |
| §5 Matrice tile × tueur | +COUNTER | La matrice est le contre-jeu ; pas de cas d'échec ni de drill (renvoi handbook). |
| §6.1-6.5 Connectivité | +QUAND | Vocabulaire, trois horizons, tables, checklist, modèle jouet. |
| §6.6 Exemples | +FAILURE | Options, décision, erreur typique. |
| §6.7 Drill | +DRILL | Protocole, métriques ; seuils non calibrés. |
| §6.8 SoloQ vs SWF | +QUAND | Ajouté ; non mesuré. |
