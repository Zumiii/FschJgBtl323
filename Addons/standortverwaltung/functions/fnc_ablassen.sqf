/*

  Funktion, um Geschäfte zu verrichten

*/

params ["_dixie", "_player", ["_gross", false]];

[_player, _dixie] call ace_common_fnc_claim;

_dixie setVariable ["bis_disabled_Door_1", 1, true];

_player setVariable ["ace_repair_selectedWeaponOnrepair", currentWeapon _player];

// Cannot use secondairy weapon for animation
if (currentWeapon _player == secondaryWeapon _player) then {
    _player selectWeapon (primaryWeapon _player);
};

private _wpn = ["non", "rfl", "pst"] select (1 + ([primaryWeapon _player, handgunWeapon _player] find (currentWeapon _player)));
_callerAnim = [_callerAnim, "[wpn]", _wpn] call CBA_fnc_replace;
if (vehicle _player == _player && {_callerAnim != ""}) then {
    if (primaryWeapon _player == "") then {
        _player addWeapon "ACE_FakePrimaryWeapon";
    };
    if (currentWeapon _player == "") then {
        _player selectWeapon (primaryWeapon _player);
    };

    if !(_player call ace_common_fnc_isSwimming) then {
        if (stance _player == "STAND") then {
            _player setVariable ["ace_repair_repairPrevAnimCaller", "amovpknlmstpsraswrfldnon"];
        } else {
            _player setVariable ["ace_repair_repairPrevAnimCaller", animationState _player];
        };
        [_player, _callerAnim] call ace_common_fnc_doAnimation;
    };
};

if !(_gross) then {
  [_player, "Acts_AidlPercMstpSlowWrflDnon_pissing", 1] call ace_common_fnc_doAnimation;  //Pissanimation
  _player setDir (getDir _dixie);
  _player attachTo [_dixie, [0,0.2,-1.25], ""];
  _dixie animatesource ["Door_1_sound_source", 0];
  [
    22,
    [_dixie,  _player, _gross],
    {
      params ["_args", "_elapsedTime", "_totalTime", "_errorCode"];
      _args params ["_dixie", "_player", "_gross"];
      [
        {
          params ["_dixie", "_player"];
          detach _player;
          _newpos = [[0,0.2,-1], -1*(getDir _dixie)] call BIS_fnc_rotateVector2D;
          _pos = (getPosATL _dixie) vectorAdd _newpos;
          _player setDir ((getDir _dixie) - 180);
          _player setPos _pos;
          [objNull, _dixie] call ace_common_fnc_claim;
          _player removeWeapon "ACE_FakePrimaryWeapon";
          _player setVariable ["ace_repair_repairPrevAnimCaller", nil];
          private _weaponSelect = (_player getVariable ["ace_repair_selectedWeaponOnrepair", ""]);
          if (_weaponSelect != "") then {
            _player selectWeapon _weaponSelect;
          } else {
            _player action ["SwitchWeapon", _player, _player, 299];
          };
        },
        [_dixie, _player],
        2
      ] call cba_fnc_waitAndExecute;
      _dixie setVariable ["bis_disabled_Door_1", 0, true];
      _dixie animatesource ["Door_1_sound_source", 1];
      [["Sie fühlen sich erleichtert!", 1, [0,1,0,1]], ["zumis_zusatz\addons\data\wc.paa", 1]] call CBA_fnc_notify;
      [_dixie, "flush", 15] call CBA_fnc_globalSay3d;
    },
    {
      params ["_args", "_elapsedTime", "_totalTime", "_errorCode"];
      _args params ["_dixie", "_player", "_gross"];
      [
        {
          params ["_dixie", "_player"];
          detach _player;
          _newpos = [[0,0.2,-1], -1*(getDir _dixie)] call BIS_fnc_rotateVector2D;
          _pos = (getPosATL _dixie) vectorAdd _newpos;
          _player setDir ((getDir _dixie) - 180);
          _player setPos _pos;
          private _animation = switch (currentWeapon _player) do {
            case "": {"amovpercmstpsnonwnondnon"};
            case (primaryWeapon _player): {"amovpercmstpslowwrfldnon"};
            case (handgunWeapon _player): {"amovpercmstpslowwpstdnon"};
            default {"amovpercmstpsnonwnondnon"};
          };
          [_player, _animation, 2] call ace_common_fnc_doAnimation;
          [objNull, _dixie] call ace_common_fnc_claim;
          _player removeWeapon "ACE_FakePrimaryWeapon";
          _player setVariable ["ace_repair_repairPrevAnimCaller", nil];
          private _weaponSelect = (_player getVariable ["ace_repair_selectedWeaponOnrepair", ""]);
          if (_weaponSelect != "") then {
            _player selectWeapon _weaponSelect;
          } else {
            _player action ["SwitchWeapon", _player, _player, 299];
          };
        },
        [_dixie, _player],
        2
      ] call cba_fnc_waitAndExecute;
      _dixie setVariable ["bis_disabled_Door_1", 0, true];
      _dixie animatesource ["Door_1_sound_source", 1];
      [["Das ging in die Hose!", 1, [1,0,0,1]], ["zumis_zusatz\addons\data\wc.paa", 1]] call CBA_fnc_notify;
      [_dixie, "flush", 15] call CBA_fnc_globalSay3d;
    },
    "Entleere Blase...",
    {
      params ["_args", "_elapsedTime", "_totalTime", "_errorCode"];
      _args params ["_dixie", "_player", "_gross"];
      ((alive _dixie) && (_dixie distance _player <= 3));
    },
    ["isNotSwimming", "isNotOnLadder"]
  ] call ace_common_fnc_progressBar;

} else {
  _player switchMove "amovpknlmstpsraswrfldnon";
  [_player, call acex_sitting_fnc_getRandomAnimation, 2] call ace_common_fnc_doAnimation;
  _newpos = [[0,0.65,-1], -1*(getDir _dixie)] call BIS_fnc_rotateVector2D;
  _pos = (getPosATL _dixie) vectorAdd _newpos;
  _player setDir ((getDir _dixie) - 180);
  _player setPos _pos;
  _dixie animatesource ["Door_1_sound_source", 0];
  _player setVariable ["kackt", true];
  [_player, _dixie, true] call zumi_fnc_furz;
  [
    300,
    [_dixie,  _player, _gross],
    {
      params ["_args", "_elapsedTime", "_totalTime", "_errorCode"];
      _args params ["_dixie", "_player", "_gross"];
      [
        {
          params ["_dixie", "_player"];
          _newpos = [[0,0.25,-1], -1*(getDir _dixie)] call BIS_fnc_rotateVector2D;
          _pos = (getPosATL _dixie) vectorAdd _newpos;
          _player setDir ((getDir _dixie) - 180);
          _player setPos _pos;
          private _animation = switch (currentWeapon _player) do {
            case "": {"amovpercmstpsnonwnondnon"};
            case (primaryWeapon _player): {"amovpercmstpslowwrfldnon"};
            case (handgunWeapon _player): {"amovpercmstpslowwpstdnon"};
            default {"amovpercmstpsnonwnondnon"};
          };
          [_player, _animation, 2] call ace_common_fnc_doAnimation;
          [objNull, _dixie] call ace_common_fnc_claim;
          _player removeWeapon "ACE_FakePrimaryWeapon";
          _player setVariable ["ace_repair_repairPrevAnimCaller", nil];
          private _weaponSelect = (_player getVariable ["ace_repair_selectedWeaponOnrepair", ""]);
          if (_weaponSelect != "") then {
            _player selectWeapon _weaponSelect;
          } else {
            _player action ["SwitchWeapon", _player, _player, 299];
          };
        },
        [_dixie, _player],
        2
      ] call cba_fnc_waitAndExecute;
      _dixie setVariable ["bis_disabled_Door_1", 0, true];
      _dixie animatesource ["Door_1_sound_source", 1];
      [["Sitzung beendet!", 1, [0,1,0,1]], ["zumis_zusatz\addons\data\wc.paa", 1]] call CBA_fnc_notify;
      _player setVariable ["kackt", false];
      [_dixie, "flush", 15] call CBA_fnc_globalSay3d;
    },
    {
      params ["_args", "_elapsedTime", "_totalTime", "_errorCode"];
      _args params ["_dixie", "_player", "_gross"];
      [
        {
          params ["_dixie", "_player"];
          _newpos = [[0,0.25,-1], -1*(getDir _dixie)] call BIS_fnc_rotateVector2D;
          _pos = (getPosATL _dixie) vectorAdd _newpos;
          _player setDir ((getDir _dixie) - 180);
          _player setPos _pos;
          private _animation = switch (currentWeapon _player) do {
            case "": {"amovpercmstpsnonwnondnon"};
            case (primaryWeapon _player): {"amovpercmstpslowwrfldnon"};
            case (handgunWeapon _player): {"amovpercmstpslowwpstdnon"};
            default {"amovpercmstpsnonwnondnon"};
          };
          [_player, _animation, 2] call ace_common_fnc_doAnimation;
          [objNull, _dixie] call ace_common_fnc_claim;
          _player removeWeapon "ACE_FakePrimaryWeapon";
          _player setVariable ["ace_repair_repairPrevAnimCaller", nil];
          private _weaponSelect = (_player getVariable ["ace_repair_selectedWeaponOnrepair", ""]);
          if (_weaponSelect != "") then {
            _player selectWeapon _weaponSelect;
          } else {
            _player action ["SwitchWeapon", _player, _player, 299];
          };
        },
        [_dixie, _player],
        2
      ] call cba_fnc_waitAndExecute;
      _dixie setVariable ["bis_disabled_Door_1", 0, true];
      _dixie animatesource ["Door_1_sound_source", 1];
      [["Das ging in die Hose!", 1, [1,0,0,1]], ["zumis_zusatz\addons\data\wc.paa", 1]] call CBA_fnc_notify;
      _player setVariable ["kackt", false];
      [_dixie, "flush", 15] call CBA_fnc_globalSay3d;
    },
    "Verrichte Geschäft...",
    {
      params ["_args", "_elapsedTime", "_totalTime", "_errorCode"];
      _args params ["_dixie", "_player", "_gross"];
      ((alive _dixie) && (_dixie distance _player <= 3));
    },
    ["isNotSwimming", "isNotOnLadder"]
  ] call ace_common_fnc_progressBar;
};
