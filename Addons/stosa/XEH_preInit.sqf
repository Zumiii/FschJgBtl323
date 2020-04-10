#include "script_component.hpp"

ADDON = false;

if isServer then {
  klappziele = [];
  publicVariable "klappziele";
};


PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

ADDON = true;
