class cfgMagazines {

    class acex_intelitems_notepad;
    class GVAR(Meldeblock): acex_intelitems_notepad {
      author = "Zumi";
      displayName = "Meldeblock";
      descriptionShort = "Fast schon wasserfest";
      picture = "\z\fjb_323\addons\meldeblock\ui\meldeblock.paa";
      class itemInfo {
        allowedSlots[] = {701,801,901};
        mass = 1;
        type = 620;
        scope = 0;
      };
      acex_intelitems_control = QGVAR(meldeblock);
    };

};
