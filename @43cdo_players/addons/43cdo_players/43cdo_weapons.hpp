class CfgWeapons
{
    class SCM_L403A1_Tan;
    class 43cdo_weapons_l403a1 : SCM_L403A1_Tan
    {
        displayName = "L403A1";
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