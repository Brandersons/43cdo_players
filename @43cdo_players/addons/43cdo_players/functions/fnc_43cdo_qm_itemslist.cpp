[class] call fnc_43cdo_qm_itemslist;

params ["_class"];

suffix = [
    "weapons",
    "linkeditems",
    "itemsuniform",
    "itemsvest",
    "itemsbackpack",
    "magazinesuniform",
    "magazinesvest",
    "magazinesbackpack"
];

private _prefix = "43cdo_soldier_";
private _id = [];

// Remove prefix if present
if (_class find _prefix == 0) then {
    _id = _class select [count _prefix];
};

// Loop through suffixes and build full names
{
    private _itemList = _prefix + _id + "_" + _x;
    diag_log _itemList; // log it, or use systemChat/hint if preferred
} forEach _suffixes;