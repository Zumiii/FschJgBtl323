////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Zumi, v1.063, #Neqeja)
////////////////////////////////////////////////////////
class RscFrame;
class RscPicture;
class IGUIBack;

class taschenkarte_nummer_9 {
  idd = 3239;
  access = 2;
  movingEnable = true;
  enableSimulation = true;
  onLoad = "";
  onUnload = "";
  onMouseZChanged = "params ['_displayorcontrol', '_scroll']; [_displayorcontrol, _scroll, 0] call fjb_323_equipment_fnc_flip;";
  class controls {
    class Hintergrund: IGUIBack {
    	idc = 32391;
    	x = 0.323716 * safezoneW + safezoneX;
    	y = 0.264902 * safezoneH + safezoneY;
    	w = 0.352567 * safezoneW;
    	h = 0.470196 * safezoneH;
    };
    class Bild: RscPicture {
      idc = 32392;
      text = "z\fjb_323\addons\equipment\data\tk_9_1.jpg";
      x = 0.323716 * safezoneW + safezoneX;
      y = 0.264902 * safezoneH + safezoneY;
      w = 0.352567 * safezoneW;
      h = 0.470196 * safezoneH;
      //onMouseZChanged = "params ['_displayorcontrol', '_scroll']; [_displayorcontrol, _scroll, 1] call fjb_323_equipment_fnc_flip;";
    };
  };
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
