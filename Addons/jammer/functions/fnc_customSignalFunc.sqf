
#include "\idi\acre\addons\sys_signal\script_component.hpp"


params ["_f", "_mW", ["_receiverClass", ""], ["_transmitterClass", ""]];

private _count = (missionNamespace getVariable [_transmitterClass + "_running_count", 0]) max 0;

if (_count == 0) then {
    private _rxAntennas = [_receiverClass] call EFUNC(sys_components,findAntenna);
    private _txAntennas = [_transmitterClass] call EFUNC(sys_components,findAntenna);
    _mWnew = [acre_player, _mW, _f] call FUNC(calculate_power);
    {
        private _txAntenna = _x;
        {
            private _rxAntenna = _x;
            private _model = GVAR(signalModel); // TODO: Change models on the fly if compatible (underwater, better frequency matching)

            // Make sure ITWOM is not used for the moment
            if (_model > SIGNAL_MODEL_ITWOM || {_model < SIGNAL_MODEL_CASUAL}) then {
                _model = SIGNAL_MODEL_LOS_MULTIPATH;  // Default to LOS Multipath if the model is out of range
                GVAR(signalModel) = _model;           // And make sure we do not use an invalid mode next time
            };

            _count = _count + 1;
            private _id = format ["%1_%2_%3_%4", _transmitterClass, (_txAntenna select 0), _receiverClass, (_rxAntenna select 0)];

            [
                "process_signal",
                [
                    _model,
                    _id,
                    (_txAntenna select 2),
                    (_txAntenna select 3),
                    (_txAntenna select 0),
                    (_rxAntenna select 2),
                    (_rxAntenna select 3),
                    (_rxAntenna select 0),
                    _f,
                    _mWnew,
                    GVAR(terrainScaling),
                    diag_tickTime,
                    ACRE_SIGNAL_DEBUGGING,
                    GVAR(omnidirectionalRadios)
                ],
                true,
                FUNC(handleSignalReturn),
                [_transmitterClass, _receiverClass]
            ] call EFUNC(sys_core,callExt);
        } forEach _rxAntennas;
    } forEach _txAntennas;
    missionNamespace setVariable [_transmitterClass + "_running_count", _count];
};


if (ACRE_SIGNAL_DEBUGGING > 0) then {
    private _signalTrace = missionNamespace getVariable [_transmitterClass + "_signal_trace", []];
    _signalTrace pushBack _maxSignal;
    missionNamespace setVariable [_transmitterClass + "_signal_trace", _signalTrace];
};
private _maxSignal = missionNamespace getVariable [_transmitterClass + "_best_signal", -992];
private _Px = missionNamespace getVariable [_transmitterClass + "_best_px", 0];

[_Px, _maxSignal];
