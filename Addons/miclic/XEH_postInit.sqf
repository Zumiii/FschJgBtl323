#include "script_component.hpp"

zumi_jammers = [];

if (isServer) then {
	_MICLIC = ["MICLIC", "MICLIC zünden","\A3\ui_f\data\igui\cfg\simpleTasks\types\mine_ca.paa",{
		params ["_t","_p","_actionparams"];
		[_p, "PutDown"] call ace_common_fnc_doGesture;
		[_t, "murshun_cigs_lighter_01"] call CBA_fnc_globalSay3d;

		[
			  "Leite Zündung ein...",
			  3,
			  {
			    params ["_args","_success", "_time_elapsed", "_time_total"];
			    _args params ["_t", "_p"];
			    (_t distance2d _p < 2)
			  },
			  {
			    params ["_args","_success", "_time_elapsed", "_time_total"];
			    _args params ["_t", "_p"];
					[_t, "SN_Flare_Fired_4", 250] call CBA_fnc_globalSay3d;
					_t setVariable ["zumi_gezuendet", true, true];
					[
		        {
		          params ["_kiste"];
							_smoke = createVehicle ["SmokeShell", [0,0,0], [], 0 , "CAN_COLLIDE"];
		          [_kiste, _smoke, _p] remoteExeccall ["zumi_fnc_zuendung", _kiste];

		        },
		        [_t],
		        3
		      ] call CBA_fnc_waitAndExecute;
			  },
			  {
			    params ["_args","_success", "_time_elapsed", "_time_total"];
			    _args params ["_t", "_p"];
			    [objNull, _t] call ace_common_fnc_claim;
			  },
			  [_t, _p],
			  true,
			  true,
				true
			] call CBA_fnc_progressBar;
	},{!(_target getVariable ["zumi_gezuendet", false]) && ("murshun_cigs_lighter" in (magazines _player)) && ([_target] call zumi_fnc_kann_feuern)}, {}, [], [0,0,0], 2] call zumi_fnc_interaction_create;

	["zumi_interaction_add_to_class", ["Box_IED_Exp_F", _MICLIC, 0, ["ACE_MainActions"], true]] call CBA_fnc_globalEventJIP;


	["Box_IED_Exp_F", "InitPost", {
		params ["_entity"];
		clearBackpackCargoGlobal _entity;
		clearMagazineCargoGlobal _entity;
		clearWeaponCargoGlobal _entity;
		clearItemCargoGlobal _entity;
		["zumi_ace_drag", [_entity, false]] call CBA_fnc_globalEventJIP;
		["zumi_ace_carry", [_entity, false]] call CBA_fnc_globalEventJIP;
	}, true, [], true] call CBA_fnc_addClassEventHandler;

	["Redd_Tank_Fuchs_1A4_Pi_Tropentarn", "InitPost", {
		params ["_entity"];
		private _antenne_1 = "rhsusf_duke_d" createVehicle [0,0,0];
		_antenne_1 attachTo [_entity, [0.65,-1.25,0.1],""];
		private _antenne_2 = "rhsusf_duke_m1a2_d" createVehicle [0,0,0];
		_antenne_2 attachTo [_entity,	[-0.75,-0.45,0.11],""];
		private _antenne_3 = "rhsusf_duke_d" createVehicle [0,0,0];
		_antenne_3 attachTo [_entity, [0.75,0,0.1],""];
		private _antenne_4 = "rhsusf_duke_m1a2_d" createVehicle [0,0,0];
		_antenne_4 attachTo [_entity,	[-0.85,-2.2,0.1],""];
	}, true, [], true] call CBA_fnc_addClassEventHandler;

	["Redd_Tank_Fuchs_1A4_Pi_Tropentarn", "Killed", {
		params ["_entity", "_killer", "_instigator", "_useEffects"];
		{_x setDamage 1;} forEach (attachedObjects _entity);
	}, true, [], true] call CBA_fnc_addClassEventHandler;

	["Redd_Tank_Fuchs_1A4_Pi_Tropentarn", "deleted", {
		params ["_entity"];
		{deleteVehicle _x;} forEach (attachedObjects _entity);
	}, true, [], true] call CBA_fnc_addClassEventHandler;

	["rhsusf_m113d_usarmy_unarmed", "InitPost", {
		params ["_entity"];
		private _kiste = "Box_IED_Exp_F" createVehicle [0,0,0];
		_kiste attachTo [_entity,	[1.2,0.5,-0.6],""];
		_entity setVariable ["zumi_miclic", _kiste, true];
	}, true, [], true] call CBA_fnc_addClassEventHandler;

	["rhsusf_m113d_usarmy_unarmed", "Killed", {
		params ["_entity", "_killer", "_instigator", "_useEffects"];
		{_x setDamage 1;} forEach (attachedObjects _entity);
	}, true, [], true] call CBA_fnc_addClassEventHandler;

	["rhsusf_m113d_usarmy_unarmed", "deleted", {
		params ["_entity"];
		{deleteVehicle _x;} forEach (attachedObjects _entity);
	}, true, [], true] call CBA_fnc_addClassEventHandler;

};
