# Lot 6 — Techniques de chase fines et chase theory avancée (mission §4 et §14)

> **Statut : WRITTEN (brouillon), non audité, non sourcé par des experts — rédigé sans accès web le 27/09/2026**

- Référence de version : **LIVE 10.1.2a** (édition serveur du 17/09/2026). Le **PTB 10.2.0** (dont le Survivor Intent System) n'est **pas** LIVE et n'est pas utilisé ici.
- Périmètre : mission §4 (mouvement et mécaniques de chase, 7 points par technique), §14 (chase theory avancée, raisonnement en secondes), §31 (3 situations concrètes). Les loops/tiles en détail sont au lot 7 ; flash/pallet save, sabotage et body block d'équipe au lot 5 ; macro au lot 9.
- Méthode : **aucune recherche web** (quota épuisé). Sources internes uniquement : `kb/seed/audit_phase0.txt` (tables « Référence vérifiée : mouvement, chase, combat » et « objectifs, crochets, soins, statuts », registre des patchs, OUTDATED CONTENT REPORT), seed `kb/seed/ch0_2.txt`, `ch4_7.txt`, `ch10_14.txt` (brouillon non fiable, critiqué), `kb/research/batch4_killers_g*.md` (exemples par tueur, eux-mêmes non re-vérifiés).
- Aucune VOD n'a été analysée. Aucun joueur ni coach n'est cité comme source.

## 0. Conventions d'étiquetage

| Étiquette | Sens dans ce fichier |
|---|---|
| **FACT [audit : VP]** | Valeur de l'audit phase 0, VERIFIED_PRIMARY (notes de patch officielles) |
| **FACT [audit : VMS]** | Audit phase 0, VERIFIED_MULTI_SOURCE |
| **FACT [audit : SS]** | Audit phase 0, STRONG_SECONDARY (wiki.gg). Solide, mais pas une source primaire |
| **[audit : CO]** | Audit phase 0, COMMUNITY_OBSERVATION (pas un FACT) |
| **CALC** | Arithmétique faite ici **uniquement** sur des valeurs de l'audit. Aussi fiable que la moins fiable de ses entrées, et toujours une simplification (lignes droites, vitesses constantes) |
| **UNCERTAIN** | Chiffre non issu de l'audit, ou marqué INV (non documenté) par l'audit |
| **HEURISTIC** | Règle pratique issue de mon raisonnement de joueur, non sourcée |
| **EXPERT OPINION (non sourcée)** | Conclusion que beaucoup de joueurs expérimentés partagent à ma connaissance, sans source lue |
| **SITUATIONAL** | Conseil qui s'inverse selon le contexte |
| **HYPOTHESIS** | Modèle ou interprétation plausible non confirmée |

Unité de compte : **seconde-survivant** (1 survivant × 1 s de réparation solo). **1 gen = 90 secondes-survivant** (FACT [audit : VMS], 90 charges depuis 6.1.0).

---

## 1. Chiffres de référence (seuls chiffres présentables comme FACT)

### 1.1 Déplacement

| Élément | Valeur LIVE | Confiance (audit phase 0) |
|---|---|---|
| Survivant, course | 4,0 m/s | VMS |
| Survivant, marche | 2,26 m/s | VMS |
| Survivant, accroupi | 1,13 m/s | VMS |
| Survivant, ramper | 0,7 m/s (1,05 m/s = valeur d'un PTB 9.3.0 annulé, CONFLICT-002) | 0,7 : VMS ; 1,05 : UNCERTAIN |
| Survivant blessé | Aucune différence de vitesse avec l'état sain | SS |
| Boost au coup (On-hit Sprint) | 1,8 s (depuis 6.1.0), multiplicateur ×1,65 → 6,6 m/s | Durée : VP ; ×1,65 : SS |
| Tueurs « 115 % » / « 110 % » | 4,6 m/s / 4,4 m/s, à quelques exceptions près | VMS |
| Exceptions confirmées | Nurse 3,85 m/s ; Blight 4,4 m/s depuis 9.6.0 (était 4,6) | Blight : VP ; Nurse : SS |
| Classe 4,2 m/s | Evil Within I de la Shape | UNCERTAIN |
| Tueur portant un survivant | 3,68 m/s | SS |
| Accélération (temps pour atteindre la vitesse max) | Non documentée | UNCERTAIN (INV) |
| Vitesse du tueur en marche arrière / latérale (moonwalk) | Non documentée | UNCERTAIN (INV) |
| Vitesse du tueur pendant le cooldown d'attaque | Non documentée dans l'audit | UNCERTAIN (INV) |

### 1.2 Combat

| Élément | Valeur LIVE | Confiance |
|---|---|---|
| Cooldown après coup réussi | 2,7 s (6.1.0, était 3 s) | VMS |
| Cooldown après coup manqué | 1,5 s | SS |
| Coup obstrué (décor) | 1,5 s | SS |
| Vitesse pendant la fente | Multiplicateur visant ~6,9 m/s (×1,5 à 4,6 ; ×1,568 à 4,4 ; ×1,79 à 3,85) | SS |
| Durée / distance de la fente | Estimations : ~0,87-1 s, ~2 m de gain, portée totale avec la hitbox ~6 m (désaccord) | CO → **UNCERTAIN** |
| Attaque en portant un survivant | Quick Attack seulement, pas de fente | SS |
| Validation des coups | « Hit Validation » (août 2020) : si la connexion du tueur est mauvaise, le serveur évalue le coup et le rejette si les deux étaient trop éloignés ; sinon le coup reste décidé côté client du tueur | VP (dev BHVR, forum officiel) |
| Modèle réseau détaillé | Client tueur = calcul du chevauchement hitbox/hurtbox ; validation générale seulement au-delà de ~300 ms ; validation événementielle pour Dead Hard et stuns de palette ; les deux latences cumulées favorisent le tueur ; tout-serveur testé puis écarté | CO / analyse technique non officielle (2022) ; seuil de 300 ms **non confirmé** |
| Forme et taille des hitbox/hurtbox | Aucune documentation officielle | UNCERTAIN |

### 1.3 Fenêtres, palettes, murs

| Élément | Valeur LIVE | Confiance |
|---|---|---|
| Fast vault (fenêtre) | 0,5 s, **garde l'élan**, bruyant | SS |
| Medium vault | 0,9 s ; course en angle ou élan insuffisant ; remet l'élan à zéro | SS |
| Slow vault | 1,5 s ; pas de notification de bruit fort | SS |
| Condition du fast vault | ≥ 2,5 m de course droite vers la fenêtre ; angle toléré et durée de sprint minimale non documentés | 2,5 m : SS ; angle : UNCERTAIN |
| Vault de fenêtre du tueur | 1,7 s ; Bamboozle +5/10/15 % de vitesse | SS |
| Blocage par l'Entité | Après le **3e** vault de la même fenêtre dans la même poursuite, bloquée **30 s pour ce survivant seulement** (le 3e vault est permis) | SS |
| Bamboozle | Bloque la fenêtre pour tous les survivants 8/12/16 s ; pas d'effet sur les palettes | SS |
| Murs cassables | 2,34 s, tueur seulement | VMS |
| Stun de palette | 2 s | SS |
| Fenêtre de stun | Stun seulement une fois la palette abaissée à ~50 % ; un tueur au bord de la zone peut en sortir | SS |
| Durée d'abaissement de la palette | Non documentée | UNCERTAIN (INV) |
| Casse de palette (coup de pied) | 2,34 s (6.1.0, était 2,6 s) | VMS |
| Casse à la tronçonneuse (Hillbilly, Cannibal) | 1 s | SS |
| Casses instantanées par pouvoir | Demogorgon (Shred), Oni (Blood Fury), Blight (Lethal Rush), Mastermind (Virulent Bound), Knight (gardes), Good Guy, Lich (Mage Hand + Vorpal Sword), Dark Lord (loup), Ghoul (3e Kagune Leap avec add-on), Legion (Frenzy + add-on) | SS, liste à reconfirmer |
| Vault de palette (survivant) | Rapide 1,1 s (bruyant), lent 2 s (silencieux), pas de vault moyen | SS |
| Enduring | Stuns de palette −40/45/50 % ; sans effet en portant un survivant | SS |
| Espacement des palettes | ≥ 14, 16, 18 ou 20 m entre deux palettes (emplacements prédéfinis) | SS |
| Densité | 9.2.0 : quantité/répartition revues sur 10 cartes (moins de dead zones) ; 9.3.0 : sécurité des loops réduite sur 6 cartes ; 9.3.2 : loops « too short and unsafe » rallongées | VP |
| DR (9.6.0) sur palettes/fenêtres | Aucun DR sur nombre de palettes, blocages ou stuns (le DR vise les modificateurs) | VP (par absence) |

### 1.4 Bloodlust, poursuite, signaux

| Élément | Valeur LIVE | Confiance |
|---|---|---|
| Bloodlust | 15 s → +0,2 m/s ; 25 s → +0,4 ; 35 s → +0,6 (poursuite active requise) | VMS |
| Perte immédiate | Casser une palette, toucher un survivant, utiliser son pouvoir | SS (confirmé « le guide avait raison » pour le pouvoir) |
| Perte par stun ou aveuglement | Non documentée | **UNCERTAIN** |
| Fin de poursuite | La Bloodlust régresse (« rate of 6 », unité inconnue) | UNCERTAIN |
| Krasue (Head Form) | Exclue de la Bloodlust depuis 9.2.0 | VP |
| Début de poursuite | Survivant dans le champ de vision du tueur à ≤ 12 m, survivant qui court, tueur qui se déplace (« marche ») | SS |
| Fin de poursuite | > 18 m ; 5 s dans un casier ; perte de LOS > 8 s ; survivant au-delà de ±35° du centre du FOV (FOV tueur par défaut 87°), temporisation de cette condition non documentée | SS / INV |
| Terror Radius | « À l'origine » 32 m (4,6) et 24 m (4,4), nombreuses exceptions | SS |
| Tache rouge (red stain) | Émise par la tête du tueur, dans la direction où il **regarde et se déplace** ; invisible pour lui ; masquée par Undetectable. Marcher à reculons ou de côté autour des murs pour tromper est décrit par le wiki | SS ; manipulation en regardant vers le bas : UNCERTAIN (INV) |
| Undetectable | Supprime TR et tache rouge ; un « stinger » marque sa fin ; les lullabies ne sont pas affectées | SS |
| Traces de griffures | Quand le survivant court (ou ≥ 60 % de sa vitesse en maintenant le sprint) ; vie 10 s (1 s d'apparition, 8 s pleine, 1 s de fondu) | SS |
| Grognements | À l'état blessé ; portée non documentée (~12-16 m estimé) ; Iron Will −80/90/100 %, inactive si Exhausted | Iron Will : SS ; portée : CO → UNCERTAIN |
| Corbeaux d'ambiance | Rayon 4 m ; pas en accroupi, ni avec Calm Spirit | SS |
| Exhausted | Récupère seulement en marchant, accroupi ou immobile ; la course met le timer en pause | SS |
| Protections de décrochage | Endurance + 10 % Haste 10 s + Elusive 10 s (Elusive seulement tant que les gens ne sont pas tous faits) | VP (10.1.0) |
| Elusive | Supprime griffures, grognements, flaques ; bloque la révélation d'aura ; finit si frappé ou mis au sol | SS |

### 1.5 Économie (pour la chase theory)

| Élément | Valeur LIVE | Confiance |
|---|---|---|
| Gen solo | 90 s (90 charges) | VMS |
| Coop sur un gen | 85 / 70 / 55 % par personne → ~52,9 / ~42,9 / ~40,9 s pour 2 / 3 / 4 réparateurs | SS |
| Coup de pied de gen | Action 1,8 s ; −5 % instantané puis −0,25 charge/s ; 8 regression events max ; il faut réparer 5 % pour stopper la régression | VMS |
| Phase de crochet | 70 s | VP |
| Accrocher / décrocher | 1,5 s / 1 s | SS |
| Soin d'un état de santé | 16 s (16 charges) | SS |
| Auto-soin au Med-Kit | vitesse −33 % | SS |
| Mangled | Soin 25 % plus long | SS |
| Deep Wound | Timer 20 s ; mending 10 s seul, 6 s par un allié | VP |
| Wiggle | 16 s cumulées | SS |

---

## 2. Calculateur distance / temps (CALC sur valeurs audit)

### 2.1 Formules

- **Vitesse de rapprochement** en ligne droite : `v_r = v_tueur + bloodlust − 4,0`.
  - Tueur 4,6 : 0,6 m/s → 0,8 (≥ 15 s) → 1,0 (≥ 25 s) → 1,2 m/s (≥ 35 s).
  - Tueur 4,4 : 0,4 → 0,6 → 0,8 → 1,0 m/s.
  - Nurse 3,85 : −0,15 m/s en marche normale (tu t'éloignes) : sa menace vient entièrement des blinks (voir lot 4).
- **Conversion distance → temps** (la plus utile de toute la section) : `1 m d'avance = 1 / v_r secondes de chase en terrain ouvert`.
  - 4,6 sans Bloodlust : **1 m ≈ 1,67 s** ; avec Bloodlust max : 1 m ≈ 0,83 s.
  - 4,4 sans Bloodlust : **1 m ≈ 2,5 s** ; avec Bloodlust max : 1 m = 1,0 s.
- **Gain d'un obstacle traversé par les deux** (fenêtre suivie par le tueur, palette que le tueur casse pour passer) : `gain ≈ 4,0 × (t_tueur − t_survivant)` mètres, en plus du rapprochement normal. Démonstration : si le survivant franchit en `t_s` et le tueur en `t_k`, le survivant court `t_k − t_s` secondes de plus que ce que le tueur rattrape à cet endroit.
- **Écart à combler** = distance réelle − portée utile de la fente. La portée utile est **UNCERTAIN** (estimations communautaires de ~2 à 2,5 m de gain par la fente) : les tables ci-dessous donnent l'écart à combler, pas la distance affichée.

### 2.2 Temps avant d'être rattrapé en ligne droite (terrain ouvert, sans pouvoir)

Colonne « BL depuis 0 » : la poursuite (et la Bloodlust) commence au moment t = 0. Colonne « BL déjà à 15 s » : la chase dure déjà depuis 15 s sans reset (tu démarres avec +0,2 m/s).

| Écart à combler | 4,6 sans BL | 4,6 BL depuis 0 | 4,6 BL déjà à 15 s | 4,4 sans BL | 4,4 BL depuis 0 | 4,4 BL déjà à 15 s |
|---|---|---|---|---|---|---|
| 3 m | 5,0 s | 5,0 s | 3,8 s | 7,5 s | 7,5 s | 5,0 s |
| 5 m | 8,3 s | 8,3 s | 6,3 s | 12,5 s | 12,5 s | 8,3 s |
| 8 m | 13,3 s | 13,3 s | 10,0 s | 20,0 s | 18,3 s | 12,5 s |
| 10 m | 16,7 s | **16,3 s** | 12,0 s | 25,0 s | **21,7 s** | 15,0 s |
| 15 m | 25,0 s | 22,5 s | 17,0 s | 37,5 s | 28,8 s | 21,0 s |
| 20 m | 33,3 s | 28,0 s | 21,7 s | 50,0 s | 35,0 s | 26,0 s |
| 30 m | 50,0 s | 37,5 s | 30,0 s | 75,0 s | 45,0 s | 36,0 s |

- Les deux valeurs en gras sont celles recalculées par l'audit (A-054) : le seed disait « 10 m ≈ 17 s / 25 s » en oubliant la Bloodlust. Avec une fente de 2-2,5 m (UNCERTAIN), 10 m réels ≈ **12-13 s / 17-18 s** (audit).
- Lecture pratique (HEURISTIC) : contre un tueur 110 %, 10 m d'avance en terrain ouvert valent presque autant qu'une palette cassée (voir 2.3). Contre un 115 % avec Bloodlust déjà montée, un tile à 20 m est à peine atteignable sans avance.

### 2.3 Ce que vaut chaque interaction, en mètres puis en secondes

| Interaction | Temps perdu par le tueur (FACT) | Gain de distance (CALC) | ≈ secondes de chase vs 4,6 / 4,4 (sans BL) |
|---|---|---|---|
| Fast vault (0,5 s) que le tueur suit (1,7 s) | 1,2 s de différentiel | +4,8 m | ≈ 8 s / 12 s |
| Medium vault (0,9 s) suivi | 0,8 s | +3,2 m (et perte d'élan, non chiffrée) | ≈ 5 s / 8 s |
| Slow vault (1,5 s) suivi | 0,2 s | +0,8 m | ≈ 1 s / 2 s — quasi nul |
| Palette pré-jetée, cassée par le tueur (tu es déjà de l'autre côté) | 2,34 s | +9,4 m **et** Bloodlust remise à 0 | ≈ 16 s / 23 s |
| Palette déjà au sol : tu la vaultes (1,1 s), il la casse (2,34 s) | 1,24 s de différentiel | +5,0 m, reset BL | ≈ 8 s / 12 s |
| Stun seul (2 s), il ne casse pas | 2 s | +8 m | ≈ 13 s / 20 s |
| Stun (2 s) + casse (2,34 s) | 4,34 s | +17,4 m, reset BL | ≈ 29 s / 43 s (si ligne droite ensuite) |
| Stun contre Enduring III (−50 %) | 1 s | +4 m | ≈ 7 s / 10 s |
| Casse à la tronçonneuse (1 s) | 1 s | +4 m | ≈ 7 s / 10 s |
| Coup manqué (cooldown 1,5 s) | 1,5 s moins ce qu'il parcourt pendant le cooldown (INV) | ≤ +6 m | ≤ 10 s / 15 s |
| Coup reçu : cooldown 2,7 s + boost 1,8 s à 6,6 m/s | 2,7 s moins ce qu'il parcourt pendant le cooldown (INV) | +4,7 m par le boost seul ; ~10-15 m au total selon la vitesse du tueur pendant son cooldown (**HYPOTHESIS**) | ≈ 17-25 s / 25-37 s, mais tu as perdu un état de santé |

Limites (à lire avant d'utiliser ces chiffres) :
- Les secondes de la dernière colonne supposent qu'après l'interaction tu cours en ligne droite en terrain ouvert. Sur un tile, le gain de distance se convertit autrement (il te permet de refaire un cycle ou d'atteindre le tile suivant).
- Contre un tueur à pouvoir de distance ou de mobilité, les mètres valent beaucoup moins (un tir, un blink ou un rush ne « rattrape » pas à 0,6 m/s).
- En pratique, le tueur ne suit pas une fenêtre qu'il peut contourner ; le tableau sert à comparer les ordres de grandeur, pas à prédire une chase.

---

## 3. Techniques de chase (format §4 : 7 points par technique)

Rappel : sauf mention FACT, tout ce qui suit est HEURISTIC / SITUATIONAL. Chaque exercice donne : objectif, méthode, métrique, condition de réussite. Les seuils de réussite sont des **propositions** (HEURISTIC) à recalibrer quand des données existeront (lot 11).

### T01 — Vitesses et distance en ligne droite (« hold W »)

1. **Définition** : courir droit vers un point sûr plutôt que de boucler, en utilisant l'avance comme ressource.
2. **Mécanique** : FACT [audit : VMS] le survivant court à 4,0 m/s, les tueurs à 4,6 ou 4,4 m/s ; blessé ou sain ne change rien. Le rapprochement est donc lent et calculable (section 2). La Bloodlust accélère ce rapprochement après 15 / 25 / 35 s de poursuite (FACT [audit : VMS]). Tenir W « achète » `écart / v_r` secondes sans consommer de ressource de la carte.
3. **Utile quand** (SITUATIONAL) :
   - tu as ≥ 8-10 m d'avance au début de la poursuite et le tile suivant est à portée ;
   - contre un tueur 110 % (chaque mètre vaut 2,5 s) ;
   - contre les tueurs anti-loop dont le pouvoir punit la boucle plus que la ligne droite (le seed classe ainsi Legion, Clown, Doctor…, à confirmer par tueur au lot 4) ;
   - pour **traverser une dead zone** vers une zone riche en palettes ;
   - pour éloigner la chase des gens à finir (voir §14 « zoning inversé »).
4. **Mauvais quand** :
   - tueur à distance ou à mobilité en terrain ouvert (Huntress, Deathslinger, Blight, Nurse…) : la ligne droite est ce qu'ils veulent (lot 4) ;
   - l'écart à combler est < 5 m contre un 115 % : ≈ 8 s au mieux, puis un coup gratuit ;
   - quand tu cours vers un mur de carte, un coin vide ou un tile déjà utilisé (dead end) ;
   - quand la Bloodlust est déjà à +0,4/+0,6 : le rapprochement double.
5. **Erreurs fréquentes** : partir en ligne droite sans destination ; se retourner longuement pendant la ligne droite (voir T14) ; oublier que le temps passé à courir compte pour la Bloodlust ; courir vers ses alliés sur un gen.
6. **Contre-jeu du tueur** : couper l'angle vers ta destination probable (il lit le terrain comme toi) ; utiliser son pouvoir en terrain ouvert ; lâcher la chase si l'avance est trop grande (§14 abandon) ; perks de Haste ou de Hindered (non détaillées ici, voir lots 2-3).
7. **Exercice « Chronomètre en ligne droite »** :
   - Objectif : estimer l'écart et le temps restant avant contact.
   - Méthode : en partie personnalisée ou en partie normale, au début de chaque poursuite, annoncer à voix haute l'écart estimé (en mètres) et le temps prévu avant contact avec la table 2.2 ; relire ensuite la VOD.
   - Métrique : écart entre temps prévu et temps réel avant le premier coup ou la première ressource utilisée.
   - Réussite : erreur d'estimation < 3 s sur 10 poursuites consécutives.

### T02 — Fente (lunge), attaque de base et cooldowns

1. **Définition** : l'attaque de base du tueur comprend une fente (accélération courte) puis, touchée ou ratée, un cooldown pendant lequel il est fortement limité.
2. **Mécanique** :
   - FACT [audit : SS] pendant la fente, la vitesse vise ~6,9 m/s quelle que soit la classe du tueur.
   - Durée et distance de la fente : **UNCERTAIN** (~0,87-1 s, ~2 m de gain, portée totale ~6 m selon des joueurs, en désaccord).
   - FACT [audit : VMS] cooldown 2,7 s après un coup réussi ; FACT [audit : SS] 1,5 s après un coup manqué ou obstrué par le décor.
   - FACT [audit : VP pour la durée] le survivant touché reçoit 1,8 s de boost (×1,65 selon le wiki → 6,6 m/s, SS).
   - Conséquence : une fente ratée donne jusqu'à 1,5 s « gratuites », un coup réussi te donne une fenêtre de 2,7 s + 1,8 s pour convertir en distance.
   - FACT [audit : SS] en portant un survivant, le tueur n'a que la Quick Attack (pas de fente).
3. **Utile (côté survivant)** :
   - faire rater la fente près d'un obstacle (coup obstrué = 1,5 s) ;
   - après un coup reçu, utiliser le boost pour **atteindre** un tile ou une fenêtre (fast vault qui garde l'élan : FACT [audit : SS]).
4. **Mauvais / piège** :
   - « faire rater » en terrain ouvert contre un tueur qui garde sa fente : tu perds de la distance en zigzaguant ;
   - la règle du seed « après un coup, ne vaultez pas (le vault annule l'élan) » est **fausse pour le fast vault** (audit A-059). Ce qui reste **UNCERTAIN** : si le boost du coup continue pendant et après le fast vault.
5. **Erreurs fréquentes** :
   - s'arrêter ou tourner juste après un coup (tu gâches le boost) ;
   - vaulter une fenêtre en angle pendant le boost (medium vault 0,9 s qui remet l'élan à zéro) ;
   - croire que la fente a une portée fixe « visible » : elle dépend de l'angle, de la latence (T21) et des obstacles.
6. **Contre-jeu du tueur** : ne pas lancer la fente trop tôt (« tenir l'attaque » pour frapper au bout du vault) ; frapper à courte portée sans fente complète près des obstacles ; perks qui réduisent les cooldowns (le seed cite Unrelenting et Keep Them Waiting, non vérifiées ici).
7. **Exercice « Convertir le coup »** :
   - Objectif : transformer chaque coup reçu en distance ou en tile atteint.
   - Méthode : sur 20 coups reçus (VOD), noter où tu étais 3 s après le coup.
   - Métrique : % de coups suivis d'une arrivée sur un tile ou d'une distance ≥ 8 m.
   - Réussite : ≥ 70 % (seuil HEURISTIC).

### T03 — Vaults de fenêtre (fast / medium / slow) et vault du tueur

1. **Définition** : franchir une fenêtre. Trois vitesses selon l'élan et l'angle.
2. **Mécanique** :
   - FACT [audit : SS] fast 0,5 s (bruyant, garde l'élan) ; medium 0,9 s (angle ou élan insuffisant, élan remis à zéro) ; slow 1,5 s (sans notification de bruit fort) ; tueur 1,7 s.
   - FACT [audit : SS] condition du fast : ≥ 2,5 m de course droite vers la fenêtre. Angle toléré : UNCERTAIN.
   - FACT [audit : SS] le 3e vault d'une même fenêtre dans une même poursuite est permis, puis la fenêtre est bloquée **30 s pour toi seul**.
   - CALC : un fast vault suivi par le tueur rapporte +4,8 m ; un slow vault suivi ne rapporte que +0,8 m.
3. **Utile quand** :
   - fast vault quand le tueur est assez loin pour ne pas te toucher pendant les 0,5 s, et quand le chemin du tueur pour te rejoindre est plus long que le tien (principe de tout loop) ;
   - slow vault volontaire (silencieux) pour **ne pas signaler** ta position hors LOS (fin de chase, décrochage furtif) : SITUATIONAL.
4. **Mauvais quand** :
   - le tueur est à portée de fente pendant ton vault (tu es immobile 0,5-0,9 s) ;
   - fenêtre déjà vaultée 2 fois : la 3e te bloque la fenêtre 30 s → tu perds ce tile ;
   - fenêtre dont la sortie mène à une dead zone ;
   - contre Bamboozle (blocage 8-16 s pour tous : FACT [audit : SS]) : ne pas compter sur un aller-retour immédiat.
5. **Erreurs fréquentes** :
   - arriver en angle (medium vault) ;
   - vaulter « par réflexe » alors que le tueur n'a pas encore choisi son côté ;
   - compter mal ses vaults : la 3e est permise, la 4e non (pendant 30 s) ;
   - croire que « le vault annule l'élan » en général (faux pour le fast, seed A-059).
6. **Contre-jeu du tueur** : se placer pour frapper à la sortie du vault ; faire croire qu'il contourne puis revenir (double-back tueur) ; Bamboozle ; forcer le 3e vault pour bloquer la fenêtre.
7. **Exercice « 10 fast vaults »** :
   - Objectif : fiabiliser l'approche droite.
   - Méthode : partie personnalisée ; sur 5 fenêtres différentes, 10 approches chacune en venant d'angles variés (0°, 30°, 45°), noter le type de vault obtenu.
   - Métrique : % de fast vaults ; angle maximal donnant encore un fast vault (ta mesure servira de donnée pour la question ouverte « angle toléré »).
   - Réussite : ≥ 95 % de fast vaults depuis une approche droite ≥ 2,5 m ; connaître son angle limite.

### T04 — Palettes : drop, fenêtre de stun, casse, vault de palette

1. **Définition** : faire tomber une palette pour bloquer le passage, étourdir le tueur (stun) ou le forcer à casser / contourner.
2. **Mécanique** :
   - FACT [audit : SS] stun 2 s, seulement si la palette atteint ~50 % d'abaissement alors que le tueur est dans la zone ; un tueur au bord peut en sortir.
   - Durée d'abaissement : UNCERTAIN.
   - FACT [audit : VMS] casse 2,34 s ; FACT [audit : SS] 1 s à la tronçonneuse, instantanée pour plusieurs pouvoirs (liste en 1.3).
   - FACT [audit : SS] Enduring réduit le stun de 40-50 %.
   - FACT [audit : SS] le survivant vault une palette baissée en 1,1 s (rapide, bruyant) ou 2 s (lent, silencieux) ; le tueur ne la vault pas.
   - Casser la palette fait perdre la Bloodlust au tueur (FACT [audit : SS]).
   - CALC : casse = +9,4 m ; stun + casse = +17,4 m.
   - La palette est une ressource **définitive et partagée** avec l'équipe (casser = disparue pour tous).
3. **Utile** : voir T05 (décision). Stun : quand le tueur s'engage sur la palette. Drop sans stun : pour bloquer un chemin et forcer une décision (casser ou contourner).
4. **Mauvais** :
   - contre la Nurse, les palettes valent peu (elle blinke à travers : lot 4) ;
   - contre les casses instantanées, un drop précoce ne coûte rien au tueur ;
   - une palette jetée « pour rien » (tueur loin, pas de menace) grille une ressource d'équipe.
5. **Erreurs fréquentes** :
   - jeter trop tard (le tueur frappe à travers ou tu prends la fente pendant l'animation) ;
   - jeter trop tôt en espérant un stun (le tueur s'arrête avant la zone) ;
   - ne pas partir pendant la casse (2,34 s = 9,4 m offerts à gaspiller) ;
   - revenir vaulter une palette baissée alors que le tueur est de l'autre côté prêt à casser : tu es immobile 1,1 s.
6. **Contre-jeu du tueur** : fausse avance (T17) pour provoquer un drop sans stun ; casser immédiatement si le tile devient infini, contourner si la palette est faible ; Enduring / Spirit Fury (seed, non vérifié) ; pouvoirs de casse.
7. **Exercice « Timing de stun »** :
   - Objectif : sentir la fenêtre de stun.
   - Méthode : avec un ami tueur en partie personnalisée, 20 approches par palette sur 3 palettes ; il varie la vitesse d'engagement.
   - Métrique : stuns / tentatives ; coups reçus pendant l'animation.
   - Réussite : ≥ 70 % de stuns sur engagement franc et 0 coup reçu à travers la palette sur les 10 derniers essais (HEURISTIC).

### T05 — Respect, greed, pre-drop (décision de palette)

1. **Définitions** :
   - **Pre-drop** : jeter la palette avant que le tueur soit à portée, sans chercher le stun, pour garantir la distance.
   - **Greed** : garder la palette levée et continuer à boucler (ou vaulter la fenêtre), pour la réutiliser plus tard.
   - **Respect** : côté tueur, s'arrêter ou ralentir devant une palette levée pour ne pas être étourdi.
2. **Mécanique** : le pre-drop échange une ressource contre une certitude : le tueur doit casser (2,34 s, Bloodlust perdue) ou contourner. Le greed échange du risque (un coup) contre de la ressource conservée et du temps de boucle supplémentaire. La valeur dépend de la distance, de l'état de santé, du pouvoir du tueur et des palettes restantes (voir §14.3 EV d'une palette).
3. **Arbre de décision (HEURISTIC, pas une règle)** :
   - A. Le tueur peut-il me frapper avant que j'atteigne la palette si je greed un cycle de plus ? Oui → pre-drop (ou changer de plan). Non → B.
   - B. Suis-je blessé, Exposed, dernier crochet, ou le coup me met-il au sol ? Oui → la marge exigée augmente (un coup = fin de chase). Non → un coup coûte un état de santé et une conversion (voir §14.4).
   - C. Le tueur a-t-il un pouvoir anti-loop prêt (tir, dash, blink, casse instantanée) ? Oui → pre-drop plus tôt, ou ne pas compter sur la palette.
   - D. Reste-t-il des palettes accessibles dans la zone et un tile suivant atteignable ? Non → la palette vaut plus : greed prudemment ou tenir W avant de la consommer.
   - E. Mes alliés profitent-ils de chaque seconde (gens en cours, loin de la chase) ? Oui → le temps compte plus que la ressource ; non (tous blessés, au crochet, 2 restants) → la survie et les palettes d'avenir comptent plus.
   - F. La Bloodlust est-elle haute ? Oui → la casse forcée remet à zéro : un pre-drop gagne plus.
4. **Mauvais** :
   - la règle du seed « faites au moins deux tours de fenêtre avant de toucher à la palette » est **absolue** (audit) : contre un tueur à pouvoir ou quand le tueur coupe le tile, le 2e tour coûte un coup ;
   - « une god pallet se garde » : faux si la garder coûte un coup ou si le tueur casse la chase de toute façon.
5. **Erreurs fréquentes** : greed par habitude (sans réévaluer à chaque cycle) ; pre-drop contre un tueur loin (ressource gaspillée) ; oublier qu'en SoloQ tu ne sais pas si la palette suivante existe encore (un allié peut l'avoir utilisée).
6. **Contre-jeu du tueur** : alterner respect et non-respect pour rendre ton greed risqué ; casser la palette tôt pour interdire le greed ; zoner vers la palette cassée (§14.6).
7. **Exercice « Justifier chaque palette »** :
   - Objectif : que chaque palette jetée ait une raison.
   - Méthode : après 10 parties, pour chaque palette jetée, écrire A-F ci-dessus en 1 ligne.
   - Métrique : % de palettes jetées avec une raison valable ; coups reçus « en greed » ; palettes jetées sans menace.
   - Réussite : ≤ 1 palette « gratuite » par partie et ≤ 1 coup pris en greed sur une palette safe par partie (HEURISTIC).

### T06 — Bloodlust

1. **Définition** : bonus de vitesse du tueur quand une poursuite dure sans interruption.
2. **Mécanique** :
   - FACT [audit : VMS] +0,2 / +0,4 / +0,6 m/s à 15 / 25 / 35 s.
   - FACT [audit : SS] perdue en cassant une palette, en frappant, en utilisant le pouvoir ; régresse en fin de poursuite (unité inconnue).
   - **UNCERTAIN** : perte par stun ou aveuglement (le seed ch. 10 affirme « disparaît quand vous êtes étourdi » : non documenté).
   - CALC : avec Bloodlust max, un 115 % se rapproche à 1,2 m/s (le double de la base), un 110 % à 1,0 m/s (2,5 fois la base).
3. **Utile (côté survivant)** :
   - forcer une casse de palette au bon moment pour remettre la Bloodlust à zéro ;
   - casser la poursuite (T07) pour la faire régresser ;
   - savoir qu'un tueur qui abandonne la palette pour garder sa Bloodlust accepte de perdre du temps de contournement.
4. **Mauvais / piège** : croire qu'un stun remet la Bloodlust à zéro (non documenté) ; boucler longtemps un tile faible en fin de chase (à +0,6, un tile qui « tenait » ne tient plus).
5. **Erreurs fréquentes** : ne pas compter le temps de chase (le 1er palier arrive à 15 s, souvent pendant la 1re boucle) ; attribuer à la « latence » un coup qui s'explique par la Bloodlust.
6. **Contre-jeu du tueur** : éviter de casser les palettes faibles (contourner) pour garder la Bloodlust ; ne pas utiliser son pouvoir inutilement ; certains pouvoirs sont exclus (Krasue Head Form : FACT [audit : VP]).
7. **Exercice « Horloge de Bloodlust »** :
   - Objectif : savoir à tout moment si le tueur a +0 / +0,2 / +0,4 / +0,6.
   - Méthode : compter à voix haute depuis le début de chase ; remettre à 0 à chaque coup, palette cassée ou usage du pouvoir.
   - Métrique : écart entre ton compte et la VOD.
   - Réussite : palier correct dans ≥ 90 % des vérifications (VOD, 10 chases).

### T07 — Début / fin de poursuite, ligne de vue (LOS), chase break

1. **Définition** : la « poursuite » est un état du jeu (musique de chase, Bloodlust, perks de chase), distinct du fait d'être suivi. Le chase break consiste à sortir de cet état ou à se faire perdre.
2. **Mécanique** :
   - FACT [audit : SS] début : tu es dans le champ de vision du tueur à ≤ 12 m, tu cours, il se déplace.
   - FACT [audit : SS] fin : > 18 m ; 5 s dans un casier ; LOS perdue > 8 s ; hors ±35° du centre de son FOV (87° par défaut). Temporisation de la condition d'angle : UNCERTAIN.
   - FACT [audit : SS] le tueur n'entend pas son propre TR, il entend la musique de la carte jusqu'à la poursuite ; chez le survivant, la couche 4 (chase) remplace la 3e couche de proximité.
   - FACT [audit : SS] les griffures apparaissent seulement en course (≥ 60 % de ta vitesse en sprint) ; elles vivent 10 s.
   - FACT [audit : VP] depuis 9.6.0, le tueur est révélé aux survivants dès qu'un survivant entre en poursuite (Match Details).
3. **Utile quand** : casser la LOS derrière des murs hauts, dans le maïs ou des bâtiments, puis **marcher** (pas de griffures) ou s'accroupir ; utile contre les tueurs sans info d'aura, et pour faire régresser la Bloodlust.
4. **Mauvais quand** : le tueur a une info (aura, pouvoir de détection, perks) ; tu es blessé (grognements, flaques de sang, portée non documentée) sans Iron Will / Elusive ; tu t'arrêtes dans un endroit sans issue.
5. **Erreurs fréquentes** :
   - courir après la perte de LOS (les griffures te trahissent pendant 10 s) ;
   - entrer dans un casier sous les yeux du tueur ;
   - croire que la musique de chase qui s'arrête = tueur parti (il peut juste regarder ailleurs, condition d'angle) ;
   - la statistique du seed « un survivant perdu près d'un casier y est 1 fois sur 3 » est non mesurable (audit D-090) : ne pas l'utiliser.
6. **Contre-jeu du tueur** : suivre les griffures, les flaques, les grognements ; couper vers la sortie logique ; vérifier les casiers proches en fin de recherche ; perks d'aura.
7. **Exercice « 8 secondes »** :
   - Objectif : réussir des chase breaks propres.
   - Méthode : à chaque perte de LOS (derrière un mur haut), choisir : marcher 3-5 s puis s'accroupir, ou continuer à courir ; noter le résultat.
   - Métrique : % de pertes de LOS converties en fin de poursuite (musique de chase qui s'arrête) ; secondes gagnées avant la reprise.
   - Réussite : identifier sur 20 cas les situations où marcher bat courir (avec vs sans info d'aura du tueur).

### T08 — Tache rouge (red stain) : lecture et manipulation (moonwalk)

1. **Définition** : lumière rouge projetée par la tête du tueur dans la direction où il regarde. Le **moonwalk** est la technique du tueur qui marche à reculons ou de côté pour que la tache indique une direction fausse.
2. **Mécanique** :
   - FACT [audit : SS] la tache vient de la tête, dans la direction où il regarde et se déplace ; le tueur ne la voit pas ; Undetectable la supprime.
   - FACT [audit : SS] le wiki décrit la marche à reculons / de côté autour des murs comme technique pour tromper.
   - UNCERTAIN : l'effet de regarder vers le bas (cacher la tache), la vitesse du tueur en marche arrière.
   - Pourquoi ça marche : derrière un mur, le survivant voit la tache dépasser et en déduit la direction du tueur. La tache suit la **caméra**, pas le **corps** : si caméra et déplacement divergent, l'information ment.
3. **Utile (lecture)** :
   - quand tu n'as pas la LOS sur le corps mais vois la tache au-dessus/à côté d'un mur ;
   - pour détecter un tueur qui attend derrière un coin (la tache « immobile » ou qui balaie) ;
   - combinée au TR et aux pas pour trianguler.
4. **Mauvais (se fier à la tache seule)** :
   - contre les tueurs Undetectable ou furtifs (pas de tache : lot 4 cite Ghost Face, Wraith, Pig accroupie, Myers selon le palier) ;
   - contre un tueur qui moonwalk ;
   - quand tu as la LOS sur le corps : le corps est l'information fiable, la tache non.
5. **Erreurs fréquentes** :
   - croire que la tache indique le déplacement (elle indique le regard) ;
   - réagir à une tache qui « disparaît » en supposant que le tueur est parti (il peut regarder au sol ou être Undetectable) ;
   - se retourner pour chercher la tache au lieu d'écouter les pas.
6. **Contre-jeu (du tueur, pour tromper la lecture)** : moonwalk autour des murs hauts, balayage de caméra, attente sans bouger ; **et contre-contre-jeu survivant** : prendre un checkspot qui montre le corps (T14), écouter les pas, jouer le côté du tile qui reste sûr quelle que soit la direction (« option coverage » du survivant, §14.7).
7. **Exercice « Tache vs corps »** :
   - Objectif : ne plus se faire prendre par le moonwalk.
   - Méthode : avec un ami tueur, 20 boucles sur un jungle gym à murs hauts ; il moonwalke ou non au hasard (tirage à pile ou face noté avant chaque boucle).
   - Métrique : % de boucles où tu as correctement deviné sa direction ; coups reçus sur un moonwalk.
   - Réussite : ≥ 75 % de lectures correctes et 0 coup reçu sur les 10 dernières boucles.

### T09 — Double-back

1. **Définition** : faire demi-tour brusquement (souvent juste après être sorti de la LOS du tueur) pour exploiter son engagement dans l'autre sens.
2. **Mécanique** : le tueur doit engager son trajet avant de savoir où tu vas (il ne voit pas à travers les murs hauts). Chaque changement de sens le force à refaire la moitié du tile. Son avantage de vitesse (0,4-0,6 m/s) ne compense pas un trajet plus long de plusieurs mètres. Hors LOS, le double-back peut aussi casser la lecture des griffures (elles apparaissent sur les deux trajets pendant 10 s : FACT [audit : SS]).
3. **Utile quand** : tueur engagé loin dans l'autre sens ; tiles à murs hauts (shack, jungle gym, maze) ; il te suit à la trace plutôt qu'à la vue ; contre un tueur qui « précommande » un mindgame (il attend, tu repars dans l'autre sens).
4. **Mauvais quand** : le tueur a la LOS (il voit ton demi-tour) ; murs bas ; tueur à distance ou mobilité (un demi-tour prévisible offre un tir ou un blink : lot 4 note que contre une Nurse experte le double-back devient lisible) ; double-back vers une fenêtre déjà vaultée 2 fois.
5. **Erreurs fréquentes** : double-back systématique au même endroit (appris par le tueur en 1-2 boucles) ; double-back sans info sur la position du tueur (tu cours dans ses bras) ; oublier que le tueur peut faire le même demi-tour (son double-back à lui).
6. **Contre-jeu du tueur** : couper par le centre du tile ; s'arrêter à un point d'où il couvre les deux sorties ; faire un faux engagement (demi-tour tueur) ; utiliser la tache rouge pour faire croire à un engagement.
7. **Exercice « Double-back sur info »** :
   - Objectif : ne faire un double-back que sur une info (tache, pas, corps vu à un checkspot).
   - Méthode : 10 parties, chaque double-back noté avec l'info qui l'a motivé.
   - Métrique : % de double-backs « sur info » et taux de réussite (distance gagnée vs coup reçu).
   - Réussite : ≥ 80 % sur info, ≥ 60 % réussis (HEURISTIC).

### T10 — Mindgames (principe général et 50/50)

1. **Définition** : situation où survivant et tueur doivent chacun choisir sans connaître le choix de l'autre (continuer / revenir ; vaulter / attendre ; respecter / pousser).
2. **Mécanique** : sur un tile « mindgamable », il existe au moins deux trajets pour chacun et aucun ne domine. Le résultat dépend de la **prédiction**, pas de la vitesse. Un bon mindgame survivant **réduit** le 50/50 à une situation où plusieurs de tes options restent sûres (tu choisis le côté qui ne perd pas même en cas de mauvaise lecture).
3. **Utile quand** : tu n'as plus de palette sûre et le tile est assez long pour qu'une bonne lecture rapporte un cycle entier ; tu as de l'info (checkspot, tache, son) que le tueur n'a pas.
4. **Mauvais quand** : le tile est safe (inutile de prendre un risque) ; tu es au dernier état de santé sans raison de risquer ; contre un tueur à pouvoir qui « couvre » les deux options (tir, dash, casse instantanée).
5. **Erreurs fréquentes** : « mindgamer » pour le style ; réagir à chaque mouvement de caméra (le tueur joue avec ta réaction) ; choisir toujours la même option sous pression ; attendre trop longtemps (la Bloodlust monte).
6. **Contre-jeu du tueur** : varier ses choix, observer tes habitudes sur les 2-3 premières boucles, se placer pour couvrir deux options, utiliser Undetectable ou le moonwalk.
7. **Exercice « Journal de 50/50 »** :
   - Objectif : identifier tes biais.
   - Méthode : noter chaque 50/50 (option choisie, info disponible, résultat).
   - Métrique : proportion de choix identiques consécutifs ; taux de réussite avec et sans info.
   - Réussite : pas plus de 3 fois de suite la même option ; taux de réussite avec info nettement supérieur à 50 %.

### T11 — Pathing (trajet sur et entre les tiles)

1. **Définition** : choix du chemin : quel côté du tile, où entrer, où sortir, vers quel tile suivant.
2. **Mécanique** : un loop fonctionne quand **ton** trajet jusqu'au point de sécurité (fenêtre, palette, coin) est plus court que **le sien**. Le pathing consiste à maintenir cette différence en tenant compte de tous ses trajets possibles (principe correct du seed : « distance maximale avec tous les chemins possibles du tueur »). Le tile suivant doit être choisi avant d'en avoir besoin : FACT [audit : SS] les palettes sont espacées d'au moins 14-20 m, donc chaque transition coûte au minimum 3,5-5 s de course.
3. **Utile** : toujours ; surtout en début de chase (choisir la zone la plus riche) et en fin de tile (transition).
4. **Mauvais / piège** : pathing « parfait » sur un tile mais qui mène à une dead zone ; pathing qui ramène la chase vers les gens de tes alliés ou vers un crochet proche.
5. **Erreurs fréquentes** : courir au milieu des couloirs (trajet plus long) ; entrer dans un tile par le côté qui donne le choix au tueur ; ne pas connaître la position des palettes utilisées par l'équipe (SoloQ) ; se bloquer dans le décor.
6. **Contre-jeu du tueur** : se placer pour te « pousser » vers une zone vide (zoning, §14.6) ; bloquer l'entrée du tile suivant ; casser les palettes de transition.
7. **Exercice « Carte mentale »** :
   - Objectif : avoir toujours le tile suivant en tête.
   - Méthode : pendant chaque chase, annoncer « suivant : X » dès que tu arrives sur un tile.
   - Métrique : transitions annoncées / transitions faites ; transitions vers une dead zone.
   - Réussite : 100 % des transitions annoncées, 0 transition vers une dead zone non choisie sur 10 parties.

### T12 — Cornering (négocier les coins)

1. **Définition** : prendre les coins du tile au plus serré, au bon moment, pour raccourcir ton trajet et casser la LOS le plus tôt possible.
2. **Mécanique** : un virage large rallonge le trajet (chaque mètre perdu vaut 1,67-2,5 s de chase en ligne droite, CALC) et prolonge le temps où le tueur te voit (il peut couper l'angle ou lancer une attaque à distance). Couper tôt le coin retire l'info au tueur plus tôt.
3. **Utile** : sur tous les tiles à murs hauts ; contre les tueurs à distance (moins de temps exposé) ; à chaque entrée/sortie de tile.
4. **Mauvais / piège** : couper un coin derrière lequel le tueur peut attendre (double-back tueur) : le coin serré te met à portée de fente sans info ; coins avec décor qui accroche (collision, T20).
5. **Erreurs fréquentes** : tourner trop tôt et heurter l'angle ; tourner trop tard par peur ; regarder derrière soi pendant le virage (T14).
6. **Contre-jeu du tueur** : attendre au coin (« corner mindgame ») plutôt que te suivre ; couper par l'intérieur du tile.
7. **Exercice « Coins propres »** :
   - Objectif : virages serrés sans accrochage.
   - Méthode : partie personnalisée, 10 tours de shack et de jungle gym au chronomètre, sans tueur.
   - Métrique : temps par tour ; nombre d'accrochages au décor.
   - Réussite : temps stabilisé (±0,5 s) et 0 accrochage sur 5 tours consécutifs.

### T13 — Hugging (coller le tile)

1. **Définition** : longer les murs du tile au plus près pendant la boucle.
2. **Mécanique** : le chemin le plus court autour d'un obstacle suit sa paroi ; tout écart rallonge ton trajet et raccourcit l'avantage de la boucle. Coller le mur maximise aussi la couverture visuelle (le tueur te voit moins longtemps).
3. **Utile** : boucles longues, contre les tueurs M1, pour gagner les dixièmes de seconde qui séparent un coup d'un stun.
4. **Mauvais / piège** : murs avec aspérités (collision, T20) ; murs bas ou transparents (la LOS ne se casse pas, tu gagnes seulement la distance) ; contre des tueurs qui frappent à travers ou autour des obstacles (pouvoirs de distance, lot 4).
5. **Erreurs fréquentes** : s'accrocher à un objet et perdre 0,5-1 s (UNCERTAIN, non mesuré) ; coller le mur en regardant derrière (on dévie) ; coller le côté intérieur d'un tile où le tueur coupe.
6. **Contre-jeu du tueur** : couper par le centre ; se servir des aspérités pour frapper ; attaques de pouvoir le long du mur.
7. **Exercice** : identique à T12 (chronomètre), en ajoutant un tour « au milieu du couloir » pour mesurer la différence de temps sur un même tile (donnée utile à partager au lot 7).

### T14 — Caméra, checkspots et information pendant la chase

1. **Définitions** :
   - **Caméra en chase** : orienter la caméra vers le tueur tout en continuant à courir dans la bonne direction (en pratique, tourner la caméra et courir « vers l'écran »).
   - **Checkspot** : point du trajet où tu peux voir le tueur (trou dans le mur, fenêtre, muret, angle) **sans dévier** et sans perdre de distance.
2. **Mécanique (pourquoi c'est central)** : toute décision de chase (vaulter, jeter, double-back, partir) dépend de la position du tueur. Sans info, chaque décision est un 50/50 ; avec info, tu joues l'option sûre. Mais regarder derrière coûte : risque de dévier, de heurter le décor, de rater l'angle d'un fast vault (≥ 2,5 m de course droite : FACT [audit : SS]). Le compromis est de regarder **aux bons endroits** plutôt que souvent.
3. **Quand regarder (fréquence des checks, HEURISTIC)** :
   - **Avant chaque point de décision** : ~1 s avant une fenêtre, une palette, un coin où un double-back est possible. C'est la règle principale : un check par décision.
   - **Pendant les lignes droites** : check bref (≤ 0,5 s, HEURISTIC) seulement si le trajet devant est dégagé et déjà mémorisé ; sinon écouter (pas, TR, souffle) plutôt que regarder.
   - **À la perte de LOS du tueur** : un check pour savoir s'il suit ou coupe ; puis décider (T07, T09).
   - **Dès que le son change** : TR qui monte ou baisse brusquement, pas qui s'arrêtent, bruit de pouvoir.
   - Fréquence indicative : plus le tueur est proche et le tile court, plus les checks sont fréquents mais brefs ; en longue ligne droite contre un M1 loin, quasiment aucun (le son suffit).
4. **Comment garder le pathing en regardant derrière (HEURISTIC)** :
   - mémoriser les 2 prochains points de passage **avant** de tourner la caméra ;
   - ne regarder derrière que sur des segments droits et dégagés ; jamais pendant un virage serré ou l'approche d'un fast vault ;
   - utiliser les checkspots naturels du tile (fenêtre, trous, muret) : ils donnent l'info sans tourner la tête ;
   - revenir face à la route **avant** d'arriver à 2,5 m de la fenêtre.
5. **Contexte où regarder est mauvais ou dangereux** :
   - tueurs à distance (Huntress, Deathslinger, Trickster…) : regarder derrière dans l'open est souvent nécessaire pour esquiver, mais te fait perdre la ligne ;
   - tueurs furtifs : la tache et le TR mentent ou manquent (lot 4 : Ghost Face, Myers, Pig, Wraith) → la caméra est ta seule info ;
   - tueurs à mobilité (Blight, Nurse) : l'info de dernière seconde (direction du rush / blink) décide de tout.
6. **Erreurs fréquentes** : regarder derrière « par anxiété » à chaque seconde ; ne jamais regarder (le seed dit « tenez droit sans vous retourner inutilement » : juste pour la ligne droite, faux sur les tiles) ; heurter un obstacle en regardant ; rater un fast vault en regardant.
7. **Contre-jeu du tueur** : jouer sur ce que tu vois (fausse direction, moonwalk, attente hors LOS) ; se placer là où tes checkspots ne montrent rien ; Undetectable.
8. **Exercice « Drill caméra » (mission §33)** :
   - Objectif : maintenir un pathing correct tout en regardant derrière.
   - Méthode : partie personnalisée, 10 tours de jungle gym ; à chaque tour, faire exactement 1 check avant la fenêtre et 1 check avant la palette ; un ami tueur (ou un bot en mode entraînement s'il existe : UNCERTAIN) note tes positions.
   - Métrique : accrochages au décor ; vaults non rapides ; checks faits au bon endroit.
   - Réussite : 0 accrochage et 100 % de fast vaults sur 10 tours avec les 2 checks, puis même chose en partie réelle sur 5 chases.

### T15 — Lecture d'animation

1. **Définition** : déduire l'action du tueur (ou d'un survivant) de son animation avant qu'elle produise son effet.
2. **Mécanique** : chaque action a une durée fixe ou connue (casse 2,34 s, vault tueur 1,7 s, cooldown 2,7 / 1,5 s : FACT). Reconnaître le **début** d'une action donne tout son temps pour réagir. Exemples :
   - début de la casse (coup de pied) → 2,34 s garanties : partir, pas regarder ;
   - début du vault du tueur → 1,7 s : tu peux revaulter ou changer de côté ;
   - animation d'essuyage après coup (cooldown 2,7 s) → fenêtre pour rejoindre un tile ;
   - levée de l'arme / début de fente → esquive latérale ou obstacle ;
   - pouvoirs : charge, visée, posture (détail par tueur au lot 4 : ex. Hillbilly, charge de tronçonneuse ; Huntress, armé de hachette).
3. **Utile** : dans tout duel rapproché ; pour savoir si le tueur casse ou fait semblant (T17) ; pour enchaîner sans vérifier plusieurs fois.
4. **Mauvais / piège** : se fier au début d'animation contre un tueur qui feinte (fausse casse n'existe pas mécaniquement une fois lancée, mais les fausses avances oui) ; latence (T21) : ce que tu vois a un léger retard (UNCERTAIN en valeur).
5. **Erreurs fréquentes** : rester regarder la casse au lieu de courir ; confondre le recul d'un stun et une casse ; réagir au mouvement de caméra (qui n'est pas une animation d'action).
6. **Contre-jeu du tueur** : masquer ses intentions (ne lancer l'action qu'une fois la décision sûre), attendre hors de ta vue.
7. **Exercice « Nommer l'animation »** :
   - Objectif : identifier en < 0,5 s l'action lancée.
   - Méthode : en revoyant des VOD de tes chases, mettre pause au premier frame de chaque action du tueur et la nommer.
   - Métrique : actions correctement nommées.
   - Réussite : ≥ 90 % sur 50 actions ; puis vérifier que tu **pars** dans les 0,3 s après un début de casse en partie réelle.

### T16 — Lecture sonore

1. **Définition** : utiliser le son pour situer le tueur et comprendre ses actions sans le regarder.
2. **Mécanique** :
   - FACT [audit : SS] TR à paliers (32 m / 24 m à l'origine, beaucoup d'exceptions) ; musique de chase ; lullabies non affectées par Undetectable ; stinger de fin d'Undetectable ; le slow vault ne fait pas de notification de bruit fort ; fast vault bruyant ; vault de palette rapide bruyant, lent silencieux.
   - Autres sons utiles (HEURISTIC, non chiffrés) : pas et souffle du tueur, sons de pouvoir, casse de palette, coup raté (sifflement), corbeaux (rayon 4 m : FACT [audit : SS]).
   - Tes propres sons : grognements à l'état blessé (portée UNCERTAIN, ~12-16 m estimé), réduits par Iron Will (FACT [audit : SS]).
3. **Utile** : dès que regarder coûte trop (ligne droite, approche d'un fast vault) ; contre les tueurs furtifs ; pour savoir si le tueur casse (bruit) sans te retourner.
4. **Mauvais / piège** : Undetectable et tueurs furtifs (pas de TR) ; addons ou perks qui modifient le TR (lot 3) ; son mal localisé sans casque ; carte bruyante.
5. **Erreurs fréquentes** : confondre TR et musique de chase ; croire qu'absence de TR = tueur loin (erreur classique lot 4 contre Ghost Face) ; oublier que tes propres fast vaults te trahissent hors LOS.
6. **Contre-jeu du tueur** : Undetectable, marche silencieuse, feinter un départ (TR qui baisse puis revient).
7. **Exercice « Yeux fermés au TR »** :
   - Objectif : situer le tueur au son.
   - Méthode : en partie personnalisée, un ami tueur se place ; tu annonces sa direction et sa distance approximative sans le regarder.
   - Métrique : erreur d'angle et de distance.
   - Réussite : direction correcte à ±45° dans ≥ 80 % des essais.

### T17 — Fake vault, fake pallet (et fausse avance du tueur)

1. **Définitions** :
   - **Fake vault** : amorcer une approche de fenêtre comme pour vaulter puis continuer (ou faire demi-tour), pour faire engager le tueur du mauvais côté.
   - **Fake pallet** : se positionner près d'une palette levée comme pour la jeter, pour faire respecter le tueur (il ralentit) sans consommer la palette.
   - **Fausse avance** (côté tueur) : avancer vers la palette pour provoquer un drop, puis reculer ou contourner.
2. **Mécanique** : le tueur doit décider avant ton action (sinon il perd le cycle). Toute feinte crédible lui fait perdre du temps ou le met du mauvais côté. Le fake pallet exploite la fenêtre de stun (FACT [audit : SS] stun à ~50 % d'abaissement) : tant que tu **peux** le stun, il doit respecter.
3. **Utile quand** : le tueur a montré qu'il anticipe (il se place pour la sortie de vault) ; palette forte qu'on veut conserver ; en fin de partie quand chaque seconde compte.
4. **Mauvais quand** : contre un tueur qui ignore la feinte parce qu'il couvre les deux options (pouvoir, tile court) ; quand la feinte coûte une distance que tu n'as pas ; le fake vault te fait approcher en angle et rate le fast vault réel si tu te décides tard.
5. **Erreurs fréquentes** : répéter la même feinte ; feinter alors que tu étais en sécurité (tu perds 0,5-1 s pour rien, UNCERTAIN) ; rester trop longtemps à la palette (fake pallet) et prendre un coup quand il pousse.
6. **Contre-jeu du tueur** : pousser franchement (si tu ne jettes pas, coup) ; attendre hors de la zone de stun (FACT : il peut sortir de la zone au bord) ; alterner respect/pression.
7. **Exercice « Feinte avec plan B »** :
   - Objectif : feinter sans jamais te mettre en danger.
   - Méthode : n'autoriser une feinte que si l'option réelle (vault ou drop) reste possible après la feinte ; noter chaque feinte.
   - Métrique : feintes réussies (tueur mal placé) / coups pris sur feinte.
   - Réussite : ≥ 50 % de feintes utiles, 0 coup pris sur feinte sur 10 parties.

### T18 — Distance management

1. **Définition** : maintenir en permanence une distance suffisante par rapport à **tous** les trajets possibles du tueur, et savoir quand dépenser cette distance.
2. **Mécanique** : la distance est convertible en temps (section 2 : 1 m ≈ 1,67 s vs 115 %, 2,5 s vs 110 % sans Bloodlust). Elle se gagne par les ressources (vault, stun, casse), par les erreurs du tueur (fente ratée : 1,5 s de cooldown) et par le coup reçu (boost 1,8 s). Elle se perd par la ligne droite, la Bloodlust, les virages larges, les feintes ratées, les slow/medium vaults.
3. **Utile** : toujours ; la question est « combien de mètres d'avance me faut-il pour que ce tile soit sûr ? ». Heuristique : une boucle est sûre si l'avance est supérieure à la différence entre ton trajet et le sien plus la portée de sa fente (UNCERTAIN, ~2-2,5 m).
4. **Mauvais / piège** : « trop » de distance peut faire lâcher la chase par le tueur (bon pour l'équipe s'il perd du temps à chercher, mauvais s'il trouve un allié plus faible) ; la distance brute est dévaluée contre les tueurs à mobilité.
5. **Erreurs fréquentes** : entrer dans un tile sans avance (tu n'as pas le temps de choisir le côté) ; dépenser une ressource pour gagner une distance inutile ; ignorer la Bloodlust.
6. **Contre-jeu du tueur** : couper les angles, zoner, attaques à distance, Haste.
7. **Exercice « Budget en mètres »** :
   - Objectif : estimer l'avance à chaque arrivée sur un tile.
   - Méthode : annoncer « +X m » en arrivant ; comparer à la VOD.
   - Métrique : erreur moyenne d'estimation.
   - Réussite : erreur ≤ 2 m sur 20 arrivées.

### T19 — Resource management (gestion des ressources de chase)

1. **Définition** : dépenser au bon moment les ressources limitées : palettes, fenêtres (3 vaults avant blocage), états de santé, perk d'épuisement, objets, protections de décrochage.
2. **Mécanique** :
   - FACT [audit : SS] palettes définitives une fois cassées, partagées avec l'équipe ; fenêtre bloquée 30 s pour toi après le 3e vault ; Exhausted ne récupère pas en courant ; protections de décrochage 10 s (Endurance + 10 % Haste + Elusive, FACT [audit : VP]).
   - FACT [audit : VP] pas de DR sur le nombre de palettes ou les blocages (9.6.0).
   - La valeur d'une ressource dépend de ce qui reste : la dernière palette d'une zone vaut plus que la première (§14.3).
3. **Utile** : penser en « budget de chase » : combien de secondes chaque ressource peut acheter, et lesquelles l'équipe utilisera ensuite.
4. **Mauvais / piège** : sur-économiser (mourir avec 4 palettes debout autour de soi n'a rien rapporté) ; sous-économiser en début de partie (les zones mortes de fin de partie coûtent des crochets).
5. **Erreurs fréquentes** : utiliser la perk d'épuisement pour atteindre un tile faible ; consommer les palettes du côté de la carte où l'équipe aura besoin de jouer l'endgame ; ne pas savoir qu'un allié a déjà consommé une palette (SoloQ).
6. **Contre-jeu du tueur** : forcer l'utilisation des ressources (pression tôt, casse systématique des palettes fortes), puis ramener la chase dans la zone vidée (resource denial, §14.5).
7. **Exercice « Inventaire »** :
   - Objectif : connaître les ressources de la zone.
   - Méthode : à chaque début de chase, compter les palettes debout visibles dans ~30 m ; en fin de partie, compter combien il en restait autour de chaque mort.
   - Métrique : palettes restantes au moment d'un down ; palettes jetées sans menace.
   - Réussite : moins de palettes « inutilisées » autour des downs au fil des semaines (tendance), ≤ 1 palette gratuite par partie.

### T20 — Collision, body block (vue chase)

1. **Définition** : le tueur et les survivants ont une collision entre eux et avec le décor ; un corps peut bloquer un passage (porte, sortie de fenêtre, couloir).
2. **Mécanique** : l'existence de la collision est une observation de jeu constante mais **non chiffrée par l'audit** (taille des capsules : UNCERTAIN). Dans une chase : le tueur peut te bloquer dans un coin, une sortie de fenêtre ou une porte étroite ; un **allié** peut te bloquer (ou tu peux le bloquer) involontairement ; le décor (petites aspérités, objets au sol) accroche.
3. **Utile (survivant)** : le body block volontaire pour un allié blessé (sujet du lot 5 : attention au coût d'un coup reçu) ; savoir où le décor accroche pour éviter ces zones.
4. **Mauvais / piège** : entrer dans un cul-de-sac (petite pièce, coin de mur) où le tueur peut te « body block » ; boucler près d'un allié (collision, et 2 cibles pour le tueur).
5. **Erreurs fréquentes** : courir vers un allié pendant une chase ; fuir dans un coin de bâtiment sans deuxième sortie ; vaulter vers un espace où le tueur peut se tenir devant la sortie.
6. **Contre-jeu du tueur** : body block à la sortie d'une fenêtre ou dans un couloir ; forcer le survivant contre le décor ; frapper à travers un body blocker s'il l'accepte (le seed conseille au tueur de frapper le bloqueur seulement si cela le rapproche d'un crochet : SITUATIONAL).
7. **Exercice « Cartographie des pièges à collision »** :
   - Objectif : connaître les endroits qui accrochent sur les tiles fréquents.
   - Méthode : partie personnalisée, parcourir chaque tile fréquent en collant les murs ; noter les points d'accroche.
   - Métrique : points d'accroche identifiés par tile.
   - Réussite : liste écrite pour les 10 tiles les plus fréquents (donnée utile au lot 7).

### T21 — Hitbox, latence, validation serveur (documenté vs rumeur)

1. **Définition** : pourquoi un coup peut toucher alors que tu « étais loin » à l'écran, et ce qui est réellement connu.
2. **Ce qui est documenté** :
   - FACT [audit : VP] « Hit Validation » depuis août 2020 : si la connexion du tueur est mauvaise, le serveur évalue le coup et le **rejette** si tueur et survivant étaient trop éloignés. **Avec une bonne connexion, le coup reste décidé côté client du tueur.**
   - [audit : CO] analyse technique non officielle (2022) : le client du tueur calcule le chevauchement hitbox/hurtbox ; la validation générale n'agirait qu'au-delà de ~300 ms (seuil **non confirmé**) ; validation événementielle pour Dead Hard et les stuns de palette ; les deux latences cumulées favorisent le tueur ; le tout-serveur aurait été testé puis écarté.
   - UNCERTAIN : forme et taille des hitbox/hurtbox (aucune documentation officielle).
3. **Conséquence pratique (HEURISTIC)** :
   - ce que le tueur voit de toi est légèrement en retard sur ce que tu vois ; un coup « derrière la fenêtre » ou « après la palette » peut être valide de son point de vue ;
   - donc **ajoute une marge** : quitte la palette ou la fenêtre un peu plus tôt, ne compte pas sur des esquives au dernier dixième ;
   - pour les stuns de palette et Dead Hard, une validation existe (selon l'analyse communautaire) : un stun vu sur ton écran peut ne pas s'appliquer.
4. **Rumeurs à ne pas traiter comme faits** :
   - « certains survivants ont une hitbox plus grande » : aucune documentation (UNCERTAIN) ; le choix du survivant est présenté comme sans effet mécanique ;
   - « tous les coups sont vérifiés par le serveur » : faux avec une bonne connexion du tueur (VP) ;
   - « le seuil est de 300 ms » : non confirmé officiellement ;
   - « tel coup était impossible » : sans enregistrement des deux points de vue, impossible à trancher.
5. **Erreurs fréquentes** : attribuer à la latence des coups dus à la Bloodlust, à un medium vault ou à une fente mal évaluée ; jouer « au pixel » (tu perds contre la latence cumulée).
6. **Contre-jeu du tueur** : aucun à « exploiter » volontairement ; un tueur qui frappe tôt au bout de sa fente profite mécaniquement de la latence.
7. **Exercice « Autopsie de coup »** :
   - Objectif : distinguer latence et erreur.
   - Méthode : pour 20 coups « injustes » en VOD, vérifier : palier de Bloodlust, type de vault, distance réelle au début de la fente.
   - Métrique : % de coups expliqués par une cause mécanique hors latence.
   - Réussite : savoir classer chaque cas ; si la majorité s'explique sans latence, travailler la marge (T18) plutôt que blâmer le réseau.

### T22 — Le « 360 » (correction d'un conseil absolu du seed)

1. **Définition** : pivoter autour du tueur au moment de sa fente pour la faire rater.
2. **Mécanique** : pendant la fente, le tueur tourne moins vite qu'il n'avance (vitesse ~6,9 m/s : FACT [audit : SS]) ; un changement d'angle brusque à courte distance peut sortir de sa trajectoire. Si le coup rate : cooldown 1,5 s (FACT [audit : SS]) ≈ jusqu'à +6 m (CALC). Vitesse de rotation / sensibilité de la caméra du tueur : UNCERTAIN (dépend des réglages et de la plateforme).
3. **Utile** : dernier recours en terrain ouvert contre un M1 à courte distance quand aucune ressource n'est atteignable (SITUATIONAL).
4. **Mauvais** : contre les attaques de pouvoir à distance ou à zone ; contre un tueur qui ne lance pas sa fente (il attend ta rotation) ; avec latence élevée ; quand tu peux atteindre un tile. L'audit relève que « 360 utile » dans le seed est **trop absolu** (A-160).
5. **Erreurs fréquentes** : 360 trop tôt (le tueur n'a pas engagé) ; 360 comme réflexe au lieu de courir vers un tile ; 360 qui ramène vers le tueur (perte de distance si raté).
6. **Contre-jeu du tueur** : retenir la fente, viser ta position de sortie, frapper sans fente complète.
7. **Exercice** : en partie personnalisée avec un ami, 20 tentatives ; métrique = % de rates provoqués **et** distance perdue en cas d'échec ; réussite = ne l'utiliser en partie que si ton taux mesuré dépasse nettement 50 % contre ce type de tueur (HEURISTIC).
