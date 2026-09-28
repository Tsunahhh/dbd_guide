# Audit pass 14 — lot 9 : macro, SoloQ/SWF, game sense, états de partie, fin de partie (`kb/research/batch9_macro.md`)

- Date : 27/09/2026. Référence : LIVE 10.1.2a. **Aucune recherche web** (quota épuisé, domaines bloqués).
- Méthode : AUDIT 1 (§25, auditeur hostile) + AUDIT 2 (§26, « que ferait un joueur qui applique ce texte à la lettre ? »), plus recalcul de tous les chiffres à partir de `kb/seed/audit_phase0.txt` (seule source de faits vérifiés). Attention particulière aux arbres crochet / soin / slug, à la séparation SoloQ / SWF et aux règles anti-camp / protections de décrochage.
- Fichiers consultés pour les contradictions : `kb/seed/audit_phase0.txt` (tables 1.1 à 1.7, registre 9.0.0 → 10.1.2a, OUTDATED A-054/A-074/A-267/A-283), `batch4_killers_g1.md` (Shape), `batch4_killers_g6.md` (Judgment), `batch6_chase_tech.md`, `batch11_training.md`, `deliverables/PERK_DATABASE.md`.
- Fichier modifié : **`kb/research/batch9_macro.md` uniquement** (aucun autre fichier touché, pas de commit).

## 0. Recalculs vérifiés

| Bloc | Vérification | Résultat |
|---|---|---|
| Coop (§1.1) | 90 / 1,7 = 52,94 ; 90 / 2,1 = 42,86 ; 90 / 2,2 = 40,91 s | OK (audit SS) |
| Coût en s-surv (§1.2) | 2 × 52,94 = 105,9 ; 3 × 42,86 = 128,6 ; 4 × 40,91 = 163,6 ; +17,6 / +42,9 / +81,8 % ; 163,6 − 90 = 73,6 | OK |
| Valeur d'1 s de chase | 3/90 = 1/30 ; 1,7/90 = 1/52,9 | OK (A-267) |
| Soin, skill check, kick | 32/90 = 0,36 gen ; 9 c + 3 s = 12 s ; 4,5 + 60 × 0,25 = 19,5 c ; 5 % = 4,5 s solo, 2,65 s à 2 | OK |
| Rattrapage 10 m | 10/0,6 = 16,7 s ; 10/0,4 = 25 s ; audit A-054 : 16,3 / 21,7 (Bloodlust) ; 12-13 / 17-18 (fente) | OK en §1.2 ; **incomplet en §2.10** (P05) |
| Temps d'arrivée TR | 32/4,6 = 6,96 s ; 24/4,4 = 5,45 s | OK |
| Gen à 80 % | 18 c : 18 s solo ; 18/1,7 = 10,6 s | OK |
| Camp de 60 s | 3 × 60 = 180 s-surv = 2 gens | OK (si 3 réparent) |
| Totems | 5 × 14 = 70 s = 0,78 gen | OK |
| Positionnement | 20-30 s × 4 m/s = 80-120 m | OK |
| 9.B (ancien) | 45/2,1 = 21,4 s | calcul juste, **scénario incohérent** (P01) |
| 9.C (ancien) | porte à 60 % = 12 s d'ouverture, mais gens finis « il y a 10 s » | **impossible** (P12) |
| Bilan du soin (§2.10) | 12-30 s de chase × 3 réparateurs = 36-90 s-surv vs 32 s-surv de soin | **le texte disait « proche de l'équilibre » : faux dans son propre modèle** (P04) |
| Nouveaux calculs ajoutés | 45/1,7 = 26,5 s ; 63 c = 63 s solo ; 30/4,6 = 6,5 s ; porte 90 % = 2 s, 95 % = 1 s | OK |

## 1. Problèmes trouvés

| ID | Passage (fichier + titre de section) | Problème | Type | Gravité | Correction appliquée |
|---|---|---|---|---|---|
| P01 | batch9 §0, §2.2, §8 état 6, §9.B | « Gens restants » jamais défini : confusion entre gens **à réparer** et gens **présents sur la carte** (7 − finis). Le 3-gen était défini comme « les 3 gens restants », donc au mauvais moment (à 3 gens restants il y en a encore 5 sur la carte). Le 9.B mélangeait « 3 gens restants » et « le 4e gen déjà fini », et son analyse ignorait qu'**un seul** gen suffit à alimenter les portes. | §25 / contradiction / calcul | haute | Convention ajoutée au §0 (gens restants vs gens sur la carte, définition du 3-gen = 4 finis, 3 sur la carte). §2.2 et état 6 réécrits (le 3-gen se décide à 3-4 gens restants), état 8 = moment du 3-gen. 9.B entièrement réécrit (4 finis, 1 à faire, débits et temps de retour recalculés, contre-jeu du tueur). |
| P02 | batch9 §1.1 « Valeurs de base », §1.2 portage | Portage 3,68 m/s étiqueté STRONG_SECONDARY ; l'audit (table 1.3) classe la vitesse de portage et la durée du ramassage « information non suffisamment vérifiée » (UNCERTAIN). Même erreur dans batch6 (C6-16, table portage) et batch11 (ligne « Vitesses »), non modifiés ici. | étiquette / contradiction | moyenne | Réétiqueté UNCERTAIN, calcul de portage marqué « ordre de grandeur » avec ramassage non vérifié ; ligne « Non FACT » dans Claims. |
| P03 | batch9 §1.1, §2.8 « Slugging », §7.5 SLUG | Omission de la précision « à l'arrêt » de la récupération au sol (audit 1.3, wiki). Le texte disait à la fois « rampez vers un coéquipier » et « laissez la récupération travailler », et l'arbre slug supposait l'allié à 95 % même s'il avait rampé. | §25 / contradiction | haute | Arbitrage « ramper vs récupérer » ajouté (§2.8) avec conditions ; arbre §7.5 corrigé (95 % seulement si immobile) ; point à sourcer n° 13 (test). |
| P04 | batch9 §2.10 « Ce que rapporte un état de santé » | Conclusion « un soin est proche de l'équilibre » contraire au modèle du fichier : 12-30 s de chase avec 3 réparateurs = 36-90 s-surv > 32 s-surv. | calcul / contradiction | haute | Bilan chiffré réécrit : rentable dans le cas idéal (3 réparateurs), proche de l'équilibre à 2, perdant avec trajet, coup unique, ranged, ou si le soigné n'est pas le prochain chassé. |
| P05 | batch9 §2.10 | Rattrapage « 16-25 s » : ignore Bloodlust et fente (A-054 : 12-13 / 17-18 s). | calcul | basse | Fourchette corrigée avec les valeurs A-054 ; hypothèse ramenée à ~12-30 s (et dans « Points à sourcer »). |
| P06 | batch9 §2.6 « Camping et proxy camp », §7.1 CROCHET | Arbre à deux branches (face camp < ~10 m / proxy 16-30 m) : **la bande 10-16 m manquait**, alors que c'est là qu'un tueur profite du camp en ne payant presque pas l'anti-camp (×1 → ×0,375, FACT SS). Un joueur littéral y attendrait l'anti-camp. | §25 / §26 | haute | Branche « 10-16 m en mouvement → traiter comme un proxy » ajoutée à l'arbre et au §2.6. |
| P07 | batch9 §7.1, branche proxy | Trou dans le hook stage : > 30 s et < ~15 s traités, 15-30 s absent. | §25 | moyenne | Branche 15-30 s : se rapprocher hors zone et hors LOS, décrocher dès qu'il s'engage (cohérent avec 9.A). |
| P08 | batch9 §7.1 (pouvoir), §9.A (analyse A) | « Ranged prêt → le trade coûte 2 états » et « vous blessé + Meg reprise, 2 états » : faux, le décroché a Endurance (1er coup = Deep Wound) ; la conclusion de 9.A parlait ensuite d'« un même état ». | §25 / calcul | moyenne | Coup unique et ranged séparés dans l'arbre ; paragraphe « Ce que coûte vraiment un trade raté » ajouté au §2.5 ; 9.A : cas probable = 1 état + blessure, pire cas = 2 états. |
| P09 | batch9 §6.4, §8 état 12 | « Ne jamais se faire mettre au sol **près** d'un allié accroché en Struggle » : l'audit (9.0.0) ne donne aucune condition de distance pour le Mori de fin. Un joueur littéral se croirait protégé loin du crochet. | §25 / étiquette | haute | Réécrit « où que vous soyez » ; état 12 corrigé ; question ouverte n° 10 (condition non documentée ?). |
| P10 | batch9 §5.5 (gate camp) vs §6.2 | Contradiction : « ne pas lâcher une porte à 90 % sous ses yeux » contre « lâcher plutôt que prendre un coup à 18/20 s » (= 90 %). | contradiction | moyenne | Règle unique dans les deux sections : temps restant (2 s à 90 %, CALC) < temps d'arrivée → finir, sinon lâcher ; nuance EGC. |
| P11 | batch9 §2.1 pt 3 vs §2.9 | Contre un 3-gen : « deux joueurs sur le gen clé » contre « deux gens différents du triangle ». | contradiction | moyenne | Deux options conditionnées (duo si le tueur est loin en chase, split s'il patrouille). |
| P12 | batch9 §9.C « Situation » | Porte à 60 % alors que les gens sont finis depuis 10 s (20 s d'ouverture → 50 % max). | calcul | moyenne | Gens finis il y a ~20 s ; 60 % = 12 s faites, 8 s restantes (CALC). |
| P13 | batch9 §7.3 GEN | « Gen frappé 4+ fois (pointes) → bon gen pour la fin » : confond l'apparition des pointes (4e event) et le plafond (8e event). | §26 / calcul | moyenne | Réécrit : il reste jusqu'à 4 events au tueur ; « sûr » contre les kicks seulement au 8e ; skill checks ratés toujours actifs. |
| P14 | batch9 §3.3, §7.1 [SoloQ] | Délai de confirmation fixe de 15-20 s : si les 3 joueurs l'appliquent, ils partent ensemble (doublon) ; délai indépendant du trajet et du temps de phase. | §26 | haute | Délai à adapter (délai + trajet < fin de phase), revérification des portraits/auras en route ; point à sourcer n° 16 (calibrage). |
| P15 | batch9 §3.3 (Kindred, égalité) | Départage « celui qui est sur le gen le plus avancé reste » : information que le SoloQ ne voit pas de façon fiable. | §26 | moyenne | Départage sur critères observables (santé, crochets, déjà en course). |
| P16 | batch9 §2.8, §4.2 protocole slug, §7.5 | « Tueur à côté du mourant → personne ne vient » sans exception : contre un tueur qui attend, l'équipe laisse courir le bleed-out (240 s). | §26 | moyenne | Exception « un sain le tire en chase, un autre relève » (SWF sur annonce, SoloQ seulement si clairement le mieux placé). |
| P17 | batch9 §7.5 | « Dernier debout → éviter à tout prix la chase » : absolu ; aucune consigne s'il est trouvé. | §26 | basse | Nuancé (Surrender si tous au sol) + consigne de chase longue près d'un tile fort. |
| P18 | batch9 §2.9 « Reset » | « À 1-2 gens de la fin, on ne reset pas » : absolu. | §26 | basse | « Rarement rentable » + cas de soin ciblé (chase d'endgame, protection hit, pas d'Adrenaline). |
| P19 | batch9 §2.10, table (TR pendant le soin) | « Arrêter et partir » sans exception. | §26 | basse | Défaut + exception « soin presque fini » (même calcul que le gen) + tueurs furtifs. |
| P20 | batch9 §2.13 | « > 16 m ne vous expose pas » : faux, la LOS compte. | §26 | basse | Réécrit (hors rayon ≠ hors vue). |
| P21 | batch9 §7.1 | Aucun contre-jeu du tueur : un tueur qui simule un départ exploite la branche « il part ». | §26 | moyenne | Paragraphe « Contre-jeu du tueur à haut niveau » : exiger un signe d'engagement ailleurs. |
| P22 | batch9 §6.1 « Le 99 » | Pas de contre-jeu (survivant immobile à côté d'un gen = indice) ; un Great peut finir le gen près de 99 %. | §26 | basse | Ajouté ; « 99 → 90 » ramené à « ~90-94 % (ordre de grandeur) ». |
| P23 | batch9 §7.1, phase 2 | « Sauvetage prioritaire » sans exception quand le seul sauveteur est à 2 crochets ou blessé face à un pouvoir prêt. | §26 | moyenne | Exception ajoutée ; même critère ajouté au §2.5 (« sauveteur à 2 crochets »). |
| P24 | batch9 §7.1, contre-indications | « Sous-sol insabotable → sauvetage plus long » (non sequitur) ; « Pain Res / Grim Embrace : le sauvetage déclenche » (c'est l'accrochage qui déclenche, lot 3). | §25 | moyenne | Réécrit (insabotable = sabotage seulement ; danger = géométrie, NV ; déclenchement à l'accrochage, sur crochet Fléau pour Pain Res). |
| P25 | batch9 §2.5, §2.10, §7.2 | Shape en Evil Incarnate listée sans réserve comme « coup unique » ; lot 4 : SEED-NRV, UNCERTAIN. | étiquette | moyenne | Étiquetée UNCERTAIN partout ; point à sourcer n° 15. |
| P26 | batch9 §5.1 vs §2.12 | « Notifications de gen : FACT audit » contredit le §2.12 (NV) ; cris de Pain Res attribués à l'audit (lot 3). | étiquette / contradiction | basse | Étiquettes séparées (FACT / NV / lot 3 + CONFLICT-L3P90-02). |
| P27 | batch9 en-tête | Mode 2v8 jamais mentionné : un lecteur pourrait transposer la macro 1v4 (13 gens / 8 requis en 2v8, FACT audit). | §25 | moyenne | Note de périmètre « 1v4 uniquement » en en-tête. |
| P28 | batch9 §2.7 (The Judgment), §7.1 | Omission : exilés libérés réapparaissent à ≥ 32 m (10.1.2) ; Exiled Souls +0,5 s de protections (FACT audit). | §25 | basse | Ajouté (§2.7, arbre, Claims L9-24). |
| P29 | batch9 §2.5 (sabotage) | Omission : crochet détruit réapparaît 60 s après un sacrifice (8.1.0, FACT audit SS). | §25 | basse | Ajouté + Claims L9-23. |
| P30 | batch9 §5.2 « Zones épuisées » | Omission du rééquilibrage des palettes en 9.2.0 (10 royaumes, moins de dead zones) ; Bamboozle sans étiquette ; fenêtre bloquée (temporaire) mise au même rang que palette cassée (définitive). | §25 / étiquette | basse | Ajouté (Claims L9-25), étiquette lot 3 SS, distinction temporaire / définitif. |
| P31 | batch9 §8 état 1 | Offrandes d'apparition (Shroud of Separation, Vigo's Shroud, Shroud of Vanishing, FACT 9.0.0) absentes du début de partie. | §25 | basse | Ajoutées + Claims L9-26. |
| P32 | batch9 §2.6, §2.7 | Interactions de perks manquantes : Deliverance, Reassurance (changent la décision face au camp ; Reassurance impose d'entrer à 6 m) ; Will to Live coupé par réparer/soigner (PERK_DATABASE). | §25 (interactions) | moyenne | Ajoutées avec leurs étiquettes (lot 2 WEB, SS au mieux ; Deliverance Broken 10.1.0 VERIFIED_PRIMARY). |
| P33 | batch9 §1.3 « Tableau de course » | Fins hors crochet oubliées (bleed-out, EGC, Mori, règles à 2) ; « −33 % de débit parallèle » sans hypothèse. | §25 / calcul | basse | Complété ; « −25 % des survivants, −33 % de réparateurs quand un survivant est en chase (3 → 2) ». |
| P34 | batch9 §8 état 5 | « Midgame (2-4 gens finis) » chevauche les états 6-8 (2, 3 et 4 finis). | contradiction | basse | Midgame = 1-2 gens finis. |
| P35 | batch9 §1.1 « Vitesses » | Confiance uniforme VERIFIED_MULTI_SOURCE alors que Nurse = SS et Blight = VERIFIED_PRIMARY. | étiquette | basse | Confiances séparées. |
| P36 | batch9 §9.A | Exemple limité à un Trapper M1 sans avertissement ; l'échéance « ~10 s » ne se transpose pas à un tueur à coup unique ou ranged. | §26 | basse | « Limite de l'exemple » ajoutée. |
| P37 | batch9 §7.2 SOIN vs §2.10 | L'arbre disait « coup unique → soin peu rentable ; gens » sans la nuance M1 présente dans le tableau §2.10. | §26 / contradiction | basse | Nuance M1 (SITUATIONAL) ajoutée à l'arbre. |
| N1 | batch9 §2.6, §7.1 (face camp) | Temps de remplissage de l'anti-camp incalculable : taux de base après 9.3.0 inconnu (CONFLICT-003 ; « ~50 % » non retrouvé en source primaire). | §25 | moyenne | Non corrigeable sans source (déjà signalé UNCERTAIN). |
| N2 | batch9 §2.2, §3.5, §5.7, §8 (transitions), §2.8 (Abandon) | Tous les jugements stratégiques (priorité 3-gen, erreur SoloQ la plus coûteuse, transitions décisives) sont des EXPERT OPINION **non sourcées** : aucune source unique, et encore moins deux. | §25 | moyenne | Non corrigeable sans source (étiquettes déjà présentes). |
| N3 | batch9 §3.2 « Lecture du HUD » | Tout l'arbre SoloQ repose sur des éléments HUD NV (icônes d'action, compteur de crochets, indicateur de chase, barres colorées 9.6.0). | §25 | moyenne | Non corrigeable sans source (inventaire en jeu requis). |
| N4 | batch9 §2.1, §2.2, §4.5, §6, §7.4 | Valeurs de perks UNCERTAIN (Kindred, Déjà Vu, Prove Thyself, Hope, Wake Up!, NOED, No Holds Barred, Remember Me, Grim Embrace) dont dépendent plusieurs recommandations. | §25 | moyenne | Non corrigeable sans source. |
| N5 | batch9 §1.3, §5.7 | Seuils du tableau de course (0,25 / 0,4) et délai SoloQ : valeurs de rédacteur. | §26 | basse | Non corrigeable sans données (étiquetés HEURISTIC, calibrage demandé). |
| N6 | batch9 §2.8, §7.5 | Durée du relevage d'un mourant (0 → 100 %, 95 → 100 %) absente de l'audit : l'arbitrage slug n'est pas chiffrable. | §25 | moyenne | Non corrigeable sans source. |

**Bilan** : 43 problèmes — **haute 6** (P01, P03, P04, P06, P09, P14), **moyenne 20** (15 corrigés + N1-N4, N6), **basse 17** (16 corrigés + N5). 37 corrigés dans `batch9_macro.md` ; 6 non corrigeables sans source (N1-N6).

Contradictions inter-fichiers signalées (non corrigées ici, hors périmètre d'écriture) : portage 3,68 m/s étiqueté SS dans `batch6_chase_tech.md` (table §1 et C6-16) et `batch11_training.md` (ligne « Vitesses ») alors que l'audit dit UNCERTAIN.

## 2. Lacunes restantes (tâches de recherche précises)

1. **CONFLICT-003** : partie personnalisée, tueur immobile à 4 m puis à 10 m d'un crochet, chronométrer le remplissage de la jauge anti-camp jusqu'à l'auto-décrochage (3 essais par distance), et vérifier si le multiplicateur ×1/×2/×4 court pendant la grâce de 7 s.
2. **Récupération au sol « à l'arrêt »** : chronométrer 0 → 95 % immobile, puis en rampant en continu ; mesurer aussi le relevage allié de 0 → 100 % et 95 → 100 %.
3. **Portage** : chronométrer un portage sur une distance mesurée (repères de carte connus) et la durée du ramassage, pour remplacer 3,68 m/s (UNCERTAIN) dans batch6, batch9 et batch11.
4. **Mori de fin** : relire le texte intégral des notes 9.0.0 (support.deadbydaylight.com, quand l'accès sera rétabli) pour une éventuelle condition de distance ou de délai.
5. **Shape (9.2.0/9.2.3)** : texte officiel de Slaughtering Strike (met-il au sol un sain ? exécution sur 2e crochet ?) : notes 9.2.0/9.2.3 et page wiki The Shape.
6. **HUD 10.1.2a** : captures datées des portraits (icônes d'action, compteur de crochets, indicateur de chase, barres colorées 9.6.0) et vérification de l'aura basekit des alliés accrochés / au sol.
7. **Protections et Exile** : vérifier sur la page wiki The Judgment si Endurance/Haste/Elusive s'appliquent à la sortie d'Exile.
8. **Valeurs LIVE** (WebSearch ou wiki une fois débloqué) : Kindred, Déjà Vu, Prove Thyself, Hope, Wake Up!, NOED, No Holds Barred, Remember Me, Grim Embrace, Reassurance, Deliverance.
9. **Calibrage SoloQ** : sur 20 parties SoloQ enregistrées, relever le délai avant le premier départ vers un crochet et le taux de doubles sauveteurs.
10. **Valeur d'un état de santé** : sur 20 chases enregistrées (tueurs M1, coup unique, ranged), mesurer la durée de chase avant / après la première blessure.
11. **Source experte datée** (coach ou joueur compétitif, VOD ≥ 2025) sur : 3-gen (duo vs split), trade en proxy camp, gestion du 99 — lot 10 bloqué par l'accès.
12. **2v8** : fichier macro séparé (13 gens / 8 requis, Revealed, règles de crochet propres au mode) : aucune couverture à ce jour.
13. **Lot 5** (objets) : flash save, pallet save, Fog Vial (9.1.0 → 4 charges en 9.5.0) comme outils d'information et de sauvetage, référencés ici mais non traités.
14. **Lot 8** : emplacements des portes et de la trappe par carte (fixe vs RNG), indispensables aux conseils « porte la plus éloignée » et standoff de trappe.

## 3. Verdict de profondeur §27 par grande section

| Section | Niveau atteint | Manque principal |
|---|---|---|
| §1 Monnaie de la partie (s-surv) | +QUAND (+FAILURE partiel : limites de l'indicateur) | Pas de COUNTER ni de DRILL (renvoi lot 11) |
| §2 Macro survivant | +FAILURE (Pourquoi / Quand / Contre quoi / Risque / Alternative presque partout) | DRILL absent (renvoi lot 11) ; chiffres de perks UNCERTAIN |
| §3 Solo Queue | +FAILURE (erreur la plus coûteuse, décisions robustes, piège de désynchronisation) | DRILL absent ; HUD NV |
| §4 SWF | +FAILURE (erreurs spécifiques SWF, protocoles, lexique) | DRILL de callouts absent ; aucune source experte |
| §5 Game sense | +DRILL (partiel : 5.1 prédiction à 10 s) | Drills des autres sous-sections absents |
| §6 Fin de partie | +COUNTER (99, gate camp, NWO, Blood Warden, Judgment, contre-jeu tueur ajouté) +FAILURE | DRILL absent ; trappe NV (saut, clé) |
| §7 Arbres de décision | +COUNTER (contre-jeu tueur en 7.1) +FAILURE (erreurs typiques) | DRILL absent ; arbres non testés sur parties réelles |
| §8 États de partie | +FAILURE (erreurs catastrophiques par état) | POURQUOI court dans chaque case ; pas de drill |
| §9 Situations §31 | +FAILURE (erreur typique, limite d'exemple) | DRILL absent ; 4 situations seulement (pas de 4-slug, pas de NOED, pas de Knock Out) |
