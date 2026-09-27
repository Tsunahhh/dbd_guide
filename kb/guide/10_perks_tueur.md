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

Un jeton de **Distortion** consommé signale aussi une lecture d'aura, mais la mécanique de Distortion n'a pas été re-vérifiée **[INCERTAIN]**.

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
| DR : quelles catégories ? | liste **non publiée** dans les notes ; blocages, pertes instantanées, régressions (Ruin, Call of Brine, Overcharge, Lay Waste) : concernés ou non ? | **[INCERTAIN]** | ne pas compter dessus |

> **Note avancée** : « le 3-gen infini n'existe plus » est une **conséquence** du plafond de 8 events [HEURISTIQUE]. Un gen avancé à pointes a une **valeur défensive** : peu de kicks restants, et au 8e seul un skill check raté le fait encore reculer.

### Historique des patchs : les pièges

| Idée répandue | Réalité LIVE 10.1.2a | Confiance |
|---|---|---|
| « Eruption est passée à −5 % en 9.2.0 » | **Faux.** Le changement 10 → 5 % du PTB 9.2.0 a été **reporté** (« Postponed ») et annulé. **Eruption = −10 %** en LIVE | [FACT] (VM) |
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

Détail : `kb/deliverables/PERK_DEDUCTION.md` §2.

---
