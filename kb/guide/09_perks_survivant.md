# 9. Perks survivant : comprendre, choisir, construire

> **Périmètre** : mode **1v4**, version **LIVE 10.1.2a (17/09/2026)**. Le chapitre couvre les **176 perks survivant** du périmètre du guide (fiches `kb/research/batch2_perks_surv_p23…p30.md`). Toutes ont été re-vérifiées sur page wiki complète le 27/09/2026 ; **81** ont en plus une valeur LIVE confirmée par une note officielle BHVR. **31** sont modifiées par le **PTB 10.2.0** : leurs nouvelles valeurs sont toujours écrites « **PTB 10.2.0 — non LIVE** » et ne servent jamais de base à une décision aujourd'hui.
>
> Ce périmètre est celui du guide d'origine, **pas une liste officielle relue** : une perk sortie hors de ce périmètre n'est pas traitée ici.

Ce chapitre répond à trois questions :

1. **Que rapporte une perk, en secondes ?** (9.1, 9.2)
2. **Laquelle choisir, pour quel rôle, contre quoi ?** (9.3)
3. **Comment assembler quatre perks qui ne se gênent pas ?** (9.4, 9.5)

Il ne contient **pas de tier list**. Une tier list classe les perks « en général ». Or une perk n'a de valeur que dans une partie précise : un rôle, une file (SoloQ ou SWF), un tueur, une carte. Les notes 0-3 citées dans les fiches sont des **avis d'analyste [HEURISTIQUE]**, pas des mesures. **Aucune donnée d'usage ni de taux de victoire** n'a été consultée pour ce guide.

**Comment lire ce chapitre**

| Étiquette | Sens ici |
|---|---|
| **[FACT]** | Mécanique ou valeur vérifiée. Confiance : **(VP)** note officielle, **(VM)** wiki complet + note officielle, **(SS)** wiki complet seul, **(INC)** incertain |
| **[HEURISTIQUE]** | Règle de jeu raisonnée à partir de l'effet, **non mesurée** |
| **[AVIS D'EXPERT]** | Arbitrage proposé par ce guide, sans source |
| **[HYPOTHÈSE]** | Modèle plausible, non vérifié (toutes les interactions DR entre perks, sauf mention contraire) |
| **[SITUATIONNEL]** | S'inverse selon le tueur, la carte ou l'état de la partie |
| **[INCERTAIN]** | Valeur non tranchée entre sources : ne jamais fonder une décision fine dessus |
| **calc.** | Arithmétique faite sur des [FACT] |

Les triplets « a/b/c » sont les valeurs des rangs I/II/III.

**Repères chiffrés utilisés partout dans ce chapitre** [FACT]

| Repère | Valeur | Conf. |
|---|---|---|
| Un générateur réparé seul | **90 s** (90 charges) | VM |
| Réparer à plusieurs | 85 / 70 / 55 % d'efficacité par personne à 2 / 3 / 4 | SS |
| Soigner un état de santé | **16 s** (16 charges) | SS |
| Vitesse de course du survivant | **4,0 m/s** ; tueurs « 115 % » / « 110 % » : 4,6 / 4,4 m/s | VM |
| +50 % de Haste | +2 m/s, soit **+2 m par seconde de Haste** | calc. |
| Distance → temps de chase | **1 m ≈ 1,67 s** contre un 115 %, **2,5 s** contre un 110 % (sans Bloodlust, ch. 3) | calc. |
| Protections de décrochage (10.1.0) | Endurance 10 s, Haste 10 % 10 s, Elusive 10 s ; seule l'Elusive disparaît une fois les portes alimentées | VP |
| Exhausted | Ne se récupère qu'en marchant, accroupi ou immobile (courir met le minuteur en pause) | SS |
| Diminishing Returns (9.6.0) | Modificateurs identiques : 100 / 50 / 25 / 12,5 / 5 % ; add-ons exclus | VP |

> **À retenir** : **1 % de gen = 0,9 s de réparation solo**, **1 m d'avance ≈ 1,7 s de chase** contre un 115 %. Toute perk se convertit dans l'une de ces deux monnaies, ou en **états de santé** (un état perdu coûte au moins un soin de 16 s, souvent à deux survivants).

---

## 9.1 Comment une perk produit de la valeur `[Débutant → Intermédiaire]`

### 9.1.1 Une perk vaut ce qu'elle fait gagner, moins ce qu'elle coûte

**QUOI** [HEURISTIQUE] :

```
Valeur d'une perk sur une partie
  ≈ (nombre de déclenchements utiles) × (gain par déclenchement)
    − (coût : temps pour la remplir, risque pris, slot non utilisé ailleurs)

Gain = secondes de gen, secondes de chase, états de santé évités,
       ou décision évitée grâce à une information
```

**POURQUOI** c'est la bonne unité : le survivant ne gagne pas « en ayant une bonne perk » ; il gagne quand les 5 générateurs (450 s de réparation solo) sont faits avant que le tueur n'ait accroché assez de monde. Chaque perk ajoute des secondes d'un côté de cette course, ou en retire de l'autre.

**COMMENT** : quelques conversions (calc. sur des [FACT] ; rang III sauf mention) :

| Perk | Effet (conf.) | Conversion en secondes (calc.) |
|---|---|---|
| Botany Knowledge | Soin +30/40/50 % (VM) | 16 s → 10,7 s : **5,3 s** gagnées par état soigné, ×2 si un allié vous soigne (deux survivants immobilisés) |
| We'll Make It | Soin des autres +100 % pendant 30/60/90 s après un décrochage (VM) | 16 s → 8 s : **8 s par soigneur et 8 s par soigné** |
| Resurgence | +50/60/70 % de progression de soin au décrochage (SS) | reste 4,8 s de soin au lieu de 16 s : **11,2 s** par décrochage |
| Self-Care | Auto-soin à 25/30/35 % de la vitesse normale (SS) | un soin ≈ **45,7 s** (64 s au rang I) : la moitié d'un gen solo |
| Déjà Vu | Réparation +4/5/6 % sur les 3 gens les plus groupés (SS) | 90 s → 84,9 s : **5,1 s** par gen concerné |
| Potential Energy | Stocke 10/15/20 % de réparation (VM) | 20 % = **18 s** de réparation posées d'un coup ; **aucune seconde créée** : elle déplace le travail |
| Fast Track | +1 jeton par décrochage (max 1/2/3) ; un Great = 5 % permanents par jeton (VM, unité INC) | 15 % ≈ **13,5 s** de gen |
| Sprint Burst | +50 % Haste 2 s (VM) | **≤ 4 m** d'avance ≈ **6,7 s** de chase contre un 115 % (borne haute, accélération ignorée) |
| Lithe | +50 % Haste 3 s (SS) | ≤ 6 m ≈ 10 s de chase |
| Adrenaline | +1 état de santé, +50 % Haste 4 s (VM) | un soin (16 s) **et** ≤ 8 m d'avance |
| Reassurance | Pause du crochet 20/25/30 s (SS) | **30 s** de timer de crochet achetées par sauveteur |

> **Note avancée** : la fiche Sprint Burst retient un gain de « ~1,5 m » [HEURISTIQUE], bien sous la borne de 4 m ci-dessus. L'écart vient de ce que la borne suppose une vitesse atteinte instantanément et une course en ligne droite. Retenez l'**ordre de grandeur** (quelques mètres), pas la valeur exacte.

**Ce que le tableau ne montre pas** :
- **L'information** ne se convertit qu'indirectement : une aura du tueur vaut le temps de la décision qu'elle vous évite (quitter un gen 5 s plus tôt, ne pas amener le tueur sur un allié, ne pas faire deux sauvetages).
- **La menace** a une valeur même sans déclenchement : un tueur qui soupçonne Will to Live hésite à ramasser le décroché (valeur « perk deduction », fiche Will to Live) [HEURISTIQUE].

### 9.1.2 Les quatre questions à poser à une perk `[Débutant]`

| Question | Pourquoi | Exemples (FACT, fiches) |
|---|---|---|
| **1. Qui contrôle le déclencheur ?** | Une perk que **vous** déclenchez se joue ; une perk déclenchée par l'équipe ou le tueur se subit | Vous : Lithe, Dead Hard, Head On. L'équipe : Teamwork: Throw Down, Teamwork: Toughen Up. Le tueur : Distortion, We See You, Alert. La partie : Adrenaline, Hope, Left Behind |
| **2. Combien de fois ?** | Un effet permanent rapporte peu mais toujours ; un effet unique rapporte beaucoup, une fois | Permanent : Botany, Windows of Opportunity, Empathy. Par événement : Kindred (chaque crochet), Dark Sense (chaque gen). Unique : Unbreakable, Deliverance, Flashbang, Road Life, Power Struggle |
| **3. Dans quel état ?** | Beaucoup de perks s'excluent par l'état de santé | Bonne santé : Finesse, Light-Footed, For the People, Dramaturgy, Duty of Care. Blessé : Resilience, Iron Will, Lucky Break, Made for This, This Is Not Happening, Deadline, Road Life ; Dead Hard exige d'être blessé et en course |
| **4. Qu'est-ce qui l'annule ?** | Le contre-jeu fixe le plancher de la perk | Lightborn (lampes, Flashbang) ; Shattered Hope (Boons) ; slug (Will to Live) ; Broken (tous les soins) ; tueur qui ne casse rien (Alert) ; tueur sans lecture d'aura (Distortion, We See You) |

> **À retenir** : plus une perk dépend de quelqu'un d'autre que vous, plus elle a sa place en **SWF** et moins en **SoloQ**.

### 9.1.3 Plancher et plafond `[Intermédiaire]`

[HEURISTIQUE] Deux perks de même « force moyenne » ne jouent pas le même rôle :

| Profil | Ce qu'il fait | Exemples | Pour qui |
|---|---|---|---|
| **Plancher haut** | Un peu de valeur dans presque toutes les parties, sans décision | Windows of Opportunity (LIVE), Botany Knowledge, Kindred, Empathy, Déjà Vu, Resilience | Débutant, SoloQ, joueur qui veut de la **régularité** |
| **Plafond haut** | Beaucoup de valeur si le joueur exécute bien, rien sinon | Dead Hard, Head On, Any Means Necessary, Hyperfocus, Power Struggle, Flashbang | Joueur expérimenté qui connaît ses timings |
| **Assurance** | Rien la plupart du temps, énorme quand elle sert | Unbreakable, Deliverance, Will to Live, Adrenaline | Tout profil, selon le risque que l'on veut couvrir |
| **Slot souvent mort** | Condition rarement remplie | Left Behind, Low Profile, Down to the Last à 4 vivants, Hope avant les portes, Slippery Meat | Défi, BP, ou cas très précis |

> **Erreur fréquente** : juger une perk d'« assurance » sur une seule partie. Unbreakable « n'a rien fait » dans 7 parties sur 10 si le tueur accroche toujours ; elle est jugée sur les 3 où il slugge.

### 9.1.4 Popularité ≠ optimalité `[Intermédiaire]`

**QUOI** : une perk très jouée n'est pas forcément la meilleure pour **votre** partie.

**POURQUOI** [HEURISTIQUE] :
- **Visibilité** : on voit un stun de Will to Live ; on ne voit pas les 5 s gagnées par gen avec Déjà Vu. Les perks spectaculaires sont surestimées.
- **Confort** : une perk qui réduit le coût d'une erreur (Unbreakable, Deliverance) rassure, même si l'erreur est rare pour vous.
- **Biais du souvenir** : on retient la partie où la perk a tout sauvé, pas les dix où elle n'a rien fait.
- **Contexte d'origine** : un build vu chez un joueur de haut niveau est choisi pour **ses** forces (souvent la chase) et **son** groupe (souvent un SWF au vocal).
- **Déduction du tueur** : plus une perk est attendue, plus le tueur joue autour (il attend la fin de Will to Live, il ne frappe pas pendant le Dead Hard). Une perk moins courante n'est pas anticipée.
- **Absence de données** : le guide d'origine citait un build « à 82 % » ; la corrélation n'a **pas** été vérifiée (fiche Will to Live). Ne prenez aucun pourcentage d'usage pour une preuve d'efficacité.

**QUAND** une perk populaire reste le bon choix : quand elle couvre le risque le plus fréquent de **votre** file (le tunnel en SoloQ, par exemple) et que vous savez la jouer.

**COMMENT choisir à la place** : partez du **problème** (« je meurs en premier », « on perd les 3-gen », « on se fait slugger ») et cherchez la perk qui le traite (9.3), pas l'inverse.

### 9.1.5 Les six règles de compatibilité `[Intermédiaire]`

Ces règles viennent directement des descriptions des perks [FACT] ; leurs conséquences sont [HEURISTIQUE].

**Règle 1 — Une seule perk d'Exhaustion utile à la fois.** Toutes sont inutilisables quand vous êtes Exhausted, et l'Exhausted ne se récupère qu'en marchant, accroupi ou immobile.

| Perk | Déclencheur | Effet | Exhausted | Conf. |
|---|---|---|---|---|
| Sprint Burst | Commencer à courir | +50 % Haste 2 s | 60/50/40 s | VM |
| Lithe | Saut rapide (Rushed Vault) | +50 % Haste 3 s | 60/50/40 s | SS |
| Dead Hard | Bouton, blessé, en course, **après un décrochage** | Endurance 0,5 s | 60/50/40 s | SS |
| Overcome | Passer de la bonne santé à blessé | Boost après le coup +2 s | 60/50/40 s | SS |
| Balanced Landing | Chute d'une hauteur | Stagger −75 %, +50 % Haste 3 s, chute silencieuse | 60/50/40 s | SS |
| Background Player | Le tueur ramasse **un autre** survivant (fenêtre 10 s) | +50 % Haste 5 s | 30/25/20 s | SS |
| Smash Hit | Stun de palette | +50 % Haste 4 s | 30/25/20 s | SS |
| Dramaturgy | Bouton, en bonne santé, en course | +25 % Haste 2 s + effet aléatoire (dont Exposed 12 s) | 60/50/40 s | SS |
| Head On | Sortie de casier (après 3 s dedans) à ≤ 2,5 m du tueur | Stun 3 s | 60/50/40 s **seulement si le stun réussit** | SS |
| Adrenaline | Portes alimentées | +1 état de santé, +50 % Haste 4 s | 60/50/40 s, **ignore** l'Exhausted en cours | VM |

Modificateurs d'Exhaustion : **Vigil** (vous et alliés à 16 m récupèrent de l'Exhausted 20/25/30 % plus vite, 15 s après la sortie de zone, VM), **Ghost Notes** (récupération +5/7,5/10 %, griffures qui s'effacent 50 % plus vite pendant l'Exhausted, VM), **Blood Rush** (après un décrochage, pendant 40/50/60 s : bouton = fin immédiate de l'Exhausted, SS), **Rapid Response** (aura du tueur 2 s chaque fois que vous devenez Exhausted, SS). **Iron Will** est **inactive pendant l'Exhausted** (SS).

**Règle 2 — Bonne santé et blessé s'excluent.** Finesse (bonne santé) et Resilience (blessé) ne sont **jamais** actives en même temps (FACT d'après les deux descriptions, SS).

**Règle 3 — Broken coupe tous les soins.** Sources de Broken dans votre propre build : No Mither (toute la partie), Deliverance (160/140/120 s), For the People (80/70/60 s), Second Wind, Moment of Glory, Clean Break (Broken puis soin automatique), Conviction (après l'auto-relève), Invocation: Weaving Spiders et Invocation: Treacherous Crows (jusqu'à la fin de l'épreuve). À ne pas combiner avec des perks de soin **reçu** (Resurgence, Self-Care) [HEURISTIQUE].

**Règle 4 — Les actions « voyantes » coupent les protections.** Une action voyante (*conspicuous action* : réparer, soigner, etc. ; liste exacte non publiée, INC) désactive Will to Live, annule l'Endurance d'Off the Record, de Made for This, de Soul Guard et des protections de décrochage, et désactive Blood Rush (SS). Pendant ces fenêtres, **ne réparez pas et ne vous soignez pas vous-même**.

**Règle 5 — L'Obsession se choisit.** Will to Live, Bound by Obsession et Mettle of Man donnent **+100 %** de chance d'être l'Obsession initiale ; For the People, Blood Pact et A Place For Us donnent **−100 %** (SS). For the People vous **rend** Obsession quand vous l'utilisez, ce qui désactive votre propre Blood Pact.

**Règle 6 — Certaines perks ne se cumulent pas entre coéquipiers.** « Un survivant n'est affecté que par une instance » (SS/VM) : Prove Thyself, Vigil, Breakout, Leader, Boon: Circle of Healing, Boon: Steadfast, Boon: Illumination, Open-Handed, Teamwork: Power of Two, Teamwork: Collective Stealth. **Deux exemplaires dans l'équipe = un seul effet** sur un même survivant. Ce n'est pas un DR : le second exemplaire ne donne rien du tout.

> **Erreur fréquente** : prendre Sprint Burst **et** Lithe « pour avoir deux chances ». La seconde est bloquée tant que la première vous laisse Exhausted ; vous avez payé deux slots pour une seule perk. Seule Adrenaline (qui ignore l'Exhausted) coexiste proprement avec une autre perk d'Exhaustion.

Détail : fiches `kb/research/batch2_perks_surv_p23.md` à `p30.md` ; mécaniques de base au chapitre 2.

---

## 9.2 Diminishing Returns appliqués aux perks `[Avancé]`

### 9.2.1 Ce qui est sûr

- **[FACT] (VP)** Depuis **9.6.0**, les modificateurs **identiques** issus de pouvoirs, objets, **perks** et offrandes sont réduits quand ils s'empilent : le plus fort à **100 %**, puis **50 / 25 / 12,5 %**, et **5 %** au-delà. Les **add-ons** en sont exclus.
- **[FACT] (VP)** **Règle de rôle** : les modificateurs **positifs de chance de skill check** et **négatifs de vitesse d'action** ne se réduisent qu'entre sources d'un **même rôle**. Exemples officiels : ONE-TWO-THREE-FOUR! ne réduit plus Unnerving Presence ; la pénalité de Calm Spirit (−30 % au rang III) n'est plus réduite par Hex: Thrill of the Hunt.
- **[FACT] (SS)** **Hyperfocus est soumise aux DR** (chance de skill check, au sein du rôle survivant). L'idée « Hyperfocus hors DR » de l'ancien guide est fausse.
- **La liste des modificateurs jugés « identiques » n'est pas publiée** (le manuel en jeu n'a pas été consulté) : **toutes** les interactions DR entre perks citées ci-dessous sont des **[HYPOTHÈSE]**.

### 9.2.2 Familles de modificateurs probablement concernées [HYPOTHÈSE]

| Famille | Perks survivant qui y contribuent (LIVE) |
|---|---|
| **Vitesse de soin** | Botany Knowledge, We'll Make It, Boon: Circle of Healing, Empathic Connection, Desperate Measures, Do No Harm, Flow State, Leader, Better Than New, Road Life, Resilience, Spine Chill, Bound by Obsession |
| **Vitesse de réparation** | Déjà Vu, Resilience, Prove Thyself, Quick Gambit, Boon: Steadfast, Teamwork: Full Circuit, Teamwork: Soft-Spoken, Friendly Competition, Overzealous, Spine Chill, Bound by Obsession, Hyperfocus (bonus de skill check) |
| **Haste** | Sprint Burst, Lithe, Balanced Landing, Background Player, Smash Hit, Adrenaline, Dramaturgy, Hope, Boon: Dark Theory, Blood Pact, Teamwork: Power of Two, Breakout, Made for This, Fruits of Your Labor, Duty of Care, Champion of Light, Wide Open Throttle, Buckle Up, Plot Twist, Babysitter, No One Left Behind (ces deux dernières renforcent la Haste de base du décrochage) |
| **Vitesse de récupération à terre** | Unbreakable, Plot Twist, Boon: Exponential, No Mither |
| **Chance de skill check** | Hyperfocus, ONE-TWO-THREE-FOUR!, Deadline |
| **Vitesse de saut** | Finesse, Resilience (au PTB 10.2.0 : Windows of Opportunity, Spine Chill) |

**COMMENT le calculer** (exemple, [HYPOTHÈSE] : Botany et We'll Make It considérés comme « identiques ») :

```
Soin d'un allié, Botany III (+50 %) + We'll Make It (+100 %)
  Sans DR  : +150 % → 16 s / 2,5  = 6,4 s
  Avec DR  : +100 % × 100 % + 50 % × 50 % = +125 % → 16 s / 2,25 = 7,1 s
  Écart    : 0,7 s par soin
Botany III seule : 16 s / 1,5 = 10,7 s ; We'll Make It seule : 8 s
```

**Ce que cela change** [HEURISTIQUE] :
- Empiler deux perks de **même effet** rapporte la moitié de la seconde. La 2e perk de soin ne gagne ici que ~0,9 s par soin par rapport à We'll Make It seule (8 s → 7,1 s).
- **Diversifier les axes** (un bonus de soin + une info + une chase + un anti-tunnel) rapporte presque toujours plus que d'empiler un axe.
- Le **bonus de base d'un objet** peut entrer dans les DR avec une perk ; l'**add-on**, jamais. À bonus égal, un add-on « vaut » plus qu'une perk dans un build empilé (ch. 2).
- Les **effets binaires** (suppression d'aura, de griffures, de gémissements), les **pauses de minuteur** (Reassurance), les **conversions** (Corrective Action), les **réductions de charges** (Specialist, Fast Track, Weaving Spiders) et les **portées** (Open-Handed) ne sont probablement pas des « modificateurs » au sens des DR [HYPOTHÈSE].

> **Note avancée** : la note PTB 10.2.0 regroupe plusieurs buffs sous « Generic perks and perks impacted by Diminishing Returns » (Bound by Obsession y figure). Une partie des buffs du PTB compense donc des perks que les DR avaient affaiblies (PTB 10.2.0 — non LIVE ; liste exhaustive non publiée).

Détail : chapitre 2, section Diminishing Returns ; note officielle 9.6.0 (544).

---
## 9.3 Analyse par catégorie `[Intermédiaire → Expert]`

Chaque catégorie suit le même plan : **à quoi elle sert** (en secondes), un **tableau des perks importantes** (effet LIVE, confiance, conditions, synergies et anti-synergies), puis **comment la jouer** et **les erreurs fréquentes**. Les perks mineures de chaque famille figurent seulement dans l'inventaire (9.7). Les colonnes « Quand / contre quoi » et « Synergies » sont **[HEURISTIQUE]** (avis des fiches), les effets et valeurs sont **[FACT]** avec leur confiance.

### 9.3.1 Chase et épuisement

**À quoi elles servent** : la chase est la seule phase où **un** survivant achète du temps de gen pour **trois**. Une perk de chase rapporte de trois façons : des **mètres** (Haste), des **ressources** (voir ou recréer une palette, une fenêtre), ou une **rupture de piste** après le contact (pas de traces). Les perks d'Exhaustion (tableau de la règle 1, 9.1.5) font le premier travail ; celles-ci font le reste.

| Perk | Effet LIVE (valeurs) | Conf. | Quand / contre quoi | Synergies · anti-synergies |
|---|---|---|---|---|
| **Windows of Opportunity** | Auras des murs cassables, palettes et fenêtres à 24/28/32 m, en permanence, **sans cooldown** | SS | Cartes mal connues ; zones denses. Vaut moins contre Blight, Nurse, et une fois les palettes consommées | Lithe, Finesse, Resilience ; **doublon** avec Five Moves Ahead en LIVE. **Rework PTB 10.2.0** |
| **Five Moves Ahead** | Dans le rayon de terreur ou en poursuite : auras des 5 palettes **et fenêtres** les plus proches ; après un lâcher de palette, vous repartez **50 % plus tôt** ; CD 40/35/30 s après un lâcher | VM | Loops de palette ; inactive hors TR et hors poursuite ; peu utile contre les tueurs anti-palette | Lithe, Resilience. **PTB 10.2.0 : palettes seulement** |
| **Finesse** | En bonne santé : saut rapide **+20 %** ; CD 40/35/30 s après un saut rapide | SS | Premier contact sur une fenêtre forte | Lithe, Windows ; **jamais active en même temps que Resilience** |
| **Resilience** | Blessé : +3/6/9 % pour réparer, soigner, décrocher, ouvrir les portes, saboter, fouiller, bénir/purifier et **sauter les fenêtres** | VM | Parties jouées blessé (tueurs à Deep Wound, soins non rentables) | No Mither, Lithe ; exclut Finesse. **PTB 10.2.0 : 7/8/9 %** |
| **Any Means Necessary** | Auras des palettes tombées ; relever une palette tombée en 5/4/3 s ; **aucun cooldown** | VM | Recréer une palette forte **avec de l'avance** ; inutile contre les tueurs qui cassent tout | Windows ; Brutal Strength / Enduring la rendent moins rentable |
| **Wide Open Throttle** | Saut rapide de palette : +10/12,5/15 % Haste 3 s ; la palette est relevée, bloquée et révélée à tous 60 s ; CD 60 s | SS | Loops de palette enchaînées ; nulle contre Blight, Nurse | Haste (DR possibles) |
| **Last Stand** | Après 120/105/90 s dans le TR sans être poursuivi : un saut rapide **vers** le tueur à ≤ 2,5 m l'étourdit 3 s ; **une fois** par partie | VM | Casser une chase longue ou protéger un allié une fois | Windows, Lithe ; condition rarement remplie si vous êtes chassé tôt |
| **Parental Guidance** | Après avoir étourdi le tueur (tout moyen) : griffures, sang et gémissements supprimés 5/6/7 s | SS | Stun de palette près d'herbes hautes ou de structures | Head On, Iron Will |
| **Lucky Break** | Blessé : griffures et flaques de sang supprimées, **40/50/60 s au total** ; se recharge en soignant un autre survivant | SS | Casser la piste après un coup ; nulle en bonne santé et contre les tueurs à aura | Iron Will (audio) = complément exact |
| **Iron Will** | Blessé : gémissements −80/90/100 % ; **inactive si Exhausted** ; réduction additive (d'autres effets peuvent les rendre audibles) | SS | Mindgames à l'écoute | Distortion, Lucky Break ; **anti-synergie avec les perks d'Exhaustion** |
| **Chemical Trap** | Après 20 % de réparation : piège sur une palette tombée 40/50/60 s ; si le tueur la casse, Hindered 50 % pendant 4 s | SS | Palette de dead zone que le tueur doit casser | Nulle contre les casses par pouvoir |
| **Bada Bada Boom** | Après 20 % : piège sur une fenêtre 40/50/60 s ; le tueur qui la saute est Hindered 50 % pendant 6 s | VM | Fenêtre d'une boucle forte près du gen travaillé | Nulle contre les tueurs qui ne sautent pas |

**Choisir sa perk d'Exhaustion** [HEURISTIQUE] : prenez celle dont **vous contrôlez le déclencheur** dans vos parties habituelles.

| Si vous… | Prenez | Parce que |
|---|---|---|
| voyez le tueur venir (perks d'info, TR large) | Sprint Burst | départ avant le contact ; marchez pour la garder |
| jouez des cartes à fenêtres | Lithe | vous choisissez le moment |
| êtes souvent tunnelé après le décrochage | Dead Hard | ne s'active qu'**après** un décrochage : c'est à moitié une perk anti-tunnel |
| prenez souvent le premier coup en terrain ouvert | Overcome | allonge le boost du coup |
| jouez près des palettes contre des M1 | Smash Hit | stun → 4 s de Haste, Exhausted court (30/25/20 s) |
| jouez en SWF orienté sauvetage | Background Player | 5 s de Haste au ramassage d'un allié |
| jouez des cartes à étages | Balanced Landing | chute silencieuse + Haste |

**COMMENT** : une perk de chase n'ajoute des secondes que si elle vous amène **à la tile suivante**. Avant chaque partie, repérez (ou laissez Windows / Five Moves Ahead vous montrer) où votre boost vous mènera.

**CONTRE / CAS D'ÉCHEC** : contre Blight ou Nurse, la distance gagnée compte moins (fiches Lithe, Windows) ; contre un tueur qui **retient** son attaque, Dead Hard est joué au mauvais moment ; contre un tueur furtif, Sprint Burst part trop tard.

> **Erreur fréquente** : courir vers un gen avec Sprint Burst. La perk se déclenche au premier pas de course et sera en recharge quand le tueur arrivera. Marchez tant que vous n'êtes pas menacé.

> **Erreur fréquente** : Iron Will avec une perk d'Exhaustion. Pendant les 40 à 60 s d'Exhausted qui suivent le boost, vos gémissements reviennent, au moment précis où vous cherchez à vous cacher.

**EXERCICE** : sur 5 parties, notez à chaque usage de votre perk d'Exhaustion si le boost vous a mené à une tile (oui/non). Moins de 3 « oui » sur 5 : changez de perk ou de moment de déclenchement.

Détail : `kb/research/batch2_perks_surv_p23.md`, `p24.md`, `p25.md` ; techniques de chase au chapitre 3.

### 9.3.2 Information

**À quoi elles servent** : une information vaut le **temps de la décision qu'elle vous évite** : quitter un gen 5 s avant l'arrivée du tueur, ne pas l'amener sur un allié, ne pas partir à deux au même sauvetage. Classez vos perks d'info par **question** : deux perks qui répondent à la même question se chevauchent.

| Question | Perks (effet LIVE, conf.) |
|---|---|
| **Où est le tueur ?** | **Alert** : le tueur casse ou endommage quelque chose → aura 3/4/5 s (SS). **Inner Focus** : un allié perd un état de santé **à cause du tueur** → aura du tueur 6/8/10 s, et vous voyez les griffures des alliés (SS). **Kindred** : un survivant est accroché → aura du tueur à tous s'il est à ≤ 8/12/16 m du crochet (VM). **Fogwise** : chaque Great de réparation → aura 4/5/6 s (SS). **Dark Sense** : après chaque gen fini, la prochaine fois que le tueur vient à 24 m, aura 5/7/10 s (VM). **Still Sight** : immobile 4/3/2 s → auras du tueur, des coffres et des gens à 24 m, tant que vous ne bougez pas (inactive en réparant) (VM). **Extrasensory Perception** : accroupi 4 s → auras (survivants, tueur, objets) jusqu'à 44 m, Elusive et **Oblivious**, 11 s max, CD 60/50/40 s (VM). **Premonition** : cône de 45° à 36 m, signal sonore, CD 60/45/30 s (VM). **Eyes of Belmont** : aura 1/2/3 s à chaque gen fini, **+2 s** à toutes vos révélations temporisées de l'aura du tueur (SS) |
| **Le tueur me regarde-t-il ?** | **Spine Chill** : le tueur à ≤ 36 m vous regarde avec ligne de vue → icône, et +2/4/6 % sur réparation, soin, décrochage, etc. (SS). **Distortion** : un jeton consommé = votre aura vient d'être lue (SS). **Bound by Obsession** : quand le tueur lit votre aura, vous voyez la sienne autant de temps (VM). **We See You** : 4 lectures de votre aura → aura du tueur à **toute l'équipe** 10/12,5/15 s (VM) |
| **Où sont mes alliés ?** | **Bond** : auras des survivants à 20/28/36 m (SS). **Empathy** : survivants **blessés ou mourants** à 64/96/128 m (SS). **Quick Gambit** : en poursuite, **vous** voyez les autres ; eux réparent +3/4/5 % ; CD 40 s après une perte d'état de santé (VM). **Better Together** : l'aura de votre gen est visible de tous ; si le tueur met quelqu'un à terre pendant que vous réparez, auras de tous 20/25/30 s (VM). **Salvation's Cry** : quand une chase commence sur vous, vous voyez les autres 1/2/3 s, et les autres voient votre aura et celle du tueur 5 s (VM). **Aftercare** : auras mutuelles avec les 1/2/3 derniers survivants décrochés ou soignés par vous (ou vous ayant aidé) (SS) |
| **Où sont les objectifs ?** | **Déjà Vu** : les 3 gens les plus proches les uns des autres, en permanence, +4/5/6 % dessus (SS). **Visionary** : gens à 32 m, coupée 20/18/16 s après chaque gen (SS). **Detective's Hunch** : après chaque gen, coffres, gens et totems à 32/48/64 m pendant 20 s (VM). **Rookie Spirit** : après 5/4/3 skill checks Good ou Great, auras des gens qui régressent, pour la partie (SS). **Clairvoyance** : après un totem, mains vides, bouton maintenu → coffres, interrupteurs, gens, trappe, crochets à 64 m pendant 10/11/12 s (VM) |

**Amplificateur** : **Open-Handed** ajoute +8/12/16 m à **toutes** les lectures d'aura à portée limitée de tous les survivants, une instance par survivant (SS). Elle ne vaut que si l'équipe porte déjà des perks d'aura à portée (Bond, Kindred, Still Sight…).

**POURQUOI la SoloQ en a besoin** : sans vocal, ces perks remplacent les annonces. Kindred évite le double sauvetage et montre le camp ; Bond et Empathy évitent d'amener le tueur sur un allié ; Inner Focus et Alert localisent le tueur à chaque action (fiches, [HEURISTIQUE]).

**QUAND l'info rapporte le plus** [HEURISTIQUE] :
- contre un tueur qui **tourne entre les gens** (Alert à chaque kick ; Rookie Spirit contre les tueurs à régression) ;
- au moment des **crochets** (Kindred, Inner Focus, Babysitter, Wicked) ;
- en **fin de partie** (Dark Sense, Clairvoyance, Wake Up!).

**CONTRE / CAS D'ÉCHEC** :
- **Blindness** empêche de lire **toute** aura, y compris celles des perks (SS, ch. 2).
- Un tueur **Undetectable** cache son aura et son rayon de terreur (SS) : Alert est probablement bloquée [HYPOTHÈSE, fiche].
- Les perks d'aura du tueur **déclenchées par ses actions** (Alert) se taisent contre un tueur qui ne casse rien et ne kicke pas.
- Extrasensory Perception rend **Oblivious** : pendant 11 s vous n'entendez plus le rayon de terreur.

> **Erreur fréquente** : trois perks qui répondent à « où sont mes alliés ? » (Bond + Empathy + Kindred). Kindred montre déjà les alliés pendant chaque crochet ; il manque alors une perk qui localise le **tueur**.

> **Erreur fréquente** : Spine Chill vue comme une perk « anti-chase ». Elle s'allume aussi quand le tueur regarde vers vous en poursuivant un allié : ce sont des faux positifs (fiche). Apprenez à la lire avec le rayon de terreur, pas seule.

**EXERCICE** : pendant une partie avec Kindred, dites à voix haute à chaque crochet « je vais au sauvetage » ou « je reste » **avant** de voir les auras alliées, puis comparez avec ce que Kindred montre.

Détail : `kb/research/batch2_perks_surv_p23.md` (Kindred, Bond, Déjà Vu), `p25.md` (Alert, Extrasensory Perception, Salvation's Cry), `p26.md` (Empathy, Spine Chill, Dark Sense), `p27.md` (Inner Focus, Fogwise), `p28.md` (Still Sight, We See You, Open-Handed).

### 9.3.3 Génération

**À quoi elles servent** : les survivants doivent produire 450 s-surv de réparation utile. Une perk de gen agit de trois façons : **vitesse** (pourcentage), **progression gratuite** (skill checks, jetons, charges retirées), ou **protection** (contre la régression et le kick).

| Perk | Effet LIVE (valeurs) | Conf. | Quand / contre quoi | Synergies · anti-synergies |
|---|---|---|---|---|
| **Déjà Vu** | Auras des 3 gens les plus groupés (permanent) ; +4/5/6 % dessus | SS | SoloQ : casser le 3-gen avant qu'il ne se forme | Doublon avec Visionary ; DR possibles avec d'autres bonus de réparation |
| **Prove Thyself** | +6/8/10 % par autre survivant à ≤ 4 m, plafond 18/24/30 %, pour tous ; **une seule instance** par survivant | SS | Dernier gen, ou gen menacé de régression | Un seul exemplaire utile par équipe ; inefficace contre les tueurs qui punissent le groupe |
| **Hyperfocus** | Chaque Great (réparation, soin) = 1 jeton (max 6) ; par jeton : chance de skill check et vitesse de l'aiguille +4 %, bonus de Great +10/20/30 % ; tout perdu sur un Good, un raté ou une interruption | SS | Joueur régulier aux Greats, gen solo sans interruption | **Soumise aux DR** ; Stake Out ; mauvaise contre les skill checks difficiles |
| **Stake Out** | 1 jeton par 15 s dans le TR sans être poursuivi (max 2/3/4) ; un jeton change un **Good** en **Great** (+1 % de progression) | SS | Builds skill checks | Hyperfocus (jeton = Great). **Rework PTB 10.2.0** |
| **Potential Energy** | Convertit la réparation en jetons (1 jeton = 1 %, max 10/15/20) ; nouvel appui → +1 % par jeton d'un coup ; désactivée après usage ; **tous** les jetons perdus à la perte d'un état de santé ; raté : −20 % des jetons, ou −10 % du gen si vous êtes au maximum | VM | Finir d'un coup un gen à 80 %+ avant un kick ou contre un Hex de régression | Aucune seconde créée : elle **déplace** le travail |
| **Corrective Action** | 1/2/3 jetons au départ, +1 par Great (max 5) ; le skill check **raté d'un autre survivant**, n'importe où, devient un Good (−1 jeton) et vous voyez son aura 6 s ; pas les skill checks spéciaux | SS | SoloQ avec des alliés qui ratent (pas d'explosion ni de notification) | Hyperfocus, Stake Out (farm de Greats) |
| **Repressed Alliance** | Après 40/35/30 s de réparation cumulée, en réparant **seul** : bouton → gen bloqué 15 s ; aura du gen bloqué visible de tous | VM | Fuir un gen presque fini sans qu'il soit kické | Bloque aussi les alliés ; ne rend pas la régression déjà subie |
| **Boon: Steadfast** | Zone de 24 m : régression des gens −50 %, réparation +8/9/10 %, auras des gens concernés pour les survivants dans la zone ; une instance par survivant | VM | Totem au milieu d'un groupe de gens disputés (3-gen) | Détruit par Shattered Hope ; éteint par le tueur |
| **Teamwork: Full Circuit** | Par allié réparant avec vous : zone Good +15/20/25 % ; +5 % de réparation si ≥ 1 allié | VM | Gens en duo ou trio (SWF) | Doublon probable (DR) avec Soft-Spoken ; nulle seul |
| **Friendly Competition** | Finir un gen avec au moins un allié → +5 % de réparation pour les participants, 100/110/120 s | VM | Équipe qui finit les gens à deux | **PTB 10.2.0 : +10 % 80/85/90 s** |
| **Fast Track** | +1 jeton par survivant que **vous** décrochez (max 1/2/3) ; un Great consomme tout : **5 % permanents par jeton** (note 9.6.0) ou 5 charges (wiki) | VM (unité INC) | Rôle de sauveteur qui enchaîne décrochage → gen | Hyperfocus, Stake Out |
| **Specialist** | +1 jeton par coffre ouvert ou fouillé (max 6) ; un Great consomme tout : −2/3/4 charges par jeton, max 12/18/24 charges | SS | Build coffres ; garder les jetons (faire des Goods) pour un gen critique | Coûte du temps de coffres |
| **Overzealous** | Après un totem purifié ou béni : +8/9/10 % (Dull) ou +16/18/20 % (Hex) ; perdue à la perte d'un état de santé | SS | Hex trouvé tôt | Small Game, Detective's Hunch |
| **Technician** | Bruit de réparation réduit de **16 m** ; un raté ne fait pas exploser le gen ni ne notifie, mais pénalité **+4/3/2 %** | VM | Joueur qui rate (latence, Doctor) | Ne compense jamais pour un joueur précis |

**Trois calculs qui changent les décisions** (calc. sur [FACT] ; bonus supposé multiplicatif sur le débit de chacun, [HYPOTHÈSE]) :

```
Prove Thyself III et pénalité coop
  2 survivants : 90 / (2 × 0,85)        = 52,9 s  → 105,9 s-surv
      + Prove Thyself (+10 %)          ≈ 48,1 s  →  96,2 s-surv
  3 survivants : 90 / (3 × 0,70)        = 42,9 s  → 128,6 s-surv
      + Prove Thyself (+20 %)          ≈ 35,7 s  → 107,1 s-surv
  Solo sans perk                        = 90 s    →  90 s-surv
→ Prove Thyself réduit le coût du groupe sans l'effacer : elle sert à FINIR VITE
  (dernier gen, gen menacé), pas à réparer « plus efficacement ».

Hyperfocus III à 6 jetons
  Great de base = +1 % (gen) ; bonus +180 % → ≈ +2,8 % par Great ≈ 2,5 s de réparation

Invocation: Weaving Spiders III
  −10 charges sur chaque gen restant : 5 gens restants = 50 s de réparation solo
  Coût : 60 s d'invocation seule (un allié aide : +50 %, ou +100 % s'il a une Invocation)
         + blessé et Broken pour toute la partie
→ au mieux un échange presque neutre en secondes brutes, payé par un Broken permanent.
```

**CONTRE / CAS D'ÉCHEC** :
- les tueurs qui **interrompent souvent** (Hyperfocus perd ses jetons, Potential Energy perd tout à la perte d'un état) ;
- les **skill checks spéciaux** : Corrective Action et Road Life ne les couvrent pas ;
- **Shattered Hope** (Boons) ; tueurs qui punissent le groupe sur gen (fiche Prove Thyself) ;
- **DR** entre bonus de réparation identiques (Déjà Vu, Resilience, Prove Thyself, Full Circuit, Soft-Spoken, Friendly Competition) [HYPOTHÈSE].

> **Erreur fréquente** : prendre Prove Thyself en SoloQ « pour réparer plus vite ». Elle ne rapporte que si 2-3 survivants réparent **déjà** ensemble, et deux exemplaires dans l'équipe ne se cumulent pas.

> **Erreur fréquente** : croire que Potential Energy fait gagner du temps. Elle vous fait **stocker** 18 s de réparation pour les poser au bon moment ; perdue en un coup, elle fait **perdre** 18 s.

Détail : `kb/research/batch2_perks_surv_p23.md` (Déjà Vu, Prove Thyself, Hyperfocus), `p25.md` (Stake Out), `p26.md` (Potential Energy), `p27.md` (Repressed Alliance, Fast Track, Corrective Action), `p28.md` (Full Circuit, Specialist) ; macro des gens au chapitre 6.

### 9.3.4 Soin

**À quoi elles servent** : un soin altruiste immobilise **deux** survivants 16 s (32 s-surv). Une perk de soin rapporte en **raccourcissant** ce temps, en le **supprimant** (soin automatique, progression gratuite) ou en le **rendant autonome** (auto-soin sans allié).

| Perk | Effet LIVE (valeurs) | Conf. | Quand / contre quoi | Synergies · anti-synergies |
|---|---|---|---|---|
| **Botany Knowledge** | Vitesse de soin +30/40/50 %, permanente (malus sur les objets de soin retiré en 9.0.0) | VM | Équipes qui se soignent beaucoup | DR probables avec les autres bonus de soin |
| **Self-Care** | Auto-soin sans médikit à 25/30/35 % de la vitesse normale | SS | SoloQ sans soigneur, tueur qui ne revient pas vite | ≈ 46 à 64 s par soin : mauvais contre les one-shots, Nurse, Blight |
| **Resurgence** | Après tout décrochage (y compris le vôtre) : +50/60/70 % de progression de soin | SS | SoloQ : le soin restant se finit en quelques secondes | Finir le soin soi-même est une action voyante (coupe Will to Live, Off the Record) |
| **We'll Make It** | Après avoir décroché un autre survivant : soin des autres +100 % pendant **30/60/90 s** | VM | Décrochage à distance de sécurité | Rang I trop court pour atteindre un coin sûr. **PTB 10.2.0 : 70/80/90 s** |
| **Empathic Connection** | Soin des autres +25/30/35 % ; les blessés voient votre aura, sur toute la carte | VM | SoloQ : les blessés viennent à vous | **PTB 10.2.0 : 40/45/50 %** |
| **Boon: Circle of Healing** | Zone de 24 m : soin des autres **sans médikit** +50/75/100 % ; l'aura de tout blessé dans la zone est révélée aux autres ; pas d'auto-soin ; une instance par survivant | SS | Totem loin des gens sous pression | Shattered Hope ; inopérant avec médikit |
| **Desperate Measures** | Soin et décrochage +16/18/20 % **par survivant** blessé, à terre ou accroché, jusqu'à 64/72/80 % | VM | Équipe blessée en cascade | Rien quand l'équipe est en bonne santé |
| **Do No Harm** | Soin d'un allié +30/40/50 % **par état de crochet** du soigné (max 60/80/100 %) ; Great de soin +3 % fixe | VM | Soigner l'allié à 2 crochets (le plus tunnelé) | 0 bonus en début de partie. **PTB 10.2.0 : Great indexé sur les crochets, chance de skill check** |
| **Solidarity** | Blessé, en soignant un allié **sans médikit** : vous vous soignez à 50/60/70 % de votre vitesse de soin altruiste | VM | Deux blessés qui se soignent mutuellement | **PTB 10.2.0 : 65/70/75 %, médikit autorisé** |
| **Inner Strength** | Après un totem purifié : 10/9/8 s dans un casier = soigné d'un état ; une fois par purification ; pas sous Broken | SS | SoloQ contre les builds Hex | Casier = risque de grab |
| **Moment of Glory** | Après 1 coffre : quand vous devenez blessé → Broken, puis soigné après 80/70/60 s si vous n'êtes pas à terre | VM | SoloQ : rester sur gen au lieu de chercher un soin | Broken = aucun autre soin pendant ce temps |
| **Clean Break** | Après avoir soigné un allié : bouton pendant qu'on vous soigne → Broken, puis soigné après 75/60/45 s | VM | Libérer le soigneur | Inutile si personne ne vous soigne |
| **Second Wind** | Après avoir soigné l'équivalent d'1 état : au décrochage suivant, Broken puis soigné après 28/24/20 s si pas à terre | SS | Économise le soin du décroché | Tunnel immédiat |
| **For the People** | En bonne santé, en soignant un allié sans médikit : soin instantané (à terre → blessé, blessé → sain) ; vous devenez blessé, Broken 80/70/60 s et l'Obsession | SS | Relever un allié sous le nez du tueur | Obsession : active les perks tueur d'Obsession |
| **Made for This** | Blessé : finir un soin sur un allié → Endurance 6/8/10 s (annulée par action voyante) ; sous Deep Wound, courir → +1/2/3 % Haste | SS | Soigner sous pression | — |

**COMMENT choisir** [HEURISTIQUE] :
- **Un seul** bonus de vitesse de soin « pur » (Botany *ou* Empathic Connection *ou* Circle of Healing) : les suivants sont probablement réduits par les DR (9.2).
- Préférez ensuite une perk qui **supprime** du temps de soin (Resurgence, Second Wind, Moment of Glory) ou qui vous rend **autonome** (Self-Care, Inner Strength, Solidarity).
- Posez-vous la question « **faut-il soigner ?** » avant « comment soigner vite ». Contre un tueur qui one-shot ou qui revient vite, un soin de 46 s (Self-Care) coûte la moitié d'un gen.

**CONTRE / CAS D'ÉCHEC** : Broken (Terminus, perks et pouvoirs du tueur, et vos propres perks Broken) ; Mangled et Deep Wound ; perks tueur qui révèlent les soigneurs ou ralentissent le soin (chapitre 10).

> **Erreur fréquente** : Botany + We'll Make It + Circle of Healing. Trois bonus de vitesse de soin dans un build = 2 slots à moitié ou au quart de leur valeur (DR, [HYPOTHÈSE]) et aucun apport en chase ou en info.

Détail : `kb/research/batch2_perks_surv_p24.md` (Botany, We'll Make It, Circle of Healing), `p25.md` (Self-Care, Empathic Connection, Desperate Measures, Inner Strength), `p26.md` (Solidarity), `p27.md` (Second Wind, For the People), `p28.md` (Do No Harm, Moment of Glory, Clean Break).

### 9.3.5 Altruisme : décrochage, sauvetage, porté

**À quoi elles servent** : chaque crochet coûte à l'équipe le temps du sauveteur, le risque d'un trade et un état de crochet. Ces perks agissent **au crochet** (temps et sécurité du décrochage) ou **pendant le portage** (libérer le survivant avant le crochet).

| Perk | Effet LIVE (valeurs) | Conf. | Quand / contre quoi | Synergies · anti-synergies |
|---|---|---|---|---|
| **Reassurance** | À ≤ 6 m d'un survivant accroché : bouton → processus de sacrifice en pause 20/25/30 s (lutte comprise) ; une fois par survivant et par crochet | SS | Face-camp, fin de partie : acheter 20-30 s pour finir un gen ou préparer le sauvetage | Approcher à 6 m peut vous faire mettre à terre |
| **Babysitter** | Quand vous décrochez : aura du tueur 8 s ; le décroché ne laisse **ni griffures ni sang** et sa Haste de décrochage est renforcée de 10 % pendant 20/25/30 s | VM | Décrochage sûr quand le tueur est proche | Kindred, Borrowed Time |
| **Borrowed Time** | Quand vous décrochez : l'Endurance du décroché +6/8/10 s et sa Haste +10 s (pas l'Elusive) | SS | Décrochage sous camp ou tunnel | **Rework complet au PTB 10.2.0** |
| **Leader** | Alliés à 10 m : purification, ouverture de portes, soin, sabotage, décrochage, déverrouillage +20/25/30 %, 15 s après la sortie de zone ; une instance par survivant | VM | Décrochage + soin groupés ; portes | Aucun bonus de réparation |
| **Breakout** | À 5 m du tueur qui porte un allié : vous gagnez 6/8/10 % de Haste, le porté lutte +25 % plus vite ; une instance par survivant | SS | Bodyblock + outil de sauvetage | Mad Grit, Iron Grasp (fiches tueur) |
| **Boil Over** | Porté : effets de lutte +60/70/80 % ; le tueur ne voit pas les crochets à 16 m ; chute du tueur → +33 % de la lutte **actuelle** | SS | Cartes à étages | Nulle sur carte plate |
| **Flip-Flop** | Pendant la récupération à terre, la lutte se charge à 50 % du taux de récupération, jusqu'à 40/45/50 % | SS | Slug prolongé puis ramassage | Power Struggle |
| **Power Struggle** | À terre : auras des palettes **debout** ; porté, après 25/20/15 % de lutte, faire tomber une palette proche = stun et libération ; une fois | SS | Tueur qui porte près des palettes | Flip-Flop (pré-charge), Tenacity |
| **Saboteur** | Quand le tueur porte un allié : auras des crochets à 56 m **autour du point de ramassage** ; sabotage sans boîte, +30 % ; CD 70/65/60 s | SS | SWF, longs portages | Crochets denses, Agitation |
| **Flashbang** | Après 50/45/40 % de réparation : dans un casier, fabrique une grenade aveuglante ; une seule | SS | Sauver un porté, bloquer un ramassage | Lightborn |
| **Shoulder the Burden** | Une fois, hors dernier crochet : décroche l'allié et **prend un de ses états de crochet** ; vous criez et êtes **Exposed 60/50/40 s** | VM | Allié tunnelé à 2 crochets tôt dans la partie | Exposed = mis à terre en un coup. **PTB 10.2.0 : blessé + Broken 160/140/120 s, désactivée pour tous** |
| **Camaraderie** | Accroché en phase de lutte : un survivant à 16 m met la phase en pause 26/30/34 s | SS | Sauveteur en retard sur un 2e crochet | Ne sert pas si le tueur camp |
| **Teamwork: Throw Down** | Quand vous aveuglez le tueur ou l'étourdissez **à la palette** : les autres survivants **blessés** à 24 m gagnent Endurance 6/8/10 s (et l'aura du tueur, selon la note officielle) | VM (aura INC) | Sauvetage de chase d'un allié blessé | Rien sans allié blessé proche |
| **Duty of Care** | En bonne santé, prendre un coup de protection → +25 % de Haste 4/5/6 s aux autres survivants à 12 m | SS | Bodyblocker | Aucun coup de protection = aucune valeur |
| **Mettle of Man** | Après le 3e coup de protection : blessé, vous encaissez le prochain coup qui vous mettrait à terre ; ensuite, de retour en bonne santé, votre aura est révélée au tueur au-delà de 12/14/16 m | SS | SWF qui prend les coups volontairement | 3 coups de protection rarement atteints en SoloQ |

**COMMENT** [HEURISTIQUE] : au crochet, séparez les rôles. **Avant** le décrochage : Kindred (qui y va), Reassurance (quand). **Au** décrochage : Babysitter, Borrowed Time (sécurité du décroché). **Après** : We'll Make It (soin), Resurgence chez le décroché. Au **portage**, les perks n'ont de valeur qu'avec un outil de sauvetage (lampe, Flashbang, palette) et un joueur qui suit le porteur : c'est un jeu de **SWF**.

**CONTRE / CAS D'ÉCHEC** : camp et proxy-camp ; retour immédiat du tueur au crochet (tunnel) ; perks tueur qui punissent le sauveteur ou le suiveur (chapitre 10) ; Lightborn contre lampes et Flashbang.

> **Erreur fréquente** : suivre le porteur pour Breakout sans outil de sauvetage. Vous offrez un coup gratuit au tueur pour réduire la lutte de quelques secondes ; les gens ne sont pas réparés pendant ce temps.

Détail : `kb/research/batch2_perks_surv_p24.md` (Reassurance, Shoulder the Burden, Flashbang), `p25.md` (Breakout, Boil Over, Flip-Flop, Power Struggle, Saboteur, Borrowed Time), `p26.md` (Leader, Mettle of Man), `p27.md` (Babysitter), `p28.md` (Throw Down), `p29.md` (Camaraderie, Duty of Care).

### 9.3.6 Anti-tunnel

**À quoi elles servent** : le tunnel retire un survivant de la partie tôt, et avec lui un quart de la capacité de réparation. Les protections de décrochage de base durent 10 s (Endurance, Haste 10 %, Elusive). Les perks anti-tunnel **prolongent** cette fenêtre, la **recouvrent** par une autre, ou **retirent la piste** au tueur.

| Perk | Effet LIVE (valeurs) | Conf. | Condition qui la coupe | Synergies |
|---|---|---|---|---|
| **Will to Live** (ex-Decisive Strike) | Après un décrochage, pendant 40/50/60 s : si le tueur vous saisit ou vous ramasse, un skill check réussi vous libère et l'étourdit **4 s** ; vous devenez l'Obsession ; usage unique | SS (valeurs recoupées par l'audit) | Action voyante ; portes alimentées | Off the Record |
| **Off the Record** | Après un décrochage, pendant 30/35/40 s : aura illisible, gémissements et **griffures** supprimés, **Endurance** (annulée par une action voyante) | VM (clause « portes alimentées » INC) | Action voyante (Endurance seulement) | Will to Live |
| **Deliverance** | Après avoir décroché un allié **en sécurité** : auto-décrochage réussi pendant la **1re phase** de crochet ; vous êtes Broken 160/140/120 s ; pas en 2e phase ni en dernier survivant | VM | Accroché avant d'avoir fait un décrochage sûr | Kindred, Borrowed Time |
| **Dead Hard** | Après un décrochage : blessé, en course, bouton → Endurance 0,5 s ; Exhausted 60/50/40 s | SS | Exhausted ; tueur qui retient l'attaque | Resurgence, Will to Live |
| **Blood Rush** | Après un décrochage, pendant 40/50/60 s : bouton → fin immédiate de l'Exhausted ; usage unique | SS (nombre d'usages INC) | Action voyante ; portes alimentées | Une perk d'Exhaustion |
| **Come and Get Me!** | Après avoir décroché, accroupi et immobile : bouton → blessés et mourants à 24 m sans gémissements, sang ni griffures 10/12,5/15 s ; vous criez et le tueur voit votre aura 5 s | VM | Décrochage sous pression (vous devenez la cible) | Borrowed Time, perk de chase chez le décrocheur |
| **Breakdown** | Après votre décrochage : le crochet casse (réparation 180 s) ; aura du tueur 4/5/6 s | VM | Cartes denses en crochets | Saboteur |
| **Wicked** | Après tout décrochage : aura du tueur 16/18/20 s ; au sous-sol, 1er état de crochet : auto-décrochage garanti | VM | Crochets hors sous-sol (le plus souvent) | Deliverance |

**POURQUOI empiler les fenêtres** [HEURISTIQUE, fiche Will to Live] : après un décrochage, le tueur qui tunnel attend en général la fin des 10 s de protection de base. Will to Live (40-60 s) et Off the Record (30-40 s) couvrent la suite. Deux fenêtres qui se recouvrent obligent le tueur à attendre **~40-60 s** ou à payer un stun, du temps qu'il ne passe pas sur les gens.

**COMMENT la jouer** : pendant la fenêtre, **aucune action voyante** (ne réparez pas, ne vous soignez pas) ; allez vers des tiles, pas vers un gen ; cassez la ligne de vue (Off the Record retire griffures et aura, pas votre silhouette).

**CAS D'ÉCHEC** :
- le tueur **slugge** au lieu de ramasser (Will to Live ne se déclenche que sur une saisie ou un ramassage) ;
- vous réparez ou vous soignez « pour ne pas perdre de temps » : la fenêtre se ferme ;
- tous les gens sont finis : Will to Live est désactivée ;
- Deliverance vous rend Broken 120-160 s : aucune perk de soin ne sert pendant ce temps.

> **Erreur fréquente** : penser que l'anti-tunnel protège « toute la partie ». Ces perks agissent **après un décrochage**. Avant votre premier crochet, elles ne font rien ; elles ne remplacent pas la prévention (ne pas se faire accrocher tôt, chapitre 6).

Détail : `kb/research/batch2_perks_surv_p23.md` (Will to Live, Off the Record, Deliverance, Dead Hard), `p27.md` (Blood Rush), `p30.md` (Come and Get Me!), `p26.md` (Breakdown), `p24.md` (Wicked) ; protections de décrochage au chapitre 2.

### 9.3.7 Anti-slug

**À quoi elles servent** : un survivant à terre ne répare pas, et un allié qui le relève non plus. Sans perk, un survivant à terre **plafonne à 95 %** de récupération (SS, ch. 2) : il ne se relève pas seul. Ces perks débloquent l'auto-relève, accélèrent la relève, ou protègent après.

| Perk | Effet LIVE (valeurs) | Conf. | Quand / contre quoi | Synergies · anti-synergies |
|---|---|---|---|---|
| **Unbreakable** | Une fois par partie, mis à terre **par le tueur** : récupération +25/30/35 % et auto-relève complète | VM | Tueurs qui sluggent | Tenacity, Flip-Flop ; DR probables sur la vitesse de récupération |
| **Tenacity** | À terre : récupérer en rampant ; rampe +30/40/50 % (Haste) ; gémissements −75 % ; **aura illisible** à terre | VM | Ramper vers un allié, une palette ou un Boon | Unbreakable, Exponential |
| **Boon: Exponential** | Zone de 24 m : récupération à terre +90/95/100 % et auto-relève complète | SS | Contre le slug, sans coéquipier | Shattered Hope ; totem loin des chases |
| **Soul Guard** | Soigné ou relevé depuis l'état à terre : Endurance 4/6/8 s (annulée par action voyante), CD 30 s ; sous **Cursed** (Hex du tueur), auto-relève complète | SS | Hex + slug | Moitié morte sans Hex |
| **We're Gonna Live Forever** | Relève d'un allié +100 % ; l'allié relevé gagne Endurance 6/8/10 s ; une fois toutes les 30 s | SS | Relever en ~8 s au lieu de 16 s | Soul Guard (CD de 30 s ajouté pour limiter ce combo) |
| **Buckle Up** | En relevant un allié : vous deux voyez l'aura du tueur ; relevé, il ne laisse pas de griffures et gagne +50 % Haste 3/4/5 s | SS | Relever en sachant où est le tueur | — |
| **Plot Twist** | Blessé, accroupi, immobile : bouton → passer à terre sans notification ; auto-relève +25 % ; une fois relevé : soigné entièrement, +50 % Haste 2/3/4 s ; réactivée une fois à l'alimentation des portes | SS (+25 % : VM) | Auto-soin complet sans kit | ~30 s au sol ; tueur qui patrouille |
| **Conviction** | Après avoir soigné un allié, à terre : après 25 % de récupération, bouton → auto-relève, puis Broken et **retour à terre** après 20/25/30 s | VM | Atteindre un crochet libre, une sortie, un allié à relever | Retomber seul au milieu de la carte |

**COMMENT** [HEURISTIQUE] : l'anti-slug se joue **à deux perks** : une qui vous fait bouger ou vous relever (Tenacity, Unbreakable, Exponential), une qui fait relever les autres plus vite (WGLF, Buckle Up). Relever un allié **sous les yeux** du tueur est le piège classique du slug : attendez qu'il parte ou qu'il soit en chase.

**CAS D'ÉCHEC** : tueur qui ramasse immédiatement (aucune de ces perks ne sert) ; Shattered Hope ; Deep Wound déjà actif (l'Endurance ne protège plus) ; **Knock Out** cache l'aura des mourants aux alliés au-delà d'une courte portée (SS, ch. 2).

Détail : `kb/research/batch2_perks_surv_p23.md` (Unbreakable), `p24.md` (Exponential, Plot Twist), `p25.md` (Tenacity, Soul Guard, WGLF, Conviction), `p26.md` (Buckle Up).

### 9.3.8 Fin de partie (endgame)

**À quoi elles servent** : elles s'allument à l'**alimentation des portes** (ou quand vous restez seul). Elles ne rapportent **rien** avant : leur valeur dépend de la probabilité d'arriver aux portes avec quelque chose à sauver.

| Perk | Effet LIVE (valeurs) | Conf. | Remarque |
|---|---|---|---|
| **Adrenaline** | Portes alimentées : soigné d'un état (à terre ou blessé), +50 % Haste **4 s** ; ignore l'Exhausted en cours, puis Exhausted 60/50/40 s | VM | Effet différé si vous êtes accroché : non décrit (INC) |
| **Hope** | Portes alimentées : +3/4/5 % de Haste jusqu'à la fin de l'épreuve | VM | Nerf 9.2.0 (était 5/6/7 %) |
| **No One Left Behind** | Portes alimentées : soin des autres et décrochage +50/75/100 % ; la Haste de décrochage que vous donnez passe à **20 % pendant 15 s** ; auras des autres survivants | VM | **PTB 10.2.0 : 80/90/100 %** |
| **Wake Up!** | Tous les gens finis : auras des interrupteurs (128 m) ; ouverture +8/10/12,5 % **par survivant vivant** (max 32/40/50 %) ; votre aura est visible des autres pendant l'ouverture | VM | Wiki déjà basculé sur le PTB ; LIVE reconstruite depuis la note officielle. **PTB 10.2.0 : rework** |
| **Reassurance** | Pause du crochet 20/25/30 s | SS | Contre le face-camp final |
| **Down to the Last** (ex-Sole Survivor) | Aura illisible dans un rayon de 20/22/24 m par survivant tué ou sacrifié ; dernier survivant : réparation +75 %, portes et trappe +50 % | SS (cumul de portée INC) | Rien à 4 vivants. **Rework PTB 10.2.0** |
| **Left Behind** | Dernier survivant : aura de la trappe à 24/28/32 m | SS | Slot mort tant qu'un allié vit |
| **Low Profile** | Seul survivant non neutralisé (autres à terre, portés ou accrochés) : gémissements, sang et griffures supprimés 70/80/90 s ; **redéclenchable** | VM | Aussi en milieu de partie, à chaque fois que la condition revient |
| **Flow State** | +1 jeton par gen fini (max 5) ; par jeton : bénir/purifier, soigner, décrocher +8/9/10 % | VM | Forte en fin de partie. **PTB 10.2.0 : 13/14/15 %** |

**POURQUOI** [HEURISTIQUE] : l'endgame est le moment où **tous** les survivants ont le même objectif et où le tueur n'a plus de gens à défendre ; un état de santé ou 20 s de crochet y valent plus qu'en début de partie. **QUAND** : parties qui arrivent régulièrement aux portes, équipes qui réparent vite. **CAS D'ÉCHEC** : partie perdue avant les portes ; 3-gen qui ne se termine pas ; perks tueur de fin de partie qui annulent le soin (Terminus rend Broken : pas de soin d'Adrenaline, chapitre 10).

> **À retenir** : une perk d'endgame est une **assurance**. Une seule par build suffit en général [AVIS D'EXPERT] ; deux ou trois transforment le build en pari sur l'arrivée aux portes.

Détail : `kb/research/batch2_perks_surv_p23.md` (Adrenaline), `p24.md` (Hope), `p26.md` (No One Left Behind, Wake Up!, Down to the Last), `p28.md` (Left Behind, Flow State), `p29.md` (Low Profile).

### 9.3.9 Furtivité (stealth)

**À quoi elles servent** : le tueur vous trouve par cinq canaux : la **vue**, le **rayon de terreur** (le sien, pas le vôtre), les **griffures et le sang**, le **son** (gémissements, pas, bruits d'action, notifications) et les **auras**. Une perk de furtivité ferme **un** canal. Ce qui compte, c'est le canal que **votre** tueur utilise.

| Canal fermé | Perks (effet LIVE, conf.) |
|---|---|
| **Aura** | Distortion : 1 jeton au départ, max 2, +1 par 15 s de poursuite ; une lecture d'aura consomme un jeton → aura bloquée **et** griffures supprimées 8/10/12 s (SS). Off the Record (après décrochage), Tenacity (à terre), Down to the Last. Boon: Shadow Step : zone de 24 m, griffures supprimées et auras cachées au tueur, 2/3/4 s après la sortie (SS). Self-Preservation : un autre survivant est accroché → **Elusive 20/25/30 s** (VM ; **PTB 10.2.0 : 13/14/15 s**) |
| **Griffures, sang** | Lucky Break, Parental Guidance (9.3.1). Lightweight : durée des griffures −3/4/5 s, espacement irrégulier (SS ; bug d'espacement signalé depuis 8.6.0, INC). Dance With Me : saut rapide de fenêtre ou sortie rapide de casier → griffures supprimées 5 s, CD 25/20/15 s (SS ; CD du rang I INC). Deception : feinte d'entrée de casier (Loud Noise au casier), griffures et sang supprimés 5 s, CD 25/20/15 s (SS). Poised : 20/25/30 s sans griffures après chaque gen fini (VM). Teamwork: Collective Stealth : après un soin reçu, griffures des deux survivants supprimées tant qu'ils restent à 8/12/16 m (SS). Ghost Notes (Exhausted : griffures qui s'effacent 50 % plus vite) |
| **Son** | Iron Will (gémissements). Quick & Quiet : saut rapide de palette ou fenêtre, entrée/sortie de casier sans bruit ni Loud Noise, CD 25/20/15 s (SS). Cut Loose : après un saut rapide en poursuite, les sauts rapides suivants sont silencieux 4/5/6 s, CD 45 s (SS). Light-Footed : en bonne santé, pas silencieux en course, CD 14/12/10 s après un saut rapide (VM). Calm Spirit : jamais de cri, corbeaux calmes ; coffres et totems **40/35/30 % plus lents** (VM ; **PTB 10.2.0 : +8/9/10 % à la place**). Teamwork: Soft-Spoken (bruit du gen) |
| **Déplacement discret** | Urban Evasion : accroupi +90/95/100 % (SS). Fixated : **vitesse de marche** +10/15/20 % (pas un statut Haste) et vous voyez vos griffures (SS). Cross-Examination : dans le TR **hors poursuite**, vous voyez les « Light Marks » du tueur ; dessus, Elusive qui persiste 3/4/5 s (SS) |
| **Leurres** | Diversion : après 30/25/20 s dans le TR sans poursuite, accroupi, un caillou fait une Loud Noise et de fausses griffures à 20 m (SS). Red Herring : après 1 s de réparation, entrer dans un casier crée une Loud Noise sur ce gen, CD 25/20/15 s (SS). Mirrored Illusion : après 20 %, une illusion statique de vous 40/50/60 s près d'un coffre, gen, totem ou porte ; usage unique (SS) |

**COMMENT** [HEURISTIQUE] : combinez deux canaux **complémentaires** (Lucky Break visuel + Iron Will audio est l'exemple des fiches), et jouez-les **après une rupture de ligne de vue** : aucune perk de furtivité ne vous cache d'un tueur qui vous voit.

**CAS D'ÉCHEC** : ligne de vue directe ; tueurs à aura ou à pouvoir de pistage global ; Distortion qui gâche ses jetons sur des lectures d'aura passives ; Extrasensory Perception ou Cross-Examination qui donnent Elusive mais pas l'invisibilité.

> **Erreur fréquente** : Distortion contre un tueur sans aucune lecture d'aura : 0 déclenchement. Inversement, **un jeton de Distortion qui part est une information** : le tueur a une perk ou un pouvoir d'aura (chapitre 10).

Détail : `kb/research/batch2_perks_surv_p24.md` (Distortion, Quick & Quiet, Deception, Shadow Step), `p25.md` (Urban Evasion, Cross-Examination, Self-Preservation, Dance With Me), `p26.md` (Lightweight, Diversion, Poised), `p27.md` (Light-Footed), `p29.md` (Calm Spirit, Red Herring, Cut Loose).

### 9.3.10 Totems et Boons

**Rappels [FACT] (SS, ch. 2)** : purifier un totem, bénir un totem terne en **14 s** ou un Hex en **28 s** ; une zone de Boon fait **24 m** ; le tueur éteint un Boon en **1 s**. Tous les Boons d'un même joueur partagent **un seul totem** (SS).

| Perk | Effet LIVE (valeurs) | Conf. |
|---|---|---|
| **Counterforce** | Purification de base à 125 % ; chaque totem purifié : +25 % cumulable et aura du totem le plus éloigné 10/12/14 s | VM |
| **Small Game** | Cône de 45° à 8/10/12 m : signal quand un totem (tout type) s'y trouve ; CD 14/12/10 s ; le cône se resserre de 5° par totem purifié (max −25°) | SS (**PTB 10.2.0 : aura des totems à 10/11/12 m**) |
| **Detective's Hunch** | Après chaque gen : coffres, gens et totems à 32/48/64 m, 20 s | VM |
| **Boon: Dark Theory** | Zone : +3 % de Haste, 2/3/4 s après la sortie | SS |
| **Boon: Illumination** | Zone : auras de tous les coffres et gens (bleu) ; tant que votre Boon brûle, bénir et purifier +6/8/10 % | VM (**PTB 10.2.0 : bénir +150/175/200 %, plus de bonus de purification**) |
| Circle of Healing, Shadow Step, Exponential, Steadfast | voir 9.3.4, 9.3.9, 9.3.7, 9.3.3 | SS/VM |
| Inner Strength, Overzealous, Clairvoyance, Hardened, Lend a Hand | perks qui **s'activent** par un totem (9.3.4, 9.3.3, 9.3.2 ; Lend a Hand : après un totem, une fois par allié, +2/3/4 charges de soin permanentes pendant que vous le soignez, SS) | SS/VM |

**POURQUOI / QUAND** [HEURISTIQUE] : un Boon rapporte s'il **oblige le tueur à un détour** (1 s pour l'éteindre, mais il doit venir). Posez-le près des gens que vous défendez ou d'une zone de soin, pas sur le chemin du tueur. Un Hex purifié **coupe une perk** du tueur ; le béni en fait un Boon (28 s au lieu de 14 s).

**CAS D'ÉCHEC** : **Shattered Hope** (perk tueur) détruit le Boon et révèle les survivants dans sa zone (fiches) ; tueur qui éteint systématiquement ; plus de totems disponibles en fin de partie (Inner Strength, Clairvoyance, Lend a Hand se vident).

Détail : `kb/research/batch2_perks_surv_p24.md` (Boons), `p25.md` (Counterforce), `p26.md` (Detective's Hunch), `p27.md` (Dark Theory, Clairvoyance, Overzealous), `p28.md` (Illumination, Lend a Hand), `p29.md` (Small Game, Hardened).

### 9.3.11 Objets et coffres (bref)

Ces perks transforment du **temps de coffre** en objets ou en progression. Elles coûtent du temps de gen : leur place est dans les parties sans forte pression ou dans un build dédié [HEURISTIQUE].

| Perk | Effet LIVE court | Conf. |
|---|---|---|
| Plunderer's Instinct | Auras des coffres et objets à 32/48/64 m ; +50 % de chance de rareté supérieure | VM |
| Appraisal | 4 jetons ; fouiller un coffre ouvert et vide (2 fois max par coffre) ; fouille +40/60/80 % | VM |
| Pharmacy | Déverrouillage +75/100/125 %, bruit −12 m, Emergency Med-Kit garanti | VM |
| Ace in the Hole | Objet de coffre : 1er add-on garanti (≤ Ultra Rare), 2e à 50/75/100 % (≤ Uncommon) ; add-ons gardés en cas de fuite | SS |
| Built to Last | Casier avec objet vide, 14/12/10 s → recharge 99 / 66 / 33 % ; 3 usages | **VP** (le wiki dit 12/10/8 s, valeur du PTB 9.1.0) |
| Streetwise | Objets de coffre +60/70/80 % de charges ; aura du tueur 8 s au premier objet vidé | VM |
| Exultation | Stun de palette avec un objet en main : +75 % de charges et rareté supérieure (conservée à la fuite) ; CD 30/25/20 s | VM |
| Change of Plan | 2 jetons : dans un casier, boîte à outils non-événement → Med-Kit de même rareté, 80/90/100 % de charges | VM |
| Scavenger, Residual Manifest, Apocalyptic Ingenuity | voir inventaire (9.7) | SS/VM |

### 9.3.12 SoloQ contre SWF

**Le principe** [HEURISTIQUE] : le vocal d'un SWF remplace la plupart des perks d'information alliée ; il **débloque** en revanche les perks à déclenchement coordonné. La SoloQ a besoin d'**autonomie** (perks qui ne dépendent de personne) et d'**information** (perks qui remplacent le vocal).

| Famille | Valeur en SoloQ | Valeur en SWF | Pourquoi |
|---|---|---|---|
| Info sur les alliés (Kindred, Bond, Empathy, Better Together, Aftercare, Salvation's Cry) | Forte | Faible | Le vocal donne déjà ces positions |
| Info sur le tueur (Alert, Inner Focus, Spine Chill) | Forte | Moyenne | Au vocal, un allié en chase annonce déjà le tueur |
| Autonomie (Self-Care, Deliverance, Unbreakable, Inner Strength, Resurgence) | Forte | Moyenne | Personne ne garantit votre sauvetage en SoloQ |
| Anti-tunnel personnel (Will to Live, Off the Record) | Forte | Forte | Le tunnel frappe les deux files |
| Coordination (Teamwork: Throw Down, Toughen Up, Full Circuit, Soft-Spoken, Collective Stealth, Power of Two, Blood Pact, Background Player, Breakout, Saboteur, Mettle of Man) | Faible | Forte | Déclenchement par un allié à un moment précis |
| Gens en groupe (Prove Thyself, Friendly Competition, Bardic Inspiration, ONE-TWO-THREE-FOUR!) | Faible | Moyenne à forte | La SoloQ se disperse ; le SWF peut grouper volontairement |
| Correction des alliés (Corrective Action) | Forte | Moyenne | Couvre les ratés d'alliés que vous ne connaissez pas |

> **Erreur fréquente** : jouer en SoloQ le build de son SWF. Les perks « Teamwork » et de portage y deviennent des slots morts : personne ne sait qu'il doit déclencher votre perk.

---

