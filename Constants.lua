-- Automated-Eat-Drink-Macro-Changer
-- This file includes the constants

local addOnName = "AEDM";

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

local propertyNoStats = "No stats";
local propertyConjured = "Conjured"
local propertySecondaryStatBased = "Secondary Stats";
local propertyPrimaryStatBased = "Primary Stats";
local propertyEmpty = "Not Used"