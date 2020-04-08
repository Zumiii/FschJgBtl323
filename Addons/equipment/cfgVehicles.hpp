
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
            displayName = "Taschenkarte Nr. 9 'Fernmeldedienst aller Truppen'";
            icon = "\z\fjb_323\addons\equipment\ui\tk_nr9_1.paa";
            statement = "createDialog 'taschenkarte_nummer_9';";
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
      picture = "\z\fjb_323\addons\equipment\data\tk_nr9_1.paa";
  		class TransportItems {
  			class fjb_323_equipment_taschenkarte_9 {
  				name = "Pfeife";
  				count = 1;
  			};
  		};
  	};

};
