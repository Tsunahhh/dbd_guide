# Audit pass 14 — lot 5 : objets, add-ons, offrandes, coffres, techniques de save (`kb/research/batch5_items.md`)

- Date : 27/09/2026. Référence : LIVE 10.1.2a. **Aucune recherche web** (WebSearch / WebFetch indisponibles). Vérifications faites sur : `kb/seed/audit_phase0.txt` (seule source de faits vérifiés), `kb/ledgers/AUDIT_PHASE0_ERRATA.md`, notes officielles archivées (`kb/sources/patches/official_516.txt` = 9.1.0, `official_523.txt` = 9.2.0, `official_538.txt` = 9.5.0, `official_517.txt` = 9.1.1, `official_559.txt` = PTB 10.2.0), et 7 pages wiki complètes relues avec `kb/tools/wiki_text.py` (Instructions, Skill Checks, Toolboxes, Hooks, Luck, Offerings, Flashbang).
- Méthode : AUDIT 1 (§25, auditeur hostile), AUDIT 2 (§26, « que ferait un joueur qui applique ce texte à la lettre ? »), recalcul de tous les chiffres dérivés.
- Fichiers consultés pour les contradictions : `batch2_perks_surv_p24/p25/p26/p27/p29.md`, `batch3_perks_kill_p93/p94/p96.md`, `batch4_killers_g1.md`, `batch9_macro.md`, `batch11_training.md`, `deliverables/PERK_DATABASE.md`, `deliverables/DECISION_TREES.md`.
- Fichier modifié : **`kb/research/batch5_items.md` uniquement**. Pas de commit.
- Consigne du coordinateur appliquée : Built to Last LIVE = **14/12/10 s** (note 9.1.0, section « Changes from PTB », `official_516.txt` l. 759-763 : « Increased the time spent in a locker to 14/12/10 seconds (was 12/10/8) »). Le seed avait raison.

## 0. Recalculs vérifiés sans erreur

| Bloc | Vérification | Résultat |
|---|---|---|
| §2.1 toolbox | 16 / 90 = 17,8 % ; BNP 10 / 90 = 11,1 % | OK |
| §4.3 table toolbox (10 lignes) | gain = C × b / (1 + b) : 1,64 / 2,18 / 5,33 / 6,67 / 6,86 / 8,0 / 10,67 / 14,2 / 16,0 / 19,6 / 24,2 s | OK (formule cohérente avec le transfert de charges décrit par la page Toolboxes) |
| §2.2 kits | 16 / 1,5 = 10,7 s ; 16 / 1,35 = 11,9 s ; 16 / 0,667 = 24 s ; 16 × 1,333 = 21,3 charges ; 40 − 21,3 = 18,7 ; 24 / 16 = 1,5 état | OK |
| §4.3 kits | 32 − 21,3 = 10,7 s-surv/état ; × 1,5 = 16 ; × 2,5 = 26,7 ; 32 − 24 = 8 | OK |
| §2.4 Reactive Compound | 1,2 − 1 = 0,2 s | OK (hypothèse soustractive) |
| §3.2 Luck | 1 − 0,93³ = 19,6 % ≈ 20 % ; 3 × 20 s = 60 s | OK |
| §4.2 clé | 16 + 5 + 2 = 23 % (données 2019) | OK (étiquette HISTORICAL présente) |
| §5 portage | 3,68 × 16 = 58,9 m ; 1 s ≈ 3,7 m ; Breakout 16 / 1,25 = 12,8 s | OK |
| §5.4 sabotage | 3 / 1,5 = 2 s ; 3 / 2 = 1,5 s ; 3 / 1,3 = 2,3 s ; Alex's 18 / 6 = 3 sabotages | OK : la page Hooks dit que le sabotage « will **always** consume 6 Charges » (la hausse de vitesse ne réduit pas la consommation) |
| §4.3 Great avec toolbox | 21,3 s × 0,4 = 8,5 tests ; 8,5 % × 90 = 7,7 charges ; 32 × 0,08 = 2,6 tests → 2,3 charges ; écart ≈ 5,4 s | OK (mais voir P16 pour le ratio de ratés) |

## 1. Problèmes trouvés

| ID | Passage (fichier + titre de section) | Problème | Type | Gravité | Correction appliquée |
|---|---|---|---|---|---|
| P01 | batch5 §4.1 « Perks de coffre LIVE », Pharmacy | **Texte PTB 10.2.0 présenté comme LIVE** : « ouverture **et fouille** +75/100/125 %, une fouille par coffre ». La note 559 marque la fouille « (was only unlock) » et la fouille par coffre « (NEW) » ; la note 9.2.0 (523) ne parle que de l'ouverture ; `batch2_perks_surv_p26.md` aussi. Contredit la ligne d'en-tête « PTB jamais utilisé comme LIVE ». | étiquette / contradiction | haute | Corrigé : LIVE = ouverture seule, PTB signalé ; claim L5-36. |
| P02 | batch5 §5.8 « Wiggle », contres | Iron Grasp « +10/11/12 %, valeur LIVE à re-vérifier : UNCERTAIN » = **valeur PTB**. LIVE = **4/8/12 %** (ligne « was » de la 559 ; `batch3_perks_kill_p93.md` VMS). Agitation sans valeur (LIVE 6/12/18 %). | étiquette / contradiction | haute | Corrigé (§5.8, §5.4) + CALC de portage avec Agitation / Iron Grasp (69 m, 17,9 s / 66 m, 78 m) ; claim L5-37 ; question ouverte 9 close. |
| P03 | batch5 §2.1 « Perks qui changent la toolbox », §4.3 Built to Last, claim L5-30, écart seed | Built to Last à **12/10/8 s** (valeur du PTB 9.1.0 affichée par le wiki). LIVE = **14/12/10 s** (note officielle). Le calcul de rentabilité (§4.3 « 0 à +3 s », « ~+6 s ») et le verdict « IMPRÉCIS » contre le seed étaient faux. | contradiction / calcul | haute | Corrigé partout : recalcul net ≈ −3,4 à +0,6 s (Commodious), ≈ +0,1 à +4 s (Socket Swivels) ; seed → **OK** ; claim VERIFIED_PRIMARY. |
| P04 | batch5 §2.1, add-on Instructions | « Utile contre Doctor, Huntress Lullaby, Unnerving Presence, **Overcharge** » : la page Instructions dit « does not affect any **special** Skill Checks triggered by outside effects » ; Overcharge, Oppression, Merciless Storm sont des tests spéciaux (page Skill Checks) ; les Madness Skill Checks du Doctor sont un type à part. Un joueur prendrait Instructions contre Overcharge, sans effet. | §25 / §26 | haute | Corrigé : utile contre les modificateurs de tests normaux (HYPOTHESIS), inutile contre les tests spéciaux, Doctor UNCERTAIN ; coût chiffré (≈ +5 s de Great perdus) ; claim L5-38. |
| P05 | batch5 §5.1 « Flash save », WHEN | « Le tueur n'a pas Lightborn (**vérifiez la fin de partie précédente**…) » : impossible, chaque partie a un autre tueur et son loadout est **caché jusqu'à la fin** (Match Details 9.6.0, audit VP). Habitude fausse : croire le risque vérifiable. | §26 / contradiction avec l'audit | haute | Corrigé : indices en partie seulement, renvoi `PERK_DEDUCTION.md`, risque résiduel dit. |
| P06 | batch5 §1 « Règles transversales » | Sujet majeur absent : **Match Details (9.6.0)** rend visibles les objets et add-ons des coéquipiers. C'est la principale différence SoloQ d'usage des objets (savoir qui a lampe / clé / kit) ; déjà utilisé par `batch11_training.md` l. 160. | §25 (SoloQ/SWF) | moyenne | Corrigé : puce ajoutée en §1 + valeur SoloQ de la lampe nuancée (§2.3). |
| P07 | batch5 §3.1 « Luck (9.0.0) » | « Une offrande de Luck est la seule façon » (hors 2 survivants, Slippery Meat, Up the Ante) : l'audit (table 1.3, VP) et la page Hooks ajoutent Deliverance, Wicked (sous-sol) et la jauge anti-camp pleine. PTB 10.2.0 : Slippery Meat refondue sans Luck. | contradiction / §25 | moyenne | Corrigé ; claim L5-39. |
| P08 | batch5 §3.2, Luck personnelle « Assurance SoloQ » | Risque non dit : 3 échecs = −60 s sur une phase de 70 s ; tenter tôt **ferme la fenêtre** d'un sauveteur qui arrive. | §26 | moyenne | Corrigé : risque chiffré, « tenter seulement quand personne ne vient ». |
| P09 | batch5 §2.1 « Brand New Part : détails » | « Sur un gen à 0 %, aucun risque » : absolu ; un test raté fait probablement un bruit fort, et le bonus est perdu si le gen n'est jamais fini. | §26 | moyenne | Corrigé (bruit en HYPOTHESIS, question ouverte 14). |
| P10 | batch5 §2.1, add-on Grip Wrench | « Un sabotage tient tout un portage » : raisonnement faux, 30 s de base couvrent déjà 16 s de wiggle. La vraie valeur (pré-sabotage, portages longs) n'était pas dite. | §26 / calcul | moyenne | Corrigé (§2.1 et §5.4 « Pré-sabotage »). |
| P11 | batch5 §5 (toutes les techniques) | WHY / WHEN / HOW / FAILURE sans étiquette : un joueur les lit comme des règles du jeu. | étiquette | moyenne | Corrigé : bandeau « HEURISTIC sauf mention FACT/CALC, calibré sur un tueur moyen ». |
| P12 | batch5 §5.1 « Flash save » | Technique valable surtout contre des tueurs moyens (ramassage face au mur par réflexe à haut niveau) ; alternatives absentes. | §26 | moyenne | Corrigé : puce « Limite à haut niveau » + alternatives (§5.3-5.7, gens). |
| P13 | batch5 §5.5 « Body block », WHEN | « **Jamais** si vous êtes à 2 paliers » : trop absolu (EGC, dernier save, survivant sain qu'un coup ne met pas au sol). | §26 | moyenne | Corrigé : « par défaut, pas » + exceptions. |
| P14 | batch5 §2.3 « Ce qui compte vraiment » | Kit de save avec Wide Lens sans son coût : portée 10 → **7,5 m** (CALC) = se cacher plus près. | §26 | basse | Corrigé : coût + alternative Leather Grip. |
| P15 | batch5 §2.2 « Med-Kits » | Interactions statuts × kit absentes : Broken (kit inutile), Mangled (+25 % : auto-soin ≈ 30 s, CALC), Haemorrhage (perte à −7 %/s), Deep Wound (mending). Toutes dans l'audit table 1.4. | §25 | moyenne | Corrigé : bloc « Statuts qui changent la valeur du kit » + renvoi « quand ne pas soigner ». |
| P16 | batch5 §4.3 « Great avec toolbox » et §2.1 « Erreurs fréquentes » | « 5 fois plus de ratés possibles » : vrai **par seconde** ; à progression égale le ratio est **≈ 3,3** (8,5 tests contre 2,6). Le gain +5 s suppose 100 % de Great, non dit. | calcul | basse | Corrigé aux deux endroits. |
| P17 | batch5 §2.1 « Usage optimal » et §4.3 | Les gains de toolbox sont calculés **en solo** sans le dire ; l'interaction avec la pénalité de coop (85/70/55 %, audit SS) est inconnue. « Réparer seul… pas de pénalité de groupe » pouvait se lire « toujours réparer seul ». | §25 / §26 | moyenne | Corrigé en partie (limite dite, contre-lecture écartée) ; **valeur non corrigeable sans source** (question ouverte 12). |
| P18 | batch5 §5.4 « Sabotage », WHEN | « Casser un crochet Scourge prive le tueur de sa perk » : seulement 30 s (50 s), et seulement s'il visait ce crochet. | §26 | basse | Corrigé. |
| P19 | batch5 §5.6 « Protection hit », FAILURE | « Protéger un décroché qui a encore son Endurance » posé comme erreur absolue ; l'Endurance tombe après 10 s / action voyante et ne protège pas sous Deep Wound (audit) ; `batch9_macro.md` (situation « Dwight ») combine Endurance et protection hit. | contradiction / §26 | basse | Corrigé : « souvent redondant » + cas où cela redevient utile. |
| P20 | batch5 §5.9 « Trappe », HOW 3 | « Tueur à plus de ~2,5 s » = marge nulle (il arrive pile à la fin). CALC : 11-11,5 m + fente + saisie. | calcul / §26 | basse | Corrigé (valeurs + marge HEURISTIC). |
| P21 | batch5 §5.9, HOW 1 | Contradiction interne : « repérez la trappe **avant** d'être le dernier (son de la trappe ouverte) » alors que la trappe ne s'ouvre qu'au dernier survivant (même section). | contradiction | basse | Corrigé. |
| P22 | batch5 §2.2 « Erreurs fréquentes » | « S'auto-soigner dans le Terror Radius » : critère trop large (TR grand, tueur parfois en chase ailleurs). | §26 | basse | Corrigé : « quand le tueur vient vers vous ». |
| P23 | batch5 §3.2 Vigo's Shroud | « Forte en SoloQ » sans contrepartie (on quitte le spawn groupé ≤ 12 m). | §26 | basse | Corrigé. |
| P24 | batch5 §3.2 offrandes de royaume | « 80 % de chances de ne rien changer » : le tirage aléatoire peut aussi tomber sur ce royaume ; gain réel < 20 points. | calcul | basse | Corrigé. |
| P25 | batch5 en-tête | Liste PTB 10.2.0 incomplète pour ce lot : Dark Arrogance 25 %, Slippery Meat sans Luck, Better Than New (coffres), Agitation, Iron Grasp. | §25 (fraîcheur) | basse | Corrigé : bloc PTB en §0, mention en §5.1 et §3.1. |
| P26 | batch5 §2.8 Flash Grenade vs `batch2_perks_surv_p24.md` l. 263 | batch2 : « la perk se désactive après usage » ; batch5 : « réutilisable ». Les deux sont vrais (description + trivia wiki : « not single-use », réactivation à chaque seuil). | contradiction | basse | Corrigé dans batch5 (nuance) ; batch2 **non modifié** (hors périmètre). |
| P27 | `deliverables/PERK_DATABASE.md` l. 111 vs batch5 §4.1 | Ace in the Hole : « add-on ≤ Very Rare, second 10/25/50 % » (PERK_DATABASE) contre « Visceral ou moins, 50/75/100 % » (batch5 = `batch2_perks_surv_p29.md` re-vérifié). | contradiction | basse | **Non corrigé** : hors périmètre (livrable à aligner sur batch2 p29). |
| P28 | batch5 §0 « Conventions » | « FACT [SS] » = source unique, non issue de l'audit ; rien ne le disait. Deux valeurs que l'audit notait faibles (40 %/s toolbox : UNCERTAIN ; 3,68 m/s : SS via fandom) étaient données FACT sans mention. | étiquette | basse | Corrigé : note de portée (40 % relu dans le tableau de la page Skill Checks ; 3,68 m/s relu sur la page wiki.gg Hooks). |
| P29 | batch5 §5.1 DRILL | Seuil « > 6/10 » arbitraire ; taux contre un ami surestimé. | §26 | basse | Corrigé (étiquette + biais). |
| P30 | batch5 §2.3 « Interactions spéciales » | Liste lampe × pouvoirs limitée aux tueurs anciens (Shape, Ghost Face, Legion, Mastermind, Nemesis, Knight, Animatronic) ; rien sur Dredge, Dracula, Houndmaster, Lich, Ghoul, Krasue… | §25 | moyenne | **Non corrigeable sans source** : avertissement ajouté (absence de ligne ≠ absence d'interaction), question ouverte 15. |
| P31 | batch5 §5.2 « Aveuglement à la casse de palette » | Coût caché absent : second survivant près de la chase (pas sur les gens, cible saine pour un changement de cible). | §26 | basse | Corrigé. |
| P32 | batch5 §5.3 « Pallet save » | Absents : Enduring (stun ≈ 1-1,2 s, CALC sur −40/45/50 %) et le fait que pallet save / Head On passent Lightborn. | §25 (interactions perks) | basse | Corrigé. |
| P33 | batch5 §5.5 « Body block », COUNTER | Mad Grit (pause du wiggle 2/3/4 s par coup) absente, alors qu'elle rend le body block coûteux. | §25 | basse | Corrigé. |
| P34 | batch5 §4.3 « Lampe / Fog Vial » | « Flash save ≈ un palier de 70 s de pression » : 70 s est la durée d'une phase, pas la valeur du save. | calcul / étiquette | basse | Corrigé (composantes listées, valeur non chiffrée). |
| P35 | batch5 §5.4 HOW 2 | « 2-4 s avant son arrivée » ambigu (début ou fin du sabotage ?) ; pas de mention du tueur expérimenté qui vise d'emblée un crochet de secours. | §26 / calcul | basse | Corrigé (début ≈ 3,5-7 s avant, CALC). |
| P36 | batch5 §5 « Chiffres communs » | Protections de décrochage sans les nuances de l'audit (Haste 10 %, Elusive absente une fois les gens réparés, Endurance annulée par action voyante). | §25 | basse | Corrigé. |

**Bilan : 36 problèmes — 5 hauts, 11 moyens, 20 bas. 33 corrigés, 3 non corrigés (P17 en partie : valeur non corrigeable sans source ; P27 : hors périmètre ; P30 : non corrigeable sans source).**

## 2. Lacunes restantes (tâches de recherche précises)

1. **Toolbox en coop** : lire la section « Repair Speeds » et « Calculations » de la page wiki.gg Generators pour savoir si le bonus de toolbox s'applique avant ou après la pénalité 85/70/55 % ; à défaut, chronométrer en partie personnalisée un gen à 2 survivants, l'un avec Commodious (3 mesures).
2. **Instructions × Madness (Doctor)** : page wiki.gg The Doctor, section Madness, chercher « Instructions » / « regular Skill Checks » ; sinon test en partie personnalisée contre un Doctor.
3. **Brand New Part raté** : page wiki.gg Brand New Part (section Trivia / Notes) ou test : un test raté déclenche-t-il la Loud Noise Notification ?
4. **Interactions lampe × pouvoirs** : pour chaque tueur sorti depuis 6.7.0, lire la page wiki.gg du tueur et chercher « blind » / « Flashlight » ; remplir un tableau tueur → effet dans §2.3.
5. **Durée de l'animation de ramassage** (flash save) : page wiki.gg Carrying ou Dying State ; sinon capture 60 fps, 10 ramassages.
6. **Aveuglement pendant l'accrochage** au LIVE : page wiki.gg Flashlights, change log après 1.1.2a.
7. **Canalisation Key / Map, ouverture de coffre à la clé** : pages wiki.gg Keys, Maps (sections Calculations) ; sinon chronométrage.
8. **Alex's Toolbox 18 ou 24 charges** (CONFLICT-L5-02) et **fouille 8 ou 10 charges** (CONFLICT-L5-03) : test en partie personnalisée (compter les sabotages avec une Alex's neuve ; chronométrer une fouille).
9. **Probabilités de coffre actuelles** (CONFLICT-L5-04) : chercher une étude post-9.1.0 incluant les Fog Vials (forums BHVR, Reddit « chest odds 2025/2026 ») ; sinon relever 100 coffres.
10. **DR 9.6.0 × bonus d'objet** : lire le manuel du jeu 9.6.1 (liste des modificateurs « identiques ») pour savoir si le +50 % d'une toolbox se réduit avec Leader, Prove Thyself, etc.
11. **Anti-Exhaustion Syringe, « affected Survivor »** : test en partie personnalisée, soigneur Exhausted qui soigne un allié et utilise la seringue.
12. **Light-Resistant** : note 10.1.x ou page Status Effects : présent hors Black Banquet 2026 ?
13. **Ace in the Hole** : aligner `deliverables/PERK_DATABASE.md` sur `batch2_perks_surv_p29.md` (tâche de livrable, pas de recherche).
14. **Sortie de 10.2.0** : à la note LIVE, relire Pharmacy, Plunderer's, Down to the Last, Slippery Meat, Iron Grasp, Agitation, Dark Arrogance, Better Than New et mettre à jour §0, §3.1, §4.1, §5.1, §5.8, §5.9.

## 3. Verdict de profondeur (§27)

| Section de `batch5_items.md` | Niveau atteint | Commentaire |
|---|---|---|
| §1 Règles transversales | +QUAND | Règles, DR, contres (Overwhelming Presence, Franklin's), Match Details ajouté. Pas de drill (normal pour des règles). |
| §2.1 Toolboxes | +FAILURE | Quoi, pourquoi (transfert de charges), quand (fin de gen, sabotage), erreurs, contres de tests ; pas de drill. |
| §2.2 Med-Kits | +FAILURE | Calculs, seringue, statuts ajoutés, erreurs ; pas de drill ni de contre-jeu du tueur propre au kit (Franklin's seulement en §1). |
| §2.3 Flashlights | +COUNTER | Mécanique, add-ons, contres, erreurs ; drill en §5.1-5.2. Interactions de pouvoirs incomplètes (P30). |
| §2.4 Fog Vials | +FAILURE | Usage, contre Singularity, erreurs ; pas de drill. |
| §2.5-2.6 Keys, Maps | +QUAND | Usage et valeur ; pas de cas d'échec ni de drill (canalisation inconnue). |
| §2.7-2.8 Autres objets | QUOI seul | Tableau de référence ; renvoi au handbook tueurs pour l'usage. |
| §3 Offrandes | +QUAND | Règles 9.0.0 vérifiées, verdict par offrande avec risque (Luck, Vigo's Shroud) ; pas de drill (sans objet). |
| §4 Économie | +QUAND | Modèle s-surv, calculs vérifiés, limites (solo, 100 % de Great) désormais dites ; HYPOTHESIS non calibrée. |
| §5.1-5.9 Techniques | +DRILL | Format WHAT → DRILL complet pour les 9 techniques ; limites à haut niveau ajoutées (§5.1, §5.4) ; seuils des drills HEURISTIC. |
| §6 Synthèse | +QUAND | Table plan × SoloQ/SWF, entièrement HEURISTIC ; pas de contre-jeu ni d'échec. |
