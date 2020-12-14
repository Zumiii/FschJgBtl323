params ["_player", "_sack"];


"sleep" cutText ["", "BLACK OUT", 3, true, false];
_player setVariable ["awake", false];
_player setVariable ["ace_repair_selectedWeaponOnrepair", currentWeapon _player];
_player setVariable ["asleep", cba_missionTime];
publicVariableServer "asleep";
["player_sleeping", [cba_missionTime]] call CBA_fnc_serverEvent;

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


_newpos = [[0,0,-0.5], -1*(getDir _sack)] call BIS_fnc_rotateVector2D;
_pos = (getPosATL _sack) vectorAdd _newpos;
_player setPos _pos;
_player setDir (getDir _sack);
[_player, "AinjPpneMstpSnonWrflDb_release", 2] call ace_common_fnc_doAnimation;

[
  60,
  [_sack,  _player],
  {
    params ["_args", "_elapsedTime", "_totalTime", "_errorCode"];
    _args params ["_sack", "_player"];
    "sleep" cutFadeOut 3;
    _player setVariable ["asleep", 0];
    publicVariableServer "asleep";
    _player setVariable ["awake", true];
    _newpos = [[0,0,-1], -1*(getDir _sack)] call BIS_fnc_rotateVector2D;
    _pos = (getPosATL _sack) vectorAdd _newpos;
    _player setDir ((getDir _sack) - 180);
    _player setPos _pos;
    [objNull, _sack] call ace_common_fnc_claim;
    _player removeWeapon "ACE_FakePrimaryWeapon";
    _player setVariable ["ace_repair_repairPrevAnimCaller", nil];
    private _weaponSelect = (_player getVariable ["ace_repair_selectedWeaponOnrepair", ""]);
    if (_weaponSelect != "") then {
      _player selectWeapon _weaponSelect;
    } else {
      _player action ["SwitchWeapon", _player, _player, 299];
    };

  },
  {
    params ["_args", "_elapsedTime", "_totalTime", "_errorCode"];
    _args params ["_sack", "_player"];
    "sleep" cutFadeOut 3;
    _player setVariable ["asleep", 0];
    publicVariableServer "asleep";
    _player setVariable ["awake", true];
    _newpos = [[0,0,-1], -1*(getDir _sack)] call BIS_fnc_rotateVector2D;
    _pos = (getPosATL _sack) vectorAdd _newpos;
    _player setDir ((getDir _sack) - 180);
    _player setPos _pos;
    private _animation = switch (currentWeapon _player) do {
      case "": {"amovpercmstpsnonwnondnon"};
      case (primaryWeapon _player): {"amovpercmstpslowwrfldnon"};
      case (handgunWeapon _player): {"amovpercmstpslowwpstdnon"};
      default {"amovpercmstpsnonwnondnon"};
    };
    [_player, _animation, 2] call ace_common_fnc_doAnimation;
    [objNull, _sack] call ace_common_fnc_claim;
    _player removeWeapon "ACE_FakePrimaryWeapon";
    _player setVariable ["ace_repair_repairPrevAnimCaller", nil];
    private _weaponSelect = (_player getVariable ["ace_repair_selectedWeaponOnrepair", ""]);
    if (_weaponSelect != "") then {
      _player selectWeapon _weaponSelect;
    } else {
      _player action ["SwitchWeapon", _player, _player, 299];
    };

  },
  "Ruhe aus...",
  {
    params ["_args", "_elapsedTime", "_totalTime", "_errorCode"];
    _args params ["_sack", "_player"];
    ((alive _sack) && (_sack distance _player <= 2) && !(_player getvariable ["awake", false]));
  },
  ["isNotSwimming", "isNotOnLadder"]
] call ace_common_fnc_progressBar;
