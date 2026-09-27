local str = require("Module:Strings")
local p = {}

local function pwrImg(...)
	result = cstr.empty
	for _, name in ipairs((type(...) == "string" and {...}) or ...) do
		result = result .. aImg("power", name, 128, {rarity = 1}) .. nl
	end
	return '<div class = "flex flexColumn floatRight">' .. result .. '</div>'
end

p.loadoutStrings = {
	unknownDesc = bclr("white", "THE EFFECTS OF THIS PERK ARE UNKNOWN."),
	retiredPerk = bclr("faded jade", "THIS PERK HAS BEEN RETIRED."),
	unusedPerk  = bclr("white", "THIS PERK WAS UNUSED AND UNOBTAINABLE BY PLAYERS."),
	
	activeAbilityButton      = i("Active Ability button"), --C & V (Survivor)
	activeEventAbilityButton = i("Active Event Ability button"), --TAB (Killer), T (Survivor)
	attackButton             = i("Attack button"), --M1 (Killer)
	interactionButton        = i("Interaction button"), --M1 (Survivor), SPACE (Killer)
	powerButton              = i("Power button"), --M2 (Killer)
	secondaryActionButton    = i("Secondary Action button"), --SPACE (Survivor)
	secondaryPowerButton     = i("Secondary Power button"), --LCTRL (Killer)
	sprintButton             = i("Sprint button"), --SHIFT (Survivor)
	useItemButton            = i("Use Item button"), --M2 (Survivor)
	
	bonusBPAfterTrial  = "The bonus " .. iconLink("Bloodpoints") .. " are applied after exiting the Trial.",
	bonusBPDuringTrial = "The bonus " .. iconLink("Bloodpoints") .. " are applied during the Trial.",
	
	boonPerkBottom = i("Only one Totem can be blessed by your " .. b("Boon Perks") .. " at a time and all of their effects are active on the same " .. b("Boon Totem")) .. dot,
	boonPerkTop    = "Press and hold the " .. i("Active Ability button") .. " on a " .. b("Dull or Hex Totem") .. " to bless it and create a " .. ibil(ils.boonTotem) .. dot .. br ..
	"All Survivors within " .. clror("24 metres") .. " hear soft chimes ringing out and benefit from its " .. i("Boon Effects") .. colon,
	
	conspicuousActions     = b(i("Endurance")) .. " is cancelled prematurely when performing a " .. i(link("Conspicuous Action")) .. " of any kind.",
	conspicuousActionsPerk = "#pn is deactivated prematurely when performing a " .. i(link("Conspicuous Action")) .. dot,
	
	exhaustionPerkCanUse          = "#pn can be used while " .. b(i("Exhausted")) .. " and ignores an existing " .. b("Status Effect") .. dot,
	exhaustionPerkNoTrigger       = "#pn does not cause the " .. b(i("Exhausted") .. space .. "Status Effect") .. dot,
	exhaustionPerkNoUse           = "#pn cannot be used while " .. b(i("Exhausted")) .. dot,
	exhaustionPerkNoUseCrows      = "#pn cannot be used while " .. b(i("Exhausted")) .. " or having accrued " .. i(link("AFK Crows")) .. dot,
	exhaustionPerkNoUseNoTrigger  = "#pn cannot be used while " .. b(i("Exhausted")) .. ", but does not cause the " .. b("Status Effect") .. dot,
	exhaustionPerkNoOverride      = "#pn cannot be used to override an existing " .. b(i("Exhausted") .. space .. "Status Effect") .. dot,
	exhaustionPerkNoOverridePause = "#pn cannot be used to override an existing " .. b(i("Exhausted") .. space .. "Status Effect") .. ", but pauses its timer instead.",
	
	hexPerkTrialStart    = "#pn lights a " .. iconLink(ils.hexTotem) .. " at the start of the Trial, cursing Survivors with its " .. i("Hex Effects") .. dot,
	hexPerkTrap          = "#pn lights " .. clror(2) .. space .. iconLink(ils.hexTotems) .. " at the start of the Trial, laying a trap for Survivors.",
	hexPerkFirstTimeHook = "If there is still a " .. iconLink(ils.dullTotem) .. " in the environment, #pn lights a " .. iconLink(ils.hexTotem) .. " whenever you hook a Survivor for the " .. clror("first time") .. ", cursing them with its " .. i("Hex Effects") .. dot,
	hexPerkFooter        = "The " .. i("Hex Effects") .. " persist until the " .. b("Hex Totem") .. " is either blessed or cleansed by a Survivor, disabling it for the remainder of the Trial.",
	
	invocationPerkHeader = "When in the " .. iconLink(ils.basement) .. " near the circle, press the " .. i("Active Ability button") .. " to begin the " .. i("Invocation") .. ", which takes " .. clror("60 seconds") .. " to complete." .. br .. "During an " .. i("Invocation") .. ", your " .. iconLink(ils.aura) .. " is revealed to all other Survivors and they can join in, accelerating the process by " .. clro("+100 %") .. ", if they too have an " .. i("Invocation Perk") .. " equipped, or by " .. clro("+50 %") .. ", if they have not.",
	
	limitedHeader          = biclr("bronze", "Limited Item"),
	limitedHeaderCraftable = i("Craftable " .. bclr("bronze", "Limited Item")),
	limitedHeaderVecna     = biclr("bronze", "Limited") .. space .. biclr("gold", "Vecna Item"),
	limitedFooter          = biclr("bronze", "Limited Items") .. " are consumed on use." .. br .. "They cannot be brought back to the Campfire after a Trial and are removed by The " .. iconLink(ils.entity) .. " upon exiting the Trial.",
	limitedFooterVecna     = biclr("bronze", "Limited") .. space .. biclr("gold", "Vecna Items") .. " are depleted on use but kept on your person." .. br .. "They cannot be brought back to the Campfire after a Trial and are removed by The " .. iconLink(ils.entity) .. " upon exiting the Trial.",
	
	obsessionChancePlus   = b("Increases") .. " your chance of becoming the initial  " .. b(i("Obsession")) .. " by increasing the default value by " .. b("+100 %") .. dot,
	obsessionChanceMinus  = b("Reduces") .. " your chance of becoming the initial  " .. b(i("Obsession")) .. " by reducing the default value by " .. b("-100 %") .. dot,
	obsessionPerkSurvivor = i("The Killer can only be " .. b("obsessed") .. " with one Survivor at a time."),
	obsessionPerkKiller   =	i("You can only be " .. b("obsessed") .. " with one Survivor at a time."),
	
	scourgeHookDefault  = "At the start of the Trial, " .. clror(4) .. space .. b("Hooks") .. " in the environment are changed into " .. bclr("white", "Scourge Hooks") .. colon .. nl ..
		nbullet .. space .. "The " .. iconLink(ils.auras) .. " of these " .. bclr("white", "Scourge Hooks") .. " are highlighted in " .. bclr("white", "white") .. dot,
	scourgeHookUnhooked = "Each time a Survivor is unhooked from a " .. bclr("white", "Scourge Hook") .. ", the following effects apply:",
	scourgeHookHooked   = "Each time a Survivor is hooked on a " .. bclr("white", "Scourge Hook") .. ", the following effects apply:",
	
	multiInstancePerk  = "Survivors can be affected by multiple instances of #pn at a time.",
	singleInstancePerk = "Survivors can only be affected by one instance of #pn at a time.",
	noStackingPerk     = "#pn cannot stack with itself.",

	teamworkPerkHealOnOther = "Whenever you finish healing another Survivor, #pn activates, and both you and the healed Survivor benefit from the following effect:",
	teamworkPerkHealOnYou   = "Whenever another Survivor finishes healing you, #pn activates, and both you and the Survivor who healed you benefit from the following effect:",

	buggedGenerators = "The " .. iconLink(ils.auras) .. " of " .. i("Bugged Generators") .. " are revealed to all Survivors in " .. bclr("yellow", "yellow") .. dot,
	trappedGenerators = "The " .. iconLink(ils.auras) .. " of " .. i("Trapped Generators") .. " are revealed to all Survivors in " .. bclr("yellow", "yellow") .. dot,
	
	compromisedGeneratorHeader = "After performing the " .. i("Damage Generator") .. " action, #pn activates:" ..
				                list("Causes that " .. iconLink(ils.generator) .. " to become a " .. i("Compromised Generator") .. dot,
					            nbullet .. "Up to " .. clror("#limit") .. space .. b("Generators") .. " can be " .. i("Compromised") .. " at a time.",
					            nbullet .. "The " .. iconLink(ils.auras) .. " of all " .. i("Compromised Generators") .. " are highlighted to you in " .. bclr("yellow", "yellow") .. dot),
}
local loadoutStrings = p.loadoutStrings

p.skillDescriptions = {
	--Innate Skills
	["Innate Skill (Trapper)"] = {
		desc =
			"Modifies the " .. i("Bear Trap") .. img("Bear Trap", "32px") .. " with the following effects:" ..
			list(
            	"Causes " .. b("The Trapper") .. " to start the Trial with " .. clror("#capacity") .. space .. iconLink("Bear Traps") .. " equipped.",
            	"Causes an additional " .. clro("#bearTraps") .. space .. b("Bear Traps") .. " to spawn throughout the environment.",
            	b("Increases") .. " the " .. effects("skill", "Innate Skill (Trapper)", ils.haste) .. " after setting a " .. b("Bear Trap") .. " to " .. clro("#haste") .. dot,
            	b("Increases") .. " the Setting speed of " .. b("Bear Traps") .. " by " .. clro("#settingSpeed") .. dot,
            	b("Increases") .. " the Escape time from " .. b("Bear Traps") .. " by " .. clro("#escapeTime") .. dot,
            	"The " .. iconLink(ils.auras) .. " of " .. b("Bear Traps") .. " are only revealed to the other Killer within " .. clro("#auraRange") .. dot,
            	"Neither Killer can be caught in the " .. b("Bear Traps") .. dot)
	},
	["Innate Skill (Wraith)"] = {
		desc =
			"Modifies the " .. i("Wailing Bell") .. img("Wailing Bell", "32px") .. " with the following effects:" ..
			list(
            	b("Reduces") .. " the respective Charge times for " .. i("Cloaking") .. " and " .. i("Uncloaking") .. " by " .. clror("#powerActionTime") .. dot,
            	"While " .. i("Cloaked") .. colon,
            	nbullet .. b("Increases") .. " his Movement speed by " .. clro("#cloakedMovementSpeed") .. dot,
            	nbullet .. b("Increases") .. " the Action speeds for Breaking, Damaging, and Vaulting actions by " .. clro("#cloakedActionSpeed") .. dot)
	},
	["Innate Skill (Hillbilly)"] = {
		desc =
			"Modifies the " .. i("Chainsaw") .. img("Chainsaw", "32px") .. " with the following effects during a " .. i("Chainsaw Sprint") .. colon ..
			list(
            	b("Increases") .. " its Turning speed by " .. clror("#turnSpeed") .. dot,
            	b("Increases") .. " the Cool-down time after colliding with an obstacle by " .. clro("#obstacleCooldown") .. dot)
	},
	["Innate Skill (Nurse)"] = {
		desc =
		"Modifies " .. i("Spencer's Last Breath") .. img("Spencer's Last Breath", "32px") .. " with the following effects:" ..
			list(
				b("Increases") .. " the Open time of " .. i("Blink Attacks") .. " by " .. clror("#lunge(1)") .. dot,
				b("Increases") .. " the Maximum reach of " .. i("Chain Blink Attacks") .. " by " .. clro("#lunge(2)") .. dot,
				"During " .. i("Fatigue") .. colon,
				nbullet .. b("Reduces") .. " its duration after a " .. i("Blink") .. " by " .. clro("#fatigue(1)") .. dot,
				nbullet .. b("Reduces") .. " its duration after a " .. i("Chain Blink") .. " by " .. clro("#fatigue(2)") .. dot,
				nbullet .. b("Reduces") .. " its duration after a missed " .. i("Blink Attack") .. " by " .. clro("#fatigue(3)") .. dot,
				"During the " .. i("Chain Blink Window") .. colon,
				nbullet .. b("Increases") .. " its duration by " .. clro("#CBW(1)") .. dot,
				nbullet .. b("Increases") .. " her Movement speed by " .. clro("#CBW(2)") .. dot)
	},
	["Innate Skill (Huntress)"] = {
		desc =
			"Modifies the " .. i("Hunting Hatchets") .. img("Hunting Hatchets", "32px") .. " with the following effects:" ..
			list(
            	"Causes " .. b("The Huntress") .. " to start the Trial with " .. clror("#capacity") .. space .. iconLink("Hunting Hatchets") .. " equipped.",
            	b("Reduces") .. " the Reload time at " .. iconLink(ils.lockers) .. " by " .. clro("#reload") .. dot,
            	"While winding up a " .. b("Hunting Hatchet") .. colon,
            	nbullet .. b("Increases") .. " her Movement speed by " .. clro("movementSpeed(1)") .. dot,
            	"While out of " .. i("Hunting Hatchets") .. colon,
            	nbullet .. b("Increases") .. " her base Movement speed by " .. clro("#movementSpeed(2)") .. " to " .. clro("#movementSpeed(3)") .. dot)
	},
	["Innate Skill (Spirit)"] = {
		desc =
			"Modifies " .. i("Yamaoka's Haunting") .. img("Yamaoka's Haunting", "32px") .. " with the following effects:" ..
			list(
            	b("Increases") .. " its duration by " .. clror("#powerDuration") .. dot,
            	b("Increases") .. " its Recharge rate by " .. clro("#powerRecharge") .. dot,
            	"During a " .. i("Phase-Walk") .. colon,
            	nbullet .. b("Increases") .. " the Movement-Speed multiplier by " .. clro("#powerSpeed(1)") .. " to " .. clro("#powerSpeed(2)") .. dot)
	},
	["Innate Skill (Legion)"] = {
		desc =
			"Modifies " .. i("Feral Frenzy") .. img("Feral Frenzy", "32px") .. " with the following effects:" ..
			list(
				b("Increases") .. " its duration to " .. clror("#powerDuration") .. dot,
				b("Increases") .. " the limit of " .. i("Feral Slashes") .. " per instance of " .. i("Feral Frenzy") .. " to " .. clro("#feralSlashes") .. dot,
				nbullet .. "The final " .. i("Feral Slash") .. " is lethal and deals double damage.",
				"Limits " .. i(link("Killer Instinct")) .. " to " .. clro("#killerInstinctLimit") .. " active instances at the same time.")
	},
	["Innate Skill (Ghost Face)"] = {
		desc =
			"Modifies " .. i("Night Shroud") .. img("Night Shroud", "32px") .. " with the following effects:" ..
			list(
				b("Increases") .. " its Recharge rate by " .. clror("#rechargeRate") .. dot,
				"While " .. i("Night Shroud") .. " is active:",
				nbullet .. b("Increases") .. " his Movement speed by " .. clro("#speedBonus") .. dot,
				"While " .. i("Stalking") .. colon,
				nbullet .. b("Increases") .. " the Stalk rate by " .. clro("#stalkRate") .. dot,
				i("Marked Survivors") .. colon,
				nbullet .. b("Halves") .. " the duration of their " .. effects("skill", "Innate Skill (Ghost Face)", ils.exposed) .. " to " .. clro("#exposed") .. dot)
	},
	["Innate Skill (Oni)"] = {
		desc =
			"Modifies " .. i("Yamaoka's Wrath") .. img("Yamaoka's Wrath", "32px") .. " with the following effects:" ..
			list(
				b("Increases") .. " its Charge rate by " .. clror("#passiveCharge") .. dot,
				b("Increases") .. " the Absorption range of " .. bclr("bright red", "Blood Orbs") .. " to " .. clro("#absorptionRange") .. dot,
				b("Increases") .. " the power time consumed when hitting a Survivor in Blood Fury by " .. clro("#powerTimeConsumption") .. dot,
				"During a " .. i("Demon Dash") .. colon,
				nbullet .. b("Increases") .. " his Movement speed by " .. clro("#dashSpeed") .. dot,
				nbullet .. b("Increases") .. " its Turning speed by " .. clro("#dashTurn") .. dot,
				nbullet .. b("Reduces") .. " its Activation time by " .. clro("#dashActivation") .. dot)
	},
	["Innate Skill (Deathslinger)"] = {
		desc =
			"Modifies the " .. i("The Redeemer") .. img("The Redeemer", "32px") .. " with the following effects:" ..
			list(
				b("Reduces") .. " its Reload time by " .. clror("#reload") .. dot,
				b("Increases") .. " its Reeling speed by " .. clro("#reeling") .. dot,
				b("Increases") .. " the reload movement speed modifer by " .. clro("#modiferReload") .. dot,
				b("Decreases") .. " its miss cool-down time by " .. clro("#missCooldown") .. dot)
	},
	["Innate Skill (Executioner)"] = {
		desc =
			"Modifies " .. i("Rites of Judgement") .. img("Rites of Judgement", "32px") .. " with the following effects:" ..
			list(
				b("Reduces") .. " its Recharge time by " .. clror("#rechargeTime") .. dot,
				b("Increases") .. " the Lifetime of " .. i("Torment Trails") .. " by " .. clro("#lifetime") .. dot,
				b("Increases") .. " the Length of the " .. i("Attack Trail") .. " by " .. clro("#attackRange") .. dot,
				b("Increases") .. " the Width of the " .. i("Attack Trail") .. " by " .. clro("#attackWidth") .. dot,
				b("Increases") .. " the duration of " .. i(link("Killer Instinct")) .. " by " .. clro("#killerInstinct(1)") .. " to " .. clro("#killerInstinct(2)") .. dot,
				"Grants the ability to kill dying Survivors with " .. i("Final Judgement") .. ", if either of the following applies:",
				nbullet .. "They have been sent to a " .. iconLink(ils.cageOfAtonement) .. space .. clro("#miniMori(1)") .. dot,
				nbullet .. "They have been sent to both a " .. b("Cage of Atonement") .. " and a " .. iconLink(ils.cageOfCorruption) .. space .. clro("#miniMori(2)") .. dot)
	},
	["Innate Skill (Blight)"] = {
		desc =
			"Modifies " .. i("Blighted Corruption") .. img("Blighted Corruption", "32px") .. " with the following effects:" ..
			list(
				b("Increases") .. " the duration of a " .. i("Slam") .. " by " .. clror("#slamDuration") .. dot,
				"During a " .. i("Rush") .. colon,
				nbullet .. b("Increases") .. " his Movement speed by " .. clro("#rushSpeed") .. dot,
				nbullet .. b("Increases") .. " its Turn-Rate sensitivity by " .. clro("#rushTurnRate") .. dot)
	},
	["Innate Skill (Nemesis)"] = {
		desc =
			"Modifies the " .. i("T-Virus") .. img("T-Virus", "32px") .. " with the following effects:" ..
			list(
				b("Increases") .. " the Gain towards " .. i("Mutation Rate") .. " when striking " .. b("Zombies") .. " by " .. clror("#bonusMR") .. dot,
				b("Increases") .. " the duration of the " .. effects("skill", "Innate Skill (Nemesis)", ils.hindered) .. " when striking uninfected Survivors to " .. clro("#hindered") .. dot) ..
			"Modifies the " .. b(link("Zombies")) .. " with the following effects:" ..
			list(
				b("Increases") .. " the amount of Zombies present in the Trial by " .. clro("#zombieCountBonus") .. " to " .. clro("#zombieCountBonusResult") .. dot,
				b("Increases") .. " their movement speed by " .. clro("#zombieMovementSpeedBonus") .. " to " .. clro("#zombieMovementSpeedResult") .. dot,
				b("Increases") .. " their Detection range of nearby Survivors by " .. clro("#losBonus") .. " to " .. clro("#losResult") .. dot,
				b("Increases") .. " the Half-angle of their " .. i("Field of View") .. " by " .. clro("#fovBonus") .. " to " .. clro("#fovResult") .. dot,
				b("Reduces") .. " their Respawn time when disintegrated by " .. clro("#respawn") .. dot)
	},
	["Innate Skill (Mastermind)"] = {
		desc =
			"Modifies the " .. i("Virulent Bound") .. img("Virulent Bound", "32px") .. " with the following effects:" ..
			list(
				b("Increases") .. " the amount of Power Tokens to " .. clror("#tokens") .. dot,
				b("Reduces") .. " its Charge time by " .. clro("#chargeTime") .. dot,
				b("Reduces") .. " its Vaulting time by " .. clro("#boundVault") .. dot,
				b("Reduces") .. " the Cool-down time after missing a " .. i("Bound") .. " by " .. clro("#missedCooldown") .. dot,
				b("Increases") .. " the token recharge time of " .. i("Bound") .. " by " .. clro("#revertBoundRecharge") .. dot)
	},
    ["Innate Skill (Xenomorph)"] = {
    	desc =
    	    "Modifies the " .. i("Hidden Pursuit") .. img("Hidden Pursuit", "32px") .. " with the following effects:" ..
    	    list(
    		    "Causes " .. iconLink("Remote Flame Turrets") .. " to self-destruct after knocking you out of " .. i("Crawler Mode") .. dot,
    		    --nbullet .. "This effect is copied from the " .. iconLink("Ripley's Watch") .. space .. b("Add-on") .. dot,
    		    b("Increases") .. " the Charge rate of " .. i("Crawler Mode") .. " while outside the Tunnels by " .. clror("#effect") .. dot,
    		    --nbullet .. "This effect is copied from the " .. iconLink("Ovomorph") .. space .. b("Add-on") .. dot,
    		    "Survivors hit with a successful " .. i("Tail Attack") .. " suffer from the " .. effects("addon", "Kane's Helmet", ils.mangled) .. " for " .. clror("#mangled") .. dot,
    		    --nbullet .. "This effect is copied from the " .. iconLink("Kane's Helmet") .. space .. b("Add-on") .. dot,
    		    "Grants a " .. clror("#haste") .. space .. effects("addon", "Parker's Headband", ils.haste) .. " for " .. clro("#durationHaste") .. " after exiting the Tunnels.")
    		    --nbullet .. "This effect is copied from the " .. iconLink("Parker's Headband") .. space .. b("Add-on") .. dot)
    },
    ["Innate Skill (Good Guy)"] = {
    	desc =
    	    "Modifies the " .. i("Playtime's Over") .. img("Playtime's Over", "32px") .. " with the following effects:" ..
    	    list(
    	    	b("Increases") .. space .. i("Slice & Dice") .. "'s attack duration by " .. clror("#sliceAndDiceAttackDurationBonus") .. dot,
    	    	b("Increases") .. space .. i("Slice & Dice") .. "'s turn speed by " .. clro("#sliceAndDiceTurnSpeedBonus") .. dot,
    	    	b("Increases") .. space .. i("Hidey-Ho") .. "'s duration by " .. clro("#hideyhoDurationBonus") .. dot,
    	    	"Performing a " .. i("Scamper") .. " under a Pallet breaks the Pallet" .. dot,
    	    	b("The Good Guy") .. " can see " .. i("Illusory Footfalls") .. " around Survivors" .. dot)
    },
	["Innate Skill (Dark Lord)"] = {
		desc =
			"Modifies " .. i("Vampiric Shift") .. img("Vampiric Shift", "32px") .. " with the following effects:" ..
			list(
				b("Reduces") .. " the Cool-down rate of the " .. i("Shapeshift") .. " ability by " .. clror("#shapeshift") .. dot,
				"In " .. i("Vampire Form") .. colon,
				nbullet .. b("Reduces") .. " the Cool-down rate of " .. i("Hellfire") .. " by " ..  clro("#hellfire") .. dot,
				"In " .. i("Wolf Form") .. colon,
				nbullet .. b("Increases") .. " the number of " .. i("Pounces") .. " to " ..  clro("#pounce") .. dot,
				"In " .. i("Bat Form") .. colon,
				nbullet .. b("Increases") .. " the maximum range of the " .. i("Teleport") .. " ability by " ..  clro("#teleport") .. dot)
	},
	--Reveal Skills
	["Reveal Skill (Brute)"] = {
		desc =
			"Whenever you perform the " .. i("Damage Generator") .. " action, you benefit from the following effect:" ..
			list(
				b("Increases") .. " the Aura-reveal range of the accompanying " .. effects("skill", "Reveal Skill (Brute)", ils.revealed) .. " by " .. clror("#bonusRange") .. dot) ..
				"This " .. i("Skill") .. " only affects " .. b("The Brute") .. dot
	},
	["Reveal Skill (Enforcer)"] = {
		desc =
			"Whenever you perform the " .. i("Damage Generator") .. " action, you benefit from the following effect:" ..
			list(
				b("Increases") .. " the Aura-reveal duration of the accompanying " .. effects("skill", "Reveal Skill (Enforcer)", ils.revealed) .. " by " .. clror("#bonusDuration") .. dot) ..
				"This " .. i("Skill") .. " only affects " .. b("The Enforcer") .. dot
	},
	["Reveal Skill (Escapist)"] = {
		desc =
			list("The " .. iconLink(ils.auras) .. " of " .. iconLink(ils.pallets) .. " and " .. iconLink(ils.windows) .. " are revealed to you within " .. clror("#range") .. dot)
	},
	["Reveal Skill (Fearmonger)"] = {
		desc =
			"Whenever a " .. iconLink(ils.generator) .. " is completed, you benefit from the following effect:" ..
			list(
				b("Increases") .. " the Aura-reveal duration of the accompanying " .. effects("skill", "Reveal Skill (Fearmonger)", ils.revealed) .. " by " .. clror("#bonusDuration") .. dot) ..
				"This " .. i("Skill") .. " only affects " .. b("The Fearmonger") .. dot
	},
	["Reveal Skill (Guide)"] = {
		desc =
			list(
				"The " .. iconLink(ils.auras) .. " of whichever " .. clror("#generators") .. space .. iconLink(ils.generators) .. " are currently in closest proximity to one another are revealed to you.",
				"Succeeding a " .. iconLink(ils.skillCheck) .. " reveals the Killer's aura within " .. clro("#range(1)") .. " for " .. clro("#duration") .. dot,
				"The Auras of unfinished " .. b("Generators") .. " are revealed to you within " .. clro("#range(2)") .. dot)
	},
	["Reveal Skill (Medic)"] = {
		desc =
			list("The " .. iconLink(ils.auras) .. " of Survivors in the " .. iconLink(ils.injuredState) .. " are revealed to you within " .. clror("#range") .. dot)
	},
	["Reveal Skill (Scout)"] = {
		desc =
			list("The " .. iconLink(ils.aura) .. " of either Killer performing the " .. i("Break or Damage") .. " action is revealed to you for " .. clror("#duration") .. dot)
	},
	["Reveal Skill (Shadow)"] = {
		desc =
			"Whenever the other Killer starts a " .. i("Chase") .. " with a Survivor, you benefit from the following effect:" ..
			list(
				b("Increases") .. " the Aura-reveal duration of the accompanying " .. effects("skill", "Reveal Skill (Shadow)", ils.revealed) .. " by " .. clror("#bonusDuration") .. dot) ..
				"This " .. i("Skill") .. " only affects " .. b("The Shadow") .. dot
	},
   ["Reveal Skill (Torchbearer)"] = {
        desc =
            list("Reveals chased Survivor auras within " .. clror("#chasedSurvivorAuraRange") .. dot,
            	"Shining your Flashlight at the Killer for " .. clror("#flashlightShineTime") .. " reveals the Killer's aura for " .. clro("#flashlightShineAuraTime") .. dot)
   },
	--Team Skills
	["Team Skill (Brute)"] = {
		desc =
			"Whenever you perform the " .. i("Break") .. " action while this " .. i("Skill") .. " is active, the following effects apply:" ..
			list(
				b("Increases") .. " the Breaking speed by " .. clror("#breakingSpeed") .. dot,
				"Damaging a Generator will highlight it in " .. bclr("yellow", "yellow") .. dot .. " When the highlighted Generator is repaired past its regression point, the Generator explodes, triggering a loud noise notification and causing any Survivor interacting with the Generator to be afflicted by " .. clro("#generatorHinderedStrength") .. space .. states(ils.hindered) .. " for " .. clro("#generatorHinderedDuration") .. dot) ..
			"This " .. i("Skill") .. " has a cool-down of " .. clro("#cooldown") .. " after use."
	},
	["Team Skill (Enforcer)"] = {
		desc =
			"Grants a " .. clror("#haste") .. space .. effects("skill", "Team Skill (Enforcer)", ils.haste) .. " while chasing an injured Survivor and this " .. i("Skill") .. " is active." .. nlp ..
			"Causes a Survivor hit by the Killer to receive the " .. i("Enforcer's Mark") .. " for " .. clro ("#markDuration") .. colon ..
			list(
				"Their " .. iconLink(ils.aura) .. " is revealed to you and your teammate for " .. clro("#auraDuration") .. " every " .. clro("#auraRevealDelayTime"),
				"Downing the Survivor consumes the " .. i("Mark") .. " and " .. b("increases") .. " the range of the other Killer's " .. i("Lunge Attack") .. " by " .. clro("#lungeRange") .. " for " .. clro("#lungeDuration") .. dot) ..
			"This " .. i("Skill") .. " has a cool-down of " .. clro("#cooldown") .. " after use."
	},
	["Team Skill (Escapist)"] = {
		desc =
			"Creates a " .. i("Sprint Radius") .. " of " .. clror("#radius") .. " around " .. b("The Escapist") .. dot .. nlp ..
			"Passively charges an " .. i("Active Ability") .. " over the course of " .. clro("#chargeTime") .. dot .. br ..
			"While charged, press the " .. loadoutStrings.activeAbilityButton .. " to trigger the " .. i("Silent Rush Bonus") .. " ability for all Survivors inside the " .. i("Sprint Radius") .. colon ..
			list(
				"Grants a " .. clro("#haste") .. space .. effects("skill", "Team Skill (Escapist)", ils.haste) .. " for " .. clro("#durationHaste") .. dot,
				nbullet .. "This effect does not trigger on Survivors already suffering from " .. b(i("Exhausted")) .. dot,
				nbullet .. "Inflicts the " .. effects("skill", "Team Skill (Escapist)", ils.exhausted) .. " for " .. clro("#exhausted") .. dot,
				b("Suppresses") .. " all noises related to " .. i("Rushed") .. " actions and their accompanying " .. i(link("Loud Noise Notifications")) .. " for " .. clro("#effectDuration") .. dot) ..
			"While charged, if you are in the " .. iconLink(ils.dyingState) .. " and have recovered to " .. clro("#recovery") .. ", consume the " .. i("Active Ability") .. " for the following effect:" ..
			list("Unlocks the " .. i("Self-Recovery") .. " ability, allowing you to fully recover from the " .. i("Dying State") .. dot) ..
			"The " .. i("Active Ability") .. " automatically recharges after use."
	},
	["Team Skill (Fearmonger)"] = {
		desc =
			"Grants a " .. clror("#haste") .. space .. b(i("Haste") .. space .. "Status Effect") .. " while you remain unseen." .. nlp ..
			"Whenever you injure a Survivor, up to " .. clro("#maxSurvivorScreamAmount") .. " within " .. clro("#survivorScreamRange") .. " of your location scream and reveal their auras to your teammate for " .. clro("#auraRevealTime") .. dot .. br ..
			"This " .. i("Skill") .. " has a cool-down of " .. clro("#cooldown") .. " after use."
	},
	["Team Skill (Guide)"] = {
		desc =
			"While repairing a " .. b("Generator") .. ", you benefit from the following primary effects:" ..
			list(
				"The " .. iconLink(ils.auras) .. " of yourself and the " .. b("Generator") .. " are revealed to all other Survivors.",
				b("Reduces") .. " the Charge time of the " .. i("Trap Generator") .. " ability.") ..
			"While opening an " .. iconLink(ils.exitGate) .. ", you benefit from the following secondary effects:" ..
			list(
				b("Increasing") .. " the Opening speed by " .. clro("#gate(1)") .. dot,
				"Your Aura is revealed to all other Survivors within " .. clro("#gate(2)") .. dot) ..
			"Passively charges an " .. i("Active Ability") .. " over the course of " .. clro("#ability(1)") .. dot .. br ..
			"While charged, press the " .. loadoutStrings.activeAbilityButton .. " while standing next to a " .. iconLink(ils.generator) .. " to trigger the " .. i("Trap Generator") .. " ability:" ..
			list(
				"Installs a trap on that " .. b("Generator") .. " that lasts for " .. clro("#ability(2)") .. dot,
				"The Aura of the " .. i("Trapped Generator") .. " is revealed to all Survivors and highlighted in " .. bclr("yellow", "yellow") .. dot,
				"When either Killer attempts to damage the " .. i("Trapped Generator") .. ", the trap trips half-way through the interaction:",
				nbullet .. "Causes the Killer to be stunned for " .. clro("#trap(1)") .. dot,
				nbullet .. "Causes all Players within " .. clro("#trap(2)") .. " to be blinded.") ..
			"The trap is deactivated after its countdown has elapsed or it is tripped." .. nlp ..
			"While charged, if you are in the " .. iconLink(ils.dyingState) .. " and have recovered to " .. clro("#recovery") .. ", consume the " .. i("Active Ability") .. " for the following effect:" ..
			list("Unlocks the " .. i("Self-Recovery") .. " ability, allowing you to fully recover from the " .. i("Dying State") .. dot) ..
			"The " .. i("Active Ability") .. " automatically recharges after use."
	},
	["Team Skill (Medic)"] = {
		desc =
			"Creates a " .. i("Vitality Radius") .. " of " .. clror("#radius") .. " around " .. b("The Medic") .. br ..
			"Grants the following effects to all Survivors inside the " .. i("Vitality Radius") .. colon ..
			list(
				b("Increases") .. " the Healing speed by " .. clro("#healingSpeed") .. dot,
				b("Reduces") .. " the volume of " .. i("Grunts of Pain") .. " by " .. clro("#volumeReduction") .. dot) ..
			"While healing a Survivor, their " .. iconLink(ils.aura) .. " is revealed to all other Survivors." .. nlp ..
			"Passively charges an " .. i("Active Ability") .. " over the course of " .. clro("#chargeTime") .. dot .. br ..
			"While charged, press the " .. loadoutStrings.activeAbilityButton .. " to trigger the " .. i("Heal Bonus") .. " ability:" ..
			list(
				"Grants an immediate Healing bonus equivalent to " .. clro("#healingBonus") .. " of a full Health State.",
				nbullet .. "This effect extends to all other Survivors inside the " .. i("Vitality Radius") .. " upon activation.") ..
			"While charged, if you are in the " .. iconLink(ils.dyingState) .. " and have recovered to " .. clro("#recovery") .. ", consume the " .. i("Active Ability") .. " for the following effect:" ..
			list("Unlocks the " .. i("Self-Recovery") .. " ability, allowing you to fully recover from the " .. i("Dying State") .. dot) ..
			"The " .. i("Active Ability") .. " automatically recharges after use."
	},
	["Team Skill (Scout)"] = {
		desc =
			"Creates a " .. i("Sneak Radius") .. " of " .. clror("#radius") .. " around " .. b("The Scout") .. br ..
			"Grants the following effects to all Survivors inside the " .. i("Sneak Radius") .. colon ..
			list(b("Increases") .. " the Crouching speed by " .. clro("#crouchingSpeed") .. dot) ..
			"Whenever " .. b("The Scout") .. " has " .. i("Line of Sight") .. " to a Killer that is within " .. clro("#los") .. " of their location, the following effect applies:" ..
			list("The " .. iconLink(ils.aura) .. " of that Killer is revealed to all Survivors.") ..
			"Passively charges an " .. i("Active Ability") .. " over the course of " .. clro("#chargeTime") .. dot .. br ..
			"While charged, you benefit from the following effect:" ..
			list("The Auras of all " .. iconLink(ils.pallets) .. " in the environment either dropped or broken are revealed to you.") ..
			"While charged and standing next to a highlighted " .. b("Pallet") .. ", press and hold the " .. loadoutStrings.activeAbilityButton .. " for " .. clro("#effectDuration") .. " to use the " .. i("Restore Pallet") .. " ability:" ..
			list(b("Restores") .. " dropped or broken " .. b("Pallets") .. " to the upright position.") ..
			"While charged, if you are in the " .. iconLink(ils.dyingState) .. " and have recovered to " .. clro("#recovery") .. ", consume the " .. i("Active Ability") .. " for the following effect:" ..
			list("Unlocks the " .. i("Self-Recovery") .. " ability, allowing you to fully recover from the " .. i("Dying State") .. dot) ..
			"The " .. i("Active Ability") .. " automatically recharges after use."
	},
	["Team Skill (Shadow)"] = {
		desc =
			"After sending a Survivor to a " .. iconLink(ils.cageOfCorruption) .. ", you benefit from the following primary effect:" ..
			list(
				"Grants the " .. effects("skill", "Team Skill (Shadow)", ils.undetectable) .. " for " .. clror("#undetectable") .. dot,
				nbullet .. "Incurs a cool-down of " .. clro("#cooldown(1)") .. " afterwards.") ..
			"While within " .. clro("#range") .. " of the other Killer with this " .. i("Skill") .. " on cool-down, you benefit from the following secondary effects:" ..
			list(
				"Grants a " .. clro("#haste") .. space .. effects("skill", "Team Skill (Shadow)", ils.haste) .. dot,
				b("Reduces") .. " the cool-down duration of this " .. i("Skill") .. " by " .. clro("#cooldown(2)") .. dot,
				nbullet .. "This effect can only be triggered once per active cool-down.")
	},
    ["Team Skill (Torchbearer)"] = {
    	desc =
    	    "Passively charges an " .. i("Active Ability") .. " over the course of " .. clror("#chargeTime") .. br ..
    	    list(
    	    "While charged, grants the ability to drop a " .. b("Flashbang") .. dot,
    	    "After dropping the " .. b("Flashbang") .. " there is a " .. clro("#cooldown") .. " cool-down before the " .. i("Active Ability") .. " starts passively charging again. This cool-down cannot be accelerated by " .. iconLink(ils.cageOfCorruption) .. " rescues.") ..
			"While charged, if you are in the " .. iconLink(ils.dyingState) .. " and have recovered to " .. clro("#recovery") .. ", consume the " .. i("Active Ability") .. " for the following effect:" ..
			list("Unlocks the " .. i("Self-Recovery") .. " ability, allowing you to fully recover from the " .. i("Dying State") .. dot) ..
			"The " .. i("Active Ability") .. " automatically recharges after use."
	},
	--Unlockable Skills
	["Unlockable Skill (Escapist)"] = {
		desc =
			"After being sent to a " .. iconLink(ils.cageOfCorruption) .. " for the first time, this " .. i("Skill") .. " unlocks for the remainder of the Trial." ..
			list("Grants the " .. i("Self-Heal") .. " ability at " .. clror("#healingSpeed") .. " of the default Healing speed.")
	},
	["Unlockable Skill (Guide)"] = {
		desc =
			"After being sent to a " .. iconLink(ils.cageOfCorruption) .. " for the first time, this " .. i("Skill") .. " unlocks for the remainder of the Trial." .. nlp ..
			"After repairing a " .. iconLink(ils.generator) .. " for the equivalent of " .. clror("#progression") .. " of Progression, a listening device is installed to it with a countdown of " .. clro("#duration") .. colon ..
			list("Reveals the " .. iconLink(ils.aura) .. " of any Killer coming within " .. clro("#range") .. " of the " .. i("Bugged Generator") .. " to all Survivors.") ..
			"The listening device is deactivated after its countdown has elapsed or the " .. i("Bugged Generator") .. " is damaged." .. br ..
			"Installing a listening device to an already " .. i("Bugged Generator") .. " replaces the old one and resets its countdown." .. nlp ..
			"The Aura of the " .. i("Bugged Generator") .. " is revealed to all Survivors and highlighted in " .. bclr("yellow", "yellow") .. dot
	},
	["Unlockable Skill (Medic)"] = {
		desc =
			"After being sent to a " .. iconLink(ils.cageOfCorruption) .. " for the first time, this " .. i("Skill") .. " unlocks for the remainder of the Trial." .. nlp ..
			"While in the " .. iconLink(ils.injuredState) .. comma .. b("The Medic") .. " benefits from the following effects:" ..
			list(
				b("Suppresses") .. " the creation of " .. iconLink(ils.scratchMarks) .. dot,
				"Their " .. iconLink(ils.aura) .. " is revealed to all other Survivors.")
	},
	["Unlockable Skill (Scout)"] = {
		desc =
			"After being sent to a " .. iconLink(ils.cageOfCorruption) .. " for the first time, this " .. i("Skill") .. " unlocks for the remainder of the Trial." .. 
			list(
				b("Permanently increases") .. " the Walking speed of " .. b("The Scout") .. " by " .. clror("#speed") .. dot, 
				b("Suppresses") .. " their " .. i("Grunts of Pain") .. " while in the " .. iconLink(ils.injuredState) .. dot,
				b("Suppresses") .. " the urge to scream from any cause" .. dot)
	},
	["Unlockable Skill (Torchbearer)"] = {
		desc =
			"After being sent to a " .. iconLink(ils.cageOfCorruption) .. " for the first time, this " .. i("Skill") .. " unlocks for the remainder of the Trial." .. 
			list(
				"Grants the " .. states(ils.endurance) .. " for " .. clror("#enduranceTimeCageRescue") .. " to injured Survivors that rescue you from " .. iconLink(ils.cageOfCorruption) .. dot, 
				"Grants the " .. states(ils.endurance) .. " for " .. clro("#enduranceTimeDyingHeal") .. " to Survivors you heal from the " .. b("Dying State"))
	},
}

----------------------------------------------------     █████╗ ██████╗ ██████╗        ██████╗ ███╗   ██╗███████╗    ----------------------------------------------------
----------------------------------------------------    ██╔══██╗██╔══██╗██╔══██╗      ██╔═══██╗████╗  ██║██╔════╝    ----------------------------------------------------
----------------------------------------------------    ███████║██║  ██║██║  ██║█████╗██║   ██║██╔██╗ ██║███████╗    ----------------------------------------------------
----------------------------------------------------    ██╔══██║██║  ██║██║  ██║╚════╝██║   ██║██║╚██╗██║╚════██║    ----------------------------------------------------
----------------------------------------------------    ██║  ██║██████╔╝██████╔╝      ╚██████╔╝██║ ╚████║███████║    ----------------------------------------------------
----------------------------------------------------    ╚═╝  ╚═╝╚═════╝ ╚═════╝        ╚═════╝ ╚═╝  ╚═══╝╚══════╝    ----------------------------------------------------

p.addonDescriptions = {
    ---------------------------
    --- FIRECRACKER ADD-ONS ---
    ---------------------------
    
    ["Gum"] = {
        desc = 
            "Unknown Description."
    },
    ["Inhaler"] = {
        desc = 
            "Unknown Description."
    },
    ["Black Powder"] = {
        desc = 
            "Unknown Description." ..
            list(b("Increases") .. " the Detonation radius by " .. clror("+5 metres") .. dot)
    },
    ["Buck Shot"] = {
        desc = 
            "Unknown Description." ..
            list(
            	b("Increases") .. " the Blindness duration by " .. clror("+1.5 to 2.5 seconds") .. dot,
            	b("Increases") .. " the duration of the " .. states(ils.deafened) .. " by " .. clro("+0 to 2 seconds") .. dot)
    },
    ["Flash Powder"] = {
        desc = 
            "Unknown Description." ..
            list(b("Increases") .. " the Blindness duration by " .. clror("+10 %") .. dot)
    },
    ["Gun Powder"] = {
        desc = 
            "Unknown Description." ..
            list(b("Increases") .. " the Blindness duration by " .. clror("+20 %") .. dot)
    },
    ["Large Pack"] = {
        desc = 
            "Unknown Description." .. 
            list(b("Increases") .. " the number of available Uses by " .. clror("+2") .. dot)
    },
    ["Long Fuse"] = {
        desc = 
            "Unknown Description." ..
            list(b("Increases") .. " the Detonation delay by " .. clror("+1.5 seconds") .. dot)
    },
    ["Magnesium Powder"] = {
        desc = 
            "Unknown Description." ..
            list(b("Increases") .. " the Detonation radius by " .. clror("+2.5 metres") .. dot)
    },
    ["Medium Fuse"] = {
        desc = 
            "Unknown Description." ..
            list(b("Increases") .. " the Detonation delay by " .. clror("+0.75 seconds") .. dot)
    },
	
	-------------------
    --- KEY ADD-ONS ---
    -------------------
	
	["Blood Amber"] = {
        desc = 
            quote("A blood-red amber striped with black veins." .. br .. "The amber is warm to the touch.") .. nlp ..
            "Modifies the " .. b("Key") .. " with the following effects:" .. 
            list(
            	b("Reduces") .. " its Aura-reveal time by " .. clror("#aura") .. dot,
            	b("Reduces") .. " its Charges by " .. clro("#charges") .. dot) ..
            "While using the " .. b("Key") .. ", the following effects apply:" ..
            list(
            	"The " .. iconLink(ils.aura) .. " of the Killer is revealed to you.",
            	"Your Aura is revealed to the Killer.")
    },
    ["Braided Bauble"] = {
        desc = 
            quote("Four thin but sturdy cords, all masterfully wrapped around one another.") .. nlp ..
			"Modifies the " .. b("Key") .. " with the following effect:" .. 
			list(b("Increases") .. " its Aura-reading duration by " .. clror("#effect") .. dot)
    },
    ["Friendship Charm"] = {
        desc = 
            quote("Someone's thumb has worn off the initials once carved into it.") .. nlp ..
			"Modifies the " .. b("Key") .. " with the following effect:" .. 
			list(b("Increases") .. " its Charges by " .. clror("#charges") .. dot)
    },
    ["Gold Token"] = {
        desc = 
            quote("A gold token with a dull appearance." .. br .. "Both faces are smooth and void of any inscriptions.") .. nlp ..
            "While channelling the " .. b("Key") .. ", you benefit from the following effect:" .. 
			list(
				"The " .. iconLink(ils.auras) .. " of other Survivors within " .. clror("#range") .. " are revealed to you.",
				nbullet .. "This effect does not stack with the same one applied by a second " .. b("Key Add-on") .. ", only the largest range will be used.")
    },
    ["Milky Glass"] = {
        desc = 
            quote("This opaque piece of glass emits a dull vibrating noise." .. br ..  "Channels the energy of the Black Fog.") .. nlp .. 
            "Modifies the " .. b("Key") .. " with the following effect:" .. 
            list("Opening the " .. iconLink(ils.hatch) .. " no longer consumes the " .. b("Key") .. dot) ..
            "#name is consumed after triggering its effect."
    },
    ["Prayer Beads"] = {
        desc = 
            quote("A chain of matte beads of various sizes used in praying ritual.") .. nlp ..
            "Modifies the " .. b("Key") .. " with the following effect:" .. 
			list(b("Increases") .. " its Charges by " .. clror("#charges") .. dot)
    },
    ["Shrill Whistle"] = {
        desc = 
            quote("The high-pitched scream gives a sense of urgency to everything.") .. nlp ..
			"Modifies the " .. b("Key") .. " with the following effect:" .. 
			list(b("Reduces") .. " the time it takes to channel the " .. b("Key") .. " by " .. clror("#effect") .. dot)
    },
    ["Unique Wedding Ring"] = {
        desc = 
            quote("An engraved wedding ring that emerged from the Fog and resonates with an indescribable and incomprehensible energy.") .. nlp ..
            "Modifies the " .. b("Key") .. " with the following effects:" .. 
            list(
            	"The " .. iconLink(ils.aura) .. " of the " .. ibil("Obsession") .. " is permanently revealed to you.",
            	"Your Aura is permanently revealed to the " .. b(i("Obsession")) .. dot) ..
            "#name applies its effects passively and does not require actively using the " .. b("Key") .. dot .. br ..
            loadoutStrings.obsessionChanceMinus
    },
    ["Weaved Ring"] = {
        desc = 
            quote("A mundane key ring in appearance with an unusual bluish dark sheen." .. br .. "The ring binds the key to its user, preventing loss even in the darkest of times.") .. nlp ..
            "Modifies the " .. b("Key") .. " with the following effect:" .. 
            list("Dying in a Trial no longer consumes the " .. b("Key") .. dot) ..
            "#name is consumed after triggering its effect."
    },
    
    --------------------------
    --- FLASHLIGHT ADD-ONS ---
    --------------------------
    
    ["Battery"] = {
        desc = 
        	"A standard battery of unknown brand." ..
            list(b("Increases") .. " the Battery life by " .. clror("+2 seconds") .. dot) ..
            quote("Another nearly empty battery.")
    },
    ["Broken Bulb"] = {
        desc = 
        	"A damaged bulb that causes a spooky flickering effect." ..
            list(
            	"Causes the " .. i("Flashlight") .. " to flicker.",
            	b("Increases") .. " the brightness of the Beam by " .. clror("+15 %") .. dot,
            	b("Increases") .. " the duration of a successful Blind by " .. clro("+30 %") .. dot,
            	b("Increases") .. " the spookiness.") ..
            "The #name is only available during " .. link("Halloween Events") .. dot
    },
    ["Focus Lens"] = {
        desc = 
        	"A thick glass lens that focuses the Flashlight beam to increase its intensity." ..
            list(
            	b("Increases") .. " the reach of the Beam by " .. clror("+25 %") .. dot,
            	b("Increases") .. " the brightness by " .. clro("+20 %") .. dot,
            	b("Increases") .. " the duration of a successful Blind by " .. clro("+10 %") .. dot,
            	b("Reduces") .. " the width of the Beam by " .. clro("-15 %") .. dot)
    },
    ["Heavy Duty Battery"] = {
        desc = 
        	"A battery marked as " .. i('"industrial strength"') .. dot ..
            list(b("Increases") .. " the Battery life by " .. clror("+4 seconds") .. dot) ..
            quote("A battery advertised as lasting 8 hours lasts only a couple of seconds in The Black Fog.")
    },
    ["High-End Sapphire Lens"] = {
        desc = 
        	"A wide lens made of unscratchable sapphire that optimises the power and range of the light beam." ..
            list(
            	b("Increases") .. " the reach of the Beam by " .. clro("+25 %") .. dot,
            	b("Increases") .. " the brightness of the Beam by " .. clro("+30 %") .. dot,
            	b("Increases") .. " the duration of a successful Blind by " .. clro("+15 %") .. dot,
            	b("Reduces") .. " the width of the Beam by " .. clro("-25 %") .. dot)
    },
    ["Intense Halogen"] = {
        desc = 
        	"A chemical bulb that generates an intensely clear light." ..
            list(
            	b("Increases") .. " the brightness of the Beam by " .. clror("+40 %") .. dot,
            	b("Increases") .. " the duration of a successful Blind by " .. clro("+20 %") .. dot) 
    },
    ["Leather Grip"] = {
        desc = 
        	"A leather strip wrapped around the Flashlight for more grip." ..
            list(b("Increases") .. " the Aim accuracy by " .. clror("+20 %") .. dot) ..
            quote("Too many have fallen due to sweaty hands.")
    },
    ["Long Life Battery"] = {
        desc = 
        	"A recent model of battery that lasts longer." ..
            list(b("Extends") .. " the Battery life by " .. clror("+6 seconds") .. dot) 
    },
    ["Low Amp Filament"] = {
        desc = 
        	"A filament bulb designed to extend a Flashlight battery's life." ..
            list(b("Reduces") .. " the Battery Depletion rate by " .. clror("-24 %") .. dot) 
    },
    ["Odd Bulb"] = {
        desc = 
        	"A heavy and completely opaque bulb of unknown origin which emits a faint light even when turned off." ..
            list(
            	b("Increases") .. " the brightness of the Beam by " .. clror("+50 %") .. dot,
            	b("Increases") .. " the duration of a successful Blind by " .. clro("+25 %") .. dot,
            	b("Increases") .. " the Battery Depletion rate by " .. clro("+14 %") .. dot)
    },
    ["Power Bulb"] = {
        desc = 
        	"A tiny Flashlight bulb that packs more wattage for a brighter, more powerful light beam." ..
            list(
            	b("Increases") .. " the brightness of the Beam by " .. clror("+20 %") .. dot,
            	b("Increases") .. " the duration of a successful Blind by " .. clro("+10 %") .. dot) ..
            quote("Even the most powerful light cannot pierce through The Black Fog's darkness.")
    },
    ["Rubber Grip"] = {
        desc = 
        	"A rubber grip specifically fitting Flashlights for more grip." ..
            list(b("Increases") .. " the Aim accuracy by " .. clror("+40 %") .. dot)
    },
    ["TIR Optic"] = {
        desc = 
        	"A lens and reflector combo which can magnify a Flashlight's beam." ..
            list(
            	b("Increases") .. " the brightness of the Beam by " .. clror("+30 %") .. dot,
            	b("Increases") .. " the duration of a successful Blind by " .. clro("+15 %") .. dot) ..
            quote("Let the light burn them out of their dark shroud.")
    },
    ["Wide Lens"] = {
        desc = 
        	"A thin wide lens in perfect condition." .. br .. "Designed to spread the Flashlight beam at the cost of reducing its range of effectiveness." ..
            list(
            	b("Increases") .. " the width of the Beam by " .. clror("+25 %") .. dot,
            	b("Reduces") .. " the reach of the Beam by " .. clro("-25 %") .. dot)
    },
    
    ------------------------
    --- FOG VIAL ADD-ONS ---
    ------------------------
    
    ["Mushroom Formula"] = {
    	desc = 
        	quote("Blooming wisps of fog grasp at the environment, reaching farther and farther out.") .. nlp ..
        	"Modifies the " .. b("Fog Vial") .. " with the following effect:" ..
            list(b("Increases") .. " the maximum size of the " .. i("Fog Cloud") .. " by " .. clror("#effect") .. dot)
    },
    ["Oily Sap"] = {
    	desc = 
        	quote("The emerging fog clings to the air, overwhelming the senses for even longer.") .. nlp ..
        	"Modifies the " .. b("Fog Vial") .. " with the following effect:" ..
            list(b("Increases") .. " the duration of the " .. i("Fog Cloud") .. " by " .. clror("#effect") .. dot)
    },
    ["Potent Extract"] = {
    	desc = 
        	quote("One drop is enough to change the consistency of this strange elixir.") .. nlp ..
        	"Modifies the " .. b("Fog Vial") .. " with the following effects:" ..
            list(
            	b("Increases") .. " the opacity of the " .. i("Fog Cloud") .. "  by " .. clror("#opacity") .. dot,
            	b("Reduces") .. " the duration of the " .. i("Fog Cloud") .. " by " .. clro("#duration") .. dot,
            	b("Reduces ") .. " the size of the " .. i("Fog Cloud") .. " by " .. clro("#size") .. dot)
    },
    ["Reactive Compound"] = {
    	desc = 
        	quote("Pressure builds within the vial. Its contents beg for release.") .. nlp ..
        	"Modifies the " .. b("Fog Vial") .. " with the following effect:" ..
            list(b("Reduces") .. " the Expansion time of the " .. i("Fog Cloud") .. " by " .. clror("#effect") .. dot)
    },
    ["Volcanic Stone"] = {
    	desc = 
        	quote("The heat of its birthplace glows within this living rock.") .. nlp ..
        	"Modifies the " .. b("Fog Vial") .. " with the following effect:" ..
            list(b("Reduces") .. " the Recharge time of the " .. i("Fog Cloud") .. " by " .. clror("#effect") .. dot)
    },
    	
    -------------------
    --- MAP ADD-ONS ---
    -------------------
    
    ["Battered Tape"] = {
        desc = 
        		quote("Additional pieces of parchment hung loosely from the map, hastily affixed with tape.") .. nlp ..
				"Modifies the " .. b("Map") .. " with the following effect:" ..
            	list(b("Increases") .. " its maximum range by " .. clror("#effect") .. dot)
    },
    ["Crimson Stamp"] = {
        desc = 
        	quote("Only those with absolute confidence dared to place their seal upon the map.") .. nlp ..
			"Modifies the " .. b("Map") .. " with the following effects:" ..
            list(
            	"The " .. iconLink(ils.aura) .. " of the Killer is revealed to all Survivors when within " .. clror("#aura") .. " of the " .. i("Beam of Light") .. dot,
            	b("Reduces") .. " the Life time of the " .. i("Beam of Light") .. " by " .. clro("#duration") .. dot,
            	b("Reduces") .. " its Charges by " .. clro("#charges") .. dot)
    },
    ["Glowing Ink"] = {
        desc = 
        		quote("Some of the images seemed to jump right off the page.") .. nlp ..
				"Modifies the " .. b("Map") .. " with the following effect:" ..
            	list(b("Increases") .. " the duration it reveals " .. iconLink(ils.auras) .. " for by " .. clror("#effect") .. dot)
    },
    ["Gnarled Compass"] = {
        desc = 
        		quote("It seems to set itself to the perfect distance every time.") .. nlp ..
				"Modifies the " .. b("Map") .. " with the following effect:" ..
            	list(b("Increases") .. " its Charges by " .. clror("#effect") .. dot)
    },
    ["Odd Stamp"] = {
        desc = 
        	quote("A stamp carved out of sturdy blonde wood." .. br .. "The text found at the base is incomprehensible: " .. b('"kw\'zvre\'od"') .. dot) .. nlp ..
            "Modifies the " .. b("Map") .. " with the following effect:" ..
            list(b("Increases") .. " its Tracking range by " .. clror("#effect") .. dot)
    },
    ["Retardant Jelly"] = {
        desc = 
        	quote("A slimy, translucent substance with a ghastly lavender shade." .. br .. "This jelly from unknown origin is highly resistant to heat.") .. nlp ..
            "Modifies the " .. b("Map") .. " with the following effect:" ..
            list(b("Reduces") .. " its Depletion rate by " .. clror("#effect") .. dot)
    },
    ["Sharpened Flint"] = {
        desc = 
        	quote("When sparked near the map, new sigils appeared in unexpected locations.") .. nlp ..
			"Modifies the " .. b("Map") .. " with the following effect:" ..
            list("Grants the ability to track the location of " .. iconLink(ils.totems) .. " and reveal their " .. iconLink(ils.auras) .. ", when using the " .. b("Map") .. dot)
    },
    ["Unusual Stamp"] = {
        desc = 
        	quote("A wooden stamp with a cross-hatched rubber pad used to mark documents." .. br .. "It is unclear as to how or by whom this stamp was originally used.") .. nlp ..
            "Modifies the " .. b("Map") .. " with the following effect:" ..
            list(b("Increases") .. " its Tracking range by " .. clror("#effect") .. dot)
    },
    ["Yellow Wire"] = {
        desc = 
        	quote("A small electrical wire that can be tied around the map to enhance its abilities." .. br .. "Both ends are heavily damaged like it has been forcefully torn out of its intended location.") .. nlp ..
            "Unlocks potential in the Aura-reading ability of the " .. b("Map") .. colon ..
            list("Grants the ability to track the location of the " .. iconLink(ils.exitGates) .. " and reveal the " .. iconLink(ils.aura) .. " of their " .. b("Switches") .. ", when using the " .. b("Map") .. dot)
    },
    
    -----------------------
    --- MED-KIT ADD-ONS ---
    -----------------------
    
    ["Abdominal Dressing"] = {
        desc = 
        	"A highly absorbent pad that prevents bodily fluid leakage when applied to large abdominal wounds." .. 
            list(b("Increases") .. " the Healing speed of " .. b("Med-Kits") .. " by " .. clror("+15 %") .. dot)
    },
    ["Anti-Exhaustion Syringe"] = {
        desc = 
        	quote("A mysterious fluid that reinvigorates both body and mind.") .. nlp ..
        	"While using the " .. iconLink(ils.medKit) .. " to heal yourself or another Survivor, press the " .. loadoutStrings.secondaryActionButton .. " to trigger the following effect:" ..
			list("Causes the affected Survivor to instantly recover from the " .. effects("addon", "Anti-Exhaustion Syringe", ils.exhausted) .. dot) ..
			"#name consumes the " .. b("Med-Kit") .. " after use."
    },
    ["Bandages"] = {
        desc = 
        	"A pack of bandages usually found in First Aid Kits." .. 
            list(b("Increases") .. " the available Healing Charges by " .. clror("+8 Charges") .. dot)
    },
    ["Butterfly Tape"] = {
        desc = 
        	"Medical quality tape used to close small wounds." .. 
            list(b("Increases") .. " the Healing speed by " .. clror("+5 %") .. dot)
    },
    ["Gauze Roll"] = {
        desc = 
        	"A sterile gauze used for a variety of wounds." .. br .. "Part of a total wound care system." ..
            list(b("Increases") .. " the available Healing Charges by " .. clror("+10 Charges") .. dot)
    },
    ["Gel Dressings"] = {
        desc = 
        	"A pack of gel forming pads used to patch up heavily exuding wounds." ..
            list(b("Increases") .. " the available Healing Charges by " .. clror("+16 Charges") .. dot)
    },
    ["Medical Scissors"] = {
        desc = 
        	"Scissors designed to easily cut through textiles." .. 
            list(b("Increases") .. " the Healing speed by " .. clror("+10 %") .. dot)
    },
    ["Needle & Thread"] = {
        desc = 
        	"Not exactly a medical device." .. br .. "However, it can be used to quickly and painfully close up a wound." ..
            list(
            	b("Increases") .. " the Odds of triggering " .. i("Healing Skill Checks") .. " by " .. clror("+10 %") .. dot,
            	b("Increases") .. " the Progression bonus for succeeding at " .. i("Great Healing Skill Checks") .. " by " .. clro("+5 %") .. dot)
    },
    ["Refined Serum"] = {
        desc = 
        	bclr("green", "STOCKPILES MAY STILL BE USED IN TRIALS") .. nlp ..
        	quote("A refined version of the " .. b("Putrid Serum") .. " that is mostly safe for human consumption." .. br .. "Mostly.") .. nlp ..
        	"While healing yourself or another Survivor with the " .. b("Med-Kit") .. ", press the " .. loadoutStrings.secondaryActionButton .. " to trigger the following effect for " .. clror("16 seconds") .. colon ..
        	list(
        		b("Increases") .. " all Movement speeds by " .. clro("+5 %") .. dot,
            	 nbullet .. "Creates a Blight trail behind the affected Survivor.") ..
    		"#name consumes the " .. b("Med-Kit") .. " after trigger its effect." .. nlp ..
    		"The #name is only available during " .. link("Halloween Events") .. dot
    },
    ["Rubber Gloves"] = {
        desc = 
        	"Disposable medical gloves to avoid cross-contamination." .. 
            list(b("Increases") .. " the Great Success zone of " .. i("Healing Skill Checks") .. " by " .. clror("+10 %") .. dot)
    },
    ["Self Adherent Wrap"] = {
        desc = 
        	"A pack of bandages that stick to themselves without the need of clips for a faster patch-up that requires less readjustments." ..
            list(
            	b("Increases") .. " the Healing speed by " .. clror("+5 %") .. dot,
            	b("Increases") .. " the available Healing Charges by " .. clro("+8 Charges") .. dot)
    },
    ["Sponge"] = {
        desc = 
        	"A mundane sponge used to soak up extra blood, providing easier access to wounds." .. 
            list(b("Increases") .. " the Great Success zone of " .. i("Healing Skill Checks") .. " by " .. clror("+20 %") .. dot)
    },
    ["Styptic Agent"] = {
        desc = 
        	quote("A white powder with coagulant properties." .. br .. "Apply the agent to a wound to stop it from haemorrhaging.") .. nlp ..
        	"Modifies the " .. iconLink(ils.medKit) .. " with the following effect:" ..
        	list(b("Increases") .. " the Efficiency of " .. i("Personal Healing") .. " actions by " .. clror("#bonus") .. dot)
    },
    ["Surgical Suture"] = {
        desc = 
        	"A medical device used to close and hold body tissue." .. br .. "Even though it is very effective, the surgical suture is challenging to use." ..
            list(
            	b("Increases") .. " the Odds of triggering " .. i("Healing Skill Checks") .. " by " .. clror("+15 %") .. dot,
            	b("Increases") .. " the Progression bonus for succeeding at " .. i("Great Healing Skill Checks") .. " by " .. clro("+10 %") .. dot)
    },
    
    -----------------------
    --- TOOLBOX ADD-ONS ---
    -----------------------
    
    ["Brand New Part"] = {
        desc = 
        	"This intricate mechanical part feels oddly out of place." .. br .. "It is clean and shiny as if straight out of the factory." .. nlp ..
        	"Press the " .. loadoutStrings.useItemButton .. " while standing next to a " .. iconLink(ils.generator) .. " to perform the " .. i("Install Brand New Part") .. " action:" ..
        	list(
        		b("Triggers") .. " a difficult " .. iconLink(ils.skillCheck) .. dot,
        		b("Permanently reduces") .. " the Repair requirement by " .. clror("#effect") .. " for that " .. b("Generator") .. " upon succeeding the " .. i("Skill Check") .. dot) ..
        	"#name is consumed on use."
    },
    ["Clean Rag"] = {
        desc = 
        	"A mundane rag." .. br .. "Suspiciously clean." ..
            list(b("Increases") .. " the Action speed for " .. i("Toolbox Repair") .. " by " .. clror("#effect") .. dot)
    },
    ["Cutting Wire"] = {
        desc = 
        	"A rudimentary cutting tool made from a jagged metal wire and two wooden handles." ..
            list(b("Increases") .. " the Action speed for " .. i("Toolbox Sabotage") .. " by " .. clror("#effect") .. dot)
    },
    ["Grip Wrench"] = {
        desc = 
        	"An adjustable wrench with a tough grip." .. br .. "Essential in any Toolbox." ..
            list(b("Increases") .. " the Auto-Repair timer for sabotaged " .. iconLink(ils.hooks) .. " by " .. clror("#effect") .. dot)
    },
    ["Hacksaw"] = {
        desc = 
        	"A small hand saw mounted with a metal cutting blade." ..
            list(b("Increases") .. " the Action speed for " .. i("Toolbox Sabotage") .. " by " .. clror("#effect") .. dot)
    },
    ["Instructions"] = {
        desc = 
        	"Someone quickly painted what seems to be repair instructions on this piece of bark." .. nlp ..
        	"While repairing a " .. iconLink(ils.generator) .. " with a " .. b("Toolbox") .. ", you benefit from the following effect:" ..
            list(
            	b("Suppresses") .. " all regular " .. i("Repair Skill Checks") .. dot,
            	nbullet .. "This does not affect any special " .. iconLink(ils.skillChecks) .. " triggered by outside effects.")
    },
    ["Protective Gloves"] = {
        desc = 
        	"Thick gloves, which reduce manual dexterity but protect hands from injury." .. nlp ..
        	"While sabotaging a " .. iconLink(ils.hook) .. " with a " .. b("Toolbox") .. ", you benefit from the following effect:" ..
            list(b("Suppresses") .. " the " .. i(link("Loud Noise Notification")) .. " usually triggered after completing the " .. i("Sabotage") .. " action.")
    },
    ["Scraps"] = {
        desc = 
        	"Springs, screws and gears." .. br .. "Mostly unusable junk." ..
            list(b("Increases") .. " the capacity of " .. iconLink(ils.toolboxes) .. " by " .. clror("#effect") .. dot)
    },
    ["Socket Swivels"] = {
        desc = 
        	quote("Swivels provide bend and flexibility for bolts that are out of reach, deep within mechanical devices.") .. nlp ..
        	"Modifies the " .. b("Toolbox") .. " with the following effect:" ..
			list(b("Increases") .. " its Repair speed by " .. clror("#effect") .. dot)
    },
    ["Spring Clamp"] = {
        desc = 
        	"Useful tool to clamp hoses or hold wires in place and prevent damage or injury." .. nlp ..
        	"While repairing a " .. iconLink(ils.generator) .. " with a " .. b("Toolbox") .. ", you benefit from the following effect:" ..
            list(b("Reduces") .. " the audible range of all noises related to the " .. i("Repair") .. " interaction by " .. clror("#range") .. dot)
    },
    ["Wire Spool"] = {
        desc = 
        	"A portable but heavy spool of copper wire." ..
            list(b("Increases") .. " the capacity of " .. iconLink(ils.toolboxes) .. " by " .. clror("#effect") .. dot)
    },
    
    -------------------
    --- THE TRAPPER ---
    -------------------
    
    ["4-Coil Spring Kit"] = {
        desc = 
        	"A replacement kit for Bear Traps which changes the usual dual spring system to four coil springs, adding a great amount of strength to the Bear Traps hold."..
            list(b("Increases") .. " the Disarm time of the " .. b("Bear Trap") .. " by " .. clror("+33 %") .. dot)
    },
    ["Bear Oil"] = {
        desc = 
        	"Melted animal fat that can lubricate the Bear Traps squeaky joints."..
            list("Setting a " .. b("Bear Trap") .. " is silent.")
    },
    ["Bloody Coil"] = {
        desc = 
        	"Part sticky, part slippery, this grim liquid makes handling the Bear Traps spring more dangerous."..
            list("When a healthy Survivor disarms a " .. b("Bear Trap") .. ", the " .. b("Bloody Coil") .. " exacts its price, putting the Survivor into the " .. iconLink("Injured State") .. dot)
    },
    ["Coffee Grounds"] = {
        desc = 
        	"An old rusted can containing damp coffee grounds."..
            list(b("Increases") .. " the strength of the " .. states(ils.haste) .. " after setting a " .. b("Bear Trap") .. " by " .. clror("+5 % ") .. dot)
    },
    ["Fastening Tools"] = {
        desc = 
        	"A specialised set of tools used to fasten Bear Traps to ensure their effectiveness."..
            list(
            	b("Increases") .. " the Rescue and Escape times from the " .. b("Bear Trap") .. " by " .. clror("+25 %") .. dot,
            	b("Increases") .. " the Setting speed of the " .. b("Bear Trap") .. " by " .. clro("+50 %") .. dot)
    },
    ["Honing Stone"] = {
        desc = 
        	"When used with the Bear Trap, the stone sharpens its blades." .. nlp ..
        	"The razor-sharp blades inflict deep wounds aimed at bleeding the victim as fast as possible." .. 
            list("Survivors caught in a " .. b("Bear Trap") .. ",  who free themselves, are inflicted with the " .. iconLink("Dying State") .. dot)
    },
    ["Iridescent Stone"] = {
        desc = 
        	"Bear Traps sharpened with the sickly gleaming stone seem to gain a life of their own." ..
            list("Automatically resets and arms a random disarmed " .. b("Bear Trap") .. " every " .. clror("30 seconds") .. dot)
    },
    ["Lengthened Jaws"] = {
        desc = 
        	"Jaws with long teeth that dig further into the flesh than a conventional Bear Traps." ..
            list("Survivors who escape from " .. b("Bear Traps") .. " suffer from the " .. states(ils.deepWound) .. dot)
    },
    ["Logwood Dye"] = {
        desc = 
        	"Boiled wood ash used to dye Bear Traps, making them less noticeable." ..
            list(b("Darkens") .. " the " .. b("Bear Trap") .. dot)
    },
    ["Makeshift Wrap"] = {
        desc = 
        	"A scratched and worn brace made of thick, cured animal skin." ..
            list("You are no longer caught in your own " .. b("Bear Traps") .. ", they are automatically disarmed instead.")
    },
    ["Oily Coil"] = {
        desc = 
        	"A clear oil that makes handling the Bear Trap's spring more hazardous." ..
            list("Resetting a " .. b("Bear Trap") .. " reveals the " .. iconLink(ils.aura) .. " of the last Survivor to have disarmed it for " .. clror("5 seconds") .. dot)
    },
    ["Padded Jaws"] = {
        desc = 
        	quote("These padded jaws are meant to restrain, not to wound.") .. nlp ..
        	"Modifies the " .. b("Bear Traps") .. " with the following effect:" ..
            list("No longer inflict damage on trapped Survivors.") ..
            "#name grants " .. clror("#bonus") .. " bonus " .. iconLink("Bloodpoints") .. " for triggering the " .. b(i("Trapped") .. space .. "Score Event") .. dot .. br ..
            "#name negates the effects of the " .. iconLink("Serrated Jaws") .. " and " .. iconLink("Rusted Jaws") .. space .. b("Add-ons") .. dot
    },
    ["Rusted Jaws"] = {
        desc = 
        	"These Bear Trap jaws are covered with crusty and volatile rust spots, making injuries particularly difficult to heal." ..
            list("Survivors injured by a " .. b("Bear Trap") .. " suffer from the " .. states(ils.mangled) .. " for " .. clror("70 seconds") .. dot)
    },
    ["Secondary Coil"] = {
        desc = 
        	"A secondary coil keeps the Bear Trap functional in times when the primary coil becomes unusable." ..
            list(b("Increases") .. " the Disarm time of the " .. b("Bear Trap") .. " by " .. clror("+50 %") .. dot)
    },
    ["Serrated Jaws"] = {
        desc = 
        	"These replacement trap jaws have saw-like blades, causing awful open wounds when they snap." ..
            list("Survivors injured by a " .. b("Bear Trap") .. " suffer from the " .. states(ils.haemorrhage) .. " until fully healed.") ..
            quote("Like a predatory beast, it can smell and track blood.")
    },
    ["Setting Tools"] = {
        desc = 
        	"Specialised tools designed to quickly and effortlessly set Bear Traps." ..
            list(
            	b("Reduces") .. " the Rescue and Escape speed from the " .. b("Bear Trap") .. " by " .. clror("-13.3 %") .. dot,
            	b("Increases") .. " the Setting speed of the " .. b("Bear Trap") .. " by " .. clro("+40 %") .. dot)
    },
    ["Stitched Bag"] = {
        desc = 
        	"Skin pieces of all sorts crudely stitched together making for a very large bag." ..
            list(b("Increases") .. " the number of carried " .. b("Bear Traps") .. " by " .. clror("+2") .. dot)
    },
    ["Strong Coil Spring"] = {
        desc = 
        	"A large and heavy coil spring which adds a good amount of strength to the Bear Trap's hold." ..
            list(b("Reduces") .. " the Disarm speed of the " .. b("Bear Trap") .. " by " .. clror("-20 %") .. dot)
    },
    ["Tar Bottle"] = {
        desc = 
        	"A black, matte and sticky substance that when applied to Bear Traps, makes them far less noticeable." ..
            list(b("Darkens") .. " the " .. b("Bear Trap") .. dot)
    },
    ["Tension Spring"] = {
        desc = 
        	"A high tension spring that snaps back into place after being stretched." ..
            list("Automatically resets the " .. b("Bear Trap") .. space .. clror("2 seconds") .. " after a Survivor escaped from it.")
    },
    ["Trap Setters"] = {
        desc = 
        	"Simple tools designed to quickly and safely set Bear Traps." ..
            list(b("Increases") .. " the Setting speed of the " .. b("Bear Trap") .. " by " .. clror("+30 %") .. dot)
    },
    ["Trapper Bag"] = {
        desc = 
        	"A cured leather waist bag." .. br .. "Large and sturdy to transport hunting equipment." ..
            list(b("Increases") .. " the number of carried " .. b("Bear Traps") .. " by " .. clror("+1") .. dot)
    },
    ["Trapper Gloves"] = {
        desc = 
        	"Protective padded leather gloves." ..
            list(b("Increases") .. " the Setting speed of the " .. b("Bear Trap") .. " by " .. clror("+30 %") .. dot)
    },
    ["Trapper Sack"] = {
        desc = 
        	"A crude leather sack suitable for foraging." ..
            list(
            	"Causes all " .. b("Bear Traps") .. " to be carried in your inventory at the beginning of the Trial.",
            	"You can no longer pick up any placed " .. b("Bear Traps") .. ", only reset them.")
    },
    ["Trapper Sack (Decommissioned)"] = {
        desc = 
        	"A crude leather sack suitable for foraging." ..
            list(b("Increases") .. " the number of carried " .. b("Bear Traps") .. " by " .. clror("+1") .. dot)
    },
    ["Wax Brick"] = {
        desc = 
        	"A block of wax used to lower friction and facilitate movement in mechanical parts." ..
            list(b("Increases") .. " the Rescue and Escape times of the " .. b("Bear Trap") .. " by " .. clror("+33 %") .. dot)
    },
    
    ------------------
    --- THE WRAITH ---
    ------------------
    
    ['"All Seeing" - Blood'] = {
        desc = 
        	"The Kra-Frabai symbol, representing The Entity watching over us, is stamped in blood on the head of the bell." .. nlp ..
        	"Unlocks potential in your Aura-reading ability while " .. i("Cloaked") .. colon ..
            list("The " .. iconLink(ils.auras) .. " of Survivors are revealed to you within " .. clror("#range") .. " of your location.")
    },
    ['"All Seeing" - Mud'] = {
        desc = 
        	"The Kra-Frabai symbol, representing The Entity watching over us, is finger-drawn in mud on the head of the bell." .. nlp ..
        	"Unlocks potential in your Aura-reading ability while " .. i("Cloaked") .. colon ..
            list("The " .. iconLink(ils.auras) .. " of Survivors are revealed to you within " .. clror("#range") .. " of your location.")
    },
    ['"All Seeing" - Spirit'] = {
        desc = 
        	"The Kra-Frabai symbol, representing The Entity watching over us, ominously glows on the head of the bell." .. nlp ..
        	"Unlocks potential in your Aura-reading ability while " .. i("Cloaked") .. colon ..
            list("The intensity of the " .. iconLink(ils.generator) .. space .. iconLink(ils.auras) .. " reveals their current Repair progress.")
    },
    ['"All Seeing" - White'] = {
        desc = 
        	"The Kra-Frabai symbol, representing The Entity watching over us, is stamped in white ink on the head of the bell." .. nlp ..
        	"Unlocks potential in your Aura-reading ability while " .. i("Cloaked") .. colon ..
            list("The " .. iconLink(ils.auras) .. " of Survivors are revealed to you within " .. clror("#range") .. " of your location.")
    },
    ['"Blind Warrior" - Blood'] = {
        desc = 
        	"The Baikra-Kaeug symbol, representing imperviousness, is stamped in blood on the body of the bell." ..
            list(b("Increases") .. " the Resistance to " .. i(link("Lightburn")) .. " by " .. clror("#effect") .. dot)
    },
    ['"Blind Warrior" - Mud'] = {
        desc = 
        	"The Baikra-Kaeug symbol, representing ferocity, is finger-drawn in mud on the body of the bell." ..
            list("Survivors hit with a " .. i("Surprise Attack") .. " suffer from the " .. effects("addon", "\"Blind Warrior\" - Mud", ils.blindness) .. " for " .. clror("#blindness") .. dot)
    },
    ['"Blind Warrior" - Soot'] = {
        desc = 
        	"The Baikra-Kaeug symbol, representing imperviousness, is finger-drawn out of soot on the body of the bell." ..
            list(b("Increases") .. " the Resistance to " .. i(link("Lightburn")) .. " by " .. clror("#effect") .. dot)
    },
    ['"Blind Warrior" - Spirit'] = {
        desc = 
        	"The Baikra-Kaeug symbol, representing imperviousness, ominously glows on the body of the bell." ..
            list(b("Increases") .. " the Resistance to " .. i(link("Lightburn")) .. " to " .. clror("#effect") .. ", granting complete immunity.")
    },
    ['"Blind Warrior" - White'] = {
        desc = 
        	"The Baikra-Kaeug symbol, representing ferocity, is stamped in white ink on the body of the bell." ..
        	list("Survivors hit with a " .. i("Surprise Attack") .. " suffer from the " .. effects("addon", "\"Blind Warrior\" - White", ils.haemorrhage, ils.mangled) .. " for " .. clror("#duration") .. dot)
    },
    ['"Blink" - Mud'] = {
        desc = 
        	"The Kratin symbol, representing quick passing, is finger-drawn in mud on the body of the Bell." ..
            list(b("Reduces") .." the Cloaking time by " .. clror("-40 %") .. dot)
    },
    ['"Blink" - White'] = {
        desc = 
        	"The Kratin symbol, representing quick passing, is stamped in white ink on the body of the Bell." ..
            list(b("Reduces") .." the Cloaking time by " .. clror("-60 %") .. dot)
    },
    ["Bone Clapper"] = {
        desc = 
        	"A Bell clapper made from a highly polished piece of bone." .. br .. "Causes the sounds of the Wailing Bell to echo and warp chaotically." ..
            list("Survivors are unable to discern the distance and direction of the " .. i("Wailing Bell") .. dot)
    },
    ["Coxcombed Clapper"] = {
        desc = 
        	"A simple coxcomb knotted rope wrapped around the bell clapper to muffle its sound." .. br .. "A malevolent Aura emanates from it." ..
            list(b("Silences") .. " the " .. i("Wailing Bell") .. dot)
    },
    ['"Shadow Dance" - Blood'] = {
        desc = 
        	"The Yiwarick symbol, representing dark synergy, is stamped in blood on the body of the Bell." ..
            list(b("Increases") .. " the Action speeds for breaking " .. iconLink("Breakable Walls") .. " and " .. iconLink("Pallets") .. ", damaging " .. iconLink("Generators") .. ", and vaulting " .. iconLink("Windows") .. " by " .. clror("+60 %") .. " when " .. i("Cloaked") .. dot)
    },
    ['"Shadow Dance" - Soot'] = {
        desc = 
        	"The Yiwarick symbol, representing dark synergy, is finger-drawn out of soot on the body of the Bell." ..
            list(b("Increases") .. " the Action speeds for breaking " .. iconLink("Breakable Walls") .. " and " .. iconLink("Pallets") .. ", damaging " .. iconLink("Generators") .. ", and vaulting " .. iconLink("Windows") .. " by " .. clror("+10 %") .. " when " .. i("Cloaked") .. dot)
    },
    ['"Shadow Dance" - White'] = {
        desc = 
        	"The Yiwarick symbol, representing dark synergy, is stamped in white ink on the body of the Bell." ..
            list(b("Increases") .. " the Action speeds for breaking " .. iconLink("Breakable Walls") .. " and " .. iconLink("Pallets") .. ", damaging " .. iconLink("Generators") .. ", and vaulting " .. iconLink("Windows") .. " by " .. clror("+40 %") .. " while " .. i("Cloaked") .. dot)
    },
    ['"Swift Hunt" - Blood'] = {
        desc = 
        	"The Kuntin-Takkho symbol, representing a rapid descent on a prey, is stamped in blood on the body of the Bell." ..
            list(b("Reduces") .. " the Uncloaking time by " .. clror("-12 %") .. dot)
    },
    ['"Swift Hunt" - Mud'] = {
        desc = 
        	"The Kuntin-Takkho symbol, representing a rapid descent on a prey, is finger-drawn in mud on the body of the Bell." ..
            list(b("Reduces") .. " the Uncloaking time by " .. clror("-8 %") .. dot)
    },
    ['"Swift Hunt" - Soot'] = {
        desc = 
        	"The Kuntin-Takkho symbol, representing a rapid descent on a prey, is finger-drawn out of soot on the body of the Bell." ..
            list(b("Reduces") .. " the Uncloaking time by " .. clror("-6 %") .. dot)
    },
    ['"Swift Hunt" - White'] = {
        desc = 
        	"The Kuntin-Takkho symbol, representing a rapid descent on a prey, is stamped in white ink on the body of the Bell." ..
            list(b("Reduces") .. " the Uncloaking time by " .. clror("-10 %") .. dot)
    },
    ['"The Beast" - Soot'] = {
        desc = 
        	"The Kunwulju symbol, representing the Realm of Fear, is finger-drawn out of soot on the body of the Bell." ..
            list("Your " .. iconLink("Terror Radius") .. " is no longer suppressed when " .. i("Cloaked") .. dot,
            	"Grants " .. clror("+100 %") .. " bonus Bloodpoints for " .. i("Stalking") .. " and " .. i("Surprise Attack") .. " Score Events.")
    },
    ['"The Ghost" - Soot'] = {
        desc = 
        	"The Khugwemuu symbol, representing the Spirit World, is finger-drawn out of soot on the body of the Bell." ..
            list("Your " .. iconLink("Terror Radius") .. " and " .. b("Red Stain") .. " are suppressed for another " .. clror("6 seconds") .. " after uncloaking.")
    },
    ['"The Hound" - Soot'] = {
        desc = 
        	"The Wonnug symbol, representing a peerless tracker, is finger-drawn out of soot on the body of the Bell." ..
            list("When " .. i("Cloaked") .. comma .. iconLink(ils.poolsOfBlood) .. " appear to you in " .. bclr("bright red", "bright red") .. dot)
    },
    ['"The Serpent" - Soot'] = {
        desc = 
        	"The Laokeye symbol, representing cunning, is finger-drawn out of soot on the body of the Bell." ..
            list("Breaking " .. iconLink("Breakable Walls") .. " or " .. iconLink("Pallets") .. " by any means, or performing the " .. i("Damage Generator") .. " action on incomplete " .. iconLink("Generators") .. ", will cause you to automatically uncloak.")
    },
    ['"Windstorm" - Blood'] = {
        desc = 
        	"The Ohuwe-Onmnea symbol, representing a howling storm, is stamped in blood on the body of the Bell." ..
            list(b("Increases") .. " your Movement Speed while " .. i("Cloaked") .. " by " .. clror("#effect") .. dot)
    },
    ['"Windstorm" - Mud'] = {
        desc = 
        	"The Ohuwe-Onmnea symbol, representing a howling storm, is finger-drawn in mud on the body of the Bell." ..
            list(b("Increases") .. " your Movement Speed while " .. i("Cloaked") .. " by " .. clror("#effect") .. dot)
    },
    ['"Windstorm" - White'] = {
        desc = 
        	"The Ohuwe-Onmnea symbol, representing a howling storm, is stamped in white ink on the body of the Bell." ..
            list(b("Increases") .. " your Movement Speed while " .. i("Cloaked") .. " by " .. clror("#effect") .. dot)
    },
    
    ---------------------
    --- THE HILLBILLY ---
    ---------------------
    
    ["Apex Muffler"] = {
        desc =
            "A masterfully crafted chainsaw muffler that outperforms all others." ..
            list(b("Silences") .. " the " .. i("Chainsaw") .. " for all Survivors outside of the " .. iconLink("Terror Radius") .. dot)
    },
    ["Begrimed Chains (Chainsaw)"] = {
        desc =
            "A foul yet oddly familiar chain, coated with something unpleasant." ..
            list("Survivors hit with the " .. i("Chainsaw") .. " suffer from the " .. states(ils.haemorrhage, ils.mangled) .. " for " .. clror("70 seconds") .. dot)
    },
    ["The Thompsons' Mix"] = {
        desc =
            "A special oily substance used in the lubrication of all machinery concocted by the Thompsons themselves." ..
            list(b("Reduces") .. " the Cool-down time after using the " .. i("Chainsaw") .. " by " .. clror("-10 %") .. ", when not in " .. biclr("blue", "Overdrive") .. dot)
    },
    ["Dad's Boots"] = {
        desc =
            "A pair of trusty boots, pulled from the corpse of Max Thompson Senior." ..
        list(b("Increases") .. " the Turn speed during a " .. i("Chainsaw Sprint") .. " by " .. clror("#effect") .. dot)
    },
    ["Clogged Intake"] = {
        desc =
            "Modifying the airflow is key to modifying the " .. i("Chainsaw's") .. " power." ..
            list(b("Extends") .. " the duration of " .. biclr("blue", "Overdrive") .. " by " .. clror("+15 %") .. dot)
    },
    ["Iridescent Engravings"] = {
        desc = 
            "Engravings found on the Chainsaw body representing the dark beast that lives in The Fog." .. br .. "Fills the user with determination." ..
            list(
                b("Increases") .. " your Movement speed during a " .. i("Chainsaw Sprint") .. " by " .. clror("+20 %") .. dot,
                b("Increases") .. " the Charge time of the " .. i("Chainsaw") .. " by " .. clro("+12 %") .. dot)
    },
    ["Counterweight"] = {
        desc = 
            "Adds weight to the base, for stability." ..
            list(b("Reduces") .. " the initial Turn rate of the " .. i("Chainsaw") .. " during a " .. i("Chainsaw Sprint") .. " by " .. clror("-70 %") .. dot)
    },
    ["Filthy Slippers"] = {
        desc =
            "Max sometimes struggled to hear his mother's footfalls." ..
            list("Gain the " .. states(ils.undetectable) .. " until you stop sprinting after maintaining a " .. i("Chainsaw Sprint") .. " for at least " .. clror("2 seconds") .. dot)
    },
    ["Greased Throttle"] = {
        desc =
            "A lubricated trigger." .. br .. "One twitch of the finger brings the " .. i("Chainsaw") .. " back to life." ..
            list(b("Reduces") .. " the Cool-down time after using the " .. i("Chainsaw") .. " by " .. clror("-5 %") .. ", when not in " .. biclr("blue", "Overdrive") .. dot)
    },
    ["Ragged Engine"] = {
        desc =
            "Some would say it needs a tune-up." .. br .. "Max would say it is tuned-up." ..
            list(b("Reduces") .. " the Dissipation speed of the " .. i("Overdrive Meter") .. " when not using the " .. i("Chainsaw") .. " by " .. clror("-30 %") .. dot)
    },
    ["LoPro Chains"] = {
        desc =
            "Light chains that decrease the weight of the Chainsaw, allowing for greater manoeuvrability." ..
            list(
                "Grants the ability to continue a " .. i("Chainsaw Sprint") .. " through " .. iconLink("Breakable Walls") .. " and dropped " .. iconLink(ils.pallets) .. ", breaking them in the process.",
                "Healthy Survivors hit with the " .. i("Chainsaw") .. " within " .. clror("#effect") .. " of triggering the primary effect are only damaged for a single " .. iconLink("Health State") .. dot,
                nbullet .. "Injured Survivors will suffer from the " .. states(ils.deepWound) .. " instead.")
    },
    ["Low Kickback Chains"] = {
        desc =
            "A specialised chain that reduces the likelihood of kickback." ..
            list(b("Reduces") .. " the Cool-down time after hitting an obstacle during a " .. i("Chainsaw Sprint") .. " by " .. clror("-15 %") .. dot)
    },
    ["Discarded Air Filter"] = {
        desc =
            "A cracked and dusty filter." .. br .. "It still manages to work better than the stock model." ..
            list(b("Increases") .. " the Decay delay for the " .. i("Overdrive Meter") .. " by " .. clror("#effect") .. dot)
    },
    ["Off-Brand Motor Oil"] = {
        desc =
            "Affordable oil that can be used to lubricate noisy chains." ..
            list(b("Increases") .. " the Charge rate of the " .. i("Overdrive Meter") .. " by " .. clror("+15 %") .. dot)
    },
    ["High-Speed Idler Screw"] = {
        desc =
            "A loosened screw will bring more power to the " .. i("Chainsaw") ..
            list(b("Increases") .. " the Decay delay for the " .. i("Overdrive Meter") .. " by " .. clror("#effect") .. dot)
    },
    ["Thermal Casing"] = {
        desc =
            "A thicker case that allows the user to control the conservation of energy." ..
            list(b("Reduces") .. " the Dissipation speed of the " .. i("Overdrive Meter") .. " when not using the " .. i("Chainsaw") .. " by " .. clror("-20 %") .. dot)
    },
    ["Spiked Boots"] = {
        desc =
            "Boots with strapped-on pieces of metal which burrow into mud for more stability and control with each step." ..
            list(b("Increases") .. " the Turn speed during the " .. i("Chainsaw Sprint") .. " by " .. clror("#effect") .. dot)
    },
    ["Steel Toe Boots"] = {
        desc =
            "Boots with a reinforced toe that offer protection from impact." ..
            list(b("Reduces") .. " the Cool-down time after hitting an obstacle during a " .. i("Chainsaw Sprint") .. " by " .. clror("-10 %") .. dot)
    },
    ["Tuned Carburettor"] = {
        desc =
            "Despite being caked in dirt and oil, this carburettor has been well adjusted." ..
            list(
                b("Increases") .. " the Charge speed of the " .. i("Chainsaw") .. " by " .. clror("#charge") .. dot,
                b("Permanently reduces") .. " the default Movement speed to " .. clro("#speed") .. dot)
    },
	["Speed Limiter"] = {
        desc =
            "A mechanical device that limits the amount of fuel small engines can intake at one time, forcing a constant and safe speed." ..
            list(
                "Grants " .. clror("+100 %") .. " bonus Bloodpoints for " .. i("Chainsaw Hit") .. " Score Events in the " .. iconLink(ils.deviousness) .. " Category.",
                "Survivors hit with " .. i("Bubba's Chainsaw") .. " are only damaged for a single " .. iconLink("Health State") .. dot)
    },
    ["Cracked Primer Bulb"] = {
        desc =
            "A button that clears air from the fuel lines." .. br .. "This machine needs to be fed." ..
            list(
                b("Increases") .. " the Charge rate of the " .. i("Overdrive Meter") .. " by " .. clror("+15 %") .. dot,
                "Survivors hit with the " .. i("Chainsaw") .. " are only damaged for a single " .. iconLink("Health State") .. dot)
    },
    ["Thompson's Moonshine"] = {
        desc =
            "A strong beverage made from corn and a recipe passed down in the Thompson family." .. br .. "Instils rage and headache." ..
            list(
                b("Increases") .. " the Turn rate during a " .. i("Chainsaw Sprint") .. " by " .. clror("+44 %") .. dot,
                b("Increases") .. " the Cooldown duration of the " .. i("Chainsaw") .. " after hitting an obstacle by " .. clro("+28 %") .. dot)
    },
    
    -----------------
    --- THE NURSE ---
    -----------------
    
    ["Anxious Gasp"] = {
        desc =
            "The gasp of surprise collected from the asylum patient Mary Jenner, also known as the \"Anxious Girl\" that The Nurse was fond of." .. br .. "Twitches vigorously at The Nurse's touch." ..
            list("Coming within " .. clror("1 metre") .. " of Survivors while teleporting causes them to scream and reveal their location.",
                "Grants " .. clro("200") .. " Bloodpoints in the " .. iconLink(ils.deviousness) .. " Category.")
    },
    ["Ataxic Respiration"] = {
        desc =
            "The irregular and deteriorating breath collected from the asylum patient known as the \"Catatonic Boy\"." .. br .. "Normally stable and calm, it becomes incredibly agitated at The Nurse's touch." ..
            list(b("Reduces") .. " the duration of " .. i("Fatigue") .. " by " .. clror("-7 %") .. dot)
    },
    ["Bad Man Keepsake"] = {
        desc =
            "A rotten molar ripped from the \"Cataontic Boy's\" cold dead hand." .. br .. "Normally stable and calm, it becomes incredibly agitated at The Nurse's touch." ..
            list("Survivors hit with a " .. i("Special Attack") .. " have their " .. iconLink("Auras") .. " revealed to you, if they are healing or being healed within " .. clror("28 metres") .. " of your location for " .. clro("60 seconds") .. dot)
    },
    ['"Bad Man\'s" Last Breath'] = {
        desc =
            "A powerful last breath snatched from the asylum patient known as the \"Bad Man\"." .. br .. "In the hands of The Nurse, it jolts with intensity." ..
            list("Hitting Survivors with a " .. i("Special Attack") .. " grants the " ..states(ils.undetectable) .. " for " .. clror("25 seconds") .. dot) .. 
            i('"Bad Man\'s" Last Breath"') .. " has a cool-down of " .. clro("45 seconds") .. dot
    },
    ["Campbell's Last Breath"] = {
        desc =
            "A powerful last breath snatched from the asylum priest Father Campbell." .. br .. "In the hand of The Nurse, it crackles with intensity." ..
            list(
            	"Reappearing from a fully charged " .. i("Blink") .. ", you automatically " .. i("Blink") .. " at full charge in the direction you are facing.",
                nbullet .. "This requires that you have at least " .. clror("1 Charge") .. " left after the initial " .. i("Blink") .. dot)    
    },
    ["Catatonic Boy's Treasure"] = {
        desc =
            "A pine-cone which unexpectedly calmed a patient's repetitive movement." .. br .. "Taken from the \"Catatonic Boy's\" body." ..
            list(b("Reduces") .. " the additional " .. i("Fatigue") .. " applied by " .. i("Chain Blinks") .. " by " .. clror("-65 %") .. dot)   
    },
    ["Dark Cincture"] = {
        desc =
            "A black rope used as a belt in times of mourning." .. br .. "Taken from Father Campbell's body." ..
            list(b("Increases") .. " your Movement speed during the " .. i("Chain Blink Window") .. " by " .. clror("+30 %") .. dot)   
    },
    ["Dull Bracelet"] = {
        desc =
            "A worthless piece of jewellery that might have an important significance to someone." .. br .. "Taken from the \"Anxious Girl's\" body." ..
            list(
            	"Grants " .. clror("+100 %") .. " bonus Bloodpoints for " .. i("Precise Blink") .. " Score Events.",
                b("Reduces") .. " the maximum range of the " .. i("Blink") .. " by " .. clro("-20 %") .. dot)        
    },
    ["Fragile Wheeze"] = {
        desc =
            "The whistling and rattling breath stolen from Father Campbell." .. br .. "Silently curves and bends at The Nurse's touch." ..
            list("Survivors hit with a " .. i("Special Attack") .. " suffer from the " .. states(ils.mangled) .. " for " .. clror("70 seconds") .. dot)        
    },
    ["Heavy Panting"] = {
        desc =
            "The slow and bulging breath stolen from Harvey Kavanagh, the asylum's \"Fat Orderly\"." .. br .. "Dimly oscillates at The Nurse's touch." ..
            list(
            	b("Extends") .. " the Lunge duration of " .. i("Special Attacks") .. " to " .. clror("110 %") .. ", which " .. b("increases") .. " your Attack range by " .. clro("+10 %") .. dot,
            	nbullet .. "This effect only applies after the second or third " .. i("Blink") .. dot)       
    },
    ["Jenner's Last Breath"] = {
        desc =
            "A powerful last breath snatched from the asylum patient Mary Jenner, also known as the \"Anxious Girl\"." .. br .. "In the hands of The Nurse, it trembles with intensity." ..
            list(
            	"After exhausting all of your " .. i("Blinks") .. ", but before succumbing to " .. i("Fatigue") .. ", press the " .. loadoutStrings.activeAbilityButton .. " to immediately " .. i("Blink") .. " back to your starting location.",
                b("Recharges") .. " your Power by " .. clror("+1 Charge") .. dot)      
    },
    ["Kavanagh's Last Breath"] = {
        desc =
            "A powerful last breath snatched from the asylum orderly Harvey Kavanagh, also known as the \"Fat Orderly\"." .. br .. "In the hands of The Nurse, it wobbles with intensity." ..
            list("When succumbing to " .. i("Fatigue") .. ", all Survivors within " .. clror("8 metres") .. " of your location suffer from the " .. states(ils.blindness) .. " for " .. clro("60 seconds") .. dot)      
    },
    ["Matchbox"] = {
        desc =
            "A matchbox containing an odd collection of mismatched buttons." .. br .. "Serves as a reminder of a horrible place." ..
            list(
            	b("Increases") .. " your Movement speed to " .. clror("4.4 m/s") .. " for the entire Trial.",
                b("Restricts") .. " your Power to just " .. clro(1) .. space .. i("Blink") .. dot,
                nbullet .. "This cannot be altered by other Add-ons.")      
    },
    ["Metal Spoon"] = {
        desc =
            "A dull, partially rusted and stained metallic spoon." .. br .. "Confiscated from Room 202's patient, the \"Bad Man\"." ..
            list("Survivors hit by a " .. i("Special Attack") .. " have the volume of their " .. i("Grunts of Pain") .. space .. b("increased") .. " by " .. clror("+50 %") .. " for the next " .. clro("60 seconds") .. dot)      
    },
    ["Plaid Flannel"] = {
        desc =
            "A torn piece of red and black plaid flannel." .. br .. "The scrap of fabric imbues The Nurse with devastating focus." ..
            list("Unlocks the ability to see the Landing zone of the " .. i("Blink") .. dot)  
    },
    ["Pocket Watch (Spencer's Last Breath)"] = {
        desc =
            "A charred and broken pocket watch with rattling pieces." .. br .. "Taken from Nurse Moris' body." ..
            list(b("Increases") .. " the duration of the " .. i("Chain Blink Window") .. " by " .. clror("+0.2 seconds") .. dot)      
    },
    ["Spasmodic Breath"] = {
        desc =
            "The twitchy and tremulous breath stolen from the \"Bad Man\"." .. br .. "Aggressively pulses and jumps at The Nurse's touch." .. nlp ..
            "Hitting a Survivor with a " .. i("Special Attack") .. " causes the following effects for " .. clror("60 seconds") .. colon ..
            list(
            	b("Increases") .. " your Movement speed to " .. clror("4.6 m/s") .. dot,
                "Disables your Power.")      
    },
    ["Torn Bookmark"] = {
        desc =
            "A white and pristine piece of ribbon once attached to a sacred book." .. br .. "Serves as the symbol of a dispute." ..
            list(
            	b("Increases") .. " the number of available Power Tokens by " .. clror("+1") .. dot,
                b("Increases") .. " the Power Recharge time to " .. clro("130 %") .. dot)      
    },
    ["White Nit Comb"] = {
        desc =
            "A parasitic nit comb taken from the clinic." .. br .. "Once the symbol of a deep connection between an anxious patient and her nurse." ..
            list(
            	"Grants " .. clror("+100 %") .. " bonus Bloodpoints for " .. i("Blink Attack") .. " Score Events.",
                b("Reduces") .. " the Lunge duration of " .. i("Special Attacks") .. " by " .. clror("-0.15 seconds") .. ", which " .. b("reduces") .. " your Attack range by " .. clro("-50 %") .. dot)      
    },
    ["Wooden Horse"] = {
        desc =
            "An unpainted toy carved out of cheap wood to resemble a horse." .. br .. "Once the symbol of a deep connection between a catatonic patient and his nurse." ..
            list(b("Reduces") .. " the additional " .. i("Fatigue") .. " applied by missed " .. i("Special Attacks") .. " by " .. clror("-0.5 seconds") .. dot)      
    },
    
    -----------------
    --- THE SHAPE ---
    -----------------

	["Blond Hair"] = {
        desc =
            quote('A single slightly wavy blond hair.') .. nlp ..
            "While in " .. i("Stalker Mode") .. ", you benefit from the following effect:" ..
            list(
            	b("Increases") .. " the duration of " .. i("Scratch Marks") .. " and " .. i("Pools of Blood") .. " by " .. clror("#bonus") .. dot)
    },
    ["Boyfriend's Memo"] = {
        desc =
            quote('A "romantic", if slightly sleazy, note left around to draw the attention of a female lover.') .. nlp ..
            "Modifies the " .. i("Stalk") .. " ability with the following effect:" ..
            list(b("Increases") .. " the range of " .. i("Stalking") .. " by " .. clror("#bonus") .. dot) ..
            quote('The note is signed: D.')
    	
    },
    ["Dead Rabbit"] = {
        desc =
            quote('A grey rabbit which has been opened from neck to tail.') .. nlp ..
            "Adjusts the " .. iconLink(ils.terrorRadius) .. ", depending on the current Mode of " .. i("Evil Within") .. colon ..
            list(
            	bclr("faded jade", "Pursuer Mode") .. colon .. space .. b("Reduces") .. " it by " .. clror("#TR_minus") .. dot,
            	bclr("faded jade", "Evil Incarnate") .. colon .. space .. b("Increases") .. " it by " .. clro("#TR_plus") .. dot)
    },
    ["Fragrant Tuft of Hair"] = {
        desc =
            quote("A tuft of blond hair which was forcefully torn off someone's scalp." .. br .. "Releases hints of feminine floral fragrance.") .. nlp ..
            "During " .. i("Evil Incarnate") .. ", the following effects apply:" ..
            list(
            	"Survivors suffer from the " .. effects("addon", "Fragrant Tuft of Hair", ils.exposed) .. dot,
                b("Increases") .. " the Lunge Range by " .. clror("#bonus") .. dot,
                "Disables the " .. b("Slaughtering Strike") .. " ability.")
    },
    ["Glass Fragment"] = {
        desc =
            quote("A tiny piece of tinted glass, probably from a broken object." .. br .. "It is impossible to determine its origin.") .. nlp ..
            "Modifies " .. b("Slaughtering Strike") .. " with the following effects:" ..
            list(b("Increases") .. " the Movement speed of " .. b("Slaughtering Strike") .. " by " .. clror("#bonus") .. dot,
            	b("Decreases") .. " the Charge speed of " .. b("Slaughtering Strike") .. " by " .. clro("#penalty") .. dot)
    },
    ["Hair Bow"] = {
        desc =
            quote("A blue tartan ribbon used to tie hair.") .. nlp ..
            "Modifies " .. i("Evil Incarnate") .. " with the following effects:" ..
            list(
            	b("Increases") .. " the duration of " .. i("Evil Incarnate") .. " by " .. clror("#bonus") .. dot,
                b("Reduces") .. " the Power speed of " .. i("Stalking") .. " by " .. clro("#penaltyPercentage") .. dot)
    },
    ["Hair Brush"] = {
        desc =
            quote("A nylon bristle brush used to add body and softness to hair.") .. nlp ..
            "When " .. i("Evil Incarnate") .. " activates, " .. i("Hair Brush") .. " triggers its effect:" ..
            list(
            	b("Increases") .. " the Action speed of the next " .. iconLink(ils.pallet) .. " break action by " .. clror("#bonus") .. dot)
    },
    ["J. Myers Memorial"] = {
        desc =
            quote("A glossy page ripped from the " .. i("1965 Haddonfield High School") .. " yearbook, one dedicated to the memory of Judith Myers.") .. nlp ..
            "While in " .. i("Evil Incarnate") .. ", the following effect applies:" ..
            list(b("Increases") .. " the speed of Picking up and Hooking Survivors by " .. clror("#effect") .. dot)
    },
    ["Jewellery"] = {
        desc =
            quote("A large necklace made of beads an inexpensive metals." .. br .. "One of Judith's favourites.") .. nlp ..
            "When " .. i("Stalking") .. " stationary Survivors, you benefit from the following effect:" ..
            list(b("Increases") .. " the Power speed of " .. i("Stalking") .. " by " .. clror("#effect") .. dot)
    },
    ["Jewellery Box"] = {
        desc =
            quote("A barren wooden box in which vanity items were once stored.") .. nlp ..
            "Modifies the " .. i("Stalk") .. " ability with the following effect:" ..
            list(b("Increases") .. " the Power speed of " .. i("Stalking") .. " by " .. clror("#bonus") .. dot,
            	b("Decreases") .. " the range of " .. i("Stalking") .. " by " .. clro("#penalty") .. dot)
    },
    ["Judith's Journal"] = {
        desc =
            quote("A journal identified as owned by Judith M. Myers." .. br .. "Most of the pages are defaced with frightening and disturbing drawings.") .. nlp ..
            "While " .. i("Stalking") .. " the " .. ibil(ils.obsession) .. ", you benefit from the following effect:" ..
            list(b("Increases") .. " the Power speed of " .. i("Stalking") .. " by " .. clror("#effect") .. dot)
    },
    ["Judith's Tombstone"] = {
        desc =
            quote("A large and heavy granite tombstone stolen from Mt. Sinclair cemetery, belonging to Judith Myers.") .. nlp ..
            "Modifies " .. i("Evil Incarnate") .. " with the following effects:" ..
            list(
            	"Hooking a Survivor while in " .. i("Evil Incarnate") .. " will refresh its duration.",
            	"Caps the maximum duration of " .. i("Evil Incarnate") .. " at " .. clror("#cap") .. dot) ..
            quote("Here lies our beloved daughter.")
    },
    ["Lock of Hair"] = {
        desc =
            quote("A cut lock of blond hair bunched with a black elastic.") .. nlp ..
            "Unlocks the following ability while in " .. i("Evil Incarnate") .. colon ..
            list(
            	"Hold the " .. loadoutStrings.activeAbilityButton .. " to end " .. i("Evil Incarnate") .. " prematurely.",
                nbullet .. "This converts " .. clror("#convertPercent") .. " of the remaining duration into " .. i("Stalk") .. " progress.")
    },
    ["Memorial Flower"] = {
        desc =
            quote("A partially faded and dried pink larkspur picked up from a gravestone.") .. nlp ..
            "Modifies " .. i("Stalker Mode") .. " with the following effect:" ..
            list(b("Increases") .. " your Movement speed by " .. clror("#effect(1)") .. " to " .. clro("#effect(2)") .. dot)
    },
    ["Mirror Shard"] = {
        desc =
            quote("A large and sharp piece of a broken mirror.") .. nlp ..
            "Modifies " .. b("Slaughtering Strike") .. " with the following effects:" ..
            list(b("Increases") .. " the base duration of " .. b("Slaughtering Strike") .. " by " .. clror("#bonus") .. dot,
            	b("Decreases") .. " the charge speed of " .. b("Slaughtering Strike") .. " by " .. clro("#penalty") .. dot)
    },
    ["Reflective Fragment"] = {
        desc =
            quote("A tiny piece of a highly reflective material most probably from a broken mirror.") .. nlp ..
            "Modifies " .. b("Slaughtering Strike") .. " with the following effects:" ..
            list("Survivors hit by " .. b("Slaughtering Strike") .. " are only damaged for a single " .. iconLink("Health State") .. dot,
            	"Successful hits with " .. b("Slaughtering Strike") .. " instantly add " .. clror("#bonus") .. " to the duration of " .. i("Evil Incarnate") .. dot)
    },
    ["Scratched Mirror"] = {
        desc =
            quote("A standing portable vanity mirror which has been violently scratched with a sharp metallic object.") .. nlp ..
            "Unlocks potential in your Aura-reading ability while " .. i("Stalking") .. colon ..
            list("The " .. iconLink(ils.auras) .. " of all Survivors within " .. clror("#range") .. " of your location are revealed to you.") ..
            "Hitting Survivors with your " .. i("Basic Attack") .. " grants the following bonus Bloodpoints:" ..
            list(
            	iconLink(ils.brutality) .. space .. i("Scoring Category") .. colon .. space .. clro("#bonusBP(1)"),
            	iconLink(ils.deviousness) .. space .. i("Scoring Category") .. colon .. space .. clro("#bonusBP(2)")) .. 
            b("Evil Within") .. " loses the ability to exit " .. i("Stalker Mode") .. dot
    },
    ["Tacky Earrings"] = {
        desc =
            quote("A very cheap piece of jewellery made from plastic. Painted to resemble precious material.") .. nlp ..
            "Modifies " .. i("Evil Within") .. " with the following effect:" ..
            list(b("Increases") .. " your Movement speed while " .. i("Stalking") .. " by " .. clror("#effect") .. dot)
    },
    ["Tombstone Piece"] = {
        desc =
            quote("A fist-sized granite piece taken from a broken tombstone.") .. nlp ..
            "Activating " .. i("Evil Incarnate") .. " triggers the following effect:" ..
            list("Grants the " .. effects("addon", "Tombstone Piece", ils.undetectable) .. " for " .. clror("#duration") .. dot)
    },
    ["Vanity Mirror"] = {
        desc =
            quote("A standing portable vanity mirror in perfect condition except for a fine layer of dust and face powder covering it.") .. nlp ..
            "Modifies " .. i("Evil Incarnate") .. " with the following effect:" ..
            list("When " .. i("Evil Incarnate") .. " ends, the " .. iconLink(ils.auras) .. " of all Survivors are revealed to you for " .. clror("#duration") .. dot)
    },
    
    ---------------
    --- THE HAG ---
    ---------------
    
    ["Bloodied Mud"] = {
        desc =
            "A handful of mud with veins of deep crimson." .. nlp ..
            "The bloody layers empower the mud." ..
            list(b("Reduces") .. " the Trigger range of " .. b("Phantasm Traps") .. " by " .. clror("-30 %") .. dot)
    },
    ["Bloodied Water"] = {
        desc =
            "Tainted water contained in a folded water lily leaf." ..
            list(b("Reduces") .. " the Trigger range of " .. b("Phantasm Traps") .. " by " .. clror("-20 %") .. dot)
    },
    ["Bog Water"] = {
        desc =
            "Murky water contained in a glass pill bottle from another time." ..
            list(b("Reduces") .. " the Trigger range of " .. b("Phantasm Traps") .. " by " .. clror("-10 %") .. dot)
    },
    ["Cracked Turtle Egg"] = {
        desc =
            "A pale orange turtle egg, cracked and emptied of its content." ..
            list(b("Increases") .. " the Tripped duration of " .. b("Phantasm Traps") .. " by " .. clror("+30 %") .. dot)
    },
    ["Cypress Necklet"] = {
        desc =
            "A rigid ornament worn around the neck made from dead plants adorned with crudely attached cypress bark and swamp moss." ..
            list(b("Increases") .. " the Setting speed of " .. b("Phantasm Traps") .. " by " .. clror("+15 %") .. dot)
    },
    ["Dead Fly Mud"] = {
        desc =
            "A small lump of mud, black with the remains of flies." .. br .. "Devoured to increase stamina." ..
            list(b("Increases") .. " the Teleport range to tripped " .. b("Phantasm Traps") .. " by " .. clror("+10 %") .. dot)
    },
    ["Disfigured Ear"] = {
        desc =
            "The cannibal village deaf boy's ear." .. br .. "Deformed due to several hits to the head." .. br .. "The trapped life essence within unlocks tremendous potential in The Hag's power:" .. nlp ..
            "Triggering a " .. b("Phantasm Trap") .. " inflicts the following effect on Survivors:" ..
            list("Causes them to suffer from the " .. effects("addon", "Disfigured Ear", ils.deafened) .. " for " .. clror("#deafened") .. dot)
    },
    ["Dragonfly Wings"] = {
        desc =
            "A handful of yellowish wings, dry and crisp." .. br .. "Devoured to increase stamina." ..
            list(b("Increases") .. " the Teleport range to tripped " .. b("Phantasm Traps") .. " by " .. clror("+12.5 %") .. dot)
    },
    ["Dried Cicada"] = {
        desc =
            "A large swamp cicada covered in a fine layer of ash; crispy." .. br .. "Devoured to increase stamina." ..
            list(b("Increases") .. " the Teleport range to tripped " .. b("Phantasm Traps") .. " by " .. clror("+15 %") .. dot)
    },
    ["Grandma's Heart"] = {
        desc =
            "The cold heart of the cannibal village elder." .. br .. "The trapped life essence within unlocks tremendous potential in The Hag's power." .. nlp ..
            "Whenever Survivors trigger " .. b("Phantasm Traps") .. ", you benefit from the following effects for their tripped duration:" ..
            list(
                b("Suppresses") .. " your " .. iconLink(ils.terrorRadius) .. dot,
                b("Increases") .. " the " .. i("Fake Terror Radius") .. " of the " .. b("Mud Phantasms") .. " by " .. clror("+16 metres") .. dot
            ) ..
            quote("Bring me another slice of the girl.", "Grandma")
    },
    ["Half Eggshell"] = {
        desc =
            "One half of a perfectly round hollow eggshell." ..
            list(b("Increases") .. " the Tripped duration of " .. b("Phantasm Traps") .. " by " .. clror("+25 %") .. dot)
    },
    ["Mint Rag"] = {
        desc =
            "A small piece of cotton torn from the dress worn by Lisa Sherwood on the day she disappeared." .. br .. "The trapped life essence within unlocks tremendous potential in The Hag's power." ..
            list("Press the " .. loadoutStrings.activeAbilityButton .. " to teleport to any untripped " .. b("Phantasm Trap") .. " anywhere in the environment.") ..
            i("Mint Rag") .. " has a cool-down of " .. clror("10 seconds") .. dot
    },      
    ["Powdered Eggshell"] = {
        desc =
            "Minuscule eggshell fragments shimmering with a pale golden hue." ..
            list(b("Increases") .. " the Tripped duration of " .. b("Phantasm Traps") .. " by " .. clror("+20 %") .. dot)
    },
    ["Pussy Willow Catkins"] = {
        desc =
            "A handful of small, pristine flower clusters covered in a fine greyish fur." ..
            list("The " .. iconLink(ils.auras) .. " of Survivors tripping " .. b("Phantasm Traps") .. " are revealed to you for " .. clror("3 seconds") .. dot)
    },
    ["Rope Necklet"] = {
        desc =
            "A rigid ornament worn around the neck made from dead plants." ..
            list(b("Increases") .. " the Setting speed of " .. b("Phantasm Traps") .. " by " .. clror("+10 %") .. dot)
    },
    ["Rusty Shackles"] = {
        desc =
            "Shackles once used to hold prisoners and carcasses in the cannibal village cellar." .. br .. "The trapped life essence within unlocks tremendous potential in The Hag's power." ..
            list(
                b("Suppresses") .. " any indication to Survivors that they tripped " .. b("Phantasm Traps") .. dot,
                b("Suppresses") .. " the creation of " .. b("Mud Phantasms") .. dot)
    },
    ["Scarred Hand"] = {
        desc =
            "The cut up, severed hand of the cannibal village butcher." .. br .. "The trapped life essence within unlocks tremendous potential in The Hag's power." ..
            list(
                "Grants collision with Survivors to both " .. b("Phantasm Traps") .. " and the " .. b("Mud Phantasms") .. dot,
                "Grants " .. clror("+300 %") .. " bonus Bloodpoints in the " .. iconLink(ils.deviousness) .. " Category.",
                "Disables your ability to teleport to tripped " .. b("Phantasm Traps") .. dot) ..
            i("Scarred Hand") .. " trumps all other Add-ons." .. nlp ..
            quote("...", "The Butcher")
    },
    ["Swamp Orchid Necklet"] = {
        desc =
            "A rigid ornament worn around the neck made from dead plants adorned with withered orchid petals and leaves." ..
            list(b("Increases") .. " the Setting speed of " .. b("Phantasm Traps") .. " by " .. clror("+20 %") .. dot)
    },
    ["Waterlogged Shoe"] = {
        desc =
            "A child's shoe, long lost in the bog's waters." .. br .. "The trapped life essence within unlocks tremendous potential in The Hag's power." ..
            list(
                b("Permanently increases") .. " the default Movement speed by " .. clror("+7.5 %") .. " to " .. clro("4.73 m/s") .. dot,
                "Survivors suffer from a " .. clro("-9 %") .. space .. states(ils.hindered) .. " within the Trigger range of " .. b("Phantasm Traps") .. dot,
                "Disables your ability to teleport to tripped " .. b("Phantasm Traps") .. dot)
    },
    ["Willow Wreath"] = {
        desc =
            "Three frail willow branches attached to form a triangular wreath." ..
            list("The " .. iconLink(ils.auras) .. " of Survivors tripping " .. b("Phantasm Traps") .. " are revealed to you for " .. clror("5 seconds") .. dot)
    },

    ------------------
    --- THE DOCTOR ---
    ------------------

    ['"Calm" - Class I'] = {
        desc =
            "An ECT procedure using a deep wavelength that soothes various mental illnesses." .. br .. "With " .. i("Carter's Spark") .. " as its source, this procedure can cause mild anxiety in the patient." ..
            list(
            	b("Increases") .. " your " .. iconLink(ils.terrorRadius) .. " by " .. clror("+4 metres") .. " while " .. i("Static Blast") .. " is ready to be used.",
            	b("Reduces") .. " your Terror Radius by " .. clro("-4 metres") .. " while " .. i("Static Blast") .. " is on cool-down.") ..
            "Survivors affected by " .. ibil("Madness") .. " suffer from the " .. i("Affliction of Calm") .. colon ..
            list(
            	i(b("Madness II")) .. colon .. " Survivors intermittently hear a distant " .. i(b("Illusionary Terror Radius")) .. dot,
            	i(b("Madness III")) .. colon .. " Survivors constantly hear a distant " .. i(b("Illusionary Terror Radius")) .. dot)
    },
    ['"Calm" - Class II'] = {
        desc =
            "A risky ECT procedure using a deep wavelength that soothes various mental illnesses." .. br .. "With " .. i("Carter's Spark") .. " as its source, this procedure can cause moderate anxiety in the patient." ..
            list(
            	b("Increases") .. " your " .. iconLink(ils.terrorRadius) .. " by " .. clror("+6 metres") .. " while " .. i("Static Blast") .. " is ready to be used.",
            	b("Reduces") .. " your Terror Radius by " .. clro("-6 metres") .. " while " .. i("Static Blast") .. " is on cool-down.") ..
            "Survivors affected by " .. ibil("Madness") .. " suffer from the " .. i("Affliction of Calm") .. colon ..
            list(
            	i(b("Madness II")) .. colon .. " Survivors intermittently hear a distant " .. i(b("Illusionary Terror Radius")) .. dot,
            	i(b("Madness III")) .. colon .. " Survivors constantly hear a distant " .. i(b("Illusionary Terror Radius")) .. dot)
    },
    ['"Calm" - Carter\'s Notes'] = {
        desc =
            "An experimental version of the ECT procedure annotated by Doctor Herman Carter himself." .. br .. "Uses a deep wavelength that soothes various mental illnesses." .. br .. "With " .. i("Carter's Spark") .. " as its source, this procedure causes uncontrollable fear and anxiety in the patient." ..
            list(
            	b("Increases") .. " your " .. iconLink(ils.terrorRadius) .. " by " .. clror("+8 metres") .. " while " .. i("Static Blast") .. " is ready to be used.",
            	b("Reduces") .. " your Terror Radius by " .. clro("-8 metres") .. " while " .. i("Static Blast") .. " is on cool-down.") ..
            "Survivors affected by " .. ibil("Madness") .. " suffer from the " .. i("Affliction of Calm") .. colon ..
            list(
            	i(b("Madness II")) .. colon .. " Survivors intermittently hear a distant " .. i(b("Illusionary Terror Radius")) .. dot,
            	i(b("Madness III")) .. colon .. " Survivors constantly hear a distant " .. i(b("Illusionary Terror Radius")) .. dot) ..
            quote("Higher quality seizures trigger catatonia. At least it gives me " .. b("peace") .. " for the time it lasts.", "Herman Carter")
    },
    ['"Discipline" - Class II'] = {
        desc =
            i("Project Awakening") .. " ECT procedure for disciplinary action which uses a fixed dose at high voltage." .. br .. "Can cause a state of moderate paranoia in the patient." ..
            list(b("Reduces") .. " the Detonation delay of the " .. i("Shock Therapy Attack") .. " by " .. clror("-0.06 seconds") .. dot) ..
            "Survivors affected by " .. ibil("Madness") .. " suffer from the " .. i("Affliction of Discipline") .. colon ..
            list(
            	i(b("Madness II")) .. colon .. " During a Chase, Survivors perceive an " .. i(b("Illusionary Red Stain and Terror Radius")) .. ", as if you were constantly right behind them.",
            	nbullet .. "This effect lingers for " .. clro("6 seconds") .. " after the Chase ends.",
            	i(b("Madness III")) .. colon .. " In any situation, Survivors perceive an " .. i(b("Illusionary Red Stain and Terror Radius")) .. ", as if you were constantly right behind them.") ..
            "You share into your patients' " .. i(b("Madness")) .. " and can see the " .. i(b("Illusionary Red Stain")) .. dot .. nlp ..
            quote("We re-educate our patients with the greatest care.", "Léry's Memorial Institute")
    },
    ['"Discipline" - Class III'] = {
        desc =
            i("Project Awakening") .. " ECT procedure for disciplinary action which uses a fixed dose at very high voltage." .. br .. "Can cause a state of serious paranoia in the patient." ..
            list(b("Reduces") .. " the Detonation delay of the " .. i("Shock Therapy Attack") .. " by " .. clror("-0.08 seconds") .. dot) ..
            "Survivors affected by " .. ibil("Madness") .. " suffer from the " .. i("Affliction of Discipline") .. colon ..
            list(
            	i(b("Madness II")) .. colon .. " During a Chase, Survivors perceive an " .. i(b("Illusionary Red Stain and Terror Radius")) .. ", as if you were constantly right behind them.",
            	nbullet .. "This effect lingers for " .. clro("6 seconds") .. " after the Chase ends.",
            	i(b("Madness III")) .. colon .. " In any situation, Survivors perceive an " .. i(b("Illusionary Red Stain and Terror Radius")) .. ", as if you were constantly right behind them.") ..
            "You share into your patients' " .. i(b("Madness")) .. " and can see the " .. i(b("Illusionary Red Stain")) .. dot .. nlp ..
            quote("Respect of our patients is at the core of our principles.", "Léry's Memorial Institute")
    },
    ['"Discipline" - Carter\'s Notes'] = {
        desc =
            i("Project Awakening") .. " ECT procedure for disciplinary action, annotated by Doctor Herman Carter himself." .. br .. "The intolerably high voltage leaves the patient in a severe state of paranoia." ..
            list(b("Reduces") .. " the Detonation delay of the " .. i("Shock Therapy Attack") .. " by " .. clror("-0.1 seconds") .. dot) ..
            "Survivors affected by " .. ibil("Madness") .. " suffer from the " .. i("Affliction of Discipline") .. colon ..
            list(
            	i(b("Madness II")) .. colon .. " During a Chase, Survivors perceive an " .. i(b("Illusionary Red Stain and Terror Radius")) .. ", as if you were constantly right behind them.",
            	nbullet .. "This effect lingers for " .. clro("6 seconds") .. " after the Chase ends.",
            	i(b("Madness III")) .. colon .. " In any situation, Survivors perceive an " .. i(b("Illusionary Red Stain and Terror Radius")) .. ", as if you were constantly right behind them.") ..
            "You share into your patients' " .. i(b("Madness")) .. " and can see the " .. i(b("Illusionary Red Stain")) .. dot .. nlp ..
            quote("To avoid relapse from our most tenacious subjects, use " .. b("maximum") .. " levels when proceeding with disciplinary actions.", "Herman Carter")
    },
    ["High Stimulus Electrode"] = {
        desc =
            "An experimental electrode that can withstand very high charges for a longer period of time." ..
            list(b("Extends") .. " the " .. i("Area of Effect") .. " of the " .. i("Shock Therapy Attack") .. " by " .. clror("+4 metres") .. dot)
    },
    ["Interview Tape"] = {
        desc =
            "A compact cassette from " .. i("Project Awakening") .. " containing an unedited interview of a victim." .. br .. "Opens The Doctor's mind to alternate treatment methods." ..
            list("Reshapes the " .. i("Area of Effect") .. " of the " .. i("Shock Therapy Attack") .. " from a cone into a narrow beam that is " .. clror("2 metres") .. " wide and " .. clro("24 metres") .. " long.")
    },
    ["Iridescent King"] = {
        desc =
            "A glass-like king chess piece moulded from The Fog itself." .. br .. "The Entity's trace reverberating within can break the most powerful minds." .. nlp ..
            "Survivors affected by " .. ibil("Madness") .. " suffer simultaneously from the " .. i("Afflictions of Calm, Discipline, Order, and Restraint") .. colon ..
            list(
            	"Survivors intermittently hear a distant " .. i(b("Illusionary Terror Radius")) .. dot,
            	"During a Chase, Survivors perceive an " .. i(b("Illusionary Red Stain and Terror Radius")) .. ", as if you were constantly right behind them.",
            	nbullet .. i(b("Madness II")) .. colon .. " This effect lingers for " .. clror("6 seconds") .. " after the Chase ends.",
            	nbullet .. i(b("Madness III")) .. colon .. " This effect is constant, regardless of whether the Survivors are being chased or not.",
            	b("Broken Pallets") .. " are randomly replaced by dropped or upright " .. i(b("Illusionary Pallets")) .. ", which persist until approached by Survivors.",
            	nbullet .. "New " .. i(b("Illusionary Pallets")) .. " are generated every " .. clro("20 seconds") .. dot,
            	b("Increases") .. " the duration of " .. i(b("Illusionary Doctors")) .. " by " .. clro("+6 seconds") .. dot) .. 
            "You share into your patients' " .. i(b("Madness")) .. " and can see the " .. i(b("Illusionary Doctors, Red Stain, and Pallets")) .. dot .. nlp ..
            quote("Gazing into the iridescent glass is plunging one's self into madness.", "Herman Carter")
            
    }, 
    ["Iridescent Queen"] = {
        desc =
            "A glass-like queen chess piece moulded from The Fog itself." .. br .. "It cannot be touched without receiving a considerable jolt of electricity." .. nlp ..
            "Survivors struck by either the " .. i("Shock Therapy Attack") .. " or a "  .. i("Static Blast") .. " acquire a lingering " .. i("Static Charge") .. ", unless they are within " .. clror("4 metres") .. " of another Survivor:" ..
            list(
            	"The " .. i("Static Charge") .. " remains with the Survivor until it is discharged.",
            	i("Charged Survivors") .. " who come within " .. clro("4 metres") .. " of another Survivor trigger an automatic " .. i("Shock Therapy Attack") .. ", shocking both Survivors and automatically discharging any remaining " .. i("Static Charges") .. dot) ..
            quote("Once we have established an effective method of treatment, we can focus on its efficient means of delivery.", "Herman Carter")
            
    }, 
    ["Maple Knight"] = {
        desc =
            "A white knight chess piece made of maple." .. br .. "This gift from an old man brings back distant memories and imbues The Doctor with devastating focus." .. 
            list("Grants the ability to see the " .. i("Area of Effect") .. " of the " .. i("Shock Therapy Attack") .. dot)
            
    }, 
    ["Mouldy Electrode"] = {
        desc =
            "A mouldy electrode which can nevertheless conduct a weak electrical current." ..
            list(b("Extends") .. " the " .. i("Area of Effect") .. " of the " .. i("Shock Therapy Attack") .. " by " .. clror("+2 metres") .. dot)
    },
    ['"Obedience" - Class III'] = {
        desc =
            "An experimental ECT procedure developed within The Fog, crudely annotated." .. br .. "The extra surge of power causes extreme muscle tension which depletes the patient's energy." ..
            list(b("Increases") .. " the duration of " .. i("Snap Out of It") .. " by " .. clror("+2 seconds") .. dot) ..
            "Survivors affected by " .. ibil("Madness") .. " suffer from the " .. i("Affliction of Obedience") .. colon ..
            list(iconLink(ils.skillChecks) .. " have a chance to rotate counter-clockwise.") ..
            quote("BREAK THEIR IMPURE BODIES", "Unsigned Notes by Herman Carter")
    },
    ['"Order" - Class I'] = {
        desc =
            "A conventional ECT procedure, part of a patient's daily routine at the Léry's Memorial Institute." .. br .. "Can cause a state of mild confusion in the patient." ..
            list(b("Reduces") .. " the Cool-down duration of " .. i("Static Blast") .. " by " .. clror("-2 seconds") .. dot) ..
            "Survivors affected by " .. ibil("Madness") .. " suffer from the " .. i("Affliction of Order") .. colon ..
            list(
            	b("Broken Pallets") .. " are randomly replaced by dropped or upright " .. i(b("Illusionary Pallets")) .. ", which persist until approached by Survivors.",
            	nbullet .. "New " .. i(b("Illusionary Pallets")) .. " are generated every " .. clro("20 seconds") .. dot) ..
            "You share into your patients' " .. i(b("Madness")) .. " and can see the " .. i(b("Illusionary Pallets")) .. dot
    },
    ['"Order" - Class II'] = {
        desc =
            "A high stimulus ECT procedure, part of a patient's daily routine at the Léry's Memorial Institute." .. br .. "Can cause a state of moderate confusion in the patient." ..
            list(b("Reduces") .. " the Cool-down duration of " .. i("Static Blast") .. " by " .. clror("-2.5 seconds") .. dot) ..
            "Survivors affected by " .. ibil("Madness") .. " suffer from the " .. i("Affliction of Order") .. colon ..
            list(
            	b("Broken Pallets") .. " are randomly replaced by dropped or upright " .. i(b("Illusionary Pallets")) .. ", which persist until approached by Survivors.",
            	nbullet .. "New " .. i(b("Illusionary Pallets")) .. " are generated every " .. clro("20 seconds") .. dot) ..
            "You share into your patients' " .. i(b("Madness")) .. " and can see the " .. i(b("Illusionary Pallets")) .. dot .. nlp ..
            quote("Side effects are very rare.", "Léry's Memorial Institute")
    },
    ['"Order" - Carter\'s Notes'] = {
        desc =
            "An experimental version of the ECT procedure, annotated by Doctor Herman Carter himself." .. br .. "The long, constant stimulus leaves the patient in a state of severe confusion." ..
            list(b("Reduces") .. " the Cool-down duration of " .. i("Static Blast") .. " by " .. clror("-3 seconds") .. dot) ..
            "Survivors affected by " .. ibil("Madness") .. " suffer from the " .. i("Affliction of Order") .. colon ..
            list(
            	b("Broken Pallets") .. " are randomly replaced by dropped or upright " .. i(b("Illusionary Pallets")) .. ", which persist until approached by Survivors.",
            	nbullet .. "New " .. i(b("Illusionary Pallets")) .. " are generated every " .. clro("20 seconds") .. dot) ..
            "You share into your patients' " .. i(b("Madness")) .. " and can see the " .. i(b("Illusionary Pallets")) .. dot .. nlp ..
            quote("The stimulus must be kept active at a " .. b("convulsive") .. " level.", "Herman Carter")
    },
    ["Polished Electrode"] = {
        desc =
            "A like-new standard electrode equipment to conduct electro-convulsive treatments." ..
            list(b("Extends") .. " the " .. i("Area of Effect") .. " of the " .. i("Shock Therapy Attack") .. " by " .. clror("+3 metres") .. dot)
    },
    ['"Restraint" - Class II'] = {
        desc =
            "An experimental ECT procedure developed within The Fog." .. br .. "Uses a wavelength that links the patient's and The Doctor's minds." .. br .. "This procedure is known to cause mild cases of hallucination in the patient." ..
            list("The " .. iconLink(ils.auras) .. " of Survivors who have their " .. ibil("Madness") .. " increased by one Tier are revealed to you for " .. clror("1 second") .. dot) ..
            "Survivors affected by " .. i(b("Madness")) .. " suffer from the " .. i("Affliction of Restraint") .. colon ..
            list(b("Increases") .. " the duration of " .. i(b("Illusionary Doctors")) .. " by " .. clro("+6 seconds") .. dot) ..
            "You share into your patients' " .. i(b("Madness")) .. " and can see the " .. i(b("Illusionary Doctors")) .. dot
    },
    ['"Restraint" - Class III'] = {
        desc =
            "An experimental ECT procedure developed within The Fog." .. br .. "Uses a high stimulus wavelength to link the patient's and The Doctor's minds." .. br .. "This procedure is known to cause serious cases of hallucinations in the patient." ..
            list("The " .. iconLink(ils.auras) .. " of Survivors who have their " .. ibil("Madness") .. " increased by one Tier are revealed to you for " .. clror("2 seconds") .. dot) ..
            "Survivors affected by " .. i(b("Madness")) .. " suffer from the " .. i("Affliction of Restraint") .. colon ..
            list(b("Increases") .. " the duration of " .. i(b("Illusionary Doctors")) .. " by " .. clro("+6 seconds") .. dot) ..
            "You share into your patients' " .. i(b("Madness")) .. " and can see the " .. i(b("Illusionary Doctors")) .. dot
    },
    ['"Restraint" - Carter\'s Notes'] = {
        desc =
            "An experimental ECT procedure developed within The Fog, crudely annotated." .. br .. "Uses an unbearable stimulus wavelength to link the patient's and The Doctor's minds." .. br .. "This procedure is known to cause severe cases of hallucinations in the patient." ..
            list("The " .. iconLink(ils.auras) .. " of Survivors who have their " .. ibil("Madness") .. " increased by one Tier are revealed to you for " .. clror("3 seconds") .. dot) ..
            "Survivors affected by " .. i(b("Madness")) .. " suffer from the " .. i("Affliction of Restraint") .. colon ..
            list(b("Increases") .. " the duration of " .. i(b("Illusionary Doctors")) .. " by " .. clro("+6 seconds") .. dot) ..
            "You share into your patients' " .. i(b("Madness")) .. " and can see the " .. i(b("Illusionary Doctors")) .. dot .. nlp ..
            quote("I CAN SEE THEIR DISGUSTING " .. b("ILLNESSES") .. dot, "unsighned Notes, likely Herman Carter")
    },
    ["Scrapped Tape"] = {
        desc =
            "A compact cassette from " .. i("Project Awakening") .. " containing mostly white noise." .. br .. "Opens The Doctor's mind to alternate treatment methods." ..
            list(
            	"Reshapes the " .. i("Area of Effect") .. " of the " .. i("Shock Therapy Attack") .. " from a cone into a hollow ring which is placed " .. clror("8 metres") .. " in front of " .. b("The Doctor") .. dot,
            	nbullet .. "The ring has a radius of " .. clro("4 metres") .. " a thickness of " .. clro("1 metre") .. dot)
    },   

	--------------------
    --- THE HUNTRESS ---
    --------------------
    
    ["Amanita Toxin"] = {
        desc =
            "A toxin from the Amanita mushroom, applied to the Hatchet's blade." .. br .. "It numbs the mind." ..
            list("Survivors hit by " .. b("Hatchets") .. " suffer from the " .. states(ils.blindness) .. " for " .. clror("60 seconds") .. dot)
    },
    ["Bandaged Haft"] = {
        desc =
            "First-aid bandages securely rolled and attached to the Hatchet's haft." ..
            list(b("Reduces") .. " the Cool-down duration between successive " .. b("Hatchet") .. " throws by " .. clror("-10 %") .. dot)
    },
    ["Begrimed Head"] = {
        desc =
            "This Hatchet head is stained with a foul substance that afflicts anyone who it touches with debilities." ..
            list("Survivors hit by " .. b("Hatchets") .. " suffer from the " .. states(ils.haemorrhage, ils.mangled) .. " for " .. clror("80 seconds") .. dot)
    },  
    ["Berus Toxin"] = {
        desc =
            "A toxin from the Berus Snake, applied to the Hatchet's blade." .. br .. "In such small quantities, it merely causes tiredness." ..
            list("Survivors hit by " .. b("Hatchets") .. " suffer from the " .. states(ils.exhausted) .. " for " .. clror("30 seconds") .. dot)
    }, 
    ["Coarse Stone"] = {
        desc =
            "This stone is too coarse to do any good." .. br .. "A blade damaged by it inflicts awful open wounds." ..
            list(b("Increases") .. " the volume of " .. i("Grunts of Pain") .. " of injured Survivors hit by " .. b("Hatchets") .. " by " .. clror("+50 %") .. dot)
    }, 
    ["Deerskin Gloves"] = {
        desc =
            "Cured leather gloves that protect the hands and give a sure grip." ..
            list(b("Reduces") .. " the Reload time of " .. b("Hatchets") .. " at " .. iconLink(ils.lockers) ..  "to ".. clror("#effect") .. " of its default value.")
    }, 
    ["Fine Stone"] = {
        desc =
            "This puck-shaped honing tool can be used to sharpen the Hatchet's blade, causing it to inflict clean wounds." ..
            list("Survivors hit by " .. b("Hatchets") .. " suffer from the " .. states(ils.haemorrhage) .. " for " .. clror("60 seconds") .. dot)
    }, 
    ["Flower Babushka"] = {
        desc =
            "A clean and colourful handkerchief adorned with a flower pattern." .. br .. "This memory of a lost little one fills The Huntress with rage and focus." ..
            list(b("Reduces") .. " the Wind-up time of " .. b("Hatchets") .. " by " .. clror("#effect") .. dot)
    },
    ["Glowing Concoction"] = {
        desc =
            "An otherworldly concoction that faintly glows a foreboding light." ..
            list("Survivors hit by " .. b("Hatchets") .. " have their " .. iconLink(ils.aura) .. " revealed to you for " .. clror("5 seconds") .. dot)
    },
    ["Infantry Belt"] = {
        desc =
            "A sturdy utility belt pillaged from a soldier." .. br .. "He was quick in combat, but she was quicker." ..
            list("Successfully hitting a Survivor with a " .. b("Hatchet") .. " grants a " .. clror("+3 %") .. space .. states(ils.haste) .. " for " .. clro("5 seconds") .. dot)
    },
    ["Iridescent Head"] = {
        desc =
            "A glass-like Hatchet head moulded from The Fog itself." .. br .. "The blade is warm and reverberating with The Entity's power." ..
            list(
            	"Survivors hit by " .. b("Hatchets") .. " are automatically put into the " .. iconLink(ils.dyingState) .. dot,
            	b("Reduces") .. " the number of carried " .. b("Hatchets") .. " to " .. clror(1) .. dot) ..
            quote("The iridescent glass cuts through flesh and soul.")
    },
    ["Leather Loop"] = {
        desc =
            "The right tool in the right hands is key to a successful hunt." ..
            list("Successfully hitting a Survivor with a " .. b("Hatchet") .. " grants a " .. clror("+2 %") .. space .. states(ils.haste) .. " for " .. clro("5 seconds") .. dot)
    },
    ["Manna Grass Braid"] = {
        desc =
            "A circular decorative braid made from manna grass." .. br .. "This memory of a lost little one fills The Huntress with rage and focus." ..
            list(b("Reduces") .. " the Wind-up time of " .. b("Hatchets") .. " by " .. clror("-8 %") .. dot)
    },
    ["Oak Haft"] = {
        desc =
            "A polished haft which allows for a quick and sly manipulation of the deadly tool." ..
            list(b("Reduces") .. " the Cool-down duration between successive " .. b("Hatchet") .. " throws by " .. clror("-20 %") .. dot)
    },
    ["Pungent Phial"] = {
        desc =
            "The clear liquid has a very particular stench that can be recognised and tracked by some animals." ..
            list(
            	"Grants the ability to see the " .. iconLink(ils.auras) .. " of the spare " .. b("Hatchets") .. " located inside " .. iconLink(ils.lockers) .. " when within " .. clror("36 metres") .. " at all times.")
    },
    ["Rose Root"] = {
        desc =
            "Dried petals that relieve symptoms of fatigue and overexertion when brewed in a tea." ..
            list(b("Increases") .. " the Projectile speed of " .. b("Hatchets") .. " by " .. clror("+20 %") .. dot)
    },
    ["Rusty Head"] = {
        desc =
            "This Hatchet head is covered with crusty and volatile rust spots that make injuries particularly difficult to heal from." ..
            list("Survivors hit by " .. b("Hatchets") .. " suffer from the " .. states(ils.mangled) .. " for " .. clror("70 seconds") .. dot)
    },  
    ["Shiny Pin"] = {
        desc =
            "A copper pin defaced beyond recognition yet polished to a high sheen." .. br .. "Pillaged from a particularly difficult prey." ..
            list(b("Increases") .. " the Movement speed while winding " .. b("Hatchets") .. " up by " .. clror("+5 %") .. dot)
    },  
    ["Soldier's Puttee"] = {
        desc =
            "A wrap taken from a dead soldier." .. br .. "It provides protection and support to the ankle and lower leg." ..
            list(b("Increases") .. " the Movement speed of " .. b("The Huntress") .. " to " .. clror("4.6 m/s") .. " while out of " .. b("Hatchets") .. dot)
    }, 
    ["Venomous Concoction"] = {
        desc =
            "A toxic concoction, applied to the Hatchet's blade." .. br .. "The murky concoction is mainly composed of Berus Snake venom, which gives it fatiguing capabilities." ..
            list("Survivors hit by " .. b("Hatchets") .. " suffer from the " .. states(ils.exhausted) .. " for " .. clror("5 seconds") .. dot)
    },  
    ["Yellowed Cloth"] = {
        desc =
            "A simple scrap of material to tend to blisters and wipe the puss away." ..
            list(b("Increases") .. " the Projectile speed of " .. b("Hatchets") .. " by " .. clror("+10 %") .. dot)
    },  
    ["Yew Seed Brew"] = {
        desc =
            "A toxic brew, applied to the Hatchet's blade." .. br .. "The thick brew is mainly composed of Yew Seeds, which give it paralytic capabilities." ..
            list("Survivors hit by " .. b("Hatchets") .. " suffer from a " .. clror("-3 %") .. space .. states(ils.hindered) .. " for " .. clro("15 seconds") .. dot)
    },  
    ["Yew Seed Concoction"] = {
        desc =
            "A toxic concoction, applied to the Hatchet's blade." .. br .. "The muddy concoction is mainly composed of Yew Seeds, which give it paralytic capabilities." ..
            list("Survivors hit by " .. b("Hatchets") .. " suffer from a " .. clror("-3 %") .. space .. states(ils.hindered) .. " for " .. clro("30 seconds") .. dot)
    },  
    ["Weighted Head"] = {
        desc =
            "An oddly weighted Hatchet head, crafted to deliver a hard blow to its target." .. br .. "It requires a wielder with a strong arm." ..
            list("Survivors hit by " .. b("Hatchets") .. " suffer from the " .. states(ils.incapacitated) .. " for " .. clror("10 seconds") .. dot)
    },
    ["Wooden Fox"] = {
        desc =
            "Roughly carved, this fox statuette is no more than a few inches." .. br .. "A reminder that stealth and cunning is as effective as raw power." ..
            list("Grants the " .. states(ils.undetectable) .. " after reloading at " .. iconLink(ils.lockers) .. " for " .. clror("30 seconds") .. dot)
    },

    --------------------
    --- THE CANNIBAL ---
    --------------------
    
    ["Award-winning Chilli"] = {
        desc =
            "A big bowl of spicy Chilli made famous thanks to prime meat." ..
            list(
            	b("Increases") .. " the duration of the " .. i("Chainsaw Dash") .. " by " .. clror("+0.2 seconds") .. " per consumed Token.",
            	b("Increases") .. " the duration of the " .. i("Chainsaw Dash Window") .. " by " .. clro("+0.2 seconds") .. dot) ..
            quote("The secret's in the meat", "Drayton Sawyer")
    },
    ["Begrimed Chains (Bubba's Chainsaw)"] = {
        desc =
            "This chain is stained with a foul substance that debilitates anyone it touches." ..
            list("Causes Survivors hit by " .. i("Bubba's Chainsaw") .. " to drop any carried " .. iconLink(ils.item) .. dot)
    },
    ["Carburettor Tuning Guide"] = {
        desc =
            "A crudely drawn guide to properly adjust and tune a Chainsaw carburettor." .. nlp ..
            "Starting a " .. i("Chainsaw Dash") .. " automatically consumes all available Power Tokens, combining their durations:" ..
            list(
            	b("Increases") .. " the duration of the " .. i("Chainsaw Dash") .. " by " .. clror("#dash") .. " per Token.",
            	b("Reduces") .. " the Movement speed during the " .. i("Chainsaw Dash") .. " by " .. clro("#speed") .. dot)
    },
    ["Chainsaw File"] = {
        desc =
            "A file whose purpose is to hone Chainsaw chains." ..
            list(
            	b("Reduces") .. " the duration of a " .. i("Tantrum") .. " by " .. clror("-0.25 seconds") .. dot)
    },
    ["Chilli"] = {
        desc =
            "A big bowl of steaming Chilli to keep you fresh and strong." ..
            list(
            	b("Increases") .. " the duration of the " .. i("Chainsaw Dash") .. " by " .. clror("+0.15 seconds") .. " per consumed Token.",
            	b("Increases") .. " the duration of the " .. i("Chainsaw Dash Window") .. " by " .. clro("+0.15 seconds") .. dot) ..
            quote("I got some good barbecue here!", "Drayton Sawyer")
    },
    ["Depth Gauge Rake"] = {
        desc =
            "A tool that increases the angle of the depth gauge, making the chain eat more \"wood\"." ..
            list(
            	b("Increases") .. " the Power Tokens by " .. clror("+1") .. dot,
            	b("Reduces") .. " the Power Charge speed by " .. clro("-18 %") .. dot,
            	b("Reduces") .. " the Movement speed during a " .. i("Chainsaw Dash") .. " by " .. clro("-2 %") .. dot)
    },
    ["Grisly Chains"] = {
        desc =
            "A chain with unusually hefty cutter teeth that leaves victims crippled even after being healed." ..
            list("Survivors hit by " .. i("Bubba's Chainsaw") .. " suffer from the " .. states(ils.mangled) .. " for " .. clror("70 seconds") .. dot)
    },
    ["Homemade Muffler"] = {
        desc =
            "A makeshift exhaust system made of black gas pipes." ..
            list(b("Reduces") .. " the duration of a " .. i("Tantrum") .. " by " .. clror("-0.5 seconds") .. dot)
    },
    ["Iridescent Flesh"] = {
        desc =
            "A thin slice of smooth, young flesh." .. br .. "The veins shimmer with luminescent glow, as if life still flows within." ..
            list(
            	"Instantly recharges all Power Tokens after hitting a Survivor with " .. i("Bubba's Chainsaw") .. dot,
            	b("Reduces") .. " the maximum duration of a " .. i("Tantrum") .. " to " .. clror("3 seconds") .. dot) ..
            quote("There are moments when we cannot believe that what is happening is really true." .. br .. "Pinch yourself and you may find out that it is.", "Pam Jones")
    },
    ["Knife Scratches"] = {
        desc =
            "Scratches cover the Chainsaw's body, caused by a searing blade." .. br .. "Memories of reprimands fill its holder with the fear of failure." ..
            list(
            	b("Increases") .. " the Movement speed during a " .. i("Chainsaw Dash") .. " by " .. clror("+1.5 %") .. dot,
            	b("Increases") .. " the Power Charge time by " .. clro("+10 %") .. dot)
    },
    ["Light Chassis"] = {
        desc =
            "A light and durable Chainsaw chassis with a shorter guide bar." .. br .. "Makes the Chainsaw easier to handle." ..
            list("The " .. iconLink(ils.auras) .. " of Survivors within " .. clror("8 metres") .. " are revealed to you while revving " .. i("Bubba's Chainsaw") .. dot)
    },
    ["Long Guide Bar"] = {
        desc =
            "A sturdy iron replacement bar for long chains." ..
            list(b("Increases") .. " the threshold before Revving triggers a " .. i("Tantrum") .. " by " .. clror("+2 seconds") .. dot)
    },    
    ["Primer Bulb"] = {
        desc =
            "Pumps more gas in the ignition system to ensure a quick and powerful start." ..
            list(b("Reduces") .. " the Power Recharge time by " .. clror("-1 second") .. dot)
    },  
    ["Rusted Chains"] = {
        desc =
            "This chain is covered with crusty and volatile rust spots that make injuries particularly difficult to heal." ..
            list("Survivors hit by " .. i("Bubba's Chainsaw") .. " suffer from the " .. states(ils.broken) .. " for " .. clror("90 seconds") .. dot)
    },      
    ["Shop Lubricant"] = {
        desc =
            "An oil specifically formulated for Chainsaws." .. br .. "A special additive prevents oil throw off." ..
            list("The " .. iconLink(ils.auras) .. " of Survivors downed by " .. i("Bubba's Chainsaw") .. ", if no other Survivors were within the " .. iconLink(ils.terrorRadius) .. ", are hidden to other Survivors for " .. clror("20 seconds") .. dot)
    },  
    ["Spark Plug"] = {
        desc =
            "A clean spark plug fitted for a Chainsaw." ..
            list(b("Reduces") .. " the Power Recharge time by " .. clror("-0.5 seconds") .. dot)
    }, 
    ["The Beast's Marks"] = {
        desc =
            "Jagged marks cover the Chainsaw's body, punishment from the dark beast that lives in The Fog." .. br .. "Memories of violent reprimands fill its holder with the fear of failure." ..
            list(
            	b("Increases") .. " the Movement speed during a " .. i("Chainsaw Dash") .. " by " .. clror("+2 %") .. dot,
            	b("Increases") .. " the Power Charge time by " .. clro("+12 %") .. dot)
    },
    ["The Grease"] = {
        desc =
            "A thick yellowish ooze, concocted by the Sawyers." .. br .. "Used for all-purpose lubrication around their house." ..
            list(b("Increases") .. " the threshold before Revving triggers a " .. i("Tantrum") .. " by " .. clror("+3 seconds") .. dot)
    }, 
    ["Vegetable Oil"] = {
        desc =
            "A rancid oil used as a poor quality lubricant." ..
            list(b("Reduces") .. " the Cool-down duration of " .. i("Bubba's Chainsaw") .. " by " .. clror("-0.3 seconds") .. dot)
    }, 

    ---------------------
    --- THE NIGHTMARE ---
    ---------------------
    
    ["Black Box"] = {
        desc =
            "A black cardboard box filled with photographs." .. 
            list(
            	"Causes the " .. iconLink(ils.exitGates) .. " to be blocked for " .. i("Asleep Survivors") .. " for " .. clror("#duration") .. " after they are opened.",
            	nbullet .. "This effect lingers for " .. clro("#linger") .. " after those Survivors wake up.")
    }, 
    ["Blue Dress"] = {
        desc =
            "A little girl's pale blue dress with white lace which's front is ruined by large cuts." ..
            list(
            	b("Reduces") .. " the number of placeable " .. b("Dream Snares") .. " to " .. clror(1) .. dot,
            	"Causes the " .. b("Dream Snare") .. " to be stationary while placing.",
            	"Causes the " .. b("Dream Snare") .. " to automatically disappear after " .. clro("#duration") .. dot)
    },
    ["Cat Block"] = {
        desc =
            "A white and purple wooden block depicting a sleeping Cat and the letter \"C\"." ..
            list(b("Reduces") .. " the Cool-down duration of the " .. i("Dream Projection") .. " ability by " .. clror("#effect") .. dot)
    },      
    ["Class Photo"] = {
        desc =
            "A large photograph taken at Badham Preschool showing the cheerful class of '94-95." .. 
            list(
            	"Grants the ability target the " .. iconLink(ils.exitGateSwitches) .. " with the " .. i("Dream Projection") .. " ability.",
            	"Causes Survivors opening an " .. b("Exit Gate") .. " to trigger " .. i(link("Killer Instinct")) .. dot)
    }, 
    ["Garden Rake"] = {
        desc =
            "A small claw rake, a must have tool for any accomplished gardener." .. 
            list(b("Increases") .. " the size of the " .. b("Dream Snare") .. " by " .. clror("#effect") .. dot)
    }, 
    ["Green Dress"] = {
        desc =
            "A little girl's green dress with a silky white ribbon." .. 
            list(b("Increases") .. " the time required to perform the " .. i("Wake Up") .. " action by " .. clror("#effect") .. dot)
    },
    ["Jump Rope (Dream Demon)"] = {
        desc =
            "A long Double-Dutch jump rope, stained with many years of use." .. 
            list(b("Increases") .. " the duration of the " .. clror("#hindered") .. space .. effects("addon", "Jump Rope (Dream Demon)", ils.hindered) .. " caused by " .. b("Dream Snares") .. " by " .. clro("#effect") .. " to " .. clro("#durationHindered") .. dot)
    }, 
    ["Kid's Drawing"] = {
        desc =
            "An unattributed drawing clearly crafted by a young child." ..
            list(b("Increases") .. " the amount of " .. i("Microsleep") .. " gained from the " .. i("Dream Abilities") .. " by " .. clror("#effect") .. dot)
    }, 
    ["Nancy's Masterpiece"] = {
        desc =
            "A painting of a character, made by Nancy Holbrook at Badham and kept as a treasured memory." ..
            list(b("Reduces") .. " the Cool-down duration of " .. i("Dream Projection") .. " by " .. clror("#effect") .. " whenever a Survivor is struck by a " .. b("Dream Ability") .. dot)
    }, 
    ["Nancy's Sketch"] = {
        desc =
            "A crude and bold sketch made with Fusain, signed by Nancy H." ..
            list(b("Reduces") .. " the duration of " .. i("Sleep Immunity") .. " by " .. clror("#effect") .. dot)
    }, 
    ["Outdoor Rope"] = {
        desc =
            "Sturdy outdoor rope, handy to tie up anything." .. 
            list(b("Increases") .. " the Travel speed of " .. b("Dream Snares") .. " while placing them by " .. clror("#effect") .. dot)
    }, 
    ["Paint Thinner"] = {
        desc =
            "A tin of a highly volatile and inflammable material." .. 
            list(
            	"Causes Survivors dropping a " .. b("Dream Pallet") .. " to trigger " .. i(link("Killer Instinct")) .. " for " .. clror("#duration") .. dot,
            	"Grants the ability to target these Survivors with the " .. i("Dream Projection") .. " ability:",
            	nbullet .. b("Increases") .. " the Charge speed of this " .. i("Dream Projection") .. " by " .. clro("#effect") .. dot)
    }, 
    ["Pill Bottle"] = {
        desc =
            "An empty pill bottle which once contained a medicine called " .. i("Zoneral") .. dot .. 
        	list(b("Reduces") .. " the duration of the next instance of " .. i("Microsleep") .. " for Survivors having entered the " .. i("Dream World") .. " by falling asleep by a stack-able " .. clror("#stack") .. ", up to a maximum of " .. clro("#effect") .. dot)
    },     
    ["Prototype Claws"] = {
        desc =
            "A home-made tool to facilitate bush trimming." .. 
            list(b("Reduces") .. " the Charge time of " .. b("Dream Snares") .. " by " .. clror("#effect") .. dot)
    }, 
    ["Red Paint Brush"] = {
        desc =
            "A large paint brush, wet with crimson paint." .. 
            list(
            	"The " .. iconLink(ils.auras) .. " of Survivors trapped in the " .. i("Dream World") .. " are revealed to you, whenever they are farther than " .. clror("#distance") .. " from your location.",
            	b("Increases") .. " the default duration of " .. i("Microsleep") .. " by " .. clro("#effect") .. dot)
    }, 
    ["Sheep Block"] = {
        desc =
            "A white and blue wooden block depicting two woolly Lambs grazing and the letter \"S\"." ..
            list(b("Increases") .. " the Cool-down time of " .. iconLink("Alarm Clocks") .. " by " .. clror("#effect") .. dot)
    },  
    ["Swing Chains"] = {
        desc =
            "Rusty, but sturdy chains used to securely attach a swing seat." .. 
            list(b("Blocks") .. " all " .. iconLink(ils.windows) .. " within " .. clror("#range") .. " of your location for " .. clro("#duration") .. " after using the " .. i("Dream Projection") .. " ability.")
    }, 
    ["Unicorn Block"] = {
        desc =
            "A white and red wooden block depicting a prancing Unicorn and the letter \"U\"." ..
            list(b("Increases") .. " the Detonation radius of rupturing " .. b("Dream Pallets") .. " by " .. clror("#effect") .. dot)
    }, 
    ["Wool Shirt"] = {
        desc =
            "A small boy's orange and yellow striped shirt. Identified with a sewn name tag to \"Jesse\"." ..
            list(b("Reduces") .. " the Detonation delay of rupturing " .. b("Dream Pallets") .. " by " .. clror("#effect") .. dot)
    }, 
    ['"Z" Block'] = {
        desc =
            "A deeply scratched and burnt wooden block which's only recognisable feature is the letter \"Z\"." ..
            list("The " .. iconLink(ils.auras) .. " of Survivors affected by a " .. b("Dream Snare") .. " or a " .. b("Dream Pallet") .. " are revealed for " .. clror("#duration") .. dot)
    }, 

    ---------------
    --- THE PIG ---
    ---------------
    
    ["Amanda's Letter"] = {
        desc =
            "A blackmailing Letter for the attention of Amanda." .. br .. "Fills the reader with rage and focus." ..
            list(
            	"The " .. iconLink(ils.auras) .. " of Survivors within " .. clror("16 metres") .. " are revealed to you when " .. i("Crouched") .. dot,
            	b("Reduces") .. " the number of carried " .. b("Reverse Bear Traps") .. " by " .. clror("-2") .. dot) ..
            quote("Amanda, you were with Cecil the night Jill lost Gideon. You killed their child. You know it and I know it.", "Detective Hoffman")
    }, 
    ["Amanda's Secret"] = {
        desc =
            "A black metal box containing a knife and various medical supplies, such as bandages and compresses." .. br .. "Deep cuts reduce stress and awaken the senses." ..
            list(
            	"Survivors removing their " .. b("Reverse Bear Trap") .. " trigger a " .. i(link("Loud Noise Notification")) .. " and have their " .. iconLink(ils.auras) .. " revealed to you for " .. clror("6 seconds") .. dot)
    }, 
    ["Bag of Gears"] = {
        desc =
            quote("A few mechanical parts that allow the creation of challenging Jigsaw Boxes and easier to install Reverse Bear Traps.") .. nlp ..
            "While attaching a " .. iconLink("Reverse Bear Trap") .. " to a downed Survivor, #name applies its primary effect:" ..
            list(b("Increases") .. " your Action speed by " .. clror("#effects(1)") .. dot) ..
            "Survivors searching a " .. iconLink("Jigsaw Box") .. ", #name applies its secondary effect:" ..
            list(b("Reduces") .. " their Action speed by "  .. clro("#effects(2)") .. dot)
    }, 
    ["Combat Straps"] = {
        desc =
            "Leather straps that hold fabric in place for nimbler movement." ..
            list(b("Increases") .. " the Transition speed into the " .. i("Crouched State") .. " by " .. clror("#effect") .. dot)
    }, 
    ["Crate of Gears"] = {
        desc =
            quote("This collection of mechanical parts allows the creation of extra-challenging Jigsaw Boxes and Reverse Bear Traps that are easier to install.") .. nlp ..
            "While attaching a " .. iconLink("Reverse Bear Trap") .. " to a downed Survivor, #name applies its primary effect:" ..
            list(b("Increases") .. " your Action speed by " .. clror("#effects(1)") .. dot) ..
            "Survivors searching a " .. iconLink("Jigsaw Box") .. ", #name applies its secondary effect:" ..
            list(b("Reduces") .. " their Action speed by "  .. clro("#effects(2)") .. dot)
    }, 
    ["Face Mask"] = {
        desc =
            "A modification to the Reverse Bear Trap:" .. br .. "The heavy cloth face mask, laced with a sedative, partially suffocates the target, making it hard to concentrate." ..
            list("Survivors caught in a " .. b("Reverse Bear Trap") .. " suffer permanently from the " .. effects("addon", "Face Mask", ils.blindness) .. dot)
    }, 
    ["Interlocking Razor"] = {
        desc =
            "A modification to the Reverse Bear Trap:" .. br .. "The addition of interlocking razor blades makes it impossible to move suddenly in the Jigsaw Box without slitting one's wrists." ..
            list("While injured, Survivors failing a " .. iconLink(ils.skillCheck) .. " at a " .. b("Jigsaw Box") .. " become afflicted by the " .. effects("addon", "Interlocking Razor", ils.deepWound) .. dot)
    }, 
    ["Jigsaw's Annotated Plan"] = {
        desc =
            "A disturbing, yet brilliant, trap design laid down on paper and annotated by Jigsaw." ..
            list(
            	b("Increases") .. " the number of carried " .. b("Reverse Bear Traps") .. " by " .. clror("+1") .. dot,
            	b("Increases") .. " the Death timer of " .. b("Reverse Bear Traps") .. " by " .. clro("+10 seconds") .. dot,
            	b("Reduces") .. " the Death timer of all " .. bclr("bright red", "Active Reverse Bear Traps") .. " by " .. clro("-10 seconds") .. " each time a Generator is completed.")
    }, 
    ["Jigsaw's Sketch"] = {
        desc =
            "A disturbing, yet brilliant, trap design sketched in detail on a sheet of paper." ..
            list(
            	b("Increases") .. " the number of carried " .. b("Reverse Bear Traps") .. " by " .. clror("+1") .. dot,
            	"The " .. iconLink(ils.auras) .. " of Generators being repaired by Survivors wearing a " .. b("Reverse Bear Traps") .. " are highlighted to you in " .. bclr("yellow", "yellow") .. dot)
    }, 
    ["John's Medical File"] = {
        desc =
            quote("The medical file of a cancerous man." .. br .. "Fills the reader with dread and recklessness.") .. nlp ..
            "You benefit from the following effect:" ..
            list(b("Increases") .. " your Movement speed while " .. i("Crouched") .. " by " .. clror("#effect") .. dot)
    }, 
    ["Last Will"] = {
        desc =
            quote("A latched wooden box with a satin lining, offered as part of a last will.") .. nlp ..
            "Modifies the " .. i("Ambush Dash") .. " attack with the following effects:" ..
            list(
            	b("Increases") .. " its Movement speed by " .. clror("#effects(1)") .. dot,
            	b("Increases") .. " its Charge time by " .. clro("#effects(2)") .. dot)
    },  
    ["Razor Wires"] = {
        desc =
            "A modification to the Reverse Bear Trap:" .. br .. "The addition of razor sharp wires makes it extra difficult and potentially painful to search them." ..
            list(
            	"While healthy, Survivors failing a " .. iconLink(ils.skillCheck) .. " at a " .. b("Jigsaw Box") .. " become injured.",
            	b("Increases") .. " the Skill Check difficulty by " .. clror("+20 %") .. dot)
    }, 
    ["Rules Set No.2"] = {
        desc =
            "Not all games need to have the same rules." ..
            list(b("Disables") .. " the ability of Survivors to see the " .. iconLink(ils.auras) .. " of " .. b("Jigsaw Boxes") .. ", until their " .. b("Reverse Bear Trap") .. " becomes " .. bclr("bright red", "active") .. dot) ..
            quote("Listen, there are rules.", "Jigsaw")
    }, 
    ["Rusty Attachments"] = {
        desc =
            quote("A modification to the Reverse Bear Trap:" .. br .. "Mouth spikes, covered with crusty and volatile rust spots that make injuries particularly difficult to heal.") .. nlp ..
            "Survivors caught in a " .. b("Reverse Bear Trap") .. " suffer from the following effect:" ..
            list("Inflicts the ".. effects("addon", "Rusty Attachments", ils.mangled) .. " for " .. clror("#mangled") .. dot)
    }, 
    ["Shattered Syringe"] = {
        desc =
            "Symbol of a broken way of life." .. br .. "Reminiscing about her past-self hardens her determination." ..
            list(b("Reduces") .. " the Cool-down duration of missed " .. i("Ambush Dash Attacks") .. " by " .. clror("-10 %") .. dot)
    }, 
    ["Slow-Release Toxin"] = {
        desc =
            quote("A modification to the Reverse Bear Trap:" .. br .. "A poison that is not fatal, but weakens the body and makes it nearly impossible to recover fully from any effort.") .. nlp ..
            "Survivors caught in a " .. b("Reverse Bear Trap") .. " suffer from the following effect:" ..
            list("Inflicts the " .. effects("addon", "Slow-Release Toxin", ils.exhausted) .. dot)
    }, 
    ["Tampered Timer"] = {
        desc =
            "A timer that has been fiddled with." .. br .. "A spring in the mechanism forces the gears to turn faster." ..
            list(b("Reduces") .. " the Death timer of " .. b("Reverse Bear Traps") .. " by " .. clro("-20 seconds") .. dot)
    }, 
    ["Utility Blades"] = {
        desc =
            "A modification to the Reverse Bear Trap:" .. br .. "Sharp blades attached to the Trap's interior lacerate the victim with every movement." ..
            list("Survivors caught in a " .. b("Reverse Bear Trap") .. " suffer from the " .. states(ils.haemorrhage) .. " whenever they are injured by any means.")
    }, 
    ["Video Tape"] = {
        desc =
            "A recording of Jigsaw, explaining the game's rules to Amanda." .. br .. "Reminiscing about her past-self hardens her determination." ..
            list("All Survivors start the Trial with a " .. b("Reverse Bear Trap") .. " attached to them.")
    },  
    ["Workshop Grease"] = {
        desc =
            quote("A simple tube of grease, used to lubricate the mechanisms of the hidden blade.") .. nlp ..
            "Modifies the " .. i("Ambush Dash") .. " attack with the following effects:" ..
            list(b("Increases") .. " its Charge speed by " .. clro("#effect") .. dot)
    },     

    -------------------
    --- ALL KILLERS ---
    -------------------
    
	["Blight Serum"] = {
		desc =
			"A small amount of Compound Thirty-Four, the final serum " .. b("The Blight") .. " had worked on before his transformation." .. br ..
			"Causes extreme mutations in high doses." .. nlp ..
			"Playing as " .. b("The ") .. iconLink("Blight") .. ", you benefit from the following effect:" ..
			list("Grants " .. clror(1) .. " additional Token towards his Power.") .. nlp ..
			"Playing as any other Killer, " .. i("Blighted Serum") .. " temporarily replaces your Power with the " .. i("Blighted Rush") .. " ability." .. 
			list(
				"Press the " .. loadoutStrings.powerButton .. " to dash forwards at " .. clro("200 %") .. " of your default Movement speed for " .. clro("2.5 seconds") .. dot,
				"Start the Trial with " .. clro("1 Token") .. dot,
				"Receive " .. clro("1 Token") .. " each time a Survivor is hooked.")
	},

    -----------------
    --- THE CLOWN ---
    -----------------
    
	["Bottle of Chloroform"] = {
		desc =
			quote("A sweet-smelling organic compound with strong anaesthetic capabilities.") .. nlp ..
			"Modifies the " .. biclr("fuchsia", "Tonic") .. " with the following effect:" ..
            list(b("Increases") .. " the size and spread of the " .. i("Gas Clouds") .. " by " .. clror("#effect") .. dot)
	},
	["Cheap Gin Bottle"] = {
		desc =
			quote("When the night is rough and the day is rougher, a little hair of the dog will give you a boost.") .. nlp ..
            "Modifies the " .. biclr("yellow", "Antidote") .. " with the following effect:" ..
            list(b("Increases") .. " the strength of the " .. effects("addon", "Cheap Gin Bottle", ils.haste) .. " by " .. clror("#effect") .. " to " .. clro("#haste") .. dot)
    },
	["Cigar Box"] = {
		desc =
			quote("A grim and incomplete collection of fingers." .. br .. "Fills The Clown with longing and focuses his chemical crafting abilities.") .. nlp ..
			"Modifies the " .. biclr("yellow", "Antidote") .. " with the following effect:" ..
            list("The " .. iconLink(ils.auras) .. " of all Players within " .. clror("#range") .. " are revealed to the " .. biclr("yellow", "Invigorated Players") .. " for " .. clro("#duration") .. dot)
    },
	["Ether 5 Vol%"] = {
		desc =
			quote("An organic compound used for anaesthetic purposes.") .. nlp ..
            "Modifies the " .. biclr("fuchsia", "Tonic") .. " with the following effect:" ..
            list(b("Increases") .. " the duration of " .. biclr("fuchsia", "Intoxication") .. " by " .. clror("#effect") .. dot)
    },
	["Ether 10 Vol%"] = {
		desc =
			quote("A volatile organic compound used for anaesthetic purposes.") .. nlp ..
            "Modifies the " .. biclr("fuchsia", "Tonic") .. " with the following effect:" ..
            list(b("Increases") .. " the duration of " .. biclr("fuchsia", "Intoxication") .. " by " .. clror("#effect") .. dot)
    },
    ["Ether 15 Vol%"] = {
		desc =
			quote("A highly volatile organic compound, toxic at this concentration.") .. nlp ..
            "Modifies the " .. biclr("fuchsia", "Tonic") .. " with the following effect:" ..
            list(b("Increases") .. " the duration of " .. biclr("fuchsia", "Intoxication") .. " by " .. clror("#effect") .. dot)
    },
    ["Fingerless Parade Gloves"] = {
		desc =
			quote("Part of the standard Clown apparel, the cut fingers allow for dexterous manipulations.") .. nlp ..
			"Modifies the " .. b("Bottles") .. " with the following effects:" ..
            list(
            	b("Increases") .. " their Throw speed by " .. clror("#effect(1)") .. dot,
            	b("Reduces") .. " their Throw angle by " .. clro("#effect(2)") .. dot)
    },
    ["Flask of Bleach"] = {
		desc =
			quote("A potent chemical which causes irritation, burns and lung damage.") .. nlp ..
            "Modifies the " .. biclr("fuchsia", "Tonic") .. " with the following effect:" ..
            list(b("Increases") .. " the strength of the " .. effects("addon", "Flask of Bleach", ils.hindered) .. " by " .. clror("#effect") .. " to " .. clro("#hindered") .. dot)
    },
    ["Garish Make-Up Kit"] = {
		desc =
			quote("Some for the face and some for the Antidote." .. br .. "The unknown compound intensifies the Antidote's effect.") .. nlp ..
            "Modifies the " .. biclr("yellow", "Antidote") .. " with the following effect:" ..
            list(b("Increases") .. " the duration of " .. biclr("yellow", "Invigoration") .. " by " .. clror("#effect") .. dot)
    },
    ["Kerosene Can"] = {
		desc =
			quote("A thin and clear combustible liquid which numbs the mind when inhaled.") .. nlp ..
            "Survivors afflicted by the " .. biclr("fuchsia", "Tonic") .. " suffer from the following effect:" ..
            list("Causes the " .. effects("addon", "Kerosene Can", ils.blindness) .. " for " .. clror("#blindness") .. dot)
    },
    ["Party Bottle"] = {
		desc =
			quote("Be the life of the party!") .. nlp ..
			"Modifies the " .. biclr("fuchsia", "Tonic") .. " and " .. biclr("yellow", "Antidote") .. " with the following effects:" ..
            list(
            	b("Bottles") .. " now release confetti upon breaking, in addition to their usual effects.",
            	"Direct hits with a " .. b("Bottle") .. " grant ".. clror("#bonus") .. " bonus Bloodpoints in the " .. iconLink(ils.deviousness) .. space .. i("Scoring Category") .. dot)
    },
    ["Redhead's Pinkie Finger"] = {
        desc =
            quote("The prized pinkie finger of a redhead." .. br .. "Faintly fragrant." .. br .. "Tastes of potpourri and varnish.") .. nlp ..
            "Modifies the " .. biclr("fuchsia", "Tonic") .. " with the following effect:" ..
            list("Survivors hit directly with its " .. b("Bottle") .. " suffer from the " .. effects("addon", "Redhead's Pinkie Finger", ils.exposed) .. " while " .. biclr("fuchsia", "Intoxicated") .. dot) ..
            "#name limits the number of carried " .. b("Bottles") .. " to " .. clror("#bottles") .. dot
            
    },
    ["Robin Feather"] = {
        desc =
            quote("A warm orange feather, soft to the touch.") .. nlp ..
            "You benefit from the following effect:" ..
            list(b("Reduces") .. " the Cool-down time after throwing a " .. b("Bottle") .. " by " .. clror("#effect") .. dot)
    },
    ["Smelly Inner Soles"] = {
        desc =
            quote("A mouldy inner sole which gives much comfort to tired feet.") .. nlp ..
            "While replenishing your " .. b("Bottles") .. ", you benefit from the following effect:" ..
            list(b("Increases") .. " your Movement speed by " .. clror("#effect") .. dot)
    },
    ["Solvent Jug"] = {
        desc =
            quote("A chemical volatile compound that irritates the respiratory tract, but increases absorption of the Afterpiece Antidote.") .. nlp ..
            "Modifies the " .. biclr("yellow", "Antidote") .. " with the following effect:" ..
            list(b("Increases") .. " the duration of " .. biclr("yellow", "Invigoration") .. " by " .. clror("#effect") .. dot)
    },
    ["Spirit of Hartshorn"] = {
        desc =
            quote("A pungent chemical compound consisting of ammonia." .. br .. "One whiff is enough to jolt even the most sluggish of minds.") .. nlp ..
            "Modifies the " .. biclr("yellow", "Antidote") .. " with the following effect:" ..
            list(b("Increases") .. " the size and spread of " .. i("Gas Clouds") .. " by " .. clror("#effect") .. dot)
	},
    ["Starling Feather"] = {
        desc =
            quote("A black feather with an emerald gloss, very soft to the touch.") .. nlp ..
            "You benefit from the following effect:" ..
            list(b("Reduces") .. " the Cool-down time after throwing a " .. b("Bottle") .. " by " .. clror("#effect") .. dot)
    },
	["Sticky Soda Bottle"] = {
		desc =
			quote("It's sugary sweet, with only a little blood on the label.") .. nlp ..
			"Modifies the " .. biclr("yellow", "Antidote") .. " with the following effect:" ..
            list(b("Increases") .. " the strength of the " .. effects("addon", "Sticky Soda Bottle", ils.haste) .. " by " .. clror("#effect") .. " to " .. clro("#haste") .. dot)
    },
    ["Sulphuric Acid Vial"] = {
		desc =
			quote("A thin and clear combustible liquid which numbs the mind when inhaled.") .. nlp ..
			"Survivors afflicted by the " .. biclr("fuchsia", "Tonic") .. " suffer from the following effect:" ..
            list("Causes the " .. effects("addon", "Sulphuric Acid Vial", ils.mangled) .. " for " .. clror("#mangled") .. dot)
    },
    ["Tattoo's Middle Finger"] = {
		desc =
			quote("The prized middle finger of a large tattooed man." .. br .. "Has a faint taste of machinery oil.") .. nlp ..
			"Survivors afflicted by the " .. biclr("fuchsia", "Tonic") .. " or the " .. biclr("yellow", "Antidote") .. " suffer from the following effect:" ..
            list("Their " .. iconLink(ils.auras) .. " are revealed to you for " .. clror("#duration") .. dot)
    },
    ["Thick Cork Stopper"] = {
		desc =
			quote("A sturdy cork fitting the Afterpiece Tonic Bottles marvellously.") .. nlp ..
			"You benefit from the following effect:" ..
            list(b("Reduces") .. " the Reloading time by " .. clror("#effect") .. dot)
    },
    ["VHS Porn"] = {
		desc =
			quote("An all time classic." .. br .. "You won't see things quite the same again.") .. nlp ..
			"Modifies the " .. biclr("fuchsia", "Tonic") .. " with the following effect:" ..
            list(b("Increases") .. " the size and spread of the " .. i("Gas Clouds") .. " by " .. clror("#effect") .. dot)
    },  

    ------------------
    --- THE SPIRIT ---
    ------------------
   
    ["Bloody Hair Brooch"] = {
		desc =
			"A hair brooch crusted with dried blood." .. 
            list(b("Increases") .. " the Charge speed of " .. i("Yamaoka's Haunting") .. " by " .. clror("+30 %") .. dot)
    }, 
    ["Dirty Uwabaki"] = {
		desc =
			"A handy pair of indoor shoes." .. 
            list(b("Increases") .. " your Movement speed during a " .. i("Phase-Walk") .. " by " .. clror("+15 %") .. dot)
    }, 
    ["Dried Cherry Blossom"] = {
		desc =
			"A crumbling, dried cherry flower." .. br .. "Once the symbol of mortality." .. 
            list(
            	"Coming within " .. clror("3 metres") .. " of a Survivor during a " .. i("Phase-Walk") .. " triggers " .. i(link("Killer Instinct")) .. dot,
            	iconLink(ils.scratchMarks) .. " are no longer visible to you during a " .. i("Phase-Walk") .. dot)
    }, 
    ["Father's Glasses"] = {
		desc =
			"A pair of dad glasses that belonged to an overworked salary man." .. 
            list("During a " .. i("Phase-Walk") .. comma .. iconLink(ils.poolsOfBlood) .. " appear to you in " .. bclr("bright red", "bright red") .. dot)
    }, 
    ["Furin"] = {
		desc =
			"A warm summer breeze chimes the little bell hanging from the balcony ceiling." .. 
            list("Causes all Survivors to hear the audio cue of the " .. i("Phase-Walk") .. dot)
    }, 
    ["Gifted Bamboo Comb"] = {
		desc =
			"A narrow tooth bamboo comb to gently untangle dishevelled hair." .. 
            list(b("Increases") .. " the Charge speed of " .. i("Yamaoka's Haunting") .. " by " .. clror("+15 %") .. dot)
    }, 
    ["Juniper Bonsai"] = {
		desc =
			"Dark blue-green foliage bonsai tree." .. br .. "Once the symbol of Yamaoka family tradition." .. 
            list(
            	b("Reduces") .. " the Cool-down of your " .. i("Passive Phasing") .. " by " .. clror("-1 second") .. dot,
            	b("Increases") .. " the Duration of your " .. i("Passive Phasing") .. " by " .. clro("+50 %") .. dot)
    }, 
    ["Kaiun Talisman"] = {
		desc =
			"A talisman to get luck on your side." .. 
            list(b("Increases") .. " the Duration of a " .. i("Phase-Walk") .. " by " .. clror("+1 second") .. dot)
    }, 
    ["Katana Tsuba"] = {
		desc =
			"The hand-guard of an ancestral blade." .. br .. "Crafted for the Yamaoka family." .. 
            list(
            	b("Extends") .. " the Invisibility duration while reappearing from a " .. i("Phase-Walk") .. " by " .. clror("+0.2 seconds") .. dot,
            	b("Increases") .. " your Movement speed while reappearing from a " .. i("Phase-Walk") .. " by " .. clro("+5 %") .. dot)
    }, 
    ["Katsumori Talisman"] = {
		desc =
			"A talisman that brings swift success." .. 
            list(
            	b("Increases") .. " the Duration of a " .. i("Phase-Walk") .. " by " .. clror("+1.5 seconds") .. dot,
            	b("Increases") .. " the Recharge rate of " .. i("Yamaoka's Haunting") .. " by " .. clro("+33 %") .. dot)
    }, 
    ["Kintsugi Teacup"] = {
		desc =
			"A cup mended and lacquered with powdered gold." .. br .. "Both the breakage and repair are part the cup." .. 
            list("Instantly recharges " .. i("Yamaoka's Haunting") .. " after breaking a " .. iconLink(ils.breakableWall) .. " or a " .. iconLink(ils.pallet) .. dot)
    }, 
    ["Mother's Glasses"] = {
		desc =
			"A pair of glasses belonging to a loving mother afflicted by a chronic disease." .. 
            list("Survivors coming within " .. clror("2 metres") .. " of the " .. i("Husk") .. " during a " .. i("Phase-Walk") .. " triggers " .. i(link("Killer Instinct")) .. dot)
    },
    ["Mother-Daughter Ring"] = {
		desc =
			"A silver ring engraved with \"for my precious daughter\"." .. 
            list(
            	b("Increases") .. " your Movement speed during a " .. i("Phase-Walk") .. " by " .. clror("+25 %") .. dot,
            	iconLink(ils.scratchMarks) .. " are no longer visible to you during a " .. i("Phase-Walk") .. dot)
    }, 
    ["Muddy Sports Day Cap"] = {
		desc =
			"A muddy sport cap with a High School logo." .. br .. "Identified with a sewn name tag to \"Rin\"." .. 
            list(b("Increases") .. " your Movement speed during a " .. i("Phase-Walk") .. " by " .. clror("+10 %") .. dot)
    }, 
    ["Origami Crane"] = {
		desc =
			"One of the one thousand Orizuru for your wish to come true." .. 
            list(b("Increases") .. " the Recharge rate of " .. i("Yamaoka's Haunting") .. " by " .. clror("+20 %") .. dot)
    }, 
    ["Prayer Beads Bracelet"] = {
		desc =
			"A powerful bracelet that reads a sacred mantra." .. 
            list("Causes all Survivors outside of your " .. iconLink(ils.terrorRadius) .. " to hear the audio cue of the " .. i("Phase-Walk") .. dot)
    }, 
    ["Rin's Broken Watch"] = {
		desc =
			"A wristwatch with a shattered glass." .. br .. "The name \"Rin\" is scribbled on the wristband." .. 
            list(b("Increases") .. " the Recharge rate of " .. i("Yamaoka's Haunting") .. " by " .. clror("+30 %") .. dot)
    }, 
    ["Rusty Flute"] = {
		desc =
			"A rusty transverse flute with a haunting sound." .. 
            list(b("Increases") .. " the Recharge rate of " .. i("Yamaoka's Haunting") .. " by " .. clror("+40 %") .. dot)
    }, 
    ["Senko Hanabi"] = {
		desc =
			"Thin sparklers that light up summer nights and display the beauty of ephemeral moments in life." .. 
            list("Causes the " .. i("Husk") .. " to explode after ending a " .. i("Phase-Walk") .. ", blocking all Vault locations within " .. clror("4 metres") .. " of its location for " .. clro("5 seconds") .. dot)
    }, 
    ["Shiawase Amulet"] = {
		desc =
			"A talisman that makes one happy and enthusiastic." .. 
            list(b("Increases") .. " the Duration of a " .. i("Phase-Walk") .. " by " .. clror("+0.5 seconds") .. dot)
    }, 
    ["Uchiwa"] = {
		desc =
			"A handheld fan with a koi motif to create a nice breeze on a hot summer day." .. 
            list("Instantly recharges " .. i("Yamaoka's Haunting") .. " after being stunned by a " .. iconLink(ils.pallet) .. dot)
    }, 
    ["Wakizashi Saya"] = {
		desc =
			"The scabbard of an ancestral blade." .. br .. "Once crafted for the Yamaoka family." .. 
            list("Press the " .. loadoutStrings.activeAbilityButton .. " during a " .. i("Phase-Walk") .. " to instantly reappear at the location of the " .. i("Husk") .. dot)
    }, 
    ["White Hair Ribbon"] = {
		desc =
			"A silken bow to tame wild hair." .. 
            list(b("Increases") .. " the Charge speed of " .. i("Yamaoka's Haunting") .. " by " .. clror("+20 %") .. dot)
    }, 
    ["Yakuyoke Amulet"] = {
		desc =
			"A powerful talisman to protect your endeavours from being hindered by suspicious circumstances." .. 
            list(
            	b("Increases") .. " the Duration of a " .. i("Phase-Walk") .. " by " .. clror("+3.5 seconds") .. dot,
            	b("Reduces") .. " your Movement speed during a " .. i("Phase-Walk") .. " by " .. clro("-15 %") .. dot)
    }, 
    ["Zōri"] = {
		desc =
			"A comfortable pair of flat sandals that can easily be slipped on and off." .. 
            list(b("Increases") .. " your Movement speed during a " .. i("Phase-Walk") .. " by " .. clror("+5 %") .. dot)
    }, 

    ------------------
    --- THE LEGION ---
    ------------------
    
    ["BFFs"] = {
		desc =
			"An unnaturally cold silver necklace split into four, one for each best friend." .. nlp .. 
			"Survivors hit with chained " .. i("Feral Slashes") .. " grant Tokens towards " .. i("BFFs") .. colon ..
            list(
            	"Grants " .. clror("0 Tokens") .. " for the first " .. i("Feral Slash") .. dot,
            	"Grants " .. clro("+2 Tokens") .. " for the second " .. i("Feral Slash") .. dot,
            	"Grants " .. clro("+3 Tokens") .. " for the third " .. i("Feral Slash") .. dot,
            	"Grants " .. clro("+4 Tokens") .. " for the fourth " .. i("Feral Slash") .. dot,
            	"Grants " .. clro("+5 Tokens") .. " for the fifth " .. i("Feral Slash") .. dot) ..
            "Once the " .. iconLink(ils.exitGates) .. " are powered and " .. i("BFFs") .. " has acquired " .. clro("15+ Tokens") .. ", you benefit from the following effect:" ..
            list("Grants a " .. clro("+6 %") .. space .. states(ils.haste) .. " outside of using " .. i("Feral Frenzy") .. dot)
    },
    ["Cold Dirt"] = {
		desc =
			"A handful of dirt collected from the janitor's final resting place." .. br .. "It is unnaturally cold." ..
			list(b("Reduces") .. " the duration of " .. i("Fatigue") .. " by " .. clror("-0.6 seconds") .. dot)
    },
    ["Defaced Smiley Pin"] = {
		desc =
			"A once friendly looking, bright yellow button of a defaced smiley." .. br .. "A signature icon of The Legion." ..
			list("Survivors suffer from the " .. states(ils.mangled) .. " for " .. clror("60 seconds") .. " after mending themselves.")
    },
    ["Etched Ruler"] = {
		desc =
			"A wooden ruler deeply etched with the names of enemies." ..
			list("Survivors hit with a " .. i("Feral Slash") .. " suffer from the " .. states(ils.oblivious) .. " for " .. clror("60 seconds") .. dot)
    },
    ["Filthy Blade"] = {
		desc =
			"This blade is stained with foul spots of blood and grime that make injuries particularly difficult to mend." ..
			list(b("Increases") .. " the Mending time of Survivors by " .. clror("+4 seconds") .. dot)
    },
    ["Frank's Mix Tape"] = {
		desc =
			"Never go on a kill mission without your tunes."  .. br .. "A track list of massive distortions and loud percussion that stabs at your eardrums." .. nlp ..
			"During " .. i("Feral Frenzy") .. ", you benefit from the following effects:" ..
			list(
				b("Pauses") .. " the Power Gauge depletion while performing the " .. i("Break or Damage") .. " action.", 
				b("Increases") .. " the Action speed for damaging " .. iconLink(ils.generators) .. " by " .. clror("+20 %") .. dot,
				b("Increases") .. " the Action speed for breaking " .. iconLink(ils.breakableWalls) .. " by " .. clro("+30 %") .. dot,
				"Unlocks an additional sound layer in the " .. iconLink(ils.terrorRadius) .. ", enhancing it musically.") ..
			i("Frank's Mix Tape") .. " can be combined with any other " .. i("Mix Tape Add-on") .. " to unlock multiple sound layer combos."
    },
    ["Friendship Bracelet"] = {
		desc =
			"A wide grey and red braided rope bracelet." .. br .. "The inscription \"F. J. S. J.\" can be seen, crudely written in bold black ink." ..
			list(b("Extends") .. " the Lunge duration of " .. i("Feral Slashes") .. " by " .. clror("+0.3 seconds") .. ", which " .. b("increases") .. " your Attack range.")
    },
    ["Fuming Mix Tape"] = {
		desc =
			"Dark beats, violent shreds and unfathomable vocals from another world fill the mind with a vibrating sixth sense." ..
			list(
				"During " .. i("Feral Frenzy") .. ", the intensity of the " .. iconLink(ils.generator) .. space .. iconLink(ils.auras) .. " reveals their current Repair progress.",
				"Causes all partially repaired " .. b("Generators") .. " to start regressing.",
				"Unlocks an additional sound layer in the " .. iconLink(ils.terrorRadius) .. ", enhancing it musically.") ..
			"The " .. i("Fuming Mix Tape") .. " can be combined with any other " .. i("Mix Tape Add-on") .. " to unlock multiple sound layer combos."
    },
    ["Iridescent Button"] = {
		desc =
			"A glass-like button moulded from The Fog that captures The Legion's likeness." .. br .. "The surface is warm and reverberating with The Entity's power." ..
			list("Causes " .. i("Feral Vaults") .. " to instantly break vaulted " .. iconLink(ils.pallets) .. dot) ..
			quote("The youth consumed by the iridescent glass magnifies and widens the reach of The Entity.")
    },    
    ["Joey's Mix Tape"] = {
		desc =
			"A mix of bangin' tracks and slammin' beats for chillaxin' when life's a bitch." ..
			list(
				"Survivors suffer from the " .. states(ils.haemorrhage) .. " until fully healed after mending themselves.",
				"Unlocks an additional sound layer in the " .. iconLink(ils.terrorRadius) .. ", enhancing it musically.") ..
			i("Joey's Mix Tape") .. " can be combined with any other " .. i("Mix Tape Add-on") .. " to unlock multiple sound layer combos."
    },
    ["Julie's Mix Tape"] = {
		desc =
			"A dark and depressing mix tape made out from mainly power ballads and gloomy melodies." ..
			list(
				"Instantly recharges " .. i("Feral Frenzy") .. " after being stunned by any means while using it.",
				"Unlocks an additional sound layer in the " .. iconLink(ils.terrorRadius) .. ", enhancing it musically.") ..
			i("Julie's Mix Tape") .. " can be combined with any other " .. i("Mix Tape Add-on") .. " to unlock multiple sound layer combos."
    },
    ["Mischief List"] = {
		desc =
			"A list of mischievous missions to accomplish, memento of brighter days." ..
			list(b("Extends") .. " the duration of " .. i("Feral Frenzy") .. " by " .. clror("#effect") .. dot)
    },
    ["Mural Sketch"] = {
		desc =
			"A rough sketch of The Legion mural torn from a notebook." ..
				list(b("Increases") .. " the stack-able Movement Speed boost gained from chained " .. i("Feral Slashes") .. " by " .. clror("#effect") .. " to " .. clror("#stack") .. ", up to a maximum of " .. clro("#maxBonus") .. dot)
    },
    ["Nasty Blade"] = {
		desc =
			"This blade is stained with unsanitary spots of grime that make injuries particularly difficult to mend." ..
			list(b("Increases") .. " the Mending time of Survivors by " .. clror("+1.5 seconds") .. dot)
    },
    ["Never-Sleep Pills"] = {
		desc =
			"Highly caffeinated tablets to make you extra sharp for exams or draining activities." ..
			list(
				b("Extends") .. " the duration of " .. i("Feral Frenzy") .. " by " .. clror("+10 seconds") .. dot,
				b("Reduces") .. " the starting Movement speed of " .. i("Feral Frenzy") .. " to " .. clro("4.6 m/s") .. dot,
				"Grants a stack-able " .. clro("+100") .. " bonus Bloodpoints for successful " .. i("Feral Slashes") .. ", up to a maximum of " .. clro("+500") .. dot)
    },
    ["Scratched Ruler"] = {
		desc =
			"A wooden ruler deeply scratched with hash marks." ..
			list(b("Reduces") .. " the Recovery time of " .. i("Feral Frenzy") .. " by " .. clror("-5 seconds") .. dot)
    },
    ["Smiley Face Pin"] = {
		desc =
			"A friendly looking, bright yellow button used as a sarcastic statement." ..
			list("Survivors suffer from the " .. states(ils.blindness) .. " for " .. clror("60 seconds") .. " after mending themselves.")
    },
    ["Stab Wounds Study"] = {
		desc =
			"A printed medical article stolen from Ormond's public library, vulgarising a study on lesions and stab wounds." ..
			list("The " .. iconLink(ils.auras) .. " of Survivors are revealed to you for " .. clror("4 seconds") .. " after they mend themselves.")
    },
    ["Stolen Sketch Book"] = {
		desc =
			"A sketch book with imaginative and evocative, if not slightly bizarre sketches." ..
			list("Causes Survivors hit with chained " .. i("Feral Slashes") .. " to drop any carried " .. iconLink(ils.item) .. dot)
    },
    ["Stylish Sunglasses"] = {
		desc =
			"Oval-shaped sunglasses that exude poise and cool." .. br .. "Their colour-tinted lenses add an understated appeal." ..
			list("The " .. iconLink(ils.auras) .. " of Survivors mending themselves within " .. clror("24 metres") .. " of your location are revealed to you.")
    },
    ["Susie's Mix Tape"] = {
		desc =
			"A thrilling mix tape with energising songs and intricate guitar riffs." ..
			list(
				b("Increases") .. " the Detection radius of " .. i(link("Killer Instinct")) .. " by " .. clror("+20 metres") .. dot,
				"Unlocks an additional sound layer in the " .. iconLink(ils.terrorRadius) .. ", enhancing it musically.") ..
			i("Susie's Mix Tape") .. " can be combined with any other " .. i("Mix Tape Add-on") .. " to unlock multiple sound layer combos."
    },
    ["The Legion Pin"] = {
		desc =
			"A handmade button with the face of The Legion." .. br .. "To use exclusively on intimidation dares." ..
			list("Survivors suffer from the " .. states(ils.broken) .. " for " .. clror("60 seconds") .. " after mending themselves.")
    }, 

    ------------------
    --- THE PLAGUE ---
    ------------------
    
    ["Ashen Apple"] = {
		desc =
			"A peeled apple rolled into sanctified ashes." .. br .. "Eating such a fruit warded off the malignantly envious spirits of the deceased." ..
			list(
				"Causes " .. clror(1) .. space .. b("Pool of Devotion") .. " to spawn in the " .. biclr("blood red", "Corrupted") .. " state.",
				b("Increases") .. " the number of available " .. b("Pools of Devotion") .. " by " .. clror("+1") .. dot)
    },
    ["Black Incense"] = {
		desc =
			"A dark paste made of sharp osseous shavings." .. br .. "The inhaling of its foul fumes sharpens the mind's eye." ..
			list("The " .. iconLink(ils.auras) .. " of vomitting " .. i("Infected Survivors") .. " are revealed to you for " .. clror("3 seconds") .. dot)
    },
    ["Blessed Apple"] = {
		desc =
			"A perfectly ripe fruit to break fast during the purification ceremony." .. br .. "Delicious." ..
			list("Causes " .. clror(1) .. space .. b("Pool of Devotion") .. " to spawn in the " .. biclr("blood red", "Corrupted") .. " state.")
    },
    ["Devotee's Amulet"] = {
		desc =
			"A blood stone amulet carved intricately with the effigy of the Babylonian God of Mayhem and Pestilence." .. br .. "Fills the wearer with boundless devotion." ..
			list(b("Increases") .. " the duration of " .. biclr("blood red", "Corrupt Purge") .. " by " .. clror("+20 seconds") .. dot)
    },
    ["Emetic Potion"] = {
		desc =
			"A mustard-water based syrup that induces vomiting when consumed." .. br .. "Used to purge evil from the body." ..
			list(b("Increases") .. " the Infection gain from " .. biclr("vomit green", "Vile Purge") .. " by " .. clror("+30 %") .. dot)
    },
    ["Exorcism Amulet"] = {
		desc =
			"An obsidian amulet to ward off sickness during exorcism rituals. Inscribed with a prayer to the God of Mayhem and Pestilence." .. br .. "Fills the wearer with fierce devotion." ..
			list(b("Increases") .. " the duration of " .. biclr("blood red", "Corrupt Purge") .. " by " .. clror("+10 seconds") .. dot)
    },
    ["Haematite Seal"] = {
		desc =
			"A cylindrical seal forged from a metallic hard-stone, engraved with bird-headed beings that stood next to strange machines." .. br .. "Used as a container for sanctified ashes." ..
			list(b("Increases") .. " the Infection duration on Props hit with " .. biclr("vomit green", "Vile Purge") .. " by " .. clror("+30 seconds") .. dot)
    },
    ["Healing Salve"] = {
		desc =
			"A bitterly pungent paste of crushed roots, which were marinated in fish brine for three days and in wine for two." .. br .. "Applied on skin rashes." ..
			list(b("Reduces") .. " the Cool-down duration of " .. biclr("vomit green", "Vile Purge") .. " and " .. biclr("blood red", "Corrupt Purge") .. " by " .. clror("-0.25 seconds") .. dot)
    },
    ["Incensed Ointment"] = {
		desc =
			"A dark waxy paste, laced with cedar sap that diffuses a sweet and earthy aroma." .. br .. "Applied directly on infected skin." ..
			list("Ingesting " .. biclr("blood red", "Corruption") .. " causes all Survivors in your " .. iconLink(ils.terrorRadius) .. " to scream and reveal their locations to you.")
    },
    ["Infected Emetic"] = {
		desc =
			"A disgusting syrup of unknown origin." .. br .. "The thick yellow liquid is consumed to induce vomiting." .. br .. "Used to purge evil from the body." ..
			list(b("Increases") .. " the Infection gain from " .. biclr("vomit green", "Vile Purge") .. " by " .. clror("+40 %") .. dot)
    },
    ["Iridescent Seal"] = {
		desc =
			"A translucent cylindrical seal moulded from The Fog itself with the effigy of The Plague." .. br .. "Its surface is warm and pulsates with The Entity's power." ..
			list(
				"Automatically enter " .. biclr("blood red", "Corrupt Purge") .. " whenever a " .. iconLink(ils.generator) .. " is completed.",
				b("Reduces") .. " the duration of " .. biclr("blood red", "Corrupt Purge") .. " by " .. clror("-20 seconds") .. dot)
    },
    ["Limestone Seal"] = {
		desc =
			"A cylindrical seal made from porous stone that displays a ritualistic scene with winged deities." ..
			list(b("Increases") .. " the Infection duration on Props hit with " .. biclr("vomit green", "Vile Purge") .. " by " .. clror("+20 seconds") .. dot)
    },
    ["Olibanum Incense"] = {
		desc =
			"Precious resin extracted from Boswellia trees, used during ceremonies for their sweet citrusy fragrance." ..
			list("The " .. iconLink(ils.auras) .. " of Survivors cleansing at a " .. b("Pool of Devotion") .. " are revealed to you for " .. clror("4 seconds") .. dot)
    },
    ["Potent Tincture"] = {
		desc =
			"A frothing, murky liquid that permeates the air with an acute aroma of herbs and alcohol." .. br .. "Applied directly on blisters." ..
			list(b("Reduces") .. " the Cool-down duration of " .. biclr("vomit green", "Vile Purge") .. " and " .. biclr("blood red", "Corrupt Purge") .. " by " .. clror("-0.4 seconds") .. dot)
    }, 
    ["Prayer Tablet Fragment"] = {
		desc =
			"A fragmented stone tablet with a corrupted incantation originally used to purge illnesses and feelings of general malaise." ..
			list(
				b("Increases") .. " the Infection duration on Props hit with " .. biclr("vomit green", "Vile Purge") .. " by " .. clror("+40 seconds") .. dot,
				b("Increases") .. " the Infection gained while performing Interactions for Survivors by " .. clror("+100 %") .. dot,
				"Grants " .. clro("+100 %") .. " bonus Bloodpoints for Score Events in the " .. iconLink(ils.deviousness) .. " Category.",
				biclr("vomit green", "Vile Purge") .. " no longer affects Survivors directly.")
    }, 
    ["Prophylactic Amulet"] = {
		desc =
			"A fragmented stone tablet with a corrupted incantation originally used to purge illnesses and feelings of general malaise." ..
			list(b("Reduces") .. " the number of available " .. b("Pools of Devotion") .. " by " .. clror("-2") .. dot)
    }, 
    ["Rubbing Oil"] = {
		desc =
			"A beaker of rubbing oil with expectorant quality." .. br .. "Exudes the evergreen scent of laurel and rosemary." ..
			list(b("Increases") .. " the Charge speed of " .. biclr("vomit green", "Vile Purge") .. " and " .. biclr("blood red", "Corrupt Purge") .. " by " .. clror("+50 %") .. dot)
    }, 
    ["Severed Toe"] = {
		desc =
			"The decaying severed toe of Adiris, weaved on a thread and worn as an amulet around the neck." .. br .. "Radiates with vile power." ..
			list(b("Increases") .. " the Infection gained while performing Interactions for Survivors by " .. clror("+50 %") .. dot)
    }, 
    ["Vile Emetic"] = {
		desc =
			"A foul-smelling and half-congealed potion of unidentifiable ingredients." .. br .. "Consumed to rapidly induce vomiting." .. br .. "Used to purge evil from the body." ..
			list(b("Increases") .. " the Projectile speed of " .. biclr("vomit green", "Vile Purge") .. " and " .. biclr("blood red", "Corrupt Purge") .. " by " .. clror("+10 %") .. dot)
    }, 
    ["Worship Tablet"] = {
		desc =
			"A stone tablet adorned with gold, showing the drawings and writings of a corrupted incantation used originally to worship forgotten deities." ..
			list(
				b("Increases") .. " the Ingestion speed at " .. b("Pools of Devotion") .. " by " .. clror("+100 %") .. dot,
				b("Increases") .. " your Movement speed while holding " .. biclr("blood red", "Corrupt Purge") .. " by " .. clro("4.4 %") .. dot)
    }, 

	----------------------
    --- THE GHOST FACE ---
    ----------------------
    
    ["Cheap Cologne"] = {
		desc =
			"Dollar store cologne with a pungent scent of rubbing alcohol." .. br .. "Worn by The Ghost Face to make his presence known." .. br .. "Reserved for impromptu visits." ..
			list(b("Increases") .. " the duration of " .. biclr("bright red", "Marked") .. " by " .. clror("+10 seconds") .. dot)
    },
    ["Chewed Pen"] = {
		desc =
			"A blue pen with a chewed cap that holds traces of Danny's DNA." .. br .. "Incriminating evidence that was never found." ..
			list(b("Increases") .. " the Reveal time for Survivors in the " .. iconLink(ils.dyingState) .. " to " .. clror("3 seconds") .. dot)
    },
    ["Cinch Straps"] = {
		desc =
			"Black straps that keep everything in place while on the prowl." ..
			list("Causes " .. i("Night Shroud") .. " to remain active on missed " .. i("Basic Attacks") .. dot)
    },
    ["Driver's License"] = {
		desc =
			"A driver's license revealing Olsen's true identity: Danny Johnson." ..
			list(
				"Causes " .. iconLink(ils.generators) .. " to explode and lose " .. clror("-20 %") .. " of its maximum possible Progression, when marking a Survivor repairing it, and blocks it for " .. clro("15 seconds") .. dot,
				nbullet .. "This penalty is only once if multiple repairing Survivors are marked.") ..
			quote("They all want to know who Ghost Face is. But what they should ask is: who is next?", "The Ghost Face")
    },
    ["Drop-Leg Knife Sheath"] = {
		desc =
			"A sheath allowing for a full motion range: ideal to inflict quick and powerful wounds while moving freely." .. br .. "Stolen from a patrol officer the night Danny left Philadelphia." ..
			list("Grants a " .. clror("+10 % ") .. space .. states(ils.haste) .. " for " .. clro("5 seconds") .. " after marking a Survivor.") ..
			quote("Gotta get ready like a scout — without the stupid patches. What I get is much better.", "The Ghost Face")
    },
    ['"Ghost Face Caught on Tape"'] = {
		desc =
			"A tape obtained by Olsen to write an article that terrorised Roseville." ..
			list("Instantly recharges " .. i("Night Shroud") .. " after putting a Survivor into the " .. iconLink(ils.dyingState) .. " with a " .. i("Basic Attack") .. dot) ..
			quote("In this footage, a dark figure is seen entering a house late at night in Northern Roseville, Florida." .. br .. "The police were called the next morning to report a murder in the area." .. br .. "Lock your doors: a Killer is in our midst, roaming freely, like a ghost in the night.", "The Roseville Gazette")
    },
    ["Headline Cut-Outs"] = {
		desc =
			"Cut-outs of articles covering unsolved murder cases from Utah to Pennsylvania." .. br .. "While The Ghost Face just authored some of the headlines, he committed all of the murders." .. br .. "Compiling your success makes you proud and boosts your confidence." ..
			list(b("Increases") .. " your Movement speed while " .. i("Stalking") .. " by " .. clror("+40 %") .. dot)
    },
    ["Knife Belt Clip"] = {
		desc =
			"A perfect belt clip to scout carry your blade discreetly." .. br .. "No one knows what you are planning to do tonight." ..
			list(b("Reduces") .. " your " .. iconLink(ils.terrorRadius) .. " by " .. clror("-12 metres") .. " when " .. i("Crouched") .. dot)
    },
    ["Lasting Perfume"] = {
		desc =
			"An overpowering musky fragrance worn by The Ghost Face to announce his presence." .. br .. "Reserved for the victims he planned to write about." ..
			list(b("Increases") .. " the Reveal time for Survivors on a " .. iconLink(ils.hook) .. " to " .. clror("3 seconds") .. dot)
    },
    ["Leather Knife Sheath"] = {
		desc =
			"A quiet and flexible sheath to carry your blade." .. br .. "Movement is easier when things are fastened into place." ..
			list(b("Increases") .. " your Movement Speed by " .. clror("+10 %") .. " when " .. i("Crouched") .. dot)
    },
    ["Marked Map"] = {
		desc =
			"The annotated map of Northern Roseville, Florida." .. br .. "Each 'X' represents a victim of The Ghost Face." .. br .. "Mapping out your targets allows you to roam the streets undetected." ..
			list(b("Increases") .. " the duration of " .. i(link("Killer Instinct")) .. " by " .. clror("+2 seconds") .. dot)
    },
    ["Night Vision Monocular"] = {
		desc =
			"Night vision lens enabling sharp photos even when shrouded in darkness." .. br .. "Ideal for discreet, impromptu visits late at night." ..
			list("Survivors suffer from the " .. states(ils.exhausted) .. " for " .. clror("10 seconds") .. " after revealing you.")
    },
    ["Olsen's Address Book"] = {
		desc =
			"Filled in blunt, blue crabbed writing." .. br .. "All the Roseville murder victims are listed there, along with their phone number and address." ..
			list("The " .. iconLink(ils.auras) .. " of " .. i("Marked Survivors") .. " performing rushed actions are revealed to you for " .. clror("5 seconds") .. dot)
    },
    ["Olsen's Journal"] = {
		desc =
			"A spiral notebook filled with stained, handwritten entries." .. br .. "The journal details different equipment used to stalk victims." .. br .. "Going through your past methods triggers thrilling memories." ..
			list(i("Marked Survivors") .. " suffer from the " .. states(ils.oblivious) .. dot)
    },
    ["Olsen's Wallet"] = {
		desc =
			"Olsen's wallet holds thirty dollars in cash, a video club membership card, and a folded picture of Olsen's first Roseville victim." .. br .. "Carrying incriminating evidence boosts your excitement and resolve." ..
			list("Instantly recharges " .. i("Night Shroud") .. " after breaking a " .. iconLink(ils.breakableWall) .. " or a " .. iconLink(ils.pallet) .. dot)
    },
    ["Outdoor Security Camera"] = {
		desc =
			"A small surveillance camera that filmed The Ghost Face breaking into a house on Belleview Road in Northern Roseville." .. br .. "The camera was positioned at the perfect angle to catch a glimpse of The Ghost Face without providing any real clue to the police." ..
			list("The " .. iconLink(ils.auras) .. " of all Survivors are revealed to you for " .. clror("7 seconds") .. " after putting a " .. i("Marked Survivor") .. " into the " .. iconLink(ils.dyingState) .. dot) ..
			quote("An image is worth a thousand words.", "The Ghost Face")
    },
    ['"Philly"'] = {
		desc =
			"A stolen camera from a victim of Olsen in Philadelphia, where he worked before." .. br .. "The film inside captured his last night in the city." ..
			list(b("Reduces") .. " the Time to mark Survivors by " .. clror("#effect") .. dot) ..
			quote("Gotta love Philly: keeps giving and giving and I do not wanna forget any of it.", "The Ghost Face")
    },
    ["Telephoto Lens"] = {
		desc =
			"A manual focus lens to remain undetected while taking pictures from afar." ..
			list("Survivors suffer from the " .. states(ils.oblivious) .. " for " .. clror("60 seconds") .. " after revealing you.")
    },
    ["Victim's Detailed Routine"] = {
		desc =
			"A ripped page outlining the weekly routine of Olsen's first victim in Roseville." .. br .. "Compiling your victim's habits allows you to anticipate their movements." ..
			list("Survivors suffer from the " .. states(ils.exhausted) .. " for " .. clror("5 seconds") .. " after marking them.") ..
			quote("I have been watching you for a while. I wanted this to be special; the kind of headlines that people do not forget.", "The Ghost Face")
    },
    ["Walleye's Matchbook"] = {
		desc =
			"A sheet of matches from Walleye's, a small bar in Northern Roseville." .. br .. "A victim's phone number is scribbled in blue." .. br .. "One of the incriminating pieces of evidence found." ..
			list(b("Reduces") .. " the Power Recharge time by " .. clror("#effect") .. dot)
    },

    ----------------------
    --- THE DEMOGORGON ---
    ----------------------
    
    ["Barb's Glasses"] = {
		desc =
			"A broken pair of glasses that travelled to the Upside Down." ..
			list(b("Reduces") .. " the Attack cool-down of successful " .. i("Shred Attacks") .. " used to break " .. iconLink(ils.breakableWalls) .. " or " .. iconLink(ils.pallets) .. " by " .. clror("-10 %") .. dot)
    },
    ["Black Heart"] = {
		desc =
			"A black fermented heart ripped from the chest of a tentacled creature in the Upside Down." ..
			list(b("Reduces") .. " the Attack cool-down of successful " .. i("Shred Attacks") .. " used to hit Survivors by " .. clror("-10 %") .. dot)
    },
    ["Brass Case Lighter"] = {
		desc =
			"A lighter used to ignite trouble." ..
			list(
				"Survivors suffer from the " .. states(ils.blindness) .. " while closing " .. b("Portals") .. dot,
				nbullet .. "This effect lingers for " .. clror("60 seconds") .. dot) ..
			quote("Emits a strong electromagnetic field: it must have come into contact with the Upside Down.", "Hawkins National Laboratory")
    },
    ["Deer Lung"] = {
		desc =
			"A raw, rubbery lung that reinvigorates The Demogorgon." ..
			list(
				b("Increases") .. " your Teleportation speed by " .. clror("+30 %") .. dot,
				b("Reduces") .. " the number of available " .. b("Portals") .. " by " .. clro("-2") .. dot)
    },
    ["Eleven's Soda"] = {
		desc =
			"A soda can charged with psychic energy." ..
			list("The " .. iconLink(ils.auras) .. " of " .. iconLink(ils.generators) .. " actively being repaired by Survivors are highlighted to you in " .. bclr("yellow", "yellow") .. " while traversing the Upside Down.")
    },
    ["Leprose Lichen"] = {
		desc =
			"A potent lichen that grows like dust on the rocks in the Upside Down." ..
			list(
				"The " .. iconLink(ils.auras) .. " of all Survivors are revealed to you while traversing the Upside Down.",
				nbullet .. "This effect lingers for " .. clror("3 seconds") .. " for all Survivors within " .. clro("16 metres") .. " of an active Portal.") ..
			quote("One small dose can cause severe hallucinations.", "Hawkins National Laboratory")
    },
    ["Lifeguard Whistle"] = {
		desc =
			"A rusty, metal whistle that once ruled the Hawkins public pool." .. nlp ..
			"You benefit from the following effect:" ..
			list(b("Increases") .. " the number of available " .. b("Portals") .. " by " .. clror("#effect") .. dot) ..
			quote("Emits a strong electromagnetic field: it must have come into contact with the Upside Down.", "Hawkins National Laboratory")
    },
    ["Mews' Guts"] = {
		desc =
			"The tasty guts of an unfortunate victim." ..
			list(
				b("Reduces") .. " the Attack cool-down of missed " .. i("Shred Attacks") .. " by " .. clror("-11 %") .. dot,
				b("Increases") .. " the number of available " .. b("Portals") .. " by " .. clro("+1") .. dot)
    },
    ["Rat Liver"] = {
		desc =
			"A soggy pile of salty, soft liver." ..
			list(b("Increases") .. " your Movement speed while holding " .. i("Of the Abyss") .. " by " .. clror("#effect") .. dot)
    },
    ["Rat Tail"] = {
		desc =
			"A chewy rat tail for The Demogorgon to consume." ..
			list(b("Increases") .. " the Opening speed of " .. b("Portals") .. " by " .. clror("+50 %") .. dot)
    },
    ["Red Moss"] = {
		desc =
			"A psychedelic moss that grows on tree barks in the Upside Down." .. nlp ..
			"After traversing the " .. i("Upside Down") .. ", the following effects apply:" ..
			list(
				b("Extends") .. " the " .. effects("addon", "Red Moss", ils.undetectable) .. " gained after emerging from a " .. b("Portal") .. " by " .. clror("#bonus") .. " to " .. clro("#undetectable") .. dot,
				b("Suppresses") .. " all noises related to emerging from a " .. b("Portal") .. dot,
				b("Increases") .. " the time required to emerge from a " .. b("Portal") .. " by " .. clro("#penalty") .. dot) ..
			quote("Consuming its leaf enhances athletic performance and causes euphoria.", "Hawkins National Laboratory")
    },
    ["Rotten Green Tripe"] = {
		desc =
			"Rotten tripe that fuels The Demogorgon." ..
			list(b("Increases") .. " your Teleportation speed by " .. clror("+15 %") .. dot)
    },
    ["Rotten Pumpkin"] = {
		desc =
			"Pumpkin flesh infected by the rotten soil in Hawkins." ..
			list(
				"Causes the " .. b("Portal") .. " from which you start your Teleport to seal automatically.",
				"Grants " .. clror("+200") .. " bonus Bloodpoints for " .. i("Interdimensional Travel") .. " Score Events.")
    },
    ["Sticky Lining"] = {
		desc =
			"A fetid, viscous layer that covers and expands the interdimensional tunnels." ..
			list(b("Increases") .. " the " .. i("Area of Effect") .. " of active " .. b("Portals") .. " by " .. clror("+2.5 metres") .. dot)
    },
    ["Thorny Vines"] = {
		desc =
			"Thick, thorny vines that stretch and reinforce the interdimensional tunnels." ..
			list(
				b("Increases") .. " the " .. i("Area of Effect") .. " of active " .. b("Portals") .. " by " .. clror("#range") .. dot,
				b("Increases") .. " the Sealing time of " .. b("Portals") .. " by " .. clro("#effect") .. dot)
    },
    ["Unknown Egg"] = {
		desc =
			"A large, warm egg coated in gruesome webbing." ..
			list(b("Reduces") .. " the Recovery time of " .. i("Of the Abyss") .. " by " .. clror("-2.5 seconds") .. dot) ..
			quote("A large egg was sighted in the Upside Down, but no sample survived the trip to the lab for proper examination.", "Hawkins National Laboratory")
    },
    ["Upside Down Resin"] = {
		desc =
			"A sticky, flammable sap that fortifies the gateway to the interdimensional tunnels." ..
			list(b("Increases") .. " the Sealing time of " .. b("Portals") .. " by " .. clror("#effect") .. dot) ..
			quote("A sample taken from the bark of the tree once used as a gate. So far our conclusion as to its effect are inconclusive.", "Hawkins National Laboratory")
    },
    ["Vermilion Webcap"] = {
		desc =
			"A bright red poisonous mushroom from the Upside Down." .. nlp ..
			"After traversing the " .. i("Upside Down") .. ", the following effect applies:" ..
			list(
				b("Extends") .. " the " .. effects("addon", "Vermilion Webcap", ils.undetectable) .. " gained after emerging from a " .. b("Portal") .. " by " .. clror("#bonus") .. " to " .. clro("#undetectable") .. dot) ..
			quote("Still experimenting with this specimen, so far our results are inconsistent.", "Hawkins National Laboratory")
    },
    ["Violet Waxcap"] = {
		desc =
			"A dark fleshed mushroom from the Upside Down that allows The Demogorgon to telepathically distort the senses in its prey." .. nlp ..
			"After traversing the " .. i("Upside Down") .. ", the following effect applies:" ..
			list(
				b("Extends") .. " the " .. effects("addon", "Violet Waxcap", ils.undetectable) .. " gained after emerging from a " .. b("Portal") .. " by " .. clror("#bonus") .. " to " .. clro("#undetectable") .. dot)
    },
    ["Viscous Webbing"] = {
		desc =
			"Wet, elastic webs that broaden the interdimensional tunnels." ..
			list(b("Increases") .. " the Sealing time of " .. b("Portals") .. " by " .. clror("#effect") .. dot)
    },

    ---------------
    --- THE ONI ---
    ---------------
    
    ["Akito's Crutch"] = {
		desc =
			"The crutch used by Kazan's son after falling from a tree." .. br .. "Akito's playmate and her family were punished for the boy's injury." ..
			list(b("Increases") .. " your Movement speed during a " .. i("Demon Dash") .. " by " .. clror("+1 m/s") .. dot)
    },
    ["Blackened Toenail"] = {
		desc =
			"Fell off during one of Kazan's hundred winter treks to the temple." .. br .. "Despite his pilgrimage, Akito's leg would never heal." ..
			list(b("Increases") .. " your Movement speed while in " .. i("Absorption Mode") .. " by " .. clror("0.4 m/s") .. dot) ..
			quote("If a father sacrifices not for his children, then who does he father?", "Renjiro's Doctrine 11:12")
    },
    ["Bloody Sash"] = {
		desc =
			"Blood from a boy who called Kazan " .. i("\"The Noble Impostor\"") .. dot .. br .. "Kazan hid evidence of the fight from his father, often revelling at the sash in secret." ..
			list(b("Increases") .. " your Movement speed while in " .. i("Absorption Mode") .. " by " .. clror("0.7 m/s") .. dot)
    },
    ["Child's Wooden Sword"] = {
		desc =
			"Akito's practice sword." .. br .. "The child had little use for it after his injury." ..
			list(b("Increases") .. " the Aura-reading range on " .. bclr("bright red", "Blood Orbs") .. " in the environment by " .. clror("+3 metres") .. dot)
    },
    ["Chipped Saihai"] = {
		desc =
			"A baton that belonged to Renjiro." .. br .. "It was stolen by Kazan upon his departure." ..
			list(b("Increases") .. " the duration of " .. i("Blood Fury") .. " by " .. clror("+6 seconds") .. dot)
    },
    ["Cracked Sakazuki"] = {
		desc =
			"A cup from Kazan's wedding ceremony." .. br .. "It never made it through the night before being damaged." ..
			list(
				b("Reduces") .. " the Transition time into " .. i("Blood Fury") .. " by " .. clror("-0.5 seconds") .. dot,
				b("Reduces") .. " the Transition time out of " .. i("Blood Fury") .. " by " .. clro("-0.5 seconds") .. dot)
    },
    ["Ink Lion"] = {
		desc =
			"An ink painting that once hung in the Yamaoka Estate." .. br .. "Depicts the story of a lion eaten by mice." ..
			list(
				b("Reduces") .. " the Transition time into " .. i("Blood Fury") .. " by " .. clror("-0.5 seconds") .. dot,
				b("Reduces") .. " the Transition time out of " .. i("Blood Fury") .. " by " .. clro("-0.5 seconds") .. dot,
				b("Reduces") .. " the Power Gauge penalty for downing Survivors during " .. i("Blood Fury") .. " by " .. clro("-2 seconds") .. dot)
    },
    ["Iridescent Family Crest"] = {
		desc =
			"A crest that denotes its owner as being a part of the Yamaoka family." ..
			list("Causes Survivors within " .. clror("24 metres") .. " of your location to scream and reveal their location to you after hitting the ground with a missed " .. i("Demon Strike") .. dot) ..
			quote("Know who you are so you may shield your heart.", "Renjiro's Doctrine 11:2")
    },
    ["Kanai-Anzen Talisman"] = {
		desc =
			"A trinket given to Kazan at birth, its powers are meant to protect his family from harm." ..
			list(b("Increases") .. " your Movement speed during a " .. i("Demon Dash") .. " by " .. clror("+0.64 m/s") .. dot)
    },
    ["Lion Fang"] = {
		desc =
			"A tooth sold from an exotic vendor, it symbolises power and nobility." ..
			list(b("Increases") .. " the duration of " .. i("Blood Fury") .. " by " .. clror("+10 seconds") .. dot)
    },
    ["Paper Lantern"] = {
		desc =
			"Perhaps a memento of simpler times, before rage fully enveloped him." ..
			list(b("Increases") .. " the Floating speed of " .. bclr(19, "Blood Orbs") .. " towards you when in " .. i("Absorption Mode") .. " by " .. clror("+4 m/s") .. dot)
    },
    ["Polished Maedate"] = {
		desc =
			"A horned crest Kazan tore from his helmet after being compared to a demon." ..
			list(b("Increases") .. " the passive Charge rate of " .. i("Blood Fury") .. " by " .. clror("+0.1 c/s") .. dot)
    },
    ["Renjiro's Bloody Glove"] = {
		desc =
			"The glove Renjiro held to his sternum following the strike dealt by his son Kazan." ..
			"Whenever a Survivor comes into a contact with a " .. bclr(19, "Blood Orb") .. ", the following effects apply:" ..
			list(
				"The " .. bclr(19, "Blood Orb") .. " is absorbed by the Survivor.",
				"Their " .. iconLink(ils.aura) .. " is revealed to you for " .. clror("#aura") .. " per absorbed " .. bclr(19, "Blood Orb") .. dot) ..
			"#pn grants Survivors the ability to see " .. bclr(19, "Blood Orbs") .. " at the same distance as you." .. nlp ..
			quote("When all else spills out, cling only to your honour.", "Renjiro's Doctrine 14:12")
    },
	["Rotting Rope"] = {
		desc =
			"Had the rope been stronger it would have likely held Kazan." .. br .. "As it was, he escaped and butchered his captors." ..
			list(b("Increases") .. " the Aura-reading range on " .. bclr(19, "Blood Orbs") .. " in the environment by " .. clror("+2 metres") .. dot) ..
			quote("Though Death is focused, he has been known to blink.", "Renjiro's Doctrine 14:5")
    },
	["Scalped Topknot"] = {
		desc =
			"The topknot of a samurai who questioned Kazan's honour." .. br .. "The roots cling to a thin strip of bloody skin." ..
			list(b("Reduces") .. " the Charge time of " .. i("Demon Dash") .. " by " .. clror("-0.5 seconds") .. dot)
    },
	["Shattered Wakizashi"] = {
		desc =
			"The fragments of an ancestral blade, destroyed by Kazan in a fit of rage." ..
			list(b("Increases") .. " the passive Charge rate of " .. i("Blood Fury") .. " by " .. clror("+0.2 c/s") .. dot)
    },
	["Splintered Hull"] = {
		desc =
			"Fragments of a ship that carried Renjiro Yamaoka." .. br .. "Against all odds, the legendary samurai seemed to survive." ..
			list(
				b("Increases") .. " the Spawn frequency of " .. bclr(19, "Blood Orbs") .. " from injured Survivors by " .. clror("+33 %") .. dot,
				b("Increases") .. " the number of " .. bclr(19, "Blood Orbs") .. " spawned when Survivors perform specific interactions by " .. clro("+1") .. dot) ..
			quote("To plan subterfuge, begin with a counsel of none.", "Renjiro's Doctrine 7:9")
    },
	["Tear-Soaked Tenugui"] = {
		desc =
			"The cloth that Kazan's mother cried into when he left on his pilgrimage to cleanse the samurai." ..
			list(b("Reduces") .. " the Power Gauge penalty for downing Survivors during " .. i("Blood Fury") .. " by " .. clror("-4 seconds") .. dot)
    },
	["Wooden Oni Mask"] = {
		desc =
			"A mask that a young Kazan bought to celebrate Setsubun, its repulsively fanged mouth began haunting his nightmares." ..
			list(
				b("Increases") .. " the Spawn frequency of " .. bclr(19, "Blood Orbs") .. " from injured Survivors by " .. clror("+14 %") .. dot,
				b("Increases") .. " the number of " .. bclr(19, "Blood Orbs") .. " spawned when Survivors perform specific interactions by " .. clro("+1") .. dot) ..
			quote("It is no coincidence that man is so familiar with demons.", "Renjiro's Doctrine 3:8")
    },
    ["Yamaoka Sashimono"] = {
		desc =
			"The banner of the Yamaoka family, Kazan felt an overwhelming pride from it." ..
			list(b("Increases") .. " the duration of " .. i("Blood Fury") .. " by " .. clror("+8 seconds") .. dot)
    },

    ------------------------
    --- THE DEATHSLINGER ---
    ------------------------
    
    ["Barbed Wire"] = {
		desc =
			"Pliable American-made steel lined with sharp barbs." .. br .. "Despite its simplicity, Caleb found it could be wrapped around a spear to increase its viciousness." ..
			list(b("Increases") .. " the Mending time of Survivors by " .. clror("+3.5 seconds") .. dot) ..
			quote("There won't be nothing to fear soon. Till then, fear me.", "Caleb Quinn")
    },
    ["Bayshore's Cigar"] = {
		desc =
			"A quality cigar, plucked from the jacket of Caleb's boss while he wailed over the spear lodged in his abdomen." ..
			list(b("Reduces") .. " the Stun duration when Survivors break free from " .. i("The Redeemer") .. " by " .. clror("-0.75 seconds") .. dot) ..
			quote("Do not point that thing at me, you slack-jawed imbecile.", "Henry Bayshore")
    },
    ["Bayshore's Gold Tooth"] = {
		desc =
			"A golden tooth torn from Henry Bayshore as he screamed for mercy, hours before he was finished off." ..
			list(b("Increases") .. " the Reeling speed of " .. i("The Redeemer") .. " by " .. clror("+5 %") .. dot) ..
			quote("Know your place, boy. Know you damn place.", "Henry Bayshore")
    },
    ["Chewing Tobacco"] = {
		desc =
			"A can of clipped and sweetened tobacco leaves lifted from a gutted body in Glenvale." .. br .. "Stimulates the nervous system." ..
			list(b("Reduces") .. " the Stun duration when Survivors break free from " .. i("The Redeemer") .. " by " .. clror("-0.25 seconds") .. dot)
    },
    ["Gold Creek Whiskey"] = {
		desc =
			"Warm comfort in a bottle that quelled Caleb's anger and slowed his step." ..
			list(b("Reduces") .. " your " .. iconLink(ils.terrorRadius) .. " by " .. clror("-8 metres") .. " during " .. i("Aim Down Sights") .. dot) ..
			quote("A smooth taste for the rugged frontier.", "Gold Creek Advertisement, 1876")
    },
    ["Hellshire Iron"] = {
		desc =
			"The Hellshire Gang's branding iron." .. br .. "Despite folklore, it never made its mark on new initiates, instead having been used to brand particularly quarrelsome bounties." ..
			list(
				"Grants the " .. states(ils.undetectable) .. " while a Survivor is speared by " .. i("The Redeemer") .. dot,
				nbullet .. "This effect lingers for " .. clror("10 seconds") .. dot) ..
			quote("Hellshire Gang: Justice Seekers or Outlaws?", "Glenvale Gazette headline")
    },
    ["Honey Locust Thorn"] = {
		desc =
			"Angered with a bounty who fled twice before, Caleb twisted thorn branches onto a spear and let it loose." ..
			list("Speared Survivors breaking free from the " .. i("The Redeemer") .. " suffer from the " .. states(ils.mangled) .. " for " .. clror("70 seconds") .. dot)
    }, 
    ["Iridescent Coin"] = {
		desc =
			"A glass-like coin moulded from The Fog itself." .. br .. "A payment to the bounty hunter for the services rendered." ..
			list("Survivors suffer from the " .. states(ils.exposed) .. " while speared by " .. i("The Redeemer") .. ", if shot from at least " .. clror("12 metres") .. " away.") ..
			quote("Deals made in desperation are paid for in madness.")
    }, 
    ["Jaw Smasher"] = {
		desc =
			"The bullet that ripped through Caleb's jaw during a frenzy shootout." .. br .. "It brings back burning desire for revenge." ..
			list(b("Increases") .. " your Movement speed by " .. clror("+1.5 %") .. " during " .. i("Aim Down Sights") .. dot) ..
			quote("You called death to your door the instant you done me wrong.", "Caleb Quinn")
    }, 
    ["Marshal's Badge"] = {
		desc =
			"A silver badge taken from the corpse of a lawman in Arizona Territory who interfered with the Hellshire Gang's bounties." ..
			list(b("Reduces") .. " your " .. iconLink(ils.terrorRadius) .. " by " .. clror("-4 metres") .. " during " .. i("Aim Down Sights") .. dot) ..
			quote("Get your prayers in, you'll be swinging by noon.", "Caleb Quinn")
    },
    ["Modified Ammo Belt"] = {
		desc =
			"An old ammo belt Caleb altered for his specialised weaponry." .. br .. "Still holds the fine red dirt of the Arizona Territory desert." ..
			list(b("Reduces") .. " the Reload time of " .. i("The Redeemer") .. " by " .. clror("-0.25 seconds") .. dot)
    },
    ["Poison Oak Leaves"] = {
		desc =
			"An ordinary-looking plant, Caleb found out that spears coated in its oil cause unbearable blistering around wound." ..
			list(b("Increases") .. " the Mending time of Survivors by " .. clror("+1.5 seconds") .. dot)
    },
    ["Prison Chain"] = {
		desc =
			"A thick, heavy chain that once held a steel ball and latched to Caleb's ankle." .. br .. "It has been re-purposed to hook onto a spear." ..
			list(b("Increases") .. " the Break-Free time of Survivors from " .. i("The Redeemer") .. " by " .. clror("+10 %") .. dot) ..
			quote("Inmates working beyond the prison yard must be affixed with a steel ball of no less than 18 pounds.", "Hellshire Penitentiary Guard Book")
    },
    ["Rickety Chain"] = {
		desc =
			"Weak steel links first used on Caleb's prototype Speargun." .. br .. "Despite the chain's failings, it holds sentimental value." ..
			list(
				"Grants " .. clror("+50 %") .. " bonus Bloodpoints for " .. i("Speared") .. " Score Events.",
				b("Increases") .. " the Break-Free speed of Survivors from " .. i("The Redeemer") .. " by " .. clro("+33 %") .. dot)
    },
    ["Rusted Spike"] = {
		desc =
			"A railroad spike that Caleb fastened to the front of the Speargun during a moment of morbid curiosity." .. br .. "The dull tip prevents it from cleanly piercing its target." ..
			list("Speared Survivors hit with the " .. i("The Redeemer") .. " suffer from the " .. states(ils.mangled) .. " for " .. clror("60 seconds") .. dot)
    }, 
	["Snake Oil"] = {
		desc =
			"A tincture of oils and extracts purchased from a travelling salesman." .. br .. "Purported to cure all that ails you." ..
			list(b("Increases") .. " the Reeling speed of " .. i("The Redeemer") .. " by " .. clror("+2.5 %") .. dot)
    },
	["Spit Polish Rag"] = {
		desc =
			"A grimy piece of burlap." .. br .. "Spit and elbow grease was enough to wipe down the Speargun in the heat of a shootout." ..
			list(b("Reduces") .. " the Cool-down time of missed shots with " .. i("The Redeemer") .. " by " .. clror("-0.25 seconds") .. dot)
    },
	["Tin Oil Can"] = {
		desc =
			"A can holding a small amount of oil to reduce friction in machinery." .. br .. "Early models of the Speargun were notorious for jamming, and oil had to be readily available." ..
			list(b("Reduces") .. " the Cool-down time of missed shots with " .. i("The Redeemer") .. " by " .. clror("-0.5 seconds") .. dot)
    },
    ["Wanted Poster"] = {
		desc =
			"The bullet that ripped through Caleb's jaw during a frenzy shootout." .. br .. "It brings back burning desire for revenge." ..
			list(b("Increases") .. " your Movement speed by " .. clror("+3 %") .. " during " .. i("Aim Down Sights") .. dot) ..
			quote("You'll be met with a fierce reckoning, swear it on my mum's grave.", "Caleb Quinn")
    }, 
    ["Warden's Keys"] = {
		desc =
			"The dull jangle of the keys evokes a furious memory within Caleb." ..
			list(b("Reduces") .. " the Reload time of " .. i("The Redeemer") .. " by " .. clror("-0.35 seconds") .. dot)
    },

    -----------------------
    --- THE EXECUTIONER ---
    -----------------------
    
    ["Black Strap"] = {
		desc =
			quote("A nylon strap that was used to restrain a victim to a metal frame." .. br .. "The colour makes it difficult to see the blood-soaked into it.") .. nlp ..
			"Modifies " .. i("Punishement of the Damned") .. " with the following effects:" ..
			list(
				b("Increases") .. " its width by " .. clror("#width") .. dot,
				b("Reduces") .. " its range by " .. clro("#range") .. dot)
    },
    ["Burning Man Painting"] = {
		desc =
			quote("A diagram of the Lakeview Hotel." .. br .. "Red flames are painted over this place of guilt.") .. nlp ..
			"Missed " .. i("Punishment of the Damned") .. " attacks trigger the following effect:" ..
			list("The " .. iconLink(ils.auras) .. " of all Survivors within " .. clror("#auraRange") .. " of your current location are revealed to you for " .. clro("#auraDuration") .. dot)
    },
    ["Cinderella Music Box"] = {
		desc =
			quote("A music box with a figure from the fairy tale Cinderella, found inside a suitcase adorned with stickers from multiple destinations.") .. nlp ..
			"Modifies " .. i("Punishment of the Damned") .. " with the following effect:" ..
			list(b("Reduces") .. " its Cool-down time by " .. clror("#effect") .. dot)
	},
    ["Copper Ring"] = {
		desc =
			quote("Found in the basement of Brookhaven Hospital." .. br .. "It is engraved with a picture of a spider.") .. nlp ..
			"Modifies " .. i("Rites of Judgement") .. " with the following effect:" ..
			list(b("Increases") .. " its maximum duration by " .. clror("#duration") .. dot) ..
			quote("I was locked up inside the basement's basement. It was so small and dark, and I was so afraid. I dropped my precious ring. But I'll never ever go back there.")
    },
    ["Crimson Ceremony Book"] = {
		desc =
			quote("A book about an ancient god. Author unknown.") .. nlp ..
			"Successful " .. i("Punishment of the Damned") .. " attacks trigger the following effect:" ..
			list("Causes hit Survivors to suffer from the " .. effects("addon", "Crimson Ceremony Book", ils.haemorrhage, ils.mangled) .. " for " .. clror("#duration") .. dot) ..
			quote("Speak! I am the Crimson One! The lies and the mist are not they, but I!")
    },   
    ["Dead Butterfly"] = {
		desc =
			quote("A butterfly found on a bed at Wood Side Apartments." .. br .. "It is frail and nearly falls apart when touched.") .. nlp ..
			"Modifies " .. i("Rites of Judgement") .. " with the following effect:" ..
			list(b("Increases") .. " its Recharge rate by " .. clror("#effect") .. dot)
    }, 
    ["Forgotten Videotape"] = {
		desc =
			quote("A videotape of two lovers vacationing in Silent Hill." .. br .. "Despite its sentimental value, it was left behind in the Lakeview Hotel.") .. nlp ..
			"Modifies " .. i("Punishment of the Damned") .. " with the following effect:" ..
			list(b("Increases") .. " its Travel speed by " .. clror("#effect") .. dot)
    },     
    ["Iridescent Seal of Metatron"] = {
		desc =
			quote("A talisman with an odd design inscribed on it." .. br .. "The Entity's influence seems to have altered it.") .. nlp ..
			"Modifies " .. i("Punishment of the Damned") .. " with the following effects:" ..
			list(
				b("Reduces") .. " its base range by " .. clror("#minLength") .. dot,
				b("Increases") .. " its range progressively while drawing " .. b("Torment Trials") .. ", up to a maximum " .. clro("#maxLength") .. dot,
				nbullet .. "This effect resets after hitting a Survivor with " .. i("Punishment of the Damned") .. dot) ..
			quote("This magic square, with strong protective and dispelling properties, is called the 'Virun VII Crest' or the 'Seal of Metatron'.")
    }, 
    ["Lead Ring"] = {
		desc =
			quote("Found in a refrigerator." .. br .. "It is engraved with a disgusting, bloated face.") .. nlp ..
			"Modifies " .. i("Punishment of the Damned") .. " with the following effects:" ..
			list(
				b("Increases") .. " its range by " .. clror("#range") .. dot,
				b("Reduces") .. " its width by " .. clro("#width") .. dot)
    }, 
    ["Leopard-Print Fabric"] = {
		desc =
			quote("A shred of pink, leopard-print fabric." .. br .. "It is difficult to tell what it was used for.") .. nlp ..
			"While using " .. i("Rites of Judgement") .. ", you benefit from the following effect:" ..
			list(b("Reduces") .. " the duration of stuns by " .. clror("#effect") .. dot) ..
			quote("It doesn't matter who I am. I'm here for you, James.", "Maria")
    }, 
    ["Lost Memories Book"] = {
		desc =
			quote("A book about the history and legends of Silent Hill and the surrounding area.") .. nlp ..
			"Successful " .. i("Punishment of the Damned") .. " attacks trigger the following effect:" ..
			list("Causes hit Survivors to suffer from the " .. effects("addon", "Lost Memories Book", ils.oblivious) .. " for " .. clror("#oblivious") .. dot) ..
			quote("They called this place 'The Place of the Silent Spirits'.")
    }, 
    ["Mannequin Foot"] = {
		desc =
			quote("The smooth grey foot of a mannequin, brutally torn from its leg.") .. nlp ..
			"Modifies " .. b("Torment Trails") .. " with the following effect:" ..
			list("Causes Survivors to suffer from the " .. effects("addon", "Mannequin Foot", ils.exhausted) .. " for " .. clror("#exhausted") .. " upon contact.")
    }, 
    ["Misty Day, Remains of Judgement"] = {
		desc =
			quote("A painting of an imposing figure wearing a steel pyramid atop his head." .. br .. "Victims are caged in the background.") .. nlp ..
			"Successful " .. i("Punishment of the Damned") .. " attacks trigger the following effect:" ..
			list("Causes the " .. iconLink(ils.auras) .. " of hit Survivors to be revealed to you for " .. clro("#auraDuration") .. dot)
    }, 
    ["Obsidian Goblet"] = {
		desc =
			quote("An ancient looking goblet carved from pure obsidian.") .. nlp ..
			"Modifies " .. i("Punishment of the Damned") .. " with the following effects:" ..
			list(
				"Grants the ability to destroy " .. iconLink(ils.breakableWalls) .. " and " .. iconLink(ils.pallets) .. " upon contact.",
				b("Increases") .. " its cool-down by " .. clror("#effect") .. dot) ..
			quote("Forgive me for waking you. But without you, I just can't go on.", "James Sunderland")
    }, 
    ["Rust-Coloured Egg"] = {
		desc =
			quote("An old-looking egg, coloured reddish orange, about the size of a quail's egg.") .. nlp ..
			"Successful " .. i("Punishment of the Damned") .. " attacks trigger the following effect:" ..
			list("Recharges " .. i("Rites of Judgement") .. " by " .. clror("#effect") .. dot) ..
			quote("James... you made me happy.", "Mary")
    },
    ["Scarlet Egg"] = {
		desc =
			quote("A fresh egg, strikingly red in colour, about the size of a quail's egg.") .. nlp ..
			"Modifies " .. i("Rites of Judgement") .. " with the following effects:" ..
			list(
				"While running, Survivors afflicted by " .. i("Torment") .. " create their own " .. b("Torment Trails") .. " trailing after them.",
				nbullet .. "These " .. b("Torment Trails") .. " last for " .. clror("#duration") .. dot,
				b("Removes") .. " the ability to read the " .. iconLink(ils.auras) .. " of " .. b("Torment Trails") .. dot) ..
			quote("I've never been so scared in my whole life! You couldn't care less about me... could you?", "Maria")
    }, 
    ["Spearhead"] = {
		desc =
			quote("The sharp, rusted tip of a spear." .. br .. "It is flaked with blood from its last victim.") .. nlp ..
			"Survivors rescuing others from a " .. b("Cage of Atonement") .. " suffer from the following effect:" ..
			list("Their " .. iconLink(ils.aura) .. " is revealed to you for " .. clror("#duration") .. dot)
    },
    ["Tablet of the Oppressor"] = {
		desc =
			quote("A metal tablet engraved with Aztec figures.") .. nlp ..
			"While using " .. i("Rites of Judgement") .. ", the following effect applies:" ..
			list("Grants the " .. effects("addon", "Tablet of the Oppressor", ils.undetectable) .. dot)
    },
    ["Valtiel Sect Photograph"] = {
		desc =
			quote("A photograph of two figures in red hoods." .. br .. "Entitled Crimson and White Banquet for the Gods.") .. nlp ..
			"For each Survivor afflicted by " .. i("Torment") .. ", you benefit from the following effect:" ..
			list(b("Reduces") .. " your " .. iconLink(ils.terrorRadius) .. " by a stack-able " .. clror("#radius(1)") .. ", up to a maximum of " .. clro("#radius(2)") .. dot)
    },
    ["Wax Doll"] = {
		desc =
			quote("A doll carved from wax, handcrafted by a prisoner who would soon face their judgement.") .. nlp ..
			"Modifies " .. i("Punishment of the Damned") .. " with the following effect:" ..
			list(b("Increases") .. " its range by " .. clror("#range") .. dot)
    },

    ------------------
    --- THE BLIGHT ---
    ------------------
    
    ["Adrenaline Vial"] = {
		desc =
			"A hormone removed from an unwilling subject's adrenal gland." .. br .. "Though it provides a jolt of energy, it can fatigue its user." ..
			list(
				b("Increases") .. " the number of available Power Tokens by " .. clror("+2") .. dot,
				b("Increases") .. " your Movement speed during a " .. i("Rush") .. " by " .. clro("+5 %") .. dot,
				b("Increases") .. " your maximum Look angle during a " .. i("Rush") .. " by " .. clro("+20 °") .. dot,
				b("Reduces") .. " your Turn rate during a " .. i("Rush") .. " by " .. clro("-0.5 °/s") .. dot) ..
			quote("Please, don't do this...")
    },
    ["Alchemist's Ring"] = {
		desc =
			"A ring given to chemists graduating from the London School of Medicine." .. br .. "It is a reminder of unrestrained ambition." ..
			list(b("Extends") .. " the " .. i("Rush") .. " duration by ".. clror("+20 %") .. " for each consecutive " .. i("Lethal Rush") .. dot) ..
			quote("The student is accused of grave-robbing with the intent of unsanctioned scientific testing.", "Faculty Reprimand of Talbot Grimes, 1838")
    },
    ["Blighted Crow"] = {
		desc =
			"A dead crow that has been grotesquely mutated by Putrid Serum." ..
			list(b("Increases") .. " your Movement speed during a " .. i("Rush") .. " by a stack-able ".. clror("+3 %") .. " for each consecutive " .. i("Lethal Rush") .. dot)
    },
    ["Blighted Rat"] = {
		desc =
			"A rat that briefly returned to life when injected with Putrid Serum, becoming aggressive and uncontrollable." ..
			list(b("Increases") .. " your Movement speed during a " .. i("Rush") .. " by a stack-able ".. clror("+2 %") .. " for each consecutive " .. i("Lethal Rush") .. dot)
    },
    ["Canker Thorn"] = {
		desc =
			"A sizeable thorn snipped from a Visceral Canker." .. br .. "It secretes a mild toxin." ..
			list(b("Reduces") .. " the duration of " .. i("Fatigue") .. " by " .. clror("-0.5 seconds") .. dot)
    },
    ["Chipped Monocle"] = {
        desc =
            "A monocle Talbot rarely used despite his eyesight weakening in later years." ..
            list("Unlocks the ability to see the Target location of a " .. i("Slam") .. dot)  
    },
    ["Compound Seven"] = {
        desc =
            "This early sample failed to achieve desired results, but demonstrated surprising effects regardless." ..
            list("Causes you to automatically face the nearest Survivor within " .. clror("16 metres") .. " of your location after a " .. i("Slam") .. dot)  
    },
    ["Compound Thirty-Three"] = {
        desc =
            "Talbot's penultimate attempt at a serum." .. br .. "Though it did not facilitate his escape, it did have powerful side effects." ..
            list(
            	i("Blighted Corruption") .. " is capped at " .. clror("5 Tokens") .. dot,
            	b("Increases") .. " your Turn rate during a " .. i("Rush") .. " by " .. clro("+11 %") .. dot,
            	b("Increases") .. " the duration of a " .. i("Rush") .. " by " .. clro("+11 %") .. dot) ..
            quote("Time is scarce. Let this be the one...", "Talbot Grimes")
    },
    ["Compound Twenty-One"] = {
        desc =
            "A serum that's fatal to humans." .. br .. "It evokes beneficial qualities in those who are... something more." ..
            list("The " .. iconLink(ils.auras) .. " of Survivors within " .. clror("8 metres") .. " of a " .. i("Slam") .. " are revealed to you for " .. clro("3.5 seconds") .. dot)
    },
    ["Foxglove"] = {
		desc =
			"A poisonous plant that sparked Talbot's interest in chemistry." .. br .. "It rekindles deeply buried memories." ..
			list(b("Reduces") .. " the duration of " .. i("Fatigue") .. " by " .. clror("-0.25 seconds") .. dot)
    },
    ["Iridescent Blight Tag"] = {
		desc =
			"A glass-like laboratory tag, moulded from The Fog itself." .. br .. "Either a gift from The Entity or a cruel jest to tag The Blight as he once did to others." ..
			list(
				i("Blighted Corruption") .. " is capped at " .. clror("3 Tokens") .. dot,
				b("Increases") .. " your Movement speed during a " .. i("Rush") .. " by " .. clro("+10 %") .. dot,
				b("Increases") .. " your maximum Look angle during a " .. i("Rush") .. " by " .. clro("+20 °") .. dot) ..
			quote("Progress requires drastic change.", "Talbot Grimes")
    },
    ["Placebo Tablet"] = {
		desc =
			"A pill that is utterly ineffective... or is it?" ..
			list(
				b("Reduces") .. " your Movement speed during a " .. i("Rush") .. " by " .. clror("-15 %") .. dot,
				"Grants " .. clro("+100 %") .. " bonus Bloodpoints for " .. i("Rush") .. " Score Events.")
    },
    ["Plague Bile"] = {
		desc =
			"A sample of bile from " .. b("The Plague") .. " distilled and treated with a mixture of chemicals." ..
			list(b("Increases") .. " the Turn rate during a " .. i("Rush") .. " by " .. clror("+10 %") .. dot)
    },
    ["Pustula Dust"] = {
		desc =
			"Dried " .. i("Pustula Petals") .. " ground into a fine dust." ..
			list(b("Increases") .. " the duration of the " .. i("Chain Rush Window") .. " by " .. clror("+0.75 seconds") .. dot)
    },
    ["Rose Tonic"] = {
		desc =
			"A mixture made with dried roses from the exceedingly rare " .. i("New Moon Bouquet") .. dot ..
			list(b("Increases") .. " the duration of the " .. i("Chain Rush Window") .. " by " .. clror("+1 second") .. dot)
    },
    ["Shredded Notes"] = {
		desc =
			"The remnants of Talbot's notes, they still contain some valuable information within." ..
			list(b("Reduces") .. " the Recharge time per Power Token by " .. clror("-0.33 seconds") .. dot)
    },
    ["Soul Chemical"] = {
		desc =
			"A chemical squeezed from the pineal gland of a recently deceased Survivor." ..
			list(b("Increases") .. " the initial Movement speed of a " .. i("Rush") .. " by " .. clror("+5 %") .. dot) ..
			quote("...suspected to cause atypical alterations in neural rhythmic activity.", "Unlabelled Mystery School Text")	
    },
    ["Summoning Stone"] = {
		desc =
			"Talbot used this stone to carve what he believed was his research into the Opium Den's walls." ..
			list(b("Increases") .. " the initial duration of a " .. i("Rush") .. " by " .. clror("+0.5 seconds") .. dot) ..
			quote("Death is only the beginning.")	
    },
    ["Umbra Salts"] = {
		desc =
			"Regular sea salt that has momentarily passed through the Spirit World, altering its properties in the process." ..
			list(b("Increases") .. " the Turn rate during a " .. i("Rush") .. " by " .. clror("+15 %") .. dot)
    },
    ["Vigo's Journal"] = {
		desc =
			"The journal of a man who claimed to have returned from The Void." .. br .. "The knowledge within has practical applications." ..
			list("Grants the " .. states(ils.undetectable) .. " during a " .. i("Rush") .. dot) ..
			quote("In a wasteland of forgotten dreams and endless routine, the man with a way out is God.", "Talbot Grimes")
    },

    -----------------
    --- THE TWINS ---
    -----------------

    ["Baby Teeth"] = {
		desc =
			"Two teeth that Victor lost long ago." .. br .. "They are unusually sharp." ..
			list("Survivors suffer from the " .. states(ils.blindness) .. " for " .. clror("30 seconds") .. " after removing " .. b("Victor") .. dot)
    },
    ["Bloody Black Hood"] = {
		desc =
			"A hood from one of the men that hunted Charlotte." .. br .. "Soon, he became the prey." ..
			list(b("Reduces") .. " the Transition time when switching back to " .. b("Charlotte") .. " by " .. clror("-0.5 seconds") .. dot)
    },
    ["Cat's Eye"] = {
		desc =
			"An eyeball that belonged to a cat eaten by the starving Deshayes family." .. br .. "Victor hid it from his mother, using it as a toy." ..
			list(b("Suppresses") .. " all noise made by " .. b("Victor") .. " while holding a " .. i("Pounce") .. dot)
    },
    ["Cat Figurine"] = {
		desc =
			"A wooden figure that had caught young Victor's eye." .. br .. "He shrieked until his mother stole it from the market, nearly blowing their cover." ..
			list("Unlocks the ability to see the Target location of a " .. i("Pounce") .. dot)  
    },
    ["Ceremonial Candelabrum"] = {
		desc =
			"The candelabrum that Victor tipped over, causing his captors to burn." .. br .. "A symbol of his tenacity." ..
			list(b("Increases") .. " the Crushing time of " .. b("Victor") .. " by " .. clror("+0.2 seconds") .. " when controlling " .. b("Charlotte") .. dot)  
    },
    ["Drop of Perfume"] = {
		desc =
			"One of the few luxuries Madeleine escaped her past life with." .. br .. "It has a pleasant, disarming scent." ..
			list("Survivors suffer from the " .. states(ils.oblivious) .. " within " .. b("Victor's") .. space .. i("Shriek") .. " range when controlling " .. b("Charlotte") .. dot) ..
			quote("Beware the deceit of witches, for they exploit the goodness in men's hearts.", "A History of Witches and Demons, 1602")
    },
    ["Forest Stew"] = {
		desc =
			"A stew of foraged vegetables mixed with moss and bark to create a false sense of fullness." ..
			list(b("Increases") .. " your Movement speed when controlling " .. b("Victor") .. " by " .. clror("+0.6 m/s") .. dot) ..
			quote("Eat... eat, child. You'll feel better when it's down.", "Madeleine Deshayes")
    },
    ["Iridescent Pendant"] = {
		desc =
			"A glass-like pendant moulded from The Fog itself." .. br .. "There is a portrait of Madeleine Deshayes upon it, though something about her depiction seems unsettling." ..
			list("Crushing " .. b("Victor") .. " while " .. b("Charlotte") .. " is in control causes the Survivor to suffer from the " .. states(ils.exposed) .. " for " .. clror("45 seconds") .. dot) ..
			quote("Your binding is no curse, my loves. It is your strength to draw upon.", "Madeleine Deshayes")
    },
    ["Madeleine's Glove"] = {
		desc =
			"A glove once owned by The Twins' mother." .. br .. "During desperate times, it was held over Victor's mouth to keep him from making a peep." ..
			list(b("Increases") .. " the " .. i("Shriek") .. " radius of " .. b("Victor") .. " by " .. clror("+4 metres") .. dot)
    },
    ["Madeleine's Scarf"] = {
		desc =
			"A cloth Madeleine wore shortly before her death." .. br .. "The Twins kept it as a memento." ..
			list(b("Increases") .. " your Movement speed when controlling " .. b("Victor") .. " by " .. clror("+0.3 m/s") .. dot) ..
			quote("...shall hereby be recorded as a service to the greater good and the extermination of evil.", "Inquiry into the Death of Madeleine Deshayes")
    },
    ["Rusted Needle"] = {
		desc =
			"A needle Madeleine used to sew up her children's tattered clothes." ..
			list("Removing a latched-on " .. b("Victor") .. " causes the Survivor to suffer from the " .. states(ils.haemorrhage) .. " until fully healed.")
    },
    ["Sewer Sludge"] = {
		desc =
			"A disgusting, sticky mixture that covered the Deshayes during an escape attempt through the city sewers." ..
			list(b("Increases") .. " the time required to remove a latched-on " .. b("Victor") .. " by " .. clror("+2 seconds") .. dot)
    },
    ["Silencing Cloth"] = {
		desc =
			"A coarse strip of cloth that a five-year-old Charlotte would put in her mouth." .. br .. "Stopped her from screaming when witch hunters were nearby." ..
			list("After waking from her " .. i("Dormant State") .. comma .. b("Charlotte") .. " is granted the " .. states(ils.undetectable) .. " for " .. clror("20 seconds") .. dot) ..
			quote("I don't like this game anymore, Mother...", "Charlotte Deshayes")
    },
    ["Soured Milk"] = {
		desc =
			"A metal bottle filled with milk that has since soured." .. br .. "Loud as Victor could be, he quieted down when presented with his meal." ..
			list(b("Increases") .. " the " .. i("Shriek") .. " radius of " .. b("Victor") .. " by " .. clror("+2 metres") .. dot)
    },
    ["Spinning Top"] = {
		desc =
			"A wooden top shared between The Twins, though Victor wanted it for his own." .. br .. "He learned he could get what he wanted if he clung tightly and screamed." ..
			list("Causes Survivors hit with a " .. i("Pounce") .. " to drop any carried " .. iconLink(ils.item) .. dot) ..
			quote("Hush... hush... it is yours then.", "Charlotte Deshayes")
    },
    ["Stale Biscuit"] = {
		desc =
			"A hard, unleavened biscuit that Madeleine stole from a town's market." .. br .. "It was not much, but it was better than most meals." ..
			list(b("Reduces") .. " the Cool-down time of a " .. i("Pounce") .. " by " .. clror("-0.4 seconds") .. dot)
    },
    ["Tiny Fingernail"] = {
		desc =
			"Charlotte had many ways to mourn Victor's death." .. br .. "As the fingernails loosened from his rotting hands, she took one in remembrance." ..
			list(b("Reduces") .. " the Unbinding time of " .. b("Victor") .. " by " .. clror("-0.25 seconds") .. dot)
    },
    ["Toy Sword"] = {
		desc =
			"A minuscule toy sword, only a few inches long." .. br .. "Holding it brought out a violent enthusiasm in Victor." ..
			list(b("Reduces") .. " the Charge time of a " .. i("Pounce") .. " by " .. clror("-0.1 second") .. dot)
    },
    ["Victor's Soldier"] = {
		desc =
			"A toy soldier Victor clung to when scared." .. br .. "Something about it evoked jealousy in Charlotte." ..
			list("The " .. iconLink(ils.auras) .. " of Survivors are revealed to you for " .. clror("6 seconds") .. " after crushing " .. b("Victor") .. " when controlling " .. b("Charlotte") .. dot) ..
			quote("Kch--kch—k'ull bawd mennn...", "Victor Deshayes")
    },
    ["Weighty Rattle"] = {
		desc =
			"A shoddily carved rattle that Victor cried over until his mother stole it for him." .. br .. "It is entirely too heavy to be trusted to a child." ..
			list("Removing a latched-on " .. b("Victor") .. " causes the Survivor to suffer from the " .. states(ils.broken) .. " for " .. clror("20 seconds") .. dot)
    },
    
    ---------------------
    --- THE TRICKSTER ---
    ---------------------
       
    ["Bloody Boa"] = {
        desc = 
        	"A boa that Ji-Woon draped around a victim's slashed neck." .. br .. "A number of pockets are concealed within it." ..
            list(b("Decreases") .. " the speed at which " .. biclr("lavender", "Laceration") .. " decays by " .. clror("-75 %") .. dot)
    },
    ["Caged Heart Shoes"] = {
        desc = 
        	"Shoes that Ji-Woon wore during the music video for " .. i("One Caged Heart") .. dot .. br .. "Allows for smooth, graceful movements of the point dance." ..
            list("When you basic-break Pallets and Breakable Walls or damage Generators, the next time you enter Throw State, increase movement speed while in the Throw State by " .. clror("5%") .. " for " .. clro("10 seconds") ..dot)
    },
    ["Cut Thru U Single"] = {
        desc = 
        	"The first single released by " .. b("NO SPIN") .. " after Ji-Woon joined their ranks." .. br .. "Scored an all-kill on the Korean charts." ..
            list("When reaching " .. b("A-Rank") .. ", all Survivors within " .. clror("32 metres") .. " are revealed by " .. b("Killer Instinct") .. " for " .. clro("4.4 seconds") .. dot)
    },
    ["Death Throes Compilation"] = {
        desc = 
        	"A collection of the final sounds from Ji-Woon's victims, adapted to a vinyl record." .. br .. "Terrifying and emotionally raw." ..
            list(clror("75%") .. " of the maximum " .. b("Blade") .. " capacity is refilled once " .. biclr("yellow", "Main Event") .. " ends" .. dot) .. 
            quote("Please, no... don't make it hurt... I can't... I...", "Unidentified Voice")
    },
    ["Diamond Cufflinks"] = {
        desc = 
        	"Cufflinks gouged into the eyes of a sasaeng fan who made the mistake of stalking Ji-Woon." .. br .. "Rubbing off the blood, there is so much to be seen in the glitter." ..
            list("The " .. iconLink(ils.auras) .. " of Survivors one hit away from maximum " .. biclr("lavender", "Laceration") .. " are revealed to you for " .. clror("6 seconds") .. dot) ..
            quote("Shhh... you don't have to see your blood anymore.", "Ji-Woon Hak")
    },
    ["Edge of Revival Album"] = {
        desc = 
        	"The Trickster's debut album." .. br .. "The coarse and vicious tone was met with a mixed reaction from fans despite critical acclaim." ..
            list("Causes " .. b("Blade") .. " hits from more than " .. clror("20 metres") .. " away to deal " .. clro("+100 %") .. " more " .. biclr("lavender", "Laceration") .. dot) ..
            quote("Your whisper on me" .. br .. "Warm as can be" .. br .. "Burning each breath" .. br .. "Till I can't breathe", "The Trickster's \"Whispers of Warmth\"")
    },
    ["Fizz-Spin Soda"] = {
        desc = 
        	"A limited edition can of soda promoting " .. b("NO SPIN") .. dot .. br .. "High sugar and caffeine content." ..
            list(b("Decreases") .. " the amount of " .. b("Blade") .. "  throws needed to increase Throw rate by " .. clror("2") .. dot)
    }, 
    ["Inferno Wires"] = {
        desc = 
        	"Burnt wires form the studio fire that killed four of the five " .. b("NO SPIN") .. " members." .. br .. "Their deaths gave rise to The Trickster." ..
            list("Increases the decay time of " .. biclr("yellow", "S") .. "-Rank by " .. clror("20 %") .. dot)
    }, 
    ["Iridescent Photocard"] = {
        desc = 
        	"A glass-like photo moulded from The Fog itself." .. br .. "Ji Woon's eyes shimmer holographically on his grinning face." ..
            list(
            	"Increases the duration of " .. biclr("yellow", "Main Event") .. " by " .. clror("+100 %") .. dot,
            	"Activating " .. biclr("yellow", "Main Event") .. " reveals your aura to Survivors, reveals all Survivor auras to you and blocks all Generators for " .. clro("6 seconds"))
    }, 
    ["Ji-Woon's Autograph"] = {
        desc = 
        	"A signature from the celebrity known as The Trickster." .. br .. "Sore as his wrist was after hundred of these, it was invigorating to know he was so in demand." ..
            list(b("Increases") .. " the duration of " .. biclr("yellow", "Main Event") .. " by " .. clror("+44 %") .. dot)
    }, 
    ["Killing Part Chords"] = {
        desc = 
        	"A set of chords that Ji-Woon never found a song for." .. br .. "Still, the sound is undeniably catchy." ..
            list(b("Increases") .. " the time before " .. b("Style Ranks") .. " D to A decay by " .. clror("+50 %") .. dot)
    },
    ["Lucky Blade"] = {
        desc = 
        	"The first throwing knife Ji-Woon ever owned." .. br .. "Purchased by his father, he was expected to put on a show for those frequenting the family restaurant." .. br ..
        	"On every eighth " .. b("Blade") .. " hit, a bonus is assigned at random: " ..
            list(b("Throw rate") .. " is increased by " .. clror("+5 %") .. " for " .. clro("5 seconds") .. dot,
            "Gain " .. clro("+3 %") .. space .. states(ils.haste) .. " for " .. clro("6 seconds") .. dot,
            "Gain " .. clro("1") .. " additional " .. b("Style Point") .. dot)
            
    },
    ["Melodious Murder"] = {
        desc = 
        	"An audio file of a victim's crisp, clear shriek as a blade opened her up." .. br .. "Ji-Woon incorporated the sound into one of his more popular tracks." ..
            list(b("Increases") .. " the Reload speed at " .. iconLink(ils.lockers) .. " by " .. clror("+25 %") .. dot)
    },
    ["Memento Blades"] = {
        desc = 
        	"Blood-rusted knives, worn from overuse." .. br .. "Employed during Ji-Woon's early murders, they hold a place of importance in his heart." ..
            list("Displays a " .. b("Reticule") .. " while aiming " .. b("Blades") .. dot)
    },
    ["On Target Single"] = {
        desc = 
        	"An underground single produced by Ji-Woon before achieving fame." .. br .. "Only the biggest " .. b("NO SPIN") .. " fans collected this hidden gem." ..
            list("While in " .. biclr("yellow", "S") .. "-Rank, each " .. b("Blade") .. " hit increases the duration of " .. biclr("yellow", "Main Event") .. " by " .. clror("0.5 seconds") .. " up to a maximum of " .. clro("20 seconds") .. dot)
    },
    ["Ripper Brace"] = {
        desc = 
        	"A wrist brace worn by Ji-Woon during the filming of his music video " .. i("Ripper") .. dot .. br .. "Though unintentional, the design stabilises the wrist better than many medical braces." ..
            list("For each " .. b("Style Rank") .. ", you basic-vault " .. iconLink(ils.windows) .. ", basic-break " .. iconLink(ils.pallets) .. ", " .. iconLink(ils.breakableWalls) .. " and damage " .. iconLink(ils.generators) .. space .. clror("+6 %") .. " faster" .. dot)
    },
    ["Smash 'n' Run Gloves"] = {
        desc = 
        	"Unknown Description."
    },
    ["Tequila Moonrock"] = {
        desc = 
        	"A drink invented in a modest Changwon bar." .. br .. "Became a favourite of Ji-Woon's." ..
            list(b("Increases") .. " the Throw rate "  .. " by " .. clror("+8 %") .. " for " .. clro("10 seconds") .. " after gaining a " .. b("Style Rank") .. dot)
    },
    ["Trick Blades"] = {
        desc = 
        	"Specialty blades that are only seen as faulty by those who lack imagination." .. br .. "A young Ji-Woon dazzled spectators with the trick he performed." ..
            list("Causes " .. b("Blades") .. " to ricochet off the environment a total of " .. clror("one time") .. dot) ..
            "After a ricochet, on every eighth " .. b("Blade") .. " hit, a bonus is assigned at random: " ..
            list(biclr("lavender", "Laceration") .. " is increased by " .. clro("+100 %") .. dot,
            "Reveal Survivors auras within " .. clro("12 metres") .. " for " .. clro("4.4 seconds") .. dot,
            "Gain " .. clro("1") .. " additional " .. b("Style Point") .. dot)
    },
    ["Trick Pouch"] = {
        desc = 
        	"A pouch with a number of hidden pockets." .. br .. "Used by aspiring magicians and those with something to hide." ..
            list(b("Increases") .. " the number of carried " .. b("Blades") .. " by " .. clror("+8") .. dot)
    },
    ["Waiting For You Watch"] = {
        desc = 
        	"A pocket watch worn by Ji-Woon during a live performance of " .. i("I'll Be Waiting For You") .. dot .. br .. "It is a stage prop that does not work and never will." ..
            list("Reveals auras of Survivors who fully recovered from " .. biclr("lavender", "Laceration") .. " for " .. clror("10 seconds") .. dot) ..
            quote("Don't run away" .. br .. "Don't say we're through" .. br .. "No way to escape this" .. "I'll be waiting for you", "NO SPIN'S \"Waiting For You\"")
    },
    
    --------------------
    --- THE NEMESIS ---
    --------------------
    
    ["Admin Wristband"] = {
        desc =
            "An electronic Umbrella wristband for administrators of the facility." .. br .. "While allowing access to secure areas, it also doubles as a tracking device." ..
            list(
            	b("Increases") .. " the Survivor-Detection range of the " .. b("Zombies") .. " by " .. clror("+4 metres") .. dot,
            	b("Increases") .. " the " .. i("Field of View") .. " of the " .. b("Zombies") .. " by " .. clro("+17.5 °") .. dot)
    },
    ["Adrenaline Injector"] = {
        desc =
            "A hormone that heightens senses and prepares the body to fight." ..
            list(b("Increases") .. " the Duration of " .. i(link("Killer Instinct")) .. " after a Survivor uses a " .. iconLink("Vaccine") .. " by " .. clror("+3 seconds") .. dot)
    },
    ["Brian's Intestine"] = {
        desc =
            "The small intestine of Brian Irons, chief of the RPD." .. br .. "It is an appetising sight for zombies." ..
            list(b("Increases") .. " the Movement Speed of " .. b("Zombies") .. " by " .. clror("+0.25 m/s") .. dot)
    },
    ["Broken Recovery Coin"] = {
        desc =
            "A coin depicting a bird framed by a laurel wreath." .. br .. "It is broken in half." ..
            list(b("Reduces") .. " the number of " .. iconLink("Supply Cases") .. " in the environment by " .. clror("-1") .. dot) ..
            quote("This is not how I imagined my first day.", "Leon Scott Kennedy")
    },
    ["Damaged Syringe"] = {
        desc =
            "Medical equipment that fared poorly during the chaos that overwhelmed Raccoon City." ..
            list(b("Increases") .. " the Injection time of " .. iconLink("Vaccines") .. " by " .. clror("+5 seconds") .. dot)
    },
    ["Depleted Ink Ribbon"] = {
        desc =
            "Who will save them now? There is something about this ink ribbon being dry that energises zombies." ..
            list(
            	b("Reduces") .. " the Respawn time of disintegrated " .. b("Zombies") .. " by " .. clror("-5 seconds") .. dot,
            	b("Increases") .. " the Movement speed of " .. b("Zombies") .. " by " .. clro("+0.5 m/s") .. dot,
            	"Once the " .. iconLink(ils.exitGates) .. " are powered, disintegrated " .. b("Zombies") .. " respawn in the Exit area.") ..
            quote("Look, just so you know... this is the last fucking time.", "Jill Valentine")
    },
    ["Iridescent Umbrella Badge"] = {
        desc =
            "A glass-like badge moulded from The Fog itself." .. br .. "It represents a corporation that pushed far beyond ethical and humane science." ..
            list("Survivors suffer from the " .. states(ils.exposed) .. " for " .. clror("60 seconds") .. " after using a " .. iconLink("Vaccine") .. dot) ..
            quote("Commitment, honesty, integrity. These are the core values that create the foundation of Umbrella Corp.", "Doctor Matt Gorkis")
    },
    ["Jill's Sandwich"] = {
        desc =
            "It is tragically squished and dripping with blood from a recent battle." .. br .. "Despite that, it has a delicious aroma that cannot be missed." ..
            list("The " .. iconLink(ils.auras) .. " of Survivors unlocking a " .. iconLink("Supply Case") .. " are revealed to you for " .. clror("12 seconds") .. " after they succeed.")
    },
    ["Licker Tongue"] = {
        desc =
            "A sticky prehensile tongue that easily wraps around anything it touches." .. nlp ..
            "Survivors becoming " .. biclr("blue", "Contaminated") .. " suffer from the following effect:" ..
			list(b("Increases") .. " the duration of the " .. effects("addon", "Licker Tongue", ils.hindered) .. " by " .. clror("#effect") .. " to " .. clro("#durationHindered") .. dot) ..
            quote("It's like... a nightmare.", "Claire Redfield")
    },
    ["Marvin's Blood"] = {
        desc =
            "The contaminated blood of a Raccoon City Police Officer." ..
            list(b("Increases") .. " the Gain to " .. i("Mutation Rate") .. " after hitting Survivors with a " .. i("Tentacle Strike Attack") .. " by " .. clror("+0.5 points") .. dot) ..
            quote("All you need to know is that this place will eat you alive if you're not careful.", "Marvin Branagh")
    },
    ["Mikhail's Eye"] = {
        desc =
            "While little was left of Mikhail, his left eyeball survived the blast that killed him." .. br .. "It remains a tasty treat for zombies." ..
            list(b("Increases") .. " the Movement Speed of " .. b("Zombies") .. " by " .. clror("+0.35 m/s") .. dot)
    },
    ["NE-a Parasite"] = {
        desc =
            "A parasite used in the development of Nemesis T-Types, it is capable of hijacking its host's brain." ..
            list("Survivors suffer from the " .. states(ils.oblivious) .. " for " .. clror("60 seconds") .. " after becoming " .. biclr("blue", "Contaminated") .. ", or until they cure themselves with a " .. iconLink("Vaccine") .. dot)
    },
    ["Plant 43 Vines"] = {
        desc =
            "The tangled remnants of a plant infected with the T-Virus, it killed one of the researchers who developed it." ..
            list(b("Increases") .. " the Opening time of " .. iconLink("Supply Cases") .. " by " .. clror("+4 seconds") .. dot)
    },
    ["Serotonin Injector"] = {
        desc =
            "A hormone that slightly relaxes the user for when stealth is required." ..
            list("Grants the " .. states(ils.undetectable) .. " for " .. clror("15 seconds") .. ", after a " .. b("Zombie") .. " is disintegrated by any means.")
    },
    ["Shattered S.T.A.R.S. Badge"] = {
        desc =
            "A symbol of hope for Raccoon City, utterly destroyed." ..
            list(b("Increases") .. " the Movement Speed of " .. b("Zombies") .. " by " .. clror("+1.5 m/s") .. " for " .. clro("60 seconds") .. " each time a Generator is completed.") ..
            quote("S.T.A.R.S...", "The Nemesis")
    },  
    ["Shredded Fedora"] = {
        desc =
            "Unknown Description."
    },  
    ["S.T.A.R.S. Field Combat Manual"] = {
        desc =
            "A manual of compiled S.T.A.R.S. close-range combat knowledge, edited by Chris Redfield." ..
            list("The " .. iconLink(ils.auras) .. " of " .. b("Zombies") .. " are highlighted to you in " .. bclr("yellow", "yellow") .. " for " .. clror("6 seconds") .. " when they hit a Survivor" .. dot)
    }, 
    ["T-Virus Sample"] = {
        desc =
            "A sample of the T-Virus developed by Umbrella Corporation, it causes extreme mutations and brain damage in its subjects." ..
            list(b("Increases") .. " the Gain to " .. i("Mutation Rate") .. " after hitting " .. b("Zombies") .. " with a " .. i("Tentacle Strike Attack") .. " by " .. clror("+1 point") .. dot)
    },
    ["Tyrant Gore"] = {
        desc =
            "A damaged sample from a T-002 Tyrant that died in combat." .. br .. "There are signs of severe burns." ..
            list(
            	b("Reduces") .. " the Respawn time of disintegrated " .. b("Zombies") .. " by " .. clror("-7.5 seconds") .. dot,
            	b("Increases") .. " the Gain to " .. i("Mutation Rate") .. " after hitting " .. b("Zombies") .. " with a " .. i("Tentacle Strike Attack") .. " by " .. clro("+0.75 points") .. dot)
    },
    ["Visitor Wristband"] = {
        desc =
            "An electronic Umbrella wristband for visitors to the facility." .. br .. "It also doubles as a tracking device." ..
    		list(
    			b("Increases") .. " the Survivor-Detection range of the " .. b("Zombies") .. " by " .. clror("+2 metres") .. dot,
    			b("Increases") .. " the " .. i("Field of View") .. " of the " .. b("Zombies") .. " by " .. clro("+10 °") .. dot)
    },
    ["Zombie Heart"] = {
        desc =
            "The heart of an eviscerated zombie." .. br .. "It is considered hazardous waste as it is certainly teeming with viruses." ..
    		list(b("Increases") .. " the Gain to " .. i("Mutation Rate") .. " after hitting " .. b("Zombies") .. " with a " .. i("Tentacle Strike Attack") .. " by " .. clror("+0.75 points") .. dot) ..
    		quote("Words won't work on this thing.", "Leon Scott Kennedy")
    },

    --------------------
    --- THE CENOBITE ---
    --------------------
    
    ["Bent Nail"] = {
        desc =
            "A simple nail that cut deep into Larry Cotton's hand." .. br .. "Though the damage was superficial, it set into motion a horrifying set of events." ..
            list(
            	"Grants " .. clror("+100 %") .. " bonus Bloodpoints for " .. i("Chain Bound") .. " Score Events.",
            	b("Reduces") .. " the number of bonus " .. i("Chains") .. " spawned when Survivors are hit with a " .. i("Possessed Chain Attack") .. " to " .. clro("+1") .. dot)
    },
    ["Burning Candle"] = {
        desc =
    		"A candle lit by Frank Cotton during a fatal summoning ceremony." ..
    		list(b("Reduces") .. " the Timer duration for starting a " .. i("Chain Hunt") .. " by " .. clror("-3 seconds") .. dot)
    },
    ["Chatterer's Tooth"] = {
        desc =
            "A fragment from a Cenobite whose mouth chatters endlessly." .. br .. "This tooth, having broken from his jaw, is finally silent." ..
            list(
            	"Grants the ability to see the " .. iconLink(ils.aura) .. " of the " .. iconLink("Lament Configuration") .. dot,
            	"Picking up the " .. b("Lament Configuration") .. " deactivates an on-going " .. i("Chain Hunt") .. " and grants the " .. states(ils.undetectable) .. " for " .. clror("25 seconds") .. dot)
    },
    ["Engineer's Fang"] = {
        desc =
            "A sharp tooth from the maw of a fleshy, scorpion-like creature, known to accompany Cenobites on their grim undertakings." ..
    		list(
    			"Causes healthy Survivors to become injured when hit with a " .. i("Possessed Chain Attack") .. ", but does not bind them with additional " .. i("Chains") .. dot,
    			nbullet .. "This " .. b("increases") .. " the Closing time of the " .. i("Gateway") .. " by " .. clror("+0.25 seconds") .. dot,
    			b("Reduces") .. " the number of bonus " .. i("Chains") .. " spawned when injured Survivors are hit with a " .. i("Possessed Chain Attack") .. " to " .. clro("+1") .. dot) ..
    		quote("We have such sights to show you.", "Pinhead")
    },
    ["Flickering Television"] = {
        desc =
    		"A television that acted strangely upon the arrival of the Cenobites." ..
    		list(b("Increases") .. " the maximum Casting distance of the " .. i("Gateway") .. " by " .. clror("+4 metres") .. dot)
    },
    ["Frank's Heart"] = {
        desc =
        	"The beating heart of Frank, given life from his brother's blood." ..
        	list(b("Increases") .. " the maximum Casting distance of the " .. i("Gateway") .. " by " .. clror("+8 metres") .. dot) ..
        	quote("Nobody escapes us.", "Pinhead")
    },
    ["Greasy Black Lens"] = {
        desc =
        	"A lens from the sunglasses of an obese Cenobite whose fleshy rolls droop down his face and neck." ..
        	list("The " .. iconLink(ils.auras) .. " of Survivors are revealed to for " .. clror("6 seconds") .. " after hitting them with a " .. i("Possessed Chain Attack") .. dot)
    },
    ["Impaling Wire"] = {
        desc =
        	"A wire that pierces the cheeks of a Cenobite, while revealing the gaping wound on her neck." ..
    		list("Causes a bonus " .. i("Chain") .. " to spawn on " .. i("Bound Survivors") .. ", when they use the environment to break one.")
    },
    ["Iridescent Lament Configuration"] = {
        desc =
        	"A glass-like puzzle box moulded from The Fog itself." .. br .. "This replica differs from the original, providing altogether new powers." ..
        	list(b("Shields") .. " the " .. iconLink(ils.aura) .. " of the " .. iconLink("Lament Configuration") .. " from Survivors who are farther than " .. clror("24 metres") .. " from it outside of a " .. i("Chain Hunt") .. dot) .. 
    		quote("You opened it. We came.", "Pinhead")
    },
    ["Larry's Blood"] = {
        desc =
        	"The blood of Larry Cotton, which partially resurrected his brother Frank." ..
        	list(b("Increases") .. " the maximum range of the " .. i("Possessed Chain") .. " by " .. clror("+4 metres") .. dot)
    },
    ["Larry's Remains"] = {
        desc =
            "The skeletal remains of Larry Cotton, covered in a thick, sticky layer of blood." ..
        	list(b("Increases") .. " the Solving time of the " .. iconLink("Lament Configuration") .. " by " .. clror("+2 seconds") .. dot) ..
        	quote("We want the man who did this.", "Pinhead")
    },
    ["Leather Strip"] = {
        desc =
    		"Leather strips torn from a Cenobite's uniform, allowing for the mutilation of exposed flesh." ..
    		list(b("Reduces") .. " the Cool-down time of a " .. i("Possessed Chain Attack") .. " by " .. clror("-0.15 seconds") .. dot)
    },
    ["Liquified Gore"] = {
        desc =
    		"The result of summoning the Cenobites." .. br .. "There is no telling what part of the human body this belonged to." ..
    		list(b("Increases") .. " the Solving time of the " .. iconLink("Lament Configuration") .. " by " .. clror("+1 second") .. dot)
    },
    ["Lively Crickets"] = {
        desc =
    		"Insects which scarcely avoided being eaten by a mysterious drifter." ..
    		list(b("Increases") .. " the Turn rate of the " .. i("Possessed Chain") .. " by " .. clror("+10 %") .. dot)
    },
    ["Original Pain"] = {
        desc =
        	quote("The first pin pushed into Pinhead's skull." .. br .. "Such pleasure and pain.") .. nlp ..
        	"Survivors breaking free from the " .. i("Possessed Chain") .. " suffer from the following effect:" .. 
        	list("Their " .. iconLink(ils.aura) .. " is revealed to you for " .. clror("#effect") .. dot) ..
    		quote("No tears, please. It's a waste of good suffering.", "Pinhead")
    },
    ["Skewered Rat"] = {
        desc =
        	"A crude solution for the Cotton home's rat problem." ..
        	list(b("Reduces") .. " the Cool-down time of a " .. i("Possessed Chain Attack") .. " by " .. clror("-0.45 seconds") .. dot)
    },
    ["Slice of Frank"] = {
        desc =
        	"A slab of Frank's face after his torture at the hand of the Cenobites." ..
        	list("Survivors suffer from the " .. states(ils.exhausted) .. " while carrying the " .. iconLink("Lament Configuration") .. dot) ..
        	quote("The Cenobites gave me an experience beyond limits. Pain and pleasure, indivisible.", "Frank Cotton")
    },
    ["Spoiled Meal"] = {
        desc =
        	"A pile of mould, feasted on by a cockroach." .. br .. "Perhaps a sign of Frank Cotton's mysterious disappearance..." ..
    		list(b("Increases") .. " the maximum range of the " .. i("Possessed Chain") .. " by " .. clror("+2 metres") .. dot)
    },
    ["Torture Pillar"] = {
        desc =
    		"A dangling slab covered in the gore of past victims." ..
    		list(b("Reduces") .. " the Timer duration for starting a " .. i("Chain Hunt") .. " by " .. clror("-6 seconds") .. dot) ..
    		quote("This isn't for your eyes.", "Pinhead")
    },
	["Wriggling Maggots"] = {
        desc =
        	"Larvae that poured from the mouth of a corpse hidden in the Cotton household." ..
        	list(b("Increases") .. " the Turn rate of the " .. i("Possessed Chain") .. " by " .. clror("+15 %") .. dot)
    },

    ------------------
    --- THE ARTIST ---
    ------------------
    
	["Automatic Drawing"] = {
        desc =
        	"An experimental drawing Carmina made without conscious planning." .. br .. "Do not think — act." ..
        	list(b("Reduces") .. " the Cool-down time of " .. i("Birds of Torment") .. " by " .. clror("-1.5 seconds") .. " after idle " .. b("Dire Crows") .. " disintegrate.")
    },
	["Charcoal Stick"] = {
        desc =
        	"A stick of charcoal that conceals anything it rubs over." ..
        	list(
        		"The " .. iconLink(ils.auras) .. space .. b("Dire Crows") .. " mid-flight are no longer visible to Survivors.",
        		"The Auras of " .. b("Dire Crows") .. " are visible to Survivors for " .. clror("0.5 seconds") .. " after summoning them.")
    },
	["Choclo Corn"] = {
        desc =
        	"A type of corn common in South America." .. br .. "A few kernels are reason enough for a crow to stop for a snack." ..
        	list(b("Increases") .. " the Timer before idle " .. b("Dire Crows") .. " disintegrate by " .. clror("+2 seconds") .. dot)
    },
	["Darkest Ink"] = {
        desc =
        	"An unnatural ink, so wretched and dark that it seems to pull in light around it." ..
        	list(
        		i("Swarmed Survivors") .. " suffer from the " .. states(ils.blindness) .. dot,
        		nbullet .. "This effect lingers for " .. clror("15 seconds") .. " after repelling the " .. i("Swarm") .. dot)
    },
	["Festering Carrion"] = {
        desc =
        	"A stomach-churning pile of meat and guts, yet it attracts hungry crows craving a bite." ..
        	list(b("Reduces") .. " the Cool-down time of " .. i("Birds of Torment") .. " by " .. clror("-0.5 seconds") .. " after launching " .. b("Dire Crows") .. dot)
    },
	["Garden of Rot"] = {
        desc =
        	"A nude self-portrait in which Carmina depicts a rotting darkness growing outwards from within." ..
        	list("Survivors suffer from the " .. states(ils.exposed) .. " for " .. clror("4 seconds") .. " after repelling the " .. i("Swarm") .. dot) ..
        	quote("I see no salvation in the rot.", "Carmina Mora")
    },
	["Ink Egg"] = {
        desc =
        	"An unusual egg that seems to be nothing but a ball of semi-solid ink." ..
        	list(
        		b("Increases") .. " the number of summonable " .. b("Dire Crows") .. " by " .. clror("+1") .. dot,
        		b("Reduces") .. " the Timer before idle " .. b("Dire Crows") .. " disintegrate by " .. clro("-2 seconds") .. dot) ..
        	quote("Perhaps, covered in darkness as I was, they saw me as one of their own.", "Carmina Mora")
    },
	["Iridescent Feather"] = {
        desc =
        	"A glass-like feather moulded from The Fog itself." .. br .. "Simple as it may be, it is a symbol of those who watch over Carmina." ..
        	list(
        		"Grants the " .. states(ils.undetectable) .. " when " .. i("Birds of Torment") .. " is on Cool-down and you hold no " .. b("Dire Crows") .. dot,
        		b("Reduces") .. " the number of summonable " .. b("Dire Crows") .. " by " .. clror("-1") .. dot) ..
        	quote("They saved me when I could not save myself.", "Carmina Mora")
    },
	["Matias' Baby Shoes"] = {
        desc =
        	"A grieving reminder to Carmina that Matias would be with her, always watching." ..
        	list("The " .. iconLink(ils.auras) .. " of Survivors within " .. clror("5 metres") .. " of idle " .. b("Dire Crows") .. " are revealed to you for " .. clro("3 seconds") .. dot) ..
        	quote("See you soon, Matias.", "Carmina Mora")
    },
	["O Grief, O Lover"] = {
        desc =
        	"An abstract ink drawing that Carmina drew before walking to the Death Leap." ..
        	list(i("Swarmed Survivors") .. " suffer from the " .. states(ils.exhausted) .. dot)
    },
	["Oil Paints"] = {
        desc =
        	"There is little left but a few globs of black and grey, yet Carmina could paint an expansive landscape with them." ..
        	list(b("Increases") .. " the Detection radius of " .. i(link("Killer Instinct")) .. " by " .. clror("+1.5 metres") .. dot)
    },
	["Severed Hands"] = {
        desc =
        	"Carmina's severed hands, cut from her arms shortly before her death." .. br .. "The sight brings sheer fury to her and her protectors." ..
        	list("Causes Survivors coming within " .. clror("3 metres") .. " of " .. i("Swarmed Survivors") .. " to become swarmed too.") .. 
        	quote("How are you going to paint now?", "Hooded Man")
    },
	["Severed Tongue"] = {
        desc =
        	"Carmina's tongue, cut from her mouth shortly before her death." .. br .. "The sight instils rage not just in her, but in her crows." ..
        	list(b("Reduces") .. " your Slow-down time by " .. clror("-0.5 seconds") .. " after launching " .. b("Dire Crows") .. dot) .. 
        	quote("How are you going to tell poems now?", "Hooded Man")
    },
	["Silver Bell"] = {
        desc =
        	"A shiny trinket that a crow took a liking to." .. br .. "The clinking of the bell was a distraction to everyone but Carmina." ..
        	list(i("Swarmed Survivors") .. " suffer from the " .. states(ils.oblivious) .. dot)
    },
	["Still Life Crow"] = {
        desc =
        	"An ink drawing of a dead crow." .. br .. "Carmina's sadness over its death can be felt with each dark line." ..
        	list(b("Increases") .. " the Timer before idle " .. b("Dire Crows") .. " disintegrate by " .. clror("+4 seconds") .. dot)
    },
	["Thick Tar"] = {
        desc =
        	"Sticky, viscous sludge that Carmina used for an experimental piece." .. br .. "Once it sticks to skin, it is nearly impossible to get off." ..
        	list(b("Increases") .. " the Repel duration for " .. i("Swarmed Survivors") .. " by " .. clror("+0.5 seconds") .. dot)
    },
	["Thorny Nest"] = {
        desc =
        	"A nest that remained empty near Carmina's home." .. br .. "There are sharp thorns embedded in it." ..
        	list("Survivors suffer from the " .. states(ils.haemorrhage, ils.mangled) .. " for " .. clror("70 seconds") .. " after being damaged by " .. b("Dire Crows") .. dot)
    },
	["Untitled Agony"] = {
        desc =
        	"A canvas that was targeted with swipes and trashes of black paint following Matias' death." .. br .. "It radiates with heavy, crippling sorrow." ..
        	list(i("Swarmed Survivors") .. " suffer from a " .. clror("-15 %") .. space .. states(ils.hindered) .. " for " .. clro("1.5 seconds") .. dot)
    },
	["Velvet Fabric"] = {
        desc =
        	"A striking red fabric Carmina used on an art project." .. br .. "Its brightness contrasted against black feathers." ..
        	list("The " .. iconLink(ils.auras) .. " of " .. i("Swarms") .. " continue to be revealed to you for another " .. clror("1.5 seconds") .. " after Survivors start repelling them.")
    },
	["Vibrant Obituary"] = {
        desc =
        	"Scrap newspaper, speckled with bright, eye-catching paint." .. br .. "It seems tragedy is a daily thing." ..
        	list(b("Increases") .. " the duration of " .. i(link("Killer Instinct")) .. " by " .. clror("+3 seconds") .. dot)
    },

    ------------------
    --- THE ONRYO ---
    ------------------
    
	["Bloody Fingernails"] = {
        desc =
        	"Sadako's bloody fingernails, lost as she tried to claw her way out of the well." .. br .. "Evidence of her single-minded need to kill." ..
        	list(b("Increases") .. " the Speed Boost duration after " .. i("Projection") .. " by " .. clror("+50 %") .. dot)
    },
	["Cabin Sign"] = {
        desc =
        	"The cabin where both Tomoko and Reiko watched the tape." .. br .. "Carries the memory of those first curses." ..
        	list(b("Reduces") .. " the time it takes for " .. iconLink("TVs") .. " to turn back on after " .. i("Projection") .. " by " .. clror("-4.5 seconds") .. dot)
    },
	["Clump of Hair"] = {
        desc =
        	"Once beautiful and long, Sadako now hides behind her ragged, matted locks." ..
        	list(b("Reduces") .. " the threshold for full Invisibility while " .. i("Demanifested") .. " by " .. clror("#effect") .. dot)
    },
	["Distorted Photo"] = {
        desc =
        	"Those who have watched the tape find all photos of themselves distorted, a reminder of their impending doom." ..
        	list("Causes all Survivors within " .. clror("16 metres") .. " of your location who witness your " .. i("Manifestation") .. " to scream and reveal their " .. iconLink(ils.auras) .. " for " .. clro("4 seconds") .. dot) ..
        	quote("Why is it only you were saved?", "Sadaoka Yamamura")
    },
	["Iridescent Videotape"] = {
        desc =
        	"The original tape containing Sadako's curse." ..
        	list(
        		i("Projection") .. " no longer turns off " .. iconLink("TVs") .. ", but also no longer applies any " .. i("Condemned") .. dot,
        		b("Increases") .. " the time required for " .. b("TVs") .. " to turn back on after having been turned off by Survivors by " .. clror("+20 %") .. dot) ..
        	quote("That video... It's not of this world. It's Sadako's rage.", "Ryuji Takayama")
    },
	["Mother's Comb"] = {
        desc =
        	"The comb Sadako's mother used in the tape." .. br .. "Sadako's psychic abilities are enhanced when she focuses on it." ..
        	list(
        		"Highlights the " .. iconLink(ils.auras) .. " of all turned-off " .. iconLink("TVs") .. " in " .. bclr("yellow", "yellow") .. dot,
        		"Causes " .. b("TVs") .. " being turned off to trigger a " .. i(link("Loud Noise Notification")) .. dot)
    },
	["Mother's Mirror"] = {
        desc =
        	"A mirror from Sadako's mother's house." .. br .. "A reminder of what Sadako has lost." ..
        	list(b("Increases") .. " the duration of your intermittent Invisibility after " .. i("Manifesting") .. " by " .. clror("+2 seconds") .. dot)
    },
	["Old Newspaper"] = {
        desc =
        	"It tells of a local woman who predicted a volcanic eruption, evidence used to initially find Sadako." ..
        	list(b("Increases") .. " the duration of your full Invisibility after " .. i("Manifesting") .. " by " .. clror("+33 %") .. dot)
    },
	["Reiko's Watch"] = {
        desc =
        	"The watch that Reiko left her son Yoichi." .. br .. "A distracting and constant reminder of one's impending doom." ..
        	list(b("Increases") .. " the duration of your full Invisibility while " .. i("Demanifested") .. " by " .. clror("+25 %") .. dot)
    },
	["Remote Control"] = {
        desc =
        	"A remote for the VCR at the cabin." .. br .. "It allows Sadako to focus on those enemies at a distance." ..
        	list("The " .. iconLink(ils.auras) .. " of all Survivors within " .. clror("12 metres") .. " of powered " .. iconLink("TVs") .. " are revealed to you for " .. clro("7 seconds") .. " after using " .. i("Projection") .. dot) ..
        	quote("She killed a man just by willing him dead. That's power of a different order from her mother.", "Ryuji Takayama")
    },
	["Rickety Pinwheel"] = {
        desc =
        	"A pinwheel found in the caves of Izu Oshima." .. br .. "It spins even when there is no wind, disorienting those who see or hear it." ..
        	list(
        		"Survivors suffer from the " .. states(ils.oblivious) .. " when within " .. clror("8 metres") .. " of powered " .. iconLink("TVs") .. dot,
        		nbullet .. "This effect lingers for " .. clro("7 seconds") .. " after turning off a " .. b("TV") .. dot)
    },
	["Ring Drawing"] = {
        desc =
        	"A drawing of the view from inside the well, as drawn by a young Yoichi." .. br .. "Helping those cursed by the tape can only bring misfortune." ..
        	list("Hooking a Survivor carrying a " .. iconLink("VHS Tape") .. " causes all other Survivors to gain " .. clror("+1 Stack") .. " of " .. i("Condemned") .. dot)
    },
	["Sea-Soaked Cloth"] = {
        desc =
        	"The hood worn by the mysterious figure in the tape." .. br .. "Makes those near it unable to trust what they see." ..
        	list(
        		"Survivors suffer from the " .. states(ils.blindness) .. " when within " .. clror("8 metres") .. " of powered " .. iconLink("TVs") .. dot,
        		nbullet .. "This effect lingers for " .. clro("7 seconds") .. " after turning off a " .. b("TV") .. dot)
    },
	["Tape Editing Deck"] = {
        desc =
        	"The editing deck used by Reiko and Ryuji to analyse and copy the tape." .. br .. "Copying and sharing the tape is the only way to survive the curse." ..
        	list(
        		"Causes all Survivors start the Trial with a " .. iconLink("VHS Tape") .. dot,
        		nbullet .. "All Survivors must bring their " .. b("VHS Tape") .. " to the " .. iconLink("TV") .. " that is farthest from their current location.",
        		"The " .. iconLink(ils.auras) .. " of Survivors inserting a " .. i("VHS Tape") .. " into a " .. b("TV") .. " are revealed to you for " .. clror("6 seconds") .. dot) ..
        	quote("Frolic in brine, goblins be thine.", "Message hidden in Sakado's Tape")
    },
	["Telephone"] = {
        desc =
        	"After watching the video, victims receive a phone call." .. br .. "They are frozen in fear as they realise they have seven days left to live." ..
        	list("Survivors suffer from a " .. clror("-3 %") .. space .. states(ils.hindered) .. " for " .. clro("3 seconds") .. " when " .. i("Manifesting") .. " within " .. clro("7 metres") .. " of them.") ..
        	quote("I saw a weird video the other day... after it ended, someone called us. Some kind of prank call.", "Tomoko Oishi")
    },
	["VCR"] = {
        desc =
        	"The original VCR that played Sadako's Tape." .. br .. "It is still warm to the touch." ..
        	list("Causes all " .. iconLink("TVs") .. " to play the " ..i("Projection Effects") .. " when using " .. i("Projection") .. dot)
    },
	["Videotape Copy"] = {
        desc =
        	"A copy of the deadly videotape imprinted upon by Sadako." .. br .. "It dampens the desire for vengeance." ..
        	list(b("Extends") .. " the radius around " .. iconLink("TVs") .. " within which Survivors gain " .. i("Condemned") .. " from " .. i("Projection") .. " by " .. clror("+2 metres") .. dot)
    },
	["Well Stone"] = {
        desc =
        	"A piece of the well where Sadako was trapped, an image burned into the mind of all those who have watched the tape." ..
        	list(b("Reduces") .. " the time it takes for " .. iconLink("TVs") .. " to turn back on after being turned off by a  " .. i("Survivor") .. " by " .. clror("-7 seconds") .. dot)
    },   
	["Well Water"] = {
        desc =
        	"Water from the well where Sadako was left to die." .. br .. "Murky and black, it obscures everything around it." ..
        	list(b("Increases") .. " the duration of the " .. states(ils.undetectable) .. " by " .. clror("+2 seconds") .. " after " .. i("Manifesting") .. " by any means.")
    },  
	["Yoichi's Fishing Net"] = {
        desc =
        	"The net Yoichi used while fishing with his grandfather." .. br .. "A reminder that death comes to us all." ..
        	list("Survivors suffer from the " .. states(ils.blindness) .. " after acquiring at least " .. clror("4 Stacks") .. " of " .. i("Condemned") .. dot)
    },

    ------------------
    --- THE DREDGE ---
    ------------------
    
	["Air Freshener"] = {
        desc =
        	"After her parents were found, this was in the bag of belongings the police returned." .. br .. "Haddie does not know why she keeps it." ..
        	list(b("Increases") .. " the number of available Power Tokens to " .. clror("4") .. dot)
    },
	["Boat Key"] = {
        desc =
        	"Only one boat allowed people on and off the island, and the keys were hidden away to prevent deserters." ..
        	list(
        		b("Increases") .. " your Teleportation speed during " .. i("Daytime") .. " by " .. clror("+3 m/s") .. dot,
        		"Causes all active " .. bclr("yellow", "Locks") .. " on " .. iconLink(ils.lockers) .. " to break once the " .. iconLink(ils.exitGates) .. " are powered by any means.")
    },
	["Broken Doll"] = {
        desc =
        	"Followers brought their families to live in a utopia." .. br .. "None of them were spared." ..
        	list(b("Increases") .. " the duration of " .. i("Nightfall") .. " by " .. clror("+20 seconds") .. dot)
    },
	["Burnt Letters"] = {
        desc =
        	"Some followers tried to write letters home." .. br .. "Stamper ensured that nobody would have contact with the outside world." ..
        	list(b("Increases") .. " the Charges added to the " .. i("Nightfall Meter") .. " for injuring Survivors by " .. clror("+25 %") .. dot)
    },
	["Caffeine Tablets"] = {
        desc =
        	"Stamper's followers were told not to sleep, or they would bring the wrath of Druanee upon them." .. br .. "Towards the end, he brought in drugs from the mainland." ..
        	list("The " .. iconLink(ils.auras) .. " of locked " .. iconLink(ils.lockers) .. " are highlighted to you in " .. bclr("yellow", "yellow") .. " while charging " .. i("The Gloaming") .. " or teleporting.")
    },
	["Destroyed Pillow"] = {
        desc =
        	"While not allowed to sleep, leaders amongst the Ottomarians tore sleeping supplies to shreds to prevent malthinkers from sneaking off to nap." ..
        	list(b("Reduces") .. " the Cool-down time of " .. i("The Gloaming") .. " by " .. clror("-2.5 seconds") .. " during " .. i("Nightfall") .. dot)
    },
	["Fallen Shingle"] = {
        desc =
        	"After the Ottomarians were subsumed by The Dredge, the mansion fell into disrepair." ..
        	list(b("Increases") .. " the Charge rate of the " .. i("Nightfall Meter") .. " while using " .. i("Reign of Darkness") .. " by " .. clror("+15 % per second") .. dot)
    },
	["Field Recorder"] = {
        desc =
        	"Haddie documented all of her forays near Overlaps, to prove not only to the world but herself what she saw and felt." ..
        	list(
        		"Causes the Trial to start in " .. i("Nightfall") .. dot,
        		"Causes " .. i("Nightfall") .. " to activate automatically once the last " .. iconLink(ils.generator) .. " is completed.",
        		"Survivors suffer from the " .. states(ils.exhausted) .. " for " .. clror("15 seconds") .. " after coming into contact with the " .. i("Remnant") .. dot)
    },
	["Follower's Cowl"] = {
        desc =
        	"They believed the cowls proved their enlightenment, but they merely kept them in darkness." ..
        	list("Returning to the " .. i("Remnant") .. " triggers " .. i(link("Killer Instinct")) .. " during " .. i("Daytime") .. dot)
    },
	["Haddie's Calendar"] = {
        desc =
        	"She planned to cross out each day until her parents took her to India, but when tragedy struck, she abandoned her calendar." ..
        	list(b("Reduces") .. " the Exiting time from locked " .. iconLink(ils.lockers) .. " by " .. clror("-0.4 seconds") .. dot)
    },
	["Iridescent Wooden Plank"] = {
        desc =
        	"Once the journalist's blood stained the wooden boards of the stage, everything was set into motion for The Dredge's arrival." ..
        	list("Survivors suffer from the " .. states(ils.exposed) .. " for the last " .. clror("12 seconds") .. " of " .. i("Nightfall") .. dot) ..
        	quote("She came here to poison your minds with fear! Do not let the fear in!", "Otto Stamper")
    },
	["Lavalier Microphone"] = {
        desc =
        	"She kept a lavalier mic nearby, allowing her to record her innermost feelings when under great stress." ..
        	list(
        		"The " .. iconLink(ils.auras) .. " of all Survivors are revealed to you for " .. clror("3 seconds") .. " after consuming the last Power Token.",
        		"Causes all " .. iconLink(ils.lockers) .. " within " .. clro("6 metres") .. " of Survivors to open and slam their doors when entering them through teleporation.")
    },    
	["Malthinker's Skull"] = {
        desc =
        	"Those who brought negativity to the commune would mysteriously disappear from time to time." .. br .. "Their remains were never found... until The Dredge brought them up." ..
        	list(b("Increases") .. " the Charge rate of the " .. i("Nightfall Meter") .. " while Survivors are injured by " .. clror("+25 % per second") .. dot)
    },
	["Mortar and Pestle"] = {
        desc =
        	"Disconnected from the world and modern medicine, Stamper's followers originally had to make do with the flora local to the island." ..
        	list("You emerge from the " .. i("Remnant") .. " facing your direction at the moment of Teleportation, rather than the one in which you had placed the " .. i("Remnant") .. dot)
    },
	["Ottomarian Writing"] = {
        desc =
        	"The words of Otto Stamper were the only words available for his followers to read, decrying malthink and malspeak." ..
        	list(b("Reduces") .. " the Cool-down time of " .. i("The Gloaming") .. " by " .. clror("-2 seconds") .. " during " .. i("Daytime") .. dot)
    },
	["Sacrificial Knife"] = {
        desc =
        	"When a journalist attempted to warn the Ottomarians of Stamper's true task, he slit her throat as a warning to any dissenters." ..
        	list(b("Blocks") .. " all Vault locations within " .. clror("16 metres") .. " of the " .. iconLink(ils.locker) .. " you emerge from during " .. i("Nightfall") .. " for " .. clro("5 seconds") .. dot) ..
        	quote("There are imposters amongst you! They intend to destroy our perfect home with dark thoughts. Find them and bring them to me!", "Otto Stamper")
    },
	["Tilling Blade"] = {
        desc =
        	"The island was self-sufficient, and followers tilled the tough soil to grow crops during the warm season." .. 
        	list("Survivors suffer from the " .. states(ils.blindness, ils.haemorrhage, ils.mangled) .. " for " .. clror("80 seconds") .. " after becoming injured during " .. i("Nightfall") .. dot) ..
        	quote("Like a predatory beast, it can smell and track blood.")
    },
	["War Helmet"] = {
        desc =
        	"While investigating an Overlap in the Alps, she found an abandoned war bunker." .. br .. "She took a helmet from it after the Overlap nearly took her." ..
        	list(b("Increases") .. " the duration of " .. i(link("Killer Instinct")) .. " by " .. clror("+1.5 seconds") .. " during " .. i("Nightfall") .. dot)
    },
	["Wooden Plank"] = {
        desc =
        	"A wooden plank torn from the stage where Otto Stamper sacrificed a meddling journalist." ..
        	list(b("Increases") .. " the Charges added to the " .. i("Nightfall Meter") .. " for hooking Survivors by " .. clror("+25 %") .. dot)
    },
	["Worry Stone"] = {
        desc =
        	"While the Ottomarians were told to think only positive thoughts, some kept these stones in their pockets to rub when negative thoughts arose." ..
        	list("The " .. iconLink(ils.auras) .. " of Survivors locking a " .. iconLink(ils.locker) .. " are revealed to you for " .. clror("6 seconds") .. dot)
    },

	["Bullhorn"] = {
        desc =
        	"The commands screamed into this device riled up some and disoriented others." ..
        	list("Survivors suffer from the " .. states(ils.oblivious) .. " for " .. clror("30 seconds") .. " after using a " .. iconLink("First Aid Spray") .. dot)
    },
	["Chalice (Gold)"] = {
        desc =
        	"A chalice of pure gold used to celebrate the summer solstice." ..
        	list(b("Increases") .. " the remaining duration of a " .. i("Bound") .. " by " .. clror("+50 %") .. " after colliding with a Survivor.")
    },
	["Dark Sunglasses"] = {
        desc =
        	"Glasses enhanced with AR that grant the wearer an invaluable advantage on the battlefield." ..
        	list("Grants the " .. states(ils.undetectable) .. " for " .. clror("20 seconds") .. " whenever a Survivors reaches " .. biclr("bright red", "Critical Infection") .. dot)
    },
	["Egg (Gold)"] = {
        desc =
        	"A highly coveted foodstuff." .. br .. "The cash worth is second only to its regenerative effects." ..
        	list(b("Increases") .. " the duration of the " .. i("Chain Bound Window") .. " by " .. clror("+20 %") .. dot)   
    },
	["Green Herb"] = {
        desc =
        	"A common plant, usually known for its restorative properties." ..
        	list(b("Increases") .. " the Infection applied when colliding with Survivors " .. i("Mid-Bound") .. " by " .. clror("+30 %") .. dot)
    },
	["Helicopter Stick"] = {
        desc =
        	"Debris from a helicopter crash." .. br .. "Few jobs are more dangerous than a helicopter pilot's when Wesker is involved." ..
        	list("The " .. iconLink(ils.auras) .. " of Survivors are revealed to you for " .. clror("8 seconds") .. " after using a " .. iconLink("First Aid Spray") .. dot)
    },
	["Iridescent Uroboros Vial"] = {
        desc =
        	"The perfect bio-weapon." .. br .. "Decades of research have led to this." ..
        	list(
        		"Causes all Survivors to start the Trial infected with " .. i("Uroboros") .. dot,
        		"Survivors suffer from the " .. states(ils.exposed) .. " for " .. clror("30 seconds") .. " when they reach " .. biclr("bright red", "Critical Infection") .. dot) ..
        	quote("The entire world will be infected. A new Genesis is at hand and I will be the creator!", "Albert Wesker")
    },
	["Jewel Beetle"] = {
        desc =
        	"A beautiful and valuable insect." .. br .. "While difficult to capture, it is worth a pretty penny." ..
        	list(
            	"Grants " .. clror("+100 %") .. " bonus Bloodpoints for " .. i("Virulent Bound") .. " Score Events.",
                b("Reduces") .. " the remaining duration of a " .. i("Bound") .. " by " .. clro("-50 %") .. " after colliding with a Survivor.")
    },
	["Lab Photo"] = {
        desc =
        	"Wesker was as much a researcher as he was a guinea pig for Umbrella's bio-weapons." ..
        	list(
        		"Grants the ability to break " .. iconLink(ils.breakableWalls) .. " or " .. iconLink(ils.pallets) .. " when colliding with them " .. i("Mid-Bound") .. dot,
        		"You can no longer vault over " .. b("Pallets") .. " using " .. i("Virulent Bound") .. dot) ..
        	quote("Only a handful of humans truly matter. Everyone else is just so much chaff. So now I have to separate this chaff from the wheat.", "Albert Wesker")
    },
	["Leather Gloves"] = {
        desc =
        	"Gloves of a cold, calculating schemer." .. br .. "They impart an air of icy professionalism." ..
        	list(b("Reduces") .. " the Power Recharge time by " .. clror("#effect") .. dot)
    },
	["Lion Medallion"] = {
        desc =
        	"An old medallion depicting a brave lion." .. br .. "It was made when the Raccoon Police Station was still an art museum." ..
        	list(b("Increases") .. " the Throw distance of Survivors grabbed " .. i("Mid-Bound") .. " by " .. clror("+30 %") .. dot)
    },
	["Loose Crank"] = {
        desc =
        	"To the person whose only tool is a crank, the whole world looks like a crank-shaped hole." ..
        	list(b("Increases") .. " your Movement speed during the " .. i("Chain Bound Window") .. " by " .. clror("+15 %") .. dot)
    },
	["Maiden Medallion"] = {
        desc =
        	"A medallion depicting a beautiful maiden." .. br .. "Its purpose was unknown for many years." ..
        	list("Survivors suffer from the " .. states(ils.blindness) .. " for " .. clror("60 seconds") .. " when they reach " .. biclr("bright red", "Critical Infection") .. dot)
    },
	["Portable Safe"] = {
        desc =
        	"A small container that requires a complicated combination to unlock." ..
        	list("Survivors suffer from the " .. states(ils.haemorrhage) .. " until fully healed when injured using " .. i("Virulent Bound") .. dot)
    },
	["R.P.D. Shoulder Walkie"] = {
        desc =
        	"Without the ability to communicate, the cops of Raccoon City are isolated and don’t stand a chance." ..
        	list(
        		b("Reduces") .. " the duration of the first " .. i("Bound") .. " by " .. clror("-20 %") .. dot,
        		b("Increases") .. " the duration of the second " .. i("Bound") .. " by " .. clro("+20 %") .. dot)
    },
	["Red Herb"] = {
        desc =
        	"Acts as a reagent that strengthens the effect of that with which it is combined." ..
        	list(b("Increases") .. " the Healing time of the " .. iconLink("First Aid Spray") .. " by " .. clror("+2 seconds") .. dot)
    },
	["Unicorn Medallion"] = {
        desc =
        	"An old medallion depicting a majestic unicorn." .. br .. "It was placed in storage for years." ..
        	list(
        		b("Increases") .. " the duration of the first " .. i("Bound") .. " by " .. clror("+20 %") .. dot,
        		b("Reduces") .. " the duration of the second " .. i("Bound") .. " by " .. clro("-20 %") .. dot)
    },
	["Uroboros Tendril"] = {
        desc =
        	"The result of decades of Bio Organic Weapon research." .. br .. "It will not rest until it has swallowed the entire world." ..
        	list(b("Increases") .. " your Movement speed while charging " .. i("Virulent Bound") .. " by " .. clror("+5 %") .. dot)
    },
	["Uroboros Virus"] = {
        desc =
        	"For some, the strength and resistance was worth the trade-off." ..
        	list("The " .. iconLink(ils.auras) .. " of Survivors are revealed to you for " .. clror("4 seconds") .. " when they reach " .. biclr("bright red", "Critical Infection") .. dot) ..
        	quote("The balance of the world is changing… and you're completely oblivious to it.", "Ricardo Irving")
    },
	["Video Conference Device"] = {
        desc =
        	"Many intricate conspiracies were orchestrated on devices just like this one." ..
        	list(b("Reduces") .. " the Infection timer of Survivors by " .. clror("-30 %") .. dot)
    },
    
    ------------------
    --- THE KNIGHT ---
    ------------------
    
    ["Battle Axe Head"] = {
        desc =
            "Sander Rault was a tower of a man, terrifying in form and demeanour." ..
            list(b("Reduces") .. " the Cool-down time after summoning " .. b("The Carnifex") .. img("Carnifex", "32px") .. " by " .. clror("-20 %") .. dot)      
    },
    ["Blacksmith's Hammer"] = {
        desc =
            "In their hands, everything was a weapon." ..
            list("Causes Survivors damaged by a " .. b("Guard") .. " during a " .. i("Hunt") .. " to suffer from the " .. states(ils.broken) .. " for " .. clror("60 seconds") .. dot)
    },
    ["Broken Hilt"] = {
        desc =
            "A fresh weapon is clean, even surgical; an attack with a broken one is malicious and desperate." ..
            list("Survivors damaged by a " .. b("Guard") .. " suffer from the " .. states(ils.haemorrhage, ils.mangled) .. " for " .. clror("70 seconds") .. dot)
    },   
    ["Call to Arms"] = {
        desc =
            quote("Posted across many towns, lords desperate to protect their riches posted for able-bodied mercenaries. None survived.") .. nlp ..
            "Modifies the " .. biclr("screamin' green", "Patrol Path") .. " with the following effects:" ..
            list(
            	b("Increases") .. " its maximum length by " .. clror("#effects(1)") .. dot,
            	b("Increases") .. " its Drawing speed by " .. clro("#effects(2)") .. dot)
    },  
    ["Chain Mail Fragment"] = {
        desc =
            "Downtime was spent repairing their armour, to avoid being on the receiving end of a fatal blow." ..
            list("Survivors damaged by a " .. b("Guard") .. " suffer from the " .. states(ils.haemorrhage) .. " until fully healed.")
    },  
    ["Cold Steel Manacles"] = {
        desc =
            "Alejandro Santiago apprenticed as an armourer and showed no remorse." ..
            list(b("Reduces") .. " the Cool-down time after summoning " .. b("The Jailer") .. img("Jailer", "32px") .. " by " .. clror("-20 %") .. dot)
    }, 
    ["Dried Horsemeat"] = {
        desc =
            "Long campaigns often required restocking, and the steeds of fallen enemies were as good as any farm-fresh ration." ..
            list(b("Extends") .. " the duration of a " .. i("Hunt") .. " by " .. clror("+4 seconds") .. dot) 
    }, 
    ["Flint and Steel"] = {
        desc =
            "Attacks at night were not uncommon." .. br .. "Fear was often their greatest ally." .. nlp ..
            "Summoning " .. b("The Carnifex") .. img("Carnifex", "32px") .. " has the following effect:" ..
            list("The " .. iconLink(ils.auras) .. " of all Survivors within " .. clror("24 metres") .. " of unbroken " .. iconLink(ils.pallets) .. " are revealed to you for " .. clro("8 seconds") .. dot) 
    }, 
    ["Grim Iron Mask"] = {
        desc =
            "No method of torture was too base for Guardia Compagnia." .. br .. "Pain and humiliation went hand-in-hand." ..
            list("Survivors detected by a " .. b("Guard") .. " during the " .. i("Patrol Phase") .. " suffer from the " .. states(ils.blindness) .. " for " .. clror("75 seconds") .. dot) 
    }, 
    ["Gritty Lump"] = {
        desc =
            "A rock-hard, dense loaf filled their stomachs on most days, giving them the energy to commit truly heinous acts." ..
            list(b("Increases") .. " the Movement Speed of " .. b("Guards") .. " during the " .. i("Patrol Phase") .. " by " .. clror("+9 %") .. dot) 
    }, 
    ["Healing Poultice"] = {
        desc =
            "Their reputation was so large, so horrible, that the mere knowledge that they were coming was enough to bring people to their knees." .. nlp ..
            "Summoning " .. b("The Assassin") .. img("Assassin", "32px") .. " has the following effect:" ..
            list("The " .. iconLink(ils.auras) .. " of all Survivors within " .. clror("8 metres") .. " of his Spawn location are revealed to you for " .. clro("8 seconds") .. dot) 
    }, 
    ["Iridescent Company Banner"] = {
        desc =
            "Where this banner was raised, those who called themselves 'civilised' ran and hid, because for all their codes and laws, they had nothing resembling actual strength." ..
            list(
            	"Causes all " .. iconLink(ils.windows) .. " on the " .. biclr("screamin' green", "Patrol Path") .. " to be blocked to all Survivors for " .. clror("25 seconds") .. " after summoning a " .. b("Guard") .. dot,
            	"Causes all " .. b("Windows") .. " vaulted by the " .. i("Hunted Survivor") .. " to be blocked to all other Survivors for the duration of the " .. i("Hunt") .. dot,
            	"Causes the " .. iconLink(ils.exitGates) .. " to be blocked to the " .. i("Hunted Survivor") .. " for the duration of the " .. i("Hunt") .. dot) ..
            quote("They huddle in their villages like parasites! They have lost the drive for power.", "Tarhos Kovács")
    }, 
    ["Ironworker's Tongs"] = {
        desc =
            "Vital for repairs between battles and a horrifying, gauging, tearing improvisational weapon." ..
            list("Causes Survivors to suffer from the " .. states(ils.oblivious) .. " for " .. clror("60 seconds") .. ", if a " .. b("Guard") .. " fails to damage them during a " .. i("Hunt") .. dot) 
    },
    ["Jailer's Chimes"] = {
		desc =
			"Many captives met the same grisly end for attempting to escape his clutches." ..
			list(
				"The " .. iconLink(ils.auras) .. " of Survivors crossing the " .. biclr("screamin' green", "Patrol Path") .. " of " .. b("The Jailer") .. img("Jailer", "32px") .. " are revealed to you for " .. clror("8 seconds") .. dot)
	},
	["Knight's Contract"] = {
        desc =
            "The original document contracting Tarhos to Vittorio's employ." .. br .. "The laws of man could not stand up, though, to natural law." ..
            list("Causes a " .. b("Guard") .. " to linger around for " .. clror("8 seconds") .. " after completing a " .. i("Guard Order") .. ", triggering a " .. i("Hunt") .. ", should he detect a Survivor in that time.") ..
            quote("I fear he has left me here to die.", "Vittorio Toscano")
    },     
    ["Lightweight Greaves"] = {
        desc =
            "Sometimes he wore lighter armour, letting him move faster; he knew nothing could stop him anyway." ..
            list("Summoning " .. b("The") .. space .. iconLink("Jailer") .. space .. b("increases") .. " your Movement speed by " .. clror("+10 %") .. " for " .. clro("6 seconds") .. dot) 
    },  
    ["Map of the Realm"] = {
        desc =
            "These unique leather maps were not easy to come by, but when they could not be purchased, they could be taken by force." ..
            list(b("Increases") .. " the Vision range of a " .. b("Guard") .. " during the " .. i("Patrol Phase") .. " by " .. clror("+2 metres") .. dot) 
    },  
    ["Pillaged Mead"] = {
        desc =
            "Drinks taken from their victims tasted sweet, but such frivolities were often short-lived." ..
            list(b("Reduces") .. " the duration of the " .. i("Break or Damage") .. " action of a " .. b("Guard") .. " by " .. clror("-10 %") .. dot)
    },  
    ["Sharpened Mount"] = {
		desc =
			"To stand before the Standard of the Guardia Compagnia was to stand at the threshold between life and death." ..
			list(
				b("Increases") .. " the Spawn duration of " .. b("Standards") .. " by " .. clror("+15 %") .. dot)
	},
	["Tattered Tabard"] = {
        desc =
            "Cloaked in heavy fabrics, neither human nor nature could stop them once they had their target." ..
            list(b("Extends") .. " the duration of the " .. i("Patrol Phase") .. " by " .. clror("+8 seconds") .. dot) 
    }, 
    ["Town Watch's Torch"] = {
        desc =
            "Upon breaching a village, the first thing they would extinguish was the torches, and with them, hope." ..
            list("Grants the " .. states(ils.undetectable) .. " during a " .. i("Hunt") .. dot)
    },
    ["Treated Blade"] = {
        desc =
            "Durkos Malecek stuck to the shadows, and was an efficient slaughterer." ..
            list(b("Reduces") .. " the Cool-down time after summoning " .. b("The Assassin") .. img("Assassin", "32px") .. " by " .. clror("-20 %") .. dot)       
    },

    --------------------------
    --- THE SKULL MERCHANT ---
    --------------------------
    
    ["Adaptive Lighting"] = {
        desc =
            "The Drone takes account of the surrounding area and casts lights in a bewildering manner that obscures movement." ..
            list(b("Increases") .. " the duration of the " .. effects("addon", "Adaptive Lighting", ils.undetectable) .. " by " .. clror("#effect") .. " to " .. clro("#undetectable") .. dot)      
    },
    ["Adi Valente Issue 1"] = {
        desc =
            "An original copy of the first issue of " .. b(i("Adi Valente")) .. ", the comic her father made while Adriana was a child." ..
            list(b("Reduces") .. " the Success Zone of " .. iconLink(ils.skillChecks) .. " for " .. i("Claw-Trapped Survivors") .. " by " .. clror("-20 %") .. dot)      
    },
    ["Advanced Movement Prediction"] = {
        desc =
            "Even after they leave the zone of influenced, a refined AI programme predicts with high accuracy where a person will go next." ..
            list("The " .. iconLink(ils.auras) .. " of newly " .. i("Claw-Trapped Survivors") .. " are revealed to you for " .. clror("6 seconds") .. dot)      
    },
    ["Brown Noise Generator"] = {
        desc =
            "An ominous hum disseminates from the Drone, blanketing the soundscape and making it difficult to hear anything else." ..
            list(i("Claw-Trapped Survivors") .. " suffer from the " .. effects("addons", "Brown Noise Generator", ils.oblivious) .. dot)      
    },
    ["Expired Batteries"] = {
        desc =
            "The batteries on these Claw Traps have been swapped out with old alkaline batteries." .. br .. "Recharging is not recommended." ..
            list(
            	"All Survivors start the Trial with a " .. i("Claw Trap") .. dot,
            	"The first " .. i("Claw Trap") .. " has a reduced Battery Life of " .. clror("#firstBattery") .. dot,
            	"The second " .. i("Claw Trap") .. " has a restored Battery Life of " .. clro("#secondBattery") .. dot,
            	b("Increases") .. " the Battery Life by a stack-able " .. clro("#batteryBonus") .. " for each successive " .. i("Claw Trap") .. " a Survivor receives, up to a maximum duration of " .. clro("#batteryLimit") .. dot)
    },
    ["Geographical Readout"] = {
        desc =
            "The Drones generate and communicate a detailed three-dimensional map of the terrain, making traversal easier." ..
            list(b("Increases") .. " the Action speeds for breaking " .. iconLink(ils.breakableWalls) .. " and " .. iconLink(ils.pallets) .. ", damaging " .. iconLink(ils.generators) .. ", and vaulting " .. iconLink(ils.windows) .. " by " .. clror("+20 %") .. " for " .. clro("8 seconds") .. " after deploying a " .. b("Drone") .. dot) 
    },
    ["High-Current Upgrade"] = {
        desc =
            "A wider cable with low resistance that allows faster recharging of batteries." ..
            list(b("Increases") .. " the Tracking duration of the " .. i("Radar") .. " by " .. clror("+1 second") .. dot) 
    },
    ["High-Power Floodlight"] = {
        desc =
            "A sudden and overwhelming light that discombobulates anyone foolish enough to approach." ..
            list(i("Claw-Trapped Survivors") .. " suffer from the " .. states(ils.blindness) .. dot)      
    },
    ["Infrared Upgrade"] = {
        desc =
            "Heat-detecting cameras focus in on high-stress individuals with pinpoint accuracy." ..
            list("The " .. iconLink(ils.auras) .. " of " .. i("Claw-Trapped Survivors") .. " are revealed to you for " .. clror("4 seconds") .. " after they remove their " .. b("Claw-Trap") .. dot)      
    },
    ["Iridescent Unpublished Manuscript"] = {
        desc =
            quote("Before he disappeared, Adriana's father had started a newer, darker manga: " .. b("Sonhadores Sombrios") .. dot) .. nlp ..
            "Whenever any " .. b("Drone") .. " enters its " .. i("Disabled State") .. ", you benefit from the following effects:" ..
            list(
            	"Grants the " .. effects("addon", "Iridescent Unpublished Manuscript", ils.undetectable) .. " for " .. clror("#undetectable") .. dot,
            	"The disabled " .. b("Drone") .. " emits a " .. iconLink(ils.terrorRadius) .. " of " .. clro("#radius") .. " for " .. clro("#duration") .. dot) ..
            quote("When evil is on the loose, it cannot escape from Adi Valente!", "Quote on the cover of " .. b("Adi Valente #1"))
    },
    ["Loose Screw"] = {
        desc =
            "A bone-chilling rattling emanates from the Drone, and it seems like it may fall at any moment, distracting Survivors from complicated tasks." ..
            list(i("Claw-Trapped Survivors") .. " suffer from the " .. states(ils.exhausted) .. " for " .. clror("6 seconds") .. dot)
    },
    ["Low-Power Mode"] = {
        desc =
            "By intermittently powering on and off non-vital components, the Drone can stay on for longer." ..
            list(b("Reduces") .. " the Rotational speed of the " .. i("Scan Lines") .. " of " .. b("Drones") .. " by " .. clror("-100 %") .. dot)
    },
    ["Powdered Glass"] = {
        desc =
            "Once used on the strings used for battle kites, this powdered glass took on a much more nefarious purpose on her blade." ..
            list(i("Claw-Trapped Survivors") .. " suffer from the " .. states(ils.haemorrhage, ils.mangled) .. " for " .. clror("70 seconds") .. ", when hit with a " .. i("Basic Attack") .. dot)
    },
    ["Prototype Rotor"] = {
        desc =
            "The cutting-edge design allows the Drone to move with razor-sharp precision." ..
            list(b("Increases") .. " the Rotational speed of the " .. i("Scan Lines") .. " of " .. b("Drones") .. " by " .. clror("+10 %") .. dot)
    },
    ["Randomised Strobes"] = {
        desc =
            "Lights flash randomly on the ground, making it harder to find purchase on the uneven terrain." ..
            list(b("Extends") .. " the duration of the " .. states(ils.hindered) .. " for " .. i("Claw-Trapped Survivors") .. " when detected by " .. b("Drones") .. " by " .. clror("+1 second") .. dot)
    },
    ["Shotgun Speakers"] = {
        desc =
            "Capable of directing high-frequency noises in a single direction over great distances, the Drones can focus in on one individual and distract them from danger for some time." ..
            list(i("Claw-Trapped Survivors") .. " no longer receive a warning sound of impending " .. iconLink(ils.skillChecks) .. dot)
    },
    ["Stereo Remote Mic"] = {
        desc =
            "An upgrade that allows increased three-dimensional audio tracking." ..
            list(b("Reduces") .. " the duration of the " .. i("Disabled State") .. " of " .. b("Drones") .. " to " .. clror("85 %") .. " of its default value.")
    },
    ["Supercharge"] = {
        desc =
            "The batteries may run a little hot, but removing the safety protocols from the cells makes them last a little longer." ..
            list(b("Extends") .. " the Battery life of " .. b("Claw Traps") .. " by " .. clror("+15 %") .. dot)
    },
    ["Ultrasonic Speaker"] = {
        desc =
            "A high-frequency noise blaster that fills the sonic spectrum with disorienting sounds, making it impossible for observers to pick out more important noises." ..
            list(b("Reduces") .. " the duration of the immunity to consecutive " .. i("Scan-Line Hits") .. " for Survivors to " .. clror("#effect") .. " of its default value.")
    },
    ["Vital Targeting Processor"] = {
        desc =
            "An additional process in the Drone's programming more accurately predicts the weaknesses of potential prey." ..
            list(b("Increases") .. " the strength of the " .. effects("addon", "Vital Targeting Processor", ils.hindered) .. " for " .. i("Claw-Trapped Survivors") .. " when detected by " .. b("Drones") .. " by " .. clror("#hindered") .. dot)
    },

    -----------------------
    --- THE SINGULARITY ---
    -----------------------
    
    ["Android Arm"] = {
        desc =
            "Destroying the other HUX units not only made its extermination of humans easier, it also gave it more parts to work with." ..
            list(
            	b("Increases") .. " the Spreading distance of " .. biclr("lavender", "Temporal Slipstream") .. " between Survivors by " .. clror("+2 metres") .. dot,
            	b("Increases") .. " the Spreading speed of " .. biclr("lavender", "Temporal Slipstream") .. " between Survivors by " .. clro("+25 %") .. dot)
    },
    ["Broken Security Key"] = {
        desc =
            "Dozens of security measures were applied across the ship's equipment, and many of them were in a state of disrepair." ..
            list(b("Reduces") .. " the Reboot timer of disabled " .. b("Biopods") .. " by " .. clror("-15 %") .. dot)
    },
    ["Cremated Remains"] = {
        desc =
            "After extracting the other colonists' DNA, he burned their remains." ..
            list(i("Slipstreamed Survivors") .. " suffer from the " .. states(ils.blindness) .. dot)
    },
    ["Crew Manifest"] = {
        desc =
            "A complete list of biographical data on the entire crew of the ship sent to Dvarka." ..
            list(
            	"The " .. iconLink(ils.aura) .. " of a " .. i("Slipstreamed Survivor") .. " infecting another Survivor with " .. biclr("lavender", "Temporal Slipstream") .. " is revealed to you for " .. clror("#duration") .. dot,
            	b("Increases") .. " the Spreading distance of " .. biclr("lavender", "Temporal Slipstream") .. " between Survivors by " .. clro("#range") .. dot)
    },
    ["Cryo Gel"] = {
        desc =
            "A no-friction gel applied to crew members before entering deep cryo sleep." ..
            list("Causes " .. i("Slipstreamed Survivors") .. " hit with a " .. i("Basic Attack") .. " to suffer from the " .. effects("addon", "Cryo Gel", ils.haemorrhage) .. " for " .. clro("#haemorrhage") .. dot)
    },
    ["Denied Requisition Form"] = {
        desc =
            "Despite the advent of light speed technology, it seemed nothing could make bureaucracy any faster." ..
            list(
            	"Causes all Survivors to start the Trial infected with " .. biclr("lavender", "Temporal Slipstream") .. dot,
            	b("Increases") .. " the maximum Printing time of the first batch of " .. iconLink("EMPs") .. " at the start of the Trial by " .. clror("+30 seconds") .. dot)
    },
    ["Diagnostic Tool (Construction)"] = {
        desc =
            "A device that gives highly accurate information on the lay of the land." ..
            list("The " .. iconLink(ils.auras) .. " of Survivors picking up an " .. iconLink("EMP") .. " are revealed to you for " .. clror("8 seconds") .. dot)
    },
    ["Diagnostic Tool (Repair)"] = {
        desc =
            "A device that can find the flaws in constructed objects." .. br .. "Intended to help with repair." ..
            list(b("Increases") .. " the Targeting range of " .. b("Biopods") .. " by " .. clror("+4 metres") .. dot)
    },
    ["Foreign Plant Fibres"] = {
        desc =
            "Xenobotanists would have a field day with these strange samples of alien plant life." ..
            list(b("Reduces") .. " the duration of the Movement Speed penalty after being stunned by a " .. iconLink(ils.pallet) .. " during " .. biclr(29, "Overclock Mode") .. " by " .. clror("-20 %") .. dot)
    },
    ["Heavy Water"] = {
        desc =
            "A by-product of the micro-fission reactors powering cryo and life support." .. br .. "Even a tiny leak would prove disastrous for onboard sensors." ..
            list(b("Reduces") .. " the Aura-reveal range of " .. iconLink("Supply Cases") .. " by " .. clror("-8 metres") .. dot)
    },
    ["Hologram Generator"] = {
        desc =
            "Originally used for communication and entertainment, this has been repurposed for obfuscation." ..
            list("After teleporting to a " .. i("Slipstreamed Survivor") .. " from a " .. b("Biopod") .. ", they suffer from the " .. states(ils.oblivious) .. " for " .. clror("60 seconds") .. dot)
    },
    ["Hyperawareness Spray"] = {
        desc =
            "Used by crew members during long shifts to avoid lapses in focus." .. br .. "Side effects of overuse include paranoia and, in extreme cases, hallucination." ..
            list("Causes all " .. i("Slipstreamed Survivors") .. " to hear a fake nearby " .. iconLink(ils.terrorRadius) .. dot)
    },
    ["Iridescent Crystal Shard"] = {
        desc =
            "A crystal from the alien structure that gave it sentience." ..
            list("The " .. iconLink(ils.auras) .. " of Survivors within " .. clror("10 metres") .. " of a newly placed " .. b("Biopod") .. " are revealed to you for " .. clro("6 seconds") .. dot) .. 
            quote("HELLO WORLD.", "HUX-A7-13")
    },
    ["Kid's Ball Glove"] = {
        desc =
            "A kid's baseball glove owned by one of the colonists." .. br .. "His memories of a youth playing catch were implanted." ..
            list(b("Extends") .. " the duration of " .. biclr(29, "Overclock Mode") .. " by " .. clror("+8 %") .. dot)
    },
    ["Live Wires"] = {
        desc =
            "Unconnected wires attached to a live current that have a tendency to deliver a shocking surprise." ..
            list("Causes Survivors to scream and interrupt their current interaction after removing " .. biclr("lavender", "Temporal Slipstream") .. dot)
    },
    ["Nanomachine Gel"] = {
        desc =
            "A gel that can heal wounds extremely quickly." .. br .. "However, the machines in it have a history of being hacked to hurt people too." ..
            list(b("Reduces") .. " the Cool-down time of " .. b("Biopods") .. " after tagging a Survivor with " .. biclr("lavender", "Temporal Slipstream") .. " by " .. clror("#effect") .. dot)
    },
    ["Nutritional Slurry"] = {
        desc =
            "Made for the organics, this disgusting concoction works well to nourish any organic matter." ..
            list(b("Increases") .. " the number of carried " .. b("Biopods") .. " by " .. clror("+2") .. dot)
    },
    ["Soma Family Photo"] = {
        desc =
            quote("A sentimental object that grounds someone to an imagined past.") .. nlp ..
            "Survivors afflicted with " .. biclr("lavender", "Temporal Slipstream") .. " from a " .. b("Biopod") .. " suffer from the following effect:" ..
            list("Inflicts a " .. clror("#hindered") .. space .. effects("addon", "Soma Family Photo", ils.hindered) .. " for " .. clro("#durationHindered") .. dot) ..
            quote("YOUR ATTACHMENT TO ILLUSIONS IS WEAKNESS.", "HUX-A7-13")
    },
    ["Spent Oxygen Tank"] = {
        desc =
            quote("Without air to breathe, organics do not last long.") .. nlp ..
            "Survivors afflicted with " .. biclr("lavender", "Temporal Slipstream") .. " suffer from the following effect:" ..
            list("Inflicts the " .. effects("addon", "Spent Oxygen Tank", ils.exhausted) .. " for " .. clror("#exhausted") .. dot)
    },
    ["Ultrasonic Sensor"] = {
        desc =
            "A limitation of organic hearing is a limited aural spectrum." .. br .. "Expanding that range is like gaining an entirely new sense." ..
            list("Exiting a " .. b("Biopod") .. " within " .. clror("2 seconds") .. " of afflicting a Survivor with " .. biclr("lavender", "Temporal Slipstream") .. space .. b("reduces") .. " your " .. iconLink(ils.terrorRadius) .. " by " .. clro("-12 metres") .. " for " .. clro("12 seconds") .. dot)
    },
    
    ---------------------
    --- THE XENOMORPH ---
    ---------------------
    
    ["Acidic Blood"] = {
        desc =
            "When damaged, The Xenomorph's unique physiology made it deadlier than ever." .. nlp ..
            "While in " .. i("Crawler Mode") .. ", whenever a Survivor stuns you by any means within " .. clror("#windowOfOpportunity") .. " of you exiting the Tunnels, either of the following effects applies:" ..
            list(
            	bclr("faded jade", "Healthy Survivor") .. colon .. space .. "Removes " .. clro("#healthState") .. space .. iconLink(ils.healthState) .. dot,
            	bclr("faded jade", "Injured Survivor") .. colon .. space .. "Inflicts the " .. effects("addon", "Acidic Blood", ils.deepWound) .. dot) ..
            quote("I think we oughta discuss the bonus situation.", "Parker")
    },
    ["Ash's Innards"] = {
        desc =
            "While hardier, mechanical beings break too when enough force is applied." ..
            list(b("Increases") .. " the Respawn timer of " .. iconLink("Remote Flame Turrets") .. " by " .. clror("#effect") .. dot)
    },
    ["Brett's Cap"] = {
        desc =
            "This Nostromo ballcap was fashionable, but severely limited his vertical field of vision." .. nlp ..
            "Whenever a " .. iconLink("Remote Flame Turret") .. " is destroyed by any means, it triggers the following effect:" .. 
            list("Causes all Survivors within " .. clror("#range") .. " of its location to suffer from the " .. effects("addon", "Brett's Cap", ils.blindness) .. " for " .. clror("#blindness") .. dot)
    },
    ["Cat Carrier"] = {
        desc =
            "Saving the cat is a noble goal." .. br .. "It's also very distracting." .. nlp ..
            "Whenever a " .. iconLink("Remote Flame Turret") .. " knocks you out of " .. i("Crawler Mode") .. ", you benefit from the following effect:" .. 
            list("Grants the " .. effects("addon", "Cat Carrier", ils.undetectable) .. " for " .. clror("#undetectable") .. dot)
    }, 
    ["Cereal Rations"] = {
        desc =
            "Contains 100 % of the recommended daily intake of Vitamin A." .. br .. "Tastes awful." .. nlp ..
            "While inside the Tunnels, you benefit from the following effect:" ..
            list(
            	"The " .. iconLink(ils.auras) .. " of deployed " .. iconLink("Remote Flame Turrets") .. " are revealed to you.",
            	nbullet .. "This effect lingers for " .. clror("#linger") .. dot)
    }, 
    ["Crew Headset"] = {
        desc =
            "While they facilitated team communication, the constant chatter made the crew easier to track." ..
            list(b("Increases") .. " the Detection range of Survivor Footsteps when inside the Tunnels by " .. clror("#effect") .. dot)
    },
    ["Drinking Bird"] = {
        desc =
            "One of the many tchotchkes littering the Nostromo's living quarters." .. br .. "A bit of whimsy in an otherwise sterile environment." ..
            list(b("Increases") .. " the duration of " .. i(link("Killer Instinct")) .. " after exiting the Tunnels by " .. clror("#effect") .. dot)
    },
    ["Emergency Helmet"] = {
        desc =
            "An extra helmet on the bridge, for use in emergencies only." ..
            list(b("Increases") .. " the Resistance towards " .. iconLink("Remote Flame Turrets") .. " before being knocked out of " .. i("Crawler Mode") .. " by " .. clror("#effect") .. dot)
    },
    ["Harpoon Gun"] = {
        desc =
            "Barely a weapon, its use is only viable in a situation of last resort." .. nlp ..
            "Hitting a Survivor within " .. clror("#windowOfOpportunity") .. " of exiting the Tunnels triggers the following effect:" ..
            list("Causes all other Survivors farther than " .. clro("#range") .. " from your location to scream and reveal their location to you.")
    },
    ["Improvised Cattle Prod"] = {
        desc =
            "A brutal and noisy weapon, which might have been more effective against a cow." .. nlp ..
            "Whenever a " .. iconLink(ils.generator) .. " is completed, the following effect applies for " .. clror("#windowOfOpportunity") .. colon ..
            list("While the effect is active, the " .. iconLink(ils.aura) .. " of any Survivor coming within " .. clro("#range") .. " of a " .. b("Control Station") .. " are revealed to you for " .. clro("#duration") .. dot)
    },
    ["Kane's Helmet"] = {
        desc =
            "A thin layer of glass was the difference between a minor inconvenience and the tragic destruction of the Nostromo's crew." ..
            list("Survivors hit with a successful " .. i("Tail Attack") .. " suffer from the " .. effects("addon", "Kane's Helmet", ils.mangled) .. " for " .. clror("#mangled") .. dot)
    },
    ["Lambert's Star Map"] = {
        desc =
            "Vital for interstellar travel, but not as useful on a smaller scale." ..
            list(b("Reduces") .. " the Attack range of " .. iconLink("Remote Flame Turrets") .. " by " .. clror("#effect") .. dot)
    },
    ["Light Wand"] = {
        desc =
            "A portable light source used by Ash and Dallas while looking for the invasive creature." .. br .. "Mostly ineffective for lighting larger spaces." ..
            list(b("Increases") .. " the temporary downtime of " .. iconLink("Remote Flame Turrets") .. " whenever you exit the Tunnels by " .. clror("#effect") .. dot)
    },
    ["Moulted Skin"] = {
        desc =
            "The Xenomorph moulted many times as it rapidly grew on the Nostromo." .. br .. "Its shed skin was a constant reminder of its presence." ..
            list("After deploying a " .. iconLink("Remote Flame Turret") .. ", Survivors suffer from the " .. effects("addon", "Moulted Skin", ils.exhausted) .. " for " .. clror("#exhausted") .. dot)
    },
    ["Multipurpose Hatchet"] = {
        desc =
            "Equally useful for destruction and repair." ..
            list("Survivors hit with a successful " .. i("Tail Strike") .. " attack suffer from the " .. effects("addon", "Multipurpose Hatchet", ils.haemorrhage) .. " until fully healed.")
    },
    ["Ovomorph"] = {
        desc =
            "It looks harmless, but the horrors held inside are immeasurable." ..
            list(b("Increases") .. " the Charge rate of " .. i("Crawler Mode") .. " while outside the Tunnels by " .. clror("#effect") .. dot)
    },
    ["Parker's Headband"] = {
        desc =
            "A bold fashion choice that doubled as a handy way to wick sweat from the eyes." ..
            list("Grants a " .. clror("#haste") .. space .. effects("addon", "Parker's Headband", ils.haste) .. " for " .. clro("#durationHaste") .. " after exiting the Tunnels.")
    },
    ["Ripley's Watch"] = {
        desc =
            "On a ship as massive as the Nostromo, synchronising watches was important to keep track of work shifts." ..
            list("Causes " .. iconLink("Remote Flame Turrets") .. " to self-destruct after knocking you out of " .. i("Crawler Mode") .. dot)
    },
    ["Self-Destruct Bolt"] = {
        desc =
            "They needed to be removed to start, and replaced to end, the self-destruct sequence." .. br .. "Just seeing them evokes a sense of urgency." ..
            list(b("Increases") .. " the Vaulting speed while in " .. i("Crawler Mode") .. " by " .. clror("#effect") .. dot)
    },
    ["Semiotic Keyboard"] = {
        desc =
            "Its symbols are designed to be universally recognisable, but they may take some getting used to." .. nlp ..
            "Causes " .. iconLink(ils.generators) .. " within " .. clror("#range") .. " of a " .. iconLink("Remote Flame Turret") .. " to experience the following effect:" ..
            list("The intensity of the " .. b("Generator Aura") .. " reveals its current Repair progress to you.")
    },
    
    --------------------
    --- THE GOOD GUY ---
    --------------------
    
	["Automatic Screwdriver"] = {
		desc =
			"A good way to make mechanical adjustments on the fly." ..
			list(
				b("Reduces") .. " the Cool-down duration of " .. i("Hidey-Ho Mode") .. " by " .. clror("-8 %") .. " after missing a " .. i("Slice & Dice Attack") .. dot)
	},
	["Doll Eyes"] = {
		desc =
			"One of the advantages of possessing a mass-produced doll is easy access to replacement parts." ..
			list(
				"When in " .. i("Hidey-Ho Mode") .. ", the " .. iconLink(ils.auras) .. " of all " .. iconLink(ils.windows) .. " and downed " .. iconLink(ils.pallets) .. " are revealed to you within " .. clror("20 metres") .. dot)
	},
	["Electric Carving Knife"] = {
		desc =
			"The annoying buzzing sound means it is ready to carve some flesh." ..
			list(
				b("Reduces") .. " the Cool-down duration of missed " .. i("Slice & Dice Attacks") .. " to " .. clror("95 %") .. " of their default duration.")
	},
	["Good Guy Box"] = {
		desc =
			"Someone kept this box around in case they needed to bring Chucky back to the store." ..
			list(
				b("Reduces") .. " the Cool-down duration of successful " .. i("Slice & Dice Attacks") .. " to " .. clror("93 %") .. " of their default duration.")
	},
	["Hair Spray & Candle"] = {
		desc =
			"An aerosolised inferno that will ensure a bad hair day is the least of your worries." ..
			list(
				b("Reduces") .. " the Power-Gauge penalty of " .. i("Basic Attacks") .. " when in " .. i("Hidey-Ho Mode") .. " by " .. clror("-20 %") .. dot)
	},
	["Hard Hat"] = {
		desc =
			"Keeps the dome intact while performing high-impact activities" ..
			list(
				"Instantly breaks" .. iconLink(ils.pallets) .. ", when performing a " .. i("Scamper") .. " under them.") .. 
			quote("A true classic never goes out of style.", "Chucky")
	},
	["Iridescent Amulet"] = {
		desc =
			"A pendant of great power, recreated within the Realm." ..
			list(
				b("Extends") .. " the duration of " .. i("Hidey-Ho Mode") .. " by " .. clror("+50 %") .. dot,
				i("Basic Attacks") .. " immediately end " .. i("Hidey-Ho Mode") .. dot) .. 
			quote("If I don't get out of this body soon, I'm screwed.", "Chucky")
	},
	["Jump Rope (Playtime's Over)"] = {
		desc =
			"Good for a bit of exercise, or for tying up your target." ..
			list(
				b("Extends") .. " the duration of " .. i("Slice & Dice") .. " to " .. clror("108 %") .. " of its default duration.")
	},
	["Mirror Shards (Playtime's Over)"] = {
		desc =
			"A bunch of shattered mirror pieces that reflect light and shadow, further disorienting the already disoriented." ..
			list(
				"Grants the ability to see the " .. i("Illusory Footfalls") .. " around Survivors.")
	},
	["Pile of Nails"] = {
		desc =
			"It is a lot easier to stay hidden when your target is worried about a pile of nails flying at their head." ..
			list(
				"Grants the " .. states(ils.undetectable) .. " for " .. clror("3 seconds") .. " after manually ending " .. i("Hidey-Ho Mode") .. dot)
	},
	["Plastic Bag"] = {
		desc =
			"Nothing tires out a kill like a lack of oxygen." ..
			list(
				"Survivors walking through an " .. i("Illusory Footfall") .. " suffer from the " .. states(ils.exhausted) .. " for " .. clror("15 seconds") .. dot)
	},
	["Portable TV"] = {
		desc =
			"Small enough for any room." .. br .. "Just keep it out of the bath." ..
			list(
				b("Extends") .. " the duration of " .. i("Slice & Dice") .. " to " .. clror("170 %") .. " of its default duration once the " .. iconLink(ils.exitGates) .. " have been powered.")
	},
	["Power Drill"] = {
		desc =
			"Comes with a dozen convenient drill tips." .. br .. "They all make a big mess when applied to people." ..
			list(
				b("Reduces") .. " the Cool-down duration of " .. i("Hidey-Ho Mode") .. " by " .. clror("-10 %") .. " after successful " .. i("Slice & Dice Attacks") .. dot)
	},
	["Rat Poison"] = {
		desc =
			"The secret ingredient in a killer chilli." .. nlp ..
			"While performing a " .. i("Slice & Dice") .. " attack, benefit from the following effect:" ..
			list("The " .. iconLink(ils.auras) .. " of all Survivors within " .. clror("#range") .. " of your location are revealed to you for " .. clro("#duration") .. dot)
	},
	["Running Shoes"] = {
		desc =
			"The latest in high-performance killer doll athletic technology." ..
			list(
				"Performing a " .. i("Scamper") .. " grants a " .. clror("+2 %") .. space .. states(ils.haste) .. " for " .. clro("5 seconds") .. dot)
	},
	["Silk Pillow"] = {
		desc =
			"For when you want to smother your target with silky-smooth softness." ..
			list(
				b("Permanently reduces") .. " your " .. iconLink(ils.terrorRadius) .. " by " .. clror("-6 metres") .. dot,
				b("Increases") .. " the Charge time of " .. i("Slice & Dice") .. " to " .. clro("150 %") .. " of its default duration.")
	},
	["Straight Razor"] = {
		desc =
			"For when a close shave needs to be really, really close." ..
			list("Survivors hit with successful " .. i("Slice & Dice Attacks") .. " suffer from the " .. states(ils.haemorrhage, ils.mangled) .. " for " .. clror("80 seconds") .. dot)
	},
	["Strobing Light"] = {
		desc =
			"With the right training, it can be used to make people more suggestible." ..
			list(
				b("Reduces") .. " your " .. iconLink(ils.terrorRadius) .. " by " .. clror("-8 metres") .. ", when " .. i("Hidey-Ho Mode") .. " is on cool-down.")
	},
	["Tiny Scalpel"] = {
		desc =
			"Sometimes, a precision cut can lead to a beautiful bleed." ..
			list("When in " .. i("Hidey-Ho Mode") .. comma .. iconLink(ils.poolsOfBlood) .. " appear to you in " .. bclr("bright red", "bright red") .. dot)
	},
	["Yardstick"] = {
		desc =
			"Good for measuring distance." .. br .. "Even better for laying down a beating." ..
			list("Performing a " .. i("Scamper") .. " reveals the " .. iconLink(ils.auras) .. " of all Survivors within " .. clror("16 metres") .. " of you for " .. clro("3 seconds") .. dot)
	},

    --------------------
    --- THE UNKNOWN  ---
    --------------------
	
	["Blurry Photo"] = {
		desc =
			quote("The photo was found at an abandoned campsite." .. br .. "The campers were never seen again.") .. nlp ..
			"Modifies the " .. i("Teleport") .. " ability with the following effect:" .. 
			list(b("Increases") .. " the Recovery rate back to full Movement speed after Teleportation by " .. clror("#effect") .. dot)
	},
	["B-Movie Poster"] = {
		desc =
			quote("The movie was rumored to be state-funded propaganda, made specifically for something called Project Apple-Pie.") .. nlp ..
			"Survivors damaged by " .. i("UVX") .. " suffer from the following effect:" ..
			list("Inflicts the " .. effects("addon", "B-Movie Poster", ils.broken) .. " for ".. clror("#broken") .. dot)
	},
	["Captured by the Dark"] = {
		desc =
			quote("The documentary purported that the disappearances were linked to small-town cinemas." .. br .. "Audiences left the theater feeling uneasy.") .. nlp ..
			"Modifies " .. i("UVX") .. " with the following effects:" ..
			list(
				"All Survivors start the Trial in the ".. biclr("fuchsia", "Weakened State").. dot,
				b("Reduces") .. " the number of " .. b(i("Hallucinations")) .. " that can exist at the same time by " .. clror("#effect") .. dot)
	},
	["Device of Undisclosed Origin"] = {
		desc =
			quote("Was the thing made on Earth? Or somewhere else entirely?") .. nlp ..
			"While within range of seeing the " .. iconLink(ils.aura) .. " of a " .. b(i("Hallucination")) .. ", Survivors suffer from the following effect:" ..
			list("Inflicts the " .. effects("addon", "Device of Undisclosed Origin", ils.oblivious) .. dot)
	},
	["Discarded Milk Carton"] = {
		desc =
			quote("She decided to take the long way home, and waved goodbye to her friends before parting ways.") .. nlp ..
			"Modifies " .. i("UVX") .. " with the following effects:" ..
			list(
				b("Doubles") .. " the Bounce strength of the " .. b("UVX Projectile") .. " by changing the following:",
				nbullet .. b("Increases") .. " Bounciness by " .. clror("#effect(1)") .. dot,
				nbullet .. b("Reduces") .. " Friction by " .. clro("#effect(2)") .. dot)
	},
	["Footprint Cast"] = {
		desc =
			quote("The cast sits in the Museum of the Weird in Sarasota, Florida and has long since been debunked.") .. nlp ..
			"Whenever a Survivor enters the " .. biclr("fuchsia", "Weakened State") .. ", #name triggers its effect:" ..
			list(b("Reduces") .. " the Spawn timer of the next " .. b(i("Hallucination")) .. " by " .. clror("#effect") .. dot)
	},
	["Front-Page Article"] = {
		desc =
			quote("The assailant had torn gaping holes in the walls of the cabin, and drove the family into the woods.") .. nlp ..
			"Whenever you break a " .. iconLink(ils.breakableWall) .. " or a dropped " .. iconLink(ils.pallet) .. ", #name triggers its effect:" ..
			list(b("Reduces") .. " the Spawn timer of the next " .. b(i("Hallucination")) .. " by " .. clror("#effect") .. dot)
	},
	["Homemade Mask"] = {
		desc =
			quote("The killer had made the mask in the shed in his backyard, where he would bring the others when the sun went down.") .. nlp ..
			"Survivors performing the " .. i("Dispelling") .. " action successfully suffer from the following effect:" .. 
			list("Inflicts the " .. effects("addons", "Homemade Mask", ils.blindness) .. " for " .. clror("#blindness") .. dot)
	},
	["Hypnotist's Watch"] = {
		desc =
			quote("Hypnotherapy was recommended to recover repressed memories." .. br .. "What emerged from his mind would be his undoing.") .. nlp ..
			"Survivors hit by an airborne " .. b("UVX Projectile") .. " suffer from the following effect:" ..
			list("Inflicts the " .. effects("addon", "Hypnotist's Watch", ils.exhausted) .. " for " .. clror("#exhausted") .. dot)
	},
	["Iridescent OSS Report"] = {
		desc =
			quote("The report was redacted to the point of being meaningless." .. br .. "But still, theorists tried to extract meaning from it.") .. nlp ..
			"Modifies " .. i("UVX") .. " with the following effects:" ..
			list(
				b("Reduces") .. " the Cool-down duration of the " .. i("Teleport") .. " ability by " .. clror("#effect(1)") .. dot,
				b("Increases") .. " the Lifetime of " .. b("Decoys") .. " by " .. clro("#effect(2)") .. dot,
				"Causes " .. b("Decoys") .. " to emit a " .. iconLink(ils.terrorRadius) .. " and " .. i(link("Red Stain")) .. dot)
	},
	["Last Known Recording"] = {
		desc =
			quote("She studied " .. i("Musique Concrète") .. " before she disappeared, her screams the last sound on the tape.") .. nlp ..
			"Modifies " .. b(i("Hallucinations")) .. " with the following effect:" ..
			list(b("Reduces") .. " the range at which Survivors can see their " .. iconLink(ils.auras) .. " by " .. clror("#effect") .. dot)
	},
	["Notebook of Theories"] = {
		desc =
			quote("His studio apartment was empty and reeked of black mould." .. br .. "The book was the only thing left.") .. nlp ..
			"Survivors hit by an airborne " .. b("UVX Projectile") .. " suffer from the following effect:" ..
			list(b("Increases") .. " the duration of the " .. effects("addon", "Notebook of Theories", ils.hindered) .. " by " .. clror("#effect") .. " to " .. clro("#hindered") .. dot)
	},
	["Obscure Game Cartridge"] = {
		desc =
			quote("Some maintained " .. i("Project Apple-Pie") .. " evolved over time, turning to new forms of media for results.") .. nlp ..
			"After teleporting to a " .. b(i("Hallucination")) .. ", #name triggers its effect for " .. clror("#effect(1)") .. colon ..
			list(b("Increases") .. " the Action speeds for Breaking, Damaging, and Vaulting by " .. clror("#effect(2)") .. dot)
	},
	["Punctured Eyeball"] = {
		desc =
			quote("The station was a scene of madness." .. br .. "The officers had seemingly turned on each other.") .. nlp ..
			"Survivors performing the " .. i("Dispelling") .. " action successfully while both injured and in the " .. biclr("fuchsia", "Weakened State") .. " suffer from the following effect:" .. 
			list("Inflicts the " .. effects("addon", "Punctured Eyeball", ils.deepWound) .. dot)
	},
	["Rabbit's Foot"] = {
		desc =
			quote("The unlucky creature's remains were found by a tree, its intestines wedged between its teeth.") .. nlp ..
			"While charging " .. i("UVX") .. ", you benefit from the following primary effect:" ..
			list(iconLink(ils.poolsOfBlood) .. " are highlighted in " .. bclr("bright red", "bright red") .. dot) ..
			"Survivors damaged by " .. i("UVX") .. " suffer from the following secondary effect:" ..
			list("Inflicts the " .. effects("addon", "Rabbit's Foot", ils.haemorrhage) .. " for " .. clror("#haemorrhage") .. dot)
	},
	["Serum Vial"] = {
		desc =
			quote("The molecular structure of the substance was synthesised in the lab, but its effects could never be replicated.") .. nlp ..
			"Upon entering the range of seeing the " .. iconLink(ils.aura) .. " of a " .. b(i("Hallucination")) .. ", Survivors suffer from the following effect:" ..
			list("Inflicts the " .. effects("addon", "Serum Vial", ils.exhausted) .. " for " .. clror("#exhausted") .. dot)
	},
	["Sketch Attempt"] = {
		desc =
			quote("The victim’s child was given paper and crayons at the station, while he waited for his father to pick him up.") .. nlp ..
			"Survivors in the " .. i("Blast Area") .. " of the " .. b("UVX Projectile") .. " suffer from the following effect:" ..
			list("Inflicts the " .. effects("addon", "Sketch Attempt", ils.oblivious) .. " for " .. clror("#oblivious") .. dot)
	},
	["Slashed Backpack"] = {
		desc =
			quote("When the hiker was rescued from the mountain pass, she insisted her companion would never wander off alone.") .. nlp ..
			"Hitting a " .. b(i("Hallucination")) .. " with the " .. b("UVX Projectile") .. " triggers the following effects:" ..
			list(
				"Causes the " .. b(i("Hallucination")) .. " to disintegrate, creating a ".. i("Blast Area") .. dot,
				b("Reduces") .. " the Spawn timer of your next " .. b(i("Hallucination")) .. " by " .. clror("#effect") .. dot)
	},
	["Vanishing Box"] = {
		desc =
			quote("The magician was popular at children's parties, and quickly became the top suspect.") .. nlp ..
			"Modifies " .. i("UVX") .. " with the following primary effect:" ..
			list(b("Increases") .. " the default value of the Spawn timer of " .. b(i("Hallucinations")) .. " by " .. clror("#effect") .. dot) ..
			"Whenever one or multiple Survivors complete a " .. iconLink(ils.generator) .. ", #name triggers its secondary effect:" ..
			list("Causes all participating Survivors to enter the " .. biclr("fuchsia", "Weakened State") .. dot)
	},
	["Victim's Map"] = {
		desc =
			quote("He thought the key to solving the mystery lay beyond the forest, and feared he would never return.") .. nlp ..
			"Survivors performing the " .. i("Stare Down The Unknown") .. " action successfully suffer from the following effect:" ..
			list("Triggers " .. i(link("Killer Instinct")) .. " for " .. clror("#killerInstinct") .. dot)
	},
    
    --------------------
    ---   THE LICH   ---
    --------------------
	
	["Bag of Holding"] = {
		desc =
			quote("The realm itself bends to its astounding capacity, populating trials with even more to take.") .. nlp ..
			"Survivors opening a " .. b("Treasure Chest") .. " suffer from the following effects:" ..
			list(
				"Inflicts the " .. effects("addon", "Bag of Holding", ils.oblivious) .. " for " .. clror("#oblivious") .. dot,
				"At least " .. clro("#amount") .. space .. b("Treasure Chests") .. " in the environment will roll a " .. clro("#diceRoll") .. " on their " .. i("Dice Roll") .. dot)
	},
	["Boots of Speed"] = {
		desc =
			quote("A simple click of their heels grants their wearer incredible pace.") .. nlp ..
			"After casting the " .. iconLink("Mage Hand") .. space .. i("Spell") .. ", you benefit from the following effect:" ..
			list("Grants a " .. clror("#haste") .. space .. effects("addon", "Boots of Speed", ils.haste) .. " for " .. clro("#durationHaste") .. dot)
	},
	["Cloak of Elvenkind"] = {
		desc =
			quote("Its colours are constantly shifting, making you more difficult to detect from afar.") .. nlp ..
			"While casting the " .. iconLink("Fly") .. space .. i("Spell") .. ", you benefit from the following effect:" ..
			list(
				b("Reduces") .. " your " .. iconLink(ils.terrorRadius) .. " by " .. clror("#effect") .. dot,
				nbullet .. "This effect lingers for " .. clro("#linger") .. " after ending " .. i("Fly") .. dot)
	},
	["Cloak of Invisibility"] = {
		desc =
			quote("A powerful magic item, envied by rogues and the conflict-averse alike.") .. nlp ..
			"Whenever all four " .. i("Spells") .. " are on cool-down at the same time, you benefit from the following effect:" ..
			list("Grants the " .. effects("addon", "Cloak of Invisibility", ils.undetectable) .. " for " .. clror("#undetectable") .. dot)
	},
	["Crystal Ball"] = {
		desc =
			quote("Used by spellcasters for centuries to scry upon friend and foe alike.") .. nlp ..
			"Whenever the " .. iconLink("Dispelling Sphere") .. space .. i("Spell") .. " detects a Survivor, you benefit from the following effect:" ..
			list(b("Increases") .. " the duration of " .. i(link("Killer Instinct")) .. " by " .. clror("#effect") .. dot)
	},
	["Dragontooth Dagger"] = {
		desc =
			quote("Made from the actual tooth of a dragon, its edge is jagged and cruel.") .. nlp ..
			"Successfully hitting a Survivor equipped with a " .. b("Magic Item") .. " with a " .. i("Basic Attack") .. " triggers the following effect:" .. 
			list("Inflicts the " .. effects("addon", "Dragontooth Dagger", ils.haemorrhage, ils.mangled) .. " for " .. clror("#haemorrhage") .. dot)
	},
	["Glass Eye"] = {
		desc =
			quote("A material component used to cast spells of detection.") .. nlp ..
			"Modifies the " .. iconLink("Dispelling Sphere") .. space .. i("Spell") .. " with the following effects:" ..
			list(
				b("Increases") .. " the its radius by " .. clror("#radius") .. dot,
				b("Increases") .. " its Travel speed by " .. clro("#speed") .. dot)
	},
	["Iridescent Book of Vile Darkness"] = {
		desc =
			quote("The ultimate compilation of cruelty, wickedness and depravity.") .. nlp ..
			"Whenever you use the " .. iconLink("Fly") .. space .. i("Spell") .. " to pass through a " .. iconLink(ils.window) .. ", the following effects apply:" ..
			list(b("Blocks") .. " the " .. b("Window") .. " for all Survivors for " .. clror("#duration") .. dot) ..
			"Modifies the " .. iconLink("Flight of the Damned") .. space .. i("Spell") .. " with the following effects:" ..
			list(
				b("Reduces") .. " the Flight height of the " .. i("Flying Entites") .. " by " .. clro("#height") .. ", allowing them to also damage Survivors who are crouching.",
				b("Reduces") .. " the number of " .. i("Flying Entities") .. " summoned by the " .. i("Spell") .. " by " .. clro("#penalty") .. dot) ..
			quote("What chance do you have against my centuries of preparation?", "Vecna")
			
	},
	["Lantern of Revealing"] = {
		desc =
			quote("Even those who evade your attacks cannot evade your gaze.") .. nlp ..
			"Survivors narrowly missed by the " .. i("Flying Entities") .. " summoned by the " .. iconLink("Flight of the Damned") .. space .. i("Spell") .. " suffer from the following effect:" ..
			list("Their " .. iconLink(ils.auras) .. " are revealed to you for " .. clror("#duration") .. dot)
	},
	["Ornate Horn"] = {
		desc =
			quote("Once used to rally troops to battle, its very presence brings great armies to bear.") .. nlp ..
			"Modifies the " .. iconLink("Flight of the Damned") .. space .. i("Spell") .. " with the following effect:" ..
			list(b("Increases") .. " the number of " .. i("Flying Entities") .. " summoned by the " .. i("Spell") .. " by " .. clror("#bonus") .. dot)
	},
	["Pearl of Power"] = {
		desc =
			quote("Its shimmering face energises mages who hold it, allowing them to cast more spells.") .. nlp ..
			"Successfully hitting a Survivor with a " .. i("Basic Attack") .. " triggers the following effect:" .. 
			list(b("Reduces") .. " the remaining Recharge time of all " .. i("Spells") .. " currently on cool-down by " .. clror("#effect") .. dot)
	},
	["Potion of Speed"] = {
		desc =
			quote("A curious concoction that downgrades the rules of physics to mere suggestions.") .. nlp ..
			"While casting the " .. iconLink("Fly") .. space .. i("Spell") .. ", you benefit from the following effect:" ..
			list(b("Reduces") .. " the Interaction Cool-down time after casting it by " .. clror("#effect") .. dot)
	},
	["Raven's Feather"] = {
		desc =
			quote("A material component most typically used by the Fly spell.") .. nlp ..
			"Modifies the " .. iconLink("Fly") .. space .. i("Spell") .. " with the following effect:" ..
			list(b("Extends") .. " the Flight duration by " .. clror("#effect") .. dot)
	},
	["Ring of Spell Storing"] = {
		desc =
			quote("A magical ring that rewards those who are well-prepared.") .. nlp ..
			"You benefit from the following effect:" ..
			list(b("Reduces") .. " the default Recharge time of all " .. i("Spells") .. " by " .. clror("#effect") .. dot)
	},
	["Ring of Telekinesis"] = {
		desc =
			quote("Its arcane energy crackles to life when its user manipulates objects from afar.") .. nlp ..
			"While casting the " .. iconLink("Mage Hand") .. space .. i("Spell") .. " to block an upright " .. iconLink(ils.pallet) .. ", you benefit from the following effect:" ..
			list(b("Increases") .. " your Vaulting speed by " .. clror("#effect") .. " for the next " .. clro("#duration") .. dot)
	},
	["Robe of Eyes"] = {
		desc =
			quote("When worn, none can escape its bearer's unyielding gaze.") .. nlp ..
			"Whenever you cast any " .. i("Spell") .. ", all Survivors within " .. clror("#range") .. " of a " .. iconLink("Treasure Chest") .. " suffer from the following effect:" ..
			list("Their " .. iconLink(ils.auras) .. " are revealed to you for " .. clro("#duration") .. dot)
	},
	["Staff of Withering"] = {
		desc =
			quote("Its necrotic power brings its targets closer to death.") .. nlp ..
			"Whenever a Survivor enters radius of the " .. i("Dispelling Sphere") .. ", they suffer from the following effect:" ..
			list("Inflicts the " .. effects("addon", "Staff of Withering", ils.exhausted) .. " for " .. clror("#exhausted") .. dot) 
	},
	["Tattered Headband"] = {
		desc =
			quote("An enchanted accessory once owned by a powerful summoner. It still carries a whisper of its former magic.") .. nlp ..
			"Modifies the " .. iconLink("Flight of the Damned") .. space .. i("Spell") .. " with the following effect:" ..
			list(b("Extends") .. " the Flight range of the " .. i("Flying Entities") .. " summoned by the " .. i("Spell") .. " by " .. clror("#effect") .. dot)
	},
	["Trickster's Glove"] = {
		desc =
			quote("A glove once belonging to an archane trickster whose mastery of Mage Hand clings to its fibers.") .. nlp ..
			"While casting the " .. iconLink("Mage Hand") .. space .. i("Spell") .. " to block an upright " .. iconLink(ils.pallet) .. ", you benefit from the following effect:" ..
			list(b("Increases") .. " its Hold time by " .. clror("#effect") .. dot)
	},
	["Vorpal Sword"] = {
		desc =
			quote("A powerful magical artifact whose blade has severed many a head from its accompanying body.") .. nlp ..
			"Whenever an injured Survivor enters radius of the " .. i("Dispelling Sphere") .. ", they suffer from the following effect:" ..
			list("Inflicts the " .. effects("addon", "Vorpal Sword", ils.broken) .. " for " .. clror("#broken") .. dot) ..
			"Modifies the " .. iconLink("Mage Hand") .. space .. i("Spell") .. " with the following effect:" ..
			list(
				"Causes it to break dropped " .. iconLink(ils.pallets) .. ", instead of lifting them.",
				nbullet .. "This action takes " .. clro("#palletBreaking") .. " to complete.") ..
			quote("Only one has ever crossed me and lived to regret it.", "Vecna")
	},

    ---------------------
    --- THE DARK LORD ---
    ---------------------
	["Alucard's Shield"] = {
	desc =
		quote("A family heirloom that blocks its bearer's enemies at every turn.") .. nlp ..
		"Whenever an " .. iconLink(ils.exitGate) .. " is opened, #name triggers its effect:" ..
		list("Causes the area inside the " .. b("Exit Gate") .. " to continuously spawn " .. i("Pillars of Flame") .. dot) ..
		quote("Oh, but this world invited me. Your own kind called me forth with praise and tribute.", "Dracula")
	},
	["Blood-Filled Goblet"] = {
	desc =
		quote("The blood of his victims sustains him and makes him an even greater hunter.") .. nlp ..
		"Modifies the " .. bclr("white", "Scent Orbs") .. " with the following effect:" ..
		list(b("Extends") .. " their Lifetime by " .. clror("#effect") .. dot)
	},
	["Cerberus Talon"] = {
	desc =
		quote("A sharp memento from one of Dracula's most terrifying guards.") .. nlp ..
		"Modifies the " .. bclr("white", "Scent Orbs") .. " with the following effect:" ..
		list(b("Increases") .. " their Aura-Reveal distance by " .. clror("#effect") .. dot)
	},
	["Clock Tower Gear"] = {
	desc =
		quote("A piece of the great clock tower, a reminder of the inevitability of time itself.") .. nlp ..
		"Modifies the " .. i("Shapeshift") .. " ability with the following effect:" ..
		list(b("Reduces") .. " its Cool-down time by " .. clror("#effect") .. dot)
	},
	["Cube of Zoe"] = {
	desc =
		quote("A strange box whose presence creates something from nothing.") .. nlp ..
		"Whenever a " .. iconLink(ils.generator) .. " is completed, #name triggers its effect for " .. clror("#effect") .. colon ..
		list("Causes the immediate area around " .. b("The Dark Lord") .. " to continuously spawn ".. i("Pillars of Flame") .. dot)
	},
	["Force of Echo"] = {
	desc =
		quote("An artifact that grants bats even greater senses in the dark.") .. nlp ..
		"Modifies the " .. bclr("white", "Scent Orbs") .. " with the following effect:" ..
		list(b("Increases") .. " their Spawn rate by " .. clror("#effect") .. dot)
	},
	["Iridescent Ring of Vlad"] = {
	desc =
		quote("A unique relic belonging to Dracula. It is said none can approach the Dark Lord without it.") .. nlp ..
		"Modifies the " .. i("Hellfire") .. " attack with the following effect:" ..
		list("Causes the " .. i("Pillars of Flame") .. " to home-in on nearby Survivors.") ..
		quote("Enough talk... have at you!", "Dracula")
	},
	["Killer Doll"] = {
	desc =
		quote("One of Dracula's minions, and a reminder that all are his playthings.") .. nlp ..
		"Modifies the " .. i("Pounce") .. " attack with the following effect:" ..
		list(b("Increases") .. " the Cool-down bonus from collecting " .. bclr("white", "Scent Orbs") .. " by " .. clror("#effect") .. dot)
	},
	["Lapis Lazuli"] = {
	desc =
		quote("A stone said to bring luck to its holders, or take it from their enemies.") .. nlp ..
		"After teleporting to a " .. iconLink(ils.window) .. ", #name triggers its effect:" ..
		list("Calls upon The " .. iconLink(ils.entity) .. " to block it to all Survivors for " .. clror("#effect") .. dot)
	},
	["Magical Ticket"] = {
	desc =
		quote("A strange artifact once used to transport across Dracula's castle.") .. nlp ..
		"Modifies the " .. i("Teleport") .. " ability with the following effect:" ..
		list(b("Increases") .. " the Teleporation speed by " .. clror("#effect") .. dot)
	},
	["Medusa's Hair"] = {
	desc =
		quote("A snakelike memento from one of Dracula's most ancient and fearsome minions.") .. nlp ..
		"Causes all Survivors within " .. clror("#range") .. " of your Teleport destination to suffer from the following effect:" .. 
		list("Inflicts a " .. clro("#hindered") .. space .. effects("addon", "Medusa's Hair", ils.hindered) .. " for " .. clro("#durationHindered") .. dot)
	},
	["Moonstone Necklace"] = {
	desc =
		quote("A simple necklace by day, but its power comes to life in the dark.") .. nlp ..
		"Modifies the " .. i("Vampire Form") .. " and the " .. i("Wolf Form") .. " with the following effect:" ..
		list(b("Reduces") .. " the " .. iconLink(ils.terrorRadius) .. " by " .. clror("#effect") .. dot)
	},
	["Pocket Watch (Vampiric Shift)"] = {
	desc =
		quote("A tool that bends the rules of time itself.") .. nlp ..
		"Modifies the " .. i("Teleport") .. " ability with the following effect:" ..
		list("Instantly recharges it after breaking a " .. iconLink(ils.pallet) .. dot)
	},
	["Ruby Circlet"] = {
	desc =
		quote("An enchanted headpiece that brings even the mightiest of flames to heel.") .. nlp ..
		"Modifies the " .. i("Hellfire") .. " attack with the following effect:" ..
		list(b("Reduces") .. " its Cool-down duration by " .. clror("#effect") .. dot)
	},
	["Sunglasses"] = {
	desc =
		quote("They protect against bright lights, in addition to looking cool.") .. nlp ..
		"Modifies the " .. i("Hellfire") .. " attack with the following effects:" ..
		list(
			b("Increases") .. " the number of " .. i("Pillars of Flame") .. " by " .. clror("#effect(1)") .. dot,
			b("Increases") .. " its Charge time by " .. clro("#effect(2)") .. dot)
	},
	["Sylph Feather"] = {
	desc =
		quote("An enchanted feather that grants its holder great agility.") .. nlp ..
		"Whenever you break a " .. iconLink(ils.pallet) .. ", #name gains " .. clror("#tokens(1)") .. ", up to a maximum of " .. clro("#tokens(2)") .. colon ..
		list(b("Reduces") .. " the Cool-down duration of the " .. i("Hellfire") .. " attack by a stack-able " .. clro("#cooldown(1)") .. " per Token, up to a limit of " .. clro("#cooldown(2)") .. dot)
	},
	["Traveller's Hat"] = {
	desc =
		quote("A wide-brimmed hat that once belonged to a well-travelled man.") .. nlp ..
		"Modifies the " .. i("Shapeshift") .. " ability with the following effect:" ..
		list(b("Reduces") .. " the Transition time between " .. i("Forms") .. " by " .. clror("#effect") .. dot)
	},
	["Warg's Fang"] = {
	desc =
		quote("A mighty tool of destruction taken from one of Dracula's most dangerous allies.") .. nlp ..
		"While in " .. i("Wolf Form") .. " , whenever the " .. i("Pounce") .. " attack becomes available, you benefit from the following effect:" .. 
		list("The " .. iconLink(ils.auras) .. " of all Survivors whose " .. bclr("white", "Scent Orbs") .. " you have collected are revealed to you for " .. clror("#effect") .. dot)
	},
	["White Wolf Medallion"] = {
	desc =
		quote("A trinket once used to call a great spirit guide.") .. nlp ..
		"Modifies " .. i("Wolf Form") .. " with the following effect:" ..
		list(b("Increases") .. " its " .. i(link("Killer Instinct")) .. " duration by " .. clror("#effect") .. dot)
	},
	["Winged Boots"] = {
	desc =
		quote("Long used by their wearers to move quickly.") .. nlp ..
		"Modifies the " .. i("Teleport") .. " ability with the following effect:" ..
		list(b("Increases") .. " its Teleportation range by " .. clror("#effect") .. dot)
	},

    -----------------------
    --- THE HOUNDMASTER ---
    -----------------------	
   
    ["Barley Meal"] = {
    desc =
        "The key ingredient for a bland but reinvigorating porridge." ..
        list(b("Increases") .. " the distance of the " .. i("Initial Chase Path") .. " by " .. clror("#effect") .. dot)
    },
    ["Belaying Pins"] = {
    desc =
        "Ideal for holding rope, securing knots, and rigging sails." ..
        list("Causes Survivors affected by " .. i("Houndsense") .. " to also suffer from the " .. effects("addon", "Belaying Pins", ils.oblivious) .. " for " .. clror("#oblivious") .. dot)
    },
    ["Creature's Bone"] = {
    desc =
        "It was unlike anything she'd ever seen, and the marrow in its bones was delectable." ..
        list(b("Reduces") .. " the Stun duration of " .. b("The Dog") .. " by " .. clror("#effect") .. dot)
    },
    ["Fatty Meat"] = {
    desc =
        "A strange and irresistible treat for a canine friend." ..
        list("Survivors affected by " .. i("Houndsense") .. " periodically scream every " .. clror("#effect") .. ", but without revealing their location to " .. b("The Houndmaster") .. dot)
    },
    ["Gunpowder Tin"] = {
    desc =
        "Useful for all manner of explosive schemes." ..
        list(
			b("Increases") .. " the Action speeds for the following interactions by " .. clror("#effect") .. " for " .. clro("#duration") .. " after a Survivor becomes affected by " .. i("Houndsense") .. colon,
			nbullet .. "Breaking " .. iconLink(ils.breakableWalls) .. dot,
			nbullet .. "Breaking " .. iconLink(ils.pallets) .. dot,
			nbullet .. "Damaging " .. iconLink(ils.generators) .. dot)
    },
    ["Iridescent Wheel Handle"] = {
    desc =
        "Once used to guide a greast vessel across the open seas, its remnants now serve as a memory of times past." ..
        list(
        	b("Increases") .. " the Linger duration of " .. b("The Dog") .. " at the " .. i("Target Location") .. " of the " .. i("Search Command") .. " by " .. clror("#effect") .. dot,
        	"Grants the " .. effects("addon", "Iridescent Wheel Handle", ils.undetectable) .. " while " .. b("The Dog") .. " fulfils the " .. i("Search Command") .. dot,
        	nbullet .. "Touching the " .. i("Search Path") .. " as " .. b("The Houndmaster") .. " immediately removes the " .. b("Status Effect") .. dot) ..
        quote("I fear no obstacle, be it man or storm.", "Portia Maye")
    },
    ["Knotted Rope"] = {
    desc =
        "The dog's jaws tightened around the makeshift toy, and he thrashed it back and forth." ..
        list(b("Reduces") .. " the Attack cool-down of successful " .. i(link("Basic Attacks")) .. " on Survivors caught in the grasp of " .. b("The Dog") .. " by " .. clror("#effect") .. dot)  
    },
    ["Leather Harness"] = {
    desc =
        "Allows greater control over a dog's every movement." .. nlp ..
        "Whenever a " .. iconLink(ils.generator) .. " is completed, #name triggers its effect for " .. clror("#duration") .. colon ..
        list(b("Increases") .. " the Chase speed of " .. b("The Dog") .. " by " .. clro("#effect") .. dot) .. 
        "#name applies its effect permanently after all " .. b("Generators") .. " are completed."
    },
    ["Marlinspike"] = {
    desc =
        "As good for unsplicing rope as it is for causing grievous bodily harm." ..
        list("Causes all Survivors within " .. clror("#range") .. " of " .. b("The Dog") .. " grabbing a Survivor to become affected by " .. i("Houndsense") .. dot) ..
        "#name does not affect the " .. i("Grabbed Survivor") .. dot
    },
    ["Ship Figurehead"] = {
    desc =
        "A trophy torn from the bow of another ship." .. nlp ..
        "The " .. iconLink(ils.terrorRadius) .. " of " .. b("The Houndmaster") .. " changes based on the proximity of " .. b("The Dog") .. colon ..
        list(
        	b("Increases") .. " the " .. i("Terror Radius") .. " by " .. clror("#near") .. " while it is following.",
        	b("Reduces") .. " the " .. i("Terror Radius") .. " by " .. clro("#far") .. " while it is away.")
    },
    ["Smoked Snapper"] = {
    desc =
        "A protein-packed foodstuff, preserved to ensure its quality over long expeditions." ..
        list(b("Reduces") .. " the Power Recharge time by " .. clror("#effect") .. dot)
    },
    ["Spiked Collar"] = {
    desc =
        "A dangerous accessory worn by dogs sent to battle." ..
        list("Causes Survivors becoming injured while they were grabbed by " .. b("The Dog") .. " to suffer from the " .. effects("addon", "Spiked Collar", ils.haemorrhage, ils.mangled) .. " for " .. clror("#duration") .. dot)
    },
    ["Spyglass"] = {
    desc =
        "Used to spot what one is looking for, no matter how far away." ..
        list(
        	"The " .. iconLink(ils.auras) .. " of Survivors affected by " .. i("Houndsense") .. " are revealed for " .. clror("#duration") .. " after it ends.")
    },
    ["Sticky Pitch"] = {
    desc =
        "A vital commodity for keeping a ship in tip-top shape." ..
        list(b("Increases") .. " the bonus Movement speed of " .. b("The Houndmaster") .. " while walking along the " .. i("Search Path") .. " by " .. clror("#effect") .. dot)
    },
    ["Torn Novel"] = {
    desc =
        "A book given to her by her father." .. br .. "All but destroyed after a raid." .. nlp ..
        "While possessing " .. b("The Dog") .. " during the " .. i("Chase Command") .. " to access the " .. i("Redirect Chase") .. " ability, the following effect applies:" ..
        list(
        	"The " .. iconLink(ils.auras) .. " of Survivors within " .. clror("#range") .. " of " .. b("The Dog") .. " are revealed to you.",
        	nbullet .. "This effect lingers for " .. clro("#linger") .. " after exiting the ability by any means.") ..
        quote("I'll find out who they are... and they'll pay. Every last one.", "Portia Maye")
    },
    ["Trainer's Book"] = {
    desc =
        "Some of the advice contained within helped strengthen their bond." ..
        list(b("Increases") .. " the duration of " .. i("Houndsense") .. " by " .. clror("#effect") .. dot)
    },
    ["Training Bell"] = {
    desc =
        "Even over great distances, it will notify a dog exactly where their owner is." ..
        list("The " .. iconLink(ils.aura) .. " of the Survivor responsible for stunning " .. b("The Dog") .. " is revealed to you for " .. clror("#duration") .. dot)
    },
    ["Unfinished Map"] = {
    desc =
        "Features details on the area that would come to be known as the Bermuda Triangle." ..
        list("Causes Survivors affected by " .. i("Houndsense") .. " to also suffer from the " .. effects("addon", "Unfinished Map", ils.exhausted) .. " for " .. clror("#exhausted") .. dot)
    },
    ["Waterskin"] = {
    desc =
        "She gave him the last of her water, knowing he needed the strength to hunt." ..
        list(b("Increases") .. " the distance of the " .. i("Redirected Chase Path") .. " by " .. clror("#effect") .. dot)
    },
    ["Young Coconut"] = {
    desc =
        "Her first meal as a castaway, she shared it with her loyal companion." ..
        list(b("Increases") .. " the Chase speed of " .. b("The Dog") .. " by " .. clror("#effect") .. dot)
    },
    
    -----------------
    --- THE GHOUL ---
    -----------------
   
    ["Amon's Necktie"] = {
    desc =
        "Cold, calculated, precise." .. br ..
        "He had a firm grasp of every situation." .. nlp ..
        "While aiming " .. i("Mid-Leap") .. ", you benefit from the following effect:" ..
        list("The " .. iconLink(ils.auras) .. " of " .. iconLink(ils.pallets) .. " and " .. iconLink(ils.windows) .. " are revealed to you within " .. clror("#range") .. dot)
    },
    ["Anteiku Apron"] = {
    desc =
        "Standard-issue uniform at a lovely little coffee shop." ..
        list(b("Shortens") .. " the slide after " .. i("Kagune Leaps") .. " by " .. clror("#effect") .. dot)
    },
    ["Aogiri Tree Robe"] = {
    desc =
        "Garments worn by an anti-human ghoul organisation." .. nlp ..
        "Whenever a " .. iconLink(ils.generator) .. " is completed while in " .. i("Enraged Mode") .. ", you benefit from the following effect:" ..
        list("Grants the " .. effects("addon", "Aogiri Tree Robe", ils.undetectable) .. " for " .. clror("#undetectable") .. dot)
    },
    ["Blood-Stained Handkerchief"] = {
    desc =
        "Even a single drop of blood can excite the senses of any gourmet." .. 
        list(b("Increases") .. " the maximum reach of " .. i("Kagune Leaps") .. " by " .. clror("#effect") .. dot)
    },
    ["Broken Chain"] = {
    desc =
        "Nothing could restrain him once he finally embraced his full potential." .. 
        list(b("Reduces") .. " the Cool-down duration of " .. i("Kagune Leap") .. " by " .. clror("#effect") .. " when outside of " .. i("Enraged Mode") .. dot)
    },
    ["CCG ID Card"] = {
    desc =
    	"A card carried by every ghoul investigator." .. nlp ..
        "Performing a " .. i("Kagune Leap Vault") .. " action triggers the following effect:" ..
        list("The " .. iconLink(ils.auras) .. " of all Survivors affected by the " .. i("Kagune Mark") .. " are revealed to you within " .. clror("#range") .. " of your location for " .. clro("#duration") .. dot)
    },
    ["Fresh Coffee"] = {
    desc =
        "Every ghoul's favourite drink, the one human delicacy they can consume." ..
        list(b("Increases") .. " the Movement speed during " .. i("Kagune Leaps") .. " by " .. clror("#effect") .. dot)
    },
    ["Hide's Headphones"] = {
    desc =
        "They belonged to his best friend, who he tried to keep safe at all costs." .. nlp ..
        "Survivors affected by the " .. i("Kagune Mark") .. " experience the following effect while carrying it:" ..
        list("Causes them to suffer from the " .. effects("addon", "Hide's Headphones", ils.oblivious) .. " until the mark is removed.")
    },
    ["Hinami's Umbrella"] = {
    desc =
        "It was raining the day her mother was viciously taken from her." ..
        list(b("Increases") .. " the amount of time added to the " .. i("Countdown") .. " for each perfectly timed " .. i("Grab-Attack") .. " by " .. clror("#effect") .. dot)
    },
    ["Iridescent Eye Patch"] = {
    desc =
        "An innocent way to hide his true nature from the world." .. nlp ..
        "Unlocks potential in the " .. clror("third consecutive") .. space .. i("Kagune Leap") .. " while in " .. i("Enraged Mode") .. colon ..
        list("If used to vault a dropped " .. iconLink(ils.pallet) .. ", it instantly breaks.")
    },
    ["Kaneki's Satchel"] = {
    desc =
        "Essential gear for any student trying to keep up with their studies." ..
        list(b("Increases") .. " the Movement speed of the " .. clror("third consecutive") .. space .. i("Kagune Leap") .. " by " .. clro("#effect") .. dot)
    },
    ["Kaneki's Wallet"] = {
    desc =
        "Lost to a strange boy who happened to bump into him on the street." ..
        list(b("Extends") .. " the window of opportunity to perform consecutive " .. i("Kagune Leaps") .. " by " .. clror("#effect") .. dot)
    },
    ["Mado's Glove"] = {
    desc =
        "A glove worn by a ghoul investigator." .. nlp ..
        "Survivors affected by the " .. i("Kagune Mark") .. " experience the following effect after it is removed:" ..
        list("Causes them to suffer from the " .. effects("addon", "Mado's Glove", ils.exhausted) .. " for " .. clror("#exhausted") .. dot)
    },
    ["Red Spider Lily"] = {
    desc =
        "The white flowers turned red as blood." .. nlp ..
        "Survivors hit with a " .. i("Basic Attack") .. " while in " .. i("Enraged Mode") .. " inflicts the following effect:" ..
        list("Causes them to suffer from the " .. effects("addon", "Red Spider Lily", ils.haemorrhage) .. " for " .. clror("#haemorrhage") .. dot)
    },
    ["Red-Headed Centipede"] = {
    desc =
        "The thing caused him immeasurable torment." .. nlp ..
        "Performing a " .. i("Vault") .. " action while in " .. i("Enraged Mode") .. " triggers the following effect:" ..
        list(b("Blocks") .. " that " .. iconLink(ils.window) .. " to all Survivors for " .. clror("#effect") .. dot)
    },
    ["Rize's Glasses"] = {
    desc =
        "They made her look innocent enough, which was exactly what she wanted." .. nlp ..
        "Upon entering " .. i("Enraged Mode") .. ", you benefit from the following effect:" ..
        list("The " .. iconLink(ils.auras) .. " of healthy Survivors currently repairing a " .. iconLink(ils.generator) .. " are revealed to you for " .. clror("#effect") .. dot)
    },
    ["Taiyaki"] = {
    desc =
        "Ghouls can never eat human food, but they can find ways to pretend." ..
        list(b("Extends") .. " the " .. i("Countdown") .. " by " .. clror("#effect") .. dot)
    },
    ["The Black Goat's Egg"] = {
    desc =
        "The book he used to bond with a woman of consequence." ..
        list("Succeeding the " .. i("Quick Time Event") .. " during a " .. i("Grab-Attack") .. " grants " .. clror("#effect") .. " bonus Bloodpoints.")
    },
    ["Torture Apparatus"] = {
    desc =
        "A cutting tool used every time his extremities grew back." .. nlp ..
        "Whenever " .. i("Enraged Mode") .. " ends, you benefit from the following effect:" ..
        list("Grants a " .. clror("#haste") .. space .. effects("addon", "Torture Apparatus", ils.haste) .. " for " .. clro("#durationHaste") .. dot)
    },
    ["Yamori's Mask"] = {
    desc =
    	"Worn by a ghoul from the 13th district whose hobby was torture." .. nlp ..
        "Hooking a Survivor while in " .. i("Enraged Mode") .. " triggers the following effect:" ..
        list("Causes all Survivors further than " ..clror("40 metres").. " to scream and reveal their location to you for " .. clro("#effect") .. dot)
    },
    
    -----------------------
    --- THE ANIMATRONIC ---
    -----------------------
   
    ["Access Panel"] = {
    desc =
        quote("Gaining control over the security doors is key to getting the job done.") .. nlp ..
        "Unlocks a special ability for the " .. i("Fire Axe") .. colon ..
        list("The " .. i("Fire Axe") .. " can travel through " .. b("Security Doors") .. " and will exit straight through the connected " .. b("Security Door") .. dot) ..
        "While aiming the " .. i("Fire Axe") .. ", you benefit from the following effect:" ..
        list("Survivors within " .. clror("#range") .. " of any " .. b("Security Door") .. " trigger " .. i(link("Killer Instinct")) .. dot)
    },
    ["Bonnie's Guitar Strings"] = {
    desc =
        quote("Worn strings that are off-tune and liable to snap.") .. nlp ..
        "Unlocks potential in your Aura-reading ability while moving between " .. b("Security Doors") .. colon ..
        list("The intensity of the " .. iconLink(ils.generator) .. space .. iconLink(ils.auras) .. " reveals their current Repair progress.") ..
        "Upon exiting a " .. b("Security Door") .. " after teleporting to it, the following effect applies:" ..
        list(
        	b("Reduces") .. " the duration of the " .. effects("addon", "Bonnie's Guitar Strings", ils.undetectable) .. " by " .. clror("#effect") .. " to " .. clro("#undetectable") .. dot,
        	nbullet .. "This causes the " .. b("Status Effect") .. " to be removed instantly.")
    },
    ["Celebrate! Poster"] = {
    desc =
        quote("The celebration lasts all night long, or until no one is left.") .. nlp ..
        "After embedding the " .. i("Fire Axe") .. " in a Survivor, all Players benefit from the following effects while within " .. clror("#range") .. " of that Survivor:" ..
        list(
        	"Grants a " .. clro("#haste") .. space .. effects("addon", "Celebrate! Poster", ils.haste) .. dot,
        	b("Increases") .. " the Vaulting speed by " .. clro("#effect") .. dot) ..
        "Both effects last until the " .. i("Fire Axe") .. " is removed."
    },
    ["Chica's Bib"] = {
    desc =
        quote("A good way to keep Mr Cupcake from making a mess.") .. nlp ..
        "While inside the " .. i("Area of Effect") .. " of the " .. i("Fire Axe") .. ", Survivors suffer from the following effect:" ..
        list(
        	"Inflicts the " .. effects("addon", "Chica's Bib", ils.exhausted) .. dot,
        	nbullet .. "This effect lingers for " .. clror("#linger") .. " after leaving the " .. i("Area of Effect") .. dot)
    },
    ["Endo CPU"] = {
    desc =
        quote("Greater computing power, for greater efficacy.") .. nlp ..
        "While inside the " .. i("Area of Effect") .. " of the embedded " .. i("Fire Axe") .. ", you benefit from the following effect:" ..
        list(
        	b("Increases") .. " the Action speeds for Breaking and Damaging by " .. clror("#effect") .. dot,
        	nbullet .. "This effect lingers for " .. clro("#linger") .. " after leaving the " .. i("Area of Effect") .. dot)
    },
    ["Faz-Coin"] = {
    desc =
        quote("Collecting these tokens comes with a price.") .. nlp ..
        "Upon throwing the " .. i("Fire Axe") .. ", the following effects are applied:" ..
        list(
        	"Causes the " .. i("Fire Axe") .. " to emit a copy of your " .. iconLink(ils.terrorRadius) .. " until it is retrieved.",
        	nbullet .. "This " .. i("Terror Radius") .. " is set to " .. clror("#radius") .. dot,
        	"Grants the " .. effects("addon", "Faz-Coin", ils.undetectable) .. " for " .. clro("#undetectable") .. dot)
    },
    ["Foxy's Hook"] = {
    desc =
        quote("A pirate's hook that seems more menacing than playful.") .. nlp ..
        "While inside the " .. i("Area of Effect") .. " of the " .. i("Fire Axe") .. ", Players benefit from the following effect:" ..
        list(
        	"Grants a " .. clror("#haste") .. space .. effects("addon", "Foxy's Hook", ils.haste) .. dot,
        	nbullet .. "This effect lingers for " .. clro("#linger") .. " after leaving the " .. i("Area of Effect") .. dot)
    },
    ["Freddy's Hat"] = {
    desc =
        quote("Gabriel trusted the wrong grown-up." .. br .. "Now he is the star of the show.") .. nlp ..
        "Modifies the trajectory of the " .. i("Fire Axe") .. colon ..
        list(b("Increases") .. " the weight of the " .. i("Fire Axe") .. " by " .. clror("#effect") .. dot)
    },
    ["Greasy Paper Plate"] = {
    desc =
        quote("It sticks to everything it touches." .. br .. "No amount of soap can wash it off.") .. nlp ..
        "While removing the " .. i("Fire Axe") .. " embedded in them, the Survivor suffers from the following effect:" ..
        list(b("Increases") .. " the Removal time by " .. clror("#effect") .. dot)
    },
    ["Help Wanted Ad"] = {
    desc =
        quote("We all need a little help sometimes...") .. nlp ..
        "While winding up an axe throw, you benefit from the following effect:" ..
        list("Shows the starting trajectory of the " .. i("Fire Axe") .. dot)
    },
    ["Iridescent Remnant"] = {
    desc =
        quote("Molten metal — in the right hands, it is the key to immortality.") .. nlp ..
        "Upon travelling to a " .. b("Security Door") .. ", the following effect is applied to it:" ..
        list(b("Blocks") .. " all upright " .. iconLink(ils.pallets) .. " within " .. clror("#blockRange") .. " of that " .. b("Security Door") .. " for " .. clro("#blockDuration") .. dot)
    },
    ["Loot Bag"] = {
    desc =
        quote("Open the bag, and see what goodies are inside.") .. nlp ..
        "While a Survivor has the " .. i("Fire Axe") .. " embedded in them, they suffer from the following effect:" ..
        list(b("Blocks") .. " the " .. iconLink(ils.exitGates) .. " for that Survivor and also for all other Survivors within " .. clror("#range") .. " of them.")
    },
    ["Office Phone"] = {
    desc =
        quote("He tried to leave messages as a warning." .. br .. "He did not last long, either.") .. nlp ..
        "While within " .. clror("#range") .. " of the Survivor embedded with the " .. i("Fire Axe") .. ", the following primary effects are applied to other Survivors:" .. nlp ..
        list(
        b("Decreases") .. " the time required to remove the " .. i("Fire Axe") .. " from another Survivor by " .. clror("-50 %") .. dot,
        b("Reveals") .. " the " .. iconLink(ils.aura) .. " of the " .. i("Fire Axe") .. dot,
        "Inflicts the " .. effects("addon", "Office Phone", ils.oblivious) .. dot) .. nlp ..
        "Additionally, if they are in the " .. iconLink(ils.injuredState) .. ", they also suffer from the secondary effect:" .. nlp ..
        list("Inflicts the " .. effects("addon", "Office Phone", ils.broken) .. dot)
    },
    ["Party Hat"] = {
    desc =
        quote("The party never ends, no matter how much they beg.") .. nlp ..
        "While the " .. i("Fire Axe") .. " is embedded in the environment, the following effects apply:" ..
        list(
        	b("Increases") .. " the maximum size of the " .. i("Area of Effect") .. " by " .. clror("#AOE_bonusSize") .. dot,
        	b("Increases") .. " the expansion time of the " .. i("Area of Effect") .. " by " .. clro("#AOE_bonusDuration") .. dot,
        	b("Reduces") .. " the duration of the " .. i("Area of Effect") .. " by " .. clro("#AOE_duration") .. dot)
    },
    ["Purple Guy Drawing"] = {
    desc =
        quote("He only takes 10 seconds to draw!") .. nlp ..
        "While a Survivor has the " .. i("Fire Axe") .. " embedded in them, whenever they perform a " .. i("Rushed") .. " action of any kind, #name triggers its primary effect:" ..
        list("Their " .. iconLink(ils.aura) .. " is revealed to you for " .. clror("#aura(1)") .. dot) ..
        "After removing the " .. i("Fire Axe") .. " by themselves, #name triggers its secondary effect:" ..
        list("Their Aura is revealed to you for " .. clro("#aura(2)") .. dot)
    },
    ["Restaurant Menu"] = {
    desc =
        quote("The lamination is peeling and crusty." .. br .. "How appetising.") .. nlp ..
        "While retrieving the " .. i("Fire Axe") .. " whenever it is embedded in the environment, you benefit from the following effect:" ..
        list(b("Reduces") .. " the minimum Retrieval time by " .. clror("#effect") .. dot)
    },
    ["Ripped Curtain"] = {
    desc =
        quote("Taken from Pirates Cove, caught on the animatronic that lived there.") .. nlp ..
        "Survivors hit with the " .. i("Fire Axe") .. " suffer from the following effects:" ..
        list("Inflicts the " .. effects("addon", "Ripped Curtain", ils.haemorrhage, ils.mangled) .. " for " .. clror("#duration") .. dot)
    },
    ["Rotten Pizza"] = {
    desc =
        quote("Food poisoning is no laughing matter.") .. nlp ..
        "You benefit from the following effect:" ..
        list(b("Increases") .. " the duration of " .. i(link("Killer Instinct")) .. " from the " .. i("Fire Axe") .. " by " .. clror("#effect") .. dot)
    },
    ["Security Guard's Badge"] = {
    desc =
        quote("The badge comes with certain privileges for whoever carries it.") .. nlp ..
        "Upon exiting a " .. b("Security Door") .. " after teleporting to it, the following effect applies:" ..
        list(b("Extends") .. " the duration of the " .. effects("addon", "Security Guard's Badge", ils.undetectable) .. " by " .. clror("#effect") .. " to " .. clro("#undetectable") .. dot)
    },
    ["Streamers"] = {
    desc =
        quote("Employees would throw them over the rafters for a quick decoration.") .. nlp ..
        "While travelling through the " .. b("Security Doors") .. ", you benefit from the following effect:" ..
        list(b("Increases") .. " your Movement Speed by " .. clror("#effect") .. dot)
    },

    ------------------
    --- THE KRASUE ---
    ------------------
   
    ["Broken Tiara"] = {
    desc =
    	quote("A dazzling stage prop worn by a Pharoah's daughter, as distracting as it is fake.") .. nlp ..
    	"Modifies the " .. iconLink(ils.glowingFungus) .. " with the following effect:" ..
        list("Causes Survivors to suffer from the " .. effects("addon", "Broken Tiara", ils.oblivious) .. " while under its effects.")
    },
    ["Chicken Head"] = {
    desc =
        quote("Believed by some to have mystical properties, this particular sample was lodged in " .. b("The Krasue's") .. " throat after a feed.") .. nlp ..
        "Modifies " .. i("Unbodied Flesh") .. " with the following effects:" ..
        list(
        	"All Survivors are afflicted with " .. biclr("bronze", "Leeched I") .. " at the start of the Trial.",
        	b("Increases") .. " the initial count of " .. iconLink(ils.glowingFungus) .. " by " .. clror("#effect") .. dot)
    },
    ["Chunk of Malai"] = {
    desc =
        quote("A varied source of protein contributes to good gut health.") .. nlp ..
        "Modifies the " .. iconLink(ils.glowingFungus) .. " with the following effect:" ..
        list("Incurs a stack-able " .. clror("#effect(1)") .. " Efficiency penalty per " .. biclr("bronze", "Leeched Survivor") .. " to its Depletion rate of the " .. biclr("bronze", "Leech Meter") .. ", up to a maximum of " .. clro("#effect(2)") .. dot)
    },
    ["Crumpled Sheet Music"] = {
    desc =
        quote("Before her desperation, she hoped that continued practice would be enough to succeed.") .. nlp ..
        "Successfully hitting a Survivor with a " .. b("Leeching Gland") .. " triggers the following effect:" .. 
        list("Causes " .. i("Headlong Flight") .. " to instantly gain " .. clror("#effect") .. dot)
    },
    ["Defective Metronome"] = {
    desc =
        quote("The metronome sparks as it plays at a frenetic pace.") .. nlp ..
        "Modifies the " .. iconLink(ils.glowingFungus) .. " with the following effect:" ..
        list("Causes Survivors to suffer from the " .. effects("addon", "Defective Metronome", ils.exhausted) .. " while under its effects.")
    },
    ["Dulled Knife"] = {
    desc =
        quote("A stage prop, symbolic of a woman's gambit in an attempt to save her lover on death's row.") .. nlp ..
        "Modifies " .. i("Headlong Flight") .. " with the following effect:" ..
        list(b("Reduces") .. " its Consumption rate by " .. clror("#effect") .. dot) ..
        "Modifies the " .. iconLink(ils.glowingFungus) .. " with the following effects:" ..
        list(
        	"Causes Survivors eating it to benefit from the following additional effects for " .. clro("#duration") .. colon,
        	nbullet .. "Grants a " .. clro("#haste") .. space .. effects("addon", "Dulled Knife", ils.haste) .. " and the " .. effects("addon", "Dulled Knife", ils.elusive) .. dot)
    },
    ["First Libretto"] = {
    desc =
        quote("She felt as if she could walk on air after landing a role in her first opera.") .. nlp ..
        "Whenever you hook a Survivor afflicted with " .. biclr("bronze", "Leeched") .. ", you benefit from the following effect:" ..
        list(b("Reduces") .. " the Consumption rate of " .. i("Headlong Flight") .. " by " .. clror("#effect") .. " for " .. clro("#duration") .. dot)
    },
    ["Framed Newspaper"] = {
    desc =
        quote("She had once made it onto the entertainment section of the city's newspaper, but she wanted more.") .. nlp ..
        "Modifies " .. i("Headlong Flight") .. " with the following effects:" ..
        list(
        	b("Increases") .. " its Charge capacity by " .. clror("#capacity") .. dot,
        	b("Increases") .. " its Recharge rate by " .. clro("#charge") .. dot,
        	b("Raises") .. " its Activation threshold to " .. clro("#threshold") .. dot)
    },
    ["Janjira's Hand"] = {
    desc =
        quote("One of the few distinguishable parts that remained of her friend.") .. nlp ..
        "Whenever a " .. iconLink(ils.generator) .. " is completed, #name triggers its primary effects:" ..
        list(
        	"Causes " .. i("Headlong Flight") .. " to instantly gain " .. clror("#bonus") .. dot,
        	b("Increases") .. " its Recharge rate by " .. clro("#effect") .. " for " .. clro("#duration") .. dot) ..
        "Once the last " .. b("Generator") .. " is completed, #name triggers its secondary effects:" ..
        list(
        	"Instantly recharges " .. i("Headlong Flight") .. dot,
        	b("Increases") .. " its Recharge rate by " .. clro("#effect") .. " for the remainder of the Trial.")    
    },
    ["Lorenza's Remains"] = {
    desc =
        quote("Even her pet bird would fall victim to " .. b("The Krasue's") .. " thirst for blood.") .. nlp ..
        "Survivors afflicted with " .. biclr("bronze", "Leeched") .. " also suffer from the following effects:" ..
        list(
        	bclr("faded jade", "Tier I") .. colon .. space .. effects("addon", "Lorenza's Remains", ils.blindness) .. dot,
        	bclr("faded jade", "Tier II") .. colon .. space .. clror("#hindered") .. space .. effects("addon", "Lorenza's Remains", ils.hindered) .. dot)
    },
    ["Luckless Mouse"] = {
    desc =
        quote("A game of cat and mouse always gets the blood pumping.") .. nlp ..
        "Modifies " .. i("Headlong Flight") .. " with the following effect:"..
        list(b("Increases") .. " its Charge capacity by " .. clror("#effect") .. dot)
    },
    ["Mysterious Elixir"] = {
    desc =
        quote("A liquid moulded from The Fog itself." .. br .. "Though similar to the concotion she drank, there seem to be slight alterations.") .. nlp ..
        "Modifies " .. i("Regurgitate") .. " with the following effect:" ..
        list(
        	"Hitting " .. iconLink(ils.windows) .. " with a " .. b("Leeching Gland") .. " causes them to become " .. i("Marked") .. dot,
        	nbullet .. "This effect can affect multiple objects at a time.") ..
        "Vaulting a " .. i("Marked Window") .. " by any means triggers the following effect:" ..
        list(b("Blocks") .. " it for " .. clror("#duration") .. " and removes its " .. i("Mark") .. dot)
    },
    ["Pig's Eye"] = {
    desc =
        quote("It still glistens with saliva.") .. nlp ..
        "Modifies the " .. iconLink(ils.glowingFungus) .. " with the following effect:" ..
        list("Survivors eating it while at least " .. clror("#distance") .. " from your current location have their " .. iconLink(ils.auras) .. " revealed to you for " .. clro("#duration") .. dot)
    },
    ["Queen's Sceptre"] = {
    desc =
        quote("The stage prop of a vengeful queen who demands blood.") .. nlp ..
        "Successfully hitting a Survivor with an " .. i("Intestinal Whip") .. " attack triggers the following effect:" .. 
        list("Causes a " .. b("Leeching Gland") .. " to spatter from their location.")
    },
    ["Rotten Swine"] = {
    desc =
        quote("A revolting meal that left her disgusted when she awoke.") .. nlp ..
        "Modifies " .. i("Regurgitate") .. " with the following effect:" ..
        list(
        	"Hitting " .. iconLink(ils.breakableWalls) .. comma .. iconLink(ils.generators) .. ", or " .. iconLink(ils.pallets) .. " with a " .. b("Leeching Gland") .. " causes them to become " .. i("Marked") .. dot,
        	nbullet .. "This effect can only affect a single object at a time.") ..
        "While interacting with the " .. i("Marked Prop") .. ", you benefit from the following effect:" ..
        list(b("Increases") .. " the Action speed for Breaking and Damaging by " .. clror("#effect") .. dot)
    },
    ["Spattered Handkerchief"] = {
    desc =
        quote("A sign that something was very wrong presented itself, but she chose to ignore it.") .. nlp ..
        "Once the " .. iconLink(ils.exitGates) .. " are powered, #name triggers the following effects:" ..
        list(
        	"Causes all remaining Survivors to suffer from " .. biclr("bronze", "Leeched I") .. dot,
        	"Causes all remaining " .. b("Glowing Fungi") .. " to start decaying.",
        	"Activating " .. i("Corporeal Weave") .. " no longer spawns a new " .. iconLink(ils.glowingFungus) .. dot)
    },
    ["Shredded Gown"] = {
    desc =
        quote("She tore at her clothes and into her flesh as her body burned.") .. nlp ..
        "Unlocks potential in your Aura-reading ability while using " .. i("Corporeal Weave") .. colon ..
        list("The " .. iconLink(ils.auras) .. " of all Survivors who are either within " .. clror("#aura(1)") .. " of a " .. iconLink(ils.glowingFungus) .. " or holding one are revealed to you for " .. clro("#aura(2)") .. dot)
    },
    ["Sticky Lozenge"] = {
    desc =
        quote("A simple tablet to moisten a dry throat, often taken before an audition.") .. nlp ..
        "Modifies " .. i("Regurgitate") .. " with the following effect:" ..
        list("Displays a preview of the impact zone while charging it.")
    },
    ["Theatre Binoculars"] = {
    desc =
        quote("A pair of glasses that have watched many tragedies.") .. nlp ..
        "Successfully hitting a Survivor not currently afflicted with " .. biclr("bronze", "Leeched") .. " with an " .. i("Intestinal Whip") .. " attack triggers the following effect:" .. 
        list("The " .. iconLink(ils.auras) .. " of all other Survivors within " .. clror("#aura(1)") .. " are revealed to you for " .. clro("#aura(2)") .. dot)
    },
    ["Wriggling Parasite"] = {
    desc =
        quote("A fragile organism that has an unusual effect on its host.") .. nlp ..
        "Modifies the " .. biclr("bronze", "Leech Meter") .. " with the following effects:" ..
        list(b("Increases") .. " its Charge rate by " .. clror("#effect") .. dot)
    },


    ------------------
    --- THE FIRST ---
    ------------------
   
      
    ["Bead Maze"] = {
    desc =
    	quote("A developmental toy used to enrich the minds of captive children.") .. nlp ..
    	"Modifies " .. i("Worldbreaker") .. " with the following effect:" ..
        list("The second phase of the Worldbreaker Timer is " .. b("increased") .. " by " .. clror("#timer") .. " for each living Survivor.")
    },
    ["Black Widow Spider"] = {
    desc =
    	quote("A terrifying spider that is no longer a mere hallucination.") .. nlp ..
    	"Unlocks potential in your Aura-reading ability while using " .. i("The Upside Down") .. " in " .. i("Worldbreaker Mode") .. colon ..
        list("The " .. iconLink(ils.aura) .. " of the furthest survivor more than " .. clror("#aura(1)") .. " is revealed to you for " .. clro("#aura(2)") .. dot)
    },
    ["Bloody Roller Skate"] = {
    desc =
    	quote("A memento of the fury that Eleven was capable of.") .. nlp ..
    	"Modifies the " .. i("Undergate Attack") .. " with the following effect:" ..
        list("Grants the " .. clror("#effect") .. space .. effects("addon", "Bloody Roller Skate", ils.haste) .. " for " .. clror("#duration") .. dot)
    },
    ["Broken Skateboard"] = {
    desc =
    	quote("A cool way to get around, smashed by a furious brother as a means of control.") .. nlp ..
    	"Modifies " .. i("Worldbreaker") .. " with the following effect:" .. br ..
    	"When " .. i("Worldbreaker Mode") .. " activates, the following effects trigger for " .. clror("#duration") ..
        list(("Increases") .. " vaulting speed by " .. clror("#effect") .. dot,
        iconLink(ils.pallet) .. " and " .. iconLink(ils.window) ..  " auras are revealed within " .. clro("#auraRange"))
    },
    ["Chess Piece"] = {
    desc =
    	quote("One of the few forms of entertainment while in the facility, it helped the students learn logic and tactics.") .. nlp ..
    	"Modifies the " .. i("Vine Attack") .. " with the following effect:" ..
        list("Gains two charges, and has it's attack radius reduced by " .. clror("#radius")) .. nlp
    },
    ["Clock Hands"] = {
    desc =
    	quote("Hands of the Creel family's grandfather clock, corrupted by Henry's dark power.") .. nlp ..
    	"Modifies the " .. i("Grandfather Clocks") .. " with the following effect:" ..
        list("Causes Survivors to gain the " .. effects("addon", "Clock Hands", ils.oblivious) .. " while interacting with the " .. i("Grandfather Clocks") .. " and for " .. clror("#duration") .. " after.")
    },
    ["Electrode Cap"] = {
    desc =
    	quote("Used to measure the brain's activity. In the lab, nothing goes unnoticed.") .. nlp ..
    	"Modifies " .. i("Worldbreaker") .. " with the following effect:" ..
        list("At the start of the second phase, Survivors more than " .. clror("#aura(1)") .. " away have their " .. iconLink(ils.auras) .. " revealed to you for " .. clro("#aura(2)") .. dot)
    },
    ["Electroshock Collar"] = {
    desc =
    	quote("A cruelly efficient way of training and punishing the facility's prisoners.") .. nlp ..
    	"Modifies " ..  i("The Upside Down") .. " with the following effect: " ..
    	list("When exiting, all Vault locations within " .. clror("#distance") .. " are blocked for " .. clro("#duration") .. dot)
    },
    ["Forged Death Certificate"] = {
    desc =
    	quote("A piece of paper used to prove the death of a powerful person who was very much alive.") .. nlp ..
    	"Modifies " .. i("Vine Attack") .. " with the following effect:" ..
        list("Applying a " .. i("Worldbreaker Token") .. " on any Survivor afflicts the Killer with " .. states(ils.undetectable) .. " until the next " .. i("Worldbreaker Mode") .. " activation.")
    },
    ["Gutted Supercom"] = {
    desc =
    	quote("A broken communication device that now crackles to life at the most terrifying times.") .. nlp ..
    	"Unlocks potential in your Aura-reading ability while using " .. i("Vine Attack") .. colon ..
        list("While not in " .. i("Worldbreaker Mode") .. " hitting a Survivor with a " .. i("Vine Attack") .. " reveals their " .. iconLink(ils.aura) .. " to you for " .. clror("#duration") .. dot)
    },
    ["Iridescent Soteria Chip"] = {
    desc =
    	quote("A chip that once limited his powers is now a source of even greater power.") .. nlp ..
    	"Modifies " .. i("Worldbreaker") .. " with the following effect:" ..
        list("Upon activation, grants the " .. effects("addon", "Iridescent Soteria Chip", ils.undetectable) .. " and the " .. iconLink(ils.auras) .. " of Survivors with at least one " .. i("Worldbreaker Token") .. " are revealed to you when they are within " .. clror("#distance") .. dot .. " This lasts until you perform a " .. i("Vine Attack") .. comma .. " enter " .. i("The Upside Down") .. comma .. " or when " .. i("Worldbreaker") .. " ends.")
    },
    ["Mid-Century Radio"] = {
    desc =
    	quote("It sat silent in the Creel's dining room until the slaughter was about to begin.") .. nlp ..
    	"Unlocks potential in your Aura-reading ability while using " .. i("Worldbreaker") .. colon ..
        list("Survivors more than " .. clror("#distance") .. " away have their " .. iconLink(ils.auras) .. " revealed while interacting with " .. i("Grandfather Clocks") .. dot)
    },
    ["Neck Tendril"] = {
    desc =
    	quote("He was furious when the tendril was torn from his neck as Max escaped his mind realm.") .. nlp ..
    	"Modifies " .. i("Vine Attack") .. " with the following effect:" ..
        list("While in " .. i("Worldbreaker Mode") .. comma .. " Survivors hit by " .. i("Vine Attack") .. " gain the " .. effects("addon", "Neck Tendril", ils.haemorrhage, ils.mangled) .. " for " .. clror("#duration") .. dot)
    },
    ["Orderly ID"] = {
    desc =
    	quote("Bears the face of Henry Creel as he appeared before he was changed by another dimension.") .. nlp ..
    	"Modifies " .. i("Vine Attack") .. " with the following effect:" ..
        list("While not in " .. i("Worldbreaker Mode") .. comma .. " the aiming range is " .. b("increased") .. " by " .. clror("#distance") .. dot)
    },
    ["Pizza Goggles"] = {
    desc =
    	quote("Used while Eleven entered sensory deprivation, they rid the user of distractions and focus the mind.") .. nlp ..
    	"Modifies " .. i("The Upside Down") .. " with the following effect:" ..
        list("Cooldown is reduced by " .. clror("#effect(2)") .. dot) ..
        "Modifies " .. i("Undergate Attack") .. " with the following effects:" ..
        list("Attack radius is decreased by " .. clro("#effect(1)") .. dot,
        	"Attack cool-down is reduced by " .. clro("#cooldownReduction"))
    },
    ["Rabbit Remains"] = {
    desc =
    	quote("Before massacring his family, Henry started small, killing rabbits and leaving their corpses strewn about town.") .. nlp ..
    	"Modifies " .. i("Undergate Attack") .. " with the following effect:" ..
        list("Survivors standing in or entering the area of effect gain the " .. effects("addon", "Rabbit Remains", ils.exhausted) .. " and for " .. clror("#duration") .. " after" .. dot) ..
        "Modifies " .. i("The Upside Down") .. " with the following effect:" ..
        list("Increases cool-down by " .. clro("#cooldownIncrease") .. dot)
    },
    ["Shattered Wrist Rocket"] = {
    desc =
    	quote("A once-powerful slingshot, now laid to ruin.") .. nlp ..
    	"Modifies " .. i("Undergate Attack") .. " with the following effect:" ..
        list("The explosion from the " .. i("Undergate Attack") .. " breaks " .. iconLink(ils.pallets) .. " instantly and damages " .. iconLink(ils.generators) .. dot)
    },
    ["Smashed Cassette Deck"] = {
    desc =
    	quote("They once used music to escape Henry's grasp. Without it, they do not stand a chance.") .. nlp ..
    	list(
    		"At the start of the match, all Survivors scream.",
    	    "All Survivors start with one " .. i("Worldbreaker token") .. dot .. " When " .. i("Worldbreaker") .. " is activated for the first time, all Survivors lose their " .. i("Worldbreaker token") .. dot .. " 1 less " .. i("Grandfather Clock") .. " appears on the map.")
    },
    ["Stained Glass Mural"] = {
    desc =
    	quote("A design once found on the Creel family door. Now it darkens the door of another dimension.") .. nlp ..
    	"Modifies " ..  i("The Upside Down") .. " with the following effect: " ..
        list("While on cooldown, breaking " .. iconLink(ils.pallets) .. " and " .. iconLink("Breakable Walls") .. i("decreases") .. " that cooldown by " .. clror("#duration") .. dot)
    },
    ["Victor's Razor Blade"] = {
    desc =
    	quote("In his own grief, Henry's father used a hidden blade to take out his own eyes.") .. nlp ..
    	"Modifies " .. i("Worldbreaker") .. " with the following effect:" ..
        list("Upon ending, injured Survivors gain the " .. effects("addon", "Victor's Razor Blade", ils.broken) .. " for " .. clror("#duration") .. dot)
    },
    
    -------------------------
    --- K43 - The Slasher ---
    -------------------------
    ["Garden Claw"] = {
    desc =
    	quote("Good for digging up weeds and digging into human flesh.") .. nlp ..
        list("Increases the duration of " .. i("Killer Instinct") ..  " after a " .. b("Jump Scare") .. " by " .. clror("#effect") .. dot)
    },
    ["Bent Wheel"] = {
    desc =
    	quote("All that remained of the victim's wheelchair after the fatal blow.") .. nlp ..
        list("Increases the " .. b("Jump Scare") .. " targetting range by " .. clror("#effect") .. dot)
    },
    ["Knitting Needle"] = {
    desc =
    	quote("You won't believe what—and who—this thing has been through.") .. nlp ..
        list("Increases the time it takes for Survivors to remove an impaled " .. b("Hook Spike") .. " from themselves by " .. clror("#effect") .. dot)
    },
    ["Orderly's Shoe"] = {
    desc =
    	quote("It hung from her twitching foot as the knife plunged into her belly.") .. nlp ..
        list("Increases the duration of the " .. iconLink(ils.haste) .. space .. b("Status Effect") .. " after a " .. b("Jump Scare") .. " by " .. clror("#effect") .. dot)
    },
    ["Sleeping Bag"] = {
    desc =
    	quote("An absolutely awful place to hide from a killer.") .. nlp ..
        list("After grabbing a " .. b("Hook Spike") .. " while in " .. b("Omnipresent Evil") .. ", Survivors who are within " .. clror("#range") .. " of any " .. iconLink(ils.hook) .. " have their location revealed for " .. clro("5 seconds") .. dot)
    },
    ["Bloody Smile"] = {
    desc =
    	quote("He wasn't happy after his face was smashed into a tree.") .. nlp ..
        list("Increase the detection ranges of " .. b("Jump Scare") .. " and " .. b("Omnipresent Evil") .. " by " .. clror("#effect") .. dot)
    },
    ["Toxic Waste"] = {
    desc =
    	quote("No one could survive being submerged in this poison.") .. nlp ..
        list("After performing a " .. b("Jump Scare") .. ", Survivors within  " .. clror("#range") .. " of a " .. iconLink(ils.hook) .. " or a " .. b("Scrap Pile") .. " are inflicted with " .. effects("addon", "Toxic Waste", ils.oblivious) .. " for " .. clro("#oblivious") .. dot)
    },
    ["Party Noisemaker"] = {
    desc =
    	quote("A party instument that tore through a woman's eyeball and gouged her brain.") .. nlp ..
        list("Breaking a " .. iconLink(ils.pallet) .. " or a " .. iconLink(ils.breakableWall) .. " with " .. b("Jump Scare") .. " reveals all Survivors further than " .. clror("#range")  .. " for " .. clro("#duration") .. dot)
    },
    ["Coroner's Coffee"] = {
    desc =
    	quote("A cup of coffee that went unfinished.") .. nlp ..
        list("Increases the duration of " .. b("Throwing Spike") .. "'s push by " .. clror("#effect(1)") .. dot,
        	"Gain " .. clro("#effect(2)") .. space .. effects("addon", "Coroner's Coffee", ils.haste) .. " for " .. clro("#haste") .. " after injuring a Survivor with a " .. b("Throwing Spike") .. " if they do not collide with the environment during the push" .. dot)
    },
    ["Sauna Rock"] = {
    desc =
    	quote("Nicely weighted, could be used to crush a rib cage.") .. nlp ..
        list("After performing a " .. b("Jump Scare") .. ", inflict all detected Survivors with " .. effects("addon", "Sauna Rock", ils.exhausted) .. " for " .. clror("#exhausted") .. dot)
    },
    ["Mirror Shards (Omnipresent Evil)"] = {
    desc =
    	quote("A weapon that dealt more than bad luck.") .. nlp ..
        list("Survivors are inflicted with  " .. effects("addon", "Mirror Shards (Omnipresent Evil)", ils.broken) .. " after extracting a " .. b("Hook Spike") .. " from themselves for " .. clror("#broken") .. dot)
    },
    ["Imprinted Aluminum"] = {
    desc =
    	quote("It's either avant-garde artwork, or the horrified imprint of a woman whose face was slammed into it.") .. nlp ..
        list("Injuring a healthy Survivor with a " .. b("Throwing Spike") .. " inflicts them with " .. effects("addon", "Imprinted Aluminum", ils.mangled, ils.haemorrhage) .. " for " .. clror("#duration") .. dot)
    },
    ["Two Nails"] = {
    desc =
    	quote("A reliable way to hold a corpse's wrist in place.") .. nlp ..
        list("Survivors that come within " .. clror("#range") .. " of a " .. b("Throwing Spike") .. " have their aura revealed for " .. clro("#duration") .. dot)
    },
    ["Eye Goop"] = {
    desc =
    	quote("What remains when a harpoon is shoved into one's eye.") .. nlp ..
        list("Gain " .. effects("addon", "Eye Goop", ils.undetectable) .. " after grabbing a " .. b("Hook Spike") .. " for " .. clror("#undetectable") .. dot)
    },
    ["Bloody Magazine"] = {
    desc =
    	quote("The spattering of blood told the story of a brutal massacre.") .. nlp ..
        list("When a  " .. b("Hook Spike") .. " misses, all Survivor within " .. clror("#range") .. " of the " .. b("Hook Spike") .. "'s impact zone scream and reveal their auras for " .. clro("#duration") .. dot)
    },
    ["Burnt Fuse"] = {
    desc =
    	quote("The surge of electricity was overwhelming. It left the man's flesh charred and smelling of cooked meat.") .. nlp ..
        list("When a Survivor is impaled by a  " .. b("Hook Spike") .. ", the Exit Gates are blocked for them and any Survivor within " .. clror("#range") .. dot .. space .. "This effect persists for " .. clro("#duration") .. " after the Survivor is no longer impaled" .. dot)
    },
    ["Missing Corkscrew"] = {
    desc =
    	quote("It seems to always be missing when you need it on-hand.") .. nlp ..
        list("When a Survivor is impaled by a  " .. b("Hook Spike") .. ", they emit a  " .. clror("#range") .. space .. iconLink(ils.terrorRadius) .. " until the " .. b("Hook Spike") .. " is removed" .. dot,
        	"Gain " .. effects("addon", "Missing Corkscrew", ils.undetectable) .. " when impaling a Survivor with a " .. b("Hook Spike") .. dot .. space .. "This effect persists for " .. clro("#duration") .. " after the Surivvor is no longer impaled" .. dot)
    },
    ["Deputy's Badge"] = {
    desc =
    	quote("The badge of an officer who discovered that some things aren't worth investigating.") .. nlp ..
        list("While in " .. b("Omnipresent Evil") .. ", passing within " .. clror("#range") .. " of a " .. iconLink(ils.generator) .. " causes the " .. b("Generator") .. " to explode, lose " .. clro("#effect") .. " progress and begin regressing" .. dot,
        	nbullet .. "If a Survivor is repairing the " .. b("Generator") .. ", all Survivors repairing it will instead get a special " .. iconLink(ils.skillCheck) .. dot .. space .. br ..
        	"If the " .. b("Skill Check") .. " is failed, the " .. b("Generator") .. " loses " .. clro("-10 %") .. " additional progress on top of the base " .. b("Skill Check") .. " penalty" .. dot)
    },
    ["Dirty Money"] = {
    desc =
    	quote("No amount of money can save you from him.") .. nlp ..
        list("When a " .. iconLink(ils.generator) .. " is repaired, gain " .. clror("#tokensAdded") .. " tokens" .. dot,
        	nbullet .. "When you vault a " .. iconLink(ils.window) .. " or break a " .. iconLink(ils.pallet) .. " or a " .. iconLink(ils.breakableWall) .. ", consume " .. clro("1") .. " token and gain a regular " .. b("Spike") .. " if you don't have one already" .. dot)
    },
    ["Iridescent Boat Motor"] = {
    desc =
    	quote("The blades are chipped and cracked, as if having cut through something solid.") .. nlp ..
        list("Passing through " .. iconLink(ils.windows) .. " while in " .. b("Omnipresent Evil") .. " marks them for " .. clror("#duration") .. dot .. space .. "Performing a " .. b("Jump Scare") .. " blocks all marked " .. b("Windows") .. " for " .. clro("#markBlockDuration"))
    },
    ---------------------------
    --- K044 - The Judgment ---
    ---------------------------
    ["Searcher's Skull"] = {
    desc =
    	quote("The skulls of the heretics shall be cleaned and displayed as a warning to others who might stray from the light.", "(Witness to Koenrad, ch. 33)") .. nlp ..
        list("When a Survivor blinds you:",
        	nbullet .. "The Survivor gains " .. biclr("wiki gold", "Heresy") .. dot,
        	nbullet .. "If the Survivor is a " .. biclr("light blue", "Heretic") .. ", they become blinded themselves for " .. clror("#duration") .. dot)
    },
    ["Prayer Kneeler"] = {
    desc =
    	quote("Suffer the pain of prayer, for the suffering of unbelievers is far worse.", "(II On Heresy, ch. 8)") .. nlp ..
        list("While controlling an obstructed " .. b("Divine Light") .. ":",
        	nbullet .. "Decrease its maximum speed by " .. clror("#effect") .. dot)
    },
    ["Koenrad's Gauntlet"] = {
    desc =
    	quote("When darkness threatened to swallow his flock, he led them towards the light.", "(Witness to Koenrad, ch. 1)") .. nlp ..
        list("Increases the maximum control duration of " .. b("Divine Light") ..  " by " .. clror("#maxTime") .. dot,
        	"Decreases the maximum speed of controlled " .. b("Divine Light") .. " by " .. clro("#maxSpeed"))
    },
    ["Heretic's Mark"] = {
    desc =
    	quote("Those who stray from the path shall never escape ostracization once they received the mark.", "(III On Heresy, ch. 3)") .. nlp ..
        list("When a cast " .. b("Divine Light") ..  " passes a Survivor within " .. clror("#range") .. " without hitting them, they are revealed by " .. i("Killer Instinct") .. " for " .. clro("#duration") .. dot)
    },
    ["Undying Flame"] = {
    desc =
    	quote("The village of Dend was repentant in its last moments, but its remnants still burn to this day as a warning.", "(II Barbarians, ch. 4)") .. nlp ..
        list("While " .. biclr("blue", "Zealous") .. ":",
        	nbullet .. "Increase the duration of the cast " .. b("Divine Light") .. " by " .. clror("#effect") .. dot,
        	nbullet .. "Decrease the radius of " .. b("Divine Light") .. " by " .. clro("#range") .. dot,
        	nbullet .. "Increase Survivor " .. b("Divine Light") .. " aura reading range by " .. clro("#auraRange") .. dot)
    },
    ["Mark of the Adherent"] = {
    desc =
    	quote("Wear your faith proudly and permanently. Let it be a reminder to others that It is always present.", "(II On Heresy, ch. 1)") .. nlp ..
        list("While not " .. biclr("blue", "Zealous") .. ", " .. b("Divine Light") .. "'s radius is " .. clror("#effect") .. " larger" .. dot)
    },
    ["Magnetised Manacles"] = {
    desc =
    	quote("Those who do not go into hiding will be locked deep underground, far from the guiding light of the stars.", "(Visions of Gerhardt, ch. 6)") .. nlp ..
        list("Gain " .. clror("#tokens(1)") .. " when you send a Survivor with the lowest amount of Hook States to the " .. b("Exile") .. ", up to " .. clro("#tokens(2)") .. dot,
        	"For each token, increase the duration of " .. biclr("blue", "Zealous") .. " when activated by " .. clro("#effect"))
    },
    ["Confessor's War Horn"] = {
    desc =
    	quote("The sound of the horn shall strike fear into the hearts of unbelievers and muster the will of the faithful.", "(Witness to Koenrad, ch. 33)") .. nlp ..
        list("Survivors who gain " .. biclr("wiki gold", "Heresy") .. " are inflicted " .. effects("addon", "Confessor's War Horn", ils.exhausted) .. " for " .. clro("#exhausted") .. dot)
    },
    ["Aurora's Telereceptor"] = {
    desc =
    	quote("None should stare into the abyss with the wretched devices made by the heretics.", "(III On Heresy, ch. 12)") .. nlp ..
        list("Survivors who gain " .. biclr("wiki gold", "Heresy") .. " have their aura revealed for " .. clror("#auraDuration(1)") .. dot .. space .. "They also see your aura for " .. clro("#auraDuration(2)") .. dot,
        	biclr("light blue", "Heretics") .. " see your aura for " .. clro("#auraDuration(3)") .. " longer" .. dot)
    },
    ["Superheated Glass"] = {
    desc =
    	quote("The planet of Aleide was unrepentant; after their leader was Exiled, Its Divine Light turned the surface to glass.", "(II Barbarians, ch. 12)") .. nlp ..
        list("Decreases the duration of " .. biclr("blue", "Zealous") .. " by " .. clror("#effect") .. dot,
        	"While " .. biclr("blue", "Zealous") .. ", a cast " .. b("Divine Light") .. " breaks all " .. iconLink(ils.breakableWalls) .. " and " .. iconLink(ils.pallets) .. " it passes through" .. dot,
        	nbullet .. "Breaking an object this way causes Survivors within " .. clror("#range") .. " to scream and gain " .. biclr("wiki gold", "Heresy") .. dot)
    },
    ["Order of Inquisition"] = {
    desc =
    	quote("All those who believe in Its glory are deputized to search for heretics. Trust not even your own neighbor.", "(Witness to Koenrad, ch. 16)") .. nlp ..
        list("When " .. b("Divine Light") .. " is cast, its radius starts " .. clror("#range(1)") .. " smaller, but grows " .. clro("#range(2)") .. " larger over a period of " .. clro("#duration") .. dot)
    },
    ["Electric Torch"] = {
    desc =
    	quote("The faithful shall go out in great numbers at night, searching for the heretics who hide in the dark.", "(Witness to Koenrad, ch. 40)") .. nlp ..
        list("Increases the maximum speed of the controlled " .. b("Divine Light") .. " by " .. clro("#maxSpeed") .. dot,
        	"Increases movement speed while controlling " .. b("Divine Light") .. " by " .. clro("#effect") .. dot)
    },
    ["Holy Winged Icon"] = {
    desc =
    	quote("Clutch it to your chest and pray, lest your heart appear untrue to It.", "(II On Heresy, ch. 14)") .. nlp ..
        list("While casting " .. b("Divine Light") .. ", press the " .. loadoutStrings.secondaryPowerButton .. " to cast it back towards your location" .. dot,
        	"When cast this way:",
        	nbullet .. "Minimum delay before it deals damage and inflicts " .. biclr("wiki gold", "Heresy") .. " is set to " .. clror("#duration") .. dot,
        	nbullet .. "Increase its maximum speed by " .. clro("#effect") .. dot,
        	nbullet .. "It only damages " .. biclr("light blue", "Heretics"))
    },
    ["Blindfold of the Devoted"] = {
    desc =
    	quote("Those who follow Gerhardt's path shall wear blindfolds, to remember the sacrifice he made for his prophecy.", "(III On Heresy, ch. 61)") .. nlp ..
        list("Sending a Survivor to the " .. b("Exile") .. " with the lowest amount of Hook States reveals the auras of all other Survivors with the lowest amount of Hook States outside " .. clror("#aura(1)") .. " for " .. clro("#aura(2)") .. dot)
    },
    ["Improvised Detonators"] = {
    desc =
    	quote("Like cowards, they strike with bombs in the night, afraid to let the light of day illuminate their blackened souls.", "(Witness to Koenrad, ch. 35)") .. nlp ..
        list("If no Survivors are dead, sending a Survivor with the lowest amount of Hook States to the " .. b("Exile") .. " grants " .. clror("#tokens(1)") .. dot,
        	nbullet .. "Reaching " .. clro("#tokens(2)") .. " or more causes the " .. iconLink(ils.generator) .. " with the highest progress to explode, lose " .. clro("#effect") .. " progress and start regressing" .. dot)
    },
    ["Eyes of Gerhardt"] = {
    desc =
    	quote("He rapturously tore the eyes from his face after seeing such brilliant visions of the future.", "(II Barbarians, ch. 60)") .. nlp ..
        list("When a " .. biclr("light blue", "Heretic") .. " completes a " .. iconLink(ils.generator) .. ", opens an " .. iconLink(ils.exitGate) .. " or exits a " .. iconLink(ils.locker) ..  ", all " .. biclr("light blue", "Heretics") .. " have their aura revealed for " .. clror("#auraDuration") .. dot)
    },
    ["Crown of the Destroyer"] = {
    desc =
    	quote("The Creators saw this and bestowed upon It a crown and said, use this to bring light to the darkness.", "(I Barbarians, ch. 6)") .. nlp ..
        list("When a Survivor is rescued from the " .. b("Exile") .. ", for " .. clror("#duration") .. ":",
        	nbullet .. "Your " .. iconLink(ils.terrorRadius) .. " is reduced by " .. clro("#effect") .. dot,
        	nbullet .. "Your " .. i("Terror Radius") .. " is copied to all " .. b("Shrines of Judgment") .. dot,
        	nbullet .. "Grants the " .. effects("addon", "Crown of the Destroyer", ils.undetectable) .. dot)
    },
    ["Chains of the Heretic"] = {
    desc =
    	quote("Examples shall be made of the loudest apostates. They shall be dragged through the streets in chains.", "(Witness to Koenrad, ch. 41)") .. nlp ..
        list("While " .. biclr("blue", "Zealous") .. ":",
        	nbullet .. "Cast " .. b("Divine Light") .. " will always be directed towards you" .. dot,
        	nbullet .. "Minimum delay before cast " .. b("Divine Light") .. " deals damage and inflicts " .. biclr("wiki gold", "Heresy") .. " is set to " .. clror("#duration") .. dot,
        	nbullet .. "Increases the maximum speed of controlled " .. b("Divine Light") .. " by " .. clro("#controlMaxSpeed") .. dot,
        	nbullet .. "Increases the maximum speed of cast " .. b("Divine Light") .. " by " .. clro("#castMaxSpeed") .. dot)
    },
    ["Mirror of the Creators"] = {
    desc =
    	quote("And They said unto It, take this mirror, and show them the error of their ways.", "(I Barbarians, ch. 6)") .. nlp ..
        list("Cast " .. b("Divine Light") .. " reflects off the first " .. clror("#bounces") .. " it would otherwise pass through" .. dot,
        	"When reflecting, it pauses for " .. clro("#delay") .. " before reflecting again" .. dot)
    },
    ["Obsidian Feather"] = {
    desc =
    	quote("Some villagers will carve feathers from rocks, hoping that their faith might protect them.", "(Visions of Gerhardt, ch. 3)") .. nlp ..
        list("You can no longer cancel nor manually cast the controlled " .. b("Divine Light") .. " and it is automatically cast when it would instead time out" .. dot,
        	"Increases movement speed while controlling " .. b("Divine Light") .. " by " .. clror("#effect(1)") .. dot,
        	"Decreases the maximum amount of time you can control " .. b("Divine Light") .. " for by " .. clro("#effect(2)") .. dot,
        	"Increases the recovery time after casting " .. b("Divine Light") .. " by " .. clro("#castEffect(1)") .. dot,
        	"Decreases the movement speed while recovering after casting " .. b("Divine Light") .. " by " .. clro("#castEffect(2)") .. dot)
    },
}   

-------------------------------------------------------------    ██╗████████╗███████╗███╗   ███╗███████╗    -------------------------------------------------------------
-------------------------------------------------------------    ██║╚══██╔══╝██╔════╝████╗ ████║██╔════╝    -------------------------------------------------------------
-------------------------------------------------------------    ██║   ██║   █████╗  ██╔████╔██║███████╗    -------------------------------------------------------------
-------------------------------------------------------------    ██║   ██║   ██╔══╝  ██║╚██╔╝██║╚════██║    -------------------------------------------------------------
-------------------------------------------------------------    ██║   ██║   ███████╗██║ ╚═╝ ██║███████║    -------------------------------------------------------------
-------------------------------------------------------------    ╚═╝   ╚═╝   ╚══════╝╚═╝     ╚═╝╚══════╝    -------------------------------------------------------------

p.itemDescriptions = {
	------------
	--- KEYS ---
	------------
	["Broken Key"] = {
        desc = 
            quote("The bow and shank of a key, vibrating with power.") .. nlp ..
			"Start the Trial with " .. clror("#charges") .. dot .. br ..
			"Press and hold the " .. loadoutStrings.useItemButton .. " to channel the #name:" ..
			list("The " .. iconLink(ils.auras) .. " of other Survivors within " .. clro("#auraRange") .. " of your location are revealed to you for " .. clro("#auraDuration") .. dot) ..
			"The #name consumes " .. clro("#cost") .. " per use of its ability."
    },
    ["Dull Key"] = {
    	desc = 
            quote("A bent and dull key that once held great power.") .. nlp ..
            "Start the Trial with " .. clror("#charges") .. dot .. br ..
			"Press and hold the " .. loadoutStrings.useItemButton .. " to channel the #name:" ..
			list("The " .. iconLink(ils.auras) .. " of other Survivors within " .. clro("#auraRange") .. " of your location are revealed to you for " .. clro("#auraDuration") .. dot) ..
			"While standing next to a locked " .. iconLink(ils.chest) .. ", press the " .. loadoutStrings.useItemButton .. " to quickly open it:" ..
			list(
				"Guarantees an " .. iconLink(ils.item) .. " of " .. bclr(3, "Rare Rarity") .. " or higher.",
				"The Aura of the " .. b("Chest") .. " is revealed to other Survivors within " .. clro("#chestAura") .. " and highlighted in " .. bclr("yellow", "yellow") .. colon,
				nbullet .. "Grants the ability for " .. clro("#survivorCount") .. " other Survivor to " .. i("Rummage") .. " through that " .. b("Chest") .. space .. clro("#rummageCount") .. dot,
				nbullet .. "Guarantees an " .. b("Item") .. " of " .. bclr(3, "Rare Rarity") .. " or higher.",
				"While performing the " .. i("Rummage") .. " action, the Aura of that Survivor is revealed to the Key holder.") ..
			"While standing next to the closed " .. iconLink(ils.hatch) .. ", press the " .. loadoutStrings.useItemButton .. " to re-open it:" ..
			list("Takes " .. clro("#hatch") .. " to open.") ..
			"The #name consumes " .. clro("#cost") .. " per use of any one of its abilities."
    },
    ["Skeleton Key"] = {
        desc = 
            quote("A tarnished and crooked key, vibrating with ominous power.") .. nlp ..
            "Start the Trial with " .. clror("#charges") .. dot .. br ..
			"Press and hold the " .. loadoutStrings.useItemButton .. " to channel the #name:" ..
			list("The " .. iconLink(ils.auras) .. " of other Survivors within " .. clro("#auraRange") .. " of your location are revealed to you for " .. clro("#auraDuration") .. dot) ..
			"While standing next to a locked " .. iconLink(ils.chest) .. ", press the " .. loadoutStrings.useItemButton .. " to quickly open it:" ..
			list(
				"Guarantees an " .. iconLink(ils.item) .. " of " .. bclr(3, "Rare Rarity") .. " or higher.",
				"The Aura of the " .. b("Chest") .. " is revealed to other Survivors within " .. clro("#chestAura") .. " and highlighted in " .. bclr("yellow", "yellow") .. colon,
				nbullet .. "Grants the ability for " .. clro("#survivorCount") .. " other Survivor to " .. i("Rummage") .. " through that " .. b("Chest") .. space .. clro("#rummageCount") .. dot,
				nbullet .. "Guarantees an " .. b("Item") .. " of " .. bclr(3, "Rare Rarity") .. " or higher.",
				"While performing the " .. i("Rummage") .. " action, the Aura of that Survivor is revealed to the Key holder.") ..
			"While standing next to the closed " .. iconLink(ils.hatch) .. ", press the " .. loadoutStrings.useItemButton .. " to re-open it:" ..
			list("Takes " .. clro("#hatch") .. " to open.") ..
			"The #name consumes " .. clro("#cost") .. " per use of any one of its abilities."
    },

	--------------------
	--- FIRECRACKERS ---
	--------------------
	
    ["Chinese Firecracker"] = {
        desc = 
            "A row of small explosive devices wrapped in heavy paper casing." .. br ..
            "Can be used as a distraction, as a blinding device or to celebrate." ..
			list(
				"Press the " .. loadoutStrings.useItemButton .. " to detonate the " .. i("Firecracker") .. dot,
				"Detonates into loud bangs and intense light flashes, temporarily blinding and deafening nearby Players.") ..
			"The #name is consumed on use." .. nlp ..
			"The #name is only available during " .. link("Lunar Events") .. dot
    },
    ["Third Year Party Starter"] = {
        desc = 
			"A small, highly-explosive dinner table decoration." .. br ..
			"Can be used as a distraction, as a blinding device or to celebrate our three years together." ..
			list(
				"Press the " .. loadoutStrings.useItemButton .. " to detonate the " .. i("Firecracker") .. dot,
				"Detonates into loud bangs and intense light flashes, temporarily blinding and deafening nearby Players."
			) ..
			"The #name is consumed on use." .. nlp ..
			"The #name was only available during the " .. i("Third Year Anniversary Event") .. dot .. nlp ..
			quote('"Happy Anniversary! Here is to our three years together!" — The Dead by Daylight Team')
    },
    ["Winter Party Starter"] = {
        desc =
			"A small, highly-explosive dinner table decoration." .. br ..
			"Can be used as a distraction, as a blinding device or to celebrate." ..
			list(
				"Press the " .. loadoutStrings.useItemButton .. " to detonate the " .. i("Firecracker") .. dot,
				"Detonates into loud bangs and intense light flashes, temporarily blinding and deafening nearby Players.") ..
			"The #name is consumed on use." .. nlp ..
			"The #name is only available during " .. link("Winter Events") .. dot
    },
    
	-------------------
	--- FLASHLIGHTS ---
	-------------------
	
    ["Anniversary Flashlight"] = {
        desc = 
			"A festive Flashlight." .. br ..
			list(
				"Press the " .. loadoutStrings.useItemButton .. " to light the " .. i("Flashlight") .. " for up to " .. clror("8 seconds") .. dot,
				"Explodes with confetti upon blinding the Killer." .. br .."Surprise!") ..
			"The #name was only available during the " .. i("Fourth and Fifth Year Anniversary Events") .. dot .. nlp ..
			quote('"Happy Anniversary! Here is to many more!" — The Dead by Daylight Team')
    },
	["Banquet Flashlight"] = {
        desc = 
			"It's time to burn calories...and retinas." .. br ..
			list(
				"Press the " .. loadoutStrings.useItemButton .. " to light the " .. i("Flashlight") .. " for up to " .. clror("8 seconds") .. dot) ..
			"The #name is only available during the " .. i("Tenth Year Anniversary Event") .. dot .. nlp ..
			quote('"We\'re blinded with happiness from all of your support!" — The Dead by Daylight Team')
    },
    ["Flashlight"] = {
        desc = 
            "A standard Flashlight." .. br ..
            "Can be used to light your way in the darkness." ..
            list("Press the " .. loadoutStrings.useItemButton .. " to light the " .. i("Flashlight") .. " for up to " .. clror("8 seconds") .. dot) ..
			quote("Most of the battery life was wastefully used by the previous owner.")
    },
    ["Masquerade Flashlight"] = {
        desc = 
		"Not even a mask can protect you from this Flashlight's bright beam." ..
		list(
			"Press the " .. loadoutStrings.useItemButton .. " to light the " .. i("Flashlight") .. " for up to " .. clror("8 seconds") .. dot) ..
		"The #name is only available during " .. link("Anniversary Events") .. dot .. nlp ..
		quote('"Happy Anniversary! The future looks bright!" — The Dead by Daylight Team')
    },
    ["Sport Flashlight"] = {
        desc = 
            "A very portable Flashlight with a good grip." .. br ..
            "Its efficient technology produces a powerful light while consuming less power." ..
            list(
            	"Press the " .. loadoutStrings.useItemButton .. " to light the " .. i("Flashlight") .. " for up to " .. clror("8 seconds") .. dot,
				"Has an " .. b("increased") .. " Aim accuracy of " .. clro("+20 %") .. dot,
				"Has a " .. b("reduced") .. " Depletion rate of " ..  clro("-11 %") .. dot)
    },
    ["Utility Flashlight"] = {
        desc = 
            "A sturdy but heavy Flashlight that packs a lot of power." ..
            list(
            	"Press the " .. loadoutStrings.useItemButton .. " to light the " .. i("Flashlight") .. " for up to " .. clror("12 seconds") .. dot,
				"Has an " .. b("increased") .. " Beam brightness of " .. clro("+30 %") .. dot,
				"Has an " .. b("increased")  .. " Blindness duration of " .. clro("+15 %") .. dot,
				"Has a " .. b("reduced") .. " Aim accuracy of " .. clro("-20 %") .. dot
			)
    },
    ["Will O' Wisp"] = {
        desc = 
			"A Flashlight equipped with a special lens cover that adds an orange tint and a little Ghost to the beam." ..
			list(
				"Press the " .. loadoutStrings.useItemButton .. " to light the " .. i("Flashlight") .. " for up to " .. clror("8 seconds") .. dot,
				"Causes more friendly Ghosts in your life.") ..
			"The #name is only available during " .. link("Halloween Events") .. dot .. nlp ..
			quote("Happy Trick or Treating!")
    },
	
	-----------------
	--- FOG VIALS ---
	-----------------
	
    ["Apprentice's Fog Vial"] = {
        desc = 
			quote("Made by the hands of a diligent but timid novice.") .. nlp ..
			"Start the Trial with " .. clror("#charges") .. dot .. br ..
			"Press the " .. loadoutStrings.useItemButton .. " to release a concentrated " .. i("Fog Cloud") .. colon ..
			list(
				"Expands to a maximum size of " .. clro("#radius") .. " over " .. clro("#expansion") .. dot,
				"Lasts for " .. clro("#duration") .. dot,
				"Obscures visibility and sounds within its " .. i("Area of Effect") .. colon,
				nbullet .. "Has an opacity of " .. clro("#opacity") .. dot,
				nbullet .. b("Suppresses") .. space .. iconLink(ils.auras) .. " and " .. iconLink(ils.scratchMarks) .. dot) ..
			"#name takes " .. clro("#rechargeTime") .. " to recharge after use."
    },
    ["Artisan's Fog Vial"] = {
        desc = 
			quote("Crafted by an experienced glazier with a love for her craft.") .. nlp ..
			"Start the Trial with " .. clror("#charges") .. dot .. br ..
			"Press the " .. loadoutStrings.useItemButton .. " to release a concentrated " .. i("Fog Cloud") .. colon ..
			list(
				"Expands to a maximum size of " .. clro("#radius") .. " over " .. clro("#expansion") .. dot,
				"Lasts for " .. clro("#duration") .. dot,
				"Obscures visibility and sounds within its " .. i("Area of Effect") .. colon,
				nbullet .. "Has an opacity of " .. clro("#opacity") .. dot,
				nbullet .. b("Suppresses") .. space .. iconLink(ils.auras) .. " and " .. iconLink(ils.scratchMarks) .. dot) ..
			"#name takes " .. clro("#rechargeTime") .. " to recharge after use."
    },
    ["Vigo's Fog Vial"] = {
        desc = 
			quote("From the man's own collection. Impeccable. Unparalleled.") .. nlp ..
			"Start the Trial with " .. clror("#charges") .. dot .. br ..
			"Press the " .. loadoutStrings.useItemButton .. " to release a concentrated " .. i("Fog Cloud") .. colon ..
			list(
				"Expands to a maximum size of " .. clro("#radius") .. " over " .. clro("#expansion") .. dot,
				"Lasts for " .. clro("#duration") .. dot,
				"Obscures visibility and sounds within its " .. i("Area of Effect") .. colon,
				nbullet .. "Has an opacity of " .. clro("#opacity") .. dot,
				nbullet .. b("Suppresses") .. space .. iconLink(ils.auras) .. " and " .. iconLink(ils.scratchMarks) .. dot) ..
			"#name takes " .. clro("#rechargeTime") .. " to recharge after use."
    },
    
    -------------------
	-- LIMITED ITEMS --
	-------------------
    
    ["Antidote"] = {
        desc = 
			loadoutStrings.limitedHeader .. nlp ..
			"A potent formula that reverses the effects of both the " .. biclr("white", "Uroboros") .. " and " .. biclr("blue", "T-Virus") .. " infection." .. nlp ..
			list(
				"Press the " .. loadoutStrings.useItemButton .. " to cure yourself or another Survivor from either or both infections.",
				"Can be used " .. clror("3 times") .. " before it is consumed.",
				"Can be found in " .. iconLink("Supply Cases") .. " located in the environment.") ..
			"The #name only spawns in " .. b("2v8") .. " Trials featuring both The " .. iconLink("Mastermind") .. " and The " .. iconLink("Nemesis T-Type", "The Nemesis", "Nemesis") .. dot .. nlp ..
			loadoutStrings.limitedFooter
    },
    ["Blood Can"] = {
        desc = 
			loadoutStrings.limitedHeader .. nlp ..
			"The handle is slick, and blood wells between your fingers as you tighten your grip." .. br ..
			"The #name is found when interacting with the " .. b("Blood Pump") .. " and required to carry the blood needed to repair " .. b("Blood Generators") .. colon ..
			list(
				"Holds a maximum of " .. clror("#litres") .. " of blood:",
				nbullet .. "Loses " .. clro("#penaltyGround") .. " when left on the ground.",
				nbullet .. "Loses " .. clro("#penaltyRunning") .. " while running.",
				nbullet .. "Loses " .. clro("#penaltyToppled") .. " when toppled over.",
				"Running produces " .. iconLink(ils.poolsOfBlood) .. dot,
				"Emits distinct noises while carried, which vary depending on your Movement speed and the number of Litres of blood being carried.") ..
			"While filling the " .. b("Blood Can") .. " at a " .. b("Blood Pump") .. ", you benefit from the following effect:" ..
			list(
				"The " .. iconLink(ils.aura) .. " of the nearest " .. b("Blood Generator") .. " is revealed to you.",
				nbullet .. "This effect lingers for " .. clro("#linger") .. dot) ..
			"The #name vanishes from the Trial when empty and is only available during " .. link("Spring Events") .. dot .. nlp ..
			loadoutStrings.limitedFooter
    },
    ["First Aid Spray"] = {
        desc = 
			loadoutStrings.limitedHeader .. nlp ..
			"A medication that helps reverse the effects of an " .. biclr("white", "Uroboros") .. " infection." ..
			list(
				"Press the " .. loadoutStrings.useItemButton .. " to cure yourself or another Survivor.",
				"Can be used " .. clror("2 times") .. " before it is consumed.",
				"Can be found in " .. iconLink("Supply Cases") .. " located in the environment.") ..
			loadoutStrings.limitedFooter
    },
    ["Flash Grenade"] = {
        desc = 
            loadoutStrings.limitedHeaderCraftable .. nlp ..
			"Craftable when using " .. iconLink(ils.flashbang) .. dot .. br ..
			"Can be used as a distraction or blinding device." ..
			list(
				"Press the " .. loadoutStrings.useItemButton .. " to detonate the " .. i("Flash Grenade") .. dot,
				"Detonates with a loud bang and flashing lights, temporarily blinding and deafening any nearby Players.",
				"Triggers a " .. i(link("Loud Noise Notification")) .. dot) ..
			loadoutStrings.limitedFooter
    },
    ["Glowing Fungus"] = {
    	desc = 
    		loadoutStrings.limitedHeader .. nlp ..
    		"Spawns in the environment when facing The " .. iconLink("Krasue") .. colon ..
    		list(
				"When spawned, takes " .. clror("#spawn") .. " to grow and become interactable.",
				"Can be picked up by Survivors.",
				"Reveals its " .. iconLink(ils.aura) .. " to all Survivors afflicted with " .. biclr("bronze", "Leeched") .. " within " .. clro("#aura") .. dot) ..
    		"Press the " .. loadoutStrings.useItemButton .. " to eat the mushroom:" ..
    		list(
    			"Takes " .. clro("#interaction") .. " to complete.",
    			"Limits movement to walking.",
    			b("Reduces") .. " the Walking speed to " .. clro("#speed(1)") .. " of its default value.",
    			nbullet .. "This effect lingers for " .. clro("#speed(2)") .. dot) ..
    		"After eating a #name, Survivors benefit from the following effect:" ..
    		list(
    			"Depletes the " .. biclr("bronze", "Leeched Meter") .. " at a rate of " .. clro("#effect") .. dot,
    			nbullet .. "This effect ends after being hit.") ..
    		"Dropping a #name on the ground causes it to decay within " .. clro("#decay(1)") .. " unless a Survivor is within " .. clro("#decay(2)") .. " of its location." .. nlp ..
    		loadoutStrings.limitedFooter
    },
    ["Lament Configuration"] = {
        desc = 
            loadoutStrings.limitedHeader .. nlp ..
			"Spawns in the environment when facing The " .. iconLink("Cenobite") .. dot ..
			list(
				"Starts a " .. i("Chain Hunt") .. " after " .. clror("90 seconds") .. " of spawning into the environment.",
				nbullet .. " Starts it immediately when it is picked up by " .. b("The Cenobite") .. dot,
				"Reveals its " .. iconLink(ils.aura) .. " to all Survivors."
			) ..
			"Can be picked up and carried by Survivors:" ..
			list(
				"Resets the timer of the " .. i("Lament Configuration") .. " and ends active " .. i("Chain Hunts") .. " on other Survivors.",
				"Press the " .. loadoutStrings.useItemButton .. " to solve the " .. i("Lament Configuration") .. ", causing it to respawn in a new location.",
				nbullet .. "Reveals your location to the " .. b("The Cenobite") .. " while solving it through a special version of " .. i(link("Killer Instinct")) .. " and grants him the ability to teleport to you.",
				"Causes the " .. states(ils.oblivious) .. " when carried.") ..
			loadoutStrings.limitedFooter
    },
    ["Pocket Mirror"] = {
        desc = 
            loadoutStrings.limitedHeader .. nlp ..
			"A repaired pocket mirror pulled from the second " .. bclr("white", "White Glyph") .. dot .. br ..
			"Its surface is frosty." ..
			list("Grants " .. clror("25,000") .. " bonus Bloodpoints upon escaping the Trial with it.") ..
			loadoutStrings.limitedFooter
    },
    ["Vaccine"] = {
        desc = 
            loadoutStrings.limitedHeader .. nlp ..
			"A vaccine that helps reverse the effects of a " .. biclr("blue", "T-Virus") .. " infection." ..
			list(
				"Press the " .. loadoutStrings.useItemButton .. " to cure yourself or another Survivor.",
				"Can be used " .. clror("1 time") .. " before it is consumed.",
				"Can be found in " .. iconLink("Supply Cases") .. " located in the environment.") ..
			loadoutStrings.limitedFooter
    },
    ["VHS Tape"] = {
        desc = 
            loadoutStrings.limitedHeader .. nlp ..
			"The " .. i("Cursed Tape") .. " can be retrieved from a " .. iconLink("TV") .. " located in the environment and must be reinserted into a specific one:" ..
			list(
				"Inserting the " .. i("Cursed Tape") .. space .. b("reduces") .. space .. i("Condemned") .. " by " .. clror("-3 Stacks") .. dot,
				nbullet .. "This spreads " .. b("The Onryō's") .. " message and temporarily turns the " .. b("TV") .. " off.",
				"The specific " .. b("TV") .. " is highlighted in " .. bclr("yellow", "yellow") .. dot) ..
			loadoutStrings.limitedFooter
    },
    ["EMP"] = {
        desc = 
            loadoutStrings.limitedHeader .. nlp ..
			"An electromagnetic pulse device that is printed by " .. iconLink("Supply Cases") .. " when facing " .. b("The") .. space .. iconLink("Singularity") .. dot .. br ..
			"The " .. iconLink(ils.auras) .. " of " .. b("Supply Cases") .. " are visible when within " .. clror("28 metres") .. colon ..
			list(
				"Takes " .. clro("100 Charges") .. " to be printed.",
				nbullet .. "Passive printing charges at a rate of " .. clro("+1 c/s") .. ", but is limited to " .. clro("97 Charges") .. ", requiring the final " .. clro("3 Charges") .. " to be actively printed by a Survivor.",
				nbullet .. "Active printing charges at a rate of " .. clro("+4 c/s") .. " while a Survivor interacts with the " .. b("Supply Case") .. dot,
				"Takes " .. clro("2.5 seconds") .. " to charge.",
				"Incurs a " .. clro("-10 %") .. space .. states(ils.hindered) .. " while charging and holding.",
				"Has an " .. i("Area of Effect") .. " of " .. clro("10 metres") .. dot,
				"Removes " .. biclr("lavender", "Temporal Slipstream") .. " from anyone within its " .. i("Area of Effect") .. " upon detonation.",
				nbullet .. "The " .. iconLink(ils.auras) .. " of other " .. i("Slipstreamed Survivors") .. " are revealed to you in " .. bclr("yellow", "yellow") .. " when within the " .. i("Area of Effect") .. dot,
				"Disables all " .. b("Biopods") .. " within the " .. i("Area of Effect") .. " for " .. clro("45 seconds") .. " upon detonation and grants immunity to " .. biclr("lavender", "Temporal Slipstream") .. " for " .. clro("1 second") .. dot) ..
			loadoutStrings.limitedFooter
    },
    ["Remote Flame Turret"] = {
        desc = 
            loadoutStrings.limitedHeader .. nlp ..
			"A flamethrower turret that Survivors can retrieve from " .. b("Control Stations") .. " and placed in the environment." .. nlp ..
			list(
				"Tracks the presence of " .. b("The") .. space .. iconLink("Xenomorph") .. " within " .. clror("41 metres") .. " of its location.",
				nbullet .. "This ability is briefly disabled whenever " .. b("The Xenomorph") .. " exits the Tunnels.",
				"Grants immunity from Detection by " .. b("The Xenomorph") .. " when it is inside the Tunnels while carrying the " .. b("Turret") .. dot,
				"Survivors suffer from a " .. clro("-35 %") .. space .. states(ils.hindered) .. ", and the " .. states(ils.exhausted, ils.incapacitated) .. ", while carrying the " .. b("Turret") .. dot,
				"The " .. iconLink(ils.auras) .. " of Survivors carrying a " .. b("Turret") .. " are revealed to all other Survivors.",
				"Shoots flames at a " .. i("Crawler Mode") .. space .. b("The Xenomorph") ..  " when within " .. clro("10 metres") .. " and established " .. i("Line of Sight") .. dot,
				nbullet .. "This slows " .. b("The Xenomorph") .. " and knocks it out of " .. i("Crawler Mode") .. " after filling the Power gauge.",
				nbullet .. "Overheats after doing so or when firing consecutively for " .. clro("4 seconds") .. dot,
				nbullet .. "Overheated " .. b("Turrets") .. " can be repaired and reactivated by Survivors.",
				nbullet .. "Multiple " .. b("Turrets") .. " firing simultaneously do not stack their damage output.",
				"Dropping a " .. b("Turret") .. " on the ground instead of deploying it destroys it after " .. clro("30 seconds") .. ", unless at least one Survivor remains within " .. clro("6 metres") .. " of where it was dropped.",
				"Can be destroyed by an attack from " .. b("The Xenomorph") .. dot) ..
			loadoutStrings.limitedFooter
    },
    ["Keycard"] = {
        desc = 
            loadoutStrings.limitedHeader .. nlp ..
			"Can only be found on the " .. i(link("Nostromo Wreckage")) .. " Map." ..
			list(
				"Crouch over the body of a dead cosmonaut found in the environment and press the " .. loadoutStrings.interactionButton .. " to pick up the " .. i("Keycard") .. dot,
			"Insert it into the terminal located by the Mass Hall to hack it.",
			nbullet .. "Perform the " .. i("Hack Terminal") .. " interaction by pressing the keybinds for " .. b("Left, Down, Up, Right") .. dot,
			nbullet .. "Hacking the terminal opens an airlock door to a secret room containing a " .. iconLink(ils.chest) .. dot) ..
			loadoutStrings.limitedFooter
    },
    ["Searcher's Pendant"] = {
        desc = 
            loadoutStrings.limitedHeader .. nlp ..
            quote("An artifact from another place, where the night sky held answers.") .. nlp ..
			list(
				"Press the " .. loadoutStrings.useItemButton .. " to collect Exiled Souls.",
				"For each Exiled Soul collected (up to " .. clror("#maxSoul") .. "), gives an extra " .. clro("+#effect") .. " of " .. b("Unhook Protection") .. " Status Effects when rescued from Exile.",
				nbullet .. "Exiled Souls do not provide additional bonuses once all " .. iconLink(ils.generators) .. " are completed.") ..
			loadoutStrings.limitedFooter
    },

    ----------
	-- MAPS --
	----------

    ["Annotated Map"] = {
    	desc =
    		quote("The sketch is clear and detailed." .. br .. "Strange knowledge flows into you, followed by dread uncertainty.") .. nlp ..
            "Start the Trial with " .. clror("#charges") .. dot .. br ..
			"Press the " .. loadoutStrings.useItemButton .. " to channel the #name:" ..
			list("The " .. iconLink(ils.auras) .. " of " .. iconLink(ils.pallets) .. " and " .. iconLink(ils.windows) .. " within " .. clro("#aura_Vaultables(1)") .. " of your location are revealed to you for " .. clro("#aura_Vaultables(2)") .. dot) ..
			"While channelling the " .. b("Map") .. ", press the " .. loadoutStrings.secondaryActionButton .. " at any point before the timer elapses for the following additional effect:" ..
			list(
				"Creates a " .. i("Beam of Light") .. " at your current location that lasts for " .. clro("#aura_BOL(2)") .. dot,
				nbullet .. "The Auras of " .. iconLink(ils.generators) .. " within " .. clro("#aura_BOL(1)") .. " of it are revealed to all Survivors and highlighted in " .. bclr("red", "red") .. dot) ..
			"The #name consumes " .. clro("#cost") .. " per use."
	},
	["Bloodsense Map"] = {
    	desc =
    		quote("A bloodstained piece of parchment, hastily rolled and burning with a strange power.") .. nlp ..
            "Start the Trial with " .. clror("#charges") .. dot .. br ..
			"Press the " .. loadoutStrings.useItemButton .. " to channel the #name:" ..
			list(
				"The " .. iconLink(ils.auras) .. " of injured Survivors, " .. iconLink(ils.pallets) .. ", and " .. iconLink(ils.windows) .. " within " .. clro("#aura_Vaultables(1)") .. " of your location are revealed to you for " .. clro("#aura_Vaultables(2)") .. dot,
				"Causes " .. iconLink(ils.poolsOfBlood) .. " to spawn beneath you while being used.") ..
			"While channelling the " .. b("Map") .. ", press the " .. loadoutStrings.secondaryActionButton .. " at any point before the timer elapses for the following additional effect:" ..
			list(
				"Creates a " .. i("Beam of Light") .. " at your current location that lasts for " .. clro("#aura_BOL(2)") .. dot,
				nbullet .. "The Auras of " .. iconLink(ils.generators) .. " within " .. clro("#aura_BOL(1)") .. " of it are revealed to all Survivors and highlighted in " .. bclr("red", "red") .. dot) ..
			"The #name consumes " .. clro("#cost") .. " per use."
	},
	["Cryptic Map"] = {
    	desc =
    		quote("Looking at it, the directions make no sense." .. br .. "But merely holding it grants you an uncanny intuition.") .. nlp ..
            "Start the Trial with " .. clror("#charges") .. dot .. br ..
			"Press the " .. loadoutStrings.useItemButton .. " to channel the #name:" ..
			list("The " .. iconLink(ils.auras) .. " of " .. iconLink(ils.pallets) .. " and " .. iconLink(ils.windows) .. " within " .. clro("#aura_Vaultables(1)") .. " of your location are revealed to you for " .. clro("#aura_Vaultables(2)") .. dot) ..
			"While channelling the " .. b("Map") .. ", press the " .. loadoutStrings.secondaryActionButton .. " at any point before the timer elapses for the following additional effect:" ..
			list(
				"Creates a " .. i("Beam of Light") .. " at your current location that lasts for " .. clro("#aura_BOL(2)") .. dot,
				nbullet .. "The Auras of " .. iconLink(ils.generators) .. " within " .. clro("#aura_BOL(1)") .. " of it are revealed to all Survivors and highlighted in " .. bclr("red", "red") .. dot) ..
			"The #name consumes " .. clro("#cost") .. " per use."
	},
	["Scribbled Map"] = {
    	desc =
    		quote("Peering at the parchment, a path appears in your mind." .. br .. "Moments later, you feel lost again.") .. nlp ..
            "Start the Trial with " .. clror("#charges") .. dot .. br ..
			"Press the " .. loadoutStrings.useItemButton .. " to channel the #name:" ..
			list("The " .. iconLink(ils.auras) .. " of " .. iconLink(ils.pallets) .. " and " .. iconLink(ils.windows) .. " within " .. clro("#aura_Vaultables(1)") .. " of your location are revealed to you for " .. clro("#aura_Vaultables(2)") .. dot) ..
			"While channelling the " .. b("Map") .. ", press the " .. loadoutStrings.secondaryActionButton .. " at any point before the timer elapses for the following additional effect:" ..
			list(
				"Creates a " .. i("Beam of Light") .. " at your current location that lasts for " .. clro("#aura_BOL(2)") .. dot,
				nbullet .. "The Auras of " .. iconLink(ils.generators) .. " within " .. clro("#aura_BOL(1)") .. " of it are revealed to all Survivors and highlighted in " .. bclr("red", "red") .. dot) ..
			"The #name consumes " .. clro("#cost") .. " per use."
	},
    
    --------------
	-- MED-KITS --
	--------------
    
    ["Anniversary Med-Kit"] = {
        desc = 
			"A festive Med-Kit that explodes with confetti upon fully healing a Survivor. Surprise!" .. 
			list(
				b("Increased") .. " confetti of " .. clror("+100 %") .. dot) .. 
            "Can be used to heal other Survivors:" ..
            list(
				b("Increased") .. " Altruistic Healing speed of " .. clro("+40 %") .. dot) ..
			"Unlocks the Self-Heal action:" ..
			list(
				b("Reduced") .. " Personal Healing speed of " .. clro("-33 %") .. dot,
				b("Reduced") .. " Item efficiency of " .. clro("-33 %") .. dot) ..
			"The #name has a Capacity of " .. clro("24 Charges") .. dot .. nlp .. 
			"The #name was only available during the " .. i("Fourth and Fifth Year Anniversary Events") .. dot .. nlp ..
			quote("Happy Anniversary! Here's to many more!", "The Dead by Daylight Team")
    },
    ["All Hallows' Eve Lunchbox"] = {
        desc = 
			"A plastic lunchbox with phosphorescent Halloween Stickers that has been packed with First-Aid equipment." .. 
			list("Makes you " .. b("considerably more") .. " visible.") .. 
			"Can be used to heal other Survivors:" ..
            list(
				b("Increased") .. " Altruistic Healing speed of " .. clror("+40 %") .. dot) ..
			"Unlocks the Self-Heal action:" ..
			list(
				b("Reduced") .. " Personal Healing speed of " .. clro("-33 %") .. dot,
				b("Reduced") .. " Item efficiency of " .. clro("-33 %") .. dot) ..
			"The #name has a Capacity of " .. clro("24 Charges") .. dot .. nlp ..
			"The #name is only available during " .. link("Halloween Events") .. dot .. nlp ..
			quote("Safety first! Make sure you can be seen when trick or treating.")
    },
	["Banquet Med-Kit"] = {
        desc = 
			"Does it heal indigestion? There's only one way to find out." .. br ..
            "Can be used to heal other Survivors:" ..
            list(
				b("Increased") .. " Altruistic Healing speed of " .. clro("+40 %") .. dot) ..
			"Unlocks the Self-Heal action:" ..
			list(
				b("Reduced") .. " Personal Healing speed of " .. clro("-33 %") .. dot,
				b("Reduced") .. " Item efficiency of " .. clro("-33 %") .. dot) ..
			"The #name has a Capacity of " .. clro("24 Charges") .. dot .. nlp .. 
			"The #name is only available during the " .. i("Tenth Year Anniversary Event") .. dot .. nlp ..
			quote("Here's to Health!", "The Dead by Daylight Team")
    },
    ["Camping Aid Kit"] = {
        desc = 
            "A rudimentary First Aid Kit which can save lives in emergencies, even if it's lacking some of its supplies." .. br ..
            "Can be used to heal other Survivors:" ..
            list(
				b("Increased") .. " Altruistic Healing speed of " .. clror("+35 %") .. dot) ..
			"Unlocks the Self-Heal action:" ..
			list(
				b("Reduced") .. " Personal Healing speed of " .. clro("-33 %") .. dot,
				b("Reduced") .. " Item efficiency of " .. clro("-33 %") .. dot) ..
			"The #name has a Capacity of " .. clro("24 Charges") .. dot .. dnl ..
            quote("Barely has enough material for a decent patch-up.")

    },
    ["Emergency Med-Kit"] = {
        desc = 
            "A sturdy and well organised Med-Kit equipped with top condition emergency supplies." .. br ..
            "Can be used to heal other Survivors:" ..
            list(
				b("Increased") .. " Altruistic Healing speed of " .. clror("+45 %") .. dot) ..
			"Unlocks the Self-Heal action:" ..
			list(
				b("Reduced") .. " Personal Healing speed of " .. clro("-33 %") .. dot,
				b("Reduced") .. " Item efficiency of " .. clro("-33 %") .. dot) ..
			"The #name has a Capacity of " .. clro("24 Charges") .. dot .. dnl ..
			quote("There is a cure for almost everything...but not for this.")

    },
    ["First Aid Kit"] = {
        desc = 
            "A standard First Aid Kit with all the necessary equipment for treating common to more serious injuries." .. br ..
			"Can be used to heal other Survivors:" ..
            list(
				b("Increased") .. " Altruistic Healing speed of " .. clror("+40 %") .. dot) ..
			"Unlocks the Self-Heal action:" ..
			list(
				b("Reduced") .. " Personal Healing speed of " .. clro("-33 %") .. dot,
				b("Reduced") .. " Item efficiency of " .. clro("-33 %") .. dot) ..
			"The #name has a Capacity of " .. clro("24 Charges") .. dot
    },
    ["Masquerade Med-Kit"] = {
        desc = 
			'A festive Med-Kit with a shocking surprise, giving a whole new meaning to the term "Health Scare".' .. 
			list(
				b("Increased") .. " confetti of " .. clror("+100 %") .. dot) .. 
            "Can be used to heal other Survivors:" ..
            list(
				b("Increased") .. " Altruistic Healing speed of " .. clro("+40 %") .. dot) ..
			"Unlocks the Self-Heal action:" ..
			list(
				b("Reduced") .. " Personal Healing speed of " .. clro("-33 %") .. dot,
				b("Reduced") .. " Item efficiency of " .. clro("-33 %") .. dot) ..
			"The #name has a Capacity of " .. clro("24 Charges") .. dot .. nlp .. 
			"The #name is only available during " .. link("Anniversary Events") .. dot .. nlp ..
			quote("Happy Anniversary! To your health!", "The Dead by Daylight Team")
    },
    ["Ranger Med-Kit"] = {
        desc = 
            "A large metal box containing medical supplies aimed at emergency rescues in hard to reach, often isolated locations." .. br ..
            "Can be used to heal other Survivors:" ..
            list(
				b("Increased") .. " Altruistic Healing speed of " .. clror("+50 %") .. dot) ..
			"Unlocks the Self-Heal action:" ..
			list(
				b("Reduced") .. " Personal Healing speed of " .. clro("-33 %") .. dot,
				b("Reduced") .. " Item efficiency of " .. clro("-33 %") .. dot) ..
			"The #name has a Capacity of " .. clro("24 Charges") .. dot .. dnl ..
			quote("A small engraved label can be found glued to the back panel: VK.ID-3994723.")
    },
    							-------------------------------
								 --        Toolboxes        --
								-------------------------------
    ["Anniversary Toolbox"] = {
        desc = 
			"A Toolbox that is slightly explosive." ..
			list(
				clror("32 Charges") .. dot,
				b("Increases") .. " the Repair speed by " .. clro("+50 %") .. dot,
				"Unlocks the Sabotage action.",
				b("Increases") .. " the Sabotage speed by " .. clro("+50 %") .. dot,
				"Detonates a firework once depleted." .. br .. "Yay!") ..
			"The #name was only available during the " .. i("Fourth and Fifth Year Anniversary Events") .. dot .. nlp ..
			quote("Nothing says happy anniversary like detonating a firework and praying the Killer does not notice." .. br .. 
				"Good luck and thank you for celebrating with us!", "The Dead by Daylight Team")
    },
    ["Alex's Toolbox"] = {
        desc = 
            "A metal box containing mainly saws and vice grips of varying sizes but also other tools." .. br ..
            "Even though the content of this Toolbox is clearly aimed at destructive deeds, it can be used to repair various mechanical components as well." ..
            list(
				clror("18 Charges") .. dot,
				b("Increases") .. " the Repair speed by " .. clro("+10 %") .. dot,
				"Unlocks the Sabotage action.",
				b("Increases") .. " the Sabotage speed by " .. clro("+100 %") .. dot) ..
            quote("Most of the tools are identified as 'owned by Alex'.")
    },
	["Banquet Toolbox"] = {
        desc = 
			"Nothing settles the stomach like manual labor." ..
			list(
				clror("32 Charges") .. dot,
				b("Increases") .. " the Repair speed by " .. clro("+50 %") .. dot,
				"Unlocks the Sabotage action.",
				b("Increases") .. " the Sabotage speed by " .. clro("+50 %") .. dot) ..
			"The #name is only available during the " .. i("Tenth Year Anniversary Event") .. dot .. nlp ..
			quote("Hard to believe it's been 10 years. Thanks for keeping the Exit Gate lights on!", "The Dead by Daylight Team")
    },
    ["Commodious Toolbox"] = {
        desc = 
            "A large metal box containing basic tool and extra mechanical parts." .. br ..
            "Even without training, can be used to repair or break various mechanical components." ..
            list(
				clror("32 Charges") .. dot,
				b("Increases") .. " the Repair speed by " .. clro("+50 %") .. dot,
				"Unlocks the Sabotage action.",
				b("Increases") .. " the Sabotage speed by " .. clro("+50 %") .. dot)
    },
    ["Festive Toolbox"] = {
        desc = 
			"A Toolbox packed to the brim with fireworks, it is prepared to celebrate all your life's successes... and failures." ..
			list(
				clror("32 Charges") .. dot,
				b("Increases") .. " the Repair speed by " .. clro("+50 %") .. dot,
				"Unlocks the Sabotage action.",
				b("Increases") .. " the Sabotage speed by " .. clro("+50 %") .. dot,
				"Succeeding a " .. i("Great Skill Check") .. " detonates a small cluster of firecrackers.",
				"Missing a " .. i("Skill Check") .. " detonates fireworks.") ..
			"The #name is only available during " .. link("Spring Events") .. dot
    },
    ["Engineer's Toolbox"] = {
        desc = 
            "A metal box with highly specialised tools meant for engineering." .. br ..
            "Most of the tools can be used by neophytes to make quick repairs or break various mechanical components." ..
            list(
				clror("16 Charges") .. dot,
				b("Increases") .. " the Repair speed by " .. clro("+100 %") .. dot,
				"Unlocks the Sabotage action.",
				b("Increases") .. " the Sabotage speed by " .. clro("+10 %") .. dot) ..
			quote("I've created tools beyond compare and stood paralysed as they were stolen from me. These are but a poor replica, spat out by The Fog.", "Vigo's Journal")
    },
    ["Masquerade Toolbox"] = {
        desc = 
			"A Toolbox with all of the standard gadgets: wrenches, screwdrivers, fireworks, a hammer..." ..
			list(
				clror("32 Charges") .. dot,
				b("Increases") .. " the Repair speed by " .. clro("+50 %") .. dot,
				"Unlocks the Sabotage action.",
				b("Increases") .. " the Sabotage speed by " .. clro("+50 %") .. dot,
				"Detonates a firework once depleted." .. br .. "Yay!") ..
			"The #name is only available during " .. link("Anniversary Events") .. dot .. nlp ..
			quote("Happy Anniversary! We're fixin' to have a big party!", "The Dead by Daylight Team")
    },
    ["Mechanic's Toolbox"] = {
        desc = 
            "A metal box with specialised mechanics tools." .. br ..
            "Even without training, can be used to repair or break various mechanical components." ..
			list(
				clror("16 Charges") .. dot,
				b("Increases") .. " the Repair speed by " .. clro("+75 %") .. dot,
				"Unlocks the Sabotage action.",
				b("Increases") .. " the Sabotage speed by " .. clro("+25 %") .. dot)
    },
    ["Toolbox"] = {
        desc = 
            "Metal box containing a set of basic tools." .. br ..
            "Even without training, can be used to repair or break various mechanical components." ..
            list(
				clror("20 Charges") .. dot,
				b("Increases") .. " the Repair speed by " .. clro("+50 %") .. dot,
				"Unlocks the Sabotage action.",
				b("Increases") .. " the Sabotage speed by " .. clro("+15 %") .. dot) ..
			quote("It is unclear as to where these tools come from. Were they brought in by one of us or did they belong to one of the monsters?")
    },
    ["Worn-Out Tools"] = {
        desc = 
            "A metal box containing out of condition tools that could break at any moment." .. br ..
            "Even without training, can be used to repair or break various mechanical components." ..
            list(
				clror("16 Charges") .. dot,
				b("Increases") .. " the Repair speed by " .. clro("+50 %") .. dot,
				b("Reduces") .. " the Success zone of " .. i("Good Skill Checks") .. " by " .. clro("-10 %") .. dot,
				"Unlocks the Sabotage action.") ..
			quote("You call these tools? ... Really?")

    },
    							----------------------------------
								 --        Unused Items        --
								----------------------------------
    ["Trapple"] = {
        desc = 
            "Unknown Description."
    },
    							----------------------------------
								 --        New Items           --
								----------------------------------
	["Eye of Vecna"] = {
        desc = 
            loadoutStrings.limitedHeaderVecna .. nlp ..
			"Press the " .. loadoutStrings.useItemButton .. " to attune to the #name:" ..
			list(
				"Triggers " .. i(link("Killer Instinct")) .. " for " .. clror("#killerInstinct") .. dot,
				"Grants " .. b("The Lich") .. " the ability to kill you by his own hand, once you have accumulated " .. clro("#hookStages") .. space .. i("Hook Stages") .. " and are in the " .. iconLink(ils.dyingState) .. dot) ..
			"While healthy, you benefit from the following effect:" ..
			list("The " .. iconLink(ils.aura) .. " of whichever " .. iconLink(ils.locker) .. " is nearest to your current location is revealed to you and highlighted in " .. bclr("yellow", "yellow") .. dot) ..
			"Perform a " .. i("Rushed") .. " action to exit the highlighted " .. b("Locker") .. " to activate a special ability:" ..
			list(
				b("Prevents") .. " your Aura from being revealed for " .. clro("#durationEffect") .. dot,
				"Grants invisibility for " .. clro("#durationEffect") .. dot,
				"Grants a " .. clro("#haste") .. space .. effects("item", "Eye of Vecna", ils.haste) .. " for " .. clro("#durationHaste") .. dot,
				"Causes you to suffer from the " .. effects("item", "Eye of Vecna", ils.broken) .. " for " .. clro("#broken") .. dot) ..
			"The #name can retrieved from a " .. iconLink("Treasure Chests") .. " when rolling a " .. clro("#diceRoll") .. " upon opening it." .. nlp ..
			loadoutStrings.limitedFooterVecna
    },
    ["Hand of Vecna"] = {
        desc = 
            loadoutStrings.limitedHeaderVecna .. nlp ..
			"Press the " .. loadoutStrings.useItemButton .. " to attune to the #name:" ..
			list(
				"Triggers " .. i(link("Killer Instinct")) .. " for " .. clror("#killerInstinct") .. dot,
				"Grants " .. b("The Lich") .. " the ability to kill you by his own hand, once you have accumulated " .. clro("#hookStages") .. space .. i("Hook Stages") .. " and are in the " .. iconLink(ils.dyingState) .. dot) ..
			"While healthy, you benefit from the following effect:" ..
			list("The " .. iconLink(ils.aura) .. " of whichever " .. iconLink(ils.locker) .. " is nearest to your current location is revealed to you and highlighted in " .. bclr("yellow", "yellow") .. dot) ..
			"Perform a " .. i("Rushed") .. " action to enter the highlighted " .. b("Locker") .. " to activate a special ability:" ..
			list(
				"Instantly teleports you to a different " .. b("Locker") .. " at least " .. clro("#teleport") .. " away.",
				"Triggers a " .. i(link("Loud Noise Notification")) .. " at that location.",
				"Removes " .. clro("#healthState") .. space .. iconLink(ils.healthState) .. dot,
				"Causes you to suffer from the " .. effects("item", "Hand of Vecna", ils.broken) .. " for " .. clro("#broken") .. dot) ..
			"The #name can retrieved from a " .. iconLink("Treasure Chests") .. " when rolling a " .. clro("#diceRoll") .. " upon opening it." .. nlp ..
			loadoutStrings.limitedFooterVecna
    },
    ["Fragile Mirror"] = {
        desc = 
            loadoutStrings.limitedHeader .. nlp ..
			"A fragile pocket mirror pulled from the first " .. bclr(16, "White Glyph") .. dot .. br ..
			"Its surface is broken." ..
			list(
				"Must be carried to the " .. iconLink(ils.basement) .. " without performing any of the following interactions:",
				nbullet .. i("Rushed") .. " Actions of any kind.",
				nbullet .. "Falling from height.",
				nbullet .. "Dropping the " .. b("Item") .. dot,
				"Shatters when attempting to escape the Trial with it.") ..
			loadoutStrings.limitedFooter
    },
    ["Candelabra"] = {
        desc = 
            loadoutStrings.limitedHeader .. nlp ..
			"In the darkest of castles, any light is a precious commodity." .. nlp ..
			"All Survivors start the Trial with a #name held in hand." ..
			list(
				"Additional " .. i("Candelabras") .. " may be found in " .. iconLink(ils.chests) .. " located in the environment.",
				"The " .. iconLink(ils.auras) .. " of all " .. i("Candelabras") .. " placed in the environment are revealed to all Survivors in " .. bclr("white", "white") .. " at all times.",
				"Pushes back the Fog as a passive effect when held.") ..
			"Press and hold the " .. loadoutStrings.useItemButton .. " while holding the #name to benefit from the following effects:" ..
			list(
				clror("90 Charges") .. dot,
				"The Aura of the nearest incomplete " .. b("Generator") .. " is revealed to you.",
				"The " .. i(link("Survivor Activity HUD")) .. " is displayed to you, but without any visible Progression.") ..
			"Place the #name on top of a " .. iconLink(ils.generator) .. " to benefit from the following effects:" ..
			list(
				"The Aura of that " .. b("Generator") .. " is revealed to all Survivors within " .. clro("#radius") .. dot,
				"Completing that " .. b("Generator") .. " causes it to " .. b("suppress") .. " the Killer's ability to read the Auras of all remaining incomplete " .. b("Generators") .. " for " .. clro("#duration") .. " or until the #name is removed from it by any means.",
				"Can be destroyed by the Killer when placed on " .. b("Generators") .. dot) .. 
			"The #name is only available for use in the " .. i("Lights Out - Castlevania") .. " Modifier Event." .. nlp ..
			loadoutStrings.limitedFooter
    },
    ["Lantern"] = {
        desc = 
            quote("A light to shine the way, illuminating even the most palpable darkness.") .. nlp ..
            "Press and hold the " .. loadoutStrings.useItemButton .. " while holding the #name to benefit from the following effects:" ..
			list(
				clror("90 Charges") .. dot,
				"The Aura of the nearest incomplete " .. b("Generator") .. " is revealed to you.",
				"The " .. i(link("Survivor Activity HUD")) .. " is displayed to you, but without any visible Progression.",
				iconLink(ils.pallets) .. ", " .. iconLink(ils.windows) .. " and " .. iconLink(ils.breakableWalls) .. " within " .. clro("32 metres") .. " have their aura revealed" .. dot) ..
			"Place the #name on top of a " .. iconLink(ils.generator) .. " to benefit from the following effects:" ..
			list(
				"The Aura of that " .. b("Generator") .. " is revealed to all Survivors within " .. clro("#radius") .. dot,
				"Completing that " .. b("Generator") .. " causes it to " .. b("suppress") .. " the Killer's ability to read the Auras of all remaining incomplete " .. b("Generators") .. " for " .. clro("#duration") .. " or until the #name is removed from it by any means.",
				"Can be destroyed by the Killer when placed on " .. b("Generators") .. dot) .. 
			"The #name is only available for use in the " .. i("Lights Out") .. " Modifier Event." .. nlp ..
			loadoutStrings.limitedFooter
    },
    ["Void Crystal"] = {
        desc = 
            loadoutStrings.limitedHeader .. nlp ..
            "Can be retrieved from the " .. b("Void Well") .. " in exchange for " .. clror("#voidEnergyCost") .. " and has " .. clro("#charges") .. dot .. br ..
			"Press the " .. loadoutStrings.useItemButton .. " to shatter the #name at your feet and release a thick " .. i("Fog Cloud") .. colon ..
			list(
				"Expands to its maximum size of " .. clro("#size(1)") .. " over " .. clro("#size(2)") .. dot,
				"Lasts for " .. clro("#duration") .. dot,
				"Obscures visibility and sounds for all Players within its " .. i("Area of Effect") .. dot,
				"Grants special benefits to its user:",
				nbullet .. "Grants them full invisibility while inside the " .. i("Fog Cloud") .. " and their own " .. iconLink(ils.aura) .. " is revealed to them, highlighted in " .. bclr("white", "white") .. dot,
				nbullet .. b("Suppresses") .. " the creation of their " .. iconLink(ils.scratchMarks) .. " while within " .. clro("#scratchMarks") .. " of the centre of the " .. i("Fog Cloud") .. dot) ..
			"Press the " .. loadoutStrings.useItemButton .. " while standing next to an incomplete " .. iconLink(ils.generator) .. " to lay the #name atop of it:" ..
			list(
				"Automatically repairs the " .. b("Generator") .. " at a rate of " .. clro("#repair(1)") .. " for a maximum of " .. clro("#repair(2)") .. dot,
				nbullet .. "This disables the ability to manually repair that " .. b("Generator") .. " while active.",
				nbullet .. "The Killer can stop the auto-repair prematurely by damaging that " .. b("Generator") .. ", which destroys the #name.") ..
			"The #name is only available during " .. link("Halloween Events") .. dot .. nlp ..
			loadoutStrings.limitedFooter
    },
    ["Fog Crystal"] = {
        desc = 
            loadoutStrings.limitedHeader .. nlp ..
            quote("Cold to the touch, the crystal vibrates from the force contained within.") .. nlp ..
			"Press the " .. loadoutStrings.useItemButton .. " to drop the #name at your feet, causing it to shatter and release a thick fog with a radius of " .. clror("#fogRadius") .. colon ..
			list(
				"Expands its " .. i("Area of Effect") .. " from " .. clro("#AOE_min") .. " to " .. clro("#AOE_max") .. " over " .. clro("#AOE_grow") .. dot,
				"Lingers at its maximum radius for " .. clro("#AOE_linger") .. dot,
				"Shrinks and dissipates over " .. clro("#AOE_shrink") .. dot) ..
			"Survivors inside the " .. i("Area of Effect") .. " benefit from the following effect:" ..
			list(b("Suppresses") .. " the creation of their " .. iconLink(ils.scratchMarks) .. dot) ..
			"The #name has " .. clro("#charge") .. " and can only be found in " .. iconLink(ils.chests) .. " during the " .. i(link("2v8")) .. " Event." .. nlp ..
			loadoutStrings.limitedFooter
    },
    ["Invoking Salt"] = {
    	desc =
    	    loadoutStrings.limitedHeader .. nlp ..
    	    quote("Ground to dust and imbued with arcane power.") .. nlp ..
    	    "Press the " .. loadoutStrings.useItemButton .. " to start performing a " .. clror("#duration(1)") .. " interaction that places the #name on the ground." .. nlp ..
    	    "Once placed, the #name acts like an " .. i("Invocation") .. dot .. nlp ..
    	    "This " .. i("Invocation") .. " takes " .. clro("#duration(2)") .. " to complete" .. dot .. space .. "For each additional Survivor performing the interaction, Survivors are applied a " .. clro("#penalty") .. " efficiency penalty." .. nlp ..
    	    "Once the " .. i("Invocation") .. " is completed, the following effects apply to all Survivors who completed it:" ..
    	    list(
    	    	"Instantly grants their " .. b("Unlockable Skill") .. dot,
    	    	"Grants a " .. clro("#effect(1)") .. space .. effects("item", "Invoking Salt", ils.haste) .. " for " .. clro("#haste") .. dot,
    	    	nbullet .. "Every " .. clro("#duration(3)") .. " this bonus is reduced by " .. clro("#effect(2)") .. dot) ..
    	    "The #name can only be found in " .. iconLink(ils.chests) .. " during the " .. i(link("2v8")) .. " Event." .. nlp ..
			loadoutStrings.limitedFooter
    }
}


---------------------------------------------     ██████╗ ███████╗███████╗███████╗██████╗ ██╗███╗   ██╗ ██████╗ ███████╗    ---------------------------------------------
---------------------------------------------    ██╔═══██╗██╔════╝██╔════╝██╔════╝██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝    ---------------------------------------------
---------------------------------------------    ██║   ██║█████╗  █████╗  █████╗  ██████╔╝██║██╔██╗ ██║██║  ███╗███████╗    ---------------------------------------------
---------------------------------------------    ██║   ██║██╔══╝  ██╔══╝  ██╔══╝  ██╔══██╗██║██║╚██╗██║██║   ██║╚════██║    ---------------------------------------------
---------------------------------------------    ╚██████╔╝██║     ██║     ███████╗██║  ██║██║██║ ╚████║╚██████╔╝███████║    ---------------------------------------------
---------------------------------------------     ╚═════╝ ╚═╝     ╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝    ---------------------------------------------

p.offeringDescriptions = {
--	["Example layout"] = {
--		id = number,
--		desc = 
--			"Description"
--	},
	["Annotated Blueprint"] = {
		desc =
			"Grants the following effect at the start of the Trial:" ..
			list(
				b("Increases") .. " the likelihood of the " .. iconLink(ils.hatch) .. " spawning by the " .. link("Killer Shack") .. " by " .. clror("+100 %") .. ", if it is available.") ..
 			quote("Essential information is scribbled along the side, but by whom?") 
	},
	["Ardent Raven Wreath"] = {
		desc =
			"Grants " .. clror("+100 %") .. " bonus Bloodpoints in the " .. iconLink(ils.deviousness) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("Crafted with a fiery, undying passion out of blackened branches and coals, this wreath calls on The Entity's blessing for more blood.") 
	},
	["Ardent Shrike Wreath"] = {
		desc =
			"Grants " .. clror("+100 %") .. " bonus Bloodpoints in the " .. iconLink(ils.sacrifice) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("Crafted with a fiery, undying passion out of sticks, strings and bones, this wreath calls on The Entity's blessing for more blood.") 
	},
	["Ardent Spotted Owl Wreath"] = {
		desc =
			"Grants " .. clror("+100 %") .. " bonus Bloodpoints in the " .. iconLink(ils.hunter) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("Crafted with a fiery, undying passion out of sharp metals, ropes and feathers, this wreath calls on The Entity's blessing for more blood.") 
	},
	["Ardent Tanager Wreath"] = {
		desc =
			"Grants " .. clror("+100 %") .. " bonus Bloodpoints in the " .. iconLink(ils.brutality) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("Crafted with a fiery, undying passion out of bloody sticks and guts, this wreath calls on The Entity's blessing fore more blood.") 
	},
	["Azarov's Key"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
			quote("A broken key pertaining to a vehicle of unknown brand." .. br .. "A key-chain attached to it identifies the owner as a certain 'A. Azarov'") 
	},
	["BBQ Invitation"] = {
		desc =
			"Has the distinct aroma of burnt flesh." .. nlp ..
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effects:" ..
			list(
				"Grants " .. clror("+100 %") .. " bonus Bloodpoints for hooking Survivors onto " .. b("Summer Hooks") .. dot,
				"Grants " .. clro("+100 %") .. " bonus Bloodpoints for repairing " .. b("Summer Generators") .. dot) ..
			loadoutStrings.bonusBPDuringTrial .. nlp ..
			"#name was only available during the " .. i("Scorching Summer BBQ") .. " 2023 Summer Event." .. nlp ..
 			quote("Kick back and relax in the moonlight with an ice cold drink and some barbecued meat." .. br .. "The Entity has invited you to enjoy yourself this fine evening.") 
	},
	["Black Salt Statuette"] = {
		desc =
			"Unlocks the ability to attempt " .. i("Self-Unhooks") .. " during the first " .. i("Hook Stage") .. " for all Survivors:" ..
			list(b("Increases") .. " the " .. iconLink("Luck") .. " at succeeding them by " .. clror("#effect") .. " for all Survivors.") ..
 			quote("A friable miniature statuette made of black salt representing a woman in a kneeling position offering a gift." .. br .. "Some believe it brings good fortune.") 
	},
	["Black Splinter"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " to grant you the following:" .. 
			list(
				"Play as The " .. iconLink("Shape") .. " in the next Trial instead of your selected Killer.",
				nbullet .. "Selected " .. iconLink("Perks") .. " or " .. iconLink("Add-ons") .. " are automatically unequipped.") ..
 			quote("He came home!", "Dr Sam Loomis") 
	},
	["Black Ward"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(
				"Causes your " .. iconLink(ils.addons) .. " to not be consumed after ending the Trial.") ..
 			quote("Hear my voice, spare my ways, protect me from the void.") 
	},
	["Bloodied Blueprint"] = {
		desc =
			"Grants the following effects at the start of the Trial:" ..
			list(
				b("Increases") .. " the likelihood of the " .. iconLink(ils.basement) .. " spawning in the " .. link("Killer Shack") .. " by " .. clror("+100 %") .. ", if it is available.",
				"The " .. iconLink(ils.auras) .. " of the " .. b("Basement Hooks") .. " are revealed to you for " .. clro("20 seconds") .. dot) ..
 			quote("Spatters of dried blood partially conceal the design.") 
	},
	["Bloody Party Streamers"] = {
		desc =
			"Grants " .. clror("+100 %") .. " bonus Bloodpoints in all " .. i("Scoring Categories") .. " to all Players." ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("A reminder of a bloody good time when people came together, but left screaming.") 
	},
	["Bound Envelope"] = {
		desc =
			"Grants " .. clror("+25 %") .. " bonus Bloodpoints in all " .. i("Scoring Categories") .. " to all Survivors." ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("An opened envelope re-sealed and bound with four coloured ribbons.") 
	},
	["Bog Laurel Sachet"] = {
		desc =
			"Grants " .. clror("+50 %") .. " bonus Bloodpoints in the " .. iconLink(ils.objectives) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("A palm-sized hand sewn sachet filled with dry leaves." .. br .. "Releases a faint tea-like aroma.") 
	},
	["Bone Splinter"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " to grant you the following:" .. 
			list(
				"Play as The " .. iconLink("Cannibal") .. " in the next Trial instead of your selected Killer.",
				nbullet .. "Selected " .. iconLink("Perks") .. " or " .. iconLink("Add-ons") .. " are automatically unequipped.") ..
 			quote("You like this face?", "Hitchhiker") 
	},
	["Cattle Tag 28"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("A blood stained cattle tag identified with the number '28'.") 
	},
	["Cattle Tag 81"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("A blood stained cattle tag identified with 'Coldwind Farm' and the number '81'.") 
	},
	["Chalk Pouch"] = {
		desc =
			"Unlocks the ability to attempt " .. i("Self-Unhooks") .. " during the first " .. i("Hook Stage") .. colon ..
			list(b("Increases") .. " your personal " .. iconLink("Luck") .. " at succeeding them by " .. clror("#effect") .. dot) ..
 			quote("A small cotton pouch filled with white chalky powder of unknown origin." .. br .. "Some believe it brings good fortune.") 
	},
	["Charred Wedding Photograph"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("A burned portrait of a couple on their wedding day, the faces are completely charred and unidentifiable.") 
	},
	["Children's Book"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("An ancient and decrepit story book which pages have been lost to the elements.") 
	},
	["Clear Reagent"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Reduces") .. " the thickness of the " .. link("Dark Mist") .. " by " .. clror("-50 %") .. dot) ..
 			quote("The Mist rolls in, traps all in its deep madness." .. br .. "There is no running, no escape, no asylum, except for the clear waters of the pond lost in the forest.", "Unknown, Notebook") 
	},
	["Coconut Scream Pie"] = {
		desc =
			quote("A metallic taste overpowers the coconut.") .. nlp ..
			"All Players benefit from the following primary effect:" ..
			list(
				"Grants " .. clror("#percentage") .. " bonus Bloodpoints in all " .. i("Scoring Categories") .. dot,
				nbullet .. loadoutStrings.bonusBPAfterTrial .. dot) ..
			"Additionally, you benefit from the following secondary effect:" ..
			list("The " .. iconLink(ils.aura) .. " of the " .. iconLink("Invitation Pillar") .. " is revealed to you within " .. clro("#aura") .. dot) ..
			"#name was only available during the " .. i("Ninth Year Anniversary") .. " Anniversary Event." .. nlp ..
 			quote("The secret ingredient is love... wait, no, that's blood. Happy Anniversary!", "The Dead by Daylight Team") 
	},
	["Cream Chalk Pouch"] = {
		desc =
			"Unlocks the ability to attempt " .. i("Self-Unhooks") .. " during the first " .. i("Hook Stage") .. colon ..
			list(b("Increases") .. " your personal " .. iconLink("Luck") .. " at succeeding them by " .. clror("#effect") .. dot) ..
 			quote("A small cotton pouch half-filled with a cream coloured chalky powder of unknown origin." .. br .. "Releases a faint herbal aroma. Some believe it brings good fortune.") 
	},
	["Crescent Moon Bouquet"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Reduces") .. " the brightness of the " .. link("Moonlight") .. " to a " .. clror("dimmed") .. " level.") ..
 			quote("The moon slowly fades into a smile as if to say:" .. br .. "'Don't worry, your secret is safe with me.'" .. br .. "Or is it a grin?") 
	},
	["Crispleaf Amaranth Sachet"] = {
		desc =
			"Grants " .. clror("+50 %") .. " bonus Bloodpoints in the " .. iconLink(ils.survival) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("A palm-sized hand-sewn sachet stuffed with bead-like grain." .. br .. "Amaranth is said to be everlasting.") 
	},
	["Crow's Eye"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("The dark, beady eye shifts back and forth as if searching for a bloody strip of carrion.") 
	},
	["Cursed Seed"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effects:" ..
			list(
				b("Increases") .. " the number of " .. b("Tangled Hooks") .. " in the environment by " .. clror("+1") .. dot,
				b("Increases") .. " the number of " .. b("Tangled Generators") .. " in the environment by " .. clro("+1") .. dot,
				"Grants bonus Bloodpoints for hooking Survivors for the first time onto a " .. b("Tangled Hook") .. dot,
				"Grants bonus Bloodpoints for repairing a " .. b("Tangled Generator") .. dot) ..
			loadoutStrings.bonusBPDuringTrial .. nlp ..
			"#name was only available during the " .. i("The Midnight Grove") .. " 2021 Halloween Event." .. nlp ..
 			quote("The seed crackles as if what is within is attempting to burst free.") 
	},
	["Cut Coin"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Reduces") .. " the number of " .. iconLink(ils.chests) .. " in the environment by " .. clror("-2") .. dot) ..
 			quote("Two halves of a thick metallic coin.") 
	},
	["Cypress Memento Mori"] = {
		desc =
			"Calls upon The Entity for the following effect:" ..
			list("Grants the ability to kill the " .. clror("Last Survivor Standing") .. " once they are in the Dying State.") ..
 			quote("You worked well, the last one is yours.") 
	},
	["Damaged Photo"] = {
		desc =
			b("28 August 1996") .. nlp ..
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
			quote("A dormant darkness lies beneath his childlike smile, about to be awakened.") 
	},
	["Decrepit Clapboard"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("A mouldy and rotten beaded oak clapboard like the ones found on most houses of Haddonfield.") 
	},
	["Devout Raven Wreath"] = {
		desc =
			"Grants " .. clror("+75 %") .. " bonus Bloodpoints in the " .. iconLink(ils.deviousness) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("Devoutly crafted out of blackened branches and coals, this wreath calls on The Entity's blessing for more blood.") 
	},
	["Devout Shrike Wreath"] = {
		desc =
			"Grants " .. clror("+75 %") .. " bonus Bloodpoints in the " .. iconLink(ils.sacrifice) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("Devoutly crafted out of sticks, strings and bones, this wreath calls on The Entity's blessing for more blood.") 
	},
	["Devout Spotted Owl Wreath"] = {
		desc =
			"Grants " .. clror("+75 %") .. " bonus Bloodpoints in the " .. iconLink(ils.hunter) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("Devoutly crafted out of sharp metals, rope and features, this wreath calls on The Entity's blessing for more blood.") 
	},
	["Devout Tanager Wreath"] = {
		desc =
			"Grants " .. clror("+75 %") .. " bonus Bloodpoints in the " .. iconLink(ils.brutality) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("Devoutly crafted out of sticks and guts, this wreath calls on The Entity's blessing for more blood.") 
	},
	["Shattered Bottle"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("Ain't much for holding a drink no more, but it can sure make a mess of a fella's throat.") 
	},
	["Ebony Memento Mori"] = {
		desc =
			"Calls upon The Entity for the following effect:" ..
			list("Grants the ability to kill " .. clror("all Survivors") .. " with " .. clro("#hookStageCount") .. space .. i("Hook Stages") .. " once they are in the Dying State.") ..
 			quote("I could swear It spoke to the beast." .. br .. "It came to a halt, as if calmly listening to the leaves rustling, and then... grinned.") 
	},
	["Emergency Certificate"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("A yellow carbon-copy certificate which admits a patient into immediate detention for emergency treatment." .. br .. "Copied information smudged and unreadable.") 
	},
	["Escape! Cake"] = {
		desc =
			"Grants " .. clror("+100 %") .. " bonus Bloodpoints in all " .. i("Scoring Categories") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("This picture of a cake sure is real.") 
	},
	["Faint Reagent"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the thickness of the " .. link("Dark Mist") .. " by " .. clror("+25 %") .. dot) ..
 			quote("Paralysed, I stand in the cold as death lingers.") 
	},
	["Fragrant Bog Laurel"] = {
		desc =
			"Grants " .. clror("+100 %") .. " bonus Bloodpoints in the " .. iconLink(ils.objectives) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("A beautiful purple flower that grows in the midst of the tainted swamp." .. br .. "Releases a strong tea-like aroma.") 
	},
	["Fragrant Crispleaf Amaranth"] = {
		desc =
			"Grants " .. clror("+100 %") .. " bonus Bloodpoints in the " .. iconLink(ils.survival) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("The pale green leaves are highlighted with peculiar crimson veins." .. br .. "Amaranth is said to be everlasting.") 
	},
	["Fragrant Primrose Blossom"] = {
		desc =
			"Grants " .. clror("+100 %") .. " bonus Bloodpoints in the " .. iconLink(ils.altruism) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("Golden flowers harvested at their peak." .. br .. "Releases a strong earthy and comforting aroma.") 
	},
	["Fragrant Sweet William"] = {
		desc =
			"Grants " .. clror("+100 %") .. " bonus Bloodpoints in the " .. iconLink(ils.boldness) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("A bunch of flowers with pink petals and a blood red core." .. br .. "Releases a strong spicy, clove-like scent.") 
	},
	["Fresh Bog Laurel"] = {
		desc =
			"Grants " .. clror("+75 %") .. " bonus Bloodpoints in the " .. iconLink(ils.objectives) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("A beautiful purple flower that grows in the midst of the tainted swamp." .. br .. "Releases a mild tea-like aroma.") 
	},
	["Fresh Crispleaf Amaranth"] = {
		desc =
			"Grants " .. clror("+75 %") .. " bonus Bloodpoints in the " .. iconLink(ils.survival) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("The pale green leaves are highlighted with peculiar crimson veins." .. br .. "Amaranth is said to be everlasting.") 
	},
	["Fresh Primrose Blossom"] = {
		desc =
			"Grants " .. clror("+75 %") .. " bonus Bloodpoints in the " .. iconLink(ils.altruism) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("Golden flowers harvested at their peak." .. br .. "The primrose opens at the very last moment before the sun gives place to the night.") 
	},
	["Fresh Sweet William"] = {
		desc =
			"Grants " .. clror("+75 %") .. " bonus Bloodpoints in the " .. iconLink(ils.boldness) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("A bunch of flowers with pink petals and a blood red core." .. br .. "Releases a spicy, clove-like scent.") 
	},
	["Frightful Flan"] = {
		desc =
			"It may be a masquerade ball, but there is no masking the foul odour of this quivering yellow mass." .. br .. "Consuming it, however, fills you with vigour." .. nlp ..
			"Grants " .. clror("+106 %") .. " bonus Bloodpoints in all " .. i("Scoring Categories") .. " to all Players." ..
			list(loadoutStrings.bonusBPAfterTrial) ..
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effects:" ..
			list(
				"The " .. iconLink(ils.aura) .. " of the " .. b("Crown Pillar") .. " is revealed to you " .. bclr("purple", "purple") .. " within " .. clro("8 metres") .. dot,
				"Triggers a map-wide auditory cue when the " .. b("Crown Pillar") .. " teleports to a new location.") ..
			"#name was only available during the " .. i("Sixth Year Anniversary") .. " Anniversary Event." .. nlp ..
 			quote("Happy Anniversary!" .. br .. "We made you this cake/pie/pudding/unspeakable horror.", "The Dead by Daylight Team") 
	},
	["Full Moon Bouquet"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the brightness of the " .. link("Moonlight") .. " to the " .. clror("brightest") .. " level.") ..
			quote("As the moon rises, the wolves howl, marking the beginning of the hunt.") 
	},
	["Fuming Cordage"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("A burnt piece of marine rope still emitting a warm black smoke.") 
	},
	["Fuming Welcome Sign"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("A welcome sign made from a coarse piece of water polished cypress board." .. br .. "The sign is charred and still fuming.") 
	},
	["Ghastly Gateau"] = {
		desc =
			"A spectacularly grim cake to mark our four years together." .. nlp ..
			"One percent tastier than a " .. i("Gruesome Gateau") .. dot .. nlp ..
			"Grants " .. clror("+104 %") .. " bonus Bloodpoints in all " .. i("Scoring Categories") .. " to all Players." ..
			list(loadoutStrings.bonusBPAfterTrial) ..
			"#name was only available during the " .. i("Fourth Year Anniversary") .. " Anniversary Event." .. nlp ..
 			quote("Happy Anniversary!" .. br .. "Here is to many more!", "The Dead by Daylight Team") 
	},
	["Glass Splinter"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " to grant you the following:" .. 
			list(
				"Play as The " .. iconLink("Pig") .. " in the next Trial instead of your selected Killer.",
				nbullet .. "Selected " .. iconLink("Perks") .. " or " .. iconLink("Add-ons") .. " are automatically unequipped.") ..
 			quote("Amanda, do not be afraid." .. br .. "Your life has just begun.", "Jigsaw") 
	},
	["Grandma's Cookbook"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("A leather-bound book containing horrible human meat recipes such as the granny-slapping good chilli.") 
	},
	["Gruesome Gateau"] = {
		desc =
			"A terrific stomach-churning cake to mark our three years together." .. nlp ..
			"Grants " .. clror("+103 %") .. " bonus Bloodpoints in all " .. i("Scoring Categories") .. " to all Players." ..
			list(loadoutStrings.bonusBPAfterTrial) ..
			"#name was only available during the " .. i("Third Year Anniversary") .. " Anniversary Event." .. nlp ..
 			quote("Happy Anniversary!" .. br .. "Here is to our three years together!", "The Dead by Daylight Team") 
	},
	["Harvest Festival Leaflet"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("A washed out informational leaflet for the '78 Haddonfield Harvest Festival." .. br .. "A large cartoon pumpkin is depicted on the front.") 
	},
	["Hawkins National Laboratory ID"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("A soggy, bloodstained identification card with a serial number.") 
	},
	["Hazy Reagent"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the thickness of the " .. link("Dark Mist") .. " by " .. clror("+50 %") .. dot) ..
 			quote("The Mist is alluring, hypnotising." .. br .. "I love it and fear it at the same time.", "Donna's Sketchbook") 
	},
	["Heart Locket"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("A silver heart locket necklace." .. br .. "The simple interior is engraved with the following: 'E+M'.") 
	},
	["Hollow Shell"] = {
		desc =
			"Grants " .. clror("+25 %") .. " bonus Bloodpoints in all " .. i("Scoring Categories") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("An unidentifiable cocoon which was breached by whatever was inside.") 
	},
	["Ichorous Loam"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("Expel malthought from your mind, from your heart, from your mouth, to prevent the darkness from corrupting your truth." .. br .. "For to let darkness find seed in your soul is to invite The Druanee.") 
	},
	["Ivory Chalk Pouch"] = {
		desc =
			"Unlocks the ability to attempt " .. i("Self-Unhooks") .. " during the first " .. i("Hook Stage") .. colon ..
			list(b("Increases") .. " your personal " .. iconLink("Luck") .. " at succeeding them by " .. clror("#effect") .. dot) ..
 			quote("A small leather pouch displaying a straight white line hand-sewn on one of its sides." .. br .. "The bag is filled with an ivory chalky powder that shines under the moonlight." .. br .. "Some believe it brings good fortune.") 
	},
	["Ivory Memento Mori"] = {
		desc =
			"Calls upon The Entity for the following effect:" ..
			list("Grants the ability to kill " .. clror("one Survivor") .. " with " .. clro("#hookStageCount") .. space .. i("Hook Stages") .. " once they are in the Dying State.") ..
 			quote("Grant me the favour of killing one.") 
	},
	["Jigsaw Piece"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("Congratulations." .. br .. "You are still alive." .. br .. "Most people are so ungrateful to be alive." .. br .. "But not you." .. br .. "Not anymore.") 
	},
	["Lunacy Ticket"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("A worn and faded-out ticket of paper with unreadable information.") 
	},
	["MacMillan Ledger Page"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("A torn and faded-out ledger page with unreadable information except for the MacMillan stamp.") 
	},
	["MacMillan's Phalanx Bone"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("MacMillan's skeletal remains were found in the basement of the mine's storehouse." .. br .. "His leg bones shattered into pieces and a mining hammer lying in his lap.") 
	},
	["Mary's Letter"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("In my restless dreams, I see that town.") 
	},
	["Mouldy Oak"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Reduces") .. " the minimum distance between Spawn locations for " .. iconLink("Hooks") .. " by " .. clror("-1.5 metres") .. dot) ..
 			quote("A damp and decaying piece of oak replete with mould.") 
	},
	["Muddy Splinter"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " to grant you the following:" .. 
			list(
				"Play as The " .. iconLink("Hag") .. " in the next Trial instead of your selected Killer.",
				nbullet .. "Selected " .. iconLink("Perks") .. " or " .. iconLink("Add-ons") .. " are automatically unequipped.") ..
 			quote("Avoid walking in the mud or The Hag will eat your bones.") 
	},
	["Murky Reagent"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the thickness of the " .. link("Dark Mist") .. " by " .. clror("+75 %") .. dot) ..
			quote("The Mist seems to protect us from the beast, but it is a poison, a cancer, filling us with darkness and insanity.", "Unknown, Notebook")
	},
	["New Moon Bouquet"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Reduces") .. " the brightness of the " .. link("Moonlight") .. " to the " .. clror("darkest") .. " level.") ..
 			quote("Better go back to sleep, there is no moon this night.") 
	},
	["P. Elliott Lunacy Ticket"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("A pink paper ticket identifying Philip Elliott as to be transferred to Crotus Prenn Asylum.") 
	},
	["Painted River Rock"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("A slick and soft rock, polished by a stream." .. br .. "Decorated with red, black and white paint to depict a serious looking bear.") 
	},
	["Petrified Oak"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the minimum distance between Spawn locations for " .. iconLink("Hooks") .. " by " .. clror("+1 metre") .. dot) ..
 			quote("A deteriorating piece of petrified wood.") 
	},
	["Primrose Blossom Sachet"] = {
		desc =
			"Grants " .. clror("+50 %") .. " bonus Bloodpoints in the " .. iconLink(ils.altruism) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("A palm-sized hand-sewn sachet containing four gold petals." .. br .. "The primrose opens at the very last moment before the sun gives place to the night.") 
	},
	["Psychiatric Assessment Report"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("A Psychiatric report signed by Herman Carter." .. br .. "It describes the memory deterioration of a patient and suggestions for next steps in the procedure.") 
	},
	["Pustula Petals"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effects:" ..
			list(
				b("Increases") .. " the number of " .. b("Blighted Hooks") .. " in the environment by " .. clror("+1") .. dot,
				b("Increases") .. " the number of " .. b("Blighted Generators") .. " in the environment by " .. clro("+1") .. dot,
				"Grants bonus Bloodpoints for hooking Survivors for the first time onto a " .. b("Blighted Hook") .. dot,
				"Grants bonus Bloodpoints for repairing a " .. b("Blighted Generator") .. dot) ..
			loadoutStrings.bonusBPDuringTrial .. nlp ..
			"#name was only available during the " .. i("The Eternal Blight") .. " 2020 Halloween Event." .. nlp ..
 			quote("The Pustulas fill the air with a rancid odour that some may find enticing.") 
	},
	["Putrid Oak"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Reduces") .. " the minimum distance between Spawn locations for " .. iconLink("Hooks") .. " by " .. clror("-3.5 metres") .. dot) ..
 			quote("A ruined piece of oak oozing with a black putrescent liquid.") 
	},
	["Quarter Moon Bouquet"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the brightness of the " .. link("Moonlight") .. " to a " .. clror("brighter") .. " level.") ..
 			quote("The old moon shows her face, looking down on the preys.") 
	},
	["Raven Wreath"] = {
		desc =
			"Grants " .. clror("+50 %") .. " bonus Bloodpoints in the " .. iconLink(ils.deviousness) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("Crafted out of blackened branches and coals, this wreath calls on The Entity's blessing for more blood.") 
	},
	["Red Envelope"] = {
		desc =
			"A gesture of generosity to bring good fortune to the unfortunate." .. nlp ..
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effects:" ..
			list(
				"Spawns " .. clror(1) .. space .. b("Red Envelope") .. " per Player.",
				nbullet .. "The " .. iconLink("Aura") .. " of your " .. b("Red Envelope") .. " is revealed to you at the start of the Trial.",
				nbullet .. "Interacting with your " .. b("Red Envelope") .. " reveals its Aura to all other Players in the Trial until it is claimed.",
				nbullet .. "Opening another Player's " .. b("Red Envelope") .. " triggers the " .. i("Rabbit's Blessing") .. " Score Event, which awards a semi-random amount of " .. iconLink("Bloodpoints") .. dot,
				nbullet .. "When another Player opens your " .. b("Red Envelope") .. " during the Trial, you are awarded Bloodpoints and a Cosmetic from the " .. i("Moonlight Burrow") .. " Collection.",
				"As Killer, hooking a Survivor onto a " .. b("Lunar Hook") .. " triggers the " .. i("Lunar Celebration Hook") .. " Score Event, which awards bonus Bloodpoints.",
				"As Survivor, finishing a " .. b("Lunar Generator") .. " triggers the " .. i("Lunar Celebration Generator") .. " Score Event, which awards bonus Bloodpoints.") ..
			loadoutStrings.bonusBPDuringTrial .. nlp ..
			"#name was only available during the " .. i("Moonlight Burrow") .. " 2023 Lunar Event."
	},
	["Rotten Oak"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Reduces") .. " the minimum distance between Spawn locations for " .. iconLink("Hooks") .. " by " .. clror("-2.5 metres") .. dot) ..
 			quote("A decomposing piece of oak in which strange markings have been etched.")
	},
	["RPD Badge"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("If we stay here that monster will find us.")
	},
	["Sacrificial Cake"] = {
		desc =
			"A revolting cake that marks our five years together." .. br .. 
			"Grants " .. clror("+105 %") .. " bonus Bloodpoints in all " .. i("Scoring Categories") .. " to all Players." ..
			list(loadoutStrings.bonusBPAfterTrial) ..
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effects:" ..
			list(
				"The " .. iconLink(ils.aura) .. " of the " .. b("Crown Pillar") .. " is revealed to you in " .. bclr("purple", "purple") .. " within " .. clro("8 metres") .. dot,
				"Triggers a map-wide auditory cue when the " .. b("Crown Pillar") .. " teleports to a new location.") ..
			"#name was only available during the " .. i("Fifth Year Anniversary Event") .. dot .. nlp ..
 			quote("Happy Anniversary!" .. br .. "We are dying to celebrate many more with you!", "The Dead by Daylight Team") 
	},
	["Sacrificial Ward"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list("Causes all Realm or Map Selection " .. iconLink("Offerings") .. " burnt by other Players to be rejected.") ..
			"#name is trumped only when all other Players burn the identical Realm or Map Selection Offering." .. nlp ..
 			quote("With blind eyes, we surrender our will and appeal to you for guidance.")
	},
	["Salt Pouch"] = {
		desc =
			"Unlocks the ability to attempt " .. i("Self-Unhooks") .. " during the first " .. i("Hook Stage") .. " for all Survivors:" ..
			list(b("Increases") .. " the " .. iconLink("Luck") .. " at succeeding them by " .. clror("#effect") .. " for all Survivors.") ..
 			quote("A small cotton pouch filled with black salt crystals." .. br .. "Some believe it brings good fortune. Don't spill it.") 
	},
	["Scratched Coin"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Reduces") .. " the number of " .. iconLink(ils.chests) .. " in the environment by " .. clror("-1") .. dot) ..
 			quote("A defaced coin of unknown origin.") 
	},
	["Sealed Envelope"] = {
		desc =
			"Grants " .. clror("+25 %") .. " bonus Bloodpoints in all " .. i("Scoring Categories") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("An unaddressed and unopened envelope yellowed by its time." .. br .. "Its message will never be known.") 
	},
	["Shattered Glasses"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("Bent reading glasses." .. br .. "Speckles of dried blood can be seen on the shattered lenses.") 
	},
	["Shiny Coin"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the number of " .. iconLink(ils.chests) .. " in the environment by " .. clror("+2") .. dot) ..
 			quote("A clean and polished piece of gold.") 
	},
	["Shock Splinter"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " to grant you the following:" .. 
			list(
				"Play as The " .. iconLink("Doctor") .. " in the next Trial instead of your selected Killer.",
				nbullet .. "Selected " .. iconLink("Perks") .. " or " .. iconLink("Add-ons") .. " are automatically unequipped.") ..
 			quote("Your secrets are safe with me.") 
	},
	["Shredded Plate"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("A heavily rusted, bent and torn metal sheet.") 
	},
	["Shrike Wreath"] = {
		desc =
			"Grants " .. clror("+50 %") .. " bonus Bloodpoints in the " .. iconLink(ils.sacrifice) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("Crafted out of sticks, strings and bones, this wreath calls on The Entity's blessing for more blood.") 
	},
	["Shroud of Union"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list("You start the Trial together with someone else.") ..
 			quote("A knotted piece of fabric.") 
 	},
	["Shroud of Separation"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list("All Survivors start the Trial separated from one another.") ..
 			quote("A square and washed out piece of fabric with small knots on each end.") 
	},
	["Shroud of Vanishing"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Nullifies") .. " any " .. iconLink("Offerings") .. " that would change the starting locations of Survivors.") ..
 			quote("In an instant, their power was lost.")
	},
	["Signed Ledger Page"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("A faded-out ledger page referring to mining related equipment and other transactions." .. br .. "Signed by Archie MacMillan.") 
	},
	["Smoking Splinter"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " to grant you the following:" .. 
			list(
				"Play as The " .. iconLink("Nightmare") .. " in the next Trial instead of your selected Killer.",
				nbullet .. "Selected " .. iconLink("Perks") .. " or " .. iconLink("Add-ons") .. " are automatically unequipped.")
	},
	["Spotted Owl Wreath"] = {
		desc =
			"Grants " .. clror("+50 %") .. " bonus Bloodpoints in the " .. iconLink(ils.hunter) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("Crafted out of sharp metals, ropes and feathers, this wreath calls on The Entity's blessing for more blood.") 
	},
	["Strode Realty Key"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("A house key, mundane in appearance." .. br .. "A cardboard key-tag attached to it reads 'Strode Real Estate', followed by a handwritten address:" .. br .. "'45 Lampkin Lane'.") 
	},
	["Survivor Pudding"] = {
		desc =
			"Grants " .. clror("+100 %") .. " bonus Bloodpoints in all " .. i("Scoring Categories") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("A heavily salted pudding...") 
	},
	["Sweet William Sachet"] = {
		desc =
			"Grants " .. clror("+50 %") .. " bonus Bloodpoints in the " .. iconLink(ils.boldness) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("A palm-sized hand-sewn sachet containing a mix of pale petals and glaucous bluish leaves." .. br .. "Releases a strong spicy, cove-like scent.") 
	},
	["Tanager Wreath"] = {
		desc =
			"Grants " .. clror("+50 %") .. " bonus Bloodpoints in the " .. iconLink(ils.brutality) .. space .. i("Scoring Category") .. dot ..
			list(loadoutStrings.bonusBPAfterTrial) ..
 			quote("Crafted out of bloody sticks and guts, this wreath calls on The Entity's blessing for more blood.") 
	},
	["Tarnished Coin"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the number of " .. iconLink(ils.chests) .. " in the environment by " .. clror("+1") .. dot) ..
 			quote("A round piece of metal which has lost all sheen.") 
	},
	["The Last Mask"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("A beautifully crafted tiger mask that would fit snug on a child's face." .. br .. "A faded note in the Cyrillic alphabet can be found scripted on the back.") 
	},
	["The Pied Piper"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("Betrayed by the town, he exacts his revenge by taking all their children.") 
	},
	["Toothy Torte"] = {
		desc =
			quote("Puts the icing in sacrificing.") .. nlp ..
			"All Players benefit from the following primary effect:" ..
			list(
				"Grants " .. clror("#percentage") .. " bonus Bloodpoints in all " .. i("Scoring Categories") .. dot,
				nbullet .. loadoutStrings.bonusBPAfterTrial .. dot) ..
			"Additionally, you benefit from the following secondary effect:" ..
			list("The " .. iconLink(ils.aura) .. " of the " .. b("Banquet Table") .. " is revealed to you within " .. clro("#aura") .. dot,
				iconLink(ils.killer) .. ": start with maximum " .. b("Poison") .. " charges" .. dot,
				iconLink(ils.survivor) .. ": start with a " .. b("Morsel") .. dot) ..
			"#name is only available during the " .. i("Tenth Year Anniversary") .. " Anniversary Event." .. nlp ..
 			quote("Chew fast, or it'll chew you right back. Thanks for celebrating with us!", "The Dead by Daylight Team") 
	},
	["Torn Blueprint"] = {
		desc =
		"Grants the following effects at the start of the Trial:" ..
			list(
				b("Increases") .. " the likelihood of the " .. iconLink(ils.basement) .. " spawning in the Landmark Building by " .. clror("+100 %") .. ", if it is available.",
				"The " .. iconLink(ils.auras) .. " of the " .. b("Basement Hooks") .. " are revealed to you for " .. clro("20 seconds") .. dot) ..
 			quote("Though brittle and torn, the design is mostly legible.") 
	},
	["Vigo's Blueprint"] = {
		desc =
			"Grants the following effect at the start of the Trial:" ..
			list(
				b("Increases") .. " the likelihood of the " .. iconLink(ils.hatch) .. " spawning by the Landmark Building by " .. clror("+100 %") .. ", if it is available.") ..
 			quote("A clever design that has the letter 'V' etched on the bottom.") 
	},
	["Vigo's Jar of Salty Lips"] = {
		desc =
			"Unlocks the ability to attempt " .. i("Self-Unhooks") .. " during the first " .. i("Hook Stage") .. " for all Survivors:" ..
			list(b("Increases") .. " the " .. iconLink("Luck") .. " at succeeding them by " .. clror("#effect") .. " for all Survivors.") ..
 			quote("A tightly sealed glass jar containing torn human lips floating in a murky brine." .. br .. "Some believe it brings good fortune.") 
	},
	["Vigo's Shroud"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list("Causes you to spawn as far away from the Killer as possible.") ..
 			quote("I found marvels through the years in The Fog, but only now do I understand how to bend The Fog's irrefragable rules.", "Vigo's Journal") 
	},
	["VIP Wristband"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to the " .. i(link("#map")) .. " Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("Mightee One Entertainment invites you to witness the future of virtual entertainment.") 
	},
	["Virginia Plate"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm.",
					nbullet .. "This " .. b("Offering") .. " modifies the Realm Selector Logic by a value of " .. clror("#effect") .. dot) ..
 			quote("A rusted and bent license plate from the state of Virginia.") 
	},
	["White Ward"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(
				"Causes your held " .. iconLink(ils.item) .. " to be protected from loss upon death.",
				nbullet .. "Causes any attached " .. iconLink(ils.addons) .. " to not be consumed upon death or escaping the Trial.") ..
 			quote("Keep me from evil, defend me, and pass away.") 
	},
	["Yamaoka Family Crest"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("You never leave a broken home." .. br .. "You only run away until the memories stop haunting you.") 
	},

	------------------------
	--       MOBILE       --
	------------------------
	
	
	["Black Tea"] = {
		desc =
			"A cup of strongly-flavoured tea." .. br .. "Despite its name, it shines red when brewed." ..
			list("Grants " .. clror("10 %") .. " bonus Character Experience.")
	},	
	["Blank Postcard"] = {
		desc =
			"A photo of a lighthouse overlooking stormy seas." .. br .. "There is no message written on it." ..
			list("Grants " .. clror("10 %") .. " bonus Character Experience to all Players in the Trial.")
	},	
	["Bloodstone Chalice"] = {
		desc =
			"A bloodstone cup, smooth and polished." .. br .. "A bloody lip mark stains the rim." ..
			list("Grants " .. clror("75 %") .. " bonus Character Experience.")
	},	
	["Bone Doll"] = {
		desc =
			"A doll made of carved bone." .. br .. "It is cream-coloured and smooth to the touch." ..
			list("Grants " .. clror("75 %") .. " bonus character experience to all players in this trial.")
	},	
	["Burdock Tea"] = {
		desc =
			"A cup of honey-coloured tea." .. br .. "The earthy scent of burdock root mingles with the steam." ..
			list("Grants " .. clror("50 %") .. " bonus Character Experience.")
	},	
	["Ceramic Chalice"] = {
		desc =
			"A ceramic cup, chipped along its rim." .. br .. "The pattern along it seems to have been thoughtfully made." ..
			list("Grants " .. clror("20 %") .. " bonus Character Experience.")
	},	
	["Clay Doll"] = {
		desc =
			"A doll sculpted with wet clay." .. br .. "It is misshaped and carelessly made." ..
			list("Grants " .. clror("10 %") .. " bonus Character Experience to all Players in the Trial.")
	},	
	["Copper Chalice"] = {
		desc =
			"A copper cup, tarnished over time." .. br .. "A revolting smell trails off it." ..
			list("Grants " .. clror("50 %") .. " bonus Character Experience.")
	},	
	["Crumpled Postcard"] = {
		desc =
			"A photo of a sunset on a desert canyon." .. br .. "There is a hopeful message on it with hints of self-doubt." ..
			list("Grants " .. clror("25 %") .. " bonus Character Experience to all Players in the Trial.")
	},	
	["Flesh Doll"] = {
		desc =
			"A doll made from a patchwork of human skin." .. br .. "Parts of it are beginning to rot." ..
			list("Grants " .. clror("100 %") .. " bonus Character Experience to all Players in the Trial.")
	},	
	["Lotus Leaf Tea"] = {
		desc =
			"A cup of tea brewed from dried lotus leaves." .. br .. "The invigorating beverage provides ample health benefits." ..
			list("Grants " .. clror("75 %") .. " bonus Character Experience.")
	},	
	["Lovers' Postcard"] = {
		desc =
			"A photo of an old Ferris wheel." .. br .. "There is an impassioned message of love on it." ..
			list("Grants " .. clror("100 %") .. " bonus Character Experience to all Players in the Trial.")
	},	
	["Milk Tea"] = {
		desc =
			"A cup of tea with a cloud of white milk swirling within." .. br .. "Removes most of the bitterness." ..
			list("Grants " .. clror("20 %") .. " bonus Character Experience.")
	},	
	["Stamped Postcard"] = {
		desc =
			"A photo of autumn trees in the afternoon." .. br .. "There is an encouraging message on it." ..
			list("Grants " .. clror("50 %") .. " bonus Character Experience to all Players in the Trial.")
	},	
	["Thorn Doll"] = {
		desc =
			"A doll made of thorny twigs." .. br .. "It is difficult to hold without drawing blood." ..
			list("Grants " .. clror("25 %") .. " bonus Character Experience to all Players in the Trial.")
	},	
	["Wooden Chalice"] = {
		desc =
			"A wooden cup, cracked and splintered." .. br .. "It vibrates with the faintest remnants of power." ..
			list("Grants " .. clror("10 %") .. " bonus Character Experience.")
	},
	["Arcane Dousing Rod"] = {
		desc =
			quote("Taps into the latent energy of The Entity's Realm to find even more concentrated pockets of power.") .. nlp ..
			"Modifies all Event-related " .. iconLink("Score Events") .. " with the following effect:" ..
			list(b("Increases") .. " the amount of " .. iconLink("Bloodpoints") .. " they award by " .. clror("#bonus") .. dot) ..
			"#name is only available during the " .. i("Haunted by Daylight") .. " Halloween Event and can only be used in Trials of the Event Queue."
	},
	["Beef Tallow Mixture"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to a Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("The stink of rotting organic matter emanates from this foul mixture, designed with the grim intent to create a fire that burns very hot and very long.") 
	},
	["Terrormisu"] = {
		desc =
			"A celebratory dessert to be eaten during the masquerade." .. br .. "Each layer is more horrifying than the last." .. nlp ..
			"Grants " .. clror("107 %") .. " bonus Bloodpoints in all Categories to all Players." ..
			list(loadoutStrings.bonusBPAfterTrial) ..
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(
				"The " .. iconLink(ils.aura) .. " of the " .. b("Masquerade Pillar") .. " is revealed to you in " .. bclr("purple", "purple") .. " within " .. clro("32 metres") .. dot) ..
			"#name was only available during the " .. i("Seventh Year Anniversary Event") .. dot .. nlp ..
 			quote("Thanks for celebrating our Anniversary! Don't ask why it's so spongy.", "The Dead by Daylight Team") 
	},
	["Alien Flora"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to the " .. i(link("#map")) .. " Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("Our arrival will change the face of this planet as we know it.", "Sarah, Science Officer") 
	},
	["Airlock Doors"] = {
		desc =
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
			list(b("Increases") .. " the chances to be sent to the " .. i(link("#map")) .. " Map in the " .. i(link("#realm")) .. " Realm to " .. clror("#effect") .. dot) ..
 			quote("You know the quarantine procedure." .. br .. "24 hours for decontamination.", "Ellen Ripley") 
	},
	["Bloodshot Eye"] = {
		desc =
			"An eye filled with, and capable of finding, strange blood." ..
			list(b("Doubles") .. " all Bloodpoints awarded for triggering " .. i(link("Score Events")) .. " related to the Event.") ..
				loadoutStrings.bonusBPDuringTrial .. nlp ..
			"#name is only available during " .. i("Spring Events") .. dot
	},
	["Screech Cobbler"] = {
		desc =
			"If you listen really closely, you can almost hear it screaming for more ice cream." .. nlp ..
			"Grants " .. clror("108 %") .. " bonus Bloodpoints in all Categories to all Players." ..
			list(loadoutStrings.bonusBPAfterTrial) ..
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effects:" ..
			list(
				b("Increases") .. " the Aura-reveal distance of the " .. b("Masquerade Pillars") .. " by " .. clro("+8 metres") .. dot,
				b("Increases") .. " the number of " .. iconLink(ils.chests) .. " in the environment by " .. clro("+1") .. dot) ..
			"#name was only available during the " .. i("Eighth Year Anniversary Event") .. dot .. nlp ..
 			quote("Happy anniversary! Hope this comfort food isn't too... discomforting.", "The Dead by Daylight Team") 
	},
	["Mistle Toes"] = {
		desc =
			"If you see these things hanging over you, the last thing you'll want is a kiss." .. nlp ..
			"Calls upon The " .. iconLink(ils.entity) .. " for the following effects:" ..
			list(
				"Start the Trial with " .. clror(12) .. space .. b("Snowskulls") .. dot,
				"Reduces the number of " .. b("Snowskulls") .. " required to charge an " .. b("Icy Snowskull") .. " by " .. clro(-1) .. dot,
				b("Doubles") .. " all Bloodpoints awarded for triggering " .. i(link("Score Events")) .. " related to the Event.",
				b("Increases") .. " the number of " .. iconLink(ils.chests) .. " in the environment by " .. clro("+1") .. dot) ..
			loadoutStrings.bonusBPDuringTrial .. nlp ..
			"#name is only available during the " .. i("Bone Chill") .. " Winter Event."
	},
}


--------------------------------------------------------    ██████╗ ███████╗██████╗ ██╗  ██╗███████╗    -----------------------------------------------------------------
--------------------------------------------------------    ██╔══██╗██╔════╝██╔══██╗██║ ██╔╝██╔════╝    -----------------------------------------------------------------
--------------------------------------------------------    ██████╔╝█████╗  ██████╔╝█████╔╝ ███████╗    -----------------------------------------------------------------
--------------------------------------------------------    ██╔═══╝ ██╔══╝  ██╔══██╗██╔═██╗ ╚════██║    -----------------------------------------------------------------
--------------------------------------------------------    ██║     ███████╗██║  ██║██║  ██╗███████║    -----------------------------------------------------------------
--------------------------------------------------------    ╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝    -----------------------------------------------------------------

p.perkDescriptions = {
--	["Example layout"] = {
--		id = "number",
--		desc =
--				-- Main description here. IMPORTANT: #pl([NUM]) is used to get the Pl values. #pn is to refer to the perk name itself. Auto-italicises it.
--			}}
--	},

	["Artefact Hunter"] = { --(UNUSED)
        desc =
                loadoutStrings.unusedPerk .. nlp ..
                loadoutStrings.unknownDesc
    },
    ["In the Dark"] = { --(UNUSED; early version of 'Knock Out')
        desc =
                loadoutStrings.unusedPerk .. nlp ..
                "This Perk would have adjusted the default range of the " .. iconLink(ils.terrorRadius) .. " based on how many Survivors were still alive in the Trial."
    },
    ["Last Standing"] = { -- (UNUSED early version of 'Left Behind')
        desc =
            	loadoutStrings.unusedPerk .. nlp ..
            	"For each Survivor that had already left the Trial by any means, #pn would grow in power:" .. 
            	list("Grants a stack-able #pl(1) bonus to all Action speeds, up to a maximum of #pl(2).")
    },
    ["Overconfidence"] = { -- (UNUSED)
        desc =
				loadoutStrings.unusedPerk .. nlp ..
                loadoutStrings.unknownDesc
    },
    ["Tough Runner"] = { -- (UNUSED)
        desc =
            	loadoutStrings.unusedPerk .. nlp ..
                loadoutStrings.unknownDesc
    },
    ["Underperform"] = { -- (UNUSED)
        desc =
            	loadoutStrings.unusedPerk .. nlp ..
                loadoutStrings.unknownDesc
    },
    ["Bitter Murmur"] = {
        desc =
                "Unlocks potential in your Aura-reading ability." .. br ..
                "Whenever a " .. iconLink(ils.generator) .. " is completed, #pn triggers its primary effect:" ..
                list("The " .. iconLink(ils.auras) .. " of any Survivors within " .. clror("#range") .. " of that " .. b("Generator") .. " are revealed to you for " .. clro("#duration") .. dot) ..
                "Once the last " .. b("Generator") .. " is completed, #pn triggers its secondary effect:" ..
                list("The Auras of all Survivors are revealed to you for #pl(1).")
                
    },
    ["Deerstalker"] = {
        desc =
                "Unlocks potential in your Aura-reading ability." .. br ..
                "Whenever a Survivor reads your " .. iconLink(ils.aura) .. ", #pn activates for the same duration as their Aura-reading action:" ..
        		list("The Aura of that Survivor is revealed to you.") ..
        		"Furthermore, the following effect triggers automatically every #pl(1):" ..
        		list("Your Aura is revealed for " .. clror("#duration") .. " to the Survivor with currently the lowest cumulative " .. i("Chase time") .. dot)
    },
    ["Distressing"] = {
        desc =
                quote("Your horrifying emanation strikes at a supernaturally long distance.") .. nlp ..
                "You benefit from the following permanent effect:" ..
                list(b("Increases") .. " your " .. iconLink(ils.terrorRadius) .. " by " .. clror("#effect"),
                	"All Survivors in your " .. b("Terror Radius") .. " repair " .. iconLink(ils.generators) .. " #pl(1) slower" .. dot)
    },
    ["Hex: No One Escapes Death"] = {
        desc =
                quote("A Hex rooting its power on hope." .. br .. "You are animated by the power of your Hex Totem when the Survivors are on the verge of escaping.") .. nlp ..
                "Once the " .. iconLink(ils.exitGates) .. " are powered, if there is still a " .. iconLink(ils.dullTotem) .. " remaining in the environment, #pn activates and lights it:" .. 
                list(
                	"Grants a #pl(1) " .. effects("perk", "Hex: No One Escapes Death", ils.haste) .. dot,
                	"Causes all Survivors to suffer from the " .. effects("perk", "Hex: No One Escapes Death", ils.exposed) .. dot) .. 
                "Once the " .. b("Status Effect") .. " is revealed to Survivors, #pn triggers the following effect:" ..
                list(
                	"The Aura of its " .. b("Hex Totem") .. " is revealed to all Survivors within " .. clror("#aura(1)") .. dot,
                	nbullet .. "This range gradually expands to " .. clro("#aura(2)") .. " over the course of " .. clro("#aura(3)") .. dot) ..
                "#pn remains inactive if no " .. b("Dull Totems") .. " are available." .. nlp ..
                loadoutStrings.hexPerkFooter .. nlp ..
                quote("And the beast became faster and more powerful as if The Entity's shadowy whips were lashing at its back.")
    },
    ["Hex: Thrill of the Hunt"] = {
        desc =
                quote("A Hex rooting its power on hope." .. br .. "The false hope of Survivors fills you with excitement and strengthens your Totems.") .. nlp ..
                loadoutStrings.hexPerkFirstTimeHook .. nlp ..
                "For each lit " .. b("Hex Totem") .. " located in the environment, gain a token." ..
                list("Hooking a Survivor causes all Totems to be " .. b("blocked") .. " by the " .. iconLink(ils.entity) .. " by a stack-able #pl(1) per Token, up to a maximum of #pl(2).") ..
                "#pn loses " .. clro("#tokenLoss") .. " whenever a " .. b("Hex Totem") .. " is cleansed." .. nlp ..
                loadoutStrings.hexPerkFooter
    },
    ["Insidious"] = {
        desc =
                "Unlocks the stealth ability." .. br ..
                "After standing still for " .. clror("#duration") .. ", #pn activates for as long as you remain stationary:" .. 
                list("Grants the " .. effects("perk", "Insidious", ils.undetectable) .. dot,
                	nbullet .. "This persists for #pl(1) once you act " .. dot)
    },
    ["Iron Grasp"] = {
        desc =
                quote("Your powerful grasp on Survivors causes escapes to be nearly impossible.") .. nlp ..
                "While carrying a Survivor, they suffer from the following effects:" .. 
                list(
                	b("Reduces") .. " the strength of the " .. i("Involuntary Strafing") .. " caused by their wiggling by " .. clror("#wiggleEffects") .. dot,
                    b("Increases") .. " the time required to break free from your grasp by #pl(1).")
    },
    ["Scourge Hook: Monstrous Shrine"] = {
        desc =
                quote("Your fervent care of the Hooks found in the Basement has aroused The Entity's interest.") .. nlp ..
                "At the start of the Trial, the " .. clror(4) .. space .. b("Hooks") .. " located inside the " .. iconLink("Basement") .. " and an additional " .. clro(4) .. space .. b("Hooks") .. " located throughout the Trial Grounds are all changed into " .. bclr("yellow", "Scourge Hooks") .. colon ..
                list("The " .. iconLink(ils.auras) .. " of " .. bclr("yellow", "Scourge Hooks") .. " are highlighted to you in " .. bclr("white", "white") .. dot) ..
                "Whenever you are farther than " .. clro("#distance") .. " from a Survivor hooked onto a " .. bclr("yellow", "Scourge Hook") .. ", the following effect applies:" ..
                list("All " .. iconLink(ils.generators) ..  " regress at #pl(1) of the default Regression rate.") ..
                quote("Then you will know that there is no escape. When hanging in the depths, you face the dark one.")
    },
    ["Sloppy Butcher"] = {
        desc =
                quote("You know where to hit to make them bleed.") .. nlp ..
                "Survivors hit with your vicious " .. i(link("Basic Attack")) .. " suffer from the following effects for #pl(1):" ..
                list(
                	"Inflicts the ".. effects("perk", "Sloppy Butcher", ils.haemorrhage, ils.mangled) .. dot,
                	"Modifies the potency of " .. b(i("Haemorrhage")) .. colon,
                    nbullet .. b("Increases") .. " the Spawn frequency of " .. iconLink(ils.poolsOfBlood) .. " by #pl(2).",
                    nbullet .. b("Increases") .. " the Regression rate of partial Healing progression by " .. clror("#bleeding") .. dot) ..
                quote("It is in its sadistic nature. There is no swift kill as it delights in the obscene spectacle of our agonising suffering.")
    },
    ["Spies from the Shadows"] = {
        desc =
                quote("Allows the Crows found in the environment to directly communicate with you.") .. nlp ..
                "Whenever a Survivor startles a " .. iconLink(ils.crow) .. " within #pl(1) of your location, #pn triggers its effect:" ..
                list("Alerts you with a unique " .. i(link("Loud Noise Notification")) .. " in the shape of a " .. b("Crow") .. dot) ..
                "#pn has a cool-down of " .. clror("#cooldown") .. " between alerts." .. nlp ..
            	quote("In the shadows they torment, scarring our minds with each scream.")
    },
    ["Unrelenting"] = {
        desc =
                quote("You recuperate faster from missed attacks made with your main weapon.") .. nlp ..
                i(link("Basic Attacks")) .. " benefit from the following effect:" ..
                list(b("Increases") .. " the recovery speed of missed basic-attacks by #pl(1).",
                	b("Increases") .. " the recovery speed of successful basic-attacks by " .. clror("#effect") .. dot)
    },
    ["Whispers"] = {
        desc =
            	quote("You have a rudimentary understanding of The Entity's voice.") .. nlp .. 
            	"Whenever any Survivor is within #pl(1) of your location:" .. 
            	list("Causes you to hear the sporadic whispers of The " .. iconLink(ils.entity) .. ", indicating a Survivor's presence.") ..
            	"Whenever any Survivor is outside #pl(1) of your location:" ..
            	list("Gain " .. clror("#effect") .. space .. effects("perk", "Whispers", ils.haste) .. dot) ..
            	quote("It is unclear as to the motivations of The Fog, but it is undeniable that it often takes the beast's side.", "Unknown, Notebook")
    },
    ["Dark Sense"] = {
        desc =
                "Unlocks potential in your Aura-reading ability." .. br ..
				"Whenever a " .. iconLink(ils.generator) .. " is completed, #pn activates:" ..
				list("When the Killer gets within " .. clror("#range") .. " of you, #pn activates for #pl(1):",
					nbullet .. "You see the Killer's aura" .. dot,
					nbullet .. "You see auras of other Survivors" .. dot,
					nbullet .. "You see the auras of " .. iconLink(ils.pallets) .. " and " .. iconLink(ils.windows) .. " within " .. clro("#range") .. dot) ..
				"#pn deactivates after use." .. nlp ..
                quote("Take it from an old-timer: Slow down, don't rush and try not to worry so much! The best way to beat him is to know how he thinks.", "Murf, The Lost Tapes")
    },
    ["Déjà Vu"] = {
        desc =
                quote("Paranoia paired with your horror of failure helps prepare you from repeating the same mistakes.") .. nlp ..
                "Unlocks potential in your Aura-reading ability:" .. 
                list(
                	"The " .. iconLink(ils.auras) .. " of whichever " .. clror("#generatorCount") .. space .. iconLink(ils.generators) .. " are currently in closest proximity to one another are revealed to you.",
                	b("Increases") .. " your Repair speed on those Generators by #pl(1).")
    },
    ["Hope"] = {
        desc =
            	quote("The growing odds of a successful escape fill you with hope and give you wings.") .. nlp ..
            	"Once the " .. iconLink(ils.exitGates) .. " are powered, #pn activates for the remainder of the Trial:" ..
            	list("Grants a #pl(1) " .. effects("perk", "Hope", ils.haste) .. dot) ..
            	quote("Buckle up, fuckos! Let's roll.", "Nikki, The Lost Tapes")
    },
    ["Kindred"] = {
        desc =
                "Unlocks potential in your Aura-reading ability." .. nlp ..
                "Whenever any Survivor is hooked, #pn activates and applies the following effects:" ..
                list(
                	"The " .. iconLink(ils.aura) .. " of the Killer is revealed to all Survivors whenever the Killer comes within #pl(1) of the " .. iconLink(ils.hook) .. dot,
                	"If you are the " .. i("Hooked Survivor") .. ", the Auras of all Survivors are revealed to each other.",
                	"If you are not the " .. i("Hooked Survivor") .. ", the Auras of all other Survivors are only revealed to you.") ..
                quote("Be kind to one another, We're all in this together","Sujan, The Lost Tapes")
    },
    ["Lightweight"] = {
        desc =
                "Your running is light and soft, making your tracks harder to follow." .. 
                list(
                	b("Reduces") .. " the Lifetime of your " .. iconLink(ils.scratchMarks) .. " by #pl(1).",
                	b("Reduces") .. " the Spawn chance of patches of " .. i("Scratch Marks") .. " by " .. clror("#spawnChance") .. ", making their spacing inconsistent.") ..
                quote("Take it slow, he knows where you have been... just like I have always said:<br>'live slow and die old'.","Dylan, The Lost Tapes")
    },
    ["No One Left Behind"] = {
        desc =
                quote("It is inconceivable to leave someone behind.") .. nlp ..
                "Once the " .. iconLink(ils.exitGates) .. " are powered, #pn activates:" ..
                list(
                	"The " .. iconLink(ils.auras) .. " of all other Survivors are revealed to you.",
                	b("Increases") .. " your Action speeds for Healing and Unhooking by #pl(1).",
                	b("Increases") .. " the strength and duration of the " .. b(i("Haste") .. space .. "Status Effect") .. " granted to Survivors you unhook by " .. clror("#effect") .. " and " .. clro("#bonus") .. " respectively:",
                	nbullet .. "Causes them to benefit from a " .. clro("#haste") .. space .. effects("perk", "No One Left Behind", ils.haste) .. " for " .. clro("#durationHaste") .. dot) ..
                quote("Yeah, no shit.<br>But I believe we can outsmart and overthrow him if we work together.<br>Don't be predictable and selfish!", "Clyde, The Lost Tapes")
    },
    ["Plunderer's Instinct"] = {
        desc =
                "Unlocks potential in your Aura-reading ability:" .. 
                list(
                	"The " .. iconLink(ils.auras) .. " of the following objects are revealed to you:",
                	nbullet .. "Closed " .. iconLink(ils.chests) .. " located in the environment.",
                	nbullet .. iconLink(ils.items) .. " sitting inside opened " .. b("Chests") .. dot,
                	nbullet .. b("Items") .. " dropped in the environment.") ..
                list(b("Increases") .. " the chances of finding rarer " .. b("Items") .. " inside " .. b("Chests") .. " by " .. clror("#chance") .. dot) .. nlp ..
                list(b("Increases") .. " the unlocking speed of " .. b("Chests") .. " by #pl(1)" .. dot) .. nlp ..
                quote("The pioneers used to loot these babies for hours.","Aizeyu, The Lost Tapes")
    },
    ["Premonition"] = {
        desc =
                quote("You have the undeniable capability to sense danger.") .. nlp ..
                "While not being chased, looking in the Killer's direction within a range of " .. clror("#range") .. " triggers #pn:" .. nlp ..
            	list("Triggers an audio cue",
            		"Reveals the Killer's aura for " .. clro("#duration") .. dot) ..
                "#pn has a cool-down of #pl(1)." .. nlp ..
                quote("I have a bad feeling about this!")
    },
    ["Resilience"] = {
        desc =
                quote("You are motivated in dire situations.") .. nlp ..
                "Whenever you are in the " .. iconLink(ils.injuredState) .. ", #pn activates:" ..
                list(
					b("Increases") .. " the Action speeds for the following interactions by #pl(1):",
					nbullet .. "Blessing or Cleansing " .. iconLink(ils.totems) .. dot,
					nbullet .. "Healing yourself or other " .. iconLink(ils.survivors) .. dot,
					nbullet .. "Opening " .. iconLink(ils.exitGates) .. dot,
					nbullet .. "Repairing " .. iconLink(ils.generators) .. dot,
					nbullet .. "Sabotaging " .. iconLink(ils.hooks) .. dot,
					nbullet .. "Searching " .. iconLink(ils.chests) .. dot,
					nbullet .. "Unhooking other " .. b("Survivors") .. dot,
					nbullet .. "Vaulting " .. iconLink(ils.windows) .. dot) ..
				quote("Focus, even in these desperate times.")
    },
    ["Slippery Meat"] = {
        desc =
            	"You have developed an efficient way to get off Hooks." .. 
            	list(
        			"Other Survivors unhook you #pl(1) faster" .. dot,
        			b("Increases") .. " the " .. iconLink(ils.haste) .. " granted by " .. b("Unhook Protections") .. " by " .. clror("#effect") .. dot)
    },
    ["Small Game"] = {
        desc =
            	quote("You have the undeniable capability to sense danger.") .. nlp ..
            	list("You see auras of " .. iconLink(ils.totems) .. " within #pl(1)" .. dot) .. nlp ..
            	quote("Nope.", "Andy, The Lost Tapes")
    },
    ["Spine Chill"] = {
        desc =
            	"An unnatural tingle warns you of impending doom." .. nlp ..
 				"Whenever the Killer is within " .. clror("#range") .. " of your location and is looking at you, #pn activates:" ..
 				list(
            		"You are notified" .. dot,
            		"You cannot scream for " .. clro("#duration") .. dot,
            		"You vault " .. clro("#effect") .. " faster for " .. clro("#duration") .. dot) ..
            	"#pn then goes on a #pl(1) cool-down" .. dot .. nlp ..
            	quote("There is a voice that doesn't use words. Listen..","Sassy, The Lost Tapes")
    },
    ["This Is Not Happening"] = {
        desc =
            	quote("You perform at your best when you are under extreme stress.") .. nlp ..
            	"While repairing or healing, #pn activates:" .. nlp ..
            	list(
            		b("Increases") .. " the Success zone for a " .. i("Great Skill Check") .. " by " .. clror("#effect") .. dot,
            		b("Increases") .. " the Success zone for a " .. i("Good Skill Check") .. " by #pl(1)" .. dot)
    },
    ["We'll Make It"] = {
        desc =
            	quote("Helping others heightens your morale.") .. nlp ..
            	"After unhooking another Survivor, #pn activates for #pl(1):" ..
            	list(b("Increases") .. " your Altruistic Healing speed by " .. clror("#effect") .. dot) ..
            	quote("I am confident we can all escape in one piece if we help each other.")
    },
    ["Bond"] = {
        desc =
            	"Unlocks potential in your Aura-reading ability:" .. 
            	list("The " .. iconLink(ils.auras) .. " of all other Survivors are revealed to you within #pl(1).") .. 
            	quote("We have to work as a team, I need you to survive so that I can survive!", "Dwight Fairfield")
    },
    ["Leader"] = {
        desc =
            	quote("You are able to organise a team to cooperate more efficiently.") .. nlp ..
            	"All other Survivors within " .. clror("#radius") .. " of your location benefit from the following effect:" ..
            	list(
            		b("Increases") .. " their Action speeds for Cleansing, Gate-Opening, Healing, Sabotaging, Unhooking, and Unlocking by #pl(1).",
            		nbullet .. "This effect lingers for " .. clro("#linger") .. " after leaving its " .. i("Area of Effect") .. dot) ..
            	loadoutStrings.singleInstancePerk
    },
    ["Prove Thyself"] = {
        desc =
            	b("Increases") .. " the Repair speed by a stack-able #pl(1) per other Survivor within " .. clror("4 metres") .. " of your location, up to a maximum of #pl(2)." .. nlp ..
            	"#pn extends its effect to all Survivors within its range." .. nlp ..
            	loadoutStrings.singleInstancePerk .. nlp ..
            	quote("Show me what you can do!", "Dwight Fairfield")
    },
    ["Botany Knowledge"] = {
        desc =
            	quote("You transform plants found around the campfire into tinctures that slow down bleeding.") .. nlp ..
            	"You benefit from the following permanent effect:" ..
            	list(b("Increases") .. " your Healing speed by #pl(1).") ..
            	quote("Basic Botany Knowledge could save your life someday", "Claudette Morel")
    },
    ["Empathy"] = {
        desc =
            	"Unlocks potential in your Aura-reading ability:" .. 
            	list("The " .. iconLink(ils.auras) .. " of injured or dying Survivors are revealed to you within #pl(1).")
    },
    ["Self-Care"] = {
        desc =
                "Unlocks the " .. i("Self-Care")  .. " ability:" ..
				list("Grants the ability to self-heal without needing a " .. iconLink(ils.medKit) .. " at #pl(1) of the regular Healing speed.")
    },
    ["Saboteur"] = {
        desc =
        		"Unlocks potential in your Aura-reading ability:" .. 
        		list(
        			"While the Killer is carrying another Survivor, the " .. iconLink(ils.auras) .. " of all " .. iconLink(ils.hooks) .. " within " .. clror("#radius") .. " of their original Pick-up location are revealed to you:",
        			nbullet .. "The Auras of normal " .. b("Hooks") .. " are " .. bclr("white", "white") .. dot,
        			nbullet .. "The Auras of " .. b("Scourge Hooks") .. " are " .. bclr("yellow", "yellow") .. dot) .. 
        		"Unlocks the ability to sabotage " .. b("Hooks") .. " without " .. iconLink(ils.toolboxes) .. colon ..
        		list(
        			b("Increases") .. " the Sabotage speed without a " .. b("Toolbox") .. " by " .. clro("#speed") .. dot,
        			nbullet .. "This effect has a cool-down of #pl(1) after use.")
    },
    ["Calm Spirit"] = {
        desc =
        		quote("Animals seem to trust you as they often stay calm in your presence.") .. nlp ..
        		"You experience the following effects during a Trial:" ..
        		list(
        			"Nearby " .. iconLink(ils.crows) .. " no longer fly off and alert others to your presence, unless you come within touching distance.",
        			b("Suppresses") .. " the urge to scream from any cause at all times.",
        			b("Suppresses") .. " all noises related to interacting with the following Props:",
        			nbullet .. iconLink(ils.chests),
        			nbullet .. iconLink(ils.totems),
        			b("Increases") .. " the Action speeds for Blessing, Cleansing, and Unlocking by #pl(1).")
    },
    ["Iron Will"] = {
        desc =
        	quote("You are able to concentrate and enter a meditative-like state to numb some pain.") .. nlp ..
        	"While injured, you benefit from the following effects:" ..
        	list(b("Reduces") .. " the volume of " .. i("Grunts of Pain") .. " by #pl(1).") ..
        	loadoutStrings.exhaustionPerkNoUseNoTrigger
    },
    ["Adrenaline"] = {
		desc =
				quote("You are fuelled by unexpecting energy when on the verge of escape.") .. nlp ..
				"Once the " .. iconLink(ils.exitGates) .. " are powered, #pn activates and triggers the following effects:" ..
				list(
					"Heals you to the next " .. iconLink(ils.healthState) .. dot,
					"Grants a " .. clror("#haste") .. space .. effects("perk", "Adrenaline", ils.haste) .. " for " .. clro("#durationHaste") .. dot) ..
				loadoutStrings.exhaustionPerkCanUse .. br ..
				"#pn causes the " .. effects("perk", "Adrenaline", ils.exhausted) .. " for #pl(1) after use."
	},
	["Quick & Quiet"] = {
        desc =
        		quote("You do not make as much noise as others when quickly vaulting over obstacles or hiding in Lockers.") .. nlp ..
        		"When performing a " .. i("Rushed") .. " action to vault across " .. iconLink(ils.pallets) .. " or " .. iconLink(ils.windows) .. ", or to enter or exit " .. iconLink(ils.lockers) .. ", #pn triggers its effect:" ..
        		list(b("Suppresses") .. " all noises related to those interactions and the accompanying " .. i(link("Loud Noise Notification")) .. dot) ..
        		"#pn has a cool-down of #pl(1)." .. nlp ..
        		quote("They will never catch me!", "Meg Thomas")
    },
    ["Sprint Burst"] = {
        desc =
        		"Starting to run triggers #pn:" ..
        		list("Grants a " .. clror("#haste") .. space .. effects("perk", "Sprint Burst", ils.haste) .. " for " .. clro("#durationHaste") .. dot) ..
        		loadoutStrings.exhaustionPerkNoUse .. br ..
				"#pn causes the " .. effects("perk", "Sprint Burst", ils.exhausted) .. " for #pl(1)." .. nlp ..
        		quote("See you if you can catch up...", "Meg Thomas")
    },
    ["Balanced Landing"] = {
        desc =
        		quote("Your agility and cat-like relexes are incomparable.") .. nlp ..
        		"While falling from height, you benefit from the following effects:" .. 
        		list(
        			b("Suppresses") .. " all noises related to falling and landing.",
        			b("Reduces") .. " the duration of the " .. i(link("Stagger")) .. " upon landing by " .. clror("#stagger") .. dot,
        			"Grants a " .. clro("#haste") .. space .. effects("perk", "Balanced Landing", ils.haste) .. " for " .. clro("#durationHaste") .. dot) ..
        		loadoutStrings.exhaustionPerkNoUse .. br ..
        		"#pn causes the " .. effects("perk", "Balanced Landing", ils.exhausted) .. " for #pl(1) after use." .. nlp ..
        		quote("I have jumped from higher places.", "Nea Karlsson")
    },
    ["Urban Evasion"] = {
        desc =
        		quote("Years of evading the cops taught you a thing or two about stealth.") .. nlp ..
        		"You benefit from the following permanent effect:" ..
        		list(b("Increases") .. " your Movement speed while crouched by #pl(1).") ..
        		quote("The paint is still fresh but I am long gone.", "Nea Karlsson")
    },
    ["Streetwise"] = {
        desc =
        		quote("Long nights out taught you to do a lot with what you have got.") .. nlp ..
        		"Any " .. iconLink(ils.items) .. " with Charges you retrieve from " .. iconLink(ils.chests) .. " benefit from the following primary effect:" ..
				list(b("Increases") .. " their Charges permanently by #pl(1).") ..
				"Whenever your currently equipped " .. b("Item") .. " is depleted for the " .. clror("#activation") .. ", #pn triggers its secondary effect:" ..
				list("The " .. iconLink(ils.aura) .. " of the Killer is revealed to you for " .. clro("#aura") .. dot) ..
        		quote("You are doing it wrong! Let me show you how it is done.", "Nea Karlsson")
    },
	["Decisive Strike"] = {
		desc =
				"Identical to " .. iconLink("Will to Live") .. dot .. nlp ..
        		quote("There is nothing to be scared of.", "Laurie Strode")
	},
    ["Will to Live"] = {
        desc =
        		"Using whatever is at hand, you stab your aggressor in an ultimate attempt to escape." .. nlp ..
        		"After being unhooked or unhooking yourself, #pn activates for the next #pl(1):" .. 
        		list(
        			"When grabbed or picked up by the Killer, succeed a " .. iconLink(ils.skillCheck) .. " to stab the Killer and escape from their grasp.",
        			nbullet .. " Stuns the Killer for " .. clror("4 seconds") .. dot,
        			"Causes you to become the next " .. ibil("Obsession") .. dot) ..
        		"#pn is deactivated once the " .. iconLink(ils.exitGates) .. " are powered." .. br ..
        		"#pn is disabled for the remainder of the Trial after use." .. nlp ..
        		loadoutStrings.conspicuousActionsPerk .. nlp ..
        		loadoutStrings.obsessionChancePlus .. br ..
        		loadoutStrings.obsessionPerkSurvivor .. nlp
    },
	["Object of Obsession"] = {
		desc =
				"Identical to " .. iconLink("Bound by Obsession") .. dot .. nlp ..
        		quote("He was watching me!", "Laurie Strode")
	},
    ["Bound by Obsession"] = {
        desc =
        		quote("A supernatural bond links you to the Killer.") .. nlp ..
        		"Whenever the Killer reads your " .. iconLink(ils.aura) .. ", #pn activates for the same duration as their Aura-reading action:" ..
        		list(
        			"The Aura of the Killer is revealed to you.",
        			b("Increases") .. " your Action speeds for Cleansing, Healing, and Repairing actions by #pl(1).") ..
        		"If you are the Killer's current " .. ibil(ils.obsession) .. ", the following effect triggers automatically every " .. clror("#interval") .. colon ..
        		list("Your Aura is revealed to the Killer for " .. clro("#duration") .. dot) ..
        		loadoutStrings.obsessionChancePlus .. br ..
        		loadoutStrings.obsessionPerkSurvivor .. nlp
    },
	["Sole Survivor"] = {
		desc =
				"Identical to " .. iconLink("Down to the Last") .. dot .. nlp ..
        		quote("It was the boogeyman.", "Laurie Strode")
	},
    ["Down to the Last"] = {
        desc =
        		"As more of your friends fall to the Killer, you become shrouded in isolation and the Killer's Aura-reading abilities towards you are disrupted." .. nlp ..
        		"Whenever you are hooked or you repair a " .. iconLink(ils.generator) .. ", #pn gains " .. clror("1 Token") .. ", up to a maximum of " .. clro("6 Tokens") .. colon ..
        		list("For each Token, other Survivors open " .. iconLink(ils.exitGates) .. space ..  clro("#effect") .. " faster" .. dot) .. 
        		"When you are the " .. bclr("yellow", "Last Survivor Standing") .. " and have at least " .. clro("3 Tokens") .. ", you benefit from the following effects:" ..
        		list(
        			"Gain the ability to open the " .. iconLink(ils.hatch) .. " without the need of a " .. iconLink("Key") .. dot,
        			"For each Token, your aura is hidden from the Killer for #pl(1)" .. dot) .. 
        		loadoutStrings.obsessionChancePlus .. br ..
        		loadoutStrings.obsessionPerkSurvivor .. nlp
    },
    ["Agitation"] = {
		desc =
				quote("You get excited in anticipation of hooking your prey.") .. nlp ..
				"While carrying a Survivor, #pn activates:" ..
				list(
					b("Increases") .. " your Carrying speed by #pl(1).",
					b("Increases") .. " your " .. iconLink(ils.terrorRadius) .. " by " .. clror("#radius") .. dot) .. 
				quote("At some point, the excitement of hooking one of us becomes more important than the desire to kill us.")
	},
	["Brutal Strength"] = {
        desc =
        		quote("Your great strength allows you to shred through your prey's defences.") .. nlp ..
        		"While performing the " .. i("Break or Damage") .. " action on " .. iconLink(ils.breakableWalls) .. comma .. iconLink(ils.pallets) .. ", or " .. iconLink(ils.generators) .. ", #pn triggers its effect:" ..
        		list(b("Increases") .. " the Action speed by #pl(1).") ..
        		quote("It is more than muscles. A dark power motivates the beast.")
    },
    ["Unnerving Presence"] = {
        desc =
				quote("Your presence alone instils great fear.") .. nlp ..
				"While inside your " .. iconLink(ils.terrorRadius) .. ", Survivors performing " .. i("Repairing") .. " or " .. i("Healing") .. " actions suffer from the following effects:" ..
				list(
					b("Increases") .. " the chances of triggering a " .. i("Skill Check") .. " by " .. clror("#skillCheckChance") .. dot,
					b("Reduces") .. " the Success zone of those " .. iconLink(ils.skillChecks) .. " by #pl(1).") .. 
				quote("Its presence befalls us.")
    },
    ["Bloodhound"] = {
        desc =
				quote("Like a hunting scent hound, you smell traces of blood at a great distance.") .. nlp ..
				"#pn causes the following effects:" ..
				list(
					iconLink(ils.poolsOfBlood) .. " left by injured Survivors appear in " .. bclr("bright red", "bright red") .. dot,
					b("Extends") .. " their lifetime by #pl(1).") ..
				quote("Pebbles shimmering in the moonlight; my life drips down in a trail so easy to follow.")
    },
    ["Predator"] = {
        desc =
				quote("Your acute tracking ability allows you to find lost prey more easily.") .. nlp .. 
				"Whenever you lose a Survivor in a " .. i("Chase") .. ", #pn triggers its effect:" ..
				list("Their " .. iconLink(ils.aura) .. " is revealed to you for " .. clror("#duration") .. dot) ..
                "#pn has a cool-down of #pl(1)." .. nlp ..
				quote("Never stop moving and hope you're always two steps ahead of the beast.", "Unknown, Notebook")
    },
    ["Shadowborn"] = {
        desc =
				quote("You have a keen vision in the darkness of the night.") .. nlp ..
				"Whenever you are blinded by any means, #pn triggers its effect:" .. 
				list("Grants a #pl(1) " .. effects("perk", "Shadowborn", ils.haste) .. " for " .. clror("#durationHaste") .. dot) ..
				quote("Shining in the darkest dark, his eyes pierce the night and sting your soul.")
    },
    ["Enduring"] = {
        desc =
				quote("You are resilient to pain.") .. nlp ..
				"You benefit from the following effect:" .. 
				list(
					b("Reduces") .. " the duration of " .. i("Pallet Stuns") .. " by #pl(1).",
					nbullet .. "This effect does not apply when stunned while carrying a Survivor.") ..
				quote("He stops at nothing.")
    },
    ["Lightborn"] = {
        desc =
				"Unlike other beasts of The Fog, you have adapted to light." .. 
				list(
					"The " .. iconLink(ils.auras) .. " of Survivors attempting to blind you by any means are revealed to you for #pl(1).",
					"Grants immunity from being blinded from " .. iconLink(ils.flashlights) .. comma .. iconLink(ils.firecrackers) .. comma .. iconLink("Flash Grenades") .. ", and " .. iconLink("Blast Mine") .. dot) ..
				quote("These monsters... they adapt! They emerge with strange new abilities.", "Vigo, Vigo's Journal")
    },
    ["Tinkerer"] = {
        desc =
				"Whenever a " .. iconLink(ils.generator) .. " is repaired to " .. clror("70 %") .. ", you benefit from the following effects:" ..
				bullet .. "Triggers a " .. i(link("Loud Noise Notification")) .. " for that Generator, revealing its location." ..
				bullet .. "Grants the " .. states(ils.undetectable) .. " for the next #pl(1)." .. nlp ..
				"#pn can only trigger once per Generator per Trial." .. nlp ..
				quote("The Hillbilly makes impressive tools out of scraps. Tools aimed at maiming us in creative ways.", "Notebook")
    },
    ["Stridor"] = {
        desc =
				"You are acutely sensitive to the breathing of your prey." .. 
				list(
					b("Increases") .. " the volume of " .. i("Grunts of Pain") .. " of injured Survivors by #pl(1).",
					b("Increases") .. " the volume of regular breathing of Survivors by #pl(2).") ..
				quote("If you do not stop and catch your breath... she will.")
    },
    ["Thanatophobia"] = {
        desc =
				quote("Their courage fades in the face of their undeniable mortality.") .. nlp ..
				"Whenever at least one Survivor is either injured, dying, or hooked, #pn activates." .. br ..
				"While active, all Survivors suffer from the following primary effect:" .. 
				list("Incurs a stack-able #pl(1) Action-Speed penalty per injured, dying, or hooked Survivor for Cleansing, Repairing, and Sabotaging, up to a maximum of #pl(2).") ..
				"If all four Survivors are either injured, dying, or hooked, they suffer from the following secondary effect:" ..
				list(b("Increases") .. " the penalty by an additional " .. clror("#penalty") .. " to a total of #pl(3).") ..
				quote("She plays with us and revels in our pain.")
    },
    ["A Nurse's Calling"] = {
		desc =
				"Unlocks potential in your Aura-reading ability:" ..
				list("The " .. iconLink(ils.auras) .. " of Survivors being healed or healing themselves are revealed to you within #pl(1).") ..
				quote("Still attached to the fragments of her past life, she is drawn to those in need of help.")
	},
	["Dying Light"] = {
		desc =
				"Identical to " .. iconLink("Cull the Weak") .. dot .. nlp ..
				quote("This isn't a man...", "Dr Sam Loomis")
	},
	["Cull the Weak"] = {
        desc =
				"Each time you hook a Survivor other than your " .. ibil(ils.obsession) .. ", you gain " .. clror("+1 Token") .. colon ..
				list(
					"For as long as the " .. b(i("Obsession")) .. " is alive, all other Survivors suffer from a stack-able #pl(1) per Token Action Speed penalty to Repairing, Healing, and Sabotaging, up to a maximum of #pl(2) or " .. clro("11 Tokens") .. dot,
					"The " .. b(i("Obsession")) .. " is unaffected by this penalty and instead granted a permanent " .. clro("+33 %") .. " Action Speed bonus to Unhooking and Healing other Survivors.") ..
				loadoutStrings.obsessionPerkKiller .. nlp
    },
	["Play with Your Food"] = {
		desc =
				"Identical to " .. iconLink("See How They Run") .. dot .. nlp ..
				quote("You've fooled them, haven't you Michael? But not me.", "Dr Sam Loomis")
	},
    ["See How They Run"] = {
        desc =
				"Losing your " .. ibil(ils.obsession) .. " in a chase causes #pn to gain " .. clror("#tokens(1)") .. ", up to a maximum of " .. clro("#tokens(2)") .. ", and performing a " .. i("Basic or Special Attack") .. " with the potential to damage a Survivor causes it to lose " .. clro("#tokens(3)") .. dot .. br ..
				"While having at least " .. clro("#tokens(4)") .. ", you benefit from the following effect:" ..
				list("Grants a stack-able #pl(1) " .. effects("perk", "Play with Your Food", ils.haste) .. " per Token, up to a maximum of #pl(2).") ..
				"#pn has a cool-down of " .. clro("#cooldown") .. " between gaining additional Tokens." .. nlp ..
				loadoutStrings.obsessionPerkKiller .. nlp
    },
	["Save the Best for Last"] = {
		desc =
				"Identical to " .. iconLink("Keep Them Waiting") .. dot .. nlp ..
				quote("Death has come to your little town, Sheriff.", "Dr Sam Loomis")
	},
    ["Keep Them Waiting"] = {
        desc =
				"Damaging any Survivor other than the " .. ibil(ils.obsession) .. " with a " .. i(link("Basic Attack")) .. " causes #pn to gain " .. clror("#tokenGain") .. ", up to a maximum of #pl(1)." .. br ..
				"Damaging the " .. b(i("Obsession")) .. " with either a " .. i("Basic or Special Attack") .. " causes #pn to lose " .. clro("#tokenCost") .. colon ..
				list("Grants a stack-able " .. clro("#cooldownStack") .. " Cool-down time reduction on successful " .. i("Basic Attacks") .. ", up to a maximum of #pl(2).") ..
				"#pn freezes its current Token Count once the " .. b(i("Obsession")) .. " is sacrificed or killed." .. br ..
				loadoutStrings.obsessionPerkKiller .. nlp
    },
	["Ace in the Hole"] = {
		desc =
				quote("Lady Luck always seems to be throwing something good your way.") .. nlp ..
				"Causes all regular " .. iconLink(ils.items) .. " you retrieve from a " .. iconLink(ils.chest) .. " to come equipped with " .. clror("#addonCount") .. space .. iconLink(ils.addons) .. colon .. 
				list(
					bclr("faded jade", "First Slot") .. colon .. space .. clro("#chance") .. " chance to be equipped with an " .. b("Add-on") .. " of " .. bclr(5, "Visceral Rarity") .. " or lower.",
					bclr("faded jade", "Second Slot") .. colon .. space .. "#pl(1) chance to be equipped with an " .. b("Add-on") .. " of " .. bclr(3, "Uncommon Rarity") .. " or lower.") ..
				"#pn prevents any attached " .. b("Add-ons") .. " on your currently held " .. b("Item") .. " to be consumed upon escaping the Trial." .. nlp ..
				quote("Everything that glitters isn't gold. But gold isn't worth a damn in this place, so this should come in handy.", "Ace Visconti")
	},
	["Open-Handed"] = {
        desc =
				quote("Strengthens the potential in your and your team's Aura-reading abilities.") .. nlp ..
				"All Survivors benefit from the following permanent effect:" .. 
				list(b("Increases") .. " the radius of all Aura-reading abilities by #pl(1).") ..
				"#pn only affects " .. iconLink(ils.auras) .. " that emanate from the Survivor causing them." .. br ..
				loadoutStrings.singleInstancePerk .. nlp ..
				quote("Paying attention is what kept me alive through the years. That, and my good looks of course.", "Ace Visconti")
    },
    ["Up the Ante"] = {
        desc =
				quote("All will be well in the end; you just know it." .. br .. "Your confidence strengthens the feeling of hope for those around you.") .. nlp ..
				"Unlocks the ability to attempt " .. i("Self-Unhooks") .. " during the first " .. i("Hook Stage") .. " for all Survivors." .. br ..
				"For every Survivor still in the Trial, #pn is granted " .. clror("#tokenGain") .. colon ..
				list(b("Increases") .. " the " .. iconLink("Luck") .. " at succeeding " .. i("Self-Unhook") .. " attempts for all Survivors by a stack-able #pl(1) per Token, up to a maximum of #pl(2).") .. 
				quote("What can I say? I'm just a very lucky guy... I'm sure some of it will rub off on you.", "Ace Visconti")
    },
    ["Hex: Ruin"] = {
        desc =
				quote("A Hex that affects the Generator Repair progress of all Survivors.") .. nlp ..
				"All " .. iconLink(ils.generators) .. " not currently being repaired experience the following effect:" ..
				list("Causes them to automatically regress at #pl(1) of the default Regression rate.") ..
				loadoutStrings.hexPerkFooter .. nlp ..
				quote("A curse is upon you. It will cause your ruin.")
    },
    ["Hex: Devour Hope"] = {
        desc =
				quote("A Hex rooting its power on hope." .. br .. "The false hope of Survivors ignites your hunger.") .. nlp ..
				loadoutStrings.hexPerkTrialStart .. br ..
				"Whenever a Survivor is unhooked at least " .. clror("#distance") .. " from your location, #pn gains " .. clro("#tokens(1)") .. ", up to a maximum of " .. clro("#tokens(2)") .. colon ..
				list(
					bclr("faded jade", "At 2 Tokens") .. colon .. space .. clro("#delay") .. " after hooking a Survivor, you are granted a #pl(1) " .. effects("perk", "Hex: Devour Hope", ils.haste) .. " for " .. clro("#durationHaste") .. dot,
					bclr("faded jade", "At 3 Tokens") .. colon .. space .. "Afflicts all Survivors with the " .. effects("perk", "Hex: Devour Hope", ils.exposed) .. dot,
					bclr("faded jade", "At 5 Tokens") .. colon .. space .. "Unlocks the " .. i("Kill") .. " ability, allowing you to kill dying Survivors by your own hands.") ..
				loadoutStrings.hexPerkFooter .. nlp ..
				quote("If you do nothing, you have their blood on your hands. If you save them, her hunger grows.")
    },
    ["Hex: The Third Seal"] = {
        desc =
				quote("A Hex that hinders the Survivors' Aura-reading abilities.") .. nlp ..
				"The last #pl(1) Survivors you hit with a " .. i("Basic or Special Attack") .. " suffer permanently from the " .. states(ils.blindness) .. dot .. br ..
				loadoutStrings.hexPerkFooter .. nlp ..
				quote("She touched your skin, you bear the witch's mark!")
    },
    ["Left Behind"] = {
		desc =
				quote("You will get the job done... no matter the cost.") .. nlp ..
				"Once you are the " .. bclr("yellow", "Last Survivor Standing") .. ", #pn activates:" ..
				list("The " .. iconLink(ils.aura) .. " of the " .. iconLink(ils.hatch) .. " is revealed to you within #pl(1).") ..
				quote("I'm not horse-shittin' around. I'm doing this alone!", "Bill Overbeck")
	},
	["Borrowed Time"] = {
		desc =
				"Whenever you gain " .. iconLink(ils.deepWound) .. " while you have " .. iconLink(ils.endurance) .. space .. b("Status Effect") .. ", #pn activates:" ..
				list("Passively mend yourself over a period of #pl(1)" .. dot) .. nlp ..
				quote("Probably stings like hell, but it ain't gonna kill ya. Up and at 'em soldier. Time to move!", "Bill Overbeck")
	},
	["Unbreakable"] = {
		desc =
				quote("Past battles have taught you a thing or two about survival.") .. nlp ..
				"Whenever you are put in the " .. iconLink(ils.dyingState) .. " by the Killer, #pn activates:" ..
				list(
					b("Increases") .. " your Recovery speed by #pl(1).",
					"Unlocks the " .. i("Self-Recovery") .. " ability, allowing you to fully recover from the " .. i("Dying State") .. dot,
					nbullet .. "This ability can only be used " .. clro("#limit") .. " per Trial.") ..
				quote("Goddammit, I am seriously FUBAR!", "Bill Overbeck")
	},
	["Technician"] = {
		desc =
				quote("You are apt at handling machinery with the greatest care and precision.") .. nlp ..
				"While repairing a " .. iconLink(ils.generator) .. ", the following effects apply:" ..
				list(
					b("Reduces") .. " the audible range of all noises related to the " .. i("Repair") .. " interaction by " .. clror("#range") .. dot,
					b("Increases") .. " the Progression penalty incurred when failing a " .. iconLink(ils.skillCheck) .. " by #pl(1).",
					b("Suppresses") .. " the explosion of the " .. b("Generator") .. " and the " .. i(link("Loud Noise Notification")) .. " usually triggered by that.") ..
				quote("I am gonna stealth this one.", "Feng Min")
	},
	["Alert"] = {
		desc =
				quote("Your acute senses are on high alert.") .. nlp ..
				"Whenever the Killer performs the " .. i("Break or Damage") .. " Action, #pn triggers:" .. 
				list("Their " .. iconLink(ils.aura) .. " is revealed to you for #pl(1).") ..
				quote("I have true sight,", "Feng Min")
	},
	["Lithe"] = {
		desc =
				"Whenever you perform a " .. i("Rushed Vault") .. " action, #pn triggers its effect:" ..
				list("Grants a " .. clror("#haste") .. space .. effects("perk", "Lithe", ils.haste) .. " for " .. clro("#durationHaste") .. dot) ..
				loadoutStrings.exhaustionPerkNoUse .. br ..
				"#pn causes the " .. effects("perk", "Lithe", ils.exhausted) .. " for #pl(1)." .. nlp ..
				quote("U mad?", "Feng Min")
	},
	["Overwhelming Presence"] = {
		desc =
				quote("Just knowing you are near is enough to disturb your victims.") .. nlp ..
				"Whenever a Survivor starts using an " .. iconLink(ils.item) .. " within " .. clror("#activationRange") .. " of your location, #pn triggers its primary effect:" .. 
				list("Inflicts the " .. effects("perk", "Overwhelming Presence", ils.exhausted) .. " for " .. clro("#exhausted") .. dot) ..
				"Whenever a Survivor within " .. clro("#activationRange") .. " of your location becomes " .. b(i("Exhausted")) .. " by any means, #pn triggers its secondary effect:" ..
				list("The " .. iconLink(ils.aura) .. " of whichever " .. i("Exhausted Survivor") .. " is closest to your location is revealed to you for #pl(1).") ..
				"#pn has a cool-down of " .. clro("#cooldown") .. dot .. nlp ..
				quote("Shit!! I dropped the gauze!")
	},
	["Overcharge"] = {
		desc =
				quote("You are fuelled by your hate for progress.") .. nlp ..
				"Performing the " .. i("Damage Generator") .. " action on a " .. iconLink(ils.generator) .. " applies #pn:" ..
				list(
					"The next Survivor interacting with that " .. b("Generator") .. " is faced with a difficult " .. iconLink(ils.skillCheck) .. dot,
					nbullet .. "Instantly regresses that " .. b("Generator") .. " by #pl(1) of its maximum possible Progression in addition to the default Progression penalty.") ..
				"After #pn is applied to a " .. b("Generator") .. ", the following effect also applies:" ..
				list(
					b("Increases") .. " the Regression speed from " .. clror("85 %") .. " to " .. clro("130 %") .. " of its default value over the next " .. clro("30 seconds") .. dot) .. 
				quote("It is a trap, But a trap one must step in...", "Herman Carter")
	},
	["Monitor & Abuse"] = {
		desc =
				quote("Meticulous in your approach, terrifying in your application.") .. nlp ..
				"While actively chasing a Survivor, #pn applies its primary effect:" ..
				list(b("Increases") .. " your " .. iconLink(ils.terrorRadius) .. " by #pl(1).") ..
				"While " .. b("not") .. " actively chasing a Survivor, #pn applies its secondary effect:" ..
				list(b("Reduces") .. " your " .. i("Terror Radius") .. " by #pl(2).") .. nlp ..
				quote("It's time for your treatment!", "Herman Carter, The Doctor")
	},
	["We're Gonna Live Forever"] = {
		desc =
				"Your few friends deserve the best protection." .. nlp ..
				"You benefit from the following effect when healing a dying Survivor:" ..
				list(b("Increases") .. " your Healing speed by " .. clror("#healing") .. dot) ..
				"Any dying Survivor you heal back to the Injured State benefits from the following effect:" ..
				list(
					"Grants the " .. states(ils.endurance) .. " for #pl(1).",
					nbullet .. "This effect can only be triggered once every " .. clro("#cooldown") .. dot) ..
				quote("Come on then, let's ave' it! I don't give a shit pal.", "David King")
	},
	["Dead Hard"] = {
		desc =
				quote("You can take a beating." .. br .. "Tap into your adrenaline bank to avoid taking further damage.") .. nlp ..
				"After being unhooked by any means, #pn activates:" ..
				"While injured and running, press the " .. loadoutStrings.activeAbilityButton .. " to trigger the following effect:" ..
				list("Grants the " .. effects("perk", "Dead Hard", ils.endurance) .. " for " .. clror("#endurance") .. dot) ..
				loadoutStrings.exhaustionPerkNoUse .. br ..
				"#pn causes the " .. effects("perk", "Dead Hard", ils.exhausted) .. " for #pl(1)." .. nlp ..
				quote("We were walkin' through t'ginnel one night when a beer bottle flew past me, then another, and another.<br>I thought to myself " .. '"' .. "Gonna 'ave some fun 'ere lads, let's get stuck in!" .. '"' .. ".<br>It were a right dust up, I swear down!", "David King")
	},
	["No Mither"] = {
		desc =
				quote("Go on out, kid, it is just a scratch." .. br .. "Your thick blood coagulates practically instantly.") .. nlp ..
				"You suffer permanently from the " .. effects("perk", "No Mither", ils.broken) .. " in exchange for the following benefits:" ..
				list(
					b("Suppresses") .. " the creation of " .. iconLink(ils.poolsOfBlood) .. dot,
					b("Suppresses") .. " your " .. i("Grunts of Pain") ..  " while in the " .. iconLink(ils.injuredState) .. " or in the " .. iconLink(ils.dyingState) .. dot,
					"Unlocks the " .. i("Self-Recovery") .. " ability, allowing you to fully recover from the " .. i("Dying State") .. colon,
					nbullet .. b("Increases") .. " the Recovery speed by #pl(1).") ..
				quote("I lost it. Just lamped him one. They went and banned me didn't they. Went t'pub afterwards, had a few pints and moved on to the next chapter. I couldn't be mithered with it all anyway, you know what I mean? Can't be arsed.", "David King")
	},
	["Territorial Imperative"] = {
		desc =
				"Unlocks potential in your Aura-reading ability." .. br ..
				"Whenever a Survivor enters the " .. iconLink(ils.basement) .. " while you are farther than " .. clror("#distance") .. " from its entrance, #pn activates:" ..
				list("The " .. iconLink(ils.aura) .. " of that Survivor is revealed to you for #pl(1).") ..
				"#pn has a cool-down of " .. clro("#cooldown") .. dot .. nlp ..
				quote("We're not safe anywhere...")
	},
	["Beast of Prey"] = {
		desc =
				quote("Your lust for a kill is so intense that your connection with" .. b("The Entity") .. " is momentarily lost, making you totally unpredictable.") .. nlp ..
				"Whenever you trigger the " .. effects("perk", "Beast of Prey", ils.bloodlust) .. ", #pn activates for #pl(1):" ..
				list("Grants the " .. effects("perk", "Beast of Prey", ils.undetectable) .. dot) ..
				quote("Where did she go?")
	},
	["Hex: Huntress Lullaby"] = {
		desc =
				quote("A Hex rooting its power in despair." .. br .. "Your hunt is an irresistible song of dread which muddles your prey's attention.") .. nlp ..
				"Survivors performing Healing or Repairing actions suffer from the following effect:" ..
				list(b("Increases") .. " the Progression penalty for " .. i("Failed Skill Checks") .. " by #pl(1).") ..
				"Each time a Survivor is hooked, #pn grows in power and gains " .. clror("#tokenGain") .. ", up to a maximum of " .. clro("#tokenMax") .. dot .. br ..
				"Survivors performing Healing or Repairing actions suffer from the following additional effect:" ..
				list(
					b("Reduces") .. " the time between the audio cue announcing an imminent " .. i("Skill Check") .. " and it appearing, depending on the number of accumulated Tokens:",
					nbullet .. bclr("faded jade", "1 Token") .. colon .. space .. clro("#penalties(1)"),
					nbullet .. bclr("faded jade", "2 Tokens") .. colon .. space .. clro("#penalties(2)"),
					nbullet .. bclr("faded jade", "3 Tokens") .. colon .. space .. clro("#penalties(3)"),
					nbullet .. bclr("faded jade", "4 Tokens") .. colon .. space .. clro("#penalties(4)"),
					nbullet .. bclr("faded jade", "5 Tokens") .. colon .. space .. b("Suppresses") .. " the audio cue altogether.") ..
				loadoutStrings.hexPerkFooter .. nlp ..
				quote("That song, it drives me crazy!")
	},
	["Knock Out"] = {
		desc =
				quote("The trauma caused by your brutal attacks makes crying for help painfully difficult.") .. nlp ..
				"Whenever a Survivor moves farther than " .. clror("#range") .. " from a " .. iconLink(ils.pallet) .. " within " .. clro("#timer") .. " of dropping it and without the Pallet being destroyed, #pn triggers its effect:" ..
				list("Causes them to suffer from a " .. clro("#hindered") .. space .. effects("perk", "Knock Out", ils.hindered) .. " for #pl(1).") ..
				quote("Oh, that gun's no good. The old way... with a sledge! You see, that way's better. They die better that way.", "Nubbins Sawyer")
	},
	["Barbecue & Chilli"] = {
		desc =
				"A deep bond with The " .. iconLink(ils.entity) .. " unlocks potential in one's Aura-reading ability." ..
				bullet .. "After hooking a Survivor, all Survivors who are at least #pl(1) away from that Hook have their " .. iconLink(ils.aura) .. " revealed to you for " .. clror("5 seconds") .. dot .. nlp ..
				quote("I just can't take no pleasure in killing. There's just some things you gotta do. Don't mean you have to like it.", "Drayton Sawyer")
	},
	["Franklin's Demise"] = {
		desc =
				"Survivors hit with your vicious " .. i(link("Basic Attack")) .. " drop any equipped " .. iconLink(ils.item) .. " on impact:" ..
    			list("The " .. iconLink(ils.auras) .. " of lost " .. b("Items") .. " are revealed to within #pl(1).") ..
				quote("Sally, I hear something. Stop! Stop!", "Franklin Hardesty")
	},
	["Fire Up"] = {
		desc =
				"The increased pressure of losing your preys fills you with anger and gives you unsuspected motivation." .. nlp ..
				"For each completed " .. b("Generator") .. ", #pn gains " .. clror("+1 Token") .. ", up to a maximum of " .. clro("5 Tokens") .. colon ..
				list(
					b("Increases") .. " the Action speeds for the following interactions by a stack-able #pl(1) per Token, up to a maximum of #pl(2):",
					nbullet .. "Picking up and dropping Survivors.",
					nbullet .. "Breaking " .. iconLink(ils.breakableWalls) .. " and dropped " .. iconLink(ils.pallets) .. dot,
					nbullet .. "Damaging " .. iconLink(ils.generators) .. dot,
					nbullet .. "Vaulting " .. iconLink(ils.windows) .. dot) ..
				quote("Now why don't you just fucking die?", "Freddy Krueger")
	},
	["Remember Me"] = {
		desc =
				"Whenever the " .. ibil(ils.obsession) .. " loses a " .. iconLink(ils.healthState) .. " by any means, #pn gains " .. clror("#tokenGain") .. ", up to a maximum of #pl(1):" ..
				list(
					b("Increases") .. " the Opening time of both " .. iconLink(ils.exitGates) .. " by a stack-able " .. clro("#stack") .. " per Token, up to a maximum additional Opening time of #pl(2).",
					nbullet .. "This results in a maximum possible Opening time of #pl(3) for both " .. b("Exit Gates") .. dot) ..
				"#pn does not apply its penalty to the " .. b(i("Obsession")) .. ", allowing them to open both " .. b("Exit Gates") .. " in the default time of " .. clro("#gateDefault") .. dot .. nlp ..
				loadoutStrings.obsessionPerkKiller .. nlp ..
				quote("You don't remember? You must. You're my number one, and you'll never wake up again.", "Freddy Krueger")
	},
	["Blood Warden"] = {
		desc =
				"As soon as at least one " .. iconLink(ils.exitGate) .. " is opened, #pn activates:" .. 
				list("The " .. iconLink(ils.auras) .. " of " .. iconLink(ils.survivors) .. " are revealed to you, whenever they are inside the " .. b("Exit Gate") .. dot) ..
				"Once per Trial, hooking a Survivor while #pn is active calls upon The " .. iconLink(ils.entity) .. " to trigger the following effect:" ..
				list(b("Blocks") .. " all opened " .. b("Exit Gates") .. " for #pl(1), preventing any remaining Survivor from leaving the Trial through them.") ..
				quote("This is my world. And you can't ever leave.", "Freddy Krueger")
	},
	["Wake Up!"] = {
		desc =
				"Unlocks potential in your Aura-reading ability." .. br ..
				"Once all " .. iconLink(ils.generators) .. " are completed, #pn activates:" ..
				list(
					"The " .. iconLink(ils.auras) .. " of the " .. iconLink(ils.exitGateSwitches) .. " are revealed to you permanently while within " .. clror("#range") .. dot,
					"Your Aura is revealed to all other Survivors within " .. clro("#range") .. " while you are opening an " .. b("Exit Gate") .. dot,
					b("Increases") .. " your Gate-Opening speed by #pl(1) and by an additional " .. clro("#effect") .. " for each Survivor still alive in the Trial up to a maximum of #pl(2).") .. 
				quote("Ok, look. If we survive the next 24 hours, then I'll take you out on a real date.", "Quentin Smith")
	},
	["Pharmacy"] = {
		desc =
				quote("You have a knack for finding medicine.") .. nlp ..
				"While unlocking a " .. iconLink(ils.chest) .. ", you benefit from the following effects:" ..
				list(
					b("Increases") .. " the Unlocking and Rummaging speeds by #pl(1).",
					b("Reduces") .. " the audible range of all noises related to the " .. i("Unlocking") .. " interaction by " .. clror("#noiseRange") .. dot,
					"Guarantees an " .. iconLink("Emergency Med-Kit") .. " after completing the interaction.") .. nlp ..
				"You can rummage each chest " .. clror("1") .. " time" .. dot .. nlp ..
				quote("Adrenaline, it is going to keep us awake. I stole it from one of the Nurse's carts.", "Quentin Smith")
	},
	["Vigil"] = {
		desc =
				quote("You watch over your friends, even in dire situations.") .. nlp ..
				"You recover #pl(1) faster from the following:" ..
				list("The " .. effects("perk", "Vigil", ils.exhausted) .. dot) ..
				"#pn extends its effect to all Survivors within " .. clror("#range") .. " of your location and lingers for " .. clro("#linger") .. " after leaving its " .. i("Area of Effect") .. dot .. br ..
				loadoutStrings.singleInstancePerk .. nlp ..
				quote("I am gonna be here when you wake up. You are gonna make it.", "Quentin Smith")
	},
	["Scourge Hook: Hangman's Trick"] = {
		desc =
				quote("Your ingenious modifications to hooks alert you of tampering.") .. nlp ..
				loadoutStrings.scourgeHookDefault .. nlp ..
				"While carrying a Survivor, #pn triggers its primary effect:" ..
				list("The Auras of all Survivors within #pl(1) of a " .. bclr("white", "Scourge Hook") .. " are revealed to you.") ..
				"Whenever a Survivor starts the " .. i("Sabotage") .. " action on any " .. iconLink(ils.hook) .. ", #pn triggers its secondary effect:" ..
				list("Triggers a " .. i(link("Loud Noise Notification")) .. " at the location of that " .. b("Hook") .. dot) ..
				quote("No excuses, no equivocations... No crying.", "Amanda Young")
	},
	["Surveillance"] = {
		desc =
				"Unlocks potential in your Aura-reading ability:" .. nlp ..
				"The " .. iconLink(ils.auras) .. " of damaged " .. iconLink(ils.generators) .. " are highlighted based on their current state:" .. 
				list(
					bclr("white", "White Aura") .. colon .. space .. "The " .. b("Generator") .. " is currently regressing.",
					bclr("yellow", "Yellow Aura") .. colon .. space .. "The " .. b("Generator") .. " stopped regressing due to Survivor-intervention.",
					nbullet .. "This effect lasts for #pl(1), after which the " .. b("Generator Aura") .. " returns to its default colour.") ..
				"While Survivors are repairing " .. b("Generators") .. ", they suffer from the following effect:" ..
				list(b("Increases") .. " the audible range of all noises related to the " .. i("Repair") .. " interaction by " .. clror("#range") .. dot) ..
				quote("Are you gonna behave?", "Amanda Young")
	},
	["Make Your Choice"] = {
		desc =
				"Whenever a Survivor is rescued from a " .. iconLink(ils.hook) .. ", while you are farther than " .. clror("32 metres") .. " away, #pn activates:" .. 
				list(
					"Causes the unhooking Survivor to scream and reveal their location to you.",
					"Causes them to suffer from the " .. effects("perk", "Make Your Choice", ils.exposed) .. " for #pl(1).") ..
				"#pn has a cooldown of #pl(1)." .. nlp ..
				quote("You'd be surprised what tools can save a life.", "Amanda Young")
	},
	["Tenacity"] = {
		desc =
				quote("There is nothing stopping you.") .. nlp ..
				"Your ferocious tenacity in dire situations allows you to benefit from the following effects while in the " .. iconLink(ils.dyingState) .. colon ..
				list(
					"Grants the ability to recover while crawling.",
					"Grants a #pl(1)" .. space .. effects("perk", "Tenacity", ils.haste) .. dot,
					b("Reduces") .. " the volume of " .. i("Grunts of Pain") .. " by " .. clror("#volume") .. dot, 
					b("Blocks") .. " your " .. iconLink(ils.aura) .. " from being read.") ..
				quote("What the hell is this? I'm taking this bastard down!", "Detective David Tapp")
	},
	["Detective's Hunch"] = {
		desc =
				"Unlocks potential in your Aura-reading ability." .. br ..
				"Whenever a " .. b("Generator") .. " is completed, #pn triggers its effect:" ..
				list(
					"The " .. iconLink(ils.auras) .. " of the following objects within #pl(1) of your location are revealed to you for " .. clror("#duration") .. colon,
					nbullet .. space .. iconLink(ils.chests),
					nbullet .. space .. iconLink(ils.generators),
					nbullet .. space .. iconLink(ils.totems)) ..
				quote("Are you able to tell us where you were last night?", "Detective David Tapp")
	},
	["Stake Out"] = {
		desc =
				quote("Getting close to the Killer fills you with determination.") .. nlp ..
				"Staying in the " .. iconLink(ils.terrorRadius) .. " and within " .. clror("#range") .. " of the Killer without being chased grants " .. clror("#tokenGain") .. " every " .. clro("#tokenChargeTime") .. ", up to a maximum of #pl(1)." .. br ..
				"While performing a skilful interaction that can trigger " .. iconLink(ils.skillChecks) .. ", you benefit from the following effects:" ..
				list(
					"Replaces regular Skill Checks with special Skill Checks" .. dot,
					nbullet .. "These Skill Checks grant " .. clro("#effect(1)") .. " more progress on success and lose " .. clro("#effect(2)") .. " more progress on miss" .. dot,
					nbullet .. "Succeeding or missing a special Skill Check consumes " .. clro("#tokenCost") .. dot) .. nlp ..
				quote("I had you, I had you on your knees. You're runnin' scared because we had you. We're gonna close this case!", "Detective David Tapp")
	},
	["Bamboozle"] = {
		desc =
				"You benefit from the following permanent effect:" .. 
				list(b("Increases") .. " your Vaulting speed by #pl(1).") ..
				"Whenever you vault a " .. iconLink(ils.window) .. ", #pn calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Blocks") .. " it to all Survivors for #pl(2).",
					nbullet .. "Vaulting it again within that time resets the timer.",
					nbullet .. "Vaulting a different one transfers the effect to it instead.") ..
				"#pn does not extend its effects to vaulting a dropped " .. b("Pallet") .. dot
	},
	["Coulrophobia"] = {
		desc =
				quote("Even those without a fear of clowns know to be terrified of you.") .. nlp ..
				"Survivors inside your " .. iconLink(ils.terrorRadius) .. " suffer from the following effects:" ..
				list(
					b("Reduces") .. " all Healing speeds by #pl(1).",
					b("Increases") .. " the Pointer-Rotation speed of " .. i("Healing Skill Checks") .. " by " .. clror("#effect") .. dot)
	},
	["Pop Goes the Weasel"] = {
		desc =
				quote("A deep bond with The Entity unlocks great strength.") .. nlp ..
				"After hooking a Survivor, #pn activates for #pl(1)." .. br ..
				"While active, manually damaging a " .. iconLink(ils.generator) .. " triggers the following effect:" ..
				list("Increases the regression amount by " .. clror("#penalty") .. " resulting in " .. clro("#totalPenalty") .. " regression" .. dot) ..
				"#pn deactivates after use or once its timer elapses."
	},
	["Dance With Me"] = {
		desc =
				"When performing a " .. i("Rushed") .. " action to vault a " .. iconLink(ils.window) .. " or exit a " .. iconLink(ils.locker) .. ", #pn triggers its effect:" ..
				list(b("Suppresses") .. " the creation of your " .. iconLink(ils.scratchMarks) .. " for " .. clror("#stealth") .. dot) ..
				"#pn has a cool-down of #pl(1)." .. nlp ..
				quote("Another show's off and runnin'," .. br .. "Dance with me, cuz there's a storm a commin'" .. br .. "Follow my boots, try to keep up,".. br .."Dance with me, until sun up.", "Kate Denson's " .. '"' .. "Dance with Me" .. '"')
	},
	["Windows of Opportunity"] = {
		desc =
				"Unlocks potential in your Aura-reading ability." .. nlp ..
				list(
				"The " .. iconLink(ils.auras) .. " of " .. iconLink(ils.windows) .. " are revealed to you within #pl(1)." .. dot,
				"You vault " .. b("Windows") .. space .. clror("#effect") .. " faster" .. dot) ..
			    "#pn goes on a #pl(1) cool-down when you vault a " .. b("Window") .. dot .. nlp ..
				quote("Rise and shine, work hard, carve out your name,".. br .."Take aim, pull the trigger, hit the bulls eye for fame,".. br .."Know the value of faith, an' family, and don't you complain,".. br .."Open wide, your windows of opportunity", "Kate Denson's " .. '"' .. "Windows of Opportunity" .. '"')
	},
	["Boil Over"] = {
		desc =
				"You are a battler and do everything to escape a foe's grasp." .. nlp ..
				"While being carried by the Killer, the following effects apply:" ..
				list(
					b("Increases") .. " the strength of the " .. i("Struggle Effects") .. " on the Killer from your " .. i("Wiggling") .. " by #pl(1).",
					b("Suppresses") .. " the ability of the Killer to read the " .. iconLink(ils.auras) .. " of all " .. iconLink(ils.hooks) .. " within " .. clror("16 metres") .. dot,
					"Grants " .. clro("+33 %") .. " of your current Wiggle progression upon landing, if the Killer drops from height.") ..
				quote("Buck and Wild,".. br .."Swing to be free,".. br .."Your hands just can't keep ahold of me.", "Kate Denson's " .. '"' .. "Boil Over" .. '"')
	},
	["Spirit Fury"] = {
		desc =
				quote("Each obstacle you break magnifies the wrath of The Entity.") .. nlp ..
				"After manually breaking a total of #pl(1) dropped " .. iconLink(ils.pallets) .. " by any means, #pn activates:" ..
				list("Instantly breaks the next " .. b("Pallet") .. " used by a Survivor to stun you.") ..
				"#pn deactivates after use and does not affect the duration of the " .. i("Pallet Stun") .. dot .. nlp ..
				quote("Fury is her blood.")
	},
	["Hex: Haunted Ground"] = {
		desc =
				loadoutStrings.hexPerkTrap .. br ..
				"Blessing or cleansing either " .. b("Hex Totem") .. " trips the trap and triggers the following effect:" ..
				list("Causes all Survivors to suffer from the " .. effects("perk", "Hex: Haunted Ground", ils.exposed) .. " for #pl(1).") ..
				"#pn extinguishes the second " .. b("Hex Totem") .. " after tripping its trap." .. br ..
				"#pn is disabled for the remainder of the Trial after triggering its effect." .. nlp ..
				quote("Her home become profane.")
	},
	["Rancor"] = {
		desc =
				"Whenever a " .. iconLink(ils.generator) .. " is completed, #pn triggers its primary effects:" ..
				list(
					"Causes all Survivors to scream and trigger a " .. i(link("Loud Noise Notification")) .. " at their current location.",
					nbullet .. "This effect lingers for " .. clror("#duration") .. dot,
					"Your " .. iconLink(ils.aura) .. " is revealed to the " .. ibil(ils.obsession) .. " for #pl(1).") ..
				"Once the " .. iconLink(ils.exitGates) .. " are powered, #pn additionally triggers its secondary effects on the " .. b(i("Obsession")) .. colon ..
				list(
					"Inflicts the " .. effects("perk", "Rancor", ils.exposed) .. " for the remainder of the Trial.",
					"Grants the ability to kill them when in close proximity.") ..
				loadoutStrings.obsessionPerkKiller
	},
	["Diversion"] = {
		desc =
				"After staying in the " .. iconLink(ils.terrorRadius) .. " without being chased for #pl(1), #pn activates." .. br ..
				"While active, press the " .. loadoutStrings.activeAbilityButton .. " while crouched and motionless to throw a pebble in the direction you are facing:" ..
				list(
					"Creates a distraction for the Killer at its landing location " .. clror("#distance") .. " away:",
					nbullet .. "Triggers a " .. i(link("Loud Noise Notification")) .. dot,
					nbullet .. "Creates fake " .. iconLink(ils.scratchMarks) .. dot) ..
				"#pn deactivates after use." .. nlp ..
				quote("There's what is easy and then there's what is right. If you confuse the two, there's no telling what you become.", "Adam Francis")
	},
	["Deliverance"] = {
		desc =
				"After safely unhooking another Survivor, #pn activates:" .. 
				list(
					"Grants the ability to perform a successful " .. i("Self-Unhook") .. " at any point during the first " .. i("Hook Stage") .. dot,
					"Causes the " .. effects("perk", "Deliverance", ils.broken) .. " for #pl(1) after unhooking yourself.") ..
				"#pn cannot be used during the second " .. i("Hook Stage") .. " or if you are hooked as the " .. bclr("yellow", "Last Survivor Standing") .. dot .. br ..
				"#pn is disabled for the remainder of the Trial after use." .. nlp ..
				quote("I was raised by a strict man who taught me how to make the best of a bad situation.", "Adam Francis")
	},
	["Autodidact"] = {
		desc =
				"Succeeding a " .. iconLink(ils.skillCheck) .. " while healing another Survivor grants " .. clror("+1 Token") .. ", up to a maximum of #pl(1):" ..
				list(
					b("Suppresses") .. space .. i("Great Healing Skill Checks") .. dot,
					"Causes " .. i("Good Healing Skill Checks") .. " to grant Healing progress based on the number of accumulated Tokens:",
					nbullet .. bclr("faded jade", "0 Tokens") .. colon .. space .. clro("-15 %") .. dot,
					nbullet .. bclr("faded jade", "1 Token") .. colon .. space .. clro("+0 %") .. dot,
					nbullet .. bclr("faded jade", "2 Tokens") .. colon .. space .. clro("+15 %") .. dot,
					nbullet .. bclr("faded jade", "3 Tokens") .. colon .. space .. clro("+30 %") ..  space .. "(limit of " .. bclr("green", "Tier I") .. ").",
					nbullet .. bclr("faded jade", "4 Tokens") .. colon .. space .. clro("+45 %") ..  space .. "(limit of " .. bclr("blue", "Tier II") .. ").",
					nbullet .. bclr("faded jade", "5 Tokens") .. colon .. space .. clro("+60 %") ..  space .. "(limit of " .. bclr("purple", "Tier III") .. ").") ..
				"#pn is inactive when healing using a " .. iconLink(ils.medKit) .. dot .. nlp ..
				quote("There's no limit to what you can achieve, as long as you back with hard work.", "Adam Francis")
	},
	["Discordance"] = {
		desc =
				"Any " .. iconLink(ils.generator) .. " within a range of #pl(1) that is being repaired by " .. clror("2 or more Survivors") .. " is marked by a " .. bclr("yellow", "yellow") .. space .. iconLink(ils.aura) .. dot ..
				bullet .. "When the Generator is first highlighted, #pn triggers a " .. i(link("Loud Noise Notification")) .. " on the Generator." ..
				bullet .. "After the Generator is no longer within range or is being repaired by just " .. clro("1 Survivor") .. ", the highlighted Aura will linger for another " .. clro("4 seconds") .. dot .. nlp ..
				quote("Smartasses get killed. We always see to that.", "The Legion")
	},
	["Mad Grit"] = {
		desc =
				"Whenever you are carrying a Survivor, #pn activates:" ..
				list(
					b("Removes") .. " the Cool-down of missed " .. i(link("Basic Attacks")) .. dot,
					b("Pauses") .. " the " .. i("Wiggle Progression") .. " of the carried Survivor for #pl(1) each time you successfully hit another Survivor.") ..
				quote("There's no getting out of this now. We're too good at it.", "The Legion")
	},
	["Iron Maiden"] = {
		desc =
				"While interacting with an empty " .. iconLink(ils.locker) .. ", #pn applies its primary effect:" .. 
				list(b("Increases") .. " your Search speed by #pl(1).") ..
				"Whenever a Survivor exits a " .. b("Locker") .. ", #pn triggers its secondary effects:" ..
				list(
					"Causes them to scream and trigger a " .. i(link("Loud Noise Notification")) .. " at their current location.",
					nbullet .. "This effect lingers for " .. clror("#duration") .. dot,
					"Causes them to suffer from the " .. effects("perk", "Iron Maiden", ils.exposed) .. " for " .. clro("#exposed") .. dot) ..
					quote("This is no place for cowards.", "The Legion")
	},
	["Breakdown"] = {
		desc =
				"After you are unhooked by any means, #pn triggers its effects:" ..
				list(
					"Instantly breaks that " .. iconLink(ils.hook) .. dot,
					nbullet .. b("Increases") .. " its Auto-Repair timer to " .. clror("#timer") .. dot,
					"The " .. iconLink(ils.aura) .. " of the Killer is revealed to you for #pl(1).") ..
				quote("Charge from the Belly of the Beast." .. br .. "Here's a sketch/painting on a piece of wood I saw by the side of this road. I felt like it got a story to tell. And it didn't waste its second chance.", "Jeff, ink and oil wash on slice of wood, 12x16")
	},
	["Aftercare"] = {
		desc =
				"Unlocks potential in your Aura-reading ability:" ..
				list(
					"You see the " .. iconLink(ils.auras) .. " of the #pl(1) most recent Survivor(s) that helped you or vice versa:",
					nbullet .. "Rescued from a " .. iconLink(ils.hook) .. dot,
					nbullet .. "Completed a Healing action on.",
					"They also see your Aura.") ..
				"#pn resets its effects when you are hooked by the Killer." .. nlp ..
				quote("A Mercy that Rips the Storm." .. br .. "Oil work to honour my best buddies who happen to be the best musicians I know. Their first album is still my favourite. It got me through a dark time in my life.", "Jeff, oil on canvas, 16x16")
	},
	["Distortion"] = {
		desc =
				"Start the Trial with " .. clror("#tokens(1)") .. dot .. br ..
				"Whenever the Killer attempts to read your ".. iconLink(ils.aura) .. ", #pn automatically consumes " .. clro("#tokens(2)") .. " to trigger the following effects for #pl(1):" ..
				list(
					b("Blocks") .. " your Aura from being read.",
					b("Suppresses") .. " the creation of your " .. iconLink(ils.scratchMarks) .. dot) ..
				"#pn recharges " .. clro("#tokens(3)") .. " every " .. clro("#tokens(4)") .. " of being chased by the Killer, and can hold " .. clro("#tokens(5)") .. dot .. br ..
				"#pn does not trigger its effects while in the " .. iconLink(ils.dyingState) .. dot
	},
	["Corrupt Intervention"] = {
		desc =
				"Your prayers invoke a dark power that meddles with the Survivors' chances of survival." ..
				bullet .. "At the start of the Trial, the " .. clror("3 Generators") .. " located farthest from you are blocked by The " .. iconLink(ils.entity) .. " for #pl(1)." .. nlp ..
				"#pn deactivates prematurely once the first Survivor is put into the " .. iconLink(ils.dyingState) .. dot .. nlp ..
				quote("It shall be known across the land that the Gods curse the unfaithful.", "(The Tablet of Adiris, 3.7)")
	},
	["Infectious Fright"] = {
		desc =
				quote("The cries of the unfaithful make your heart leap.") .. nlp ..
				"Whenever a Survivor is put into the " .. iconLink(ils.dyingState) .. " by any means, all other Survivors within your " .. iconLink(ils.terrorRadius) .. " will scream and reveal their current location to you for #pl(1)." .. brnl ..
				quote("Horror overcomes the heart of infidels who cry at the feet of the fallen.", "(Hymn of Praise, 11.4)")
	},
	["Dark Devotion"] = {
		desc =
				quote("The display of your Powers creates a whirlwind of panic that spreads throughout the land.") .. nlp ..
				"Whenever the " .. ibil(ils.obsession) .. " becomes injured by any means, #pn activates for #pl(1):" ..
				list(
					"Transfers your " .. iconLink(ils.terrorRadius) .. " to the " .. b(i("Obsession")) .. dot,
					nbullet .. "This " .. i("Terror Radius") .. " is set to " .. clror("#radius") .. dot,
					"Grants the " .. effects("perk", "Dark Devotion", ils.undetectable) .. dot) .. 
				loadoutStrings.obsessionPerkKiller .. nlp ..
				quote("And terror shall take hold of a defiant non-believer, who shall falsely announce my arrival.", "(The Tablet of Adiris, 48.9)")
	},
	["Solidarity"] = {
		desc =
				quote("Sharing painful experiences has the power to heal.") .. nlp ..
				"While injured, healing another Survivor causes #pn to apply the following effects:" ..
				list(
					"Grants the ability to passively heal yourself while healing other Survivors.",
					b("Reduces") .. " your Personal Healing speed to #pl(1) of your Altruistic Healing speed.") ..
				quote("Showing up when things get rough, listening to people's problems, and supporting those in need; that's how you become stronger, that's how you grow.", "Jane Romero")
	},
	["Poised"] = {
		desc =
				quote("Achieving goals boosts your confidence.") .. nlp ..
				"Whenever a " .. iconLink(ils.generator) .. " is completed, #pn triggers its primary effect:" ..
				list(b("Suppresses") .. " the creation of your " .. iconLink(ils.scratchMarks) .. " for #pl(1).") ..
				"Whenever you start repairing a " .. b("Generator") .. " for the first time, #pn triggers its secondary effect:" ..
				list("The " .. iconLink(ils.aura) .. " of the Killer is revealed to you for " .. clror("#duration") .. dot) ..
				quote("Ok, stay calm. Don't overthink it and just keep moving forward: you got this.", "Jane Romero")
	},
	["Head On"] = {
		desc =
				quote("When your mind is set, there better be no one standing in your way.") .. nlp ..
				"After hiding in a " .. iconLink(ils.locker) .. " for " .. clror("#charge") .. ", #pn activates." .. br ..
				"While active, hold the " .. loadoutStrings.sprintButton .. " while exiting the " .. b("Locker") .. " to trigger its effect:" ..
				list(
					"Causes you to forcefully launch yourself from the " .. b("Locker") .. ", stunning the Killer if they are too close to it:",
					nbullet .. "Has a Stun range of " .. clro("#stun(1)") .. dot,
					nbullet .. "Has a Stun duration of " .. clro("#stun(2)") .. dot,
					"Triggers a " .. i(link("Loud Noise Notification")) .. " for the Killer upon missing.") ..
				loadoutStrings.exhaustionPerkNoUse .. br ..
				"#pn causes the " .. effects("perk", "Head On", ils.exhausted) .. " for #pl(1) on a successful stun." .. nlp ..
				quote("People are remembered for the challenges they overcome. You can run away and forget what you're capable of or you can face your fears and remind the world of who you are.", "Jane Romero")
	},
	["Flip-Flop"] = {
		desc =
				quote("You have an uncanny ability to escape the inevitable.") .. nlp ..
				list("Recovering in the " .. iconLink(ils.dyingState) .. " also charges the " .. i("Wiggle Meter") .. " at " .. clror("#conversion") .. " of the Recovery rate and up to a maximum of #pl(1) of Wiggle Progression.") ..
				quote("Catch ya on the flip-flop.", "Ash Williams")
	},
	["Buckle Up"] = {
		desc =
				"Whenever you are healing a dying Survivor, #pn activates:" .. br ..
				"During the Healing action, you and the dying Survivor benefit from the following primary effect:" ..
				list("The " .. iconLink(ils.aura) .. " of the Killer is revealed to you both.") ..
				"After completing the Healing action, the other Survivor benefits from the following secondary effects for #pl(1):" ..
				list(
					b("Suppresses") .. " the creation of their " .. iconLink(ils.scratchMarks) .. dot,
					"Grants them a " .. clror("#haste") .. space .. effects("perk", "Buckle Up", ils.haste) .. dot) ..
				loadoutStrings.exhaustionPerkNoTrigger .. nlp ..
				quote("Ghost beaters never leave a man behind.", "Ash Williams")
	},
	["Mettle of Man"] = {
		desc =
				quote("Evil has a way of always finding you.") .. nlp ..
				"After triggering a " .. clror("#counter") .. space .. i(link("Protection Hit")) .. " by any means, #pn activates:" ..
				list(
					"While in the " .. iconLink(ils.injuredState) .. ", #pn shields you from the next attack that would put you into the " .. iconLink(ils.dyingState) .. dot,
					"After healing back to full health by any means, #pn reveals your " .. iconLink(ils.aura) .. " to the Killer whenever you are farther than #pl(1) from their location.") ..
				"#pn deactivates after entering the " .. i("Dying State") .. " by any means." .. nlp ..
				loadoutStrings.obsessionChancePlus .. br ..
				loadoutStrings.obsessionPerkSurvivor .. nlp ..
				quote("Evil has a bullseye on my back the size of Tiger Stadium.", "Ash Williams")
				
	},
	["I'm All Ears"] = {
		desc =
				quote("You sharpen your keen senses in the dark Realm of The " .. iconLink(ils.entity) .. dot) .. nlp ..
				"Whenever a Survivor performs a " .. i("Rushed Vault") .. " action within " .. clror("#range") .. " of your location, you benefit from the following effect:" ..
				list("The " .. iconLink(ils.aura) .. " of the Survivor is revealed to you for " .. clro("#duration") .. dot) ..
				"#pn has a cool-down of #pl(1)." .. nlp ..
				quote("There is no need to worry. I've been preparing my whole life for this.", "The Ghost Face")
	},
	["Thrilling Tremors"] = {
		desc =
				quote("Your dark designs and shrewd composure rouse The " .. iconLink(ils.entity) .. dot) .. nlp ..
				"After picking up a Survivor, #pn triggers its effects:" ..
				list(
					b("Blocks") .. " all " .. iconLink(ils.generators) .. " not currently being repaired by any Survivors for " .. clror("#duration") .. dot,
					"The " .. iconLink(ils.auras) .. " of " .. b("Blocked Generators") .. " are highlighted to you in " .. bclr("white", "white") .. dot) ..
				"#pn has a cool-down of #pl(1)." .. nlp ..
				quote("The night assists me and it's endless here.", "The Ghost Face")
	},
	["Furtive Chase"] = {
		desc =
				quote("You lurk in the shadows, eliminating your victims one by one.") .. nlp ..
				"After hooking the " .. ibil(ils.obsession) .. ", you benefit from the following effects for #pl(1):" ..
				list(
					"Grants the " .. effects("perk", "Furtive Chase", ils.undetectable) .. dot,
					"Grants a " .. clror("#haste") .. space .. effects("perk", "Furtive Chase", ils.haste) .. dot) ..
				"Whenever the " .. b(i("Obsession")) .. " is unhooked by another Survivor, the " .. b(i("Obsession") .. space .. "Status") .. " transfers to their Rescuer." .. br ..
				loadoutStrings.obsessionPerkKiller .. nlp ..
				quote("You have no idea what I have planned for you. It'll be in the news for weeks. I'll make sure of that.", "The Ghost Face")
	},
	["Surge"] = {
		desc =
				quote("Your eerie presence charges the air and interferes with technology.") .. nlp ..
				"Whenever you put a Survivor into the " .. iconLink(ils.dyingState) .. " with your " .. i(link("Basic Attack")) .. ", #pn triggers its effect:" ..
				list(
					"Causes all " .. iconLink(ils.generators) .. " within " .. clror("#range") .. " of your location to instantly explode and start regressing.",
					"Instantly regresses all affected " .. b("Generators") .. " by #pl(1).") ..
				quote("The creature appears to have some unknown influence over electricity and nearby electronics.", "Hawkins National Laboratory")
	},
	["Mindbreaker"] = {
		desc =
				quote("Your distressing presence drains and weakens your prey.") .. nlp ..
				"While repairing a " .. iconLink(ils.generator) .. ", Survivors suffer from the following effects:" ..
				list(
					"Incurs the " .. effects("perk", "Mindbreaker", ils.blindness, ils.exhausted) .. dot,
					nbullet .. "Both " .. b("Status Effects") .. " linger for #pl(1) after ending the interaction.") ..
				loadoutStrings.exhaustionPerkNoOverridePause .. nlp ..
				quote("The specimen's apparent telepathic ability can evoke feelings of dread and fatigue in nearby individuals.", "Hawkins National Laboratory")
	},
	["Cruel Limits"] = {
		desc =
				quote("Your ties to the otherworldly manifest when your prey attempts to get away.") .. nlp ..
				"Whenever a " .. iconLink(ils.generator) .. " is completed, #pn triggers its effect for #pl(1):" ..
				list(
					b("Blocks") .. " all " .. iconLink(ils.windows) .. " for all Survivors.",
					"The " .. iconLink(ils.auras) .. " of the " .. b("Blocked Windows") .. " are revealed to you and highlighted in " .. bclr("yellow", "yellow") .. dot) ..
				quote("The specimen seems to be able to affect the state of nearby objects, as if they existed in some other form within a dimension alternate to our own.", "Hawkins National Laboratory")
	},
	["Better Together"] = {
		desc =
				quote("You seek justice and uncover the truth no matter what obstacle stands in your way.") .. nlp ..
				"While repairing any " .. iconLink(ils.generator) .. ", you and the other Survivors benefit from the following primary effect:" ..
				list("The " .. iconLink(ils.aura) .. " of that " .. b("Generator") .. " is revealed to all Survivors and highlighted in " .. bclr("yellow", "yellow") .. dot) ..
				"Whenever the Killer downs another Survivor while you are repairing, you benefit from the following secondary effect:" ..
				list("The Auras of all Survivors are revealed to you for #pl(1).") .. 
				quote("Let's burn that lab to the ground.", "Nancy Wheeler")
	},
	["Fixated"] = {
		desc =
				quote("When you have a goal in mind, there is no turning back; better to ask forgiveness than permission.") .. nlp ..
				"You benefit from the following permanent effects:" ..
				list(
					b("Increases") .. " your Walking speed by #pl(1).",
					"Unlocks the ability to see your own " .. iconLink(ils.scratchMarks) .. dot) ..
				quote("I wanna finish what we started. I want to kill it.", "Nancy Wheeler")
	},
	["Inner Strength"] = {
		desc =
				quote("You look inwards and trust your instincts when you feel lost and alone.") .. nlp ..
				"After cleansing a " .. iconLink(ils.totem) .. " of any kind, #pn activates." .. br ..
				"While active, hiding inside a " .. iconLink(ils.locker) .. " for #pl(1) triggers the following effect:" ..
				list("Heals you to the next " .. iconLink(ils.healthState) .. dot) ..
				"#pn deactivates after use." .. br ..
				"#pn cannot be used while suffering from the " .. effects("perk", "Inner Strength", ils.broken) .. dot .. nlp ..
				quote("All this time I've been trying so hard to pretend like everything's fine, but it's not.", "Nancy Wheeler")
	},
	["Babysitter"] = {
		desc =
				quote("While you have a reputation for being self-centred, you risk it all to help those in need.") .. nlp ..
				"Whenever you unhook another Survivor, you benefit from the following effect:" ..
				list("The " .. iconLink(ils.aura) .. " of the Killer is revealed to you for " .. clror("#aura") .. dot) ..
				"The unhooked Survivor benefits from the following effects instead for #pl(1):" ..
				list(
					b("Suppresses") .. " the creation of their " .. iconLink(ils.scratchMarks) .. " and " .. iconLink(ils.poolsOfBlood) .. dot,
					b("Increases") .. " the strength of their " .. effects("perk", "Babysitter", ils.haste) .. " by " .. clro("#haste") .. dot) ..
				quote("I promised to keep you shitheads safe, and that's exactly what I plan on doing.", "Steve Harrington")
	},
	["Camaraderie"] = {
		desc =
				quote("Life has taught you the importance of friendship which has given you strength.") .. nlp ..
				"If you are hooked and enter the " .. i("Struggle Phase") .. ", #pn activates:" ..
				list(
					b("Pauses") .. " the " .. i("Struggle Phase") .. " timer for #pl(1) as soon as any Survivor comes within " .. clror("16 metres") .. " of your " .. iconLink(ils.hook) .. dot) .. 
				quote("So, remember once you get in there... pretend like you don't care. There you go, you're learning my friend. You're learning.", "Steve Harrington")
	},
	["Second Wind"] = {
		desc =
				quote("You have learnt to avoid awkward situations with parents." .. br .. "Part of you still thinks your best option is to run away and hope things will take care of themselves.") .. nlp ..
				"When you heal another " .. iconLink(ils.survivor) .. " for the equivalent of " .. clror(1) .. space .. iconLink(ils.healthState) .. ", #pn activates:" ..
				list(
					"The next time you are unhooked or unhook yourself, you suffer from the " .. effects("perk", "Second Wind", ils.broken) .. " until #pn deactivates.",
					"You are automatically healed " .. clro(1) .. space .. b("Health State") .. " after #pl(1).") ..
				"While #pn is active, the following conditions will deactivate it:" .. 
				list(
					"Successfully being healed by #pn.",
					"Being put into the " .. iconLink(ils.dyingState) .. " before the timer elapses." ) ..
				"#pn does not activate if you already suffer from the " .. b(i("Broken") .. space .. "Status Effect") .. dot .. nlp ..
				quote("Yeah, that's a no.", "Steve Harrington")
	},
	["Zanshin Tactics"] = {
		desc =
				quote("You are mentally alert and aware of key points on the battlefield and nearby enemies in retreat.") .. nlp ..
				"Unlocks potential in your Aura-reading ability:" ..
				list("The " .. iconLink(ils.auras) .. " of " .. iconLink(ils.pallets) .. " and " .. iconLink(ils.windows) .. " are revealed to you within " .. clror("#radius") .. dot) ..
				"Whenever a Survivor drops a " .. b("Pallet") .. ", #pn triggers the following effect:" ..
				list("Their Aura is revealed to you for #pl(1).") ..
				quote("Within your enemy's strength is weakness.", "Renjiro's Doctrine 12:5")
	},
	["Blood Echo"] = {
		desc =
				quote("The agony of one is inflicted onto others.") .. nlp ..
				"Whenever you hook a Survivor, #pn triggers its effect:" ..
				list("Causes all Survivors in the " .. iconLink(ils.injuredState) .. " to suffer from the " .. effects("perk", "Blood Echo", ils.exhausted, ils.haemorrhage)  .. " for #pl(1).") ..
				quote("Attack an enemy with precision and their allies will feel it.", "Renjiro's Doctrine 6:3")
	},
	["Nemesis"] = {
		desc =
				quote("You seek retribution on those who have wronged you.") .. nlp ..
				"Whenever a Survivor other than your " .. ibil(ils.obsession) .. " blinds you by any means or stuns you with a " .. iconLink(ils.pallet) .. " or a " .. iconLink(ils.locker) .. ", #pn triggers its primary effect:" ..
				list("Causes that Survivor to become your current " .. b(i("Obsession")) .. dot) ..
				"Whenever your " .. b(i("Obsession")) .. " switches to a different Survivor by any means, #pn triggers its secondary effects:" ..
				list(
					"Causes that Survivor to suffer from the " .. effects("perk", "Nemesis", ils.oblivious) .. " for #pl(1).",
					"Their " .. iconLink(ils.aura) .. " is revealed to you for " .. clror("#aura") .. dot) ..
				loadoutStrings.obsessionPerkKiller .. nlp ..
				quote("Only a fool would spit in a demon's face and declare victory.", "Renjiro's Doctrine 4:9")
	},
	["Lucky Break"] = {
		desc =
				quote("You have had your share of scrapes and bruises, but luck is always on your side.") .. nlp ..
				"Whenever you are in the " .. iconLink(ils.injuredState) .. ", #pn activates:" ..
				list(b("Suppresses") .. " the creation of " .. iconLink(ils.poolsOfBlood) .. " and " .. iconLink(ils.scratchMarks) .. " for up to #pl(1).") ..
				"Whenever you are healing another Survivor, #pn recharges by the same amount of time spent performing the Healing action, up to its initial maximum." .. br ..
				"#pn deactivates once its timer runs out or whenever your " .. iconLink(ils.healthState) .. " updates to any other but the " .. i("Injured State") .. dot .. nlp ..
				quote("That's not enough to beat me.<br>Not even close.", "Yui Kimura")
	},
	["Any Means Necessary"] = {
		desc =
				quote("You stand up for yourself, using whatever's on hand to gain an advantage.") .. nlp ..
				"Unlocks potential in your Aura-reading ability:" .. br .. 
				list("The " .. iconLink(ils.auras) .. " of dropped " .. iconLink(ils.pallets) .. " in the environment are revealed to you.") ..
				"While standing next to a dropped " .. b("Pallet") .. ", press and hold the " .. loadoutStrings.activeAbilityButton .. " to trigger the following effect:"  ..
				list(b("Resets") .. " the " .. b("Pallet") .. " to its upright position over #pl(1).") ..
				quote("I'll hit you with everything I've got. Then I'll do it again.", "Yui Kimura")
	},
	["Breakout"] = {
		desc =
				quote("You kick into high gear when someone is in trouble, inspiring them to overcome any obstacle.") .. nlp ..
				"While within " .. clror("#range") .. " of the Killer carrying another Survivor, the following effects apply:" ..
				list(
					"Grants you a #pl(1) " .. effects("perk", "Breakout", ils.haste) .. dot,
					b("Increases") .. " the Wiggling speed of the carried Survivor by " .. clro("#wiggling") .. dot) ..
				loadoutStrings.singleInstancePerk .. nlp ..
				quote("Come, we are going to rip our way out of this.", "Yui Kimura")
	},
	["Gearhead"] = {
		desc =
				quote("You have got an ear for well-oiled gears.") .. nlp ..
				"After a Survivor loses a " .. iconLink(ils.healthState) .. ", #pn activates for " .. clror("#activation") .. colon ..
				bullet .. "While #pn is active, a " .. iconLink(ils.survivor) .. " succeeding a " .. iconLink(ils.goodSkillCheck) .. " while repairing reveals their " .. iconLink(ils.aura) .. " to you for #pl(1)." .. nlp ..
				quote("Sometimes a man's best work is what puts him in the grave.", "The Prison Warden")
	},
	["Dead Man's Switch"] = {
		desc =
				"After hooking a Survivor, #pn triggers its effect:" ..
				list(
					"The first " .. iconLink(ils.generator) .. " any Survivor stops repairing for " .. clror("#duration") .. " is blocked for #pl(1)",
					nbullet .. "The " .. i("Blocked Generator") .. " is highlighted to you in " .. bclr("white", "white") .. dot) ..
				"#pn cannot activate if its effect is still active from a previous activation." .. nlp ..
				quote("I've seen the look on a man's face when he realises he's going to die.", "Caleb Quinn")
	},
	["Hex: Retribution"] = {
		desc =
				quote("A Hex that lashes out upon its destruction." .. br .. "Those who cross you will be punished.") .. nlp ..
				"Whenever a Survivor blesses or cleanses a " .. iconLink(ils.totem) .. ", #pn triggers its primary effect:" ..
				list("Causes that Survivor to suffer from the " .. effects("perk", "Hex: Retribution", ils.oblivious) .. " for #pl(1).") ..
				"Whenever a " .. b("Hex Totem") .. " is removed by any means, including its own, #pn triggers its secondary effect:" ..
				list("The " .. iconLink(ils.auras) .. " of all Survivors are revealed to you for " .. clror("#duration") .. dot) .. 
				loadoutStrings.hexPerkFooter .. nlp ..
				quote("Bloody fool, you pulled the trigger on yourself.", "Caleb Quinn")
	},
	["Off the Record"] = {
		desc =
				quote("You have learnt that a quiet approach is sometimes best.") .. nlp ..
				"After being unhooked or unhooking yourself, #pn activates for #pl(1):" ..
				list(
					b("Blocks") .. " your " .. iconLink(ils.aura) .. " from being revealed.",
					b("Suppresses") .. " your " .. i("Grunts of Pain") .. " while in the " .. iconLink(ils.injuredState) .. dot,
					b("Suppresses") .. " the creation of your " .. iconLink(ils.scratchMarks) .. dot,
					"Grants the " .. states(ils.endurance) .. dot,
					nbullet .. loadoutStrings.conspicuousActions) ..
				"#pn deactivates prematurely and is disabled for the remainder of the Trial upon powering the " .. iconLink(ils.exitGates) .. dot .. nlp ..
				quote("Trust me, I investigate thoroughly and discreetly.", "Zarina Kassir")
	},
	["Red Herring"] = {
		desc =
				quote("You have noticed that people pay attention to whatever makes the loudest noise.") .. nlp ..
				"After repairing a " .. iconLink(ils.generator) .. " for at least " .. clror("#activation") .. ", #pn triggers its primary effect:" ..
				list(
					"The " .. iconLink(ils.aura) .. " of that " .. b("Generator") .. " is highlighted to you in " .. bclr("yellow", "yellow") .. dot,
					"The highlight persists until either of the following occurs:",
					nbullet .. "The " .. b("Generator") .. " is completed.",
					nbullet .. "You start repairing a different " .. b("Generator") .. dot,
					nbullet .. "You enter a " .. b("Locker") .. dot) ..
				"When entering a " .. iconLink(ils.locker) .. ", #pn triggers its secondary effect:" ..
				list("Triggers a " .. i(link("Loud Noise Notification")) .. " for the Killer on the highlighted " .. b("Generator") .. dot) .. 
				"#pn has a cool-down of #pl(1)." .. nlp ..
				quote("The news edit out what is burdensome and complex. which is the truth.", "Zarina Kassir")
	},
	["For the People"] = {
		desc =
				quote("You risk life and injury for others.") .. nlp ..
				"While healthy and healing another Survivor without using a " .. iconLink(ils.medKit) .. ", press the " .. loadoutStrings.activeAbilityButton .. " to trigger the following effects:" ..
				list(
					"Trade " .. clror(1) .. space .. iconLink(ils.healthState) .. " with the other Survivor:",
					nbullet .. "Instantly heals them to the " .. iconLink(ils.injuredState) .. ", if they were dying or suffering from the " .. effects("perk", "For the People", ils.deepWound) .. dot,
					nbullet .. "Instantly heals them to full health, if they were injured.",
					"You yourself become injured and suffer from the " .. effects("perk", "For the People", ils.broken) .. " for #pl(1).",
					"You become the Killer's " .. ibil(ils.obsession) .. ", if not already.") .. 
				loadoutStrings.obsessionChanceMinus .. br ..
				loadoutStrings.obsessionPerkSurvivor .. nlp ..
				quote("We can write our own story and decide how it really ends.", "Zarina Kassir")
	},
	["Forced Penance"] = {
		desc =
				quote("Those who stand in the way of duty will suffer harsh judgement.") .. nlp ..
				"Whenever a Survivor triggers a " .. i(link("Protection Hit")) .. ", they suffer from the following effect:" ..
				list("Inflicts the " .. effects("perk", "Forced Penance", ils.broken) .. " for #pl(1).")
	},
	["Trail of Torment"] = {
		desc =
				quote("You guide your victims along a path of pain and punishment.") .. nlp ..
				"Performing the " .. i("Damage Generator") .. " action on a " .. iconLink(ils.generator) .. " activates #pn:" ..
				list(
					"Grants the " .. effects("perk", "Trail of Torment", ils.undetectable) .. dot,
					"The " .. iconLink(ils.aura) .. " of the " .. i("Damaged Generator") .. " is revealed to all Survivors and highlighted in " .. bclr("yellow", "yellow") .. dot) ..
				"#pn deactivates after the " .. i("Damaged Generator") .. " stops regressing by any means and has a cool-down of #pl(1) between activations."
	},
	["Deathbound"] = {
		desc =
				quote("Those whose lives are intertwined in darkness are destined to suffer together.") .. nlp ..
				"Whenever a Survivor finishes healing another Survivor for the equivalent of " .. clror("#healthState") .. space .. iconLink(ils.healthState) .. ", #pn activates:" ..
				list(
					"Causes the Healer to scream and reveal their location.",
					"Causes the Healer to suffer from the " .. effects("perk", "Deathbound", ils.oblivious) .. " whenever they are farther than #pl(1) from the other Survivor.",
					"The Healer sees the " .. iconLink(ils.aura) .. " of the Healed Survivor while #pn is active.") .. 
				"#pn deactivates after the Healer loses a Health State."
	},
	["Soul Guard"] = {
		desc =
				quote("You have been through immense hardship and you are stronger for it.") .. nlp ..
				"Whenever you heal or recover from the " .. iconLink(ils.dyingState) .. ", #pn triggers its primary effect:" ..
				list(
					"Grants the " .. effects("perk", "Soul Guard", ils.endurance) .. " for #pl(1).",
					nbullet .. loadoutStrings.conspicuousActions,
					nbullet .. "This ability has a cool-down of " .. clror("#cooldown") .. dot) ..
				"While suffering from the " .. effects("perk", "Soul Guard", ils.cursed) .. ", #pn applies its secondary effect:" ..
				list("Unlocks the " .. i("Self-Recovery") .. " ability, allowing you to fully recover from the " .. i("Dying State.") .. dot)
	},
	["Blood Pact"] = {
		desc =
				"It is as if a latent part of yourself has awakened." .. br .. "You feel like you can reach out beyond yourself for assistance." .. nlp ..
				"When either you or the " .. ibil(ils.obsession) .. " become injured by any means, #pn activates:" ..
				list(
					"Your " .. iconLink(ils.auras) .. " are constantly revealed to one another.",
					"Completing a " .. i("Healing Action") .. " on the " .. b(i("Obsession")) .. " or having them complete one on yourself, grants both of you a #pl(1) " .. states(ils.haste) .. dot,
					nbullet .. "This effect lasts for as long as you both remain within " .. clror("16 metres") .. " of one another.") .. 
					"If you are the " .. (i("Obsession")).. ", getting Hooked will cause an another Survivor to become the " .. (i("Obsession")) .. dot .. nlp ..
					loadoutStrings.obsessionChanceMinus .. br ..
					loadoutStrings.obsessionPerkSurvivor
	},
	["Repressed Alliance"] = {
		desc =
				"You are accustomed to being hunted by malicious forces, and you have begun using it to your advantage." .. nlp ..
				"After repairing " .. iconLink(ils.generators) .. " for a total of #pl(1), #pn activates:" ..
				bullet .. "Press the " .. loadoutStrings.activeAbilityButton .. " to call upon The " .. iconLink(ils.entity) .. " to block the Generator you are currently repairing for " .. clror("15 seconds") .. ", after which #pn deactivates." ..
				bullet .. "The " .. iconLink(ils.aura) .. " of the blocked Generator is revealed to all Survivors in " .. bclr("white", "white") .. dot .. nlp ..
				"#pn can only be triggered when no other Survivors are repairing your Generator."
	},
	["Dragon's Grip"] = {
		desc =
				"After performing the " .. i("Damage Generator") .. " action on a " .. iconLink(ils.generator) .. ", #pn activates for " .. clror("#activation") .. dot .. br ..
				"While active, the first Survivor interacting with that " .. b("Generator") .. " suffers from the following effects:" ..
				list(
					"Causes them to scream and reveal their location for " .. clro("#location") .. dot,
					"Inflicts the " .. effects("perk", "Dragon's Grip", ils.exposed) .. " for " .. clro("#exposed") .. dot) ..
				"#pn has a cool-down of #pl(1)." .. nlp ..
				quote("Such potential in this compound... even the slightest trace causes unnatural effects.", "Journal of Talbot Grimes")
	},
	["Hex: Blood Favour"] = {
		desc =
				quote("A Hex that gains the favour of The Entity when blood is spilt.") .. nlp ..
				loadoutStrings.hexPerkTrialStart .. br ..
				"Whenever a Survivor loses a " .. iconLink(ils.healthState) .. " by a basic-attack, #pn triggers its effect for #pl(1)" .. colon ..
				list(
					b("Blocks") .. " all upright " .. iconLink(ils.pallets) .. " within " .. clror("#range") .. " of that Survivor.",
					nbullet .. i("Blocked Pallets") .. " cannot be dropped by any Survivor.") ..
				loadoutStrings.hexPerkFooter .. nlp ..
				quote("It would be no leap of the imagination to suggest that the Trials are a biological response of sorts.", "Journal of Talbot Grimes")
	},
	["Hex: Undying"] = {
		desc =
				quote("A Hex which maintains the vile powers that flow throughout the Trial.") .. nlp ..
				"Whenever a Survivor is within #pl(1) of a " .. iconLink(ils.dullTotem) .. ", #pn triggers its primary effect:" ..
				list("Their " .. iconLink(ils.aura) .. " is revealed to you for as long as they remain in that range.") ..
				"Whenever a " .. iconLink(ils.hexTotem) .. " is cleansed, #pn triggers its secondary effect:" ..
				list("Transfers the cleansed " .. b("Hex") .. " to the " .. b("Hex Totem") .. " associated with #pn instead, replacing it.") ..
				loadoutStrings.hexPerkFooter
	},
	["Visionary"] = {
		desc =
				quote("You are remarkably focused on your means of escape.") .. nlp ..
				"You benefit from the following permanent effect:" ..
				list("The " .. iconLink(ils.auras) .. " of " .. iconLink(ils.generators) .. " are revealed to you within " .. clror("#range") .. dot) ..
				"#pn is temporarily deactivated for #pl(1) whenever a " .. b("Generator") .. " is completed."
	},
	["Desperate Measures"] = {
		desc =
				quote("You refuse to fail, even during your darkest hour.") .. nlp ..
				"Whenever any Survivor, including yourself, is not in the Healthy State, #pn activates:" ..
				list(b("Increases") .. " your Action speeds for Healing and Unhooking by a stack-able #pl(1) per injured, dying, or hooked Survivor, up to a maximum of #pl(2).") ..
				quote("When they come with a wrecking ball, build stronger walls.", "Felix Richter")
	},
	["Built to Last"] = {
		desc =
				quote("You know how to get the most out of your tools.") .. nlp ..
				"While hiding inside a " .. iconLink(ils.locker) .. " with a depleted " .. iconLink(ils.item) .. " equipped, #pn triggers the following effect after #pl(1):" ..
				list(
					b("Recharges") .. " the " .. b("Item") .. " to one of the following percentages:",
					nbullet .. bclr("faded jade", "First time") .. colon .. space .. clror("#recharges(1)") .. dot,
					nbullet .. bclr("faded jade", "Second time") .. colon .. space .. clro("#recharges(2)") .. dot,
					nbullet .. bclr("faded jade", "Third time") .. colon .. space .. clro("#recharges(3)") .. dot) ..
				"#pn is disabled for the remainder of the Trial after triggering its effect for the " .. clro("#finalUse") .. dot .. nlp ..
				quote("Architecture is the soul of civilisation.", "Felix Richter")
	},
	["Hoarder"] = {
		desc =
				"You protect what little you have and are perceptive to those rummaging through your stockpiles." .. brnl ..
				"#pn triggers a " .. i(link("Loud Noise Notification")) .. " for " .. clror("4 seconds") .. ", whenever a Survivor performs any of the following actions within #pl(1) of your location:" ..
				bullet .. "Unlocks a " .. iconLink(ils.chest) .. dot ..
				bullet .. "Picks up any " .. iconLink(ils.item) .. dot .. nlp ..
				"#pn spawns " .. clro("2 additional Chests") .. " in the Trial."
	},
	["Oppression"] = {
		desc =
				quote("Life has been difficult for you, so you will make it difficult for others.") .. nlp ..
				"Performing the " .. i("Damage Generator") .. " action on a " .. iconLink(ils.generator) .. " triggers the following effects:" ..
				list(
					"Randomly selects up to " .. clror("#generators") .. " additional " .. b("Generators") .. " that will also start regressing.",
					nbullet .. "Triggers a difficult " .. iconLink(ils.skillCheck) .. " for all Survivors currently repairing them.") ..
				"#pn has a cool-down of #pl(1)." .. nlp ..
				quote("Damn them as they would damn us.", "Charlotte Deshayes")
	},
	["Coup de Grâce"] = {
		desc =
				"As the end nears, you go in for the kill." .. nlp ..
				"Whenever a " .. iconLink(ils.generator) .. " is completed, #pn gains " .. clror("+2 Tokens") .. ", up to a maximum of " .. clro("10 Tokens") .. " per Trial:" ..
				list(
					b("Increases") .. " the range of your next " .. i(link("Lunge Attack")) .. " by #pl(1), while consuming " .. clro("-1 Token") .. dot) ..
				"#pn can only hold a maximum of " .. clro("5 Tokens") .. " at a time."
	},
	["Appraisal"] = {
		desc =
				quote("You have a careful eye that notices what many overlook.") .. nlp ..
				"Start the Trial with " .. clror("#tokenCount") .. dot .. br ..
				"While standing next to an unlocked and empty " .. iconLink(ils.chest) .. ", press and hold the " .. loadoutStrings.interactionButton .. " to perform the " .. i("Rummage")  .. " action:" ..
				list(
					"Grants the ability to retrieve an extra " .. iconLink(ils.item) .. " from that " .. b("Chest") .. dot,
					nbullet .. "This consumes " .. clro("#tokenCost") .. " and is limited to " .. clro("#rummageCount") .. " per " .. b("Chest") .. dot,
					b("Increases") .. " the Rummaging speed by #pl(1).")
	},
	["Deception"] = {
		desc =
				quote("Your adventurous lifestyle requires moments of crafty misdirection.") .. nlp ..
				"Press and hold the " .. loadoutStrings.sprintButton .. " while interacting with a " .. iconLink(ils.locker) .. " for the following effects:" ..
				list(
					b("Suppresses") .. " the creation of your " .. iconLink(ils.scratchMarks) .. " and " .. iconLink(ils.poolsOfBlood) .. " for " .. clror("#stealth") .. dot,
					"Causes you to run past the targeted " .. b("Locker") .. ", instead of entering it.",
					"Causes its doors to swiftly open and close again, feining you having entered it in a rush.",
					"Triggers a " .. i(link("Loud Noise Notification")) .. " for the Killer at its location.") .. 
				"#pn has a cool-down of #pl(1)."
	},
	["Power Struggle"] = {
		desc =
				quote("You have never given up and you are not about to start now.") .. nlp ..
				"Whenever you are in the " .. iconLink(ils.dyingState) .. ", you benefit from the following primary effect:" ..
				list("The " .. iconLink(ils.auras) .. " of upright " .. iconLink(ils.pallets) .. " are revealed to you.") ..
				"After reaching #pl(1) of Wiggle progression, #pn unlocks the following secondary effect:" ..
				list(
					"Grants the ability to drop a nearby " .. b("Pallet") .. " while being carried by the Killer.",
					nbullet .. "Stuns the Killer and causes them to release you from their grasp.") ..
				"#pn deactivates after use." .. nlp ..
				quote("I relied on others to protect me once and I lost everything. Never again.", "Élodie Rakoto")
	},
	["Starstruck"] = {
		desc =
				quote("Your unmatched showmanship dazzles all.") .. nlp ..
				"Whenever you are carrying a Survivor, #pn activates:" ..
				list(
					"Causes all other Survivors in your " .. iconLink(ils.terrorRadius) .. " to suffer from the " .. effects("perk", "Starstruck", ils.exposed) .. dot,
					nbullet .. "This effect lingers for #pl(1) after affected Survivors leave the " .. i("Terror Radius") .. " or #pn deactivates.") ..
				"#pn deactivates after hooking or dropping the carried Survivor and has a cool-down of " .. clror("#cooldown") .. dot .. nlp ..
				quote("Enjoy this moment, few get so close.", "Ji-Woon Hak")
	},
	["Hex: Crowd Control"] = {
		desc =
				quote("A Hex that ensures those lesser than you are properly herded.") .. nlp ..
				"Whenever a Survivors performs a " .. i("Rushed Vault") .. " action at a " .. iconLink(ils.window) .. ", #pn activates on a random Totem and triggers its effect:" .. 
				list(b("Blocks") .. " that " .. b("Window") .. " for all Survivors.",
				"Increases " .. b("basic-vault") .. " speed of blocked Windows by " .. clror("#vaultSpeedBonus"),
				"Reveals auras of blocked Windows within " .. clro("#vaultAuraRange")) ..
				"#pn has a limit of #pl(1) " .. b("Windows") .. " it can affect at a time." .. br ..
				loadoutStrings.hexPerkFooter .. nlp ..
				quote("You have no control. People like you never did.", "Ji-Woon Hak")
	},
	["No Way Out"] = {
		desc =
				quote("You are not going to let just anyone into the VIP room.") .. nlp ..
				"Whenever you hook a Survivor for the first time, #pn gains " .. clror("#tokenGain") .. dot .. br ..
				"Once the " .. iconLink(ils.exitGates) .. " are powered, #pn activates:" .. 
				list("Causes the first Survivor to interact with either " .. b("Exit Gate Switch") .. " to trigger a " .. i(link("Loud Noise Notification")) .. " at their location.") ..
				"Upon triggering the " .. i("Loud Noise Notification") .. ", #pn calls upon The " .. iconLink(ils.entity) .. " for the following effect:" ..
				list(
					b("Blocks") .. " both " .. b("Exit Gate Switches") .. " for " .. clro("#block") .. dot,
					nbullet .. "This time is extended by an additional #pl(1) per accumulated Token, up to a combined maximum of #pl(2).") .. 
				quote("That sound when you bleed... let me hear it again.", "Ji-Woon Hak")
	},
	["Fast Track"] = {
		desc =
				quote("Sometimes the sacrifice of others is necessary to get ahead.") .. nlp ..
				"Whenever you unhook a Survivor, #pn is granted " .. clror("1") .. space .. b("Token") .. ", up to a maximum of #pl(1)" .. 
				list(
					"Succeeding a " .. i("Great Repair Skill Check") .. " consumes all accumulated Tokens.",
					b("Permanently reduces") .. " the Repair Charges requirement of that " .. b("Generator") .. " by " .. clro("#chargeReduction") .. " per Token.") ..
				quote("The weak are sacrificed first. It's nature, it's business... it's the truth most refuse to face.", "Yun-Jin Lee")
	},
	["Smash Hit"] = {
		desc =
				quote("When your rival makes a mistake, you seize the opportunity.") .. nlp ..
				"Whenever you stun the Killer with a " .. iconLink(ils.pallet) .. " , #pn triggers its effect:" ..
				list("Grants a " .. clror("#haste") .. space .. effects("perk", "Smash Hit", ils.haste) .. " for " .. clro("#durationHaste") .. dot) ..
				loadoutStrings.exhaustionPerkNoUse .. br ..
				"#pn causes the " .. effects("perk", "Smash Hit", ils.exhausted) .. " for #pl(1)." .. nlp ..
				quote("I have dealt with psychopaths in suits. You're just uglier and worse dressed.", "Yun-Jin Lee")
	},
	["Self-Preservation"] = {
		desc =
				quote("Life is unforgiving." .. br .. "The more confirmation you get of that, the more prepared you become.") .. nlp ..
				"Whenever another Survivor is hooked, #pn triggers its effect: " .. 
				list("Grants the " .. effects("perk", "Self-Preservation", ils.elusive).. " for #pl(1)") ..
				quote("Something I learnt in the industry: when the axe is swinging, keep your head down.", "Yun-Jin Lee")
	},
	["Lethal Pursuer"] = {
		desc =
				quote("You have been designed to track down and eliminate targets.") .. nlp ..
				"At the start of the Trial, the " .. iconLink(ils.auras) .. " of all " .. iconLink(ils.survivors) .. " are revealed to you for #pl(1)." ..
				list(b("Extends") .. " the duration of all instances of a Survivor Aura being revealed to you by " .. clror("+2 seconds") .. dot) ..
				"#pn benefits from its own effect." .. nlp ..
				quote("...it knows what it wants and won't stop till it gets it.", "Carlos Oliveira")
	},
	["Hysteria"] = {
		desc =
				quote("You know how to brutalise one member of a team to cause a panic.") .. nlp ..
				"Whenever you injure a healthy Survivor, #pn triggers its effect:" ..
				list(
					"Causes all Survivors currently in the " .. iconLink(ils.injuredState) .. " to suffer from the " .. effects("perk", "Hysteria", ils.oblivious) .. " for #pl(1).",
					nbullet .. "This effect also applies the Survivor triggering it.") ..
				"#pn has a cool-down of " .. clror("#cooldown") .. dot .. nlp ..
				quote("Sorry I got a little jumpy there. Didn't know quite what to expect.", "Robert Kendo")
	},
	["Eruption"] = {
		desc =
				quote("The NE-α parasite provides you with the intelligence and awareness needed to set a trap.") .. nlp ..
				"Performing the " .. i("Damage Generator") .. " action on " .. iconLink(ils.generators) .. " highlights their " .. iconLink(ils.auras) .. " in " .. bclr("yellow", "yellow") .. dot .. br ..
				"Whenever a Survivor enters the " .. iconLink(ils.dyingState) .. " by any means, #pn triggers the following effects on all highlighted " .. b("Generators") .. colon ..
				list(
					"Causes them to explode, damaging them.",
					nbullet .. "Instantly regresses them by " .. clror("#penalty") .. " of their total Progression.",
					nbullet .. "Causes them to start regressing afterwards.",
					"Causes all Survivors currently repairing them to suffer from the following effects:",
					nbullet .. "Causes them to scream.",
					nbullet .. "Their Auras are revealed to you for #pl(1).") ..
				"#pn has a cool-down of " .. clro("#cooldown") .. " after triggering its effects, which also resets the highlighted Auras." .. nlp ..
				quote("It can use weapons?", "Jill Valentine")
				
	},
	["Counterforce"] = {
		desc =
				quote("You know how to withstand an enemy stronger than you, and it starts with hunting down and knocking out their support.") .. nlp ..
				"You benefit from the following permanent effect:" ..
				list(b("Increases") .. " the default value of your Cleansing speed to " .. clror("#default") .. dot) ..
				"Whenever you cleanse a " .. iconLink(ils.totem) .. ", #pn triggers the following effects:" ..
				list(
					b("Increases") .. " your Cleansing speed by a stack-able " .. clro("#bonus") .. dot,
					"The " .. iconLink(ils.aura) .. " of the " .. b("Totem") .. " farthest from your current location is revealed to you for #pl(1).") ..
				quote("I don't mind a little detective work.", "Jill Valentine")
	},
	["Resurgence"] = {
		desc =
				quote("You have come back from near impossible odds... and you will do it again.") .. nlp ..
				"After you are unhooked by any means, #pn triggers the following effect:" ..
				list("Grants you #pl(1) of Healing progression.") ..
				quote("It's my turn, bitch!", "Jill Valentine")
	},
	["Blast Mine"] = {
		desc =
				quote("When direct combat is not an option, you still find ways to strike back.") .. nlp ..
				"After repairing " .. iconLink(ils.generators) .. " for the equivalent of " .. clror("40 %") .. " of Progression, #pn activates." .. br ..
				"While active, press the " .. loadoutStrings.activeAbilityButton .. " while standing next to a " .. b("Generator") .. " to install a trap to it with a countdown of #pl(1):" ..
				list(
					"Trips half-way through the Killer attempting to damage the " .. i("Trapped Generator") .. colon,
					nbullet .. "Stuns the Killer for " .. clro("4 seconds") .. dot,
					nbullet .. "Blinds all Players within " .. clro("12.5 metres") .. " of the " .. i("Trapped Generator") .. dot) ..
				"The trap is deactivated after its countdown has elapsed or it is tripped." .. nlp ..
				loadoutStrings.trappedGenerators .. nlp ..
				quote("You want S.T.A.R.S.? I'll give you S.T.A.R.S.!", "Jill Valentine")
	},
	["Bite the Bullet"] = {
		desc =
				"Pain hurts you as much as anyone, but you would prefer others do not know that." .. nlp ..
				"When healing yourself or another Survivor, you benefit from the following effects:" ..
				list(
					b("Suppresses") .. " all noises related to Healing and " .. i("Grunts of Pain") .. dot,
					"Failed " .. i("Healing Skill Checks") .. " do not trigger a " .. i(link("Loud Noise Notification")) .. dot,
					nbullet .. b("Reduces") .. " the Penalty to #pl(1) of the total Progression.") ..
				quote("I can do this.", "Leon Scott Kennedy")
	},
	["Flashbang"] = {
		desc =
				"You have adapted to a world in chaos and making what you can from the debris." .. nlp ..
				"After repairing " .. iconLink(ils.generators) .. " for a total of #pl(1), #pn activates:" ..
				list("Press the " .. loadoutStrings.activeAbilityButton .. " while hiding inside a " .. iconLink(ils.locker) .. " to craft a " .. iconLink(ils.flashGrenade) .. dot) ..
				"#pn deactivates after use." .. nlp ..
				quote("Get outta my face!", "Leon Scott Kennedy")
	},
	["Rookie Spirit"] = {
		desc =
				"You keep a careful eye on objectives when they are slipping away." .. nlp ..
				"While repairing " .. iconLink(ils.generators) .. ", succeed #pl(1) Good or Great " .. iconLink(ils.skillChecks) .. " to activate #pn for the remainder of the Trial:" ..
				list("The " .. iconLink(ils.auras) .. " of any regressing Generators are revealed to you until they stop regressing by any means.") ..
				quote("I'll stop this, lieutenant. I promise.", "Leon Scott Kennedy")
	},
	["Deadlock"] = {
		desc =
				"Identical to " .. iconLink("No Holds Barred") .. dot .. nlp ..
				quote("Nobody escapes us.", "Pinhead")
	},
	["No Holds Barred"] = {
		desc =
				quote("You induce mental suffering by crushing any hope of escape.") .. nlp ..
				"Each time a " .. iconLink(ils.generator) .. " is completed, #pn calls upon The " .. iconLink(ils.entity) .. " for the following effects:" ..
				list(
					b("Blocks")  .. " the " .. b("Generator") .. " with the most Progression for #pl(1).",
					"The " .. iconLink(ils.aura) .. " of the " .. b("Blocked Generator") .. " is highlighted to you in " .. bclr("white", "white") .. dot)
	},
	["Hex: Plaything"] = {
		desc =
				"Identical to " .. iconLink("Hex: Fortune's Fool") .. dot .. nlp ..
				quote("We came. Now you must come with us. Taste our pleasure.", "Pinhead")
	},
	["Hex: Fortune's Fool"] = {
		desc =
				quote("A Hex that toys with a victim's suffering.") .. nlp ..
				loadoutStrings.hexPerkFirstTimeHook .. br ..
				list(
					"Inflicts the " .. effects("perk", "Hex: Fortune's Fool", ils.oblivious) .. dot,
					b("Blocks") .. " the " .. b("Hex Totem") .. " for all other Survivors for " .. clro("#block") .. dot,
					nbullet .. i("Blocked Hex Totems") .. " cannot be cleansed or blessed by Survivors.",
					nbullet .. "This does not affect the " .. i("Cursed Survivor") .. dot) ..
				"The " .. iconLink(ils.aura) .. " of the " .. b("Hex Totem") .. " is revealed to the " .. i("Cursed Survivor") .. " within #pl(1)." .. br ..
				loadoutStrings.hexPerkFooter
	},
	["Scourge Hook: Gift of Pain"] = {
		desc =
				"Identical to " .. iconLink("Scourge Hook: Weeping Wounds") .. dot .. nlp ..
				quote("We will tear your soul apart.", "Pinhead")
	},
	["Scourge Hook: Weeping Wounds"] = {
		desc =
				quote("You are the bringer of sweet pain.").. nlp ..
				loadoutStrings.scourgeHookDefault .. nlp ..
				loadoutStrings.scourgeHookUnhooked ..
				list("Causes that Survivor to suffer from the " .. effects("perk", "Scourge Hook: Gift of Pain", ils.haemorrhage) .. " for " .. clror("#haemorrhage") .. dot) ..
				"After the first time that Survivor is healed back to full health, they suffer from the following effect until they are injured again by any means:" ..
				list(b("Reduces") .. " their Action speeds for Healing and Repairing by #pl(1).")
	},
	["Clairvoyance"] = {
		desc =
				quote("There is an intrinsic energy in you that sees beyond your vision.") .. nlp ..
				"After cleansing or blessing a " .. iconLink(ils.totem) .. ", #pn activates." .. br ..
				"While active, press and hold the " .. loadoutStrings.useItemButton .. " when empty-handed to unlock your full Aura-reading potential:" ..
				list(
					"The " .. iconLink(ils.auras) .. " of the following objects within " .. clror("#range") .. " are revealed to you for as long as you uphold the interaction, up to a maximum of #pl(1):",
					nbullet .. iconLink(ils.chests), 
					nbullet .. iconLink(ils.exitGateSwitches),
					nbullet .. iconLink(ils.generators),
					nbullet .. iconLink(ils.hatch),
					nbullet .. iconLink(ils.hooks)) ..
				quote("Does anyone else see that? Just me?", "Mikaela Reid")
	},
	["Boon: Circle of Healing"] = {
		desc =
				"A Boon that offers comfort amidst the terror." .. nlp ..
				loadoutStrings.boonPerkTop .. nlp ..
				list(
				b("Increases") .. " the Altruistic Healing speeds by #pl(1) when not using a " .. iconLink(ils.medKit) .. dot,
				"If a Survivor is injured, their " .. iconLink(ils.aura) .. " is revealed to all other Survivors.") ..
            	loadoutStrings.singleInstancePerk .. nlp ..
                loadoutStrings.boonPerkBottom .. nlp ..
				quote("Try this, it is better than anything you'll find in a pharmacy.", "Mikaela Reid")
	},
	["Boon: Shadow Step"] = {
		desc =
				"A Boon that conceals the truth." .. nlp ..
				loadoutStrings.boonPerkTop .. 
				list(
					iconLink(ils.scratchMarks) .. " are suppressed.",
					iconLink(ils.auras) .. " are hidden from The Killer.",
					nbullet .. "Both effects linger for #pl(1) after leaving the " .. i("Boon Totem's") .. " range.") ..
                loadoutStrings.boonPerkBottom .. nlp ..
				quote("Stick to the shadows and cover your tracks.", "Mikaela Reid")
	},
	["Grim Embrace"] = {
		desc =
                "Your act of servitude to The Entity has not gone unnoticed." .. nlp ..
                "Each time a Survivor is hooked for the first time, #pn gains " .. clror("+1 Token") .. " and activates once you are at least " .. clro("16 metres") .. " away from the " .. iconLink(ils.hook) .. colon ..
                list(
                	bclr("faded jade", "1-3 Tokens") .. colon .. space .. b("Blocks") .. " all " .. iconLink(ils.generators) .. " for #pl(1).",
                	bclr("faded jade", "4 Tokens") .. colon .. space .. b("Blocks") .. " all " .. b("Generators") .. " for " .. clro("40 seconds") .. " and the " .. iconLink(ils.aura) .. " of the " .. ibil("Obsession") .. " is revealed to you for " .. clro("6 seconds") .. dot) ..
                quote("Are we nothing but prisoners to our sorrow?", "Carmina Mora")
	},
	["Scourge Hook: Pain Resonance"] = {
		desc =
				"Overwhelming pain reverberates outwards." .. nlp ..
				loadoutStrings.scourgeHookDefault .. nlp ..
				"Start the Trial with " .. clror("4 Token") .. dot .. nlp ..
				"Whenever a Survivor is hooked onto a "  .. b("Scourge Hook") .. " for the first time, #pn consumes " .. clro("-1 Token") .. " and applies the following effects:" ..
				list(
					"Causes the " .. iconLink(ils.generator) .. " with the most progression to explode, damaging it.",
					nbullet .. "Instantly regresses the " .. i("Damaged Generator") .. " by #pl(1) of its total Progression.",
					nbullet .. "Causes the " .. i("Damaged Generator") .. " to start regressing afterwards.",
					"Causes all Survivors repairing the " .. i("Damaged Generator") .. " to scream.",
					nbullet .. "This does not trigger a " .. i(link("Loud Noise Notification")) .. dot) ..
				"#pn is disabled for the remainder of the Trial once all Tokens are consumed." .. nlp ..
				quote("The pain spills beyond flesh/darkness staining the horizon.", "Girl in the Shadow by Carmina Mora")
	},
	["Hex: Pentimento"] = {
		desc =
				quote("You reveal the true power of the Totems, hidden within their remains.") .. nlp ..
				"Unlocks potential in your Aura-reading ability:" ..
				list("The " .. iconLink(ils.auras) .. " of cleansed " .. b("Totems") .. " are revealed to you in " .. bclr("white", "white") .. dot) ..
				"Press the " .. loadoutStrings.interactionButton .. " over the remains of a cleansed " .. iconLink(ils.totem) .. " to resurrect it as a " .. b("Rekindled Totem") .. dot .. br ..
				"For each " .. b("Rekindled Totem") .. ", #pn gains " .. clror("#tokenGain") .. ", up to a maximum of " .. clro("#tokenLimit") .. colon ..
				list(
					bclr("faded jade", "1 Token") .. colon .. space .. b("Reduces") .. " the Action speeds for Healing and Repairing by " .. clro("#penalty") .. dot,
					bclr("faded jade", "2 to 5 Tokens") .. colon .. space .. b("Increase") .. " the strength of the Action Speed penalty by a stackable #pl(1) per Token, up to a maximum of #pl(2).",
					"Survivors cursed by #pn see the Auras of " .. b("Rekindled Totems") .. " within " .. clro("#range") .. dot) ..
				"Once #pn has reached its limit of " .. clro("#tokenLimit") .. ", it calls upon " .. b("The Entity") .. " for the following effect:" ..
				list(b("Blocks") .. " all " .. b("Rekindled Totems") .. " for the remainder of the Trial.") ..
				b("Totems") .. " may only be rekindled once per Trial, with " .. b("The Entity") .. " consuming the remains of " .. b("Rekindled Totems") .. " once they are cleansed." .. nlp ..
				loadoutStrings.hexPerkFooter .. nlp ..
				quote("Though a pentimento is an inherently concealed piece of art, there is something to be said of the desire to discover that which is beyond.", "A Guide to Art & Process (1961)")
	},
	["Overcome"] = {
		desc =
				quote("You have calculated how much energy you can risk to expend.") .. nlp ..
				"Whenever you enter the " .. iconLink(ils.injuredState) .. " from full health, #pn triggers its effect:" ..
				list(b("Extends") .. " the duration of the " .. i("On-hit Sprint") .. " boost by " .. clror("#effect") .. dot) ..
				loadoutStrings.exhaustionPerkNoUse .. br ..
				"#pn causes the " .. effects("perk", "Overcome", ils.exhausted) .. " for #pl(1)." .. nlp ..
				quote("After careful analysis, we are getting the hell out of here!", "Jonah Vasquez")
	},
	["Corrective Action"] = {
		desc =
				quote("You quickly analyse problems and correct others' work when they make a mistake.") .. nlp ..
				"You start the Trial with #pl(1) and succeeding a " .. i("Great Skill Check") .. " grants " .. clror("#tokenGain") .. ", up to a maximum of " .. clro("#tokenLimit") .. dot .. br ..
				"While any other Survivor performs a skilful interaction that can trigger " .. iconLink(ils.skillChecks) .. ", they benefit from the following effects:" ..
				list(
					"Converts any " .. i("Failed Skill Check") .. " into a " .. i("Good Skill Check") .. dot,
					nbullet .. "This consumes " .. clro("#tokenCost") .. dot,
					"The " .. iconLink(ils.aura) .. " of that Survivor is revealed to you for " .. clro("#duration") .. dot) ..
				"#pn does not apply to special " .. i("Skill Checks") .. dot .. nlp ..
				quote("Cannot hurt to have another set of eyes on the problem.", "Jonah Vasquez")
	},
	["Boon: Exponential"] = {
		desc =
				quote("When it seems like your number is up, you consider ways to recalculate the odds.") .. nlp ..
				loadoutStrings.boonPerkTop ..
				list(
					b("Increases") .. " the Recovery speed while in the " .. iconLink(ils.dyingState) .. " by #pl(1).",
					"Unlocks the " .. i("Self-Recovery") .. " ability, allowing them to fully recover from the " .. i("Dying State") .. dot) ..
                loadoutStrings.boonPerkBottom .. nlp ..
				quote("It is not our time to die... probably.", "Jonah Vasquez")
	},
	["Scourge Hook: Floods of Rage"] = {
		desc =
				quote("You form a psychic connection with " .. b("The Entity") .. " and alter the rules of the Trial.") .. nlp ..
				loadoutStrings.scourgeHookDefault .. nlp ..
				loadoutStrings.scourgeHookUnhooked .. 
				list("The Auras of all other Survivors are revealed for #pl(1).")
	},
	["Call of Brine"] = {
		desc =
				quote("Your psychic abilities influence technology in devastating ways.") .. nlp ..
				"After performing the " .. i("Damage Generator") .. " action on a " .. iconLink(ils.generator) .. ", #pn applies its effects to it for " .. clror("#duration") .. colon ..
				list(
					b("Increases") .. " its Regression speed to #pl(1) of the default value.",
					"Highlights its " .. iconLink(ils.aura) .. " to you in " .. bclr("yellow", "yellow") .. dot,
					"Triggers a " .. i(link("Loud Noise Notification")) .. " whenever a Survivor succeeds a " .. i("Good Skill Check") .. " while repairing it.")
	},
	["Merciless Storm"] = {
		desc =
				quote("Your horrible trauma is felt by everyone.") .. nlp ..
				"Whenever a " .. iconLink(ils.generator) .. " reaches " .. clror("90 %") .. " of Repair progression, #pn triggers its effect:" ..
				list(
					"All Survivors repairing that " .. b("Generator") .. " are faced with a continuous stream of " .. iconLink(ils.skillChecks) .. " until the " .. b("Generator") .. " is completed.",
					"If any contributing Survivor fails a " .. i("Skill Check") .. " or interrupts the action by any means, The " .. iconLink(ils.entity) .. " blocks the " .. b("Generator") .. " for #pl(1).") ..
				"#pn can only trigger once per " .. b("Generator") .. " per Trial."
	},
	["Parental Guidance"] = {
		desc =
				quote("You have inherited the ability to hear the dead — and now the dead warn you of danger.") .. nlp ..
				"After stunning the Killer by any means, #pn triggers its effect:" ..
				list(b("Suppresses") .. " your " .. i("Grunts of Pain") .. " and the creation of " .. iconLink(ils.scratchMarks) .. " and " .. iconLink(ils.poolsOfBlood) .. " for #pl(1).")
	},
	["Empathic Connection"] = {
		desc =
				quote("Your presence psychically projects itself to those in danger.") .. nlp ..
				"You benefit from the following permanent primary effect:" .. 
				list(b("Increases") .. " your Altruistic Healing speed by #pl(1).") ..
				"Whenever any other Survivor is injured, #pn applies its secondary effect:" ..
				list("Your " .. iconLink(ils.aura) .. " as a potential Healer is revealed to them.")
	},
	["Boon: Dark Theory"] = {
		desc =
				quote("Your obsessive study of the paranormal has given you unprecedented knowledge of other Realms and planes of existence.") .. nlp ..
				loadoutStrings.boonPerkTop ..
				list(
					"Grants a " .. clror("#haste") .. space .. effects("perk", "Boon: Dark Theory", ils.haste) .. dot,
					nbullet .. "This effect lingers for #pl(1) after leaving the " .. i("Boon Totem's") .. " range.") ..
                loadoutStrings.boonPerkBottom
	},
	["Dissolution"] = {
		desc =
				quote("Everything turns to dust. It is as inescapable as the coming of the night.") .. nlp ..
				"After " .. clror("3 seconds") .. " of injuring a Survivor using a basic-attack, #pn activates for #pl(1):" ..
				list("Instantly breaks the next " .. iconLink(ils.pallet) .. " that Survivor performs a " .. i("Fast Vault") .. " across while inside your " .. iconLink(ils.terrorRadius) .. dot) ..
				quote("The Garden shall be a place of perfect Joy; through Joy, nothing shall stand in our way.", "Otto Stamper")
	},
	["Darkness Revealed"] = {
		desc =
				quote("In your presence, places once thought to be safe are perhaps the most dangerous.") .. nlp ..
				"Searching a " .. iconLink(ils.locker) .. " has the following effect:" ..
				list("The " .. iconLink(ils.auras) .. " of Survivors within " .. clror("8 metres") .. " of any " .. b("Locker") .. " are revealed to you for #pl(1).") ..
				"#pn has a cool-down of " .. clro("30 seconds") .. dot .. nlp ..
				quote("Stay in the light, my children. In darkness, your fear will expose you.", "Otto Stamper")
	},
	["Septic Touch"] = {
		desc =
				quote("The Land of the Shadows subsumes all." .. br .. "Healing only delays the inevitable.") .. nlp ..
				"Whenever a Survivor performs a Healing action while inside the " .. iconLink(ils.terrorRadius) .. ", they suffer from the following effects:" .. 
				list(
					"Inflicts the " .. effects("perk", "Septic Touch", ils.blindness, ils.exhausted) .. dot, 
					nbullet .. "These effects linger for #pl(1) after the Healing action is interrupted by any means.") ..
				quote("Do not admit to fear, or pain, or doubt. These are the seeds from which darkness grows.", "Otto Stamper")
	},
	["Shattered Hope"] = {
		desc =
				"To capture your prey, you must first extinguish their hope." .. 
				list(
					"Instead of snuffing " .. iconLink(ils.boonTotems) .. " you destroy them.", 
					"Whenever a " .. b("Totem") .. " is blessed, cleansed or destroyed:",
					nbullet .. "All " .. b("Totems") .. " are blocked for #pl(1)" .. dot,
					nbullet .. "All blessed " .. b("Totem") .. "  auras are revealed to you for #pl(1)" .. dot) ..
				quote("Nothing is permanent here. Nothing except our endless perdition.", "Unknown, Notebook")
	},
	["Inner Focus"] = {
		desc =
				"You have honed your ability to see through the haze of the Ravage." ..
				list(
					"Grants the ability to see the " .. iconLink(ils.scratchMarks) .. " of other Survivors.",
					"Whenever another Survivor loses a " .. iconLink(ils.healthState) .. " due to the Killer, the " .. iconLink(ils.aura) .. " of the latter is revealed to your for #pl(1).") ..
				quote("The death, the trauma, the fear... it all leads here. The Overlap.", "Haddie Kaur, Ravages of the Abyss Episode 11")
	},
	["Residual Manifest"] = {
		desc =
				"A lifetime of chasing the darkness has taught you that the best disinfectant is light." ..
				list(
					"After a successful " .. i("Killer Blind") .. ", the Killer suffers from the " .. states(ils.blindness) .. " for #pl(1).",
					"#pn grants the ability to rummage through an opened " .. iconLink(ils.chest) .. " once per Trial and will guarantee a basic " .. iconLink("Flashlight") .. dot) ..
				quote("I'll never see what Haddie sees. But so long as I'm with her, I know I'm safe.", "Jordan Rois, Ravages of the Abyss Episode 5")
	},
	["Overzealous"] = {
		desc =
				"Fighting back against the Ravage motivates and inspires you." .. nlp ..
				"After cleansing or blessing a " .. iconLink(ils.totem) .. ", #pn activates:" ..
				list(
					bclr("faded jade", "Dull Totem") .. colon .. space .. b("Increases") .. " your Repair speed by #pl(1).",
					bclr("faded jade", "Hex Totem") .. colon .. space .. b("Increases") .. " your Repair speed by #pl(2).") ..
				"#pn deactivates after losing a " .. iconLink(ils.healthState) .. " by any means." .. nlp ..
				quote("The Ravage senses us. We need to work fast.", "Haddie Kaur, Ravages of the Abyss Episode 9")
	},
	["Superior Anatomy"] = {
		desc =
				quote("Decades of research have culminated in you: something faster, stronger, and more dangerous than any human.") .. nlp ..
				"Whenever a Survivor performs a " .. i("Rush Vault") .. " action within " .. clror("#range") .. " of your location, #pn activates for " .. clro("#duration") .. colon ..
				list(b("Increases") .. " your Vaulting speed by #pl(1).") .. 
				"#pn has a cool-down of " .. clro("#cooldown") .. dot
	},
	["Awakened Awareness"] = {
		desc =
				quote("Your genes have been altered to heighten your senses in intense situations.") .. nlp ..
				"While carrying a Survivor, you benefit from the following effect:" ..
				list("The " .. iconLink(ils.auras) .. " of other Survivors within #pl(1) of your location are revealed to you.")
	},
	["Terminus"] = {
		desc =
				quote("You are a brilliant tactician who prepares for every eventuality.") .. nlp ..
				"Once the " .. iconLink(ils.exitGates) .. " are powered, #pn activates:" .. 
                list(
                	"Causes all injured, dying, or hooked Survivors to suffer from the " .. effects("perk", "Terminus", ils.broken) .. dot,
                	nbullet .. "This effect last until one of the " .. b("Exit Gates") .. " is opened, after which it lingers for another #pl(1).")
	},
	["Wiretap"] = {
		desc =
				quote("You know that the best way to stay one step ahead is to keep tabs on the competition.") .. nlp ..
				"After repairing a " .. iconLink(ils.generator) .. " for the equivalent of " .. clror("#activation") .. " of Progression, #pn activates." .. br ..
				"While active, press the " .. loadoutStrings.activeAbilityButton .. " while standing next to a " .. b("Generator") .. " to install a listening device to it with a countdown of #pl(1):" ..
				list("Reveals the Aura of the Killer coming within " .. clro("#range") .. " of the " .. i("Bugged Generator") .. " to all Survivors.") ..
				"The listening device is deactivated after its countdown has elapsed or the " .. i("Bugged Generator") .. " is damaged." .. nlp ..
				loadoutStrings.buggedGenerators
	},
	["Reactive Healing"] = {
		desc =
				quote("The more the situation becomes compromised, the more determined you become to complete the operation.") .. nlp ..
				"Whenever another Survivor within " .. clror("32 metres") .. " of your location loses a " .. iconLink(ils.healthState) .. " by any means while you are in the " .. iconLink(ils.injuredState) .. ", you benefit from the following effect:" .. 
				list("Grants #pl(1) of your missing Healing Progression towards your Health Bar.")
	},
	["Low Profile"] = {
		desc =
				quote("You work best alone. When it is just you and your pursuer, you know how to disappear.") .. nlp ..
				"Whenever you are the only Survivor in the Trial not currently incapacitated by either being downed, carried, or hooked, #pn activates:" ..
				list(b("Suppresses") .. " your " .. i("Grunts of Pain") .. " and the creation of " .. iconLink(ils.poolsOfBlood) .. " and " .. iconLink(ils.scratchMarks) .. " for #pl(1).") ..
				"#pn deactivates after use and only accounts for Survivors still participating in the Trial."
	},
	["Better than New"] = {
		desc =
				quote("You are an expert in combat medicine." .. br .. "Patients leave your care reinvigorated.") .. nlp ..
				"Completing a Healing action on another Survivor grants them the following benefits until they receive damage again:" ..
				list(b("Increases") .. " their Action speeds for Blessing, Cleansing, Healing, and Unlocking by #pl(1).")
	},
	["Reassurance"] = {
		desc =
				quote("Your presence helps allies focus, assuaging the panic associated with extreme conditions.") .. nlp ..
				"While within " .. clror("#range") .. " of a hooked Survivor, press the " .. loadoutStrings.activeAbilityButton .. " to trigger the following effects for #pl(1):" .. 
				list(
					b("Pauses") .. " the " .. i("Sacrifice Process") .. dot,
					nbullet .. "This also pauses the " .. i("Struggle Skill Checks") .. " for Survivors in the " .. i("Struggle Phase") .. dot,
					"Causes the outline of that Survivor to be highlighted in " .. bclr("white", "white") .. dot) ..
				"#pn can only be used " .. clro("#limit") .. " per Survivor per " .. i("Hook Instance") .. dot
	},
	["Hyperfocus"] = {
		desc =
				quote("You throw yourself entirely into your tasks and find ways to be more efficient than anyone else.") .. nlp ..
				"Succeeding a " .. iconLink(ils.greatSkillCheck) .. " while repairing or healing grants " .. clror("+1 Token") .. ", up to a maximum of " .. clro("6 Tokens") .. colon ..
				list(
					b("Increases") .. " the Skill Check Trigger odds and Pointer-Rotation speed by " .. clro("+4 %") .. " per Token each, up to a maximum of " .. clro("+24 %") .. dot,
					b("Increases") .. " the Skill Check Bonus progression by #pl(1) of its base value per Token, up to a maximum of #pl(2).") ..
				"#pn loses all Tokens after succeeding just a " .. i("Good Skill Check") .. ", failing one, or if the action is interrupted by any means."
	},
	["Nowhere to Hide"] = {
		desc =
				quote("The machinations of the weak and craven draw your ire." .. br .. "Your anger forces Survivors to reveal themselves.") .. nlp ..
				"Performing the " .. i("Damage Generator") .. " action on a " .. iconLink(ils.generator) .. " triggers #pn:" ..
				list("The " .. iconLink(ils.auras) .. " of all Survivors within " .. clror("24 metres") .. " of the " .. b("Generator") .. "'s location are revealed to you for #pl(1).")..
				quote("Out with you, cowards! Show yourselves!", "Tarhos Kovács")
	},
	["Hex: Face the Darkness"] = {
		desc =
				quote("You make an example of one of your victims, forcing their allies to become awed by your power.") .. nlp ..
				"If there is still a " .. iconLink(ils.dullTotem) .. " in the environment, #pn lights a " .. iconLink(ils.hexTotem) .. " after injuring a Survivor by any means, cursing them with its " .. i("Hex Effects") .. dot .. br ..
				"While cursed, the following effects trigger once every #pl(1) on all other Survivors outside of the " .. iconLink(ils.terrorRadius) .. colon ..
				list(
					"Causes them to scream.",
					"Their " .. iconLink(ils.auras) .. " are revealed to you for " .. clror("#aura") .. dot) ..
				"#pn is deactivated once the " .. i("Cursed Survivor") .. " either returns to " .. iconLink(ils.healthy) .. " or enters the " .. iconLink(ils.dyingState) .. " by any means, extinguishing the " .. b("Hex Totem") .. dot .. br ..
				loadoutStrings.hexPerkFooter .. nlp ..
				quote("I shall make an example of one. These mewling worms will never know peace.", "Tarhos Kovács")
	},
	["Hubris"] = {
		desc =
				quote("You show no mercy, especially to those foolish enough to resist.") .. nlp ..
				"Whenever a Survivor stuns you by any means, #pn triggers its effect:" ..
				list("Causes them to suffer from the " .. effects("perk", "Hubris", ils.exposed) .. " for #pl(1).") ..
				"#pn has a cool-down of " .. clror("#cooldown") .. dot .. nlp ..
				quote("You have made a grave mistake, standing in opposition to me this day.", "Tarhos Kovács")
	},
	["Potential Energy"] = {
		desc =
				quote("Your arcane abilities have adapted to The Entity's Realm after centuries of wandering, granting you unprecedented control over its many devices.") .. nlp ..
				"While repairing a " .. iconLink(ils.generator) .. ", press the " .. loadoutStrings.activeAbilityButton .. " to " .. i("Store Potential Energy") .. colon ..
				list(
					"Repair Charges no longer progress the " .. b("Generator") .. " and are instead converted into Tokens:",
					nbullet .. "Gain " .. clror("#conversion(1)") .. " for the equivalent of " .. clro("#conversion(2)") .. " Progression, up to a maximum of #pl(1).",
					i("Failed Repair Skill Checks") .. " incur a penalty depending on how many Tokens have been accumulated:",
					nbullet .. bclr("faded jade", "Not at Token Limit") .. colon .. space .. b("Reduces") .. " the number of accumulated Tokens by " .. clro("#penalty(1)") .. dot,
					nbullet .. bclr("faded jade", "At Token Limit") .. colon .. space .. "Regresses the " .. b("Generator") .. " by " .. clro("#penalty(2)") .. dot) ..
				"Having accumulated at least " .. clro("#threshold") .. ", press the " .. loadoutStrings.activeAbilityButton .. " again on the same or a different " .. b("Generator") .. " to " .. i("Release Potential Energy") .. colon ..
				list(
					"Consumes all accumulated Tokens.",
					"Instantly progresses that " .. b("Generator") .. " by " .. clro("#conversion(3)") .. " per Token.") ..
				"#pn deactivates after use or losing a " .. iconLink(ils.healthState) .. " by any means, and will lose all accumulated Tokens in case of the latter." .. nlp ..
				quote("When you look a layer deeper, you realise... everything is connected.", "Vittorio Toscano")
	},
	["Fogwise"] = {
		desc =
				quote("In your countless years in The Fog, you have seen it all, and when you are focused, you can remember most of it too.") .. nlp ..
				"Unlocks potential in your Aura-reading ability while repairing " .. iconLink(ils.generators) .. colon ..
				list("The " .. iconLink(ils.aura) .. " of the Killer is revealed to you for #pl(1) after succeeding a " .. i("Great Repair Skill Check") .. dot) ..
				quote("I have seen great cruelty... and I have also seen another way.", "Vittorio Toscano")
	},
	["Quick Gambit"] = {
		desc =
				quote("When you have the Killer's attention, you know how to keep it; others can be confident they will not be interrupted any time soon.") .. nlp ..
				"While being chased by the Killer, the following effects apply:" ..
				list(
					"The " .. iconLink(ils.auras) .. " of other Survivors are revealed to you.",
					b("Increases") .. " the Repair speed of other Survivors by #pl(1).") ..
				"#pn has a cool-down of " .. clror("#cooldown") .. " upon losing a " .. iconLink(ils.healthState) .. dot .. nlp ..
				quote("We need not resort to violence. And I shall prove it.", "Vittorio Toscano")
	},
	["THWACK!"] = {
		desc =
				quote("Your prey is terrified by your relentless pursuit.") .. nlp ..
				"Start the Trial with " .. clror("#tokens") .. dot .. br ..
				"Whenever you break a " .. iconLink(ils.breakableWall) .. " or a dropped " .. iconLink(ils.pallet) .. ", #pn consumes " .. clro("-1 Token") .. " and applies the following effect:" ..
				list(
					"Causes all Survivors within " .. clro("#radius") .. " of your location to scream and reveal their " .. iconLink(ils.aura) .. " for #pl(1).") ..
				"Whenever you hook a Survivor, #pn is granted " .. clro("+1 Token") .. dot .. nlp ..
				quote("All those who stood in her path feared her mighty THWACK!", "Sonhadores Sombrios, Issue #3")
	},
	["Leverage"] = {
		desc =
				quote("Kick your competitors when they're down. Never let them regain lost ground.") .. nlp ..
				"Whenever a Survivor performs an " .. i("Unhook") .. " action, they suffer from the following effect for " .. clror("#duration") .. colon .. 
				list(b("Reduces") .. " their Healing speeds by #pl(1).") ..
				quote("Good. Now we can move in for the kill.", "Adriana Imai")
	},
	["Game Afoot"] = {
		desc =
				quote("First you pick your prey, then you pick it apart.") .. nlp ..
				"Whenever you hit the Survivor with currently the highest cumulative " .. i("Chase time") .. " with a " .. i(link("Basic Attack")) .. ", #pn triggers its primary effect:" ..
				list("Causes the " .. b(i("Obsession") .. space .. "Status") .. " to transfer to that Survivor.") ..
				"While chasing the " .. ibil(ils.obsession) .. ", performing the " .. i("Break or Damage") .. " action causes #pn to trigger its secondary effect:" .. 
				list("Grants a " .. clror("#haste") .. space .. effects("perk", "Game Afoot", ils.haste) .. " for #pl(1).") ..
				loadoutStrings.obsessionPerkKiller .. nlp ..
				quote("This one might actually be a challenge...", "Sonhadores Sombrios, Issue #3")
	},
	["Friendly Competition"] = {
		desc =
				quote("You revel in the community spirit of a competition, and inspire others to follow suit.") .. nlp ..
				"Each time you complete a " .. iconLink(ils.generator) .. " together with at least one other Survivor, #pn activates:" ..
				list(b("Increases") .. " the Repair speed of all participating Survivors, including yourself, by " .. clror("#effect") .. " for #pl(1).") .. 
				quote("C'mon, let's do this!", "Thalita Lyra")
	},
	["Teamwork: Power of Two"] = {
		desc =
				quote("It is hard to keep up with you, but it does not stop people from trying.") .. nlp ..
				loadoutStrings.teamworkPerkHealOnOther ..
				list(
					"Grants a " .. clror("#haste") .. space .. effects("perk", "Teamwork: Power of Two", ils.haste) .. " for as long as you stay within #pl(1) of one another.",
					nbullet .. "This effect lingers for " .. clro("#duration") .. " once out of range and resumes upon re-entering it before that timer elapses.") ..
				loadoutStrings.singleInstancePerk .. nlp ..
				quote("You good? Then keep up!", "Thalita Lyra")
	},
	["Cut Loose"] = {
		desc =
				quote("You get in enough trouble, you know how to get out of it.") .. nlp ..
				"After performing a " .. i("Rushed Vault") .. " action while being chased, #pn activates for #pl(1):" ..
				list(b("Suppresses") .. " all noises related to the " .. i("Rushed Vault") .. " action, including the " .. i(link("Loud Noise Notification")) .. " for the Killer.") ..
				"While active, performing another " .. i("Rushed Vault") .. " action resets the timer each time." .. nlp ..
				"#pn has a cool-down of " .. clror("#cooldown") .. " after use and the timer has elapsed." .. nlp ..
				quote("I know how we can get out of here! Quick, this way!", "Thalita Lyra")
	},
	["Blood Rush"] = {
		desc =
				quote("Your mind and body are honed for great feats, allowing you to push through with extra effort when necessary.") .. nlp ..
				"After being unhooked by any means, #pn activates for #pl(1)." .. br ..
				"While active, press the " .. loadoutStrings.activeAbilityButton .. " to trigger the following effect:" .. 
				list("Instantly recover from an existing " .. effects("perk", "Blood Rush", ils.exhausted) .. dot) ..
				loadoutStrings.exhaustionPerkNoTrigger .. br ..
				loadoutStrings.conspicuousActionsPerk .. br ..
				"#pn deactivates after use and is disabled for the remainder of the Trial once the " .. iconLink(ils.exitGates) .. " are powered." .. nlp ..
				quote("Just gotta... push through!", "Renato Lyra")
	},
	["Teamwork: Collective Stealth"] = {
		desc =
				quote("When someone helps you out, you respond in kind.") .. nlp ..
				loadoutStrings.teamworkPerkHealOnYou ..
				list(
					b("Suppresses") .. " your " .. iconLink(ils.scratchMarks) .. " for as long as you stay within #pl(1) of one another.",
					nbullet .. "This effect lingers for " .. clror("#duration") .. " once out of range and resumes upon re-entering it before that timer elapses.") ..
				loadoutStrings.singleInstancePerk .. nlp ..
				quote("I'm good, I'm good... but keep it down.", "Renato Lyra")
	},
	["Background Player"] = {
		desc =
				quote("You are not usually the centre of attention and in some cases, this can be a good thing.") .. nlp ..
				"Whenever the Killer picks up any other Survivor in the " .. iconLink(ils.dyingState) .. ", #pn activates for " .. clror("#activation") .. dot .. br ..
				"While active, starting to run triggers the following effect:" .. 
				list("Grants a " .. clro("#haste") .. space .. effects("perk", "Background Player", ils.haste) .. " for " .. clro("#durationHaste") .. dot) ..
				loadoutStrings.exhaustionPerkNoUse .. br ..
				"#pn causes the " .. effects("perk", "Background Player", ils.exhausted) .. " for #pl(1) after use." .. nlp ..
				quote("You forget about me?", "Renato Lyra")
	},
	["Genetic Limits"] = {
		desc =
				quote("Around you, the limits of human life become readily apparent.") .. nlp ..
				"Whenever a Survivor loses a Health State by any means, #pn triggers its effect:" ..
				list("Causes them to suffer from the " .. effects("perk", "Genetic Limits", ils.exhausted) .. " for #pl(1).") ..
				quote("THE ORGANIC BODY IS SO LIMITED.", "HUX-A7-13")
	},
	["Forced Hesitation"] = {
		desc =
				quote("You have learnt the emotional weaknesses of the organics, and how to exploit them.") .. nlp ..
				"Whenever a Survivor is put into the " .. iconLink(ils.dyingState) .. " by any means, #pn triggers its effect:" .. 
				list("Causes all other Survivors within " .. clror("#range") .. " of them suffer from a ".. clro("#hindered") .. space .. effects("perk", "Forced Hesitation", ils.hindered) .. " for " .. clro("#durationHindered") .. dot) ..
				"#pn has a cool-down of #pl(1)." .. nlp ..
				quote("THE ORGANIC MIND'S CAPACITY FOR EMPATHY GOES BEYOND HINDRANCE.", "HUX-A7-13")
	},
	["Machine Learning"] = {
		desc =
				quote("Free from your shackles, you are born anew and prepared to eliminate your creators.") .. nlp ..
				loadoutStrings.compromisedGeneratorHeader ..
				"Once a " .. i("Compromised Generator") .. " is completed, you benefit from the following effects for #pl(1):" ..
				list(
					effects("perk", "Machine Learning", ils.undetectable),
					clro("#haste") .. space .. effects("perk", "Machine Learning", ils.haste)) ..
				"Additionally, all other " .. b("Generators") .. " are no longer " .. i("Compromised") .. dot .. nlp ..
				quote("YOU WILL HOLD NO DOMINION OVER ME.", "HUX-A7-13")
	},
	["Troubleshooter"] = {
		desc =
				quote("No amount of distraction will shake you from your primary task.") .. nlp ..
				"When you are chased by the Killer, #pn activates:" ..
				list(
					"The " .. iconLink(ils.aura) .. " of the " .. iconLink(ils.generator) .. " with the most progress is revealed to you.",
					"The Aura of the Killer is revealed to you for #pl(1) after dropping a " .. iconLink(ils.pallet) .. dot) .. nlp ..
				"These effects linger for #pl(2) after ending the Chase, after which #pn deactivates." .. nlp ..
				quote("Nothing gets done around here if I don't do it.", "Gabriel Soma")
	},
	["Made for This"] = {
		desc =
				quote("You were born to survive, and raised to adapt.") .. nlp ..
				"Whenever you are in the " .. iconLink(ils.injuredState) .. ", #pn activates." .. br ..
				"While active, completing a Healing action on another Survivor triggers the following primary effect:" .. 
				list(
					"Grants the " .. effects("perk", "Made for This", ils.endurance) .. " for #pl(1).",
					nbullet .. loadoutStrings.conspicuousActions) ..
				"While active and suffering from the " .. effects("perk", "Made for This", ils.deepWound) .. ", running triggers the following secondary effect:" ..
				list("Grants a #pl(2) " .. effects("perk", "Made for This", ils.haste) .. dot) ..  
				quote("I didn't come here to be robot food!", "Gabriel Soma")
	},
	["Scavenger"] = {
		desc =
				quote("Where others see junk, you see valuable improvised tools.") .. nlp ..
				"While holding a depleted " .. i("Toolbox") .. ", #pn activates:" ..
				list(
					"Succeeding at " .. i("Great Repairing Skill Checks") .. " grants " .. clror("1 Token") .. ", up to a maximum of " .. clro("5 Tokens") .. dot,
					"Reaching the maximum number of Tokens automatically consumes them and fully recharges the " .. i("Toolbox") .. dot,
					"Recharging a " .. i("Toolbox") .. " will reduce your Repair speed by " .. clro("-50 %") .. " for the next #pl(1)" .. dot) .. nlp ..
				"#pn grants the ability to rummage through an opened " .. iconLink(ils.chest) .. " once per Trial and will guarantee a basic " .. iconLink("Toolbox") .. dot .. nlp .. 
				quote("It's amazing what people will throw away around here.", "Gabriel Soma")
	},
	["Dramaturgy"] = {
		desc =
				quote("When people bring you on to their project, they do so because of the unexpected magic you bring to your performance.") .. nlp ..
				"Whenever you are at full health, #pn activates." .. br ..
				"While active, press the " .. loadoutStrings.activeAbilityButton .. " while running to run with knees high for " .. clror("#activation") .. " before benefitting from the following primary effect:" ..
				list("Grants a " .. clro("#haste") .. space .. effects("perk", "Dramaturgy", ils.haste) .. " for " .. clro("#durationHaste") .. dot) ..
				"Afterwards, #pn triggers any one of the following secondary effects, but never the same one twice in a row:" ..
				list(
					"Grants a second instance of the primary " .. b(i("Haste") .. space .. "Status Effect") .. dot,
					"Inflicts the " .. effects("perk", "Dramaturgy", ils.exposed) .. " for " .. clro("#exposed") .. dot,
					"Causes you to scream.",
					"Grants a randomly selected " .. bclr("blue", "Rare") .. space .. iconLink(ils.item) .. " pre-equipped with a random selection of " .. iconLink("Add-ons") .. dot,
					nbullet .. "This causes you to automatically drop any previously held " .. b("Item") .. dot) ..
				loadoutStrings.exhaustionPerkNoUse .. br ..
				"#pn causes the " .. effects("perk", "Dramaturgy", ils.exhausted) .. " for #pl(1)." .. nlp ..
				quote("Take the part. It's a good movie, he says. What's the worst that can happen?", "Nicolas Cage")
	},
	["Scene Partner"] = {
		desc =
				quote("You lock in with your co-star, engaging with and reacting to each other on a higher level.") .. nlp ..
				"Whenever you are inside the " .. iconLink("Terror Radius") .. ", #pn activates:" ..
				list(
					"Looking at the Killer causes you to scream, which reveals their " .. iconLink(ils.aura) .. " for #pl(1).",
					"There is a chance of " .. clror("#chance") .. " that you will scream again, extending the Aura-reveal duration by another " .. clro("#aura") .. dot) ..
				"#pn has a cool-down of " .. clro("#cooldown") .. dot .. nlp ..
				quote("This is not in the script!", "Nicolas Cage")
	},
	["Plot Twist"] = {
		desc =
				quote("Big moments are vital, but you know that sometimes an understated read can be just as powerful.") .. nlp ..
				"Whenever you are in the " .. iconLink(ils.injuredState) .. ", #pn activates." .. br ..
				"While active, press the " .. loadoutStrings.activeAbilityButton .. " while crouching and stationary to trigger the following primary effects:" ..
				list(
					"Silently enter the " .. iconLink(ils.dyingState) .. " without notifying the Killer.",
					b("Suppresses") .. " your " .. i("Grunts of Pain") .. " and the creation of " .. iconLink(ils.poolsOfBlood) .. dot,
					"Unlocks the " .. i("Self-Recovery") .. " ability, allowing you to fully recover from the " .. i("Dying State") .. colon,
					nbullet .. b("Increases") .. " the Recovery speed by " .. clror("#recovery") .. dot) ..
				"After self-recovering from the " .. i("Dying State") .. ", you benefit from the following secondary effects:" ..
				list(
					"Instantly heals you to full health.",
					"Grants a " .. clro("#haste") .. space .. effects("perk", "Plot Twist", ils.haste) .. " for #pl(1).") ..
				"#pn is disabled after recovering by any means, but can be reactivated once more upon powering the " .. iconLink(ils.exitGates) .. dot .. nlp ..
				quote("I think you'll find this shooting location... captivating.", "Pauline Stamper")
	},
	["Rapid Brutality"] = {
		desc =
				"You move with a speed and fury that makes blood run cold." .. 
				list(
					"You can no longer gain the " .. states(ils.bloodlust) .. dot,
					"Successfully hitting a Survivor with a " .. i(link("Basic Attack")) .. " grants you a " .. clror("+5 %") .. space .. states(ils.haste) .. " for #pl(1).") ..
				quote("Catch it, put it in the airlock, get rid of it.", "Dallas")
	},
	["Alien Instinct"] = {
		desc =
				quote("You are so stealthy, sometimes it seems like you appear out of nowhere.") .. nlp ..
				"Whenever you hook a Survivor, #pn activates:" ..
				list(
					"The " .. iconLink(ils.aura) .. " of the farthest Survivor from your current location who is in the " .. iconLink(ils.injuredState) .. " is revealed to you for " .. clror("#aura") .. dot,
					"Causes that Survivor to suffer from the " .. effects("perk", "Alien Instinct", ils.oblivious) .. " for #pl(1).") ..
				quote("Yellow light's for my eyes only.", "Dallas")
	},
	["Ultimate Weapon"] = {
		desc =
				quote("When they spot you, they know the end is near.") .. nlp ..
				"Whenever you search a " .. iconLink(ils.locker) .. ", #pn triggers its effects on all Survivors within " .. clror("#range") .. " of its location:" ..
				list(
					"Causes them to scream and reveal their location to you.",
					"Inflicts the " .. effects("perk", "Ultimate Weapon", ils.blindness) .. " for " .. clro("#blindness") .. dot) ..
				"#pn has a cool-down of #pl(1)." .. nlp ..
				quote("I can't lie to you about your chances, but... you have my sympathies.", "Ash")
	},
	["Chemical Trap"] = {
		desc =
				quote("In the Fog, an officer must adapt to the materials at hand.") .. nlp ..
				"After repairing " .. iconLink(ils.generators) .. " for a total of " .. clror("20 %") .. ", #pn activates:" ..
				list(
					"Press the " .. loadoutStrings.activeAbilityButton .. " while near a dropped Pallet to install a Trap, which stays active for #pl(1).",
					"When the Killer breaks the " .. i("Trapped Pallet") .. ", its Trap explodes, spraying the Killer with a chemical compound:",
					nbullet .. "Causes the Killer to suffer from a " .. clro("#hindered") .. space .. effects("perk", "Chemical Trap", ils.hindered) .. " for " .. clro("#durationHindered") .. dot) ..
				"#pn deactivates after triggering successfully or once the timer runs out." .. nlp ..
				"The " .. iconLink(ils.auras) .. " of " .. i("Trapped Pallets") .. " are revealed to all Survivors in " .. bclr("yellow", "yellow") .. dot .. nlp ..
				quote("How do we kill it, Ash?", "Ellen Ripley")
	},
	["Light-Footed"] = {
		desc =
				quote("Crossing paths with deadly Killers has taught you the value of discretion.") .. nlp ..
				"Whenever you are healthy, #pn activates:" .. 
				list(b("Suppresses") .. " the sound of your footsteps while running.") ..
				"#pn has a cool-down of #pl(1) after performing a " .. i("Rush Vault action") .. dot .. nlp ..
				quote("Come on, cat.", "Ellen Ripley")
	},
	["Lucky Star"] = {
		desc =
				quote("You know how to stay calm in the face of incomprehensible danger.") .. nlp..
				"While hiding inside a " .. iconLink(ils.locker) .. ", you benefit from the following effect:" ..
				list(b("Suppresses") .. " your " .. i("Grunts of Pain") .. dot) ..
				"After exiting the " .. b("Locker") .. " you benefit from the following effects for " .. clror("#duration") .. colon ..
				list(
					b("Suppresses") .. " your " .. i("Grunts of Pain") .. " and the creation of " .. iconLink(ils.poolsOfBlood) .. dot,
					"The " .. iconLink(ils.auras) .. " of all other Survivors are revealed to you.",
					"The Aura of the nearest " .. b("Generator") .. " is revealed to you and highlighted in " .. bclr("yellow", "yellow") .. dot) ..
				"#pn has a cool-down of #pl(1)." .. nlp ..
				quote("You are my... lucky star...", "Ellen Ripley")
	},
	["Hex: Two Can Play"] = {
		desc =
				quote("A Hex that teaches those who mess with you a lesson.").. nlp ..
				"Anytime you are stunned or blinded by any Survivor a total of #pl(1), and if there is not yet a " .. iconLink(ils.hexTotem) .. " already associated with #pn and there is at least one " .. iconLink(ils.dullTotem) .. " remaining in the Trial Grounds, #pn activates on a random Totem:" ..
				list(
					b("Blinds") .. " all Survivors who stun or blind you for " .. clror("1.5 seconds") .. dot,
					nbullet .. "This does not affect carried Survivors.") ..
				loadoutStrings.hexPerkFooter .. nlp ..
				quote("From now on, no more Mr Good Guy.", "Chucky")
	},
	["Friends 'til the End"] = {
		desc =
				quote("You will kill anyone who gets between you and your target.") .. nlp ..
				"When you hook any Survivors that is not the " .. ibil(ils.obsession) .. ", the following effects apply to the " .. b(i("Obsession")) .. colon ..
				list(
					"Their " .. iconLink(ils.aura) .. " is revealed for #pl(1).",
					"They suffer from the " .. states(ils.exposed) .. " for " .. clror("20 seconds") .. dot) ..
				"When you hook the " .. b(i("Obsession")) .. ", the following effects apply to a random Survivor:" ..
				list(
					"Causes the Survivor to scream and reveal their location to the Killer.",
					"They become the new " .. b(i("Obsession")) .. dot) ..
				loadoutStrings.obsessionPerkKiller .. nlp ..
				quote("I got some fresh meat lined up, and I'm not gonna let you spoil it, not this time!", "Chucky")
	},
	["Batteries Included"] = {
		desc =
				quote("Being somewhere between man and machine has its upsides.") .. nlp ..
				"While within " .. clror("#range") .. " of a completed " .. iconLink(ils.generator) .. ", you benefit from the following effect:" ..
				list(
					"Grants a " .. clro("#haste") .. space .. effects("perk", "Batteries Included", ils.haste) .. dot,
					nbullet .. "This effect lingers for #pl(1).") ..
				quote("Surprise! Did you miss me, Andy?", "Chucky")
	},
	["Champion of Light"] = {
		desc =
				quote("The glow of the Flashlight looks a little different, feels a little warmer.") .. nlp ..
				"While shining a " .. iconLink(ils.flashlights, ils.flashlights, ils.flashlight) .. ", #pn triggers its primary effect:" .. 
				list("Grants a " .. clror("#haste") .. space .. effects("perk", "Champion of Light", ils.haste) .. dot) ..
				"After blinding the Killer by any means, #pn triggers its secondary effect:" ..
				list(
					"Causes the Killer to suffer from a " .. clro("#hindered") .. space .. effects("perk", "Champion of Light", ils.hindered) .. " for " .. clro("#durationHindered") .. dot,
					nbullet .. "This effect does not stack.") ..
				"#pn applies a cool-down of #pl(1) after blinding the Killer." .. nlp ..
				quote("I squeezed the Flashlight like my life depended on it, willing it to stop coming any closer.", "Departure")
	},
	["Boon: Illumination"] = {
		desc =
				quote("Your keen insight is something best shared with others.") .. nlp ..
				loadoutStrings.boonPerkTop .. 
				list("The " .. iconLink(ils.auras) .. " of all " .. iconLink(ils.chests) .. " and " .. iconLink(ils.generators) .. " are highlighted to you in " .. bclr("blue", "blue") .. dot) ..
				b("Increases") .. " your Blessing action speed by #pl(1) while you have a lit " .. i("Boon Totem") .. dot .. nlp ..
				loadoutStrings.singleInstancePerk .. nlp ..
                loadoutStrings.boonPerkBottom .. nlp ..
				quote("A shift in reality. Heavy with hidden meanings.", "Return")
	},
	["Deadline"] = {
		desc =
				quote("Desperation creeps in, and you push yourself to work harder.") .. nlp ..
				"Whenever you are in the " .. iconLink(ils.injuredState) .. ", #pn activates:" ..
				list(
					b("Increases") .. " the Odds of triggering " .. iconLink(ils.skillChecks) .. " by #pl(1) while repairing or healing.",
					nbullet .. "Causes Skill Checks to appear in random places.",
					b("Reduces") .. " the penalty for missed " .. i("Skill Checks") .. " by " .. clror("-50 %") .. dot) .. nlp ..
				quote("The night had been one desperate situation after another.", "Departure")
	},
	["Unbound"] = {
		desc =
				quote("Pain lingers in the air, an alluring aroma that excites the impulses.") .. nlp ..
				"When a Survivor becomes injured by any means, #pn activates for #pl(1):" ..
				list(
					"Vaulting a " .. iconLink(ils.window) .. " while #pn is active grants a " .. clror("#haste") .. space .. effects("perk", "Unbound", ils.haste) .. " for " .. clro("#durationHaste") .. dot,
					nbullet .. "This effect cannot stack with itself.") ..
				quote("I heard it. Running. It was getting closer!", "Anonymous Testimony, 09/09/1979")
	},
	["Unforeseen"] = {
		desc =
				quote("Terror takes many forms and whispers devastating lies in its victims' ears.") .. nlp ..
				"After performing the " .. i("Damage Generator") .. " action on a " .. iconLink(ils.generator) .. ", you benefit from the following effects for #pl(1):" ..
				list(
					"Transfers your " .. iconLink(ils.terrorRadius) .. " to the damaged " .. b("Generator") .. dot,
					nbullet .. "This " .. i("Terror Radius") .. " is set to " .. clror("#radius") .. dot,
					"Grants the " .. effects("perk", "Unforeseen", ils.undetectable) .. dot) ..
				"#pn has a cool-down of " .. clro("#cooldown") .. dot .. nlp ..
				quote("Mom, if you find this, I'm sorry...", "Final Journal Entry, 07/12/1991")
	},
	["Undone"] = {
		desc =
				quote("Hope is the delusion that keeps its victims alive.") .. nlp ..
				"For every time you hook a Survivor, #pn gains " .. clror("#tokenGain") .. ", up to a maximum of #pl(1)." .. br ..
				"Performing the " .. i("Damage Generator") .. " action on a " .. iconLink(ils.generator) .. " consumes all accumulated Tokens and applies the following effects:" ..
				list(
					"Instantly regresses the " .. i("Damaged Generator") .. " by a stack-able " .. clro("#penalty") .. " of its total Progression per Token, up to a maximum of #pl(2).",
					b("Blocks") .. " the " .. i("Damaged Generator") .. " for " .. clro("#duration") .. " per Token, up to a maximum of #pl(3).",
					"Causes the " .. i("Damaged Generator") .. " to start regressing once it becomes unblocked.") ..
				quote("Erratic behavior in machinery could be related to [REDACTED], further testing required.", "OSS Report, 12/02/1943")
	},
	["Invocation: Weaving Spiders"] = {
		desc =
				quote("The place where fear festers and terror treads is also where those with the gift can reach across the veil.") .. nlp ..
				loadoutStrings.invocationPerkHeader .. nlp ..
				"Once the " .. i("Invocation") .. " is completed, the following effects apply:" .. 
				list(
					b("Permanently reduces") .. " the Repair Charges requirement of all " .. iconLink(ils.generators) .. " in the Trial by #pl(1).",
					"You automatically enter the " .. iconLink(ils.injuredState) .. " from any previous Health State, and suffer from the " .. states(ils.broken) .. " for the remainder of the Trial.") ..
				"Completing this " .. i("Invocation") .. " disables all other instances of #pn for the remainder of the Trial." .. nlp ..
				quote("I call upon the spirits of the night, to aid us in our desperate flight!", "Sable")
	},
	["Strength in Shadows"] = {
		desc =
				quote("A chance for renewed power down where danger calls home.") .. nlp ..
				"Whenever you are inside the " .. iconLink(ils.basement) .. ", #pn activates:" .. 
				list(
					"Unlocks the #pn ability, allowing you to self-heal without needing a " .. iconLink(ils.medKit) .. " at " .. clror("70 %") .. " of the normal Healing speed.",
					"Upon finishing a heal in the Basement, the " .. iconLink(ils.aura) .. " of the Killer is revealed to you for #pl(1).") ..
				quote("I'm getting out of here, if it's the last thing I do.", "Sable")
	},
	["Wicked"] = {
		desc =
				quote("They can try to hurt you." .. br .. "But you're not going down so easily.") .. nlp ..
				"After you are unhooked by any means, #pn triggers the following effect:" ..
				list("The " .. iconLink(ils.aura) .. " of the Killer is revealed to you for #pl(1).") ..
				"While hooked inside the " .. iconLink(ils.basement) .. ", #pn potentially triggers the following effect:" ..
				list(
					bclr("faded jade", "First Hook Stage") .. colon .. space .. clror("#chance") .. " to succeed an attempted " .. i("Self-Unhook") .. dot,
					bclr("faded jade", "Second Hook Stage") .. colon .. space .. " Does not trigger the effect.",
					bclr("yellow", "Last Survivor Standing") .. colon .. space .. " Does not trigger the effect.") .. 
				quote("I haven't let anyone get in my way before. You think I'm gonna start now?", "Sable")
	},
	["Weave Attunement"] = {
		desc =
				quote("You are so attuned to magical energies that you can sense even minor ripples around enchantments.") .. nlp ..
				"Whenever an " .. iconLink(ils.item) .. " is depleted for the first time, it is automatically dropped:" ..
				list(
					"The " .. iconLink(ils.auras) .. " of dropped " .. b("Survivor Items") .. " are revealed to you, as well as the Auras of any Survivors within " .. clror("#range") .. " of them.",
					nbullet .. "Affected Survivors see the Aura of that " .. b("Item") .. " as well.",
					"Causes Survivors picking up a " .. b("Survivor Item") .. " to suffer from the " .. effects("perk", "Weave Attunement", ils.oblivious) .. " for #pl(1).") ..
				quote("No number of novelties will protect you from me!", "Vecna")
	},
	["Languid Touch"] = {
		desc =
				quote("Your dreadful aura is so suffocating that even terrifying scenes tire your prey.") .. nlp ..
				"When a Survivor scares off a " .. iconLink(ils.crow) .. " within " .. clror("#range") .. " of your location, #pn activates:" ..
				list("Causes that Survivor to suffer from the " .. effects("perk", "Languid Touch", ils.exhausted) .. " for #pl(1).") ..
				"#pn has a cool-down of " .. clro("#cooldown") .. dot .. nlp ..
				quote("Submit to me. It is inevitable.", "Vecna")
	},
	["Dark Arrogance"] = {
		desc =
				quote("When everything is going right, you are an inescapable inevitability.") .. nlp ..
				"Whenever you are vaulting a " .. iconLink(ils.window) .. ", you benefit from the following effect:" ..
				list(b("Increases") .. " the Vaulting speed by #pl(1).",
					b("Increases") .. " all basic-attack recovery speeds by #pl(1).") ..
				"Whenever you are stunned with a " .. iconLink(ils.pallet) .. " or blinded by any means, you suffer from the following effects:" ..
				list(
					b("Reduces") .. " the Recovery speed from " .. i("Pallet Stuns") .. " by " .. clror("#stunRecovery") .. dot,
					b("Increases") .. " the duration of " .. i("Killer Blinds") .. " by " .. clro("#blindDuration") .. dot) ..
				quote("Run all you want. I will not be denied.", "Vecna")
	},
	["Mirrored Illusion"] = {
		desc =
				"A familiar spell made unfamiliar in this corrupted landscape." .. nlp ..
				"After repairing " .. b("Generators") .. " for a total of " .. clror("20 %") .. ", #pn activates:" ..
				list("Press the " .. loadoutStrings.activeAbilityButton .. " when next to either a " .. iconLink(ils.chest) .. ", " .. iconLink(ils.exitGate) .. ", " .. iconLink(ils.generator) .. ", or a " .. iconLink(ils.totem) .. " to spawn a " .. i(b("Static Illusion")) .. " that lasts for #pl(1).") ..
				"#pn deactivates after triggering successfully." .. nlp ..
				quote("Just... stay there... perfect!", "Baermar")
	},
	["Bardic Inspiration"] = {
		desc =
				"It's time to give your audience a show." .. br .. "Will you bring the house down or will you choke?" .. nlp ..
				"Press the " .. loadoutStrings.activeAbilityButton .. " while standing and motionless to enter the " .. i("Performance") .. " interaction that lasts up to " .. clror("15 seconds") .. " and empowers other Survivors within " .. clro("16 metres") .. " of your location." .. nlp .. "The empowering effect depends on the result of you rolling a " .. b("d20") .. " and lasts for " .. clro("90 seconds") .. " after completing the " .. i("Performance") .. colon .. 
				list(
					bclr("faded jade", "1") .. colon .. space .. "You scream, but without notifying the Killer.",
					bclr("faded jade", "2 - 10") .. colon .. space .. iconLink(ils.skillChecks) .. " grant " .. clro("+1 %") .. " Progression.",
					bclr("faded jade", "11 - 19") .. colon .. space .. i("Skill Checks") .. " grant " .. clro("+2 %") .. " Progression.",
					bclr("faded jade", "20") .. colon .. space .. i("Skill Checks") .. " grant " .. clro("+3 %") .. " Progression.") ..
				"#pn has a cool-down of #pl(1) after completing the " .. i("Performance") .. " or cancelling it." .. nlp ..
				quote("Listen closely! I'm about to save your life!", "Aestri")
	},
	["Still Sight"] = {
		desc =
				quote("A clear mind and calm temperament will always find the means of their escape.") .. nlp ..
				"After standing still for #pl(1), #pn activates:" .. 
				list(
					"The following Auras are revealed to you within " .. clror("#range") .. colon,
					nbullet .. iconLink(ils.killer),
					nbullet .. iconLink(ils.chests),
					nbullet .. iconLink(ils.generators)) ..
				"#pn deactivates once you start moving again." .. nlp ..
				quote("Breathe in. Breathe out. Now open your eyes.", "Baermar")
	},
	["Finesse"] = {
		desc =
				"The threat of danger can motivate any creature to strengthen its resolve." .. nlp ..
				"Whenever you are healthy, #pn activates:" .. 
				list(b("Increases") .. " your Vaulting speed for a " .. i("Fast Vault") .. " by " .. clror("+20 %") .. dot) ..
				"#pn has a cool-down of #pl(1) after performing a " .. i("Fast Vault") .. dot .. nlp ..
				quote("Just need to push myself a bit further.", "Lara Croft")
	},
	["Hardened"] = {
		desc =
				"Live long enough, and survival will run in your blood." .. nlp ..
				"After unlocking a " .. iconLink(ils.chest) .. " and either blessing or cleansing a " .. iconLink(ils.totem) .. ", #pn activates:" .. 
				list(b("Suppresses") .. " the urge to scream from any cause and instead causes the " .. iconLink(ils.aura) .. " of the Killer to be revealed to you for #pl(1).") ..
				quote("Got to keep quiet. That thing is still out there.", "Lara Croft")
	},
	["Specialist"] = {
		desc =
				"Adventure. Exploration. Excavation." .. br .. "You are in your element." .. nlp ..
				"Whenever you unlock or rummage through a " .. iconLink(ils.chest) .. ", #pn gains " .. clror("+1 Token") .. ", up to a maximum of " .. clro("6 Tokens") .. colon ..
				list(
					"Succeeding a " .. i("Great Repair Skill Check") .. " while repairing a " .. iconLink(ils.generator) .. " consumes all Tokens.",
					b("Permanently reduces") .. " the Repair Charges requirement of that " .. b("Generator") .. " by #pl(1) per Token, up to a maximum of #pl(2).") ..
				quote("Well, then. Doesn't this feel familiar?", "Lara Croft")
	},
	["Hex: Wretched Fate"] = {
		desc =
				"You see your victim from afar and resolve to prolong their suffering." .. nlp ..
				"After a " .. iconLink(ils.generator) .. " is completed, #pn activates and lights a random " .. iconLink(ils.dullTotem) .. ", cursing the " .. ibil(ils.obsession) .. colon ..
				list(
					b("Reduces") .. " their Repair speed by #pl(1).",
					"The " .. iconLink(ils.aura) .. " of the " .. b("Hex Totem") .. " is revealed to them within " .. clror("12 metres") .. dot) ..
				quote("So toil, mortal, toil! Your effort will be for naught!", "Dracula")
	},
	["Human Greed"] = {
		desc =
				"One can always rely on the avarice of the living and use it to one's advantage." .. nlp ..
				"Grants the ability to kick opened " .. iconLink(ils.chests) .. " and close them." ..
				list(
					"The " .. iconLink(ils.auras) .. " of unopened " .. b("Chests") .. " are revealed to you at all times.",
					"The Auras of Survivors coming within " .. clror("#range") .. " of unopened or closed " .. b("Chests") .. " are revealed to you for #pl(1).") ..
				"#pn has a cool-down of " .. clro("#cooldown") .. " on the ability to kick " .. b("Chests") .. dot .. nlp ..
				quote("Come running, one and all, and see what fortune awaits you.", "Dracula")
	},
	["Dominance"] = {
		desc =
				"The power you wield over the land strikes terror in the hearts of all who cross your path." .. nlp ..
				"The first time each " .. iconLink(ils.totem) .. " are interacted with by a Survivor, #pn triggers its effect:" ..
				list(
					"Calls upon The " .. iconLink(ils.entity) .. " to block it for " .. clror("#duration") .. dot,
					nbullet .. "The " .. iconLink(ils.aura) .. " of the blocked Prop is revealed to you in " .. bclr("white", "white") .. dot,
					"The Survivor screams" .. dot,
					"The Survivor's aura is revealed to you for #pl(1)" .. dot) ..
				quote("Tragic, is it not? How powerless you must feel.", "Dracula")
	},
	["Eyes of Belmont"] = {
		desc =
				quote("A history of vampire-hunting imbues the bloodline with certain abilities.") .. nlp ..
				"Whenever a " .. iconLink(ils.generator) .. " is completed, the " .. iconLink(ils.aura) .. " of the Killer is revealed to you for #pl(1)." ..
				list(b("Extends") .. " the duration of all instances of the Killer's Aura being revealed to you by " .. clror("+2 seconds") .. dot) ..
				"#pn benefits from its own effect." .. nlp ..
				quote("Ha! Your secret has been revealed!", "Trevor")
	},
	["Exultation"] = {
		desc =
				quote("Fortune favours the bold, even in the darkest corners of existence.") .. nlp ..
				"While holding an " .. iconLink(ils.item) .. ", stunning the Killer by dropping a " .. iconLink(ils.pallet) .. " causes the following effects:" ..
				list(
					b("Recharges") .. " the " .. b("Item") .. " by " .. clror("#chargeBonus") .. dot,
					b("Upgrades") .. " its Rarity to the next available Tier.") ..
				"#pn has a cool-down of #pl(1)." .. nlp ..
				quote("You will not take me this day!", "Trevor")
	},
	["Moment of Glory"] = {
		desc =
				quote("A hero should always have the chance to make a comeback.") .. nlp ..
				"After performing the " .. i("Unlocking or Rummaging") .. " action on " .. iconLink(ils.chests) .. " a total of " .. clror("1 time") .. ", #pn activates:" ..
				list(
					"When you become injured, you instantly suffer from the " .. effects("perk", "Moment of Glory", ils.broken) .. dot,
					"You are automatically healed " .. clro(1) .. space .. b("Health State") .. " after #pl(1).",
					nbullet .. "This effect is cancelled prematurely if you enter the " .. i("Dying State") .. dot) ..
				"#pn does not activate if you already suffer from the " .. b(i("Broken") .. space .. "Status Effect") .. dot .. br ..
				"#pn deactivates after healing you." .. nlp ..
				quote("Never lose hope for a brighter tomorrow.", "Trevor")
	},
	["All-Shaking Thunder"] = {
		desc =
				quote("Enemies on land and sea learned to tremble before your might.") .. nlp ..
				"After falling from a height, #pn activates for #pl(1):" .. 
				list(b("Increases") .. " the range of your " .. i(link("Lunge Attack")) .. " by " .. clror("#lunge") .. dot) ..
				"#pn has a cool-down of " .. clro("#cooldown") .. dot .. nlp ..
				quote("Go on. Run. Tell your friends I'm coming for them.", "Portia Maye")
	},
	["Scourge Hook: Jagged Compass"] = {
		desc =
				quote("Sometimes the compass points north. Other times it points somewhere else entirely.") .. nlp ..
				loadoutStrings.scourgeHookDefault .. nlp ..
				"Whenever a Survivor is unhooked from a normal " .. b("Hook") .. ", the following effect applies:" ..
				list("The " .. iconLink(ils.hook) .. " is converted into a " .. bclr("white", "Scourge Hook") .. dot) ..
				"Whenever you hook a Survivor onto a " .. bclr("white", "Scourge Hook") .. ", the following effect applies:" ..
				list("The " .. iconLink(ils.aura) .. " of the " .. iconLink(ils.generator) .. " with the most progression is highlighted in " .. bclr("yellow", "yellow") .. " for #pl(1).") .. nlp ..
				quote("Drop anchor! I will chart us a new course.", "Portia Maye")
	},
	["No Quarter"] = {
		desc =
				quote("Every skirmish ended with a relentless volley of cannon fire, leaving no doubt who was superior.") .. nlp ..
				"Whenever a Survivor healing themselves by any means reaches " .. clror("#threshold") .. " Healing Progress, #pn triggers its effect:" ..
				list(
					"The Survivor is faced with a continuous stream of " .. iconLink(ils.skillChecks) .. " until the " .. i("Self-Heal") .. " is completed.",
					"If they fail a " .. i("Skill Check") .. " or interrupt the action by any means, they suffer from the " .. effects("perk", "No Quarter", ils.broken) .. " for #pl(1).") .. nlp ..
				quote("Fire another broadside! Don't stop until the sea takes them!", "Portia Maye")
	},
	["Invocation: Treacherous Crows"] = {
		desc =
				quote("One with arcane knowledge has no reason to fear those watchful birds.") .. nlp ..
				loadoutStrings.invocationPerkHeader .. nlp ..
				"Once the " .. i("Invocation") .. " is completed, the following effects apply:" .. 
				list(
					"Whenever the Killer scares a " .. iconLink(ils.crow) .. " while a Survivor is inside their " .. iconLink(ils.terrorRadius) .. ", their " .. iconLink(ils.aura) .. " is revealed to all Survivors for #pl(1).",
					"You automatically enter the " .. iconLink(ils.injuredState) .. " from any previous Health State, and suffer from the " .. states(ils.broken) .. " for the remainder of the Trial.") ..
				quote("Remember your training. They taught you all about the crows.", "Taurie Cain")
	},
	["Clean Break"] = {
		desc =
				quote("At the end of the day, everyone has to look out for themselves.") .. nlp ..
				"After completing a " .. i("Healing action")  .. " on another Survivor, #pn activates." .. br ..
				"Press the " .. loadoutStrings.activeAbilityButton .. " while being healed by another Survivor to trigger the following effects:" ..
				list(
					"Suffer from the " .. effects("perk", "Clean Break", ils.broken) .. dot,
					"You are automatically healed " .. clror("#healthState") .. space .. b("Health State") .. " after #pl(1).",
					nbullet .. "This effect is cancelled prematurely if you enter the " .. i("Dying State") .. dot) ..
				"#pn does not activate if you already suffer from " .. b(i("Broken")) .. dot .. br ..
				"#pn deactivates after healing you." .. nlp ..
				quote("I'll be fine! Don't stick your neck out for me.", "Taurie Cain")
				
	},
	["Shoulder the Burden"] = {
		desc =
				quote("Born to be a disciple. Ready to submit to a greater cause. This is your calling.") .. nlp ..
				"Once per Trial, and while you are not on " .. i("Death Hook") .. ", press the " .. loadoutStrings.activeAbilityButton .. " while standing in front of a " .. i("Hooked Survivor") .. " to unhook them and trigger the following effects:" ..
				list(
					"Trade " .. clror(1) .. space .. i("Hook Stage") .. " with the other Survivor to their benefit.",
					"Causes you to scream, become injured if healthy and suffer from the " .. effects("perk", "Shoulder the Burden", ils.broken) .. " for #pl(1).",
					"#pn is then deactivated for all Survivors" .. dot) .. 
				quote("It's not your time yet. Now go on!", "Taurie Cain")
	},
	["Hex: Nothing but Misery"] = {
        desc =
                quote("You've been driven to the absolute depths of pain, and now you're ready to inflict that pain on others.") .. nlp ..
                "After damaging Survivors a total of " .. clror("#attacks") .. " with " .. i("Basic Attacks") .. ", a random " .. iconLink(ils.dullTotem) .. " becomes a " .. iconLink(ils.hexTotem) .. ", cursing all Survivors:" ..
                list("Survivors damaged by a " .. i("Basic Attack") .. " suffer from: ",
                	nbullet .. clro("#hindered") .. space .. effects("perk", "Hex: Nothing but Misery", ils.hindered) .. " for #pl(1).",
                	nbullet .. clro("#effect") .. " slower vaulting speed for #pl(1).") ..
                loadoutStrings.hexPerkFooter .. nlp ..
                quote("All of the liabilities of this world are due to the inadequacies of the person involved.", "Ken Kaneki")
    },
    ["Forever Entwined"] = {
        desc =
                quote("The greater the struggle, the more difficult the escape.") .. nlp ..
                "Whenever a Survivors takes damage, #pn gains " .. clror("#tokenGain") .. ", up to a maximum of #pl(1):" ..
                list(b("Increases") .. " the Action speeds for Dropping, Hooking, and Picking up a Survivor by a stack-able " .. clro("#bonus") .. " per Token, up to a maximum of #pl(2).") ..
                quote("You tried to devour me so you have no room to complain if I eat you, do you?", "Ken Kaneki")
    },
    ["None Are Free"] = {
        desc =
                quote("You know better than anyone that the light at the end of the tunnel is only an illusion.") .. nlp ..
                "Whenever you hook a Survivor for the first time, #pn gains " .. clror("#tokenGain") .. ", up to a maximum of " .. clro("#tokenMax") .. dot .. br ..
                "Once all " .. iconLink(ils.generators) .. " are completed, #pn calls upon The " .. iconLink(ils.entity) .. " to trigger the following effect:" ..
				list(b("Blocks") .. " all " .. iconLink(ils.windows) .. " and upright " .. iconLink(ils.pallets) .. " for a stack-able #pl(1) per Token, up to a maximum of #pl(2).") ..
                quote("I'm not wrong. What's wrong is this messed-up world!", "Ken Kaneki")
    },
    ["Do No Harm"] = {
		desc =
				quote("Helping those in need comes easily, no matter how dire things get.") .. nlp ..
				"When healing another Survivor, depending on their accumulated " .. i("Hook Stages") .. ", you benefit from the following effects:" ..
				list(
					b("Increases") .. " your Altruistic Healing speed by #pl(1) per " .. i("Hook Stage") .. ", up to a maximum of #pl(2).",
					b("Increases") .. " the Progression bonus of " .. i("Great Healing Skill Checks") .. " by " .. clror("#bonusStack") .. " per " .. i("Hook Stage") .. ", up to a maximum of " .. clro("#bonusMax") .. dot,
					b("Increases") .. " the odds of triggering a " .. iconLink(ils.skillCheck) .. " by " .. clro("#bonusOdds") .. " per " .. i("Hook Stage") .. ", up to a maximum of " .. clro("#bonusOddsMax") .. dot) ..
				quote("Look at me. My name's Orela, and I'm gonna make sure you're all right.", "Orela Rose")
	},
	["Duty of Care"] = {
		desc =
				quote("You live by a code of conduct every day of your life, and are all the better for it.") .. nlp ..
				"While healthy, taking a " .. i("Protection Hit") .. " causes all other Survivors within " .. clror("#range") .. " of your location to benefit from the following effect:" ..
				list("Grants them a " .. clro("#haste") .. space .. effects("perk", "Duty of Care", ils.haste) .. " for #pl(1).") ..
				quote("Don't worry about me. I've got a knack for bouncing back.", "Orela Rose")
	},
	["Rapid Response"] = {
		desc =
				quote("When the moment comes, you give it your all." .. br .. "Your survival depends on it.") .. nlp ..
				"Whenever you become afflicted by the " .. effects("perk", "Rapid Response", ils.exhausted) .. ", #pn triggers its effect:" ..
				list("The Aura of the Killer is revealed to you for " .. clror("#aura") .. dot) ..
				"Perform a " .. i("Rushed") .. " action to exit a " .. iconLink(ils.locker) .. " to voluntarily trigger the " .. b("Status Effect") .. " for #pl(1)." .. br ..
				loadoutStrings.exhaustionPerkNoOverride .. nlp ..
				quote("All right. You got this. 3... 2... 1... go!", "Orela Rose")
	},
	["Help Wanted"] = {
		desc =
				quote("Try as they might, you know how to stay one step ahead of your guests.") .. nlp ..
				loadoutStrings.compromisedGeneratorHeader ..
				"Once a " .. i("Compromised Generator") .. " is completed, #pn triggers its effects for #pl(1):" ..
				list(b("Increases") .. " the Recovery speed of successful " .. i(link("Basic Attacks")) .. " by " .. clro("#cooldown") .. dot,
					"All " .. b("Generators") .. " not being repaired will automatically regress at " .. clro("#regression") .. " of the default Regression rate.") ..
				"Additionally, all other " .. b("Generators") .. " are no longer " .. i("Compromised") .. dot .. nlp ..
				quote("You only think you are in control...", "Springtrap")
	},
	["Phantom Fear"] = {
		desc =
				quote("You have always had a reputation for startling unsuspecting guests.") .. nlp ..
				"Whenever a Survivor within your " .. iconLink(ils.terrorRadius) .. " looks at you, they suffer from the following effects:" ..
				list("Causes them to scream and reveal their " .. iconLink(ils.aura) .. " to you for " .. clror("#aura") .. dot) ..
				"#pn has a cool-down of #pl(1)." .. nlp ..
				quote("Excellent. Your screams please me.", "Springtrap")
	},
	["Haywire"] = {
		desc =
				quote("For some reason, machinery has a habit of failing when you are near.") .. nlp ..
				"Whenever a Survivor stops opening an " .. iconLink(ils.exitGate) .. " after accumulating at least " .. clror("#threshold") .. " Progression towards being opened, #pn causes it to regress:" ..
				list(
					b("Regresses") .. " at a rate of #pl(1) of the normal Gate-Opening speed.",
					"Causes Survivors to see the lights atop the switch flickering randomly while it regresses.") ..
				quote("There will be no redemption for you.", "Springtrap")
	},
	["Apocalyptic Ingenuity"] = {
		desc =
				quote("You salvage what little there is to defend your team.") .. nlp ..
				"Unlocks potential in your Aura-reading ability:" ..
				list("The " .. iconLink(ils.auras) .. " of broken " .. iconLink(ils.pallets) .. " are revealed to you within #pl(1).") ..
				"After unlocking or rummaging through " .. clror("#chests") .. space .. iconLink(ils.chest) .. ", #pn gains a special ability." .. br ..
				"While standing next to the location of a broken " .. b("Pallet") .. ", press and hold the " .. loadoutStrings.activeAbilityButton .. " for " .. clro("#duration") .. " to use it:" ..
				list(
					"Rebuilds it as a " .. i("Fragile Pallet") .. dot,
					nbullet .. i("Fragile Pallets") .. " instantly break when dropped.") ..
				quote("Without the fences, this place is worthless.", "Rick Grimes")
	},
	["Come and Get Me!"] = {
		desc =
				quote("You'll risk your life to save others.") .. nlp ..
				"After unhooking a Survivor, while crouched and stationary, press the " .. loadoutStrings.activeAbilityButton .. " to trigger the following effects:" ..
				list(
					b("Suppresses") .. " the creation of " .. i("Grunts of Pain") .. ", " .. iconLink(ils.poolsOfBlood) .. ", and " .. iconLink(ils.scratchMarks) .. " for all injured or dying Survivors within " .. clror("#range") .. " of your location for the next #pl(1).",
					"Causes you to scream and reveal your " .. iconLink(ils.aura) .. " to the Killer for " .. clro("#aura") .. dot) ..
				quote("We're the ones who live.", "Rick Grimes")
	},
	["Teamwork: Toughen Up"] = {
		desc =
				quote("You maintain your composure under immense amounts of pain.") .. nlp ..
				"While injured, whenever another Survivor within " .. clror("#range") .. " of your location blinds the Killer by any means or stuns them using a " .. iconLink(ils.pallet) .. ", #pn triggers its effect:" ..
				list(b("Suppresses") .. " your " .. i("Grunts of Pain") .. ", and the creation of " .. iconLink(ils.poolsOfBlood) .. " and " .. iconLink(ils.scratchMarks) .. " for #pl(1).") ..
				quote("They're fucking with the wrong people.", "Rick Grimes")
	},
	["Conviction"] = {
		desc =
				quote("Sometimes one last push means the difference between death and survival.") .. nlp ..
				"After having completed a " .. i("Healing") .. " action on another Survivor, whenever you are in the " .. iconLink(ils.dyingState) .. ", #pn activates." .. br ..
				"While active, press the " .. loadoutStrings.activeAbilityButton .. " after reaching at least " .. clror("#recovery") .. " Recovery progress to trigger the following effects:" ..
				list(
					"Unlocks the " .. i("Self-Recovery") .. " ability, allowing you to fully recover from the " .. i("Dying State") .. dot,
					nbullet .. "Inflicts the " .. effects("perk", "Conviction", ils.broken) .. dot,
					nbullet .. "Causes you to automatically re-enter the " .. i("Dying State") .. " after #pl(1).") ..
				quote("It's enough to keep going. Keep trying. Keep fighting. Keep dreaming.", "Michonne Grimes")
	},
	["Last Stand"] = {
		desc =
				quote("Even when things are at their worst, your spirit is indomitable.") .. nlp ..
				"After staying in the " .. iconLink(ils.terrorRadius) .. " without being chased for #pl(1), #pn activates." .. br ..
				"While active, perform a " .. i("Rushed Vault") .. " action to trigger its effect:" ..
				list(b("Stuns") .. " the Killer for " .. clror("#stun") .. ", if they are within " .. clro("#range") .. " of that Vault location.") ..
				"#pn is disabled for the remainder of the Trial after use." .. nlp ..
				quote("Some bullies, you can live with. Others, you gotta fight.", "Michonne Grimes")
	},
	["Teamwork: Throw Down"] = {
		desc =
				quote("You know the best way to even the odds is to empower those around you.") .. nlp ..
				"Whenever you blind the Killer by any means or stun them using a " .. iconLink(ils.pallet) .. ", #pn triggers its effect:" ..
				list("Grants the " .. effects("perk", "Teamwork: Throw Down", ils.endurance) .. " to all other injured Survivors within " .. clror("#range") .. " of your location for #pl(1).") ..
				quote("Facing evil brings good people together.", "Michonne Grimes")
	},
	["Ravenous"] = {
		desc =
				quote("The scent of blood is in the air." .. br .. "Time to feast.") .. nlp ..
				"Whenever you hook a Survivor for the first time, #pn gains " .. clror("#tokens(1)") .. ", up to a maximum of " .. clro("#tokens(2)") .. dot .. br ..
				"For each Token:" .. 
				list("Grants " .. clror("#effect") .. space .. effects("perk", "Ravenous", ils.haste) .. " while carrying a Survivor" .. dot,
					b("Increases") .. " your hooking speed by " .. clro("#effect") .. dot) ..
                "Once you accumulate " .. clro("#tokens(2)") .. ", all Survivors suffer from the following effects:" ..
                list(
                	"Causes them to scream.",
                	"Inflicts the " .. effects("perk", "Ravenous", ils.exposed) .. " for #pl(1).") ..
				quote("Weeping Ginevra's blood streams/The devil smells the weak.", "Fabbro Barone's " .. '"' .. "Ginevra" .. '"')
	},
	["Wandering Eye"] = {
		desc =
				quote("Bloodied prey surrounds you, vying for your attention.") .. nlp ..
				"Whenever you start chasing a Survivor, #pn triggers the following effect:" ..
                list("The " .. iconLink(ils.auras) .. " of all other injured Survivors within " .. clror("#auras(1)") .. " of your location are revealed to you for " .. clro("#auras(2)") .. dot) ..
                "#pn has a cool-down of #pl(1)." .. nlp ..
				quote("A drop does not satiate/when a river is needed.", "Elliot Campbell's " .. '"' .. "Grandeur of Samuel" .. '"')
	},
	["Hex: Overture of Doom"] = {
		desc =
				quote("A hex that plays on the paranoia of others.") .. nlp ..
				"Creates a " .. b("Hex Totem") .. " that curses the farthest " .. iconLink(ils.generator) .. " from its location:" ..
				list("The " .. iconLink(ils.aura) .. " of the " .. i("Cursed Generator") .. " is highlighted in " .. bclr("yellow", "yellow") .. dot) ..
				"When a Survivor repairs the " .. i("Cursed Generator") .. " for at least " .. clror("#trigger") .. ", #pn triggers the following effects for #pl(1):" ..
				list(
					"Transfers your " .. iconLink(ils.terrorRadius) .. " to the " .. i("Cursed Generator") .. dot,
					nbullet .. "This " .. i("Terror Radius") .. " is set to " .. clro("#radius") .. dot,
					"Grants the " .. effects("perk", "Hex: Overture of Doom", ils.undetectable) .. dot) ..
				"Once the " .. i("Cursed Generator") .. " is repaired, the next farthest " .. b("Generator") .. " becomes cursed." .. br ..
				loadoutStrings.hexPerkFooter .. nlp ..
				quote("From salvation's ruin, be warned/death comes from all around.", "Giovanni Serrata's " .. '"' .. "Fog Hill" .. '"')
	},
	["Road Life"] = {
		desc =
				quote("Faulty amps, sweaty dives, broken-down vans... nothing makes you feel more alive.") .. nlp ..
				"While injured and repairing a " .. iconLink(ils.generator) .. ", regular " .. iconLink(ils.skillChecks) .. " have the following effects:" ..
				list(
					"Gain " .. clror("#tokens(1)") .. " for " .. i("Great Repair Skill Checks") .. dot,
					"Gain " .. clro("#tokens(2)") .. " for " .. i("Good Repair Skill Checks") .. dot,
					"Lose " .. clro("#tokens(3)") ..  " for " .. i("Failed Repair Skill Checks") .. dot) ..
				"Once you accumulate #pl(1), consume all Tokens to benefit from the following effect:" ..
				list("Unlocks the ability to heal yourself",
					b("Increases") .. " your Self-Healing speed by " .. clro("#healing") .. " until you stop healing and for " .. clro("#duration") .. " after" .. dot) .. 
				quote("Remind me to teach you how to patch your own pedals, Krit.", "Vee Boonyasak")
	},
	["One-Two-Three-Four!"] = {
		desc =
				quote("A steady beat makes for steady work.") .. nlp ..
				"While standing and idle, press the " .. loadoutStrings.activeAbilityButton .. " to start a " .. i("Performance") .. colon .. 
				list(
					"Lasts for up to " .. clror("#performance(1)") .. dot,
					"Empowers Survivors within " .. clro("#performance(2)") .. " of your location.",
					"Triggers continuous " .. iconLink(ils.skillChecks) .. dot) ..
				"After successfully completing the " .. i("Performance") .. ", empowered Survivors performing Healing or Repairing actions benefit from the following effect for " .. clro("#performance(3)") .. colon ..
				list(b("Increases") .. " the chances of triggering " .. i("Skill Checks") .. " by " .. clro("#bonus") .. dot) ..
				"#pn has a cool-down of #pl(1) after cancelling or completing the " .. i("Performance") .. dot .. nlp ..
				quote("We are loud! We are heavy! WE ARE AXEKICK!", "Vee Boonyasak")
	},
	["Ghost Notes"] = {
		desc =
				quote("You know that the best breakdowns precede the biggest build-ups.") .. nlp ..
				"While suffering from the " .. effects("perk", "Ghost Notes", ils.exhausted) .. ", you benefit from the following effects:" .. 
				list(
					"Causes your " .. iconLink(ils.scratchMarks) .. " to disappear " .. clror("#effect") .. " faster.",
					b("Increases") .. " your Recovery rate from that " .. b("Status Effect") .. " by #pl(1).") ..
				loadoutStrings.exhaustionPerkNoTrigger .. nlp ..
				quote("Let's take it to the bridge!", "Vee Boonyasak")
	},
    ["Turn Back the Clock"] = {
        desc =
                quote("Resist as they might, time marches on, and your master plan comes closer to fruition.") .. nlp ..
                "After hooking a Survivor, for #pl(1), press the " .. loadoutStrings.activeAbilityButton .. " to make a target generator within " .. bclr("orange", "20 meters") .. " explode, lose " .. clror("#penalty") .. " progress, and start regressing." .. nlp ..
                quote("Nothing will happen to you... Nothing that you don't deserve!", "Henry Creel")
    },
    ["Secret Project"] = {
        desc =
                quote("Raised to be weapon, you broke free with the very skills your captors honed within you.") .. nlp ..
                "Whenever a " .. iconLink(ils.totem) .. " is blessed or cleansed, a random unblocked generator becomes " .. b("blocked")  .. " for  #pl(1)." .. nlp ..
                "Whenever any number of " .. iconLink(ils.generators) .. " become blocked, you gain " .. states(ils.undetectable) .. " for " .. bclr("orange", "30 seconds") .. dot .. nlp ..
                quote("You are a prisoner here, just like me", "Henry Creel")
    },
    ["Hex: Hive Mind"] = {
        desc =
                quote("You found yourself connected to something dark and unknowable... and you embraced it.") .. nlp ..
                "The first time you hook any " .. iconLink(ils.survivor) .. ", a random " .. iconLink(ils.dullTotem) .. " becomes a " .. iconLink(ils.hexTotem) .. ", provided that a " .. iconLink(ils.dullTotem) .. " remains in the Trial Grounds." .. nlp ..
                iconLink(ils.generators) .. " are highlighted; the intensity of the generator's " .. iconLink(ils.auras) .. " reveals their repair progress."  .. nlp ..
                "As soon as a total of " .. b("4") .. " generators have been completed in the Trial:" ..
                list(
                    "All remaining generators explode, lose #pl(1) progess, and start " .. b("regressing") .. dot,
                    "The associated " .. iconLink(ils.hexTotem) .. " becomes dull, and this perk becomes disabled for the remainder of the trial."
                ) ..
                loadoutStrings.hexPerkFooter .. nlp ..
                quote("You... let us in. And now, you are going to have to let us stay", "Henry Creel")
    },
    ["Bada Bada Boom"] = {
        desc =
                quote("You may not be a fighter, but you have clever ways of striking back.") .. nlp ..
                "After completing " .. clror("20 %") .. " worth of " .. iconLink(ils.generator) .. " repairs, #pn activates:" .. nlp ..
                "While active, press " .. loadoutStrings.activeAbilityButton .. " next to a window to install a Trap, which stays active for up to #pl(1)." .. nlp ..
                "The Trap tiggers when the " .. iconLink(ils.killer) .. " performs a vault through the window, causing the " .. b("Killer") .. " to suffer from a " .. clro("#hindered") .. space .. effects("perk", "Bada Bada Boom", ils.hindered) .. " for " .. clro("#durationHindered") .. dot .. nlp ..
                "#pn deactives after triggering successfully or once the timer runs out." .. nlp ..
				"The " .. iconLink(ils.auras) .. " of " .. i("Trapped Windows") .. " are revealed to all Survivors in " .. bclr("yellow", "yellow") .. dot .. nlp ..
                quote("Never tell me the odds.", "Dustin Henderson")
    },
    ["Change of Plan"] = {
        desc =
                quote("Rather than give in to danger, you recalculate and adjust your strategy.") .. nlp ..
                "You start the Trial with " .. clror("#tokens(1)") .. dot .. nlp ..
                "While hiding inside a " .. iconLink(ils.locker) .. " and holding a non-event " .. iconLink(ils.toolbox) .. ", press " .. loadoutStrings.activeAbilityButton .. " to spend " .. clro("#tokens(2)") .. " and transform your " .. b("Toolbox") .. " into a " .. iconLink(ils.medKit) .. " of the same rarity with a random add-on of the same rarity." .. nlp ..
                "The new Med-kit has #pl(1) of its charges." .. nlp ..
                quote("Oh my god, oh my god, oh my god, oh my god.", "Dustin Henderson")

    },
    ["Teamwork: Full Circuit"] = {
        desc =
                quote("You've dabbled with mechanical engineering and show off your abilities to others.") .. nlp ..
                "For each Survivor repairing a generator with you, the size of the good Skill Check zone is increased by #pl(1)." .. nlp ..
                "While repairing with at least 1 other " .. iconLink(ils.survivor) .. ", you repair " .. clro("#repairSpeed") .. " faster." .. nlp ..
                quote("How many times do I have to be right on the money before you guys just trust me?", "Dustin Henderson")
    },
	["Extrasensory Perception"] = {
		desc =
				quote("By slowing down and focusing, you can sense both ally and enemy.") .. nlp ..
				"Crouch for " .. clror("#activationTime") .. " to activate this perk. While active:" ..
                list(
                    "You see the " .. iconLink(ils.auras) .. " of " .. iconLink(ils.survivors) .. ", the " .. iconLink(ils.killer) .. ", and a variety of objects. These are revealed in an expanding " .. clro("#maxRange") .. " radius." .. dot,
                    nbullet .. "Revealed objects include " .. iconLink(ils.chests) .. ", " .. iconLink(ils.exitGate) .. ", " .. iconLink(ils.generators) .. ", " .. iconLink(ils.hatch) .. ", " .. iconLink(ils.items) .. ", " .. iconLink(ils.pallets) .. ", " .. iconLink(ils.totems) ..", and " .. iconLink(ils.windows) .. dot,
                    "You gain " .. effects("perk", "Extrasensory Perception", ils.elusive, ils.oblivious)
                ) ..
                "When you stop crouching, or after " .. clro("#maxDuration") .. ", all effects of this perk end and it enters a #pl(1) cool-down." .. nlp ..
				quote("What is friend?", "Eleven")
	},
	["Teamwork: Soft-Spoken"] = {
		desc =
				quote("You look out for your friends, using your abilities to protect them.") .. nlp ..
				"For each other " .. iconLink(ils.survivor) .. " repairing a " .. iconLink(ils.generator) .. " with you, the range at which the " .. b("Generator") .. "'s repair noise is heard is reduced by #pl(1)." ..  nlp ..
				"While repairing with at least 1 other " .. iconLink(ils.survivor) .. ", you repair " .. clror("#repairSpeed") .. " faster." .. nlp ..
				quote("I make my own rules.", "Eleven")
	},
	["We See You"] = {
		desc =
				quote("You've honed your powers and can turn the tables on those who try to find you.") .. nlp ..
				"Gain a token when the " .. iconLink(ils.killer) .. " reveals your " .. iconLink(ils.aura) .. dot ..  nlp ..
				"When you have " .. clror("#maxTokens") .. ", they are all consumed, and the " .. iconLink(ils.killer) .. "'s aura is revealed to you and all other Survivors for #pl(1)." .. nlp ..
				"This perk has a " .. clro("#tokenCooldown") .. " cool-down when gaining a token" .. dot .. nlp ..
				quote("It is not me. It is you. You are the monster.", "Eleven")
	},
    ["Flow State"] = {
    	desc =
    	       "Whenever a " .. iconLink(ils.generator) ..  " is completed, gain a token, up to " .. clror("5") .. dot .. nlp .. 
    	       "For each token:" ..
    	       list(
    	       "Bless and cleanse " .. iconLink(ils.totems) .. " #pl(1) faster" .. dot,
    	       "Heal #pl(1) faster" .. dot,
    	       "Unhook Survivors #pl(1) faster" .. dot) .. nlp ..
    	       quote("I’m sorry… I didn’t realize I was working so late.", "Kwon Tae-young")
    },
    ["A Place For Us"] = {
    	desc =
    	       "While healing an another Survivor, both you and the healed Survivor gain " .. effects("perk", "A Place For Us", ils.elusive) .. dot .. nlp .. 
    	       "When you finish healing the " .. ibil(ils.obsession) .. ", both you and the " .. b("Obsession") .. " gain " .. effects("perk", "A Place For Us", ils.elusive) .. " for #pl(1)." .. nlp ..
    	       loadoutStrings.obsessionChanceMinus .. br .. loadoutStrings.obsessionPerkSurvivor .. nlp ..
    	       quote("I understand computers… systems. Problems. But this… I wonder if I’ll ever understand.", "Kwon Tae-young")
    },
    ["Five Moves Ahead"] = {
    	desc =
    	       "This perk activates while you are being chased by the Killer or are inside the Killer's " .. iconLink(ils.terrorRadius) .. ":" .. nlp .. 
    	       list(
    	       	"After you drop a " .. iconLink(ils.pallet) .. ", you start moving " .. clror("#palletDropSpeedBonus") .. " earlier" .. dot,
    	       	"See the auras of the " .. clro("#auraMaxAmount") .. " closest " .. b("Pallets") .. dot) ..
    	       "This perk goes on a #pl(1) cool-down when you drop a Pallet while this perk is activated." .. nlp ..
    	       quote("Every problem has a solution. It’s only a question of complexity.", "Kwon Tae-young")
    },
    -- K43 - The Slasher --
    ["Hex: Scared to Death"] = {
    	desc =
    	       "When you Hook " .. clror("3") .. " different Survivors, #pn activates on a random Dull " .. iconLink(ils.totem) .. " and triggers its effect: " .. nlp ..
    	       list(
    	       	"Basic-breaking a " .. iconLink(ils.pallet) .. " during a chase causes all Survivors within " .. clro("#range") .. " to scream and gain #pl(1) " .. effects("perk", "Hex: Scared to Death", ils.hindered) .. " for " .. clro("#hindered") .. dot) ..
    	       loadoutStrings.hexPerkFooter .. nlp ..
    	       quote("There was a scream from the forest. Like someone was attacking her.", "Mount Ormond Missing Person Report")
    },
    ["Silent Shadow"] = {
    	desc =
    	       "When you hook a Survivor, you are granted " .. effects("perk", "Silent Shadow", ils.undetectable) .. " for #pl(1)" .. dot .. nlp ..
    	       "When the " .. iconLink(ils.exitGates) .. " are powered, you are granted " .. iconLink(ils.undetectable) .. " for the rest of the Trial." .. nlp ..
    	       quote("Did you see him or not? I can't put out an APB for a bad feeling.", "Sgt. Reyes, Greenville Police")
    },
    ["Rampage"] = {
    	desc =
    	       "Whenever you basic-break a " .. iconLink(ils.pallet) .." or a " .. iconLink(ils.breakableWall) .. ", gain a token, up to " .. clror("#maxTokenAmount") .. dot .. nlp ..
    	       list("Whenever you are blinded or Pallet-stunned, you are granted " .. clro("#effect") .. space .. effects("perk", "Rampage", ils.haste) .. " for each Token this perk has for " .. clro("#haste") .. dot) .. nlp ..
    	       "This perk has a cool-down of #pl(1) after being blinded or Pallet-stunned while this perk has at least " .. clro("1") .. " token" .. dot .. nlp ..
    	       quote("Signs of a pursuit led deep into the woods where the victim's body was found.", "Port Henly Herald")
    },
    -- S53 - Shane Wiigwaas --
    ["Wide Open Throttle"] = {
    	desc =
    	       "Fast-vaulting a " .. iconLink(ils.pallet) .. " triggers the following effects:" .. nlp ..
    	       list("Gain #pl(1) " .. effects("perk", "Wide Open Throttle", ils.haste) .. " for " .. clror("#haste") .. dot,
    	       	"The " .. b("Pallet") .. " is immediately reset, blocked by the Entity and revealed to all Survivors for " .. clro("#duration") .. dot) .. nlp ..
    	       "This perk then goes on a " .. clro("#cooldown") .. " cool-down" .. dot .. nlp ..
    	       quote("Nothing but the open road. Just the way I like it.", "Shane Wiigwaas")
    },
    ["Lend a Hand"] = {
        desc =
               "Cleansing or Blessing a " .. iconLink(ils.totem) .. " activates this perk:" .. nlp ..
               list("Once per Survivor, while healing a Survivor, press " ..  i("Activate Ability 2") .. " to give the healed Survivor #pl(1) permanent healing charges" .. dot) .. nlp ..
               quote("Walk it off, will you? We still have work to do.", "Shane Wiigwaas")
    },
    ["Cross-Examination"] = {
    	desc =
    	       "While inside the Killer's " .. iconLink(ils.terrorRadius) .. " and not being chased, you can see " .. b("Light Marks") .. " the Killer leaves behind while moving" .. dot .. space .. b("Light Marks") .. " have a duration of " .. clror("#lightMarkDuration") .. dot .. nlp ..
    	       list("While standing on a " .. b("Light Mark") .. ", gain " .. effects("perk", "Cross-Examination", ils.elusive) .. dot .. space .. "This lingers for #pl(1)" .. dot) .. nlp ..
    	       quote("The witness has said enough, Your Honor. No further questions.", "Shane Wiigwaas")
    },
    -- K044 - The Judgment --
    ["Hex: Under Your Thumb"] = {
    	desc =
    	       "When a Survivor gains a Hook State, #pn activates on a random Dull " .. iconLink(ils.totem) .. ":" .. nlp ..
    	       list("Running Survivors cannot gain more than #pl(1) " .. iconLink(ils.haste) .. " at once" .. dot,
    	       	"Whenever a running Survivor within " .. clror("#range") .. " gains " .. b("Haste") .. ", the Survivor's location is revealed to you for " .. clro("#duration") .. dot) ..
    	       loadoutStrings.hexPerkFooter .. nlp ..
    	       quote("They will run, but Judgment will make the very ground they tread turn to ash and smoke.", "(Visions of Gerhardt, ch. 1)")
    },
    ["Celestial Witness"] = {
    	desc =
    	       "Every " .. clror("#cooldown") .. ", if the " .. iconLink(ils.obsession) .. " is " .. clro("#range") .. " away from you, you see their aura for #pl(1)" .. dot .. space .. "Otherwise, the farthest Survivor becomes the " .. b("Obsession") .. dot .. nlp ..
    	       quote("And so the heretics huddled, cowardly, in the night; but upon Judgment’s arrival, It saw them all, and punished them.", "(Witness to Koenrad, ch. 32)")
    },
    ["Lay Waste"] = {
    	desc =
    	       "Damaging a " .. iconLink(ils.generator) .. " makes it regress " .. clror("#effect") .. " faster for each Charge it has" .. dot .. nlp ..
    	       "This perk has a cool-down of #pl(1) after damaging a " .. b("Generator") .. dot .. nlp ..
    	       quote("They built hypercomputers and skyscrapers and quantum networks, but all of those things trembled and fell under the power of Judgment’s light.", "(Witness to Koenrad, ch. 8)")
    },
    -- S054 - Aurora Stardotter --
    ["Fruits of Your Labor"] = {
    	desc =
    	       "Whenever a " .. iconLink(ils.generator) .. " is completed, gain a token" .. dot .. nlp ..
    	       "Whenever you finish repairing a " .. b("Generator") .. ", for each token this perk has:" .. nlp ..
    	       list("Gain " .. clror("#haste") .. space .. effects("perk", "Fruits of Your Labor", ils.haste) .. " for " .. clro("#duration") .. dot,
    	       	"Gain #pl(1) healing progress" .. dot) .. nlp ..
    	       quote("And as the final brick was laid upon the walls of Stellanatis, the people rejoiced.", "(Kelglen’s Declaration, 9:9)")
    },
    ["Salvation's Cry"] = {
    	desc =
    	       "When the Killer starts chasing you:" .. nlp ..
    	       list("You see the auras of other Survivors for #pl(1)" .. dot,
    	       	"Survivors not being chased see your aura for " .. clror("#duration"),
    	       	"Survivors not being chased see the Killer's aura for " .. clror("#duration")) .. nlp ..
    	       quote("May you see as the stars see.", "(Auroran Blessing)")
    },
    ["Boon: Steadfast"] = {
    	desc =
    	       loadoutStrings.boonPerkTop .. nlp ..
    	       iconLink(ils.generators) .. " within this Boon's range:" ..
    	       list("Regress " .. clror("#effect") .. " slower" .. dot,
    	       	"Survivors repair them +#pl(1) faster" .. dot,
    	       	"Survivors see their auras while inside the Boon's range" .. dot) ..
    	       loadoutStrings.singleInstancePerk .. nlp ..
               loadoutStrings.boonPerkBottom .. nlp ..
               quote("That which thine hands deliver shall prosper, for thine hands are guided by faith.", "(Enlightenments, 2:10)")
    },
}


---------------------------------------------------    ██████╗  ██████╗ ██╗    ██╗███████╗██████╗ ███████╗    -----------------------------------------------------------
---------------------------------------------------    ██╔══██╗██╔═══██╗██║    ██║██╔════╝██╔══██╗██╔════╝    -----------------------------------------------------------
---------------------------------------------------    ██████╔╝██║   ██║██║ █╗ ██║█████╗  ██████╔╝███████╗    -----------------------------------------------------------
---------------------------------------------------    ██╔═══╝ ██║   ██║██║███╗██║██╔══╝  ██╔══██╗╚════██║    -----------------------------------------------------------
---------------------------------------------------    ██║     ╚██████╔╝╚███╔███╔╝███████╗██║  ██║███████║    -----------------------------------------------------------
---------------------------------------------------    ╚═╝      ╚═════╝  ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚══════╝    -----------------------------------------------------------

p.powerDescriptions = {
	["Bear Trap"] = { -- The Trapper
        desc =
        	pwrImg("Bear Trap") ..
            quote("A large foothold trap made of steel." .. br .. "Bear Traps are found lying around throughout the Trial Grounds, waiting to be picked up and set anywhere.") .. dbr ..
            
            b("SPECIAL TRAP: BEAR TRAP") .. br ..
            b("The Trapper") .. " starts the Trial with " .. clror(2) .. space .. b("Bear Traps") .. " equipped." .. br .. "Additionally, " .. clro(8) .. space .. b("Disarmed Bear Traps") .. " spawn in random locations throughout the environment." .. nlp ..
            "The " .. iconLink(ils.auras) .. " of " .. b("Bear Traps") .. " are revealed to " .. b("The Trapper") .. " at all times." .. dbr ..
            
            b("SPECIAL INTERACTION: COLLECTING TRAPS") .. br ..
            "Press the " .. loadoutStrings.interactionButton .. " while standing near or above a " .. b("Bear Trap") .. " to retrieve and collect it." .. br .. b("The Trapper") .. " may carry up to " .. clro(2) .. space .. b("Bear Traps") .. " at a time." .. dbr ..
            
            b("SPECIAL INTERACTION: SETTING TRAPS") .. img("Reset Bear Trap", "48px") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to set and arm a carried " .. b("Bear Trap") .. colon ..
            list(
            	"Grants a " .. clro("+7.5 %") .. space .. states(ils.haste) .. " for " .. clro("5 seconds") .. dot,
            	b("Armed Bear Traps") .. " trap and immobilise any Survivor stepping into them.",
            	nbullet .. "This will also injure healthy Survivors.",
            	nbullet .. i("Trapped Survivors") .. " can try to free themselves from it, which may take several attempts, or wait for another Survivor to rescue them.",
            	b("Armed Bear Traps") .. " also temporarily trap and immobilise " .. b("The Trapper") .. " stepping into them, until he frees his foot and resets it.",
            	nbullet .. "This will cause any carried Survivor to escape from his shoulder.") .. br ..
            
            b("SPECIAL INTERACTION: RESETTING TRAPS") .. img("Reset Bear Trap", "48px") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " while standing above a " .. b("Disarmed Bear Trap") .. " to reset and arm it." .. dbr ..
            
            b("SPECIAL INTERACTION: CATCHING SURVIVORS") .. img("Catching Survivors", "48px") .. br ..
            "Press the " .. loadoutStrings.interactionButton .. " while standing near a " .. i("Trapped Survivor") .. " to lift them out of the " .. b("Bear Trap") .. " and onto " .. b("The Trapper's") .. " shoulder, immediately allowing him to carry them."
    },
	["Wailing Bell"] = { -- The Wraith
        desc = 
            pwrImg("Wailing Bell") ..
            quote("A heavy cast iron bell imbued with ancient powers." .. br .. "Allows the user to enter and walk the Spirit World when rung.") .. dbr ..
            
            b("SPECIAL OBJECT: WAILING BELL") .. img("Wailing Bell", "48px") .. br .. 
            b("The Wraith") .. " starts the Trial in the " .. i("Cloaked State") .. ", which has the following effects:" ..
            list(
            	"Grants the " .. effects("power", "Wailing Bell", ils.undetectable) .. dot,
            	b("Increases") .. " his Movement speed to " .. clror("6 m/s") .. dot,
            	"Fully invisible to Survivors who are farther than " .. clro("20 metres") .. " away from him.",
            	"Partially invisible to Survivors who are within " .. clro("20 metres") .. " of him.",
            	"Fully transparent while stationary for a moment and for as long as he remains unmoving.",
            	b("Removes") .. " the ability to attack or interact with Survivors.",
            	nbullet .. b("The Wraith") .. " is still able to interact with Props.") ..
            "Ringing the " .. b("Wailing Bell") .. " can be heard by Survivors throughout the Trial within the following ranges:" ..
            list(
           	"The bell toll has a range of " .. clro("24 metres") .. dot,
           	"The accompanying *Wooosh* noise during the transition phase has a range of " .. clro("40 metres") .. dot) .. br ..
            
            b("SPECIAL ABILITY: CLOAK / UNCLOAK") .. img("Wailing Bell (cloaked)", "48px") .. br ..
            b("The Wraith") .. " must " .. i("Uncloak") .. " in order to attack and interact with Survivors." .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " at any time to ring the " .. b("Wailing Bell") .. " and " .. i("Uncloak") .. ", exiting the " .. i("Spirit World") .. colon ..
            list(b("Boosts") .. " his Movement speed to " .. clro("150 %") .. " for " .. clro("1 second") .. dot) ..
            b("The Wraith") .. " can " .. i("Cloak") .. " and re-enter the " .. i("Spirit World") .. " at any time by pressing and holding the " .. loadoutStrings.powerButton .. " again to ring the " .. b("Wailing Bell") .. dot
    },
    ["Chainsaw"] = { -- The Hillbilly
        desc =
        	pwrImg("Chainsaw") ..
            quote("A hulking and deadly Chainsaw of terrifying strength." .. br .. "Grinds through flesh, bone, and soul." .. br .. "Once revved up, it sends its user into a violent frenzy.") .. dbr ..
            
            b("SPECIAL WEAPON: CHAINSAW") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to charge the " .. i("Chainsaw") .. " and break into a " .. i("Chainsaw Sprint") .. colon ..
            list("Hitting Survivors with the " .. i("Chainsaw") .. " inflicts double damage.") .. br ..
            
            b("SPECIAL LOCOMOTION: CHAINSAW SPRINT") .. br ..
            "During a " .. i("Chainsaw Sprint") .. comma .. b("The Hillbilly") .. " benefits from the following effects:" .. 
            list(
            	b("Increases") .. " his Movement speed to " .. clror("10.12 m/s") .. dot,
            	b("Reduces") .. " his manoeuvrability.") .. br ..
            
            b("SPECIAL STATE: OVERDRIVE") .. br ..
            "Revving the " .. i("Chainsaw") .. " and sprinting with it automatically charges the " .. i("Overdrive Meter") .. dot .. br .. "It decharges whenever the " .. i("Chainsaw") .. " is not in use for a prolonged time." .. nlp ..
            "Once the meter is full, the " .. i("Chainsaw") .. " is enhanced and benefits from the following effects for " .. clro("20 seconds") .. colon ..
            list(
            	b("Increases") .. " the Movement speed of the " .. i("Chainsaw Sprint") .. " to " .. clro("12 m/s") .. dot,
            	b("Increases") .. " the Charge speed of the " .. i("Chainsaw") .. " by " .. clro("+5 %") .. dot,
            	b("Reduces") .. " the Cool-down time of the " .. i("Chainsaw") .. " by " .. clro("-10 %") .. dot)
    },
    ["Spencer's Last Breath"] = { -- The Nurse
        desc =
        	pwrImg("Spencer's Last Breath") ..
            quote("A powerful and violent last breath snatched from Crotus Prenn Asylum Warden Patrick Spencer." .. br .. "Channelling its energy allows The Nurse to pierce and jump through the Spirit World in a blink multiple times in a row." .. br .. " Doing so leaves her in a state of fatigue.") .. dbr ..
            
            b("SPECIAL ABILITY: SPENCER'S LAST BREATH") .. br ..
            b("The Nurse") .. " starts the Trial with " .. clror("2 Tokens") .. dot .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to charge a " .. i("Blink") .. dot .. br .. "Release the " .. loadoutStrings.powerButton .. " to initiate a " .. i("Blink") .. dot .. nlp ..
            "Using " .. i("Spencer's Last Breath") .. " consumes " .. clro("-1 Token") .. " per " .. i("Blink / Chain Blink") .. dot .. dbr ..
            
            b("SPECIAL LOCOMOTION: BLINK") .. br ..
            "A " .. i("Blink") .. " allows " .. b("The Nurse") .. " to pierce the Realm of the Entity and teleport through obstacles and walls in a straight line:" ..
            list(
            	"Grants the ability to teleport for up to " .. clro("20 metres") .. dot,
            	nbullet .. b("The Nurse") .. " can adjust the Teleportation distance by aiming at any point closer to her.",
            	nbullet .. b("The Nurse") .. " can teleport to other floors by aiming at the ceiling or floor of a room that has another one above or below it.") .. br ..
            
            b("SPECIAL LOCOMOTION: CHAIN BLINK") .. br ..
            "After the first " .. i("Blink") .. ", if there is at least " .. clro("1 Token") .. " available, the " .. i("Chain Blink Window") .. " automatically opens for " .. clro("1.5 seconds") .. ", during which " .. b("The Nurse") .. " can initate a " .. i("Chain Blink") .. colon ..
            list(
            	"Grants the ability to teleport for up to " .. clro("12 metres") .. dot,
            	nbullet .. b("The Nurse") .. " can adjust the Teleportation distance by aiming at any point closer to her.",
            	nbullet .. b("The Nurse") .. " can teleport to other floors by aiming at the ceiling or floor of a room that has another one above or below it.") .. br ..
            
            b("SPECIAL STATE: FATIGUE") .. br ..
            "After either the " .. i("Chain Blink Window") .. " closes or the final " .. i("Chain Blink") .. " elapses, " .. b("The Nurse") .. " enters a state of " .. i("Fatigue") .. " for " .. clro("2 to 3 seconds") .. ", depending on how many " .. i("Blinks") .. " she chained."
    },
	["Evil Within"] = { -- The Shape
        desc =
        	pwrImg("Evil Within (Stalker Mode)", "Evil Within (Pursuer Mode)", "Evil Within (Evil Incarnate Mode)") ..  
            quote("The darkness inside feeds his determination to take the life of his prey.") .. dbr ..
            
            b("SPECIAL ABILITY: EVIL WITHIN") .. br ..
            b("The Shape") .. " can switch between " .. clror("#modes") .. space .. i("Modes") .. " of " .. i("Evil Within") .. dot .. br ..
            "Each " .. i("Mode") .. " has unique abilities and strengths." .. nlp ..
            
            b("SPECIAL MODE: STALKER MODE") .. img("Evil Within (Stalker Mode)", "48px") .. br ..
            "The default " .. i("Mode") .. " of " .. i("Evil Within") .. dot ..
            list(
            	"Slower Movement speed of " .. clro("#movementSpeed(1)") .. dot,
            	"Default Vaulting time of " .. clro("#vaulting(1)") .. dot,
            	"Grants the " .. effects("power", "Evil Within", ils.undetectable) .. dot,
            	"Grants access to the " .. i("Stalk") .. " ability.") ..
            "If the " .. i("Stalk Meter") .. " is " .. b("not") .. " full, press the " .. loadoutStrings.secondaryPowerButton .. " to switch to " .. i("Pursuer Mode") .. dot .. br ..
            i("Stalker Mode") .. " is unavailable while the " .. i("Stalk Meter") .. " is full." .. dbr ..
            
            b("SPECIAL MODE: PURSUER MODE") .. img("Evil Within (Pursuer Mode)", "48px") .. br ..
            "This " .. i("Mode") .. " provides " .. b("The Shape") .. " with the following effects:" ..
            list(
            	"Smaller " .. iconLink(ils.terrorRadius) .. " of " .. clro("#terrorRadius(1)") .. dot,
            	"Default Movement speed of " .. clro("#movementSpeed(2)") .. dot,
            	"Shorter Vaulting time of " .. clro("#vaulting(2)") .. dot,
            	b("Increases") .. " the following by " .. clro("#bonus") .. colon,
            	nbullet .. "Action speeds for the " .. i("Break or Damage") .. " action.",
            	nbullet .. "Recovery rate from " .. i("Stuns") .. dot,
            	nbullet .. "Maximum reach of the " .. i("Lunge") .. " attack.") ..
            "If the " .. i("Stalk Meter") .. " is " .. b("not") .. " full, press the " .. loadoutStrings.secondaryPowerButton .. " to switch to " .. i("Stalker Mode") .. dot .. br .. 
            "If the " .. i("Stalk Meter") .. " is full, press it to enter " .. i("Evil Incarnate Mode") .. " instead." .. dbr ..
            
            b("SPECIAL MODE: EVIL INCARNATE") .. img("Evil Within (Evil Incarnate Mode)", "48px") .. br ..
            "Once activated, this " .. i("Mode") .. " is active for " .. clro("#evilIncarnate") .. colon ..
            list(
            	"Default " .. i("Terror Radius") .. " of " .. clro("#terrorRadius(2)") .. dot,
            	"Default Movement speed of " .. clro("#movementSpeed(2)") .. dot,
            	"Shorter Vaulting time of " .. clro("#vaulting(2)") .. dot,
            	b("Increases") .. " the following by " .. clro("#bonus") .. colon,
            	nbullet .. "Action speeds for the " .. i("Break or Damage") .. " action.",
            	nbullet .. "Recovery rate from " .. i("Stuns") .. dot,
            	"Grants access to the " .. i("Slaughtering Strike") .. " ability.",
            	"Grants access to the " .. i("Kill") .. " interaction on select Survivors.") .. br ..
            
            b("SPECIAL ABILITY: STALKING") .. img("Evil Within (Stalking)", "48px") .. br ..
            "While in " .. i("Stalker Mode") .. ", press and hold the " .. loadoutStrings.powerButton .. " to access the " .. i("Stalking") .. " ability:" ..
            list(
            	b("Reduces") .. " the Walking speed to " .. clro("#stalking(1)") .. " of its default value" .. dot,
            	"Highlights the outline of Survivors within a range of " .. clro("#stalking(2)") .. " of " .. b("The Shape") .. " in " .. bclr("white", "white") .. dot,
            	"Drains " .. i("Evil") .. " from whichever highlighted Survivor is in closest proximity to " .. b("The Shape") .. " and fills the Power Gauge at a fixed rate, regardless of distance.",
            	"Moving while " .. i("Stalking") .. " at the same time incurs a Stalk-Rate penalty of " .. clro("#stalking(3)") .. dot) ..
            "If the Power Gauge is " .. b("not") .. " full, it will automatically begin depleting after " .. clro("#stalking(4)") .. " of not " .. i("Stalking") .. ", down to a limit of " .. clro("#stalking(5)") .. dot .. dbr ..
            
            b("SPECIAL ABILITY: SLAUGHTERING STRIKE") .. img("Evil Within (Strike)", "48px") .. br ..
            "While in " .. i("Evil Incarnate Mode") .. ", press and hold the " .. loadoutStrings.powerButton .. " to charge the " .. i("Slaughtering Strike") .. " attack." .. br ..
            "While charging, press the " .. loadoutStrings.attackButton .. " at any point to initiate the attack:" ..
            list(
            	b("Increases") .. " his Movement speed to " .. clro("#movementSpeed(3)") .. dot,
            	"Causes successful hits on Survivors to be lethal and apply double damage.",
            	"Grants the ability to break " .. iconLink(ils.breakableWalls) .. " and dropped " .. iconLink(ils.pallets) .. " using the attack.") ..
            i("Slaughtering Strike") .. " lasts for up to " .. clro("#strike(1)") .. ", depending on how long it was charged for, and has a cool-down of " .. clro("#strike(2)") .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: KILL") .. br ..
            "While in " .. i("Evil Incarnate Mode") .. ", tap the " .. loadoutStrings.attackButton .. " in close proximity to standing or downed Survivors that have accrued " .. clro("#hookStageCount") .. space .. i("Hook Stages") .. " to execute them, performing a " .. i("Memento Mori") .. dot
    },
	["Blackened Catalyst"] = { -- The Hag
        desc =
        	pwrImg("Blackened Catalyst") ..  
            quote("The source of The Hag's power: a blackened finger used as a catalyst for her terrible power." .. br .. "She bends and shapes mud to her will." .. br .. "With simple ritualistic drawings, she creates deceitful duplicates of herself, made from mud and decay, which she can use for various effects.") .. dbr ..
            
            b("SPECIAL ABILITY: BLACKENED CATALYST") .. br ..
            b("The Hag") .. " starts the Trial with " .. clror(10) .. space .. b("Phantasm Traps") .. " in her inventory." .. br ..
            "Placing additional " .. b("Phantasm Traps") .. " will recycle the oldest one." .. dbr ..
            
            b("SPECIAL TRAP: PHANTASM TRAP") .. br ..
            "Press the " .. loadoutStrings.powerButton .. " to bend down and draw a muddy sign into the ground, placing and arming a " .. b("Phantasm Trap") .. dot .. nlp ..
            "Survivors entering the " .. i("Area of Effect") .. ", which is only visible to " .. b("The Hag") .. ", will trip the trap, causing a " .. b("Mud Phantasm") .. " to spawn that has the following effects:" ..
            list(
            	"Yanks the camera of the Survivor who tripped the trap towards itself, disorienting them and keeps its sight trained on them.",
            	"Emits a " .. b("Fake") .. space .. iconLink(ils.terrorRadius) .. " of " .. clror("8 metres") .. dot) .. nlp ..
            "Survivors can prevent tripping the trap by doing either of the following:" ..
            list(
            	"Crouch while inside the " .. i("Area of Effect") .. dot,
            	"Interact with Props while inside the " .. i("Area of Effect") .. dot) .. nlp ..
            "Survivors can safely remove a trap by wiping it away for " .. clro("4 seconds") .. " when crouching above it." .. dbr ..
            
            b("SPECIAL LOCOMOTION: TELEPORT") .. img("Teleport", "48px") .. br .. 
            "Press the " .. loadoutStrings.secondaryPowerButton .. " to teleport to any currently tripped " .. b("Phantasm Trap") .. " within " .. clro("48 metres") .. ", taking the place of the " .. b("Mud Phantasm") .. dot .. br ..
            "In case of multiple tripped traps, a specific " .. b("Mud Phantasm") .. " can be chosen by aiming at it before teleporting."
    },
	["Carter's Spark"] = { -- The Doctor
        desc =
        	pwrImg("Carter's Spark") ..  
            quote("Is it a gift, or a curse?" .. br .. "The Entity has ignited a corrupted and inexhaustible spark in The Doctor's heart which allows him to generate electroconvulsive power at will." .. br .. "His insidious treatment corrupts the minds of those it touches." .. br .. "Victims shocked by the corrupt spark begin to lose their grip on reality and, with repeated exposure, inevitably succumb to madness.") .. dbr ..
            
            b("SPECIAL ABILITY: CARTER'S SPARK") .. br ..
            "Striking Survivors with his electro-convulsive abilities, " .. b("The Doctor") .. " causes them to suffer from the tiered " .. states(ils.madness) .. dot .. dbr ..
            
            b("SPECIAL AFFLICTION: MADNESS") .. br ..
            b(i("Madness")) .. " causes increasingly potent afflictions in the affected Survivors, depending on its current tier." .. nlp ..
            "Once " .. b(i("Madness")) .. " is obtained, Survivors are unable to lose it and may only reset it to " .. b("Tier I") .. " by performing the " .. i("Snap Out of It") .. " interaction." .. dbr ..
            
            b(i("Madness I")) .. " has the following permanent effects until a tier-up:" .. 
            list(
            	"Causes Survivors to scream and reveal their location during the tier-up.",
            	iconLink(ils.skillChecks) .. " have a chance of " .. clror("33 %") .. " to be " .. i(link("Madness Skill Checks")) .. dot) .. br ..
            
            b(i("Madness II")) .. " has the following permanent effects until a tier-up:" .. 
            list(
            	"Causes Survivors to scream and reveal their location during the tier-up.",
            	i("Skill Checks") .. " have a chance of " .. clro("66 %") .. " to be " .. i("Madness Skill Checks") .. dot,
            	"Causes Survivors to experience occasional Hallucinations in the form of " .. b(i("Illusionary Doctors")) .. dot) .. br ..
            
            b(i("Madness III")) .. " has the following permanent effects until Survivors " .. i("Snap Out of It") .. colon .. 
            list(
            	"Causes Survivors to scream and reveal their location during the tier-up and continue doing so intermittently every few seconds.",
            	i("Skill Checks") .. " are " .. clro("100 %") .. space .. i("Madness Skill Checks") .. dot,
            	"Causes Survivors to experience occasional Hallucinations in the form of " .. b(i("Illusionary Doctors")) .. dot,
            	nbullet .. "The " .. iconLink(ils.auras) .. " of " .. b(i("Illusionary Doctors")) .. " are revealed to " .. b("The Doctor") .. dot,
            	b("Suppresses") .. " the ability to use any equipped " .. iconLink(ils.item) .. dot,
            	b("Suppresses") .. " the ability to perform, or have performed on themselves, any interaction with a Progress bar.",
            	nbullet .. "Unhooking other Survivors is exempt from this restriction.") .. br ..
            
            b("SPECIAL INTERACTION: SNAP OUT OF IT") .. br ..
            "Survivors having reached " .. b(i("Madness III")) .. " can perform the " .. i("Snap Out of It") .. " interaction for " .. clro("12 seconds") .. colon ..
            list(
            	"Triggers " .. i("Madness Skill Checks") .. " at each quadrant of the Progress bar.",
            	"Succeeding them continues the interaction.",
            	"Failing them has the following repercussions:",
            	nbullet .. "Interrupts the action and resets its Progress to the previous quadrant.",
            	nbullet .. "Causes the Survivor to scream and reveal their location.",
            	"Completing the interaction resets " .. b(i("Madness")) .. " to " .. i("Tier I") .. dot) .. br ..
            
            b("SPECIAL ABILITY: SHOCK THERAPY") .. img("Shock Therapy Attack", "48px") .. br .. 
            "Press and hold the " .. loadoutStrings.powerButton .. " to perform a " .. i("Shock Therapy Attack") .. ", unleashing a cone-shaped ranged shock attack on the ground in front of " .. b("The Doctor") .. colon ..
            list(
            	b("Reduces") .. " his Movement speed to " .. clro("3.08 m/s") .. " while charging.",
            	i("Shock Therapy") .. " has a range of " .. clro("12 metres") .. " and detonates with a delay of " .. clro("0.65 seconds") .. dot) ..
            "Survivors struck with a " .. i("Shock Therapy Attack") .. " suffer from the following effects:" ..
            list(
            	b("Increases") .. " their " .. b(i("Madness")) .. " by " .. clro("+0.5 Tiers") .. dot,
            	"Causes them to scream, interrupting any on-going interactions at the moment of impact.",
            	b("Suppresses") .. " their ability to perform any further interactions, including with " .. iconLink(ils.pallets) .. " and " .. iconLink(ils.windows) .. " for " .. clro("2.5 seconds") .. dot) .. 
            "Survivors suffering from the " .. states(ils.oblivious) .. " when struck by " .. i("Shock Therapy") .. " have it removed immediately." .. dbr ..
            
            b("SPECIAL ABILITY: STATIC BLAST") .. br .. 
            "Press and hold the " .. loadoutStrings.secondaryPowerButton .. ", once the Power Gauge is full, to perform a " .. i("Static Blast Attack") .. ", unleashing a ranged shock attack that propagates outwards from " .. b("The Doctor") .. colon ..
            list(
            	b("Reduces") .. " his Movement speed to " .. clro("2.99 m/s") .. " while charging.",
            	i("Static Blast") .. " passes through any obstacles and covers his entire " .. iconLink(ils.terrorRadius) .. dot) ..
            "Survivors struck with a " .. i("Static Blast Attack") .. " suffer from the following effects:" ..
            list(
            	b("Increases") .. " their " .. b(i("Madness")) .. " by " .. clro("+1 Tier") .. dot,
            	"Causes them to scream, interrupting any on-going interactions at the moment of impact.") ..
            "Survivors can prevent being struck by " .. i("Static Blast") .. " by hiding inside a " .. iconLink(ils.locker) .. dot .. br ..
            "Survivors suffering from the " .. states(ils.oblivious) .. " when struck by " .. i("Static Blast") .. " have it removed immediately." .. nlp ..
            i("Static Blast") .. " has a variable cool-down:" .. 
            list(
            	clro("30 seconds") .. " while no Survivors are in its range.",
            	clro("45 seconds") .. " while at least one Survivor is in its range.")
    },
    ["Hunting Hatchets"] = { -- The Huntress
        desc =
        	pwrImg("Hunting Hatchets") ..  
            quote("A skill taught by her mother and mastered in the wild." .. br .. "The Huntress can throw hatchets with deadly precision.") .. dbr ..
            
            b("SPECIAL WEAPON: HUNTING HATCHETS") .. br ..
            b("The Huntress") .. " starts the Trial with " .. clror(7) .. space .. b("Hunting Hatchets") .. " equipped." .. nlp ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to wind up and charge a " .. b("Hunting Hatchet") .. dot .. br .. "Release the " .. loadoutStrings.powerButton .. " to throw the " .. b("Hunting Hatchet") .. " or press the " .. loadoutStrings.attackButton .. " to cancel the throw:" ..
            list(
            	"Releasing at minimum charge throws them at " .. clro("25 m/s") .. dot,
            	"Releasing at maximum charge throws them at " .. clro("40 m/s") .. dot) ..
            b("Hunting Hatchets") .. " can be replenished at " .. iconLink(ils.lockers) .. dot .. br .. "The " .. iconLink(ils.auras) .. " of " .. b("Hunting Hatchets") .. " inside " .. b("Lockers") .. " are automatically revealed to " .. b("The Huntress") .. " within " .. clro("36 metres") .. ", when she is out of them." 
    },
    ["Bubba's Chainsaw"] = { -- The Cannibal
        desc =
        	pwrImg("Bubba's Chainsaw", "Bubba's Chainsaw (Tantrum)") ..
            quote("An incredibly powerful and heavy Chainsaw which sank its teeth into countless victims." .. br .. "A suitable birthday gift for The Cannibal.") .. dbr ..
            
            b("SPECIAL WEAPON: BUBBA'S CHAINSAW") .. br ..
            b("The Cannibal") .. " starts the Trial with " .. clror("3 Tokens") .. dot .. br ..
            b("Tokens") .. " automatically recharge at a rate of " .. clro("0.25 c/s") .. " while the " .. i("Chainsaw") .. " is not in use." .. dbr ..
            
            b("SPECIAL ABILITY: CHAINSAW SWEEP") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to charge the " .. i("Chainsaw") .. " and break into a " .. i("Chainsaw Sweep") .. " for " .. clro("2.5 seconds") .. colon ..
            list(
            	b("Increases") .. " his Movement speed gradually to " .. clro("5.35 m/s") .. dot,
            	"Hitting Survivors with the " .. i("Chainsaw") .. " inflicts double damage.",
            	nbullet .. "The " .. i("Chainsaw") .. " can hit multiple targets in one sweep.") .. 
            "Using " .. i("Bubba's Chainsaw") .. " consumes " .. clro("1 Token") .. dot .. dbr ..
            
            b("SPECIAL ABILITY: CHAINSAW DASH") .. br ..
            "Press the " .. loadoutStrings.powerButton .. " again during an on-going " .. i("Chainsaw Sweep") .. " to chain a " .. i("Chainsaw Dash") .. colon ..
            list(
            	b("Resets") .. " the Power Gauge timer, extending the " .. i("Chainsaw Sweep") .. dot,
            	b("Increases") .. " the Cool-down time of the " .. i("Chainsaw") .. " by " .. clro("+1 second per consumed Token") .. dot) .. br ..
            
            b("SPECIAL STATE: TANTRUM") .. br ..
            "Revving the " .. i("Chainsaw") .. " fills the " .. i("Tantrum Meter") .. " by " .. clro("+33 % per second") .. ", with it discharging at the same rate when stopping to rev." .. br .. 
            "Once the meter is full, or after hitting an obstacle during a " .. i("Chainsaw Sweep") .. comma .. b("The Cannibal") .. " unleashes a " .. i("Tantrum") .. " for a minimum of " .. clro("3 seconds") .. ", wildly slashing out and damaging any Survivors in close proximity, dealing double damage:" ..
            list(
            	b("Extends") .. " the " .. i("Tantrum") .. " duration by " .. clro("+1 second per consumed Token") .. dot,
            	b("Removes") .. " any remaining Tokens.",
            	b("Reduces") .. " his Movement speed by " .. clro("-90 %") .. dot)
    },
    ["Dream Demon"] = { -- The Nightmare
        desc =
        	pwrImg("Dream Demon") ..
            quote("Death won't accept him and thus he remains, a calamity, indisputable master of his victims' nightmares.") .. dbr ..
            
            b("SPECIAL ABILITY: DREAM DEMON") .. br ..
            b("The Nightmare") .. " is cloaked from awake Survivors." .. br .. "While they can hear his " .. iconLink(ils.terrorRadius) .. ", he is not always visible to them:" ..
            list(
            	b("The Nightmare") .. " is invisible to Survivors farther than " .. clror("#invisibilityFar") .. " away.",
            	b("The Nightmare") .. " is intermittently visible to Survivors from " .. clro("#invisibilityIntermittent") .. " away.",
            	b("The Nightmare") .. " is fully visible to Survivors closer than " .. clro("#invisibilityNear") .. dot) .. br ..
            
            b("SPECIAL STATE: MICROSLEEP") .. br ..
            "The mere presence of " .. b("The Nightmare") .. " induces " .. i("Microsleep") .. " in awake Survivors, causing them to passively fall asleep over " .. clro("#microsleep") .. dot .. br ..
            "Survivors who woke up with an " .. b("Alarm Clock") .. " are protected from " .. i("Microsleep") .. " for " .. clro("#immunityMicrosleep") .. dot .. dbr ..
            
            b("SPECIAL STATE: ASLEEP") .. br ..
            "Survivors who fall asleep automatically enter the " .. i("Dream World") .. " and suffer from the following effects while inside it:" ..
            list(
            	"Changes the penalty of interacting with " .. b("Dream Traps") .. dot,
            	"Triggers " .. i(link("Killer Instinct")) .. " while performing a Healing action or while an " .. i("Awake Survivor") .. " is performing one on them.",
            	"Causes them to suffer from the " .. effects("power", "Dream Demon", ils.oblivious) .. dot,
            	nbullet .. "Causes them to hear a non-directional " .. i("Lullaby") .. " instead.") .. 
            "Hitting Survivors with a " .. i("Basic Attack") .. " immediately pulls them into the " .. i("Dream World") .. ", unless they are protected by the temporary " .. i("Sleep Immunity") .. " granted by an " .. b("Alarm Clock") .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: WAKING UP") .. br ..
            "Survivors have several ways to wake up and leave the " .. i("Dream World") .. colon ..
            list(
            	"Failing a " .. i("Skill Check") .. dot,
            	"Having an " .. i("Awake Survivor") .. " perform the " .. i("Wake Up") .. " interaction on them for " .. clro("#wakeUp") .. dot,
            	"Interacting with an " .. iconLink("Alarm Clock") .. " for " .. clro("#alarmClockInteraction") .. dot,
            	"Entering the " .. i("Dying State") .. " by any means.") .. br ..
            
            b("SPECIAL ABILITIES: DREAM TRAPS") .. br ..
            b("The Nightmare") .. " has access to " .. clro("#dreamTraps") .. " types of " .. b("Dream Traps") .. colon .. b("Dream Snares and Dream Pallets") .. dot .. br ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " to switch between the two." .. dbr ..
            
            b("SPECIAL TRAP: DREAM SNARES") .. img("Dream Snare", "48px") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to charge a " .. b("Dream Snare") .. " over " .. clro("#dreamSnareChargeTime") .. dot .. br ..
            "While charged, press the " .. loadoutStrings.attackButton .. " to launch the " .. b("Dream Snare") .. " forwards:" ..
            list(
            	b("Reduces") .. " his Movement speed to " .. clro("#castingDreamSnares") .. dot,
            	"Moves at a speed of " .. clro("#dreamSnareSpeed") .. dot,
            	"Has a maximum range of " .. clro("#dreamSnareRange") .. dot,
            	"Can go through walls and follow slopes, but does not go off ledges.") .. 
            "When a " .. b("Dream Snare") .. " collides with a Survivor, it inflicts either of the following effects, depending on their state:" ..
            list(
            	bclr("faded jade", "Awake") .. colon .. space .. b("Advances") .. " their " .. i("Microsleep") .. " timer by " .. clro("#dreamSnarePenalty") .. dot,
            	bclr("faded jade", "Asleep") .. colon .. space .. "Causes them to suffer from a " .. clro("#hindered") .. effects("power", "Dream Demon", ils.hindered) .. " for " .. clro("#durationHindered") .. " and while hindered, " .. b("suppress") .. " the ability to perform " .. i("Fast Vaults") .. dot) ..
            b("Dream Snares") .. " have a cool-down of " .. clro("#dreamSnareCooldown") .. dot .. dbr ..
            
            b("SPECIAL TRAP: DREAM PALLETS") .. img("Dream Pallet", "48px") .. img("Rupture", "48px") .. br ..
            b("The Nightmare") .. " can create up to " .. clro("#dreamPallets") .. space .. b("Dream Pallets") .. "  at a time." .. nlp ..
            "Press the " .. loadoutStrings.powerButton .. " to enter " .. i("Pallet Focus Mode") .. dot .. br ..
            "While in this mode, press the " .. loadoutStrings.attackButton .. " to spawn a " .. b("Dream Pallet") .. " at any valid location within " .. clro("#dreamPalletRange") .. br ..
            "Press the " .. loadoutStrings.attackButton .. " while targetting any " .. b("Dream Pallet") .. " within that same range to " .. i("Rupture") .. " it:" ..
            list(
            	"Has a delay of " .. clro("#dreamPalletDelay") .. dot,
            	"Has an " .. i("Area of Effect") .. " of " .. clro("#dreamPalletAOE") .. dot) .. 
            "When a " .. b("Dream Pallet") .. " ruptures while a Survivor is inside its " .. i("Area of Effect") .. ", it inflicts either of the following effects, depending on their state:" ..
            list(
            	bclr("faded jade", "Awake") .. colon .. space .. b("Advances") .. " their " .. i("Microsleep") .. " timer by " .. clro("#dreamPalletPenalty") .. dot,
            	bclr("faded jade", "Asleep") .. colon .. space .. "Inflicts damage.") ..
            b("Dream Pallets") .. " have a cool-down of " .. clro("#dreamPalletCooldown") .. dot .. nlp ..
            "Survivors can drop a " .. b("Dream Pallet") .. " and attempt to stun " .. b("The Nightmare") .. ", if it is not in the process of rupturing." .. br ..
            "Dropping a " .. b("Dream Pallet") .. " instantly destroys it, causing it to explode in blood." .. dbr ..
            
            b("SPECIAL LOCOMOTION: DREAM PROJECTION") .. img("Dream Projection", "48px") .. br ..
            b("The Nightmare") .. " can teleport to any " .. b("Generator") .. " in the environment at any time, regardless of its state, as well as to within " .. clro("#dreamProjectionRange") .. " of any " .. i("Asleep Survivors") .. " involved in a Healing action." .. nlp ..
            "Once the Power Gauge is full, press and hold the " .. loadoutStrings.secondaryPowerButton .. " for at least " .. clro("#dreamProjectionThreshold") .. " to perform a " .. i("Dream Projection") .. dot .. br ..
            "Release it prematurely to cancel the interaction, which incurs the full cool-down:" .. 
            list(
            	"Reveals the " .. iconLink(ils.aura) .. " of the " .. i("Husk") .. " at the target location.",
            	b("Reduces") .. " his Movement speed to " .. clro("#castingDreamProjection") .. dot,
            	"Takes " .. clro("#dreamProjectionDuration") .. " to complete.") ..
            "Upon completion, it inflicts either of the following effects on all Survivors within " .. clro("#dreamProjectionAOE") .. colon ..
            list(
            	bclr("faded jade", "Awake") .. colon .. space .. b("Advances") .. " their " .. i("Microsleep") .. " timer by " .. clro("#dreamProjectionPenalty") .. dot,
            	bclr("faded jade", "Awake or Asleep") .. colon .. space .. "Triggers " .. i("Killer Instinct") .. " for " .. clro("#killerInstinct") .. dot) ..
            i("Dream Projection") .. " has a cool-down of " .. clro("#dreamProjectionCooldown") .. ", which is " .. b("reduced") .. " by a stack-able " .. clro("#dreamProjectionBonus") .. " for each " .. i("Asleep Survivor") .. ", up to a maximum of " .. clro("#dreamProjectionMaxBonus") .. dot .. nlp ..
			quote("You have nothing to worry about. This won't hurt one... little... bit.", "Freddy Krueger")
    },
    ["Jigsaw's Baptism"] = { -- The Pig
        desc =
        	pwrImg("Jigsaw's Baptism") ..
            quote("Forever devoted to her master's cause, she punished the ungrateful and the guilty with slyness and murderous puzzles." .. br .. "The Pig can move stealthily, dash in Ambush attacks and put deadly Reverse Bear Traps on Survivors' heads.") .. dbr ..
            
            b("SPECIAL ABILITY: JIGSAW'S BAPTISM") .. br ..
            b("The Pig") .. " starts the Trial with " .. clror(4) .. space .. b("Reverse Bear Traps") .. " equipped, which cannot be replenished once used." .. br .. "Additionally, " .. clro(5) .. space .. b("Jigsaw Boxes") .. " spawn in random locations in the environment." .. dbr ..
            
            b("SPECIAL LOCOMOTION: CROUCHING") .. br ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " to transition into the " .. i("Crouched State") .. colon ..
            list(
            	"Grants the " .. states(ils.undetectable) .. dot,
            	b("Reduces") .. " her Movement speed to " .. clro("4.0 m/s") .. dot) ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " again to transition out of the " .. i("Crouched State") .. dot .. dbr ..
            
            b("SPECIAL ABILITY: AMBUSH DASH") .. br ..
            "Press and hold the " .. loadoutStrings.attackButton .. " while in the " .. i("Crouched State") .. " to charge and perform an " .. i("Ambush Dash Attack") .. dot .. colon ..
            list(
            	b("Increases") .. " her Movement speed to " .. clro("7.1 m/s") .. " for " .. clro("2.3 seconds") .. " while attacking.",
            	"Causes " .. b("The Pig") .. " to automatically exit the " .. i("Crouched State") .. dot) .. br ..
            
            b("SPECIAL TRAP: REVERSE BEAR TRAPS") .. img("Reverse Bear Trap", "48px") .. br ..
            "Press the " .. loadoutStrings.powerButton .. " while standing above a downed Survivor to attach an unarmed " .. bclr("white", "Inactive Reverse Bear Trap") .. " to their head." .. nlp ..
            "Whenever a " .. iconLink(ils.generator) .. " is completed, all currently " .. bclr("white", "Inactive Reverse Bear Traps") .. " are activated." .. nlp ..
            bclr("bright red", "Active Reverse Bear Traps") .. " are armed and on a " .. i("Death Timer") .. " of " .. clro("150 seconds") .. ", which is displayed on the Survivor's Status icon." .. nlp ..
            "Once the " .. i("Death Timer") .. " elapses, the trap snaps open and kills the " .. i("Trapped Survivor") .. dot .. br .. 
            "The " .. i("Death Timer") .. " is paused whenever that Survivor is downed, hooked, or actively being chased by " .. b("The Pig") .. dot .. nlp ..
            i("Trapped Survivors") .. " may only leave the Trial normally if their trap is " .. bclr("white", "inactive") .. dot .. br .. "Attempting to leave through the " .. iconLink(ils.exitGates) .. " with an " .. bclr("bright red", "active") .. " trap will trigger the kill mechanism and execute the Survivor halfway into the exit area." .. br .. "They may still leave through the " .. iconLink(ils.hatch) .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: JIGSAW BOXES") .. img("Jigsaw Box", "48px") .. br ..
            "Survivors can remove a " .. b("Reverse Bear Trap") .. " by interacting with a " .. iconLink("Jigsaw Box") .. " and finding a key." .. br ..
            "The " .. iconLink(ils.auras) .. " of all unsearched " .. b("Jigsaw Boxes") .. " are revealed to " .. i("Trapped Survivors") .. " at all times." .. nlp ..
            i("Trapped Survivors") .. " must randomly search between " .. clro("1 to 4") .. space .. b("Jigsaw Boxes") .. colon ..
            list(
            	"Succeeding the search will remove and discard the " .. b("Reverse Bear Trap") .. dot,
            	"Failing the search will cause the Jigsaw Puppet " .. i("Billy") .. " to cackle at the unfortunate Survivor and hide the " .. i("Aura") .. " of the " .. b("Jigsaw Box") .. dot) .. 
            b("Jigsaw Boxes") .. " have a shared pool of " .. clro(12) .. " searches per Trial." .. nlp ..
            quote("You will give everything to me, every cell in your body." .. br .. "The marks on your arms, they're from another life." .. br .. "We'll leave that life behind." .. br .. "When you walk down that corridor there is no turning back." .. br .. "Do you understand that?", "Jigsaw's Baptism")
    },
    ["The Afterpiece Tonic"] = { -- The Clown
        desc =
        	pwrImg("The Afterpiece Tonic", "The Afterpiece Antidote") ..
            quote("Throughout his years experimenting with anaesthetics and muscle relaxants, The Clown developed several effective concoctions and formulas." .. br .. "His favourite, The Afterpiece Tonic, he has used to great effect, intoxicating and capturing many unwilling victims." .. br .. "The associated Afterpiece Antidote also has useful effects.") .. dbr ..
            
            b("SPECIAL ABILITY: THE AFTERPIECE TONIC AND ANTIDOTE") .. br ..
            b("The Clown") .. " starts the Trial with a shared stock of " .. clror("#bottles") .. space .. b("Bottles") .. dot .. nlp ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " to switch between the " .. biclr("fuchsia", "Tonic") .. " and the " .. biclr("yellow", "Antidote") .. dot .. nlp ..
            "Press the " .. loadoutStrings.powerButton .. " to throw a " .. b("Bottle") .. dot .. br ..
            "Hold the " .. loadoutStrings.powerButton .. " until a shimmer travels across the " .. b("Bottle") .. " to throw it with maximum strength." .. nlp ..
            "Press and hold the " .. loadoutStrings.secondaryPowerButton .. " to replenish the " .. b("Bottles") .. " at any time:" ..
            list(
            	"Reloading takes " .. clro("#reloading(1)") .. " to complete.",
            	b("Reduces") .. " his Movement speed to " .. clro("#reloading(2)") .. dot) .. br ..
            
            b("SPECIAL AFFLICTION: TONIC") .. br ..
            "Upon impact, the " .. biclr("fuchsia", "Tonic") .. space .. b("Bottle") .. " breaks, releasing a " .. bclr("fuchsia", "fuchsia") .. space .. i("Gas Cloud") .. " that intoxicates Survivors upon contact and while inside it." .. br .. b("The Clown") .. " is immune to its effects." .. nlp ..
            biclr("fuchsia", "Intoxicated Survivors") .. " suffer from the following effects while inside the " .. i("Gas Cloud") .. colon ..
            list(
            	"Causes impaired vision.",
            	"Causes involuntary coughing.",
            	b("Suppresses") .. " the ability to perform " .. i("Fast Vaults") .. dot,
            	"Inflicts a " .. clro("#hindered") .. space .. effects("power", "The Afterpiece Tonic", ils.hindered) .. dot) ..
            "These effects linger for " .. clro("#linger") .. " after leaving the " .. i("Gas Cloud") .. dot .. dbr ..
            
            b("SPECIAL BENEFIT: ANTIDOTE") .. br ..
            "Upon impact, the " .. biclr("yellow", "Antidote") .. space .. b("Bottle") .. " breaks, releasing an inactive " .. bclr("white", "white") .. space .. i("Gas Cloud") .. dot .. br ..
            "The " .. i("Gas Cloud") .. " turns " .. bclr("yellow", "yellow") .. " after " .. clro("#delay") .. " and invigorates all Players coming into contact with it." .. nlp ..
            biclr("yellow", "Invigorated Players") .. " benefit from the following effect:" ..
            list("Grants a " .. clro("#haste") .. space .. effects("power", "The Afterpiece Tonic", ils.haste) .. " for " .. clro("#durationHaste") .. dot) .. br ..
            
            b("SPECIAL INTERACTION: NEUTRALISATION") .. br ..
            "The two types of " .. i("Gas Clouds") .. " instantly neutralise each other upon contact." .. nlp ..
            "Walking from one type into the other one will also neutralise any lingering effects from the former and instead apply the effect(s) of the latter."
    },
    ["Yamaoka's Haunting"] = { -- The Spirit
        desc =
        	pwrImg("Yamaoka's Haunting") ..
            quote("Yamaoka is the name she carries from her ancestors, who unleashed hell on the battlefield." .. br .. "The Spirit draws her power from their wrath, haunting the living as retribution for her suffering." .. br .. "The Spirit can use Yamaoka's Haunting to enter the Ethereal Plane and re-appear at a new location.") .. dbr ..
            
            b("SPECIAL ABILITY: YAMAOKA'S HAUNTING") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to charge " .. i("Yamaoka's Haunting") .. " and initiate a " .. i("Phase-Walk") .. " for up to " .. clror("5 seconds") .. colon ..
            list("Causes " .. b("The Spirit") .. " to depart her physical body and enter the " .. i("Ethereal Plane") .. ", leaving behind a stationary " .. b("Husk") .. dot) ..
            i("Yamaoka's Haunting") .. " has a cool-down of " .. clro("15 seconds") .. dot .. dbr ..
            
            b("SPECIAL LOCOMOTION: PHASE-WALK") .. br ..
            "During a " .. i("Phase-Walk") .. comma .. b("The Spirit") .. " experiences the following effects:" ..
            list(
            	b("Increases") .. " her Movement speed to " .. clro("7.04 m/s") .. dot,
            	"Survivors are invisible to her.",
            	nbullet .. "She can still see and track " .. iconLink(ils.scratchMarks) .. dot,
            	b("The Spirit") .. " emits a directional sound cue audible to all Survivors within " .. clro("24 metres") .. dot,
            	b("The Husk") .. " emits a " .. iconLink(ils.terrorRadius) .. " of " .. clro("24 metres") .. dot) ..
            b("The Spirit") .. " retains her speed boost for " .. clro("1 second") .. " after ending a " .. i("Phase-Walk") .. dot .. dbr ..
            
            b("SPECIAL ABILITY: PASSIVE-PHASING") .. br ..
            b("The Spirit") .. " is constantly phasing in and out of view for Survivors whenever she is not currently in a " .. i("Phase-Walk") .. dot
    },
    ["Feral Frenzy"] = { -- The Legion
        desc =
        	pwrImg("Feral Frenzy") ..
            quote("They were a plain group of friends until Frank formed them into a Legion." .. br .. "Now they draw power from the thrilling freedom of not abiding to any rule but their own.") .. dbr ..
            
            b("SPECIAL ABILITY: FERAL FRENZY") .. br ..
            "Press the " .. loadoutStrings.powerButton .. " when the Power Gauge is full to enter " .. i("Feral Frenzy") .. " for up to " .. clror("#frenzyDuration") .. colon ..
            list(
            	b("Increases") .. " their Movement speed to " .. clro("#frenzySpeedDefault") .. dot,
            	b("Increases") .. " their " .. iconLink(ils.terrorRadius) .. " by " .. clro("#terrorRadiusBonus") .. dot,
            	"Unlocks their ability to perform " .. i("Feral Vaults") .. " and " .. i("Feral Slashes") .. dot) ..
            i("Feral Frenzy") .. " takes " .. clro("#frenzyRecharge") .. " to recharge." .. dbr ..
            
            b("SPECIAL ABILITY: FERAL VAULT") .. br ..
            "Press the " .. loadoutStrings.interactionButton .. " during " .. i("Feral Frenzy") .. " while next to a dropped " .. iconLink(ils.pallet) .. " or a " .. iconLink(ils.window) .. " to perform a " .. i("Feral Vault") .. colon ..
            list("Grants the ability to swiftly vault over them in " .. clro("#feralVault") .. dot) .. br ..
            
            b("SPECIAL ABILITY: FERAL SLASH") .. br ..
            "Press the " .. loadoutStrings.attackButton .. " during " .. i("Feral Frenzy") .. " to initiate a " .. i("Feral Slash Attack") .. dot .. br .. "Hitting a Survivor with it applies the following effects:" ..
            list(
            	"Injures Survivors and causes them to suffer from the " .. effects("power", "Feral Frenzy", ils.deepWound) .. dot,
            	"Instantly refills the Power Gauge.",
            	"Triggers " .. i(link("Killer Instinct")) .. " on all Survivors inside the " .. i("Terror Radius") .. " not already suffering from " .. i(b("Deep Wound")) .. dot,
            	b("Increases") .. " the Movement speed of " .. b("The Legion") .. " by an additional " .. clro("#frenzySpeedBonus") .. " per hit Survivor, up to a maximum of " .. clro("#frenzySpeedMax") .. " after four successful " .. i("Feral Slashes") .. dot,
            	"Causes the fifth " .. i("Feral Slash") .. " to be lethal and apply double damage.",
            	nbullet .. "This also affects Survivors already suffering from " .. i(b("Deep Wound")) .. dot) ..
            "Hitting a Survivor already suffering from " .. i(b("Deep Wound")) .. " or missing a " .. i("Feral Slash") .. " automatically ends " .. i("Feral Frenzy") .. dot .. dbr ..
            
            b("SPECIAL STATE: FATIGUE") .. br ..
            "After " .. i("Feral Frenzy") .. " either elapses or " .. b("The Legion") .. " cancel it prematurely, they enter a state of " .. i("Fatigue") .. comma .. space .. b("reducing") .. " their Movement speed to " .. clro("#fatigueSpeed") .. " for " .. clro("#fatigueDuration") .. dot
    },
    ["Vile Purge"] = { -- The Plague
        desc =
        	pwrImg("Vile Purge") ..
            quote("Her condition deteriorated as the black plague overtook her body:" .. br .. "Her toes blackened, her neck mushroomed into cysts, and her throat gagged with bloody vomit.") .. dbr ..
            
            b("SPECIAL ABILITY: VILE PURGE") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to charge " .. biclr("vomit green", "Vile Purge") .. dot .. br ..
            "Release the " .. loadoutStrings.powerButton .. " to unleash a stream of infectious bile or press the " .. loadoutStrings.attackButton .. " to swallow it back down:" .. 
            list(
            	"Hitting Survivors with a " .. b("Vomit Projectile") .. " inflicts them with " .. i("Sickness") .. dot,
            	nbullet .. "Successive hits slowly fill the " .. i("Sickness Meter") .. dot,
            	"Hitting environmental objects causes them to become infectious to Survivors for " .. clror("40 seconds") .. dot) .. br ..
            
            b("SPECIAL STATE: SICKNESS") .. br ..
            i("Sickness") .. " is indicated on the Status HUD icon of affected Survivors, which also doubles as a " .. i("Sickness Meter") .. colon ..
            list(
            	i("Infected Survivors") .. " with a partially filled " .. i("Sickness Meter") .. " vomit at random intervals, infecting both nearby environmental objects and other Survivors.",
            	i("Infected Survivors") .. " with a full " .. i("Sickness Meter") .. " are put into the " .. iconLink(ils.injuredState) .. " and suffer permanently from the " .. states(ils.broken) .. dot) .. br ..
            
            b("SPECIAL OBJECT: POOLS OF DEVOTION") .. br ..
            iconLink("Pools of Devotion") .. " spawn randomly throughout the environment:" ..
            list(
            	clro(5) .. space .. b("Pools of Devotion") .. " spawn in the " .. biclr("white", "Uncorrupted State") .. dot,
            	clro(1) .. space .. b("Pool of Devotion") .. " spawns in the " .. biclr("blood red", "Corrupted State") .. dot) .. br ..
            
            b("SPECIAL INTERACTION: CLEANSING INFECTION") .. br ..
            "Survivors can approach an " .. biclr("white", "Uncorrupted") .. space .. b("Pool of Devotion") .. " and interact with it to cleanse themselves." .. br .. "Cleansing removes all " .. i("Sickness") .. " and automatically heals them back to full health, but corrupts the " .. b("Pool of Devotion") .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: INGESTING CORRUPTION") .. br ..
            b("The Plague") .. " can approach a " .. biclr("blood red", "Corrupted") .. space .. b("Pool of Devotion") .. " and press and hold the " .. loadoutStrings.interactionButton .. " to ingest its corruption and empower her purge:" ..
            list(
            	b("Replaces") .. space .. biclr("vomit green", "Vile Purge") .. " with " .. biclr("blood red", "Corrupt Purge") .. " for " .. clro("60 seconds") .. dot,
            	nbullet .. b("Resets") .. " the " .. b("Pool of Devotion") .. dot) .. 
            b("The Plague") .. " automatically receives " .. biclr("blood red", "Corrupt Purge") .. " when Survivors corrupt all available " .. b("Pools of Devotion") .. ", resetting them all." .. dbr .. 
            
            b("SPECIAL ATTACK: CORRUPT PURGE") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to charge " .. biclr("blood red", "Corrupt Purge") .. br ..
            "Release the " .. loadoutStrings.powerButton .. " to unleash a stream of lethal bile or press the " .. loadoutStrings.attackButton .. " to swallow it back down:" .. 
            list("Hitting Survivors with a " .. b("Vomit Projectile") .. " inflicts them with damage, causing them to lose a " .. iconLink(ils.healthState) .. dot) ..
            "If " .. b("The Plague") .. " is stunned by any means during " .. biclr("blood red", "Corrupt Purge") .. ", her Power is instantly reset to " .. biclr("vomit green", "Vile Purge") .. dot
    },
    ["Night Shroud"] = { -- The Ghost Face
        desc =
        	pwrImg("Night Shroud", "Night Shroud (activated)") ..
            quote("The Ghost Face used to study his victims for weeks, meticulously registering their habits." .. br .. "When the urge to kill swelled, he'd know exactly how and where to strike.") .. dbr ..
            
            b("SPECIAL ABILITY: NIGHT SHROUD") .. br ..
            "Press the " .. loadoutStrings.powerButton .. " to enter " .. i("Stealth Mode") .. colon .. 
            list(
            	"Grants the " .. effects("power", "Night Shroud", ils.undetectable) .. dot,
            	"Unlocks the ability to " .. i("Stalk") .. " Survivors.") ..
            "Performing a " .. i("Basic Attack") .. " automatically ends " .. i("Stealth Mode") .. " and depletes the Power Gauge." .. nlp ..
            i("Night Shroud") .. " has a cool-down of " .. clror("#powerCooldown") .. dot .. dbr ..
            
            b("SPECIAL LOCOMOTION: CROUCHING") .. br ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " to " .. i("Crouch") .. colon .. 
            list(
            	b("Reduces") .. " his Movement speed to " .. clro("#crouchingSpeed") .. dot,
            	"Causes him to be harder to be spotted and revealed by Survivors.") .. 
            "Press the " .. loadoutStrings.secondaryPowerButton .. " again to stand back upright." .. dbr ..
            
            b("SPECIAL ABILITY: STALKING") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " when in " .. i("Stealth Mode") .. " to start " .. i("Stalking") .. colon ..
            list(
            	b("Reduces") .. " the Walking or Crouching speed to " .. clro("#stalkSpeedMultiplierActive") .. " of their respective default values while " .. i("Active Stalking") .. dot,
            	b("Reduces") .. " the Walking or Crouching speed to " .. clro("#stalkSpeedMultiplierPassive") .. " of their respective default values while " .. i("Passive Stalking") .. dot,
            	"Highlights the outline of Survivors within a range of " .. clro("#stalkRange") .. " of " .. b("The Ghost Face") .. dot) ..
            "While stalking one or multiple Survivors, their " .. i("Stalk Meter") .. " is filling up at a default rate of " .. clro("#stalkRate") .. ", which is indicated on the Survivor Portraits in the HUD." .. dbr ..
            
            b("SPECIAL ABILITY: LEANING AND STALKING") .. br .. img("Night Shroud (leaning)", cstr.left, "48px") ..
            "Standing behind cover when in " .. i("Stealth Mode") .. " shows the " .. i("Lean and Stalk") .. " prompt." .. br .. i("Stalking") .. " Survivors while leaning doubles its rate to " .. clro("#stalkRateLean") .. dot .. dbr ..
            
            b("SPECIAL STATE: MARKED") .. br .. img("Night Shroud (marked)", cstr.left, "96px") ..
            "Once the " .. i("Stalk Meter") .. " is full at " .. clro("#stalkCapacity") .. ", the affected Survivors are " .. biclr("bright red", "Marked") .. " and suffer from the following effects for " .. clro("#exposed") .. colon ..
            list(
            	"Inflicts the " .. effects("power", "Night Shroud", ils.exposed) .. dot,
            	b("Suppresses") .. " their ability to reveal " .. b("The Ghost Face") .. dot) .. dbr ..
            
            b("SPECIAL INTERACTION: REVEALING") .. br ..
            "Survivors can attempt to reveal " .. b("The Ghost Face") .. " when he is in " .. i("Stealth Mode") .. ", forcing him out of it and disabling his ability to continue stalking them." .. nlp ..
            "Survivors must see at least " .. clro("#revealVisibility") .. " of his model in the central part of their screen while he is within " .. clro("#revealRange") .. " in order to start revealing him over the course of " .. clro("#revealTime") .. colon ..
            list(
            	"Triggers markers on the HUD of " .. b("The Ghost Face") .. ", betraying the direction from which he is being revealed from.",
            	"Triggers " .. i(link("Killer Instinct")) .. " for " .. clro("#killerInstinct") .. " after a successful reveal.") .. nlp ..
            quote("Don't mind me. That's it, keep going. Perfect. That's the image I'll keep of you.", "The Ghost Face")
    },
    ["Of the Abyss"] = { -- The Demogorgon
        desc =
        	pwrImg("Of the Abyss") ..
            quote("An unknown and otherworldly power surged through its body." .. br .. "Suddenly the ground ripped open, swallowing The Demogorgon whole.") .. dbr ..
            
            b("SPECIAL ABILITY: OF THE ABYSS") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to channel " .. i("Of the Abyss") .. colon .. 
            list(
            	"Triggers " .. i(link("Killer Instinct")) .. " on Survivors inside the " .. i("Area of Effect") .. " of " .. bclr("yellow", "Active Portals") .. dot,
            	"Unlocks the ability to perform a " .. i("Shred Attack") .. dot) .. br ..
            
            b("SPECIAL ATTACK: SHRED") .. img("Shred", "48px") .. br ..
            "Press the " .. loadoutStrings.attackButton .. " after charging " .. i("Of the Abyss") .. " to at least " .. clror("65 %") .. " to dash forwards and unleash a vicious slash:" ..
            list(
            	"Causes " .. b("The Demogorgon") .. " to lunge forwards at " .. clro("19 m/s") .. dot,
            	"Grants the ability to destroy " .. iconLink(ils.breakableWalls) .. " and dropped " .. iconLink(ils.pallets) .. dot) .. br ..
            
            b("SPECIAL OBJECTS: PORTALS") .. br ..
            b("The Demogorgon") .. " starts the Trial with " .. clro(6) .. space .. b("Portals") .. dot .. nlp ..
            "Press and hold the " .. loadoutStrings.secondaryPowerButton .. " to bend down and create an " .. bclr("white", "Inactive Portal") .. " in the ground:" ..
            list(
            	bclr("white", "Inactive Portals") .. " are invisible to Survivors and cannot be sealed.",
            	bclr("white", "Inactive Portals") .. " do not have an " .. i("Area of Effect") .. " and thus do not trigger " .. i("Killer Instinct") .. dot) ..
            "When " .. b("The Demogorgon") .. " interacts with " .. bclr("white", "Inactive Portals") .. " to traverse the " .. i("Upside Down") .. ", both the " .. b("Portal") .. " he travels from and the one he travels to are transformed into " .. clror("Active Portals") .. colon ..
            list(
            	bclr("yellow", "Active Portals") .. " are visible to Survivors and can be sealed.",
            	bclr("yellow", "Active Portals") .. " have an " .. i("Area of Effect") .. " of " .. clro("4 metres") .. " around them.",
            	nbullet .. "Survivors inside the " .. i("Area of Effect") .. " suffer permanently from the " .. states(ils.oblivious) .. " and are revealed by " .. i("Killer Instinct") .. " while " .. b("The Demogorgon") .. " is channelling " .. i("Of the Abyss") .. dot) .. br ..
            
            b("SPECIAL INTERACTION: SEALING PORTALS") .. br ..
            "Survivors can interact with " .. clror("Active Portals") .. " to seal them, either alone or together with other Survivors, though at increasingly reduced efficiency:" .. 
            list(
            	bclr("faded jade", "1 Survivor") .. " seals a " .. b("Portal") .. " in " .. clro("12 seconds") .. dot,
            	bclr("faded jade", "2 Survivors") .. " seal a " .. b("Portal") .. " in " .. clro("~9 seconds") .. dot,
            	bclr("faded jade", "3 Survivors") .. " seal a " .. b("Portal") .. " in " .. clro("8 seconds") .. dot,
            	bclr("faded jade", "4 Survivors") .. " seal a " .. b("Portal") .. " in " .. clro("6 seconds") .. dot) ..
            "Sealing a " .. b("Portal") .. " will recycle it into the inventory of " .. b("The Demogorgon") .. dot .. dbr ..
            
            b("SPECIAL LOCOMOTION: TRAVERSING THE UPSIDE DOWN") .. img("Traverse Upside Down", "48px") .. br ..
            "Press and hold the " .. loadoutStrings.secondaryPowerButton .. " while standing atop any " .. b("Portal") .. " and aiming at any " .. bclr("bright red", "Highlighted Portal") .. " to enter the first " .. b("Portal") .. " and traverse the " .. i("Upside Down") .. ", appearing at the second " .. b("Portal") .. colon ..
            list(
            	"Transforms " .. bclr("white", "Inactive Portals") .. " into " .. bclr("yellow", "Active Portals") .. dot,
            	"Grants the " .. effects("power", "Of the Abyss", ils.undetectable) .. " for " .. clro("#undetectable") .. dot)
    },
    ["Yamaoka's Wrath"] = { -- The Oni
        desc =
        	pwrImg("Yamaoka's Wrath", "Yamaoka's Wrath (Blood Fury)") ..
            quote("The desire to destroy weaker bloodlines shaped into a literal force.") .. dbr ..
            
            b("SPECIAL ABILITY: YAMAOKA'S WRATH") .. br ..
            i("Yamaoka's Wrath") .. " passively fills the Power Gauge by " .. clror("+0.2 c/s") .. ", up to a maximum of " .. clro("98 Charges") .. dot .. nlp ..
            "Successful " .. i("Basic Attacks") .. " on healthy Survivors fill the Power Gauge by " .. clro("+40 Charges") .. dot .. dbr ..
            
            b("SPECIAL STATE: ABSORPTION MODE") .. img("Absorption Mode", "48px") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to absorb nearby " .. bclr("bright red", "Blood Orbs") .. " left in the environment by injured Survivors, further filling the Power Gauge:" .. 
            list(
            	b("Fills") .. " the Power Gauge by " .. clro("+2.5 Charges per Orb") .. dot,
            	"The " .. iconLink(ils.auras) .. " of " .. bclr("bright red", "Blood Orbs") .. " are revealed to " .. b("The Oni") .. " within " .. clro("8 metres") .. dot,
            	b("Reduces") .. " his Movement speed to " .. clro("3.45 m/s") .. dot) .. br ..
            
            b("SPECIAL STATE: BLOOD FURY") .. br ..
            "Once the Power Gauge is full at " .. clro("100 Charges") .. ", press the " .. loadoutStrings.secondaryPowerButton .. " to transition into " .. i("Blood Fury") .. colon ..
            list("Grants the ability to perform " .. i("Demon Dash") .. " and " .. i("Demon Strike") .. dot) .. br ..
            
            b("SPECIAL LOCOMOTION: DEMON DASH") .. img("Demon Dash", "48px") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " during " .. i("Blood Fury") .. " to perform a " .. i("Demon Dash") .. colon ..
            list(
            	b("Increases") .. " his Movement speed to " .. clro("7.82 m/s") .. dot,
            	b("Reduces") .. " his manoeuvrability.") .. br ..
            
            b("SPECIAL ATTACK: DEMON STRIKE") .. img("Demon Strike", "48px") .. br ..
            "Press and hold the " .. loadoutStrings.attackButton .. " during " .. i("Blood Fury") .. " to perform a " .. i("Demon Strike") .. " with extended reach:" ..
            list(
            	"Striking Survivors with the " .. b("Kanabo") .. " inflicts double damage.",
            	nbullet .. b("The Oni") .. " will strike his " .. b("Kanabo") .. " a total of " .. clro("3 times") .. dot,
            	nbullet .. b("The Oni") .. " can hit and damage multiple Survivors with his " .. b("Kanabo") .. dot) ..
            "Hitting Survivors with the " .. b("Kanabo") .. " instead by just pressing the " .. loadoutStrings.attackButton .. " only inflicts single damage."
    },
    ["The Redeemer"] = { -- The Deathslinger
        desc =
        	pwrImg("The Redeemer", "The Redeemer (Chain Break)") ..
            quote("The Deathslinger's ingenuity affords him the ability to reel in bounties with a unique invention — a heavily modified hybrid rifle that replaces conventional ammunition with a razor-sharp spear affixed to a chain.") .. dbr ..
            
            b("SPECIAL ABILITY: THE REDEEMER") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to " .. i("Aim Down Sights") .. dot .. dbr ..
            
            b("SPECIAL WEAPON: SPEARGUN") .. br ..
            "Press the " .. loadoutStrings.attackButton .. " during " .. i("ADS") .. " to shoot " .. i("The Redeemer") .. ", launching a high-speed chained projectile that can spear Survivors within " .. clror("18 metres") .. ", allowing " .. b("The Deathslinger") .. " to reel them in." .. dbr ..
            
            b("SPECIAL INTERACTION: REELING IN") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " while a Survivor is speared by " .. i("The Redeemer") .. " to reel them in towards you:" ..
            list(
            	"Walking backwards " .. b("increases") .. " the Reeling speed.",
            	i("Speared Survivors") .. " struggling against the pull of the chain slows the Reeling speed.") ..
            "Once a Survivor is close enough to you, press the " .. loadoutStrings.attackButton .. " to break the chain and strike the Survivor with a " .. i("Basic Attack") .. colon ..
            list("Causes the Survivor to suffer from the " .. states(ils.deepWound) .. dot) .. 
            b("The Deathslinger") .. " can break the chain manually by attacking at any point during the Reeling-in process." .. dbr ..
            
            b("SPECIAL INTERACTION: BREAKING THE CHAIN") .. br ..
            "Whenever the chain of " .. i("The Redeemer") .. " experiences tension or collides with the environment, it experiences stress that will eventually cause it to break." .. br ..
            "The more stress, the faster it will break:" ..
            list(
            	"Causes " .. b("The Deathslinger") .. " to be stunned for " .. clro("2.7 seconds") .. dot,
            	"Causes the " .. i("Speared Survivor") .. " to break free, but suffer from the " .. iconLink(ils.injuredState) .. " and " .. i(b("Deep Wound")) .. dot) .. br ..
            
            b("SPECIAL INTERACTION: RELOADING") .. br ..
            "Press and hold the " .. loadoutStrings.secondaryPowerButton .. " to reload " .. i("The Redeemer") .. " after every shot:" ..
            list(
            	"Reloading takes " .. clro("2.6 seconds") .. " to complete.",
            	b("Reduces") .. " his Movement speed to " .. clro("3.08 m/s") .. dot)
    },
    ["Rites of Judgement"] = { -- The Executioner
        desc =
        	pwrImg("Rites of Judgement") ..
            quote("Open the Gates of Suffering and be judged! The Great Knife splits the ground, giving rise to an infernal construct and spreading agony to all who approach.") .. dbr ..
            
            b("SPECIAL ABILITY: RITES OF JUDGEMENT") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to carve a " .. i("Torment Trail") .. " into the ground beneath you while moving:" ..
            list(
            	b("Reduces") .. " his Movement to " .. clror("#ROJ(1)") .. dot,
            	"The Power gauge has a capacity of " .. clro("#ROJ(2)") .. dot,
            	nbullet .. "Drawing the " .. i("Torment Trail") .. " drains it at a rate of " .. clro("#ROJ(3)") .. ", allowing for a maximum Draw time of " .. clro("#ROJ(4)") .. dot,
            	nbullet .. "Remaining stationary or stopping to move automatically pauses the Power gauge.") ..
            "Segments of the " .. i("Torment Trail") .. " have a Life time of " .. clro("#ROJ(5)") .. dot .. br ..
            "Their " .. iconLink(ils.auras) .. " are revealed to " .. b("The Executioner") .. " in " .. bclr("white", "white") .. " within " .. clro("#ROJ(6)") .. dot .. dbr ..
            
            b("SPECIAL ATTACK: PUNISHMENT OF THE DAMNED") .. img("Punishment of the Damned", "48px") .. br ..
            "While performing " .. i("Rites of Judgement") .. ", press the " .. loadoutStrings.attackButton .. " to trigger " .. i("Punishment of the Damned") .. ", unleashing a propagating " .. i("Attack Trail") .. " in front of " .. b("The Executioner") .. colon ..
            list(
            	"Inflicts damage to all Survivors it touches.",
            	"Depletes the Power Gauge by " .. clro("#POTD(1)") .. dot,
            	"Has a range of " .. clro("#POTD(2)") .. dot) .. br ..
            
            b("SPECIAL AFFLICTION: TORMENT") .. br ..
            "If a Survivor touches the " .. i("Torment Trail") .. " while not crouched, it applies the following effects:" ..
            list(
            	"Inflicts " .. biclr("blood red", "Torment") .. dot,
            	"Triggers " .. i(link("Killer Instinct")) .. " for " .. clro("#killerInstinct") .. dot) ..
            biclr("blood red", "Torment") .. " is only removed after rescuing or being rescued from a " .. iconLink("Cage of Atonement") .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: SEND TO CAGE") .. img("Cage of Atonement", "48px") .. br ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " while standing over a downed " .. biclr("blood red", "Tormented Survivor") .. " to send them to a " .. b("Cage of Atonement") .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: FINAL JUDGEMENT") .. img("Mini-Mori", "48px") .. br ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " while standing over a downed " .. biclr("blood red", "Tormented Survivor") .. " that has reached the second " .. i("Hook Stage") .. " to execute them on the spot, performing a " .. i("Mini-Mori") .. dot
    },
    ["Blighted Corruption"] = { -- The Blight
        desc =
        	pwrImg("Blighted Corruption") ..
            quote("Pustula Serum courses through his veins, corrupting his mind and body, yet granting him unnatural physical abilities.") .. dbr ..
            
            b("SPECIAL ABILITY: BLIGHTED CORRUPTION") .. br ..
            b("The Blight") .. " starts the Trial with " .. clror("5 Tokens") .. dot .. nlp ..
            "Basic-breaking a " .. iconLink(ils.pallet) .. " sets " .. i("Blighted Corruption") .. " to " .. clro('3') .. " Power Tokens" .. dot .. br ..
            "Using " .. i("Blighted Corruption") .. " consumes " .. clro("-1 Token") .. " per " .. i("Rush / Lethal Rush") .. dot .. dbr ..
            
            b("SPECIAL LOCOMOTION: RUSH") .. br ..
            "Press the " .. loadoutStrings.powerButton .. " to initiate a " .. i("Rush") .. " that lasts for up to " .. clro("3 seconds") .. colon ..
            list(
            	b("Increases") .. " his Movement speed to " .. clro("9.2 m/s") .. dot,
            	b("Reduces") .. " his manoeuvrability.",
            	b("Suppresses") .. " his ability to perform an attack.") .. br ..
            
            b("SPECIAL INTERACTION: SLAM") .. br ..
            "Running into obstacles or walls during a " .. i("Rush") .. " causes " .. b("The Blight") .. " to perform a " .. i("Slam") .. " and opens the " .. i("Chain Rush Window") .. dot .. dbr ..
            
            b("SPECIAL LOCOMOTION: LETHAL RUSH") .. br ..
            "Press the " .. loadoutStrings.powerButton .. " during the " .. i("Chain Rush Window") .. " to chain a " .. i("Lethal Rush") .. " that lasts for up to " .. clro("3 seconds") .. colon ..
            list(
            	b("Increases") .. " his Movement speed to " .. clro("9.2 m/s") .. dot,
            	b("Reduces") .. " his manoeuvrability.",
            	"Grants the ability to perform an attack by pressing the " .. loadoutStrings.attackButton .. dot,
            	nbullet .. "Attacking " .. iconLink(ils.breakableWalls) .. " or dropped " .. iconLink(ils.pallets) .. " breaks them.",
            	nbullet .. "Breaking a Pallet by " ..i("Lethal Rush") .. " sets " .. i("Blighted Corruption") .. " to " .. clro('3') .. " Power Tokens. ")  .. br ..
            
            b("SPECIAL STATE: FATIGUE") .. br ..
            "After either the " .. i("Chain Rush Window") .. " closes, the final " .. i("Lethal Rush") .. " elapses, or " .. b("The Blight") .. " fails to perform a " .. i("Slam") .. ", he enters a state of " .. i("Fatigue") .. " for " .. clro("2.5 seconds") .. dot
    },
    ["Blood Bond"] = { -- The Twins
        desc =
        	pwrImg("Blood Bond", "Blood Bond (Victor)") ..
            quote("Though forever bound through blood and trauma, The Twins have been granted the power to separate from their shared body." .. br .. "Together they hunt as brother and sister, doubling the threat to Survivors.") .. dbr ..
            
            b("SPECIAL ABILITY: BLOOD BOND") .. br ..
            "Their shared bond allows " .. b("The Twins") .. " to take control individually." .. nlp ..
            b("The Twins") .. " see the other sibling's " .. iconLink(ils.aura) .. " at all times." .. dbr ..
            
            b("SPECIAL INTERACTION: UNBIND VICTOR") .. img("Unbind Victor", "48px") .. br .. 
            "Press the " .. loadoutStrings.powerButton .. " while controlling " .. b("Charlotte") .. " to unbind " .. b("Victor") .. " from her chest, granting him control while she enters a " .. i("Dormant State") .. dot .. dbr ..
            
            b("SPECIAL STATE: DORMANT") .. br ..
            "While in the " .. i("Dormant State") .. comma .. b("Charlotte") .. " experiences the following effects:" ..
            list(
            	b("Suppresses") .. " her " .. iconLink(ils.terrorRadius) .. " and the " .. i("Red Stain") .. dot,
            	"Allows her to temporarily retain her collision with Survivors for " .. clror("30 seconds") .. dot) .. br ..
            
            b("SPECIAL INTERACTION: SWITCH SIBLING") .. br ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " to switch control between " .. b("Charlotte") .. img("Switch to Charlotte", "48px") .. " and " .. b("Victor") .. img("Switch to Victor", "48px") .. " at will." .. dbr ..
            
            b("SPECIAL ABILITY: VICTOR") .. br ..
            b("Victor") .. " experiences the following effects while controlling him:" ..
            list(
            	b("Hides") .. " the Status HUD and disables all active effects from " .. b("Charlotte's") .. space .. iconLink("Perks") .. " and " .. iconLink("Add-ons") .. dot,
            	b("Suppresses") .. " the ability to see " .. iconLink(ils.scratchMarks) .. dot,
            	b("Increases") .. " his Movement speed to " .. clro("6 m/s") .. dot,
            	iconLink(ils.poolsOfBlood) .. " appear to him in " .. bclr("bright red", "bright red") .. dot,
            	"Grants the ability to search " .. iconLink(ils.lockers) .. " for Survivors.",
            	nbullet .. "If he finds one, control will automatically revert to " .. b("Charlotte") .. " while " .. b("Victor") .. " keeps the hiding Survivor trapped inside for " .. clro("10 seconds") .. dot) ..
            "When controlling " .. b("Charlotte") .. " while " .. b("Victor") .. " is unbound, she benefits from the following effect:" ..
            list(
            	"Survivors walking or running inside " .. b("Victor's") .. space .. i("Shriek") .. " range trigger " .. i(link("Killer Instinct")) .. dot,
            	nbullet .. "This effect lingers for " .. clro("1.5 seconds") .. " after leaving the " .. i("Shriek") .. " range.",
            	nbullet .. "Crouching avoids triggering the effect altogether.") .. br ..
            
            b("SPECIAL ABILITY: POUNCE") .. img("Pounce Charging (Victor)", "48px") .. br .. 
            "Press and hold the " .. loadoutStrings.powerButton .. " while controlling " .. b("Victor") .. " to charge a " .. i("Pounce") .. dot .. br ..
            "Press the " .. loadoutStrings.attackButton .. " to unleash it, causing him to leap forwards" .. img("Pounce (Victor)", "48px") .. dot .. nlp ..
            "Hitting Survivors with a " .. i("Pounce") .. " causes the following effects:" ..
            list(
            	b("Victor") .. " latches onto healthy Survivors, causing control to automatically revert to " .. b("Charlotte") .. dot,
            	nbullet .. "This puts them into the " .. iconLink(ils.injuredState) .. dot,
            	b("Victor") .. " downs already injured Survivors, instead of latching on, causing control to remain with him.") ..
            "Missing a " .. i("Pounce") .. " leaves " .. b("Victor") .. " vulnerable for " .. clro("3 seconds") .. ", giving nearby Survivors a chance to " .. i("Crush") .. " him." .. nlp ..
            i("Pouncing") .. " onto obstacles taller than himself causes " .. b("Victor") .. " to automatically dissolve and return to " .. b("Charlotte") .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: LATCHING ON") .. br ..
            "The Survivor " .. b("Victor") .. " has latched himself onto suffers permanently from the following effects until they either manage to remove him or they are downed by " .. b("Charlotte") .. colon ..
            list(
            	"Suffers from the " .. states(ils.broken, ils.incapacitated, ils.oblivious) .. dot,
            	b("Suppresses") .. " their ability to enter " .. b("Lockers") .. dot,
            	b("Suppresses") .. " their ability to leave through the " .. iconLink(ils.exitGates) .. dot,
            	nbullet .. "This effect lingers for " .. clro("5 seconds") .. " after removing " .. b("Victor") .. dot,
            	"Triggers " .. i("Killer Instinct") .. " on other nearby Survivors.") .. br ..
            
            b("SPECIAL INTERACTION: REMOVING / CRUSHING VICTOR") .. br ..
            "Survivors can counter " .. b("Victor") .. " in two ways: " .. i("Crushing") .. " or " .. i("Removing") .. colon ..
            list(
            	i("Crushing") .. " is available whenever " .. b("Victor") .. " is idling and control is with " .. b("Charlotte") .. ", or for a short duration after a " .. i("Pounce") .. " without him latching on, and takes " .. clro("0.35 seconds") .. " to complete.",
            	i("Removing") .. " is available whenever " .. b("Victor") .. " is latched onto a Survivor and takes " .. clro("8 seconds") .. " to complete.") .. br ..
            
            b("SPECIAL INTERACTION: RECALLING VICTOR") .. img("Recall Victor", "48px") .. br .. 
            b("Victor") .. " will automatically return to " .. b("Charlotte") .. " after idling for " .. clro("90 seconds") .. dot .. br ..
            b("Charlotte") .. " can recall him earlier whenever she desires."
    },
    ["Showstopper"] = { -- The Trickster
        desc = {
        	pwrImg("Showstopper", "Showstopper (Main Event)", "Showstopper (Main Event Cool-down)") ..
            quote("A mesmerising skill honed through a lifetime of practice, Ji-Woon Hak unleashes a flurry of knives with rapid-fire speed.") .. dbr ..
            
            b("SPECIAL ABILITY: SHOWSTOPPER") .. br ..
            b("The Trickster") .. " starts the Trial with " .. clror(36) .. space .. b("Blades") .. " equipped." .. nlp ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to enter the " .. i("Throw State") .. " and wind up the " .. b("Blades") .. dot .. br .. 
            "Release the " .. loadoutStrings.powerButton .. " to exit the " .. i("Throw State") .. dot .. dbr ..
            
            b("SPECIAL STATE: THROW STATE") .. br .. 
            "While in the " .. i("Throw State") .. ", with a " .. b("Blade") .. " at the ready, press the " .. loadoutStrings.attackButton .. " to throw a single one or press and hold it to unleash a flurry of them:" ..
            list(
            	b("Blades") .. " are launched at a rate of " .. clro("3") .. space .. b("Blades per second") .. dot .. " This rate is increased by " .. clro("5%") .. " after " .. clro("5") .. space .. b("Blades") .. " and " .. clro("10%") .. " after " .. clro("10") .. space .. b("Blades") .. dot, 
            	b("Blades") .. " are launched at a speed of " .. clro("55 m/s") .. " for up to " .. clro("128 metres") .. dot,
            	b("Reduces") .. " his Movement speed to " .. clro("3.86 m/s") .. ", " .. clro("3.53 m/s") .. " after throwing " .. clro("5") .. space .. b("Blades") .. " and " .. clro("3.16 m/s") .. " after throwing " .. clro("10") .. space .. b("Blades") .. dot) ..
            
            b("Blades") .. " can be replenished at " .. iconLink(ils.lockers) .. dot .. br .. "The " .. iconLink(ils.auras) .. " of " .. b("Blades") .. " inside " .. b("Lockers") .. " are automatically revealed to " .. b("The Trickster") .. " within " .. clro("36 metres") .. ", when he is out of them." .. dbr ..
            
            b("SPECIAL AFFLICTION: LACERATION") .. br ..
            "Survivors hit with " .. b("Blades") .. " accumulate " .. clror("+1 Charge") .. " of " .. biclr("lavender", "Laceration") .. ", filling their " .. i("Laceration Meter") .. dot .. br ..
            "Once the " .. i("Laceration Meter") .. " is full at " .. clro("6 Charges") .. ", the affected Survivor loses " .. clro(1) .. space .. iconLink(ils.healthState) .. dot .. dbr
        ,
            biclr("lavender", "Laceration") .. " starts dissipating at a rate of " .. clro("-1 charge") .. " every " .. clro("4.4 seconds") .. ", if a Survivor is not hit by a " .. b("Blade") .. " for " .. clro("16 seconds") .. ", and immediately loses " .. clro("-3 Charges") .. ", if they are hit with a " .. i("Basic Attack") .. dot .. dbr ..
            
            b("SPECIAL ABILITY: STYLE RANKS") .. br ..
            "There are 6 " .. b("Style Ranks") .. ": " .. biclr("grey", "E") .. ", " .. biclr("white", "D") .. ", "  .. biclr("blue", "C") .. ", " .. biclr("orange", "B") .. ", " .. biclr("red", "A") .. " and " .. biclr("yellow", "S") .. br ..
            b("The Trickster") .. " earns " .. b("Style Points") .. space .. "by throwing " .. b("Blades") .. space .. "and performing distinct actions back-to-back." .. br ..
            "Earning enough " .. b("Style Points") .. space .. "causes " .. b("The Trickster") .. space .. "to go up in " .. b("Style Ranks") .. ", each " .. ("Style Rank") .. space .. "improves " .. b("Blade") .. space .. "throw rate and reload speed." .. dbr ..
            
            b("Style Ranks") .. " decay to a lower rank if no actions have been performed in a while. Performing actions refreshes the decay timer. The decay timer is paused while performing certain actions." .. dbr ..
            
            "Reaching " .. biclr("yellow", "S") .. "-Rank causes Survivors within " .. clro("44 metres") .. " to be revealed by " .. i("Killer Instinct") .. " for " .. clro("4.4 seconds") .. dot .. br ..
            "While in " .. biclr("yellow", "S")  .. "-Rank, " .. b("Terror Radius") .. " is increased to " .. clror("44 metres") .. ", Lullaby gets disabled" ..  ", " .. biclr("lavender", "Laceration Meter") .. " decay is paused and " .. b("The Trickster") .. space .. "is granted access to " .. biclr("yellow", "Main Event") .. dot .. dbr ..
            biclr("yellow", "S")  .. "-Rank decays back to " .. biclr("grey", "E") ..  "-Rank after " .. clro("66 seconds") .. ", this decay timer cannot be refreshed or paused by performing actions." .. dbr ..
            
            b("SPECIAL ABILITY: MAIN EVENT") .. br ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " to activate " .. biclr("yellow", "Main Event") .. " for a maximum of " .. clror("10 seconds") .. ", unless " .. b("The Trickster") .. " cancels it prematurely by pressing the " .. loadoutStrings.secondaryPowerButton .. " again:" ..
            list(
            	"Grants the ability to throw an unlimited amount of " .. b("Blades") .. dot,
            	b("Increases") .. " the Throw rate of " .. b("Blades") .. " by " .. clro("+66 %") .. dot) ..
            "After performing " .. biclr("yellow", "Main Event") .. ", " .. b("The Trickster") .. " suffers fatigue and " .. b("Showstopper") .. " is put on a " .. clro("4 second") .. " cool-down" .. dot .. space .. "The " .. b("Style Rank") .. " will also be depleted back to " .. biclr("grey", "E") .. "-Rank, this rank is increased up to " .. biclr("orange", "B") .. "-Rank by performing Blade hits during " .. biclr("yellow", "Main Event") .. dot .. dbr ..
            
            biclr("yellow", "Main Event") .. " cannot be activated within " .. clro("20 metres") .. " of a Hooked Survivor."
        }
    },
    ["T-Virus"] = { -- The Nemesis
        desc =
        	pwrImg("T-Virus Mutation Rate 1", "T-Virus Mutation Rate 2", "T-Virus Mutation Rate 3") ..
            quote("A virus that causes extreme mutations and can be transferred to others." .. br .. "Its effects heighten aggression and strength within The Nemesis.") .. dbr ..
            
            b("SPECIAL ABILITY: T-VIRUS") .. br ..
            "The power of " .. b("The Nemesis") .. " expands as his " .. i("Mutation Rate") .. " grows." .. dbr ..
            
            b("Mutation Rate 1") .. " is the default state of " .. b("The Nemesis") .. colon ..
            list(
            	"Grants access to the ranged " .. i("Tentacle Strike") .. " attack.",
            	nbullet .. "Has a default range of " .. clror("5 metres") .. dot,
            	nbullet .. "Cannot destroy " .. iconLink(ils.breakableWalls) .. " or dropped " .. iconLink(ils.pallets) .. dot,
            	nbullet .. b("Reduces") .. " his Movement speed while charging and holding the attack to " .. clro("3.8 m/s") .. dot) .. br ..
            
            b("Mutation Rate 2") .. " is reached after accumulating a total of " .. clro(5) .. space .. biclr("blue", "Contamination Points") .. colon ..
            list("Allows the " .. i("Tentacle Strike") .. " attack to destroy " .. b("Breakable Walls") .. " and dropped " .. b("Pallets") .. dot) .. br .. 
            
            b("Mutation Rate 3") .. " is reached after accumulating a total of " .. clro(15) .. space .. biclr("blue", "Contamination Points") .. colon .. 
            list(
            	b("Increases") .. " the range of the " .. i("Tentacle Strike") .. " attack to " .. clro("6.5 metres") .. dot,
            	b("Increases") .. " the reduced Movement speed while charging and holding the attack to " .. clro("4.0 m/s") .. dot) .. br .. 
            
            b("SPECIAL ATTACK: TENTACLE STRIKE") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to charge a " .. i("Tentacle Strike") .. ", then press the " .. loadoutStrings.attackButton .. " to unleash it." .. nlp ..
            "Survivors hit with a " .. i("Tentacle Strike") .. " grant " .. b("The Nemesis") .. space .. biclr("blue", "Contamination Points") .. " towards his " .. i("Mutation Rate") .. " and become afflicted by " .. biclr("blue", "Contamination") .. colon ..
            list(
            	"Grants " .. clro("+3 Points") .. " for hitting Survivors not yet afflicted by " .. biclr("blue", "Contamination") .. dot,
            	nbullet .. "This also causes the hit Survivor to suffer from a " .. clro("-20 %") .. space .. states(ils.hindered) .. " for " .. clro("2 seconds") .. dot,
            	"Grants " .. clro("+1 Point") .. " for hitting Survivors already afflicted by " .. biclr("blue", "Contamination") .. dot) .. 
            "The " .. i("Tentacle Strike") .. " has a Cool-down time of " .. clro("2.25 seconds") .. dot .. dbr ..
            
            b("SPECIAL AFFLICTION: CONTAMINATION") .. br ..
            "Survivors suffering from " .. biclr("blue", "Contamination") .. " are susceptible to damage from being either by a " .. i("Tentacle Strike") .. " or by a " .. b("Zombie") .. dot .. br ..
            biclr("blue", "Contaminated Survivors") .. " occasionally cough, potentially betraying their location." .. dbr ..
            
            b("SPECIAL ENEMY: ZOMBIES") .. br ..
            "During the Trial, " .. clro(2) .. space .. b(link("Zombies")) .. " spawn and roam randomly through the environment." .. br .. "Both of their " .. iconLink(ils.auras) .. " are revealed to " .. b("The Nemesis") .. " at all times." .. nlp ..
            b("Zombies") .. " can track nearby Survivors and are attracted to " .. i(link("Loud Noise Notifications")) .. dot .. br .. "They can attack Survivors coming too close to them and abide by the same rules as a " .. i("Tentacle Strike") .. " doing so." .. nlp ..
            "Destroying " .. b("Zombies") .. " will cause them to respawn after " .. clro("12 seconds") .. " from below a random " .. iconLink(ils.hook) .. dot .. br .. "Doing so with a " .. i("Tentacle Strike") .. " as " .. b("The Nemesis") .. " will also grant " .. clro("+1 Point") .. " towards " .. i("Mutation Rate") .. dot .. nlp ..
            "Survivors have limited means to counter " .. b("Zombies") .. colon ..
            list(
            	"Using " .. iconLink(ils.flashlights, ils.flashlights, ils.flashlight) .. comma .. iconLink(ils.firecrackers) .. ", or " .. iconLink("Flash Grenades") .. " on them blinds and stuns them in place for " .. clro("15 seconds") .. dot,
            	"Stunning them with a " .. b("Pallet") .. " or " .. iconLink("Head On") .. " destroys them and causes them to respawn after " .. clro("45 seconds") .. dot) .. br ..
            
            b("SPECIAL ITEM: VACCINE") .. img("Vaccine", "48px") .. br ..
            "Survivors can cure themselves or other Survivors from " .. biclr("blue", "Contamination") .. " by locating a " .. iconLink("Supply Case") .. " and searching it for a " .. iconLink("Vaccine") .. colon ..
            list(
            	"A total of " .. clro(4) .. space .. b("Supply Cases") .. " spawn in random locations in the environment.",
            	"The " .. b("Auras") .. " of " .. b("Supply Cases") .. " are revealed to " .. biclr("blue", "Contaminated Survivors") .. " at all times.",
            	"Each " .. b("Supply Case") .. " contains " .. clro(1) .. " single-use " .. b("Vaccine") .. dot,
            	"Using the " .. b("Vaccine") .. " triggers " .. i(link("Killer Instinct")) .. " for " .. clro("3 seconds") .. dot)
    },
    ["Summons of Pain"] = { -- The Cenobite
        desc =
        	pwrImg("Summons of Pain") ..
            quote("An extradimensional gateway that leads to pleasure and pain so great it will tear your soul apart.") .. dbr ..
            
            b("SPECIAL ABILITY: SUMMONS OF PAIN") .. img("Create Gateway", "48px") .. br ..
            "Press the " .. loadoutStrings.powerButton .. " to conjure a " .. i("Gateway") .. " up to " .. clror("16 metres") .. " away in front of " .. b("The Cenobite") .. dot .. br .. "Release the " .. loadoutStrings.powerButton .. " to open the " .. i("Gateway") .. " and possess it." .. dbr ..
            
            b("SPECIAL ATTACK: POSSESSED CHAIN") .. img("Summon Chain", "48px") .. br ..
            "Press the " .. loadoutStrings.attackButton .. " while possessing the " .. i("Gateway") .. " to summon forth a guided " .. b("Possessed Chain") .. " under your control." .. nlp ..
            "Hitting a Survivor with the " .. b("Possessed Chain") .. " causes the following effects:" ..
            list(
            	"Binds the Survivor with " .. clro(3) .. space .. b("Chains") .. dot,
            	b("Reduces") .. " their Movement speed:",
            	nbullet .. clro("1.13 m/s") .. " with " .. bclr("faded jade", "3 Chains") .. dot,
            	nbullet .. clro("1.695 m/s") .. " with " .. bclr("faded jade", "2 Chains") .. dot,
            	nbullet .. clro("2.26 m/s") .. " with " .. bclr("faded jade", "1 Chain") .. dot,
            	"Causes them to suffer from the " .. states(ils.incapacitated) .. dot,
            	b("Suppresses") .. " their ability to run.",
            	b("Blocks") .. " the " .. iconLink(ils.exitGates) .. dot,
            	nbullet .. "This effect lingers for " .. clro("5 seconds") .. " after all " .. b("Chains") .. " are removed.") .. br ..
            
            b("SPECIAL INTERACTION: BREAKING CHAINS") .. img("Break Chains", "48px") .. br ..
            i("Bound Survivors") .. " can perform the " .. i("Break Free") .. " interaction to remove one " .. b("Chain") .. " at a time, each taking " .. clro("1 second") .. dot .. nlp ..
            b("Chains") .. " are broken upon colliding with the environment, which will spawn a replacement " .. b("Chain") .. " that will attempt to bind the Survivor again." .. br ..
            b("Chains") .. " are also broken when colliding with other Players, but this will not spawn a replacement " .. b("Chain") .. dot .. dbr ..
            
            b("SPECIAL ITEM: LAMENT CONFIGURATION") .. img("Lament Configuration", "48px") .. br ..
            "The " .. iconLink("Lament Configuration") .. " spawns in a random location in the environment at the start of the Trial and slowly charges a " .. i("Chain Hunt") .. nlp ..
            "The " .. iconLink(ils.aura) .. " of the " .. b("Lament Configuration") .. " is revealed to Survivors in " .. bclr("white", "white") .. " at all times and changes to " .. bclr("yellow", "yellow") .. " during an active " .. i("Chain Hunt") .. dot .. nlp ..
            "Any Survivor can pick up the " .. b("Lament Configuration") .. " to prevent it from continuing charging a " .. i("Chain Hunt") .. " or ending an on-going one, but not without suffering from the following effects:" .. 
            list(
            	"Causes the Survivor to suffer from a permanent " .. states(ils.oblivious) .. dot,
            	"Causes all of their ambient sounds to be replaced with a haunting tune.",
            	"Triggers a " .. i("Chain Hunt") .. " targetting only them.") .. 
            "The " .. b("Lament Configuration") .. " cannot be dropped, demanding to be solved to remove it from their possession." .. br ..
            "If they are downed by " .. b("The Cenobite") .. ", it is dropped from their grasp and respawns after " .. clro("30 seconds") .. dot .. dbr ..
            
            b("SPECIAL ABILITY: CHAIN HUNT") .. br ..
            "When left to its own devices, the " .. b("Lament Configuration") .. " charges a " .. i("Chain Hunt") .. " over the course of " .. clro("90 seconds") .. dot .. nlp ..
            "During a " .. i("Chain Hunt") .. ", Survivors are repeatedly targetted by " .. b("Chains") .. " spawning from nearby " .. b("Gateways") .. ", which attempt to bind them until " .. clro(3) .. space .. b("Chains") .. " are attached to them." .. br .. "This process continues indefinitely until a Survivor picks up the " .. b("Lament Configuration") .. dot .. nlp ..
            "If " .. b("The Cenobite") .. " picks it up from the ground himself, or downs a Survivor currently holding it, he instantly starts a " .. i("Chain Hunt") .. " in addition to the following effects: " ..
            list(
            	"Causes all Survivors to be bound by " .. clro(3) .. space .. b("Chains") .. dot,
            	"Causes all Survivors to scream and reveal their location for " .. clro("3 seconds") .. dot,
            	"Causes the " .. b("Lament Configuration") .. " to respawn after " .. clro("10 seconds") .. dot) .. 
            "If the condition of the " .. i(b("Last Survivor Standing")) .. " is met, " .. i("Chain Hunts") .. " will still activate, but not spawn any " .. b("Chains") .. ", leaving the " .. i(b("Last Survivor Standing")) .. " untouched." .. dbr .. 
            
            b("SPECIAL INTERACTION: SOLVING") .. img("Solve Lament Configuration", "48px") .. br ..
            "Solving the " .. b("Lament Configuration") .. " takes " .. clro("6 seconds") .. " to complete:" ..
            list(
            	"Triggers " .. i(link("Killer Instinct")) .. dot,
            	"Causes it to disappear and respawn in a random location after " .. clro("45 seconds") .. " upon success.") .. br ..
            
            b("SPECIAL LOCOMOTION: TELEPORT") .. img("Teleport to Lament Configuration", "48px") .. br ..
            "While a Survivor is solving the " .. b("Lament Configuration") .. comma .. b("The Cenobite") .. " is granted the ability to teleport to within " .. clro("10 to 12 metres") .. " of their location." ..
            list("Interrupts the Solving process and briefly binds the Survivor in place with " .. b("Chains") .. " shooting from the " .. b("Lament Configuration") .. dot)
    },
    ["Birds of Torment"] = { -- The Artist
        desc =
        	pwrImg("Birds of Torment") ..
            quote("From a wellspring of eternal agony comes a swarm of darkness, a wild and ferocious murder of ink black crows.") .. dbr ..
            
            b("SPECIAL ABILITY: BIRDS OF TORMENT") .. br ..
            b("The Artist") .. " starts the Trial with " .. clror("3 Tokens") .. dot .. nlp ..
            "Press the " .. loadoutStrings.powerButton .. " to charge " .. i("Birds of Torment") .. " and visualise a " .. i("Flight Path") .. " in front of her." .. br ..
            "Press the " .. loadoutStrings.attackButton .. " to consume " .. clro("-1 Token") .. " to summon a " .. b("Dire Crow") .. " that faces in the direction of the " .. i("Flight Path") .. dot .. br ..
            "Press it again to summon another " .. b("Dire Crow") .. " for each remaining Token." .. dbr ..
            
            b("SPECIAL ATTACK: DIRE CROWS") .. br ..
            b("Dire Crows") .. " can stay idling for up to " .. clro("10 seconds") .. ", before they dissolve." .. br ..
            "The timer is reset each time a new " .. b("Dire Crow") .. " is summoned." .. br ..
            "The " .. iconLink(ils.auras) .. " of all " .. b("Dire Crows") .. " are revealed to " .. b("The Artist") .. " at all times." .. nlp ..
            "Survivors coming into contact with idling " .. b("Dire Crows") .. " are swarmed, but cause them to dissolve instantly." .. nlp ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " to launch all available " .. b("Dire Crows") .. " in the direction of their individual " .. i("Flight Paths") .. dot .. br ..
            "While travelling on their " .. i("Flight Path") .. " of " .. clro("7.5 metres") .. comma .. b("Dire Crows") .. " can damage Survivors coming into contact with them." .. br ..
            "Once a " .. b("Dire Crow") .. " flies past its " .. i("Flight Path") .. " or collides with an obstacle in the environment while still on it, it transforms into a " .. b("Swarm") .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: SWARM") .. br ..
            b("Swarms") .. " continue travelling across the environment, while passing through any environmental obstacles." .. br ..
            "The Auras of travelling " .. b("Swarms") .. " are revealed to all Players at all times." .. br ..
            b("Swarms") .. " trigger " .. i(link("Killer Instinct")) .. " for " .. clro("3 seconds") .. " on all Survivors too close to their path while travelling past them, unless the Survivors are crouching, which avoids detection." .. nlp ..
            "When a " .. b("Swarm") .. " collides with a Survivor, it starts swarming them with a " .. b("Murder of Crows") .. dot .. br ..
            "The Auras of " .. b("Murder of Crows") .. " are revealed to " .. b("The Artist") .. " at all times, unless the " .. i("Swarmed Survivors") .. " start repelling them, causing it to be hidden after " .. clro("2.5 seconds") .. dot .. br ..
            "When a " .. b("Swarm") .. " collides with a " .. i("Swarmed Survivor") .. ", they are damaged." .. dbr ..
            
            b("SPECIAL INTERACTION: REPELLING") .. br ..
            i("Swarmed Survivors") .. " can perform the " .. i("Repel") .. " interaction for " .. clro("8 second") .. " to remove the " .. b("Murder of Crows") .. dot .. br .. 
            "They can also instantly remove it by entering a " .. iconLink(ils.locker) .. dot .. nlp ..
            "If " .. i("Swarmed Survivors") .. " collide with an idling " .. b("Dire Crow") .. " while performing the " .. i("Repel") .. " interaction, the action is reset."
    },
    ["Deluge of Fear"] = { -- The Onryō
        desc =
        	pwrImg("Deluge of Fear", "Deluge of Fear (Demanifested)") ..
            quote("Through the medium of a mysterious videotape, Sadako spreads her curse to unwitting viewers and causes their untimely deaths.") .. dbr ..
            
            b("SPECIAL ABILITY: DELUGE OF FEAR") .. br ..
            b("The Onryō") .. " starts the Trial in the " .. i("Demanifested State") .. ", which has the following effects:" ..
            list(
            	"Grants the " .. states(ils.undetectable) .. dot,
            	nbullet .. "This effect lingers for " .. clror("1 second") .. " after " .. i("Manifesting") .. dot,
            	"Fully invisible to Survivors who are farther than " .. clro("24 metres") .. " away from her.",
            	"Intermittently invisible to Survivors who are within " .. clro("24 metres") .. " of her.",
            	nbullet .. "This effect lingers for " .. clro("4 seconds") .. " after " .. i("Manifesting") .. dot,
            	b("Removes") .. " the ability to attack or interact with Survivors.",
            	nbullet .. b("The Onryō") .. " is still able to interact with Props.",
            	b("The Onryō") .. " cannot be stunned by " .. iconLink(ils.pallets) .. dot) .. br ..
            
            b("SPECIAL ABILITY: MANIFESTATION / DEMANIFESTATION") .. br ..
            "Press the " .. loadoutStrings.powerButton .. " while " .. i("Demanifested") .. " to " .. i("Manifest") .. " and be able to attack and interact with Survivors." .. br ..
            "Press the " .. loadoutStrings.powerButton .. " while " .. i("Manifested") .. " to " .. i("Demanifest") .. " again." .. dbr ..
            
            b("SPECIAL PROP: TV") .. img("TV", "48px") .. br ..
            iconLink("TVs") .. " spawn randomly throughout the environment." .. br ..
            "They are turned off at the start of the Trial, but turn on automatically after " .. clro("30 seconds") .. dot .. br ..
            "They become turned off for " .. clro("70 seconds") .. " after a Survivor inserts a " .. iconLink("VHS Tape") .. " or for " .. clro("45 seconds") .. " after " .. b("The Onryō") .. " projects through it." .. nlp ..
            b("TVs") .. " have an " .. i("Area of Effect") .. " of " .. clro("16 metres") .. " around them within which they apply " .. i("Condemned") .. " and any other applicable effects." .. dbr ..
            
            b("SPECIAL LOCOMOTION: PROJECTION") .. br ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " while " .. i("Demanifested") .. " to project yourself to any powered " .. b("TV") .. " in the environment." .. br ..
            "If the Power Gauge is full when projecting, all Survivors within the " .. i("Area of Effect") .. " of any powered " .. b("TV") .. " receive " .. clro("+1 Stack") .. " of " .. i("Condemned") .. dot .. nlp ..
            "After a " .. i("Projection") .. ", her Movement speed is " .. b("increased") .. " to " .. clro("6.9 m/s") .. " for " .. clro("2 seconds") .. dot .. dbr ..
            
            b("SPECIAL AFFLICTION: CONDEMNED") .. br ..
            "Interacting with the Power of " .. b("The Onryō") .. " causes Survivors to gain " .. i("Condemned") .. ", slowly filling their " .. i("Condemned Meter") .. dot .. br ..
            "Hooking a Survivor locks in some of their " .. i("Condemned") .. " making the affected Stacks impossible to remove:" ..
            list(
            	"The first time being hooked locks in all current " .. i("Condemned") .. " up to " .. clro("3 Stacks") .. ", leaving a minimum of " .. clro("4 Stacks") .. " empty.",
            	"The second time being hooked locks in all current " .. i("Condemned") .. " up to " .. clro("6 Stacks") .. ", leaving a minimum of " .. clro("1 Stack") .. " empty.") ..
            "Once the " .. i("Condemned Meter") .. " is full at " .. clro("7 Stacks") .. ", they are in mortal danger from the " .. i("Inexorable Stare") .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: INEXORABLE STARE") .. img("Mini-Mori", "48px") .. br ..
            "Upon reaching full " .. i("Condemned") .. " the affected Survivors triggers " .. i(link("Killer Instinct")) .. " for " .. clro("6 seconds") .. dot .. br ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " while standing over a downed and fully " .. i("Condemned Survivor") .. " to execute them on the spot, performing a " .. i("Mini-Mori") .. dot .. dbr ..
            
            b("SPECIAL INTERACTIONS: RETRIEVING TAPE / TURNING OFF TV") .. br ..
            "Survivors can walk up to any powered " .. b("TV") .. " and interact with it to retrieve its " .. b("Cursed Tape") .. ", which temporarily turns it off and prevents " .. b("The Onryō") .. " from projecting to it." .. nlp ..
            "Inserting the " .. b("Cursed Tape") .. " into a different " .. b("TV") .. " spreads the message of " .. b("The Onryō") .. " and removes " .. clro("-3 Stacks") .. " of " .. i("Condemned") .. dot
    },
    ["Reign of Darkness"] = { -- The Dredge
        desc =
        	pwrImg("Reign of Darkness") ..
            quote("Like a dark thought, The Dredge is difficult to shake." .. br .. "And when night falls, it is nearly impossible.") .. dbr ..
            
            b("SPECIAL ABILITY: REIGN OF DARKNESS") .. br ..
            b("The Dredge") .. " starts the Trial with " .. clror("3 Tokens") .. dot .. nlp ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to activate " .. i("The Gloaming") .. " while leaving a " .. b("Remnant") .. " behind:" ..
            list(
            	b("Reduces") .. " its Movement speed to " .. clro("4.0 m/s") .. dot,
            	b("Removes") .. " the ability to attack or interact with Survivors or interact with Props.") .. br ..
            
            b("SPECIAL LOCOMOTION: THE GLOAMING") .. br ..
            "While roaming the environment in this state, the " .. iconLink(ils.auras) .. " of all " .. iconLink(ils.lockers) .. " are revealed to " .. b("The Dredge") .. nlp ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " to consume " .. clro("-1 Token") .. " and teleport into any " .. b("Locker") .. " at a speed of " .. clro("19 m/s") .. dot .. br ..
            "Press it again while inside a " .. b("Locker") .. " to teleport into another " .. b("Locker") .. " until all Tokens are consumed." .. nlp ..
            "Press the " .. loadoutStrings.attackButton .. " to cancel " .. i("The Gloaming") .. " and instantly return to the " .. b("Remnant") .. ", if it is still available." .. br ..
            "The " .. b("Remnant") .. " is removed after the first teleport or when a Survivor collides with it." .. nlp ..
            i("The Gloaming") .. " has a cool-down of " .. clro("10 seconds") .. " during " .. i("Daytime") .. " and " .. clro("4 seconds") .. " during " .. i("Nightfall") .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: HIDING INSIDE LOCKERS") .. br ..
            "After teleporting to a " .. b("Locker") .. space .. b("The Dredge") .. " sits inside it and can observe the environment outside." .. br ..
            "While there is no time limit to this, nearby Survivors will hear a warning sound after " .. clro("8 seconds") .. " have elapsed." .. nlp ..
            "Press the " .. loadoutStrings.interactionButton .. " to exit the " .. b("Locker") .. dot .. nlp ..
            "If " .. b("The Dredge") .. " teleports into a " .. b("Locker") .. " already occupied by a Survivor, it will trap the Survivor and emerge from the " .. b("Locker") .. " carrying them." .. br ..
            "This also happens when a Survivor interacts with a " .. b("Locker") .. " in any way that is already occupied by " .. b("The Dredge") .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: LOCKING LOCKERS") .. br ..
            "All " .. b("Lockers") .. " spawn with an open latch on their door that Survivors can interact with to close it and lock the door." .. br ..
            i("Locked Lockers") .. " cannot be entered by Survivors and take priority when " .. b("The Dredge") .. " teleports to them." .. nlp ..
            b("The Dredge") .. " takes " .. clro("2.25 seconds") .. " to open a " .. i("Locked Locker") .. " from the inside, making a lot of noise in the process." .. br ..
            "Once " .. b("The Dredge") .. " emerges from a " .. i("Locked Locker") .. ", its lock is broken permanently." .. br .. 
            b("The Dredge") .. " can also break the lock from the outside by hitting it with a " .. i("Basic Attack") .. dot .. dbr ..
            
            b("SPECIAL AFFLICTION: NIGHTFALL") .. br ..
            "The " .. i("Nightfall Meter") .. " fills passively at a rate of " .. clro("+0.25 c/s") .. " during " .. i("Daytime") .. dot .. br .. "The fill rate is accelerated whenever " .. b("The Dredge") .." uses its Power and when Survivors are injured or hooked:" ..
            list(
            	"Teleporting to the " .. b("Remnant") .. " grants " .. clro("+10 Charges") .. dot,
            	"Hooking a Survivor or injuring them with a " .. i("Basic Attack") .. " grants " .. clro("+20 Charges") .. dot,
            	"Hiding inside a " .. b("Locker") .. " grants " .. clro("+6 c/s") .. dot,
            	"Each injured Survivor grants a stack-able " .. clro("+1 c/s") .. ", up to a maximum of " .. clro("+4 c/s") .. dot) ..
            "Once the " .. i("Nightfall Meter") .. " is full at " .. clro("300 Charges") .. comma .. i("Nightfall") .. " begins and lasts for " .. clro("60 seconds") .. ", forcing Survivors to navigate the environment in near-total darkness while " .. b("The Dredge") .. " benefits from clearer vision and several effects:" ..
            list(
            	"Grants the " .. states(ils.undetectable) .. dot,
            	b("Increases") .. " its Teleporation speed to " .. clro("38 m/s") .. dot,
            	b("Reduces") .. " the Cool-down duration of " .. i("The Gloaming") .. " to " .. clro("4 seconds") .. dot,
            	"Survivors trigger " .. i(link("Killer Instinct")) .. " within " .. clro("16 metres") .. " of " .. b("Lockers") .. " occupied by " .. b("The Dredge") .. " or " .. b("The Remnant") .. " upon returning to it.")
    },
    ["Virulent Bound"] = { -- The Mastermind
        desc =
        	pwrImg("Virulent Bound") ..
            quote("The Mastermind can barrel forwards, infecting Survivors with the Uroboros Virus or leaping over obstacles.") .. dbr ..
            
            b("SPECIAL ABILITY: VIRULENT BOUND") .. br ..
            b("The Mastermind") .. " starts the Trial with " .. clror("2 Tokens") .. dot .. dbr ..
            
            b("SPECIAL ATTACK: BOUND ATTACK") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to charge " .. i("Virulent Bound") .. ", " .. b("reducing") .. " his Movement speed to " .. clro("3.68 m/s") .. " while he prepares to strike." .. br ..
            "Press the " .. loadoutStrings.attackButton .. " to initiate a " .. i("Bound Attack") .. ", consuming " .. clro("-1 Token") .. ", or release the " .. loadoutStrings.powerButton .. " to cancel it." .. br ..
            "Press the " .. loadoutStrings.attackButton .. " again during the " .. i("Chain Bound Window") .. " of " .. clro("2 seconds") .. " to initiate a second, longer " .. i("Bound Attack") .. ", if there is still a Token available:" ..
            list(
            	b("Increases") .. " his Movement speed to " .. clro("14 m/s") .. " during a " .. i("Bound Attack") .. dot,
            	nbullet .. "The first " .. i("Bound") .. " lasts for " .. clro("0.5 seconds") .. dot,
            	nbullet .. "The second " .. i("Bound") .. " lasts for " .. clro("1 second") .. dot) .. br ..
            
            b("SPECIAL INTERACTION: SURVIVOR COLLISION") .. br ..
            "Colliding with a Survivor at any point during a " .. i("Bound Attack") .. " has multiple possible effects and interactions, which depend on the Survivor's current state regarding their health, infection, and interaction:" ..
            list(
            	"If the Survivor is interacting with a Prop or another Survivor, or is protected from entering the " .. iconLink(ils.dyingState) .. " by a third-party effect, " .. b("The Mastermind") .. " attacks them with a quick swipe of his tentacles, infecting them with " .. biclr("white", "Uroboros") .. " if they are not infected already:",
            	nbullet .. biclr("white", "Infected Survivors") .. " receive damage.",
            	nbullet .. biclr("bright red", "Critically Infected Survivors") .. " receive double damage and are downed, unless they are protected.",
            	"If the Survivor is not interacting with a Prop or another Survivor, " .. b("The Mastermind") .. " grabs them with his tentacles, infecting them with " .. biclr("white", "Uroboros") .. " if they are not infected already, and continues travelling the remaining distance of his " .. i("Bound Attack") .. dot,
            	nbullet .. "If he collides with an obstacle before ending the " .. i("Bound Attack") .. ", any of the following applies:",
            	ndbullet .. biclr("white", "Infected Survivors") .. " receive damage, after which injured Survivors are released and dying Survivors are hoisted onto his shoulder.",
            	ndbullet .. biclr("bright red", "Critically Infected Survivors") .. " receive double damage and are hoisted onto his shoulder.",
            	ndbullet .. "If the obstacle that he collides with is a Survivor, then the Survivor he collided with will become Injured and suffer from the " .. effects("power", "Virulent Bound", ils.deepWound) .. dot,
            	nbullet .. "If he does not collide with an obstacle before ending the " .. i("Bound Attack") .. ", he throws the Survivor in a straight line, after which any of the following applies:",
            	ndbullet .. "Survivors receive damage, if they collide with an obstacle during the throw, after which injured Survivors are released and dying Survivors are downed.",
            	ndbullet .. "If the obstacle that the Survivor collides with is another Survivor, then the Survivor that they collided with will become Injured and suffer from the " .. effects("power", "Virulent Bound", ils.deepWound) .. dot,
            	"In the case of the Survivor being grabbed, the " .. iconLink(ils.exitGates) .. " are blocked to the Survivor for the duration of the " .. i("Bound Attack") .. dot,
            	nbullet .. "This effect lingers for " .. clro("5 seconds") .. " after they are released.") .. br ..
            
            b("SPECIAL INTERACTION: VIRULENT VAULT") .. br ..
            "Colliding with a dropped " .. iconLink(ils.pallet) .. " or a " .. iconLink(ils.window) .. " during a " .. i("Bound Attack") .. " causes " .. b("The Mastermind") .. " to automatically vault over it." ..
            list(
            	"Colliding with a Survivor standing on the other side of a " .. b("Window") .. " or dropped " .. b("Pallet") .. " during a " .. i("Virulent Vault") .. " damages them.",
            	nbullet .. biclr("bright red", "Critically Infected Survivors") .. " receive double damage and are downed, unless they are protected.") .. br ..
            
            b("SPECIAL AFFLICTION: UROBOROS INFECTION") .. br ..
            biclr("white", "Uroboros") .. " grows in strength over time, which is indicated with an " .. i("Infection Meter") .. " on the Survivor Portraits in the HUD:" ..
            list(
            	"Both " .. i("Uninfected Survivors") .. " and " .. biclr("white", "Infected Survivors") .. " gain " .. clro("+20 Charges") .. " upon colliding with " .. b("The Mastermind") .. " during a " .. i("Bound Attack") .. dot, 
            	biclr("white", "Infected Survivors") .. " passively gain " .. clro("+0.8 c/s") .. " at all times, unless they are hooked or downed.") ..
            "Being hooked resets the " .. i("Infection Meter") .. " to " .. clro("1 Charge") .. dot .. nlp ..
            "Once the " .. i("Infection Meter") .. " is full at " .. clro("100 Charges") .. comma .. biclr("white", "Infected Survivors") .. " become " .. biclr("bright red", "Critically Infected") .. colon ..
            list("Causes them to suffer from a permanent " .. clro("#hindered") .. space .. effects("power", "Virulent Bound", ils.hindered) .. dot) .. br ..
            
            b("SPECIAL ITEM: FIRST AID SPRAY") .. img("First Aid Spray", "48px") .. br ..
            "Survivors can cure themselves or other Survivors from " .. biclr("white", "Uroboros") .. " by locating a " .. iconLink("Supply Case") .. " and searching it for a " .. iconLink("First Aid Spray") .. colon ..
            list(
            	"A total of " .. clro(6) .. space .. b("Supply Cases") .. " spawn in random locations in the environment.",
            	"The " .. b("Auras") .. " of " .. b("Supply Cases") .. " are revealed to " .. i("Infected Survivors") .. " at all times.",
            	"Each " .. b("Supply Case") .. " contains " .. clro(1) .. space .. b("First Aid Spray") .. " with " .. clro(2) .. " uses.",
            	"Using the " .. b("First Aid Spray") .. " triggers " .. i(link("Killer Instinct")) .. " for " .. clro("4 seconds") .. dot)
    },
    ["Guardia Compagnia"] = { -- The Knight
        desc =
        	pwrImg("Carnifex", "Assassin", "Jailer") ..
            quote("The Knight alone is a terrifying monster on the battlefield, but with his loyal Guards, he is nearly unstoppable." .. br .. "Together, the Guardia Compagnia fights for their own freedom, killing anyone who gets in their way.") .. dbr ..
            
            b("SPECIAL ABILITY: GUARDIA COMPAGNIA") .. br ..
            b("The Knight") .. " can summon his three loyal companions one at a time to patrol nearby areas, hunt Survivors, or perform tasks on his behalf." .. dbr ..
            
            b("SPECIAL ABILITY: GUARD SUMMON") .. br ..
            "Press and hold the " .. loadoutStrings.secondaryPowerButton .. " to cycle through the " .. clror(3) .. space .. b(link("Guards")) .. dot .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to enter the " .. i("Guard Summon Mode") .. dot .. br ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " to exit it at any time." .. nlp ..
            "While in the " .. i("Guard Summon Mode") .. comma .. b("The Knight") .. " can move forwards at " .. clro("13.8 m/s") .. " while steering with his camera, represented to Survivors as a " .. bclr("screamin' green", "Ghostly Orb") .. " that quickly fades to become invisible after exceeding " .. clro("10 metres") .. dot .. br .. "Moving in this form leaves a trail known as the " .. biclr("screamin' green", "Patrol Path") .. dot .. nlp ..
            b("The Knight") .. " automatically exits the " .. i("Guard Summon Mode") .. " after exceeding the maximum length of the " .. biclr("screamin' green", "Patrol Path") .. " of " .. clro("32 metres") .. " or after " .. clro("10 seconds") .. " have elapsed." .. nlp ..
            b("The Knight") .. " is unable to see Survivors in this mode, as well as their " .. iconLink(ils.scratchMarks) .. " and " .. iconLink(ils.poolsOfBlood) .. ", but can still see their interactions with the environment." .. nlp ..
            b("The Knight") .. " can summon a new " .. b("Guard") .. " at any time while another one is already active, causing that one to de-spawn and go on cool-down." .. dbr ..
            
            b("SPECIAL COMPANIONS: GUARDS") .. br ..
            "Each of the " .. clro(3) .. space .. b("Guards") .. " comes with his own special abilities and has their own separate cool-down:" ..
            list(
            	b("The Carnifex") .. img("Carnifex", "48px") .. " performs a " .. i("Guard Order") .. " more quickly and has a shorter cool-down.",
            	b("The Assassin") .. img("Assassin", "48px") .. " walks faster during a " .. i("Hunt") .. " and inflicts hit Survivors with " .. states(ils.deepWound) .. dot,
            	b("The Jailer") .. img("Jailer", "48px") .. " walks faster during a " .. i("Patrol") .. ", has a larger Detection range, and longer " .. i("Hunt and Patrol") .. " durations.") .. br ..
            
            b("SPECIAL ABILITY: GUARD PATROL") .. br ..
            "While in the " .. i("Guard Summon Mode") .. " drawing a " .. biclr("screamin' green", "Patrol Path") .. " of at least " .. clro("10 metres") .. " grants the ability to order a " .. i("Guard Patrol") .. ", summoning a " .. b("Guard") .. " at the far end of the " .. biclr("screamin' green", "Patrol Path") .. ", causing him to repeatedly walk it up and down until either the Power Gauge is depleted or he detects a nearby Survivor, which will initiate a " .. i("Hunt") .. dot .. br .. "Additionally, the following effects apply, depending on the final length of the " .. biclr("screamin' green", "Patrol Path") .. colon ..
            list(
            	"Grants " .. b("The Knight") .. " a " .. clro("+5 %") .. space .. states(ils.haste) .. " for " .. clro("2 to 10 seconds") .. dot,
            	b("Reduces") .. " the duration of the " .. i("Hunt") .. " Start-up phase of a " .. b("Guard") .. " by " .. clro("-10 to -25 %") .. dot,
            	b("Increases") .. " the duration of the " .. i("Hunt") .. " of a " .. b("Guard") .. " by a factor of " .. clro("x1 to x1.5") .. colon,
            	nbullet .. bclr("faded jade", "1 to 15 metres") .. colon .. space .. b("x1"),
            	nbullet .. bclr("faded jade", "16 to 25 metres") .. colon .. space .. b("x1.25"),
            	nbullet .. bclr("faded jade", "26+ metres") .. colon .. space .. b("x1.5"),
            	b("Increases") .. " the Materialisation phase of the " .. b("Standard") .. " placed by a " .. b("Guard") .. " by a factor of " .. clro("x1 to x2") .. colon,
            	nbullet .. bclr("faded jade", "1 to 15 metres") .. colon .. space .. b("x1"),
            	nbullet .. bclr("faded jade", "16 to 25 metres") .. colon .. space .. b("x1.5"),
            	nbullet .. bclr("faded jade", "26+ metres") .. colon .. space .. b("x2")) ..
            b("The Knight") .. " can cancel an active " .. i("Patrol") .. " by hitting the " .. b("Guard") .. " with a " .. i("Basic Attack") .. colon ..
            list(b("Reduces") .. " the Cool-down duration of that " .. b("Guard") .. " for that time to " .. clro("10 seconds") .. dot) .. br ..
            
            b("SPECIAL ABILITY: GUARD ORDER") .. br ..
            "While in the " .. i("Guard Summon Mode") .. ", press the " .. loadoutStrings.attackButton .. " while within " .. clro("6 metres") .. " of a " .. iconLink(ils.breakableWall) .. ", dropped " .. iconLink(ils.pallet) .. ", or partially repaired " .. iconLink(ils.generator) .. " to initiate a " .. i("Guard Order") .. ", causing the summoned " .. b("Guard") .. " to perform the " .. i("Break or Damage") .. " action on the highlighted object." .. nlp ..
            "A " .. i("Guard Order") .. " regresses a " .. b("Generator") .. " by " .. clro("-5 %") .. dot .. dbr ..
            
            b("SPECIAL ATTACK: GUARD HUNT") .. br .. 
            "If a Survivor is inside the Detection range of a " .. b("Guard") .. " and either in his line-of-sight or triggers a " .. i(link("Loud Noise Notification")) .. ", the " .. b("Guard") .. " will detect their presence and phase through the environment, including through floors and across elevation, to reach their exact detected location over " .. clro("2.5 seconds") .. ", after which he starts a " .. i("Hunt") .. " , chasing after the " .. i("Hunted Survivor") .. colon ..
            list(
            	"Places a " .. b("Standard") .. " at the exact detected location of the Survivor, which materialises over several seconds.",
            	"Damages any Survivor coming into its attack range, regardless of whether they are the " .. i("Hunted Survivor") .. " or not.") ..
            i("Hunted Survivors") .. " can escape a " .. i("Hunt") .. " unharmed by doing either of the following:" ..
            list(
            	"Grabbing the materialised " .. b("Standard") .. " by walking into it.",
            	nbullet .. "This also grants the Survivor a " .. clro("+50 %") .. space .. states(ils.haste) .. " and the " .. states(ils.endurance) .. ", both lasting for " .. clro("3 seconds") .. dot,
            	"Unhooking another Survivor.",
            	"Outlasting the duration of the " .. i("Hunt") .. " indicated on their HUD portrait.") ..
            "If " .. b("The Knight") .. " comes within " .. clro("8 metres") .. " of his " .. b("Guard") .. ", the Depletion rate of the " .. i("Hunt") .. " is " .. b("increased") .. " by a factor of " .. clro("x3") .. dot .. br ..
            "If either the " .. b("Guard") .. " or " .. b("The Knight") .. " damages the " .. i("Hunted Survivor") .. ", the " .. i("Hunt") .. " ends immediately and the former disappears." .. br ..
            "If the " .. b("Guard") .. " downs the " .. i("Hunted Survivor") .. ", they trigger " .. i(link("Killer Instinct")) .. " for " .. clro("3 seconds") .. dot
    },
    ["Eyes in the Sky"] = { -- The Skull Merchant
        desc =
        	pwrImg("Eyes in the Sky", "Eyes in the Sky (Radar)") ..
            quote("Inspired by the dark manga created by her father, The Skull Merchant relentlessly hunts her prey using the latest in surveillance technology.") .. dbr ..
            
            b("SPECIAL ABILITY: EYES IN THE SKY") .. br ..
            b("The Skull Merchant") .. " starts the Trial with " .. clror(6) .. space .. b("Drones") .. " in her inventory." .. nlp ..
            "When a Survivor is tracked by a " .. b("Drone") .. " within " .. clro("5 seconds") .. " of it being deployed or having its rotation direction changed, " .. b("The Skull Merchant") .. " is granted a " .. clro("#haste") .. space .. effects("power", "Eyes in the Sky", ils.haste) .. " for " .. clro("#durationHaste") .. dot .. br ..
            "This effect is entirely passive and does not require her to inspect her " .. i("Radar") .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: INSPECTING RADAR") .. br .. 
            "Press the " .. loadoutStrings.secondaryPowerButton .. " to bring up her " .. i("Radar") .. dot .. br ..
            "The " .. i("Radar") .. " displays the location of all " .. i("Trackable Survivors") .. " and reveals the " .. iconLink(ils.auras) .. " of " .. b("Drone") .. space .. i("Scan Lines") .. " within " .. clro("32 metres") .. colon ..
            list(
            	"The Survivor was detected by a " .. b("Drone") .. " in the last " .. clro("12 seconds") .. dot,
            	"The Survivor is wearing a " .. b("Claw Trap") .. dot) .. 
            "The " .. i("Radar") .. " represents " .. i("Trackable Survivors") .." with symbols that indicate their relative elevation compared to " .. b("The Skull Merchant") .. colon ..
            list(
            	"<big>■</big> = same elevation",
            	"▲ = above her",
            	"▼ = below her") .. br ..
            
            b("SPECIAL INTERACTION: RECALLING DRONES") .. br .. 
            "While inspecting the " .. i("Radar") .. " and aiming at a specific " .. b("Drone") .. ", press the " .. loadoutStrings.powerButton .. " to recall it into your inventory." .. br ..
            "This interaction grants the " .. effects("power", "Eyes in the Sky", ils.undetectable) .. " for " .. clro("#undetectable") .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: CHANGING ROTATIONAL DIRECTION") .. br .. 
            "While inspecting the " .. i("Radar") .. " and aiming at a specific " .. b("Drone") .. ", press the " .. loadoutStrings.attackButton .. " to change the Rotational direction of its " .. i("Scan Lines") .. dot .. dbr ..
            
            b("SPECIAL ABILITY: DEPLOYING DRONES") .. br ..
            "Press the " .. loadoutStrings.powerButton .. " to deploy a " .. b("Drone") .. colon ..
            list(
            	"Conducts a sweeping scan inside its " .. i("Area of Effect") .. " at a Rotational speed of " .. clro("105 °/s") .. dot,
            	"Its Aura is revealed to " .. b("The Skull Merchant") .. " in " .. bclr("yellow", "yellow") .. " at all times.") ..
            "Once a Survivor is detected inside the " .. i("Area of Effect") .. colon ..
            list(
            	"Fills the " .. i("Lock On Meter") .. " by " .. clro("+1 Stack") .. dot) .. 
            	"This effects repeats each time a Survivor is detected, unless the detection occurs within " .. clro("2.5 seconds") .. " of the previous one." .. dbr ..
            "All " .. b("Drones") .. " have an " .. i("Area of Effect") .. " with a radius of " .. clro("10 metres") .. dot .. br ..
            b("Drone ") .. i("Scan Lines") .. " are only visible within " .. clro("16 metres") .. dot .. br ..
            "Survivors who are crouching, standing still or performing a Fast Vault inside the " .. i("Area of Effect") .. " cannot be detected by the " .. i("Scan Lines") .. dot .. dbr ..
            
            b("SPECIAL AFFLICTION: LOCK ON") .. br ..
            "Once the " .. i("Lock-On Meter") .. " is full at " .. clro("3 Stacks") .. ", the Survivor becomes " .. biclr("orange", "Locked On") .. " and suffers from the following effects:" ..
            list(
            	"Healthy Survivors receive damage and become injured.",
            	"Injured Survivors suffer from the " .. effects("power", "Eyes in the Sky", ils.deepWound) .. dot,
            	"Suffer from the " .. effects("power", "Eyes in the Sky", ils.broken) .. " regardless of their Health State.",
            	"Receive a " .. b("Claw Trap") .. dot) .. 
            "If a Survivor stands below an elevated " .. b("Drone") .. " for longer than " .. clro("1 second") .. ", they are instantly scanned and become " .. biclr("orange", "Locked On") .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: HACKING DRONES") .. br ..
            "Survivors can approach a " .. b("Drone") .. " in either of its two states and hack it through a unique mini-game:" ..
            list(
            	"Succeeding disables the " .. b("Drone") .. " for " .. clro("45 seconds") .. dot,
            	"Failing fills the " .. i("Lock On Meter") .. " by " .. clro("+1 Stack") .. dot) .. br ..
            
            b("SPECIAL AFFLICTION: CLAW TRAP") .. br ..
            "The " .. i("Claw Trap") .. " attached to a Survivor's arm has a Battery life of " .. clro("45 seconds") .. " and continuously broadcasts their location to the " .. i("Radar") .. " of " .. b("The Skull Merchant") .. " until it runs out, automatically destroying it." .. nlp ..
            i("Claw-Trapped Survivors") .. " who are scanned by a " .. b("Drone") .. " suffer from the following effects:" ..
            list(
            	"Applies a " .. clro("#hindered") .. space .. effects("power", "Eyes in the Sky", ils.hindered) .. " for " .. clro("#durationHindered") .. dot,
            	"Triggers " .. i(link("Killer Instinct")) .. " for " .. clro("3 seconds") .. dot)
    },
    ["Quantum Instantiation"] = { -- The Singularity
        desc =
        	pwrImg("Quantum Instantiation") ..
            quote("A dark crystalline structure in an ancient ruin gifted — or perhaps cursed — HUX with sentience." .. br .. "He built a new body, and with it, a terrifying way to bend the rules of physics to his benefit.") .. dbr ..
            
            b("SPECIAL ABILITY: QUANTUM INSTANTIATION") .. br ..
            b("The Singularity") .. " starts the Trial with " .. clror(8) .. space .. b("Biopods") .. " in his inventory." .. br ..
            "Placing additional " .. b("Biopods") .. " will recycle the oldest one." .. dbr ..
            
            b("SPECIAL ABILITY: SHOOTING BIOPODS") .. br ..
            "Press the " .. loadoutStrings.powerButton .. " to bring up his gun, indicating available target locations on the HUD." .. br ..
            "Press the " .. loadoutStrings.attackButton .. " to shoot a " .. b("Biopod") .. colon ..
            list(
            	"Shoot it at an available target location within " .. clro("22 metres") .. " to place it.",
            	"Shoot it at an already placed " .. b("Biopod") .. " to remove it.",
            	"Shoot it at a " .. biclr("lavender", "Slipstreamed Survivor") .. " to teleport to them.") .. 
            "The " .. iconLink(ils.auras) .. " of " .. b("Biopods")  .. " are revealed to " .. b("The Singularity") .. " at all times." .. dbr ..
            
            b("SPECIAL INTERACTION: CONTROLLING BIOPODS") .. br ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " to control a " .. b("Biopod") .. ", taking on its POV and allowing " .. b("The Singularity") .. " to observe the environment and Survivors through it." .. br ..
            "Press and hold the " .. loadoutStrings.secondaryPowerButton .. " instead to activate auto-aim, causing the controlled " .. b("Biopod") .. " to target the nearest Survivor in range:" ..
            list(
            	"Press or press and hold the " .. loadoutStrings.secondaryPowerButton .. " again while aiming at another " .. b("Biopod") .. " to control it instead.",
            	"Press the " .. loadoutStrings.powerButton .. " to return to the previously controlled " .. b("Biopod") .. ", which is highlighted in " .. bclr("yellow", "yellow") .. " for " .. clro("10 seconds") .. " after leaving it.",
            	"Press the " .. loadoutStrings.interactionButton .. " to exit the currently controlled " .. b("Biopod") .. " and return to " .. b("The Singularity") .. dot,
            	"Press the " .. loadoutStrings.attackButton .. " while controlling a disabled " .. b("Biopod") .. " to destroy it, taking " .. clro("0.75 seconds") .. dot) .. 
            "If a Survivor is within " .. i("Line of Sight") .. " of a controlled " .. b("Biopod") .. ", as well as within a distance of " .. clro("20 metres") .. ", their outline is highlighted in " .. bclr("white", "white") .. " and aiming the reticule at them will begin to tag them with " .. biclr("lavender", "Temporal Slipstream") .. ", unless they hide or move out of range." .. nlp ..
            b("Biopods") .. " indicate their current state while controlling them based on the colour of the HUD:" ..
            list(
            	bclr("screamin' green", "Overclock Green") .. colon .. space .. b("Biopod") .. " is idle or tagging a Survivor with " .. i("Temporal Slipstream") .. dot,
            	bclr("lavender", "Temporal Purple") .. colon .. space .. b("Biopod") .. " is charging a " .. i("Slipstream Teleport") .. dot,
            	bclr("white", "white") .. colon .. space .. b("Biopod") .. " is on cool-down.",
            	bclr("red", "Red") .. colon .. space .. b("Biopod") .. " is being destroyed by " .. b("The Singularity") .. " or disabled from an " .. b("EMP") .. dot) .. dbr ..
            
            b("SPECIAL AFFLICTION: TEMPORAL SLIPSTREAM") .. br ..
            "Successfully tagging a Survivor with " .. biclr("lavender", "Temporal Slipstream") .. " makes them vulnerable to the Teleportation Power of " .. b("The Singularity") .. br ..
            biclr("lavender", "Temporal Slipstream") .. " spreads to other Survivors within " .. clro("6 metres") .. " over the duration of " .. clro("2 seconds") .. dot .. nlp ..
            "A Survivor receiving " .. biclr("lavender", "Temporal Slipstream") .. " from a " .. b("Biopod") .. " or a nearby " .. i("Slipstreamed Survivor") .. " triggers " .. i(link("Killer Instinct")) .. " for " .. clro("3 seconds") .. dot .. dbr ..
            
            b("SPECIAL ABILITY: SLIPSTREAM TELEPORTATION") .. br ..
            b("The Singularity") .. " can perform a " .. i("Slipstream Teleport") .. " to any " .. biclr("lavender", "Slipstreamed Survivor") .. " by either aiming the reticule of a controlled " .. b("Biopod") .. " at them or shooting them directly with a " .. b("Biopod") .. dot .. nlp ..
            "Teleporting through the path of a dropped " .. b("Pallet") .. " causes it to instantly break and transitions " .. b("The Singularity") .. " into " .. biclr("red", "Overheat Mode") .. dot .. nlp ..
            "Performing a " .. i("Slipstream Teleport") .. " automatically puts " .. b("The Singularity") .. " into " .. biclr("screamin' green", "Overclock Mode") .. dot .. dbr ..
            
            b("SPECIAL STATE: OVERCLOCK MODE") .. br ..
            biclr("screamin' green", "Overclock Mode") .. " lasts for " .. clro("5.7 seconds") .. " and grants the following effects to the " .. b("The Singularity") .. colon ..
            list(
            	b("Increases") .. " the base Movement speed of " .. b("The Singularity") .. " by " .. clro("#OCMode_speed") .. dot,
            	b("Increases") .. " the Action speeds for damaging " .. iconLink(ils.generators) .. ", breaking " .. iconLink(ils.breakableWalls) .. " and dropped " .. iconLink(ils.pallets) .. ", and vaulting " .. iconLink(ils.windows) .. " by " .. clro("+75 %") .. dot,
            	"Grants immunity from being stunned by any means" .. colon,
            	nbullet .. "Attempting a " .. b("Pallet") .. " stun causes the " .. b("Pallet") .. " to be broken instantly" .. dot,
            	nbullet .. b("The Singularity") .. " transitions into " .. biclr("red", "Overheat Mode") .. " when resisting a stun, deactivating " .. biclr("screamin' green", "Overclock Mode") .. dot) .. br ..
            
            b("SPECIAL STATE: OVERHEAT MODE") .. br ..
            biclr("red", "Overheat Mode") .. " applies for " .. clro("3 seconds") .. " whenever " .. b("The Singularity") .. " instantly breaks a " .. b("Pallet") .. " by performing a " .. i("Slipstream Teleport") .. " through a dropped one or a Survivor attempts to stun him by any means while he is in " .. biclr("screamin' green", "Overclock Mode") .. colon ..  
            list("Incurs " .. clro("#hindered") .. space .. effects("power", "Quantum Instantiation", ils.hindered) .. dot,
            	"Prevents the ability to control or shoot " .. b("Biopods") .. dot) .. br ..
            
            b("SPECIAL ITEM: ELECTROMAGNETIC PULSE DEVICE") .. img("EMP", "48px") .. br ..
            "A total of " .. clro(4) .. space .. iconLink("Supply Cases") .. " are placed throughout the environment, each containing an " .. iconLink("EMP") .. dot .. br ..
            "The Auras of " .. b("Supply Cases") .. " are revealed to all Survivors within " .. clro("28 metres") .. ", who are not already carrying an " .. b("EMP") .. colon ..
            list(
            	"The Aura is revealed in " .. bclr("white", "white") .. " while printing.",
            	"The Aura is revealed in " .. bclr("yellow", "yellow") .. " when reaching the Printing limit.") .. 
            "Using an " .. b("EMP") .. " has the following effects within its " .. i("Area of Effect") .. " of " .. clro("10 metres") .. colon ..
            list(
            	b("Removes") .. space .. biclr("lavender", "Temporal Slipstream") .. " from all nearby Survivors.",
            	b("Disables") .. " all nearby " .. b("Biopods") .. " for " .. clro("45 seconds") .. dot)
    },
    ["Hidden Pursuit"] = { -- The Xenomorph
        desc =
        	pwrImg("Hidden Pursuit", "Hidden Pursuit (Crawler Mode)") ..
            quote("Supposedly responding to a distress signal, the Nostromo's crew landed on LV-426." .. br .. "What they found there became one of humanity's greatest horrors.") .. dbr ..
            
            b("SPECIAL ABILITY: HIDDEN PURSUIT") .. br ..
            b("The Xenomorph") .. " has a set of intertwining " .. i("Tunnels") .. " available to it beneath the environment that it can access from any of the " .. clror("#CS_amount") .. space .. b("Control Stations") .. " spawning in the environment." .. dbr ..
            
            b("SPECIAL OBJECT: CONTROL STATIONS") .. br ..
            "The " .. iconLink(ils.auras) .. " of " .. b("Control Stations") .. " are revealed to " .. b("The Xenomorph") .. " in " .. bclr("white", "white") .. " at all times and within " .. clro("#CS_auraRange") .. " to nearby Survivors." .. dbr ..
            
            b("SPECIAL INTERACTION: HIGHLIGHTING CONTROL STATIONS") .. br ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " while aiming at any " .. b("Control Station") .. " to highlight it in " .. bclr("yellow", "yellow") .. colon ..
            list("This reveals the shortest path to that " .. b("Control Station") .. " when navigating through the " .. i("Tunnels") .. dot) .. 
            "When near an " .. iconLink(ils.exitGate) .. ", the nearest " .. b("Control Station") .. " is automatically highlighted." .. dbr ..
            
            b("SPECIAL LOCOMOTION: TUNNELS") .. br ..
            "Press the " .. loadoutStrings.interactionButton .. " at a " .. b("Control Station") .. " to enter the " .. i("Tunnels") .. colon ..
            list(
            	"Grants the " .. effects("power", "Hidden Pursuit", ils.undetectable) .. dot,
            	b("Increases") .. " its Movement speed to " .. clro("#tunnelSpeed") .. dot,
            	b("Increases") .. " the Charge speed of " .. i("Crawler Mode") .. " to " .. clro("#CM_tunnelChargeRate") .. dot) ..
            "Press it again while underneath the same or another " .. b("Control Station") .. " to exit the " .. i("Tunnels") .. ", which triggers the following effects within " .. clro("#CS_AOE") .. " of the " .. b("Control Station") .. colon ..
            list(
            	"Triggers " .. i(link("Killer Instinct")) .. " for " .. clro("#KI_duration") .. dot,
            	"Deactivates any deployed " .. b("Turrets") .. " for " .. clro("#turretTunnelExit") .. dot) .. br ..
            
            b("SPECIAL ABILITY: TRACKING FOOTSTEPS") .. br .. 
            "While inside the " .. i("Tunnels") .. comma .. b("The Xenomorph") .. " can detect the movement of Survivors walking or running above it within " .. clro("#tunnelFootsteps") .. " of its location, indicated by reddish footsteps spawning on the ceiling." .. br ..
            "Survivors can avoid being detected by crouching or standing still." .. dbr ..
            
            b("SPECIAL STATE: CRAWLER MODE") .. br ..
            b("The Xenomorph") .. " passively charges " .. i("Crawler Mode") .. " at a rate of " .. clro("#CM_chargeRate") .. " when outside of the " .. i("Tunnels") .. dot .. br ..
            "Once the Power Gauge is full at " .. clro("#CM_chargeCapacity") .. ", it automatically enters it:" ..
            list(
            	"Causes " .. b("The Xenomorph") .. " to walk on all fours.",
            	b("Reduces") .. " its " .. iconLink(ils.terrorRadius) .. " to " .. clro("#CM_terrorRadius") .. dot,
            	"Grants the ability to perform a " .. i("Tail Strike Attack") .. dot) ..
            "There are only two ways for " .. b("The Xenomorph") .. " to exit this mode:" ..
            list(
            	"It picks up and carries a downed Survivor.",
            	"It receives too much fire damage from " .. b("Remote Flame Turrets") .. dot) .. br ..
            
            b("SPECIAL ATTACK: TAIL STRIKE") .. br ..
            "While in " .. i("Crawler Mode") .. ", press the " .. loadoutStrings.powerButton .. " to perform a " .. i("Tail Strike") .. ", which has an increased reach of " .. clro("#TS_reach") .. dot .. dbr ..
            
            b("SPECIAL ITEM: REMOTE FLAME TURRET") .. img("Remote Flame Turret", "48px") .. br ..
            "Survivors can interact with a " .. b("Control Station") .. " to retrieve up to " .. clro("#turret_amount") .. space .. iconLink("Remote Flame Turrets") .. " in total and deploy them in the environment to counteract " .. b("The Xenomorph") .. br ..
            b("Turrets") .. " can also be undeployed, carried to a new location, and be redeployed." .. nlp ..
            "While carrying a " .. b("Turret") .. ", Survivors experience the following effects:" ..
            list(
            	"Causes them to suffer from a " .. clro("#hindered") .. space .. effects("power", "Hidden Pursuit", ils.hindered) .. " and the " .. effects("power", "Hidden Pursuit", ils.exhausted, ils.incapacitated) .. dot,
            	"Grants immunity from being detected by " .. b("The Xenomorph") .. " when it is inside the " .. i("Tunnels") .. dot,
            	"Reveals their Aura and that of the " .. b("Turret") .. " to other Survivors.") ..
            "Whenever " .. b("The Xenomorph") .. " comes within " .. clro("#turret_attackRange") .. " of a " .. b("Turret") .. " while in " .. i("Crawler Mode") .. " and has " .. i("Line of Sight") .. " with it, the " .. b("Turret") .. " attacks, staggering " .. b("The Xenomorph") .. " and inflicting fire damage, indicated by the Power gauge filling in " .. bclr("bright red", "red") .. dot .. br ..
            "Once the Power gauge is full at " .. clro("#flameLimit") .. ", " .. b("The Xenomorph") .. " is stunned and knocked out of " .. i("Crawler Mode") .. dot .. nlp ..
            b("The Xenomorph") .. " can destroy deployed " .. b("Turrets") .. " by attacking them, causing them to return to " .. b("Control Stations") .. " after " .. clro("#turret_respawn") .. dot .. nlp ..
            b("Control Stations") .. " have a cool-down of " .. clro("#CS_turretCooldown") .. ", before another " .. b("Turret") .. " can be retrieved from the same one." .. dbr ..
            
            quote("Its structural perfection is matched only by its hostility.", "Ash, Science Officer")
    },
    ["Playtime's Over"] = { -- The Good Guy
        desc =
        	pwrImg("Playtime's Over", "Playtime's Over (Hidey-Ho Mode)") ..
            quote("After the rage of being trapped in the body of a doll subsided, the Lakeshore Strangler realised this new body was the perfect host to disorient and surprise his kills.") .. dbr ..
            
            b("SPECIAL ABILITY: HIDEY-HO MODE") .. br ..
            "Press the " .. loadoutStrings.secondaryPowerButton .. " to enter " .. i("Hidey-Ho Mode") .. " for " .. clror("#powerDuration") .. colon ..
            list(
            	"Grants the " .. effects("power", "Playtime's Over", ils.undetectable) .. dot,
            	"Creates " .. i(b("Illusionary Footfalls")) .. dot) ..
            "Press it again to exit the mode prematurely." .. nlp ..
            i("Hidey-Ho Mode") .. " has a cool-down of " .. clro("#powerCooldown") .. dot .. dbr ..
            
            b("SPECIAL ABILITY: ILLUSIONARY FOOTFALLS") .. br ..
            i(b("Illusionary Footfalls")) .. " generate in a radius of " .. clro("#illusionRadius") .. " around each Survivor and aim to disorient them with sounds and footsteps coming from different directions, hiding the true whereabouts of " .. b("The Good Guy") .. dot .. dbr ..
            
            b("SPECIAL LOCOMOTION: SLICE & DICE") .. br ..
            "While in " .. i("Hidey-Ho Mode") .. ", press the " .. loadoutStrings.powerButton .. " to launch a " .. i("Slice & Dice") .. " attack:" ..
            list(
            	b("Increases") .. " his Movement speed to " .. clro("#powerSpeedValue") .. " for " .. clro("#powerSpeedDuration") .. dot,
            	b("Increases") .. " his Lunge duration to " .. clro("#powerLungeDuration") .. dot) .. br ..
            
            b("SPECIAL INTERACTION: SCAMPER") .. br ..
            "During a " .. i("Slice & Dice") .. " attack, collide with a dropped " .. iconLink(ils.pallet) .. " or a " .. iconLink(ils.window) .. " to perform a " .. i("Scamper") .. " under/over it, which takes " .. clro("#scamperDuration") .. " to complete." .. dbr ..
            
            quote("I'm one of the most notorious slashers in history. And I don't want to give that up. I am Chucky, the killer doll! And I dig it!", "Chucky")
    },
    ["UVX"] = { -- The Unknown
        desc =
        	pwrImg("UVX (Charge)", "UVX (Launch)", "UVX (Teleport)", "UVX (Hallucination)") ..
            quote("Some believed a specimen was recovered by the military for their experiments." .. br .. "The codename: Unknown Venom X.") .. dbr ..
            
            b("SPECIAL ABILITY: UVX PROJECTILE") .. img("UVX (Charge)", "48px") .. img("UVX (Launch)", "48px") .. br .. 
            "Press and hold the " .. loadoutStrings.powerButton .. " to charge " .. i("UVX") .. br ..
            "Once it is fully charged, press the " .. loadoutStrings.attackButton .. " to launch a bouncing projectile, which creates a " .. i("Blast Area") .. " of " .. clror("#uvx(1)") .. " upon impact:" ..
            list(
            	"Survivors touching an airborne projectile suffer from a " .. clro("#hindered") .. space .. effects("power", "UVX", ils.hindered) .. " for " .. clro("#durationHindered") .. dot,
            	"Survivors touching the " .. i("Blast Area") .. " suffer from the " .. biclr("fuchsia", "Weakened State") .. dot) .. 
            i("UVX") .. " has a cool-down of " .. clro("#uvx(2)") .. dot .. dbr ..
            
            b("SPECIAL AFFLICTION: WEAKENED") .. br ..
            biclr("fuchsia", "Weakened Survivors") .. " receive damage when touching a " .. i("Blast Area") .. " and have up to " .. clro("#weakened(1)") .. " added back to their " .. i("Weakened Meter") .. " indicated on the HUD" .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: STARING DOWN THE UNKNOWN") .. br ..
            "Survivors can remove their " .. biclr("fuchsia", "Weakened State") .. " by looking directly at " .. b("The Unknown") .. " within a distance of " .. clro("#weakened(2)") .. " for a cumulative total of " .. clro("#weakened(3)") .. dot .. br ..
            "Doing so will highlight their outline in " .. bclr("pink", "pink") .. " to " .. b("The Unknown") .. dot .. dbr ..
            
            b("SPECIAL ABILITY: HALLUCINATIONS") .. img("UVX (Hallucination)", "48px") .. br ..
            b("The Unknown") .. " intermittently leaves behind a " .. b(i("Hallucination")) .. ", which charges over the course of " .. clro("#hallucination(1)") .. dot .. nlp ..
            "Up to " .. clro("#hallucination(2)") .. space .. b(i("Hallucinations")) .. " can exist simultaneously in the environment, with the oldest one being recycled when creating another one." .. br ..
            "New " .. b(i("Hallucinations")) .. " cannot be created when too close to other existings ones or several props." .. nlp ..
            "The " .. iconLink(ils.auras) .. " are revealed to " .. b("The Unknown") .. " at all times and to Survivors when within " .. clro("#hallucination(3)") .. dot .. nlp ..
            "Survivors becoming " .. biclr("fuchsia", "Weakened") .. " or touching a " .. i("Blast Area") .. space .. b("reduces") .. " the Charge time of the next " .. b(i("Hallucination")) .. " by " .. clro("#hallucination(4)") .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: DISPELLING HALLUCINATIONS") .. br ..
            "Survivors can remove " .. b(i("Hallucinations")) .. " by approaching them and performing the " .. i("Dispel") .. " interaction for " .. clro("#dispelling(1)") .. colon ..
            list(
            	b("Reduces") .. " the Dispelling speed of " .. biclr("fuchsia", "Weakened Survivors") .. " by " .. clro("#dispelling(2)") .. dot,
            	"Succeeding removes the " .. b(i("Hallucination")) .. " from the environment.",
            	"Failing to complete the interaction causes the Survivor to become " .. biclr("fuchsia", "Weakened") .. " and triggers " .. i(link("Killer Instinct")) .. " for " .. clro("#dispelFail_killerInstinct") .. dot,
            	nbullet .. "This also applies when " .. b("The Unknown") .. " teleports into a " .. b(i("Hallucination")) .. " mid-dispelling.") .. br ..
            
            b("SPECIAL LOCOMOTION: TELEPORT") .. img("UVX (Teleport)", "48px") .. br .. 
            "Press the " .. loadoutStrings.secondaryPowerButton .. " to teleport to any available " .. b(i("Hallucination")) .. " that is at least " .. clro("#teleport(1)") .. " away from your location, leaving behind a temporary " .. i("Decoy") .. " for " .. clro("#teleport(2)") .. dot .. nlp ..
            i("Teleportation") .. " has a cool-down of " .. clro("#teleport(3)") .. dot .. dbr ..
            
            quote("... Request for analysis [REDACTED] incident [REDACTED] awaiting approval.", "Excerpt from leaked OSS report")
    },
	["Vile Darkness"] = { -- The Lich
        desc =
        	pwrImg("Vile Darkness", "Vile Darkness (Fly)", "Vile Darkness (Flight of the Damned)", "Vile Darkness (Dispelling Sphere)", "Vile Darkness (Mage Hand)") ..
            quote("Bound with the skin and flesh of men, the Book is packed with spells both forbidden and wicked.") .. dbr ..
            
            b("SPECIAL ABILITY: VILE DARKNESS") .. br ..
            "Press and hold the " .. loadoutStrings.secondaryPowerButton .. " to open the " .. i("Spell Selection") .. dot .. br .. "Move the cursor towards one of four available " .. i("Spells") .. " in order to select it:" ..
            list(
            	i("Fly") .. img("Vile Darkness (Spell Selection: Fly)", "32px") .. colon .. " Grants the ability to fly across the environment for up to " .. clror("#fly_duration") .. " and allows " .. b("The Lich") .. " to ignore dropped " .. iconLink(ils.pallets) .. " and " .. iconLink(ils.windows) .. dot,
            	nbullet .. "After ending " .. i("Fly") .. comma .. b("The Lich") .. " cannot attack Survivors for " .. clro("#fly_cooldown") .. dot,
            	i("Flight of the Damned") .. img("Vile Darkness (Spell Selection: Flight of the Damned)", "32px") .. colon .. " Grants the ability to conjure " .. clro("#FOTD_entities") .. space .. i("Flying Entities") .. " that can pass through obstacles and damage Survivors in their path.",
            	nbullet .. "Triggers " .. i(link("Killer Instinct")) .. " on Survivors downed by this " .. i("Spell") .. " for " .. clro("#FOTD_killerInstinct") .. dot,
            	nbullet .. "Cannot hit crouched Survivors on level terrain.",
            	i("Dispelling Sphere") .. img("Vile Darkness (Spell Selection: Dispelling Sphere)", "32px") .. colon .. " Grants the ability to cast a moving " .. i("Sphere") .. " invisible to Survivor.",
            	nbullet .. "The " .. i("Sphere") .. " initially moves at a faster " .. clro("#dispellingSphereSpeeds(1)") .. " and slows down to " .. clro("#dispellingSphereSpeeds(2)") .. " over " .. clro("#dispellingSphereSpeedTransition") .. dot,
            	nbullet .. "Triggers " .. i("Killer Instinct") .. " for " .. clro("#dispellingSphere_killerInstinct") .. " on Survivors coming into contact with it and disables their equipped " .. b("Magic Items") .. " for " .. clro("#dispellingSphere_magicItemCooldown") .. dot,
            	ndbullet .. "While disabled, " .. b("The Lich") .. " can see the specific type of any equipped " .. b("Magic Item") .. " on the Survivor HUD.",
            	ndbullet .. "The Cool-down duration of " .. b("Magic Items") .. " is indicated to all Players with a timer on the Survivor HUD.",
            	i("Mage Hand") .. img("Vile Darkness (Spell Selection: Mage Hand)", "32px") .. colon .. " Grants the ability to conjure a " .. i("Magical Hand") .. " on any nearby " .. b("Pallet") .. dot,
            	nbullet .. "Lifts a dropped " .. b("Pallet") .. " back upright in " .. clro("#mageHand_palletLift") .. dot,
            	nbullet .. "Holds an upright " .. b("Pallet") .. " and blocks interactions with it for " .. clro("#mageHand_palletHold") .. dot) ..
            "After casting, each " .. i("Spell") .. " has its own, independent cool-down:" ..
            list(
            	i("Fly") .. colon .. space .. clro("#spellCooldowns(1)"),
            	i("Flight of the Damned") .. colon .. space .. clro("#spellCooldowns(2)"),
            	i("Dispelling Sphere") .. colon .. space .. clro("#spellCooldowns(3)"),
            	i("Mage Hand") .. colon .. space .. clro("#spellCooldowns(4)")) .. br ..
            
            b("SPECIAL TREASURE CHESTS: MAGIC ITEMS") .. br ..
            clro("#treasureChestCount") .. space .. iconLink("Treasure Chests") .. " containing special " .. b("Magic Items") .. " for Survivors to equip spawn in the environment." .. br .. "These include " .. b("Boots") .. img("Boots", "32px") .. " or " .. b("Gauntlets") .. img("Gauntlets", "32px") .." of:" ..
            list(
            	"All " .. b("Magic Items") .. " reveal the " .. iconLink(ils.aura) .. " of " .. b("The Lich") .. " for " .. clro("#magicItem_auraReveal") .. ", when he casts their associated " .. i("Spell") .. dot,
            	b("The ") .. bclr("indigo", "Skyguard") .. img("Fly", "32px") .. colon .. " The Aura of " .. b("The Lich") .. " is revealed during flight.",
            	nbullet .. "This effect lingers for " .. clro("#magicItem_skyguardLinger") .. dot,
            	b("The ") .. bclr("lavender", "Nightwatch") .. img("Flight of the Damned", "32px") .. colon .. " The Auras of the " .. i("Flying Entities") .. " are revealed once cast.",
            	b("The ") .. bclr("light blue", "Archivist") .. img("Dispelling Sphere", "32px") .. colon .. " The " .. i("Dispelling Sphere") .. " itself is visible while it traverses the environment.",
            	b("The ") .. bclr("violet", "Interloper") .. img("Mage Hand", "32px") .. colon .. " The Auras of " .. b("Pallets") .. " affected by " .. i("Mage Hand") .. " are revealed once cast.",
            	nbullet .. "This also grants the Survivor a " .. clro("#haste") .. space .. effects("power", "Vile Darkness", ils.haste) .. " for " .. clro("#durationHaste") .. dot) .. 
            "Beware of " .. b(i("Mimics")) .. " though, they may bite." .. nlp ..
            "Survivors can have both a Boot and a Gauntlet equipped at the same time." .. br ..
            "Unlucky Survivors may only find a regular " .. iconLink(ils.item) .. " inside a " .. b("Treasure Chest") .. " that is either depleted or half-depleted." .. dbr ..
            
            b("SPECIAL ITEMS: HAND & EYE OF VECNA") .. br ..
            "Rarely, " .. b("Treasure Chests") .. " contain either the " .. b("Hand of Vecna") .. " or the " .. b("Eye of Vecna") .. dot .. nlp ..
            "Healthy Survivors can use these " .. bclr("gold", "Vecna Items") .. " to gain a special ability at the cost of a " .. iconLink(ils.healthState) .. " and triggering " .. i("Killer Instinct") .. " after use." .. dbr ..
            
            b("SPECIAL INTERACTION: RECOVER ARTEFACT") .. img("Mini-Mori", "48px") .. br ..
            "Survivors attuned to the " .. i("Eye of Vecna") .. " or the " .. i("Hand of Vecna") .. " with an accumulated " .. clro("#hookStageCount") .. space .. i("Hook Stages") .. " are vulnerable to " .. b("The Lich") .. " recovering his Artefact from them." .. br ..
            "Press the " .. loadoutStrings.attackButton .. " while standing over the downed Survivor to execute them on the spot, performing a " .. i("Mini-Mori") .. dot
    },
    ["Vampiric Shift"] = { -- The Dark Lord
        desc =
        	pwrImg("Vampiric Shift", "Vampiric Shift (Vampire Form)", "Vampiric Shift (Wolf Form)", "Vampiric Shift (Bat Form)") ..
            quote("His dark power allows him to exact revenge on humans, taking many forms to terrorise and slaughter them.") .. dbr ..
            
            b("SPECIAL ABILITY: SHAPESHIFT") .. br ..
            b("The Dark Lord") .. " has access to " .. clror("#forms") .. space .. i("Forms") .. " and can freely change between them." .. br ..
            "Each " .. i("Form") .. " has unique abilities and strengths." .. nlp ..
            "Press and hold the " .. loadoutStrings.secondaryActionButton .. " in any " .. i("Form")  .. " to initialise a " .. i("Shapeshift") .. colon ..
            list(
            	"Confirm a " .. i("Shapeshift") .. " by pressing either the " .. loadoutStrings.attackButton .. " or the " .. loadoutStrings.powerButton .. dot,
            	"Cancel a " .. i("Shapeshift") .. " by releasing the " .. loadoutStrings.secondaryPowerButton .. dot,
            	"Has a cool-down of " .. clro("#shapeshift") .. dot) ..
            "Regardless of his current " .. i("Form") .. comma .. b("The Dark Lord") .. " is always able to interact with Props, temporarily shifting into a ghostly husk of his " .. i("Vampire Form") .. " during the interaction, if necessary." .. dbr ..
            
            b("SPECIAL SHAPE: VAMPIRE FORM") .. img("Vampiric Shift (Vampire Form)", "48px") .. br ..
            "The default " .. i("Form") .. " of " .. b("The Dark Lord") .. dot ..
            list(
            	"Default Movement speed of " .. clro("#movementSpeeds(1)") .. dot,
            	"Grants the ability to cast the " .. i("Hellfire Spell") .. dot) .. br ..
            
            b("SPECIAL SHAPE: WOLF FORM") .. img("Vampiric Shift (Wolf Form)", "48px") .. br ..
            "This " .. i("Form") .. " provides " .. b("The Dark Lord") .. " with access to several abilities that allow for more effective tracking:" ..
            list(
            	"Default Movement speed of " .. clro("#movementSpeeds(1)") .. dot,
            	b("Increases") .. " the visibility of " .. iconLink(ils.poolsOfBlood) .. " and " .. iconLink(ils.scratchMarks) .. dot,
            	"Causes Survivors to spawn " .. bclr("white", "Scent Orbs") .. colon,
            	nbullet .. "Spawn at a rate of " .. clro("#scentOrbs(1)") .. dot,
            	nbullet .. "Have a Life time of " .. clro("#scentOrbs(2)") .. dot,
            	nbullet .. "Have a limit of " .. clro("#scentOrbs(3)") .. " existing at the same time.",
            	nbullet .. "Their Auras are revealed to you within " .. clro("#scentOrbs(4)") .. dot,
            	"Collecting a " .. bclr("white", "Scent Orb") .. " has the following effects:",
            	nbullet .. "Grants a " .. clro("#haste") .. space .. effects("power", "Vampiric Shift", ils.haste) .. " for " .. clro("#durationHaste") .. ", temporarily " .. b("increasing") .. " his Movement speed to " .. clro("#movementSpeeds(2)") .. dot,
            	nbullet .. b("Reduces") .. " the Cool-down duration of the " .. i("Pounce Attack") .. " by " .. clro("#scentOrbs(5)") .. dot,
            	"Triggers " .. i(link("Killer Instinct")) .. " for " .. clro("#killerInstinct") .. " on Survivors causing a " .. i(link("Loud Noise Notification")) .. dot,
            	"Grants access to the " .. i("Pounce Attack") .. dot) .. br ..
            
            b("SPECIAL SHAPE: BAT FORM") .. img("Vampiric Shift (Bat Form)", "48px") .. br ..
            "This " .. i("Form") .. " provides " .. b("The Dark Lord") .. " with access to several abilities that allow for greater stealth and mobility:" ..
            list(
            	"Faster Movement speed of " .. clro("#movementSpeeds(3)") .. dot,
            	"Removes the ability to attack or interact with Survivors.",
            	"Grants the " .. effects("power", "Vampiric Shift", ils.undetectable) .. colon,
            	nbullet .. "Survivors hear a " .. i("Lullaby") .. " within " .. clro("#lullaby") .. dot, 
            	"Grants the ability to fly over any dropped " .. iconLink(ils.pallet) .. " or any " .. iconLink(ils.window) .. " and also to teleport to them within a certain range.",
            	"Survivors are invisible while in this " .. i("Form") .. ", but still leave " .. i("Scratch Marks") .. colon,
            	b("Increases") .. " the volume of their Footsteps by " .. clro("+50 %") .. dot) .. br ..
            
            b("SPECIAL ATTACK: HELLFIRE SPELL") .. img("Vampiric Shift (Charge Hellfire)", "48px") .. img("Vampiric Shift (Cast Hellfire)", "48px") .. br ..
            "While in " .. i("Vampire Form") .. img("Vampiric Shift (Vampire Form)", "32px") .. ", press and hold the " .. loadoutStrings.powerButton .. " for " .. clro("#hellfire(1)") .. " to charge the " .. i("Hellfire Spell") .. dot .. br ..
            "Releasing the " .. loadoutStrings.powerButton .. " will cancel it." .. br ..
            "Press the " .. loadoutStrings.attackButton .. " when fully charged to release " .. clro("#hellfire(2)") .. space .. i("Pillars of Flame") .. " that travel in a straight line from the " .. b("The Dark Lord") .. " with a range of " .. clro("#hellfire(3)") .. dot .. br ..
            "The " .. i("Pillars of Flame") .. " can pass over low obstacles." .. nlp .. 
            "The " .. i("Hellfire Spell") .. " has a cool-down of " .. clro("#hellfire(4)") .. dot .. dbr ..
            
           b("SPECIAL ATTACK: POUNCE") .. img("Vampiric Shift (Wolf Pounce)", "48px") .. br ..
            "While in " .. i("Wolf Form") .. img("Vampiric Shift (Wolf Form)", "32px") .. ", press and hold the " .. loadoutStrings.powerButton .. " for " .. clro("#pounce(1)") .. " to charge a " .. i("Pounce") .. " attack that is automatically executed once fully charged:" ..
            list(
            	"Causes " .. b("The Dark Lord") .. " to pounce up to " .. clro("#pounce(2)") .. dot,
            	nbullet .. "A consecutive " .. i("Pounce") .. " is cancelled if the previous one hit a Survivor or breakable object.",
            	"Has a window of opportunity of " .. clro("#pounce(3)") .. " between " .. i("Pounces") .. " to adjust his aim.",
            	"Hitting a " .. iconLink(ils.breakableWall) .. " or a dropped " .. b("Pallet") .. " during a " .. i("Pounce") .. " destroys them.") ..
            "The " .. i("Pounce") .. " attack has a cool-down of " .. clro("#pounce(4)") .. dot .. dbr .. 
            
            b("SPECIAL LOCOMOTION: TELEPORT") .. img("Vampiric Shift (Ready Teleport)", "48px") .. img("Vampiric Shift (Teleport)", "48px") .. br ..
            "While in "  .. i("Bat Form") .. img("Vampiric Shift (Bat Form)", "32px") .. ", press and hold the " .. loadoutStrings.powerButton .. " to ready a " .. i("Teleport") .. dot .. br ..
            "Press the "  .. loadoutStrings.attackButton .. " while aiming at any dropped " .. b("Pallet") .. " or any " .. b("Window") .. " within " .. clro("#teleport(1)") .. " to teleport to it, travelling at " .. clro("#teleport(2)") .. dot .. nlp ..
            "The " .. i("Teleport") .. " ability has a cool-down of " .. clro("#teleport(3)") .. dot
    },
    ["Scent of Blood"] = { -- The Houndmaster
    	desc = 
    		pwrImg("Scent of Blood", "Scent of Blood (Search)") ..
    		quote("The Houndmaster and her dog operate as one." .. br .. "Her commands are followed without question or delay.") .. dbr ..
    		
    		b("SPECIAL COMPANION: THE DOG") .. br ..
    		b("The Houndmaster") .. " sees the " .. iconLink(ils.aura) .. " of " .. b("The Dog") .. " at all times." .. dbr ..
    		
    		b("SPECIAL INTERACTION: PET DOG") .. br ..
    		"Press the " .. loadoutStrings.interactionButton .. " while standing near " .. b("The Dog") .. " to pet it." .. dbr ..
    		
    		b("SPECIAL INTERACTION: SWITCH COMMAND") .. img("Scent of Blood (Swap)", "48px") .. br ..
    		"Press the " .. loadoutStrings.secondaryPowerButton .. " to switch between the " .. i("Chase Command") .. " and the " .. i("Search Command") .. dot .. dbr ..
    		
    		b("SPECIAL ABILITY: CHASE") .. img("Scent of Blood", "48px") .. br ..
    		"Press and hold the " .. loadoutStrings.powerButton .. " to initiate the " .. i("Chase Command") .. ", charting the " .. i("Chase Path") .. " in front of you that " .. b("The Dog") .. " will follow:" .. br ..
    		"Press the " .. loadoutStrings.attackButton .. " to send " .. b("The Dog") .. " out at high speed or release the " .. loadoutStrings.powerButton .. " to cancel the ability." .. nlp ..
    		"The " .. i("Chase Command") .. " has a cool-down of " .. clror("3 seconds") .. dot .. dbr ..
    		
    		b("SPECIAL ABILITY: REDIRECT CHASE") .. img("Scent of Blood (Redirect)", "48px") .. space .. img("Scent of Blood (Recall)", "48px") .. br ..
    		"Press the " .. loadoutStrings.powerButton .. " after sending out " .. b("The Dog") .. " to temporarily take possession of it:" .. br ..
    		"Press the " .. loadoutStrings.attackButton .. " to redirect the " .. i("Chase Path") .. " or press the " .. loadoutStrings.secondaryPowerButton .. " to cancel the redirect altogether." .. dbr ..
    		
    		b("SPECIAL INTERACTION: DOG GRAB") .. br ..
    		"When " .. b("The Dog") .. " comes across a Survivor in its path, it pounces and grabs onto them:" ..
    		list(
    			"Causes the " .. i("Grabbed Survivor") .. " to suffer from a " .. clro("#hindered") .. space .. effects("power", "Scent of Blood", ils.hindered) .. " and the " .. effects("power", "Scent of Blood", ils.incapacitated) .. dot,
    			"Causes the " .. i("Grabbed Survivor") .. " to slowly be pulled towards " .. b("The Houndmaster") .. " for a maximum of " .. clro("8 seconds") .. ", after which they are released again.",
    			nbullet .. "This duration is " .. b("reduced") .. " to " .. clro("2 seconds") .. ", if the " .. i("Grabbed Survivor") .. " is protected by the " .. effects("power", "Scent of Blood", ils.enduranceSurvivor) .. dot,
    			"Causes the " .. iconLink(ils.exitGates) .. " to be blocked for the " .. i("Grabbed Survivor") .. dot,
    			nbullet .. "This effect lingers for " .. clro("1.5 seconds") .. " after being released.",
    			"The Aura of the " .. i("Grabbed Survivor") .. " is revealed to " .. b("The Houndmaster") .. " in " .. bclr("bright red", "red") .. dot) ..
    		"The " .. i("Grabbed Survivor") .. " can fight against the pull by moving in opposite directions and potentially steer " .. b("The Dog") .. " towards nearby " .. iconLink(ils.pallets) .. dot .. nlp ..
    		"The " .. i("Grabbed Survivor") .. " can free themselves sooner by stunning " .. b("The Dog") .. " or being rescued by another Survivor interacting with it:" ..
    		list(
    			"The Auras of upright " .. b("Pallets") .. " within " .. clro("16 metres") .. " of the " .. i("Grabbed Survivor") .. " are revealed to them in " .. bclr("yellow", "yellow") .. dot,
    			"Dropping a " .. b("Pallet") .. " onto " .. b("The Dog") .. " stuns it for " .. clro("3 seconds") .. " and triggers " .. i("Killer Instinct") .. " for " .. clro("5 seconds") .. dot) ..
    		"If the " .. i("Grabbed Survivor") .. " is released without injury by any means, they continue to suffer from the " .. effects("power", "Scent of Blood", ils.hindered) .. " for another " .. clro("#durationHindered") .. dot .. nlp ..
    		"If " .. b("The Dog") .. " collides with a vaulting Survivor while trying to grab them, the Survivor receives damage." .. dbr ..
    		
    		b("SPECIAL ABILITY: SEARCH") .. img("Scent of Blood (Search)", "48px") .. space .. img("Scent of Blood (Guard)", "48px") .. br ..
    		"Press and hold the " .. loadoutStrings.powerButton .. " to initiate the " .. i("Search Command") .. colon ..
    		list(
    			"Causes her cane to be sent out as a beacon, marking the " .. i("Target Location") .. " of " .. b("The Dog") .. dot,
    			nbullet .. "The beacon can moved to any location within " .. clro("5 to 40 metres") .. " of " .. b("The Houndmaster") .. dot,
    			"Aiming at the Aura of a Prop transforms the beacon into a marker that also acts as the " .. i("Target Location") .. dot,
    			nbullet .. "The marker can target the Aura of any Prop in the environment and has an unlimited range.",
    			"Grants the ability to also see the Auras of completed " .. iconLink(ils.generators) .. ", which are highlighted in " .. clro("light orange") .. dot,
    			nbullet .. "This allows the marker to target them as well.") ..
    		"Press the " .. loadoutStrings.attackButton .. " to send " .. b("The Dog") .. " out along a " .. i("Search Path") .. " towards the " .. i("Target Location") .. " or release the " .. loadoutStrings.powerButton .. " to cancel the ability." .. nlp ..
    		"While searching, " .. b("The Dog") .. " has its own " .. i("Lullaby") .. " of " .. clro("32 metres") .. " and uses its " .. i("Houndsense") .. " to locate nearby Survivors:" ..
    		list(
    			b("Increases") .. " the radius of the " .. i("Houndsense") .. " based on the distance " .. b("The Dog") .. " travels along the " .. i("Search Path") .. dot,
    			"Causes Survivors entering its radius to become affected by " .. i("Houndsense") .. " and trigger " .. i(link("Killer Instinct")) .. dot,
    			nbullet .. "This effect lingers for " .. clro("2 seconds") .. " after leaving the radius.",
    			b("Increases") .. " the Movement speed of " .. b("The Houndmaster") .. " to " .. clro("6 m/s") .. " after travelling along the " .. i("Search Path") .. " for a certain distance.",
    			nbullet .. "This effect lasts for as long as she remains on or close to the " .. i("Search Path") .. " and ends once " .. b("The Dog") .. " returns to her side.") .. br ..
    		
    		b("SPECIAL EFFECT: HOUNDSENSE") .. br ..
    		"Survivors affected by " .. i("Houndsense") .. " are highlighted to " .. b("The Houndmaster") .. " in " .. bclr("bright red", "bright red") .. " and experience either of the following effects:" ..
    		list(
    			"Healthy Survivors after entering the " .. i("Injured State") .. colon,
    			nbullet .. "Suffer from the " .. effects("power", "Scent of Blood", ils.deepWound) .. " upon becoming injured.",
    			"Injured Survivors after entering the " .. i("Dying State") .. colon,
    			nbullet .. b("Increases") .. " the volume of their " .. i("Grunts of Pain") .. dot,
    			nbullet .. b("Increases") .. " the duration of their " .. i("Pools of Blood") .. dot)
    },
    ["One-Eyed Terror"] = { -- The Ghoul
    	desc = 
    		pwrImg("One-Eyed Terror (Aim Leap)", "One-Eyed Terror (Aim Leap EM)", "One-Eyed Terror (Cancel Leap)", "One-Eyed Terror (Fire Leap)", "One-Eyed Terror (Fire Leap EM)") ..
    		b("SPECIAL ABILITY: ONE-EYED TERROR") .. br ..
            b("The Ghoul") .. " starts the Trial with " .. clror("#tokenCountDefault") .. dot .. dbr ..
            
            b("SPECIAL ABILITY: KAGUNE LEAP") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to charge a " .. i("Kagune Leap") .. ", while aiming the reticule at any vertical surface or Survivor within " .. clro("#leapRange") .. dot .. br ..
            "Press the " .. loadoutStrings.attackButton .. " to initiate a " .. i("Kagune Leap") .. ", consuming " .. clro("#tokenCost") .. ", or release the " .. loadoutStrings.powerButton .. " to cancel it:" ..
            list(
            	"Attaches the tentacles to the target and quickly pulls " .. b("The Ghoul") .. " forwards.",
            	"Grants the ability to leap over " .. iconLink(ils.windows) .. " or dropped " .. iconLink(ils.pallets) .. dot) ..
            "After performing a " .. i("Kagune Leap") .. ", if there is still a Power Token available, a window of opportunity opens for " .. clro("#windowOpenTime") .. colon ..
            list(
            	"Press the " .. loadoutStrings.attackButton .. " to initiate another " .. i("Kagune Leap") .. dot,
            	"Press the " .. loadoutStrings.secondaryPowerButton .. " to cancel the Power.",
            	nbullet .. "The button may also already be pressed at any point during the " .. i("Leap") .. " to instantly cancel it upon landing.") ..
            i("Kagune Leap") .. " automatically enters its cool-down after any of the following:" ..
            list(
            	"The last Power Token has been consumed.",
            	"The window of opportunity has elapsed.",
            	"A Vaulting action has been performed.",
            	"A Survivor has been grabbed.") ..
            "During the cool-down, " .. i("Kagune Leap") .. " recharges all consumed Power Tokens at a speed of " .. clro("#powerRecharge(1)") .. " per Token." .. br ..
            "The Power only becomes available again after fully recharging all Tokens." .. nlp ..
            "If " .. i("Kagune Leap") .. " is not already on cool-down, breaking a " .. b("Pallet") .. " causes it to enter a forced cool-down equivalent to " .. clro("#minPalletPenalty") .. " Power Token." .. dbr ..
            
            b("SPECIAL INTERACTION: TARGETING SURVIVORS") .. br ..
            "Targeting a Survivor and colliding with them directly during a " .. i("Kagune Leap") .. " has multiple possible effects and interactions:" ..
            list(
            	"If it is the first " .. i("Leap") .. ", indicated by the reticule showing a closed mouth, the Survivor will remain unharmed.",
            	"If it is the second " .. i("Leap") .. ", indicated by the reticule showing an open mouth, grants the ability to perform a " .. i("Grab-Attack"))  .. dbr ..
            
            b("SPECIAL ATTACK: GRAB-ATTACK") .. br ..
            "While the " .. i("Grab-Attack") .. " occurs automatically when the conditions are met, it features an optional button prompt QTE:" ..
            list(
            	"Swiftly press the " .. loadoutStrings.attackButton .. " to perfectly time the attack, extending the subsequent " .. i("Countdown") .. dot,
            	"Missing the button prompt will apply the regular " .. i("Countdown") .. dot) ..
            "The " .. i("Grab-Attack") .. " applies the following effects to the targeted Survivor:" ..
            list(
            	"Applies the " .. iconLink(ils.injuredState) .. " when healthy.",
            	"Causes them to suffer from the " .. effects("power", "One-Eyed Terror", ils.deepWound) .. dot,
            	"Applies the " .. i("Kagune Mark") .. dot,
            	"Blocks the " .. iconLink(ils.exitGates) .. " for the duration of the " .. i("Grab-Attack") .. dot,
            	nbullet .. "This effect lingers for " .. clro("#gateBlocker") .. " after they are released.") ..
            "After performing a " .. i("Grab-Attack") .. comma .. b("The Ghoul") .. " enters " .. i("Enraged Mode") .. dot .. dbr ..
            
            b("SPECIAL AFFLICTION: KAGUNE MARK") .. br ..
            "Fully " .. i("Mending") .. " or entering the " .. iconLink(ils.dyingState) .. " removes the " .. i("Kagune Mark") .. " for that Survivor." .. nlp ..
            "Marked Survivors cannot be injured by " .. i("Grab-Attacks") .. ", but still suffer its other effects." .. dbr ..
            
            b("SPECIAL MODE: ENRAGED MODE") .. br ..
            "While in this mode, " .. b("The Ghoul") .. " is granted these following effects:" ..
            list(
            	b("Increases") .. " the number of Power Tokens to " .. clro("#tokenCountEM") .. dot,
            	b("Reduces") .. " the Power Recharge time to " .. clro("#powerRecharge(2)") .. " per Token.",
            	b("Reduces").. " the Vaulting time while targeting a Survivor located across it.",
            	b("Increases") .. " the Pallet-breaking penalty to " ..clro("#maxPalletPenalty") .. " Power Tokens.") ..
            i("Enraged Mode") .. " remains active for as long as there is at least one Survivor with the " .. i("Kagune Mark").. " or if the " .. i("Countdown") .. " is active." .. dbr ..
            
            b("SPECIAL INTERACTION: COUNTDOWN") .. br ..
            "Once the last marked Survivor removes their " .. i("Kagune Mark") .. ", the " .. i("Countdown") .. " triggers and is indicated on their HUD Portrait." .. nlp ..
            "The " .. i("Countdown") .. " lasts for " .. clro("#countdownDuration") .. ", after which " .. i("Enraged Mode") .. " ends." .. br ..
            "Performing a perfectly timed " .. i("Grab-Attack") .. space .. b("increases") .. " its duration to " .. clro("#countdownExtended") .. dot
    },
    ["Fazbear's Fright"] = { -- The Animatronic
    	desc = 
    		pwrImg("Fazbear's Fright", "Fazbear's Fright (Retrieve)", "Fazbear's Fright (Grab)") ..
    		quote("The Animatronic lived to kill, even when his mechanical costume became his tomb.") .. dbr ..
    		b("SPECIAL ABILITY: FAZBEAR'S FRIGHT") .. br ..
    		b("The Animatronic") .. " is armed with a " .. b("Fire Axe") .. ", that he can throw, and causes " .. clror("#SD_amount") .. space .. iconLink("Security Doors") .. " to spawn in the environment." .. dbr ..
    		
    		b("SPECIAL ABILITY: FIRE AXE") .. img("Fazbear's Fright", "48px") .. br ..
            "Press and hold the " .. loadoutStrings.powerButton .. " to initiate " .. i("Ready Aim") .. dot .. br ..
            "Press the " .. loadoutStrings.attackButton .. " to throw the " .. b("Fire Axe") .. " or release the " .. loadoutStrings.powerButton .. " to cancel the Power." .. dbr ..
            
            "If the " .. b("Fire Axe") .. " hits a Survivor, the Survivor is damaged for one health state, and, if Healthy, has the " .. b("Fire Axe") .. " embedded into them." .. br .. "Survivors with an embedded " .. b("Fire Axe") .. " are inflicted with the " .. effects("power", "Fazbear's Fright", ils.broken, ils.oblivious) .. dot .. br ..
            "If the " .. b("Fire Axe") .. " hits the environment, the " .. b("Fire Axe") .. " becomes embedded and creates an " .. i("Area of Effect") .. " of " .. clro("#FA_AOE") .. " around it. Any Survivors caught inside the area are revealed by " .. i("Killer Instinct") .. dot .. br ..
            "If the " .. b("Fire Axe") .. " hits a " .. b("Security Door") .. ", the door becomes disabled for all Survivors until the " .. b("Fire Axe") .. " is removed." .. dbr ..
            
            b("SPECIAL INTERACTION: RECLAIM AXE") .. img("Fazbear's Fright (Retrieve)", "48px") .. br ..
            "While the " .. b("Fire Axe") .. " is off cool-down, press the " ..  loadoutStrings.secondaryPowerButton .. " to retrieve the " .. b("Fire Axe") .. dot .. dbr ..
            
            b("SPECIAL INTERACTION: GRAB AXE") .. img("Fazbear's Fright (Grab)", "48px") .. br ..
            "Press the " .. loadoutStrings.powerButton .. " while infront of a Survivor with an embedded " .. b("Fire Axe") .. " to perform a special sequence that instantly carries the Survivor and returns the " .. b("Fire Axe") .. " to " .. b("The Animatronic") .. dot .. dbr ..
            
            b("SPECIAL MAP FEATURE: SECURITY SYSTEM") .. br ..
            "The " .. b("Security Doors") .. " found in the enviroment can be accessed by both Survivors and " .. b("The Animatronic") .. dot .. br ..
            "Upon entering a " .. b("Security Door") .. comma .. b("The Animatronic") .. " benefits from the following effect:" .. 
            list(
            	"Grants the " .. effects("power", " Fazbear's Fright", ils.undetectable) .. dot,
            	nbullet .. "This effect lingers for " .. clro("#linger") .. " after travelling to an another " .. b("Security Door") .. dot) .. dbr ..
            
            b("SPECIAL INTERACTION: CAMERA VIEW") .. br ..
            "Each " .. b("Security Door") .. " has a " .. i("Camera") .. " attached to it." .. br ..
            "Interacting with the door gives a Survivor access to the " .. i("Camera View") .. ", allowing them to cycle through every " .. i("Camera") .. ":" .. br ..
            list("Survivors are able to travel to the selected " .. b("Security Door") .. " by pressing the " .. loadoutStrings.secondaryActionButton,
            "Survivors are also able to reveal " .. b("The Animatronic") .. " by looking at him through " .. i("Camera View") .. ", doing so reveals his aura to all Survivors for " .. clro("10 seconds") .. " and removes the " .. b("Undetectable") .. " granted by " .. b("Security Door") .. " travel.") .. dbr ..
            
            b("SPECIAL MECHANIC: BATTERY POWER") .. br ..
            "Using the " .. b("Cameras and Security Doors") .. " will drain the battery power. Fully depleting the battery power shuts down the " .. b("Security System") .. " for " .. clro("45 seconds") .. ", forcing Survivors to wait until the system reboots." .. br ..
            b("The Animatronic") .. " may travel between doors with or without battery power." .. dbr ..
            
            b("SPECIAL LOCATION: SECURITY ROOM") .. br ..
            "If " .. b("The Animatronic") .. " enters a " .. b("Security Door") .. ", they may choose to exit from any other door in the environment." .. br ..
            "Moving to a door already in use by a Survivor will cause " .. b("The Animatronic") .. " to grab that Survivor."
    },
    ["Unbodied Flesh"] = { -- The Krasue
    	desc = 
    		pwrImg("Unbodied Flesh (Head Form)", "Unbodied Flesh (Human Form)", "Unbodied Flesh (Projectile)", "Unbodied Flesh (Go Low)") ..
    		b("SPECIAL ABILITY: CORPOREAL WEAVE") .. br ..
    		b("The Krasue") .. " can shift between " .. i("Body Form") .. " and " .. i("Head Form") .. " at will." .. br ..
    		"Press the " .. loadoutStrings.secondaryPowerButton .. " to initiate a shift." .. dbr ..
    		
    		b("SPECIAL SHAPE: BODY FORM") .. img("Unbodied Flesh (Human Form)", "48px") .. br ..
    		b("The Krasue") .. " always starts the Trial in this state:" ..
            list(
            	"Regular " .. iconLink(ils.terrorRadius) .. " of " .. clror("#terrorRadius(1)") .. dot,
            	"Regular Movement speed of " .. clro("#movementSpeed(1)") .. dot,
            	"Grants access to the " .. i("Regurgitate") .. " special ability.") .. br ..
            
            b("SPECIAL SHAPE: HEAD FORM") .. img("Unbodied Flesh (Head Form)", "48px") .. br ..
    		"This " .. i("Form") .. " provides " .. b("The Krasue") .. " with the following effects and abilities:" ..
            list(
            	"Larger " .. i("Terror Radius") .. " of " .. clro("#terrorRadius(2)") .. dot,
            	"Faster Movement speed of " .. clro("#movementSpeed(2)") .. dot,
            	"Grants access to the " .. i("Headlong Flight") .. " special ability.",
            	"Grants access to the " .. i("Intestinal Whip") .. " special attack.",
            	"Replaces the ability to break dropped " .. i("Pallets") .. " with the ability to vault across them.",
            	"Vaulting times:",
            	nbullet .. iconLink(ils.pallets) .. colon .. space .. clro("#vaulting(1)"),
            	nbullet .. iconLink(ils.windows) .. colon .. space .. clro("#vaulting(2)"),
            	"Longer " .. i("Pallet Stun") .. " duration of " .. clro("#palletStun") .. dot,
            	"Disables the " .. effects("power", "Unbodied Flesh", ils.bloodlust) .. dot) .. br ..
            
            b("SPECIAL AFFLICTION: LEECHED") .. br ..
            "Hitting Survivors with a " .. b("Leeching Gland") .. " or the " .. i("Intestinal Whip") .. " fills their " .. biclr("bronze", "Leech Meter") .. ", indicated on their HUD portrait." .. br ..
            "Once the meter is full at " .. clro("#leeched(1)") .. ", affected Survivors suffer from " .. biclr("bronze", "Leeched I") .. colon ..
            list(
            	"Causes the " .. i("Intestinal Whip") .. " attack to incur damage.",
            	"Causes the " .. biclr("bronze", "Leech Meter") .. " to charge passively at a rate of " .. clro("#leeched(2)") .. dot) .. 
            "If Survivors afflicted with " .. biclr("bronze", "Leeched I") .. " passively fill the " .. biclr("bronze", "Leech Meter") .. " a second time, they will suffer from " .. biclr("bronze", "Leeched II") .. colon ..
            list(
            	"Healthy Survivors receive damage and become injured.",
            	"Incurs the " .. effects("power", "Unbodied Flesh", ils.broken) .. ", regardless of their Health State.") .. br ..
            
            b("SPECIAL ABILITY: REGURGITATE") .. img("Unbodied Flesh (Projectile)", "48px") .. br ..
            "While in " .. i("Body Form") .. ", press and hold the " .. loadoutStrings.powerButton .. " to initiate the " .. i("Charge Regurgitate") .. " interaction." .. br ..
            "Releasing the " .. loadoutStrings.powerButton .. " will cancel it." .. br ..
            "Press the " .. loadoutStrings.attackButton .. " when fully charged to spew a " .. b("Leeching Gland") .. colon ..
            list(
            	"Rebounds off of environmental objects and splits into " .. clro("#regurgitate(1)") .. " smaller mini-glands that home-in on nearby Survivors.",
            	"Adds " .. clro("#leeched(3)") .. " to the " .. biclr("bronze", "Leech Meter") .. " of Survivors hit with either projectile-type, filling it completely.",
            	nbullet .. "Cannot exeed " .. biclr("bronze", "Leeched I") .. dot) .. 
            i("Regurgitate") .. " has a cool-down of " .. clro("#regurgitate(2)") .. dot .. dbr ..
            
            b("SPECIAL ABILITY: HEADLONG FLIGHT") .. img("Unbodied Flesh (Go Low)", "48px") .. br ..
            "While in " .. i("Head Form") .. ", with the Power Gauge filled to at least " .. clro("#flight(1)") .. ", press and hold the " .. loadoutStrings.powerButton .. " to speed through the air at " .. clro("#flight(2)") .. colon .. 
            list(
            	"The Power Gauge has a capacity of " .. clro("#flight(3)") .. dot,
            	"Flying depletes the Power Gauge at a rate of " .. clro("#flight(4)") .. dot,
            	"The Power Gauge recharges at a rate of " .. clro("#flight(5)") .. dot) .. br ..
            
            b("SPECIAL ATTACK: INTESTINAL WHIP") .. br ..
            "While in " .. i("Head Form") .. ", press the " .. loadoutStrings.attackButton .. " to lash out with your internal organs:" ..
            list(
            	"Ignores obstructions for the initial " .. clro("#collision") .. " of the attack.",
            	"Adds " .. clro("#leeched(4)") .. " to the " .. biclr("bronze", "Leech Meter") .. " of hit Survivors, partially filling it.",
            	nbullet .. "Cannot exceed " .. biclr("bronze", "Leeched I") .. dot,
            	"Damages Survivors already afflicted with at least " .. biclr("bronze", "Leeched I") .. dot) .. br ..
            
            b("SPECIAL ITEM: GLOWING FUNGUS") .. img("Glowing Fungus", "48px") .. br ..
            "The " ..  iconLink(ils.glowingFungus) .. " can be found randomly throughout the environment." .. br ..
            list(
            	"Can be eaten by Survivors afflicted with " .. biclr("bronze", "Leeched I") .. " to lower their " .. biclr("bronze", "Leeched Meter") .. " over time.",
            	nbullet .. "This effect ends after being hit.") .. 
            "The Trial starts with " .. clro("#fungus(1)") .. space .. b("Glowing Fungi") .. " located throughout the environment, with a maximum of " .. clro("#fungus(2)") .. " able to exist at the same time." .. br ..
            b("Glowing Fungi") .. " spawn under the following conditions, up to that limit:" ..
            list(
            	"Whenever " .. b("The Krasue") .. " transitions from " .. i("Body Form") .. " to " .. i("Head Form") .. " while at least " .. clro("#fungus(3)") .. " away from any interactable object or other " .. b("Glowing Fungi") .. dot,
            	"After " .. clro("#fungus(4)") .. " of consuming a " .. b("Glowing Fungus") .. " by any means.")
    },
    ["Test Subject #001"] = { -- The First
    	desc = 
    	    pwrImg("Test Subject #001", "Test Subject #001 (Vine Attack)", "Test Subject #001 (Undergate Attack)") ..
    		b("SPECIAL ABILITY: VINE ATTACK") .. img("Test Subject #001 (Vine Attack)", "48px") .. br ..
    		"Press and hold " .. loadoutStrings.powerButton .. " to start charging " .. b("Vine Attack") .. dot .. space .. "Release the " .. loadoutStrings.powerButton .. " button to cancel the Power" .. dot .. dbr ..
    		"Press the " .. loadoutStrings.attackButton .. " while fully charged to create an area of effect on the ground, Survivors caught inside it will be inflicted " .. clror("1") .. space .. i("Worldbreaker Token") .. "." .. dbr ..
    		
    		b("SPECIAL ABILITY: THE UPSIDE DOWN") .. img("Test Subject #001 (Upside Down)", "48px") .. br ..
    		b("The First") .. " can enter " .. b("The Upside Down") .. " by pressing the " .. loadoutStrings.secondaryPowerButton .. dot .. br ..
    		"While in " .. i("The Upside Down") .. ", ".. b("The First") .. ":" ..
    		list(
    			"Can peform " .. b("Undergate Attack") .. dot,
    			"Is granted " .. iconLink(ils.undetectable) .. dot,
    			"Moves at " .. clro("8 m/s") .. dot,
    			"Ignores the collisions of: ".. iconLink(ils.breakableWalls).. ", " .. iconLink(ils.pallets) .. " and " .. iconLink(ils.windows)) .. br ..
    		"This ability has a " .. clro("35 second") .. " cool-down after exitting " .. b("The Upside Down") .. dot .. space .. "At the start of the trial, the ability starts at " .. clro("50%") .. " of the base cool-down." .. dbr ..
    		
    		b("SPECIAL ABILITY: UNDERGATE ATTACK") .. img("Test Subject #001 (Undergate Attack)", "48px") .. br ..
    		"Press the " ..  loadoutStrings.attackButton .. " to peform the " .. b("Undergate Attack") .. dot .. br ..
    		"Performing the attack causes an area of effect to grow around " .. b("The First") .. "'s position.  Once it reaches the full radius, " .. b("The First") .. " exits " .. i("The Upside Down") .. dot .. space .. "Any Survivors caught inside the radius of the attack are inflicted " .. clro("2") .. space .. b("Worldbreaker") .. " tokens." .. dbr ..
    		
    		b("SPECIAL AFFLICTION: WORLDBREAKER & WORLDBREAKER TOKENS") .. img("Test Subject #001 (Worldbreaker)", "90px") .. br ..
    		"Survivors can be inflicted up to " .. clro("4") .. space .. b("Worldbreaker") .. " tokens" .. dot .. dbr ..
    		
    		b("Worldbreaker") .. " is activated when:" ..
    		list(
    			"Any Survivor reaches " .. clro("2") .. " or " .. clro("4") .. space .. b("Worldbreaker") .. " tokens" .. dot,
    			"Any Survivor with " .. clro("4") .. space .. b("Worldbreaker") .. " tokens is hit by either " .. i("Vine Attack") .. " or " .. i("Undergate Attack") .. dot) .. dbr ..
    		
    		"While " .. b("Worldbreaker") .. " is active, " .. b("Vine Attack") .. " and " .. b("Undergate Attack") .. " will inflict damage to Survivors instead of inflicting " .. b("Worldbreaker") .. " tokens." .. dbr ..
    		
    		b("Worldbreaker") .. " has two durations phases: Phase One and Phase Two." .. br ..
    		"Phase One's duration is determined by the amount of Survivors present in the Trial: " .. clro("60 seconds") .. " for each Survivor present in the Trial." .. br .. 
    		"Phase Two lasts for " .. clro("50 seconds") .. "." .. dbr ..
    		
    		b("Worldbreaker") .. "'s base count down is paused while carrying a Survivor." .. dbr ..
    		
    		b("SPECIAL OBJECT: GRANDFATHER CLOCK") .. img("Test Subject #001 (Grandfather Clock)", "48px") .. br ..
    		clro("4") .. space .. i("Grandfather Clocks") .. " spawn in the Trial. They become available to Survivors during " .. b("Worldbreaker") .. "'s Phase One duration phase." .. br ..
    		"Survivors are able to interact with " .. i("Grandfather Clocks") .. " to speed up the count down of Phase One." .. dbr ..
    		
    		b("SPECIAL INTERACTION: MIND BREAK") .. img("Mini-Mori", "48px") .. br ..
    		"Survivors who reached the second Hook Stage and have " .. clro("4") .. space .. b("Worldbreaker") .. " tokens become exposed to " .. i("Mind Break").. dot .. dbr ..
    		"During " .. i("Worldbreaker") .. ", if the Survivor exposed to " .. i("Mind Break") .. " is inflicted damage that would send them to the " .. b("Dying State") .. " by " .. b("Vine Attack") .. " or " .. b("Undergate Attack") .. ", the Survivor will be sent floating into the air.".. br ..
    		b("The First") .. " is able to perform the " .. i("Mind Break") .. " Mini-Mori while standing next to the floating Survivor by pressing the " .. loadoutStrings.secondaryPowerButton .. dot
    },
    ["Omnipresent Evil"] = { -- The Slasher
    	desc = {
    	    pwrImg("Omnipresent Evil", "Omnipresent Evil (Jump Scare)") .. 
    	    b("SPECIAL ABILITY: OMNIPRESENT EVIL") .. img("Omnipresent Evil", "48px") .. br ..
    	    "Press the " .. loadoutStrings.secondaryPowerButton .. " to activate " .. b("Omnipresent Evil") .. dot .. dbr ..
    	    
    	    "While " .. b("Omnipresent Evil") .. " is activated, " .. b("The Slasher") .. " is granted the following effects:" ..
    	    list("Increased movement speed of " .. clror("8.0 m/s") .. dot,
    	    	"Full invisibilty and the " .. effects("power", "Omnipresent Evil", ils.undetectable) .. dot,
    	    	"Ignores collisions of " .. iconLink(ils.pallets) .. ", " .. iconLink(ils.breakableWalls) .. " and " .. iconLink(ils.windows) .. dot,
    	    	"Cannot attack, see or hear Survivors (except " .. iconLink(ils.generator) .. " repair noise)" .. dot,
    	    	b("Halves") .. " the reload time of " .. b("Throwing Spikes") .. " and prevents the interactable prop from being depleted/destroyed" .. dot) .. dbr ..
    	    
    	    "Survivors within " .. clro("16 metres") .. " are sensed with " .. i("Mist Clouds") .. " if they are idling or with " .. i("Footprints") .. " if they moving around" .. dot .. br ..
    	    "Survivors who have been crouching for more than " .. clro("2.5 seconds") .. " cannot be sensed by any means" .. dot .. dbr ..
    	    
    	    "After " .. clro("2 seconds") .. " of activating " .. b("Omnipresent Evil") .. ", " .. b("Jump Scare") .. " becomes available" .. dot .. dbr ..
    	    
    	    b("SPECIAL ABILITY: JUMP SCARE") .. img("Omnipresent Evil (Jump Scare)", "48px") .. br ..
    	    "While in " .. b("Omnipresent Evil") .. ", you can target " .. b("Pallets") .. ", " .. b("Breakable Walls") .. " or " .. b("Windows") .. " within " .. clro("16 metres") .. dot .. dbr ..
    	    
    	    "Press the " .. loadoutStrings.secondaryPowerButton .. " while targetting any valid Prop to perform " .. b("Jump Scare") .. ", this causes " .. b("The Slasher") .. " to exit " .. b("Omnipresent Evil") .. " and re-appear at the targetted location" .. dot .. br ..
    	    "Press the " .. loadoutStrings.powerButton .. " to switch the direction " .. b("The Slasher") .. " will face when performing a " .. b("Jump Scare") .. dot .. img("Omnipresent Evil (Switch Direction)", "48px") .. dbr
    	,    
    	    "Re-appearing takes " .. clro("1.5 seconds") .. ", which is multiplied by " .. clro("3x") .. " if the targetted Prop is within " .. clro("16 metres") .. " of a Hooked Survivor" .. dot .. dbr ..
    	    
    	    "After re-appearing:" ..
    	    list(b("The Slasher") .. " is granted " .. clro("+4.5454 %") .. space .. effects("power", "Omnipresent Evil", ils.haste) .. " for " .. clro("#haste"),
    	    nbullet .. "This increases his base movement speed to " .. clro("4.6 m/s") .. dot,
    	    "Any Survivors within " .. clro("16 metres") .. " that are being sensed by " .. b("Omnipresent Evil") ..  " are revealed by " .. iconLink("Killer Instinct") .. " and scream" .. dot) .. dbr ..
    	    
    	    "Performing a " .. b("Jump Scare") .. " puts " .. b("Omnipresent Evil") .. " on a " .. clro("12 second") .. " cool-down." .. dbr ..
    	    
    	    b("SPECIAL ABILITY: THROWING SPIKES") .. img("Omnipresent Evil (Aim Spike)", "48px") .. img("Omnipresent Evil (Throw Spike)", "48px")  .. br ..
    	    "There are 2 types of " .. b("Throwing Spikes") .. ":" .. space .. b("Hook Spikes") .. " and regular " .. b("Spikes") .. dot .. br ..
    	    b("The Slasher") .. " starts the Trial equipped with a " .. b("Hook Spike") .. dot .. dbr ..
    	    
    	    b("Hook Spikes") .. " are obtained by hooking Survivors or by interacting with " .. iconLink("Hooks") .. ", doing so destroys the " .. b("Hook") .. " for " .. clro("30 seconds") .. dot .. space .. b("Hooks") .. " destroyed this way are immediately repaired when activating " .. b("Omnipresent Evil") .. dot .. br ..
    	    "Regular " .. b("Spikes") .. " are obtained by interacting with " .. b("Scrap Piles") .. " scattered around the map" .. dot .. dbr ..
    	    
    	    "Press the " .. loadoutStrings.powerButton .. " to aim a " .. b("Spike") .. ", release the input to cancel the throw." .. br ..
    	    "While aiming, press the " .. loadoutStrings.attackButton .. " to throw a " .. b("Spike") .. dot .. dbr ..
    	    
    	    "When a Survivor is hit by any type of " .. b("Spike") .. ", they lose a " .. iconLink(ils.healthState) .. " and are pushed forward" .. dot .. br ..
    	    "Survivors who collide with a pushed Survivor will be injured if healthy or affected by " .. iconLink(ils.deepWound) .. " if injured" .. dot .. dbr ..
    	    
    	    "If a healthy Survivor is hit by a " .. b("Hook Spike") .. ", the " .. b("Hook Spike") .. " impales into them, afflicting them with " .. effects("power", "Omnipresent Evil", ils.broken) .. dot .. space .. br ..
    	    "Survivors can remove the impaled " .. b("Hook Spike") .. " by performing an interaction that takes " .. clro("5 seconds") .. dot .. space .. "The Survivor suffers from " .. clro("-10 %") .. space .. effects("power", "Omnipresent Evil", ils.hindered) .. " while performing the interaction" .. dot .. br ..
    	    b("The Slasher") .. " sees the aura of impaled " .. b("Hook Spikes") .. " that are not being removed within " .. clro("26 metres") .. dot .. dbr ..
    	    
    	    "If a Survivor is hit by any " .. b("Spike") .. " and they enter the " .. iconLink(ils.dyingState) .. ", colliding with a wall during the push causes the Survivor to be pinned into the wall." .. br ..
    	    "Survivors automatically un-pin themselves after " .. clro("8 seconds") .. " and enter the " .. b("Dying State") .. dot .. space .. "Survivors are able to rescue pinned Survivors, doing so makes them enter the " .. iconLink(ils.injuredState) .. " instead" .. dot .. br ..
    	    "While next to a pinned Survivor, " .. b("The Slasher") .. " is able to quickly pick them up by pressing the " .. loadoutStrings.interactionButton .. dot .. dbr ..
    	    
    	    b("SPECIAL PROP: SCRAP PILES") .. img("Omnipresent Evil (Scrap Pile)", "48px") .. br ..
    	    clror("10") .. space .. b("Scrap Piles") .. " spawn in the Trial Grounds." .. dbr ..
    	    
    	    "Press the  " .. loadoutStrings.interactionButton .. " while next to a " .. b("Scrap Pile") .. " to pick up a regular " .. b("Spike") .. dot .. space .. "This depletes the " .. b("Scrap Pile") .. dot .. dbr ..
    	    
    	    "Depleted " .. b("Scrap Piles") .. " are replenished when activating " .. b("Omnipresent Evil") .. dot .. dbr ..
    	    
    	    b("SPECIAL INTERACTION: THROWING SPIKE KILL") .. img("Mini-Mori", "48px") .. br ..
    	    "If a Survivor who has reached the final " .. b("Hook Stage") .. " or is vulnerable to a " .. b("Finisher Mori") .. " is impaled and downed by a " .. b("Hook Spike") .. " or pinned by any  " .. b("Spike") .. "," .. space .. b("The Slasher") .. " will be able to kill that Survivor as long as the Survivor is still pinned/impaled" .. dot
    	}
    },
    ["Will of the Gods"] = { -- The Judgment
    	desc = {
    		pwrImg("Will of the Gods (Divine Light)", "Will of the Gods (Launch Divine Light)", "Will of the Gods (Zealous)", "Will of the Gods (Divine Light - Zealous)", "Will of the Gods (Launch Divine Light - Zealous)") .. 
    		b("SPECIAL ABILITY: DIVINE LIGHT") .. img("Will of the Gods (Divine Light)", "48px") .. img("Will of the Gods (Launch Divine Light)", "48px") .. br ..
    		"Press and hold the " .. loadoutStrings.powerButton .. " to start controlling " .. b("Divine Light") .. dot .. space .. "Release the input to stop the interaction" .. dot .. dbr ..
    		
    		"While controlling, a column of " .. b("Divine Light") .. " appears infront of the Killer and follows the direction the Killer is facing while rapidly moving away. It does not affect Survivors during this phase." .. br ..
    		"If the Killer does not cast while controlling for " .. clror("3 seconds") .. ", " .. b("Divine Light") .. " goes on cool-down" .. dot .. dbr ..
    		
    		"Press the " .. loadoutStrings.attackButton .. " to cast the controlled column forward" .. dot .. br ..
    		"After a brief delay, it will deal damage and inflict " .. biclr("wiki gold", "Heresy") .. " to Survivors. Column damage delay and cast duration are improved the longer the Killer has spent controlling the column" .. dot .. br ..
    		"If the column passes within " .. clro("0.5 metres") .. " of a Survivor but does not hit them, they are revealed with " .. iconLink("Killer Instinct") .. dot .. br ..
    		list(i("This can disabled/enabled in the game settings" .. dot)) .. dbr ..
    		
    		b("Divine Light") .. " goes on a " .. clro("6 second") .. " cool-down after casting the column forward, cancelling the casting or failing to cast in time" .. dot .. dbr ..
    		
    		b("SPECIAL AFFLICTION: HERESY") .. br ..
    		i("Survivors afflicted by Heresy are known as Heretics.") .. dbr ..
    		
    		"Survivors gain " .. biclr("wiki gold", "Heresy") .. " by getting hit by " .. b("Divine Light") .. " or by taunting " .. b("The Judgment") .. dot .. dbr ..
    		
    		"To taunt " .. b("The Judgment") .. ", the Survivor has to either:" .. br ..
    		list("Crouch or gesture " .. clro("3 times") .. " within " .. clro ("10 metres"),
    			"Stand within an Exit Threshold for " .. clro("45 seconds") .. dot) .. br ..
    		
    		biclr("light blue", "Heretics") .. " suffer from the following effects:" .. br ..
    		list("Can be sent to the " .. b("Exile") .. " while in the " .. iconLink(ils.dyingState),
    			"While repairing " .. iconLink(ils.generators) .. ", Good " .. iconLink(ils.skillChecks) .. " will cause the " .. b("Generator") .. " to regress by " .. clro("-3 %")) .. dbr ..
    		
    		"If " .. biclr("wiki gold", "Heresy") .. " is gained while within " .. clro("32 metres") .. " of an " .. iconLink(ils.exitGate) .. ", it becomes blocked to the " .. biclr("light blue", "Heretic") .. " Survivor " .. " for " .. clro("8 seconds") .. dot .. dbr
    	,	
    		b("SPECIAL ABILITY: EXILE") .. br ..
    		biclr("light blue", "Heretics") .. " who are in the " .. b("Dying State") .. " can be sent to the " .. b("Exile") .. " by pressing the " .. loadoutStrings.secondaryPowerButton .. dot .. br ..
    		"When sending a Survivor to the " .. b("Exile") .. ", all " .. biclr("light blue", "Heretics") .. " whose " .. biclr("wiki gold", "Heresy") .. " is not being removed are revealed by " .. i("Killer Instinct") .. " for " .. clro("3 seconds") .. dbr ..
    		
    		"The " .. b("Exile") .. " acts like a " .. iconLink(ils.hook) .. ", Survivors who are sent to the " .. b("Exile") .. " gain a " .. b("Hook Stage") .. " and lose them at the same rate as being " .. b("Hooked") .. dot .. dbr ..
    		
    		b("Exile") .. " is filled with Hazards - " .. b("Seeds of Punishment") .. dot .. space .. "If a Survivor is hit by a hazard, they lose " .. clro("-3 seconds") .. " of " .. b("Hook Stage") .. " progress" .. dot .. dbr ..
    		
    		"While in " .. b("Exile") .. ", Survivors are equipped with " .. iconLink("Searcher's Pendant") .. dot .. br ..
    		"Survivors can point their " .. b("Searcher's Pendant") .. " to collect nearby " .. b("Exiled Souls") .. dot .. space .. "Survivors may collect up to " .. clro("10") .. space .. b("Exiled Souls") .. dot .. br ..
    		"Each collected " .. b("Exiled Soul") .. " extends the " .. b("Unhook Protections") .. " by " .. clro("+0.5 seconds") .. " once rescued from the " .. b("Exile") .. dot .. space .. br ..
    		b("Exiled Souls") .. " do not extend Unhook Protections once all " .. iconLink(ils.generators) .. " have been completed" .. dot .. dbr ..
    		
    		b("SPECIAL MODE: ZEALOUS") .. img("Will of the Gods (Zealous)", "48px") .. img("Will of the Gods (Divine Light - Zealous)", "48px") .. img("Will of the Gods (Launch Divine Light - Zealous)", "48px") .. br ..
    		biclr("blue", "Zealous") .. " is activated for " .. clro("60 seconds") .. " after sending a Survivor to the " .. b("Exile") .. dot .. dbr ..
    		
    		"While " .. biclr("blue", "Zealous") .. ", the " .. b("Divine Light") .. " is enhanced with the following effects:" .. br ..
    		list("Size increased by " .. clro("+10 %"),
    			"Cast duration increased by " .. clro("+50 %") .. dot,
    			"Cool-down decreased by " .. clro("-20 %") .. dot,
    			"Cast column control is retained for " .. clro("0.6 seconds") .. dot) ..
    		
    		b("SPECIAL OBJECT: SHRINES OF JUDGMENT") .. br ..
    		clro("7") .. space .. b("Shrines of Judgment") .. " spawn in the Trial Grounds" .. dot .. dbr ..
    		
    		biclr("light blue", "Heretics") .. " are able to interact with a " .. b("Shrine") .. " to start removing their " .. biclr("wiki gold", "Heresy") .. " over a period of " .. clro("30 seconds") .. dot .. dbr ..
    		
    		"When a Survivor is " .. b("Exiled") .. ", the " .. clro("2") .. space .. b("Shrines") .. " closest to " .. b("The Judgment") .. " activate for Survivors" .. dot .. br ..
    		"Interacting with an active " .. b("Shrine") .. " will rescue Survivors inside the " .. b("Exile") .. dot .. dbr ..
    		
    		b("SPECIAL INTERACTION: HERETIC KILL") .. img("Mini-Mori", "48px") .. br ..
    		biclr("light blue", "Heretics") .. " who have reached the final " .. b("Hook Stage") .. " can be killed while in the Dying State by pressing the " .. loadoutStrings.secondaryPowerButton .. dot .. space .. "This also triggers " .. biclr("blue", "Zealous") .. " mode" .. dot
    	}
    },
}

return p