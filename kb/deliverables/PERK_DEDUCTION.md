# PERK DEDUCTION : lire le loadout du tueur pendant la partie (vue survivant)

> **Statut : WRITTEN + AUDITED + RE-VÉRIFIÉ.** Version **2.0 du 27/09/2026**.
> - v1.0 (27/09/2026) : rédigée sans web, auditée (§25-26) dans `kb/audit/pass14_deliverables.md`. Ses corrections de fond (D1 à D19) sont **conservées** dans cette version.
> - v2.0 (27/09/2026) : toutes les valeurs, tous les déclencheurs et toutes les confiances ont été **réalignés sur les 7 fiches du lot 3 re-vérifiées le 27/09/2026** (lot 12a). Les changements qui modifient une déduction sont listés au §7.1.

> Livrable mission §10 « PERK DEDUCTION » (voir `prompt.md`).
> **Référence de version : LIVE 10.1.2a (17/09/2026).** Le PTB 10.2.0 (15-21/09/2026) **n'est pas LIVE**. Toute valeur PTB est étiquetée « PTB ».
>
> **Sources de ce document** (aucune autre) :
> - les 7 fiches du lot 3 : `kb/research/batch3_perks_kill_p90.md` … `p96.md` (citées **[p90] … [p96]**). Depuis le lot 12a, chaque fiche repose sur la **page wiki.gg complète** de la perk (API MediaWiki, digest `kb/sources/wiki_perks_digest.md`) et sur les **notes officielles BHVR** 9.0.0 → PTB 10.2.0 (`kb/sources/patches/official_*.txt`) ;
> - l'audit vérifié de la phase 0 : `kb/seed/audit_phase0.txt` (cité **[audit]**).
>
> **Statut de vérification : 145/145 perks tueur re-vérifiées sur page wiki complète** (6 + 18 + 23 + 21 + 28 + 22 + 27, en-têtes des fiches). Pour 62 d'entre elles, une note officielle confirme la valeur (VMS ou VP) ; les autres sont STRONG_SECONDARY (wiki seul). **Plus aucune perk n'est entièrement UNCERTAIN** : il reste des **détails** non établis, listés au §7.2. Aucune analyse de VOD n'a été faite.
>
> **Aucune déduction de ce document n'est certaine pendant la partie** : l'écran de fin est la seule confirmation (§1.2). Les liens « Signature » supposent que le périmètre de 145 perks du seed est complet ; il n'a **pas** été comparé à la liste officielle LIVE (§7.3).

---

## 0. Comment lire ce document

**Étiquettes de nature** (mission §21)
- **FACT** : mécanique ou valeur issue d'une source vérifiée ; la confiance suit entre parenthèses.
- **HEURISTIC** : règle de jeu raisonnée à partir de l'effet d'une perk, non mesurée. C'est le cas de **toutes** les rubriques Indice / Soupçonner / Confirmer / Adaptation des fiches.
- **EXPERT OPINION** : arbitrage ou priorité proposé par ce document, sans source.

**Confiance des valeurs** (reprise telle quelle de la fiche citée)
- **VP** = VERIFIED_PRIMARY : note officielle BHVR seule, explicite.
- **VMS** = VERIFIED_MULTI_SOURCE : page wiki complète + note officielle concordante.
- **SS** = STRONG_SECONDARY : page wiki complète seule.
- **U** = UNCERTAIN : détail absent de la page complète, ou conflit non résolu.
- **OUTDATED** : valeur d'une version antérieure (à ne plus utiliser).
- **HYP** = HYPOTHESIS.

**Règle d'or** : un chiffre marqué **U** ne sert **jamais** de base à une décision fine, par exemple « j'ai 38 s ». Les chiffres SS / VMS / VP sont des valeurs **LIVE 10.1.2a** : 27 perks de ce périmètre changent au PTB 10.2.0 (§7.4) et devront être relues à sa sortie. Le comportement robuste proposé dépend du **mécanisme** (déclencheur, cible, type d'effet), qui vieillit moins vite que les chiffres.

**Confiance du lien signal → perk** (HEURISTIC, propre à ce document)
- **Signature** : dans le périmètre du lot 3, le signal ne correspond qu'à une perk. Réserves :
  - un pouvoir ou un add-on peut produire le même effet (§1.4) ;
  - une perk **d'un coéquipier** aussi (vérifier Match Details, §1.2) ;
  - le périmètre des 145 perks du seed n'a pas été comparé à une liste officielle (§7.3) ;
  - pour Distressing, Shattered Hope, Dissolution, Hex: Nothing but Misery, Whispers, Undone et Ravenous, la page wiki affichait déjà le texte PTB : la valeur LIVE a été **reconstruite** depuis la note PTB 559 (« was … ») [p94][p95][p96].
  - « Signature » = hypothèse de travail très forte, **jamais** une certitude.
- **Fort** : 2 ou 3 perks candidates, qu'un test simple départage.
- **Faible** : repose sur le comportement du tueur. Le talent, le pouvoir ou le hasard suffisent souvent à l'expliquer.

---

## 1. Principe

### 1.1 Les deux questions (mission §10)

1. **« J'ai observé A + B + C, donc la perk X est plausible. »** Relier un **déclencheur** (hook, down, pickup, coup, kick, gen terminé, portes alimentées, stun, soin, purification…) à un **effet visible** (statut, cri, blocage, barre, son, aura). Un signal isolé ne prouve presque rien. C'est la **coïncidence temporelle répétée** qui confirme. (HEURISTIC, formulé dans toutes les fiches)
2. **« Quel comportement minimise le risque même sans certitude ? »** Choisir l'action qui reste bonne **contre toutes les perks candidates** et qui coûte peu si l'hypothèse est fausse. (EXPERT OPINION)
   - Exemple : après un hook, lâcher d'abord un gen peu avancé. Le geste neutralise Dead Man's Switch (le 1er gen lâché consomme l'effet) **et** ne coûte presque rien si la perk n'est pas là [p91].

### 1.2 Ce que le jeu montre, ce qu'il cache (FACT)

- **Loadout du tueur caché jusqu'à la fin de la partie** depuis 9.6.0 (FACT, VP [audit], notes officielles 9.6.0). Seule **l'identité** du tueur est révélée, dès qu'un survivant entre en poursuite ou perd un état de santé.
  - L'idée « les perks du tueur sont visibles après la 1re chase » est **fausse** (erreur du seed D-092, corrigée par [audit]).
  - Conséquence : pendant la partie, **seule la déduction** donne accès aux perks. L'écran de fin est la seule confirmation certaine.
- **Loadouts des coéquipiers** (perks, objets, add-ons, offrandes) visibles dans Match Details depuis 9.6.0 (FACT, VP [audit]).
  - Usage (HEURISTIC) : écarter les causes **côté survivant** d'un signal avant d'accuser une perk du tueur. Exemple : une perk de coéquipier qui crée une Obsession ou montre l'aura du tueur.
- **En général, aucune icône « ton aura est lue »** (HEURISTIC [p91] Eruption, [p92] Gearhead). On ne sait pas qu'on est vu, sauf par un effet indirect (jeton de Distortion consommé ; mécanique de Distortion non re-vérifiée, U [p90]).
  - **Exceptions : ce que l'on voit implique qu'on est vu** (FACT, voir chaque fiche) :
    - vous voyez l'aura rouge du tueur via **Deerstalker** : il voit la vôtre pendant la même durée (VMS [p93]) ;
    - vous voyez l'aura d'un **objet au sol** en passant à ≤ 12 m (**Weave Attunement**) : le tueur voit les survivants à ≤ 12 m des objets au sol (SS [p95]).
  - Certains **cris** révèlent aussi l'aura ou la position (Eruption, THWACK!, Face the Darkness, Phantom Fear, Infectious Fright, Ultimate Weapon, Friends 'til the End, Make Your Choice, Deathbound, Dragon's Grip) ; d'autres ne donnent qu'une **Loud Noise Notification** (Rancor, Iron Maiden) ou rien de visuel (Pain Resonance) (§1.3).

### 1.3 Inventaire des signaux observables

| Famille | Observable côté survivant | Précisions vérifiées / réserves |
|---|---|---|
| **Icônes de statut (HUD)** | Exposed, Oblivious, Blindness, Exhausted, Broken, Hindered, Mangled, Haemorrhage, Deep Wound, Endurance, Elusive, Cursed ; icône d'Obsession | Définitions FACT (SS, glossaire wiki.gg [audit]) : Exposed = une attaque de base met à terre ; Oblivious = pas de TR ni de heartbeat ; Blindness = aucune aura, même de base ; Broken = impossible d'être soigné au-delà de blessé. L'Endurance transforme le coup d'un Exposed en Deep Wound, mais ne protège pas un survivant déjà en Deep Wound (FACT, SS [audit]) |
| **Totems** | Totem Hex allumé (flamme ; grésillement audible de près, HEURISTIC [p91]) ; totem purifié qui se rallume ; Boon disparu ; **aura d'un totem** visible sans perk (§2.4) | 5 totems par partie ; purification 14 s ; bénédiction d'un terne 14 s, d'un Hex 28 s ; le tueur éteint un Boon en 1 s (FACT, SS [audit]). Plusieurs Hex ne s'allument **qu'en cours de partie** (§2.4) |
| **Blocages de l'Entité** | Gens, fenêtres, palettes, interrupteurs de porte, sorties, coffres, totems « bloqués » (pointes, interaction impossible) | Un gen bloqué ne progresse ni ne régresse et ne subit pas de perte instantanée (FACT, SS [p90][audit]). **Blocage basekit à ne pas confondre** : après le 3e vault de la même fenêtre dans une poursuite, la fenêtre est bloquée 30 s pour ce survivant seulement (FACT, SS [audit]) |
| **Auras de gens** | **En général non** : les surlignages de gens décrits par les perks (blanc, jaune) sont **côté tueur** (DMS, Eruption, Thrilling Tremors, Surveillance, Machine Learning, Overture of Doom, Jagged Compass) [p91][p93][p94][p95][p96] | **Exception** : Trail of Torment rend l'aura **jaune** du gen kické visible **par tous les survivants** tant qu'il régresse (SS [p93]). Côté survivant, on voit aussi le **blocage**, pas la couleur |
| **Pointes autour d'un gen** | Oui | Au moins 4 Regression Events consommés. Au 8e, le tueur ne peut plus interagir avec ce gen ; seuls les skill checks ratés le font encore régresser (FACT, VMS [p90][audit], depuis 7.5.0) |
| **Crochets Fléau (Scourge)** | **Visibilité côté survivant non établie** | Le wiki dit seulement « highlighted in white », ce que les fiches lisent comme une aura **pour le tueur** ; les 7 fiches laissent la question ouverte ([p90] Q3, [p91] Q2, [p93], [p94] Q1, [p96]). **Ne pas en faire un signal de base** |
| **Cris involontaires** | Oui (le sien et, a priori, ceux des autres) | Ce que révèle le cri dépend de la perk : aura (Eruption 8/10/12 s, THWACK! 4/5/6 s, Face the Darkness 2 s, Phantom Fear 2 s), position (Infectious Fright 4/5/6 s, Ultimate Weapon, FTTE, MYC, Deathbound, Dragon's Grip 4 s), Loud Noise Notification (Rancor 3 s, Iron Maiden 4 s). Pain Resonance : cri **sans** Loud Noise Notification, audible par un tueur proche (SS, CONFLICT-L3P90-02 résolu [p90]) |
| **Sons** | Heartbeat / TR ; son absent ; respiration du tueur ; « stinger » à la fin de l'Undetectable ; son d'avertissement de skill check | Undetectable supprime TR et tache rouge ; un stinger sonore marque sa fin (FACT, SS [audit]). Insidious : respiration audible, stinger à la reprise du mouvement (VMS [p94]). Huntress Lullaby retarde puis supprime le son d'avertissement (SS [p94]). **TR transféré** loin du tueur : Dark Devotion (sur l'Obsession), Unforeseen et Overture of Doom (sur un gen) [p95][p96] |
| **Auras reçues** | Aura rouge du tueur sans perk ; aura d'un totem ; aura d'un gen (Trail of Torment) ; aura d'un objet au sol ; aura du soigné (Deathbound) | Voir §2.4 et §2.5 |
| **Barres de progression** | Chute brutale du gen ; recul sans kick ; barre de porte qui recule ; soin, réparation ou purification anormalement lents ; zones et timing de skill check | Kick de base : −5 % instantané, puis −0,25 charge/s ; réparer 5 % stoppe la régression (FACT, VMS [p90][audit]) |
| **Carte** | Nombre de coffres ; coffres refermés ; objets au sol ; lumières d'un interrupteur | 3 coffres par défaut (2 aléatoires + 1 au sous-sol) (FACT, SS [audit]). Haywire : lumières de l'interrupteur qui clignotent (VMS [p95]) |
| **Comportement du tueur** | Trajectoires, timings, vitesse de casse / vault, portée de fente | Signal **faible** (voir « Faible » au §0). Repères basekit FACT : casse de palette 2,34 s (VMS) ; stun de palette 2 s (SS) ; vault de fenêtre tueur 1,7 s (SS) ; kick 1,8 s (VMS) [audit] |

### 1.4 Pièges de raisonnement (HEURISTIC)

- **Le pouvoir et les add-ons imitent les perks.**
  - Mangled + Haemorrhage : certains pouvoirs les donnent [p92].
  - Oblivious : Myers, Ghost Face, Sadako… [p95].
  - Blindness : add-ons, en plus des perks (Mindbreaker, Third Seal, Septic Touch, Ultimate Weapon) [p91][p93][p94][p96].
  - Casse de palette par un pouvoir [p93].
  - Réflexe : se demander « le tueur identifié peut-il faire ça sans perk ? »
- **Les mécaniques basekit imitent les perks.** Blocage de fenêtre au 3e vault (≠ Bamboozle) [p91][audit] ; protections de décrochage ; anti-camp ; Bloodlust.
- **Une perk peut en déclencher une autre.** Tout blocage de gen, quelle qu'en soit la source, rend le tueur Undetectable 30 s sous **Secret Project** (VMS [p93]) ; **tout** changement d'Obsession rend la nouvelle Obsession Oblivious sous **Nemesis** (SS [p92]). Le signal visible peut donc venir de deux perks à la fois.
- **Un seul événement ne suffit pas.** La répétition au même déclencheur est le vrai test [p90][p93].
- **L'identité du tueur n'est qu'un indice faible.** Elle rend plus probables les perks de son propre personnage : Deathslinger + DMS [p91] ; Artist + Pain Res / Grim Embrace [p90] ; The First + Turn Back the Clock / Hive Mind / Secret Project [p91][p93]. Un tueur peut aussi porter les perks d'autres personnages (EXPERT OPINION).
- **Les heuristiques du seed présentées comme absolues sont dangereuses.** L'audit cite « purifiez un Hex dès qu'il s'allume » et le proxy camp. Toute règle ci-dessous est conditionnelle [audit].

---

## 2. Table des SIGNAUX → perks candidates

> Toutes les lignes sont **HEURISTIC**. Les valeurs entre parenthèses gardent la confiance de la fiche citée. La colonne « Confiance du lien » combine la force du lien (voir §0) et la confiance de l'effet.

### 2.1 Icônes de statut

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| **Exposed** pour tous dès l'alimentation des portes | Hex: No One Escapes Death | Un totem Hex s'allume ; son aura est visible par les survivants à 4 m, rayon qui s'élargit jusqu'à 24 m en 30 s ; Haste 2/3/4 % pour le tueur (SS). Autres Exposed collectifs : Haunted Ground (après une purification **ou** une bénédiction), Devour Hope (3 jetons, sans lien avec les portes), Ravenous (4e premier hook, avec cri collectif). Rancor = **Obsession seule** | Fort · effet SS [p91] |
| **Exposed** pour tous juste après la purification **ou la bénédiction** d'un Hex | Hex: Haunted Ground | 2 totems Hex au début ; le 1er béni ou purifié déclenche Exposed 40/50/60 s pour tous, le 2e s'éteint (SS) | Signature · effet SS [p94] |
| **Cri collectif + Exposed** quand le 4e survivant différent est accroché | Ravenous | Compter les premiers hooks : Exposed 40/50/60 s (VMS). Les 80/85/90 s du seed ch8 sont la valeur PTB (CONFLICT-K96-01 résolu) | Signature · effet VMS [p96] |
| **Exposed** permanent pour tous, sans déclencheur visible, avec un totem allumé | Hex: Devour Hope (3 jetons) | Jetons gagnés sur les décrochages faits à ≥ 24 m du tueur ; à 2 jetons, Haste 3/4/5 % 10 s après un hook ; à 5, mori (SS). Le tueur s'éloigne ostensiblement des crochets | Fort · effet SS [p92] |
| **Exposed** en entrant dans le TR d'un tueur **qui porte** | Starstruck | L'Exposed persiste 26/28/30 s après la sortie du rayon ou la fin du portage ; recharge 60 s (SS) | Signature · effet SS [p92] |
| **Exposed** sur l'Obsession pile quand un **autre** survivant est accroché | Friends 'til the End | Aura de l'Obsession 6/8/10 s + Exposed 20 s ; quand l'Obsession est accrochée, un survivant aléatoire crie et devient l'Obsession (SS) | Signature · effet SS [p92] |
| **Exposed + cri** du sauveteur au décrochage, tueur loin du crochet | Make Your Choice | Tueur à > 32 m ; Exposed 40/50/60 s ; recharge 40/50/60 s (SS) | Signature · effet SS [p95] |
| **Exposed + cri** en touchant un gen tout juste kické | Dragon's Grip | Dans les 30 s qui suivent le kick, 1er survivant qui touche le gen : cri, localisé 4 s, Exposed 60 s ; recharge 60/45/30 s (VMS) | Signature · effet VMS [p93] |
| **Exposed** juste après avoir étourdi le tueur (par tout moyen) | Hubris | Exposed 20/25/30 s (VMS) ; recharge 20 s (SS) : un 2e stun dans les 20 s ne redéclenche pas | Signature · effet VMS [p94] |
| **Exposed + cri** en sortant d'un casier | Iron Maiden | Cri + Loud Noise Notification 4 s (pas une aura) + Exposed 30 s ; fouille des casiers vides 30/40/50 % plus rapide (SS) | Signature · effet SS [p94] |
| **Exposed** sur l'Obsession seule, dès l'alimentation des portes | Rancor | Exposed jusqu'à la fin, mori possible. Indice antérieur : **tous** les survivants crient à chaque gen terminé (§2.2) (SS) | Signature · effet SS [p94] |
| **Oblivious** chez **tous les blessés** (y compris celui qui vient d'être touché) quand un survivant **sain** devient blessé | Hysteria | Oblivious 30/35/40 s, recharge 20 s (SS ; CONFLICT-K95-01 résolu : 20/25/30 s et 30 s = avant 8.6.0) | Fort · effet SS [p95] |
| **Oblivious** après son 1er hook + un totem Hex s'allume | Hex: Fortune's Fool | Le maudit voit l'aura du totem à 24/20/16 m ; totem bloqué pour **les autres** 90 s (SS) | Signature · effet SS [p91] |
| **Oblivious** juste après avoir purifié **ou béni** un totem (terne ou Hex) | Hex: Retribution | Oblivious 40/50/60 s ; quand un Hex est retiré **par tout moyen**, toutes les auras des survivants sont révélées 20 s (VMS). Les Boons déclenchent aussi | Signature · effet VMS [p93] |
| **Oblivious** au moment où l'on **devient l'Obsession** (après un stun ou un flash, mais aussi après **tout** autre transfert) | Nemesis | À chaque changement d'Obsession, quelle qu'en soit la cause : nouvelle Obsession Oblivious 40/50/60 s + aura révélée 8 s (SS). Transfert par stun (palette, casier) ou aveuglement | Signature · effet SS [p92] |
| **Oblivious** au moment d'un hook, alors qu'on est blessé et le plus loin du tueur | Alien Instinct | Aura 8 s + Oblivious 40/50/60 s (SS). ≠ Hysteria (déclenchée par un coup, pas par un hook) | Signature · effet SS [p94] |
| **Oblivious** après avoir ramassé un objet de survivant | Weave Attunement | Oblivious 20/25/30 s ; un objet vidé pour la première fois tombe seul ; aura des objets au sol visible par les survivants à ≤ 12 m (= vous êtes révélé) (SS) | Signature · effet SS [p95] |
| Cri à la fin d'un soin (soigneur), puis **Oblivious** en s'éloignant du soigné ; **aura du soigné** visible | Deathbound | Oblivious dès qu'on est à plus de 12/8/4 m du soigné, jusqu'à ce que le soigneur perde un état de santé ; **aucune condition de distance au tueur** (SS) | Signature · effet SS [p92] |
| **Blindness + cri** au moment où le tueur fouille un casier | Ultimate Weapon | Survivants à ≤ 40 m **du casier** ; Blindness 30 s ; recharge 55/50/45 s (VMS ; CONFLICT-K91-03 résolu : la version « rayon de terreur » est fausse) | Signature · effet VMS [p91] |
| **Blindness + Exhausted** dès qu'on répare | Mindbreaker | Persistent 3/4/5 s après l'arrêt ; un Exhausted déjà présent est **mis en pause** ; aucun seuil de progression (SS) | Signature · effet SS [p93] |
| **Blindness + Exhausted** en soignant dans le TR | Septic Touch | Hors TR : rien. Persistent 20/25/30 s après le soin (VMS). Soigner **autrui** déclenche-t-il ? U | Signature · effet VMS [p96] |
| **Blindness** permanente après un coup, avec un Hex allumé | Hex: The Third Seal | Les 2/3/4 **derniers** survivants touchés par une attaque de base ou spéciale, jusqu'à purification (SS ; condition VMS) | Fort · effet SS [p94] |
| Écran blanc (**blind** 1,5 s) juste après avoir étourdi ou aveuglé le tueur | Hex: Two Can Play | S'allume après 4/3/2 stuns ou blinds s'il reste un totem terne (SS) | Signature · effet SS [p95] |
| **Exhausted** en commençant à utiliser un objet près du tueur | Overwhelming Presence | Objet à ≤ 32 m → Exhausted 15 s ; quand un survivant à ≤ 32 m devient Exhausted (tout moyen), le tueur voit l'aura du plus proche 2/3/4 s ; recharge 25 s (VMS) | Signature · effet VMS [p96] |
| **Exhausted** juste après avoir perdu un état de santé | Genetic Limits | Exhausted 6/7/8 s, par tout moyen (SS) | Fort · effet SS [p94] |
| **Exhausted + Haemorrhage** au moment d'un hook, alors qu'on est blessé | Blood Echo | À **chaque** accrochage, tous les blessés ; 20/25/30 s ; aucune recharge (SS) | Signature · effet SS [p94] |
| **Exhausted** après avoir fait s'envoler un corbeau près du tueur | Languid Touch | Corbeau à ≤ 36 m du tueur ; Exhausted 6/8/10 s ; recharge 5 s (SS) | Signature · effet SS [p95] |
| **Mangled + Haemorrhage** après un coup de base | Sloppy Butcher | Tueur dont le pouvoir ne les donne pas ; 70/80/90 s ; flaques +50/75/100 % ; régression du soin partiel +25 % (SS) | Signature (hors pouvoir) · effet SS [p92] |
| **Haemorrhage seule** (sans Mangled) à la sortie d'un crochet | Scourge Hook: Weeping Wounds | Haemorrhage 90 s ; après le 1er soin complet, réparation et soin −10/13/16 % jusqu'à la prochaine blessure (SS). Le « Mangled » du seed est **faux** | Signature · effet SS [p91] |
| **Broken** chez tous les blessés, au sol ou accrochés à l'alimentation des portes | Terminus | Broken jusqu'à l'ouverture d'une porte, puis **35/40/45 s** (VMS ; CONFLICT-3P92-01 résolu : 20/25/30 s = avant 9.0.0). Depuis 9.5.0, se déclenche assez tôt pour bloquer Adrenaline | Signature · effet VMS [p92] |
| **Broken** après un coup protecteur | Forced Penance | Broken 60/70/80 s (SS) | Signature · effet SS [p94] |
| **Broken** après un skill check raté ou un arrêt dans une rafale de fin d'auto-soin | No Quarter | Rafale à 75 % d'un auto-soin (tout moyen) ; Broken 20/25/30 s (SS) | Signature · effet SS [p96] |
| **Hindered** après avoir fait tomber une palette puis couru | Knock Out | S'éloigner de plus de 6 m dans les 6 s → Hindered 5 % pendant 3/4/5 s (VMS). **PTB** : 10 m, 20 % | Signature · effet VMS [p94] |
| **Hindered** quand un coéquipier tombe près de soi | Forced Hesitation | Survivant à l'état mourant (tout moyen) → autres à ≤ 16 m Hindered 20 % 10 s ; recharge 40/35/30 s (SS) | Signature · effet SS [p94] |
| **Hindered** après chaque coup de base, Hex apparu en cours de partie | Hex: Nothing but Misery | Hex allumé après **8** coups de base au total ; Hindered 5 % 10/12,5/15 s (VP). **PTB** : 4 coups + vault −10 % | Fort · effet VP [p95] |
| **Cri + Hindered** quand une palette est cassée près de soi | Hex: Scared to Death | Hex allumé après 3 survivants différents accrochés ; survivants à ≤ 13 m ; Hindered 11/12/13 % 3 s (VMS) | Signature · effet VMS [p96] |
| Icône **Obsession** qui change de survivant | Friends 'til the End (au hook de l'Obsession, survivant aléatoire, avec cri, SS) ; Furtive Chase (passe au sauveteur de l'Obsession, SS) ; Celestial Witness (au plus éloigné, VMS) ; Nemesis (à celui qui étourdit ou aveugle, SS) ; Game Afoot (au plus chassé, quand il est touché par une attaque de base, VMS) | Identifier **à qui** elle passe et **quand**. Un Oblivious qui accompagne le transfert ajoute Nemesis. Vérifier dans Match Details qu'aucune perk de coéquipier n'explique le changement | Fort · SS / VMS [p91][p92][p93][p96] |
| Obsession présente, et le tueur **évite** visiblement de la frapper | Keep Them Waiting (−5 % de récupération par jeton sur les non-Obsession, max 6/7/8 jetons = 30/35/40 % ; −2 jetons quand l'Obsession est touchée, VMS) ; Cull the Weak (réparation, soin, sabotage −2/2,5/3 % par hook d'un non-Obsession, max 22/27,5/33 % ; l'Obsession +33 % au décrochage et au soin d'autrui, SS) | KTW : récupérations de plus en plus courtes. CtW : gens de plus en plus lents au fil des hooks | Faible · KTW VMS, CtW SS [p91][p95] |

### 2.2 Cris, explosions, progression des gens

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| Au moment d'un **hook** : cri des réparateurs + explosion du gen **le plus avancé** | Scourge Hook: Pain Resonance | Seulement au 1er hook de chaque survivant sur un crochet Fléau, 4 jetons au maximum. Perte 10/15/20 % de la progression **totale** (VMS), puis régression normale ; cri sans Loud Noise Notification (SS) | Signature · effet VMS [p90] |
| Au moment d'un **down** : **cri** en réparant + recul d'un gen **déjà kické**, même loin | Eruption | Survivant mourant par tout moyen → gens kickés (surlignés côté tueur) −10 % (VMS ; CONFLICT-K91-01 résolu : le 5 % n'a existé qu'au PTB 9.2.0) ; réparateurs : cri + aura 8/10/12 s ; recharge 30 s qui efface les surlignages (SS) | Signature (avec cri) · effet VMS [p91] |
| Au moment d'un **down par coup de base** : explosion des gens **proches**, **sans cri** | Surge | Gens à ≤ 32 m **du tueur** : −6/7/8 % puis régression ; le texte LIVE ne mentionne ni cri ni recharge (SS). Surge est le nom d'origine et actuel, « Jolt » n'a existé que de 5.3.0 à 7.3.3 (SS, audit) | Fort · effet SS [p91] |
| On crie au moment où un coéquipier tombe, en étant dans le TR | Infectious Fright | Down par tout moyen ; survivants dans le TR : cri + position 4/5/6 s (SS) ; le tueur laisse souvent le survivant au sol et vient vers soi | Signature · effet SS [p93] |
| Cri involontaire au bruit d'une palette ou d'un mur cassé | THWACK! (sans Hindered) ; Hex: Scared to Death (avec Hindered, §2.1) | THWACK! : 3 jetons + 1 par hook, 1 consommé par casse ; survivants à ≤ 36 m du tueur ; aura 4/5/6 s (VMS) | Signature · effet VMS [p96] |
| **Tous** les survivants crient à chaque gen terminé | Rancor | Cri + Loud Noise Notification 3 s à la position de chacun ; l'Obsession voit l'aura **du tueur** 5/4/3 s. **Aucune lecture d'aura des survivants** (la version du seed est fausse) (SS) | Signature · effet SS [p94] |
| Cri en **regardant** le tueur depuis le TR | Phantom Fear | Cri + aura 2 s ; recharge 80/70/60 s (VMS) | Signature · effet VMS [p95] |
| Cris **périodiques** hors TR pendant qu'un coéquipier reste blessé | Hex: Face the Darkness | Hex allumé quand un survivant est blessé (s'il reste un terne) ; toutes les 35/30/25 s, les autres hors TR crient + aura 2 s ; fin (et totem éteint) quand le maudit redevient sain **ou tombe** (SS) | Signature · effet SS [p93] |
| Explosion d'un gen **sans kick**, dans la minute qui suit un hook, tueur à ≤ 20 m | Turn Back the Clock | 40/50/60 s après un hook ; gen ciblé à ≤ 20 m ; −10 % (VMS) | Fort · effet VMS [p91] |
| **Tous** les gens restants explosent quand le 4e gen est terminé | Hex: Hive Mind | Hex allumé au 1er hook ; −6/8/10 % puis régression ; le totem redevient terne ensuite (VMS) | Signature · effet VMS [p93] |
| Chute d'**environ 20 %** au premier kick qui suit un hook | Pop Goes the Weasel | +15 % de la progression totale, soit 20 % avec les 5 % de base ; fenêtre 35/40/45 s ; usage unique (VMS ; CONFLICT-L3P90-03 résolu) | Fort · effet VMS [p90] |
| Gen **lâché** qui recule **sans kick** (pas d'animation, pas de bruit de dégât) | Hex: Ruin | Tout gen non réparé régresse à 100/125/150 % tant que le totem tient (VMS). Oppression : régression après un kick ailleurs ; Call of Brine / Lay Waste : exigent un kick | Fort · effet VMS [p91] |
| Plusieurs gens se mettent à régresser sans kick + skill check difficile soudain | Oppression | Un kick ailleurs fait régresser jusqu'à 4 autres gens ; leurs réparateurs reçoivent un skill check difficile ; recharge 45/40/35 s (VMS) | Fort · effet VMS [p92] |
| Régression **visiblement rapide** après un kick | Call of Brine (130/140/150 % pendant 90 s, Loud Noise Notification au tueur à chaque skill check **Good**, VMS) ; Overcharge (85 → 130 % en 30 s, SS) ; Lay Waste (+2 % par « Charge » du gen, recharge 55/50/45 s, VMS) | CoB : le tueur revient après un Good, jamais après un Great. Overcharge : skill check immédiat et difficile au contact | Faible · effets VMS / SS [p92] |
| Skill check **immédiat et difficile** au contact d'un gen kické | Overcharge | Prochain survivant qui touche le gen ; perte supplémentaire 2/3/4 % (lien avec l'échec du skill check : U) (SS) | Signature · effet SS [p92] |
| **Rafale** de skill checks à 90 % de progression | Merciless Storm | Raté ou arrêt → gen bloqué 16/18/20 s ; une seule fois par gen (SS) | Signature · effet SS [p94] |
| Son d'avertissement de skill check **de plus en plus tardif, puis absent**, zone de **taille normale**, Hex allumé | Hex: Huntress Lullaby | Délai −14 % par jeton (1 par hook, max 5), son supprimé à 5 jetons ; pénalité de raté +2/4/6 % dès le début, soin inclus. **Aucune réduction de zone** (seed faux) (SS) | Signature · effet SS [p94] |
| Zones de skill check **plus petites uniquement dans le TR** (réparation ou soin) | Unnerving Presence | Chance de skill check +10 %, zone −40/50/60 % (SS) | Fort · effet SS [p94] |
| Soin lent **uniquement dans le TR** + aiguille de skill check de soin plus rapide | Coulrophobia | Soins −20/25/30 % ; aiguille +50 % (VMS, nerf 10.1.0 : était 30/40/50 %) | Signature · effet VMS [p94] |
| Gens et soins qui ralentissent **au fil des hooks**, Obsession jamais chassée | Cull the Weak (ex-Dying Light) | L'Obsession n'est pas affectée et gagne +33 % au décrochage et au soin d'autrui (SS). Renommage 9.4.0 : VMS | Faible · effet SS [p95] |
| Réparation, purification et sabotage lents quand plusieurs survivants sont blessés, au sol ou accrochés | Thanatophobia | 1/1,5/2 % par survivant concerné, max 4/6/8 %, +12 % si les 4 le sont (16/18/20 %). **Pas les soins.** Une icône externe de perk existe ; sa visibilité par le survivant ralenti est U (SS) | Faible · effet SS [p92] |
| L'Obsession répare nettement plus lentement après le 1er gen terminé ; elle voit l'aura d'un totem à ≤ 12 m | Hex: Wretched Fate | Hex allumé après la 1re complétion ; réparation −27/30/33 % pour l'Obsession ; la vitesse revient après la purification (SS) | Signature · effet SS [p96] |
| Le **sauveteur** soigne anormalement lentement après un décrochage | Leverage | Le survivant qui décroche : soin −20/25/30 % pendant 60 s (VMS ; CONFLICT-K96-02 résolu : pas le décroché) | Faible · effet VMS [p96] |
| Progression de sacrifice **accélérée** quand le tueur s'éloigne d'un crochet Fléau | Scourge Hook: Monstrous Shrine | 4 crochets du sous-sol + 4 autres ; tueur à > 24 m du survivant accroché → sacrifice +10/15/20 % (SS). **PTB** : rework en régression des gens | Fort · effet SS [p93] |

### 2.3 Blocages de l'Entité

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| 3 gens **non réparables dès le début**, loin du tueur | Corrupt Intervention | Les 3 gens les plus éloignés du tueur ; levée au 1er survivant mourant ou après 80/100/120 s (SS) | Signature · effet SS [p90] |
| Un gen devient bloqué au moment où un survivant le **lâche**, peu après un hook | Dead Man's Switch | 1er gen qu'un survivant arrête de réparer (instantanément) après un hook ; bloqué 25/30/35 s (VMS) ; pas de réactivation pendant l'effet ; recharge 50 s (VP, CONFLICT-K91-02 résolu). **PTB 10.2.0** : arrêt de plus de 2 s, 30/35/40 s, recharge 30/35/40 s | Signature · effet VMS [p91] |
| Le gen **le plus avancé** se bloque juste après qu'un **autre gen** est terminé | No Holds Barred (ex-Deadlock) | Se répète à chaque gen terminé ; 15/20/25 s (SS). Renommage 9.0.0 : VMS | Signature · effet SS [p91] |
| Au **pickup** d'un coéquipier, plusieurs gens **libres** se bloquent | Thrilling Tremors | Seuls les gens **non réparés** à ce moment ; 16 s ; recharge 40/35/30 s (VMS). « Régression en pause pendant le blocage » : **U** (absent de la page complète) | Signature · effet VMS [p93] |
| **Tous** les gens se bloquent brièvement **quand le tueur quitte le crochet** (≥ 16 m) après chaque **1er** hook d'un survivant | Grim Embrace | Jetons 1 à 3 : 6/8/10 s ; 4e jeton : 40 s + aura de l'Obsession 6 s. Pas au 2e hook du même survivant (SS) | Signature · effet SS [p90] |
| Un gen aléatoire se bloque juste après une purification ou une bénédiction de totem, puis TR disparu | Secret Project | Blocage 20/25/30 s par totem béni ou purifié ; Undetectable 30 s à **chaque** blocage de gen, quelle qu'en soit la source (VMS) | Signature · effet VMS [p93] |
| Gen bloqué + perte de progression au kick, après des skill checks ratés | Undone | LIVE : jetons gagnés sur les skill checks ratés ; au kick, −1 % et 1 s de blocage par jeton ; une recharge existe (SS). Jetons par raté, maximum et recharge : U. **PTB** : rework | Faible · effet SS partiel [p96] |
| Fenêtre bloquée **pour tous** dès le **1er** saut du tueur, avec une icône de minuterie | Bamboozle | 8/12/16 s, une seule fenêtre à la fois, sans effet sur les palettes ; vault du tueur +5/10/15 % (LIVE) ; minuterie depuis 9.5.1 (SS). Le blocage basekit n'arrive qu'au 3e vault **du survivant** (30 s, pour lui seul) | Signature · effet SS [p91][audit] |
| Les fenêtres **que vous avez franchies** en vault moyen ou rapide restent bloquées ; un Hex s'allume **à votre 1er vault** | Hex: Crowd Control | Les 4/5/6 dernières fenêtres, bloquées pour tous les survivants ; le tueur les franchit 15 % plus vite et voit leur aura à 24 m (VMS, rework 9.5.0). Un vault **lent** ne déclenche pas | Signature · effet VMS [p94] |
| **Toutes** les fenêtres bloquées au moment où un gen est terminé | Cruel Limits | 20/25/30 s, tous survivants (SS) | Signature · effet SS [p96] |
| Palettes debout bloquées autour d'un survivant qui vient de perdre un état de santé + Hex allumé | Hex: Blood Favour | Toute perte d'état de santé (coup, pouvoir, mise au sol) ; palettes à 24/28/32 m **de ce survivant** ; 15 s (VMS ; CONFLICT-3P92-03 résolu). **PTB** : attaque de base sur un survivant sain, 32 m, 13/14/15 s | Signature · effet VMS [p92] |
| Fenêtres **et** palettes bloquées partout quand le dernier gen est terminé | None Are Free | 1 jeton par 1er hook de chaque survivant (max 4) ; 12/14/16 s par jeton, max 48/56/64 s (SS). Le tueur peut-il franchir ? U. ≠ No Way Out (interrupteurs), ≠ Blood Warden (sorties) | Signature · effet SS [p95] |
| Les **deux** interrupteurs bloqués dès qu'on touche l'un d'eux | No Way Out | 1 jeton par survivant accroché une fois ; 12 s + 6/9/12 s par jeton, max 36/48/60 s ; Loud Noise Notification au tueur (SS : page complète + audit, aucune note officielle) | Signature · effet SS [p92] |
| Sorties bloquées au moment d'un hook **après** l'ouverture d'une porte | Blood Warden | Une fois par partie, 40/50/60 s ; auras des survivants en zone de sortie révélées dès qu'une porte est ouverte (SS) | Signature · effet SS [p93][audit] |
| 1er coffre ou 1er totem touché aussitôt bloqué | Dominance | Seule la **première** interaction avec chaque coffre et chaque totem ; 8/12/16 s ; le tueur voit l'aura **du prop**, pas la vôtre (VMS). **PTB** : totems seulement, cri + aura du survivant | Signature · effet VMS [p94] |

### 2.4 Totems et Boons

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| Totem Hex allumé **dès le début** | Hex sans déclencheur d'allumage dans leur fiche : Ruin, Devour Hope, Undying, Blood Favour, Huntress Lullaby, The Third Seal, Haunted Ground (2 totems), Thrill of the Hunt, Retribution, Overture of Doom | Identifier l'effet par les autres lignes de la table. **Deux** Hex allumés : suspecter Haunted Ground (2 totems, SS) ou Undying (qui est lui-même un Hex) | Faible pour l'identité · FACT pour « un Hex existe » |
| Hex qui s'allume **en cours de partie** | 1er hook : Fortune's Fool (SS), Hive Mind (VMS), Under Your Thumb (VMS). Survivant blessé : Face the Darkness (SS). 1er vault moyen ou rapide d'un survivant : Crowd Control (VMS). 1er gen terminé : Wretched Fate (SS). Après 4/3/2 stuns ou blinds : Two Can Play (SS). Après 8 coups de base : Nothing but Misery (VP). Après 3 survivants différents accrochés : Scared to Death (VMS). Portes alimentées : NOED (SS) | Le **déclencheur** identifie la perk. Tous exigent un totem terne restant | Fort · voir chaque perk [p91][p93][p94][p95][p96] |
| **Aura d'un totem** visible sans perk | Fortune's Fool (le maudit, à 24/20/16 m, SS) ; Pentimento (totem ravivé, survivants maudits à 16 m, SS) ; Wretched Fate (l'Obsession, à 12 m, SS) ; NOED (tous, de 4 à 24 m en 30 s, SS) | Qui voit l'aura, et depuis quand | Fort · effets SS [p91][p92][p96] |
| Totem **purifié qui se rallume** | Hex: Pentimento | Une fois par totem ; 1 jeton : soin et réparation −20 % ; jetons 2 à 5 : +1/2/3 % chacun, max 24/28/32 % ; à 5 jetons, totems ravivés bloqués pour la partie ; totems ravivés **non bénissables** (SS) | Signature · effet SS [p92] |
| Hex purifié mais **effet toujours actif** | Hex: Undying | Le Hex purifié est transféré sur le totem d'Undying ; aura d'un survivant à 2/3/4 m d'un totem terne (SS). « Jetons conservés » : U ; un Hex **béni** ne serait pas transféré (HYP) | Fort · effet SS [p92] |
| Purification ou bénédiction **très lente** | Hex: Thrill of the Hunt | −8/9/10 % par totem restant (5 au départ), max 40/45/50 %, purification **et** bénédiction (VMS ; CONFLICT-K93-02 résolu : 10/12/14 % = OUTDATED). Aucune notification au tueur dans le texte LIVE. **PTB 10.2.0** : rework | Fort · effet VMS [p93] |
| Boon « éteint » et **impossible à re-bénir** à cet endroit (totem disparu) | Shattered Hope | Totem détruit ; auras dans le rayon 6/7/8 s, sauf si le Boon était Shadow Step (SS). **PTB** : rework | Signature · effet SS [p94] |
| Hex trouvé tôt **sans aucun effet perceptible** | Hex: Haunted Ground (piège, 2 totems) | Écarter d'abord les Hex passifs ou différés (Thrill of the Hunt, Undying, Retribution) avant de conclure | Faible · effet SS [p94] |

### 2.5 Sons, rayon de terreur, auras reçues

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| TR et tache rouge qui **disparaissent en pleine chase longue** | Beast of Prey | Undetectable 30/35/40 s à chaque gain de Bloodlust ; durée **fixe** depuis 8.5.0 : le TR ne revient **pas** à la perte du Bloodlust (SS). Bloodlust : paliers à 15 / 25 / 35 s de chase (FACT, VMS [audit]) | Fort · effet SS [p96] |
| TR coupé net près d'un crochet ou d'un gen, **respiration** audible | Insidious | Undetectable après 3/2/1 s d'immobilité, **tant qu'il reste immobile** ; le TR revient au premier mouvement (VMS). **PTB** : persistance 6/7/8 s | Fort · effet VMS [p94] |
| Plus aucun TR juste après **chaque** hook ; fin de partie entièrement silencieuse | Silent Shadow | Undetectable 11/12/13 s à chaque hook ; permanent dès que les portes sont alimentées (VMS, perk du Slasher 10.0.0) | Fort · effet VMS [p93] |
| Pas de TR après le hook **de l'Obsession**, puis l'Obsession passe au sauveteur | Furtive Chase | Undetectable + 10 % de Haste 14/16/18 s (SS) | Signature (transfert) · effet SS [p93] |
| TR qui disparaît quand un gen atteint 70 % | Tinkerer | Undetectable 12/14/16 s + Loud Noise Notification au tueur ; **une fois par gen** (SS) | Faible · effet SS [p93] |
| TR qui disparaît quand on **termine** un gen que le tueur avait kické | Machine Learning | Undetectable + Haste 8 % pendant 40/50/60 s ; 1 gen compromis à la fois ; désactivée après usage (VMS). Le 10 % du seed ch8 = PTB (et valeur d'avant 9.0.0) | Fort · effet VMS [p93] |
| TR qui **suit l'Obsession blessée** ; le tueur surgit sans TR ailleurs | Dark Devotion | Quand l'Obsession devient blessée (tout moyen), pendant 35/40/45 s : TR transféré sur elle, fixé à 40 m, tueur Undetectable (VMS) | Signature · effet VMS [p95] |
| TR **fixe, centré sur un gen kické** | Unforeseen | Pendant 22/26/30 s après un kick : TR transféré sur le gen, fixé à 32 m, tueur Undetectable ; recharge 30 s (SS) | Fort · effet SS [p95] |
| TR qui semble venir **du gen le plus éloigné du totem**, ~5 s après le début de la réparation, + totem allumé | Hex: Overture of Doom | Après 5 s de réparation, 20/25/30 s de TR transféré (32 m) + Undetectable ; le gen suivant le plus éloigné est maudit ensuite (VMS) | Signature · effet VMS [p96] |
| TR entendu **plus loin** que la normale pour ce tueur | Distressing (+20/25/30 %, SS ; palier 2 : 25 % ou 23 %, CONFLICT-L3-94-03) ; Monitor & Abuse (+5/10/15 % **en chase**, VMS) ; Agitation (+12 m **en portant**, VMS) ; add-ons | Distressing : toujours large, **aucun ralentissement de réparation en LIVE** (celui-ci est PTB). M&A : large en chase, réduit hors chase | Faible · effets SS / VMS [p94][p96][p93] |
| TR qui démarre **plus tard** que prévu hors chase | Monitor & Abuse | −15/20/25 % hors chase (VMS ; rework 9.2.0, l'ancienne incohérence est levée) | Faible · effet VMS [p96] |
| Heartbeat anormalement **large pendant un portage**, crochet lointain atteint très vite | Agitation | Haste +6/12/18 % en portant, TR +12 m ; le TR se rétracte à l'accrochage (VMS). **PTB** : 14/16/18 % | Fort · effet VMS [p93] |
| **Aura rouge du tueur** visible sans perk d'aura **(ni chez vous ni chez un coéquipier : vérifier Match Details)**, à intervalle régulier | Deerstalker | Toutes les 40/35/30 s, le survivant au plus faible temps de chase cumulé voit l'aura du tueur **3 s** (VMS ; 4 s = PTB 10.2.0, CONFLICT-K93-01 résolu). Réciproque : il voit la vôtre ; et chaque fois qu'un survivant lit l'aura du tueur, le tueur voit la sienne pendant la même durée | Signature · effet VMS [p93] |
| L'**Obsession** voit l'aura du tueur à chaque gen terminé | Rancor | 5/4/3 s ; tous les survivants crient au même moment (SS) | Signature · effet SS [p94] |
| **Aura jaune d'un gen** visible sans perk + pas de TR | Trail of Torment | Après un kick : tueur Undetectable, aura du gen visible par tous tant qu'il régresse ; fin quand la régression s'arrête (tout moyen) ; recharge 60/45/30 s (SS) | Signature · effet SS [p93] |
| Coéquipier au sol (barre d'état) dont **on ne voit pas l'aura** à distance | **Pas Knock Out** : son effet d'aura a été **retiré au rework 8.6.0** (OUTDATED, CONFLICT-L3-94-04 [p94]) | Chercher d'abord une **Blindness** sur son HUD (Third Seal, Mindbreaker, Septic Touch, Ultimate Weapon, add-ons) | Aucun lien perk établi [p94] |

### 2.6 Objets, coffres, props

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| L'objet **tombe** au sol à chaque coup de base | Franklin's Demise | Le tueur voit l'aura des objets au sol à 32/48/64 m ; l'objet au sol **ne perd plus de charges** depuis 9.1.0 (VMS ; CONFLICT-K95-02 résolu) | Signature · effet VMS [p95] |
| Objet **vide** qui tombe tout seul ; aura d'un objet au sol en s'en approchant | Weave Attunement | Oblivious 20/25/30 s au ramassage ; le tueur voit les survivants à ≤ 12 m des objets au sol (SS) | Signature · effet SS [p95] |
| **4 coffres ou plus** repérés sur la carte | Hoarder | Base 3 coffres (FACT, SS [audit]) + 2 ; Loud Noise Notification de 4 s quand un survivant à ≤ 32/48/64 m du tueur ouvre un coffre ou ramasse un objet (SS). Exception « Limited Items » : U | Signature · effet SS [p96] |
| Coffres fouillés **refermés** | Human Greed | Le tueur referme les coffres ouverts (recharge 10 s) et voit les coffres non ouverts ; survivants à ≤ 8 m d'un coffre non ouvert ou refermé révélés 3/4/5 s ; un coffre refermé est vide (SS) | Signature · effet SS [p95] |
| Flash ou stun « réussi » **sans animation d'aveuglement** | Lightborn | Immunité aux lampes, pétards, Flash Grenade et Blast Mine ; celui qui tente est révélé 6/8/10 s (SS) | Signature · effet SS [p92] |

### 2.7 Comportement du tueur (liens faibles)

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| Arrive droit sur vous **dès le spawn** | Lethal Pursuer | Auras de tous au début 7/8/9 s ; +2 s sur toute aura de **survivant** révélée au tueur, y compris la sienne (9/10/11 s au début, déduction du libellé) (SS) ; jeton de Distortion consommé (mécanique U) | Faible · effet SS [p90] |
| Arrive droit sur vous **après chaque hook**, alors que vous étiez loin | Barbecue & Chilli (survivants à ≥ 60/50/40 m du crochet, 5 s, SS) ; Scourge Hook: Floods of Rage (au décrochage d'un crochet Fléau : auras des autres 5/6/7 s, SS) | Distortion ; mouvement du tueur vu par Kindred | Faible · effets SS [p91] |
| Après un hook, va droit vers le **gen le plus avancé** | Scourge Hook: Jagged Compass (hook sur crochet Fléau → aura du gen le plus avancé 6/8/10 s ; 4 crochets Fléau au départ + chaque crochet normal dont un survivant est décroché, SS) ; Pop (VMS) | Pop : chute d'environ 20 % au kick | Faible · [p94][p90] |
| Arrive sur les **soins** sans ligne de vue | A Nurse's Calling | Survivants qui soignent ou sont soignés, quel que soit leur état, à ≤ 28/30/32 m (VMS). Un soin à plus de 32 m n'est jamais révélé | Fort · effet VMS [p91] |
| Arrive sur les **duos** de réparation, épargne les solos | Discordance | Gen réparé par ≥ 2 survivants à ≤ 64/96/128 m : surligné + Loud Noise Notification au 1er surlignage ; persiste 4 s après la séparation (SS) | Fort · effet SS [p91] |
| Juste après un kick, se retourne vers des survivants **cachés près du gen** | Nowhere to Hide | Survivants à 24 m **du gen**, révélés 3/4/5 s (VMS ; les 18 m du seed = PTB 10.1.0) | Fort · effet VMS [p90] |
| Revient en moins de ~16 s sur un gen kické **que vous venez de reprendre** | Surveillance | Aura du gen jaune 8/12/16 s côté tueur quand la régression est interrompue ; bruits de réparation audibles 8 m plus loin (SS). Aucun indice HUD | Faible · effet SS [p95] |
| Revient pile sur un gen juste après un skill check **Good** | Call of Brine (gen kické depuis ≤ 90 s, VMS) ; Gearhead (dans les 30 s qui suivent une perte d'état de santé, aura 6/7/8 s, SS) | Les deux ne citent que les Good : les Great ne déclenchent pas (lecture du texte). Gearhead : un coup vient d'être porté ailleurs | Faible · [p92] |
| Vous retrouve 2 à 5 s après que vous l'avez semé | Predator (aura 4 s, recharge 60/50/40 s, SS) ; Zanshin Tactics (après un drop de palette, aura 3/4/5 s, SS) | Jeton de Distortion consommé à la fin de la chase ou au drop | Fort · effets SS [p94] |
| Coupe le bon chemin après un **saut rapide** hors de sa vue | I'm All Ears | Saut rapide à ≤ 48 m → aura 8 s ; recharge 60/45/30 s (SS). **Les casiers ne déclenchent pas** (seed faux) | Faible · effet SS [p92] |
| Cible les survivants qui viennent de **terminer un gen** | Bitter Murmur | Survivants à ≤ 16 m du gen révélés 5 s ; au dernier gen, tous révélés 5/7/10 s (VMS). Rancor se reconnaît au cri collectif (§2.2) | Faible · effet VMS [p96] |
| Arrive au **sous-sol** depuis l'autre bout de la carte peu après votre entrée | Territorial Imperative | Tueur à > 24 m ; aura 4/5/6 s ; recharge 45 s ; le signal sonore n'est pas audible par les survivants (SS) | Faible · effet SS [p94] |
| Arrive après que vous avez fait s'envoler des corbeaux | Spies from the Shadows (≤ 20/28/36 m, Loud Noise Notification, recharge 5 s, VMS) ; Languid Touch (Exhausted, SS) | Languid Touch laisse une icône Exhausted | Faible · [p96][p95] |
| Ouvre des casiers sans raison, puis vise un survivant près d'un casier | Darkness Revealed (≤ 8 m de **n'importe quel** casier, 6/7/8 s, recharge 30 s, SS) ; Ultimate Weapon (cri + Blindness) | UW laisse un cri et une icône | Faible · effet SS [p91] |
| Pendant un **portage**, change de trajectoire vers vous | Awakened Awareness (≤ 16/18/20 m, SS) ; Scourge Hook: Hangman's Trick (≤ 12/14/16 m d'un crochet Fléau, VMS) | — | Faible · [p96] |
| Arrive dès que vous **commencez un sabotage** de crochet | Scourge Hook: Hangman's Trick | Loud Noise Notification à tout crochet dont le sabotage commence (VMS) | Fort · effet VMS [p96] |
| Au début d'une chase, cible ensuite un survivant **blessé** proche sans ligne de vue | Wandering Eye | Auras des autres blessés à ≤ 20 m pendant 5 s ; recharge 40/35/30 s (VMS) | Faible · effet VMS [p96] |
| Fouille une zone vide sans hésiter, ou tourne longtemps autour d'une cachette | Whispers | Le tueur entend des murmures tant qu'un survivant est à ≤ 48/40/32 m (VMS, valeur LIVE reconstruite). **PTB** : 28/26/24 m + Haste | Faible · effet VMS [p94] |
| Trouve à répétition des survivants blessés et cachés | Bloodhound (flaques rouge vif, +2/3/4 s, SS) ; Stridor (grognements +30/40/50 %, respiration +15/20/25 %, additif, SS) | Indiscernables en jeu ; un bon casque suffit aussi | Faible · effets SS [p96] |
| Lâche volontairement l'Obsession en chase | See How They Run (ex-Play With Your Food) | +1 jeton quand le tueur perd l'Obsession en chase (max 3), −1 à chaque attaque pouvant blesser ; Haste 3/4/5 % par jeton (SS). Renommage 9.4.0 : VMS | Faible · effet SS [p95] |

### 2.8 Poursuite : palettes, fenêtres, vitesses

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| Palette cassée « trop vite » (base 2,34 s, FACT VMS [audit]) | Brutal Strength (+10/15/20 %, aussi murs et kicks, SS) ; Fire Up (+4/5/6 % par gen terminé, max 5 jetons = 20/25/30 %, VMS) | Fire Up : l'effet grandit au fil des gens et touche aussi les vaults, pickups, dépôts et kicks. **PTB** : Fire Up 6/7/8 % | Faible · effets SS / VMS [p92][p95] |
| Le tueur se relève très vite après un stun de palette (base 2 s, SS [audit]) | Enduring | −40/45/50 % ; pas d'effet quand il porte (SS). Clause « stuns de perks » : U | Fort · effet SS [p92] |
| La palette **explose** au moment du stun | Spirit Fury | Après 4/3/2 palettes cassées ; durée du stun inchangée ; désactivée après usage (SS) | Signature (hors pouvoir) · effet SS [p93] |
| La palette se brise sous vous en **fast vault**, après un coup | Dissolution | 3 s après des dégâts (toute source), pendant 12/16/20 s, la prochaine palette franchie en vault rapide **dans le TR** est détruite (VP). **PTB** : attaque de base, 13/14/15 s | Signature · effet VP [p94] |
| Le tueur vaulte la fenêtre **presque instantanément** derrière vous | Superior Anatomy (juste après **votre** vault moyen ou rapide à ≤ 12 m : son **prochain** vault +30/35/40 %, un seul, recharge 25 s, VMS ; CONFLICT-L3-94-02 résolu : les « 10 s » du seed = PTB) ; Dark Arrogance (vaults +15/20/25 %, VMS) ; Fire Up (VMS) ; Bamboozle (+5/10/15 %, SS) | Superior Anatomy : une fois, puis vault normal. Bamboozle : la fenêtre est bloquée ensuite | Faible · [p94][p96][p95][p91] |
| Tueur qui accélère après avoir vaulté, peu après une blessure | Unbound | Pendant 24/27/30 s après une blessure (tout moyen), chaque vault de fenêtre : +7 % de Haste 10 s, non cumulable (VMS). **PTB** : 5 % pendant 25 s | Faible · effet VMS [p96] |
| Fente anormalement longue juste après qu'un gen est terminé | Coup de Grâce | +2 jetons par gen, 5 détenus au maximum, 10 gagnés par partie au maximum ; +70/75/80 % de portée par fente (SS ; CONFLICT-3P92-02 résolu) | Fort · effet SS [p92] |
| Fente très longue après que le tueur a sauté d'un étage | All-Shaking Thunder | Pendant 15/20/25 s après une chute : fente +75 % ; recharge 5 s (VMS) | Fort · effet VMS [p95] |
| Récupération très courte après un coup **réussi** | Keep Them Waiting (5 %/jeton, VMS) ; Help Wanted (après la complétion d'un gen « compromis » par un kick : récupération +25 % pendant 40/50/60 s, VMS) | KTW : Obsession présente et évitée. Help Wanted : un gen kické vient d'être terminé | Faible · [p91][p95] |
| Récupération très courte après un coup **raté** | Unrelenting (−20/25/30 %, VMS) ; Mad Grit (en portant seulement, SS) | Mad Grit : aucune pénalité après un raté **en portant** | Faible · [p96][p94] |
| Tueur plus rapide juste après un **blind** | Shadowborn (6/8/10 % pendant 10 s, SS) ; Rampage (blind **ou** stun de palette : +1 % par jeton pendant 13 s, 1 jeton par palette ou mur cassé, max 13, recharge 30/25/20 s, VMS) | Rampage : grandit avec les palettes cassées ; réagit aussi au stun | Fort · effets SS / VMS [p96] |
| Tueur plus rapide près des **gens terminés** | Batteries Included | +5 % de Haste à ≤ 16 m d'un gen terminé, persiste 1/3/5 s (VMS). La désactivation à l'alimentation des portes **n'est pas confirmée** (CONFLICT-K95-03, UNRESOLVED) : la supposer active en endgame | Faible · effet VMS [p95] |
| En chassant l'Obsession, le tueur accélère après une casse ou un kick | Game Afoot | +7 % de Haste 8/9/10 s (VMS). **PTB** : 10 % | Faible · effet VMS [p96] |
| Tueur qui ne perd pas de terrain après un coup | Rapid Brutality | +5 % de Haste 8/9/10 s par coup de base ; plus de Bloodlust (SS) | Faible · effet SS [p92] |
| Le tueur frappe en portant sans ralentir après un raté ; le wiggle se fige quand il touche quelqu'un | Mad Grit | En portant : pas de recharge sur un coup raté ; chaque coup réussi met le débattement en pause 2/3/4 s (SS) | Signature · effet SS [p94] |
| Le wiggle monte lentement, le tueur ne dévie presque pas | Iron Grasp | Temps de débattement +4/8/12 %, déport −75 % (VMS). **PTB** : 10/11/12 % | Fort · effet VMS [p93] |
| Sabotages, flash saves ou pallet saves qui échouent de peu à répétition | Forever Entwined (+4 % par jeton aux vitesses de ramassage, dépôt et accrochage, max 24/28/32 %, SS) ; Fire Up (VMS) | — | Faible · [p95] |

### 2.9 Portes et fin de partie

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| Barre d'ouverture de porte qui **redescend** après relâchement ; lumières de l'interrupteur qui clignotent | Haywire | Interrupteur lâché au-delà de 80 % : régression à 80/90/100 % de la vitesse d'ouverture ; marche aussi à 99 % (VMS) | Signature · effet VMS [p95] |
| Ouverture de porte lente pour tous **sauf l'Obsession** | Remember Me | +6 s par jeton (1 par état de santé perdu par l'Obsession), max +18/24/30 s, soit 38/44/50 s au lieu de 20 s (FACT, SS [audit]) ; l'Obsession ouvre en 20 s (SS) | Fort · effet SS [p93] |
| Voir aussi : Exposed (NOED, Rancor), Broken (Terminus), interrupteurs (No Way Out), sorties (Blood Warden), fenêtres et palettes (None Are Free), silence total (Silent Shadow), révélation au dernier gen (Bitter Murmur) | §2.1, §2.3, §2.5, §2.7 | — | — |

---

## 3. Règles de déduction consolidées, par phase

> Chaque règle suit le format Observation → Hypothèses → Test/confirmation → Comportement robuste → Erreur à éviter. Toutes sont **HEURISTIC**, sauf les éléments marqués FACT. Les règles des 7 fiches (« Matériel pour la PERK DEDUCTION ») ont été fusionnées : une règle regroupe les perks qui partagent un **déclencheur**.

### 3.A Début de partie (du spawn au premier down)

**A1. Gens bloqués au spawn** · [p90] règle 3
- **Observation** : on apparaît près d'un gen impossible à réparer. 3 gens sont bloqués, tous loin du tueur.
- **Hypothèses** : Corrupt Intervention (80/100/120 s, levée au 1er survivant mourant ; SS).
- **Test** : les gens se débloquent-ils au premier survivant mourant ?
- **Comportement robuste** :
  - 1 ou 2 survivants sur les gens libres, **près du tueur** ; accepter la chase.
  - Les autres font totems et coffres, ou se placent près des gens bloqués.
  - **Tenir la première chase** : tant que personne n'est au sol, le blocage court jusqu'au bout.
- **Erreur** : se regrouper à 3 sur le seul gen libre ; traverser la carte pour rien.

**A2. Un totem Hex allumé est repéré tôt** · [p91][p92][p93][p94] ; mise en garde [audit]
- **Observation** : flamme ou grésillement près d'un totem au début.
- **Hypothèses** : Hex « de départ » (§2.4). Si aucun effet n'est perceptible : Haunted Ground (piège, 2 totems, SS), Undying (protection, SS), Thrill of the Hunt (purification lente, VMS) ou Retribution (effet au moment de la purification, VMS).
  - Face the Darkness, Crowd Control et Wretched Fate **ne sont pas** des Hex de départ : ils s'allument sur un déclencheur (blessure, 1er vault, 1er gen) [p93][p94][p96].
- **Test** : quel effet s'arrête après la purification ?
  - Si **l'effet persiste** → Undying (SS) **ou** l'effet venait d'un **autre** Hex / d'une perk non-Hex / du pouvoir (on a purifié le mauvais totem) : chercher un 2e totem allumé avant de conclure.
  - Si **tout le monde devient Exposed** → Haunted Ground (SS).
  - Si **le purificateur devient Oblivious** (et tous sont révélés 20 s) → Retribution (VMS).
- **Comportement robuste** (EXPERT OPINION) : purifier un Hex **quand le tueur est en chase loin** et qu'aucun coéquipier n'est blessé en danger, **pas** « dès qu'il s'allume ». L'audit classe cette consigne absolue parmi les heuristiques dangereuses.
  - Un **Boon** posé sur le totem ne protège pas : la bénédiction déclenche aussi Haunted Ground et Retribution [p93][p94].
  - En SWF : annoncer la position de tous les totems allumés avant de purifier.
- **Erreur** : purifier par réflexe un Hex « sans effet » pendant qu'un coéquipier blessé est poursuivi (Haunted Ground).

**A3. Un gen lâché a reculé tout seul** · [p91] règle 4
- **Observation** : un gen partiel a perdu de la progression pendant votre absence, sans kick. Le tueur était en poursuite ailleurs.
- **Hypothèses** : Hex: Ruin (100/125/150 %, VMS). Écarter Call of Brine et Lay Waste (qui exigent un kick sur **ce** gen) et Oppression (déclenchée par un kick ailleurs, VMS).
- **Explications sans perk à écarter d'abord** (FACT [audit]) : un **kick non vu** (le tueur a pu passer entre deux regards ; un gen kické régresse ensuite à −0,25 charge/s) ; un **skill check raté** d'un coéquipier (−10 %) ; une perte instantanée au hook ou au down (Pain Resonance, Eruption, Surge, §3.B). « Le tueur était en poursuite ailleurs » n'est une preuve que si on l'a suivi (aura, cris) pendant toute l'absence.
- **Test** : trouver un totem allumé. Le recul s'arrête-t-il après la purification ?
- **Comportement robuste** : finir les gens entamés plutôt qu'en ouvrir de nouveaux ; ne pas éparpiller la progression ; purifier **en passant**.
- **Erreur** : tout le monde part chercher le totem ; lâcher un gen à 70 % pour aller « toucher » un autre gen.

**A4. La carte montre des coffres en trop, ou des coffres refermés** · [p96] règle 5, [p95]
- **Observation** : au moins 4 coffres (la base est de 3, FACT [audit]) ; ou des coffres fouillés qui sont refermés.
- **Hypothèses** : Hoarder (SS) ; Human Greed (SS).
- **Test** : le tueur arrive-t-il sur un coffre qu'on vient d'ouvrir ?
- **Comportement robuste** : n'ouvrir un coffre ou ramasser un objet que si le tueur est localisé loin (Hoarder : ≤ 32/48/64 m, SS) ; ne pas s'attarder à ≤ 8 m d'un coffre non ouvert ou refermé (Human Greed, SS) ; un coffre refermé est vide.
- **Erreur** : ouvrir des coffres en début de partie contre ce tueur ; rouvrir un coffre refermé.

**A5. Le 1er coffre ou totem touché se bloque aussitôt** · [p94] règle 5
- **Hypothèse** : Dominance (8/12/16 s, VMS).
- **Comportement robuste** : partir du principe que **votre position est connue** (le tueur voit l'aura du prop) ; quitter la zone ; revenir plus tard, car seule la 1re interaction avec chaque prop déclenche.
- **Erreur** : attendre la fin du blocage devant le coffre.

**A6. Une aura rouge du tueur apparaît sans perk d'aura** · [p93] règle 1
- **Hypothèse** : Deerstalker. Vous êtes le survivant au plus faible temps de chase cumulé ; aura de 3 s toutes les 40/35/30 s (VMS ; 4 s = PTB).
- **À écarter d'abord** : une perk de coéquipier qui montre l'aura du tueur (Babysitter, SS ; Kindred et Salvation's Cry, U : vérifier Match Details, §1.2) et vos propres perks d'aura conditionnelles [audit pass14 D5].
- **Test** : la réapparition suit-elle un intervalle régulier (40/35/30 s) ?
- **Comportement robuste** : il vous a vu aussi. **Bouger** après chaque apparition et se préparer à une chase près d'une tile. Sous Deerstalker, **toute** lecture de l'aura du tueur par un survivant révèle ce survivant pendant la même durée (VMS [p93]).
- **Erreur** : rester caché sur place ; enchaîner les perks d'aura contre ce tueur.

**A7. Le rayon de terreur semble « faux »** · [p94] règle 7, [p96], [p95]
- **Observation** : TR entendu alors que le tueur est vu loin (aura d'un coéquipier en chase, cri) ; ou TR qui démarre trop tard ; ou TR immobile.
- **Hypothèses** : Distressing (+20/25/30 %, SS) ; Monitor & Abuse (+5/10/15 % en chase, −15/20/25 % hors chase, VMS) ; add-ons de TR ; **TR transféré** (Dark Devotion, Unforeseen, Overture of Doom, §2.5).
- **Test** : comparer avec une distance connue (aura d'un coéquipier, Bond, Alert). Un TR qui ne bouge pas et reste centré sur un gen = transfert.
- **Comportement robuste** : **ne pas lâcher un gen au premier battement** ; confirmer direction et distance. Contre Monitor & Abuse : considérer que le premier battement signifie un tueur déjà proche. En LIVE, un gen lent dans le TR ne vient **pas** de Distressing (ce ralentissement est PTB) [p94].
- **Erreur** : abandonner les gens en boucle « parce que le cœur bat ».

**A8. Le tueur arrive toujours sur les duos, ou droit sur vous dès le début** · [p91] règle 10, [p90] règle 4
- **Hypothèses** : Discordance (SS) ; Lethal Pursuer (SS).
- **Comportement robuste** : **1 survivant par gen** (plus efficace en débit total : pas de pénalité coop de 15 %/réparateur ; mais un gen seul prend 90 s au lieu de ~52,9 s à deux, voir §5 n° 2). Contre Discordance, se séparer dès que le tueur arrive : il garde le surlignage 4 s après la séparation (SS). Au début de partie, se placer près d'une structure forte plutôt qu'en zone morte (Lethal Pursuer : 7/8/9 s d'aura au spawn, SS).
- **Erreur** : croire que le tueur « a de la chance » au spawn ; répéter la même position de départ.

**A9. Premières chases : palettes et fenêtres** · [p91] règle 6, [p94] règles 2 et 8, [p92][p93][p95][p96]
- **Observations et hypothèses** :
  - fenêtre bloquée pour tous au **1er** saut du tueur → **Bamboozle** (SS) ;
  - fenêtres franchies qui restent bloquées + Hex allumé à votre 1er vault → **Crowd Control** (VMS) ;
  - le tueur vaulte instantanément derrière vous une fois → **Superior Anatomy** (VMS) ;
  - le tueur se relève vite après un stun → **Enduring** (SS) ;
  - la palette explose au stun → **Spirit Fury** (SS) ;
  - Hindered après un drop suivi d'une course → **Knock Out** (VMS) ;
  - casse rapide → **Brutal Strength** (SS) ou **Fire Up** (VMS).
- **Test** :
  - Bamboozle : le blocage basekit n'arrive qu'au **3e vault du survivant** et ne vise que lui (FACT, SS [audit]).
  - Spirit Fury : la destruction instantanée n'arrive qu'après 4/3/2 palettes cassées.
  - Knock Out : l'icône Hindered apparaît seulement si l'on s'éloigne de plus de 6 m dans les 6 s qui suivent le drop.
- **Comportement robuste** :
  - contre les perks de fenêtre : jouer les **palettes** et les loops sans fenêtre ; un vault **lent** ne déclenche pas Crowd Control ;
  - contre les perks **anti-stun** (Enduring, Spirit Fury) : ne pas miser la chase sur le stun ; drop plus tôt (pour bloquer, pas pour étourdir) et transition vers la tile suivante, sans rejouer la palette après un stun ;
  - **sous Knock Out**, cette transition coûte Hindered 5 % pendant 3/4/5 s (VMS) : garder de la marge avant la tile suivante, ou boucler autour de la palette tombée ;
  - contre les perks de **casse rapide** (Brutal Strength, Fire Up) : le pré-drop est **moins** rentable (la casse lui coûte moins) ; préférer fenêtres, tiles sans palette et enchaînement de tiles, garder les palettes pour les moments où le drop évite un coup ;
  - compter les palettes cassées.
  - Aucun de ces réflexes n'est universel : un tueur qui a compris que vous pré-droppez peut couper court avant la palette (voir `KILLER_COUNTERPLAY_HANDBOOK.md` §2.2).
- **Erreur** : revenir sur la fenêtre que le tueur vient de sauter ; « jouer » la palette tard contre Enduring + Spirit Fury.

**A10. Premier coup reçu : lire le HUD** · [p92] règles 1 et 6, [p94] règle 12, [p95] règles 1 et 4
- **Observations et hypothèses** :
  - Mangled + Haemorrhage → **Sloppy Butcher** (SS) ;
  - Exhausted → **Genetic Limits** (SS) ;
  - Blindness + Hex → **Third Seal** (SS) ;
  - objet au sol → **Franklin's Demise** (VMS) ;
  - palettes bloquées autour + Hex → **Blood Favour** (VMS) ;
  - Hindered + Hex apparu en cours de partie → **Nothing but Misery** (VP) ;
  - les **autres** blessés (et vous) deviennent Oblivious → **Hysteria** (SS) ;
  - cris périodiques des autres + Hex qui s'allume → **Face the Darkness** (SS, vous êtes le maudit).
- **Comportement robuste** :
  - Sloppy : soigner **en une seule fois** ou différer (la progression partielle fuit).
  - Genetic Limits : ne pas planifier de perk d'épuisement juste après un coup.
  - Franklin's : ne pas revenir chercher l'objet quand le tueur est proche ; utiliser l'objet **avant** la chase ; rien ne presse, l'objet au sol ne perd plus de charges.
  - Blood Favour : fuir vers une fenêtre ou hors du rayon (24/28/32 m).
  - Dissolution (VP) : pendant ~20 s après un coup, pas de vault rapide de palette dans le TR.
- **Erreur** : s'interrompre à 80 % d'un soin sous Sloppy ; camper son objet au sol.

**A11. Stun ou flash sur le tueur : lire le HUD et le tueur** · [p92] règles 7-8, [p95] règle 5, [p94], [p96]
- **Observations et hypothèses** :
  - Exposed → **Hubris** (VMS) ;
  - on devient l'Obsession + Oblivious → **Nemesis** (SS) ;
  - pas d'animation d'aveuglement → **Lightborn** (SS) ;
  - écran blanc après le stun → **Two Can Play** (SS) ;
  - tueur plus rapide après un blind → **Shadowborn** (SS) ou **Rampage** (VMS, aussi après un stun de palette).
- **Comportement robuste** :
  - après **tout** stun : distance immédiate vers la ressource suivante ;
  - compter les stuns et flashes de l'équipe. Au-delà de 2, chercher un nouveau totem allumé (Two Can Play s'active après 4/3/2) ;
  - Lightborn : arrêter les tentatives dès le 1er échec (Flash Grenade et Blast Mine inclus) ;
  - Hubris : un 2e stun dans les 20 s de recharge ne redonne pas Exposed (SS) ; ce n'est pas une raison de rester au contact.
- **Erreur** : rester au contact du tueur après un stun ; spammer la lampe en terrain ouvert.

### 3.B Premier crochet (down → pickup → portage → hook → unhook)

**B1. Au moment du down** · [p91] règle 1, [p93] règle 4, [p94] règle 12
- **Observations et hypothèses** :
  - on **crie** en réparant et un gen **déjà kické** recule → **Eruption** (VMS, down par tout moyen, distance quelconque) ;
  - un gen **proche** recule **sans cri**, down par coup de base → **Surge** (SS, gens à ≤ 32 m du tueur) ;
  - on crie en étant dans le TR → **Infectious Fright** (SS) ;
  - Hindered près du down → **Forced Hesitation** (SS, ≤ 16 m).
- **Test** :
  - le **cri** départage Eruption et Surge : le texte LIVE de Surge ne mentionne pas de cri (SS) ;
  - Eruption efface ses surlignages et passe en recharge 30 s après chaque déclenchement (SS).
- **Comportement robuste** :
  - **si Eruption est suspectée** (cri + recul déjà observé une fois), lâcher les gens kickés quand une chase tourne mal ; **sans ce signal**, rester : un gen kické lâché continue de régresser (−0,25 charge/s, FACT VMS [audit]) ; dans tous les cas, éloigner les chases des gens avancés ;
  - ne pas suivre la chase de près : rester hors TR, à plus de 16 m ;
  - FACT : aucune auto-relève basekit en LIVE ; la récupération au sol plafonne à 95 % (VP / VMS [audit]).
- **Aura d'un coéquipier au sol invisible** : ce n'est **plus** Knock Out (effet retiré en 8.6.0, OUTDATED [p94]). Chercher une Blindness sur son HUD.
- **Erreur** : rester sur un gen kické pendant que le porteur de chase est blessé en zone morte ; attribuer un slug « invisible » à Knock Out.

**B2. Au pickup** · [p93] règle 3
- **Observation** : plusieurs gens libres deviennent bloqués au moment du pickup.
- **Hypothèse** : Thrilling Tremors (16 s, recharge 40/35/30 s, VMS). Si le TR disparaît en même temps : **+ Secret Project** (Undetectable 30 s à tout blocage de gen, VMS ; combo attesté par un correctif 9.5.0 [p93]).
- **Comportement robuste** : pendant une chase qui va finir en down, **garder 1 ou 2 survivants en train de réparer** (un gen en cours n'est pas bloqué). En SWF, annoncer « down » pour que chacun touche un gen avant le pickup.
  - Ne pas compter sur une pause de la régression pendant ce blocage : elle n'est pas établie (U).
- **Erreur** : lâcher son gen pour aller « préparer » le décrochage ; croire à un Hex (il n'y a pas de totem).

**B3. Pendant le portage** · [p92] règle 2, [p93], [p94], [p96], [p95]
- **Observations et hypothèses** :
  - Exposed en entrant dans le TR du porteur → **Starstruck** (SS : persiste 26/28/30 s) ;
  - heartbeat très large, tueur rapide → **Agitation** (VMS : Haste 6/12/18 %, TR +12 m) ;
  - le tueur frappe en portant sans ralentir → **Mad Grit** (SS) ;
  - wiggle inefficace → **Iron Grasp** (VMS) ;
  - le tueur dévie vers les survivants cachés → **Awakened Awareness** (SS, ≤ 16/18/20 m) / **Hangman's Trick** (VMS, ≤ 12/14/16 m d'un crochet Fléau) ;
  - ramassages et accrochages de plus en plus rapides → **Forever Entwined** (SS).
- **Comportement robuste** (quand **l'un de ces signaux** a été observé) :
  - **pas de body block ni de flash save au contact** d'un tueur qui porte, sans Endurance ; rester hors du rayon (Starstruck, Agitation) ;
  - préparer les saves **avant** le pickup ;
  - saboter seulement si le crochet est vraiment proche de soi (sous Hangman's Trick, le début du sabotage alerte le tueur).
- **Sans aucun signal** : le flash save, le pallet save et le suivi du porteur (Breakout, `PERK_DATABASE.md` §4.10) restent des options normales, surtout en SWF ; la règle ci-dessus n'est pas un interdit général. Le risque de Starstruck (Exposed en entrant dans le TR du porteur) se lit au **premier** portage : vérifier son HUD avant de s'approcher du second.
- **Erreur** : suivre le porteur pour un save ; rester dans le rayon après l'accrochage (Starstruck garde l'Exposed).

**B4. Au hook, puis quand le tueur quitte le crochet : cri, explosion, blocage global** · [p90] règles 1, 2 et 7, [p91], [p93], [p94]
- **Observations et hypothèses** :
  - cri des réparateurs + explosion du gen **le plus avancé** → **Pain Resonance** (lien Signature, HEURISTIC ; effet VMS) ;
  - tous les gens bloqués brièvement **quand le tueur s'éloigne à ≥ 16 m** → **Grim Embrace** (SS) ;
  - gen qui explose sans kick, tueur proche, dans les 40/50/60 s → **Turn Back the Clock** (VMS) ;
  - sacrifice plus rapide quand le tueur s'éloigne d'un crochet Fléau → **Monstrous Shrine** (SS).
- **Test** :
  - Pain Res : seulement au 1er hook de chaque survivant sur un crochet Fléau (4 jetons au maximum, FACT SS) ;
  - Grim Embrace : pas de blocage au 2e hook du même survivant ; un tueur qui reste à moins de 16 m retarde le blocage (SS).
- **Comportement robuste** :
  - **éviter** de garder un seul gen très avancé au moment d'un 1er hook : le finir avant ou répartir la progression (répartir coûte du tempo si Pain Res n'est pas là : à pondérer par ce qu'on a déjà observé) ;
  - après le cri, réparer au moins 5 % pour stopper la régression (FACT, VMS), ou partir si le tueur arrive ;
  - Grim Embrace : le départ du tueur (≥ 16 m) est aussi le moment du sauvetage ; au 4e jeton, l'Obsession bouge (aura 6 s) ;
  - **compter les jetons** (quels survivants ont déjà été accrochés).
- **Erreur** : garder un gen à 90 % « pour plus tard » ; arrêter après le cri puis revenir plus tard.

**B5. Au hook : un statut ou un Hex apparaît chez vous** · [p91] règle 7, [p92] règle 3, [p94] règle 12, [p93], [p95] règle 11
- **Observations et hypothèses** :
  - vous êtes l'Obsession et devenez Exposed → **Friends 'til the End** (SS, 20 s) ;
  - blessé et Exhausted + Haemorrhage → **Blood Echo** (SS, 20/25/30 s, à **chaque** hook) ;
  - blessé, le plus loin, Oblivious → **Alien Instinct** (SS) ;
  - Oblivious + Hex après **votre** 1er hook → **Fortune's Fool** (SS) ;
  - Hex allumé au 1er hook → **Hive Mind** (VMS) ou **Under Your Thumb** (VMS : Haste en course plafonnée à 25/20/15 %).
- **Comportement robuste** :
  - FTTE : l'Obsession se cache loin du crochet environ 20 s et ne fait pas le sauvetage ;
  - Blood Echo : ne pas compter sur sa perk d'épuisement juste après un hook adverse ; se soigner avant le hook suivant ;
  - Fortune's Fool : le maudit purifie vite (seul à pouvoir le faire pendant 90 s, SS) ;
  - Hive Mind : purifier **avant** le 4e gen ;
  - Under Your Thumb : ne pas bâtir sa fuite sur un boost de Haste ; l'activer hors des 32 m du tueur évite l'alerte (VMS).
- **Erreur** : l'Obsession reste sur un gen proche du crochet ; ignorer un totem allumé au 1er hook.

**B6. Juste après le hook : les gens** · [p91] règle 2, [p90] règles 2 et 5
- **Observations et hypothèses** :
  - un gen se bloque au moment où quelqu'un le **lâche** → **Dead Man's Switch** (VMS ; recharge 50 s, VP) ;
  - le tueur file droit vers un gen avancé et le kick fait perdre environ 20 % → **Pop Goes the Weasel** (VMS).
- **Comportement robuste** :
  - DMS : le 1er lâcher après un hook se fait sur un **gen peu avancé** (lâcher « sacrificiel » : en LIVE, le 1er gen lâché consomme l'effet, [p91]).
    - Au **PTB 10.2.0**, le déclenchement exigerait plus de 2 s d'arrêt, ce qui rendrait ce geste plus coûteux (PTB).
  - Pop : pendant 35/40/45 s après un hook (VMS ; compter 45 s par prudence), terminer les gens proches ou revenir réparer 5 % aussitôt après le kick. Un gen au plafond de 8 events ou bloqué est immunisé (FACT [p90]).
  - En SWF, annoncer « DMS ».
- **Erreur** : lâcher un gen à 90 % pour aller décrocher juste après un hook.

**B7. Juste après le hook : le tueur « disparaît »** · [p93] règle 9, [p94] règle 3
- **Observations et hypothèses** :
  - plus de TR juste après le hook → **Silent Shadow** (VMS, 11/12/13 s) ;
  - TR coupé net près du crochet + respiration audible → **Insidious** (VMS : tant qu'il reste immobile) ;
  - après le hook de l'Obsession → **Furtive Chase** (SS, 14/16/18 s).
- **Faits utiles pour le décrochage** (FACT [audit]) :
  - l'anti-camp ne se remplit **qu'à moins de 16 m** du crochet (VMS) ; au-delà, rien, donc un proxy camp à 17-20 m **ne déclenche pas** l'anti-camp (l'erreur inverse du seed A-283 a été prouvée) ;
  - pendant un portage, l'anti-camp est en pause ; il est désactivé dès que les portes sont alimentées (SS) ;
  - multiplicateur temporel ×1 / ×2 / ×4 ; pause de 7 s à chaque nouvel accrochage (VP) ;
  - jauge pleine = tentative d'auto-décrochage garantie (SS).
- **Comportement robuste** :
  - « **pas de cœur ≠ tueur parti** » : inspecter les angles morts (murs proches, casiers) ;
  - Insidious : le TR revient dès que le tueur bouge (VMS) ; un TR qui revient d'un coup près du crochet = il était là ;
  - venir à deux (un appât, un sauveteur) quand l'équipe peut se coordonner (SWF) ; en SoloQ, deux survivants qui viennent sans se parler au même crochet coûtent souvent un gen : un seul s'approche, l'autre continue si quelqu'un est déjà en route (aura via Kindred / Bond, U) ;
  - écouter la respiration.
- **Erreur** : décrocher instantanément « parce qu'il n'y a pas de cœur ».

**B8. Au décrochage** · [p95] règle 2, [p91] règle 9, [p96], [p92], [p93]
- **Observations et hypothèses** :
  - cri + Exposed du sauveteur, tueur loin (> 32 m) → **Make Your Choice** (SS) ;
  - Haemorrhage **seule** sur le décroché → **Weeping Wounds** (SS) ;
  - le tueur revient droit sur un tiers → **Floods of Rage** (SS) ;
  - l'Obsession passe au sauveteur → **Furtive Chase** (SS) ;
  - le **sauveteur** soigne lentement ensuite → **Leverage** (VMS) ;
  - Exposed généralisé qui apparaît après plusieurs décrochages lointains → **Devour Hope** (jetons gagnés à ≥ 24 m du tueur, SS).
- **Protections de décrochage** (FACT, VP [audit], 10.1.0) :
  - Endurance + 10 % de Haste pendant 10 s, + Elusive 10 s ;
  - l'Endurance est perdue sur une action « voyante » (réparer, soigner…) (SS) ;
  - Elusive prend fin si le survivant est frappé ou passe à terre.
- **Comportement robuste** :
  - MYC : décrocher quand le tueur est **proche mais engagé** en chase avec quelqu'un d'autre, ou pendant la recharge (40/50/60 s, SS). Le sauveteur Exposed se met à l'abri ; c'est le décroché (protégé) qui prend l'aggro.
  - Weeping Wounds : ne pas soigner la victime tout de suite si le tueur approche ; la pénalité ne tombe qu'**après** le 1er soin complet (SS).
  - Leverage : le décroché ou un tiers soigne, pas le sauveteur.
  - Floods : les tiers bougent derrière des obstacles.
- **Erreur** : décrocher quand le tueur est clairement loin et revient ; body block en étant Exposed ; rester immobile près du crochet.

### 3.C Milieu de partie

**C1. Après un kick** · [p90] règle 6, [p95] règles 6-7, [p93] règles 2 et 5, [p92], [p96]
- **Observations et hypothèses** :
  - le tueur se retourne vers des survivants cachés près du gen → **Nowhere to Hide** (24 m, VMS) ;
  - il revient en moins de ~16 s quand on reprend le gen → **Surveillance** (SS) ;
  - cri + Exposed en touchant le gen → **Dragon's Grip** (VMS, fenêtre de 30 s) ;
  - aura jaune du gen visible + pas de TR → **Trail of Torment** (SS) ;
  - TR fixe sur le gen → **Unforeseen** (SS) ;
  - skill check immédiat et difficile → **Overcharge** (SS) ;
  - régression rapide → **Call of Brine** (VMS), Overcharge (SS), Lay Waste (VMS) ;
  - d'autres gens régressent ailleurs → **Oppression** (VMS).
- **Comportement robuste** (commun, **quand le tueur est encore près du gen** ou qu'un de ces signaux a déjà été vu) :
  - quitter la zone **à plus de 24 m**, puis revenir réparer 5 % (coût : la régression continue pendant l'absence ; si le tueur est déjà reparti loin et qu'aucun signal n'a été vu, reprendre le gen tout de suite est souvent meilleur) ;
  - ne pas reprendre **seul** un gen tout juste kické quand le tueur est proche ; préférer d'autres gens ou attendre 30 s (Dragon's Grip, VMS) ;
  - Call of Brine : sur un gen kické depuis moins de 90 s, viser des Great (seuls les Good alertent, VMS) ;
  - ToT : tant que l'aura jaune est visible, supposer le tueur furtif et proche. Réparer le gen arrête la régression, donc l'effet (SS).
  - Le TR d'un gen kické n'est **pas une information** (Unforeseen, SS).
- **Erreur** : rester accroupi à 10 m du gen ; sauter sur le gen kické « pour stopper la régression » alors que le tueur est à 30 m.

**C2. À la complétion d'un gen** · [p91] règle 3, [p96] règles 3-4, [p92], [p93], [p94] règle 10, [p95] règle 10
- **Observations et hypothèses** :
  - le gen **le plus avancé** se bloque → **No Holds Barred** (SS) ;
  - **toutes** les fenêtres se bloquent → **Cruel Limits** (SS) ;
  - **tous** les survivants crient → **Rancor** (SS) ;
  - fente anormalement longue ensuite → **Coup de Grâce** (SS) ;
  - le tueur file sur ceux qui ont fini le gen → **Bitter Murmur** (VMS) ;
  - TR disparu + tueur rapide après un gen **kické** terminé → **Machine Learning** (VMS) ; récupérations plus courtes ensuite → **Help Wanted** (VMS) ;
  - tueur rapide près des gens terminés → **Batteries Included** (VMS) ;
  - un Hex s'allume et l'Obsession répare lentement → **Wretched Fate** (SS).
- **Comportement robuste** :
  - **se disperser immédiatement** après une complétion (Bitter Murmur : hors des 16 m ; Rancor : la position de chacun est notifiée 3 s) ;
  - synchroniser les pops et ne pas laisser un seul gen très avancé ;
  - prévenir le coéquipier en chase avant de finir un gen (Cruel Limits : jouer les palettes pendant 20-30 s) ;
  - augmenter la marge de distance et éviter les lignes droites (Coup de Grâce) ;
  - éloigner les chases à plus de 16 m des gens terminés (Batteries Included). Sa désactivation en endgame **n'est pas confirmée** (CONFLICT-K95-03) : la supposer active.
- **Erreur** : rester à 3 sur le gen qui vient de pop ; compter sur une fenêtre juste après un pop.

**C3. Pendant un soin** · [p91] règle 10, [p96] règles 2 et 9, [p94], [p92], [p93]
- **Observations et hypothèses** :
  - le tueur arrive sur les soins sans ligne de vue → **A Nurse's Calling** (≤ 28/30/32 m, VMS) ;
  - soin lent dans le TR → **Coulrophobia** (VMS) ;
  - Blindness + Exhausted en soignant dans le TR → **Septic Touch** (VMS) ;
  - skill checks rétrécis dans le TR → **Unnerving Presence** (SS) ; son d'avertissement tardif → **Huntress Lullaby** (SS) ;
  - cri du soigneur, puis Oblivious loin du soigné → **Deathbound** (SS) ;
  - rafale de skill checks en fin d'auto-soin puis Broken → **No Quarter** (SS) ;
  - cris périodiques tant qu'un blessé reste blessé → **Face the Darkness** (SS) ;
  - réparations lentes quand beaucoup de survivants sont blessés → **Thanatophobia** (SS ; ne touche **pas** les soins).
- **Comportement robuste** (commun) :
  - **soigner hors TR et loin du tueur** (au-delà de 32 m contre ANC) ;
  - puis se séparer dans deux directions ;
  - se faire soigner par un coéquipier plutôt qu'en auto-soin sous No Quarter ; si auto-soin, ne pas l'interrompre après 75 % (l'arrêt donne aussi Broken) ;
  - Deathbound : bouger tout de suite après le cri ; le soigneur joue sans heartbeat jusqu'à sa prochaine blessure ;
  - contre Face the Darkness et Thanatophobia : **soigner les blessés en priorité** (sous Face the Darkness, le soin du maudit coupe l'effet, SS), **sauf** contre un tueur qui re-blesse presque gratuitement (Legion, Plague en Corrupt Purge, tueurs à coup unique) : là, un soin complet n'est pas toujours rentable et jouer blessé peut être le bon choix (voir `KILLER_COUNTERPLAY_HANDBOOK.md`, fiches Legion et Plague ; arbitrage HEURISTIC).
- **Erreur** : soigner au pied du crochet ou d'un gen patrouillé ; commencer un soin dans le TR puis compter sur Lithe ou Sprint Burst.

**C4. Dynamiques d'Obsession** · [p95] règle 3, [p91], [p92], [p96] règles 10-11, [p94]
- **Observations et hypothèses** :
  - le TR suit l'Obsession blessée → **Dark Devotion** (VMS) ;
  - le tueur évite l'Obsession → **Keep Them Waiting** (VMS) / **Cull the Weak** (SS) ;
  - l'Obsession change au fil de la partie → **Celestial Witness** (VMS) / **Game Afoot** (VMS) / **Friends 'til the End** (SS) / **Furtive Chase** (SS) ; chaque changement accompagné d'Oblivious → **+ Nemesis** (SS) ;
  - le tueur lâche l'Obsession en chase → **See How They Run** (SS) ;
  - l'Obsession répare lentement + Hex → **Wretched Fate** (SS) ;
  - l'Obsession voit l'aura du tueur à chaque gen → **Rancor** (SS).
- **Comportement robuste** :
  - Dark Devotion : l'Obsession blessée **ne rejoint pas** les autres pendant environ 45 s ; les autres ne se fient pas au TR.
  - KTW : l'Obsession prend les coups protecteurs pour vider les jetons (−2 par dégât sur l'Obsession, VMS).
  - CtW : l'Obsession devient sauveteuse et soigneuse désignée (+33 %, SS) ; ne pas la sacrifier « pour couper la perk ».
  - Celestial Witness : si l'Obsession reste à 40 m ou plus du tueur, il voit son aura toutes les 30 s (2/2,5/3 s) ; sinon, l'Obsession passe au survivant le plus éloigné (VMS). L'Obsession bouge après chaque tranche de 30 s.
  - Wretched Fate : l'Obsession fait les totems plutôt que les gens ; elle voit l'aura du totem à 12 m.
  - Rancor : l'Obsession se tient loin du tueur en endgame (Exposed jusqu'à la fin) et sort en priorité.
- **Erreur** : lâcher un gen parce que le TR arrive (c'est l'Obsession) ; laisser l'Obsession cachée toute la partie.

**C5. Le tueur « disparaît » en chase ou revient trop vite** · [p96] règle 4, [p94] règle 4, [p93] règle 10
- **Observations et hypothèses** :
  - TR et tache rouge coupés en chase longue → **Beast of Prey** (SS) ;
  - retour 2 à 5 s après l'avoir semé → **Predator** (SS) ou **Zanshin Tactics** (SS, après un drop) ;
  - TR qui disparaît quand un gen atteint 70 % → **Tinkerer** (SS, une fois par gen).
- **Comportement robuste** :
  - **garder la caméra sur le tueur** ; sous Beast of Prey, le TR revient 30-40 s plus tard **même si** la chase est finie (durée fixe) ;
  - après l'avoir semé, continuer à bouger environ 4 s puis **changer d'axe** ;
  - près de 70 %, un survivant surveille pendant que l'autre répare.
- **Erreur** : croire que la chase est finie parce que la musique s'arrête ; se cacher accroupi au coin du mur où il vous a perdu.

**C6. Totems en milieu de partie** · [p92] règles 9-10, [p93] règles 6 et 11, [p94] règles 6 et 9, [p95] règle 5, [p96] règle 11
- **Observations et hypothèses** :
  - totem purifié qui se rallume → **Pentimento** (SS) ;
  - Hex purifié dont l'effet continue → **Undying** (SS) ;
  - Oblivious après avoir purifié ou béni un totem → **Retribution** (VMS) ;
  - gen bloqué après une purification ou une bénédiction → **Secret Project** (VMS) ;
  - Exposed pour tous après une purification ou une bénédiction → **Haunted Ground** (SS) ;
  - Boon détruit → **Shattered Hope** (SS) ;
  - purification lente → **Thrill of the Hunt** (VMS) ;
  - Hex allumé en cours de partie : voir le déclencheur au §2.4 (Two Can Play, Nothing but Misery, Scared to Death, Crowd Control, Face the Darkness, Wretched Fate, Fortune's Fool, Hive Mind, Under Your Thumb).
- **Comportement robuste** : voir l'arbitrage des totems au §5 n° 9.
  - Pentimento, Retribution, Secret Project : **réduire** les purifications de ternes et re-purifier les totems rallumés. Contre Retribution, retirer **n'importe quel** Hex révèle tous les survivants 20 s : le faire quand l'équipe est à l'abri.
  - Undying : purifier tous les totems allumés.
  - Shattered Hope : sortir du rayon du Boon quand le tueur approche.
  - Thrill : purifier d'abord des ternes, chaque terne retiré réduit le malus (VMS).
- **Erreur** : « totem clean » systématique contre Pentimento ; célébrer la purification de Ruin sans vérifier que l'effet a cessé.

**C7. Objets** · [p96] règle 1, [p95] règle 4, [p92]
- **Observations et hypothèses** :
  - Exhausted en commençant à utiliser un objet → **Overwhelming Presence** (≤ 32 m, VMS) ;
  - objet qui tombe au coup de base → **Franklin's Demise** (VMS) ;
  - objet vide qui tombe seul, aura d'un objet au sol, ou Oblivious au ramassage → **Weave Attunement** (SS) ;
  - flash sans effet → **Lightborn** (SS).
- **Comportement robuste** :
  - n'utiliser aucun objet quand le tueur peut être à ≤ 32 m ;
  - les objets au sol sont des **pièges à aura** : ne pas les ramasser si le tueur est proche ; si vous voyez l'aura d'un objet au sol, vous êtes à ≤ 12 m et le tueur vous voit (Weave, SS).
- **Erreur** : sortir le medkit dans le TR et compter sur Sprint Burst.

**C8. Le 3-gen et les pointes** · [p90] règle 8, [p93]
- **Observation** : des pointes autour d'un gen.
- **FACT** (VMS) : au moins 4 events consommés ; au 8e, le tueur ne peut plus interagir avec le gen ; seuls les skill checks ratés le font encore régresser [p90][audit].
- **Hypothèses** : build de ralentissement (voir §4.1). Hive Mind si « 1 gen restant » est proche (VMS).
- **Comportement robuste** : un gen avancé à pointes a une **valeur défensive** (peu de kicks restants). « Le 3-gen infini n'existe plus » : conséquence du plafond de 8 events (HEURISTIC [p90]).
- **Erreur** : abandonner un gen au plafond, qui ne peut plus être kické.

### 3.D Endgame (portes alimentées → sortie / EGC)

**D1. Au moment où les portes s'alimentent : lire le HUD de tous** · [p91] règle 5, [p92] règle 4, [p95] règle 9, [p94], [p93]
- **Observations et hypothèses** :
  - **Exposed** pour tous → **NOED** (SS) ;
  - **Broken** chez les blessés, au sol et accrochés → **Terminus** (VMS, 35/40/45 s après l'ouverture) ;
  - fenêtres et palettes bloquées → **None Are Free** (SS, jusqu'à 48/56/64 s) ;
  - Obsession Exposed → **Rancor** (SS) ;
  - plus aucun TR → **Silent Shadow** (VMS, Undetectable permanent).
- **Faits de contexte** :
  - les protections de décrochage **restent** (Endurance + Haste 10 s), seule **Elusive** disparaît (FACT, VP [audit], 10.1.0) ;
  - l'anti-camp est désactivé (FACT, SS [audit]) ;
  - Batteries Included : désactivation **non confirmée** (U, CONFLICT-K95-03 [p95]).
- **Comportement robuste** (à appliquer **quand NOED / Terminus / None Are Free sont plausibles**, par exemple aucun Hex ni perk d'endgame encore exclu) :
  - **se soigner avant la dernière gen** quand c'est possible (exception : un survivant qui porte Adrenaline, `PERK_DATABASE.md` §4.8, perd son soin s'il est déjà sain ; et sous Terminus, Adrenaline ne soigne pas, VMS [p92]) ;
  - finir le dernier gen en groupe, **sain**, sans chase, près des portes. Ce n'est pas toujours faisable ni optimal : contre un tueur qui tient un 3-gen ou si une chase lointaine occupe le tueur, finir le gen **pendant** cette chase peut rapporter plus que d'attendre (arbitrage HEURISTIC, non mesuré) ;
  - jouer « un coup = à terre » si l'on est blessé ;
  - NOED : à 2, trouver le totem (son aura s'élargit de 4 à 24 m en 30 s, SS) pendant que le 3e ouvre ;
  - Terminus : ouvrir une porte vite pour lancer le compte à rebours de 35/40/45 s.
- **Erreur** : sauvetage « héroïque » en étant Exposed ; compter sur Adrenaline pour se soigner sous Terminus ; finir le dernier gen en chase en comptant sur une palette.

**D2. À l'interrupteur** · [p92] règle 5, [p93], [p95] règle 8
- **Observations et hypothèses** :
  - les **deux** interrupteurs se bloquent au premier contact → **No Way Out** (SS : 12 s + 6/9/12 s par jeton, max 36/48/60 s ; le tueur reçoit une Loud Noise Notification) ;
  - ouverture lente pour tous sauf l'Obsession → **Remember Me** (SS : jusqu'à 38/44/50 s) ;
  - la barre redescend après relâchement, lumières qui clignotent → **Haywire** (VMS).
- **Faits** : ouverture de porte 20 s, progression conservée (FACT, SS [audit]).
- **Comportement robuste** :
  - NWO : **toucher l'interrupteur puis s'éloigner**, revenir quand le blocage prend fin, ne pas y mener le tueur ; tester l'interrupteur tôt ;
  - Remember Me : faire ouvrir par l'Obsession si elle est libre ;
  - Haywire : ne pas lâcher une porte au-delà de 80 %.
- **Erreur** : venir ouvrir en étant poursuivi ; « 99 % de porte » contre Haywire.

**D3. Porte ouverte, un coéquipier porté ou au sol** · [p93] règle 8
- **Hypothèse** : Blood Warden (une fois par partie, 40/50/60 s, SS).
- **Faits** : EGC de 120 s après l'ouverture d'une porte ; il avance à moitié vitesse si un survivant est au sol ou accroché, et n'est jamais arrêté (FACT, SS [audit]).
- **Comportement robuste** : **sortir avant l'accrochage** ou empêcher le hook (sabotage, pallet save, flash save). Ne jamais attendre dans la zone de sortie : les auras y sont révélées dès qu'une porte est ouverte (SS).
- **Erreur** : attendre en sortie pendant que le tueur accroche ; décrocher sous le blocage sans Endurance.

**D4. Endgame silencieux, ou tout le monde révélé** · [p93], [p96]
- **Hypothèses** :
  - aucun TR pendant tout l'endgame → **Silent Shadow** (VMS) ;
  - le tueur sait où tout le monde se trouve à la complétion du dernier gen → **Bitter Murmur** (VMS : tous révélés 5/7/10 s).
- **Comportement robuste** :
  - supposer le tueur proche à tout moment ; ouvrir les portes à deux (un guetteur) ;
  - au dernier gen, ne pas courir droit vers la porte la plus proche du tueur.
- **Erreur** : décrocher « parce qu'il n'y a pas de cœur ».

---

## 4. Combos fréquents et comment les casser

> Seuls les combos **mentionnés dans les fiches** figurent ici. La fréquence n'est pas mesurée (NightLight inaccessible, [p90]) : « fréquent » = cité par le seed ou la communauté (CO), pas une donnée.

### 4.1 Slowdown (générateurs)

| Combo | Signature combinée | Comment le casser | Nature / source |
|---|---|---|---|
| **Pain Resonance + Dead Man's Switch** | Au 1er hook, cri + explosion, puis le gen **lâché à cause du cri** se bloque (25/30/35 s ; recharge 50 s) | Après le cri : **reprendre tout de suite** ou changer de gen, sans stop-and-go ; le 1er lâcher se fait sur un gen peu avancé | Combo : CO (titres de forum et guide Steam, [p90] [5]). **PTB 10.2.0** : la note de dev de DMS vise explicitement les combos avec interruptions forcées (déclenchement après plus de 2 s d'arrêt, VMS pour le PTB [p91]) |
| **Pain Resonance + Grim Embrace** (Artist) | Explosion au hook, puis blocage global quand le tueur s'éloigne à ≥ 16 m, à chaque nouveau survivant accroché | Pas de gen très avancé isolé au 1er hook ; utiliser les blocages courts pour se déplacer ou sauver ; tenir les chases pour ne pas donner 4 premiers hooks rapides. Un gen bloqué ne subit pas de perte instantanée (FACT [p90]) | HEURISTIC [p90] ; effets VMS / SS |
| **Thrilling Tremors + Secret Project** | Au pickup, gens libres bloqués **et** TR qui disparaît 30 s | Garder 1-2 réparateurs actifs ; pendant 30 s, supposer le tueur furtif | Combo attesté par un correctif 9.5.0 (VMS [p93]) |
| **Kicks + régression** (Pop, Eruption, Call of Brine) **+ Surveillance** | Le tueur kicke beaucoup puis revient pile quand on reprend un gen kické | Reprendre un gen kické **puis bouger** (leurre) ; en SWF, un seul survivant reprend, les autres ailleurs ; préférer finir des gens non kickés | HEURISTIC [p95] |
| **Hex: Ruin + Hex: Undying** | Ruin purifiée, mais les gens reculent toujours | Purifier **tous** les totems allumés ; plus tard, purifier Undying en premier | HEURISTIC [p92] ; effets VMS / SS |
| **Empilement de régressions** (Ruin + Call of Brine + Overcharge + Lay Waste) | Gens qui fondent de plusieurs façons | Les Diminishing Returns 9.6.0 (100/50/25/12,5/5 %, add-ons exclus, VP) réduisent **peut-être** cet empilement. Contre-mesure robuste : réparer 5 % stoppe toute régression (FACT, VMS) ; finir les gens | Rendement de l'empilement : **HYP** (les notes 9.6.0 ne listent pas les catégories ; le manuel du jeu 9.6.1 les listerait mais **n'a pas été consulté** [p90][audit]) |
| **Corrupt Intervention** en ouverture de build | 3 gens bloqués au spawn | Tenir la 1re chase (le 1er down lève le blocage) ; 1-2 survivants sur les gens proches du tueur | HEURISTIC [p90] |

### 4.2 Information / aura

| Combo | Signature combinée | Comment le casser | Nature / source |
|---|---|---|---|
| **Lethal Pursuer + auras** (BBQ, Nurse's Calling…) | Auras qui durent 2 s de plus ; ruée au spawn | Distortion ; bouger juste après chaque fenêtre d'aura ; se placer près d'une structure forte au spawn | HEURISTIC [p90] ; extension +2 s SS |
| **Franklin's Demise + Weave Attunement** | Objets au sol partout, aura d'objet visible en s'approchant, Oblivious au ramassage | **Ignorer** les objets au sol ; utiliser les objets avant la chase | HEURISTIC [p95] ; effets VMS / SS |
| **Hoarder / Dominance / Human Greed** (props) | Coffres en trop, bloqués ou refermés | Ne toucher un prop qu'avec le tueur localisé loin ; partir après la 1re interaction | HEURISTIC [p94][p95][p96] |

### 4.3 Poursuite

| Combo | Signature combinée | Comment le casser | Nature / source |
|---|---|---|---|
| **Enduring + Spirit Fury** (± Brutal Strength) | Stun très court, puis palette qui explose au stun | Compter les palettes cassées ; ne plus miser sur le stun : drop plus tôt pour bloquer, puis transition immédiate ; garder les palettes fortes pour plus tard. Si Brutal Strength s'ajoute, chaque palette lâchée coûte encore moins au tueur : privilégier fenêtres et enchaînement de tiles | HEURISTIC [p92][p93] ; effets SS |
| **Keep Them Waiting** (Obsession) | Récupérations de plus en plus courtes sur les non-Obsession | L'Obsession fait les protection hits ; ne pas compter sur la distance gagnée après un coup | HEURISTIC [p91] ; effet VMS |
| **Perks de vault** (Bamboozle, Crowd Control, Cruel Limits, Superior Anatomy, Dark Arrogance) | Fenêtres bloquées ou vaults du tueur accélérés | Jouer les **palettes** et les loops sans fenêtre ; anticiper la tile suivante | HEURISTIC [p91][p94][p96] |

### 4.4 Endgame

| Combo | Signature combinée | Comment le casser | Nature / source |
|---|---|---|---|
| **Terminus + NOED / No Way Out** | Broken + Exposed à l'alimentation ; interrupteurs bloqués | **Se soigner avant la dernière gen** ; purifier les ternes en passant pendant la partie (contre NOED, sous réserve du §5) ; toucher l'interrupteur puis s'éloigner ; trouver le totem NOED à deux | HEURISTIC [p92] (« forte seulement en synergie NOED / No Way Out ») |
| **No Way Out vs Blood Warden** | NWO bloque les **interrupteurs** au 1er contact ; BW bloque les **sorties** au hook après l'ouverture | NWO : garder un survivant jamais accroché limite les jetons. BW : sortir avant le hook | HEURISTIC [p92][p93] |
| **None Are Free** (+ tueur de chase) | Fenêtres et palettes bloquées au moment où le dernier gen est terminé | Dernier gen fini en groupe, sain, près des portes ; compter jusqu'à 48-64 s sans palette ni fenêtre si 4 survivants ont été accrochés | HEURISTIC [p95] ; effet SS |

### 4.5 Hex (protection et pièges)

| Combo | Signature combinée | Comment le casser | Nature / source |
|---|---|---|---|
| **Undying + autre Hex** | Effet qui survit à la purification | Purifier tous les totems allumés ; SWF : annoncer leurs positions | HEURISTIC [p92] |
| **Thrill of the Hunt + autres Hex** | Purification lente d'un Hex protégé | Purifier d'abord des **ternes** (moins de jetons), purifier le Hex quand le tueur est loin | HEURISTIC [p93] (« protège surtout d'autres Hex ») |
| **Pentimento + Thrill of the Hunt** | Totems rallumés, qui peuvent redonner des jetons | Re-purifier aussitôt ; limiter la purification des ternes | HEURISTIC [p93] ; effets SS / VMS |
| **Pentimento + Shattered Hope** | Boon détruit, puis totem réutilisé par le tueur | Placer les Boons dans une zone morte ; prévoir un 2e emplacement | HEURISTIC [p94] |
| **Retribution + autre Hex** | Purifier l'autre Hex rend le purificateur Oblivious **et** révèle toute l'équipe 20 s | Purifier quand le tueur est en chase loin et que personne n'est blessé en zone morte | HEURISTIC [p93] ; effet VMS |
| **Haunted Ground** (piège seul) | Hex visible « sans effet » | Ne purifier ni bénir qu'avec le tueur loin et personne en danger | HEURISTIC [p94] ; effet SS |

---

## 5. Comportements robustes « par défaut » (on ne sait rien)

> **EXPERT OPINION** : consolidation des « adaptations robustes » récurrentes des fiches. Chaque ligne indique quelles perks elle neutralise, et donc pourquoi elle reste bonne sans certitude.
>
> **Limites (audit §26)** : ce sont des **options par défaut**, pas des règles. La colonne « Coût » n'est pas mesurée ; plusieurs réflexes se contredisent entre eux (ex. 1 survivant par gen vs builds de réparation groupée ; ne pas suivre une chase vs saves SWF) et doivent être abandonnés dès qu'un signal écarte la perk visée. Appliqués tous à la fois, ils rendent le jeu très passif : c'est exploitable par un tueur qui n'a **aucune** de ces perks. En **SoloQ**, les réflexes qui supposent une coordination (#5, #13, annonces) ne s'appliquent que par signaux visibles.

| # | Réflexe par défaut | Neutralise ou atténue | Coût si la perk est absente | Réserves |
|---|---|---|---|---|
| 1 | **Ne jamais laisser un seul gen très avancé isolé** au moment d'un hook ou d'une pop ; finir les gens entamés plutôt qu'en ouvrir de nouveaux | Pain Res, Pop, No Holds Barred, Jagged Compass, Lay Waste, DMS, Ruin, Merciless Storm | Faible : c'est aussi l'économie de base des gens | — |
| 2 | **1 survivant par gen** hors sprint final | Discordance ; pénalité coop (−15 % par réparateur supplémentaire, FACT SS [audit]) | En débit total, positif : 2 gens solo = 2 charges/s contre 1,7 charge/s pour un duo (85 % × 2). Mais chaque gen reste exposé plus longtemps : 90 s seul contre ~52,9 s à deux, ~42,9 s à trois (calcul sur les valeurs de l'audit) | Contre Pop, Pain Res ou un 3-gen, finir **un** gen vite peut valoir plus que le débit ; les builds de réparation groupée (Teamwork: Full Circuit / Soft-Spoken, `PERK_DATABASE.md` §4.10) changent le calcul |
| 3 | **Réparer 5 % pour stopper une régression** ; ne pas « tapoter » | Toutes les régressions (Ruin, CoB, Overcharge, Oppression, Eruption, Surge, Pop, Lay Waste…) | — | FACT (VMS [audit][p90]) |
| 4 | **Après un hook, lâcher d'abord un gen peu avancé** si l'on doit partir | DMS | Nul | Au PTB 10.2.0 le lâcher doit durer plus de 2 s (PTB) |
| 5 | **Garder 1-2 réparateurs actifs** quand une chase va finir en down | Thrilling Tremors (+ Secret Project) | Nul | — |
| 6 | **Lâcher les gens kickés quand une chase tourne mal** ; éloigner les chases des gens | Eruption, Surge, Batteries Included | **Moyen** : un gen kické lâché régresse de 0,25 charge/s (≈ 0,28 %/s, FACT VMS [audit]) | À réserver aux parties où Eruption est plausible (cri déjà observé, §3.B1) ; éloigner les chases des gens reste bon dans tous les cas |
| 7 | **Soigner hors TR et loin du tueur**, en une seule fois, puis se séparer | Nurse's Calling, Coulrophobia, Septic Touch, Unnerving Presence, Huntress Lullaby, Deathbound, Sloppy Butcher, No Quarter | Faible : quelques secondes de trajet | Leverage : le sauveteur ne soigne pas juste après un décrochage |
| 8 | **Se soigner avant la dernière gen** ; finir le dernier gen **sain, groupé, près des portes, sans chase** | Terminus, NOED, None Are Free, Rancor, Bitter Murmur | Moyen : tempo | Pas toujours faisable (3-gen, chase en cours) ; inutile pour le porteur d'Adrenaline (§3.D1) |
| 9 | **Totems : arbitrage** : purifier les **ternes en passant** quand ça ne coûte rien (anti-NOED, [p91]), **sauf** si Pentimento, Retribution ou Secret Project sont suspectés. Purifier (ou bénir) un **Hex** quand le tueur est en chase loin, pas « dès qu'il s'allume » ; la bénédiction déclenche les mêmes pièges que la purification | NOED, Hex divers ; évite les pièges Haunted Ground / Retribution / Pentimento / Secret Project | Faible si fait en passant | Les fiches se contredisent en partie : [p91] pousse la purification des ternes, [p92][p93] la freinent. L'audit classe « purifiez un Hex dès qu'il s'allume » comme conseil dangereux |
| 10 | **Exposed = un coup, et vous êtes à terre** : aucune prise de risque tant que l'icône est là ; l'Endurance transforme ce coup en Deep Wound (FACT, SS [audit]) | NOED, MYC, FTTE, Starstruck, Dragon's Grip, Hubris, Iron Maiden, Ravenous, Devour, Haunted Ground, Rancor | Nul | — |
| 11 | **« Pas de cœur ≠ tueur parti »** et **« un cœur ≠ le tueur est là »** : pas de décrochage ni de réparation tranquille sur le seul silence ; inspecter les angles morts, venir à deux (SWF) | Insidious, Silent Shadow, Furtive Chase, Beast of Prey, Tinkerer, Machine Learning, Trail of Torment, Monitor & Abuse ; TR transféré (Dark Devotion, Unforeseen, Overture of Doom) ; statut Oblivious | Faible à moyen : la vérification coûte du temps au crochet (le décroché avance vers la phase suivante) | Undetectable supprime TR et tache rouge (FACT, SS [audit]) |
| 12 | **Bouger après chaque événement révélateur** : hook, pop, fin de chase, cri, drop de palette, kick près de soi | BBQ, Floods, Predator, Zanshin, Nowhere to Hide, Bitter Murmur, Rancor, THWACK!, Infectious Fright, Deerstalker, Celestial Witness, Eruption | Faible | Aucune icône ne signale une aura lue (§1.2) |
| 13 | **Ne pas suivre une chase de près** ; saves à distance, préparés avant le pickup | Infectious Fright, Forced Hesitation, Starstruck, Mad Grit, Agitation, Wandering Eye | Moyen : moins de saves improvisés | Contredit le suivi du porteur des builds SWF (Breakout, flash save, `PERK_DATABASE.md` §4.10) : sans signal de Starstruck / Mad Grit / Infectious Fright, le suivi préparé reste légitime (§3.B3) |
| 14 | **Lire le HUD après chaque événement tueur** (coup, down, pickup, hook, stun, pop, purification, portes) | Toutes les perks à statut (§2.1) | Nul | — |
| 15 | **Ne pas utiliser d'objet ni ramasser un objet au sol près du tueur** | Overwhelming Presence, Franklin's, Weave Attunement, Hoarder, Human Greed | Faible | — |
| 16 | **Palettes : ne pas miser la chase sur le stun** ; drop pour bloquer puis transition ; compter les palettes cassées | Enduring, Spirit Fury, Rampage | Moyen selon la tile | **Pas** contre Brutal Strength / Fire Up (casse moins chère : le pré-drop lui fait gagner du temps ; préférer fenêtres et tiles sans palette) ; Dissolution concerne le fast vault d'une palette, pas le drop ; sous **Knock Out** (VMS), la transition immédiate donne Hindered 5 % 3/4/5 s. Un tueur qui attend les pré-drops rend ce réflexe exploitable (`KILLER_COUNTERPLAY_HANDBOOK.md` §2.2) |
| 17 | **Endgame : toucher l'interrupteur puis s'éloigner** si l'on n'est pas sûr ; sortir **avant** un hook quand une porte est ouverte | No Way Out, Blood Warden, Haywire | Faible | — |
| 18 | **Au crochet, connaître le basekit** : anti-camp à moins de 16 m seulement ; protections de décrochage de 10 s (Endurance + Haste 10 % + Elusive) perdues sur action voyante | Make Your Choice, Insidious (proxy camp) | — | FACT VP / VMS [audit] |

---

## 6. Drills de déduction

> **EXPERT OPINION.** Les seuils de réussite sont des **objectifs proposés, non mesurés** : aucune donnée joueur ni VOD n'a été analysée. La vérité de référence est **l'écran de fin**, qui révèle le loadout (FACT, VP [audit]).

**Drill 1 : Journal « hypothèse → écran de fin »**
- **Objectif** : calibrer ses déductions.
- **Méthode** :
  - noter 3 fois par partie (après le 1er hook, à 2 gens restants, aux portes) les perks soupçonnées, avec le signal et un niveau (plausible / quasi certain) ;
  - comparer au loadout de l'écran de fin.
- **Métrique** :
  - précision = hypothèses « quasi certain » confirmées / hypothèses « quasi certain » émises ;
  - rappel = perks à signal visible (§2.1-2.3) trouvées / perks à signal visible présentes.
- **Erreur typique** : noter après coup (biais rétrospectif) ; conclure sur un seul événement.
- **Réussite** : précision « quasi certain » ≥ 80 % sur 20 parties ; aucune perk « Signature » manquée alors que son déclencheur a eu lieu.

**Drill 2 : Balayage du HUD à chaque événement tueur**
- **Objectif** : ne rater aucune icône (§2.1).
- **Méthode** : à chaque coup, down, pickup, hook, stun, pop, purification et à l'alimentation des portes, regarder ses icônes **et** les portraits des coéquipiers dans les 2 s.
- **Métrique** : événements balayés / événements survenus (auto-évaluation, idéalement en revoyant sa propre capture).
- **Erreur typique** : ne regarder que sa propre barre ; confondre un effet de pouvoir avec une perk (§1.4).
- **Réussite** : ≥ 9 événements sur 10 balayés.

**Drill 3 : Compteurs de jetons**
- **Objectif** : anticiper les perks à jetons et à seuils.
- **Méthode** : tenir de tête (ou annoncer en SWF) :
  - **quels survivants ont été accrochés au moins une fois** : Pain Res (4 jetons, SS), No Way Out (SS), Grim Embrace (4e jeton = 40 s, SS), Ravenous (4 = Exposed, VMS), None Are Free (max 4, SS), Scared to Death (Hex à 3 survivants différents, VMS) ;
  - le **nombre de gens terminés** : Coup de Grâce (+2 jetons par gen, 5 détenus, 10 par partie, SS), Fire Up (+1 par gen, max 5, VMS), Hive Mind (explosion au 4e gen, VMS) ;
  - les **stuns et blinds de l'équipe** : Two Can Play (4/3/2, SS) ;
  - les **coups de base de l'équipe** : Nothing but Misery (Hex après 8, VP) ;
  - les **palettes cassées** : Spirit Fury (4/3/2, SS), Rampage (max 13, VMS).
- **Métrique** : écart entre le compte annoncé et la réalité à chaque hook.
- **Erreur typique** : compter les hooks au lieu des **survivants différents** accrochés.
- **Réussite** : compte exact à chaque 1er hook pendant 10 parties.

**Drill 4 : Registre des totems**
- **Objectif** : repérer Hex, rallumages et transferts.
- **Méthode** : sur 5 totems par partie (FACT, SS [audit]), noter l'état de chacun (terne, allumé, purifié, béni, rallumé) et le moment où il a changé ; pour un Hex allumé en cours de partie, noter l'événement qui a précédé (§2.4).
- **Métrique** : totems localisés à 2 gens restants ; Hex identifiés par leur effet ou leur déclencheur avant la purification.
- **Erreur typique** : purifier un Hex sans avoir d'abord éliminé la piste Haunted Ground (§3.A2).
- **Réussite** : chaque totem allumé est relié à un effet ou à un déclencheur observé avant d'être purifié.

**Drill 5 : Test de la barre de gen**
- **Objectif** : distinguer Ruin, Pop, Call of Brine, Pain Res, Eruption et Surge.
- **Méthode** :
  - revenir sur un gen lâché **sans kick** : recul ou non ? (Ruin) ;
  - observer la chute au kick : environ 5 % (base, FACT) ou environ 20 % (Pop, VMS) ;
  - noter l'instant d'une explosion : hook (Pain Res), down **avec** cri (Eruption) ou **sans** cri (Surge), 4e gen (Hive Mind), pickup (blocage Thrilling Tremors).
- **Métrique** : déclencheur correctement associé à chaque perte de progression.
- **Erreur typique** : attribuer à une perk une régression due à un skill check raté (celui-ci fait **toujours** régresser, FACT VMS [p90]).
- **Réussite** : identification juste, confirmée par l'écran de fin, sur 10 parties avec slowdown.

**Drill 6 : Distance de soin**
- **Objectif** : tester A Nurse's Calling, Coulrophobia et Septic Touch sans risque.
- **Méthode** : soigner délibérément une fois hors TR et à plus de 32 m du tueur connu, puis comparer avec un soin dans le TR (si la situation est sûre).
- **Métrique** : soins interrompus selon la distance ; icônes apparues ; vitesse de la barre.
- **Erreur typique** : tester le soin près du crochet.
- **Réussite** : aucune interruption de soin au-delà de 32 m sur 10 soins ; la cause d'une interruption est identifiée.

**Drill 7 : « Le silence est une information piégée »**
- **Objectif** : réflexe contre le stealth (Insidious, Silent Shadow, Beast of Prey, Dark Devotion, Unforeseen, Overture of Doom…).
- **Méthode** : chaque fois que le TR disparaît, ou reste fixe, près d'un crochet, d'un gen ou en chase, énoncer la cause candidate et faire une vérification visuelle (angle mort, casier, arrière) **avant** d'agir.
- **Métrique** : décrochages faits sans vérification visuelle (cible : 0).
- **Erreur typique** : décrocher « parce qu'il n'y a pas de cœur ».
- **Réussite** : 0 décrochage non vérifié sur 10 parties.

**Drill 8 : Checklist des portes alimentées**
- **Objectif** : lire l'endgame en 5 s.
- **Méthode** : au moment où les portes s'alimentent, passer la liste suivante :
  1. Exposed pour tous (NOED) ou pour l'Obsession seule (Rancor) ?
  2. Broken (Terminus) ?
  3. Fenêtres et palettes bloquées (None Are Free) ?
  4. Plus aucun TR (Silent Shadow) ?
  5. Qui est blessé ?
  6. Au 1er contact avec l'interrupteur : bloqué (NWO) ? ouverture lente (Remember Me) ?
- **Métrique** : checklist complétée avant la 1re décision de l'endgame.
- **Erreur typique** : courir à la porte la plus proche sans lire le HUD.
- **Réussite** : checklist faite dans ≥ 9 endgames sur 10.

---

## 7. Limites : ce qui reste réellement ouvert

> La v1.0 listait ici 95 perks aux valeurs entièrement non re-vérifiées et 21 perks à valeur partielle incertaine (quota WebSearch épuisé). Après la re-vérification du lot 12a, **aucune perk du périmètre n'a plus d'effet ni de valeur entièrement UNCERTAIN**. Restent des **détails** (§7.2), des **mécaniques transverses** (§7.3) et la **péremption** annoncée par le PTB 10.2.0 (§7.4).

### 7.1 Ce qui a changé depuis la v1.0 (déductions touchées)

| Perk | v1.0 disait | Fiche re-vérifiée | Effet sur la déduction |
|---|---|---|---|
| Knock Out | aura d'un coéquipier au sol limitée à 32/24/16 m | effet **retiré au rework 8.6.0** ; seul effet : Hindered 5 % après drop + course (VMS) [p94] | signal « slug invisible » supprimé (§2.5, §3.B1) |
| I'm All Ears | « action rapide (casier, vault) » | **sauts rapides seulement** (SS) [p92] | les casiers ne déclenchent pas |
| Rancor | révélation d'aura / ciblage | **cri + Loud Noise Notification 3 s**, aura **du tueur** donnée à l'Obsession ; pas d'aura des survivants (SS) [p94] | nouveau signal « tous crient à chaque gen » (§2.2) ; Distortion n'aide pas |
| Weeping Wounds | Haemorrhage **+ Mangled** | **Haemorrhage seule** (SS) [p91] | discrimination avec Sloppy Butcher (§2.1) |
| Eruption | perte 10 % **ou** 5 % (conflit) | **10 %** LIVE ; le 5 % n'a existé qu'au PTB 9.2.0 (VMS) [p91][p90] | CONFLICT-K91-01 et L3P90-01 résolus |
| Surge | cri U | **pas de cri** dans le texte LIVE (SS) [p91] | le cri départage Eruption / Surge (§3.B1) |
| Terminus | 20/25/30 s (SS) contre 35/40/45 s | **35/40/45 s** (VMS, buff 9.0.0) [p92] | fenêtre Broken plus longue après l'ouverture |
| Dead Man's Switch | recharge 50 s U | recharge **50 s** VP (note 559, état « was ») [p91] | CONFLICT-K91-02 résolu |
| Nemesis | Obsession après un stun | Oblivious + aura 8 s à **tout** changement d'Obsession (SS) [p92] | signal élargi aux autres transferts (§2.1, §1.4) |
| Deathbound | « au-delà d'une distance du tueur » implicite | **aucune** condition de distance au tueur ; Oblivious loin du soigné jusqu'à la prochaine blessure (SS) [p92] | — |
| Hex: Retribution | purification d'un terne | purification **ou bénédiction** de tout totem ; auras 20 s au retrait de tout Hex (VMS) [p93] | les Boons déclenchent (§3.A2, §3.C6) |
| Batteries Included | désactivée aux portes (SS) | désactivation **non confirmée** (CONFLICT-K95-03, UNRESOLVED) [p95] | la supposer active en endgame |
| Thrilling Tremors | régression en pause (SS) | pause **U** (absente de la page complète) [p93] | ne pas compter dessus (§3.B2) |
| Hysteria | valeurs en conflit | **30/35/40 s, recharge 20 s** (SS) [p95] | CONFLICT-K95-01 résolu |
| Huntress Lullaby | zone réduite (seed) | **aucune réduction de zone** ; son retardé puis supprimé (SS) [p94] | départage avec Unnerving Presence (§2.2) |
| Superior Anatomy | conflit portée / recharge | 12 m, **un seul** vault, recharge 25 s ; « 10 s » = PTB (VMS) [p94] | CONFLICT-L3-94-02 résolu |
| Ultimate Weapon | « peu après » l'ouverture d'un casier | au moment de la fouille, à ≤ 40 m **du casier** (VMS) [p91] | CONFLICT-K91-03 résolu |
| Face the Darkness, Crowd Control, Wretched Fate | listés parmi les Hex « de départ » | s'allument sur un déclencheur (blessure, 1er vault, 1er gen) [p93][p94][p96] | §2.4 corrigé |
| No Way Out | VMS | **SS** (page complète + audit, aucune note officielle) [p92] | étiquette abaissée |
| Franklin's Demise | consommation de l'objet U | plus de perte de charges depuis 9.1.0 (VMS) [p95] | CONFLICT-K95-02 résolu |
| Insidious | version persistante U | Undetectable **tant qu'immobile** ; la persistance 6/7/8 s est PTB (VMS) [p94] | CONFLICT-L3-94-01 résolu |
| Monitor & Abuse, Beast of Prey, Coulrophobia, Pop, Coup de Grâce, Thrill of the Hunt, Deerstalker, KTW, Bamboozle, Crowd Control | parties U (§7.2 de la v1.0) | résolues (voir chaque ligne du §2) | — |

### 7.2 Détails encore UNCERTAIN (ne pas s'appuyer dessus)

| Perk | Point ouvert | Référence |
|---|---|---|
| Scourge Hook: Pain Resonance | Repli sur un autre gen si le gen visé est au plafond de 8 events ou bloqué (D-010) | [p90] Q1 |
| Lethal Pursuer | Auto-extension à 9/10/11 s au début (déduite du libellé) | [p90] Q4 |
| Thrilling Tremors | Régression mise en pause pendant le blocage | [p93] K93-03 |
| Enduring | Clause « ne s'applique plus aux stuns de perks » ; durée de base du stun (2 s, audit) non relue sur la page de la perk | [p92] Q1 |
| Hex: Undying | « Jetons conservés » au transfert ; transfert d'un Hex **béni** (HYP : non) | [p92] Q3 |
| Overcharge | La perte de 2/3/4 % dépend-elle de l'échec du skill check ? | [p92] Q5 |
| Lay Waste | Sens de « Charge » (unité de progression ? HYP) | [p92] Q4 |
| Thanatophobia | Icône externe de perk visible par le survivant ralenti ? | [p92] Q6 |
| Scourge Hook: Weeping Wounds | Affichage de la pénalité 10/13/16 % dans le HUD | [p91] Q5 |
| Spirit Fury | Le compteur de palettes repart-il de zéro après usage ? | [p93] |
| Machine Learning | « Deactivates after use » = une seule activation par partie ? | [p93] |
| Distressing | Palier 2 : 25 % (wiki 8.4.0) ou 23 % (note 559) | CONFLICT-L3-94-03 [p94] |
| Dissolution | Indicateur de statut côté survivant | [p94] Q2 |
| Whispers | Prise en compte des survivants accrochés ou au sol | [p94] Q6 |
| Batteries Included | Désactivation à l'alimentation des portes | CONFLICT-K95-03 [p95] |
| None Are Free | Le tueur franchit-il les fenêtres et palettes bloquées (mention « for everyone » retirée en 8.6.2) ? | [p95] Q2 |
| Help Wanted | Marquage « compromis » visible côté survivant ? | [p95] Q4 |
| Hex: Under Your Thumb | L'alerte au tueur (4 s, wiki seul) produit-elle un indice côté survivant ? | [p95] Q5 |
| Undone | Jetons par skill check raté, maximum, valeur de la recharge (LIVE) ; contenu du rework PTB (CONFLICT-K96-05) | [p96] Q1-Q2 |
| Septic Touch | Déclenchement en soignant **un autre** survivant | [p96] Q3 |
| Hoarder | Exception « Limited Items » | [p96] Q4 |
| Hex: Face the Darkness | Icône « Cursed » sur le survivant maudit | [p93] |
| Hex: Pentimento | Statut de pénalité affiché dans le HUD (présumé) | [p92] |
| Hubris, Forced Penance | Interaction avec Endurance / Borrowed Time | [p94] |

### 7.3 Mécaniques transverses non établies (ne pas en faire des signaux certains)

- **Visibilité des crochets Fléau** côté survivant : non établie par le wiki ; question ouverte dans les 7 fiches ([p90] Q3, [p91] Q2, [p93], [p94] Q1, [p96]).
- **Rendu exact d'un gen bloqué** côté survivant ([p90] Q3).
- **Distortion** : mécanique non re-vérifiée ([p90]). « Les casiers bloquent les auras » : U ([p91] Q3).
- **Calm Spirit contre les cris** (Infectious Fright, Face the Darkness, Rancor) : à vérifier au lot 2 ([p93], [p94] Q4).
- **Perks des coéquipiers qui montrent l'aura du tueur** (Kindred, Salvation's Cry) : U, hors lot 3 ([audit pass14] D5, lacune 9).
- **Diminishing Returns** : seuls les principes 9.6.0 sont vérifiés (VP [p90]). Les notes 9.6.0 visent les modificateurs « identiques » sans en publier la liste ; selon l'audit, **le manuel du jeu (9.6.1) la contient, mais il n'a pas été consulté** : on ne sait donc pas si blocages, pertes instantanées, régressions (Ruin, CoB, Overcharge, Lay Waste), chances de skill check (Unnerving) ou malus de vitesse d'action (Thanatophobia, Cull the Weak, Pentimento) sont concernés ([p90] C13, [p91] Q4, [p92] Q2, [p95] Q3, [audit]).
- **Périmètre** : les 145 perks du seed n'ont pas été comparées à la liste officielle des perks tueur LIVE 10.1.2a ([audit pass14] lacune 8). Tant que ce n'est pas fait, un lien « Signature » peut ignorer une perk absente du seed.
- **Digest wiki** : pour 7 perks (§0), la page affichait déjà le texte PTB comme courant ; la valeur LIVE a été reconstruite depuis la note PTB 559. À relire directement sur le wiki à la sortie de 10.2.0.

### 7.4 Péremption annoncée

- Le **PTB 10.2.0** modifie **58 perks** au total. Dans ce périmètre, **27 perks tueur** sont modifiées d'après la note officielle 559 et le wiki :
  - [p91] Dead Man's Switch ;
  - [p92] Hex: Blood Favour ;
  - [p93] Deerstalker, Hex: Thrill of the Hunt, Agitation, Iron Grasp, Machine Learning, Scourge Hook: Monstrous Shrine ;
  - [p94] Whispers, Distressing, Insidious, Knock Out, Shattered Hope, Dominance, Dissolution, Superior Anatomy ;
  - [p95] Fire Up, Hex: Nothing but Misery, Help Wanted ;
  - [p96] Game Afoot, Unbound, Undone, Dark Arrogance, Ravenous, Spies from the Shadows, Unrelenting, Bitter Murmur.
- Les 118 autres perks du périmètre ne sont pas modifiées au PTB 10.2.0 (wiki + note 559) ; leurs valeurs restent à relire à la sortie LIVE, qui peut différer du PTB.
- Signaux qui **changeront de nature** au PTB (à ne pas utiliser avant la sortie) : Knock Out (10 m, Hindered 20 %), Insidious (persistance 6/7/8 s), Distressing (réparation −6/7/8 % dans le TR), Dominance (cri + aura du survivant, totems seulement), Shattered Hope (blocage des totems), Blood Favour (attaque de base seulement), Thrill of the Hunt (blocage des totems à chaque hook), Monstrous Shrine (régression des gens), Machine Learning et Help Wanted (3 gens compromis), Undone (jetons aux crochets), Nothing but Misery (4 coups), Ravenous (Haste en portant, Exposed 80/85/90 s).
- **À la sortie LIVE de 10.2.0** (estimée début octobre 2026, non officiel [manifeste]), relire ce document : les **mécanismes** de déduction resteront en grande partie valables, pas les chiffres.
- **Aucune VOD analysée** : les seuils des drills (§6) et les niveaux de menace ne sont pas mesurés.

---

## Sources

- [p90] `kb/research/batch3_perks_kill_p90.md` : Pain Resonance, Pop, Corrupt, Grim Embrace, Lethal Pursuer, Nowhere to Hide, règles de régression, DR 9.6.0, historique 9.2.0 (re-vérifié le 27/09/2026 : 6/6 sur page wiki complète).
- [p91] `kb/research/batch3_perks_kill_p91.md` : tier A (DMS, Eruption, Ruin, BBQ, ANC, Surge, NHB, KTW, Bamboozle, NOED, TBtC, Celestial Witness, Discordance, Darkness Revealed, Floods of Rage, Ultimate Weapon, Weeping Wounds, Fortune's Fool) (18/18).
- [p92] `kb/research/batch3_perks_kill_p92.md` : tier B (Brutal Strength → I'm All Ears) (23/23).
- [p93] `kb/research/batch3_perks_kill_p93.md` : Thrilling Tremors → Monstrous Shrine (21/21).
- [p94] `kb/research/batch3_perks_kill_p94.md` : tier C (Whispers → Alien Instinct) (28/28).
- [p95] `kb/research/batch3_perks_kill_p95.md` : Hysteria → Cull the Weak (22/22).
- [p96] `kb/research/batch3_perks_kill_p96.md` : tier D (Bloodhound → Bitter Murmur) (27/27).
- Sources primaires des fiches (non relues directement pour ce document) : pages wiki.gg complètes via API (`kb/sources/wiki_perks_digest.md`, brut `kb/sources/wiki_perks.json`) ; notes officielles BHVR 9.0.0 → PTB 10.2.0 (`kb/sources/patches/official_*.txt`).
- [audit] `kb/seed/audit_phase0.txt` : Match Details 9.6.0 (loadout caché, VP) ; crochets, anti-camp et Resolve (9.3.0) ; protections de décrochage 10.1.0 (VP) ; régression 7.5.0 ; DR 9.6.0 ; glossaire des statuts ; totems, coffres, portes, EGC ; vaults et blocage de fenêtre ; Bloodlust ; Undetectable ; heuristiques dangereuses du seed.
- [audit pass14] `kb/audit/pass14_deliverables.md` : audit de la v1.0 (corrections D1-D19 conservées ; lacunes 8 et 9 toujours ouvertes).
- [manifeste] `kb/PROJECT_MANIFEST.md` : référence de version et contraintes d'accès.
