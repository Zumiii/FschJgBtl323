
params ["_player", "_power", "_frequency"];

diag_log format ["Script Params: Player: %1 Power: %2 Frequency: %3", _player, _power, _frequency];

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

diag_log format ["Current Jammer: %1", _currentJammer];


private _radio = ([] call acre_api_fnc_getCurrentRadio);

diag_log format ["Current Radio ID broadcasting: %1", _radio];

if (_radio isequalTo "") exitWith {
  _power;
};

private _channel = [_radio] call acre_api_fnc_getRadioChannel;

diag_log format ["Current Radio Channel: %1", _channel];

if (_channel < 0) exitWith {
 _power;
};

private _Data = [_radio, "getCurrentChannelData"] call acre_sys_data_fnc_dataEvent;
private _frequenzTX = _Data getVariable ["frequencyTX", 0];
private _frequenzRX = _Data getVariable ["frequencyRX", 0];

diag_log format ["txData: %1 Frequency TX: %2 rxData: %3 : %1 Frequency RX: %4", _Data, _frequenzTX, _frequenzRX];

_frequenz_jammed = false;
{
 if ((_frequenzTX >= (_x select 0)) && (_frequenzTX <= (_x select 1))) then {
   _frequenz_jammed = true;
 };
 if ((_frequenzRX >= (_x select 0)) && (_frequenzRX <= (_x select 1))) then {
   _frequenz_jammed = true;
 };
} count zumi_frequenzen;

diag_log format ["Frequency is jammed: %1", _frequenz_jammed];

if !(_frequenz_jammed) exitWith {
 _power;
};

private _distance2d = _player distance2D _currentJammer;
diag_log format ["Distance2d of Player to Jammer: %1", _distance2d];

_power = linearConversion [50, 100, _distance2d, 0.01, 1, true];
diag_log format ["Returned Power after jamming: %1", _power];

_power;
