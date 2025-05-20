#include "\43cdo_players\43cdo_qm_menu_dialog.hpp"

class CfgPatches
{
    class 43cdo_players
    {
        name = "43cdo_players";
        // if you want a unit to show up in zeus you've gotta add it here
        units[] = {
            "43cdo_soldier_qm",
            "43cdo_soldier_31ic",
            "43cdo_soldier_medic"
        };
        // any weapons, helmets or vests equipped to any of the soldier classes
        weapons[] = {
            "43cdo_weapons_l403a1",
            "rhsusf_weap_glock17g4",
            "SCM_Virtus_Assaulter_1_Belt",
            "SCM_Fast_B_2"
        };
        requiredVersion = 0.1;
        requiredAddons[] = {
            "A3_Characters_F"
        };
    };
};

// this is the custom faction which the soldiers are placed inside
class CfgFactionClasses
{
    class 43cdo_faction
    {
        displayName = "[43CDO] 43 Commando";
        priority = -25;
        side = 1;
        icon = "";
    };
};

// this is the top level editor catergories we'll have in game
class CfgEditorCategories
{
    class 43cdo_faction_edcat
    {
        displayName = "[43CDO] Commando";
    };
    class 43cdo_faction_edcat_objects
    {
        displayName = "[43CDO] Objects";
    };
};

// this is the subcategories for the editor categories
class CfgEditorSubcategories
{
    class 43cdo_faction_edsubcat_men
    {
        displayName = "Men";
    };
    class 43cdo_faction_edsubcat_props
    {
        displayName = "[43CDO] Props";
    };
    class 43cdo_faction_edsubcat_supplies
    {
        displayName = "[43CDO] Supplies";
    };
};

// this sets up the attachments for our weapons
class CfgWeapons
{
    class SCM_L403A1_Tan;
    class 43cdo_weapons_l403a1 : SCM_L403A1_Tan
    {
        displayName = "L403A1";
        descriptionShort = "L403A1 Description Placeholder";
        scope = 2;

        class LinkedItems
        {
            class LinkedItemsOptic
            {
                slot = "CowsSlot";
                item = "SCM_Eleanor";
            };
            class LinkedItemsAcc
            {
                slot = "PointerSlot";
                item = "UK3CB_BAF_LLM_IR_Tan";
            };
            class LinkedItemsMuzzle
            {
                slot = "MuzzleSlot";
                item = "SCM_PRT_Cover";
            };
            class LinkedItemsUnder
            {
                slot = "UnderBarrelSlot";
                item = "rhsusf_acc_grip2_tan";
            };
        };
    };
};

// this defines the faces, voices and glasses for the 43cdo soldiers
class IdentityTypes
{
    class 43cdo_faction_identity
    {
        name = "[43CDO] 43 Commando";
        face[] = {
            "WhiteHead_01", "WhiteHead_02", "WhiteHead_03", "WhiteHead_04", 
            "WhiteHead_05", "WhiteHead_06", "WhiteHead_07", "WhiteHead_08", 
            "WhiteHead_09", "WhiteHead_10", "WhiteHead_11", "WhiteHead_12", 
            "WhiteHead_13", "WhiteHead_14", "WhiteHead_15", "WhiteHead_16",
            "AfricanHead_01", "AfricanHead_02", "AfricanHead_03", "AsianHead_01",
            "AsianHead_02", "AsianHead_03"
        };
        glasses[] = {"None"};
        speaker[] = {
            "Male01ENGB",
            "Male02ENGB",
            "Male03ENGB",
            "Male04ENGB", 
            "Male05ENGB"
        };
        pitch[] = {0.95, 1.05};
    };
};

class CfgVehicles
{
    // this is setting up some prop weapons we can use for decoration
    class Weapon_arifle_SPAR_01_blk_F;
    class 43cdo_weapons_prop_base : Weapon_arifle_SPAR_01_blk_F
    {
        scope = 2;
        editorCategory = "43cdo_faction_edcat_objects";
        editorSubcategory = "43cdo_faction_edsubcat_props";
    };
    class 43cdo_weapons_l403a1_prop : 43cdo_weapons_prop_base
    {
        displayName = "L403A1";
        model = "\Scotts_L403A1\Models\KS1_tan.p3d";
    };
    class 43cdo_weapons_l403a1_prop_magazine : 43cdo_weapons_prop_base
    {
        displayname = "EMAG 30rnd 556x45 M855A1 EPR";
        model = "Scotts_EMAG\Models\EMAG_Magpul.p3d";
    };
    class 43cdo_weapons_l403a1_prop_scope : 43cdo_weapons_prop_base
    {
        displayName = "[SCM] Vortex Eleanor";
        model = "Scotts_Attachments\Models\Eleanor.p3d";
    };
    class 43cdo_weapons_l403a1_prop_muzzle : 43cdo_weapons_prop_base
    {
        displayName = "[SCM] KAC 556 PRT";
        model = "Scotts_Attachments\Models\PRT_Cover.p3d";
    };
    class 43cdo_weapons_l129a2_prop : 43cdo_weapons_prop_base
    {
        displayName = "L129A2 6.5 Creedmoor";
        model = "UKSF_LMT\L129A2.p3d";
    };
    class 43cdo_weapons_l129a2_prop_magazine : 43cdo_weapons_prop_base
    {
        displayName = "20Rnd 6.5Creedmoor Sierra Matchking ";
        model = "43cdo_weapons\data\EMAG_Magpul.p3d";
    };
    class 43cdo_weapons_l7a2_prop : 43cdo_weapons_prop_base
    {
        displayName = "L7A2";
        model = "UK3CB_BAF_Weapons\addons\UK3CB_BAF_Weapons_L7\UK3CB_L7A2.p3d";
    };
    
    // this is the base soldier class for all 43cdo soldiers, do not change this unless necessary
    class B_Soldier_base_F;
    class 43cdo_soldier_base : B_Soldier_base_F
    {
        scope = 1;
        displayName = "43 Commando Base Soldier";
        faction = "43cdo_faction";
        editorSubcategory = "43cdo_faction_edsubcat_men";
        author = "LCpl. BT";
        cost = 100000;
        camouflage = 1.4;
        sensitivity = 2.5;
        threat[] = {1,0.1,0.1};
        model = "\A3\Characters_F\BLUFOR\b_soldier_01.p3d";
        uniformClass = "SCM_G4_T_uniform";
        identityTypes[] = {"43cdo_faction_identity"};
        linkedItems[] = {
            "SCM_Virtus_Assaulter_1_Belt",
            "SCM_Fast_B_2",
            "ItemMap",
            "ItemCompass",
            "ItemWatch",
            "TFAR_rf7800str"
        };
        respawnLinkedItems[] = {
            "SCM_Virtus_Assaulter_1_Belt",
            "SCM_Fast_B_2",
            "ItemMap",
            "ItemCompass",
            "ItemWatch",
            "TFAR_rf7800str"
        };
        weapons[] = {
            "Throw",
            "Put",
            "Binocular"
        };
        respawnWeapons[] = {
            "Throw",
            "Put",
            "Binocular"
        };
        magazines[] = {};
        respawnMagazines[] = {};
    };

    // here is an example soldier class, copy and paste this and change the values to create a new soldier
    // give your class a unique name using the format 43cdo_soldier_<name>
    // you will also have to update 43cdo_qm_menu_dialog.hpp to add this loadout to the qm memnu
    class 43cdo_soldier_example : 43cdo_soldier_base
    {
        // Set this to 2 to make it show in 3den, as this example is in the live mod it'll be set to 1 to hide it in 3den
        scope = 1;
        // the name of the soldier in 3den and in game
        displayName = "[43CDO] Example Soldier";
        // the sub category of the soldier in the editor
        editorSubcategory = "43cdo_faction_edsubcat_men";
        // who made the config for this soldier
        author = "LCpl. BT";
        // the relative threat of the soldier against soft, air and armoured enemies respectively
        threat[] = {1, 0.1, 0.1};
        // medic level, 0 = no medic, 1 = medic, 2 = doctor
        attendant = 0;
        // engineer level, 0 = no engineer, 1 = engineer, 2 = advanced engineer
        engineer = 0;
        // the uniform the soldier will spawn with
        uniform = "SCM_G4_T_uniform";
        // the backpack the soldier will spawn with
        backpack = "SCM_AVS_1000_Radio";
        // the weapons the soldier will spawn with, this has to include "Put" and "Throw" at a minimum and should ideally include "Binocular" or some other binoculars classname
        // the primary weapon must show up first
        // the secondary weapon must show up second
        // yes this is wrong on my configs I am going to change it later
        weapons[] = {
            "43cdo_weapons_l403a1",
            "rhsusf_weap_glock17g4",
            "Put",
            "Throw",
            "Rangefinder"
        };
        // this should be the same as weapons[]
        respawnWeapons[] = {
            "43cdo_weapons_l403a1",
            "rhsusf_weap_glock17g4",
            "Put",
            "Throw",
            "Rangefinder"
        };
        // the items which will be added and equipped, does not include weapons, uniform or backpack
        linkedItems[] = {
            "SCM_Virtus_Assaulter_1_Belt",
            "SCM_Fast_B_2",
            "ItemMap",
            "ItemCompass",
            "TFAR_microdagr",
            "TFAR_anprc152"
        };
        // this should be the same as linkedItems[]
        respawnLinkedItems[] = {
            "SCM_Virtus_Assaulter_1_Belt",
            "SCM_Fast_B_2",
            "ItemMap",
            "ItemCompass",
            "TFAR_microdagr",
            "TFAR_anprc152"
        };
        // this is where you set up what items get added to the various parts of the loadout
        // this is very non standard but is required for the qm menu to load the items into the correct inventory locations
        class loadoutitems
        {
            // if you want a magazine to be loaded by default, you need to add it here
            loadedmagazineprimary[] = {"Scotts_43Cdo_EMAG_Magpul_M855A1_EPR"};
            loadedmagazinesecondary[] = {"UK3CB_BAF_9_17Rnd"};
            // all the items to be added to the uniform
            // this must be a comma seperated list whith each item showing up as many times as you want it to be in the loadout
            // you cannot use a c++ macro this this up unfortunately
            itemsuniform[] = {
                "ACE_CableTie", "ACE_CableTie", "ACE_CableTie", "ACE_CableTie",
                "ACE_Canteen",
                "ACE_Flashlight_XL50",
                "ACE_MapTools",
                "ItemcTabHCam",
                "ItemAndroid",
                "ACE_EHP",
                "ACE_splint",
                "ACE_Tourniquet", "ACE_Tourniquet", "ACE_Tourniquet", "ACE_Tourniquet",
                "ACE_MRE_BeefStew", "ACE_MRE_BeefStew"
            };
            // all the items to be added to the vest
            // this must be a comma seperated list whith each item showing up as many times as you want it to be in the loadout
            // you cannot use a c++ macro this this up unfortunately
            itemsvest[] = {
                "rhs_mag_m67", "rhs_mag_m67",
                "UK3CB_BAF_SmokeShell", "UK3CB_BAF_SmokeShell",
                "UK3CB_BAF_SmokeShellPurple", "UK3CB_BAF_SmokeShellPurple", "UK3CB_BAF_SmokeShellPurple",
                "UK3CB_BAF_SmokeShellBlue", "UK3CB_BAF_SmokeShellBlue", "UK3CB_BAF_SmokeShellBlue",
                "UK3CB_BAF_SmokeShellRed", "UK3CB_BAF_SmokeShellRed", "UK3CB_BAF_SmokeShellRed",
                "UK3CB_BAF_SmokeShellGreen", "UK3CB_BAF_SmokeShellGreen", "UK3CB_BAF_SmokeShellGreen",
                "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR", "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR", "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR", "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR",
                "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim", "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim",
                "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer", "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer",
                "UK3CB_BAF_9_17Rnd", "UK3CB_BAF_9_17Rnd"
            };
            // all the items to be added to the backpack
            // this must be a comma seperated list whith each item showing up as many times as you want it to be in the loadout
            // you cannot use a c++ macro this this up unfortunately
            itemsbackpack[] = {
                "ACE_EntrenchingTool",
                "ACE_epinephrine",
                "ACE_morphine",
                "ACE_bodyBag",
                "ACE_Painkillers",
                "kat_chestseal",
                "kat_guedel",
                "SCM_PVS31_C_WP",
                "UK3CB_BAF_H_Beret_RM_Bootneck",
                "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR", "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR", "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR",
                "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer", "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer", "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer",
                "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim", "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim", "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim",
                "ACE_IR_Strobe_Item", "ACE_IR_Strobe_Item",
                "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage",
                "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage",
                "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot"
            };
        };
        // this is what handles putting the items into the loadout
        class EventHandlers
        {
            init = "\
                private _unit = _this select 0; \
                { _unit removeItemFromUniform _x; } forEach uniformItems _unit; \
                { _unit removeItemFromVest _x; } forEach vestItems _unit; \
                { _unit removeItemFromBackpack _x; } forEach backpackItems _unit; \
                { _unit addItemToUniform _x; } forEach getArray (configFile >> 'CfgVehicles' >> typeOf _unit >> 'loadoutitems' >> 'itemsuniform'); \
                { _unit addItemToVest _x; } forEach getArray (configFile >> 'CfgVehicles' >> typeOf _unit >> 'loadoutitems' >> 'itemsvest'); \
                { _unit addItemToBackpack _x; } forEach getArray (configFile >> 'CfgVehicles' >> typeOf _unit >> 'loadoutitems' >> 'itemsbackpack'); \
            ";
        };
    };
    
    class 43cdo_soldier_qm : 43cdo_soldier_base
    {
        scope = 2;
        displayName = "Quartermaster";
        editorSubcategory = "43cdo_faction_edsubcat_men";
        author = "LCpl. BT";
        // QM will be 0 threat to the enemy
        threat[] = {0, 0, 0};
        value = 100000;
        class loadoutitems
        {
            loadedmagazineprimary[] = {};
            loadedmagazinesecondary[] = {};
            itemsuniform[] ={};
            itemsvest[] = {};
            itemsbackpack[] = {};
        };
        // this is what makes the qm menu show as a scroll option on the qm
        class UserActions
        {
            class 43cdo_qm_menu_open
            {
                // the tooltip
                displayName = "<t size='1.2'><img image='\43cdo_players\data\43cdo_logotemp.paa' size='1'/> Open QM Menu</t>";
                // the icon which shows on the QM
                displayNameDefault = "";
                // if multiple actions are available, this will determine the order (highest first)
                priority = 100;
                // the distance from the QM where the menu will show (in meters)
                radius = 5;
                // this is the memory point for the center of the range check, it's complicated so just leave this as is
                position = "pelvis";
                // this allows the displayNameDefault to show
                showWindow = 1;
                // we want to make sure the menu doesn't dissapear after use
                hideOnUse = 0;
                // this makes the menu available to players only
                onlyForPlayer = 0;
                // the menu will only show if the QM is alive
                condition = "alive this";
                // this opens the menu
                statement = "createDialog '43cdo_qm_menu_dialog';";
            };
        };
        class EventHandlers
        {
            init = "\
                private _unit = _this select 0; \
                { _unit removeItemFromUniform _x; } forEach uniformItems _unit; \
                { _unit removeItemFromVest _x; } forEach vestItems _unit; \
                { _unit removeItemFromBackpack _x; } forEach backpackItems _unit; \
                { _unit addItemToUniform _x; } forEach getArray (configFile >> 'CfgVehicles' >> typeOf _unit >> 'loadoutitems' >> 'itemsuniform'); \
                { _unit addItemToVest _x; } forEach getArray (configFile >> 'CfgVehicles' >> typeOf _unit >> 'loadoutitems' >> 'itemsvest'); \
                { _unit addItemToBackpack _x; } forEach getArray (configFile >> 'CfgVehicles' >> typeOf _unit >> 'loadoutitems' >> 'itemsbackpack'); \
            ";
        };
    };
    class 43cdo_soldier_31ic : 43cdo_soldier_base
    {
        scope = 2;
        displayName = "IC";
        editorSubcategory = "43cdo_faction_edsubcat_men";
        author = "LCpl. BT";
        threat[] = {1, 0.1, 0.1};

        attendant = 0;
        engineer = 0;

        uniform = "SCM_G4_T_uniform";
        backpack = "SCM_AVS_1000_Radio";
        weapons[] = {
            "Put",
            "Throw",
            "Rangefinder",
            "rhsusf_weap_glock17g4",
            "43cdo_weapons_l403a1"
        };
        respawnWeapons[] = {
            "Put",
            "Throw",
            "Rangefinder",
            "rhsusf_weap_glock17g4",
            "43cdo_weapons_l403a1"
        };
        linkedItems[] = {
            "SCM_Virtus_Assaulter_1_Belt",
            "SCM_Fast_B_2",
            "ItemMap",
            "ItemCompass",
            "TFAR_microdagr",
            "TFAR_anprc152"
        };
        respawnLinkedItems[] = {
            "SCM_Virtus_Assaulter_1_Belt",
            "SCM_Fast_B_2",
            "ItemMap",
            "ItemCompass",
            "TFAR_microdagr",
            "TFAR_anprc152"
        };

        class loadoutitems
        {
            loadedmagazineprimary[] = {"Scotts_43Cdo_EMAG_Magpul_M855A1_EPR"};
            loadedmagazinesecondary[] = {"UK3CB_BAF_9_17Rnd"};
            itemsuniform[] = {
                "ACE_CableTie", "ACE_CableTie", "ACE_CableTie", "ACE_CableTie",
                "ACE_Canteen",
                "ACE_Flashlight_XL50",
                "ACE_MapTools",
                "ItemcTabHCam",
                "ItemAndroid",
                "ACE_EHP",
                "ACE_splint",
                "ACE_Tourniquet", "ACE_Tourniquet", "ACE_Tourniquet", "ACE_Tourniquet",
                "ACE_MRE_BeefStew", "ACE_MRE_BeefStew"
            };
            itemsvest[] = {
                "rhs_mag_m67", "rhs_mag_m67",
                "UK3CB_BAF_SmokeShell", "UK3CB_BAF_SmokeShell",
                "UK3CB_BAF_SmokeShellPurple", "UK3CB_BAF_SmokeShellPurple", "UK3CB_BAF_SmokeShellPurple",
                "UK3CB_BAF_SmokeShellBlue", "UK3CB_BAF_SmokeShellBlue", "UK3CB_BAF_SmokeShellBlue",
                "UK3CB_BAF_SmokeShellRed", "UK3CB_BAF_SmokeShellRed", "UK3CB_BAF_SmokeShellRed",
                "UK3CB_BAF_SmokeShellGreen", "UK3CB_BAF_SmokeShellGreen", "UK3CB_BAF_SmokeShellGreen",
                "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR", "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR", "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR", "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR",
                "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim", "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim",
                "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer", "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer",
                "UK3CB_BAF_9_17Rnd", "UK3CB_BAF_9_17Rnd"
            };
            itemsbackpack[] = {
                "ACE_EntrenchingTool",
                "ACE_epinephrine",
                "ACE_morphine",
                "ACE_bodyBag",
                "ACE_Painkillers",
                "kat_chestseal",
                "kat_guedel",
                "SCM_PVS31_C_WP",
                "UK3CB_BAF_H_Beret_RM_Bootneck",
                "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR", "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR", "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR",
                "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer", "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer", "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer",
                "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim", "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim", "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim",
                "ACE_IR_Strobe_Item", "ACE_IR_Strobe_Item",
                "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage",
                "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage",
                "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot"
            };
        };

        class EventHandlers
        {
            init = "\
                private _unit = _this select 0; \
                { _unit removeItemFromUniform _x; } forEach uniformItems _unit; \
                { _unit removeItemFromVest _x; } forEach vestItems _unit; \
                { _unit removeItemFromBackpack _x; } forEach backpackItems _unit; \
                { _unit addItemToUniform _x; } forEach getArray (configFile >> 'CfgVehicles' >> typeOf _unit >> 'loadoutitems' >> 'itemsuniform'); \
                { _unit addItemToVest _x; } forEach getArray (configFile >> 'CfgVehicles' >> typeOf _unit >> 'loadoutitems' >> 'itemsvest'); \
                { _unit addItemToBackpack _x; } forEach getArray (configFile >> 'CfgVehicles' >> typeOf _unit >> 'loadoutitems' >> 'itemsbackpack'); \
            ";
        };
    };
    class 43cdo_soldier_medic : 43cdo_soldier_base
    {
        scope = 2;
        displayName = "Medic";
        editorSubcategory = "43cdo_faction_edsubcat_men";
        author = "LCpl. BT";
        threat[] = {1, 0.1, 0.1};

        attendant = 1;
        engineer = 0;

        uniform = "SCM_G4_T_uniform";
        backpack = "SCM_Trizip";
        weapons[] = {
            "Put",
            "Throw",
            "Binocular",
            "rhsusf_weap_glock17g4",
            "43cdo_weapons_l403a1"
        };
        respawnWeapons[] = {
            "Put",
            "Throw",
            "Binocular",
            "rhsusf_weap_glock17g4",
            "43cdo_weapons_l403a1"
        };
        linkedItems[] = {
            "SCM_Virtus_Assaulter_1_Belt",
            "SCM_Fast_B_2",
            "ItemMap",
            "ItemCompass",
            "TFAR_microdagr",
            "TFAR_rf7800str"
        };
        respawnLinkedItems[] = {
            "SCM_Virtus_Assaulter_1_Belt",
            "SCM_Fast_B_2",
            "ItemMap",
            "ItemCompass",
            "TFAR_microdagr",
            "TFAR_rf7800str"
        };

        class loadoutitems
        {
            loadedmagazineprimary[] = {"Scotts_43Cdo_EMAG_Magpul_M855A1_EPR"};
            loadedmagazinesecondary[] = {"UK3CB_BAF_9_17Rnd"};
            itemsuniform[] = {
                "ACE_CableTie", "ACE_CableTie", "ACE_CableTie", "ACE_CableTie",
                "ACE_Canteen",
                "ACE_Flashlight_XL50",
                "ACE_MapTools",
                "ItemcTabHCam",
                "ItemAndroid",
                "ACE_EHP",
                "ACE_splint",
                "ACE_Tourniquet", "ACE_Tourniquet", "ACE_Tourniquet", "ACE_Tourniquet",
                "ACE_MRE_BeefStew", "ACE_MRE_BeefStew"
            };
            itemsvest[] = {
                "rhs_mag_m67", "rhs_mag_m67",
                "UK3CB_BAF_SmokeShell", "UK3CB_BAF_SmokeShell",
                "UK3CB_BAF_SmokeShellPurple", "UK3CB_BAF_SmokeShellPurple", "UK3CB_BAF_SmokeShellPurple",
                "UK3CB_BAF_SmokeShellBlue", "UK3CB_BAF_SmokeShellBlue", "UK3CB_BAF_SmokeShellBlue",
                "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR", "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR", "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR", "Scotts_43Cdo_EMAG_Magpul_M855A1_EPR",
                "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim", "Scotts_43Cdo_EMAG_M855A1_EPR_IR_Dim",
                "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer", "Scotts_43Cdo_EMAG_M855A1_EPR_Tracer",
                "UK3CB_BAF_9_17Rnd", "UK3CB_BAF_9_17Rnd"
            };
            itemsbackpack[] = {
                "ACE_EntrenchingTool",
                "ACE_surgicalKit",
                "kat_X_AED",
                "kat_accuvac",
                "kat_Pulseoximeter",
                "SCM_PVS31_C_WP",
                "UK3CB_BAF_H_Beret_RM_Bootneck",
                "kat_TXA",
                "ACE_adenosine", "ACE_adenosine", "ACE_adenosine", "ACE_adenosine",
                "kat_amiodarone", "kat_amiodarone", "kat_amiodarone", "kat_amiodarone", "kat_amiodarone", "kat_amiodarone",
                "kat_atropine", "kat_atropine", "kat_atropine", "kat_atropine", "kat_atropine", "kat_atropine",
                "kat_epinephrineIV", "kat_epinephrineIV", "kat_epinephrineIV", "kat_epinephrineIV", "kat_epinephrineIV", "kat_epinephrineIV",
                "ACE_morphine", "ACE_morphine", "ACE_morphine", "ACE_morphine", "ACE_morphine", "ACE_morphine",
                "kat_naloxone", "kat_naloxone",
                "kat_Caffeine",
                "ACE_Painkillers", "ACE_Painkillers",
                "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage", "ACE_elasticBandage",
                "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage",
                "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot",
                "ACE_Tourniquet", "ACE_Tourniquet", "ACE_Tourniquet", "ACE_Tourniquet", "ACE_Tourniquet", "ACE_Tourniquet", "ACE_Tourniquet", "ACE_Tourniquet",
                "kat_larynx", "kat_larynx", "kat_larynx", "kat_larynx", "kat_larynx", "kat_larynx", "kat_larynx",
                "kat_guedel", "kat_guedel", "kat_guedel",
                "kat_chestSeal", "kat_chestSeal", "kat_chestSeal", "kat_chestSeal", "kat_chestSeal", "kat_chestSeal",
                "ACE_splint", "ACE_splint", "ACE_splint", "ACE_splint", "ACE_splint", "ACE_splint",
                "ACE_salineIV", "ACE_salineIV", "ACE_salineIV", "ACE_salineIV", "ACE_salineIV", "ACE_salineIV",
                "ACE_salineIV_500", "ACE_salineIV_500", "ACE_salineIV_500", "ACE_salineIV_500", "ACE_salineIV_500", "ACE_salineIV_500",
                "ACE_IR_Strobe_Item"
            };
        };

        class EventHandlers
        {
            init = "\
                private _unit = _this select 0; \
                { _unit removeItemFromUniform _x; } forEach uniformItems _unit; \
                { _unit removeItemFromVest _x; } forEach vestItems _unit; \
                { _unit removeItemFromBackpack _x; } forEach backpackItems _unit; \
                { _unit addItemToUniform _x; } forEach getArray (configFile >> 'CfgVehicles' >> typeOf _unit >> 'loadoutitems' >> 'itemsuniform'); \
                { _unit addItemToVest _x; } forEach getArray (configFile >> 'CfgVehicles' >> typeOf _unit >> 'loadoutitems' >> 'itemsvest'); \
                { _unit addItemToBackpack _x; } forEach getArray (configFile >> 'CfgVehicles' >> typeOf _unit >> 'loadoutitems' >> 'itemsbackpack'); \
            ";
        };
    };
};