# Lot 9 — Macro survivant, SoloQ vs SWF, game sense, états de partie, fin de partie

> **Statut : WRITTEN (brouillon), non audité, non sourcé par des experts — rédigé sans accès web le 27/09/2026**
> Référence de version : **LIVE 10.1.2a** (17/09/2026). **PTB 10.2.0 ≠ LIVE** (Survivor Intent System, refonte Abandon/Surrender : PTB uniquement).
> Mission couverte : §12 (macro), §13 (SoloQ vs SWF), §15 (game sense), §16 (états de partie), fin de partie (taxonomie T-J, T-K, T-M, T-N, T-O, T-Q02 à T-Q07), avec exemples au format §31 et arbres au format §32.
> Sources : **uniquement** `kb/seed/audit_phase0.txt` (chiffres FACT), le seed (critiqué), `kb/research/batch2_*`, `batch3_*`, `batch4_*` (exemples). Aucune recherche web, aucune VOD, aucun expert cité.

## 0. Légende et conventions

| Étiquette | Sens dans ce fichier |
|---|---|
| **FACT (audit, <confiance>)** | Valeur de la « Référence vérifiée » ou du registre de patchs de l'audit phase 0. Seuls chiffres présentés comme faits. |
| **CALC** | Arithmétique faite ici **sur des valeurs de l'audit**. Le calcul est sûr ; les hypothèses ajoutées (trajets, distances) sont UNCERTAIN et le sont signalées. |
| **NV** | Mécanique de jeu connue du rédacteur mais **absente de l'audit** : à vérifier en jeu avant de la présenter comme FACT. |
| **HEURISTIC** | Règle pratique du rédacteur (joueur expert, non sourcée). Jamais absolue. |
| **EXPERT OPINION (non sourcée)** | Conclusion de jugement, discutable, non attribuée à qui que ce soit. |
| **SITUATIONAL** | Dépend fortement du contexte ; les conditions sont données. |
| **HYPOTHESIS** | Interprétation plausible, non confirmée. |
| **UNCERTAIN** | Chiffre ou effet non issu de l'audit (seed, lots 2-4 via résumé, mémoire du modèle). |

Conventions :
- **s-surv** = seconde-survivant (1 survivant occupé pendant 1 s). 1 gen solo = **90 s-surv** (FACT audit, VERIFIED_MULTI_SOURCE).
- Chaque conseil suit le gabarit court **Pourquoi / Quand / Contre quoi / Risque / Alternative** (mission §26-27, §49), sous forme condensée quand c'est évident.
- **SoloQ** et **SWF** sont traités dans des blocs séparés, jamais fusionnés. Quand un arbre diffère, la branche est préfixée `[SoloQ]` ou `[SWF]`.

---

## 1. La monnaie de la partie : table de conversion en secondes

Toute la macro se ramène à une comptabilité : **le temps survivant converti en progression, contre le temps tueur converti en états de crochet.**

### 1.1 Valeurs de base (FACT audit)

| Élément | Valeur LIVE | Confiance audit |
|---|---|---|
| Gen solo | 90 charges, +1 c/s → **90 s** | VERIFIED_MULTI_SOURCE |
| Gens requis (4 survivants au départ) | 5 sur 7 ; portes alimentées après (survivants **au départ** + 1) gens | STRONG_SECONDARY |
| Pénalité coop | 85 % / 70 % / 55 % par personne → **~52,9 s / ~42,9 s / ~40,9 s** à 2 / 3 / 4 | STRONG_SECONDARY |
| Skill check | test 1×/s, 8 % de chance ; Great +1 % ; raté **−10 % et 3 s sans progression** | STRONG_SECONDARY |
| Coup de pied (kick) | action 1,8 s ; **−5 %** instantané puis **−0,25 c/s** ; stopper la régression = **réparer 5 %** ; plafond **8 regression events** | VERIFIED_MULTI_SOURCE |
| Phase de crochet | **70 s** par phase (Summoning 100→51 %, Struggle 50→1 %) | VERIFIED_PRIMARY |
| Accrocher / décrocher | 1,5 s / 1 s | STRONG_SECONDARY |
| Portage | 3,68 m/s ; wiggle 16 s cumulées | STRONG_SECONDARY |
| Soin d'un état | 16 s (16 charges) ; Mangled +25 % de durée | STRONG_SECONDARY |
| Auto-soin au Med-Kit | vitesse −33 %, efficacité de l'objet −33 % | STRONG_SECONDARY |
| Deep Wound | timer 20 s ; mending 10 s seul / 6 s par un allié | VERIFIED_PRIMARY |
| Bleed-out | 240 s cumulées | STRONG_SECONDARY |
| Récupération au sol | auto, plafond 95 %, **30,4 s** ; **aucune auto-relève basekit** | VERIFIED_MULTI_SOURCE / VERIFIED_PRIMARY |
| Totem | purification 14 s ; Boon 14 s (28 s sur un Hex), rayon 24 m ; le tueur éteint un Boon en 1 s | STRONG_SECONDARY |
| Porte | ouverture 20 s, progression conservée | STRONG_SECONDARY |
| EGC | 120 s ; moitié de vitesse si un survivant est au sol / accroché / en cage (max 4 min) ; jamais arrêté ; gens bloqués | STRONG_SECONDARY |
| Vitesses | survivant 4,0 m/s ; tueurs 4,6 ou 4,4 m/s (Nurse 3,85 ; Blight 4,4 depuis 9.6.0) | VERIFIED_MULTI_SOURCE |

### 1.2 Conversions dérivées (CALC)

| Question | Calcul | Résultat |
|---|---|---|
| Budget minimal de réparation d'une partie | 5 × 90 | **450 s-surv** (hors toolbox, Great, perks, régression) |
| Coût en s-surv d'un gen à 2 / 3 / 4 | 2 × 52,9 ; 3 × 42,9 ; 4 × 40,9 | **105,9 / 128,6 / 163,6 s-surv** (soit +18 % / +43 % / +82 % de gaspillage vs solo) |
| Valeur d'1 s de chase si les 3 autres réparent chacun un gen différent | 3 × 1/90 | **1/30 de gen par seconde** (le seed disait « 1/3 », FAUX : audit A-267) |
| Même chose si 2 réparent ensemble et 1 « regarde » | 1 × 1,7/90 | **~1/53 de gen par seconde** (la chase rapporte presque 2× moins) |
| Soin altruiste d'un état | 16 s × 2 survivants | **32 s-surv ≈ 0,36 gen** |
| Auto-soin Med-Kit d'un état | 16 / 0,67 (hypothèse : −33 % de vitesse appliqué simplement) | **≈ 24 s** (CALC sur hypothèse ; à vérifier en jeu) |
| Skill check raté | 9 charges perdues + 3 s bloquées | **≈ 12 s solo** perdues |
| Gen frappé laissé seul 60 s | 4,5 c (−5 %) + 60 × 0,25 c | **≈ 19,5 c ≈ 19,5 s de réparation solo** |
| Stopper la régression | 5 % de 90 c | **4,5 s solo** (≈ 2,6 s à 2) |
| Rattrapage en ligne droite, 10 m d'avance | 10 / (4,6 − 4,0) ; 10 / (4,4 − 4,0) | **~16,7 s / 25 s** bruts ; ~16,3 / 21,7 s avec Bloodlust, ~12-13 / 17-18 s avec une fente de 2-2,5 m (fente = COMMUNITY_OBSERVATION) — audit A-054 |
| Portage vers un crochet à 30 m | 30 / 3,68 + 1,5 | **≈ 9,7 s** (distance UNCERTAIN, exemple) |
| Fenêtre pour sauver avant la phase 2 | 1re phase | **70 s** après l'accrochage |
| Rayon où peut se trouver un tueur invisible depuis t secondes | 4,6 × t | 10 s → 46 m ; 20 s → 92 m (borne haute, ligne droite) |

> **HEURISTIC centrale** : une décision macro se juge à son **solde en s-surv** : « combien de secondes de réparation parallèle je crée ou je protège » moins « combien j'en consomme ou j'en offre au tueur ». Une chase finie par un crochet peut être très rentable si 3 réparateurs ont travaillé pendant ce temps (mission §14).

### 1.3 Le « tableau de course » (HEURISTIC)

- Les survivants doivent produire **450 s-surv utiles** de réparation (moins avec toolbox, Great, perks ; plus avec régression, blocages, skill checks ratés).
- Le tueur doit produire **12 événements de crochet** pour 4 kills (3 par survivant ; le 3e accrochage tue : FACT audit) — ou moins s'il laisse des phases expirer (chaque phase dure 70 s) ou s'il exile (The Judgment : l'Exile compte comme un état de crochet, FACT audit VERIFIED_PRIMARY).
- **Indicateur de course** (HEURISTIC, seuils arbitraires, à calibrer par la pratique) : comparer `gens finis / 5` et `états de crochet / 12`. Un écart ≥ 0,25 en faveur du tueur (ex. 1 gen pour 6 états de crochet → 0,2 vs 0,5) signale une partie qui bascule ; au-delà de 0,4 on passe en mode « limiter la casse » (sécuriser 1-2 évasions, trappe).
- Limite de l'indicateur : il ignore la **répartition** des crochets. 6 états répartis 2-2-1-1 ne valent pas 6 états concentrés 3-2-1 (1 mort = −1 réparateur définitif, soit −33 % de débit parallèle). C'est pourquoi le tunneling est rentable pour le tueur.

---
