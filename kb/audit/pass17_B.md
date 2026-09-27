# Passe 17 (lot B) : fact-check final des chapitres 3, 4 et 13

Date : 27/09/2026. Référence : `kb/guide/CANONICAL_FACTS.md`, `kb/ledgers/AUDIT_PHASE0_ERRATA.md`, `kb/ledgers/CONFLICT_REGISTER.md` (résolutions du 27/09/2026), `kb/research/batch4_killers_g3.md`, `batch4_killers_g6.md`, `batch7_tiles.md` §5.2, `batch12_mechanics_open.md`, `batch2_perks_surv_p23.md`, `batch3_perks_kill_p9x.md`.

Points vérifiés sans changement : condition de loop sûre en temps (formule, conversions 2,3 / 2,2 / 4,1 / 5,1 / 4,8 m, exemples 16,3 / 15,7 / 19,1 / 18,3 m), toutes les tables CALC (rattrapage avec Bloodlust, gains par interaction, D_max, écart nécessaire, p*, EV, seuils de chase rentable), casseurs de palettes (Good Guy / Mastermind avec add-on seulement, Knight 1,8 / 5 s, Lich + Vorpal Sword 4 s, Blight en tokens), Huntress 7 hachettes, Five Moves Ahead LIVE, Bamboozle, Crowd Control, WOT. Aucune valeur PTB 10.2.0 ou 2v8 présentée comme LIVE. Markdown : un seul `#`, blocs ``` fermés, tableaux au bon nombre de colonnes.

| Chapitre | Problème | Correction |
|---|---|---|
| 03 | Rampement : « 1,05 m/s d'un PTB 9.3.0 annulé » (origine imprécise) | 0,7 m/s constant ; 1,05 = paquet anti-slug 9.2.0 Postponed / 9.3.0 Reverted ; pas de récupération en rampant sans Tenacity |
| 03 | Hillbilly listé sans préciser que la casse est de base | « pouvoir de base, aucun add-on requis ; LoPro Chains prolonge seulement le sprint » |
| 03 | The First « seulement avec Shattered Wrist Rocket » sans réserve | Mention [INCERTAIN] (canonique) + ajout en 3.11 |
| 03 | Cas 3 du pre-drop et variantes : « Ghoul avec tokens » classé en casse gratuite | Le Ghoul **franchit** la palette (Kagune Leap), sans la casser ; le vault déclenche son cooldown (batch4_g6) |
| 03 | « si le tile devient infini » (contredit « aucune loop infinie », ch. 4) | « si la loop baissée devient trop forte » |
| 03 | Renvois « chapitre des tiles / des tueurs / macro / entraînement » | Chapitres 4, 7-8, 6, 14 |
| 03 | Conseils absolus (« jamais à l'aveugle », « ne jamais fuir dans une pièce à une seule sortie ») | Formulés avec condition |
| 04 | « Hillbilly bien équipé » (sous-entend un add-on pour casser) | Casse à la tronçonneuse ~1 s de base, sans add-on |
| 04 | « Ghoul avec tokens » en casse gratuite (fiche Shack, 4.5.3) | Franchissement sans casse, cooldown déclenché |
| 04 | The First sans réserve dans 4.5.2 | (INC) ajouté + 4.10 |
| 04 | Windows of Opportunity « valeurs LIVE non relues (INC) » | Tranché : auras palettes / fenêtres / murs cassables 24/28/32 m, aucun cooldown en LIVE ; retiré de 4.10 |
| 04 | Superior Anatomy (SS) et « Rushed Vault » | (VM : onglet 9.0.0 + note 9.0.0) ; vault medium / fast |
| 04 | Renvois « chapitre des cartes » | Chapitre 5 |
| 13 | Anti-camp « taux de base inconnu », « libération non calculable » (13.1.2, E-I04, CRO-8, CRO-9, 13.17) | CONFLICT-003 : +1 c/s ; face camp ≤ 4 m ≈ 22,5 s de jauge (≈ 29,5 s après l'accrochage), 10 m ≈ 37,5 s, 15 m ≈ 79 s, ±10 % |
| 13 | Soigneurs « 2 (wiki) ou 3 (seed) (INC) » ; « soin à 3 non tranché » | 2 max en 1v4 (3 = 2v8), (VM) |
| 13 | Rampement / récupération « [INCERTAIN] », « à tester » (E-A10, SLG-8) | Pas de récupération en rampant sans Tenacity ; 0,7 m/s constant (VM) |
| 13 | Greed / Q1 de l'arbre Palette / distance sûre : comparaison en distance, sans temps immobile dans la porte ; fente « 6 m » prise comme portée utile | Condition en temps avec la porte comprise (renvoi 3.2 / 4.2.2) ; distance sûre ≈ 46-49 m avec fente utile 2-2,5 m (≈ 23 m en hypothèse prudente), moins ≈ 15 m (fast vault) ou ≈ 33 m (vault de palette) |
| 13 | The First sans réserve ; « Ghoul avec tokens » en casse gratuite | [INCERTAIN] ; franchissement sans casse |
| 13 | Renvois « chapitre perks », « chapitre perk deduction » | Chapitres 9 et 10 |
| 13 | Conseils absolus (« ne jamais déclencher vers une dead zone », « ne jamais sprinter vers la trappe ») | Formulés avec condition |
