# Audit pass 14 — lot 4, fiches tueurs g1 à g3 (tueurs 1 à 22, vue survivant)

- **Date** : 27/09/2026. **Référence** : LIVE 10.1.2a ; PTB 10.2.0 non LIVE.
- **Méthode** : audit adversarial §25 (incomplet, faux, étiquettes, contradictions), puis §26 (mauvaises habitudes si le texte est appliqué à la lettre), **sans web**. Seule source de faits vérifiés : `kb/seed/audit_phase0.txt`. Recoupements : `kb/audit/pass14_deliverables.md` (audit du handbook, pour rester cohérent), `kb/deliverables/KILLER_COUNTERPLAY_HANDBOOK.md` (KCH), `kb/deliverables/PERK_DATABASE.md` (PDB), `kb/ledgers/BATCH_2_4_SYNTHESIS.md`, `kb/research/batch6_chase_tech.md`, `batch9_macro.md`, `batch11_training.md`.
- **Fichiers cibles** (corrigés avec Edit ; ligne de statut ajoutée en tête de chacun) :
  - `kb/research/batch4_killers_g1.md` (**g1** : Trapper, Wraith, Hillbilly, Nurse, Shape, Hag, Doctor)
  - `kb/research/batch4_killers_g2.md` (**g2** : Huntress, Cannibal, Nightmare, Pig, Clown, Spirit, Legion, Plague)
  - `kb/research/batch4_killers_g3.md` (**g3** : Ghost Face, Demogorgon, Oni, Deathslinger, Executioner, Blight, Twins)
- **Cohérence avec l'audit du handbook** : mêmes décisions que H1, H2, H4, H5, H6, H10, H11, H13 et D16 de `pass14_deliverables.md` (pré-drop non universel, coût de casse vérifié pour la Blight seulement, « 5 hachettes » = mémoire du modèle, berceuse non exclusive, mix-up contre la Spirit, liste des casses « à reconfirmer », Knock Out, manuel 9.6.1). Écart assumé avec H19 : ici, les « EXPERT OPINION (non sourcée) » **ont été requalifiées en HEURISTIC**, comme demandé.

## Bilan

| Gravité | Trouvés | Corrigés | Non corrigeables sans source |
|---|---:|---:|---:|
| Haute | 3 | 2 | 1 |
| Moyenne | 28 | 25 | 3 |
| Basse | 38 | 37 | 1 |
| **Total** | **69** | **64** | **5** |

## 1. Problèmes et corrections

### 1.1 Transversaux (les trois fichiers)

| ID | Passage (fichier + section) | Problème | Type | Gravité | Correction appliquée |
|---|---|---|---|---|---|
| T1 | g1-g3, lignes « Équipe » et « Macro » (écraseur de Victor, sauveteur désigné, annonces de portails, boîtes de la Pig, réveils mutuels, désarmement pendant qu'il chase ailleurs) | Consignes qui supposent le vocal ; aucune distinction SoloQ / SWF (déjà relevé pour le handbook, H7). | §25 (SoloQ/SWF) | moyenne | Point « SoloQ / SWF » ajouté en tête de chaque fichier (signaux observables : HUD, sons, auras) ; variantes SoloQ ajoutées dans les fiches Nightmare, Demogorgon, Executioner, Twins. |
| T2 | g1-g3, toutes les rubriques « Counterplay » | Options par défaut présentées sans limite. Un tueur expérimenté les anticipe (fausse cloche, charge tenue, tap-rev, attente du pré-drop). | §26 | moyenne | Point « Options par défaut, pas règles » ajouté en tête de chaque fichier (varier si le tueur exploite la réponse habituelle), comme KCH §1-5. |
| T3 | g1 Wraith, Hillbilly, Nurse, Shape, Doctor ; g2 Pig, Cannibal, Nightmare ; g3 Ghost Face, Deathslinger | Perks modifiées au **PTB 10.2.0** citées sans marque : Spine Chill (5 fois), Calm Spirit (2), Borrowed Time, Dead Man's Switch ; et, annoncées par le seed seulement : Knock Out, Fire Up, Agitation, Iron Grasp, Distressing. | LIVE/PTB | moyenne | [PTB 10.2.0] ajouté à chaque mention pertinente et liste en tête de chaque fichier (source : PDB §1.4). |
| T4 | g1 Hillbilly, Hag, conflits L4G1-01/03 ; g2 Pig, Spirit, Huntress, conflit L4G2-02 ; g3 Ghost Face, Deathslinger, Blight, conflit B4G3-01 | La règle d'origine de l'audit (TR 32 m pour les tueurs à 4,6 m/s, 24 m pour ceux à 4,4, avec exceptions, SS) n'est jamais utilisée. Elle **contredit** le verdict « SUSPECT » du TR 24 m de la Hag (compatible avec la règle), soutient la mémoire pour le Hillbilly, la Pig et la Blight, et fait du TR 24 m du Ghost Face et du 32 m du Deathslinger des exceptions à vérifier. | §25 / contradiction | moyenne | Règle ajoutée en tête des trois fichiers et dans chaque bloc de conflit comme **indice, pas preuve** ; tous les conflits restent UNRESOLVED ; « SUSPECT » retiré pour la Hag (g1 fiche 6 et table des écarts). Contradiction résiduelle signalée : `BATCH_2_4_SYNTHESIS.md` §2.1 n° 46 classe encore la Hag SUSPECT (hors périmètre, non modifié). |
| T5 | g1-g3, toutes les fiches | Aucune rubrique DRILL. | §27 | basse | Renvoi à DR-15 « Counterplay d'un tueur » (`batch11_training.md` §3) ajouté en tête de chaque fichier. Drills propres à chaque tueur : voir Lacunes 14. |
| T6 | g1-g3, « Implications de carte » | Cartes nommées (Coldwind, Red Forest, Midwich, Lery's…) sans tenir compte des changements de palettes 9.2.0 / 9.3.0 / 9.3.2 de l'audit. | §25 | basse | **Non corrigeable sans source** (lots 7-8) ; mise en garde ajoutée en tête de chaque fichier. |
| T7 | g1 Shape (Slaughtering Strike), Hillbilly (LoPro Chains) ; g3 Executioner (Obsidian Goblet) | Casses de palette attribuées par le seed à des pouvoirs ou add-ons **absents** de la liste wiki.gg Pallets de l'audit (SS, à reconfirmer), alors que cette liste inclut des casses par add-on (Legion, Ghoul). Des conseils en découlaient (« pré-lâcher pendant EI » puni, « ne plus lâcher de palette »). | contradiction (audit) | moyenne | Réserves ajoutées dans chaque fiche et en tête de g1 et g3 : UNCERTAIN, conseil conditionné à « si l'effet est observé ». |

### 1.2 g1 — Trapper, Wraith, Hillbilly, Nurse, Shape, Hag, Doctor

| ID | Passage (fichier + section) | Problème | Type | Gravité | Correction appliquée |
|---|---|---|---|---|---|
| G1-01 | g1 §3 Hillbilly et §4 Nurse, « Données LIVE » | « FACT (mécanique stable [MÉM]) » : FACT tiré de la mémoire du modèle, sans l'audit. | étiquette | basse | « FACT de principe [MÉM], UNCERTAIN ». |
| G1-02 | g1 Règles transversales, familles (b) | « LOS et imprévisibilité priment sur les palettes » contredit la fiche Hillbilly (« en M1 il boucle comme un 4,6 normal »). | contradiction interne | basse | Précisé : « contre le pouvoir ». |
| G1-03 | g1 §1 Trapper, Counterplay mécanique | « Regarder le sol avant **chaque** vault/sortie » : coûte des mètres et la caméra en pleine chase, même quand il n'a pas pu poser. | §26 | moyenne | Conditionné aux sorties qu'il a eu le temps de piéger ; coût expliqué. |
| G1-04 | g1 §1 Trapper, Macro | Comptage « 2 pièges de base » fondé sur une valeur [SEED-NRV]. | §26 / étiquette | basse | UNCERTAIN ; condition d'abandon (3e pose d'affilée). |
| G1-05 | g1 §1 Trapper, Adaptations | « Trappe ou autre porte plutôt que le sauvetage » sans contexte. | §26 | basse | SITUATIONAL ; anti-facecamp 16 m, 1×/2×/4× [AUDIT] ajouté. |
| G1-06 | g1 §1 Trapper, Iridescent Stone | « Ne jamais considérer un piège désarmé comme sûr » sans condition. | §26 | basse | Conditionné à l'add-on identifié. |
| G1-07 | g1 §2 Wraith, Counterplay info | « La cloche = il va attaquer dans la seconde qui suit, pas plus tard » contredit les Mindgames du même fiche (désoccultation « au hasard », feinte) ; oublie la cloche d'occultation. | §26 / contradiction | moyenne | Réécrit : la cloche annonce une menace, pas le moment du coup ; distinguer occultation et désoccultation. |
| G1-08 | g1 §2 Wraith, Macro | « Quitter un gen dès la cloche proche ; jamais en duo » : jeu passif exploitable (cloche pour vider les gens). | §26 / calcul | moyenne | Conditionné (cloche proche **et** qui se rapproche) ; coût du duo chiffré : 1,7 contre 2,0 charges/s (coop 85 % [AUDIT]). |
| G1-09 | g1 §2 Wraith, Données | Sursaut « ~6,9 m/s » : c'est la vitesse de fente standard d'un 4,6 (×1,5 [AUDIT]). | calcul | basse | Note HYPOTHESIS (confusion possible du seed). |
| G1-10 | g1 §3 Hillbilly, Habitudes punissables | « Pré-lâcher en entendant la charge » sans nuance : une palette posée sur la trajectoire d'un sprint engagé l'arrête. | §26 | moyenne | Distinction « son lointain » (ne pas drop, casse ~1 s [AUDIT]) / « sprint engagé à travers la tile » (drop). |
| G1-11 | g1 §3 Hillbilly, Écart et table des écarts | Seed « blessé = moins exposé à la tronçonneuse » classé **FAUX** ; la phrase est ambiguë et la synthèse la classe SUSPECT. | contradiction / étiquette | moyenne | IMPRÉCIS / trompeur, avec explication. |
| G1-12 | g1 §4 Nurse, Counterplay macro | « Contrer les perks d'aura (Distortion, **Calm Spirit**) » : Calm Spirit n'est pas anti-aura (PDB, SS). | §25 (erreur) | moyenne | Corrigé ; Calm Spirit marquée [PTB 10.2.0]. |
| G1-13 | g1 §4 Nurse, Tiles et Counterplay | « Palettes sans valeur », « **toujours** un obstacle haut » ; aucun chiffre sur sa lenteur hors blink. | §26 / calcul | basse | Nuancé (sans valeur **comme obstacles**) ; calcul ajouté : 4,0 − 3,85 = 0,15 m/s = 1,5 m par 10 s. |
| G1-14 | g1 §5 Shape, Macro | « Prioriser les gens pendant qu'il stalk (Stalker = lent, **sans pression**) » : il est Undetectable et peut passer en Pursuer. Contredit la rubrique Identification. | §26 / contradiction | moyenne | Réécrit : bonne fenêtre pour les gens, **avec** surveillance. |
| G1-15 | g1 §5 Shape, Counterplay | « Gagner 60 s d'EI, quitte à céder du terrain » : on ignore si EI finit seulement au chrono ; céder du terrain peut mener en zone morte. | §26 | moyenne | Réserves HYPOTHESIS ajoutées. |
| G1-16 | g1 §5 Shape, Équipe | Endurance conseillée sans ses limites (action voyante, Deep Wound). | §25 | basse | Limites [AUDIT] ajoutées ; Off the Record 30/35/40 s (9.2.2) [AUDIT]. |
| G1-17 | g1 §6 Hag, Macro et Perks | « Chercher et casser les totems tôt (build Hex fréquent) » : proche de la règle absolue « purifiez un Hex dès qu'il s'allume » relevée par l'audit ; loadout caché ; coût non dit. | §26 | moyenne | Purifier en chemin, chercher activement quand un effet Hex est observé ; 14 s par totem, 5 totems [AUDIT]. |
| G1-18 | g1 §6 Hag, Counterplay mécanique | « Repartir dans la direction opposée au piège » : peut mener dans un autre piège ou une zone morte. | §26 | basse | « S'éloigner du piège vers une zone sans marques ». |
| G1-19 | g1 §7 Doctor, Tiles | « Pré-lâcher tôt » sans « puis partir » ni contre-jeu ; « fenêtre de 0,65 s » sans ordre de grandeur. | §26 / calcul | basse | « Puis partir », casse au pied 2,34 s [AUDIT], mix contre un Doctor qui attend le pré-drop ; 0,65 s × 4,0 m/s = 2,6 m. |
| G1-20 | g1 §7 Doctor, Carter's Notes | Calcul 0,65 − 0,1 = 0,55 s. | calcul | basse | Vérifié OK ; précisé : pas de DR sur les add-ons [AUDIT] ; faux si l'add-on agit en %. |
| G1-21 | g1 Règles transversales, protections d'unhook | Endurance et Elusive données sans leurs conditions de perte. | §25 | basse | Action voyante, Deep Wound, fin de l'Elusive au coup [AUDIT]. |

### 1.3 g2 — Huntress, Cannibal, Nightmare, Pig, Clown, Spirit, Legion, Plague

| ID | Passage (fichier + section) | Problème | Type | Gravité | Correction appliquée |
|---|---|---|---|---|---|
| G2-01 | g2 avertissement méthode ; fiches Huntress (×4), Cannibal (×2), Nightmare, Pig, Spirit (×2), Plague | Onze « EXPERT OPINION (non sourcée) » : au sens de §41, une EXPERT OPINION est la conclusion d'un expert identifiable ; aucun guide expert n'a été lu. | étiquette | moyenne | Toutes requalifiées **HEURISTIC** ; explication dans l'avertissement. |
| G2-02 | g2 Légende ; ~14 mentions « (FACT) », « FACT probable », « forte confiance » (berceuse, trajectoire, Bubba, Tantrum, Pig Undetectable, 4 pièges, sortie piégée, Antidote, husk, Legion vault et fatigue, réveils du Nightmare, fontaines de la Plague) | La légende définit FACT comme « sûr à la connaissance du modèle », ce qui contredit §41 (mécanique vérifiable). Des mécaniques non vérifiées passent pour vérifiées. | étiquette | moyenne | Légende réécrite (FACT [AUDIT] / FACT de principe [UNCERTAIN-MM] / HYPOTHESIS) ; chaque mention requalifiée. |
| G2-03 | g2 §8 Huntress, Données, Macro, Écart ; Claims L4G2-01 ; table des écarts | « 5 hachettes de base (confiance forte) », « 5 de base ([2]) », Claims en STRONG_SECONDARY. L'audit relève « 7 » comme erreur **sans donner la bonne valeur** ; 5 vient de la mémoire du modèle (même problème que H2 du handbook). | étiquette / contradiction | **haute** | « 7 » FAUX (audit) ; « 5 » UNCERTAIN-MM partout (Données, Add-ons, Macro, Écart, Claims, table). |
| G2-04 | g2 §8 Huntress, Identification | Berceuse = « identification quasi certaine (FACT) », alors que le handbook décrit une berceuse pour Dark Lord et Houndmaster. | contradiction | moyenne | « Forte mais pas certaine » ; confirmer à la silhouette ; berceuse non coupée par Undetectable [AUDIT]. |
| G2-05 | g2 §8 Huntress, Tiles | « Une palette basse ne bloque pas une hachette (FACT probable) » ; `batch11` l'a déjà classé UNCERTAIN. | étiquette | basse | UNCERTAIN-MM. |
| G2-06 | g2 §8 Huntress, Counterplay mécanique | « Changer de direction au lâcher » : une Huntress expérimentée tient la charge pour attendre le virage. | §26 | moyenne | Limite ajoutée : varier le moment. |
| G2-07 | g2 §8 Huntress, Tiles | « Ne pas vaulter si hachette armée et LOS » : absolu ; le vault reste bon si la réception est cachée. | §26 | basse | Conditionné à la LOS sur la réception (cohérent avec `batch11` T-Q01 cas 4). |
| G2-08 | g2 §8 Huntress, Macro et Adaptations | Comptage fondé sur 5 (UNCERTAIN) ; « zéro exposition, même pour décrocher » (Iridescent Head). | §26 | basse | Comptage avec condition d'abandon ; « réduire l'exposition » (décrocher derrière une LOS ou pendant la recharge). |
| G2-09 | g2 §9 Cannibal, Tiles/Palettes | « Faire tomber la palette tôt » sans « puis partir » ; la casse ne lui coûte que ~1 s ; exploitable par tap-rev. | §26 | moyenne | « Puis partir », ~1 s [AUDIT SS], contre-jeu tap-rev (cohérent avec H10 et KCH §2.2 (b)). |
| G2-10 | g2 §9 Cannibal, Identification | « Hillbilly surchauffe (FACT) » alors que g1 décrit une jauge Overdrive (seed) en conflit (L4G1-02). | contradiction | basse | FACT de principe ; renvoi à CONFLICT-L4G1-02. |
| G2-11 | g2 §9 Cannibal, Équipe et Habitudes | Endurance d'unhook sans limites ; « garder une palette pour le stun » puni même contre son M1. | §25 / §26 | basse | Limites [AUDIT] ; la faute est de garder la palette **quand il arme**. |
| G2-12 | g2 §9 Cannibal, Écart ; table des écarts | Knock Out « valeurs PTB 10.2 » : hypothèse du lot présentée comme un fait ; effet principal (aura à 32/24/16 m, SS) omis. | LIVE/PTB | basse | Formulé en hypothèse ; effet principal ajouté (cohérent avec H11). |
| G2-13 | g2 §11 Pig, Données et Counterplay | « 4 pièges (forte confiance) », « sortie piégée = mort (FACT, forte confiance) », alors que les Claims (L4G2-08) disent UNCERTAIN-MM. | contradiction interne | basse | UNCERTAIN-MM ; le conseil reste prudent quoi qu'il en soit. |
| G2-14 | g2 §12 Clown, Données | Haste de l'Antidote pour les survivants sans lien avec les DR 9.6.0 (Haste de perk identique). | §25 (interaction) | basse | HYPOTHESIS ajoutée (catégories dans le manuel 9.6.1, non consulté). |
| G2-15 | g2 §13 Spirit, Counterplay mécanique | « Marcher ou s'arrêter » donné comme réponse ; exploitable par une Spirit qui attend ; l'arrêt prolongé blessé est le pire cas (même problème que H5). | §26 | moyenne | Limites ajoutées ; base chiffrée : marche 2,26 m/s = 56,5 % < seuil de 60 % des griffures [AUDIT] ; Elusive d'unhook (fenêtre sans indices) ; Iron Will −80/90/100 % [AUDIT]. |
| G2-16 | g2 §13 Spirit, Habitudes | « Deviner au hasard » puni alors qu'un choix imprévisible est légitime sans indice. | §26 | basse | « Deviner sans lire les indices ». |
| G2-17 | g2 §14 Legion, Macro | « Timer en pause **en chase** selon le seed, UNCERTAIN » : l'audit (VERIFIED_PRIMARY, 8.6.0) dit « en pause **en courant** ou en mending », 20 s, mending 10 s / 6 s. | étiquette / §25 | moyenne | FACT [AUDIT] ; conséquence ajoutée : marcher ou s'accroupir consomme le minuteur. |
| G2-18 | g2 §14 Legion, Adaptations | Casse de palette en Frenzy + add-on « non vérifiée », alors que la liste de l'audit (SS) la cite (même problème que H13). | étiquette | basse | [AUDIT] SS, liste à reconfirmer ; nom d'add-on non vérifié. |
| G2-19 | g2 §14 Legion, Données | « 5e Feral Slash met à terre » discuté sans la règle de l'audit « un dégât sous Deep Wound = état mourant ». | §25 | basse | Tension notée (UNCERTAIN). |
| G2-20 | g2 éléments système (DR) | « Liste exacte des modificateurs non consultée » : elle est publiée dans le manuel 9.6.1 (même problème que D16). | contradiction (audit) | basse | Corrigé. |

### 1.4 g3 — Ghost Face, Demogorgon, Oni, Deathslinger, Executioner, Blight, Twins

| ID | Passage (fichier + section) | Problème | Type | Gravité | Correction appliquée |
|---|---|---|---|---|---|
| G3-01 | g3 §21 Blight, Données, Palettes, Claims B4G3-10 | « La casse lui coûte **2 tokens** + recharge ». L'audit dit « ramène les tokens **à 2 sous le max** » : le coût réel va de 0 à 2 tokens selon son stock (s'il est déjà à max − 2 ou moins, il ne perd que la recharge). Le texte résumé ne distingue pas non plus casse en Lethal Rush et casse au pied. | calcul / étiquette | **haute** | Réécrit (coût 0/1/2 selon le stock, interprétation HYPOTHESIS) ; Claims : texte VERIFIED_PRIMARY, interprétation HYPOTHESIS. |
| G3-02 | g3 §21 Blight, Palettes et « Erreur classique » | « Pré-drop plus rentable qu'avant » + « erreur : éviter le pré-drop » : incite au pré-drop systématique ; aucune limite (contournement, palette consommée, peu de tokens, Blight qui attend le pré-drop). | §26 | moyenne | Limites ajoutées (cohérent avec H6 et la fiche 21 du handbook) ; erreur inverse « pré-drop systématique » ajoutée. |
| G3-03 | g3 §21 Blight, Équipe | « Compter ses Rushes » : repose sur 5 tokens et 2 s/token du seed. | §26 | basse | « Estimation grossière », sources précisées. |
| G3-04 | g3 §16 Ghost Face, Identification | « Corbeaux qui s'envolent » comme indice : l'audit dit que les corbeaux ne s'envolent pas pour « certains tueurs furtifs » (liste non lue). | §25 / contradiction (audit) | moyenne | Réserve ajoutée : l'absence de corbeaux ne prouve rien. |
| G3-05 | g3 §16 Ghost Face, Perks | « Spine Chill reste la contre-info **de référence** contre Undetectable », alors que g2 (Pig) la classe UNCERTAIN contre Undetectable, et que la perk est reworkée au PTB 10.2.0. | contradiction / LIVE-PTB | moyenne | « Souvent citée », UNCERTAIN, [PTB] ; « la caméra reste l'info la plus sûre ». |
| G3-06 | g3 §16 Ghost Face, Données | Accroupi 4,0 m/s [AUDIT] sans application pratique. | §27 / calcul | basse | Calcul : égal à ta course ; marche 2,26 → il gagne 1,74 m/s (~17 m en 10 s) ; accroupi 1,13 → 2,87 m/s. |
| G3-07 | g3 §16 Ghost Face, Adaptations | Marked = Exposed, sans l'interaction avec l'Endurance d'unhook (Deep Wound à la place, [AUDIT]). | §25 (interaction) | basse | Ajouté, avec la limite « action voyante ». |
| G3-08 | g3 §17 Demogorgon, §18 Oni, §21 Blight | « Casse instantanée (audit, SS) » sans « liste à reconfirmer ». | étiquette | basse | Ajouté partout. |
| G3-09 | g3 §17 Demogorgon, Macro | « Sceller à deux si possible » : effet d'un scellement à deux non vérifié ; retire un réparateur (SoloQ). | §26 | basse | Conditionné. |
| G3-10 | g3 §18 Oni, Macro | « Se soigner pour limiter les orbes » contre `batch9_macro.md` §2.10 (« soin souvent non rentable contre un coup unique, Oni en Fury »). | contradiction | basse | Articulation écrite : soigner hors Fury pour la retarder ; ne pas commencer de soin en Fury. |
| G3-11 | g3 §19 Deathslinger, Counterplay | Chaîne cassée → Deep Wound, sans les règles de l'audit (20 s, pause en courant, coup suivant = à terre, Endurance inutile). | §25 | basse | Ajoutées. |
| G3-12 | g3 §19 Deathslinger, Add-ons | « Casser la chaîne **à tout prix** ». | §26 | basse | « En priorité, sauf si l'obstacle te ramène dans sa portée ». |
| G3-13 | g3 §19 Deathslinger, Perks | Dead Man's Switch sans statut : valeur 9.2.0 contestée au sein même de l'audit (table 9.2.0 contre page wiki 9.2.X, Questions ouvertes n° 11) ; modifiée au PTB 10.2.0. | LIVE/PTB / contradiction (audit) | basse | Les deux mentions et [PTB] ajoutés ; Dead Hard marqué UNCERTAIN (PDB). |
| G3-14 | g3 §20 Executioner, Counterplay positionnel | « FACT » sans source (la ligne Données dit « FACT de principe ») ; coût de l'accroupissement non chiffré. | étiquette / calcul | basse | FACT de principe ; 3 m accroupi = 3 / 1,13 ≈ 2,7 s contre 0,75 s en course [AUDIT]. |
| G3-15 | g3 §22 Twins, Macro | Anti-slug sans les faits de l'audit : pas d'auto-relève basekit LIVE, option Abandon (9.2.0), Unbreakable « mis au sol par le tueur, une fois » (9.5.0), refonte Abandon/Surrender = PTB 10.2.0. | §25 (interaction) | moyenne | Ajoutés ; question « Victor = le tueur ? » notée non vérifiée. |
| G3-16 | g3 en-tête, légende | EXPERT OPINION dans la légende, alors que l'avertissement dit qu'elle n'est jamais utilisée. | étiquette | basse | Légende harmonisée (FACT / FACT de principe / HEURISTIC / SITUATIONAL / HYPOTHESIS). |
| G3-17 | g3 §16 Ghost Face, Données | Undetectable en Night Shroud étiqueté « FACT (mécanique stable de longue date) ». | étiquette | basse | FACT de principe ; définition d'Undetectable = FACT [AUDIT]. |

### 1.5 Non corrigeables sans source

| ID | Passage | Problème | Type | Gravité | Correction |
|---|---|---|---|---|---|
| X1 | g1-g3, toutes les rubriques « Données LIVE » | Environ 90 % des valeurs de pouvoir (portées, durées, recharges, vitesses) viennent du seed [SEED-NRV] ou de la mémoire du modèle. Les conseils chiffrés en dépendent. | §25 | haute | **Non corrigeable sans source** ; déjà signalé en tête de chaque fichier. Voir Lacunes 1-11. |
| X2 | g1-g3, « Add-ons qui changent la décision » | Aucun effet d'add-on vérifié ; certains noms sont peut-être obsolètes (Nightmare après 8.5.0). | §25 | moyenne | **Non corrigeable sans source** (Lacune 16). |
| X3 | g1-g3 | Interactions perks survivant ↔ pouvoir encore partielles (Dead Hard et Endurance contre les coups uniques, Lithe contre les ranged, Distortion contre Nurse/Hag, Urban Evasion contre Spirit). Corrigées seulement là où l'audit donne la règle (Endurance, Elusive, Deep Wound, Iron Will, Unbreakable). | §25 | moyenne | **Non corrigeable sans source** pour le reste (même constat que H20). |
| X4 | g1 §5 Shape | Exécution à la main sur 2e crochet en EI, fin d'EI (chrono seul ?), casse de palette par la Slaughtering Strike : fort impact survivant, rien de vérifié. | §25 | moyenne | **Non corrigeable sans source** ; réserves ajoutées (G1-15, T7). |

(T6 est le cinquième non corrigeable.)

## 2. Vérification des calculs (recalculés à partir de l'audit)

| Calcul | Données de l'audit | Recalcul | Verdict |
|---|---|---|---|
| Nurse contre survivant (g1 §4) | 3,85 et 4,0 m/s | 4,0 − 3,85 = 0,15 m/s → 1,5 m par 10 s | ajouté |
| Doctor, fenêtre du choc (g1 §7) | 0,65 s ; course 4,0 m/s | 0,65 × 4,0 = 2,6 m | ajouté |
| Carter's Notes (g1 §7) | add-ons exclus des DR | 0,65 − 0,1 = 0,55 s | OK (si l'add-on agit en secondes) |
| Wraith, « sursaut 6,9 m/s » (g1 §2) | fente ×1,5 pour un 4,6 | 4,6 × 1,5 = 6,9 m/s | coïncidence exacte → HYPOTHESIS de confusion |
| Duo sur un gen (g1 §2) | coop 85 % | 2 × 0,85 = 1,7 c/s contre 2 × 1,0 = 2,0 c/s (−15 %) ; 90 / 1,7 = 52,9 s | ajouté |
| Spirit, marche sans griffures (g2 §13) | marche 2,26 m/s ; seuil 60 % | 2,26 / 4,0 = 56,5 % < 60 % | OK, ajouté |
| Spirit, phase (g2 §13) | seed 7,04 m/s | 7,04 / 4,4 = 1,60 | cohérent avec « ×1,6 » (valeur seed UNCERTAIN) |
| Pop (g2 §12) | +15 % → 20 % au total (9.5.0) | 15 + 5 = 20 % | OK |
| Legion, Deep Wound (g2 §14) | 20 s ; mending 10 / 6 s | mender à deux gagne 4 s | ajouté |
| Ghost Face accroupi (g3 §16) | 4,0 ; 2,26 ; 1,13 m/s | 0 ; 1,74 m/s (17,4 m / 10 s) ; 2,87 m/s | ajouté |
| Blight, coût de casse (g3 §21) | tokens ramenés à « max − 2 », recharge 0 % | stock max → −2 ; max − 1 → −1 ; ≤ max − 2 → 0 token | « coûte 2 tokens » FAUX en général → corrigé |
| Executioner, traînée (g3 §20) | accroupi 1,13 m/s ; course 4,0 | 3 / 1,13 = 2,65 s ; 3 / 4,0 = 0,75 s | ajouté (3 m = exemple) |
| Trapper, libération (g1 §1) | seed ~16,7 %/essai | 1/6 = 16,7 % | cohérent (valeur seed UNCERTAIN) |

## 3. Lacunes restantes (tâches de recherche précises)

Note : depuis le début de cet audit, des pages wiki.gg complètes ont été archivées localement dans `kb/sources/wiki_killers/` (commit c31a01a). Elles n'ont **pas** été utilisées ici (consigne : seul l'audit phase 0 fait foi), mais elles permettent de traiter les points 1 à 11 sans web.

1. **TR** : `kb/sources/wiki_killers/Max_Thompson_Jr_.txt`, `Lisa_Sherwood.txt`, `Amanda_Young.txt`, `Talbot_Grimes.txt` → clore CONFLICT-L4G1-01, L4G1-03, L4G2-02, B4G3-01 ; `Danny_Johnson_alias_Jed_Olsen.txt` (24 m ?) et `Caleb_Quinn.txt` (32 m ?) → confirmer les exceptions à la règle d'origine.
2. **Huntress** (`Anna.txt`) : nombre de hachettes de base, portée de la berceuse, hachette contre palette posée.
3. **Blight** (`Talbot_Grimes.txt` + notes 9.6.0 dans `kb/sources/patches/`) : texte exact « 2 below max » ; la règle vaut-elle pour la casse au pied **et** en Lethal Rush ? Nombre de tokens de base, recharge, fatigue.
4. **wiki.gg Pallets** : la Slaughtering Strike, LoPro Chains et Obsidian Goblet cassent-ils les palettes ? Reconfirmer toute la liste des casses instantanées.
5. **wiki.gg Crows** : liste des tueurs furtifs qui ne font pas s'envoler les corbeaux (Ghost Face en Night Shroud, Wraith occulté, Shape Stalker, Pig accroupie ?).
6. **Spine Chill** LIVE 10.1.2a : fonctionne-t-elle contre un tueur Undetectable ? (texte wiki + page Undetectable)
7. **Shape** (`Michael_Myers.txt`) : conditions de fin d'Evil Incarnate, exécution sur 2e crochet, vitesse Stalker 4,2 m/s, casse de palette.
8. **Legion** (`Frank_Julie_Susie_Joey.txt`) : effet d'un Feral Slash sur un survivant déjà sous Deep Wound ; add-on de casse de palette.
9. **Twins** (`Charlotte_Victor_Deshayes.txt` + wiki Unbreakable) : une mise au sol par Victor compte-t-elle « par le tueur » pour Unbreakable ? Timings de Victor.
10. **Clown** (`Kenneth_Chase_alias_Jeffrey_Hawk.txt` + manuel 9.6.1) : la Haste de l'Antidote est-elle soumise aux DR avec les Haste de perks ? Contenu du buff 9.1.0.
11. **Spirit** (`Rin_Yamaoka.txt`), **Doctor** (`Herman_Carter.txt`), **Trapper** (`Evan_MacMillan.txt`), **Hag** (`Lisa_Sherwood.txt`), **Nightmare** (`Freddy_Krueger.txt`) : valeurs signalées NON VÉRIFIABLE dans les fiches (phasing passif, Static Blast, Madness III, Haste post-pose, libération du piège, rayon des Phantasm Traps, rework 8.5.0).
12. **Dead Man's Switch** : valeur LIVE (table 9.2.0 contre page wiki 9.2.X) → lot 3.
13. **Guides experts lisibles** (Otzdarva, Hens, règles compétitives) sur : timing contre la Huntress, marcher contre la Spirit, pré-drop contre Blight et Cannibal, cloche du Wraith. But : passer de HEURISTIC à EXPERT OPINION sourcée.
14. **Drills par tueur** : un exercice mesurable par tueur (DR-15 n'est qu'un cadre), une fois les valeurs vérifiées.
15. **Lots 7-8** : réévaluer les « Implications de carte » après les changements de palettes 9.2.0 / 9.3.0 / 9.3.2.
16. **Add-ons** des 22 tueurs : effets LIVE des add-ons cités dans les rubriques « Add-ons qui changent la décision ».
17. **Harmonisation hors périmètre** : `BATCH_2_4_SYNTHESIS.md` §2.1 n° 45 (Hillbilly « blessé ») et n° 46 (Hag TR SUSPECT) à aligner sur ce rapport (G1-11, T4).

## 4. Verdict de profondeur §27 (après corrections)

| Fichier | Section | Niveau atteint | Manque principal |
|---|---|---|---|
| g1 | Règles transversales | +QUAND (mode d'emploi, SoloQ/SWF, PTB, règle du TR) | — |
| g1-g3 | Version / Données LIVE | QUOI seul (registre de valeurs, surtout UNCERTAIN) | vérification (X1) |
| g1-g3 | Identification | +POURQUOI (signal → pouvoir) ; +QUAND pour Huntress et Ghost Face (réserves) | coût d'erreur d'identification |
| g1-g3 | Ce qu'il cherche / Tiles | +POURQUOI | données de tiles (lot 7) |
| g1-g3 | Mindgames | QUOI seul | réponse à chaque mindgame |
| g1-g3 | Counterplay | +COUNTER (+FAILURE sur Wraith, Hillbilly, Shape, Hag, Doctor, Huntress, Cannibal, Spirit, Blight après P14) | DRILL propre au tueur |
| g1-g3 | Habitudes punissables / Adaptations | +FAILURE | fréquence et coût mesurés |
| g1-g3 | Add-ons qui changent la décision | +QUAND (si add-on → changer de réponse) | effets vérifiés (X2) |
| g1-g3 | Implications de carte / Perks fréquentes | QUOI seul | lots 7-8 ; loadout caché (perks non observables) |
| g2 | Éléments système + règles d'usage | +QUAND | — |
| g3 | Règles d'usage et faits transversaux | +QUAND | — |
| g1-g3 | Claims / Conflits / Écarts / Questions | QUOI (registre de vérification) | sans objet |
| g1-g3 | DRILL | renvoi générique (DR-15) | drills par tueur (Lacune 14) |

## 5. Les trois problèmes les plus importants

1. **Blight : coût de casse mal lu et pré-drop poussé vers la systématicité** (G3-01, G3-02). « La casse lui coûte 2 tokens » est faux en général : l'audit dit que les tokens sont ramenés à « 2 sous le max », donc le coût va de 0 à 2 selon son stock. Sans limites, le texte enseignait le pré-drop systématique, que le handbook (H6) avait déjà nuancé.
2. **Étiquettes surestimées dans g2** (G2-03, G2-01, G2-02). « 5 hachettes » y était donné en STRONG_SECONDARY et comme « [2] », alors que l'audit ne relève que l'erreur « 7 ». Onze « EXPERT OPINION » n'avaient aucune source, et la légende définissait FACT comme « sûr à la connaissance du modèle ».
3. **Counterplays absolus exploitables** (G1-07, G1-17, G2-15, G1-14, T4). « La cloche = coup dans la seconde », « casser les totems tôt » (proche d'une règle dangereuse relevée par l'audit), « marcher ou s'arrêter » contre la Spirit, « Stalker = sans pression ». Par ailleurs, la règle d'origine du TR de l'audit contredisait le verdict « SUSPECT » du TR 24 m de la Hag.
