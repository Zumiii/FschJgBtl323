#include "script_component.hpp"

zumi_jammers = [];

if (isServer) then {

  zumi_frequenzen = [
			[30,90], //VHF SEM 52SL/70/80/90
			[2400,2402.55], //UHF 343
			[0,1000] //Frei programmierbare 148/152/117
		];
	 publicVariable "zumi_frequenzen";

   _jammer_an = ["Jammer_An", "Jammer einschalten",["\idi\acre\addons\sys_oe303\data\ui\icon_antenna_ca.paa","#41FA01"],{
 		params ["_t","_p","_actionparams"];
 		["Jammer eingeschaltet...", "\idi\acre\addons\sys_oe303\data\ui\icon_antenna_ca.paa", [0, 1, 0.5], ACE_player, 2] call ace_common_fnc_displayTextPicture;
 		(vehicle _t) setVariable ["zumi_charged", true, true];
 		(vehicle _t) setVariable ["zumi_jamming", true, true];
 		playSound3D ["A3\Missions_F_Bootcamp\data\sounds\vr_shutdown.wss", (vehicle _t), false, getPosASL (vehicle _t), 5, 15, 25];
 		_jip_str = ["zumi_jammer", [(vehicle _t), true]] call CBA_fnc_globalEventJIP;
 		[_jip_str, (vehicle _t)] call CBA_fnc_removeGlobalEventJIP;
 		[
 			{
 				params [["_hummel", objNull]];
 				if !(alive _hummel) exitWith {};
 				_hummel setVariable ["zumi_charged", false, true];
 			},
 			[(vehicle _t)],
 			3
 		] call CBA_fnc_waitAndExecute;

 		[
 	    {
 				params ["_args","_handle"];
     		_args params ["_hummel"];
 				if (!(isEngineOn _hummel)) exitWith {
 					if (!(_hummel getVariable ["zumi_jamming", false]) || !(alive _hummel)) exitWith {};
 					_hummel setVariable ["zumi_jamming", false, true];
 					_jip_str = ["zumi_jammer", [_hummel, false]] call CBA_fnc_globalEventJIP;
 					[_jip_str, _hummel] call CBA_fnc_removeGlobalEventJIP;
 					playSound3D ["A3\Missions_F_Bootcamp\data\sounds\vr_shutdown.wss", _hummel, false, getPosASL _hummel, 5, 0.5, 25];
 					[_handle] call CBA_fnc_removePerFrameHandler;
 				};
 	    },
 			1,
 		 	[(vehicle _t)]
 	  ] call CBA_fnc_addPerFrameHandler;

 	},{(([_player] call cba_fnc_vehicleRole) == "driver") && !(_target getVariable ["zumi_jamming", false]) && !(_target getVariable ["zumi_charged", false]) && (isEngineOn _target)}, {}, [], [0,0,0], 2] call fjb_323_interactions_fnc_interaction_create;

 	["zumi_interaction_add_to_class", ["Redd_Tank_Fuchs_1A4_Pi_Flecktarn", _jammer_an, 1, ["ACE_SelfActions"], true]] call CBA_fnc_globalEventJIP;

 	_jammer_aus = ["Jammer_Aus", "Jammer ausschalten",["\idi\acre\addons\sys_oe303\data\ui\icon_antenna_ca.paa","#FF2D00"],{
 		params ["_t","_p","_actionparams"];
 		["Jammer ausgeschaltet...", "\idi\acre\addons\sys_oe303\data\ui\icon_antenna_ca.paa", [1, 0, 0], ACE_player, 2] call ace_common_fnc_displayTextPicture;
 		playSound3D ["A3\Missions_F_Bootcamp\data\sounds\vr_shutdown.wss", (vehicle _t), false, getPosASL (vehicle _t), 5, 0.5, 25];
 		(vehicle _t) setVariable ["zumi_charged", true, true];
 		(vehicle _t) setVariable ["zumi_jamming", false, true];
 		_jip_str = ["zumi_jammer", [(vehicle _t), false]] call CBA_fnc_globalEventJIP;
 		[_jip_str, (vehicle _t)] call CBA_fnc_removeGlobalEventJIP;
 		[
 			{
 				params [["_hummel", objNull]];
 				if !(alive _hummel) exitWith {};
 				_hummel setVariable ["zumi_charged", false, true];
 			},
 			[(vehicle _t)],
 			3
 		] call CBA_fnc_waitAndExecute;

 	},{(([_player] call cba_fnc_vehicleRole) == "driver") && (_target getVariable ["zumi_jamming", false]) && !(_target getVariable ["zumi_charged", false]) && (isEngineOn _target)}, {}, [], [0,0,0], 2] call fjb_323_interactions_fnc_interaction_create;

 	["zumi_interaction_add_to_class", ["Redd_Tank_Fuchs_1A4_Pi_Flecktarn", _jammer_aus, 1, ["ACE_SelfActions"], true]] call CBA_fnc_globalEventJIP;

};

if (hasInterface) then {

  ["zumi_jammer", {
	  params [["_jammer", nil], ["_an", false]];
    if (_an) exitWith {
      zumi_jammers pushBackUnique _jammer;
    };
    _index = zumi_jammers find _jammer;
    if (_index >= 0) then {
      zumi_jammers deleteAt _index;
    };
	}] call CBA_fnc_addEventHandler;

  //Testreife
  //[FUNC(CustomSignalFunc)] call acre_api_fnc_setCustomSignalFunc;

};


[{
		params ["_unit", "_range", "_explosive", "_fuzeTime", "_triggerItem"];
		if !(local _unit) exitWith {};
		zumi_jammers = zumi_jammers select {(_x getvariable ["zumi_jamming", false])};
		if ((count zumi_jammers) < 1) then {
			if !(isNull (_unit getVariable ["zumi_currentJammer", objNull])) then {
				_unit setVariable ["zumi_currentJammer", objNull];
			};
		} else {
			private _closestJammer = [zumi_jammers, {-(_unit distance2d _x)}, objNull] call CBA_fnc_selectBest;
			private _currentJammer = _unit getVariable ["zumi_currentJammer", objNull];
			if (_currentJammer != _closestJammer) then {
				_unit setVariable ["zumi_currentJammer", _closestJammer];
			};
		};
		private _currentJammer = _unit getVariable ["zumi_currentJammer", objNull];
		if (isNull _currentJammer) exitWith {
			true;
		};
		if (((_unit distance2d _explosive) <= 100) && (_triggerItem IN ["ACE_Cellphone", "ACE_M26_Clacker", "ACE_Clacker", "ACE_DeadManSwitch"])) exitWith {
			false;
		};
		true;
}] call ace_explosives_fnc_addDetonateHandler;
