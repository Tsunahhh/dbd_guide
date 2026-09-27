# Lot 4 — Fiches tueur vues du survivant, groupe 6 (tueurs 38 à 44)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) — voir kb/audit/pass14_lot4_g4-g6.md**
>
> Rappels de l'audit : toutes les consignes sont des **HEURISTIC** (option par défaut, à varier contre un tueur qui l'anticipe) ; l'étiquette EXPERT OPINION non sourcée a été **requalifiée** (HEURISTIC, ou [SEED] UNCERTAIN quand l'idée vient du seed) ; Krasue, The First, The Slasher et The Judgment ont été recoupés avec le registre de patchs de l'audit (9.2.0 → 10.1.2a) ; les lignes « Équipe » supposant des rôles demandent le vocal (SWF).

Couverture web : 0 élément vérifié par recherche / 7 non re-vérifiés (quota WebSearch de la session épuisé, 200/200). Valeurs reprises de l'audit phase 0 quand il les couvre (surtout Krasue, The First, Slasher, Animatronic, Judgment) ; tout le reste vient du seed ou de la connaissance du modèle, en UNCERTAIN.

- Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 (15-21/09/2026) **non LIVE**, jamais utilisé ici comme valeur LIVE. Mode 2v8 exclu.
- Périmètre : Houndmaster, Ghoul, Animatronic, Krasue, First, Slasher, Judgment (seed `kb/seed/ch8_killers.txt` l. 1664-1953).
- **Méthode (dérogation)** : aucune recherche web n'a été faite. Trois sources seulement :
  1. **audit phase 0** (`kb/seed/audit_phase0.txt`) : cité avec la confiance qui y figure (VERIFIED_PRIMARY / VERIFIED_MULTI_SOURCE / STRONG_SECONDARY).
  2. **seed** : noté « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) », confiance UNCERTAIN.
  3. **connaissance du modèle** : notée « connaissance du modèle (antérieure à mi-2026), UNCERTAIN ».
- Le cœur de la valeur de ce fichier est l'**analyse survivant** (identification, counterplay par couche, erreurs, adaptations). Elle est étiquetée **HEURISTIC** (raisonnement à partir de la mécanique). La version initiale employait aussi **EXPERT OPINION** pour un « consensus communautaire tel que le modèle le connaît » : ce n'est pas le sens de §41 (conclusion d'un joueur expert identifiable), et aucun guide expert n'a été lu → ces passages sont **requalifiés en HEURISTIC** (audit pass 14), ou en **[SEED] UNCERTAIN** quand l'idée vient du guide seed, qui n'est pas une source experte.
- Étiquettes : FACT (mécanique vérifiée par l'audit) / HEURISTIC / SITUATIONAL / HYPOTHESIS. Une valeur [AUDIT] STRONG_SECONDARY « à reconfirmer » est **probable**, pas un FACT ferme. Les tiers et les notes de menace sont **HEURISTIC**.
- Abréviations : TR = terror radius ; LOS = ligne de vue ; « seed-NRV » = seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; « CM » = connaissance du modèle (antérieure à mi-2026), UNCERTAIN.

### Rappels système utiles pour ce groupe (audit phase 0)

- Protections de décrochage LIVE 10.1.0 : Endurance + 10 % Haste pendant 10 s + Elusive 10 s (audit phase 0, patch 10.1.0, VERIFIED_PRIMARY via notes). L'exception « ne s'applique pas une fois les générateurs alimentés » suit l'Elusive dans le texte de l'audit : ambigu (Elusive seul, ou toutes les protections ?) → ne pas compter sur l'Elusive en endgame ; pour le reste, UNCERTAIN.
- Anti-facecamp : zone 16 m, grâce 7 s, multiplicateurs 1× / 2× / 4× (audit phase 0, 9.3.0, VERIFIED_PRIMARY).
- Diminishing Returns (9.6.0) : les modificateurs identiques issus de **Powers**, Items, Perks et Offerings se réduisent (100 / 50 / 25 / 12,5 / 5 %). Les add-ons ne sont pas concernés (audit phase 0, VERIFIED_MULTI_SOURCE). Ça touche la Haste de pouvoir (Slasher) cumulée avec des perks de Haste (HYPOTHESIS sur l'interaction exacte, liste des modificateurs non consultée par l'audit).
- Bloodlust : la Head Form de la Krasue en est exclue depuis la 9.2.0 (audit phase 0, VERIFIED_PRIMARY).

---

## 38. The Houndmaster (Portia Maye) — archétype(s) : anti-loop | ranged (chien) | info

- **Version** : sortie 2024 (seed-NRV). Le seed cite un « buff 8.4.2 » (cooldown 3 s), antérieur au registre de l'audit (9.0.0 →) : NON VÉRIFIABLE. **Aucune modification trouvée dans le registre 9.0.0 → 10.1.2a de l'audit** (ce qui n'exclut pas une modification absente du résumé). Statut : LIVE, valeurs UNCERTAIN.
- **Données LIVE** :
  - Vitesse 4,6 m/s (115 %) ; ~6 m/s en suivant le chien en Search Command. TR 32 m. Taille moyenne. seed-NRV, UNCERTAIN.
  - Pouvoir « Scent of Blood », chien Snug (seed-NRV) :
    - **Chase Command** : Snug fonce sur une trajectoire dirigée par Portia. En cas de prise, le survivant est traîné vers Portia (jusqu'à 8 s, 2 s s'il a Endurance), Hindered 10 % et Incapacitated. Un survivant traîné contre une palette se libère. Cooldown 3 s. Toutes valeurs UNCERTAIN.
    - **Search Command** : Snug patrouille vers un point, avec une berceuse (32 m) et du Killer Instinct sur les survivants détectés. Portia va plus vite dans son sillage. UNCERTAIN.
    - **Houndsense** : bruits de douleur et traces de sang amplifiés, et Deep Wound pour les blessés. UNCERTAIN.
  - Complément (CM) : le chien ne vaulte pas les fenêtres en Chase Command et il est arrêté par les palettes posées et les murs. Sa course est un engagement : Portia ne peut pas le rappeler instantanément.
- **Identification** (HEURISTIC) :
  - *Avant le reveal* : 4,6 m/s, TR 32 m standard, rien de spécifique. Une **berceuse éloignée du TR** ou un **Killer Instinct sans tueur visible** signale une Search Command.
  - *Pouvoir en action* : aboiements, chien qui court en ligne droite devant Portia, ou chien seul qui patrouille.
  - *Add-ons observables* : un chien nettement plus rapide (Leather Harness), du Killer Instinct sans berceuse (add-on Undetectable, seed : Iridescent Wheel Handle).
  - *Stratégie probable* : Houndsense + Deep Wound pousse à l'usure et au slug léger. Le « traîner vers soi » facilite le tunnel du survivant qu'on vient de décrocher en terrain ouvert (HEURISTIC ; anciennement « EXPERT OPINION », non sourcée).
- **Ce qu'il cherche en chase** (HEURISTIC) : une **ligne droite** entre le chien et vous. Il la trouve aux sorties de tile, dans les couloirs, en terrain ouvert et dans les longs murs sans ouverture. Le chien remplace une hachette à portée moyenne, et la prise ramène la cible pour une attaque de base garantie.
- **Tiles / structures** (HEURISTIC) :
  - *Favorables* : tiles avec **beaucoup d'angles courts** (jungle gym, shack) où toute ligne droite est vite coupée (les « 5-6 m » de la version initiale sont un ordre de grandeur HEURISTIC : la portée de course du chien n'est pas connue). Palettes « safe » : une palette posée bloque le chien (seed et CM, UNCERTAIN).
  - *Défavorables* : longues lignes (murs L sans fenêtre, bords de map, champs de maïs ouverts) et tiles où l'on court en ligne droite avant de tourner.
  - *Fenêtres vs palettes* : les fenêtres sont de bonnes coupures si le chien ne les franchit pas (CM, UNCERTAIN). Les palettes sont plus sûres, car une palette posée bloque durablement le chien.
  - *Verticalité* : peu d'impact direct. All-Shaking Thunder (sa perk) récompense les sauts de hauteur (SITUATIONAL).
- **Mindgames propres** (HEURISTIC) : envoyer le chien d'un côté d'une boucle pendant que Portia prend l'autre (le seed parle de « tirer le chien autour de la boucle ») ; garder la commande pour votre sortie de tile au lieu de la lancer tout de suite ; feinter le lancer pour vous faire tourner.
- **Counterplay** :
  - *Mécanique* : quand le chien est lancé, **décalez-vous latéralement tard** et mettez un obstacle entre la trajectoire et vous. Une trajectoire engagée se corrige mal (HEURISTIC). Si vous êtes pris, gardez en tête qu'une palette sur la trajectoire de traîne vous libère (seed-NRV) : se faire prendre **près** d'une palette coûte moins cher qu'en terrain ouvert.
  - *Positionnel* : restez « collé » aux structures et ne traversez de l'open qu'à distance de chasse suffisante (HEURISTIC).
  - *Macro* : réparez les gens loin de sa route de patrouille. Une berceuse de chien sur vous veut dire « je suis repéré » (Killer Instinct, seed) : en général, quittez le gen plutôt que de le finir. Exception chiffrée : 5 % = 4,5 s solo, ≈ 2,65 s à deux [calcul, AUDIT 90 charges / coop 85 %] — si Portia n'est ni en vue ni dans le TR, finir ces 5 % coûte souvent moins que revenir plus tard. Soignez tôt à cause de Houndsense et du Deep Wound (HEURISTIC).
  - *Équipe* : ne décrochez pas en terrain ouvert quand Portia est à moyenne distance, le chien punit les décrochages non couverts (HEURISTIC).
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : le « hold W » en ligne droite ; quitter un tile vers l'open trop tôt ; ignorer le Killer Instinct de la patrouille ; croire que l'Endurance suffit (elle raccourcit la traîne à 2 s mais ne l'annule pas, seed-NRV).
- **Adaptations avancées** (HEURISTIC / SITUATIONAL) :
  - Contre un Portia qui garde le chien « en réserve », jouez le tile le plus longtemps possible et forcez-le à le lancer sur une trajectoire courte.
  - Sur les maps très ouvertes, prévoyez la prochaine structure avant de quitter la vôtre : c'est un « pre-running » calculé pour offrir le moins de ligne droite possible (« ~8 m » dans la version initiale : chiffre sans source, ordre de grandeur seulement).
  - Le counterplay habituel des tueurs M1 (« courir loin pour étirer la chase ») **échoue** ici : la distance en open est précisément sa portée idéale.
- **Add-ons qui changent la décision** (seed-NRV, UNCERTAIN) :
  - Leather Harness (chien +20 %) → décalez-vous **plus tôt** et ne comptez plus sur un dodge tardif en open.
  - Marlinspike (Houndsense à 20 m autour du survivant attrapé) → écartez-vous de la chase en cours au lieu de rester « en soutien » à 15 m.
  - Iridescent Wheel Handle (Undetectable pendant les recherches) → la berceuse du chien n'est plus fiable, surveillez le Killer Instinct et les corbeaux.
- **Implications de carte** (HEURISTIC) : fort sur les maps ouvertes aux longues lignes (Coldwind, Red Forest selon la génération). Plus faible sur les maps intérieures denses en angles, avec un bémol sur les longs couloirs (Hawkins, RPD, Gideon).
- **Perks fréquentes à anticiper** (seed-NRV + HEURISTIC) : Pain Resonance, Surge, Dead Man's Switch, Barbecue & Chili, All-Shaking Thunder. → Contre Dead Man's Switch **suspecté** (le gen **lâché** juste après un crochet se bloque, SS) : après un crochet, faire le premier lâcher sur un gen **peu avancé**, ou reprendre sans stop-and-go (cohérent avec `PERK_DEDUCTION.md`) ; « relâcher les gens » par défaut à chaque crochet coûte du temps pour rien si la perk n'est pas là. Évitez de rester groupés sur un gen (HEURISTIC).
- **Écart avec le seed** : NON VÉRIFIABLE sur toutes les valeurs. L'orientation du seed (4 conseils tueur, 4 survivant) est lacunaire côté survivant.
- **Sources** : [2], [3].

---

## 39. The Ghoul (Ken Kaneki) — archétype(s) : mobilité | anti-loop | M1 (après marquage)

- **Version** : DLC Tokyo Ghoul, 2025 (seed-NRV). Le seed cite un « nerf 8.6.2 » (portée 14 m) et un ajustement de magnétisme en 9.5.0. **Le registre de l'audit (9.5.0) ne mentionne pas le Ghoul** dans son résumé : NON VÉRIFIABLE. L'audit liste le Ghoul comme « pick (high) » dans les statistiques BHVR KB 540 (sept. 2025-févr. 2026, **noms seulement, sans chiffres**). Statut LIVE, valeurs UNCERTAIN.
- **Données LIVE** :
  - 4,6 m/s. TR 40 m selon le seed (CM : TR plutôt 32 m, UNCERTAIN, voir Questions ouvertes). Taille moyenne. seed-NRV.
  - Pouvoir « One-Eyed Terror » (seed-NRV, UNCERTAIN) :
    - **Kagune Leap** : 2 tokens (recharge 4 s chacun), cible (surface ou survivant) jusqu'à 14 m, enchaînement dans une fenêtre de 5 s. Les bonds franchissent les fenêtres et les palettes tombées. Un bond sur un survivant fait un grab-attack : blessure, Deep Wound selon le seed, et **Kagune Mark**. Un survivant marqué ne peut plus être attrapé au bond.
    - **Enraged Mode** après un grab : 3 tokens (recharge 2,5 s), vaults plus rapides, casser une palette coûte 2 tokens. Il dure tant qu'une marque existe, puis 40 s après le retrait de la dernière (50 s avec grab parfait).
  - Probable, pas FACT ferme (audit phase 0, wiki.gg Pallets, STRONG_SECONDARY, « liste à reconfirmer ») : le Ghoul figure parmi les destructions instantanées de palette via le 3e Kagune Leap **avec add-on**.
- **Identification** (HEURISTIC) :
  - *Avant le reveal* : 4,6 m/s ; l'arrivée est rapide et bruyante (bonds). Voir un tueur « tiré » vers un mur ou un toit = Ghoul.
  - *Pouvoir en action* : trajectoires en arc vers des surfaces, grab au contact.
  - *Add-ons* : palette tombée détruite au 3e bond (Iridescent Eye Patch selon le seed).
  - *Stratégie probable* : snowball en début de partie (un grab gratuit par chase), puis pression par blessures multiples. Le tunnel est facilité par sa mobilité (HEURISTIC ; anciennement « EXPERT OPINION », non sourcée).
- **Ce qu'il cherche en chase** (HEURISTIC) : une LOS sur vous à ≤ 14 m en dehors d'un tile. **Le premier coup est quasi garanti** si vous êtes surpris en open. Ensuite, contre un survivant marqué, il redevient un M1 à 4,6 m/s avec des vaults accélérés et des bonds par-dessus les palettes posées.
- **Tiles / structures** (HEURISTIC) :
  - *Favorables* : tiles hauts et fermés (murs pleins, shacks) qui coupent la LOS ; zones à plafond bas où les bonds sur surfaces sont maladroits (HEURISTIC, non sourcée ; en tension avec « un étage lui profite » ci-dessous : le plafond bas gêne la visée, l'étage ouvre des bonds verticaux).
  - *Défavorables* : l'open, les tiles bas (rochers, petites palettes), les fenêtres isolées (il les traverse au bond).
  - *Palettes* : **ne comptez pas sur une palette posée pour gagner une boucle** s'il lui reste des tokens, il la saute. Posez-la tard, pour le stun ou pour forcer une dépense, pas pour boucler autour (HEURISTIC). En Enragé, la casser lui coûte 2 tokens (seed).
  - *Verticalité* : un étage lui profite (bonds vers le haut ou le bas). Un toit n'est pas un refuge.
- **Mindgames propres** (HEURISTIC) : viser une surface derrière vous plutôt que vous-même pour couper le tile ; retenir un token pour la sortie de palette ; feinter le bond.
- **Counterplay** :
  - *Mécanique* : **cassez la LOS au moment où il vise**. Esquive latérale tardive au bond (le seed parle d'une visée moins magnétique après nerfs, UNCERTAIN). Après la marque, jouez-le comme un M1 et **dépensez ses tokens** (faites-le bondir inutilement), puis exploitez sa recharge (HEURISTIC).
  - *Positionnel* : ne réparez pas en open visible de loin et gardez un tile fermé à proximité (« ≤ 10 m » : ordre de grandeur HEURISTIC dérivé de la portée de bond de 14 m [SEED] UNCERTAIN, pas une distance de sécurité mesurée).
  - *Macro* : sa mobilité rend la pression 3-gen et le « gen kick » mobiles, donc complétez des gens espacés. Un soin rapide des survivants marqués réduit l'Enragé si le soin retire la marque, comme l'affirme le seed (UNCERTAIN).
  - *Équipe* : il arrive vite sur les décrochages. Décrochez quand il est engagé loin, pas quand il vient de se déplacer au bond (HEURISTIC).
- **Habitudes punissables / erreurs** (HEURISTIC) : traverser l'open « parce que le TR est loin » (il couvre 14 m par bond, en chaînes) ; compter sur une fenêtre isolée ; poser une palette tôt en pensant l'avoir bloqué.
- **Adaptations avancées** (HEURISTIC) :
  - Le counterplay classique « tenir la boucle de palette » **échoue** tant qu'il a des tokens. Il faut penser en **fenêtres de recharge** (≈ 4 s hors Enragé, ≈ 2,5 s en Enragé selon le seed).
  - Contre un Ghoul qui « garde » les marques pour prolonger l'Enragé, un survivant marqué et en bonne position peut accepter d'étirer la chase plutôt que de chercher un soin risqué (SITUATIONAL).
- **Add-ons qui changent la décision** (seed-NRV) :
  - Iridescent Eye Patch (3e bond en Enragé = palette tombée détruite ; recoupe l'audit, STRONG_SECONDARY) → **une palette posée n'est plus une zone sûre en Enragé**. Enchaînez vers le tile suivant au lieu de rester.
  - Hinami's Umbrella (bonus de grab parfait) → Enragé plus long ; décrochez et soignez plus tôt, évitez de laisser traîner une marque.
  - Yamori's Mask (révélation > 40 m en accrochant en Enragé) → ne vous éloignez pas « par sécurité » à l'autre bout de la map pendant un crochet.
- **Implications de carte** (HEURISTIC) : très fort en open et sur les maps à plusieurs étages. Plus faible sur les maps intérieures denses à murs hauts, même si la verticalité intérieure l'aide.
- **Perks fréquentes** (seed-NRV) : Pain Resonance, Surge, Friends 'til the End, Brutal Strength / Lethal Pursuer. → Anticipez un repérage de début de partie (Lethal Pursuer) et un premier grab rapide.
- **Écart avec le seed** : TR 40 m NON VÉRIFIABLE (doute CM). « Plus de 60 % de kill en MMR élevé selon BHVR » : **IMPRÉCIS / non étayé**, car l'audit relève que la publication BHVR citée ne donne pas de chiffre et cite le Ghoul pour le **pick rate** high MMR, pas pour le kill rate. Le reste est NON VÉRIFIABLE.
- **Sources** : [1], [2], [3].

---

## 40. The Animatronic (William Afton / Springtrap) — archétype(s) : ranged | mobilité (portes) | furtif | info

- **Version** : 9.0.0 « Five Nights at Freddy's », 17/06/2025 (audit phase 0, VERIFIED_MULTI_SOURCE via registre). **9.0.2** (02/07/2025) : nerfs d'add-ons. **9.6.0** (28/04/2026) : buffs, détail non listé dans l'audit. Statut LIVE. Le nom réel est **William Afton**, Springtrap étant le nom de l'animatronique (audit phase 0).
- **Données LIVE** (seed-NRV sauf mention) :
  - 4,4 m/s hache en main, 4,6 m/s sans la hache. TR 24 m. Taille moyenne. UNCERTAIN.
  - Pouvoir « Fazbear's Fright » :
    - **Fire Axe** : windup 1 s, 16 m, 30 m/s. Sur un survivant sain : perte d'un état de santé, hache plantée, Broken + Oblivious jusqu'au retrait (5 s par un allié, 8 s seul), ou récupération par le tueur au grab (4,2 s). Hache plantée dans le décor : zone de révélation de 2 m pendant 15 s. Rappel 6 s depuis le décor, 8 s depuis un survivant (attribué à 9.6.0 par le seed). UNCERTAIN.
    - **Security Doors** : 7 portes. Le tueur les traverse et gagne 20 s d'Undetectable. Les survivants peuvent aussi s'en servir, plus lentement, et consulter les caméras (4 s d'observation = Undetectable retiré 10 s au tueur). Batterie commune de 100 : 12 par passage, 6/s de caméra, reboot 45 s à 0. **Jumpscare** si le tueur entre dans une porte occupée. Une hache lancée sur une porte la désactive pour les survivants. UNCERTAIN.
- **Identification** (HEURISTIC) :
  - *Avant le reveal* : TR court (24 m, seed) et **Undetectable fréquent** après usage de porte. Des portes de sécurité sur la map = Animatronic (objet de carte spécifique).
  - *Pouvoir en action* : hache en main ou pas (vitesse), hache plantée dans le décor (zone de révélation), grésillement des caméras.
  - *Add-ons* : hache qui traverse les portes, palettes bloquées autour d'une porte (voir ci-dessous).
  - *Stratégie probable* : Broken prolongé (hache plantée) = snowball ; embuscades Undetectable par les portes.
- **Ce qu'il cherche en chase** (HEURISTIC) : un lancer de hache à la sortie de tile, puis une chase contre un survivant **Broken** (pas de soin) ; ensuite, récupérer la hache.
- **Tiles / structures** (HEURISTIC) :
  - *Favorables* : tiles hauts qui coupent la LOS (anti-projectile classique, comme contre la Huntress). Zones éloignées des portes.
  - *Défavorables* : longues lignes droites, tiles bas, zones près d'une porte (arrivée surprise, add-ons de porte).
  - *Fenêtres vs palettes* : classiques. Le projectile punit les vaults prévisibles en fin de boucle.
- **Mindgames propres** (HEURISTIC) : faux lancer (windup de 1 s annulé) ; sortie de porte Undetectable juste à côté d'un gen ; hache plantée près d'un gen ou d'une porte comme piège d'info.
- **Counterplay** :
  - *Mécanique* : esquive latérale **au moment du relâchement**, pas au début du windup. Surveillez sa vitesse : **sans hache, il est plus rapide mais sans projectile**. Calcul ([SEED] 4,4 / 4,6 m/s contre 4,0 [AUDIT]) : avec la hache il reprend 0,4 m/s (10 m en 25 s), sans la hache 0,6 m/s (10 m en 16,7 s) → sans hache, tu **perds** de la distance plus vite en ligne droite ; ce n'est pas le moment de « gagner de la distance » en open, mais de **jouer la boucle** (plus de menace à distance, les tiles valent comme contre un M1) (HEURISTIC).
  - *Positionnel* : évitez de réparer dans le champ d'une porte récemment utilisée et ne restez pas dans une zone de hache plantée (révélation).
  - *Macro* : les caméras sont une **ressource d'équipe partagée avec le tueur** (batterie commune). Ne les consommez pas « pour voir », seulement quand l'info change une décision (chase en cours, tueur qui porte quelqu'un, sauvetage). Retirez la hache plantée au plus vite : un survivant Broken est une cible de tunnel (seed + HEURISTIC).
  - *Équipe* : un allié qui retire la hache met 5 s contre 8 s seul (seed). En SWF, le plus proche va retirer la hache pendant que le tueur est engagé ailleurs.
- **Habitudes punissables / erreurs** (HEURISTIC) : entrer dans une porte quand le tueur peut y entrer aussi (jumpscare) ; consommer la batterie au point de bloquer toute l'équipe (reboot 45 s) ; garder la hache plantée pour « finir le gen ».
- **Adaptations avancées** (HEURISTIC) : l'info TR habituelle **échoue** ici (TR court et Undetectable de sortie de porte). Compensez par l'audio des portes, Kindred ou Alert, et le repérage des portes proches de votre gen. Face à un tueur qui campe les portes, les survivants perdent leur mobilité par porte : utilisez-les seulement en phase de chase sûre.
- **Add-ons qui changent la décision** (seed-NRV ; attention, nerfs d'add-ons en 9.0.2 et buffs en 9.6.0 non détaillés) :
  - Iridescent Remnant (palettes debout bloquées à 32 m autour de la porte empruntée, 12 s) → après une sortie de porte, **ne comptez pas sur les palettes proches**, fuyez vers des fenêtres ou des tiles de LOS.
  - Access Panel (la hache traverse les portes) → une porte n'est plus un bouclier contre le lancer.
  - Faz-Coin (hache avec TR, Undetectable 10 s) → écoutez l'origine sonore : le TR peut être celui de la hache, pas du tueur.
- **Implications de carte** (HEURISTIC) : sa map (Freddy Fazbear's Pizza) est intérieure. Sur les maps ouvertes, la hache est plus menaçante ; sur les maps denses, les portes compensent sa vitesse.
- **Perks fréquentes** (seed-NRV) : Pain Resonance, Pop Goes the Weasel (20 % au total depuis 9.5.0, audit), Barbecue & Chili, Grim Embrace. Ses perks : Help Wanted, Phantom Fear, Haywire. → Contre Haywire (seed : la porte régresse si l'ouverture s'arrête après 80 %), **ne lâchez pas une porte de sortie à 80 %+** sans nécessité.
- **Écart avec le seed** : nom réel « Springtrap » **IMPRÉCIS** (audit : William Afton). Date et statut 9.0.0 OK. Valeurs du pouvoir NON VÉRIFIABLES. Le seed omet les nerfs 9.0.2 et les buffs 9.6.0 : IMPRÉCIS (les add-ons cités ont pu changer).
- **Sources** : [1], [2].

---
## 41. The Krasue (Burong Sukapat) — archétype(s) : ranged | mobilité | anti-loop | statut (Leech)

- **Version** : 9.2.0 « Sinister Grace » (CHAPTER 37), 23/09/2025 (audit phase 0, VERIFIED via registre). Le seed cite un hotfix 9.2.2 (« Leeched retiré au crochet »), mais le résumé 9.2.2 de l'audit ne mentionne que Off the Record : NON VÉRIFIABLE. Statut LIVE.
- **Données LIVE** :
  - Body Form 4,6 m/s, TR 32 m ; Head Form 4,8 m/s, TR 40 m (**audit phase 0, notes 9.2.0**). Headlong Flight 7 m/s (seed-NRV). Taille moyenne (seed-NRV).
  - **La Head Form n'a pas de Bloodlust** (audit phase 0, VERIFIED_PRIMARY).
  - Pouvoir « Unbodied Flesh » (seed-NRV, UNCERTAIN) :
    - **Corps** : Regurgitate, une glande projectile qui rebondit puis se divise en 4 mini-glandes à tête chercheuse (+100 charges de Leech ; cooldown 2,5 s).
    - **Tête** : Headlong Flight (12 charges, seuil 25 %) et Intestinal Whip, un fouet qui ignore brièvement les obstacles (+34 charges, ne blesse qu'à partir de Leeched I). La tête vaulte palettes et fenêtres au lieu de les casser. Stun de palette 2,5 s.
    - **Leeched** : palier I à 100 (le fouet blesse, la jauge monte passivement), palier II à 200 (blessé + Broken).
    - **Champignons** : 5 au départ, 6 au max ; les manger (3 s) fait baisser la jauge.
- **Identification** (HEURISTIC) :
  - *Avant le reveal* : **deux TR différents** (32 m puis 40 m) et un changement de vitesse. Une tête volante = Head Form. Des champignons lumineux sur la map = Krasue.
  - *Pouvoir en action* : projectiles qui rebondissent et se divisent (Body), vol rapide (Head).
  - *Add-ons* : tous les survivants Leeched I dès le début (Chicken Head, seed) ; auras près des champignons (Shredded Gown, seed).
  - *Stratégie probable* : pression d'usure par la jauge de Leech (blessures sans coup au palier II), mobilité en vol.
- **Ce qu'il cherche en chase** (HEURISTIC) : en Body, toucher par rebonds derrière les obstacles pour faire monter la jauge ; en Head, des vaults gratuits de palette (pas de casse) et un fouet qui ignore brièvement les murs.
- **Tiles / structures** (HEURISTIC) :
  - *Favorables* : tiles où la tête doit **contourner** plutôt que vaulter (murs pleins, gros rochers), et stuns de palette (2,5 s, seed) quand elle vaulte mal.
  - *Défavorables* : tiles de palette « classiques » contre la Head Form (elle les vaulte) ; espaces ouverts avec murs proches (rebonds de glande).
  - *LOS* : les mini-glandes cherchent la cible. Couper la LOS **après** la division compte plus que l'esquive initiale (seed + HEURISTIC).
- **Mindgames propres** (HEURISTIC) : glande tirée contre un mur pour toucher derrière le tile ; alternance de formes pour changer de TR (le passage à 40 m peut cacher la position exacte) ; fouet au travers d'un coin.
- **Counterplay** :
  - *Mécanique* : changez de direction contre la glande principale, puis cassez la LOS contre les mini-glandes. Contre le fouet, gardez de la distance, sa fenêtre de traversée est courte (seed). **Surveillez votre palier de Leech** : sous le palier I, le fouet ne blesse pas (seed-NRV), ce qui change totalement la valeur de la chase.
  - *Positionnel* : restez près d'un champignon quand votre jauge monte, et repérez les champignons en début de partie.
  - *Macro* : mangez un champignon **avant** de franchir un palier, pas après. Le palier II rend blessé et Broken sans coup (seed). Le crochet remet le Leech à zéro selon le seed (hotfix 9.2.2 **absent du résumé 9.2.2 de l'audit**, qui ne cite qu'Off the Record → NON VÉRIFIABLE) : « ne gaspillez pas de champignon juste avant un crochet probable » ne vaut **que si** ce reset existe. Si le reset n'existe pas, garder une jauge haute au crochet laisse le décroché près d'un palier dès sa libération. Tant que ce n'est pas vérifié, ne pas planifier dessus : manger quand c'est sûr, sans compter sur le crochet pour « nettoyer » (SITUATIONAL).
  - *Équipe* : le soin est inutile au palier II (Broken) : faites d'abord baisser la jauge.
- **Habitudes punissables / erreurs** (HEURISTIC) : ignorer la jauge ; boucler une palette contre la tête comme contre un M1 ; courir en ligne droite contre la glande ; oublier qu'un TR 40 m peut être la tête **loin du corps**.
- **Adaptations avancées** (HEURISTIC) : l'absence de Bloodlust en Head Form (FACT, audit) rend les **chases longues relativement plus viables contre la tête** que contre un tueur avec Bloodlust — mais seulement au-delà d'une certaine durée. Calcul [AUDIT] : la tête va à 4,8 m/s dès le départ, soit la vitesse d'un tueur à 4,6 m/s au palier I de Bloodlust (+0,2 m/s à 15 s). Contre un tueur à 4,6 m/s, la tête est donc **plus rapide** pendant les 15 premières secondes, égale entre 15 et 25 s, plus lente seulement après 25 s (+0,4 → 5,0 m/s) et 35 s (5,2 m/s). Elle reprend 0,8 m/s sur toi (10 m en 12,5 s, contre 16,7 s pour un tueur à 4,6 m/s sans Bloodlust). Donc : contre la tête, les **premières secondes** sont les plus dangereuses, et « étirer » ne paie qu'une fois la chase longue installée ; rappel : un tueur perd sa Bloodlust en utilisant son pouvoir [AUDIT]. En revanche, le counterplay « palettes » habituel échoue, puisqu'elle les vaulte. Privilégiez les tiles à murs et fenêtres qu'elle doit contourner, et les stuns ponctuels.
- **Add-ons qui changent la décision** (seed-NRV) :
  - Chicken Head (tous Leeched I au départ, +2 champignons) → **le fouet blesse dès la première chase** : prenez un champignon tôt ou jouez sur une distance plus longue.
  - Shredded Gown (aura près des champignons) → mangez vite, et pas en présence d'un TR proche.
  - Queen's Sceptre (le fouet fait apparaître une glande) → après un fouet, attendez-vous à un projectile de suivi : cassez la LOS.
  - Janjira's Hand (recharge du vol à la complétion des gens) → après un gen terminé, attendez-vous à son arrivée rapide.
- **Implications de carte** (HEURISTIC) : forte sur les maps ouvertes à murs proches (rebonds). Les maps denses en palettes perdent de la valeur contre la Head Form.
- **Perks fréquentes** (seed-NRV) : Pain Resonance, Dissolution, Pop Goes the Weasel, No Way Out / Ravenous. → Contre Dissolution, ne vaultez pas une palette dans sa zone proche si la perk est confirmée (SITUATIONAL). Ravenous : à 4 tokens, tous les survivants crient et sont Exposed (seed-NRV ; ⚠ valeurs du seed ch8 SUSPECTES PTB-comme-LIVE, CONFLICT-K96-01).
- **Écart avec le seed** : vitesses et TR **OK** (audit). « Pas de Bloodlust » **OK** pour la Head Form (audit). Date **OK**. Hotfix 9.2.2 : NON VÉRIFIABLE. « N°1 en kill rate MMR élevé selon BHVR » : **OK sur le fond** (audit : « kill Krasue (high) », KB 540), mais le classement « n°1 » et les chiffres ne sont pas publiés en texte. Tier et NightLight : HEURISTIC / non vérifiés.
- **Sources** : [1], [2].

---

## 42. The First (Henry Creel) — archétype(s) : zone | furtif (Upside Down) | mobilité | anti-loop

- **Version** : 9.4.0 « Stranger Things Chapter 2 » (CHAPTER 38), 27/01/2026 (audit phase 0). **9.5.0** (17/03/2026) : 2e phase du Worldbreaker à 50 s (audit phase 0). Statut LIVE.
- **Données LIVE** :
  - 4,4 m/s, TR 32 m (**audit phase 0**). 8 m/s dans l'Upside Down (seed-NRV). Taille moyenne (seed-NRV).
  - Pouvoir « Test Subject #001 » (seed-NRV, UNCERTAIN sauf mention) :
    - **Vine Attack** : attaque de zone chargée à distance (rayon 1,46 m), marche lente pendant la charge et le cast, cooldown 3 s. Chaque touche donne un token Worldbreaker, et l'attaque peut casser les palettes.
    - **Upside Down** : Undetectable, 8 m/s, traverse palettes, fenêtres et murs. Cooldown 35 s (50 % chargé en début de partie).
    - **Undergate Attack** : depuis l'Upside Down, zone qui s'étend (anneau rouge) et donne 2 tokens. Un casier protège (seed).
    - **Worldbreaker** : à 2 ou 4 tokens, ses attaques de pouvoir blessent. Phase 1 : 60 s par survivant vivant. Phase 2 : **50 s (FACT, audit phase 0, 9.5.0)**. 4 horloges permettent aux survivants d'accélérer la fin (phase 1).
    - **Mind Break** : un survivant à 4 tokens au 2e crochet peut être mori.
- **Identification** (HEURISTIC) :
  - *Avant le reveal* : 4,4 m/s ; un TR qui **disparaît d'un coup** = Upside Down (Undetectable).
  - *Pouvoir en action* : charge lente puis lianes au sol ; anneaux rouges d'Undergate ; horloges sur la map.
  - *Add-ons* : Upside Down beaucoup plus fréquent (Pizza Goggles, seed) ; lianes à 2 charges (Chess Piece, seed).
  - *Stratégie probable* : accumuler des tokens sur plusieurs survivants, puis exploiter la fenêtre Worldbreaker. Pression de gens avec Turn Back the Clock et Pop (build du seed, [SEED] UNCERTAIN ; HEURISTIC — anciennement « EXPERT OPINION », non sourcée).
- **Ce qu'il cherche en chase** (HEURISTIC) : prédire votre position aux sorties de palette et de fenêtre (zone retardée). Hors Worldbreaker, les lianes donnent des tokens, pas des blessures (seed) : il construit sa phase de dégâts.
- **Tiles / structures** (HEURISTIC) :
  - *Favorables* : boucles longues où sa vitesse de 4,4 m/s (FACT, audit 9.4.0) le pénalise — il reprend 0,4 m/s au lieu de 0,6 (10 m en 25 s au lieu de 16,7 s), avant Bloodlust (+0,2 m/s à 15 s, perdue quand il utilise son pouvoir [AUDIT]) ; tiles offrant **plusieurs sorties** qui rendent la prédiction de zone difficile.
  - *Défavorables* : tiles à sortie unique, couloirs étroits (zone facile à placer), palettes « cassables » par les lianes.
  - *Verticalité* : peu documentée (UNCERTAIN).
- **Mindgames propres** (HEURISTIC) : charger la liane sur la sortie de palette probable ; attendre le double-vault ; sortir de l'Upside Down derrière un tile.
- **Counterplay** :
  - *Mécanique* : **feintes de vault et changements de direction tardifs**. La zone vise là où vous allez (seed). Quand l'anneau d'Undergate s'étend, sortez vite ou prenez un casier (seed).
  - *Positionnel* : hors Worldbreaker, bouclez longtemps en exploitant sa lenteur (seed + HEURISTIC). En Worldbreaker, raccourcissez la chase et coupez la LOS, puisque chaque liane blesse.
  - *Macro* : suivez les tokens de l'équipe. Un survivant à 4 tokens au 2e crochet risque la **mise à mort directe** (Mind Break, seed) : priorité de sauvetage et d'anti-tunnel.
  - *Équipe* : **un seul survivant sur les horloges**, les autres sur les gens (seed : les ajouts n'aident presque pas, UNCERTAIN). SWF : désigner au vocal. SoloQ : si un coéquipier est déjà sur une horloge (aura, icône d'action), rester sur ton gen ; les horloges n'accélèrent que la phase 1 (seed).
- **Habitudes punissables / erreurs** (HEURISTIC) : vaulter « par réflexe » à la même sortie ; ignorer la disparition du TR (ambush Upside Down) ; envoyer toute l'équipe aux horloges ; laisser un survivant cumuler 4 tokens avant son 2e crochet.
- **Adaptations avancées** (HEURISTIC) : le counterplay « exploiter sa vitesse de 4,4 m/s » **échoue en Worldbreaker**, où la liane devient une attaque blessante. Changez de plan au déclenchement : cherchez un tile à murs hauts plutôt qu'une longue boucle, et pensez distance plutôt que durée de chase. Le cooldown de 35 s de l'Upside Down (seed, UNCERTAIN) donne, après chaque usage, une fenêtre **sans embuscade Upside Down** — pas une fenêtre sans danger (lianes et M1 restent disponibles ; Pizza Goggles la raccourcit).
- **Add-ons qui changent la décision** (seed-NRV) :
  - Iridescent Soteria Chip (Undetectable au déclenchement du Worldbreaker, auras à 12 m) → au déclenchement, **quittez les gens proches** et ne comptez plus sur le TR.
  - Pizza Goggles (Upside Down plus fréquent) → la fenêtre de sécurité de 35 s n'existe plus : répartissez-vous sur la map.
  - Chess Piece (lianes à 2 charges) → une double zone : ne fêtez pas un premier dodge, attendez-vous au second.
- **Implications de carte** (HEURISTIC) : l'Upside Down (8 m/s, traverse les murs) réduit l'avantage des grandes maps. Sur les maps intérieures, les zones de liane sont plus faciles à placer dans les couloirs.
- **Perks fréquentes** (seed-NRV) : Pain Resonance, Turn Back the Clock, Lethal Pursuer, Pop Goes the Weasel. → Après un crochet, **évitez de garder un gen à 20 m** d'un point accessible (Turn Back the Clock : explosion d'un gen à 20 m, seed).
- **Écart avec le seed** : vitesse, TR, date **OK** (audit). Phase 2 50 s **OK** (audit, 9.5.0). « N°2 en kill rate MMR élevé selon BHVR » : **NON VÉRIFIABLE / douteux**. L'audit ne cite que Krasue (high) et Lich (broad) pour les kill rates, et The First est sorti fin janvier 2026, à la toute fin de la fenêtre sept. 2025-févr. 2026. Le reste est NON VÉRIFIABLE.
- **Sources** : [1], [2].

---

## 43. The Slasher (Jason Voorhees) — archétype(s) : furtif | mobilité | ranged (pics) | anti-loop

- **Version** : 10.0.0 « Jason » (CHAPTER 40), 16/06/2026 (audit phase 0). **10.0.2 / 10.0.3** (06/07 et 21/07/2026) : ajustements d'add-ons (audit phase 0, sans détail ; l'audit groupe les deux patchs sur une ligne et ne dit pas lequel porte les ajustements — 10.0.3 y est associé au Chaos Shuffle et à Lights Out). Nouvel état **Impaled** (audit phase 0). Statut LIVE.
- **Données LIVE** :
  - 4,4 m/s ; 8,0 m/s en Omnipresent Evil ; TR 32 m (**audit phase 0**). Taille moyenne (seed-NRV).
  - Perks enseignables (audit phase 0) : Hex: Scared to Death, Silent Shadow, Rampage.
  - Pouvoir (seed-NRV, UNCERTAIN sauf vitesse) :
    - **Omnipresent Evil** : invisible, Undetectable, traverse palettes, murs et fenêtres, ne peut pas attaquer. Il détecte à 16 m (brume pour les immobiles, traces pour ceux qui bougent). Un survivant accroupi devient indétectable après 2,5 s.
    - **Jump Scare** : possible après 2 s ; réapparition sur une palette, un mur ou une fenêtre à ≤ 16 m. Réapparition plus lente près d'un survivant accroché (×3). Haste pendant 25 s et révélation des proches, cooldown 12 s.
    - **Throwing Spikes** : pics ramassés sur les crochets ou dans la ferraille. Chaque pic blesse d'un état et repousse, avec épinglage au mur possible (8 s). Les pics de crochet rendent Broken et restent plantés (5 s pour les retirer, aura visible par Jason à 26 m). **Finisher** si le survivant épinglé ou empalé est à son dernier crochet.
- **Identification** (HEURISTIC) :
  - *Avant le reveal* : 4,4 m/s ; un TR qui **se coupe** sans raison = Omnipresent Evil. Des tas de ferraille sur la map = Slasher.
  - *Pouvoir en action* : réapparition brutale sur une palette ou une fenêtre (Jump Scare), projectiles-pics.
  - *Add-ons* : fenêtres bloquées après Jump Scare (Iridescent Boat Motor, seed) ; explosions de gens au passage (Deputy's Badge, seed).
  - *Stratégie probable* : « fog of regression » (Pop / Surge / Pain Resonance + Corrupt, seed), tunnel via Finisher au dernier crochet (HEURISTIC).
- **Ce qu'il cherche en chase** (HEURISTIC) : réapparaître **sur la palette ou la fenêtre** que vous alliez utiliser, puis gagner la chase courte grâce à la Haste de 25 s. Hors pouvoir, pics à distance sur un survivant sain qui arrive à une palette.
- **Tiles / structures** (HEURISTIC) :
  - *Favorables* : **pendant qu'il est en Omnipresent Evil**, zones sans palette ni fenêtre à ≤ 16 m (il ne peut réapparaître que sur ces éléments, seed) ; tiles de LOS contre les pics. Limite : une zone sans palette ni fenêtre est une zone morte dès qu'il redevient visible et te chase à 4,4 m/s : ce n'est un refuge que contre le Jump Scare, pas en chase normale.
  - *Défavorables* : tiles denses en palettes et fenêtres, précisément ses points d'apparition ; murs proches (épinglage).
  - *Fenêtres vs palettes* : les deux sont des points de Jump Scare. Iridescent Boat Motor bloque en plus les fenêtres marquées (13 s, seed).
- **Mindgames propres** (HEURISTIC) : entrer en Omnipresent Evil pour simuler un départ, puis revenir ; Jump Scare sur la palette de sortie ; garder un pic pour la fin de boucle.
- **Counterplay** :
  - *Mécanique* : **quand le TR se coupe, vous avez environ 2 s** avant un Jump Scare possible (seed). Bougez hors des 16 m des palettes et fenêtres, ou accroupissez-vous (2,5 s pour disparaître, seed). Contre les pics, esquive latérale et LOS, et éloignez-vous des murs pour éviter l'épinglage.
  - *Positionnel* : pendant la Haste de 25 s, cassez la LOS et forcez un contournement plutôt qu'une boucle nue.
  - *Macro* : retirez **immédiatement** les pics de crochet (Broken, et Jason voit leur aura à 26 m, seed). Au dernier crochet, **évitez tout risque d'empalement** (Finisher).
  - *Équipe* : la réapparition est ralentie près d'un survivant accroché (×3, seed) : c'est une fenêtre de sauvetage. Kindred, Borrowed Time et Will to Live sont conseillés par le seed (EXPERT OPINION non re-sourcée).
- **Habitudes punissables / erreurs** (HEURISTIC) : rester debout, immobile, près d'une palette à ≤ 16 m quand le TR disparaît ; garder un pic « pour plus tard » ; courir le long d'un mur contre un tueur qui a des pics.
- **Adaptations avancées** (HEURISTIC) :
  - Le counterplay « TR = info » **échoue** : son absence est l'info. Traitez une coupure de TR comme une alerte.
  - Contre la Haste du Jump Scare, les perks de vitesse du survivant peuvent être atténuées par les Diminishing Returns si deux sources identiques se cumulent côté survivant. La Haste du tueur (Jump Scare + Rampage) est aussi concernée côté tueur (HYPOTHESIS, cf. audit 9.6.0).
- **Add-ons qui changent la décision** (seed-NRV ; ajustements 10.0.2/10.0.3 non détaillés) :
  - Iridescent Boat Motor (le Jump Scare bloque les fenêtres marquées 13 s) → **ne planifiez pas une chase autour de fenêtres** ; privilégiez les palettes.
  - Orderly's Shoe (+5 s de Haste) → cassez la LOS plus longtemps après un Jump Scare avant de rejouer une boucle.
  - Deputy's Badge (explosions de gens au passage ; portée nerfée en 10.0.2 selon le seed) → ne laissez pas de gens à moitié réparés sur sa route.
  - Sauna Rock (Exhausted au Jump Scare, seed) → gardez votre perk d'Exhaustion pour après ; un Sprint Burst « prêt » peut être annulé.
- **Implications de carte** (HEURISTIC) : fort sur les maps denses en palettes et fenêtres (points d'apparition). Plus faible dans les grandes zones vides sans éléments à 16 m.
- **Perks fréquentes** (seed-NRV) : Pain Resonance, Pop, Surge, Corrupt Intervention ; variante Spirit Fury, Enduring, Bamboozle, Tinkerer. Ses perks : Hex: Scared to Death (cri + Hindered à 13 m quand il casse une palette en chase, seed), Silent Shadow (Undetectable après crochet, seed), Rampage. → Contre Spirit Fury et Enduring, **ne misez pas sur un stun de palette tardif** ; cherchez la distance.
- **Écart avec le seed** : vitesse (4,4 / 8,0), TR, date, perks **OK** (audit). Add-ons : « ajustés en 10.0.2 » **OK** sur le principe (audit), détail NON VÉRIFIABLE. Le reste est NON VÉRIFIABLE.
- **Sources** : [1], [2].

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
  - *Distance* : pour une colonne proche, **traversez-la** : le délai d'impact laisse le temps, selon le seed (EXPERT OPINION non re-sourcée). Pour une colonne lointaine, sortez de son axe.
  - *Grande taille* : il voit plus haut que la moyenne au-dessus des tiles bas (HEURISTIC).
- **Mindgames propres** (HEURISTIC) : contrôle court pour une projection rapide et surprenante ; contrôle long qui suit puis projette à la sortie de tile ; en Zealous, courbe de 0,6 s pour rattraper un dodge tardif.
- **Counterplay** :
  - *Mécanique* : **dodge au moment de la projection, pas pendant le contrôle** (hors Zealous, la trajectoire se fige). En **Zealous** (60 s après un exil), la courbe de 0,6 s rattrape les dodges tardifs : **cassez la LOS** au lieu d'esquiver (HEURISTIC).
  - *Positionnel* : ne vous accroupissez pas et ne faites pas de gestes à répétition près du tueur (ou des autres, voir Questions ouvertes), et **ne restez pas dans le seuil d'une porte de sortie** (45 s = Heresy ; porte bloquée 8 s si acquise à < 32 m).
  - *Macro* : un hérétique qui répare **fait régresser** le gen sur ses Good (−3 %). Il doit **aller Repent à un Shrine** avant de retourner sur un gen, ou viser des Great / ne pas réparer (FACT sur l'effet, HEURISTIC sur la consigne). En fin de partie, purgez la Heresy avant d'ouvrir une porte proche.
  - *Équipe / Exile* : dans l'Exile, esquivez les Seeds (−3 s de timer chacune) et collectez jusqu'à 10 âmes (+0,5 s de protection au décrochage chacune). Le sauveteur passe par les sanctuaires actifs (seed). Après libération, l'exilé réapparaît à ≥ 32 m (FACT, 10.1.2) : **le sauveteur ne peut pas couvrir l'exilé** ; chacun gère sa fuite.
- **Habitudes punissables / erreurs** (HEURISTIC) :
  - Le teabag ou « crouch spam » par habitude, qui donne l'Heresy.
  - Attendre dans la porte ouverte pour narguer ou pour un BT (45 s = Heresy, et BT ne se déclenche pas sur un Exile).
  - Continuer à réparer en hérétique.
  - Compter sur Off the Record ou Borrowed Time contre un Exile (FACT : perks de crochet non déclenchées).
- **Adaptations avancées** (HEURISTIC) :
  - Le counterplay anti-tunnel basé sur les perks de décrochage **échoue** contre l'Exile. Préférez des perks indépendantes du crochet : le seed propose Distortion, Boon: Shadow Step, Self-Preservation, Bound by Obsession, Blast Mine (EXPERT OPINION non re-sourcée).
  - Les protections de décrochage basekit (Endurance + Haste 10 s + Elusive 10 s) s'appliquent-elles à une libération d'Exile ? Non vérifié (Questions ouvertes) : jouez comme si ce n'était pas le cas.
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
