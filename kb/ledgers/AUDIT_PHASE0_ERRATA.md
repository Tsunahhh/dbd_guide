# ERRATA de l'audit phase 0 (`kb/seed/audit_phase0.txt`)

L'audit phase 0 reste la base des chiffres vérifiés, mais les re-vérifications du 27/09/2026 sur pages wiki complètes et notes officielles BHVR ont trouvé les erreurs suivantes. **Quand une ligne figure ici, elle prime sur l'audit.**

| Réf. audit | L'audit dit | Correction | Preuve | Trouvé par |
|---|---|---|---|---|
| Table 1.5 « Destruction instantanée par pouvoir » | Good Guy casse les palettes | En 1v4, le Scamper passe **sous** la palette (1 s) ; il ne la casse qu'avec l'add-on **Hard Hat**. La casse de base est propre au 2v8 (9.4.2) | Page wiki Charles Lee Ray (pouvoir), page Pallets, notes officielles 9.4.2 (536) et 9.5.0 (538) | re-vérif lot 4 g5 |
| Table 1.5 | Lich : Mage Hand + Vorpal Sword = casse instantanée | Avec **Vorpal Sword**, Mage Hand casse une palette abaissée en **4 s** (pas instantané) ; sans l'add-on, Mage Hand relève la palette | Page wiki Vecna | re-vérif lot 4 g5 |
| Registre 9.2.0 | « Pop 20 → 15 %, Eruption 10 → 5 % » (LIVE) | Changements **reportés** (« Postponed ») en LIVE 9.2.0 : Eruption reste −10 %, Pop inchangé jusqu'à sa réécriture 9.5.0 ; Ruin 100/125/150 %, DMS 25/30/35 s, Oppression sont bien LIVE | Note officielle 9.2.0 (523), section finale « Postponed » ; page wiki Eruption | re-vérif lot 3 p90 |
| Table 1.5 (liste) | Mastermind casse les palettes (Virulent Bound) | Mastermind et Good Guy ne détruisent une palette qu'avec un add-on ; à ajouter à la liste des casseurs par pouvoir : Shape, Executioner, Nemesis, Singularity, The First | Page wiki Pallets et pages des tueurs | lot 7 (tiles) |
| A-186 (Outdated report) | « Anti-Exhaustion Syringe » n'existe pas, seul « Anti-Haemorrhagic Syringe » | Le nom LIVE est bien **Anti-Exhaustion Syringe** (renommage en 9.3.0) : le seed avait raison | Note officielle 9.3.0 (529) l. 70-71 ; page wiki de l'add-on | lot 5 (objets) |

| Matrice §1 « Fiches tueurs » (erreurs relevées) | Huntress « 7 hachettes » présenté comme erreur du seed | **7 hachettes de base depuis 7.6.0** : le seed avait raison | Page wiki Anna (The Huntress) ; change log 7.6.0 | re-vérif lot 4 g2 |

| Table 1.5 (liste) | Knight (gardes) = casse instantanée | Les gardes cassent une palette sur ordre en **1,8 s ou 5 s**, pas instantanément ; depuis 10.1.1, une palette baissée tôt force le garde à contourner (abandon si détour > 48 m) | Page wiki Tarhos Kovács ; note 10.1.1 (557) | re-vérif lot 4 g4 |
| Table 1.5 (liste) | Mastermind (Virulent Bound) casse les palettes | Virulent Bound **franchit** la palette sans la casser ; casse seulement avec l'add-on **Lab Photo** | Page wiki Albert Wesker ; note 9.6.0 (544) | re-vérif lot 4 g4 |

## Piège connu du digest wiki (`kb/sources/wiki_perks_digest.md`)
Pour **Dissolution (aussi sur la page du Dredge), Distressing, Do No Harm, Hex: Nothing but Misery, Shattered Hope, Wake Up!, Windows of Opportunity**, la page wiki affiche déjà le texte PTB 10.2.0 sans avertissement : la ligne « LIVE (current) » du digest est en réalité PTB. La valeur LIVE se reconstruit depuis les lignes « was … » de la note officielle 559. Les fiches de lots concernées ont été corrigées par les agents de re-vérification (27/09/2026).
