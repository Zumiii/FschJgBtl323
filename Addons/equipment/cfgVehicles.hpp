
class Man;
class CAManBase: Man {

  class EventHandlers {

		class GVAR(reload) {
			reloaded = "params ['_player','_wep','_muzzle','_fullmag','_reloadedmag']; if (vehicle _player != _player) exitWith {}; if (_reloadedmag select 1 == 0) then {_player addMagazine  [(_reloadedmag select 0), 0]};";
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
   /*
   class TransportItems {
     item_xx(ACRE_SEM70,1);
   };
   */
 };

 class WeaponHolder_Single_limited_weapon_F;
 class GVAR(weaponHolder): WeaponHolder_Single_limited_weapon_F {
   memoryPointSupply = "";
   supplyRadius = 0.1;
   getInRadius= 0.1;
   showWeaponCargo = true;
 };
