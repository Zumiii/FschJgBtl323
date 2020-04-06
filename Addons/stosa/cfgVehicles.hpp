class TargetBootcampHuman_F;

  class GVAR(T_Scheibe): TargetBootcampHuman_F {
    author = "Zumi";
		ace_cargo_canLoad = 1;
		ace_cargo_size = 2;
    displayName = "T-Scheibe";
		editorCategory = "fschjgbtl323_fleck";
		editorSubCategory = "stosa";
		faction = "Bundeswehr";
		icon = "z\fjb_323\addons\standortverwaltung\data\banner.paa";
    class EventHandlers {
			class zumis_zusatz {
				init = "params ['_scheibe']; _scheibe setObjectTextureGlobal [0, 'z\fjb_323\addons\stosa\data\t_scheibe.paa'];";
			};
		};
  };

  class GVAR(Stuermender_Schuetze): TargetBootcampHuman_F {
    author = "Zumi";
    ace_cargo_canLoad = 1;
    ace_cargo_size = 2;
    displayName = "Stürmender Schütze";
    editorCategory = "fschjgbtl323_fleck";
    editorSubCategory = "stosa";
    faction = "Bundeswehr";
    icon = "z\fjb_323\addons\standortverwaltung\data\banner.paa";
    nameSound = "obj_building";
    class EventHandlers {
			class zumis_zusatz {
				init = "params ['_scheibe']; _scheibe setObjectTextureGlobal [0, 'z\fjb_323\addons\stosa\data\stuermender_schuetze_v3.paa']; [_scheibe] call fjb_323_stosa_fnc_scheibe_init; [_scheibe] call fjb_323_stosa_fnc_klappziele_init;";
        hit = "params ['_unit', '_source', '_damage', '_instigator']; _hits = (_unit getVariable ['hits', 0]); _unit setVariable ['hits', _hits + 1]; if ((_unit getVariable ['hits', 0]) < (_unit getVariable ['hits_required', 1])) exitWith {}; _unit animateSource ['Terc', 1]; _unit setVariable ['runtergeklappt', 0, true]; _unit setVariable ['hits', 0];";
			};
		};
  };
