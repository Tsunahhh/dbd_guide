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

