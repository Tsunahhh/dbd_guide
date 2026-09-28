# Audit pass 14 — lot 6 : techniques de chase et chase theory (`kb/research/batch6_chase_tech.md`)

- Date : 27/09/2026. Référence : LIVE 10.1.2a. **Aucune recherche web** (quota épuisé, domaines bloqués).
- Méthode : AUDIT 1 (§25, auditeur hostile) + AUDIT 2 (§26, « que ferait un joueur qui applique ce texte à la lettre ? »), plus recalcul des chiffres à partir de `kb/seed/audit_phase0.txt` (seule source de faits vérifiés).
- Fichiers consultés pour les contradictions : `batch9_macro.md`, `batch11_training.md`, `batch4_killers_g3.md`, `batch4_killers_g6.md`, `deliverables/KILLER_COUNTERPLAY_HANDBOOK.md`, `ledgers/BATCH_2_4_SYNTHESIS.md`, `ledgers/OUTDATED_CONTENT_REPORT.md`.
- Fichier modifié : **`kb/research/batch6_chase_tech.md` uniquement** (aucun autre fichier touché, pas de commit).

## 0. Recalculs vérifiés sans erreur

| Bloc | Vérification | Résultat |
|---|---|---|
| §2.1 vitesses de rapprochement | 4,6 : 0,6/0,8/1,0/1,2 ; 4,4 : 0,4/0,6/0,8/1,0 ; Nurse −0,15 ; 1 m = 1,67 / 2,5 s (0,83 / 1,0 avec BL max) | OK |
| Table 2.2 (42 valeurs) | Recalcul par intégration par paliers de Bloodlust (9 m à 15 s, 17 m à 25 s, 27 m à 35 s pour 4,6 ; 6/12/20 m pour 4,4) | OK, toutes justes (dont les 16,3 / 21,7 s de l'audit A-054 et les 12-13 / 17,5-18,3 s avec fente) |
| Coop | 90 / (2 × 0,85) = 52,9 ; 90 / 2,1 = 42,9 ; 90 / 2,2 = 40,9 s | OK (audit SS) |
| Table §4.1 (24 valeurs) | n × e × durée / 90 | OK ; 450 / 2,4 = 187,5 s ; 1/37,5 gen par seconde | 
| §4.2 | Portage 20 m / 3,68 = 5,4 s ; 40 m = 10,9 s ; Enduring 1-1,2 s ; Bamboozle 1,7/1,05-1,15 = 1,48-1,62 s ; 5 % = 4,5 charges | OK (conversion Bamboozle = hypothèse, voir P32) |
| §4.3 exemples | p* = 10/27 = 0,370 ; 10/60 = 0,167 ; ΔEV +3,25 / −5 / −3,5 s ; ratio 2,2 | OK |
| §4.3 formule | ΔEV > 0 ⇔ p < T_loop / (T_loop + C_hit) ; dimension : secondes / secondes, p sans dimension | OK **à condition** que T_loop et C_hit soient convertis avec le même `n × e` (voir P06) |
| §4.4 | 42 s-s / 2,4 = 17,5 s ; 100-150 / 2,4 = 42-62 s ; 16 / 0,67 ≈ 24 s-s | OK |
| §4.12 | 2,4 (T + 8) ≥ 80-120 → T = 25,3-42 s ; ≥ 117,5-170 → T = 41-62,8 s ; 90 s → 216 s-s ; 25 m / 3,68 = 6,8 s ; net +136 s-s ; contre-exemple 1,6 × 28 = 44,8, net −55 | OK |
| Situation 1, option A | Simulation pas à pas (tueur atteint la palette à 1,25 s, casse jusqu'à 3,59 s, survivant au jungle gym à 6,25 s) : écart ≈ 12,8 m | OK (« 11-12 m » est prudent) |
| Situation 2 | 5 − 2,5 = 2,5 m / 1,2 = 2,1 s ; 30 % × 90 = 27 s | OK (voir P16 pour e) |

## 1. Problèmes trouvés

| ID | Passage (fichier + section) | Problème | Type | Gravité | Correction |
|---|---|---|---|---|---|
| P01 | batch6 §2.1 « Gain d'un obstacle » + table 2.3 (colonne secondes) | La colonne « secondes de chase » vaut `Δécart / v_r` : elle oublie le temps `t_k` pendant lequel le tueur est immobile et ne rattrape rien. Preuve : si survivant et tueur s'arrêtent tous deux `t` secondes, la formule donne 0 alors que la capture est retardée de `t`. Sous-estimation de 1-4,3 s par ligne. | calcul | moyenne | Corrigé : formule `t_k + Δécart / v_r`, écart équivalent `v_tueur × t_k − 4,0 × t_s`, table recalculée (fast vault 9,7 / 13,7 s ; palette pré-jetée 17,9 / 25,7 s ; stun + casse 33 / 48 s…), anciennes valeurs gardées entre crochets. Répercuté en §4.2, §4.3-4, §4.5, situation 1 (≈ 16-18 s au lieu de ≈ 15 s). |
| P02 | batch6 §2.1 / table 2.3 (palette pré-jetée) | `t_s` = 0 suppose un drop instantané ; la durée d'abaissement est INV dans l'audit. | calcul / étiquette | basse | Corrigé : biais signalé (compense en partie P01). |
| P03 | batch6 T11 « Mécanique » et T18 « Utile » (condition de loop sûr) | « Un loop fonctionne quand ton trajet est plus court que le sien » / « avance > différence de trajets + fente » : **erreur de modèle**, l'écart de vitesse est oublié. Il faut comparer des temps : `trajet_s × v_k / 4,0 < trajet_k − fente`. Exemple : 10 m contre 13 m avec fente 2,5 m semble sûr (3 m > 2,5 m) mais ne l'est pas (10,5 m disponibles < 11,5 m requis contre un 4,6). Appliqué à la lettre : greed sur des tiles qui ne tiennent pas. | calcul / §26 | haute | Corrigé dans T11 et T18 (formule, exemple chiffré, rappel HEURISTIC « garder une marge »), claim C6-21 ajouté. |
| P04 | batch6 §4.3 « Mécanique / modèle » | « **Greed rentable si p < T_loop / (T_loop + C_hit)** » en gras, sans étiquette sur la ligne : se lit comme une règle, alors que p, T_loop et C_hit ne sont pas mesurés. | étiquette / §26 | haute | Corrigé : ligne réécrite en « seuil d'indifférence (HYPOTHESIS, pas une règle) » ; bandeau HYPOTHESIS en tête de fichier ; §4.3-5 « utiliser l'arbre T05 en partie, le modèle en VOD ». |
| P05 | batch6 §4.3 | Hypothèses cachées non dites : drop immédiat supposé sans risque (p_drop = 0) ; une seule décision alors que p monte à chaque cycle (Bloodlust) ; p endogène (un tueur exploite un greed prévisible, faille à haut niveau) ; gain partiel ignoré dans la branche « coup » ; valeur future de la palette supposée identique ; valeur d'un état de crochet non convertible ; p non observable en direct. | §25 / §26 | haute | Corrigé : liste de 7 hypothèses ajoutée. |
| P06 | batch6 §4.3-4.4 (dimension de C_hit) | `C_hit` est un coût en s-s converti en « secondes de chase » par `n × e` : il **dépend de n**, ce qui n'était dit nulle part. Moins d'alliés sur gens → C_hit plus grand → p* plus bas. | calcul (cohérence dimensionnelle) | moyenne | Corrigé : paragraphe « cohérence dimensionnelle », valeurs n = 2 en §4.4 (≈ 26 s sain, ≈ 62-94 s blessé) et table de sensibilité de p* (T_loop 5/10/15 s × 4 cas : p* de 0,06 à 0,47, facteur ~8). |
| P07 | batch6 §5 Situation 1 « Informations connues » | Utilise `C_hit` ≈ 50 s (valeur n = 3) alors que la situation pose n = 2 → incohérence d'unités. Valeur cohérente : 62-94 s, p* ≈ 0,10-0,14 (au lieu de 0,17). Conclusion (option A) inchangée. | calcul / contradiction interne | moyenne | Corrigé (et « pièce lancée sur 50 s » → « enjeu ≈ 60-90 s »). |
| P08 | batch6 §4.3-4.4 vs table 2.3 | Contradiction interne : `C_hit` sain = 17 s (coût du soin seulement) alors que la table 2.3 attribue à un coup reçu ≈ 17-25 s de chase **gagnées** (boost + reset de Bloodlust) ; le coût de rester blessé n'est pas chiffré. Le signe net de C_hit sain est inconnu. | contradiction | moyenne | Signalé comme hypothèse 4 du modèle ; **non corrigeable sans source** (demande des données de VOD). |
| P09 | batch6 §4.12-3 « Seuils indicatifs » | Présentés comme « CALC sur ce modèle » : l'arithmétique est juste, mais le modèle (coût du crochet 80-120 s-s, e = 0,8, portage 8 s, rythme 37,5-50 s-s par état) est entièrement HYPOTHESIS. | étiquette | moyenne | Corrigé : titre « Seuils indicatifs — HYPOTHESIS », ligne de dimension ajoutée. |
| P10 | batch6 §4.12 et §4.14 | « Seuils × ~1,5 avec 2 alliés » : faux en toute rigueur (la constante de portage ne se multiplie pas). Exact : 42-67 s et 65-98 s. | calcul | basse | Corrigé (et claim C6-19 mis à jour). |
| P11 | batch6 §4.12 | Le seuil de rythme ignore le temps de recherche / trajet du tueur **entre** les chases (pendant lequel les gens avancent) → biais pessimiste ; ignore aussi le 3e crochet (mort, −1 réparateur), la phase 2, le trade au sauvetage. | §25 | moyenne | Corrigé : liste (a)-(e) des termes ignorés. |
| P12 | batch6 §4.12-4 exemple « chase perdue mais rentable » | « C'est une chase gagnante pour l'équipe » : absolu ; faux si les alliés n'ont pas vraiment réparé ou si le crochet s'inscrit dans un tunnel qui mène à une mort (cf. lot 9 : répartition des crochets). | §26 | moyenne | Corrigé : conditions explicites, étiquette HYPOTHESIS. |
| P13 | batch6 §4.12-8 exercice | « Chases < 25 s à analyser en priorité » : transforme un seuil HYPOTHESIS en critère de faute ; risque d'habitude « tenir coûte que coûte ». | §26 | basse | Corrigé : chases courtes = à comprendre, pas à compter comme fautes ; ajout « une chase courte peut être inévitable ». |
| P14 | batch6 §5 Situation 1 « Meilleure logique » | « Contre Blight en Lethal Rush, le pre-drop ne lui coûte presque rien » : **contredit** l'audit (9.6.0, VERIFIED_PRIMARY : casser une palette au sol ramène ses tokens de Rush à 2 sous le max et remet la recharge à 0 %) et `KILLER_COUNTERPLAY_HANDBOOK.md` (Anti-loop : « pré-drop rentable contre Blight »). Mauvais conseil contre un tueur précis. | contradiction | haute | Corrigé : exception Blight ajoutée en situation 1 et §4.2 ; renvoi au handbook ; liste des casses instantanées signalée « à reconfirmer » (Knight 10.1.1). |
| P15 | batch6 §5 Situation 1 analyse A | « Gain sûr ≈ 15 s de chase au minimum, sans risque de coup » : absolu, et valeur à recalculer (P01). | §26 / calcul | moyenne | Corrigé : « ≈ 18 s, risque de coup faible » + sources du risque restant (piège, drop tardif, temps perdu dans le shack). |
| P16 | batch6 §5 Situation 2 | « 2 gens tombent en ~27-30 s » : calculé à e = 1 alors que le fichier pose e = 0,8 ailleurs (≈ 34 s). | calcul | basse | Corrigé (27-34 s). |
| P17 | batch6 §5 Situation 2 option B | « `C_hit` ≈ 17 s de chase + soin » : double comptage, le soin est déjà dans les 17 s. | calcul | basse | Corrigé. |
| P18 | batch6 §5 Situation 2 conclusion | « Chaque seconde de plus fait tomber deux gens » (faux tel quel) ; aucune limite si le filler est la dernière palette de la zone d'endgame. | §26 | basse | Corrigé : « rapproche deux gens de la fin » + limite endgame (§4.5). |
| P19 | batch6 §5 Situations 1 et 2 | Rapprochements 0,8 et 1,2 m/s étiquetés FACT alors que ce sont des CALC. | étiquette | basse | Corrigé (FACT = entrées de l'audit, CALC = résultat). |
| P20 | batch6 T09 « Mécanique » | « Son avantage de vitesse ne compense pas un trajet plus long de plusieurs mètres » : faux sur une longue boucle (0,6 m/s × 10 s = 6 m ; 1,2 m/s avec Bloodlust max). | calcul / §26 | moyenne | Corrigé : 4 m compensés en ≈ 7-10 s sans BL, ≈ 3-4 s avec BL max ; le double-back paie surtout sur cycle court. |
| P21 | batch6 T01 « Mauvais quand » | « À +0,4/+0,6, le rapprochement double » : ×1,7-2 (4,6), ×2-2,5 (4,4). | calcul | basse | Corrigé. |
| P22 | batch6 §2.2 « Lecture pratique » | « Un tile à 20 m est à peine atteignable sans avance » : sans avance on est rattrapé quelle que soit la distance ; il faut ≈ 7,5-8,5 m d'écart contre un 4,6 à BL +0,4/+0,6. Hypothèses de la table non rappelées. | calcul | basse | Corrigé + ligne « hypothèses de la table ». |
| P23 | batch6 T11 | « Palettes espacées de 14-20 m donc chaque transition coûte au minimum 3,5-5 s » : généralisation (l'espacement vaut entre palettes, pas entre tiles). | généralisation §26 | basse | Corrigé : « de palette à palette ». |
| P24 | batch6 T22 exercice 360 | Seuil « > 50 % de réussite » arbitraire (asymétrie gain ≤ 11 s / perte = un coup ; tout taux > 0 est un gain si le coup était inévitable) ; taux mesuré contre un ami = surestimé contre un bon tueur. | §26 | moyenne | Corrigé. |
| P25 | batch6 T08 « Mécanique » | « La tache suit la caméra, pas le corps » présenté comme fait ; l'audit dit « direction où il regarde et se déplace ». | étiquette | basse | Corrigé : HYPOTHESIS déduite du moonwalk décrit par le wiki. |
| P26 | batch6 T21 « Contre-jeu » | « Un tueur qui frappe tôt au bout de sa fente profite mécaniquement de la latence » : non sourcé. | étiquette | basse | Corrigé : HYPOTHESIS. |
| P27 | batch6 §4.1 vs `batch9_macro.md` (camp : « 3 s-surv par seconde ») et `batch11_training.md` (1/30 gen) | Efficacité e = 0,8 ici, e = 1 implicite ailleurs ; e peut aussi dépasser 1 (Great +1 % : audit SS ; objets, perks) ou tomber (skill check raté −10 % + 3 s : audit SS). | contradiction / §25 | basse | Corrigé dans batch6 (note de comparabilité) ; autres fichiers non modifiés (hors périmètre). |
| P28 | batch6 §3 (catalogue T01-T22) | Technique majeure absente : **pre-running** / début de chase (se mettre en route avant que la poursuite et la Bloodlust ne démarrent). Le lot 4 emploie le terme sans le définir. | §25 | haute | Corrigé : T23 ajouté au format 7 points, tout en HEURISTIC, aucun chiffre non sourcé. |
| P29 | batch6 §2.3, §4 (ensemble) | Interactions perks/objets absentes des calculs de distance : perks d'épuisement (Dead Hard, Sprint Burst, Lithe, Balanced Landing), Endurance / Haste / Hindered de perks, lampe torche en chase. | §25 | moyenne | **Non corrigeable sans source** (valeurs de perks hors audit, lot 2 en partie UNCERTAIN) → « Points à sourcer » n° 18. |
| P30 | batch6 en-tête | Mode 2v8 non mentionné : rien n'empêchait d'appliquer les modèles 1v4 au 2v8 (13 gens / 8 requis). | §25 / étiquette | basse | Corrigé : ligne « 1v4 uniquement ». |
| P31 | batch6 T01, T05, T08, T11, T19 | Renvois internes « §14.3 / §14.4 / §14.6 / §14.7 / §14 abandon » vers des sections qui n'existent pas dans le fichier (numérotées §4.x). | étiquette | basse | Corrigé (→ §4.3, §4.4, §4.5, §4.6, §4.7, §4.13). |
| P32 | batch6 §4.2 (Bamboozle 1,48-1,62 s) | Conversion « +x % de vitesse = durée / (1 + x) » supposée ; si c'est durée × (1 − x), 1,45-1,62 s. | étiquette | basse | **Non corrigeable sans source** (déjà au conditionnel « si »). |
| P33 | batch6 table 2.3 ligne « coup reçu » | « ~10-15 m au total » sans bornes : CALC donne ≈ +3 m (tueur à pleine vitesse pendant le cooldown) à ≈ +15,5 m (tueur immobile). | calcul | basse | Corrigé (bornes affichées, 10-15 m laissé en HYPOTHESIS). |
| P34 | batch6 §1.3 liste des casses instantanées | Fraîcheur : Knight modifié en 10.1.1 (« gardes et palettes », contenu non lu), Blight coûteux depuis 9.6.0. | §25 (freshness) | basse | Signalé en situation 1 ; **non corrigeable sans source** pour Knight. |
| P35 | batch6 T01 « Utile quand » | Classement seed « Legion, Clown, Doctor… anti-loop → tenir W » non vérifié par tueur. | §26 | basse | **Non corrigeable sans source** (déjà marqué « à confirmer au lot 4 »). |
| P36 | batch6 §4.14 SoloQ | « Seuils plus exigeants en SoloQ » non chiffré, et lisible comme « tiens plus longtemps » alors que le modèle dit « prends moins de risques ». | §26 | basse | Corrigé : valeurs (p* 0,28 / 0,11 ; 42-67 s) et mise en garde. |

**Bilan : 36 problèmes — 5 hauts, 11 moyens, 20 bas. 31 corrigés, 5 non corrigeables sans source (P08, P29, P32, P34 pour Knight, P35).**

## 2. Lacunes restantes (tâches de recherche précises)

1. **Vitesse du tueur pendant les cooldowns 2,7 s / 1,5 s** : `site:deadbydaylight.wiki.gg "attack" cooldown movement speed` puis notes 6.1.0 ; fixe la ligne « coup reçu » de la table 2.3 (actuellement +3 à +15,5 m).
2. **Durée d'abaissement de la palette** (fixe `t_s` du pre-drop) et instant de la fenêtre de stun : page wiki.gg Pallets complète ; à défaut, capture 60 fps en partie personnalisée.
3. **Portée et durée de la fente** : capture 60 fps, fente complète en ligne droite contre un survivant immobile, 10 mesures par classe de vitesse (4,6 / 4,4) ; alimente T11, T18, table 2.2.
4. **Bloodlust et stun** : page wiki.gg Bloodlust complète, liste des « pouvoirs concernés » et effet d'un stun de palette ; unité de « rate of 6 ».
5. **Bamboozle** : formulation exacte (« vault speed +5/10/15 % ») pour trancher durée / (1 + x) vs durée × (1 − x).
6. **Casses instantanées LIVE 10.1.2a** : notes 10.1.1 (Knight, gardes et palettes), 9.6.0 (Mastermind, Demogorgon Shred), wiki.gg Pallets.
7. **Perks d'épuisement et effets de vitesse** (Dead Hard, Sprint Burst, Lithe, Balanced Landing, Haste de perks) : valeurs LIVE à re-vérifier dans `PERK_DATABASE.md` puis ajouter une ligne par perk à la table 2.3.
8. **Calibration de `p`** (modèle §4.3) : relever sur ≥ 50 cycles de greed en VOD personnelle le taux de coup par cycle, par type de tueur (M1 / anti-loop / distance), état de santé et palier de Bloodlust.
9. **`T_loop` par tile** (lot 7) : chronométrer un cycle de shack, jungle gym (L, T), filler et fenêtre forte contre un tueur 4,6 et 4,4 en partie personnalisée.
10. **Efficacité `e` et coût réel d'un crochet** : si NightLight ou BHVR publient des durées moyennes de chase, de crochet et de gen, les comparer aux 80-120 s-s supposés ; sinon relever sur 20 parties personnelles (temps de trajet du sauveteur, soins faits).
11. **Temps de recherche du tueur entre chases** (terme (a) de §4.12) : mesurer en VOD le temps entre fin de chase ou crochet et début de chase suivante.
12. **2v8** : vitesses, Bloodlust, palettes et rapprochement dans ce mode (page wiki.gg 2v8).
13. **Pre-run (T23)** : trouver une source experte (guide ou coaching écrit) qui décrit les signaux de départ, puis mesurer la différence de durée de chase avec / sans pre-run sur 20 parties.
14. **Validation serveur** : message développeur BHVR confirmant ou infirmant le seuil ~300 ms et la validation événementielle (Dead Hard, stuns de palette).

## 3. Verdict de profondeur (§27)

| Section de `batch6_chase_tech.md` | Niveau atteint | Commentaire |
|---|---|---|
| §1 Chiffres de référence | QUOI seul (voulu) | Tables de référence avec confiance ; c'est leur rôle. |
| §2 Calculateur distance / temps | +QUAND | Formules, limites, hypothèses de la table ; pas de contre-jeu propre (renvois aux techniques). Corrigé sur le temps `t_k`. |
| §3 T01-T19 (techniques) | +DRILL | Format 7 points complet (définition, mécanique, quand, mauvais, erreurs, contre-jeu, exercice). Limite : seuils de réussite des drills HEURISTIC, non calibrés. |
| §3 T20-T22 (collision, hitbox, 360) | +DRILL | T21 distingue bien documenté / rumeur. |
| §3 T23 (pre-run, ajouté) | +DRILL | Entièrement HEURISTIC ; à sourcer. |
| §4.1-4.2 (unité, coût pour le tueur) | +QUAND | Pas de drill ni de cas d'échec propres ; l'effet de `e` est maintenant discuté. |
| §4.3 EV d'une palette | +DRILL | Modèle, hypothèses cachées, sensibilité, contre-jeu, exercice. Reste HYPOTHESIS non calibrée (lacunes 8-9). |
| §4.4-4.13 | +DRILL | Format complet ; §4.12 enrichi des termes ignorés. |
| §4.14 SoloQ vs SWF | +QUAND | Pas de contre-jeu ni de drill dédiés. |
| §5 Situations concrètes | +FAILURE | Options, analyse chiffrée, décision, erreur typique ; pas de drill associé (renvoi possible à T05). |
