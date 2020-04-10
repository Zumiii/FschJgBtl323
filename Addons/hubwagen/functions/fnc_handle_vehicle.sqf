#include "\z\fjb_323\addons\hubwagen\script_component.hpp"

params ["_unit"];

if !hasInterface exitWith {};

private _hubwagen = _unit getVariable ["hubwagen", objNull];
if (isNull _hubwagen) exitWith {};
//lasse Hubwagen los
[_unit, _hubwagen, true] call FUNC(loslassen);
