

if (pfeift) exitWith {};

pfeift = true;


[
  {
      [player, "airhorn", 300] call CBA_fnc_globalSay3d;
  },
  [],
  1
] call CBA_fnc_waitAndExecute;

[
  {
      pfeift = false;
  },
  [],
  3
] call CBA_fnc_waitAndExecute;
