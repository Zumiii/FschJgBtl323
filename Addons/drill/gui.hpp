
class acex_intelitems_RscBase;

class acex_intelitems_RscNotepad;
/*
class vorlage: acex_intelitems_RscNotepad {
  class controls;
};
*/

class ctrlStaticPictureKeepAspect;

class zumi_meldeblock_gui: acex_intelitems_RscNotepad {
  //idd = 137;
  class controls {
    class notizblock_pic: ctrlStaticPictureKeepAspect {
      idc = -1;
      x = pixelW;
      y = 0.7 * GUI_GRID_H;
      w = 18 * GUI_GRID_W - 2 * pixelW;
      h = 17.3 * GUI_GRID_H - pixelH;
      text = "zumis_zusatz\Addons\data\meldeblock.paa";
    };
  };
};
