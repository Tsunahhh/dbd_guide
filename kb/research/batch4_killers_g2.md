# Lot 4 — Fiches TUEUR vues du SURVIVANT, groupe 2 (tueurs 8 à 15)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26, P14) + RE-VÉRIFIÉ (lot 12b, 27/09/2026, sources locales complètes)** — audits : kb/audit/pass14_lot4_g1-g3.md

Couverture : 8/8 tueurs re-vérifiés sur page wiki complète (27/09/2026), dont 14 points confirmés par note officielle (Cannibal 1, Pig 4, Clown 6, Legion 2, perk Knock Out 1).

- Périmètre : The Huntress, The Cannibal, The Nightmare, The Pig, The Clown, The Spirit, The Legion, The Plague (seed `kb/seed/ch8_killers.txt` l. 547-844).
- Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 (15-21/09/2026) **non LIVE**, toujours étiqueté PTB.

> **MÉTHODE (lot 12b — remplace l'avertissement « 0 recherche web » du lot 4)**
> - Sources lues : pages wiki.gg **complètes** des 8 tueurs (texte intégral local `kb/sources/wiki_killers/<Nom>.txt` : infobox, pouvoir, « Power Trivia », add-ons, changelog) [3]-[10] et notes officielles BHVR 9.0.0 → 10.1.2 + PTB 10.2.0 (`kb/sources/patches/official_*.txt`, grep par tueur et par pouvoir) [O-…].
> - PTB 10.2.0 sur les pages wiki : seules les perks **Knock Out** (Cannibal) et **Fire Up** (Nightmare) y sont affichées en version PTB ; leurs valeurs LIVE sont reprises de la ligne « was » de la note PTB [O-559]. **Aucun pouvoir des 8 tueurs n'est modifié au PTB 10.2.0** (note 559 : un correctif Pig, un correctif Nightmare, rien d'autre).
> - Confiance : **STRONG_SECONDARY** = page wiki complète ; **VERIFIED_MULTI_SOURCE** = wiki + note officielle concordantes ; **VERIFIED_PRIMARY** = note officielle explicite. L'étiquette **UNCERTAIN-MM** (mémoire du modèle, non vérifiée) ne subsiste que là où la page ne tranche pas ; c'est signalé.
> - Les conseils de counterplay restent des **HEURISTIC** (consensus tel que le modèle le connaît, aucun guide expert lu) ; ils ont été relus contre les valeurs vérifiées, les corrections sont marquées « corr. 12b ».

Légende : **FACT [WIKI]** = lu sur la page wiki complète (STRONG_SECONDARY) · **FACT [OFF]** = note officielle (VERIFIED_PRIMARY) · **FACT [AUDIT]** = vérifié dans l'audit phase 0 [2] · **UNCERTAIN-MM** · HEURISTIC · SITUATIONAL · HYPOTHESIS.

Éléments système utiles pour tous (VERIFIED dans [2] sauf mention) :
- Protections d'unhook LIVE 10.1.0 : Endurance + 10 % Haste pendant 10 s, + Elusive 10 s (sans effet une fois les gens alimentés) [2].
- Anti-facecamp : zone 16 m, grâce de 7 s, multiplicateur 1×/2×/4× (9.3.0) [2].
- Diminishing Returns 9.6.0 : les modificateurs identiques issus de Powers/Items/Perks/Offerings se réduisent (100/50/25/12,5/5 %) ; **les add-ons sont exclus** (FACT [OFF], [O-544]). Conséquence probable (HYPOTHESIS) : un Hindered de pouvoir (Clown, Freddy) cumulé à un Hindered de perk est atténué. Liste exacte des catégories : manuel du jeu (9.6.1), non consulté ; l'extrait local de la note 9.6.0 est incomplet sur ce point.
- **Identification (nouveau, FACT [OFF], [O-544])** : depuis 9.6.0, les Match Details montrent le tueur à tous les survivants **dès qu'un survivant entre en chase ou perd un état de santé**. Avant cela, l'identification reste à faire aux indices (berceuse, objets de carte, TR).
- Règle d'origine du TR (FACT [AUDIT], STRONG_SECONDARY) : 32 m pour les tueurs à 4,6 m/s, 24 m pour ceux à 4,4 m/s, avec des exceptions. Dans ce groupe : Spirit 24 m (conforme) ; **exceptions : Huntress 20 m, Pig 24 m (réduit au 9.1.0)**, Legion 40 m en Frenzy (FACT [WIKI]).
- Endurance, Elusive, Deep Wound (FACT [AUDIT]) : l'Endurance est annulée par une action voyante et ne protège pas sous Deep Wound ; l'Elusive supprime griffures, grognements et flaques de sang ; Deep Wound = minuteur de 20 s **en pause en courant ou pendant le mending**, mending 10 s seul / 6 s par un allié, un dégât sous Deep Wound = état mourant [2] (valeurs reconfirmées par la page Legion [9]).

Règles d'usage ajoutées par l'audit P14 :
- **Options par défaut, pas règles (§26)** : chaque « Counterplay » décrit l'option par défaut contre un joueur qui utilise normalement son pouvoir. Un tueur expérimenté anticipe (Huntress qui tient la charge, Spirit qui attend immobile, Cannibal qui tap-rev pour obtenir le pré-drop) : s'il exploite ta réponse habituelle, **varier**.
- **SoloQ / SWF (§25)** : les consignes « annoncer les boîtes fouillées » (Pig), « se réveiller mutuellement » (Nightmare), « purifier au bon moment » (Plague) supposent la communication. En **SoloQ**, se fier au HUD (état des coéquipiers, piège sur la tête, infection) et aux signaux visibles ; en **SWF**, annoncer.
- **LIVE / PTB (§25)** : perks citées et modifiées au **PTB 10.2.0** (non LIVE) : Spine Chill (rework), Knock Out (LIVE : 6 m / 5 % → PTB : 10 m / 20 %), Fire Up (LIVE : 4/5/6 % par jeton → PTB : 6/7/8 %) [O-559]. Garder les valeurs LIVE 10.1.2a jusqu'à la sortie.
- **Cartes** : les « Implications de carte » ne tiennent pas compte des changements de palettes 9.2.0 / 9.3.0 / 9.3.2 [2] (HEURISTIC, lots 7-8).
- **DRILL** : utiliser DR-15 « Counterplay d'un tueur » (`kb/research/batch11_training.md` §3).

---

## 8. The Huntress (Anna) — archétype(s) : ranged | M1
- **Version** : derniers changements du pouvoir = **7.3.0** (recharge au casier 4 → 3 s) et **7.6.0** (capacité **5 → 7 hachettes**, armement 1 → 0,9 s) [3]. Notes officielles 9.0.0 → 10.1.2 : **aucun changement d'équilibrage**, uniquement des correctifs (hachettes qui disparaissaient en vol 9.3.0, double touche 9.3.2, collision au lancer à travers une fenêtre 9.5.0, berceuse audible de partout depuis un bâtiment 9.5.2) [O-529] [O-530] [O-538] [O-541]. Rien au PTB 10.2.0. Statut LIVE (STRONG_SECONDARY ; absence de changement 2025-2026 : VERIFIED_PRIMARY).
- **Données LIVE** (FACT [WIKI], STRONG_SECONDARY, [3]) :
  - Vitesse 4,4 m/s ; 3,08 m/s pendant l'armement ; 3,74 m/s pendant le cooldown de lancer. **TR 20 m**, **berceuse 45 m**, grande taille (Tall).
  - **7 hachettes de base** (corr. 12b : la valeur « 5 » de ce fichier venait de la mémoire du modèle et date d'avant le 7.6.0). **Aucun add-on n'augmente la capacité** : le seul add-on de capacité, Iridescent Head, la **réduit à 1**. (10 hachettes uniquement en 2v8, compétence innée.)
  - Armement minimal 0,9 s (lancer non chargé = 25 m/s) ; charge complète 1 s de plus (40 m/s, signal sonore de charge pleine). Cooldown entre deux lancers 2 s. Recharge au casier 3 s. Elle voit l'aura des hachettes dans les casiers à 36 m.
  - Hitbox : collision avec le décor 0,1 m de rayon, détection du survivant 0,4 m, validation 0,8 m.
- **Identification** :
  - Avant le reveal : **berceuse fredonnée (portée 45 m) au lieu du battement de cœur**, TR réel de 20 m (FACT [WIKI]). Forte mais pas certaine (d'autres tueurs ont une berceuse, P14) : confirmer à la silhouette ou au premier lancer. Undetectable ne coupe pas les berceuses (FACT [AUDIT], SS). TR très court : elle arrive « de nulle part » quand la berceuse monte. Bruit de porte de casier à la recharge (3 s).
  - Pouvoir en action : souffle d'armement, sifflement de la hachette, hachettes plantées dans le décor.
  - Add-ons observables : **un 8e lancer sans casier est impossible** (aucun add-on de capacité) ; une hachette qui met à terre = Iridescent Head (1 hachette, casier après chaque lancer) ; un statut appliqué au toucher (Blindness, Exhausted, Incapacitated, Mangled, Haemorrhage, aura révélée) identifie l'add-on (liste ci-dessous).
  - Stratégie probable : snipes sur soins ou unhooks à découvert, chases courtes en terrain ouvert, pression à distance (HEURISTIC).
- **Ce qu'il cherche en chase** : zones ouvertes, boucles basses (rochers bas, palettes filler), vaults prévisibles (point d'atterrissage connu), fin de boucle en ligne droite, survivant blessé qui court en ligne droite (HEURISTIC).
- **Tiles / structures** :
  - Favorables au survivant : murs hauts qui coupent la LOS (jungle gym, shack, main buildings, intérieurs) ; cartes intérieures ou encombrées (HEURISTIC).
  - Défavorables : open areas, fillers bas, champs de maïs : le maïs cache la vue mais **ne bloquerait pas** les hachettes (UNCERTAIN-MM : la page ne traite pas ce point). Le rayon de collision de 0,1 m (FACT [WIKI]) laisse passer une hachette par des interstices étroits (HYPOTHESIS sur l'effet en jeu).
  - Fenêtres vs palettes : un vault de fenêtre donne un point d'atterrissage prévisible, donc éviter de vaulter si elle a une hachette armée et une LOS **sur la réception** ; le vault reste possible si la réception est cachée par un mur ou si c'est la seule sortie (HEURISTIC, cohérent avec `batch11_training.md` T-Q01 cas 4). Une palette basse ne bloquerait pas une hachette lancée par-dessus : UNCERTAIN-MM (page muette).
  - Verticalité : elle snipe depuis les étages et les collines ; au sol sous elle, la LOS est coupée (SITUATIONAL).
- **Mindgames propres** : fausse charge (armer puis annuler par l'attaque, FACT [WIKI]) pour provoquer un zigzag ; tenir la charge en marchant (3,08 m/s) pour forcer un changement de direction ; lancer « au bout de la boucle » (HEURISTIC).
- **Counterplay** :
  - Mécanique : changer de direction **au moment du lâcher**, pas pendant tout l'armement (HEURISTIC). Base vérifiée : un lancer non chargé part à 25 m/s, un lancer chargé à 40 m/s (FACT [WIKI]) : à distance moyenne, un lancer rapide (non chargé) laisse plus de temps pour l'esquive tardive qu'un lancer chargé (déduction, HEURISTIC). Rester collé aux murs hauts ; casser la LOS plutôt que tenter une esquive en plein champ. Limite (§26 P14) : une Huntress expérimentée **tient la charge** et attend ton changement de direction ; si elle le fait, varier le moment (feinte de virage, ligne droite courte vers un mur).
  - Distance : à très courte portée elle joue souvent au M1 ; la zone la plus dangereuse est la distance moyenne en terrain ouvert (HEURISTIC).
  - Positionnel : enchaîner des tiles à murs hauts ; aller vers les zones intérieures (HEURISTIC).
  - Macro (corr. 12b) : **compter ses lancers à partir de 7** ; le comptage est fiable en 1v4 puisqu'aucun add-on n'ajoute de hachette (FACT [WIKI]). À 0, elle doit aller à un casier (3 s d'animation, 2,4 s avec Deerskin Gloves) : c'est le moment de gagner de la distance ou de relancer un gen (HEURISTIC). Exception : avec **Soldier's Puttee**, elle court à 4,6 m/s quand elle est vide et peut continuer la chase en M1. Soigner et décrocher **derrière une LOS**.
  - Équipe : pas de soins ni d'unhooks à découvert ; espacer les gens pour la forcer à marcher (4,4 m/s) (HEURISTIC).
- **Habitudes punissables** : soigner en plein champ, courir en ligne droite, vaulter une fenêtre face à une hachette armée, trop jouer un filler bas, rester dans le maïs en croyant être protégé.
- **Adaptations avancées / échecs du counterplay** : avec Iridescent Head, chaque lancer met à terre mais elle n'a **qu'une hachette** : réduire l'exposition au minimum, y compris pour décrocher ; un lancer raté ou réussi l'envoie au casier, fenêtre sûre pour bouger (SITUATIONAL). Sur une carte ouverte, les murs hauts sont rares : pré-planifier la route entre tiles avant la chase.
- **Add-ons qui changent la décision** (effets : FACT [WIKI] [3] ; réponse : HEURISTIC) :
  - Iridescent Head (hachette = état mourant ; capacité réduite à 1) → jouer la LOS en permanence et ne plus décrocher à découvert, au lieu de compter sur un tir survivable ; profiter de chaque passage au casier.
  - Rose Root / Yellowed Cloth (+20 % / +10 % de vitesse de projectile) → casser la LOS plus tôt au lieu de miser sur l'esquive tardive.
  - Oak Haft / Bandaged Haft (−20 % / −10 % sur le cooldown de 2 s entre lancers) → après un lancer raté, le temps mort est plus court : ne pas sortir de la LOS pour autant.
  - Soldier's Puttee (4,6 m/s quand elle est à 0 hachette) → ne pas compter sur la fenêtre du casier : elle peut poursuivre au M1.
  - Deerskin Gloves (recharge au casier à 80 %, 2,4 s) → fenêtre du casier plus courte.
  - Wooden Fox (Undetectable 30 s après une recharge au casier) → après un bruit de casier, surveiller visuellement au lieu de se fier au TR.
  - Venomous Concoction (Exhausted 5 s au toucher) → après une hachette, pas de perk d'Exhaustion pendant 5 s : viser une tile au lieu de compter sur Sprint Burst / Lithe.
  - Weighted Head (Incapacitated 10 s au toucher) → pas de réparation ni de soin pendant 10 s : courir vers une LOS au lieu de tenter une action.
  - Begrimed Head (Haemorrhage + Mangled 80 s) / Rusty Head (Mangled 70 s) / Amanita Toxin (Blindness 60 s) / Glowing Concoction (aura 5 s au toucher) / Leather Loop et Infantry Belt (+2 % / +3 % Haste 5 s au toucher) → soins plus lents, perte des auras, pas de « casse de LOS + stealth » pendant 5 s, M1 de suivi plus rapide.
- **Implications de carte** : cartes ouvertes favorables à elle ; intérieurs et labyrinthes favorables au survivant (HEURISTIC). Les modifications de palettes 9.2.0 / 9.3.0 / 9.3.2 [2] n'ont pas été évaluées pour elle.
- **Perks fréquentes / synergies à anticiper** : non vérifiables (NightLight inaccessible). Le seed cite Lethal Pursuer, Barbecue & Chilli, Pain Resonance, Darkness Revealed. Teachables (FACT [WIKI] [3]) : **Beast of Prey** (Undetectable 30/35/40 s quand Bloodlust se déclenche) ; **Hex: Huntress Lullaby** (+2/4/6 % de pénalité sur un skill check raté en soin/réparation ; par jeton gagné à chaque crochet, l'avertissement sonore arrive 14 % plus tard, jusqu'à disparaître à 5 jetons) ; **Territorial Imperative** (aura 4/5/6 s d'un survivant qui entre au sous-sol quand elle est à plus de 24 m, CD 45 s).
- **Écart avec le seed** : **OK (« 7 hachettes » : valeur LIVE depuis 7.6.0 ; l'audit [2] l'avait classée comme erreur à tort, voir CONFLICT-L4G2-03)** · OK (hachette 25-40 m/s, hitbox 0,4 m, cooldown 2 s, casier 3 s, 3,08 m/s à l'armement, berceuse 45 m, TR 20 m, Beast of Prey 30-40 s) · **FAUX (nouveau 12b) : « Infantry Belt (+2 hachettes) »** → Infantry Belt = +3 % Haste 5 s au toucher ; aucun add-on n'ajoute de hachette · FAUX (« plus haut kill rate global », CONFLICT-L4G2-01) · NON VÉRIFIABLE (kill rate NightLight 41,6 %, « buff du 8.5 » de Beast of Prey : changelog de la perk non lu).
- **Sources** : [1] [2] [3] [O-529] [O-530] [O-538] [O-541] [O-544].

## 9. The Cannibal (Bubba Sawyer) — archétype(s) : M1 | anti-loop (insta-down court)
- **Version** : **buff au 9.6.0 (28/04/2026)** : vitesse maximale du Chainsaw Sweep **5,35 → 5,45 m/s** (FACT [OFF], [O-544] ; même valeur sur le changelog wiki [4] → VERIFIED_MULTI_SOURCE). C'est le **seul** changement du 9.6.0 pour lui. Antérieurs (FACT [WIKI]) : refonte charges + Tantrum au 4.1.0 ; 8.0.0 (sweep 2 → 2,5 s par jeton, jauge de Tantrum 5 → 3 charges, Tantrum de base 5 → 3 s, collision 17,5 → 10 cm) ; 7.3.0 (un survivant sous Endurance est immunisé contre un 2e coup de tronçonneuse dans les 0,5 s). 9.5.0 : sa description classe la casse de palette à la tronçonneuse en « Special-break » [O-538]. Rien au PTB 10.2.0 pour le pouvoir. Statut LIVE.
- **Données LIVE** (FACT [WIKI] [4], STRONG_SECONDARY sauf mention) :
  - 4,6 m/s ; **TR 32 m** ; grande taille. Bruit de tronçonneuse audible à **60 m**.
  - **3 jetons** au départ, rechargés à 0,25 charge/s (4 s par jeton) quand la tronçonneuse n'est pas utilisée ; sans jeton, la tronçonneuse est désactivée.
  - Charge (rev) : **2 s**. Pendant la charge il ralentit (4,37 m/s après 0,3 s, puis **3,45 m/s** après 1 s).
  - Chainsaw Sweep : **2,5 s**, accélération jusqu'à **5,45 m/s** (VERIFIED_MULTI_SOURCE, 9.6.0) ; dégâts doubles (insta-down) ; **peut toucher plusieurs survivants**. Réappuyer = Chainsaw Dash qui prolonge le sweep en consommant un jeton (+1 s de cooldown par jeton consommé).
  - Cooldowns : sweep raté 1,5 s (+1 s par jeton, max 4,5 s) ; sweep réussi 2 s ; **casse de palette / mur à la tronçonneuse : 1 s** (cohérent avec les « ≈ 1 s » de [2]).
  - **Tantrum** : déclenchée en heurtant un obstacle pendant le sweep, ou en chargeant trop longtemps (jauge pleine après **3 s** de rev continu sans lancer le sweep). Durée minimale 3 s, +1 s par jeton consommé (max 6 s) ; vitesse −90 % (0,46 m/s) ; il frappe au hasard autour de lui (dégâts doubles à courte portée) ; tous les jetons restants sont retirés.
- **Identification** :
  - Avant le reveal : TR 32 m classique ; tronçonneuse qui démarre (audible à 60 m). **Hillbilly vs Bubba** : Hillbilly fait des sprints longs en ligne droite (voir CONFLICT-L4G1-02 dans `batch4_killers_g1.md`) ; Bubba fait des balayages courts (2,5 s par jeton) et des Tantrums visibles.
  - Stratégie probable : pression sur les survivants groupés, chase courte, parfois camp près du crochet, freiné par l'anti-facecamp 9.3.0 [2] (HEURISTIC).
- **Ce qu'il cherche en chase** : boucles courtes à palette (short loops, fillers), survivants qui gardent une palette trop longtemps, groupes, body-blocks de crochet (HEURISTIC).
- **Tiles / structures** :
  - Favorables : longues boucles, **fenêtres** (son pouvoir ne lui donne aucun vault ; seul Bamboozle l'aide), LOS longues (HEURISTIC).
  - Défavorables : tiles courtes où il peut balayer autour d'une palette debout, open areas.
  - Palettes : **faire tomber la palette tôt, puis partir** vers la tile suivante quand il arme près d'une short loop ; il la casse ensuite à la tronçonneuse avec seulement **1 s de cooldown** (FACT [WIKI]) : la palette sert à éviter le balayage, pas à tenir la tile (HEURISTIC, cohérent avec le handbook §2.2 (b)). Limite : contre un tap-rev (fausse charge), un pré-drop systématique lui donne la palette gratuitement → quand il arrive en M1 sans armer, la palette redevient une palette normale (stun possible).
- **Mindgames propres** : tap-rev (fausse charge) pour obtenir une palette prématurée ; sweep qui contourne une petite tile ; rev tenu jusqu'à la limite de Tantrum (3 s) (HEURISTIC).
- **Counterplay** :
  - Mécanique : garder un obstacle entre soi et lui dès qu'il arme ; **pendant la charge, il marche à 3,45 m/s** (FACT [WIKI]) : c'est le moment de gagner de la distance vers la tile suivante (HEURISTIC). Un rev tenu plus de 3 s déclenche une Tantrum : un Bubba qui « attend » en revvant a au plus 3 s. Profiter d'une Tantrum (3 à 6 s à 0,46 m/s) pour casser la LOS, **hors de portée de ses coups** (il frappe autour de lui).
  - Positionnel : privilégier fenêtres et longues boucles.
  - Macro : ne pas réparer à 2-3 sur le même gen quand il approche : un sweep peut mettre plusieurs survivants à terre (FACT [WIKI] pour le multi-touche ; conseil HEURISTIC).
  - Équipe (corr. 12b) : pas de body-block de face au crochet. L'Endurance basekit de décrochage (10 s) [2] **absorbe un coup de tronçonneuse**, et le 7.3.0 empêche un 2e coup dans les 0,5 s qui suivent (FACT [WIKI]) : le survivant décroché survit à un premier sweep (mais passe sous Deep Wound, où tout dégât suivant le met à terre, [AUDIT]).
- **Habitudes punissables** : garder une palette « pour le stun » alors qu'il **arme** (contre son M1, le stun reste possible) ; body-block ; se grouper ; vaulter une palette dans une ligne droite ouverte.
- **Adaptations avancées** : avec Depth Gauge Rake (4 jetons) ou Carburettor Tuning Guide (un seul long sweep), jeter les palettes encore plus tôt et éviter les ouvertures moyennes ; avec Bamboozle, les fenêtres perdent de la valeur : revenir aux palettes jetées tôt et aux LOS (SITUATIONAL).
- **Add-ons qui changent la décision** (effets : FACT [WIKI] [4] ; réponse : HEURISTIC) :
  - Iridescent Flesh (tous les jetons rechargés après un coup de tronçonneuse ; Tantrum max 3 s) → un down n'épuise pas son pouvoir : le 2e survivant proche doit partir immédiatement au lieu d'attendre la recharge.
  - Carburettor Tuning Guide (le dash consomme tous les jetons d'un coup : +0,5 s par jeton, −2 % de vitesse) → un seul sweep long : casser la LOS derrière un obstacle haut plutôt que compter sur la fin du sweep en ligne droite.
  - Depth Gauge Rake (+1 jeton, charge −18 %, dash −2 %) → 4 jetons mais charge plus lente : plus de temps pour pré-drop pendant qu'il arme.
  - Long Guide Bar / The Grease (+2 s / +3 s avant la Tantrum de rev) → il peut tenir le rev 5-6 s à une tile : ne pas « attendre la Tantrum », partir.
  - Light Chassis (auras des survivants à 8 m pendant qu'il revve) → se cacher près de lui pendant qu'il arme ne marche pas.
  - Speed Limiter (la tronçonneuse n'inflige plus qu'un état de santé) → sain, un sweep ne met plus à terre : on peut « tanker » un sweep au lieu de tout sacrifier pour l'éviter.
  - Begrimed Chains (lâcher l'objet), Rusted Chains (Broken 90 s), Grisly Chains (Mangled 70 s), Shop Lubricant (aura du survivant abattu cachée 20 s aux autres si personne d'autre dans le TR) → objets moins sûrs, soins impossibles/ralentis, pas d'aura de l'abattu pour organiser le relevé.
- **Implications de carte** : cartes riches en fenêtres et longues boucles défavorables à lui (HEURISTIC). Cartes intérieures étroites : sweeps à bout portant plus faciles, risque de Tantrum plus élevé pour lui (SITUATIONAL ; la collision réduite à 10 cm au 8.0.0 l'aide dans les passages étroits, FACT [WIKI]).
- **Perks fréquentes** : le seed cite Bamboozle, Corrupt Intervention, Infectious Fright (non vérifié, NightLight inaccessible). Teachables (FACT [WIKI] [4]) : **Barbecue & Chilli** (aura 5 s des survivants à au moins 60/50/40 m du crochet après un crochet), **Franklin's Demise** (un coup M1 fait tomber l'objet ; aura des objets perdus à 32/48/64 m), **Knock Out** (LIVE : un survivant qui s'éloigne de plus de **6 m** d'une palette dans les 6 s après l'avoir lâchée subit **5 % de Hindered** ; PTB 10.2.0 : 10 m et 20 %, durée 3/4/5 s, fin anticipée si la palette est cassée — FACT [OFF], ligne « was 6m and 5% » de [O-559] ; mécanique « palette » déjà LIVE au 9.2.0, correctif [O-523]).
- **Écart avec le seed** : OK (buff 9.6.0 = 5,45 m/s, VERIFIED_PRIMARY) · OK (3 jetons, 2 s de charge, 2,5 s de sweep, dash qui consomme des jetons, Tantrum, recharge allongée par jeton, 4,6 m/s, TR 32 m) · **OK (Knock Out, corr. 12b)** : le seed décrit la mécanique LIVE (ralentissement après une palette lâchée) et étiquette correctement 10 m / 20 % comme PTB 10.2 ; l'ancienne remarque de ce fichier (« effet principal omis = aura à 32/24/16 m ») décrit une version antérieure, non LIVE (HISTORICAL, non daté ici) · NON VÉRIFIABLE (kill rate NightLight 48,5 %, build NightLight 62,5 %).
- **Sources** : [1] [2] [4] [O-523] [O-538] [O-544] [O-559].

## 10. The Nightmare (Freddy Krueger) — archétype(s) : zone/piège | mobilité (téléport) | info
- **Version** : **rework au 8.5.0 (28/01/2025)**, VERIFIED dans [2] ; **contenu désormais lu** sur le changelog wiki [5] (voir valeurs ci-dessous) ; 8.5.1 : effet visuel de TP sur un survivant qui se soigne. Notes officielles 9.0.0 → 10.1.2 : **aucun changement d'équilibrage**, seulement des correctifs (TP hors carte, Dream Pallets, auras) [O-510] [O-512] [O-529] [O-544]. PTB 10.2.0 : seule sa perk Fire Up change (voir Perks). Statut LIVE (STRONG_SECONDARY).
- **Données LIVE** (FACT [WIKI] [5], STRONG_SECONDARY) :
  - 4,6 m/s ; **TR 32 m** pour les survivants éveillés ; **berceuse 32 m** (non directionnelle) pour les endormis ; taille moyenne. 4,0 m/s en lançant un Dream Snare ; 3,86 m/s en chargeant une Dream Projection.
  - **Survivants éveillés** : ils entendent son TR mais il est **invisible au-delà de 32 m**, visible par intermittence (« glimpses » de 2 s) entre 16 et 32 m, visible en permanence sous 16 m. **Microsleep** : endormissement passif en **60 s** en sa présence.
  - **Survivants endormis (Dream World)** : Oblivious, berceuse non directionnelle au lieu du TR ; **un soin (donné ou reçu) déclenche le Killer Instinct**. Un coup M1 endort immédiatement (sauf immunité de réveil).
  - **Réveil** : rater un skill check ; être réveillé par un allié éveillé (**5 s**) ; utiliser un **Alarm Clock** (2 s ; n'importe quel réveil de la carte ; cooldown 45 s ; **immunité au sommeil 30 s**) ; passer en état mourant.
  - **Dream Snares** (au choix avec les Dream Pallets, bascule par bouton) : charge 0,35 s, projectile au sol à **12 m/s**, portée **18 m**, traverse les murs et suit les pentes (pas les rebords) ; cooldown **7 s**. Endormi touché : **−12 % Hindered 4,5 s et pas de fast vault** pendant ce temps. Éveillé touché : +30 s de Microsleep.
  - **Dream Pallets** : jusqu'à **8**, posées à 24 m ; « Rupture » après **1,5 s** dans un rayon de **3,5 m** (cooldown 1,5 s). Endormi dans la zone : **perd un état de santé**. Éveillé : +60 s de Microsleep. Les survivants voient un **scintillement à moins de 6 m** qui trahit une fausse palette ; une Dream Pallet **peut être lâchée pour étourdir Freddy** si elle n'est pas en train de rompre (elle se détruit en la lâchant).
  - **Dream Projection** (TP) : vers n'importe quel générateur (même terminé ou bloqué) ou à 8-12 m d'un **survivant endormi qui soigne** ; charge 2,5 s, l'aura d'un « husk » apparaît à la destination ; à l'arrivée, les survivants à 8 m ont Killer Instinct 3 s (+15 s de Microsleep s'ils sont éveillés) ; cooldown **30 s**, réduit de 15 % par survivant endormi (max −60 %, seulement pour les TP sur générateur). Annuler = cooldown complet.
- **Identification** :
  - Avant le reveal : **Alarm Clocks** sur la carte (FACT [WIKI] : objets d'interaction propres à son pouvoir ; présence dès le début probable, UNCERTAIN-MM) ; TR entendu **sans voir le tueur** au-delà de 32 m, puis silhouette intermittente entre 16 et 32 m (FACT [WIKI], signature unique) ; vision du Dream World et berceuse une fois endormi.
  - Pouvoir en action : snares au sol, palettes qui « apparaissent » et scintillent de près, aura de husk sur un gen avant sa TP.
  - Stratégie probable : 3-gen par téléportation, pression de fin de partie, parfois build de portes (Remember Me, Blood Warden) (HEURISTIC).
- **Ce qu'il cherche en chase** : snares dans les couloirs, lignes droites et avant les fenêtres (pas de fast vault sous le Hindered du snare) ; fausses palettes à côté des vraies ; Rupture sur un survivant endormi qui tourne autour d'une Dream Pallet (HEURISTIC).
- **Tiles / structures** (corr. 12b) : palettes connues avant la chase = fiables ; une palette **qui scintille à moins de 6 m** est une Dream Pallet (FACT [WIKI]). Une Dream Pallet peut quand même servir à l'étourdir si elle ne rompt pas, mais **endormi, rester à moins de 3,5 m d'une Dream Pallet qu'il vise = perte d'un état de santé** : s'en éloigner plutôt que la jouer. Les snares traversent les murs (FACT [WIKI]) : un mur ne protège pas d'un snare, il protège seulement de la visée.
- **Mindgames propres** : palette vraie + fausse palette côte à côte ; snare devant la sortie de boucle ou la fenêtre visée ; téléport vers un gen puis retour (HEURISTIC).
- **Counterplay** :
  - Mécanique : contourner les snares plutôt que les traverser (endormi : −12 % et pas de fast vault 4,5 s) ; contre une Dream Pallet, s'éloigner de 3,5 m dès qu'il la vise quand on est endormi ; éveillé, une Rupture ne blesse pas (elle ajoute 60 s de Microsleep).
  - Macro : **rester éveillé est rentable** : chaque survivant endormi réduit de 15 % le cooldown de sa TP (FACT [WIKI]) et un soin endormi lui donne un Killer Instinct et une cible de TP. Donc **se réveiller avant de soigner** (réveil, skill check raté volontaire, allié) (HEURISTIC fondée sur FACT [WIKI]). En réparation, surveiller l'aura de husk sur son gen (charge 2,5 s) et s'écarter de plus de 8 m.
  - Équipe : se réveiller mutuellement (5 s) quand on est proches ; ne pas laisser toute l'équipe endormie en fin de partie (HEURISTIC ; en SoloQ, se réveiller soi-même aux Alarm Clocks, 2 s, plutôt que compter sur un coéquipier ; immunité 30 s ensuite).
- **Habitudes punissables** : se soigner endormi ; rester endormi longtemps sans surveiller ; tourner autour d'une palette inconnue en étant endormi ; réparer à plusieurs sur le gen visé par la TP ; ouvrir les portes endormi contre Black Box ou Class Photo.
- **Adaptations avancées** : face à un build de fin de partie (Remember Me, Blood Warden, No Way Out…) ou à Class Photo / Black Box, l'ouverture des portes devient une décision d'équipe : ouvrir **éveillé** (SITUATIONAL).
- **Add-ons qui changent la décision** (effets : FACT [WIKI] [5] ; réponse : HEURISTIC) :
  - Class Photo (TP sur les interrupteurs des portes ; Killer Instinct sur qui ouvre une porte) → ne pas ouvrir une porte seul et à découvert en fin de partie ; ouvrir à deux portes en même temps ou quand il est engagé ailleurs.
  - Black Box (portes bloquées 15 s pour les endormis après ouverture, effet qui persiste 3 s après le réveil) → se réveiller **avant** l'endgame.
  - Swing Chains (fenêtres à 16 m bloquées 6 s après une TP) → après une TP près de toi, ne pas planifier la fuite par une fenêtre.
  - Paint Thinner (lâcher une Dream Pallet → Killer Instinct 6 s et cible de TP à charge ×2) → ne pas utiliser ses Dream Pallets pour tenter un stun.
  - Red Paint Brush (auras des endormis au-delà de 32 m ; Microsleep +50 %, 90 s) → endormi, se cacher à distance ne sert à rien : se réveiller.
  - Green Dress (+2 s au réveil par un allié, 7 s) / Nancy's Sketch (immunité −20 %) / Sheep Block (cooldown des réveils +10 %) → privilégier les Alarm Clocks et le skill check raté.
  - Blue Dress (1 seul snare, stationnaire, disparaît après 8 s) ; « Z » Block (auras 3 s des survivants touchés par un snare ou une Dream Pallet).
- **Implications de carte** : grandes cartes = sa TP compense sa vitesse normale (HEURISTIC).
- **Perks fréquentes** : non vérifiables. Teachables (FACT [WIKI] [5]) : **Fire Up** (LIVE : +4/5/6 % par jeton, 1 jeton par gen terminé, max 5, pour la casse de palettes/murs, les dégâts aux gens, ramasser/lâcher un survivant et le vault de fenêtre ; PTB 10.2.0 : 6/7/8 % — FACT [OFF], lignes « was » de [O-559]), **Remember Me** (+6 s d'ouverture des portes par état de santé perdu par l'Obsession, max 18/24/30 s ; l'Obsession n'est pas pénalisée), **Blood Warden** (aura des survivants dans la sortie ; une fois par partie, un crochet bloque les portes ouvertes 40/50/60 s).
- **Écart avec le seed** (corr. 12b) : OK (valeurs du pouvoir : Microsleep 60 s, réveil par allié 5 s, cooldown global 45 s des réveils, snares 12 m/s / 18 m / −12 % 4,5 s / pas de fast vault / +30 s / cooldown 7 s, 8 Dream Pallets à 24 m, +60 s, TP 2,5 s / 30 s réduite par endormi) · OK (« les fausses ont un rendu légèrement différent de près » : scintillement sous 6 m) · OK (Fire Up « 4 à 6 % », ramasser/casser/franchir = LIVE, [O-559]) · **FAUX (nouveau 12b) : « Z-Block (sélection de pallets ou snares selon version) »** → LIVE : aura 3 s des survivants touchés ; la bascule snares/pallets est de base depuis le 8.5.0 · NON VÉRIFIABLE (tier, kill rate 49,8 %).
- **Sources** : [1] [2] [5] [O-510] [O-512] [O-529] [O-544] [O-559].

## 11. The Pig (Amanda Young) — archétype(s) : furtif | zone/piège (Reverse Bear Traps) | M1
- **Version** : **buffs au 9.1.0 (29/07/2025)** (FACT [OFF] [O-516] + changelog wiki [6], VERIFIED_MULTI_SOURCE) : Ambush Dash **6,9 → 7,1 m/s** ; vitesse accroupie **3,8 → 4,0 m/s** ; s'accroupir / se relever **1 → 0,8 s** ; fondu du TR en s'accroupissant plus rapide (note officielle : taux 0,25 → 0,33 ; wiki : 4 → 3 s) ; entrées « maintenues » pour s'accroupir et charger la ruée. **TR 32 → 24 m** au 9.1.0 : changelog wiki et infobox [6] (STRONG_SECONDARY ; **absent de la note officielle 9.1.0**, qui ne cite que le fondu). Add-ons : John's Medical File 10 → 5 %, Last Will révisé [O-516]. 9.6.2 : Amanda's Letter réactivé ; correctif du nombre de pièges des add-ons [O-546]. PTB 10.2.0 : un correctif visuel seulement [O-559]. Statut LIVE.
- **Données LIVE** (FACT [WIKI] [6], STRONG_SECONDARY sauf mention) :
  - Vitesse 4,6 m/s ; **TR 24 m** (corr. 12b : le seed avait raison, la valeur « 32 m » de ce fichier venait de la mémoire du modèle, antérieure au 9.1.0) ; taille moyenne.
  - **Accroupie** : **Undetectable**, 4,0 m/s (VERIFIED_MULTI_SOURCE) ; transition 0,8 s ; le TR met **3 s** à disparaître en s'accroupissant et **1,4 s** à revenir en se relevant.
  - **Ambush Dash** : charge **0,75 s** depuis l'état accroupi, ruée **2,3 s à 7,1 m/s** (VERIFIED_MULTI_SOURCE pour 7,1) ; cooldown 2,7 s après un coup, **1,5 s après un raté**. Signal sonore de charge (« rugissement ») : cité par le seed et la mémoire du modèle, **non décrit par la page** (UNCERTAIN-MM).
  - **4 Reverse Bear Traps** (non renouvelables), posés sur un survivant à terre en 3,3 s. **5 Jigsaw Boxes** apparaissent sur la carte.
  - Un piège **inactif** s'active **à la complétion d'un générateur**. Piège actif : minuteur de **150 s**, **en pause** quand le survivant est à terre, accroché ou **poursuivi par la Pig**. Voyant du piège : blanc → jaune → rouge, clignotement de plus en plus rapide.
  - Retrait : fouiller des Jigsaw Boxes (**12 s** par fouille, 80 % de chance de skill check par seconde) ; il faut en fouiller **de 1 à 4** au hasard ; une fouille ratée cache l'aura de cette boîte ; **12 fouilles au total** par partie (pool partagé). Les auras des boîtes non fouillées sont **visibles en permanence par les survivants piégés**.
  - **Sortie** : franchir la sortie avec un piège **actif** tue le survivant ; avec un piège **inactif**, on peut sortir normalement ; **la trappe (hatch) reste possible** même piégé (FACT [WIKI]). La note 10.1.0 indique que les bots ne cherchent plus à retirer un piège inactif une fois tous les gens terminés [O-556] (indice cohérent, pas une règle détaillée).
- **Identification** :
  - Avant le reveal : TR de 24 m qui disparaît (3 s) et revient par intermittence (accroupissements) ; Jigsaw Boxes (visibles pour les survivants **piégés** ; pour les autres, rencontre visuelle) ; signal de ruée.
  - Pouvoir en action : piège sur la tête, minuteur, ruée.
  - Stratégie probable : poser les pièges tôt pour retirer des survivants des gens, embuscades accroupie près des gens (HEURISTIC).
- **Ce qu'il cherche en chase** : ruée à courte portée sur des tiles courtes ; accroupissement près d'une fenêtre ou d'un coin pour cacher sa red stain et son TR (HEURISTIC).
- **Tiles / structures** : la ruée est prévisible (charge de 0,75 s accroupie) et dure 2,3 s en ligne droite : murs et coins cassent la trajectoire ; les tiles moyennes et longues rendent la ruée peu rentable (HEURISTIC).
- **Mindgames propres** : accroupissement près d'une boucle (TR et red stain disparaissent en 3 s) ; faux départ de ruée (HEURISTIC).
- **Counterplay** :
  - Mécanique : pendant la charge (0,75 s), contourner un coin ou vaulter au bon moment ; une ruée ratée ne lui coûte que 1,5 s (FACT [WIKI]) : gagner de la distance tout de suite, pas rester à côté (HEURISTIC).
  - Macro, pièges (corr. 12b) : piège actif → aller directement vers les boîtes dont l'aura est visible (seules les boîtes non fouillées apparaissent ; une boîte ratée disparaît de ton HUD) ; en SWF, annoncer les boîtes vides ; **en chase, le minuteur est en pause** : ne pas paniquer pendant la poursuite. Piège inactif → continuer à réparer, mais **décider en équipe** du moment où l'on termine un gen quand plusieurs survivants sont piégés (HEURISTIC : 1 piégé près des boîtes ≠ 3 piégés).
  - Stealth : vérifier les angles morts près des gens, surtout après un reset de TR (HEURISTIC). Efficacité de Spine Chill contre Undetectable : **UNCERTAIN** (non vérifiée ; Spine Chill reworkée au PTB 10.2.0, non LIVE).
  - Fin de partie : ne jamais franchir la sortie avec un piège actif (FACT [WIKI], mort) ; **la trappe reste une sortie valide** même piégé (FACT [WIKI]).
- **Habitudes punissables** : quitter la chase pour chercher les boîtes au mauvais moment ; plusieurs piégés qui terminent un gen en même temps ; ignorer l'absence de TR près d'un gen.
- **Adaptations avancées** : avec des add-ons de boîtes ou de minuterie (ci-dessous), adapter le rythme de complétion des gens (SITUATIONAL).
- **Add-ons qui changent la décision** (effets : FACT [WIKI] [6] ; réponse : HEURISTIC) :
  - Rules Set No.2 (auras des boîtes cachées tant que le piège n'est pas actif) → avec un piège inactif, repérer les boîtes à vue avant qu'un gen ne se termine.
  - Crate of Gears / Bag of Gears (fouille −25 % / −14 % de vitesse ; pose du piège +50 %) → une fouille dure ~16 s au lieu de 12 : commencer à chercher plus tôt et limiter les gens terminés pendant qu'un survivant est piégé.
  - Tampered Timer (minuteur −20 s → 130 s) / Jigsaw's Annotated Plan (+1 piège, +10 s, puis −10 s sur tous les pièges actifs à chaque gen terminé) → moins de marge : traiter le piège comme une urgence.
  - Jigsaw's Sketch (+1 piège ; aura des gens réparés par un survivant piégé) → piégé, ne pas réparer : chercher la clé.
  - Video Tape (tous les survivants commencent avec un piège) → la première complétion de gen active 4 pièges : coordonner le premier gen.
  - Amanda's Letter (auras à 16 m quand elle est accroupie ; −2 pièges → 2 pièges) → se cacher près d'elle accroupie ne marche pas.
  - Razor Wires (sain + skill check raté à une boîte = blessé ; skill checks +20 % plus durs) / Interlocking Razor (blessé + skill check raté = Deep Wound) → fouiller hors de sa proximité et soigner avant de fouiller si possible.
  - Amanda's Secret (retrait du piège = Loud Noise + aura 6 s) → après un retrait, quitter la zone immédiatement.
  - Face Mask (Blindness), Slow-Release Toxin (Exhausted tant que piégé), Utility Blades (Haemorrhage), Rusty Attachments (Mangled 70 s) → piégé, pas de perk d'Exhaustion ni d'aura.
- **Implications de carte** : grandes cartes = boîtes éloignées, donc plus de temps de recherche (HEURISTIC).
- **Perks fréquentes** : non vérifiables. Teachables (FACT [WIKI] [6]) : **Make Your Choice** (décrocher un survivant quand elle est à plus de 32 m : le sauveteur crie et devient Exposed 40/50/60 s), **Scourge Hook: Hangman's Trick** (4 Scourge Hooks ; en portant un survivant, auras à 12/14/16 m d'un Scourge Hook ; alerte si un crochet est saboté), **Surveillance** (couleur des gens abîmés ; bruit de réparation audible +8 m).
- **Écart avec le seed** : **OK (TR 24 m, CONFLICT-L4G2-02 RÉSOLU en faveur du seed)** · OK (buffs 9.1 : 4,0 m/s accroupie, 7,1 m/s, 0,8 s ; ruée 0,75 s / 2,3 s ; 4 pièges ; pose 3,3 s ; 150 s ; pauses du minuteur ; 5 boîtes ; 12 s par fouille ; skill check probable) · **IMPRÉCIS (nouveau 12b) : « fouiller les 5 Jigsaw Boxes jusqu'à trouver la bonne clé »** → il faut en fouiller de 1 à 4, jamais les 5 ; pool de 12 fouilles par partie · NON VÉRIFIABLE (Spine Chill contre sa furtivité, kill rate 43,3 %).
- **Sources** : [1] [2] [6] [O-516] [O-546] [O-556] [O-559].

## 12. The Clown (Kenneth Chase) — archétype(s) : anti-loop (Hindered) | mobilité (Haste)
- **Version** : **buffs au 9.1.0 (29/07/2025)** puis **ajustement au 9.2.0** (FACT [OFF] [O-516] [O-523] + changelog wiki [7], VERIFIED_MULTI_SOURCE) :
  - 9.1.0 : Haste de l'Antidote **10 → 12 %** ; activation de l'Antidote 2 → 1 s ; Hindered du Tonic 15 → 14 % (valeur finale après les changements PTB → LIVE) ; persistance du Hindered 2 → 1 s ; vitesse en rechargeant **1,61 → 2,3 m/s** ; recharge **3 → 2,5 s** ; add-ons révisés (Flask of Bleach 4 → 2 %, Smelly Inner Soles 66 → 15 %, Cigar Box 16 → 6 m, Ether 15 Vol% 1 → 0,5 s, VHS Porn refait).
  - 9.2.0 (annoncé par la Developer Update d'août 2025 [O-521] comme un compromis entre les valeurs d'avant 9.1.0 et celles du 9.1.0) : activation de l'Antidote **1 → 1,6 s** ; persistance du Hindered du Tonic **1 → 1,6 s**.
  - Rien au PTB 10.2.0. Statut LIVE.
- **Données LIVE** (FACT [WIKI] [7] ; valeurs chiffrées ci-dessus VERIFIED_MULTI_SOURCE) :
  - 4,6 m/s ; **TR 32 m** ; grande taille. **6 bouteilles** partagées entre Tonic et Antidote ; recharge à tout moment : **2,5 s à 2,3 m/s**. Lancer : 8,5 m/s (non chargé) à 14 m/s (chargé ≥ 1 s), trajectoire en cloche (UNCERTAIN-MM pour la forme exacte).
  - **Tonic** (nuage fuchsia/rose, dure 10 s, se dissipe plus vite quand on le traverse) : Intoxicated = vision troublée (4 s, décroissante), toux (2 s), **pas de fast vault** (1 s après la sortie), **−14 % Hindered** (1,6 s après la sortie). Le Clown y est immunisé.
  - **Antidote** (nuage blanc, **jaune après 1,6 s**) : **+12 % Haste pendant 6 s pour tous les joueurs qui le touchent**, survivants compris (5,15 m/s pour lui). La phrase de description du pouvoir sur le wiki affiche « +14 % » : incohérence interne de la page, tranchée à 12 % (CONFLICT-L4G2-04).
  - **Neutralisation** : les deux gaz s'annulent au contact ; passer de l'un à l'autre annule les effets persistants du premier.
- **Identification** : bruit de bouteilles et de verre ; nuages rose ou jaune ; toux des survivants intoxiqués ; recharge longue (2,5 s) et visible (HEURISTIC).
- **Ce qu'il cherche en chase** : lancer du Tonic sur la fenêtre ou la palette visée (pas de fast vault) ; longue ligne droite en Antidote (HEURISTIC).
- **Tiles / structures** : les obstacles hauts bloquent les bouteilles ; les tiles avec plusieurs sorties permettent de contourner le gaz rose (HEURISTIC).
- **Mindgames propres** : gaz lancé pour couper une route, puis attaque sur l'autre sortie ; Antidote pour rattraper en fin de boucle (HEURISTIC).
- **Counterplay** :
  - Mécanique : contourner le gaz rose, ou le traverser au plus court (les effets persistent 1 à 4 s selon l'effet, FACT [WIKI]) ; **traverser son gaz jaune** (+12 % Haste pour toi aussi, FACT [WIKI]) ; **un nuage jaune annule le rose** : passer du rose au jaune coupe l'intoxication (FACT [WIKI], neutralisation) ; gagner de la distance pendant qu'il recharge (2,5 s à 2,3 m/s) (HEURISTIC).
  - Fenêtres : pas de fast vault dans le Tonic et 1 s après : ne pas miser une chase sur un fast vault intoxiqué (FACT [WIKI] ; le « bloqué » était UNCERTAIN, c'est désormais vérifié).
  - Positionnel : éviter les longues lignes droites ouvertes ; cibler les tiles à obstacles hauts.
- **Habitudes punissables** : courir dans un nuage rose ; tenir une boucle en ligne droite ; rester groupés dans le gaz ; ignorer son Antidote.
- **Adaptations avancées** : si Diminishing Returns 9.6.0 atténue le cumul d'un Hindered de pouvoir avec un Hindered de perk (HYPOTHESIS, [O-544] : pouvoirs et perks concernés, add-ons exclus), les perks Hindered le rendent moins fort qu'avant 9.6.0 : à vérifier dans le manuel. Même logique pour l'Antidote + une Haste de perk côté survivant.
- **Add-ons qui changent la décision** (effets : FACT [WIKI] [7] ; réponse : HEURISTIC) :
  - Redhead's Pinkie Finger (un coup **direct** de Tonic = Exposed tant qu'intoxiqué ; **1 seule bouteille**) → éviter le coup direct avant tout ; après chaque lancer il doit recharger (2,5 s) : fenêtre pour gagner de la distance.
  - Tattoo's Middle Finger (aura 6 s des survivants touchés par le Tonic **ou l'Antidote**) → prendre sa Haste jaune te révèle : ne pas la traverser pour aller se cacher.
  - Cigar Box (les joueurs revigorés voient les auras dans un rayon de 6 m pendant 6 s) → l'effet vaut aussi pour lui : le jaune ne sert pas à se cacher près de lui.
  - Starling Feather / Robin Feather (−50 % / −40 % sur le délai entre deux lancers) ; Thick Cork Stopper (recharge −0,5 s) ; Smelly Inner Soles (+15 % de vitesse en rechargeant) → la fenêtre de recharge et le temps entre bouteilles sont plus courts.
  - Flask of Bleach (Hindered −16 %) ; Bottle of Chloroform / VHS Porn (nuages rose +20 % / +10 %) ; Ether 15 Vol% (intoxication +0,5 s) → contourner plus large plutôt que traverser.
  - Kerosene Can (Blindness 30 s) ; Sulphuric Acid Vial (Mangled 70 s) ; Sticky Soda Bottle / Cheap Gin Bottle (Haste de l'Antidote +2 % / +3 %) ; Solvent Jug / Garish Make-Up Kit (Haste +1 s / +2 s) ; Spirit of Hartshorn (nuage jaune +20 %).
- **Implications de carte** : cartes ouvertes favorables à l'Antidote (HEURISTIC).
- **Perks fréquentes** : non vérifiables. Teachables : Bamboozle, Coulrophobia (**20/25/30 % au 10.1.0**, VERIFIED dans [2]), Pop Goes the Weasel (+15 % de régression → **20 % au total** au 9.5.0 selon [2]).
- **Écart avec le seed** : **OK (« valeurs des patchs 9.1 et 9.2 », corr. 12b)** : le 9.2.0 a bien modifié le Clown (Antidote 1,6 s, persistance 1,6 s) ; l'ancienne remarque « [2] ne documente pas de changement au 9.2 » est une lacune de l'audit · OK (6 bouteilles, recharge 2,5 s, Tonic −14 %, fast vaults bloqués, Antidote 1,6 s puis +12 % 6 s pour tous, effets qui persistent 1 à 4 s, Cigar Box, Redhead's Pinkie Finger = Exposed sur coup direct et 1 bouteille) · OK (Coulrophobia 20-30 % depuis le 10.1, [2]) · OK (Pop 20 % au total, [2]) · NON VÉRIFIABLE (tier, kill rate 52,3 %, build NightLight 69 %).
- **Sources** : [1] [2] [7] [O-513] [O-516] [O-521] [O-523] [O-544].

## 13. The Spirit (Rin Yamaoka) — archétype(s) : mobilité | furtif (mindgame)
- **Version** : aucun changement 9.0.0 → 10.1.2a trouvé dans [2]. Statut LIVE présumé, UNCERTAIN.
- **Données LIVE** (UNCERTAIN-MM) : **4,4 m/s ; TR 24 m** (UNCERTAIN-MM ; compatible avec la règle d'origine de l'audit, 24 m pour un tueur à 4,4 m/s) ; taille moyenne. Yamaoka's Haunting : la Spirit laisse une **enveloppe (husk) immobile** et devient invisible et plus rapide ; elle ne peut pas attaquer en phase. Vitesse de phase environ ×1,6 (seed : 7,04 m/s), durée et cooldown non vérifiés. **Phasing passif** évoqué par le seed : UNCERTAIN (le modèle se souvient d'une suppression antérieure ; non vérifié).
- **Identification** :
  - Avant le reveal : TR 24 m ; son de départ de phase ; **husk figé**, puis réapparition brusque (FACT de principe [UNCERTAIN-MM]).
  - Pouvoir en action : husk immobile et Spirit invisible, herbe qui bouge, son directionnel (UNCERTAIN-MM).
  - Stratégie probable : chases rapides, pression par la mobilité (HEURISTIC).
- **Ce qu'il cherche en chase** : un survivant qui court (scratch marks) et qui gémit (blessé) ; un survivant qui garde une palette « pour le stun » (HEURISTIC).
- **Tiles / structures** : **jeter la palette tôt puis marcher** est souvent plus fiable que tenir (HEURISTIC) ; les LOS hautes et les tiles connectées donnent des options de « double-back » (HEURISTIC).
- **Mindgames propres** : fausse phase (rester immobile), phase courte, phase à travers une palette (HEURISTIC).
- **Counterplay** :
  - Mécanique : **regarder le husk** (s'il est figé, elle est probablement en phase) ; **marcher ou s'arrêter** (pas de scratch marks) quand elle phase près de soi (HEURISTIC). Base vérifiée (calcul P14) : la marche à 2,26 m/s = 56,5 % de la course, sous le seuil de 60 % au-delà duquel les griffures apparaissent (FACT [AUDIT], SS). **Limites (§26)** : c'est un mix-up, pas une règle — une Spirit qui attend ou feinte l'arrêt l'exploite ; **blessé**, marcher ou s'arrêter laisse les grognements et les flaques de sang : l'arrêt prolongé blessé est le pire cas ; varier marcher / courir / changer de côté.
  - Interaction (FACT [AUDIT]) : juste après un décrochage, l'Elusive basekit (10 s) supprime griffures, grognements et flaques : fenêtre où la Spirit perd ses trois indices (ne s'applique pas une fois les gens alimentés).
  - Perks : Iron Will (grognements −80/90/100 %, inactive si Exhausted : [AUDIT] SS), perks anti-scratch marks (Lucky Break ; Urban Evasion accélère la marche accroupie, qui ne laisse pas de griffures), cités par le seed : utiles, sans garantie (SITUATIONAL).
  - Macro : quitter la tile pendant son cooldown (valeur non vérifiée) (HEURISTIC).
- **Habitudes punissables** : courir en ligne droite quand elle phase ; deviner **sans lire les indices** (husk, son, herbe) — un choix imprévisible reste légitime quand aucun indice n'existe ; tenir la même palette plusieurs fois.
- **Adaptations avancées** : si le son de phase est absent, un add-on silencieux est probable (Prayer Beads Bracelet, effet LIVE non vérifié) : jouer plus « à l'aveugle », en misant sur les pauses et la marche.
- **Add-ons qui changent la décision** : non vérifiables (Prayer Beads, Rusty Flute, Yakuyoke Amulet, Mother-Daughter Ring).
- **Implications de carte** : grandes cartes = sa mobilité est pleinement utile (HEURISTIC).
- **Perks fréquentes** : non vérifiables. Teachables : Spirit Fury, Hex: Haunted Ground, Rancor.
- **Écart avec le seed** : IMPRÉCIS / à vérifier (phasing passif, son directionnel 24 m, cooldown 15 s) · NON VÉRIFIABLE (valeurs d'add-ons, 63,5 % de kills NightLight). Le seed a été signalé par [2] comme contenant des erreurs sur la Spirit (non détaillées).
- **Sources** : [1] [2].

## 14. The Legion (Frank, Julie, Susie, Joey) — archétype(s) : M1 | info (Frenzy) | slug indirect (Deep Wound)
- **Version** : aucun changement 9.0.0 → 10.1.2a trouvé dans [2]. La « désactivation temporaire puis réactivation au 9.6.0 » du seed : **non documentée dans [2]**, UNCERTAIN. Statut LIVE.
- **Données LIVE** (UNCERTAIN-MM) : 4,6 m/s ; TR 32 m. Feral Frenzy : plus rapide, vaults de palettes et fenêtres, révèle en Killer Instinct les survivants non touchés ; le Feral Slash inflige Deep Wound (timer à mender) ; fatigue à la fin du Frenzy. **« Le 5e Feral Slash met à terre »** (seed) : le modèle se souvient que le Frenzy ne met plus à terre depuis longtemps ; UNCERTAIN. Tension à noter (P14) : l'audit donne la règle générale « un dégât sous Deep Wound = état mourant » [2] ; qu'un Feral Slash compte comme « dégât » sur un survivant déjà sous Deep Wound n'est pas vérifié.
- **Identification** : cris de Frenzy ; Killer Instinct ; Legion qui vault les palettes en Frenzy (FACT de principe [UNCERTAIN-MM]).
- **Ce qu'il cherche en chase** : blesser plusieurs survivants ; enchaîner avec un M1 (HEURISTIC).
- **Tiles / structures** : en Frenzy, les palettes debout ne stoppent pas son vault ; le vrai stun ne s'obtient qu'hors Frenzy (HEURISTIC).
- **Mindgames propres** : cancel du Frenzy avant la fatigue ; tourner autour d'une tile pour obtenir un 2e slash (HEURISTIC).
- **Counterplay** :
  - Mécanique : pendant sa fatigue, casser la LOS (FACT de principe [UNCERTAIN-MM] sur la fatigue).
  - Macro : ne pas rester groupés ; mender au bon moment (HEURISTIC). Base corrigée P14 (FACT [AUDIT], VERIFIED_PRIMARY, notes 8.6.0) : le minuteur de Deep Wound (20 s) est en pause **quand tu cours** ou pendant le mending — pas « en chase » ; mending 10 s seul, 6 s par un allié. Conséquence : marcher ou s'accroupir pour cacher tes griffures **consomme** le minuteur ; mender à deux fait gagner 4 s mais expose deux survivants.
  - Équipe : jouer blessé est « normal » contre Legion ; un soin complet n'est pas toujours rentable (HEURISTIC).
- **Habitudes punissables** : se soigner à côté d'un gen occupé par plusieurs survivants ; laisser le Deep Wound expirer ; ignorer le Killer Instinct.
- **Adaptations avancées** : si un add-on permet au Frenzy de casser les palettes (Iridescent Button selon le seed ; la liste wiki.gg Pallets de l'audit cite bien « Legion (Frenzy + add-on) » parmi les destructions par pouvoir, [AUDIT] STRONG_SECONDARY, liste à reconfirmer ; nom de l'add-on non vérifié), les palettes debout ne sont plus fiables en Frenzy.
- **Add-ons qui changent la décision** : non vérifiables.
- **Implications de carte** : petites cartes = chaînage de slashs plus facile (HEURISTIC).
- **Perks fréquentes** : non vérifiables. Teachables : Discordance, Mad Grit, Iron Maiden.
- **Écart avec le seed** : IMPRÉCIS (« 5e Feral Slash met à terre », UNCERTAIN) · NON VÉRIFIABLE (désactivation et réactivation au 9.6.0 ; vitesses de Frenzy 5,2 et 6,16 m/s).
- **Sources** : [1] [2].

## 15. The Plague (Adiris) — archétype(s) : ranged (Corrupt Purge) | info/zone (fontaines) | infection
- **Version** : aucun changement 9.0.0 → 10.1.2a trouvé dans [2]. Statut LIVE présumé, UNCERTAIN.
- **Données LIVE** (UNCERTAIN-MM) : 4,6 m/s ; TR 32 m ; grande taille. Vile Purge : infecte survivants et objets ; à infection complète, le survivant est blessé et Broken. Pools of Devotion (fontaines) : les survivants s'y purifient, puis la fontaine devient **corrompue**. Si Plague boit à une fontaine corrompue : **Corrupt Purge** (vomi à distance qui blesse), durée seed 60 s. Fin de Corrupt Purge sur un stun : UNCERTAIN.
- **Identification** : **fontaines (Pools of Devotion) sur la carte** (FACT de principe [UNCERTAIN-MM], identification précoce) ; son de vomissement ; toux et vomissements des survivants ; objets infectés (UNCERTAIN-MM).
- **Ce qu'il cherche en chase** : Corrupt Purge : tirs en fin de boucle, au-dessus des palettes et des fenêtres ; survivants blessés en permanence (HEURISTIC).
- **Tiles / structures** : en Corrupt Purge, LOS haute et murs = protection (HEURISTIC).
- **Mindgames propres** : attendre la purification pour boire ; attaque en Corrupt Purge au bout de la boucle (HEURISTIC).
- **Counterplay** :
  - Macro : **ne pas purifier par réflexe**, surtout plusieurs à la suite, car chaque fontaine purifiée devient une arme potentielle (HEURISTIC) ; jouer Broken est viable, avec coordination (HEURISTIC).
  - Mécanique : Corrupt Purge → LOS et murs hauts (HEURISTIC).
  - Équipe : se purifier loin d'elle et au bon moment (HEURISTIC).
- **Habitudes punissables** : purifier en rafale ; toucher des objets infectés en étant sain (seed) ; se soigner au lieu de réparer.
- **Adaptations avancées** : jouer 100 % Broken la prive de Corrupt Purge mais rend tout le monde vulnérable à un seul hit : c'est un compromis, pas une règle (SITUATIONAL). L'audit [2] signale déjà « soignez vite contre Plague » comme une règle absolue à corriger (ch7 du seed).
- **Add-ons qui changent la décision** : non vérifiables (Iridescent Seal, Worship Tablet, Black Incense, Limestone Seal).
- **Implications de carte** : non évaluées.
- **Perks fréquentes** : non vérifiables. Teachables : Corrupt Intervention, Infectious Fright, Dark Devotion.
- **Écart avec le seed** : IMPRÉCIS (« soignez vite contre Plague », ch7, déjà relevé par [2]) · NON VÉRIFIABLE (portée ~13 m, 40 s d'infection, 60 s de Corrupt Purge, Iridescent Seal).
- **Sources** : [1] [2].

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| L4G2-01 | Huntress : « 7 hachettes » faux ; 5 de base | [2] (7 = erreur) + mémoire modèle (5) | — | « 7 » FAUX : audit ; « 5 » : UNCERTAIN-MM (corrigé P14, était STRONG_SECONDARY) |
| L4G2-02 | Huntress : 4,4 m/s, TR 20 m, berceuse | mémoire modèle | — | UNCERTAIN-MM |
| L4G2-03 | Cannibal : buff au 9.6.0 | [2] | 9.6.0 | VERIFIED dans l'audit |
| L4G2-04 | Casse de palette à la tronçonneuse ≈ 1 s | [2] (wiki.gg Pallets) | — | STRONG_SECONDARY |
| L4G2-05 | Nightmare : rework au 8.5.0 (28/01/2025) | [2] | 8.5.0 | VERIFIED dans l'audit |
| L4G2-06 | Pig : buffs au 9.1.0 | [2] | 9.1.0 | VERIFIED dans l'audit |
| L4G2-07 | Pig : TR 32 m (seed : 24 m) | mémoire modèle | — | UNCERTAIN-MM (CONFLICT) |
| L4G2-08 | Pig : sortir avec un piège actif = mort | mémoire modèle | — | UNCERTAIN-MM |
| L4G2-09 | Clown : buffs au 9.1.0 | [2] | 9.1.0 | VERIFIED dans l'audit |
| L4G2-10 | Coulrophobia 20/25/30 % | [2] | 10.1.0 | VERIFIED dans l'audit |
| L4G2-11 | Pop Goes the Weasel 20 % au total | [2] | 9.5.0 | VERIFIED dans l'audit |
| L4G2-12 | Spirit : 4,4 m/s, TR 24 m | mémoire modèle | — | UNCERTAIN-MM |
| L4G2-13 | Legion : désactivé puis réactivé au 9.6.0 | [1] seulement | 9.6.0 | UNCERTAIN (absent de [2]) |
| L4G2-14 | Protections d'unhook : Endurance + 10 % Haste 10 s + Elusive 10 s | [2] | 10.1.0 | VERIFIED dans l'audit |

## Conflits

#### CONFLICT-L4G2-01 : Huntress « plus haut kill rate global » vs « pick le plus large »
- Source A : seed [1] : « Plus haut kill rate global dans les stats officielles BHVR 2026 ».
- Source B : audit [2] : pick Huntress (broad) ; kill rate le plus haut tous MMR = The Lich. La vue d'ensemble du seed dit aussi Lich, Nightmare, Onryō…
- Hypothèse : confusion entre pick rate et kill rate dans la fiche du seed.
- Résolution : B retenue (l'audit cite les données officielles) ; fiche du seed FAUSSE sur ce point.

#### CONFLICT-L4G2-02 : TR de la Pig
- Source A : seed [1] : 24 m.
- Source B : mémoire du modèle : 32 m.
- Hypothèse : erreur du seed, ou changement 9.1.0 non lu.
- Indice (audit P14) : règle d'origine « 32 m pour les tueurs à 4,6 m/s » (wiki.gg Terror Radius, SS, avec exceptions) → penche vers 32 m sans le prouver.
- Résolution : UNRESOLVED (aucune vérification possible cette session).

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Huntress, nombre de hachettes | 7 | 7 relevé comme erreur ([2]) ; 5 = mémoire du modèle, UNCERTAIN | FAUX (valeur de remplacement non vérifiée) |
| Huntress, kill rate | plus haut kill rate global BHVR 2026 | pick le plus large ; kill rate top = Lich ([2]) | FAUX |
| Huntress, valeurs de hachette | 25-40 m/s, hitbox 0,4 m, recharge 2 s | — | NON VÉRIFIABLE |
| Cannibal, buff 9.6.0 | oui | oui ([2]) | OK |
| Cannibal, 5,45 m/s | buff du 9.6.0 | contenu non lu | NON VÉRIFIABLE |
| Knock Out | ralentit après une palette ; valeurs PTB 10.2 (hypothèse du lot) | signalé comme erreur par [2] ; effet principal (aura à 32/24/16 m) omis | IMPRÉCIS / à vérifier (lot perks tueur) |
| Nightmare, valeurs du pouvoir | Snares 12 %, TP 30 s, CD réveil 45 s | rework 8.5.0 non lu | NON VÉRIFIABLE |
| Nightmare, Z-Block | « selon version » | — | IMPRÉCIS (versions mélangées) |
| Pig, TR | 24 m | 32 m (mémoire modèle) | CONFLICT (UNRESOLVED) |
| Pig, buff 9.1 | oui | oui ([2]) | OK |
| Clown, patchs 9.1 et 9.2 | valeurs 9.1 et 9.2 | seul 9.1.0 documenté ([2]) | IMPRÉCIS |
| Coulrophobia | 20-30 % depuis 10.1 | 20/25/30 % ([2]) | OK |
| Pop Goes the Weasel | 20 % au total | 20 % au total au 9.5.0 ([2]) | OK |
| Spirit, phasing passif | existe | suppression probable (mémoire modèle) | IMPRÉCIS / UNCERTAIN |
| Legion, 5e Feral Slash à terre | oui | probablement obsolète (mémoire modèle) | IMPRÉCIS / UNCERTAIN |
| Legion, désactivé puis réactivé au 9.6.0 | oui | absent de [2] | NON VÉRIFIABLE |
| Plague, « soignez vite » (ch7) | règle absolue | relevé par [2] | IMPRÉCIS |

## Questions ouvertes

À relancer avec WebSearch dès que le budget est rétabli :
1. Huntress : vitesse de hachette, capacité exacte des add-ons, portée de la berceuse, changements 2025-2026 éventuels.
2. Cannibal : contenu exact du buff 9.6.0 (vitesse de sweep, charges).
3. Nightmare : contenu complet du rework 8.5.0 (réveils, snares, pallets, TP, add-ons).
4. Pig : TR (24 ou 32 m), contenu du buff 9.1.0 (vitesse accroupie, dash), nombre de Jigsaw Boxes, comportement des pièges après alimentation des portes, efficacité de Spine Chill contre Undetectable.
5. Clown : contenu du buff 9.1.0 ; blocage des fast vaults sous intoxication.
6. Spirit : phasing passif, son directionnel, effet actuel de Prayer Beads Bracelet, cooldown.
7. Legion : Frenzy peut-il mettre à terre ? désactivation au 9.6.0 ?
8. Plague : un stun met-il fin à Corrupt Purge ? effet d'Iridescent Seal.
9. Pour tous : perks fréquentes (NightLight inaccessible) et impact des Diminishing Returns 9.6.0 sur les pouvoirs Hindered et Haste.

## Sources

[1] Guide seed, chapitre 8 — `/home/user/dbd_guide/kb/seed/ch8_killers.txt` (l. 1-256 et 547-844) — lu le 27/09/2026 (fichier local, non fiable).
[2] Audit phase 0 — `/home/user/dbd_guide/kb/seed/audit_phase0.txt` — lu le 27/09/2026 (historique des patchs 9.0.0 → 10.1.2a, erreurs relevées).

Aucune source web : budget WebSearch épuisé (200/200) au moment du lot. Toute information marquée UNCERTAIN-MM vient de la mémoire du modèle.
