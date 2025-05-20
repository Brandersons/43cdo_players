//Place the following in the QM's .init in the editor 
//this addAction["<t color='#2E86C1'>3-1 HQ Alpha</t>", {player execVM "Loadouts\3-1 HQ Alpha.sqf";}, [],9,false,false,"","_this distance _target < 10"];

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
_this addWeapon "SCM_L403A1_Tan";
_this addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Tan";
_this addPrimaryWeaponItem "SCM_Eleanor";
_this addPrimaryWeaponItem "SCM_PRT_Cover";
_this addPrimaryWeaponItem "rhsusf_acc_grip2_tan";
_this addPrimaryWeaponItem "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR";
_this addWeapon "rhs_weap_M320";
_this addHandgunItem "UK3CB_BAF_1Rnd_HE_Grenade_Shell";
_this addWeapon "Rangefinder";

// Give the Player the basic needed items such as Map
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "TFAR_microdagr";
_this linkItem "TFAR_anprc152";

// Uniform Items
if (_PlayerUniform isEqualTo "") then {
	_this forceAddUniform "SCM_G4_T_uniform";
	_this addItemToUniform "ACE_Canteen";
	_this addItemToUniform "ACE_Flashlight_XL50";
	_this addItemToUniform "ACE_MapTools";
	_this addItemToUniform "ItemcTabHCam";
	_this addItemToUniform "ItemcTab";
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
	_this addItemToUniform "ItemcTab";
	_this addItemToUniform "ACE_splint";
	_this addItemToUniform "ACE_EHP";
	for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
	for "_i" from 1 to 4 do {_this addItemToUniform "ACE_Tourniquet";};
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_MRE_BeefStew";};
};	

// Vest Items
if (_PlayerVest isEqualTo "") then {
	_this addVest "SCM_Virtus_Assaulter_1_Belt";
	_this addItemToVest "ACE_HuntIR_monitor";
	_this addItemToVest "UK3CB_BAF_1Rnd_SmokeBlue_Grenade_shell";
	_this addItemToVest "UK3CB_BAF_1Rnd_SmokeGreen_Grenade_shell";
	_this addItemToVest "UK3CB_BAF_1Rnd_SmokePurple_Grenade_shell";
	for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};

	for "_i" from 1 to 4 do {_this addItemToVest "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR";};
	for "_i" from 1 to 2 do {_this addItemToVest "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim";};
	for "_i" from 1 to 2 do {_this addItemToVest "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer";};

	for "_i" from 1 to 5 do {_this addItemToVest "UK3CB_BAF_1Rnd_HE_Grenade_Shell";};
	for "_i" from 1 to 3 do {_this addItemToVest "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell";};
	for "_i" from 1 to 3 do {_this addItemToVest "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_1Rnd_Smoke_Grenade_shell";};
	for "_i" from 1 to 4 do {_this addItemToVest "ACE_HuntIR_M203";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
}
else {
	_this addItemToVest "ACE_HuntIR_monitor";
	_this addItemToVest "UK3CB_BAF_1Rnd_SmokeBlue_Grenade_shell";
	_this addItemToVest "UK3CB_BAF_1Rnd_SmokeGreen_Grenade_shell";
	_this addItemToVest "UK3CB_BAF_1Rnd_SmokePurple_Grenade_shell";
	for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 4 do {_this addItemToVest "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR";};
	for "_i" from 1 to 2 do {_this addItemToVest "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim";};
	for "_i" from 1 to 2 do {_this addItemToVest "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer";};
	for "_i" from 1 to 5 do {_this addItemToVest "UK3CB_BAF_1Rnd_HE_Grenade_Shell";};
	for "_i" from 1 to 3 do {_this addItemToVest "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell";};
	for "_i" from 1 to 3 do {_this addItemToVest "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_1Rnd_Smoke_Grenade_shell";};
	for "_i" from 1 to 4 do {_this addItemToVest "ACE_HuntIR_M203";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
};

// Backpack Items

if (_PlayerBackpack isEqualTo "") then {
	_this addBackpack "SCM_Delta_Radio";
	_this addItemToBackpack "ACE_EntrenchingTool";
	_this addItemToBackpack "ACE_epinephrine";
	_this addItemToBackpack "ACE_morphine";
	_this addItemToBackpack "ACE_bodyBag";
	_this addItemToBackpack "UK3CB_BAF_SmokeShellPurple";
	_this addItemToBackpack "UK3CB_BAF_SmokeShellGreen";
	_this addItemToBackpack "UK3CB_BAF_SmokeShellRed";
	_this addItemToBackpack "UK3CB_BAF_SmokeShellBlue";
	_this addItemToBackpack "ACE_Painkillers";
	_this addItemToBackpack "kat_chestSeal";
	_this addItemToBackpack "kat_guedel";
	_this addItemToBackpack "SCM_PVS31_C_WP";
	_this addItemToBackpack "ItemAndroid";
	_this addItemToBackpack "UK3CB_BAF_H_Beret_RM_Officer_PRR";
	for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_SmokeShell";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim";};
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
	_this addItemToBackpack "UK3CB_BAF_SmokeShellPurple";
	_this addItemToBackpack "UK3CB_BAF_SmokeShellGreen";
	_this addItemToBackpack "UK3CB_BAF_SmokeShellRed";
	_this addItemToBackpack "UK3CB_BAF_SmokeShellBlue";
	_this addItemToBackpack "ACE_Painkillers";
	_this addItemToBackpack "kat_chestSeal";
	_this addItemToBackpack "kat_guedel";
	_this addItemToBackpack "SCM_PVS31_C_WP";
	_this addItemToBackpack "ItemAndroid";
	_this addItemToBackpack "UK3CB_BAF_H_Beret_RM_Officer_PRR";
	for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_SmokeShell";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_IR_Strobe_Item";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_quikclot";};
};



// Check for Helmet 
if (_PlayerHelmet isEqualTo "") then{
	_this addHeadgear "SCM_Fast_A_3";
};

//Assign Unit traits


//Hint to confirm full script Load
hint "3-1 HQ Alpha kit successfully loaded!\n Specialist Role: Backpack changed!";
sleep 15;
hintSilent "";
