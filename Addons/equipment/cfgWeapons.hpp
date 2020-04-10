class ACE_personalAidKit;

class cfgWeapons {
  class V_PlateCarrier1_rgr_noflag_F;
  class VestItem;
  class GVAR(Tragegurt): V_PlateCarrier1_rgr_noflag_F {
    author = "Zumi";
    scope = 2;
    displayName = "Plattenträger (Flecktarn)";
    descriptionShort = "Mittlerer ballistischer Schutz";
    picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_2_CA.paa";
    model = "\A3\Characters_F\BLUFOR\equip_b_vest02.p3d";
    hiddenSelectionsTextures[] = {"\z\fjb_323\addons\equipment\data\tragegurt_co.paa"};
    class ItemInfo: VestItem {
      hiddenSelections[] = {"camo"};
      containerClass = "Supply140";
      mass = 80;
      uniformModel = "\A3\Characters_F\BLUFOR\equip_b_vest02";
      class HitpointsProtectionInfo {
        class Neck {
          hitpointName	= "HitNeck";
          armor		= 6;
          passThrough	= 0.5;
        };
        class Arms {
          hitpointName	= "HitArms";
          armor		= 2;
          passThrough	= 0.5;
        };
        class Chest {
          hitpointName	= "HitChest";
          armor		= 22;
          passThrough	= 0.2;
        };
        class Diaphragm {
          hitpointName	= "HitDiaphragm";
          armor		= 20;
          passThrough	= 0.2;
        };
        class Abdomen {
          hitpointName	= "HitAbdomen";
          armor		= 20;
          passThrough	= 0.2;
        };
        class Body {
          hitpointName	= "HitBody";
          passThrough	= 0.2;
        };
      };
    };
  };

  class ACE_personalAidKit;
  class GVAR(taschenkarte_9): ACE_personalAidKit {
    author = "Zumi";
    displayName = "Taschenkarte Nummer 9";
    descriptionShort = "Fernmeldedienst aller Truppen";
    model = "\A3\weapons_F\ammo\mag_univ.p3d";
    picture = "\z\fjb_323\addons\equipment\ui\tk_nr9_1.paa";
    scope = 2;
    class itemInfo {
      allowedSlots[] = {701,801,901};
      mass = 1;
      type = 620;
      scope = 0;
    };
  };

  class GVAR(taschenkarte_11): ACE_personalAidKit {
    author = "Zumi";
    displayName = "Taschenkarte Nummer 11";
    descriptionShort = "9 - Liner";
    model = "\A3\weapons_F\ammo\mag_univ.p3d";
    picture = "\z\fjb_323\addons\equipment\ui\tk_nr11_1.paa";
    scope = 2;
    class itemInfo {
      allowedSlots[] = {701,801,901};
      mass = 1;
      type = 620;
      scope = 0;
    };
  };

  class GVAR(fliegerzeichen_gelb): ACE_personalAidKit {
    author = "Zumi";
    displayName = "Fliegerzeichen (Gelb)";
    descriptionShort = "Zur Signalisierung an die Kräfte zur Luft";
    model = "\A3\weapons_F\ammo\mag_univ.p3d";
    picture = "z\fjb_323\addons\equipment\ui\fliegerzeichen_gelb.paa";
    scope = 2;
    class itemInfo {
      allowedSlots[] = {701,801,901};
      mass = 4;
      type = 620;
      scope = 0;
    };
  };

  class GVAR(fliegerzeichen_rot): ACE_personalAidKit {
    author = "Zumi";
    displayName = "Fliegerzeichen (Rot)";
    descriptionShort = "Zur Signalisierung an die Kräfte zur Luft";
    model = "\A3\weapons_F\ammo\mag_univ.p3d";
    picture = "z\fjb_323\addons\equipment\ui\fliegerzeichen_rot.paa";
    scope = 2;
    class itemInfo {
      allowedSlots[] = {701,801,901};
      mass = 4;
      type = 620;
      scope = 0;
    };
  };


};
