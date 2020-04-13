
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
  onMouseZChanged = "params ['_displayorcontrol', '_scroll']; [_displayorcontrol, _scroll, 0, 9, 32392] call fjb_323_equipment_fnc_flip;";
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
    };
  };
};

class taschenkarte_nummer_11 {
  idd = 32311;
  access = 2;
  movingEnable = true;
  enableSimulation = true;
  onLoad = "";
  onUnload = "";
  onMouseZChanged = "params ['_displayorcontrol', '_scroll']; [_displayorcontrol, _scroll, 1, 11, 323112] call fjb_323_equipment_fnc_flip;";
  class controls {
    class Hintergrund: IGUIBack {
    	idc = 323111;
      x = 0.39423 * safezoneW + safezoneX;
    	y = 0.264902 * safezoneH + safezoneY;
    	w = 0.207133 * safezoneW;
    	h = 0.470196 * safezoneH;
    };
    class Bild: RscPicture {
      idc = 323112;
      text = "z\fjb_323\addons\equipment\data\tk_11_1.jpg";
      x = 0.39423 * safezoneW + safezoneX;
    	y = 0.264902 * safezoneH + safezoneY;
    	w = 0.207133 * safezoneW;
    	h = 0.470196 * safezoneH;
    };
  };
};

class fauler_knecht {
  idd = 323323;
  access = 2;
  movingEnable = true;
  enableSimulation = true;
  onLoad = "";
  onUnload = "";
  onMouseZChanged = "params ['_displayorcontrol', '_scroll']; [_displayorcontrol, _scroll, 2, 323, 3233232] call fjb_323_equipment_fnc_flip;";
  class controls {
    class Hintergrund: IGUIBack {
    	idc = 3233231;
      x = 0.39423 * safezoneW + safezoneX;
    	y = 0.264902 * safezoneH + safezoneY;
    	w = 0.207133 * safezoneW;
    	h = 0.470196 * safezoneH;
    };
    class Bild: RscPicture {
      idc = 3233232;
      text = "z\fjb_323\addons\equipment\data\tk_323_1.jpg";
      x = 0.39423 * safezoneW + safezoneX;
    	y = 0.264902 * safezoneH + safezoneY;
    	w = 0.207133 * safezoneW;
    	h = 0.470196 * safezoneH;
    };
  };
};
