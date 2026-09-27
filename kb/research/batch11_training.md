# Lot 11 — Erreurs, arbres de décision, drills, programme, mesure (vue SURVIVANT)

> **Statut : WRITTEN (brouillon), non audité, non sourcé par des experts — rédigé sans accès web le 27/09/2026**

- Périmètre (mission) : §17 MISTAKE DATABASE · §32 DECISION TREES · §33 DRILLS · §34 PLAN D'ENTRAÎNEMENT · §35 SYSTÈME DE MESURE · taxonomie T-P01→T-P04, T-Q01 (+ T-Q02/T-Q03 en version courte), T-R01→T-R04 (méthode de revue de ses propres parties).
- Référence de version : **LIVE 10.1.2a** (17/09/2026). Le **PTB 10.2.0** (Survivor Intent System, refonte d'Abandon, 58 perks modifiées) **n'est pas LIVE** : rien ici n'en dépend ; les points qu'il pourrait changer sont signalés « à revoir après 10.2.0 ».
- Sources utilisables : `kb/seed/audit_phase0.txt` (« audit phase 0 », seules valeurs présentées comme FACT, avec leur confiance) ; `kb/research/batch4_killers_g*.md` (exemples par tueur, eux-mêmes non re-vérifiés) ; le seed (`kb/seed/ch0_2.txt`, `ch4_7.txt`, `ch10_14.txt`) est **critiqué, pas recopié**. `kb/deliverables/PERK_DEDUCTION.md` n'existe pas encore.
- Aucune analyse de VOD, aucun guide expert, aucune statistique n'ont été consultés pour ce lot. Tout ce qui n'est pas une valeur de l'audit est un raisonnement de joueur : **HEURISTIC**, **SITUATIONAL**, **HYPOTHESIS** (jamais « EXPERT OPINION » sourcée). Tout chiffre non issu de l'audit est **UNCERTAIN**.

## 0. Conventions et constantes de temps

### 0.1 Étiquettes

| Étiquette | Sens dans ce fichier |
|---|---|
| FACT (audit, confiance) | Valeur de la « Référence vérifiée » de l'audit phase 0, avec son niveau (VERIFIED_PRIMARY / VERIFIED_MULTI_SOURCE / STRONG_SECONDARY) |
| CALC | Arithmétique faite ici sur des FACT (hypothèses simplificatrices dites à chaque fois) |
| HEURISTIC | Règle pratique de joueur, utile en général, avec exceptions |
| SITUATIONAL | Dépend fortement du tueur, de la carte, de l'état de partie |
| HYPOTHESIS | Interprétation plausible, non testée |
| UNCERTAIN | Chiffre ou affirmation sans source vérifiée (cibles de métriques, durées d'entraînement…) |

### 0.2 Constantes utilisées partout (audit phase 0, LIVE 10.1.2a)

| Constante | Valeur | Confiance (audit) |
|---|---|---|
| Gen solo | 90 charges, +1 c/s → **90 s** ; 5 gens requis à 4 survivants | VERIFIED_MULTI_SOURCE (valeur) |
| Pénalité coop | 2 / 3 / 4 réparateurs → ~52,9 / ~42,9 / ~40,9 s | STRONG_SECONDARY |
| Skill check raté | −10 % de progression + 3 s sans progression ; Great +1 % | STRONG_SECONDARY |
| Coup de pied tueur | −5 % puis −0,25 c/s ; il faut réparer **5 %** pour stopper la régression ; 8 regression events max par gen | VERIFIED_MULTI_SOURCE (7.5.0) |
| Phase de crochet | **70 s** par phase ; 3e accrochage = mort | VERIFIED_PRIMARY (8.2.0) |
| Accrocher / décrocher | 1,5 s / 1 s | STRONG_SECONDARY |
| Protections de décrochage | Endurance + 10 % Haste pendant **10 s** + Elusive 10 s (Elusive seulement tant que tous les gens ne sont pas réparés) ; Endurance perdue sur action voyante | VERIFIED_PRIMARY (10.1.0) / STRONG_SECONDARY (annulation) |
| Anti-camp | Zone de **16 m** ; rien ne se remplit au-delà ; ×2 après 10 s, ×4 après 20 s de présence ; désactivé portes alimentées | VERIFIED_MULTI_SOURCE / VERIFIED_PRIMARY (9.3.0) |
| Auto-décrochage | Seulement à 2 survivants restants ou via offrande/perk (9.0.0) ; à 2 survivants, laisser passer 2 skill checks de lutte = mort (9.1.0) | VERIFIED_PRIMARY / STRONG_SECONDARY |
| Soin | 1 état de santé = **16 s** (+1 c/s) ; Mangled −20 % de vitesse | STRONG_SECONDARY |
| Deep Wound | 20 s ; mending 10 s seul, 6 s par un allié ; un dégât sous Deep Wound = au sol | VERIFIED_PRIMARY (8.6.0) |
| Au sol | Bleed-out 240 s ; récupération auto jusqu'à 95 % en 30,4 s (« à l'arrêt » selon le wiki) | STRONG_SECONDARY / VERIFIED_MULTI_SOURCE |
| Vitesses | Survivant 4,0 m/s ; tueurs 4,6 ou 4,4 m/s (Nurse 3,85) ; tueur portant 3,68 m/s | VERIFIED_MULTI_SOURCE / STRONG_SECONDARY |
| Boost au coup | 1,8 s (×1,65 selon le wiki) ; cooldown tueur 2,7 s après un coup réussi, 1,5 s après un raté | VERIFIED_PRIMARY (durée) / VERIFIED_MULTI_SOURCE (2,7 s) |
| Fenêtres | Fast 0,5 s (garde l'élan, bruyant) · medium 0,9 s · slow 1,5 s ; fast vault = ≥ 2,5 m de course droite ; tueur 1,7 s ; bloquée **30 s pour toi** après ton 3e vault de la même fenêtre dans la même poursuite | STRONG_SECONDARY |
| Palettes | Stun 2 s (seulement palette abaissée à ~50 %) ; casse **2,34 s** ; tronçonneuse 1 s ; vault de palette 1,1 s / 2 s ; Enduring −40/45/50 % | VERIFIED_MULTI_SOURCE (2,34 s) / STRONG_SECONDARY |
| Casse instantanée par pouvoir | Demogorgon, Oni (Blood Fury), Blight, Mastermind, Knight (gardes), Good Guy, Lich, Dark Lord (loup), Ghoul (add-on), Legion (add-on) — liste à reconfirmer | STRONG_SECONDARY |
| Bloodlust | +0,2 / +0,4 / +0,6 m/s à 15 / 25 / 35 s de poursuite ; perdue si le tueur casse une palette, touche, ou utilise son pouvoir ; effet d'un stun : non documenté | VERIFIED_MULTI_SOURCE / STRONG_SECONDARY / UNCERTAIN |
| Poursuite | Début : survivant visible à ≤ 12 m, qui court, tueur qui marche. Fin : > 18 m, 5 s en casier, LOS perdue > 8 s, ou hors de ± 35° du centre de vision | STRONG_SECONDARY |
| Red stain | Émise par la tête du tueur, dans la direction où il regarde ; masquée par Undetectable ; marcher à reculons trompe le survivant | STRONG_SECONDARY |
| Griffures | Durée de vie 10 s | STRONG_SECONDARY |
| Corbeaux AFK | 80 / 100 / 120 s d'inactivité | VERIFIED_PRIMARY (9.3.0) |
| Exhausted | Ne récupère pas en courant | STRONG_SECONDARY |
| Totems | Purification 14 s ; Boon 14 s (28 s sur un Hex) | STRONG_SECONDARY |
| Fin de partie | Porte : 20 s, progression conservée ; EGC 120 s, moitié de vitesse si quelqu'un est au sol/accroché ; trappe : ouverte à 1 survivant restant | STRONG_SECONDARY |
| Mori de fin | Possible à 2 survivants vivants (l'un accroché en Struggle, l'autre au sol) | VERIFIED_PRIMARY (9.0.0) |
| Match Details (9.6.0) | Loadouts des coéquipiers visibles ; tueur révélé dès qu'un survivant entre en poursuite ou perd un état ; **loadout du tueur caché jusqu'à la fin** | VERIFIED_PRIMARY |
| Validation des coups | Le client du tueur décide si sa connexion est bonne ; la latence cumulée favorise le tueur | VERIFIED_PRIMARY (principe) / COMMUNITY_OBSERVATION (détails) |

### 0.3 Économie en secondes (CALC, à réutiliser dans toutes les sections)

- **Valeur d'une seconde de poursuite** = nombre de charges produites ailleurs pendant cette seconde. Trois coéquipiers chacun sur un gen différent → 3 c/s → **1/30 de gen par seconde** (audit, A-267 : le seed disait « 1/3 de gen », FAUX). Trois coéquipiers sur le même gen → ~2,1 c/s. Coéquipiers qui soignent, se cachent ou marchent → 0 c/s.
  - Conséquence : 60 s de poursuite avec 3 réparateurs séparés ≈ 180 charges ≈ **2 gens**. 60 s de poursuite pendant que l'équipe se soigne ≈ 0 gen. La durée de chase seule ne dit donc presque rien (voir §35).
- **Coût d'une palette cassée pour le tueur** : 2,34 s immobile → le survivant gagne ~9,4 m (4,0 × 2,34). Pour refermer 9,4 m à 0,6 m/s (tueur 4,6) il faut ~15,6 s ; à 0,4 m/s (tueur 4,4) ~23,4 s. CALC sans fente, sans Bloodlust, en ligne droite : c'est un plafond théorique, pas une valeur de jeu. L'audit donne pour 10 m d'avance ≈ 16,3 s / 21,7 s avec Bloodlust et ≈ 12-13 s / 17-18 s avec une fente de 2-2,5 m (valeur communautaire).
- **Coût d'un stun** : 2 s de gel du tueur (moins avec Enduring) **puis**, souvent, 2,34 s de casse ou un détour.
- **Coût d'un soin** : 16 s pour le soigné + 16 s pour le soigneur = 32 « secondes-survivant » ≈ 32 charges si les deux auraient réparé seuls ≈ **0,36 gen**. Un soin n'est rentable que si l'état sain rapporte plus (typiquement : une poursuite qui tient un coup de plus, ≥ 10-20 s gagnées) — HEURISTIC.
- **Coût d'un sauvetage** : trajet aller-retour du sauveteur (souvent 20-40 s, UNCERTAIN, dépend de la carte) + 1 s de décrochage + soin éventuel. Un sauvetage « pour rien » (trade immédiat) coûte ce temps **et** un état de crochet.
- **Coût d'un état de crochet** : il n'y a que 3 accrochages par survivant ; l'équipe dispose de 4 × 2 = 8 « états survivables » avant les morts. Chaque état perdu réduit la marge de toute l'équipe (HEURISTIC, fondé sur la règle de 3 accrochages).
