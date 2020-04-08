params ["_displayorcontrol", "_scroll", "_id"];

_bild = _displayorcontrol displayCtrl 32392;

_flip = if (_scroll > 0) then {
  1
} else {
  -1
};

_taschenkarte_gewaehlt = (taschenkarten select _id);
_taschenkarte_gewaehlt params ["_seite", "_max"];

if ((_seite + _flip) > _max) then {
  (taschenkarten select _id) set [0, 1];
  _bild ctrlsetText format ["z\fjb_323\addons\equipment\data\tk_9_%1.jpg", 1];
} else {
  (taschenkarten select _id) set [0, (_seite + _flip) max 1];
  _bild ctrlsetText format ["z\fjb_323\addons\equipment\data\tk_9_%1.jpg", (_seite + _flip) max 1];
};

if (_seite + _flip < 1) exitWith {};
playSound "flip";
