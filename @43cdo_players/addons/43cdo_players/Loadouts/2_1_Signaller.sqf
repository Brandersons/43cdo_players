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
_this addPrimaryWeaponItem "rhsusf_acc_grip1";
_this addPrimaryWeaponItem "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_Blue";
_this addWeapon "rhsusf_weap_glock17g4";
_this addHandgunItem "rhsusf_mag_17Rnd_9x19_JHP";
_this addWeapon "ACE_Vector";

// Give the Player the basic needed items such as Map
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "KAT_Katmin";
_this linkItem "TFAR_anprc152";

// Uniform Items
if (_PlayerUniform isEqualTo "") then 
	{
		_this forceAddUniform "SCM_G4_RS_Undershirt_GRY_uniform";

		_this addItemToUniform "ACE_Canteen";
		_this addItemToUniform "ACE_Flashlight_XL50";
		_this addItemToUniform "ACE_MapTools";
		_this addItemToUniform "ItemcTabHCam";
		_this addItemToUniform "ACE_EHP";
		_this addItemToUniform "ACE_IR_Strobe_Item";
		_this addItemToUniform "ACE_microDAGR";
		_this addItemToUniform "ItemAndroid";
		_this addItemToUniform "kat_Caffeine";
		_this addItemToUniform "ACE_painkillers";
		_this addItemToUniform "ACE_RangeCard";

		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
		for "_i" from 1 to 2 do {_this addItemToUniform "ACE_MRE_BeefStew";};
		for "_i" from 1 to 2 do {_this addItemToUniform "kat_TXA";};
	}

else 
	{
		_this addItemToUniform "ACE_Canteen";
		_this addItemToUniform "ACE_Flashlight_XL50";
		_this addItemToUniform "ACE_MapTools";
		_this addItemToUniform "ItemcTabHCam";
		_this addItemToUniform "ACE_EHP";
		_this addItemToUniform "ACE_IR_Strobe_Item";
		_this addItemToUniform "ACE_microDAGR";
		_this addItemToUniform "ItemAndroid";
		_this addItemToUniform "kat_Caffeine";
		_this addItemToUniform "ACE_painkillers";
		_this addItemToUniform "ACE_RangeCard";
		
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
		for "_i" from 1 to 2 do {_this addItemToUniform "ACE_MRE_BeefStew";};
		for "_i" from 1 to 2 do {_this addItemToUniform "kat_TXA";};
	};	

// Vest Items
if (_PlayerVest isEqualTo "") then 
	{
		_this addVest "SCM_Virtus_Medic_1_Belt";

		_this addItemToVest "ItemcTab";
		_this addItemToVest "kt_25x_PMII022_msr_ti";
		_this addItemToVest "UK3CB_BAF_SmokeShellPurple";

		for "_i" from 1 to 3 do {_this addItemToVest "MiniGrenade";};
		for "_i" from 1 to 2 do {_this addItemToVest "tsp_flashbang_cts2";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellGreen";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellRed";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellBlue";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
		for "_i" from 1 to 2 do {_this addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";};
		for "_i" from 1 to 4 do {_this addItemToVest "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_Tracer_Blue";};
		for "_i" from 1 to 3 do {_this addItemToVest "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_IR";};
		for "_i" from 1 to 2 do {_this addItemToVest "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_Blue";};
		for "_i" from 1 to 4 do {_this addItemToVest "ACE_packingBandage";};
		for "_i" from 1 to 4 do {_this addItemToVest "ACE_elasticBandage";};
		for "_i" from 1 to 2 do {_this addItemToVest "ACE_quikclot";};
		for "_i" from 1 to 2 do {_this addItemToVest "ACE_salineIV";};

	}
else 
	{
		_this addItemToVest "ItemcTab";
		_this addItemToVest "kt_25x_PMII022_msr_ti";
		_this addItemToVest "UK3CB_BAF_SmokeShellPurple";

		for "_i" from 1 to 3 do {_this addItemToVest "MiniGrenade";};
		for "_i" from 1 to 2 do {_this addItemToVest "tsp_flashbang_cts2";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellGreen";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellRed";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShellBlue";};
		for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
		for "_i" from 1 to 2 do {_this addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";};
		for "_i" from 1 to 4 do {_this addItemToVest "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_Tracer_Blue";};
		for "_i" from 1 to 3 do {_this addItemToVest "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_IR";};
		for "_i" from 1 to 2 do {_this addItemToVest "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_Blue";};
		for "_i" from 1 to 4 do {_this addItemToVest "ACE_packingBandage";};
		for "_i" from 1 to 4 do {_this addItemToVest "ACE_elasticBandage";};
		for "_i" from 1 to 2 do {_this addItemToVest "ACE_quikclot";};
		for "_i" from 1 to 2 do {_this addItemToVest "ACE_salineIV";};
	};

// Backpack Items

if (_PlayerBackpack isEqualTo "") then 
	{
		_this addBackpack "SCM_Trizip";

		_this addItemToBackpack "kat_accuvac";
		_this addItemToBackpack "ACE_surgicalKit";
		_this addItemToBackpack "kat_X_AED";
		_this addItemToBackpack "ACE_EntrenchingTool";
		_this addItemToBackpack "kat_Pulseoximeter";
		_this addItemToBackpack "Item_JammerVolnorez";

		for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_salineIV";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_salineIV_500";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_splint";};
		for "_i" from 1 to 20 do {_this addItemToBackpack "ACE_packingBandage";};
		for "_i" from 1 to 20 do {_this addItemToBackpack "ACE_elasticBandage";};
		for "_i" from 1 to 5 do {_this addItemToBackpack "kat_larynx";};
		for "_i" from 1 to 5 do {_this addItemToBackpack "kat_amiodarone";};
		for "_i" from 1 to 5 do {_this addItemToBackpack "kat_atropine";};
		for "_i" from 1 to 10 do {_this addItemToBackpack "ACE_quikclot";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "kat_naloxone";};
		for "_i" from 1 to 8 do {_this addItemToBackpack "ACE_tourniquet";};
		for "_i" from 1 to 5 do {_this addItemToBackpack "kat_epinephrineIV";};
		for "_i" from 1 to 5 do {_this addItemToBackpack "kat_chestSeal";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_adenosine";};
		for "_i" from 1 to 5 do {_this addItemToBackpack "immersion_pops_poppack";};

	}
else 
	{

	};



// Check for Helmet 
if (_PlayerHelmet isEqualTo "") then{
	_this addHeadgear "SCOTT_Fast_Patches_C";
};

//Assign Unit traits
_this setVariable ["ace_medical_medicclass",2, true];

//Assign Unit traits

//Hint to confirm full script Load
hint "2-1 Signaller kit successfully loaded!";
sleep 15;
hintSilent "";
