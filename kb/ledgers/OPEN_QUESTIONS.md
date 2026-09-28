# OPEN_QUESTIONS — informations encore insuffisamment vérifiées

Livrable §51-11. Partie A reprise telle quelle du rapport de phase 0 (p. 49-50) — **plusieurs de ses questions sont tranchées depuis : voir B0**. Partie B : état FINAL (27/09/2026 soir) des questions encore ouvertes après la re-vérification complète (lots 2-12), dédoublonnées et classées par thème.

## Partie A — Phase 0


### batch1_R2_mecaniques_chase

1. Liste complète des vitesses par tueur (classes 4,6 / 4,4 / autres, dont l'existence d'une classe 4,2 en live) : page wiki
tronquée, à reprendre par le lot tueurs.
2. Durée et distance de la fente : aucune source officielle ; seulement des estimations communautaires (~0,87-1 s, ~2 m).
3. Forme et taille des hitbox/hurtbox, seuil de latence de la validation serveur (~300 ms, non officiel), éventuelles
évolutions depuis 2020.
4. Durée d'abaissement d'une palette et durée du stun de fin de wiggle.
5. Perte de Bloodlust sur stun ou aveuglement : non documentée.
6. Temporisation de la condition d'angle (± 35°) de fin de poursuite.
7. Montée du rampement à 1,05 m/s : patch d'introduction et courbe exacte.
8. DR : liste itemisée des catégories ; application à l'Endurance, aux vitesses de vault et aux effets de base (Haste de
décrochage, boost au coup).
9. Plafond de Haste : aucun trouvé (preuve par absence seulement).
10. Flaques de sang : fréquence et durée de vie ; grognements : portée et différences de volume entre personnages.
11. Off the Record et l'Endurance (CONFLICT-R2-02).
12. Multiplicateur du boost au coup (×1,65 selon le wiki seulement ; aucune note de patch ne le confirme).
13. Nombre de palettes par carte après les 9.2.0 et 9.3.0.
14. Moment de la mise à zéro du boost au coup par un vault (A-059) : non documenté.
15. Pour R1 : la page officielle « 10.1.2 Bugfix Patch » affiche « September 17 » (année affichée 2024, probablement une
coquille). Cela appuie la date du 17 septembre du guide (A-001) pour la 10.1.2, pas forcément pour la 10.1.2a.

### batch1_R3_mecaniques_objectifs

1. DR sur les blocages et les pertes instantanées (Pop, Pain Res, Eruption, Grim Embrace…) : les notes 9.6.0 et le wiki ne
disent rien. Liste exacte des catégories soumises aux DR non publiée (D-017, D-034, A-098, A-101, A-102).
2. Taux de base de l'anti-camp après 9.3.0 (CONFLICT-003). Autre inconnue : le multiplicateur de temps court-il pendant
la grâce de 7 s ? Tant que ces deux points restent ouverts, le temps de remplissage exact n'est pas vérifié.
3. Nombre maximal de soigneurs : 2 selon le wiki, 3 selon le guide (CONFLICT-001).
4. Rampement : 0,7 m/s constant, ou montée jusqu'à 1,05 m/s (CONFLICT-002) ?
5. Remise à zéro du MMR en 10.1.0 : source presse seulement.
6. Elusive de décrochage : annulée par une action voyante, comme l'Endurance ?
7. Visibilité des loadouts des coéquipiers dans le lobby, avant de verrouiller le sien (A-220).
8. Chance de skill check avec toolbox (40 % selon le wiki), ouverture de porte par le tueur (0,75 s selon le wiki) : valeurs
non recoupées.
9. Non traités ou non vérifiés dans ce lot :
– vitesse de portage 3,68 m/s (A-044) ;
– durée du ramassage ;
– règles fines des sauvetages à la lampe, à la palette ou au casier ;
– condition de spawn de la trappe selon le nombre de gens ;
– « le Mori sacrifie aussi l'accroché » (D-053) ;
– repli de Pain Resonance sur un autre gen quand le plafond est atteint (D-010) ;

– Abandon tueur en LIVE (D-047).
10. Risque de contamination PTB : plusieurs pages wiki.gg affichent déjà des valeurs du PTB 10.2.0 (Self-Preservation
13-15 s, annotations 10.2.0 sur Exit Gates). Si le 10.2.0 sort (estimé début oct. 2026), il faudra revérifier
Abandon/Surrender et les perks touchées.
11. Hors périmètre mais signalé : selon la page wiki.gg 9.2.X, les changements de Pop, Eruption, Ruin et DMS du PTB
9.2.0 ont été annulés en LIVE 9.2.0. Cela contredit la note amont (D-019, D-020). À trancher par le lot perks tueur, à
partir des notes officielles 9.2.0.

### batch1_R4_donnees_competitif

1. Chiffres des infographies officielles 2024-2026 : kill rates par tueur (sept. 2025-févr. 2026), escape rates par survivant,
et surtout l'image SWF 2024 (DBD_SWF_Stats_Jan_2024.png). Il faut une lecture directe de l'image : navigateur ou
accès us.v-cdn.net autorisé.
2. Définitions officielles : kill rate et escape rate calculés par joueur ou par partie, pondérés ou non ? D'où viennent les
sommes ≠ 100 % (CONFLICT-ST-06) ?
3. Reset MMR 10.1.0 : date effective et confirmation primaire (tweet ou annonce BHVR ; X est bloqué ici).
4. Existe-t-il une publication officielle post-10.1.0 avec kill rates par tranche ou par carte ? Aucune trouvée au
27/09/2026.
5. NightLight : effectifs par tueur (viewer en JS) ; plateformes réelles (console via captures ?) ; traitement des abandons
et des bots ; raison des incohérences entre pages (CONFLICT-ST-04).
6. DBDLeague : règlement et page Balancing de la saison en cours, barème exact, pool de tueurs, assignation des cartes,
statut de l'anti-facecamp (site inaccessible). Résultats de la LAN d'Osnabrück (août 2026) et du Winter Circuit 2026.
7. Coachs et analystes : aucun coach compétitif identifié dans des sources lues. Il faudrait les annonces des équipes ou le
Discord DBDL.
8. VOD : identifier 3 à 5 VOD de référence avec leur contenu (nécessite un accès YouTube ou Twitch, refusé ici).
9. « Team-based Ratings » pour les SWF (6.4.0) : encore actifs après 10.1.0 ? (lot R1)
10. Origine des « 76 % / 80 % des votants » : confirmer ou écarter dennisreep.nl.


## Partie B — Questions encore ouvertes après re-vérification (état FINAL, 27/09/2026 soir)

Sources : sections « Questions ouvertes » et « Points à sourcer » de tous les `kb/research/batch*.md` (lots 2 à 12), lacunes des audits `kb/audit/pass14_*.md`, et `batch12_mechanics_open.md` (lot 12, mécaniques). Une question n'apparaît qu'une fois, au thème le plus proche ; la référence entre parenthèses renvoie au fichier d'origine ou au conflit. Référence : LIVE 10.1.2a ; PTB 10.2.0 non LIVE.

Méthode d'accès qui reste nécessaire pour la plupart : **test en jeu** (partie personnalisée, chronomètre, capture), **manuel en jeu** (DR, 9.6.1), **VOD** ou **infographies officielles** (non lisibles dans cet environnement).

### B0. Tranchées depuis la partie A et les lots 2-11 (retirées de la liste)

| Question | Réponse | Preuve |
|---|---|---|
| R2-1 Vitesses par tueur | les 44 tueurs re-vérifiés sur page complète (lot 4) | `batch4_killers_g*.md` |
| R2-7 / R3-4 Rampement | **0,7 m/s constant** ; pas de récupération en rampant sans Tenacity | notes 523, 529 ; lot 12 Q2 |
| R2-11 Off the Record et Endurance | Endurance présente, 30/35/40 s (9.2.2 ; retrait PTB 9.3.0 annulé) | notes 525, 529 ; CONFLICT-R2-02 |
| R2-15 Date de 10.1.2a | 17/09/2026 (10.1.2 = 08/09/2026) | wiki Patch 10.1.0 (`patch_10.1.0.txt`) ; KB 558 |
| R3-2 Taux de base de l'anti-camp | +1 c/s × poids de distance divisés par 2 (×2,5 à ≤ 4 m) ; face camp ≈ 22,5 s de jauge (± 10 %) ; le multiplicateur ne court pas pendant la grâce (jauge en pause) | note 529 ; historique wiki Resolve ; lot 12 Q3 |
| R3-3 Nombre de soigneurs | **2 en 1v4**, 3 en 2v8 | notes 536, 533 ; lot 12 Q1 |
| R3-9 Vitesse de portage | 3,68 m/s (STRONG_SECONDARY) | wiki Movement Speeds ; lot 12 Q6 |
| R3-11 Pop / Eruption / Ruin / DMS en 9.2.0 | Ruin, DMS, Oppression LIVE ; Pop et Eruption reportés | note 523 ; CONFLICT-L3P90-01 |
| Relevage d'un mourant | 16 s seul sans kit, 8 s à deux (calcul) | lot 12 Q6 |
| Saisie en plein saut de trappe | impossible | wiki Hatch ; lot 12 Q6 |
| Casse de palette du Hillbilly sans add-on | oui, 1 s (Special-break) | note 538 ; lot 12 Q10 |
| Fente | ouverture ≤ 0,5 s + frappe 0,3 s à ~6,9 m/s ; cooldown 2,7 s / 1,5 s (distance non publiée) | wiki Attacks, Movement Speeds ; lot 12 Q8 |
| Boost au coup | 1,8 s (VERIFIED_MULTI_SOURCE) ; ×1,65 (wiki seul) | wiki Patch 6.1.X ; lot 12 Q8 |
| DR : vitesse de skill check, Haste de perks, vitesse de vault | soumises aux DR | notes 544, 559 (dev notes) ; lot 12 Q7 |
| Valeurs LIVE des 321 perks (Déjà Vu, Kindred, Bond, Prove Thyself, Hope, Wake Up!, NOED, Remember Me, Grim Embrace…) | re-vérifiées sur page complète + notes | lot 12a (`batch2_*`, `batch3_*`) |
| Windows of Opportunity LIVE | 24/28/32 m, sans cooldown | CONFLICT-L2P23-01 |
| Chien du Houndmaster et palettes | il vaulte fenêtres et palettes ; faire **tomber** la palette sur lui | CONFLICT-B4G6-05 |
| Liste des casses de palette par pouvoir | corrigée | `AUDIT_PHASE0_ERRATA.md` ; CONFLICT-L7-03 |
| Slaughtering Strike (Shape) sur un survivant sain | le met à terre | `batch4_killers_g1.md` |
| Protections basekit à la sortie d'Exile (Judgment) | oui | `batch4_killers_g6.md` (lot 12b) |
| Pain Resonance révèle-t-elle la position ? | cri sans Loud Noise Notification | CONFLICT-L3P90-02 |
| Iron Grasp / Agitation LIVE | 4/8/12 % ; 6/12/18 % | note 559 (« was ») |
| Good Guy / Lich / Mastermind / Knight et palettes | Hard Hat requis ; 4 s avec Vorpal Sword ; franchissement ; casse sur ordre | errata ; CONFLICT-L4G5-03/04, L4G4-06 |

### B1. PTB 10.2.0 et suivi de version

1. 10.2.0 est-il sorti en LIVE (estimé début octobre 2026, non officiel) ? Si oui : relire la note LIVE finale, puis re-vérifier les **58 perks** modifiées, Survivor Intent System, refonte Abandon/Surrender (D-047) et tous les verdicts « PTB » des lots (`batch2_p29`, `p30`, `batch4_g1`, `g3`, `batch9`, `batch11`).
2. Les **51 pages de perks** du wiki qui affichent déjà le texte PTB : après la sortie, confirmer que le texte LIVE final est bien celui du PTB (changements PTB → LIVE possibles).
3. Undone PTB : quelle version fait foi (note 559 : 8/9/10 % par jeton, max 3 ; wiki : 10 %, max 1/2/3) ? (CONFLICT-K96-05)
4. Hex: Thrill of the Hunt PTB : blocage de « tous les totems » (wiki) ou « tous les totems Hex » (note 559) ?
5. Head On : le bug « Exhausted sur un raté contre la Nurse » (corrigé dans la note PTB) est-il présent en LIVE 10.1.2a ?
6. Quelles perks figurent parmi les 26 ajustées « à cause des DR » au PTB 10.2.0 (liste exhaustive non publiée) ?
7. Perks enseignables des tueurs 31-37 (lot 4 g5) : le wiki affiche la version PTB ; confirmer les valeurs LIVE après la sortie.

### B2. Diminishing Returns (9.6.0 / 9.6.1)

8. **Liste itemisée** des modificateurs soumis aux DR : elle existe seulement dans le **manuel en jeu** (9.6.1), à transcrire (lot 12 Q7).
9. Blocages de gen (DMS, No Holds Barred…) et pertes instantanées (Pop, Pain Resonance, Eruption, Surge, Turn Back the Clock, Grim Embrace) : soumis aux DR ? (D-017, D-034, A-098, A-101, A-102 ; `batch3_p90`, `p91`)
10. Endurance (binaire) et effets de base (Haste de décrochage, boost au coup) : concernés ?
11. Bonus « identiques » de réparation et de soin entre perks (Full Circuit + Soft-Spoken, Déjà Vu / Resilience / Prove Thyself, Do No Harm / Flow State / Botany, Better Than New / Friendly Competition) et Luck (Slippery Meat, Up the Ante, offrandes) : quels couples se réduisent ?
12. Haste de Babysitter vs Haste de décrochage ; Haste du Jump Scare (Slasher) vs Rampage ; Hindered / Haste des pouvoirs.
13. Perks tueur de skill check (Unnerving Presence + autre) et malus cumulés (Cull the Weak, See How They Run, Hysteria) : cumul exact.
14. Bonus de base des objets (Items) vs perks : quels couples ?

### B3. Mécaniques de chase (valeurs non publiées)

15. **Distance** de la fente (seules les durées sont connues) ; hitbox / hurtbox (forme, taille, différences entre personnages) ; seuil de ~300 ms de la validation serveur et validation événementielle (Dead Hard, palettes).
16. **Durée d'abaissement d'une palette** par le survivant et fenêtre exacte du stun (~50 % d'abaissement selon le wiki) ; une casse de palette lancée est-elle annulable ?
17. Angle maximal pour un fast vault ; durée de sprint minimale ; le compteur de blocage de fenêtre compte-t-il les vaults moyens / lents ?
18. **Bloodlust** perdue sur stun de palette ou aveuglement ? sur casse de **mur** ? liste des pouvoirs qui la font perdre (lot 12 Q8 : non listés = absence, pas preuve).
19. Temporisation de la fin de poursuite (angle ± 35°, distance > 18 m) ; taux de régression de la Bloodlust (« rate of 6 »).
20. Le boost au coup continue-t-il pendant / après un fast vault (A-059) ? Vitesse du tueur pendant les cooldowns de 2,7 s / 1,5 s.
21. Tache rouge vers le bas ; vitesse du tueur en marche arrière / latérale.
22. Portée des grognements de douleur ; durée de vie de base des flaques de sang (lot 12 Q9) ; portée à laquelle on entend une palette cassée ailleurs.
23. Plafond de Haste (aucune trace : preuve par absence seulement).
24. Coût réel d'un drop d'étage pour le tueur (seed : 3-5 s, non mesuré).
25. Palette posée vs projectiles (hachette, harpon du Deathslinger, lames du Trickster, maïs et palettes basses contre les hachettes).

### B4. Objectifs, états de santé, crochets, fin de partie

26. **Elusive de décrochage** annulée par une action voyante ? (wiki contradictoire : CONFLICT-L12-04) ; l'Endurance de décrochage est-elle perdue en ouvrant une porte (action voyante selon le wiki) ?
27. Définition exacte d'une « Conspicuous Action » pour Will to Live, Off the Record, Made for This (se faire soigner compte-t-il ?).
28. Anti-camp : ampleur du ralentissement de la jauge par les autres survivants proches ; interpolation entre paliers ; le multiplicateur court-il pendant que le tueur porte un autre survivant ?
29. **Durée du ramassage** d'un survivant au sol (seul le plafond de bonus +42 % est connu) ; durée du saut dans la trappe.
30. Règles fines des sauvetages (lampe, palette, casier) ; aveugler pendant l'accrochage en LIVE (retiré en 1.1.2a, non re-vérifié) ; durée exacte de l'animation de ramassage (flash save).
31. Trappe : condition de spawn selon le nombre de gens ; ouverture à la clé avant / après fermeture ; règles avec plusieurs survivants et une clé.
32. Gens requis après une mort (fins à 3 et 2 survivants) ; progression d'une porte lâchée : régresse-t-elle (Haywire, cité par le seed) ?
33. « Le Mori sacrifie aussi l'accroché » (D-053) ; condition du Mori de fin (« l'un en Struggle, l'autre au sol ») : distance ou délai ?
34. Pain Resonance sur un gen au plafond de 8 events ou bloqué : pas d'effet, ou repli sur un autre gen (D-010) ?
35. Chance de skill check avec toolbox (40 % selon le wiki) ; ouverture de porte par le tueur (0,75 s selon le wiki) : valeurs non recoupées.
36. Notification de bruit sur skill check raté, gen fini, kick (à confirmer sur page complète).
37. Palettes ou totems qui réapparaissent (perks, Pentimento) au point de fausser la notion de « zone épuisée ».
38. HUD survivant : icônes d'action des coéquipiers, compteur d'états de crochet, indicateur de poursuite, sens des barres de progression colorées (9.6.0) ; aura basekit des alliés au sol / accrochés et portée.
39. Visibilité des loadouts des coéquipiers dans le lobby avant de verrouiller le sien (A-220).

### B5. Perks survivant (règles LIVE non décrites par le wiki)

40. Off the Record : désactivée aux portes alimentées ? (penche « oui » : texte wiki réécrit le jour de la 9.2.2 ; aucune note ; CONFLICT-L2P23-04 / L12-05).
41. Lithe et Cut Loose : le « Rushed Vault » inclut-il le saut moyen ?
42. Adrenaline : effet différé si accroché à l'alimentation des portes ?
43. Balanced Landing et Boil Over : hauteur minimale de chute (seed : 1,25 m).
44. Shoulder the Burden : pip jaune visible du tueur ? Boon: Exponential : durée d'un relèvement complet au tier III ?
45. Dance With Me : cooldown du rang I (25 ou 20 s ; CONFLICT-P25-05). Saboteur : durée d'un sabotage sans toolbox (seed : 2,3 s). Inner Strength sous Deep Wound ?
46. Lightweight : bug d'espacement des griffures (8.6.0) corrigé ? (CONFLICT-B2P26-03)
47. Down to the Last : la portée 20/22/24 m s'additionne-t-elle par survivant mort ? Wake Up! : valeur LIVE en jeu (le wiki affiche le PTB).
48. Fast Track : 5 % ou 5 charges par jeton (CONFLICT-P27-03) ; Blood Rush : 1 ou 2 activations par partie ?
49. Mirrored Illusion réactivable après 20 % de réparation ? A Place For Us : bug d'Elusive en auto-soin toujours présent ?
50. Teamwork: Throw Down : aura du tueur toujours accordée (CONFLICT-2-P28-03) ? Fruits of Your Labor : plafond de jetons et forme du cumul.
51. Hardened + Calm Spirit : révélation quand le cri est empêché ? Apocalyptic Ingenuity : la palette fragile étourdit-elle ?
52. Ace in the Hole avec Pharmacy / Residual Manifest / Appraisal ; Up the Ante : décompte des jetons (vous inclus ?).
53. Come and Get Me! : fenêtre, utilisations, cooldown ; Change of Plan : add-ons d'origine, boîte à 0 charge ; Road Life : Stake Out / Hyperfocus comptent-ils comme skill checks « regular » ?
54. Background Player et Kindred : localiser l'incohérence interne du seed signalée par l'audit.
55. Built to Last : faire corriger le wiki (affiche 12/10/8 s, valeur PTB 9.1.0 ; LIVE 14/12/10 s par la note 516).

### B6. Perks tueur (vues du survivant)

56. **Crochets Fléau** (Pain Resonance, Jagged Compass, Hangman's Trick, Monstrous Shrine, Floods of Rage…) : visibles / distinguables côté survivant ? Rendu d'un gen bloqué ?
57. Lethal Pursuer : l'auto-extension donne-t-elle 9/10/11 s ? Dead Man's Switch : patch d'introduction de la recharge de 50 s ?
58. Les casiers bloquent-ils la lecture d'aura de BBQ / Discordance ? Weeping Wounds : pénalité affichée comme statut ?
59. Enduring : durée de base d'un stun de palette et exclusion des stuns de perks ; Hex: Undying : un Hex béni est-il transféré ?
60. Lay Waste (« Charge ») ; Overcharge (perte liée à l'échec ?) ; Thanatophobia (icône visible du survivant ralenti ?).
61. Thrilling Tremors : régression en pause pendant le blocage ? Machine Learning : une activation par partie ? Spirit Fury : compteur remis à zéro ?
62. Calm Spirit contre Infectious Fright, Face the Darkness, Rancor et les cris de Madness du Doctor.
63. Dissolution : indicateur côté survivant ? Distressing : palier 2 LIVE 25 % ou 23 % (CONFLICT-L3-94-03) ? Whispers : survivants accrochés / au sol comptés ?
64. Batteries Included : désactivation à l'alimentation des portes (CONFLICT-K95-03) ? None Are Free : le tueur franchit-il les fenêtres / palettes bloquées ?
65. Help Wanted : indicateur du gen compromis ? Hex: Under Your Thumb : indice côté survivant ?
66. Undone LIVE : jetons par raté, maximum, cooldown (le wiki affiche le PTB).
67. Septic Touch en soignant un autre survivant ? Hoarder : exception « Limited Items » ? Overwhelming Presence : Vigil réduit-il les 15 s ?
68. Hex: Pentimento : les totems ravivés peuvent-ils être bénis ? (CONFLICT-L4G4-05)

### B7. Tueurs

69. Nurse : vaulte-t-elle les fenêtres ? Spine Chill (LIVE et PTB) contre un tueur Undetectable (Wraith occulté, Shape en Stalker, Pig, Ghost Face, Demogorgon).
70. Pig : signal sonore de la ruée ; pièges posés après l'alimentation des portes ; la réduction du TR à 24 m n'apparaît pas dans la note 9.1.0 (wiki seul).
71. Legion : cause de la désactivation levée en 9.6.0 ; Feral Slash (non 5e) sur un survivant sous Deep Wound ; add-ons « after mending themselves » avec un mending par un allié.
72. Nightmare : Alarm Clocks visibles dès le début ? Plague : aspect des objets infectés ; Iron Will contre les vomissements.
73. Blight : tokens perdus sur une casse à 3 tokens ou moins après le correctif 9.6.2 (CONFLICT-B4G3-04).
74. Oni : délai sans orbes après un décrochage, 10 ou 15 s (CONFLICT-B4G3-05) ; mécanisme de sa casse de palettes.
75. Demogorgon : totaux d'Undetectable des add-ons (CONFLICT-B4G3-07). Executioner : portée avec Iridescent Seal of Metatron.
76. Twins : actions restreintes par les rayons 4 / 6 / 16 m ; une mise à terre par Victor déclenche-t-elle Unbreakable ?
77. TR de la Blight (40 m) et du Ghost Face (24 m) : note officielle 8.6.0 absente en local (STRONG_SECONDARY).
78. Cenobite : un survivant enchaîné peut-il vaulter ? Chatterer's Tooth : qui ramasse la boîte ?
79. Trickster : une palette baissée bloque-t-elle les lames ? Onryō : « éteindre une TV » vs « retirer une cassette » ; TV cible de la cassette.
80. Mastermind : la réduction « −0,5 s par survivant infecté » est-elle active après 9.6.0 ? Knight : sur quelles tiles le détour dépasse-t-il 48 m ?
81. Skull Merchant : retrait manuel d'un Claw Trap ? Xenomorph : la queue passe-t-elle toujours au-dessus des palettes et fenêtres ? Unknown : tirs en cloche limités en intérieur ?
82. Judgment : durée de l'interaction de Repent et présence requise pendant les 30 s ; autres effets de l'Heresy ; à qui l'aura est-elle révélée à la libération d'un exilé ?
83. The First : un casier protège-t-il de l'Undergate ? La liane casse-t-elle les palettes ? Tokens de Worldbreaker remis à zéro ? Les horloges remplacent-elles le −1/s de base ?
84. Animatronic : conditions de recharge de la batterie (+5/s) ; son d'Afton qui entre dans une porte. Houndmaster : longueur maximale de Chase Command.
85. Shape : fréquence réelle en partie depuis le retrait boutique (19/01/2026).

### B8. Objets, add-ons, offrandes

86. Durées de canalisation de la Key et de la Map ; ouverture rapide d'un coffre à la clé.
87. Alex's Toolbox 18 ou 24 charges (CONFLICT-L5-02) ; charges d'une fouille 8 ou 10 (CONFLICT-L5-03) ; probabilités de coffre actuelles, part des Fog Vials (CONFLICT-L5-04).
88. Cumul des bonus d'add-ons (additif ou multiplicatif) ; toolbox en coop : bonus avant ou après la pénalité 85/70/55 % ?
89. Soin altruiste au kit : 1,5 état confirmé en jeu ? (CONFLICT-L5-06) ; « Affected Survivor » de l'Anti-Exhaustion Syringe : le soigné seulement ou aussi le soigneur ?
90. Cumul de plusieurs offrandes de Luck et de Bloody Party Streamers ; Shroud of Union (9.0.0) sur l'autre paire.
91. Statut Light-Resistant (Black Banquet 2026) en file normale ? Fog Vial à 0 charge : la recharge continue-t-elle ?
92. Instructions contre les Madness Skill Checks du Doctor ; Brand New Part : bruit sur un test raté ?
93. Interactions lampe × pouvoirs des tueurs sortis depuis 6.7.0.

### B9. Tiles et cartes

94. Exclusivités de maze tiles par royaume encore actives après le pool commun 9.2.0 ? (CONFLICT-L7-01 = B8-03 ; 4-lane à Coldwind / Withered Isle ?)
95. Distance minimale entre palettes (14/16/18/20 m : origine et critère, CONFLICT-L7-02) ; **nombre et emplacement des palettes par carte après 9.3.2**.
96. Disposition du Killer Shack par royaume ; tiles tournées **et** reflétées ?
97. Loops des cartes intérieures (RPD, Midwich, Treatment Theatre, Underground Complex, Badham) : fiches à faire.
98. Hiérarchies d'experts (long wall > short wall, opened > closed, T > L) : aucune source écrite datée lue.
99. Réductions 9.2.0 de Torment Creek et Disturbed Ward (CONFLICT-B8-02 ; PTB 9.2.0, KB 522, non archivé) ; désactivation de Badham / Grim Pantry / Pale Rose (CONFLICT-B8-06).
100. Sous-sol de Dead Sands ; 2e emplacement de l'Underground Complex ; tailles de Trickster's Delusion et RPD ; répartition des gates et sous-sols de RPD.
101. Sanctum of Wrath (2 emplacements de shack ?), Backwater Swamp (collines de bord), The Game (coins ; portes coulissantes liées aux gens) ; fiches à compléter : Freddy Fazbear's Pizza, Fallen Refuge, Dead Sands, Rotten Fields.
102. Positions des Exit Gates (seules Nostromo, Underground Complex et RPD sont documentées) ; Nostromo : délai du jet des vents.
103. Portée audible des signaux de carte (sonnette de Gas Heaven, Water Tower, ascenseur d'Ormond Lake Mine, corne du Pale Rose…) ; hauteur réelle des murs d'Autohaven (CONFLICT-B8-07).

### B10. Statistiques, compétitif, sources expertes

104. Infographies officielles 2024-2026 (kill rates par tueur, escape rates, SWF 2024) : lecture directe nécessaire ; chiffres « Ghoul > 60 % », « The First n°2 », Twins / Blight au haut MMR en 2026 (CONFLICT-B4G6-01, B4G6-02, B4G3-02).
105. Définitions officielles des kill / escape rates ; sommes ≠ 100 % (CONFLICT-ST-06).
106. Reset MMR 10.1.0 : confirmation primaire (CONFLICT-G04) ; « Team-based Ratings » (6.4.0) encore actifs ?
107. Publication officielle post-10.1.0 par tranche ou par carte ; kill / escape rate par carte sur une fenêtre datée avec n.
108. NightLight : effectifs, plateformes, abandons et bots, incohérences entre pages (CONFLICT-ST-04) ; fréquences réelles des perks et add-ons par tueur ; taux d'usage cités par le seed.
109. DBDLeague : règlement, Balancing, pool, cartes, anti-facecamp ; résultats LAN d'Osnabrück (août 2026) et Winter Circuit 2026 ; origine des « 76 % / 80 % des votants ».
110. Coachs et analystes identifiables ; 3 à 5 VOD de référence ; guides de counterplay survivant écrits par des experts (tous les counterplays restent HEURISTIC).

### B11. Entraînement et modèles (lots 6, 9, 11)

111. Mode Kill Your Friends / parties personnalisées : options (bots) utilisables pour les drills ?
112. Paramètres des modèles de chase : efficacité `e` des réparateurs, `T_loop` par tile, probabilité `p` de coup par type de tueur, coût d'un crochet ; seuils de « chase rentable » (25-42 s / 41-63 s) et de « bonne chase » (~60 s).
113. Valeur d'un état de santé en secondes de chase (~12-30 s, HYPOTHESIS) mesurée par type de tueur ; coût réel d'un sauvetage (20-40 s de trajet).
114. SoloQ : fréquence des doubles sauveteurs, délai avant le 1er départ vers un crochet (« délai de confirmation » 15-20 s) ; différences SoloQ / SWF chiffrables.
115. Valeurs cibles et durées du programme d'entraînement ; critères de passage SoloQ / SWF distincts ; grille objective du « coup évitable » (M-05) ; M-19 avec soins et sauvetages.
116. Arbres T-Q04 à T-Q07 (gen, totems, fin de partie, slug) ; programme côté tueur symétrique ?
117. Intégration de la régression et des perks de ralentissement (avec DR) dans le modèle en secondes-survivant ; perks d'épuisement, objets et 2v8 dans les calculs de chase.

**Décompte : 117 questions ouvertes** (B1-B11), contre 23 questions tranchées listées en B0.
