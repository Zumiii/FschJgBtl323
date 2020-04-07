
class Man;
class CAManBase: Man {

  class Ace_SelfActions {

    class ACE_Equipment  {

      class ausbilder {
        condition = "true";
        displayName = "Ausbilder";
        icon = "z\fjb_323\addons\drill\data\323_ca.paa";
        class pfeifen {
          condition = "!(pfeift) && ([_player, 'fjb_323_drill_pfeife'] call ace_common_fnc_hasItem)";
          displayName = "Pfeifen";
          icon = "z\fjb_323\addons\drill\data\pfeife.paa";
          statement = "[] call fjb_323_drill_fnc_pfeifen;";
        };
        class airhorn {
          condition = "!(pfeift) && ([_player, 'fjb_323_drill_airhorn'] call ace_common_fnc_hasItem)";
          displayName = "Horn";
          icon = "z\fjb_323\addons\drill\data\airhorn.paa";
          statement = "[] call fjb_323_drill_fnc_airhorn;";
        };
      };

      class shottimer {
        condition = "([_player, 'zumi_shottimer'] call ace_common_fnc_hasItem)";
        displayName = "Shottimer";
  			icon = "z\fjb_323\addons\drill\data\shottimer.paa";
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
    };

  };

 };


  class Land_ShotTimer_01_F;
  class GVAR(shottimer_wepholder): Land_ShotTimer_01_F {
		scope = 0;
		scopeCurator = 0;
		displayName = "Shottimer";
		author = "Zumi";
    picture = "z\fjb_323\addons\drill\data\shottimer.paa";
		class TransportItems {
			class zumi_shottimer {
				name = "Shottimer";
				count = 1;
			};
		};
	};

  class Misc_thing;
  class GVAR(pfeife_wepholder): Misc_thing {
		scope = 0;
		scopeCurator = 0;
		displayName = "Pfeife";
		author = "Zumi";
    picture = "z\fjb_323\addons\drill\data\pfeife.paa";
		class TransportItems {
			class fjb_323_drill_pfeife {
				name = "Pfeife";
				count = 1;
			};
		};
	};

  class Land_AirHorn_01_F;
  class GVAR(airhorn_wepholder): Land_AirHorn_01_F {
    scope = 0;
    scopeCurator = 0;
    displayName = "Airhorn";
    author = "Zumi";
    picture = "z\fjb_323\addons\drill\data\airhorn.paa";
    class TransportItems {
      class fjb_323_drill_airhorn {
        name = "Airhorn";
        count = 1;
      };
    };
  };
