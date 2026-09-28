# Faits canoniques pour la passe finale de cohérence (27-28/09/2026)

Référence unique pour vérifier que les chapitres ne se contredisent pas. En cas de doute, la source primaire (`kb/sources/patches/official_*.txt`) et `kb/ledgers/AUDIT_PHASE0_ERRATA.md` priment ; puis les fichiers `kb/research/batch*.md` re-vérifiés ; puis `kb/ledgers/CONFLICT_REGISTER.md` (section « Résolutions du 27/09/2026 »).

## Version
- LIVE = **10.1.2a** (édition serveur du 17/09/2026). **PTB 10.2.0** (15-21/09/2026) = NON LIVE (58 perks : 31 survivant, 27 tueur ; Survivor Intent System ; Abandon/Surrender/End Trial). 10.2.0 « TBA ».

## Chapitres (pour les renvois internes)
1 Introduction · 2 Mécaniques · 3 Chase · 4 Loops et tiles · 5 Cartes · 6 Macro/SoloQ/SWF · 7 Tueurs 1-22 · 8 Tueurs 23-44 · 9 Perks survivant · 10 Perks tueur et déduction · 11 Objets · 12 Compétitif · 13 Erreurs et arbres · 14 Entraînement · 15 Annexes.

## Mécaniques clés
- Gen 90 charges = 90 s solo ; coop 85/70/55 % par réparateur ; coup de pied −5 % (7.5.0) ; 8 regression events ; réparer 5 % pour stopper la régression.
- Crochet 70 s/phase (8.2.0) ; auto-décrochage restreint (9.0.0) ; sacrifice immédiat à 2 survivants en laissant passer 2 checks (9.1.0).
- Resolve/anti-camp : 16 m, grâce 7 s, ×1/×2/×4 (0-10/10-20/>20 s) ; +1 c/s nominal, poids de distance ×2,5 (≤4 m) / ×1 (10 m) / ×0,375 (15 m) / ×0 (16 m) ; face camp ≤ 4 m ≈ 22,5 s de jauge (≈ 29,5 s après l'accrochage) (SS, calcul ±10 %) ; rien au-delà de 16 m (proxy camp) ; désactivé portes alimentées.
- Protections de décrochage (10.1.0) : Endurance + 10 % Haste 10 s + Elusive 10 s ; seule l'Elusive disparaît quand les gens sont alimentés.
- **2 soigneurs max en 1v4** (3 = 2v8 uniquement). Soin 16 s.
- Rampement **0,7 m/s** constant ; pas de récupération en rampant (sauf Tenacity) ; récupération au sol à l'arrêt, plafond 95 %.
- Portage 3,68 m/s (SS). Boost au coup 1,8 s (×1,65 : SS).
- Fenêtres : fast 0,5 s / medium 0,9 s / slow 1,5 s ; tueur 1,7 s ; blocage après 3 vaults / 30 s. Palettes : stun 2 s, casse 2,34 s, tronçonneuse 1 s.
- Bloodlust 15/25/35 s → +0,2/0,4/0,6 m/s. Hit cooldown 2,7 s, raté 1,5 s.
- DR 9.6.0 : 100/50/25/12,5/5 % ; add-ons exclus ; skill check, Haste de perks, vitesse de vault soumis ; liste complète non publiée hors jeu.
- Offrandes de royaume : 20 % fixes, doublons non cumulables (9.0.0). Loadout du tueur caché jusqu'à la fin (seule l'identité est révélée).
- Condition de loop sûre : comparer des **temps**, en comptant le temps immobile dans la « porte » (fast vault 0,5 s ≈ 2,3 m à 4,6 m/s ; vault de palette 1,1 s ≈ 5 m).

## Tueurs (valeurs tranchées)
- TR : Hillbilly 40 m, Blight 40 m, Mastermind 40 m, Ghoul 40 m ; Hag 24 m, Pig 24 m, Onryō 24 m, Skull Merchant 24 m, Xenomorph Crawler 24 m. Blight 4,4 m/s (9.6.0). Nurse 3,85 m/s.
- Huntress : **7 hachettes** de base (7.6.0).
- Casse de palette par pouvoir : Hillbilly (tronçonneuse ~1 s, de base) ; Blight (casse = perte de tokens de Rush, 9.6.0/9.6.2) ; Good Guy **seulement avec Hard Hat** en 1v4 ; Mastermind **seulement avec Lab Photo** (Virulent Bound franchit) ; Lich : Mage Hand + **Vorpal Sword = 4 s** ; gardes du Knight 1,8 s / 5 s sur ordre ; The First : seulement avec Shattered Wrist Rocket (INCERTAIN). Autres casseurs cités par le wiki Pallets : Shape, Executioner, Nemesis, Singularity — se reporter aux fiches ch. 7-8.
- Shape (9.2.0/9.2.3) : Evil Incarnate 60 s, Slaughtering Strike 7,5 m/s ; exécution à la main en Evil Incarnate (≤ 3 m, survivant à 2 hook stages, pas sous Endurance).

## Perks (valeurs tranchées fréquemment citées)
- Eruption **−10 %** (changement 9.2.0 « Postponed ») ; Pop réécrit 9.5.0 (+15 % → 20 % du total, fenêtre 35/40/45 s) ; Ruin 100/125/150 %, DMS 25/30/35 s (9.2.0) + recharge 50 s ; Nowhere to Hide **24 m** ; Terminus 35/40/45 s.
- Iron Will 80/90/100 % ; Built to Last **14/12/10 s** ; Vigil 20/25/30 % ; Will to Live 40/50/60 s, stun 4 s ; Off the Record 30/35/40 s avec Endurance (désactivation portes alimentées : INCERTAIN) ; Sprint Burst Haste 2 s ; Adrenaline 4 s ; Deliverance Broken 160/140/120 s ; Windows of Opportunity : pas de cooldown en LIVE ; Five Moves Ahead LIVE (note officielle 9.5.0, art. 538 ; texte clarifié en 9.5.x sans changement de gameplay) = auras des 5 palettes ET fenêtres les plus proches en TR/chase, après un drop de palette on repart 50 % plus tôt, CD 40/35/30 s ; PTB 10.2.0 = palettes seulement.
- Objet : **Anti-Exhaustion Syringe** existe (renommage 9.3.0) ; Fog Vial 4 charges (9.5.0) ; Pharmacy LIVE = ouverture accélérée seulement.

## Étiquettes attendues
[FACT] / [DATA] / [HEURISTIQUE] / [AVIS D'EXPERT] / [HYPOTHÈSE] / [SITUATIONNEL] / [INCERTAIN] ; confiance (VP) (VM) (SS) (INC). Aucune VOD analysée ; aucune stat NightLight lue (403).
