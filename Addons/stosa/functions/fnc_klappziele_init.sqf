/*

  Initialisiert ein Klappziel

*/

if !isServer exitWith {};

params [
  "_scheibe"
];


klappziele pushBack [_scheibe, [], []];
publicVariable "klappziele";

_scheibe animateSource ["terc", 1];
_scheibe animateSource ["terc2", 1];

["zumi_ace_cargo", [_scheibe, 1]] call CBA_fnc_globalEventJIP;
["zumi_ace_carry", [_scheibe, true]] call CBA_fnc_globalEventJIP;


_nr = ["Nummer","Nummer prüfen","\A3\ui_f\data\igui\cfg\simpleTasks\types\search_ca.paa",{
  params ["_t","_p","_actionparams"];
  _actionparams params ["_nr"];
  hint format ["Das ist Scheibe nummer %1", _nr];
  },{true},{},[count klappziele],[0,0,-0.5], 2] call fjb_323_interactions_fnc_interaction_create;
["zumi_interaction_add_to_object", [_scheibe, _nr, 0, []]] call CBA_fnc_globalEventJIP;
