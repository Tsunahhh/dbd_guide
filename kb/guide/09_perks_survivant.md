# 9. Perks survivant : comprendre, choisir, construire

> **Périmètre** : mode **1v4**, version **LIVE 10.1.2a (17/09/2026)**. Le chapitre couvre les **176 perks survivant** du périmètre du guide (fiches `kb/research/batch2_perks_surv_p23…p30.md`). Toutes ont été re-vérifiées sur page wiki complète le 27/09/2026 ; **81** ont en plus une valeur LIVE confirmée par une note officielle BHVR (83 en comptant deux confirmations partielles : Slippery Meat, Up the Ante). **31** sont modifiées par le **PTB 10.2.0** : leurs nouvelles valeurs sont toujours écrites « **PTB 10.2.0 — non LIVE** » et ne servent jamais de base à une décision aujourd'hui.
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

**Règle 4 — Les actions « voyantes » coupent les protections.** Une action voyante (*conspicuous action* ; selon le wiki, SS : réparer, soigner soi-même ou un autre, bénir ou purifier un totem, **ouvrir une porte de sortie**, saboter un crochet, décrocher un allié, Invocation ; aucune liste officielle) désactive Will to Live, annule l'Endurance d'Off the Record, de Made for This, de Soul Guard et des protections de décrochage, et désactive Blood Rush (SS). Pendant ces fenêtres, **ne réparez pas et ne vous soignez pas vous-même**.

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
- **[FACT] (VP indirect)** La **Haste de perks** est concernée : la note de dev 10.2.0 écrit que la capacité de Blood Pact à se combiner avec d'autres perks « a été réduite depuis les Diminishing Returns ». La **vitesse de saut** l'est aussi (note de dev 10.2.0 sur Spine Chill : les DR permettent de réintroduire un bonus de saut). La **vitesse de l'aiguille** de skill check est soumise depuis un correctif 9.6.0 (ch. 2).
- La **liste itemisée** des modificateurs « identiques » existe dans le **manuel en jeu** depuis 9.6.1 mais n'a **pas** été consultée pour ce guide : les autres interactions DR entre perks citées ci-dessous restent des **[HYPOTHÈSE]**.

### 9.2.2 Familles de modificateurs concernées ou probablement concernées

| Famille | Perks survivant qui y contribuent (LIVE) |
|---|---|
| **Vitesse de soin** [HYPOTHÈSE] | Botany Knowledge, We'll Make It, Boon: Circle of Healing, Empathic Connection, Desperate Measures, Do No Harm, Flow State, Leader, Better Than New, Road Life, Resilience, Spine Chill, Bound by Obsession |
| **Vitesse de réparation** [HYPOTHÈSE] | Déjà Vu, Resilience, Prove Thyself, Quick Gambit, Boon: Steadfast, Teamwork: Full Circuit, Teamwork: Soft-Spoken, Friendly Competition, Overzealous, Spine Chill, Bound by Obsession, Hyperfocus (bonus de skill check) |
| **Haste** (concernée, VP indirect) | Sprint Burst, Lithe, Balanced Landing, Background Player, Smash Hit, Adrenaline, Dramaturgy, Hope, Boon: Dark Theory, Blood Pact, Teamwork: Power of Two, Breakout, Made for This, Fruits of Your Labor, Duty of Care, Champion of Light, Wide Open Throttle, Buckle Up, Plot Twist, Babysitter, No One Left Behind (ces deux dernières renforcent la Haste de base du décrochage : voir sous le tableau) |
| **Vitesse de récupération à terre** [HYPOTHÈSE] | Unbreakable, Plot Twist, Boon: Exponential, No Mither |
| **Chance de skill check** (concernée, VP ; entre survivants seulement) | Hyperfocus, ONE-TWO-THREE-FOUR!, Deadline |
| **Vitesse de saut** (concernée, VP indirect) | Finesse, Resilience (au PTB 10.2.0 : Windows of Opportunity, Spine Chill) |

Les effets **de base** (Haste de décrochage, boost au coup) : soumission inconnue (INC, ch. 2) ; Babysitter et No One Left Behind, qui les renforcent, sont donc incertaines.

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
| **Five Moves Ahead** | Dans le rayon de terreur ou en poursuite : auras des 5 palettes **et fenêtres** les plus proches ; après un lâcher de palette, vous repartez **50 % plus tôt** (= « lâcher de palette 50 % plus rapide » du wiki : même effet, texte clarifié en 9.5.0 sans changement de gameplay, VP) ; CD 40/35/30 s après un lâcher | VM | Loops de palette ; inactive hors TR et hors poursuite ; peu utile contre les tueurs anti-palette | Lithe, Resilience. **PTB 10.2.0 : palettes seulement** |
| **Finesse** | En bonne santé : saut rapide **+20 %** ; CD 40/35/30 s après un saut rapide | SS | Premier contact sur une fenêtre forte | Lithe, Windows ; **jamais active en même temps que Resilience** |
| **Resilience** | Blessé : +3/6/9 % pour réparer, soigner, décrocher, ouvrir les portes, saboter, fouiller, bénir/purifier et **sauter les fenêtres** | VM | Parties jouées blessé (tueurs à Deep Wound, soins non rentables) | No Mither, Lithe ; exclut Finesse. **PTB 10.2.0 : 7/8/9 %** |
| **Any Means Necessary** | Auras des palettes tombées ; relever une palette tombée en 5/4/3 s ; **aucun cooldown** | VM | Recréer une palette forte **avec de l'avance** ; inutile contre les tueurs qui cassent tout | Windows ; Brutal Strength / Enduring la rendent moins rentable |
| **Wide Open Throttle** | Saut rapide de palette : +10/12,5/15 % Haste 3 s ; la palette est relevée, bloquée et révélée à tous 60 s ; CD 60 s | SS | Loops de palette enchaînées ; nulle contre Blight, Nurse | Haste (DR possibles) |
| **Last Stand** | Après 120/105/90 s dans le TR sans être poursuivi : un saut rapide **vers** le tueur à ≤ 2,5 m l'étourdit 3 s ; **une fois** par partie | VM | Casser une chase longue ou protéger un allié une fois | Windows, Lithe ; condition rarement remplie si vous êtes chassé tôt |
| **Parental Guidance** | Après avoir étourdi le tueur (tout moyen) : griffures, sang et gémissements supprimés 5/6/7 s | SS | Stun de palette près d'herbes hautes ou de structures | Head On, Iron Will |
| **Lucky Break** | Blessé : griffures et flaques de sang supprimées, **40/50/60 s au total** ; se recharge en soignant un autre survivant | SS | Casser la piste après un coup ; nulle en bonne santé et contre les tueurs à aura | Iron Will (audio) = complément exact |
| **Iron Will** | Blessé : gémissements −80/90/100 % ; **inactive si Exhausted** ; réduction additive (d'autres effets peuvent les rendre audibles) | SS | Mindgames à l'écoute | Distortion, Lucky Break ; **anti-synergie avec les perks d'Exhaustion** |

Pièges de chase (voir 9.7) : **Chemical Trap** (palette tombée piégée, Hindered 50 % 4 s, SS) et **Bada Bada Boom** (fenêtre piégée, Hindered 50 % 6 s, VM) ; ils ne rapportent que si le tueur casse la palette ou saute la fenêtre dans les 40-60 s.

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

Autres perks de gen (voir 9.7) : **Overzealous** (après un totem, +8/9/10 % ou +16/18/20 % si Hex, perdue au premier état perdu, SS) ; **Technician** (bruit du gen −16 m, raté sans explosion mais pénalité +4/3/2 %, VM) : utile seulement si vous ratez souvent.

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
| **For the People** | En bonne santé, en soignant un allié sans médikit : soin instantané (à terre → blessé, blessé → sain) ; vous devenez blessé, Broken 80/70/60 s et l'Obsession | SS | Relever un allié sous le nez du tueur | Obsession : active les perks tueur d'Obsession |

Autres perks à Broken programmé (voir 9.7) : **Second Wind** (28/24/20 s), **Clean Break** (75/60/45 s) ; et **Made for This** (Endurance 6/8/10 s après un soin donné, blessé).

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
| **Teamwork: Throw Down** | Quand vous aveuglez le tueur ou l'étourdissez **à la palette** : les autres survivants **blessés** à 24 m gagnent Endurance 6/8/10 s (et l'aura du tueur, selon la note officielle) | VM (aura INC) | Sauvetage de chase d'un allié blessé | Rien sans allié blessé proche |

Coups de protection (voir 9.7) : **Duty of Care** (+25 % Haste 4/5/6 s aux alliés à 12 m) et **Mettle of Man** (après 3 coups de protection) ; **Camaraderie** met la phase de lutte en pause 26/30/34 s quand un allié est à 16 m.

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

**CAS D'ÉCHEC** : tueur qui ramasse immédiatement (aucune de ces perks ne sert) ; Shattered Hope ; Deep Wound déjà actif (l'Endurance ne protège plus). **Knock Out** n'est **pas** une menace anti-slug : sa limitation d'aura des survivants au sol a disparu au rework 8.6.0 ; seul effet LIVE, Hindered 5 % 3/4/5 s si vous vous éloignez de plus de 6 m d'une palette lâchée dans les 6 s (VM, ch. 2 et 10).

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

**Rappels [FACT] (SS, ch. 2 et 10)** : purifier un totem ou bénir un totem terne prend **14 s**, bénir un Hex **28 s** ; une zone de Boon fait **24 m** ; le tueur éteint un Boon en **1 s**. Tous les Boons d'un même joueur partagent **un seul totem** (SS).

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

Ces perks transforment du **temps de coffre** en objets ou en progression (Plunderer's Instinct, Appraisal, Pharmacy, Ace in the Hole, Streetwise, Specialist, Exultation, Scavenger, Residual Manifest, Change of Plan, Apocalyptic Ingenuity, Moment of Glory ; effets en 9.7). Elles coûtent du temps de gen : leur place est dans les parties sans forte pression ou dans un build dédié [HEURISTIQUE]. Un point de vigilance : **Built to Last** dure **14/12/10 s** en casier selon la note officielle 9.1.0 (**VP**) ; le wiki affiche 12/10/8 s, qui est la valeur du PTB 9.1.0 non retenue à la sortie. Objets eux-mêmes : chapitre 11.

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

## 9.4 Archétypes de builds `[Intermédiaire → Avancé]`

> **Toute cette section est [HEURISTIQUE]** : raisonnement à partir des fiches, sans taux de victoire ni donnée d'usage. Les quatre perks d'un archétype ne sont pas testées ensemble ; les listes « contre quoi » et « cas d'échec » ne sont pas exhaustives. Un archétype se choisit selon **votre rôle** dans l'équipe et **votre file** (SoloQ / SWF), puis s'ajuste après chaque partie. Marque **[PTB]** = perk modifiée au PTB 10.2.0 : archétype à revoir à la sortie de 10.2.0. Logique reprise de `kb/deliverables/PERK_DATABASE.md` §5, valeurs reprises des fiches.

### 9.4.1 Chase — Lithe · Windows of Opportunity [PTB] · Parental Guidance · Lucky Break
- **POURQUOI** : Windows montre la prochaine tile sans la chercher ; Lithe convertit un saut rapide en 3 s de +50 % Haste pour l'atteindre. Parental Guidance (5/6/7 s sans traces après un stun) et Lucky Break (sans griffures ni sang quand blessé) cassent la piste après le contact.
- **QUAND** : cartes riches en fenêtres ; joueur qui connaît mal les cartes ; vous êtes souvent la cible de la première chase.
- **CONTRE QUOI** : tueurs M1 qui pistent aux griffures et au sang.
- **CAS D'ÉCHEC** : Blight, Nurse (la distance compte moins) ; zones mortes sans fenêtre ; tueurs à aura ; une seule perk d'Exhaustion. Variante : Finesse pour le premier contact en bonne santé ; Five Moves Ahead ferait doublon avec Windows en LIVE.

### 9.4.2 Information — Spine Chill [PTB] · Alert · Inner Focus · Empathy
- **POURQUOI** : quatre questions sans vocal. Le tueur me regarde-t-il (Spine Chill, 36 m) ? Où casse-t-il ou kicke-t-il (Alert, 3/4/5 s) ? Où vient-il de frapper (Inner Focus, 6/8/10 s) ? Où sont les blessés et mourants (Empathy, 64/96/128 m) ?
- **QUAND** : SoloQ ; tueurs qui kickent les gens.
- **CONTRE QUOI** : tueurs qui tournent entre les gens ; tueurs furtifs non Undetectable (Spine Chill).
- **CAS D'ÉCHEC** : Undetectable, Blindness ; tueur qui ne casse rien ; aucun apport en chase ni en soin. Variante : Kindred à la place d'Empathy si le problème est le double sauvetage.

### 9.4.3 Générateurs — Déjà Vu · Corrective Action · Boon: Steadfast · Repressed Alliance
- **POURQUOI** : Déjà Vu désigne le 3-gen à casser (+4/5/6 %) ; Corrective Action transforme les ratés des alliés en Goods (ni explosion ni notification) ; Steadfast divise la régression par deux et donne +8/9/10 % dans sa zone ; Repressed Alliance bloque 15 s le gen que vous quittez.
- **QUAND** : SoloQ contre un tueur à régression ; défense d'un groupe de gens.
- **CONTRE QUOI** : kicks, régression passive, 3-gen.
- **CAS D'ÉCHEC** : Shattered Hope ; Repressed Alliance bloque aussi les alliés ; DR entre bonus de réparation [HYPOTHÈSE]. Variantes : Potential Energy (finir un gen menacé d'un coup), Hyperfocus + Stake Out pour un joueur régulier aux Greats.

### 9.4.4 Soin — Botany Knowledge · Self-Care · Bite the Bullet · Empathy
- **POURQUOI** : autonomie (Self-Care), vitesse (Botany +30/40/50 %), discrétion (Bite the Bullet : soin silencieux, raté sans bruit et pénalité réduite à 3/2/1 %), repérage des blessés (Empathy). Un seul bonus de vitesse « pur » pour limiter les DR.
- **QUAND** : SoloQ sans soigneur fiable ; grandes cartes ; tueurs qui ne reviennent pas vite.
- **CONTRE QUOI** : tueurs M1 où chaque état de santé compte.
- **CAS D'ÉCHEC** : perks tueur qui révèlent ou ralentissent les soigneurs ; Broken ; Mangled ; one-shots, Nurse, Blight (46 à 64 s d'auto-soin ≈ la moitié ou les deux tiers d'un gen). Variante : Resurgence à la place de Self-Care si vous êtes souvent accroché.

### 9.4.5 Altruisme — Reassurance · Babysitter · We'll Make It [PTB] · We're Gonna Live Forever
- **POURQUOI** : Reassurance choisit le moment du sauvetage (20/25/30 s de pause) ; Babysitter donne l'aura du tueur 8 s et efface les traces du décroché ; We'll Make It soigne +100 % après un décrochage ; WGLF relève +100 % et donne 6/8/10 s d'Endurance au relevé.
- **QUAND** : vous êtes le sauveteur désigné de l'équipe.
- **CONTRE QUOI** : camp, proxy-camp, retour au crochet.
- **CAS D'ÉCHEC** : perks tueur qui punissent le sauveteur (chapitre 10) ; tunnel immédiat (We'll Make It rang I trop court) ; approche à 6 m qui vous fait mettre à terre ; DR entre We'll Make It et WGLF [HYPOTHÈSE]. Variante : Kindred ou Borrowed Time [PTB].

### 9.4.6 Anti-tunnel — Will to Live · Off the Record · Deliverance · Lithe
- **POURQUOI** : des fenêtres de protection qui se recouvrent après le décrochage : stun de 4 s pendant 40/50/60 s (Will to Live), Endurance et aura cachée 30/35/40 s (Off the Record), auto-décrochage après un sauvetage propre (Deliverance), relance de chase (Lithe).
- **QUAND** : tueurs qui tunnel ; SoloQ où personne ne prend de coup pour vous.
- **CONTRE QUOI** : le tunnel qui attend la fin des 10 s de protection de base.
- **CAS D'ÉCHEC** : slug ; toute action voyante pendant la fenêtre ; gens tous finis (Will to Live coupée) ; Deliverance = Broken 160/140/120 s. Variante : Dead Hard (s'active après un décrochage) pour un joueur précis.

### 9.4.7 Anti-slug — Unbreakable · Tenacity · Boon: Exponential · We're Gonna Live Forever
- **POURQUOI** : à terre, Tenacity (rampe +30/40/50 %, aura illisible) vous mène au Boon ; Exponential (+90/95/100 %) ou Unbreakable (une fois) vous relèvent seul ; WGLF relève les autres deux fois plus vite avec Endurance.
- **QUAND** : tueurs qui sluggent ; menace de 4-slug.
- **CONTRE QUOI** : slug en fin de chase, slug de fin de partie.
- **CAS D'ÉCHEC** : Shattered Hope ; tueur qui ramasse tout de suite ; Deep Wound déjà actif (Knock Out ne limite plus l'aura des survivants au sol depuis 8.6.0 : pas une menace pour ce build). Variante : Soul Guard contre un build Hex (auto-relève sous Cursed), Buckle Up.

### 9.4.8 Fin de partie — Adrenaline · No One Left Behind [PTB] · Reassurance · Clairvoyance
- **POURQUOI** : aux portes, Adrenaline rend un état et 4 s de Haste ; NOLB accélère soins et décrochages de 50/75/100 % ; Reassurance contre le face-camp final ; Clairvoyance montre interrupteurs, trappe et crochets (64 m) après un totem.
- **QUAND** : parties qui arrivent jusqu'aux portes.
- **CONTRE QUOI** : camp de fin de partie, perks tueur de fin de partie.
- **CAS D'ÉCHEC** : partie perdue avant les portes ; 3-gen (trois perks sans valeur) ; Terminus (pas de soin d'Adrenaline). **C'est l'archétype le plus spécialisé** : en pratique, gardez une perk d'endgame dans un autre build [AVIS D'EXPERT].

### 9.4.9 SoloQ — Will to Live · Windows of Opportunity [PTB] · Deliverance · Empathy
- **POURQUOI** : sans vocal, des perks qui ne dépendent pas des coéquipiers ou qui remplacent les annonces : anti-tunnel autonome (Will to Live), auto-décrochage (Deliverance), tiles visibles (Windows), position des blessés et mourants (Empathy, 64/96/128 m).
- **QUAND** : file solo.
- **CONTRE QUOI** : tunnel ; crochets mal gérés par l'équipe.
- **CAS D'ÉCHEC** : Deliverance exige un décrochage sûr **avant** votre crochet ; slug ; joueur qui connaît déjà les cartes (Windows perd sa valeur). Variantes : **Kindred** [PTB] à la place d'Empathy si le problème est le double sauvetage ou le camp (tueur révélé à ≤ 8/12/16 m du crochet ; 14/15/16 m = PTB 10.2.0 — non LIVE), Déjà Vu, Corrective Action.

### 9.4.10 SWF — Shoulder the Burden [PTB] · Breakout · Teamwork: Throw Down · Teamwork: Full Circuit
- **POURQUOI** : le vocal rend exploitables les effets à deux : Full Circuit (+5 %, zone Good +15/20/25 % par allié) ; Throw Down (Endurance 6/8/10 s aux alliés blessés à 24 m après un aveuglement ou un stun de palette) ; Breakout (Haste 6/8/10 %, lutte +25 %) ; Shoulder the Burden (prendre un état de crochet d'un allié tunnelé).
- **QUAND** : équipe coordonnée avec lampes et palettes.
- **CONTRE QUOI** : tunnel d'un joueur ; portages longs.
- **CAS D'ÉCHEC** : perks tueur anti-sauvetage (chapitre 10) ; Shoulder the Burden rend **Exposed** 60/50/40 s ; DR probable entre Full Circuit et Soft-Spoken ; la pénalité coop (85/70/55 %) que +5 % ne compense pas. Ce build suppose des gens groupés et un suivi du porteur : il **contredit** les réflexes SoloQ « un survivant par gen » et « ne pas suivre une chase de près » (`kb/deliverables/PERK_DEDUCTION.md` §5) ; abandonnez-le dès que le tueur montre une perk qui punit ces comportements.

### 9.4.11 Apprentissage — Windows of Opportunity [PTB] · Spine Chill [PTB] · Botany Knowledge · Reassurance
- **POURQUOI** : quatre perks de difficulté 1 (fiches) qui montrent ce que le débutant ne voit pas encore (tiles, regard du tueur) et réduisent le coût des erreurs (soins plus rapides, pause du crochet pour apprendre le timing du sauvetage).
- **QUAND** : premières parties, nouvelles cartes.
- **CAS D'ÉCHEC** : Windows ne sert plus quand on connaît les cartes ; Spine Chill exige une ligne de vue ; deux perks reworkées au PTB 10.2.0. **Retirez une béquille** dès qu'elle ne vous apprend plus rien (exercice : 5 parties sans Windows, en nommant la tile suivante avant de la voir).

### 9.4.12 Régularité — Distortion · Windows of Opportunity [PTB] · Sprint Burst · Empathy
- **POURQUOI** : peu de conditions de déclenchement, un peu de valeur dans presque toutes les parties. Recompte sur les notes 0-3 des 176 fiches re-vérifiées : Distortion est la seule à avoir des notes non nulles sur 8 axes sur 9 ; **treize** perks sont à 7/9, dont Windows, Sprint Burst et Empathy (le choix parmi elles est **arbitraire** : pas de doublon de rôle avec Distortion, pas de condition liée aux coéquipiers).
- **QUAND** : pour progresser sans connaître le tueur à l'avance.
- **CONTRE QUOI** : tueurs à lecture d'aura (Distortion vous le signale).
- **CAS D'ÉCHEC** : aucune perk n'excelle dans un axe ; contre un tueur précis, un build spécialisé fait mieux. Sprint Burst gâchée si vous courez sans raison.

---

## 9.5 Construire son build : la méthode `[Intermédiaire]`

```
1. RÔLE      : qui suis-je dans l'équipe ? (chaseur, réparateur, sauveteur, soigneur)
2. PROBLÈME  : qu'est-ce qui m'a fait perdre les 5 dernières parties ?
               (tunnel, slug, 3-gen, chases courtes, sauvetages ratés…)
3. UN AXE PAR SLOT : 1 perk qui traite le problème + 1 perk de rôle
               + 1 perk d'info ou d'autonomie + 1 perk libre
4. CONTRÔLE DES CONFLITS (9.1.5) :
   □ une seule perk d'Exhaustion (sauf Adrenaline)
   □ pas de « bonne santé » + « blessé » qui s'annulent
   □ pas de perk Broken + perk de soin reçu
   □ pas deux bonus identiques (DR) ni deux perks « une instance » dans l'équipe
   □ pas plus d'une perk d'endgame ou de « slot souvent mort »
5. TEST : 5 parties, puis relire l'écran de fin (qu'est-ce qui s'est déclenché ?)
```

**Exemple raisonné** [HEURISTIQUE] : SoloQ, joueur moyen en chase, meurt souvent en premier par tunnel. Problème : tunnel → **Will to Live**. Rôle : réparateur → **Déjà Vu**. Autonomie / info : **Kindred**. Slot libre : **Sprint Burst** (partir avant le contact, grâce au rayon de terreur). Contrôle : une perk d'Exhaustion ; Will to Live coupée si vous réparez juste après le décrochage : **règle de jeu** à respecter pendant 40-60 s.

> **Erreur fréquente** : changer tout le build après une partie perdue. Une partie ne dit presque rien (tueur, carte, équipe) ; jugez sur 5 à 10 parties le **nombre de déclenchements utiles** de chaque perk.

**POURQUOI partir du problème et pas de la perk** [HEURISTIQUE] : une perk ne rapporte que si son **déclencheur** survient dans tes parties (9.1). Choisir d'après ce qui t'a réellement coûté des parties garantit au moins que le déclencheur existe.

**QUAND revoir le build** : à la fin d'un bloc de 5-10 parties (revue 14.6), ou quand ton **rôle** change (ex. SoloQ → SWF, où la voix remplace une perk d'info) ; pas après une seule défaite.

**CAS D'ÉCHEC** :
- **Mauvais diagnostic** : « je meurs par tunnel » alors que la revue montre des coups évitables avant le premier crochet (M-05) ; l'anti-tunnel ne répare pas une erreur de chase. Classe d'abord tes morts par ID d'erreur (ch. 13), **puis** choisis la perk.
- **Béquille permanente** : une perk qui compense une lacune de connaissance (tiles, HUD) empêche d'apprendre ; retire-la quand le drill correspondant est réussi (9.4.11, « Retirez une béquille »).
- **Build de SWF en SoloQ** : perks dont la valeur suppose une coordination (Match Details permet au moins de vérifier ce que portent les alliés).

**EXERCICE** : dans la fiche de revue (14.6.5), ajoute une ligne « perks : déclenchements utiles / inutiles ». Après 5 parties, remplace la perk au plus faible taux utile, **une seule** à la fois (drill DR-19).

---

## 9.6 PTB 10.2.0 : ce qu'il faut anticiper (**non LIVE**) `[Avancé]`

> **Tout ce qui suit est « PTB 10.2.0 — non LIVE »** (PTB du 15 au 21/09/2026, note officielle 559 lue en entier). Aucune de ces valeurs n'est en jeu aujourd'hui ; la sortie LIVE n'a pas de date officielle. Les valeurs peuvent encore changer entre le PTB et la sortie, comme en 9.1.0 (Built to Last), 9.2.0 (Road Life) ou 9.3.0 (Off the Record, Babysitter, Borrowed Time : changements PTB annulés).

**31 perks survivant** du périmètre sont modifiées ; toutes ces lignes sont (VM) : note 559 + page wiki.

| Perk | LIVE 10.1.2a | PTB 10.2.0 — non LIVE |
|---|---|---|
| Windows of Opportunity | Murs, palettes, fenêtres à 24/28/32 m, sans CD | **Fenêtres seulement**, 24 m ; saut de fenêtre +10 % ; CD 40/35/30 s après un saut |
| Five Moves Ahead | 5 palettes **et fenêtres** | 5 palettes seulement (reste inchangé) |
| Spine Chill | 36 m avec ligne de vue ; +2/4/6 % de vitesse d'action | 40 m **sans** ligne de vue ; pas de cri 12 s, saut +10 % 12 s, CD 40/35/30 s ; **plus de bonus d'action** |
| Dark Sense | Aura du tueur 5/7/10 s | 8/9/10 s + palettes et fenêtres à 24 m + auras des alliés |
| Premonition | Cône de 45° à 36 m, signal sonore, CD 60/45/30 s | Hors poursuite, 32 m sans angle, **aura du tueur 3 s**, CD 70/65/60 s |
| Small Game | Cône sonore vers les totems | Auras des totems à 10/11/12 m |
| Kindred | Tueur révélé à ≤ 8/12/16 m du crochet | 14/15/16 m |
| Resilience | +3/6/9 % blessé | +7/8/9 % |
| Bound by Obsession | +2/4/6 % ; aura 3 s | +8/9/10 % (bénédiction incluse) ; aura 4 s |
| Calm Spirit | Coffres et totems 40/35/30 % plus lents | **+8/9/10 %** plus rapides |
| Better Than New | +12/14/16 % | +40/45/50 % |
| Empathic Connection | Soin des autres +25/30/35 % | +40/45/50 % |
| We'll Make It | 30/60/90 s | 70/80/90 s |
| No One Left Behind | Soin et décrochage +50/75/100 % | +80/90/100 % |
| Flow State | +8/9/10 % par jeton | +13/14/15 % par jeton |
| Solidarity | 50/60/70 %, sans médikit | 65/70/75 %, médikit autorisé |
| Do No Harm | Great de soin +3 % fixe | +3 % par état de crochet ; +5 % de chance de skill check |
| This Is Not Happening | Blessé : zone Great +10/20/30 % | Sans condition : Good +150/175/200 %, Great +30 % |
| Friendly Competition | +5 % pendant 100/110/120 s | +10 % pendant 80/85/90 s |
| Boon: Illumination | Bénir et purifier +6/8/10 % | Bénir +150/175/200 %, plus de bonus de purification |
| Plunderer's Instinct | Auras à 32/48/64 m | Sans limite ; déverrouillage +150/175/200 % |
| Pharmacy | Déverrouillage +75/100/125 %, Emergency Med-Kit | Bonus étendu à la fouille ; chaque coffre fouillable une fois |
| Wake Up! | +8/10/12,5 % par survivant vivant (max 32/40/50 %) | +8/9/10 % + 20 % par **autre** survivant vivant (max 68/69/70 %) ; seul, un peu plus lent |
| Blood Pact | Désactivée si vous êtes l'Obsession | Valeurs inchangées ; si vous êtes vous-même l'Obsession et êtes accroché, un autre survivant devient l'Obsession |
| Self-Preservation | Elusive 20/25/30 s | **Nerf** : 13/14/15 s |
| Shoulder the Burden | Exposed 60/50/40 s | Blessé + **Broken 160/140/120 s** ; désactivée ensuite pour **tous** les survivants |
| Borrowed Time | Endurance +6/8/10 s, Haste +10 s au décroché | **Rework** : Deep Wound subi avec Endurance → soin passif (mend) en 40/35/30 s |
| Stake Out | Jetons ; Good → Great | **Rework** : jeton après 15 s caché à ≤ 24 m du tueur ; skill checks spéciaux +4 % / −4 % ; n'active plus les autres perks de skill check |
| Slippery Meat | +3 tentatives, +2/3/4 % | **Rework** : les alliés vous décrochent 90/95/100 % plus vite ; Haste de décrochage +5 % |
| Down to the Last | Aura illisible selon les morts ; bonus de dernier survivant | **Rework** : jetons (crochet subi ou gen, max 6) ; portes +10 %/jeton pour les autres ; dernier survivant à ≥ 3 jetons : trappe sans clé, aura masquée |
| Road Life | Blessé, non Broken : soin +100 % (autrui compris), usage unique | Auto-soin débloqué +100 %, jusqu'à l'arrêt + 4 s ; plus de condition Broken ; **plus de bonus sur le soin d'autrui** |

Hors liste : **Head On** n'a qu'un correctif de bug au PTB (un raté contre la Nurse appliquait l'Exhausted), bug probablement encore présent en LIVE [HYPOTHÈSE].

**Ce que cela changerait pour les builds** [HEURISTIQUE, à revoir à la sortie] :
- **Chase** : la note de dev veut spécialiser Windows (fenêtres) et Five Moves Ahead (palettes). L'ancien effet de Windows se retrouverait avec Windows + Five Moves Ahead, ou avec Dark Sense. Spine Chill deviendrait une perk de saut plutôt que de vitesse d'action.
- **SoloQ** : Kindred (14 m dès le rang I), Empathic Connection, We'll Make It et No One Left Behind gagnent de la valeur ; Self-Preservation en perd (plusieurs exemplaires faisaient revenir le tueur au crochet, selon BHVR).
- **Anti-tunnel** : Borrowed Time ne prolongerait plus les protections du décroché ; Shoulder the Burden ne pourrait plus s'enchaîner en 4-man.
- **Perks de totem et de coffre** (Calm Spirit, Illumination, Plunderer's Instinct, Pharmacy) passent d'un coût à un gain de vitesse.

> **Erreur fréquente** : jouer aujourd'hui « comme au PTB ». Tant que 10.2.0 n'est pas LIVE, Windows montre toujours les palettes, Spine Chill accélère toujours les actions et Shoulder the Burden rend toujours Exposed.

Détail : note officielle 559 (`kb/sources/patches/official_559.txt`) ; fiches p23-p30, lignes « PTB 10.2.0 ». **Piège** : pour plusieurs perks (Windows of Opportunity, Wake Up!, Do No Harm, Bound by Obsession…), la page wiki affiche déjà le texte PTB comme courant ; les valeurs LIVE de ce chapitre ont été reconstruites depuis l'historique wiki et les lignes « was … » de la note 559.

---

## 9.7 Inventaire compact des 176 perks survivant `[Référence]`

**Contrôle du compte** : 176 lignes = 21 + 23 + 27 + 24 + 27 + 25 + 25 + 4 fiches (p23 → p30) ; 17 perks générales + 53 survivants × 3 perks = 176 ; aucun doublon (contrôle par script sur les en-têtes des fiches). Ce compte vérifie la cohérence avec les fiches, **pas** l'exhaustivité par rapport au jeu.

**Légende** — Catégorie : **Chase**, **Exh** (perk d'Exhaustion ou modificateur d'Exhaustion), **Info**, **Gen**, **Soin**, **Altr** (décrochage, sauvetage, porté), **Tunnel** (anti-tunnel), **Slug** (anti-slug), **Endg** (fin de partie), **Stealth**, **Totem** (totems et Boons), **Objet** (objets et coffres). Confiance : **VM** = page wiki complète + note officielle ; **SS** = page wiki complète seule ; **VP** = note officielle qui fait foi contre le wiki ; **INC** = détail non tranché. PTB 10.2.0 : « — » = non modifiée ; sinon nature du changement (détail en 9.6, **non LIVE**). Effets résumés : la fiche fait foi.

| Perk | Propriétaire | Effet LIVE court | Cat. | Conf. | PTB 10.2.0 |
|---|---|---|---|---|---|
| A Place For Us | Kwon Tae-young | En soignant un allié : Elusive pour les deux ; soin de l'Obsession fini → Elusive 20/25/30 s | Soin, Stealth | VM | — |
| Ace in the Hole | Ace Visconti | Objet de coffre : add-on ≤ Ultra Rare garanti, 2e (≤ Uncommon) à 50/75/100 % | Objet | SS | — |
| Adrenaline | Meg Thomas | Portes alimentées : +1 état, +50 % Haste 4 s ; ignore l'Exhausted | Endg, Exh | VM | — |
| Aftercare | Jeff Johansen | Auras mutuelles avec les 1/2/3 derniers survivants aidés ou aidants ; reset au crochet | Info | SS | — |
| Alert | Feng Min | Le tueur casse ou endommage → son aura 3/4/5 s | Info | SS | — |
| Any Means Necessary | Yui Kimura | Auras des palettes tombées ; relevées en 5/4/3 s, sans CD | Chase | VM | — |
| Apocalyptic Ingenuity | Rick Grimes | Auras des palettes cassées à 24/28/32 m ; après 1 coffre, en reconstruire une (fragile) en 3 s | Chase, Objet | VM | — |
| Appraisal | Élodie Rakoto | 4 jetons : fouiller un coffre vide (2 fois max par coffre) ; fouille +40/60/80 % | Objet | VM | — |
| Autodidact | Adam Francis | Soin d'autrui : jeton par skill check réussi (max 3/4/5), de −15 % à +60 % par check ; pas de Great ; inactive avec Med-Kit | Soin | SS | — |
| Babysitter | Steve Harrington | En décrochant : aura du tueur 8 s ; décroché sans traces, Haste de décrochage +10 % 20/25/30 s | Altr, Tunnel | VM | — |
| Background Player | Renato Lyra | Allié ramassé → 10 s pour courir : +50 % Haste 5 s ; Exhausted 30/25/20 s | Exh, Altr | SS | — |
| Bada Bada Boom | Dustin Henderson | Après 20 % : fenêtre piégée 40/50/60 s ; tueur Hindered 50 % 6 s | Chase | VM | — |
| Balanced Landing | Nea Karlsson | Chute silencieuse, stagger −75 %, +50 % Haste 3 s ; Exhausted 60/50/40 s | Exh | SS (hauteur INC) | — |
| Bardic Inspiration | Aestri Yazar & Baermar Uraz | Performance 15 s : alliés à 16 m, 0 à +3 % par skill check basique (d20) pendant 90 s ; CD 110/100/90 s | Gen | SS | — |
| Better Than New | Rebecca Chambers | Allié soigné : bénir/purifier, soin, coffres +12/14/16 % jusqu'au prochain dégât | Soin | VM | buff |
| Better Together | Nancy Wheeler | Aura de votre gen à tous ; mise à terre pendant votre réparation → auras de tous 20/25/30 s | Info | VM | — |
| Bite the Bullet | Leon S. Kennedy | Soin silencieux ; raté sans bruit, pénalité 3/2/1 % | Soin, Stealth | SS | — |
| Blast Mine | Jill Valentine | Après 40 % : gen piégé 100/110/120 s ; kick → stun 4 s, aveuglement à 12,5 m | Gen, Altr | SS | — |
| Blood Pact | Cheryl Mason | Vous ou l'Obsession blessé : auras mutuelles ; soin mutuel → +5/6/7 % Haste à 16 m | Soin | VM | modifiée |
| Blood Rush | Renato Lyra | Après décrochage, 40/50/60 s : bouton = fin de l'Exhausted ; coupée par action voyante et aux portes | Tunnel, Exh | SS (nb d'usages INC) | — |
| Boil Over | Kate Denson | Porté : lutte +60/70/80 %, crochets à 16 m cachés ; chute du tueur → +33 % de la lutte actuelle | Altr | SS | — |
| Bond | Dwight Fairfield | Auras des alliés à 20/28/36 m | Info | SS | — |
| Boon: Circle of Healing | Mikaela Reid | Zone 24 m : soin d'autrui sans kit +50/75/100 % ; blessés visibles de tous | Soin, Totem | SS | — |
| Boon: Dark Theory | Yoichi Asakawa | Zone 24 m : +3 % Haste, 2/3/4 s après la sortie | Totem | SS | — |
| Boon: Exponential | Jonah Vasquez | Zone 24 m : récupération +90/95/100 %, auto-relève | Slug, Totem | SS | — |
| Boon: Illumination | Alan Wake | Zone 24 m : auras des coffres et gens ; bénir/purifier +6/8/10 % | Totem, Info | VM | rework |
| Boon: Shadow Step | Mikaela Reid | Zone 24 m : sans griffures, aura cachée, 2/3/4 s après la sortie | Stealth, Totem | SS | — |
| Boon: Steadfast | Aurora Stardotter | Zone 24 m : régression −50 %, réparation +8/9/10 %, auras des gens | Gen, Totem | VM | — |
| Borrowed Time | Bill Overbeck | En décrochant : Endurance du décroché +6/8/10 s, Haste +10 s | Altr, Tunnel | SS | rework |
| Botany Knowledge | Claudette Morel | Soin +30/40/50 % | Soin | VM | — |
| Bound by Obsession | Générale (ex-Object of Obsession) | Vous voyez le tueur quand il lit votre aura ; Obsession : aura 3 s toutes les 30 s ; +2/4/6 % purif., soin, réparation | Info | VM | buff |
| Breakdown | Jeff Johansen | Après votre décrochage : crochet cassé (180 s), aura du tueur 4/5/6 s | Tunnel | VM | — |
| Breakout | Yui Kimura | À 5 m du porteur : Haste 6/8/10 %, lutte du porté +25 % | Altr | SS | — |
| Buckle Up | Ash Williams | En relevant : aura du tueur (pour les deux) ; relevé sans griffures, +50 % Haste 3/4/5 s | Slug | SS | — |
| Built to Last | Felix Richter | Casier 14/12/10 s avec objet vide → recharge 99/66/33 % ; 3 usages | Objet | VP | — |
| Calm Spirit | Jake Park | Jamais de cri, corbeaux calmes ; coffres et totems 40/35/30 % plus lents | Stealth | VM | buff |
| Camaraderie | Steve Harrington | Phase de lutte : allié à 16 m → pause 26/30/34 s | Altr | SS | — |
| Champion of Light | Alan Wake | En éclairant : +50 % Haste ; aveuglement → tueur Hindered 20 % 6 s ; CD 60/50/40 s | Chase, Altr | VM | — |
| Change of Plan | Dustin Henderson | 2 jetons : en casier, boîte à outils → Med-Kit de même rareté, 80/90/100 % de charges | Objet, Soin | VM | — |
| Chemical Trap | Ellen Ripley | Après 20 % : palette tombée piégée 40/50/60 s ; casse → Hindered 50 % 4 s | Chase | SS | — |
| Clairvoyance | Mikaela Reid | Après un totem, mains vides : coffres, interrupteurs, gens, trappe, crochets à 64 m 10/11/12 s | Info, Endg | VM | — |
| Clean Break | Taurie Cain | Après avoir soigné : Broken puis soigné après 75/60/45 s | Soin | VM | — |
| Come and Get Me! | Rick Grimes | Après un décrochage : blessés et mourants à 24 m sans traces 10/12,5/15 s ; vous criez, aura 5 s | Tunnel, Altr | VM | — |
| Conviction | Michonne Grimes | Après un soin donné, à terre : auto-relève dès 25 %, Broken, retour à terre après 20/25/30 s | Slug | VM | — |
| Corrective Action | Jonah Vasquez | Jetons (1/2/3, +1 par Great, max 5) : raté d'un allié → Good, aura 6 s | Gen | SS | — |
| Counterforce | Jill Valentine | Purification 125 %, +25 % par totem ; aura du totem le plus éloigné 10/12/14 s | Totem | VM | — |
| Cross-Examination | Shane Wiigwaas | TR hors poursuite : Light Marks du tueur ; dessus, Elusive 3/4/5 s | Stealth | SS | — |
| Cut Loose | Thalita Lyra | Après un saut rapide en poursuite : sauts rapides silencieux 4/5/6 s ; CD 45 s | Stealth, Chase | SS (saut moyen INC) | — |
| Dance With Me | Kate Denson | Saut rapide de fenêtre ou sortie rapide de casier : sans griffures 5 s ; CD 25/20/15 s | Stealth | SS (CD rang I INC) | — |
| Dark Sense | Générale | Après chaque gen : tueur à 24 m → aura 5/7/10 s | Info | VM | buff |
| Dead Hard | David King | Après décrochage, blessé en course : Endurance 0,5 s ; Exhausted 60/50/40 s | Exh, Tunnel | SS | — |
| Deadline | Alan Wake | Blessé, en réparant ou soignant : skill checks +6/8/10 %, placés au hasard, pénalité −50 % | Gen | SS | — |
| Deception | Élodie Rakoto | Feinte de casier (Loud Noise) ; sans griffures ni sang 5 s ; CD 25/20/15 s | Stealth | SS | — |
| Déjà Vu | Générale | Auras des 3 gens les plus groupés ; +4/5/6 % dessus | Gen, Info | SS | — |
| Deliverance | Adam Francis | Après un décrochage sûr : auto-décrochage en 1re phase ; Broken 160/140/120 s | Tunnel | VM | — |
| Desperate Measures | Felix Richter | Soin et décrochage +16/18/20 % par survivant non sain (max 64/72/80 %) | Soin | VM | — |
| Detective's Hunch | David Tapp | Après chaque gen : coffres, gens, totems à 32/48/64 m, 20 s | Info, Totem | VM | — |
| Distortion | Jeff Johansen | Jetons (max 2, +1 par 15 s de poursuite) : lecture d'aura bloquée et sans griffures 8/10/12 s | Stealth | SS | — |
| Diversion | Adam Francis | Après 30/25/20 s dans le TR hors poursuite : caillou → Loud Noise et fausses griffures à 20 m | Stealth | SS | — |
| Do No Harm | Orela Rose | Soin d'un allié +30/40/50 % par état de crochet ; Great de soin +3 % | Soin | VM | modifiée |
| Down to the Last | Générale (ex-Sole Survivor) | Aura illisible à 20/22/24 m par survivant mort ; dernier survivant : réparation +75 %, portes et trappe +50 % | Endg | SS | rework |
| Dramaturgy | Nicolas Cage | Sain, en course : +25 % Haste 2 s puis effet aléatoire (dont Exposed 12 s) ; Exhausted 60/50/40 s | Exh | SS | — |
| Duty of Care | Orela Rose | Sain, coup de protection : alliés à 12 m +25 % Haste 4/5/6 s | Altr | SS | — |
| Empathic Connection | Yoichi Asakawa | Soin des autres +25/30/35 % ; les blessés voient votre aura | Soin | VM | buff |
| Empathy | Claudette Morel | Auras des blessés et mourants à 64/96/128 m | Info | SS | — |
| Exultation | Trevor Belmont | Stun de palette avec objet : +75 % de charges, rareté supérieure ; CD 30/25/20 s | Objet | VM | — |
| Extrasensory Perception | Eleven | Accroupi 4 s : auras jusqu'à 44 m, Elusive + Oblivious, 11 s ; CD 60/50/40 s | Info | VM | — |
| Eyes of Belmont | Trevor Belmont | Gen fini → aura du tueur 1/2/3 s ; +2 s à vos auras temporisées du tueur | Info | SS | — |
| Fast Track | Lee Yun-jin | Jeton par décrochage (max 1/2/3) ; un Great → 5 % permanents par jeton | Gen | VM (unité INC) | — |
| Finesse | Lara Croft | Sain : saut rapide +20 % ; CD 40/35/30 s | Chase | SS | — |
| Five Moves Ahead | Kwon Tae-young | TR ou poursuite : 5 palettes et fenêtres ; repartir 50 % plus tôt après un lâcher ; CD 40/35/30 s | Chase | VM | modifiée |
| Fixated | Nancy Wheeler | Vitesse de marche +10/15/20 % ; vous voyez vos griffures | Stealth | SS | — |
| Flashbang | Leon S. Kennedy | Après 50/45/40 % de réparation : grenade aveuglante (casier), une fois | Altr | SS | — |
| Flip-Flop | Ash Williams | Récupération à terre → lutte à 50 % du taux, max 40/45/50 % | Slug, Altr | SS | — |
| Flow State | Kwon Tae-young | Jeton par gen (max 5) : bénir/purifier, soin, décrochage +8/9/10 % par jeton | Endg, Soin | VM | buff |
| Fogwise | Vittorio Toscano | Great de réparation → aura du tueur 4/5/6 s | Info | SS | — |
| For the People | Zarina Kassir | Sain, sans kit : soin instantané d'un allié ; vous : blessé, Broken 80/70/60 s, Obsession | Soin, Slug | SS | — |
| Friendly Competition | Thalita Lyra | Gen fini à plusieurs : +5 % pendant 100/110/120 s | Gen | VM | buff |
| Fruits of Your Labor | Aurora Stardotter | Jeton par gen ; finir un gen : par jeton +5 % Haste 2 s et +10/15/20 % de soin | Gen, Soin | VM (cumul INC) | — |
| Ghost Notes | Vee Boonyasak | Exhausted : griffures qui s'effacent 50 % plus vite, récupération +5/7,5/10 % | Exh, Stealth | VM | — |
| Hardened | Lara Croft | Après un coffre et un totem : cri supprimé, remplacé par l'aura du tueur 3/4/5 s | Info | SS | — |
| Head On | Jane Romero | Casier (3 s) : sortie → stun 3 s à ≤ 2,5 m ; Exhausted 60/50/40 s si réussi | Exh, Altr | SS | correctif de bug seul |
| Hope | Générale | Portes alimentées : +3/4/5 % Haste | Endg | VM | — |
| Hyperfocus | Rebecca Chambers | Jetons de Great (max 6) : chance et aiguille +4 %, bonus de Great +10/20/30 % par jeton | Gen | SS | — |
| Inner Focus | Haddie Kaur | Griffures des alliés ; allié touché par le tueur → aura 6/8/10 s | Info | SS | — |
| Inner Strength | Nancy Wheeler | Après un totem : 10/9/8 s en casier = soigné d'un état | Soin, Totem | SS | — |
| Invocation: Treacherous Crows | Taurie Cain | Invocation 60 s (sous-sol) : corbeaux → aura du tueur à tous 1/1,5/2 s ; blessé + Broken permanent | Info | SS | — |
| Invocation: Weaving Spiders | Sable Ward | Invocation 60 s (sous-sol) : −8/9/10 charges à tous les gens ; blessé + Broken permanent | Gen | SS | — |
| Iron Will | Jake Park | Blessé : gémissements −80/90/100 % ; inactive si Exhausted | Stealth, Chase | SS | — |
| Kindred | Générale | Survivant accroché : auras alliées ; tueur à ≤ 8/12/16 m du crochet visible | Info | VM | buff |
| Last Stand | Michonne Grimes | Après 120/105/90 s dans le TR hors poursuite : saut rapide → stun 3 s (≤ 2,5 m), une fois | Chase | VM | — |
| Leader | Dwight Fairfield | Alliés à 10 m : purif., portes, soin, sabotage, décrochage, déverrouillage +20/25/30 % | Altr, Endg | VM | — |
| Left Behind | Bill Overbeck | Dernier survivant : aura de la trappe à 24/28/32 m | Endg | SS | — |
| Lend a Hand | Shane Wiigwaas | Après un totem, une fois par allié : +2/3/4 charges de soin permanentes | Soin, Totem | SS | — |
| Light-Footed | Ellen Ripley | Sain : pas silencieux ; CD 14/12/10 s après un saut rapide | Stealth | VM | — |
| Lightweight | Générale | Griffures −3/4/5 s, espacement irrégulier | Stealth | SS (espacement INC) | — |
| Lithe | Feng Min | Saut rapide → +50 % Haste 3 s ; Exhausted 60/50/40 s | Exh, Chase | SS | — |
| Low Profile | Ada Wong | Seul debout : sans gémissements, sang ni griffures 70/80/90 s ; redéclenchable | Endg, Stealth | VM | — |
| Lucky Break | Yui Kimura | Blessé : sans griffures ni sang 40/50/60 s au total ; recharge en soignant | Stealth, Chase | SS | — |
| Lucky Star | Ellen Ripley | Sortie de casier : 30 s sans gémissements ni sang, auras des alliés et du gen proche ; CD 35/30/25 s | Stealth, Info | VM | — |
| Made for This | Gabriel Soma | Blessé : soin donné → Endurance 6/8/10 s ; Deep Wound → +1/2/3 % Haste | Soin | SS | — |
| Mettle of Man | Ash Williams | Après 3 coups de protection : encaisse le coup suivant ; ensuite aura révélée au-delà de 12/14/16 m | Altr | SS (3e coup VM) | — |
| Mirrored Illusion | Aestri Yazar & Baermar Uraz | Après 20 % : illusion statique 40/50/60 s ; usage unique | Stealth | SS | — |
| Moment of Glory | Trevor Belmont | Après 1 coffre : devenir blessé → Broken, soigné après 80/70/60 s | Soin | VM | — |
| No Mither | David King | Broken toute la partie ; sans sang ni gémissements ; auto-relève, récupération +15/20/25 % | Slug, Stealth | VM | — |
| No One Left Behind | Générale | Portes alimentées : soin d'autrui et décrochage +50/75/100 % ; Haste de décrochage 20 % 15 s | Endg | VM | buff |
| Off the Record | Zarina Kassir | Après décrochage, 30/35/40 s : aura illisible, sans gémissements ni griffures, Endurance | Tunnel | VM (clause des portes INC) | — |
| One-Two-Three-Four! | Vee Boonyasak | Performance 15 s : alliés à 16 m +20 % de chance de skill check 90 s ; CD 110/100/90 s | Gen | VM | — |
| Open-Handed | Ace Visconti | Lectures d'aura à portée de tous +8/12/16 m | Info | SS | — |
| Overcome | Jonah Vasquez | Passer de sain à blessé : boost du coup +2 s ; Exhausted 60/50/40 s | Exh | SS | — |
| Overzealous | Haddie Kaur | Après un totem : réparation +8/9/10 % (+16/18/20 % si Hex) jusqu'au prochain état perdu | Gen, Totem | SS | — |
| Parental Guidance | Yoichi Asakawa | Après un stun : sans griffures, sang ni gémissements 5/6/7 s | Chase, Stealth | SS | — |
| Pharmacy | Quentin Smith | Coffres +75/100/125 %, bruit −12 m, Emergency Med-Kit garanti | Objet | VM | buff |
| Plot Twist | Nicolas Cage | Blessé, accroupi : passer à terre en silence ; auto-relève +25 % → soigné, +50 % Haste 2/3/4 s | Slug, Soin | SS (+25 % VM) | — |
| Plunderer's Instinct | Générale | Auras des coffres et objets à 32/48/64 m ; +50 % de rareté | Objet | VM | buff |
| Poised | Jane Romero | Aura du tueur 8 s au 1er gen commencé ; 20/25/30 s sans griffures après chaque gen | Stealth, Info | VM | — |
| Potential Energy | Vittorio Toscano | Stocke 10/15/20 % de réparation, posés d'un coup ; perdus à la perte d'un état | Gen | VM | — |
| Power Struggle | Élodie Rakoto | À terre : palettes debout visibles ; porté, dès 25/20/15 % de lutte, palette → libération | Altr, Slug | SS | — |
| Premonition | Générale | Cône de 45° à 36 m : son si le tueur y est ; CD 60/45/30 s | Info | VM | rework |
| Prove Thyself | Dwight Fairfield | +6/8/10 % par allié à 4 m (max 18/24/30 %) ; une instance | Gen | SS | — |
| Quick & Quiet | Meg Thomas | Saut ou casier rapide silencieux ; CD 25/20/15 s | Stealth | SS | — |
| Quick Gambit | Vittorio Toscano | En poursuite : vous voyez les alliés, ils réparent +3/4/5 % ; CD 40 s | Info, Gen | VM | — |
| Rapid Response | Orela Rose | Devenir Exhausted → aura du tueur 2 s ; sortie rapide de casier = Exhausted volontaire 30/25/20 s | Info, Exh | SS | — |
| Reactive Healing | Ada Wong | Blessé ; allié à 32 m perd un état → +40/45/50 % de votre soin manquant | Soin | SS | — |
| Reassurance | Rebecca Chambers | À 6 m d'un accroché : pause 20/25/30 s | Altr, Endg | SS | — |
| Red Herring | Zarina Kassir | Après 1 s de réparation, casier → Loud Noise sur ce gen ; CD 25/20/15 s | Stealth | SS | — |
| Repressed Alliance | Cheryl Mason | Après 40/35/30 s de réparation seul : gen bloqué 15 s | Gen | VM | — |
| Residual Manifest | Haddie Kaur | Aveuglement → tueur Blindness 20/25/30 s ; 1 fouille de coffre ouvert = lampe | Altr, Objet | SS | — |
| Resilience | Générale | Blessé : +3/6/9 % sur la plupart des actions et les sauts de fenêtre | Gen, Chase | VM | buff |
| Resurgence | Jill Valentine | Après tout décrochage : +50/60/70 % de soin | Soin, Tunnel | SS | — |
| Road Life | Vee Boonyasak | Blessé, non Broken : Greats en réparation → à 6/5/4 jetons, soin +100 % ; usage unique | Soin | VM | rework |
| Rookie Spirit | Leon S. Kennedy | Après 5/4/3 bons skill checks : auras des gens qui régressent | Info, Gen | SS | — |
| Saboteur | Jake Park | Allié porté : crochets à 56 m du ramassage ; sabotage sans boîte +30 % ; CD 70/65/60 s | Altr | SS | — |
| Salvation's Cry | Aurora Stardotter | Chase sur vous : auras des alliés 1/2/3 s ; eux voient vous et le tueur 5 s | Info | VM | — |
| Scavenger | Gabriel Soma | Boîte vide : 5 Greats → recharge, puis réparation −50 % 40/35/30 s ; 1 boîte garantie | Objet, Gen | SS | — |
| Scene Partner | Nicolas Cage | Regarder le tueur dans le TR : cri, aura 4/5/6 s (+2 s à 50 %) ; CD 40 s | Info | SS | — |
| Second Wind | Steve Harrington | Après 1 état soigné : au décrochage, Broken puis soigné après 28/24/20 s | Soin | SS | — |
| Self-Care | Claudette Morel | Auto-soin sans kit à 25/30/35 % | Soin | SS | — |
| Self-Preservation | Lee Yun-jin | Allié accroché → Elusive 20/25/30 s | Stealth | VM | nerf |
| Shoulder the Burden | Taurie Cain | Prendre un état de crochet d'un allié ; Exposed 60/50/40 s ; une fois | Altr, Tunnel | VM | rework |
| Slippery Meat | Générale | +3 tentatives d'auto-décrochage, +2/3/4 % ; débloque l'auto-décrochage | Tunnel | SS (déblocage VP) | rework |
| Small Game | Générale | Cône de 8/10/12 m : son sur un totem ; CD 14/12/10 s | Totem | SS | rework |
| Smash Hit | Lee Yun-jin | Stun de palette → +50 % Haste 4 s ; Exhausted 30/25/20 s | Exh | SS | — |
| Solidarity | Jane Romero | Blessé, soin d'un allié sans kit : auto-soin à 50/60/70 % | Soin | VM | buff |
| Soul Guard | Cheryl Mason | Soigné ou relevé : Endurance 4/6/8 s (CD 30 s) ; auto-relève sous Cursed | Slug | SS | — |
| Specialist | Lara Croft | Jeton par coffre (max 6) ; Great → −2/3/4 charges par jeton (max 12/18/24) | Gen, Objet | SS | — |
| Spine Chill | Générale | Tueur à ≤ 36 m vous regarde : icône, +2/4/6 % de vitesse d'action | Info | SS | rework |
| Sprint Burst | Meg Thomas | En courant : +50 % Haste 2 s ; Exhausted 60/50/40 s | Exh | VM | — |
| Stake Out | David Tapp | Jetons dans le TR hors poursuite (max 2/3/4) : Good → Great | Gen | SS | rework |
| Still Sight | Aestri Yazar & Baermar Uraz | Immobile 4/3/2 s : auras du tueur, des coffres et gens à 24 m | Info | VM | — |
| Streetwise | Nea Karlsson | Objets de coffre +60/70/80 % de charges ; objet vidé → aura du tueur 8 s | Objet | VM | — |
| Strength in Shadows | Sable Ward | Sous-sol : auto-soin à 70 % ; soin fini → aura du tueur 6/8/10 s | Soin | SS | — |
| Teamwork: Collective Stealth | Renato Lyra | Soigné par un allié : sans griffures tous deux à 8/12/16 m | Stealth | SS | — |
| Teamwork: Full Circuit | Dustin Henderson | Par allié sur le gen : zone Good +15/20/25 % ; +5 % | Gen | VM | — |
| Teamwork: Power of Two | Thalita Lyra | Après un soin donné : +5 % Haste à deux, à 8/12/16 m | Soin | SS | — |
| Teamwork: Soft-Spoken | Eleven | Par allié sur le gen : bruit −15/20/25 % ; +5 % | Gen, Stealth | VM | — |
| Teamwork: Throw Down | Michonne Grimes | Aveuglement ou stun de palette : alliés blessés à 24 m Endurance 6/8/10 s | Altr | VM (aura INC) | — |
| Teamwork: Toughen Up | Rick Grimes | Blessé ; un allié à 24 m aveugle ou stun (palette) → sans traces 20/25/30 s | Stealth | VM | — |
| Technician | Feng Min | Bruit du gen −16 m ; raté sans explosion, pénalité +4/3/2 % | Gen, Stealth | VM | — |
| Tenacity | David Tapp | À terre : récupérer en rampant, rampe +30/40/50 %, gémissements −75 %, aura illisible | Slug | VM | — |
| This Is Not Happening | Générale | Blessé : zone Great +10/20/30 % (réparation, soin) | Gen | VM | buff |
| Troubleshooter | Gabriel Soma | En poursuite : gen le plus avancé ; palette lâchée → aura du tueur 4/5/6 s | Info, Chase | SS | — |
| Unbreakable | Bill Overbeck | Une fois, mis à terre par le tueur : récupération +25/30/35 %, auto-relève | Slug | VM | — |
| Up the Ante | Ace Visconti | Débloque l'auto-décrochage pour tous ; +1/2/3 % par survivant vivant (max 3/6/9 %) | Tunnel | SS (déblocage VM) | — |
| Urban Evasion | Nea Karlsson | Accroupi +90/95/100 % | Stealth | SS | — |
| Vigil | Quentin Smith | Vous et alliés à 16 m : récupération d'Exhausted +20/25/30 % | Exh | VM | — |
| Visionary | Felix Richter | Auras des gens à 32 m ; coupée 20/18/16 s après chaque gen | Info | SS | — |
| Wake Up! | Quentin Smith | Gens finis : interrupteurs visibles ; ouverture +8/10/12,5 % par survivant vivant | Endg | VM | buff |
| We See You | Eleven | 4 lectures de votre aura → aura du tueur à tous 10/12,5/15 s | Info | VM | — |
| We'll Make It | Générale | Après un décrochage : soin des autres +100 % pendant 30/60/90 s | Soin, Altr | VM | buff |
| We're Gonna Live Forever | David King | Relève +100 % ; relevé → Endurance 6/8/10 s (une fois / 30 s) | Slug | SS | — |
| Wicked | Sable Ward | Après tout décrochage : aura du tueur 16/18/20 s ; sous-sol, 1er état : auto-décrochage | Tunnel, Info | VM | — |
| Wide Open Throttle | Shane Wiigwaas | Saut rapide de palette : +10/12,5/15 % Haste 3 s, palette bloquée 60 s ; CD 60 s | Chase | SS | — |
| Will to Live | Générale (ex-Decisive Strike) | Après décrochage, 40/50/60 s : saisie → skill check, stun 4 s ; une fois | Tunnel | SS | — |
| Windows of Opportunity | Kate Denson | Murs, palettes, fenêtres à 24/28/32 m ; sans CD | Chase | SS | rework |
| Wiretap | Ada Wong | Après 40 % : gen piégé 100/110/120 s ; tueur à 14 m → aura à tous | Info, Gen | SS | — |

---

## Sources du chapitre

- **Fiches re-vérifiées (27/09/2026)** : `kb/research/batch2_perks_surv_p23.md` à `batch2_perks_surv_p30.md` (176 perks ; valeurs LIVE, PTB, synergies, notes HEURISTIQUE).
- **Logique des archétypes** : `kb/deliverables/PERK_DATABASE.md` §5 (valeurs remplacées par celles des fiches) ; déduction côté tueur : `kb/deliverables/PERK_DEDUCTION.md`.
- **Corrections prioritaires** : `kb/ledgers/AUDIT_PHASE0_ERRATA.md` (piège du digest wiki affichant le PTB).
- **Notes officielles BHVR** (`kb/sources/patches/official_*.txt`) : 9.0.0, 9.1.0 (516), 9.2.0 (523), 9.3.0 (529), 9.3.2, 9.4.0 (534), 9.5.0, 9.6.0 (544, Diminishing Returns), 10.1.0 (556), 10.1.1 (557), **PTB 10.2.0 (559, non LIVE)**.
- **Pages wiki** : pages de chaque perk sur deadbydaylight.wiki.gg (via `kb/sources/wiki_perks_digest.md`, brut `wiki_perks.json`).
- **Mécaniques de base** : chapitre 2 (protections de décrochage, statuts, DR) ; chapitre 3 (vitesses, conversion distance → temps) ; chapitre 10 (perks tueur et contre-jeu).
