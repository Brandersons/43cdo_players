//Place the following in the QM's .init in the editor 
//this addAction["<t color='#38c12e'>2-1 Charlie</t>", {player execVM "Loadouts\RecceMarksman.sqf";}, [],8,false,false,"","_this distance _target < 10"];

//Reset Unit traits 
_this setVariable ["ace_medical_medicclass",2, true];
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


// Give player the Basic Weapons needed (including Binos)
_this addWeapon "UKSF_L129A2_65_Base";
_this addPrimaryWeaponItem "kt_25x_PMII022_msr_ti";
_this addPrimaryWeaponItem "SCM_PRT_Cover";
_this addPrimaryWeaponItem "sps_atlas_bipod_m_blk";
_this addPrimaryWeaponItem "UKSF_65Creedmoor_Base_SMK";
_this addWeapon "rhsusf_weap_glock17g4";
_this addHandgunItem "UK3CB_BAF_9_17Rnd";
_this addWeapon "Rangefinder";

// Give the Player the basic needed items such as Map
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "KAT_Katmin";
_this linkItem "TFAR_anprc152";

// Uniform Items
if (_PlayerUniform isEqualTo "") then 
	{
		_this forceAddUniform "SCM_Windliner_uniform";

		_this addItemToUniform "ItemcTabHCam";
		_this addItemToUniform "ACE_Kestrel4500";
		_this addItemToUniform "ACE_Flashlight_XL50";
		_this addItemToUniform "ACE_MapTools";
		_this addItemToUniform "ACE_RangeCard";
		_this addItemToUniform "ACE_painkillers";
		_this addItemToUniform "kat_Caffeine";
		_this addItemToUniform "ItemcTab";
		
		for "_i" from 1 to 2 do {_this addItemToUniform "ACE_IR_Strobe_Item";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_tourniquet";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
	}
else 
	{
		_this addItemToUniform "ItemcTabHCam";
		_this addItemToUniform "ACE_Kestrel4500";
		_this addItemToUniform "ACE_Flashlight_XL50";
		_this addItemToUniform "ACE_MapTools";
		_this addItemToUniform "ACE_RangeCard";
		_this addItemToUniform "ACE_painkillers";
		_this addItemToUniform "kat_Caffeine";
		_this addItemToUniform "ItemcTab";

		for "_i" from 1 to 2 do {_this addItemToUniform "ACE_IR_Strobe_Item";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_tourniquet";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
	};		

if (_PlayerVest isEqualTo "") then 
	{
		_this addVest "SCM_Virtus_Support_1";

		_this addItemToVest "ItemAndroid";

		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellPurple";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellGreen";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellRed";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellBlue";};
		for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
		for "_i" from 1 to 5 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK";};
		for "_i" from 1 to 2 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK_IR";};
		for "_i" from 1 to 5 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK_Tracer";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
	}

else 
	{
		_this addItemToVest "ItemAndroid";

		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellPurple";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellGreen";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellRed";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellBlue";};
		for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
		for "_i" from 1 to 5 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK";};
		for "_i" from 1 to 2 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK_IR";};
		for "_i" from 1 to 5 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK_Tracer";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
	};




// Backpack Items

if (_PlayerBackpack isEqualTo "") then 
	{
		_this addBackpack "SCM_Crye_Zip_Backpanel_F";
		
		_this addItemToBackpack "ACE_EntrenchingTool";
		_this addItemToBackpack "ACE_Canteen";
		_this addItemToBackpack "SCM_Eleanor";
		_this addItemToBackpack "ACE_EHP";
		_this addItemToBackpack "SCM_PVS31_W_MC_WP";
		_this addItemToBackpack "SCOTT_Fast_Patches_B";
		_this addItemToBackpack "ACE_Tripod";
		_this addItemToBackpack "SOMETHING_really_Dumb";			

		for "_i" from 1 to 4 do {_this addItemToBackpack "kat_chestSeal";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_MRE_BeefStew";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "kat_larynx";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_tourniquet";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "kat_epinephrineIV";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 8 do {_this addItemToBackpack "ACE_elasticBandage";};
		for "_i" from 1 to 8 do {_this addItemToBackpack "ACE_packingBandage";};
		for "_i" from 1 to 8 do {_this addItemToBackpack "ACE_quikclot";};
	}

else 
	{
		_this addItemToBackpack "ACE_EntrenchingTool";
		_this addItemToBackpack "ACE_Canteen";
		_this addItemToBackpack "SCM_Eleanor";
		_this addItemToBackpack "ACE_EHP";
		_this addItemToBackpack "SCM_PVS31_W_MC_WP";
		_this addItemToBackpack "SCOTT_Fast_Patches_B";
		_this addItemToBackpack "ACE_Tripod";
		_this addItemToBackpack "SOMETHING_really_Dumb";			

		for "_i" from 1 to 4 do {_this addItemToBackpack "kat_chestSeal";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_MRE_BeefStew";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "kat_larynx";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_tourniquet";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "kat_epinephrineIV";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 8 do {_this addItemToBackpack "ACE_elasticBandage";};
		for "_i" from 1 to 8 do {_this addItemToBackpack "ACE_packingBandage";};
		for "_i" from 1 to 8 do {_this addItemToBackpack "ACE_quikclot";};
	};		



// Check for Helmet 
if (_PlayerHelmet isEqualTo "") then{
	_this addHeadgear "UK3CB_BAF_H_Beret_RM_Officer_PRR";
};

//Assign Unit traits
_this setVariable ["ace_medical_medicclass",2, true];

//Hint to confirm full script Load
hint "2-1 Alpha kit successfully loaded!";
sleep 15;
hintSilent "";
