class cfgWeapons {
  class V_PlateCarrier1_rgr_noflag_F;
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
};
