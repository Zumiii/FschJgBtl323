#include "script_component.hpp"

class CfgPatches {
  class ADDON {
    name = COMPONENT_NAME;
    units[] = {
      GVAR(Flag),
      GVAR(Dixie_1),
      GVAR(Dixie_2)
    };
    weapons[] = {

    };
    requiredVersion = REQUIRED_VERSION;
    requiredAddons = {
      "ace_common"
    };
    author = "Zumi";
    authors[] = {"Zumi"};
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
#include "cfgSounds.hpp"
