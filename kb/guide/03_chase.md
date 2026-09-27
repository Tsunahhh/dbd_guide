# 3. Mouvement, caméra et théorie de la chase

> **Périmètre** : ce chapitre couvre la mécanique fine de la chase côté survivant (vitesses, fente, vaults, palettes, Bloodlust, ligne de vue, caméra, son, feintes, pathing) puis la **chase theory** : raisonner en secondes gagnées ou perdues pour l'équipe. Les tiles et loops en détail sont au chapitre des tiles (`kb/research/batch7_tiles.md`), les réponses tueur par tueur au chapitre des tueurs, la macro (crochets, soins, tempo global) au chapitre macro.
>
> **Version** : LIVE 10.1.2a (17/09/2026). Rien ici ne vient du PTB 10.2.0 (Survivor Intent System, etc. : non LIVE). **Mode 1v4 uniquement** : aucun chiffre ni modèle de ce chapitre ne s'applique tel quel au 2v8.

## 3.0 Comment lire ce chapitre

**Étiquettes** : **[FACT]** valeur vérifiée, avec sa confiance **(VP)** note officielle, **(VM)** wiki + note, **(SS)** wiki seul ; **(CALC)** arithmétique faite uniquement sur des valeurs vérifiées (aussi fiable que sa moins fiable entrée, et toujours une simplification : ligne droite, vitesses constantes) ; **[HEURISTIQUE]** règle de joueur non sourcée ; **[SITUATIONNEL]** conseil qui s'inverse selon le contexte ; **[HYPOTHÈSE]** modèle plausible non confirmé — **tous les modèles de 3.8 en sont** ; **[INCERTAIN]** / **(INC)** valeur non documentée.

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

Gen solo **90 s** (VM) ; coop 85 / 70 / 55 % par personne (SS) ; coup de pied de gen 1,8 s, −5 % puis −0,25 charge/s (VM) ; phase de crochet **70 s** (VP) ; accrocher / décrocher 1,5 s / 1 s (SS) ; soin d'un état **16 s**, Med-Kit en auto-soin −33 %, Mangled +25 % (SS) ; Deep Wound : mending 10 s seul, 6 s par un allié (VP) ; wiggle 16 s (SS).

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

Limites : ces secondes supposent une ligne droite après l'interaction (sur un tile, la distance sert plutôt à refaire un cycle ou à atteindre le tile suivant) ; contre un tueur à distance ou à mobilité, les mètres valent beaucoup moins ; en pratique, le tueur ne suit pas une fenêtre qu'il peut contourner.

### La condition de loop sûre se compare en TEMPS, pas en mètres

C'est la correction la plus importante des audits pass 14 (lot 6, P03 ; précisée par l'audit du lot 7). L'intuition « mon trajet est plus court que le sien, et la différence dépasse la fente » est **fausse** pour deux raisons : elle oublie qu'il court plus vite que toi, et elle oublie le **temps où tu es immobile dans la « porte »** (fenêtre, palette) pendant qu'il continue d'avancer.

Condition correcte (CALC ; fente et durée de drop INC) — tu dois avoir **fini** de franchir la porte avant qu'il soit en portée de fente :

```
trajet_S / 4,0  +  t_porte_S   <   (trajet_K − fente) / v_K  +  t_porte_K

t_porte_S (toi, immobile) : fast vault 0,5 s | medium 0,9 s | vault de palette 1,1 s
                            drop de palette : durée non documentée (INC)
t_porte_K (tueur)         : 0 s'il contourne | 1,7 s s'il suit par la fenêtre | 2,34 s s'il casse
v_K                       : 4,6 ou 4,4 m/s + Bloodlust        fente utile : ~2-2,5 m (INC)
```

**Traduit en mètres** (multiplier par `v_K`), le trajet du tueur doit dépasser le tien de :
- **+15 %** (4,6) ou **+10 %** (4,4) ;
- **+ la fente** (~2-2,5 m) ;
- **+ ~0,2 m par seconde de trajet et par palier de Bloodlust** ;
- **+ `v_K × t_porte_S`** : ≈ **2,3 m** pour un fast vault (2,2 m contre un 4,4), ≈ 4,1 m pour un medium vault, ≈ **5,1 m** pour un vault de palette (4,8 m contre un 4,4).

**Exemple** : ton trajet 10 m jusqu'à une fenêtre, le sien 13 m (il contourne), fente 2,5 m, tueur 4,6 sans Bloodlust.
- Intuition en mètres : 13 − 10 = 3 m > 2,5 m → « sûr ».
- En temps : toi 10 / 4,0 + 0,5 = **3,0 s** ; lui (13 − 2,5) / 4,6 ≈ **2,3 s** → **pas sûr**, il est en portée pendant ton vault.
- Trajet tueur nécessaire : > 3,0 × 4,6 + 2,5 ≈ **16,3 m** (≈ 15,7 m contre un 4,4). Sans compter la porte, on aurait trouvé 14 m : c'est exactement l'écart entre une fenêtre « safe » et une fenêtre où l'on prend le coup en plein vault.
- Même trajet mais porte = vault de palette baissée (1,1 s) : il faut > ≈ 19,1 m de trajet tueur (≈ 18,3 m contre un 4,4).

> **Erreur fréquente** : greeder un tile qui « a l'air » sûr parce que tu passes par l'intérieur. Sur un cycle de 10 m, un 115 % récupère 1,5 m par la vitesse, 2,3 m de plus pendant ton fast vault, et encore 2 m à Bloodlust max.

En jeu, personne ne mesure les trajets au mètre près : l'usage pratique est de **garder une marge** [HEURISTIQUE], de savoir que chaque porte « coûte » quelques mètres, et que la marge fond à chaque palier de Bloodlust.

Détail : `kb/research/batch6_chase_tech.md` §2, T11, T18 ; `kb/research/batch7_tiles.md` §2.1 ; `kb/audit/pass14_lot6_chase.md` (P01, P03) ; `kb/audit/pass14_lot7_tiles.md`.

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
- **POURQUOI** : fente à **~6,9 m/s** quelle que soit la classe (SS), durée et distance [INCERTAIN] ; cooldown **2,7 s** après un coup réussi (VM), **1,5 s** après un coup raté ou obstrué (SS) ; boost de **1,8 s** au survivant touché (VP). Une fente ratée t'offre jusqu'à 1,5 s « gratuites » ; un coup reçu, une fenêtre de 2,7 s + 1,8 s à convertir en distance. En portant un survivant, pas de fente (Quick Attack seulement, SS).
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
- **POURQUOI** : fast 0,5 s / medium 0,9 s / slow 1,5 s contre 1,7 s pour le tueur ; fast = ≥ 2,5 m de course droite ; blocage 30 s pour toi après le 3e vault (tout en 3.1). (CALC) Un fast vault suivi rapporte ≈ 10 s, un slow vault suivi ≈ 3 s.
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
- **POURQUOI** : stun **2 s** à ~50 % d'abaissement (SS) ; casse **2,34 s** (VM) qui lui fait perdre la Bloodlust ; tu vaultes la palette baissée en 1,1 s (bruyant) ou 2 s (silencieux), lui non (sauf pouvoirs, 3.1). (CALC) casse = +9,4 m (≈ 18 s contre un 4,6) ; stun + casse = +17,4 m (≈ 33 s). La palette est une ressource **définitive et partagée** : cassée, elle disparaît pour toute l'équipe.
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

## 3.4 L'information en chase : poursuite, LOS, tache rouge, caméra, animation, son

### T07 — Début / fin de poursuite, ligne de vue (LOS), chase break [Intermédiaire]

- **QUOI** : la « poursuite » est un **état du jeu** (musique de chase, Bloodlust, perks de chase), distinct du fait d'être suivi. Le chase break consiste à sortir de cet état ou à se faire perdre.
- **POURQUOI** : conditions de début (≤ 12 m, champ de vision, tu cours) et de fin (> 18 m, casier 5 s, > 8 s sans LOS, hors ±35°) en 3.1 (SS). Les griffures n'apparaissent qu'en course et vivent 10 s : marcher efface ta piste.
- **QUAND** : casser la LOS derrière des murs hauts, dans le maïs ou un bâtiment, puis **marcher** (pas de griffures) ou s'accroupir ; utile contre un tueur sans info d'aura et pour faire régresser la Bloodlust.
- **COMMENT** : casse la LOS, fais encore 1-2 s de course pour sortir de sa ligne probable, puis passe en marche ; choisis un endroit avec deux sorties.
- **CONTRE** : suivre griffures, flaques et grognements ; couper vers la sortie logique ; vérifier les casiers proches ; perks d'aura.
- **CAS D'ÉCHEC** :
  - courir après la perte de LOS (10 s de griffures te trahissent) ;
  - tu es blessé sans Iron Will ni Elusive (grognements, sang) ; le tueur a une info d'aura ;
  - entrer dans un casier sous ses yeux ; t'arrêter dans un cul-de-sac ;
  - croire que la musique de chase qui s'arrête = tueur parti (il regarde peut-être juste ailleurs : condition d'angle).

> **Erreur fréquente** : la statistique du seed « un survivant perdu près d'un casier y est 1 fois sur 3 » n'est pas mesurable. Ne l'utilise pas.

- **EXERCICE « 8 secondes »** : à chaque perte de LOS derrière un mur haut, choisis : marcher 3-5 s puis t'accroupir, ou continuer à courir ; note le résultat. Métrique : % de pertes de LOS converties en fin de poursuite ; secondes gagnées avant la reprise. Réussite : sur 20 cas, savoir dire quand marcher bat courir (avec vs sans info d'aura du tueur).

### T08 — Tache rouge (red stain) : lecture et moonwalk [Intermédiaire]

- **QUOI** : la lumière rouge projetée par la tête du tueur. Le **moonwalk** est la technique du tueur qui marche à reculons ou de côté pour que la tache indique une fausse direction.
- **POURQUOI** : [FACT] (SS) la tache vient de la tête, dans la direction où il **regarde et se déplace** ; il ne la voit pas ; Undetectable la supprime ; le wiki décrit la marche à reculons ou de côté autour des murs comme technique pour tromper. [HYPOTHÈSE] (déduite de cette description) : la tache suit surtout le **regard** ; quand regard et déplacement divergent, l'information ment. [INCERTAIN] : effet de regarder vers le bas, vitesse en marche arrière.
- **QUAND** : quand tu n'as pas la LOS sur le corps mais vois la tache dépasser d'un mur ; pour repérer un tueur qui attend derrière un coin (tache immobile ou qui balaie) ; combinée au TR et aux pas pour trianguler.
- **COMMENT** : utilise la tache pour **savoir où regarder**, puis décide sur le **corps** (checkspot, T14) ou sur les pas. Si tu ne peux pas voir le corps, reste à une position qui couvre les deux options (option coverage, 3.8).
- **CONTRE** : moonwalk autour des murs hauts, balayage de caméra, attente immobile, Undetectable.
- **CAS D'ÉCHEC** : tueurs Undetectable ou furtifs (Ghost Face, Wraith, Pig accroupie, Myers selon le palier) : pas de tache ; se fier à la tache alors que tu vois le corps ; croire qu'une tache qui disparaît = tueur parti ; te retourner pour chercher la tache au lieu d'écouter les pas.
- **EXERCICE « Tache vs corps »** : avec un ami tueur, 20 boucles sur un jungle gym à murs hauts ; il moonwalke ou non au hasard (tirage noté avant chaque boucle). Métrique : % de lectures correctes ; coups reçus sur un moonwalk. Réussite : ≥ 75 % de lectures correctes et 0 coup sur les 10 dernières boucles.

### T14 — Caméra, checkspots et information pendant la chase [Avancé]

- **QUOI** :
  - **Caméra en chase** : orienter la caméra vers le tueur tout en continuant à courir dans la bonne direction.
  - **Checkspot** : point du trajet où tu vois le tueur (trou dans un mur, fenêtre, muret, angle) **sans dévier** et sans perdre de distance.
- **POURQUOI** : toute décision (vaulter, jeter, double-back, partir) dépend de la position du tueur. Sans info, chaque décision est un 50/50 ; avec info, tu joues l'option sûre. Mais regarder derrière coûte : dévier, heurter le décor, rater l'approche droite d'un fast vault (≥ 2,5 m, SS). Le compromis : regarder **aux bons endroits** plutôt que souvent.
- **QUAND** [HEURISTIQUE] :
  - **avant chaque point de décision** (~1 s avant une fenêtre, une palette, un coin où un double-back est possible) : **un check par décision**, c'est la règle principale ;
  - en ligne droite : un check bref (≤ 0,5 s) seulement si le trajet devant est dégagé et mémorisé ; sinon écouter ;
  - à la perte de LOS du tueur : un check pour savoir s'il suit ou coupe ;
  - dès que le son change (TR qui monte ou baisse brusquement, pas qui s'arrêtent, bruit de pouvoir).
- **COMMENT garder le pathing en regardant derrière** :
  - mémoriser les **2 prochains points de passage** avant de tourner la caméra ;
  - regarder seulement sur des segments droits et dégagés, jamais dans un virage serré ni à l'approche d'un fast vault ;
  - utiliser les checkspots naturels du tile : ils donnent l'info sans tourner la tête ;
  - revenir face à la route **avant** d'arriver à 2,5 m de la fenêtre.
- **CONTRE** : jouer sur ce que tu vois (fausse direction, moonwalk, attente hors LOS) ; se placer là où tes checkspots ne montrent rien ; Undetectable.
- **CAS D'ÉCHEC** :
  - tueurs à distance (Huntress, Deathslinger, Trickster…) : regarder derrière dans l'open est souvent nécessaire pour esquiver mais te fait perdre la ligne ;
  - tueurs furtifs : tache et TR mentent ou manquent, la caméra devient ta seule info ;
  - tueurs à mobilité (Blight, Nurse) : l'info de dernière seconde décide de tout ;
  - regarder « par anxiété » à chaque seconde, ou ne jamais regarder (le seed « tenez droit sans vous retourner » est juste en ligne droite, faux sur les tiles) ;
  - heurter un obstacle ou rater un fast vault en regardant.
- **EXERCICE « Drill caméra »** : partie personnalisée, 10 tours de jungle gym ; à chaque tour, exactement 1 check avant la fenêtre et 1 avant la palette ; un ami tueur note tes positions. Métrique : accrochages, vaults non rapides, checks au bon endroit. Réussite : 0 accrochage et 100 % de fast vaults sur 10 tours, puis pareil en partie réelle sur 5 chases.

### T15 — Lecture d'animation [Intermédiaire]

- **QUOI** : déduire l'action du tueur de son animation avant qu'elle produise son effet.
- **POURQUOI** : chaque action a une durée connue [FACT] (casse 2,34 s, vault tueur 1,7 s, cooldowns 2,7 / 1,5 s). Reconnaître le **début** d'une action te donne tout son temps pour réagir :

| Animation vue | Temps garanti | Réaction |
|---|---|---|
| Début de casse (coup de pied) | 2,34 s | **Partir**, ne pas regarder |
| Début du vault du tueur | 1,7 s | Revaulter ou changer de côté |
| Essuyage après un coup | 2,7 s | Rejoindre un tile |
| Levée de l'arme / début de fente | — | Esquive latérale ou obstacle |
| Charge, visée, posture de pouvoir | selon le tueur | voir chapitre des tueurs |

- **QUAND** : dans tout duel rapproché ; pour savoir s'il casse ou feinte (T17).
- **COMMENT** : une action lancée = une décision prise ; réagis à l'**action**, pas au mouvement de caméra.
- **CONTRE** : ne lancer l'action qu'une fois sa décision sûre ; attendre hors de ta vue.
- **CAS D'ÉCHEC** : réagir à une fausse avance (qui n'est pas encore une action) ; rester à regarder la casse ; confondre le recul d'un stun et une casse ; la latence décale légèrement ce que tu vois (valeur INC). Qu'une casse lancée soit annulable ou non est [INCERTAIN].
- **EXERCICE « Nommer l'animation »** : en VOD, pause au premier frame de chaque action du tueur et nomme-la. Réussite : ≥ 90 % sur 50 actions, puis vérifier en partie que tu **pars** dans les 0,3 s après un début de casse.

### T16 — Lecture sonore [Intermédiaire]

- **QUOI** : situer le tueur et comprendre ses actions sans le regarder.
- **POURQUOI** : TR, musique de chase, lullabies (insensibles à Undetectable), stinger de fin d'Undetectable ; fast vault et vault rapide de palette **bruyants**, slow vault et vault lent **silencieux** ; corbeaux (4 m) (SS). S'y ajoutent pas, souffle, sons de pouvoir, casse, coup raté [HEURISTIQUE] — et tes propres grognements quand tu es blessé.
- **QUAND** : dès que regarder coûte trop (ligne droite, approche d'un fast vault) ; contre les tueurs furtifs ; pour savoir s'il casse sans te retourner.
- **COMMENT** : casque ; distinguer TR (battement) et musique de chase ; associer chaque son à une durée (« bruit de casse → 2,34 s »).
- **CONTRE** : Undetectable, marche silencieuse, feinte de départ (TR qui baisse puis revient).
- **CAS D'ÉCHEC** : absence de TR = tueur loin (erreur classique contre Ghost Face) ; perks ou add-ons qui modifient le TR ; oublier que tes propres fast vaults te trahissent hors LOS ; son mal localisé sans casque.
- **EXERCICE « Yeux fermés au TR »** : un ami tueur se place ; annonce direction et distance sans le regarder. Réussite : direction correcte à ±45° dans ≥ 80 % des essais.

Détail : `kb/research/batch6_chase_tech.md` T07, T08, T14-T16.

---

## 3.5 Techniques de tile : double-back, mindgames, pathing, coins, feintes

### T09 — Double-back [Intermédiaire]

- **QUOI** : faire demi-tour brusquement (souvent juste après être sorti de sa LOS) pour exploiter son engagement dans l'autre sens.
- **POURQUOI** : le tueur doit engager son trajet avant de savoir où tu vas ; chaque changement de sens lui fait refaire une partie du tile. Mais il récupère 0,4-0,6 m **par seconde** de trajet (1,0-1,2 m/s à Bloodlust max) : un détour de 4 m est compensé en ≈ 7-10 s sans Bloodlust, ≈ 3-4 s à Bloodlust max (CALC). **Le double-back paie sur un cycle court**, beaucoup moins sur une longue boucle. Hors LOS, il brouille aussi les griffures (elles restent 10 s sur les deux trajets).
- **QUAND** : tueur engagé loin dans l'autre sens ; tiles à murs hauts (shack, jungle gym) ; il te suit à la trace plutôt qu'à la vue ; il « précommande » un mindgame.
- **COMMENT** : double-back **sur une info** (tache, pas, corps vu à un checkspot), jamais à l'aveugle ; varier les endroits.
- **CONTRE** : couper par le centre du tile ; s'arrêter à un point qui couvre les deux sorties ; faire son propre demi-tour ; tache rouge utilisée pour faire croire à un engagement.
- **CAS D'ÉCHEC** : il a la LOS ; murs bas ; tueur à distance ou mobilité (un demi-tour prévisible offre un tir ou un blink ; contre une Nurse experte il devient lisible) ; double-back vers une fenêtre déjà vaultée 2 fois ; toujours au même endroit (appris en 1-2 boucles) ; sans info (tu cours dans ses bras).
- **EXERCICE « Double-back sur info »** : 10 parties, chaque double-back noté avec l'info qui l'a motivé. Réussite : ≥ 80 % sur info, ≥ 60 % réussis.

### T10 — Mindgames et 50/50 [Avancé]

- **QUOI** : situation où chacun doit choisir sans connaître le choix de l'autre (continuer / revenir ; vaulter / attendre ; respecter / pousser).
- **POURQUOI** : sur un tile « mindgamable », il existe au moins deux trajets pour chacun et aucun ne domine ; le résultat dépend de la **prédiction**, pas de la vitesse. Un bon mindgame survivant **réduit** le 50/50 : tu cherches la position où plusieurs options restent sûres même en cas de mauvaise lecture.
- **QUAND** : plus de palette sûre, et tile assez long pour qu'une bonne lecture rapporte un cycle entier ; tu as une info (checkspot, tache, son) que le tueur n'a pas ; équipe en retard qui a besoin de variance (3.8).
- **COMMENT** : observer ses habitudes sur les 2-3 premières boucles ; décider au dernier moment utile ; ne pas choisir 3 fois de suite la même option.
- **CONTRE** : varier ses choix, te lire sur les premières boucles, se placer pour couvrir deux options, Undetectable, moonwalk.
- **CAS D'ÉCHEC** : tile safe (inutile de prendre un risque) ; dernier état de santé sans raison ; tueur à pouvoir qui couvre les deux options ; mindgame « pour le style » ; réagir à chaque mouvement de caméra ; attendre trop longtemps (la Bloodlust monte).
- **EXERCICE « Journal de 50/50 »** : note chaque 50/50 (option, info disponible, résultat). Réussite : jamais plus de 3 fois de suite la même option ; taux de réussite **avec** info nettement au-dessus de 50 %.

### T11 — Pathing : sur et entre les tiles [Intermédiaire]

- **QUOI** : le choix du chemin — quel côté du tile, où entrer, où sortir, vers quel tile suivant.
- **POURQUOI** : un loop fonctionne quand tu as **fini de franchir la porte** (fenêtre, palette) avant qu'il arrive à portée de fente. La condition se compare en temps (3.2) : `trajet_S / 4,0 + t_porte_S < (trajet_K − fente) / v_K + t_porte_K` — en mètres, son trajet doit dépasser le tien de 15 % (10 %), plus la fente, plus ≈ 2,3 m par fast vault ou ≈ 5 m par vault de palette, plus la Bloodlust. Le pathing consiste à garder cette marge **face à tous ses trajets possibles**. Deux **palettes** sont espacées d'au moins 14-20 m [FACT] (SS) : une transition de palette à palette coûte au moins 3,5-5 s de course (CALC) ; une transition vers une fenêtre peut être plus courte.
- **QUAND** : toujours ; surtout en début de chase (choisir la zone la plus riche) et en fin de tile (transition).
- **COMMENT** : connaître le tile suivant **avant** d'en avoir besoin ; entrer dans un tile par le côté qui te laisse le choix ; en SoloQ, surveiller les palettes utilisées par l'équipe.
- **CONTRE** : te pousser vers une zone vide (zoning, 3.8) ; bloquer l'entrée du tile suivant ; casser les palettes de transition.
- **CAS D'ÉCHEC** : pathing « parfait » sur un tile qui mène à une dead zone ; ramener la chase vers les gens de tes alliés ou un crochet proche ; courir au milieu des couloirs (trajet plus long) ; se bloquer dans le décor.
- **EXERCICE « Carte mentale »** : pendant chaque chase, annonce « suivant : X » dès que tu arrives sur un tile. Réussite : 100 % des transitions annoncées, 0 transition vers une dead zone non choisie sur 10 parties.

### T12 — Cornering et T13 — Hugging [Intermédiaire]

Deux techniques sœurs : **prendre les coins au plus serré** (cornering) et **longer les murs au plus près** (hugging).

- **QUOI** : raccourcir ton trajet et casser la LOS le plus tôt possible.
- **POURQUOI** : le chemin le plus court autour d'un obstacle suit sa paroi. Chaque mètre perdu dans un virage large vaut 1,67-2,5 s de chase en ligne droite (CALC) et prolonge le temps où le tueur te voit (il peut couper l'angle ou tirer). Coller le mur maximise aussi la couverture visuelle.
- **QUAND** : tiles à murs hauts ; boucles longues ; contre les tueurs M1 (les dixièmes de seconde séparent un coup d'un stun) ; contre les tueurs à distance (moins de temps exposé) ; chaque entrée et sortie de tile.
- **COMMENT** : entre dans le virage au ras de l'angle, sans le toucher ; ne regarde pas derrière pendant un virage ; repère les aspérités qui accrochent.
- **CONTRE** : attendre au coin (« corner mindgame ») plutôt que te suivre ; couper par l'intérieur du tile ; se servir des aspérités pour frapper ; attaques de pouvoir le long du mur.
- **CAS D'ÉCHEC** : couper un coin derrière lequel il attend (le coin serré te met à portée de fente sans info) ; murs avec aspérités (perte de 0,5-1 s, non mesurée, INC) ; murs bas ou transparents (la LOS ne se casse pas) ; coller le côté intérieur d'un tile où il coupe ; tourner trop tôt et heurter l'angle, ou trop tard par peur.
- **EXERCICE « Mur collé vs couloir »** : partie personnalisée sans tueur ; 5 tours d'un même tile en collant le mur, puis 5 au milieu du couloir, chronométrés ; puis 10 tours de shack et de jungle gym. Réussite : temps par tour stabilisé (±0,5 s) et 0 accrochage sur 5 tours consécutifs. La différence mesurée est une donnée utile pour tes tiles.

### T17 — Fake vault, fake pallet (et fausse avance du tueur) [Avancé]

- **QUOI** :
  - **Fake vault** : amorcer une approche de fenêtre puis continuer (ou faire demi-tour) pour faire engager le tueur du mauvais côté ;
  - **Fake pallet** : se tenir près d'une palette levée comme pour la jeter, pour le faire respecter sans consommer la palette ;
  - **Fausse avance** (tueur) : avancer vers la palette pour provoquer un drop, puis reculer ou contourner.
- **POURQUOI** : le tueur doit décider **avant** ton action, sinon il perd le cycle. Tant que tu **peux** le stun (stun à ~50 % d'abaissement, SS), il doit respecter.
- **QUAND** : le tueur anticipe (il se place pour la sortie de vault) ; palette forte à conserver ; fin de partie où chaque seconde compte.
- **COMMENT** : règle d'or [HEURISTIQUE] — **une feinte n'est permise que si l'option réelle (vault ou drop) reste possible après la feinte**.
- **CONTRE** : pousser franchement (si tu ne jettes pas, coup) ; attendre au bord de la zone de stun ; alterner respect et pression.
- **CAS D'ÉCHEC** : tueur qui couvre les deux options (pouvoir, tile court) ; feinte qui coûte une distance que tu n'as pas ; fake vault qui te fait approcher en angle et rate le vrai fast vault ; répéter la même feinte ; feinter alors que tu étais en sécurité ; rester trop longtemps à la palette.
- **EXERCICE « Feinte avec plan B »** : note chaque feinte. Réussite : ≥ 50 % de feintes utiles (tueur mal placé), 0 coup pris sur feinte sur 10 parties.

Détail : `kb/research/batch6_chase_tech.md` T09-T13, T17 ; tiles : `kb/research/batch7_tiles.md`.

---

## 3.6 Gérer la chase : distance, ressources, pre-run

### T18 — Distance management [Intermédiaire]

- **QUOI** : garder en permanence une distance suffisante par rapport à **tous** les trajets possibles du tueur, et savoir quand la dépenser.
- **POURQUOI** : la distance se convertit en temps (1 m ≈ 1,67 s contre un 115 %, 2,5 s contre un 110 %, sans Bloodlust). Elle se **gagne** par les ressources (vault, stun, casse), les erreurs du tueur (fente ratée : 1,5 s) et le coup reçu (boost 1,8 s). Elle se **perd** en ligne droite, avec la Bloodlust, dans les virages larges, sur une feinte ratée, sur un slow ou medium vault, et pendant chaque seconde où tu es immobile dans une porte.
- **QUAND** : toujours. La question à te poser en arrivant sur un tile : « combien de mètres d'avance me faut-il pour que ce tile soit sûr ? » — réponse par la condition en temps de 3.2.
- **COMMENT** : arrive sur chaque tile avec une marge ; dépense une ressource seulement si elle achète une distance **utile** (tile atteint, chase break, cycle de plus).
- **CONTRE** : couper les angles, zoner, attaques à distance, Haste.
- **CAS D'ÉCHEC** : entrer dans un tile sans avance (tu n'as pas le temps de choisir le côté) ; ignorer la Bloodlust ; oublier que contre un tueur à mobilité la distance brute vaut peu ; « trop » de distance peut faire lâcher la chase (bon si le tueur perd du temps à chercher, mauvais s'il trouve un allié plus faible).
- **EXERCICE « Budget en mètres »** : annonce « +X m » en arrivant sur chaque tile ; compare à la VOD. Réussite : erreur ≤ 2 m sur 20 arrivées.

### T19 — Resource management [Intermédiaire]

- **QUOI** : dépenser au bon moment les ressources limitées : palettes, fenêtres (3 vaults avant blocage), états de santé, perk d'épuisement, objets, protections de décrochage.
- **POURQUOI** : palettes définitives et partagées, fenêtre bloquée 30 s après le 3e vault, Exhausted qui ne récupère pas en courant, protections de décrochage 10 s, aucun DR sur les palettes (3.1). La valeur d'une ressource dépend de ce qui reste : la dernière palette d'une zone vaut plus que la première.
- **QUAND** : penser en **budget de chase** : combien de secondes chaque ressource achète, et laquelle l'équipe utilisera ensuite.
- **COMMENT** : compte les palettes debout visibles au début de chaque chase ; garde celles qui entourent les gens restants pour la fin de partie.
- **CONTRE** : forcer tôt l'usage des ressources, casser les palettes fortes, puis ramener la chase dans la zone vidée (resource denial, 3.8).
- **CAS D'ÉCHEC** : **sur-économiser** (mourir avec 4 palettes debout autour de soi n'a rien rapporté) ; sous-économiser en début de partie (les dead zones de fin de partie coûtent des crochets) ; brûler la perk d'épuisement pour atteindre un tile faible ; vider la zone où se jouera l'endgame ; ignorer ce qu'un allié a déjà consommé (SoloQ).
- **EXERCICE « Inventaire »** : à chaque début de chase, compte les palettes debout dans ~30 m ; en fin de partie, compte celles qui restaient autour de chaque down. Réussite : moins de palettes « inutilisées » autour des downs au fil des semaines, ≤ 1 palette gratuite par partie.

### T23 — Pre-run et début de chase [Intermédiaire]

Ajoutée par l'audit (absente du seed). **Tout ce bloc est [HEURISTIQUE]** : aucune source, aucune mesure.

- **QUOI** : te mettre en route vers une zone forte **avant** que la poursuite commence, dès qu'un signal indique que le tueur arrive (TR qui monte, corbeaux, gen voisin frappé, tueur vu au loin).
- **POURQUOI** : la poursuite — et donc la Bloodlust — ne démarre qu'avec les trois conditions (≤ 12 m, dans son champ de vision, tu cours) [FACT] (SS). Chaque mètre gagné avant est une avance « gratuite » : 1,67-2,5 s de chase (CALC) sans consommer de ressource. Inversement, lâcher un gen trop tôt coûte des secondes de réparation.
- **QUAND** [SITUATIONNEL] : tu répares dans une dead zone ; tu es blessé ; tueur M1 dont l'approche s'entend ; tu sais qu'il vient vers toi (il a frappé le gen voisin, raté un allié à côté).
- **COMMENT** : regarde d'**où** il arrive avant de choisir le côté ; **marche** si marcher suffit (pas de griffures) ; va vers un tile encore intact, loin des alliés.
- **CONTRE** : approche Undetectable ou par un angle masqué, patrouille qui feint de passer, perks d'aura.
- **CAS D'ÉCHEC** : pre-run au moindre TR (le TR ne dit pas qu'il vient vers toi) ; tueur furtif (pas de signal fiable) ; partir à travers l'open en vue d'un tueur à distance ; pre-run vers les gens de tes alliés ou vers un tile déjà vidé ; courir (griffures) au lieu de marcher.
- **EXERCICE « Premier contact »** : sur 10 parties, note à chaque début de chase la distance au premier contact et si tu étais déjà en route. Métrique : durée des chases avec vs sans pre-run. Réussite : une différence mesurée sur tes propres parties (aucun seuil proposé sans données).

Détail : `kb/research/batch6_chase_tech.md` T18, T19, T23.

---

## 3.7 Contact physique, réseau et esquive

### T20 — Collision et body block (vue chase) [Intermédiaire]

- **QUOI** : tueur et survivants entrent en collision entre eux et avec le décor ; un corps peut bloquer une porte, une sortie de fenêtre, un couloir.
- **POURQUOI** : observation constante mais **non chiffrée** (taille des capsules : INC). Le tueur peut te coincer ; un allié peut te bloquer involontairement ; les aspérités accrochent.
- **QUAND / COMMENT** : body block volontaire pour un allié blessé seulement si l'échange vaut un coup (3.8.4) ; ne jamais fuir dans une pièce à une seule sortie ; vaulter vers un espace où il ne peut pas se tenir devant la sortie.
- **CONTRE** : body block à la sortie d'une fenêtre ou dans un couloir ; te pousser contre le décor ; frapper un bloqueur s'il l'accepte (le seed : seulement si cela le rapproche d'un crochet, [SITUATIONNEL]).
- **CAS D'ÉCHEC** : cul-de-sac ; boucler près d'un allié (collision et deux cibles) ; courir vers un allié pendant une chase.
- **EXERCICE** : parcours en partie personnalisée les 10 tiles les plus fréquents en collant les murs et note les points d'accroche. Réussite : une liste écrite par tile.

### T21 — Hitbox, latence, validation serveur : documenté vs rumeur [Avancé]

**Ce qui est documenté** :
- [FACT] (VP, développeur BHVR) « Hit Validation » depuis août 2020 : si la connexion du tueur est mauvaise, le serveur évalue le coup et le **rejette** si les deux étaient trop éloignés. **Avec une bonne connexion, le coup reste décidé côté client du tueur.**
- (INC, analyse communautaire non officielle de 2022) : le client du tueur calcule le chevauchement hitbox / hurtbox ; validation générale au-delà de ~300 ms seulement (**non confirmé**) ; validation événementielle pour Dead Hard et les stuns de palette ; latences cumulées favorables au tueur.
- [INCERTAIN] : forme et taille des hitbox / hurtbox (aucune documentation officielle).

**Rumeurs à ne pas traiter comme des faits** :

| Rumeur | Statut |
|---|---|
| « Certains survivants ont une hitbox plus grande » | Aucune documentation (INC) ; le choix du survivant est présenté comme sans effet mécanique |
| « Tous les coups sont vérifiés par le serveur » | **Faux** avec une bonne connexion du tueur (VP) |
| « Le seuil est de 300 ms » | Non confirmé officiellement |
| « Ce coup était impossible » | Impossible à trancher sans les deux points de vue enregistrés |

- **Conséquence pratique** [HEURISTIQUE] : ce que le tueur voit de toi est légèrement en retard sur ce que tu vois ; un coup « derrière la fenêtre » ou « après la palette » peut être valide chez lui. Donc **ajoute une marge** : quitte la palette ou la fenêtre un peu plus tôt, ne compte pas sur une esquive au dernier dixième. Un stun vu sur ton écran peut ne pas s'appliquer (validation événementielle, selon l'analyse communautaire).
- **CONTRE** : rien à « exploiter » volontairement ; [HYPOTHÈSE] un tueur qui frappe tôt au bout de sa fente profite davantage de la latence.
- **CAS D'ÉCHEC** : attribuer à la latence des coups dus à la Bloodlust, à un medium vault, à la porte oubliée (3.2) ou à une fente mal évaluée ; jouer « au pixel ».
- **EXERCICE « Autopsie de coup »** : pour 20 coups « injustes » en VOD, vérifie le palier de Bloodlust, le type de vault, la distance au début de la fente. Réussite : savoir classer chaque cas ; si la majorité s'explique sans latence, travaille la marge (T18) plutôt que le réseau.

### T22 — Le « 360 » [Avancé]

- **QUOI** : pivoter autour du tueur au moment de sa fente pour la faire rater.
- **POURQUOI** : pendant la fente (~6,9 m/s, SS), le tueur tourne moins vite qu'il n'avance ; un changement d'angle brusque à courte distance peut sortir de sa trajectoire. Coup raté = cooldown 1,5 s (SS) ≈ jusqu'à +6 m (CALC). Vitesse de rotation / sensibilité de caméra du tueur : INC (réglages, plateforme).
- **QUAND** : **dernier recours** en terrain ouvert contre un M1 à courte distance quand aucune ressource n'est atteignable [SITUATIONNEL]. Le seed le présentait comme « utile » en général : trop absolu.
- **COMMENT** : attends qu'il **lance** la fente, puis change d'angle franchement ; repars aussitôt vers une ressource.
- **CONTRE** : retenir la fente, viser ta position de sortie, frapper sans fente complète.
- **CAS D'ÉCHEC** : attaques de pouvoir à distance ou de zone ; tueur qui attend ta rotation ; latence élevée ; tu pouvais encore atteindre un tile ; 360 trop tôt ; 360 qui te ramène vers lui.
- **EXERCICE « 360 mesuré »** : avec un ami tueur M1, 20 tentatives à courte distance dans l'open. Le seuil n'est **pas** 50 % : si le coup était **inévitable** (aucune ressource atteignable), tout taux > 0 est un gain ; si tu pouvais atteindre un tile, un échec coûte un coup alors qu'un succès rapporte au plus ≈ 11 s : il faut un taux très élevé. Un taux mesuré contre un ami surestime ton taux contre un tueur expérimenté.

Détail : `kb/research/batch6_chase_tech.md` T20-T22.

---

## 3.8 Chase theory avancée : raisonner en secondes [Expert]

> **Avertissement** : tous les modèles de cette section sont des **[HYPOTHÈSE]** construites sur des valeurs vérifiées. Les paramètres clés (`p`, `T_loop`, `C_hit`, efficacité `e`, coût d'un crochet) **ne sont pas mesurés**. Les modèles servent à **ordonner** les options et à rendre visibles les facteurs, pas à calculer un seuil à appliquer en partie. En partie, utilise l'arbre de T05 ; les modèles servent à relire tes VOD.

### 3.8.1 L'unité : la seconde de chase convertie en générateurs

- [FACT] (VM) 1 gen = 90 s-s ; 5 gens = 450 s-s.
- Modèle : **valeur d'1 s de chase = `n × e` s-s**, où `n` = alliés qui réparent **chacun un gen différent** (0 à 3) et `e` = efficacité réelle (trajets, skill checks, interruptions). `e` = **0,8** ici [HYPOTHÈSE] ; `e` peut dépasser 1 (Great skill check +1 %, SS ; boîtes à outils, perks) ou chuter (skill check raté −10 % + 3 s bloquées, SS ; régression). Les autres chapitres utilisent parfois `e` = 1 : les chiffres ne se comparent qu'à `e` égal.

| Durée de chase | n = 3, e = 1 | n = 3, e = 0,8 | n = 2, e = 0,8 | n = 1, e = 0,8 |
|---|---|---|---|---|
| 20 s | 0,67 gen | 0,53 | 0,36 | 0,18 |
| 30 s | 1,0 | 0,8 | 0,53 | 0,27 |
| 45 s | 1,5 | 1,2 | 0,8 | 0,4 |
| 60 s | 2,0 | 1,6 | 1,07 | 0,53 |
| 90 s | 3,0 | 2,4 | 1,6 | 0,8 |
| 120 s | 4,0 | 3,2 | 2,13 | 1,07 |

- (CALC) Si un survivant est poursuivi en permanence et que les 3 autres réparent à e = 0,8, les 5 gens tombent en 450 / 2,4 ≈ **188 s** (≈ 3 min 8 s), sans crochets, soins ni régression : c'est l'horloge que le tueur doit battre.

> **Erreur fréquente** : le seed disait « chaque seconde de chase vaut environ un tiers de gen ». Faux : c'est ≈ **1/30 de gen** (3 réparateurs, e = 1), ≈ 1/37 à e = 0,8. En revanche « 30 s de chase ≈ 1 gen avec 3 alliés » est juste dans l'hypothèse idéale.

> **À retenir** : la même chase de 30 s vaut 0,8 gen si 3 alliés réparent, 0,27 gen si un seul le fait. **La valeur de ta chase dépend autant de tes alliés que de toi.**

### 3.8.2 Ce que chaque action coûte au tueur

Casse (2,34 s), tronçonneuse (1 s), stun (2 s ; 1-1,2 s avec Enduring), vault (1,7 s), cooldowns (2,7 / 1,5 s) : voir 3.1 et 3.2. S'y ajoutent : coup de pied de gen 1,8 s (VM) ; accrochage 1,5 s (SS) ; portage à 3,68 m/s (SS), soit 20 m ≈ 5,4 s et 40 m ≈ 10,9 s (CALC) ; ramassage non documenté (INC) ; et surtout le temps de **recherche** après une chase perdue, non mesurable, souvent le plus gros coût caché [HYPOTHÈSE]. Bamboozle ramène son vault à ~1,48-1,62 s (CALC, conversion INC).

Le « prix » d'une palette n'est pas 2,34 s mais **2,34 s + 9,4 m offerts + la Bloodlust perdue** ≈ 18 s de chase contre un 115 % (CALC, 3.2). **Exception Blight** : casse instantanée en Lethal Rush, mais payée en **tokens** (9.6.0, précisé par 9.6.2, voir T05) : le prix est payé en pouvoir, pas en secondes.

### 3.8.3 Expected value (EV) d'une palette

- **QUOI** : la valeur moyenne, en secondes de chase, d'une décision de palette pondérée par les probabilités.
- **POURQUOI — le modèle** [HYPOTHÈSE] :
  - `T_loop` = secondes de chase gagnées par un cycle de plus (dépend du tile) ;
  - `p` = probabilité d'être touché pendant ce cycle ;
  - `C_hit` = coût d'un coup reçu, en secondes de chase (3.8.4) ;
  - greed d'un cycle puis drop, comparé au drop immédiat : **`ΔEV ≈ (1 − p) × T_loop − p × C_hit`** ;
  - **seuil d'indifférence** (pas une règle) : greed favorable en espérance si `p < p* = T_loop / (T_loop + C_hit)`.
  - Cohérence dimensionnelle : `C_hit (s de chase) = C_hit (s-s) / (n × e)`. Donc **moins d'alliés sur les gens → `C_hit` plus grand → `p*` plus bas → greed moins justifié**.
- **QUAND — exemples** (M1 115 %, 3 alliés chacun sur un gen, e = 0,8, `T_loop` = 10 s ; tout [HYPOTHÈSE]) :

| Cas | C_hit | p* | Avec p estimé | ΔEV | Verdict du modèle |
|---|---|---|---|---|---|
| Sain | ≈ 17 s | ≈ 0,37 | p = 0,25 | +3,25 s | greed défendable |
| Blessé (coup = au sol + crochet) | ≈ 50 s | ≈ 0,17 | p = 0,25 | −5 s | drop |
| Sain, pouvoir anti-loop prêt | ≈ 17 s | ≈ 0,37 | p = 0,5 | −3,5 s | drop ou quitter le tile |

- **Sensibilité de `p*`** (CALC sur le modèle) :

| `T_loop` | Sain, n = 3 (C = 17) | Sain, n = 2 (C = 26) | Blessé, n = 3 (C = 50) | Blessé, n = 2 (C ≈ 78) |
|---|---|---|---|---|
| 5 s (tile faible) | 0,23 | 0,16 | 0,09 | 0,06 |
| 10 s | 0,37 | 0,28 | 0,17 | 0,11 |
| 15 s (tile fort) | 0,47 | 0,37 | 0,23 | 0,16 |

  Le seuil varie d'un facteur ~8. **Robuste** : l'ordre des situations — blessé, tile faible, peu d'alliés sur les gens → presque aucun risque acceptable ; sain, tile fort, 3 alliés sur les gens → un risque modéré l'est. Blessé, le risque acceptable est environ **deux fois plus bas** que sain. **Fragile** : toute valeur précise de `p*`.
- **COMMENT** : valeur future d'une palette gardée ≈ ce qu'elle rapportera au prochain usage (≈ +9,4 m et reset, ≈ 16-18 s contre un 115 %) × la probabilité qu'elle serve encore (à toi ou à un allié). Plus la zone est pauvre, plus cette valeur monte.
- **CONTRE** : le tueur augmente ton `p` (pouvoir, mindgame, zoning) ou réduit ton `T_loop` (couper le tile, Bamboozle, casser tôt).
- **CAS D'ÉCHEC — hypothèses cachées du modèle** : (1) drop immédiat supposé sans risque ; (2) une seule décision, alors que `p` monte à chaque cycle (Bloodlust, tueur qui apprend) : le modèle ne vaut que pour le **prochain** cycle ; (3) `p` n'est pas exogène : un greed prévisible fait cesser le respect ; (4) dans la branche « coup », boost, reset de Bloodlust et palette encore debout **réduisent** `C_hit` sain, rester blessé l'**augmente** : signe net inconnu ; (5) valeur future de la palette supposée identique dans les deux branches ; (6) un état de crochet ne se convertit pas entièrement en secondes : blessé à 2 crochets, `C_hit` est **sous-estimé** ; (7) `p` n'est pas observable en direct. Erreurs de lecture : oublier `C_hit`, surestimer `T_loop` sur un tile faible, ignorer que `p` monte avec la Bloodlust.
- **EXERCICE « EV à froid »** : après 5 parties, prends 10 décisions de palette en VOD ; estime `p` et `T_loop` **avant** de regarder la suite. Réussite : ≥ 70 % de décisions cohérentes avec ton modèle, et une liste de tes biais (greed blessé, pre-drop trop tôt…).

### 3.8.4 Coût d'une blessure

- **QUOI** : ce qu'un coup reçu coûte à l'équipe, au-delà de la barre de vie.
- **POURQUOI** — composantes en s-s ([HYPOTHÈSE] sauf faits indiqués) :

| Composante | Estimation | Base |
|---|---|---|
| Soin altruiste | 16 s soigneur + 16 s soigné = **32 s-s** + trajets (≈ 10 s-s, hypothèse) | 16 s [FACT] (SS) |
| Auto-soin au Med-Kit | 16 / 0,67 ≈ **24 s-s** (+ charges) | −33 % (SS), CALC |
| Mangled | ×1,25 → 40 s-s en altruiste | SS |
| Deep Wound | mending 10 s seul ou 6 s par un allié | VP |
| Rester blessé | Prochaine chase plus courte, info au tueur (grognements, sang), un coup = au sol | mécanique FACT, valeur hypothèse |
| Coup quand déjà blessé | chase restante perdue (≈ 20-30 s-s) + crochet (≈ 80-120 s-s) ≈ **100-150 s-s** + 1 état de crochet | hypothèse |

- **Conversion en secondes de chase** : 3 alliés (2,4 s-s/s) → coup sain ≈ 42 s-s ≈ **17 s**, coup blessé ≈ **40-60 s** ; 2 alliés (1,6 s-s/s) → ≈ **26 s** et ≈ **62-94 s**. Ordres de grandeur : le soin peut ne jamais avoir lieu (chapitre macro).
- **QUAND** : décider de se soigner ou non ; décider du greed (3.8.3) ; accepter un coup volontaire (body block) quand l'échange est rentable.
- **COMMENT** : compte le coût d'un coup **avant** la décision risquée, pas après.
- **CONTRE** : laisser les survivants blessés (pression de soin) ; perks de Mangled, Haemorrhage, Broken.
- **CAS D'ÉCHEC** : « une blessure n'est pas grave puisque je cours aussi vite » — vrai pour la vitesse [FACT], faux pour le coût, qui est dans le soin ou dans la chase suivante.
- **EXERCICE « Prix du coup »** : pendant 10 parties, note pour chaque coup reçu le coût réel (soin fait ? par qui ? combien ? chase suivante plus courte ?). Réussite : connaître ta moyenne et la réduire.

### 3.8.5 Resource economy et resource denial

- **QUOI** : la carte offre un stock fini de ressources (palettes surtout ; fenêtres renouvelables mais bloquables 30 s par survivant). Le **denial** consiste à retirer ses ressources à l'adversaire.
- **POURQUOI** : palettes espacées d'au moins 14-20 m (SS), densités revues en 9.2.0 / 9.3.0 / 9.3.2 (VP), pas de DR sur les palettes (VP). Pour le tueur, casser coûte 2,34 s maintenant mais retire à **tous** un futur gain de ≈ 16-18 s : souvent rentable même quand la chase actuelle n'en a pas besoin [HEURISTIQUE]. Pour le survivant, le denial vise les ressources du tueur : Bloodlust (forcer les casses), info (marcher, LOS, Elusive après décrochage), crochets proches (sabotage), temps de pouvoir.
- **QUAND / COMMENT** : déplacer la chase vers les zones **encore riches** ; garder les palettes proches des gens restants pour la fin de partie ; en SWF, annoncer les palettes utilisées.
- **CONTRE** : casser tôt les palettes fortes, ramener les survivants vers les zones mortes.
- **CAS D'ÉCHEC** : garder des palettes jusqu'à la mort (valeur future jamais réalisée) ; déplacer la chase vers une zone riche mais pleine d'alliés sur gens ; vider une zone puis y ramener la chase.
- **EXERCICE « Carte des palettes »** : en fin de partie, dessine où les palettes ont été utilisées et où ont eu lieu les downs. Réussite : moins de downs en zone vidée sur 20 parties.

### 3.8.6 Zoning et forced path

- **QUOI** : **zoning** = se placer pour rendre des options trop dangereuses et pousser l'adversaire vers une zone choisie ; **forced path** = trajet imposé par la géométrie ou une ressource (palette baissée, fenêtre, couloir, sortie unique).
- **POURQUOI** : le tueur, plus rapide, n'a pas besoin de te toucher pour gagner : il lui suffit de couper l'accès au tile suivant pour que ta seule option soit une dead zone. Inversement, une palette baissée crée un forced path pour lui (casser 2,34 s ou contourner).
- **QUAND** : dès que le tueur **coupe** au lieu de suivre (il se place entre toi et le tile fort).
- **COMMENT** : changer de destination **tôt** ; palette baissée derrière toi dans un couloir sans détour = il doit casser ; **zoning inversé** : emmener la chase loin des gens à finir et des crochets proches de ces gens.
- **CONTRE** : c'est l'outil principal du tueur contre les bons loopers, souvent associé au resource denial.
- **CAS D'ÉCHEC** : te laisser pousser vers un mur de carte ; entrer dans un bâtiment à une seule sortie ; réagir quand il a déjà coupé ; confondre zoning et « il ne sait pas où je suis ».
- **EXERCICE « Qui choisit le trajet ? »** : en VOD, pour chaque transition, note si c'était ton choix ou un trajet imposé. Réussite : > 70 % de transitions choisies.

### 3.8.7 Option coverage

- **QUOI** : se placer de façon qu'**une** position couvre **plusieurs** options adverses.
- **POURQUOI** : un tueur au centre d'un jungle gym couvre fenêtre et palette ; un survivant placé d'où il peut rejoindre la fenêtre **ou** la palette avant le tueur, quel que soit son côté, ne dépend plus d'un 50/50. La couverture transforme un mindgame en situation d'information.
- **QUAND** : chaque fois que tu peux attendre son engagement sans perdre de distance ; en fin de chase (Bloodlust haute) pour éviter les paris.
- **COMMENT** : rester à distance de drop de la palette avec la fenêtre atteignable ; utiliser un checkspot pendant l'attente.
- **CONTRE** : se placer à l'intersection de tes deux trajets ; frapper à distance ; feinter l'engagement.
- **CAS D'ÉCHEC** : rester « au milieu » trop longtemps (Bloodlust, temps d'observation offert) ; confondre attendre et couvrir (attendre sans info = 50/50 différé) ; oublier les pouvoirs qui couvrent à distance.
- **EXERCICE** : sur 5 tiles fréquents, trouve avec un ami tueur le point d'où les deux ressources sont atteignables avant lui pour ses deux trajets. Réussite : un point validé par tile.

### 3.8.8 Information asymmetry, variance, conversion de distance

- **Information asymmetry** : tu as TR, musique, tache, sons ; il a griffures (10 s), sang, grognements, auras, alertes de bruit (fast vault, palette). Undetectable lui retire TR et tache ; Elusive te retire griffures, grognements, sang et bloque l'aura (SS). Depuis 9.6.0 tu vois le loadout de **tes coéquipiers**, pas celui du tueur (VP ; le seed disait le contraire). Crée l'asymétrie (casser la LOS, marcher, slow vault) ; ne la gâche pas (fast vault bruyant juste après la LOS cassée) ; ne crois pas à une asymétrie qui n'existe pas (perk d'aura inconnue). *Exercice* : à chaque perte de LOS, annonce ce qu'il peut savoir de toi ; réussite = action cohérente dans ≥ 80 % des cas en VOD.
- **Risque et variance** [HYPOTHÈSE] : équipe **en avance** → réduire la variance (pre-drops plus tôt, pas de mindgame inutile) ; équipe **en retard** (2 survivants, 3-4 gens) → l'augmenter (un mindgame réussi ou une très longue chase est sa seule chance). Le tueur suit la logique inverse. *Exercice* : avant chaque chase, dis « avance / égalité / retard » et ton niveau de risque.
- **Conversion de distance** : toute distance gagnée doit **acheter** quelque chose — un tile fort, une fin de poursuite (> 18 m, SS : un stun + casse, +17,4 m, peut suffire si tu cours droit ; temporisation INC), un cycle de plus. Échecs : regarder la casse ; revenir vers lui ; chase break vers l'open ; oublier que contre un tueur à mobilité la distance vaut moins. Le tueur répond en contournant au lieu de casser. *Exercice* : pour chaque stun ou casse, note ce que tu as acheté ; réussite = 0 distance gaspillée sur 10 parties.

### 3.8.9 Tempo

- **QUOI / POURQUOI** [HYPOTHÈSE] : le rythme des événements décisifs (gens finis, crochets, sauvetages). Un gen qui tombe **pendant** ta chase est du temps converti ; un crochet quand 3 gens sont à 80 % coûte moins qu'un crochet quand rien n'avance. Le tueur veut accrocher vite et enchaîner ; l'équipe veut que chaque crochet lui coûte une longue chase **et** un long portage.
- **QUAND / COMMENT** : la première chase fixe le tempo (tueur révélé à tous dès la 1re poursuite, VP) ; faire durer quand un gen est proche de la fin ; éviter une prise de risque juste avant qu'un gen ne tombe (un down interrompt 1-2 alliés).
- **CONTRE** : downs rapides enchaînés, slug, régression au bon moment.
- **CAS D'ÉCHEC** : personne ne gère le crochet (70 s par phase, VP) ; 3-4 gens laissés à 90 %.
- **EXERCICE** : note l'heure des gens et des crochets ; identifie le moment où le tempo a basculé et la décision de chase qui l'a causé.

### 3.8.10 Pressure conversion et chase « rentable »

**Modèle du coût d'un crochet pour l'équipe** [HYPOTHÈSE] : accroché qui ne répare pas (20-40 s-s) + sauveteur (trajet 15-25 s + décrochage 1 s) + soin du décroché (32 s-s) + retour sur un gen (≈ 10 s-s) = **≈ 80-120 s-s** (≈ 0,9-1,3 gen), plus 1 état de crochet sur 12 pour le tueur.

**Seuils indicatifs** [HYPOTHÈSE] (arithmétique exacte sur un modèle non vérifié : 3 alliés chacun sur un gen, e = 0,8, portage ~8 s, ramassage non compté) :

| Seuil | Condition | 3 alliés sur gens | 2 alliés sur gens |
|---|---|---|---|
| **Non-recul** (chase + portage compensent le crochet) | `n·e × (T + 8) ≥ 80-120` | **T ≈ 25-42 s** | T ≈ 42-67 s |
| **Rythme** (en plus, l'équipe suit le rythme : ≈ 37,5-50 s-s par état de crochet) | `n·e × (T + 8) ≥ 117,5-170` | **T ≈ 41-63 s** | T ≈ 65-98 s |

Ces seuils **ignorent** : (a) le temps de recherche du tueur entre deux chases (biais pessimiste) ; (b) le 3e crochet (mort : −1 réparateur pour la suite) ; (c) la phase 2 du crochet ; (d) régression, perks, 3-gens, slugs ; (e) le risque de trade au sauvetage. Ce sont des **ordres de grandeur pour relire une partie**, pas une durée minimale à tenir.

- **Exemple « chase perdue mais favorable »** : 90 s de chase, 3 alliés sur gens → 216 s-s (2,4 gens) ; portage 25 m ≈ 6,8 s + accrochage 1,5 s → ≈ 20 s-s ; coût du crochet ≈ 100 s-s → **net ≈ +136 s-s (≈ 1,5 gen)** pour 1 état sur 12. Favorable à l'équipe **à condition** que les alliés aient vraiment réparé pendant les 90 s et que ce ne soit pas le 2e ou 3e crochet du même survivant (un tunnel qui mène à une mort retire un réparateur, ce que le bilan en s-s ne capture pas).
- **Contre-exemple** : 20 s de chase, 2 alliés sur gens (le 3e vient « aider » en SoloQ) → 1,6 × 28 ≈ 45 s-s ; crochet ≈ 100 s-s → **net ≈ −55 s-s** (≈ 0,6 gen perdu).

> **Erreur fréquente** : en déduire « une chase de moins de 25 s est une faute ». Une chase courte peut être inévitable (tueur à pouvoir, dead zone, spawn) : le bon réflexe est alors de **réduire le coût du crochet** (sauvetage rapide, pas de soin inutile), pas de prendre plus de risques en chase. Autres erreurs : juger une chase au résultat (crochet ou pas) ; aller « voir » la chase d'un allié (tu retires 1 à `n`) ; soigner tout le monde après chaque crochet.

- **CONTRE** (tueur) : chases courtes, crochets proches des gens, slug, perks qui punissent le sauvetage.
- **EXERCICE « Bilan de chase »** : après chaque partie, pour chaque chase : durée, alliés sur gens, gens tombés pendant, issue. Réussite : moyenne de s-s nets positive ; les chases courtes sont analysées pour leur **cause** (tueur, carte, décision), pas comptées comme fautes.

### 3.8.11 Engagement et abandon de chase

- **QUOI** : le tueur **s'engage** quand il décide de poursuivre jusqu'au coup ; il **abandonne** quand il lâche pour une autre cible ou pour la pression de gens.
- **POURQUOI** : pour lui, chaque seconde de chase est un coût. Pour toi, ce qui compte est ce qu'il fait **après** : chercher longtemps (bon) ou trouver aussitôt un allié blessé (mauvais).
- **QUAND** : tu **veux** qu'il s'engage quand tu es sain, sur une zone riche, loin des gens ; rester « crédible » pour qu'il ne lâche pas quand un allié blessé répare à côté est [SITUATIONNEL] et risqué.
- **COMMENT** : reconnaître l'abandon (TR qui s'éloigne, tueur qui tourne vers un gen) → reprendre un gen **loin** de lui ; prévenir (SWF : vocal ; SoloQ : roue de communication / HUD).
- **CONTRE — ce qu'il pense** : la « règle des 30-40 s » du seed (lâcher si ni coup ni palette) est une **heuristique de tueur** : un tueur qui a investi 30 s sans résultat devient susceptible d'abandonner, surtout près de la fin d'un gen, mais beaucoup s'acharnent. N'y compte pas.
- **CAS D'ÉCHEC** : suivre un tueur qui abandonne pour « le reprendre » ; te soigner juste à côté (il peut revenir) ; rester visible blessé et sans ressources.
- **EXERCICE** : note chaque abandon subi (après combien de secondes ? que fait-il ensuite ?) ; repère quand tu aurais dû rester visible ou disparaître.

### 3.8.12 SoloQ vs SWF : ce qui change dans les calculs

| Paramètre | SWF | SoloQ |
|---|---|---|
| `n` (alliés sur gens) | Connu ; tu peux demander que personne ne vienne « aider » | Visible seulement au HUD ; suppose `n` plus bas [HEURISTIQUE] |
| Conséquence (modèles 3.8.3 et 3.8.10) | p* ≈ 0,37 sain / 0,17 blessé ; chase « rentable » ≈ 25-42 s | Si `n` = 2 : p* ≈ 0,28 / 0,11 ; ≈ 42-67 s |
| Ressources | Palettes et fenêtres bloquées annoncées | Une palette « de secours » a pu disparaître → valeur future des palettes visibles plus haute ; pre-drop « en comptant sur la suivante » plus risqué |
| Info sur le tueur | Observations partagées (Bamboozle probable, pouvoir, add-ons) | Chacun redécouvre ; identité révélée à tous dès la 1re poursuite (VP), loadout caché |
| Tempo | « Je tiens encore 20 s, finissez le gen » | Joue la chase comme si personne ne venait, loin des gens visibles au HUD [HEURISTIQUE] |

> **À retenir** : supposer `n` bas en SoloQ pousse à **moins de greed**, pas à « tenir coûte que coûte ».

Détail : `kb/research/batch6_chase_tech.md` §4 ; corrections : `kb/audit/pass14_lot6_chase.md` (P04-P13, P36).

---

## 3.9 Situations concrètes [Avancé]

### Situation 1 — Blessé, tueur derrière toi, palette du shack encore disponible

**Situation** : tu es blessé. Tueur M1 115 % sans pouvoir anti-loop (ex. Trapper sans piège visible autour du shack) à ~6 m derrière toi. Tu arrives au shack par la porte opposée à la palette ; palette debout, fenêtre jamais vaultée. Chase depuis ~16 s sans casse ni coup (Bloodlust +0,2). Jungle gym à ~25 m de l'autre côté. SoloQ : le HUD montre 2 alliés sur des gens différents, le 3e se soigne.

**Informations connues** : [FACT] 4,6 / 4,0 m/s, +0,2 à 15 s, casse 2,34 s, stun 2 s, fast vault 0,5 s vs 1,7 s. (CALC) rapprochement 0,8 m/s. [HYPOTHÈSE] n = 2 → 1 s de chase ≈ 1,6 s-s ; blessé → `C_hit` ≈ 100-150 s-s / 1,6 ≈ **62-94 s** de chase ; avec `T_loop` = 10 s, p* ≈ **0,10-0,14** (≈ 0,17 même avec n = 3 : la conclusion ne dépend pas de ce détail).

| Option | Analyse | Verdict |
|---|---|---|
| **A. Pré-jeter la palette** en la passant, puis partir vers le jungle gym pendant qu'il casse | S'il casse : +9,4 m et Bloodlust à 0 → écart ≈ 15 m (≈ 13 m à combler, ≈ 20 s en terrain ouvert) ; tu atteins le jungle gym en ~6 s avec ~11-12 m d'avance. S'il contourne, la palette reste un forced path et tu gagnes son détour. **Gain ≈ 18 s** (CALC), risque de coup faible (à 6 m, le drop se fait hors de portée ; restent un piège caché, un drop tardif, du temps perdu dans le shack) | **Meilleur** |
| B. Boucler la fenêtre (greed), garder la palette | Une boucle bien jouée peut rapporter ~10 s, mais avec 6 m d'avance, un 115 % et une Bloodlust qui passera à +0,4 à 25 s, il est très improbable que ton risque de coup soit sous 10-17 % [HEURISTIQUE] | EV négative dans la plupart des cas |
| C. Ignorer le shack, tenir W vers le jungle gym | Écart à combler ≈ 6 − 2,5 = 3,5 m → ≈ 4,4 s avant le coup ; il te faut ≈ 6,25 s pour 25 m. Tu tombes à ~7-8 m du jungle gym | **Perdant** |

**Décision** : A. B redevient raisonnable si tu arrives avec ≥ 10 m d'avance, **sain**, et que le tueur a montré qu'il suit au lieu de couper (alors : 1 cycle, puis drop dès qu'il s'engage côté palette).

**Variantes selon le tueur** (T05) : casse gratuite (Demogorgon, Oni en Fury, Ghoul, Dark Lord) → garde la palette pour un **stun** ou change de zone ; pouvoir qui punit l'attente (Doctor, Cannibal, Nemesis, Mastermind, Lich) → pre-drop **puis départ immédiat** ; **Blight** → pre-drop le plus souvent rentable (tokens, 9.6.0 / 9.6.2) ; Knight → un garde en chasse **contourne** une palette baissée tôt (10.1.1).

**Erreur typique** : appliquer la règle du seed « deux tours de fenêtre avant la palette » en étant blessé (le 2e tour est un pari dont l'enjeu est ≈ 60-90 s de chase, selon le modèle) ; ou pré-jeter puis **regarder** la casse au lieu de partir (2,34 s = 9,4 m jetés).

### Situation 2 — Chase longue, Bloodlust maximale, palette de filler

**Situation** : tu es sain. Chase depuis 38 s sans casse ni coup (Bloodlust +0,6). Tueur M1 115 % à ~5 m. Tu arrives sur un filler (arbre + rocher) avec une palette debout ; jungle gym à ~20 m. 3 alliés réparent chacun un gen ; 2 gens sont vers 70 %.

**Informations connues** : [FACT] +0,6 à 35 s ; casse = perte de Bloodlust ; stun 2 s ; poursuite finie au-delà de 18 m. (CALC) rapprochement 1,2 m/s ; un gen à 70 % demande 27 s seul à e = 1, ≈ 34 s à e = 0,8 → 2 gens tombent si tu tiens encore ~27-34 s. Valeur future d'une palette de filler : faible (tile court).

| Option | Analyse | Verdict |
|---|---|---|
| **A. Utiliser la palette tout de suite** (stun si possible, sinon drop), puis partir vers le jungle gym | Stun (+8 m) puis casse (+9,4 m, reset) → ~17 m : grande avance, la poursuite peut même prendre fin (> 18 m, temporisation INC). Sans stun, drop + casse : +9,4 m et reset, assez pour atteindre le jungle gym. S'il contourne pour garder sa Bloodlust, il perd le détour et tu es déjà en route | **Meilleur** |
| B. Garder la palette, tenir W | Écart à combler ≈ 5 − 2,5 = 2,5 m → ≈ 2 s avant le coup ; 20 m demandent 5 s. Coup probable avant l'arrivée (boost et reset, mais tu es blessé : `C_hit` ≈ 17 s, soin inclus, hypothèse) | Mauvais |
| C. Boucler le filler en attendant un stun « parfait » | Tile court à +0,6 m/s : probabilité de coup par cycle très élevée [HEURISTIQUE] | EV négative |

**Décision** : A. Ici la palette sert surtout à **remettre la Bloodlust à zéro** et à convertir en distance ; chaque seconde rapproche deux gens de la fin, la priorité est le temps. **Limite** : si ce filler est la dernière palette d'une zone où se jouera l'endgame (3-gen, portes), sa valeur future remonte et le choix se discute.

**Erreur typique** : garder la palette « pour plus tard » à Bloodlust maximale ; tourner autour du filler en attendant un stun parfait.

### Situation 3 — Tache rouge qui indique une direction, tueur caché derrière un mur

**Situation** : jungle gym à long mur. Tu es sain ; fenêtre vaultée 1 fois dans cette chase ; palette debout. Le tueur (M1, 115 %, non furtif) vient de disparaître derrière le mur en L. Sa tache rouge dépasse du mur, orientée vers la gauche (côté palette). TR stable, pas mal audibles. Il a cassé une palette ailleurs il y a ~10 s (Bloodlust 0).

**Informations connues** : [FACT] (SS) la tache indique la direction du **regard** (et du déplacement quand il marche normalement) ; marcher à reculons ou de côté pour tromper est documenté par le wiki. Fenêtre encore utilisable 2 fois avant le blocage de 30 s ; Bloodlust à 0 (pas d'horloge immédiate).

| Option | Analyse | Verdict |
|---|---|---|
| A. Croire la tache : partir à droite et vaulter | S'il moonwalke vers la droite, il t'attend à la sortie ; pendant 0,5 s de vault tu es immobile à portée de fente. Un 50/50 déguisé en information | Risqué |
| **B. Prendre un checkspot** (trou du mur, angle) pour voir le **corps**, en restant à portée de la palette | À Bloodlust 0 et tueur hors LOS, un check de 0,5-1 s ne coûte presque rien. Corps vers la droite → reste côté palette (jette s'il s'engage) ; corps vers la gauche → fenêtre. Sans checkspot, la position proche de la palette **couvre** les deux options (3.8.7) | **Meilleur** |
| C. Quitter le tile vers le suivant (~18 m) | Sans info, tu peux croiser sa route ; tu abandonnes un tile encore riche | Prématuré |

**Décision** : B, puis agir sur le **corps**, pas sur la tache. Contre un tueur Undetectable ou furtif, même logique avec le son et les checkspots.

**Erreur typique** : lire la tache comme une direction de déplacement ; attendre trop longtemps au checkspot (la Bloodlust repart dès 15 s de chase, et il gagne du temps d'observation).

Détail : `kb/research/batch6_chase_tech.md` §5.

---

## 3.10 Idées reçues corrigées (guide seed)

| Le seed disait | Ce qui est vrai (LIVE 10.1.2a) |
|---|---|
| 1 s de chase ≈ 1/3 de gen | ≈ 1/30 (3 alliés, e = 1) |
| 10 m d'avance ≈ 17 s / 25 s | ≈ 16,3 / 21,7 s avec Bloodlust ; ≈ 12-13 / 17-18 s avec la fente |
| « Le vault annule l'élan » | Faux pour le fast vault |
| Casse ≈ 2,6 s ; gen ≈ 80 s | 2,34 s ; 90 s |
| La Bloodlust disparaît au stun | Non documenté |
| Deux tours de fenêtre avant la palette ; une god pallet se garde ; le 360 est utile | Trop absolus (T05, T22) |
| Loadout du tueur visible après la 1re chase | Identité seulement |
| Good Guy / Mastermind / Knight cassent instantanément ; le pre-drop ne coûte rien au Blight | Faux (errata ; tokens 9.6.0 / 9.6.2) |
| « 1 fois sur 3 dans le casier » ; « 3-5 s perdues sur un drop d'étage » | Non mesurables |

## 3.11 Ce qui reste incertain

Fente (durée, portée utile) ; durée d'abaissement de la palette et instant du stun ; vitesse du tueur pendant ses cooldowns ; effet d'un stun sur la Bloodlust et taux de régression ; temporisation des conditions de fin de poursuite ; angle toléré du fast vault et conservation du boost ; tache rouge (regard vers le bas, vitesse en moonwalk) ; hitbox et seuil de validation ; tokens perdus par le Blight à 3 tokens ou moins (9.6.2) ; tous les paramètres des modèles de 3.8 (`p`, `T_loop`, `e`, coût d'un crochet). **Non couverts ici** : perks d'épuisement (Dead Hard, Sprint Burst, Lithe, Balanced Landing), Haste / Hindered de perks, objets en chase, 2v8.

## Sources du chapitre

- `kb/research/batch6_chase_tech.md` (lot 6, audité) et `kb/audit/pass14_lot6_chase.md` (36 corrections).
- `kb/ledgers/AUDIT_PHASE0_ERRATA.md` (casseurs de palettes, prime sur l'audit).
- `kb/research/batch7_tiles.md` §2.1 (condition de loop avec temps de porte), §5.2 (palettes et pouvoirs) ; `kb/audit/pass14_lot7_tiles.md`.
- `kb/research/batch4_killers_g3.md` §21 (Blight) ; `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md` (anti-loop, pre-drop non universel).
- `kb/seed/audit_phase0.txt` : tables « Référence vérifiée : mouvement, chase, combat » et « objectifs, crochets, soins, statuts ».
- Notes officielles BHVR (via l'audit phase 0 et les lots 4 / 7 ; notes 9.x-10.x en local dans `kb/sources/patches/`) : 6.1.0 (cooldowns, casse, gen 90 charges), 9.2.0 (Krasue, densité), 9.3.0 / 9.3.2 (loops), 9.6.0 (Blight, Match Details, DR), 9.6.2 (tokens du Blight), 10.1.0 (protections de décrochage), 10.1.1 (Knight).
- Pages wiki citées par l'audit et le lot 7 : Pallets, Bloodlust, pages des tueurs cités.
