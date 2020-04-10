#include "script_component.hpp"

params ["_unit", "_damage"];

if !hasInterface exitWith {};

// Wenn die Hitreactions aus sind, verlasse Skript
if (ace_hit_reactions_minDamageToTrigger == -1) exitWith {};

// Zu kleiner Schaden ist egal
if (_damage < ace_hit_reactions_minDamageToTrigger) exitWith {};

private _hubwagen = _unit getVariable ["hubwagen", objNull];
if (isNull _hubwagen) exitWith {};
//lasse Hubwagen los
[_unit, _hubwagen, true] call FUNC(loslassen);
