local str = require("Module:Strings")
local p = {}

p.variousDataStrings = {
	
}
local strings = p.variousDataStrings

p.effects = {
	["Blessed"]              = {id =  1,   buff = true},
	["Blindness"]            = {id =  2, debuff = true},
	["Bloodlust"]            = {id =  3,   buff = true},
	["Broken"]               = {id =  4, debuff = true},
	["Cursed"]               = {id =  5, debuff = true},
	["Deafened"]             = {id =  6, debuff = true},
	["Deep Wound"]           = {id =  7, debuff = true},
	["Endurance (Survivor)"] = {id =  8,   buff = true, displayName = "Endurance", multiName = true},
	["Endurance (Killer)"]   = {id =  9,   buff = true, displayName = "Endurance", multiName = true},
	["Exhausted"]            = {id = 10, debuff = true},
	["Exposed"]              = {id = 11, debuff = true},
	["Glyph"]                = {id = 12, debuff = true},
	["Haemorrhage"]          = {id = 13, debuff = true},
	["Haste"]                = {id = 14,   buff = true},
	["Hindered"]             = {id = 15, debuff = true},
	["Incapacitated"]        = {id = 16, debuff = true},
	["Madness"]              = {id = 17, debuff = true},
	["Mangled"]              = {id = 18, debuff = true},
	["Oblivious"]            = {id = 19, debuff = true},
	["Revealed"]             = {id = 20, debuff = true},
	["Sleep Penalty"]        = {id = 21, debuff = true},
	["Undetectable"]         = {id = 22,   buff = true},
	["Vision"]               = {id = 23,   buff = true},
	["Elusive"]              = {id = 24,   buff = true},
	["Light-Resistant"]      = {id = 25,   buff = true},
	["Untouchable"]          = {id = 26,   buff = true},
	["Poisoned"]             = {id = 27, debuff = true},
}

p.effectDescriptions = {
	["Blessed"]              = {id =  1, desc =
		"The " .. i(b("Blessed")) .. space .. b("Status Effect") .. " is a " .. bclr(2, "buff") .. " that is applied exclusively to Survivors." ..
		list("Survivors benefitting from " .. i(b("Blessed")) .. " also benefit from whichever effects it applies in the " .. i("Area of Effect") .. " surrounding active " .. b("Boon Totems") .. " for as long as they remain within its boundaries.")
	},
	["Blindness"]            = {id =  2, desc =
		"The " .. i(b("Blindness")) .. space .. b("Status Effect") .. " is a " .. bclr(8, "debuff") .. " that can be applied to both Survivors and Killers." ..
		list(
			"Players suffering from " .. i(b("Blindness")) .. " are unable to read any " .. iconLink(ils.auras) .. ", including from their default Aura-reading abilities.",
			nbullet .. "Some essential Auras are exempt from that general rule, usually associated with Killer Power Objects.")
	},
	["Bloodlust"]            = {id =  3, desc =
		"The " .. i(b("Bloodlust")) .. space .. b("Status Effect") .. " is a " .. bclr(2, "buff") .. " that is applied exclusively to Killers." ..
		list(
			"Killers benefitting from " .. i(b("Bloodlust")) .. " have their Movement speed increased during a prolonged chase.",
			i(b("Bloodlust")) .. " is a tiered " .. b("Status Effect") .. " and increases its strength with each Tier.")
	},
	["Broken"]               = {id =  4, desc =
		"The " .. i(b("Broken")) .. space .. b("Status Effect") .. " is a " .. bclr(8, "debuff") .. " that is applied exclusively to Survivors." ..
		list("Survivors suffering from " .. i(b("Broken")) .. " cannot be healed past the Injured State by any means.")
	},
	["Cursed"]               = {id =  5, desc = 
		"The " .. i(b("Cursed")) .. space .. b("Status Effect") .. " is a " .. bclr(8, "debuff") .. " that is applied exclusively to Survivors." ..
		list("Survivors suffering from " .. i(b("Cursed")) .. " also suffer from whichever effects it applies from active " .. b("Hex Totems") .. " for as long as it remains standing.")
	},
	["Deafened"]             = {id =  6, desc = 
		"The " .. i(b("Deafened")) .. space .. b("Status Effect") .. " is a semi-used " .. bclr(8, "debuff") .. " that can be applied to both Survivors and Killers." ..
		list("Players suffering from " .. i(b("Deafened")) .. " have their audio temporarily muffled and hear a tinnitus-like whistling noise.")
	},	
	["Deep Wound"]           = {id =  7, desc = 
		"The " .. i(b("Deep Wound")) .. space .. b("Status Effect") .. " is a " .. bclr(8, "debuff") .. " that is applied exclusively to Survivors." ..
		list(
			"Survivors suffering from " .. i(b("Deep Wound")) .. " are on a Bleed-out timer of " .. clror("20 seconds") .. " that is displayed to all Players on the HUD.",
			"Once the timer runs out or the Survivor takes additional damage, they are automatically put into the Dying State.")
	},
	["Endurance (Survivor)"] = {id =  8, desc = 
		"The " .. i(b("Endurance")) .. space .. b("Status Effect") .. " is a " .. bclr(2, "buff") .. " that can be applied to both Survivors and Killers, though each side has an exclusive version." ..
		list(
			"Survivors protected by " .. i(b("Endurance")) .. " can resist damage from the Killer, tanking a hit that would otherwise put them into the Dying State." .. br .. "Upon being hit, their outline is highlighted in " .. bclr(16, "white") .. " as a visual indicator to the Killer as to why their hit was blocked.",
			"After triggering " .. i(b("Endurance")) .. ", a Survivor is automatically inflicted with the " .. i(b("Deep Wound")) .. space .. b("Status Effect") .. ", linking the two inextricably.") ..
		"The " .. i(b("Endurance")) .. space .. b("Status Effect") .. " is cancelled prematurely if a Survivor performs a " .. i(link("Conspicuous Action")) .. dot
	},
	["Endurance (Killer)"]   = {id =  9, desc =
		"The " .. i(b("Endurance")) .. space .. b("Status Effect") .. " is a " .. bclr(2, "buff") .. " that can be applied to both Survivors and Killers, though each side has an exclusive version." ..
		list(
			"Killers benefitting from " .. i(b("Endurance")) .. " can endure being stunned by Survivors, effectively negating a Stun completely by greatly reducing its duration.") ..
		"The " .. i(b("Endurance")) .. space .. b("Status Effect") .. " is only available as a " .. i("Twisted Skill") .. dot
	},
	["Exhausted"]            = {id = 10, desc = 
		"The " .. i(b("Exhausted")) .. space .. b("Status Effect") .. " is a " .. bclr(8, "debuff") .. " that is applied exclusively to Survivors." ..
		list(
			"Survivors suffering from " .. i(b("Exhausted")) .. " are unable to use any " .. i(link("Exhaustion Perk")) .. ", preventing them from chaining them in quick succession.",
			"The Cool-down timer of " .. i(b("Exhausted")) .. " only recovers whenever a Survivor is not running.",
			"The Cool-down timer of " .. i(b("Exhausted")) .. " recovers " .. b("instantly") .. " upon being hooked.")
	},
	["Exposed"]              = {id = 11, desc = 
		"The " .. i(b("Exposed")) .. space .. b("Status Effect") .. " is a " .. bclr(8, "debuff") .. " that is applied exclusively to Survivors." ..
		list(
			"Survivors suffering from " .. i(b("Exposed")) .. " experience Double Damage when hit by a " .. i("Basic Attack") .. ", automatically putting them into the Dying State even at full health.",
			i(b("Exposed")) .. " triggers a sound cue for each Survivor becoming afflicted by it.")
	},
	["Glyph"]                = {id = 12, desc =
		"The " .. i(b("Glyph")) .. space .. b("Status Effect") .. " is a " .. bclr(8, "debuff") .. " that is applied exclusively to Killers and only by the " .. bclr(6, "Orange Glyph") .. dot ..
		list("Killers suffering from " .. i(b("Glyph")) .. " experience several debuffs.")
	},
	["Haemorrhage"]          = {id = 13, desc = 
		"The " .. i(b("Haemorrhage")) .. space .. b("Status Effect") .. " is a " .. bclr(8, "debuff") .. " that is applied exclusively to Survivors." ..
		list(
			"Survivors suffering from " .. i(b("Haemorrhage")) .. " produce more " .. iconLink(ils.poolsOfBlood) .. ", making it easier to track them as the Killer.",
			"Causes Survivors to lose any partial Healing progress at a rate of " .. clror("-7 % per second") .. dot)
	},
	["Haste"]                = {id = 14, desc = ""},
	["Hindered"]             = {id = 15, desc = ""},
	["Incapacitated"]        = {id = 16, desc = ""},
	["Madness"]              = {id = 17, desc = ""},
	["Mangled"]              = {id = 18, desc = ""},
	["Oblivious"]            = {id = 19, desc = ""},
	["Revealed"]             = {id = 20, desc = ""},
	["Sleep Penalty"]        = {id = 21, desc = ""},
	["Undetectable"]         = {id = 22, desc = ""},
	["Vision"]               = {id = 23, desc = ""},
	["Elusive"]              = {id = 24, desc = ""},
	["Light-Resistant"]      = {id = 25, desc = ""},
	["Untouchable"]          = {id = 26, desc = ""},
	["Poisoned"]             = {id = 27, desc = ""}
}

return p