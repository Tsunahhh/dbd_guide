# Lot 2 — Perks survivant, page 30 du guide seed (ch3_survperks.txt l. 873-928)

**Couverture : 4/4 perks re-vérifiées sur page wiki complète (27/09/2026) ; dont 4 confirmées par note officielle** (9.1.0, 9.2.0, 9.4.0 ; PTB 10.2.0 pour Road Life).

Référence : **LIVE 10.1.2a (17/09/2026)** · PTB 10.2.0 **non LIVE** · rédigé le 27/09/2026, re-vérifié le 27/09/2026 (lot 12a).
Périmètre : Come and Get Me!, Teamwork: Toughen Up, Change of Plan, Road Life (4 perks).
Méthode : 1ʳᵉ passe (lot 2) par résumés WebSearch [1]-[15]. Re-vérification (lot 12a) sur les **pages wiki.gg complètes** (API MediaWiki, digest local `kb/sources/wiki_perks_digest.md`) [16] et les **notes officielles BHVR** locales (`kb/sources/patches/official_*.txt`) [17]-[24].
Historique : au lot 2, le quota WebSearch avait empêché deux vérifications (détails de Change of Plan, taux d'usage). Les détails de Change of Plan sont désormais couverts par la note 9.4.0 ; le taux d'usage reste non consulté.

---

### Come and Get Me! — Rick Grimes
- **Statut** : LIVE 10.1.2a. Perk unique ajoutée en 9.1.0 (The Walking Dead, 29/07/2025) [1][2]. FACT, STRONG_SECONDARY.
- **Effet LIVE** : après avoir décroché un survivant, **accroupi et immobile**, appuyer sur le bouton **Active Ability**. Pendant 10/12,5/15 s, tous les survivants **blessés ou à terre** à **24 m** de votre position ne font plus de grognements de douleur, de flaques de sang ni de griffures. En contrepartie, **vous criez** et **votre aura est révélée au tueur pendant 5 s**. Confiance : VERIFIED_MULTI_SOURCE (page wiki complète [16] ; note 9.1.0 : « 24/24/24 meters… 10/12.5/15 seconds. You scream and the Killer sees your aura for 5/5/5 seconds » [17]).
- **Valeurs / CD / conditions / limites** :
  - Durée 10/12,5/15 s (LIVE). Rayon 24 m (LIVE). Aura révélée 5 s + cri (LIVE).
  - Déclenchement actif, après un décrochage uniquement.
  - Note 9.1.1 : correctif (les survivants à terre gémissaient encore sous l'effet) [18] — sans changement de valeur.
  - Durée de la fenêtre après le décrochage, nombre d'utilisations par décrochage, éventuel cooldown : **UNCERTAIN** (absent de la page complète et des notes).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [16][23].
- **Interactions, DR (9.6.0), anti-synergies** :
  - La suppression est binaire (100 %). Aucun modificateur de vitesse n'est en jeu, donc les DR ne devraient pas s'appliquer (HYPOTHESIS).
  - Redondante pour vous-même avec Iron Will (grognements) ou Lucky Break (sang/griffures) : l'intérêt est la zone d'équipe.
  - Le cri et l'aura révélée 5 s peuvent attirer le tueur vers le décrocheur. C'est voulu (leurre), mais pénalisant si le tueur est déjà proche et le décrocheur en bonne santé fragile.
  - L'obligation d'être accroupi et immobile coûte du temps juste après un décrochage, souvent le moment le plus dangereux.
- **Synergies** (SITUATIONAL) :
  - Borrowed Time (le décroché blessé fuit sans traces).
  - Perks de chase pour le décrocheur qui sert d'appât : Dead Hard, Sprint Burst, Lithe.
  - Distortion / Off the Record chez le décroché (aura + traces).
  - Kindred (placement de l'équipe autour du crochet).
- **Difficulté** : 2.
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 2 · chase 0 · macro 1 · info 0 · anti-tunnel 2 · soin 0 · gen 0 · endgame 1
- **Quand elle produit de la valeur** :
  - Décrochage sûr (tueur loin ou en chase ailleurs) avec un décroché blessé : sans sang ni griffures, le tueur perd sa piste. C'est de l'anti-tunnel en information.
  - En SWF, le décrocheur annonce l'appât et joue un bon chase pendant que le décroché s'éloigne sans traces.
- **Quand elle n'en produit pas** :
  - Décrochage sous pression ou en face camp : l'animation accroupi/immobile et l'aura révélée exposent le décrocheur.
  - Contre des tueurs qui traquent peu aux traces (forte mobilité, aura) : suppression de faible valeur.
- **Écart avec le seed** : IMPRÉCIS (mineur). Le seed omet l'activation par **Active Ability**, le **cri** et la **durée de l'aura (5 s)** ; « brièvement » est vague. Valeurs 10/12,5/15 s, 24 m, blessés/à terre : OK (note 9.1.0).
- **Sources** : [16][17][18][23][1][2][9][10]

### Teamwork: Toughen Up — Rick Grimes
- **Statut** : LIVE 10.1.2a. Perk unique ajoutée en 9.1.0 (29/07/2025) [3]. FACT, STRONG_SECONDARY.
- **Effet LIVE** : quand vous êtes **blessé**, si un autre survivant à **24 m** **aveugle le tueur (par n'importe quel moyen)** ou **l'étourdit avec une palette**, vos grognements de douleur, flaques de sang et griffures sont supprimés pendant 20/25/30 s. Confiance : VERIFIED_MULTI_SOURCE (page wiki complète [16] ; note 9.1.0 LIVE : « When another Survivor pallet-stuns or blinds the Killer while you are injured and within 24/24/24 meters… reduced by 100/100/100% for 20/25/30 seconds » [17]).
- **Valeurs / CD / conditions / limites** :
  - 20/25/30 s (LIVE). Rayon 24 m (LIVE).
  - Déclencheur : stun **de palette** ou aveuglement (« by any means »), fait par un **autre** survivant. Un stun hors palette (Head On…) ne compte **pas** d'après les deux libellés [16][17]. Un aveuglement par Blast Mine ou Flashbang compte d'après « blinds the Killer by any means » (FACT de libellé, non testé).
  - Cooldown : aucun mentionné (page complète et note 9.1.0).
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [16][23].
- **Interactions, DR (9.6.0), anti-synergies** :
  - Suppression binaire, DR sans objet (HYPOTHESIS).
  - Dépend entièrement des coéquipiers : sans allié qui joue lampe, Flashbang ou palettes, la perk est inerte.
  - Chevauchement avec Iron Will, Lucky Break, Come and Get Me!.
- **Synergies** (SITUATIONAL) :
  - Équipe avec lampes torches / Flashbang / Blast Mine (famille « Teamwork: », voir Teamwork: Throw Down de Michonne).
  - Perks de palette chez les alliés (Smash Hit, Power Struggle).
  - Built pour survivant blessé qui reste proche des chases (Resilience).
- **Difficulté** : 3 (hors de votre contrôle).
- **Valeur (HEURISTIC, 0-3)** : SoloQ 0 · SWF 1 · chase 1 · macro 0 · info 0 · anti-tunnel 1 · soin 0 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - SWF « lampes/palettes » où un allié sauve souvent un survivant blessé : le blessé disparaît sans traces après le stun ou l'aveuglement.
- **Quand elle n'en produit pas** :
  - En SoloQ : déclencheur rare et imprévisible.
  - Face à des tueurs qui évitent les palettes ou qui retirent les lampes (perks Lightborn, etc.) : aucune activation.
- **Écart avec le seed** : IMPRÉCIS. Le seed dit « aveugle ou étourdit ». Or le LIVE exige un stun **avec une palette** (note 9.1.0 « pallet-stuns ») ; un aveuglement par n'importe quel moyen compte. Valeurs 20/25/30 s et 24 m : OK.
- **Sources** : [16][17][23][3][4][5][9]

### Change of Plan — Dustin Henderson
- **Statut** : LIVE 10.1.2a. Perk unique ajoutée en 9.4.0 (Stranger Things Chapter 2, 27/01/2026) [6][7]. FACT, STRONG_SECONDARY.
- **Effet LIVE** : vous commencez le trial avec **2 jetons**. **Caché dans un casier** avec une **boîte à outils non-événement**, appuyez sur **Active Ability** pour dépenser 1 jeton. La boîte à outils devient un **Med-Kit de même rareté** avec un **add-on aléatoire de même rareté**. Le nouveau Med-Kit a **80/90/100 % de ses charges**. Confiance : VERIFIED_MULTI_SOURCE (page wiki complète [16] ; note 9.4.0 : texte identique, « 2/2/2 tokens… non-event Toolbox… same rarity with a random add-on of the same rarity… 80/90/100% of its charges » [21]).
- **Valeurs / CD / conditions / limites** :
  - 2 jetons (LIVE), charges 80/90/100 % (LIVE).
  - Transformation dans un seul sens (boîte → Med-Kit) d'après le libellé.
  - Boîtes « event » exclues ; objets spéciaux de tueur et objets non-boîte (donnés par Dramaturgy) exclus depuis les correctifs 9.4.1 et 9.6.0 [22][24].
  - Correctif 9.4.1 : Built to Last ne réduit plus les charges du Med-Kit obtenu ; plus d'échange d'objet hors casier après un grab [22].
  - Sort des add-ons d'origine de la boîte : **UNCERTAIN** (non précisé par la page complète ni par les notes). On suppose qu'ils sont perdus au profit de l'add-on aléatoire.
- **PTB 10.2.0** : non modifiée au PTB 10.2.0 d'après le wiki et la note officielle 559 [16][23].
- **Interactions, DR (9.6.0), anti-synergies** :
  - Aucun modificateur de vitesse propre, donc les DR ne s'appliquent pas à la perk elle-même.
  - Les add-ons du Med-Kit obtenu suivent les règles habituelles des add-ons, exclus des DR [audit 9.6.0].
  - Le passage dans un casier expose aux grabs et révèle la position si le tueur surveille.
  - Aucune valeur sans boîte à outils (items refusés, boîte cassée ou vide ?). Le cas d'une boîte **vide** est UNCERTAIN.
- **Synergies** (SITUATIONAL) :
  - Apporter une boîte à outils : réparer tôt, puis la convertir en Med-Kit en milieu de partie.
  - Appraisal / Plunderer's Instinct pour trouver une 2e boîte à outils et utiliser le 2e jeton.
  - Built to Last (autre perk de casier liée aux items ; depuis 9.4.1, elle ne ponctionne plus les charges du Med-Kit converti [22]).
  - Head On (déjà dans le casier).
  - Self-Care (redondance, à éviter : même rôle).
- **Difficulté** : 2.
- **Valeur (HEURISTIC, 0-3)** : SoloQ 2 · SWF 2 · chase 0 · macro 2 · info 0 · anti-tunnel 0 · soin 2 · gen 1 · endgame 0
- **Quand elle produit de la valeur** :
  - Partie où la boîte à outils a fait son travail (gens avancés) et où l'équipe souffre de blessures (tueur à blessure longue, Deep Wound…). La conversion donne un Med-Kit quasi plein sans chercher de coffre.
  - Si la carte manque de soins, en SoloQ : vous devenez autonome pour les soins.
- **Quand elle n'en produit pas** :
  - Sans boîte à outils, ou contre un tueur qui punit les casiers (proximité) : la perk est vide.
  - Si l'équipe a déjà des Med-Kits ou des boons de soin : faible gain marginal.
- **Écart avec le seed** : OK (mineur IMPRÉCIS). Le seed omet « non-événement » et « Active Ability ». Il écrit « add-on au hasard » alors que l'add-on est de **même rareté**. Les valeurs (2 jetons, même rareté, 80/90/100 %) sont exactes (note 9.4.0).
- **Sources** : [16][21][22][23][24][6][7][9]

### Road Life — Vee Boonyasak
- **Statut** : LIVE 10.1.2a. Perk unique ajoutée en 9.2.0 (Sinister Grace, 23/09/2025) [8]. **Reworkée au PTB 10.2.0 (non LIVE)** [9][10][11].
- **Effet LIVE** : quand vous êtes **blessé**, **non Broken** et que vous réparez un générateur :
  - chaque skill check basique **great** donne +1 jeton ;
  - chaque skill check basique **raté** retire 1 jeton ;
  - à **6/5/4 jetons**, tous les jetons sont dépensés et votre **vitesse de soin augmente de 100 % jusqu'à ce que vous arrêtiez de soigner** (soin d'autrui compris ; voir CONFLICT-L2P30-01, résolu).
  - La perk **se désactive après utilisation** (usage unique par trial) et ne s'active pas si vous êtes Broken [16].
  - Confiance : VERIFIED_MULTI_SOURCE (page wiki complète, onglet historique 9.2.0 = LIVE [16] ; note 9.2.0 : « While injured, not Broken and repairing a generator, gain 1/1/1 token for each regular great skill check… 6/5/4 tokens… 100% healing speed until you stop healing. Lose 1/1/1 token when you fail a regular skill check » [19]).
- **Valeurs / CD / conditions / limites** :
  - Seuil 6/5/4 jetons (LIVE). Bonus +100 % (LIVE). +1 par great, 0 par good, −1 par raté (LIVE). Usage unique (LIVE, wiki).
  - Historique : au PTB 9.2.0, le seuil était de 8/7/6 et la pénalité de −2 jetons ; réduits à 6/5/4 et −1 à la sortie LIVE (note 9.2.0, « Changes from PTB » [19]) (HISTORICAL). Correctif 9.2.1 : plus de jetons gagnés via l'add-on Office Phone de The Animatronic [20].
  - Seuls les skill checks « regular » comptent ; la page complète précise que Road Life **n'interagit pas avec les skill checks spéciaux déclenchés par des effets extérieurs** (ex. Merciless Storm, Overcharge) [16]. Le cas de Stake Out / Hyperfocus (qui modifient des skill checks ordinaires) reste UNCERTAIN.
- **PTB 10.2.0 (NON LIVE)** : rework [16][23] :
  - en réparant blessé (restriction « non Broken » supprimée) : +1 jeton par great basique, −1 par raté basique ;
  - à 6/5/4 jetons : **capacité d'auto-soin** débloquée et **+100 % de vitesse d'auto-soin**, jusqu'à l'arrêt du soin **puis 4 s** ;
  - **nerf** : le bonus ne s'applique plus au soin d'autrui (change log wiki 10.2.0 : « no longer affects altruistic healing ») [16].
  - Confiance : VERIFIED_MULTI_SOURCE (note 559 + wiki).
- **Interactions, DR (9.6.0), anti-synergies** :
  - +100 % est un modificateur positif de vitesse de soin. Avec Botany Knowledge ou un add-on de Med-Kit, les DR 9.6.0 s'appliquent aux modificateurs **identiques de perks** : la valeur la plus forte (Road Life) compte à 100 % et la suivante à 50 %. Les add-ons sont exclus [audit 9.6.0]. La liste exacte des modificateurs couverts n'a pas été consultée (HYPOTHESIS).
  - Anti-synergie forte : toute source de **Broken** empêche l'accumulation et l'activation au LIVE.
  - Les perks tueur qui rendent les skill checks difficiles ou plus rares (Unnerving Presence, Overcharge, Huntress Lullaby…) freinent les jetons (SITUATIONAL).
  - L'usage unique fait perdre les jetons si le soin est interrompu : le bonus dure « jusqu'à l'arrêt du soin » (FACT, wiki et note 9.2.0) ; critique communautaire [12] (COMMUNITY_OBSERVATION). Le PTB 10.2.0 ajoute 4 s de marge.
- **Synergies** (SITUATIONAL) :
  - Self-Care ou Med-Kit (le libellé LIVE « Healing speed » est général ; application aux auto-soins confirmée par la communauté [12], STRONG_SECONDARY).
  - Soigner un allié blessé au LIVE (le bonus couvre le soin d'autrui jusqu'au 10.2.0).
  - Resilience (réparer blessé).
  - Hyperfocus / Stake Out (plus de great, sous réserve de l'éligibilité des checks spéciaux).
  - Ghost Notes / One-Two-Three-Four! (kit Vee, faible synergie réelle).
- **Difficulté** : 3.
- **Valeur (HEURISTIC, 0-3)** : SoloQ 1 · SWF 1 · chase 0 · macro 0 · info 0 · anti-tunnel 0 · soin 1 · gen 0 · endgame 0
- **Quand elle produit de la valeur** :
  - Survivant blessé qui reste longtemps sur un gen (tueur éloigné), bon en skill checks, avec Med-Kit ou Self-Care : un soin rapide unique qui économise environ la moitié du temps de soin.
- **Quand elle n'en produit pas** :
  - Contre les tueurs à Broken (LIVE), en chase fréquent, ou avec des soins interrompus : la valeur tombe à zéro après une seule tentative.
  - Mauvais choix LIVE face à Self-Care seul ou Botany (plus fiables). La communauté la juge parmi les pires perks [12][15] (EXPERT_OPINION / COMMUNITY_OBSERVATION).
- **Écart avec le seed** : IMPRÉCIS. Le seed omet la condition **non Broken** et l'**usage unique** (désactivation après emploi), deux limites majeures. Seuils 6/5/4, +1/−1 jeton et +100 % : OK. « Très peu jouée (environ 0,1 %) » : NON VÉRIFIABLE (taux d'usage non consulté). Le seed classe bien le rework en PTB 10.2.0 (p. 32) : OK.
- **Sources** : [16][19][20][23][8][9][10][11][12][13][15]

---

## Claims

| ID | Claim | Source | Patch | Confiance |
|---|---|---|---|---|
| P30-01 | Come and Get Me! : suppression grognements/sang/griffures des blessés/à terre à 24 m pendant 10/12,5/15 s | [16][17] | LIVE 10.1.2a (depuis 9.1.0) | VERIFIED_MULTI_SOURCE |
| P30-02 | Come and Get Me! : cri + aura révélée au tueur 5 s ; accroupi, immobile, Active Ability après décrochage | [16][17] | LIVE | VERIFIED_MULTI_SOURCE |
| P30-03 | Teamwork: Toughen Up : 20/25/30 s de suppression quand un allié à 24 m aveugle le tueur ou l'étourdit **avec une palette** | [16][17] | LIVE (depuis 9.1.0) | VERIFIED_MULTI_SOURCE |
| P30-04 | Change of Plan : 2 jetons ; boîte non-événement → Med-Kit même rareté + add-on aléatoire même rareté ; charges 80/90/100 % | [16][21] | LIVE (depuis 9.4.0) | VERIFIED_MULTI_SOURCE |
| P30-05 | Road Life : blessé, non Broken, en réparant ; +1 jeton par great régulier, −1 par raté ; à 6/5/4 jetons, soin +100 % jusqu'à l'arrêt | [16][19] | LIVE (depuis 9.2.0) | VERIFIED_MULTI_SOURCE |
| P30-06 | Road Life se désactive après usage (usage unique) ; ignore les skill checks spéciaux d'effets extérieurs | [16] | LIVE | STRONG_SECONDARY |
| P30-06b | Road Life LIVE : le bonus s'applique aussi au soin d'autrui | [16] (change log 10.2.0 « no longer affects altruistic healing ») | LIVE | STRONG_SECONDARY |
| P30-07 | Road Life PTB 9.2.0 : 8/7/6 jetons et −2 jetons par raté, réduits à la sortie | [19][16] | HISTORICAL | VERIFIED_MULTI_SOURCE |
| P30-08 | Road Life PTB 10.2.0 : auto-soin débloqué, +100 % (6/5/4 jetons) jusqu'à l'arrêt + 4 s ; plus de condition non Broken ; plus de bonus au soin d'autrui | [23][16] | PTB 10.2.0 (NON LIVE) | VERIFIED_MULTI_SOURCE |
| P30-09 | Come and Get Me!, Toughen Up, Change of Plan non modifiées au PTB 10.2.0 | [16][23] | PTB 10.2.0 | VERIFIED_MULTI_SOURCE |

## Conflits

#### CONFLICT-L2P30-01 : portée du bonus de soin de Road Life au LIVE
- Source A : wiki.gg via résumé [8] : « heal 100% faster until you stop healing ». Ne précise ni soi ni autrui.
- Source B : résumé PTB 10.2.0 [9][10] : le rework « grants the ability to self-heal ».
- Source C : forum BHVR [12] : le bonus s'applique aux auto-soins avec Med-Kit/Self-Care.
- Résolution : **RÉSOLU**. LIVE : « Increases your Healing speed by +100 % » (page complète [16]) ; note 9.2.0 « 100% healing speed » [19] ; le change log 10.2.0 du wiki classe « no longer affects altruistic healing » en **nerf** du PTB, donc le LIVE couvre le soin d'autrui ; l'auto-soin LIVE suppose Med-Kit/Self-Care (C, STRONG_SECONDARY). Le PTB 10.2.0 (NON LIVE) ajoute l'auto-soin natif + 4 s et retire le soin d'autrui [23][16].

#### CONFLICT-L2P30-02 : seuil de jetons de Road Life
- Source A : résumé [8] (paragraphe principal) : 8/7/6 jetons.
- Source B : même page [8], section historique : réduit à 6/5/4 et −1 jeton « for release ».
- Résolution : **RÉSOLU**. **6/5/4 = LIVE** ; 8/7/6 = HISTORICAL (PTB 9.2.0). Confirmé par la note 9.2.0, section « Changes from PTB » : « Lowered tokens needed… to 6/5/4 (from 8/7/6) » [19].

## Écarts avec le guide seed

| Élément | Le guide dit | Vérifié | Verdict |
|---|---|---|---|
| Come and Get Me! — révélation | « votre aura est brièvement révélée au tueur » | Cri + aura révélée 5 s ; activation Active Ability (note 9.1.0) | IMPRÉCIS |
| Come and Get Me! — valeurs | 10/12,5/15 s, 24 m, blessés ou à terre, accroupi immobile | Identique (note 9.1.0) | OK |
| Teamwork: Toughen Up — déclencheur | « aveugle ou étourdit le tueur » | Aveuglement (tout moyen) ou stun **avec palette** uniquement (note 9.1.0 « pallet-stuns ») | IMPRÉCIS |
| Teamwork: Toughen Up — valeurs | 20/25/30 s, 24 m, blessé | Identique | OK |
| Change of Plan | 2 jetons, casier + boîte, Med-Kit même rareté, add-on au hasard, 80/90/100 % | Boîte **non-événement** ; add-on aléatoire **de même rareté** ; Active Ability (note 9.4.0) | OK (mineur IMPRÉCIS) |
| Road Life — conditions | « Blessé, en réparant » | Blessé, **non Broken**, en réparant ; skill checks **réguliers** (note 9.2.0) | IMPRÉCIS |
| Road Life — limite | (rien) | **Désactivée après usage** (usage unique, wiki) | IMPRÉCIS (omission importante) |
| Road Life — valeurs | 6/5/4 jetons, −1 par raté, soin +100 % jusqu'à l'arrêt | Identique (LIVE, note 9.2.0) | OK |
| Road Life — taux d'usage | « environ 0,1 % » | Non consulté | NON VÉRIFIABLE |
| Road Life — PTB 10.2.0 (p. 32) | Listée parmi les reworks PTB | Rework PTB confirmé (auto-soin, +4 s, fin de la condition Broken, plus de soin d'autrui) [23] | OK (bien étiqueté PTB ; le nerf du soin d'autrui n'est pas mentionné) |
| Dates d'ajout (p. 32 historique) | 9.1.0 juillet 2025 / 9.2.0 sept. 2025 / 9.4.0 janv. 2026 | 29/07/2025 / 23/09/2025 / 27/01/2026 | OK |

## Questions ouvertes

1. Come and Get Me! : fenêtre après le décrochage, utilisations par décrochage, cooldown ? (absent de la page complète et des notes)
2. Change of Plan : que deviennent les add-ons de la boîte d'origine ? Une boîte vide (0 charge) est-elle convertible ?
3. Road Life : Stake Out / Hyperfocus modifient des skill checks ordinaires ; comptent-ils comme « regular » ? (les skill checks spéciaux d'effets extérieurs sont exclus, [16])
4. Taux d'usage réel des 4 perks (Nightlight) : non vérifié.
5. À revérifier dès la sortie LIVE du 10.2.0 (estimée début octobre 2026) : le texte de Road Life changera.

## Sources

[1] Come and Get Me! — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Come_and_Get_Me! — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[2] Rick Grimes — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Rick_Grimes — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[3] Teamwork: Toughen Up — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Teamwork:_Toughen_Up — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[4] 9.1.0 | PTB Patch Notes — BHVR forums — https://forums.bhvr.com/dead-by-daylight/discussion/450412/9-1-0-ptb-patch-notes — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[5] 9.1.0 | The Walking Dead — support Dead by Daylight — https://support.deadbydaylight.com/hc/en-us/articles/41607860703380-9-1-0-The-Walking-Dead — consulté le 27/09/2026 via WebSearch (URL renvoyée, contenu non résumé spécifiquement)
[6] Change of Plan — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Change_of_Plan — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[7] Dustin Henderson — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Dustin_Henderson — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[8] Road Life — Official Dead by Daylight Wiki — https://deadbydaylight.wiki.gg/wiki/Road_Life — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[9] DBD Perk Changes: All 58 Killer and Survivor Perks in the 10.2.0 PTB — timesaver.gg — https://timesaver.gg/blog/dbd-perk-changes-10-2-0 — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[10] Dead by Daylight v10.2.0 PTB — Perk Overhaul — patched.gg — https://patched.gg/games/dead-by-daylight/1020-ptb-patch-notes — consulté le 27/09/2026 via WebSearch (résumé de recherche)
[11] 10.2.0 PTB Patch Notes — BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/559-10-2-0-ptb-patch-notes — consulté le 27/09/2026 via WebSearch (URL renvoyée ; contenu détaillé non résumé)
[12] Road Life is one of the worst perks ever made — BHVR forums — https://forums.bhvr.com/dead-by-daylight/discussion/457836/road-life-is-one-of-the-worst-perks-ever-made — consulté le 27/09/2026 via WebSearch (résumé de recherche, COMMUNITY_OBSERVATION)
[13] Road Life — NightLight — https://nightlight.gg/perks/Road_Life — consulté le 27/09/2026 via WebSearch (URL renvoyée)
[14] Dev Update: 10.2.0 Perks Update — BHVR — https://forums.bhvr.com/dead-by-daylight/discussion/472297/dev-update-10-2-0-perks-update — consulté le 27/09/2026 via WebSearch (URL renvoyée)
[15] Bottom 20 Survivor Perks — BHVR forums — https://forums.bhvr.com/dead-by-daylight/discussion/466721/bottom-20-survivor-perks — consulté le 27/09/2026 via WebSearch (URL renvoyée, EXPERT_OPINION/COMMUNITY)
[16] deadbydaylight.wiki.gg/wiki/<Page> — page complète via API, consultée le 27/09/2026 — pages : Come_and_Get_Me!, Teamwork:_Toughen_Up, Change_of_Plan, Road_Life (extrait local : `kb/sources/wiki_perks_digest.md`, brut `wiki_perks.json`)
[17] 9.1.0 | The Walking Dead — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/516 — copie locale `kb/sources/patches/official_516.txt`, lue le 27/09/2026
[18] 9.1.1 | Bugfix Patch — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/517 — copie locale official_517.txt, lue le 27/09/2026
[19] 9.2.0 | Sinister Grace — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/523 — copie locale official_523.txt, lue le 27/09/2026
[20] 9.2.1 | Bugfix Patch — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/524 — copie locale official_524.txt, lue le 27/09/2026
[21] 9.4.0 | Stranger Things Chapter 2 — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/534 — copie locale official_534.txt, lue le 27/09/2026
[22] 9.4.1 | Bugfix Patch — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/535 — copie locale official_535.txt, lue le 27/09/2026
[23] 10.2.0 PTB Patch Notes (NON LIVE) — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/559 — copie locale official_559.txt, lue le 27/09/2026
[24] 9.6.0 | Patch Notes — notes officielles BHVR — https://forums.bhvr.com/dead-by-daylight/kb/articles/544 — copie locale official_544.txt, lue le 27/09/2026
