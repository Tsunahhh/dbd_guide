# PERK DATABASE — index consolidé des perks (livrable §51-5)

> **Statut : WRITTEN + AUDITED + RE-VERIFIED.** Version 2 du 27/09/2026. La version 1 (WebSearch seul) a été auditée sans web le 27/09/2026 (`kb/audit/pass14_deliverables.md`) ; ses corrections de fond (avertissements, limites et calculs des builds) sont conservées au §5.

> **Version de référence : LIVE 10.1.2a** (hotfix serveur du 17/09/2026, chapitre 41). **État au 27/09/2026.**
> Le **PTB 10.2.0** (15 → 21/09/2026) n'est **pas LIVE** : la colonne « PTB 10.2.0 » décrit un changement annoncé, jamais une valeur en jeu.
>
> **Re-vérifié sur pages wiki complètes + notes officielles le 27/09/2026.** Les 321 fiches sources (`kb/research/batch2_perks_surv_p23…p30.md`, 176 perks survivant ; `kb/research/batch3_perks_kill_p90…p96.md`, 145 perks tueur) ont été re-vérifiées sur la page wiki.gg complète de chaque perk (description LIVE et change log, via l'API MediaWiki : `kb/sources/wiki_perks_digest.md`) et recoupées avec les notes de patch officielles BHVR 9.0.0 → PTB 10.2.0 en texte complet (`kb/sources/patches/official_*.txt`). La ligne « Couverture » en tête de chaque fiche donne le détail. La version 1 de ce fichier (162 lignes UNCERTAIN, confiance plafonnée à STRONG_SECONDARY) est remplacée.
>
> **Ce fichier ne réécrit pas les fiches.** Il en résume chaque perk en une ligne. En cas de doute, la fiche source (colonne « Fichier », avec le numéro de ligne de l'en-tête) fait foi. Aucune valeur n'a été ajoutée : un contrôle par script vérifie que chaque nombre des colonnes « Effet LIVE » et « PTB 10.2.0 » figure dans la partie correspondante de la fiche (LIVE ou PTB).
>
> **Piège connu** (`kb/ledgers/AUDIT_PHASE0_ERRATA.md`) : pour Windows of Opportunity, Do No Harm, Wake Up!, Distressing, Dissolution, Shattered Hope et Hex: Nothing but Misery, la page wiki affiche déjà le texte PTB 10.2.0. La valeur LIVE de ces lignes a été reconstruite par les fiches depuis l'historique du wiki ou les lignes « was … » de la note officielle 559.

## Légende

| Colonne | Valeurs |
|---|---|
| **Effet LIVE** | Résumé en 15 mots au plus de l'effet LIVE 10.1.2a de la fiche. Triplets « a/b/c » = rangs I/II/III. |
| **Vérif.** | Source de l'effet LIVE. **WIKI** = page wiki.gg complète (description LIVE + change log). **WIKI+NOTE** = page wiki et note officielle BHVR concordante. **NOTE** = valeur LIVE établie par la note officielle (page wiki déjà basculée sur le PTB). Une précision entre parenthèses indique que la note ne couvre que cette partie (« nom : +NOTE » = seul le renommage est dans une note officielle). |
| **Confiance** | Niveau recopié de la fiche (mission §21). **VP** = VERIFIED_PRIMARY (note officielle explicite) · **VMS** = VERIFIED_MULTI_SOURCE (wiki + note concordants) · **SS** = STRONG_SECONDARY (page wiki complète seule). « (partiel) » : la note officielle confirme certaines valeurs seulement, le reste est SS. « · U (détail) » : l'effet principal est vérifié, mais un point secondaire reste UNCERTAIN dans la fiche (conflit wiki / note, seuil non documenté…). |
| **PTB 10.2.0** | **non** = non modifiée au PTB 10.2.0 d'après la page wiki et la note officielle 559. Sinon : résumé du changement (8 mots au plus), **PTB, non LIVE**. Les correctifs de bug seuls ne comptent pas comme modification. |
| **Notes HEURISTIC** (survivant) | Notes 0-3 de la fiche, dans l'ordre **SoloQ · SWF · Chase · Macro · Info · Anti-tunnel · Soin · Gen · Endgame**. Avis de l'agent du lot, **pas des données** ; non calibrées entre fichiers. |
| **Menace SoloQ / SWF** (tueur) | Note 0-3 **HEURISTIC** de la fiche (« 1-2 » = fourchette de la fiche). Les indices observables sont dans les fiches et dans `PERK_DEDUCTION.md`. |
| **Catégorie** (tueur) | Recopiée de la ligne « Statut / catégorie » de la fiche. |
| **Écart seed** | Verdict **corrigé** de la fiche re-vérifiée sur le guide seed : **OK** (omissions mineures comprises, notées « IMPRÉCIS mineur » dans les fiches) · **IMPRÉCIS** · **FAUX** · **PTB-comme-LIVE**. « historique FAUX » = effet LIVE juste, mais historique de patch du seed faux. « ch. 8 » = passage du chapitre 8 du seed (la page de tier est juste). « verdict FAUX retiré » = la version 1 disait FAUX à tort. |
| **Fichier** | `pNN l.X` = fiche dans `kb/research/batch2_perks_surv_pNN.md` ou `batch3_perks_kill_pNN.md`, en-tête à la ligne X. |

Abréviations : « gen » = générateur ; « terreur » ou « TR » = rayon de terreur ; « CD » = temps de recharge ; « Fléau » = Scourge Hook ; « kick » = action « endommager un générateur ».

---

## 1. Compteurs et contrôles

### 1.1 Complétude (comptage des en-têtes `###` des fiches)

| Lot | Fichiers | Fiches par fichier | Total | Attendu | Doublons | Manquantes |
|---|---|---|---|---|---|---|
| Survivant (lot 2) | p23 → p30 | 21 + 23 + 27 + 24 + 27 + 25 + 25 + 4 | **176** | 176 | **0** | **0** |
| Tueur (lot 3) | p90 → p96 | 6 + 18 + 23 + 21 + 28 + 22 + 27 | **145** | 145 | **0** | **0** |

Contrôle par script : chaque en-tête de fiche a une ligne dans les tableaux §2-3 (même nom), aucun nom n'apparaît deux fois, aucune perk n'est à la fois côté survivant et côté tueur. Le périmètre (176 / 145) est celui du guide seed. Il n'a pas été comparé à la liste complète des perks du jeu.

### 1.2 Répartition par niveau de confiance

| Confiance (effet principal) | Survivant | Tueur | Total |
|---|---|---|---|
| **VP** — VERIFIED_PRIMARY | **1** (Built to Last : durée par la note 9.1.0) | **2** (Dissolution, Hex: Nothing but Misery : LIVE lue dans la note 559) | **3** |
| **VMS** — VERIFIED_MULTI_SOURCE (dont « partiel ») | **80** (dont 17 partiels) | **61** (dont 6 partiels) | **141** |
| **SS** — STRONG_SECONDARY | **95** | **82** | **177** |
| UNCERTAIN (effet principal) | **0** | **0** | **0** |
| **Total** | **176** | **145** | **321** |
| dont lignes avec un détail UNCERTAIN (« · U ») | 23 | 10 | 33 |

Les SS survivant comprennent 2 perks dont une règle est confirmée par une note (Slippery Meat : accès à l'auto-décrochage, VP ; Up the Ante : déblocage, VMS). Les SS tueur comprennent 5 perks dont seul le renommage est dans une note (No Holds Barred, Weeping Wounds, Fortune's Fool, See How They Run, Cull the Weak), Hex: The Third Seal (condition de déclenchement confirmée par la note 9.2.0) et Shattered Hope (LIVE : destruction des Boons confirmée par la note 559 ; valeur 6/7/8 s d'un résumé de la 1re passe).

**Concordance avec les lignes « Couverture » des fiches** : perks « confirmées par note officielle » = survivant 8 + 8 + 11 + 14 + 8 + 18 + 10 + 4 = **81**, + 2 partielles (Slippery Meat, Up the Ante) = 83 = 80 VMS + 1 VP + 2 SS partiels ; tueur 2 + 8 + 5 + 11 + 9 + 10 + 17 = **62**, + Pain Resonance (confirmée indirectement, note 9.2.0) = 63 = 61 VMS + 2 VP.

| Vérif. | Survivant | Tueur | Total |
|---|---|---|---|
| WIKI | 93 | 75 | 168 |
| WIKI+NOTE | 80 | 61 | 141 |
| NOTE (LIVE lue dans la note) | 0 | 2 | 2 |
| WIKI + note partielle (durée, accès, déblocage, nom, condition) | 3 | 6 | 9 |
| Note partielle + résumé (Shattered Hope) | 0 | 1 | 1 |
| **Total** | **176** | **145** | **321** |

Version 1 → version 2 : les 162 lignes UNCERTAIN (texte du seed non re-vérifié) et les 13 lignes « AUDIT seul » sont toutes re-vérifiées. Les statuts PROUVÉ / PROBABLE / SUSPECT de `kb/ledgers/BATCH_2_4_SYNTHESIS.md` §2.1 datent d'avant cette re-vérification : pour les perks, les verdicts du §1.3 ci-dessous les remplacent.

### 1.3 Perks dont le seed était FAUX (verdicts corrigés)

**Effet LIVE faux dans le seed :**

| Côté | Perk | Le seed dit | Fiche re-vérifiée (LIVE 10.1.2a) | Confiance |
|---|---|---|---|---|
| Survivant | Vigil | 8 statuts, 30/35/40 % | Exhausted seul, 20/25/30 % (10.1.1) | VMS |
| Survivant | Quick Gambit | les autres voient votre aura | **vous** voyez l'aura des autres | VMS (partiel) |
| Survivant | Repressed Alliance | 55/50/45 s de réparation | 40/35/30 s (10.1.1) | VMS |
| Survivant | Technician | −8 m, pénalité 5/4/3 % | −16 m, 4/3/2 % (10.1.0) — FAUX / OBSOLETE | VMS |
| Survivant | Boon: Circle of Healing | les blessés voient les auras des autres | l'aura **des blessés** est révélée aux autres (aura inversée) | SS |
| Tueur | Nowhere to Hide | 24 → 18 m en 10.1.0 | 24 m LIVE ; 18 m = PTB 10.1.0 — **PTB-comme-LIVE** | VMS |
| Tueur | Scourge Hook: Weeping Wounds | Haemorrhage **et Mangled** | Haemorrhage seul | SS |
| Tueur | I'm All Ears | toute action rapide (casiers compris) | sauts rapides seulement | SS |
| Tueur | Distressing | bonus de Bloodpoints Deviousness | bonus retiré en 8.4.0 | SS |
| Tueur | Hex: Huntress Lullaby | la zone Good rétrécit | aucune réduction de zone ; pénalité de raté dès le début | SS |
| Tueur | Rancor | montre tous les survivants 3 s | cri + Loud Noise Notification 3 s ; aura du tueur donnée à l'Obsession | SS |
| Tueur | Superior Anatomy | bonus de vault pendant 10 s | un seul vault en LIVE ; 10 s = PTB 10.2.0 — **PTB-comme-LIVE (partiel)** | VMS |
| Tueur | Surge | « Surge (ex-Jolt) » | Surge est le nom d'origine et actuel (Jolt : 5.3.0 → 7.3.3) — FAUX (nom) | SS |

Total : **5 survivant** et **8 tueur** (dont 1 sur le nom seul).

**Faux seulement dans un passage secondaire du seed** (effet de la page de tier correct) :
- Survivant : Distortion et Babysitter (historique de patch du seed faux) ; Five Moves Ahead (description du PTB fausse dans les termes).
- Tueur : Pop Goes the Weasel (historique « Pop 20 → 15 % en 9.2.0 » : changement reporté) ; Leverage (ch. 8 : cible = survivants décrochés, au lieu du sauveteur) ; Machine Learning, Unbound, Undone, Dark Arrogance, Ravenous (ch. 8 : valeurs PTB 10.2.0 présentées comme LIVE).

**Verdicts FAUX de la version 1 retirés** (valeurs de la version 1 issues de résumés obsolètes) :
- **Built to Last** : 14/12/10 s est la valeur LIVE (note officielle 9.1.0, VP) ; le 12/10/8 s du wiki est celui du PTB 9.1.0, non retenu (CONFLICT-P25-04) → **OK**.
- **Ace in the Hole** : 2e add-on 50/75/100 % correct ; seul « rare ou mieux » est inexact (1er add-on ≤ Ultra Rare) → **IMPRÉCIS**.
- **Boon: Dark Theory** : +3 % de Haste est la valeur LIVE depuis 8.7.0 → **OK**.
- **Terminus** : 35/40/45 s est la valeur LIVE depuis 9.0.0 (notes 9.0.0 et 9.5.0) → **OK**.
- IMPRÉCIS retirés : Knock Out (le seed décrit bien la LIVE 8.6.0), Batteries Included (désactivation aux portes non confirmée).

**Soupçons levés (seed confirmé)** : **Iron Will** (80/90/100 %, pas 50/75/100 %), **Quick & Quiet** (CD 25/20/15 s ; 30/25/20 s = valeur d'avant 8.6.0), **Deception** (5 s, CD 25/20/15 s ; 3 s / 60/50/40 s = valeurs d'avant 8.2.0 / 8.6.0). Aussi : Buckle Up (+50 % de Haste 3/4/5 s, valeur atypique mais exacte).

### 1.4 Perks touchées par le PTB 10.2.0 (PTB, non LIVE)

Toutes les modifications ci-dessous sont confirmées par la note officielle 559 et le change log wiki, d'après les fiches. Il ne reste aucune ligne « oui? » (annonce du seed seule).

- **Survivant (31)** : Better Than New, Blood Pact, Boon: Illumination, Borrowed Time, Bound by Obsession, Calm Spirit, Dark Sense, Do No Harm, Down to the Last, Empathic Connection, Five Moves Ahead, Flow State, Friendly Competition, Kindred, No One Left Behind, Pharmacy, Plunderer's Instinct, Premonition, Resilience, Road Life, Self-Preservation, Shoulder the Burden, Slippery Meat, Small Game, Solidarity, Spine Chill, Stake Out, This Is Not Happening, Wake Up!, We'll Make It, Windows of Opportunity.
- **Tueur (27)** : Agitation, Bitter Murmur, Dark Arrogance, Dead Man's Switch, Deerstalker, Dissolution, Distressing, Dominance, Fire Up, Game Afoot, Help Wanted, Hex: Blood Favour, Hex: Nothing but Misery, Hex: Thrill of the Hunt, Insidious, Iron Grasp, Knock Out, Machine Learning, Ravenous, Scourge Hook: Monstrous Shrine, Shattered Hope, Spies from the Shadows, Superior Anatomy, Unbound, Undone, Unrelenting, Whispers.

Total **31 + 27 = 58**, soit le nombre de perks modifiées annoncé pour le PTB 10.2.0. Les 263 autres sont « non modifiées » d'après le wiki et la note 559. Correctifs de bug seuls, non comptés : Head On (Exhausted appliqué à tort contre la Nurse), Made for This (interaction avec The Judgment), Lightborn (bots). Par rapport à la version 1, les 31 annonces « oui? » du seed sont toutes confirmées ; aucune perk n'est ajoutée ni retirée de la liste.

### 1.5 Perks renommées (ancien → nouveau nom)

| Ancien nom | Nom LIVE | Côté | Contexte (d'après la fiche) | Vérif. |
|---|---|---|---|---|
| Decisive Strike | **Will to Live** | Survivant | Perk générale depuis le retrait de la licence Halloween (9.4.0) ; l'ancien nom reste pour les possesseurs | note 534 (9.4.0) |
| Object of Obsession | **Bound by Obsession** | Survivant | Idem (9.4.0) | audit + wiki |
| Sole Survivor | **Down to the Last** | Survivant | Idem (9.4.0) | note 534 (9.4.0) |
| Guardian (nom général temporaire) | **Babysitter** (rétablie) | Survivant | Nom général pendant le retrait de la licence Stranger Things, puis retour du nom d'origine | wiki (SS) |
| Deadlock | **No Holds Barred** | Tueur | Départ de Hellraiser (9.0.0) ; les possesseurs du Cenobite gardent « Deadlock » | note 510 (9.0.0) |
| Scourge Hook: Gift of Pain | **Scourge Hook: Weeping Wounds** | Tueur | Départ de Hellraiser (9.0.0) | note 510 (9.0.0) |
| Hex: Plaything | **Hex: Fortune's Fool** | Tueur | Départ de Hellraiser (9.0.0) | note 510 (9.0.0) |
| Save the Best for Last | **Keep Them Waiting** | Tueur | Perk de The Shape devenue générale (9.4.0) | note 534 (9.4.0) |
| Play With Your Food | **See How They Run** | Tueur | Idem (9.4.0) | note 534 (9.4.0) |
| Dying Light | **Cull the Weak** | Tueur | Idem (9.4.0) | note 534 (9.4.0) |
| Jolt (nom intermédiaire 5.3.0 → 7.3.3) | **Surge** | Tueur | Surge = nom d'origine et actuel ; le seed inverse le sens | audit + wiki |

---

## 2. Perks survivant (176, ordre alphabétique)

Notes = **HEURISTIC**, dans l'ordre SoloQ · SWF · Chase · Macro · Info · Anti-tunnel · Soin · Gen · Endgame.

| Perk | Propriétaire | Effet LIVE (≤ 15 mots) | Vérif. | Confiance | PTB 10.2.0 | Notes HEURISTIC | Écart seed | Fichier |
|---|---|---|---|---|---|---|---|---|
| **A Place For Us** | Kwon Tae-young | Soigner un allié : Elusive pour les deux ; Obsession soignée : Elusive 20/25/30 s. | WIKI+NOTE | VMS | non | 2·1·0·1·0·1·2·0·0 | OK | [p28 l.241](../research/batch2_perks_surv_p28.md) |
| **Ace in the Hole** | Ace Visconti | Objet de coffre : add-on ≤ Ultra Rare garanti ; 2e (≤ Uncommon) 50/75/100 %. | WIKI | SS · U (détail) | non | 0·0·0·0·0·0·1·0·0 | IMPRÉCIS (verdict FAUX retiré) | [p29 l.125](../research/batch2_perks_surv_p29.md) |
| **Adrenaline** | Meg Thomas | Portes alimentées : soin d'un état, +50 % Haste 4 s ; ignore Exhausted. | WIKI+NOTE | VMS · U (détail) | non | 2·2·1·0·0·1·2·0·3 | OK | [p23 l.70](../research/batch2_perks_surv_p23.md) |
| **Aftercare** | Jeff Johansen | Auras mutuelles avec les 1/2/3 derniers survivants décrochés ou soignés ; reset au crochet. | WIKI | SS | non | 1·0·0·1·1·0·0·0·0 | OK | [p26 l.272](../research/batch2_perks_surv_p26.md) |
| **Alert** | Feng Min | Action de casse ou de dégât du tueur : son aura 3/4/5 s. | WIKI | SS | non | 1·1·0·1·2·0·0·1·0 | IMPRÉCIS | [p25 l.195](../research/batch2_perks_surv_p25.md) |
| **Any Means Necessary** | Yui Kimura | Auras des palettes tombées ; en relever une en 5/4/3 s ; aucun CD. | WIKI+NOTE | VMS | non | 1·2·2·1·1·1·0·0·0 | OK | [p25 l.83](../research/batch2_perks_surv_p25.md) |
| **Apocalyptic Ingenuity** | Rick Grimes | Auras des palettes cassées à 24/28/32 m ; après 1 coffre : palette fragile en 3 s. | WIKI+NOTE | VMS | non | 1·1·1·1·0·0·0·0·0 | OK | [p29 l.400](../research/batch2_perks_surv_p29.md) |
| **Appraisal** | Élodie Rakoto | 4 jetons : refouiller un coffre vide (2 fois max) ; fouille +40/60/80 %. | WIKI+NOTE | VMS | non | 1·1·0·1·0·0·1·1·1 | OK | [p27 l.103](../research/batch2_perks_surv_p27.md) |
| **Autodidact** | Adam Francis | Check réussi en soignant autrui : jeton (max 3/4/5) ; bonus de −15 % à +60 %. | WIKI | SS | non | 1·1·0·0·0·0·2·0·0 | OK | [p26 l.42](../research/batch2_perks_surv_p26.md) |
| **Babysitter** | Steve Harrington | Décrocher : aura du tueur 8 s ; décroché sans traces, +10 % Haste 20/25/30 s. | WIKI+NOTE | VMS | non | 2·2·1·1·1·2·0·0·0 | OK (historique FAUX) | [p27 l.15](../research/batch2_perks_surv_p27.md) |
| **Background Player** | Renato Lyra | Autre survivant ramassé : 10 s pour courir, +50 % Haste 5 s ; Exhausted 30/25/20 s. | WIKI | SS | non | 1·3·1·2·0·1·0·0·1 | OK | [p23 l.270](../research/batch2_perks_surv_p23.md) |
| **Bada Bada Boom** | Dustin Henderson | Après 20 % de réparation : piège une fenêtre 40/50/60 s ; tueur Hindered 50 % 6 s. | WIKI+NOTE | VMS | non | 1·1·1·0·0·0·0·0·0 | OK | [p28 l.189](../research/batch2_perks_surv_p28.md) |
| **Balanced Landing** | Nea Karlsson | Chute : silencieuse, stagger −75 %, +50 % Haste 3 s ; Exhausted 60/50/40 s. | WIKI | SS · U (détail) | non | 2·2·2·0·0·1·0·0·1 | OK (hauteur NON VÉRIF.) | [p24 l.275](../research/batch2_perks_surv_p24.md) |
| **Bardic Inspiration** | Aestri Yazar & Baermar Uraz | Performance ≤ 15 s : alliés à 16 m renforcés 90 s selon un d20 ; CD 110/100/90. | WIKI | SS | non | 1·2·0·1·0·0·0·2·0 | OK | [p28 l.13](../research/batch2_perks_surv_p28.md) |
| **Better Than New** | Rebecca Chambers | Allié soigné : totems, soin, coffres +12/14/16 % jusqu'au prochain dégât. | WIKI+NOTE | VMS | 40/45/50 % | 1·1·0·0·0·0·1·0·0 | OK | [p29 l.238](../research/batch2_perks_surv_p29.md) |
| **Better Together** | Nancy Wheeler | Votre gen visible par tous ; allié mis au sol : auras des survivants 20/25/30 s. | WIKI+NOTE | VMS | non | 2·0·0·1·1·0·0·1·0 | OK | [p29 l.174](../research/batch2_perks_surv_p29.md) |
| **Bite the Bullet** | Leon S. Kennedy | Soin silencieux ; check raté sans bruit, pénalité 3/2/1 %. | WIKI | SS | non | 1·1·0·0·0·0·2·0·0 | OK | [p27 l.131](../research/batch2_perks_surv_p27.md) |
| **Blast Mine** | Jill Valentine | Après 40 % de réparation : piège un gen 100/110/120 s ; stun 4 s, aveuglement 12,5 m. | WIKI | SS | non | 1·1·0·1·1·0·0·1·0 | OK | [p24 l.317](../research/batch2_perks_surv_p24.md) |
| **Blood Pact** | Cheryl Mason | Vous ou Obsession blessé : auras mutuelles ; soin mutuel = Haste 5/6/7 % à 16 m. | WIKI+NOTE | VMS | transfert d'Obsession si accrochée | 0·1·1·1·1·0·1·0·0 | IMPRÉCIS | [p27 l.75](../research/batch2_perks_surv_p27.md) |
| **Blood Rush** | Renato Lyra | 40/50/60 s après décrochage : activation annule un Exhausted en cours ; usage unique. | WIKI | SS · U (détail) | non | 1·1·2·0·0·2·0·0·0 | OK | [p27 l.260](../research/batch2_perks_surv_p27.md) |
| **Boil Over** | Kate Denson | Porté : lutte +60/70/80 % ; tueur aveugle aux crochets à 16 m ; chute : +33 % lutte actuelle. | WIKI | SS · U (détail) | non | 1·1·0·0·0·1·0·0·0 | IMPRÉCIS | [p25 l.125](../research/batch2_perks_surv_p25.md) |
| **Bond** | Dwight Fairfield | Auras des autres survivants à 20/28/36 m. | WIKI | SS | non | 2·0·1·2·2·0·1·1·0 | OK | [p23 l.303](../research/batch2_perks_surv_p23.md) |
| **Boon: Circle of Healing** | Mikaela Reid | Boon 24 m : soin altruiste sans médikit +50/75/100 % ; auras des blessés révélées aux autres. | WIKI | SS | non | 2·2·0·2·1·0·3·1·0 | FAUX (aura inversée) | [p24 l.87](../research/batch2_perks_surv_p24.md) |
| **Boon: Dark Theory** | Yoichi Asakawa | Boon 24 m : +3 % Haste, persiste 2/3/4 s après la sortie. | WIKI | SS | non | 1·1·1·1·0·0·0·0·0 | OK (verdict FAUX retiré) | [p27 l.171](../research/batch2_perks_surv_p27.md) |
| **Boon: Exponential** | Jonah Vasquez | Boon 24 m : récupération au sol +90/95/100 %, relève complète seule. | WIKI | SS · U (détail) | non | 2·1·0·1·0·0·2·0·1 | OK | [p24 l.115](../research/batch2_perks_surv_p24.md) |
| **Boon: Illumination** | Alan Wake | Boon 24 m : auras des coffres et gens en bleu ; bénir et purifier +6/8/10 %. | WIKI+NOTE | VMS | bénédiction +150/175/200 %, purification retirée | 1·1·0·1·1·0·0·0·0 | OK | [p28 l.336](../research/batch2_perks_surv_p28.md) |
| **Boon: Shadow Step** | Mikaela Reid | Boon 24 m : griffures supprimées, auras cachées au tueur ; persiste 2/3/4 s. | WIKI | SS | non | 1·2·1·2·0·1·1·1·0 | OK | [p24 l.101](../research/batch2_perks_surv_p24.md) |
| **Boon: Steadfast** | Aurora Stardotter | Boon 24 m : régression −50 %, réparation +8/9/10 %, auras des gens concernés. | WIKI+NOTE | VMS | non | 1·2·0·2·1·0·0·2·0 | IMPRÉCIS | [p24 l.129](../research/batch2_perks_surv_p24.md) |
| **Borrowed Time** | Bill Overbeck | Décrocher un allié : son Endurance +6/8/10 s et sa Haste +10 s. | WIKI | SS | rework : Deep Wound soigné en 40/35/30 s | 2·2·0·0·0·2·0·0·1 | OK | [p25 l.337](../research/batch2_perks_surv_p25.md) |
| **Botany Knowledge** | Claudette Morel | Vitesse de soin +30/40/50 % ; plus de malus d'efficacité des objets (9.0.0). | WIKI+NOTE | VMS (partiel) | non | 2·2·0·1·0·0·3·1·0 | OK | [p24 l.143](../research/batch2_perks_surv_p24.md) |
| **Bound by Obsession (ex-Object of Obsession)** | Générale (ex-Laurie) | Tueur lit votre aura : vous voyez la sienne ; purification, soin, réparation +2/4/6 %. | WIKI+NOTE | VMS (partiel) | 8/9/10 %, aura 4 s | 1·1·1·1·2·0·1·1·0 | IMPRÉCIS | [p26 l.182](../research/batch2_perks_surv_p26.md) |
| **Breakdown** | Jeff Johansen | Décroché (tout moyen) : le crochet casse (réparé en 180 s) ; aura du tueur 4/5/6 s. | WIKI+NOTE | VMS | non | 1·1·0·1·1·1·0·0·0 | OK | [p26 l.286](../research/batch2_perks_surv_p26.md) |
| **Breakout** | Yui Kimura | À 5 m du tueur qui porte : Haste 6/8/10 % ; lutte du porté +25 %. | WIKI | SS | non | 1·2·0·0·0·1·0·0·0 | OK | [p25 l.111](../research/batch2_perks_surv_p25.md) |
| **Buckle Up** | Ash Williams | Relever un allié : aura du tueur ; relevé : +50 % Haste, sans griffures 3/4/5 s. | WIKI | SS | non | 1·1·0·1·1·0·1·0·0 | OK | [p26 l.328](../research/batch2_perks_surv_p26.md) |
| **Built to Last** | Felix Richter | 14/12/10 s en casier, objet épuisé : recharge 99/66/33 % ; 3 usages. | NOTE (durée) + WIKI | VP (durée) / SS | non | 1·1·0·1·0·0·1·1·0 | OK (verdict FAUX retiré) | [p25 l.13](../research/batch2_perks_surv_p25.md) |
| **Calm Spirit** | Jake Park | Corbeaux calmes, jamais de cri ; coffres et totems 40/35/30 % plus lents. | WIKI+NOTE | VMS | malus → +8/9/10 % | 1·0·0·1·1·0·0·0·0 | OK | [p29 l.77](../research/batch2_perks_surv_p29.md) |
| **Camaraderie** | Steve Harrington | Accroché en lutte, allié à 16 m : pause du compteur 26/30/34 s. | WIKI | SS | non | 1·1·0·0·0·1·0·0·1 | OK | [p29 l.190](../research/batch2_perks_surv_p29.md) |
| **Champion of Light** | Alan Wake | Lampe allumée : +50 % Haste ; aveuglement : tueur Hindered 20 % 6 s ; CD 60/50/40 s. | WIKI+NOTE | VMS (partiel) | non | 1·1·1·0·0·1·0·0·0 | OK | [p25 l.209](../research/batch2_perks_surv_p25.md) |
| **Change of Plan** | Dustin Henderson | 2 jetons ; en casier : toolbox → médikit même rareté, 80/90/100 % de charges. | WIKI+NOTE | VMS · U (détail) | non | 2·2·0·2·0·0·2·1·0 | OK | [p30 l.68](../research/batch2_perks_surv_p30.md) |
| **Chemical Trap** | Ellen Ripley | Après 20 % de réparation : piège une palette tombée 40/50/60 s ; cassée : Hindered 50 % 4 s. | WIKI | SS | non | 1·1·1·0·0·1·0·0·0 | OK | [p26 l.56](../research/batch2_perks_surv_p26.md) |
| **Clairvoyance** | Mikaela Reid | Après un totem, mains vides, maintien : auras des objectifs à 64 m, 10/11/12 s. | WIKI+NOTE | VMS | non | 1·0·0·1·2·0·0·1·2 | OK | [p27 l.144](../research/batch2_perks_surv_p27.md) |
| **Clean Break** | Taurie Cain | Après soin d'allié, activation pendant qu'on vous soigne : Broken puis soin après 75/60/45 s. | WIKI+NOTE | VMS | non | 1·1·0·1·0·0·1·1·0 | OK | [p28 l.110](../research/batch2_perks_surv_p28.md) |
| **Come and Get Me!** | Rick Grimes | Après décrochage, activation : blessés/à terre à 24 m sans traces 10/12,5/15 s ; vous criez. | WIKI+NOTE | VMS · U (détail) | non | 1·2·0·1·0·2·0·0·1 | IMPRÉCIS | [p30 l.12](../research/batch2_perks_surv_p30.md) |
| **Conviction** | Michonne Grimes | Après soin d'un allié, à terre ≥ 25 % : relève complète, Broken, retour au sol 20/25/30 s. | WIKI+NOTE | VMS (partiel) | non | 1·1·1·0·0·1·0·0·1 | OK | [p25 l.260](../research/batch2_perks_surv_p25.md) |
| **Corrective Action** | Jonah Vasquez | Jetons (1/2/3, +1 par Great) : check raté d'un allié converti en Good, aura 6 s. | WIKI | SS | non | 2·1·0·1·0·0·1·2·0 | OK | [p27 l.157](../research/batch2_perks_surv_p27.md) |
| **Counterforce** | Jill Valentine | Purification à 125 %, +25 % par totem ; aura du totem le plus éloigné 10/12/14 s. | WIKI+NOTE | VMS | non | 1·1·0·1·1·0·0·0·1 | OK | [p25 l.223](../research/batch2_perks_surv_p25.md) |
| **Cross-Examination** | Shane Wiigwaas | En terreur hors poursuite : Light Marks du tueur (10 s) ; dessus : Elusive 3/4/5 s. | WIKI | SS | non | 1·1·1·0·0·0·0·0·0 | IMPRÉCIS | [p25 l.248](../research/batch2_perks_surv_p25.md) |
| **Cut Loose** | Thalita Lyra | Saut rapide en poursuite : sauts rapides silencieux 4/5/6 s, relançable ; CD 45 s. | WIKI | SS | non | 0·0·1·0·0·0·0·0·0 | IMPRÉCIS | [p29 l.288](../research/batch2_perks_surv_p29.md) |
| **Dance With Me** | Kate Denson | Fast vault de fenêtre ou sortie rapide de casier : sans griffures 5 s ; CD 25/20/15. | WIKI | SS · U (détail) | non | 1·1·1·0·0·0·0·0·0 | IMPRÉCIS | [p25 l.311](../research/batch2_perks_surv_p25.md) |
| **Dark Sense** | Générale | Chaque gen fini : prochaine approche du tueur à 24 m, aura 5/7/10 s. | WIKI+NOTE | VMS (partiel) | 8/9/10 s + auras palettes, fenêtres, survivants | 1·0·0·1·1·0·0·0·1 | OK | [p26 l.154](../research/batch2_perks_surv_p26.md) |
| **Dead Hard** | David King | Après décrochage, blessé en course : activation = Endurance 0,5 s ; Exhausted 60/50/40 s. | WIKI | SS | non | 2·2·2·0·0·2·0·0·1 | OK | [p23 l.221](../research/batch2_perks_surv_p23.md) |
| **Deadline** | Alan Wake | Blessé, en réparation ou soin : checks +6/8/10 %, placés au hasard ; pénalité −50 %. | WIKI | SS | non | 1·1·0·0·0·0·0·1·0 | OK | [p29 l.320](../research/batch2_perks_surv_p29.md) |
| **Deception** | Élodie Rakoto | Sprint sur casier : fausse entrée bruyante ; griffures et sang supprimés 5 s ; CD 25/20/15 s. | WIKI | SS | non | 1·1·1·0·0·0·0·0·0 | OK (confirmé) | [p24 l.303](../research/batch2_perks_surv_p24.md) |
| **Déjà Vu** | Générale | Auras permanentes des 3 gens les plus proches entre eux ; réparation +4/5/6 % dessus. | WIKI | SS | non | 3·1·0·3·2·0·0·2·0 | OK | [p23 l.141](../research/batch2_perks_surv_p23.md) |
| **Deliverance** | Adam Francis | Après décrochage sûr : auto-décrochage garanti en 1re phase ; Broken 160/140/120 s. | WIKI+NOTE | VMS | non | 3·1·0·2·0·1·0·1·1 | IMPRÉCIS | [p23 l.351](../research/batch2_perks_surv_p23.md) |
| **Desperate Measures** | Felix Richter | Soin et décrochage +16/18/20 % par survivant non sain, plafond 64/72/80 %. | WIKI+NOTE | VMS | non | 1·1·0·0·0·1·2·0·0 | OK | [p25 l.299](../research/batch2_perks_surv_p25.md) |
| **Detective's Hunch** | David Tapp | Gen terminé : auras des coffres, gens, totems à 32/48/64 m, 20 s. | WIKI+NOTE | VMS | non | 1·0·0·1·1·0·0·0·0 | OK | [p26 l.258](../research/batch2_perks_surv_p26.md) |
| **Distortion** | Jeff Johansen | Lecture d'aura par le tueur : jeton, aura et griffures masquées 8/10/12 s ; recharge en poursuite. | WIKI | SS | non | 2·1·1·2·2·1·0·1·1 | OK (historique FAUX) | [p24 l.17](../research/batch2_perks_surv_p24.md) |
| **Diversion** | Adam Francis | Après 30/25/20 s en terreur hors poursuite : caillou à 20 m, bruit et fausses griffures. | WIKI | SS | non | 1·1·0·0·0·0·0·0·0 | OK | [p26 l.300](../research/batch2_perks_surv_p26.md) |
| **Do No Harm** | Orela Rose | Soin altruiste +30/40/50 % par état de crochet du soigné ; Great +3 %. | WIKI+NOTE | VMS | Great +3 %/état, chance de check +5 % | 2·2·0·1·0·1·3·0·0 | OK (PTB IMPRÉCIS) | [p28 l.124](../research/batch2_perks_surv_p28.md) |
| **Down to the Last (ex-Sole Survivor)** | Générale (ex-Laurie) | Aura illisible à 20/22/24 m par survivant mort ; dernier survivant : gens +75 %, portes +50 %. | WIKI | SS · U (détail) | rework : jetons, portes, trappe sans clé | 1·0·0·0·0·0·0·0·2 | IMPRÉCIS | [p26 l.216](../research/batch2_perks_surv_p26.md) |
| **Dramaturgy** | Nicolas Cage | Sain, en course, activation : +25 % Haste 2 s puis effet aléatoire ; Exhausted 60/50/40 s. | WIKI | SS | non | 1·1·1·0·0·0·0·0·0 | OK | [p24 l.247](../research/batch2_perks_surv_p24.md) |
| **Duty of Care** | Orela Rose | Coup protecteur en bonne santé : alliés à 12 m +25 % Haste 4/5/6 s. | WIKI | SS | non | 1·1·1·0·0·1·0·0·0 | OK | [p29 l.368](../research/batch2_perks_surv_p29.md) |
| **Empathic Connection** | Yoichi Asakawa | Soin des autres +25/30/35 % ; les blessés voient votre aura partout. | WIKI+NOTE | VMS | soin 40/45/50 % | 2·1·0·1·1·0·2·0·0 | OK | [p25 l.181](../research/batch2_perks_surv_p25.md) |
| **Empathy** | Claudette Morel | Auras des survivants blessés ou mourants à 64/96/128 m. | WIKI | SS | non | 2·1·0·2·2·1·2·0·1 | IMPRÉCIS | [p26 l.98](../research/batch2_perks_surv_p26.md) |
| **Extrasensory Perception** | Eleven | Accroupi 4 s : auras jusqu'à 44 m, Elusive et Oblivious 11 s ; CD 60/50/40 s. | WIKI+NOTE | VMS | non | 2·1·0·1·2·0·0·0·0 | OK | [p25 l.350](../research/batch2_perks_surv_p25.md) |
| **Exultation** | Trevor Belmont | Stun de palette : objet +1 rareté et +75 % de charge, conservé ; CD 30/25/20 s. | WIKI+NOTE | VMS | non | 1·1·1·1·0·0·1·1·0 | OK | [p28 l.69](../research/batch2_perks_surv_p28.md) |
| **Eyes of Belmont** | Trevor Belmont | Gen terminé : aura du tueur 1/2/3 s ; révélations temporisées du tueur +2 s. | WIKI | SS | non | 1·0·0·1·2·0·0·0·1 | IMPRÉCIS | [p28 l.82](../research/batch2_perks_surv_p28.md) |
| **Fast Track** | Lee Yun-jin | Jeton par décrochage (max 1/2/3) ; Great : +5 % (ou 5 charges) permanents par jeton. | WIKI+NOTE | VMS | non | 1·1·0·1·0·0·0·2·0 | OK | [p27 l.117](../research/batch2_perks_surv_p27.md) |
| **Finesse** | Lara Croft | En bonne santé : saut rapide +20 % plus rapide ; CD 40/35/30 s. | WIKI | SS | non | 1·1·2·0·0·0·0·0·0 | OK | [p23 l.237](../research/batch2_perks_surv_p23.md) |
| **Five Moves Ahead** | Kwon Tae-young | Terreur/poursuite : auras de 5 palettes et fenêtres ; repartir 50 % plus tôt ; CD 40/35/30 s. | WIKI+NOTE | VMS | palettes seules (fenêtres retirées) | 2·2·3·0·2·1·0·0·1 | OK (PTB FAUX dans les termes) | [p23 l.119](../research/batch2_perks_surv_p23.md) |
| **Fixated** | Nancy Wheeler | Vitesse de marche +10/15/20 % (pas Haste) ; vous voyez vos propres griffures. | WIKI | SS | non | 1·1·0·1·1·0·0·1·0 | IMPRÉCIS | [p24 l.233](../research/batch2_perks_surv_p24.md) |
| **Flashbang** | Leon S. Kennedy | Après 50/45/40 % de réparation : fabrique une Flash Grenade en casier ; usage unique. | WIKI | SS | non | 1·2·1·0·0·1·0·0·1 | OK | [p24 l.261](../research/batch2_perks_surv_p24.md) |
| **Flip-Flop** | Ash Williams | À terre : la lutte se charge à 50 % du taux de récupération, max 40/45/50 %. | WIKI | SS | non | 1·1·0·0·0·1·0·0·0 | IMPRÉCIS | [p25 l.139](../research/batch2_perks_surv_p25.md) |
| **Flow State** | Kwon Tae-young | Jeton par gen (max 5) : totems, soin, décrochage +8/9/10 % par jeton. | WIKI+NOTE | VMS | 13/14/15 % par jeton | 1·1·0·1·0·1·2·0·2 | OK | [p28 l.255](../research/batch2_perks_surv_p28.md) |
| **Fogwise** | Vittorio Toscano | Great en réparation : aura du tueur 4/5/6 s. | WIKI | SS | non | 2·1·0·1·2·0·0·1·0 | OK | [p27 l.250](../research/batch2_perks_surv_p27.md) |
| **For the People** | Zarina Kassir | Sain, soin sans médikit : soin instantané ; vous blessé, Broken 80/70/60 s, Obsession. | WIKI | SS | non | 2·2·0·2·0·1·3·1·2 | IMPRÉCIS | [p27 l.61](../research/batch2_perks_surv_p27.md) |
| **Friendly Competition** | Thalita Lyra | Gen fini à plusieurs : réparation +5 % pendant 100/110/120 s. | WIKI+NOTE | VMS | 10 % pendant 80/85/90 s | 1·1·0·0·0·0·0·1·0 | OK | [p29 l.304](../research/batch2_perks_surv_p29.md) |
| **Fruits of Your Labor** | Aurora Stardotter | Jeton par gen ; en finissant un gen, par jeton : Haste 5 % 2 s, soin +10/15/20 %. | WIKI+NOTE | VMS · U (détail) | non | 1·1·1·1·0·0·1·1·1 | OK | [p28 l.282](../research/batch2_perks_surv_p28.md) |
| **Ghost Notes** | Vee Boonyasak | Exhausted : griffures 50 % plus brèves ; récupération d'Exhausted +5/7,5/10 %. | WIKI+NOTE | VMS | non | 1·1·1·0·0·0·0·0·0 | OK | [p28 l.176](../research/batch2_perks_surv_p28.md) |
| **Hardened** | Lara Croft | Après coffre et totem : cris supprimés, remplacés par l'aura du tueur 3/4/5 s. | WIKI | SS | non | 1·0·0·0·1·0·0·0·0 | OK | [p29 l.336](../research/batch2_perks_surv_p29.md) |
| **Head On** | Jane Romero | Après 3 s en casier, sortie : stun 3 s à ≤ 2,5 m ; Exhausted si réussi. | WIKI | SS | non (correctif de bug Nurse) | 1·2·1·0·0·1·0·0·1 | IMPRÉCIS | [p24 l.185](../research/batch2_perks_surv_p24.md) |
| **Hope** | Générale | Portes alimentées : +3/4/5 % Haste jusqu'à la fin de l'épreuve. | WIKI+NOTE | VMS | non | 1·1·1·0·0·0·0·0·2 | OK | [p24 l.219](../research/batch2_perks_surv_p24.md) |
| **Hyperfocus** | Rebecca Chambers | Great en réparation/soin : jeton (max 6) ; checks +4 %/jeton, bonus +10/20/30 %/jeton. | WIKI | SS | non | 2·2·0·0·0·0·1·3·0 | OK (DR omis) | [p23 l.335](../research/batch2_perks_surv_p23.md) |
| **Inner Focus** | Haddie Kaur | Griffures des alliés visibles ; allié blessé par le tueur : aura du tueur 6/8/10 s. | WIKI | SS | non | 2·1·0·2·3·1·1·0·1 | IMPRÉCIS | [p27 l.198](../research/batch2_perks_surv_p27.md) |
| **Inner Strength** | Nancy Wheeler | Après un totem purifié : 10/9/8 s en casier = soin d'un état ; pas sous Broken. | WIKI | SS · U (détail) | non | 2·1·0·1·0·1·2·0·0 | OK | [p25 l.167](../research/batch2_perks_surv_p25.md) |
| **Invocation: Treacherous Crows** | Taurie Cain | Invocation 60 s : corbeau effrayé en terreur = aura du tueur à tous 1/1,5/2 s ; Broken. | WIKI | SS | non | 0·0·0·0·1·0·0·0·0 | IMPRÉCIS | [p29 l.352](../research/batch2_perks_surv_p29.md) |
| **Invocation: Weaving Spiders** | Sable Ward | Invocation 60 s au sous-sol : tous les gens −8/9/10 charges ; vous blessé et Broken définitif. | WIKI | SS | non | 1·2·0·2·0·0·0·2·0 | OK | [p27 l.320](../research/batch2_perks_surv_p27.md) |
| **Iron Will** | Jake Park | Blessé et non Exhausted : gémissements réduits de 80/90/100 %. | WIKI | SS | non | 2·2·2·0·0·1·0·0·1 | OK (confirmé) | [p23 l.319](../research/batch2_perks_surv_p23.md) |
| **Kindred** | Générale | Survivant accroché : auras des survivants ; tueur révélé à ≤ 8/12/16 m du crochet. | WIKI+NOTE | VMS (partiel) | rayon 14/15/16 m | 3·0·0·3·3·1·0·1·1 | OK | [p23 l.173](../research/batch2_perks_surv_p23.md) |
| **Last Stand** | Michonne Grimes | Après 120/105/90 s en terreur non poursuivi : saut rapide = stun 3 s à ≤ 2,5 m. | WIKI+NOTE | VMS | non | 1·1·2·0·0·1·0·0·0 | IMPRÉCIS | [p28 l.137](../research/batch2_perks_surv_p28.md) |
| **Leader** | Dwight Fairfield | Alliés à 10 m : soin, sabotage, décrochage, ouverture, purification +20/25/30 % ; persiste 15 s. | WIKI+NOTE | VMS (partiel) | non | 1·2·0·1·0·1·2·0·2 | IMPRÉCIS | [p26 l.84](../research/batch2_perks_surv_p26.md) |
| **Left Behind** | Bill Overbeck | Dernier survivant : aura de la trappe à 24/28/32 m. | WIKI | SS | non | 1·0·0·0·1·0·0·0·1 | OK | [p28 l.296](../research/batch2_perks_surv_p28.md) |
| **Lend a Hand** | Shane Wiigwaas | Après un totem : une fois par allié, il reçoit 2/3/4 charges de soin permanentes. | WIKI | SS | non | 1·1·0·1·0·1·2·0·0 | OK | [p28 l.268](../research/batch2_perks_surv_p28.md) |
| **Light-Footed** | Ellen Ripley | Sain, en course : pas silencieux ; CD 14/12/10 s après un saut rapide. | WIKI+NOTE | VMS | non | 1·1·1·0·0·0·0·0·0 | OK | [p27 l.304](../research/batch2_perks_surv_p27.md) |
| **Lightweight** | Générale | Griffures 3/4/5 s plus brèves, 60 % d'apparitions en moins (bug possible). | WIKI | SS · U (détail) | non | 1·1·1·0·0·0·0·0·0 | OK | [p26 l.112](../research/batch2_perks_surv_p26.md) |
| **Lithe** | Feng Min | Saut rapide (rushed vault) : +50 % Haste 3 s ; Exhausted 60/50/40 s. | WIKI | SS · U (détail) | non | 2·2·3·0·0·1·0·0·1 | IMPRÉCIS | [p23 l.54](../research/batch2_perks_surv_p23.md) |
| **Low Profile** | Ada Wong | Seul survivant libre : gémissements, sang, griffures supprimés 70/80/90 s ; relançable. | WIKI+NOTE | VMS | non | 1·0·0·0·0·0·0·0·1 | OK | [p29 l.254](../research/batch2_perks_surv_p29.md) |
| **Lucky Break** | Yui Kimura | Blessé : griffures et sang supprimés 40/50/60 s au total ; recharge en soignant. | WIKI | SS · U (détail) | non | 2·1·2·1·0·1·0·1·1 | OK | [p27 l.47](../research/batch2_perks_surv_p27.md) |
| **Lucky Star** | Ellen Ripley | Sortie de casier : 30 s sans gémissements ni sang, auras alliés et gen ; CD 35/30/25. | WIKI+NOTE | VMS | non | 1·0·1·1·1·0·0·0·0 | OK | [p27 l.312](../research/batch2_perks_surv_p27.md) |
| **Made for This** | Gabriel Soma | Blessé : soigner un allié donne Endurance 6/8/10 s ; Deep Wound : Haste 1/2/3 %. | WIKI | SS | non | 2·2·1·1·0·1·2·0·1 | IMPRÉCIS | [p23 l.286](../research/batch2_perks_surv_p23.md) |
| **Mettle of Man** | Ash Williams | Après 3 coups protecteurs : ignore une mise au sol ; ensuite aura révélée à > 12/14/16 m. | WIKI+NOTE | VMS (partiel) | non | 1·2·1·0·0·1·0·0·0 | OK | [p26 l.342](../research/batch2_perks_surv_p26.md) |
| **Mirrored Illusion** | Aestri Yazar & Baermar Uraz | Après 20 % de réparation : illusion statique de vous 40/50/60 s ; usage unique. | WIKI | SS · U (détail) | non | 1·1·0·1·0·0·0·0·1 | IMPRÉCIS | [p28 l.27](../research/batch2_perks_surv_p28.md) |
| **Moment of Glory** | Trevor Belmont | Après 1 coffre : blessé → Broken, soigné après 80/70/60 s si debout. | WIKI+NOTE | VMS | non | 2·1·0·1·0·0·2·1·0 | OK | [p28 l.96](../research/batch2_perks_surv_p28.md) |
| **No Mither** | David King | Broken permanent, sans sang ni gémissements ; récupération +15/20/25 %, relève seule. | WIKI+NOTE | VMS | non | 0·1·1·1·0·0·1·1·0 | OK | [p29 l.109](../research/batch2_perks_surv_p29.md) |
| **No One Left Behind** | Générale | Portes alimentées : soin des autres et décrochage +50/75/100 % ; Haste de décrochage renforcée. | WIKI+NOTE | VMS (partiel) | 80/90/100 % | 1·1·0·0·1·0·1·0·2 | OK | [p26 l.140](../research/batch2_perks_surv_p26.md) |
| **Off the Record** | Zarina Kassir | 30/35/40 s après décrochage : aura cachée, silence, sans griffures, Endurance. | WIKI+NOTE | VMS (partiel) · U (détail) | non | 3·2·1·1·0·3·0·0·0 | IMPRÉCIS | [p23 l.102](../research/batch2_perks_surv_p23.md) |
| **One-Two-Three-Four!** | Vee Boonyasak | Performance ≤ 15 s : alliés à 16 m +20 % de chance de skill check 90 s. | WIKI+NOTE | VMS | non | 1·2·0·1·0·0·1·1·0 | OK | [p28 l.163](../research/batch2_perks_surv_p28.md) |
| **Open-Handed** | Ace Visconti | Tous les survivants : portée des lectures d'aura +8/12/16 m ; non cumulable. | WIKI | SS | non | 1·1·0·1·2·0·0·0·0 | OK | [p28 l.310](../research/batch2_perks_surv_p28.md) |
| **Overcome** | Jonah Vasquez | Passage de sain à blessé : boost de vitesse du coup +2 s ; Exhausted 60/50/40 s. | WIKI | SS | non | 2·2·2·1·0·1·0·0·1 | OK | [p24 l.205](../research/batch2_perks_surv_p24.md) |
| **Overzealous** | Haddie Kaur | Après un totem : réparation +8/9/10 % (Hex : 16/18/20 %) jusqu'à la perte d'un état. | WIKI | SS | non | 1·1·0·1·0·0·0·2·0 | OK | [p27 l.217](../research/batch2_perks_surv_p27.md) |
| **Parental Guidance** | Yoichi Asakawa | Après un stun du tueur : griffures, sang, gémissements supprimés 5/6/7 s. | WIKI | SS | non | 1·1·2·0·0·0·0·0·0 | OK | [p27 l.185](../research/batch2_perks_surv_p27.md) |
| **Pharmacy** | Quentin Smith | Coffres +75/100/125 % plus vite, bruit −12 m ; Emergency Med-Kit garanti. | WIKI+NOTE | VMS | vitesse étendue à la fouille | 1·1·0·0·0·0·1·0·0 | OK | [p26 l.244](../research/batch2_perks_surv_p26.md) |
| **Plot Twist** | Nicolas Cage | Blessé accroupi : au sol en silence ; relève seule +25 %, soigné, +50 % Haste 2/3/4 s. | WIKI+NOTE | VMS (partiel) | non | 1·1·1·1·0·1·2·0·1 | OK | [p24 l.59](../research/batch2_perks_surv_p24.md) |
| **Plunderer's Instinct** | Générale | Auras des coffres et objets à 32/48/64 m ; +50 % de chance de meilleure rareté. | WIKI+NOTE | VMS (partiel) | portée illimitée, coffres +150/175/200 % | 1·1·0·0·0·0·0·0·0 | IMPRÉCIS | [p26 l.168](../research/batch2_perks_surv_p26.md) |
| **Poised** | Jane Romero | 1er gen commencé : aura du tueur 8 s ; après un gen : sans griffures 20/25/30 s. | WIKI+NOTE | VMS | non | 1·1·0·1·1·0·0·1·0 | OK | [p26 l.196](../research/batch2_perks_surv_p26.md) |
| **Potential Energy** | Vittorio Toscano | En réparant, activation : charges converties en jetons (max 10/15/20) ; +1 %/jeton instantané. | WIKI+NOTE | VMS (partiel) | non | 1·2·0·2·0·0·0·2·1 | IMPRÉCIS | [p26 l.28](../research/batch2_perks_surv_p26.md) |
| **Power Struggle** | Élodie Rakoto | À terre : auras des palettes debout ; porté à 25/20/15 % de lutte : palette, stun, libération. | WIKI | SS · U (détail) | non | 1·1·0·0·1·1·0·0·0 | OK | [p25 l.153](../research/batch2_perks_surv_p25.md) |
| **Premonition** | Générale | Cône de 45°, 36 m : signal quand le tueur s'y trouve ; CD 60/45/30 s. | WIKI+NOTE | VMS | rework : 32 m, aura du tueur 3 s | 1·0·0·1·1·0·0·0·1 | OK | [p29 l.13](../research/batch2_perks_surv_p29.md) |
| **Prove Thyself** | Dwight Fairfield | Réparation +6/8/10 % par autre survivant à 4 m, plafond 18/24/30 %. | WIKI | SS | non | 1·2·0·1·0·0·0·2·1 | IMPRÉCIS | [p23 l.253](../research/batch2_perks_surv_p23.md) |
| **Quick & Quiet** | Meg Thomas | Sauts et casiers rapides silencieux, sans notification bruyante ; CD 25/20/15 s. | WIKI | SS | non | 1·1·1·0·0·0·0·0·0 | OK (confirmé) | [p24 l.289](../research/batch2_perks_surv_p24.md) |
| **Quick Gambit** | Vittorio Toscano | En poursuite : vous voyez les auras des alliés ; eux réparent +3/4/5 % ; CD 40 s. | WIKI+NOTE | VMS (partiel) | non | 2·1·1·2·2·0·0·1·0 | FAUX | [p26 l.14](../research/batch2_perks_surv_p26.md) |
| **Rapid Response** | Orela Rose | Chaque Exhausted : aura du tueur 2 s ; sortie rapide de casier = Exhausted 30/25/20 s. | WIKI | SS | non | 0·0·0·0·1·0·0·0·0 | OK | [p29 l.384](../research/batch2_perks_surv_p29.md) |
| **Reactive Healing** | Ada Wong | Blessé ; allié à 32 m perd un état : +40/45/50 % du soin manquant. | WIKI | SS | non | 1·1·0·0·0·0·2·0·0 | OK | [p27 l.241](../research/batch2_perks_surv_p27.md) |
| **Reassurance** | Rebecca Chambers | À ≤ 6 m d'un accroché : pause du sacrifice et des luttes 20/25/30 s. | WIKI | SS | non | 2·2·0·2·0·1·0·2·3 | OK | [p24 l.31](../research/batch2_perks_surv_p24.md) |
| **Red Herring** | Zarina Kassir | Gen réparé 1 s marqué ; entrer en casier y déclenche une notification ; CD 25/20/15 s. | WIKI | SS | non | 0·1·1·1·0·0·0·0·0 | OK | [p29 l.206](../research/batch2_perks_surv_p29.md) |
| **Repressed Alliance** | Cheryl Mason | Après 40/35/30 s de réparation, seul : bloquer le gen 15 s. | WIKI+NOTE | VMS | non | 1·1·0·2·0·0·0·1·0 | FAUX | [p27 l.89](../research/batch2_perks_surv_p27.md) |
| **Residual Manifest** | Haddie Kaur | Aveuglement réussi : Blindness 20/25/30 s ; une fois, coffre ouvert = lampe basique. | WIKI | SS | non | 1·1·1·0·0·0·0·0·0 | IMPRÉCIS | [p27 l.230](../research/batch2_perks_surv_p27.md) |
| **Resilience** | Générale | Blessé : +3/6/9 % sur réparation, soin, totems, portes, coffres, décrochage, sauts de fenêtre. | WIKI+NOTE | VMS (partiel) | 7/8/9 % | 2·2·2·1·0·0·1·2·1 | OK | [p23 l.157](../research/batch2_perks_surv_p23.md) |
| **Resurgence** | Jill Valentine | Au décrochage (tout moyen) : +50/60/70 % de progression de soin. | WIKI | SS | non | 3·2·0·1·0·1·3·1·0 | OK | [p23 l.205](../research/batch2_perks_surv_p23.md) |
| **Road Life** | Vee Boonyasak | Blessé non Broken, en réparation : jetons ; à 6/5/4, soin +100 % ; usage unique. | WIKI+NOTE | VMS · U (détail) | rework : auto-soin débloqué, sans Broken | 1·1·0·0·0·0·1·0·0 | IMPRÉCIS | [p30 l.100](../research/batch2_perks_surv_p30.md) |
| **Rookie Spirit** | Leon S. Kennedy | Après 5/4/3 checks réussis en réparation : auras des gens en régression. | WIKI | SS | non | 1·0·0·1·1·0·0·1·0 | OK | [p29 l.222](../research/batch2_perks_surv_p29.md) |
| **Saboteur** | Jake Park | Tueur porte : auras des crochets à 56 m ; sabotage sans toolbox ; CD 70/65/60 s. | WIKI | SS | non | 1·2·0·1·1·1·0·0·0 | IMPRÉCIS | [p25 l.97](../research/batch2_perks_surv_p25.md) |
| **Salvation's Cry** | Aurora Stardotter | Début de poursuite : alliés visibles 1/2/3 s ; eux voient vous et le tueur 5 s. | WIKI+NOTE | VMS | non | 2·0·0·1·2·0·0·1·0 | OK | [p25 l.361](../research/batch2_perks_surv_p25.md) |
| **Scavenger** | Gabriel Soma | Toolbox vide : Great = jeton ; 5 jetons rechargent, réparation −50 % 40/35/30 s. | WIKI | SS | non | 1·1·0·0·0·0·0·1·0 | IMPRÉCIS | [p27 l.279](../research/batch2_perks_surv_p27.md) |
| **Scene Partner** | Nicolas Cage | Regarder le tueur en terreur : cri, son aura 4/5/6 s (+2 s) ; CD 40 s. | WIKI | SS | non | 1·1·1·0·2·0·0·0·0 | IMPRÉCIS | [p27 l.295](../research/batch2_perks_surv_p27.md) |
| **Second Wind** | Steve Harrington | Après un état soigné sur autrui : au décrochage, Broken puis soin après 28/24/20 s. | WIKI | SS · U (détail) | non | 1·1·0·1·0·1·2·1·0 | OK | [p27 l.33](../research/batch2_perks_surv_p27.md) |
| **Self-Care** | Claudette Morel | Auto-soin sans médikit à 25/30/35 % de la vitesse normale. | WIKI | SS · U (détail) | non | 2·1·0·1·0·0·2·0·0 | OK | [p25 l.27](../research/batch2_perks_surv_p25.md) |
| **Self-Preservation** | Lee Yun-jin | Autre survivant accroché : vous gagnez Elusive 20/25/30 s. | WIKI+NOTE | VMS | Elusive 13/14/15 s | 2·2·0·2·0·0·0·1·0 | OK | [p25 l.273](../research/batch2_perks_surv_p25.md) |
| **Shoulder the Burden** | Taurie Cain | Une fois : décroche en prenant un état de crochet ; cri, Exposed 60/50/40 s. | WIKI+NOTE | VMS (partiel) | blessé + Broken, puis désactivée pour tous | 2·3·0·2·0·3·0·0·1 | OK (PTB IMPRÉCIS) | [p24 l.73](../research/batch2_perks_surv_p24.md) |
| **Slippery Meat** | Générale | +3 tentatives d'auto-décrochage, +2/3/4 % ; débloque l'auto-décrochage (9.0.0). | WIKI (accès : NOTE) | SS (accès : VP) | rework : décrochage par alliés +90/95/100 % | 1·0·0·0·0·1·0·0·0 | IMPRÉCIS | [p29 l.29](../research/batch2_perks_surv_p29.md) |
| **Small Game** | Générale | Cône de 45°, 8/10/12 m : signal quand un totem s'y trouve ; CD 14/12/10 s. | WIKI | SS | rework : auras des totems à 10/11/12 m | 1·0·0·1·1·0·0·0·1 | OK | [p29 l.45](../research/batch2_perks_surv_p29.md) |
| **Smash Hit** | Lee Yun-jin | Stun de palette : +50 % Haste 4 s ; Exhausted 30/25/20 s. | WIKI | SS | non | 2·2·2·0·0·1·0·0·1 | OK | [p24 l.331](../research/batch2_perks_surv_p24.md) |
| **Solidarity** | Jane Romero | Blessé, soin d'allié sans médikit : vous vous soignez à 50/60/70 %. | WIKI+NOTE | VMS | 65/70/75 %, médikit autorisé | 1·1·0·0·0·0·2·0·0 | OK | [p26 l.314](../research/batch2_perks_surv_p26.md) |
| **Soul Guard** | Cheryl Mason | Soigné ou relevé : Endurance 4/6/8 s (CD 30 s) ; Cursed : relève complète seule. | WIKI | SS | non | 1·1·1·0·0·1·0·0·0 | IMPRÉCIS | [p25 l.55](../research/batch2_perks_surv_p25.md) |
| **Specialist** | Lara Croft | Jeton par coffre (max 6) ; Great : −2/3/4 charges par jeton (max 12/18/24). | WIKI | SS | non | 1·1·0·1·0·0·0·2·1 | IMPRÉCIS | [p28 l.55](../research/batch2_perks_surv_p28.md) |
| **Spine Chill** | Générale | Tueur à ≤ 36 m vous regarde (ligne de vue) : alerte ; actions +2/4/6 %. | WIKI | SS | rework : 40 m, cris bloqués, sauts +10 % | 2·1·0·1·2·0·1·1·0 | OK (PTB incomplet) | [p26 l.126](../research/batch2_perks_surv_p26.md) |
| **Sprint Burst** | Meg Thomas | Début de course : +50 % Haste 2 s ; Exhausted 60/50/40 s. | WIKI+NOTE | VMS | non | 2·2·2·1·0·1·0·1·1 | OK | [p23 l.86](../research/batch2_perks_surv_p23.md) |
| **Stake Out** | David Tapp | Caché 15 s en terreur hors poursuite : jeton (max 2/3/4) ; good converti en great. | WIKI | SS | rework : skill checks spéciaux | 1·1·0·0·0·0·1·1·0 | IMPRÉCIS | [p25 l.324](../research/batch2_perks_surv_p25.md) |
| **Still Sight** | Aestri Yazar & Baermar Uraz | Immobile 4/3/2 s : auras du tueur, coffres, gens à 24 m. | WIKI+NOTE | VMS | non | 1·0·0·1·2·0·1·0·0 | OK | [p28 l.41](../research/batch2_perks_surv_p28.md) |
| **Streetwise** | Nea Karlsson | Objets de coffre +60/70/80 % de charges ; 1er objet vidé : aura du tueur 8 s. | WIKI+NOTE | VMS | non | 1·1·0·1·1·0·1·1·0 | OK | [p28 l.323](../research/batch2_perks_surv_p28.md) |
| **Strength in Shadows** | Sable Ward | Sous-sol : auto-soin sans médikit à 70 % ; soin fini : aura du tueur 6/8/10 s. | WIKI | SS | non | 1·0·0·0·1·0·1·0·0 | OK | [p27 l.329](../research/batch2_perks_surv_p27.md) |
| **Teamwork: Collective Stealth** | Renato Lyra | Après soin reçu : griffures des deux supprimées à 8/12/16 m ; persiste 4 s. | WIKI | SS | non | 0·1·0·1·0·0·0·0·0 | OK | [p29 l.272](../research/batch2_perks_surv_p29.md) |
| **Teamwork: Full Circuit** | Dustin Henderson | Par allié sur votre gen : zone Good +15/20/25 % ; réparation +5 %. | WIKI+NOTE | VMS | non | 1·2·0·0·0·0·0·1·0 | OK | [p28 l.202](../research/batch2_perks_surv_p28.md) |
| **Teamwork: Power of Two** | Thalita Lyra | Après soin d'un allié : +5 % Haste aux deux à 8/12/16 m ; persiste 4 s. | WIKI | SS | non | 1·2·1·1·0·0·1·0·0 | OK | [p27 l.270](../research/batch2_perks_surv_p27.md) |
| **Teamwork: Soft-Spoken** | Eleven | Par allié sur votre gen : bruit de réparation −15/20/25 % ; réparation +5 %. | WIKI+NOTE | VMS | non | 1·2·0·1·0·0·0·1·0 | OK | [p28 l.228](../research/batch2_perks_surv_p28.md) |
| **Teamwork: Throw Down** | Michonne Grimes | Aveuglement ou stun de palette : alliés blessés à 24 m Endurance 6/8/10 s. | WIKI+NOTE | VMS (aura : VP, absente du wiki) | non | 1·2·1·0·1·1·0·0·0 | OK | [p28 l.150](../research/batch2_perks_surv_p28.md) |
| **Teamwork: Toughen Up** | Rick Grimes | Blessé ; allié aveugle ou stun de palette à 24 m : sans traces 20/25/30 s. | WIKI+NOTE | VMS | non | 0·1·1·0·0·1·0·0·0 | IMPRÉCIS | [p30 l.42](../research/batch2_perks_surv_p30.md) |
| **Technician** | Feng Min | Bruit de réparation −16 m ; check raté sans explosion, pénalité +4/3/2 %. | WIKI+NOTE | VMS | non | 1·0·0·1·1·0·0·1·0 | FAUX (OBSOLETE) | [p29 l.93](../research/batch2_perks_surv_p29.md) |
| **Tenacity** | David Tapp | À terre : ramper en récupérant, Haste 30/40/50 %, gémissements −75 %, aura bloquée. | WIKI+NOTE | VMS | non | 2·1·0·1·0·1·0·0·1 | IMPRÉCIS | [p25 l.69](../research/batch2_perks_surv_p25.md) |
| **This Is Not Happening** | Générale | Blessé : zone Great en réparation et soin +10/20/30 %. | WIKI+NOTE | VMS | sans condition ; Good +150/175/200 %, Great +30 % | 1·1·0·0·0·0·1·1·0 | OK | [p29 l.61](../research/batch2_perks_surv_p29.md) |
| **Troubleshooter** | Gabriel Soma | En poursuite : aura du gen le plus avancé ; palette : aura du tueur 4/5/6 s. | WIKI | SS | non | 1·1·2·1·2·0·0·0·0 | IMPRÉCIS | [p27 l.287](../research/batch2_perks_surv_p27.md) |
| **Unbreakable** | Bill Overbeck | Une fois, mis à terre par le tueur : relève complète seul ; récupération +25/30/35 %. | WIKI+NOTE | VMS | non | 2·2·0·1·0·0·1·0·1 | OK | [p23 l.189](../research/batch2_perks_surv_p23.md) |
| **Up the Ante** | Ace Visconti | Débloque l'auto-décrochage pour tous ; +1/2/3 % de chance par survivant vivant (max 3/6/9). | WIKI (déblocage : +NOTE) | SS (déblocage : VMS) · U (détail) | non | 1·1·0·0·0·1·0·0·0 | IMPRÉCIS | [p29 l.142](../research/batch2_perks_surv_p29.md) |
| **Urban Evasion** | Nea Karlsson | Déplacement accroupi +90/95/100 %. | WIKI | SS | non | 1·1·0·1·0·0·0·0·0 | OK | [p25 l.235](../research/batch2_perks_surv_p25.md) |
| **Vigil** | Quentin Smith | Vous et alliés à 16 m : récupération d'Exhausted +20/25/30 % ; persiste 15 s. | WIKI+NOTE | VMS | non | 1·1·1·0·0·0·0·0·0 | FAUX | [p24 l.157](../research/batch2_perks_surv_p24.md) |
| **Visionary** | Felix Richter | Auras des gens à 32 m ; coupée 20/18/16 s après chaque gen. | WIKI | SS | non | 1·0·0·1·1·0·0·1·0 | OK | [p29 l.158](../research/batch2_perks_surv_p29.md) |
| **Wake Up!** | Quentin Smith | Gens finis : auras des interrupteurs ; ouverture +8/10/12,5 % par survivant vivant. | WIKI+NOTE | VMS (partiel) | 8/9/10 % + 20 % par allié vivant | 1·0·0·0·1·0·0·0·2 | OK | [p26 l.230](../research/batch2_perks_surv_p26.md) |
| **We See You** | Eleven | Jeton par lecture de votre aura ; à 4 : aura du tueur à tous 10/12,5/15 s. | WIKI+NOTE | VMS | non | 1·1·0·1·2·0·0·0·0 | OK | [p28 l.215](../research/batch2_perks_surv_p28.md) |
| **We'll Make It** | Générale | Après un décrochage : soin des autres +100 % pendant 30/60/90 s. | WIKI+NOTE | VMS | durée 70/80/90 s | 2·2·0·1·0·1·3·1·1 | OK | [p24 l.45](../research/batch2_perks_surv_p24.md) |
| **We're Gonna Live Forever** | David King | Soin d'un allié à terre +100 % ; relevé : Endurance 6/8/10 s (CD 30 s). | WIKI | SS · U (détail) | non | 2·2·0·1·0·2·2·0·1 | OK | [p25 l.41](../research/batch2_perks_surv_p25.md) |
| **Wicked** | Sable Ward | Après tout décrochage : aura du tueur 16/18/20 s ; sous-sol, 1er état : auto-décrochage garanti. | WIKI+NOTE | VMS | non | 1·1·0·1·2·1·0·0·1 | OK | [p24 l.171](../research/batch2_perks_surv_p24.md) |
| **Wide Open Throttle** | Shane Wiigwaas | Fast vault de palette : Haste 10/12,5/15 % 3 s ; palette bloquée 60 s ; CD 60 s. | WIKI | SS | non | 1·1·1·0·0·0·0·0·0 | OK | [p25 l.287](../research/batch2_perks_surv_p25.md) |
| **Will to Live (ex-Decisive Strike)** | Générale (ex-Laurie) | 40/50/60 s après décrochage : skill check libère d'une saisie, stun 4 s ; usage unique. | WIKI | SS | non | 3·3·1·1·0·3·0·0·1 | OK | [p23 l.36](../research/batch2_perks_surv_p23.md) |
| **Windows of Opportunity** | Kate Denson | Auras des palettes, fenêtres et murs cassables à 24/28/32 m, en permanence, sans CD. | WIKI | SS | rework : fenêtres seules, 24 m, CD | 3·2·3·1·2·1·0·0·1 | OK (PTB IMPRÉCIS) | [p23 l.18](../research/batch2_perks_surv_p23.md) |
| **Wiretap** | Ada Wong | Après 40 % de réparation : piège un gen 100/110/120 s ; tueur à 14 m révélé. | WIKI | SS | non | 2·1·0·2·2·0·0·1·0 | OK | [p26 l.70](../research/batch2_perks_surv_p26.md) |

## 3. Perks tueur (145, ordre alphabétique)

Vues du côté survivant. Menace = **HEURISTIC**. Catégories recopiées des fiches.

| Perk | Tueur | Catégorie | Effet LIVE (≤ 15 mots) | Vérif. | Confiance | PTB 10.2.0 | Menace SoloQ / SWF | Écart seed | Fichier |
|---|---|---|---|---|---|---|---|---|---|
| **A Nurse's Calling** | The Nurse | info/aura · anti-soin | Auras des survivants qui soignent ou sont soignés à 28/30/32 m. | WIKI+NOTE | VMS | non | 1,5 / 1 | OK | [p91 l.71](../research/batch3_perks_kill_p91.md) |
| **Agitation** | The Trapper | transport | En portant : Haste 6/12/18 %, terreur +12 m. | WIKI+NOTE | VMS | Haste 14/16/18 % | 1 / 1 | OK | [p93 l.118](../research/batch3_perks_kill_p93.md) |
| **Alien Instinct** | The Xenomorph | info/aura + Oblivious | Accrochage : blessé le plus éloigné révélé 8 s, Oblivious 40/50/60 s. | WIKI | SS | non | 1-2 / 1 | OK | [p94 l.391](../research/batch3_perks_kill_p94.md) |
| **All-Shaking Thunder** | The Houndmaster | chase | Après une chute de hauteur : fente +75 % pendant 15/20/25 s. | WIKI+NOTE | VMS | non | 1 / 1 | OK | [p95 l.186](../research/batch3_perks_kill_p95.md) |
| **Awakened Awareness** | The Mastermind | info/aura (transport) | En portant : voit les survivants à ≤ 16/18/20 m. | WIKI | SS | non | 1 / 0-1 | OK | [p96 l.145](../research/batch3_perks_kill_p96.md) |
| **Bamboozle** | The Clown | chase (anti-loop) | Sauts du tueur +5/10/15 % ; fenêtre sautée bloquée 8/12/16 s pour tous. | WIKI | SS | non | 1,5 / 1,5 | OK | [p91 l.127](../research/batch3_perks_kill_p91.md) |
| **Barbecue & Chilli** | The Cannibal | info/aura | Chaque accrochage : auras des survivants à ≥ 60/50/40 m du crochet, 5 s. | WIKI | SS | non | 1,5 / 1 | OK | [p91 l.57](../research/batch3_perks_kill_p91.md) |
| **Batteries Included** | The Good Guy | chase (Haste) | À ≤ 16 m d'un gen terminé : +5 % Haste, persiste 1/3/5 s. | WIKI+NOTE | VMS · U (détail) | non | 1 / 1 | OK (IMPRÉCIS retiré) | [p95 l.116](../research/batch3_perks_kill_p95.md) |
| **Beast of Prey** | The Huntress | stealth | Gain de Bloodlust : Undetectable 30/35/40 s. | WIKI | SS | non | 1 / 1 | OK | [p96 l.61](../research/batch3_perks_kill_p96.md) |
| **Bitter Murmur** | Générale | info/aura · endgame | Gen terminé : survivants à ≤ 16 m révélés 5 s ; dernier gen : tous 5/7/10 s. | WIKI+NOTE | VMS | 20 m, 8 s ; dernier 10/12/14 s | 1 / 0-1 | OK | [p96 l.383](../research/batch3_perks_kill_p96.md) |
| **Blood Echo** | The Oni | anti-soin / chase | Accrochage : tous les blessés Exhausted + Haemorrhage 20/25/30 s ; aucun CD. | WIKI | SS | non | 1 / 1 | OK | [p94 l.339](../research/batch3_perks_kill_p94.md) |
| **Blood Warden** | The Nightmare | endgame | Porte ouverte : auras en zone de sortie ; une fois, portes bloquées 40/50/60 s. | WIKI | SS | non | 2 / 1-2 | OK | [p93 l.145](../research/batch3_perks_kill_p93.md) |
| **Bloodhound** | The Wraith | info/aura (pistage) | Flaques de sang rouge vif, visibles 2/3/4 s de plus. | WIKI | SS | non | 1 / 0-1 | OK | [p96 l.19](../research/batch3_perks_kill_p96.md) |
| **Brutal Strength** | The Trapper | chase (anti-palette) + slowdown léger (coup de pied) | Casse de palettes et murs, dégâts de gen +10/15/20 %. | WIKI | SS | non | 1 / 1 | OK | [p92 l.16](../research/batch3_perks_kill_p92.md) |
| **Call of Brine** | The Onryō | slowdown (vitesse de régression, DR) | Gen kické 90 s : régression 130/140/150 % ; notification à chaque check Good. | WIKI+NOTE | VMS | non | 2 / 1 | OK | [p92 l.212](../research/batch3_perks_kill_p92.md) |
| **Celestial Witness** | The Judgment | info/aura · Obsession | Toutes les 30 s : aura de l'Obsession 2/2,5/3 s si à ≥ 40 m, sinon transfert. | WIKI+NOTE | VMS | non | 1 / 1 | OK | [p91 l.168](../research/batch3_perks_kill_p91.md) |
| **Corrupt Intervention** | The Plague | slowdown (blocage en début de partie) | 3 gens les plus éloignés bloqués 80/100/120 s ; fin au 1er survivant mourant. | WIKI | SS | non | 2 / 1 | OK | [p90 l.95](../research/batch3_perks_kill_p90.md) |
| **Coulrophobia** | The Clown | anti-soin | Dans la terreur : soins −20/25/30 %, aiguille de check +50 %. | WIKI+NOTE | VMS | non | 1 / 0-1 | OK | [p94 l.192](../research/batch3_perks_kill_p94.md) |
| **Coup de Grâce** | The Twins | chase (portée de fente) | +2 jetons par gen (max 5 détenus, 10 par partie) ; fente +70/75/80 %. | WIKI | SS | non | 1 / 1 | OK | [p92 l.100](../research/batch3_perks_kill_p92.md) |
| **Cruel Limits** | The Demogorgon | chase / endgame | Gen terminé : toutes les fenêtres bloquées 20/25/30 s. | WIKI | SS | non | 1 / 0-1 | OK | [p96 l.103](../research/batch3_perks_kill_p96.md) |
| **Cull the Weak (ex-Dying Light)** | Générale (ex-Shape) | slowdown (vitesse d'action survivants) | Jeton par accrochage de non-Obsession : réparation, soin, sabotage des autres −2/2,5/3 %/jeton. | WIKI (nom : +NOTE) | SS (nom : VMS) · U (détail) | non | 2 / 1 | OK | [p95 l.313](../research/batch3_perks_kill_p95.md) |
| **Dark Arrogance** | The Lich | chase | Vaults +15/20/25 % ; stuns de palette et aveuglements subis +15 %. | WIKI+NOTE | VMS | + récupération d'attaque ; stuns +25 % | 0-1 / 0-1 | OK (ch. 8 PTB-comme-LIVE) | [p96 l.229](../research/batch3_perks_kill_p96.md) |
| **Dark Devotion** | The Plague | stealth (Undetectable + TR réel transféré) | Obsession blessée : terreur (40 m) transférée sur elle, tueur Undetectable 35/40/45 s. | WIKI+NOTE | VMS (partiel) | non | 2 / 1 | IMPRÉCIS | [p95 l.60](../research/batch3_perks_kill_p95.md) |
| **Darkness Revealed** | The Dredge | info/aura | Fouille d'un casier : survivants à 8 m de tout casier révélés 6/7/8 s ; CD 30. | WIKI | SS | non | 1 / 0,5 | OK | [p91 l.196](../research/batch3_perks_kill_p91.md) |
| **Dead Man's Switch** | The Deathslinger | slowdown (blocage) | Après accrochage : 1er gen lâché bloqué 25/30/35 s ; recharge 50 s. | WIKI+NOTE | VMS (CD 50 s : VP) | arrêt > 2 s, 30/35/40 s | 2 / 1,5 | IMPRÉCIS | [p91 l.15](../research/batch3_perks_kill_p91.md) |
| **Deathbound** | The Executioner | info (anti-soin) | Soin d'un allié fini : le soigneur crie, puis Oblivious au-delà de 12/8/4 m du soigné. | WIKI | SS | non | 1 / 1 | OK | [p92 l.198](../research/batch3_perks_kill_p92.md) |
| **Deerstalker** | Générale | info/aura (rework récent ; ancienne version : auras des survivants au sol dans 20/28/36 m) | Aura mutuelle sur lecture ; toutes les 40/35/30 s, survivant le moins chassé : 3 s. | WIKI+NOTE | VMS | aura 3 → 4 s | 1 / 1 | IMPRÉCIS | [p93 l.34](../research/batch3_perks_kill_p93.md) |
| **Discordance** | The Legion | info/aura | Gen réparé à 2+ à 64/96/128 m : surligné, notification au 1er ; persiste 4 s. | WIKI | SS | non | 1,5 / 0,5 | OK | [p91 l.182](../research/batch3_perks_kill_p91.md) |
| **Dissolution** | The Dredge | chase (anti-palette) | 3 s après un dégât, 12/16/20 s : prochaine palette sautée en terreur détruite. | NOTE | VP | attaque de base seule, 13/14/15 s | 1 / 0-1 | OK | [p94 l.219](../research/batch3_perks_kill_p94.md) |
| **Distressing** | Générale | autre (terror radius) | Rayon de terreur +20/25/30 % ; plus aucun bonus de Bloodpoints. | WIKI | SS | TR +30 %, réparation −6/7/8 % dedans | 1 / 0 | FAUX (BP retiré en 8.4.0) | [p94 l.64](../research/batch3_perks_kill_p94.md) |
| **Dominance** | The Dark Lord | info/aura (props) / anti-objet | 1re interaction avec chaque coffre et totem : bloqué 8/12/16 s, aura du prop. | WIKI+NOTE | VMS | totems seuls 25 s ; cri + aura | 0-1 / 0 | IMPRÉCIS | [p94 l.122](../research/batch3_perks_kill_p94.md) |
| **Dragon's Grip** | The Blight | slugging / Exposed | Après kick, 30 s : 1er survivant sur ce gen crie, Exposed 60 s ; CD 60/45/30. | WIKI+NOTE | VMS | non | 2 / 1 | OK | [p93 l.173](../research/batch3_perks_kill_p93.md) |
| **Enduring** | The Hillbilly | chase (anti-palette) | Stuns de palette −40/45/50 % ; pas en portant un survivant. | WIKI | SS · U (détail) | non | 1 / 1 | OK | [p92 l.30](../research/batch3_perks_kill_p92.md) |
| **Eruption** | The Nemesis | slowdown (perte instantanée) + info | Mise au sol : gens kickés −10 %, réparateurs crient, aura 8/10/12 s ; CD 30 s. | WIKI+NOTE | VMS (partiel) | non | 2 / 1,5 | OK | [p91 l.29](../research/batch3_perks_kill_p91.md) |
| **Fire Up** | The Nightmare | chase / endgame (scaling) | Jeton par gen (max 5) : casse, kick, vault, ramassage +4/5/6 % par jeton. | WIKI+NOTE | VMS | 6/7/8 % par jeton | 1 / 1 | OK | [p95 l.88](../research/batch3_perks_kill_p95.md) |
| **Forced Hesitation** | The Singularity | slugging / chase | Survivant à terre : autres à ≤ 16 m Hindered 20 % 10 s ; CD 40/35/30 s. | WIKI | SS | non | 1 / 1 | OK | [p94 l.365](../research/batch3_perks_kill_p94.md) |
| **Forced Penance** | The Executioner | anti-soin (Broken) | Coup protecteur : Broken 60/70/80 s. | WIKI | SS | non | 0-1 / 1 | OK | [p94 l.352](../research/batch3_perks_kill_p94.md) |
| **Forever Entwined** | The Ghoul | transport/crochet | Jeton par dégât (max 6/7/8) : ramasser, déposer, accrocher +4 % par jeton. | WIKI | SS | non | 1 / 1 | OK | [p95 l.200](../research/batch3_perks_kill_p95.md) |
| **Franklin's Demise** | The Cannibal | anti-objets · info/aura | Coup de base : objet lâché ; auras des objets perdus à 32/48/64 m. | WIKI+NOTE | VMS | non | 1 / 1-2 | OK | [p95 l.74](../research/batch3_perks_kill_p95.md) |
| **Friends 'til the End** | The Good Guy | info/aura + Exposed (obsession) | Accrocher un non-Obsession : aura de l'Obsession 6/8/10 s + Exposed 20 s. | WIKI | SS | non | 2 / 1 | OK | [p92 l.58](../research/batch3_perks_kill_p92.md) |
| **Furtive Chase** | The Ghost Face | stealth · obsession | Accrocher l'Obsession : +10 % Haste et Undetectable 14/16/18 s ; sauveteur = Obsession. | WIKI | SS | non | 1-2 / 1 | OK | [p93 l.187](../research/batch3_perks_kill_p93.md) |
| **Game Afoot** | The Skull Merchant | chase | Coup sur le plus chassé : Obsession ; casse ou kick en la chassant : +7 % Haste. | WIKI+NOTE | VMS | Haste 10 % | 1 / 0-1 | IMPRÉCIS | [p96 l.159](../research/batch3_perks_kill_p96.md) |
| **Gearhead** | The Deathslinger | info/aura | 30 s après une perte d'état : check Good en réparation révèle le survivant 6/7/8 s. | WIKI | SS | non | 1 / 1 | OK | [p92 l.310](../research/batch3_perks_kill_p92.md) |
| **Genetic Limits** | The Singularity | chase (Exhausted) | Perte d'un état de santé (tout moyen) : Exhausted 6/7/8 s. | WIKI | SS | non | 1 / 1 | OK | [p94 l.378](../research/batch3_perks_kill_p94.md) |
| **Grim Embrace** | The Artist | slowdown (blocage) · info/aura (Obsession) | 1ers accrochages, tueur à ≥ 16 m : gens bloqués 6/8/10 s ; 4e : 40 s + Obsession. | WIKI | SS | non | 2 / 2 | IMPRÉCIS | [p90 l.114](../research/batch3_perks_kill_p90.md) |
| **Haywire** | The Animatronic | endgame | Interrupteur lâché après ≥ 80 % : régresse à 80/90/100 % ; lumières qui clignotent. | WIKI+NOTE | VMS | non | 1 / 1 | OK | [p95 l.271](../research/batch3_perks_kill_p95.md) |
| **Help Wanted** | The Animatronic | chase / slowdown indirect | Gen kické compromis (1 seul) ; s'il est fini : récupération après coup +25 % 40/50/60 s. | WIKI+NOTE | VMS | 3 gens ; 100/110/120 s + régression 150 % | 1 / 1 | OK | [p95 l.243](../research/batch3_perks_kill_p95.md) |
| **Hex: Blood Favour** | The Blight | hex + chase (blocage de palettes) | Survivant perd un état (tout moyen) : palettes à 24/28/32 m bloquées 15 s. | WIKI+NOTE | VMS | attaque de base seule, 32 m, 13/14/15 s | 2 / 1 | IMPRÉCIS | [p92 l.170](../research/batch3_perks_kill_p92.md) |
| **Hex: Crowd Control** | The Trickster | hex / chase | 1er vault rapide allume l'Hex ; 4/5/6 dernières fenêtres franchies bloquées pour tous. | WIKI+NOTE | VMS | non | 1-2 / 1 | OK | [p94 l.150](../research/batch3_perks_kill_p94.md) |
| **Hex: Devour Hope** | The Hag | hex + endgame/Exposed | Jetons par décrochage à ≥ 24 m ; 2 : Haste ; 3 : tous Exposed ; 5 : mori. | WIKI | SS | non | 3 / 2 | OK | [p92 l.156](../research/batch3_perks_kill_p92.md) |
| **Hex: Face the Darkness** | The Knight | hex · info | Survivant blessé maudit ; toutes les 35/30/25 s, les autres hors terreur crient, aura 2 s. | WIKI | SS | non | 1-2 / 1 | OK | [p93 l.104](../research/batch3_perks_kill_p93.md) |
| **Hex: Fortune's Fool (ex-Plaything)** | Générale (ex-Cenobite) | hex · info (Oblivious) | 1er accrochage : Hex lié, survivant Oblivious ; totem bloqué 90 s pour les autres. | WIKI (nom : +NOTE) | SS (nom : VMS) | non | 1,5 / 1 | OK | [p91 l.251](../research/batch3_perks_kill_p91.md) |
| **Hex: Haunted Ground** | The Spirit | hex / slugging (Exposed) | 2 Hex ; en bénir ou purifier un : tous Exposed 40/50/60 s. | WIKI | SS | non | 2 / 1 | OK | [p94 l.259](../research/batch3_perks_kill_p94.md) |
| **Hex: Hive Mind** | The First | hex · slowdown / info | Hex au 1er accrochage ; à 4 gens faits, les restants explosent (−6/8/10 %). | WIKI+NOTE | VMS | non | 1-2 / 1 | OK | [p93 l.270](../research/batch3_perks_kill_p93.md) |
| **Hex: Huntress Lullaby** | The Huntress | hex / slowdown (skill-checks) | Soin/réparation : raté +2/4/6 % ; jetons par accrochage : alerte de check réduite puis supprimée. | WIKI | SS | non | 1 / 1 | FAUX (zone Good inexistante) | [p94 l.164](../research/batch3_perks_kill_p94.md) |
| **Hex: No One Escapes Death (NOED)** | Générale | hex · endgame | Portes alimentées, totem terne restant : Hex, tous Exposed, tueur +2/3/4 % Haste. | WIKI | SS | non | 2,5 / 1,5 | OK | [p91 l.140](../research/batch3_perks_kill_p91.md) |
| **Hex: Nothing but Misery** | The Ghoul | hex · chase | Après 8 coups de base : Hex ; chaque coup : Hindered 5 % 10/12,5/15 s. | NOTE | VP | 4 coups ; vault −10 % en plus | 1-2 / 1 | OK | [p95 l.214](../research/batch3_perks_kill_p95.md) |
| **Hex: Overture of Doom** | The Krasue | hex · stealth | Hex sur le gen le plus éloigné ; y réparer 5 s : terreur transférée, Undetectable 20/25/30. | WIKI+NOTE | VMS | non | 1-2 / 1 | OK | [p96 l.285](../research/batch3_perks_kill_p96.md) |
| **Hex: Pentimento** | The Artist | slowdown (vitesse d'action) + hex | Totems purifiés ravivés : soin et réparation −20 %, puis +1/2/3 %/jeton (max 24/28/32). | WIKI | SS | non | 2 / 1 | OK | [p92 l.142](../research/batch3_perks_kill_p92.md) |
| **Hex: Retribution** | The Deathslinger | hex · info | Totem béni ou purifié : Oblivious 40/50/60 s ; Hex retiré : auras de tous 20 s. | WIKI+NOTE | VMS | non | 1 / 1 | IMPRÉCIS | [p93 l.243](../research/batch3_perks_kill_p93.md) |
| **Hex: Ruin** | The Hag | hex · slowdown (régression) | Gens non réparés régressent seuls à 100/125/150 %. | WIKI+NOTE | VMS | non | 2,5 / 1,5 | OK | [p91 l.43](../research/batch3_perks_kill_p91.md) |
| **Hex: Scared to Death** | The Slasher | hex · chase | Après 3 accrochés : palette cassée en chase = cri + Hindered 11/12/13 % à ≤ 13 m. | WIKI+NOTE | VMS | non | 1 / 1 | OK | [p96 l.327](../research/batch3_perks_kill_p96.md) |
| **Hex: The Third Seal** | The Hag | hex / info (Blindness) | Les 2/3/4 derniers touchés (attaque) : Blindness tant que le totem tient. | WIKI (condition : +NOTE) | SS (condition : VMS) | non | 1 / 0 | IMPRÉCIS | [p94 l.287](../research/batch3_perks_kill_p94.md) |
| **Hex: Thrill of the Hunt** | Générale | hex (protection de totems) | Par totem restant : purification et bénédiction −8/9/10 % (max 40/45/50 %). | WIKI+NOTE | VMS | rework : blocage des totems par accrochage | 1 / 0-1 | OK | [p93 l.48](../research/batch3_perks_kill_p93.md) |
| **Hex: Two Can Play** | The Good Guy | hex · anti-stun/blind | Après 4/3/2 stuns ou blinds : Hex ; qui l'étourdit ou l'aveugle est aveuglé 1,5 s. | WIKI | SS | non | 1 / 1-2 | OK | [p95 l.102](../research/batch3_perks_kill_p95.md) |
| **Hex: Under Your Thumb** | The Judgment | hex · anti-boosts de vitesse | Hex au 1er état de crochet ; Haste des survivants qui courent plafonnée 25/20/15 %. | WIKI+NOTE | VMS (partiel) | non | 1 / 1 | OK | [p95 l.285](../research/batch3_perks_kill_p95.md) |
| **Hex: Undying** | The Blight | hex (protection d'Hex) + info/aura | Auras des survivants à 2/3/4 m d'un totem terne ; Hex purifié transféré sur Undying. | WIKI | SS · U (détail) | non | 2 / 1 | OK | [p92 l.128](../research/batch3_perks_kill_p92.md) |
| **Hex: Wretched Fate** | The Dark Lord | hex · slowdown (Obsession) | Après un gen : Hex maudit l'Obsession, réparation −27/30/33 % ; elle voit le totem à 12 m. | WIKI | SS | non | 1 / 0-1 | OK | [p96 l.243](../research/batch3_perks_kill_p96.md) |
| **Hoarder** | The Twins | info (anti-objet) · autre | Coffre ouvert ou objet ramassé à ≤ 32/48/64 m : notification 4 s ; +2 coffres. | WIKI | SS · U (détail) | non | 0-1 / 0-1 | IMPRÉCIS | [p96 l.117](../research/batch3_perks_kill_p96.md) |
| **Hubris** | The Knight | chase (anti-stun) | Survivant qui étourdit le tueur (tout moyen) : Exposed 20/25/30 s ; CD 20 s. | WIKI+NOTE | VMS (partiel) | non | 1 / 1 | OK | [p94 l.206](../research/batch3_perks_kill_p94.md) |
| **Human Greed** | The Dark Lord | info/aura (coffres) | Auras des coffres ; refermer les coffres ; survivant à ≤ 8 m d'un coffre révélé 3/4/5 s. | WIKI | SS | non | 0-1 / 0-1 | OK | [p95 l.172](../research/batch3_perks_kill_p95.md) |
| **Hysteria** | The Nemesis | info/aura (Oblivious) · soutien chase | Blesser un survivant sain : tous les blessés Oblivious 30/35/40 s ; CD 20 s. | WIKI | SS | non | 1 / 0-1 | OK | [p95 l.18](../research/batch3_perks_kill_p95.md) |
| **I'm All Ears** | The Ghost Face | info/aura | Saut rapide à ≤ 48 m du tueur : aura 8 s ; CD 60/45/30 s. | WIKI | SS | non | 1 / 1 | FAUX (casiers inclus à tort) | [p92 l.324](../research/batch3_perks_kill_p92.md) |
| **Infectious Fright** | The Plague | info/aura · slugging | Mise au sol : autres survivants dans la terreur crient, révélés 4/5/6 s. | WIKI | SS | non | 2 / 1 | OK | [p93 l.62](../research/batch3_perks_kill_p93.md) |
| **Insidious** | Générale | stealth | Immobile 3/2/1 s : Undetectable tant que le tueur ne bouge pas. | WIKI+NOTE | VMS | 2 s, persiste 6/7/8 s après | 1-2 / 1 | IMPRÉCIS | [p94 l.79](../research/batch3_perks_kill_p94.md) |
| **Iron Grasp** | Générale | transport | Lutte du porté +4/8/12 % plus longue ; déport du tueur −75 %. | WIKI+NOTE | VMS | 10/11/12 % | 0-1 / 1 | OK | [p93 l.132](../research/batch3_perks_kill_p93.md) |
| **Iron Maiden** | The Legion | autre (anti-casier) / Exposed | Fouille de casier +30/40/50 % ; sortie de casier : cri, bruit 4 s, Exposed 30 s. | WIKI | SS | non | 0-1 / 0 | OK | [p94 l.300](../research/batch3_perks_kill_p94.md) |
| **Keep Them Waiting (ex-Save the Best for Last)** | Générale (ex-Shape) | chase | Coups sur non-Obsession : jetons (max 6/7/8), −5 %/jeton de récupération d'attaque. | WIKI+NOTE | VMS | non | 1,5 / 1 | OK | [p91 l.113](../research/batch3_perks_kill_p91.md) |
| **Knock Out** | The Cannibal | chase (anti pré-drop) | S'éloigner à > 6 m d'une palette dans les 6 s : Hindered 5 % 3/4/5 s. | WIKI+NOTE | VMS | > 10 m, Hindered 20 % | 0-1 / 0-1 | OK | [p94 l.93](../research/batch3_perks_kill_p94.md) |
| **Languid Touch** | The Lich | anti-exhaustion | Corbeau envolé à ≤ 36 m du tueur : Exhausted 6/8/10 s ; CD 5 s. | WIKI | SS | non | 1 / 1 | OK | [p95 l.144](../research/batch3_perks_kill_p95.md) |
| **Lay Waste** | The Judgment | slowdown (régression) | Gen frappé : régression +2 % par Charge du gen ; CD 55/50/45 s. | WIKI+NOTE | VMS | non | 1 / 1 | OK | [p92 l.254](../research/batch3_perks_kill_p92.md) |
| **Lethal Pursuer** | The Nemesis | info/aura | Auras de tous au départ 7/8/9 s ; révélations d'aura de survivants +2 s. | WIKI | SS | non | 1 / 1 | IMPRÉCIS | [p90 l.131](../research/batch3_perks_kill_p90.md) |
| **Leverage** | The Skull Merchant | anti-soin | Le sauveteur soigne 20/25/30 % plus lentement pendant 60 s. | WIKI+NOTE | VMS | non | 0-1 / 0 | OK (ch. 8 FAUX) | [p96 l.187](../research/batch3_perks_kill_p96.md) |
| **Lightborn** | The Hillbilly | anti-objets / info | Immunité aux lampes, pétards, Flash Grenade, Blast Mine ; aveugleurs révélés 6/8/10 s. | WIKI | SS | non | 0 / 1 | OK | [p92 l.282](../research/batch3_perks_kill_p92.md) |
| **Machine Learning** | The Singularity | stealth / chase | Gen kické compromis ; à sa fin : Undetectable + 8 % Haste 40/50/60 s ; usage unique. | WIKI+NOTE | VMS | 3 gens compromis, Haste 10 % | 1-2 / 1 | OK (ch. 8 : PTB-comme-LIVE) | [p93 l.201](../research/batch3_perks_kill_p93.md) |
| **Mad Grit** | The Legion | autre (transport) | En portant : pas de CD sur raté ; coup réussi : lutte en pause 2/3/4 s. | WIKI | SS | non | 1 / 1 | OK | [p94 l.313](../research/batch3_perks_kill_p94.md) |
| **Make Your Choice** | The Pig | anti-sauvetage · Exposed | Décrochage, tueur à > 32 m : sauveteur crie, Exposed 40/50/60 s. | WIKI | SS | non | 2 / 1 | OK | [p95 l.46](../research/batch3_perks_kill_p95.md) |
| **Merciless Storm** | The Onryō | slowdown (blocage) | Gen à 90 % : checks continus ; raté ou arrêt : bloqué 16/18/20 s ; une fois par gen. | WIKI | SS | non | 1 / 0-1 | OK | [p94 l.246](../research/batch3_perks_kill_p94.md) |
| **Mindbreaker** | The Demogorgon | autre (anti-info / fatigue) | En réparant : Blindness + Exhausted, persistant 3/4/5 s après. | WIKI | SS | non | 1-2 / 1 | OK | [p93 l.257](../research/batch3_perks_kill_p93.md) |
| **Monitor & Abuse** | The Doctor | stealth (TR réduit hors chase) / chase | En poursuite : terreur +5/10/15 % ; hors poursuite : −15/20/25 %. | WIKI+NOTE | VMS | non | 1 / 0-1 | OK | [p96 l.89](../research/batch3_perks_kill_p96.md) |
| **Nemesis** | The Oni | info/aura (obsession) | Aveuglement ou stun (palette, casier) : nouvelle Obsession, Oblivious 40/50/60 s, aura 8 s. | WIKI | SS | non | 1 / 1 | OK | [p92 l.296](../research/batch3_perks_kill_p92.md) |
| **No Holds Barred (ex-Deadlock)** | Générale (ex-Cenobite) | slowdown (blocage) | Chaque gen terminé : gen le plus avancé bloqué 15/20/25 s. | WIKI (nom : +NOTE) | SS (nom : VMS) | non | 1,5 / 1 | OK | [p91 l.99](../research/batch3_perks_kill_p91.md) |
| **No Quarter** | The Houndmaster | anti-soin | Auto-soin à 75 % : checks continus ; raté ou arrêt = Broken 20/25/30 s. | WIKI | SS | non | 1 / 0-1 | OK | [p96 l.257](../research/batch3_perks_kill_p96.md) |
| **No Way Out** | The Trickster | endgame | Portes alimentées, 1er interrupteur : portes bloquées 12 s + 6/9/12 s par jeton. | WIKI | SS | non | 2 / 1 | OK | [p92 l.86](../research/batch3_perks_kill_p92.md) |
| **None Are Free** | The Ghoul | endgame | Jeton par 1er accrochage (max 4) ; gens finis : fenêtres et palettes bloquées 12/14/16 s/jeton. | WIKI | SS · U (détail) | non | 2 / 1 | OK | [p95 l.229](../research/batch3_perks_kill_p95.md) |
| **Nowhere to Hide** | The Knight | info/aura | Coup de pied : auras des survivants à 24 m du gen 3/4/5 s. | WIKI+NOTE | VMS | non | 2 / 1 | FAUX (PTB-comme-LIVE) | [p90 l.149](../research/batch3_perks_kill_p90.md) |
| **Oppression** | The Twins | slowdown (régression multiple) | Kick : jusqu'à 4 autres gens régressent, skill checks difficiles ; CD 45/40/35 s. | WIKI+NOTE | VMS | non | 1 / 1 | OK | [p92 l.240](../research/batch3_perks_kill_p92.md) |
| **Overcharge** | The Doctor | slowdown (régression + skill check) | Après kick : régression 85 → 130 % en 30 s ; skill check difficile ; −2/3/4 %. | WIKI | SS · U (détail) | non | 1 / 1 | OK | [p92 l.226](../research/batch3_perks_kill_p92.md) |
| **Overwhelming Presence** | The Doctor | anti-objet / info-aura / anti-exhaustion | Objet utilisé à ≤ 32 m : Exhausted 15 s ; Exhausted le plus proche révélé 2/3/4 s. | WIKI+NOTE | VMS | non | 1-2 / 1 | OK | [p96 l.75](../research/batch3_perks_kill_p96.md) |
| **Phantom Fear** | The Animatronic | info/aura | Survivant en terreur qui regarde le tueur : cri, aura 2 s ; CD 80/70/60 s. | WIKI+NOTE | VMS | non | 1 / 1 | OK | [p95 l.257](../research/batch3_perks_kill_p95.md) |
| **Pop Goes the Weasel** | The Clown | slowdown (perte instantanée au coup de pied) | 35/40/45 s après accrochage : prochain coup de pied −20 % du total. | WIKI+NOTE | VMS | non | 2 / 2 | OK (historique FAUX) | [p90 l.75](../research/batch3_perks_kill_p90.md) |
| **Predator** | The Wraith | info/aura (post-chase) | Survivant qui sème le tueur : aura 4 s ; CD 60/50/40 s. | WIKI | SS | non | 1 / 1 | OK | [p94 l.50](../research/batch3_perks_kill_p94.md) |
| **Rampage** | The Slasher | chase (anti-stun) | Jeton par casse (max 13) ; stun ou blind : Haste 1 %/jeton 13 s ; CD 30/25/20. | WIKI+NOTE | VMS | non | 1 / 1 | OK | [p96 l.341](../research/batch3_perks_kill_p96.md) |
| **Rancor** | The Spirit | endgame / info | Chaque gen : survivants crient (bruit 3 s), aura du tueur à l'Obsession ; portes : Exposed, mori. | WIKI | SS | non | 1-2 / 1 | FAUX (pas d'aura des survivants) | [p94 l.273](../research/batch3_perks_kill_p94.md) |
| **Rapid Brutality** | The Xenomorph | chase | Coup de base : +5 % Haste 8/9/10 s ; plus de Bloodlust. | WIKI | SS | non | 1 / 1 | OK | [p92 l.268](../research/batch3_perks_kill_p92.md) |
| **Ravenous** | The Krasue | endgame / Exposed | Jeton par 1er accrochage ; à 4 : tous crient, Exposed 40/50/60 s. | WIKI+NOTE | VMS | Haste en portant ; Exposed 80/85/90 s | 1 / 1 | OK (ch. 8 PTB-comme-LIVE) | [p96 l.299](../research/batch3_perks_kill_p96.md) |
| **Remember Me** | The Nightmare | endgame · obsession | Jeton par état perdu par l'Obsession (max 3/4/5) : ouverture des portes +6 s par jeton. | WIKI | SS | non | 1 / 1 | IMPRÉCIS | [p93 l.159](../research/batch3_perks_kill_p93.md) |
| **Scourge Hook: Floods of Rage** | The Onryō | scourge · info/aura | Décrochage d'un Fléau : auras des autres survivants 5/6/7 s. | WIKI | SS | non | 1 / 1 | OK | [p91 l.210](../research/batch3_perks_kill_p91.md) |
| **Scourge Hook: Hangman's Trick** | The Pig | scourge · info/aura | 4 Fléaux ; en portant : survivants à ≤ 12/14/16 m d'un Fléau ; alerte de sabotage. | WIKI+NOTE | VMS | non | 1 / 0-1 | OK | [p96 l.271](../research/batch3_perks_kill_p96.md) |
| **Scourge Hook: Jagged Compass** | The Houndmaster | scourge / info (générateur) | 4 Fléaux + crochets de décrochage ; accrochage Fléau : gen le plus avancé révélé 6/8/10 s. | WIKI | SS | non | 1 / 0-1 | IMPRÉCIS | [p94 l.136](../research/batch3_perks_kill_p94.md) |
| **Scourge Hook: Monstrous Shrine** | Générale | scourge | Cave + 4 crochets Fléau ; tueur à > 24 m : sacrifice +10/15/20 %. | WIKI | SS | rework : régression des gens 150/175/200 % | 1 / 0-1 | OK | [p93 l.297](../research/batch3_perks_kill_p93.md) |
| **Scourge Hook: Pain Resonance** | The Artist | slowdown (perte instantanée) · scourge | 4 Fléaux, 4 jetons : 1er accrochage Fléau, gen le plus avancé −10/15/20 %, cri. | WIKI+NOTE | VMS (partiel) | non | 3 / 2 | OK | [p90 l.48](../research/batch3_perks_kill_p90.md) |
| **Scourge Hook: Weeping Wounds (ex-Gift of Pain)** | Générale (ex-Cenobite) | scourge · anti-soin · slowdown (vitesse d'action) | Décroché d'un Fléau : Haemorrhage 90 s ; après soin, réparation et soin −10/13/16 %. | WIKI (nom : +NOTE) | SS (nom : VMS) | non | 1 / 1 | FAUX (Mangled inexistant) | [p91 l.237](../research/batch3_perks_kill_p91.md) |
| **Secret Project** | The First | slowdown (blocage) · stealth | Totem béni ou purifié : gen bloqué 20/25/30 s ; tout blocage = Undetectable 30 s. | WIKI+NOTE | VMS | non | 1 / 1 | OK | [p93 l.284](../research/batch3_perks_kill_p93.md) |
| **See How They Run (ex-Play With Your Food)** | Générale (ex-Shape) | chase (Haste) | Jeton par chase perdue sur l'Obsession (max 3) : Haste 3/4/5 % par jeton. | WIKI (nom : +NOTE) | SS (nom : VMS) | non | 1-2 / 1 | OK | [p95 l.299](../research/batch3_perks_kill_p95.md) |
| **Septic Touch** | The Dredge | anti-soin | Action de soin dans la terreur : Blindness + Exhausted, persistant 20/25/30 s. | WIKI+NOTE | VMS | non | 1 / 1 | IMPRÉCIS (probable) | [p96 l.131](../research/batch3_perks_kill_p96.md) |
| **Shadowborn** | The Wraith | chase (anti-lampe) | Tueur aveuglé : 6/8/10 % Haste pendant 10 s. | WIKI | SS | non | 0 / 1 | OK | [p96 l.33](../research/batch3_perks_kill_p96.md) |
| **Shattered Hope** | Générale | autre (anti-Boon) / info | Détruit les Boons ; survivants dans leur rayon révélés 6/7/8 s. | NOTE (partiel) + résumé | SS | rework : totems bloqués 16/18/20 s | 1 / 1 | OK | [p94 l.107](../research/batch3_perks_kill_p94.md) |
| **Silent Shadow** | The Slasher | stealth · endgame | Undetectable 11/12/13 s à chaque accrochage ; permanent une fois les portes alimentées. | WIKI+NOTE | VMS | non | 2 / 1 | OK | [p93 l.229](../research/batch3_perks_kill_p93.md) |
| **Sloppy Butcher** | Générale | anti-soin + info (flaques de sang) | Coup de base : Haemorrhage + Mangled 70/80/90 s ; flaques de sang +50/75/100 %. | WIKI | SS | non | 2 / 1 | IMPRÉCIS | [p92 l.44](../research/batch3_perks_kill_p92.md) |
| **Spies from the Shadows** | Générale | info | Corbeau envolé à ≤ 20/28/36 m : alerte au tueur ; CD 5 s. | WIKI+NOTE | VMS | 36/38/40 m, CD 3 s | 0-1 / 0 | OK | [p96 l.355](../research/batch3_perks_kill_p96.md) |
| **Spirit Fury** | The Spirit | chase | Après 4/3/2 palettes cassées : la palette du prochain stun est détruite. | WIKI | SS · U (détail) | non | 1 / 1 | OK | [p93 l.90](../research/batch3_perks_kill_p93.md) |
| **Starstruck** | The Trickster | Exposed (portage) | En portant : survivants dans la terreur Exposed ; persiste 26/28/30 s ; CD 60 s. | WIKI | SS | non | 2 / 2 | OK | [p92 l.72](../research/batch3_perks_kill_p92.md) |
| **Stridor** | The Nurse | info (audio) | Gémissements +30/40/50 %, respiration +15/20/25 %. | WIKI | SS | non | 1 / 0-1 | OK | [p96 l.47](../research/batch3_perks_kill_p96.md) |
| **Superior Anatomy** | The Mastermind | chase (anti-fenêtre) | Vault rapide à ≤ 12 m du tueur : son prochain vault +30/35/40 % ; CD 25 s. | WIKI+NOTE | VMS | actif 10 s, CD 20 s | 1 / 1 | PTB-comme-LIVE (partiel) | [p94 l.233](../research/batch3_perks_kill_p94.md) |
| **Surge** | The Demogorgon | slowdown (perte instantanée) | Mise au sol par attaque de base : gens à 32 m du tueur −6/7/8 %. | WIKI | SS | non | 1,5 / 1 | FAUX (nom) | [p91 l.85](../research/batch3_perks_kill_p91.md) |
| **Surveillance** | The Pig | info/aura (générateurs) · slowdown indirect | Gens en régression surlignés ; reprise : jaune 8/12/16 s ; bruit de réparation +8 m. | WIKI | SS | non | 1 / 1 | OK | [p95 l.32](../research/batch3_perks_kill_p95.md) |
| **Terminus** | The Mastermind | endgame (anti-soin) | Portes alimentées : blessés, à terre, accrochés Broken ; persiste 35/40/45 s. | WIKI+NOTE | VMS | non | 1 / 1 | OK (verdict FAUX retiré) | [p92 l.114](../research/batch3_perks_kill_p92.md) |
| **Territorial Imperative** | The Huntress | info/aura | Entrée au sous-sol, tueur à > 24 m : aura 4/5/6 s ; CD 45 s. | WIKI | SS | non | 0-1 / 0 | OK | [p94 l.36](../research/batch3_perks_kill_p94.md) |
| **Thanatophobia** | The Nurse | slowdown (vitesse d'action) | Par survivant blessé, à terre ou accroché : réparation, purification, sabotage −1/1,5/2 % (max 16/18/20). | WIKI | SS | non | 1 / 1 | OK | [p92 l.184](../research/batch3_perks_kill_p92.md) |
| **Thrilling Tremors** | The Ghost Face | slowdown (blocage) | Au ramassage : gens non réparés bloqués 16 s ; CD 40/35/30 s. | WIKI+NOTE | VMS · U (détail) | non | 2 / 1 | OK | [p93 l.20](../research/batch3_perks_kill_p93.md) |
| **THWACK!** | The Skull Merchant | info/aura (cri) | 3 jetons, +1 par accrochage ; casse : cris à ≤ 36 m, aura 4/5/6 s. | WIKI+NOTE | VMS | non | 1 / 0-1 | OK | [p96 l.173](../research/batch3_perks_kill_p96.md) |
| **Tinkerer** | The Hillbilly | info · stealth | Chaque gen à 70 % : tueur alerté, Undetectable 12/14/16 s ; une fois par gen. | WIKI | SS | non | 2 / 1 | IMPRÉCIS | [p93 l.76](../research/batch3_perks_kill_p93.md) |
| **Trail of Torment** | The Executioner | stealth | Kick : Undetectable tant que le gen régresse ; gen visible par tous ; CD 60/45/30 s. | WIKI | SS | non | 2 / 1 | OK | [p93 l.215](../research/batch3_perks_kill_p93.md) |
| **Turn Back the Clock** | The First | slowdown (perte instantanée) | 40/50/60 s après accrochage : explose un gen à ≤ 20 m (−10 %). | WIKI+NOTE | VMS | non | 1,5 / 1 | OK | [p91 l.154](../research/batch3_perks_kill_p91.md) |
| **Ultimate Weapon** | The Xenomorph | info (cri) + aveuglement | Fouille d'un casier : survivants à 40 m crient, Blindness 30 s ; CD 55/50/45 s. | WIKI+NOTE | VMS | non | 1,5 / 1 | OK | [p91 l.224](../research/batch3_perks_kill_p91.md) |
| **Unbound** | The Unknown | chase | Survivant blessé : 24/27/30 s durant lesquelles chaque vault donne +7 % Haste 10 s. | WIKI+NOTE | VMS | 26/28/30 s ; +5 % pendant 25 s | 1 / 1 | OK (ch. 8 PTB-comme-LIVE) | [p96 l.201](../research/batch3_perks_kill_p96.md) |
| **Undone** | The Unknown | slowdown (perte instantanée + blocage) | Checks ratés : jetons ; prochain kick : −1 % et 1 s de blocage par jeton ; CD. | WIKI | SS · U (détail) | rework : jetons par accrochage, −8/9/10 % | 1 / 1 | OK partiel (ch. 8 PTB-comme-LIVE) | [p96 l.215](../research/batch3_perks_kill_p96.md) |
| **Unforeseen** | The Unknown | stealth | Kick : terreur (32 m) transférée au gen, tueur Undetectable 22/26/30 s ; CD 30 s. | WIKI | SS | non | 1-2 / 1 | OK | [p95 l.130](../research/batch3_perks_kill_p95.md) |
| **Unnerving Presence** | The Trapper | slowdown (skill-checks) | Dans la terreur, soin/réparation : checks +10 %, zone de réussite −40/50/60 %. | WIKI | SS | non | 0-1 / 0 | OK | [p94 l.178](../research/batch3_perks_kill_p94.md) |
| **Unrelenting** | Générale | chase | Récupération après attaque ratée −20/25/30 %. | WIKI+NOTE | VMS | ratées −30/35/40 %, réussies −10 % | 0-1 / 0-1 | OK | [p96 l.369](../research/batch3_perks_kill_p96.md) |
| **Wandering Eye** | The Krasue | info/aura | Début de poursuite : autres blessés à ≤ 20 m révélés 5 s ; CD 40/35/30 s. | WIKI+NOTE | VMS | non | 1 / 0-1 | OK | [p96 l.313](../research/batch3_perks_kill_p96.md) |
| **Weave Attunement** | The Lich | anti-objets · info/aura | Objets vidés tombent ; auras des objets et survivants à 12 m ; ramassage : Oblivious. | WIKI | SS | non | 1 / 1-2 | OK | [p95 l.158](../research/batch3_perks_kill_p95.md) |
| **Whispers** | Générale | info/aura (détection de proximité) | Tueur alerté si un survivant est à ≤ 48/40/32 m. | WIKI+NOTE | VMS (partiel) | ≤ 28/26/24 m ; +5 % Haste sinon | 1 / 0-1 | OK | [p94 l.22](../research/batch3_perks_kill_p94.md) |
| **Zanshin Tactics** | The Oni | info/aura (map + palette) | Auras palettes et fenêtres à 32 m ; lâcher une palette révèle le survivant 3/4/5 s. | WIKI | SS | non | 0-1 / 0 | OK | [p94 l.326](../research/batch3_perks_kill_p94.md) |

---

## 4. Principales corrections de valeurs par rapport à la version 1

Lignes dont l'effet ou le statut a changé de façon utile en jeu (la version 1 reprenait souvent le seed ou un résumé de recherche obsolète) :

- **Survivant** : Built to Last 14/12/10 s (et non 12/10/8 s) ; Ace in the Hole 1er add-on ≤ Ultra Rare, 2e à 50/75/100 % ; Boon: Dark Theory +3 % ; Adrenaline 4 s (conflit résolu, note 10.1.0) ; Windows of Opportunity sans cooldown en LIVE ; Breakout Haste 6/8/10 % (CONFLICT-P25-01 résolu) ; Dead Hard = Endurance 0,5 s ; Self-Care sans bonus d'efficacité des médikits ; Boon: Circle of Healing révèle l'aura **des blessés** ; Boon: Steadfast montre l'aura des gens concernés ; Tenacity bloque la lecture de votre aura à terre ; Fast Track +5 % (note 9.6.0) ou 5 charges (wiki) par jeton (CONFLICT-P27-03) ; Low Profile relançable ; Exultation conserve l'objet amélioré ; Off the Record : l'action conspicuous n'annule que l'Endurance, la désactivation aux portes reste en conflit (CONFLICT-L2P23-04).
- **Tueur** : Knock Out LIVE = Hindered 5 % 3/4/5 s après un lâcher de palette (la version 1 décrivait l'ancienne version d'avant 8.6.0, limitation d'aura du survivant à terre) ; Terminus persiste 35/40/45 s ; Eruption −10 %, cri, aura 8/10/12 s, CD 30 s ; Dead Man's Switch CD 50 s (VP) ; Ultimate Weapon se déclenche à la fouille d'un casier (40 m) ; Hysteria 30/35/40 s, CD 20 s ; Hex: Blood Favour 24/28/32 m, toute perte d'état de santé ; Machine Learning 8 % ; Unbound 24/27/30 s, +7 % 10 s ; Whispers 48/40/32 m ; Leverage vise le sauveteur ; Monitor & Abuse sans écart code/description depuis le rework 9.2.0 ; Batteries Included sans désactivation confirmée aux portes.

---

## 5. Archétypes de builds survivant — HEURISTIC

> **Tout ce chapitre est HEURISTIC** (raisonnement à partir des fiches, aucune donnée de performance, aucun taux de victoire). Depuis la re-vérification, les 176 perks survivant sont au moins **SS** ; la confiance est indiquée entre parenthèses, et « · U » signale un détail resté UNCERTAIN dans la fiche. Les notes entre crochets `[x]` sont les notes 0-3 HEURISTIC de la fiche pour l'archétype concerné. Les cumuls de bonus identiques sont soumis aux Diminishing Returns 9.6.0 (100 / 50 / 25 %…, FACT audit) ; **quels** modificateurs y sont soumis n'est pas dans les notes de patch (le manuel du jeu 9.6.1 les listerait, selon l'audit, mais n'a pas été consulté), donc chaque DR cité ici est une **HYPOTHESIS**.
>
> **Limites (audit §26 du 27/09/2026)** : un archétype n'est pas un build « recommandé » : aucun taux de victoire, aucune donnée d'usage. Les quatre perks d'un archétype ne sont pas testées ensemble ; les listes « CONTRE QUOI / CAS D'ÉCHEC » ne sont pas exhaustives. Un joueur qui garde un seul archétype quel que soit le tueur prend une habitude rigide : l'archétype se choisit selon le rôle dans l'équipe (SoloQ/SWF) et le style de jeu, puis s'adapte après la partie (écran de fin, `PERK_DEDUCTION.md` §6).
> Marque **[PTB]** = perk modifiée au PTB 10.2.0 : build à revoir à la sortie de 10.2.0.
>
> **Ajustements de la version 2** : Knock Out retiré des menaces « anti-slug » et « aura du survivant à terre » (effet d'avant 8.6.0) ; avertissements ⚠ levés pour Dead Hard, Breakout, Unbreakable, Kindred, NOED, Forced Penance, Mindbreaker, Hex: The Third Seal, Iron Grasp, Mad Grit, Lightborn (désormais vérifiées) ; la désactivation de Will to Live par action conspicuous est confirmée ; Off the Record, Adrenaline, Clairvoyance et Deliverance précisés.

### 5.1 Chase — Lithe · Windows of Opportunity [PTB] · Parental Guidance · Lucky Break
Perks : Lithe (SS · U) [3] · Windows of Opportunity (SS) [3] · Parental Guidance (SS) [2] · Lucky Break (SS · U) [2].
- **POURQUOI** : Windows montre en permanence, sans cooldown, palettes, fenêtres et murs cassables à 24/28/32 m ; Lithe convertit un saut rapide (rushed vault) en +50 % Haste 3 s pour atteindre la tile repérée (synergie citée par les deux fiches). Parental Guidance (sans griffures, sang ni gémissements 5/6/7 s après un stun, tout moyen) et Lucky Break (sans griffures ni sang quand blessé, 40/50/60 s au total) aident à casser la ligne après le contact.
- **QUAND** : cartes riches en fenêtres ; joueur qui connaît mal les cartes procédurales ; tueurs M1 qui pistent aux traces.
- **CONTRE QUOI** : tueurs qui suivent griffures et sang ; tueurs anti-palette (Brutal Strength, Enduring) : Lithe ne dépend pas des palettes.
- **CAS D'ÉCHEC** : Blight, Nurse (mobilité : la distance gagnée ne compte pas, fiches Lithe et Windows) ; zones mortes sans fenêtre ; Lithe exige un vrai saut rapide (le saut moyen est exclu par le texte wiki, point UNCERTAIN) ; tueurs à aura ou Undetectable (Lucky Break sans effet) ; Lithe est une perk d'Exhaustion : pas de seconde (Sprint Burst, Dead Hard…). Five Moves Ahead ferait doublon avec Windows en LIVE (fiche) ; au PTB 10.2.0, Windows ne montrerait plus que les fenêtres et Five Moves Ahead que les palettes : elles deviendraient complémentaires.

### 5.2 Information — Spine Chill [PTB] · Alert · Inner Focus · Empathy
Perks : Spine Chill (SS) [info 2] · Alert (SS) [2] · Inner Focus (SS) [3] · Empathy (SS) [2].
- **POURQUOI** : répond à quatre questions sans vocal. Le tueur me regarde-t-il (Spine Chill, ≤ 36 m, ligne de vue dégagée) ? Où casse-t-il ou kicke-t-il (Alert, aura 3/4/5 s, aucun signal sonore) ? Qui vient d'être touché par le tueur (Inner Focus, aura du tueur 6/8/10 s + griffures des alliés) ? Où sont les blessés et mourants (Empathy, 64/96/128 m) ?
- **QUAND** : SoloQ ; tueurs à slowdown par coups de pied (Pop, Call of Brine, Eruption : chaque kick déclenche Alert).
- **CONTRE QUOI** : tueurs qui tournent entre plusieurs gens ; tueurs qui cachent leur approche sans être Undetectable.
- **CAS D'ÉCHEC** : Undetectable (Beast of Prey, Insidious, Dark Devotion : Alert bloquée selon la fiche, HYPOTHESIS) ; Blindness (Septic Touch, Mindbreaker, Hex: The Third Seal) coupe les auras ; tueurs qui ne cassent rien et ne kickent pas. Aucun apport direct en chase ni en soin.

### 5.3 Générateurs — Potential Energy · Corrective Action · Boon: Steadfast · Repressed Alliance
Perks : Potential Energy (VMS partiel) [gen 2] · Corrective Action (SS) [2] · Boon: Steadfast (VMS) [2] · Repressed Alliance (VMS) [1, macro 2].
- **POURQUOI** : Potential Energy stocke 10/15/20 % à poser d'un coup sur un gen menacé ; Steadfast (24 m) divise la régression par deux, donne +8/9/10 % de réparation et montre aux survivants de la zone l'aura des gens concernés ; Corrective Action transforme les skill checks ratés des alliés en Good (pas d'explosion) ; Repressed Alliance bloque le gen 15 s quand le tueur arrive (après 40/35/30 s de réparation, en réparant seul).
- **QUAND** : 3-gen défensif ; tueurs à régression (Hex: Ruin, Call of Brine, Pop Goes the Weasel) ; équipes qui réparent à plusieurs.
- **CONTRE QUOI** : régression passive et coups de pied ; Pain Resonance (fiche tueur : ne pas laisser un gen très avancé seul au moment d'un accrochage ; Potential Energy permet de le finir).
- **CAS D'ÉCHEC** : Shattered Hope (détruit le Boon) ; Potential Energy perd **tous** ses jetons à la perte d'un état de santé par n'importe quel moyen, et un skill check raté coûte des jetons (ou −10 % de régression au maximum de jetons) ; Corrective Action ne sert à rien en réparant seul ; Repressed Alliance bloque aussi les alliés ; DR entre bonus de réparation (HYPOTHESIS).

### 5.4 Soin — Botany Knowledge · Self-Care · Bite the Bullet · Empathy
Perks : Botany Knowledge (VMS partiel) [soin 3] · Self-Care (SS · U) [2] · Bite the Bullet (SS) [2] · Empathy (SS) [2].
- **POURQUOI** : autonomie (Self-Care, auto-soin à 25/30/35 % de la vitesse normale), vitesse (Botany, +30/40/50 %, sans malus d'efficacité des objets depuis 9.0.0), discrétion (Bite the Bullet : soin silencieux, raté sans bruit), repérage des blessés et mourants (Empathy). Un seul bonus de vitesse de soin « identique » (Botany) pour limiter les DR ; We'll Make It [PTB] / Empathic Connection [PTB] en plus seraient probablement réduits (HYPOTHESIS, fiches).
- **QUAND** : SoloQ sans soigneur fiable ; grandes cartes ; tueurs qui ne reviennent pas vite.
- **CONTRE QUOI** : tueurs M1 où chaque état de santé compte.
- **CAS D'ÉCHEC** : A Nurse's Calling (aura des soigneurs à 28/30/32 m, VMS) annule la discrétion ; Sloppy Butcher (Haemorrhage + Mangled 70/80/90 s), Coulrophobia (−20/25/30 % dans la terreur), Septic Touch (Blindness + Exhausted) ; Broken (Terminus, Forced Penance) ; tueurs « one-shot », Nurse, Blight : un auto-soin Self-Care dure ~46 s au rang III et ~64 s au rang I (soin de base 16 s [audit] ÷ 35 % ou 25 %, sans autre bonus ; calcul HYPOTHESIS dans la fiche), soit à peu près le temps d'un gen seul (90 s) à moitié ou aux deux tiers : il coûte souvent plus que ce qu'il rapporte contre ces tueurs (fiche Self-Care ; comparaison HEURISTIC). Le bonus « médikits +10/15/20 % » n'est pas dans le texte LIVE : ne pas compter dessus.

### 5.5 Altruisme (décrochage, relevage) — Reassurance · Babysitter · We'll Make It [PTB] · We're Gonna Live Forever
Perks : Reassurance (SS) [endgame 3] · Babysitter (VMS) [anti-tunnel 2] · We'll Make It (VMS) [soin 3] · We're Gonna Live Forever (SS · U) [soin 2, anti-tunnel 2].
- **POURQUOI** : Reassurance met le sacrifice (et les skill checks de lutte) en pause 20/25/30 s pour choisir le moment du sauvetage ; Babysitter donne l'aura du tueur 8 s et efface griffures et sang du décroché (+10 % de force de Haste 20/25/30 s) ; We'll Make It soigne les autres +100 % pendant 30/60/90 s après un décrochage ; WGLF relève +100 % et donne Endurance 6/8/10 s (une fois toutes les 30 s).
- **QUAND** : rôle de sauveteur désigné ; tueurs qui campent ou patrouillent près du crochet.
- **CONTRE QUOI** : camp, proxy-camp, tueur qui revient au crochet.
- **CAS D'ÉCHEC** : Make Your Choice (sauveteur Exposed 40/50/60 s si le tueur est à plus de 32 m) ; Leverage (le sauveteur soigne 20/25/30 % plus lentement 60 s) ; Starstruck ; tunnel immédiat (We'll Make It rang I, 30 s, trop court, fiche) ; slug ; l'approche à 6 m pour Reassurance peut vous faire mettre à terre ; DR We'll Make It + WGLF sur la vitesse de relève (HYPOTHESIS).

### 5.6 Anti-tunnel — Will to Live · Off the Record · Deliverance · Lithe
Perks : Will to Live (SS) [anti-tunnel 3] · Off the Record (VMS partiel · U) [3] · Deliverance (VMS) [1] · Lithe (SS · U) [1].
- **POURQUOI** : fenêtres de protection qui se recouvrent après le décrochage (fiche Will to Live). Will to Live : stun 4 s si le tueur vous saisit ou vous ramasse dans les 40/50/60 s. Off the Record : 30/35/40 s d'aura cachée, de silence, sans griffures, avec Endurance. Deliverance : auto-décrochage garanti en 1re phase de crochet après un sauvetage sûr. Lithe : relance la chase.
- **QUAND** : tueurs qui tunnel ; SoloQ où personne ne prend de coup pour vous.
- **CONTRE QUOI** : tunnel juste après les protections de base de décrochage (10.1.0 : Endurance, 10 % Haste, Elusive 10 s, audit).
- **CAS D'ÉCHEC** : le tueur slugge ou attend la fin de la fenêtre ; une action conspicuous (réparer, soigner…) coupe Will to Live (confirmé par la page wiki) et l'Endurance d'Off the Record (l'aura cachée et le silence restent) ; portes alimentées = Will to Live inactive (Off the Record aussi selon le wiki, mais la note 9.2.0 dit l'inverse : CONFLICT-L2P23-04) ; Deliverance rend Broken 160/140/120 s et ne marche ni en 2e phase de crochet ni en dernier survivant.

### 5.7 Anti-slug — Tenacity · Boon: Exponential · Soul Guard · We're Gonna Live Forever
Perks : Tenacity (VMS) · Boon: Exponential (SS · U) [soin 2] · Soul Guard (SS) · We're Gonna Live Forever (SS · U). Alternative : Unbreakable (VMS : une fois par épreuve, mises à terre par le tueur seulement, récupération +25/30/35 %).
- **POURQUOI** : à terre, Tenacity (ramper en récupérant, +30/40/50 %, gémissements −75 %, aura illisible par le tueur) mène au Boon ; Exponential (24 m) donne +90/95/100 % de récupération et la relève complète seule ; Soul Guard donne Endurance 4/6/8 s quand vous êtes soigné ou relevé (et l'auto-relève sous Cursed) ; WGLF relève les autres deux fois plus vite.
- **QUAND** : tueurs qui slugguent (Infectious Fright, Forced Hesitation) ; menace de 4-slug.
- **CONTRE QUOI** : slug en fin de chase, slug de fin de partie.
- **CAS D'ÉCHEC** : Shattered Hope détruit le Boon et révèle les survivants dans son rayon ; tueur qui ramasse tout de suite ; Soul Guard sans Hex du tueur perd son effet Cursed, et son CD de 30 s limite le cumul avec WGLF (fiche) ; Deep Wound déjà actif = Endurance inutile.

### 5.8 Fin de partie — Adrenaline · No One Left Behind [PTB] · Reassurance · Clairvoyance
Perks : Adrenaline (VMS · U) [endgame 3] · No One Left Behind (VMS partiel) [2] · Reassurance (SS) [3] · Clairvoyance (VMS) [2].
- **POURQUOI** : à l'alimentation des portes, Adrenaline rend un état de santé et +50 % Haste **4 s** (depuis 10.1.0), même en étant Exhausted ; NOLB accélère le soin des autres et les décrochages (+50/75/100 %) et renforce la Haste de décrochage ; Reassurance contre le face-camp final ; Clairvoyance montre interrupteurs, trappe, gens, coffres et crochets à 64 m pendant 10/11/12 s.
- **QUAND** : parties qui arrivent jusqu'aux portes.
- **CONTRE QUOI** : No Way Out, Blood Warden, NOED.
- **CAS D'ÉCHEC** : Terminus rend Broken aux portes (persiste 35/40/45 s après l'ouverture) et **empêche le soin d'Adrenaline** (fiche tueur, 9.5.0) ; partie perdue avant les portes ou 3-gen = 3 perks sans valeur ; Clairvoyance exige un totem béni ou purifié, les mains vides et le bouton maintenu ; le report d'Adrenaline quand on est accroché n'est pas décrit sur la page wiki (UNCERTAIN).

### 5.9 SoloQ — Will to Live · Windows of Opportunity [PTB] · Deliverance · Empathy
Perks : Will to Live (SS) [SoloQ 3] · Windows of Opportunity (SS) [3] · Deliverance (VMS) [3] · Empathy (SS) [2]. Alternative : Kindred [PTB] (VMS partiel, SoloQ 3 dans sa fiche : auras des survivants pendant un accrochage, tueur révélé à ≤ 8/12/16 m du crochet ; 14/15/16 m au PTB).
- **POURQUOI** : sans vocal, prendre des perks qui ne dépendent pas des coéquipiers : anti-tunnel autonome (Will to Live), auto-décrochage (Deliverance), repérage des tiles (Windows), position des blessés (Empathy).
- **QUAND** : file solo.
- **CONTRE QUOI** : tunnel et crochets mal gérés par l'équipe.
- **CAS D'ÉCHEC** : Deliverance exige d'avoir fait un décrochage sûr avant d'être accroché, et ne sert qu'en 1re phase de crochet ; slug ; joueur expert des cartes (Windows perd sa valeur) ; rework PTB de Windows.

### 5.10 SWF — Shoulder the Burden [PTB] · Breakout · Teamwork: Throw Down · Teamwork: Full Circuit
Perks : Shoulder the Burden (VMS partiel) [SWF 3] · Breakout (SS) [2] · Teamwork: Throw Down (VMS ; aura VP, absente du wiki) [2] · Teamwork: Full Circuit (VMS) [2].
- **POURQUOI** : le vocal rend exploitables les effets à deux. Full Circuit : +5 % et zone Good +15/20/25 % par allié sur le gen. Throw Down : Endurance 6/8/10 s aux autres survivants blessés à 24 m après un aveuglement ou un stun de palette (et l'aura du tueur selon la note 9.1.0, pas selon le wiki : CONFLICT-2-P28-03). Breakout : Haste 6/8/10 % à 5 m du tueur qui porte, lutte du porté +25 % (16 s → 12,8 s). Shoulder the Burden : prendre un état de crochet à la place d'un allié.
- **QUAND** : équipe coordonnée avec lampes et palettes.
- **CONTRE QUOI** : tunnel d'un joueur (Shoulder the Burden) ; portages longs (Breakout).
- **CAS D'ÉCHEC** : Starstruck (« punit fortement les saves SWF », fiche) ; Hex: Two Can Play (aveugle le flasheur) ; Lightborn, Iron Grasp, Mad Grit ; Shoulder the Burden rend Exposed 60/50/40 s (au PTB : blessé, Broken 160/140/120 s et désactivée pour toute l'équipe) ; DR entre Full Circuit et Teamwork: Soft-Spoken (+5 % chacun, HYPOTHESIS) ; les réparations groupées subissent la pénalité coop (85 / 70 / 55 % par personne à 2 / 3 / 4, FACT SS audit) que +5 % ne compense pas. **Contradiction à arbitrer** avec `PERK_DEDUCTION.md` §5 (réflexes n° 2 « 1 survivant par gen » et n° 13 « ne pas suivre une chase de près ») : ce build suppose au contraire des gens groupés et un suivi du porteur ; l'abandonner dès qu'un signal de Starstruck, Mad Grit ou Infectious Fright apparaît (`PERK_DEDUCTION.md` §3.B3).

### 5.11 Apprentissage — Windows of Opportunity [PTB] · Spine Chill [PTB] · Botany Knowledge · Reassurance
Perks : les quatre sont de difficulté **1** dans leur fiche (passives ou déclenchement simple) : Windows (SS), Spine Chill (SS), Botany Knowledge (VMS partiel), Reassurance (SS).
- **POURQUOI** : elles montrent ce que le débutant ne voit pas encore : où sont les tiles (Windows), quand le tueur regarde (Spine Chill), et elles réduisent le coût des erreurs (soins plus rapides, pause du crochet pour apprendre le timing du sauvetage).
- **QUAND** : premières parties, ou nouvelles cartes.
- **CONTRE QUOI** : les erreurs de débutant (chercher les palettes en chase, rester sur un gen quand le tueur approche).
- **CAS D'ÉCHEC** : Windows ne sert plus quand on connaît les cartes (fiche) ; Spine Chill exige une ligne de vue dégagée en LIVE ; deux perks reworkées au PTB 10.2.0. Au PTB, Slippery Meat est présentée comme anti-tunnel pour débutants (PTB, non LIVE).

### 5.12 Régularité — Distortion · Windows of Opportunity [PTB] · Sprint Burst · Empathy
Perks : Distortion (SS) · Windows of Opportunity (SS) · Sprint Burst (VMS) · Empathy (SS). Critère : notes HEURISTIC non nulles sur le plus d'axes, parmi les 176 perks (toutes re-vérifiées). Seule Distortion atteint 8/9 ; **treize** perks sont à égalité à 7/9 (Windows of Opportunity, Sprint Burst, Resilience [PTB], Made for This, We'll Make It, Plot Twist, Boon: Shadow Step, Empathy, Bound by Obsession, Lucky Break, For the People, Inner Focus, Fruits of Your Labor) : le choix des trois autres parmi elles est **arbitraire** (HEURISTIC : pas de doublon de rôle avec Distortion, perks sans condition de coéquipier). Elles apportent un peu de valeur dans la plupart des parties.
- **POURQUOI** : peu de conditions de déclenchement. Distortion masque l'aura et les griffures 8/10/12 s et **signale** qu'un effet d'aura existe (jetons rechargés en poursuite) ; Sprint Burst donne 2 s de +50 % Haste **au début d'une course** (pas au contact : il se déclenche dès qu'on court, d'où la gestion de la marche) ; Windows et Empathy fonctionnent en permanence.
- **QUAND** : pour grimper sans connaître le tueur à l'avance.
- **CONTRE QUOI** : tueurs à lecture d'aura (BBQ, Lethal Pursuer, Nowhere to Hide, A Nurse's Calling).
- **CAS D'ÉCHEC** : Distortion ne se déclenche jamais contre un tueur sans aura ; Sprint Burst gâchée si on court sans raison, et déclenchée trop tard contre les tueurs furtifs (fiche) ; aucune perk n'excelle dans un axe : contre un tueur précis, un build spécialisé fait mieux (HEURISTIC).

---

## 6. Limites et reprise

- **Aucune ligne n'a d'effet principal UNCERTAIN.** 33 lignes gardent un détail UNCERTAIN (« · U ») : voir la fiche avant de citer ce détail. Conflits encore ouverts cités ici : CONFLICT-L2P23-04 (Off the Record aux portes), CONFLICT-P27-03 (Fast Track : 5 % ou 5 charges), CONFLICT-2-P28-03 (aura de Teamwork: Throw Down), CONFLICT-L3-94-03 (Distressing, rang II).
- **177 lignes sur 321 sont SS** (page wiki seule, sans note officielle concordante) : la page wiki reste une source secondaire.
- Le périmètre (321 perks) est celui du guide seed : il n'a pas été comparé à la liste officielle des perks LIVE 10.1.2a.
- À la sortie de 10.2.0 (estimée début octobre 2026, non officiel) : relire les notes LIVE de 10.2.0, puis passer en LIVE les 58 lignes modifiées au PTB (les valeurs PTB peuvent encore changer) et revoir les builds marqués [PTB].
- Les notes 0-3, les menaces et les builds sont **HEURISTIC** : aucune analyse de VOD ni statistique de victoire n'a été faite.
