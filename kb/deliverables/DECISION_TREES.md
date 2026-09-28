# DECISION TREES — arbres de décision du survivant (livrable §51-7)

> **Version : LIVE 10.1.2a (hotfix serveur du 17/09/2026) — état au 27/09/2026.**
> **Statut : consolidé depuis des brouillons audités sans web ; heuristiques non validées par sources expertes.**

- **Aucun contenu factuel nouveau** : ce document réorganise `kb/research/batch11_training.md` (§2), `kb/research/batch9_macro.md` (§2, §6, §7, §9) et `kb/research/batch6_chase_tech.md` (T05, T18, T23, §4.3, §4.14, §5), **après** les corrections des audits `kb/audit/pass14_lot11_training.md`, `pass14_lot9_macro.md` et `pass14_lot6_chase.md`. Les points que ces audits déclarent **non corrigeables sans source** sont regroupés en §11 (Limites).
- **Mode 1v4 uniquement.** Le 2v8 (13 gens / 8 requis) n'est pas couvert : ne rien y transposer.
- **PTB 10.2.0 ≠ LIVE** (Survivor Intent System, refonte Abandon/Surrender, 58 perks) : rien ici n'en dépend ; les arbres qu'il pourrait changer sont signalés « à revoir après 10.2.0 ».
- Aucune VOD, aucun coach, aucune statistique n'a été consulté. Les seules valeurs présentées comme FACT viennent de l'audit phase 0 (`kb/seed/audit_phase0.txt`) avec sa confiance.

---

## 0. Mode d'emploi

### 0.1 Étiquettes

| Étiquette | Sens |
|---|---|
| **FACT (VP / VMS / SS)** | Valeur de l'audit phase 0 : VERIFIED_PRIMARY / VERIFIED_MULTI_SOURCE / STRONG_SECONDARY |
| **CALC** | Arithmétique sur des FACT (hypothèses simplificatrices : ligne droite, vitesses constantes) |
| **HEURISTIC** | Règle pratique de joueur, non sourcée, jamais absolue — **toutes les feuilles sont HEURISTIC sauf mention** |
| **SITUATIONAL** | S'inverse selon le tueur, la carte, l'état de partie |
| **HYPOTHESIS** | Modèle plausible non testé |
| **EXPERT OPINION (non sourcée)** | Jugement stratégique repris des brouillons, attribué à personne |
| **UNCERTAIN / NV** | Valeur non vérifiée / mécanique connue mais absente de l'audit (à vérifier en jeu) |
| `[SoloQ]` / `[SWF]` | Branche propre à un mode ; sans préfixe = valable dans les deux |

### 0.2 Format homogène de chaque arbre

1. **Entrée** (situation déclenchante) et **source**.
2. **Squelette ASCII** : les questions dans l'ordre où elles changent la décision ; chaque feuille porte un code `[XXX-n]`.
3. **Table des feuilles** : une ligne par feuille = *action · pourquoi · risque · alternative*.
4. **SoloQ vs SWF** quand les deux modes diffèrent ; **contre-jeu du tueur** ; **renvois**.

### 0.3 Trois règles d'usage (HEURISTIC, issues des audits)

- **Un arbre ordonne des questions, il ne donne pas « la » réponse.** La réponse n'est jamais « toujours drop » ni « toujours greed ».
- **Version en jeu vs version de revue** : en pleine chase, ne traiter que les 3-4 premières questions ; les suivantes se **préparent avant** (état d'équipe, palettes restantes, perks suspectées) et se **vérifient en revue**. Une décision moyenne prise à temps vaut souvent mieux qu'une bonne décision 10 s trop tard (lot 9 §5.8).
- **Règle de conflit** : si deux questions pointent vers des feuilles opposées, **la question la plus haute choisit la feuille, les suivantes règlent le moment** (convention, pas une règle démontrée — lot 11 §2.1, P14-04).

### 0.4 Constantes utilisées par les arbres

| Constante | Valeur LIVE | Étiquette |
|---|---|---|
| Gen | 90 charges, 90 s solo ; coop 2/3/4 → ~52,9 / ~42,9 / ~40,9 s | FACT VMS / SS |
| Skill check raté / Great | −10 % + 3 s sans progression / +1 % | FACT SS |
| Coup de pied (kick) | action 1,8 s ; −5 % puis −0,25 c/s ; réparer **5 %** pour stopper ; 8 events max ; pointes dès le 4e | FACT VMS |
| Phase de crochet | **70 s** ; 3e accrochage = mort | FACT VP |
| Protections de décrochage | Endurance + 10 % Haste 10 s + Elusive 10 s ; **Elusive absente une fois les portes alimentées** ; Endurance perdue sur action voyante | FACT VP (10.1.0) / SS |
| Anti-camp | rayon **16 m** ; poids 4 m ×2,5 / 10 m ×1 / 15 m ×0,375 / 16 m ×0 ; ×2 après 10 s, ×4 après 20 s ; grâce 7 s par accrochage ; ralenti par les survivants < 16 m ; **coupé portes alimentées** ; **taux de base inconnu** (CONFLICT-003) | FACT VMS / SS / VP (9.3.0) / UNCERTAIN |
| Fin à 2 survivants | tous les survivants restants accrochés = sacrifice ; 2 checks de lutte manqués = sacrifice ; Mori si l'un est en Struggle et l'autre au sol | FACT VP / SS |
| Soin | 16 s par état ; Mangled +25 % ; Deep Wound 20 s, mending 10 s seul / 6 s par un allié ; soigneurs max 2 (wiki) ou 3 (seed) : CONFLICT-001 | FACT SS / VP / UNCERTAIN |
| Au sol | récupération auto jusqu'à 95 % en 30,4 s (« à l'arrêt » selon le wiki) ; bleed-out 240 s ; pas d'auto-relève basekit | FACT VMS / SS / VP |
| Vitesses | survivant 4,0 m/s ; tueurs 4,6 / 4,4 m/s (Nurse 3,85 ; Blight 4,4 depuis 9.6.0) ; portage 3,68 m/s **UNCERTAIN** | FACT VMS / VP / SS ; portage UNCERTAIN |
| Fenêtres | fast 0,5 s (≥ 2,5 m de course droite) / medium 0,9 / slow 1,5 ; tueur 1,7 s ; bloquée 30 s **pour toi** après ton 3e vault | FACT SS |
| Palettes | stun 2 s (palette abaissée à ~50 %) ; casse **2,34 s** ; Enduring −40/45/50 % ; Bamboozle bloque une fenêtre 8/12/16 s pour tous | FACT VMS (2,34 s) / SS |
| Bloodlust | +0,2 / +0,4 / +0,6 m/s à 15 / 25 / 35 s ; perdue sur casse, coup, **usage des pouvoirs listés par le wiki** ; effet d'un stun : non documenté | FACT VMS / SS / UNCERTAIN |
| Coup | boost 1,8 s ; cooldown tueur 2,7 s (réussi) / 1,5 s (raté) ; portée de fente ~2 m de gain / ~6 m totale (désaccord) | FACT VP / VMS / SS ; fente UNCERTAIN |
| Totems | purification 14 s ; Boon 14 s (28 s sur un Hex) | FACT SS |
| Portes / EGC | porte 20 s, progression conservée ; EGC 120 s, moitié de vitesse si un survivant est au sol/accroché (max 4 min), jamais arrêté | FACT SS |
| Trappe | ouverte à 1 survivant ; aura visible de lui seul ; clé 2,5 s ; fermée par le tueur → EGC | FACT SS |
| Match Details (9.6.0) | loadouts des coéquipiers visibles ; tueur révélé dès qu'un survivant entre en poursuite ou perd un état ; loadout du tueur caché jusqu'à la fin | FACT VP |
| Économie (CALC) | 1 s de chase ≈ 1/30 de gen si 3 alliés réparent chacun un gen ; soin altruiste = 32 s-surv ≈ 0,36 gen ; casse ≈ +9,4 m ; stun ≈ +8 m | CALC |

---

## 1. PALETTE (T-Q01)

**Entrée** : tu es poursuivi et une palette debout est à ta portée. **Sources** : lot 11 §2.1 ; lot 6 T05, §4.3, §4.14, situations 1-2.

**Version en jeu** : Q1 → Q2 → Q3 → Q5. Q6-Q10 = ajusteurs préparés avant la chase (table 1.3).

### 1.1 Squelette

```
PALETTE
│
├─ Q1 Atteindras-tu la palette avant d'être à portée de fente ?
│   ├─ NON (il est sur toi) ─────────────────────────────────► [PAL-0]  PRENDRE LE COUP
│   │     sauf palette à 1-2 pas ET un coup = mise au sol critique ► [PAL-0b] POSE IMMÉDIATE
│   ├─ DE JUSTESSE ──► Q2 (GREED exclu)
│   └─ LARGEMENT ────► Q2
│
├─ Q2 Le tueur peut-il ignorer / annuler la palette MAINTENANT ?
│   ├─ Casse instantanée, pouvoir DISPONIBLE ─────────────────► [PAL-1]  PRE-DROP tôt / QUITTER
│   │     (pouvoir en recharge, Fury inactive → traiter comme M1 : Q3)
│   ├─ Tueur à distance avec LOS sur toi ─────────────────────► [PAL-2]  FENÊTRE cachée / QUITTER vers murs hauts
│   ├─ Mobilité qui franchit / contourne vite (Nurse, Blight…) ► [PAL-3]  LOS + imprévisibilité
│   ├─ Anti-loop bientôt prêt ────────────────────────────────► [PAL-4]  PRE-DROP avant son retour
│   └─ M1 / pouvoir indisponible ──► Q3
│
├─ Q3 Combien te coûte un coup ?
│   ├─ Sain, 0-1 crochet ──────────► tout reste ouvert ──► Q4
│   ├─ Endurance (décroché < 10 s) ► marge d'un coup (Deep Wound, FACT) ──► Q4
│   ├─ Blessé, 0-1 crochet ────────► GREED exclu, TENIR prudent ──► Q4
│   ├─ Sain, 2 crochets ───────────► TENIR prudent ──► Q4
│   └─ Blessé 2 crochets / Exposed / Deep Wound ──────────────► [PAL-5]  PRE-DROP
│         (sauf Q5 : tile plus forte atteignable → [PAL-10] sur événement)
│
├─ Q4 Que vaut CETTE ressource ?
│   ├─ Fenêtre non bloquée pour toi ──────────────────────────► [PAL-6]  JOUER LA FENÊTRE d'abord
│   ├─ Palette « forte » (il ne te touche pas en tournant) ───► [PAL-7]  TENIR
│   ├─ Palette « mindgame » (il peut te lire / couper) ───────► [PAL-8]  TENIR + départ tôt (PRE-DROP si Q3 serré)
│   └─ Palette faible / filler ───────────────────────────────► [PAL-9]  PRE-DROP ou QUITTER si la suivante est proche
│
└─ Q5 Loop suivant ?
    ├─ Oui, fort et atteignable ──────────────────────────────► [PAL-10] QUITTER après un événement
    ├─ Oui, mais faible / épuisé ─────────────────────────────► [PAL-11] RESTER : TENIR plus longtemps ici
    └─ Non (dead zone derrière) ──────────────────────────────► [PAL-12] TENIR ici, PAS de pre-drop trop tôt
```

### 1.2 Feuilles

| Feuille | Action | Pourquoi | Risque | Alternative |
|---|---|---|---|---|
| **PAL-0** | Prendre le coup (hors arbre) | La palette n'est plus une option ; boost 1,8 s + cooldown 2,7 s (FACT) donnent le meilleur départ | Perdre un état ; blessé → au sol | Viser une ressource avec le boost ([TIL-6]) |
| **PAL-0b** | Poser immédiatement (stun de réaction) | Palette à 1-2 pas et coup critique : seule chance | Stun raté (fenêtre à ~50 % d'abaissement, FACT) ; latence | PAL-0 |
| **PAL-1** | PRE-DROP tôt **si** cela force un détour ou l'usage du pouvoir au mauvais moment ; sinon QUITTER / LOS | Une palette debout ne se « respecte » pas contre une casse instantanée | Le pre-drop ne lui coûte presque rien (lot 6 sit. 1) | Stun si possible, ou changer de zone. **Exception Blight** : casser en Lethal Rush lui coûte ses tokens (9.6.0, FACT VP) → pre-drop rentable. Liste des casses instantanées à reconfirmer (Knight 10.1.1) |
| **PAL-2** | Fenêtre à réception cachée ou QUITTER vers murs hauts | La LOS est la vraie ressource ; une palette posée ne coupe pas la LOS (UNCERTAIN, lot 4) | Réception prévisible punie par un tir | Houndmaster : palette qui arrêterait le chien (rapporté, non vérifié) |
| **PAL-3** | Jouer LOS et imprévisibilité ; PRE-DROP rarement utile | Mobilité → la palette vaut peu | Brûler une palette pour rien | Tiles à murs hauts |
| **PAL-4** | PRE-DROP avant le retour du pouvoir | La palette ne vaudra plus rien une fois le pouvoir prêt | Moment de retour UNCERTAIN selon le tueur | QUITTER |
| **PAL-5** | PRE-DROP (le plus tard possible sans risque ; stun-drop si engagement) | Un coup = mise au sol, voire mort ; la palette ne vaut plus rien si tu tombes | Consommer une palette « tôt » | QUITTER sur événement si tile plus forte atteignable |
| **PAL-6** | Fenêtre d'abord (fast vault 0,5 s vs 1,7 s tueur, FACT) | Temps gagné sans consommer la palette | Blocage 30 s après ton 3e vault ; Bamboozle ; arrivée en angle (medium 0,9 s) | Palette (TENIR / PRE-DROP) |
| **PAL-7** | TENIR : tourner palette debout, poser si le tueur s'engage | Maximum de temps par palette ; stun 2 s + casse possibles | Feinte, latence (jouer avec marge), Bloodlust | PRE-DROP |
| **PAL-8** | TENIR avec départ tôt | Le tueur peut lire le côté | Coup sur mindgame perdu | PRE-DROP si Q3 serré |
| **PAL-9** | PRE-DROP (pour la distance) ou QUITTER | Faible valeur future ; convertit en ~9,4 m (CALC) | Il contourne au lieu de casser | Vault puis quitter |
| **PAL-10** | QUITTER sur casse / stun / vault / cooldown | Seul moment où la traversée ne coûte rien → arbre 2 | Départ sans événement = coup dans le dos | PRE-DROP puis quitter sur la casse |
| **PAL-11** | Rester et TENIR plus longtemps | La suite ne vaut pas mieux | Bloodlust qui monte | Quitter au premier événement |
| **PAL-12** | Maximiser le temps ICI, ne pas pre-drop trop tôt | Après cette palette il n'y a plus rien | Tueur qui finit par lire | Rendre le coup le plus tardif possible |
| **GREED** (via Q3-Q4) | Un cycle de plus palette debout | Palette gardée ; le tueur tourne | **Pire résultat** : coup avec palette debout (état perdu + ressource inutilisée) | TENIR (pose au 1er engagement). Réservé à : sain/Endurance, grande avance, tueur M1 visible, équipe sur les gens, palettes rares |

### 1.3 Ajusteurs Q6-Q10 (à préparer avant la chase, vérifier en revue)

| Question | Réponse | Effet sur la feuille |
|---|---|---|
| Q6 Bloodlust | < 15 s | aucune pression |
| | 15-35 s | pose + casse remet à zéro (FACT) → PRE-DROP / stun plus rentables. Contre-jeu : il contourne pour garder la Bloodlust → la palette a quand même coûté un détour |
| | ≥ 35 s (+0,6 m/s) | sur tile moyenne/faible : poser ou quitter **maintenant** (lot 6 sit. 2) |
| Q7 Équipe | 3 alliés sur des gens séparés | chaque seconde ≈ 1/30 gen : allonger (TENIR, FENÊTRE), accepter de consommer |
| | Alliés au crochet / en soin | la chase rapporte peu : économiser les palettes, durer par le mouvement |
| | Gen à 99 % ou portes proches | quelques secondes suffisent : PRE-DROP accepté |
| | Zone du futur 3-gen / dernières palettes | garder : QUITTER / FENÊTRE en priorité |
| Q8 Ressources | beaucoup / peu | PRE-DROP moins coûteux / chaque palette compte, perk d'Exhaustion pour quitter |
| Q9 Perks suspectées | Enduring | stun réduit de 40-50 % → PRE-DROP > stun tardif |
| | Bamboozle | fenêtre moins fiable → palette / QUITTER |
| Q10 Phase | portes alimentées / EGC | PRE-DROP généreux, tout pour sortir |
| | dernier survivant | pas de « plus tard » pour l'équipe |
| | début de partie | la zone servira encore : éviter le pre-drop gratuit |

### 1.4 Cas combinés fréquents (HEURISTIC)

| # | Contexte | Feuille | Pourquoi |
|---|---|---|---|
| 1 | Sain, 0 crochet, début, tueur 4,6 M1, shack avec fenêtre libre | FENÊTRE puis TENIR | Temps sans consommer ; la zone servira encore |
| 2 | Blessé 2 crochets, M1, palette moyenne, tile suivante lointaine | PRE-DROP | Un coup = mort probable |
| 3 | Sain, Demogorgon avec Shred probablement prêt | PRE-DROP tôt ou QUITTER | Force détour/pouvoir ; Shred en recharge → cas M1 |
| 4 | Huntress hachette armée, LOS, tile basse | QUITTER vers murs hauts | La palette ne bloque pas un tir |
| 5 | Sain, 30 s de chase, palier 2, tile moyenne, 3 alliés sur gens | PRE-DROP (stun si engagement) | Reset **s'il casse** + ~15,6 s de rattrapage (CALC, plafond) |
| 6 | Sain, alliés au crochet/en soin, zone = 3 derniers gens | QUITTER / hold W | Palettes plus précieuses pendant le 3-gen |
| 7 | Endurance (décroché depuis 3 s), palette faible | PRE-DROP ou QUITTER | Un coup = Deep Wound : ne pas « tanker » sans but |
| 8 | Portes alimentées, blessé 1 crochet près d'une porte | PRE-DROP généreux | Chaque seconde vers la porte compte |
| 9 | Enduring suspecté | PRE-DROP > TENIR pour stun | La casse reste 2,34 s ; le stun perd 40-50 % |
| 10 | Tueur invisible (Undetectable, pas de red stain) | Blessé : PRE-DROP ; sain : FENÊTRE / QUITTER, **pas de GREED** | Sans info, TENIR et GREED s'effondrent |
| 11 | Blessé, M1 115 % à ~6 m, palette du shack, jungle gym à ~25 m (lot 6 sit. 1) | PRE-DROP puis partir pendant la casse | ≈ 18 s gagnées (CALC) ; hold W direct = coup avant d'arriver |
| 12 | Sain, 38 s de chase (+0,6), M1 à ~5 m, palette de filler (lot 6 sit. 2) | Stun ou drop tout de suite, puis tile suivante | Reset de Bloodlust ; la palette de filler vaut peu (sauf dernière palette d'une zone d'endgame) |

### 1.5 SoloQ vs SWF

| | [SoloQ] | [SWF] |
|---|---|---|
| Alliés sur gens (`n`) | Visible seulement au HUD (contenu UNCERTAIN) : supposer `n` plus bas → **moins de greed**, pas plus de risque. Modèle lot 6 (HYPOTHESIS) : seuil de greed ≈ 0,28 au lieu de 0,37 sain, ≈ 0,11 au lieu de 0,17 blessé | Le poursuivi sait combien réparent et peut demander que personne ne vienne « aider » |
| Palette suivante | Peut avoir été utilisée par un allié → pre-drop « en comptant sur la suivante » plus risqué | État des palettes annoncé |
| Tempo | Jouer la chase comme si personne ne venait aider ; la tirer loin des gens visibles au HUD | « Je tiens encore 20 s, finissez le gen » |

**Modèle d'aide à la revue (HYPOTHESIS, jamais en partie)** : greed d'un cycle favorable si `p < T_loop / (T_loop + C_hit)`. Aucun paramètre n'est mesuré ; seul l'**ordre** est robuste : blessé + tile faible + peu d'alliés sur gens → presque aucun risque acceptable ; sain + tile fort + 3 alliés sur gens → risque modéré acceptable (lot 6 §4.3).

**Contre-jeu du tueur** : alterner respect et non-respect ; casser tôt pour interdire le greed ; zoner vers la palette cassée ; contourner une palette pré-jetée pour garder la Bloodlust.

---

## 2. QUITTER LA TILE (T-Q01b)

**Entrée** : « si je reste un cycle de plus, peut-il me toucher ? ». **Sources** : lot 11 §2.2 ; lot 6 T18, T11, §2.3.

### 2.1 Squelette

```
QUITTER LA TILE ?
│
├─ R1 La tile a-t-elle encore une ressource que CE tueur doit respecter ?
│   ├─ Non (palette cassée ET fenêtre bloquée pour toi / inutile contre ce pouvoir) ──► R3
│   └─ Oui ──► R2
│
├─ R2 Le tueur a-t-il trouvé la solution ?
│   (poste au centre, coupe à chaque fois, Bloodlust ≥ 25-35 s, pouvoir prêt qui annule la tile)
│   ├─ Oui ──► R3
│   └─ Non ──────────────────────────────────────────────────► [TIL-1] RESTER un cycle, reposer R2
│
├─ R3 Un événement te donne-t-il de l'avance MAINTENANT ?
│   ├─ Casse (2,34 s ≈ +9,4 m) · Stun (2 s ≈ +8 m) · Vault du tueur (1,7 s : ≤ 6,8 m bruts,
│   │   ~4,8 m nets si tu l'as fast-vaultée) · Cooldown après coup · Pouvoir raté (UNCERTAIN)
│   │   · Perte de LOS (tile à murs hauts) ────────────────────► [TIL-2] QUITTER MAINTENANT
│   ├─ Tu viens d'être touché (boost 1,8 s + cooldown 2,7 s) ──► [TIL-6] QUITTER tout de suite,
│   │                                                               sans vaulter immédiatement
│   └─ Aucun événement ──► R4
│
├─ R4 Peux-tu en créer un ?
│   ├─ Palette restante ──────────────────────────────────────► [TIL-3] PRE-DROP puis partir sur la casse
│   ├─ Fenêtre qui l'oblige à contourner ─────────────────────► [TIL-4] VAULT puis partir
│   ├─ Perk d'Exhaustion menant à une ressource ──────────────► [TIL-5] EXHAUSTION vers la ressource
│   └─ Rien ──► R5
│
├─ R5 Où aller ?  avance à l'arrivée ≈ g − Δv·t  (t = d / 4,0 ; Δv = 0,6 ou 0,4 m/s + Bloodlust)
│   Trajet « sûr » si l'avance à l'arrivée reste > portée de fente (UNCERTAIN).
│   Ex. après une casse (g ≈ 9,4 m), tueur 4,6 sans Bloodlust : ~23 m (portée 6 m) à ~49 m (portée 2 m)
│   → ordre de grandeur « ~20 à ~50 m en ligne droite » ; en cas de doute, la tile la plus proche.
│   ├─ Tile suivante atteignable avec marge ──────────────────► [TIL-2] QUITTER vers elle
│   ├─ Seulement une tile faible ─────────────────────────────► [TIL-7] QUITTER + PRE-DROP là-bas, ou 1 cycle ici
│   └─ Rien d'atteignable (dead zone) ────────────────────────► [TIL-8] RESTER faute de mieux
│
└─ R6 Filtre équipe : ta sortie mène-t-elle le tueur vers gens actifs / crochet / blessé ?
    ├─ Oui ───────────────────────────────────────────────────► [TIL-9] AUTRE DIRECTION, même un peu moins bonne
    └─ Non ──► go
```

### 2.2 Feuilles

| Feuille | Action | Pourquoi | Risque | Alternative |
|---|---|---|---|---|
| **TIL-1** | Rester un cycle de plus | La tile tient ; partir sans événement = coup dans le dos | Bloodlust qui monte | Préparer la sortie en regardant la route pendant le cycle |
| **TIL-2** | Quitter maintenant, sur l'événement | Seule traversée « gratuite » | Événement fantôme : s'il n'est pas en animation de casse, il n'y a pas d'événement | TIL-3 |
| **TIL-3** | Pre-drop puis partir pendant la casse | Transforme une palette faible en ~9 m d'avance (CALC) | Il contourne (tile courte) | TIL-4 |
| **TIL-4** | Vault qui force un contournement, puis partir | Écart gagné sans palette | Blocage au 3e vault ; ranged sur la réception | TIL-3 |
| **TIL-5** | Perk d'Exhaustion **vers une ressource** | Distance instantanée | Brûlée vers le vide ; valeurs de perks non revérifiées (lot 6 P29) | Garder la perk pour la tile suivante |
| **TIL-6** | Prendre le coup (sain) puis partir | Boost + cooldown = meilleur départ possible | Blessé, ce n'est plus une option mais une mise au sol ; annulation du boost par un vault immédiat : non documentée | Aucune si tout le reste est épuisé |
| **TIL-7** | Partir vers la tile faible et y pre-drop, ou rester 1 cycle | Meilleur de deux options faibles | Arriver sans marge | TIL-8 |
| **TIL-8** | Jouer le temps ici (LOS, obstacles, 360 contre M1 en dernier recours) | 5-10 s gagnées valent plus qu'une fuite perdue d'avance | 360 raté = distance perdue (lot 6 T22) | Rendre le coup le plus tardif possible |
| **TIL-9** | Choisir une autre direction | Ne pas coûter un 2e réparateur à l'équipe | Route un peu moins bonne | — |

**Condition de boucle sûre (CALC, lot 6 T18 corrigé)** : sûre si `trajet du tueur − portée de fente > ton trajet × v_tueur / 4,0` (×1,15 contre un 4,6 ; ×1,10 contre un 4,4 ; davantage avec la Bloodlust). Les trajets ne se mesurent pas au mètre près en jeu : **garder une marge**, ne pas calculer.

| | [SoloQ] | [SWF] |
|---|---|---|
| Filtre équipe (R6) | Positions des alliés seulement via HUD / auras (UNCERTAIN) : éviter les gens visibles occupés | Annoncer la direction (« je traîne vers killer shack ») ; les alliés s'écartent |

---

## 3. CROCHET / SAUVETAGE (T-Q02)

**Entrée** : un allié vient d'être accroché. **Sources** : lot 9 §2.5-2.7, §3.3, §4.2, §7.1, §9.A ; lot 11 §2.3, E-I04, E-T01.

### 3.1 Squelette

```
HOOK — Le tueur quitte-t-il la zone (> 16 m ET s'éloigne, avec un signe d'engagement ailleurs) ?
│
├─ OUI, il part
│   ├─ Qui y va ?
│   │   [SoloQ] quelqu'un va déjà vers le crochet (portraits, Kindred) ?
│   │       ├─ Oui, plus proche que moi ──────────────────────► [CRO-1] RESTER sur mon gen
│   │       ├─ Oui, mais plus loin ───────────────────────────► [CRO-2] Y ALLER si je suis sain, sinon laisser
│   │       └─ Aucun signe après un délai adapté ─────────────► [CRO-3] Y ALLER + revérifier en route
│   │   [SWF] ────────────────────────────────────────────────► [CRO-4] Shot-caller désigne UN sauveteur (ETA)
│   ├─ Trajet < temps restant de la phase (≤ 70 s) ?
│   │   ├─ Oui ───────────────────────────────────────────────► [CRO-5] DÉCROCHER dès l'arrivée si TR absent
│   │   └─ Non ───────────────────────────────────────────────► [CRO-6] LAISSER à un autre / accepter la phase 2
│   └─ Après le décrochage ───────────────────────────────────► [CRO-7] PROTOCOLE APRÈS DÉCROCHAGE
│
└─ NON, il reste — à quelle distance du crochet ?
    ├─ < ~10 m, immobile (face camp) ─────────────────────────► [CRO-8] NE PAS ENTRER dans les 16 m ; gens à fond
    │     EXCEPTION portes alimentées : anti-camp coupé → arbre 8
    ├─ 10-16 m, en mouvement (zone grise) ────────────────────► [CRO-9] TRAITER COMME UN PROXY (branche suivante)
    └─ 16-30 m (proxy camp) : l'anti-camp ne remplit RIEN (FACT) → décision de sauvetage
        ├─ Phase 1, > 30 s restantes ─────────────────────────► [CRO-10] ATTENDRE qu'il s'engage ; gens hors de sa zone
        ├─ Phase 1, ~15-30 s restantes ───────────────────────► [CRO-11] S'APPROCHER hors zone et hors LOS
        ├─ Phase 1, < ~15 s restantes
        │   ├─ Sauveteur sain, 0-1 crochet, ressource proche ─► [CRO-12] DÉCROCHER (trade assumé)
        │   └─ Sinon ─────────────────────────────────────────► [CRO-13] LAISSER PASSER en phase 2
        └─ Phase 2 (Struggle)
            ├─ > 2 survivants ────────────────────────────────► [CRO-14] SAUVETAGE PRIORITAIRE
            │     SAUF seul sauveteur à 2 crochets ou blessé face à un pouvoir prêt
            └─ 2 survivants ──────────────────────────────────► arbre 8 (Mori, sacrifice si tous accrochés)

Modulateurs de la branche proxy (appliquer avant de décrocher) :
  Pouvoir : coup unique prêt → [CRO-10] attendre · ranged prêt → trade plus cher (le décroché garde
            Endurance → Deep Wound, pas « 2 états » d'office) · M1 / pouvoir en cooldown → trade plus jouable
  Santé   : sauveteur blessé → pas de trade · plusieurs blessés → prudence (le tueur reprend la pression)
  Gens    : ≥ 3 restants → le camp est un cadeau, maximiser les gens loin de lui
            1 restant → finir le gen PEUT être meilleur, mais l'alimentation coupe l'anti-camp → arbre 5 (99)
[SWF] option supplémentaire ───────────────────────────────────► [CRO-15] DISTRAIRE (un se montre, un décroche)
Fin de partie où sauver coûte la sortie de deux survivants (rare) ► [CRO-16] NE PAS SAUVER
```

### 3.2 Feuilles

| Feuille | Action | Pourquoi | Risque | Alternative |
|---|---|---|---|---|
| **CRO-1** | Rester sur son gen | Un doublon retire un 3e réparateur | L'autre fait demi-tour sans que tu le voies | Revérifier le HUD au prochain événement |
| **CRO-2** | Y aller si sain | Sauveteur « riche » en états | Doublon | Laisser si blessé ou à 2 crochets |
| **CRO-3** | Y aller après un délai de confirmation (ex. 15-20 s, valeur de rédacteur) **adapté** : délai + trajet < fin de phase | « Quelqu'un d'autre ira » est l'erreur SoloQ la plus coûteuse (EXPERT OPINION non sourcée) | Si les 3 appliquent le même délai fixe → départ **simultané** | Revérifier portraits/auras toutes les ~5 s en route ; égalité : le sain / 0 crochet continue, sinon celui déjà en course |
| **CRO-4** | Un sauveteur désigné annonce son ETA ; les autres continuent | Supprime les doublons | Surconfiance, annonce périmée | L'accroché annonce le comportement du tueur (« il part nord ») |
| **CRO-5** | Décrocher dès l'arrivée | Tueur engagé ailleurs = meilleur moment ; sauver avant 70 s garde une phase entière (CALC) | Faux départ du tueur | Approche hors LOS |
| **CRO-6** | Laisser à un autre ou accepter la phase 2 | Tu n'arriveras pas à temps | État de crochet offert | Accepter si le gen en cours va tomber |
| **CRO-7** | Décroché : casser la LOS pendant les 10 s d'Elusive, **aucune action voyante** (Endurance perdue, FACT), aller vers des tiles ; sauveteur entre le tueur et le décroché, directions différentes ; **pas de soin sous le crochet** | Protections = fenêtre de fuite, pas de soin | Tunnel ; Endurance gâchée | Soin loin (arbre 4) |
| **CRO-8** | Ne pas entrer dans les 16 m ; réparer ; réévaluer si le camp dure (~20-30 s, UNCERTAIN) | Ta présence **ralentit** la jauge (FACT) et t'offre en cible ; le tueur cède ~3 s-surv/s (CALC) | Temps de libération **non calculable** (taux de base inconnu) | Deliverance / Reassurance (≤ 6 m, t'expose) : vérifier Match Details |
| **CRO-9** | Traiter 10-16 m comme un proxy | Poids ×1 → ×0,375 → ×0 : le tueur profite du camp sans payer l'anti-camp | Attendre une jauge qui ne se remplira pas | Branche proxy |
| **CRO-10** | Attendre qu'il s'engage (chase, kick lointain) ; gens **hors** de sa zone | Le proxy lui coûte des gens au loin | La phase avance | CRO-11 à l'approche de l'échéance |
| **CRO-11** | Se rapprocher hors zone de patrouille et hors LOS ; décrocher dès qu'il s'engage | Position prête pour la fenêtre | Être repéré en approche | Choisir l'angle (pièges du Trapper, 9.A) |
| **CRO-12** | Décrocher vers ~10 s restantes (trade assumé) | Laisser expirer donne le même état de crochet que le trade raté « probable » (9.A) | Pire cas : 2 états offerts (toi au sol aussi) | Contre coup unique / ranged prêt, l'échéance devient bien plus risquée |
| **CRO-13** | Laisser passer en phase 2 | Sauveteur blessé ou sans ressource : risque 2 états | L'allié perd un état | Sauver en phase 2 quand le tueur s'engage |
| **CRO-14** | Sauvetage prioritaire | La fin de phase 2 = mort = −1 réparateur définitif | Échanger une mort contre une mort + un crochet si le seul sauveteur est à 2 crochets/blessé face à un pouvoir prêt | Trappe / sortie en fin de partie (arbre 8) |
| **CRO-15** | [SWF] Un se montre, un décroche | Couvre le sauvetage | Deux cibles | CRO-12 |
| **CRO-16** | Ne pas sauver (SITUATIONAL, rare) | Le sauvetage coûterait la sortie de deux survivants | Abandonner un allié sauvable | Sauvetage planifié (arbre 8) |

**Trade (E-T01, lot 9 §2.5)** — généralement justifié si : l'allié va perdre sa phase sinon ; le risque passe à un survivant plus riche en états (0 crochet, sain, ressource proche) ; les 2 autres réparent déjà. **Refuser** : sauveteur blessé ou à 2 crochets, dead zone autour du crochet, tueur à coup unique prêt (Shape en Evil Incarnate : UNCERTAIN), **2 survivants restants**. Compter les états réellement offerts : le décroché a Endurance.

**Contre-indications** : sous-sol (crochets insabotables : cela ne change **que** le sabotage ; c'est la géométrie qui expose) ; The Judgment (Exile = état de crochet sans perks de crochet, exilé réapparaît à ≥ 32 m, FACT) ; Pain Resonance / Grim Embrace : c'est l'**accrochage** qui déclenche, pas le décrochage (un trade raté qui accroche le sauveteur pour la 1re fois peut coûter en plus).

**Contre-jeu du tueur** : simuler le départ (sortir des 16 m puis revenir) ou rester hors de la LOS du crochet. La branche « il part » exige un TR qui s'éloigne **et** un signe d'engagement ailleurs ; un silence n'est pas un départ, surtout contre un tueur furtif.

**Hors périmètre** : saves (flash, pallet, sabotage, body block) → lot 5 NOT_STARTED. Défaut macro seulement : [SoloQ] un seul tentateur, déjà sur place ; [SWF] « je suis sur le save », les autres ne viennent pas.

---

## 4. SOIN (T-Q03)

**Entrée** : tu es blessé (ou un allié l'est). **Sources** : lot 9 §2.10, §7.2 ; lot 11 §2.3, E-I02.

### 4.1 Squelette

```
SOIN
│
├─ Le tueur est-il proche (TR, chase qui approche) ?
│   ├─ OUI ─ soin presque fini (temps restant < arrivée estimée − 2 s) ? ─ oui ► [SOI-2] FINIR
│   │                                                                   └ non ► [SOI-1] ARRÊTER ET PARTIR
│   └─ NON ──► type de tueur ?
│
├─ Coup unique fréquent (Hillbilly, Cannibal, Oni Fury ; Shape EI : UNCERTAIN) ► [SOI-3] GENS par défaut
├─ Blessure à distance / statut (Legion, Plague, Trickster, Krasue…) ─────────► [SOI-4] NE PAS SOIGNER PAR RÉFLEXE
└─ M1 standard ──► Deep Wound ?
    ├─ Oui ───────────────────────────────────────────────────► [SOI-5] MENDER D'ABORD
    └─ Non ──► contexte
        ├─ 2 survivants restants ─────────────────────────────► [SOI-6] SOIGNER (presque toujours)
        ├─ 1 gen restant ET Adrenaline dans l'équipe ─────────► [SOI-7] LE PORTEUR NE SE SOIGNE PAS
        ├─ Gen en cours > ~70-80 % et tueur loin ─────────────► [SOI-8] FINIR LE GEN, soigner après
        ├─ Forte pression et 2 blessés ───────────────────────► [SOI-9] UN SEUL SOIN, le plus utile
        └─ Sinon ─ qui soigne ?
            ├─ Allié disponible à < ~10 s de trajet ──────────► [SOI-10] SOIN ALTRUISTE
            ├─ Med-Kit ───────────────────────────────────────► [SOI-11] AUTO-SOIN loin des gens occupés
            └─ Rien ──────────────────────────────────────────► [SOI-12] RESTER BLESSÉ ET RÉPARER
Où ? toujours hors de la zone du tueur, hors LOS, jamais sous le crochet.
```

### 4.2 Feuilles

| Feuille | Action | Pourquoi | Risque | Alternative |
|---|---|---|---|---|
| **SOI-1** | Arrêter et partir | Soin interrompu conservé (sauf Haemorrhage −7 %/s, FACT) | Perdre la position | Reprendre plus loin. Tueur furtif : le TR arrive trop tard, ne pas compter dessus |
| **SOI-2** | Finir | Même calcul que le gen (§5) ; partir à 90 % laisse deux blessés | Mauvaise estimation d'arrivée | SOI-1 |
| **SOI-3** | Gens par défaut | L'état de santé ne vaut rien contre l'attaque spéciale | Ses M1 restent un danger : **SITUATIONAL** (pouvoir en cooldown, tiles où il joue M1) | Soigner le prochain chassé s'il joue surtout M1 |
| **SOI-4** | Ne soigner que le prochain looper probable | Il reblesse vite et à distance | Jouer blessé longtemps | Plague : purifier crée des fontaines corrompues (lot 4) ; Broken = compromis |
| **SOI-5** | Mender (10 s seul / 6 s par un allié) | Sinon mise au sol à la fin du timer (FACT) | — | — |
| **SOI-6** | Soigner | Le tueur n'a plus de cible alternative : chaque coup encaissé allonge la partie | Trappe / porte proche : partir | — |
| **SOI-7** | Le porteur d'Adrenaline ne se soigne pas | Adrenaline soigne d'un état à l'alimentation (lot 2, SS) | **Terminus** suspecté → Broken → Adrenaline ne soigne pas | Soigner si Terminus suspecté |
| **SOI-8** | Finir le gen d'abord | Un gen fini est un acquis définitif | Blessé sur un gen presque fini si le tueur arrive → arbre 5 | — |
| **SOI-9** | Un seul soin (meilleur looper / prochain chassé) | Le 2e soin coûte ~0,36 gen de plus | — | Zéro soin, gens à fond |
| **SOI-10** | Soin altruiste (32 s-surv ≈ 0,36 gen, CALC) | Rentable si l'état sert en chase (voir bilan) | Trajet non compté ; soigneur retiré du gen | SOI-12 |
| **SOI-11** | Auto-soin au Med-Kit (~24 s : CALC sur hypothèse) | Ne mobilise qu'un survivant | Valeur à vérifier en jeu | SOI-12 |
| **SOI-12** | Rester blessé et réparer | Évite 32 s-surv | Un coup = au sol ; grognements, sang (info au tueur) | Perks « blessé » (valeurs UNCERTAIN) |

**Bilan chiffré (lot 9 §2.10 corrigé par l'audit P04, HYPOTHESIS)** : un état de santé rapporterait ~12-30 s de chase. Avec **3** alliés qui réparent → 36-90 s-surv contre 32 s-surv : soin **rentable dans le cas idéal** ; avec **2** → **proche de l'équilibre** ; **perdant** avec trajet, contre coup unique / reblessure à distance, ou si le soigné n'est pas le prochain chassé. *(La formule « proche de l'équilibre » en général de `batch11` §0.3 est remplacée par cette version.)*

**Autres points** : Mangled +25 % ; A Nurse's Calling (28/30/32 m, LIVE 10.1.0) → soigner loin ou derrière couverture ; **ne jamais planifier un soin à 3** (CONFLICT-001). Sous NOED/Exposed, être sain ne protège pas d'un coup : pas une raison de soigner.

| | [SoloQ] | [SWF] |
|---|---|---|
| | Un allié blessé vient vers toi : vérifier le TR avant de lâcher ton gen (il peut amener le tueur) ; soin loin du gen occupé | Annoncer « je reste blessé » pour qu'un allié ne quitte pas son gen pour rien |

---

## 5. GEN — continuer, lâcher, tenir le 99

**Entrée** : tu répares. **Sources** : lot 9 §2.1-2.2, §2.11, §6.1, §7.3, §8 (états 6-8) ; lot 11 E-I08, E-I14, E-T06 ; lot 6 T23.

### 5.1 Squelette

```
GEN
│
├─ Un signal de menace arrive (TR, chase qui approche, alerte de perk) ?
│   ├─ NON ───────────────────────────────────────────────────► [GEN-1] CONTINUER
│   └─ OUI ──► temps pour finir (charges restantes / débit) < arrivée estimée − 2 s ?
│       ├─ OUI ───────────────────────────────────────────────► [GEN-2] FINIR
│       └─ NON ──► suis-je furtif ici (pas vu) ?
│           ├─ OUI ───────────────────────────────────────────► [GEN-3] LÂCHER maintenant, marcher hors LOS
│           └─ NON ───────────────────────────────────────────► [GEN-4] PRE-RUN vers une ressource de chase
│   Tueur furtif (Wraith, Pig, Ghost Face, Shape, Onryō, Slasher…) : le TR ne protège pas
│                                                            ─────► [GEN-5] CAMÉRA + indices visuels
│
├─ Cas particuliers
│   ├─ Gen frappé, lâché ─────────────────────────────────────► [GEN-6] REVENIR VITE (5 % pour stopper)
│   ├─ Deux sur le gen ───────────────────────────────────────► [GEN-7] LE PLUS FAIBLE EN CHASE PART
│   ├─ Gen à pointes (≥ 4 events) ────────────────────────────► [GEN-8] NE PAS LE CROIRE « SÛR »
│   └─ Dernier gen ──► 99 ? (5.2)
│
└─ Quel gen faire ensuite ? (anti-3-gen)
    ├─ 3-4 gens restants : « si on finit celui-ci, quels 3 restent sur la carte ? »
    │   └─ triangle serré ────────────────────────────────────► [GEN-9] FINIR DANS le groupe serré
    └─ 3-gen déjà formé (1 restant, 3 sur la carte)
        ├─ Tueur engagé en chase loin du triangle ────────────► [GEN-10] DUO sur le gen le plus avancé
        └─ Tueur qui patrouille et frappe ────────────────────► [GEN-11] SPLIT sur deux gens du triangle
```

### 5.2 Sous-arbre 99 (dernier gen)

```
Dernier gen presque fini → tenir à 99 % ?
├─ Allié accroché / va l'être, tueur près du crochet ─────────► [GEN-12] TENIR LE 99
├─ Blessés + Adrenaline dans l'équipe ────────────────────────► [GEN-13] ALIMENTER AU BON MOMENT
├─ NOED / Terminus / No Way Out suspectés ────────────────────► [GEN-13] ALIMENTER quand l'équipe est en position
└─ Tueur sur le gen / en approche directe · Hex: Ruin actif · réparateur hérétique (Judgment)
   · tout le monde sain et libre ─────────────────────────────► [GEN-14] FINIR / ALIMENTER TOUT DE SUITE
```

### 5.3 Feuilles

| Feuille | Action | Pourquoi | Risque | Alternative |
|---|---|---|---|---|
| **GEN-1** | Continuer ; viser Great (+1 %) sans risquer le raté | Un raté = −10 % + 3 s (≈ 12 s solo, CALC) | — | — |
| **GEN-2** | Finir | Un gen fini ne peut plus être frappé (~18 s solo / ~10,6 s à 2 pour un gen à 80 %, CALC) | Estimation d'arrivée : TR 32 m ≈ 7 s à 4,6 m/s (valeur historique, nombreuses exceptions) | GEN-3 |
| **GEN-3** | Lâcher avant d'être vu, marcher (pas de griffures), direction opposée au TR ; revenir après son passage | Préserve la furtivité et l'avance | Lâcher trop tôt si le tueur ne venait pas (E-I14) | Continuer si le TR ne se rapproche pas |
| **GEN-4** | Partir vers ta tile de repli, loin des autres réparateurs | Chaque mètre avant le début de poursuite vaut ~1,7-2,5 s de chase (CALC) | Pre-run au moindre TR ; en courant (griffures) ; vers un tile vidé ; vers les alliés | Marcher si ça suffit |
| **GEN-5** | Rotations caméra, corbeaux, cloche, sons | Le TR ment | Surprise au contact | Réparer adossé à un tile fort |
| **GEN-6** | Revenir réparer 5 % (4,5 s solo, ~2,6 s à 2) | Gen laissé 60 s ≈ −19,5 c (CALC) | Tueur qui attend le retour | Split : un autre le reprend |
| **GEN-7** | Le plus faible en chase part d'abord, l'autre finit si possible | Évite deux cibles | — | — |
| **GEN-8** | Il reste au tueur jusqu'à 4 events ; « sûr » contre les kicks seulement au 8e (FACT) | Confusion pointes / plafond | Skill checks ratés régressent toujours | — |
| **GEN-9** | Finir un gen **du** groupe serré, laisser les gens extérieurs pour la fin | Un 3-gen se décide à 3-4 gens restants (5 encore sur la carte) | Réparer au centre expose à plus de rencontres | Contre tueur très mobile, la distance protège moins (SITUATIONAL) |
| **GEN-10** | Duo sur le plus avancé | Finir avant son retour | Groupement trouvé par le tueur | GEN-11 |
| **GEN-11** | Deux survivants sur deux gens du triangle, un 3e tient la chase | Il ne défend qu'un gen à la fois | Deux survivants proches du tueur | Si un gen est plus loin, jouer celui-là. « Épuiser ses 8 events » n'est **pas** un plan (lot 11 P14-17) |
| **GEN-12** | Tenir à 99 % (à côté, pas dessus ; relâcher à 97-98 %) | L'alimentation coupe anti-camp, Elusive et Will to Live (FACT) | Un Great près de 99 % peut finir par accident ; kick → ~90-94 % | Alimenter si le tueur approche |
| **GEN-13** | Alimenter au moment choisi (hors chase, équipe en position) | Adrenaline utile ; perks d'endgame du tueur | Mauvais timing (au milieu d'un soin) | GEN-12 |
| **GEN-14** | Finir tout de suite | Kick, Ruin ou Heresy (Good = −3 %) font fondre le 99 ; chaque seconde de 99 est une chance pour le tueur | — | — |

**Contre-jeu du tueur** : un survivant immobile à côté d'un gen est un indice ; un tueur qui soupçonne un 99 le patrouille et le frappe. Le 99 est un outil de **quelques dizaines de secondes** autour d'un événement, pas une posture.

| | [SoloQ] | [SWF] |
|---|---|---|
| Gen lâché | Ne pas supposer qu'un autre reviendra | « Gen X à 60, lâché » |
| 99 | Ne pas tenir un 99 seul trop longtemps (on ne contrôle pas les autres) | Décision explicite ; annoncer tout gen > 80 % |
| 3-gen | Réparer soi-même un gen du groupe serré | Le shot-caller nomme les gens à finir en priorité |

---

## 6. TOTEM

**Entrée** : tu vois un totem. **Sources** : lot 9 §7.4 ; lot 11 E-I09.

```
TOTEM
├─ Allumé (Hex) ── change-t-il les décisions de l'équipe maintenant ?
│   ├─ OUI (Ruin, Hex d'endgame, Hex de chase) ── tueur loin ? ──► [TOT-1] PURIFIER (14 s) ou BÉNIR (28 s)
│   └─ NON / effet faible ────────────────────────────────────► [TOT-2] PURIFIER EN PASSANT si sûr
└─ Terne ── phase ?
    ├─ Début / milieu ────────────────────────────────────────► [TOT-3] NE PAS PURIFIER
    ├─ Fin (1-2 gens) + NOED suspecté ────────────────────────► [TOT-4] PURIFIER CEUX QU'ON CROISE
    └─ Près d'un gen / d'une porte ───────────────────────────► [TOT-5] PURIFIER EN PASSANT
```

| Feuille | Action | Pourquoi | Risque | Alternative |
|---|---|---|---|---|
| **TOT-1** | Purifier (14 s) ou Boon (28 s sur un Hex) si l'équipe en profite (Boons visibles en Match Details) | L'Hex coûte plus que 14 s + trajet | Hex gardé = une chase | Revenir quand le tueur est engagé |
| **TOT-2** | Purifier en passant, sans traverser la carte | Gain faible | — | L'ignorer |
| **TOT-3** | Laisser (sauf totem voulu pour un Boon) | 5 × 14 s = 70 s ≈ 0,8 gen (CALC) | NOED plus tard | TOT-4 en fin de partie |
| **TOT-4** | Purifier sans détour | NOED (valeurs UNCERTAIN) | Temps pris sur les portes | Un joueur cherche, les autres ouvrent (arbre 8) |
| **TOT-5** | Purifier en passant | Coût marginal faible | — | — |

Correction du seed : « purifiez un Hex dès qu'il s'allume » est une règle absolue (relevée par l'audit phase 0). [SoloQ] ne pas compter sur les autres pour les ternes ; en fin de partie, en purifier 1-2 sur la route. [SWF] désigner un « chasseur de totems » seulement si un Hex s'est montré ou si l'équipe est en avance.

---

## 7. SLUG

**Entrée** : un allié (ou toi) est au sol. **Sources** : lot 9 §2.8, §7.5 ; lot 11 E-A10.

```
SLUG
├─ Un allié est au sol — où est le tueur ?
│   ├─ À côté / en vue ───────────────────────────────────────► [SLG-1] NE PAS Y ALLER
│   │     il attend indéfiniment (bleed-out 240 s qui court) ─► [SLG-2] UN SAIN LE TIRE EN CHASE, UN AUTRE RELÈVE
│   ├─ En chase avec quelqu'un d'autre ───────────────────────► [SLG-3] Y ALLER SEUL si je suis le plus proche
│   └─ Inconnu ── je vois l'allié ?
│       ├─ Non (Knock Out possible) ──────────────────────────► [SLG-4] NE PAS PARTIR À L'AVEUGLE
│       └─ Oui ───────────────────────────────────────────────► [SLG-5] APPROCHE PRUDENTE, relever si TR absent
├─ Plusieurs au sol
│   ├─ Je suis le dernier debout ─────────────────────────────► [SLG-6] ÉVITER LA CHASE ; relever si il s'éloigne
│   └─ Deux debout ───────────────────────────────────────────► [SLG-7] UN RELÈVE, L'AUTRE RESTE LOIN
└─ Je suis au sol
    ├─ Un allié arrive / couverture proche ───────────────────► [SLG-8] RAMPER VERS LUI / LA COUVERTURE
    ├─ Tueur loin et un allié arrive déjà ────────────────────► [SLG-9] RESTER IMMOBILE pour récupérer
    ├─ Perk de relève (Unbreakable, Exponential 24 m) ────────► [SLG-10] LA GARDER pour quand il s'éloigne
    └─ Abandon / Surrender ───────────────────────────────────► [SLG-11] OPTIONS DE FIN, pas des stratégies
```

| Feuille | Action | Pourquoi | Risque | Alternative |
|---|---|---|---|---|
| **SLG-1** | Rester hors de vue | Il cherche la 2e cible | Bleed-out qui court | SLG-2 |
| **SLG-2** | Un sain se montre et part vers un tile fort ; un autre relève | Sinon l'allié saigne 240 s et les gens des autres stagnent | 2 joueurs sur un événement | [SWF] sur annonce ; [SoloQ] seulement si tu es clairement le mieux placé |
| **SLG-3** | Y aller seul | Le tueur est engagé ailleurs | S'il a rampé, sa jauge est probablement plus basse (relevage restant : NV) | — |
| **SLG-4** | Chercher un indice (portrait, dernier bruit) | Knock Out : auras des mourants réduites à 32/24/16 m après un M1 (SS, lot 3) | Perdre du temps | — |
| **SLG-5** | Approcher prudemment, relever si TR absent | — | Piège de slug | SLG-1 |
| **SLG-6** | Ne pas se faire prendre ; relever si le tueur s'éloigne, sinon attendre qu'il accroche ; trappe seulement s'il ne reste que toi en vie. **Trouvé quand même** : tenir la chase le plus longtemps possible près d'un tile fort | Si tu tombes : tous au sol (Surrender possible, FACT) ; chaque seconde laisse récupérer les alliés | Relève sous ses yeux | Arbre 9 (trappe) |
| **SLG-7** | Un relève, l'autre reste loin (ou fait diversion loin) | Évite le double au sol | — | — |
| **SLG-8** | Ramper vers l'allié qui vient / une zone couverte (pas vers un gen occupé, un cul-de-sac, le crochet le plus proche) | Raccourcit son trajet, te sort de la vue | La récupération se fait « à l'arrêt » (SS) : ramper la suspend probablement (à tester) | SLG-9 |
| **SLG-9** | Rester immobile | 95 % en 30,4 s (FACT) : le relevage restant est plus court | Personne ne vient | SLG-8 |
| **SLG-10** | Garder la perk pour quand le tueur s'éloigne | Unbreakable : 1×/épreuve, mise au sol par le tueur (9.5.0) | La gaspiller sous ses yeux | — |
| **SLG-11** | Abandon (3e passage au sol après 2 relevages/soins, 9.2.0) / Surrender (tous au sol, 8.6.0) | Abandonner prive l'équipe d'un réparateur et d'un leurre | — | [SWF] annoncer avant ; [SoloQ] ramper vers un allié tant qu'une chance existe (EXPERT OPINION non sourcée). Refonte PTB 10.2.0 : à revoir |

Ne pas alterner ramper / récupérer au hasard. [SoloQ] supposer qu'un allié viendra probablement, ramper vers lui. [SWF] « tueur à côté, ne venez pas » / « il est parti, relève-moi ».

---

## 8. ENDGAME (portes, EGC, fin à 2 survivants)

**Entrée** : 1 gen restant ou portes alimentées. **Sources** : lot 9 §6.1-6.4, §7.6, §9.C ; lot 11 E-A09.

```
ENDGAME
├─ 1 gen restant ─────────────────────────────────────────────► arbre 5.2 (99 ou alimenter)
└─ Portes alimentées
    ├─ Allié accroché ?  (anti-camp COUPÉ ; décrochage = Endurance + Haste, PAS d'Elusive — FACT)
    │   ├─ Pas de plan de sauvetage ──────────────────────────► [END-1] OUVRIR UNE PORTE D'ABORD
    │   ├─ Plan (protection hit, distraction, tueur qui s'éloigne) ► [END-2] SAUVETAGE PLANIFIÉ
    │   └─ 2 survivants, accroché en Struggle ────────────────► [END-3] NE PAS TOMBER (Mori), prudence max
    ├─ Tueur posté à une porte (gate camp) ───────────────────► [END-4] OUVRIR L'AUTRE
    ├─ Tueur arrive pendant que j'ouvre ─ temps restant < son arrivée ? ─ oui ► [END-5] FINIR
    │                                                                  └ non ► [END-6] LÂCHER (progression gardée)
    ├─ No Way Out suspecté ───────────────────────────────────► [END-7] TOUCHER QUAND IL EST LOIN, attendre à distance
    ├─ Blood Warden suspecté (une porte déjà ouverte) ────────► [END-8] NE PAS SE FAIRE ACCROCHER
    ├─ NOED (Exposed) ────────────────────────────────────────► [END-9] AUCUN COUP GRATUIT ; un cherche le totem
    └─ Porte ouverte ─────────────────────────────────────────► [END-10] SORTIR (sauf save précis)
```

| Feuille | Action | Pourquoi | Risque | Alternative |
|---|---|---|---|---|
| **END-1** | Finir d'ouvrir une porte avant de décrocher | Sortie sûre ensuite ; l'EGC est ralenti de moitié tant qu'un survivant est accroché (FACT) : le vrai compteur est la **phase** de l'allié | Blood Warden possible une fois une porte ouverte | Laisser la porte à ~90 % : pas d'EGC, mais à finir sous pression |
| **END-2** | Sauver seulement avec un plan ; sinon sortir à ~10 s de la fin de sa phase (9.C) | Pas d'Elusive, pas d'anti-camp | 2 morts si le tueur reprend le décroché | [SoloQ] la décision doit être bonne **même si les autres ne font rien** |
| **END-3** | Ne pas se faire mettre au sol, **où que tu sois** | Mori possible si l'un est en Struggle et l'autre au sol (FACT 9.0.0, sans condition de distance) ; tous accrochés = sacrifice | — | Sauver seulement si le tueur est engagé ailleurs ; sinon la trappe s'ouvrira à 1 survivant. Jouer la trappe n'est pas « égoïste » (EXPERT OPINION non sourcée) |
| **END-4** | Ouvrir la porte qu'il ne regarde pas ; deux portes à la fois si possible | Il ne garde qu'une porte | — | — |
| **END-5** | Finir (2 s restantes à 90 %, 1 s à 95 %, CALC) | Temps restant < arrivée | Finir sous ses yeux ouvre la porte **et** lance l'EGC (décision d'équipe si un allié est accroché/au sol) | END-6 |
| **END-6** | Lâcher l'interrupteur, revenir quand il repart | Progression conservée (FACT) | — | Autre porte |
| **END-7** | Toucher l'interrupteur quand le tueur est loin et occupé ; attendre le déblocage à distance | NWO : bruit + blocage 12 s + 6/9/12 s par jeton (SS) | — | — |
| **END-8** | Ne pas être accroché ; ne pas traîner dans la sortie | Blood Warden bloque les portes 40/50/60 s (SS) et révèle les auras en sortie | — | — |
| **END-9** | Ne prendre aucun coup gratuit ; un joueur cherche le totem, les autres ouvrent | Exposed : un coup = au sol | — | Arbre 6 (TOT-4) |
| **END-10** | Sortir | Attendre donne de l'info ; contre The Judgment, **45 s dans le seuil = Heresy** (porte bloquée 8 s si < 32 m) | T-bag, attente | Attendre seulement pour un save prévu |

| | [SoloQ] | [SWF] |
|---|---|---|
| Portes | Supposer que les autres ouvrent la porte la plus proche d'eux : prendre l'autre ; défaut robuste = la porte la plus éloignée du dernier emplacement connu du tueur | Plan explicite : « A ouvre nord, B sud, C sauve » |
| Sauvetage | Ne pas compter sur un allié pour le protection hit | Protocole endgame : 99 ou alimentation, qui ouvre, qui sauve |

---

## 9. TRAPPE (dernier survivant)

**Entrée** : tu es le seul survivant en vie. **Sources** : lot 9 §6.3, §7.6, §9.D ; lot 11 E-T07.

```
TRAPPE — je suis le dernier survivant
├─ Avant d'être seul (anticipation) ──────────────────────────► [TRP-0] SAVOIR où sont les portes et leur progression
├─ Trappe ouverte, aura visible (de moi seul, FACT)
│   ├─ Tueur loin / inconnu ──────────────────────────────────► [TRP-1] Y ALLER FURTIVEMENT (marcher)
│   └─ Tueur près de la trappe (standoff) ────────────────────► [TRP-2] NE PAS SE MONTRER, attendre qu'il quitte l'axe
├─ Gens presque finis ET position du tueur connue ────────────► [TRP-3] PORTES (option secondaire)
└─ Trappe fermée par le tueur → EGC 120 s ────────────────────► [TRP-4] PORTE LA PLUS ÉLOIGNÉE DE LUI
    (clé pour rouvrir : UNCERTAIN)
```

| Feuille | Action | Pourquoi | Risque | Alternative |
|---|---|---|---|---|
| **TRP-0** | Mémoriser portes, progression (conservée, FACT) et trappe probable | Scénario pré-appris (E-T07) | Emplacement procédural (fixe vs RNG : lot 8 NOT_STARTED) | — |
| **TRP-1** | Marcher vers l'aura, pas de course près du tueur | Courir = griffures + bruit | Blessé : sang, grognements (portée UNCERTAIN) | — |
| **TRP-2** | Rester hors de vue, pré-positionner la route vers la porte **opposée** à sa position | Le tueur ne voit pas l'aura ; s'il ferme, tu pars déjà caché | Attendre immobile trop longtemps : corbeaux AFK à 80/100/120 s (FACT VP) ; durée du saut NV | **Ne jamais sprinter vers la trappe devant lui** (il la ferme ou coupe la route) |
| **TRP-3** | Aller aux portes seulement si les gens sont presque finis et que tu sais où il est | Finir un gen seul = 90 s | Tueur mobile (Blight) : la distance protège peu | TRP-1 |
| **TRP-4** | Partir immédiatement vers la porte la plus éloignée de lui ; ouvrir par étapes si besoin | Il ne garde qu'une porte à la fois (HEURISTIC) ; 20 s d'ouverture | Tueur mobile qui choisit la bonne porte | Utiliser son temps de trajet entre les portes |

À 2 survivants avec un allié en Struggle : la trappe ne s'ouvrira qu'à sa mort ; voir END-3.

---

## 10. Renvois vers les sources

| Arbre | Source principale (fichier : section) | Corrections d'audit intégrées |
|---|---|---|
| 1 Palette | batch11 : §2.1 · batch6 : T05, §4.3, §4.14, §5 sit. 1-2 | lot 11 P14-04, 18, 19, 20, 43, 44 ; lot 6 P04-P07, P14, P36 |
| 2 Quitter la tile | batch11 : §2.2 · batch6 : T11, T18, §2.3 | lot 11 P14-03, 42, 52 ; lot 6 P01, P03 |
| 3 Crochet | batch9 : §2.5-2.7, §3.3, §4.2, §7.1, §9.A · batch11 : §2.3, E-I04, E-T01 | lot 9 P06-P08, P14, P15, P21, P23, P24 ; lot 11 P14-05, 16, 28 |
| 4 Soin | batch9 : §2.10, §7.2 · batch11 : §2.3, E-I02 | lot 9 P04, P05, P19, P37 ; lot 11 P14-24, 25, 26, 48 |
| 5 Gen / 99 | batch9 : §2.1-2.2, §2.11, §6.1, §7.3 · batch11 : E-I08, E-I14, E-T06 · batch6 : T23 | lot 9 P01, P11, P13, P22 ; lot 11 P14-15, 17, 29 ; lot 6 P28 |
| 6 Totem | batch9 : §7.4 · batch11 : E-I09 | — |
| 7 Slug | batch9 : §2.8, §7.5 · batch11 : E-A10 | lot 9 P03, P16, P17 ; lot 11 P14-23 |
| 8 Endgame | batch9 : §6.1-6.4, §7.6, §9.C · batch11 : E-A09 | lot 9 P09, P10, P12 |
| 9 Trappe | batch9 : §6.3, §9.D · batch11 : E-T07 | — |

---

## 11. Limites (à lire avant d'enseigner un arbre)

### 11.1 Points déclarés « non corrigeables sans source » par les audits

| Audit | Point | Arbres touchés |
|---|---|---|
| lot 11 P14-54 | Portée de fente, durée d'abaissement de palette, effet d'un stun sur la Bloodlust, taux de base de l'anti-camp **inconnus** → tous les seuils de distance sont non quantifiables | 1, 2, 3 |
| lot 11 P14-30 | Aucune branche sur les **objets** (lampe, toolbox, med-kit), les **casiers** en chase, les **saves** (flash/pallet, sabotage, body block) : lot 5 NOT_STARTED | 1, 2, 3 |
| lot 11 P14-53 | Aucune valeur cible ni durée n'a de source (seuils de rédacteur) | tous |
| lot 9 N1 | Temps de remplissage de l'anti-camp incalculable (CONFLICT-003) | 3 (CRO-8) |
| lot 9 N2 | Jugements stratégiques (priorité 3-gen, « erreur SoloQ la plus coûteuse », transitions décisives) = EXPERT OPINION **non sourcée** | 3, 5, 7, 8 |
| lot 9 N3 | Toutes les branches `[SoloQ]` reposent sur un **HUD non vérifié** (icônes d'action, compteur de crochets, indicateur de chase, barres colorées 9.6.0) | 1-5, 7 |
| lot 9 N4 | Valeurs de perks UNCERTAIN (Kindred, Déjà Vu, Prove Thyself, Hope, Wake Up!, NOED, No Holds Barred, Remember Me, Grim Embrace…) | 3, 4, 5, 6, 8 |
| lot 9 N5 | Délai de confirmation SoloQ (15-20 s) et seuils du « tableau de course » = valeurs de rédacteur | 3 |
| lot 9 N6 | Durée du relevage d'un mourant absente de l'audit : l'arbitrage slug n'est pas chiffrable | 7 |
| lot 6 P08 | Signe net du coût d'un coup reçu sain (`C_hit`) inconnu | 1 (modèle) |
| lot 6 P29 | Perks d'épuisement, Haste/Hindered, lampe : absentes des calculs de distance | 1, 2 |
| lot 6 P32 | Conversion Bamboozle (durée / (1 + x) ou × (1 − x)) | 1 (Q9) |
| lot 6 P34 | Liste des casses instantanées non fraîche (Knight 10.1.1 non lu) | 1 (PAL-1) |
| lot 6 P35 | Classement « tueurs anti-loop → tenir W » non vérifié par tueur | 1, 2 |

### 11.2 Incohérences entre brouillons, arbitrées ici

- **Portage 3,68 m/s** : étiqueté SS dans batch6/batch11, **UNCERTAIN** selon l'audit phase 0 (signalé par l'audit lot 9) → UNCERTAIN ici.
- **Efficacité de réparation `e`** : 0,8 dans batch6, 1 implicite dans batch9/batch11 → toutes les valeurs « 1/30 gen par seconde » sont des **plafonds**.
- **Rentabilité d'un soin** : la formule « proche de l'équilibre » de batch11 §0.3 est remplacée par le bilan corrigé de batch9 §2.10 (arbre 4).
- **Pre-drop contre casse instantanée** : « ne coûte presque rien » (batch6) **sauf Blight** depuis 9.6.0 (FACT VP) — intégré à PAL-1.

### 11.3 Autres limites

- **Aucun arbre n'a été testé sur des parties réelles** ; aucune VOD analysée ; aucune source experte lue (lot 10 BLOCKED).
- **PTB 10.2.0** : le Survivor Intent System changerait les branches `[SoloQ]` des arbres 3, 4, 7 ; la refonte Abandon/Surrender changerait SLG-11. À revoir à sa sortie LIVE.
- **Mécaniques NV à vérifier en jeu** : récupération au sol en rampant, durée du saut dans la trappe, clé et trappe fermée, ouverture de porte par le tueur (0,75 s, UNCERTAIN), application des protections à une libération d'Exile, nombre max de soigneurs (CONFLICT-001), rampement 0,7 vs 1,05 m/s (CONFLICT-002).
- **Emplacements fixes vs RNG des portes et de la trappe** (lot 8 NOT_STARTED) : les conseils « porte la plus éloignée » supposent qu'on les connaît.
