# CONFLICT_REGISTER

Règle (mission §22) : ne jamais choisir arbitrairement. Chaque conflit garde ses deux sources, les dates, une hypothèse et une résolution ou **UNRESOLVED**.
Les 33 conflits de la phase 0 étaient dans des fichiers `research/batch1_*.md` **non conservés** dans le dépôt : seuls ceux cités dans le rapport PDF sont reconstruits ici. Les conflits des lots 2-4 sont dans chaque fichier `kb/research/batch*.md` (section « Conflits ») et résumés en bas de ce registre.

## Conflits de la phase 0 (reconstruits depuis `kb/seed/audit_phase0.txt`)

#### CONFLICT-001 : nombre maximal de soigneurs sur un même survivant
- Source A : wiki.gg Health States — 2 soigneurs max (+2 c/s, sans pénalité).
- Source B : guide seed — 3 soigneurs.
- Hypothèse : le PTB 9.4.0 a testé un soin coop à 3 (CONFLICT-G05) ; le seed a pu reprendre une valeur PTB.
- Résolution : **UNRESOLVED** (à trancher par test en jeu ou patch notes 9.4.0 LIVE).

#### CONFLICT-002 : vitesse de rampement
- Source A : wiki.gg Movement Speeds — 0,7 m/s montant jusqu'à 1,05 m/s selon le temps passé au sol.
- Source B : notes PTB 9.3.0 — 0,7 → 1,05 m/s faisait partie du paquet anti-slug **annulé** (« Reverted the Slugging changes », 9.3.0).
- Hypothèse : le wiki a gardé une valeur PTB.
- Résolution : provisoire **0,7 m/s LIVE**, 1,05 = UNCERTAIN.

#### CONFLICT-003 : taux de base de la jauge anti-camp (Resolve) après 9.3.0
- Source A : wiki.gg Resolve — +1 c/s de base, « significant reduction » en 9.3.0.
- Source B : valeur « ~50 % » de réduction citée sans source primaire lue.
- Résolution : **UNRESOLVED** ; seuls 16 m, grâce 7 s, multiplicateurs ×1/×2/×4 sont VERIFIED_PRIMARY.

#### CONFLICT-G04 : remise à zéro du MMR en 10.1.0
- Source A : all.gg / AddictingGames (23/08/2026) : « all MMR will be reset ».
- Source B : notes officielles 10.1.0 muettes ; CM Mandy (26/08/2026) : « It will take a number of matches to recalculate… ».
- Résolution : **UNCERTAIN** — refonte du calcul VERIFIED_PRIMARY, reset non confirmé par source primaire.

#### CONFLICT-G05 : soin coopératif à 3 (PTB 9.4.0)
- Testé en PTB 9.4.0 ; statut LIVE non confirmé. Lié à CONFLICT-001. **UNRESOLVED**.

#### CONFLICT-G11 : portée de Nowhere to Hide
- Source A : guide seed — 18 m « en live ».
- Source B : notes 10.1.0 LIVE — 24 m autour du gen endommagé (18 m = PTB 10.1.0).
- Résolution : **24 m LIVE** (VERIFIED_PRIMARY). Le seed est faux.

#### CONFLICT-R2-02 : Off the Record donne-t-il l'Endurance ?
- Historique : 9.2.0 retire l'Endurance ; 9.2.2 la rend (durée 30/35/40 s) ; PTB 9.3.0 revert de la perk annoncé.
- Résolution : à trancher par le lot 2 (voir `batch2_*` et résumé ci-dessous).

#### CONFLICT-ST-02 / ST-04 / ST-06 : statistiques
- ST-02 : niveau global de kill rate NightLight ~13-18 pts sous l'officiel.
- ST-04 : pages NightLight incohérentes entre elles.
- ST-06 : sommes kill + escape ≠ 100 % dans les billets officiels (définitions non publiées).
- Résolution : **pas de niveau absolu tiré de NightLight** ; tendances relatives datées seulement.

#### Pain Resonance / Eruption / Pop / Ruin / DMS en 9.2.0 (signalé en OPEN_QUESTIONS R3-11)
- Note amont du seed : nerfs Pain Res / Eruption testés PTB 9.2.0 non passés en LIVE ; Ruin/Pop/DMS changés.
- wiki.gg 9.2.X (lu en phase 0) : les changements Pop, Eruption, Ruin et DMS du PTB 9.2.0 auraient été annulés en LIVE.
- Résolution : à trancher par le lot 3.

## Conflits des lots 2-4 (27/09/2026)

Voir la section « Conflits » de chaque fichier `kb/research/batch2_*`, `batch3_*`, `batch4_*`. Synthèse : `kb/ledgers/BATCH_2_4_SYNTHESIS.md` (écrit à la fin des lots).
