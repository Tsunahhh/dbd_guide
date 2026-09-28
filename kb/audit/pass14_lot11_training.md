# Audit P14 — Lot 11 (erreurs, arbres, drills, programme, métriques)

- Fichier cible : `kb/research/batch11_training.md` (seul fichier modifié ; corrections marquées « [audit P14] » dans le texte).
- Date : 27/09/2026. Référence : LIVE 10.1.2a ; PTB 10.2.0 non LIVE. **Aucune recherche web** (quota épuisé) : seule source de faits = `kb/seed/audit_phase0.txt`. Recoupements internes : `batch6_chase_tech.md`, `batch9_macro.md`, `deliverables/KILLER_COUNTERPLAY_HANDBOOK.md`.
- Méthode : AUDIT 1 (§25, auditeur hostile : oublis, étiquettes, contradictions) + AUDIT 2 (§26, « application littérale → mauvaises habitudes ») + recalcul de tous les chiffres. Attention particulière demandée : corrections d'erreurs qui deviennent elles-mêmes des règles absolues, critères de passage non mesurables, métriques trompeuses.

## 1. Vérification des calculs

| Calcul du fichier | Recalcul (valeurs audit) | Verdict |
|---|---|---|
| Coop 2/3/4 → ~52,9 / ~42,9 / ~40,9 s | 90/1,7 = 52,9 ; 90/2,1 = 42,9 ; 90/2,2 = 40,9 (85/70/55 % par personne) | OK |
| 4 sur un gen → ~45 % de production en moins | 2,2 / 4 = 0,55 | OK (étiqueté CALC) |
| 1 s de chase ≈ 1/30 gen (3 réparateurs seuls) | 3 c/s / 90 | OK |
| 60 s de chase ≈ « 2 gens » | 180 charges = 2 **équivalents**-gen, pas 2 gens terminés ; efficacité 100 % supposée | IMPRÉCIS → corrigé (P14-14) |
| Cible §5.3 « ≥ 1 gen terminé par chase de 45 s » | 135 charges sur 3 gens = 45 c chacun → 0 gen terminé possible | FAUX → corrigé (P14-01) |
| Casse palette → ~9,4 m ; rattrapage 15,6 s (4,6) / 23,4 s (4,4) | 4 × 2,34 = 9,36 ; 9,36/0,6 = 15,6 ; 9,36/0,4 = 23,4 | OK |
| 10 m d'avance ≈ 16,3 s / 21,7 s (Bloodlust) | 4,6 : 15 s à 0,6 = 9 m + 1 m à 0,8 = 1,25 s → 16,25 ; 4,4 : 15 s à 0,4 = 6 m + 4 m à 0,6 = 6,7 s → 21,7 | OK |
| R5 : trajet sûr ≈ 12 s / 49 m après une casse | (9,4 − 2)/0,6 = 12,3 s → 49 m si portée de fente 2 m ; (9,4 − 6)/0,6 = 5,7 s → 23 m si portée totale 6 m (autre estimation audit) | Biaisé (une seule hypothèse) → corrigé (P14-03) |
| R3 : vault du tueur 1,7 s → ~6,8 m | 6,8 m bruts ; 4,8 m nets si le survivant a lui-même fast-vaulté (lot 6 §2.3) | IMPRÉCIS → corrigé (P14-42) |
| Stun 2 s → ~8 m | 4 × 2 | OK |
| Soin = 32 s-surv ≈ 0,36 gen | 32/90 = 0,356 ; ~0,3 gen si les deux auraient réparé ensemble | OK, nuancé (P14-48) |
| Skill check raté ≈ 12 s | 9 c + 3 s (solo) | OK en solo ; précisé (P14-47) |
| Gen frappé laissé 20 s « perd 5 charges seulement » | 4,5 c (−5 %) + 20 × 0,25 = 9,5 c | FAUX → corrigé (P14-15) |
| Stopper la régression ≈ 4,5 s solo | 5 % × 90 = 4,5 | OK (+ ~2,6 s à 2 ajouté) |
| Bloodlust max : 4,6 → 5,2 m/s | 4,6 + 0,6 | OK |
| Total erreurs 14+13+11+12 = 50 et tags (51 avec double tag) | recompté | OK (devient 51 avec E-I14) |

## 2. Problèmes trouvés

| ID | Passage (fichier + titre de section) | Problème | Type | Gravité | Correction appliquée |
|---|---|---|---|---|---|
| P14-01 | batch11 §5.3 Valeurs cibles, ligne M-02/M-19 | Cible « ≥ 1 gen terminé par chase de 45 s+ » présentée comme découlant du CALC 45 × 3 = 135 charges ; or ces charges sont réparties sur 3 gens (0 gen terminé possible). Métrique qui induit en erreur | calcul / §26 | haute | Cible reformulée en charges (M-19) ; M-02 sans cible chiffrée, explication ajoutée |
| P14-02 | §5.1 M-09 + DR-10 Réussite | M-09 compte comme « mauvais sauvetage » toute perte d'état dans les 20 s, y compris le coup de protection que E-A06 **recommande** et les trades justifiés : la métrique pénalise le bon comportement et récompense l'abstention | contradiction / §26 | haute | Exclusions ajoutées (protection hit, trade justifié, Deep Wound à part) ; DR-10 couplé aux passages de phase |
| P14-03 | §2.2 T-Q01b, R5 exemple | « Trajet sûr ≈ 49 m » calculé avec une seule hypothèse de portée de fente (2 m) alors que l'audit donne aussi ~6 m de portée totale → ~23 m. Un joueur qui retient « 49 m » se fera toucher en route | calcul | haute | Deux scénarios chiffrés, fourchette ~20-50 m, consigne « tile la plus proche en cas de doute » |
| P14-04 | §2.1 T-Q01 (arbre) | Aucune règle quand deux questions donnent des feuilles opposées (ex. Q3 blessé 2 crochets → PRE-DROP ; Q5 dead zone → ne pas pre-drop) : l'arbre se contredit lui-même | contradiction | haute | « Règle de conflit » ajoutée (la question la plus haute choisit la feuille, les suivantes le moment) + exemple |
| P14-05 | E-I04 Correction ; T-Q02 point 2 | « Si le tueur campe à < 16 m, l'anti-camp remplit la jauge : parfois attendre est la meilleure option » : omet le poids par distance (×0,375 à 15 m), la grâce de 7 s, le ralentissement par les survivants proches et le taux de base inconnu (CONFLICT-003). Application littérale : laisser l'allié perdre sa phase contre un tueur à 12 m | §26 / §25 | haute | Poids par distance, grâce, conflit ajoutés en §0.2, E-I04, E-I10, T-Q02 ; « temps de libération non calculable » ; attendre seulement contre un face camp très proche |
| P14-06 | DR-06 Méthode/Métrique ; M-16 | Reveal décrit comme « au premier contact de chase ou premier coup » : l'audit dit « dès qu'**un** survivant entre en poursuite ou perd un état ». La métrique « identification avant reveal » mesure donc le déroulement de la partie (coéquipier poursuivi tôt) plus que la compétence | étiquette / métrique | moyenne | Définition corrigée ; dénominateur limité aux parties où un indice existait avant le reveal (DR-06, M-16, niveau 5, §5.4) |
| P14-07 | §4.2 niveau 7, « prédictions de position ≥ 60 % » | Non mesurable : la VOD survivant ne montre pas le tueur la plupart du temps ; « correct » non défini | critère non mesurable | moyenne | Seules les prédictions vérifiables comptent (tueur vu, chase d'un coéquipier, prochain accrochage) ; définition de « correct » à fixer avant |
| P14-08 | §4.2 niveau 7, « M-16 : précision ≥ 80 % » | Précision seule : se triche en n'annonçant qu'une perk évidente | métrique trompeuse | moyenne | Précision **et** rappel ≥ 50 % + ~2 perks annoncées/partie (niveau 7, DR-07, M-16) |
| P14-09 | §5.1 M-04 ; niveau 8 | « First-hit timing ↑ » pénalise le coup acheté volontairement (E-I07) et récompense une chase qui brûle toutes les palettes | métrique trompeuse / §26 | moyenne | Coups achetés exclus ; lecture à palettes égales (M-03) ; cas « déjà blessé » défini à part |
| P14-10 | §5.1 M-10 | Dénominateur circulaire (« soin nécessaire » = jugement) ; maximiser M-10 pousse à rester sur le gen trop tard et à ne pas sauver | métrique trompeuse | moyenne | Limites et couplage (M-07/M-09/E-I14) ajoutés |
| P14-11 | §5.1 M-14 ; DR-12 | « Palette posée sans justification T-Q01 » : presque toute pose se justifie après coup par une branche de l'arbre → non mesurable | critère non mesurable | moyenne | Raison annoncée avant l'action + indicateur objectif (ni stun, ni casse, ni détour, ni accès en ~10 s ; seuil UNCERTAIN) |
| P14-12 | §5.1 M-19 | Valeur de chase surestimée (réparateurs supposés seuls à 1 c/s, pas de trajets) et non contrefactuelle | métrique trompeuse | moyenne | Limites ajoutées ; usage « comparer ses chases entre elles » |
| P14-13 | §5.1 M-02 | Compte de gens **terminés** « en escalier » : dépend de l'avancement des gens au début de la chase | métrique trompeuse | basse | Avertissement ; renvoi à M-19 |
| P14-14 | §0.3 Économie | « 60 s ≈ 2 gens » sans préciser équivalents-gen, efficacité 100 %, valeur non contrefactuelle | calcul | basse | Reformulé + limite HYPOTHESIS |
| P14-15 | E-I08 Correction | Régression d'un gen laissé 20 s = « 5 charges seulement » : oublie les −5 % du coup de pied (≈ 9,5 c) | calcul | moyenne | Corrigé, + valeur 60 s du lot 9 |
| P14-16 | E-T01 Correction | « Trade justifié **seulement** si… » : correction d'erreur devenue règle absolue ; contredit lot 9 §2.5 (trade acceptable si les 2 autres réparent) ; confond fin de phase 1 (état perdu) et mort | §26 / contradiction | moyenne | Liste ouverte, conditions de refus, cas 2 survivants, phase 1 vs 2 distinguées |
| P14-17 | E-T06 Correction | « Forcer le tueur à épuiser ses 8 regression events par gen » présenté comme plan contre un 3-gen : irréaliste (8 × 3 events) | §26 | moyenne | Réécrit : fond de décor, pas stratégie ; split pressure (lot 9) proposé |
| P14-18 | T-Q01 Q2 (casse instantanée) | « jamais TENIR/GREED » + pre-drop systématique, sans tenir compte de la disponibilité du pouvoir (Oni hors Fury, Shred en recharge, add-on absent) ni du cas où le pre-drop ne force rien | §26 | moyenne | « Pouvoir disponible maintenant », pre-drop seulement s'il force détour/pouvoir, sinon traiter comme M1 ; E-A03 aligné |
| P14-19 | §0.2 Bloodlust ; E-A03 ; cas combiné 3 | « Utiliser le pouvoir fait perdre la Bloodlust » présenté comme FACT général ; l'audit : règle du wiki « avec la liste des pouvoirs concernés », STRONG_SECONDARY ; Krasue exclue | étiquette | moyenne | Précisé partout ; Blight (tokens depuis 9.6.0) ajouté |
| P14-20 | E-A03 ; Q2 ranged | Étiquette non standard « FACT probable » (palette vs hachette) ; interaction Houndmaster (palette bloque le chien, handbook) absente | étiquette / §25 | basse | → UNCERTAIN ; exception Houndmaster ajoutée (non vérifiée) |
| P14-21 | §0.2 Validation des coups | Formulation fausse (« le client du tueur décide si sa connexion est bonne ») | étiquette | basse | Reformulé selon l'audit (+ validation événementielle des stuns, non officielle) |
| P14-22 | E-D12, E-I04, DR-16, M-02 | Icônes d'action du HUD et jauge de crochet utilisées comme acquises ; l'audit n'en documente pas le contenu (sa question ouverte n° 38) | étiquette | moyenne | Ligne HUD UNCERTAIN en §0.2 ; mentions dans E-D12, E-I04, M-02, Points à sourcer |
| P14-23 | E-A10 Correction | « Rester immobile pour récupérer » vs lot 9 §2.8 « ramper vers un coéquipier / zone couverte » : contradiction entre fichiers ; « à l'arrêt » n'est qu'une précision du wiki | contradiction | moyenne | Arbitrage explicite (allié qui vient → ramper vers lui ; sinon récupérer) ; test en jeu listé |
| P14-24 | T-Q03 point 2 ; E-I02 | Seuil « gen ≥ 80 % » vs lot 9 « > ~70 % » | contradiction | basse | Seuil « ~70-80 % » HEURISTIC, renvoi lot 9 |
| P14-25 | E-I02 Punition/Correction | Contre les tueurs à coup unique « l'état sain ne rapporte presque rien » (absolu : ils frappent aussi en M1) ; pas d'exception « 2 survivants » ; risque d'habitude « ne jamais soigner » | §26 | moyenne | Nuancé (SITUATIONAL pouvoir vs M1), cas 2 survivants, excès inverse explicité |
| P14-26 | DR-18 Erreur typique | « Soigner à 3 » présuppose 3 soigneurs possibles ; l'audit : 2 max selon le wiki (CONFLICT-001) | étiquette | basse | Mention du conflit ; §0.2 complété |
| P14-27 | DR-18 Réussite ; M-11 | « < 20 % de soins inutiles » maximisé en ne soignant plus ; mesure une issue (perdu dans 30 s), pas une décision | métrique trompeuse / §26 | moyenne | Couplage avec les mises au sol « blessé sans raison » ; classement de la décision |
| P14-28 | §0.2 Auto-décrochage ; E-I05 ; T-Q02 ; E-T01 | Règle 9.1.0 « tous les survivants restants accrochés en même temps = sacrifice » absente, alors qu'elle change les trades à 2 survivants | §25 (situation rare mais décisive) | moyenne | Ajoutée aux 4 endroits |
| P14-29 | §1 Mistake database | Erreur majeure absente : quitter le gen trop tard / pre-run (et l'excès inverse) | §25 | moyenne | Nouvelle entrée E-I14 (chiffres = FACT audit + CALC lot 9) ; totaux mis à jour (51) |
| P14-30 | §1 Mistake database | Aucune erreur sur les objets (lampe, toolbox, med-kit), les casiers en chase, les saves/body block d'équipe ; SWF 1 seule entrée | §25 | moyenne | Non corrigeable sans source (lot 5 NOT_STARTED) : lacune signalée dans le fichier |
| P14-31 | §4.1 Règles ; §4.2 durées | Critère « 2 blocs consécutifs » + agrégation ≥ 10 parties (§5.2) incompatibles avec « ~10 parties » par niveau ; taille de bloc non définie | contradiction | basse | Bloc = ≥ 10 parties ; le nombre de parties prime sur la durée |
| P14-32 | §4 Programme | Critères identiques en SoloQ et SWF alors que M-02/M-09/M-17/M-19/DR-16 dépendent des coéquipiers (question ouverte 4 laissée sans réponse) | §25 (SoloQ/SWF) | moyenne | Mesure séparée par mode, base du même mode ; question ouverte 4 mise à jour |
| P14-33 | §4.2 critères « ↓ 50 % vs base » | Sur des événements rares (≤ 1/partie), une baisse de 50 % sur 10 parties est du bruit | critère non mesurable | moyenne | Règle « base assez élevée ou seuil absolu » ajoutée |
| P14-34 | §4.2 niveaux 4, 7, 9 (« justifié en revue », « auto-contrôle ») | Critères auto-évalués, complaisants par construction | critère non mesurable | moyenne | Validation par un tiers ou critères fixés avant la VOD ; voix enregistrée (niveau 4) |
| P14-35 | §4.2 niveau 10 | « Opposition plus forte » non mesurable (MMR non affiché) | critère non mesurable | moyenne | Corrigé partiellement : proxys (scrims, KYF, compétition) ; sinon déclaré non mesurable |
| P14-36 | §4.2 niveau 5 | M-12 ↓ 50 % « sur les 5 tueurs travaillés » sans minimum de parties par tueur (rencontre aléatoire en public) | critère non mesurable | basse | ≥ ~5 parties par tueur (KYF si rare) |
| P14-37 | §4.1 « se comparer à sa base » | Reset MMR 10.1.0 rapporté (UNCERTAIN) non pris en compte : base de fin août / septembre 2026 instable | §25 (fraîcheur) | basse | Ajouté avec étiquette UNCERTAIN |
| P14-38 | §4.2 niveau 3 | M-14 ↓ 50 % atteignable en greedant davantage | §26 / métrique | moyenne | « sans hausse de M-05 » |
| P14-39 | DR-03 Réussite | « ≥ 20 s moyens » (contredit la règle des médianes) ; pousse à rester au shack trop longtemps (E-A01) | métrique / §26 | basse | Médiane + garde-fou M-05 / départs sans événement |
| P14-40 | §3 Principes des drills | Drills KYF supposent un ami tueur : inapplicables pour un joueur SoloQ seul | §26 (praticité) | basse | Variante « public + revue » et mise en garde sur le bruit |
| P14-41 | En-tête (sources) ; DR-07 | « PERK_DEDUCTION.md n'existe pas encore » : faux aujourd'hui (manifeste) | contradiction | basse | Mis à jour (existe, non relu pour ce lot) |
| P14-42 | T-Q01b R3 (vault du tueur) | 6,8 m bruts présentés comme avance ; lot 6 calcule 4,8 m nets | calcul / contradiction | basse | Les deux valeurs données |
| P14-43 | §2.1 T-Q01 | 10 questions à appliquer en pleine chase → paralysie / décision tardive si appliqué littéralement | §26 | moyenne | « Version en jeu » (Q1-Q2-Q3-Q5), Q6-Q10 en préparation et en revue |
| P14-44 | E-A04 ; cas combiné 5 | « La pose remet la Bloodlust à zéro » suppose que le tueur casse ; un tueur averti contourne (lot 6 T06) | §26 (exploitable à haut niveau) | basse | Contre-jeu ajouté |
| P14-45 | E-D03 ; E-T03 | Seulement la valeur sans fente (~16 s) ; l'audit donne ~12-13 s avec fente | calcul | basse | Ajouté |
| P14-46 | T-Q01 cas combiné 8 | Libellé incompréhensible (« 1 gen déjà au 99 inutile ») | clarté | basse | Réécrit |
| P14-47 | E-D06 | « ≈ 12 s perdues » vrai seulement en solo | calcul | basse | Précisé (à plusieurs, 3 s bloquent tout le monde) |
| P14-48 | §0.3 Coût d'un soin | Hypothèse « les deux auraient réparé seuls » non discutée ; écart avec lot 9 (soin ≈ équilibre) non signalé | calcul / contradiction | basse | Variante coop (~0,3 gen) et renvoi lot 9 §2.10 |
| P14-49 | E-A06 Punition | « Rien n'empêche le tunnel en LIVE » ignore les protections de base 10 s | étiquette | basse | Nuancé |
| P14-50 | §5.1 M-06 | « Vaults voulus rapides » : l'intention n'est pas observable en VOD | critère non mesurable | basse | Tous les vaults en chase, sauf slow vaults annoncés |
| P14-51 | E-I05 Correction | « Le survivant à 0 crochet prend les risques » sans le contre-cas du lot 9 (meilleur looper) | §26 | basse | « Quand c'est possible » + contre-cas |
| P14-52 | T-Q01b feuille PRENDRE LE COUP | « Interdit à 2 crochets blessé » : blessé, un coup met au sol quel que soit le nombre de crochets ; boost annulé par vault non documenté | étiquette | basse | Reformulé + renvoi à la question ouverte de l'audit |
| P14-53 | §5.3 et §4.2 | Toutes les valeurs cibles et durées n'ont aucune source (déjà étiquetées UNCERTAIN) | étiquette | basse | Non corrigeable sans source (étiquetage conservé) |
| P14-54 | §2 arbres (tous seuils de distance) ; Q6 | Portée de fente, durée d'abaissement de palette, effet d'un stun sur la Bloodlust, taux de base anti-camp : inconnus → arbres non quantifiables | §25 | moyenne | Non corrigeable sans source (listé dans « Points à sourcer ») |

**Bilan** : 54 problèmes — **5 hautes, 26 moyennes, 23 basses**. 51 corrigés dans le fichier (dont P14-35 partiellement) ; **3 non corrigeables sans source** (P14-30, P14-53, P14-54).

## 3. Lacunes restantes (tâches de recherche précises)

1. **Portée de fente** : mesurer en KYF (Kill Your Friends) la distance survivant-tueur au début d'une fente qui touche, pour un tueur 4,6 et un 4,4, sur 20 essais chacun (repères : longueur d'une palette / d'un mur de shack) ; trancher entre ~2 m et ~6 m (R5, Q1, DR-02).
2. **Taux de base de l'anti-camp après 9.3.0** : lire la page wiki.gg « Resolve » en entier et les notes 9.3.0 ; sinon chronométrer en KYF la jauge avec un tueur immobile à 4 m et à 10 m (E-I04, T-Q02).
3. **HUD survivant LIVE 10.1.2a** : capture d'écran annotée des icônes (action de chaque coéquipier, poursuite, jauge de crochet, barres de progression colorées 9.6.0) — question ouverte n° 38 de l'audit.
4. **Perte de Bloodlust par pouvoir** : liste itemisée des pouvoirs sur wiki.gg « Bloodlust » ; **effet d'un stun** : chronométrer en KYF la vitesse du tueur après un stun sans casse.
5. **Palette posée vs projectiles** : tester en KYF hachette (Huntress), harpon (Deathslinger), chien (Houndmaster) contre une palette abaissée.
6. **Récupération au sol en rampant** : chronométrer en KYF la récupération à l'arrêt vs en rampant (E-A10 / lot 9 §2.8).
7. **Nombre max de soigneurs** (CONFLICT-001) : test à 3 soigneurs en KYF.
8. **Lot 5** (objets, casiers, saves, body block) : prérequis pour ajouter les entrées d'erreurs manquantes (P14-30) et un drill de save.
9. **Calibrage des cibles §5.3** : relever les métriques M-01, M-03, M-05, M-09, M-11 sur 30 parties revues (10 SoloQ bas MMR supposé, 10 SoloQ, 10 SWF) pour remplacer les ordres de grandeur arbitraires ; chercher des coachs identifiables publiant des métriques comparables (EXPERT OPINION seulement s'ils sont lus).
10. **Grille « coup évitable » (M-05)** : faire classer les mêmes 20 coups par deux relecteurs indépendants et mesurer l'accord ; réviser la grille.
11. **Survivor Intent System (PTB 10.2.0)** : à sa sortie LIVE, revoir E-D12, E-A11, DR-16, T-Q02 et M-02 ; refonte d'Abandon → E-A10.
12. **Reset MMR 10.1.0** : confirmer ou infirmer dans une source officielle (notes, forum BHVR) pour savoir si les bases mesurées depuis le 25/08/2026 sont stables.

## 4. Verdict de profondeur (§27)

| Section | Niveau atteint | Commentaire |
|---|---|---|
| §0 Constantes et économie en secondes | +POURQUOI (+QUAND partiel) | Chiffres utiles et recalculés ; pas de COUNTER ni de DRILL (normal pour une table de référence) |
| §1 Mistake database (51 entrées) | +DRILL | Format Erreur → Pourquoi → Punition → Correction → Drill tenu ; QUAND et FAILURE présents dans la plupart des corrections ; COUNTER (adaptation du tueur) inégal ; manques lot 5 |
| §2.1 T-Q01 PALLET DECISION | +DRILL | Feuilles justifiées (correcte / fausse / alternative), cas combinés, règle de conflit et version en jeu ajoutées ; seuils non quantifiables (fente) |
| §2.2 T-Q01b Quitter la tile | +FAILURE | Événements, calcul de trajet, filtre équipe ; DRILL via DR-13 |
| §2.3 T-Q02 / T-Q03 (versions courtes) | +QUAND | Ordre des questions et feuilles, mais sans justification détaillée ni cas combinés (renvoyés au lot 9) |
| §3 Drills (20) | +DRILL (+FAILURE via « erreur typique ») | Objectif / méthode / métrique / erreur / réussite complets ; POURQUOI souvent implicite ; seuils UNCERTAIN |
| §4 Programme 10 niveaux | +QUAND | Ordre, critères, retour en arrière ; plusieurs critères restent auto-évalués ou dépendants de l'accès KYF |
| §5 Mesure et revue | +FAILURE | Définitions, pièges d'interprétation (Goodhart, inaction, résultat vs décision) ; cibles non calibrées |
| §6 Gabarit de revue | outil (QUOI) | Complet et cohérent avec §5 |
| §7 Écarts avec le seed | QUOI | Liste de corrections, justifiée par renvois |
