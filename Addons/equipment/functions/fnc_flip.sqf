params ["_displayorcontrol", "_scroll", "_id", "_nr", "_bild"];

_ctrl = _displayorcontrol displayCtrl _bild;

_flip = if (_scroll > 0) then {
  1
} else {
  -1
};

_taschenkarte_gewaehlt = (taschenkarten select _id);
_taschenkarte_gewaehlt params ["_seite", "_max"];

if ((_seite + _flip) > _max) then {
  (taschenkarten select _id) set [0, 1];
  _ctrl ctrlsetText format ["z\fjb_323\addons\equipment\data\tk_%2_%1.jpg", 1, _nr];
} else {
  (taschenkarten select _id) set [0, (_seite + _flip) max 1];
  _ctrl ctrlsetText format ["z\fjb_323\addons\equipment\data\tk_%2_%1.jpg", (_seite + _flip) max 1, _nr];
};

if (_seite + _flip < 1) exitWith {};
playSound "flip";
