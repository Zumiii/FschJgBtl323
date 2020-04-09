
class ctrlStatic;
class ctrlStaticMulti;
class ctrlEditMulti;
class ctrlButtonPicture;
class ctrlStaticPictureKeepAspect;
class ctrlControlsGroupNoScrollbars;


class acex_intelitems_RscNotepad;
class GVAR(meldeblock_base): acex_intelitems_RscNotepad {
  class controls;
};
class GVAR(meldeblock): GVAR(meldeblock_base) {
  idc = -1;
  x = 0;
  y = 0;
  w = POS_W(22);
  h = POS_H(25);
  class controls: controls {
    class Border: ctrlStatic {
        idc = IDC_BORDER;
        x = 0;
        y = 0;
        w = POS_W(22);
        h = POS_H(25);
        colorBackground[] = {0, 0, 0, 1};
      };
      class Background: ctrlStaticPictureKeepAspect {
            idc = IDC_BACKGROUND;
            x = pixelW;
            y = pixelH;
            w = POS_W(22) - 1 * pixelW;
            h = POS_H(25) - 1 * pixelH;
            colorBackground[] = {0.97, 0.91, 0.77, 1};
            text = "z\fjb_323\addons\meldeblock\data\meldeblock.jpg";
        };
        class Header: ctrlStatic {
            idc = IDC_HEADER;
            style = ST_MULTI + ST_NO_RECT;
            x = 0;
            y = 0;
            w = POS_W(21.3);
            h = POS_H(0.7);
            sizeEx = POS_H(0.65);
            text = "Meldeblock";
            colorBackground[] = {0.1, 0.1, 0.1, 1};
        };
        class Close: ctrlButtonPicture {
            idc = IDC_CLOSE;
            text = "\a3\3DEN\Data\Displays\Display3DEN\search_end_ca.paa";
            x = POS_W(21.3);
            y = 0;
            w = POS_W(0.7);
            h = POS_H(0.7);
            offsetPressedX = 0;
            offsetPressedY = 0;
            colorBackground[] = {0.1, 0.1, 0.1, 1};
        };
        class Content: ctrlEditMulti {
            idc = IDC_CONTENT;
            style = ST_MULTI + ST_NO_RECT;
            font = "EtelkaNarrowMediumPro";
            text = "            ";
            x = POS_W(3.25);
            y = POS_H(6);
            w = POS_W(16);
            h = POS_H(15) - pixelH;
            sizeEx = POS_H(0.85);
            shadow = 0;
            colorText[] = {0, 0.24, 0.61, 1};
            colorBackground[] = {0, 0, 0, 0};
            maxChars = 884;
            lineSpacing = 1;
        };
  };
};
