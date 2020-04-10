class cfgWeapons {

  class ACE_personalAidKit;
  class GVAR(Steuerung): ACE_personalAidKit {
    author = "Zumi";
    displayName = "Mobile Scheibensteuerung";
    descriptionShort = "Hiermit können Scheiben ferngesteuert werden";
    model = "\a3\Props_F_Enoch\Military\Equipment\Laptop_03_F.p3d";
    picture = "\z\fjb_323\addons\stosa\ui\joystick.paa";
    scope = 2;
    class itemInfo {
      allowedSlots[] = {901};
      mass = 6;
      type = 620;
      scope = 0;
    };
  };

};
