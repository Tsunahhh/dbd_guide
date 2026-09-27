local p = {}
local utils = require("Module:Utils")
local data = require("Module:Datatable" .. utils.lang())
local perksData = mw.loadData("Module:Datatable/Loadout" .. utils.lang())
local mathOps = require("Module:MathOps")
local perkImg = require("Module:PerkImage")
local str = require("Module:Strings")
local frame = mw.getCurrentFrame()
local _defaultSpeed = 4 --m/s | 100%

local perks = perksData.perks

p.strings = {
	killers = "Killers",
	the = "The",
	unkwnKiller = "Unknown Killer",
	realName = "Name",
	noName = "None", --When the killer doesn't have the real name (ex. Demogorgon)
	altName = "Game Alias(es)",
	gender = "Gender",
	origin = "Origin",
	realm = "Realm", --link
	power = "Power", --link
	powers = "Powers", --link
	powerNotFound = "Power not found",
	powerType = "Power [[Attack]] Type",
	spAttackTrue = "Special Attack",
	spAttackFalse = "Basic Attack",
	weapon = "Weapon",
	weapons = "Weapons",
	speed = "Movement Speed", --iconlink
	altSpeed = "Alternate Movement speed",
	metres = "metres",
	m = "m", --abbreviation of metres
	terror = "Terror Radius", --iconlink
	altTerror = "Alternate Terror Radius",
	lullabyRadius = "[[Lullaby]] Radius",
	height = "Height", --image
	tall = "Tall",
	avg = "Average",
	short = "Short",
	dlc = "DLC",
	actor = "Voice Actor",
	breathing = "Breathing",
	altBreathing = "Alternate Breathing",
	menuMusic = "Menu Music",
	terrorMusic = "Terror Radius Music",
	lullaby = "Lullaby",
	lullabies = "Lullabies",
	unknownActor = "Undisclosed Voice Actress",
	unkownPower = "Unknown Power",
	unkownSpeed = "Unknown Speed",
	cost = "Cost",
	freeCost = "Free", --this string needs to be same as the string at DLCs that are free
	
	metadata = "Metadata",
	charid = "CharID",
	themeFilename = "Theme Filename",

	mps = "m/s",
	err = "Error",
	
	diffEasy = "Difficulty Rating: " .. bclr("Easy","Easy") .. br .. brackets(i("These Killers are the easiest for a first-time Player")),
	diffModerate = "Difficulty Rating: " .. bclr("Moderate","Moderate") .. br .. brackets(i("These Killers require the Player to be comfortable with the basics of the role, though they share common mechanics with easier ones")),
	diffHard = "Difficulty Rating: " .. bclr("Hard","Hard") .. br .. brackets(i("These Killers use mechanics that are specific to them and require more practice to be effective")),
	diffVeryHard = "Difficulty Rating: " .. bclr("Very Hard","Very Hard") .. br .. brackets(i("These Killers require a high amount of practice and understanding, inexperienced Players are likely to find little success when using them")),
	diffError = biclr("orange", "Difficulty rating not found"),

}
local strings = p.strings
----------------------------------------------
if utils.lang() ~= cstr.empty and (counter or 0) < 1 then
	counter = (counter or 0) + 1
	strings = require("Module:Killers" .. utils.lang()).strings
end

p.killerDifficulties = {"Easy", "Moderate", "Hard", "Very Hard"}

function p.getCountOfKillers()
	return utils.getCount("killer")
end

function p.getKillerById(id)
	for _, killer in ipairs(data.killers) do
		if killer.id == id then
			local killerObj = table.copy(killer)
			return killerObj
		end
	end
	return nil
end

function p.getKillerByName(name) return getKillerByName(name) end --used in Loadout module
function getKillerByName(name)
	for _, killer in ipairs(data.killers) do
		if killer.shortName == name or killer.realName == name or killer.name == name or (the(killer) .. killer.name) == name then
			local killerObj = table.copy(killer)
			return killerObj
		end
	end
	return false
end

function getKillerIdByName(name)
	local result = getKillerByName(name)
	return (result and result.id) or 0
end

--Function not used on English wiki (Currently: IT)
function p.getKillerRealName(killer) --expected nickname
	killer = utils.resolveParameter(killer)
	if type(killer) == types.string then
		killer = getKillerByName(killer)
	end
	return killer.realName
end

function p.getKillerPowerNameByKillerName(name)
	local result = p.getKillerPower(getKillerByName(utils.resolveParameter(name)))
	return (result and result.name) or strings.unkownPower
end

function p.getKillersSpeedByName(name)
	local result = getKillerByName(utils.resolveParameter(name))
	if result then
		if type(result.speed) == types.table then
			return result.speed[0]
		else
			return result.speed
		end
	end
	return strings.unkownSpeed
end

--articleless => whether the nickname is supposed to return with "The " before the name itself
function p.getKillerNicknameByRealName(args, articleless)
	articleless = utils.bool(utils.resolveParameter(args, "articleless", true))
	name = utils.resolveParameter(args)
	for _, killer in ipairs(killers) do
		if killer.shortName == name or killer.realName == name or killer.name == name or (the(killer) .. killer.name) == name then
			return ((not articleless and the(killer)) or cstr.empty) .. killer.name
		end
	end
	return strings.unkwnKiller
end

function p.resolveKillerCharTable(name)
	local dlcs = require("Module:DLCs")
	local various = require("Module:Various")
	name = utils.resolveParameter(name)
	local killerId = getKillerIdByName(name)
	local killer = utils.getCharacterById(killerId, killers)
	local result = cstr.empty
	
	if type(killer) ~= "table" then return killer end
	killer.dlcList = dlcs.getDlcsByCharacter(killer)
	killer.dlc = dlcs.getMainDlc(killer.dlcList) --Main DLC
	killer.chapterPackDlc = dlcs.getChapterPackDlc(killer.dlcList) --Chapter for case they contain an info about a discount
	killer.isDiscounted = dlcs.isDiscounted(killer.dlcList)
	killer.power = killer.power or p.getKillerPower(killer)

	result = 
	'{| class = "infoboxtable charInfoboxTable killerInfobox"' .. nl ..
	ntl ..' class = "infoboxTitle" | ' .. nl ..
	'! class = "center bold" colspan = 2 | ' .. the(killer) .. killer.name .. nl .. ntl .. nl ..
	
--	'<tabber>' ..
--	'|-|First=' ..
--	'First tab sample text.' ..
--	'|-|Second=' ..
--	'Second tab content goes here. ' ..
--	'|-|Third Tab Title=' ..
--	'Third tab content goes here.' ..
--	'</tabber>' ..

	'! class = "center charInfoboxImage" colspan = 2 | ' .. various.getCharPortrait(killer, nil, false) .. nl ..
	ntl .. nl
	if killer.realName ~= nil then
		result = result .. tl .. class('titleColumn') .. tl .. strings.realName .. dtl .. class('valueColumn') .. tl .. (killer.shortName or killer.realName or strings.noName) .. nl .. ntl .. nl
	end
	if killer.altName ~= nil then
		result = result .. tl ..class('titleColumn') .. tl .. strings.altName .. dtl .. class('valueColumn', 'italic') .. tl .. resolveAltName(killer) .. nl .. ntl .. nl
	end
	result = result ..
	tl .. class('titleColumn') .. tl .. strings.gender .. 
		dtl .. class('valueColumn') .. tl .. killer.gender .. nl .. ntl .. nl ..
	tl .. class('titleColumn') .. tl .. strings.origin .. 
		dtl .. class('valueColumn') .. tl .. killer.origin .. nl .. ntl .. nl
	if killer.realm ~= nil or killer.dlc ~= nil then
		local killerRealm = resolveKillerRealm(killer)
		if killerRealm ~= 0 then
			result = result .. tl .. class('titleColumn') .. tl .. link(strings.realm) .. dtl .. class('valueColumn') .. tl .. link(killerRealm) ..  nl .. ntl .. nl
		end
	end
	result = result ..
	tl .. class('titleColumn') .. tl .. link(strings.power) .. dtl .. class('valueColumn') .. tl .. ((killer.power and link(strings.powers .. '#' .. the(killer) .. killer.name .. tl .. (killer.power.name or killer.power))) or strings.powerNotFound) .. nl .. ntl .. nl
	if killer.specialAttack ~= nil then
		result = result .. tl .. class('titleColumn') .. tl .. strings.powerType .. dtl .. class('valueColumn') .. tl .. resolvePowerAttack(killer) .. nl .. ntl .. nl
	end
	if killer.weapon then
		result = result .. tl .. class('titleColumn') .. tl .. link(strings.weapon) .. dtl .. class('valueColumn') .. tl .. link(strings.weapons .. '#' .. the(killer) .. killer.name .. tl .. killer.weapon) .. nl .. ntl .. nl
	end
	result = result ..
	tl .. class('titleColumn') .. tl .. utils.IconLink(strings.speed) .. dtl .. class('valueColumn') .. tl .. resolveKillerSpeed(killer) .. nl .. ntl .. nl
	if killer.altSpeed ~= nil then
		result = result .. tl .. class('titleColumn') .. tl .. strings.altSpeed .. dtl .. class('valueColumn') .. tl .. resolveAltSpeed(killer) .. nl .. ntl .. nl
	end
	result = result ..
	tl .. class('titleColumn') .. tl .. utils.IconLink(strings.terror) .. dtl .. class('valueColumn') .. tl .. resolveTerrorRadius(killer) .. nl .. ntl .. nl
	local altTerror = resolveAltTerrorRadius(killer)
	if altTerror then
		result = result .. tl .. class('titleColumn') .. tl .. strings.altTerror .. dtl .. class('valueColumn') .. tl .. altTerror .. nl .. ntl .. nl		
	end
	local lullabyRadius = resolveLullabyRadius(killer)
	if lullabyRadius then
		result = result .. tl .. class('titleColumn') .. tl .. strings.lullabyRadius .. dtl .. class('valueColumn') .. tl .. lullabyRadius .. nl .. ntl .. nl
	end
	result = result ..
	tl .. class('titleColumn') .. tl .. strings.height .. space .. utils.IconLink(strings.height, "img") .. dtl .. class('valueColumn') .. tl .. resolveHeight(killer) .. nl .. ntl .. nl
	if killer.dlc ~= nil then
		result = result .. tl .. class('titleColumn') .. tl .. strings.dlc .. dtl .. class('valueColumn') .. tl .. dlcs.getDlcFullNameByCharacter(killer) .. space .. nl .. ntl .. nl
	end
	result = result ..
	tl .. class('titleColumn') .. tl .. strings.actor .. dtl .. class('valueColumn') .. tl .. resolveActor(killer) .. nl
	if killer.dlc and 
		(
			(not killer.dlc.retracted and (killer.dlc.cost == nil or type(killer.dlc.cost) == types.table or (type(killer.dlc.cost) == types.string and killer.dlc.cost ~= strings.freeCost)))
		or	(killer.dlc.retracted and killer.isDiscounted)
		)
		then
		local ac = utils.getCcyById(5) --we retrieve the ac and is currency (mainly due to other non-en wikis)
		local is = utils.getCcyById(3)
		dmp(killer.dlc)
		lg("ctkrv?")
		dmp(killer.chapterPackDlc)
		local isCost = (not killer.dlc.licensed and utils.commaFormat(killer.isDiscounted and ((killer.chapterPackDlc and killer.chapterPackDlc.discount and data.charISCost - killer.chapterPackDlc.discount * data.charISCost) or data.charISCost * 0.5) or data.charISCost)) or 0
		local acCost = utils.commaFormat(killer.isDiscounted and ((killer.chapterPackDlc and killer.chapterPackDlc.discount and data.charACCost - killer.chapterPackDlc.discount * data.charACCost) or data.charACCost * 0.5) or data.charACCost)
		result = result .. ntl .. nl .. 
			tl .. class('titleColumn') .. tl .. strings.cost .. dtl .. class('valueColumn') .. tl .. 
			((not killer.dlc.licensed and isCost .. space .. utils.IconLink(is.plural or is.name .. "s") .. nl) or cstr.empty) ..
			acCost .. space .. utils.IconLink(ac.plural or ac.name .. "s") .. nl
	end
	local breathingMusic = resolveBreathingMusic(killer)
	if breathingMusic then
		result = result .. ntl .. nl ..
		'| class = "titleColumn center" colspan = 2 ' .. tl .. space .. strings.breathing .. nl .. ntl .. nl ..
		'| class = "valueColumn center soundColumn" colspan = 2 ' .. tl .. space .. breathingMusic .. nl
	end
	local altBreathing = resolveAltBreathing(killer)
	if altBreathing then 
		result = result .. ntl .. nl ..
		tl .. ' class = "titleColumn center" colspan = 2 ' .. tl .. space .. strings.altBreathing .. nl .. ntl .. nl ..
		tl .. ' class = "valueColumn center soundColumn" colspan = 2 ' .. tl .. space .. altBreathing .. nl
	end
	local theme, themeSuccess = various.resolveCharacterThemeMusic(killer, true)
	if themeSuccess then
		result = result .. ntl .. nl ..
		'| class = "titleColumn center" colspan = 2 ' .. tl .. space .. strings.menuMusic .. nl .. ntl .. nl ..
		'| class = "valueColumn center soundColumn" colspan = 2 ' .. tl .. space .. theme .. nl
	end
	local terrorMusic = resolveTRMusic(killer)
	if terrorMusic then
		result = result .. ntl .. nl ..
		'| class = "titleColumn center" colspan = 2 ' .. tl .. space .. strings.terrorMusic .. nl ..	ntl .. nl ..
		'| class = "valueColumn center soundColumn" colspan = 2 ' .. tl .. space .. terrorMusic .. nl
	end

	local lullaby = resolveLullaby(killer, 1)
	local counter = ((lullaby and 1) or 0) --if you find a lullaby then set the counter to 1, otherwise 0
	local tempResult = cstr.empty
	while lullaby do
		tempResult = tempResult .. ntl .. nl ..
		'| class = "valueColumn center soundColumn" colspan = 2 ' .. tl .. space .. lullaby .. nl
		
		counter = counter + 1
		lullaby = resolveLullaby(killer, counter)
	end
	
	if counter > 0 then --if lullaby was found
		result = result .. ntl .. nl .. '| class = "titleColumn center" colspan = 2 | ' .. ((counter > 2 and strings.lullabies) or strings.lullaby) .. nl .. tempResult
	end
	
	--Metadata
	local metadataNewLine = ntl .. class("metadata") .. nl .. tl .. class("titleColumn") .. tl
	result = result ..
		ntl .. nl ..
		tl .. colspan(2) .. space .. class("metadata") .. tl .. center(b(strings.metadata)) .. nl ..
		metadataNewLine .. strings.charid .. dtl .. utils.getCharacterIdentifier(killer) .. nl ..
		(killer.theme ~= false and (not themeSuccess and various.shouldHaveTheme(killer) and metadataNewLine .. strings.themeFilename .. dtl .. theme .. nl) or cstr.empty)
		
	result = result ..
		'|}'
	
	--mw.log(result)
	return result
end

function p.getKillerPower(killer)
	local pwrData = require("Module:Datatable/Loadout" .. utils.lang())
	if killer and pwrData.powers[killer.id] then
		return pwrData.powers[killer.id]
	end
	for pwrName, pwr in pairs(pwrData.powers) do
		if killer and pwr.killer == killer.id then
			local power = table.copy(pwr)
			power.name = power.name or pwrName
			return power
		end
	end
	return false
end

function resolveAltTerrorRadius(killer)
	if not killer.altRadius then return false end
	local result = killer.altRadius
	if type(killer.altRadius) == types.table then
		result = cstr.empty
		for i, radius in ipairs(killer.altRadius) do
			result = result .. radius[1] .. space .. strings.metres .. space .. brackets(radius[2]) .. ((i < #killer.altRadius and dnl) or cstr.empty)
		end
	end
	return result
end

function resolveActor(killer)
	local result = strings.uknownActor
	
	if type(killer.actor) == types.string then
		result = killer.actor
	elseif type(killer.actor) == types.table then
		result = cstr.empty
		for i, actor in ipairs(killer.actor) do
			result = result .. actor .. ((i < #killer.actor and dnl) or cstr.empty)
		end
	end
	return result
end

function resolveLullabyRadius(killer)
	if not killer.lullabyRadius then return false end
	local result = cstr.empty
	
	if type(killer.lullabyRadius) == "table" then
		for i, lullaby in ipairs(killer.lullabyRadius) do
			result = result .. lullaby[1] .. space .. strings.metres .. space .. brackets(lullaby[2])
			if i < #killer.lullabyRadius then
				result = result .. dnl
			end
		end
	else
		result = (killer.lullabyRadius and killer.lullabyRadius .. space ..strings.metres) or cstr.empty
	end
	
	return result
end

function resolveBreathingMusic(killer)
	local file = (killer.techName or killer.name) .. space .. 'Breathing'
	local valid = utils.isValidFileName(file, cstr.ogg)
	return (valid and link(cstr.file .. file .. dot .. cstr.ogg)) or valid
end

function resolveAltBreathing(killer, index)
	local file = (killer.techName or killer.name) .. space .. 'Breathing' .. space .. (index or 2)
	valid = utils.isValidFileName(file, cstr.ogg)
	return (valid and link(cstr.file .. file .. dot .. cstr.ogg)) or valid
end

function resolveTRMusic(killer)
	local file = 'TerrorRadius_' .. (killer.techName or killer.name)
	local valid = utils.isValidFileName(file, cstr.ogg)
	return (valid and link(cstr.file .. file .. dot .. cstr.ogg)) or valid
end

function resolveLullaby(killer, index)
	local file = (killer.techName or killer.name) .. space .. 'Lullaby' .. ((index and space .. index) or cstr.empty)
	local valid = utils.isValidFileName(file, cstr.ogg)
	return (valid and link(cstr.file .. file .. dot .. cstr.ogg)) or valid
end

function resolveAltName(killer)
	if type(killer.altName) == "string" then return '"' .. killer.altName .. '"'
	elseif type(killer.altName) == "table" then
		local result = ""
		for i, name in ipairs(killer.altName) do
			result = result .. '"' .. name .. '"'
			if i < #killer.altName then 
				result = result .. dnl
			end
		end
		return result
	end
	
	return strings.err
end

function resolvePowerAttack(killer)
	local result = cstr.empty
	
	if killer.specialAttack then 
		result = strings.spAttackTrue
	else
		result = strings.spAttackFalse
	end
	
	if killer.altAttackNote ~= nil then
		result = result .. nl .. "(" .. killer.altAttackNote .. ")"
	end
	
	return result
end

function resolveKillerRealm(killer)
	if killer.dlc == nil then
		for _, realm in ipairs(realms) do
			if realm.id == killer.realm then return realm.name end
		end
	else
		for _, realm in ipairs(realms) do
			if type(realm.dlc) == types.number and realm.dlc == resolveDlcProperty(killer) then return realm.name
			elseif type(realm.dlc) == types.table then
				for _, dlcId in ipairs(realm.dlc) do
					if dlcId == resolveDlcProperty(killer) then return realm.name end
				end
			end
		end
	end
	return 0
end

--check if the killer has populated dlc as a table
function resolveDlcProperty(killer)
	return ((type(killer.dlc) == types.number and killer.dlc) or (type(killer.dlc) == types.table and killer.dlc.id) or -1)
end

function resolveKillerSpeed(killer)
	local result = cstr.empty
	
	if type(killer.speed) == "number" then
		result = getPercentSpeed(killer.speed) .. space .. '%' .. space .. b(bar) .. space .. killer.speed .. space .. strings.mps
	else --so the killer speed is table
		result = getPercentSpeed(killer.speed[1]) .. space .. '%' .. space .. b(bar) .. space .. killer.speed[1] .. space .. strings.mps .. space .. brackets(killer.speed[2])
	end

	return result
end

function resolveAltSpeed(killer)
	local result = cstr.empty
	local speedPercent
	
	for i, altSpeed in ipairs(killer.altSpeed) do
		speedPercent = getPercentSpeed(altSpeed[1])
		
		result = result .. speedPercent .. " % " .. b(bar) .. space .. altSpeed[1] .. space .. strings.mps
		if altSpeed[2] ~= nil then
			result = result .. pg .. "(" .. altSpeed[2] .. ")"
		end
		
		if i < #killer.altSpeed then 
			result = result .. "<hr>" --.. nl .. nl
		end
	end
	
	return result
end

function getPercentSpeed(speed)
	return (speed / _defaultSpeed) * 100
end

function resolveTerrorRadius(killer)
	local result = cstr.empty
	
	if type(killer.radius) == types.number then
		return killer.radius .. space .. strings.metres
	elseif type(killer.radius) == types.table then
		for i, radius in ipairs(killer.radius) do
			result = result .. radius[1] --metres value
			if radius[2] ~= nil then --note for alt speed, if there is a note for the speed the abbreviation for metres is used instead of full name
				result = result .. strings.m .. space .. brackets(radius[2])
			else
				result = result .. space .. strings.metres
			end
			if radius[3] ~= nil then
				result = utils.tooltip(result, radius[3])
			end
			if i < #killer.radius then 
				result = result .. nl .. nl
			end
		end
	end
	return result
end

function resolveHeight(killer)
	if		killer.height == 'T'	then return strings.tall
	elseif	killer.height == 'A'	then return strings.avg
	elseif	killer.height == 'S'	then return strings.short
	else								 return strings.err
	end
end

function p.getKillerDifficultyDesc(killerName, difficulty)
	difficulty = difficulty or utils.resolveParameter(killerName, "diff", true) or utils.resolveParameter(killerName, 2, true)
	killerName = utils.resolveParameter(killerName, 1)
	
	local killer = p.getKillerByName(killerName)
	local diffNumber = tonumber((killer and killer.diff) or difficulty)
	
	if diffNumber then
		return strings["diff" .. string.replace(p.killerDifficulties[diffNumber], space, cstr.empty)]
	else
		return strings["diff" .. ((killer and killer.diff or strings.replace(killer.diff, space, cstr.empty)) or difficulty or string.replace(difficulty, space, cstr.empty) or "Error")]
	end
end

return p