/*

  Roedelt den Spieler auf

*/

#include "\z\fjb_323\addons\waka\script_component.hpp"

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
    (((WAFFENKAMMER select _val) select 1) select _auswahl) params ["_desc", "_loadout", ["_medic", 0], ["_pio", 0], ["_eod", false],["_323_ausbilder", false]];
    player setUnitLoadout [_loadout, false];
    player setVariable ["Ace_medical_medicClass", _medic, true];
    player setVariable ["ACE_isEngineer", _pio, true];
    player setVariable ["ACE_isEOD", _eod, true];
    if (_323_ausbilder) then {
      player setVariable ["323_ausbilder", true];
    };
  };
  case 1 : {
    removeBackpack player;
    _loadout = (((WAFFENKAMMER select _val) select 1) select _auswahl) select 1;
    if (_loadout isEqualTo []) exitWith {};
    _loadout params ["_backpack", "_backpackitems"];
    player addBackpack _backpack;
    _bp = unitBackpack player;
    {
      _x params ["_item", "_count", "_rounds"];
      _bp addItemCargoGlobal [_item, _count];
    } forEach _backpackitems;
  };
  default {};
};
