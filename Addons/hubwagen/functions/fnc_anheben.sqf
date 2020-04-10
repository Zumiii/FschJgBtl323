/*

  Spieler hebt den Hubwagen an

*/

if !hasInterface exitWith {};

params ["_p","_t"];

private _hubgut = (nearestObjects [getPos _t, ["All"], 2, true]) select {!((typeOf _x) IN ["Hubwagen_gelb","Hubwagen_khaki"]) && (!isPlayer _x)};

if (count _hubgut > 0) then {
  private _pal = (_hubgut select 0);
  private _xyz = [configfile >> "CfgVehicles" >> (typeOf _pal) >> "zumi_hubwagen_carryPosition", "Array", []] call CBA_fnc_getConfigEntry;

  if (count _xyz < 1) exitWith {
    playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\skeet_launch1.wss", _t, false, getPosASL _t, 1, 1, 15];
    _t setVariable ["angehoben", true, true];
    hint "Kein anhebbares Objekt";
  };
  _xyz params ["_x", "_y", "_z"];
  private _yaw = [configfile >> "CfgVehicles" >> (typeOf _pal) >> "zumi_hubwagen_carryDirection", "NUMBER", -1] call CBA_fnc_getConfigEntry;
  if (_yaw < 0) exitWith {
    playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\skeet_launch1.wss", _t, false, getPosASL _t, 1, 1, 15];
    _t setVariable ["angehoben", true, true];
  };

  _pal attachTo [_t, [_x , _y, _z],""];
  _pal setVariable ["ace_dragging_canCarry", false, true];
  _pal setVariable ["ace_dragging_candrag", false, true];
  [_pal, 0, 0, _yaw] call ace_common_fnc_setPitchBankYaw;
  _t setVariable ["beladen", true, true];
  _t setVariable ["angehoben", true, true];
  playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\skeet_launch1.wss", _t, false, getPosASL _t, 1, 1, 15];
} else {
  playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\skeet_launch1.wss", _t, false, getPosASL _t, 1, 1, 15];
  _t setVariable ["angehoben", true, true];
};
