/*

  Spieler nimmt den Hubwagen

*/

if !hasInterface exitWith {};

params ["_p","_t"];

_t attachTo [_p,[0,1,-0.4],"pelvis"];
[_t, 0, 0, -90] call ace_common_fnc_setPitchBankYaw;
[_p] call ace_weaponselect_fnc_putWeaponAway;
[_p, "PutDown"] call ace_common_fnc_doGesture;
[_p, "blockThrow", "Zieht Hubwagen", true] call ace_common_fnc_statusEffect_set;
[_p, "forceWalk", "Zu schwer zum laufen", true] call ace_common_fnc_statusEffect_set;
[_p, _t] call ace_common_fnc_claim;
_p setVariable ["hubwagen", _t];
