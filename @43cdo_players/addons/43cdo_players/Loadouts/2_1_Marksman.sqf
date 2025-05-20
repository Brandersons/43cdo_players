//Place the following in the QM's .init in the editor 
//this addAction["<t color='#38c12e'>2-1 Rifleman</t>", {player execVM "Loadouts\RecceRifleman.sqf";}, [],8,false,false,"","_this distance _target < 10"];

//Reset Unit traits 
_this setVariable ["ace_medical_medicclass",1, true];
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


// Give player the Basic Weapons needed (including Binos)
_this addWeapon "UKSF_L129A2_65_Base";
_this addPrimaryWeaponItem "Tier1_URX4_NGAL_Side";
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
		_this forceAddUniform "SCM_PCU_uniform";
		
		_this addItemToUniform "ItemcTabHCam";
		_this addItemToUniform "ItemAndroid";
		_this addItemToUniform "kat_guedel";
		_this addItemToUniform "ACE_Kestrel4500";
		_this addItemToUniform "ACE_Flashlight_XL50";
		_this addItemToUniform "ACE_MapTools";
		_this addItemToUniform "ACE_RangeCard";
		_this addItemToUniform "ACE_painkillers";
		_this addItemToUniform "kat_Caffeine";
	
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_IR_Strobe_Item";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_tourniquet";};
		for "_i" from 1 to 8 do {_this addItemToUniform "ACE_elasticBandage";};
		for "_i" from 1 to 8 do {_this addItemToUniform "ACE_packingBandage";};
		for "_i" from 1 to 8 do {_this addItemToUniform "ACE_quikclot";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
	}

else 
	{
		_this addItemToUniform "ItemcTabHCam";
		_this addItemToUniform "ItemAndroid";
		_this addItemToUniform "kat_guedel";
		_this addItemToUniform "ACE_Kestrel4500";
		_this addItemToUniform "ACE_Flashlight_XL50";
		_this addItemToUniform "ACE_MapTools";
		_this addItemToUniform "ACE_RangeCard";
		_this addItemToUniform "ACE_painkillers";
		_this addItemToUniform "kat_Caffeine";

		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_IR_Strobe_Item";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_tourniquet";};
		for "_i" from 1 to 8 do {_this addItemToUniform "ACE_elasticBandage";};
		for "_i" from 1 to 8 do {_this addItemToUniform "ACE_packingBandage";};
		for "_i" from 1 to 8 do {_this addItemToUniform "ACE_quikclot";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
	};	

// Vest Items
if (_PlayerVest isEqualTo "") then 
	{	
		_this addVest "SCM_Virtus_Assaulter_1_Belt";
		
		for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellGreen";};
		for "_i" from 1 to 6 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK";};
		for "_i" from 1 to 2 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK_IR";};
		for "_i" from 1 to 2 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK_Tracer";};
		for "_i" from 1 to 3 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
	}
else 
	{
		for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellGreen";};
		for "_i" from 1 to 6 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK";};
		for "_i" from 1 to 2 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK_IR";};
		for "_i" from 1 to 2 do {_this addItemToVest "UKSF_65Creedmoor_Base_SMK_Tracer";};
		for "_i" from 1 to 3 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
	};

// Backpack Items

if (_PlayerBackpack isEqualTo "") then 
	{
		_this addBackpack "SCM_Trizip_Radio";
		
		_this addItemToBackpack "ACE_EntrenchingTool";
		_this addItemToBackpack "ACE_Canteen";
		_this addItemToBackpack "ACE_Tripod";
		_this addItemToBackpack "ACE_EHP";
		_this addItemToBackpack "SCM_PVS31_C_WP";
		_this addItemToBackpack "UK3CB_BAF_H_Beret_RM_Bootneck";
		_this addItemToBackpack "SCM_Eleanor";

		for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_salineIV_250";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_MRE_BeefStew";};
	}

else 
	{
		_this addItemToBackpack "ACE_EntrenchingTool";
		_this addItemToBackpack "ACE_Canteen";
		_this addItemToBackpack "ACE_Tripod";
		_this addItemToBackpack "ACE_EHP";
		_this addItemToBackpack "SCM_PVS31_C_WP";
		_this addItemToBackpack "UK3CB_BAF_H_Beret_RM_Bootneck";
		_this addItemToBackpack "SCM_Eleanor";

		for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_salineIV_250";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_MRE_BeefStew";};
	};



// Check for Helmet 
if (_PlayerHelmet isEqualTo "") then{
	_this addHeadgear "SCOTT_Fast_Cover_A";
};

//Assign Unit traits

//Hint to confirm full script Load
hint "2-1 Marksman kit successfully loaded!";
sleep 15;
hintSilent "";
