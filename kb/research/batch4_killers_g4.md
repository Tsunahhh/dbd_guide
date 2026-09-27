# Lot 4 — Fiches tueurs 23 à 30 vues du SURVIVANT (ch8_killers.txt l. 1094-1418)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) — voir kb/audit/pass14_lot4_g4-g6.md ; RE-VÉRIFIÉ lot 12b (27/09/2026) sur pages wiki complètes + notes officielles**
>
> Rappels de l'audit : toutes les consignes sont des **HEURISTIC** (option par défaut, à varier contre un tueur qui l'anticipe) ; le **pré-drop n'est pas universel** (voir `KILLER_COUNTERPLAY_HANDBOOK.md` §2.2) ; les lignes « Équipe » qui supposent une répartition des rôles demandent le vocal (SWF) — en SoloQ, les appliquer seulement sur signaux observables ; aucune fiche n'a encore de rubrique DRILL ni d'interactions perks survivant ↔ pouvoir vérifiées.

**Couverture : 8/8 tueurs re-vérifiés sur page wiki complète (27/09/2026), dont 23 points confirmés par note officielle** (lot 12b ; détail dans « Claims » : lignes VERIFIED_PRIMARY / VERIFIED_MULTI_SOURCE).

- Référence : LIVE 10.1.2a (17/09/2026) ; PTB 10.2.0 (15-21/09/2026) **non LIVE**, toujours étiqueté PTB. Date de travail : 27/09/2026.
- Périmètre : Trickster, Nemesis, Cenobite, Artist, Onryō, Dredge, Mastermind, Knight.
- Sources : seed [1], audit phase 0 [2], **pages wiki.gg complètes [3]-[10]** (texte local `kb/sources/wiki_killers/`, page Cenobite lue via `kb/tools/wiki_text.py`), **notes officielles BHVR [11]-[23]** (`kb/sources/patches/official_*.txt`). Attention : certaines pages wiki affichent déjà des textes du **PTB 10.2.0** (Superior Anatomy sur la page Mastermind, avec bandeau ; **Dissolution sur la page Dredge, sans bandeau** — repéré par comparaison avec la note PTB [23]) ; ces textes ne sont pas LIVE.
- Conventions de valeur :
  - **VERIFIED_PRIMARY** = note officielle explicite ; **VERIFIED_MULTI_SOURCE** = wiki complet + note officielle ; **STRONG_SECONDARY** = page wiki complète seule.
  - « seed, UNCERTAIN » = valeur absente des pages lues.
  - Les valeurs entre crochets [WIKI], [OFF], [SEED] rappellent la source.
- Conseils : **HEURISTIC** = analyse de l'agent, non sourcée ; **EXPERT OPINION** n'est utilisé nulle part car aucun guide expert n'a pu être lu ; **SITUATIONAL** = dépend du contexte indiqué ; **FACT** = mécanique lue sur la page wiki / note officielle.
- Abréviations : TR = terror radius ; LOS = ligne de vue ; gen = générateur.

---

## 23. The Trickster (Ji-Woon Hak) — archétype(s) : ranged | anti-loop (usure)

- **Version** : rework 9.5.0 « All-Kill: Comeback » (LIVE 17/03/2026) [17] + 9.5.1 (décroissance de Laceration **en pause** au rang S) [18] + 9.5.2 (délai de décroissance 12 → 16 s, add-ons) [19] — VERIFIED_MULTI_SOURCE (wiki [3] + notes officielles). Aucun changement de pouvoir ultérieur dans les notes 9.6.0 → 10.1.2a ni au PTB 10.2.0 [23]. Statut LIVE.
- **Données LIVE** :
  - Vitesse 4,4 m/s (110 %, was 4,6) ; TR 24 m (was 32), **44 m au rang S** ; 36 lames (was 44) — VERIFIED_MULTI_SOURCE [3][17].
  - **Berceuse (Lullaby) : 44 m par défaut, désactivée au rang S** ; volume en cloche : inaudible à < 8 m, maximale entre 20 et 30 m, s'éteint vers 40 m — STRONG_SECONDARY [3].
  - Taille : moyenne (Average) — STRONG_SECONDARY [3].
  - Throw State : entrée 0,3 s, sortie 1,15 s ; 1 lame / 0,33 s (≈ 3 lames/s), cadence +5 % après 5 lames, +10 % après 10 ; lames à 55 m/s, portée 128 m — VERIFIED_MULTI_SOURCE [3][17].
  - **Vitesse en lançant : 3,86 m/s, puis 3,53 m/s après 5 lames consécutives, 3,16 m/s après 10** ; 3,92 m/s pendant Main Event — VERIFIED_MULTI_SOURCE [3][17].
  - Laceration : 6 charges = 1 état de santé ; +1 charge par lame ; une attaque de base retire immédiatement 3 charges ; décroissance −1 charge / 4,4 s après **16 s** sans être touché par une lame — VERIFIED_MULTI_SOURCE [3][17][19].
  - Rangs de style E → S (points : touche de lame, blessure, crochet, casse de palette/mur, dégât de gen, Boon éteint = 1 ; 4 lames d'affilée à ≥ 4 m, touche à > 16 m, interruption/saisie = 2 ; touche à travers un petit interstice = 3) ; chaque rang accélère lancer et recharge ; les rangs D-A redescendent après 30 → 20 s sans action — VERIFIED_MULTI_SOURCE [3][17].
  - Rang S : notification à tous les survivants, révélation (Killer Instinct) de ceux à ≤ 44 m pendant 4,4 s, TR 44 m, berceuse coupée, **Laceration figée** (9.5.1), Main Event disponible ; dure **66 s**, minuteur non rafraîchissable **mais en pause pendant Main Event** — VERIFIED_MULTI_SOURCE [3][17][18].
  - Main Event : 10 s (annulable), lames illimitées, cadence ×1,67 ; ensuite pouvoir en recharge 4 s et retour au rang E (remontée partielle selon les touches) ; **impossible à activer à < 20 m d'un survivant accroché** — VERIFIED_MULTI_SOURCE [3][17].
  - Recharge des lames au casier : 3 s ; auras des casiers à lames visibles pour lui à ≤ 36 m quand il n'a plus de lames — STRONG_SECONDARY [3].
  - Laceration toujours visible sur les portraits des survivants, même vide → **identification dès le chargement** (9.5.0) — STRONG_SECONDARY [3].
- **Identification** :
  - Avant le reveal : jauges de Laceration sur les portraits dès le début de partie (FACT [3]) ; berceuse audible de loin (44 m) mais **silencieuse à moins de 8 m** (FACT [3]) → une berceuse qui « disparaît » veut dire qu'il est tout près, pas qu'il est parti (HEURISTIC) ; TR court (24 m), vitesse 110 %.
  - Pouvoir en action : pluie de lames, barre de Laceration, bruit de recharge au casier.
  - Rang S : notification pour tous + TR 44 m + berceuse coupée → **fenêtre dangereuse de 66 s + durée du Main Event** (FACT [3][17]).
  - Stratégie probable : monter en rang par des actions variées, puis Main Event sur un groupe (unhook, gen à plusieurs) — HEURISTIC.
- **Ce qu'il cherche en chase** : longues lignes droites et zones ouvertes (touche à > 16 m = 2 points), vaults face à lui (touche dans un interstice = 3 points) — barème FACT [17] ; lecture HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles à murs hauts et pleins, boucles courtes où la LOS se coupe souvent, structures intérieures (main building) — HEURISTIC.
  - Défavorables : tiles bas « see-through » (rochers bas, palettes de champs), longues fenêtres de jungle gym vues de loin, couloirs droits — HEURISTIC.
  - Fenêtres vs palettes : une fenêtre vaultée dans sa LOS l'expose à une touche « dans un interstice » (3 points de style [17]) → quand il est chargé en lames, préférer une palette posée un peu plus tôt, ou mieux, **casser la LOS sans vaulter** — HEURISTIC / SITUATIONAL. Limite : aucune page lue ne dit si une palette baissée bloque les lames (UNCERTAIN) ; le gain du drop anticipé est d'éviter l'animation de vault dans sa LOS. Coût : la palette est consommée ; varier (drop normal quand il n'a pas de LOS). Contre **Hex: Crowd Control**, chaque fast vault de fenêtre la bloque (voir Perks).
  - Verticalité : un dénivelé coupe la LOS mieux qu'un mur bas — HEURISTIC.
- **Mindgames propres** : il pré-lance avant l'angle → changer de direction au coin plutôt que de courir la trajectoire attendue ; le forcer à recharger au casier (3 s [3]) crée des fenêtres de reset — HEURISTIC.
- **Counterplay** :
  - Mécanique : couper la LOS très souvent ; strafes latéraux larges plutôt que petits zigzags (lames = projectiles à 55 m/s [3], pas du hitscan) — HEURISTIC. Calcul corrigé (valeurs [3][17]) : face à 4,0 m/s pour toi [AUDIT], il est à 3,86 m/s au début d'une volée (+0,14 m/s pour toi), 3,53 m/s après 5 lames (+0,47 m/s), 3,16 m/s après 10 lames (+0,84 m/s) → **une courte volée ne crée presque pas d'écart ; une longue volée (10+ lames, ≈ 3,3 s) t'en donne un peu**, et Main Event (3,92 m/s) presque rien. La LOS coupée reste la vraie source de distance.
  - Positionnel : rester près de tiles à murs hauts ; ne pas traverser une zone ouverte quand il a des lames — HEURISTIC.
  - Macro : les 16 s [3][19] sont le **délai avant que la Laceration commence à baisser**, pas la durée de sa disparition. Ensuite −1 charge / 4,4 s [3] : depuis 3 charges ≈ 16 + 3 × 4,4 ≈ 29 s sans touche ; depuis 5 charges ≈ 38 s (calcul sur valeurs vérifiées). **Pendant son rang S, la Laceration ne baisse pas du tout** (9.5.1 [18]). Se soigner n'est pas forcément prioritaire si la Laceration est haute — SITUATIONAL.
  - Équipe : au rang S, s'écarter les uns des autres ; tant qu'un survivant est accroché, il **ne peut pas lancer Main Event s'il est à < 20 m de l'accroché** (FACT [3][17]) — le risque du sauvetage commence donc surtout après l'unhook, quand les survivants se regroupent ; « jouer la montre » jusqu'à la fin du rang S (66 s + Main Event éventuel) veut dire **ne pas lui offrir de groupe ni de ligne ouverte**, pas arrêter les gens : 66 s d'arrêt de 3 réparateurs ≈ 198 s-survivant ≈ 2,2 gens solo perdus — HEURISTIC. En SoloQ, la notification globale est le seul signal commun : s'écarter de soi-même.
- **Habitudes punissables et erreurs classiques** (HEURISTIC) :
  - Courir en ligne droite dans un champ ouvert « pour atteindre la tile suivante » avec une Laceration à 3+.
  - Vaulter une fenêtre face à lui à distance moyenne.
  - Se regrouper sur un gen quand la notification de rang S tombe.
  - Ignorer la barre de Laceration (on croit être « sain » alors qu'1-2 lames suffisent).
  - Croire qu'il est loin parce que la berceuse s'est tue (silence à < 8 m [3]).
- **Adaptations avancées / échecs du counterplay** (HEURISTIC) :
  - Contre un Trickster qui arrive au rang S en endgame, le « jouer la montre » échoue : à portes alimentées, éviter les longues lignes vers la sortie. Retarder volontairement le rang S : il ne peut pas « stocker » le rang S (66 s non rafraîchissables [17]), mais rien n'indique qu'il ne puisse pas rester au rang A en espaçant ses actions — HYPOTHESIS.
  - Sur une map intérieure (LOS courte), la valeur du tueur baisse fortement — ne pas sur-jouer la prudence au prix des gens.
- **Add-ons qui changent la décision** (textes LIVE lus sur [3], valeurs 9.5.2 confirmées par [19] quand indiqué) :
  - Iridescent Photocard (Main Event +100 % = 20 s ; à l'activation : son aura révélée aux survivants, toutes les auras révélées pour lui, **tous les gens bloqués 6 s**) → au rang S, le survivant quitte le gen et casse la LOS au lieu de « finir le gen ».
  - Death Throes Compilation (recharge 75 % des lames à la fin du Main Event [19]) → le survivant ne considère plus la fin du Main Event comme une fenêtre de sécurité au lieu d'y ressortir à découvert.
  - Trick Blades (les lames ricochent une fois sur le décor) → le survivant se cache derrière des murs perpendiculaires à sa LOS au lieu de se fier aux murs obliques.
  - Edge of Revival Album (touches à > 20 m : +100 % de Laceration) → le survivant ne se croit plus en sécurité à longue distance et coupe la LOS au lieu de fuir en ligne droite.
  - Bloody Boa (décroissance de Laceration −75 % [19]) → le survivant considère la Laceration comme quasi permanente et se soigne / joue safe au lieu d'attendre qu'elle baisse.
  - On Target Single (+0,5 s de Main Event par touche au rang S, jusqu'à 20 s [19]) / Ji-Woon's Autograph (+44 %) → le survivant compte sur un Main Event plus long et reste caché plus longtemps au lieu de ressortir après 10 s.
  - Waiting For You Watch (aura révélée 10 s quand la Laceration retombe à 0 [19]) → le survivant évite d'être près d'un gen ou d'un blessé au moment où sa jauge se vide au lieu de s'y croire invisible.
  - Cut Thru U Single (au rang A : Killer Instinct à ≤ 32 m pendant 4,4 s) → le survivant s'attend à être localisé dès le rang A au lieu du seul rang S.
- **Implications de carte** : maps ouvertes = avantage tueur ; maps intérieures ou très encombrées = avantage survivant — HEURISTIC. Map Trickster's Delusion (Sleepless District, 9.5.0 [17]) : aucune donnée de tiles lue.
- **Perks fréquentes / synergies** : Grim Embrace, Pain Resonance, Pop Goes the Weasel, Lethal Pursuer (seed, UNCERTAIN, pas de données d'usage lues). **No Way Out** (sa perk) : bloque les deux interrupteurs 12 s + 6/9/12 s par jeton (1 jeton par survivant accroché pour la 1re fois), max 36/48/60 s — STRONG_SECONDARY [3]. **Hex: Crowd Control** (sa perk) : chaque **fast vault (Rushed Vault) de fenêtre** bloque cette fenêtre pour tous (limite 4/5/6 fenêtres à la fois), le tueur la vault 15 % plus vite et voit son aura à ≤ 24 m — STRONG_SECONDARY [3] → éviter les fast vaults inutiles sur la même boucle ; c'est un Hex : le purifier ou le bénir supprime l'effet (HEURISTIC sur la conduite).
- **Écart avec le seed** : OK pour vitesse / TR / 36 lames / 16 s / 4,4 s par charge / 66 s / ×1,67 / 10 s / 20 m anti-camp / 3,86 m/s (valeurs [3][17]) ; **IMPRÉCIS** : 3,86 m/s est la vitesse de début de volée seulement (3,53 / 3,16 m/s après 5 / 10 lames) ; No Way Out « 12 s par token, ~60 s » → 12 s + 6/9/12 s par jeton, max 60 s au rang III (IMPRÉCIS) ; berceuse (44 m, silencieuse à < 8 m) absente du seed (omission).
- **Sources** : [1], [2], [3], [17], [18], [19], [23].

---

## 24. The Nemesis (T-Type) — archétype(s) : anti-loop | zone (zombies)

- **Version** : pouvoir 1v4 inchangé depuis 5.2.0 (dernier changement : vitesse de charge MR3 3,8 → 4,0 m/s) — STRONG_SECONDARY [4] ; aucune modification dans les notes 9.0.0 → 10.1.2a ni au PTB 10.2.0 [23]. 2v8 : 9.4.2 ajoute 2 zombies (total 4) et +35 % de vitesse de zombie — VERIFIED_MULTI_SOURCE [4][16] — **ne pas mélanger avec le 1v4**. Statut LIVE.
- **Données LIVE** :
  - 4,6 m/s (115 %), TR 32 m, grand (Tall), pas de berceuse — STRONG_SECONDARY [4].
  - Tentacle Strike : charge 0,35 s ; vitesse en charge 3,8 m/s (MR1/MR2), 4,0 m/s (MR3) ; portée 5 m (MR1/MR2), **6,5 m (MR3)** ; cooldown après frappe 2,25 s ; annulation 1,5 s — STRONG_SECONDARY [4].
  - Survivant non contaminé touché → Contaminated **sans perte de santé** + Hindered −20 % pendant 2 s ; déjà contaminé → perd un état de santé — STRONG_SECONDARY [4].
  - Mutation : MR2 à 5 points (le tentacule casse palettes baissées et murs cassables), MR3 à 14-15 points (la page dit « 15 » dans la description, « 5 + 9 = 14 » dans les données) ; +3 points par nouvelle contamination, +1 par touche sur contaminé, +1 par zombie détruit au tentacule — STRONG_SECONDARY [4]. **Une frappe ne peut pas casser une palette et toucher un survivant en même temps** (fonction désactivée) — STRONG_SECONDARY [4]. Nemesis classé « special-break » par la note 9.5.0 — VERIFIED_PRIMARY [17].
  - Zombies (1v4) : 2, 1 m/s, détection 14 m dans un champ de vision de ±95°, lâchent au-delà de 20 m, détection audio 6 m, attirés par les Loud Noise Notifications (rushed actions, réparations, coffres…) ; leur attaque contamine / blesse comme un tentacule ; détruits par stun de palette ou Head On → réapparition après 45 s sous un crochet aléatoire ; lampe / pétards / flash grenade → aveuglés et immobiles 15 s — STRONG_SECONDARY [4].
  - Vaccins : 4 caisses (aura visible des contaminés), 1 vaccin à usage unique par caisse, ouverture 4 s, injection 3 s, Killer Instinct 3 s à l'usage ; le vaccin ne soigne pas — STRONG_SECONDARY [4].
  - Contaminés : toussent de temps en temps (révèle la position) — STRONG_SECONDARY [4].
- **Identification** :
  - Avant le reveal : TR 32 m, silhouette grande, zombies errants sur la map = identification quasi immédiate — HEURISTIC.
  - Pouvoir : bruit de charge du tentacule ; icône Contaminated ; murs/palettes détruits à distance → il est au moins MR2 (FACT [4]).
  - Stratégie probable : contaminer tout le monde tôt pour monter en mutation, puis anti-loop — HEURISTIC.
- **Ce qu'il cherche en chase** : survivants contaminés à 5-6,5 m derrière une palette basse ou une fenêtre ; boucles courtes — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles longues où l'on garde plus que la portée du tentacule (5 m, 6,5 m en MR3 [4] : ordre de grandeur de marge, la portée réelle dépend de l'angle et du ping — HEURISTIC) ; murs hauts qui coupent la trajectoire du tentacule — HEURISTIC.
  - Défavorables : petites tiles « pallet + mur bas » (couvertes par la portée en MR3), jungle gyms courts — HEURISTIC.
  - Fenêtres vs palettes : **en MR1, le tentacule ne casse ni palettes ni murs** (FACT [4]) → une palette posée reste une vraie ressource ; dès MR2 il la casse à distance → pré-drop + départ vers la tile suivante plutôt que « jouer autour » — SITUATIONAL. C'est un pré-drop « parce que le pouvoir punit l'attente », pas parce que casser lui coûte (KCH §2.2 b). Nuance vérifiée : la frappe qui casse la palette ne peut pas te toucher en même temps, puis le tentacule repart en cooldown 2,25 s [4] → la casse au tentacule te donne ce délai pour gagner la tile suivante. Contre un Nemesis qui ralentit avant la palette pour obtenir le pré-drop gratuit, alterner avec un drop normal ou un départ sans drop.
- **Mindgames propres** : faux-charge du tentacule pour provoquer un drop ou un vault ; annuler la charge lui coûte 1,5 s de cooldown [4] — HEURISTIC sur l'usage.
- **Counterplay** :
  - Mécanique : strafe latéral au moment du son de charge ; ne pas rester **dans son axe, à 4-6,5 m devant lui** (portée 5 / 6,5 m [4]) — HEURISTIC. Un Nemesis qui feinte la charge exploite un strafe systématique : strafer au son, pas à l'animation seule. Sa vitesse en charge (3,8 / 4,0 m/s [4]) est inférieure ou égale à la tienne (4,0 m/s) : **s'il avance en tenant la charge, il ne te rattrape pas** ; il te rattrape entre deux charges (4,6 m/s).
  - Positionnel : quand vous êtes contaminé, chaque touche (tentacule ou zombie) coûte un état de santé → jouer les tiles longues, pas les « safe » courtes — HEURISTIC.
  - Macro : prendre un vaccin quand il est loin/occupé (Killer Instinct 3 s à l'usage [4]) ; 4 vaccins pour toute la partie [4] → ne pas les gaspiller si on reste loin de lui — SITUATIONAL. Un vaccin ne soigne pas l'état de santé [4].
  - Équipe / zombies : un zombie détecte à 14 m devant lui et entend à 6 m [4] → réparer **derrière** lui ou loin de sa trajectoire ; un raté de skill check (Loud Noise) l'attire ; un stun de palette le détruit pour 45 s, une lampe / des pétards l'immobilisent 15 s [4] — n'utiliser une palette clé que si le zombie bloque vraiment un gen ou une sortie — HEURISTIC.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) :
  - Rester « à distance de tentacule » en croyant être safe à 4-5 m (6,5 m en MR3 [4]).
  - Tenir une palette debout contre un Nemesis MR2+ en attendant le stun : il la casse à distance sans se faire stun.
  - Réparer face à un zombie ou rater un skill check près de lui (attiré par le bruit [4]).
- **Adaptations avancées / échecs** (HEURISTIC) : contre MR3, la « boucle sur petite tile » échoue presque toujours → enchaîner les tiles et utiliser la hauteur/LOS ; un zombie peut couper l'unique sortie d'une tile, vérifier sa position avant d'engager.
- **Add-ons qui changent la décision** (textes LIVE lus sur [4]) :
  - Marvin's Blood (+0,5 point de mutation par touche de tentacule sur survivant) / T-Virus Sample (+1 point par zombie détruit au tentacule) → le survivant considère MR2/MR3 comme atteints plus tôt et pré-drop plus tôt au lieu de compter sur des palettes « sûres » en milieu de partie.
  - Shattered S.T.A.R.S. Badge (zombies +1,5 m/s pendant 60 s après chaque gen terminé) → le survivant s'éloigne des zombies juste après un gen au lieu de les ignorer.
  - Depleted Ink Ribbon (zombies +0,5 m/s, réapparition plus rapide, et **dans la zone de sortie une fois les portes alimentées**) → le survivant vérifie la zone de sortie avant d'y courir au lieu de s'y croire en sécurité.
  - Iridescent Umbrella Badge (Exposed 60 s après avoir utilisé un vaccin) → le survivant ne prend le vaccin que loin du tueur et hors chase au lieu de le prendre dès qu'il le trouve.
  - Ne-α Parasite (Oblivious 60 s après contamination, ou jusqu'au vaccin) → le survivant contaminé surveille visuellement le tueur au lieu de se fier au TR.
  - Licker Tongue (Hindered porté à 3 s) → le survivant non contaminé traite la première touche comme plus dangereuse et évite de la prendre près d'un mur.
- **Implications de carte** : maps avec beaucoup de petites tiles favorisent le tentacule ; maps à gros bâtiments / murs hauts favorisent le survivant ; RPD : couloirs et portes → zombies plus gênants — HEURISTIC.
- **Perks fréquentes / synergies** : Lethal Pursuer, Hysteria, Eruption (ses perks), Pain Resonance, Grim Embrace, Pop (seed, UNCERTAIN pour l'usage). **Eruption LIVE : −10 % de progression + régression sur les gens marqués quand un survivant passe au sol ; les réparateurs crient et leurs auras sont révélées 8/10/12 s ; cooldown 30 s** — VERIFIED_MULTI_SOURCE ([4] + note 9.2.0 [14] : « Reverted the perk changes associated with this update. Notably: … Eruption ») → le « 5 % » du registre [2] était la valeur PTB 9.2.0. Hysteria (Oblivious aux blessés) → surveiller le tueur visuellement plutôt que l'audio (HEURISTIC).
- **Écart avec le seed** : **OK** — Eruption −10 % (conflit RÉSOLU, voir CONFLICT-L4G4-04) ; valeurs du pouvoir OK (5 / 6,5 m, 2,25 s, 0,35 s, Hindered 20 % 2 s, MR2 5 pts, 2 zombies ~1 m/s, 4 vaccins, KI 3 s) ; **IMPRÉCIS** : MR3 « 15 points » (14 selon les données de la page, incohérence interne du wiki).
- **Sources** : [1], [2], [4], [14], [16], [17], [23].

---

## 25. The Cenobite (Pinhead) — archétype(s) : ranged (chaîne pilotée) | zone (Lament Configuration)

- **Version** : chapitre Hellraiser retiré des boutiques le **4 mars 2025** (13 mars 2025 sur Nintendo eShop) ; le Cenobite reste jouable et supporté pour ceux qui l'ont acheté — STRONG_SECONDARY [5]. Au patch 9.0.0, ses perks sont devenues générales et ont été renommées : Deadlock → **No Holds Barred**, Hex: Plaything → **Hex: Fortune's Fool**, Scourge Hook: Gift of Pain → **Scourge Hook: Weeping Wounds** — VERIFIED_PRIMARY [11] (la page du personnage garde les anciens noms, « identique à… » [5]). 9.3.0 : add-on Original Pain retravaillé ; retour de la possibilité d'enchaîner un survivant sous Endurance — VERIFIED_PRIMARY [15]. Aucun autre changement de pouvoir depuis 8.5.0 [5]. Statut LIVE (possesseurs).
- **Données LIVE** (STRONG_SECONDARY [5] sauf mention) :
  - 4,6 m/s (115 %), TR 32 m, grand (Tall), pas de berceuse.
  - Gateway posé jusqu'à 16 m devant lui ; possession max 6 s ; chaîne pilotée : 10 m/s au départ, accélère jusqu'à 40 m/s, **24 m de trajet max** ; cooldown de tir 5 s ; vitesse du Cenobite pendant la frappe 3,68 m/s.
  - Survivant touché : lié par **3 chaînes** (1 + 2 bonus) → Incapacitated, ne peut plus courir, vitesse 1,13 / 1,695 / 2,26 m/s avec 3 / 2 / 1 chaîne(s) ; **portes de sortie bloquées** tant qu'il est enchaîné et **5 s** après le retrait de la dernière chaîne. Chaque chaîne s'arrache en 1 s (Break Free). Une chaîne qui heurte le décor casse **mais une chaîne de remplacement tente de re-lier le survivant** ; une chaîne cassée par un autre joueur n'est pas remplacée ; rupture au-delà de 18 m.
  - Lament Configuration : apparaît loin des survivants (−5 000 points à < 16 m d'un survivant) et surtout loin du Cenobite (−15 000 à < 40 m) ; aura blanche visible des survivants ; charge un **Chain Hunt en 90 s**. Le porteur : Oblivious permanent, son ambiant remplacé, ne peut pas la lâcher. Résolution 6 s (skill checks) → Killer Instinct, la boîte réapparaît 45 s plus tard ailleurs.
  - Pendant la résolution, le Cenobite peut se téléporter (charge 3,25 s) à 10-12 m du survivant, ce qui interrompt la résolution.
  - Chain Hunt : chaînes non pilotées qui apparaissent à 2,5-6 m des survivants toutes les 9-12 s, 10 m/s, 16 m de trajet, jusqu'à 3 chaînes par survivant ; continue jusqu'à ce qu'un survivant ramasse la boîte. S'il ramasse la boîte lui-même (ou met à terre son porteur) : 3 chaînes sur tous, tous crient (position révélée 3 s), la boîte réapparaît 10 s plus tard. Porteur mis à terre : boîte réapparaît 30 s plus tard. Aucun effet sur le dernier survivant.
  - Si le Cenobite reste 5 s sur la boîte, elle se téléporte (6.7.0).
- **Identification** :
  - Avant le reveal : TR 32 m, grand ; la **boîte** (Lament Configuration) dont l'aura est visible dès le début est un indice sans ambiguïté (FACT [5]).
  - Pouvoir : portail, bruit de chaîne ; Chain Hunt = chaînes qui arrivent sur tous.
  - Stratégie probable : 3-gen facilité par No Holds Barred/Deadlock ; pression par la boîte — HEURISTIC.
- **Ce qu'il cherche en chase** : survivants à découvert entre deux tiles (la chaîne a besoin d'une trajectoire libre, 24 m max [5]) — HEURISTIC. (Le seed affirme « chaîne = vault bloqué » : non décrit sur la page [5] → UNCERTAIN ; ce qui est vérifié : plus de course et vitesse ≤ 2,26 m/s.)
- **Tiles / structures** :
  - Favorables : tout décor dense ; la chaîne casse au contact du décor (FACT [5]) → coller les murs — HEURISTIC. Limite vérifiée : une chaîne cassée par le décor est **remplacée** par une autre qui retente de te lier [5] → le décor gagne du temps, il ne suffit pas à lui seul.
  - Défavorables : zones ouvertes, longues lignes droites vers la tile suivante — HEURISTIC.
  - Fenêtres vs palettes : enchaîné, tu ne cours plus (≤ 2,26 m/s [5]) : se faire lier en arrivant sur une tile = coup quasi gratuit → vaulter tôt ou changer de tile avant qu'il ait la trajectoire — HEURISTIC.
- **Mindgames propres** : faux portail / timing de lancer ; courbe de chaîne autour d'un tile (add-ons de rotation) — HEURISTIC.
- **Counterplay** :
  - Mécanique : casser la LOS vers le portail ; arracher les chaînes (1 s chacune [5]) immédiatement quand il ne peut pas punir — HEURISTIC. Un coéquipier qui touche la chaîne la casse sans remplacement [5] (SITUATIONAL : utile seulement s'il est déjà au contact, pas une raison de s'approcher).
  - Positionnel : se déplacer d'une tile à l'autre en longeant le décor — HEURISTIC.
  - Macro/équipe : **un seul** survivant gère la boîte, loin du tueur, et la résout avant le Chain Hunt (90 s [5]) ; la résolution (6 s) peut être interrompue par une téléportation qui charge en 3,25 s et arrive à 10-12 m [5] → la résoudre quand il est en chase ailleurs — HEURISTIC. SWF : le rôle se désigne au vocal. SoloQ : si tu vois un coéquipier aller vers la boîte (ou la porter), ne pas y aller aussi ; si personne ne la prend et qu'elle est près de toi, la prendre plutôt que d'attendre le Chain Hunt. Coût : le porteur est Oblivious et ne répare pas pendant la résolution. Ne pas la laisser traîner près de lui : s'il la ramasse, **3 chaînes sur tous** [5].
  - Endgame : les portes sont bloquées pour un survivant enchaîné et 5 s après le retrait (FACT [5]) → arracher les chaînes avant d'arriver à l'interrupteur — SITUATIONAL.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : traverser un champ ouvert à 10-24 m du portail ; ignorer la boîte jusqu'au Chain Hunt ; deux survivants qui se battent pour la boîte ; résoudre la boîte à côté d'un gen où le tueur patrouille.
- **Adaptations avancées / échecs** (HEURISTIC) : avec des add-ons de portée / rotation, « coller le décor » ne suffit plus si le tueur courbe la chaîne → préférer les tiles à murs hauts qui bloquent la trajectoire de départ plutôt que les objets bas.
- **Add-ons qui changent la décision** (textes LIVE lus sur [5]) :
  - Frank's Heart (Gateway posé +8 m, soit 24 m) / Larry's Blood (chaîne +4 m, soit 28 m de trajet) → le survivant engage le changement de tile plus tôt au lieu de considérer 16-24 m comme sûrs.
  - Torture Pillar (Chain Hunt −6 s, soit 84 s) / Burning Candle (−3 s) → le survivant garde le plan « boîte résolue avant le Chain Hunt » mais part vers la boîte un peu plus tôt au lieu de finir d'abord un gen long (effet faible : quelques secondes).
  - Chatterer's Tooth (il voit l'aura de la boîte ; ramasser la boîte stoppe le Chain Hunt en cours et donne Undetectable 25 s — le texte ne précise pas qui la ramasse ; lecture la plus probable : le Cenobite, UNCERTAIN) → le survivant évite de laisser la boîte au sol près de lui et s'attend à une approche sans TR au lieu de guetter le TR.
  - Engineer's Fang (une chaîne pilotée **blesse** un survivant sain, sans chaînes bonus) → le survivant sain traite chaque tir comme un coup et coupe la LOS au lieu de laisser venir la chaîne.
  - Slice of Frank (porteur de la boîte Exhausted) → le porteur ne compte plus sur une perk d'exhaustion et résout la boîte loin du tueur au lieu de la garder en chase.
  - Iridescent Lament Configuration (aura de la boîte cachée aux survivants à > 24 m hors Chain Hunt) → les survivants explorent / se répartissent pour la trouver au lieu d'attendre de la voir.
  - Original Pain (aura révélée 8 s après avoir arraché une chaîne [5][15]) → le survivant arrache ses chaînes derrière un obstacle ou en direction de la tile suivante au lieu de le faire en plein champ.
- **Implications de carte** : maps intérieures / encombrées (Midwich, Hawkins, RPD, Lery's) = chaîne très gênée → avantage survivant ; maps ouvertes = avantage tueur — HEURISTIC.
- **Perks fréquentes / synergies** : No Holds Barred (ex-Deadlock), Pain Resonance, Grim Embrace, Lethal Pursuer (seed, UNCERTAIN pour l'usage). Hex: Fortune's Fool, Scourge Hook: Weeping Wounds = ex-perks du Cenobite, générales depuis 9.0.0 [11] → à anticiper chez n'importe quel tueur.
- **Écart avec le seed** : **IMPRÉCIS/OBSOLETE** — perks enseignables listées sous leurs anciens noms (renommées en 9.0.0, VERIFIED_PRIMARY [11]) ; « retiré de la vente en mars 2025 » : **OK** (4 mars 2025 [5]) ; difficulté : la page wiki dit « Very Hard » [5] → la fiche du seed (« très élevée ») est juste, le tableau d'ensemble (« élevée ») est faux ; valeurs du pouvoir (16 m, 1 s, 90 s, 6 s, 5 s, 3 chaînes) : **OK** ; « chaîne = vault bloqué » : NON VÉRIFIABLE (absent de [5]).
- **Sources** : [1], [2], [5], [11], [15].

---

## 26. The Artist (Carmina Mora) — archétype(s) : ranged (à travers les murs) | info

- **Version** : aucun changement de pouvoir LIVE depuis 6.7.0 (lampes / pétards / flash grenade ne détruisent plus les corbeaux posés) — STRONG_SECONDARY [6]. Les changements d'add-ons du PTB 9.0.0 ont été **annulés** avant le LIVE — VERIFIED_PRIMARY [11]. 9.0.2 : corrections (les corbeaux ne ratent plus les survivants en mouvement ; un corbeau sur un survivant déjà Swarmed retire bien un état de santé au lieu de déclencher un Killer Instinct) — VERIFIED_PRIMARY [12]. Rien au PTB 10.2.0 [23]. Statut LIVE.
- **Données LIVE** (STRONG_SECONDARY [6] sauf mention) :
  - 4,6 m/s (115 %), TR 32 m, taille moyenne (Average), pas de berceuse.
  - 3 jetons ; chaque Dire Crow : charge 1 s, posé à 2,5 m devant elle, reste posé ≤ 10 s (minuteur remis à zéro à chaque nouveau corbeau) ; un survivant qui touche un corbeau posé devient Swarmed et le corbeau disparaît ; pas de corbeau à < 10 m d'un survivant accroché.
  - Lancement (bouton secondaire) : tous les corbeaux posés partent le long de leur trajectoire de **7,5 m** (20 → 35 m/s) ; à la fin de ces 7,5 m **ou s'ils heurtent un obstacle pendant ces 7,5 m**, ils deviennent un **Swarm** qui continue en ligne droite **à travers tous les obstacles** (35 m/s).
  - **L'aura des Swarms en vol est visible de tous les joueurs** ; celle d'un corbeau qui vient d'être lancé est visible 0,75 s ; les corbeaux posés émettent un son audible à ≤ 12 m.
  - Un Swarm qui passe près d'un survivant déclenche un Killer Instinct de 3 s, **sauf s'il est accroupi** ; un Swarm qui touche un survivant le rend Swarmed (aura révélée à l'Artist, masquée 2,5 s après le début du retrait) ; un Swarm qui touche un survivant **déjà Swarmed** lui retire un état de santé (immunité 0,75 s entre deux touches).
  - Retrait de l'essaim : 8 s (interaction « Repel »), ou instantané en entrant dans un casier ; toucher un corbeau posé pendant le retrait le remet à zéro.
  - Recharge complète : 5 / 9 / 12 s après avoir lancé 1 / 2 / 3 corbeaux ; 2 s si les corbeaux posés se sont dissous ; vitesse de l'Artist en posant / lançant 3,68 m/s.
- **Identification** :
  - Avant le reveal : corbeaux sombres posés près des gens/totems (indice visuel), croassement audible à ≤ 12 m (FACT [6]) ; auras de Swarms qui traversent la map (FACT [6]).
  - Pouvoir : statut Swarmed sur un coéquipier/soi ; Killer Instinct au passage d'un Swarm.
  - Stratégie probable : pression globale (Swarms sur des gens lointains) puis blessures à distance à travers le décor — HEURISTIC.
- **Ce qu'il cherche en chase** : survivants déjà Swarmed (2e touche = blessure à travers un mur), sorties de tile prévisibles, vaults de fenêtre en fin de boucle — HEURISTIC.
- **Tiles / structures** :
  - FACT [6] : au-delà des 7,5 m de trajectoire (ou dès qu'il heurte un obstacle), le corbeau devient un Swarm qui **traverse tous les obstacles** → **les murs ne protègent pas comme contre un ranged classique** ; seule la courte phase de 7,5 m est arrêtée (et transformée) par le décor. CONFLICT-L4G4-02 RÉSOLU.
  - Favorables : tiles où l'on peut changer de direction souvent (le Swarm va en ligne droite) ; bâtiments avec plusieurs sorties — HEURISTIC.
  - Défavorables : longues lignes droites, couloirs, tiles à une seule sortie — HEURISTIC.
- **Mindgames propres** : corbeau « posé » sur une sortie de tile = piège (le toucher te rend Swarmed [6]) ; elle peut attendre ton choix de direction avant de lancer — HEURISTIC.
- **Counterplay** :
  - Mécanique : suivre **l'aura** du Swarm (visible de tous [6]) et faire un pas latéral net quand il arrive ; ne pas courir dans l'axe d'un corbeau posé ni le traverser — HEURISTIC fondé sur FACT.
  - Discrétion : s'accroupir quand un Swarm passe près de toi évite le Killer Instinct (FACT [6]) — utile quand il ne vise pas ta position exacte.
  - Si Swarmed : retirer l'essaim (8 s) dès que le tueur n'est pas en chase proche, ou entrer dans un casier (instantané) ; éviter de réparer Swarmed quand elle a un corbeau disponible (2e touche = blessure, même à travers le décor) — HEURISTIC. Arbitrage : le retrait coûte 8 s (≈ 9 % de gen solo) ; si elle est en chase loin et sans corbeau prêt, finir un gen presque terminé peut valoir plus — SITUATIONAL. Pendant le retrait, elle perd ton aura au bout de 2,5 s [6].
  - Fenêtre de pression : après une volée de 3 corbeaux, elle n'a plus rien pendant ~12 s [6] → moment pour traverser une zone ouverte ou changer de tile — HEURISTIC.
  - Macro : répartir les gens pour qu'un Swarm n'en couvre pas deux ; ne pas se regrouper en ligne — HEURISTIC.
  - Équipe : un coéquipier Swarmed est une cible facile → ne pas s'en approcher en chase (et plus du tout avec Severed Hands) — SITUATIONAL.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : se croire à l'abri derrière un mur ; réparer en étant Swarmed ; courir tout droit vers la tile suivante quand elle a un corbeau prêt ; courir debout près d'un Swarm qui passe (Killer Instinct gratuit).
- **Adaptations avancées / échecs** (HEURISTIC) : le counterplay « LOS » habituel contre les ranged échoue ; la protection vient du changement de direction, de la lecture de l'aura des Swarms et de l'absence de statut Swarmed → prioriser le retrait de l'essaim plus haut que contre un tueur classique.
- **Add-ons qui changent la décision** (textes LIVE lus sur [6]) :
  - Charcoal Stick (auras des corbeaux en vol invisibles pour les survivants ; visibles 0,5 s à l'invocation) → le survivant se fie au son (12 m) et à la position des corbeaux posés au lieu d'attendre de voir l'aura pour strafer.
  - Garden of Rot (Exposed 4 s après avoir retiré l'essaim) → le survivant retire l'essaim uniquement loin d'elle au lieu de le faire dès qu'il peut.
  - Severed Hands (tout survivant à ≤ 3 m d'un Swarmed devient Swarmed) → les survivants ne font plus de gen / soin à deux quand l'un est Swarmed au lieu de continuer ensemble.
  - Thorny Nest (Haemorrhage + Mangled 70 s après un dégât de corbeau) → le survivant blessé par un corbeau se soigne plus tard / avec une trousse au lieu de lancer un soin long immédiatement.
  - O Grief, O Lover (Exhausted tant que Swarmed) → le survivant Swarmed ne compte plus sur Sprint Burst / Lithe et retire l'essaim avant d'entrer en chase au lieu de garder sa perk.
  - Darkest Ink (Blindness tant que Swarmed et 15 s après) / Silver Bell (Oblivious tant que Swarmed) → le survivant Swarmed surveille la tueuse visuellement au lieu de se fier aux auras / au TR.
  - Iridescent Feather (Undetectable quand le pouvoir est en recharge et qu'elle n'a aucun corbeau ; 1 corbeau de moins) → après une volée, le survivant s'attend à une approche sans TR au lieu de se croire tranquille.
  - Ink Egg (+1 corbeau, posés 2 s de moins) → le survivant compte 4 corbeaux par volée au lieu de 3.
  - (Le seed citait des « add-ons de vitesse de corbeau » : **aucun add-on de ce type n'existe** sur la page [6].)
- **Implications de carte** : maps ouvertes et longues (champs) = avantage tueur ; maps très coudées avec beaucoup de changements de direction = mieux pour le survivant ; les murs intérieurs ne comptent pas — HEURISTIC.
- **Perks fréquentes / synergies** : Scourge Hook: Pain Resonance, Grim Embrace, Hex: Pentimento (ses perks) ; Pop, Dead Man's Switch, Eruption (seed, UNCERTAIN pour l'usage). **Hex: Pentimento LIVE** : un totem purifié peut être ravivé ; 1 totem ravivé = réparation et soin −20 %, puis +1/2/3 % par totem supplémentaire jusqu'à 24/28/32 % ; à 5 totems, tous les totems ravivés sont bloqués pour la partie ; chaque totem ne peut être ravivé qu'une fois ; les survivants voient l'aura des totems ravivés à ≤ 16 m — STRONG_SECONDARY [6]. Bénédiction des totems ravivés : l'audit [2] (wiki Totems) les dit non bénissables, alors que le texte de la perk [6] dit que l'effet dure « jusqu'à ce que le totem soit béni ou purifié » → voir CONFLICT-L4G4-05.
- **Écart avec le seed** : conseil « coupez la ligne de corbeau (…) pas le décor vertical très épais » : **FAUX** (les Swarms traversent tous les obstacles [6]) ; « S'accroupir évite le Killer Instinct » : **OK** (FACT [6] ; l'ancienne note « douteux » de cette fiche était fausse) ; valeurs du pouvoir (3 corbeaux, 1 s, 10 s, 8 s, 5 / 12 s, ~12 m) : **OK** ; « add-ons de vitesse de corbeau » : **FAUX** (inexistants).
- **Sources** : [1], [2], [6], [11], [12], [23].

---

## 27. The Onryō (Sadako Yamamura) — archétype(s) : furtif | mobilité (TV) | condamnation (mori)

- **Version** : dernier rework 7.5.0 / 7.5.1 (Condemned verrouillé au crochet, vitesse après projection) — STRONG_SECONDARY [7] ; aucun changement de pouvoir dans les notes 9.0.0 → 10.1.2a ni au PTB 10.2.0 [23]. Problème connu signalé par BHVR en 10.1.0 : « l'Onryō peut parfois être vue à plus de 24 m en étant démanifestée » — VERIFIED_PRIMARY [21]. Statut LIVE.
- **Données LIVE** (STRONG_SECONDARY [7] sauf mention) :
  - 4,6 m/s (115 %), **TR 24 m, berceuse 24 m** (démanifestée), **petite (Short)**. CONFLICT-L4G4-03 RÉSOLU pour l'Onryō (24 m).
  - Démanifestée (état de départ) : Undetectable (persiste 1 s après la manifestation) ; **totalement invisible à > 24 m**, visible par intermittence à ≤ 24 m (le clignotement persiste 4 s après la manifestation) ; ne peut ni attaquer ni interagir avec les survivants ; **ne peut pas être stun par une palette**. Manifestation / démanifestation : 1,5 s de charge ; 4,0 m/s pendant la manifestation.
  - TV : allumées 30 s après le début ; **éteintes 70 s** quand un survivant retire/insère une cassette ; éteintes 45 s après une projection ; zone d'effet 16 m.
  - Projection (bouton secondaire, démanifestée) vers n'importe quelle TV allumée : **+1 Condemned à tous les survivants à ≤ 16 m de n'importe quelle TV allumée** (pas seulement la TV d'arrivée) ; 6,9 m/s pendant 2 s après la projection ; téléportation 2,7 s.
  - Condemned : 7 stacks = Killer Instinct 6 s, puis mori (Inexorable Stare) possible sur ce survivant **à terre** ; crochet : 1er crochet verrouille jusqu'à 3 stacks, 2e crochet jusqu'à 6.
  - Cassettes : retirer une cassette éteint la TV (+0 stack) ; l'insérer dans une autre TV retire −3 stacks ; depuis 7.5.0 la cassette doit être portée **vers une TV précise** ; porter une cassette **ne fait plus monter** le Condemned (supprimé en 7.1.0/7.5.0) ; les données listent aussi « éteindre une TV : +1 stack » (distinction avec le retrait de cassette non expliquée, UNCERTAIN).
- **Identification** :
  - Avant le reveal : **pas de TR ni de silhouette à > 24 m** ; scintillement de silhouette à ≤ 24 m ; TV qui s'allument ; Condemned qui monte d'un coup (projection) — FACT [7] / HEURISTIC.
  - Stratégie probable : mori sans crochet en fin de partie ; pression passive par projections près des gens — HEURISTIC.
- **Ce qu'elle cherche en chase** : jumpscare sur un survivant qui ne regarde pas derrière lui ; palettes jouées alors qu'elle est démanifestée (pas de stun possible [7]) ; survivants à 5-6 stacks — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles standard avec palettes quand elle est **manifestée** (le stun redevient possible : la page limite l'immunité à l'état démanifesté [7]) — SITUATIONAL.
  - Défavorables : zones sombres ou encombrées où l'on ne voit pas son approche ; zones à ≤ 16 m d'une TV allumée — HEURISTIC fondé sur FACT.
- **Mindgames propres** : manifestation (1,5 s) juste avant le coup ; démanifester pour traverser une palette sans risque de stun — HEURISTIC fondé sur FACT [7].
- **Counterplay** :
  - Mécanique : regarder derrière soi régulièrement (checkspots) pendant les gens ; surveiller la barre de Condemned — HEURISTIC. Quand : surtout si une TV à ≤ 16 m est allumée, si ton Condemned vient de monter (projection) ou si un coéquipier vient de la perdre de vue ; où : vers les accès du gen et la TV. Rappel : à > 24 m elle est totalement invisible [7], donc un check ne voit que ce qui est à ≤ 24 m. Coût : checker entre deux skill checks (raté = −10 % + 3 s, [AUDIT]).
  - Palettes : **ne pas compter sur un stun tant qu'elle est démanifestée** ; la manifestation dure 1,5 s [7] → une palette baissée pendant qu'elle se manifeste derrière toi peut stun — SITUATIONAL.
  - Positionnel : ne pas réparer à ≤ 16 m d'une TV allumée (chaque projection, vers n'importe quelle TV, donne +1 stack [7]) — HEURISTIC.
  - Macro : retirer les cassettes des TV proches des gens pour les éteindre 70 s [7] (elle ne peut plus s'y projeter et elles ne comptent plus pour la zone de 16 m) ; porter la cassette jusqu'à la TV indiquée pour −3 stacks — HEURISTIC fondé sur FACT.
  - Équipe : partager le travail des cassettes pour qu'aucun survivant n'approche 7 stacks ; après 2 crochets, jusqu'à 6 stacks sont verrouillés [7] → un seul stack de marge : jouer très prudemment — HEURISTIC.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : réparer près d'une TV allumée ; réparer dos à la zone d'arrivée ; oublier le Condemned en endgame (mori direct une fois à terre) ; lâcher une palette sur elle alors qu'elle est démanifestée.
- **Adaptations avancées / échecs** (HEURISTIC) : l'habitude « pas de TR = pas de tueur » échoue totalement ; contre Iridescent Videotape, la projection n'éteint plus la TV mais ne donne plus de Condemned → la gestion des TV/cassettes perd de sa valeur, les gens reprennent la priorité.
- **Add-ons qui changent la décision** (textes LIVE lus sur [7]) :
  - Tape Editing Deck (tous commencent avec une cassette à porter à la TV la plus éloignée ; aura révélée 6 s à l'insertion) → le survivant dépose sa cassette tôt mais quand elle est occupée ailleurs, au lieu de l'insérer sous ses yeux.
  - Ring Drawing (accrocher un porteur de cassette donne +1 Condemned à tous les autres) → le survivant ne garde pas de cassette en chase au lieu de la porter « pour plus tard ».
  - Iridescent Videotape (la projection n'éteint plus les TV et ne donne plus de Condemned ; TV éteintes par les survivants +20 % plus longtemps) → les survivants font les gens en priorité au lieu de passer du temps sur les TV.
  - Distorted Photo (les survivants à ≤ 16 m qui la voient se manifester crient et sont révélés 4 s) → le survivant s'éloigne dès qu'il la voit clignoter au lieu de la regarder se manifester.
  - Sea-Soaked Cloth / Rickety Pinwheel (Blindness / Oblivious à ≤ 8 m d'une TV allumée, 7 s après l'avoir éteinte) → le survivant n'entre dans le rayon d'une TV que pour l'éteindre au lieu d'y réparer.
  - Yoichi's Fishing Net (Blindness dès 4 stacks) → le survivant à 4+ stacks surveille visuellement au lieu de se fier aux auras.
  - Remote Control (auras des survivants à ≤ 12 m d'une TV allumée révélées 7 s après une projection) → le survivant évite les abords des TV allumées au lieu de s'y cacher.
- **Implications de carte** : maps sombres et encombrées (Swamp, Yamaoka, Red Forest) = furtivité renforcée ; maps claires/ouvertes = approche visible — HEURISTIC.
- **Perks fréquentes / synergies** : Call of Brine, Merciless Storm, Scourge Hook: Floods of Rage (ses perks), Pain Resonance, Pop (seed, UNCERTAIN pour l'usage). **Call of Brine LIVE : régression 130/140/150 % (soit +30/40/50 %) pendant 90 s après un dégât de gen, aura du gen, alerte sur Good skill check** — VERIFIED_MULTI_SOURCE ([7] + note 10.1.0 [21] : « 90s (was 70 seconds) »). Merciless Storm : à 90 % d'un gen, skill checks en continu ; un raté ou une interruption bloque le gen — STRONG_SECONDARY [7].
- **Écart avec le seed** : Call of Brine 30/40/50 % 90 s : **OK** (VERIFIED_MULTI_SOURCE) ; TR 24 m : **OK** ; petite, 6,9 m/s 2 s, 7 stacks, verrouillage 3/6, 70 s, −3 stacks : **OK** ; **IMPRÉCIS** : « +1 Condemned à 16 m de la TV d'arrivée » → à 16 m de **n'importe quelle** TV allumée ; **FAUX (obsolète)** : « porter une cassette fait monter le Condemned » (supprimé depuis 7.1.0/7.5.0 [7]).
- **Sources** : [1], [2], [7], [21], [23].

---

## 28. The Dredge — archétype(s) : mobilité (casiers) | zone (Nightfall) | info

- **Version** : **buff 9.6.0** : vitesse pendant la charge de Reign of Darkness (Gloaming) 3,8 → **4,0 m/s** — VERIFIED_MULTI_SOURCE ([8] + note 9.6.0 [20]) ; c'est le seul changement de la note. 9.2.0 : cartes retouchées (moins de zones mortes, casiers ajoutés) = buff indirect selon [8]. Rien au PTB 10.2.0 pour son pouvoir [23]. Statut LIVE.
- **Données LIVE** (STRONG_SECONDARY [8] sauf mention) :
  - 4,6 m/s (115 %), TR 32 m, grand (Tall), pas de berceuse.
  - Gloaming : maintenir le pouvoir laisse un **Remnant** et le fait passer à 4,0 m/s sans pouvoir attaquer ; auras de tous les casiers visibles ; **3 jetons** = 3 téléportations de casier en casier (19 m/s de jour, 38 m/s en Nightfall) ; bouton d'attaque = retour instantané au Remnant **s'il existe encore** (le Remnant disparaît après la 1re téléportation ou si un survivant le touche) ; cooldown 10 s de jour, 4 s en Nightfall ; pas de téléportation vers un casier à < 12 m d'un survivant accroché.
  - Dans un casier : il voit dehors ; les survivants proches entendent un avertissement après 8 s ; s'il se téléporte dans un casier **occupé par un survivant**, il en ressort en le portant ; même chose si un survivant interagit avec un casier qu'il occupe.
  - Verrous : un survivant verrouille un casier en 0,1 s ; un casier verrouillé ne peut plus accueillir de survivant et est **prioritaire** quand il se téléporte vers une paire de casiers ; il en sort en **2,25 s en faisant beaucoup de bruit**, puis le verrou est cassé définitivement ; il peut aussi casser un verrou de l'extérieur par attaque de base (1,5 s).
  - Nightfall : jauge de 300 charges ; +0,25/s passif ; **+6/s pendant que le Dredge est caché dans un casier** ; +1/s par survivant blessé (max +4/s) ; +20 par crochet ou blessure par attaque de base ; +10 par retour au Remnant. Alerte globale à 85 %. **Durée 60 s** (60 charges à −1/s). Pendant Nightfall : obscurité quasi totale, Dredge Undetectable, téléportation 38 m/s, cooldown 4 s, et Killer Instinct pour les survivants à ≤ 16 m d'un casier où il se trouve (ou du Remnant quand il y revient). Silhouettes visibles entre survivants jusqu'à 54 m, pour le Dredge jusqu'à 20 m.
- **Identification** : grand tueur, TR 32 m, casiers qui « claquent » quand il se téléporte ; jauge Nightfall et alerte à 85 % (FACT [8]) ; Remnant (silhouette) laissé sur la map — HEURISTIC.
- **Ce qu'il cherche en chase** : survivants qui font des boucles près de casiers ; zones où son Remnant permet de revenir couper une rotation ; chase pendant Nightfall (vision survivant réduite) — HEURISTIC.
- **Tiles / structures** : défavorables = zones de casiers et bâtiments bourrés de casiers (téléportation au cœur de la tile) ; favorables = tiles extérieures sans casiers proches — HEURISTIC.
- **Mindgames propres** : faux retour au Remnant ; téléportation vers un casier derrière toi en fin de tile — HEURISTIC.
- **Counterplay** :
  - Mécanique : repérer le Remnant et ne pas se placer entre lui et le Dredge ; **toucher le Remnant le supprime** (FACT [8]) → s'il est sur ta route et que le Dredge n'est pas tout près, lui retirer son retour — HEURISTIC.
  - Positionnel : verrouiller les casiers proches des gens actifs et des crochets ; un casier verrouillé attire sa téléportation (prioritaire dans une paire) mais l'oblige à sortir en 2,25 s **bruyamment** [8] → c'est une alarme, pas un mur — HEURISTIC fondé sur FACT. Éviter de finir une chase près d'un casier non verrouillé.
  - Macro : **ne pas se cacher en casier** : s'il se téléporte dans ton casier, il en sort en te portant [8]. Correction : un survivant caché ne remplit **pas** la jauge (les +6/s concernent le Dredge caché [8]). Limiter les survivants blessés en même temps (jusqu'à +4/s sur la jauge [8]) — HEURISTIC.
  - Un casier qui « avertit » (son après 8 s [8]) = le Dredge est dedans → ne pas l'ouvrir ni rester devant.
  - Équipe : pendant Nightfall, rester près de tiles solides et se signaler les positions (SWF) ; éviter les sauvetages risqués au milieu de Nightfall — SITUATIONAL. Limite (calcul sur valeurs vérifiées) : Nightfall dure 60 s [8] et une phase de crochet 70 s [AUDIT] → attendre la fin de Nightfall n'est possible que si l'accroché vient d'entrer dans sa phase ; sinon sauver quand même par la route la plus couverte.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : se cacher en casier ; ignorer l'alerte à 85 % ; réparer à côté d'un casier non verrouillé ; rester blessés à plusieurs.
- **Adaptations avancées / échecs** (HEURISTIC) : sur les maps intérieures pleines de casiers, le verrouillage ne suffit pas (trop de casiers) → jouer les tiles extérieures ; si Nightfall est lancé en endgame, les portes restent le repère fixe : s'en rapprocher avant.
- **Add-ons qui changent la décision** (textes LIVE lus sur [8]) :
  - Field Recorder (partie qui commence en Nightfall, Nightfall automatique au dernier gen, Exhausted 15 s au contact du Remnant) → les survivants préparent le dernier gen sains et près des portes au lieu de le finir blessés au centre, et ne touchent pas le Remnant avec une perk d'exhaustion à garder.
  - Lavalier Microphone (auras de tous les survivants 3 s après le dernier jeton ; casiers à ≤ 6 m des survivants qui claquent à son arrivée) → le survivant s'attend à être révélé après sa 3e téléportation et change de position au lieu de rester sur place.
  - Iridescent Wooden Plank (Exposed pendant les 12 dernières secondes de Nightfall) → le survivant évite la chase et les contacts en fin de Nightfall au lieu de relâcher sa prudence quand la nuit se termine.
  - Broken Doll (Nightfall +20 s, soit 80 s) → les survivants n'attendent plus la fin de Nightfall pour sauver (80 s > phase de crochet 70 s) au lieu de temporiser.
  - Boat Key (tous les verrous cassés quand les portes sont alimentées) → les survivants ne comptent plus sur les casiers verrouillés en endgame au lieu de s'en servir comme alarme.
  - Sacrificial Knife (en Nightfall, fenêtres et vaults bloqués 5 s à ≤ 16 m du casier dont il sort) → le survivant quitte la zone du casier au lieu de compter sur la fenêtre la plus proche.
  - Tilling Blade (Blindness + Haemorrhage + Mangled 80 s si blessé en Nightfall) → le survivant évite toute blessure pendant Nightfall au lieu d'accepter un coup « gratuit ».
- **Implications de carte** : Lery's, Hawkins, RPD, main buildings chargés = beaucoup de casiers → avantage tueur ; maps extérieures ouvertes avec peu de casiers = moins de mobilité ; les retouches de cartes 9.2.0 ont ajouté des casiers [8] — HEURISTIC.
- **Perks fréquentes / synergies** : Darkness Revealed (fouiller un casier révèle les survivants à ≤ 8 m de n'importe quel casier pendant 6/7/8 s, cooldown 30 s — STRONG_SECONDARY [8]), Dissolution, Septic Touch (soin dans le TR → Blindness + Exhausted 20/25/30 s après l'interruption — STRONG_SECONDARY [8]) ; Pain Resonance, Grim Embrace, No Holds Barred (seed, UNCERTAIN pour l'usage). **Dissolution** : la page wiki [8] affiche **sans bandeau** le texte PTB 10.2.0 (« attaque de base seulement, 13/14/15 s ») ; la note PTB [23] confirme que c'est le changement PTB et donne l'état LIVE : **n'importe quel dégât, 12/16/20 s** — VERIFIED_PRIMARY (valeur LIVE via le « was » de [23]). En LIVE : pendant 12/16/20 s après une blessure (quelle qu'en soit la source, après 3 s), la palette que tu fast-vaultes dans son TR est détruite.
- **Écart avec le seed** : buff 9.6.0 « 4 m/s pendant la charge » : **OK** (VERIFIED_MULTI_SOURCE) ; Nightfall 60 s, 3 jetons, 2,25 s : **OK** ; Dissolution PTB 10.2.0 : **OK** (existence confirmée par [23], étiquetage PTB correct) ; **FAUX** : « se cacher en casier remplit la jauge » (c'est le Dredge caché qui la remplit [8]).
- **Sources** : [1], [2], [8], [20], [23].

---

## 29. The Mastermind (Albert Wesker) — archétype(s) : mobilité | anti-loop | infection (usure)

- **Version** : 9.5.0 : refonte technique de Virulent Bound (désynchronisation, détection des collisions) — VERIFIED_PRIMARY [17]. **Buff 9.6.0** : récupération après bond 3 → **2,7 s**, recharge d'un jeton 5,5 → **5 s**, fenêtre du 2e bond (Chain Bound) 2 → **2,5 s** ; add-ons Loose Crank 8 → 15 %, Egg (Gold) 50 → 20 % — VERIFIED_MULTI_SOURCE ([9] changelog + note 9.6.0 [20]). **Attention** : la description du pouvoir sur la page wiki [9] n'a pas été mise à jour (elle dit encore « 2 seconds » et des cooldowns de 3 s) ; les valeurs LIVE sont celles de la note [20]. 9.6.1 : 2v8 seulement (jeton 5,5 s) [ne concerne pas le 1v4]. Rien au PTB 10.2.0 pour le pouvoir [23]. Statut LIVE.
- **Données LIVE** (STRONG_SECONDARY [9] sauf mention) :
  - 4,6 m/s (115 %), **TR 40 m**, taille moyenne (Average). CONFLICT-L4G4-03 RÉSOLU pour le Mastermind (40 m ; le seed avait raison).
  - Virulent Bound : **2 jetons** (recharge 5 s chacun [20]) ; charge 1,5 s à 3,68 m/s ; 1er bond 0,5 s, 2e bond (dans la fenêtre de 2,5 s [20]) 1 s, à 14 m/s ; portée approx. **~7 m puis ~14 m** (valeurs approximatives selon la page) ; 2,76 m/s en marchant pendant la fenêtre.
  - Collision avec un survivant : s'il **interagit** (gen, soin, unhook…) ou est protégé de l'état Dying, simple coup de tentacules = dégât direct (double dégât = à terre s'il est en infection critique) ; sinon il le **saisit** : s'il heurte un obstacle avant la fin du bond → dégât (si l'obstacle est un autre survivant, celui-ci est blessé + Deep Wound) ; sinon il **le projette** en ligne droite, dégât seulement si le survivant heurte un obstacle à ≤ 0,75 m pendant la projection ; le survivant projeté est immobilisé 1,9 s. Portes bloquées pour le survivant saisi pendant le bond + 5 s.
  - **Virulent Vault** : en heurtant une palette baissée ou une fenêtre pendant un bond, il la **franchit** automatiquement (il ne la casse pas) ; un survivant juste derrière est touché. La casse de palette au bond n'existe **qu'avec l'add-on Lab Photo** (qui supprime alors le franchissement des palettes). Note 9.5.0 : Mastermind classé « **special-vault** », pas « special-break » — VERIFIED_MULTI_SOURCE ([9] + [17]). → l'affirmation « casse de palette instantanée par Virulent Bound » (audit [2], wiki Pallets) est **FAUSSE** en base.
  - Cooldowns (page, avant 9.6.0) : 1,5 s après un franchissement ; 2 s en heurtant un mur/une palette ; 5 s après une projection ; les autres cooldowns de 3 s sont passés à **2,7 s** en 9.6.0 [20].
  - Uroboros : +20 charges à chaque contact de bond ; +0,8/s passif (sauf accroché / à terre) ; **crochet = remise à 1** ; à 100 = **infection critique : Hindered −4 % permanent** (8 % avant 8.0.0) et **le prochain contact de bond fait double dégât (à terre depuis sain)**. Sprays : 6 caisses (aura visible des infectés), 1 spray à 2 usages par caisse, 5 s d'usage, Killer Instinct 4 s.
- **Identification** : TR 40 m (plus large que la normale), bruit de charge de bond ; caisses de sprays sur la map ; jauge d'infection Uroboros sur les portraits — FACT [9] / HEURISTIC.
- **Ce qu'il cherche en chase** : couloirs et zones ouvertes (élan), fenêtres vaultées sans avance, survivants près d'un mur (dégât à la collision), survivants en interaction (coup direct) — HEURISTIC fondé sur FACT [9].
- **Tiles / structures** :
  - Favorables : tiles serrées, coudées, avec objets qui bloquent le bond ; bâtiments à plusieurs étages — HEURISTIC.
  - Défavorables : longues lignes, fenêtres isolées, champs ouverts — HEURISTIC.
  - Palettes (corrigé) : **en base, le bond franchit la palette baissée sans la casser** [9][17] → la palette reste utilisable après son passage ; le danger est d'être **juste derrière** la palette ou la fenêtre quand il bondit (touché au passage [9]). Conduite : après avoir baissé / vaulté, ne pas rester collé derrière l'obstacle dans l'axe du bond ; s'écarter latéralement ou continuer vers la tile suivante — SITUATIONAL. Après un franchissement, il a 1,5 s de cooldown [9] → fenêtre pour re-jouer la palette dans l'autre sens. Sans jeton de bond, il redevient un M1 face à cette palette → drop normal ; avec **Lab Photo**, il casse la palette au bond mais ne peut plus la franchir → retour au schéma « pré-drop + départ ».
- **Mindgames propres** : charge feinte ; 1er bond court pour se repositionner puis 2e bond dans les 2,5 s [20] → ne pas réagir au premier bond comme s'il était l'attaque — HEURISTIC.
- **Counterplay** :
  - Mécanique : au son de charge (1,5 s [9]), demi-tour ou strafe serré ; forcer le bond contre un obstacle — HEURISTIC.
  - Positionnel : en espace ouvert, éviter d'avoir un mur ou un coéquipier juste derrière soi (la saisie ne fait des dégâts que si tu heurtes quelque chose [9]) — HEURISTIC fondé sur FACT.
  - Interactions : **ne pas réparer / soigner / décrocher quand il a un bond prêt à portée** : un contact pendant une interaction = coup direct sans saisie [9] — HEURISTIC fondé sur FACT.
  - Macro : l'infection critique arrive en 100 s de passif depuis la première infection (20 → 100 à 0,8/s) [9] ; se soigner **avant 100** (Hindered 4 % et surtout **à terre en un contact**) ; le spray déclenche un Killer Instinct de 4 s → le faire quand il est loin — SITUATIONAL. Un crochet remet l'infection à 1 [9].
  - Équipe : éviter de se regrouper sur les caisses de sprays ; ne pas coller un coéquipier en chase (un survivant heurté par un survivant projeté est blessé + Deep Wound [9]) — HEURISTIC.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : courir en ligne droite entre deux tiles ; vaulter une fenêtre avec peu d'avance et rester derrière ; réparer en infection critique ; considérer la palette « perdue » alors qu'il l'a seulement franchie.
- **Adaptations avancées / échecs** (HEURISTIC) : sur maps ouvertes, le « tile-to-tile » échoue souvent → privilégier les zones denses même si elles ont moins de palettes.
- **Add-ons qui changent la décision** (textes LIVE lus sur [9], valeurs 9.6.0 confirmées par [20]) :
  - Lab Photo (casse palettes et murs cassables au contact pendant un bond ; ne franchit plus les palettes) → le survivant pré-drop et part au lieu de rejouer la palette après son passage.
  - Iridescent Uroboros Vial (tous infectés dès le début ; Exposed 30 s en infection critique) → les survivants se soignent de l'infection bien avant 100 et vont chercher les sprays tôt au lieu de les garder pour plus tard.
  - Dark Sunglasses (Undetectable 20 s chaque fois qu'un survivant atteint l'infection critique) → les survivants surveillent les jauges d'infection des coéquipiers comme alerte « approche sans TR » au lieu de se fier au TR de 40 m.
  - Loose Crank (+15 % de vitesse pendant la fenêtre du 2e bond [20]) → le survivant garde plus de distance après le 1er bond au lieu de se croire à l'abri hors des ~14 m.
  - Maiden Medallion (Blindness 60 s en infection critique) / Uroboros Virus (aura 4 s en infection critique) → le survivant se soigne avant 100 au lieu d'attendre.
  - Video Conference Device (infection 30 % plus rapide) → le survivant avance son passage aux sprays.
  - Helicopter Stick (aura 8 s après un spray) / Bullhorn (Oblivious 30 s après un spray) → le survivant se soigne loin de sa zone de réparation au lieu de juste à côté.
- **Implications de carte** : maps ouvertes = très forte mobilité ; maps intérieures étroites = bonds bloqués — HEURISTIC.
- **Perks fréquentes / synergies** : Awakened Awareness (auras à 16/18/20 m en portant un survivant), Terminus, Superior Anatomy (ses perks) ; Pain Resonance, Brutal Strength, Pop, Lethal Pursuer (seed, UNCERTAIN pour l'usage). **Superior Anatomy** : la page [9] affiche le texte **PTB 10.2.0** (bandeau « upcoming Patch 10.2.0 ») ; LIVE = fast vault d'un survivant à ≤ 12 m → **son prochain vault** de fenêtre plus rapide, cooldown 25 s (12 m et 25 s : note 9.0.0 [11]) ; au PTB : bonus 30/35/40 % pendant 10 s, cooldown 20 s [23] — PTB, pas LIVE. Terminus : Broken 35/40/45 s après l'ouverture des portes (note 9.0.0 [11]).
- **Écart avec le seed** : buff 9.6.0 (2,5 s, 2,7 s, Loose Crank) : **OK** (VERIFIED_MULTI_SOURCE) ; TR 40 m : **OK** (conflit résolu) ; Hindered 4 %, 6 caisses, 2 usages, KI 4 s : **OK** ; « passe fenêtres et palettes » : **OK** ; **FAUX (erreur de l'audit [2], pas du seed)** : « casse de palette instantanée par Virulent Bound » (franchissement, pas casse ; casse seulement avec Lab Photo).
- **Sources** : [1], [2], [9], [11], [17], [20], [23].

---

## 30. The Knight (Tarhos Kovács) — archétype(s) : anti-loop (gardes) | zone (patrouilles)

- **Version** : **buff 9.1.0** : tracé de patrouille max 32 → **38 m**, tracé plus rapide (13,8 → 15 m/s, accélération ×2, strafe 100 %) ; Call to Arms ramené à +4 m / +7 % ; les changements de temps d'apparition des étendards prévus au PTB ont été **annulés** — VERIFIED_MULTI_SOURCE ([10] + note 9.1.0 [13]). **Changement 10.1.1** : une palette baissée pendant qu'un garde te chasse l'oblige à la **contourner** ; si ce détour dépasse **48 m**, le garde **abandonne la chasse** ; une palette baissée **sur** le garde (à < 3 m de lui) → il passe à travers — VERIFIED_MULTI_SOURCE ([10] + note 10.1.1 [22]). Rien au PTB 10.2.0 pour son pouvoir [23]. Statut LIVE.
- **Données LIVE** (STRONG_SECONDARY [10] sauf mention) :
  - 4,6 m/s (115 %), TR 32 m, taille moyenne (Average), pas de berceuse.
  - Tracé de patrouille (Guard Summon Mode) : 15 m/s, **38 m max** [13] (la description de la page dit encore 32 m, les données 38 m), 10 s max ; orbe visible des survivants qui rétrécit et disparaît après 10 m ; pendant le tracé il ne voit ni les survivants ni leurs traces, mais voit leurs interactions. Un tracé ≥ 10 m donne un garde qui patrouille jusqu'à détecter quelqu'un ; tracé long = Haste 5 % pour lui (2-10 s), chasse ×1,25-1,5 plus longue, étendard ×1,5-2 plus lent à apparaître.
  - Ordre de garde (Guard Order) : à ≤ 6 m d'un mur cassable, d'une palette baissée ou d'un gen entamé → le garde casse / endommage (gen −5 %) ; **durée 1,8 s (Carnifex) ou 5 s (Assassin, Jailer)** — ce n'est pas une casse instantanée.
  - Détection : survivant dans le rayon de vision du garde (180°) et dans sa LOS, **ou** qui déclenche une Loud Noise Notification → le garde traverse le décor jusqu'à la position détectée en 2,5 s, y plante un **étendard**, puis chasse ; il blesse tout survivant à portée, chassé ou non.
  - Gardes : **Carnifex** patrouille 3,4 m/s, vision 10 m, casse 1,8 s, chasse 4,1 m/s pendant 12 s, étendard 5 s, cooldown 20 s ; **Assassin** patrouille 3,4 m/s, vision 10 m, chasse **4,4 m/s** pendant 12 s, **Deep Wound**, cooldown 30 s ; **Jailer** patrouille **4,1 m/s pendant 24 s**, vision **16 m**, chasse 4,1 m/s pendant **24 s**, étendard 10 s, cooldown 25 s.
  - Fin de chasse sans dégât : toucher l'étendard matérialisé (**Haste 50 % + Endurance 3 s**), **décrocher un autre survivant**, ou tenir jusqu'à la fin du minuteur ; si le Knight est à ≤ 8 m de son garde, le minuteur baisse **3× plus vite** ; si le garde ou le Knight blesse le chassé, la chasse s'arrête ; si le garde met à terre, Killer Instinct 3 s. Les gardes sont ralentis à 2,2 m/s pendant 1 s aux palettes et vaults ; ils sortent un survivant d'un casier en 3 s.
- **Identification** : orbe de tracé (disparaît après 10 m), garde visible, étendard sur la map — FACT [10] / HEURISTIC.
- **Ce qu'il cherche en chase** : « sandwich » garde + Knight de part et d'autre d'une tile ; ordre de garde sur une palette baissée ou un gen — HEURISTIC fondé sur FACT [10]. (Le seed disait « patrouille à travers une palette pour la casser » : **faux**, la casse passe par un ordre de garde [10].)
- **Tiles / structures** :
  - Favorables : quitter une tile où un garde arrive et aller vers une tile neuve ; bâtiments à plusieurs sorties — HEURISTIC.
  - Défavorables : tiles à une seule palette qu'un ordre de garde peut casser ; culs-de-sac — HEURISTIC.
  - **Palettes contre un garde qui chasse (10.1.1)** : baisser la palette **quand le garde est encore à ≥ 3 m** l'oblige à la contourner ; sur une tile dont le contournement dépasse 48 m, **la chasse s'arrête** [22] ; baissée sur lui (< 3 m), il passe à travers [10] → baisser **tôt**, pas au contact — SITUATIONAL. Limite : le Knight lui-même casse la palette normalement ; la plupart des tiles se contournent en bien moins de 48 m (HYPOTHESIS : effet surtout sur longs murs / bâtiments).
- **Mindgames propres** : tracé de patrouille qui coupe la sortie « évidente » ; choix du garde selon la situation (Jailer pour les gens : 16 m, 24 s) — HEURISTIC.
- **Counterplay** :
  - Mécanique : pendant une chasse de garde, se diriger tôt vers l'étendard (Haste 50 % + Endurance 3 s [10]) avant que le Knight n'arrive — HEURISTIC fondé sur FACT. S'il reste à ≤ 8 m de son garde, la chasse se vide 3× plus vite [10] → tenir le temps devient réaliste.
  - Positionnel : ne pas jouer une boucle où garde et Knight se font face ; changer de tile ; baisser une palette tôt contre le garde (voir 10.1.1) — HEURISTIC.
  - Détection : ne pas déclencher de Loud Noise (skill check raté, actions précipitées) près d'un garde en patrouille ; rester hors de sa LOS (vision 180°, 10 m / 16 m Jailer [10]) — HEURISTIC fondé sur FACT.
  - Macro : sortir de la zone de détection d'une patrouille plutôt que continuer la réparation ; Assassin → soigner le Deep Wound rapidement — SITUATIONAL. Un ordre de garde sur un gen = −5 % [10].
  - Équipe : **un unhook met fin à la chasse de garde du survivant qui décroche** (FACT [10]) → si tu es chassé par un garde près d'un crochet, le décrochage te libère aussi — SITUATIONAL (le Knight reste une menace).
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : rester sur une tile pendant qu'un garde arrive ; oublier l'étendard ; paniquer vers une zone morte ; baisser la palette au contact du garde (il la traverse [10]).
- **Adaptations avancées / échecs** (HEURISTIC) : contre Iridescent Company Banner, les fenêtres du tracé et celles que tu vaultes sont bloquées → jouer les palettes et les changements de tile.
- **Add-ons qui changent la décision** (textes LIVE lus sur [10]) :
  - Iridescent Company Banner (fenêtres sur le tracé bloquées 25 s après l'invocation ; fenêtres vaultées par le chassé bloquées pour les autres pendant la chasse ; **portes bloquées pour le chassé** pendant la chasse) → le survivant chassé joue les palettes / change de tile au lieu de compter sur des vaults répétés, et ne fonce pas vers les portes pendant une chasse.
  - Town Watch's Torch (Knight Undetectable pendant une chasse) → pendant une chasse de garde, le survivant s'attend au Knight sans TR au lieu de guetter le TR.
  - Blacksmith's Hammer (Broken 60 s si blessé par un garde) / Broken Hilt (Haemorrhage + Mangled 70 s) → le survivant évite le coup du garde en priorité (étendard) au lieu d'accepter une blessure « simple ».
  - Grim Iron Mask (Blindness 75 s si détecté en patrouille) / Ironworker's Tongs (Oblivious 60 s si le garde rate sa chasse) → le survivant surveille visuellement au lieu de se fier aux auras / au TR.
  - Map of the Realm (+2 m de vision en patrouille) → le survivant garde 2 m de marge supplémentaire.
  - Sharpened Mount (étendards +15 % plus longs à apparaître) → le survivant part vers l'étendard un peu plus tard au lieu de courir dessus avant qu'il soit matérialisé.
  - Dried Horsemeat (chasse +4 s) / Tattered Tabard (patrouille +8 s) → le survivant compte des durées plus longues avant la fin naturelle.
- **Implications de carte** : maps ouvertes = patrouilles longues efficaces ; maps intérieures = tracés gênés — HEURISTIC.
- **Perks fréquentes / synergies** : Hex: Face the Darkness, Hubris, Nowhere to Hide (ses perks) ; Pain Resonance, Grim Embrace, Pop, Lethal Pursuer (seed, UNCERTAIN pour l'usage). **Nowhere to Hide LIVE = auras des survivants à ≤ 24 m du gen endommagé, 3/4/5 s** — VERIFIED_MULTI_SOURCE ([10] + note 10.1.0 [21]).
- **Écart avec le seed** : **FAUX** — Nowhere to Hide « 18 m (nerf 10.1.0) » : 18 m = valeur PTB 10.1.0, **LIVE = 24 m** ([10][21]) ; conseil « moins bon depuis le passage à 18 m » infondé. **FAUX** — « Iridescent Company Banner : fenêtres cassables » (elle **bloque** des fenêtres et les portes pour le chassé [10]). **FAUX** — « garde qui patrouille près d'une palette : casse » (casse = ordre de garde de 1,8 / 5 s [10]). **OK** — 38 m depuis 9.1.0, Carnifex 20 s, Assassin 4,4 m/s + Deep Wound + 30 s, Jailer 16 m / 24 s, étendard Haste 50 % + Endurance 3 s, unhook qui termine la chasse. **IMPRÉCIS** — absence du changement 10.1.1 (palettes contre les gardes).
- **Sources** : [1], [2], [10], [13], [21], [22], [23].

---

## Claims

Calculs dérivés (valeurs vérifiées lot 12b) : Trickster 4,4 vs 4,0 m/s → il reprend 0,4 m/s (10 m en 25 s, contre 16,7 s pour un tueur à 4,6 m/s) ; en volée il descend à 3,86 → 3,53 → 3,16 m/s [3][17] (tu gagnes 0,14 → 0,47 → 0,84 m/s) ; décroissance de Laceration ≈ 16 s + n × 4,4 s (n = charges) [3] ; 66 s d'arrêt × 3 réparateurs = 198 s-survivant ≈ 2,2 gens solo ; Nightfall 60 s [8] < phase de crochet 70 s [AUDIT] (80 s avec Broken Doll > 70 s) ; Uroboros 20 → 100 à 0,8/s = 100 s [9].

Comptage « confirmés par note officielle » (ligne de couverture) = lignes VERIFIED_PRIMARY + VERIFIED_MULTI_SOURCE ci-dessous : 23.

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| G4-01 | Trickster 4,4 m/s (was 4,6) | [3][17] | 9.5.0 | VERIFIED_MULTI_SOURCE |
| G4-02 | Trickster TR 24 m, 44 m au rang S (was 32 m) ; berceuse 44 m, coupée au rang S | [3][17] | 9.5.0 | VERIFIED_MULTI_SOURCE (berceuse : STRONG_SECONDARY [3]) |
| G4-03 | Trickster 36 lames (was 44), Main Event au rang S seulement | [3][17] | 9.5.0 | VERIFIED_MULTI_SOURCE |
| G4-04 | Laceration : décroissance après 16 s (was 12) sans touche, puis −1 charge / 4,4 s ; 6 charges = 1 état ; attaque de base −3 charges | [3][17][19] | 9.5.0 / 9.5.2 | VERIFIED_MULTI_SOURCE |
| G4-05 | Rang S 66 s (non rafraîchissable, en pause pendant Main Event) ; Main Event 10 s ×1,67, cooldown 4 s, interdit à < 20 m d'un accroché ; Laceration figée au rang S | [3][17][18] | 9.5.0 / 9.5.1 | VERIFIED_MULTI_SOURCE |
| G4-05b | Vitesse de lancer 3,86 / 3,53 / 3,16 m/s (après 0 / 5 / 10 lames) ; Main Event 3,92 m/s | [3][17] | 9.5.0 | VERIFIED_MULTI_SOURCE |
| G4-05c | Add-ons Trickster 9.5.2 : Bloody Boa −75 %, Death Throes 75 %, Waiting For You Watch 10 s, On Target Single 0,5 s/touche max 20 s | [3][19] | 9.5.2 | VERIFIED_MULTI_SOURCE |
| G4-06 | Eruption LIVE : −10 % + régression, auras 8/10/12 s, cooldown 30 s ; le 10 → 5 % de 9.2.0 a été annulé avant le LIVE | [4][14] | 9.2.0 | VERIFIED_MULTI_SOURCE |
| G4-07 | Nemesis tentacule 5 / 6,5 m (MR3), charge 0,35 s, cooldown 2,25 s, Hindered 20 % 2 s ; MR2 5 pts / MR3 14-15 pts ; frappe ne casse pas et ne touche pas en même temps | [4] | 5.2.0 → LIVE | STRONG_SECONDARY |
| G4-07b | Nemesis 2v8 : 4 zombies, +35 % de vitesse de zombie | [4][16] | 9.4.2 | VERIFIED_MULTI_SOURCE (2v8 uniquement) |
| G4-08 | Perks Hellraiser renommées : Deadlock → No Holds Barred, Plaything → Fortune's Fool, Gift of Pain → Weeping Wounds | [11] | 9.0.0 | VERIFIED_PRIMARY |
| G4-09 | Cenobite : Chain Hunt à 90 s, chaîne retirée en 1 s, Gateway 16 m, chaîne pilotée 24 m, 3 chaînes, portes bloquées + 5 s, téléportation 3,25 s à 10-12 m | [5] | LIVE | STRONG_SECONDARY |
| G4-09b | Cenobite : chapitre retiré des boutiques le 4 mars 2025 (13 mars eShop) | [5] | — | STRONG_SECONDARY |
| G4-09c | Original Pain : aura 8 s après avoir arraché une chaîne | [5][15] | 9.3.0 | VERIFIED_MULTI_SOURCE |
| G4-10 | Artist : 3 corbeaux, trajectoire 7,5 m puis Swarm qui traverse les obstacles ; 2e touche sur Swarmed = blessure ; retrait 8 s ou casier ; recharge 5/9/12 s ; accroupi = pas de Killer Instinct | [6] | LIVE | STRONG_SECONDARY |
| G4-10b | Artist : add-ons du PTB 9.0.0 annulés ; correctifs 9.0.2 (corbeau sur Swarmed = perte de santé) | [11][12] | 9.0.0 / 9.0.2 | VERIFIED_PRIMARY |
| G4-11 | Call of Brine 130/140/150 % de régression pendant 90 s (was 70) | [7][21] | 10.1.0 | VERIFIED_MULTI_SOURCE |
| G4-12 | Onryō : TR 24 m, petite ; 7 stacks = mori ; cassette −3 stacks ; verrouillage 3/6 ; projection +1 stack à ≤ 16 m de toute TV allumée ; 6,9 m/s 2 s ; pas de stun démanifestée | [7] | 7.5.1 → LIVE | STRONG_SECONDARY |
| G4-12b | Onryō parfois visible à > 24 m démanifestée (problème connu) | [21] | 10.1.0 | VERIFIED_PRIMARY (bug, pas un design) |
| G4-13 | Dredge 9.6.0 : vitesse en charge de Reign of Darkness 3,8 → 4,0 m/s (seul changement) | [8][20] | 9.6.0 | VERIFIED_MULTI_SOURCE |
| G4-14 | Dredge : Nightfall 60 s (300 charges, décharge 60 à −1/s) ; 3 jetons ; sortie de casier verrouillé 2,25 s ; +6/s quand **le Dredge** est caché | [8] | LIVE | STRONG_SECONDARY |
| G4-15 | Mastermind 9.6.0 : récupération 2,7 s (was 3), jeton 5 s (was 5,5), fenêtre Chain Bound 2,5 s (was 2), Loose Crank 15 %, Egg (Gold) 20 % | [9][20] | 9.6.0 | VERIFIED_MULTI_SOURCE |
| G4-15b | Mastermind TR 40 m ; Hindered 4 % en infection critique ; 6 caisses, spray 2 usages, KI 4 s | [9] | LIVE | STRONG_SECONDARY |
| G4-15c | Refonte technique de Virulent Bound (désynchronisation) | [17] | 9.5.0 | VERIFIED_PRIMARY |
| G4-16 | **Virulent Bound franchit (special-vault) les palettes, ne les casse pas** (casse seulement avec Lab Photo) ; **les gardes du Knight cassent par ordre de garde en 1,8 s / 5 s**, pas instantanément — l'affirmation antérieure (audit [2], wiki Pallets) est fausse | [9][10][17] | 9.5.0 → LIVE | VERIFIED_MULTI_SOURCE |
| G4-17 | Knight 9.1.0 : tracé 38 m, 15 m/s ; changements d'étendards annulés | [10][13] | 9.1.0 | VERIFIED_MULTI_SOURCE |
| G4-17b | Knight 10.1.1 : palette baissée à ≥ 3 m d'un garde qui chasse → contournement ; détour > 48 m → fin de chasse ; baissée sur lui → il passe à travers | [10][22] | 10.1.1 | VERIFIED_MULTI_SOURCE |
| G4-17c | Knight : étendard = Haste 50 % + Endurance 3 s ; unhook par le chassé = fin de chasse ; Knight à ≤ 8 m du garde = minuteur ×3 ; Carnifex 20 s / Assassin 4,4 m/s, Deep Wound, 30 s / Jailer 16 m, 24 s, 25 s | [10] | LIVE | STRONG_SECONDARY |
| G4-18 | Nowhere to Hide LIVE : 24 m autour du gen, 3/4/5 s (18 m = PTB 10.1.0) | [10][21] | 10.1.0 | VERIFIED_MULTI_SOURCE |
| G4-19 | No Way Out : 12 s + 6/9/12 s par jeton, max 36/48/60 s | [3] | LIVE | STRONG_SECONDARY |
| G4-19b | Hex: Crowd Control : chaque fast vault de fenêtre la bloque, limite 4/5/6 | [3] | LIVE (rework 9.5.0 selon [2]) | STRONG_SECONDARY |
| G4-20 | Dissolution PTB 10.2.0 : attaque de base seulement, 13/14/15 s ; **LIVE : n'importe quel dégât, 12/16/20 s** (la page wiki Dredge affiche déjà le texte PTB sans bandeau) | [23] (+ [8]) | PTB 10.2.0 | VERIFIED_PRIMARY (changement PTB, non LIVE) |
| G4-21 | Superior Anatomy LIVE : 12 m, prochain vault plus rapide, cooldown 25 s ; PTB 10.2.0 : 30/35/40 % pendant 10 s, cooldown 20 s | [11][23] (+ [9] PTB) | 9.0.0 / PTB 10.2.0 | VERIFIED_PRIMARY |
| G4-22 | Hex: Pentimento : −20 % au 1er totem, jusqu'à 24/28/32 % à 5 | [6] | LIVE | STRONG_SECONDARY |

## Conflits

#### CONFLICT-L4G4-01 : No Way Out (durée de blocage)
- Source A : seed [1] fiche Trickster — « 12 s par token (jusqu'à 60 s environ) ».
- Source B : audit [2] (wiki.gg Exit Gates) — « 12 s + 6/9/12 s par jeton ».
- Hypothèse : le seed confond base et bonus par token.
- Résolution : **RÉSOLU** — B confirmé : « Blocks both Exit Gate Switches for 12 seconds. This time is extended by an additional 6/9/12 seconds per accumulated Token, up to a combined maximum of 36/48/60 seconds » (page Trickster [3], perk No Way Out). Le « ~60 s » du seed n'est juste qu'au rang III avec 4 jetons.

#### CONFLICT-L4G4-02 : Artist — les murs protègent-ils des corbeaux ?
- Source A : seed [1] — « le corbeau traverse les murs ».
- Source B : seed [1], même fiche — « coupez la ligne de corbeau (…) pas le décor vertical très épais ».
- Hypothèse : contradiction interne ; « décor vertical très épais » n'a pas de référence connue.
- Résolution : **RÉSOLU** — A confirmé : un Dire Crow qui heurte un obstacle pendant sa trajectoire de 7,5 m devient un Swarm, et « Swarms continue travelling across the environment, while passing through any environmental obstacles » (page Artist [6]). Aucun décor, épais ou non, ne bloque le Swarm ; B est faux.

#### CONFLICT-L4G4-03 : TR de l'Onryō et du Mastermind
- Source A : seed [1] — Onryō 24 m, Mastermind 40 m.
- Source B : connaissance du modèle (antérieure à mi-2026), UNCERTAIN — 32 m pour ces deux tueurs.
- Résolution : **RÉSOLU** — A confirmé : infobox « Terror Radius 24 metres », « Lullaby Radius 24 metres (Otherworld) » (page Onryō [7]) ; « Terror Radius 40 metres » (page Mastermind [9]). La connaissance du modèle était fausse.

#### CONFLICT-L4G4-04 : Eruption (10 % ou 5 %)
- Source A : audit [2] (registre de patchs) — 10 → 5 % en 9.2.0.
- Source B : lot 3 (batch3_perks_kill_p91) — changement PTB annulé en LIVE.
- Résolution : **RÉSOLU** — B confirmé : note officielle 9.2.0 [14] « Reverted the perk changes associated with this update. Notably: … Eruption … » ; page Nemesis [4] : « Instantly regresses them by -10 % ». LIVE = 10 %.

#### CONFLICT-L4G4-05 : Pentimento — totems ravivés bénissables ?
- Source A : audit [2] (wiki Totems) — totems ravivés par Pentimento non bénissables.
- Source B : texte de la perk sur la page Artist [6] — « The Hex Effects persist until the Hex Totem is either blessed or cleansed by a Survivor ».
- Hypothèse : la phrase de [6] est la formule générique des Hex, peut-être non adaptée aux totems ravivés.
- Résolution : UNRESOLVED (lire la page wiki « Hex: Pentimento » ou « Totems » complète).

#### CONFLICT-L4G4-06 : casse de palette « instantanée » par Virulent Bound et par les gardes du Knight
- Source A : audit [2] (wiki Pallets) — Virulent Bound et gardes du Knight dans la liste des casses instantanées.
- Source B : page Mastermind [9] (« Colliding with a dropped Pallet or a Window during a Bound Attack causes The Mastermind to automatically vault over it » ; casse seulement avec l'add-on Lab Photo) ; note 9.5.0 [17] (Mastermind = « Special-vault », Knight = « Special-break ») ; page Knight [10] (ordre de garde : 1,8 s Carnifex, 5 s Assassin/Jailer).
- Résolution : **RÉSOLU** — B prévaut : le Mastermind **franchit** les palettes en base ; les gardes cassent via un ordre de garde qui prend du temps. L'entrée de l'audit est fausse pour ces deux tueurs (à corriger dans les ledgers par le lot qui les tient ; ce fichier ne les modifie pas).

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Knight — Nowhere to Hide | 18 m depuis 10.1.0, « moins bon » | 24 m LIVE (18 m = PTB 10.1.0) [2] | FAUX (PTB-comme-LIVE) |
| Nemesis — Eruption | −10 % | 5 % selon registre audit ; annulation LIVE possible (conflit lot 3) | NON VÉRIFIABLE (conflit ouvert) |
| Cenobite — perks enseignables | Deadlock, Hex: Plaything, Scourge Hook: Gift of Pain | renommées en 9.0.0 : No Holds Barred, Hex: Fortune's Fool, Scourge Hook: Weeping Wounds [2] | IMPRÉCIS (OBSOLETE) |
| Trickster — No Way Out | 12 s/token, ~60 s | 12 s + 6/9/12 s par jeton [2] | IMPRÉCIS |
| Knight — historique | 38 m depuis 9.1.0 ; rien sur 10.1.1 | 9.1.0 buff et 10.1.1 « gardes et palettes » confirmés, contenu non lu [2] | IMPRÉCIS (omission 10.1.1) |
| Trickster — 4,4 m/s, TR 24/44 m, 36 lames, décroissance 16 s | idem | idem [2] | OK |
| Onryō — Call of Brine | 30/40/50 %, 90 s | idem [2] | OK |
| Dredge / Mastermind — buffs 9.6.0 | existence + détails | existence confirmée [2], détails non lus | OK (existence) / NON VÉRIFIABLE (détails) |
| Dredge — Dissolution | nerf PTB 10.2.0 | étiqueté PTB dans le seed ; changement absent de l'audit | OK (étiquetage) / NON VÉRIFIABLE (existence) |
| Cenobite — retrait boutique | mars 2025 | [2] : « départ Hellraiser, 2025 », renommage 9.0.0 | NON VÉRIFIABLE |
| Cenobite — difficulté | « très élevée » (fiche) | « élevée » (tableau d'ensemble du seed) | IMPRÉCIS (incohérence interne) |
| Artist — « s'accroupir évite le Killer Instinct » | affirmé | aucune source | NON VÉRIFIABLE (douteux) |
| Toutes les autres valeurs de pouvoir / add-ons (8 tueurs) | voir fiches | — | NON VÉRIFIABLE (quota) |
| Orientation des fiches | ~75 % joueur tueur | refondu ici en vue survivant | — |

## Questions ouvertes

1. Valeurs LIVE complètes du Trickster post-9.5.0/9.5.2 (barème Style Points, durée rang S, Main Event, décroissance par charge, add-ons refondus).
2. Contenu exact des buffs 9.6.0 du Dredge et du Mastermind, et du changement 10.1.1 du Knight (gardes et palettes).
3. TR réels de l'Onryō (24 m ?) et du Mastermind (40 m ?) — CONFLICT-L4G4-03.
4. Nemesis : effet exact d'un tentacule sur un survivant non contaminé (Hindered 20 % 2 s ?), seuils de mutation, nombre de caisses de vaccin.
5. Durée du Nightfall (60 s ?) et nombre de tokens de Gloaming.
6. Uroboros : Hindered réel à 100 % d'infection ; nombre de caisses et d'usages de sprays.
7. Knight : mécanique exacte de la bannière (Haste 50 % + Endurance ?), portée de patrouille 38 m.
8. Artist : effet exact de Swarmed (aura vs Killer Instinct), durée de retrait, propagation.
9. Cenobite : statut actuel en boutique et date exacte de retrait.
10. Guides experts écrits vue survivant (8 tueurs) : aucun lu — les parties counterplay sont toutes HEURISTIC et devraient être recoupées.

## Sources

[1] Guide seed, chapitre 8 « Les 44 tueurs » — `/home/user/dbd_guide/kb/seed/ch8_killers.txt` (l. 1-256, 1094-1418) — lu le 27/09/2026 (brouillon non fiable).
[2] Audit phase 0 — `/home/user/dbd_guide/kb/seed/audit_phase0.txt` (historique des patchs 9.0.0 → 10.1.2a, OUTDATED CONTENT REPORT, référence vérifiée) — lu le 27/09/2026.

Aucune source web : quota WebSearch de session épuisé (200/200) avant la première requête de cet agent ; aucune URL n'est citée pour ne pas inventer de source.
