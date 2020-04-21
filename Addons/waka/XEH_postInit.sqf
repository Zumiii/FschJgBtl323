#include "script_component.hpp"

if isServer then {

};

if (hasInterface) then {

};

// ACRE Radios
if (!isNull (configFile >> "CfgPatches" >> "acre_main")) then {

    ["323_zgfr", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addItemToVest "ACRE_SEM52SL";
    }] call CBA_fnc_addClassEventHandler;

    ["323_zgfr_stelv", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addItemToVest "ACRE_SEM52SL";
    }] call CBA_fnc_addClassEventHandler;

    ["323_grpfr", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addItemToVest "ACRE_SEM52SL";
    }] call CBA_fnc_addClassEventHandler;

    ["323_trpfr", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addItemToVest "ACRE_SEM52SL";
    }] call CBA_fnc_addClassEventHandler;

    ["323_charlie", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addItemToVest "ACRE_SEM52SL";
    }] call CBA_fnc_addClassEventHandler;

    ["323_zgfr", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addBackpack "BWA3_TacticalPack_Fleck";
        _unit addItemToBackpack "ACRE_SEM70";
    }, true, []] call CBA_fnc_addClassEventHandler;

    ["323_zgfr_stelv", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addBackpack "BWA3_TacticalPack_Fleck";
        _unit addItemToBackpack "ACRE_SEM70";
    }, true, []] call CBA_fnc_addClassEventHandler;

    ["323_grpfr", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addBackpack "BWA3_TacticalPack_Fleck";
        _unit addItemToBackpack "ACRE_SEM70";
    }, true, []] call CBA_fnc_addClassEventHandler;
};
