# Lot 4 — Fiches tueur vues du survivant, groupe 6 (tueurs 38 à 44)

Couverture web : 0 élément vérifié par recherche / 7 non re-vérifiés (quota WebSearch de la session épuisé, 200/200). Valeurs reprises de l'audit phase 0 quand il les couvre (surtout Krasue, The First, Slasher, Animatronic, Judgment) ; tout le reste vient du seed ou de la connaissance du modèle, en UNCERTAIN.

- Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 (15-21/09/2026) **non LIVE**, jamais utilisé ici comme valeur LIVE. Mode 2v8 exclu.
- Périmètre : Houndmaster, Ghoul, Animatronic, Krasue, First, Slasher, Judgment (seed `kb/seed/ch8_killers.txt` l. 1664-1953).
- **Méthode (dérogation)** : aucune recherche web n'a été faite. Trois sources seulement :
  1. **audit phase 0** (`kb/seed/audit_phase0.txt`) : cité avec la confiance qui y figure (VERIFIED_PRIMARY / VERIFIED_MULTI_SOURCE / STRONG_SECONDARY).
  2. **seed** : noté « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) », confiance UNCERTAIN.
  3. **connaissance du modèle** : notée « connaissance du modèle (antérieure à mi-2026), UNCERTAIN ».
- Le cœur de la valeur de ce fichier est l'**analyse survivant** (identification, counterplay par couche, erreurs, adaptations). Elle est étiquetée **HEURISTIC** (raisonnement à partir de la mécanique) ou **EXPERT OPINION** (consensus communautaire tel que le modèle le connaît, non re-sourcé ici).
- Étiquettes : FACT (mécanique vérifiée par l'audit) / HEURISTIC / EXPERT OPINION / SITUATIONAL / HYPOTHESIS. Les tiers et les notes de menace sont **HEURISTIC**.
- Abréviations : TR = terror radius ; LOS = ligne de vue ; « seed-NRV » = seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; « CM » = connaissance du modèle (antérieure à mi-2026), UNCERTAIN.

### Rappels système utiles pour ce groupe (audit phase 0)

- Protections de décrochage LIVE 10.1.0 : Endurance + 10 % Haste pendant 10 s + Elusive 10 s, sauf une fois les générateurs alimentés (audit phase 0, patch 10.1.0, VERIFIED_PRIMARY via notes).
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
  - *Stratégie probable* : Houndsense + Deep Wound pousse à l'usure et au slug léger. Le « traîner vers soi » facilite le tunnel du survivant qu'on vient de décrocher en terrain ouvert (EXPERT OPINION).
- **Ce qu'il cherche en chase** (HEURISTIC) : une **ligne droite** entre le chien et vous. Il la trouve aux sorties de tile, dans les couloirs, en terrain ouvert et dans les longs murs sans ouverture. Le chien remplace une hachette à portée moyenne, et la prise ramène la cible pour une attaque de base garantie.
- **Tiles / structures** (HEURISTIC) :
  - *Favorables* : tiles avec **beaucoup d'angles courts** (jungle gym, shack) où toute ligne droite est coupée en moins de 5-6 m. Palettes « safe » : une palette posée bloque le chien (seed et CM).
  - *Défavorables* : longues lignes (murs L sans fenêtre, bords de map, champs de maïs ouverts) et tiles où l'on court en ligne droite avant de tourner.
  - *Fenêtres vs palettes* : les fenêtres sont de bonnes coupures si le chien ne les franchit pas (CM, UNCERTAIN). Les palettes sont plus sûres, car une palette posée bloque durablement le chien.
  - *Verticalité* : peu d'impact direct. All-Shaking Thunder (sa perk) récompense les sauts de hauteur (SITUATIONAL).
- **Mindgames propres** (HEURISTIC) : envoyer le chien d'un côté d'une boucle pendant que Portia prend l'autre (le seed parle de « tirer le chien autour de la boucle ») ; garder la commande pour votre sortie de tile au lieu de la lancer tout de suite ; feinter le lancer pour vous faire tourner.
- **Counterplay** :
  - *Mécanique* : quand le chien est lancé, **décalez-vous latéralement tard** et mettez un obstacle entre la trajectoire et vous. Une trajectoire engagée se corrige mal (HEURISTIC). Si vous êtes pris, gardez en tête qu'une palette sur la trajectoire de traîne vous libère (seed-NRV) : se faire prendre **près** d'une palette coûte moins cher qu'en terrain ouvert.
  - *Positionnel* : restez « collé » aux structures et ne traversez de l'open qu'à distance de chasse suffisante (HEURISTIC).
  - *Macro* : réparez les gens loin de sa route de patrouille. Une berceuse de chien sur vous veut dire « je suis repéré » : quittez le gen plutôt que de finir 5 %. Soignez tôt à cause de Houndsense et du Deep Wound (HEURISTIC).
  - *Équipe* : ne décrochez pas en terrain ouvert quand Portia est à moyenne distance, le chien punit les décrochages non couverts (HEURISTIC).
- **Habitudes punissables / erreurs classiques** (HEURISTIC) : le « hold W » en ligne droite ; quitter un tile vers l'open trop tôt ; ignorer le Killer Instinct de la patrouille ; croire que l'Endurance suffit (elle raccourcit la traîne à 2 s mais ne l'annule pas, seed-NRV).
- **Adaptations avancées** (HEURISTIC / SITUATIONAL) :
  - Contre un Portia qui garde le chien « en réserve », jouez le tile le plus longtemps possible et forcez-le à le lancer sur une trajectoire courte.
  - Sur les maps très ouvertes, prévoyez la prochaine structure avant de quitter la vôtre : c'est un « pre-running » calculé pour ne jamais offrir plus de ~8 m de ligne.
  - Le counterplay habituel des tueurs M1 (« courir loin pour étirer la chase ») **échoue** ici : la distance en open est précisément sa portée idéale.
- **Add-ons qui changent la décision** (seed-NRV, UNCERTAIN) :
  - Leather Harness (chien +20 %) → décalez-vous **plus tôt** et ne comptez plus sur un dodge tardif en open.
  - Marlinspike (Houndsense à 20 m autour du survivant attrapé) → écartez-vous de la chase en cours au lieu de rester « en soutien » à 15 m.
  - Iridescent Wheel Handle (Undetectable pendant les recherches) → la berceuse du chien n'est plus fiable, surveillez le Killer Instinct et les corbeaux.
- **Implications de carte** (HEURISTIC) : fort sur les maps ouvertes aux longues lignes (Coldwind, Red Forest selon la génération). Plus faible sur les maps intérieures denses en angles, avec un bémol sur les longs couloirs (Hawkins, RPD, Gideon).
- **Perks fréquentes à anticiper** (seed-NRV + HEURISTIC) : Pain Resonance, Surge, Dead Man's Switch, Barbecue & Chili, All-Shaking Thunder. → Relâchez les gens après un crochet (DMS) et évitez de rester groupés sur un gen.
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
  - FACT (audit phase 0, wiki.gg Pallets, STRONG_SECONDARY, « liste à reconfirmer ») : le Ghoul figure parmi les destructions instantanées de palette via le 3e Kagune Leap **avec add-on**.
- **Identification** (HEURISTIC) :
  - *Avant le reveal* : 4,6 m/s ; l'arrivée est rapide et bruyante (bonds). Voir un tueur « tiré » vers un mur ou un toit = Ghoul.
  - *Pouvoir en action* : trajectoires en arc vers des surfaces, grab au contact.
  - *Add-ons* : palette tombée détruite au 3e bond (Iridescent Eye Patch selon le seed).
  - *Stratégie probable* : snowball en début de partie (un grab gratuit par chase), puis pression par blessures multiples. Le tunnel est facilité par sa mobilité (EXPERT OPINION).
- **Ce qu'il cherche en chase** (HEURISTIC) : une LOS sur vous à ≤ 14 m en dehors d'un tile. **Le premier coup est quasi garanti** si vous êtes surpris en open. Ensuite, contre un survivant marqué, il redevient un M1 à 4,6 m/s avec des vaults accélérés et des bonds par-dessus les palettes posées.
- **Tiles / structures** (HEURISTIC) :
  - *Favorables* : tiles hauts et fermés (murs pleins, shacks) qui coupent la LOS ; zones à plafond bas où les bonds sur surfaces sont maladroits (EXPERT OPINION).
  - *Défavorables* : l'open, les tiles bas (rochers, petites palettes), les fenêtres isolées (il les traverse au bond).
  - *Palettes* : **ne comptez pas sur une palette posée pour gagner une boucle** s'il lui reste des tokens, il la saute. Posez-la tard, pour le stun ou pour forcer une dépense, pas pour boucler autour (HEURISTIC). En Enragé, la casser lui coûte 2 tokens (seed).
  - *Verticalité* : un étage lui profite (bonds vers le haut ou le bas). Un toit n'est pas un refuge.
- **Mindgames propres** (HEURISTIC) : viser une surface derrière vous plutôt que vous-même pour couper le tile ; retenir un token pour la sortie de palette ; feinter le bond.
- **Counterplay** :
  - *Mécanique* : **cassez la LOS au moment où il vise**. Esquive latérale tardive au bond (le seed parle d'une visée moins magnétique après nerfs, UNCERTAIN). Après la marque, jouez-le comme un M1 et **dépensez ses tokens** (faites-le bondir inutilement), puis exploitez sa recharge (HEURISTIC).
  - *Positionnel* : ne réparez pas en open visible de loin et gardez un tile fermé à ≤ 10 m (HEURISTIC).
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
  - *Mécanique* : esquive latérale **au moment du relâchement**, pas au début du windup. Surveillez sa vitesse : **sans hache, il est plus rapide mais sans projectile**. C'est le moment de gagner de la distance en boucle, pas de se découvrir en open (HEURISTIC).
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
