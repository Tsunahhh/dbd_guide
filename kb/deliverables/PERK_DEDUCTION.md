# PERK DEDUCTION : lire le loadout du tueur pendant la partie (vue survivant)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) — voir kb/audit/pass14_deliverables.md**

> Livrable mission §10 « PERK DEDUCTION » (voir `prompt.md`).
> **Référence de version : LIVE 10.1.2a (17/09/2026).** Le PTB 10.2.0 (15-21/09/2026) **n'est pas LIVE**. Toute valeur PTB est étiquetée « PTB ».
> Rédigé le 27/09/2026 **sans recherche web** (quota épuisé). Ce document consolide uniquement :
> - les 7 fichiers du lot 3 : `kb/research/batch3_perks_kill_p90.md` … `p96.md` (cités **[p90] … [p96]**) ;
> - l'audit vérifié de la phase 0 : `kb/seed/audit_phase0.txt` (cité **[audit]**).
>
> **Statut de vérification : PARTIALLY_VERIFIED.** Environ 60 % des perks tueur ont des valeurs UNCERTAIN (86/145 = 59 % sans vérification web ni audit selon `BATCH_2_4_SYNTHESIS.md` ; 95/145 = 66 % si l'on compte aussi les perks dont seul le nom est confirmé, décompte de `PERK_DATABASE.md` ; liste au §7). Aucune analyse de VOD n'a été faite.
>
> **Aucune déduction de ce document n'est certaine pendant la partie** : l'écran de fin est la seule confirmation (§1.2). Les liens « Signature » supposent que le périmètre de 145 perks du seed est complet, ce qui n'a pas été vérifié (§0).

---

## 0. Comment lire ce document

**Étiquettes de nature** (mission §21)
- **FACT** : mécanique ou valeur issue d'une source vérifiée ; la confiance d'origine suit entre parenthèses.
- **HEURISTIC** : règle de jeu raisonnée à partir de l'effet d'une perk, non mesurée. C'est le cas de **toutes** les rubriques Indice / Soupçonner / Confirmer / Adaptation des batchs.
- **EXPERT OPINION** : arbitrage ou priorité proposé par ce document, sans source.

**Confiance des valeurs** (reprise telle quelle du batch d'origine)
- **VP** = VERIFIED_PRIMARY
- **VMS** = VERIFIED_MULTI_SOURCE
- **SS** = STRONG_SECONDARY (wiki via résumé de recherche)
- **U** = UNCERTAIN : valeur du seed non re-vérifiée, ou conflit de sources
- **CO** = COMMUNITY_OBSERVATION
- **HYP** = HYPOTHESIS

**Règle d'or** : un chiffre marqué **U** ne sert **jamais** de base à une décision fine, par exemple « j'ai 38 s ». Le comportement robuste proposé ne dépend que du **mécanisme** (déclencheur, cible, type d'effet).

**Confiance du lien signal → perk** (HEURISTIC, propre à ce document)
- **Signature** : dans le périmètre du lot 3, le signal ne correspond qu'à une perk. Réserves : un pouvoir ou un add-on peut produire le même effet (voir §1.4) ; une perk **d'un coéquipier** aussi (vérifier Match Details) ; le périmètre du lot 3 (145 perks du seed) n'a pas été comparé à une liste officielle ; et quand l'effet est **U**, la signature elle-même repose sur une description non vérifiée. « Signature » = hypothèse de travail très forte, **jamais** une certitude.
- **Fort** : 2 ou 3 perks candidates, qu'un test simple départage.
- **Faible** : repose sur le comportement du tueur. Le talent, le pouvoir ou le hasard suffisent souvent à l'expliquer.

---

## 1. Principe

### 1.1 Les deux questions (mission §10)

1. **« J'ai observé A + B + C, donc la perk X est plausible. »** Relier un **déclencheur** (hook, down, pickup, coup de pied, gen terminé, portes alimentées, stun, soin…) à un **effet visible** (statut, cri, blocage, barre, son, aura). Un signal isolé ne prouve presque rien. C'est la **coïncidence temporelle répétée** qui confirme. (HEURISTIC, formulé dans tous les batchs)
2. **« Quel comportement minimise le risque même sans certitude ? »** Choisir l'action qui reste bonne **contre toutes les perks candidates** et qui coûte peu si l'hypothèse est fausse. (EXPERT OPINION)
   - Exemple : lâcher d'abord un gen peu avancé après un hook. Le geste neutralise Dead Man's Switch **et** ne coûte presque rien si la perk n'est pas là [p91].

### 1.2 Ce que le jeu montre, ce qu'il cache (FACT)

- **Loadout du tueur caché jusqu'à la fin de la partie** depuis 9.6.0 (FACT, VP [audit], notes officielles 9.6.0). Seule **l'identité** du tueur est révélée, dès qu'un survivant entre en poursuite ou perd un état de santé.
  - L'idée « les perks du tueur sont visibles après la 1re chase » est **fausse** (erreur du seed D-092, corrigée par [audit]).
  - Conséquence : pendant la partie, **seule la déduction** donne accès aux perks. L'écran de fin est la seule confirmation certaine.
- **Loadouts des coéquipiers** (perks, objets, add-ons, offrandes) visibles dans Match Details depuis 9.6.0 (FACT, VP [audit]).
  - Usage (HEURISTIC) : écarter les causes **côté survivant** d'un signal avant d'accuser une perk du tueur. Exemple : une perk de coéquipier qui crée une Obsession.
- **Aucune icône « ton aura est lue »** (HEURISTIC [p91] Eruption, [p92] Gearhead). On ne sait jamais qu'on est vu, sauf par un effet indirect comme un jeton de Distortion consommé.
  - La mécanique de Distortion n'a pas été re-vérifiée dans ce lot (U [p90]).

### 1.3 Inventaire des signaux observables

| Famille | Observable côté survivant | Précisions vérifiées / réserves |
|---|---|---|
| **Icônes de statut (HUD)** | Exposed, Oblivious, Blindness, Exhausted, Broken, Hindered, Mangled, Haemorrhage, Deep Wound, Endurance, Elusive, Cursed ; icône d'Obsession | Définitions FACT (SS, glossaire wiki.gg [audit]) : Exposed = une attaque de base met à terre ; Oblivious = pas de TR ni de heartbeat ; Blindness = aucune aura, même de base ; Broken = impossible d'être soigné au-delà de blessé. L'Endurance transforme le coup d'un Exposed en Deep Wound, mais ne protège pas un survivant déjà en Deep Wound (FACT, SS [audit]) |
| **Totems** | Totem Hex allumé (flamme ; grésillement audible de près, HEURISTIC [p91]) ; totem purifié qui se rallume ; Boon disparu | 5 totems par partie ; purification 14 s ; bénédiction d'un terne 14 s, d'un Hex 28 s ; le tueur éteint un Boon en 1 s (FACT, SS [audit]) |
| **Blocages de l'Entité** | Gens, fenêtres, palettes, interrupteurs de porte, sorties, coffres, totems « bloqués » (pointes, interaction impossible) | Un gen bloqué ne progresse ni ne régresse et ne subit pas de perte instantanée (FACT, SS [p90][audit]). **Blocage basekit à ne pas confondre** : après le 3e vault de la même fenêtre dans une poursuite, la fenêtre est bloquée 30 s pour ce survivant seulement (FACT, SS [audit]) |
| **Gens « blancs / jaunes »** | **En général non.** Les auras blanches ou jaunes de gens décrites par les perks sont **côté tueur** : DMS, Eruption, Thrilling Tremors, Surveillance, Cruel Limits (fenêtres), Dominance (props) [p91][p93][p95][p96][p94] | **Exception** : Trail of Torment rendrait l'aura **jaune** d'un gen visible par les survivants (U [p93]). Côté survivant, on voit le **blocage**, pas la couleur |
| **Pointes autour d'un gen** | Oui | Au moins 4 Regression Events consommés. Au 8e, le tueur ne peut plus interagir avec ce gen ; seuls les skill checks ratés le font encore régresser (FACT, VMS [p90][audit], depuis 7.5.0) |
| **Crochets Fléau (Scourge) « blancs »** | **Visibilité côté survivant non établie** | Question ouverte dans [p90] Q6, [p91] Q6, [p94] Q2. [p93] et [p96] les décrivent comme visibles, mais d'après le seed (U). **Ne pas en faire un signal de base** |
| **Cris involontaires** | Oui (le sien et, a priori, ceux des autres) | Un cri révèle au moins un son. Le cri de Pain Resonance **ne révélerait pas** la position (SS, CONFLICT-L3P90-02 partiellement résolu [p90]) |
| **Sons** | Heartbeat / TR ; son absent ; respiration du tueur ; « stinger » à la fin de l'Undetectable ; son d'avertissement de skill check | Undetectable supprime TR et tache rouge ; un stinger sonore marque sa fin (FACT, SS [audit]). Insidious : respiration audible, stinger à la reprise du mouvement (SS [p94]) |
| **Auras reçues** | Aura rouge du tueur sans perk ; aura d'un totem ; aura d'un gen (ToT, U) | Voir §2.5 |
| **Barres de progression** | Chute brutale du gen ; recul sans kick ; barre de porte qui recule ; soin ou purification anormalement lents ; taille des zones de skill check | Kick de base : −5 % instantané, puis −0,25 charge/s ; réparer 5 % stoppe la régression (FACT, VMS [p90][audit]) |
| **Carte** | Nombre de coffres ; coffres refermés ; objets au sol | 3 coffres par défaut (2 aléatoires + 1 au sous-sol) (FACT, SS [audit]) |
| **Comportement du tueur** | Trajectoires, timings, vitesse de casse / vault, portée de fente | Signal **faible** (voir « Faible » au §0). Repères basekit FACT : casse de palette 2,34 s (VMS) ; stun de palette 2 s (SS) ; vault de fenêtre tueur 1,7 s (SS) ; kick 1,8 s (VMS) [audit] |

### 1.4 Pièges de raisonnement (HEURISTIC)

- **Le pouvoir et les add-ons imitent les perks.**
  - Mangled + Haemorrhage : certains pouvoirs les donnent [p92].
  - Oblivious : Myers, Ghost Face, Sadako… [p95].
  - Blindness : Mindbreaker ou add-ons [p94].
  - Casse de palette par un pouvoir [p93].
  - Réflexe : se demander « le tueur identifié peut-il faire ça sans perk ? »
- **Les mécaniques basekit imitent les perks.** Blocage de fenêtre au 3e vault (≠ Bamboozle) [p91][audit] ; protections de décrochage ; anti-camp ; Bloodlust.
- **Un seul événement ne suffit pas.** La répétition au même déclencheur est le vrai test [p90][p93].
- **L'identité du tueur n'est qu'un indice faible.** Elle rend plus probables les perks de son propre personnage : Deathslinger + DMS [p91] ; Artist + Pain Res / Grim Embrace [p90] ; The First + Turn Back the Clock / Hive Mind [p91][p93]. Un tueur peut aussi porter les perks d'autres personnages (EXPERT OPINION).
- **Les heuristiques du seed présentées comme absolues sont dangereuses.** L'audit cite « purifiez un Hex dès qu'il s'allume » et le proxy camp. Toute règle ci-dessous est conditionnelle [audit].

---

## 2. Table des SIGNAUX → perks candidates

> Toutes les lignes sont **HEURISTIC**. Les valeurs entre parenthèses gardent la confiance de leur batch. La colonne « Confiance du lien » combine la force du lien (voir §0) et la confiance de l'effet.

### 2.1 Icônes de statut

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| **Exposed** pour tous dès l'alimentation des portes | Hex: No One Escapes Death | Timing exact « portes alimentées » ; un totem Hex s'allume, son aura est visible de près et s'élargit (4 → 24 m en 30 s, U). Autres Exposed collectifs : Haunted Ground (après une purification), Devour Hope (3 jetons, sans lien avec les portes), Ravenous (4e premier hook) | Fort · effet U [p91] |
| **Exposed** pour tous juste après la purification d'un Hex | Hex: Haunted Ground | Le Hex semblait « sans effet » avant la purification (40/50/60 s, U) | Signature · effet U [p94] |
| **Exposed** + cri collectif quand le 4e survivant différent est accroché | Ravenous | Compter les premiers hooks (Exposed 40/50/60 s, U ; seed ch8 = valeurs PTB, CONFLICT-K96-01) | Signature · effet U [p96] |
| **Exposed** permanent pour tous, sans déclencheur visible, avec un totem allumé | Hex: Devour Hope (3 jetons) | Le tueur s'éloigne ostensiblement des crochets (jetons gagnés sur les décrochages à ≥ 24 m, U) | Fort · effet U [p92] |
| **Exposed** en entrant dans le TR d'un tueur **qui porte** | Starstruck | L'Exposed dure 26/28/30 s après la sortie du rayon (SS), recharge 60 s (SS) | Signature · effet SS [p92] |
| **Exposed** sur l'Obsession pile quand un **autre** survivant est accroché | Friends 'til the End | Aura de l'Obsession 6/8/10 s + Exposed 20 s (SS) ; quand l'Obsession est accrochée, un survivant aléatoire crie et devient Obsession (SS) | Signature · effet SS [p92] |
| **Exposed + cri** du sauveteur au décrochage, tueur loin du crochet | Make Your Choice | Tueur à > 32 m (SS) ; Exposed 40/50/60 s, recharge 40/50/60 s (SS) | Signature · effet SS [p95] |
| **Exposed + cri** en touchant un gen tout juste kické | Dragon's Grip | Dans les ~30 s qui suivent le kick (Exposed 60 s, recharge U) | Signature · effet U [p93] |
| **Exposed** juste après avoir étourdi le tueur | Hubris | Aucun autre déclencheur (≈ 20/25/30 s, U) | Signature · effet U [p94] |
| **Exposed + cri** en sortant d'un casier | Iron Maiden | Lié à la sortie de casier (≈ 30 s, U) | Signature · effet U [p94] |
| **Exposed** sur l'Obsession seule, en fin de partie | Rancor | L'Obsession peut être tuée à la main (U) | Fort · effet U [p94] |
| **Oblivious** sur soi (déjà blessé) au moment où un survivant **sain** est touché | Hysteria | Seul le passage **sain → blessé** déclenche (mécanisme SS) ; valeurs en conflit (CONFLICT-K95-01) | Fort · mécanisme SS, valeurs U [p95] |
| **Oblivious** après son 1er hook + un totem Hex s'allume | Hex: Fortune's Fool | Seul ce survivant peut purifier pendant 90 s ; il voit l'aura du totem (24/20/16 m, U) | Signature · effet U [p91] |
| **Oblivious** juste après avoir purifié un totem terne | Hex: Retribution | Un Hex est allumé ailleurs ; son déclencheur exact reste incertain | Fort · effet U [p93] |
| **Oblivious** + on devient l'Obsession juste après un stun ou un flash | Nemesis | Transfert d'Obsession vers celui qui a étourdi | Signature · effet U [p92] |
| **Oblivious** au moment d'un hook, alors qu'on est blessé et loin | Alien Instinct | Vise le survivant blessé le plus éloigné (U) | Fort · effet U [p94] |
| **Oblivious** après avoir ramassé un objet | Weave Attunement | Souvent associé à des objets vides qui tombent seuls | Signature · effet U [p95] |
| Cri à la fin d'un soin, puis **Oblivious** en s'éloignant du soigné | Deathbound | Le soigneur crie | Signature · effet U [p92] |
| **Blindness + cri** peu après que le tueur a ouvert un casier | Ultimate Weapon | Aucun coup ni poursuite (déclencheur exact en conflit, CONFLICT-K91-03) | Signature · effet U [p91] |
| **Blindness + Exhausted** dès qu'on répare | Mindbreaker | Lié à la réparation, persiste un peu après l'arrêt (3/4/5 s, U) | Signature · effet U [p93] |
| **Blindness + Exhausted** en soignant dans le TR | Septic Touch | Hors TR : rien. Persiste 20/25/30 s après le soin (SS). Soigner **autrui** déclenche-t-il ? U | Signature · effet SS [p96] |
| **Blindness** après un coup, avec un Hex allumé | Hex: The Third Seal | Touche les 2/3/4 **derniers** survivants frappés (U) | Fort · effet U [p94] |
| Écran blanc (**blind** 1,5 s) juste après avoir étourdi ou aveuglé le tueur | Hex: Two Can Play | S'allume après 4/3/2 stuns ou blinds s'il reste un totem terne ; blind 1,5 s (SS) | Signature · effet SS [p95] |
| **Exhausted** en activant un objet près du tueur | Overwhelming Presence | Objet utilisé à ≤ 32 m → Exhausted 15 s ; le tueur voit l'aura 2/3/4 s ; recharge 25 s (SS) | Signature · effet SS [p96] |
| **Exhausted** juste après un coup reçu | Genetic Limits | Sans avoir utilisé de perk d'épuisement (6/7/8 s, U) | Fort · effet U [p94] |
| **Exhausted + Haemorrhage** au moment d'un hook, alors qu'on est blessé | Blood Echo | Au hook d'un **autre** survivant | Signature · effet U [p94] |
| **Exhausted** après avoir fait s'envoler un corbeau près du tueur | Languid Touch | Corbeau à ≤ 36 m du tueur (U) | Signature · effet U [p95] |
| **Mangled + Haemorrhage** après un coup de base | Sloppy Butcher | Tueur dont le pouvoir ne les donne pas ; durée 70/80/90 s ; flaques +50/75/100 % ; régression du soin partiel +25 % (SS) | Signature (hors pouvoir) · effet SS [p92] |
| **Haemorrhage + Mangled** à la sortie d'un crochet | Scourge Hook: Weeping Wounds | Au décrochage, pas au coup (90 s ; malus de réparation et de soin 10/13/16 % après le soin, U) | Signature · effet U [p91] |
| **Broken** chez tous les blessés, au sol ou accrochés à l'alimentation des portes | Terminus | Persiste 20/25/30 s après l'ouverture d'une porte (SS ; le seed dit 35/40/45 s, CONFLICT-3P92-01) ; Adrenaline ne soigne pas | Signature · effet SS (conflit) [p92] |
| **Broken** après un coup protecteur | Forced Penance | Déclenché par le protection hit (60/70/80 s, U) | Signature · effet U [p94] |
| **Broken** après un skill check raté dans une rafale de fin d'auto-soin | No Quarter | Rafale vers 75 % d'un self-heal (20/25/30 s, U) | Signature · effet U [p96] |
| **Hindered** après avoir fait tomber une palette puis couru | Knock Out | Plus de 6 m parcourus dans les 6 s → Hindered 5 % pendant 3/4/5 s (SS) | Signature · effet SS [p94] |
| **Hindered** quand un coéquipier tombe près de soi | Forced Hesitation | Proximité du down (16 m, 20 %, U) | Signature · effet U [p94] |
| **Hindered** après chaque coup, Hex apparu en cours de partie | Hex: Nothing but Misery | Le Hex s'allume après plusieurs coups (≈ 8 selon le seed, U) | Fort · effet U [p95] |
| **Cri + Hindered** quand une palette est cassée près de soi | Hex: Scared to Death | Hex allumé après 3 survivants différents accrochés (U) | Fort · effet U [p96] |
| Icône **Obsession** qui change de survivant | Friends 'til the End (au hook de l'Obsession, avec cri) ; Furtive Chase (passe au sauveteur) ; Celestial Witness (au plus éloigné) ; Nemesis (à celui qui étourdit) ; Game Afoot (au plus poursuivi) | Identifier **à qui** elle passe et **quand**. Vérifier dans Match Details qu'aucune perk de coéquipier n'explique le changement | Fort · FTTE SS, autres U [p91][p92][p93][p96] |
| Obsession présente, et le tueur **évite** visiblement de la frapper | Keep Them Waiting (récupération plus courte à chaque coup sur un non-Obsession, 5 %/jeton, VERIFIED audit) ; Cull the Weak (gens et soins ralentis, U) | KTW : récupérations de plus en plus courtes. CtW : gens de plus en plus lents au fil des hooks | Faible · KTW 5 %/jeton VERIFIED, plafonds U [p91][p95] |

### 2.2 Cris, explosions, progression des gens

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| Au moment d'un **hook** : cri des réparateurs + explosion du gen **le plus avancé** | Scourge Hook: Pain Resonance | Seulement au 1er hook de chaque survivant sur un crochet Fléau, 4 jetons au maximum. Perte 10/15/20 % de la progression **totale**, puis régression normale (SS) | Signature · effet SS [p90] |
| Au moment d'un **down** : cri en réparant + recul d'un gen **déjà kické**, même loin | Eruption | Mécanisme (cri + aura révélée, plus d'Incapacitated) SS ; perte **10 % ou 5 %** (CONFLICT-K91-01, U) | Fort · mécanisme SS [p91] |
| Au moment d'un **down** par coup de base : explosion des gens **proches, non kickés** | Surge | Rayon ≈ 32 m, coup de base uniquement (valeurs U ; cri U). Surge est le nom d'origine et actuel, « Jolt » n'a existé que de 5.3.0 à 7.3.3 (SS, audit) | Fort · effet U [p91] |
| On crie au moment où un coéquipier tombe, en étant dans le TR | Infectious Fright | Cri dans le TR seulement ; le tueur laisse le survivant au sol et vient vers soi | Signature · effet U [p93] |
| Cri involontaire au bruit d'une palette ou d'un mur cassé ailleurs | THWACK! | Synchronisé avec la casse (≤ 36 m, 4/5/6 s, jetons, U) | Signature · effet U [p96] |
| Cri en **regardant** le tueur depuis le TR | Phantom Fear | Recharge longue (80/70/60 s, U) | Signature · effet U [p95] |
| Cris **périodiques** hors TR pendant qu'un coéquipier reste blessé | Hex: Face the Darkness | S'arrêtent si le blessé est soigné ou si le Hex est purifié | Fort · effet U [p93] |
| Explosion d'un gen **sans kick**, juste après un hook, tueur à moins de ~20 m | Turn Back the Clock | Proximité du tueur + fenêtre après le hook (40/50/60 s, U) | Fort · effet U [p91] |
| **Tous** les gens explosent au passage à « 1 gen restant » | Hex: Hive Mind | Hex allumé au 1er hook (U) | Signature · effet U [p93] |
| Chute d'**environ 20 %** au premier kick qui suit un hook | Pop Goes the Weasel | +15 %, soit 20 % au total avec les 5 % de base (SS) ; fenêtre 35/40/45 s (U, CONFLICT-L3P90-03) | Fort · effet SS [p90] |
| Gen **lâché** qui recule **sans kick** (pas d'animation, pas de bruit de dégât) | Hex: Ruin | Régression 100/125/150 % tant que le totem tient (SS). Oppression : régression après un kick ailleurs ; Call of Brine / Lay Waste : exigent un kick | Fort · effet SS [p91] |
| Plusieurs gens se mettent à régresser sans kick + skill check difficile soudain | Oppression | Coïncide avec un kick ailleurs (recharge U) | Fort · effet U [p92] |
| Régression **visiblement rapide** après un kick | Call of Brine (30/40/50 % pendant 90 s, SS, depuis 10.1.0) ; Overcharge (U) ; Lay Waste (U) | CoB : le tueur revient après un skill check réussi (alerte U). Overcharge : skill check immédiat et difficile au contact | Faible · CoB SS [p92] |
| Skill check **immédiat et difficile** au contact d'un gen kické | Overcharge | 1er réparateur du gen kické (valeurs U) | Signature · effet U [p92] |
| **Rafale** de skill checks à 90 % de progression | Merciless Storm | Un raté ou un arrêt bloque le gen (16/18/20 s, U) | Signature · effet U [p94] |
| Skill check **sans son d'avertissement** (ou avec un son tardif), Hex allumé | Hex: Huntress Lullaby | S'aggrave au fil des hooks (jetons, U) | Signature · effet U [p94] |
| Zones de skill check **plus petites uniquement dans le TR** | Unnerving Presence | Comparer dans et hors TR (U) | Fort · effet U [p94] |
| Soin lent **uniquement dans le TR** + aiguille de skill check plus rapide | Coulrophobia | Vitesse normale hors TR ; soins −20/25/30 % (SS, 10.1.0) ; aiguille +50 % (U) | Signature · soin SS [p94] |
| Gens et soins qui ralentissent **au fil des hooks**, Obsession jamais chassée | Cull the Weak (ex-Dying Light) | L'Obsession décroche et soigne plus vite (U). Renommage 9.4.0 : FACT (audit) | Faible · effet U [p95] |
| Gens lents quand plusieurs survivants sont blessés | Thanatophobia | Le tueur blesse sans chercher le down (valeurs U) | Faible · effet U [p92] |
| L'Obsession répare nettement plus lentement après le 1er gen, un totem est allumé | Hex: Wretched Fate | La vitesse revient après la purification | Fort · effet U [p96] |
| Soins anormalement lents après un sauvetage | Leverage | Qui est touché, sauveteur ou décroché ? Contradiction interne du seed (CONFLICT-K96-02) | Faible · effet U [p96] |
| Progression de sacrifice **accélérée** quand le tueur s'éloigne d'un crochet Fléau | Scourge Hook: Monstrous Shrine | Tous les crochets du sous-sol comptent (10/15/20 % à > 24 m, U) | Fort · effet U [p93] |

### 2.3 Blocages de l'Entité

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| 3 gens **non réparables dès le début**, loin du tueur | Corrupt Intervention | Levée au 1er survivant mourant ou après 80/100/120 s (SS) | Signature · effet SS [p90] |
| Un gen devient bloqué au moment où un survivant le **lâche**, peu après un hook | Dead Man's Switch | 25/30/35 s (SS) ; recharge de 50 s (U, CONFLICT-K91-02). **PTB 10.2.0** : 30/35/40 s, recharge 30/35/40 s, déclenchement après plus de 2 s d'arrêt (PTB) | Signature · effet SS [p91] |
| Le gen **le plus avancé** se bloque juste après qu'un **autre gen** est terminé | No Holds Barred (ex-Deadlock) | Se répète à chaque gen terminé (15/20/25 s, U). Renommage 9.0.0 : FACT (audit) | Signature · effet U [p91] |
| Au **pickup** d'un coéquipier, plusieurs gens **libres** se bloquent | Thrilling Tremors | Seuls les gens **non réparés** à ce moment ; 16 s ; recharge 40/35/30 s ; la régression est mise en pause (SS) | Signature · effet SS [p93] |
| **Tous** les gens se bloquent brièvement après chaque **1er** hook d'un survivant | Grim Embrace | Pas au 2e hook du même survivant ; blocage long au 4e jeton (tout U) | Fort · effet U [p90] |
| Un gen aléatoire se bloque juste après une purification ou une bénédiction de totem | Secret Project | Corrélation avec les purifications ; TR qui disparaît ensuite (U) | Fort · effet U [p93] |
| Gen bloqué + grosse régression après un kick, après plusieurs skill checks ratés | Undone | À distinguer de DMS, Grim Embrace, Pop (U ; rework au PTB 10.2.0, SS via audit) | Faible · effet U [p96] |
| Fenêtre bloquée **pour tous** dès le **1er** saut du tueur, avec une icône de minuterie | Bamboozle | 8/12/16 s, une seule fenêtre à la fois, sans effet sur les palettes ; minuterie depuis 9.5.1 (SS). Le blocage basekit n'arrive qu'au 3e vault **du survivant** (30 s, pour lui seul) | Signature · effet SS [p91][audit] |
| Les fenêtres **que vous avez franchies** restent bloquées + Hex allumé | Hex: Crowd Control | Les 4/5/6 dernières fenêtres (SS, rework 9.5.0) | Signature · cœur SS [p94] |
| **Toutes** les fenêtres bloquées au moment où un gen est terminé | Cruel Limits | 20/25/30 s, tous survivants (SS) | Signature · effet SS [p96] |
| Palettes bloquées autour de soi juste après un coup + Hex allumé | Hex: Blood Favour | Se libèrent au bout d'environ 15 s ; rayon LIVE incertain (CONFLICT-3P92-03) | Fort · effet U [p92] |
| Fenêtres **et** palettes bloquées partout à l'alimentation des portes | None Are Free | ≠ No Way Out (interrupteurs), ≠ Blood Warden (sorties) (U) | Signature · effet U [p95] |
| Les **deux** interrupteurs bloqués dès qu'on touche l'un d'eux | No Way Out | 12 s + 6/9/12 s par survivant accroché au moins une fois, max 36/48/60 s ; Loud Noise Notification au tueur (VMS) | Signature · effet VMS [p92] |
| Sorties bloquées au moment d'un hook **après** l'ouverture d'une porte | Blood Warden | Une fois par partie, 40/50/60 s ; auras des survivants en zone de sortie révélées (SS) | Signature · effet SS [p93][audit] |
| 1er coffre ou 1er totem touché aussitôt bloqué | Dominance | Seule la **première** interaction déclenche ; 8/12/16 s ; le tueur voit l'aura **du prop**, pas la vôtre (SS) | Signature · effet SS [p94] |

### 2.4 Totems et Boons

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| Totem Hex allumé **dès le début** | Tout Hex « de départ » : Ruin, Devour Hope, Undying, Blood Favour, Crowd Control, Huntress Lullaby, Third Seal, Haunted Ground, Face the Darkness, Retribution, Overture of Doom, Wretched Fate, Thrill of the Hunt | Identifier l'effet par les autres lignes de la table. **Deux** Hex allumés : suspecter Undying ou Haunted Ground (2 totems, U) | Faible pour l'identité · FACT pour « un Hex existe » |
| Hex qui s'allume **en cours de partie** | 1er hook : Fortune's Fool, Hive Mind, Under Your Thumb (U). Après 4/3/2 stuns ou blinds : Two Can Play (SS). Après plusieurs coups : Nothing but Misery (U). Après 3 survivants différents accrochés : Scared to Death (U). Portes alimentées : NOED (U) | Le **déclencheur** identifie la perk | Fort · voir chaque perk [p91][p93][p95][p96] |
| Totem **purifié qui se rallume** | Hex: Pentimento | Les totems ravivés ne peuvent pas être bénis (SS) ; valeurs U | Signature · mécanisme partiel SS [p92] |
| Hex purifié mais **effet toujours actif** | Hex: Undying | Transfert du Hex sur le totem d'Undying (U) | Fort · effet U [p92] |
| Purification ou bénédiction **très lente** d'un Hex | Hex: Thrill of the Hunt | −8/9/10 % par totem terne restant, max 40/45/50 % (SS ; CONFLICT-K93-02 : fandom donne 10/12/14 %, jugé OUTDATED). **PTB 10.2.0** : rework (PTB) | Fort · effet SS [p93] |
| Boon « éteint » et **impossible à re-bénir** à cet endroit (totem disparu) | Shattered Hope | Le totem est détruit ; auras dans le rayon 6/7/8 s, sauf pour Shadow Step (SS) ; rework au PTB 10.2.0 (PTB) | Signature · effet SS [p94] |
| Hex trouvé tôt **sans aucun effet perceptible** | Hex: Haunted Ground (piège) | Ne pas conclure avant d'avoir éliminé les Hex passifs (Thrill of the Hunt, Undying) | Faible · effet U [p94] |

### 2.5 Sons, rayon de terreur, auras reçues

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| TR et tache rouge qui **disparaissent en pleine chase longue** | Beast of Prey | Undetectable 30/35/40 s à chaque gain de Bloodlust (SS). Bloodlust : paliers à 15 / 25 / 35 s de chase (FACT, VMS [audit]) | Fort · effet SS [p96] |
| TR coupé net près d'un crochet ou d'un gen, **respiration** audible | Insidious | Undetectable après 3/2/1 s d'immobilité, **tant qu'il reste immobile** (SS) ; stinger à la reprise du mouvement | Fort · effet SS [p94] |
| Plus aucun TR juste après **chaque** hook ; fin de partie entièrement silencieuse | Silent Shadow | Perk de The Slasher (10.0.0, SS) ; valeurs U | Fort · effet U [p93] |
| Pas de TR après le hook **de l'Obsession**, puis l'Obsession passe au sauveteur | Furtive Chase | Le transfert au sauveteur est spécifique (U) | Fort · effet U [p93] |
| TR qui disparaît quand un gen dépasse ~70 % | Tinkerer | Se répète gen après gen (U) | Faible · effet U [p93] |
| TR qui disparaît quand on **termine** un gen que le tueur avait kické | Machine Learning | Plus de TR et tueur plus rapide pendant environ 1 min (Haste 8 % ou 10 % : incohérence du seed, U) | Fort · effet U [p93] |
| TR qui **suit l'Obsession blessée** ; le tueur surgit sans TR ailleurs | Dark Devotion | Pendant 35/40/45 s après la perte d'un état de santé de l'Obsession, TR transféré (fixé à 40 m) + tueur Undetectable (SS) | Signature · effet SS [p95] |
| TR **fixe, centré sur un gen kické** | Unforeseen | Aucun tueur visible en approchant (U) | Fort · effet U [p95] |
| TR qui semble venir **du gen le plus éloigné** après ~5 s de réparation + totem allumé | Hex: Overture of Doom | Totem Hex présent (U) | Fort · effet U [p96] |
| TR entendu **plus loin** que la normale pour ce tueur | Distressing (+20/25/30 %, SS) ; Monitor & Abuse (+5/10/15 %, SS) ; add-ons | Distressing : toujours large. M&A : large en chase, mais démarre **plus tard** hors chase | Faible · effets SS [p94][p96] |
| TR qui démarre **plus tard** que prévu hors chase | Monitor & Abuse | −15/20/25 % hors chase (SS ; effet net U) | Faible · effet SS [p96] |
| Heartbeat anormalement **large pendant un portage** | Agitation | Le TR se rétracte à l'accrochage (U ; valeurs PTB U) | Fort · effet U [p93] |
| **Aura rouge du tueur** visible sans perk d'aura **(ni chez vous ni chez un coéquipier : vérifier Match Details)**, à intervalle régulier | Deerstalker | Vous êtes le survivant au plus faible temps de chase cumulé ; toutes les 40/35/30 s. Aura 3 s en LIVE, 4 s au **PTB 10.2.0** (SS ; CONFLICT-K93-01). Réciproque : il voit la vôtre | Signature · mécanisme SS [p93] |
| **Aura jaune d'un gen** visible sans perk + pas de TR | Trail of Torment | Disparaît quand quelqu'un touche le gen (U) | Signature · effet U [p93] |
| Coéquipier au sol (barre d'état) dont **on ne voit pas l'aura** à distance | Knock Out | Down par coup de base : aura visible seulement à 32/24/16 m (SS). Écarter d'abord la **Blindness** (vérifier son HUD : Mindbreaker, Third Seal, Septic Touch, add-ons) | Fort · effet SS [p94] |

### 2.6 Objets, coffres, props

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| L'objet **tombe** au sol à chaque coup de base | Franklin's Demise | Le tueur voit l'aura des objets au sol à 32/48/64 m (SS). Consommation de l'objet après 150/120/90 s : U (CONFLICT-K95-02) | Signature · effet SS [p95] |
| Objet **vide** qui tombe tout seul | Weave Attunement | Oblivious au ramassage (U) | Signature · effet U [p95] |
| **4 coffres ou plus** repérés sur la carte | Hoarder | Base 3 coffres (FACT, SS [audit]) + 2 ; Loud Noise Notification de 4 s à ≤ 32/48/64 m quand un coffre est ouvert ou un objet ramassé (sauf Limited Items) (SS) | Signature · effet SS [p96] |
| Coffres fouillés **refermés** | Human Greed | Peu d'autres mécaniques font ça (U) | Signature · effet U [p95] |
| Flash ou stun « réussi » **sans animation d'aveuglement** | Lightborn | Deuxième tentative sans effet, le tueur vient sur le lanceur (U) | Signature · effet U [p92] |

### 2.7 Comportement du tueur (liens faibles)

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| Arrive droit sur vous **dès le spawn** | Lethal Pursuer (U) | Un jeton de Distortion consommé au début (mécanique U) ; sinon indiscernable du hasard | Faible · effet U [p90] |
| Arrive droit sur vous **après chaque hook**, alors que vous étiez loin | Barbecue & Chilli (au-delà de 60/50/40 m, U) ; Floods of Rage (après un décrochage de Fléau, U) | Distortion ; mouvement du tueur vu par Kindred | Faible · effets U [p91] |
| Après un hook, va droit vers le **gen le plus avancé** | Scourge Hook: Jagged Compass (U) ; Pop (SS) | Pop : chute d'environ 20 % au kick | Faible · [p94][p90] |
| Arrive sur les **soins** sans ligne de vue | A Nurse's Calling | Survivants qui soignent ou sont soignés à 28/30/32 m (VERIFIED, audit 10.1.0). Un soin à plus de 32 m n'est jamais interrompu | Fort · effet VERIFIED [p91] |
| Arrive sur les **duos** de réparation, épargne les solos | Discordance | Un duo l'attire à coup sûr, un solo non (U) | Fort · effet U [p91] |
| Juste après un kick, se retourne vers des survivants **cachés près du gen** | Nowhere to Hide | Survivants à 24 m du gen, révélés 3/4/5 s (VP via audit ; les 18 m du seed = PTB 10.1.0) | Fort · effet VP [p90] |
| Revient en moins de ~16 s sur un gen kické **que vous venez de reprendre** | Surveillance | Aura du gen jaune 8/12/16 s côté tueur ; bruits de réparation audibles +8 m (SS). Aucun indice HUD | Faible · effet SS [p95] |
| Revient pile sur un gen kické juste après un skill check réussi | Call of Brine (alerte : U) ; Gearhead (skill check Good dans les 30 s suivant un coup, U) | CoB : gen kické depuis moins de 90 s. Gearhead : un coup vient d'être porté ailleurs | Faible · [p92] |
| Vous retrouve 2 à 5 s après que vous l'avez semé | Predator (aura 4 s, recharge 60/50/40 s, SS) ; Zanshin Tactics (après un drop de palette, U) | Jeton de Distortion consommé à la fin de la chase | Fort · Predator SS [p94] |
| Coupe le bon chemin après un vault ou une entrée de casier rapide hors de sa vue | I'm All Ears | Action rapide à ≤ 48 m (U) | Faible · effet U [p92] |
| Cible les survivants qui viennent de **terminer un gen** | Bitter Murmur (≤ 16 m du gen, U) ; Rancor (U) | Bitter Murmur : tout le monde est révélé au dernier gen (U) | Faible · effets U [p96][p94] |
| Arrive au **sous-sol** depuis l'autre bout de la carte peu après votre entrée | Territorial Imperative | Tueur à > 24 m ; aura 4/5/6 s ; recharge 45 s (SS) | Faible · effet SS [p94] |
| Arrive après que vous avez fait s'envoler des corbeaux | Spies from the Shadows (U) ; Languid Touch (Exhausted, U) | Languid Touch laisse une icône Exhausted | Faible · [p96][p95] |
| Ouvre des casiers sans raison, puis vise un survivant près d'un casier | Darkness Revealed (≤ 8 m de n'importe quel casier, U) ; Ultimate Weapon (cri + Blindness) | UW laisse un cri et une icône | Faible · effet U [p91] |
| Pendant un **portage**, change de trajectoire vers vous | Awakened Awareness (≤ 16/18/20 m, U) ; Scourge Hook: Hangman's Trick (près d'un crochet Fléau, U) | — | Faible · effets U [p96] |
| Trouve à répétition des survivants blessés et cachés | Bloodhound (flaques rouge vif, +2/3/4 s, SS) ; Stridor (grognements +30/40/50 %, respiration +15/20/25 %, SS) | Indiscernables en jeu ; un bon casque suffit aussi | Faible · effets SS [p96] |
| Lâche volontairement l'Obsession en chase | See How They Run (ex-Play With Your Food) | Renommage 9.4.0 : FACT (audit) ; valeurs U | Faible · effet U [p95] |

### 2.8 Poursuite : palettes, fenêtres, vitesses

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| Palette cassée « trop vite » (base 2,34 s, FACT VMS [audit]) | Brutal Strength (+10/15/20 %, SS) ; Fire Up (+4/5/6 % par gen terminé, max 5 jetons, SS) | Fire Up : l'effet grandit au fil des gens et touche aussi les vaults, pickups et kicks | Faible · effets SS [p92][p95] |
| Le tueur se relève très vite après un stun de palette (base 2 s, SS [audit]) | Enduring | −40/45/50 % (SS) ; pas d'effet quand il porte ; clause « stuns de perks » à confirmer | Fort · effet SS [p92] |
| La palette **explose** au moment du stun | Spirit Fury | Après plusieurs palettes cassées (4/3/2, U) | Signature (hors pouvoir) · effet U [p93] |
| La palette se brise sous vous en fast vault juste après un coup | Dissolution | Dans le TR, fenêtre courte après le coup (U) | Signature · effet U [p94] |
| Le tueur vaulte la fenêtre **presque instantanément** derrière vous | Superior Anatomy (après votre fast vault, U) ; Dark Arrogance (U) ; Fire Up (SS) | Superior Anatomy : seulement juste après **votre** fast vault ; conflit portée / recharge (CONFLICT-L3-94-02) | Faible · [p94][p96][p95] |
| Fente anormalement longue juste après qu'un gen est terminé | Coup de Grâce | +2 jetons par gen, max 5 détenus, +70/75/80 % de portée (SS) ; plafond par partie U | Fort · effet SS [p92] |
| Fente très longue après que le tueur a sauté d'un étage | All-Shaking Thunder | Le tueur prend volontairement les drops (U) | Fort · effet U [p95] |
| Récupération très courte après un coup **réussi** | Keep Them Waiting (5 %/jeton, VERIFIED) ; Help Wanted (après la complétion d'un gen kické, U) | KTW : Obsession présente et évitée | Faible · [p91][p95] |
| Récupération très courte après un coup **raté** | Unrelenting (U) | Mad Grit : aucune pénalité après un raté **en portant** (U) | Faible · [p96][p94] |
| Tueur plus rapide juste après un **blind** | Shadowborn (6/8/10 % pendant 10 s, SS) ; Rampage (stun ou blind, U) | Rampage : grandit avec les palettes cassées | Fort · Shadowborn SS [p96] |
| Tueur plus rapide près des **gens terminés** | Batteries Included | +5 % de Haste à ≤ 16 m d'un gen terminé, persiste 1/3/5 s ; **désactivée dès que les portes sont alimentées** (SS) | Faible · effet SS [p95] |
| Tueur qui ne perd pas de terrain après un coup | Rapid Brutality (U) | — | Faible · effet U [p92] |
| Le tueur frappe en portant sans ralentir après un raté | Mad Grit (U) | — | Signature · effet U [p94] |
| Le wiggle monte lentement, le tueur ne dévie presque pas | Iron Grasp (U ; valeurs PTB U) | — | Fort · effet U [p93] |
| Sabotages, flash saves ou pallet saves qui échouent de peu à répétition | Forever Entwined (ramassage et accrochage plus rapides, U) ; Fire Up (SS) | — | Faible · [p95] |

### 2.9 Portes et fin de partie

| Signal observable | Perks compatibles | Comment discriminer | Confiance du lien |
|---|---|---|---|
| Barre d'ouverture de porte qui **redescend** après relâchement | Haywire | Porte lâchée au-delà d'environ 80 % (U) | Signature · effet U [p95] |
| Ouverture de porte lente pour tous **sauf l'Obsession** | Remember Me | Comparer avec la base de 20 s (FACT, SS [audit]) (U) | Fort · effet U [p93] |
| Voir aussi : Exposed (NOED, Rancor), Broken (Terminus), interrupteurs (No Way Out), sorties (Blood Warden), fenêtres et palettes (None Are Free) | §2.1, §2.3 | — | — |

---

## 3. Règles de déduction consolidées, par phase

> Chaque règle suit le format Observation → Hypothèses → Test/confirmation → Comportement robuste → Erreur à éviter. Toutes sont **HEURISTIC**, sauf les éléments marqués FACT. Les 68 règles des 7 batchs ont été fusionnées : une règle regroupe les perks qui partagent un **déclencheur**.

### 3.A Début de partie (du spawn au premier down)

**A1. Gens bloqués au spawn** · [p90] règle 3
- **Observation** : on apparaît près d'un gen impossible à réparer. 3 gens sont bloqués, tous loin du tueur.
- **Hypothèses** : Corrupt Intervention (80/100/120 s, levée au 1er down ; SS).
- **Test** : les gens se débloquent-ils au premier survivant mourant ?
- **Comportement robuste** :
  - 1 ou 2 survivants sur les gens libres, **près du tueur** ; accepter la chase.
  - Les autres font totems et coffres, ou se placent près des gens bloqués.
  - **Tenir la première chase** : tant que personne n'est au sol, le blocage court jusqu'au bout.
- **Erreur** : se regrouper à 3 sur le seul gen libre ; traverser la carte pour rien.

**A2. Un totem Hex allumé est repéré tôt** · [p91][p92][p94] ; mise en garde [audit]
- **Observation** : flamme ou grésillement près d'un totem au début.
- **Hypothèses** : Hex de départ (voir §2.4). Si aucun effet n'est perceptible : Haunted Ground (piège, U), Undying (protection, U) ou Thrill of the Hunt (purification lente, SS).
- **Test** : quel effet s'arrête après la purification ?
  - Si **l'effet persiste** → Undying (U) **ou** l'effet venait d'un **autre** Hex / d'une perk non-Hex / du pouvoir (on a purifié le mauvais totem) : chercher un 2e totem allumé avant de conclure.
  - Si **tout le monde devient Exposed** → Haunted Ground (U).
- **Comportement robuste** (EXPERT OPINION) : purifier un Hex **quand le tueur est en chase loin** et qu'aucun coéquipier n'est blessé en danger, **pas** « dès qu'il s'allume ». L'audit classe cette consigne absolue parmi les heuristiques dangereuses.
  - En SWF : annoncer la position de tous les totems allumés avant de purifier.
- **Erreur** : purifier par réflexe un Hex « sans effet » pendant qu'un coéquipier blessé est poursuivi (Haunted Ground).

**A3. Un gen lâché a reculé tout seul** · [p91] règle 4
- **Observation** : un gen partiel a perdu de la progression pendant votre absence, sans kick. Le tueur était en poursuite ailleurs.
- **Hypothèses** : Hex: Ruin (100/125/150 %, SS). Écarter Call of Brine et Lay Waste (qui exigent un kick) et Oppression (déclenchée par un kick ailleurs, U).
- **Explications sans perk à écarter d'abord** (FACT [audit]) : un **kick non vu** (le tueur a pu passer entre deux regards ; un gen kické régresse ensuite à −0,25 charge/s) ; un **skill check raté** d'un coéquipier (−10 %) ; une perte instantanée au hook ou au down (Pain Resonance, Eruption, Surge, §3.B). « Le tueur était en poursuite ailleurs » n'est une preuve que si on l'a suivi (aura, cris) pendant toute l'absence.
- **Test** : trouver un totem allumé. Le recul s'arrête-t-il après la purification ?
- **Comportement robuste** : finir les gens entamés plutôt qu'en ouvrir de nouveaux ; ne pas éparpiller la progression ; purifier **en passant**.
- **Erreur** : tout le monde part chercher le totem ; lâcher un gen à 70 % pour aller « toucher » un autre gen.

**A4. La carte montre des coffres en trop, ou des coffres refermés** · [p96] règle 5, [p95]
- **Observation** : au moins 4 coffres (la base est de 3, FACT [audit]) ; ou des coffres fouillés qui sont refermés.
- **Hypothèses** : Hoarder (SS) ; Human Greed (U).
- **Test** : le tueur arrive-t-il sur un coffre qu'on vient d'ouvrir ?
- **Comportement robuste** : n'ouvrir un coffre ou ramasser un objet que si le tueur est localisé loin (Hoarder : ≤ 32/48/64 m, SS) ; ne pas s'attarder près des coffres.
- **Erreur** : ouvrir des coffres en début de partie contre ce tueur.

**A5. Le 1er coffre ou totem touché se bloque aussitôt** · [p94] règle 5
- **Hypothèse** : Dominance (SS).
- **Comportement robuste** : partir du principe que **votre position est connue** (le tueur voit l'aura du prop) ; quitter la zone ; revenir plus tard, car seule la 1re interaction déclenche.
- **Erreur** : attendre la fin du blocage devant le coffre.

**A6. Une aura rouge du tueur apparaît sans perk d'aura** · [p93] règle 1
- **Hypothèse** : Deerstalker. Vous êtes le survivant le moins poursuivi ; aura de 3 s en LIVE (SS, conflit avec 4 s = PTB).
- **À écarter d'abord** : une perk de coéquipier qui montre l'aura du tueur (Babysitter, SS ; Kindred et Salvation's Cry, U : vérifier Match Details, §1.2) et vos propres perks d'aura conditionnelles.
- **Test** : la réapparition suit-elle un intervalle régulier (40/35/30 s) ?
- **Comportement robuste** : il vous a vu aussi. **Bouger** après chaque apparition et se préparer à une chase près d'une tile. Chaque lecture d'aura du tueur de votre côté vous révèle également.
- **Erreur** : rester caché sur place ; enchaîner les perks d'aura contre ce tueur.

**A7. Le rayon de terreur semble « faux »** · [p94] règle 7, [p96]
- **Observation** : TR entendu alors que le tueur est vu loin (aura d'un coéquipier en chase, cri) ; ou TR qui démarre trop tard.
- **Hypothèses** : Distressing (+20/25/30 %, SS) ; Monitor & Abuse (SS) ; add-ons de TR.
- **Test** : comparer avec une distance connue (aura d'un coéquipier, Bond, Alert).
- **Comportement robuste** : **ne pas lâcher un gen au premier battement** ; confirmer direction et distance. Contre Monitor & Abuse : considérer que le premier battement signifie un tueur déjà proche.
- **Erreur** : abandonner les gens en boucle « parce que le cœur bat ».

**A8. Le tueur arrive toujours sur les duos, ou droit sur vous dès le début** · [p91] règle 10, [p90] règle 4
- **Hypothèses** : Discordance (U) ; Lethal Pursuer (U).
- **Comportement robuste** : **1 survivant par gen** (plus efficace en débit total : pas de pénalité coop de 15 %/réparateur ; mais un gen seul prend 90 s au lieu de ~52,9 s à deux, voir §5 n° 2). Au début de partie, se placer près d'une structure forte plutôt qu'en zone morte.
- **Erreur** : croire que le tueur « a de la chance » au spawn ; répéter la même position de départ.

**A9. Premières chases : palettes et fenêtres** · [p91] règle 6, [p94] règle 8, [p92][p93]
- **Observations et hypothèses** :
  - fenêtre bloquée pour tous au **1er** saut du tueur → **Bamboozle** (SS) ;
  - fenêtres franchies qui restent bloquées + Hex → **Crowd Control** (SS) ;
  - le tueur se relève vite après un stun → **Enduring** (SS) ;
  - la palette explose au stun → **Spirit Fury** (U) ;
  - casse rapide → **Brutal Strength** (SS).
- **Test** :
  - Bamboozle : le blocage basekit n'arrive qu'au **3e vault du survivant** et ne vise que lui (FACT, SS [audit]).
  - Spirit Fury : la destruction instantanée n'arrive qu'après plusieurs palettes cassées.
- **Comportement robuste** :
  - contre les perks de fenêtre : jouer les **palettes** et les loops sans fenêtre ;
  - contre les perks **anti-stun** (Enduring, Spirit Fury) : ne pas miser la chase sur le stun ; drop plus tôt (pour bloquer, pas pour étourdir) et transition vers la tile suivante, sans rejouer la palette après un stun ;
  - contre les perks de **casse rapide** (Brutal Strength, Fire Up) : le pré-drop est **moins** rentable (la casse lui coûte moins) ; préférer fenêtres, tiles sans palette et enchaînement de tiles, garder les palettes pour les moments où le drop évite un coup ;
  - compter les palettes cassées.
  - Aucun de ces réflexes n'est universel : un tueur qui a compris que vous pré-droppez peut couper court avant la palette (voir `KILLER_COUNTERPLAY_HANDBOOK.md` §2.2).
- **Erreur** : revenir sur la fenêtre que le tueur vient de sauter ; « jouer » la palette tard contre Enduring + Spirit Fury.

**A10. Premier coup reçu : lire le HUD** · [p92] règle 1, [p94] règle 10, [p95] règle 4, [p92] règle 6
- **Observations et hypothèses** :
  - Mangled + Haemorrhage → **Sloppy Butcher** (SS) ;
  - Exhausted → **Genetic Limits** (U) ;
  - Blindness + Hex → **Third Seal** (U) ;
  - objet au sol → **Franklin's Demise** (SS) ;
  - palettes bloquées autour + Hex → **Blood Favour** (U) ;
  - les **autres** blessés deviennent Oblivious → **Hysteria** (mécanisme SS).
- **Comportement robuste** :
  - Sloppy : soigner **en une seule fois** ou différer (la progression partielle fuit).
  - Genetic Limits : ne pas planifier de perk d'épuisement juste après un coup.
  - Franklin's : ne pas revenir chercher l'objet quand le tueur est proche ; utiliser l'objet **avant** la chase.
  - Blood Favour : fuir vers une fenêtre ou hors de la zone.
- **Erreur** : s'interrompre à 80 % d'un soin sous Sloppy ; camper son objet au sol.

**A11. Stun ou flash sur le tueur : lire le HUD et le tueur** · [p92] règles 7-8, [p95] règle 5, [p94], [p96]
- **Observations et hypothèses** :
  - Exposed → **Hubris** (U) ;
  - on devient l'Obsession + Oblivious → **Nemesis** (U) ;
  - pas d'animation d'aveuglement → **Lightborn** (U) ;
  - écran blanc après le stun → **Two Can Play** (SS) ;
  - tueur plus rapide après un blind → **Shadowborn** (SS) ou **Rampage** (U).
- **Comportement robuste** :
  - après **tout** stun : distance immédiate vers la ressource suivante ;
  - compter les stuns et flashes de l'équipe. Au-delà de 2, chercher un nouveau totem allumé (Two Can Play s'active après 4/3/2) ;
  - Lightborn : arrêter les tentatives dès le 1er échec.
- **Erreur** : rester au contact du tueur après un stun ; spammer la lampe en terrain ouvert.

### 3.B Premier crochet (down → pickup → portage → hook → unhook)

**B1. Au moment du down** · [p91] règle 1, [p93] règle 4, [p94] règles 1 et 10
- **Observations et hypothèses** :
  - on crie en réparant et un gen recule → **Eruption** (mécanisme SS ; gen déjà kické, même loin) ou **Surge** (U ; gen proche, non kické, coup de base) ;
  - on crie en étant dans le TR → **Infectious Fright** (U) ;
  - Hindered près du down → **Forced Hesitation** (U) ;
  - aura du coéquipier au sol invisible → **Knock Out** (SS).
- **Test** :
  - distance et historique du gen : Surge ne dépasse pas ~32 m (U) ; Eruption vise les gens kickés ;
  - Knock Out : l'aura réapparaît en s'approchant (32/24/16 m).
- **Comportement robuste** :
  - **si Eruption est suspectée** (cri + recul déjà observé une fois), lâcher les gens kickés quand une chase tourne mal ; **sans ce signal**, rester : un gen kické lâché continue de régresser (−0,25 charge/s, FACT VMS [audit]) ; dans tous les cas, éloigner les chases des gens avancés ;
  - ne pas suivre la chase de près : rester hors TR, à distance ;
  - sous Knock Out, se rapprocher prudemment de la dernière position connue.
  - FACT : aucune auto-relève basekit en LIVE ; la récupération au sol plafonne à 95 % (VP / VMS [audit]).
- **Erreur** : rester sur un gen kické pendant que le porteur de chase est blessé en zone morte ; conclure qu'un slug invisible « a disparu ».

**B2. Au pickup** · [p93] règle 3
- **Observation** : plusieurs gens libres deviennent bloqués au moment du pickup.
- **Hypothèse** : Thrilling Tremors (16 s, recharge 40/35/30 s, SS).
- **Comportement robuste** : pendant une chase qui va finir en down, **garder 1 ou 2 survivants en train de réparer** (un gen en cours n'est pas bloqué). En SWF, annoncer « down » pour que chacun touche un gen avant le pickup.
- **Erreur** : lâcher son gen pour aller « préparer » le décrochage ; croire à un Hex (il n'y a pas de totem).

**B3. Pendant le portage** · [p92] règle 2, [p93], [p94], [p96]
- **Observations et hypothèses** :
  - Exposed en entrant dans le TR du porteur → **Starstruck** (SS : persiste 26/28/30 s) ;
  - heartbeat très large → **Agitation** (U) ;
  - le tueur frappe en portant sans ralentir → **Mad Grit** (U) ;
  - wiggle inefficace → **Iron Grasp** (U) ;
  - le tueur dévie vers les survivants cachés → **Awakened Awareness** / **Hangman's Trick** (U).
- **Comportement robuste** (quand **l'un de ces signaux** a été observé) :
  - **pas de body block ni de flash save au contact** d'un tueur qui porte, sans Endurance ; rester hors du rayon (Starstruck, Agitation) ;
  - préparer les saves **avant** le pickup ;
  - saboter seulement si le crochet est vraiment proche de soi.
- **Sans aucun signal** : le flash save, le pallet save et le suivi du porteur (Breakout, `PERK_DATABASE.md` §4.10) restent des options normales, surtout en SWF ; la règle ci-dessus n'est pas un interdit général. Le risque de Starstruck (Exposed en entrant dans le TR du porteur) se lit au **premier** portage : vérifier son HUD avant de s'approcher du second.
- **Erreur** : suivre le porteur pour un save ; rester dans le rayon après l'accrochage (Starstruck garde l'Exposed).

**B4. Au hook : cri, explosion, blocage global** · [p90] règles 1, 2 et 7
- **Observations et hypothèses** :
  - cri des réparateurs + explosion du gen **le plus avancé** → **Pain Resonance** (lien Signature, HEURISTIC ; effet SS) ;
  - tous les gens bloqués brièvement → **Grim Embrace** (U) ;
  - gen qui explose sans kick, tueur proche → **Turn Back the Clock** (U).
- **Test** :
  - Pain Res : seulement au 1er hook de chaque survivant sur un crochet Fléau (4 jetons au maximum, FACT SS) ;
  - Grim Embrace : pas de blocage au 2e hook du même survivant (U).
- **Comportement robuste** :
  - **éviter** de garder un seul gen très avancé au moment d'un 1er hook : le finir avant ou répartir la progression (répartir coûte du tempo si Pain Res n'est pas là : à pondérer par ce qu'on a déjà observé) ;
  - après le cri, réparer au moins 5 % pour stopper la régression (FACT, VMS), ou partir si le tueur arrive ;
  - **compter les jetons** (quels survivants ont déjà été accrochés).
- **Erreur** : garder un gen à 90 % « pour plus tard » ; arrêter après le cri puis revenir plus tard.

**B5. Au hook : un statut ou un Hex apparaît chez vous** · [p91] règle 7, [p92] règle 3, [p94] règle 10, [p93]
- **Observations et hypothèses** :
  - vous êtes l'Obsession et devenez Exposed → **Friends 'til the End** (SS, 20 s) ;
  - blessé et Exhausted + Haemorrhage → **Blood Echo** (U) ;
  - blessé, loin et Oblivious → **Alien Instinct** (U) ;
  - Oblivious + Hex après **votre** 1er hook → **Fortune's Fool** (U) ;
  - Hex allumé au 1er hook → **Hive Mind** ou **Under Your Thumb** (U).
- **Comportement robuste** :
  - FTTE : l'Obsession se cache loin du crochet environ 20 s et ne fait pas le sauvetage ;
  - Blood Echo : ne pas compter sur sa perk d'épuisement juste après un hook adverse ;
  - Fortune's Fool : purifier vite (seul pendant 90 s, U) ;
  - Hive Mind : purifier **avant** le 4e gen.
- **Erreur** : l'Obsession reste sur un gen proche du crochet ; ignorer un totem allumé au 1er hook.

**B6. Juste après le hook : les gens** · [p91] règle 2, [p90] règles 2 et 5
- **Observations et hypothèses** :
  - un gen se bloque au moment où quelqu'un le **lâche** → **Dead Man's Switch** (SS) ;
  - le tueur file droit vers un gen avancé et le kick fait perdre environ 20 % → **Pop Goes the Weasel** (SS).
- **Comportement robuste** :
  - DMS : le 1er lâcher après un hook se fait sur un **gen peu avancé** (lâcher « sacrificiel » : en LIVE, le 1er gen lâché consomme l'effet, [p91]).
    - Au **PTB 10.2.0**, le déclenchement exigerait plus de 2 s d'arrêt, ce qui rendrait ce geste plus coûteux (PTB).
  - Pop : pendant la fenêtre qui suit un hook (compter large ; durée U), terminer les gens proches ou revenir réparer 5 % aussitôt après le kick. Un gen au plafond de 8 events ou bloqué est immunisé (FACT [p90]).
  - En SWF, annoncer « DMS ».
- **Erreur** : lâcher un gen à 90 % pour aller décrocher juste après un hook.

**B7. Juste après le hook : le tueur « disparaît »** · [p93] règle 9, [p94] règle 3
- **Observations et hypothèses** :
  - plus de TR juste après le hook → **Silent Shadow** (U) ;
  - TR coupé net près du crochet + respiration audible → **Insidious** (SS) ;
  - après le hook de l'Obsession → **Furtive Chase** (U).
- **Faits utiles pour le décrochage** (FACT [audit]) :
  - l'anti-camp ne se remplit **qu'à moins de 16 m** du crochet (VMS) ; au-delà, rien, donc un proxy camp à 17-20 m **ne déclenche pas** l'anti-camp (l'erreur inverse du seed A-283 a été prouvée) ;
  - pendant un portage, l'anti-camp est en pause ; il est désactivé dès que les portes sont alimentées (SS) ;
  - multiplicateur temporel ×1 / ×2 / ×4 ; pause de 7 s à chaque nouvel accrochage (VP) ;
  - jauge pleine = tentative d'auto-décrochage garantie (SS).
- **Comportement robuste** :
  - « **pas de cœur ≠ tueur parti** » : inspecter les angles morts (murs proches, casiers) ;
  - venir à deux (un appât, un sauveteur) quand l'équipe peut se coordonner (SWF) ; en SoloQ, deux survivants qui viennent sans se parler au même crochet coûtent souvent un gen : un seul s'approche, l'autre continue si quelqu'un est déjà en route (aura via Kindred / Bond, U) ;
  - écouter la respiration.
- **Erreur** : décrocher instantanément « parce qu'il n'y a pas de cœur ».

**B8. Au décrochage** · [p95] règle 2, [p91] règle 9, [p96]
- **Observations et hypothèses** :
  - cri + Exposed du sauveteur, tueur loin (> 32 m) → **Make Your Choice** (SS) ;
  - Haemorrhage + Mangled sur le décroché → **Weeping Wounds** (U) ;
  - le tueur revient droit sur un tiers → **Floods of Rage** (U) ;
  - soins lents ensuite → **Leverage** (U).
- **Protections de décrochage** (FACT, VP [audit], 10.1.0) :
  - Endurance + 10 % de Haste pendant 10 s, + Elusive 10 s ;
  - l'Endurance est perdue sur une action « voyante » (réparer, soigner…) (SS) ;
  - Elusive prend fin si le survivant est frappé ou passe à terre.
- **Comportement robuste** :
  - MYC : décrocher quand le tueur est **proche mais engagé** en chase avec quelqu'un d'autre, ou pendant la recharge (40/50/60 s, SS). Le sauveteur Exposed se met à l'abri ; c'est le décroché (protégé) qui prend l'aggro.
  - Weeping Wounds : ne pas soigner la victime tout de suite si le tueur approche.
  - Floods : les tiers bougent derrière des obstacles.
- **Erreur** : décrocher quand le tueur est clairement loin et revient ; body block en étant Exposed ; rester immobile près du crochet.

### 3.C Milieu de partie

**C1. Après un kick** · [p90] règle 6, [p95] règles 6-7, [p93] règles 2 et 5, [p92]
- **Observations et hypothèses** :
  - le tueur se retourne vers des survivants cachés près du gen → **Nowhere to Hide** (24 m, VP) ;
  - il revient en moins de ~16 s quand on reprend le gen → **Surveillance** (SS) ;
  - cri + Exposed en touchant le gen → **Dragon's Grip** (U) ;
  - aura jaune du gen visible + pas de TR → **Trail of Torment** (U) ;
  - TR fixe sur le gen → **Unforeseen** (U) ;
  - skill check immédiat et difficile → **Overcharge** (U) ;
  - régression rapide → **Call of Brine** (SS).
- **Comportement robuste** (commun, **quand le tueur est encore près du gen** ou qu'un de ces signaux a déjà été vu) :
  - quitter la zone **à plus de 24 m**, puis revenir réparer 5 % (coût : la régression continue pendant l'absence ; si le tueur est déjà reparti loin et qu'aucun signal n'a été vu, reprendre le gen tout de suite est souvent meilleur) ;
  - ne pas reprendre **seul** un gen tout juste kické quand le tueur est proche ; préférer d'autres gens ou attendre environ 30 s (Dragon's Grip, U) ;
  - ToT : tant que l'aura jaune est visible, supposer le tueur furtif et proche. Toucher le gen couperait l'effet (U).
  - Le TR d'un gen kické n'est **pas une information** (Unforeseen, U).
- **Erreur** : rester accroupi à 10 m du gen ; sauter sur le gen kické « pour stopper la régression » alors que le tueur est à 30 m.

**C2. À la complétion d'un gen** · [p91] règle 3, [p96] règle 3, [p92], [p93], [p95]
- **Observations et hypothèses** :
  - le gen **le plus avancé** se bloque → **No Holds Barred** (U) ;
  - **toutes** les fenêtres se bloquent → **Cruel Limits** (SS) ;
  - fente anormalement longue ensuite → **Coup de Grâce** (SS) ;
  - le tueur file sur ceux qui ont fini le gen → **Bitter Murmur** / **Rancor** (U) ;
  - TR disparu + tueur rapide après un gen **kické** terminé → **Machine Learning** (U) ;
  - tueur rapide près des gens terminés → **Batteries Included** (SS).
- **Comportement robuste** :
  - **se disperser immédiatement** après une complétion ;
  - synchroniser les pops et ne pas laisser un seul gen très avancé ;
  - prévenir le coéquipier en chase avant de finir un gen (Cruel Limits : jouer les palettes pendant 20-30 s) ;
  - augmenter la marge de distance et éviter les lignes droites (Coup de Grâce) ;
  - éloigner les chases à plus de 16 m des gens terminés (Batteries, **inactive** dès que les portes sont alimentées).
- **Erreur** : rester à 3 sur le gen qui vient de pop ; compter sur une fenêtre juste après un pop.

**C3. Pendant un soin** · [p91] règle 10, [p96] règles 2 et 9, [p94], [p92], [p93]
- **Observations et hypothèses** :
  - le tueur arrive sur les soins sans ligne de vue → **A Nurse's Calling** (≤ 28/30/32 m, VERIFIED) ;
  - soin lent dans le TR → **Coulrophobia** (SS) ;
  - Blindness + Exhausted en soignant dans le TR → **Septic Touch** (SS) ;
  - cri du soigneur → **Deathbound** (U) ;
  - rafale de skill checks en fin d'auto-soin puis Broken → **No Quarter** (U) ;
  - cris périodiques tant qu'un blessé reste blessé → **Face the Darkness** (U) ;
  - gens lents quand beaucoup de blessés → **Thanatophobia** (U).
- **Comportement robuste** (commun) :
  - **soigner hors TR et loin du tueur** (au-delà de 32 m contre ANC) ;
  - puis se séparer dans deux directions ;
  - se faire soigner par un coéquipier plutôt qu'en auto-soin sous No Quarter ;
  - contre Face the Darkness et Thanatophobia : **soigner les blessés en priorité**, **sauf** contre un tueur qui re-blesse presque gratuitement (Legion, Plague en Corrupt Purge, tueurs à coup unique) : là, un soin complet n'est pas toujours rentable et jouer blessé peut être le bon choix (voir `KILLER_COUNTERPLAY_HANDBOOK.md`, fiches Legion et Plague ; arbitrage HEURISTIC).
- **Erreur** : soigner au pied du crochet ou d'un gen patrouillé ; commencer un soin dans le TR puis compter sur Lithe ou Sprint Burst.

**C4. Dynamiques d'Obsession** · [p95] règle 3, [p91], [p96] règle 10
- **Observations et hypothèses** :
  - le TR suit l'Obsession blessée → **Dark Devotion** (SS) ;
  - le tueur évite l'Obsession → **Keep Them Waiting** (VERIFIED) / **Cull the Weak** (U) ;
  - l'Obsession change au fil de la partie → **Celestial Witness** / **Game Afoot** (U) ;
  - le tueur lâche l'Obsession en chase → **See How They Run** (U) ;
  - l'Obsession répare lentement + Hex → **Wretched Fate** (U).
- **Comportement robuste** :
  - Dark Devotion : l'Obsession blessée **ne rejoint pas** les autres pendant environ 45 s ; les autres ne se fient pas au TR.
  - KTW : l'Obsession prend les coups protecteurs pour vider les jetons.
  - CtW : l'Obsession devient sauveteuse et soigneuse désignée ; ne pas la sacrifier « pour couper la perk ».
  - Celestial Witness : l'Obsession bouge régulièrement.
  - Wretched Fate : l'Obsession fait les totems plutôt que les gens.
- **Erreur** : lâcher un gen parce que le TR arrive (c'est l'Obsession) ; laisser l'Obsession cachée toute la partie.

**C5. Le tueur « disparaît » en chase ou revient trop vite** · [p96] règle 4, [p94] règle 4, [p93] règle 10
- **Observations et hypothèses** :
  - TR et tache rouge coupés en chase longue → **Beast of Prey** (SS) ;
  - retour 2 à 5 s après l'avoir semé → **Predator** (SS) ou **Zanshin Tactics** (U) ;
  - TR qui disparaît vers 70 % de progression → **Tinkerer** (U).
- **Comportement robuste** :
  - **garder la caméra sur le tueur** ;
  - après l'avoir semé, continuer à bouger environ 4 s puis **changer d'axe** ;
  - près de 70 %, un survivant surveille pendant que l'autre répare.
- **Erreur** : croire que la chase est finie parce que la musique s'arrête ; se cacher accroupi au coin du mur où il vous a perdu.

**C6. Totems en milieu de partie** · [p92] règles 9-10, [p93] règle 6, [p94] règles 6 et 9, [p95] règle 5
- **Observations et hypothèses** :
  - totem purifié qui se rallume → **Pentimento** (U) ;
  - Hex purifié dont l'effet continue → **Undying** (U) ;
  - Oblivious après avoir purifié un terne → **Retribution** (U) ;
  - gen bloqué après une purification → **Secret Project** (U) ;
  - Boon détruit → **Shattered Hope** (SS) ;
  - purification lente → **Thrill of the Hunt** (SS) ;
  - Hex allumé après des stuns → **Two Can Play** (SS) ; après plusieurs coups → **Nothing but Misery** (U) ; après 3 survivants différents accrochés → **Scared to Death** (U).
- **Comportement robuste** : voir l'arbitrage des totems au §5.
  - Pentimento, Retribution, Secret Project : **réduire** les purifications de ternes et re-purifier les totems rallumés.
  - Undying : purifier tous les totems allumés.
  - Shattered Hope : sortir du rayon du Boon quand le tueur approche.
  - Thrill : purifier d'abord des ternes, chaque terne retiré réduit le malus (SS).
- **Erreur** : « totem clean » systématique contre Pentimento ; célébrer la purification de Ruin sans vérifier que l'effet a cessé.

**C7. Objets** · [p96] règle 1, [p95] règle 4
- **Observations et hypothèses** :
  - Exhausted en sortant un objet → **Overwhelming Presence** (≤ 32 m, SS) ;
  - objet qui tombe au coup de base → **Franklin's Demise** (SS) ;
  - objet vide qui tombe seul, ou Oblivious au ramassage → **Weave Attunement** (U).
- **Comportement robuste** :
  - n'utiliser aucun objet quand le tueur peut être à ≤ 32 m ;
  - les objets au sol sont des **pièges à aura** : ne pas les ramasser si le tueur est proche.
- **Erreur** : sortir le medkit dans le TR et compter sur Sprint Burst.

**C8. Le 3-gen et les pointes** · [p90] règle 8, [p93]
- **Observation** : des pointes autour d'un gen.
- **FACT** (VMS) : au moins 4 events consommés ; au 8e, le tueur ne peut plus interagir avec le gen ; seuls les skill checks ratés le font encore régresser [p90][audit].
- **Hypothèses** : build de ralentissement (voir §4.1). Hive Mind si « 1 gen restant » est proche (U).
- **Comportement robuste** : un gen avancé à pointes a une **valeur défensive** (peu de kicks restants). « Le 3-gen infini n'existe plus » : conséquence du plafond de 8 events (HEURISTIC [p90]).
- **Erreur** : abandonner un gen au plafond, qui ne peut plus être kické.

### 3.D Endgame (portes alimentées → sortie / EGC)

**D1. Au moment où les portes s'alimentent : lire le HUD de tous** · [p91] règle 5, [p92] règle 4, [p95] règle 9, [p94]
- **Observations et hypothèses** :
  - **Exposed** pour tous → **NOED** (U) ;
  - **Broken** chez les blessés, au sol et accrochés → **Terminus** (SS, conflit de durée) ;
  - fenêtres et palettes bloquées → **None Are Free** (U) ;
  - Obsession Exposed → **Rancor** (U).
- **Faits de contexte** (FACT, VP [audit], 10.1.0) :
  - les protections de décrochage **restent** (Endurance + Haste 10 s), seule **Elusive** disparaît ;
  - l'anti-camp est désactivé (SS) ;
  - Batteries Included se désactive (SS [p95]).
- **Comportement robuste** (à appliquer **quand NOED / Terminus / None Are Free sont plausibles**, par exemple aucun Hex ni perk d'endgame encore exclu) :
  - **se soigner avant la dernière gen** quand c'est possible (exception : un survivant qui porte Adrenaline, `PERK_DATABASE.md` §4.8, perd son soin s'il est déjà sain) ;
  - finir le dernier gen en groupe, **sain**, sans chase, près des portes. Ce n'est pas toujours faisable ni optimal : contre un tueur qui tient un 3-gen ou si une chase lointaine occupe le tueur, finir le gen **pendant** cette chase peut rapporter plus que d'attendre (arbitrage HEURISTIC, non mesuré) ;
  - jouer « un coup = à terre » si l'on est blessé ;
  - NOED : à 2, trouver le totem (son aura s'élargit, U) pendant que le 3e ouvre ;
  - Terminus : ouvrir une porte vite pour lancer le compte à rebours.
- **Erreur** : sauvetage « héroïque » en étant Exposed ; compter sur Adrenaline pour se soigner sous Terminus ; finir le dernier gen en chase en comptant sur une palette.

**D2. À l'interrupteur** · [p92] règle 5, [p93], [p95] règle 8
- **Observations et hypothèses** :
  - les **deux** interrupteurs se bloquent au premier contact → **No Way Out** (VMS : 12 s + 6/9/12 s par jeton, max 36/48/60 s ; le tueur reçoit une notification) ;
  - ouverture lente pour tous sauf l'Obsession → **Remember Me** (U) ;
  - la barre redescend après relâchement → **Haywire** (U).
- **Faits** : ouverture de porte 20 s, progression conservée (FACT, SS [audit]).
- **Comportement robuste** :
  - NWO : **toucher l'interrupteur puis s'éloigner**, revenir quand le blocage prend fin, ne pas y mener le tueur ; tester l'interrupteur tôt ;
  - Remember Me : faire ouvrir par l'Obsession si elle est libre ;
  - Haywire : ne pas lâcher une porte au-delà d'environ 80 %.
- **Erreur** : venir ouvrir en étant poursuivi ; « 99 % de porte » contre Haywire.

**D3. Porte ouverte, un coéquipier porté ou au sol** · [p93] règle 8
- **Hypothèse** : Blood Warden (une fois par partie, 40/50/60 s, SS).
- **Faits** : EGC de 120 s après l'ouverture d'une porte ; il avance à moitié vitesse si un survivant est au sol ou accroché, et n'est jamais arrêté (FACT, SS [audit]).
- **Comportement robuste** : **sortir avant l'accrochage** ou empêcher le hook (sabotage, pallet save, flash save). Ne jamais attendre dans la zone de sortie : les auras y sont révélées (SS).
- **Erreur** : attendre en sortie pendant que le tueur accroche ; décrocher sous le blocage sans Endurance.

**D4. Endgame silencieux, ou tout le monde révélé** · [p93], [p96]
- **Hypothèses** :
  - aucun TR pendant tout l'endgame → **Silent Shadow** (U) ;
  - le tueur sait où tout le monde se trouve à l'ouverture de l'endgame → **Bitter Murmur** (U).
- **Comportement robuste** :
  - supposer le tueur proche à tout moment ; ouvrir les portes à deux (un guetteur) ;
  - au dernier gen, ne pas courir droit vers la porte la plus proche du tueur.
- **Erreur** : décrocher « parce qu'il n'y a pas de cœur ».

---

## 4. Combos fréquents et comment les casser

> Seuls les combos **mentionnés dans les batchs** figurent ici. La fréquence n'est pas mesurée (NightLight inaccessible, [p90]) : « fréquent » = cité par le seed ou la communauté (CO), pas une donnée.

### 4.1 Slowdown (générateurs)

| Combo | Signature combinée | Comment le casser | Nature / source |
|---|---|---|---|
| **Pain Resonance + Dead Man's Switch** | Au 1er hook, cri + explosion, puis le gen **lâché à cause du cri** se bloque | Après le cri : **reprendre tout de suite** ou changer de gen, sans stop-and-go ; le 1er lâcher se fait sur un gen peu avancé | Combo : CO (titres de forum et guide Steam, [p90] [5]). **PTB 10.2.0** : la note de dev vise explicitement les combos avec interruptions forcées (déclenchement après plus de 2 s d'arrêt, PTB [p91]) |
| **Pain Resonance + Grim Embrace** (Artist) | Explosion + blocage global à chaque nouveau survivant accroché | Pas de gen très avancé isolé au 1er hook ; utiliser les blocages courts pour se déplacer ou sauver ; tenir les chases pour ne pas donner 4 premiers hooks rapides. Un gen bloqué ne subit pas de perte instantanée (FACT [p90]) | HEURISTIC [p90] ; Grim Embrace U |
| **Kicks + régression** (Pop, Eruption, Call of Brine) **+ Surveillance** | Le tueur kicke beaucoup puis revient pile quand on reprend un gen kické | Reprendre un gen kické **puis bouger** (leurre) ; en SWF, un seul survivant reprend, les autres ailleurs ; préférer finir des gens non kickés | HEURISTIC [p95] |
| **Hex: Ruin + Hex: Undying** | Ruin purifiée, mais les gens reculent toujours | Purifier **tous** les totems allumés ; plus tard, purifier Undying en premier | HEURISTIC [p92] ; Undying U |
| **Empilement de régressions** (Ruin + Call of Brine + Overcharge + Lay Waste) | Gens qui fondent de plusieurs façons | Les Diminishing Returns 9.6.0 (100/50/25/12,5/5 %, add-ons exclus, VP) réduisent **peut-être** cet empilement. Contre-mesure robuste : réparer 5 % stoppe toute régression (FACT, VMS) ; finir les gens | Rendement de l'empilement : **HYP** (les notes 9.6.0 ne listent pas les catégories ; le manuel du jeu 9.6.1 les listerait mais **n'a pas été consulté** [p90][audit]) |
| **Corrupt Intervention** en ouverture de build | 3 gens bloqués au spawn | Tenir la 1re chase (le 1er down lève le blocage) ; 1-2 survivants sur les gens proches du tueur | HEURISTIC [p90] |

### 4.2 Information / aura

| Combo | Signature combinée | Comment le casser | Nature / source |
|---|---|---|---|
| **Lethal Pursuer + auras** (BBQ, Nurse's Calling…) | Auras qui semblent « longues » ; ruée au spawn | Distortion ; bouger juste après chaque fenêtre d'aura ; se placer près d'une structure forte au spawn | HEURISTIC [p90] ; l'extension de +2 s est U |
| **Franklin's Demise + Weave Attunement** | Objets au sol partout, Oblivious au ramassage | **Ignorer** les objets au sol ; utiliser les objets avant la chase | HEURISTIC [p95] ; Weave U |
| **Hoarder / Dominance / Human Greed** (props) | Coffres en trop, bloqués ou refermés | Ne toucher un prop qu'avec le tueur localisé loin ; partir après la 1re interaction | HEURISTIC [p94][p95][p96] |

### 4.3 Poursuite

| Combo | Signature combinée | Comment le casser | Nature / source |
|---|---|---|---|
| **Enduring + Spirit Fury** (± Brutal Strength) | Stun très court, puis palette qui explose au stun | Compter les palettes cassées ; ne plus miser sur le stun : drop plus tôt pour bloquer, puis transition immédiate ; garder les palettes fortes pour plus tard. Si Brutal Strength s'ajoute, chaque palette lâchée coûte encore moins au tueur : privilégier fenêtres et enchaînement de tiles | HEURISTIC [p92][p93] ; Spirit Fury U |
| **Keep Them Waiting** (Obsession) | Récupérations de plus en plus courtes sur les non-Obsession | L'Obsession fait les protection hits ; ne pas compter sur la distance gagnée après un coup | HEURISTIC [p91] |
| **Perks de vault** (Bamboozle, Crowd Control, Cruel Limits) | Fenêtres bloquées selon divers déclencheurs | Jouer les **palettes** et les loops sans fenêtre ; anticiper la tile suivante | HEURISTIC [p91][p94][p96] |

### 4.4 Endgame

| Combo | Signature combinée | Comment le casser | Nature / source |
|---|---|---|---|
| **Terminus + NOED / No Way Out** | Broken + Exposed à l'alimentation ; interrupteurs bloqués | **Se soigner avant la dernière gen** ; purifier les ternes en passant pendant la partie (contre NOED, sous réserve du §5) ; toucher l'interrupteur puis s'éloigner ; trouver le totem NOED à deux | HEURISTIC [p92] (« forte seulement en synergie NOED / No Way Out ») |
| **No Way Out vs Blood Warden** | NWO bloque les **interrupteurs** au 1er contact ; BW bloque les **sorties** au hook après l'ouverture | NWO : garder un survivant jamais accroché limite les jetons. BW : sortir avant le hook | HEURISTIC [p92][p93] |
| **None Are Free** (+ tueur de chase) | Fenêtres et palettes bloquées au moment des portes | Dernier gen fini en groupe, sain, près des portes | HEURISTIC [p95] ; U |

### 4.5 Hex (protection et pièges)

| Combo | Signature combinée | Comment le casser | Nature / source |
|---|---|---|---|
| **Undying + autre Hex** | Effet qui survit à la purification | Purifier tous les totems allumés ; SWF : annoncer leurs positions | HEURISTIC [p92] |
| **Thrill of the Hunt + autres Hex** | Purification lente d'un Hex protégé | Purifier d'abord des **ternes** (moins de jetons), purifier le Hex quand le tueur est loin | HEURISTIC [p93] (« protège surtout d'autres Hex ») |
| **Pentimento + Thrill of the Hunt** | Totems rallumés, qui peuvent redonner des jetons | Re-purifier aussitôt ; limiter la purification des ternes | HEURISTIC [p93] ; Pentimento U |
| **Pentimento + Shattered Hope** | Boon détruit, puis totem réutilisé par le tueur | Placer les Boons dans une zone morte ; prévoir un 2e emplacement | HEURISTIC [p94] |
| **Haunted Ground** (piège seul) | Hex visible « sans effet » | Ne purifier qu'avec le tueur loin et personne en danger | HEURISTIC [p94] ; U |

---

## 5. Comportements robustes « par défaut » (on ne sait rien)

> **EXPERT OPINION** : consolidation des « adaptations robustes » récurrentes des batchs. Chaque ligne indique quelles perks elle neutralise, et donc pourquoi elle reste bonne sans certitude.
>
> **Limites (audit §26)** : ce sont des **options par défaut**, pas des règles. La colonne « Coût » n'est pas mesurée ; plusieurs réflexes se contredisent entre eux (ex. 1 survivant par gen vs builds de réparation groupée ; ne pas suivre une chase vs saves SWF) et doivent être abandonnés dès qu'un signal écarte la perk visée. Appliqués tous à la fois, ils rendent le jeu très passif : c'est exploitable par un tueur qui n'a **aucune** de ces perks. En **SoloQ**, les réflexes qui supposent une coordination (#5, #13, annonces) ne s'appliquent que par signaux visibles.

| # | Réflexe par défaut | Neutralise ou atténue | Coût si la perk est absente | Réserves |
|---|---|---|---|---|
| 1 | **Ne jamais laisser un seul gen très avancé isolé** au moment d'un hook ou d'une pop ; finir les gens entamés plutôt qu'en ouvrir de nouveaux | Pain Res, Pop, No Holds Barred, Jagged Compass, Lay Waste, DMS, Ruin | Faible : c'est aussi l'économie de base des gens | — |
| 2 | **1 survivant par gen** hors sprint final | Discordance ; pénalité coop (−15 % par réparateur supplémentaire, FACT SS [audit]) | En débit total, positif : 2 gens solo = 2 charges/s contre 1,7 charge/s pour un duo (85 % × 2). Mais chaque gen reste exposé plus longtemps : 90 s seul contre ~52,9 s à deux, ~42,9 s à trois (calcul sur les valeurs de l'audit) | Contre Pop, Pain Res ou un 3-gen, finir **un** gen vite peut valoir plus que le débit ; les builds de réparation groupée (Teamwork: Full Circuit / Soft-Spoken, `PERK_DATABASE.md` §4.10) changent le calcul |
| 3 | **Réparer 5 % pour stopper une régression** ; ne pas « tapoter » | Toutes les régressions (Ruin, CoB, Overcharge, Oppression, Eruption, Pop…) | — | FACT (VMS [audit]) |
| 4 | **Après un hook, lâcher d'abord un gen peu avancé** si l'on doit partir | DMS | Nul | Au PTB 10.2.0 le lâcher doit durer plus de 2 s (PTB) |
| 5 | **Garder 1-2 réparateurs actifs** quand une chase va finir en down | Thrilling Tremors | Nul | — |
| 6 | **Lâcher les gens kickés quand une chase tourne mal** ; éloigner les chases des gens | Eruption, Surge, Batteries Included | **Moyen** : un gen kické lâché régresse de 0,25 charge/s (≈ 0,28 %/s, FACT VMS [audit]) | À réserver aux parties où Eruption/Surge sont plausibles (§3.B1) ; éloigner les chases des gens reste bon dans tous les cas |
| 7 | **Soigner hors TR et loin du tueur**, en une seule fois, puis se séparer | Nurse's Calling, Coulrophobia, Septic Touch, Deathbound, Sloppy Butcher, Unnerving Presence | Faible : quelques secondes de trajet | — |
| 8 | **Se soigner avant la dernière gen** ; finir le dernier gen **sain, groupé, près des portes, sans chase** | Terminus, NOED, None Are Free, Rancor, Bitter Murmur | Moyen : tempo | Pas toujours faisable (3-gen, chase en cours) ; inutile pour le porteur d'Adrenaline (§3.D1) |
| 9 | **Totems : arbitrage** : purifier les **ternes en passant** quand ça ne coûte rien (anti-NOED, [p91]), **sauf** si Pentimento, Retribution ou Secret Project sont suspectés. Purifier un **Hex** quand le tueur est en chase loin, pas « dès qu'il s'allume » | NOED, Hex divers ; évite les pièges Haunted Ground / Retribution / Pentimento / Secret Project | Faible si fait en passant | Les batchs se contredisent en partie : [p91] pousse la purification des ternes, [p92][p93] la freinent. L'audit classe « purifiez un Hex dès qu'il s'allume » comme conseil dangereux |
| 10 | **Exposed = un coup, et vous êtes à terre** : aucune prise de risque tant que l'icône est là ; l'Endurance transforme ce coup en Deep Wound (FACT, SS [audit]) | NOED, MYC, FTTE, Starstruck, Dragon's Grip, Hubris, Iron Maiden, Ravenous, Devour, Haunted Ground | Nul | — |
| 11 | **« Pas de cœur ≠ tueur parti »** : pas de décrochage ni de réparation tranquille sur le seul silence ; inspecter les angles morts, venir à deux (SWF) | Insidious, Silent Shadow, Furtive Chase, Beast of Prey, Tinkerer, Machine Learning, Dark Devotion, Unforeseen, Overture, Trail of Torment, Monitor & Abuse ; statut Oblivious | Faible à moyen : la vérification coûte du temps au crochet (le décroché avance vers la phase suivante) | Undetectable supprime TR et tache rouge (FACT, SS [audit]) |
| 12 | **Bouger après chaque événement révélateur** : hook, pop, fin de chase, cri, drop de palette, kick près de soi | BBQ, Floods, Predator, Zanshin, Nowhere to Hide, Bitter Murmur, THWACK!, Infectious Fright, Deerstalker, Celestial Witness | Faible | Aucune icône ne signale une aura lue (§1.2) |
| 13 | **Ne pas suivre une chase de près** ; saves à distance, préparés avant le pickup | Infectious Fright, Forced Hesitation, Starstruck, Mad Grit, Agitation, Wandering Eye | Moyen : moins de saves improvisés | Contredit le suivi du porteur des builds SWF (Breakout, flash save, `PERK_DATABASE.md` §4.10) : sans signal de Starstruck / Mad Grit / Infectious Fright, le suivi préparé reste légitime (§3.B3) |
| 14 | **Lire le HUD après chaque événement tueur** (coup, down, pickup, hook, stun, pop, portes) | Toutes les perks à statut (§2.1) | Nul | — |
| 15 | **Ne pas utiliser d'objet ni ramasser un objet au sol près du tueur** | Overwhelming Presence, Franklin's, Weave Attunement, Hoarder | Faible | — |
| 16 | **Palettes : ne pas miser la chase sur le stun** ; drop pour bloquer puis transition ; compter les palettes cassées | Enduring, Spirit Fury, Rampage | Moyen selon la tile | **Pas** contre Brutal Strength / Fire Up (casse moins chère : le pré-drop lui fait gagner du temps ; préférer fenêtres et tiles sans palette) ; Dissolution concerne le fast vault d'une palette, pas le drop. Un tueur qui attend les pré-drops rend ce réflexe exploitable (`KILLER_COUNTERPLAY_HANDBOOK.md` §2.2) |
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
- **Méthode** : à chaque coup, down, pickup, hook, stun, pop et à l'alimentation des portes, regarder ses icônes **et** les portraits des coéquipiers dans les 2 s.
- **Métrique** : événements balayés / événements survenus (auto-évaluation, idéalement en revoyant sa propre capture).
- **Erreur typique** : ne regarder que sa propre barre ; confondre un effet de pouvoir avec une perk (§1.4).
- **Réussite** : ≥ 9 événements sur 10 balayés.

**Drill 3 : Compteurs de jetons**
- **Objectif** : anticiper les perks à jetons.
- **Méthode** : tenir de tête (ou annoncer en SWF) :
  - **quels survivants ont été accrochés au moins une fois** : Pain Res (4 jetons, SS), No Way Out (jetons, VMS), Grim Embrace, Ravenous, None Are Free (U) ;
  - le **nombre de gens terminés** : Coup de Grâce (+2 jetons par gen, SS), Fire Up (+1 par gen, max 5, SS) ;
  - les **stuns et blinds de l'équipe** : Two Can Play (4/3/2, SS).
- **Métrique** : écart entre le compte annoncé et la réalité à chaque hook.
- **Erreur typique** : compter les hooks au lieu des **survivants différents** accrochés.
- **Réussite** : compte exact à chaque 1er hook pendant 10 parties.

**Drill 4 : Registre des totems**
- **Objectif** : repérer Hex, rallumages et transferts.
- **Méthode** : sur 5 totems par partie (FACT, SS [audit]), noter l'état de chacun (terne, allumé, purifié, béni, rallumé) et le moment où il a changé.
- **Métrique** : totems localisés à 2 gens restants ; Hex identifiés par leur effet avant la purification.
- **Erreur typique** : purifier un Hex sans avoir d'abord éliminé la piste Haunted Ground (§3.A2).
- **Réussite** : chaque totem allumé est relié à un effet observé avant d'être purifié.

**Drill 5 : Test de la barre de gen**
- **Objectif** : distinguer Ruin, Pop, Call of Brine, Pain Res et Eruption.
- **Méthode** :
  - revenir sur un gen lâché **sans kick** : recul ou non ? (Ruin) ;
  - observer la chute au kick : environ 5 % (base, FACT) ou environ 20 % (Pop, SS) ;
  - noter l'instant d'une explosion : hook (Pain Res), down (Eruption / Surge), pickup (blocage Thrilling Tremors).
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
- **Objectif** : réflexe contre le stealth (Insidious, Silent Shadow, Beast of Prey, Dark Devotion…).
- **Méthode** : chaque fois que le TR disparaît près d'un crochet ou en chase, énoncer la cause candidate et faire une vérification visuelle (angle mort, casier, arrière) **avant** d'agir.
- **Métrique** : décrochages faits sans vérification visuelle (cible : 0).
- **Erreur typique** : décrocher « parce qu'il n'y a pas de cœur ».
- **Réussite** : 0 décrochage non vérifié sur 10 parties.

**Drill 8 : Checklist des portes alimentées**
- **Objectif** : lire l'endgame en 5 s.
- **Méthode** : au moment où les portes s'alimentent, passer la liste suivante :
  1. Exposed (NOED / Rancor) ?
  2. Broken (Terminus) ?
  3. Fenêtres et palettes bloquées (None Are Free) ?
  4. Qui est blessé ?
  5. Au 1er contact avec l'interrupteur : bloqué (NWO) ?
- **Métrique** : checklist complétée avant la 1re décision de l'endgame.
- **Erreur typique** : courir à la porte la plus proche sans lire le HUD.
- **Réussite** : checklist faite dans ≥ 9 endgames sur 10.

---

## 7. Limites : perks aux valeurs UNCERTAIN (ne pas s'appuyer sur leurs chiffres)

> Cause : quota WebSearch épuisé pendant le lot 3 (entre 4 et 12 recherches par page). Les valeurs ci-dessous viennent du seed (« NON RE-VÉRIFIÉ ») ou de sources en conflit. Leurs **mécanismes** restent utilisables comme HEURISTIC (§2-3) ; leurs **chiffres** non.

### 7.1 Perks dont l'effet et les valeurs sont entièrement non re-vérifiés (valeurs du seed)

| Batch | Perks |
|---|---|
| [p90] | Grim Embrace, Lethal Pursuer |
| [p91] | Barbecue & Chilli, Surge (valeurs ; le nom est vérifié), No Holds Barred (valeurs), Hex: No One Escapes Death, Turn Back the Clock, Celestial Witness, Discordance, Darkness Revealed, Scourge Hook: Floods of Rage, Ultimate Weapon, Scourge Hook: Weeping Wounds (valeurs), Hex: Fortune's Fool (valeurs) |
| [p92] | Hex: Undying, Hex: Pentimento (valeurs ; « non bénissable » est SS), Hex: Devour Hope, Hex: Blood Favour, Thanatophobia, Deathbound, Overcharge, Oppression, Lay Waste, Rapid Brutality, Lightborn, Nemesis, Gearhead, I'm All Ears |
| [p93] | Infectious Fright, Tinkerer, Spirit Fury, Hex: Face the Darkness, Agitation, Iron Grasp, Remember Me, Dragon's Grip, Furtive Chase, Machine Learning, Trail of Torment, Silent Shadow (valeurs ; l'origine Slasher 10.0.0 est SS), Hex: Retribution, Mindbreaker, Hex: Hive Mind, Secret Project, Scourge Hook: Monstrous Shrine |
| [p94] | Scourge Hook: Jagged Compass, Hex: Huntress Lullaby, Unnerving Presence, Hubris, Dissolution, Superior Anatomy, Merciless Storm, Hex: Haunted Ground, Rancor, Hex: The Third Seal, Iron Maiden, Mad Grit, Zanshin Tactics, Blood Echo, Forced Penance, Forced Hesitation, Genetic Limits, Alien Instinct |
| [p95] | Unforeseen, Languid Touch, Weave Attunement, Human Greed, All-Shaking Thunder, Forever Entwined, Hex: Nothing but Misery, None Are Free, Help Wanted, Phantom Fear, Haywire, Hex: Under Your Thumb, See How They Run (valeurs ; le renommage 9.4.0 est vérifié), Cull the Weak (valeurs ; le renommage 9.4.0 est vérifié) |
| [p96] | Awakened Awareness, Game Afoot, THWACK!, Leverage, Unbound, Undone, Dark Arrogance, Hex: Wretched Fate, No Quarter, Scourge Hook: Hangman's Trick, Hex: Overture of Doom, Ravenous, Wandering Eye, Hex: Scared to Death, Rampage, Spies from the Shadows, Unrelenting, Bitter Murmur |

### 7.2 Perks vérifiées, mais avec une valeur partielle incertaine ou en conflit

| Perk | Partie UNCERTAIN | Référence |
|---|---|---|
| Pop Goes the Weasel | Fenêtre de 35/40/45 s ; usage unique par hook | CONFLICT-L3P90-03 [p90] |
| Scourge Hook: Pain Resonance | Repli sur un autre gen si le gen visé est au plafond (D-010) | [p90] |
| Eruption | Perte **10 % ou 5 %** ; aura 8/10/12 s ; recharge 30 s | CONFLICT-K91-01 [p91] ; CONFLICT-L3P90-01 (patch 9.2.0) |
| Dead Man's Switch | Recharge LIVE de 50 s | CONFLICT-K91-02 [p91] |
| Keep Them Waiting | Plafonds 6/7/8 jetons, 30/35/40 % ; perte de jetons sur l'Obsession | [p91] |
| Bamboozle | Bonus de vault de 5/10/15 % encore présent en LIVE ? | [p91][audit] |
| Enduring | Clause « ne s'applique plus aux stuns de perks » | [p92] |
| Coup de Grâce | Plafond de 10 jetons par partie | CONFLICT-3P92-02 [p92] |
| Terminus | 20/25/30 s (SS) contre 35/40/45 s (seed) | CONFLICT-3P92-01 [p92] |
| Call of Brine | Mécanisme d'alerte sur skill check | [p92] |
| Deerstalker | Aura LIVE de 3 s (4 s = PTB ?) | CONFLICT-K93-01 [p93] |
| Hex: Thrill of the Hunt | 8/9/10 % (retenu) contre 10/12/14 % (fandom, OUTDATED probable) ; notification de purification | CONFLICT-K93-02 [p93] |
| Hex: Crowd Control | Bonus de vault +15 %, aura 24 m | [p94] |
| Coulrophobia | Aiguille de skill check +50 % ; sens nerf / buff de 10.1.0 | [p94] |
| Insidious | Version persistante = PTB uniquement | CONFLICT-L3-94-01 [p94] |
| Hysteria | 20/25/30 s + recharge 30 s, **ou** 30/35/40 s + recharge 20 s | CONFLICT-K95-01 [p95] |
| Franklin's Demise | Objet consommé après 150/120/90 s | CONFLICT-K95-02 [p95] |
| Monitor & Abuse | Effet net du TR hors chase | [p96] |
| Septic Touch | Déclenchement en soignant **autrui** | [p96] |
| Beast of Prey | Fin de l'Undetectable à la perte de Bloodlust | [p96] |

### 7.3 Mécaniques transverses non établies (ne pas en faire des signaux certains)

- **Visibilité des crochets Fléau** côté survivant : non établie ([p90] Q6, [p91] Q6, [p94] Q2).
- **Distortion** : mécanique non re-vérifiée ([p90]). « Les casiers bloquent les auras » : U ([p91] Q7, [p90]).
- **Calm Spirit contre les cris** (Infectious Fright, Face the Darkness) : à vérifier au lot 2 ([p93]).
- **Diminishing Returns** : seuls les principes 9.6.0 sont vérifiés (VP). Les notes 9.6.0 ne listent pas les modificateurs concernés ; selon l'audit, **le manuel du jeu (9.6.1) les liste, mais il n'a pas été consulté** : on ne sait donc pas si blocages, pertes instantanées, régressions, chances de skill check (Unnerving, Lullaby) ou malus de vitesse d'action (Thanatophobia, Cull the Weak) sont concernés ([p90] C13, [p92] Q3, [audit]).
- **Changements du patch 9.2.0** (Pop, Eruption, Ruin, DMS) : sources contradictoires, CONFLICT-L3P90-01 non résolu.
- **Valeurs PTB 10.2.0 injectées comme LIVE dans le seed ch8** : Unbound, Undone, Dark Arrogance, Ravenous (CONFLICT-K96-01) ; Nowhere to Hide 18 m (PTB 10.1.0, FAUX en LIVE).

### 7.4 Péremption annoncée

- Le **PTB 10.2.0** modifie **58 perks** ; leur liste complète n'a pas été lue ([p93]).
- Changements PTB connus dans ce périmètre :
  - Dead Man's Switch ;
  - Deerstalker (aura de 4 s) ;
  - Hex: Thrill of the Hunt (rework) ;
  - Shattered Hope (rework) ;
  - Undone (rework) ;
  - selon le seed (U) : Hex: Blood Favour, Agitation, Iron Grasp, Machine Learning, Monstrous Shrine, Knock Out, Insidious, Dominance, Whispers, Distressing, Superior Anatomy, Dissolution, Fire Up, Nothing but Misery, Help Wanted, Game Afoot, Spies from the Shadows, Unbound, Dark Arrogance, Ravenous, Unrelenting, Bitter Murmur.
- **À la sortie LIVE de 10.2.0** (estimée début octobre 2026, non officiel [manifeste]), relire ce document : les **mécanismes** de déduction resteront en grande partie valables, pas les chiffres.
- **Aucune VOD analysée** : les seuils des drills (§6) et les niveaux de menace ne sont pas mesurés.

---

## Sources

- [p90] `kb/research/batch3_perks_kill_p90.md` : Pain Resonance, Pop, Corrupt, Grim Embrace, Lethal Pursuer, Nowhere to Hide, règles de régression.
- [p91] `kb/research/batch3_perks_kill_p91.md` : tier A (DMS, Eruption, Ruin, BBQ, ANC, Surge, NHB, KTW, Bamboozle, NOED, TBtC, Celestial Witness, Discordance, Darkness Revealed, Floods of Rage, Ultimate Weapon, Weeping Wounds, Fortune's Fool).
- [p92] `kb/research/batch3_perks_kill_p92.md` : tier B (Brutal Strength → I'm All Ears).
- [p93] `kb/research/batch3_perks_kill_p93.md` : Thrilling Tremors → Monstrous Shrine.
- [p94] `kb/research/batch3_perks_kill_p94.md` : tier C (Whispers → Alien Instinct).
- [p95] `kb/research/batch3_perks_kill_p95.md` : Hysteria → Cull the Weak.
- [p96] `kb/research/batch3_perks_kill_p96.md` : tier D (Bloodhound → Bitter Murmur).
- [audit] `kb/seed/audit_phase0.txt` : Match Details 9.6.0 (loadout caché, VP) ; crochets, anti-camp et Resolve (9.3.0) ; protections de décrochage 10.1.0 (VP) ; régression 7.5.0 ; DR 9.6.0 ; glossaire des statuts ; totems, coffres, portes, EGC ; vaults et blocage de fenêtre ; Bloodlust ; Undetectable ; heuristiques dangereuses du seed.
- [manifeste] `kb/PROJECT_MANIFEST.md` : référence de version et contraintes d'accès.
