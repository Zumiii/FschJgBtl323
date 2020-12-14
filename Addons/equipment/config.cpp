#include "script_component.hpp"

class CfgPatches {
  class ADDON {
    name = COMPONENT_NAME;
    units[] = {
      GVAR(funker_rucksack),
      GVAR(weaponHolder),
      GVAR(Tragegurt_Wepholder),
      GVAR(taschenkarte_9),
      GVAR(taschenkarte_11),
      GVAR(fauler_knecht),
      GVAR(fliegerzeichen_gelb_base),
      GVAR(fliegerzeichen_rot_base),
      GVAR(schlafsack_base),
      GVAR(schlafsack),
      GVAR(fliegerzeichen_gelb),
      GVAR(fliegerzeichen_rot)
    };
    weapons[] = {
      GVAR(Tragegurt),
      GVAR(schlafsack),
      GVAR(taschenkarte_9),
      GVAR(taschenkarte_11),
      GVAR(fauler_knecht),
      GVAR(schlafsack),
      GVAR(fliegerzeichen_gelb),
      GVAR(fliegerzeichen_rot)
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
#include "cfgWeapons.hpp"
#include "cfgMagazines.hpp"
#include "cfgVehicles.hpp"
#include "cfgEventHandlers.hpp"
#include "cfgEditorSubcategories.hpp"
#include "gui.hpp"
#include "cfgSettings.hpp"
#include "cfgSounds.hpp"
