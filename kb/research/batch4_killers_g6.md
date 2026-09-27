# Lot 4 — Fiches tueur vues du survivant, groupe 6 (tueurs 38 à 44)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) — voir kb/audit/pass14_lot4_g4-g6.md — RE-VÉRIFIÉ lot 12b (27/09/2026) sur pages wiki complètes + notes officielles BHVR**
>
> Rappels de l'audit : toutes les consignes sont des **HEURISTIC** (option par défaut, à varier contre un tueur qui l'anticipe) ; l'étiquette EXPERT OPINION non sourcée a été **requalifiée** (HEURISTIC, ou [SEED] UNCERTAIN quand l'idée vient du seed) ; Krasue, The First, The Slasher et The Judgment ont été recoupés avec le registre de patchs de l'audit (9.2.0 → 10.1.2a) ; les lignes « Équipe » supposant des rôles demandent le vocal (SWF).

Couverture : 7/7 tueurs re-vérifiés sur page wiki complète (27/09/2026), dont 31 points confirmés par note officielle (lot 12b ; voir `## Claims`, lignes VERIFIED_PRIMARY / VERIFIED_MULTI_SOURCE).

- Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 (15-21/09/2026) **non LIVE**, jamais utilisé ici comme valeur LIVE. Mode 2v8 exclu. Les notes PTB 10.2.0 (KB 559) ne modifient le pouvoir d'aucun des 7 tueurs (seulement des perks, dont Ravenous, et des correctifs de collision du chien de la Houndmaster) ; les pages wiki de l'Animatronic (Help Wanted) et de la Krasue (Ravenous) affichent déjà la description PTB 10.2.0 : **non utilisée**.
- Périmètre : Houndmaster, Ghoul, Animatronic, Krasue, First, Slasher, Judgment (seed `kb/seed/ch8_killers.txt` l. 1664-1953).
- **Méthode (lot 12b, re-vérification du 27/09/2026)** : sources lues **en local** :
  1. **pages wiki.gg complètes** de chaque tueur (`kb/sources/wiki_killers/<Nom>.txt` : infobox vitesse / TR / taille, description du pouvoir, « Power Trivia » chiffrée, add-ons, Change Log) → STRONG_SECONDARY ;
  2. **notes de patch officielles BHVR** (`kb/sources/patches/official_*.txt`, forums.bhvr.com KB) → VERIFIED_PRIMARY quand la note donne la valeur, VERIFIED_MULTI_SOURCE quand wiki et note concordent ;
  3. **audit phase 0** (`kb/seed/audit_phase0.txt`) pour les rappels système ;
  4. **seed** : ce qui reste non confirmé par le wiki ou les notes est encore noté « seed-NRV » (UNCERTAIN) ; la **connaissance du modèle** (CM) n'est plus utilisée comme source de valeur.
  - Version précédente (sans web, quota WebSearch épuisé) : les valeurs venaient de l'audit, du seed et de la CM ; elles ont toutes été confrontées aux pages ci-dessus.
- Le cœur de la valeur de ce fichier est l'**analyse survivant** (identification, counterplay par couche, erreurs, adaptations). Elle est étiquetée **HEURISTIC** (raisonnement à partir de la mécanique). La version initiale employait aussi **EXPERT OPINION** pour un « consensus communautaire tel que le modèle le connaît » : ce n'est pas le sens de §41 (conclusion d'un joueur expert identifiable), et aucun guide expert n'a été lu → ces passages sont **requalifiés en HEURISTIC** (audit pass 14), ou en **[SEED] UNCERTAIN** quand l'idée vient du guide seed, qui n'est pas une source experte.
- Étiquettes : FACT (mécanique vérifiée par l'audit) / HEURISTIC / SITUATIONAL / HYPOTHESIS. Une valeur [AUDIT] STRONG_SECONDARY « à reconfirmer » est **probable**, pas un FACT ferme. Les tiers et les notes de menace sont **HEURISTIC**.
- Abréviations : TR = terror radius ; LOS = ligne de vue ; « seed-NRV » = seed, non confirmé par la page wiki ni par les notes officielles, UNCERTAIN ; « CM » = connaissance du modèle (antérieure à mi-2026), UNCERTAIN ; **[WIKI]** = page wiki.gg complète du tueur (STRONG_SECONDARY) ; **[KB nnn]** = note officielle BHVR https://forums.bhvr.com/dead-by-daylight/kb/articles/nnn (VERIFIED_PRIMARY).

### Rappels système utiles pour ce groupe (audit phase 0)

- Protections de décrochage LIVE 10.1.0 : Endurance + 10 % Haste pendant 10 s + Elusive 10 s (audit phase 0, patch 10.1.0, VERIFIED_PRIMARY via notes). L'exception « ne s'applique pas une fois les générateurs alimentés » suit l'Elusive dans le texte de l'audit : ambigu (Elusive seul, ou toutes les protections ?) → ne pas compter sur l'Elusive en endgame ; pour le reste, UNCERTAIN.
- Anti-facecamp : zone 16 m, grâce 7 s, multiplicateurs 1× / 2× / 4× (audit phase 0, 9.3.0, VERIFIED_PRIMARY).
- Diminishing Returns (9.6.0) : les modificateurs identiques issus de **Powers**, Items, Perks et Offerings se réduisent (100 / 50 / 25 / 12,5 / 5 %). Les add-ons ne sont pas concernés (audit phase 0, VERIFIED_MULTI_SOURCE). Ça touche la Haste de pouvoir (Slasher) cumulée avec des perks de Haste (HYPOTHESIS sur l'interaction exacte, liste des modificateurs non consultée par l'audit).
- Bloodlust : la Head Form de la Krasue en est exclue depuis la 9.2.0 (audit phase 0, VERIFIED_PRIMARY).

---

## 38. The Houndmaster (Portia Maye) — archétype(s) : anti-loop | ranged (chien) | info

- **Version** : chapitre « Doomed Course », sorti le 28/11/2024 [WIKI]. Derniers changements d'équilibrage [WIKI, Change Log] : 8.4.1 / 8.4.2 (cooldown de Chase Command 5 → 4 → **3 s**, Hindered du survivant attrapé 3 → 10 %, hitbox du chien 0,5 → 0,65 m), 8.5.1 (portes bloquées 1,5 s après la prise au lieu de 5 s), 8.7.0 (vault du chien en chase 0,45 → 0,65 s). **Aucun changement d'équilibrage de 9.0.0 à 10.1.2a** : les notes officielles lues (KB 510 → 558) ne contiennent pour elle que des correctifs (collisions, caméra, framerate). Le « buff 8.4.2 (cooldown 3 s) » du seed est **confirmé** [WIKI]. Statut LIVE.
- **Données LIVE** ([WIKI], STRONG_SECONDARY sauf mention) :
  - Vitesse 4,6 m/s (115 %) ; **6 m/s** (« Slipstream ») en marchant sur le chemin d'une Search Command ; 3,68 m/s pendant qu'elle vise la Chase Command. TR 32 m. Berceuse du chien en Search Command : 32 m. Taille moyenne.
  - Pouvoir « Scent of Blood », chien Snug :
    - **Chase Command** : Portia trace un chemin, puis envoie le chien à haute vitesse (35 m/s en « dash ») ; elle peut le **rediriger** une fois lancé. Le chien contourne seulement les petits obstacles (écart max 2 m à la ligne droite) ; hitbox 0,65 m. Cooldown 3 s (1 s si elle annule).
    - **Le chien vaulte les fenêtres et les palettes tombées en chase (0,65 s)** : [WIKI] + correctifs officiels « the Dog was unable to Jump Pallets at sharp angles » [KB 550, 10.0.0] et « the Dog can't vault over a window » (Toba Landing) [KB 552, 10.0.2] → VERIFIED_MULTI_SOURCE. **Si le chien percute un survivant en train de vaulter, celui-ci est blessé.**
    - **Prise (Dog Grab)** : Incapacitated, Hindered −10 %, traction vers Portia par cycles de 3 s, **8 s max** (**2 s** avec Endurance) ; portes de sortie bloquées pour lui pendant la prise + 1,5 s ; aura révélée à Portia. Libération plus tôt : **faire tomber une palette sur le chien** (stun 3 s ; Killer Instinct 5 s pour Portia) — les palettes debout à ≤ 16 m sont révélées au survivant tiré, qui peut orienter la traction vers elles — ou **un allié qui interagit avec le chien (0,65 s)** ; les survivants à ≤ 20 m voient l'aura du survivant attrapé. Libéré sans blessure → encore Hindered −10 % pendant 5 s.
    - **Search Command** : balise posée entre 5 et 40 m (ou sur n'importe quel objet visé, sans limite de portée). Le chien patrouille avec sa berceuse de 32 m ; un survivant qui entre dans son rayon (2,5 m, puis jusqu'à 5 m) déclenche Killer Instinct et reçoit **Houndsense** (effet côté tueur : 45 s). Cooldown 0,5 s.
    - **Houndsense** : un survivant sain prendra **Deep Wound** au moment où il sera blessé ; un survivant blessé aura des cris de douleur plus forts et des flaques de sang plus durables.
- **Identification** (HEURISTIC) :
  - *Avant le reveal* : 4,6 m/s, TR 32 m standard. Une **berceuse éloignée du TR** ou un **Killer Instinct sans tueur visible** signale une Search Command.
  - *Pouvoir en action* : aboiements, chien qui fonce en ligne droite devant Portia, ou chien seul qui patrouille.
  - *Add-ons observables* [WIKI] : chien nettement plus rapide juste après un gen terminé ou en endgame (Leather Harness) ; berceuse de chien + Killer Instinct sans TR (Iridescent Wheel Handle : Undetectable pendant la recherche) ; TR qui grossit de 8 m quand le chien la suit et rétrécit de 8 m quand il est loin (Ship Figurehead).
  - *Stratégie probable* : Houndsense + Deep Wound pousse à l'usure et au slug léger. Le « traîner vers soi » facilite le tunnel du survivant qu'on vient de décrocher en terrain ouvert (HEURISTIC).
- **Ce qu'il cherche en chase** (HEURISTIC) : une **ligne droite** entre le chien et vous (sorties de tile, couloirs, open, longs murs sans ouverture). Le chien remplace une hachette à portée moyenne, et la prise ramène la cible pour une attaque de base garantie. Une fenêtre ou une palette tombée **n'arrête pas** le chien : elle lui coûte un vault de 0,65 s sur un chemin tracé d'avance.
- **Tiles / structures** (HEURISTIC, corrigé lot 12b) :
  - *Favorables* : tiles avec **beaucoup d'angles courts** (jungle gym, shack) où toute ligne droite est vite coupée par un **mur plein** (le chien ne contourne que les petits obstacles, 2 m d'écart max [WIKI]). Des **palettes debout** à proximité : elles servent à se libérer d'une prise (palette sur le chien).
  - *Défavorables* : longues lignes (murs L sans fenêtre, bords de map, maïs ouvert) et tiles où l'on court en ligne droite avant de tourner.
  - *Fenêtres vs palettes* : **correction** — la version précédente affirmait que le chien ne franchit pas les fenêtres et qu'une palette posée le bloque durablement (CM + seed) : **FAUX**, il vaulte les deux (voir Données LIVE), et vaulter au moment où il arrive vous blesse. Une palette **debout** garde sa valeur : la faire tomber **sur le chien** le stun 3 s.
  - *Verticalité* : peu d'impact direct. All-Shaking Thunder (sa perk : portée de lunge +75 % pendant 15/20/25 s après une chute [WIKI]) récompense les sauts de hauteur (SITUATIONAL).
- **Mindgames propres** (HEURISTIC) : envoyer le chien d'un côté d'une boucle pendant que Portia prend l'autre ; garder la commande pour votre sortie de tile ; feinter le lancer (annuler ne coûte qu'1 s de cooldown [WIKI]) ; rediriger le chien en pleine course.
- **Counterplay** :
  - *Mécanique* : quand le chien est lancé, **décalez-vous latéralement tard** derrière un obstacle **plein**. Le chemin est tracé d'avance, mais Portia peut le rediriger une fois : gardez un 2e décalage en réserve (HEURISTIC). **Ne vaultez pas au moment où le chien arrive** (collision = blessure [WIKI]). Si vous êtes pris : tirez vers une palette debout (auras à 16 m) et faites-la tomber sur le chien ; avec Endurance, la traîne ne dure que 2 s [WIKI].
  - *Positionnel* : restez « collé » aux structures et ne traversez de l'open qu'à distance de chasse suffisante (HEURISTIC).
  - *Macro* : réparez loin de sa route de patrouille. Berceuse de chien + Killer Instinct sur vous = vous êtes repéré et sous Houndsense : en général, quittez le gen plutôt que de le finir. Exception chiffrée : 5 % = 4,5 s solo, ≈ 2,65 s à deux [calcul, AUDIT 90 charges / coop 85 %] — si Portia n'est ni en vue ni dans le TR, finir ces 5 % coûte souvent moins que revenir plus tard. Soignez tôt : Houndsense transforme la prochaine blessure en Deep Wound (HEURISTIC).
  - *Équipe* : un allié à ≤ 20 m voit l'aura du survivant attrapé et le libère en **0,65 s** en interagissant avec le chien [WIKI] : si Portia est encore loin, allez-y ; si elle arrive, restez en retrait. Ne décrochez pas en terrain ouvert quand Portia est à moyenne distance (HEURISTIC).
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : le « hold W » en ligne droite ; quitter un tile vers l'open trop tôt ; vaulter une fenêtre « pour semer le chien » ; ignorer le Killer Instinct de la patrouille ; croire que l'Endurance suffit (elle raccourcit la traîne à 2 s, elle ne l'annule pas [WIKI]).
- **Adaptations avancées** (HEURISTIC / SITUATIONAL) :
  - Contre un Portia qui garde le chien « en réserve », jouez le tile le plus longtemps possible et forcez-le à le lancer sur une trajectoire courte.
  - Sur les maps très ouvertes, prévoyez la prochaine structure avant de quitter la vôtre (pre-running) pour offrir le moins de ligne droite possible (la longueur maximale du chemin de chase n'est pas publiée sur la page).
  - Le counterplay habituel des tueurs M1 (« courir loin pour étirer la chase ») **échoue** : la distance en open est précisément sa portée idéale.
- **Add-ons qui changent la décision** ([WIKI], LIVE) :
  - Leather Harness (chien +20 % en chase pendant 30 s après **chaque gen terminé**, **en permanence** une fois tous les gens faits) → juste après un gen et en endgame, le survivant se décale **plus tôt** au lieu de compter sur un dodge tardif en open.
  - Marlinspike (Houndsense sur tous les survivants à ≤ 20 m du chien quand il attrape quelqu'un, sauf l'attrapé) → le sauveteur qui vient libérer (0,65 s) décide en sachant qu'il prendra Houndsense (Deep Wound au prochain coup s'il est sain), au lieu de rester « en soutien » à 15 m par réflexe.
  - Iridescent Wheel Handle (Undetectable pendant que le chien exécute la Search Command ; +20 % de temps d'attente du chien à la balise) → le survivant ne lit plus la berceuse du chien comme « Portia est loin » : il surveille le Killer Instinct et les corbeaux.
  - Spiked Collar (survivant blessé alors que le chien le tient : Haemorrhage + Mangled 60 s) → après une prise, le survivant s'éloigne et finit la chase avant de soigner, au lieu de soigner sur place (soin plus lent).
- **Implications de carte** (HEURISTIC) : fort sur les maps ouvertes aux longues lignes (Coldwind, Red Forest selon la génération). Plus faible sur les maps intérieures denses en angles, avec un bémol sur les longs couloirs (Hawkins, RPD, Gideon).
- **Perks fréquentes à anticiper** (seed-NRV + HEURISTIC) : Pain Resonance, Surge, Dead Man's Switch, Barbecue & Chili, All-Shaking Thunder. Ses perks [WIKI] : All-Shaking Thunder, No Quarter (auto-soin à 75 % → skill checks en continu ; raté ou interruption = Broken 20/25/30 s), Scourge Hook: Jagged Compass. → Contre Dead Man's Switch **suspecté** : après un crochet, faire le premier lâcher sur un gen **peu avancé**, ou reprendre sans stop-and-go (cohérent avec `PERK_DEDUCTION.md`). Contre No Quarter **confirmé** : ne lancez un auto-soin que si vous pouvez le finir sans interruption. Évitez de rester groupés sur un gen (HEURISTIC).
- **Écart avec le seed** : cooldown 3 s (buff 8.4.2), traîne 8 s / 2 s avec Endurance, Hindered 10 %, 4,6 / 6 m/s, TR 32 m, berceuse 32 m, Deep Wound par Houndsense : **OK** [WIKI]. « Un survivant traîné contre une palette se libère » : **IMPRÉCIS** (il faut **faire tomber** la palette sur le chien ; un allié peut aussi le libérer en 0,65 s). Leather Harness « chien +20 % » : **IMPRÉCIS** (seulement 30 s après un gen, permanent en endgame). Iridescent Wheel Handle et Marlinspike : **OK**. Orientation du seed lacunaire côté survivant. Erreur de la **version précédente de cette fiche** (CM, pas le seed) : « le chien ne vaulte pas les fenêtres / une palette posée le bloque » → **FAUX**, corrigé.
- **Sources** : [4] (Portia_Maye ; Scent_of_Blood), [5] (KB 550, KB 552 ; absence de changement d'équilibrage vérifiée dans KB 510 → 558), [2].

---

## 39. The Ghoul (Ken Kaneki) — archétype(s) : mobilité | anti-loop | M1 (après marquage)

- **Version** : DLC Tokyo Ghoul, sorti le 02/04/2025 [WIKI]. Changements [WIKI, Change Log] : 8.6.2 (portée max 16 → **14 m**, Countdown 45 → 40 s, bonus de grab parfait 15 → 10 s, casser une palette = cooldown d'un token), 8.7.0 / 8.7.1 (en Enragé, casser une palette coûte 2 tokens). **9.2.0** : un survivant attrapé de l'autre côté d'un vault est relâché **au début** du vault du Ghoul, et non plus à la fin [KB 523 ; annonce KB 521] → VERIFIED_MULTI_SOURCE. **9.5.0** : « stickiness » du réticule sur survivant 0,18 → 0,05 s, et **plus aucun coup automatique après un Leap Vault** [KB 538 ; WIKI] → VERIFIED_MULTI_SOURCE. Le « nerf 8.6.2 (14 m) » et l'« ajustement de magnétisme 9.5.0 » du seed sont **confirmés**. L'audit liste le Ghoul comme « pick (high) » dans les statistiques BHVR KB 540 (noms seulement, sans chiffres). Statut LIVE.
- **Données LIVE** ([WIKI], STRONG_SECONDARY sauf mention) :
  - 4,6 m/s ; **TR 40 m** ; taille moyenne. (CONFLICT-B4G6-03 résolu : 40 m, le seed avait raison contre la CM.)
  - Pouvoir « One-Eyed Terror » :
    - **Kagune Leap** : **2 tokens** hors Enragé. Viser une surface verticale ou un survivant à ≤ 14 m (minimum 2 m sur survivant, 5 m sur décor ; charge 0,35 s). Après un bond, fenêtre de 5 s pour enchaîner le suivant. Un bond franchit **fenêtres et palettes tombées** (Leap Vault, 1,5 s). Le **cooldown** se déclenche au dernier token, à la fin de la fenêtre de 5 s, **après un vault** ou après une prise ; recharge 4 s par token, et le pouvoir ne revient **qu'une fois tous les tokens rechargés** (≈ 8 s hors Enragé). Casser une palette hors cooldown force un cooldown d'1 token (2 en Enragé).
    - **Cible survivant** : le **1er bond** qui atteint un survivant **ne blesse pas** (réticule « bouche fermée ») ; c'est le **bond suivant** (« bouche ouverte ») qui déclenche le **Grab-Attack** (portée de saisie 3,5 m) : blessure si sain, **Deep Wound**, **Kagune Mark**, portes de sortie bloquées pendant la prise + 5 s. QTE optionnelle (grab parfait). Un survivant **marqué** ne peut plus être blessé par un Grab-Attack (il en subit les autres effets).
    - **Kagune Mark** : retirée quand le survivant **termine de mend** (Deep Wound) ou passe au sol.
    - **Enraged Mode** (après un Grab-Attack) : **3 tokens**, recharge 2,5 s par token (≈ 7,5 s pour tout recharger), vault plus rapide (×0,667, ≈ 1 s) quand il vise un survivant situé de l'autre côté, casse de palette = 2 tokens. Actif tant qu'au moins un survivant est marqué, puis **Countdown 40 s** (50 s après un grab parfait) quand la dernière marque disparaît.
  - Destruction instantanée de palette : **uniquement avec Iridescent Eye Patch** (3e bond enchaîné en Enragé qui vaulte une palette tombée) [WIKI ; description mise à jour en 9.5.0, KB 538] → confirme l'audit (wiki.gg Pallets).
- **Identification** (HEURISTIC) :
  - *Avant le reveal* : 4,6 m/s ; **TR large (40 m)** : on l'entend de loin. L'arrivée est rapide et bruyante (bonds). Un tueur « tiré » vers un mur ou un toit = Ghoul.
  - *Pouvoir en action* : trajectoires en arc vers des surfaces ; **un bond qui vous atteint sans vous blesser annonce le Grab-Attack au bond suivant**.
  - *Add-ons* [WIKI] : palette tombée détruite au 3e bond (Iridescent Eye Patch) ; fenêtre bloquée 10 s après son vault en Enragé (Red-Headed Centipede) ; Oblivious tant que vous êtes marqué (Hide's Headphones).
  - *Stratégie probable* : snowball en début de partie (un grab par chase), puis pression par blessures multiples ; tunnel facilité par sa mobilité (HEURISTIC).
- **Ce qu'il cherche en chase** (HEURISTIC) : une LOS sur vous à ≤ 14 m hors d'un tile, pour enchaîner **deux bonds** (rapprochement puis grab) dans la fenêtre de 5 s. Contre un survivant déjà marqué, il redevient un M1 à 4,6 m/s, avec des bonds de mobilité et des vaults accélérés.
- **Tiles / structures** (HEURISTIC) :
  - *Favorables* : tiles hauts et fermés (murs pleins, shacks) qui coupent la LOS ; zones à plafond bas où les bonds sur surfaces sont maladroits (non sourcé ; en tension avec « un étage lui profite » ci-dessous).
  - *Défavorables* : l'open, les tiles bas (rochers, petites palettes), les fenêtres isolées (il les franchit au bond).
  - *Palettes* : une palette posée ne gagne pas une boucle contre lui, mais elle **coûte son pouvoir** : s'il la franchit au bond, le vault déclenche le cooldown (≈ 8 s, ≈ 7,5 s en Enragé) ; s'il la casse, cooldown forcé d'1 token (2 en Enragé) [WIKI]. Posez-la tard, pour le stun ou pour vider ses tokens (HEURISTIC).
  - *Verticalité* : un étage lui profite (bonds jusqu'à 8 m de dénivelé [WIKI]). Un toit n'est pas un refuge.
- **Mindgames propres** (HEURISTIC) : viser une surface derrière vous plutôt que vous-même pour couper le tile ; garder un token pour la sortie de palette ; feinter le bond.
- **Counterplay** :
  - *Mécanique* : **cassez la LOS au moment où il vise**. Si un 1er bond vous atteint sans vous blesser, **coupez immédiatement la ligne** (obstacle, angle) : le Grab-Attack vient du bond suivant, dans les 5 s. Esquive latérale tardive : la visée sur survivant est très peu magnétique depuis 9.5.0 (0,05 s) [KB 538]. Depuis 9.5.0, plus de coup automatique en re-vaultant vers lui après son Leap Vault [KB 538]. Après la marque, jouez-le comme un M1 et **videz ses tokens**, puis exploitez son cooldown (HEURISTIC).
  - *Positionnel* : ne réparez pas en open visible de loin et gardez un tile fermé à proximité (« ≤ 10 m » : ordre de grandeur HEURISTIC dérivé de la portée de 14 m [WIKI], pas une distance de sécurité mesurée).
  - *Macro* : sa mobilité rend la pression 3-gen et le « gen kick » mobiles, donc complétez des gens espacés. **Mendez vite** les survivants marqués : c'est le **mend** (Deep Wound) qui retire la Kagune Mark et lance le Countdown de 40 s qui met fin à l'Enragé [WIKI] — pas le soin complet.
  - *Équipe* : il arrive vite sur les décrochages. Décrochez quand il est engagé loin, pas quand il vient de se déplacer au bond (HEURISTIC).
- **Habitudes punissables / erreurs** (HEURISTIC) : traverser l'open « parce que le TR est loin » (TR 40 m, bonds de 14 m en chaîne) ; compter sur une fenêtre isolée ; poser une palette tôt en pensant l'avoir bloqué ; rester sur la même ligne après un 1er bond non blessant.
- **Adaptations avancées** (HEURISTIC) :
  - Le counterplay classique « tenir la boucle de palette » **échoue** tant qu'il a des tokens. Pensez en **fenêtres de recharge** : le pouvoir ne revient qu'après recharge complète, soit ≈ 8 s hors Enragé (2 × 4 s) et ≈ 7,5 s en Enragé (3 × 2,5 s) [calcul, WIKI] — la version précédente donnait 4 s / 2,5 s, qui sont des durées **par token**.
  - Contre un Ghoul qui « garde » les marques pour prolonger l'Enragé, un survivant marqué et en bonne position peut accepter d'étirer la chase plutôt que de chercher un mend risqué (SITUATIONAL).
- **Add-ons qui changent la décision** ([WIKI], LIVE) :
  - Iridescent Eye Patch (3e bond enchaîné en Enragé qui vaulte une palette tombée = palette détruite) → en Enragé, le survivant ne reste pas sur une palette posée : il enchaîne vers le tile suivant au lieu de boucler.
  - Hinami's Umbrella (+10 s de Countdown par grab parfait, soit 60 s) → le survivant marqué mend et se fait soigner plus tôt, au lieu de laisser traîner la marque.
  - Yamori's Mask (accrocher en Enragé fait crier et révèle 3 s les survivants à plus de 40 m) → pendant un crochet en Enragé, le survivant ne s'éloigne pas « par sécurité » à l'autre bout de la map : il reste à ≤ 40 m, derrière un obstacle.
  - Red-Headed Centipede (en Enragé, une fenêtre qu'il vaulte est bloquée 10 s pour les survivants) → après son vault d'une fenêtre, le survivant quitte la boucle au lieu de compter sur le re-vault.
- **Implications de carte** (HEURISTIC) : très fort en open et sur les maps à plusieurs étages. Plus faible sur les maps intérieures denses à murs hauts, même si la verticalité intérieure l'aide.
- **Perks fréquentes** (seed-NRV) : Pain Resonance, Surge, Friends 'til the End, Brutal Strength / Lethal Pursuer. Ses perks [WIKI] : Forever Entwined, Hex: Nothing but Misery (après 4 coups de base : Hindered −5 % et vault −10 % pendant 10-15 s après chaque coup de base), None Are Free (une fois tous les gens faits : fenêtres et palettes debout bloquées 12/14/16 s par token, 1 token par premier crochet, jusqu'à 48/56/64 s). → Anticipez un repérage de début de partie (Lethal Pursuer) et un premier grab rapide. Contre None Are Free, en endgame, allez directement aux portes au lieu de chercher une boucle.
- **Écart avec le seed** : TR 40 m **OK** [WIKI] (la CM avait tort). Portée 14 m (nerf 8.6.2), tokens 2 / 4 s, Enragé 3 / 2,5 s, Countdown 40 s (50 s parfait), casse 2 tokens en Enragé, Deep Wound au grab : **OK** [WIKI]. Magnétisme ajusté en 9.5.0 : **OK** [KB 538]. « Le soin retire la marque » : **IMPRÉCIS** (c'est le **mend**). « Plus de 60 % de kill en MMR élevé selon BHVR » : **IMPRÉCIS / non étayé** (KB 540 : aucun chiffre en texte, Ghoul cité pour le **pick rate**).
- **Sources** : [4] (Ken_Kaneki), [5] (KB 521, 523, 538), [1] (KB 540 via audit), [2].

---

## 40. The Animatronic (William Afton / Springtrap) — archétype(s) : ranged | mobilité (portes) | furtif | info

- **Version** : 9.0.0 « Five Nights at Freddy's », sorti le 17/06/2025 [WIKI ; KB 510] → VERIFIED_MULTI_SOURCE. **9.0.2** (02/07/2025) [KB 512] : nerfs d'add-ons — Security Guard's Badge 50 → 25 %, Streamers 20 → 15 %, Party Hat −50 → −20 %, Bonnie's Guitar Strings −50 → −100 % d'Undetectable, Foxy's Hook 3 → 6 s, Endo CPU 25 → 40 %. **9.6.0** (28/04/2026) [KB 544 ; WIKI] : recharge de la hache 7 → **6 s** (décor) et 10 → **8 s** (survivant) ; batterie −7 → **−6 %/s** par caméra et 15 → **12 %** par téléportation d'un survivant ; Grab Axe sur la touche Power ; Restaurant Menu 20 → 10 %, Access Panel 4 → 6 m. Aucun changement ensuite (correctifs seulement, KB 545-558). Statut LIVE. Nom réel **William Afton** ; « Springtrap » est son alias [WIKI].
- **Données LIVE** ([WIKI], STRONG_SECONDARY ; valeurs 9.6.0 = VERIFIED_MULTI_SOURCE avec KB 544) :
  - **4,4 m/s** hache en main ; **4,6 m/s** quand la hache est plantée (décor ou survivant). TR **24 m**. Taille moyenne.
  - Pouvoir « Fazbear's Fright » :
    - **Fire Axe** : windup 1 s (il marche à 3,68 m/s), lancer 0,25 s (2,76 m/s), projectile 30 m/s, portée max 16 m, **gravité forte (68,6 m/s²)** → trajectoire en cloche. Survivant **sain** touché : blessé + hache plantée → **Broken + Oblivious** jusqu'au retrait (**5 s** par un allié, **8 s** seul). Survivant blessé touché : il passe au sol. **Grab Axe** : devant un survivant qui porte la hache (≤ 3 m, 45°), Afton le **charge directement sur l'épaule** et récupère sa hache (séquence de 4,2 s selon la Power Trivia). Hache dans le décor : zone de Killer Instinct (1 → 2 m) pendant 15 s ; frôler la hache (≤ 1 m) = Killer Instinct 2 s. Hache sur une Security Door : porte désactivée pour les survivants (encore 10 s après le rappel). Recharge avant rappel : 6 s (décor) / 8 s (survivant) ; rappel 1,5 s ; cooldown après lancer 2 s.
    - **Security Doors** : 7 portes. Afton : entrée 2 s, téléport 3 s, sortie 1 s, puis **Undetectable 20 s**. Survivants : entrée 1 s, téléport 5 s, sortie 2 s, accès aux caméras. **Regarder Afton 4 s** par une caméra (≤ 18 m, angle 25°) → son aura est révélée à **tous** les survivants 10 s et il perd l'Undetectable des portes. Batterie commune de 100 charges : −12 par téléportation d'un survivant, −6/s par caméra active, recharge +5/s (conditions exactes non précisées) ; à 0 → reboot de 45 s, reprise à 50. Afton voyage entre portes **même sans batterie**. **Jumpscare** : si Afton choisit une porte occupée par un survivant, il l'attrape.
- **Identification** (HEURISTIC) :
  - *Avant le reveal* : TR court (24 m) et **Undetectable fréquent** après usage de porte. Des portes de sécurité sur la map = Animatronic (objet de carte spécifique).
  - *Pouvoir en action* : hache en main (4,4 m/s) ou plantée (4,6 m/s), hache plantée dans le décor (zone de révélation), grésillement des caméras.
  - *Add-ons* [WIKI] : hache qui traverse les portes (Access Panel), palettes bloquées autour d'une porte (Iridescent Remnant), TR qui vient de la hache (Faz-Coin).
  - *Stratégie probable* : Broken prolongé (hache plantée) = snowball ; embuscades Undetectable par les portes.
- **Ce qu'il cherche en chase** (HEURISTIC) : un lancer de hache à la sortie de tile, puis rejoindre à ≤ 3 m le survivant qui porte la hache : le **Grab Axe le met sur l'épaule sans second coup** [WIKI].
- **Tiles / structures** (HEURISTIC) :
  - *Favorables* : tiles hauts qui coupent la LOS (anti-projectile classique, comme contre la Huntress). Zones éloignées des portes.
  - *Défavorables* : longues lignes droites, tiles bas, zones près d'une porte (arrivée surprise, add-ons de porte).
  - *Fenêtres vs palettes* : classiques. Le projectile punit les vaults prévisibles en fin de boucle. La trajectoire en cloche (gravité forte) rend les lancers longs moins précis que ceux d'une Huntress (déduction de la valeur de gravité, HYPOTHESIS).
- **Mindgames propres** (HEURISTIC) : faux lancer (windup de 1 s annulé, 1 s de pénalité) ; sortie de porte Undetectable juste à côté d'un gen ; hache plantée près d'un gen ou d'une porte comme piège d'info.
- **Counterplay** :
  - *Mécanique* : esquive latérale **au moment du relâchement** (lancer 0,25 s après le windup), pas au début du windup. Surveillez sa vitesse : **sans hache, il est plus rapide mais sans projectile**. Calcul (4,4 / 4,6 m/s [WIKI] contre 4,0 [AUDIT]) : avec la hache il reprend 0,4 m/s (10 m en 25 s), sans la hache 0,6 m/s (10 m en 16,7 s) → sans hache, jouez la boucle, pas l'open (HEURISTIC).
  - *Hache plantée en vous* : vous êtes **à un grab de l'épaule** : il lui suffit d'arriver à 3 m, sans attaque ni lunge [WIKI]. Calcul : de 10 m, il comble les 7 m restants en ≈ 11,7 s (0,6 m/s) ; et après 8 s il peut rappeler la hache (1,5 s) et relancer. Donc : retirer la hache est la priorité dès que vous avez ≈ 8 s (seul) ou 5 s (allié) hors de sa portée ; sinon, jouez un tile qui vous garde à plus de 3 m (HEURISTIC).
  - *Positionnel* : évitez de réparer dans le champ d'une porte récemment utilisée et ne restez pas dans une zone de hache plantée (révélation).
  - *Macro* : les caméras sont une **ressource d'équipe partagée avec le tueur** (batterie commune ; lui voyage même à 0). Usage rentable : **regarder Afton 4 s** pour le révéler à toute l'équipe 10 s et casser son Undetectable [WIKI] (chase en cours, tueur qui porte quelqu'un, sauvetage). Pas de consultation « pour voir ». Retirez la hache plantée au plus vite (Broken + Grab Axe).
  - *Équipe* : un allié retire la hache en 5 s contre 8 s seul [WIKI]. En SWF, le plus proche va retirer la hache pendant que le tueur est engagé ailleurs.
- **Habitudes punissables / erreurs** (HEURISTIC) : entrer dans une porte quand le tueur peut y entrer aussi (jumpscare) ; consommer la batterie au point de bloquer toute l'équipe (reboot 45 s) ; garder la hache plantée pour « finir le gen » ; se laisser rattraper à 3 m avec la hache plantée.
- **Adaptations avancées** (HEURISTIC) : l'info TR habituelle **échoue** ici (TR 24 m et Undetectable 20 s après chaque porte). Compensez par l'audio des portes (l'animation/son d'entrée joue pour le tueur quand un survivant entre, KB 512 ; réciproque non documentée), Kindred ou Alert, et le repérage des portes proches de votre gen. Face à un tueur qui campe les portes, utilisez-les seulement en phase de chase sûre.
- **Add-ons qui changent la décision** ([WIKI], LIVE après 9.0.2 et 9.6.0) :
  - Iridescent Remnant (en arrivant à une Security Door : palettes debout à ≤ 32 m de cette porte bloquées 12 s) → après une sortie de porte, le survivant fuit vers des fenêtres ou des tiles de LOS au lieu de compter sur les palettes proches.
  - Access Panel (la hache traverse les portes et ressort par la porte connectée ; en visant, Killer Instinct sur les survivants à ≤ 6 m d'une porte) → le survivant ne se cache plus près d'une porte « à l'abri du lancer ».
  - Faz-Coin (au lancer : la hache émet une copie de son TR de 24 m jusqu'au rappel, et Afton gagne 10 s d'Undetectable) → le survivant localise la source du son : le TR peut être celui de la hache, pas du tueur.
  - Loot Bag (tant que la hache est plantée : portes de sortie bloquées pour ce survivant et pour tous ceux à ≤ 12 m de lui) → en endgame, le porteur retire la hache avant d'aller à la porte, et les autres ne l'accompagnent pas à moins de 12 m.
- **Implications de carte** (HEURISTIC) : sa map (Freddy Fazbear's Pizza) est intérieure. Sur les maps ouvertes, la hache est plus menaçante ; sur les maps denses, les portes compensent sa vitesse.
- **Perks fréquentes** (seed-NRV) : Pain Resonance, Pop Goes the Weasel (20 % au total depuis 9.5.0, audit), Barbecue & Chili, Grim Embrace. Ses perks [WIKI] : Help Wanted (page affichant la version PTB 10.2.0 : valeurs LIVE non relues), Phantom Fear (un survivant dans son TR qui le regarde crie et est révélé 2 s ; cooldown 80/70/60 s), Haywire (une porte de sortie lâchée après ≥ 80 % régresse à 80/90/100 % de la vitesse d'ouverture). → Contre Haywire, **ne lâchez pas une porte de sortie à 80 %+** sans nécessité. Contre Phantom Fear, dans son TR, évitez de le fixer quand vous êtes caché.
- **Écart avec le seed** : « nom réel Springtrap » **IMPRÉCIS** (William Afton ; Springtrap = alias). Date, 4,4 / 4,6 m/s, TR 24 m, windup 1 s, 16 m, 30 m/s, retrait 5 / 8 s, zone 2 m / 15 s, 7 portes, Undetectable 20 s, batterie 100 / 12 / 6 par s / reboot 45 s, rappel 6 / 8 s attribué à 9.6.0 : **OK** [WIKI ; KB 544]. « Récupération par le tueur au grab (4,2 s) » : **IMPRÉCIS** (le Grab Axe **charge le survivant sur l'épaule**). « 4 s d'observation = Undetectable retiré 10 s » : **IMPRÉCIS** (aura révélée à tous 10 s **et** Undetectable retiré). Le seed omet les nerfs d'add-ons 9.0.2 : **IMPRÉCIS**.
- **Sources** : [4] (William_Afton), [5] (KB 510, 512, 544), [2].

---
## 41. The Krasue (Burong Sukapat) — archétype(s) : ranged | mobilité | anti-loop | statut (Leech)

- **Version** : 9.2.0 « Sinister Grace » (CHAPTER 37), 23/09/2025 [WIKI ; KB 523]. **9.2.1** [KB 524 ; WIKI] : champignons 4 → **5** au départ et max 8 → **6** ; le fouet ignore les obstacles 0,6 → 0,35 s ; vaults en Head Form 1,6 s → **1,9 s** (palettes) / **1,67 s** (fenêtres) et stun de palette +25 % (**2,5 s**) en Head Form [WIKI]. **9.2.2** [KB 525] : **le Leeched est entièrement retiré quand le survivant est accroché** ; transition vers la Head Form 1 → 1,2 s ; windup du fouet 0,2 → 0,3 s ; traversée d'obstacles 0,35 → 0,32 s ; cooldowns de Regurgitate 1,3 s (lancé / annulé). Le hotfix 9.2.2 cité par le seed est donc **confirmé** (VERIFIED_PRIMARY). Ensuite : correctifs seulement (KB 529 → 557). Statut LIVE.
- **Données LIVE** ([WIKI], STRONG_SECONDARY sauf mention) :
  - Body Form 4,6 m/s, TR 32 m ; Head Form 4,8 m/s, TR 40 m ; Headlong Flight 7 m/s [WIKI + audit, notes 9.2.0] → VERIFIED_MULTI_SOURCE. Taille moyenne.
  - **La Head Form n'a pas de Bloodlust** [WIKI + audit VERIFIED_PRIMARY].
  - Pouvoir « Unbodied Flesh » :
    - **Corporeal Weave** : Body → Head 1,2 s ; Head → Body 2,2 s ; cooldown 3,5 s (5 s en début de partie).
    - **Regurgitate** (Body) : glande lancée à 29 m/s qui rebondit puis se divise en 4 mini-glandes (10 m/s, tête chercheuse à ≤ 7 m). Toute touche = **+100 charges, soit Leeched I immédiat** (plafonné à Leeched I). Cooldown 2,5 s.
    - **Head Form** : **vaulte** palettes tombées (1,9 s) et fenêtres (1,67 s) au lieu de casser les palettes ; stun de palette 2,5 s. **Headlong Flight** : jauge de 12 charges, −1/s en vol, +0,4/s au repos (30 s pour une recharge complète), seuil 25 % ; elle peut vaulter pendant le vol (ce qui termine le vol). **Intestinal Whip** : windup 0,3 s, ignore les obstacles pendant 0,32 s, +34 charges (plafonné à Leeched I), **ne blesse qu'à partir de Leeched I** ; cooldown 3,2 s (touche) / 3 s (raté).
    - **Leeched** : palier I à 100 charges (le fouet blesse ; la jauge monte seule à +1,665/s → **Leeched II en 60 s**) ; palier II : un survivant sain devient blessé, et **Broken** quel que soit son état. **Crochet = Leech remis à zéro** [KB 525].
    - **Glowing Fungus** : 5 au départ, 6 max ; mangeable **à partir de Leeched I** ; 3 s de consommation (à 2,83 m/s), puis −5 charges/s (20 s par palier) ; **l'effet s'arrête si le survivant est touché**. Réapparition 90 s après consommation, ou quand elle passe en Head Form à ≥ 5 m de tout objet.
- **Identification** (HEURISTIC) :
  - *Avant le reveal* : **deux TR différents** (32 m puis 40 m) et un changement de vitesse. Une tête volante = Head Form. Des champignons lumineux sur la map = Krasue.
  - *Pouvoir en action* : projectiles qui rebondissent et se divisent (Body), vol rapide (Head).
  - *Add-ons* [WIKI] : tous les survivants Leeched I dès le début (Chicken Head) ; auras près des champignons à chaque changement de forme (Shredded Gown) ; fenêtres marquées par une glande (Mysterious Elixir).
  - *Stratégie probable* : pression d'usure par la jauge de Leech (blessure + Broken sans coup au palier II), mobilité en vol.
- **Ce qu'il cherche en chase** (HEURISTIC) : en Body, toucher par rebonds derrière les obstacles pour vous mettre Leeched I d'un coup ; en Head, des vaults gratuits de palette (pas de casse) et un fouet qui ignore brièvement les obstacles (0,32 s).
- **Tiles / structures** (HEURISTIC) :
  - *Favorables* : tiles où la tête doit **contourner** plutôt que vaulter (murs pleins, gros rochers), et stuns de palette (2,5 s [WIKI]) quand elle vaulte mal.
  - *Défavorables* : tiles de palette « classiques » contre la Head Form (elle les vaulte) ; espaces ouverts avec murs proches (rebonds de glande).
  - *LOS* : les mini-glandes cherchent la cible à ≤ 7 m [WIKI]. Couper la LOS **après** la division compte plus que l'esquive initiale (HEURISTIC).
- **Mindgames propres** (HEURISTIC) : glande tirée contre un mur pour toucher derrière le tile ; alternance de formes pour changer de TR (le passage à 40 m peut cacher la position exacte) ; fouet au travers d'un coin.
- **Counterplay** :
  - *Mécanique* : changez de direction contre la glande principale, puis cassez la LOS contre les mini-glandes. Contre le fouet, gardez de la distance : sa fenêtre de traversée d'obstacles ne dure que 0,32 s [KB 525]. **Surveillez votre palier de Leech** : sous Leeched I, le fouet ne blesse pas [WIKI] ; mais **une seule touche de glande vous met Leeched I** (+100) — contre la Body Form, l'esquive de la glande vaut donc une blessure future.
  - *Positionnel* : restez près d'un champignon quand vous êtes Leeched I, et repérez les champignons en début de partie.
  - *Macro* : mangez un champignon **avant** le palier II (vous avez 60 s depuis Leeched I [WIKI]) ; la consommation dure 3 s puis 20 s de purge par palier, **annulée si vous êtes touché** → mangez hors de portée de glande. Le crochet remet le Leech à zéro [KB 525] : ne gaspillez pas un champignon juste avant un crochet **probable** ; le décroché repart à zéro (SITUATIONAL).
  - *Équipe* : le soin est inutile au palier II (Broken) : faites d'abord baisser la jauge.
- **Habitudes punissables / erreurs** (HEURISTIC) : ignorer la jauge ; boucler une palette contre la tête comme contre un M1 ; courir en ligne droite contre la glande ; oublier qu'un TR 40 m peut être la tête **loin du corps** ; manger un champignon à portée de glande.
- **Adaptations avancées** (HEURISTIC) : l'absence de Bloodlust en Head Form (FACT) rend les **chases longues relativement plus viables contre la tête** que contre un tueur avec Bloodlust — mais seulement au-delà d'une certaine durée. Calcul [AUDIT ; vitesses confirmées WIKI] : la tête va à 4,8 m/s dès le départ, soit la vitesse d'un tueur à 4,6 m/s au palier I de Bloodlust (+0,2 m/s à 15 s). Contre un tueur à 4,6 m/s, la tête est donc **plus rapide** pendant les 15 premières secondes, égale entre 15 et 25 s, plus lente seulement après 25 s (+0,4 → 5,0 m/s) et 35 s (5,2 m/s). Elle reprend 0,8 m/s sur toi (10 m en 12,5 s, contre 16,7 s pour un tueur à 4,6 m/s sans Bloodlust). Donc : contre la tête, les **premières secondes** sont les plus dangereuses, et « étirer » ne paie qu'une fois la chase longue installée ; rappel : un tueur perd sa Bloodlust en utilisant son pouvoir [AUDIT]. Le counterplay « palettes » habituel échoue, puisqu'elle les vaulte : privilégiez les tiles à murs qu'elle doit contourner, et les stuns ponctuels.
- **Add-ons qui changent la décision** ([WIKI], LIVE) :
  - Chicken Head (tous les survivants Leeched I au départ, +2 champignons initiaux) → **le fouet blesse dès la première chase** : le survivant prend un champignon tôt ou joue sur une distance plus longue.
  - Shredded Gown (à chaque changement de forme, auras des survivants à ≤ 8 m d'un champignon, ou qui en tiennent un, pendant 5 s) → le survivant mange vite et quitte la zone du champignon, au lieu de s'y attarder.
  - Queen's Sceptre (un fouet qui touche fait jaillir une glande depuis le survivant touché) → après un fouet, le survivant attend un projectile de suivi et casse la LOS.
  - Janjira's Hand (chaque gen terminé : +2 charges de vol et recharge +25 % pendant 15 s ; au dernier gen : recharge complète et +25 % permanent) → après un gen terminé et en endgame, le survivant attend une arrivée rapide en vol au lieu de relâcher sa garde.
  - Spattered Handkerchief (portes alimentées : tous les survivants passent Leeched I, les champignons restants se décomposent) → en endgame, tout le monde est vulnérable au fouet : le survivant sain joue la distance et évite la tête, au lieu de compter sur un champignon.
- **Implications de carte** (HEURISTIC) : forte sur les maps ouvertes à murs proches (rebonds). Les maps denses en palettes perdent de la valeur contre la Head Form.
- **Perks fréquentes** (seed-NRV) : Pain Resonance, Dissolution, Pop Goes the Weasel, No Way Out / Ravenous. Ses perks : Ravenous, Wandering Eye, Hex: Overture of Doom. **Ravenous LIVE** : 1 token au premier crochet de chaque survivant ; à 4 tokens, tous les survivants crient et sont **Exposed 40/50/60 s** [KB 523, VERIFIED_PRIMARY ; aucune modification LIVE ensuite]. La page wiki affiche la version **PTB 10.2.0** (Haste en portant, Exposed 80/85/90 s) : **non LIVE** — cela résout, pour cette fiche, l'alerte « valeurs du seed ch8 SUSPECTES PTB-comme-LIVE » (CONFLICT-K96-01). Wandering Eye [WIKI] : au début d'une chase, auras des autres survivants **blessés** à ≤ 20 m pendant 5 s (cooldown 40/35/30 s). → Contre Dissolution confirmée, ne vaultez pas une palette dans sa zone proche (SITUATIONAL). Contre Wandering Eye, un survivant blessé s'éloigne à plus de 20 m de la chase en cours.
- **Écart avec le seed** : vitesses et TR **OK** [WIKI + audit]. « Pas de Bloodlust » **OK** pour la Head Form. Date **OK**. Hotfix 9.2.2 (Leech retiré au crochet) : **OK** [KB 525]. Paliers 100 / 200, glande +100, fouet +34, champignons 5 (6 max), 3 s, vol 12 charges / seuil 25 %, stun 2,5 s : **OK** [WIKI]. « N°1 en kill rate MMR élevé selon BHVR » : **OK sur le fond** (audit : « kill Krasue (high) », KB 540), classement « n°1 » et chiffres non publiés en texte. Tier et NightLight : HEURISTIC / non vérifiés.
- **Sources** : [4] (Burong_Sukapat), [5] (KB 523, 524, 525), [1], [2].

---

## 42. The First (Henry Creel) — archétype(s) : zone | furtif (Upside Down) | mobilité | anti-loop

- **Version** : 9.4.0 « Stranger Things Chapter 2 » (CHAPTER 38), 27/01/2026 [WIKI ; KB 534]. Changements PTB → LIVE 9.4.0 [KB 534] : 1 s sans interaction ni attaque après la sortie d'Undergate ; cooldown d'annulation de la liane 1,25 → 1,5 s. 9.4.2 (non documenté, [WIKI]) : ralentissement appliqué dès le début de la charge de liane. **9.5.0** (17/03/2026) [KB 538 ; WIKI] : 2e phase du Worldbreaker 60 → **50 s** ; lunge 6,6 → 6,9 m/s ; add-ons retravaillés (Pizza Goggles, Chess Piece, Broken Skateboard, Forged Death Certificate, Rabbit Remains, Bloody Roller Skate, Bead Maze). Statut LIVE. Alias « Vecna ».
- **Données LIVE** ([WIKI], STRONG_SECONDARY sauf mention) :
  - 4,4 m/s, TR 32 m [WIKI + audit] → VERIFIED_MULTI_SOURCE. 8 m/s dans l'Upside Down. Taille moyenne.
  - Pouvoir « Test Subject #001 » :
    - **Vine Attack** : charge 0,4 s (il marche à 2,99 m/s), puis cast 0,6 s (1,79 m/s) ; zone au sol de **rayon 1,46 m** (5 m de haut) qui se déclenche **0,6 s** après ; cooldown 3 s (1,5 s après annulation). Hors Worldbreaker : **1 token**, pas de dégât [WIKI + KB 534]. **Anti-camp** : à ≤ 8 m d'un survivant accroché, le délai de la zone passe à **6 s**. Casse de palette par la liane : **absente de la page wiki et des notes** → seed-NRV (seul l'add-on Shattered Wrist Rocket fait casser les palettes, via l'Undergate).
    - **Upside Down** : Undetectable, 8 m/s, **traverse palettes, fenêtres et murs cassables** (pas les murs pleins) ; entrée 1,5 s ; cooldown **35 s** après la sortie (50 % au début de la partie, ≈ 17,5 s).
    - **Undergate Attack** : depuis l'Upside Down, zone qui grandit jusqu'à son rayon max en 1,65 s (l'avertissement devient visible après 0,45 s), puis il ressort ; **2 tokens** hors Worldbreaker [WIKI + KB 534]. Ensuite, 1 s sans interaction ni attaque [KB 534] et 2,5 s avant de retrouver sa vitesse normale. « Un casier protège » : seed-NRV (absent de la page).
    - **Worldbreaker** : se déclenche quand un survivant atteint 2 ou 4 tokens, ou quand un survivant à 4 tokens est touché. Pendant le Worldbreaker, liane et Undergate **blessent** au lieu de donner des tokens. Phase 1 : **60 s par survivant vivant** ; phase 2 : **50 s** [KB 538]. Le compte à rebours est **en pause pendant qu'il porte un survivant**.
    - **Grandfather Clocks** : 4 horloges, utilisables **pendant la phase 1 seulement**. Décompte de base −1/s ; avec des survivants aux horloges : 1 → −9/s, 2 → −12/s, 3 → −15/s, 4 → −18/s.
    - **Mind Break** : survivant au **2e état de crochet et à 4 tokens** ; si, pendant le Worldbreaker, une liane ou l'Undergate le met au sol, il flotte 15 s et The First peut faire la mini-mori.
- **Identification** (HEURISTIC) :
  - *Avant le reveal* : 4,4 m/s ; un TR qui **disparaît d'un coup** = Upside Down (Undetectable).
  - *Pouvoir en action* : charge lente puis zone au sol ; anneaux rouges d'Undergate ; horloges sur la map.
  - *Add-ons* [WIKI] : Upside Down très fréquent mais Undergate minuscule (Pizza Goggles) ; lianes à 2 charges au rayon réduit (Chess Piece) ; vaults bloqués autour de sa sortie d'Upside Down (Electroshock Collar).
  - *Stratégie probable* : accumuler des tokens sur plusieurs survivants, puis exploiter la fenêtre Worldbreaker ; pression de gens avec Turn Back the Clock et Pop (build du seed, [SEED] UNCERTAIN ; HEURISTIC).
- **Ce qu'il cherche en chase** (HEURISTIC) : prédire votre position aux sorties de palette et de fenêtre (zone retardée). Hors Worldbreaker, les lianes donnent des tokens, pas des blessures [WIKI] : il construit sa phase de dégâts.
- **Tiles / structures** (HEURISTIC) :
  - *Favorables* : boucles longues où sa vitesse de 4,4 m/s le pénalise — il reprend 0,4 m/s au lieu de 0,6 (10 m en 25 s au lieu de 16,7 s), avant Bloodlust (+0,2 m/s à 15 s, perdue quand il utilise son pouvoir [AUDIT]) ; tiles offrant **plusieurs sorties** qui rendent la prédiction de zone difficile.
  - *Défavorables* : tiles à sortie unique, couloirs étroits (zone facile à placer). (La version précédente citait des « palettes cassables par les lianes » : non confirmé, voir Données LIVE.)
  - *Verticalité* : zone de 5 m de haut [WIKI] ; effet des étages non documenté (UNCERTAIN).
- **Mindgames propres** (HEURISTIC) : charger la liane sur la sortie de palette probable ; attendre le double-vault ; sortir de l'Upside Down derrière un tile.
- **Counterplay** :
  - *Mécanique* : **feintes de vault et changements de direction tardifs**. Calcul [WIKI] : la zone se déclenche 0,6 s après le cast ; en 0,6 s tu parcours 2,4 m (4,0 m/s [AUDIT]), plus que le rayon de 1,46 m → **bouger dès que l'indicateur apparaît** suffit presque toujours à sortir de la zone ; rester immobile ou vaulter à ce moment-là est ce qui se fait toucher (HEURISTIC). Quand l'anneau d'Undergate s'étend (rayon max en 1,65 s), sortez tout de suite ; le casier comme protection reste non confirmé (seed-NRV).
  - *Positionnel* : hors Worldbreaker, bouclez longtemps en exploitant sa lenteur. En Worldbreaker, raccourcissez la chase et coupez la LOS, puisque chaque liane blesse.
  - *Macro* : suivez les tokens de l'équipe. Un survivant à 4 tokens au 2e crochet risque la **mise à mort directe** (Mind Break [WIKI]) : priorité de sauvetage et d'anti-tunnel. Le Worldbreaker est **en pause pendant qu'il porte quelqu'un** [WIKI] : ne comptez pas sur un crochet pour « écouler » le timer.
  - *Équipe* : **un seul survivant sur les horloges**, les autres sur les gens. Calcul [WIKI] (4 survivants vivants, phase 1 = 240 charges, trajets ignorés) : 1 survivant → ≈ 27 s au lieu de 240 s ; 2 → 20 s ; 3 → 16 s. Le 2e survivant ne fait gagner qu'≈ 7 s de Worldbreaker pour ≈ 20 s de réparation perdue (HEURISTIC sur la consigne ; lecture « les taux remplacent le −1/s de base » = HYPOTHESIS). SWF : désigner au vocal. SoloQ : si un coéquipier est déjà sur une horloge (aura, icône d'action), restez sur votre gen ; les horloges n'agissent qu'en phase 1.
  - *Sauvetage contre un First qui campe* : une liane lancée à ≤ 8 m du crochet met **6 s** à se déclencher [WIKI] : le décrochage et la fuite hors de la zone passent avant elle (HEURISTIC).
- **Habitudes punissables / erreurs** (HEURISTIC) : vaulter « par réflexe » à la même sortie ; rester immobile quand l'indicateur de liane apparaît ; ignorer la disparition du TR (ambush Upside Down) ; envoyer toute l'équipe aux horloges ; laisser un survivant cumuler 4 tokens avant son 2e crochet.
- **Adaptations avancées** (HEURISTIC) : le counterplay « exploiter sa vitesse de 4,4 m/s » **échoue en Worldbreaker**, où la liane devient une attaque blessante. Changez de plan au déclenchement : cherchez un tile à murs hauts plutôt qu'une longue boucle, et pensez distance plutôt que durée de chase. Le cooldown de 35 s de l'Upside Down [WIKI] donne, après chaque sortie, une fenêtre **sans embuscade Upside Down** — pas une fenêtre sans danger (lianes et M1 restent disponibles ; Pizza Goggles la ramène à ≈ 10 s).
- **Add-ons qui changent la décision** ([WIKI], LIVE après la refonte 9.5.0 [KB 538]) :
  - Iridescent Soteria Chip (au déclenchement du Worldbreaker : Undetectable, et auras des survivants ayant au moins 1 token à ≤ 12 m, jusqu'à sa prochaine liane, son prochain Upside Down ou la fin du Worldbreaker) → au déclenchement, le survivant quitte les gens proches et ne compte plus sur le TR, au lieu d'attendre le son du tueur.
  - Pizza Goggles (cooldown de l'Upside Down −25 s, rayon de l'Undergate −90 %, cooldown de sortie −80 %) → le survivant se répartit sur la map (embuscades toutes les ≈ 10 s) mais n'a plus à fuir un grand anneau : l'Undergate ne touche que tout près.
  - Chess Piece (liane à 2 charges, rayon −40 %) → le survivant ne fête pas un premier dodge : il attend la seconde zone et reste en mouvement.
  - Electroshock Collar (en sortant de l'Upside Down, tous les vaults à ≤ 32 m bloqués 12 s) → à sa réapparition, le survivant fuit vers un tile à murs ou une palette **debout**, au lieu de compter sur une fenêtre.
  - Shattered Wrist Rocket (l'explosion d'Undergate casse instantanément les palettes et endommage les gens) → une palette posée n'est plus sûre contre une sortie d'Undergate : le survivant quitte la zone de l'anneau.
- **Implications de carte** (HEURISTIC) : l'Upside Down (8 m/s, traverse palettes, fenêtres et murs cassables) réduit l'avantage des grandes maps. Sur les maps intérieures, les zones de liane sont plus faciles à placer dans les couloirs.
- **Perks fréquentes** (seed-NRV) : Pain Resonance, Turn Back the Clock, Lethal Pursuer, Pop Goes the Weasel. Ses perks [WIKI] : Turn Back the Clock (pendant 40/50/60 s après un crochet, il peut faire exploser un gen à ≤ 20 m : −10 % et régression), Hex: Hive Mind (au 4e gen terminé, tous les gens restants explosent −6/8/10 % et régressent), Secret Project (totem béni ou purifié → un gen bloqué 20-30 s ; Undetectable 30 s quand des gens sont bloqués). → Après un crochet, **évitez de garder un gen avancé à 20 m** d'un point qu'il peut atteindre (Turn Back the Clock). Contre Hive Mind, purifiez le Hex avant le 4e gen.
- **Écart avec le seed** : vitesse, TR, date **OK** ; phase 2 50 s **OK** [KB 538]. Upside Down 8 m/s, cooldown 35 s (50 % au départ), liane 1,46 m / cooldown 3 s, 2 tokens par Undergate, 60 s par survivant, 4 horloges, Mind Break : **OK** [WIKI]. « Traverse palettes, fenêtres et murs » : **IMPRÉCIS** (murs **cassables** seulement). « La liane peut casser les palettes » et « un casier protège de l'Undergate » : **NON VÉRIFIABLES** (absents du wiki et des notes). « Les survivants en plus aux horloges n'aident presque pas » : **IMPRÉCIS** (le 2e accélère de +33 %, mais le gain est faible face au coût en réparation). « N°2 en kill rate MMR élevé selon BHVR » : **NON VÉRIFIABLE / douteux** (voir CONFLICT-B4G6-02).
- **Sources** : [4] (Henry_Creel), [5] (KB 534, 538), [1], [2].

---

## 43. The Slasher (Jason Voorhees) — archétype(s) : furtif | mobilité | ranged (pics) | anti-loop

- **Version** : 10.0.0 « Jason » (CHAPTER 40), 16/06/2026 [WIKI ; KB 550]. Changements PTB → LIVE [KB 549 ; KB 550 ; WIKI] : sauver un survivant épinglé ne compte plus comme un soin ; l'attaque de la « husk » a un délai (0,35 s) ; anti-camp du Jump Scare ×2 → **×3** (4,5 s) ; annuler un lancer de pic ralentit davantage (3,2 → 2,8 m/s) ; add-ons (Coroner's Coffee 13 → 8 %, Bloody Magazine 13 → 8 m, Eye Goop 9 → 13 s, Iridescent Boat Motor 5 → 13 s, Toxic Waste 6 → 8 m, Deputy's Badge refondu à 4 m). **10.0.2** (06/07/2026) [KB 552] : Deputy's Badge 4 → **2 m** (et plus sur un gen déjà en régression). **10.0.3** (21/07/2026) [KB 553] : l'anti-camp du Jump Scare **ne s'applique plus entre étages** ; Sauna Rock 13 → **3 s**, Two Nails 6 → 5 s, Mirror Shards 30 → 40 s, Toxic Waste 8 → 10 m, Sleeping Bag 8 → 10 m, Party Noisemaker 32 → 28 m. (Cela lève l'ambiguïté de l'audit : les ajustements d'add-ons sont en 10.0.2 **et** en 10.0.3.) Nouvel état **Impaled**. Statut LIVE.
- **Données LIVE** ([WIKI], STRONG_SECONDARY sauf mention) :
  - 4,4 m/s ; 8,0 m/s en Omnipresent Evil ; TR 32 m [WIKI + audit] → VERIFIED_MULTI_SOURCE. Taille moyenne.
  - Perks enseignables : Hex: Scared to Death, Silent Shadow, Rampage [WIKI + audit].
  - Pouvoir « Omnipresent Evil » :
    - **Omnipresent Evil (OE)** : invisible + Undetectable, 8 m/s, **traverse palettes, fenêtres et murs cassables** (pas les murs pleins). **Il ne peut ni attaquer, ni voir, ni entendre les survivants**, sauf le bruit de réparation des gens. Il « sent » les survivants à ≤ 16 m : **brume** s'ils sont immobiles, **empreintes** s'ils bougent ; **un survivant accroupi depuis plus de 2,5 s n'est plus détecté du tout**. En entrant en OE, il laisse une « husk » qui frappe un survivant à ≤ 1 m (après 0,35 s). Activer OE répare les crochets qu'il a détruits et remplit les tas de ferraille ; rechargement des pics ×0,5 en OE. Cooldown de départ 3 s.
    - **Jump Scare** : disponible **2 s** après l'activation d'OE ; cible une palette, un mur cassable ou une fenêtre **à ≤ 16 m de Jason** (12 m en hauteur) ; visée 0,5 s puis **réapparition 1,5 s** (×3 = **4,5 s** si la cible est à ≤ 16 m d'un survivant accroché, même étage seulement depuis 10.0.3), puis **1 s** sans attaque ni interaction. Il effectue un **special-break ou special-vault** sur la cible [KB 550] (une palette tombée ciblée est cassée) ; la palette ou la fenêtre ciblée est **bloquée 4 s**. Ensuite : **Haste 4,5454 % pendant 25 s** (→ 4,6 m/s), cri + Killer Instinct 4 s pour les survivants **détectés** à ≤ 16 m ; OE en cooldown **12 s**.
    - **Throwing Spikes** : pic de crochet (1 au départ ; +1 en accrochant ; ou pris sur un crochet, qui est alors détruit 30 s) ou pic normal (10 tas de ferraille). Windup 0,9 s, 42 m/s, cooldown 2,5 s. Touche = **perte d'un état de santé** + poussée (0,35 s à 20 m/s) ; un survivant **percuté** par le survivant poussé est blessé (Deep Wound s'il l'est déjà). Pic de crochet sur un survivant **sain** = **empalé** : Broken, retrait en 5 s (Hindered −10 % pendant), aura du pic visible par Jason à ≤ 26 m tant qu'on ne le retire pas. **Épinglage** : seulement si le pic **met le survivant au sol** et que la poussée l'envoie dans un mur [WIKI ; KB 550] ; il se dégage seul en 8 s (au sol) ou un allié le libère (il repasse blessé). **Finisher** : un survivant au dernier état de crochet (ou vulnérable à un Finisher Mori) empalé et mis au sol par un pic de crochet, ou épinglé, peut être tué tant qu'il est empalé ou épinglé.
- **Identification** (HEURISTIC) :
  - *Avant le reveal* : 4,4 m/s ; un TR qui **se coupe** sans raison = Omnipresent Evil. Des tas de ferraille sur la map = Slasher.
  - *Pouvoir en action* : réapparition brutale sur une palette, un mur cassable ou une fenêtre (Jump Scare) ; projectiles-pics ; crochets détruits.
  - *Add-ons* [WIKI + KB 550-553] : fenêtres bloquées après un Jump Scare (Iridescent Boat Motor) ; gens qui explosent sur son passage (Deputy's Badge) ; Exhausted juste après un Jump Scare (Sauna Rock).
  - *Stratégie probable* : « fog of regression » (Pop / Surge / Pain Resonance + Corrupt, seed), tunnel via Finisher au dernier crochet (HEURISTIC).
- **Ce qu'il cherche en chase** (HEURISTIC) : réapparaître **sur la palette ou la fenêtre** que vous alliez utiliser (qu'il casse ou franchit, puis qui reste bloquée 4 s), puis gagner la chase courte grâce à la Haste de 25 s. Hors pouvoir, pics à distance sur un survivant sain qui arrive à une palette.
- **Tiles / structures** (HEURISTIC, corrigé lot 12b) :
  - *Favorables* : pendant qu'il est en OE, **zones éloignées de toute palette, fenêtre ou mur cassable** : le Jump Scare le fait réapparaître **sur** ces éléments, donc plus ils sont loin de vous, plus il doit ensuite parcourir de distance à 4,6 m/s. (La version précédente plaçait le rayon de 16 m autour du survivant : il se mesure **depuis Jason**, qui se déplace à 8 m/s [WIKI].) Tiles de LOS contre les pics. Limite : une zone sans ressource est une zone morte dès qu'il redevient visible et vous chase.
  - *Défavorables* : tiles denses en palettes et fenêtres, précisément ses points d'apparition ; murs proches quand vous êtes blessé (épinglage).
  - *Fenêtres vs palettes* : les deux (et les murs cassables) sont des points de Jump Scare ; la ressource ciblée est bloquée 4 s. Iridescent Boat Motor bloque en plus les fenêtres marquées (13 s).
- **Mindgames propres** (HEURISTIC) : entrer en OE pour simuler un départ, puis revenir ; Jump Scare sur la palette de sortie ; garder un pic pour la fin de boucle.
- **Counterplay** :
  - *Mécanique* : **quand le TR se coupe**, il lui faut au minimum 2 s (disponibilité) + 0,5 s (visée) + 1,5 s (réapparition) + 1 s (verrou) ≈ **5 s** avant de pouvoir frapper après un Jump Scare [calcul, WIKI]. Deux réponses (HEURISTIC) :
    - **hors chase, accroupissez-vous** : après 2,5 s vous n'êtes plus détecté du tout (ni brume ni empreintes, ni révélation au Jump Scare) ; il n'entend que le bruit des gens en réparation ;
    - **en chase, ne prenez pas la ressource évidente** : celle qu'il cible est cassée ou franchie puis bloquée 4 s ; gardez une 2e option. S'il réapparaît devant vous, la réapparition (1,5 s) + 1 s de verrou vous laissent ≈ 10 m (2,5 s × 4,0 m/s [AUDIT]) pour changer de direction.
    - Contre les pics : windup de 0,9 s → esquive latérale au lancer et LOS ; blessé, éloignez-vous des murs (l'épinglage suppose que le pic vous mette au sol) ; restez **à distance de vos coéquipiers** (le survivant poussé blesse celui qu'il percute).
  - *Positionnel* : pendant la Haste de 25 s (4,6 m/s), cassez la LOS et forcez un contournement plutôt qu'une boucle nue.
  - *Macro* : retirez **immédiatement** un pic de crochet (5 s ; Broken ; Jason voit son aura à ≤ 26 m). Au dernier crochet, **évitez tout pic** : un pic de crochet qui vous met au sol, ou un épinglage, permet le Finisher [WIKI].
  - *Équipe* : la réapparition est **3 fois plus lente** (4,5 s) quand il cible un élément à ≤ 16 m d'un survivant accroché, sur le même étage [KB 550, 553] : c'est une fenêtre de sauvetage. Un coéquipier épinglé peut être libéré (il repasse blessé au lieu de tomber au sol au bout de 8 s) [WIKI]. Kindred, Borrowed Time et Will to Live sont conseillés par le seed ([SEED] UNCERTAIN, HEURISTIC).
- **Habitudes punissables / erreurs** (HEURISTIC) : rester debout, immobile, près d'une palette quand le TR disparaît ; réparer seul près de lui pendant qu'il est en OE (il entend le gen et voit la brume) ; garder un pic « pour plus tard » ; courir groupé ou le long d'un mur contre un tueur qui a des pics.
- **Adaptations avancées** (HEURISTIC) :
  - Le counterplay « TR = info » **échoue** : son absence est l'info. Traitez une coupure de TR comme une alerte.
  - Diminishing Returns (9.6.0, [AUDIT]) : ils réduisent des modificateurs **identiques** cumulés **dans un même camp**. Côté tueur, la Haste du Jump Scare (4,5454 %, pouvoir) cumulée avec la Haste de Rampage (+1 % par token, jusqu'à 13 %, après un stun ou un aveuglement [WIKI]) serait réduite (HYPOTHESIS : ordre d'application non documenté). Conséquence pratique : aucune ; ne pas compter sur les DR pour « annuler » sa Haste.
- **Add-ons qui changent la décision** ([WIKI] + KB 550 / 552 / 553, LIVE) :
  - Iridescent Boat Motor (les fenêtres qu'il traverse en OE sont marquées 13 s ; un Jump Scare bloque toutes les fenêtres marquées 13 s) → le survivant ne planifie pas sa chase autour des fenêtres : il privilégie les palettes.
  - Orderly's Shoe (Haste du Jump Scare +5 s, soit 30 s) → le survivant casse la LOS plus longtemps après un Jump Scare avant de rejouer une boucle.
  - Deputy's Badge (en OE, passer à ≤ 2 m d'un gen le fait exploser : −5 % et régression ; si quelqu'un répare, skill check spécial, raté = −10 % en plus) → le survivant qui répare réussit le skill check spécial au lieu de lâcher le gen ; les gens non réparés sur sa route perdent 5 %.
  - Sauna Rock (après un Jump Scare, Exhausted **3 s** pour les survivants détectés, depuis 10.0.3) → un survivant accroupi depuis 2,5 s n'est pas détecté donc pas touché ; sinon, il garde son Sprint Burst pour après ces 3 s au lieu de le lancer au moment du Jump Scare.
  - Burnt Fuse (empalé par un pic de crochet : portes de sortie bloquées pour lui et tout survivant à ≤ 13 m, jusqu'à 5 s après le retrait) → en endgame, l'empalé retire le pic avant d'aller à la porte, et les autres restent à plus de 13 m de lui.
- **Implications de carte** (HEURISTIC) : fort sur les maps denses en palettes, fenêtres et murs cassables (points d'apparition). Plus faible dans les grandes zones vides.
- **Perks fréquentes** (seed-NRV) : Pain Resonance, Pop, Surge, Corrupt Intervention ; variante Spirit Fury, Enduring, Bamboozle, Tinkerer. Ses perks [WIKI] : Hex: Scared to Death (après avoir accroché 3 survivants différents : casser une palette en chase fait crier et Hindered −11/12/13 % pendant 3 s tous les survivants à ≤ 13 m), Silent Shadow (Undetectable 11/12/13 s à chaque crochet ; permanent une fois les portes alimentées), Rampage (1 token par palette ou mur cassé, max 13 ; stun de palette ou aveuglement → Haste +1 % par token pendant 13 s ; cooldown 30/25/20 s). → Contre Spirit Fury et Enduring, **ne misez pas sur un stun de palette tardif** ; cherchez la distance. Contre Rampage chargé, après un stun, quittez la boucle au lieu d'y rester (jusqu'à +13 % pendant 13 s). Contre Silent Shadow, en endgame, aucun TR : surveillez les corbeaux et l'aura des portes.
- **Écart avec le seed** : vitesse (4,4 / 8,0), TR, date, perks **OK** [WIKI + audit]. Détection 16 m, accroupi 2,5 s, Jump Scare à ≤ 16 m, Haste 25 s, cooldown 12 s, ×3 près d'un crochet, retrait 5 s, aura 26 m, épinglage 8 s : **OK** [WIKI]. « Traverse palettes, murs et fenêtres » : **IMPRÉCIS** (murs **cassables**). « Chaque pic … épinglage au mur possible » : **IMPRÉCIS** (épinglage seulement si le pic met au sol). Add-ons « ajustés en 10.0.2 » : **OK** (Deputy's Badge 4 → 2 m [KB 552]), mais le seed omet les ajustements 10.0.3 [KB 553] : **IMPRÉCIS**. Iridescent Boat Motor 13 s : **OK** [KB 550].
- **Sources** : [4] (Jason_Voorhees), [5] (KB 549, 550, 552, 553), [1], [2].

---
## 44. The Judgment (pas de nom réel) — archétype(s) : ranged | zone | alternative au crochet (Exile) | pression de gens passive (Heresy)

- **Version** : 10.1.0 « Chorus of Sin » (CHAPTER 41), 25/08/2026 (audit phase 0, VERIFIED_MULTI_SOURCE). Historique de la **fenêtre de courbe de Divine Light** (audit phase 0, registre, VERIFIED_MULTI_SOURCE) :
  - 10.1.1 (01/09/2026) : en Zealous, 0,3 → 0,6 s.
  - 10.1.2 (08/09/2026) : 0,8 s en Zealous + 0,3 s hors Zealous ; les survivants libérés de l'Exile réapparaissent à **≥ 32 m**.
  - **10.1.2a (17/09/2026, LIVE actuel)** : retour à **0,6 s en Zealous** et **suppression de la fenêtre hors Zealous**. Raison donnée par BHVR : « The Judgment's performance skyrocketed following HF2 ».
- **Données LIVE** :
  - 4,4 m/s, TR 32 m, **grande taille**, pouvoir « Will of the Gods », 44e tueur (audit phase 0).
  - **Exile** (audit phase 0, VERIFIED_PRIMARY) : compte comme un état de crochet **sans déclencher les perks de crochet**, et tue si le survivant a déjà 2 états. Seeds of Punishment : −3 s de timer. Exiled Souls : +0,5 s de protections de décrochage chacune (10 max).
  - **Heresy** (audit phase 0 ; notes 10.1.0 pour le principe, wiki.gg pour les valeurs) : s'obtient en étant touché par la Divine Light, en faisant **3 accroupissements ou gestes à moins de 10 m** (voir Questions ouvertes), ou en restant 45 s dans le seuil d'une porte de sortie. Effets : un skill check **Good** sur un gen fait −3 %, et la porte est bloquée 8 s pour l'hérétique **si l'Heresy est acquise à moins de 32 m d'une porte**. Elle se purge en **« Repent » à un Shrine** (décroissance 30 s).
  - Divine Light (seed-NRV, UNCERTAIN) : colonne contrôlée (rayon 0,6 m, 16 m de haut) jusqu'à 3 s puis projetée ; plus le contrôle est long, plus l'impact est rapide. Elle blesse et applique Heresy, et un survivant qui la frôle à 0,5 m est révélé. Cooldown 6 s.
  - Exile, détails (seed-NRV) : 2 sanctuaires sur 7 s'activent pour le sauvetage.
  - Zealous (seed-NRV) : 60 s après un exil, lumière +10 %, cast +50 %, cooldown −20 %.
- **Identification** (HEURISTIC) :
  - *Avant le reveal* : grande silhouette, 4,4 m/s. Des Shrines sur la map = Judgment.
  - *Pouvoir en action* : colonne de lumière visible qui suit une cible, son de charge puis de projection.
  - *Statuts* : Heresy sur vous ou un coéquipier (régression sur Good) ; un survivant qui disparaît au sol au lieu d'être accroché = Exile.
  - *Add-ons* : lumière qui rebondit sur des obstacles (Mirror of the Creators, seed), auras des hérétiques (Eyes of Gerhardt, seed).
  - *Stratégie probable* : Exile contre les équipes anti-tunnel (contourne BT et OTR : FACT pour « pas de déclenchement des perks de crochet »), puis chase en Zealous.
- **Ce qu'il cherche en chase** (HEURISTIC) : une LOS prolongée pour « suivre » la cible pendant le contrôle, puis une projection quand vous êtes engagé sur une trajectoire (sortie de palette, couloir). Depuis 10.1.2a, **hors Zealous la lumière projetée ne se courbe plus** (FACT audit ; lecture « pas de correction de trajectoire après projection » = HYPOTHESIS) : tout se joue pendant la phase de contrôle.
- **Tiles / structures** (HEURISTIC) :
  - *Favorables* : tiles hauts et fermés (casser la LOS comme contre la Nurse), bâtiments avec plafonds.
  - *Défavorables* : tiles bas et open.
  - *Distance* : pour une colonne proche, **traversez-la** : le délai d'impact laisse le temps, selon le seed ([SEED] UNCERTAIN, HEURISTIC — anciennement « EXPERT OPINION non re-sourcée »). Risque : traverser, c'est passer **par** la trajectoire ; un contrôle court (projection rapide) ou un Judgment qui attend ta traversée punit ce réflexe → ne le faire que si la colonne vient d'être posée et que le contrôle dure. Pour une colonne lointaine, sortez de son axe.
  - *Grande taille* : il voit plus haut que la moyenne au-dessus des tiles bas (HEURISTIC).
- **Mindgames propres** (HEURISTIC) : contrôle court pour une projection rapide et surprenante ; contrôle long qui suit puis projette à la sortie de tile ; en Zealous, courbe de 0,6 s pour rattraper un dodge tardif.
- **Counterplay** :
  - *Mécanique* : **dodge au moment de la projection, pas pendant le contrôle** (HEURISTIC). Base : depuis 10.1.2a, il n'y a plus de fenêtre de courbe hors Zealous (FACT, [AUDIT] VERIFIED_MULTI_SOURCE) ; lire cela comme « la trajectoire se fige à la projection » est une **HYPOTHESIS** (sens exact de la « fenêtre de courbe » non vérifié, Questions ouvertes n° 4). En **Zealous** (60 s après un exil selon le seed), la courbe de 0,6 s [AUDIT] rattrape les dodges tardifs : **cassez la LOS** au lieu d'esquiver (HEURISTIC). Contre un Judgment qui retarde la projection pour attendre ton dodge, varier le moment du dodge ou couper la LOS plutôt que de répéter le même timing.
  - *Positionnel* : ne vous accroupissez pas et ne faites pas de gestes à répétition près du tueur (ou des autres, voir Questions ouvertes), et **ne restez pas dans le seuil d'une porte de sortie** (45 s = Heresy ; porte bloquée 8 s si acquise à < 32 m).
  - *Macro* : un hérétique qui répare **fait régresser** le gen sur ses Good (−3 %) (FACT sur l'effet, [AUDIT] SS). Faut-il aller **Repent à un Shrine** ? Pas toujours — calcul (HEURISTIC sur la consigne) :
    - Skill checks : test 1 fois/s, 8 % de chance en réparation standard [AUDIT SS] → environ 1 toutes les 12,5 s. Un Good hérétique coûte 2,7 charges (3 % de 90) par rapport à un Good normal ; un Great ne coûte rien.
    - Pire cas (que des Good) : 0,08 × 2,7 ≈ 0,22 charge/s perdue, soit un gen solo ≈ 22 % plus lent. Avec moitié de Great : ≈ 0,11 charge/s (≈ 11 %).
    - Repent : la « décroissance 30 s » de l'audit suggère ≥ 30 s (sens exact à confirmer), plus le trajet T jusqu'au Shrine.
    - Seuil de rentabilité (pire cas) : 0,22 × R = 30 + T → R ≈ 140 s + 4,6 T de réparation solo **restant à faire par l'hérétique**. Avec moitié de Great, le seuil double (≈ 280 s + 9 T).
    - Donc : **Repent** si beaucoup de réparation reste (plus d'un gen et demi pour lui) et qu'un Shrine est proche ; **sinon**, continuer en visant les Great, ou passer aux tâches sans gen (soins, totems). Un hérétique qui rate beaucoup de Great a plus intérêt à Repent tôt.
  - *Fin de partie* : la porte n'est bloquée (8 s) que **pour l'hérétique** et **seulement si l'Heresy a été acquise à moins de 32 m d'une porte** [AUDIT SS]. Purger coûte ≥ 30 s + trajet, plus que 8 s de blocage → laisser un non-hérétique ouvrir la porte, ou accepter les 8 s si le tueur est loin ; purger seulement si l'hérétique est seul à pouvoir ouvrir et que le tueur est proche.
  - *Équipe / Exile* : dans l'Exile, esquivez les Seeds (−3 s de timer chacune) et collectez jusqu'à 10 âmes (+0,5 s de protection au décrochage chacune). Le sauveteur passe par les sanctuaires actifs (seed). Après libération, l'exilé réapparaît à ≥ 32 m (FACT, 10.1.2 ; l'audit ne signale pas de retour en arrière en 10.1.2a, qui ne touche que la courbe → présumé LIVE) : **le sauveteur ne peut pas couvrir l'exilé** ; chacun gère sa fuite. Calcul : 10 âmes × 0,5 s = +5 s de protection au maximum.
- **Habitudes punissables / erreurs** (HEURISTIC) :
  - Le teabag ou « crouch spam » par habitude, qui donne l'Heresy.
  - Attendre dans la porte ouverte pour narguer ou pour un BT (45 s = Heresy, et BT ne se déclenche pas sur un Exile).
  - Continuer à réparer en hérétique **sans viser les Great**, alors qu'il reste beaucoup à réparer et qu'un Shrine est proche (voir le calcul en Macro).
  - Compter sur Off the Record ou Borrowed Time contre un Exile (FACT [AUDIT] : perks de crochet non déclenchées ; BT/OTR comprises par interprétation).
- **Adaptations avancées** (HEURISTIC) :
  - Le counterplay anti-tunnel basé sur les perks de décrochage **échoue** contre l'Exile. Préférez des perks indépendantes du crochet : le seed propose Distortion, Boon: Shadow Step, Self-Preservation, Bound by Obsession, Blast Mine ([SEED] UNCERTAIN, HEURISTIC — anciennement « EXPERT OPINION non re-sourcée »). Nuance : c'est vrai seulement contre les exils ; un Judgment accroche aussi normalement, et les perks de décrochage y gardent leur valeur. « Pas de déclenchement des perks de crochet » est FACT [AUDIT] ; y ranger Borrowed Time et Off the Record (perks de décrochage) est une lecture forte mais une **interprétation**.
  - Les protections de décrochage basekit (Endurance + Haste 10 s + Elusive 10 s) s'appliquent-elles à une libération d'Exile ? Non vérifié (Questions ouvertes) : jouez comme si ce n'était pas le cas. Indice contraire (HYPOTHESIS) : les Exiled Souls donnent « +0,5 s de protections de décrochage » [AUDIT VERIFIED_PRIMARY], ce qui n'a de sens que si des protections s'appliquent à un moment (à la libération, ou au décrochage suivant).
  - Depuis 10.1.2a, la menace est **modulée par le Zealous** : après un exil, comptez environ 60 s de danger accru (seed), puis revenez à un jeu de dodge standard.
- **Add-ons qui changent la décision** (seed-NRV ; add-ons non couverts par l'audit) :
  - Chains of the Heretic (en Zealous, la lumière se dirige toujours vers vous) → en Zealous, **LOS obligatoire**, aucun dodge en open.
  - Mirror of the Creators (rebond sur 2 obstacles) → un mur ne protège plus complètement ; cherchez des structures fermées (bâtiments, murs en L profonds).
  - Obsidian Feather (auto-cast, contrôle bien plus rapide) → fenêtre de réaction plus courte, jouez la LOS plutôt que le dodge.
  - Eyes of Gerhardt (auras des hérétiques) → purgez la Heresy en priorité, un hérétique est traqué.
- **Implications de carte** (HEURISTIC) : fort sur les maps ouvertes à tiles bas. Les maps intérieures, qui coupent la LOS, sont moins favorables. La position des Shrines (7, seed) dicte les routes de purge et de sauvetage.
- **Perks fréquentes** (seed-NRV) : Lethal Pursuer, A Nurse's Calling (28/30/32 m en 10.1.0, audit), Nemesis, Celestial Witness ; variante Gearhead. Ses perks : Celestial Witness, Hex: Under Your Thumb, Lay Waste. → Contre A Nurse's Calling, **ne vous soignez pas à ≤ 32 m** d'un tueur possiblement proche. Contre Celestial Witness (Obsession révélée si > 40 m, seed), l'Obsession ne doit pas s'éloigner inutilement.
- **Écart avec le seed** :
  - Vitesse, TR, taille, date : **OK**.
  - Exile (−3 s, +0,5 s/âme, 10 âmes, mort à 2 états, pas de perks de crochet) : **OK**.
  - Hotfix 10.1.2a : **IMPRÉCIS**. « Fenêtre ramenée à 0,6 s en Zealous » est juste, mais le seed omet la **suppression de la fenêtre hors Zealous** et la réapparition des exilés à ≥ 32 m (10.1.2).
  - Heresy : **IMPRÉCIS**. Le seed omet la **purge par Repent au Shrine**, pourtant le counterplay principal, et la condition « < 32 m d'une porte » pour le blocage de 8 s. Il écrit « 3 gestes » au lieu de « 3 accroupissements ou gestes ».
  - Tier et NightLight : HEURISTIC / non vérifiés. Le « 55,9 % » NightLight a été mesuré sur une période qui inclut potentiellement la 10.1.2 (performance « skyrocketed » selon BHVR, avant le revert) : chiffre à ne pas utiliser tel quel (HYPOTHESIS).
- **Sources** : [1], [2].

---

## Claims

Calculs dérivés (audit pass 14) : 5 % de gen = 4,5 s solo / 2,65 s à deux ; Animatronic 0,4 m/s (hache) / 0,6 m/s (sans hache) repris ; Krasue Head 4,8 m/s = tueur 4,6 m/s + Bloodlust I (0,8 m/s repris, 10 m en 12,5 s) ; The First 0,4 m/s repris ; Slasher : 2 s × 4,0 m/s = 8 m contre un espacement de palettes ≥ 14-20 m ; Heresy : 0,08 × 2,7 ≈ 0,22 charge/s au pire, seuil de rentabilité du Repent ≈ 140 s + 4,6 T de réparation restante ; Exile : 10 × 0,5 = 5 s.

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| G6-01 | Animatronic sorti le 17/06/2025, nom réel William Afton | [1] | 9.0.0 | VERIFIED_MULTI_SOURCE (audit) |
| G6-02 | Animatronic : nerfs d'add-ons en 9.0.2, buffs en 9.6.0 (détail inconnu) | [1] | 9.0.2 / 9.6.0 | VERIFIED (audit, registre) |
| G6-03 | Animatronic 4,4 m/s avec hache / 4,6 sans, TR 24 m | [2] | ? | UNCERTAIN |
| G6-04 | Animatronic : batterie 100, 12/passage, 6/s caméra, reboot 45 s | [2] | 9.6.0 selon seed | UNCERTAIN |
| G6-05 | Krasue Body 4,6 m/s TR 32 m ; Head 4,8 m/s TR 40 m | [1] | 9.2.0 | VERIFIED_PRIMARY (notes via audit) |
| G6-06 | Krasue Head Form sans Bloodlust | [1] | 9.2.0 | VERIFIED_PRIMARY |
| G6-07 | Krasue : paliers Leech 100/200, champignons 5 (6 max), 3 s | [2] | ? | UNCERTAIN |
| G6-08 | The First 4,4 m/s, TR 32 m, sorti le 27/01/2026 | [1] | 9.4.0 | VERIFIED (audit) |
| G6-09 | The First : Worldbreaker phase 2 = 50 s | [1] | 9.5.0 | VERIFIED (audit) |
| G6-10 | The First : Upside Down 8 m/s, cooldown 35 s | [2] | ? | UNCERTAIN |
| G6-11 | Slasher 4,4 m/s, 8,0 m/s en Omnipresent Evil, TR 32 m ; Impaled | [1] | 10.0.0 | VERIFIED (audit) |
| G6-12 | Slasher : détection 16 m, accroupi 2,5 s, Jump Scare ≤ 16 m, Haste 25 s, CD 12 s | [2] | ? | UNCERTAIN |
| G6-13 | Judgment 4,4 m/s, TR 32 m, grand | [1] | 10.1.0 | VERIFIED (audit) |
| G6-14 | Exile : pas de perks de crochet, −3 s/Seed, +0,5 s/âme (10 max), tue à 2 états | [1] | 10.1.0 | VERIFIED_PRIMARY |
| G6-15 | Heresy : −3 % sur Good ; porte bloquée 8 s si acquise à < 32 m ; 45 s de seuil ; Repent au Shrine | [1] | 10.1.0 | STRONG_SECONDARY (wiki via audit) |
| G6-16 | Divine Light : courbe 0,6 s en Zealous, aucune hors Zealous | [1] | 10.1.2a | VERIFIED_MULTI_SOURCE |
| G6-17 | Exilés libérés réapparaissent à ≥ 32 m | [1] | 10.1.2 | VERIFIED (audit, registre) |
| G6-18 | Ghoul : Kagune Leap 14 m, 2 tokens / 4 s, Enragé 3 tokens / 2,5 s | [2] | 8.6.2 selon seed | UNCERTAIN |
| G6-19 | Ghoul : 3e Kagune Leap + add-on détruit instantanément une palette | [1] | ? | STRONG_SECONDARY (« à reconfirmer ») |
| G6-20 | Houndmaster 4,6 m/s, TR 32 m ; traîne 8 s (2 s avec Endurance), CD 3 s | [2] | 8.4.2 selon seed | UNCERTAIN |
| G6-21 | Stats BHVR (KB 540, sept. 2025-févr. 2026) : « kill Krasue (high) », « pick Ghoul (high) », sans chiffres | [1] | — | PRIMARY via audit (noms seulement) |

## Conflits

#### CONFLICT-B4G6-01 : Ghoul, statistique « plus de 60 % de kill en MMR élevé selon BHVR »
- Source A : seed (`ch8_killers.txt`, fiche 39), sans source précise.
- Source B : audit phase 0 (tableau des publications statistiques BHVR) : la KB 540 ne donne **aucun chiffre en texte** et cite le Ghoul pour le **pick rate** high MMR ; le kill rate high MMR mis en avant est la Krasue.
- Hypothèse : confusion pick/kill, ou chiffre tiré d'une infographie non lue.
- Résolution : UNRESOLVED (retirer le chiffre du guide tant qu'il n'est pas sourcé).

#### CONFLICT-B4G6-02 : The First « n°2 en kill rate MMR élevé selon BHVR »
- Source A : seed, fiche 42.
- Source B : audit phase 0 : kill rates cités = Krasue (high), Lich (broad) ; The First n'est pas mentionné et n'est sorti que le 27/01/2026.
- Hypothèse : extrapolation ou source postérieure non identifiée.
- Résolution : UNRESOLVED.

#### CONFLICT-B4G6-03 : Ghoul, TR 40 m
- Source A : seed (40 m).
- Source B : connaissance du modèle (32 m ?), UNCERTAIN.
- Résolution : UNRESOLVED (à vérifier sur le wiki quand le quota le permettra).

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Animatronic, nom réel | Springtrap | William Afton (audit) | IMPRÉCIS |
| Animatronic, historique | Seulement 9.6.0 cité | 9.0.2 nerfs d'add-ons + 9.6.0 buffs (audit) | IMPRÉCIS |
| Krasue, vitesses / TR | 4,6/32 Body, 4,8/40 Head | Idem (audit, notes 9.2.0) | OK |
| Krasue, Bloodlust | Pas de Bloodlust | Head Form exclue (audit) | OK (préciser « Head Form ») |
| Krasue, hotfix 9.2.2 Leech | Leech retiré au crochet | Absent du résumé 9.2.2 de l'audit | NON VÉRIFIABLE |
| Krasue, n°1 kill rate BHVR | N°1 high MMR | « kill Krasue (high) », sans chiffre (audit) | OK sur le fond / classement non chiffré |
| The First, vitesse / TR / date | 4,4 / 32 / janv. 2026 | Idem (audit) | OK |
| The First, phase 2 Worldbreaker | 50 s (9.5.0) | Idem (audit) | OK |
| The First, n°2 kill rate BHVR | N°2 | Non trouvé (audit) | NON VÉRIFIABLE (douteux) |
| Slasher, vitesse / TR / date / perks | 4,4 / 8,0 / 32 / 16/06/2026 | Idem (audit) | OK |
| Slasher, add-ons 10.0.2 | Deputy's Badge nerfé | 10.0.2 : ajustements d'add-ons, sans détail (audit) | OK sur le principe, détail NON VÉRIFIABLE |
| Judgment, stats de base | 4,4 / 32 / grand / 25/08/2026 | Idem (audit) | OK |
| Judgment, hotfix 10.1.2a | 0,6 s en Zealous | + suppression de la fenêtre hors Zealous (audit) | IMPRÉCIS (omission) |
| Judgment, Heresy | 3 gestes à 10 m ; porte bloquée 8 s | 3 accroupissements ou gestes < 10 m ; 8 s si acquise < 32 m ; purge Repent au Shrine (audit) | IMPRÉCIS (omission de la purge) |
| Judgment, Exile | −3 s, +0,5 s/âme, 10, mort à 2 états, pas de perks de crochet | Idem (audit) | OK |
| Judgment, réapparition des exilés | Non mentionnée | ≥ 32 m depuis 10.1.2 (audit) | IMPRÉCIS (omission) |
| Ghoul, > 60 % kill BHVR | Oui | Aucun chiffre ; Ghoul = pick rate (audit) | NON ÉTAYÉ, pas prouvé faux (infographie non lue ; CONFLICT-B4G6-01 ; aligné sur BATCH_2_4_SYNTHESIS) |
| Ghoul, 3e bond + add-on casse une palette | Iridescent Eye Patch | Liste wiki.gg Pallets (audit, STRONG_SECONDARY) | OK |
| Ghoul, TR 40 m, nerf 8.6.2, magnétisme 9.5.0 | — | Non couvert | NON VÉRIFIABLE |
| Houndmaster, toutes valeurs | — | Non couvert par l'audit | NON VÉRIFIABLE |
| Orientation générale des 7 fiches | ~50 % conseils tueur | — | Lacunaire côté survivant (corrigé ici par l'analyse) |

## Questions ouvertes

1. Toutes les valeurs de pouvoir marquées seed-NRV sont à re-vérifier (wiki.gg) dès que le quota WebSearch est rétabli, en priorité Houndmaster et Ghoul, qui ne sont pas couverts par l'audit.
2. Judgment : les « 3 accroupissements ou gestes à moins de 10 m » se comptent-ils à 10 m **du tueur** ou **d'un autre survivant** ? Le counterplay en dépend.
3. Judgment : une libération d'Exile déclenche-t-elle les protections de décrochage basekit (Endurance + Haste 10 s + Elusive 10 s, 10.1.0) ?
4. Judgment : la « fenêtre de courbe » est-elle la durée pendant laquelle la trajectoire reste modifiable **après** la projection ? (lecture adoptée ici, HYPOTHESIS).
4b. Judgment : que signifie « décroissance 30 s » pour le Repent (durée de l'action au Shrine, ou décroissance progressive) ? Le calcul de rentabilité du Repent (Macro) en dépend. L'Heresy a-t-elle d'autres effets que −3 % sur Good et le blocage de porte ?
5. Krasue : le Leech est-il remis à zéro au crochet (hotfix 9.2.2 selon le seed) ?
6. Animatronic : quels add-ons ont été nerfés en 9.0.2 et quelles valeurs ont été buffées en 9.6.0 (batterie, rappel de hache) ?
7. Slasher : détail des ajustements d'add-ons 10.0.2 / 10.0.3.
8. Ghoul : le soin retire-t-il la Kagune Mark ? Le TR est-il de 32 ou 40 m ?
9. Houndmaster : le chien franchit-il les fenêtres en Chase Command ? Quelles sont les conditions exactes de libération pendant la traîne ?
10. Diminishing Returns : la Haste du Jump Scare (pouvoir) et celle de Rampage (perk) sont-elles réduites entre elles (même rôle, modificateur identique) ?

## Sources

[1] Audit phase 0, `kb/seed/audit_phase0.txt` (registre des patchs 9.0.0 → 10.1.2a, tables 1.x, publications statistiques BHVR). Il cite lui-même les notes officielles BHVR (KB 551, 556, 558) et wiki.gg (The Judgment, Pallets, Patches), **non consultées directement dans ce lot**. Lecture locale le 27/09/2026 (pas via WebSearch).
[2] Guide seed, `kb/seed/ch8_killers.txt` l. 1664-1953 (brouillon non fiable). Lecture locale le 27/09/2026.
[3] Connaissance du modèle (antérieure à mi-2026), UNCERTAIN. Aucune URL, ce n'est pas une source vérifiable.

Aucune source web n'a été consultée dans ce lot (quota WebSearch épuisé). Aucune URL n'est citée pour ne pas inventer de source.
