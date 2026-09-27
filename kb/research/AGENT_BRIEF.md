# Brief commun aux agents de recherche (lots 2 à 4)

Projet : base de connaissances experte et auditée sur Dead by Daylight (voir `prompt.md` à la racine).
Référence de version : **patch LIVE 10.1.2a (17/09/2026)**. Le **PTB 10.2.0** (ouvert 15/09/2026, fermé 21/09/2026, 58 perks modifiées) n'est **pas** LIVE.
Date de travail : 27/09/2026.

## Règles absolues

1. **Ne pas halluciner.** Préférer « information non suffisamment vérifiée » à une valeur inventée.
2. Toute valeur chiffrée doit être étiquetée **LIVE / PTB / OBSOLETE / HISTORICAL / UNCERTAIN**.
3. Ne jamais mélanger silencieusement LIVE, PTB 10.2.0, mode 2v8, anciennes versions.
4. Le texte du guide seed (`kb/seed/*.txt`) est un **brouillon non fiable** : le comparer, ne pas le recopier comme vérité.
   Les corrections déjà prouvées sont dans `kb/seed/audit_phase0.txt` (chapitre « OUTDATED CONTENT REPORT » et « Référence vérifiée »). Ne pas re-« corriger » ce que l'audit a confirmé (ex. phases de crochet 70 s, casse de palette 2,34 s, stun Will to Live 4 s).
5. Distinguer **FACT / DATA / HEURISTIC / EXPERT OPINION / HYPOTHESIS / SITUATIONAL**.
6. Tes notes de valeur (SoloQ, chase…) sont des **HEURISTIC** : le dire.

## Contraintes d'accès (session du 27/09/2026)

- `WebFetch` et `curl` sont **bloqués** pour wiki.gg, fandom, forums.bhvr.com, Steam, reddit, nightlight, timesaver, etc.
- **Seul `WebSearch` fonctionne.** Il renvoie une liste d'URL + un résumé généré à partir des pages. Ce résumé peut mélanger versions (ex. anciennes valeurs de cooldown) : le traiter comme **STRONG_SECONDARY au mieux**, et **UNCERTAIN** si deux résumés se contredisent ou si l'URL n'est pas une source sérieuse.
- Tu n'as pas lu la page elle-même : cite l'URL renvoyée et écris « via résumé de recherche ».
- Astuces de requêtes : `"<Nom exact>" Dead by Daylight perk wiki`, `"<Nom>" 10.1.0 patch notes`, `"<Nom>" PTB 10.2.0`, `site:deadbydaylight.wiki.gg "<Nom>"`.
- Budget : ~1 recherche par élément, 2-3 pour les éléments ambigus/récemment modifiés. Ne pas dépasser ~60 recherches au total.

## Niveaux de confiance (mission §21)

VERIFIED_PRIMARY (patch notes officielles citées) · VERIFIED_MULTI_SOURCE (≥2 sources concordantes dont wiki) · STRONG_SECONDARY (wiki / résumé fiable) · EXPERT_OPINION · COMMUNITY_OBSERVATION · UNCERTAIN · OUTDATED

## Contradictions

Ne pas choisir arbitrairement. Bloc :

```
#### CONFLICT-<LOT>-<nn> : <sujet>
- Source A : ... (URL, date si connue)
- Source B : ...
- Hypothèse : ...
- Résolution : ... | UNRESOLVED
```

## Fin de fichier obligatoire

1. `## Claims` : tableau `| ID | Claim | Source | Patch | Confiance |` pour les valeurs chiffrées importantes.
2. `## Conflits` (blocs ci-dessus).
3. `## Écarts avec le guide seed` : tableau `| Élément | Le guide dit | Vérifié | Verdict (OK / FAUX / IMPRÉCIS / PTB-comme-LIVE / NON VÉRIFIABLE) |`.
4. `## Questions ouvertes`.
5. `## Sources` : liste numérotée `[n] Titre — URL — consulté le 27/09/2026 via WebSearch`.

Langue : **français**, termes de jeu en anglais (perks, add-ons, noms propres). Pas de murs de texte : puces courtes.
Écris ton fichier **progressivement** (crée-le tôt, complète-le au fil de l'eau) pour ne rien perdre si tu es interrompu.
