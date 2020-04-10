
class RscFrame;
class RscPicture;
class IGUIBack;
class RscButton;
class RscListbox;
class zumi_checkbox {
	type = 7;
	x = 0.604062 * safezoneW + safezoneX;
	y = 0.334 * safezoneH + safezoneY;
	w = 0.05 * safezoneW;
	h = 0.319 * safezoneH;
	sizeEx = 0.015 * safezoneH;
	font = "RobotoCondensed";
	style = 2;
	colorSelectedBg[] = {0, 0, 0, 0};
	colorText[] = {0.75, 0, 1};
	colorTextSelect[] = {0, 0.75, 0, 1};
	colorBackground[] = {1, 1, 1, 1};
	columns = 2;
	rows = 6;
};

class zumi_slider {
  idc = -1;
  type = CT_SLIDER;
  style = SL_HORZ;
  x = 0.4;
  y = 0.2;
  w = 0.3;
  h = 0.025;
  color[] = { 1, 1, 1, 1 };
  coloractive[] = { 1, 0, 0, 0.5 };
  colorBackground[] = {1, 1, 1, 1};
  onSliderPosChanged = "hint format[""%1"",_this];";
  sliderPosition = 0;
	sliderRange[] = {0,120};
	sliderStep = 1;
	vspacing = 120;
};
class scheibensteuerung {
	idd=1508;
	movingenable=false;
	onload = "[] spawn fjb_323_stosa_fnc_klappziele_anzeigen";
	class controls {
		class scheiben_hintergrund: IGUIBack {
			idc = 2337;
			colorBackground[] = {0.267,0.4,0.267,1};
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.360937 * safezoneW;
			h = 0.319 * safezoneH;
		};
		class scheiben_frame: RscFrame {
			idc = 2337;
			text = "Scheibensteuerung";
			colorText[] = {1,1,1,1};
			sizeEx = 0.025 * safezoneH;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.360937 * safezoneW;
			h = 0.319 * safezoneH;
		};
		class scheiben_ziele: RscListbox	{
			idc = 2338;
			text = "Ziele";
			x = 0.298906 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;
			h = 0.275 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.75)";
			onLBDblClick = "[true] call fjb_323_stosa_fnc_klappziele_updaten";
			rowHeight = 0.1;
			period = 1;
			class ListScrollBar	{
				color[] = {1,1,1,0.6};
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
			};
		};
		class scheiben_setup: RscListbox	{
			idc = 2339;
			text = "Uebersicht";
			x = 0.381406 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.275 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.75)";
			onLBSelChanged = "[] call fjb_323_stosa_fnc_klappziele_updaten;";
			onLBDblClick = "[false,true] call fjb_323_stosa_fnc_klappziele_updaten";
			rowHeight = 0.1;
			period = 1;
			class ListScrollBar	{
				color[] = {1,1,1,0.6};
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
			};
		};
		class scheiben_gruppen: zumi_checkbox {
			idc = 2340;
			x = 0.556719 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.044 * safezoneH;
			colorBackground[] = {0, 0, 0, 1};
			colorText[] = {0.75, 0, 0, 1};
			colorTextSelect[] = {0, 0.75, 0, 1};
			columns = 4;
			onCheckBoxesSelChanged = "[] call fjb_323_stosa_fnc_klappziele_buttonrefresh;";
			rows = 3;
			strings[] = {"1","2","3","4","5","6","7","8","9","10","11","12"};
			checked_strings[] = {};
			tooltip = "Der Gruppe angewählte Ziele zuweisen";
		};
		class scheiben_regler: zumi_slider {
			idc = 2344;
			x = 0.556719 * safezoneW + safezoneX;
			y = 0.544 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.044 * safezoneH;
			coloractive[] = {0,0,0,1};
			color[] = {0,0,0,1};
      colorBackground[] = {0.267,0.4,0.267,1};
      colorText[] = {0.75, 0, 0, 1};
			colorTextSelect[] = {0, 0.75, 0, 1};
			onSliderPosChanged = "hint format[""%1"", _this select 1];";
			tooltip = "Ist dieser Wert grösser 0, klappt das Ziel nach n Sekunden automatisch ab";
		};
		class scheiben_alle_ab: RscButton {
			idc = 2345;
			text = "Alle ab";
			x = 0.556719 * safezoneW + safezoneX;
			y = 0.599 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.044 * safezoneH;
			action = "[1,[]] remoteExecCall ['fjb_323_stosa_fnc_klappziele_klappen', 2];";
			colorText[] = {1,1,1,1};
			colorDisabled[] = {1,0,0,0.25};
			colorBackground[] = {0,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0.5};
			colorBackgroundActive[] = {0,0,0,1};
			colorFocused[] = {0,0,0,1};
			font = "RobotoCondensed";
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.75)";
			offsetX = 0;
			offsetY = 0;
			offsetPressedX = 0;
			offsetPressedY = 0;
			style = 2;
			tooltip = "Alle Scheiben abklappen";
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,1};
		};
		class scheiben_auswahl_auf: RscButton {
			idc = 2346;
			text = "Ausgewaehlte auf";
			x = 0.556719 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.044 * safezoneH;
			action = "";
			colorText[] = {1,1,1,1};
			colorDisabled[] = {1,0,0,0.25};
			colorBackground[] = {0,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0.5};
			colorBackgroundActive[] = {0,0,0,1};
			colorFocused[] = {0,0,0,1};
			font = "RobotoCondensed";
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.75)";
			offsetX = 0;
			offsetY = 0;
			offsetPressedX = 0;
			offsetPressedY = 0;
			style = 2;
			tooltip = "Scheiben der markierten Gruppen hochklappen";
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,1};
		};
		class scheiben_alle_auf: RscButton {
			idc = 2347;
			text = "Alle auf";
			x = 0.556719 * safezoneW + safezoneX;
			y = 0.709 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.044 * safezoneH;
			action = "[0,[]] remoteExecCall ['fjb_323_stosa_fnc_klappziele_klappen', 2];";
			colorText[] = {1,1,1,1};
			colorDisabled[] = {1,0,0,0.25};
			colorBackground[] = {0,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0.5};
			colorBackgroundActive[] = {0,0,0,1};
			colorFocused[] = {0,0,0,1};
			font = "RobotoCondensed";
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.75)";
			offsetX = 0;
			offsetY = 0;
			offsetPressedX = 0;
			offsetPressedY = 0;
			style = 2;
			tooltip = "Alle Scheiben hochklappen";
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,1};
		};
	};
};
