class cfgVehicles {

  class Man;
  class CAManBase: Man {
    class Ace_SelfActions {

      class ACE_Equipment  {

        class ausbilder {
          condition = "true";
          displayName = "Ausbilderspezifisches";
          icon = "zumis_zusatz\addons\data\fschjgbtl323.paa";
          class pfeifen {
            condition = "!(pfeift) && ([_player, 'zumi_pfeife'] call ace_common_fnc_hasItem)";
            displayName = "Pfeifen";
            icon = "zumis_zusatz\addons\data\pfeife.paa";
            statement = "[] call zumi_fnc_pfeifen;";
          };
          class airhorn {
            condition = "!(pfeift) && ([_player, 'zumi_airhorn'] call ace_common_fnc_hasItem)";
            displayName = "Horn";
            icon = "zumis_zusatz\addons\data\airhorn.paa";
            statement = "[] call zumi_fnc_airhorn;";
          };
        };

        class shottimer {
          condition = "([_player, 'zumi_shottimer'] call ace_common_fnc_hasItem)";
          displayName = "Shottimer";
          icon = "zumis_zusatz\addons\data\shottimer.paa";
          class start {
            icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\interact_ca.paa";
            displayName = "Aufzeichnung starten";
            condition = "((_player getVariable ['aufzeichnungsstart', 0]) >= 0) && !(_player getVariable ['running', false])";
            statement = "_player setvariable ['aufzeichnungsstart', -1]; _player setvariable ['running', true]; [{params ['_player']; if !(_player getvariable ['running', false]) exitWith {_player setVariable ['aufzeichnungsstart', 0];}; [_player, 'beep', 25] call CBA_fnc_globalSay3d; _player setvariable ['aufzeichnungsstart', cba_missionTime]; _player setVariable ['records', []]; _player addEventHandler ['FiredNear', {params ['_unit', '_firer', '_distance', '_weapon', '_muzzle', '_mode','_ammo', '_gunner']; if (_distance <= (_unit getVariable ['sensitivity', 2])) then {_records = (_unit getVariable ['records', []]); _records pushBack cba_missionTime; _unit setVariable ['records', _records];};}];}, [_player], (_player getvariable ['countdown', 5])] call CBA_fnc_waitAndExecute;";
          };
          class stop {
            icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\interact_ca.paa";
            displayName = "Aufzeichnung stoppen";
            condition = "(_player getVariable ['running', false])";
            statement = "_player setvariable ['running', false]; _player removeAllEventHandlers 'FiredNear'; _player setvariable ['aufzeichnungsstop', cba_missionTime];";
          };
          class sensitivity {
            icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\listen_ca.paa";
            displayName = "Sensitivität";
            condition = "!(_player getVariable ['running', false])";
            class s_2 {
              displayName = "2 Meter";
              condition = "!(_player getVariable ['running', false]) && !((_player getVariable ['sensitivity', 0]) == 2)";
              statement = "_player setvariable ['sensitivity', 2]; ['zumi_cba_hinweis', [[format ['Empfindlichkeit gestellt auf: %1 Meter', 2], 1, [1,1,0,1]]]] call CBA_fnc_localEvent;";
            };
            class s_5 {
              displayName = "5 Meter";
              condition = "!(_player getVariable ['running', false]) && !((_player getVariable ['sensitivity', 0]) == 5)";
              statement = "_player setvariable ['sensitivity', 5]; ['zumi_cba_hinweis', [[format ['Empfindlichkeit gestellt auf: %1 Meter', 5], 1, [1,1,0,1]]]] call CBA_fnc_localEvent;";
            };
            class s_10 {
              displayName = "10 Meter";
              condition = "!(_player getVariable ['running', false]) && !((_player getVariable ['sensitivity', 0]) == 10)";
              statement = "_player setvariable ['sensitivity', 10]; ['zumi_cba_hinweis', [[format ['Empfindlichkeit gestellt auf: %1 Meter', 10], 1, [1,1,0,1]]]] call CBA_fnc_localEvent;";
            };
          };
          class auswertung {
            icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\search_ca.paa";
            displayName = "Auswerten";
            condition = "(count (_player getVariable ['records', []]) > 0) && !(_player getVariable ['running', false])";
            statement = "_records = (_player getVariable ['records', []]); _start = (_player getVariable ['aufzeichnungsstart', cba_missionTime]); _stop = (_player getVariable ['aufzeichnungsstop', cba_missionTime]); ['zumi_cba_hinweis', [[[format ['Gemessenes Intervall: %1 Sekunden', (_stop - _start)], 1, [1,1,0,1]],[format ['Schüsse abgegeben: %1 Schuss', (count _records)], 1, [1,1,0,1]],[format ['Durchschnittliche Zeit pro Schuss: %1 Sekunden', ((_records select ((count _records) - 1)) - _start) / (count _records)], 1, [1,1,0,1]],[format ['Letzter Schuss nach: %1 Sekunden', (_records select ((count _records) - 1)) - _start], 1, [1,1,0,1]]]]] call CBA_fnc_localEvent;";
          };
        };

        class maehen {
          condition = "(stance _player IN ['PRONE','CROUCHED']) && !(_player getVariable ['maeht', false])";
          displayName = "Rasen mähen...";
          icon = "zumis_zusatz\addons\data\maehen.paa";
          exceptions[] = {"isNotSwimming"};
          statement = "_player setVariable ['maeht', true]; _grasscutter = createVehicle ['ClutterCutter_small_2_EP1', position _player, [], 0, 'CAN_COLLIDE']; [{params ['_cutter', '_p']; deleteVehicle _cutter; _p setVariable ['maeht', false];}, [_grasscutter, _player], 8] call CBA_fnc_waitAndExecute;";
        };
      };
    };

    class EventHandlers {
      class zumis_zusatz {
        reloaded = "params ['_player','_wep','_muzzle','_fullmag','_reloadedmag']; if (vehicle _player != _player) exitWith {}; if (_reloadedmag select 1 == 0) then {_player addMagazine  [(_reloadedmag select 0), 0]};";
      };
    };

   };

};
