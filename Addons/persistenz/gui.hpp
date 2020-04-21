
class IGUIBack;
class RscFrame;
class RscButton_Keypad {
	idc = -1;
	access = 0;
	type = CT_BUTTON;
	text = "";
	colorText[] ={0,0,0,1};
	colorBackground[] = {0.75,0.75,0.75,1};
	colorBackgroundDisabled[] = {0.5,0.6,0.4,0.5};
	colorBackgroundActive[] = {0.5,0.6,0.4,1};
	colorDisabled[] =	{1,1,1,0.25};
	colorFocused[] = {1,1,1,0.5};
	colorShadow[] = {0,0,0,0.3};
	colorBorder[] = {0,0,0,1};
	soundEnter[] = {"",0.2,1};
  soundPush[] = {"",0.2,1};
  soundClick[] = {"",0.2,1};
  soundEscape[] = {"",0.2,1};
	style = ST_CENTER;
	shadow = 0;
	font = "PuristaSemiBold";
	sizeEx = 0.03;
	offsetX = 0;
	offsetY = 0;
	offsetPressedX = 0;
	offsetPressedY = 0;
	borderSize = 0;
};

//GUI JIP
class jip_dialog {
	idd=5500;
	movingenable=false;
	onload = "";
	onUnload = "";
	class controls {
		class jip_hintergrund: IGUIBack	{
			idc = 5501;
			x = 0.363515 * safezoneW + safezoneX;
			y = 0.338821 * safezoneH + safezoneY;
			w = 0.27324 * safezoneW;
			h = 0.188078 * safezoneH;
			colorBackground[] = {0.267,0.4,0.267,1};
		};
		class jip_rahmen: RscFrame {
			idc = 5502;
			text = "Wähle Spawnweise";
			sizeEx = 0.025 * safezoneH;
			x = 0.363515 * safezoneW + safezoneX;
			y = 0.338821 * safezoneH + safezoneY;
			w = 0.27324 * safezoneW;
			h = 0.188078 * safezoneH;
		};
		class jip_ja_1: RscButton_Keypad {
			idc = 5503;
			x = 0.372194 * safezoneW + safezoneX;
			y = 0.419126 * safezoneH + safezoneY;
			w = 0.0775638 * safezoneW;
			h = 0.0677085 * safezoneH;
			text = "Letzter Ort";
			action = "closeDialog 0; [0, 2] call fjb_323_persistenz_fnc_persistent_join;";
		};
		class jip_ja_2: RscButton_Keypad {
			idc = 5504;
			x = 0.460338 * safezoneW + safezoneX;
			y = 0.419126 * safezoneH + safezoneY;
			w = 0.0775638 * safezoneW;
			h = 0.0677085 * safezoneH;
			text = "Bleibe in Basis";
			action = "closeDialog 0; [0, 1] call fjb_323_persistenz_fnc_persistent_join;";
		};
		class jip_nein: RscButton_Keypad {
			idc = 5504;
			x = 0.548482 * safezoneW + safezoneX;
			y = 0.419126 * safezoneH + safezoneY;
			w = 0.0775638 * safezoneW;
			h = 0.0677085 * safezoneH;
			text = "Neueinstieg";
			action = "closeDialog 0; [] call fjb_323_persistenz_fnc_new_join;";
		};
	};
};
