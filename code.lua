-- This file is loaded from "Automated-Eat-Drink-Macro-Changer.toc"
do
	-- Setting up tables: 
	
	local noBuffFoodAndDrinkItems = {
	-- Breakfast of Draconic Champions
	197763,
	-- Sweet and Sour Clam Chowder
	197762,
	-- Catalyzed Apple Pie
	190880,
	-- Circle of Subsistence
	190881,
	-- Candied Amberjack Cakes
	172047,
	-- Ethereal Pomegranate
	173859,
	-- Biscuits and Caviar
	172046};

	local noBuffFoodItems = {
	-- Mackerel Snackerel
	197760,
	-- Cheese and Quackers
	197759,
	-- Probably Protein
	197761,
	-- Twice-Baked Potato
	197758,
	-- Tenebrous Truffle
	178550,
	-- Bonemeal Bread
	186725};

	local drinkItems = {
	-- Delicious Dragon Spittle
	197771,
	-- Churnbelly Tea
	197772,
	-- Restorative Flow
	190936,
	-- Shadespring Water
	179992, 
	-- Azurebloom Tea
	178217, 
	-- Bone Apple Tea
	178545,
	-- Twilight Tea
	186704};

	local critBuffItems = {
	-- Filet of Fangs
	197779,
	-- Infused Endmire Fruit
	182592, 
	-- Spinefin Souffle and Fries
	172041,
	-- Butterscotch Marinated Ribs
	172040};

	local masteryBuffItems = {
	-- Salt-Baled Fishcake
	197781,
	-- Iridescent Ravioli with Apple Sauce
	172049,
	-- Meaty Apple Dumplings
	172048};

	local versaBuffItems = {
	-- Seamoth Surprise
	197780,
	-- Steak a la Mode
	172051,
	-- Sweet Silvergill Sausages
	172050};

	local hasteBuffItems = {
	-- Timely Demise
	197778,
	-- Tenebrous Crown Roast Aspic
	172045,
	-- Cinnamon Bonefish Stew
	172044};

	local staminaBuffItems = {
	-- Salted Meat Mash
	197791,
	-- Hopefully Healthy
	197777,
	-- Banana Beef Pudding
	172069,
	-- Pickleed Meat Smoothie
	172068};
	
	local critHasteBuffItems = {
	-- Feisty Fish Sticks
	197782};
	
	local critMasteryBuffItems = {
	-- Thousandbone Tongueslicer
	197786};
	
	local critVersaBuffItems = {
	-- Revenge, Served Cold
	197785};
	
	local hasteMasteryBuffItems = {
	-- Sizzling Seafood Medley
	197784};
	
	local hasteVersaBuffItems = {
	-- Aromatic Seafood Platter
	197783};
	
	local masteryVersaBuffItems = {
	-- Great Cerulean Sea
	197787};
	
	local strengthBuffItems = {
	-- Braised Bruffalon Brisket
	197788,
	-- Charred HoprnswogSteaks
	197774};

	local agilityBuffItems = {
	-- Riverside Picnic
	197789,
	-- Scrambled Basilisk Eggs
	197775};

	local intellectBuffItems = {
	-- Roast Duck Delight
	197790,
	-- Thrice-Spiced Mammoth Kabob
	197776};

	local conjuredFoodAndDrinkItems = {113509, 80618, 80610, 65517, 65516, 65515, 65500, 65499, 43523, 43518, 34062};
	local conjuredItems = false;
	
	local strengthStatId = 1;
	local agilityStatId = 2;
	local intellectStatID = 4;

	-- Setting up string for console output
	local AEDMADDON_CHAT_TITLE = "|CFF9482C9Automated Eat/Drink Macro Changer:|r "

	function findFoodItems(itemTable,checkConjuredItems)
		for index,value in ipairs(itemTable) do
			itemCount = GetItemCount(value,false,false);
			if itemCount > 0 then
--				print(string.format("%sFound item",AEDMADDON_CHAT_TITLE));
				if checkConjuredItems then
--				print(string.format("%sFound conjured item",AEDMADDON_CHAT_TITLE));
					conjuredItems = true;
				end
				return value;
			end
		end
		if checkConjuredItems then
			conjuredItems = false;
		end
		return itemTable[1];
	end
	
	local updateMacroLater = false;
	local updateMacroNow = false;
	local possibleMacroUpdate = false;

	local AutomatedFoodDrinkMacroIcon = CreateFrame("Frame");
	AutomatedFoodDrinkMacroIcon:RegisterEvent("PLAYER_LOGIN");
	AutomatedFoodDrinkMacroIcon:RegisterEvent("BAG_UPDATE");
	AutomatedFoodDrinkMacroIcon:RegisterEvent("PLAYER_REGEN_DISABLED");
	AutomatedFoodDrinkMacroIcon:SetScript("OnEvent",function(self,event,...)
	
		updateMacroNow = false;
		possibleMacroUpdate = (event == "PLAYER_LOGIN" or event == "BAG_UPDATE");

		if possibleMacroUpdate == true then
--				print(string.format("%sUpdate incoming... checking combat",AEDMADDON_CHAT_TITLE));

			if InCombatLockdown() == true then
--				print(string.format("%sCannot update macro due to combat lockdown...",AEDMADDON_CHAT_TITLE));
				updateMacroLater = true;
			else
--				print(string.format("%sUpdate confirmed...",AEDMADDON_CHAT_TITLE));
				updateMacroNow = true;
			end
		elseif (event == "PLAYER_REGEN_DISABLED" and updateMacroLater == true) then  
			updateMacroNow = true;
		end
		
		if updateMacroNow == true then
--				print(string.format("%sUpdating macro",AEDMADDON_CHAT_TITLE));
			local macroStr, macroStr2;
			
			local numMacros = GetNumMacros();
			local foundMacro = false;
			local foundMacro2 = false;
	
			for i=1, numMacros do
				local name = GetMacroInfo(i)
				if name == "AEDMbutton" then
					foundMacro = true;
				end		
				if name == "AEDMbutton2" then
					foundMacro2 = true;
				end		
			end
			macroStr = "#showtooltip\n/use ";
			
			-- Modifier alt+ctrl+shift
			macroStr = macroStr.."[mod:altctrlshift]";

			-- Pure food (no buff)
			macroStr = macroStr.."item:"..findFoodItems(noBuffFoodItems, false)..";";

			-- Modifier alt+ctrl
			macroStr = macroStr.."[mod:altctrl]";

			-- Crit food
			macroStr = macroStr.."item:"..findFoodItems(critBuffItems, false)..";";

			-- Modifier alt+shift
			macroStr = macroStr.."[mod:altshift]";

			-- Versatility food
			macroStr = macroStr.."item:"..findFoodItems(versaBuffItems, false)..";";

			-- Modifier ctrl+shift
			macroStr = macroStr.."[mod:ctrlshift]";

			-- Stamina food
			macroStr = macroStr.."item:"..findFoodItems(staminaBuffItems, false)..";";

			-- Modifier alt
			macroStr = macroStr.."[mod:alt]";

			-- Pure drinking
			macroStr = macroStr.."item:"..findFoodItems(drinkItems, false)..";";

			-- Modifier ctrl
			macroStr = macroStr.."[mod:ctrl]";

			-- Mastery food
			macroStr = macroStr.."item:"..findFoodItems(masteryBuffItems, false)..";";

			-- Modifier shift
			macroStr = macroStr.."[mod:shift]";

			-- Haste food
			macroStr = macroStr.."item:"..findFoodItems(hasteBuffItems, false)..";";

			-- Food + Drink (no buff)
			local tempStr = findFoodItems(conjuredFoodAndDrinkItems, true);
			if conjuredItems == true then
--				print(string.format("%sUpdating conjured item "..tempStr,AEDMADDON_CHAT_TITLE));
				macroStr = macroStr.."item:"..tempStr..";";
			else
--				print(string.format("%sUpdating non-conjured item",AEDMADDON_CHAT_TITLE));
				macroStr = macroStr.."item:"..findFoodItems(noBuffFoodAndDrinkItems, false)..";";			
			end


			macroStr2 = "#showtooltip\n/use ";
			
			-- Modifier alt+ctrl+shift
--			macroStr2 = macroStr2.."[mod:altctrlshift]";

			-- Modifier alt+ctrl
			macroStr2 = macroStr2.."[mod:altctrl]";

			-- Mastery + Versatility food
			macroStr2 = macroStr2.."item:"..findFoodItems(masteryVersaBuffItems, false)..";";

			-- Modifier alt+shift
			macroStr2 = macroStr2.."[mod:altshift]";

			-- Haste + Versatility food
			macroStr2 = macroStr2.."item:"..findFoodItems(hasteVersaBuffItems, false)..";";

			-- Modifier ctrl+shift
			macroStr2 = macroStr2.."[mod:ctrlshift]";

			-- Haste + Mastery food
			macroStr2 = macroStr2.."item:"..findFoodItems(hasteMasteryBuffItems, false)..";";

			-- Modifier alt
			macroStr2 = macroStr2.."[mod:alt]";

			-- Crit + Versatility food
			macroStr2 = macroStr2.."item:"..findFoodItems(critVersaBuffItems, false)..";";

			-- Modifier ctrl
			macroStr2 = macroStr2.."[mod:ctrl]";

			-- Crit + Mastery Food
			macroStr2 = macroStr2.."item:"..findFoodItems(critMasteryBuffItems, false)..";";

			-- Modifier shift
			macroStr2 = macroStr2.."[mod:shift]";

			-- Crit + Haste food
			macroStr2 = macroStr2.."item:"..findFoodItems(critHasteBuffItems, false)..";";			

			local strength = UnitStat("player",strengthStatId);
			local agility = UnitStat("player",agilityStatId);
			local intellect = UnitStat("player",intellectStatID);
			
			if (strength > agility and strength > intellect) then -- Check for strength as primary stat
				-- Strength Stat food
				macroStr2 = macroStr2.."item:"..findFoodItems(strengthBuffItems, false)..";";
			else if (agility > strength and agility > intellect) then -- Check for Agility as primary stat
				-- Agility Stat food
				macroStr2 = macroStr2.."item:"..findFoodItems(agilityBuffItems, false)..";";
			else if (intellect > strength and intellect > agility) then -- Check for Intellect as primary stat
				-- Intellect Stat food
				macroStr2 = macroStr2.."item:"..findFoodItems(intellectBuffItems, false)..";";
			else -- Default to no buff food and drink items
				macroStr2 = macroStr2.."item:"..findFoodItems(noBuffFoodAndDrinkItems, false)..";";			
			end
			

			if foundMacro == true then
				EditMacro("AEDMbutton", "AEDMbutton", nil, macroStr, 1, nil);
			else
				print(string.format("%sExisitng macro for basic automated eat/drink not found. Creating new one...",AEDMADDON_CHAT_TITLE));
				if numMacros < MAX_ACCOUNT_MACROS then
					CreateMacro("AEDMbutton", "INV_MISC_QUESTIONMARK", macroStr, nil);
				else
					print(string.format("%sCould not create macro for basic automated eat/drink. Macro limit reached.",AEDMADDON_CHAT_TITLE));
				end
			end
			if foundMacro2 == true then
				EditMacro("AEDMbutton2", "AEDMbutton2", nil, macroStr2, 1, nil);
			else
				print(string.format("%sExisitng macro for extended automated eat/drink not found. Creating new one...",AEDMADDON_CHAT_TITLE));
				if numMacros < MAX_ACCOUNT_MACROS then
					CreateMacro("AEDMbutton2", "INV_MISC_QUESTIONMARK", macroStr2, nil);
				else
					print(string.format("%sCould not create macro for extended automated eat/drink. Macro limit reached.",AEDMADDON_CHAT_TITLE));
				end
			end
			updateMacroLater = false;			
		end
	end)
end

			
