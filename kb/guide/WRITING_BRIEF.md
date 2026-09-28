# Brief de rédaction du MASTER GUIDE (v2, 27/09/2026)

Tu rédiges UN chapitre du nouveau guide (livrable §51-1 de `prompt.md`). Le guide est en **français** (termes de jeu en anglais : perks, add-ons, tiles, noms propres). Il remplace l'ancien PDF `DBD_Guide_Avance_2026.pdf` (seed non fiable).

## Sources (dans cet ordre de priorité)
1. `kb/ledgers/AUDIT_PHASE0_ERRATA.md` — corrections qui priment sur tout le reste.
2. Fichiers de recherche **re-vérifiés / audités** de `kb/research/` (batch2-11) et rapports `kb/audit/pass14_*.md` (leurs corrections sont déjà appliquées aux fichiers).
3. Livrables `kb/deliverables/*.md`.
4. `kb/seed/audit_phase0.txt` (tables « Référence vérifiée », registre de patchs) — sauf ce que l'errata corrige.
5. Sources brutes si besoin de vérifier : `kb/sources/` (notes officielles `patches/official_*.txt`, pages wiki).
**N'ajoute aucune valeur chiffrée qui ne figure pas dans ces sources.** Ne recopie jamais le seed.

## Règles de fond (mission)
- Référence : **LIVE 10.1.2a (17/09/2026)**. Toute valeur PTB 10.2.0 est marquée « PTB 10.2.0 — non LIVE ». Pas de 2v8 dans le 1v4.
- Étiquettes visibles quand ce n'est pas évident : **[FACT]**, **[DATA]**, **[HEURISTIQUE]**, **[AVIS D'EXPERT]**, **[HYPOTHÈSE]**, **[SITUATIONNEL]**, et **[INCERTAIN]** pour une valeur non tranchée. Pour un chiffre important, indique sa confiance en abrégé : (VP) note officielle, (VM) wiki + note, (SS) wiki seul, (INC) incertain.
- Profondeur « expert » : pour les sujets importants, **QUOI → POURQUOI → QUAND → COMMENT → CONTRE → CAS D'ÉCHEC → EXERCICE**. Pas de règle absolue ; toujours la condition, le risque et l'alternative. Distinguer SoloQ et SWF.
- Penser en **secondes gagnées/perdues** (1 gen solo = 90 s).
- Format : titres clairs, tableaux, listes, encadrés (`> **À retenir** : …`, `> **Erreur fréquente** : …`, `> **Note avancée** : …`), schémas ASCII en blocs ```, tags de difficulté `[Débutant]` `[Intermédiaire]` `[Avancé]` `[Expert]`. Pas de murs de texte.
- Condenser sans perdre : le guide doit se lire ; les détails exhaustifs restent dans `kb/` → renvoie au fichier source en fin de section (« Détail : `kb/research/batch6_chase_tech.md` »).
- Aucune source inventée. Ne prétends pas avoir analysé une vidéo.

## Forme du fichier
- Fichier `kb/guide/NN_nom.md`, commence par `# N. Titre du chapitre` (un seul `#` par fichier), sections `##`, sous-sections `###`.
- Termine par `## Sources du chapitre` (liste courte : fichiers kb + notes officielles / pages wiki clés).
- Markdown simple (tables pipe, blocs de code) — il sera converti en PDF.
