# Passe 17 (§44) — fact-check final, lot D : chapitres 7, 8, 9, 10

Date : 27/09/2026. Référence : LIVE 10.1.2a ; `kb/guide/CANONICAL_FACTS.md`, `kb/ledgers/AUDIT_PHASE0_ERRATA.md`, `kb/ledgers/CONFLICT_REGISTER.md` (Résolutions du 27/09/2026), `kb/deliverables/PERK_DATABASE.md` v2, fiches `kb/research/batch2-4*.md`.

## Corrections appliquées

| Chapitre | Problème | Correction |
|---|---|---|
| 07_tueurs_A | Casse de palette du Hillbilly sans add-on encore marquée (INC) (tableau récapitulatif, fiche 3, « Points incertains ») | Tranché : casse ~1 s avec le pouvoir de base (« Special-break » 9.5.0 VP ; 1 s SS) ; LoPro Chains permet seulement de continuer le sprint. Mention retirée des points incertains |
| 07_tueurs_A | « Hillbilly LoPro » présenté comme seul cas de casse (typologie mobilité, matrice tile × archétype) | Remplacé par « Hillbilly : casse ~1 s de base, sans s'arrêter avec LoPro » |
| 07_tueurs_A | Conseils absolus (Shape « ne jamais le laisser arriver à 3 m » ; Clown « ne mise jamais ») | Reformulés en conditionnels |
| 08_tueurs_B | Superior Anatomy : les 30/35/40 % LIVE présentés comme PTB | LIVE = prochain vault +30/35/40 % (un seul vault), CD 25 s (VM) ; PTB = actif 10 s, CD 20 s |
| 08_tueurs_B | Help Wanted marquée [INCERTAIN] alors que la valeur LIVE est tranchée (PERK_DATABASE v2, VMS) | LIVE : 1 gen compromis, récupération +25 % 40/50/60 s ; 3 gens / 100-120 s = PTB 10.2.0 |
| 08_tueurs_B | Eruption « −5 % était le PTB 9.2.0 » (formulation imprécise) | « passage à −5 % annoncé pour 9.2.0, reporté (Postponed), jamais LIVE » |
| 08_tueurs_B | Conseil absolu (boîte du Cenobite) | Reformulé (« Éviter de… ») |
| 09_perks_survivant | Knock Out cité comme menace anti-slug (limitation d'aura des survivants au sol), §9.3.7 et archétype 9.4.7 | Supprimé : effet retiré au rework 8.6.0 ; seul effet LIVE = Hindered 5 % 3/4/5 s (> 6 m dans les 6 s après un drop), fiche p94 |
| 09_perks_survivant | Archétype SoloQ différent de PERK_DATABASE v2 §5.9 (Kindred à la place d'Empathy) | Aligné : Will to Live · Windows · Deliverance · Empathy ; Kindred en variante (8/12/16 m LIVE ; 14/15/16 m PTB) |
| 09_perks_survivant | Renvois à PERK_DATABASE « §4 » (les archétypes sont au §5 en v2) | Corrigé en §5 (2 occurrences) |
| 09_perks_survivant | « 81 perks confirmées en tout ou en partie » (la v2 compte 81 + 2 partielles = 83) | Précisé |
| 09_perks_survivant | Five Moves Ahead : « repartir 50 % plus tôt » (LIVE) paraît contredire CANONICAL_FACTS (« drop 50 % plus rapide ») | Précision ajoutée : même effet, texte clarifié en 9.5.0 sans changement de gameplay (note 538, VP) ; conforme à PERK_DATABASE v2 et CONFLICT L2P23-02 |
| 10_perks_tueur | Catégories DR « non publiées » / [INCERTAIN] en bloc (§10.2, combos, limites) | Mis à jour : skill check, Haste de perks, vitesse de vault soumis (VP) ; liste complète dans le manuel en jeu (9.6.1) non transcrite ; régressions non établies |
| 10_perks_tueur | Distortion « non re-vérifiée [INCERTAIN] » (§10.1 et table des incertitudes) | Retiré : fiche re-vérifiée (SS, PERK_DATABASE v2) |
| 10_perks_tueur | Eruption « reporté et annulé » (annulation non sourcée) | « reporté (Postponed), jamais entré en LIVE » |

## Contrôles sans correction

- TR, vitesses et casseurs de palette des chapitres 7-8 conformes à CANONICAL_FACTS (Huntress 7 hachettes, Blight 4,4 m/s, Nurse 3,85 m/s, Good Guy/Hard Hat, Mastermind/Lab Photo, Lich/Vorpal Sword 4 s, gardes du Knight 1,8/5 s, The First [INCERTAIN]).
- Noms d'add-ons des chapitres 7-8 : tous présents dans les pages wiki (`kb/sources/wiki_killers/`) ou, pour le Cenobite, dans `kb/sources/wiki_modules/Datatable_Loadout.lua`.
- Inventaires des chapitres 9 et 10 recoupés par script avec PERK_DATABASE v2 : aucune valeur contradictoire ; toutes les valeurs PTB 10.2.0 sont étiquetées.
- Built to Last 14/12/10 s, NTH 24 m, Eruption −10 %, Pop 20 %, DMS 25/30/35 s, Ruin 100/125/150 %, 2 soigneurs : conformes.
- Renvois « chapitre N » conformes à la table ; un seul `#` par fichier ; tableaux à nombre de colonnes constant ; blocs ``` fermés ; pas de HTML.

## Signalé hors périmètre (non modifié)

- `13_erreurs_arbres.md` l. 640 (SLG-4) : « Knock Out réduit les auras des mourants (SS) » : périmé depuis 8.6.0.
- `CANONICAL_FACTS.md` (Five Moves Ahead) : « le "repartir 50 % plus tôt" = PTB » contredit la note 538 et PERK_DATABASE v2 (même effet LIVE depuis 9.5.0 ; seul le retrait des fenêtres est PTB).
