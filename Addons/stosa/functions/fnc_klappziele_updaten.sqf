/*

  Aktualisiert die Liste der Klappziele

*/

disableSerialization;

params [["_adden", false], ["_delete", false]];

//Finde GUI
_display = findDisplay 1508;

_ziele = _display displayCtrl 2338;
_setup = _display displayCtrl 2339;
_checkbox = _display displayCtrl 2340;
_regler = _display displayCtrl 2344;
_selektiv_klappen = _display displayCtrl 2346;

//Wird was entfernt, verlasse Skript
if (_delete) exitWith {
  _index = _setup lbValue (lbcursel _setup);
  _zugewiesen = parsesimpleArray (_setup lbData (lbcursel _setup));
  _zugewiesen params ["_t", "_g"];
  _setup lbDelete (lbcursel _setup);

  //Finde entsprechendes Element und lösche es (Muss noch machen, dass es nur identisch vorkommen kann)
  ((klappziele select (_index -1)) select 2) deleteAt (((klappziele select (_index -1)) select 2) find _zugewiesen);
  if (lbSize _setup > 0) then {
    _setup lbSetSelected [(_index - 1) max 0, true];
  };
  [] call FUNC(klappziele_updaten);
};


//Wird was geaddet, verlasse Skript
if (_adden) exitWith {
  _slider = sliderPosition _regler;
  _index = _ziele lbValue (lbcursel _ziele);
  _gruppen = [];
  for "_i" from 1 to 12 do {
    if (_checkbox ctrlChecked (_i-1)) then {
      _gruppen pushbackUnique (_i);
    };
  };

  {
    ((klappziele select (_index -1)) select 1) pushBackUnique _x;
  } forEach _gruppen;
  //Adde neuen Timer und Gruppe
  ((klappziele select (_index -1)) select 2) pushBackUnique [_slider, _gruppen];

  _new_index = _setup lbAdd format ["%1, Gruppen: %2, Timer: %3s", _index, _gruppen, _slider];
  _setup lbSetValue [_new_index, _index];
  _setup lbSetPictureRight [_new_index, getText (configfile >> "cfgVehicles" >> typeOf ((klappziele select (_index -1)) select 0) >> "editorPreview")];
  _setup lbSetData [_new_index, str [_slider, _gruppen]];
  _setup lbSetSelected [_new_index, true];

  buttonSetAction [2346, format ["[0, %1] remoteExecCall ['fjb_323_stosa_fnc_klappziele_klappen', 2];", _gruppen]];

  publicVariable "klappziele";
  //lbSort [_setup, "ASC"];
  lbSortByValue _setup;
};

_slider = sliderPosition _regler;

for "_i" from 0 to 11 do {
  _checkbox ctrlSetChecked [_i, false];
};

if (lbSize _setup < 1) exitwith {
  Hint "Setup leer";
};

_index = _setup lbValue (lbcursel _setup);
_element = (klappziele select (_index - 1));

_element params ["_obj", ["_grps", []], ["_zuweisungen", []]];


_zu_klappende = [];
{
  _checkbox ctrlSetChecked [_x - 1, true];
  _zu_klappende pushback _x;
} forEach _grps;
