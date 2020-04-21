/*

	GUI defines

*/


#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUTBUTTON   16
#define CT_HITZONES         17
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_LISTNBOX         102
#define CT_CHECKBOX         77
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0C
#define ST_TYPE           0xF0
#define ST_SINGLE         0x00
#define ST_MULTI          0x10
#define ST_TITLE_BAR      0x20
#define ST_PICTURE        0x30
#define ST_FRAME          0x40
#define ST_BACKGROUND     0x50
#define ST_GROUP_BOX      0x60
#define ST_GROUP_BOX2     0x70
#define ST_HUD_BACKGROUND 0x80
#define ST_TILE_PICTURE   0x90
#define ST_WITH_RECT      0xA0
#define ST_LINE           0xB0
#define ST_UPPERCASE      0xC0
#define ST_LOWERCASE      0xD0
#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800
#define ST_TITLE          ST_TITLE_BAR + ST_CENTER
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400
#define SL_TEXTURES       0x10
#define ST_VERTICAL       0x01
#define ST_HORIZONTAL     0
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20
#define TOSTRING(TEXT)	  #TEXT

#define GUI_FONT_NORMAL		PuristaMedium
#define GUI_FONT_BOLD		PuristaSemibold
#define GUI_FONT_MONO		EtelkaMonospaceProBold
#define GUI_FONT_SMALL		PuristaMedium
#define GUI_FONT_THIN		PuristaLight
#define GUI_BCG_RGB_R		"(profileNamespace getvariable ['GUI_BCG_RGB_R',0.6784])"
#define GUI_BCG_RGB_G		"(profileNamespace getvariable ['GUI_BCG_RGB_G',0.7490])"
#define GUI_BCG_RGB_B		"(profileNamespace getvariable ['GUI_BCG_RGB_B',0.5137])"
#define GUI_BCG_RGB_A		"(profileNamespace getvariable ['GUI_BCG_RGB_A',0.7000])"
#define GUI_BLU_RGB_R		"(profilenamespace getvariable ['Map_BLUFOR_R',0.0])"
#define GUI_BLU_RGB_G		"(profilenamespace getvariable ['Map_BLUFOR_G',0.8])"
#define GUI_BLU_RGB_B		"(profilenamespace getvariable ['Map_BLUFOR_B',1.0])"
#define GUI_BLU_RGB_A		"(profilenamespace getvariable ['Map_BLUFOR_A',0.8])"
#define GUI_OPF_RGB_R		"(profilenamespace getvariable ['Map_BLUFOR_R',0.0])"
#define GUI_OPF_RGB_G		"(profilenamespace getvariable ['Map_BLUFOR_G',1.0])"
#define GUI_OPF_RGB_B		"(profilenamespace getvariable ['Map_BLUFOR_B',1.0])"
#define GUI_OPF_RGB_A		"(profilenamespace getvariable ['Map_BLUFOR_A',0.8])"
#define GUI_IND_RGB_R		"(profilenamespace getvariable ['Map_BLUFOR_R',0.0])"
#define GUI_IND_RGB_G		"(profilenamespace getvariable ['Map_BLUFOR_G',1.0])"
#define GUI_IND_RGB_B		"(profilenamespace getvariable ['Map_BLUFOR_B',1.0])"
#define GUI_IND_RGB_A		"(profilenamespace getvariable ['Map_BLUFOR_A',0.8])"
#define BUTTON_SOUND_CLICK	{"\A3\ui_f\data\sound\onclick", 0.1, 1}
#define BUTTON_SOUND_ENTER	{"\A3\ui_f\data\sound\onover", 0.1, 1}
#define BUTTON_SOUND_ESCAP	{"\A3\ui_f\data\sound\onescape", 0.1, 1}
#define BUTTON_SOUND_BPUSH	{"\A3\ui_f\data\sound\new1", 0.1, 0}
#define SCROLL_ARROW_EMPTY	"\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"
#define SCROLL_ARROR_FULL	"\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"
#define SCROLL_BORDER		"\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"
#define SCROLL_THUMB		"\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"
#define COMBO_ARROW_EMPTY	"\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa"
#define COMBO_ARROW_FULL	"\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa"
#define ANIMTEXT_DEFAULT	"\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa"
#define ANIMTEXT_NORMAL		"\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa"
#define ANIMTEXT_DISABLED	"\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa"
#define ANIMTEXT_OVER		"\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa"
#define ANIMTEXT_FOCUS		"\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa"
#define ANIMTEXT_PRESS		"\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa"
#define ANIMTEXT_NOSHORT	"\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa"

class IGUIBack;
class zumi_IGUIBack: IGUIBack {
	type = 0;
	idc = 124;
	style = 128;
	text = "";
	colorText[] =
	{
		0,
		0,
		0,
		0
	};
	font = "RobotoCondensed";
	sizeEx = 0;
	shadow = 0;
	x = 0.1;
	y = 0.1;
	w = 0.1;
	h = 0.1;
	colorbackground[] =
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',1])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',1])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',1])"
	};
};

class RscText;
class zumi_RscText: RscText {
	deletable = 0;
	fade = 0;
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] =
	{
		0,
		0,
		0,
		0
	};
	colorText[] =
	{
		1,
		1,
		1,
		1
	};
	text = "";
	fixedWidth = 0;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 0;
	colorShadow[] =
	{
		0,
		0,
		0,
		0.5
	};
	font = "RobotoCondensed";
	SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	linespacing = 1;
	tooltipColorText[] =
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[] =
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[] =
	{
		0,
		0,
		0,
		0.65
	};
};

class RscListBox;
class zumi_rsc_listbox: RscListBox {
	deletable = 0;
	fade = 0;
	access = 0;
	type = 5;
	rowHeight = 0.1;
	colorText[] =
	{
		1,
		1,
		1,
		1
	};
	colorDisabled[] =
	{
		1,
		1,
		1,
		0.25
	};
	colorScrollbar[] =
	{
		1,
		0,
		0,
		0
	};
	colorSelect[] =
	{
		0,
		0,
		0,
		1
	};
	colorSelect2[] =
	{
		0,
		0,
		0,
		1
	};
	colorSelectBackground[] =
	{
		0.95,
		0.95,
		0.95,
		1
	};
	colorSelectBackground2[] =
	{
		1,
		1,
		1,
		0.5
	};
	colorBackground[] =
	{
		0,
		0,
		0,
		0.3
	};
	soundSelect[] =
	{
		"\A3\ui_f\data\sound\RscListbox\soundSelect",
		0.09,
		1
	};
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	colorPicture[] =
	{
		1,
		1,
		1,
		1
	};
	colorPictureSelected[] =
	{
		1,
		1,
		1,
		1
	};
	colorPictureDisabled[] =
	{
		1,
		1,
		1,
		0.25
	};
	colorPictureRight[] =
	{
		1,
		1,
		1,
		1
	};
	colorPictureRightSelected[] =
	{
		1,
		1,
		1,
		1
	};
	colorPictureRightDisabled[] =
	{
		1,
		1,
		1,
		0.25
	};
	colorTextRight[] =
	{
		1,
		1,
		1,
		1
	};
	colorSelectRight[] =
	{
		0,
		0,
		0,
		1
	};
	colorSelect2Right[] =
	{
		0,
		0,
		0,
		1
	};
	tooltipColorText[] =
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[] =
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[] =
	{
		0,
		0,
		0,
		0.65
	};

	class ListScrollBar
	{
		color[] = {1,1,1,0.6};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		thumb = "#(argb,8,8,3)color(1,1,1,1)";
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		border = "#(argb,8,8,3)color(1,1,1,1)";
		shadow = 0;
		autoScrollEnabled = 1;
	};
	x = 0;
	y = 0;
	w = 0.3;
	h = 0.3;
	style = 16;
	font = "RobotoCondensed";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 0;
	colorShadow[] =
	{
		0,
		0,
		0,
		0.5
	};
	period = 1.2;
	maxHistoryDelay = 1;
};

//Zumi Dialoge
class RscFrame;
class zumi_rsc_frame: RscFrame {
	type = 0;
	idc = -1;
	style = ST_FRAME;
	shadow = 2;
	text = "";
	colorBackground[] = {0,0,0,0.3};//1
	colorText[] = {1,1,1,1};
	colorDisabled[] = {1,1,1,0.25};
	colorBackgroundDisabled[] = {0.5,0.6,0.4,0.5};
	colorBackgroundActive[] = {0.5,0.6,0.4,1};
	colorFocused[] = {1,1,1,0.5};
	colorShadow[] = {0,0,0,0.3};
	colorBorder[] = {1,1,1,1};
	font = "PuristaSemiBold";
	sizeEx = 0.04;
};

//Schnelle Waffenkammer
class waka_dialog {
	idd=1130;
	movingenable=false;
	onload = "[] spawn fjb_323_waka_fnc_anzeigen;";
	class controls {
		class waka_mainframe: zumi_rsc_frame {
			idc = 1131;
			text = "";
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.41125 * safezoneW;
			h = 0.55 * safezoneH;
			sizeEx = 0.01875 * safezoneH;
		};
		class waka_hintergrund: zumi_IGUIBack {
			idc = 1132;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			//w = 0.8225 * safezoneW;
      w = 0.41125 * safezoneW;
			h = 0.55 * safezoneH;
      sizeEx = 0.01875 * safezoneH;
			colorBackground[] = {0.267,0.4,0.267,1};
		};
		class waka_titel: zumi_RscText {
			idc = 1133;
			text = "Waffenkammer";
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.215 * safezoneH + safezoneY;
			w = 0.392635 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {0,0,0,1};
			sizeEx = 0.025 * safezoneH;
		};
		class waka_kategorien_titel: zumi_RscText {
			idc = 1134;
			text = "Kategorien";
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.290 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.033 * safezoneH;
			sizeEx = 0.025 * safezoneH;
		};
		class waka_auswahl_titel: zumi_RscText {
			idc = 1135;
			text = "Auswahl";
			x = 0.416875 * safezoneW + safezoneX;
			y = 0.290 * safezoneH + safezoneY;
			w = 0.2803125 * safezoneW;
			h = 0.033 * safezoneH;
			sizeEx = 0.025 * safezoneH;
		};
		class waka_loadouts: zumi_rsc_listbox {
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
		class waka_kategorien: zumi_rsc_listbox {
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
