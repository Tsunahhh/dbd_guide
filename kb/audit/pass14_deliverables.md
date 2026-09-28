# Audit pass 14 — livrables KILLER_COUNTERPLAY_HANDBOOK, PERK_DEDUCTION, PERK_DATABASE

- **Date** : 27/09/2026. **Référence** : LIVE 10.1.2a ; PTB 10.2.0 non LIVE.
- **Méthode** : audit adversarial §25 (incomplet / faux / étiquettes / contradictions) puis §26 (mauvaises habitudes si appliqué à la lettre), **sans web**. Seule source de faits : `kb/seed/audit_phase0.txt`. Recoupements : `kb/ledgers/BATCH_2_4_SYNTHESIS.md`, et les trois livrables entre eux.
- **Fichiers cibles** (corrigés avec Edit ; ligne de statut ajoutée en tête de chacun) :
  - `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md` (ci-dessous **KCH**)
  - `kb/deliverables/PERK_DEDUCTION.md` (**PD**)
  - `kb/deliverables/PERK_DATABASE.md` (**PDB**), surtout §4 (archétypes de builds)

## Bilan

| Gravité | Trouvés | Corrigés | Non corrigeables sans source |
|---|---:|---:|---:|
| Haute | 7 | 7 | 0 |
| Moyenne | 21 | 19 | 2 |
| Basse | 25 | 22 | 3 |
| **Total** | **53** | **48** | **5** |

## 1. Problèmes et corrections

### 1.1 KILLER_COUNTERPLAY_HANDBOOK

| ID | Passage (fichier + section) | Problème | Type | Gravité | Correction |
|---|---|---|---|---|---|
| H1 | KCH §2.2 Anti-loop, « Quand ça échoue » | Le critère « pré-drop rentable quand casser lui coûte » est appliqué à Cannibal, Nemesis MR2+, Mastermind et Lich. Or l'audit classe Mastermind (Virulent Bound) et Lich (Mage Hand + Vorpal Sword) parmi les destructions **instantanées** de palette, comme le Demogorgon rangé dans « pré-drop contre-productif », et donne ~1 s de casse à la tronçonneuse du Cannibal. Le classement se contredit, et le pré-drop y est présenté comme une règle. | contradiction / §26 | haute | Réécrit en deux raisons distinctes : (a) casser lui coûte (Blight seulement, VP) ; (b) le pouvoir punit l'attente, d'où « pré-drop + départ immédiat ». Ajout du contre-jeu d'un tueur qui attend le pré-drop (mix-up). |
| H2 | KCH §2.2 Ranged ; fiche 8 Huntress (Faire, Confiance) ; §5.2 ; §6.1 n° 1 | « 5 hachettes de base [AUDIT] » et « tranché par l'audit : 5 ». L'audit relève seulement « 7 hachettes » comme erreur, sans donner la valeur ; `BATCH_2_4_SYNTHESIS` §2.1 n° 6 précise que 5 vient de la mémoire du modèle. | étiquette / contradiction | haute | 5 réétiqueté [CM] UNCERTAIN partout ; « 7 » reste FAUX (audit). |
| H3 | KCH fiche 34 Good Guy (Piège classique) ; §5.2 ; §6.1 n° 4 ; matrice §3 | Le document laisse comprendre que le Good Guy ne casse pas les palettes en 1v4. Or la liste wiki.gg Pallets de l'audit (SS, « à reconfirmer ») le cite parmi les pouvoirs destructeurs. Seule la datation « 9.4.2 = 1v4 » est prouvée fausse. | contradiction (audit) | haute | Capacité en 1v4 passée en UNRESOLVED ; mise en garde contre l'erreur inverse ; case ajoutée dans la matrice §3. |
| H4 | KCH fiche 8 Huntress, Identification | « Berceuse = identification quasi certaine (FACT) », alors que les fiches 37 (Dark Lord) et 38 (Houndmaster) décrivent aussi une berceuse. | contradiction interne | moyenne | « Forte mais pas certaine » ; étiquette FACT de principe [CM] ; confirmer à la silhouette. |
| H5 | KCH fiche 13 Spirit, Faire | « Marcher ou s'arrêter quand elle phase » : une Spirit qui attend ou feinte l'exploite à haut niveau. | §26 | moyenne | Paragraphe « Limite » ajouté : c'est un mix-up à varier, et l'arrêt prolongé quand on est blessé est le pire cas. |
| H6 | KCH fiche 21 Blight, Faire | « Pré-drop » présenté comme une consigne absolue. | §26 | moyenne | « Le plus souvent rentable », avec ses limites : il contourne, la palette est consommée, et sans tokens un drop normal suffit. |
| H7 | KCH §1 et lignes « Macro/équipe » | Plusieurs consignes supposent le vocal (un seul porteur de boîte, un écraseur de Victor, sauveteur désigné, horloges, annonces). Aucune distinction SoloQ / SWF. | §25 | moyenne | Point §1-6 : SoloQ vs SWF et application par signaux observables. |
| H8 | KCH §4 (format « Faire / Ne pas faire ») | Consignes par défaut sans avertissement : un joueur expérimenté anticipe l'option par défaut. | §26 | moyenne | Point §1-5 : « HEURISTIC, pas règle ; varier quand le tueur exploite ». |
| H9 | KCH §1-4 | « Valeurs [AUDIT] = repères fermes », alors que certaines sont STRONG_SECONDARY « liste à reconfirmer ». | étiquette | basse | Nuance ajoutée. |
| H10 | KCH fiche 9 Cannibal, Faire | « Jeter la palette tôt » sans dire que la casse ne coûte que ~1 s. | §26 / calcul | basse | « … puis partir » ; ~1 s [AUDIT] cité. |
| H11 | KCH fiche 9 Cannibal, Confiance | « Knock Out décrit avec des valeurs PTB 10.2 » : c'est une hypothèse du lot 4 présentée comme un fait (PDB : « oui? (seed) »). | LIVE/PTB | basse | Formulé en hypothèse ; l'effet principal omis (aura à 32/24/16 m, SS) est ajouté. |
| H12 | KCH fiche 11 Pig, Ne pas faire | « FACT : mort » contredit la ligne Confiance ([CM], non vérifié). | étiquette | basse | « FACT de principe, [CM] ». |
| H13 | KCH fiche 14 Legion, Add-ons | Casse de palette en Frenzy attribuée au seed seul, alors que l'audit (SS) liste « Legion (Frenzy + add-on) ». | étiquette | basse | [AUDIT] SS, avec « liste à reconfirmer ». |
| H14 | KCH fiche 24 Nemesis, Faire | « Garder plus de 6,5 m » : valeur [SEED] présentée comme une marge exacte. | étiquette / §26 | basse | Étiquette [SEED] UNCERTAIN, « ordre de grandeur ». |
| H15 | KCH fiche 28 Dredge, Confiance | « Nerf de Dissolution = PTB 10.2.0 » : seul le seed l'annonce. | LIVE/PTB | basse | « Annoncé par le seed seulement, non vérifié ». |
| H16 | KCH fiche 30 Knight, Macro | « Un unhook met fin à la chasse de garde (SITUATIONAL) » : c'est une mécanique non vérifiée, pas un conseil situationnel. | étiquette | basse | [SEED] UNCERTAIN ; ne pas planifier dessus. |
| H17 | KCH fiche 30 Knight, Confiance | « 18 m = PTB », ambigu entre PTB 10.1.0 et PTB 10.2.0. | LIVE/PTB | basse | « PTB 10.1.0, abandonné au LIVE ». |
| H18 | KCH fiche 39 Ghoul, Macro | « Tile fermée à ≤ 10 m » : chiffre non sourcé, trop précis. | §26 | basse | Ordre de grandeur HEURISTIC, dérivé de la portée [SEED] de 14 m. |
| H19 | KCH Légende et fiches g2 / g6 | « EXPERT OPINION (non sourcée) » ne correspond pas au sens de §41 (conclusion d'un expert identifiable). | étiquette | basse | **Non corrigeable sans source** : il faut un guide expert lisible pour garder l'étiquette ; déjà signalé dans la légende. |
| H20 | KCH §4 (toutes les fiches) | Aucune rubrique DRILL ; les interactions perks survivant ↔ pouvoir manquent (Dead Hard / Endurance contre coup unique, Lithe contre ranged, Distortion contre tueurs d'info, anti-slug contre Twins / Houndmaster). | §25 | moyenne | **Non corrigeable sans source** : il faudrait des valeurs de perks et d'add-ons vérifiées (voir Lacunes 13 et 16). |

### 1.2 PERK_DEDUCTION

| ID | Passage (fichier + section) | Problème | Type | Gravité | Correction |
|---|---|---|---|---|---|
| D1 | PD §0 « Signature » ; en-tête | Les liens « Signature » sont présentés comme quasi certains. Or le périmètre (145 perks du seed) n'a jamais été comparé à une liste officielle, les perks des coéquipiers sont ignorées, et beaucoup d'effets sont U. | §25 / étiquette | haute | Définition réécrite (4 réserves, « jamais une certitude ») ; avertissement en tête. |
| D2 | PD §3.B4 | « Pain Resonance (FACT si observé) » : l'observation est un fait, l'attribution ne l'est pas. | étiquette | moyenne | « Lien Signature, HEURISTIC ; effet SS ». |
| D3 | PD §3.A3 (Ruin) | Déduction trop sûre : un kick non vu (régression −0,25 c/s), un skill check raté d'un allié (−10 %) et les pertes au hook ou au down ne sont pas écartés. | §25 | moyenne | Puce « Explications sans perk à écarter d'abord » (FACT audit). |
| D4 | PD §3.A2 (test Undying) | « L'effet persiste → Undying » ignore qu'on a pu purifier le mauvais totem ou que l'effet vient d'une perk non-Hex ou du pouvoir. | §25 | moyenne | Alternative ajoutée : chercher un 2e totem avant de conclure. |
| D5 | PD §2.5 et §3.A6 (Deerstalker) | « Signature » sans écarter les perks de coéquipiers qui montrent l'aura du tueur (Babysitter SS ; Kindred, Salvation's Cry U). | §25 | moyenne | Vérification par Match Details ajoutée aux deux endroits. |
| D6 | PD §2.5 (Knock Out) | Aura d'un allié au sol absente attribuée à Knock Out sans écarter la Blindness. | §25 | basse | Blindness à écarter d'abord. |
| D7 | PD §3.A9, §4.3, §5 n° 16 | « Pré-drop » recommandé contre Brutal Strength, Fire Up et Dissolution. Contre une casse rapide, le pré-drop fait gagner du temps au tueur, et Dissolution ne concerne pas le drop. C'est aussi contradictoire avec KCH §2.2 (« le pré-drop n'est pas universel »). | §26 / contradiction | haute | Réflexe séparé en deux : anti-stun (Enduring, Spirit Fury) et casse rapide (Brutal Strength, Fire Up). Réserves ajoutées. |
| D8 | PD §3.B3 et §5 n° 13 | Interdiction générale du body block, du flash save et du suivi du porteur. Contredit PDB §4.10 (Breakout, saves SWF). Un joueur qui l'applique à la lettre ne tente plus jamais de save. | §26 / contradiction | haute | Règle conditionnée aux signaux (Starstruck, Mad Grit, Agitation, Infectious Fright) ; « sans signal, le save reste normal ». |
| D9 | PD §3.B1 et §5 n° 6 | « Lâcher les gens kickés » avec un coût « faible », alors qu'un gen lâché régresse de 0,25 c/s (≈ 0,28 %/s). | §26 / calcul | moyenne | Conditionné à Eruption / Surge ; coût passé à « moyen », chiffré. |
| D10 | PD §5 n° 2 et §3.A8 | « 1 survivant par gen : coût nul, voire positif » ignore la latence : 90 s seul contre 52,9 s à deux. | calcul / §26 | moyenne | Calcul refait (voir §2) ; exceptions ajoutées (Pop, Pain Res, 3-gen, builds de réparation groupée). |
| D11 | PD §3.C3 | « Soigner les blessés en priorité » (Face the Darkness, Thanatophobia) contredit KCH (Legion, Plague : jouer blessé peut être normal). | contradiction | moyenne | Exception ajoutée avec renvoi à KCH. |
| D12 | PD §3.D1 et §5 n° 8 | « Se soigner avant la dernière gen ; finir sain, groupé, sans chase » présenté comme absolu. Pas toujours faisable (3-gen) ; inutile pour le porteur d'Adrenaline. | §26 | moyenne | Conditionné à NOED / Terminus plausibles ; exceptions Adrenaline et chase lointaine. |
| D13 | PD §3.C1 | « Quitter à plus de 24 m après un kick » appliqué par défaut : jeu passif, et la régression continue pendant ce temps. | §26 | basse | Conditionné (tueur proche ou signal vu) ; coût indiqué. |
| D14 | PD §3.B7 et §5 n° 11 | « Venir à deux au crochet » ne vaut qu'en SWF ; en SoloQ, cela coûte souvent un gen. | §25 (SoloQ/SWF) | basse | Distinction SoloQ / SWF ajoutée ; coût « faible à moyen ». |
| D15 | PD §3.B4 | « Ne **jamais** garder un gen très avancé » : formulation absolue. | §26 | basse | « Éviter », avec un arbitrage de tempo. |
| D16 | PD §4.1 et §7.3 (DR) | « La liste des modificateurs DR n'est pas publiée ». L'audit dit que le **manuel du jeu 9.6.1** la contient, mais qu'il n'a pas été consulté. | contradiction (audit) | moyenne | Formulation corrigée aux deux endroits. |
| D17 | PD en-tête | « Environ 60 % UNCERTAIN » sans base : le taux vaut 59 % (86/145, synthèse) ou 66 % (95/145, PDB). | calcul | basse | Les deux décomptes sont cités. |
| D18 | PD §5 (tableau des réflexes) | Les 18 réflexes, appliqués ensemble, rendent le jeu très passif, ce qu'exploite un tueur qui n'a aucune de ces perks. Plusieurs se contredisent. | §26 | moyenne | Encadré « Limites » : options par défaut, à abandonner dès qu'un signal écarte la perk visée ; précision SoloQ. |
| D19 | PD §6 (drills) | Seuils de réussite (≥ 80 %, 9/10) non mesurés. | §26 | basse | **Non corrigeable sans données** : déjà étiquetés « objectifs proposés, non mesurés ». |

### 1.3 PERK_DATABASE

| ID | Passage (fichier + section) | Problème | Type | Gravité | Correction |
|---|---|---|---|---|---|
| B1 | PDB §1.3 (seed FAUX) | Contredit la synthèse §2.1 : Built to Last, Quick Gambit et Ace in the Hole y sont présentés comme des erreurs établies (« dont 1 probable ») alors que la synthèse les classe PROBABLE ; Unbound, Dark Arrogance et Ravenous sont dits « PTB-comme-LIVE probables » alors que la synthèse les classe SUSPECT. | contradiction | haute | Statuts harmonisés (PROUVÉ / PROBABLE / SUSPECT) ; renvoi aux 18 PROBABLES et 28 SUSPECTES de la synthèse. |
| B2 | PDB §1.2 | Décomptes différents de la synthèse et du manifeste (survivant 104/5/67 contre 106/1/69 ; tueur 8 contre 17 « audit ») sans rapprochement. | contradiction | basse | Paragraphe de rapprochement ajouté (69 = 67 − 2 + 4 ; 95 = 86 + 9). |
| B3 | PDB §4.10 SWF | Breakout proposé sans avertissement, alors que sa valeur de Haste est en conflit (CONFLICT-P25-01, la fiche dit « Haste NON VÉRIF. »). | étiquette (UNCERTAIN non signalé) | moyenne | ⚠ ajouté avec la partie vérifiée (5 m, +25 %). |
| B4 | PDB §4.1 | Dead Hard (Vérif. NON, U) cité sans ⚠. | étiquette | basse | ⚠ UNCERTAIN. |
| B5 | PDB §4.6 | « Réparer ou soigner coupe Will to Live » : la fiche précise que cette partie n'est pas relue dans le résumé principal. | étiquette | basse | ⚠ partiel. |
| B6 | PDB §4.10 | Le build SWF (gens groupés, suivi du porteur) contredit PD §5 n° 2 et n° 13 sans le dire. Il subit aussi la pénalité coop. | contradiction | moyenne | Contradiction explicitée, condition d'abandon (signaux), pénalité coop 85/70/55 % rappelée. |
| B7 | PDB §4.12 | Critère « non nul sur le plus d'axes (7 à 8 sur 9) » : recompté, seule Distortion a 8/9 et **dix** perks sont à 7/9. Le choix de 3 parmi 10 est arbitraire, pas dérivé. | calcul / §26 | basse | Recompte publié, choix déclaré arbitraire (HEURISTIC). |
| B8 | PDB §4.12 | « Sprint Burst … au premier contact » : faux d'après la fiche (« début de course »). Un joueur l'attendrait au contact et le gaspillerait. | §25 (erreur interne) | moyenne | « Au début d'une course », gestion de la marche. |
| B9 | PDB §4.4 | « ~45 s d'auto-soin » n'est vrai qu'au rang III. | calcul | basse | Recalcul 16 s ÷ 0,35 = 45,7 s ; ÷ 0,25 = 64 s (voir §2). |
| B10 | PDB §4 (intro, DR) | « Modificateurs DR non publiés » : même erreur que D16. | contradiction (audit) | basse | Corrigé (manuel 9.6.1 non consulté). |
| B11 | PDB §4 (intro) | Les archétypes peuvent être lus comme des builds recommandés (aucune donnée) ; appliqués à tous les tueurs, ils créent une habitude rigide. | §26 | moyenne | Encadré « Limites » ajouté. |
| B12 | PDB §4.4 | We'll Make It et Empathic Connection, modifiées au PTB, cités sans [PTB]. | LIVE/PTB | basse | [PTB] ajouté. |
| B13 | PDB §4.1, 4.2, 4.9, 4.11, 4.12 | Cinq archétypes reposent sur Windows of Opportunity et/ou Spine Chill, retravaillées au PTB 10.2.0. Aucune alternative LIVE-après-10.2.0. | §25 (fraîcheur) | moyenne | **Non corrigeable sans source** : le contenu 10.2.0 LIVE n'a pas été lu (marquage [PTB] déjà présent). |
| B14 | PDB §2-3 (notes 0-3, menace) | Notes HEURISTIC d'un seul agent par fiche, non calibrées entre fichiers. | étiquette | basse | **Non corrigeable sans données** ; déjà étiquetées HEURISTIC. |

## 2. Vérification des calculs (recalculés à partir de l'audit)

| Calcul | Source audit | Recalcul | Verdict |
|---|---|---|---|
| Gen solo | 90 charges, +1 c/s | 90 s | OK |
| Coop à 2 / 3 / 4 | 85 / 70 / 55 % par personne | 2 × 0,85 = 1,7 c/s → 52,94 s ; 3 × 0,70 = 2,1 → 42,86 s ; 4 × 0,55 = 2,2 → 40,91 s | OK (PD §5 n° 2 corrigé pour citer la latence) |
| Débit : 2 solos contre 1 duo | idem | 2,0 c/s contre 1,7 c/s → le duo perd 15 % de débit | OK |
| Régression après kick | −0,25 c/s | 0,25/90 = 0,28 %/s ; 90 → 0 en 360 s | OK |
| Pop | +15 % + kick de base 5 % | 20 % | OK |
| Vitesses | survivant 4,0 ; tueurs 4,6 (115 %) / 4,4 (110 %) ; Nurse 3,85 | 4,4/4,0 = 110 % (Trickster « 110 % » dans KCH OK) ; 3,85/4,0 = 96 % | OK |
| Écart de 10 m | 4,6 / 4,4 m/s | 10/0,6 = 16,7 s ; 10/0,4 = 25 s | OK (non utilisé dans les cibles) |
| Self-Care (PDB §4.4) | soin de base 16 s ; 25/30/35 % (fiche) | 64 / 53,3 / 45,7 s | « ~45 s » valable seulement au rang III → corrigé |
| Breakout | lutte 16 s, +25 % | 16/1,25 = 12,8 s | OK |
| Fast Track | −5 charges | 5/90 = 5,6 % | OK |
| KCH §2.1, totaux par archétype | table de 44 lignes | recompte par script : 12 / 23 / 15 / 24 / 11 / 15 / 14 / 2 (+1 ○) | OK |
| PDB §5 | 162 / 321 | 50,5 % | OK |
| PD, part d'UNCERTAIN | 86 / 145 ou 95 / 145 | 59 % / 66 % | « ~60 % » précisé |

## 3. Lacunes restantes (tâches de recherche précises)

1. **Manuel du jeu 9.6.1, liste des DR** : dire si Teamwork: Full Circuit + Soft-Spoken, Botany + We'll Make It, Breakout + Haste de décrochage, les blocages et les pertes instantanées sont concernés.
2. **wiki.gg « The Huntress »** : nombre de hachettes de base en LIVE 10.1.2a (remplacer le [CM] « 5 »).
3. **wiki.gg « The Good Guy » + « Pallets »** : le Scamper (ou un autre élément du pouvoir) casse-t-il les palettes en 1v4 en 10.1.2a ? (CONFLICT-L4G5-03)
4. **wiki.gg « Pallets »** : reconfirmer la liste des destructions instantanées (Mastermind Virulent Bound, Lich Mage Hand + Vorpal Sword, Legion Frenzy + add-on, Ghoul 3e Kagune Leap + add-on, Dark Lord loup, gardes du Knight après 10.1.1).
5. **wiki.gg « The Cannibal »** : casse à la tronçonneuse (~1 s) et comportement du balayage contre une palette déjà tombée.
6. **wiki.gg « Breakout »** : valeur de Haste LIVE (CONFLICT-P25-01).
7. **wiki.gg « Will to Live » / « Off the Record »** : désactivation sur action voyante (texte exact 10.1.2a).
8. **Liste officielle des perks tueur LIVE 10.1.2a** (wiki.gg Perks, filtre Killer) comparée aux 145 du seed, pour valider les liens « Signature » de PD §2.
9. **wiki.gg « Deerstalker », « Salvation's Cry », « Kindred »** : quelles perks montrent l'aura du tueur aux survivants (discrimination PD §3.A6).
10. **Notes de patch 10.2.0 LIVE** (à la sortie) : Windows of Opportunity, Spine Chill, We'll Make It, No One Left Behind, Shoulder the Burden, Dead Man's Switch, Dissolution, Knock Out ; puis réécrire les archétypes PDB §4 marqués [PTB].
11. **wiki.gg « The Nemesis »** : portée du Tentacle Strike selon les rangs de Mutation (le 6,5 m de KCH).
12. **Notes 10.1.1, Knight** : contenu du changement « gardes et palettes » ; un décrochage arrête-t-il la chasse d'un garde ?
13. **Guides experts lisibles** (Otzdarva, Hens, règles compétitives) sur trois points : pré-drop contre Blight / Nurse / Spirit / Cannibal, mix-up contre Spirit, saves du porteur contre Starstruck. But : passer de HEURISTIC à EXPERT OPINION sourcée (H19).
14. **Lot 7** : données de loops et de tiles pour remplacer la matrice KCH §3 (HEURISTIC v1).
15. **Self-Care** : vitesse d'auto-soin LIVE (25/30/35 % dans la fiche) ; soin de base 16 s déjà vérifié.
16. **Interactions perks survivant ↔ pouvoir** par tueur (Dead Hard, Endurance, Lithe, Distortion, anti-slug), une fois les valeurs de perks vérifiées : combler H20.

## 4. Verdict de profondeur §27 (après corrections)

| Fichier | Section | Niveau atteint | Manque principal |
|---|---|---|---|
| KCH | §1 Mode d'emploi | +QUAND | — |
| KCH | §2.1 Typologie (tableau) | QUOI seul | pourquoi de chaque rattachement |
| KCH | §2.2 Principes par archétype | +FAILURE (quoi / pourquoi / quand ça échoue / contre-jeu du pré-drop) | DRILL |
| KCH | §3 Matrice tile × archétype | QUOI (+QUAND partiel) | POURQUOI par case ; données du lot 7 |
| KCH | §4 Fiches (44) | +COUNTER (Faire / Ne pas faire, add-ons → réponse, piège classique ≈ FAILURE) | POURQUOI systématique, DRILL, interactions de perks |
| KCH | §5-6 Tables de valeurs et d'erreurs | QUOI (registre de vérification) | sans objet |
| PD | §1 Principe | +POURQUOI | — |
| PD | §2 Signaux → perks | +QUAND (discrimination, confiance du lien) | coût de chaque test |
| PD | §3 Règles par phase | +FAILURE (observation → test → comportement → erreur) | DRILL par règle |
| PD | §4 Combos | +COUNTER | FAILURE (quand le contre échoue) |
| PD | §5 Réflexes par défaut | +FAILURE (coût, réserves, limites) | mesure du coût |
| PD | §6 Drills | +DRILL | seuils mesurés |
| PDB | §1 Contrôles | QUOI (comptages, rapprochés) | sans objet |
| PDB | §2-3 Index des perks | QUOI seul (une ligne par perk) | renvoi aux fiches pour le reste |
| PDB | §4 Archétypes de builds | +FAILURE (pourquoi / quand / contre quoi / cas d'échec) | DRILL ; alternatives après 10.2.0 |
| PDB | §5 Limites | QUOI | sans objet |

## 5. Les trois problèmes les plus importants

1. **Pré-drop enseigné comme une règle, avec des classements contradictoires** (H1, H6, D7) : le critère « casser lui coûte » était appliqué à des tueurs dont le pouvoir détruit la palette instantanément, et PD recommandait le pré-drop contre la casse rapide (Brutal Strength, Fire Up), où il avantage le tueur.
2. **Interdiction générale des saves au porteur dans PD, opposée au build SWF de PDB** (D8, B6) : appliquée à la lettre, elle supprime les flash saves et le suivi du porteur même sans aucun signal de Starstruck ou de Mad Grit.
3. **Étiquettes surestimées face à l'audit et à la synthèse** (H2, H3, B1, D1) : les « 5 hachettes [AUDIT] » viennent de la mémoire du modèle ; le Good Guy est présenté comme ne cassant pas en 1v4 alors que la liste de l'audit le cite ; des erreurs du seed seulement PROBABLES ou SUSPECTES étaient comptées comme établies ; les liens « Signature » étaient présentés comme certains.
