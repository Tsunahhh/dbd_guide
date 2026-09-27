# OUTDATED_CONTENT_REPORT — contenu faux, obsolète ou trompeur du guide seed

Livrable §51-10. Version 2 (27/09/2026).
- **Partie A** : repris du rapport de phase 0 (vérifié par sources, `kb/seed/audit_phase0.txt` p. 26-28).
- **Partie B** : ajouts des lots 2-4 (voir sections « Écarts avec le guide seed » des fichiers `kb/research/batch*`), consolidés dans `kb/ledgers/BATCH_2_4_SYNTHESIS.md`.

Règle : seules les affirmations **tranchées par une source** figurent ici. Un soupçon n'est pas une correction.

## Partie A — Phase 0

### A1. Faux

| Réf. | Le guide dit | Valeur vérifiée (LIVE 10.1.2a) | Preuve |
|---|---|---|---|
| D-087 | Un gen solo ≈ 80 s | **90 s** (90 charges depuis 6.1.0) | wiki.gg Generators ; notes 6.1.0 |
| A-267 | 1 s de chase ≈ 1/3 de gen | ≈ **1/30 de gen** quand 3 survivants réparent chacun un gen | arithmétique sur 90 s |
| A-074 | Protections de décrochage inactives portes alimentées | Seule **Elusive** disparaît ; Endurance + 10 % Haste 10 s restent | notes 10.1.0 |
| A-283 | Contre un proxy camp, l'anti-camp décrochera l'allié | La jauge ne se remplit pas au-delà de **16 m** | wiki.gg Resolve ; notes 9.3.0 |
| A-190 | Offrandes de royaume cumulables | **20 % fixes**, doublons non cumulables depuis 9.0.0 | notes 9.0.0 |
| A-233 | Hyperfocus échappe aux DR | Les modificateurs de chance de skill check **sont soumis aux DR** (au sein du rôle survivant) ; seuls les add-ons sont exclus | notes 9.6.0 |
| D-092 | Les survivants voient les perks du tueur après la 1re chase | Seule l'**identité** du tueur est révélée ; son loadout reste caché jusqu'à la fin | notes 9.6.0 |
| D-063 | Casse de palette ≈ 2,6 s | **2,34 s** depuis 6.1.0 | notes 6.1.0 |
| A-059 | « Le vault annule l'élan » | Faux pour le **fast vault** (0,5 s), qui garde l'élan | wiki.gg Windows |
| A-054 | 10 m d'avance ≈ 17 s / 25 s | ≈ 16,3 s / 21,7 s avec Bloodlust, sans fente | calcul |
| A-186 | « Anti-Exhaustion Syringe » | N'existe pas : **Anti-Haemorrhagic Syringe** | notes 9.3.0 |
| D-006 | 5 % au coup de pied depuis début 2025 | Depuis **7.5.0 (30/01/2024)** | wiki.gg 7.5.X |
| ch. 09 | « Surge (ex-Jolt) » | **Surge** est le nom d'origine et actuel ; Jolt n'a existé que de 5.3.0 à 7.3.3 | wiki.gg Surge |
| G11 | Nowhere to Hide 18 m en live | **24 m** (18 m = PTB 10.1.0) | notes 10.1.0 |
| A-245 | Vigil 30 % | **20/25/30 %** depuis 10.1.1 | notes 10.1.1 |
| A-237 | Will to Live / Off the Record couvrent « la minute » | WtL 40/50/60 s ; OTR 30/35/40 s | wiki.gg ; notes 9.2.2 |
| Halloween | Licence retirée le 16/01/2026 | **19/01/2026** | annonce officielle |
| G-001 | « Patch 10.1.2a, 26/09/2026 » | 10.1.2a = édition serveur du **17/09/2026** | BHVR KB 558 |

### A2. Données non étayées (à retirer ou dater)

SWF « en vocal » +3 / +8 pts (aucune source) · stats 2026 47 % vs 43 % (relais non vérifiable) · période officielle « oct. 2025 – févr. 2026 » (réelle : sept. 2025 – févr. 2026) · ~70 kill rates NightLight par tueur sans n · « la chase ne sert à rien » (corrélation → causalité) · kill rates de cartes issus de 3 fenêtres mélangées · « Coldwind favorable » · « 1 survivant perdu sur 3 est dans un casier » · « 76 / 80 % des votants BHVR » · build « 82 % d'évasion » (sous-échantillon) · reset MMR 10.1.0 (UNCERTAIN).

### A3. Suspicions infirmées — le seed avait raison (ne pas « corriger »)

70 s par phase de crochet · casse de palette 2,34 s · stun Will to Live 4 s · protections 10 s + Elusive · mending 10 s seul / 6 s par un allié · Boon posable sur un Hex (28 s) · coffre 8 s · 24 charges pour tous les med-kits · MMR fondé aussi sur les actions · Vigil 16 m · Bloodlust perdue en utilisant le pouvoir.

### A4. PTB 10.2.0 présenté comme LIVE

A-223, A-240, A-246, Trio C (ch. 05/06b) ; toute mention du Survivor Intent System comme disponible.

### A5. 2v8 utilisé en 1v4

Good Guy : buffs 9.4.2 propres au 2v8 cités comme counterplay 1v4.

## Partie B — Lots 2-4 (27/09/2026)

Voir `kb/ledgers/BATCH_2_4_SYNTHESIS.md` §« Erreurs du seed ».
