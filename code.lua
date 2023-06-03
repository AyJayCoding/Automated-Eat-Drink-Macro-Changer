-- This file is loaded from "Automated-Eat-Drink-Macro-Changer.toc"
do
	-- Setting up tables: 
	
	local noBuffFoodAndDrinkItems = {
		{[197763] = "Breakfast of Draconic Champions"},
		{[197762] = "Sweet and Sour Clam Chowder"},
		{[190880] = "Catalyzed Apple Pie"},
		{[190881] = "Circle of Subsistence"},
		{[172047] = "Candied Amberjack Cakes"},
		{[173859] = "Ethereal Pomegranate"},
		{[172046] = "Biscuits and Caviar"},
	};

	local noBuffFoodItems = {
		{[197760] = "Mackerel Snackerel"},
		{[197759] = "Cheese and Quackers"},
		{[197761] = "Probably Protein"},
		{[197758] = "Twice-Baked Potato"},
		{[178550] = "Tenebrous Truffle"},
		{[186725] = "Bonemeal Bread"},
	};

	local drinkItems = {
		{[197771] = "Delicious Dragon Spittle"},
		{[197772] = "Churnbelly Tea"},
		{[190936] = "Restorative Flow"},
		{[179992] = "Shadespring Water"}, 
		{[178217] = "Azurebloom Tea"}, 
		{[178545] = "Bone Apple Tea"},
		{[186704] = "Twilight Tea"},
	};

	local critBuffItems = {
		{[197779] = "Filet of Fangs"},
		{[182592] = "Infused Endmire Fruit"}, 
		{[172041] = "Spinefin Souffle and Fries"},
		{[172040] = "Butterscotch Marinated Ribs"},
	};

	local masteryBuffItems = {
		{[197781] = "Salt-Baled Fishcake"},
		{[172049] = "Iridescent Ravioli with Apple Sauce"},
		{[172048] = "Meaty Apple Dumplings"},
	};

	local versaBuffItems = {
		{[197780] = "Seamoth Surprise"},
		{[172051] = "Steak a la Mode"},
		{[172050] = "Sweet Silvergill Sausages"},
	};

	local hasteBuffItems = {
		{[197778] = "Timely Demise"},
		{[172045] = "Tenebrous Crown Roast Aspic"},
		{[172044] = "Cinnamon Bonefish Stew"},
	};

	local staminaBuffItems = {
		{[197791] = "Salted Meat Mash"},
		{[197777] = "Hopefully Healthy"},
		{[172069] = "Banana Beef Pudding"},
		{[172068] = "Pickleed Meat Smoothie"},
	};
	
	local critHasteBuffItems = {
		{[197782] = "Feisty Fish Sticks"},
	};
	
	local critMasteryBuffItems = {
		{[197786] = "Thousandbone Tongueslicer"},
	};
	
	local critVersaBuffItems = {
		{[197785] = "Revenge, Served Cold"},
	};
	
	local hasteMasteryBuffItems = {
		{[197784] = "Sizzling Seafood Medley"},
	};
	
	local hasteVersaBuffItems = {
		{[197783] = "Aromatic Seafood Platter"},
	};
	
	local masteryVersaBuffItems = {
		{[197787] = "Great Cerulean Sea"},
	};
	
	local strengthBuffItems = {
		{[197788] = "Braised Bruffalon Brisket"},
		{[197774] = "Charred HoprnswogSteaks"},
	};

	local agilityBuffItems = {
		{[197789] = "Riverside Picnic"},
		{[197775] = "Scrambled Basilisk Eggs"},
	};

	local intellectBuffItems = {
		{[197790] = "Roast Duck Delight"},
		{[197776] = "Thrice-Spiced Mammoth Kabob"},
	};

	local primaryStatBuffItems = {
		{[204072] = "Deviously Deviled Eggs"},
		{[197792] = "Fated Fortune Cookie"},
	};

	local conjuredFoodAndDrinkItems = {
		{[113509] = "Conjured Mana Bun"}, 
		{[80618] = "Conjured Mana Fritter"}, 
		{[80610] = "Conjured Mana Pudding"}, 
		{[65517] = "Conjured Mana Lollipop"}, 
		{[65516] = "Conjured Mana Cupcake"}, 
		{[65515] = "Conjured Mana Brownie"}, 
		{[65500] = "Conjured Mana Cookie"}, 
		{[65499] = "Conjured Mana Cake"}, 
		{[43523] = "Conjured Mana Strudel"}, 
		{[43518] = "Conjured Mana Pie"}, 
		{[34062] = "Conjured Mana Biscuit"},
	};
	
	local prioritizedListOfModifierMacroStrings = {
		"[mod:altctrlshift]",
		"[mod:altctrl]",
		"[mod:altshift]",
		"[mod:ctrlshift]",
		"[mod:alt]",
		"[mod:ctrl]",
		"[mod:shift]",
		"[nomod]",
	};

	local prioritizedListOfModifierNames = {
		"Alt + Ctrl + Shift",
		"Alt + Ctrl",
		"Alt + Shift",
		"Ctrl + Shift",
		"Alt",
		"Ctrl",
		"Shift",
		"No Modifier",
	};

	local emptyItemList = {};

	local prioritizedListsOfFoodItemsForMacroButtons = {
		{
			noBuffFoodItems,
			critBuffItems,
			versaBuffItems,
			staminaBuffItems,
			drinkItems,
			masteryBuffItems,
			hasteBuffItems,
			conjuredFoodAndDrinkItems,
		},
		{
			emptyItemList,
			masteryVersaBuffItems,
			hasteVersaBuffItems,
			hasteMasteryBuffItems,
			critVersaBuffItems,
			critMasteryBuffItems,
			critHasteBuffItems,
			primaryStatBuffItems,	
		},
	}

	local propertyNoStats = "No stats";
	local propertyConjured = "Conjured"
	local propertySecondaryStatBased = "Secondary Stats";
	local propertyPrimaryStatBased = "Primary Stats";
	local propertyEmpty = "Not Used"

	local propertyListingForprioritizedListsOfFoodItemsForMacroButtons = {
		{
			propertyNoStats,
			propertySecondaryStatBased,
			propertySecondaryStatBased,
			propertySecondaryStatBased,
			propertyNoStats,
			propertySecondaryStatBased,
			propertySecondaryStatBased,
			propertyConjured,
		},
		{
			propertyEmpty,
			propertySecondaryStatBased,
			propertySecondaryStatBased,
			propertySecondaryStatBased,
			propertySecondaryStatBased,
			propertySecondaryStatBased,
			propertySecondaryStatBased,
			propertyPrimaryStatBased,
		},
	}

	local strengthStatId = 1;
	local agilityStatId = 2;
	local intellectStatId = 4;

	local basicMacroButtonName = "AEDMbutton";
	
	local tableOfAddOnMacroButtonContentStrings;
	local tableOfAddOnMacroButtonExistanceStatus;
	local tableOfOldMacroButtonNames = {"AEDMbutton", "AEDMextbutton"}
	
	local initialAddOnMacroString = "#showtooltip\n/use ";
	local itemStringForMacro = "item:";

	-- Setting up string for console output
	local AEDMADDON_CHAT_TITLE = "|CFF9482C9Automated Eat/Drink Macro Changer:|r "

	local updateMacroLater = false;
	local updateMacroNow = false;

	local function getNumberOfEntriesInTable(listToBeChecked)
		local numberOfEntriesInList = 0;
		for _ in ipairs(listToBeChecked) do
			numberOfEntriesInList = numberOfEntriesInList + 1;
		end
		return numberOfEntriesInList;
	end

	local function getNumberOfMacroButtons()
--		print(string.format("%sNumber of Macros "..getNumberOfEntriesInTable(prioritizedListsOfFoodItemsForMacroButtons),AEDMADDON_CHAT_TITLE));
		return getNumberOfEntriesInTable(prioritizedListsOfFoodItemsForMacroButtons);
	end

	local function getFoodItemIDNumberFromFoodTableEntry(tableEntry)
		for foodItemIDNumber, _ in pairs(tableEntry) do
			return foodItemIDNumber;
		end
	end

	local function findFoodItemWithoutDefaultReturnValue(itemTable)
		for _, tableEntry in ipairs(itemTable) do
			local currentFoodItemIDNumber = getFoodItemIDNumberFromFoodTableEntry(tableEntry);
			local itemCount = GetItemCount(currentFoodItemIDNumber,false,false);
			if itemCount > 0 then
				return currentFoodItemIDNumber, true;
			end
		end
		return "", false;
	end

	local function findFoodItemWithDefaultReturnValue(itemTable)
		local firstFoodItemIDNumberStoredAsDefault = false;
		local defaultFoodItemIDNumber = "";
		
		for _, tableEntry in ipairs(itemTable) do
			local currentFoodItemIDNumber = getFoodItemIDNumberFromFoodTableEntry(tableEntry);
			if firstFoodItemIDNumberStoredAsDefault == false then
				defaultFoodItemIDNumber = currentFoodItemIDNumber;
				firstFoodItemIDNumberStoredAsDefault = true;
			end
			local itemCount = GetItemCount(currentFoodItemIDNumber,false,false);
			if itemCount > 0 then
				return currentFoodItemIDNumber;
			end
		end
		return defaultFoodItemIDNumber;
	end

	local function playerLoggedIn(event)
		return event == "PLAYER_LOGIN";
	end
	
	local function bagContentChanged(event)
		return event == "BAG_UPDATE";
	end
	
	local function playerLeftCombat(event)
		return event == "PLAYER_REGEN_ENABLED";
	end

	local function macroNeedsUpdating(event)
		return playerLoggedIn(event) or bagContentChanged(event);
	end
	
	local function playerIsInCombat()
		return InCombatLockdown();
	end
	
	local function markMacroForUpdateLater()
		updateMacroLater = true;
	end

	local function markMacroForUpdateNow()
		updateMacroNow = true;
	end
	
	local function macroWasMarkedForUpdateLater()
		return updateMacroLater;
	end

	local function macroWasMarkedForUpdateNow()
		return updateMacroNow;
	end
	
	local function removeMarkForUpdatingMacroNow()
		updateMacroNow = false;	
	end
	
	local function removeMarkForUpdatingMacroLater()
		updateMacroLater = false;	
	end

	local function determineIfMacroNeedsToBeUpdatedNowOrLater(event)
		removeMarkForUpdatingMacroNow();

		if macroNeedsUpdating(event) then
--				print(string.format("%sUpdate incoming... checking combat",AEDMADDON_CHAT_TITLE));
			if playerIsInCombat() then
--				print(string.format("%sCannot update macro due to combat lockdown...",AEDMADDON_CHAT_TITLE));
				markMacroForUpdateLater();
			else
--				print(string.format("%sUpdate confirmed...",AEDMADDON_CHAT_TITLE));
				markMacroForUpdateNow();
			end
		elseif (playerLeftCombat(event) and macroWasMarkedForUpdateLater()) then  
			markMacroForUpdateNow();
		end	
	end

	local function getAddOnMacroButtonName(macroButtonNumber)
		return basicMacroButtonName..macroButtonNumber;
	end

	local function createNewTablesForAddOnMacroButtons()
		tableOfAddOnMacroButtonContentStrings = {};
		tableOfAddOnMacroButtonExistanceStatus = {};
		
		for macroButtonNumber = 1, getNumberOfMacroButtons() do
			local macroButtonName = getAddOnMacroButtonName(macroButtonNumber);
			tableOfAddOnMacroButtonContentStrings[macroButtonName] = "";
			tableOfAddOnMacroButtonExistanceStatus[macroButtonName] = false;
		end
	end

	local function getTotalNumberOfMacros()
		return GetNumMacros();
	end
	
	local function getMacroName(macroNumber)
		return GetMacroInfo(macroNumber);
	end
	
	local function indicateThatMacroNameWasFound(addOnMacroName)
		tableOfAddOnMacroButtonExistanceStatus[addOnMacroName] = true;
	end

	local function updateLegacyAddonMacroNameWithCurrentMacroName(legacyAddOnMacroName, currentAddOnMacroName)
--		print(string.format("%sEditing "..legacyAddOnMacroName.." into "..currentAddOnMacroName,AEDMADDON_CHAT_TITLE));
		EditMacro(legacyAddOnMacroName, currentAddOnMacroName, nil, "", 1, nil);	
	end

	local function convertPossibleLegacyAddOnMacroNamesToCurrentAddOnMacroNames(nameOfMacroToCheck)
		for oldAddOnMacroNameIndex, oldAddOnMacroName in pairs(tableOfOldMacroButtonNames) do
			if nameOfMacroToCheck == oldAddOnMacroName then
				indicateThatMacroNameWasFound(basicMacroButtonName..oldAddOnMacroNameIndex);
				updateLegacyAddonMacroNameWithCurrentMacroName(oldAddOnMacroName, basicMacroButtonName..oldAddOnMacroNameIndex);
			end
		end
	end

	local function checkIfMacroNameMatchesAnyOfTheAddOnMacroNames(nameOfMacroToCheck)
		convertPossibleLegacyAddOnMacroNamesToCurrentAddOnMacroNames(nameOfMacroToCheck)
		for addOnMacroName, addOnMacroNameFound in pairs(tableOfAddOnMacroButtonExistanceStatus) do
			if nameOfMacroToCheck == addOnMacroName then
				indicateThatMacroNameWasFound(addOnMacroName);
			end
		end
	end

	local function checkIfMacroButtonsAlreadyExist()
		createNewTablesForAddOnMacroButtons();

		for macroNumber=1, getTotalNumberOfMacros() do
			checkIfMacroNameMatchesAnyOfTheAddOnMacroNames(getMacroName(macroNumber));
		end	
	end
	
	local function addStringToMacroButtonString(macroButtonNumber, stringToAdd)
		local macroButtonName = getAddOnMacroButtonName(macroButtonNumber);
		tableOfAddOnMacroButtonContentStrings[macroButtonName] = tableOfAddOnMacroButtonContentStrings[macroButtonName]..stringToAdd;
	end

	local function addModifierStringToMacroButtonString(macroButtonNumber, modifierMacroString)
		addStringToMacroButtonString(macroButtonNumber, modifierMacroString);
	end

	local function elementInListIsUsed(propertiesOfListToBeChecked)
		if propertiesOfListToBeChecked == propertyEmpty then
			return false;
		end
		return true;
	end

	local function doesListContainPossibleConjuredItems(propertiesOfListToBeChecked)
		if propertiesOfListToBeChecked == propertyConjured then
			return true;
		end
		return false;
	end

	local function doesListContainPossiblePrimaryStatItems(propertiesOfListToBeChecked)
		if propertiesOfListToBeChecked == propertyPrimaryStatBased then
			return true;
		end
		return false;
	end

	local function getBasePrimaryStatValues(strengthId, agilityId, intellectId)
		return UnitStat("player",strengthId), UnitStat("player",agilityId), UnitStat("player",intellectId); 
	end

	local function findPrimaryStatFoodItemBasedOnEvaluatedPrimaryStats()
		local strengthBaseValue, agilityBaseValue, intellectBaseValue = getBasePrimaryStatValues(strengthStatId, agilityStatId, intellectStatId);
		local returnString = "";

		if (strengthBaseValue > agilityBaseValue and strengthBaseValue > intellectBaseValue) then -- Check for strength as primary stat
			-- Strength Stat food
			returnString = findFoodItemWithDefaultReturnValue(strengthBuffItems);
		elseif (agilityBaseValue > strengthBaseValue and agilityBaseValue > intellectBaseValue) then -- Check for Agility as primary stat
			-- Agility Stat food
			returnString = findFoodItemWithDefaultReturnValue(agilityBuffItems);
		elseif (intellectBaseValue > strengthBaseValue and intellectBaseValue > agilityBaseValue) then -- Check for Intellect as primary stat
			-- Intellect Stat food
			returnString = findFoodItemWithDefaultReturnValue(intellectBuffItems);
		else -- Default to no buff food and drink items
			returnString = findFoodItemWithDefaultReturnValue(noBuffFoodAndDrinkItems);
		end
		return returnString;
	end

	local function addFoodItemStringToMacroButtonString(macroButtonNumber, modifierIndex)
		local propertiesOfItemListToUse = propertyListingForprioritizedListsOfFoodItemsForMacroButtons[macroButtonNumber];
		local foodItemString = "";
		
		if elementInListIsUsed(propertiesOfItemListToUse[modifierIndex]) then
			addStringToMacroButtonString(macroButtonNumber, itemStringForMacro);

			local itemListToUse = prioritizedListsOfFoodItemsForMacroButtons[macroButtonNumber];

			if doesListContainPossibleConjuredItems(propertiesOfItemListToUse[modifierIndex]) then
				local conjuredItemFound;

				foodItemString, conjuredItemFound = findFoodItemWithoutDefaultReturnValue(itemListToUse[modifierIndex])
				if conjuredItemFound == false then
					foodItemString = findFoodItemWithDefaultReturnValue(noBuffFoodAndDrinkItems)
	--				print(string.format("%sUpdating conjured item "..temporaryString,AEDMADDON_CHAT_TITLE));
				end
			elseif doesListContainPossiblePrimaryStatItems(propertiesOfItemListToUse[modifierIndex]) then
				local generalPrimaryStatBuffItemFound;

				foodItemString, generalPrimaryStatBuffItemFound = findFoodItemWithoutDefaultReturnValue(itemListToUse[modifierIndex]);

				if generalPrimaryStatBuffItemFound == false then
					foodItemString = findPrimaryStatFoodItemBasedOnEvaluatedPrimaryStats();
				end
			else
				foodItemString = findFoodItemWithDefaultReturnValue(itemListToUse[modifierIndex]);
			end
		end
		addStringToMacroButtonString(macroButtonNumber, foodItemString..";");
	end

	local function updateMacroButtonString(macroButtonNumber)
		addStringToMacroButtonString(macroButtonNumber, initialAddOnMacroString);
		for modifierIndex, modifierMacroString in ipairs(prioritizedListOfModifierMacroStrings) do
--			print(string.format("%sUpdating macro "..macroButtonNumber.." index "..modifierIndex,AEDMADDON_CHAT_TITLE));
			addModifierStringToMacroButtonString(macroButtonNumber, modifierMacroString);
			addFoodItemStringToMacroButtonString(macroButtonNumber, modifierIndex);
		end
	end

	local function updateAllMacroStrings()
--		print(string.format("%sUpdating all macro strings",AEDMADDON_CHAT_TITLE));
		for macrobuttonNumber = 1, getNumberOfMacroButtons() do
			updateMacroButtonString(macrobuttonNumber);
		end
	end

	local function updateMacro(macroButtonName)
		EditMacro(macroButtonName, macroButtonName, nil, tableOfAddOnMacroButtonContentStrings[macroButtonName], 1, nil);
	end

	local function createNewMacro(macroButtonName, macrosCreated)
		print(string.format("%sExisitng macro ("..macroButtonName..") for automated eat/drink not found. Creating new one...",AEDMADDON_CHAT_TITLE));
		if (getTotalNumberOfMacros() + macrosCreated) < MAX_ACCOUNT_MACROS then
			CreateMacro(macroButtonName, "INV_MISC_QUESTIONMARK", tableOfAddOnMacroButtonContentStrings[macroButtonName], nil);
			return true;
		else
			print(string.format("%sCould not create macro "..macroButtonName..". Macro limit reached.",AEDMADDON_CHAT_TITLE));
			return false;
		end
	end

	local function updateMacrosInGame()
		local macrosCreated = 0;

		for macroButtonName, macroButtonExists in pairs(tableOfAddOnMacroButtonExistanceStatus) do

			if macroButtonExists then
				updateMacro(macroButtonName);
			else
				local macroCreated;
				macroCreated = createNewMacro(macroButtonName, macrosCreated);
				if macroCreated == true then
					macrosCreated = macrosCreated + 1;
				end
			end
		end
		
	end

	local function eventHandlerForAutomatedFoodDrinkMacroScript(self, event, ...)
		determineIfMacroNeedsToBeUpdatedNowOrLater(event);
		
		if macroWasMarkedForUpdateNow() then
--				print(string.format("%sUpdating macro",AEDMADDON_CHAT_TITLE));
			
			checkIfMacroButtonsAlreadyExist();
			updateAllMacroStrings();
			
			updateMacrosInGame();

			removeMarkForUpdatingMacroLater();
		end
	end

	local function createFrameForAddon()
		AutomatedFoodDrinkMacroIcon = CreateFrame("Frame");	
	end

	local function registerEventsNeededForAddon()
		AutomatedFoodDrinkMacroIcon:RegisterEvent("PLAYER_LOGIN");
		AutomatedFoodDrinkMacroIcon:RegisterEvent("BAG_UPDATE");
		AutomatedFoodDrinkMacroIcon:RegisterEvent("PLAYER_REGEN_ENABLED");	
	end

	local function connectAddonEventHandlerWithFrameForAddon()
		AutomatedFoodDrinkMacroIcon:SetScript("OnEvent",eventHandlerForAutomatedFoodDrinkMacroScript)	
	end

	local function connectAddOnWithGame()
		createFrameForAddon();
		registerEventsNeededForAddon();
		connectAddonEventHandlerWithFrameForAddon();
	end

	connectAddOnWithGame();
end

			
