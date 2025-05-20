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
_this addWeapon "SCM_L403A1_CTR_Tan";
_this addPrimaryWeaponItem "rhsusf_acc_anpeq15_wmx";
_this addPrimaryWeaponItem "SCM_Eleanor";
_this addPrimaryWeaponItem "SCM_PRT_Cover";
_this addPrimaryWeaponItem "rhs_acc_grip_rk6";
_this addPrimaryWeaponItem "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_Blue";
_this addWeapon "rhs_weap_M320";
_this addHandgunItem "UK3CB_BAF_1Rnd_HE_Grenade_Shell";
_this addWeapon "Rangefinder";

// Give the Player the basic needed items such as Map
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "KAT_Katmin";
_this linkItem "TFAR_anprc152";

// Uniform Items
if (_PlayerUniform isEqualTo "") then 
	{
		_this forceAddUniform "SCM_G4_RS_Undershirt_uniform";

		_this addItemToUniform "ItemcTabHCam";
		_this addItemToUniform "ItemAndroid";
		_this addItemToUniform "ACE_Flashlight_XL50";
		_this addItemToUniform "ACE_MapTools";
		_this addItemToUniform "ACE_RangeCard";
		_this addItemToUniform "ACE_painkillers";
		_this addItemToUniform "kat_Caffeine";

		for "_i" from 1 to 4 do {_this addItemToUniform "kat_larynx";};
		for "_i" from 1 to 2 do {_this addItemToUniform "ACE_IR_Strobe_Item";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_tourniquet";};
		for "_i" from 1 to 24 do {_this addItemToUniform "ACE_elasticBandage";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
	}
else 
	{
		_this addItemToUniform "ItemcTabHCam";
		_this addItemToUniform "ItemAndroid";
		_this addItemToUniform "ACE_Flashlight_XL50";
		_this addItemToUniform "ACE_MapTools";
		_this addItemToUniform "ACE_RangeCard";
		_this addItemToUniform "ACE_painkillers";
		_this addItemToUniform "kat_Caffeine";

		for "_i" from 1 to 4 do {_this addItemToUniform "kat_larynx";};
		for "_i" from 1 to 2 do {_this addItemToUniform "ACE_IR_Strobe_Item";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_tourniquet";};
		for "_i" from 1 to 24 do {_this addItemToUniform "ACE_elasticBandage";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
	};	

// Vest Items
if (_PlayerVest isEqualTo "") then 
	{
		_this addVest "SCM_Virtus_Assaulter_1";

		_this addItemToVest "ACE_HuntIR_monitor";
		_this addItemToVest "ACE_Kestrel4500";

		for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellGreen";};
		for "_i" from 1 to 2 do {_this addItemToVest "tsp_flashbang_cts2";};
		for "_i" from 1 to 2 do {_this addItemToVest "ACE_M14";};
		for "_i" from 1 to 10 do {_this addItemToVest "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_Blue";};

	}
else 
	{
		_this addItemToVest "ACE_HuntIR_monitor";
		_this addItemToVest "ACE_Kestrel4500";

		for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellGreen";};
		for "_i" from 1 to 2 do {_this addItemToVest "tsp_flashbang_cts2";};
		for "_i" from 1 to 2 do {_this addItemToVest "ACE_M14";};
		for "_i" from 1 to 8 do {_this addItemToVest "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_Blue";};
	};

// Backpack Items

if (_PlayerBackpack isEqualTo "") then 
	{
		_this addBackpack "SCM_Trizip";

		_this addItemToBackpack "ACE_EntrenchingTool";
		_this addItemToBackpack "ACE_Canteen";
		_this addItemToBackpack "ACE_EHP";
		_this addItemToBackpack "kt_25x_PMII022_msr_ti";
		_this addItemToBackpack "ACE_Tripod";
		_this addItemToBackpack "SCM_crossbow_tan_tinted";
		_this addItemToBackpack "UK3CB_BAF_H_Beret_RM_Bootneck";
		_this addItemToBackpack "kat_mask_M50";

		for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_MRE_BeefStew";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_salineIV_250";};
		for "_i" from 1 to 5 do {_this addItemToBackpack "kat_gasmaskFilter";};
		for "_i" from 1 to 5 do {_this addItemToBackpack "UK3CB_BAF_1Rnd_HE_Grenade_Shell";};
		for "_i" from 1 to 5 do {_this addItemToBackpack "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "UK3CB_BAF_UGL_FlareCIR_F";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_HuntIR_M203";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_1Rnd_SmokeGreen_Grenade_shell";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_IR";};
	}
else 
	{
		_this addItemToBackpack "ACE_EntrenchingTool";
		_this addItemToBackpack "ACE_Canteen";
		_this addItemToBackpack "ACE_EHP";
		_this addItemToBackpack "kt_25x_PMII022_msr_ti";
		_this addItemToBackpack "ACE_Tripod";
		_this addItemToBackpack "SCM_crossbow_tan_tinted";
		_this addItemToBackpack "UK3CB_BAF_H_Beret_RM_Bootneck";
		_this addItemToBackpack "kat_mask_M50";

		for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_MRE_BeefStew";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_salineIV_250";};
		for "_i" from 1 to 5 do {_this addItemToBackpack "kat_gasmaskFilter";};
		for "_i" from 1 to 5 do {_this addItemToBackpack "UK3CB_BAF_1Rnd_HE_Grenade_Shell";};
		for "_i" from 1 to 5 do {_this addItemToBackpack "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "UK3CB_BAF_UGL_FlareCIR_F";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_HuntIR_M203";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_1Rnd_SmokeGreen_Grenade_shell";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_IR";};
	};



// Check for Helmet 
if (_PlayerHelmet isEqualTo "") then{
	_this addHeadgear "SCOTT_Fast_Cover_A";
};

//Assign Unit traits
_this setVariable ["ace_medical_medicclass",2, true];

//Assign Unit traits

//Hint to confirm full script Load
hint "2-1 Marine kit successfully loaded!";
sleep 15;
hintSilent "";
