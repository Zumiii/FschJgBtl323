
class CfgVehicles {

  class Man;
  class CAManBase: Man {
    class EventHandlers {
      class GVAR(hit) {
        hit = "params ['_unit', '_source', '_damage', '_instigator']; [_unit, _damage] call fjb_323_hubwagen_fnc_handle_hit;";
      };
    };
  };


  class Land_PalletTrolley_01_yellow_F;
	class GVAR(hubwagen):  Land_PalletTrolley_01_yellow_F {
		author = "Zumi";
		ace_cargo_canLoad = 1;
		ace_cargo_size = 2;
		ace_Dragging_carryPosition[] = {0,1,0.5};
		ace_Dragging_carryDirection = -90;
		displayName = "Hubwagen (gelb)";
		editorCategory = "fschjgbtl323_fleck";
		editorSubCategory = "logistik";
		faction = "Bundeswehr";
		icon = "z\fjb_323\addons\standortverwaltung\data\banner92.paa";
		scope = 2;
		class ACE_Actions {
			class ACE_MainActions {
				condition = "true";
				displayName = "Hubwagen";
				distance = 2;
				position = "[-0.25,0,0]";
				class nehmen {
					displayName = "Nehmen";
					condition = "([_player, _target] call fjb_323_hubwagen_fnc_kann_interagieren) && (isNull (_target getVariable ['ace_common_owner', objNull])) && (stance _player == 'STAND')";
					statement = "[_player, _target] call fjb_323_hubwagen_fnc_nehmen";
					icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\use_CA.paa";
					distance = 1.5;
				};
				class abstellen {
					displayName = "Loslassen";
					condition = "([_player, _target] call fjb_323_hubwagen_fnc_kann_interagieren) && ((_target getVariable ['ace_common_owner', objNull]) == _player) && (stance _player == 'STAND')";
					statement = "[_player, _target] call fjb_323_hubwagen_fnc_loslassen";
					icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\use_CA.paa";
					distance = 1.5;
				};
				class anheben {
					displayName = "Anheben";
					condition = "([_player, _target] call fjb_323_hubwagen_fnc_kann_interagieren) && ((_target getVariable ['ace_common_owner', objNull]) == _player) && (stance _player == 'STAND') && !(_target getVariable ['angehoben', false])";
					statement = "[_player, _target] call fjb_323_hubwagen_fnc_anheben";
					icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\upload_CA.paa";
					distance = 1.5;
				};
				class absenken {
					displayName = "Absenken";
					condition = "([_player, _target] call fjb_323_hubwagen_fnc_kann_interagieren) && ((_target getVariable ['ace_common_owner', objNull]) == _player) && (stance _player == 'STAND') && (_target getVariable ['angehoben', false])";
					statement = "[_player, _target] call fjb_323_hubwagen_fnc_absenken";
					icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\download_CA.paa";
					distance = 1.5;
				};
				class verladen {
					displayName = "Fracht verladen";
					condition = "((nearestObjects [getPos _target, ['Car','Tank','Air'], 5, true]) findIf {((_x canVehicleCargo ((attachedObjects _target) select 0)) select 0)} >= 0)";
					icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\upload_CA.paa";
					statement = "[_player, ((attachedObjects _target) select 0)] call fjb_323_hubwagen_fnc_verladen;";
					distance = 1.5;
				};
				class Logistik {
					displayName = "Logistik";
	        distance = 1.5;
	        position = "[0,0,0]";
	        condition = "!(_target getVariable ['angehoben', false])";
					icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\use_CA.paa";
					class einladen {
						displayName = "Objekt verladen";
						condition = "((nearestObjects [getPos _target, ['Car','Tank','Air'], 5, true]) findIf {((_x canVehicleCargo _target) select 0)} >= 0)";
						icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\upload_CA.paa";
						statement = "[_player, _target] call fjb_323_hubwagen_fnc_verladen;";
					};
					class ausladen {
						displayName = "Objekt ausladen";
						condition = "!(isNull isVehicleCargo _target)";
						icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\download_CA.paa";
						statement = "objNull setVehicleCargo _target;";
					};
				};
			};
		};
	};

};
