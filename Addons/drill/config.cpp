#include "script_component.hpp"

class CfgPatches {
  class ADDON {
    name = COMPONENT_NAME;
    units[] = {
      GVAR(shottimer_wepholder),
      GVAR(pfeife_wepholder),
      GVAR(airhorn_wepholder)
    };
    weapons[] = {
      GVAR(shottimer),
      GVAR(pfeife),
      GVAR(airhorn)
    };
    requiredVersion = REQUIRED_VERSION;
    requiredAddons[] = {
      "ace_common"
    };
    author = "Zumi";
    url = "www.fallschirmjgbtl-323.de";
    VERSION_CONFIG;
  };
};
#include "cfgMagazines.hpp"
#include "cfgWeapons.hpp"
#include "cfgVehicles.hpp"
#include "cfgEventHandlers.hpp"
#include "cfgEditorSubcategories.hpp"
#include "gui.hpp"
#include "cfgSettings.hpp"
#include "cfgSounds.hpp"
