local p = {}
local utils = require("Module:Utils")
local data = require("Module:Datatable" .. utils.lang())
local mathOps = require("Module:MathOps")
local str = require("Module:Strings")
local frame = mw.getCurrentFrame()

p.strings = {
	noRealm = "The currently defined Realm is not yet stored in the 'Realms Table' in the [[Module:Datatable|Datatable Module]]",
	unknownRealmImage = "UnknownRealmImage",
	realms = "Realms",
	orString = "or",
	
	isOneOf = "is one of",
	isTheOnly = "is the only",
	wasMap = "was a",
	
	beforeRetired = "before it was retired",
	variationsNote = "<br>It has a total of " .. bclr("orange", "#variationsCount") .. space .. i("Map Variations") .. ", including, if available, a supersized version exclusive to " .. b("2v8") .. " Trials." .. br .. "The regular " .. i("Map Variations") .. " are differentiated by Roman Numerals, with only the first one being part of the Map pool of ranked " .. b("1v4") .. " Trials",
	--oneMapHeaderOrder = "#1# #2# #3# #4# #5# #6# #7# #8# #9# #10# #11# #12# #13# #14# #15# #16# #17# #18# #19# #20#", --if changed order is needed
	--multipleMapsHeaderOrder = "#1# #2# #3# #4# #5# #6# #7# #8# #9# #10# #11# #12# #13# #14# #15# #16# #17# #18# #19# #20#", --if changed order is needed
	--retiredMapHeaderOrder = "#1# #2# #3# #4# #5# #6# #7# #8# #9# #10# #11# #12# #13# #14# #15# #16# #17# #18# #19# #20#", --if changed order is needed
	map = "Map",
	maps = "Maps",
	inThe = "in the",
	realm = "Realm",
	realmInfo = "Associated Realm",
	wipName = "WIP/File Name",
	areaTiles = "Tile Area (sqT, 8x8 m<sup>2</sup>)",
	areaMetres = "Map Area (m<sup>2</sup>)",
	areaTotalTiles = "Total Tile Area (sqT)",
	areaTotalMetres = "Total Map Area (m<sup>2</sup>)",
	patch = "Patch",
	landmarkSound = "Landmark Sound",
	realmIntro = "Intro Theme",
	realmIntros = "Intro Themes",
	layout = "Map Layout",
	layouts = "Map Layouts",
	
	rank = "Rank",
	sizeSqt = "Size (sqT, 8x8 m<sup>2</sup>)",
	sizeM2 = "Size (m<sup>2</sup>)",
	release = "Release Patch",
	
	codeName = "Code Name",
	killer = "Associated Killer(s)",
	palette = "Colour Palette",
	location = "Location",
	dlc = "Associated DLC(s)",
	mapCount = "Number of Maps",
	releaseCount = "Release Patch(es)",
	releaseChapter = "Associated Chapter(s)",
	chapter = "CHAPTER",
	
	retiredMap = bclr("faded jade", "RETIRED MAP")
}
local strings = p.strings
----------------------------------------------
if utils.lang() ~= cstr.empty and (counter or 0) < 1 then
	counter = (counter or 0) + 1
	strings = require("Module:Maps" .. utils.lang()).strings
end
function p.getRealmByName(name)
	for _, realm in ipairs(data.realms) do
		if realm.name == name then return realm end
	end
end
function p.getRealmById(id) --used in Module:Various
	for _, realm in ipairs(data.realms) do
		if realm.id == id then return realm end
	end
end

---used directly on wiki page (realm pages)
function p.getCountOfRealmMapsByName(name)
	realm = p.getRealmByName(utils.resolveParameter(name))
	return p.getCountOfRealmMapsByRealmId(realm.id)
end

function getMapsByRealm(realm)
	result = {}
	for _, map in ipairs(data.maps) do
		if map.realm == realm.id then
			table.add(result, map)
		end
	end
	return result
end


--Function returning an average size across all maps stored in table maps.
--If convertToMetres is set to true then result will be returned in square metres
function p.getAverageMapSize(convertToMetres)
	convertToMetres = utils.bool(utils.resolveParameter(convertToMetres, 1, true))--utils.bool(convertToMetres)
	local result = 0
    local sum = 0

	for _, map in ipairs(data.maps) do
		if map.variations then
			for _, var in ipairs(map.variations) do
				sum = sum + getMapSize(var)
			end
		else
			sum = sum + getMapSize(map)
		end
	end
	
	sum = sum / p.getCountOfMaps() --making average
	if convertToMetres then result = p.toSMetres(sum) else result = sum end
	return mathOps.round(result)
end

function sumMultipleFloors(floors)
	result = 0
	if type(floors) == types.table then
		for _, mapFloor in ipairs(floors) do
			result = result + mapFloor[1]
		end
	else
		result = floors --single value is passed
	end
	return result
end

function getMapSize(mapObj)
	return (type(mapObj.size) == types.table and sumMultipleFloors(mapObj.size)) or mapObj.size
end

--Call a function with a string parameter that will be resolved afterwards
function p.getCountOfMaps()
	return utils.getCount("map")
end

function p.getCountOfRealms()
	return utils.getCount("realm")
end

--Returns the biggest map from the maps table. Size is measured in Square Tiles.
--returnName: [optional parameter], String -> Boolean, flag whether function should return Name of map or size value by default
function p.getBiggestMap(returnName)
	returnName = utils.bool(utils.resolveParameter(returnName, 1, true)) or utils.bool(returnName)
	local mapObj
	local result = 0
	local varId

	for _, map in ipairs(data.maps) do
		if map.variations then
			for i, var in ipairs(map.variations) do
				local varSize = getMapSize(var)
				if varSize > result then
					result = varSize
					mapObj = map
					varId  = i
				end
			end
		else
			local mapSize = getMapSize(map)
			if mapSize > result then
				result = mapSize
				mapObj = map
				varId  = nil
			end
		end
	end
	
	if(returnName) then
		return link(mapObj.name, (varId and mapObj.name .. space .. utils.toRomanNumerals(varId)) or nil)
	end
	return result
end

--Returns the smallest map from the maps table. Size is measured in Square Tiles.
--returnName: [optional parameter], String -> Boolean, flag whether function should return Name of map or size value by default
function p.getSmallestMap(returnName)
	returnName = utils.bool(utils.resolveParameter(returnName, 1, true)) or utils.bool(returnName)
	local mapObj
	local result = 10000
	local varId

	for _, map in ipairs(data.maps) do
		if map.variations then
			for i, var in ipairs(map.variations) do
				local varSize = getMapSize(var)
				if varSize > 0 and varSize < result then
					result = varSize
					mapObj = map
					varId  = i
				end
			end
		else
			local mapSize = getMapSize(map)
			if mapSize > 0 and mapSize < result then
				result = mapSize
				mapObj = map
				varId  = nil
			end
		end
	end
	
	if(returnName) then
		return mapObj.name .. ((varId and space .. utils.toRomanNumerals(varId)) or cstr.empty)
	end
	return result
end

function p.getCountOfRealmMapsByRealmId(realmId)
	local result = 0
	
	for _, map in ipairs(maps) do
		if map.realm == realmId then
			if map.variations then
				result = result + #map.variations
			else
				result = result + 1
			end
		end
	end
	
	return result
end


function p.getRealmIdByRealm(realm)
	if type(realm) ~= "string" then
		realm = realm.args[1] or mw.title.getCurrentTitle().text
	end
	
	spec = "^(.+) %(.+%)$" --page specification, ex.: "Silent Hill (Realm)"" >> "Silent Hill"
	if string.find(realm, spec) then
		realm = realm:match(spec)	
	end
	for i, realmItem in ipairs(data.realms) do
		if realm == realmItem.name then return realmItem.id end
	end
	return 0
end

--Returns Realm ID based on map name passed as a parameter
function p.getRealmByMap(map) return getRealmByMap(map) end --used in Module:Various
function getRealmByMap(map)
	for _, realm in ipairs(realms) do
		if realm.id == map.realm then
			return realm
		end
	end
end

function p.toSMetres(number)
	return number * 64	
end

function p.toSTiles(number)
	return number / 64	
end

function getMapIndexByMapName(map)
	for _, currentMap in ipairs(maps) do
		if currentMap.name == map then
			return currentMap.id
		end
	end
	return 0
end

function p.getMapByMapName(map)
	for _, currentMap in ipairs(maps) do
		if currentMap.name == map then
			return currentMap
		end
	end
	return nil
end

function p.getMapById(id) --used in Module:Various
	for _, map in ipairs(maps) do
		if map.id == id then
			return map
		end
	end
	return nil
end
--------------------------------------------------------------------------------------------------------

--id: [optional parameter], id of map from table maps
function p.getMapName(id)
	if type(id) == "table" and type(id.args[1]) ~= "nil" then
		id = tonumber(id.args[1])
	elseif type(id) == "table" then
		id = getMapIndexByMapName(mw.title.getCurrentTitle().text)
	end

	return 	maps[id].name
end

function p.getMapSize(mapObj, convertToMetres)
	local value
	local areas = cstr.empty
	local map = table.copy(mapObj)
	
	if type(map.size) == types.table then
		for i, area in ipairs(map.size) do
			if area[1] > 0 then
				if convertToMetres then value = utils.commaFormat(p.toSMetres(area[1])) else value = area[1] end
				areas = areas .. value .. space .. brackets(area[2]) .. ((i < #map.size and pg) or cstr.empty)
			end
		end
		return areas
	else
		if convertToMetres then return p.toSMetres(map.size) end
		return map.size
	end
	
	return areas
end

function p.getMapSizeByMapInSMetres(map)
	return p.getMapSize(utils.resolveParameter(map), true)
end

function p.getMinHooksByMap(map)
	if type(map) ~= "string" then
		map = map.args[1] or mw.title.getCurrentTitle().text
	end
	
	return 	maps[getMapIndexByMapName(map)].minHooks
end

--returns a table with Outline name(s)
function p.getOutlineGrid(map, index)
	local result = {}
	local imageObj = getMapImages(map)
	local mapDataObj = map.variations and map.variations[index] or map
	local numeralVariation = (map.variations and map.variations[index] and map.variations[index].altVarSuffix) or (index and index > 1 and utils.toRomanNumerals(index)) or cstr.empty

	if type(mapDataObj.size) == types.table then
		for i, area in ipairs(mapDataObj.size) do
			if(imageObj) then
				table.add(result, imageObj.outline[i] .. dot .. cstr.png)
			else
				local outlineName = utils.resolveFileName(map.techName or map.name) .. numeralVariation .. "Outline_" .. utils.resolveFileName(mapDataObj.size[i].techName or mapDataObj.size[i][2])
				table.add(result, outlineName .. dot .. cstr.png)
			end
		end
	else
		if(imageObj) then
			table.add(result, imageObj.outline .. dot .. cstr.png)
		else
			table.add(result, utils.resolveFileName(map.techName or map.name) .. numeralVariation .. "Outline" .. dot .. cstr.png)
		end
	end

	return result
end

function getMapImages(map)
	for _, mapImage in ipairs(data.mapImages) do
		if mapImage.id == map.id then
			return mapImage
		end
	end
end

function resolveImageNameByMap(map, index)
	local imageObj = getMapImages(map)
	
	if(imageObj) then
		return imageObj.image .. dot .. cstr.png
	end

	local filename = "IconMap " .. getRealmByMap(map).abbr .. space .. utils.resolveFileName(map.altName) .. (index and index > 1 and utils.toRomanNumerals(index) or cstr.empty)
	return (utils.isValidFileName(filename) and filename .. dot .. cstr.png) 
		or "IconMap " .. getRealmByMap(map).abbr .. space .. utils.resolveFileName(map.altName) .. dot .. cstr.png
end

--map = map object
function p.getMapInfobox(map)
	local realm = getRealmByMap(map)
	local paramTable = {}
	
	local mapVarCount = map.variations and #map.variations or 1

	local result = cstr.empty
	local mapVar, varNumber
	for i = 1, mapVarCount do
		local tempResult = cstr.empty
		if map.variations then
			mapVar = map.variations[i]
			varNumber = mapVar.altVarSuffix or (map.variations and utils.toRomanNumerals(i)) or cstr.empty
		end
		local varNumberWithSpace = (varNumber and space .. varNumber) or cstr.empty
		local outlines = p.getOutlineGrid(map, i)
		
		local mapDataObj = map.variations and map.variations[i] or map
		
		paramTable.image = resolveImageNameByMap(map, i)
		paramTable.area = p.getMapSize(mapDataObj)
		paramTable.area2 = p.getMapSizeByMapInSMetres(mapDataObj)
		if type(mapDataObj.size) == types.table then
			paramTable.area3 = 0
			for _, area in ipairs(mapDataObj.size) do
				paramTable.area3 = paramTable.area3 + area[1] --mapTiles are expected to be first parameter
			end
			paramTable.area4 = utils.commaFormat(p.toSMetres(paramTable.area3))
		end
		
		tempResult = tempResult ..
			tLine(class("infoboxname bold center") .. colspan(2), map.name .. varNumberWithSpace) ..
			tLine(class("center") .. colspan(2), file(paramTable.image, "400px")) ..
			(map.altName and tLine(class("titleColumn"), strings.wipName, map.altName) or cstr.empty) ..
			tLine(class("titleColumn"), strings.realmInfo, link(realm.name)) ..
			((((type(paramTable.area) == types.string and paramTable.area ~= cstr.empty) or (type(paramTable.area) == "number" and paramTable.area > 0))
				and tLine(class("titleColumn"), strings.areaTiles, paramTable.area)) or cstr.empty) ..
			((((type(paramTable.area2) == types.string and paramTable.area2 ~= cstr.empty) or (type(paramTable.area2) == "number" and paramTable.area2 > 0))
				and tLine(class("titleColumn"), strings.areaMetres, paramTable.area2)) or cstr.empty) ..
			((paramTable.area3 and paramTable.area3 > 0 and tLine(class("titleColumn"), strings.areaTotalTiles, paramTable.area3)) or cstr.empty) ..
			((paramTable.area4 and paramTable.area4 ~= "0" and tLine(class("titleColumn"), strings.areaTotalMetres, paramTable.area4)) or cstr.empty) ..
			(map.release and tLine(class("titleColumn"), strings.release, link(strings.patch .. space .. mapDataObj.release)) or cstr.empty) ..
			((paramTable.landmarkSound and
				tLine(class("titleColumn center") .. colspan(2), strings.landmarkSound) ..
				tLine(class("valueColumn center soundColumn") .. colspan(2), paramTable.landmarkSound)) or cstr.empty)
		local mapIntro = getMapIntro(realm, map)
		if mapIntro then
			tempResult = tempResult ..
				tLine(class("titleColumn center") .. colspan(2), strings.realmIntro) ..
				tLine(class("valueColumn center soundColumn") .. colspan(2), mapIntro)
		end
		if #outlines > 0 then
			tempResult = tempResult .. tLine(class("titleColumn center") .. colspan(2), (#outlines > 1 and strings.layouts) or strings.layout)
			for _, outline in ipairs(outlines) do
				tempResult = tempResult ..
					tLine(class("center") .. colspan(2), file(outline, "300px"))
			end
		end
		
		result = result .. "|-|" .. (mapVarCount < 3 and map.name or cstr.empty) .. varNumberWithSpace .. "=" .. nl .. utils.wrapTable(tempResult, "infoboxtable left", nil, true) .. nl
	end
	
	result = ntl .. nl .. tl .. class("center") .. tl .. frame:callParserFunction{name = '#tag', args = {"tabber", result}} .. nl
	result = utils.wrapTable(result, "hiddenInfobox", nil, true)
	
	--mw.log(result)
	return result
	
end

function newTableLine(title)
	return ntl .. nl .. tl .. space .. class("titleColumn") .. ((title and tl .. title .. dtl) or cstr.empty)
end

function getMapIntro(realm, map)
	for _, theme in ipairs(mapIntroThemes) do
		if theme.id == map.id then
			return file(theme.theme .. dot .. cstr.ogg)
		end
	end
	local fileName = 'MapIntro ' .. (realm.techName or realm.name)
	--local valid = utils.isValidFileName(fileName, cstr.ogg)
	--return (valid and file(fileName .. dot .. cstr.ogg)) or valid
	return file(fileName .. dot .. cstr.ogg)
end

function p.assembleMapPageHeader(map)
	map = p.getMapByMapName(utils.resolveParameter(map))
	local result = p.getMapInfobox(map)
	local realm = getRealmByMap(map)
	local mapCount = p.getCountOfRealmMapsByRealmId(map.realm)
	local stringList = {skip(b(map.name)), skip(strings.orString .. space .. i(quotes(map.altName)) .. space)}
	local order

	if		map.retired		then		table.addRange(stringList, skip(strings.wasMap), strings.map) order = strings.retiredMapHeaderOrder
	elseif	mapCount > 1	then		table.addRange(stringList, skip(strings.isOneOf), bclr("yellow", mapCount), strings.maps) order = strings.multipleMapsHeaderOrder
	else								table.addRange(stringList, skip(strings.isTheOnly), strings.map) order = strings.oneMapHeaderOrder
	end

	table.addRange(stringList,
		strings.inThe,
		skip(((realm.possessive and realm.possessive .. space) or cstr.empty) .. link(realm.name)),
		utils.IconLink(strings.realm),
		(map.retired and skip(strings.beforeRetired) or cstr.empty),
		(map.variations and skip(dot .. br .. string.replace(strings.variationsNote, "#variationsCount", #map.variations)) or cstr.empty)
	)

	local headerString = utils.getDynamicString(stringList, order) .. dot
	
	--dmp(stringList)
	return result .. headerString
end

--used on Realms page
function p.assembleRealmsArticle()
	result = cstr.empty
	
	for _, realm in ipairs(data.realms) do 
		result = result .. '=== ' .. link(realm.name) .. ' ===' .. nl .. p.assembleMapsForRealms(realm) .. dnl
	end
	
	--mw.log(result)
	return result
end

--used on wiki directly
function p.assembleMapsForRealms(realm)
	realm = (realm and not realm.abbr and p.getRealmByName(utils.resolveParameter(realm))) or realm
	local result = cstr.empty

	for _, map in ipairs(data.maps) do
		if(map.realm == realm.id) then
			result = result .. 
				tl .. center(
					link(map.name) .. nl ..
					((map.retired and strings.retiredMap .. nl) or cstr.empty)) ..
				file(resolveImageNameByMap(map), "center", "frameless", "link=" .. map.name)
			
			for i = 1, (map.variations and #map.variations) or 1 do
				local mapDataObj = map.variations and map.variations[i] or map
				local outlines = p.getOutlineGrid(map, i)
				
				for _, outline in ipairs(outlines) do --loop for cases with multiple outlines
					result = result .. file(outline, "center", "frameless", "200px", "link=" .. map.name)
				end
			end
			
			result = result .. nl --just for keeping the same formatting, functionally completely useless
		end
	end
	
	result = utils.wrapBasicTable(result)
	
	--mw.log(result)
	return result
end

function p.assembleSortedMapsTableBySize()
	local result = cstr.empty
	local center = style("text-align:center")
	local groupedMaps = p.getGroupedMapsTable()
	local bgColor
	--dmp(groupedMaps)

	result = result .. hl .. strings.rank .. dhl .. strings.map .. dhl .. strings.sizeSqt .. dhl .. strings.sizeM2 .. nl
	
	local rank = 1
	local orderedSizes = table.keys(groupedMaps)
	utils.sortTable(orderedSizes, true)
	for _, size in ipairs(orderedSizes) do
		group = groupedMaps[size]
		if size > 0 then
			result = result .. 
				ntl .. center .. nl .. 
				hl .. ((#group > 1 and rowspan(#group) .. tl) or cstr.empty) .. rank .. nl --if count of maps of such size is more than one
			for i, map in ipairs(group) do
				bgColor = data.realms[map.realm].color --In map must be correct realmID otherwise the code fails
				result = result .. 
					((i > 1 and ntl .. center .. nl) or cstr.empty) ..
					tl .. style("background:#" .. bgColor, "color:" .. utils.resolveTextColorByBackground(bgColor)) .. tl .. map.name .. nl
				if #group > 1 and i == 1 then
					result = result .. 
						tl ..rowspan(#group) .. tl .. size .. nl ..
						tl ..rowspan(#group) .. tl .. utils.commaFormat(p.toSMetres(size)) .. nl
				elseif i == 1 then
					result = result .. 
						tl .. size .. nl ..
						tl .. utils.commaFormat(p.toSMetres(size)) .. nl
				end
			end
			rank = rank + 1
		end
	end
	
	result = utils.wrapBasicTable(result)
	
	return result
end

function p.getGroupedMapsTable()
	local groupedMaps = {}
	local mapTableWithVariations = getMapVariationsTable()

	for _, map in ipairs(mapTableWithVariations) do
		local size = sumMultipleFloors((type(size) == types.table and utils.getSumOfsize(map.size)) or map.size)

		if not groupedMaps[size] then --if such size wasn't found in rate table then create a new one
			groupedMaps[size] = {}
		end
		table.add(groupedMaps[size], map)
	end

	return groupedMaps
end

function getMapVariationsTable()
	local result = {}
	
	for _, map in ipairs(data.maps) do
		if map.variations then
			for i, variation in ipairs(map.variations) do
				local newMap = {
					name = map.name .. space .. (variation.altVarSuffix or utils.toRomanNumerals(i)),
					realm = map.realm,
					size = variation.size,
				}
				table.add(result, newMap)
			end
		else
			table.add(result, map)
		end
	end
	
	return result
end

function p.resolveRealmsTableMainPage()
	local result = cstr.empty
	local name
	local fileName

	result = result .. '<div class="fpbox" id="fpRealms" style="text-align: center;">'
	result = result .. '<div class="heading">' ..utils.IconLink(strings.realms) .. '</div>'
	result = result .. '<div class="fplinks">'
	for i, realm in ipairs(data.realms) do
		if not realm.skip then
			name = realm.name or strings.noRealm
			fileName = resolveRealmFileNameByDlc(realm, p.getLatestRealmId())
			
			result = result .. '<div class="fplink realmMainPageBox plainlinks image"><div class="box"><div class="row"><div class="mapCell cell">'
			result = result .. '<div class="image">' .. file(fileName, 'link=' .. (name .. (realm.multiName and space .. brackets(strings.realm) or cstr.empty))) .. '</div>'
			result = result .. '<div class="realmLink link">' .. link(name) .. '<hr class="shadow" /><div class = "mapLinks">'
			
			for j, map in ipairs(maps) do
				if map.realm == realm.id and not map.retired then
					result = result .. link(map.name)
				end
			end
			
			result = result .. '</div></div></div></div></div></div>'
		end
	end
	result = result .. '</div>'
	result = result .. '</div>'

	return result
end

function p.resolveRealmsTableMainPage2()
	local result = cstr.empty
	local name
	local fileName

	result = result .. '<div class="fplinks center">'
	for i, realm in ipairs(data.realms) do
		if not realm.skip then
			name = realm.name or strings.noRealm
			fileName = resolveRealmFileNameByDlc(realm, p.getLatestRealmId())
			
			result = result .. '<div class="fplink realmMainPageBox plainlinks image"><div class="box"><div class="row"><div class="mapCell cell">'
			result = result .. '<div class="image">' .. file(fileName, 'link=' .. (name .. (realm.multiName and space .. brackets(strings.realm) or cstr.empty))) .. '</div>'
			result = result .. '<div class="realmLink link">' .. link(name) .. '<hr class="shadow" /><div class = "mapLinks">'
			
			for j, map in ipairs(maps) do
				if map.realm == realm.id and not map.retired then
					result = result .. link(map.name)
				end
			end
			
			result = result .. '</div></div></div></div></div></div>'
		end
	end
	result = result .. '</div>'

	return result
end

function p.getLatestRealmId()
	result = 0;
	for _, realm in ipairs(data.realms) do
		if result < realm.id then result = realm.id end
	end
	return result
end

function resolveRealmFileNameByDlc(realm, latestId)
	local fileConst = "RealmKeyArt_" --RealmKeyArt 01.png
	local fileName
	
	fileName = fileConst .. string.format("%02d", realm.id)

	if realm.id == nil or (realm.id >= latestId and not utils.isValidFileName(fileName, cstr.png)) then
		return 'UnknownDLC.png'
	else
		return fileName .. dot .. cstr.png
	end
end

function getRelevantDlcsByRealm(realm)
	if type(realm.dlc) == "number" then
		realm.dlc = {realm.dlc}
	end
	local result = {}
	
	for _, rDlc in ipairs(realm.dlc) do
		for _, dlc in ipairs(dlcs) do
			if dlc.id == rDlc then
				table.insert(result, dlc)
			end
		end
	end
	return result
end

function getKillersByRealm(realm)
	local dlcM = require("Module:DLCs" .. utils.lang())
	local filteredDlcs = (realm.dlc and getRelevantDlcsByRealm(realm)) or {}
	local result = {}
	for _, killer in ipairs(killers) do
		local killerDlc = dlcM.getCharacterMainDlc(killer)
		if killer.realm == realm.id then
			table.insert(result, killer)
		else
			for _, dlc in ipairs(filteredDlcs) do
				-- Following part of condition may be obsolete: killerDlc and killerDlc.id == dlc.id
				if killerDlc and killerDlc.id == dlc.id or ((type(killer.dlc) == types.table and table.contains(killer.dlc, dlc.id)) or (type(killer.dlc) == types.number and killer.dlc == dlc.id)) then
					table.insert(result, killer)
				end
			end
		end
	end
	return result
end

function getKillerNameStrings(killers)
	local result = {}
	for i, killer in ipairs(killers) do
		table.insert(result, the(killer) .. utils.IconLink((killer.multiName and killer.realName) or killer.name, killer.shortName or killer.realName or killer.name, killer.name))
	end
	return result
end

function getPatchStrings(patches)
	local result = {}
	for i, patch in ipairs(patches) do
		table.insert(result, link(strings.patch .. space .. patch))
	end
	return result
end

function getDlcNames(filteredDlcs)
	local dlcsModule = require("Module:DLCs" .. utils.lang())
	local result = {}
	local counter = 0
	for _, dlc in ipairs(dlcs) do
		if dlc.category == 1 then
			counter = counter + 1
			for _, fDlc in ipairs(filteredDlcs) do
				if fDlc.id == dlc.id then
					table.insert(result, dlcsModule.getDlcLink(fDlc, false))
				end
			end
		end
	end
	return result
end

--codeName = "Code Name",
--killer = "Killer(s)",
--pallete = "Colour Palette",
--location = "Location",
--dlc = "DLC(s)",
--mapCount = "Map(s)",
--releaseCount = "Release(s)"

function p.resolveRealmInfobox(realmName)
	realmName = utils.resolveParameter(realmName)
	local realm = p.getRealmByName(realmName)
	local filteredDlcs = (realm.dlc and getRelevantDlcsByRealm(realm)) or nil

	local result =
	thLine('colspan = 2 class = "infoboxname"', realm.name) ..
	tLine('colspan = 2 class = "center"', file("RealmKeyArt" .. space .. string.format("%02d", realm.id) .. dot .. cstr.png .. tl .. "300px")) ..
	((realm.codeName and tLine('class = "titleColumn"', strings.codeName, realm.codeName)) or cstr.empty) ..
	tLine('class = "titleColumn"', strings.killer, join(getKillerNameStrings(getKillersByRealm(realm)), pg)) ..
	((realm.palette and tLine('class = "titleColumn"', strings.palette, realm.palette)) or cstr.empty) ..
	((realm.location and tLine('class = "titleColumn"', strings.location, realm.location)) or cstr.empty) ..
	((realm.dlc and tLine('class = "titleColumn"', strings.releaseChapter , join(getDlcNames(filteredDlcs), pg))) or cstr.empty) ..
	tLine('class = "titleColumn"', strings.mapCount, p.getCountOfRealmMapsByRealmId(realm.id)) ..
	((realm.dlc and tLine('class = "titleColumn"', strings.releaseCount , join(getPatchStrings(table.get(filteredDlcs, "release")), pg))) or cstr.empty)
	
	local realmThemes = getRealmThemes(realm)
	if realmThemes then
		result = result .. tLine(class("titleColumn", "center") .. colspan(2), ((#realmThemes > 1 and strings.realmIntros) or strings.realmIntro))
		for _, theme in ipairs(realmThemes) do
			result = result .. tLine(class("valueColumn center soundColumn") .. colspan(2), theme)
		end
	end
	
	result = utils.wrapTable(result, "infoboxtable")
	
	--mw.log(result)
	return result
end

--get all themes if realm consists from mulitple maps that have unique theme
function getRealmThemes(realm)
	local realmMaps = getMapsByRealm(realm)
	local result = {}
	
	for _, map in ipairs(realmMaps) do
		local tempResult = getMapIntro(realm, map) --this could duplicate theme intros if multiple maps don't have. returns either mapIntro file or bool false if the file is not valid, resp. intro doesn't exist/is not uploaded
		if tempResult and not table.contains(result, tempResult) then
			table.add(result, tempResult)
		end
	end
	return (#result > 0 and result) or nil
end

return p