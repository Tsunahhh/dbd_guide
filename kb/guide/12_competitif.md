# 12. DBD compétitif et ce qui se transfère

> **Périmètre** : mode 1v4, référence **LIVE 10.1.2a (17/09/2026)**. Ce chapitre compare deux contextes qu'il ne faut jamais confondre : le **COMPETITIVE DBD** (ligues, tournois, règlements) et le **PUBLIC MATCHMAKING** (les parties que vous jouez). Il se termine par une section de **littératie des données** : comment lire, juger et citer une statistique de DBD.

> **Limites (à lire avant tout)** [FACT] : le site de la DBDLeague (dbdleague.com), YouTube, Twitch, X et Liquipedia étaient **inaccessibles** pendant la recherche. Conséquences :
>
> - **aucune VOD n'a été analysée** ; ce chapitre ne tire aucune leçon « vue en match » ;
> - les **règlements récents** (saison DBDL en cours, page Balancing, barème exact, pool de tueurs, statut de l'anti-facecamp) **n'ont pas été lus** ; seules les règles des Community Cups officielles de 2023 sont vérifiées, le reste vient de relais ;
> - la partie « ce qui se transfère » est une **analyse** (étiquetée [HYPOTHÈSE] / [AVIS D'EXPERT]) construite à partir des règles connues, pas un constat sourcé.

---

## 12.1 Deux jeux qui partagent un moteur [Débutant]

**QUOI.** Le compétitif et le public utilisent les mêmes mécaniques (vitesses, gens, crochets). Mais les **conditions** changent tellement que la meilleure décision peut être opposée d'un contexte à l'autre.

```
                COMPETITIVE DBD                    PUBLIC MATCHMAKING
  Adversaires   équipes inscrites, niveau connu    MMR caché, attente > précision
  Survivants    4 en vocal, entraînés ensemble      SoloQ (sans vocal) ou SWF
  Tueur / carte connus ou encadrés à l'avance       aléatoires, découverts en partie
  Loadouts      bans, pas de doublons, add-ons      tout est permis
                plafonnés
  Victoire      RELATIVE (comparer 2 équipes        ABSOLUE et individuelle
                sur le même tueur)                  (évasion / sacrifice)
```

**POURQUOI c'est important.** Un conseil compétitif contient des **hypothèses cachées** (vocal, carte connue, tueur bridé, loadouts sans doublons). Copié en public sans ces hypothèses, il peut devenir faux.

> **À retenir** : avant d'appliquer un conseil « de pro », demandez-vous **sous quelles règles il a été optimisé**. Si vous ne le savez pas, traitez-le comme une [HYPOTHÈSE] à tester.

---

## 12.2 L'écosystème compétitif (état connu au 27/09/2026) [Intermédiaire]

| Acteur | Ce qu'on sait | Confiance |
|---|---|---|
| **DBDLeague (DBDL)** | Organisation historique (depuis 2018), **soutenue officiellement par BHVR depuis juin 2025**. Organise des saisons de ligue, l'All Hallows League 2025 (vainqueur : Invictus), le Winter Circuit 2026, la **première LAN** (Osnabrück, 14-16/08/2026) et un ladder 1v1 sur Discord | [FACT] (SS) ; résultats de la LAN **non trouvés** |
| **BHVR** | Community Cups officielles (Battlefy, 2023), **arrêtées fin 2023**. Soutient la DBDL **sans rééquilibrer le jeu pour le compétitif**. Améliorations du spectateur en partie personnalisée annoncées (presse, juin 2025) | [FACT] (SS) ; annonce spectateur : presse seule |
| **Autres circuits** | DBDRanked (Discord, championnat) ; tournois communautaires (forum BHVR) ; scène japonaise (DFC, DIC-JAPAN, JCG), règles plus légères, « 10 tournois = 10 règlements » (note.com, mars 2026) | [FACT] (SS) |
| **Équipes de référence (EU)** | Invictus, Praxis (finales AHL 2025, Winter Circuit 2026, DBDRanked), Ariandel, Elysium, Nokron | [FACT] (SS) |
| **Ressources publiques** | Comp DBD Wiki (compdbd.fyi, fan, mis à jour nov. 2025) ; Hens (callouts, builds) ; Otzdarva (tier lists, **non lues**) ; CompDBD (compdbd.com, éditeur inconnu) | Existence seulement |

**Taille de la scène** [FACT] : de niche. Aucun tournoi DBD n'est suivi par Esports Charts en 2025-2026 ; les prix viennent surtout des dons.

> **Note avancée** : « 10 tournois = 10 règlements » veut dire qu'il n'existe **pas une** méta compétitive, mais une méta **par règlement**. Toute phrase « en compétitif, on joue X » doit préciser **quel** circuit et **quelle** saison.

Détail : `kb/seed/audit_phase0.txt` p.42-43 (§5.1).

---

## 12.3 Règlements : compétitif contre matchmaking public [Intermédiaire]

| Dimension | Compétitif (4v1 de ligue) | Public (LIVE 10.1.x) | Confiance |
|---|---|---|---|
| **Adversaires** | Équipes inscrites de 5 joueurs, niveau homogène | MMR caché. Depuis 10.1.0, il compte **aussi des actions en partie**, pas seulement kills et évasions ; il est **par tueur**, **commun** aux survivants, et le temps d'attente passe avant la précision | Calcul 10.1.0 : (VP) ; autres points : (VM/SS) ; reset MMR : [INCERTAIN] |
| **Communication** | 4 survivants en vocal par construction | SoloQ sans vocal (majorité des parties selon une donnée de **2019**) ou SWF | Donnée 2019 : **ancienne** |
| **Tueur** | Pool fixé par l'organisateur ; **même tueur pour les deux équipes** (DBDL) ; tueurs forts **bridés** par des règles d'équilibrage | N'importe lequel, inconnu au lobby | (SS) / [INCERTAIN] |
| **Carte** | Assignée par tueur et imposée par offrande (DBDL) ; ou pool de cartes (Cups) | Aléatoire, offrandes de carte possibles | [INCERTAIN] |
| **Perks survivants** | **Pas de doublon** (16 perks différentes) ; bans ciblés (boons, gen-rush, sabotage, RNG, DH / Deliverance / Unbreakable selon le tueur) | Aucune restriction | Pas de doublon : [FACT] (Cups 2023) ; liste des bans : [INCERTAIN] |
| **Objets** | Pas de doublon ; ni Keys ni Maps (Cups) | Libres | [FACT] (Cups 2023) |
| **Add-ons** | Rareté plafonnée : Common / Uncommon, Rare jusqu'aux quarts (Cups) ; ≤ jaune côté tueur (relais DBDL) | Libres (Iri, Ultra Rare) | Cups : [FACT] ; DBDL : relais |
| **Offrandes** | Interdites (Cups) ou obligatoires pour fixer la carte (DBDL) | Libres | (SS) |
| **Condition de victoire** | **Relative** : hook stages, gens restants, temps ; on compare deux équipes sur le même tueur. En 1v1 : temps de chase | **Absolue et individuelle** : évasion ou sacrifice (et, pour le MMR, des actions) | (SS) ; barème exact DBDL : **inconnu** |
| **Camping / tunneling** | Stratégies légitimes et attendues (guide DBDL v1.0) ; mécanique anti-facecamp parfois mise à l'écart (formulation ambiguë) | Mêmes stratégies possibles, mais sous les **protections anti-camp** et subies par des solos | [INCERTAIN] pour l'anti-facecamp |
| **Contenu récent** | Interdit quelques semaines (2 semaines dans les Cups) | Disponible dès la sortie | [FACT] (Cups 2023) |
| **Déconnexions / bugs** | Replays encadrés | Pénalités de DC ; parties avec DC **exclues** des kill rates officiels | (SS) |

### Ce que « victoire relative » change [Avancé]

```
  Public :      chaque survivant joue SON évasion ; chaque partie est jugée seule.
  Compétitif :  Équipe A contre tueur T  ──►  score A (hook stages, gens, temps)
                Équipe B contre tueur T  ──►  score B
                Gagnant = meilleur score SUR LE MÊME TUEUR (et la même carte)
```

[AVIS D'EXPERT] La conséquence est profonde : en compétitif, une équipe peut accepter une mort **si** elle rapporte assez de temps ou de gens pour battre l'autre équipe. En public, ce raisonnement n'a pas de sens pour le joueur sacrifié, et le tueur qui « joue pour les hook stages » ne maximise pas forcément ses kills.

> **Erreur fréquente** : citer « la règle compétitive » sans date. Les seules règles **lues** sont celles des Cups BHVR de **2023**. Tout ce qui concerne la saison DBDL en cours est un **relais** non vérifié.

Détail : `kb/seed/audit_phase0.txt` p.43 (§5.2).

---

## 12.4 Méta ≠ optimalité [Intermédiaire]

**QUOI.** La « méta », c'est ce qui est **joué** (souvent mesuré par un pick rate). L'« optimal », c'est ce qui **gagne le plus dans un contexte donné**. Les deux se recouvrent en partie seulement.

**POURQUOI ils divergent** [HEURISTIQUE] :

| Moteur de popularité | Pourquoi ça gonfle le pick rate | Pourquoi ce n'est pas forcément optimal |
|---|---|---|
| **Popularité / visibilité** | Vu chez un streamer, copié | Le streamer a un autre niveau, une autre file (SWF), un autre but (divertir) |
| **Accessibilité** | Perk ou tueur gratuit, facile, déjà possédé | Facile ≠ fort ; ce qui est plus exigeant peut être plus rentable pour qui le maîtrise |
| **Régularité (faible variance)** | Résultat « correct » à chaque partie | Une option à forte variance peut avoir une meilleure moyenne, ou l'inverse |
| **Plafond (skill ceiling)** | Les meilleurs s'en servent | Au niveau moyen, l'option à haut plafond peut être la pire |
| **Nouveauté** | Nouveau tueur / survivant essayé par curiosité | Pick élevé pendant l'apprentissage : les stats ne sont pas stabilisées (voir 12.8) |
| **Contexte de règlement** | En compétitif, ce qui reste légal après les bans | En public, l'option bannie peut redevenir la meilleure (et inversement) |
| **Cosmétique / attachement** | Personnage apprécié (ex. pick de survivants) | Aucun lien avec la force : les survivants ont les mêmes capacités de base |

**QUAND la méta est un bon indice** : pour savoir **contre quoi** vous jouerez le plus souvent (préparer la contre-stratégie des tueurs et perks fréquents). **QUAND elle trompe** : pour choisir **votre** build ou juger la force d'une option.

### Méta compétitive ≠ méta publique

- Les builds compétitifs sont optimisés **sous des bans** (pas de doublon, boons et gen-rush souvent interdits, add-ons plafonnés). En public, les options optimales sont **différentes**, et l'inverse est vrai aussi [HYPOTHÈSE].
- Les tueurs forts sont **bridés** en compétitif : une **tier list compétitive n'est pas une tier list publique** [AVIS D'EXPERT].
- **Cas réel** [FACT] : l'ancien guide présentait un « 4-man A : méta compétitive ». Cette compo **n'est légale dans aucun règlement connu** (doublons, perks visées par les bans). Autre exemple de l'ancien guide : une compo avec la même perk sur les 4 joueurs viole directement la règle « pas de doublon » ; une compo « boons » tombe sous les bans de boons relayés [INCERTAIN].

> **À retenir** : « tout le monde le joue » répond à la question « que vais-je affronter ? », pas à « que dois-je jouer ? ».

> **Exercice** : prenez le build que vous jouez le plus. Écrivez pour chaque perk la raison du choix : popularité, accessibilité, régularité, plafond, ou **gain mesuré en secondes**. Si aucune perk n'a la dernière justification, testez une alternative sur 10 parties en notant durée de chase et gens terminés (voir `kb/deliverables/TRAINING_PROGRAM.md`).

---

## 12.5 Ce qui se transfère vers le public [Intermédiaire → Avancé]

Analyse [HYPOTHÈSE] / [AVIS D'EXPERT], construite sur les règles vérifiées ci-dessus. Degré de transfert estimé par file :

| Compétence compétitive | SoloQ | SWF | Côté tueur |
|---|---|---|---|
| 1. Chase et lecture des tiles | Totale | Totale | Totale (lecture des tiles côté tueur) |
| 2. Économie du temps (secondes, hook stages) | Totale | Totale | Totale |
| 3. Discipline d'information (callouts) | Faible (aura, Kindred) | Forte | — |
| 4. Répartition des rôles | Partielle (règles implicites) | Forte | — |
| 5. Pression plutôt que 4K | — | — | Forte, avec prudence |

### 1. Chase et lecture des tiles — le socle

- **QUOI** : tenir le tueur loin des gens le plus longtemps possible. C'est la compétence de base du compétitif et l'étalon du 1v1 (temps de chase).
- **POURQUOI** : une chase est la même en public : même tueur, mêmes tiles, mêmes vitesses (survivant 4,0 m/s ; tueurs 4,6 ou 4,4 m/s à quelques exceptions près) (VM).
- **QUAND** : toujours. C'est la seule compétence qui ne dépend ni de la file ni du règlement.
- **CONTRE** : les tueurs qui ignorent les tiles (pouvoirs de mobilité, casse de palettes). Voir les chapitres 7-8 (fiches tueurs), le chapitre 3 (casse de palettes par pouvoir) et `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md`.
- **CAS D'ÉCHEC** : copier une **route** apprise sur une carte connue d'avance ; en public, la carte est aléatoire (voir 12.6).
- **EXERCICE** : chronométrez vos chases sur 10 parties (durée, palettes utilisées, gens terminés pendant la chase).

Détail : `kb/research/batch6_chase_tech.md`, `kb/research/batch7_tiles.md`.

### 2. Économie du temps

- **QUOI** : raisonner en **secondes gagnées ou perdues** plutôt qu'en « j'ai survécu ». 1 gen solo = **90 s** (VM) ; 1 phase de crochet = **70 s** (VP).
- **POURQUOI** : le score compétitif (hook stages, gens restants, temps) oblige à cette comptabilité. C'est **cohérent avec le MMR 10.1.0**, qui ne compte plus seulement kills et évasions mais aussi des actions en partie (VP) ; BHVR ne publiera pas « les maths exactes » (CM, août 2026).
- **QUAND** : à chaque décision (soin, sauvetage, gen à lâcher).
- **CONTRE** : ne pas pousser jusqu'au sacrifice volontaire d'un coéquipier (voir 12.6, objectif relatif).
- **EXERCICE** : après une défaite, listez 3 décisions et leur coût approximatif en secondes-survivant.

Détail : `kb/research/batch9_macro.md` §1.

### 3. Discipline d'information

- **QUOI** : callouts courts, conventions de repérage (horloge, landmarks).
- **SoloQ** : seulement via ce que le jeu montre : aura, Kindred, icônes du HUD, loadouts des coéquipiers visibles dans Match Details (VP, 9.6.0).
- **SWF** : directement transférable (voir 12.7).
- **CAS D'ÉCHEC** : parler pendant la chase d'un allié (il n'entend plus le Terror Radius).

### 4. Rôles

- **QUOI** : qui tient la chase, qui répare, qui sauve.
- **SWF** : transférable, à condition que les rôles restent **flexibles**.
- **SoloQ** : partiel, via des règles implicites (le plus proche sauve, celui en chase éloigne le tueur des gens). Voir `kb/research/batch9_macro.md` §3.

### 5. Côté tueur : la pression

- **QUOI** : priorité à la pression (hooks rapides, gestion des 3 gens), jugée à l'efficacité plutôt qu'au 4K.
- **CONTRE / CAS D'ÉCHEC** : en public, le résultat reste absolu ; « jouer pour les hook stages » ne maximise pas forcément les kills [AVIS D'EXPERT].

---

## 12.6 Ce qui ne se transfère pas (ou est dangereux à copier) [Avancé]

| # | Élément compétitif | Pourquoi ça casse en public | Cas d'échec typique | Alternative publique |
|---|---|---|---|---|
| 1 | **Builds et « méta compétitive »** | Optimisés sous des bans et sans doublons | Se priver d'une perk bannie en compétitif mais très utile en public (ou l'inverse) | Construire le build pour **sa file** (SoloQ ou SWF) et les tueurs fréquents |
| 2 | **Préparation par carte** | Carte connue d'avance en compétitif, aléatoire en public | Route pré-apprise inutilisable ; temps perdu à chercher un tile « prévu » | Apprendre des **principes** de tiles et de lecture de carte, pas des routes |
| 3 | **Vocal et 4 joueurs compétents supposés** | La majorité des parties publiques sont en SoloQ ou en duo (donnée 2019, ancienne) | Trade précis ou body block planifié que personne ne suit | Décisions **robustes** (pire cas acceptable) ; voir `batch9_macro.md` §3.5 |
| 4 | **Objectif relatif** | En public, chacun joue son évasion | « Sacrifier » un coéquipier pour gagner du temps : aucun adversaire à battre au score | Maximiser les évasions de l'équipe, en secondes |
| 5 | **Équilibrage des tueurs** | Tueurs forts bridés en compétitif | Sous-estimer un tueur « faible en tier list comp » qui est libre en public | Juger un tueur **sans** ses bridages |
| 6 | **Camping / tunneling « normalisés »** | Légitimes contre des survivants préparés ; en public, joués sous les mécaniques anti-camp et contre des solos | Tueur qui copie un facecamp compétitif et se heurte à l'anti-camp | Mesurer le coût réel (temps, MMR) dans **ce** contexte |

> **Erreur fréquente** : « les pros tunnelent, donc c'est la bonne stratégie ». En compétitif, c'est attendu **dans un règlement donné** ; en public, les protections anti-camp et l'absence de coordination adverse changent le calcul. Efficacité et coût **diffèrent** ; aucune mesure publique ne les chiffre [INCERTAIN].

---

## 12.7 SWF : importer la discipline, pas les hypothèses [Intermédiaire]

Le SWF en vocal est le contexte public le plus proche du compétitif. Mais les adversaires, la carte et le tueur restent aléatoires, et aucune statistique officielle chiffrée ne mesure l'effet du vocal (BHVR mesure le fait de jouer en groupe, pas la communication). Les chiffres « +3 / +8 points d'évasion en vocal » de l'ancien guide n'ont **aucune source** : ne les citez pas.

> **[DATA]** (VP) : sur janvier-mars 2025, les **groupes coordonnés au high MMR** ont le meilleur taux d'évasion, et les **solos du « wider MMR »** sont au-dessus de la moyenne globale (billet officiel « Stats | January - March 2025 »). Constat **qualitatif**, sans chiffre par taille de groupe.

### Rôles (flexibles, pas des castes)

| Rôle | Mission | Échec typique |
|---|---|---|
| **Runner / looper** | Prendre la 1re chase, la tenir loin des gens | Ramener le tueur vers les gens |
| **Gen jockey (×1-2)** | Réparer sans être trouvé, annoncer les gens | Venir « voir » les chases |
| **Support / rescuer** | Suivre les crochets, soigner, décrocher | Trop tôt sur le crochet ; trade au mauvais moment |
| **Shot-caller** (rôle de parole) | Trancher : qui sauve, quel gen, quelle porte | Parler trop, micro-gérer la chase |

[HEURISTIQUE] Les rôles tournent : le runner blessé à 2 crochets devient jockey ; le jockey sain devient runner si le tueur le trouve.

### Protocoles (résumé) [HEURISTIQUE]

1. **Crochet** : l'accroché annonce position et comportement du tueur ; **un** sauveteur désigné annonce son ETA ; les autres réparent.
2. **Chase** : seul le poursuivi parle (tile, palettes restantes, intention) ; il annonce **tôt** s'il va tomber.
3. **Gens** : repère de carte + % arrondi à la dizaine ; au-delà de 80 %, candidat au « 99 ».
4. **3-gen** : dès 3 gens restants (5 sur la carte), finir en priorité des gens du groupe le plus serré **avant** qu'il ne devienne le 3-gen, si le tueur le permet (voir chapitre 2 §2.2.4 et chapitre 6).
5. **Slug** : tueur à côté du mourant → personne par défaut ; exception annoncée (un survivant sain le tire en chase pendant qu'un autre relève).
6. **Endgame** : décision explicite (tenir le 99 ou alimenter ; qui ouvre quelle porte).

### Grammaire des callouts [HEURISTIQUE]

```
[PRIORITÉ] SUJET – ÉTAT – LIEU – DIRECTION – INTENTION     (< 2 s)
ex. : « URGENT – il revient – main – vers le crochet – je prends le save, ETA 10 »
```

Repères de carte plutôt que numéros ; dizaines de % pour les gens ; secondes pour les ETA ; **les négations informent** (« pas de BBQ », « pas de Pop »).

### Erreurs propres au SWF [HEURISTIQUE]

- **Trop d'altruisme** : deux sauveteurs, deux soigneurs. Par défaut, un événement = un joueur.
- **Bruit radio** pendant la chase d'un allié.
- **Sous-estimer l'adaptation du tueur** : une équipe qui répare vite déclenche souvent tunnel ou slug [AVIS D'EXPERT].

> **Exercice (SWF)** : enregistrez une partie en vocal (avec l'accord de tous). Comptez les callouts qui ont **changé une décision**. Visez à réduire les autres. Le programme d'entraînement (chapitre 14) donne une cible (≥ 80 % de callouts actionnables, drill DR-08) ; c'est une valeur de rédacteur, pas une mesure.

Détail : `kb/research/batch9_macro.md` §4 ; `kb/deliverables/TRAINING_PROGRAM.md` niveau 10.

---

## 12.8 Littératie des données [Intermédiaire → Expert]

Les statistiques circulent partout (forums, tier lists, vidéos). Cette section apprend à juger **d'où** vient un chiffre, **ce qu'il mesure** et **ce qu'il ne prouve pas**.

### Les sources et ce qu'elles valent

| Source | Ce qu'elle mesure | Collecte / population | Utilisable ? |
|---|---|---|---|
| **Billets officiels « Stats \| … »** (BHVR, forum KB, repris sur Steam) | Pick rates, kill rates par tueur, escape rates ; parfois moyennes globales ; tranches « all/broad » et « high MMR » | Télémétrie serveur de **toutes** les parties publiques ; « high MMR » = **MMR ≥ 1800 ≈ 18 %** des joueurs (billet du 27/03/2026) | **Oui**, source de référence. Mais : chiffres presque tous **en images** (non lues ici), aucun effectif publié, définitions non publiées, parties avec DC exclues |
| **Developer Update / Stats** (~févr. 2024) | Top perks, tueurs, « Survival Rate in Groups » | Télémétrie ; « high MMR » non défini | Citation qualitative et objectif « **près de 60 % de kill rate en moyenne** ». Chiffres SWF : en image, non lus |
| **Developer Update** (janv. 2022) | Écart d'évasion solo / groupe | Télémétrie | Historique seulement : « jusqu'à 15 % » au haut niveau, sous l'ancien MMR |
| **Notes de patch MMR** (10.1.0) | Principe du MMR, sans chiffre | — | Oui pour le principe (VP) |
| **Official Stats Tracker** | Vos stats personnelles | Votre compte | Pour **votre** suivi seulement |
| **NightLight.gg** (indépendant, non affilié à BHVR) | Pick / kill / escape rates par tueur, perk, build, carte, offrande | Captures du tableau des scores **envoyées volontairement**, lues par reconnaissance d'image ; PC surtout | **Sous conditions** : tendances **relatives** et datées. **Jamais** pour un niveau absolu de kill rate, **jamais** pour une causalité |
| **DBDStats** | Compteurs de carrière (BP, gens…) | Profils consultés | Non (inutile pour la stratégie) |
| **wiki.gg « Official Stats »** | Recopie des infographies officielles | — | Pour dater une publication |
| **Relais (forum, Steam, presse)** | Lecture manuelle des infographies | Utilisateurs / médias | Seulement comme « relayé, non vérifié » |
| **Suivis personnels, votes de sites** | Pick rates d'un seul joueur ; opinions | Comptage manuel ; votes | **Anecdote** ou **opinion**, pas une mesure |

**Billets officiels récents lus en texte** [DATA] (VP) :

| Billet | Période | Ce qu'il dit en texte |
|---|---|---|
| Stats \| January - March 2025 | Janv.-mars 2025 | Kill rate moyen **60 %** (tous MMR), **63 %** (high MMR) ; évasion **41 %** (tous), **42 %** (high) |
| Stats \| First Look at Stats in 2026 (27/03/2026) | « 6 derniers mois » (sept. 2025-févr. 2026 selon wiki.gg) | **Noms seulement** : pick Sable puis Feng ; évasion Ace, Quentin ; pick Ghoul (high) / Huntress (broad) ; kill Krasue (high) / The Lich (broad) |
| Stats \| The Trickster (~avr. 2026) | Comparé au 01/01-16/03/2026 | Usage de départ **1,6 %** ; MiNA dans **36,5 %** des parties de Trickster |
| Stats \| Global Stats (après la sortie de The Slasher) | 2 premières semaines de The Slasher, 5 premiers jours de Shane | Classements par région, **noms seulement** |

**Constats** [FACT] : aucune publication officielle de **kill rates par carte** n'a été trouvée pour 2024-2026 ; aucune mesure officielle du **vocal** ; aucune stat officielle **SWF / solo chiffrée** depuis ~févr. 2024.

### Les biais à reconnaître

| Biais | Exemple DBD | Question à poser |
|---|---|---|
| **Sélection** | NightLight : joueurs volontaires, investis, surtout PC | Qui a été compté, et qui manque ? |
| **Tranche de MMR** | « High MMR » = ≥ 1800 (≈ 18 %) dans un billet ; non défini dans un autre | Quelle tranche, définie comment ? |
| **Plateforme** | NightLight : consoles non mentionnées dans la doc | Toutes plateformes ou une seule ? |
| **Échantillon** | Tueurs rares : moins de 100 parties sur NightLight ; build « 82 % d'évasion » tiré d'un sous-échantillon | Quel **n** ? |
| **Fenêtre et patch** | L'ancien guide mélangeait 3 fenêtres pour les kill rates de cartes | Une seule période, sous quel patch ? |
| **Nouveauté** | BHVR précise que « Global Stats » ne couvre que les 2 premières semaines de The Slasher, « pendant que les joueurs découvraient le counterplay » | Les joueurs avaient-ils appris le personnage ? |
| **Exclusions et définitions** | Kill rates officiels **sans** parties avec DC ; kill + escape ≠ 100 % (définitions non publiées) ; sur NightLight, abandons comptés comme évasions (affirmation non vérifiée) | Qu'est-ce qui compte comme « kill » ou « évasion » ? |
| **Mesure** | NightLight : précision de l'OCR variable ; perks renommées scindées en deux lignes ; pages incohérentes entre elles ; niveau global de kill rate **~13-18 points sous l'officiel** | L'outil de mesure est-il fiable pour **ce** chiffre ? |

> **Note avancée** : un community manager BHVR a jugé les chiffres NightLight « nowhere near accurate » (27/06/2025). Cela ne rend pas NightLight inutile : ses **écarts relatifs** (tel perk plus joué que tel autre, sur la même fenêtre) restent informatifs ; ses **niveaux absolus** ne le sont pas.

### Pick rate ≠ win rate

- Le **pick rate** mesure la **popularité** : il répond aux moteurs de 12.4 (visibilité, accessibilité, attachement…).
- Le **win rate** (kill rate, escape rate) dépend de **qui** choisit l'option : un tueur joué surtout par des spécialistes peut afficher un kill rate élevé sans être « fort » pour vous.
- Un pick rate élevé et un kill rate moyen ne se contredisent pas : beaucoup de joueurs **moyens** jouent l'option.

Exemples officiels (VP) : la **Huntress** est la plus jouée en broad MMR (billet 27/03/2026), la plus meurtrière y est **The Lich** : ce sont deux classements **différents**. Pour les survivants, le pick est dominé par Sable et Feng, alors que les meilleures évasions vont à Ace et Quentin : les survivants n'ayant pas de pouvoir, cet écart relève probablement de **qui** les joue [HYPOTHÈSE].

### Corrélation ≠ causalité

**Cas réel** [FACT] : l'ancien guide affirmait « builds de chase ≈ 28 % → une belle poursuite ne sert à rien ». C'est une corrélation transformée en causalité ; la **même source** montrait d'autres builds de chase à 52-65 %.

Pourquoi une corrélation trompe [HEURISTIQUE] :

```
  Build X  ──corrélé──►  faible taux d'évasion
     ▲                          ▲
     └──── cause commune ───────┘
     (ex. joueurs moins expérimentés, tueur qui les cible, sous-échantillon)

  Causalité inverse : on équipe des perks anti-tunnel PARCE QU'on se fait tunneler ;
  leur taux d'évasion bas ne prouve pas qu'elles sont mauvaises.
```

> **À retenir** : une statistique d'observation dit **ce qui se passe**, jamais **pourquoi**. Pour une cause, il faut un test contrôlé (même joueur, même tueur, une seule variable changée), à défaut un raisonnement mécanique en secondes.

### Comment citer une statistique

Gabarit minimal :

```
[Source] « titre exact » — publié le [date] — période [début-fin] — population [tranche MMR + définition]
— n [effectif ou « non publié »] — plateforme — patch — définition de la mesure
```

**Bon exemple** : « Kill rate moyen de 60 % tous MMR et 63 % au high MMR (BHVR, "Stats | January - March 2025", avr. 2025, période janv.-mars 2025, effectif non publié, toutes plateformes, parties avec DC exclues selon le Dev Update de 2024). »

**Mauvais exemples** (erreurs réelles de l'ancien guide) :

| Citation | Défaut |
|---|---|
| Stats officielles « oct. 2025 – févr. 2026 » | Période **fausse** (réelle : sept. 2025 – févr. 2026) |
| ~70 kill rates NightLight par tueur | Aucun **n**, aucune date ; < 100 parties pour les tueurs rares |
| « 47 % contre 43 % » en 2026 | **Relais** non vérifiable |
| « 76 / 80 % des votants BHVR » | **Aucun sondage BHVR trouvé** ; origine probable : un site de votes communautaires [HYPOTHÈSE] |
| « Coldwind favorable aux survivants » | **Faux** ; aucun kill rate par carte officiel |
| « 1 survivant perdu sur 3 est dans un casier » | **Non mesurable** avec les données publiques |
| « +3 / +8 points en vocal » | **Aucune source** |

**Check-list avant de croire un chiffre** : (1) qui publie ? (2) quelle période, quel patch ? (3) quelle population, quelle tranche ? (4) quel n ? (5) quelle définition ? (6) niveau absolu ou écart relatif ? (7) corrélation ou causalité affirmée ? (8) chiffre lu à la source ou relayé ?

> **Exercice** : prenez une tier list ou une statistique vue cette semaine. Remplissez le gabarit. Chaque case vide baisse votre confiance d'un cran ; au-delà de trois cases vides, traitez le chiffre comme une **opinion**.

Détail : `kb/seed/audit_phase0.txt` p.39-42 ; `kb/ledgers/CONFLICT_REGISTER.md` (CONFLICT-ST-02 / 04 / 06) ; `kb/ledgers/OUTDATED_CONTENT_REPORT.md`.

---

## 12.9 Ce qui reste ouvert

- **Règlements DBDL en cours** : barème exact, pool de tueurs, assignation des cartes, page Balancing, statut de l'anti-facecamp — **non lus** (site inaccessible).
- **Résultats** de la LAN d'Osnabrück (août 2026) et du Winter Circuit 2026 : non trouvés.
- **VOD** : aucune analysée ; aucune « leçon de pro » de ce chapitre ne vient d'une vidéo.
- **Coachs** : aucun coach compétitif identifié dans des sources lues.
- **Statistiques** : chiffres des infographies officielles 2024-2026 (images non lues) ; définitions officielles de kill / escape rate ; publication post-10.1.0 par tranche ou par carte (aucune trouvée au 27/09/2026) ; effectifs NightLight par tueur ; reset MMR 10.1.0 [INCERTAIN] ; « Team-based Ratings » SWF encore actifs après 10.1.0 ?

---

## Sources du chapitre

- `kb/seed/audit_phase0.txt` : p.39-42 (évaluation des sources statistiques, chronologie des billets), p.42-44 (§5.1 écosystème, §5.2 règles, §5.3 transfert), limites d'accès et questions ouvertes (lot R4).
- `kb/ledgers/AUDIT_PHASE0_ERRATA.md` (aucune ligne ne touche ce chapitre) ; `kb/ledgers/CONFLICT_REGISTER.md` (CONFLICT-ST-02/04/06, CONFLICT-G04) ; `kb/ledgers/OUTDATED_CONTENT_REPORT.md` ; `kb/ledgers/TODO_RESEARCH.md` (lot 10 BLOCKED).
- `kb/research/batch9_macro.md` §1, §3, §4 (économie du temps, SoloQ, SWF).
- `kb/deliverables/TRAINING_PROGRAM.md` (niveau 10, concepts compétitifs).
- Notes officielles BHVR : `kb/sources/patches/official_503.txt` (Stats janv.-mars 2025), `official_540.txt` (First Look at Stats in 2026), `official_543.txt` (The Trickster), `official_554.txt` (Global Stats), `patch_10.1.0.txt` (MMR Update).
