
params ["_player", "_dixie", ["_start", false]];


if (_start) exitWith {
  [
    {
      params ["_p", "_d"];
      if ((isNull _p) || (isNull _d) || !(_p getVariable ["kackt", false])) exitWith {};
      [_p, _d] call zumi_fnc_furz;
    },
    [_player, _dixie],
    5 + (ceil round random 5)
  ] call CBA_fnc_waitAndExecute;
};


[_player, format ["furz_%1", round random 10], 10] call CBA_fnc_globalSay3d;

[
  {
    params ["_p", "_d"];
    if ((isNull _p) || (isNull _d) || !(_p getVariable ["kackt", false])) exitWith {};
    [_p, _d] call zumi_fnc_furz;
  },
  [_player, _dixie],
  5 + (ceil round random 5)
] call CBA_fnc_waitAndExecute;
