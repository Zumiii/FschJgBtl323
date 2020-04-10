#include "\z\fjb_323\addons\hubwagen\script_component.hpp"


if isServer then {



};

if (hasInterface) then {

	//Handle Bewusstlosigkeit
	["ace_medical_setUnconscious",
		{
			[ace_player] call FUNC(handle_Unconscious);
		}
	] call CBA_fnc_addEventHandler

	["vehicle",
		{
			[ace_player] call FUNC(handle_Vehicle);
		}
	] call CBA_fnc_addPlayerEventHandler;

};
