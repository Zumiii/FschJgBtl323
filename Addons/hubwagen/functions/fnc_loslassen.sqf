/*

  Spieler lässt den Hubwagen los

*/

if !hasInterface exitWith {};

params ["_p", "_t", ["_ragdoll", false]];

detach _t;
_t modelToWorld (getPosATL _t);

[_p, "blockThrow", "Zieht Hubwagen", false] call ace_common_fnc_statusEffect_set;
[objNull, _t] call ace_common_fnc_claim;
_p removeWeapon "ACE_FakePrimaryWeapon";
[_p, "forceWalk", "Zu schwer zum laufen", false] call ace_common_fnc_statusEffect_set;
_p setVariable ["hubwagen", objNull];
if (_ragdoll) exitwith {};

[_p, "PutDown"] call ace_common_fnc_doGesture;
