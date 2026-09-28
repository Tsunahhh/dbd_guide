# Passe 17 (fact-check final) — lot C : chapitres 5, 6, 11, 14

Référence : `kb/guide/CANONICAL_FACTS.md`, `kb/ledgers/AUDIT_PHASE0_ERRATA.md`, `kb/ledgers/CONFLICT_REGISTER.md` (Résolutions du 27/09/2026), `kb/research/batch12_mechanics_open.md`, `batch3_perks_kill_p94.md`, `batch2_*`, `batch4_killers_g1.md`, `batch5_items.md`. Date : 27/09/2026. Pas de commit.

| Chapitre | Problème | Correction |
|---|---|---|
| 06_macro | §6.1 « Au sol » : récupération « à l'arrêt » (SS, supposé) ; pas de vitesse de rampement | À l'arrêt seulement, ramper met en pause (sauf Tenacity) ; rampement 0,7 m/s constant (VM) |
| 06_macro | §6.1 Portage 3,68 m/s [INCERTAIN] | [FACT] (SS), tous tueurs (Résolutions 27/09) |
| 06_macro | §6.4 Resolve : « taux de base non retrouvé [INCERTAIN] », « temps de remplissage non calculable » (tableau, encadré, face camp) | +1 c/s nominal × poids divisés par 2 ; ≈ 22,5 s de jauge / ≈ 29,5 s après accrochage (≤ 4 m), ≈ 37,5 s (10 m), ≈ 79 s (15 m), calcul SS ±10 % |
| 06_macro | §6.4 Slug : « rampement 0,7 ou 1,05 m/s [INCERTAIN] », « ramper suspend probablement » ; durée de relevage [INCERTAIN] | 0,7 m/s constant (1,05 = paquet PTB 9.3.0 annulé) ; récupération en pause en rampant (VM) ; relevage 16 s seul / 8 s à deux, ≈ 0,8 s depuis 95 % (calcul SS) |
| 06_macro | §6.5 « 2 soigneurs selon le wiki, 3 selon une autre source [INCERTAIN] » | 2 max en 1v4 (VM) ; 3 = règle 2v8 |
| 06_macro | Knock Out « auras des mourants réduites à 32/24/16 m » (§6.4, arbre SLUG, HUD §6.7, registre SWF) : effet retiré en 8.6.0 | Supprimé ; effet LIVE = Hindered 5 % 3/4/5 s après drop + course > 6 m (VM) |
| 06_macro | Shape Evil Incarnate « coup unique [INCERTAIN] » (§6.3, §6.5) | Coup unique via Slaughtering Strike (VM, batch4 g1) |
| 06_macro | Valeurs de perks [INCERTAIN] déjà tranchées : Borrowed Time LIVE, Prove Thyself, No Holds Barred, NOED, Terminus (« durée contestée »), Remember Me, Resilience | Valeurs des fiches re-vérifiées (SS/VM) ; Pain Resonance et Terminus → VM ; Off the Record → VM + clause portes [INCERTAIN] |
| 06_macro | Elusive de décrochage et action voyante non signalé | Ajout [INCERTAIN] (CONFLICT-L12-04) ; ouvrir une porte = action voyante (SS) |
| 06_macro | §6.13 limites / questions ouvertes périmées (anti-camp, portage, relevage, soigneurs, rampement, perks) | Réécrites : restent Elusive, Mori de fin, Pain Res, Off the Record |
| 06_macro | Renvois « traitée ailleurs », « chapitre cartes » ; conseil absolu « ne jamais être mis au sol… » | Chapitres 3-4 et 5 ; formulation conditionnelle ; source batch12 ajoutée |
| 05_cartes | Renvois « chapitre sur les tiles / sur les tueurs » | Chapitre 4 ; chapitres 7 et 8 ; ligne vide avant « ## 5.4 » (règle horizontale) |
| 05_cartes | Chiffres (tailles, offrandes 20 %, murs 2,34 s, vitesses) | Conformes, rien à changer |
| 11_objets | Built to Last 14/12/10 s, Anti-Exhaustion Syringe (nom, Visceral, consomme le kit), Fog Vial 4 charges, Pharmacy LIVE | Conformes (VP/VM) |
| 11_objets | DR : liste « [INCERTAIN] » sans ce qui est tranché | Skill check, Haste de perks, vitesse de vault soumis (VP) ; reste de la liste dans le manuel en jeu |
| 11_objets | Renvois « chapitres tueurs » ; « Gardez toujours 1 charge » | Chapitres 7 et 8 ; conseil conditionnel |
| 14_entrainement | DR-18 : « 2 soigneurs selon le wiki, 3 selon le seed [INCERTAIN] » | 2 max en 1v4 (VM) ; 3 = 2v8 |
| 14_entrainement | Gabarit : taux de base anti-camp « inconnu » ; §14.8 idem ; portage [INCERTAIN] ; « efficacité 0,8 vs 1 selon les sources » | Temps calculés (SS, ±10 %) ; portage SS ; efficacité = hypothèse de modèle |
| 14_entrainement | Renvois vers arbres / fiches tueurs / déduction sans numéro de chapitre | Chapitres 13, 7-8, 10 |

Vérifications de forme (4 fichiers) : un seul `#`, blocs ``` fermés, tableaux à colonnes constantes, pas de HTML.

Hors périmètre (non modifié, signalé) : `13_erreurs_arbres.md` l. 38 et 521 (« 2 soigneurs (wiki) ou 3 (seed) », « nombre max non tranché ») et l. 644 (« ramper suspend probablement… à tester ») sont périmés ; `kb/research/batch9_macro.md` garde l'ancien effet Knock Out (l. 280, 396, 686).
