# Lot 4 — Fiches tueurs 23 à 30 vues du SURVIVANT (ch8_killers.txt l. 1094-1418)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) — voir kb/audit/pass14_lot4_g4-g6.md ; RE-VÉRIFIÉ lot 12b (27/09/2026) sur pages wiki complètes + notes officielles**
>
> Rappels de l'audit : toutes les consignes sont des **HEURISTIC** (option par défaut, à varier contre un tueur qui l'anticipe) ; le **pré-drop n'est pas universel** (voir `KILLER_COUNTERPLAY_HANDBOOK.md` §2.2) ; les lignes « Équipe » qui supposent une répartition des rôles demandent le vocal (SWF) — en SoloQ, les appliquer seulement sur signaux observables ; aucune fiche n'a encore de rubrique DRILL ni d'interactions perks survivant ↔ pouvoir vérifiées.

**Couverture : 8/8 tueurs re-vérifiés sur page wiki complète (27/09/2026), dont 24 points confirmés par note officielle** (lot 12b ; détail dans « Claims » : lignes VERIFIED_PRIMARY / VERIFIED_MULTI_SOURCE).

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

- **Version** : aucun changement relevé dans [2] entre 9.0.0 et 10.1.2a. Dernier rework : non vérifié. Statut LIVE.
- **Données LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN) :
  - 4,6 m/s (115 %), TR 32 m, taille moyenne.
  - 3 Dire Crows (1 s de charge), un corbeau posé reste ≤ 10 s puis part en ligne droite **à travers les murs** ; touche = Swarmed (Killer Instinct 3 s puis aura tant que l'essaim reste) ; 2e touche sur un Swarmed = état de santé perdu ; retirer l'essaim : 8 s ou casier ; recharge ~5 s / corbeau, 12 s si les 3 sont lancés.
- **Identification** :
  - Avant le reveal : corbeaux sombres posés près des gens/totems (indice visuel), cri de corbeau lancé (seed : ~12 m) — HEURISTIC.
  - Pouvoir : statut Swarmed sur un coéquipier/soi ; aura/Killer Instinct après touche.
  - Stratégie probable : pression globale (corbeaux sur des gens lointains) puis blessures à distance à travers le décor — HEURISTIC.
- **Ce qu'il cherche en chase** : survivants déjà Swarmed (2e corbeau = blessure à travers un mur), sorties de tile prévisibles, vaults de fenêtre en fin de boucle — HEURISTIC.
- **Tiles / structures** :
  - Mécanique de principe, **pas un FACT** (seed + connaissance du modèle, UNCERTAIN ; non couverte par l'audit, et contredite par une autre phrase du seed, CONFLICT-L4G4-02) : les corbeaux traversent les murs → **les murs ne protègent pas comme contre un ranged classique**.
  - Favorables : tiles où l'on peut changer de direction souvent (le corbeau va en ligne droite) ; bâtiments avec plusieurs sorties — HEURISTIC.
  - Défavorables : longues lignes droites, couloirs, tiles à une seule sortie — HEURISTIC.
- **Mindgames propres** : corbeau « posé » sur une sortie de tile = piège de trajectoire ; elle peut attendre votre choix de direction avant de lancer — HEURISTIC.
- **Counterplay** :
  - Mécanique : strafe latéral net au dernier moment ; ne pas courir dans l'axe d'un corbeau posé — HEURISTIC.
  - Si Swarmed : retirer l'essaim dès que le tueur n'est pas en chase proche, ou casier (seed) ; éviter de réparer avec l'essaim quand elle a un corbeau disponible (un 2e corbeau = blessure, même à travers le décor) — HEURISTIC. Arbitrage : le retrait coûte ~8 s [SEED] (≈ 9 % de gen solo) ; si elle est en chase loin et sans corbeau prêt, finir un gen presque terminé peut valoir plus que ces 8 s — SITUATIONAL.
  - Macro : répartir les gens pour qu'un corbeau n'en couvre pas deux ; ne pas se regrouper en ligne — HEURISTIC.
  - Équipe : un coéquipier Swarmed est une cible facile → ne pas s'en approcher en chase (Severed Hands, seed) — SITUATIONAL.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : se croire à l'abri derrière un mur ; réparer en étant Swarmed ; courir tout droit vers la tile suivante quand elle a un corbeau prêt.
- **Adaptations avancées / échecs** (HEURISTIC) : le counterplay « LOS » habituel contre les ranged échoue ; la seule protection est le changement de direction et l'absence de statut Swarmed → prioriser le retrait de l'essaim plus haut que contre un tueur classique.
- **Add-ons qui changent la décision** (seed, NON RE-VÉRIFIÉ, UNCERTAIN) :
  - Severed Hands (essaim propagé à 3 m) → ne pas faire de gen ou de soin à deux quand un joueur est Swarmed.
  - Iridescent Feather (Undetectable pendant le cooldown, 1 corbeau de moins) → après une volée, s'attendre à une approche silencieuse.
  - Add-ons de vitesse de corbeau → strafer plus tôt, ne plus attendre le « dernier moment ».
- **Implications de carte** : maps ouvertes et longues (champs) = avantage tueur ; maps très coudées avec beaucoup de changements de direction = mieux pour le survivant ; les murs intérieurs ne comptent pas — HEURISTIC.
- **Perks fréquentes / synergies** : Pain Resonance, Grim Embrace (ses perks), Pop, Dead Man's Switch, Eruption (seed, UNCERTAIN) ; Hex: Pentimento (sa perk) → totems purifiés peuvent être rallumés ; les totems ravivés par Pentimento ne peuvent pas être bénis (audit [2], STRONG_SECONDARY).
- **Écart avec le seed** : conseil « coupez la ligne de corbeau (…) pas le décor vertical très épais » : **NON VÉRIFIABLE** et contradictoire avec « traverse les murs » dans la même fiche ; valeurs NON VÉRIFIABLE ; « S'accroupir évite le Killer Instinct » : NON VÉRIFIABLE et douteux (Killer Instinct ne dépend normalement pas de la posture — connaissance du modèle, UNCERTAIN).
- **Sources** : [1], [2].

---

## 27. The Onryō (Sadako Yamamura) — archétype(s) : furtif | mobilité (TV) | condamnation (mori)

- **Version** : aucun changement de pouvoir relevé dans [2] entre 9.0.0 et 10.1.2a. Dernier rework : non vérifié. Statut LIVE.
- **Données LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN) :
  - 4,6 m/s (115 %), TR 24 m (voir Questions ouvertes), petite.
  - Démanifestée : Undetectable, invisible au-delà de 24 m ; ne peut ni attaquer ni être stun par palette.
  - Projection sur TV : +1 Condemned aux survivants à 16 m de la TV d'arrivée ; 6,9 m/s pendant 2 s après projection.
  - Condemned : 7 stacks = mori ; stacks verrouillés par les crochets (3 au 1er, 6 au 2e selon seed).
  - Cassettes : TV éteinte 70 s après retrait ; déposer une cassette retire 3 stacks ; porter une cassette fait monter le Condemned.
- **Identification** :
  - Avant le reveal : **pas de TR** en approche démanifestée ; scintillement de silhouette ; TV qui grésillent / s'allument ; statut Condemned qui monte près d'une TV — HEURISTIC.
  - Stratégie probable : mori sans crochet en fin de partie ; pression passive par projections près des gens — HEURISTIC.
- **Ce qu'il cherche en chase** : jumpscare sur un survivant qui ne regarde pas derrière lui ; vaults « sans palette » (immunité au stun démanifestée) ; survivants à 5-6 stacks — HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles standard avec palettes quand elle est **manifestée** (elle redevient stun-able, seed) — SITUATIONAL.
  - Défavorables : zones sombres ou encombrées où l'on ne voit pas son approche ; zones à 16 m d'une TV allumée — HEURISTIC.
- **Mindgames propres** : manifestation juste avant le coup ; démanifester pour traverser une palette sans risque de stun — seed, HEURISTIC.
- **Counterplay** :
  - Mécanique : regarder derrière soi régulièrement (checkspots) pendant les gens ; surveiller la barre de Condemned — HEURISTIC. Quand : surtout si une TV à moins de ~16 m [SEED] est allumée, si ton Condemned vient de monter (projection proche) ou si un coéquipier vient de la perdre de vue ; où : vers les accès du gen et la TV, pas au hasard. Coût : chaque check fait rater des skill checks si mal synchronisé (raté = −10 % + 3 s, [AUDIT]) → checker entre deux skill checks. Pas de fréquence chiffrée sourcée.
  - Positionnel : ne pas réparer à 16 m d'une TV allumée quand elle se projette (seed) — HEURISTIC.
  - Macro : gérer les cassettes : un survivant la dépose vite dans une TV **éloignée** ; retirer les cassettes des TV proches des gens à 3 pour éteindre ses points de projection — HEURISTIC.
  - Équipe : partager le travail des cassettes pour qu'aucun survivant n'approche 7 stacks ; à 5-6 stacks, jouer très prudemment — HEURISTIC.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : garder une cassette trop longtemps ; réparer dos à la zone d'arrivée ; oublier le Condemned en endgame (mori direct).
- **Adaptations avancées / échecs** (HEURISTIC) : l'habitude « pas de TR = pas de tueur » échoue totalement ; contre Iridescent Videotape (seed) les TV restent allumées → le counterplay « éteindre les TV » ne sert plus, mais le Condemned de projection disparaît.
- **Add-ons qui changent la décision** (seed, NON RE-VÉRIFIÉ, UNCERTAIN) :
  - Tape Editing Deck (tous commencent avec une cassette) → déposer immédiatement, loin.
  - Ring Drawing (accrocher un porteur de cassette donne +1 Condemned aux autres) → ne pas porter de cassette en chase.
  - Iridescent Videotape (TV pas coupées, pas de Condemned de projection) → priorité aux gens, gestion des cassettes secondaire.
- **Implications de carte** : maps sombres et encombrées (Swamp, Yamaoka, Red Forest) = furtivité renforcée ; maps claires/ouvertes = approche visible — HEURISTIC.
- **Perks fréquentes / synergies** : Call of Brine (sa perk ; LIVE 10.1.0 = 30/40/50 % pendant 90 s — audit [2], STRONG_SECONDARY), Merciless Storm, Scourge Hook: Floods of Rage, Pain Resonance, Pop (seed, UNCERTAIN).
- **Écart avec le seed** : Call of Brine 30/40/50 % 90 s : **OK** (cohérent avec [2]) ; valeurs du pouvoir et TR 24 m : NON VÉRIFIABLE.
- **Sources** : [1], [2].

---

## 28. The Dredge — archétype(s) : mobilité (casiers) | zone (Nightfall) | info

- **Version** : **buffé en 9.6.0** (28/04/2026) — audit [2], STRONG_SECONDARY ; détail du buff non lu (seed : « 4 m/s pendant la charge de téléportation », NON RE-VÉRIFIÉ). Statut LIVE.
- **Données LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN) :
  - 4,6 m/s (115 %), TR 32 m, grand.
  - Gloaming : téléportation vers un casier (tokens, seed : 3), Remnant laissé au départ (retour possible).
  - Nightfall : jauge passive (plus rapide avec survivants blessés ou en casier), durée 60 s selon seed (voir Questions ouvertes) ; vision survivant réduite, Dredge Undetectable, téléportations plus rapides.
  - Verrous : un survivant peut verrouiller un casier ; le Dredge qui arrive doit casser le verrou (2,25 s), verrou non réutilisable.
- **Identification** : grand tueur, TR 32 m, casiers qui « claquent » quand il se téléporte ; jauge Nightfall visible côté survivant (seed) ; Remnant (silhouette) laissé sur la map — HEURISTIC.
- **Ce qu'il cherche en chase** : survivants qui font des boucles près de casiers ; zones où son Remnant permet de revenir couper une rotation ; chase pendant Nightfall (vision survivant réduite) — HEURISTIC.
- **Tiles / structures** : défavorables = zones de casiers et bâtiments bourrés de casiers (téléportation au cœur de la tile) ; favorables = tiles extérieures sans casiers proches — HEURISTIC.
- **Mindgames propres** : faux retour au Remnant ; téléportation vers un casier derrière vous en fin de tile — HEURISTIC.
- **Counterplay** :
  - Mécanique : repérer le Remnant et ne pas se placer entre lui et le Dredge (seed) — HEURISTIC.
  - Positionnel : verrouiller les casiers proches des gens actifs et des crochets (seed) ; éviter de finir une chase près d'un casier non verrouillé — HEURISTIC.
  - Macro : éviter de se cacher en casier (remplit la jauge selon le seed, et un casier est un point d'arrivée de sa téléportation) ; limiter les survivants blessés en même temps (jauge) — HEURISTIC. Nuance : un casier verrouillé retarde seulement son arrivée (verrou à casser en 2,25 s selon le seed) ; l'effet d'un survivant caché dans un casier verrouillé sur la jauge reste UNCERTAIN.
  - Équipe : pendant Nightfall, rester près de tiles solides et se signaler les positions (SWF) ; éviter les sauvetages risqués au milieu de Nightfall — SITUATIONAL. Limite (calcul) : Nightfall dure 60 s selon le seed (UNCERTAIN) et une phase de crochet 70 s [AUDIT] → attendre la fin de Nightfall n'est possible que si l'accroché vient d'entrer dans sa phase ; sinon le report coûte un état de crochet, et il faut sauver quand même en prenant la route la plus couverte.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : se cacher en casier ; ignorer la jauge ; réparer à côté d'un casier non verrouillé ; rester blessés à plusieurs.
- **Adaptations avancées / échecs** (HEURISTIC) : sur les maps intérieures pleines de casiers, le verrouillage ne suffit pas (trop de casiers) → jouer les tiles extérieures ; si Nightfall est lancé en endgame, les portes restent le repère fixe : s'en rapprocher avant.
- **Add-ons qui changent la décision** (seed, NON RE-VÉRIFIÉ, UNCERTAIN) :
  - Field Recorder (début en Nightfall, Nightfall auto au dernier gen) → préparer le dernier gen avec tout le monde sain et près des portes.
  - Lavalier Microphone (révélation au dernier token) → après ses téléportations, s'attendre à être révélé.
  - Iridescent Wooden Plank (Exposed en fin de Nightfall) → les 12 dernières secondes de Nightfall sont les plus dangereuses : éviter la chase à ce moment.
- **Implications de carte** : Lery's, Hawkins, RPD, main buildings chargés = beaucoup de casiers → avantage tueur ; maps extérieures ouvertes avec peu de casiers = moins de mobilité — HEURISTIC.
- **Perks fréquentes / synergies** : Darkness Revealed (sa perk, casiers), Dissolution, Septic Touch, Pain Resonance, Grim Embrace, No Holds Barred/Deadlock (seed, UNCERTAIN). Dissolution : une modification au **PTB 10.2.0** (attaque de base seulement) est **annoncée par le seed seulement** (« oui? » dans `PERK_DATABASE.md`, non vérifiée, l'audit ne la liste pas) — **PTB, pas LIVE** ; en LIVE, considérer la palette fast-vaultée après blessure comme cassable (seed, UNCERTAIN).
- **Écart avec le seed** : buff 9.6.0 : existence **OK** ([2]) ; contenu du buff (4 m/s en charge) NON VÉRIFIABLE ; Dissolution : le seed l'étiquette bien PTB, mais l'existence même de ce changement PTB est **NON VÉRIFIABLE**.
- **Sources** : [1], [2].

---

## 29. The Mastermind (Albert Wesker) — archétype(s) : mobilité | anti-loop | infection (usure)

- **Version** : **buffé en 9.6.0** (28/04/2026) — audit [2], STRONG_SECONDARY ; détail non lu (seed : 2e bond dans une fenêtre de 2,5 s, recovery 2,7 s, Loose Crank buffé, NON RE-VÉRIFIÉ). Refactor 9.5.0 (désynchronisation) : seed, NON RE-VÉRIFIÉ. Statut LIVE.
- **Données LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN) :
  - 4,6 m/s (115 %), TR 40 m selon seed (voir Questions ouvertes), taille moyenne.
  - Virulent Bound : 2 tokens, charge 1,5 s, bond ~7 m puis 2e bond ~14 m ; saisie = dégâts, projection contre un mur = infection accrue ; passe fenêtres et palettes.
  - Uroboros : jauge 0-100 (0,8/s passif, +20 par contact) ; à 100 Hindered 4 % selon seed ; sprays (6 caisses, 2 usages, Killer Instinct 4 s).
  - Casse de palette instantanée par Virulent Bound : listée par l'audit [2] (wiki Pallets, STRONG_SECONDARY, « liste à reconfirmer par le lot tueurs »).
- **Identification** : bruit de charge de bond ; caisses de sprays sur la map ; icône d'infection Uroboros sur le HUD — HEURISTIC.
- **Ce qu'il cherche en chase** : couloirs et zones ouvertes (élan), fenêtres vaultées sans avance, survivants près d'un mur (projection) — seed / HEURISTIC.
- **Tiles / structures** :
  - Favorables : tiles serrées, coudées, avec objets qui bloquent le bond ; bâtiments à plusieurs étages — HEURISTIC.
  - Défavorables : longues lignes, fenêtres isolées, champs ouverts — HEURISTIC.
  - Palettes : la palette peut être franchie ou cassée par le bond (seed + [2] : Virulent Bound dans la liste des destructions instantanées, STRONG_SECONDARY, à reconfirmer) → pré-drop et départ, ne pas « tenir » une palette — SITUATIONAL. Raison : son pouvoir punit l'attente à la palette, **pas** parce que casser lui coûte (la casse est instantanée) ; la palette est perdue de toute façon (KCH §2.2 b). Limites : sans token de bond disponible (2 tokens selon seed), il redevient un M1 face à cette palette → drop normal ; contre un Mastermind qui attend le pré-drop sans lancer le bond, varier (départ sans drop, drop normal).
- **Mindgames propres** : charge feinte ; 1er bond court pour se repositionner puis 2e bond (seed) → ne pas réagir au premier bond comme s'il était l'attaque — HEURISTIC.
- **Counterplay** :
  - Mécanique : au son de charge, demi-tour ou strafe serré ; forcer le bond contre un obstacle — HEURISTIC.
  - Positionnel : éviter les murs derrière soi en espace ouvert (projection) — HEURISTIC.
  - Macro : utiliser les sprays avant 100 si le Hindered est confirmé (seed) ; ne pas se soigner de l'infection quand il est proche (Killer Instinct) — SITUATIONAL.
  - Équipe : éviter de se regrouper sur les sprays — HEURISTIC.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : courir en ligne droite entre deux tiles ; vaulter une fenêtre avec peu d'avance ; tenir une palette « safe » comme contre un M1.
- **Adaptations avancées / échecs** (HEURISTIC) : sur maps ouvertes, le « tile-to-tile » échoue souvent → privilégier les zones denses même si elles ont moins de palettes.
- **Add-ons qui changent la décision** (seed, NON RE-VÉRIFIÉ, UNCERTAIN) :
  - Iridescent Uroboros Vial (tous infectés au départ, Exposed à 100 selon seed) → gérer l'infection dès le début, sprays prioritaires.
  - Dark Sunglasses (Undetectable après infection complète d'un survivant) → surveiller l'état d'infection des coéquipiers comme signal.
  - Loose Crank (vitesse entre les bonds) → distances de sécurité à augmenter.
- **Implications de carte** : maps ouvertes (champs, Coldwind, Red Forest) = très forte mobilité ; maps intérieures étroites = bonds bloqués — HEURISTIC.
- **Perks fréquentes / synergies** : Pain Resonance, Brutal Strength, Pop, Lethal Pursuer (seed) ; Superior Anatomy (vault plus rapide après fast vault proche), Terminus (endgame, Broken), Awakened Awareness (seed, UNCERTAIN).
- **Écart avec le seed** : buff 9.6.0 : existence **OK** ([2]) ; valeurs du buff et TR 40 m : NON VÉRIFIABLE.
- **Sources** : [1], [2].

---

## 30. The Knight (Tarhos Kovács) — archétype(s) : anti-loop (gardes) | zone (patrouilles)

- **Version** : **buff 9.1.0** (29/07/2025, audit [2]) ; **changement 10.1.1** (01/09/2026) « Knight (gardes et palettes) » — audit [2], STRONG_SECONDARY, contenu non détaillé. Statut LIVE. Le seed ne mentionne pas 10.1.1.
- **Données LIVE** (seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; peuvent être modifiées par 10.1.1) :
  - 4,6 m/s (115 %), TR 32 m, taille moyenne.
  - Patrouille tracée jusqu'à 38 m (depuis 9.1.0 selon seed), 3 gardes à cooldown séparé.
  - Carnifex : ordres rapides, cooldown 20 s ; Assassin : chasse la plus rapide (4,4 m/s), Deep Wound, cooldown 30 s ; Jailer : détection 16 m, chasses/patrouilles 24 s.
  - Fin de chasse du garde : toucher la bannière (Haste 50 % + Endurance 3 s selon seed), décrocher quelqu'un, ou tenir jusqu'à la fin.
  - Garde qui patrouille près d'une palette/mur/gen : casse ou endommage — casse de palette par gardes listée dans [2] (STRONG_SECONDARY).
- **Identification** : trace fantomatique du tracé de patrouille, orbe, bannière sur la map, garde visible — seed / HEURISTIC.
- **Ce qu'il cherche en chase** : « sandwich » garde + Knight de part et d'autre d'une tile ; patrouille à travers une palette pour la casser — seed / HEURISTIC.
- **Tiles / structures** :
  - Favorables : quitter une tile où un garde arrive et aller vers une tile neuve ; bâtiments à plusieurs sorties — HEURISTIC.
  - Défavorables : tiles à une seule palette « verrouillées » par une patrouille ; culs-de-sac — HEURISTIC.
- **Mindgames propres** : tracé de patrouille qui coupe la sortie « évidente » ; choix du garde selon la situation (Jailer pour les gens) — HEURISTIC.
- **Counterplay** :
  - Mécanique : pendant une chasse de garde, se diriger tôt vers la bannière (seed) avant que le Knight n'arrive — HEURISTIC.
  - Positionnel : ne pas jouer une boucle où garde et Knight se font face ; changer de tile — seed / HEURISTIC.
  - Macro : sortir de la zone de détection d'une patrouille plutôt que continuer la réparation ; Assassin → soigner le Deep Wound rapidement (seed) — SITUATIONAL.
  - Équipe : « un unhook met fin à la chasse de garde » est une mécanique **[SEED] UNCERTAIN** (non vérifiée, possiblement modifiée par 10.1.1) → ne pas planifier un sauvetage sur cette base ; au mieux un bonus si elle se confirme.
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : rester sur une tile pendant qu'un garde arrive ; oublier la bannière ; paniquer vers une zone morte.
- **Adaptations avancées / échecs** (HEURISTIC) : le changement 10.1.1 sur « gardes et palettes » peut invalider les conseils de palette ci-dessus → à re-vérifier avant intégration.
- **Add-ons qui changent la décision** (seed, NON RE-VÉRIFIÉ, UNCERTAIN) :
  - Iridescent Company Banner (fenêtres cassables selon seed) → ne pas compter sur un vault de fenêtre répété.
  - Town Watch's Torch (Undetectable pendant les chasses) → pendant une chasse de garde, s'attendre au Knight sans TR.
  - Map of the Realm / Sharpened Mount : effets non décrits dans le seed → NON VÉRIFIABLE.
- **Implications de carte** : maps ouvertes = patrouilles longues efficaces ; maps intérieures = tracés gênés — HEURISTIC.
- **Perks fréquentes / synergies** : Hex: Face the Darkness, Hubris, Nowhere to Hide (ses perks) ; Pain Resonance, Grim Embrace, Pop, Lethal Pursuer (seed). **Nowhere to Hide LIVE = 24 m autour du gen endommagé, 3/4/5 s** (notes 10.1.0 via audit [2], STRONG_SECONDARY).
- **Écart avec le seed** : **FAUX** — Nowhere to Hide « 18 m (nerf 10.1.0) » : 18 m = valeur PTB 10.1.0, **LIVE = 24 m** ([2]) ; conseil « Nowhere to Hide est moins bon depuis le passage à 18 m » donc infondé. **IMPRÉCIS** — absence du changement 10.1.1 sur les gardes/palettes.
- **Sources** : [1], [2].

---

## Claims

Calculs dérivés (audit pass 14) : Trickster 4,4 vs 4,0 m/s → il reprend 0,4 m/s (10 m en 25 s, contre 16,7 s pour un tueur à 4,6 m/s) ; décroissance de Laceration ≈ 16 s + n × 4,4 s (n = charges, partie 4,4 s UNCERTAIN) ; 66 s d'arrêt × 3 réparateurs = 198 s-survivant ≈ 2,2 gens solo ; Nightfall 60 s [SEED] < phase de crochet 70 s [AUDIT].

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| G4-01 | Trickster 4,4 m/s (was 4,6) | [2] | 9.5.0 | STRONG_SECONDARY (via audit) |
| G4-02 | Trickster TR 24 m, 44 m au rang S (was 32 m) | [2] | 9.5.0 | STRONG_SECONDARY (via audit) |
| G4-03 | Trickster 36 lames (was 44), Main Event au rang max seulement | [2] | 9.5.0 | STRONG_SECONDARY (via audit) |
| G4-04 | Laceration : décroissance après 16 s | [2] | 9.5.2 | STRONG_SECONDARY (via audit) |
| G4-05 | Laceration : −1 charge / 4,4 s ; rang S 66 s ; Main Event 10 s ×1,67 | [1] | ? | UNCERTAIN (seed) |
| G4-06 | Eruption : perte 5 % (was 10 %) — contestée (annulation LIVE possible, conflit Eruption du lot 3) | [2] | 9.2.0 | UNCERTAIN |
| G4-07 | Nemesis tentacle 5 / 6,5 m, cooldown 2,25 s, MR2 5 pts / MR3 15 pts | [1] | ? | UNCERTAIN (seed) |
| G4-08 | Perks Hellraiser renommées : Deadlock → No Holds Barred, Plaything → Fortune's Fool, Gift of Pain → Weeping Wounds | [2] | 9.0.0 | STRONG_SECONDARY (via audit) |
| G4-09 | Cenobite Chain Hunt à 90 s, chaîne retirée en 1 s, portail 16 m | [1] | ? | UNCERTAIN (seed) |
| G4-10 | Artist : 3 corbeaux, 2e touche sur Swarmed = blessure, retrait 8 s | [1] | ? | UNCERTAIN (seed) |
| G4-11 | Call of Brine 30/40/50 % pendant 90 s | [2] | 10.1.0 | STRONG_SECONDARY (via audit) |
| G4-12 | Onryō : 7 stacks Condemned = mori ; cassette −3 stacks | [1] | ? | UNCERTAIN (seed) |
| G4-13 | Dredge buffé | [2] | 9.6.0 | STRONG_SECONDARY (via audit) ; contenu UNCERTAIN |
| G4-14 | Dredge Nightfall 60 s ; 4 m/s en charge de téléportation | [1] | 9.6.0 ? | UNCERTAIN (seed) |
| G4-15 | Mastermind buffé | [2] | 9.6.0 | STRONG_SECONDARY (via audit) ; contenu UNCERTAIN |
| G4-16 | Virulent Bound et gardes du Knight cassent les palettes instantanément | [2] (wiki Pallets) | — | STRONG_SECONDARY (via audit), à reconfirmer ; pour le Knight, le changement 10.1.1 « gardes et palettes » a pu modifier ce point |
| G4-17 | Knight buffé en 9.1.0 ; modifié (gardes et palettes) en 10.1.1 | [2] | 9.1.0 / 10.1.1 | STRONG_SECONDARY (via audit) ; contenu UNCERTAIN |
| G4-18 | Nowhere to Hide LIVE : 24 m autour du gen, 3/4/5 s (18 m = PTB) | [2] | 10.1.0 | STRONG_SECONDARY (via audit) |
| G4-19 | No Way Out : 12 s + 6/9/12 s par jeton | [2] (wiki Exit Gates) | — | STRONG_SECONDARY (via audit) |
| G4-20 | Dissolution : attaque de base seulement | [1] seul (absent de l'audit) | PTB 10.2.0 (annoncé par le seed) | PTB (non LIVE), UNCERTAIN — existence du changement non vérifiée |

## Conflits

#### CONFLICT-L4G4-01 : No Way Out (durée de blocage)
- Source A : seed [1] fiche Trickster — « 12 s par token (jusqu'à 60 s environ) ».
- Source B : audit [2] (wiki.gg Exit Gates) — « 12 s + 6/9/12 s par jeton ».
- Hypothèse : le seed confond base et bonus par token.
- Résolution : B prévaut (source vérifiée par un lot antérieur) ; à reconfirmer avec le lot 3 (perks tueur).

#### CONFLICT-L4G4-02 : Artist — les murs protègent-ils des corbeaux ?
- Source A : seed [1] — « le corbeau traverse les murs ».
- Source B : seed [1], même fiche — « coupez la ligne de corbeau (…) pas le décor vertical très épais ».
- Hypothèse : contradiction interne ; « décor vertical très épais » n'a pas de référence connue.
- Résolution : UNRESOLVED (pas de vérification web possible).

#### CONFLICT-L4G4-03 : TR de l'Onryō et du Mastermind
- Source A : seed [1] — Onryō 24 m, Mastermind 40 m.
- Source B : connaissance du modèle (antérieure à mi-2026), UNCERTAIN — valeurs plus courantes de 32 m pour ces deux tueurs (souvenir non sourcé).
- Hypothèse : erreur du seed ou changement de patch non connu.
- Résolution : UNRESOLVED.

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
