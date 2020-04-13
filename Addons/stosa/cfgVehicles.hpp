
class CBA_Extended_EventHandlers;

class cfgVehicles {

  class Man;
  class CAManBase: Man {
    class EventHandlers {
    	class GVAR(reload) {
    		reloaded = "params ['_player','_wep','_muzzle','_fullmag','_reloadedmag']; if (vehicle _player != _player) exitWith {}; if (_reloadedmag select 1 == 0) then {_player addMagazine  [(_reloadedmag select 0), 0]};";
    	};
    };

      class Ace_SelfActions {

        class ACE_Equipment  {

          class steuerung {
            condition = "([_player, 'fjb_323_stosa_steuerung'] call ace_common_fnc_hasItem)";
            displayName = "Mobile Scheibensteuerung auspacken";
            icon = "\z\fjb_323\addons\stosa\ui\joystick.paa";
            statement = "[_player, 'fjb_323_equipment_fliegerzeichen_gelb'] call CBA_fnc_removeItem; _pos = _player getPos [1, getDir _player]; _steuerung = createVehicle ['fjb_323_stosa_steuerung', [_pos select 0, _pos select 1, 1], [], 0, 'CAN_COLLIDE']; _steuerung setDir getDir _player; _steuerung setVectorUp (surfacenormal (position _steuerung));";
          };

        };

      };
  };


  class Sign_F;
  class GVAR(T_Scheibe): Sign_F {
    author = "Zumi";
    ace_cargo_canLoad = 1;
    ace_cargo_size = 2;
    displayName = "T-Scheibe";
		editorCategory = "fschjgbtl323_fleck";
		editorSubCategory = "stosa";
		faction = "Bundeswehr";
		icon = "z\fjb_323\addons\standortverwaltung\data\banner.paa";
    zumi_hubwagen_carryPosition[] = {0,0,0};
    zumi_hubwagen_carryDirection = 90;
    class EventHandlers {
			class zumis_zusatz {
				init = "params ['_scheibe']; [_scheibe] call fjb_323_stosa_fnc_scheibe_init; private _tex_1 = createsimpleobject ['UserTexture1m_F', [0,0,0]]; _tex_1 setObjectTextureGlobal [0, 'z\fjb_323\addons\stosa\data\t_scheibe.paa'];	_tex_1 attachTo [_entity, [0.6,0.02,0.6],''];  private _tex_2 = createsimpleobject ['UserTexture1m_F', [0,0,0]]; _tex_2 setObjectTextureGlobal [0, 'z\fjb_323\addons\stosa\data\t_scheibe.paa'];	_tex_2 attachTo [_entity, [0.6,0.02,0.6],''];";
			};
		};
  };
  class TargetBootcampHuman_F;
  class GVAR(Stuermender_Schuetze): TargetBootcampHuman_F {
    author = "Zumi";
    ace_dragging_canDrag = 1;
    ace_dragging_canCarry = 1;
    ace_dragging_dragPosition[] = {0, 1, 0};
    ace_dragging_carryPosition[] = {0, 1, 0};
    ace_cargo_canLoad = 1;
    ace_cargo_size = 2;
    displayName = "Stürmender Schütze";
    editorCategory = "fschjgbtl323_fleck";
    editorSubCategory = "stosa";
    faction = "Bundeswehr";
    icon = "z\fjb_323\addons\standortverwaltung\data\banner.paa";
    nameSound = "obj_building";
    zumi_hubwagen_carryPosition[] = {0,0,0.25};
    zumi_hubwagen_carryDirection = 90;
    class EventHandlers {
      class CBA_Extended_EventHandlers: CBA_Extended_EventHandlers {};
			class GVAR(Handlers) {
				init = "params ['_scheibe']; _scheibe setObjectTextureGlobal [0, 'z\fjb_323\addons\stosa\data\stuermender_schuetze_v3.paa']; [_scheibe] call fjb_323_stosa_fnc_scheibe_init; [_scheibe] call fjb_323_stosa_fnc_klappziele_init;";
        hit = "params ['_unit', '_source', '_damage', '_instigator']; _hits = (_unit getVariable ['hits', 0]); _unit setVariable ['hits', _hits + 1]; if ((_unit getVariable ['hits', 0]) < (_unit getVariable ['hits_required', 1])) exitWith {}; _unit animateSource ['Terc', 1]; _unit setVariable ['runtergeklappt', 0, true]; _unit setVariable ['hits', 0];";
			};
		};
  };

  class Land_laptop_03_olive_F;


  class GVAR(Steuerung): Land_laptop_03_olive_F {
    author = "Zumi";
    displayName = "Scheibensteuerung";
    editorCategory = "fschjgbtl323_fleck";
    editorSubCategory = "stosa";
    faction = "Bundeswehr";
    icon = "z\fjb_323\addons\standortverwaltung\data\banner.paa";
    class ACE_Actions {
      class ACE_MainActions {
        condition = "true";
        displayName = "Interactions";
        distance = 2;
        class GVAR(open) {
          displayName = "Aufklappen";
          distance = 2;
          icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\upload_CA.paa";
          position = "[0,0,0]";
          showDisabled = 1;
          condition = "(_target animationSourcePhase 'open_source') > 0";
          statement = "_target animateSource ['open_source', 0]";
          exceptions[] = {"isNotSwimming"};
        };
        class GVAR(close) {
          displayName = "Zuklappen";
          distance = 2;
          icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\download_CA.paa";
          position = "[0,0,0]";
          showDisabled = 1;
          condition = "(_target animationSourcePhase 'open_source') <= 0";
          statement = "_target animateSource ['open_source', 1]";
          exceptions[] = {"isNotSwimming"};
        };
        class GVAR(Gui) {
          displayName = "Scheibensteuerung";
          distance = 2;
          icon = "\z\fjb_323\addons\stosa\ui\joystick.paa";
          position = "[0,0,0]";
          showDisabled = 1;
          condition = "(_target animationSourcePhase 'open_source') <= 0";
          statement = "createDialog 'Scheibensteuerung';";
          exceptions[] = {"isNotSwimming"};
        };
        class GVAR(pickup) {
          displayName = "Steuerung aufnehmen";
          distance = 2;
          position = "[0,0,0]";
          showDisabled = 1;
          condition = "(_target animationSourcePhase 'open_source') >= 1";
          statement = "[_player, 'PutDown'] call ace_common_fnc_doGesture; [_player, _target] call ace_common_fnc_claim; [{deleteVehicle (_this select 1); [(_this select 0), 'fjb_323_stosa_steuerung', true] call CBA_fnc_addItem;}, [_player, _target], 1] call CBA_fnc_waitAndExecute;";
          exceptions[] = {"isNotSwimming"};
        };
      };
    };
  };

};
