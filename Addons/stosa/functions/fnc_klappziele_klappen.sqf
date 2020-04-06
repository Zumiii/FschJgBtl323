/*

  Klappziele werden hoch- bzw. runtergeklappt

*/

params [["_ab", 0], ["_gruppen", []]];



if (count _gruppen < 1) exitwith {
  for "_i" from 0 to (count klappziele) - 1 do {
    (klappziele select _i) params ["_obj", "_grps", ["_zugewiesen", []]];
    _zugewiesen params ["_timer", "_gruppierung"];
    _obj animateSource ["terc", _ab];
    _obj animateSource ["terc2", _ab];
  };
};


for "_i" from 0 to (count klappziele) - 1 do {
  (klappziele select _i) params ["_obj", "_grps", "_zugewiesen"];
    if (count _zugewiesen > 0) then {
    //Prüfe für alle Gruppierungen
    for "_j" from 1 to (count _zugewiesen) do {
      (_zugewiesen select (_j-1)) params ["_timer", "_gruppierung"];
      if ({_x IN _gruppen} count _gruppierung > 0) then {
        _obj animateSource ["terc", _ab];
        _obj animateSource ["terc2", _ab];
        if (_timer > 0) then {
          [
            {
                params ["_scheibe"];
                _scheibe animateSource ["terc", 1];
                _scheibe animateSource ["terc2", 1];
            },
            [_obj],
            _timer
          ] call CBA_fnc_waitAndExecute;
        };
      };
    };
  };



};
