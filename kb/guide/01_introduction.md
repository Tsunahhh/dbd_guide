# 1. Introduction : lire et utiliser ce guide

Ce guide est un **manuel de décision pour le survivant** de Dead by Daylight (mode **1v4**). Il ne se contente pas de décrire le jeu. Pour chaque sujet important, il dit ce que tu dois faire, pourquoi, quand le faire, comment, ce que le tueur peut y opposer, dans quels cas ça échoue, et comment t'y entraîner. Il remplace l'ancien PDF `DBD_Guide_Avance_2026.pdf`, dont une partie des chiffres était fausse, périmée ou tirée du serveur de test (voir §1.9).

Ce premier chapitre est court à lire et long à consulter. Il répond à cinq questions :

1. **À quelle version du jeu ce guide correspond-il ?** (§1.1 à §1.4)
2. **D'où viennent les chiffres, et à quel point peut-on s'y fier ?** (§1.5 et §1.6)
3. **Comment progresser avec ce guide ?** (§1.7)
4. **Où trouver quoi ?** (§1.8)
5. **Qu'est-ce qui a changé par rapport à l'ancien guide ?** (§1.9)

> **À retenir** : tout chiffre du guide vaut pour le **LIVE 10.1.2a**. Une valeur du serveur de test porte toujours la mention « PTB 10.2.0 — non LIVE ». Si tu lis ce guide après la sortie de 10.2.0, commence par le §1.2 : il liste ce qui va changer.

---

## 1.1 Version de référence [Débutant]

> **Informations vérifiées jusqu'au patch 10.1.2a (17/09/2026) — état au 27/09/2026 ; PTB 10.2.0 (15-21/09/2026) non intégré.**

Ce que cette phrase veut dire concrètement :

| Terme | Sens dans ce guide |
|---|---|
| **LIVE 10.1.2a** | La version jouée en matchmaking public au 27/09/2026. « 10.1.2a » est la numérotation du wiki pour l'**édition côté serveur** de l'article « 10.1.2 Bugfix Patch », faite le 17/09/2026 sans téléchargement. BHVR n'emploie pas ce numéro. Le seul changement : la fenêtre de courbe de Divine Light (The Judgment) en Zealous revient à 0,6 s (était 0,8 s), et la fenêtre hors Zealous est retirée **(VM)**. |
| **État au 27/09/2026** | Date des dernières vérifications. Aucun patch 10.1.3 ni 10.2.0 LIVE n'avait été trouvé à cette date. Le wiki affiche « 10.2.0 : TBA » **(VM)**. |
| **PTB 10.2.0 non intégré** | Le serveur de test public (Steam uniquement) a ouvert le 15/09/2026 **(VP)**. La date de fermeture, le 21/09/2026, vient d'un site tiers et n'a pas été confirmée par une source officielle lue **[INCERTAIN]**. Rien de ce PTB n'est traité comme LIVE ici. |
| **Mode** | **1v4** uniquement. Le 2v8, mode temporaire actif du 8 au 29/09/2026, a ses propres règles (objets de départ par classe, 27 coffres, buffs propres à certains tueurs) : elles ne s'appliquent jamais au 1v4 dans ce guide. |

**Pourquoi c'est important.** Dead by Daylight change toutes les quatre à six semaines. En 2025-2026 : réécriture des protections de décrochage (trois fois), apparition des Diminishing Returns, rework de trois tueurs, 58 perks retouchées dans le seul PTB 10.2.0. Un conseil juste en avril peut être faux en octobre. Un chiffre sans version est donc un chiffre qu'on ne peut pas vérifier.

> **Erreur fréquente** : prendre les valeurs affichées sur le wiki pour les valeurs LIVE. Pendant un PTB, plusieurs pages wiki montrent déjà le texte du test **sans avertissement**. Au 27/09/2026, c'est le cas de Dissolution, Distressing, Do No Harm, Hex: Nothing but Misery, Shattered Hope, Wake Up! et Windows of Opportunity. La valeur LIVE se retrouve dans les lignes « (was …) » de la note officielle du PTB. Détail : `kb/ledgers/AUDIT_PHASE0_ERRATA.md`.

---

## 1.2 Ce que le PTB 10.2.0 va changer — **PTB 10.2.0, non LIVE** [Intermédiaire]

Tout ce qui suit vient de la note officielle « 10.2.0 PTB Patch Notes » (BHVR KB 559) et de sa copie sur le wiki (`kb/sources/patches/patch_10.2.0.txt`). **Ce sont des valeurs de test.** BHVR modifie souvent un PTB avant la sortie : en 2025, les systèmes anti-tunnel et anti-slug testés aux PTB 9.2.0 et 9.3.0 ne sont **jamais** sortis (§1.4). La sortie LIVE de 10.2.0 n'est pas annoncée. Un site tiers l'estime au 6/10/2026 en précisant « NOT officially confirmed » **[INCERTAIN]**.

### 1.2.1 Systèmes

| Changement (PTB) | Contenu | Ce que ça changerait pour toi |
|---|---|---|
| **Survivor Intent System** | Roue de **8 messages prédéfinis**, envoyés à tous les survivants et affichés à côté de leur portrait. Personnalisable, désactivable ; possibilité de rendre muet un joueur (il ne le sait pas). Anti-spam : délai de 1 s, jusqu'à 5 s si on insiste. | Un début de communication en SoloQ. L'écart d'information entre SoloQ et SWF se réduirait sans disparaître (messages fixes, pas de voix). **N'existe pas en LIVE.** |
| **Surrender** | Quand **tous** les survivants sont au sol en même temps, ils peuvent se rendre (« Surrender »). Cette option remplace l'actuel « Abandon » dans ce cas. | Le vocabulaire de la fin de partie change. En LIVE, l'Abandon existe depuis 9.2.0 dans des conditions différentes (chapitre 2). |
| **Abandon** | Le dernier humain peut abandonner quand tous les autres survivants sont des bots. Le tueur peut abandonner quand tous les survivants restants sont des bots et qu'au moins un n'est pas au sol. | Moins de parties qui traînent contre des bots. |
| **End Trial** | Le tueur peut clore l'épreuve quand tous les survivants restants sont des bots au sol. | Idem, côté tueur. |

### 1.2.2 Perks : 58 modifiées (27 tueur, 31 survivant)

D'après la Dev Update de BHVR relayée par l'audit, les 58 perks se répartissent ainsi : 26 touchées à cause des Diminishing Returns, 23 perks générales remises à niveau, 9 jugées « oppressives ou malsaines ». Voici les changements qui modifieraient **tes décisions** de survivant. La valeur LIVE actuelle est entre parenthèses.

**Perks tueur (vues du survivant)**

| Perk | PTB 10.2.0 (LIVE actuel entre parenthèses) | Impact décisionnel attendu |
|---|---|---|
| Dead Man's Switch | Se déclenche quand un survivant lâche un gen **plus de 2 s** ; blocage 30/35/40 s, recharge 30/35/40 s (LIVE : lâcher instantané, 25/30/35 s, recharge 50 s) | Les interruptions forcées très brèves ne suffiraient plus à la déclencher. |
| Dissolution | Seulement après un **coup de base** ; fenêtre 13/14/15 s (LIVE : tout dégât, 12/16/20 s) | Les pouvoirs qui blessent vite ne l'activeraient plus. |
| Hex: Blood Favor | Seulement sur coup de base d'un survivant sain ; 32 m, 13/14/15 s (LIVE : tout dégât, 24/28/32 m, 15 s) | Idem. |
| Distressing | **Nouveau** : −6/7/8 % de réparation dans le TR ; TR +30 % | Un TR élargi deviendrait un ralentissement de gens. |
| Dominance | Totems seulement, blocage 25 s, **cri + aura 3/4/5 s** (LIVE : totems **et coffres**, 8/12/16 s) | Ouvrir un coffre ne serait plus puni ; toucher un totem te révélerait. |
| Hex: Nothing but Misery | Totem allumé après **4** coups (LIVE : 8) ; **nouveau** : vaults 10 % plus lents | Premier malus de vitesse de vault par perk : les loops de fenêtre souffriraient. |
| Hex: Thrill of the Hunt | **Rework** : allumé au 1er crochet ; chaque crochet bloque les Hex 6/7/8 s par Hex allumé | Plus de ralentissement passif des purifications. |
| Insidious | Undetectable après 2 s immobile, **persiste 6/7/8 s** après une action (LIVE : 3/2/1 s, coupé au mouvement) | Le tueur tapi pourrait bouger encore quelques secondes sans TR. |
| Knock Out | S'éloigner à **10 m** d'une palette lâchée → 20 % Hindered 3/4/5 s (LIVE : 6 m, 5 %) | Lâcher une palette et partir coûterait cher. |
| Ravenous | 4 jetons → Exposed **80/85/90 s** (LIVE : 40/50/60 s) ; + portage et accrochage plus rapides | Le 4e premier crochet deviendrait un moment critique. |
| Scourge Hook: Monstrous Shrine | **Nouveau** : gens non réparés régressent à 150/175/200 % tant que le tueur est à ≥ 24 m d'un survivant accroché sur Fléau | Récompense le tueur qui quitte le crochet : le dilemme « sauver ou réparer » change. |
| Shattered Hope | **Rework** : à chaque totem béni/purifié/détruit, blocage des totems 16/18/20 s + aura des Boons | Boons et purifications moins fiables. |
| Undone | **Rework** : jetons au crochet (max 3), dépensés au coup de pied : −8/9/10 % et blocage 8/9/10 s par jeton | Régression à la demande, qui se cumule. |
| Help Wanted / Machine Learning | Jusqu'à **3 gens** compromis à la fois (LIVE : 1) ; Help Wanted : **nouveau** 150 % de régression 100/110/120 s | Plus difficile de deviner quel gen est « piégé ». |
| 12 autres (Unrelenting, Whispers, Agitation, Iron Grasp, Fire Up, Unbound, Dark Arrogance, Superior Anatomy…) | Hausses de valeurs ou nouveaux bonus | Poursuites et déplacements un peu plus rapides côté tueur. |

**Perks survivant**

| Perk | PTB 10.2.0 (LIVE actuel entre parenthèses) | Impact décisionnel attendu |
|---|---|---|
| Borrowed Time | **Rework** : un Deep Wound reçu sous Endurance se referme seul en 40/35/30 s | Ce n'est plus une prolongation de protection au décrochage. |
| Windows of Opportunity | **Rework** : fenêtres seulement, 24 m, vaults +10 %, recharge 40/35/30 s (LIVE : fenêtres, palettes et murs cassables à 24/28/32 m, sans recharge **(SS)**) | Fin de la perk d'info « universelle » ; Five Moves Ahead ne montrerait plus que les palettes. |
| Self-Preservation | Elusive 13/14/15 s (LIVE : 20/25/30 s) | Nerf direct. |
| Shoulder the Burden | + **Broken 160/140/120 s**, se désactive pour toute l'équipe après usage (LIVE : Exposed 60/50/40 s) | Coût bien plus lourd. |
| Spine Chill | **Rework** : regard du tueur à ≤ 40 m → alerte, pas de cri 12 s, vaults +10 % 12 s | Retour d'un bonus de vault. |
| Stake Out | **Rework** : skill checks « spéciaux » à +4 % / −4 % | Ne transforme plus les Good en Great. |
| Down to the Last [Sole Survivor] | **Rework** : jetons (crochets, gens) ; ouvre la trappe si ≥ 3 jetons | Devient une perk d'équipe de fin de partie. |
| Premonition | **Rework** : 32 m, aura 3 s, désactivée en poursuite | — |
| Kindred | Aura du tueur à 14/15/16 m du crochet (LIVE : 8/12/16 m) | Buff des rangs bas. |
| Slippery Meat, Small Game, Road Life, Dark Sense, Calm Spirit | Reworks ou remises à niveau (Slippery Meat : décrochage par autrui +90/95/100 %, +5 % Haste) | Options anti-tunnel et « apprentissage » plus simples. |
| 17 autres (Resilience, We'll Make It, No One Left Behind, Empathic Connection, Flow State, Plunderer's Instinct, This is Not Happening, Wake Up!…) | Hausses des rangs bas ou bonus ajoutés | Surtout des chiffres, peu de changement de décision. |

> **Note avancée** : la note PTB liste aussi des « Known Issues » : Divine Light (The Judgment) qui détecte les survivants cachés dans les casiers, This is Not Happening qui modifie des skill checks spéciaux, Stake Out qui perd des jetons. Ce sont des bugs **du PTB**, pas du LIVE.

### 1.2.3 Que faire en attendant la sortie

| Situation | Conduite |
|---|---|
| Tu joues avant la sortie de 10.2.0 | Ignore ce §1.2. Joue avec les valeurs LIVE des chapitres 2 à 15. |
| 10.2.0 vient de sortir | Relis la note de **sortie** (pas celle du PTB) : les valeurs finales peuvent différer. Les chapitres 9 et 10 (perks) et le chapitre 2 (Abandon) sont les premiers à revoir. |
| Tu vois un chiffre du wiki différent du guide | Vérifie la date de la page et la présence de « 10.2.0 » dans son historique avant de conclure que le guide a tort. |

Détail : `kb/sources/patches/official_559.txt` ; `kb/sources/patches/patch_10.2.0.txt`.

---

## 1.3 Registre de l'état du jeu au 27/09/2026 [Débutant]

Source : registre temporel de l'audit de phase 0 (`kb/seed/audit_phase0.txt`, p. 7-8). Toutes ses sources ont été consultées le 27/09/2026.

| Élément | Version | Date | Source |
|---|---|---|---|
| Patch LIVE actuel | **10.1.2a** : édition serveur de l'article « 10.1.2 Bugfix Patch » (Divine Light en Zealous ramenée à 0,6 s, fenêtre hors Zealous retirée) **(VM)** | 17/09/2026 (10.1.2 : 08/09/2026) | BHVR KB 558 ; wiki.gg Patches |
| Chaîne 10.1.x | 10.1.0 → 10.1.1 → 10.1.2 → 10.1.2a (serveur, sans téléchargement) **(VM)** | 25/08 → 01/09 → 08/09 → 17/09/2026 | BHVR KB 556, 557, 558 ; wiki.gg |
| Patch plus récent | **Aucun** : ni 10.1.3 ni 10.2.0 en LIVE ; wiki « 10.2.0 : TBA » **(VM)** | constat au 27/09/2026 | wiki.gg Patch Notes 10.2.X ; site tiers de suivi Switch |
| PTB le plus récent | **PTB 10.2.0**, Steam uniquement. Ouverture **(VP)** ; fermeture le 21/09 selon un site tiers **[INCERTAIN]** | 15/09/2026 → 21/09/2026 | BHVR KB 559 ; Steam News ; timesaver.gg |
| Contenu du PTB 10.2.0 | 58 perks (26 liées aux DR, 23 générales, 9 « oppressives/malsaines »), Survivor Intent System, refonte Abandon / Surrender / End Trial — **PTB, non LIVE** | 14-15/09/2026 | Dev Update 10.2.0 ; BHVR KB 559 |
| Sortie LIVE de 10.2.0 | Non annoncée ; estimation au 6/10/2026 non officielle **[INCERTAIN]** | — | timesaver.gg ; wiki (TBA) |
| Dernier chapitre | **CHAPTER 41 : Chorus of Sin** (chapitre original) **(VM)** | 25/08/2026 (10.1.0) | wiki.gg ; BHVR KB 556 |
| Dernier tueur | **The Judgment**, 44e tueur : 4,4 m/s ; TR 32 m ; grand ; pouvoir « Will of the Gods » **(SS)** | 25/08/2026 | wiki.gg The Judgment, Killers |
| Dernière survivante | **Aurora Stardotter**, 54e survivant **(VM)** | 25/08/2026 | wiki.gg Survivors ; BHVR KB 556 |
| Survivant précédent | **Shane Wiigwaas** (The Life Road, CHAPTER 40.5), contenu dans les notes 10.0.1 **(VM)** | 25/06/2026 | BHVR KB 551 ; wiki.gg |
| Rift en cours | Rift Pass 6 « Sunflesh » ; fin estimée vers le 6/10/2026 **[INCERTAIN]** | depuis le 21/07/2026 | wiki.gg Rift Pass ; presse (roadmap) |
| Événements en cours | 2v8 du 8 au 29/09 (The Xenomorph en 2v8, carte Nostromo Wreckage en 2v8, objet Invoking Salt, 27 coffres) ; Campfire Tour 25-26/09 | septembre 2026 | BHVR KB 558 (contenu 2v8) ; presse citant la roadmap |
| Statut du 2v8 | Mode temporaire récurrent, pas permanent (source secondaire) | itération du 8 au 29/09/2026 | presse |
| Moteur | Unreal Engine 5 depuis le patch 7.7.0 (source secondaire : un développeur sur le Discord officiel, pas de communiqué BHVR lu) | 23/04/2024 | presse spécialisée |
| Annoncé, pas encore LIVE | Oct. 2026 : nouveau Rift + Haunted by Daylight · Nov. 2026 : CHAPTER 42 Terrifier (Art the Clown, futur 45e tueur) · Déc. 2026 : nouvelle carte originale The Mall + Bone Chill · Janv. 2027 : nouveau Rift · Mars 2027 : CHAPTER 43 The Casting of Frank Stone · avril 2027 et après : nouveau survivant, mise à jour graphique, contenu Silent Hill, collaborations — **ANNONCÉ** | annonce du 14/06/2026 (10e anniversaire), roadmap mise à jour le 22/09/2026 | presse (roadmap) ; wiki.gg Chapters (« Upcoming ») |

> **À retenir** : 44 tueurs et 54 survivants en LIVE. Le tueur le plus récent, **The Judgment**, a été retouché trois fois en trois semaines (10.1.1, 10.1.2, 10.1.2a). Sa fiche (chapitre 8) est la plus exposée à un changement prochain.

---

## 1.4 Historique 2025-2026 : de 9.0.0 à 10.1.2a [Intermédiaire]

Pourquoi lire un historique ? Parce que beaucoup de conseils qui circulent (vidéos, forums, ancien guide) datent d'une version antérieure. Si un conseil suppose des palettes plus sûres, des protections de décrochage de 15 s ou des offrandes de carte qui se cumulent, il est périmé. Le tableau ne garde que ce qui touche **le survivant en 1v4**, avec les corrections de l'errata déjà appliquées.

Dates : date de sortie selon wiki.gg. Les articles du support BHVR sont souvent publiés 2-3 jours plus tard.

| Patch | Sortie LIVE | Changements majeurs vérifiés | Pour toi, survivant |
|---|---|---|---|
| **9.0.0** Five Nights at Freddy's | 17/06/2025 | Tueur The Animatronic (William Afton), carte Freddy Fazbear's Pizza. Tentative d'auto-décrochage (4 %) limitée à 2 survivants restants ou à une source de chance (offrande, Slippery Meat, Up the Ante). Mori possible à 2 survivants. **Offrandes de royaume : 20 % fixes, doublons non cumulables.** Perks du Cenobite renommées (Deadlock → No Holds Barred, Hex: Plaything → Hex: Fortune's Fool, Scourge Hook: Gift of Pain → Scourge Hook: Weeping Wounds). Corbeaux AFK ; apparition à ≤ 12 m ; pénalités de déconnexion. | Ne compte plus sur l'auto-décrochage. Deux offrandes identiques ne garantissent pas la carte. |
| 9.0.1 / 9.0.2 | 26/06 · 02/07/2025 | Corbeaux AFK assouplis ; nerfs d'add-ons de l'Animatronic. | — |
| **9.1.0** The Walking Dead | 29/07/2025 | Survivants Rick et Michonne Grimes. À 2 survivants restants, laisser passer 2 skill checks de lutte = sacrifice immédiat ; tous les survivants restants accrochés en même temps = sacrifice. Buffs Executioner, Clown, Pig, Knight, Oni. Nouvel objet **Fog Vial**. Built to Last fixée à 14/12/10 s (note de sortie). | Le Fog Vial devient un outil de sauvetage et de fuite. |
| 9.1.1 → 9.1.3 | 06/08 · 14/08 · 26/08/2025 | Fog Vial ajusté puis 2 charges (9.1.2) ; contenu 2v8. | — |
| **9.2.0** Sinister Grace (CHAPTER 37) | 23/09/2025 | Tueur The Krasue ; survivant Vee Boonyasak. **Anti-tunnel et anti-slug du PTB reportés (« Postponed »).** Livré : récupération au sol automatique, « tap Interact » pour se relever, **option Abandon** après 2 relèves ou soins de l'état mourant. **Rework de The Shape** (Stalker / Pursuer / Evil Incarnate). Palettes redistribuées sur 10 royaumes pour réduire les dead zones. Perks LIVE : Hex: Ruin 100/125/150 %, Dead Man's Switch 25/30/35 s, Oppression. **Correction (errata)** : les baisses de Pop (20 → 15 %) et d'Eruption (10 → 5 %) ont été **reportées**. Eruption reste à −10 % en LIVE ; Pop est resté inchangé jusqu'à sa réécriture en 9.5.0 **(VP)**. | Ruin plus punitive : ne laisse pas un gen à moitié fait sans raison. |
| 9.2.1 → 9.2.3 | 30/09 · 07/10 · 21/10/2025 | 9.2.2 : Off the Record récupère l'Endurance (30/35/40 s). 9.2.3 : Shape, Evil Incarnate 60 s, TR 16 m en Pursuer et 32 m en Evil Incarnate. | Contre la Shape, le TR indique le mode. |
| **9.3.0** Mid-Chapter | 25/11/2025 | **Protections de décrochage du PTB annulées** (30 s, bonus uniques, anti-slug, reworks de Babysitter, Borrowed Time, Furtive Chase, Off the Record). Livré : Endurance + 10 % Haste pendant **15 s** au décrochage. Anti-facecamp : zone de **16 m**, grâce de 7 s, multiplicateur 1× / 2× / 4× selon la durée. Palettes **moins sûres** sur MacMillan, Asylum, Red Forest, Yamaoka, Haddonfield, Mount Ormond ; bâtiment principal de Crotus Prenn moins sûr. Skull Merchant ajustée. Add-on **Anti-Exhaustion Syringe** (nouveau nom, retire l'Exhausted à l'usage) et Styptic Agent (sans Endurance) **(VM)**. | Plusieurs loops « sûres » ne l'étaient plus. |
| 9.3.1 | — | Numéro sauté. | — |
| 9.3.2 | 09/12/2025 | Breakdown et Wicked revertés ; Skull Merchant : Undetectable 8 s au rappel d'un drone. Loops « trop courtes et dangereuses » rallongées sur 7 royaumes : BHVR cherche « un juste milieu » entre 9.2.0 et 9.3.0. | La baisse de sécurité de 9.3.0 a été en partie corrigée. |
| **9.4.0** Stranger Things Chapter 2 (CHAPTER 38) | 27/01/2026 | Tueur The First (Henry Creel) ; survivants Dustin et Eleven. Premier statut **Elusive** en LIVE (Extrasensory Perception). Licence Halloween retirée de la boutique le 19/01/2026 ; perks renommées : Decisive Strike → **Will to Live**, Sole Survivor → Down to the Last, Object of Obsession → Bound by Obsession, Save the Best for Last → Keep Them Waiting, Play With Your Food → See How They Run, Dying Light → Cull the Weak. Lampkin Lane retirée de la rotation. | Apprends les deux noms : les possesseurs du DLC gardent les noms d'origine, les autres voient les noms génériques. |
| 9.4.1 / 9.4.2 | 03/02 · 10/02/2026 | Correctifs ; contenu 2v8 (Good Guy, Nemesis). | Les buffs 2v8 du Good Guy **ne s'appliquent pas** au 1v4. |
| **9.5.0** All-Kill: Comeback (CHAPTER 39) | 17/03/2026 | **Rework de The Trickster** (4,4 m/s, TR 24 m, Style Ranks). Survivant Kwon Tae-young. Nouveau royaume (Sleepless District). Unbreakable : seulement si mis au sol par le tueur, une fois par partie. Self-Preservation : Elusive 20/25/30 s. **Pop Goes the Weasel réécrite** : +15 % de régression, soit 20 % au total. Hex: Crowd Control retravaillée. Fog Vial : 4 charges. | Pop se lit désormais sur la progression **totale**. |
| 9.5.1 / 9.5.2 | 24/03 · 31/03/2026 | 9.5.2 : buffs du Trickster. | — |
| **9.6.0** | 28/04/2026 | **Diminishing Returns** : les modificateurs identiques issus des pouvoirs, objets, perks et offrandes (pas des add-ons) se réduisent : 100 %, puis 50 / 25 / 12,5 / 5 %. Les modificateurs négatifs de vitesse d'action et les bonus de chance de skill check ne se combinent qu'**au sein d'un même rôle**. **Nerf de la Blight** (4,4 m/s ; casser une palette au sol ramène ses jetons de Rush à 2 sous le maximum). Fast Track retravaillée. Loadouts **des coéquipiers** visibles dans Match Details ; celui du tueur reste caché jusqu'à la fin. | Empiler 3 perks de même effet rapporte beaucoup moins qu'avant. |
| 9.6.1 / 9.6.2 | 05/05 · 12/05/2026 | Doctor et Ghost Face ajustés ; manuel de jeu listant les modificateurs soumis aux DR (non consulté). | — |
| **10.0.0** Jason (CHAPTER 40) | 16/06/2026 | Tueur **The Slasher** (Jason Voorhees ; 4,4 m/s, 8,0 m/s en Omnipresent Evil ; TR 32 m) ; nouvel état **Impaled**. Aucun changement de basekit ni de carte documenté. | — |
| 10.0.1 → 10.0.3 | 23/06 · 06/07 · 21/07/2026 | Shane Wiigwaas (sortie 25/06) ; add-ons du Slasher ajustés ; Chaos Shuffle étendu. | — |
| **10.1.0** Chorus of Sin (CHAPTER 41) | 25/08/2026 | Tueur **The Judgment**, survivante Aurora Stardotter. **Protections de décrochage : Endurance + 10 % Haste 10 s + Elusive 10 s** (seul l'Elusive disparaît portes alimentées). **MMR : compte désormais d'autres actions que kills et évasions (VP)** ; remise à zéro rapportée par la presse, absente des notes **[INCERTAIN]**. Perks : Sprint Burst (Haste 2 s), Adrenaline (4 s), Deliverance, Technician (16 m, 4/3/2 %), Repressed Alliance, Clean Break, Nowhere to Hide (**24 m**, 3/4/5 s), Thrill of the Hunt 8/9/10 %… | Le décrochage protège 10 s, pas 15 s. |
| 10.1.1 | 01/09/2026 | Judgment (Divine Light) ; **Knight** : gardes et palettes ; Repressed Alliance 40/35/30 s ; **Vigil 20/25/30 %** (Exhausted seul). | — |
| 10.1.2 | 08/09/2026 | Judgment : survivants libérés de l'Exil réapparaissent à ≥ 32 m. Contenu 2v8 (Xenomorph, Invoking Salt, Nostromo Wreckage, 27 coffres). | — |
| **10.1.2a** (actuel) | 17/09/2026 | Édition serveur : Divine Light en Zealous revient à 0,6 s, fenêtre hors Zealous retirée (BHVR : les performances du Judgment ont « explosé » après le hotfix précédent). | Version de référence du guide. |

> **À retenir — ce qui n'est jamais sorti en LIVE** : protections de décrochage de 30 s, « Unique Hook Bonuses », bonus de réparation après une mort précoce, **barre Resolve anti-slug** (90 s au PTB 9.2.0, 120 s au PTB 9.3.0), anti-facecamp à 20 m. Ces systèmes ont été testés, reportés (9.2.0) puis annulés (9.3.0). **Aucune auto-relève basekit n'existe en LIVE.** Un conseil qui les suppose est faux.

**Frise des protections de décrochage** (source fréquente d'erreurs) :

```
avant 9.3.0      9.3.0 (25/11/2025)       10.1.0 (25/08/2026) = LIVE
Endurance+Haste  Endurance + 10 % Haste    Endurance + 10 % Haste 10 s
    10 s              15 s                 + Elusive 10 s
                                           (Elusive seule perdue portes alimentées)
PTB 9.2.0 / 9.3.0 : 30 s + Elusive ... -> JAMAIS LIVE
```

Détail : `kb/seed/audit_phase0.txt` p. 8-12 ; `kb/ledgers/AUDIT_PHASE0_ERRATA.md` ; notes officielles `kb/sources/patches/official_510.txt` à `official_558.txt`.

---

## 1.5 Comment ce guide a été construit [Débutant]

Le guide ne recopie pas l'ancien PDF. Il le traite comme une **liste d'affirmations à vérifier**. Chaque chiffre conservé a été recoupé avec une source, et les sources officielles priment.

```
seed (140 p.) -> audit phase 0 -> lots de recherche -> re-vérification
    -> audits adversariaux (x2) -> errata -> rédaction du guide
```

| Étape | Ce qui a été fait | Résultat |
|---|---|---|
| **Audit du seed** (phase 0) | Lecture intégrale des 20 chapitres de l'ancien guide par 5 auditeurs, puis vérification web de l'état du jeu, des patchs 9.0.0 → PTB 10.2.0, des mécaniques et des statistiques | 671 affirmations auditées, 239 vérifiées, 33 conflits documentés, 243 sources |
| **Lots de recherche** | Une fiche par perk, par tueur, par tile, par carte ; brouillons chase / macro / entraînement | `kb/research/batch2` à `batch11` |
| **Re-vérification** | Pages wiki.gg lues **en entier** (API MediaWiki) et croisées avec les notes de patch officielles BHVR archivées en local (9.0.0 → PTB 10.2.0) | Toutes les perks et les 44 tueurs re-vérifiés le 27/09/2026 ; plusieurs « erreurs » supposées du seed annulées (§1.9) |
| **Audits adversariaux** | Deux passes par lot : erreurs, contradictions, étiquettes trop fortes, puis « que se passe-t-il si un joueur applique ce texte à la lettre ? » | Par exemple : chase 36 problèmes relevés, macro 43, entraînement 54, objets 36, tiles 40, cartes 35 ; corrections appliquées aux fichiers sources |
| **Errata** | Les erreurs trouvées dans l'audit de phase 0 lui-même | `kb/ledgers/AUDIT_PHASE0_ERRATA.md`, qui prime sur tout le reste |

**Ordre de priorité des sources** lors de la rédaction : (1) errata de l'audit ; (2) fichiers de recherche re-vérifiés et audités ; (3) livrables `kb/deliverables/` ; (4) tables vérifiées de l'audit de phase 0 ; (5) sources brutes (`kb/sources/`) pour trancher. **Aucune valeur chiffrée n'a été ajoutée hors de ces sources.**

### 1.5.1 Limites (à connaître avant de faire confiance)

| Limite | Conséquence pour toi |
|---|---|
| **Aucune VOD analysée.** YouTube, Twitch, X, Liquipedia et le site de la DBDLeague étaient inaccessibles. | Les conseils de chase fine (checkspots, mindgames, greed) sont des **[HEURISTIQUE]** de joueur, jamais des observations de joueurs pro. Le guide ne prétend nulle part avoir regardé une vidéo. |
| **Statistiques NightLight et infographies officielles non lues** (sites refusés, images illisibles). | **Aucun kill rate par tueur ni par carte** n'est donné comme fait. Les ~70 chiffres par tueur de l'ancien guide ont été retirés (pas de période, pas d'effectif). |
| **Liste exacte des modificateurs soumis aux DR** (manuel du jeu, 9.6.1) non consultée. | Quand un cumul est incertain, le guide le dit **[INCERTAIN]**. |
| **Certaines valeurs n'existent que sur le wiki** (pas de note officielle). | Elles portent **(SS)**. Elles sont généralement justes, mais un wiki peut afficher une valeur PTB ou périmée. |
| **Seuils d'entraînement sans validation** (aucune étude, aucun coach). | Les critères du chapitre 14 mesurent ton progrès **par rapport à toi-même**, pas un niveau absolu. |

> **Note avancée — leçon de méthode** : les auditeurs sans accès web ont aussi produit de **fausses alertes**. Les phases de crochet à 70 s, la casse de palette en 2,34 s, le stun de Will to Live à 4 s, le MMR qui tient compte des actions : l'ancien guide avait raison sur tous ces points. Plus tard, la re-vérification a donné raison au seed sur Iron Will, Built to Last, les hachettes de la Huntress et plusieurs TR (§1.9). **Un soupçon ne corrige rien : seule une vérification sourcée modifie le texte.**

Détail : `kb/seed/audit_phase0.txt` p. 5-6 ; `kb/PROJECT_MANIFEST.md` ; `kb/audit/pass14_*.md`.

---

## 1.6 Légende : étiquettes, confiance, difficulté [Débutant]

### 1.6.1 Nature d'une affirmation

Chaque fois que ce n'est pas évident, le texte dit **de quel type** est l'affirmation. Ça change ce que tu peux en faire.

| Étiquette | Sens | Comment l'utiliser |
|---|---|---|
| **[FACT]** | Mécanique ou valeur documentée (note officielle et/ou wiki) | Tu peux construire dessus. Vérifie la version si tu lis après 10.2.0. |
| **[DATA]** | Donnée mesurée, avec période, population et effectif | Rare dans ce guide (voir §1.5.1). Une donnée sans effectif n'est pas une [DATA]. |
| **[HEURISTIQUE]** | Règle pratique de joueur, vraie « en général », avec exceptions | Applique-la, mais cherche la condition qui la rend fausse (elle est toujours indiquée). |
| **[AVIS D'EXPERT]** | Opinion répandue chez les bons joueurs, non mesurée | Point de départ, pas vérité. |
| **[HYPOTHÈSE]** | Interprétation plausible, non testée (ex. modèle de greed) | Teste-la toi-même avant d'en faire un réflexe. |
| **[SITUATIONNEL]** | Dépend du tueur, de la carte, de l'état de partie | Relis les conditions à chaque fois. |
| **[INCERTAIN]** | Valeur non tranchée (sources contradictoires ou absentes) | Ne base pas une décision serrée dessus ; prévois une marge. |

### 1.6.2 Confiance d'un chiffre

| Code | Sens | Exemple |
|---|---|---|
| **(VP)** | Note de patch officielle BHVR | Nowhere to Hide 24 m (note 10.1.0) |
| **(VM)** | Wiki **et** note officielle concordants | 10.1.2a le 17/09/2026 |
| **(SS)** | Wiki seul (page lue en entier), ou une seule source secondaire | Iron Will 80/90/100 % |
| **(INC)** | Incertain : sources en conflit ou absentes | Off the Record désactivée portes alimentées (conflit non tranché au 27/09/2026) |

> **Erreur fréquente** : croire qu'une valeur (SS) est « presque fausse ». La plupart des valeurs du jeu ne figurent dans aucune note récente. Le wiki complet est alors la meilleure source disponible. (SS) veut dire « à surveiller après un patch », pas « douteux ».

### 1.6.3 Difficulté et encadrés

| Tag | Pour qui |
|---|---|
| `[Débutant]` | Moins d'une centaine d'heures ; ce qu'il faut savoir pour ne pas perdre la partie tout seul |
| `[Intermédiaire]` | Tu connais les tiles de base et les perks courantes ; tu apprends à choisir |
| `[Avancé]` | Tu gagnes des poursuites ; tu travailles la macro, la lecture du tueur et le timing |
| `[Expert]` | Optimisation en secondes, cas limites, jeu contre des tueurs très forts |

| Encadré | Contenu |
|---|---|
| `> **À retenir**` | La règle à garder si tu ne lis rien d'autre |
| `> **Erreur fréquente**` | Ce que font beaucoup de joueurs, et pourquoi c'est puni |
| `> **Note avancée**` | Détail technique ou cas limite ; à sauter en première lecture |

### 1.6.4 Format des sections « expert »

Les sujets importants suivent le même format, pour que tu saches toujours où chercher :

```
QUOI  -> POURQUOI -> QUAND -> COMMENT -> CONTRE (ce que fait le tueur)
      -> CAS D'ÉCHEC -> EXERCICE
```

Aucune règle n'est absolue. Chaque conseil vient avec sa **condition**, son **risque** et une **alternative**. Quand la réponse diffère entre SoloQ et SWF, les deux sont données séparément.

---

## 1.7 Comment apprendre DBD avec ce guide [Débutant]

### 1.7.1 Penser en secondes

La monnaie de Dead by Daylight, c'est le **temps**. Un générateur coûte **90 s** à un survivant seul **(VM)**. Toute action se mesure donc en secondes gagnées ou perdues pour l'équipe [FACT pour les constantes ; calcul pour le reste] :

| Action | Ordre de grandeur | Lecture |
|---|---|---|
| 1 s de poursuite pendant que 3 coéquipiers réparent chacun un gen | ≈ 3 charges ≈ **1/30 de gen** | Une poursuite de 60 s ≈ 2 gens d'équivalent brut. C'est un plafond théorique, pas une garantie. |
| Un soin complet (soigneur + soigné) | 16 s + 16 s ≈ **0,36 gen** | Un soin se justifie s'il rapporte plus que ça (une poursuite qui tient un coup de plus). |
| Une palette cassée par le tueur | 2,34 s d'arrêt ≈ **9,4 m** gagnés par le survivant | La palette « rapporte » la casse **et** la distance. |
| Un état de crochet | L'équipe a **8 états survivables** avant les morts | Chaque état perdu réduit la marge de toute l'équipe. |

Les chapitres 3 et 6 réutilisent ce calcul partout. Détail : `kb/research/batch11_training.md` §0.3.

### 1.7.2 La boucle d'apprentissage

Jouer beaucoup ne suffit pas. Le guide s'appuie sur la **pratique délibérée** [HEURISTIQUE : principe général transposé, aucune étude propre à DBD] : un objectif précis à la fois, un retour sur ce que tu as fait, et un exercice ciblé.

```
   +-----------+      +------------------+      +-----------------+
   |  JOUER    | ---> |  REVOIR          | ---> |  DRILL          |
   | 1 objectif|      | 3-5 moments      |      | 1 erreur focus  |
   | par bloc  |      | pivots, à froid  |      | par semaine     |
   +-----------+      +------------------+      +-----------------+
         ^                                              |
         +------------------ mesurer -------------------+
                     (métrique vs ta propre base)
```

1. **Jouer avec un objectif** : un bloc = environ 10 parties sur une seule compétence (ex. « annoncer la feuille de l'arbre palette avant chaque palette »).
2. **Revoir** : enregistrer, puis revoir à froid 3 à 5 moments pivots. Mets en pause **avant** la décision : qu'est-ce que je savais, quelles étaient mes options, qu'ai-je choisi ? Distingue la décision du résultat. Une bonne décision peut mal finir (variance : ne rien changer). Une mauvaise décision peut bien finir (chance : à corriger quand même).
3. **Drill** : choisir **une** erreur (la plus fréquente ou la plus coûteuse en secondes) et l'exercice associé. Pas trois.
4. **Mesurer** : comparer à ta propre base, dans le même mode (SoloQ **ou** SWF), sur au moins 2 blocs avant de conclure.

> **Erreur fréquente** : ne revoir que ses poursuites. Les erreurs de macro (sauvetage tardif, soin inutile, 3-gen laissé se former) coûtent souvent plus de secondes qu'une palette mal jouée.

> **À retenir** : le programme complet (10 niveaux, drills, métriques, gabarit de revue, semaine type) est au **chapitre 14**. La base d'erreurs et les arbres de décision qui servent pendant la revue sont au **chapitre 13**.

### 1.7.3 Par où commencer selon ton niveau

| Profil | Lecture conseillée |
|---|---|
| Débutant | Ch. 2 (mécaniques) → ch. 3, parties `[Débutant]` → ch. 13 (erreurs débutant) → niveau 1 du ch. 14 |
| Intermédiaire qui perd ses poursuites | Ch. 3 → ch. 4 (tiles) → arbre palette du ch. 13 → drills de chase du ch. 14 |
| Bon en poursuite, mauvais résultats d'équipe | Ch. 6 (macro, SoloQ/SWF, états de partie) → arbres crochet/soin/gen du ch. 13 |
| Tu perds contre un tueur précis | Sa fiche aux ch. 7-8 → perks à soupçonner au ch. 10 |
| Tu joues en SWF | Ch. 6 (section SWF, callouts) → ch. 12 (ce qui se transfère du compétitif) |

---

## 1.8 Carte du guide [Débutant]

| Ch. | Titre | Contenu | Sources principales |
|---|---|---|---|
| **2** | Les mécaniques fondamentales | Objectifs, générateurs, crochets et anti-camp, protections de décrochage, soins, état mourant, statuts, Diminishing Returns, signaux d'information, objets de carte, économie hors partie | Audit (tables vérifiées) + errata ; `batch6`, `batch9`, `batch5` |
| **3** | Mouvement, caméra et théorie de la chase | Vitesses, fente, vaults, palettes, respect/greed/pré-drop, Bloodlust, LOS, red stain, mindgames, caméra, hitbox ; chase theory en secondes | `batch6_chase_tech.md` |
| **4** | Loops, tiles et connectivité | Catalogue des tiles, conditions de loop sûre, matrice tile × archétype de tueur, enchaînement des tiles | `batch7_tiles.md` |
| **5** | Les cartes | 44 cartes 1v4 : fixe vs RNG, bâtiment principal, dead zones, plan de partie ; historique des palettes 9.2.0 / 9.3.0 / 9.3.2 | `batch8_maps.md` |
| **6** | Macro, équipe et game sense | Gens et 3-gen, sauvetages, trades, proxy camp, tunnel, slug, soins, SoloQ et SWF, 14 états de partie, fin de partie | `batch9_macro.md` |
| **7** | Les tueurs (1/2) | Typologie et identification, puis tueurs 1 à 22 (Trapper → Twins) | `batch4_killers_g1-g3.md` |
| **8** | Les tueurs (2/2) | Tueurs 23 à 44 (Trickster → Judgment) | `batch4_killers_g4-g6.md` |
| **9** | Perks survivant | Effets LIVE, valeur par usage, synergies et DR, colonne PTB 10.2.0 séparée | `batch2_perks_surv_*.md`, `PERK_DATABASE.md` |
| **10** | Perks tueur et déduction | Les perks tueur vues du survivant : indices, confirmation, adaptation | `batch3_perks_kill_*.md`, `PERK_DEDUCTION.md` |
| **11** | Objets, add-ons, offrandes | Objets et add-ons qui changent la décision, offrandes, sauvetages à la lampe et à la palette, sabotage, body block | `batch5_items.md` |
| **12** | DBD compétitif et ce qui se transfère | DBDL, règlements, compétitif vs matchmaking public, méta ≠ optimalité, littératie des données | Audit p. 39-44 ; `batch9_macro.md` |
| **13** | Base d'erreurs et arbres de décision | 51 erreurs par niveau ; 9 arbres (palette, quitter la tile, crochet, soin, gen, totem, slug, endgame, trappe) | `batch11_training.md`, `DECISION_TREES.md` |
| **14** | S'entraîner : drills, programme et mesure | 10 niveaux, catalogue des drills, métriques, revue de partie, semaine type | `TRAINING_PROGRAM.md`, `batch11_training.md` |
| **15** | Annexes | Référence rapide entre deux parties, glossaire, registres (erreurs du seed, questions ouvertes, sources) | `QUICK_REFERENCE.md`, `kb/ledgers/` |

---

## 1.9 Ce qui a changé par rapport à l'ancien guide [Intermédiaire]

Les dix changements majeurs. La liste complète est dans `kb/ledgers/OUTDATED_CONTENT_REPORT.md` et `kb/ledgers/BATCH_2_4_SYNTHESIS.md`.

**1. D'un catalogue à un manuel de décision.** L'ancien guide décrivait. Aucune section n'atteignait le format QUOI → … → EXERCICE, et il ne contenait ni arbre de décision, ni base d'erreurs, ni exercice, ni métrique. Les chapitres 13 et 14 n'existaient pas.

**2. Le volet survivant des fiches tueur a été réécrit.** Les 44 fiches étaient écrites à environ 75 % pour le joueur tueur. Elles portent désormais sur l'identification, les tiles, le counterplay et les add-ons qui changent **ta** décision.

**3. Des constantes fausses ont été corrigées** [FACT] :

| L'ancien guide disait | Valeur LIVE 10.1.2a |
|---|---|
| Un gen solo ≈ 80 s | **90 s** (VM) |
| 1 s de poursuite ≈ 1/3 de gen | ≈ **1/30 de gen** avec 3 réparateurs séparés |
| Portes alimentées : protections de décrochage perdues | Seule l'**Elusive** disparaît ; Endurance + Haste 10 s restent (VP) |
| L'anti-camp décroche l'allié contre un proxy camp | La jauge ne se remplit pas au-delà de **16 m** (VM) |
| Offrandes de royaume cumulables | **20 % fixes**, doublons non cumulables depuis 9.0.0 (VP) |
| Loadout du tueur visible après la 1re poursuite | Seule son **identité** est révélée ; loadout caché jusqu'à la fin (VP) |
| Hyperfocus échappe aux DR | Soumise aux DR au sein du rôle survivant (VP) |

**4. Les valeurs de PTB présentées comme LIVE ont été retirées.** Nowhere to Hide fait **24 m** en LIVE (18 m était la valeur du PTB 10.1.0) (VP). Le rework d'Undone, le Survivor Intent System et plusieurs valeurs de perks tueur (Unbound, Dark Arrogance, Ravenous) venaient du PTB 10.2.0 : ils sont maintenant signalés comme tels (§1.2).

**5. Des perks ont été mises à jour** : Vigil **20/25/30 %** (Exhausted seul) depuis 10.1.1 (VP) ; Repressed Alliance **40/35/30 s** (VP) ; Technician **16 m, 4/3/2 %** (VP) ; No Way Out **12 s + 6/9/12 s par jeton** (max 36/48/60 s) (VM) ; **Surge** est le nom d'origine et actuel (Jolt n'a existé que de 5.3.0 à 7.3.3) ; perks du Cenobite renommées en 9.0.0 et perks de Halloween en 9.4.0.

**6. L'histoire de 9.2.0 a été corrigée.** Les baisses de Pop et d'Eruption ont été **reportées** en LIVE. Eruption reste à **−10 %**, et Pop n'a changé qu'à sa réécriture de 9.5.0 (+15 %, soit 20 % au total) (VP). Même l'audit de phase 0 s'était trompé sur ce point (errata).

**7. La liste des tueurs qui cassent les palettes avec leur pouvoir a été corrigée** (errata) :

| Tueur | Réalité en 1v4 |
|---|---|
| Good Guy | Le Scamper passe **sous** la palette ; casse seulement avec l'add-on Hard Hat (la casse de base est propre au 2v8) |
| Lich | Mage Hand + Vorpal Sword casse une palette abaissée en **4 s**, pas instantanément |
| Mastermind | Virulent Bound **franchit** la palette sans la casser ; casse avec l'add-on Lab Photo |
| Knight | Les gardes cassent sur ordre en **1,8 s ou 5 s** ; depuis 10.1.1, une palette baissée tôt force le garde à contourner |
| Hillbilly | Casse **de base** avec la tronçonneuse (~1 s) ; aucun add-on n'est nécessaire (LoPro Chains prolonge seulement le sprint) |
| À ajouter (pouvoir de base) | Shape, Nemesis, Singularity (détail : chapitres 3 et 7-8) |
| À ajouter (add-on seulement) | Executioner (Obsidian Goblet) ; The First (Shattered Wrist Rocket) **[INCERTAIN]** |

**8. Les statistiques ont été retirées ou datées.** Le « SWF en vocal +3/+8 points » (aucune source), les kill rates de cartes tirés de trois périodes mélangées, les ~70 chiffres par tueur sans effectif et « la chase ne sert à rien » (une corrélation présentée comme une cause) ont disparu. La Huntress n'a pas « le plus haut kill rate » : elle a le pick rate le plus large, et le kill rate le plus élevé tous MMR confondus était celui de The Lich (billet officiel, noms seulement).

**9. Les corrections qui n'en étaient pas : le seed avait raison.** La re-vérification sur pages complètes et notes officielles a **annulé** plusieurs « erreurs » relevées pendant les lots précédents. Ces valeurs restent donc dans le guide :

| Élément | Valeur LIVE (seed confirmé) | Pourquoi on a douté | Preuve |
|---|---|---|---|
| Iron Will | **80/90/100 %** de réduction des gémissements | Mémoire du modèle (50/75/100 %) | Page wiki complète, buff 8.1.0 (SS) |
| Built to Last | **14/12/10 s** dans le casier | Le wiki affiche 12/10/8 s, valeur du PTB 9.1.0 | Note officielle 9.1.0, « Changes from PTB » (VP) |
| Huntress | **7 hachettes** de base | Audit et mémoire reflétaient l'état d'avant 7.6.0 | Page wiki ; change log 7.6.0 (SS) |
| TR Hillbilly / Blight | **40 m** | Valeur d'avant 8.6.0 (32 m) | Pages wiki, change log 8.6.0 (SS) |
| TR Hag / Pig | **24 m** | Mémoire du modèle (32 m) | Pages wiki ; Hag depuis 1.9.3, Pig depuis 9.1.0 (SS) |
| Anti-Exhaustion Syringe | Le nom existe bien | Un audit le croyait inventé | Note officielle 9.3.0 ; page wiki (VM) |

S'y ajoutent les suspicions déjà infirmées en phase 0 : 70 s par phase de crochet, casse de palette en 2,34 s, stun de Will to Live de 4 s, mending de 10 s seul / 6 s par un allié, coffre en 8 s, MMR fondé aussi sur les actions.

**10. Traçabilité.** L'ancien guide listait 249 URL sans relier aucune affirmation à une source, et avait effacé les réserves « (?) » des notes de recherche. Ici, chaque chiffre important porte sa confiance, chaque section renvoie à son fichier `kb/`, et ce qui reste inconnu est dit explicitement. Le 2v8 est isolé du 1v4.

> **À retenir** : si un souvenir de l'ancien guide contredit ce guide, le §1.9 et `OUTDATED_CONTENT_REPORT.md` disent qui a raison et pourquoi. Si le point n'y figure pas, suppose que l'ancien guide peut avoir raison… et vérifie.

---

## 1.10 Penser comme un excellent joueur : les 13 questions [Débutant → Expert]

Le but du guide n'est pas de te faire **connaître** DBD, mais de te faire **raisonner** comme un excellent joueur (mission §50). Ce raisonnement tient en 13 questions. Aucune n'a de réponse unique ; chacune a un endroit du guide qui t'apprend à y répondre.

| # | Question | Où apprendre à y répondre | Outil pratique |
|---|---|---|---|
| 1 | Que sait-on ? | 2.9 (signaux), 2.11 et 6.6 (ce que le jeu te donne : identité du tueur, loadouts alliés) | DR-06, DR-16 |
| 2 | Que ne sait-on pas ? | 10.1 (loadout du tueur caché), 2.12 et 15.5 (inconnues du jeu), 10.3 (déduire au lieu de supposer) | DR-07 |
| 3 | Où se trouve probablement le tueur ? | 6.9 « Prédire la position du tueur » (modèle du cône), 3.4 (TR, tache rouge, son), 7 (identification) | DR-21, DR-05 |
| 4 | Quelle ressource ai-je ? | 3.3 T19 (resource management), 4.6 (carte mentale), 6.9 (zones épuisées), 9 et 11 (perks, objets) | DR-13, DC-09 |
| 5 | Combien de temps puis-je créer ? | 3.2 (calculateur distance / temps), 4.2-4.3 (temps de loop), 4.6.3 (écart nécessaire) | DC-03 |
| 6 | Quelle ressource vaut la peine d'être consommée ? | 3.3 T05 et 3.8 (modèle EV), 11.11 (rentabilité d'un objet) | Arbre 1 (13.8), DR-12, DC-01 |
| 7 | Que fait mon équipe ? | 6.7 (SoloQ : HUD, Match Details), 6.8 (SWF : protocoles, callouts) | DR-16, DR-08 |
| 8 | Quel est le risque ? | 3.8 (coût d'un coup, `C_hit`), 6.10 (erreurs catastrophiques par état) | DC-10 |
| 9 | Que gagne-t-on si je réussis ? | 1.7.1 et 6.1 (secondes-survivant), 3.8 (valeur d'une chase) | DC-08 |
| 10 | Que perd-on si j'échoue ? | 2.5.3 (prix d'un soin), 6.3 (trades), 13.3-13.5 (coût de chaque erreur) | DR-19 |
| 11 | Quelle est l'option la plus robuste avec l'information disponible ? | 6.7 « Décisions robustes », 6.9 « Décider avec une information incomplète », 10.7 | Arbres 13.8-13.16 |
| 12 | Comment l'adversaire peut-il punir cette option ? | Rubriques **CONTRE** (ch. 3, 4, 11), « Quand le counterplay habituel échoue » (ch. 7-8), 10.5-10.6 | DR-15, E-T04 |
| 13 | Quelle adaptation dois-je préparer ? | 6.10 (14 états de partie), 6.9 « Reconnaître un snowball », colonnes « Risque → alternative » des arbres (ch. 13) | DC-12, DR-11 |

**Comment s'en servir** [HEURISTIQUE] : en partie, tu n'as le temps que pour 3 ou 4 questions (règle 2 de 13.7) : en chase, surtout 3, 5, 6 et 12 ; hors chase, 1, 3, 7 et 13. Les autres se **préparent** avant (lecture de Match Details, carte mentale) et se **vérifient** en revue (14.6, moments pivots : « qu'est-ce que je savais, quelles étaient mes options ? »).

> **Erreur fréquente** : répondre à la question 9 (le gain) sans la 10 (la perte) et la 12 (la punition). C'est l'origine de la plupart des greeds et des sauvetages ratés du chapitre 13.

---

## Sources du chapitre

- `kb/guide/WRITING_BRIEF.md` (règles de rédaction)
- `kb/ledgers/AUDIT_PHASE0_ERRATA.md` (corrections prioritaires)
- `kb/seed/audit_phase0.txt` p. 5-12 (synthèse, limites, registre de l'état du jeu, historique des patchs)
- `kb/ledgers/OUTDATED_CONTENT_REPORT.md`, `kb/ledgers/BATCH_2_4_SYNTHESIS.md`, `kb/ledgers/CHANGELOG.md`, `kb/ledgers/OPEN_QUESTIONS.md`
- `kb/research/batch2_perks_surv_p23.md`, `p25.md` ; `batch3_perks_kill_p90.md`, `p91.md` ; `batch4_killers_g1.md`, `g2.md`, `g3.md`, `g4.md` (conflits résolus)
- `kb/research/batch11_training.md` §0.3 et §5.5 ; `kb/deliverables/TRAINING_PROGRAM.md` §0
- `kb/audit/pass14_*.md` (audits adversariaux)
- Notes officielles BHVR : 9.0.0 (KB 510), 9.1.0 (516), 9.2.0 (523, section « Postponed »), 9.3.0 (529), 9.6.0 (544), 10.1.0 (556), 10.1.1 (557), 10.1.2 / 10.1.2a (558), **PTB 10.2.0 (559)** — `kb/sources/patches/`
- Wiki officiel (deadbydaylight.wiki.gg) : pages Patches / Patch Notes 10.2.X (`kb/sources/patches/patch_10.2.0.txt`), pages de perks (`kb/sources/wiki_perks_digest.md`) et de tueurs (`kb/sources/wiki_killers/`)
