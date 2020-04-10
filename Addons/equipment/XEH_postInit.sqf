#include "script_component.hpp"


if isServer then {



};

if (hasInterface) then {

	taschenkarten = [[9,7],[11,1]];

	leere_waffen = [];

	["vehicle",
		{
			if ((ACE_player getVariable ["waffe_angehangen", []]) isEqualTo []) exitWith {};
			_wep = ACE_player getVariable ["waffe_angehangen", []];
			if ((primaryWeapon ACE_player) != "") exitWith {};
			//Arma added der Waffe immer ein Magazin, also manuell entfernen...
			_loadout = getUnitLoadout ACE_player;
			_loadout set [0, _wep];
			_wep params ["_weapon", "_muzzle", "_flashlight", "_optics", "_primaryMuzzle","_secondaryMuzzle","_bipod"];
			ACE_player setUnitLoadout _loadout;
			ACE_player setVariable ["waffe_angehangen", []];
			{
			  detach _x;
			  deleteVehicle _x;
			} forEach ((attachedObjects ACE_player) select {(typeOf _x) == "zumi_weaponHolder"});
		}
	] call CBA_fnc_addPlayerEventHandler;

	["ace_arsenal_displayOpened", {
		if ((ACE_player getVariable ["waffe_angehangen", []]) isEqualTo []) exitWith {};
		_wep = ACE_player getVariable ["waffe_angehangen", []];
		if ((primaryWeapon ACE_player) != "") exitWith {};
		//Arma added der Waffe immer ein Magazin, also manuell entfernen...
		_loadout = getUnitLoadout ACE_player;
		_loadout set [0, _wep];
		_wep params ["_weapon", "_muzzle", "_flashlight", "_optics", "_primaryMuzzle","_secondaryMuzzle","_bipod"];
		ACE_player setUnitLoadout _loadout;
		ACE_player setVariable ["waffe_angehangen", []];
		{
			detach _x;
			deleteVehicle _x;
		} forEach ((attachedObjects ACE_player) select {(typeOf _x) == "zumi_weaponHolder"});
	}] call CBA_fnc_addEventHandler;


  ["323 Dreipunktgurt", "Waffe_2", ["Sekundärwaffe", "Wechsle auf Sekundärwaffe"], {
		if ((currentWeapon player) isEqualTo "") exitWith {};
		if !((currentWeapon player) isEqualTo (primaryWeapon player)) exitWith {};
		if (!((player getVariable ["waffe_angehangen", []]) isEqualTo []) || (player getVariable ["geruehrt", false]) || (player getVariable ["stillgestanden", false])) exitWith {};
		_wep = (getUnitLoadout player) select 0;
		_wep params ["_weapon", "_muzzle", "_flashlight", "_optics", "_primaryMuzzle","_secondaryMuzzle","_bipod"];
		player setVariable ["waffe_angehangen", _wep];
		player removeWeapon _weapon;
		[player] call ace_weaponselect_fnc_putWeaponAway;
		private _wh = createVehicle ["fjb_323_equipment_weaponholder", [0,0,0], [], 0, "CAN_COLLIDE"];
		_wh addWeaponWithAttachmentsCargoGlobal [_wep, 1];
		_wh attachTo [player, [0.07,0.18,-0.05], "pelvis"];
		[_wh, 285, 101, 3] remoteExecCall ['ace_common_fnc_setPitchBankYaw', _wh];
		if ((secondaryWeapon player) isEqualTo "") exitWith {};
		player action ["SwitchWeapon", player, player, 6];
	}, {
	""
	}, [0x03, [false, false, false], false, 0, true]] call CBA_fnc_addKeybind;

["323 Dreipunktgurt", "Waffe_1", ["Primärwaffe", "Wechsle auf Primärwaffe"], {
	if (((player getVariable ["waffe_angehangen", []]) isEqualTo []) || (player getVariable ["geruehrt", false]) || (player getVariable ["stillgestanden", false])) exitWith {};
	_wep = player getVariable ["waffe_angehangen", []];
	if ((primaryWeapon player) != "") exitWith {};
	//Arma added der Waffe immer ein Magazin, also manuell entfernen...
	_loadout = getUnitLoadout player;
	_loadout set [0, _wep];
	_wep params ["_weapon", "_muzzle", "_flashlight", "_optics", "_primaryMuzzle","_secondaryMuzzle","_bipod"];
	if ((currentWeapon player) isEqualTo (handgunWeapon player)) then {
		[player] call ace_weaponselect_fnc_putWeaponAway;
	};
	player setUnitLoadout _loadout;
	player setVariable ["waffe_angehangen", []];
	player action ["SwitchWeapon", player, player, 0];
	{
		detach _x;
		deleteVehicle _x;
	} forEach ((attachedObjects player) select {(typeOf _x) == "fjb_323_equipment_weaponholder"});
}, {
""
}, [0x02, [false, false, false], false, 0, true]] call CBA_fnc_addKeybind;


	["323 Dreipunktgurt", "Waffe_Umhaengen", ["Waffe Umhängen", "Waffe hängen lassen"], {
		if ((currentWeapon player) isEqualTo "") exitWith {};
		if (!((player getVariable ["waffe_angehangen", []]) isEqualTo []) || (player getVariable ["geruehrt", false]) || (player getVariable ["stillgestanden", false])) exitWith {};
		_wep = (getUnitLoadout player) select 0;
		_wep params ["_weapon", "_muzzle", "_flashlight", "_optics", "_primaryMuzzle","_secondaryMuzzle","_bipod"];
		player setVariable ["waffe_angehangen", _wep];
		player removeWeapon _weapon;
		[player] call ace_weaponselect_fnc_putWeaponAway;
		private _wh = createVehicle ["fjb_323_equipment_weaponholder", [0,0,0], [], 0, "CAN_COLLIDE"];
		_wh addWeaponWithAttachmentsCargoGlobal [_wep, 1];
		_wh attachTo [player, [0.07,0.18,-0.05], "pelvis"];
		[_wh, 285, 101, 3] remoteExecCall ['ace_common_fnc_setPitchBankYaw', _wh];
	}, {
	""
	}, [0x3E, [false, false, false], false, 0, true]] call CBA_fnc_addKeybind;

	["323 Dreipunktgurt", "Waffe_Greifen", ["Waffe Greifen", "Waffe greifen"], {
		if (((player getVariable ["waffe_angehangen", []]) isEqualTo []) || (player getVariable ["geruehrt", false]) || (player getVariable ["stillgestanden", false])) exitWith {};
		_wep = player getVariable ["waffe_angehangen", []];
		if ((primaryWeapon player) != "") exitWith {};
		//Arma added der Waffe immer ein Magazin, also manuell entfernen...
		_loadout = getUnitLoadout player;
		_loadout set [0, _wep];
		_wep params ["_weapon", "_muzzle", "_flashlight", "_optics", "_primaryMuzzle","_secondaryMuzzle","_bipod"];
		player setUnitLoadout _loadout;
		player setVariable ["waffe_angehangen", []];
		[player, "AmovPercMstpSlowWrflDnon", 1] call ace_common_fnc_doAnimation;
		{
		  detach _x;
		  deleteVehicle _x;
		} forEach ((attachedObjects player) select {(typeOf _x) == "fjb_323_equipment_weaponholder"});
	}, {
	""
	}, [0x3F, [false, false, false], false, 0, true]] call CBA_fnc_addKeybind;

};
