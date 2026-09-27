# Lot 4 — Fiches tueur vues du survivant, groupe 5 (tueurs 31 à 37)

> **Statut : WRITTEN + AUDITED (audits adversariaux §25-26 du 27/09/2026, sans web) — voir kb/audit/pass14_lot4_g4-g6.md**
>
> Rappels de l'audit : toutes les consignes sont des **HEURISTIC** (option par défaut, à varier contre un tueur qui l'anticipe) ; le **pré-drop n'est pas universel** (KCH §2.2) ; **2v8 ≠ 1v4** (Good Guy : seuls les buffs 9.4.2 sont prouvés 2v8 ; sa capacité à casser les palettes en 1v4 reste UNRESOLVED) ; les lignes « Équipe » supposant des rôles demandent le vocal (SWF).

Couverture web : 0 élément vérifié par recherche / 7 tueurs (toutes leurs valeurs chiffrées) non re-vérifiés (quota WebSearch épuisé). Seuls les faits [AUDIT] (historique des patchs de la phase 0) ont une confiance supérieure à UNCERTAIN.

- Référence : LIVE 10.1.2a (17/09/2026) ; PTB 10.2.0 (15-21/09/2026) **non LIVE**. Mode 2v8 = jamais utilisé comme valeur 1v4.
- Périmètre : Skull Merchant, Singularity, Xenomorph, Good Guy, Unknown, Lich, Dark Lord (seed `kb/seed/ch8_killers.txt` l. 1419-1663).

> **AVERTISSEMENT DE VÉRIFICATION (bloquant)**
> Aucune recherche WebSearch n'a pu être faite. Dès la première requête, l'outil a répondu « this session has used its web search budget (200 of 200 WebSearch calls) ». WebFetch/curl sont bloqués (brief).
> Conséquence : **aucune valeur de ce fichier n'est vérifiée en ligne**. Seules les informations tirées de `audit_phase0.txt` (historique des patchs déjà vérifié en phase 0) ont un niveau de confiance supérieur à UNCERTAIN.
> Ce fichier sert de **squelette survivant** (structure, counterplay heuristique, écarts à vérifier). Il ne remplace pas une fiche vérifiée. Il faut le relancer avec un budget de recherche.

## Légende des étiquettes (propre à ce fichier)

- **[AUDIT]** : fait tiré de `kb/seed/audit_phase0.txt` (patch notes vérifiées en phase 0), non re-vérifié ici. Confiance : celle de l'audit.
- **[seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]** : valeur du guide seed, NON VÉRIFIABLE dans cette session (à traiter comme UNCERTAIN).
- **[connaissance du modèle (antérieure à mi-2026), UNCERTAIN]** : connaissance interne du modèle (antérieure à mi-2026), non sourcée → **UNCERTAIN**. Elle peut être périmée par les patchs 9.x/10.x.
- **HEURISTIC / SITUATIONAL** : raisonnement de jeu dérivé de la mécanique. Ce ne sont pas des avis d'experts sourcés : **aucune source EXPERT_OPINION n'a pu être consultée**.
- Les tiers et notes de menace sont **HEURISTIC**.

---

## 31. The Skull Merchant (Adriana Imai) — archétype(s) : zone/piège | info | M1 (+ Haste)
- **Version** : pas de rework en 9.x. Ajustements en **9.3.0** (25/11/2025) : rotation des drones 105°/s, Hindered 10 %, « CD 7 s », Undetectable 6 s. Puis en **9.3.2** (09/12/2025) : Undetectable 8 s, obtenu **au rappel d'un drone** [AUDIT]. Le rework du pouvoir est antérieur à 9.0.0, patch exact non vérifié [AUDIT]. Le « rework confirmé pour 2027 » du seed est NON VÉRIFIABLE. Statut : LIVE 9.3.2 présumé inchangé jusqu'à 10.1.2a (aucune mention dans l'audit 9.4 → 10.1.2a).
- **Données LIVE** :
  - Vitesse 4,6 m/s (115 %) [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; concordant avec connaissance du modèle].
  - TR : seed 24 m vs connaissance du modèle 32 m → **CONFLICT-L4G5-01**.
  - Taille : moyenne [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Drones : jusqu'à 6 [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Rayon de scan 10 m [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Rotation 105°/s [AUDIT].
  - Hindered 10 % [AUDIT]. Haste 5 % / 8 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Lock-On : 3 stacks, +1 toutes les 2,5 s sous un drone [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Au Lock-On complet : blessure + Deep Wound + Broken + Claw Trap (45 s de révélation) [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Piratage d'un drone → drone désactivé 45 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Undetectable 8 s au rappel d'un drone [AUDIT].
- **Identification** :
  - Avant le reveal : drones stationnaires près des gens, avec une ligne de scan qui tourne (visuel + son) [connaissance du modèle (antérieure à mi-2026), UNCERTAIN]. Un drone posé sur ton gen en début de partie est un indice quasi certain (HEURISTIC).
  - Pouvoir en action : un survivant Tracked/Hindered près d'un drone ; une Skull Merchant qui arrive **sans TR** juste après avoir rappelé un drone (Undetectable 8 s, [AUDIT]).
  - Add-ons observables : Claw Trap dès le départ (Expired Batteries selon le seed [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]) ; TR sur un drone désactivé (Iridescent Unpublished Manuscript, [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]).
  - Stratégie probable : contrôle de zone, défense d'un groupe de gens proches (HEURISTIC). Le 3-gen était son style historique (HISTORICAL [connaissance du modèle (antérieure à mi-2026), UNCERTAIN]).
- **Ce qu'il cherche en chase** : amener le survivant sous un drone ou le poser sur la boucle en cours. Hindered + Haste lui donnent alors l'écart pour un coup sans casser la palette (HEURISTIC).
- **Tiles / structures** :
  - Favorables au survivant : tiles longs **hors du rayon** d'un drone ; murs hauts qui coupent la vue du radar (à vérifier : le radar dépend-il de la LOS ?).
  - Défavorables : boucles courtes sous un drone actif, où chaque passage dans la ligne ajoute un stack.
  - Fenêtres vs palettes : pas d'anti-palette dans son pouvoir. Jouer les palettes normalement **hors zone** (HEURISTIC).
- **Mindgames propres** : rappel de drone → Undetectable 8 s pour un retour furtif sur le tile [AUDIT + HEURISTIC]. Drone posé en amont du chemin de fuite (HEURISTIC).
- **Counterplay** :
  - Mécanique : suivre la ligne de scan des yeux et la franchir juste après son passage. Le seed dit « crouch ou marche », non vérifiable, **ne pas l'enseigner comme FACT**.
  - Positionnel : changer de tile quand elle pose un drone sur le tien, plutôt que de le tenir (HEURISTIC).
  - Macro : pirater les drones quand elle est loin (désactivation 45 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]). Retirer vite les Claw Traps. Ne pas travailler sur 3 gens collés sans plan (HEURISTIC).
  - Équipe : un survivant pirate pendant que la chase est loin. Éviter de tous tomber en Lock-On sur la même zone (HEURISTIC).
- **Habitudes punissables / erreurs classiques** :
  - Tenir une boucle « safe » sous un drone.
  - Ignorer un Claw Trap (révélation).
  - Supposer « pas de TR = elle est loin » après le rappel d'un drone.
  - (HEURISTIC)
- **Adaptations avancées** : contre un drone posé **pendant** la chase, pré-jeter la palette plus tôt, car la Haste réduit la distance (SITUATIONAL). Calcul (si Hindered 10 % [AUDIT] et Haste 5 % [SEED] s'appliquent en même temps) : toi 4,0 × 0,9 = 3,6 m/s, elle 4,6 × 1,05 = 4,83 m/s → elle reprend ≈ 1,23 m/s, **deux fois plus vite** que les 0,6 m/s habituels ; 3 m d'avance durent ≈ 2,4 s. Limite : elle n'a pas d'anti-palette dans son pouvoir, donc la casse normale (2,34 s [AUDIT]) lui coûte ; l'autre option, souvent meilleure, est de **sortir du rayon du drone** avant de jouer la palette. En fin de partie, les gens à 3 défendus par des drones demandent d'être à plusieurs (HEURISTIC).
- **Add-ons qui changent la décision** (tous [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]) :
  - Expired Batteries → partir du principe que tout le monde a un Claw Trap dès le départ : prioriser son retrait au lieu d'ouvrir directement un gen.
  - Iridescent Unpublished Manuscript → pirater un drone ne rend plus « safe » (Undetectable 15 s + TR sur le drone) : pirater seulement si l'on sait où elle se trouve.
  - Advanced Movement Prediction → après un Lock-On, s'attendre à une lecture d'aura : ne pas se cacher, se déplacer.
- **Implications de carte** : map Hunting Camp liée à son chapitre, patch 6.6.0 selon le seed ch10 [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Les petites maps et les gens proches favorisent la zone de drones (HEURISTIC).
- **Perks fréquentes / synergies** : Pain Resonance, Grim Embrace, Pop, Lethal Pursuer (build seed [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]). Ses perks enseignables : Game Afoot, Leverage, THWACK! (valeurs [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]). Contre THWACK! : un cri et une aura après une casse de palette → repérer l'emplacement avant de se cacher (HEURISTIC).
- **Écart avec le seed** :
  - TR 24 m : **NON VÉRIFIABLE / CONFLICT** (32 m [connaissance du modèle (antérieure à mi-2026), UNCERTAIN]).
  - Undetectable 8 s au rappel du drone absent du seed : **IMPRÉCIS** (omission importante pour le survivant).
  - « Crouch/marche pour passer le scan » : **NON VÉRIFIABLE**.
  - Rework 2027 : **NON VÉRIFIABLE**.
  - Tier D « unanime » : HEURISTIC non vérifiable.
- **Sources** : [1] [2]

## 32. The Singularity (HUX-A7-13) — archétype(s) : mobilité | ranged | anti-loop (téléportation)
- **Version** : aucun changement 9.0.0 → 10.1.2a dans l'historique de l'audit [AUDIT, absence de mention]. Le seed a été signalé comme **erroné** sur le Singularity par l'audit phase 0, sans détail dans les fichiers disponibles ([AUDIT] l. 862). Statut LIVE : NON VÉRIFIABLE ici.
- **Données LIVE** :
  - Vitesse 4,6 m/s, TR 32 m [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Biopods : 8 max [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN], portée de pose 22 m [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Tir de Slipstream à 20 m [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN], propagation à 6 m [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Overclock 5,7 s : +3 %, actions +75 %, immunité aux stuns ; Overheat 3 s à Hindered 50 % [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Ce bloc est suspect (erreur relevée par l'audit, voir Questions ouvertes).
  - EMP : 4 imprimantes ; retirent le Slipstream et désactivent les pods à 10 m pendant 45 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
- **Identification** :
  - Avant le reveal : Biopods collés aux murs et aux surfaces (visibles, sonores), imprimantes d'EMP sur la map [connaissance du modèle (antérieure à mi-2026), UNCERTAIN]. Leur présence identifie le tueur dès les premières secondes (HEURISTIC).
  - Pouvoir en action : le tueur immobile quand il contrôle un pod [connaissance du modèle (antérieure à mi-2026), UNCERTAIN]. Un survivant marqué (Slipstream) → téléportation possible.
  - Stratégie probable : pression multi-chases par téléportation, pods sur les gens (HEURISTIC).
- **Ce qu'il cherche en chase** : te marquer depuis un pod placé **derrière** toi, puis se téléporter juste avant que tu atteignes ou jettes la palette (HEURISTIC, cohérent avec le seed).
- **Tiles / structures** :
  - Favorables : tiles où l'on peut casser la LOS avec **tous** les pods voisins. Structures intérieures sans surfaces de pose visibles (HEURISTIC).
  - Défavorables : grands espaces dégagés couverts par des pods en hauteur.
  - Fenêtres vs palettes : une palette jetée alors que tu es marqué **et** qu'un pod te voit est probablement perdue à la téléportation (seed : palettes au sol détruites [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]). Sans pod en vue, ou quand il te chase en personne, la palette se joue normalement (HEURISTIC).
- **Mindgames propres** : faux contrôle de pod (il reste immobile puis reprend la chase) ; pod en angle mort derrière le survivant (HEURISTIC).
- **Counterplay** :
  - Mécanique : repérer chaque pod de la zone et casser sa LOS. Tant que tu n'es pas marqué, il ne peut pas se téléporter sur toi (principe du pouvoir selon [connaissance du modèle (antérieure à mi-2026), UNCERTAIN] — **pas un FACT** : non couvert par l'audit, qui signale au contraire des erreurs du seed sur ce tueur).
  - Positionnel : quand il entre dans un pod, gagner de la distance ou couvrir la LOS au lieu de rester dans la boucle (HEURISTIC).
  - Macro : ramasser un EMP tôt et garder un porteur par zone de chase (HEURISTIC ; « un porteur par zone » suppose le vocal — en SoloQ, prendre un EMP si tu n'en vois pas chez les autres et le garder pour un Slipstream ou un groupe de pods réel). Ne pas se grouper (propagation 6 m [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]).
  - Équipe : l'EMP d'un coéquipier peut « nettoyer » un groupe de pods sur les gens (HEURISTIC).
- **Habitudes punissables / erreurs classiques** :
  - Jeter la palette en étant marqué alors qu'un pod te voit et qu'il peut y entrer.
  - Réparer à plusieurs dans la vue d'un pod.
  - Utiliser l'EMP trop tôt, sans pods ni Slipstream à nettoyer.
  - (HEURISTIC)
- **Adaptations avancées** : si l'Overclock empêche vraiment les stuns [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN], ne pas miser sur un stun juste après la téléportation. Courir vers un autre tile ou une fenêtre (SITUATIONAL).
- **Add-ons qui changent la décision** (tous [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]) :
  - Denied Requisition Form → tout le monde marqué au départ : aller chercher un EMP avant de s'installer sur un gen.
  - Iridescent Crystal Shard → aura près des pods fraîchement posés : ne plus compter sur la furtivité près d'un nouveau pod.
  - Nutritional Slurry (+2 pods) → plus de couverture : casser la LOS devient plus difficile, privilégier le mouvement vers une zone sans pods.
- **Implications de carte** : maps à murs hauts et nombreuses surfaces → meilleur réseau de pods. Maps ouvertes → longues LOS (HEURISTIC). Map de chapitre non vérifiée.
- **Perks fréquentes / synergies** : Pain Resonance, Grim Embrace, Pop, Lethal Pursuer ou Machine Learning [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Ses enseignables : Genetic Limits (Exhausted sur blessure → garder la perk d'exhaustion pour plus tard), Forced Hesitation (Hindered si quelqu'un tombe près de toi → s'écarter de la chase d'un allié), Machine Learning (Undetectable + Haste après un gen « compromis ») (valeurs [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]).
- **Écart avec le seed** : Overclock et Overheat **NON VÉRIFIABLE**, signalés par l'audit comme zone d'erreur probable. EMP 45 s et 4 imprimantes : **NON VÉRIFIABLE**.
- **Sources** : [1] [2]

## 33. The Xenomorph — archétype(s) : anti-loop (queue) | mobilité (tunnels) | info
- **Version** : ajouté au **2v8** en 10.1.2 (08/09/2026) [AUDIT]. Aucune mention d'un changement 1v4 entre 9.0.0 et 10.1.2a dans l'audit. **Ne pas importer les valeurs 2v8 en 1v4.**
- **Données LIVE** :
  - Vitesse 4,6 m/s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. TR 32 m / 24 m en Crawler [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN] → **CONFLICT-L4G5-02** (non résolu, aucune source).
  - Queue ≈ 4,8 m [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. 7 Control Stations [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; concordant avec connaissance du modèle]. Tunnels à 18 m/s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Tourelles : jusqu'à 4 [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Seuil de brûlure 125 charges [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
- **Identification** :
  - Avant le reveal : Control Stations et tourelles récupérables sur la map. Le bruit de sortie de tunnel [connaissance du modèle (antérieure à mi-2026), UNCERTAIN].
  - Pouvoir en action : tueur à quatre pattes (Crawler Mode) avec l'attaque de queue [connaissance du modèle (antérieure à mi-2026), UNCERTAIN].
  - Add-ons observables : dégâts sur un stun (Acidic Blood [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]).
  - Stratégie probable : pression par tunnels, anti-loop à la queue (HEURISTIC).
- **Ce qu'il cherche en chase** : toucher à la queue par-dessus une petite palette ou une fenêtre, ou « pincer » un tile court. Il évite les zones de tourelles (HEURISTIC).
- **Tiles / structures** :
  - Favorables : tiles couverts par une tourelle posée. Murs hauts pleins qui bloquent la queue (HEURISTIC).
  - Défavorables : palettes basses et petits tiles où la queue passe. Open areas.
  - Fenêtres vs palettes : la queue atteint souvent à travers une fenêtre ou au-dessus d'une palette (seed, [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]). Le vault n'offre donc pas la sécurité habituelle.
- **Mindgames propres** : feinte de queue, puis M1 (HEURISTIC). Sortie de tunnel inattendue près des gens (Undetectable en tunnel [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]).
- **Counterplay** :
  - Mécanique : lire le début de l'animation de la queue et esquiver **latéralement**, pas en ligne droite (HEURISTIC). Une queue ratée donne de la distance ([connaissance du modèle (antérieure à mi-2026), UNCERTAIN], durée de cooldown non vérifiée).
  - Positionnel : amener la chase vers une tourelle posée. Poser les tourelles **avant** la chase sur les tiles forts et sur les gens (HEURISTIC).
  - Macro : une fois hors Crawler Mode (sorti par une tourelle, par exemple), il est un M1 simple jusqu'à la recharge ([connaissance du modèle (antérieure à mi-2026), UNCERTAIN] ; durée de recharge non vérifiée, réduite par Ovomorph selon le seed). C'est la fenêtre pour tenir le tile et avancer les gens (HEURISTIC) — sans connaître la durée, ne pas « greeder » la tile au-delà d'une ou deux boucles.
  - Équipe : poser les tourelles de façon à couvrir hooks et gens. Les remplacer après destruction (HEURISTIC).
- **Habitudes punissables / erreurs classiques** :
  - Tenir une palette basse contre la queue.
  - Poser une tourelle là où il n'y a pas de chase.
  - Marcher debout près d'une sortie de tunnel (le seed dit crouch ou immobile = non détecté [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]).
  - (HEURISTIC)
- **Adaptations avancées** : s'il détruit systématiquement les tourelles, les poser par paires ou derrière un obstacle pour lui coûter du temps (HEURISTIC, non vérifié mécaniquement).
- **Add-ons qui changent la décision** (tous [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]) :
  - Ovomorph (recharge plus rapide) → la fenêtre « M1 simple » raccourcit : moins greeder après l'avoir sorti du Crawler.
  - Kane's Helmet (Mangled) → soin plus long : se soigner près d'une tourelle ou reporter le soin.
  - Acidic Blood (blessure sur stun) → ne pas stun en étant sain si cela te blesse : préférer la distance.
- **Implications de carte** : map Nostromo Wreckage (nom confirmé par l'audit, en 2v8) [AUDIT]. La distribution des Control Stations dépend de la map ([connaissance du modèle (antérieure à mi-2026), UNCERTAIN], non vérifié).
- **Perks fréquentes / synergies** : Bamboozle (le seed cite un taux de kill NightLight de 58,8 %, [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]), Pain Resonance, Pop. Ses enseignables : Alien Instinct (Oblivious), Rapid Brutality (Haste sur coup, sans Bloodlust), Ultimate Weapon (cri + Blindness à l'ouverture d'un casier → un cri sans chase indique la perk) (valeurs [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]).
- **Écart avec le seed** : TR 24 m en Crawler **NON VÉRIFIABLE**. Stats NightLight (41,5 % / 58,8 %) **NON VÉRIFIABLE**, sans échantillon ni date (critique générique de l'audit).
- **Sources** : [1] [2]

## 34. The Good Guy (Chucky) — archétype(s) : furtif | mobilité | anti-loop (dash + Scamper)
- **Version** : buffs **9.4.2** (10/02/2026) = **2v8** [AUDIT]. Le seed les cite comme counterplay 1v4 : erreur déjà relevée [AUDIT, OUTDATED_CONTENT_REPORT l. 48]. Aucun changement 1v4 vérifié en 9.x/10.x. Statut 1v4 : NON VÉRIFIABLE ici.
- **Données LIVE** :
  - Vitesse 4,4 m/s (110 %) [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; concordant avec connaissance du modèle]. TR 32 m [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Taille petite [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; concordant avec connaissance du modèle].
  - Hidey-Ho 14 s, cooldown 12 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Slice & Dice 8 m/s pendant 1,8 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Scamper 1 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - « Scamper casse la palette » : **UNRESOLVED en 1v4**. L'audit prouve seulement que les **buffs 9.4.2** étaient propres au 2v8 (le seed a donc tort de les dater et de les présenter comme 1v4). Il ne dit pas que la casse est « 2v8 uniquement » : sa liste wiki.gg Pallets ([AUDIT] STRONG_SECONDARY, « liste à reconfirmer », mode non précisé) cite au contraire le Good Guy parmi les pouvoirs qui détruisent les palettes. → Ne pas enseigner la casse 1v4 comme un fait, **ni** supposer qu'il ne peut pas casser (erreur inverse).
- **Identification** :
  - Avant le reveal : pas de TR, faux pas (Illusory Footfalls) autour de toi pendant Hidey-Ho [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; concordant avec connaissance du modèle]. Petite silhouette difficile à voir derrière le décor.
  - Pouvoir en action : un dash rapide suivi d'une attaque. Passage sous une palette ou par une fenêtre en fin de dash [connaissance du modèle (antérieure à mi-2026), UNCERTAIN].
  - Stratégie probable : hit-and-run furtif, pression de mobilité (HEURISTIC).
- **Ce qu'il cherche en chase** : un dash au moment où le survivant se retourne ou s'engage dans une ligne droite. Un Scamper pour annuler l'avantage d'une palette ou d'une fenêtre (HEURISTIC).
- **Tiles / structures** :
  - Favorables : tiles avec obstacles hauts et angles serrés, qui limitent la rotation du dash. Hauteur et longues LOS pour le voir venir malgré sa taille (HEURISTIC).
  - Défavorables : grandes lignes droites, où le dash comble l'écart (HEURISTIC).
  - Fenêtres vs palettes : le Scamper traverse les deux ([CM] UNCERTAIN). Ne pas s'arrêter juste derrière une palette : garder du mouvement (HEURISTIC). Ce conseil reste valable que le Scamper casse ou non la palette en 1v4 (UNRESOLVED) : ne jamais tenir une palette « safe » contre lui en supposant qu'elle ne sera ni franchie ni cassée.
- **Mindgames propres** : dash annulé ou retardé, Hidey-Ho pour disparaître, puis retour en angle mort (HEURISTIC).
- **Counterplay** :
  - Mécanique : esquive latérale tardive au moment du dash (rotation limitée, [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]). Pas de virage anticipé qu'il pourrait suivre (HEURISTIC).
  - Positionnel : jouer autour d'objets hauts. À 110 % ([SEED] + [CM], UNCERTAIN), un « hold W » perd moins vite qu'à 115 % (il reprend 0,4 m/s au lieu de 0,6 : 10 m en 25 s au lieu de 16,7 s) — HEURISTIC. **Mais** le dash change le calcul : à 8 m/s pendant 1,8 s [SEED] il parcourt ≈ 14,4 m pendant que tu en fais 7,2 → chaque dash reprend ≈ 7 m d'un coup. La distance brute n'a donc de valeur que si elle dépasse nettement cette portée **et** qu'un obstacle permet de dévier le dash ; en ligne droite dégagée, elle ne protège pas (cohérent avec « Défavorables » ci-dessus).
  - Macro : regarder régulièrement autour de soi quand il n'y a pas de TR. Les faux pas sont des indices peu fiables (HEURISTIC).
  - Équipe : annoncer sa position dès qu'il sort de Hidey-Ho (HEURISTIC ; SWF seulement — en SoloQ, se fier à ses propres checks et aux auras de perks).
- **Habitudes punissables / erreurs classiques** :
  - Rester immobile derrière une palette abaissée en supposant qu'elle protège.
  - Courir en ligne droite dans un espace ouvert.
  - Faire confiance aux sons de pas pendant Hidey-Ho.
  - (HEURISTIC)
- **Adaptations avancées** : après un dash raté, il a un cooldown (2,25 s en cas de raté [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]). C'est la fenêtre pour changer de tile (SITUATIONAL).
- **Add-ons qui changent la décision** (tous [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]) :
  - Iridescent Amulet (Hidey-Ho +50 %) → phases sans TR plus longues : quitter le gen au moindre indice visuel.
  - Portable TV (dash à 170 % de durée après l'alimentation des portes) → en endgame, éviter les lignes droites vers les portes. Ouvrir en équipe.
- **Implications de carte** : maps encombrées (hautes herbes, décor) → sa petite taille l'avantage. Maps ouvertes → le survivant le voit venir (HEURISTIC).
- **Perks fréquentes / synergies** : Pain Resonance, Friends 'til the End, Grim Embrace, Lethal Pursuer [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Ses enseignables : Hex: Two Can Play (aveuglé après un stun ou une lampe → chercher le totem), Friends 'til the End (Obsession Exposed), Batteries Included (Haste près d'un gen terminé) (valeurs [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]).
- **Écart avec le seed** : Scamper qui casse la palette « depuis 9.4.2 » présenté comme 1v4 : **FAUX sur la datation / le mode des buffs** (9.4.2 = 2v8, [AUDIT]) ; la capacité de casse en 1v4 elle-même reste **UNRESOLVED** (la liste Pallets de l'audit le cite). Le conseil du seed « jouez le tile, pas la palette » reste prudent dans les deux cas. « Très buffé début 2026 » : **IMPRÉCIS** (buffs 2v8). Tier A- : HEURISTIC non vérifiable.
- **Sources** : [1] [2] [3]

## 35. The Unknown — archétype(s) : ranged (UVX) | furtif/mobilité (hallucinations, téléportation)
- **Version** : buffé en **9.6.0** (28/04/2026) [AUDIT, sans détail]. Le « cooldown 6,25 s (9.6.0) » du seed n'est pas vérifiable. Statut LIVE : 9.6.0.
- **Données LIVE** :
  - Vitesse 4,6 m/s, TR 32 m [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Taille grande [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; concordant avec connaissance du modèle].
  - UVX : zone 2,25 m, Hindered 6 % pendant 3 s, cooldown 6,25 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Weakened : disparaît en regardant le tueur, 10 s cumulées à moins de 25 m [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Hallucinations : 4 [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Téléportation : cooldown 25 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
- **Identification** :
  - Avant le reveal : **hallucinations** (leurres fixes) sur la map [connaissance du modèle (antérieure à mi-2026), UNCERTAIN]. Leur présence identifie le tueur.
  - Pouvoir en action : projectile qui rebondit et explose. Statut Weakened sur le HUD [connaissance du modèle (antérieure à mi-2026), UNCERTAIN].
  - Stratégie probable : blessure en deux temps (Weakened, puis explosion), pression par téléportation vers les leurres (HEURISTIC).
- **Ce qu'il cherche en chase** : une explosion derrière un obstacle bas ou au rebond, pour appliquer Weakened puis blesser au tir suivant (HEURISTIC, cohérent avec le seed).
- **Tiles / structures** :
  - Favorables : **murs hauts pleins** qui empêchent les tirs en cloche et les rebonds (HEURISTIC).
  - Défavorables : palettes et murets bas, open areas.
  - Verticalité : un tir depuis un étage supérieur peut atteindre le bas ([connaissance du modèle (antérieure à mi-2026), UNCERTAIN], non vérifié).
- **Mindgames propres** : leurre laissé par la téléportation (5 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]). Tir retardé pour attraper le changement de direction (HEURISTIC).
- **Counterplay** :
  - Mécanique : bouger latéralement au moment où il relâche la charge. Ne pas s'arrêter dans une zone d'impact (HEURISTIC).
  - Positionnel : se débarrasser du Weakened quand on est hors de danger, en le regardant de loin **mais à moins de 25 m** (10 s cumulées selon le seed ; au-delà de 25 m le regard ne compte pas) (mécanique [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]). Compromis : le plus loin possible sous cette limite, avec un obstacle proche pour couper sa LOS s'il charge un tir (HEURISTIC).
  - Macro : dissiper les hallucinations proches des gens **quand il est loin** (un échec rend Weakened [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]).
  - Équipe : ne pas être plusieurs dans la même zone d'explosion (HEURISTIC).
- **Habitudes punissables / erreurs classiques** :
  - Tenir un muret bas.
  - Garder le Weakened en pensant qu'il s'en ira seul.
  - Dissiper un leurre pendant une chase proche.
  - (HEURISTIC)
- **Adaptations avancées** : s'il est déjà Weakened, le survivant perd la marge d'une première explosion. Prioriser les murs hauts ou quitter la zone au lieu de tenir le tile (SITUATIONAL).
- **Add-ons qui changent la décision** (tous [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]) :
  - Slashed Backpack (une hallucination touchée explose) → ne plus dissiper un leurre sans être sain et sans le tueur loin.
  - Iridescent OSS Report (téléportation −5 s, leurres plus longs avec TR) → un TR près d'un leurre peut être faux : vérifier visuellement avant de fuir.
- **Implications de carte** : intérieurs à plafond bas → moins de tirs en cloche ([connaissance du modèle (antérieure à mi-2026), UNCERTAIN], non vérifié). Maps ouvertes → portée maximale (HEURISTIC).
- **Perks fréquentes / synergies** : Pain Resonance, Unforeseen, Pop, Lethal Pursuer [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Ses enseignables : Unbound (Haste au vault après un stun ou une blessure), Unforeseen (TR transféré sur le gen + Undetectable → un TR soudain sur un gen frappé n'est pas le tueur), Undone (régression par token) (valeurs [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]). ⚠ Unbound et Undone : les valeurs du seed ch8 ressemblent à la liste PTB 10.2.0 (CONFLICT-K96-01, SUSPECT PTB-comme-LIVE) et Undone est **retravaillée au PTB 10.2.0** [AUDIT] → ne retenir que le principe.
- **Écart avec le seed** : cooldown de l'UVX 6,25 s attribué à 9.6.0 : **NON VÉRIFIABLE** (l'audit confirme seulement un buff en 9.6.0). NightLight 49,9 % : **NON VÉRIFIABLE**. Stat BHVR avril 2024 (64 % de kill au premier mois) : HISTORICAL [AUDIT].
- **Sources** : [1] [2]

## 36. The Lich (Vecna) — archétype(s) : mobilité (Fly) | anti-loop (Mage Hand) | info (Dispelling Sphere, objets)
- **Version** : **9.0.0** (17/06/2025 selon le registre de l'audit), tous les sorts sont disponibles dès le début [AUDIT]. Aucun autre changement relevé jusqu'à 10.1.2a. Kill rate mis en avant sur la population « broad » (toutes tranches confondues) selon BHVR, publication du 27/03/2026 (KB 540), noms seulement, sans chiffre [AUDIT].
- **Données LIVE** :
  - Vitesse 4,6 m/s, TR 32 m [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Fly : 8 m/s, 5 s max, cooldown 20 s, recovery 2,75 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Flight of the Damned : cooldown 30 s, 5 entités, 22 m [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Dispelling Sphere : cooldown 30 s ; désactive les objets magiques 45 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Mage Hand : cooldown 35 s ; bloque une palette debout 4 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Peut aussi **relever** une palette déjà tombée ([connaissance du modèle (antérieure à mi-2026), UNCERTAIN], cf. « palette qui se relève » en Identification).
  - **Mage Hand + Vorpal Sword** : destruction **instantanée** de palette, listée par l'audit (wiki.gg Pallets, [AUDIT] STRONG_SECONDARY, « liste à reconfirmer »). Le seed ne le mentionne pas.
  - Objets magiques dans les coffres (6 coffres [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]).
- **Identification** :
  - Avant le reveal : coffres à objets magiques et objets magiques ramassables [connaissance du modèle (antérieure à mi-2026), UNCERTAIN]. Leur présence identifie le tueur dès le début.
  - Pouvoir en action : vol au-dessus des obstacles ; entités fantomatiques ; une palette qui se relève ou reste bloquée [connaissance du modèle (antérieure à mi-2026), UNCERTAIN].
  - Stratégie probable : chases courtes grâce à Mage Hand, mobilité avec Fly (HEURISTIC).
- **Ce qu'il cherche en chase** : Mage Hand sur la palette au moment du drop → coup quasi garanti. Fly pour franchir une palette ou une fenêtre. Flight of the Damned dans un couloir (HEURISTIC, cohérent avec le seed).
- **Tiles / structures** :
  - Favorables : tiles avec **plusieurs palettes ou une fenêtre** en alternative, car Mage Hand n'agit que sur une palette à la fois ([seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN] + HEURISTIC). Terrain accidenté ?
  - Défavorables : palette unique et isolée. Open areas contre Fly.
  - Fenêtres vs palettes : après un Mage Hand, la fenêtre devient la ressource sûre (HEURISTIC).
- **Mindgames propres** : Mage Hand gardé en réserve pendant que le survivant hésite à jeter. Fly utilisé comme feinte de direction (HEURISTIC).
- **Counterplay** :
  - Mécanique : **s'accroupir** face à Flight of the Damned sur terrain plat ([seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN], [connaissance du modèle (antérieure à mi-2026), UNCERTAIN] concordant). Jeter la palette **plus tôt** quand Mage Hand est disponible **puis partir immédiatement** vers la tile suivante (HEURISTIC). Pourquoi « partir » : la palette n'est pas un investissement qui lui coûte — la combinaison Mage Hand + Vorpal Sword la détruit instantanément [AUDIT SS], et Mage Hand pourrait la relever [CM] ; le pré-drop sert à éviter le coup du blocage, pas à tenir la palette (KCH §2.2 b). Limites : Mage Hand en cooldown (35 s [SEED]) → drop normal ; contre un Lich qui garde Mage Hand et attend ton pré-drop, varier (départ sans drop, fenêtre alternative).
  - Positionnel : pendant la recovery de Fly (2,75 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]), prendre de la distance vers un autre tile.
  - Macro : suivre les cooldowns. Hors sorts, c'est un M1 standard (le seed le dit ; les valeurs des cooldowns ne sont pas vérifiées).
  - Équipe : partager les objets magiques utiles (SWF ; en SoloQ, ne ramasser que ce qui sert à sa propre situation). Savoir qu'ouvrir un coffre peut révéler (Killer Instinct [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]).
- **Habitudes punissables / erreurs classiques** :
  - Attendre à la palette jusqu'au dernier moment.
  - Courir debout dans un couloir face aux entités.
  - Spammer les objets magiques qui révèlent.
  - (HEURISTIC)
- **Adaptations avancées** : Book of Vile Darkness (voir ci-dessous) → le crouch ne protège plus : casser la LOS à la place (SITUATIONAL, [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]).
- **Add-ons qui changent la décision** (tous [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]) :
  - Iridescent Book of Vile Darkness (Flight touche les survivants accroupis ; Fly bloque les fenêtres 45 s) → ne plus crouch contre les entités, se mettre derrière un obstacle. Ne pas compter sur la fenêtre survolée.
  - Ring of Spell Storing / Pearl of Power (cooldowns réduits) → sorts plus fréquents : réduire le greed de palette.
- **Implications de carte** : maps ouvertes → Fly et Flight of the Damned plus forts. Terrain en pente → le crouch ne protège peut-être pas (le seed précise « terrain plat ») (HEURISTIC).
- **Perks fréquentes / synergies** : Pain Resonance, Surge, Dead Man's Switch, Barbecue & Chilli [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Ses enseignables : Dark Arrogance (vault et recovery plus rapides, mais stuns plus longs → un stun de palette rapporte plus de distance ; ⚠ valeurs du seed ch8 SUSPECTES PTB-comme-LIVE, CONFLICT-K96-01), Languid Touch (Exhausted si des corbeaux s'envolent près de toi → marcher autour des corbeaux), Weave Attunement (objets au sol + auras) (valeurs [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]).
- **Écart avec le seed** : « sorts dès le début (9.0.0) » : **OK** [AUDIT]. Destruction instantanée de palette par Mage Hand + Vorpal Sword : **omise** par le seed (IMPRÉCIS, liste Pallets de l'audit, à reconfirmer). « N°1 tous MMR » : **OK en substance** (BHVR cite le Lich pour le kill rate « broad », [AUDIT]). Top 5 MMR élevé et NightLight 50,1 % : **NON VÉRIFIABLE**.
- **Sources** : [1] [2]

## 37. The Dark Lord (Dracula) — archétype(s) : mobilité (chauve-souris) | ranged/zone (Hellfire) | anti-loop (loup)
- **Version** : Hellfire buffé en « 9.2.x » selon le seed [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN] ; l'audit ne le mentionne pas. Statut LIVE : NON VÉRIFIABLE.
- **Données LIVE** :
  - Vitesse 4,6 m/s ; 6,5 m/s en chauve-souris [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. TR 32 m ; berceuse 48 m en chauve-souris [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Cooldown de 3,5 s entre deux transformations [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Hellfire : charge 0,9 s, 8 piliers sur 10 m, cooldown 9,5 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
  - Pounce : 2 bonds max, cooldown 20 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. La forme loup casse les palettes par son pouvoir (wiki Pallets via [AUDIT], STRONG_SECONDARY).
  - Téléportation de la chauve-souris vers une palette ou une fenêtre entre 2 et 32 m, cooldown 15 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN].
- **Identification** :
  - Avant le reveal : berceuse de chauve-souris [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Scent Orbs laissées par les survivants en forme loup [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; concordant avec connaissance du modèle].
  - Pouvoir en action : les trois silhouettes distinctes (vampire, loup, chauve-souris).
  - Stratégie probable : arrivée en chauve-souris sur un tile, puis loup ou vampire selon le tile (HEURISTIC).
- **Ce qu'il cherche en chase** : piliers d'Hellfire pour bloquer une sortie de boucle ou une fenêtre. Pounce du loup sur une palette. Arrivée en chauve-souris directement sur le tile (HEURISTIC).
- **Tiles / structures** :
  - Favorables : tiles longs à plusieurs palettes (seed). Obstacles qui cassent la ligne droite de l'Hellfire (HEURISTIC).
  - Défavorables : couloirs droits (Hellfire). Palettes isolées (loup). Contre le loup, le **pré-drop est contre-productif** : son pouvoir casse la palette sans coût connu ([AUDIT] SS, à reconfirmer), comme le Shred du Demogorgon (KCH §2.2) → préférer une fenêtre ou une tile sans palette unique ; contre le vampire, la palette redevient une ressource normale (HEURISTIC).
  - Fenêtres vs palettes : les palettes et fenêtres servent de **points de téléportation** à la chauve-souris ([seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]) : un tile dense en ressources lui sert aussi.
- **Mindgames propres** : changements de forme successifs (le cooldown de 3,5 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN] limite l'enchaînement). Hellfire en pré-placement sur la sortie (HEURISTIC).
- **Counterplay** :
  - Mécanique : esquive **latérale** de l'Hellfire (ligne droite) ; ne pas rester dans l'axe (HEURISTIC).
  - Positionnel : pendant la forme chauve-souris (pas d'attaque [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN ; concordant avec connaissance du modèle]), se repositionner ; anticiper l'arrivée sur la palette ou la fenêtre la plus proche.
  - Macro : ne pas laisser une traînée de Scent Orbs en ligne droite (seed). Casser le chemin (HEURISTIC).
  - Équipe : annoncer la forme actuelle (HEURISTIC ; SWF — en SoloQ, la berceuse de chauve-souris et les Scent Orbs sont les seuls signaux partagés).
- **Habitudes punissables / erreurs classiques** :
  - Rester dans l'axe d'un vampire qui charge.
  - Tenir une palette seule contre le loup.
  - Se croire en sécurité parce que la berceuse de la chauve-souris est loin (48 m [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]).
  - (HEURISTIC)
- **Adaptations avancées** : exploiter le cooldown de transformation. Juste après une transformation, il est bloqué dans cette forme pendant ~3,5 s [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN] → choisir le tile adapté à la forme actuelle (SITUATIONAL).
- **Add-ons qui changent la décision** (tous [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]) :
  - Iridescent Ring of Vlad (piliers à tête chercheuse) → l'esquive latérale ne suffit plus : casser la LOS derrière un mur.
  - Cube of Zoe (piliers autour de lui après un gen) → ne pas approcher au corps à corps juste après la fin d'un gen.
  - Warg's Fang (aura des survivants dont il a ramassé les orbes) → éviter de laisser des orbes près des gens.
- **Implications de carte** : maps denses en palettes et fenêtres → mobilité de la chauve-souris accrue (HEURISTIC). Map de chapitre non vérifiée.
- **Perks fréquentes / synergies** : Pain Resonance, Grim Embrace, Pop, Lethal Pursuer [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]. Ses enseignables : Hex: Wretched Fate (réparation plus lente pour l'Obsession → chercher le totem), Human Greed, Dominance (blocage de coffre ou de totem) (valeurs [seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé), UNCERTAIN]).
- **Écart avec le seed** : « 4,8 m/s en loup avec Scent Orbs » : **NON VÉRIFIABLE**, formulation suspecte (Haste en % plutôt qu'une vitesse fixe ?). Casse de palette en forme loup : **OK** (concordant avec la liste wiki Pallets de l'audit). Hellfire 9,5 s « 9.2.x » : **NON VÉRIFIABLE**.
- **Sources** : [1] [2]

---

## Claims

Calculs dérivés (audit pass 14) : Skull Merchant sous Hindered 10 % [AUDIT] + Haste 5 % [SEED] → 3,6 contre 4,83 m/s, écart repris ≈ 1,23 m/s (×2 par rapport à 0,6) ; Good Guy à 4,4 m/s → 0,4 m/s repris (10 m en 25 s), mais dash 8 m/s × 1,8 s [SEED] ≈ 14,4 m contre 7,2 m pour le survivant → ≈ 7 m repris par dash.

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| L4G5-01 | Skull Merchant : rotation des drones 105°/s, Hindered 10 %, « CD 7 s », Undetectable 6 s | [1] audit phase 0 | 9.3.0 | VERIFIED selon l'audit (non re-vérifié) |
| L4G5-02 | Skull Merchant : Undetectable 8 s au rappel d'un drone | [1] | 9.3.2 | VERIFIED selon l'audit |
| L4G5-03 | Skull Merchant : pas de rework en 9.x | [1] | 9.x | VERIFIED selon l'audit |
| L4G5-04 | Skull Merchant TR 24 m | [2] seed | ? | UNCERTAIN (32 m [connaissance du modèle (antérieure à mi-2026), UNCERTAIN]) |
| L4G5-05 | Good Guy : buffs 9.4.2 = 2v8 uniquement | [1] [3] | 9.4.2 | VERIFIED selon l'audit |
| L4G5-05b | Good Guy cité parmi les pouvoirs qui détruisent les palettes (mode non précisé) | [1] (wiki.gg Pallets) | — | STRONG_SECONDARY, « liste à reconfirmer » ; capacité 1v4 UNRESOLVED |
| L4G5-09b | Lich : Mage Hand + Vorpal Sword détruit une palette instantanément | [1] (wiki.gg Pallets) | — | STRONG_SECONDARY, « liste à reconfirmer » |
| L4G5-06 | Good Guy 4,4 m/s | [2] + [connaissance du modèle (antérieure à mi-2026), UNCERTAIN] | — | UNCERTAIN |
| L4G5-07 | Unknown buffé | [1] | 9.6.0 | VERIFIED selon l'audit (sans détail) |
| L4G5-08 | Unknown : cooldown de l'UVX 6,25 s | [2] | 9.6.0 ? | UNCERTAIN |
| L4G5-09 | Lich : sorts disponibles dès le début | [1] | 9.0.0 | VERIFIED selon l'audit |
| L4G5-10 | Lich : kill rate le plus élevé « broad » (sept. 2025 - févr. 2026) | [1] | — | VERIFIED selon l'audit (noms seulement) |
| L4G5-11 | Xenomorph ajouté au 2v8 (Nostromo Wreckage) | [1] | 10.1.2 | VERIFIED selon l'audit ; 2v8 ≠ 1v4 |
| L4G5-12 | Dark Lord : la forme loup détruit les palettes | [1] (wiki Pallets) | — | STRONG_SECONDARY |
| L4G5-13 | Toutes les autres valeurs chiffrées des 7 fiches | [2] | — | UNCERTAIN / NON VÉRIFIABLE |

## Conflits

#### CONFLICT-L4G5-01 : TR de The Skull Merchant
- Source A : seed ch8 l. 1420, « TR : 24 m ».
- Source B : connaissance interne du modèle, 32 m (non sourcée).
- Hypothèse : le seed confond peut-être avec une réduction de TR temporaire ou une ancienne version.
- Résolution : UNRESOLVED (à vérifier sur wiki.gg The_Skull_Merchant).

#### CONFLICT-L4G5-02 : TR du Xenomorph en Crawler Mode
- Source A : seed, 24 m en Crawler.
- Source B : aucune (la connaissance interne n'est pas assez fiable pour trancher).
- Résolution : UNRESOLVED.

#### CONFLICT-L4G5-03 : Scamper de Good Guy qui casse les palettes en 1v4
- Source A : seed, « depuis 9.4.2 », présenté comme 1v4.
- Source B : audit phase 0, changements 9.4.2 propres au 2v8.
- Source C : audit phase 0, table Palettes (wiki.gg Pallets, STRONG_SECONDARY, « liste à reconfirmer ») : le Good Guy figure parmi les destructions de palette par pouvoir, sans mode précisé.
- Hypothèse : le seed a mélangé 2v8 et 1v4 pour la datation des buffs ; la capacité de casse elle-même existe peut-être aussi en 1v4.
- Résolution : **partielle**. Prouvé : les buffs 9.4.2 sont propres au 2v8 (A vs B). **UNRESOLVED** : le Scamper casse-t-il les palettes en 1v4 en 10.1.2a (B vs C) ? Ne pas conclure « ne casse pas en 1v4 ».

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Skull Merchant TR | 24 m | non (32 m ? [connaissance du modèle (antérieure à mi-2026), UNCERTAIN]) | NON VÉRIFIABLE (CONFLICT-01) |
| Skull Merchant, Undetectable au rappel d'un drone | absent | 8 s (9.3.2) [AUDIT] | IMPRÉCIS (omission) |
| Skull Merchant, crouch/marche pour éviter le scan | oui | non | NON VÉRIFIABLE |
| Skull Merchant, rework 2027 | confirmé | non | NON VÉRIFIABLE |
| Singularity, Overclock/Overheat, EMP | valeurs détaillées | non ; zone d'erreur signalée par l'audit | NON VÉRIFIABLE (suspect) |
| Xenomorph TR en Crawler | 24 m | non | NON VÉRIFIABLE |
| Good Guy, Scamper qui casse la palette + counterplay associé | 1v4 depuis 9.4.2 | buffs 9.4.2 = 2v8 [AUDIT] ; casse citée dans la liste Pallets (SS) | FAUX sur la datation/le mode des buffs ; capacité 1v4 UNRESOLVED |
| Lich, casse de palette | non mentionnée | Mage Hand + Vorpal Sword = destruction instantanée (liste Pallets, SS) | IMPRÉCIS (omission) || Good Guy « très buffé début 2026 » | oui | buffs 2v8 | IMPRÉCIS |
| Unknown UVX 6,25 s (9.6.0) | oui | buff 9.6.0 confirmé, valeur non | NON VÉRIFIABLE |
| Lich, sorts dès le début (9.0.0) | oui | [AUDIT] | OK |
| Lich n°1 tous MMR (BHVR) | oui | [AUDIT] | OK (noms seulement, sans chiffres) |
| Dark Lord, loup 4,8 m/s avec orbes | oui | non | NON VÉRIFIABLE (formulation suspecte) |
| Dark Lord, loup casse les palettes | oui | wiki Pallets via [AUDIT] | OK |
| Stats NightLight (Xeno 41,5/58,8 %, Unknown 49,9 %, Lich 50,1 %) | oui | non | NON VÉRIFIABLE (ni échantillon ni date) |

## Questions ouvertes

1. Relancer ce lot avec un **budget WebSearch disponible**. Priorités :
   - TR de la Skull Merchant et mécanique exacte du Lock-On et des Claw Traps (LIVE 9.3.2) ;
   - Overclock/Overheat et EMP du Singularity ;
   - comportement 1v4 du Scamper de Good Guy ;
   - détail du buff de l'Unknown en 9.6.0 ;
   - cooldowns des sorts du Lich ;
   - valeurs du Dark Lord.
2. Quelle erreur précise l'audit phase 0 a-t-il relevée sur le Singularity ? (`audit/pass0_*.md` est absent du repo.)
3. Le crouch protège-t-il du scan des drones de la Skull Merchant et de la détection autour des sorties de tunnel du Xenomorph ?
4. Le radar de la Skull Merchant dépend-il de la ligne de vue ?
5. Aucune source EXPERT_OPINION (guides survivants écrits) n'a pu être consultée. Tout le counterplay de ce fichier est HEURISTIC.

## Sources

[1] Audit phase 0 (historique des patchs 9.0.0 → 10.1.2a, référence vérifiée) — `kb/seed/audit_phase0.txt` — lu le 27/09/2026 (fichier local).
[2] Guide seed, chapitre 8 (brouillon non fiable) — `kb/seed/ch8_killers.txt` l. 1-256 et 1419-1663 — lu le 27/09/2026 (fichier local).
[3] Outdated content report — `kb/ledgers/OUTDATED_CONTENT_REPORT.md` l. 48 — lu le 27/09/2026 (fichier local).
Aucune source web : 0 recherche WebSearch aboutie (budget de session 200/200 épuisé).
URL à consulter lors de la relance (listées par le seed, non consultées) : https://deadbydaylight.wiki.gg/wiki/The_Skull_Merchant · /The_Singularity · /The_Xenomorph · /The_Good_Guy · /The_Unknown · /The_Lich · /The_Dark_Lord
