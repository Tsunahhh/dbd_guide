# 10. Perks tueur : identification, counterplay et PERK DEDUCTION

> **Périmètre** : mode **1v4**, version **LIVE 10.1.2a (17/09/2026)**. Les **145 perks tueur** du périmètre ont été re-vérifiées sur page wiki complète (27/09/2026), dont 62 confirmées par une note officielle BHVR. **27 d'entre elles sont modifiées par le PTB 10.2.0** : ces valeurs sont toujours écrites « **PTB 10.2.0 — non LIVE** » et ne servent jamais de base à une décision aujourd'hui.

Ce chapitre répond à deux questions, du point de vue du survivant :

1. **« J'ai observé A + B + C, donc la perk X est plausible. »**
2. **« Quel comportement reste bon même si je me trompe ? »**

Pendant la partie, **personne ne voit le loadout du tueur** : la déduction est la seule porte d'entrée, et l'écran de fin la seule vérification. Le but n'est donc pas de « deviner juste » mais de **jouer mieux avec une information incomplète**.

**Comment lire ce chapitre**

| Étiquette | Sens ici |
|---|---|
| **[FACT]** | Mécanique ou valeur vérifiée. Confiance : **(VP)** note officielle seule, **(VM)** wiki complet + note officielle, **(SS)** wiki complet seul, **(INC)** incertain |
| **[HEURISTIQUE]** | Règle de jeu raisonnée à partir de l'effet d'une perk, **non mesurée**. C'est le cas de tous les « indices » et « réponses » du chapitre |
| **[AVIS D'EXPERT]** | Arbitrage proposé par ce guide, sans source (aucune VOD analysée) |
| **[HYPOTHÈSE]** | Modèle plausible, non vérifié |
| **[SITUATIONNEL]** | S'inverse selon le tueur, la carte ou l'état de partie |
| **[INCERTAIN]** | Détail non tranché : ne jamais fonder une décision fine dessus |
| **calcul** | Arithmétique faite sur des [FACT] (conversion en secondes, surtout) |

**Force du lien signal → perk** [HEURISTIQUE] :
- **Signature** : dans le périmètre des 145 perks, le signal ne correspond qu'à **une** perk. Hypothèse de travail très forte, **jamais une certitude** (un pouvoir, un add-on ou une perk de coéquipier peut produire le même effet ; le périmètre n'a pas été comparé à la liste officielle LIVE).
- **Fort** : 2 ou 3 candidates, qu'un test simple départage.
- **Faible** : repose sur le comportement du tueur. Talent, pouvoir ou hasard suffisent souvent à l'expliquer.

> **À retenir** : **1 gen solo = 90 s** de réparation (90 charges à 1 charge/s). Toutes les pertes de ce chapitre se convertissent en secondes : **1 % de gen = 0,9 s de réparation solo** (calcul).

---

## 10.1 Ce qui est observable, ce qui ne l'est pas `[Débutant]`

### Le loadout est caché jusqu'à la fin

- **[FACT] (VP)** Depuis **9.6.0**, le loadout du tueur est **caché jusqu'à l'écran de fin**. Seule son **identité** est révélée, dès qu'un survivant entre en poursuite ou perd un état de santé.
- L'idée « les perks du tueur deviennent visibles après la 1re chase » est **fausse** (erreur du guide d'origine, corrigée par l'audit).
- **[FACT] (VP)** Les loadouts des **coéquipiers** (perks, objets, add-ons, offrandes) sont visibles dans **Match Details** depuis 9.6.0.
  - Usage [HEURISTIQUE] : avant d'accuser une perk du tueur, **écarter les causes côté survivant**. Une perk de coéquipier peut créer une Obsession ou montrer l'aura du tueur.

### Aucune icône « ton aura est lue »

En général, **rien ne vous dit que le tueur vous voit** [HEURISTIQUE]. Deux exceptions où **ce que vous voyez implique qu'on vous voit** [FACT] :

| Vous voyez… | Donc… | Perk | Confiance |
|---|---|---|---|
| L'aura rouge du tueur, sans perk d'aura (ni chez vous, ni chez un coéquipier) | Il voit la vôtre pendant la même durée | Deerstalker | (VM) |
| L'aura d'un **objet au sol** en passant près de lui | Vous êtes à ≤ 12 m de l'objet et le tueur vous voit | Weave Attunement | (SS) |

Un jeton de **Distortion** consommé signale aussi une lecture d'aura (SS : fiche re-vérifiée sur page wiki complète).

### Les familles de signaux

| Famille | Ce que le survivant voit ou entend | Réserve principale |
|---|---|---|
| **Statuts (HUD)** | Exposed, Oblivious, Blindness, Exhausted, Broken, Hindered, Mangled, Haemorrhage ; icône d'Obsession | Les pouvoirs et add-ons en donnent aussi (§10.1, pièges) |
| **Totems** | Hex allumé (flamme, grésillement de près) ; totem purifié qui se rallume ; Boon disparu ; aura d'un totem | 5 totems par partie ; purification 14 s ; bénédiction d'un terne 14 s, d'un Hex 28 s [FACT] (SS). Plusieurs Hex ne s'allument **qu'en cours de partie** |
| **Blocages de l'Entité** | Gen, fenêtre, palette, interrupteur, sortie, coffre, totem non interactif | **Blocage basekit** : au 3e vault de la même fenêtre dans une chase, fenêtre bloquée **30 s pour ce survivant seul** [FACT] (SS) |
| **Barres de progression** | Chute brutale du gen ; recul sans kick ; barre de porte qui redescend ; action lente | Un skill check raté fait **toujours** régresser [FACT] (VM) |
| **Cris** | Cri involontaire (le sien, ceux des autres) | Selon la perk, le cri révèle l'**aura**, la **position**, une simple **Loud Noise Notification**, ou rien (Pain Resonance) |
| **Sons, TR** | Heartbeat absent, trop large, fixe ; respiration du tueur ; stinger de fin d'Undetectable | Undetectable supprime TR et tache rouge [FACT] (SS). Un TR peut être **transféré** loin du tueur |
| **Auras reçues** | Aura du tueur ; d'un totem ; d'un gen (Trail of Torment) ; d'un objet au sol ; du soigné (Deathbound) | Rares : chacune est presque une signature |
| **Carte** | Nombre de coffres ; coffres refermés ; objets au sol ; lumières d'interrupteur | 3 coffres par défaut [FACT] (SS) |
| **Comportement du tueur** | Trajectoire, timing, vitesse de casse ou de vault, fente | **Signal faible** : talent et pouvoir l'expliquent souvent |

**Ce qui n'est pas un signal fiable** :
- **Les auras de gens** (blanc, jaune) décrites par DMS, Eruption, Thrilling Tremors, Surveillance, Machine Learning, Overture of Doom, Jagged Compass sont **côté tueur**. Le survivant voit le **blocage**, pas la couleur. Seule exception : **Trail of Torment** (aura jaune visible par tous).
- **Les crochets Fléau (Scourge)** : le wiki dit « highlighted in white » (pour le tueur). Leur visibilité côté survivant n'est **pas établie** **[INCERTAIN]** : ne pas en faire un signal de base.
- **Le rendu exact d'un gen bloqué** n'a pas été décrit par les sources **[INCERTAIN]**.

### Cinq pièges de raisonnement `[Intermédiaire]`

1. **Le pouvoir et les add-ons imitent les perks.** Mangled + Haemorrhage, Oblivious (Myers, Ghost Face, Sadako…), Blindness (add-ons), casse de palette par pouvoir. Réflexe : « le tueur identifié peut-il faire ça **sans perk** ? »
2. **Le basekit imite les perks.** Blocage de fenêtre au 3e vault (≠ Bamboozle), anti-camp, Bloodlust, protections de décrochage.
3. **Une perk en déclenche une autre.** Tout blocage de gen, quelle qu'en soit la source, rend le tueur Undetectable 30 s sous **Secret Project** (VM). Tout changement d'Obsession rend la nouvelle Obsession Oblivious sous **Nemesis** (SS).
4. **Un seul événement ne prouve presque rien.** C'est la **coïncidence répétée** au même déclencheur qui compte.
5. **L'identité du tueur est un indice faible.** Elle rend plus probables les perks de son personnage (Deathslinger + DMS ; Artist + Pain Resonance / Grim Embrace ; The First + Turn Back the Clock / Hive Mind / Secret Project), mais n'importe quel tueur peut porter les perks d'un autre [AVIS D'EXPERT].

> **Erreur fréquente** : appliquer une consigne « absolue » du genre « purifiez un Hex dès qu'il s'allume ». L'audit la classe parmi les heuristiques **dangereuses** : Haunted Ground et Retribution punissent justement ce réflexe.

Détail : `kb/deliverables/PERK_DEDUCTION.md` §1.

---

## 10.2 Règles vérifiées : régression, blocage, historique des patchs `[Intermédiaire]`

### Régression des générateurs (basekit)

| Règle | Valeur LIVE | Confiance | En secondes (calcul) |
|---|---|---|---|
| Coup de pied (Damage Generator) | action **1,8 s** ; **−5 %** de la progression **totale** instantanément (depuis 7.5.0), puis régression | [FACT] (VM) | −4,5 s de réparation solo |
| Régression de base | **−0,25 charge/s** ; 90 → 0 en 360 s | [FACT] (VM) | −15 s de réparation par minute sans personne |
| Stopper la régression | **réparer 5 %** (fin du « gen tapping ») | [FACT] (VM) | 4,5 s de présence minimum |
| Regression Events | **8 par gen** ; event = perte instantanée ≥ 2,5 % causée par le tueur ; **pointes dès le 4e** ; au 8e, le tueur ne peut plus interagir avec ce gen | [FACT] (VM), depuis 7.5.0 | — |
| Skill check raté | ne compte **pas** comme event et fait **toujours** régresser, même au plafond | [FACT] (VM) | — |
| Gen bloqué | ni progression, ni régression, ni perte instantanée pendant le blocage | [FACT] (SS) | protège le gen des explosions |
| Diminishing Returns (9.6.0) | modificateurs **identiques** : 100 / 50 / 25 / 12,5 / 5 % ; **add-ons exclus** ; malus de vitesse d'action réduits seulement entre sources d'un **même rôle** | [FACT] (VP) | — |
| DR : quelles catégories ? | **en partie tranché** : vitesse de skill check (correctif 9.6.0), Haste de perks et vitesse de vault (notes de dev 10.2.0) sont soumises (VP) ; la liste complète est dans le **manuel en jeu** (9.6.1), non transcrite. Blocages, pertes instantanées, régressions (Ruin, Call of Brine, Overcharge, Lay Waste) : non établis | [FACT] (VP) pour les règles ; **[INCERTAIN]** pour la liste | ne pas compter sur un DR des régressions |

> **Note avancée** : « le 3-gen infini n'existe plus » est une **conséquence** du plafond de 8 events [HEURISTIQUE]. Un gen avancé à pointes a une **valeur défensive** : peu de kicks restants, et au 8e seul un skill check raté le fait encore reculer.

### Historique des patchs : les pièges

| Idée répandue | Réalité LIVE 10.1.2a | Confiance |
|---|---|---|
| « Eruption est passée à −5 % en 9.2.0 » | **Faux.** Le changement 10 → 5 % annoncé pour 9.2.0 a été **reporté** (« Postponed ») et n'est jamais entré en LIVE. **Eruption = −10 %** en LIVE | [FACT] (VM) |
| « Pop est passé de 20 à 15 % en 9.2.0 » | **Faux**, même report. Pop a été **réécrit en 9.5.0** : +15 % de la progression **totale**, soit **20 %** avec les 5 % du kick ; fenêtre 35/40/45 s | [FACT] (VM) |
| « Pain Resonance a été nerfée en 9.2.0 » | **Faux**, même report. **10/15/20 %** de la progression totale (depuis 8.0.0) | [FACT] (VM) |
| Hex: Ruin | **100/125/150 %** de la régression normale depuis 9.2.0 (était 50/75/100) | [FACT] (VM) |
| Dead Man's Switch | blocage **25/30/35 s** depuis 9.2.0 (était 40/45/50) ; **recharge 50 s** | [FACT] (VM) ; recharge (VP) |
| Oppression | jusqu'à **4** autres gens ; recharge 45/40/35 s depuis 9.2.0 | [FACT] (VM) |
| Terminus | Broken **35/40/45 s** après l'ouverture (depuis 9.0.0) ; depuis 9.5.0 il se déclenche assez tôt pour bloquer Adrenaline | [FACT] (VM) |
| Knock Out « cache l'aura des survivants au sol » | **Faux depuis 8.6.0.** Seul effet LIVE : Hindered 5 % après un drop suivi d'une course | [FACT] (VM) |
| Nowhere to Hide « 18 m » | 18 m n'a existé qu'au **PTB 10.1.0** ; **LIVE = 24 m autour du gen** | [FACT] (VM) |

### Les perks de slowdown en secondes

| Perk | Effet LIVE vérifié | Perte max. par déclenchement (calcul, tier 3) | Confiance |
|---|---|---|---|
| **Scourge Hook: Pain Resonance** | 1er hook de chaque survivant sur crochet Fléau (4 jetons) : le gen **le plus avancé** perd 10/15/20 % de sa progression totale, puis régresse ; les réparateurs crient **sans** Loud Noise Notification | −18 s, ×4 au maximum | (VM) |
| **Pop Goes the Weasel** | 35/40/45 s après un hook, prochain kick : **20 %** au total | −18 s au lieu de −4,5 s | (VM) |
| **Eruption** | au down (tout moyen) : chaque gen kické (surligné côté tueur) perd **10 %** ; réparateurs : cri + aura 8/10/12 s ; recharge 30 s qui efface les surlignages | −9 s **par gen kické** | (VM) |
| **Surge** | down par **coup de base** : gens à ≤ 32 m **du tueur** −6/7/8 % ; **pas de cri** dans le texte LIVE | −7,2 s par gen proche | (SS) |
| **Turn Back the Clock** | 40/50/60 s après un hook, pouvoir sur un gen à ≤ 20 m : −10 % | −9 s | (VM) |
| **Hex: Hive Mind** | au 4e gen terminé, tous les gens restants −6/8/10 % | −27 s au total (3 gens restent sur la carte) | (VM) |
| **Hex: Ruin** | gens non réparés : régression automatique 100/125/150 % | −22,5 s par minute et par gen abandonné | (VM) |
| **Grim Embrace** | après chaque 1er hook d'un survivant, dès que le tueur est à ≥ 16 m du crochet : **tous** les gens bloqués 6/8/10 s ; au 4e jeton : 40 s + aura de l'Obsession 6 s | temps de blocage, pas de perte | (SS) |
| **Dead Man's Switch** | après un hook, le 1er gen **lâché** est bloqué 25/30/35 s ; recharge 50 s | temps de blocage | (VM) / (VP) |
| **Corrupt Intervention** | 3 gens les plus éloignés du tueur bloqués 80/100/120 s ; levé au 1er survivant mourant | temps de blocage | (SS) |

> **À retenir** : un **gen bloqué ne subit aucune perte instantanée**. Pendant un blocage de Corrupt ou de Grim Embrace, le gen le plus avancé est protégé de Pain Resonance ou de Pop [HEURISTIQUE tirée d'un FACT].

Détail : `kb/research/batch3_perks_kill_p90.md` (règles de régression, historique 9.2.0) et `p91.md`.

---

## 10.3 La méthode de déduction `[Intermédiaire]`

### Question 1 : « A + B + C → perk X plausible »

On relie un **déclencheur** à un **effet visible**, puis on écarte les autres causes, puis on attend la **répétition**.

```
  DÉCLENCHEUR            EFFET VISIBLE            FILTRES                   VERDICT
  (hook, down,     →     (statut, cri,      →     1. pouvoir / add-on ?  →  Signature / Fort /
   pickup, kick,          blocage, barre,          2. basekit ?              Faible
   gen fini, portes,      son, aura)               3. perk de coéquipier ?        |
   stun, soin,                                     (Match Details)                v
   purification)                                   4. vu une 2e fois ?     RÉPONSE ROBUSTE
```

**Les déclencheurs à surveiller** (dans l'ordre d'une partie) : spawn · 1er coffre / totem · 1er vault · 1er coup reçu · stun ou flash · **down** · **pickup** · portage · **hook** · départ du tueur du crochet · décrochage · **kick** · **gen terminé** · 4e gen · **portes alimentées** · interrupteur · porte ouverte.

### Question 2 : « quel comportement minimise le risque ? »

Choisir l'action qui reste bonne **contre toutes les candidates** et qui coûte peu si l'hypothèse est fausse [AVIS D'EXPERT].

- Exemple type : **après un hook, lâcher d'abord un gen peu avancé.** Le geste neutralise Dead Man's Switch (le 1er gen lâché consomme l'effet) et ne coûte presque rien si la perk est absente.
- Contre-exemple : « lâcher tous les gens kickés dès qu'une chase tourne mal ». Utile contre Eruption, mais un gen kické lâché perd 15 s de réparation par minute (calcul) : à réserver aux parties où le cri d'Eruption a déjà été entendu.

### Trois raisonnements complets

**Exemple 1 : explosion au hook** `[Intermédiaire]`
- **A** : au moment du hook, je crie en réparant. **B** : mon gen, le plus avancé de la carte, perd une grosse part de sa barre. **C** : le tueur est l'Artist.
- → **Pain Resonance** (Signature, effet VM). Test : se reproduit-il au 1er hook du survivant suivant, et **pas** au 2e hook du même ?
- Réponse robuste : ne plus garder un seul gen très avancé au moment des 1ers hooks ; après le cri, **réparer tout de suite 5 %** plutôt que partir et revenir (DMS possible en combo).

**Exemple 2 : cri au down, sans hook** `[Intermédiaire]`
- **A** : un coéquipier tombe. **B** : je crie en réparant un gen que le tueur avait kické il y a 2 minutes, à l'autre bout de la carte. **C** : le gen recule.
- → **Eruption** (Signature avec le cri, VM). **Surge** est écartée : pas de cri dans son texte LIVE, et elle ne touche que les gens à ≤ 32 m du tueur.
- Réponse robuste : quand une chase tourne mal, ne pas rester sur un gen kické ; éloigner les chases des gens avancés.

**Exemple 3 : le tueur « disparaît » au crochet** `[Avancé]`
- **A** : plus de heartbeat 3 s après le hook. **B** : le tueur est un tueur sans furtivité naturelle. **C** : j'entends une respiration près d'un mur.
- → **Insidious** (Fort, VM : Undetectable **tant qu'il reste immobile**), ou Silent Shadow (Undetectable 11/12/13 s à chaque hook, VM).
- Réponse robuste : « **pas de cœur ≠ tueur parti** ». Inspecter les angles morts avant de décrocher ; en SWF, venir à deux.

> **Erreur fréquente** : conclure après **un** événement. Un gen qui recule peut venir d'un kick non vu ou d'un skill check raté d'un coéquipier (−10 %), sans aucune perk.

Détail : `kb/deliverables/PERK_DEDUCTION.md` §1.1 et §3.

---

## 10.4 Table des signaux → perks candidates `[Intermédiaire]`

> Toutes les lignes sont **[HEURISTIQUE]**. La confiance entre parenthèses est celle de l'**effet** de la perk ; la dernière colonne donne la force du **lien** (Signature / Fort / Faible, voir l'introduction). Les effets complets sont dans l'inventaire (§10.10).

### Statuts (HUD)

| Signal | Candidates | Ce qui départage | Lien |
|---|---|---|---|
| **Exposed** pour tous à l'alimentation des portes | NOED | Totem Hex dont l'aura est visible de 4 m, puis jusqu'à 24 m en 30 s (SS) | Fort |
| **Exposed** pour tous juste après une purification **ou une bénédiction** de Hex | Hex: Haunted Ground | 2 Hex au départ ; le 2e s'éteint (SS) | Signature |
| **Cri collectif + Exposed** quand le 4e survivant différent est accroché | Ravenous | Compter les 1ers hooks ; Exposed 40/50/60 s (VM) | Signature |
| **Exposed** permanent pour tous, sans déclencheur, totem allumé | Hex: Devour Hope | Jetons gagnés sur les décrochages à ≥ 24 m du tueur ; Exposed à 3 jetons (SS) | Fort |
| **Exposed** en entrant dans le TR d'un tueur **qui porte** | Starstruck | Persiste 26/28/30 s après (SS) | Signature |
| **Exposed** de l'Obsession quand un **autre** est accroché | Friends 'til the End | + aura de l'Obsession 6/8/10 s (SS) | Signature |
| **Exposed + cri** du sauveteur, tueur à > 32 m | Make Your Choice | Exposed 40/50/60 s (SS) | Signature |
| **Exposed + cri** en touchant un gen tout juste kické | Dragon's Grip | Dans les 30 s du kick ; localisé 4 s ; Exposed 60 s (VM) | Signature |
| **Exposed** juste après avoir étourdi le tueur | Hubris | 20/25/30 s ; recharge 20 s (VM) | Signature |
| **Exposed + cri** en sortant d'un casier | Iron Maiden | Loud Noise Notification 4 s, Exposed 30 s (SS) | Signature |
| **Exposed** de l'Obsession seule aux portes | Rancor | Avant : **tous** crient à chaque gen terminé (SS) | Signature |
| **Oblivious** chez tous les blessés quand un sain est blessé | Hysteria | 30/35/40 s, recharge 20 s (SS) | Fort |
| **Oblivious** + Hex allumé après **son** 1er hook | Hex: Fortune's Fool | Le maudit voit l'aura du totem (SS) | Signature |
| **Oblivious** après avoir purifié ou béni un totem | Hex: Retribution | Au retrait d'un Hex : tous révélés 20 s (VM) | Signature |
| **Oblivious** au moment où l'on **devient l'Obsession** | Nemesis | À **tout** transfert d'Obsession ; aura 8 s (SS) | Signature |
| **Oblivious** au hook d'un autre, en étant blessé et le plus loin | Alien Instinct | Aura 8 s + Oblivious 40/50/60 s (SS) | Signature |
| **Oblivious** après avoir ramassé un objet | Weave Attunement | Objets vides qui tombent seuls (SS) | Signature |
| Cri du soigneur à la fin d'un soin, puis **Oblivious** loin du soigné | Deathbound | Aucune condition de distance au tueur (SS) | Signature |
| **Blindness + cri** quand le tueur fouille un casier | Ultimate Weapon | ≤ 40 m **du casier** (VM) | Signature |
| **Blindness + Exhausted** en réparant | Mindbreaker | Persiste 3/4/5 s (SS) | Signature |
| **Blindness + Exhausted** en soignant dans le TR | Septic Touch | Persiste 20/25/30 s (VM) | Signature |
| **Blindness** permanente après un coup, Hex allumé | Hex: The Third Seal | 2/3/4 derniers touchés (SS) | Fort |
| Écran blanc 1,5 s après un stun ou un flash | Hex: Two Can Play | Hex allumé après 4/3/2 stuns ou blinds (SS) | Signature |
| **Exhausted** en sortant un objet près du tueur | Overwhelming Presence | Objet à ≤ 32 m ; 15 s (VM) | Signature |
| **Exhausted** au moment de perdre un état de santé | Genetic Limits | 6/7/8 s (SS) | Fort |
| **Exhausted + Haemorrhage** au hook d'un autre, en étant blessé | Blood Echo | À **chaque** hook, aucune recharge (SS) | Signature |
| **Exhausted** après avoir fait s'envoler un corbeau | Languid Touch | Corbeau à ≤ 36 m du tueur (SS) | Signature |
| **Mangled + Haemorrhage** après un coup de base | Sloppy Butcher | Si le pouvoir du tueur ne les donne pas (SS) | Signature hors pouvoir |
| **Haemorrhage seule** au décrochage d'un crochet Fléau | Weeping Wounds | Pas de Mangled (le « Mangled » du guide d'origine est faux) (SS) | Signature |
| **Broken** à l'alimentation des portes (blessés, au sol, accrochés) | Terminus | Puis 35/40/45 s après l'ouverture (VM) | Signature |
| **Broken** après un coup protecteur | Forced Penance | 60/70/80 s (SS) | Signature |
| **Broken** après un raté ou un arrêt en fin d'auto-soin | No Quarter | Rafale de skill checks à 75 % (SS) | Signature |
| **Hindered** après un drop de palette + course | Knock Out | > 6 m dans les 6 s ; 5 % (VM) | Signature |
| **Hindered** quand un coéquipier tombe près de soi | Forced Hesitation | ≤ 16 m ; 20 % pendant 10 s (SS) | Signature |
| **Hindered** à chaque coup de base, Hex apparu en cours de partie | Hex: Nothing but Misery | Hex après 8 coups ; 5 % (VP) | Fort |
| **Cri + Hindered** quand une palette est cassée près de soi | Hex: Scared to Death | ≤ 13 m ; Hex après 3 survivants accrochés (VM) | Signature |
| **Obsession** qui change de survivant | Friends 'til the End, Furtive Chase, Celestial Witness, Nemesis, Game Afoot | **À qui** elle passe et **quand** (§10.10) | Fort |

### Générateurs : cris, explosions, régressions, blocages

| Signal | Candidates | Ce qui départage | Lien |
|---|---|---|---|
| Au **hook** : cri des réparateurs + explosion du gen **le plus avancé** | Pain Resonance | 1er hook de chaque survivant sur crochet Fléau (VM) | Signature |
| Au **down** : **cri** en réparant + recul d'un gen **déjà kické**, même loin | Eruption | Recharge 30 s (VM) | Signature |
| Au **down par coup de base** : gens **proches** qui explosent, **sans cri** | Surge | ≤ 32 m du tueur (SS) | Fort |
| Explosion **sans kick** dans la minute qui suit un hook, tueur proche | Turn Back the Clock | ≤ 20 m ; −10 % (VM) | Fort |
| **Tous** les gens explosent au 4e gen terminé | Hex: Hive Mind | Hex allumé au 1er hook (VM) | Signature |
| Chute d'**environ 20 %** au 1er kick après un hook | Pop Goes the Weasel | Fenêtre 35/40/45 s (VM) | Fort |
| Gen **lâché** qui recule **sans kick** | Hex: Ruin | Écarter d'abord un kick non vu ou un raté de coéquipier (VM) | Fort |
| Plusieurs gens régressent après un kick **ailleurs** + skill check difficile | Oppression | Recharge 45/40/35 s (VM) | Fort |
| Régression **visiblement rapide** après un kick | Call of Brine, Overcharge, Lay Waste | Call of Brine : le tueur revient après un Good, jamais après un Great. Overcharge : skill check immédiat et difficile | Faible |
| **Rafale** de skill checks à 90 % | Merciless Storm | Raté ou arrêt → gen bloqué 16/18/20 s (SS) | Signature |
| Son d'avertissement de skill check **de plus en plus tardif**, puis absent, zone normale | Hex: Huntress Lullaby | Aucune réduction de zone (SS) | Signature |
| Zones de skill check **plus petites dans le TR** | Unnerving Presence | Réparation **et** soin (SS) | Fort |
| **3 gens non réparables** dès le spawn, loin du tueur | Corrupt Intervention | Levé au 1er down (SS) | Signature |
| Gen bloqué au moment où on le **lâche**, peu après un hook | Dead Man's Switch | Recharge 50 s (VM/VP) | Signature |
| Gen **le plus avancé** bloqué quand un **autre** gen est terminé | No Holds Barred | 15/20/25 s, à chaque gen (SS) | Signature |
| Au **pickup**, les gens **libres** se bloquent | Thrilling Tremors | 16 s ; si TR disparu en même temps : + Secret Project (VM) | Signature |
| **Tous** les gens bloqués quand le tueur **quitte le crochet** | Grim Embrace | Seulement aux 1ers hooks ; tueur à ≥ 16 m (SS) | Signature |
| Gen aléatoire bloqué après une purification ou bénédiction, puis TR disparu | Secret Project | 20/25/30 s (VM) | Signature |
| Réparation lente pour l'Obsession seule après le 1er gen | Hex: Wretched Fate | −27/30/33 % (SS) | Signature |
| Réparations et soins qui ralentissent **au fil des hooks**, Obsession jamais chassée | Cull the Weak | L'Obsession n'est pas affectée (SS) | Faible |
| Réparation lente quand plusieurs survivants sont blessés, au sol ou accrochés | Thanatophobia | **Pas les soins** (SS) | Faible |

### Chase, totems, TR, objets

| Signal | Candidates | Ce qui départage | Lien |
|---|---|---|---|
| Fenêtre bloquée **pour tous** dès le **1er** saut du tueur, icône de minuterie | Bamboozle | Le blocage basekit n'arrive qu'au 3e vault **du survivant** (SS) | Signature |
| Fenêtres **que vous avez franchies** qui restent bloquées ; Hex allumé à votre 1er vault | Hex: Crowd Control | Un vault **lent** ne déclenche pas (VM) | Signature |
| **Toutes** les fenêtres bloquées à la complétion d'un gen | Cruel Limits | 20/25/30 s (SS) | Signature |
| Palettes debout bloquées autour d'un survivant qui vient de perdre un état de santé | Hex: Blood Favour | 24/28/32 m, 15 s (VM) | Signature |
| Fenêtres **et** palettes bloquées au dernier gen | None Are Free | 12/14/16 s par survivant accroché (SS) | Signature |
| Palette qui **explose** au stun | Spirit Fury | Après 4/3/2 palettes cassées (SS) | Signature hors pouvoir |
| Palette qui se brise sous vous en **fast vault** après un coup | Dissolution | Dans le TR, 12/16/20 s (VP) | Signature |
| Stun de palette très court | Enduring | −40/45/50 % (SS) | Fort |
| Fente très longue après un gen terminé / après une chute d'étage | Coup de Grâce (SS) / All-Shaking Thunder (VM) | Le déclencheur | Fort |
| Tueur plus rapide juste après un **blind** | Shadowborn (SS), Rampage (VM, aussi sur stun de palette) | Rampage grandit avec les palettes cassées | Fort |
| Hex **purifié** dont l'effet continue | Hex: Undying | Le Hex est transféré sur le totem d'Undying (SS) | Fort |
| Totem purifié **qui se rallume** | Hex: Pentimento | Une fois par totem (SS) | Signature |
| Purification ou bénédiction **très lente** | Hex: Thrill of the Hunt | −8/9/10 % par totem restant (VM) | Fort |
| Boon **détruit** (plus de totem à re-bénir) | Shattered Hope | Auras dans le rayon 6/7/8 s (SS) | Signature |
| TR et tache rouge qui disparaissent en **chase longue** | Beast of Prey | Durée fixe 30/35/40 s (SS) | Fort |
| TR coupé net près d'un crochet, **respiration** audible | Insidious | Revient au 1er mouvement (VM) | Fort |
| Plus de TR après **chaque** hook ; endgame silencieux | Silent Shadow | 11/12/13 s ; permanent aux portes (VM) | Fort |
| TR qui **suit l'Obsession blessée** | Dark Devotion | 35/40/45 s, fixé à 40 m (VM) | Signature |
| TR **fixe** centré sur un gen kické | Unforeseen | 22/26/30 s, 32 m (SS) | Fort |
| TR qui semble venir du gen **le plus éloigné d'un totem**, ~5 s après le début de la réparation | Hex: Overture of Doom | 20/25/30 s (VM) | Signature |
| TR plus large que prévu | Distressing (SS), Monitor & Abuse en chase (VM), Agitation en portant (VM), add-ons | Contexte : toujours / en chase / en portant | Faible |
| **Aura rouge du tueur** à intervalle régulier, sans perk d'aura | Deerstalker | Toutes les 40/35/30 s, 3 s (VM) | Signature |
| **Aura jaune d'un gen** + pas de TR | Trail of Torment | Tant que le gen régresse (SS) | Signature |
| Objet qui **tombe** à chaque coup de base | Franklin's Demise | L'objet au sol ne perd plus de charges (VM) | Signature |
| **4 coffres ou plus** ; coffres **refermés** | Hoarder (SS) ; Human Greed (SS) | Base : 3 coffres [FACT] (SS) | Signature |
| Flash ou stun « réussi » sans animation d'aveuglement | Lightborn | Celui qui tente est révélé 6/8/10 s (SS) | Signature |
| Barre de porte qui **redescend**, lumières qui clignotent | Haywire | Lâchée au-delà de 80 % (VM) | Signature |
| Ouverture de porte lente pour tous **sauf l'Obsession** | Remember Me | Jusqu'à 38/44/50 s au lieu de 20 s (SS) | Fort |
| Les **deux** interrupteurs bloqués au 1er contact | No Way Out | 12 s + 6/9/12 s par jeton (SS) | Signature |
| Sorties bloquées au hook **après** l'ouverture d'une porte | Blood Warden | Une fois par partie (SS) | Signature |

### Comportement du tueur (liens faibles)

| Il arrive… | Candidates | Réponse robuste |
|---|---|---|
| droit sur vous **dès le spawn** | Lethal Pursuer | Spawn près d'une structure forte |
| droit sur vous **après chaque hook** | Barbecue & Chilli (≥ 60/50/40 m du crochet) ; Floods of Rage (au décrochage d'un crochet Fléau) | Bouger derrière un obstacle après chaque hook |
| sur les **duos** de réparation | Discordance | Se séparer dès qu'il approche (surlignage conservé 4 s) |
| sur les **soins** sans ligne de vue | A Nurse's Calling (≤ 28/30/32 m) | Soigner à plus de 32 m |
| sur vos cachettes juste après un kick | Nowhere to Hide (24 m autour du gen) | S'éloigner à plus de 24 m |
| sur un gen kické **que vous venez de reprendre** | Surveillance | Reprendre, puis bouger |
| pile après un skill check **Good** | Call of Brine ; Gearhead | Viser des Great |
| 2 à 5 s après que vous l'avez semé | Predator ; Zanshin Tactics (après un drop) | Bouger ~4 s puis changer d'axe |
| après un **saut rapide** hors de sa vue | I'm All Ears (≤ 48 m) | Vault lent quand il n'est pas au contact |
| sur ceux qui viennent de **finir un gen** | Bitter Murmur (≤ 16 m du gen) | Se disperser à la complétion |
| au sous-sol, de loin | Territorial Imperative | Entrer au sous-sol seulement pour décrocher |
| après un envol de corbeaux | Spies from the Shadows ; Languid Touch (laisse Exhausted) | Contourner les corbeaux |
| sur les survivants près d'un **casier** après en avoir fouillé un | Darkness Revealed ; Ultimate Weapon (cri + Blindness) | Ne pas se cacher près des casiers |
| vers vous **pendant un portage** | Awakened Awareness ; Hangman's Trick | Rester loin du porteur et des crochets |
| dès que vous **commencez un sabotage** | Hangman's Trick | Ne saboter que si le crochet est proche |
| sur un blessé proche, au début d'une chase | Wandering Eye (≤ 20 m) | Blessés : s'éloigner des chases |
| droit au gen **le plus avancé** après un hook | Scourge Hook: Jagged Compass (hook sur crochet Fléau : aura du gen 6/8/10 s) | Ne pas rester seul sur ce gen pendant un hook |
| sur les blessés cachés, à répétition | Bloodhound (flaques rouge vif) ; Stridor (grognements plus forts) | Blessé : bouger, se soigner vite |
| dans une zone vide sans hésiter, ou tourne autour d'une cachette | Whispers (≤ 48/40/32 m) | Quitter la zone plutôt que se cacher |
| en lâchant volontairement l'Obsession en chase | See How They Run (Haste par jeton) | Obsession : ne pas se croire tranquille |

### Compléments : cris, TR, vitesses, portage, totems

| Signal | Candidates | Ce qui départage | Lien |
|---|---|---|---|
| **Cri** dans le TR au moment où un coéquipier tombe | Infectious Fright | Down par tout moyen ; position 4/5/6 s (SS) | Signature |
| **Cri** au bruit d'une palette ou d'un mur cassé, **sans** Hindered | THWACK! | ≤ 36 m du tueur ; 3 jetons + 1 par hook (VM). Avec Hindered : Scared to Death | Signature |
| **Tous** crient à chaque gen terminé | Rancor | Loud Noise Notification 3 s ; l'Obsession voit l'aura du tueur 5/4/3 s (SS) | Signature |
| **Cri** en **regardant** le tueur depuis le TR | Phantom Fear | Aura 2 s ; recharge 80/70/60 s (VM) | Signature |
| **Cris périodiques hors TR** tant qu'un coéquipier reste blessé | Hex: Face the Darkness | Toutes les 35/30/25 s ; cesse quand le maudit est soigné ou à terre (SS) | Signature |
| Soin lent **dans le TR**, aiguille de skill check de soin plus rapide | Coulrophobia | −20/25/30 % (VM) | Fort |
| Le **sauveteur** soigne lentement après un décrochage | Leverage | −20/25/30 % pendant 60 s (VM) | Signature |
| Sacrifice qui avance plus vite quand le tueur s'éloigne d'un crochet | Scourge Hook: Monstrous Shrine | Tueur à > 24 m ; +10/15/20 % (SS) | Fort |
| Gen bloqué + perte au kick, après des skill checks ratés | Undone | Valeurs LIVE en partie **[INCERTAIN]** | Fort |
| 1er coffre ou 1er totem touché, aussitôt bloqué | Dominance | 8/12/16 s ; le tueur voit l'aura **du prop** (VM) | Signature |
| TR qui disparaît quand un gen atteint **70 %** | Tinkerer | Une fois par gen (SS) | Fort |
| TR qui disparaît quand on **termine** un gen que le tueur avait kické | Machine Learning | + Haste 8 %, 40/50/60 s, une seule fois (VM) | Fort |
| Pas de TR après le hook **de l'Obsession**, puis l'Obsession passe au sauveteur | Furtive Chase | 14/16/18 s (SS) | Signature |
| TR très large **pendant un portage**, crochet lointain atteint vite | Agitation | Haste 6/12/18 %, TR +12 m (VM) | Fort |
| TR qui démarre **tard** hors chase | Monitor & Abuse | −15/20/25 % hors chase (VM) | Fort |
| Fenêtre franchie **presque instantanément** derrière vous | Superior Anatomy | Après **votre** vault à ≤ 12 m ; un seul vault ; recharge 25 s (VM) | Fort |
| Palette cassée « trop vite » (base 2,34 s) | Brutal Strength (SS) ; Fire Up (VM) | Fire Up accélère à chaque gen terminé | Fort |
| Accélération après un vault, peu après une blessure | Unbound | +7 % pendant 10 s (VM) | Faible |
| Récupération très courte après un coup **réussi** | Keep Them Waiting (VM) ; Help Wanted (VM) | KTW grandit sur les non-Obsession ; Help Wanted suit la complétion d'un gen « compromis » | Faible |
| Récupération très courte après un coup **raté** | Unrelenting (VM) ; Mad Grit (en portant, SS) | Le contexte : portage ou non | Faible |
| Tueur plus rapide près des gens **terminés** | Batteries Included | ≤ 16 m ; +5 % (VM) | Faible |
| En chassant l'Obsession, accélère après une casse ou un kick | Game Afoot | +7 % 8/9/10 s (VM) | Faible |
| Wiggle qui monte lentement, tueur qui ne dévie presque pas | Iron Grasp | +4/8/12 % ; déport −75 % (VM) | Fort |
| Saves au ramassage qui échouent de peu, à répétition | Forever Entwined (SS) ; Fire Up (VM) | Jetons sur les dégâts subis / sur les gens terminés | Faible |
| Totem Hex allumé **dès le début** | Ruin, Devour Hope, Undying, Blood Favour, Huntress Lullaby, Third Seal, Haunted Ground (2 totems), Thrill of the Hunt, Retribution, Overture of Doom | Identifier par l'effet. **Deux** Hex allumés : Haunted Ground ou Undying | Faible |
| Hex allumé **en cours de partie** | 1er hook : Fortune's Fool, Hive Mind, Under Your Thumb · blessure : Face the Darkness · 1er vault : Crowd Control · 1er gen : Wretched Fate · 4/3/2 stuns ou blinds : Two Can Play · 8 coups : Nothing but Misery · 3 survivants accrochés : Scared to Death · portes : NOED | Le **déclencheur** qui précède. Tous exigent un totem terne restant | Fort |

Détail : `kb/deliverables/PERK_DEDUCTION.md` §2.

---

## 10.5 Règles de déduction par phase `[Intermédiaire]` `[Avancé]`

> Format : **observation → hypothèse → test → réponse robuste**. Tout est **[HEURISTIQUE]**, sauf les valeurs marquées d'une confiance. Une règle regroupe les perks qui partagent un **déclencheur** : c'est lui qu'on surveille, pas la perk.

### Phase A : du spawn au premier down

| # | Observation | → Hypothèse | Test | Réponse robuste |
|---|---|---|---|---|
| A1 | 3 gens non réparables au spawn, loin du tueur | Corrupt Intervention (SS) | Débloqués au 1er survivant mourant ? | 1-2 survivants sur les gens libres **près du tueur**, les autres font totems ou se placent près des gens bloqués ; **tenir la 1re chase** |
| A2 | Hex allumé repéré tôt | Hex de départ (§10.4) ; si « sans effet » : Haunted Ground, Undying, Thrill, Retribution | Quel effet cesse après la purification ? Exposed pour tous = Haunted Ground ; purificateur Oblivious = Retribution ; effet qui persiste = Undying **ou** mauvais totem | Purifier **quand le tueur est en chase loin** et que personne n'est blessé en zone morte, pas « dès qu'il s'allume ». Une bénédiction déclenche les mêmes pièges |
| A3 | Gen lâché qui a reculé sans kick | Hex: Ruin (VM) | D'abord écarter : kick non vu, skill check raté d'un coéquipier, explosion au hook ou au down | Finir les gens entamés ; purifier **en passant** ; ne pas envoyer toute l'équipe au totem |
| A4 | 4 coffres ou plus ; coffres refermés | Hoarder (SS) ; Human Greed (SS) | Le tueur arrive-t-il sur un coffre qu'on vient d'ouvrir ? | Coffre seulement tueur localisé loin (Hoarder : ≤ 32/48/64 m) ; pas à ≤ 8 m d'un coffre fermé (Greed) ; un coffre refermé est vide |
| A5 | 1er coffre ou totem touché bloqué aussitôt | Dominance (VM) | — | Votre position est connue : partir, revenir plus tard (seule la 1re interaction déclenche) |
| A6 | Aura rouge du tueur sans perk d'aura | Deerstalker (VM) | Écarter une perk de coéquipier (Match Details) ; intervalle régulier de 40/35/30 s ? | Il vous voit aussi : **bouger** après chaque apparition, se rapprocher d'une tile |
| A7 | TR « faux » : trop large, trop tardif, immobile | Distressing, Monitor & Abuse, add-ons ; TR **transféré** (Dark Devotion, Unforeseen, Overture) | Comparer avec une distance connue (aura d'un coéquipier en chase) | Ne pas lâcher un gen au 1er battement : confirmer direction et distance |
| A8 | Tueur toujours sur les duos ; droit sur vous au spawn | Discordance (SS) ; Lethal Pursuer (SS) | Répétition | **1 survivant par gen** ; spawn près d'une structure forte |
| A9 | Premières chases : fenêtre bloquée au 1er saut du tueur ; stun très court ; palette qui explose ; Hindered après un drop | Bamboozle ; Enduring ; Spirit Fury ; Knock Out | Le blocage basekit n'arrive qu'au 3e vault **du survivant** (SS) | Contre les perks de fenêtre : jouer les palettes. Contre l'anti-stun : drop pour **bloquer**, puis transition. Contre la casse rapide (Brutal Strength, Fire Up) : fenêtres et tiles sans palette |
| A10 | 1er coup reçu : lire le HUD | Sloppy (Mangled + Haemorrhage), Genetic Limits (Exhausted), Third Seal (Blindness + Hex), Franklin's (objet au sol), Blood Favour (palettes bloquées), Hysteria (Oblivious des blessés) | Le pouvoir du tueur l'explique-t-il ? | Sloppy : soin **en une fois**. Franklin's : ne pas revenir chercher l'objet près du tueur, il ne perd plus de charges (VM). Blood Favour : fuir vers une fenêtre ou hors de 24/28/32 m |
| A11 | Stun ou flash réussi | Hubris (Exposed), Nemesis (Obsession + Oblivious), Lightborn (pas d'aveuglement), Two Can Play (écran blanc), Shadowborn / Rampage (tueur plus rapide) | Compter les stuns de l'équipe (Two Can Play à 4/3/2) | Après **tout** stun : distance immédiate. Lightborn : arrêter les tentatives dès le 1er échec |

> **Erreur fréquente** : purifier par réflexe un Hex « sans effet » pendant qu'un coéquipier blessé est poursuivi. C'est exactement le scénario où Haunted Ground transforme un coup en down.

### Phase B : le premier crochet

```
 DOWN ──────► PICKUP ─────► PORTAGE ────► HOOK ──────► TUEUR À ≥16 m ──► DÉCROCHAGE
  │             │             │             │              │                  │
 Eruption     Thrilling     Starstruck    Pain Res.      Grim Embrace       Make Your Choice
 Surge        Tremors       Agitation     DMS, Pop       (blocage global)   Weeping Wounds
 Infectious   (+ Secret     Mad Grit      Turn Back      Monstrous Shrine   Floods of Rage
  Fright       Project)     Iron Grasp     the Clock                        Furtive Chase
 Forced                     Awakened      Silent Shadow                     Leverage
  Hesitation                 Awareness    Insidious                         Devour Hope
                            Hangman's     Blood Echo, Alien Instinct,
                             Trick        FTTE, Fortune's Fool, Hive Mind
```

| # | Moment | Observation → hypothèse | Réponse robuste |
|---|---|---|---|
| B1 | Down | Cri + recul d'un gen **déjà kické**, même loin → **Eruption** (VM) · gens **proches** qui reculent **sans cri**, down au coup de base → **Surge** (SS) · cri dans le TR → **Infectious Fright** (SS) · Hindered près du down → **Forced Hesitation** (SS) | Eruption suspectée (cri déjà entendu) : lâcher les gens kickés quand une chase tourne mal. **Sans ce signal, rester** : un gen kické lâché régresse. Toujours : éloigner les chases des gens avancés, ne pas suivre à moins de 16 m |
| B2 | Pickup | Gens libres bloqués → **Thrilling Tremors** (VM) ; si le TR disparaît en même temps → **+ Secret Project** (VM) | Garder **1-2 réparateurs actifs** quand une chase va finir en down (un gen en cours n'est pas bloqué). SWF : annoncer « down » |
| B3 | Portage | Exposed en entrant dans le TR du porteur → **Starstruck** (SS) · TR énorme + tueur rapide → **Agitation** (VM) · coups en portant → **Mad Grit** (SS) · déviation vers les cachés → **Awakened Awareness** / **Hangman's Trick** | **Si un de ces signaux** est apparu : pas de body block ni de save au contact ; préparer les saves **avant** le pickup. Sans signal, flash save et suivi préparé restent légitimes (surtout en SWF) |
| B4 | Hook | Cri + explosion du gen le plus avancé → **Pain Resonance** (VM) · tous les gens bloqués quand le tueur s'éloigne → **Grim Embrace** (SS) · explosion sans kick, tueur proche → **Turn Back the Clock** (VM) | Pas de gen très avancé isolé à un 1er hook ; après le cri, **réparer 5 %** tout de suite ; compter les survivants déjà accrochés (jetons) |
| B5 | Hook (votre HUD) | Obsession Exposed → **FTTE** · blessé Exhausted + Haemorrhage → **Blood Echo** · blessé et le plus loin, Oblivious → **Alien Instinct** · Oblivious + Hex après **votre** 1er hook → **Fortune's Fool** · Hex au 1er hook → **Hive Mind** ou **Under Your Thumb** | FTTE : l'Obsession se cache ~20 s, ne sauve pas. Fortune's Fool : le maudit purifie (seul à pouvoir le faire 90 s). Hive Mind : purifier **avant** le 4e gen |
| B6 | Après le hook : gens | Gen bloqué au moment où on le **lâche** → **DMS** (VM) · kick qui fait perdre ~20 % → **Pop** (VM) | 1er lâcher sur un **gen peu avancé** ; pendant 45 s (prudence), finir les gens proches ou revenir réparer 5 % juste après le kick |
| B7 | Après le hook : silence | Plus de TR → **Silent Shadow** (VM) · TR coupé net + respiration → **Insidious** (VM) · après le hook de l'Obsession → **Furtive Chase** (SS) | « Pas de cœur ≠ tueur parti » : inspecter les angles morts. SWF : à deux. SoloQ : un seul s'approche si quelqu'un est déjà en route |
| B8 | Décrochage | Sauveteur Exposed + cri, tueur à > 32 m → **MYC** (SS) · Haemorrhage **seule** → **Weeping Wounds** (SS) · tueur droit sur un tiers → **Floods of Rage** (SS) · sauveteur qui soigne lentement → **Leverage** (VM) | MYC : décrocher quand le tueur est **proche mais engagé** ailleurs, ou pendant la recharge. Weeping Wounds : ne pas soigner la victime tout de suite si le tueur approche. Leverage : le sauveteur ne soigne pas |

**Faits utiles au crochet** [FACT] : l'anti-camp ne se remplit qu'**à moins de 16 m** du crochet (VM), donc un proxy camp à 17-20 m ne le déclenche pas ; il est en pause pendant un portage et désactivé dès que les portes sont alimentées (SS). Protections de décrochage (10.1.0, VP) : Endurance + 10 % de Haste pendant 10 s, + Elusive 10 s ; l'Endurance se perd sur une action « voyante » (réparer, soigner).

> **Note avancée** : B4 et B6 se contredisent en apparence. Contre Pain Resonance, on veut **répartir** la progression ; contre Pop et DMS, on veut **finir** les gens. L'arbitrage robuste est de **finir avant le hook** le gen très avancé quand c'est possible (il ne peut plus exploser), sinon de réparer 5 % juste après le cri. Répartir coûte du tempo si Pain Res est absente : ne le faire qu'après un premier cri observé [AVIS D'EXPERT].

### Phase C : milieu de partie

| # | Déclencheur | Observation → hypothèse | Réponse robuste |
|---|---|---|---|
| C1 | Kick | Tueur qui se tourne vers les cachés → **Nowhere to Hide** (24 m, VM) · retour en moins de ~16 s quand on reprend → **Surveillance** (SS) · cri + Exposed en touchant le gen → **Dragon's Grip** (VM) · aura jaune du gen + pas de TR → **Trail of Torment** (SS) · TR fixe sur le gen → **Unforeseen** (SS) · skill check immédiat difficile → **Overcharge** (SS) · autres gens qui régressent → **Oppression** (VM) | **Si le tueur est encore près du gen** : partir **à plus de 24 m**, revenir réparer 5 %. Ne pas reprendre **seul** un gen kické dans les 30 s. Sur un gen kické depuis moins de 90 s, viser des Great (Call of Brine). Si le tueur est déjà loin et sans signal : reprendre tout de suite |
| C2 | Gen terminé | Gen le plus avancé bloqué → **No Holds Barred** (SS) · toutes les fenêtres bloquées → **Cruel Limits** (SS) · tous crient → **Rancor** (SS) · fente longue → **Coup de Grâce** (SS) · tueur sur les réparateurs → **Bitter Murmur** (VM) · TR disparu + tueur rapide → **Machine Learning** (VM) · Hex + Obsession lente → **Wretched Fate** (SS) | **Se disperser** dès la complétion (hors 16 m) ; prévenir le coéquipier en chase avant de finir un gen (Cruel Limits) ; pas de gen très avancé isolé |
| C3 | Soin | Tueur arrive sans ligne de vue → **A Nurse's Calling** (≤ 28/30/32 m, VM) · soin lent dans le TR → **Coulrophobia** (VM) · Blindness + Exhausted → **Septic Touch** (VM) · cri du soigneur → **Deathbound** (SS) · rafale de skill checks en fin d'auto-soin → **No Quarter** (SS) | **Soigner hors TR, à plus de 32 m**, en une fois, puis se séparer. No Quarter : se faire soigner par un coéquipier. Exception : contre un tueur qui re-blesse presque gratuitement (Legion, Plague en Corrupt Purge), jouer blessé peut être le bon choix |
| C4 | Obsession | TR qui suit l'Obsession blessée → **Dark Devotion** (VM) · tueur qui l'évite → **KTW** (VM) / **Cull the Weak** (SS) · Obsession qui change → **Celestial Witness**, **Game Afoot**, **FTTE**, **Furtive Chase** (+ Nemesis si Oblivious) | Dark Devotion : l'Obsession blessée ne rejoint pas les autres ~45 s. KTW : l'Obsession prend les coups protecteurs (−2 jetons). Cull the Weak : l'Obsession devient sauveteuse et soigneuse (+33 %) |
| C5 | Fin de chase | TR coupé en chase longue → **Beast of Prey** (SS) · retour 2-5 s après l'avoir semé → **Predator** / **Zanshin** · TR disparu à 70 % → **Tinkerer** (SS) | Garder la caméra sur le tueur ; après l'avoir semé, bouger ~4 s puis **changer d'axe** |
| C6 | Totems | Totem rallumé → **Pentimento** (SS) · effet qui survit → **Undying** (SS) · Oblivious → **Retribution** (VM) · gen bloqué → **Secret Project** (VM) · Boon détruit → **Shattered Hope** (SS) · purification lente → **Thrill** (VM) | Pentimento / Retribution / Secret Project : **réduire** les purifications de ternes. Undying : purifier **tous** les totems allumés. Thrill : purifier d'abord des ternes |
| C7 | Objets | Exhausted en sortant un objet → **Overwhelming Presence** (≤ 32 m, VM) · objet au sol à chaque coup → **Franklin's** (VM) · aura d'objet au sol / Oblivious au ramassage → **Weave Attunement** (SS) | Aucun objet près du tueur ; les objets au sol sont des **pièges à aura** |
| C8 | Pointes | ≥ 4 regression events consommés (VM) | Un gen à pointes a une **valeur défensive** ; au 8e event, seul un raté le fait reculer |

> **Erreur fréquente** : sauter sur un gen kické « pour stopper la régression » alors que le tueur est à 30 m. Les perks de C1 punissent précisément ce réflexe. La régression coûte 15 s de réparation par minute (calcul) : 10 s d'attente coûtent donc 2,5 s, un down coûte bien plus.

### Phase D : endgame

**Checklist des portes alimentées (5 s)** `[Avancé]` :
1. Exposed **pour tous** → NOED (SS) ; **Obsession seule** → Rancor (SS).
2. Broken chez les blessés, au sol, accrochés → Terminus (VM, 35/40/45 s après l'ouverture).
3. Fenêtres **et** palettes bloquées → None Are Free (SS, jusqu'à 48/56/64 s).
4. Plus aucun TR → Silent Shadow (VM).
5. Qui est blessé ? Qui est l'Obsession ?
6. Au 1er contact avec l'interrupteur : les deux bloqués → No Way Out (SS) ; ouverture lente sauf pour l'Obsession → Remember Me (SS) ; barre qui redescend → Haywire (VM).

| Situation | Réponse robuste | Pourquoi |
|---|---|---|
| NOED, Terminus ou None Are Free encore plausibles | **Se soigner avant la dernière gen** ; finir le dernier gen **sain, groupé, près des portes, sans chase** | Un coup = un down (NOED) ; pas de soin (Terminus) ; pas de ressource de chase (None Are Free) |
| NOED confirmé | À deux, trouver le totem (aura visible de 4 m, puis jusqu'à 24 m en 30 s, SS) ; le 3e ouvre | Le totem est la seule sortie de l'Exposed |
| Terminus | Ouvrir une porte **vite** pour lancer le compte à rebours ; Adrenaline ne soigne pas | Le Broken persiste 35/40/45 s après l'ouverture |
| No Way Out | **Toucher l'interrupteur puis s'éloigner**, revenir à la fin du blocage (jusqu'à 36/48/60 s) | Le tueur reçoit une Loud Noise Notification à l'interrupteur |
| Haywire | Ne jamais lâcher une porte au-delà de 80 % | La barre régresse |
| Porte ouverte, coéquipier porté ou au sol | **Sortir avant le hook** ou empêcher le hook | Blood Warden bloque les sorties 40/50/60 s, une fois (SS) ; l'EGC de 120 s ralentit de moitié mais ne s'arrête jamais (SS) |

**Faits de contexte** [FACT] : en endgame, les protections de décrochage **restent** (Endurance + Haste 10 s), seule Elusive disparaît (VP) ; l'anti-camp est désactivé (SS) ; la désactivation de Batteries Included aux portes **n'est pas confirmée** **[INCERTAIN]** : la supposer active.

> **Cas d'échec** : « finir le dernier gen groupé et sain » n'est pas toujours faisable. Contre un 3-gen tenu, finir le gen **pendant** une chase lointaine peut rapporter plus que d'attendre [HEURISTIQUE, non mesuré].

Détail : `kb/deliverables/PERK_DEDUCTION.md` §3.

---

## 10.6 Combos fréquents et comment les casser `[Avancé]`

> Seuls les combos **cités par les fiches** figurent ici. Leur fréquence **n'est pas mesurée** (pas de données NightLight) : « fréquent » veut dire cité par le guide d'origine ou la communauté, pas une statistique.

| Combo | Ce qu'on voit | Comment le casser | Nature |
|---|---|---|---|
| **Pain Resonance + Dead Man's Switch** | Au 1er hook : cri + explosion, puis le gen **lâché à cause du cri** se bloque 25/30/35 s | Après le cri, **reprendre tout de suite** (5 %) ou changer de gen, sans stop-and-go ; 1er lâcher sur un gen peu avancé | Combo communautaire ; la note PTB 10.2.0 de DMS vise explicitement ces combos (PTB — non LIVE) |
| **Pain Resonance + Grim Embrace** (Artist) | Explosion au hook, puis blocage global quand le tueur s'éloigne | Pas de gen très avancé isolé au 1er hook ; utiliser les blocages courts pour se déplacer ou sauver ; tenir les chases (pas 4 premiers hooks rapides). Un gen bloqué ne subit aucune perte instantanée [FACT] | [HEURISTIQUE] |
| **Thrilling Tremors + Secret Project** | Au pickup : gens libres bloqués **et** TR disparu 30 s | 1-2 réparateurs actifs pendant la chase ; 30 s de prudence après le pickup | Attesté par un correctif 9.5.0 (VM) |
| **Kicks + régression** (Pop, Eruption, Call of Brine) **+ Surveillance** | Beaucoup de kicks, retour pile quand on reprend un gen kické | Reprendre **puis bouger** (leurre) ; en SWF, un seul reprend ; finir d'abord les gens non kickés | [HEURISTIQUE] |
| **Hex: Ruin + Hex: Undying** | Ruin purifiée, les gens reculent encore | Purifier **tous** les totems allumés ; plus tard, Undying en premier | [HEURISTIQUE] |
| **Empilement de régressions** (Ruin + Call of Brine + Overcharge + Lay Waste) | Gens qui fondent de plusieurs façons | Réparer 5 % stoppe **toute** régression [FACT] ; finir les gens. Les Diminishing Returns 9.6.0 réduisent **peut-être** l'empilement | Rendement : **[HYPOTHÈSE]** (régressions absentes des catégories DR établies) |
| **Lethal Pursuer + auras** (BBQ, Nurse's Calling…) | Ruée au spawn ; auras de 2 s plus longues | Bouger juste après chaque fenêtre d'aura ; spawn près d'une structure forte | [HEURISTIQUE] |
| **Franklin's Demise + Weave Attunement** | Objets au sol partout ; aura d'objet visible ; Oblivious au ramassage | **Ignorer** les objets au sol ; utiliser son objet avant la chase | [HEURISTIQUE] |
| **Enduring + Spirit Fury** (± Brutal Strength) | Stun très court, puis palette qui explose au stun | Compter les palettes cassées ; drop pour bloquer, transition immédiate ; avec Brutal Strength, préférer fenêtres et enchaînement de tiles | [HEURISTIQUE] |
| **Perks de vault** (Bamboozle, Crowd Control, Cruel Limits, Superior Anatomy, Dark Arrogance) | Fenêtres bloquées, vaults du tueur accélérés | Jouer les **palettes** et les loops sans fenêtre ; anticiper la tile suivante | [HEURISTIQUE] |
| **Terminus + NOED / No Way Out** | Broken + Exposed à l'alimentation ; interrupteurs bloqués | Se soigner avant la dernière gen ; ternes purifiés en passant pendant la partie ; toucher l'interrupteur puis s'éloigner | [HEURISTIQUE] |
| **Undying / Thrill of the Hunt + autre Hex** | Effet qui survit à la purification ; purification lente | Purifier tous les totems allumés ; Thrill : commencer par des ternes (moins de jetons) | [HEURISTIQUE] |
| **Pentimento + Thrill of the Hunt / Shattered Hope** | Totems rallumés ; Boon détruit puis réutilisé | Re-purifier aussitôt ; limiter les ternes ; Boon en zone morte, prévoir un 2e emplacement | [HEURISTIQUE] |
| **Retribution + autre Hex** | Purifier l'autre Hex rend Oblivious **et** révèle toute l'équipe 20 s | Purifier quand le tueur est en chase loin et que personne n'est blessé en zone morte | [HEURISTIQUE] |

> **À retenir** : un combo se casse presque toujours au **point de jonction**. Pain Res + DMS se casse en ne lâchant pas le gen après le cri ; Thrilling Tremors + Secret Project en gardant des gens **en cours** au pickup ; Ruin + Undying en purifiant le bon totem.

Détail : `kb/deliverables/PERK_DEDUCTION.md` §4.

---

## 10.7 Comportements robustes par défaut (on ne sait rien) `[Intermédiaire]`

> **[AVIS D'EXPERT]** : ce sont des **options par défaut**, pas des règles. Le coût n'est **pas mesuré**. Plusieurs réflexes se contredisent (1 survivant par gen contre builds de réparation groupée ; ne pas suivre une chase contre saves SWF) : on les abandonne dès qu'un signal écarte la perk visée. Appliqués tous à la fois, ils rendent le jeu très passif, ce qu'un tueur **sans** ces perks exploite. En **SoloQ**, les réflexes qui supposent une coordination ne s'appliquent que sur signal visible.

| # | Réflexe par défaut | Neutralise ou atténue | Coût si la perk est absente |
|---|---|---|---|
| 1 | **Pas de gen très avancé isolé** à un hook ou une pop ; finir les gens entamés | Pain Res, Pop, No Holds Barred, Jagged Compass, Lay Waste, DMS, Ruin, Merciless Storm | Faible : c'est l'économie de base |
| 2 | **1 survivant par gen** hors sprint final | Discordance ; pénalité coop (−15 % par réparateur en plus, SS) | Positif en débit (2 charges/s contre 1,7 pour un duo), mais un gen reste exposé 90 s seul contre ~52,9 s à deux (calcul). Contre Pop, Pain Res ou un 3-gen, finir **un** gen vite peut valoir plus |
| 3 | **Réparer 5 %** pour stopper une régression, jamais « tapoter » | Toutes les régressions | Aucun [FACT] (VM) |
| 4 | Après un hook, **lâcher d'abord un gen peu avancé** | DMS | Nul |
| 5 | **1-2 réparateurs actifs** quand une chase va finir en down | Thrilling Tremors (+ Secret Project) | Nul |
| 6 | **Éloigner les chases des gens** ; lâcher les gens kickés **si Eruption est plausible** | Eruption, Surge, Batteries Included | Moyen : un gen kické lâché perd ~0,28 %/s (calcul) |
| 7 | **Soigner hors TR, loin du tueur, en une fois**, puis se séparer | Nurse's Calling, Coulrophobia, Septic Touch, Unnerving, Lullaby, Deathbound, Sloppy, No Quarter | Faible : quelques secondes de trajet |
| 8 | **Se soigner avant la dernière gen** ; dernier gen sain, groupé, près des portes | Terminus, NOED, None Are Free, Rancor, Bitter Murmur | Moyen : tempo ; inutile au porteur d'Adrenaline |
| 9 | **Totems** : ternes purifiés **en passant** (anti-NOED) sauf si Pentimento, Retribution ou Secret Project sont suspectés ; **Hex** purifié ou béni quand le tueur est en chase loin | NOED, Hex ; évite Haunted Ground, Retribution, Pentimento, Secret Project | Faible si fait en passant. Les fiches se contredisent en partie : arbitrage, pas règle |
| 10 | **Exposed = un coup et à terre** : aucun risque tant que l'icône est là | NOED, MYC, FTTE, Starstruck, Dragon's Grip, Hubris, Iron Maiden, Ravenous, Devour, Haunted Ground, Rancor | Nul. L'Endurance transforme ce coup en Deep Wound [FACT] (SS) |
| 11 | **« Pas de cœur ≠ tueur parti » et « un cœur ≠ le tueur est là »** | Insidious, Silent Shadow, Furtive Chase, Beast of Prey, Tinkerer, Machine Learning, Trail of Torment, M&A ; TR transférés | Faible à moyen : la vérification coûte du temps au crochet |
| 12 | **Bouger après chaque événement révélateur** (hook, pop, fin de chase, cri, drop, kick proche) | BBQ, Floods, Predator, Zanshin, Nowhere to Hide, Bitter Murmur, Rancor, THWACK!, Infectious Fright, Deerstalker, Celestial Witness, Eruption | Faible. Aucune icône ne signale une aura lue |
| 13 | **Ne pas suivre une chase de près** ; saves préparés avant le pickup | Infectious Fright, Forced Hesitation, Starstruck, Mad Grit, Agitation, Wandering Eye | Moyen. Sans signal, le suivi préparé (SWF) reste légitime |
| 14 | **Lire le HUD après chaque événement tueur** | Toutes les perks à statut | Nul |
| 15 | **Pas d'objet sorti ni ramassé près du tueur** | Overwhelming Presence, Franklin's, Weave Attunement, Hoarder, Human Greed | Faible |
| 16 | **Ne pas miser la chase sur le stun** ; drop pour bloquer, compter les palettes cassées | Enduring, Spirit Fury, Rampage | Moyen. **Pas** contre Brutal Strength / Fire Up (préférer fenêtres) ; sous Knock Out la transition coûte Hindered 5 % 3/4/5 s |
| 17 | **Interrupteur touché puis on s'éloigne** ; sortir **avant** un hook | No Way Out, Blood Warden, Haywire | Faible |
| 18 | **Connaître le basekit du crochet** (anti-camp < 16 m ; protections 10 s) | Make Your Choice, Insidious | Aucun [FACT] |

> **Erreur fréquente** : appliquer les 18 réflexes en même temps dès le spawn. Commencez par les réflexes **à coût nul** (3, 4, 5, 10, 14, 18), puis ajoutez les autres **quand un signal les justifie**.

Détail : `kb/deliverables/PERK_DEDUCTION.md` §5.

---

## 10.8 Drills de déduction `[Intermédiaire]` `[Avancé]`

> **[AVIS D'EXPERT]** : les seuils de réussite sont des **objectifs proposés, non mesurés** (aucune donnée joueur, aucune VOD). La vérité de référence est **l'écran de fin**, qui révèle le loadout [FACT] (VP).

| Drill | Méthode | Métrique | Erreur typique | Objectif proposé |
|---|---|---|---|---|
| **1. Journal hypothèse → écran de fin** | Noter 3 fois par partie (après le 1er hook, à 2 gens, aux portes) les perks soupçonnées, le signal et un niveau (plausible / quasi certain) ; comparer à l'écran de fin | Précision des « quasi certain » ; rappel des perks à signal visible | Noter après coup ; conclure sur un seul événement | Précision ≥ 80 % sur 20 parties |
| **2. Balayage du HUD** | À chaque coup, down, pickup, hook, stun, pop, purification et aux portes : ses icônes **et** les portraits des coéquipiers dans les 2 s | Événements balayés / survenus | Ne regarder que sa barre ; confondre pouvoir et perk | ≥ 9 sur 10 |
| **3. Compteurs de jetons** | Tenir le compte : **survivants différents accrochés** (Pain Res, NWO, Grim Embrace, Ravenous, None Are Free, Scared to Death) ; **gens terminés** (Coup de Grâce, Fire Up, Hive Mind) ; **stuns/blinds** (Two Can Play) ; **coups de base** (Nothing but Misery) ; **palettes cassées** (Spirit Fury, Rampage) | Écart compte / réalité à chaque hook | Compter les hooks au lieu des survivants **différents** | Compte exact sur 10 parties |
| **4. Registre des totems** | État des 5 totems (terne, allumé, purifié, béni, rallumé) et événement qui a précédé chaque allumage | Totems localisés à 2 gens restants | Purifier sans avoir écarté Haunted Ground | Chaque Hex relié à un effet ou un déclencheur avant purification |
| **5. Test de la barre de gen** | Revenir sur un gen lâché sans kick (Ruin ?) ; mesurer la chute au kick (~5 % base, ~20 % Pop) ; dater chaque explosion (hook, down avec ou sans cri, 4e gen, pickup) | Déclencheur juste pour chaque perte | Oublier qu'un skill check raté fait **toujours** régresser | 10 parties avec slowdown identifiées |
| **6. Distance de soin** | Soigner une fois hors TR à plus de 32 m, comparer avec un soin dans le TR si c'est sûr | Soins interrompus selon la distance | Tester près du crochet | 0 interruption au-delà de 32 m sur 10 soins |
| **7. Le silence est piégé** | À chaque TR disparu ou fixe (crochet, gen, chase) : énoncer la cause candidate, vérifier visuellement **avant** d'agir | Décrochages sans vérification | Décrocher « parce qu'il n'y a pas de cœur » | 0 sur 10 parties |
| **8. Checklist des portes** | Dérouler la checklist du §10.5 D | Checklist faite avant la 1re décision d'endgame | Courir à la porte la plus proche | ≥ 9 endgames sur 10 |

> **Exercice** `[Débutant]` : pendant 5 parties, ne faites **que** le drill 2 (HUD). C'est la base de toute déduction : les autres drills en dépendent.

Détail : `kb/deliverables/PERK_DEDUCTION.md` §6.

---

## 10.9 PTB 10.2.0 et limites de ce chapitre `[Avancé]`

### Ce que le PTB 10.2.0 changerait (PTB 10.2.0 — non LIVE)

- La note officielle 559 modifie **58 perks** au total, dont **27 perks tueur** de ce chapitre [FACT] (VM). Elles sont repérées **« PTB »** dans l'inventaire (§10.10). Les 118 autres ne sont pas modifiées au PTB.
- **Signaux qui changeraient de nature** (ne pas s'en servir avant la sortie LIVE) : Knock Out (10 m, Hindered 20 %), Insidious (persistance 6/7/8 s après avoir bougé), Distressing (réparation −6/7/8 % dans le TR), Dominance (cri + aura du survivant, totems seulement), Shattered Hope (blocage des totems), Blood Favour (attaque de base seulement), Thrill of the Hunt (blocage des totems à chaque hook), Monstrous Shrine (régression des gens), Machine Learning et Help Wanted (3 gens compromis), Undone (jetons aux crochets), Nothing but Misery (4 coups), Ravenous (Haste en portant, Exposed 80/85/90 s), DMS (arrêt de plus de 2 s).
- **Piège de source** [FACT] : pour Dissolution, Distressing, Hex: Nothing but Misery et Shattered Hope, la page wiki affichait déjà le texte PTB comme courant ; la valeur LIVE de ce chapitre a été **reconstruite** depuis les lignes « was … » de la note 559.
- À la sortie LIVE de 10.2.0 (date non officielle), les **mécanismes** de déduction resteront en grande partie valables, pas les chiffres.

### Détails encore incertains (ne pas fonder une décision fine dessus)

| Sujet | Point ouvert |
|---|---|
| Pain Resonance | Repli sur un autre gen si le plus avancé est au plafond ou bloqué **[INCERTAIN]** |
| Thrilling Tremors | Pause de la régression pendant le blocage **[INCERTAIN]** |
| Enduring | Clause « pas sur les stuns de perks » **[INCERTAIN]** |
| Hex: Undying | Transfert d'un Hex **béni** (probablement non, [HYPOTHÈSE]) |
| Overcharge, Lay Waste, Undone | Condition de la perte de 2/3/4 % ; sens de « Charge » ; jetons et recharge LIVE d'Undone **[INCERTAIN]** |
| Distressing | Palier 2 : 25 % (wiki) ou 23 % (note 559) **[INCERTAIN]** |
| Batteries Included | Désactivation aux portes **[INCERTAIN]** |
| None Are Free | Le tueur franchit-il les ressources bloquées ? **[INCERTAIN]** |
| Transverse | Visibilité des crochets Fléau côté survivant ; rendu d'un gen bloqué ; Calm Spirit contre les cris ; liste complète des catégories de Diminishing Returns (manuel en jeu non transcrit ; skill check, Haste de perks et vault : soumis, VP) **[INCERTAIN]** |
| Périmètre | Les 145 perks n'ont **pas** été comparées à la liste officielle LIVE : un lien « Signature » peut ignorer une perk hors périmètre |

Détail : `kb/deliverables/PERK_DEDUCTION.md` §7.

---

## 10.10 Inventaire compact des 145 perks tueur `[Intermédiaire]`

> **Comment lire** : une perk = une ligne, rangée dans **sa catégorie principale** (une Hex ou une Scourge Hook reste dans sa famille même si elle ralentit ou informe). **Effet LIVE court** = valeurs **LIVE 10.1.2a**, tiers 1/2/3. **Indice** et **Réponse** sont **[HEURISTIQUE]**. **Conf.** = confiance de l'**effet** : **VP** note officielle, **VM** wiki complet + note, **SS** wiki complet seul, **INC** détail incertain. **PTB 10.2.0** : « — » = non modifiée ; sinon la valeur **PTB 10.2.0 — non LIVE**, à ne jamais utiliser en partie aujourd'hui.

| Catégorie | Perks | dont PTB 10.2.0 |
|---|---|---|
| Slowdown | 19 | 2 |
| Info / aura | 31 | 4 |
| Chase | 25 | 9 |
| Anti-soin | 8 | 0 |
| Endgame | 8 | 1 |
| Stealth | 10 | 2 |
| Hex | 21 | 3 |
| Scourge | 6 | 1 |
| Autre (portage, objets, casiers, Exposed ciblé, TR) | 17 | 5 |
| **Total** | **145** | **27** |

### Slowdown (19)

| Perk | Tueur | Effet LIVE court | Indice observable | Réponse robuste | Conf. | PTB 10.2.0 |
|---|---|---|---|---|---|---|
| Pop Goes the Weasel | Clown | 35/40/45 s après un hook, le prochain kick retire 20 % au total | Chute ~20 % au kick post-hook | Finir le gen ou revenir réparer 5 % | VM | — |
| Corrupt Intervention | Plague | 3 gens les plus loin du tueur bloqués 80/100/120 s ; levé au 1er mourant | 3 gens bloqués au spawn | Tenir la 1re chase | SS | — |
| Grim Embrace | Artist | 1er hook de chaque survivant, tueur à ≥ 16 m : tous les gens bloqués 6/8/10 s ; 4e : 40 s + aura de l'Obsession 6 s | Blocage global après un hook | Se déplacer ou sauver pendant le blocage | SS | — |
| Dead Man's Switch | Deathslinger | Après un hook, 1er gen lâché bloqué 25/30/35 s ; recharge 50 s | Gen bloqué au lâcher | 1er lâcher sur un gen peu avancé | VM (recharge VP) | Arrêt > 2 s ; 30/35/40 s ; recharge 30/35/40 s |
| Eruption | Nemesis | Au down : gens kickés −10 % ; réparateurs crient, aura 8/10/12 s ; recharge 30 s | Cri + recul d'un gen kické | Chases loin des gens kickés | VM | — |
| Surge | Demogorgon | Down au coup de base : gens à ≤ 32 m du tueur −6/7/8 % ; pas de cri | Recul des gens proches, sans cri | Chases loin des gens | SS | — |
| No Holds Barred | Générale (ex-Deadlock) | À chaque gen terminé, le plus avancé bloqué 15/20/25 s | Blocage à la pop d'un autre gen | Pas de 2e gen très avancé | SS | — |
| Turn Back the Clock | The First | 40/50/60 s après un hook, pouvoir sur un gen à ≤ 20 m : −10 % | Explosion sans kick, tueur proche | Pas de gen près du tueur après un hook | VM | — |
| Thanatophobia | Nurse | Réparation, purification, sabotage −1/1,5/2 % par survivant blessé, au sol ou accroché (max 4/6/8 % ; 16/18/20 % si les 4) ; pas les soins | Réparation lente quand beaucoup sont blessés | Soigner les blessés | SS | — |
| Call of Brine | Onryō | Gen kické : 90 s de régression à 130/140/150 % ; Loud Noise Notification à chaque Good | Tueur qui revient après un Good | Viser des Great | VM | — |
| Overcharge | Doctor | Après un kick : régression 85 → 130 % en 30 s ; skill check difficile au suivant ; −2/3/4 % | Skill check immédiat et difficile | S'y préparer ; réparer 5 % | SS (perte INC) | — |
| Oppression | Twins | Kick : jusqu'à 4 autres gens régressent + skill check difficile ; recharge 45/40/35 s | Plusieurs gens reculent sans kick | Réparer 5 % sur les gens touchés | VM | — |
| Lay Waste | Judgment | Kick : régression +2 % par « Charge » du gen ; recharge 55/50/45 s | Aucun direct | Pas de gen très avancé sans surveillance | VM (« Charge » INC) | — |
| Thrilling Tremors | Ghost Face | Au pickup, gens non réparés bloqués 16 s ; recharge 40/35/30 s | Gens libres bloqués au pickup | 1-2 réparateurs actifs | VM | — |
| Secret Project | The First | Totem purifié ou béni : gen aléatoire bloqué 20/25/30 s ; tout blocage de gen : Undetectable 30 s | Blocage après purification, TR disparu | Limiter les purifications ; 30 s de prudence | VM | — |
| Merciless Storm | Onryō | À 90 % : skill checks continus ; raté ou arrêt : gen bloqué 16/18/20 s ; une fois par gen | Rafale de skill checks à 90 % | Ne pas lâcher, viser juste | SS | — |
| Unnerving Presence | Trapper | Dans le TR, réparer ou soigner : +10 % de skill checks, zone −40/50/60 % | Zones plus petites dans le TR | Réparer et soigner hors TR | SS | — |
| Cull the Weak | Générale (ex-Dying Light) | +1 jeton par hook d'un non-Obsession : −2/2,5/3 % réparation, soin, sabotage (max 22/27,5/33 %) ; Obsession +33 % en décrochage et soin | Ralentissement au fil des hooks, Obsession épargnée | L'Obsession sauve et soigne | SS | — |
| Undone | Unknown | Jetons sur skill checks ratés ; kick : −1 % et 1 s de blocage par jeton ; recharge | Gen bloqué + perte au kick après des ratés | Ne pas rater de skill checks | SS (jetons INC) | Rework : jetons aux hooks (max 3) ; −8/9/10 % et blocage 8/9/10 s par jeton ; contenu exact **[INCERTAIN]** |

### Info / aura (31)

| Perk | Tueur | Effet LIVE court | Indice observable | Réponse robuste | Conf. | PTB 10.2.0 |
|---|---|---|---|---|---|---|
| Lethal Pursuer | Nemesis | Au début, auras de tous 7/8/9 s ; auras de survivants +2 s | Ruée au spawn | Spawn près d'une structure forte | SS | — |
| Nowhere to Hide | Knight | Kick : auras à ≤ 24 m **du gen** 3/4/5 s | Tueur se tourne vers les cachés | S'éloigner à > 24 m | VM | — |
| Barbecue & Chilli | Cannibal | Après un hook : auras à ≥ 60/50/40 m du crochet 5 s | Tueur droit sur vous après un hook | Bouger derrière un obstacle | SS | — |
| A Nurse's Calling | Nurse | Auras de ceux qui soignent ou sont soignés à ≤ 28/30/32 m | Tueur sur les soins sans ligne de vue | Soigner à > 32 m | VM | — |
| Celestial Witness | Judgment | Toutes les 30 s : Obsession à ≥ 40 m vue 2/2,5/3 s ; sinon le plus éloigné devient l'Obsession | Obsession qui change | L'Obsession bouge toutes les 30 s | VM | — |
| Discordance | Legion | Gen à ≤ 64/96/128 m avec ≥ 2 réparateurs surligné ; persiste 4 s | Tueur sur les duos | 1 survivant par gen | SS | — |
| Darkness Revealed | Dredge | Fouille de casier : survivants à ≤ 8 m de **tout** casier 6/7/8 s ; recharge 30 s | Fouille puis cible près d'un casier | Pas de cachette près des casiers | SS | — |
| Ultimate Weapon | Xenomorph | Fouille de casier : survivants à ≤ 40 m du casier crient + Blindness 30 s ; recharge 55/50/45 s | Cri + Blindness | Bouger après le cri | VM | — |
| Friends 'til the End | Good Guy | Hook d'un non-Obsession : Obsession vue 6/8/10 s + Exposed 20 s ; hook de l'Obsession : un autre crie et devient l'Obsession | Obsession Exposed au hook d'un autre | L'Obsession se cache ~20 s | SS | — |
| Gearhead | Deathslinger | 30 s après une perte de santé, un Good en réparation révèle 6/7/8 s | Tueur pile après un Good | Viser des Great | SS | — |
| I'm All Ears | Ghost Face | Saut rapide à ≤ 48 m : aura 8 s ; recharge 60/45/30 s | Tueur coupe après un saut rapide | Vault lent hors contact | SS | — |
| Nemesis | Oni | Blind ou stun (palette, casier) → Obsession ; à tout changement d'Obsession : Oblivious 40/50/60 s + aura 8 s | Oblivious en devenant l'Obsession | Distance après un stun | SS | — |
| Deerstalker | Générale | Lire l'aura du tueur révèle la vôtre ; toutes les 40/35/30 s, le moins chassé voit le tueur 3 s | Aura du tueur sans perk | Bouger après chaque apparition | VM | Aura 4 s |
| Infectious Fright | Plague | Down : survivants dans le TR crient, position 4/5/6 s | Cri au down d'un coéquipier | Rester hors TR des chases | SS | — |
| Whispers | Générale | Murmures si un survivant est à ≤ 48/40/32 m | Aucun direct | Quitter la zone plutôt que se cacher | VM | 28/26/24 m ; +5 % Haste si personne dans le rayon |
| Territorial Imperative | Huntress | Entrée au sous-sol, tueur à > 24 m : aura 4/5/6 s ; recharge 45 s | Tueur au sous-sol de loin | Sous-sol pour décrocher seulement | SS | — |
| Predator | Wraith | Survivant qui sème le tueur : aura 4 s ; recharge 60/50/40 s | Retour 2-5 s après l'avoir semé | Bouger ~4 s, changer d'axe | SS | — |
| Zanshin Tactics | Oni | Auras des palettes et fenêtres à 32 m ; drop de palette : aura 3/4/5 s | Retour juste après un drop | Changer d'axe après un drop | SS | — |
| Alien Instinct | Xenomorph | Hook : blessé le plus éloigné vu 8 s + Oblivious 40/50/60 s | Oblivious au hook d'un autre | Se soigner, bouger | SS | — |
| Hysteria | Nemesis | Sain blessé : tous les blessés Oblivious 30/35/40 s ; recharge 20 s | Oblivious chez tous les blessés | Ne pas se fier au TR | SS | — |
| Surveillance | Pig | Gens kickés en blanc, jaunes 8/12/16 s quand un survivant stoppe la régression ; réparation audible +8 m | Retour rapide sur un gen repris | Reprendre puis bouger | SS | — |
| Phantom Fear | Animatronic | Dans le TR, regarder le tueur : cri + aura 2 s ; recharge 80/70/60 s | Cri en regardant le tueur | Ne pas fixer le tueur depuis une cachette | VM | — |
| Bloodhound | Wraith | Flaques de sang rouge vif, +2/3/4 s | Aucun direct | Blessé : se soigner vite | SS | — |
| Stridor | Nurse | Grognements +30/40/50 %, respiration +15/20/25 % | Aucun direct | Blessé : ne pas se cacher près du tueur | SS | — |
| Awakened Awareness | Mastermind | En portant : auras à ≤ 16/18/20 m | Déviation vers les cachés | Rester loin du porteur | SS | — |
| THWACK! | Skull Merchant | 3 jetons + 1 par hook ; casse : survivants à ≤ 36 m crient + aura 4/5/6 s | Cri à la casse d'une palette | Bouger après le cri | VM | — |
| Spies from the Shadows | Générale | Corbeau à ≤ 20/28/36 m : Loud Noise Notification ; recharge 5 s | Tueur après un envol de corbeaux | Contourner les corbeaux | VM | 36/38/40 m ; recharge 3 s |
| Wandering Eye | Krasue | Début de chase : blessés à ≤ 20 m vus 5 s ; recharge 40/35/30 s | Cible un blessé proche après une chase | Blessés loin des chases | VM | — |
| Human Greed | Dark Lord | Referme les coffres ; aura des coffres fermés ; survivants à ≤ 8 m d'eux révélés 3/4/5 s | Coffres refermés | Pas près des coffres fermés | SS | — |
| Hoarder | Twins | +2 coffres ; coffre ouvert ou objet ramassé à ≤ 32/48/64 m : notification 4 s | ≥ 4 coffres | Coffre seulement tueur loin | SS | — |
| Bitter Murmur | Générale | Gen terminé : survivants à ≤ 16 m révélés 5 s ; dernier gen : tous 5/7/10 s | Tueur sur ceux qui ont fini | Se disperser à la pop | VM | 20 m pendant 8 s ; dernier gen 10/12/14 s |

### Chase (25)

| Perk | Tueur | Effet LIVE court | Indice observable | Réponse robuste | Conf. | PTB 10.2.0 |
|---|---|---|---|---|---|---|
| Keep Them Waiting | Générale (ex-Save the Best for Last) | +1 jeton par coup sur un non-Obsession (max 6/7/8), −2 si l'Obsession est touchée ; récupération −5 %/jeton (max 30/35/40 %) | Récupération courte après un coup | L'Obsession prend les coups protecteurs | VM | — |
| Bamboozle | Clown | Vault +5/10/15 % ; fenêtre sautée bloquée pour tous 8/12/16 s | Fenêtre bloquée au 1er saut du tueur | Jouer les palettes | SS | — |
| Brutal Strength | Trapper | Casse et kick +10/15/20 % | Casse rapide | Fenêtres, tiles sans palette | SS | — |
| Enduring | Hillbilly | Stuns de palette −40/45/50 % | Stun très court | Drop pour bloquer, puis transition | SS (clause INC) | — |
| Coup de Grâce | Twins | +2 jetons par gen (5 détenus, 10 par partie) ; fente +70/75/80 % | Fente longue après une pop | Marge de distance | SS | — |
| Rapid Brutality | Xenomorph | Coup de base : +5 % Haste 8/9/10 s ; plus de Bloodlust | Ne perd pas de terrain après un coup | Sprint vers une tile, pas en terrain ouvert | SS | — |
| Spirit Fury | Spirit | Après 4/3/2 palettes cassées, la prochaine palette de stun explose | Palette qui explose au stun | Compter les palettes | SS | — |
| Knock Out | Cannibal | Drop puis > 6 m en 6 s : Hindered 5 % 3/4/5 s | Hindered après un drop | Marge avant la tile suivante | VM | > 10 m ; Hindered 20 % |
| Hubris | Knight | Stun par tout moyen : Exposed 20/25/30 s ; recharge 20 s | Exposed après un stun | Distance immédiate | VM | — |
| Dissolution | Dredge | 3 s après des dégâts, pendant 12/16/20 s : prochaine palette franchie en fast vault dans le TR détruite | Palette qui casse sous vous | Pas de fast vault de palette après un coup | VP | Attaque de base seulement ; 13/14/15 s |
| Superior Anatomy | Mastermind | Votre vault à ≤ 12 m : son prochain vault +30/35/40 % ; recharge 25 s | Vault instantané derrière vous | Ne pas enchaîner fenêtre sur fenêtre | VM | Bonus actif 10 s ; recharge 20 s |
| Genetic Limits | Singularity | Perte de santé : Exhausted 6/7/8 s | Exhausted au coup | Pas de perk d'épuisement juste après | SS | — |
| Forced Hesitation | Singularity | Down : survivants à ≤ 16 m Hindered 20 % 10 s ; recharge 40/35/30 s | Hindered au down proche | Rester à > 16 m | SS | — |
| Fire Up | Nightmare | +1 jeton par gen (max 5) : +4/5/6 %/jeton pour ramasser, casser, kicker, vaulter | Actions plus rapides en fin de partie | Saves préparés plus tôt | VM | +6/7/8 % par jeton |
| Batteries Included | Good Guy | ≤ 16 m d'un gen terminé : +5 % Haste | Tueur rapide près des gens finis | Chases loin des gens finis | VM (portes INC) | — |
| All-Shaking Thunder | Houndmaster | Après une chute : fente +75 % 15/20/25 s | Fente longue après un saut d'étage | Marge après son drop | VM | — |
| See How They Run | Générale (ex-Play With Your Food) | Perd l'Obsession en chase : +1 jeton (max 3), 3/4/5 % Haste/jeton ; −1 par attaque | Lâche l'Obsession | Chases suivantes plus prudentes | SS | — |
| Shadowborn | Wraith | Aveuglé : 6/8/10 % Haste 10 s | Accélère après un blind | Courir vers une ressource aussitôt | SS | — |
| Game Afoot | Skull Merchant | Coup sur le plus chassé → Obsession ; en la chassant, casse ou kick : +7 % 8/9/10 s | Accélère après une casse | Obsession : pas de pré-drop en boucle | VM | +10 % |
| Unbound | Unknown | 24/27/30 s après une blessure : chaque vault donne +7 % 10 s | Accélère après un vault | Palettes plutôt que fenêtres | VM | 26/28/30 s ; +5 % pendant 25 s |
| Dark Arrogance | Lich | Vaults +15/20/25 % ; récupération de stun −15 % ; blinds +15 % | Vaults très rapides | Privilégier les palettes | VM | + récupération des coups +15/20/25 % ; stuns et blinds +25 % |
| Rampage | Slasher | +1 jeton par casse (max 13) ; blind ou stun de palette : +1 %/jeton 13 s ; recharge 30/25/20 s | Accélère après un stun | Pas de stun tardif en fin de chase | VM | — |
| Unrelenting | Générale | Recharge des coups ratés −20/25/30 % | Se remet vite d'un raté | Pas de mind-game en terrain ouvert seul | VM | Ratés −30/35/40 % ; réussis −10 % |
| Cruel Limits | Demogorgon | Gen terminé : toutes les fenêtres bloquées 20/25/30 s | Fenêtres bloquées à la pop | Prévenir la chase avant de finir | SS | — |
| Help Wanted | Animatronic | Kick : 1 gen « compromis » ; s'il est terminé : récupération +25 % 40/50/60 s | Récupération courte après une pop | Finir un gen non kické | VM | 3 gens compromis ; 100/110/120 s + régression 150 % des gens non réparés |

### Anti-soin (8)

| Perk | Tueur | Effet LIVE court | Indice observable | Réponse robuste | Conf. | PTB 10.2.0 |
|---|---|---|---|---|---|---|
| Sloppy Butcher | Générale | Coup de base : Haemorrhage + Mangled 70/80/90 s ; soin partiel qui régresse +25 % | Mangled + Haemorrhage | Soin en une fois | SS | — |
| Deathbound | Executioner | Fin d'un soin : le soigneur crie ; Oblivious à > 12/8/4 m du soigné jusqu'à sa prochaine blessure | Cri à la fin du soin | Bouger après le cri | SS | — |
| Coulrophobia | Clown | Soins −20/25/30 % dans le TR ; aiguille +50 % | Soin lent dans le TR | Soigner hors TR | VM | — |
| Blood Echo | Oni | Chaque hook : blessés Exhausted + Haemorrhage 20/25/30 s ; sans recharge | Exhausted au hook d'un autre | Se soigner avant le hook suivant | SS | — |
| Forced Penance | Executioner | Coup protecteur : Broken 60/70/80 s | Broken après un body block | Body block seulement s'il évite un down | SS | — |
| Septic Touch | Dredge | Soin dans le TR : Blindness + Exhausted, persistent 20/25/30 s | Icônes en soignant | Soigner hors TR | VM | — |
| Leverage | Skull Merchant | Le sauveteur soigne −20/25/30 % pendant 60 s | Sauveteur lent à soigner | Le sauveteur ne soigne pas | VM | — |
| No Quarter | Houndmaster | Auto-soin à 75 % : skill checks continus ; raté ou arrêt : Broken 20/25/30 s | Rafale en fin d'auto-soin | Se faire soigner | SS | — |

### Endgame (8)

| Perk | Tueur | Effet LIVE court | Indice observable | Réponse robuste | Conf. | PTB 10.2.0 |
|---|---|---|---|---|---|---|
| No Way Out | Trickster | 1 jeton par survivant accroché ; 1er contact : interrupteurs bloqués 12 s + 6/9/12 s/jeton (max 36/48/60 s) | Interrupteurs bloqués | Toucher puis s'éloigner | SS | — |
| Terminus | Mastermind | Portes : blessés, au sol, accrochés Broken jusqu'à l'ouverture + 35/40/45 s | Broken aux portes | Se soigner avant la dernière gen | VM | — |
| Blood Warden | Nightmare | Porte ouverte : auras en zone de sortie ; une fois, hook → sorties bloquées 40/50/60 s | Sorties bloquées au hook | Sortir avant le hook | SS | — |
| Remember Me | Nightmare | Jetons sur les pertes de santé de l'Obsession ; portes jusqu'à 38/44/50 s, sauf pour l'Obsession | Ouverture lente | L'Obsession ouvre | SS | — |
| Rancor | Spirit | Chaque gen : tous crient (notification 3 s) ; l'Obsession voit le tueur 5/4/3 s ; portes : Obsession Exposed, mori | Cris à chaque gen | L'Obsession sort en priorité, loin du tueur | SS | — |
| None Are Free | Ghoul | 1 jeton par survivant accroché (max 4) ; dernier gen : fenêtres et palettes bloquées 12/14/16 s/jeton | Ressources bloquées au dernier gen | Dernier gen sain, sans chase | SS | — |
| Haywire | Animatronic | Porte lâchée ≥ 80 % : régresse ; lumières qui clignotent | Barre qui redescend | Ne pas lâcher au-delà de 80 % | VM | — |
| Ravenous | Krasue | 1 jeton par survivant accroché (max 4) ; à 4 : tous crient + Exposed 40/50/60 s | Cri collectif + Exposed | Aucun risque pendant l'Exposed | VM | +4 % Haste en portant et accrochage +4 % par jeton ; Exposed 80/85/90 s |

### Stealth (10)

| Perk | Tueur | Effet LIVE court | Indice observable | Réponse robuste | Conf. | PTB 10.2.0 |
|---|---|---|---|---|---|---|
| Tinkerer | Hillbilly | Gen à 70 % : notification au tueur + Undetectable 12/14/16 s ; une fois par gen | TR disparu vers 70 % | Un guetteur, un réparateur | SS | — |
| Furtive Chase | Ghost Face | Hook de l'Obsession : +10 % Haste + Undetectable 14/16/18 s ; le sauveteur devient l'Obsession | Silence après le hook de l'Obsession | Vérifier avant de décrocher | SS | — |
| Machine Learning | Singularity | Kick : 1 gen compromis ; terminé : Undetectable + 8 % Haste 40/50/60 s ; une fois | TR disparu à la pop d'un gen kické | Se disperser 40-60 s | VM | Jusqu'à 3 gens compromis ; +10 % |
| Trail of Torment | Executioner | Kick : Undetectable ; aura jaune du gen pour tous tant qu'il régresse ; recharge 60/45/30 s | Aura jaune d'un gen | Supposer le tueur proche ; réparer arrête l'effet | SS | — |
| Silent Shadow | Slasher | Hook : Undetectable 11/12/13 s ; permanent aux portes | Pas de TR après chaque hook | Inspecter les angles morts | VM | — |
| Insidious | Générale | Immobile 3/2/1 s : Undetectable tant qu'il reste immobile | TR coupé net, respiration | Inspecter avant de décrocher | VM | Après 2 s ; persiste 6/7/8 s |
| Dark Devotion | Plague | Obsession blessée : TR transféré à elle (40 m) 35/40/45 s, tueur Undetectable | TR qui suit l'Obsession | L'Obsession s'isole | VM | — |
| Unforeseen | Unknown | Kick : TR transféré au gen (32 m) 22/26/30 s, Undetectable ; recharge 30 s | TR fixe sur un gen | Le TR d'un gen kické n'est pas une info | SS | — |
| Beast of Prey | Huntress | Bloodlust : Undetectable 30/35/40 s | TR coupé en chase longue | Caméra sur le tueur | SS | — |
| Monitor & Abuse | Doctor | TR +5/10/15 % en chase, −15/20/25 % hors chase | TR qui démarre tard | 1er battement = tueur proche | VM | — |

### Hex (21)

| Perk | Tueur | Effet LIVE court | Indice observable | Réponse robuste | Conf. | PTB 10.2.0 |
|---|---|---|---|---|---|---|
| Hex: Ruin | Hag | Gens non réparés : régression 100/125/150 % | Gen lâché qui recule | Finir les gens ; purifier en passant | VM | — |
| Hex: No One Escapes Death | Générale | Portes : un terne devient Hex ; tous Exposed ; Haste 2/3/4 % ; aura du totem de 4 à 24 m en 30 s | Exposed aux portes | Soigné avant ; totem à deux | SS | — |
| Hex: Fortune's Fool | Générale (ex-Plaything) | 1er hook de chaque survivant : Hex maudit ; Oblivious ; totem bloqué 90 s pour les autres ; aura 24/20/16 m | Oblivious + Hex après votre hook | Le maudit purifie | SS | — |
| Hex: Undying | Blight | Auras à ≤ 2/3/4 m d'un terne ; Hex purifié transféré sur Undying | Effet qui survit | Purifier tous les totems allumés | SS | — |
| Hex: Pentimento | Artist | Rallume les totems purifiés ; soin et réparation −20 %, jusqu'à 24/28/32 % ; à 5 : totems bloqués | Totem rallumé | Re-purifier ; limiter les ternes | SS | — |
| Hex: Devour Hope | Hag | Jetons sur décrochages à ≥ 24 m du tueur ; 2 : Haste 3/4/5 % ; 3 : Exposed ; 5 : mori | Exposed permanent | Décrocher tueur proche mais engagé ; purifier | SS | — |
| Hex: Blood Favour | Blight | Perte de santé : palettes debout à 24/28/32 m bloquées 15 s | Palettes bloquées autour | Fuir vers une fenêtre | VM | Sain blessé par attaque de base seulement ; 32 m ; 13/14/15 s |
| Hex: Thrill of the Hunt | Générale | Purification et bénédiction −8/9/10 % par totem restant (max 40/45/50 %) | Purification lente | Ternes d'abord | VM | Rework : allumé au 1er hook ; blocage des totems 6/7/8 s par Hex à chaque hook ; portée **[INCERTAIN]** |
| Hex: Face the Darkness | Knight | Blessure : Hex maudit ; toutes les 35/30/25 s, survivants hors TR crient + aura 2 s | Cris périodiques | Soigner le maudit | SS | — |
| Hex: Retribution | Deathslinger | Purifier ou bénir : Oblivious 40/50/60 s ; retrait d'un Hex : tous révélés 20 s | Oblivious après purification | Purifier quand l'équipe est à l'abri | VM | — |
| Hex: Hive Mind | The First | 1er hook : Hex ; 4e gen terminé : gens restants −6/8/10 % | Hex au 1er hook | Purifier avant le 4e gen | VM | — |
| Hex: Crowd Control | Trickster | 1er vault rapide : Hex ; 4/5/6 dernières fenêtres franchies bloquées pour tous | Fenêtres franchies bloquées | Vault lent ; palettes | VM | — |
| Hex: Huntress Lullaby | Huntress | Raté +2/4/6 % ; jetons aux hooks : avertissement de skill check plus tardif, absent à 5 | Son de plus en plus tardif | Purifier tôt | SS | — |
| Hex: Haunted Ground | Spirit | 2 Hex ; purifier ou bénir l'un : tous Exposed 40/50/60 s | Exposed après une purification | Purifier seulement tueur loin | SS | — |
| Hex: The Third Seal | Hag | 2/3/4 derniers touchés : Blindness | Blindness permanente | Purifier ; en SWF, la voix compense | SS | — |
| Hex: Two Can Play | Good Guy | Après 4/3/2 stuns ou blinds : Hex ; qui étourdit ou aveugle est aveuglé 1,5 s | Écran blanc après un stun | Compter les stuns | SS | — |
| Hex: Nothing but Misery | Ghoul | Après 8 coups : Hex ; coup de base : Hindered 5 % 10/12,5/15 s | Hindered à chaque coup | Purifier | VP | Après 4 coups ; + vault −10 % |
| Hex: Under Your Thumb | Judgment | 1er hook : Hex ; Haste en course plafonnée à 25/20/15 % ; gain à ≤ 32 m alerte le tueur | Boost de Haste rogné | Pas de fuite bâtie sur un boost | VM | — |
| Hex: Wretched Fate | Dark Lord | 1er gen : Hex maudit l'Obsession, réparation −27/30/33 % ; aura du totem à 12 m | Obsession lente | L'Obsession fait le totem | SS | — |
| Hex: Overture of Doom | Krasue | Maudit le gen le plus loin du totem ; réparé ≥ 5 s : TR transféré (32 m) 20/25/30 s + Undetectable | TR venant d'un gen lointain | Ne pas se fier au TR ; purifier | VM | — |
| Hex: Scared to Death | Slasher | 3 survivants accrochés : Hex ; casse de palette en chase : survivants à ≤ 13 m crient + Hindered 11/12/13 % 3 s | Cri + Hindered à la casse | Ne pas rester près de la palette | VM | — |

### Scourge (6)

| Perk | Tueur | Effet LIVE court | Indice observable | Réponse robuste | Conf. | PTB 10.2.0 |
|---|---|---|---|---|---|---|
| Scourge Hook: Pain Resonance | Artist | 4 crochets Fléau ; 1er hook de chaque survivant : gen le plus avancé −10/15/20 %, réparateurs crient | Cri + explosion au hook | Pas de gen très avancé isolé | VM | — |
| Scourge Hook: Floods of Rage | Onryō | Décrochage d'un Fléau : auras des autres 5/6/7 s | Tueur sur un tiers après un décrochage | Obstacle, mouvement | SS | — |
| Scourge Hook: Weeping Wounds | Générale (ex-Gift of Pain) | Décroché d'un Fléau : Haemorrhage 90 s ; après son 1er soin complet, réparation et soin −10/13/16 % jusqu'à sa prochaine blessure | Haemorrhage seule | Pas de soin immédiat si le tueur approche | SS | — |
| Scourge Hook: Monstrous Shrine | Générale | Cave + 4 crochets Fléau ; tueur à > 24 m : sacrifice +10/15/20 % | Sacrifice plus rapide | Décrocher plus tôt | SS | Rework : gens non réparés régressent à 150/175/200 % |
| Scourge Hook: Jagged Compass | Houndmaster | 4 Fléau + chaque crochet normal décroché ; hook sur Fléau : aura du gen le plus avancé 6/8/10 s | Tueur au gen le plus avancé | Se décaler sur un 2e gen | SS | — |
| Scourge Hook: Hangman's Trick | Pig | 4 Fléau ; en portant : survivants à ≤ 12/14/16 m d'un Fléau ; sabotage : notification | Tueur arrive au sabotage | Saboter seulement si le crochet est proche | VM | — |

### Autre (17)

| Perk | Tueur | Effet LIVE court | Indice observable | Réponse robuste | Conf. | PTB 10.2.0 |
|---|---|---|---|---|---|---|
| Starstruck | Trickster | Portage : survivants dans le TR Exposed, persiste 26/28/30 s ; recharge 60 s | Exposed près du porteur | Hors du TR du porteur | SS | — |
| Agitation | Trapper | Portage : Haste 6/12/18 %, TR +12 m | TR énorme en portant | Saves préparés tôt | VM | Haste 14/16/18 % |
| Iron Grasp | Générale | Wiggle +4/8/12 % ; déport −75 % | Wiggle lent | Sabotage ou pallet save préparé | VM | +10/11/12 % |
| Mad Grit | Legion | Portage : pas de recharge sur raté ; un coup réussi met le wiggle en pause 2/3/4 s | Frappe en portant | Pas de body block | SS | — |
| Forever Entwined | Ghoul | +4 %/jeton (max 24/28/32 %) pour ramasser, déposer, accrocher | Saves ratés de peu | Se placer plus tôt | SS | — |
| Iron Maiden | Legion | Fouille +30/40/50 % ; sortie de casier : cri + notification 4 s + Exposed 30 s | Cri + Exposed en sortant | Éviter les casiers | SS | — |
| Distressing | Générale | TR +20/25/30 % | TR large | Confirmer la distance | SS (palier 2 INC) | TR +30 % ; réparation −6/7/8 % dans le TR |
| Shattered Hope | Générale | Boons détruits ; survivants dans le rayon révélés 6/7/8 s | Boon disparu | Sortir du rayon quand le tueur approche | SS | Rework : totems bloqués 16/18/20 s ; aura des Boons |
| Dominance | Dark Lord | 1re interaction avec chaque coffre et totem : bloqué 8/12/16 s, aura du prop au tueur | Prop bloqué aussitôt | Partir, revenir plus tard | VM | Totems seulement, 25 s ; cri + aura 3/4/5 s |
| Lightborn | Hillbilly | Immunité aux blinds (lampe, pétard, Flash Grenade, Blast Mine) ; qui tente est révélé 6/8/10 s | Flash sans effet | Arrêter au 1er échec | SS | — |
| Franklin's Demise | Cannibal | Coup de base : objet lâché ; auras des objets à 32/48/64 m ; plus de perte de charges | Objet au sol | Ne pas le chercher près du tueur | VM | — |
| Languid Touch | Lich | Corbeau à ≤ 36 m du tueur : Exhausted 6/8/10 s ; recharge 5 s | Exhausted après un corbeau | Marcher près des corbeaux | SS | — |
| Weave Attunement | Lich | Objet vidé qui tombe ; auras des objets et des survivants à ≤ 12 m ; ramasser : Oblivious 20/25/30 s | Aura d'un objet au sol | Ignorer les objets au sol | SS | — |
| Overwhelming Presence | Doctor | Objet sorti à ≤ 32 m : Exhausted 15 s ; aura du plus proche Exhausted 2/3/4 s ; recharge 25 s | Exhausted en sortant un objet | Pas d'objet près du tueur | VM | — |
| Mindbreaker | Demogorgon | En réparant : Blindness + Exhausted, persistent 3/4/5 s | Icônes en réparant | Quitter le gen tôt | SS | — |
| Dragon's Grip | Blight | 30 s après un kick, 1er qui touche le gen : cri, localisé 4 s, Exposed 60 s ; recharge 60/45/30 s | Cri + Exposed sur un gen kické | Attendre 30 s | VM | — |
| Make Your Choice | Pig | Décrochage, tueur à > 32 m : sauveteur crie + Exposed 40/50/60 s ; recharge 40/50/60 s | Sauveteur Exposed | Décrocher tueur proche mais engagé | SS | — |

> **À retenir** : sur 145 perks, **27** ont une valeur PTB 10.2.0 dans ce tableau ; aucune ne change le jeu LIVE avant la sortie officielle. Les catégories sont un **rangement** du guide, pas une classification officielle BHVR.

Détail : `kb/research/batch3_perks_kill_p90.md` à `p96.md` (fiches complètes : indice, soupçonner, confirmer, counterplay, erreurs, menace SoloQ / SWF).

---

## Sources du chapitre

- `kb/deliverables/PERK_DEDUCTION.md` (v2.0, re-vérifiée le 27/09/2026) : signaux, règles par phase, combos, réflexes par défaut, drills, limites.
- `kb/research/batch3_perks_kill_p90.md` … `p96.md` : 145 fiches perks re-vérifiées sur page wiki complète (6 + 18 + 23 + 21 + 28 + 22 + 27), règles de régression, historique 9.2.0, Diminishing Returns 9.6.0.
- `kb/ledgers/AUDIT_PHASE0_ERRATA.md` : Eruption −10 % et Pop inchangé en 9.2.0 (« Postponed ») ; piège du digest wiki (texte PTB affiché comme LIVE).
- `kb/seed/audit_phase0.txt` (tables vérifiées) : Match Details et loadout caché (9.6.0), anti-camp, protections de décrochage (10.1.0), regression events (7.5.0), totems, coffres, portes, EGC.
- Notes officielles BHVR : `kb/sources/patches/official_*.txt`, notamment 9.2.0 (523), 9.5.0, 9.6.0 (544), 10.1.0, PTB 10.2.0 (559).
- Pages wiki.gg complètes des perks : `kb/sources/wiki_perks_digest.md` (brut : `kb/sources/wiki_perks.json`).
