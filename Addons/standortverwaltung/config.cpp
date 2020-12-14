#include "script_component.hpp"

class CfgPatches {
  class ADDON {
    name = COMPONENT_NAME;
    units[] = {
      GVAR(Fennek),
      GVAR(Flag),
      GVAR(Dixie_1),
      GVAR(Dixie_2),
      GVAR(Mobile_Waka_Fleck_Base),
      GVAR(Mobile_Waka_Trope_Base),
      GVAR(Mobile_Waka_Fleck),
      GVAR(Mobile_Waka_Trope)
    };
    weapons[] = {

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
#include "cfgVehicles.hpp"
#include "cfgEventHandlers.hpp"
#include "cfgEditorSubcategories.hpp"
#include "gui.hpp"
#include "cfgSettings.hpp"
#include "cfgSounds.hpp"


class CfgEditorCategories {
	class fschjgbtl323_fleck	{
		displayName = "FschJgBtl323 (Flecktarn)";
	};
	class fschjgbtl323_isaf	{
		displayName = "FschJgBtl323 (ISAF)";
	};
};

class CfgEditorSubcategories {
	class Instandsetzung {
		displayName = "Instandsetzungsfahrzeuge";
	};
	class Fuefu {
		displayName = "Führungs- und Funktionsfahrzeuge";
	};
	class Bat {
		displayName = "BAT";
	};
	class Transporter {
		displayName = "Mannschaftstransporter";
	};
	class logistik {
		displayName = "Lager und Logistik";
	};
  class stosa {
		displayName = "Stosa";
	};
	class munition {
		displayName = "Munitionslager";
	};
	class jaeger {
		displayName = "Rollen";
	};
  class lazarett {
    displayName = "Sanitätsdienst";
  };
  class Ausbildung {
    displayName = "Ausbildung";
  };
};
