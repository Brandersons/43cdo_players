//Place the following in the QM's .init in the editor 
//this addAction["<t color='#FF0000'>Marksman</t>", {player execVM "Loadouts\Marksman.sqf";}, [],8,false,false,"","_this distance _target < 10"];

//Reset Unit traits 
_this setVariable ["ace_medical_medicclass",0, true];
_this setVariable ["ACE_IsEngineer",0, true];

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
_this addWeapon "UKSF_L129A2_65_Base";
_this addPrimaryWeaponItem "RKSL_optic_PMII_312_sunshade";
_this addPrimaryWeaponItem "SCM_PRT_Cover";
_this addPrimaryWeaponItem "sps_atlas_bipod_m_blk";
_this addPrimaryWeaponItem "UKSF_65Creedmoor_Base_SMK";
_this addWeapon "rhsusf_weap_glock17g4";
_this addHandgunItem "UK3CB_BAF_9_17Rnd";
_this addWeapon "Rangefinder";

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
	_this addItemToVest "ACE_RangeCard";
	for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
	for "_i" from 1 to 6 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK";};
	for "_i" from 1 to 2 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK_IR";};
	for "_i" from 1 to 2 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK_Tracer";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
}
else {
	_this addItemToVest "ACE_RangeCard";
	for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
	for "_i" from 1 to 6 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK";};
	for "_i" from 1 to 2 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK_IR";};
	for "_i" from 1 to 2 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK_Tracer";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
};

// Backpack Items

if (_PlayerBackpack isEqualTo "") then {
	_this addBackpack "SCM_AVS_1000";
	_this addItemToBackpack "ACE_EntrenchingTool";
	_this addItemToBackpack "ACE_epinephrine";
	_this addItemToBackpack "ACE_morphine";
	_this addItemToBackpack "ACE_bodyBag";
	_this addItemToBackpack "ACE_Painkillers";
	_this addItemToBackpack "kat_chestSeal";
	_this addItemToBackpack "kat_guedel";
	_this addItemToBackpack "SCM_PVS31_C_WP";
	_this addItemToBackpack "UK3CB_BAF_H_Beret_RM_Bootneck";
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
	_this addItemToBackpack "SCM_PVS31_C_WP";
	_this addItemToBackpack "UK3CB_BAF_H_Beret_RM_Bootneck";
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

//Hint to confirm full script Load
hint "Marksman kit successfully loaded!";
sleep 15;
hintSilent "";