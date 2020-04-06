

if (pfeift) exitWith {};

pfeift = true;

[player, "einatmen", 15] call CBA_fnc_globalSay3d;


[
  {
      [player, "whistle", 300] call CBA_fnc_globalSay3d;
      "ace_gestures_forward" call ace_gestures_fnc_playSignal;
  },
  [],
  2
] call CBA_fnc_waitAndExecute;

[
  {
      pfeift = false;
  },
  [],
  4
] call CBA_fnc_waitAndExecute;
