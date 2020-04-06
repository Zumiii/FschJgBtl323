/*

  Aktualisiert die Buttons

*/
disableSerialization;

//Finde GUI
_display = findDisplay 1508;
_checkbox = _display displayCtrl 2340;

_gruppen = [];
for "_i" from 1 to 12 do {
  if (_checkbox ctrlChecked (_i-1)) then {
    _gruppen pushback (_i);
  };
};


buttonSetAction [2346, format ["[0, %1] remoteExecCall ['FschJgBtl323_stosa_fnc_klappziele_klappen', 2];", _gruppen]];
