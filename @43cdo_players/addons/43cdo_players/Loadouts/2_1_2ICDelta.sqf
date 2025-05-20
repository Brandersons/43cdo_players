//Place the following in the QM's .init in the editor 
//this addAction["<t color='#38c12e'>2-1 Delta</t>", {player execVM "Loadouts\RecceMarksman.sqf";}, [],8,false,false,"","_this distance _target < 10"];

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
_this addWeapon "SCM_L403A1_CTR_Tan_grip";
_this addPrimaryWeaponItem "ACE_DBAL_A3_Green";
_this addPrimaryWeaponItem "SCM_Eleanor";
_this addPrimaryWeaponItem "SCM_PRT_Cover";
_this addPrimaryWeaponItem "rhsusf_acc_grip1";
_this addPrimaryWeaponItem "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_Blue";
_this addWeapon "UK3CB_BAF_L105A2";
_this addHandgunItem "16Rnd_9x21_Mag";
_this addWeapon "ACE_Vector";

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
		_this addItemToUniform "ACE_microDAGR";
		_this addItemToUniform "kat_Pulseoximeter";
		_this addItemToUniform "ACE_painkillers";
		_this addItemToUniform "kat_Caffeine";

		for "_i" from 1 to 2 do {_this addItemToUniform "ACE_IR_Strobe_Item";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_tourniquet";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
		for "_i" from 1 to 3 do {_this addItemToUniform "ACE_splint";};
		for "_i" from 1 to 3 do {_this addItemToUniform "kat_larynx";};
		for "_i" from 1 to 3 do {_this addItemToUniform "kat_amiodarone";};
		for "_i" from 1 to 3 do {_this addItemToUniform "kat_atropine";};
		for "_i" from 1 to 7 do {_this addItemToUniform "kat_epinephrineIV";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 2 do {_this addItemToUniform "kat_naloxone";};
	}
else 
	{
		_this addItemToUniform "ItemcTabHCam";
		_this addItemToUniform "ACE_Kestrel4500";
		_this addItemToUniform "ACE_Flashlight_XL50";
		_this addItemToUniform "ACE_MapTools";
		_this addItemToUniform "ACE_RangeCard";
		_this addItemToUniform "ACE_microDAGR";
		_this addItemToUniform "kat_Pulseoximeter";
		_this addItemToUniform "ACE_painkillers";
		_this addItemToUniform "kat_Caffeine";

		for "_i" from 1 to 2 do {_this addItemToUniform "ACE_IR_Strobe_Item";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_tourniquet";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
		for "_i" from 1 to 3 do {_this addItemToUniform "ACE_splint";};
		for "_i" from 1 to 3 do {_this addItemToUniform "kat_larynx";};
		for "_i" from 1 to 3 do {_this addItemToUniform "kat_amiodarone";};
		for "_i" from 1 to 3 do {_this addItemToUniform "kat_atropine";};
		for "_i" from 1 to 7 do {_this addItemToUniform "kat_epinephrineIV";};
		for "_i" from 1 to 4 do {_this addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 2 do {_this addItemToUniform "kat_naloxone";};
	};	

// Vest Items
if (_PlayerVest isEqualTo "") then 
	{
		_this addVest "SCM_Virtus_Medic_1";

		_this addItemToVest "ItemAndroid";
		_this addItemToVest "UK3CB_BAF_Silencer_L105A1";
		_this addItemToVest "UK3CB_BAF_L105A1_LLM_IR_G";

		for "_i" from 1 to 3 do {_this addItemToVest "rhs_mag_m67";};
		for "_i" from 1 to 6 do {_this addItemToVest "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_Blue";};
		for "_i" from 1 to 2 do {_this addItemToVest "ACE_M14";};
		for "_i" from 1 to 5 do {_this addItemToVest "tsp_flashbang_cts2";};
		for "_i" from 1 to 4 do {_this addItemToVest "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_IR";};
		for "_i" from 1 to 3 do {_this addItemToVest "16Rnd_9x21_Mag";};
	}

else 
	{
		_this addItemToVest "ItemAndroid";
		_this addItemToVest "UK3CB_BAF_Silencer_L105A1";
		_this addItemToVest "UK3CB_BAF_L105A1_LLM_IR_G";

		for "_i" from 1 to 3 do {_this addItemToVest "rhs_mag_m67";};
		for "_i" from 1 to 6 do {_this addItemToVest "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_Blue";};
		for "_i" from 1 to 2 do {_this addItemToVest "ACE_M14";};
		for "_i" from 1 to 5 do {_this addItemToVest "tsp_flashbang_cts2";};
		for "_i" from 1 to 4 do {_this addItemToVest "Scotts_43Cdo_EMAG_Mk262_BeVLDT_AP_IR";};
		for "_i" from 1 to 3 do {_this addItemToVest "16Rnd_9x21_Mag";};
	};

// Backpack Items

if (_PlayerBackpack isEqualTo "") then 
	{
		_this addBackpack "SCM_Trizip";

		_this addItemToBackpack "ACE_EntrenchingTool";
		_this addItemToBackpack "kat_accuvac";
		_this addItemToBackpack "ACE_Canteen";
		_this addItemToBackpack "ACE_surgicalKit";
		_this addItemToBackpack "kt_25x_PMII022_msr_ti";
		_this addItemToBackpack "ACE_EHP";
		_this addItemToBackpack "SCM_PVS31_W_MC_WP";
		_this addItemToBackpack "H_Booniehat_khk_hs";
		_this addItemToBackpack "UK3CB_BAF_SmokeShellPurple";
		_this addItemToBackpack "UK3CB_BAF_SmokeShellGreen";
		_this addItemToBackpack "UK3CB_BAF_SmokeShellRed";
		_this addItemToBackpack "UK3CB_BAF_SmokeShellBlue";
		_this addItemToBackpack "ItemcTab";
		_this addItemToBackpack "kat_TXA";
		_this addItemToBackpack "ACE_Tripod";
		_this addItemToBackpack "Row_Row_Your_Nun";

		for "_i" from 1 to 4 do {_this addItemToBackpack "kat_chestSeal";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_MRE_BeefStew";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_salineIV";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_salineIV_500";};
		for "_i" from 1 to 14 do {_this addItemToBackpack "ACE_elasticBandage";};
		for "_i" from 1 to 14 do {_this addItemToBackpack "ACE_packingBandage";};
		for "_i" from 1 to 14 do {_this addItemToBackpack "ACE_quikclot";};
		for "_i" from 1 to 3 do {_this addItemToBackpack "UK3CB_BAF_SmokeShell";};
	}

else 
	{
		_this addItemToBackpack "ACE_EntrenchingTool";
		_this addItemToBackpack "kat_accuvac";
		_this addItemToBackpack "ACE_Canteen";
		_this addItemToBackpack "ACE_surgicalKit";
		_this addItemToBackpack "kt_25x_PMII022_msr_ti";
		_this addItemToBackpack "ACE_EHP";
		_this addItemToBackpack "SCM_PVS31_W_MC_WP";
		_this addItemToBackpack "H_Booniehat_khk_hs";
		_this addItemToBackpack "UK3CB_BAF_SmokeShellPurple";
		_this addItemToBackpack "UK3CB_BAF_SmokeShellGreen";
		_this addItemToBackpack "UK3CB_BAF_SmokeShellRed";
		_this addItemToBackpack "UK3CB_BAF_SmokeShellBlue";
		_this addItemToBackpack "ItemcTab";
		_this addItemToBackpack "kat_TXA";
		_this addItemToBackpack "ACE_Tripod";
		_this addItemToBackpack "Row_Row_Your_Nun";
		
		for "_i" from 1 to 4 do {_this addItemToBackpack "kat_chestSeal";};
		for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_MRE_BeefStew";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_salineIV";};
		for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_salineIV_500";};
		for "_i" from 1 to 14 do {_this addItemToBackpack "ACE_elasticBandage";};
		for "_i" from 1 to 14 do {_this addItemToBackpack "ACE_packingBandage";};
		for "_i" from 1 to 14 do {_this addItemToBackpack "ACE_quikclot";};
		for "_i" from 1 to 3 do {_this addItemToBackpack "UK3CB_BAF_SmokeShell";};;
	};



// Check for Helmet 
if (_PlayerHelmet isEqualTo "") then{
	_this addHeadgear "SCOTT_Fast_Cover_A";
};


//Assign Unit traits
_this setVariable ["ace_medical_medicclass",2, true];

//Hint to confirm full script Load
hint "2-1 Delta kit successfully loaded!";
sleep 15;
hintSilent "";
