/*

  Spieler senkt den Hubwagen ab

*/

if !hasInterface exitWith {};

params ["_p","_t"];


if (_t getVariable ["beladen", false]) then {
  {
    detach _x;
    _x setPosASL (getPosASL _x vectorAdd [0, 0, 0.05]);
    _x setVectorUp (SurfaceNormal (position _x));
    _x setVariable ["ace_dragging_canCarry", true, true];
    _x setVariable ["ace_dragging_candrag", true, true];
  } forEach attachedObjects _t;
  _t setVariable ["beladen", false, true];
  _t setVariable ["angehoben", false, true];
  playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\target_pop-down_large.wss", _t, false, getPosASL _t, 1, 1, 15];
} else {
  _t setVariable ["angehoben", false, true];
  playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\target_pop-down_large.wss", _t, false, getPosASL _t, 1, 1, 15];
};
