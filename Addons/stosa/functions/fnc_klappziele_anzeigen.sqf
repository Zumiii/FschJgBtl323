/*

  Zeigt Klappziele in der Liste an

*/

disableSerialization;


//Finde GUI
_display = findDisplay 1508;

//Access control
_ziele = _display displayCtrl 2338;
_setup = _display displayCtrl 2339;

lbClear _ziele;

for "_i" from 0 to (count klappziele) - 1 do {
  (klappziele select _i) params ["_obj", ["_grps", []], ["_zugewiesen", []]];
  _ziele lbAdd format ["Scheibe %1", _i + 1];
  _ziele lbSetValue [_i, _i + 1];

  if (count _zugewiesen > 0) then {
    for "_j" from 0 to (count _zugewiesen) - 1 do {
      (_zugewiesen select _j) params ["_t", "_g"];
      _new_index = _setup lbAdd format ["%1, Gruppen: %2, Timer: %3 Sekunden", _i + 1, _g, _t];
      _setup lbSetValue [_new_index, _i + 1];
      _setup lbSetData [_new_index, str (_zugewiesen select _j)];
      _setup lbSetPictureRight [_new_index, getText (configfile >> "cfgVehicles" >> typeOf _obj >> "editorPreview")];
    };
  };
};

lbSortByValue _ziele;
lbSortByValue _setup;

_ziele lbSetCurSel 0;
