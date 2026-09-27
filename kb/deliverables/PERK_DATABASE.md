# PERK DATABASE — index consolidé des perks (livrable §51-5)

> **Version de référence : LIVE 10.1.2a** (hotfix serveur du 17/09/2026, chapitre 41). **État au 27/09/2026.**
> Le **PTB 10.2.0** (15 → 21/09/2026) n'est **pas LIVE** : la colonne « PTB 10.2.0 » ne signale qu'une modification annoncée, jamais une valeur en jeu.
>
> **Avertissement.** Les valeurs de cet index ont été vérifiées **seulement via des résumés WebSearch** (confiance **STRONG_SECONDARY au mieux**, sauf quand l'audit phase 0 `kb/seed/audit_phase0.txt` avait lu les notes officielles). Aucune page n'a été lue en entier. Les lignes **UNCERTAIN** (Vérif. = NON) reprennent le texte du guide seed et **n'ont pas été re-vérifiées faute de quota** WebSearch : ne pas les citer comme des faits.
>
> **Ce fichier ne réécrit pas les fiches.** Il résume en une ligne chaque fiche de `kb/research/batch2_perks_surv_p23…p30.md` (176 perks survivant) et `kb/research/batch3_perks_kill_p90…p96.md` (145 perks tueur). En cas de doute, la fiche source (colonne « Fichier », avec numéro de ligne) fait foi. Aucune valeur n'a été ajoutée ici.

## Légende

| Colonne | Valeurs |
|---|---|
| **Vérif.** | **WEB** = effet LIVE vérifié par WebSearch dans les lots 2-3 · **AUDIT** = recoupé seulement par l'audit phase 0 (notes officielles citées) · **WEB+AUDIT** = les deux · **NON** = texte du seed, non re-vérifié (quota épuisé). « partiel » = seule une partie de l'effet est vérifiée (détail dans la fiche). « NON (PTB : WEB) » = LIVE non vérifié, mais changement PTB vu dans un résumé. « NON (nom : AUDIT) » = seul le nom / renommage est confirmé. |
| **Conf.** | Niveau de confiance recopié de la fiche : **VP** = VERIFIED_PRIMARY (notes officielles, via résumé ou via l'audit) · **VMS** = VERIFIED_MULTI_SOURCE · **SS** = STRONG_SECONDARY · **U** = UNCERTAIN. « SS / U » = cœur de l'effet SS, valeurs secondaires UNCERTAIN. |
| **PTB 10.2.0** | **oui** = modification PTB vue dans ≥ 1 résumé (étiquette PTB, non LIVE) · **oui?** = seul le guide seed l'annonce, non vérifié · **non?** = absente des résumés PTB lus (ne prouve rien : la liste des 58 perks modifiées n'a jamais été lue en entier) · **?** = non recherché. |
| **Notes 0-3** (survivant) | SoloQ, SWF, Chase, Macro, Info, Anti-tunnel, Soin, Gen, Endgame. **HEURISTIC** (avis de l'agent du lot, pas des données), recopiées telles quelles depuis la ligne « Valeur (HEURISTIC, 0-3) » de chaque fiche. |
| **Menace SoloQ / SWF** (tueur) | Note 0-3 **HEURISTIC** recopiée de la fiche (« 1-2 » = fourchette de la fiche). |
| **Indice observable** (tueur) | Ce que le survivant peut voir ou entendre : **HEURISTIC** (résumé de la rubrique de la fiche). |
| **Écart seed** | Verdict de la fiche sur le guide seed : **OK** · **IMPRÉCIS** · **FAUX** · **PTB-comme-LIVE** · **NON VÉRIF.** (non vérifiable cette session) · « OK partiel » = la partie vérifiée est correcte, le reste est NON VÉRIF. |
| **Fichier** | `pNN l.X` = fiche dans `kb/research/batch2_perks_surv_pNN.md` ou `batch3_perks_kill_pNN.md`, en-tête à la ligne X. |

Abréviations d'effet : « gen » = générateur ; « terreur » = rayon de terreur ; « CD » = temps de recharge ; « Fléau » = Scourge Hook. Les triplets « a/b/c » sont les valeurs de rang I/II/III.

---

## 1. Compteurs et contrôles

### 1.1 Complétude (comptage des en-têtes `###` des fiches)

| Lot | Fichiers | Fiches par fichier | Total | Attendu (manifeste) | Doublons | Manquantes |
|---|---|---|---|---|---|---|
| Survivant (lot 2) | p23 → p30 | 21 + 23 + 27 + 24 + 27 + 25 + 25 + 4 | **176** | 176 | **0** | **0** |
| Tueur (lot 3) | p90 → p96 | 6 + 18 + 23 + 21 + 28 + 22 + 27 | **145** | 145 | **0** | **0** |

Contrôle fait par script : chaque en-tête de fiche correspond à une ligne du tableau (même nom), aucun nom n'apparaît deux fois, aucune perk n'apparaît à la fois côté survivant et côté tueur. Ce contrôle vérifie la cohérence avec les fiches, pas l'exhaustivité par rapport au jeu : les 176 / 145 perks sont le périmètre du guide seed, pas une liste officielle relue.

### 1.2 Statut de vérification

| Statut | Survivant | Tueur | Total |
|---|---|---|---|
| WEB (dont WEB+AUDIT, WEB partiel) | **104** (92 + 11 WEB+AUDIT + 1 partiel : Conviction) | **42** (36 + 2 WEB+AUDIT + 4 partiel/conflit : Pop Goes the Weasel, Eruption, Terminus [1 source], Hysteria) | **146** |
| AUDIT seul (dont partiel) | **5** (Head On ; partiels : Off the Record, Unbreakable, Hyperfocus, Apocalyptic Ingenuity) | **8** (Nowhere to Hide, A Nurse's Calling, Bamboozle, Call of Brine, Blood Warden ; partiels : Keep Them Waiting, Hex: Crowd Control, Coulrophobia) | **13** |
| NON (UNCERTAIN) | **67** (dont 3 avec PTB vérifié : Stake Out, Borrowed Time, Friendly Competition) | **95** | **162** |
| **Total** | **176** | **145** | **321** |

Ces chiffres concordent avec les en-têtes « Couverture web » des fichiers (survivant : 7 + 12 + 18 + 14 + 14 + 19 + 18 + 4 = 106 = 104 WEB + Stake Out + Borrowed Time ; tueur : 3 + 3 + 8 + 3 + 8 + 8 + 9 = 42).

### 1.3 Perks dont le seed était FAUX (verdict des fiches)

| Côté | Perk | Le seed dit | Fiche (LIVE 10.1.2a) | Confiance |
|---|---|---|---|---|
| Survivant | Vigil | 8 statuts, 30/35/40 % | Exhausted seul, 20/25/30 % (10.1.1) | SS |
| Survivant | Built to Last | 14/12/10 s | 12/10/8 s | SS |
| Survivant | Quick Gambit | les autres voient votre aura | **vous** voyez l'aura des autres | SS |
| Survivant | Repressed Alliance | 55/50/45 s de réparation | 40/35/30 s (10.1.1) | VMS |
| Survivant | Technician | −8 m, pénalité 5/4/3 % | −16 m, 4/3/2 % (10.1.0) — FAUX / OBSOLETE | SS |
| Survivant | Ace in the Hole | add-on « rare ou mieux », 2e à 50/75/100 % | ≤ Very Rare, 2e à 10/25/50 % | SS |
| Survivant | Boon: Dark Theory | +3 % Haste | +2 % — **FAUX probable** (1 source) | SS |
| Tueur | Nowhere to Hide | 24 → 18 m en 10.1.0 | 24 m LIVE ; 18 m = PTB 10.1.0 — **PTB-comme-LIVE** | VP (audit) |
| Tueur | Surge | « Surge (ex-Jolt) » | Surge est le nom d'origine et actuel | audit |
| Tueur | Terminus | persiste 35/40/45 s | 20/25/30 s — **FAUX probable** (1 source, UNRESOLVED) | SS |
| Tueur | Unbound, Undone, Dark Arrogance, Ravenous | valeurs du ch. 8 du seed | valeurs PTB présentées comme LIVE dans le ch. 8 (p. 96 correcte ou non vérifiable) — **PTB-comme-LIVE probable**, CONFLICT-K96-01 | U |

Total : **7 survivant** (dont 1 probable) et **7 tueur** (1 FAUX, 1 PTB-comme-LIVE prouvé, 1 FAUX probable, 4 PTB-comme-LIVE probables dans le ch. 8).

### 1.4 Perks touchées par le PTB 10.2.0 (PTB, non LIVE)

**Changement vu dans au moins un résumé (« oui ») — 27 perks :**
- Survivant (22) : Better Than New (40/45/50 %), Borrowed Time (rework), Bound by Obsession (8/9/10 %, aura 4 s), Calm Spirit (malus → +8/9/10 %), Dark Sense (buff), Do No Harm (chance de skill check), Down to the Last (rework ; contenu non vérifié), Empathic Connection (40/45/50 %), Five Moves Ahead (palettes seules), Friendly Competition (10 %, 80/85/90 s), No One Left Behind (80/90/100 %), Premonition (rework), Road Life (rework), Self-Preservation (Elusive 13/14/15 s), Shoulder the Burden (Broken, désactivée pour tous), Slippery Meat (rework), Small Game (rework), Spine Chill (rework), Stake Out (rework), This Is Not Happening (buff ; valeurs UNCERTAIN), We'll Make It (70/80/90 s), Windows of Opportunity (rework : fenêtres seules, 24 m).
- Tueur (5) : Dead Man's Switch (30/35/40 s, déclencheur 2 s), Deerstalker (3 → 4 s), Hex: Thrill of the Hunt (rework), Shattered Hope (rework ; valeurs UNCERTAIN), Undone (rework ; valeurs UNCERTAIN).

**Annoncé par le seed seulement, non vérifié (« oui? ») — 31 perks :**
- Survivant (9) : Blood Pact, Boon: Illumination, Flow State, Kindred, Pharmacy, Plunderer's Instinct, Resilience, Solidarity, Wake Up!.
- Tueur (22) : Agitation, Bitter Murmur, Dark Arrogance, Dissolution, Distressing, Dominance, Fire Up, Game Afoot, Help Wanted, Hex: Blood Favour, Hex: Nothing but Misery, Insidious, Iron Grasp, Knock Out, Machine Learning, Ravenous, Scourge Hook: Monstrous Shrine, Spies from the Shadows, Superior Anatomy, Unbound, Unrelenting, Whispers.

Sommes : survivant 22 + 9 = 31 (la fiche p25 évoque « 31 perks survivant » au PTB) ; tueur 5 + 22 = 27 ; total 58, soit le nombre annoncé de perks modifiées. **Concordance non prouvée** : la liste officielle n'a pas été lue, des annonces du seed peuvent être fausses et des perks marquées « ? » peuvent être touchées.

### 1.5 Perks renommées (ancien → nouveau nom)

| Ancien nom | Nom LIVE | Côté | Contexte (d'après la fiche) | Vérif. |
|---|---|---|---|---|
| Decisive Strike | **Will to Live** | Survivant | Perk générale depuis le retrait de la licence Halloween (janv. 2026 ; 9.4.0 selon l'audit) ; l'ancien nom reste pour les possesseurs | audit + WEB |
| Object of Obsession | **Bound by Obsession** | Survivant | Idem (9.4.0) | audit |
| Sole Survivor | **Down to the Last** | Survivant | Idem (9.4.0) | audit |
| Guardian (nom général temporaire) | **Babysitter** (rétablie) | Survivant | Nom général pendant le retrait de la licence Stranger Things, puis retour du nom d'origine ; historique du rework : CONFLICT-P27-01 | SS |
| Deadlock | **No Holds Barred** | Tueur | Départ de Hellraiser (9.0.0) ; les possesseurs du Cenobite gardent « Deadlock » | audit |
| Scourge Hook: Gift of Pain | **Scourge Hook: Weeping Wounds** | Tueur | Départ de Hellraiser | audit |
| Hex: Plaything | **Hex: Fortune's Fool** | Tueur | Départ de Hellraiser | audit |
| Save the Best for Last | **Keep Them Waiting** | Tueur | Perk de The Shape devenue générale (patch non relevé dans la fiche) | audit |
| Play With Your Food | **See How They Run** | Tueur | 9.4.0 (27/01/2026), perk devenue générale | audit |
| Dying Light | **Cull the Weak** | Tueur | 9.4.0 | audit |
| Jolt (nom intermédiaire 5.3.0 → 7.3.3) | **Surge** | Tueur | Surge = nom d'origine et actuel ; le seed inverse le sens | audit |

---

## 2. Perks survivant (176, ordre alphabétique)

Notes 0-3 = **HEURISTIC**. Les lignes **Vérif. = NON** sont **UNCERTAIN** (texte du seed).

| Perk | Propriétaire | Effet LIVE (≤ 15 mots) | Vérif. | Conf. | PTB 10.2.0 | SoloQ | SWF | Chase | Macro | Info | Anti-tunnel | Soin | Gen | Endgame | Écart seed | Fichier |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| **A Place For Us** | Kwon Tae-young | Soigner un allié : Elusive pour les deux ; Obsession soignée : 20/25/30 s. | WEB | SS | ? | 2 | 1 | 0 | 1 | 0 | 1 | 2 | 0 | 0 | OK | [p28 l.241](../research/batch2_perks_surv_p28.md) |
| **Ace in the Hole** | Ace Visconti | Objet de coffre : add-on ≤ Very Rare garanti ; second 10/25/50 %. | WEB | SS | non? | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | FAUX | [p29 l.125](../research/batch2_perks_surv_p29.md) |
| **Adrenaline** | Meg Thomas | Portes alimentées : soin d'un état, +50 % Haste (4 s ou 3 s : conflit). | WEB+AUDIT | SS | non? | 2 | 2 | 1 | 0 | 0 | 1 | 2 | 0 | 3 | OK (conflit durée) | [p23 l.69](../research/batch2_perks_surv_p23.md) |
| **Aftercare** | Jeff Johansen | Auras mutuelles avec 1/2/3 survivants après décrochage ou soin échangé. | NON | U | ? | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p26 l.272](../research/batch2_perks_surv_p26.md) |
| **Alert** | Feng Min | Action de casse ou dégât de gen du tueur : son aura 3/4/5 s. | WEB | SS | ? | 1 | 1 | 0 | 1 | 2 | 0 | 0 | 1 | 0 | IMPRÉCIS | [p25 l.195](../research/batch2_perks_surv_p25.md) |
| **Any Means Necessary** | Yui Kimura | Relève une palette tombée en 5/4/3 s ; auras des palettes tombées. | WEB | SS | ? | 1 | 2 | 2 | 1 | 1 | 1 | 0 | 0 | 0 | IMPRÉCIS | [p25 l.83](../research/batch2_perks_surv_p25.md) |
| **Apocalyptic Ingenuity** | Rick Grimes | Après 1 coffre : restaurer une palette cassée (fragile) ; auras des palettes cassées. | AUDIT (partiel) | U | ? | 1 | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | OK partiel | [p29 l.397](../research/batch2_perks_surv_p29.md) |
| **Appraisal** | Élodie Rakoto | 4 jetons : refouiller un coffre vide ; fouille +40/60/80 %. | WEB | SS | ? | 1 | 1 | 0 | 1 | 0 | 0 | 1 | 1 | 1 | OK | [p27 l.103](../research/batch2_perks_surv_p27.md) |
| **Autodidact** | Adam Francis | Checks réussis en soignant autrui : jetons ; bonus de −15 % à +60 %. | WEB | SS | non? | 1 | 1 | 0 | 0 | 0 | 0 | 2 | 0 | 0 | OK | [p26 l.42](../research/batch2_perks_surv_p26.md) |
| **Babysitter** | Steve Harrington | Décrocher : aura du tueur 8 s ; décroché sans traces, +10 % Haste 20/25/30 s. | WEB | SS | ? | 2 | 2 | 1 | 1 | 1 | 2 | 0 | 0 | 0 | OK | [p27 l.15](../research/batch2_perks_surv_p27.md) |
| **Background Player** | Renato Lyra | Un survivant ramassé : 10 s pour courir, +50 % Haste 5 s ; Exhausted. | NON | U | ? | 1 | 3 | 1 | 2 | 0 | 1 | 0 | 0 | 1 | NON VÉRIF. | [p23 l.267](../research/batch2_perks_surv_p23.md) |
| **Bada Bada Boom** | Dustin Henderson | Piège une fenêtre 40/50/60 s ; tueur qui saute : Hindered 50 % 6 s. | WEB | SS | ? | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | OK | [p28 l.189](../research/batch2_perks_surv_p28.md) |
| **Balanced Landing** | Nea Karlsson | Chute : +50 % Haste 3 s, stun de chute réduit ; Exhausted. | NON | U | ? | 2 | 2 | 2 | 0 | 0 | 1 | 0 | 0 | 1 | NON VÉRIF. | [p24 l.273](../research/batch2_perks_surv_p24.md) |
| **Bardic Inspiration** | Aestri Yazar & Baermar Uraz | Performance ≤ 15 s : alliés à 16 m renforcés 90 s selon un d20. | WEB | SS | ? | 1 | 2 | 0 | 1 | 0 | 0 | 0 | 2 | 0 | OK | [p28 l.13](../research/batch2_perks_surv_p28.md) |
| **Better Than New** | Rebecca Chambers | Allié soigné : totems, soin, coffres +12/14/16 % jusqu'au prochain coup. | WEB | SS | oui (40/45/50 %) | 1 | 1 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | OK | [p29 l.237](../research/batch2_perks_surv_p29.md) |
| **Better Together** | Nancy Wheeler | Votre gen visible par tous ; allié mis au sol : auras 20/25/30 s. | WEB | SS | non? | 2 | 0 | 0 | 1 | 1 | 0 | 0 | 1 | 0 | OK | [p29 l.173](../research/batch2_perks_surv_p29.md) |
| **Bite the Bullet** | Leon S. Kennedy | Soin silencieux ; check raté sans bruit, pénalité 3/2/1 %. | WEB | SS | ? | 1 | 1 | 0 | 0 | 0 | 0 | 2 | 0 | 0 | OK | [p27 l.131](../research/batch2_perks_surv_p27.md) |
| **Blast Mine** | Jill Valentine | Après réparation, piège un gen ; frappé : stun et aveuglement du tueur. | NON | U | ? | 1 | 1 | 0 | 1 | 1 | 0 | 0 | 1 | 0 | NON VÉRIF. | [p24 l.314](../research/batch2_perks_surv_p24.md) |
| **Blood Pact** | Cheryl Mason | Vous ou Obsession blessé : auras mutuelles ; soin mutuel = Haste 5/6/7 %. | WEB | SS | oui? (seed) | 0 | 1 | 1 | 1 | 1 | 0 | 1 | 0 | 0 | IMPRÉCIS | [p27 l.75](../research/batch2_perks_surv_p27.md) |
| **Blood Rush** | Renato Lyra | Après décrochage : annule Exhausted une fois (version suspecte). | NON (SUSPECT audit) | U | ? | 1 | 1 | 2 | 0 | 0 | 2 | 0 | 0 | 0 | NON VÉRIF. | [p27 l.260](../research/batch2_perks_surv_p27.md) |
| **Boil Over** | Kate Denson | Porté : effets de lutte +60/70/80 % ; tueur aveugle aux crochets à 16 m. | WEB | SS | ? | 1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | IMPRÉCIS | [p25 l.125](../research/batch2_perks_surv_p25.md) |
| **Bond** | Dwight Fairfield | Auras des autres survivants à 20/28/36 m. | NON | U | ? | 2 | 0 | 1 | 2 | 2 | 0 | 1 | 1 | 0 | NON VÉRIF. | [p23 l.299](../research/batch2_perks_surv_p23.md) |
| **Boon: Circle of Healing** | Mikaela Reid | Boon 24 m : soin altruiste sans médikit +50/75/100 % ; auras des blessés. | WEB | SS | non? | 2 | 2 | 0 | 2 | 1 | 0 | 3 | 1 | 0 | IMPRÉCIS | [p24 l.86](../research/batch2_perks_surv_p24.md) |
| **Boon: Dark Theory** | Yoichi Asakawa | Boon 24 m : +2 % Haste, persiste 2/3/4 s après la sortie. | WEB | SS | ? | 1 | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | FAUX (probable) | [p27 l.171](../research/batch2_perks_surv_p27.md) |
| **Boon: Exponential** | Jonah Vasquez | Boon 24 m : récupération au sol +90/95/100 %, relève complète seule. | WEB | SS | ? | 2 | 1 | 0 | 1 | 0 | 0 | 2 | 0 | 1 | OK | [p24 l.114](../research/batch2_perks_surv_p24.md) |
| **Boon: Illumination** | Alan Wake | Boon : auras des coffres en bleu, totems un peu plus rapides. | NON | U | oui? (seed) | 1 | 1 | 0 | 1 | 1 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p28 l.336](../research/batch2_perks_surv_p28.md) |
| **Boon: Shadow Step** | Mikaela Reid | Boon : griffures supprimées, auras cachées au tueur ; persiste 2/3/4 s. | WEB | SS | ? | 1 | 2 | 1 | 2 | 0 | 1 | 1 | 1 | 0 | OK | [p24 l.100](../research/batch2_perks_surv_p24.md) |
| **Boon: Steadfast** | Aurora Stardotter | Boon 24 m : régression −50 %, réparation +8/9/10 % ; effet d'aura ambigu. | WEB | SS | ? | 1 | 2 | 0 | 2 | 0 | 0 | 0 | 2 | 0 | OK (IMPRÉCIS) | [p24 l.128](../research/batch2_perks_surv_p24.md) |
| **Borrowed Time** | Bill Overbeck | Décrocher un allié prolonge son Endurance (6/8/10 s) et sa Haste. | NON (PTB : WEB) | U | oui (rework) | 2 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 1 | NON VÉRIF. | [p25 l.333](../research/batch2_perks_surv_p25.md) |
| **Botany Knowledge** | Claudette Morel | Vitesse de soin +30/40/50 %. | WEB | SS | non? | 2 | 2 | 0 | 1 | 0 | 0 | 3 | 1 | 0 | OK | [p24 l.142](../research/batch2_perks_surv_p24.md) |
| **Bound by Obsession (ex-Object of Obsession)** | Générale (ex-Laurie) | Aura du tueur quand il lit la vôtre ; soin/réparation/purification +2/4/6 %. | WEB+AUDIT | SS | oui (8/9/10 %) | 1 | 1 | 1 | 1 | 2 | 0 | 1 | 1 | 0 | IMPRÉCIS | [p26 l.182](../research/batch2_perks_surv_p26.md) |
| **Breakdown** | Jeff Johansen | Décroché : le crochet casse ; aura du tueur 4/5/6 s. | NON (revert : AUDIT) | U | ? | 1 | 1 | 0 | 1 | 1 | 1 | 0 | 0 | 0 | NON VÉRIF. | [p26 l.286](../research/batch2_perks_surv_p26.md) |
| **Breakout** | Yui Kimura | À 5 m du tueur qui porte : Haste pour vous ; lutte du porté +25 %. | WEB | SS | ? | 1 | 2 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | OK (Haste NON VÉRIF.) | [p25 l.111](../research/batch2_perks_surv_p25.md) |
| **Buckle Up** | Ash Williams | En relevant un allié : aura du tueur ; puis Haste et sans griffures. | NON | U | ? | 1 | 1 | 0 | 1 | 1 | 0 | 1 | 0 | 0 | NON VÉRIF. | [p26 l.328](../research/batch2_perks_surv_p26.md) |
| **Built to Last** | Felix Richter | 12/10/8 s en casier, objet vide : recharge 99/66/33 % ; 3 usages. | WEB | SS | ? | 1 | 1 | 0 | 1 | 0 | 0 | 1 | 1 | 0 | FAUX | [p25 l.13](../research/batch2_perks_surv_p25.md) |
| **Calm Spirit** | Jake Park | Corbeaux calmes, jamais de cri ; coffres et totems 40/35/30 % plus lents. | WEB | SS | oui (+8/9/10 %) | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 0 | OK | [p29 l.77](../research/batch2_perks_surv_p29.md) |
| **Camaraderie** | Steve Harrington | Accroché en lutte, allié à 16 m : pause du compteur 26/30/34 s. | WEB | SS | non? | 1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 1 | OK | [p29 l.189](../research/batch2_perks_surv_p29.md) |
| **Champion of Light** | Alan Wake | Lampe : +50 % vitesse en visant ; aveuglement = Hindered 20 % 6 s. | NON | U | ? | 1 | 1 | 1 | 0 | 0 | 1 | 0 | 0 | 0 | NON VÉRIF. | [p25 l.209](../research/batch2_perks_surv_p25.md) |
| **Change of Plan** | Dustin Henderson | En casier, 1 jeton : toolbox → médikit même rareté (80/90/100 %). | WEB | SS | non? | 2 | 2 | 0 | 2 | 0 | 0 | 2 | 1 | 0 | OK | [p30 l.66](../research/batch2_perks_surv_p30.md) |
| **Chemical Trap** | Ellen Ripley | Piège une palette tombée 40/50/60 s ; cassée : tueur Hindered 50 % 4 s. | WEB | SS | non? | 1 | 1 | 1 | 0 | 0 | 1 | 0 | 0 | 0 | OK | [p26 l.56](../research/batch2_perks_surv_p26.md) |
| **Clairvoyance** | Mikaela Reid | Après un totem, mains vides : auras des objectifs à 64 m, 10/11/12 s. | WEB | SS | ? | 1 | 0 | 0 | 1 | 2 | 0 | 0 | 1 | 2 | OK | [p27 l.144](../research/batch2_perks_surv_p27.md) |
| **Clean Break** | Taurie Cain | Après soin d'allié, activation : Broken puis soin d'un état après 75/60/45 s. | WEB+AUDIT | VMS | ? | 1 | 1 | 0 | 1 | 0 | 0 | 1 | 1 | 0 | OK | [p28 l.110](../research/batch2_perks_surv_p28.md) |
| **Come and Get Me!** | Rick Grimes | Après décrochage, activation : blessés/à terre à 24 m sans traces 10/12,5/15 s. | WEB | SS | non? | 1 | 2 | 0 | 1 | 0 | 2 | 0 | 0 | 1 | IMPRÉCIS | [p30 l.10](../research/batch2_perks_surv_p30.md) |
| **Conviction** | Michonne Grimes | Relève instantanée à ≥ 25 %, Broken ; exige d'avoir soigné un allié. | WEB (partiel) | VP (condition) / U | ? | 1 | 1 | 1 | 0 | 0 | 1 | 0 | 0 | 1 | OK partiel | [p25 l.259](../research/batch2_perks_surv_p25.md) |
| **Corrective Action** | Jonah Vasquez | Jetons ; check raté d'un allié converti en Good, son aura 6 s. | WEB | SS | ? | 2 | 1 | 0 | 1 | 0 | 0 | 1 | 2 | 0 | OK | [p27 l.157](../research/batch2_perks_surv_p27.md) |
| **Counterforce** | Jill Valentine | Purification +25 % (+25 % par totem) ; aura du totem le plus éloigné. | NON | U | ? | 1 | 1 | 0 | 1 | 1 | 0 | 0 | 0 | 1 | NON VÉRIF. | [p25 l.223](../research/batch2_perks_surv_p25.md) |
| **Cross-Examination** | Shane Wiigwaas | En terreur : « Light Marks » du tueur ; marcher dessus = Elusive 3/4/5 s. | NON | U | ? | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p25 l.248](../research/batch2_perks_surv_p25.md) |
| **Cut Loose** | Thalita Lyra | Rush vault en poursuite : sauts rapides silencieux 4/5/6 s, relançable. | WEB | SS | non? | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | IMPRÉCIS | [p29 l.285](../research/batch2_perks_surv_p29.md) |
| **Dance With Me** | Kate Denson | Sortie de casier ou saut rapide : pas de griffures 5 s. | NON | U | ? | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p25 l.309](../research/batch2_perks_surv_p25.md) |
| **Dark Sense** | Générale | Après chaque gen : prochaine approche du tueur à 24 m, aura 5/7/10 s. | WEB | SS | oui (buff) | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 1 | OK | [p26 l.154](../research/batch2_perks_surv_p26.md) |
| **Dead Hard** | David King | Après décrochage, blessé : activation = brève protection contre un coup ; Exhausted. | NON | U | ? | 2 | 2 | 2 | 0 | 0 | 2 | 0 | 0 | 1 | NON VÉRIF. | [p23 l.219](../research/batch2_perks_surv_p23.md) |
| **Deadline** | Alan Wake | Blessé : checks +6/8/10 % plus fréquents, pénalité d'échec −50 %. | NON | U | ? | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | NON VÉRIF. | [p29 l.317](../research/batch2_perks_surv_p29.md) |
| **Deception** | Élodie Rakoto | En sprint sur un casier : fausse notification bruyante, griffures supprimées brièvement. | NON | U | ? | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p24 l.300](../research/batch2_perks_surv_p24.md) |
| **Déjà Vu** | Générale | Auras des 3 gens les plus proches ; réparation +4/5/6 % dessus. | NON | U | ? | 3 | 1 | 0 | 3 | 2 | 0 | 0 | 2 | 0 | NON VÉRIF. | [p23 l.139](../research/batch2_perks_surv_p23.md) |
| **Deliverance** | Adam Francis | Après décrochage sûr d'un allié : auto-décrochage ; Broken 160/140/120 s. | WEB+AUDIT | VMS | non? | 3 | 1 | 0 | 2 | 0 | 1 | 0 | 1 | 1 | OK | [p23 l.347](../research/batch2_perks_surv_p23.md) |
| **Desperate Measures** | Felix Richter | Par survivant blessé/à terre/accroché : soin et décrochage +16/18/20 %. | NON | U | ? | 1 | 1 | 0 | 0 | 0 | 1 | 2 | 0 | 0 | NON VÉRIF. | [p25 l.297](../research/batch2_perks_surv_p25.md) |
| **Detective's Hunch** | David Tapp | Gen terminé : auras des coffres, gens, totems à 32/48/64 m, 20 s. | NON | U | ? | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p26 l.258](../research/batch2_perks_surv_p26.md) |
| **Distortion** | Jeff Johansen | Lecture d'aura par le tueur : 1 jeton, aura et griffures masquées 8/10/12 s. | WEB | SS | non? | 2 | 1 | 1 | 2 | 2 | 1 | 0 | 1 | 1 | OK | [p24 l.16](../research/batch2_perks_surv_p24.md) |
| **Diversion** | Adam Francis | Après 30/25/20 s accroupi en terreur : caillou qui crée bruit et griffures. | NON | U | ? | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p26 l.300](../research/batch2_perks_surv_p26.md) |
| **Do No Harm** | Orela Rose | Soin altruiste +30/40/50 % par état de crochet du soigné. | WEB | SS | oui (chance de check) | 2 | 2 | 0 | 1 | 0 | 1 | 3 | 0 | 0 | OK (PTB IMPRÉCIS) | [p28 l.124](../research/batch2_perks_surv_p28.md) |
| **Down to the Last (ex-Sole Survivor)** | Générale (ex-Laurie) | Jeton par survivant mort ; aura cachée au tueur à 20/22/24 m. | NON (nom : AUDIT) | U | oui (rework, contenu non vérifié) | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 2 | NON VÉRIF. | [p26 l.216](../research/batch2_perks_surv_p26.md) |
| **Dramaturgy** | Nicolas Cage | Sain, en course, activation : +25 % Haste 2 s puis effet aléatoire ; Exhausted. | NON | U | ? | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p24 l.246](../research/batch2_perks_surv_p24.md) |
| **Duty of Care** | Orela Rose | Coup protecteur en bonne santé : alliés à 12 m +25 % Haste 4/5/6 s. | NON | U | ? | 1 | 1 | 1 | 0 | 0 | 1 | 0 | 0 | 0 | NON VÉRIF. | [p29 l.365](../research/batch2_perks_surv_p29.md) |
| **Empathic Connection** | Yoichi Asakawa | Soin des autres +25/30/35 % ; les blessés voient votre aura partout. | WEB | SS / VP | oui (40/45/50 %) | 2 | 1 | 0 | 1 | 1 | 0 | 2 | 0 | 0 | OK | [p25 l.181](../research/batch2_perks_surv_p25.md) |
| **Empathy** | Claudette Morel | Auras des survivants blessés ou mourants à 64/96/128 m. | WEB | SS | non? | 2 | 1 | 0 | 2 | 2 | 1 | 2 | 0 | 1 | IMPRÉCIS | [p26 l.98](../research/batch2_perks_surv_p26.md) |
| **Extrasensory Perception** | Eleven | Accroupi 4 s : auras jusqu'à 44 m, Elusive et Oblivious. | NON | U | ? | 2 | 1 | 0 | 1 | 2 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p25 l.345](../research/batch2_perks_surv_p25.md) |
| **Exultation** | Trevor Belmont | Stun palette : objet +1 rareté et +75 % de charge ; CD 30/25/20 s. | WEB | SS | ? | 1 | 1 | 1 | 1 | 0 | 0 | 1 | 1 | 0 | OK | [p28 l.69](../research/batch2_perks_surv_p28.md) |
| **Eyes of Belmont** | Trevor Belmont | Gen terminé : aura du tueur 1/2/3 s ; révélations temporisées du tueur +2 s. | WEB | SS | ? | 1 | 0 | 0 | 1 | 2 | 0 | 0 | 0 | 1 | IMPRÉCIS | [p28 l.82](../research/batch2_perks_surv_p28.md) |
| **Fast Track** | Lee Yun-jin | Jeton par décrochage ; Great : −5 charges du gen par jeton. | WEB+AUDIT | VMS | ? | 1 | 1 | 0 | 1 | 0 | 0 | 0 | 2 | 0 | IMPRÉCIS | [p27 l.117](../research/batch2_perks_surv_p27.md) |
| **Finesse** | Lara Croft | En bonne santé : sauts rapides 20 % plus rapides ; CD 40/35/30 s. | NON | U | ? | 1 | 1 | 2 | 0 | 0 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p23 l.235](../research/batch2_perks_surv_p23.md) |
| **Five Moves Ahead** | Kwon Tae-young | Terreur/poursuite : auras de 5 palettes/fenêtres ; repartir 50 % plus tôt après palette. | WEB | SS | oui (palettes seules) | 2 | 2 | 3 | 0 | 2 | 1 | 0 | 0 | 1 | OK (PTB IMPRÉCIS) | [p23 l.117](../research/batch2_perks_surv_p23.md) |
| **Fixated** | Nancy Wheeler | Marche +10/15/20 % ; vous voyez vos propres griffures. | NON | U | ? | 1 | 1 | 0 | 1 | 1 | 0 | 0 | 1 | 0 | NON VÉRIF. | [p24 l.232](../research/batch2_perks_surv_p24.md) |
| **Flashbang** | Leon S. Kennedy | Après 50/45/40 % de réparation : fabrique une grenade aveuglante en casier. | NON | U | ? | 1 | 2 | 1 | 0 | 0 | 1 | 0 | 0 | 1 | NON VÉRIF. | [p24 l.260](../research/batch2_perks_surv_p24.md) |
| **Flip-Flop** | Ash Williams | Récupération au sol convertie en lutte (50 %), jusqu'à 40/45/50 %. | WEB | SS | ? | 1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | IMPRÉCIS | [p25 l.139](../research/batch2_perks_surv_p25.md) |
| **Flow State** | Kwon Tae-young | Jeton par gen (max 5) : totems, soin, décrochage +8/9/10 % par jeton. | WEB | SS | oui? (seed 13/14/15 %) | 1 | 1 | 0 | 1 | 0 | 1 | 2 | 0 | 2 | OK | [p28 l.255](../research/batch2_perks_surv_p28.md) |
| **Fogwise** | Vittorio Toscano | Great en réparation : aura du tueur 4/5/6 s. | NON | U | ? | 2 | 1 | 0 | 1 | 2 | 0 | 0 | 1 | 0 | NON VÉRIF. | [p27 l.250](../research/batch2_perks_surv_p27.md) |
| **For the People** | Zarina Kassir | Sain, soin sans médikit : soin instantané ; vous blessé, Broken 80/70/60 s. | WEB | SS | ? | 2 | 2 | 0 | 2 | 0 | 1 | 3 | 1 | 2 | IMPRÉCIS | [p27 l.61](../research/batch2_perks_surv_p27.md) |
| **Friendly Competition** | Thalita Lyra | Gen fini à plusieurs : réparation +5 % pendant 100/110/120 s. | NON (PTB : WEB) | U | oui (10 %, 80/85/90 s) | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | NON VÉRIF. | [p29 l.301](../research/batch2_perks_surv_p29.md) |
| **Fruits of Your Labor** | Aurora Stardotter | Jeton par gen ; en finissant un gen : Haste 2 s et bonus de soin. | NON | U | ? | 1 | 1 | 1 | 1 | 0 | 0 | 1 | 1 | 1 | NON VÉRIF. | [p28 l.282](../research/batch2_perks_surv_p28.md) |
| **Ghost Notes** | Vee Boonyasak | Exhausted : griffures 50 % plus brèves ; récupération d'Exhausted +5/7,5/10 %. | WEB | SS | ? | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | OK | [p28 l.176](../research/batch2_perks_surv_p28.md) |
| **Hardened** | Lara Croft | Après totem et coffre : chaque cri révèle l'aura du tueur 3/4/5 s. | NON | U | ? | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p29 l.333](../research/batch2_perks_surv_p29.md) |
| **Head On** | Jane Romero | Après 3 s en casier, sortie rapide : stun 3 s à ≤ 2,5 m ; Exhausted. | AUDIT | SS | ? | 1 | 2 | 1 | 0 | 0 | 1 | 0 | 0 | 1 | OK | [p24 l.184](../research/batch2_perks_surv_p24.md) |
| **Hope** | Générale | Portes alimentées : +3/4/5 % Haste jusqu'à la fin. | NON | U | ? | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 2 | NON VÉRIF. | [p24 l.218](../research/batch2_perks_surv_p24.md) |
| **Hyperfocus** | Rebecca Chambers | Great = jeton (max 6) : checks plus fréquents et rapides, bonus Great accru. | AUDIT (partiel, DR) | U | ? | 2 | 2 | 0 | 0 | 0 | 0 | 1 | 3 | 0 | NON VÉRIF. | [p23 l.331](../research/batch2_perks_surv_p23.md) |
| **Inner Focus** | Haddie Kaur | Griffures des alliés visibles ; allié blessé par le tueur : aura 6/8/10 s. | WEB | SS | ? | 2 | 1 | 0 | 2 | 3 | 1 | 1 | 0 | 1 | IMPRÉCIS | [p27 l.198](../research/batch2_perks_surv_p27.md) |
| **Inner Strength** | Nancy Wheeler | Après purification : 10/9/8 s en casier blessé = soin d'un état. | WEB | SS | ? | 2 | 1 | 0 | 1 | 0 | 1 | 2 | 0 | 0 | IMPRÉCIS | [p25 l.167](../research/batch2_perks_surv_p25.md) |
| **Invocation: Treacherous Crows** | Taurie Cain | Invocation : blessé/Broken ; corbeaux effrayés par le tueur révèlent son aura. | NON | U | ? | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p29 l.349](../research/batch2_perks_surv_p29.md) |
| **Invocation: Weaving Spiders** | Sable Ward | Invocation : blessé et Broken définitifs ; gens restants −8/9/10 charges. | NON | U | ? | 1 | 2 | 0 | 2 | 0 | 0 | 0 | 2 | 0 | NON VÉRIF. | [p27 l.319](../research/batch2_perks_surv_p27.md) |
| **Iron Will** | Jake Park | Blessé : gémissements réduits (80/90/100 % seed, 50/75/100 % ?) ; inactif si Exhausted. | NON | U | ? | 2 | 2 | 2 | 0 | 0 | 1 | 0 | 0 | 1 | NON VÉRIF. | [p23 l.315](../research/batch2_perks_surv_p23.md) |
| **Kindred** | Générale | Accroché : auras mutuelles des survivants ; tueur visible à 8/12/16 m du crochet. | NON | U | oui? (seed 14/15/16 m) | 3 | 0 | 0 | 3 | 3 | 1 | 0 | 1 | 1 | NON VÉRIF. | [p23 l.171](../research/batch2_perks_surv_p23.md) |
| **Last Stand** | Michonne Grimes | Après 120/105/90 s en terreur non poursuivi : rushed vault = stun 3 s. | WEB | SS | ? | 1 | 1 | 2 | 0 | 0 | 1 | 0 | 0 | 0 | IMPRÉCIS | [p28 l.137](../research/batch2_perks_surv_p28.md) |
| **Leader** | Dwight Fairfield | Alliés à 10 m : soin, sabotage, décrochage, ouverture… +20/25/30 %. | WEB | SS / VMS | non? | 1 | 2 | 0 | 1 | 0 | 1 | 2 | 0 | 2 | IMPRÉCIS | [p26 l.84](../research/batch2_perks_surv_p26.md) |
| **Left Behind** | Bill Overbeck | Dernier survivant : aura de la trappe à 24/28/32 m. | NON | U | ? | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 1 | NON VÉRIF. | [p28 l.296](../research/batch2_perks_surv_p28.md) |
| **Lend a Hand** | Shane Wiigwaas | Après un totem : allié soigné reçoit 2/3/4 charges de soin permanentes. | NON | U | ? | 1 | 1 | 0 | 1 | 0 | 1 | 2 | 0 | 0 | NON VÉRIF. | [p28 l.268](../research/batch2_perks_surv_p28.md) |
| **Light-Footed** | Ellen Ripley | Sain, en course : pas silencieux ; recharge après action précipitée. | NON | U | ? | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p27 l.303](../research/batch2_perks_surv_p27.md) |
| **Lightweight** | Générale | Griffures 3/4/5 s plus brèves, 60 % d'apparitions en moins. | WEB | SS | non? | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | OK | [p26 l.112](../research/batch2_perks_surv_p26.md) |
| **Lithe** | Feng Min | Rushed vault : +50 % Haste 3 s ; Exhausted 60/50/40 s. | WEB | SS | non? | 2 | 2 | 3 | 0 | 0 | 1 | 0 | 0 | 1 | IMPRÉCIS | [p23 l.53](../research/batch2_perks_surv_p23.md) |
| **Low Profile** | Ada Wong | Seul survivant libre : gémissements, sang, griffures supprimés 70/80/90 s. | WEB | SS | non? | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | IMPRÉCIS | [p29 l.253](../research/batch2_perks_surv_p29.md) |
| **Lucky Break** | Yui Kimura | Blessé : griffures et sang supprimés 40/50/60 s ; recharge en soignant. | WEB | SS | ? | 2 | 1 | 2 | 1 | 0 | 1 | 0 | 1 | 1 | OK | [p27 l.47](../research/batch2_perks_surv_p27.md) |
| **Lucky Star** | Ellen Ripley | Sortie de casier : auras gen et survivants, sans sang ni gémissements. | NON | U | ? | 1 | 0 | 1 | 1 | 1 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p27 l.311](../research/batch2_perks_surv_p27.md) |
| **Made for This** | Gabriel Soma | Deep Wound : petite Haste ; soin d'allié en étant blessé : Endurance 6/8/10 s. | NON | U | ? | 2 | 2 | 1 | 1 | 0 | 1 | 2 | 0 | 1 | NON VÉRIF. | [p23 l.283](../research/batch2_perks_surv_p23.md) |
| **Mettle of Man** | Ash Williams | Après 3 coups protecteurs : ignore la prochaine mise au sol ; aura révélée ensuite. | NON | U | ? | 1 | 2 | 1 | 0 | 0 | 1 | 0 | 0 | 0 | NON VÉRIF. | [p26 l.342](../research/batch2_perks_surv_p26.md) |
| **Mirrored Illusion** | Aestri Yazar & Baermar Uraz | Après 20 % de réparation : illusion statique de vous 40/50/60 s. | WEB | SS | ? | 1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 1 | IMPRÉCIS | [p28 l.27](../research/batch2_perks_surv_p28.md) |
| **Moment of Glory** | Trevor Belmont | Après 1 coffre : blessé → Broken, soigné après 80/70/60 s si debout. | WEB | VMS | ? | 2 | 1 | 0 | 1 | 0 | 0 | 2 | 1 | 0 | OK | [p28 l.96](../research/batch2_perks_surv_p28.md) |
| **No Mither** | David King | Broken permanent, sans gémissements ; récupération +15/20/25 %, relève seule. | WEB | SS | non? | 0 | 1 | 1 | 1 | 0 | 0 | 1 | 1 | 0 | OK | [p29 l.109](../research/batch2_perks_surv_p29.md) |
| **No One Left Behind** | Générale | Portes alimentées : soin et décrochage +50/75/100 % ; auras des survivants. | WEB | SS | oui (80/90/100 %) | 1 | 1 | 0 | 0 | 1 | 0 | 1 | 0 | 2 | OK | [p26 l.140](../research/batch2_perks_surv_p26.md) |
| **Off the Record** | Zarina Kassir | 30/35/40 s après décrochage : Endurance, gémissements supprimés, aura cachée. | AUDIT (partiel) | SS (durée) / U | ? | 3 | 2 | 1 | 1 | 0 | 3 | 0 | 0 | 0 | OK partiel | [p23 l.101](../research/batch2_perks_surv_p23.md) |
| **One-Two-Three-Four!** | Vee Boonyasak | Performance : alliés à 16 m +20 % de chance de skill check 90 s. | WEB | SS | ? | 1 | 2 | 0 | 1 | 0 | 0 | 1 | 1 | 0 | OK | [p28 l.163](../research/batch2_perks_surv_p28.md) |
| **Open-Handed** | Ace Visconti | Lectures d'aura à portée limitée des survivants +8/12/16 m. | NON | U | ? | 1 | 1 | 0 | 1 | 2 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p28 l.310](../research/batch2_perks_surv_p28.md) |
| **Overcome** | Jonah Vasquez | Blessé par un coup : boost de vitesse prolongé de 2 s ; Exhausted. | NON | U | ? | 2 | 2 | 2 | 1 | 0 | 1 | 0 | 0 | 1 | NON VÉRIF. | [p24 l.204](../research/batch2_perks_surv_p24.md) |
| **Overzealous** | Haddie Kaur | Après un totem : réparation +8/9/10 % (doublée si Hex) jusqu'au coup. | NON | U | ? | 1 | 1 | 0 | 1 | 0 | 0 | 0 | 2 | 0 | NON VÉRIF. | [p27 l.217](../research/batch2_perks_surv_p27.md) |
| **Parental Guidance** | Yoichi Asakawa | Après un stun du tueur : griffures, sang, gémissements supprimés 5/6/7 s. | WEB | SS | ? | 1 | 1 | 2 | 0 | 0 | 0 | 0 | 0 | 0 | OK | [p27 l.185](../research/batch2_perks_surv_p27.md) |
| **Pharmacy** | Quentin Smith | Coffres +75/100/125 % plus vite et plus discrets ; médikit garanti. | NON | U | oui? (seed) | 1 | 1 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | NON VÉRIF. | [p26 l.244](../research/batch2_perks_surv_p26.md) |
| **Plot Twist** | Nicolas Cage | Blessé accroupi : passer au sol en silence ; relève seul, soigné, +50 % Haste. | WEB | SS | non? | 1 | 1 | 1 | 1 | 0 | 1 | 2 | 0 | 1 | OK | [p24 l.58](../research/batch2_perks_surv_p24.md) |
| **Plunderer's Instinct** | Générale | Auras des coffres et objets à 32/48/64 m ; meilleure rareté en coffre. | WEB | SS | oui? (seed) | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | IMPRÉCIS | [p26 l.168](../research/batch2_perks_surv_p26.md) |
| **Poised** | Jane Romero | Aura du tueur 8 s au 1er contact d'un gen ; sans griffures après un gen. | WEB | VMS | ? | 1 | 1 | 0 | 1 | 1 | 0 | 0 | 1 | 0 | OK | [p26 l.196](../research/batch2_perks_surv_p26.md) |
| **Potential Energy** | Vittorio Toscano | Réparation convertie en jetons (max 10/15/20) ; +1 % par jeton, instantané. | WEB | SS | non? | 1 | 2 | 0 | 2 | 0 | 0 | 0 | 2 | 1 | IMPRÉCIS | [p26 l.28](../research/batch2_perks_surv_p26.md) |
| **Power Struggle** | Élodie Rakoto | Porté à 25/20/15 % de lutte : lâcher une palette proche, stun et libération. | WEB | SS | ? | 1 | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | OK | [p25 l.153](../research/batch2_perks_surv_p25.md) |
| **Premonition** | Générale | Signal sonore en regardant vers le tueur (cône 45°, 36 m). | WEB | SS | oui (rework) | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 1 | OK | [p29 l.13](../research/batch2_perks_surv_p29.md) |
| **Prove Thyself** | Dwight Fairfield | Réparation +6/8/10 % par survivant à 4 m (mécanique non vérifiée). | NON | U | ? | 1 | 2 | 0 | 1 | 0 | 0 | 0 | 2 | 1 | NON VÉRIF. | [p23 l.251](../research/batch2_perks_surv_p23.md) |
| **Quick & Quiet** | Meg Thomas | Vault ou entrée rapide en casier sans notification bruyante. | NON | U | ? | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p24 l.286](../research/batch2_perks_surv_p24.md) |
| **Quick Gambit** | Vittorio Toscano | En poursuite, vous voyez les survivants ; eux réparent +3/4/5 %. | WEB | SS | non? | 2 | 1 | 1 | 2 | 2 | 0 | 0 | 1 | 0 | FAUX | [p26 l.14](../research/batch2_perks_surv_p26.md) |
| **Rapid Response** | Orela Rose | Sortie rapide de casier : Exhausted ; chaque Exhausted montre le tueur 2 s. | NON | U | ? | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p29 l.381](../research/batch2_perks_surv_p29.md) |
| **Reactive Healing** | Ada Wong | Blessé ; allié touché à 32 m : récupère une part du soin manquant. | NON | U | ? | 1 | 1 | 0 | 0 | 0 | 0 | 2 | 0 | 0 | NON VÉRIF. | [p27 l.241](../research/batch2_perks_surv_p27.md) |
| **Reassurance** | Rebecca Chambers | À ≤ 6 m d'un accroché : pause du sacrifice 20/25/30 s. | WEB | SS | non? | 2 | 2 | 0 | 2 | 0 | 1 | 0 | 2 | 3 | OK | [p24 l.30](../research/batch2_perks_surv_p24.md) |
| **Red Herring** | Zarina Kassir | Gen réparé marqué ; entrer en casier y déclenche une notification bruyante. | WEB | SS | non? | 0 | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | OK | [p29 l.205](../research/batch2_perks_surv_p29.md) |
| **Repressed Alliance** | Cheryl Mason | Après 40/35/30 s de réparation, seul : bloquer le gen 15 s. | WEB+AUDIT | VMS | ? | 1 | 1 | 0 | 2 | 0 | 0 | 0 | 1 | 0 | FAUX | [p27 l.89](../research/batch2_perks_surv_p27.md) |
| **Residual Manifest** | Haddie Kaur | Aveuglement réussi : Blindness 20/25/30 s ; refouille d'un coffre ouvert. | NON | U | ? | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p27 l.230](../research/batch2_perks_surv_p27.md) |
| **Resilience** | Générale | Blessé : +3/6/9 % de vitesse d'action (réparer, soigner, sauter…). | NON | U | oui? (seed 7/8/9 %) | 2 | 2 | 2 | 1 | 0 | 0 | 1 | 2 | 1 | NON VÉRIF. | [p23 l.155](../research/batch2_perks_surv_p23.md) |
| **Resurgence** | Jill Valentine | Au décrochage : +50/60/70 % de progression de soin immédiate. | NON | U | ? | 3 | 2 | 0 | 1 | 0 | 1 | 3 | 1 | 0 | NON VÉRIF. | [p23 l.203](../research/batch2_perks_surv_p23.md) |
| **Road Life** | Vee Boonyasak | Blessé non Broken, Great en réparation : jetons ; à 6/5/4, soin +100 %. | WEB | SS | oui (rework) | 1 | 1 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | IMPRÉCIS | [p30 l.97](../research/batch2_perks_surv_p30.md) |
| **Rookie Spirit** | Leon S. Kennedy | Après 5/4/3 checks réussis : auras des gens en régression. | WEB | SS | non? | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 1 | 0 | OK | [p29 l.221](../research/batch2_perks_surv_p29.md) |
| **Saboteur** | Jake Park | Tueur porte : auras des crochets à 56 m ; sabotage sans toolbox +30 %. | WEB | SS | ? | 1 | 2 | 0 | 1 | 1 | 1 | 0 | 0 | 0 | IMPRÉCIS | [p25 l.97](../research/batch2_perks_surv_p25.md) |
| **Salvation's Cry** | Aurora Stardotter | Début de poursuite : vous voyez les survivants ; eux voient vous et le tueur. | NON | U | ? | 2 | 0 | 0 | 1 | 2 | 0 | 0 | 1 | 0 | NON VÉRIF. | [p25 l.356](../research/batch2_perks_surv_p25.md) |
| **Scavenger** | Gabriel Soma | Toolbox vide : Great = jeton ; 5 jetons rechargent, réparation −50 % temporaire. | NON | U | ? | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | NON VÉRIF. | [p27 l.278](../research/batch2_perks_surv_p27.md) |
| **Scene Partner** | Nicolas Cage | Regarder le tueur en terreur : cri + son aura 4/5/6 s. | NON | U | ? | 1 | 1 | 1 | 0 | 2 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p27 l.294](../research/batch2_perks_surv_p27.md) |
| **Second Wind** | Steve Harrington | Après un état soigné : au décrochage, Broken puis soin après 28/24/20 s. | WEB | SS | ? | 1 | 1 | 0 | 1 | 0 | 1 | 2 | 1 | 0 | OK | [p27 l.33](../research/batch2_perks_surv_p27.md) |
| **Self-Care** | Claudette Morel | Auto-soin sans médikit à 25/30/35 % ; médikit en auto-soin +10/15/20 %. | WEB | SS | non? | 2 | 1 | 0 | 1 | 0 | 0 | 2 | 0 | 0 | OK (IMPRÉCIS) | [p25 l.27](../research/batch2_perks_surv_p25.md) |
| **Self-Preservation** | Lee Yun-jin | Un autre survivant accroché : vous gagnez Elusive 20/25/30 s. | WEB+AUDIT | VP | oui (13/14/15 s) | 2 | 2 | 0 | 2 | 0 | 0 | 0 | 1 | 0 | OK | [p25 l.272](../research/batch2_perks_surv_p25.md) |
| **Shoulder the Burden** | Taurie Cain | Une fois : décroche en prenant un état de crochet ; cri, Exposed 60/50/40 s. | WEB | SS | oui (Broken) | 2 | 3 | 0 | 2 | 0 | 3 | 0 | 0 | 1 | OK (PTB IMPRÉCIS) | [p24 l.72](../research/batch2_perks_surv_p24.md) |
| **Slippery Meat** | Générale | +3 tentatives d'auto-décrochage, +2/3/4 % de chance. | WEB | SS | oui (rework) | 1 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | IMPRÉCIS | [p29 l.29](../research/batch2_perks_surv_p29.md) |
| **Small Game** | Générale | Signal quand un totem est dans un cône de 45°, 8/10/12 m. | WEB | SS | oui (rework) | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 1 | OK | [p29 l.45](../research/batch2_perks_surv_p29.md) |
| **Smash Hit** | Lee Yun-jin | Stun palette : +50 % Haste 4 s ; Exhausted 30/25/20 s. | NON | U | ? | 2 | 2 | 2 | 0 | 0 | 1 | 0 | 0 | 1 | NON VÉRIF. | [p24 l.328](../research/batch2_perks_surv_p24.md) |
| **Solidarity** | Jane Romero | Blessé, soin d'allié sans médikit : vous vous soignez à 50/60/70 %. | NON | U | oui? (seed 65/70/75 %) | 1 | 1 | 0 | 0 | 0 | 0 | 2 | 0 | 0 | NON VÉRIF. | [p26 l.314](../research/batch2_perks_surv_p26.md) |
| **Soul Guard** | Cheryl Mason | Relevé ou auto-relevé : Endurance 4/6/8 s ; Cursed : relève complète seule. | WEB | SS | ? | 1 | 1 | 1 | 0 | 0 | 1 | 0 | 0 | 0 | IMPRÉCIS | [p25 l.55](../research/batch2_perks_surv_p25.md) |
| **Specialist** | Lara Croft | Jeton par coffre ; Great : −2/3/4 charges par jeton (max 12/18/24). | WEB | SS | ? | 1 | 1 | 0 | 1 | 0 | 0 | 0 | 2 | 1 | IMPRÉCIS | [p28 l.55](../research/batch2_perks_surv_p28.md) |
| **Spine Chill** | Générale | Tueur à ≤ 36 m vous regarde : alerte ; actions +2/4/6 %. | WEB | SS | oui (rework) | 2 | 1 | 0 | 1 | 2 | 0 | 1 | 1 | 0 | OK | [p26 l.126](../research/batch2_perks_surv_p26.md) |
| **Sprint Burst** | Meg Thomas | Début de course : +50 % Haste 2 s ; Exhausted 60/50/40 s. | WEB+AUDIT | VMS | non? | 2 | 2 | 2 | 1 | 0 | 1 | 0 | 1 | 1 | OK | [p23 l.85](../research/batch2_perks_surv_p23.md) |
| **Stake Out** | David Tapp | Caché 15 s en terreur : jeton ; un jeton transforme un Good en Great. | NON (PTB : WEB) | U | oui (rework) | 1 | 1 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | IMPRÉCIS | [p25 l.321](../research/batch2_perks_surv_p25.md) |
| **Still Sight** | Aestri Yazar & Baermar Uraz | Immobile 4/3/2 s : auras du tueur, coffres, gens à 24 m. | WEB | SS | ? | 1 | 0 | 0 | 1 | 2 | 0 | 1 | 0 | 0 | OK | [p28 l.41](../research/batch2_perks_surv_p28.md) |
| **Streetwise** | Nea Karlsson | 1er objet vidé : aura du tueur 8 s ; objets de coffre +60/70/80 % charges. | NON (rework : AUDIT) | U | ? | 1 | 1 | 0 | 1 | 1 | 0 | 1 | 1 | 0 | NON VÉRIF. | [p28 l.323](../research/batch2_perks_surv_p28.md) |
| **Strength in Shadows** | Sable Ward | Sous-sol : auto-soin sans médikit, puis aura du tueur 6/8/10 s. | NON | U | ? | 1 | 0 | 0 | 0 | 1 | 0 | 1 | 0 | 0 | NON VÉRIF. | [p27 l.328](../research/batch2_perks_surv_p27.md) |
| **Teamwork: Collective Stealth** | Renato Lyra | Après soin reçu : griffures des deux supprimées à 8/12/16 m. | WEB | SS | non? | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | OK | [p29 l.269](../research/batch2_perks_surv_p29.md) |
| **Teamwork: Full Circuit** | Dustin Henderson | Par allié sur votre gen : zone Good +15/20/25 % ; réparation +5 %. | WEB | SS | ? | 1 | 2 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | OK | [p28 l.202](../research/batch2_perks_surv_p28.md) |
| **Teamwork: Power of Two** | Thalita Lyra | Après soin d'un allié : +5 % Haste aux deux à 8/12/16 m. | NON | U | ? | 1 | 2 | 1 | 1 | 0 | 0 | 1 | 0 | 0 | NON VÉRIF. | [p27 l.269](../research/batch2_perks_surv_p27.md) |
| **Teamwork: Soft-Spoken** | Eleven | Par allié sur votre gen : bruit de réparation −15/20/25 % ; +5 %. | WEB | SS | ? | 1 | 2 | 0 | 1 | 0 | 0 | 0 | 1 | 0 | OK | [p28 l.228](../research/batch2_perks_surv_p28.md) |
| **Teamwork: Throw Down** | Michonne Grimes | Aveuglement ou stun palette : alliés blessés à 24 m Endurance 6/8/10 s. | WEB | SS | ? | 1 | 2 | 1 | 0 | 1 | 1 | 0 | 0 | 0 | OK | [p28 l.150](../research/batch2_perks_surv_p28.md) |
| **Teamwork: Toughen Up** | Rick Grimes | Blessé ; allié aveugle ou stun palette à 24 m : sans traces 20/25/30 s. | WEB | SS | non? | 0 | 1 | 1 | 0 | 0 | 1 | 0 | 0 | 0 | IMPRÉCIS | [p30 l.39](../research/batch2_perks_surv_p30.md) |
| **Technician** | Feng Min | Bruit de réparation −16 m ; check raté sans explosion, pénalité accrue. | WEB+AUDIT | SS | non? | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 1 | 0 | FAUX | [p29 l.93](../research/batch2_perks_surv_p29.md) |
| **Tenacity** | David Tapp | Au sol : rampe +30/40/50 %, rampe et récupère à la fois, gémissements −75 %. | WEB | SS | ? | 2 | 1 | 0 | 1 | 0 | 1 | 0 | 0 | 1 | OK | [p25 l.69](../research/batch2_perks_surv_p25.md) |
| **This Is Not Happening** | Générale | Blessé : zone Great en réparation et soin +10/20/30 %. | WEB | SS | oui (buff, valeurs U) | 1 | 1 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | IMPRÉCIS | [p29 l.61](../research/batch2_perks_surv_p29.md) |
| **Troubleshooter** | Gabriel Soma | En poursuite : aura du gen le plus avancé ; aura du tueur après palette. | NON | U | ? | 1 | 1 | 2 | 1 | 2 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p27 l.286](../research/batch2_perks_surv_p27.md) |
| **Unbreakable** | Bill Overbeck | Une fois par épreuve : relève complète seule ; récupération +25/30/35 %. | AUDIT (partiel) | SS (limite) / U | ? | 2 | 2 | 0 | 1 | 0 | 0 | 1 | 0 | 1 | OK partiel | [p23 l.187](../research/batch2_perks_surv_p23.md) |
| **Up the Ante** | Ace Visconti | Jeton par survivant vivant : auto-décrochage +1/2/3 % chacun, pour tous. | WEB | SS | non? | 1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | IMPRÉCIS | [p29 l.141](../research/batch2_perks_surv_p29.md) |
| **Urban Evasion** | Nea Karlsson | Accroupi : +90/95/100 % de vitesse de déplacement. | NON | U | ? | 1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p25 l.235](../research/batch2_perks_surv_p25.md) |
| **Vigil** | Quentin Smith | Vous et alliés à 16 m : récupération d'Exhausted +20/25/30 %. | WEB+AUDIT | SS | non? | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | FAUX | [p24 l.156](../research/batch2_perks_surv_p24.md) |
| **Visionary** | Felix Richter | Auras des gens à 32 m ; coupée 20/18/16 s après chaque gen. | WEB | SS | non? | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 1 | 0 | OK | [p29 l.157](../research/batch2_perks_surv_p29.md) |
| **Wake Up!** | Quentin Smith | Gens finis : auras des interrupteurs ; ouverture plus rapide par survivant vivant. | NON | U | oui? (seed) | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 2 | NON VÉRIF. | [p26 l.230](../research/batch2_perks_surv_p26.md) |
| **We See You** | Eleven | Jeton quand le tueur lit votre aura ; à 4 : aura du tueur à tous. | WEB | SS | ? | 1 | 1 | 0 | 1 | 2 | 0 | 0 | 0 | 0 | OK | [p28 l.215](../research/batch2_perks_surv_p28.md) |
| **We'll Make It** | Générale | Après un décrochage : soin des autres +100 % pendant 30/60/90 s. | WEB | SS | oui (70/80/90 s) | 2 | 2 | 0 | 1 | 0 | 1 | 3 | 1 | 1 | OK | [p24 l.44](../research/batch2_perks_surv_p24.md) |
| **We're Gonna Live Forever** | David King | Relever un allié au sol +100 % ; il gagne Endurance 6/8/10 s. | WEB | SS | ? | 2 | 2 | 0 | 1 | 0 | 2 | 2 | 0 | 1 | OK | [p25 l.41](../research/batch2_perks_surv_p25.md) |
| **Wicked** | Sable Ward | Sous-sol, 1er état : auto-décrochage garanti ; ensuite aura du tueur 16/18/20 s. | WEB | SS | ? | 1 | 1 | 0 | 1 | 2 | 1 | 0 | 0 | 1 | OK | [p24 l.170](../research/batch2_perks_surv_p24.md) |
| **Wide Open Throttle** | Shane Wiigwaas | Fast vault de palette : Haste 10/12,5/15 % 3 s ; palette bloquée 60 s. | NON | U | ? | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | NON VÉRIF. | [p25 l.286](../research/batch2_perks_surv_p25.md) |
| **Will to Live (ex-Decisive Strike)** | Générale (ex-Laurie) | 40/50/60 s après décrochage : skill check libère, stun 4 s ; usage unique. | WEB+AUDIT | SS | non? | 3 | 3 | 1 | 1 | 0 | 3 | 0 | 0 | 1 | OK | [p23 l.35](../research/batch2_perks_surv_p23.md) |
| **Windows of Opportunity** | Kate Denson | Auras des palettes, fenêtres, murs cassables à 24/28/32 m ; cooldown contesté. | WEB | VMS | oui (rework) | 3 | 2 | 3 | 1 | 2 | 1 | 0 | 0 | 1 | OK (PTB IMPRÉCIS) | [p23 l.17](../research/batch2_perks_surv_p23.md) |
| **Wiretap** | Ada Wong | Piège un gen 100/110/120 s ; tueur à 14 m : aura révélée à tous. | WEB | SS | non? | 2 | 1 | 0 | 2 | 2 | 0 | 0 | 1 | 0 | OK | [p26 l.70](../research/batch2_perks_surv_p26.md) |

## 3. Perks tueur (145, ordre alphabétique)

Vues du côté survivant. Menace et indice observable = **HEURISTIC**. Les lignes **Vérif. = NON** sont **UNCERTAIN** (texte du seed). Catégories reprises de la ligne « Statut / catégorie » des fiches.

| Perk | Tueur | Catégorie | Effet LIVE (≤ 15 mots) | Indice observable (≤ 10 mots) | Vérif. | Conf. | PTB 10.2.0 | Menace SoloQ / SWF | Écart seed | Fichier |
|---|---|---|---|---|---|---|---|---|---|---|
| **A Nurse's Calling** | The Nurse | info/aura · anti-soin | Auras des survivants qui soignent ou sont soignés à 28/30/32 m. | Tueur arrive droit sur un soin. | AUDIT | VERIFIED (audit) | ? | 1,5 / 1 | OK | [p91 l.76](../research/batch3_perks_kill_p91.md) |
| **Agitation** | The Trapper | transport | En portant : Haste 6/12/18 %, terreur +12 m. | Heartbeat très large pendant un portage. | NON | U | oui? (seed) | 1 / 1 | NON VÉRIF. | [p93 l.119](../research/batch3_perks_kill_p93.md) |
| **Alien Instinct** | Xenomorph | info/aura · Oblivious | Accrochage : blessé le plus éloigné révélé et Oblivious. | Oblivious à un accrochage, blessé et loin. | NON | U | ? | 1-2 / 1 | NON VÉRIF. | [p94 l.396](../research/batch3_perks_kill_p94.md) |
| **All-Shaking Thunder** | Houndmaster | chase | Après une chute de hauteur : fentes plus longues 15/20/25 s. | Tueur saute d'un étage puis fente longue. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p95 l.193](../research/batch3_perks_kill_p95.md) |
| **Awakened Awareness** | Mastermind | info (portage) | En portant : voit les survivants à ≤ 16/18/20 m. | Aucun indice direct. | NON | U | ? | 1 / 0-1 | NON VÉRIF. | [p96 l.152](../research/batch3_perks_kill_p96.md) |
| **Bamboozle** | The Clown | chase (anti-loop) | Fenêtre sautée par le tueur bloquée 8/12/16 s pour tous. | Fenêtre bloquée avec minuterie après son saut. | AUDIT | SS | ? | 1,5 / 1,5 | OK (IMPRÉCIS) | [p91 l.132](../research/batch3_perks_kill_p91.md) |
| **Barbecue & Chilli** | The Cannibal | info/aura | Chaque accrochage : auras des survivants à plus de 60/50/40 m, 5 s. | Aucun direct ; tueur vient droit sur vous. | NON | U | ? | 1,5 / 1 | NON VÉRIF. | [p91 l.62](../research/batch3_perks_kill_p91.md) |
| **Batteries Included** | Good Guy | chase (Haste) | À 16 m d'un gen terminé : +5 % Haste ; coupée à l'alimentation. | Tueur rattrape vite autour d'un gen fait. | WEB | SS | ? | 1 / 1 | IMPRÉCIS | [p95 l.117](../research/batch3_perks_kill_p95.md) |
| **Beast of Prey** | Huntress | furtivité | Gain de Bloodlust : Undetectable 30/35/40 s. | Heartbeat et red stain disparaissent en chase. | WEB | SS | ? | 1 / 1 | OK | [p96 l.62](../research/batch3_perks_kill_p96.md) |
| **Bitter Murmur** | Générale | info · endgame | Gen terminé : survivants à ≤ 16 m révélés 5 s ; dernier gen : tous. | Tueur arrive juste après une pop. | NON | U | oui? (seed) | 1 / 0-1 | NON VÉRIF. | [p96 l.390](../research/batch3_perks_kill_p96.md) |
| **Blood Echo** | Oni | anti-soin · chase | Accrochage : autres blessés Exhausted + Hemorrhage. | Exhausted + Hemorrhage à un accrochage. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p94 l.344](../research/batch3_perks_kill_p94.md) |
| **Blood Warden** | The Nightmare | endgame | Porte ouverte : auras en zone de sortie ; une fois, portes bloquées 40/50/60 s. | Portes bloquées par l'Entité après un accrochage. | AUDIT | SS | ? | 2 / 1-2 | OK | [p93 l.146](../research/batch3_perks_kill_p93.md) |
| **Bloodhound** | Wraith | info (pistage) | Flaques de sang rouge vif, visibles 2/3/4 s de plus. | Aucun indice direct. | WEB | SS | ? | 1 / 0-1 | OK | [p96 l.20](../research/batch3_perks_kill_p96.md) |
| **Brutal Strength** | Trapper | chase (anti-palette) | Casse de palettes et murs, dégâts de gen +10/15/20 %. | Palette cassée plus vite que 2,34 s. | WEB | SS | ? | 1 / 1 | OK | [p92 l.19](../research/batch3_perks_kill_p92.md) |
| **Call of Brine** | Onryō | slowdown (régression) | Gen kické : régression +30/40/50 % pendant 90 s. | Gen qui régresse vite après un kick. | AUDIT | SS | ? | 2 / 1 | OK | [p92 l.215](../research/batch3_perks_kill_p92.md) |
| **Celestial Witness** | The Judgment | info/aura · Obsession | Toutes les 30 s : aura de l'Obsession si à plus de 40 m, sinon transfert. | Obsession qui change de survivant. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p91 l.173](../research/batch3_perks_kill_p91.md) |
| **Corrupt Intervention** | The Plague | slowdown (blocage) | 3 gens les plus éloignés bloqués 80/100/120 s ; fin au 1er survivant mourant. | 3 gens bloqués dès le début. | WEB | SS | non? | 2 / 1 | OK | [p90 l.93](../research/batch3_perks_kill_p90.md) |
| **Coulrophobia** | Clown | anti-soin | Soins 20/25/30 % plus lents dans la terreur. | Barre de soin lente dans la terreur. | AUDIT (partiel) | SS | ? | 1 / 0-1 | OK | [p94 l.198](../research/batch3_perks_kill_p94.md) |
| **Coup de Grâce** | Twins | chase | +2 jetons par gen ; chaque fente consomme un jeton : portée +70/75/80 %. | Fente anormalement longue après une pop. | WEB | SS | ? | 1 / 1 | OK | [p92 l.103](../research/batch3_perks_kill_p92.md) |
| **Cruel Limits** | Demogorgon | chase · endgame | Gen terminé : toutes les fenêtres bloquées 20/25/30 s. | Fenêtres bloquées juste après une pop. | WEB | SS | ? | 1 / 0-1 | OK | [p96 l.104](../research/batch3_perks_kill_p96.md) |
| **Cull the Weak (ex-Dying Light)** | Générale | slowdown (vitesse d'action) | Jeton par accrochage de non-Obsession : actions des autres plus lentes. | Gens et soins de plus en plus lents. | NON (nom : AUDIT) | U | ? | 2 / 1 | OK nom ; valeurs NON VÉRIF. | [p95 l.319](../research/batch3_perks_kill_p95.md) |
| **Dark Arrogance** | Lich | chase | Vaults +15/20/25 % ; stuns et aveuglements subis plus longs. | Tueur vaulte très vite. | NON | U | oui? (seed) | 0-1 / 0-1 | NON VÉRIF. (PTB-comme-LIVE probable, ch8) | [p96 l.236](../research/batch3_perks_kill_p96.md) |
| **Dark Devotion** | Plague | furtivité | Obsession blessée : terreur transférée sur elle, tueur Undetectable 35/40/45 s. | Heartbeat qui suit l'Obsession blessée. | WEB | SS | ? | 2 / 1 | IMPRÉCIS | [p95 l.61](../research/batch3_perks_kill_p95.md) |
| **Darkness Revealed** | The Dredge | info/aura | Ouvrir un casier : survivants à 8 m de tout casier révélés 6/7/8 s. | Tueur ouvre un casier sans raison, puis vise quelqu'un. | NON | U | ? | 1 / 0,5 | NON VÉRIF. | [p91 l.201](../research/batch3_perks_kill_p91.md) |
| **Dead Man's Switch** | The Deathslinger | slowdown (blocage) | Après accrochage : 1er gen lâché bloqué 25/30/35 s ; recharge 50 s contestée. | Gen lâché bloqué juste après un accrochage. | WEB | SS | oui (30/35/40 s) | 2 / 1,5 | OK (IMPRÉCIS) | [p91 l.20](../research/batch3_perks_kill_p91.md) |
| **Deathbound** | Executioner | info · anti-soin | Qui soigne un allié crie, puis Oblivious en s'éloignant. | Cri du soigneur en fin de soin. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p92 l.201](../research/batch3_perks_kill_p92.md) |
| **Deerstalker** | Générale | info/aura | Aura mutuelle quand un survivant lit la sienne ; le moins chassé le voit 3 s. | Aura du tueur visible sans perk d'aura. | WEB | SS | oui (3 → 4 s) | 1 / 1 | OK | [p93 l.35](../research/batch3_perks_kill_p93.md) |
| **Discordance** | The Legion | info/aura | Gen réparé à 2 ou plus surligné à 64/96/128 m. | Tueur arrive quand vous êtes à 2 sur un gen. | NON | U | ? | 1,5 / 0,5 | NON VÉRIF. | [p91 l.187](../research/batch3_perks_kill_p91.md) |
| **Dissolution** | Dredge | anti-palette | Après un coup, la prochaine palette sautée en terreur se brise. | Palette qui casse sous vous en vault. | NON | U | oui? (seed) | 1 / 0-1 | NON VÉRIF. | [p94 l.225](../research/batch3_perks_kill_p94.md) |
| **Distressing** | Générale | autre (terreur) | Rayon de terreur +20/25/30 % ; +100 % BP Deviousness. | Heartbeat entendu plus loin que la normale. | WEB | SS | oui? (seed) | 1 / 0 | OK | [p94 l.66](../research/batch3_perks_kill_p94.md) |
| **Dominance** | Dark Lord | anti-objet · info | 1re interaction avec chaque coffre/totem : bloqué 8/12/16 s, aura du prop. | Coffre/totem bloqué dès l'interaction. | WEB | SS | oui? (seed) | 0-1 / 0 | IMPRÉCIS | [p94 l.122](../research/batch3_perks_kill_p94.md) |
| **Dragon's Grip** | The Blight | Exposed | Après kick, 1er survivant sur ce gen : cri, localisé, Exposed 60 s. | Cri + Exposed en touchant un gen kické. | NON | U | ? | 2 / 1 | NON VÉRIF. | [p93 l.174](../research/batch3_perks_kill_p93.md) |
| **Enduring** | Hillbilly | chase (anti-palette) | Stuns de palette −40/45/50 % ; pas en portant. | Tueur se relève ~1 s après un stun. | WEB | SS | ? | 1 / 1 | OK | [p92 l.33](../research/batch3_perks_kill_p92.md) |
| **Eruption** | The Nemesis | slowdown (perte) · info | Mise au sol : gens kickés explosent ; réparateurs crient, aura révélée. Perte 10 %/5 % contestée. | Cri en réparant quand un allié tombe. | WEB (conflit) | U | ? | 2 / 1,5 | NON VÉRIF. | [p91 l.34](../research/batch3_perks_kill_p91.md) |
| **Fire Up** | Nightmare | chase · endgame | Jeton par gen : actions du tueur +4/5/6 % par jeton. | Casse et vault du tueur plus rapides en fin. | WEB | SS | oui? (seed) | 1 / 1 | OK | [p95 l.89](../research/batch3_perks_kill_p95.md) |
| **Forced Hesitation** | Singularity | slugging · chase | Mise au sol : survivants proches Hindered. | Hindered quand un allié tombe près. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p94 l.370](../research/batch3_perks_kill_p94.md) |
| **Forced Penance** | Executioner | anti-soin | Coup protecteur : Broken 60/70/80 s. | Broken après un coup pris pour un allié. | NON | U | ? | 0-1 / 1 | NON VÉRIF. | [p94 l.357](../research/batch3_perks_kill_p94.md) |
| **Forever Entwined** | Ghoul | transport | Jetons par coup : ramasser, déposer, accrocher +4 % par jeton. | Ramassages et accrochages rapides en fin. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p95 l.207](../research/batch3_perks_kill_p95.md) |
| **Franklin's Demise** | Cannibal | anti-objets · info | Coup de base : objet lâché ; auras des objets au sol 32/48/64 m. | Votre objet tombe à chaque coup. | WEB | SS | ? | 1 / 1-2 | OK | [p95 l.75](../research/batch3_perks_kill_p95.md) |
| **Friends 'til the End** | Good Guy | info/aura · Exposed | Accrocher un non-Obsession : aura de l'Obsession 6/8/10 s + Exposed 20 s. | Obsession Exposed après l'accrochage d'un autre. | WEB | SS | ? | 2 / 1 | OK | [p92 l.61](../research/batch3_perks_kill_p92.md) |
| **Furtive Chase** | The Ghost Face | furtivité · Obsession | Accrocher l'Obsession : Haste + Undetectable ; le sauveteur devient Obsession. | Plus de heartbeat après accrochage de l'Obsession. | NON (revert : AUDIT) | U | ? | 1-2 / 1 | NON VÉRIF. | [p93 l.188](../research/batch3_perks_kill_p93.md) |
| **Game Afoot** | Skull Merchant | chase | Plus poursuivi = Obsession ; casser pendant sa chase : Haste. | Obsession qui change. | NON | U | oui? (seed) | 1 / 0-1 | NON VÉRIF. | [p96 l.166](../research/batch3_perks_kill_p96.md) |
| **Gearhead** | Deathslinger | info/aura | 30 s après un coup : checks Good en réparation révèlent le survivant. | Tueur sur votre gen après un coup ailleurs. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p92 l.313](../research/batch3_perks_kill_p92.md) |
| **Genetic Limits** | Singularity | chase (Exhausted) | Perte d'un état de santé : Exhausted 6/7/8 s. | Exhausted juste après un coup. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p94 l.383](../research/batch3_perks_kill_p94.md) |
| **Grim Embrace** | The Artist | slowdown (blocage) · info | Jeton par 1er accrochage : blocage bref des gens ; au 4e, blocage long + aura Obsession. | Tous les gens bloqués brièvement après un accrochage. | NON | U | ? | 2 / 2 | NON VÉRIF. | [p90 l.111](../research/batch3_perks_kill_p90.md) |
| **Haywire** | Animatronic | endgame | Porte lâchée après 80 % : l'ouverture régresse. | Barre de porte qui redescend. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p95 l.277](../research/batch3_perks_kill_p95.md) |
| **Help Wanted** | Animatronic | chase · slowdown | Gen kické compromis ; s'il est fini, récupération après coup +25 %. | Aucun indice direct connu. | NON | U | oui? (seed) | 1 / 1 | NON VÉRIF. | [p95 l.249](../research/batch3_perks_kill_p95.md) |
| **Hex: Blood Favour** | Blight | hex · chase | Survivant touché : palettes proches bloquées 15 s (rayon non vérifié). | Palettes bloquées juste après un coup. | NON | U | oui? (seed) | 2 / 1 | NON VÉRIF. | [p92 l.173](../research/batch3_perks_kill_p92.md) |
| **Hex: Crowd Control** | Trickster | hex · chase | Bloque les 4/5/6 dernières fenêtres franchies par les survivants. | Fenêtres bloquées après les avoir franchies. | AUDIT (partiel) | SS / U | ? | 1-2 / 1 | OK partiel | [p94 l.156](../research/batch3_perks_kill_p94.md) |
| **Hex: Devour Hope** | Hag | hex · Exposed | Jetons par décrochage loin du tueur ; 3 : tous Exposed ; 5 : mori. | Exposed permanent pour tous à 3 jetons. | NON | U | ? | 3 / 2 | NON VÉRIF. | [p92 l.159](../research/batch3_perks_kill_p92.md) |
| **Hex: Face the Darkness** | The Knight | hex · info | Blessé = maudit ; périodiquement, les survivants hors terreur crient et sont révélés. | Cri périodique loin du tueur. | NON | U | ? | 1-2 / 1 | NON VÉRIF. | [p93 l.105](../research/batch3_perks_kill_p93.md) |
| **Hex: Fortune's Fool (ex-Plaything)** | Générale | hex · Oblivious | 1er accrochage : Hex lié ; survivant Oblivious, seul à pouvoir le purifier. | Oblivious après 1er accrochage ; totem proche visible. | NON (nom : AUDIT) | U | ? | 1,5 / 1 | OK nom ; valeurs NON VÉRIF. | [p91 l.256](../research/batch3_perks_kill_p91.md) |
| **Hex: Haunted Ground** | Spirit | hex · Exposed | Deux Hex ; en purifier un rend tous les survivants Exposed. | Exposed pour tous juste après une purification. | NON | U | ? | 2 / 1 | NON VÉRIF. | [p94 l.264](../research/batch3_perks_kill_p94.md) |
| **Hex: Hive Mind** | The First | hex · slowdown | Hex au 1er accrochage ; au dernier gen restant, tous explosent (−6/8/10 %). | Hex allumé après le 1er accrochage. | NON | U | ? | 1-2 / 1 | NON VÉRIF. | [p93 l.271](../research/batch3_perks_kill_p93.md) |
| **Hex: Huntress Lullaby** | Huntress | hex · skill checks | Jetons par accrochage : alerte de skill check retardée puis supprimée. | Son d'alerte de skill check absent. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p94 l.170](../research/batch3_perks_kill_p94.md) |
| **Hex: No One Escapes Death** | Générale | hex · endgame | Portes alimentées : Hex, tous Exposed, tueur +2/3/4 % Haste. | Exposed pour tous à l'alimentation des portes. | NON | U | ? | 2,5 / 1,5 | NON VÉRIF. | [p91 l.145](../research/batch3_perks_kill_p91.md) |
| **Hex: Nothing but Misery** | Ghoul | hex · chase | Après 8 coups : chaque coup inflige Hindered 5 % 10/12,5/15 s. | Hex allumé en cours de partie ; Hindered. | NON | U | oui? (seed) | 1-2 / 1 | NON VÉRIF. | [p95 l.221](../research/batch3_perks_kill_p95.md) |
| **Hex: Overture of Doom** | Krasue | hex · furtivité | Hex sur le gen le plus éloigné ; y réparer transfère la terreur. | Heartbeat qui vient du générateur. | NON | U | ? | 1-2 / 1 | NON VÉRIF. | [p96 l.292](../research/batch3_perks_kill_p96.md) |
| **Hex: Pentimento** | Artist | hex · slowdown | Tueur rallume des totems purifiés ; pénalités croissantes ; non bénissables. | Totems purifiés qui se rallument. | NON (AUDIT partiel) | U | ? | 2 / 1 | NON VÉRIF. | [p92 l.145](../research/batch3_perks_kill_p92.md) |
| **Hex: Retribution** | The Deathslinger | hex · info | Totem touché : Oblivious 40/50/60 s ; Hex purifié : tous révélés. | Oblivious après purification d'un totem terne. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p93 l.244](../research/batch3_perks_kill_p93.md) |
| **Hex: Ruin** | The Hag | hex · slowdown (régression) | Gens non réparés régressent seuls à 100/125/150 %. | Gen lâché qui recule sans coup de pied. | WEB | SS | ? | 2,5 / 1,5 | OK | [p91 l.48](../research/batch3_perks_kill_p91.md) |
| **Hex: Scared to Death** | Slasher | hex · chase | Après 3 accrochés : palette cassée en chase = cri + Hindered à ≤ 13 m. | Cri + Hindered après une palette cassée. | NON (existence : AUDIT) | U | ? | 1 / 1 | NON VÉRIF. | [p96 l.334](../research/batch3_perks_kill_p96.md) |
| **Hex: The Third Seal** | Hag | hex · Blindness | Les 2/3/4 derniers survivants touchés : Blindness tant que le totem tient. | Blindness après un coup. | NON | U | ? | 1 / 0 | NON VÉRIF. | [p94 l.292](../research/batch3_perks_kill_p94.md) |
| **Hex: Thrill of the Hunt** | Générale | hex (protection) | Par totem restant : purification et bénédiction −8/9/10 % (max 40/45/50 %). | Purification nettement plus lente ; Hex allumé. | WEB+AUDIT | SS | oui (rework) | 1 / 0-1 | OK | [p93 l.49](../research/batch3_perks_kill_p93.md) |
| **Hex: Two Can Play** | Good Guy | hex · anti-stun | Après 4/3/2 stuns ou blinds : Hex ; qui l'étourdit est aveuglé 1,5 s. | Écran blanc 1,5 s après votre stun. | WEB | SS | ? | 1 / 1-2 | OK | [p95 l.103](../research/batch3_perks_kill_p95.md) |
| **Hex: Under Your Thumb** | Judgment | hex · anti-Haste | Hex au 1er accrochage ; Haste des survivants plafonnée 25/20/15 %. | Hex allumé au 1er accrochage. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p95 l.291](../research/batch3_perks_kill_p95.md) |
| **Hex: Undying** | Blight | hex | Hex purifié transféré sur Undying ; auras près des totems ternes. | Effet Hex qui continue après purification. | NON | U | ? | 2 / 1 | NON VÉRIF. | [p92 l.131](../research/batch3_perks_kill_p92.md) |
| **Hex: Wretched Fate** | Dark Lord | hex · slowdown | Après le 1er gen : l'Obsession répare 27/30/33 % plus lentement. | Totem allumé ; l'Obsession répare lentement. | NON | U | ? | 1 / 0-1 | NON VÉRIF. | [p96 l.250](../research/batch3_perks_kill_p96.md) |
| **Hoarder** | Twins | info (objets) | Coffre ouvert ou objet ramassé à ≤ 32/48/64 m : alerte ; +2 coffres. | Plus de coffres que la normale. | WEB | SS | ? | 0-1 / 0-1 | IMPRÉCIS | [p96 l.118](../research/batch3_perks_kill_p96.md) |
| **Hubris** | Knight | anti-stun | Qui étourdit le tueur devient Exposed ~20/25/30 s. | Exposed juste après un stun de palette. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p94 l.212](../research/batch3_perks_kill_p94.md) |
| **Human Greed** | Dark Lord | info (coffres) | Auras des coffres ; refermer les coffres ; survivant proche révélé. | Coffres fouillés qui se referment. | NON | U | ? | 0-1 / 0-1 | NON VÉRIF. | [p95 l.179](../research/batch3_perks_kill_p95.md) |
| **Hysteria** | Nemesis | info · Oblivious | Blesser un survivant sain : tous les blessés Oblivious (durée et CD contestés). | Oblivious quand un allié passe blessé. | WEB (valeurs en conflit) | SS / U | ? | 1 / 0-1 | NON VÉRIF. | [p95 l.19](../research/batch3_perks_kill_p95.md) |
| **I'm All Ears** | Ghost Face | info/aura | Action rapide à ≤ 48 m : aura 8 s ; recharge 60/45/30 s. | Tueur change de trajectoire après votre vault. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p92 l.327](../research/batch3_perks_kill_p92.md) |
| **Infectious Fright** | The Plague | info/aura · slugging | Mise au sol : survivants dans la terreur crient, révélés 4/5/6 s. | Vous criez quand un allié tombe près. | NON | U | ? | 2 / 1 | NON VÉRIF. | [p93 l.63](../research/batch3_perks_kill_p93.md) |
| **Insidious** | Générale | furtivité | Immobile 3/2/1 s : Undetectable tant que le tueur ne bouge pas. | Pas de heartbeat, respiration du tueur audible. | WEB | SS | oui? (seed) | 1-2 / 1 | IMPRÉCIS | [p94 l.80](../research/batch3_perks_kill_p94.md) |
| **Iron Grasp** | Générale | transport | Lutte 4/8/12 % plus lente ; déport du tueur −75 %. | Barre de lutte lente, tueur ne dévie pas. | NON | U | oui? (seed) | 0-1 / 1 | NON VÉRIF. | [p93 l.133](../research/batch3_perks_kill_p93.md) |
| **Iron Maiden** | Legion | anti-casier | Casiers ouverts plus vite ; sortie de casier : cri + Exposed. | Cri + Exposed en sortant d'un casier. | NON | U | ? | 0-1 / 0 | NON VÉRIF. | [p94 l.305](../research/batch3_perks_kill_p94.md) |
| **Keep Them Waiting (ex-Save the Best for Last)** | Générale | chase | Coups sur non-Obsession : jetons, −5 % de récupération d'attaque par jeton. | Tueur se remet très vite après un coup. | AUDIT (partiel) | U (5 %/jeton : audit) | ? | 1,5 / 1 | OK partiel | [p91 l.118](../research/batch3_perks_kill_p91.md) |
| **Knock Out** | Cannibal | slugging · chase | Au sol par coup de base : aura visible à 32/24/16 m seulement. | Aura du coéquipier au sol absente ; Hindered. | WEB | SS | oui? (seed) | 1-2 / 1 | IMPRÉCIS | [p94 l.94](../research/batch3_perks_kill_p94.md) |
| **Languid Touch** | Lich | anti-exhaustion | Corbeau envolé à ≤ 36 m du tueur : Exhausted 6/8/10 s. | Exhausted sans perk après un corbeau. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p95 l.151](../research/batch3_perks_kill_p95.md) |
| **Lay Waste** | Judgment | slowdown (régression) | Gen frappé régresse 2 % plus vite par charge (sens ambigu). | Aucun direct connu. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p92 l.257](../research/batch3_perks_kill_p92.md) |
| **Lethal Pursuer** | The Nemesis | info/aura | Auras de tous au départ 7/8/9 s ; autres lectures d'aura +2 s. | Tueur fonce sur vous dès le départ. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p90 l.128](../research/batch3_perks_kill_p90.md) |
| **Leverage** | Skull Merchant | anti-soin | Après décrochage : soin 20/25/30 % plus lent (cible contestée). | Aucun indice direct connu. | NON | U | ? | 0-1 / 0 | NON VÉRIF. | [p96 l.194](../research/batch3_perks_kill_p96.md) |
| **Lightborn** | Hillbilly | anti-objets | Immunité à l'aveuglement ; les aveugleurs sont révélés. | Aucune réaction à la lampe. | NON | U | ? | 0 / 1 | NON VÉRIF. | [p92 l.285](../research/batch3_perks_kill_p92.md) |
| **Machine Learning** | The Singularity | furtivité · chase | Gen kické « compromis » ; à sa fin : Haste + Undetectable 40/50/60 s. | Heartbeat disparaît à la fin d'un gen. | NON | U | oui? (seed) | 1-2 / 1 | IMPRÉCIS / NON VÉRIF. | [p93 l.202](../research/batch3_perks_kill_p93.md) |
| **Mad Grit** | Legion | transport | En portant : pas de pénalité sur raté ; coup = pause de la lutte. | Tueur frappe en portant sans ralentir. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p94 l.318](../research/batch3_perks_kill_p94.md) |
| **Make Your Choice** | Pig | anti-sauvetage · Exposed | Décrochage, tueur à plus de 32 m : sauveteur crie, Exposed 40/50/60 s. | Cri + Exposed du sauveteur. | WEB | SS | ? | 2 / 1 | OK | [p95 l.47](../research/batch3_perks_kill_p95.md) |
| **Merciless Storm** | Onryō | slowdown (blocage) | À 90 % : skill checks continus ; raté ou arrêt : gen bloqué. | Série de skill checks à 90 %. | NON | U | ? | 1 / 0-1 | NON VÉRIF. | [p94 l.251](../research/batch3_perks_kill_p94.md) |
| **Mindbreaker** | The Demogorgon | autre (Blindness/Exhausted) | En réparant : Blindness + Exhausted, persistant 3/4/5 s. | Blindness + Exhausted dès que vous réparez. | NON | U | ? | 1-2 / 1 | NON VÉRIF. | [p93 l.258](../research/batch3_perks_kill_p93.md) |
| **Monitor & Abuse** | Doctor | furtivité · chase | Terreur +5/10/15 % ; hors poursuite −15/20/25 % (effet net incertain). | Heartbeat qui démarre tard hors chase. | WEB | SS | ? | 1 / 0-1 | OK | [p96 l.90](../research/batch3_perks_kill_p96.md) |
| **Nemesis** | Oni | info/aura · Obsession | Qui aveugle ou étourdit devient Obsession, Oblivious, aura révélée. | Obsession passe sur vous après un stun. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p92 l.299](../research/batch3_perks_kill_p92.md) |
| **No Holds Barred (ex-Deadlock)** | Générale | slowdown (blocage) | Chaque gen terminé : gen le plus avancé bloqué 15/20/25 s. | Gen le plus avancé bloqué après une pop. | NON (nom : AUDIT) | U | ? | 1,5 / 1 | OK nom ; valeurs NON VÉRIF. | [p91 l.104](../research/batch3_perks_kill_p91.md) |
| **No Quarter** | Houndmaster | anti-soin | À 75 % d'auto-soin : checks continus ; raté = Broken. | Skill checks en rafale en fin d'auto-soin. | NON | U | ? | 1 / 0-1 | NON VÉRIF. | [p96 l.264](../research/batch3_perks_kill_p96.md) |
| **No Way Out** | Trickster | endgame | Toucher un interrupteur : portes bloquées 12 s + 6/9/12 s par jeton. | Interrupteurs bloqués dès qu'on les touche. | WEB | SS | ? | 2 / 1 | OK | [p92 l.89](../research/batch3_perks_kill_p92.md) |
| **None Are Free** | Ghoul | endgame | Gens finis : fenêtres et palettes bloquées 12/14/16 s par jeton. | Fenêtres et palettes bloquées à l'alimentation. | NON | U | ? | 2 / 1 | NON VÉRIF. | [p95 l.235](../research/batch3_perks_kill_p95.md) |
| **Nowhere to Hide** | The Knight | info/aura | Coup de pied : auras des survivants à 24 m du gen 3/4/5 s. | Tueur se tourne vers votre cachette après un kick. | AUDIT | VP (audit) | non? | 2 / 1 | FAUX (PTB-comme-LIVE) | [p90 l.145](../research/batch3_perks_kill_p90.md) |
| **Oppression** | Twins | slowdown | Kick : jusqu'à 4 autres gens régressent, skill checks difficiles. | Skill check difficile soudain, tueur loin. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p92 l.243](../research/batch3_perks_kill_p92.md) |
| **Overcharge** | Doctor | slowdown · skill check | Après kick : régression croissante, skill check difficile, perte si raté. | Skill check immédiat difficile sur gen kické. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p92 l.229](../research/batch3_perks_kill_p92.md) |
| **Overwhelming Presence** | Doctor | anti-objet · info | Objet utilisé à ≤ 32 m : Exhausted 15 s ; aura du plus proche. | Exhausted au moment d'utiliser un objet. | WEB | SS | ? | 1-2 / 1 | OK | [p96 l.76](../research/batch3_perks_kill_p96.md) |
| **Phantom Fear** | Animatronic | info | Regarder le tueur depuis la terreur : cri, révélé 2 s. | Cri en regardant le tueur. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p95 l.263](../research/batch3_perks_kill_p95.md) |
| **Pop Goes the Weasel** | The Clown | slowdown (perte) | Après accrochage, prochain coup de pied : −20 % au total. | Chute ~20 % au lieu de 5 % après accrochage. | WEB (partiel) | SS / U (fenêtre) | non? | 2 / 2 | OK partiel | [p90 l.74](../research/batch3_perks_kill_p90.md) |
| **Predator** | Wraith | info/aura | Survivant qui sème le tueur : aura 4 s ; CD 60/50/40 s. | Tueur revient sur vous 2-5 s après la chase. | WEB | SS | ? | 1 / 1 | OK | [p94 l.52](../research/batch3_perks_kill_p94.md) |
| **Rampage** | Slasher | chase (anti-stun) | Jetons par casse ; stun ou blind : Haste 1 % par jeton 13 s. | Tueur accélère après un stun. | NON (existence : AUDIT) | U | ? | 1 / 1 | NON VÉRIF. | [p96 l.348](../research/batch3_perks_kill_p96.md) |
| **Rancor** | Spirit | endgame · info | Chaque gen : survivants révélés ; portes : Obsession Exposed, mori. | Obsession Exposed en fin de partie. | NON | U | ? | 1-2 / 1 | NON VÉRIF. | [p94 l.278](../research/batch3_perks_kill_p94.md) |
| **Rapid Brutality** | Xenomorph | chase | Coup de base : 5 % Haste 8/9/10 s ; plus de Bloodlust. | Tueur ne perd pas de terrain après un coup. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p92 l.271](../research/batch3_perks_kill_p92.md) |
| **Ravenous** | Krasue | endgame · Exposed | Au 4e survivant accroché : tous crient, Exposed 40/50/60 s. | Cri de tous + Exposed. | NON | U | oui? (seed) | 1 / 1 | NON VÉRIF. (PTB-comme-LIVE probable, ch8) | [p96 l.306](../research/batch3_perks_kill_p96.md) |
| **Remember Me** | The Nightmare | endgame · Obsession | Jetons sur l'Obsession ; ouverture des portes plus longue pour les autres. | Barre d'ouverture de porte plus lente. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p93 l.160](../research/batch3_perks_kill_p93.md) |
| **Scourge Hook: Floods of Rage** | The Onryō | scourge · info/aura | Décrochage d'un crochet Fléau : auras des autres survivants 5/6/7 s. | Tueur revient droit sur un tiers après décrochage. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p91 l.215](../research/batch3_perks_kill_p91.md) |
| **Scourge Hook: Hangman's Trick** | Pig | scourge · info | En portant : survivants près d'un crochet Fléau révélés ; alerte sabotage. | Crochets Fléau blancs visibles. | NON | U | ? | 1 / 0-1 | NON VÉRIF. | [p96 l.278](../research/batch3_perks_kill_p96.md) |
| **Scourge Hook: Jagged Compass** | Houndmaster | scourge · info | Crochets de décrochage deviennent Fléau ; accrochage : gen le plus avancé révélé. | Aucun indice direct. | NON | U | ? | 1 / 0-1 | NON VÉRIF. | [p94 l.142](../research/batch3_perks_kill_p94.md) |
| **Scourge Hook: Monstrous Shrine** | Générale | scourge | Crochets Fléau + sous-sol : sacrifice plus rapide si tueur à plus de 24 m. | Barre de sacrifice qui accélère, tueur loin. | NON | U | oui? (seed) | 1 / 0-1 | NON VÉRIF. | [p93 l.298](../research/batch3_perks_kill_p93.md) |
| **Scourge Hook: Pain Resonance** | The Artist | slowdown (perte) · scourge | 1er accrochage Fléau de chaque survivant : gen le plus avancé −10/15/20 %. | Cri + explosion du gen le plus avancé à l'accrochage. | WEB | SS | non? | 3 / 2 | OK | [p90 l.48](../research/batch3_perks_kill_p90.md) |
| **Scourge Hook: Weeping Wounds (ex-Gift of Pain)** | Générale | scourge · anti-soin | Décroché d'un Fléau : Hemorrhage + Mangled ; après soin, actions ralenties. | Hemorrhage + Mangled en sortant d'un crochet. | NON (nom : AUDIT) | U | ? | 1 / 1 | OK nom ; valeurs NON VÉRIF. | [p91 l.242](../research/batch3_perks_kill_p91.md) |
| **Secret Project** | The First | slowdown (blocage) · furtivité | Totem béni ou purifié : gen aléatoire bloqué ; blocage = Undetectable 30 s. | Gen bloqué juste après une purification. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p93 l.285](../research/batch3_perks_kill_p93.md) |
| **See How They Run (ex-Play With Your Food)** | Générale | chase (Haste) | Jeton par chase perdue sur l'Obsession : Haste 3/4/5 % par jeton. | Tueur lâche volontairement l'Obsession. | NON (nom : AUDIT) | U | ? | 1-2 / 1 | OK nom ; effet NON VÉRIF. | [p95 l.305](../research/batch3_perks_kill_p95.md) |
| **Septic Touch** | Dredge | anti-soin | Soin dans la terreur : Blindness + Exhausted, persistant 20/25/30 s. | Blindness + Exhausted dès que vous soignez. | WEB | SS | ? | 1 / 1 | IMPRÉCIS (probable) | [p96 l.132](../research/batch3_perks_kill_p96.md) |
| **Shadowborn** | Wraith | anti-lampe | Aveuglé : 6/8/10 % Haste pendant 10 s. | Tueur accélère après un aveuglement. | WEB | SS | ? | 0 / 1 | OK | [p96 l.34](../research/batch3_perks_kill_p96.md) |
| **Shattered Hope** | Générale | anti-Boon · info | Détruit les Boons ; survivants dans leur rayon révélés 6/7/8 s. | Boon qui disparaît sans totem terne. | WEB+AUDIT | SS | oui (rework, valeurs U) | 1 / 1 | OK | [p94 l.108](../research/batch3_perks_kill_p94.md) |
| **Silent Shadow** | The Slasher | furtivité · endgame | Undetectable 11/12/13 s à chaque accrochage ; permanent après les gens. | Pas de heartbeat après chaque accrochage. | NON (origine : AUDIT) | U | ? | 2 / 1 | OK origine ; valeurs NON VÉRIF. | [p93 l.230](../research/batch3_perks_kill_p93.md) |
| **Sloppy Butcher** | Générale | anti-soin · info | Coup de base : Haemorrhage + Mangled 70/80/90 s ; plus de flaques de sang. | Icônes Mangled + Haemorrhage après un coup de base. | WEB | SS | ? | 2 / 1 | OK | [p92 l.47](../research/batch3_perks_kill_p92.md) |
| **Spies from the Shadows** | Générale | info | Corbeau envolé à ≤ 20/28/36 m : alerte au tueur. | Corbeaux qui s'envolent (pas de preuve d'alerte). | NON | U | oui? (seed) | 0-1 / 0 | NON VÉRIF. | [p96 l.362](../research/batch3_perks_kill_p96.md) |
| **Spirit Fury** | The Spirit | chase | Après 4/3/2 palettes cassées, le stun suivant détruit la palette. | Palette qui explose au moment du stun. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p93 l.91](../research/batch3_perks_kill_p93.md) |
| **Starstruck** | Trickster | Exposed (portage) | En portant : survivants dans la terreur Exposed ; persiste 26/28/30 s. | Exposed en entrant dans la terreur d'un tueur qui porte. | WEB | SS | ? | 2 / 2 | OK | [p92 l.75](../research/batch3_perks_kill_p92.md) |
| **Stridor** | Nurse | info (audio) | Gémissements +30/40/50 %, respiration +15/20/25 %. | Aucun indice direct. | WEB | SS | ? | 1 / 0-1 | OK | [p96 l.48](../research/batch3_perks_kill_p96.md) |
| **Superior Anatomy** | Mastermind | anti-fenêtre | Vault rapide près du tueur : son prochain vault 30/35/40 % plus rapide. | Tueur vaulte presque instantanément derrière vous. | NON | U | oui? (seed) | 1 / 1 | NON VÉRIF. | [p94 l.238](../research/batch3_perks_kill_p94.md) |
| **Surge** | The Demogorgon | slowdown (perte) | Mise au sol par attaque de base : gens à 32 m explosent (−6/7/8 %). | Gens proches de la chute reculent brusquement. | NON (nom : AUDIT) | U | ? | 1,5 / 1 | FAUX (nom) | [p91 l.90](../research/batch3_perks_kill_p91.md) |
| **Surveillance** | Pig | info (gens) | Gens en régression surlignés ; reprise : jaune 8/12/16 s ; bruit +8 m. | Aucun indice direct. | WEB | SS | ? | 1 / 1 | OK | [p95 l.33](../research/batch3_perks_kill_p95.md) |
| **Terminus** | Mastermind | endgame · anti-soin | Portes alimentées : blessés, à terre, accrochés Broken ; persiste 20/25/30 s. | Broken chez les blessés au dernier gen. | WEB (1 source) | SS | ? | 1 / 1 | FAUX (probable) | [p92 l.117](../research/batch3_perks_kill_p92.md) |
| **Territorial Imperative** | Huntress | info/aura | Entrée au sous-sol, tueur à plus de 24 m : aura 4/5/6 s. | Aucun indice direct. | WEB | SS | ? | 0-1 / 0 | OK | [p94 l.38](../research/batch3_perks_kill_p94.md) |
| **Thanatophobia** | Nurse | slowdown (vitesse d'action) | Réparation, purification, sabotage ralentis par survivant blessé, à terre ou accroché. | Aucun direct fiable ; gens lents si blessés. | NON | U | ? | 1 / 1 | NON VÉRIF. | [p92 l.187](../research/batch3_perks_kill_p92.md) |
| **Thrilling Tremors** | The Ghost Face | slowdown (blocage) | Au ramassage : gens non réparés bloqués 16 s ; recharge 40/35/30 s. | Gens libres bloqués au moment d'un ramassage. | WEB | SS | non? | 2 / 1 | OK | [p93 l.21](../research/batch3_perks_kill_p93.md) |
| **THWACK!** | Skull Merchant | info (cri) | Casser palette ou mur : survivants à ≤ 36 m crient, révélés 4/5/6 s. | Cri involontaire quand une palette casse ailleurs. | NON | U | ? | 1 / 0-1 | NON VÉRIF. | [p96 l.180](../research/batch3_perks_kill_p96.md) |
| **Tinkerer** | The Hillbilly | info · furtivité | Gen à 70 % : tueur alerté, Undetectable 12/14/16 s. | Terreur disparaît après un gen à ~70 %. | NON | U | ? | 2 / 1 | NON VÉRIF. | [p93 l.77](../research/batch3_perks_kill_p93.md) |
| **Trail of Torment** | The Executioner | furtivité | Après kick : Undetectable tant que le gen régresse ; gen visible par tous. | Aura jaune d'un gen visible sans perk. | NON | U | ? | 2 / 1 | NON VÉRIF. | [p93 l.216](../research/batch3_perks_kill_p93.md) |
| **Turn Back the Clock** | The First | slowdown (perte) | Après accrochage : explose un gen visible à moins de 20 m (−10 %). | Gen qui explose sans kick après accrochage. | NON | U | ? | 1,5 / 1 | NON VÉRIF. | [p91 l.159](../research/batch3_perks_kill_p91.md) |
| **Ultimate Weapon** | The Xenomorph | info (cri) · Blindness | Après ouverture de casier : cri et Blindness 30 s (déclencheur contesté). | Cri involontaire + Blindness après un casier ouvert. | NON | U | ? | 1,5 / 1 | NON VÉRIF. | [p91 l.229](../research/batch3_perks_kill_p91.md) |
| **Unbound** | Unknown | chase | Après une blessure, vault de fenêtre : Haste (valeurs contestées). | Tueur vaulte puis accélère. | NON | U | oui? (seed) | 1 / 1 | NON VÉRIF. (PTB-comme-LIVE probable, ch8) | [p96 l.208](../research/batch3_perks_kill_p96.md) |
| **Undone** | Unknown | slowdown (perte + blocage) | Checks ratés : jetons ; prochain kick : régression et blocage par jeton. | Gen bloqué + grosse perte après un kick. | NON | U | oui (rework : AUDIT) | 1 / 1 | NON VÉRIF. (PTB-comme-LIVE, ch8) | [p96 l.222](../research/batch3_perks_kill_p96.md) |
| **Unforeseen** | Unknown | furtivité | Kick : terreur transférée au gen, tueur Undetectable 22/26/30 s. | Heartbeat qui émane d'un gen. | NON | U | ? | 1-2 / 1 | NON VÉRIF. | [p95 l.137](../research/batch3_perks_kill_p95.md) |
| **Unnerving Presence** | Trapper | skill checks | Dans la terreur : checks plus fréquents, zone de réussite réduite. | Zones de skill check plus petites en terreur. | NON | U | ? | 0-1 / 0 | NON VÉRIF. | [p94 l.184](../research/batch3_perks_kill_p94.md) |
| **Unrelenting** | Générale | chase | Récupération après attaque ratée 20/25/30 % plus courte. | Tueur se remet vite d'un raté. | NON | U | oui? (seed) | 0-1 / 0-1 | NON VÉRIF. | [p96 l.376](../research/batch3_perks_kill_p96.md) |
| **Wandering Eye** | Krasue | info/aura | Début de poursuite : autres blessés à ≤ 20 m révélés 5 s. | Aucun indice direct. | NON | U | ? | 1 / 0-1 | NON VÉRIF. | [p96 l.320](../research/batch3_perks_kill_p96.md) |
| **Weave Attunement** | Lich | anti-objets · info | Objets vides tombent ; auras des objets au sol et survivants proches. | Objet vide qui tombe seul. | NON | U | ? | 1 / 1-2 | NON VÉRIF. | [p95 l.165](../research/batch3_perks_kill_p95.md) |
| **Whispers** | Générale | info (proximité) | Tueur alerté si un survivant est à ≤ 48/40/32 m. | Aucun indice direct. | WEB | SS | oui? (seed) | 1 / 0-1 | OK | [p94 l.24](../research/batch3_perks_kill_p94.md) |
| **Zanshin Tactics** | Oni | info (carte) | Auras palettes/fenêtres ; lâcher une palette révèle le survivant. | Aucun indice direct. | NON | U | ? | 0-1 / 0 | NON VÉRIF. | [p94 l.331](../research/batch3_perks_kill_p94.md) |
---

## 4. Archétypes de builds survivant — HEURISTIC

> **Tout ce chapitre est HEURISTIC** (raisonnement à partir des fiches, aucune donnée de performance, aucun taux de victoire). Les perks ont été choisies d'abord parmi celles vérifiées **WEB / AUDIT** (confiance SS ou mieux). Toute perk **UNCERTAIN** est signalée **⚠ UNCERTAIN** et n'est proposée qu'en alternative. Les notes entre crochets `[x]` sont les notes 0-3 HEURISTIC de la fiche pour l'archétype concerné. Les cumuls de bonus identiques sont soumis aux Diminishing Returns 9.6.0 (100 / 50 / 25 %…, FACT audit) ; **quels** modificateurs y sont soumis n'est pas publié, donc chaque DR cité ici est une **HYPOTHESIS**.
> Marque **[PTB]** = perk modifiée au PTB 10.2.0 : build à revoir à la sortie de 10.2.0.

### 4.1 Chase — Lithe · Windows of Opportunity [PTB] · Parental Guidance · Lucky Break
Perks : Lithe (WEB, SS) [3] · Windows of Opportunity (WEB, VMS) [3] · Parental Guidance (WEB, SS) [2] · Lucky Break (WEB, SS) [2].
- **POURQUOI** : Windows montre la prochaine tile sans la chercher ; Lithe convertit un rushed vault en +50 % Haste 3 s pour l'atteindre (synergie citée par les deux fiches). Parental Guidance (5/6/7 s sans traces après un stun) et Lucky Break (sans griffures ni sang quand blessé) aident à casser la ligne après le contact.
- **QUAND** : cartes riches en fenêtres ; joueur qui connaît mal les cartes procédurales ; tueurs M1 qui pistent aux traces.
- **CONTRE QUOI** : tueurs qui suivent griffures et sang ; tueurs anti-palette (Brutal Strength, Enduring, vérifiées) : Lithe ne dépend pas des palettes.
- **CAS D'ÉCHEC** : Blight, Nurse (mobilité : la distance gagnée ne compte pas, fiches Lithe et Windows) ; zones mortes sans fenêtre ; tueurs à aura ou Undetectable (Lucky Break sans effet) ; Lithe est une perk d'Exhaustion : pas de seconde (Sprint Burst, Dead Hard…). Five Moves Ahead ferait doublon avec Windows en LIVE (fiche).

### 4.2 Information — Spine Chill [PTB] · Alert · Inner Focus · Empathy
Perks : Spine Chill (WEB, SS) [info 2] · Alert (WEB, SS) [2] · Inner Focus (WEB, SS) [3] · Empathy (WEB, SS) [2].
- **POURQUOI** : répond à quatre questions sans vocal. Le tueur me regarde-t-il (Spine Chill, ≤ 36 m) ? Où casse-t-il ou kicke-t-il (Alert, aura 3/4/5 s) ? Qui vient d'être touché (Inner Focus, aura 6/8/10 s + griffures des alliés) ? Où sont les blessés et mourants (Empathy, 64/96/128 m) ?
- **QUAND** : SoloQ ; tueurs à slowdown par coups de pied (Pop, Call of Brine, Eruption : chaque kick déclenche Alert).
- **CONTRE QUOI** : tueurs qui tournent entre plusieurs gens ; tueurs qui cachent leur approche sans être Undetectable.
- **CAS D'ÉCHEC** : Undetectable (Beast of Prey, Insidious, Dark Devotion : Alert bloquée selon la fiche, HYPOTHESIS) ; Blindness (Septic Touch vérifiée ; Mindbreaker, Hex: The Third Seal ⚠ UNCERTAIN) coupe les auras ; tueurs qui ne cassent rien et ne kickent pas. Aucun apport direct en chase ni en soin.

### 4.3 Générateurs — Potential Energy · Corrective Action · Boon: Steadfast · Repressed Alliance
Perks : Potential Energy (WEB, SS) [gen 2] · Corrective Action (WEB, SS) [2] · Boon: Steadfast (WEB, SS) [2] · Repressed Alliance (WEB+AUDIT, VMS) [1, macro 2].
- **POURQUOI** : Potential Energy stocke 10/15/20 % à poser d'un coup sur un gen menacé ; Steadfast (24 m) divise la régression par deux et donne +8/9/10 % de réparation ; Corrective Action transforme les skill checks ratés des alliés en Good (pas d'explosion) ; Repressed Alliance bloque le gen 15 s quand le tueur arrive (après 40/35/30 s de réparation seul).
- **QUAND** : 3-gen défensif ; tueurs à régression (Hex: Ruin, Call of Brine, Pop Goes the Weasel) ; équipes qui réparent à plusieurs.
- **CONTRE QUOI** : régression passive et coups de pied ; Pain Resonance (fiche tueur : ne pas laisser un gen très avancé seul au moment d'un accrochage ; Potential Energy permet de le finir).
- **CAS D'ÉCHEC** : Shattered Hope (détruit le Boon, fiche vérifiée) ; perdre un état de santé fait perdre les jetons de Potential Energy ; Corrective Action ne sert à rien en réparant seul ; Repressed Alliance bloque aussi les alliés ; DR entre bonus de réparation (HYPOTHESIS) ; effet d'aura de Steadfast ambigu (fiche).

### 4.4 Soin — Botany Knowledge · Self-Care · Bite the Bullet · Empathy
Perks : Botany Knowledge (WEB, SS) [soin 3] · Self-Care (WEB, SS) [2] · Bite the Bullet (WEB, SS) [2] · Empathy (WEB, SS) [2].
- **POURQUOI** : autonomie (Self-Care, auto-soin à 25/30/35 %), vitesse (Botany, +30/40/50 %), discrétion (Bite the Bullet : soin silencieux, raté sans bruit), repérage des blessés et mourants (Empathy). Un seul bonus de vitesse de soin « identique » (Botany) pour limiter les DR ; We'll Make It / Empathic Connection en plus seraient probablement réduits (HYPOTHESIS, fiches).
- **QUAND** : SoloQ sans soigneur fiable ; grandes cartes ; tueurs qui ne reviennent pas vite.
- **CONTRE QUOI** : tueurs M1 où chaque état de santé compte.
- **CAS D'ÉCHEC** : A Nurse's Calling (aura des soigneurs à 28/30/32 m, VERIFIED audit) annule la discrétion ; Sloppy Butcher (Mangled + Haemorrhage), Coulrophobia (−20/25/30 % dans la terreur), Septic Touch (Blindness + Exhausted) ; Broken (Terminus, Forced Penance ⚠ UNCERTAIN) ; tueurs « one-shot », Nurse, Blight : ~45 s d'auto-soin coûtent plus qu'un gen (fiche Self-Care, calcul HYPOTHESIS).

### 4.5 Altruisme (décrochage, relevage) — Reassurance · Babysitter · We'll Make It [PTB] · We're Gonna Live Forever
Perks : Reassurance (WEB, SS) · Babysitter (WEB, SS) [anti-tunnel 2] · We'll Make It (WEB, SS) [soin 3] · We're Gonna Live Forever (WEB, SS) [soin 2, anti-tunnel 2].
- **POURQUOI** : Reassurance met le sacrifice en pause 20/25/30 s pour choisir le moment du sauvetage ; Babysitter donne l'aura du tueur 8 s et efface les traces du décroché (+10 % Haste 20/25/30 s) ; We'll Make It soigne les autres +100 % après un décrochage ; WGLF relève +100 % et donne Endurance 6/8/10 s.
- **QUAND** : rôle de sauveteur désigné ; tueurs qui campent ou patrouillent près du crochet.
- **CONTRE QUOI** : camp, proxy-camp, tueur qui revient au crochet.
- **CAS D'ÉCHEC** : Make Your Choice (sauveteur Exposed 40/50/60 s si le tueur est à plus de 32 m, SS) ; Starstruck ; tunnel immédiat (We'll Make It tier I trop court, fiche) ; slug ; l'approche à 6 m pour Reassurance peut vous faire mettre à terre ; DR We'll Make It + WGLF sur la vitesse de relève (HYPOTHESIS).

### 4.6 Anti-tunnel — Will to Live · Off the Record ⚠ · Deliverance · Lithe
Perks : Will to Live (WEB+AUDIT, SS) [anti-tunnel 3] · **Off the Record ⚠ (AUDIT partiel : durée et Endurance SS, conditions UNCERTAIN)** [3] · Deliverance (WEB+AUDIT, VMS) [1] · Lithe (WEB, SS) [1].
- **POURQUOI** : fenêtres de protection qui se recouvrent après le décrochage (fiche Will to Live). Will to Live : stun 4 s si le tueur vous ramasse dans les 40/50/60 s. Off the Record : Endurance et aura cachée 30/35/40 s. Deliverance : auto-décrochage après un sauvetage propre. Lithe : relance la chase.
- **QUAND** : tueurs qui tunnel ; SoloQ où personne ne prend de coup pour vous.
- **CONTRE QUOI** : tunnel juste après les protections de base de décrochage (10.1.0 : Endurance, 10 % Haste, Elusive 10 s, audit).
- **CAS D'ÉCHEC** : le tueur slugge ou attend la fin de la fenêtre ; réparer ou soigner coupe Will to Live (et probablement Off the Record, ⚠) ; gens tous finis = Will to Live inactive ; Deliverance rend Broken 160/140/120 s ; Knock Out cache l'aura du survivant à terre aux alliés.

### 4.7 Anti-slug — Tenacity · Boon: Exponential · Soul Guard · We're Gonna Live Forever
Perks : Tenacity (WEB, SS) · Boon: Exponential (WEB, SS) [soin 2] · Soul Guard (WEB, SS) · We're Gonna Live Forever (WEB, SS). Alternative : **Unbreakable ⚠ UNCERTAIN** (limite « une fois, mise à terre par le tueur » SS, pourcentages UNCERTAIN).
- **POURQUOI** : à terre, Tenacity (rampe +30/40/50 %, récupération simultanée, gémissements −75 %) mène au Boon ; Exponential (24 m) donne +90/95/100 % de récupération et la relève complète seule ; Soul Guard ajoute Endurance 4/6/8 s après la relève (et l'auto-relève sous Cursed) ; WGLF relève les autres deux fois plus vite.
- **QUAND** : tueurs qui slugguent (Knock Out ; Infectious Fright, Forced Hesitation ⚠ UNCERTAIN) ; menace de 4-slug.
- **CONTRE QUOI** : slug en fin de chase, slug de fin de partie.
- **CAS D'ÉCHEC** : Shattered Hope détruit le Boon et révèle les survivants dans son rayon ; tueur qui ramasse tout de suite ; Soul Guard sans Hex du tueur = moitié de la perk morte, et CD 30 s ajouté contre le combo avec WGLF (fiche) ; Deep Wound déjà actif = Endurance inutile.

### 4.8 Fin de partie — Adrenaline · No One Left Behind [PTB] · Reassurance · Clairvoyance
Perks : Adrenaline (WEB+AUDIT, SS ; durée de Haste 3 s ou 4 s : conflit) [endgame 3] · No One Left Behind (WEB, SS) [2] · Reassurance (WEB, SS) [3] · Clairvoyance (WEB, SS) [2].
- **POURQUOI** : à l'alimentation des portes, Adrenaline rend un état de santé et +50 % Haste ; NOLB accélère soins et décrochages (+50/75/100 %) ; Reassurance contre le face-camp final ; Clairvoyance montre interrupteurs, trappe et crochets (64 m) après un totem.
- **QUAND** : parties qui arrivent jusqu'aux portes.
- **CONTRE QUOI** : No Way Out et Blood Warden (vérifiées) ; NOED (⚠ UNCERTAIN).
- **CAS D'ÉCHEC** : Terminus rend Broken aux portes et **empêche le soin d'Adrenaline** (fiche tueur) ; partie perdue avant les portes ou 3-gen = 3 perks sans valeur ; Clairvoyance exige d'avoir les mains vides et un totem.

### 4.9 SoloQ — Will to Live · Windows of Opportunity [PTB] · Deliverance · Empathy
Perks : Will to Live [SoloQ 3] · Windows of Opportunity [3] · Deliverance [3] · Empathy [2] (toutes WEB). Alternative : **Kindred ⚠ UNCERTAIN** (noté SoloQ 3 dans sa fiche, mais non re-vérifié ; 8/12/16 m du seed, 14/15/16 m au PTB selon le seed).
- **POURQUOI** : sans vocal, prendre des perks qui ne dépendent pas des coéquipiers : anti-tunnel autonome (Will to Live), auto-décrochage (Deliverance), repérage des tiles (Windows), position des blessés (Empathy).
- **QUAND** : file solo.
- **CONTRE QUOI** : tunnel et crochets mal gérés par l'équipe.
- **CAS D'ÉCHEC** : Deliverance exige d'avoir fait un décrochage sûr avant d'être accroché ; slug ; joueur expert des cartes (Windows perd sa valeur) ; rework PTB de Windows.

### 4.10 SWF — Shoulder the Burden [PTB] · Breakout · Teamwork: Throw Down · Teamwork: Full Circuit
Perks : Shoulder the Burden (WEB, SS) [SWF 3] · Breakout [2] · Teamwork: Throw Down [2] · Teamwork: Full Circuit [2] (toutes WEB, SS).
- **POURQUOI** : le vocal rend exploitables les effets à deux. Full Circuit : +5 % et zone Good +15/20/25 % par allié sur le gen. Throw Down : Endurance 6/8/10 s aux alliés blessés à 24 m après un aveuglement ou un stun de palette. Breakout : Haste et lutte +25 % pour un sauvetage au portage. Shoulder the Burden : prendre un état de crochet à la place d'un allié.
- **QUAND** : équipe coordonnée avec lampes et palettes.
- **CONTRE QUOI** : tunnel d'un joueur (Shoulder the Burden) ; portages longs (Breakout).
- **CAS D'ÉCHEC** : Starstruck (« punit fortement les saves SWF », fiche) ; Hex: Two Can Play (aveugle le flasheur) ; Lightborn, Iron Grasp, Mad Grit (⚠ UNCERTAIN) ; Shoulder the Burden rend Exposed 60/50/40 s (au PTB : Broken et désactivée pour toute l'équipe) ; DR entre Full Circuit et Soft-Spoken (+5 % chacun, HYPOTHESIS).

### 4.11 Apprentissage — Windows of Opportunity [PTB] · Spine Chill [PTB] · Botany Knowledge · Reassurance
Perks : les quatre sont de difficulté **1** dans leur fiche (passives ou déclenchement simple), toutes WEB (Windows VMS, autres SS).
- **POURQUOI** : elles montrent ce que le débutant ne voit pas encore : où sont les tiles (Windows), quand le tueur regarde (Spine Chill), et elles réduisent le coût des erreurs (soins plus rapides, pause du crochet pour apprendre le timing du sauvetage).
- **QUAND** : premières parties, ou nouvelles cartes.
- **CONTRE QUOI** : les erreurs de débutant (chercher les palettes en chase, rester sur un gen quand le tueur approche).
- **CAS D'ÉCHEC** : Windows ne sert plus quand on connaît les cartes (fiche) ; Spine Chill exige une ligne de vue ; deux perks reworkées au PTB 10.2.0. Au PTB, Slippery Meat est présentée comme anti-tunnel pour débutants (PTB, non LIVE).

### 4.12 Régularité — Distortion · Windows of Opportunity [PTB] · Sprint Burst · Empathy
Perks : Distortion (WEB, SS) · Windows of Opportunity (WEB, VMS) · Sprint Burst (WEB+AUDIT, VMS) · Empathy (WEB, SS). Critère : parmi les perks WEB, ce sont celles dont les notes HEURISTIC sont non nulles sur le plus d'axes (7 à 8 sur 9). Elles apportent donc un peu de valeur dans la plupart des parties.
- **POURQUOI** : peu de conditions de déclenchement. Distortion masque l'aura et **signale** qu'un effet d'aura existe ; Sprint Burst donne 2 s de +50 % Haste au premier contact ; Windows et Empathy fonctionnent en permanence.
- **QUAND** : pour grimper sans connaître le tueur à l'avance.
- **CONTRE QUOI** : tueurs à lecture d'aura (BBQ ⚠, Lethal Pursuer ⚠, Nowhere to Hide, A Nurse's Calling).
- **CAS D'ÉCHEC** : Distortion ne se déclenche jamais contre un tueur sans aura ; Sprint Burst gâchée si on court sans raison, et déclenchée trop tard contre les tueurs furtifs (fiche) ; aucune perk n'excelle dans un axe : contre un tueur précis, un build spécialisé fait mieux (HEURISTIC).

---

## 5. Limites et reprise

- **162 lignes sur 321 (50 %) sont UNCERTAIN** (Vérif. = NON). À re-vérifier en priorité, sur page complète (wiki.gg, notes de patch), dès que l'accès web le permet : voir `kb/ledgers/TODO_RESEARCH.md`.
- Les verdicts « FAUX probable » (Boon: Dark Theory, Terminus) reposent sur **une seule source** : à recouper avant publication.
- À la sortie de 10.2.0 (estimée début octobre 2026, non officiel), toutes les lignes PTB « oui » / « oui? » doivent être re-vérifiées puis passées en LIVE ; les builds marqués [PTB] sont à revoir.
- Les notes 0-3, les indices observables et les builds sont **HEURISTIC** : aucune analyse de VOD ni statistique de victoire n'a été faite.
