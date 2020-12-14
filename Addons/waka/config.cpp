#include "script_component.hpp"

class CfgPatches {
  class ADDON {
    name = COMPONENT_NAME;
    units[] = {
      323_zgfr,
      323_zgfr_stelv,
      323_grpfr,
      323_trpfr,
      323_schuetze,
      323_schuetze_pzf,
      323_mg_eins,
      323_mg_zwo,
      323_grapi,
      323_bravo,
      323_charlie,
      323_zf
    };
    weapons[] = {

    };
    requiredVersion = REQUIRED_VERSION;
    requiredAddons[] = {
      "ace_common",
      "bwa3_common",
      "bwa3_g36",
      "bwa3_g38",
      "bwa3_g28",
      "bwa3_g29",
      "bwa3_g82",
      "bwa3_mg3",
      "bwa3_mg4",
      "bwa3_mg5",
      "bwa3_handgrenades",
      "bwa3_headgear",
      "bwa3_uniforms",
      "bwa3_vests",
      "bwa3_backpacks",
      "bwa3_explosives",
      "bwa3_navipad",
      "bwa3_vector"
    };
    author = "Zumi";
    url = "www.fallschirmjgbtl-323.de";
    VERSION_CONFIG;
  };
};
#include "cfgWeapons.hpp"
#include "cfgVehicles.hpp"
#include "cfgEventHandlers.hpp"
#include "cfgEditorSubcategories.hpp"
#include "gui.hpp"
#include "cfgSettings.hpp"
#include "cfgGroups.hpp"
#include "cfgWorlds.hpp"
