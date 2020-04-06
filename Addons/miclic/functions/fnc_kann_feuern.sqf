params ["_kiste"];

_cargo = itemCargo _kiste;

count ((itemCargo _kiste) select  {_x == "ACE_rope36"}) >= 3 && count ((magazineCargo _kiste) select  {_x == "APERSMine_Range_Mag"}) >= 10;
