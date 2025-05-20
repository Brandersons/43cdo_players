/*
    File: fn_populateLoadoutListbox.sqf
    Author: AI Assistant
    Description:
    Dynamically fills the loadouts listbox (idc 1501) based on the selected section in the sections listbox (idc 1500).
    Reads from configFile >> '43cdo_qm_loadoutfilters' and is robust to changes in sections or loadouts.
    Usage: [(_this select 0), (_this select 1)] call 43cdo_players_fnc_populateLoadoutListbox;
*/

params ["_control", "_index"];

private _display = ctrlParent _control;
private _sections = getArray (configFile >> "43cdo_qm_loadoutfilters" >> "sections");
if (_index < 0 || _index >= count _sections) exitWith {};
private _sectionName = _sections select _index;

// Clear the loadouts listbox
private _loadoutsList = _display displayCtrl 1501;
lbClear _loadoutsList;

// Get the classes array for the selected section
private _classes = [];
if (isClass (configFile >> "43cdo_qm_loadoutfilters" >> "filters" >> _sectionName)) then {
    _classes = getArray (configFile >> "43cdo_qm_loadoutfilters" >> "filters" >> _sectionName >> "classes");
};

// Fill the loadouts listbox with display names and class names
{
    private _class = _x;
    private _displayName = getText (configFile >> "CfgVehicles" >> _class >> "displayName");
    private _idx = _loadoutsList lbAdd _displayName;
    _loadoutsList lbSetData [_idx, _class];
} forEach _classes; 