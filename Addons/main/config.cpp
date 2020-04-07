#include "script_component.hpp"

class CfgPatches {
  class ADDON {
    name = COMPONENT_NAME;
    units[] = {};
    weapons[] = {};
    requiredVersion = REQUIRED_VERSION;
    requiredAddons[] = {"cba_main","ace_common"};
    author = "Zumi";
    url = "www.fallschirmjgbtl-323.de";
    VERSION_CONFIG;
  };
};

class CfgMods {
    class PREFIX {
        dir = "@fjb_323";
        name = "FallschirmjägerBtl 323 Interna";
        picture = "A3\Ui_f\data\Logos\arma3_expansion_alpha_ca";
        hidePicture = "true";
        hideName = "true";
        actionName = "Website";
        action = "www.fallschirmjgbtl-323.de";
        description = "Github: https://github.com/Zumiii/FschJgBtl323/Issues";
    };
};

#include "cfgWeapons.hpp"
#include "cfgVehicles.hpp"
#include "cfgEventHandlers.hpp"
#include "cfgEditorSubcategories.hpp"
#include "gui.hpp"
#include "cfgSettings.hpp"
