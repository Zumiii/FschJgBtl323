/*

  Prüft, ob der Spieler das Gerät bedienen kann

*/

if !hasInterface exitWith {};

params ["_p", "_t"];

if !([_p, _t, ["isNotSwimming"]] call ace_common_fnc_canInteractWith) exitWith {false};

alive _t && {!(animationState _p in ["", "unconscious"]) || !(_p getVariable ["ACE_isUnconscious", false]) || {!(_p getHitPointDamage "HitLegs") > 0.4}}
