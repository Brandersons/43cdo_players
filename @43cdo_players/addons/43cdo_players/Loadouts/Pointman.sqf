//Place the following in the QM's .init in the editor 
//this addAction["<t color='#FF0000'>Pointman</t>", {player execVM "Loadouts\Pointman.sqf";}, [],8,false,false,"","_this distance _target < 10"];

//Reset Unit traits 
_this setVariable ["ace_medical_medicclass",0, true];
_this setVariable ["ACE_IsEngineer",2, true];

//Create Needed Variables
_PlayerUniform = uniform _this;
_PlayerVest = vest _this;
_PlayerBackpack = backpack _this;
_PlayerHelmet = headgear _this;


// Remove Contents of Uniform / Weapons to prevent Duping
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeBackpack _this; //Specialist ROLE!


// Give player the Basic Weapons needed (including Binos)
_this addWeapon "SCM_L403A1_Tan";
_this addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Tan";
_this addPrimaryWeaponItem "SCM_Eleanor";
_this addPrimaryWeaponItem "SCM_PRT_Cover";
_this addPrimaryWeaponItem "rhsusf_acc_grip2_tan";
_this addPrimaryWeaponItem "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR";
_this addWeapon "ACE_VMH3";
_this addWeapon "Binocular";

// Give the Player the basic needed items such as Map
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "TFAR_microdagr";
_this linkItem "TFAR_rf7800str";

// Uniform Items
if (_PlayerUniform isEqualTo "") then {
	_this forceAddUniform "SCM_G4_T_uniform";
	_this addItemToUniform "ACE_Canteen";
	_this addItemToUniform "ACE_Flashlight_XL50";
	_this addItemToUniform "ACE_MapTools";
	_this addItemToUniform "ItemcTabHCam";
	_this addItemToUniform "ItemMicroDAGR";
	_this addItemToUniform "ACE_splint";
	_this addItemToUniform "ACE_EHP";
	for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
	for "_i" from 1 to 4 do {_this addItemToUniform "ACE_Tourniquet";};
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_MRE_BeefStew";};
}
else {
	_this addItemToUniform "ACE_Canteen";
	_this addItemToUniform "ACE_Flashlight_XL50";
	_this addItemToUniform "ACE_MapTools";
	_this addItemToUniform "ItemcTabHCam";
	_this addItemToUniform "ItemMicroDAGR";
	_this addItemToUniform "ACE_splint";
	_this addItemToUniform "ACE_EHP";
	for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
	for "_i" from 1 to 4 do {_this addItemToUniform "ACE_Tourniquet";};
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_MRE_BeefStew";};
};	

// Vest Items
if (_PlayerVest isEqualTo "") then {
	_this addVest "SCM_Virtus_Assaulter_1_Belt";
	for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
	for "_i" from 1 to 4 do {_this addItemToVest "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR";};
	for "_i" from 1 to 2 do {_this addItemToVest "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim";};
	for "_i" from 1 to 2 do {_this addItemToVest "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer";};
	for "_i" from 1 to 3 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
}
else {
	for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
	for "_i" from 1 to 4 do {_this addItemToVest "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR";};
	for "_i" from 1 to 2 do {_this addItemToVest "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim";};
	for "_i" from 1 to 2 do {_this addItemToVest "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer";};
	for "_i" from 1 to 3 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
};

// Backpack Items

if (_PlayerBackpack isEqualTo "") then {
	_this addBackpack "SCM_Delta";
	_this addItemToBackpack "ACE_EntrenchingTool";
	_this addItemToBackpack "ACE_epinephrine";
	_this addItemToBackpack "ACE_morphine";
	_this addItemToBackpack "ACE_bodyBag";
	_this addItemToBackpack "ACE_Painkillers";
	_this addItemToBackpack "kat_chestSeal";
	_this addItemToBackpack "kat_guedel";
	_this addItemToBackpack "ACE_SpraypaintBlack";
	_this addItemToBackpack "ACE_SpraypaintBlue";
	_this addItemToBackpack "ACE_SpraypaintGreen";
	_this addItemToBackpack "ACE_SpraypaintRed";
	_this addItemToBackpack "ACE_wirecutter";
	_this addItemToBackpack "ACE_DefusalKit";
	_this addItemToBackpack "ACE_M26_Clacker";
	_this addItemToBackpack "rhsusf_weap_glock17g4";
	_this addItemToBackpack "SCM_PVS31_C_WP";
	_this addItemToBackpack "UK3CB_BAF_H_Beret_RM_Bootneck";
	for "_i" from 1 to 2 do {_this addItemToBackpack "DemoCharge_Remote_Mag";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_IR_Strobe_Item";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_quikclot";};
}
else {
	_this addItemToBackpack "ACE_EntrenchingTool";
	_this addItemToBackpack "ACE_epinephrine";
	_this addItemToBackpack "ACE_morphine";
	_this addItemToBackpack "ACE_bodyBag";
	_this addItemToBackpack "ACE_Painkillers";
	_this addItemToBackpack "kat_chestSeal";
	_this addItemToBackpack "kat_guedel";
	_this addItemToBackpack "ACE_SpraypaintBlack";
	_this addItemToBackpack "ACE_SpraypaintBlue";
	_this addItemToBackpack "ACE_SpraypaintGreen";
	_this addItemToBackpack "ACE_SpraypaintRed";
	_this addItemToBackpack "ACE_wirecutter";
	_this addItemToBackpack "ACE_DefusalKit";
	_this addItemToBackpack "ACE_M26_Clacker";
	_this addItemToBackpack "rhsusf_weap_glock17g4";
	_this addItemToBackpack "SCM_PVS31_C_WP";
	_this addItemToBackpack "UK3CB_BAF_H_Beret_RM_Bootneck";
	for "_i" from 1 to 2 do {_this addItemToBackpack "DemoCharge_Remote_Mag";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_IR_Strobe_Item";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_quikclot";};
};



// Check for Helmet 
if (_PlayerHelmet isEqualTo "") then{
	_this addHeadgear "SCM_Fast_B_2";
};


//Assign Unit traits
_this setVariable ["ACE_IsEngineer",2, true];

//Hint to confirm full script Load
hint "Pointman kit successfully loaded!\n Specialist Role: Backpack changed!";
sleep 15;
hintSilent "";