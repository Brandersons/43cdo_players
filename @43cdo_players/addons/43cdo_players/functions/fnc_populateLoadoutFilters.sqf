/*
    File: fnc_populateLoadoutFilters.sqf
    Author: AI Assistant
    Description:
    Populates the loadouts listbox based on section selection using config indexing.
    Uses 43cdo_qm_loadoutfilters to dynamically map sections to their corresponding loadout classes.
*/

params ["_control", "_index"];

// Get the loadouts listbox
private _loadoutsList = (ctrlParent _control) displayCtrl 1501;
if (isNull _loadoutsList) exitWith {};

// Clear the current list
lbClear _loadoutsList;

// Get the sections array from config
private _sections = getArray (configFile >> "43cdo_qm_loadoutfilters" >> "sections");
if (_index < 0 || _index >= count _sections) exitWith {};

// Get all filter classes from the config
private _filterClasses = [];
private _filtersConfig = configFile >> "43cdo_qm_loadoutfilters" >> "filters";
for "_i" from 0 to (count _filtersConfig - 1) do {
    _filterClasses pushBack (configName (_filtersConfig select _i));
};

// Get the filter class for this section index
if (_index >= count _filterClasses) exitWith {};
private _filterClass = _filterClasses select _index;

// Get the loadout classes for this filter
private _loadoutClasses = getArray (configFile >> "43cdo_qm_loadoutfilters" >> "filters" >> _filterClass >> "classes");

// Add each loadout to the list
{
    if (_x != "") then {
        private _config = configFile >> "CfgVehicles" >> _x;
        if (isClass _config) then {
            private _displayName = getText (_config >> "displayName");
            if (_displayName != "") then {
                private _idx = _loadoutsList lbAdd _displayName;
                _loadoutsList lbSetData [_idx, _x];
            };
        };
    };
} forEach _loadoutClasses; 