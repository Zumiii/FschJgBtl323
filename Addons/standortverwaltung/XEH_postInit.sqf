#include "script_component.hpp"


if isServer then {

  ["ACE_Rallypoint_West_Base", "InitPost", {
		params ["_entity"];
		_entity setFlagTexture "z\fjb_323\addons\standortverwaltung\data\banner.paa";
	}, true, [], true] call CBA_fnc_addClassEventHandler;

	["ACE_Rallypoint_West", "InitPost", {
		params ["_entity"];
		_entity setFlagTexture "z\fjb_323\addons\standortverwaltung\data\banner.paa";
	}, true, [], true] call CBA_fnc_addClassEventHandler;

};

if (hasInterface) then {



};
