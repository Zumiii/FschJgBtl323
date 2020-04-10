#include "script_component.hpp"




if isServer then {
  klappziele = [];
  publicVariable "klappziele";
};

if (hasInterface) then {

  stosa_bahn = [];
  bahn_nr = 0;

  ["zumi_stosa_bahn", {
  	  params [["_bahn", objNull], ["_owned", false]];
  		if (isNull _bahn) exitWith {
  			//Melde von allen Bahnen ab
  			{
  				[objNull, _x] call ace_common_fnc_claim;
  				_x removeAllEventHandlers "HitPart";
  				[objNull, (_x getVariable ["ctrl", _x])] call ace_common_fnc_claim;
  			} forEach stosa_bahn;
  			stosa_bahn = [];
  		};
  	  if (_owned) exitWith {

  			[player, _bahn] call ace_common_fnc_claim;
  			//Hit Eventhandler
  		  _bahn addEventHandler ["HitPart", {
  		    (_this select 0) params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo", "_vector", "_radius", "_surfaceType", "_isDirect"];
  		    if !(vehicle (_target getVariable ["ace_common_owner", objNull]) isEqualTo (vehicle _shooter)) exitWith {};
  		    _offset = _position vectorDiff (getPosASL _target);
  		    _offset = [_offset, (getDir _target)] call BIS_fnc_rotateVector2D;
  		    _offset Params ["_x","_y","_z"];
  				_typ = if (_isDirect) then {"Sign_Sphere10cm_F"} else {"Sign_sphere10cm_EP1"};
  		    private _sphere = createVehicle [_typ, [0,0,0], [], 0, "CAN_COLLIDE"];
  				["ace_common_hideObjectGlobal", [_sphere, true]] call CBA_fnc_serverEvent;
  		    _sphere allowDamage false;
  		    _sphere attachTo [_target, [_x,_y, _z - ((boundingcenter _target) select 2)], ""];
  		  }];
  			stosa_bahn pushBack _bahn;
  		};


  		//Melde von spezifischer Bahn ab
  		[objNull, _bahn] call ace_common_fnc_claim;
  		stosa_bahn deleteAt (stosa_bahn find _bahn);
  		_bahn removeAllEventHandlers "HitPart";

  	}] call CBA_fnc_addEventHandler;

};
