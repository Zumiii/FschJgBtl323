#include "script_component.hpp"

class CfgPatches {
  class ADDON {
    name = COMPONENT_NAME;
    units[] = {
      QGVAR(bla),
      QGVAR(blub)
    };
    weapons[] = {
      QGVAR(blu),
      QGVAR(blab)
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
