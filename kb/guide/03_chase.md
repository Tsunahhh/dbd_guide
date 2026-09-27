# 3. Mouvement, caméra et théorie de la chase

> **Périmètre** : ce chapitre couvre la mécanique fine de la chase côté survivant (vitesses, fente, vaults, palettes, Bloodlust, ligne de vue, caméra, son, feintes, pathing) puis la **chase theory** : raisonner en secondes gagnées ou perdues pour l'équipe. Les tiles et loops en détail sont au chapitre des tiles (`kb/research/batch7_tiles.md`), les réponses tueur par tueur au chapitre des tueurs, la macro (crochets, soins, tempo global) au chapitre macro.
>
> **Version** : LIVE 10.1.2a (17/09/2026). Rien ici ne vient du PTB 10.2.0 (Survivor Intent System, etc. : non LIVE). **Mode 1v4 uniquement** : aucun chiffre ni modèle de ce chapitre ne s'applique tel quel au 2v8.

## 3.0 Comment lire ce chapitre

**Étiquettes** (voir le brief du guide) :

| Étiquette | Sens ici |
|---|---|
| **[FACT]** | Valeur vérifiée ; la confiance suit entre parenthèses : **(VP)** note officielle, **(VM)** wiki + note / multi-source, **(SS)** wiki seul |
| **(CALC)** | Arithmétique faite **uniquement** sur des valeurs vérifiées. Aussi fiable que la moins fiable de ses entrées, et toujours une simplification (ligne droite, vitesses constantes) |
| **[HEURISTIQUE]** | Règle pratique de joueur, non sourcée |
| **[AVIS D'EXPERT]** | Conclusion largement partagée, sans source lue |
| **[SITUATIONNEL]** | Conseil qui s'inverse selon le contexte |
| **[HYPOTHÈSE]** | Modèle ou interprétation plausible, non confirmé. **Tous les modèles de la section 3.8 (EV de palette, coût d'une blessure, chase « rentable ») sont des hypothèses** : ils servent à comparer des options, jamais à produire un seuil à appliquer |
| **[INCERTAIN]** / **(INC)** | Valeur non documentée ou non tranchée |

**Format des techniques** : chaque technique importante suit la grille **QUOI → POURQUOI → QUAND → COMMENT → CONTRE → CAS D'ÉCHEC → EXERCICE**. Les seuils de réussite des exercices sont des propositions [HEURISTIQUE] à recalibrer avec tes propres données (chapitre entraînement). Aucune VOD n'a été analysée pour écrire ce chapitre.

**Unité de compte** : la **seconde-survivant (s-s)** = 1 survivant qui répare seul pendant 1 s. **1 gen = 90 s-s** [FACT] (VM) (90 charges depuis 6.1.0) ; 5 gens = 450 s-s.

> **À retenir** : une chase ne se juge pas à « ai-je survécu ? » mais à « combien de secondes l'équipe a-t-elle gagnées, et combien a coûté ce qui a suivi ? ». Tout ce chapitre sert à mieux répondre à cette question.

---

## 3.1 Chiffres de référence [Débutant]

Seules ces valeurs sont présentées comme des faits. Tout le reste du chapitre en découle.

### Déplacement

| Élément | Valeur LIVE | Confiance |
|---|---|---|
| Survivant, course | **4,0 m/s** | VM |
| Survivant, marche / accroupi | 2,26 m/s / 1,13 m/s | VM |
| Survivant, ramper | 0,7 m/s (le 1,05 m/s vient d'un PTB 9.3.0 annulé) | VM |
| Survivant blessé | **Même vitesse** que sain | SS |
| Boost au coup reçu | **1,8 s**, ×1,65 → 6,6 m/s | durée VP ; ×1,65 SS |
| Tueurs « 115 % » / « 110 % » | **4,6 m/s / 4,4 m/s** (quelques exceptions) | VM |
| Exceptions | Nurse 3,85 m/s (SS) ; Blight **4,4 m/s depuis 9.6.0** (était 4,6) (VP) | — |
| Tueur portant un survivant | 3,68 m/s | SS |
| Accélération, vitesse en marche arrière (moonwalk), vitesse pendant le cooldown d'attaque | Non documentées | INC |

### Combat

| Élément | Valeur LIVE | Confiance |
|---|---|---|
| Cooldown après coup réussi | **2,7 s** (depuis 6.1.0, était 3 s) | VM |
| Cooldown après coup raté ou obstrué par le décor | **1,5 s** | SS |
| Vitesse pendant la fente (lunge) | ~6,9 m/s quelle que soit la classe (×1,5 à 4,6 ; ×1,568 à 4,4 ; ×1,79 à 3,85) | SS |
| Durée / distance de la fente | ~0,87-1 s, ~2-2,5 m de gain, portée totale ~6 m : estimations communautaires en désaccord | **INC** |
| Attaque en portant un survivant | Quick Attack seulement (pas de fente) | SS |
| Validation des coups | « Hit Validation » (août 2020) : si la connexion du tueur est mauvaise, le serveur rejette un coup où les deux étaient trop éloignés ; **sinon le coup reste décidé côté client du tueur** | VP (dev BHVR) |
| Hitbox / hurtbox | Aucune documentation officielle | INC |

### Fenêtres, palettes, murs

| Élément | Valeur LIVE | Confiance |
|---|---|---|
| Fast vault | **0,5 s**, **garde l'élan**, bruyant | SS |
| Medium vault | 0,9 s (angle ou élan insuffisant), remet l'élan à zéro | SS |
| Slow vault | 1,5 s, pas de notification de bruit fort | SS |
| Condition du fast vault | ≥ 2,5 m de course droite vers la fenêtre ; angle toléré non documenté | 2,5 m SS ; angle INC |
| Vault de fenêtre du tueur | **1,7 s** | SS |
| Blocage par l'Entité | Après le **3e** vault de la même fenêtre dans la même poursuite (le 3e est permis), fenêtre bloquée **30 s pour ce survivant seulement** | SS |
| Bamboozle | Vault +5/10/15 % ; fenêtre vaultée bloquée pour **tous** les survivants 8/12/16 s ; aucun effet sur les palettes | SS |
| Stun de palette | **2 s** ; seulement si la palette atteint ~50 % d'abaissement avec le tueur dans la zone (un tueur au bord peut en sortir) | SS |
| Durée d'abaissement de la palette | Non documentée | INC |
| Casse de palette ou de mur (coup de pied) | **2,34 s** (depuis 6.1.0, était 2,6 s) | VM |
| Casse à la tronçonneuse (Hillbilly, Cannibal) | 1 s | SS |
| Vault de palette (survivant) | Rapide 1,1 s (bruyant), lent 2 s (silencieux), pas de vault moyen | SS |
| Enduring | Stun de palette −40/45/50 % ; sans effet en portant un survivant | SS |
| Espacement | ≥ 14, 16, 18 ou 20 m entre deux **palettes** (emplacements prédéfinis) | SS |
| Densité | 9.2.0 : palettes revues sur 10 cartes ; 9.3.0 : loops moins sûres sur 6 cartes ; 9.3.2 : loops « too short and unsafe » rallongées | VP |
| Rendements décroissants (9.6.0) | Aucun DR sur le nombre de palettes, les blocages ou les stuns (le DR vise les modificateurs) | VP (par absence) |

### Palettes et pouvoirs (liste corrigée par l'errata)

La liste de « casses instantanées » de l'audit phase 0 était fausse sur plusieurs points. Version à utiliser [FACT] (SS sauf mention ; détail dans `kb/research/batch7_tiles.md` §5.2) :

| Cas | Tueurs |
|---|---|
| Casse **de base** par le pouvoir | Shape (Slaughtering Strike, Evil Incarnate), Demogorgon (Shred), Oni (Blood Fury), Blight (Lethal Rush, **avec coût en tokens**, voir T05), Nemesis (Mutation Rate 2+), Singularity (palette baissée sur lui en Overclock), Dark Lord (bond du loup) |
| Casse **pas instantanée** | Hillbilly / Cannibal : tronçonneuse 1 s ; Knight : un garde casse sur ordre en **1,8 s ou 5 s** ; depuis **10.1.1**, une palette baissée tôt force le garde en chasse à **contourner** (abandon si le détour dépasse 48 m) (VP) ; Lich + add-on Vorpal Sword : Mage Hand casse une palette baissée en **4 s** (sans l'add-on, Mage Hand **relève** la palette ou bloque une palette levée 4 s) |
| Casse **seulement avec un add-on** | Mastermind (Lab Photo ; de base Virulent Bound **franchit** la palette), Good Guy (Hard Hat ; de base le Scamper passe **sous** la palette en 1 s — la casse de base n'existe qu'en 2v8), Legion (Iridescent Button ; de base vault en Frenzy), Ghoul (Iridescent Eye Patch, 3e bond), Executioner (Obsidian Goblet), The First (Shattered Wrist Rocket) |

> **Erreur fréquente** : « Good Guy, Mastermind et Knight cassent les palettes instantanément ». Faux en 1v4 LIVE sans add-on pour les deux premiers, et le Knight ne casse jamais instantanément. Identifie l'add-on avant de changer ton plan.

### Bloodlust, poursuite, signaux

| Élément | Valeur LIVE | Confiance |
|---|---|---|
| Bloodlust | 15 s → **+0,2 m/s** ; 25 s → **+0,4** ; 35 s → **+0,6** (poursuite active sans interruption) | VM |
| Perte immédiate | Casser une palette, toucher un survivant, utiliser son pouvoir | SS |
| La fente ignore la Bloodlust | (depuis 1.5.0) | SS |
| Perte par stun ou aveuglement | Non documentée | **INC** |
| Régression en fin de poursuite | « rate of 6 », unité inconnue | INC |
| Krasue (Head Form) | Exclue de la Bloodlust depuis 9.2.0 | VP |
| Début de poursuite | Survivant dans le champ de vision du tueur à **≤ 12 m**, survivant qui court, tueur qui se déplace | SS |
| Fin de poursuite | **> 18 m** ; 5 s dans un casier ; LOS perdue **> 8 s** ; survivant hors **±35°** du centre du FOV (87° par défaut) — temporisation de cette dernière condition non documentée | SS / INC |
| Terror Radius | « À l'origine » 32 m (4,6) / 24 m (4,4), nombreuses exceptions | SS |
| Tache rouge (red stain) | Émise par la tête, dans la direction où le tueur **regarde et se déplace** ; invisible pour lui ; supprimée par Undetectable | SS |
| Undetectable | Supprime TR et tache ; un « stinger » marque sa fin ; les lullabies ne sont pas affectées | SS |
| Griffures | Quand tu cours (≥ 60 % de ta vitesse en maintenant le sprint) ; vie **10 s** | SS |
| Grognements (blessé) | Portée non documentée (~12-16 m estimé) ; Iron Will −80/90/100 %, inactive si Exhausted | Iron Will SS ; portée INC |
| Corbeaux d'ambiance | Rayon 4 m ; pas en accroupi ni avec Calm Spirit | SS |
| Exhausted | Récupère seulement en marchant, accroupi ou immobile ; courir met le timer en pause | SS |
| Protections de décrochage | Endurance + 10 % Haste 10 s + Elusive 10 s (Elusive seulement tant que tous les gens ne sont pas faits) | VP (10.1.0) |
| Révélation du tueur | Depuis 9.6.0, le tueur est révélé aux survivants dès qu'un survivant entre en poursuite ; son **loadout** reste caché jusqu'à la fin | VP |

### Économie (pour la chase theory)

| Élément | Valeur LIVE | Confiance |
|---|---|---|
| Gen solo | **90 s** | VM |
| Coop | 85 / 70 / 55 % par personne → ~52,9 / ~42,9 / ~40,9 s pour 2 / 3 / 4 réparateurs | SS |
| Coup de pied de gen | Action 1,8 s ; −5 % instantané puis −0,25 charge/s | VM |
| Phase de crochet | 70 s | VP |
| Accrocher / décrocher | 1,5 s / 1 s | SS |
| Soin d'un état de santé | 16 s ; auto-soin au Med-Kit −33 % de vitesse ; Mangled +25 % de durée | SS |
| Deep Wound | Timer 20 s ; mending 10 s seul, 6 s par un allié | VP |
| Wiggle | 16 s cumulées | SS |

Détail : `kb/research/batch6_chase_tech.md` §1 ; liste des palettes : `kb/research/batch7_tiles.md` §5.2.

---

## 3.2 Calculateur distance / temps [Intermédiaire]

### Les trois formules utiles

1. **Vitesse de rapprochement** en ligne droite (CALC) : `v_r = v_tueur + Bloodlust − 4,0`

| Palier | Tueur 4,6 | Tueur 4,4 |
|---|---|---|
| Sans Bloodlust | 0,6 m/s | 0,4 m/s |
| ≥ 15 s (+0,2) | 0,8 m/s | 0,6 m/s |
| ≥ 25 s (+0,4) | 1,0 m/s | 0,8 m/s |
| ≥ 35 s (+0,6) | **1,2 m/s** | **1,0 m/s** |

La Nurse (3,85 m/s) se rapproche à −0,15 m/s en marche : toute sa menace vient des blinks.

2. **Conversion distance → temps** (la plus utile) : `1 m d'avance = 1 / v_r secondes de chase en terrain ouvert` (CALC).
   - Contre un 4,6 : **1 m ≈ 1,67 s** sans Bloodlust, ≈ 0,83 s avec Bloodlust max.
   - Contre un 4,4 : **1 m ≈ 2,5 s** sans Bloodlust, 1,0 s avec Bloodlust max.

3. **Ce que rapporte un obstacle traversé par les deux** (CALC, corrigé par l'audit pass 14) :
   - `t_s` = ton temps d'arrêt, `t_k` = celui du tueur. L'écart réel augmente de `Δécart = 4,0 × (t_k − t_s)` mètres.
   - Le temps de chase ajouté vaut **`t_k + Δécart / v_r`** : le tueur ne rattrape rien pendant son propre arrêt. (Vérification : si les deux s'arrêtent `t` secondes, la capture est retardée de `t`, pas de 0.)
   - Écart **équivalent terrain ouvert** : `v_tueur × t_k − 4,0 × t_s`.

> **Note avancée** : pour une palette pré-jetée, la table suppose `t_s` = 0, donc un drop instantané. La durée d'abaissement est non documentée (INC) : le gain est un peu surestimé. Ordre de grandeur seulement.

**Écart à combler** = distance réelle − portée utile de la fente. Cette portée est **[INCERTAIN]** (~2-2,5 m selon des estimations communautaires). Les tables ci-dessous parlent d'écart à combler, pas de distance affichée.

### Temps avant d'être rattrapé en ligne droite

Terrain ouvert, sans pouvoir, sans perk (CALC). « BL depuis 0 » : la poursuite commence à t = 0. « BL déjà à 15 s » : tu démarres avec +0,2 m/s.

| Écart à combler | 4,6 sans BL | 4,6 BL depuis 0 | 4,6 BL déjà à 15 s | 4,4 sans BL | 4,4 BL depuis 0 | 4,4 BL déjà à 15 s |
|---|---|---|---|---|---|---|
| 3 m | 5,0 s | 5,0 s | 3,8 s | 7,5 s | 7,5 s | 5,0 s |
| 5 m | 8,3 s | 8,3 s | 6,3 s | 12,5 s | 12,5 s | 8,3 s |
| 8 m | 13,3 s | 13,3 s | 10,0 s | 20,0 s | 18,3 s | 12,5 s |
| 10 m | 16,7 s | **16,3 s** | 12,0 s | 25,0 s | **21,7 s** | 15,0 s |
| 15 m | 25,0 s | 22,5 s | 17,0 s | 37,5 s | 28,8 s | 21,0 s |
| 20 m | 33,3 s | 28,0 s | 21,7 s | 50,0 s | 35,0 s | 26,0 s |
| 30 m | 50,0 s | 37,5 s | 30,0 s | 75,0 s | 45,0 s | 36,0 s |

- Le guide seed disait « 10 m ≈ 17 s / 25 s » en oubliant la Bloodlust (valeurs en gras). Avec une fente de 2-2,5 m (INC), **10 m réels ≈ 12-13 s contre un 4,6, ≈ 17-18 s contre un 4,4**.
- [HEURISTIQUE] Contre un 110 %, 10 m d'avance en terrain ouvert valent à peu près une palette cassée. Contre un 115 % à Bloodlust +0,4/+0,6, atteindre un tile à 20 m (5 s de course) demande un écart réel d'environ **7,5-8,5 m** (5-6 m + la fente, CALC).
- Hypothèses : ligne droite, vitesses constantes, pas de reset de Bloodlust, pas de pouvoir, pas de Haste/Hindered. Un seul virage change le résultat de plusieurs secondes : ce n'est pas un chronomètre.

### Ce que vaut chaque interaction (mètres, puis secondes)

Secondes = `t_k + Δécart / v_r`, sans Bloodlust, contre un 4,6 / un 4,4 (CALC). Le temps perdu par le tueur est un [FACT] (voir 3.1).

| Interaction | Temps perdu par le tueur | Δécart réel à la reprise | ≈ Secondes de chase ajoutées (4,6 / 4,4) |
|---|---|---|---|
| Fast vault (0,5 s) suivi par le tueur (1,7 s) | 1,2 s de différentiel | +4,8 m | **9,7 s / 13,7 s** |
| Medium vault (0,9 s) suivi | 0,8 s | +3,2 m (+ perte d'élan non chiffrée) | 7,0 s / 9,7 s |
| Slow vault (1,5 s) suivi | 0,2 s | +0,8 m | 3,0 s / 3,7 s — et il peut frapper pendant tes 1,5 s |
| Palette pré-jetée, cassée (tu es déjà de l'autre côté) | 2,34 s | +9,4 m **et** Bloodlust à 0 | **17,9 s / 25,7 s** |
| Palette au sol : tu la vaultes (1,1 s), il la casse (2,34 s) | 1,24 s de différentiel | +5,0 m, reset BL | 10,6 s / 14,7 s |
| Stun seul (2 s), il ne casse pas | 2 s | +8 m (puis détour non compté) | 15,3 s / 22 s |
| Stun (2 s) + casse (2,34 s) | 4,34 s | +17,4 m, reset BL | **≈ 33 s / 48 s** (si ligne droite ensuite) |
| Stun contre Enduring III (−50 %) | 1 s | +4 m | 7,7 s / 11 s |
| Casse à la tronçonneuse | 1 s | +4 m | 7,7 s / 11 s |
| Coup raté (cooldown 1,5 s) | 1,5 s moins ce qu'il parcourt pendant le cooldown (INC) | ≤ +6 m (s'il est immobile) | ≤ 11,5 s / 16,5 s |
| Coup reçu : cooldown 2,7 s + ton boost 1,8 s à 6,6 m/s | 2,7 s moins ce qu'il parcourt (INC) | +4,7 m par le boost seul ; bornes de ≈ +3 m (tueur à pleine vitesse pendant le cooldown) à ≈ +15,5 m (tueur immobile) ; ~10-15 m en pratique = [HYPOTHÈSE] | ≈ 17-25 s / 25-37 s [HYPOTHÈSE] — mais tu as perdu un état de santé ; reset BL (SS) |

> **À retenir** : une palette pré-jetée qu'il casse ≈ **18 s** de chase contre un 115 %, un stun + casse ≈ **33 s**, un fast vault qu'il suit ≈ **10 s**, un slow vault qu'il suit ≈ **3 s**. Ces ordres de grandeur expliquent presque toutes les décisions de chase.

Limites :
- Les secondes supposent qu'après l'interaction tu cours en ligne droite. Sur un tile, la distance se convertit autrement (refaire un cycle, atteindre le tile suivant).
- Contre un tueur à distance ou à mobilité, les mètres valent beaucoup moins : un tir, un blink ou un rush ne « rattrape » pas à 0,6 m/s.
- En pratique, le tueur ne suit pas une fenêtre qu'il peut contourner : la table compare des ordres de grandeur, elle ne prédit pas une chase.

### La condition de loop sûre se compare en TEMPS, pas en mètres

C'est la correction la plus importante de l'audit pass 14 (P03). L'intuition « mon trajet est plus court que le sien, et la différence dépasse la fente » est **fausse**, parce qu'elle oublie qu'il court plus vite que toi.

Condition correcte (CALC ; fente INC) :

```
Boucle sûre si :   ton trajet × (v_tueur / 4,0)  <  son trajet − portée de fente

  v_tueur / 4,0 = 1,15 contre un 4,6   |   1,10 contre un 4,4
  + environ 0,2 m par seconde de trajet et par palier de Bloodlust
```

**Exemple** : ton trajet 10 m, le sien 13 m, fente 2,5 m.
- Intuition en mètres : 13 − 10 = 3 m > 2,5 m → « sûr ».
- Calcul en temps : il dispose de 13 − 2,5 = **10,5 m** ; il lui en faut 10 × 1,15 = **11,5 m** (4,6) ou 11 m (4,4) → **pas sûr**. Il faudrait que son trajet dépasse ≈ 14 m (4,6) ou 13,5 m (4,4), sans Bloodlust.

> **Erreur fréquente** : greeder un tile qui « a l'air » sûr parce que tu passes par l'intérieur. Sur un cycle de 10 m, un 115 % récupère 1,5 m ; à Bloodlust max, il en récupère 3.

En jeu, personne ne mesure les trajets au mètre près : l'usage pratique est de **garder une marge** [HEURISTIQUE], et de savoir que cette marge fond à chaque palier de Bloodlust.

Détail : `kb/research/batch6_chase_tech.md` §2, T11, T18 ; `kb/audit/pass14_lot6_chase.md` (P01, P03).

---

## 3.3 Les fondamentaux : vitesse, fente, vaults, palettes, Bloodlust

Sauf mention [FACT], tout ce qui suit est [HEURISTIQUE] ou [SITUATIONNEL].

### T01 — Tenir W : vitesse et distance en ligne droite [Débutant]

- **QUOI** : courir droit vers un point sûr plutôt que de boucler, en utilisant l'avance comme ressource.
- **POURQUOI** : tu cours à 4,0 m/s, le tueur à 4,6 ou 4,4 m/s, blessé ou sain [FACT] (VM). Le rapprochement est lent et calculable : tenir W « achète » `écart / v_r` secondes **sans consommer aucune ressource de la carte**. La Bloodlust accélère ce rapprochement à 15 / 25 / 35 s.
- **QUAND** [SITUATIONNEL] :
  - ≥ 8-10 m d'avance au début de la poursuite et un tile à portée ;
  - contre un tueur 110 % (chaque mètre vaut 2,5 s) ;
  - pour **traverser une dead zone** vers une zone riche en palettes ;
  - pour éloigner la chase des gens à finir (zoning inversé, 3.8) ;
  - contre certains tueurs anti-loop dont le pouvoir punit plus la boucle que la ligne droite (le seed classait ainsi Legion, Clown, Doctor : **à confirmer tueur par tueur**, voir le chapitre des tueurs).
- **COMMENT** : choisir la destination **avant** de partir ; courir droit sans te retourner longuement (le son suffit, voir T16) ; compter les secondes (la Bloodlust court aussi).
- **CONTRE** (ce que fait le tueur) : couper l'angle vers ta destination probable ; utiliser son pouvoir dans l'open ; lâcher la chase si l'avance est trop grande (3.8, abandon) ; perks de Haste ou d'Hindered.
- **CAS D'ÉCHEC** :
  - tueur à distance ou à mobilité (Huntress, Deathslinger, Blight, Nurse…) : la ligne droite est exactement ce qu'il veut ;
  - écart à combler < 5 m contre un 115 % : ≈ 8 s au mieux, puis un coup gratuit ;
  - course vers un mur de carte, un coin vide ou un tile déjà vidé ;
  - Bloodlust déjà à +0,4/+0,6 : le rapprochement est multiplié par ≈ 1,7-2 (4,6) ou 2-2,5 (4,4) (CALC) ;
  - courir vers ses alliés sur un gen.
- **EXERCICE « Chronomètre en ligne droite »** : au début de chaque poursuite, annonce à voix haute l'écart estimé et le temps prévu avant contact (table 3.2), puis vérifie en VOD. Métrique : erreur entre temps prévu et temps réel avant le premier coup ou la première ressource. Réussite : erreur < 3 s sur 10 poursuites consécutives.

### T02 — Fente (lunge), attaque de base et cooldowns [Débutant]

- **QUOI** : l'attaque de base du tueur comprend une fente (accélération courte) puis, touchée ou ratée, un cooldown pendant lequel il est fortement limité.
- **POURQUOI** :
  - pendant la fente, la vitesse vise **~6,9 m/s** quelle que soit sa classe [FACT] (SS) ; durée et distance : **[INCERTAIN]** (~0,87-1 s, ~2 m de gain, portée totale ~6 m selon des joueurs en désaccord) ;
  - cooldown **2,7 s** après un coup réussi (VM), **1,5 s** après un coup raté ou obstrué (SS) ;
  - le survivant touché reçoit **1,8 s** de boost (VP), ×1,65 → 6,6 m/s (SS) ;
  - donc une fente ratée t'offre jusqu'à 1,5 s « gratuites » ; un coup reçu t'offre une fenêtre de 2,7 s + 1,8 s à convertir en distance ;
  - en portant un survivant, le tueur n'a que la Quick Attack, sans fente (SS).
- **QUAND** : faire rater la fente **près d'un obstacle** (coup obstrué = 1,5 s) ; après un coup reçu, utiliser le boost pour **atteindre** un tile ou une fenêtre (un fast vault garde l'élan, SS).
- **COMMENT** : après un coup, cours **droit** vers la ressource la plus proche ; si c'est une fenêtre, arrive droit dessus (≥ 2,5 m de course droite) pour obtenir le fast vault.
- **CONTRE** : le tueur retient sa fente pour frapper au bout de ton vault ; frappe à courte portée sans fente complète près des obstacles ; perks de réduction de cooldown (le seed cite Unrelenting et Keep Them Waiting, non vérifiées ici).
- **CAS D'ÉCHEC** :
  - zigzaguer dans l'open contre un tueur qui garde sa fente : tu perds de la distance ;
  - s'arrêter ou tourner juste après un coup (boost gâché) ;
  - vaulter une fenêtre **en angle** pendant le boost : medium vault 0,9 s, élan remis à zéro ;
  - croire à une portée de fente fixe et « visible » : elle dépend de l'angle, de la latence (T21) et des obstacles.

> **Erreur fréquente** : la règle du seed « après un coup, ne vaultez pas, le vault annule l'élan » est **fausse pour le fast vault**, qui garde l'élan (SS). Ce qui reste [INCERTAIN] : si le boost du coup continue pendant et après le fast vault.

- **EXERCICE « Convertir le coup »** : sur 20 coups reçus (VOD), note où tu étais 3 s après le coup. Métrique : % de coups suivis d'une arrivée sur un tile ou d'une distance ≥ 8 m. Réussite : ≥ 70 %.

### T03 — Vaults de fenêtre (fast / medium / slow) et vault du tueur [Débutant]

- **QUOI** : franchir une fenêtre ; trois vitesses selon l'élan et l'angle.
- **POURQUOI** [FACT] (SS) : fast 0,5 s (bruyant, garde l'élan) ; medium 0,9 s (angle ou élan insuffisant, élan à zéro) ; slow 1,5 s (pas de notification de bruit fort) ; tueur 1,7 s. Condition du fast : ≥ 2,5 m de course droite (angle toléré INC). Le 3e vault d'une fenêtre dans une même poursuite est permis, puis elle est bloquée **30 s pour toi seul**. (CALC) Un fast vault suivi rapporte +4,8 m (≈ 10 s) ; un slow vault suivi seulement +0,8 m.
- **QUAND** :
  - fast vault quand le tueur ne peut pas te toucher pendant les 0,5 s **et** que son chemin pour te rejoindre est plus long que le tien (en temps, voir 3.2) ;
  - slow vault **volontaire** (silencieux) pour ne pas signaler ta position hors LOS : fin de chase, décrochage furtif [SITUATIONNEL].
- **COMMENT** : prépare l'approche 2-3 m avant, bien droite ; compte tes vaults (1, 2, 3 → bloquée) ; décide du côté **après** que le tueur s'est engagé, pas avant.
- **CONTRE** : se placer pour frapper à la sortie ; faire croire qu'il contourne puis revenir (double-back tueur) ; Bamboozle ; te forcer au 3e vault pour bloquer la fenêtre.
- **CAS D'ÉCHEC** :
  - tueur à portée de fente pendant ton vault (tu es immobile 0,5-0,9 s) ;
  - 3e vault qui te coupe la fenêtre 30 s → tu perds le tile ;
  - fenêtre dont la sortie mène à une dead zone ;
  - Bamboozle (blocage 8-16 s pour tous) : ne compte pas sur un aller-retour immédiat ;
  - arriver en angle (medium vault) ; vaulter par réflexe alors que le tueur n'a pas choisi son côté.
- **EXERCICE « 10 fast vaults »** : partie personnalisée ; 5 fenêtres, 10 approches chacune depuis 0°, 30°, 45° ; note le type de vault. Métrique : % de fast vaults et angle limite. Réussite : ≥ 95 % de fast vaults depuis une approche droite ≥ 2,5 m, et connaître ton angle limite (ta mesure est une donnée : l'angle n'est pas documenté).

### T04 — Palettes : drop, fenêtre de stun, casse, vault de palette [Débutant]

- **QUOI** : faire tomber une palette pour bloquer le passage, étourdir le tueur (stun) ou le forcer à casser ou contourner.
- **POURQUOI** :
  - [FACT] stun **2 s** (SS), seulement si la palette atteint ~50 % d'abaissement avec le tueur dans la zone ; un tueur au bord peut en sortir. Durée d'abaissement : INC ;
  - casse **2,34 s** (VM), 1 s à la tronçonneuse, gratuite ou coûteuse selon les pouvoirs (3.1) ; Enduring réduit le stun de 40-50 % ;
  - tu vaultes une palette baissée en 1,1 s (rapide, bruyant) ou 2 s (lent, silencieux) ; le tueur ne la vaulte pas (sauf pouvoirs listés en 3.1) ;
  - casser une palette fait perdre la Bloodlust (SS) ;
  - (CALC) casse = +9,4 m (≈ 18 s contre un 4,6) ; stun + casse = +17,4 m (≈ 33 s) ;
  - la palette est une ressource **définitive et partagée** : cassée, elle disparaît pour toute l'équipe.
- **QUAND** : stun quand le tueur s'engage franchement sur la palette ; drop sans stun pour bloquer un chemin et forcer une décision (casser ou contourner). La décision fine est en T05.
- **COMMENT** : jette quand le tueur entre dans la zone, pas quand il la « menace » ; puis **pars immédiatement** pendant la casse : 2,34 s = 9,4 m.
- **CONTRE** : fausse avance (T17) pour provoquer un drop sans stun ; casser tout de suite si le tile devient infini, contourner si la palette est faible ; Enduring ; Spirit Fury (après 4/3/2 casses manuelles, la prochaine palette qui l'étourdit est cassée instantanément, le stun a lieu, SS) ; pouvoirs de casse.
- **CAS D'ÉCHEC** :
  - contre la Nurse, les palettes valent peu (elle blinke à travers) ;
  - contre une casse gratuite, un drop précoce ne coûte presque rien au tueur ;
  - palette jetée « pour rien » (tueur loin, aucune menace) : ressource d'équipe grillée ;
  - jeter trop tard (coup à travers la palette ou fente pendant l'animation) ; trop tôt en espérant un stun (le tueur s'arrête avant la zone) ;
  - revenir vaulter une palette baissée alors que le tueur est de l'autre côté prêt à casser : 1,1 s immobile.
- **EXERCICE « Timing de stun »** : avec un ami tueur en partie personnalisée, 20 approches sur 3 palettes ; il varie la vitesse d'engagement. Métrique : stuns / tentatives, coups reçus pendant l'animation. Réussite : ≥ 70 % de stuns sur engagement franc et 0 coup à travers la palette sur les 10 derniers essais.

### T05 — Respect, greed, pre-drop : la décision de palette [Intermédiaire]

- **QUOI** :
  - **Pre-drop** : jeter la palette avant que le tueur soit à portée, sans chercher le stun, pour garantir la distance.
  - **Greed** : garder la palette levée et continuer à boucler (ou vaulter la fenêtre) pour la réutiliser plus tard.
  - **Respect** : côté tueur, s'arrêter ou ralentir devant une palette levée pour ne pas être étourdi.
- **POURQUOI** : le pre-drop échange une ressource contre une certitude (il doit casser — 2,34 s et Bloodlust perdue — ou contourner). Le greed échange du **risque** (un coup) contre une ressource conservée et un cycle de plus. La valeur dépend de la distance, de ta santé, du pouvoir du tueur et des palettes restantes (modèle EV en 3.8).
- **QUAND — arbre de décision** [HEURISTIQUE, pas une règle] :

```
A. Peut-il me frapper avant la palette si je greed un cycle de plus ?
     oui -> pre-drop (ou changer de plan)          non -> B
B. Suis-je blessé, Exposed, au dernier crochet ?
     oui -> la marge exigée augmente fortement (un coup = fin de chase)
C. A-t-il un pouvoir anti-loop prêt (tir, dash, blink, casse) ?
     oui -> voir « le pre-drop n'est pas universel » ci-dessous
D. Reste-t-il des palettes accessibles et un tile suivant atteignable ?
     non -> la palette vaut plus : greed prudemment ou tenir W avant de la consommer
E. Mes alliés profitent-ils de chaque seconde (gens en cours, loin) ?
     oui -> le temps compte plus que la ressource
     non (tous blessés, crochet, 2 restants) -> survie et palettes d'avenir d'abord
F. La Bloodlust est-elle haute ?
     oui -> la casse forcée la remet à 0 : le pre-drop gagne plus
```

- **Le pre-drop n'est pas universel** (correction d'audit ; aligné sur le handbook de counterplay et le chapitre des tiles). Contre un tueur qui a un pouvoir sur les palettes, trois cas **différents** [HEURISTIQUE fondée sur des FACT] :
  1. **La casse lui coûte** — **Blight**. Depuis **9.6.0**, casser une palette baissée (au pied ou en Lethal Rush) ramène ses tokens de Rush à **2 sous le max** et remet la recharge en cours à 0 % (VP). La note **9.6.2** corrige un bug où il ne perdait **aucun** token en cassant avec 3 tokens ou moins : en LIVE, la casse coûte donc aussi des tokens à bas stock (quantité exacte [INCERTAIN]). Le pre-drop contre lui est **le plus souvent** rentable. Limites : il peut contourner sans casser (la palette devient un mur) ; chaque pre-drop consomme une palette ; quand il est déjà à sec (plusieurs Rushes, fatigue), un drop normal suffit ; contre un Blight qui ralentit avant la palette pour obtenir le pre-drop, mélange avec des départs anticipés sans drop.
  2. **Son pouvoir punit l'attente à la palette** (Doctor, Cannibal, Nemesis MR2+, Mastermind, Lich) → pre-drop **puis départ immédiat** vers le tile suivant, pas « pre-drop puis tenir ».
  3. **La casse est gratuite et le drop tardif n'est pas plus puni** (Demogorgon Shred, Oni en Fury, Ghoul avec tokens, Dark Lord loup) → la palette vaut surtout le **stun** ; la garder levée n'a de sens que si son pouvoir est en recharge ou inutilisable à cet endroit.
- **COMMENT** : réévaluer **à chaque cycle** (la Bloodlust monte, le tueur apprend ton trajet) ; en SoloQ, supposer que la palette suivante a peut-être été consommée par un allié.
- **CONTRE** : alterner respect et non-respect pour rendre ton greed risqué ; casser tôt la palette pour interdire le greed ; zoner vers la palette cassée (3.8) ; contre un casseur par add-on, identifie l'add-on avant de changer de plan.
- **CAS D'ÉCHEC** :
  - la règle du seed « au moins deux tours de fenêtre avant de toucher la palette » est **trop absolue** : contre un tueur à pouvoir, blessé, ou quand le tueur coupe le tile, le 2e tour coûte un coup (situation 1, 3.9) ;
  - « une god pallet se garde » : faux si la garder coûte un coup, si le tueur casse la chase de toute façon, ou s'il la casse gratuitement ;
  - greed par habitude, sans réévaluer ; pre-drop contre un tueur loin (ressource gaspillée).
- **EXERCICE « Justifier chaque palette »** : après 10 parties, pour chaque palette jetée, écris en une ligne la réponse à A-F. Métrique : % de palettes jetées avec une raison valable ; coups reçus en greed ; palettes jetées sans menace. Réussite : ≤ 1 palette « gratuite » et ≤ 1 coup pris en greed sur une palette safe par partie.

> **À retenir** : « toujours greed » et « toujours pre-drop » sont faux tous les deux. Blessé, la marge exigée est environ deux fois plus grande (modèle 3.8).

### T06 — Bloodlust [Débutant]

- **QUOI** : bonus de vitesse du tueur quand une poursuite dure sans interruption.
- **POURQUOI** : +0,2 / +0,4 / +0,6 m/s à 15 / 25 / 35 s [FACT] (VM) ; perdue en cassant une palette, en frappant, en utilisant son pouvoir (SS) ; régresse en fin de poursuite (unité inconnue) ; la fente l'ignore (SS). (CALC) À Bloodlust max, un 115 % se rapproche à 1,2 m/s (le double), un 110 % à 1,0 m/s (2,5 fois la base).
- **QUAND** (côté survivant) : forcer une casse de palette **au bon moment** pour remettre la Bloodlust à zéro ; casser la poursuite (T07) pour la faire régresser ; savoir qu'un tueur qui contourne une palette pour garder sa Bloodlust accepte de perdre le temps du détour.
- **COMMENT** : tenir une horloge mentale depuis le début de la chase ; la remettre à 0 à chaque coup, casse ou usage du pouvoir. Le 1er palier (15 s) tombe souvent pendant la 1re boucle.
- **CONTRE** : éviter de casser les palettes faibles (contourner) ; ne pas utiliser son pouvoir inutilement ; certains pouvoirs sont exclus (Krasue Head Form, VP).
- **CAS D'ÉCHEC** :
  - croire qu'un stun remet la Bloodlust à zéro : **non documenté** (le seed l'affirmait) ;
  - boucler longtemps un tile faible en fin de chase : à +0,6, un tile qui « tenait » ne tient plus ;
  - attribuer à la « latence » un coup qui s'explique par la Bloodlust.
- **EXERCICE « Horloge de Bloodlust »** : compte à voix haute depuis le début de chase, reset à chaque coup / casse / pouvoir. Métrique : écart avec la VOD. Réussite : palier correct dans ≥ 90 % des vérifications sur 10 chases.

Détail : `kb/research/batch6_chase_tech.md` T01-T06 ; Blight : `kb/research/batch4_killers_g3.md` §21 ; palettes et pouvoirs : `kb/research/batch7_tiles.md` §5.2.

---
