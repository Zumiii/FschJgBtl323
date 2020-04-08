
params ["_player", "_power", "_frequency"];


zumi_jammers = zumi_jammers select {(_x getvariable ["zumi_jamming", false])};
if ((count zumi_jammers) < 1) exitWith {

  if !(isNull (_player getVariable ["zumi_currentJammer", objNull])) then {
    _player setVariable ["zumi_currentJammer", objNull];
  };
  _power;

};

_closestJammer = [zumi_jammers, {-(_player distance2d _x)}, objNull] call CBA_fnc_selectBest;
_player setVariable ["zumi_currentJammer", _closestJammer];

if (isnull _closestJammer) exitWith {
  _power;
};

private _currentJammer = _closestJammer;

private _radio = ([] call acre_api_fnc_getCurrentRadio);


if (_radio isequalTo "") exitWith {
  _power;
};

private _channel = [_radio] call acre_api_fnc_getRadioChannel;


if (_channel < 0) exitWith {
 _power;
};

private _Data = [_radio, "getCurrentChannelData"] call acre_sys_data_fnc_dataEvent;
private _frequenzTX = _Data getVariable ["frequencyTX", 0];
private _frequenzRX = _Data getVariable ["frequencyRX", 0];


_frequenz_jammed = false;
{
 if ((_frequenzTX >= (_x select 0)) && (_frequenzTX <= (_x select 1))) then {
   _frequenz_jammed = true;
 };
 if ((_frequenzRX >= (_x select 0)) && (_frequenzRX <= (_x select 1))) then {
   _frequenz_jammed = true;
 };
} count zumi_frequenzen;


if !(_frequenz_jammed) exitWith {
 _power;
};

private _distance2d = _player distance2D _currentJammer;

_power = linearConversion [50, 100, _distance2d, 0.01, 1, true];

_power;
