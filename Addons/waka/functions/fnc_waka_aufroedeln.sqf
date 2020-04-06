/*

  Roedelt den Spieler auf

*/

disableSerialization;

//Finde GUI
_display = findDisplay 1130;

//Access Control
_kategorie = _display displayCtrl 1136;
_liste = _display displayCtrl 1137;

_val = _kategorie lbvalue (lbcursel _kategorie);
_auswahl = _liste lbvalue (lbcursel _liste);
player forceFlagTexture "";
switch _val do {
  case 0 : {
    removeAllWeapons player;
    removeAllItems player;
    removeAllAssignedItems player;
    removeUniform player;
    removeVest player;
    removeBackpack player;
    removeHeadgear player;
    removeGoggles player;
    (((waffenkammer select _val) select 1) select _auswahl) params ["_text_etc", "_loadout", ["_medic", 0], ["_pio", 0], ["_eod", false],["_instruktor", false]];
    player setUnitLoadout [_loadout, false];
    player setVariable ["Ace_medical_medicClass", _medic, true];
    player setVariable ["ACE_isEngineer", _pio, true];
    player setVariable ["ACE_isEOD", _eod, true];
    if (_instruktor) then {
      player setVariable ["instruktor", true];
    };
  };
  case 1 : {
    removeAllWeapons player;
    removeAllItems player;
    removeAllAssignedItems player;
    removeUniform player;
    removeVest player;
    removeBackpack player;
    removeHeadgear player;
    removeGoggles player;
    (((waffenkammer select _val) select 1) select _auswahl) params ["_text_etc", "_loadout", ["_medic", 0], ["_pio", 0], ["_eod", false],["_instruktor", false]];
    player setUnitLoadout [_loadout, false];
    player setVariable ["Ace_medical_medicClass", _medic, true];
    player setVariable ["ACE_isEngineer", _pio, true];
    player setVariable ["ACE_isEOD", _eod, true];
    if (_instruktor) then {
      player setVariable ["instruktor", true];
    };
  };
  case 2 : {
    removeBackpack player;
    _loadout = (((waffenkammer select _val) select 1) select _auswahl) select 1;
    if (_loadout isEqualTo []) exitWith {};
    _loadout params ["_backpack", "_backpackitems"];
    player addBackpack _backpack;
    _bp = unitBackpack player;
    {
      _x params ["_item", "_count", "_rounds"];
      _bp addItemCargoGlobal [_item, _count];
    } forEach _backpackitems;
  };
  case 3 : {
    removeBackpack player;
    _loadout = (((waffenkammer select _val) select 1) select _auswahl) select 1;
    if (_loadout isEqualTo []) exitWith {};
    _loadout params ["_backpack", "_backpackitems"];
    player addBackpack _backpack;
    _bp = unitBackpack player;
    {
      _x params ["_item", "_count", "_rounds"];
      _bp addItemCargoGlobal [_item, _count];
    } forEach _backpackitems;
  };
};
