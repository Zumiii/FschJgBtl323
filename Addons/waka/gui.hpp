
class RscFrame;
class IGUIBack;
class RscText;
class RscListbox;

//Schnelle Waffenkammer
class waka_dialog {
	idd=1130;
	movingenable=false;
	onload = "[] spawn fjb_323_waka_fnc_anzeigen;";
	class controls {
		class waka_mainframe: RscFrame {
			idc = 1131;
			text = "";
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.8225 * safezoneW;
			h = 0.55 * safezoneH;
		};
		class waka_hintergrund: IGUIBack {
			idc = 1132;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.8225 * safezoneW;
			h = 0.55 * safezoneH;
			colorBackground[] = {0.267,0.4,0.267,1};
		};
		class waka_titel: RscText {
			idc = 1133;
			text = "Waffenkammer / Armory";
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.215 * safezoneH + safezoneY;
			w = 0.392635 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {0,0,0,1};
			sizeEx = 0.025 * safezoneH;
		};
		class waka_kategorien_titel: RscText {
			idc = 1134;
			text = "Kategorien";
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.290 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.033 * safezoneH;
			sizeEx = 0.025 * safezoneH;
		};
		class waka_auswahl_titel: RscText {
			idc = 1135;
			text = "Auswahl";
			x = 0.416875 * safezoneW + safezoneX;
			y = 0.290 * safezoneH + safezoneY;
			w = 0.2803125 * safezoneW;
			h = 0.033 * safezoneH;
			sizeEx = 0.025 * safezoneH;
		};
		class waka_loadouts: RscListbox {
			idc = 1137;
			x = 0.416875 * safezoneW + safezoneX;
			y = 0.334 * safezoneH + safezoneY;
			w = 0.2803125 * safezoneW;
			h = 0.319 * safezoneH;
			sizeEx = 0.01875 * safezoneH;
			onLBSelChanged = "";
			onLBDblClick = "[] call fjb_323_waka_fnc_aufroedeln;";
			rowHeight = 0.1;
			period = 1;
			class ListScrollBar {
				color[] = {1,1,1,0.6};
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
			};
		};
		class waka_kategorien: RscListbox {
			idc = 1136;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.334 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.319 * safezoneH;
			sizeEx = 0.01875 * safezoneH;
			onLBSelChanged = "[] call fjb_323_waka_fnc_updaten;";
			rowHeight = 0.1;
			period = 1;
			class ListScrollBar	{
				color[] = {1,1,1,0.6};
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
			};
		};
	};
};
