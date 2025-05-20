/*
    Flattens and combines any number of arrays into one.
    Usage:
        _combined = [array1, array2, array3, ...] call fnc_combineArrays;
*/

params ["_arrays"];
private _result = [];
{
    _result append _x;
} forEach _arrays;
_result