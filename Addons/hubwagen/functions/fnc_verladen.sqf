/*

  Funktion, um Kisten usw. zu verladen

*/

params ["_player", "_kiste"];


//Prüfe, ob Fahrzeuge in der Nähe sind, die Ladung aufnehmen können
if (((nearestObjects [getPos _kiste, ["Car","Tank","Air"], 5, true]) findIf {((_x canVehicleCargo _kiste) select 0)}) < 0) exitWith {
  [["Keine Fahrzeuge mit freiem Stauraum vorhanden", 1, [1,0,0,1]], ["\A3\ui_f\data\igui\cfg\simpleTasks\types\upload_CA.paa", 1]] call CBA_fnc_notify;
};

[_player, _kiste] call ace_common_fnc_claim;

[
  5,
  [_kiste, _player],
  {
    params ["_args", "_elapsedTime", "_totalTime", "_errorCode"];
    _args params ["_kiste", "_player"];
    private _cargospaces = nearestObjects [getPos _kiste, ["Car","Tank","Air"], 5, true];
    private _index = _cargospaces findIf {((_x canVehicleCargo _kiste) select 0)};
    if (_index < 0) exitWith {
      [["Keine Fahrzeuge mit freiem Stauraum vorhanden", 1, [1,0,0,1]], ["\A3\ui_f\data\igui\cfg\simpleTasks\types\upload_CA.paa", 1]] call CBA_fnc_notify;
    };
    (_cargospaces select _index) setVehicleCargo _kiste;
    private _obj = ([configfile >> "CfgVehicles" >> (typeOf _kiste) >> "displayName", "String", "Objekt"] call CBA_fnc_getConfigEntry);
    private _stauraum = ([configfile >> "CfgVehicles" >> (typeOf (_cargospaces select _index)) >> "displayName", "String", "Stauraum"] call CBA_fnc_getConfigEntry);
    [objNull, _kiste] call ace_common_fnc_claim;
    _txt = format ["%1 wurde in %2 verladen", _obj, _stauraum];
    [[_txt, 1, [0,1,0,1]], ["\A3\ui_f\data\igui\cfg\simpleTasks\types\upload_CA.paa", 1]] call CBA_fnc_notify;
  },
  {
    params ["_args", "_elapsedTime", "_totalTime", "_errorCode"];
    _args params ["_kiste", "_player"];
    [objNull, _kiste] call ace_common_fnc_claim;
    [["Verladevorgang abgebrochen", 1, [0,1,1,1]], ["\A3\ui_f\data\igui\cfg\simpleTasks\types\download_CA.paa", 1]] call CBA_fnc_notify;
  },
  "Verlade Transportgut...",
  {
    params ["_args", "_elapsedTime", "_totalTime", "_errorCode"];
    _args params ["_kiste", "_player"];
    ((nearestObjects [getPos _kiste, ["Car","Tank","Air"], 5, true]) findIf {((_x canVehicleCargo _kiste) select 0)} >= 0)
  },
  ["isNotSwimming", "isNotOnLadder"]
] call ace_common_fnc_progressBar;
