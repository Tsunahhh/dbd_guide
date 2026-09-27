# Lot 4 — Fiches tueurs vue SURVIVANT, groupe 1 (tueurs 1 à 7)

**Couverture web : 0 élément vérifié par recherche / 7 non re-vérifiés (quota WebSearch épuisé)** — les 7 tueurs sont traités ; seules les valeurs reprises de l'audit phase 0 sont vérifiées.

- Périmètre : Trapper, Wraith, Hillbilly, Nurse, Shape, Hag, Doctor.
- Référence : LIVE 10.1.2a (17/09/2026). PTB 10.2.0 non LIVE. Date de travail : 27/09/2026.
- Méthode : WebSearch uniquement (WebFetch bloqué) ; toutes les sources sont lues « via résumé de recherche » → STRONG_SECONDARY au mieux sauf mention.
- Étiquettes : FACT / DATA / HEURISTIC / EXPERT OPINION / SITUATIONAL ; valeurs chiffrées : LIVE / PTB / OBSOLETE / HISTORICAL / UNCERTAIN.
- Seed comparé : `kb/seed/ch8_killers.txt` l. 257-546 ; audit : `kb/seed/audit_phase0.txt`.

> **AVERTISSEMENT DE VÉRIFICATION (bloquant)** — Au lancement de ce lot, le quota WebSearch de la session était **épuisé** (« 200 of 200 WebSearch calls », réponse de l'outil le 27/09/2026 ; les 2 premières requêtes Trapper n'ont renvoyé aucun résultat). **Aucune recherche web n'a donc été faite pour ce lot.**
> - Les seules valeurs confirmées viennent de `audit_phase0.txt` (déjà vérifié en phase 0) : elles sont marquées **[AUDIT]** avec la confiance de l'audit.
> - Valeurs reprises du seed sans vérification : **[SEED-NRV]** = « seed, NON RE-VÉRIFIÉ (quota WebSearch épuisé) », confiance **UNCERTAIN**.
> - Valeurs ajoutées de ma propre connaissance : **[MÉM]** = « connaissance du modèle (antérieure à mi-2026), UNCERTAIN ». Ne pas les promouvoir en LIVE sans recherche.
> - Les parties analytiques (identification, chase, counterplay, erreurs, adaptations) sont des **HEURISTIC** (raisonnement mécanique, non sourcé). Aucun guide expert n'a pu être lu : l'étiquette EXPERT_OPINION n'est **pas** utilisée pour ne pas simuler une source.
> - Les champs « Version » sont limités à ce que l'audit a établi pour 9.0.0 → 10.1.2a.
> - Ce fichier est un **squelette survivant à re-vérifier** (lot à relancer quand WebSearch est disponible) ; voir « Questions ouvertes ».

## Règles transversales (vue survivant, les 7 tueurs)

- FACT [AUDIT] : classes de vitesse 4,6 m/s (115 %) ou 4,4 m/s (110 %) ; Nurse 3,85 m/s (STRONG_SECONDARY) ; classe 4,2 m/s (Evil Within I / Stalker de la Shape) UNCERTAIN [1].
- FACT [AUDIT] : l'identité du tueur est révélée ; son **loadout reste caché** jusqu'à la fin (D-092, notes 9.6.0) [1][4]. → Les sections « Identification » ci-dessous servent à déduire le pouvoir, les add-ons et la stratégie, pas les perks.
- FACT [AUDIT] : protections d'unhook LIVE 10.1.0 = Endurance + 10 % Haste 10 s + Elusive 10 s (pas une fois les gens alimentés) [1]. Pertinent contre les tueurs à pièges (Trapper, Hag) qui piègent le crochet.
- FACT [AUDIT] : Diminishing Returns (9.6.0) sur Powers/Items/Perks/Offerings, **pas sur les add-ons** [1].
- HEURISTIC : les 7 tueurs de ce lot se classent vue survivant en 3 familles : (a) chase M1 + setup (Trapper, Hag, Doctor, Shape) → le temps de setup est la ressource du survivant ; (b) mobilité/coup unique (Hillbilly, Nurse) → LOS et imprévisibilité priment sur les palettes ; (c) furtif/rotation (Wraith, Shape Stalker) → l'info (son, cloche, TR absent) prime.

