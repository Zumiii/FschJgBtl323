class UniformSlotInfo;

class cfgVehicles {
  class B_Soldier_base_F;


  class 323_schuetze_base: B_Soldier_base_F {
    faction = "323_faction_stan";
    genericNames = "323_namen";
    identityTypes[] = {"LanguageENG_F","Head_Euro","BWA3_G_Bundeswehr_default"};
    faceType = "Man_A3";
    author = "Zumi";
    scope = 0;
    displayName = "Schütze";
    editorPreview = "\bwa3_units\editorpreview\BWA3_Rifleman_Fleck.jpg";
    editorCategory = "fschjgbtl323_fleck";
  	editorSubCategory = "Ausbildung";
    icon = "z\fjb_323\addons\standortverwaltung\data\banner.paa";
    role = "Rifleman";
    uniformClass = "PBW_Uniform3K_fleck";
    backpack = "BWA3_AssaultPack_Fleck";
    weapons[] = {"hlc_rifle_G36V","Throw","Put"};
    magazines[] = {"hlc_30rnd_556x45_M_G36","BWA3_DM25","BWA3_DM25","BWA3_DM51A1","BWA3_DM51A1","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_50Rnd_762x51_M_MG3","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36"};
    items[] = {"ACE_quikclot","ACE_quikclot","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","rhs_googles_black","PBW_RevisionF_klar","ACE_epinephrine","ACE_morphine","ACE_salineIV_500","ACE_splint","ACE_MapTools","BWA3_Beret_Falli","PBW_muetze1_fleck","ACE_quikclot","ACE_quikclot","ACE_epinephrine","ACE_morphine","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_EntrenchingTool","ACE_Sandbag_empty","ACE_Sandbag_empty"};
    linkedItems[] = {"BWA3_Vest_JPC_Leader_Fleck","PBW_Helm4_fleck_H","ItemMap","ItemCompass","ItemWatch","ItemRadioAcreFlagged"};
  };

  class 323_zgfr: 323_schuetze_base {
    displayName = "Zg-Fü";
    scope = 2;
    uniformClass = "PBW_Uniform3K_fleck";
    backpack = "BWA3_AssaultPack_Fleck";
    weapons[] = {"hlc_rifle_G36KV","BWA3_P2A1","ACE_Vector","Throw","Put"};
    magazines[] = {"hlc_30rnd_556x45_M_G36","BWA3_DM25","BWA3_DM25","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","BWA3_1Rnd_Flare_Illum","BWA3_1Rnd_Flare_Illum","BWA3_1Rnd_Flare_Illum","BWA3_1Rnd_Flare_Illum","BWA3_1Rnd_Flare_Illum","BWA3_1Rnd_Flare_Singlestar_Red","BWA3_1Rnd_Flare_Singlestar_Red","BWA3_1Rnd_Flare_Singlestar_Red","BWA3_1Rnd_Flare_Singlestar_Red","BWA3_1Rnd_Flare_Singlestar_Red","BWA3_1Rnd_Flare_Singlestar_Green","BWA3_1Rnd_Flare_Singlestar_Green","BWA3_1Rnd_Flare_Singlestar_Green","BWA3_1Rnd_Flare_Singlestar_Green","BWA3_1Rnd_Flare_Singlestar_Green","BWA3_DM51A1","BWA3_DM32_Purple","BWA3_DM32_Blue","BWA3_DM32_Purple","BWA3_DM32_Blue","BWA3_DM32_Red"};
    items[] = {"ACE_quikclot","ACE_quikclot","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_microDAGR","rhs_googles_black","PBW_RevisionF_klar","ACE_epinephrine","ACE_morphine","ACE_salineIV_500","ACE_splint","ACE_MapTools","ACE_Flashlight_KSF1","mts_whistle_FOX40","BWA3_Beret_Falli","PBW_muetze1_fleck","ACE_quikclot","ACE_quikclot","ACE_epinephrine","ACE_morphine","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_Canteen"};
    linkedItems[] = {"BWA3_Vest_JPC_Leader_Fleck","PBW_Helm4_fleck_H","ItemMap","ItemCompass","ItemWatch","ItemRadioAcreFlagged"};
  };

  class 323_zgfr_stelv: 323_schuetze_base {
    displayName = "Stlv. Zg-Fü";
    scope = 2;
    uniformClass = "PBW_Uniform3K_fleck";
    backpack = "BWA3_AssaultPack_Fleck";
    weapons[] = {"hlc_rifle_G36KV","BWA3_P8","ACE_Vector","Throw","Put"};
    magazines[] = {"hlc_30rnd_556x45_M_G36","BWA3_15Rnd_9x19_P8","BWA3_DM25","BWA3_DM25","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","BWA3_DM51A1","BWA3_DM51A1","BWA3_DM32_Purple","BWA3_DM32_Blue","BWA3_DM32_Red","BWA3_15Rnd_9x19_P8","BWA3_DM32_Purple","BWA3_DM32_Blue","BWA3_DM32_Red"};
    items[] = {"ACE_quikclot","ACE_quikclot","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_microDAGR","rhs_googles_black","PBW_RevisionF_klar","ACE_epinephrine","ACE_morphine","ACE_salineIV_500","ACE_splint","ACE_MapTools","ACE_Flashlight_KSF1","mts_whistle_FOX40","BWA3_Beret_Falli","PBW_muetze1_fleck","ACE_quikclot","ACE_quikclot","ACE_epinephrine","ACE_morphine","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_Canteen","ACE_SpraypaintBlack","mts_flagmarker_yellow","mts_flagmarker_red","mts_flagmarker_green","mts_flagmarker_blue"};
    linkedItems[] = {"BWA3_Vest_JPC_Leader_Fleck","PBW_Helm4_fleck_H","ItemMap","ItemCompass","ItemWatch","ItemRadioAcreFlagged"};
  };

  class 323_grpfr: 323_schuetze_base {
    displayName = "Grp-Fü";
    scope = 2;
    uniformClass = "PBW_Uniform3K_fleck";
    backpack = "BWA3_AssaultPack_Fleck";
    weapons[] = {"hlc_rifle_G36V","BWA3_P2A1","ACE_Vector","Throw","Put"};
    magazines[] = {"hlc_30rnd_556x45_M_G36","BWA3_DM25","BWA3_DM25","BWA3_1Rnd_Flare_Illum","BWA3_1Rnd_Flare_Illum","BWA3_1Rnd_Flare_Illum","BWA3_1Rnd_Flare_Illum","BWA3_1Rnd_Flare_Illum","BWA3_1Rnd_Flare_Singlestar_Red","BWA3_1Rnd_Flare_Singlestar_Red","BWA3_1Rnd_Flare_Singlestar_Red","BWA3_1Rnd_Flare_Singlestar_Green","BWA3_1Rnd_Flare_Singlestar_Green","BWA3_1Rnd_Flare_Singlestar_Green","BWA3_DM51A1","BWA3_DM51A1","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36"};
    items[] = {"ACE_quikclot","ACE_quikclot","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_microDAGR","rhs_googles_black","PBW_RevisionF_klar","ACE_epinephrine","ACE_morphine","ACE_salineIV_500","ACE_splint","ACE_MapTools","ACE_Flashlight_KSF1","mts_whistle_FOX40","BWA3_Beret_Falli","PBW_muetze1_fleck","ACE_quikclot","ACE_quikclot","ACE_epinephrine","ACE_morphine","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_Canteen","mts_flagmarker_red","mts_flagmarker_green","mts_flagmarker_blue"};
    linkedItems[] = {"BWA3_Vest_JPC_Leader_Fleck","PBW_Helm4_fleck_H","ItemMap","ItemCompass","ItemWatch","ItemRadioAcreFlagged"};
  };

  class 323_trpfr: 323_schuetze_base {
    displayName = "Trp-Fü";
    scope = 2;
    uniformClass = "PBW_Uniform3K_fleck";
    backpack = "";
    weapons[] = {"hlc_rifle_G36V","BWA3_P2A1","Binocular","Throw","Put"};
    magazines[] = {"hlc_30rnd_556x45_M_G36","BWA3_DM25","BWA3_DM25","BWA3_1Rnd_Flare_Illum","BWA3_1Rnd_Flare_Illum","BWA3_1Rnd_Flare_Illum","BWA3_1Rnd_Flare_Illum","BWA3_1Rnd_Flare_Illum","BWA3_1Rnd_Flare_Singlestar_Red","BWA3_1Rnd_Flare_Singlestar_Red","BWA3_1Rnd_Flare_Singlestar_Red","BWA3_1Rnd_Flare_Singlestar_Green","BWA3_1Rnd_Flare_Singlestar_Green","BWA3_1Rnd_Flare_Singlestar_Green","BWA3_DM51A1","BWA3_DM51A1","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36"};
    items[] = {"ACE_quikclot","ACE_quikclot","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_microDAGR","rhs_googles_black","PBW_RevisionF_klar","ACE_epinephrine","ACE_morphine","ACE_salineIV_500","ACE_splint","ACE_MapTools","ACE_Flashlight_KSF1","mts_whistle_FOX40","BWA3_Beret_Falli","PBW_muetze1_fleck","ACE_quikclot","ACE_quikclot","ACE_epinephrine","ACE_morphine","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_Canteen"};
    linkedItems[] = {"BWA3_Vest_JPC_Leader_Fleck","PBW_Helm4_fleck_H","ItemMap","ItemCompass","ItemWatch","ItemRadioAcreFlagged"};
  };

  class 323_schuetze: 323_schuetze_base {
    displayName = "Schütze";
    scope = 2;
    uniformClass = "PBW_Uniform3K_fleck";
    backpack = "BWA3_AssaultPack_Fleck";
    weapons[] = {"hlc_rifle_G36V","Throw","Put"};
    magazines[] = {"hlc_30rnd_556x45_M_G36","BWA3_DM25","BWA3_DM25","BWA3_DM51A1","BWA3_DM51A1","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_50Rnd_762x51_M_MG3","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36"};
    items[] = {"ACE_quikclot","ACE_quikclot","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","rhs_googles_black","PBW_RevisionF_klar","ACE_epinephrine","ACE_morphine","ACE_salineIV_500","ACE_splint","ACE_MapTools","BWA3_Beret_Falli","PBW_muetze1_fleck","ACE_quikclot","ACE_quikclot","ACE_epinephrine","ACE_morphine","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_EntrenchingTool","ACE_Sandbag_empty","ACE_Sandbag_empty"};
    linkedItems[] = {"BWA3_Vest_JPC_Leader_Fleck","PBW_Helm4_fleck_H","ItemMap","ItemCompass","ItemWatch","ItemRadioAcreFlagged"};
  };

  class 323_schuetze_pzf: 323_schuetze_base {
    displayName = "Schütze (PZF3)";
    scope = 2;
    uniformClass = "PBW_Uniform3K_fleck";
    backpack = "";
    weapons[] = {"hlc_rifle_G36V","BWA3_PzF3","Throw","Put"};
    magazines[] = {"hlc_30rnd_556x45_M_G36","BWA3_PzF3_Tandem","BWA3_DM25","BWA3_DM25","BWA3_DM51A1","BWA3_DM51A1","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36"};
    items[] = {"ACE_quikclot","ACE_quikclot","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","rhs_googles_black","PBW_RevisionF_klar","ACE_epinephrine","ACE_morphine","ACE_salineIV_500","ACE_splint","ACE_MapTools","BWA3_Beret_Falli","PBW_muetze1_fleck","ACE_quikclot","ACE_quikclot","ACE_epinephrine","ACE_morphine","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet"};
    linkedItems[] = {"BWA3_Vest_JPC_Leader_Fleck","PBW_Helm4_fleck_H","ItemMap","ItemCompass","ItemWatch","ItemRadioAcreFlagged"};
  };

  class 323_mg_eins: 323_schuetze_base {
    displayName = "MG-Schütze";
    scope = 2;
    uniformClass = "PBW_Uniform3K_fleck";
    backpack = "";
    weapons[] = {"hlc_lmg_MG3","BWA3_P8","Throw","Put"};
    magazines[] = {"hlc_50Rnd_762x51_M_MG3","BWA3_15Rnd_9x19_P8","BWA3_DM25","BWA3_15Rnd_9x19_P8","BWA3_DM25","hlc_50Rnd_762x51_M_MG3","hlc_250Rnd_762x51_M_MG3"};
    items[] = {"ACE_quikclot","ACE_quikclot","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_tourniquet","rhs_googles_black","PBW_RevisionF_klar","ACE_epinephrine","ACE_epinephrine","ACE_morphine","ACE_splint","BWA3_Beret_Falli","PBW_muetze1_fleck","ACE_EarPlugs","ACE_quikclot","ACE_quikclot","ACE_morphine","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet"};
    linkedItems[] = {"BWA3_Vest_JPC_Leader_Fleck","PBW_Helm4_fleck_H","ItemMap","ItemCompass","ItemWatch","ItemRadioAcreFlagged"};
  };

  class 323_mg_zwo: 323_schuetze_base {
    displayName = "MG-Hilf";
    scope = 2;
    uniformClass = "PBW_Uniform3K_fleck";
    backpack = "BWA3_Kitbag_Fleck";
    weapons[] = {"hlc_rifle_G36KV","Binocular","Throw","Put"};
    magazines[] = {"hlc_30rnd_556x45_M_G36","BWA3_DM25","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_250Rnd_762x51_M_MG3","hlc_250Rnd_762x51_M_MG3","ACE_SpareBarrel"};
    items[] = {"ACE_quikclot","ACE_quikclot","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","rhs_googles_black","ACE_epinephrine","ACE_morphine","ACE_splint","ACE_MapTools","ACE_Flashlight_KSF1","BWA3_Beret_Falli","PBW_muetze1_fleck","ACE_quikclot","ACE_quikclot","ACE_epinephrine","ACE_morphine","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_EntrenchingTool"};
    linkedItems[] = {"BWA3_Vest_JPC_Leader_Fleck","PBW_Helm4_fleck_H","ItemMap","ItemCompass","ItemWatch","ItemRadioAcreFlagged"};
  };

  class 323_grapi: 323_schuetze_base {
    displayName = "Schütze (Grapi)";
    scope = 2;
    uniformClass = "PBW_Uniform3K_fleck";
    backpack = "BWA3_AssaultPack_Fleck";
    weapons[] = {"hlc_rifle_G36VAG36","Throw","Put"};
    magazines[] = {"hlc_30rnd_556x45_M_G36","BWA3_DM25","BWA3_DM25","BWA3_DM51A1","BWA3_DM51A1","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","rhs_mag_M433_HEDP","rhs_mag_M433_HEDP","rhs_mag_M433_HEDP","rhs_mag_M433_HEDP","rhs_mag_M433_HEDP","rhs_mag_M433_HEDP","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","rhs_mag_M433_HEDP","rhs_mag_M433_HEDP","rhs_mag_M433_HEDP","rhs_mag_M433_HEDP","rhs_mag_M433_HEDP","rhs_mag_M433_HEDP"};
    items[] = {"ACE_quikclot","ACE_quikclot","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","rhs_googles_black","PBW_RevisionF_klar","ACE_epinephrine","ACE_morphine","ACE_salineIV_500","ACE_splint","ACE_MapTools","BWA3_Beret_Falli","PBW_muetze1_fleck","ACE_quikclot","ACE_quikclot","ACE_epinephrine","ACE_morphine","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet"};
    linkedItems[] = {"BWA3_Vest_JPC_Leader_Fleck","PBW_Helm4_fleck_H","ItemMap","ItemCompass","ItemWatch","ItemRadioAcreFlagged"};
  };

  class 323_bravo: 323_schuetze_base {
    displayName = "EEH (Bravo)";
    scope = 2;
    picture = "pictureHeal";
    role = "CombatLifeSaver";
    attendant = 1;
    uniformClass = "PBW_Uniform3K_fleck";
    backpack = "BWA3_Kitbag_Fleck_Medic";
    weapons[] = {"hlc_rifle_G36KV","Throw","Put"};
    magazines[] = {"hlc_30rnd_556x45_M_G36","BWA3_DM25","BWA3_DM25","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","BWA3_DM32_Purple","BWA3_DM51A1"};
    items[] = {"ACE_quikclot","ACE_quikclot","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_microDAGR","rhs_googles_black","PBW_RevisionF_klar","ACE_epinephrine","ACE_morphine","ACE_salineIV_500","ACE_splint","ACE_MapTools","ACE_Flashlight_KSF1","BWA3_Beret_Falli","PBW_muetze1_fleck","ACE_quikclot","ACE_quikclot","ACE_epinephrine","ACE_morphine","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_Canteen","mts_flagmarker_yellow","mts_flagmarker_yellow","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV","ACE_salineIV","ACE_salineIV","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_250","ACE_salineIV_250","ACE_salineIV_250","ACE_surgicalKit","ACE_tourniquet","ACE_tourniquet","ACE_tourniquet","ACE_tourniquet","ACE_splint","ACE_splint","ACE_splint","ACE_splint"};
    linkedItems[] = {"BWA3_Vest_JPC_Leader_Fleck","PBW_Helm4_fleck_H","ItemMap","ItemCompass","ItemWatch","ItemRadioAcreFlagged"};
  };

  class 323_charlie: 323_schuetze_base {
    displayName = "EEH (Charlie)";
    scope = 2;
    picture = "pictureHeal";
    role = "CombatLifeSaver";
    attendant = 2;
    uniformClass = "PBW_Uniform3K_fleck";
    backpack = "BWA3_Kitbag_Fleck_Medic";
    weapons[] = {"hlc_rifle_G36KV","Throw","Put"};
    magazines[] = {"hlc_30rnd_556x45_M_G36","BWA3_DM25","BWA3_DM25","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","hlc_30rnd_556x45_M_G36","BWA3_DM32_Purple","BWA3_DM51A1"};
    items[] = {"ACE_quikclot","ACE_quikclot","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_microDAGR","rhs_googles_black","PBW_RevisionF_klar","ACE_epinephrine","ACE_morphine","ACE_salineIV_500","ACE_splint","ACE_MapTools","ACE_Flashlight_KSF1","BWA3_Beret_Falli","PBW_muetze1_fleck","ACE_quikclot","ACE_quikclot","ACE_epinephrine","ACE_morphine","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_Canteen","mts_flagmarker_yellow","mts_flagmarker_yellow","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_quikclot","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_morphine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_epinephrine","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV_500","ACE_salineIV","ACE_salineIV","ACE_salineIV","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_250","ACE_salineIV_250","ACE_salineIV_250","ACE_surgicalKit","ACE_tourniquet","ACE_tourniquet","ACE_tourniquet","ACE_tourniquet","ACE_splint","ACE_splint","ACE_splint","ACE_splint"};
    linkedItems[] = {"BWA3_Vest_JPC_Leader_Fleck","PBW_Helm4_fleck_H","ItemMap","ItemCompass","ItemWatch","ItemRadioAcreFlagged"};
  };

  class 323_zf: 323_schuetze_base {
    displayName = "ZF-Schütze";
    scope = 2;
    uniformClass = "PBW_Uniform3K_fleck";
    backpack = "BWA3_AssaultPack_Fleck";
    weapons[] = {"hlc_rifle_g3sg1","Binocular","Throw","Put"};
    magazines[] = {"hlc_20rnd_762x51_Mk316_G3","BWA3_DM25","BWA3_DM25","BWA3_DM51A1","BWA3_DM51A1","hlc_20rnd_762x51_Mk316_G3","hlc_20rnd_762x51_Mk316_G3","hlc_20rnd_762x51_Mk316_G3","hlc_20rnd_762x51_Mk316_G3","hlc_20rnd_762x51_T_G3","hlc_20rnd_762x51_Mk316_G3","hlc_20rnd_762x51_Mk316_G3","hlc_20rnd_762x51_Mk316_G3","hlc_20rnd_762x51_Mk316_G3"};
    items[] = {"ACE_quikclot","ACE_quikclot","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","rhs_googles_black","PBW_RevisionF_klar","ACE_epinephrine","ACE_morphine","ACE_salineIV_500","ACE_splint","ACE_MapTools","BWA3_Beret_Falli","PBW_muetze1_fleck","ACE_Flashlight_KSF1","ACE_quikclot","ACE_quikclot","ACE_epinephrine","ACE_morphine","ACE_packingBandage","ACE_packingBandage","ACE_tourniquet","ACE_tourniquet","ACE_RangeCard"};
    linkedItems[] = {"BWA3_Vest_JPC_Leader_Fleck","PBW_Helm4_fleck_H","ItemMap","ItemCompass","ItemWatch","ItemRadioAcreFlagged"};
  };

};
