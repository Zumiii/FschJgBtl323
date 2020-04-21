/*

  Speichert wichtige Variablen in die Datenbank

*/

if !isServer exitWith {};

private _inidbi = ["new", "guez"] call OO_INIDBI;

/*////////////////////////////////////////
/ Spielerpersistenz                      /
////////////////////////////////////////*/

  private _spielerliste = (([] call cba_fnc_players) select {(alive _x) && !(_x inArea "safezone")});
  if (count _spielerliste > 0) then {
    for "_i" from 0 to (count _spielerliste)-1 do {
      private _spieler = (_spielerliste select _i);
      ["write", ["Spielerliste",
        //Eintragsname
        getPlayerUID _spieler,
        [
          //LOADOUT
          [_spieler] call fjb_323_main_fnc_getUnitLoadout_acre,
          //MEDIZINISCHES
          [
            _spieler getVariable ["isDeadPlayer", false],
            //_spieler getVariable ["ace_medical_airwayStatus", 100],
            //_spieler getVariable ["ace_medical_airwayOccluded", false],
            //_spieler getVariable ["ace_medical_airwayCollapsed", false],
            _spieler getVariable ["ace_medical_inReviveState", false],
            _spieler getVariable ["ace_medical_inCardiacArrest", false],
            _spieler getVariable ["ACE_isUnconscious", false],
            _spieler getVariable ["ace_medical_triageLevel", 0],
            _spieler getVariable ["ace_medical_bloodVolume", 100],
            _spieler getVariable ["ace_medical_triageCard", []],
            _spieler getVariable ["ace_medical_isBleeding", false],
            _spieler getVariable ["ace_medical_pain", 0],
            _spieler getVariable ["ace_medical_painSuppress", 0],
            _spieler getVariable ["ace_medical_morphine", 0],
            _spieler getVariable ["ace_medical_tourniquets", [0,0,0,0,0,0]],
            _spieler getVariable ["ace_medical_occludedMedications", []],
            _spieler getVariable ["ace_medical_bandagedWounds", []],
            _spieler getVariable ["ace_medical_openWounds", []],
            _spieler getVariable ["ace_medical_internalWounds", []],
            _spieler getVariable ["ace_medical_bodyPartStatus", [0,0,0,0,0,0]],
            _spieler getVariable ["ace_medical_lastUniqueWoundID", 1],
            _spieler getVariable ["ace_medical_amountOfReviveLives", 0],
            _spieler getVariable ["ace_medical_addedToUnitLoop", false],
            _spieler getVariable ["ace_medical_allUsedMedication", []],
            parseNumber ([(_spieler getVariable ["acex_field_rations_thirst", 0]), 1, 4] call CBA_fnc_formatNumber),
            parseNumber ([(_spieler getVariable ["acex_field_rations_hunger", 0]), 1, 4] call CBA_fnc_formatNumber)
          ],
          [
            _spieler getVariable ["ace_medical_medicClass", 0],
            _spieler getVariable ["ACE_IsEngineer", 0],
            _spieler getVariable ["ACE_isEOD", false],
            _spieler getVariable ["323_pilot", 0],
            _spieler getVariable ["323_panzer", false],
            _spieler getVariable ["323_logistiker", false],
            _spieler getVariable ["323_keys", []],
            _spieler getVariable ["323_waka", 1]
          ],
          getPosATL _spieler,
          [restart_nummer, cba_missiontime],
          name _spieler
        ]
      ]] call _inidbi;
    };
  };

//Loop
[
  fjb_323_persistenz_fnc_save,
  [],
  60
] call CBA_fnc_waitAndExecute;
