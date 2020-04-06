if (!hasInterface) exitWith {};

params ["_spielerinfo", ["_befragt", 0]];


if ((count spielerinfo) < 1) exitWith {};

spielerinfo params ["_loadout","_medical","_rechte","_pos","_timestamp", "_name"];

_medical params ["_isDeadPlayer"/*,"_airwayStatus","_airwayOccluded","_airwayCollapsed"*/,"_inReviveState","_inCardiacArrest","_isUnconscious","_triageLevel","_bloodVolume","_triageCard","_isBleeding","_pain","_painSuppress","_morphine","_tourniquets","_occludedMedications","_bandagedWounds","_openWounds","_internalWounds","_bodyPartStatus","_lastUniqueWoundID","_amountOfReviveLives","_addedToUnitLoop","_allUsedMedication", ["_durst", 0], ["_appetit", 0]];
_rechte params ["_arzt", "_pio", "_eod", ["_pilot", 0], ["_pzbes", false], ["_logistiker", false], ["_keys", []], ["_waka", 0]];

private _player = player;


_player setVariable ["ace_medical_medicClass", _arzt, true];
_player setVariable ["ACE_IsEngineer", _pio, true];
_player setVariable ["ACE_isEOD", _eod, true];
_player setVariable ["323_pilot", _pilot, true];
_player setVariable ["323_panzer", _pzbes, true];
_player setVariable ["323_logistiker", _logistiker, true];
_player setVariable ["323_keys", _keys, true];
_player setVariable ["323_waka", _waka, true];
_player setVariable ["acex_field_rations_thirst", _durst, true];
_player setVariable ["acex_field_rations_hunger", _appetit, true];

if (_befragt < 1) exitWith {
  spielerinfo = _spielerinfo;
  [
    {
      createDialog "jip_dialog";
    },
    [],
    5
  ] call CBA_fnc_waitAndExecute;
};

_timestamp params [["_restart", restart_nummer], ["_time", cba_missiontime]];
_player setUnitLoadout [_loadout, false];


if (!("ACE_EarPlugs" in (items _player))) then {
  [_player, "ACE_EarPlugs"] call CBA_fnc_addItem;
};

if !(_isDeadPlayer) then {
  if (_isUnconscious) then {
    [_player, true] call ace_medical_fnc_setUnconscious;
  };
};

if (_befragt > 1) then {
  _player setPosATL _pos;
};
