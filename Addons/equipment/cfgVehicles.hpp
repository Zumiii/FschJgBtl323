
class CfgVehicles {
  class Man;
  class CAManBase: Man {
    class EventHandlers {
    	class GVAR(reload) {
    		reloaded = "params ['_player','_wep','_muzzle','_fullmag','_reloadedmag']; if (vehicle _player != _player) exitWith {}; if (_reloadedmag select 1 == 0) then {_player addMagazine  [(_reloadedmag select 0), 0]};";
    	};
    };

      class Ace_SelfActions {

        class ACE_Equipment  {

          class taschenkarte_9 {
            condition = "([_player, 'fjb_323_equipment_taschenkarte_9'] call ace_common_fnc_hasItem)";
            displayName = "Nr. 9 'Fernmeldedienst aller Truppen'";
            icon = "\z\fjb_323\addons\equipment\ui\tk_nr9_1.paa";
            statement = "createDialog 'taschenkarte_nummer_9';";
          };

          class taschenkarte_11 {
            condition = "([_player, 'fjb_323_equipment_taschenkarte_11'] call ace_common_fnc_hasItem)";
            displayName = "Nr. 11 '9-Line Air MEDEVAC Request'";
            icon = "\z\fjb_323\addons\equipment\ui\tk_nr11_1.paa";
            statement = "createDialog 'taschenkarte_nummer_11';";
          };

          class fliegerzeichen_gelb {
            condition = "([_player, 'fjb_323_equipment_fliegerzeichen_gelb'] call ace_common_fnc_hasItem)";
            displayName = "Fliegerzeichen (gelb) auslegen";
            icon = "\z\fjb_323\addons\equipment\ui\fliegerzeichen_gelb.paa";
            statement = "[_player, 'PutDown'] call ace_common_fnc_doGesture; [_player, 'fjb_323_equipment_fliegerzeichen_gelb'] call CBA_fnc_removeItem; _pos = _player getPos [1, getDir _player]; _tarp = createVehicle ['fjb_323_equipment_fliegerzeichen_gelb', [_pos select 0, _pos select 1, 0.01], [], 0, 'CAN_COLLIDE']; _tarp setDir getDir _player; _tarp setVectorUp (surfacenormal (position _tarp));";
          };

          class fliegerzeichen_rot {
            condition = "([_player, 'fjb_323_equipment_fliegerzeichen_rot'] call ace_common_fnc_hasItem)";
            displayName = "Fliegerzeichen (rot) auslegen";
            icon = "\z\fjb_323\addons\equipment\ui\fliegerzeichen_rot.paa";
            statement = "[_player, 'PutDown'] call ace_common_fnc_doGesture; [_player, 'fjb_323_equipment_fliegerzeichen_rot'] call CBA_fnc_removeItem; _pos = _player getPos [1, getDir _player]; _tarp = createVehicle ['fjb_323_equipment_fliegerzeichen_rot', [_pos select 0, _pos select 1, 0.01], [], 0, 'CAN_COLLIDE']; _tarp setDir getDir _player; _tarp setVectorUp (surfacenormal (position _tarp));";
          };

        };

      };
  };

  class B_RadioBag_01_Black_F;
  class GVAR(funker_rucksack): B_RadioBag_01_Black_F {
   author = "Zumi";
   displayName = "Funkrucksack SEM 70";
   DLC = "Expansion";
   maximumLoad = 120;
   hiddenSelectionsTextures[] = {"z\fjb_323\addons\equipment\data\funkrucksack.paa"};
   scope = 2;
   class TransportItems {
     MACRO_ADDITEM(ACRE_SEM70,1);
   };
  };

  class WeaponHolder_Single_limited_weapon_F;
  class GVAR(weaponHolder): WeaponHolder_Single_limited_weapon_F {
   memoryPointSupply = "";
   supplyRadius = 0.1;
   getInRadius= 0.1;
   showWeaponCargo = true;
  };

  class Vest_Base_F;
  class GVAR(Tragegurt_Wepholder): Vest_Base_F {
  		scope = 0;
  		scopeCurator = 0;
      scopeArsenal = 0;
  		displayName = "Plattenträger (Flecktarn)";
  		author = "Zumi";
  		vehicleClass = "ItemsVests";
  		class TransportItems {
  			class GVAR(Tragegurt) {
  				name = "Plattenträger (Flecktarn)";
  				count = 1;
  			};
  		};
  	};

    class Misc_thing;
    class GVAR(taschenkarte_9): Misc_thing {
  		scope = 0;
  		scopeCurator = 0;
  		displayName = "Taschenkarte Nummer 9";
  		author = "Zumi";
      picture = "\z\fjb_323\addons\equipment\ui\tk_nr9_1.paa";
  		class TransportItems {
  			class fjb_323_equipment_taschenkarte_9 {
  				name = "Taschenkarte 9";
  				count = 1;
  			};
  		};
  	};

    class GVAR(taschenkarte_11): Misc_thing {
  		scope = 0;
  		scopeCurator = 0;
  		displayName = "Taschenkarte Nummer 11";
  		author = "Zumi";
      picture = "\z\fjb_323\addons\equipment\ui\tk_nr11_1.paa";
  		class TransportItems {
  			class fjb_323_equipment_taschenkarte_11 {
  				name = "Taschenkarte 11";
  				count = 1;
  			};
  		};
  	};

    class Tarp_01_Small_Yellow_F;
    class Tarp_01_Small_Red_F;
    class GVAR(fliegerzeichen_gelb_base): Tarp_01_Small_Yellow_F {
      scope = 0;
      scopeCurator = 0;
      class EventHandlers;
      class Ace_Actions;
    };
    class GVAR(fliegerzeichen_rot_base): Tarp_01_Small_Red_F {
      scope = 0;
      scopeCurator = 0;
      class EventHandlers;
      class Ace_Actions;
    };


    class GVAR(fliegerzeichen_gelb): GVAR(fliegerzeichen_gelb_base) {
      author = "Zumi";
      displayName = "Fliegerzeichen (Gelb)";
      editorCategory = "fschjgbtl323_fleck";
      editorSubCategory = "munition";
      icon = "z\fjb_323\addons\equipment\ui\fliegerzeichen_gelb.paa";
      scope = 2;
      scopeCurator = 2;
      ace_cargo_canLoad = 1;
      ace_cargo_size = 1;
      class EventHandlers: EventHandlers {
        init = "params ['_tarp']; [_tarp, 'tarp'] call CBA_fnc_globalSay3d; _cutter = createVehicle ['Land_ClutterCutter_medium_F', getPosATL _tarp, [], 0, 'CAN_COLLIDE']; [{deleteVehicle (_this select 0);}, [_cutter], 1] call CBA_fnc_waitAndExecute;";
      };
      class ACE_Actions: ACE_Actions {
        class pickup {
          displayName = "Fliegerzeichen aufnehmen";
          distance = 2;
          icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\armor_ca.paa";
          position = "[0,0,0]";
          showDisabled = 1;
          condition = "true";
          statement = "[_player, 'PutDown'] call ace_common_fnc_doGesture; [_player, _target] call ace_common_fnc_claim; [_target, 'tarp'] call CBA_fnc_globalSay3d; [{deleteVehicle (_this select 1); [(_this select 0), 'fjb_323_equipment_fliegerzeichen_gelb', true] call CBA_fnc_addItem;}, [_player, _target], 1] call CBA_fnc_waitAndExecute;";
          exceptions[] = {"isNotSwimming"};
        };
      };
    };
    class GVAR(fliegerzeichen_rot): GVAR(fliegerzeichen_rot_base) {
      author = "Zumi";
      displayName = "Fliegerzeichen (Rot)";
      editorCategory = "fschjgbtl323_fleck";
      editorSubCategory = "munition";
      icon = "z\fjb_323\addons\equipment\ui\fliegerzeichen_rot.paa";
      scope = 2;
      scopeCurator = 2;
      ace_cargo_canLoad = 1;
      ace_cargo_size = 1;
      class EventHandlers: EventHandlers {
        init = "params ['_tarp']; [_tarp, 'tarp'] call CBA_fnc_globalSay3d; _cutter = createVehicle ['Land_ClutterCutter_medium_F', getPosATL _tarp, [], 0, 'CAN_COLLIDE']; [{deleteVehicle (_this select 0);}, [_cutter], 1] call CBA_fnc_waitAndExecute;";
      };
      class ACE_Actions: ACE_Actions {
        class pickup {
          displayName = "Fliegerzeichen aufnehmen";
          distance = 2;
          icon = "\A3\ui_f\data\igui\cfg\simpleTasks\types\armor_ca.paa";
          position = "[0,0,0]";
          showDisabled = 1;
          condition = "true";
          statement = "[_player, 'PutDown'] call ace_common_fnc_doGesture; [_player, _target] call ace_common_fnc_claim; [_target, 'tarp'] call CBA_fnc_globalSay3d; [{deleteVehicle (_this select 1); [(_this select 0), 'fjb_323_equipment_fliegerzeichen_rot', true] call CBA_fnc_addItem;}, [_player, _target], 1] call CBA_fnc_waitAndExecute;";
          exceptions[] = {"isNotSwimming"};
        };
      };
    };


};
