
/*

  Initialisiert eine Scheibe

*/

if !isServer exitWith {};

params [
  "_scheibe", //Scheibe
  ["_steuerung", objNull] //Steuerung
];


_scheibe allowDamage false;


if (isNull _steuerung) then {
  _steuerung = _scheibe;
};


_steuerung setVariable ["bahn_nr", bahn_nr + 1, true];

//Scheibe gehört niemandem
[objNull, _scheibe] call ace_common_fnc_claim;
_steuerung setVariable ["runtergeklappt", 1, true];


_offset = [0,0,0.5];
if ((TypeOf _scheibe) isEqualTo "Land_Shoot_House_Wall_Crouch_F") then {
  _offset = [0,0,-1.5];
};


//Interaktionen
_scheibensteuerung = ["Scheibensteuerung","Scheibensteuerung","\A3\ui_f\data\igui\cfg\simpleTasks\types\whiteboard_ca.paa",{},{true},{},[],_offset, 5] call fjb_323_interactions_fnc_interaction_create;
["zumi_interaction_add_to_object", [_steuerung, _scheibensteuerung, 0, []]] call CBA_fnc_globalEventJIP;

//Klatsche die richtige Textur drauf!
switch (TypeOf _scheibe) do {

  case "fjb_323_stosa_Stuermender_Schuetze" : {
    _runterklappen = ["Runterklappen","Runterklappen","\A3\ui_f\data\igui\cfg\simpleTasks\types\download_ca.paa",{
      params ["_t","_p","_actionparams"];
      _actionparams params ["_s"];
      [_p, "PutDown"] call ace_common_fnc_doGesture;
      _s animateSource ["Terc", 1];
      {
        detach _x;
        deleteVehicle _x;
      } forEach (attachedObjects _t);
      _t setVariable ["runtergeklappt", 0, true];
    },{!((_target getVariable ["runtergeklappt", 0]) < 1)},{},[_scheibe],[0,0,0], 2] call fjb_323_interactions_fnc_interaction_create;
    ["zumi_interaction_add_to_object", [_steuerung, _runterklappen, 0, ["Scheibensteuerung"]]] call CBA_fnc_globalEventJIP;

    _hochklappen = ["Hochklappen","Hochklappen","\A3\ui_f\data\igui\cfg\simpleTasks\types\upload_ca.paa",{
      params ["_t","_p","_actionparams"];
      _actionparams params ["_s"];
      [_p, "PutDown"] call ace_common_fnc_doGesture;
      _s animateSource ["Terc", 0];
      _t setVariable ["runtergeklappt", 1, true];
    },{((_target getVariable ["runtergeklappt", 0]) < 1)},{},[_scheibe],[0,0,0], 2] call fjb_323_interactions_fnc_interaction_create;
    ["zumi_interaction_add_to_object", [_steuerung, _hochklappen, 0, ["Scheibensteuerung"]]] call CBA_fnc_globalEventJIP;

    _abklappen_nach = ["abklappen_nach","Treffer nötig: ","\A3\ui_f\data\igui\cfg\simpleTasks\types\use_ca.paa",{},{true},{},[],[0,0,0], 5] call fjb_323_interactions_fnc_interaction_create;
    ["zumi_interaction_add_to_object", [_steuerung, _abklappen_nach, 0, ["Scheibensteuerung"]]] call CBA_fnc_globalEventJIP;

    _treffer_noetig_1 = ["hits_r_1","1","",{
      params ["_t","_p","_actionparams"];
      _actionparams params ["_s"];
      _t setVariable ["hits", 0, true];
      _t setVariable ["hits_required", 1, true];
    },{!((_target getVariable ["hits_required", 1]) == 1)},{},[_scheibe],[0,0,0], 2] call fjb_323_interactions_fnc_interaction_create;
    ["zumi_interaction_add_to_object", [_steuerung, _treffer_noetig_1, 0, ["Scheibensteuerung","abklappen_nach"]]] call CBA_fnc_globalEventJIP;

    _treffer_noetig_2 = ["hits_r_2","2","",{
      params ["_t","_p","_actionparams"];
      _actionparams params ["_s"];
      _t setVariable ["hits", 0, true];
      _t setVariable ["hits_required", 2, true];
    },{!((_target getVariable ["hits_required", 1]) == 2)},{},[_scheibe],[0,0,0], 2] call fjb_323_interactions_fnc_interaction_create;
    ["zumi_interaction_add_to_object", [_steuerung, _treffer_noetig_2, 0, ["Scheibensteuerung","abklappen_nach"]]] call CBA_fnc_globalEventJIP;

    _treffer_noetig_3 = ["hits_r_3","3","",{
      params ["_t","_p","_actionparams"];
      _actionparams params ["_s"];
      _t setVariable ["hits", 0, true];
      _t setVariable ["hits_required", 3, true];
    },{!((_target getVariable ["hits_required", 1]) == 3)},{},[_scheibe],[0,0,0], 2] call fjb_323_interactions_fnc_interaction_create;
    ["zumi_interaction_add_to_object", [_steuerung, _treffer_noetig_3, 0, ["Scheibensteuerung","abklappen_nach"]]] call CBA_fnc_globalEventJIP;

    _treffer_noetig_4 = ["hits_r_4","4","",{
      params ["_t","_p","_actionparams"];
      _actionparams params ["_s"];
      _t setVariable ["hits", 0, true];
      _t setVariable ["hits_required", 4, true];
    },{!((_target getVariable ["hits_required", 1]) == 4)},{},[_scheibe],[0,0,0], 2] call fjb_323_interactions_fnc_interaction_create;
    ["zumi_interaction_add_to_object", [_steuerung, _treffer_noetig_4, 0, ["Scheibensteuerung","abklappen_nach"]]] call CBA_fnc_globalEventJIP;

  };

  default {};
};


if ((TypeOf _scheibe) IN ["TargetBootcampHumanSimple_F","stuermender_schuetze"]) exitWith {};

_reset = ["Trefferbild_Reset","Treffer abkleben","\A3\ui_f\data\igui\cfg\simpleTasks\types\use_ca.paa",{
  params ["_t","_p","_actionparams"];
  _actionparams params ["_s"];
  {
    detach _x;
    deleteVehicle _x;
  } forEach (attachedObjects _s);
  [_p, "PutDown"] call ace_common_fnc_doGesture;
},{((count (attachedObjects _target)) > 0)},{},[_scheibe],[0,0,0], 2] call fjb_323_interactions_fnc_interaction_create;

_sehen = ["Trefferbild_Sehen","Trefferaufnahme","\A3\ui_f\data\igui\cfg\simpleTasks\types\search_ca.paa",{
  params ["_t","_p","_actionparams"];
  _actionparams params ["_s"];
  {["ace_common_hideObjectGlobal", [_x, false]] call CBA_fnc_serverEvent;} forEach (attachedObjects _s);
},{(count (attachedObjects _target) > 0) && (({isObjectHidden _x} count (attachedObjects _target)) > 0)},{},[_scheibe],[0,0,0], 2] call fjb_323_interactions_fnc_interaction_create;

if (_steuerung != _scheibe) then {
  _trefferbild = ["Trefferbild","Trefferbild","\A3\ui_f\data\igui\cfg\simpleTasks\types\target_ca.paa",{},{true},{},[],[0,0,0], 5] call fjb_323_interactions_fnc_interaction_create;
  ["zumi_interaction_add_to_object", [_scheibe, _trefferbild, 0, []]] call CBA_fnc_globalEventJIP;
  ["zumi_interaction_add_to_object", [_scheibe, _reset, 0, ["Trefferbild"]]] call CBA_fnc_globalEventJIP;
  ["zumi_interaction_add_to_object", [_scheibe, _sehen, 0, ["Trefferbild"]]] call CBA_fnc_globalEventJIP;
} else {
  ["zumi_interaction_add_to_object", [_steuerung, _reset, 0, ["Scheibensteuerung"]]] call CBA_fnc_globalEventJIP;
  ["zumi_interaction_add_to_object", [_steuerung, _sehen, 0, ["Scheibensteuerung"]]] call CBA_fnc_globalEventJIP;
};


_anmelden = ["Anmelden","Anmelden","\A3\ui_f\data\igui\cfg\simpleTasks\types\interact_ca.paa",{
  params ["_t","_p","_actionparams"];
  _actionparams params ["_s", "_ctrl"];
  [_p, _t] call ace_common_fnc_claim;
  _s setVariable ["ctrl", _ctrl];
  ["zumi_stosa_bahn", [_s, true], _p] call CBA_fnc_targetEvent;
  ["zumi_cba_hinweis", [["Sie haben sich auf der Schiessbahn angemeldet", 1, [0,1,0,1]]], _p] call CBA_fnc_targetEvent;
},{isNull (_target getVariable ["ace_common_owner", objNull])},{},[_scheibe, _steuerung],[0,0,0], 2] call fjb_323_interactions_fnc_interaction_create;
["zumi_interaction_add_to_object", [_steuerung, _anmelden, 0, ["Scheibensteuerung"]]] call CBA_fnc_globalEventJIP;

_abmelden = ["Abmelden","Hier abmelden","\A3\ui_f\data\igui\cfg\simpleTasks\types\interact_ca.paa",{
  params ["_t","_p","_actionparams"];
  _actionparams params ["_s"];
  private _owner = (_s getVariable ["ace_common_owner", objNull]);
  [objNull, _t] call ace_common_fnc_claim;
  ["zumi_stosa_bahn", [_s, false],_owner] call CBA_fnc_targetEvent;
  if (_owner != _p) then {
    ["zumi_cba_hinweis", [[["\A3\ui_f\data\igui\cfg\simpleTasks\types\danger_ca.paa", 2, [1,1,1,1]], [format ["%1 hat ihre Abmeldung von der Schiessbahn erzwungen", name _p], 1, [1,0,0,1]]]], _owner] call CBA_fnc_targetEvent;
  } else {
    ["zumi_cba_hinweis", [[["\A3\ui_f\data\igui\cfg\simpleTasks\types\danger_ca.paa", 2, [1,1,1,1]], ["Sie haben sich von der Schiessbahn abgemeldet", 1, [1,1,0,1]]]]] call CBA_fnc_localEvent;
  };
},{!(isNull (_target getVariable ["ace_common_owner", objNull]))},{},[_scheibe],[0,0,0], 2] call fjb_323_interactions_fnc_interaction_create;
["zumi_interaction_add_to_object", [_steuerung, _abmelden, 0, ["Scheibensteuerung"]]] call CBA_fnc_globalEventJIP;

//Abmelden von allen Bahnen
_abmelden_alle = ["Abmelden_alle","Überall abmelden","\A3\ui_f\data\igui\cfg\simpleTasks\types\interact_ca.paa",{
  params ["_t","_p","_actionparams"];
  _actionparams params ["_s"];
  ["zumi_stosa_bahn", []] call CBA_fnc_localEvent;
  ["zumi_cba_hinweis", [[["\A3\ui_f\data\igui\cfg\simpleTasks\types\danger_ca.paa", 2, [1,1,1,1]], ["Sie haben sich von allen Schiessbahnen abgemeldet", 1, [1,1,0,1]]]]] call CBA_fnc_localEvent;
},{!(isNull (_target getVariable ["ace_common_owner", objNull])) && ((count stosa_bahn) > 1)},{},[_scheibe],[0,0,0], 2] call fjb_323_interactions_fnc_interaction_create;
["zumi_interaction_add_to_object", [_steuerung, _abmelden_alle, 0, ["Scheibensteuerung"]]] call CBA_fnc_globalEventJIP;
