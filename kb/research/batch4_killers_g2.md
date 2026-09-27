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
- **Version** : **buffs au 9.1.0 (29/07/2025)**, VERIFIED dans [2] ; valeurs non lues. Statut LIVE.
- **Données LIVE** (UNCERTAIN-MM) :
  - Vitesse 4,6 m/s. **TR 32 m** selon la mémoire du modèle, le seed dit 24 m : voir CONFLICT-L4G2-02. Taille moyenne. **Undetectable accroupie** (FACT de principe [UNCERTAIN-MM] ; Undetectable = pas de TR ni de red stain, FACT [AUDIT]) ; vitesse accroupie (seed 4,0 m/s, buff 9.1) non vérifiée.
  - Ambush Dash : charge audible (**rugissement**), puis ruée courte.
  - **4 Reverse Bear Traps** (UNCERTAIN-MM, « confiance forte » subjective), posés sur un survivant à terre. Ils s'activent à la complétion d'un générateur. Compte à rebours (seed 150 s) en pause en chase. Pour les retirer : fouiller les **Jigsaw Boxes** (nombre non vérifié). **Un survivant qui franchit la porte de sortie avec un piège actif meurt** (FACT de principe [UNCERTAIN-MM], cohérent avec la ligne L4G2-08 des Claims ; le conseil « ne pas sortir piégé » reste prudent quelle que soit la vérification). Comportement une fois les gens terminés (pose et activation) : non vérifié.
- **Identification** :
  - Avant le reveal : **Jigsaw Boxes visibles sur la carte** (probable dès le début, UNCERTAIN-MM) ; TR absent puis présent de façon intermittente (accroupissements) ; rugissement de dash.
  - Pouvoir en action : piège sur la tête, minuteur, rugissement.
  - Stratégie probable : poser les pièges tôt pour retirer des survivants des gens, embuscades accroupie près des gens (HEURISTIC).
- **Ce qu'il cherche en chase** : dash à courte portée sur des tiles courtes ; accroupissement près d'une fenêtre ou d'un coin pour cacher sa red stain et son TR (HEURISTIC).
- **Tiles / structures** : le dash est prévisible (rugissement, charge) ; les murs et coins cassent la trajectoire. Les tiles moyennes et longues rendent le dash peu rentable (HEURISTIC).
- **Mindgames propres** : accroupissement près d'une boucle (TR et red stain disparaissent) ; faux départ de dash (HEURISTIC).
- **Counterplay** :
  - Mécanique : au rugissement, contourner un coin ou vaulter au bon moment (HEURISTIC).
  - Macro, pièges : piège actif → aller directement vers les boîtes les plus proches, en annonçant celles déjà fouillées ; piège inactif → continuer à réparer, mais **décider en équipe** du moment où l'on termine un gen quand plusieurs survivants sont piégés (HEURISTIC, pas de règle absolue : 1 piégé près des boîtes ≠ 3 piégés).
  - Stealth : vérifier les angles morts près des gens, surtout après un reset de TR (HEURISTIC). Efficacité de Spine Chill contre Undetectable : **UNCERTAIN** (non vérifiée ; Spine Chill reworkée au PTB 10.2.0, non LIVE).
  - Fin de partie : ne jamais sortir avec un piège actif (mécanique : FACT de principe [UNCERTAIN-MM] ; le conseil est prudent dans tous les cas).
- **Habitudes punissables** : quitter la chase pour chercher les boîtes au mauvais moment ; plusieurs piégés qui terminent un gen en même temps ; ignorer l'absence de TR près d'un gen.
- **Adaptations avancées** : si un add-on modifie les boîtes ou les minuteries (Rules Set No.2, Crate of Gears, Amanda's Letter : effets non vérifiés), adapter le rythme de complétion des gens (SITUATIONAL).
- **Add-ons qui changent la décision** : non vérifiables cette session.
- **Implications de carte** : grandes cartes = boîtes éloignées, donc plus de temps de recherche (HEURISTIC).
- **Perks fréquentes** : non vérifiables. Teachables : Make Your Choice, Scourge Hook: Hangman's Trick, Surveillance.
- **Écart avec le seed** : CONFLICT (TR 24 m contre 32 m selon la mémoire du modèle) · NON VÉRIFIABLE (valeurs du dash, 5 boîtes, 12 s de fouille, 0,8 s d'accroupissement, Spine Chill contre sa furtivité) · OK (buffs au 9.1, [2]).
- **Sources** : [1] [2].

## 12. The Clown (Kenneth Chase) — archétype(s) : anti-loop (Hindered) | mobilité (Haste)
- **Version** : **buffs au 9.1.0 (29/07/2025)**, VERIFIED dans [2] ; valeurs non lues. Statut LIVE.
- **Données LIVE** (UNCERTAIN-MM) : 4,6 m/s ; TR 32 m ; grande taille. Afterpiece Tonic (gaz rose) : Intoxicated (vision troublée, toux, Hindered) ; Antidote (gaz jaune) : Haste **pour lui ET pour les survivants** (FACT de principe [UNCERTAIN-MM]). Interaction P14 (HYPOTHESIS) : depuis 9.6.0, deux Haste identiques issues de pouvoirs/perks se réduisent (DR, [2]) ; la Haste de l'Antidote cumulée à une Haste de perk (Sprint Burst…) serait donc atténuée — catégories exactes dans le manuel 9.6.1, non consulté. Recharge des bouteilles : fenêtre de répit. Valeurs du seed (14 %, 12 %, 6 s, 1,6 s, 6 bouteilles) : non vérifiées. Blocage des fast vaults sous intoxication : **UNCERTAIN**.
- **Identification** : bruit de bouteilles et de verre ; nuages rose ou jaune ; toux des survivants intoxiqués ; recharge audible (HEURISTIC).
- **Ce qu'il cherche en chase** : lancer du gaz sur la fenêtre ou la palette visée ; longue ligne droite en Antidote (HEURISTIC).
- **Tiles / structures** : les obstacles hauts bloquent les bouteilles ; les tiles avec plusieurs sorties permettent de contourner le gaz rose (HEURISTIC).
- **Mindgames propres** : gaz lancé pour couper une route, puis attaque sur l'autre sortie ; Antidote pour rattraper en fin de boucle (HEURISTIC).
- **Counterplay** :
  - Mécanique : contourner le gaz rose, ou le traverser au plus court ; **utiliser son gaz jaune** (mécanique : FACT de principe [UNCERTAIN-MM]) ; gagner de la distance pendant qu'il recharge (HEURISTIC).
  - Positionnel : éviter les longues lignes droites ouvertes.
  - Macro : cibler les tiles à obstacles hauts.
- **Habitudes punissables** : courir dans un nuage rose ; tenir une boucle en ligne droite ; rester groupés dans le gaz.
- **Adaptations avancées** : si Diminishing Returns 9.6.0 atténue le cumul de Hindered pouvoir + perk (HYPOTHESIS, [2]), les perks Hindered le rendent moins fort qu'avant 9.6.0 : à vérifier.
- **Add-ons qui changent la décision** : non vérifiables (Redhead's Pinkie Finger, Starling Feather, etc.).
- **Implications de carte** : cartes ouvertes favorables à l'Antidote (HEURISTIC).
- **Perks fréquentes** : non vérifiables. Teachables : Bamboozle, Coulrophobia (**20/25/30 % au 10.1.0**, VERIFIED dans [2]), Pop Goes the Weasel (+15 % de régression → **20 % au total** au 9.5.0 selon [2]).
- **Écart avec le seed** : OK (Coulrophobia 20-30 % depuis le 10.1, [2]) · OK (Pop 20 % au total, [2]) · IMPRÉCIS (« Ces valeurs viennent des patchs 9.1 et 9.2 » : [2] ne documente pas de changement Clown au 9.2) · NON VÉRIFIABLE (valeurs chiffrées, blocage des fast vaults).
- **Sources** : [1] [2].

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
