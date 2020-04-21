#include "script_component.hpp"

if isServer then {

};

if (hasInterface) then {

};

//Waka
waffenkammer =  [
  //0 - Ami Loadouts
  [
    ["American Loadouts", "\A3\ui_f\data\map\markers\flags\usa_ca.paa"],
    //Loadouts der Rollen hier unten in selben Format einfügen
    [

      [
        ["Squad Leader", getText (configfile >> "CfgWeapons" >> "ACRE_PRC152" >> "picture")],
        [["rhs_weap_m4a1_carryhandle_grip3","","","rhsusf_acc_ACOG_3d",[],[],"rhsusf_acc_grip3"],[],["rhsusf_weap_m1911a1","","","",[],[],""],["rhs_uniform_cu_ucp",[["ACE_quikclot",6],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",6],["ACE_tourniquet",2],["ACE_EarPlugs",1],["ACE_CableTie",1],["ACE_Canteen",1],["ACE_MRE_BeefStew",1]]],["rhsusf_spcs_ucp_squadleader",[["rhsusf_ach_helmet_ESS_ucp",1],["SmokeShellBlue",1,1],["SmokeShellRed",1,1],["rhsusf_mag_7x45acp_MHP",2,6],["rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30],["HandGrenade",1,1],["SmokeShell",1,1],["ACRE_PRC152",1]]],[],"rhsusf_patrolcap_ucp","rhs_googles_black",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
      ],
			[
        ["Team Leader", getText (configfile >> "CfgWeapons" >> "ACRE_PRC152" >> "picture")],
        [["rhs_weap_m4a1_carryhandle_grip3","","","rhsusf_acc_ACOG_3d",[],[],"rhsusf_acc_grip3"],[],["rhsusf_weap_m1911a1","","","",[],[],""],["rhs_uniform_cu_ucp",[["ACE_quikclot",6],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",6],["ACE_tourniquet",2],["ACE_EarPlugs",1],["ACE_CableTie",1],["ACE_Canteen",1],["ACE_MRE_BeefStew",1]]],["rhsusf_spcs_ucp_teamleader",[["rhsusf_ach_helmet_ESS_ucp_alt",1],["SmokeShellBlue",1,1],["SmokeShellRed",1,1],["rhsusf_mag_7x45acp_MHP",2,6],["rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30],["HandGrenade",1,1],["SmokeShell",1,1],["ACRE_PRC152",1]]],[],"rhsusf_patrolcap_ucp","rhs_googles_black",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Rifleman", getText (configfile >> "CfgWeapons" >> "rhs_weap_m4a1_carryhandle_grip3" >> "picture")],
        [["rhs_weap_m4a1_carryhandle_grip3","","","rhsusf_acc_ACOG_3d",[],[],"rhsusf_acc_grip3"],[],[],["rhs_uniform_cu_ucp",[["ACE_quikclot",6],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",6],["ACE_tourniquet",2],["ACE_EarPlugs",1],["ACE_CableTie",3],["ACE_Canteen",1],["ACE_MRE_BeefStew",1]]],["rhsusf_spcs_ucp_rifleman",[["rhsusf_ach_helmet_ucp",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",7,30],["HandGrenade",2,1],["SmokeShell",2,1]]],[],"rhsusf_patrolcap_ucp","rhs_googles_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Grenadeer", getText (configfile >> "CfgWeapons" >> "rhs_weap_m4a1_carryhandle_m203" >> "picture")],
        [["rhs_weap_m4a1_carryhandle_m203","","","rhsusf_acc_ACOG_3d",[],[],""],[],[],["rhs_uniform_cu_ucp",[["ACE_quikclot",6],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",6],["ACE_tourniquet",2],["ACE_EarPlugs",1],["ACE_CableTie",3],["ACE_Canteen",1],["ACE_MRE_BeefStew",1]]],["rhsusf_spcs_ucp_grenadier",[["rhsusf_ach_helmet_ucp",1],["HandGrenade",2,1],["SmokeShell",2,1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",7,30]]],["rhsusf_assault_eagleaiii_ucp",[["rhs_mag_M441_HE",6,1],["rhs_mag_M433_HEDP",4,1],["1Rnd_SmokeRed_Grenade_shell",2,1]]],"rhsusf_patrolcap_ucp","rhs_googles_black",["ACE_VectorDay","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Pointman (M72A7)", getText (configfile >> "CfgWeapons" >> "rhs_weap_m72a7" >> "picture")],
        [["rhs_weap_m4a1_carryhandle","","","rhsusf_acc_compm4",[],[],"rhsusf_acc_grip3"],["rhs_weap_m72a7","","","",["rhs_m72a7_mag",1],[],""],[],["rhs_uniform_cu_ucp",[["ACE_quikclot",6],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",6],["ACE_tourniquet",2],["ACE_EarPlugs",1],["ACE_CableTie",3],["ACE_Canteen",1],["ACE_MRE_BeefStew",1]]],["rhsusf_spcs_ucp_rifleman",[["rhsusf_ach_helmet_ucp",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",7,30],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_M84",1,1]]],[],"rhsusf_patrolcap_ucp","rhs_googles_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Rifleman (AT4)", getText (configfile >> "CfgWeapons" >> "rhs_weap_M136" >> "picture")],
        [["rhs_weap_m4a1_carryhandle","","","rhsusf_acc_compm4",[],[],"rhsusf_acc_grip3"],["rhs_weap_M136","","","",["rhs_m136_mag",1],[],""],[],["rhs_uniform_cu_ucp",[["ACE_quikclot",6],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",6],["ACE_tourniquet",2],["ACE_EarPlugs",1],["ACE_CableTie",3],["ACE_Canteen",1],["ACE_MRE_BeefStew",1]]],["rhsusf_spcs_ucp_rifleman",[["rhsusf_ach_helmet_ucp",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",7,30],["HandGrenade",2,1],["SmokeShell",2,1]]],[],"rhsusf_patrolcap_ucp","rhs_googles_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Rifleman (SAW)", getText (configfile >> "CfgWeapons" >> "rhs_weap_m249_pip" >> "picture")],
        [["rhs_weap_m249_pip","","","rhsusf_acc_ELCAN",[],[],""],[],["rhsusf_weap_m9","","","",[],[],""],["rhs_uniform_cu_ucp",[["ACE_quikclot",6],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",6],["ACE_tourniquet",2],["ACE_EarPlugs",1],["ACE_CableTie",3],["ACE_Canteen",1],["ACE_MRE_BeefStew",1]]],["rhsusf_spcs_ucp_saw",[["rhsusf_ach_helmet_ucp",1],["HandGrenade",2,1],["SmokeShell",2,1],["rhsusf_200Rnd_556x45_M855_soft_pouch",1,200],["rhsusf_mag_15Rnd_9x19_FMJ",3,15]]],["rhsusf_assault_eagleaiii_ucp",[["ACE_EntrenchingTool",1],["rhsusf_200Rnd_556x45_M855_soft_pouch",3,200]]],"rhsusf_patrolcap_ucp","rhs_googles_black",["Binocular","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Rifleman (M27 IAR)", getText (configfile >> "CfgWeapons" >> "rhs_weap_m27iar" >> "picture")],
        [["rhs_weap_m27iar","","","rhsusf_acc_su230",[],[],"rhsusf_acc_grip1"],[],[],["rhs_uniform_cu_ucp",[["ACE_quikclot",6],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",6],["ACE_tourniquet",2],["ACE_EarPlugs",1],["ACE_CableTie",3],["ACE_Canteen",1],["ACE_MRE_BeefStew",1]]],["rhsusf_spcs_ucp_rifleman",[["rhsusf_ach_helmet_ucp",1],["HandGrenade",2,1],["SmokeShell",2,1],["rhs_mag_30Rnd_556x45_M855_PMAG",7,30]]],["rhsusf_assault_eagleaiii_ucp",[["ACE_EntrenchingTool",1],["rhs_mag_100Rnd_556x45_M855_cmag",4,100]]],"rhsusf_patrolcap_ucp","rhs_googles_black",["ACE_VectorDay","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
      ],
      [
        ["DMR", getText (configfile >> "CfgWeapons" >> "rhs_weap_sr25" >> "picture")],
        [["rhs_weap_sr25","","","rhsusf_acc_M8541",[],[],"rhsusf_acc_harris_bipod"],[],["rhsusf_weap_m9","","","",[],[],""],["rhs_uniform_cu_ucp",[["ACE_quikclot",6],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",6],["ACE_tourniquet",2],["ACE_EarPlugs",1],["ACE_CableTie",3],["ACE_Canteen",1],["ACE_MRE_BeefStew",1]]],["rhsusf_spcs_ucp_sniper",[["rhsusf_ach_helmet_ucp",1],["HandGrenade",2,1],["SmokeShell",2,1],["20Rnd_762x51_Mag",5,20],["rhsusf_mag_15Rnd_9x19_FMJ",2,15]]],[],"rhsusf_patrolcap_ucp","rhs_googles_black",["ACE_VectorDay","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
      ],
      [
        ["CFR Bravo", "\z\ace\addons\medical_gui\ui\cross_T_9.paa"],
        [["rhs_weap_m4a1_carryhandle_grip3","","","rhsusf_acc_eotech_552",[],[],"rhsusf_acc_grip3"],[],[],["rhs_uniform_cu_ucp",[["ACE_quikclot",6],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",6],["ACE_tourniquet",2],["ACE_EarPlugs",1],["ACE_CableTie",3],["ACE_Canteen",1],["ACE_MRE_BeefStew",1]]],["rhsusf_spcs_ucp_medic",[["rhsusf_ach_helmet_ucp",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",7,30],["HandGrenade",2,1],["SmokeShell",2,1]]],["rhsusf_assault_eagleaiii_ucp",[["ACE_surgicalKit",1],["ACE_quikclot",15],["ACE_elasticBandage",5],["ACE_adenosine",2],["ACE_epinephrine",10],["ACE_morphine",10],["ACE_packingBandage",20],["ACE_tourniquet",4],["ACE_salineIV",6],["adv_aceSplint_splint",6]]],"rhsusf_patrolcap_ucp","rhs_googles_black",["Binocular","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]],
        1,
        0,
        false
      ],
      [
        ["Radioman", getText (configfile >> "CfgWeapons" >> "ACRE_PRC117F" >> "picture")],
        [["rhs_weap_m4a1_carryhandle_grip3","","","rhsusf_acc_ACOG",[],[],"rhsusf_acc_grip3"],[],[],["rhs_uniform_cu_ucp",[["ACE_quikclot",6],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",6],["ACE_tourniquet",2],["ACE_EarPlugs",1],["ACE_CableTie",3],["ACE_Canteen",1],["ACE_MRE_BeefStew",1]]],["rhsusf_spcs_ucp_rifleman",[["rhsusf_ach_helmet_ucp",1],["ACRE_PRC152",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",7,30],["HandGrenade",1,1],["SmokeShell",2,1]]],["rhsusf_assault_eagleaiii_ucp",[["ACRE_PRC117F",1]]],"rhsusf_patrolcap_ucp","rhs_googles_black",["Binocular","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Pilot", getText (configfile >> "CfgWeapons" >> "H_PilotHelmetHeli_B" >> "picture")],
        [["rhsusf_weap_MP7A2","","","",["rhsusf_mag_40Rnd_46x30_FMJ",0],[],""],[],[],["U_B_HeliPilotCoveralls",[["ACE_quikclot",6],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",6],["ACE_tourniquet",2],["ACE_EarPlugs",1],["ACE_CableTie",3],["ACE_Canteen",1],["ACE_MRE_BeefStew",1],["rhsusf_mag_40Rnd_46x30_FMJ",1,40]]],["V_TacVest_blk",[["ACRE_PRC152",1],["rhsusf_ANPVS_15",1],["rhsusf_mag_40Rnd_46x30_FMJ",5,40],["SmokeShellBlue",1,1],["B_IR_Grenade",1,1]]],[],"H_PilotHelmetHeli_B","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]],
        0,
        1,
        false
      ]
    ]
  ],
	//1 Ger
	[
    ["Deutsche Loadouts", "\A3\ui_f\data\map\markers\flags\Germany_ca.paa"],
    //Loadouts der Rollen hier unten in selben Format einfügen
    [
      [
        ["OHK 1", getText (configfile >> "CfgWeapons" >> "BWA3_G36A2" >> "picture")],
        [["hlc_rifle_G36KV","","BWA3_acc_LLM01_irlaser","rhsusf_acc_eotech_xps3",[],[],""],[],[],["PBW_Uniform3K_fleck",[["ACE_quikclot",2],["ACE_packingBandage",4],["ACE_tourniquet",2],["ACE_microDAGR",1],["rhs_googles_black",1],["PBW_RevisionF_klar",1],["BWA3_Beret_Falli",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_salineIV_500",1],["ACE_splint",1],["PBW_muetze1_fleck",1],["ACE_MapTools",1],["ACE_Flashlight_KSF1",1]]],["BWA3_Vest_JPC_Radioman_Fleck",[["ACE_quikclot",2],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",2],["ACE_tourniquet",2],["ACE_Canteen",1],["BWA3_DM25",2,1],["hlc_30rnd_556x45_EPR_G36",7,30],["rhs_mag_m69",2,1]]],[],"PBW_Helm4_fleck_H","",[],["ItemMap","","","ItemCompass","ItemWatch",""]]
      ],
      [
        ["OHK 2", getText (configfile >> "CfgWeapons" >> "BWA3_G36A2" >> "picture")],
        [["hlc_rifle_G36KV","","BWA3_acc_LLM01_irlaser","rhsusf_acc_eotech_xps3",[],[],""],[],[],["PBW_Uniform3K_fleck",[["ACE_quikclot",2],["ACE_packingBandage",4],["ACE_tourniquet",2],["ACE_microDAGR",1],["rhs_googles_black",1],["PBW_RevisionF_klar",1],["BWA3_Beret_Falli",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_salineIV_500",1],["ACE_splint",1],["PBW_muetze1_fleck",1],["ACE_MapTools",1],["ACE_Flashlight_KSF1",1]]],["BWA3_Vest_JPC_Radioman_Fleck",[["ACE_quikclot",2],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",2],["ACE_tourniquet",2],["ACE_Canteen",1],["mts_flagmarker_blue",1],["mts_flagmarker_yellow",1],["ACRE_SEM52SL",1],["BWA3_DM25",2,1],["hlc_30rnd_556x45_EPR_G36",7,30],["rhs_mag_m69",2,1],["BWA3_DM32_Purple",1,1],["BWA3_DM32_Red",1,1]]],[],"PBW_Helm4_fleck_H","",[],["ItemMap","","","ItemCompass","ItemWatch",""]]
      ],
      [
        ["OHK 3", getText (configfile >> "CfgWeapons" >> "BWA3_G36A2" >> "picture")],
        [["hlc_rifle_G36KV","","BWA3_acc_LLM01_irlaser","rhsusf_acc_eotech_xps3",[],[],""],[],[],["PBW_Uniform3K_fleck",[["ACE_quikclot",2],["ACE_packingBandage",4],["ACE_tourniquet",2],["rhs_googles_black",1],["PBW_RevisionF_klar",1],["BWA3_Beret_Falli",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_splint",1],["PBW_muetze1_fleck",1],["ACE_Canteen",1],["ACE_Clacker",1]]],["BWA3_Vest_JPC_Radioman_Fleck",[["ACE_quikclot",2],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",2],["ACE_tourniquet",2],["BWA3_DM25",2,1],["hlc_30rnd_556x45_EPR_G36",7,30],["rhs_mag_m69",5,1]]],["BWA3_AssaultPack_Fleck",[["ACE_wirecutter",1],["SatchelCharge_Remote_Mag",1,1]]],"PBW_Helm4_fleck_H","",[],["ItemMap","","","ItemCompass","ItemWatch",""]]
      ],
      [
        ["OHK 4", getText (configfile >> "CfgWeapons" >> "BWA3_G36A2" >> "picture")],
        [["hlc_rifle_G36KV","","BWA3_acc_LLM01_irlaser","rhsusf_acc_eotech_xps3",[],[],""],[],[],["PBW_Uniform3K_fleck",[["ACE_quikclot",2],["ACE_packingBandage",4],["ACE_tourniquet",2],["rhs_googles_black",1],["PBW_RevisionF_klar",1],["BWA3_Beret_Falli",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_splint",1],["PBW_muetze1_fleck",1],["ACE_Canteen",1],["ACE_Clacker",1]]],["BWA3_Vest_JPC_Radioman_Fleck",[["ACE_quikclot",2],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",2],["ACE_tourniquet",2],["BWA3_DM25",2,1],["hlc_30rnd_556x45_EPR_G36",7,30],["rhs_mag_m69",2,1]]],["BWA3_AssaultPack_Fleck",[["mts_flagmarker_blue",1],["mts_flagmarker_green",1],["mts_flagmarker_red",1],["mts_flagmarker_yellow",1],["DemoCharge_Remote_Mag",2,1],["hlc_30rnd_556x45_EPR_G36",4,30],["BWA3_DM25",2,1],["rhs_mag_m69",3,1]]],"PBW_Helm4_fleck_H","",[],["ItemMap","","","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Schütze (G36A1)", getText (configfile >> "CfgWeapons" >> "BWA3_G36A2" >> "picture")],
        [["hlc_rifle_G36A1","","","",[],[],""],[],[],["PBW_Uniform3_fleck",[["BWA3_Beret_Falli",1],["ACE_Canteen",1],["ACE_MRE_BeefStew",1],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_packingBandage",6],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_quikclot",6],["ACE_CableTie",1],["BWA3_G_Combat_clear",1]]],["Zumi_Tragegurt_v3",[["ACE_EntrenchingTool",1],["BWA3_DM25",2,1],["BWA3_DM51A1",2,1],["hlc_30rnd_556x45_EPR_G36",7,30]]],[],"PBW_muetze2_fleck","",["Binocular","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Formal", getText (configfile >> "CfgWeapons" >> "PBW_Uniform1_fleck" >> "picture")],
        [[],[],[],["PBW_Uniform1_fleck",[["BWA3_Beret_Falli",1],["ACE_Canteen",1],["ACE_MRE_BeefStew",1],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_packingBandage",6],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_quikclot",6],["ACE_CableTie",1]]],[],[],"PBW_muetze1_fleck","",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Schütze (G36A1 mit AG40)", getText (configfile >> "CfgWeapons" >> "BWA3_G36A2_AG40" >> "picture")],
        [["hlc_rifle_G36A1AG36","","","",[],[],""],[],[],["PBW_Uniform3_fleck",[["BWA3_Beret_Falli",1],["ACE_Canteen",1],["ACE_MRE_BeefStew",1],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_packingBandage",6],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_quikclot",6],["ACE_CableTie",1],["BWA3_G_Combat_clear",1]]],["Zumi_Tragegurt_v3",[["ACE_EntrenchingTool",1],["BWA3_DM25",2,1],["BWA3_DM51A1",2,1],["hlc_30rnd_556x45_EPR_G36",7,30],["1Rnd_HE_Grenade_shell",6,1],["1Rnd_SmokeRed_Grenade_shell",2,1]]],[],"PBW_muetze2_fleck","",["BWA3_Vector","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Schütze (G36A1 mit Panzerfaust)", getText (configfile >> "CfgWeapons" >> "BWA3_PzF3" >> "picture")],
        [["hlc_rifle_G36A1","","","BWA3_optic_RSAS",[],[],""],["BWA3_PzF3","","","",["BWA3_PzF3_Tandem",1],[],""],[],["PBW_Uniform3_fleck",[["BWA3_Beret_Falli",1],["ACE_Canteen",1],["ACE_MRE_BeefStew",1],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_packingBandage",6],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_quikclot",6],["ACE_CableTie",1],["BWA3_G_Combat_clear",1]]],["Zumi_Tragegurt_v3",[["ACE_EntrenchingTool",1],["BWA3_DM25",2,1],["BWA3_DM51A1",2,1],["hlc_30rnd_556x45_EPR_G36",7,30]]],[],"PBW_muetze2_fleck","",["Binocular","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Schütze (G36A1 mit Bunkerfaust)", getText (configfile >> "CfgWeapons" >> "BWA3_Bunkerfaust" >> "picture")],
        [["hlc_rifle_G36A1","","","",[],[],""],["BWA3_Bunkerfaust","","","",["BWA3_PzF3_DM32",1],[],""],[],["PBW_Uniform3_fleck",[["BWA3_Beret_Falli",1],["ACE_Canteen",1],["ACE_MRE_BeefStew",1],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_packingBandage",6],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_quikclot",6],["ACE_CableTie",1],["BWA3_G_Combat_clear",1]]],["Zumi_Tragegurt_v3",[["ACE_EntrenchingTool",1],["BWA3_DM25",2,1],["BWA3_DM51A1",2,1],["hlc_30rnd_556x45_EPR_G36",7,30]]],[],"PBW_muetze2_fleck","",["Binocular","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Schütze (MG3)", getText (configfile >> "CfgWeapons" >> "hlc_lmg_MG3" >> "picture")],
        [["hlc_lmg_MG3","","","",[],[],""],[],[],["PBW_Uniform3_fleck",[["BWA3_Beret_Falli",1],["ACE_Canteen",1],["ACE_MRE_BeefStew",1],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_packingBandage",6],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_quikclot",6],["ACE_CableTie",1],["BWA3_G_Combat_clear",1]]],["Zumi_Tragegurt_v3",[["ACE_EntrenchingTool",1],["BWA3_DM25",2,1],["BWA3_DM51A1",2,1],["hlc_50Rnd_762x51_B_MG3",3,50]]],[],"PBW_muetze2_fleck","",["Binocular","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Schütze (MG4)", getText (configfile >> "CfgWeapons" >> "BWA3_MG4" >> "picture")],
        [["BWA3_MG4","","","",[],[],""],[],[],["PBW_Uniform3_fleck",[["BWA3_Beret_Falli",1],["ACE_Canteen",1],["ACE_MRE_BeefStew",1],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_packingBandage",6],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_quikclot",6],["ACE_CableTie",1],["BWA3_G_Combat_clear",1]]],["Zumi_Tragegurt_v3",[["ACE_EntrenchingTool",1],["BWA3_DM25",2,1],["BWA3_DM51A1",2,1],["BWA3_200Rnd_556x45",2,200]]],[],"PBW_muetze2_fleck","",["Binocular","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Schütze (G3 mit ZF)", getText (configfile >> "CfgWeapons" >> "hlc_rifle_g3a3" >> "picture")],
        [["hlc_rifle_g3a3","","","hlc_optic_zfsg1",[],[],""],[],[],["PBW_Uniform3_fleck",[["BWA3_Beret_Falli",1],["ACE_Canteen",1],["ACE_MRE_BeefStew",1],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_packingBandage",6],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_quikclot",6],["ACE_CableTie",1],["BWA3_G_Combat_clear",1],["ACE_RangeCard",1]]],["Zumi_Tragegurt_v3",[["ACE_EntrenchingTool",1],["BWA3_DM25",2,1],["BWA3_DM51A1",2,1],["hlc_20rnd_762x51_b_G3",6,20]]],[],"PBW_muetze2_fleck","",["BWA3_Vector","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Gruppenführer", getText (configfile >> "CfgWeapons" >> "ACRE_SEM52SL" >> "picture")],
        [["hlc_rifle_G36A1","","","",[],[],""],[],["BWA3_P8","","BWA3_acc_LLM01_irlaser","",[],[],""],["PBW_Uniform3_fleck",[["BWA3_Beret_Falli",1],["ACE_Canteen",1],["ACE_MRE_BeefStew",1],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_packingBandage",6],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_quikclot",6],["ACE_CableTie",1],["BWA3_G_Combat_clear",1]]],["Zumi_Tragegurt_v3",[["ACE_EntrenchingTool",1],["ACRE_SEM52SL",1],["BWA3_DM25",2,1],["BWA3_DM51A1",2,1],["hlc_30rnd_556x45_EPR_G36",7,30],["BWA3_DM32_Blue",1,1],["BWA3_DM32_Purple",1,1],["BWA3_DM32_Yellow",1,1],["BWA3_DM32_Red",1,1],["BWA3_15Rnd_9x19_P8",2,15]]],[],"PBW_muetze2_fleck","",["BWA3_Vector","","","",[],[],""],["ItemMap","BWA3_ItemNaviPad","","ItemCompass","ItemWatch",""]],
        0,
        0,
        false,
        true
      ],
      [
        ["Gruppenfunker", getText (configfile >> "CfgWeapons" >> "ACRE_PRC117F" >> "picture")],
        [["BWA3_G36A2","","","BWA3_optic_RSAS",[],[],""],[],[],["PBW_Uniform3_fleck",[["BWA3_Beret_Falli",1],["ACE_Canteen",1],["ACE_MRE_BeefStew",1],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_packingBandage",6],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_quikclot",6],["ACE_CableTie",1],["BWA3_G_Combat_clear",1]]],["Zumi_Tragegurt_v3",[["ACE_EntrenchingTool",1],["ACRE_SEM52SL",1],["BWA3_DM25",2,1],["BWA3_DM51A1",2,1],["hlc_30rnd_556x45_EPR_G36",7,30]]],["BWA3_FieldPack_fleck",[["ACRE_PRC117F",1]]],"PBW_muetze2_fleck","",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]]
      ],
      [
        ["Einsatzersthelfer Bravo", "\z\ace\addons\medical_gui\ui\cross_T_9.paa"],
        [["BWA3_G36A2","","","BWA3_optic_RSAS",[],[],""],[],[],["PBW_Uniform3_fleck",[["BWA3_Beret_Falli",1],["ACE_Canteen",1],["ACE_MRE_BeefStew",1],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_packingBandage",6],["ACE_epinephrine",1],["ACE_EarPlugs",1],["ACE_quikclot",6],["ACE_CableTie",1],["BWA3_G_Combat_clear",1]]],["Zumi_Tragegurt_v3",[["ACE_EntrenchingTool",1],["BWA3_DM25",2,1],["BWA3_DM51A1",2,1],["hlc_30rnd_556x45_EPR_G36",7,30]]],["BW_BACKPACK2_SAN_fleck",[["ACE_quikclot",20],["ACE_elasticBandage",10],["ACE_adenosine",2],["ACE_epinephrine",10],["ACE_morphine",10],["ACE_packingBandage",20],["ACE_surgicalKit",1],["ACE_tourniquet",4],["ACE_salineIV",6],["ACE_salineIV_250",1],["ACE_salineIV_500",1]]],"PBW_muetze2_fleck","",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]],
        1,
        0,
        false
      ],
      [
        ["Kampfmittelräumer", getText (configfile >> "CfgWeapons" >> "rhs_altyn_bala" >> "picture")],
        [[],[],["ACE_VMM3","","","",[],[],""],["PBW_Uniform3_fleck",[["ACE_quikclot",6],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",6],["ACE_tourniquet",2],["ACE_EarPlugs",1],["ACE_CableTie",3],["ACE_Canteen",1],["ACE_MRE_BeefStew",1]]],["V_PlateCarrierIAGL_oli",[["ACE_DefusalKit",1],["ACE_EntrenchingTool",1],["ACE_SpraypaintGreen",1],["ACE_Clacker",1],["ACE_M26_Clacker",1],["rhs_altyn_visordown",1],["DemoCharge_Remote_Mag",2,1]]],[],"PBW_muetze1_fleck","",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]],
        0,
        1,
        true
      ],
      [
        ["Pilot", getText (configfile >> "CfgWeapons" >> "H_PilotHelmetHeli_B" >> "picture")],
        [[],[],["BWA3_MP7","","","",[],[],""],["BWA3_Uniform_Helipilot",[["ACE_quikclot",6],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",6],["ACE_tourniquet",2],["ACE_EarPlugs",1],["ACE_CableTie",3],["ACE_Canteen",1],["ACE_MRE_BeefStew",1],["ACRE_SEM52SL",1]]],["V_LegStrapBag_black_F",[["NVGoggles_OPFOR",1],["BWA3_40Rnd_46x30_MP7",4,40],["BWA3_DM32_Blue",1,1],["B_IR_Grenade",1,1]]],[],"H_PilotHelmetHeli_B","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]],
        0,
        1,
        false
      ],
      [
        ["Fahrzeugbesatzung", getText (configfile >> "CfgWeapons" >> "rhsusf_cvc_green_alt_helmet" >> "picture")],
        [["BWA3_G36KA0","","","",[],[],""],[],[],["BWA3_Uniform_Crew_fleck",[["ACE_MapTools",1],["ACE_packingBandage",4],["ACE_tourniquet",1],["ACE_quikclot",2],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_DAGR",1],["ACE_Flashlight_KSF1",1],["BW_Facepaint",1],["ACE_EarPlugs",1],["hlc_30rnd_556x45_EPR_G36",3,30]]],[],["BWA3_AssaultPack_fleck",[["rhsusf_cvc_green_alt_helmet",1],["rhs_googles_black",1],["ACE_MRE_MeatballsPasta",1],["ACE_Canteen",1],["ACE_WaterBottle",2],["ACRE_SEM52SL",1],["ACE_salineIV_500",1],["ACE_tourniquet",2],["ACE_packingBandage",4],["ACE_quikclot",2],["ACE_CableTie",2],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_MRE_ChickenTikkaMasala",1],["hlc_30rnd_556x45_EPR_G36",3,30],["BWA3_DM25",2,1],["BWA3_DM32_Purple",1,1],["ACE_HandFlare_Green",1,1],["Chemlight_blue",2,1],["ACE_Chemlight_IR",2,1]]],"BWA3_Beret_PzGren","PBW_Headset",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]],
        0,
        1,
        false
      ],
      [
        ["Schießausbilder", getText (configfile >> "CfgWeapons" >> "zumi_pfeife" >> "picture")],
        [["hlc_rifle_G36V_grip2","","","BWA3_optic_ZO4x30_RSAS_pip",[],[],"rhsusf_acc_grip2"],[],["BWA3_P8","","","",["BWA3_15Rnd_9x19_P8",15],[],""],["PBW_Uniform3K_fleck",[["ACE_quikclot",2],["ACE_packingBandage",4],["ACE_tourniquet",2],["ACE_microDAGR",1],["rhs_googles_black",1],["PBW_RevisionF_klar",1],["BWA3_Beret_Falli",1],["ACE_MapTools",1],["ACE_Flashlight_KSF1",1],["ACE_WaterBottle",1],["ACE_EarPlugs",1],["ACRE_SEM52SL",1]]],["BWA3_Vest_JPC_Rifleman_Fleck",[["ACE_quikclot",2],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",4],["ACE_tourniquet",2],["rhsusf_opscore_fg_pelt",1],["mts_flagmarker_red",1],["mts_flagmarker_yellow",1],["mts_flagmarker_green",1],["mts_flagmarker_blue",1],["BWA3_15Rnd_9x19_P8",1,15]]],[],"PBW_muetze1_fleck","PBW_Headset",["ACE_Vector","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]],
        0,
        0,
        false,
        true
      ],
      [
        ["Schießende Abteilung", getText (configfile >> "CfgWeapons" >> "pbw_splitter_schtz" >> "picture")],
        [["hlc_rifle_G36A1","","","HLC_Optic_G36dualoptic35x2d",[],[],""],[],[],["PBW_Uniform3_fleck",[["ACE_tourniquet",1],["rhs_googles_clear",1],["ACE_EarPlugs",1],["ACE_fieldDressing",2],["ACE_packingBandage",2]]],["pbw_splitter_schtz",[["ACE_morphine",1],["ACE_Canteen",1],["ACE_EntrenchingTool",1],["ACE_tourniquet",1],["ACE_packingBandage",2],["PBW_Helm4_fleck",1]]],[],"PBW_muetze1_fleck","",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
      ]
    ]
  ],
  //2 - Rucksäcke
  [
    ["Backpacks", getText (configfile >> "CfgVehicles" >> "rhsusf_assault_eagleaiii_ucp" >> "picture")],
    //Rucksackloadouts hier unten in selben Format einfügen
    [
      [
        ["Backpack (Rifleman)", getText (configfile >> "CfgVehicles" >> "rhsusf_assault_eagleaiii_ucp" >> "picture")],
        ["rhsusf_assault_eagleaiii_ucp",[["ACE_Canteen",1],["ACE_EntrenchingTool",1],["ACE_Humanitarian_Ration",1],["ACE_MRE_MeatballsPasta",1],["ACE_WaterBottle",2],["rhs_mag_30Rnd_556x45_M855A1_Stanag",8]]]
      ],
      [
        ["Backpack (LMG)", getText (configfile >> "CfgVehicles" >> "rhsusf_assault_eagleaiii_ucp" >> "picture")],
        ["rhsusf_assault_eagleaiii_ucp",[["ACE_Canteen",1],["ACE_Humanitarian_Ration",1],["ACE_MRE_MeatballsPasta",1],["ACE_WaterBottle",2],["rhsusf_200Rnd_556x45_M855_soft_pouch",2],["ACE_SpareBarrel",1]]]
      ],
      [
        ["Backpack (Food)", getText (configfile >> "CfgVehicles" >> "rhsusf_assault_eagleaiii_ucp" >> "picture")],
        ["rhsusf_assault_eagleaiii_ucp",[["ACE_Canteen",12],["ACE_MRE_MeatballsPasta",12]]]
      ],
      [
        ["Backpack (CFR)", getText (configfile >> "CfgVehicles" >> "rhsusf_assault_eagleaiii_ucp" >> "picture")],
        ["rhsusf_assault_eagleaiii_ucp",[["ACE_packingBandage",20],["ACE_elasticBandage",10],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_tourniquet",4],["ACE_adenosine",2],["ACE_salineIV_250",1],["ACE_salineIV_500",1],["ACE_salineIV",6],["ACE_quikclot",20],["ACE_surgicalKit",1]]]
      ],
      [
        ["Backpack (Sapper)", getText (configfile >> "CfgVehicles" >> "rhsusf_assault_eagleaiii_ucp" >> "picture")],
        ["rhsusf_assault_eagleaiii_ucp",[["ACE_Fortify",1],["ACE_wirecutter",1],["ACE_Sandbag_empty",6],["ACE_SpraypaintGreen",2],["ToolKit",1]]]
      ],
      [
        ["Backpack (Ordnance)", getText (configfile >> "CfgVehicles" >> "rhsusf_assault_eagleaiii_ucp" >> "picture")],
        ["rhsusf_assault_eagleaiii_ucp",[["ACE_DefusalKit",1],["ACE_EntrenchingTool",1],["SatchelCharge_Remote_Mag",1,1],["ClaymoreDirectionalMine_Remote_Mag",2,1],[["ACE_VMH3","","","",[],[],""],1]]]
      ],
      [
        ["Mark 19 (Gun)", getText (configfile >> "CfgVehicles" >> "RHS_Mk19_Gun_Bag" >> "picture")],
        ["RHS_Mk19_Gun_Bag",[]]
      ],
      [
        ["Mark 19 (Tripod)", getText (configfile >> "CfgVehicles" >> "RHS_Mk19_Tripod_Bag" >> "picture")],
        ["RHS_Mk19_Tripod_Bag",[]]
      ],
      [
        ["M2 (Gun)", getText (configfile >> "CfgVehicles" >> "RHS_M2_Gun_Bag" >> "picture")],
        ["RHS_M2_Gun_Bag",[]]
      ],
      [
        ["M2 (Mini-Tripod)", getText (configfile >> "CfgVehicles" >> "RHS_M2_MiniTripod_Bag" >> "picture")],
        ["RHS_M2_MiniTripod_Bag",[]]
      ],
      [
        ["M2 (Tripod)", getText (configfile >> "CfgVehicles" >> "RHS_M2_Tripod_Bag" >> "picture")],
        ["RHS_M2_Tripod_Bag",[]]
      ],
      [
        ["No Backpack", ""],
        []
      ]
    ]
  ],
	//3 - Rucksäcke Ger
	[
		["Rucksäcke", getText (configfile >> "CfgVehicles" >> "BWA3_Kitbag_Fleck" >> "picture")],
		//Rucksackloadouts hier unten in selben Format einfügen
		[
			[
				["Rucksack (Schütze)", getText (configfile >> "CfgVehicles" >> "BWA3_AssaultPack_Fleck" >> "picture")],
				["BWA3_AssaultPack_Fleck",[["ACE_Canteen",1],["ACE_EntrenchingTool",1],["ACE_Humanitarian_Ration",1],["ACE_MRE_MeatballsPasta",1],["ACE_WaterBottle",2],["hlc_30rnd_556x45_EPR_G36",8]]]
			],
			[
				["Rucksack (1x SEM 70)", getText (configfile >> "CfgWeapons" >> "ACRE_SEM70" >> "picture")],
				["BWA3_FieldPack_fleck",[["ACRE_SEM70",1]]]
			],
			[
				["Rucksack (4x SEM 52)", getText (configfile >> "CfgWeapons" >> "ACRE_SEM52SL" >> "picture")],
				["BWA3_FieldPack_fleck",[["ACRE_SEM52SL",4]]]
			],
			[
				["Rucksack (MG3)", getText (configfile >> "CfgVehicles" >> "BWA3_Kitbag_Fleck" >> "picture")],
				["BWA3_Kitbag_Fleck",[["ACE_Canteen",1],["ACE_Humanitarian_Ration",1],["ACE_MRE_MeatballsPasta",1],["ACE_WaterBottle",2],["hlc_250Rnd_762x51_B_MG3",2],["ACE_SpareBarrel",1]]]
			],
			[
				["Rucksack (MG3 Gurte)", getText (configfile >> "CfgVehicles" >> "BWA3_Kitbag_Fleck" >> "picture")],
				["BWA3_Kitbag_Fleck",[["ACE_Humanitarian_Ration",1],["ACE_MRE_MeatballsPasta",1],["ACE_WaterBottle",2],["Redd_Mg3_Belt_100_fake",3]]]
			],
			[
				["Rucksack (MG4)", getText (configfile >> "CfgVehicles" >> "BWA3_Kitbag_Fleck" >> "picture")],
				["BWA3_Kitbag_Fleck",[["ACE_Canteen",1],["ACE_Humanitarian_Ration",1],["ACE_MRE_MeatballsPasta",1],["ACE_WaterBottle",2],["BWA3_200Rnd_556x45",3]]]
			],
			[
				["Rucksack (Feldküche)", getText (configfile >> "CfgVehicles" >> "BWA3_Kitbag_Fleck" >> "picture")],
				["BWA3_Kitbag_Fleck",[["ACE_Canteen",12],["ACE_MRE_MeatballsPasta",12]]]
			],
			[
				["Rucksack (Sanitätsmaterial)", getText (configfile >> "CfgVehicles" >> "BWA3_Kitbag_Fleck_Medic" >> "picture")],
				["BWA3_Kitbag_Fleck_Medic",[["ACE_packingBandage",20],["ACE_elasticBandage",10],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_tourniquet",4],["ACE_adenosine",2],["ACE_salineIV_250",1],["ACE_salineIV_500",1],["ACE_salineIV",6],["ACE_quikclot",20],["ACE_surgicalKit",1]]]
			],
			[
				["Rucksack (Pionier)", getText (configfile >> "CfgVehicles" >> "BWA3_Kitbag_Fleck" >> "picture")],
				["BWA3_Kitbag_Fleck",[["ACE_Fortify",1],["ACE_wirecutter",1],["ACE_Sandbag_empty",6],["ACE_SpraypaintGreen",2],["ToolKit",1]]]
			],
			[
				["Rucksack (Sprengmittel)", getText (configfile >> "CfgVehicles" >> "BWA3_Kitbag_Fleck" >> "picture")],
				["BWA3_Kitbag_Fleck",[["ACE_DefusalKit",1],["ACE_EntrenchingTool",1],["SatchelCharge_Remote_Mag",1,1],["ClaymoreDirectionalMine_Remote_Mag",2,1],[["ACE_VMH3","","","",[],[],""],1]]]
			],
			[
				["Milan (Rohr)", getText (configfile >> "CfgVehicles" >> "Redd_Milan_Static_Barrel" >> "picture")],
				["Redd_Milan_Static_Barrel",[]]
			],
			[
				["Milan (Dreibein)", getText (configfile >> "CfgVehicles" >> "Redd_Milan_Static_Tripod" >> "picture")],
				["Redd_Milan_Static_Tripod",[]]
			],
			[
				["Mörser (Rohr)", getText (configfile >> "CfgVehicles" >> "Redd_Tank_M120_Tampella_Barrel" >> "picture")],
				["Redd_Tank_M120_Tampella_Barrel",[]]
			],
			[
				["Mörser (Bodenplatte)", getText (configfile >> "CfgVehicles" >> "Redd_Tank_M120_Tampella_Tripod" >> "picture")],
				["Redd_Tank_M120_Tampella_Tripod",[]]
			],
      [
				["GraMaWa (Waffe)", getText (configfile >> "CfgVehicles" >> "rnt_gmw_static_barell" >> "picture")],
				["rnt_gmw_static_barell",[]]
			],
			[
				["GraMaWa (Lafette)", getText (configfile >> "CfgVehicles" >> "rnt_gmw_static_tripod" >> "picture")],
				["rnt_gmw_static_tripod",[]]
			],
			[
				["MG3 (Waffe)", getText (configfile >> "CfgVehicles" >> "rnt_mg3_static_barell" >> "picture")],
				["rnt_mg3_static_barell",[]]
			],
			[
				["MG3 (Lafette)", getText (configfile >> "CfgVehicles" >> "rnt_mg3_static_tripod" >> "picture")],
				["rnt_mg3_static_tripod",[]]
			],
			[
				["MG3 (Patronengurte)", getText (configfile >> "cfgMagazines" >> "Redd_Mg3_Belt_100_fake" >> "picture")],
				["BWA3_Kitbag_Fleck",[["ACE_Humanitarian_Ration",1],["ACE_MRE_MeatballsPasta",1],["ACE_WaterBottle",2],["Redd_Mg3_Belt_100_fake",3]]]
			],
			[
				["Kein Rucksack", ""],
				[]
			]
		]
	]

];

// ACRE Radios
if (!isNull (configFile >> "CfgPatches" >> "acre_main")) then {

    ["323_zgfr", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addItemToVest "ACRE_SEM52SL";
    }] call CBA_fnc_addClassEventHandler;

    ["323_zgfr_stelv", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addItemToVest "ACRE_SEM52SL";
    }] call CBA_fnc_addClassEventHandler;

    ["323_grpfr", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addItemToVest "ACRE_SEM52SL";
    }] call CBA_fnc_addClassEventHandler;

    ["323_trpfr", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addItemToVest "ACRE_SEM52SL";
    }] call CBA_fnc_addClassEventHandler;

    ["323_charlie", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addItemToVest "ACRE_SEM52SL";
    }] call CBA_fnc_addClassEventHandler;

    ["323_zgfr", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addBackpack "BWA3_TacticalPack_Fleck";
        _unit addItemToBackpack "ACRE_SEM70";
    }, true, []] call CBA_fnc_addClassEventHandler;

    ["323_zgfr_stelv", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addBackpack "BWA3_TacticalPack_Fleck";
        _unit addItemToBackpack "ACRE_SEM70";
    }, true, []] call CBA_fnc_addClassEventHandler;

    ["323_grpfr", "Init", {
        params ["_unit"];
        if (!local _unit) exitWith {};
        _unit addBackpack "BWA3_TacticalPack_Fleck";
        _unit addItemToBackpack "ACRE_SEM70";
    }, true, []] call CBA_fnc_addClassEventHandler;
};
