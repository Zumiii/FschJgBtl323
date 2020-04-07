#include "script_component.hpp"


if isServer then {

  _spectate = ["Zuschauen", "Zuschauen","\A3\ui_f\data\igui\cfg\simpleTasks\types\scout_ca.paa",{
		params ["_t","_p","_actionparams"];
		[true] call ace_spectator_fnc_setSpectator;
	},{true}, {}, [], [0,0,0], 2] call fjb_323_interactions_fnc_interaction_create;

	["zumi_interaction_add_to_class", ["Land_MapBoard_F", _spectate, 0, ["ACE_MainActions"], true]] call CBA_fnc_globalEventJIP;

};

if (hasInterface) then {

  ["zumi_interaction_add_to_class", {
		params ["_klasse", "_interaktion", "_typ", "_parentpath", ["_inheritance", false]];
		[_klasse, _typ , _parentpath, _interaktion, _inheritance] call ace_interact_menu_fnc_addActionToClass;
	}] call CBA_fnc_addEventHandler;

	["zumi_interaction_remove_from_class", {
		params ["_klasse","_pfad","_typ"];
		[_klasse, _typ, _pfad] call ace_interact_menu_fnc_removeActionFromClass;
	}] call CBA_fnc_addEventHandler;

	["zumi_interaction_add_to_object", {
		params ["_unit", "_interaktion", "_typ", "_parentpath"];
		[_unit, _typ , _parentpath, _interaktion] call ace_interact_menu_fnc_addActionToObject;
	}] call CBA_fnc_addEventHandler;

	["zumi_interaction_remove_from_object", {
		params ["_unit","_pfad","_typ"];
		[_unit, _typ, _pfad] call ace_interact_menu_fnc_removeActionFromObject;
	}] call CBA_fnc_addEventHandler;

	["zumi_ace_carry", {
		params ["_class","_bool"];
		[_class, _bool] call ace_dragging_fnc_setCarryable;
	}] call CBA_fnc_addEventHandler;

  ["zumi_ace_drag", {
		params ["_class","_bool"];
		[_class, _bool] call ace_dragging_fnc_setDraggable;
	}] call CBA_fnc_addEventHandler;

	["zumi_hinweis", {
		params [["_message", "testmessage"], ["_sound", false], "_dauer", ["_prio", 0]];
		[_message, _sound, _dauer, _prio] call ace_common_fnc_displayText;
	}] call CBA_fnc_addEventHandler;

	["zumi_cba_hinweis", {
		params ["_message"];
		_message call CBA_fnc_notify;
	}] call CBA_fnc_addEventHandler;

	["zumi_ace_cargo", {
		params ["_class","_size"];
		[_class, _size] call ace_cargo_fnc_setSize;
	}] call CBA_fnc_addEventHandler;

	["zumi_ace_size", {
		params ["_class","_size"];
		[_class, _size] call ace_cargo_fnc_setspace;
	}] call CBA_fnc_addEventHandler;

};
