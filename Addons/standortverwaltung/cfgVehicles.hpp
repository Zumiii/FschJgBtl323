
class FlagCarrier;
  class Flag_NATO_F: FlagCarrier {
      class EventHandlers;
      class ACE_Actions;
  };

class GVAR(Flag): Flag_NATO_F {
  author = "Zumi";
  displayName = "Flaggenmast";
  editorCategory = "fschjgbtl323_fleck";
	editorSubCategory = "Ausbildung";
  icon = "z\fjb_323\addons\standortverwaltung\data\banner.paa";
  class EventHandlers: EventHandlers {
    init = "(_this select 0) setFlagTexture 'z\fjb_323\addons\standortverwaltung\data\banner.paa'; (_this select 0) setVariable ['flagge', 1, true];";
    class CBA_Extended_EventHandlers: CBA_Extended_EventHandlers {};
  };
  class ACE_Actions: ACE_Actions {

    class flaggenmast {

			displayName = "Flagge";
			distance = 2;
      position = "[-0.05,-0.35,-2.6]";
      showDisabled = 1;
      condition = "true";
			exceptions[] = {"isNotSwimming"};

      class Flagge_Entfernen {
        condition = "(((flagAnimationPhase _target) == 0) && (flagTexture _target != ''))";
				displayName = "Flagge entfernen";
				statement = "[_target, ''] remoteExecCall ['setFlagTexture', _target];";
      };
      class flagge_befestigen {
        condition = "(((flagAnimationPhase _target) == 0) && (flagTexture _target == ''))";
				displayName = "Flagge befestigen:";
        class Flagge_Red {
          displayName = "Rot";
          statement = "[_target, '\A3\Data_F\Flags\Flag_red_co.paa'] remoteExecCall ['setFlagTexture', _target];";
          icon = "\A3\Data_F\Flags\Flag_red_co.paa";
        };
        class Flagge_Blue {
          displayName = "Blau";
          statement = "[_target, '\A3\Data_F\Flags\Flag_blue_co.paa'] remoteExecCall ['setFlagTexture', _target];";
          icon = "\A3\Data_F\Flags\Flag_blue_co.paa";
        };
        class Flagge_Green {
          displayName = "Grün";
          statement = "[_target, '\A3\Data_F\Flags\Flag_green_co.paa'] remoteExecCall ['setFlagTexture', _target];";
          icon = "\A3\Data_F\Flags\Flag_green_co.paa";
        };
        class Flagge_323 {
          displayName = "323";
          statement = "[_target, 'z\fjb_323\addons\standortverwaltung\data\banner.paa'] remoteExecCall ['setFlagTexture', _target];";
          icon = "z\fjb_323\addons\standortverwaltung\data\banner.paa";
        };
      };
			class Flaggenmast_einholen {
				condition = "((flagAnimationPhase _target) != 0)";
				displayName = "Einholen";
				statement = "[_target, 0, 2] call BIS_fnc_animateFlag;";
			};
      class Flaggenmast_halbmast {
				condition = "((flagAnimationPhase _target) != 0.5)";
				displayName = "Auf Halbmast";
				statement = "[_target, 0.5, 2] call BIS_fnc_animateFlag;";
			};
			class Flaggenmast_hissen {
				condition = "((flagAnimationPhase _target) != 1)";
				displayName = "Hissen";
				statement = "[_target, 1, 2] call BIS_fnc_animateFlag;";
			};
    };
  };
};
class Land_FieldToilet_F;
class Land_ToiletBox_F;
class GVAR(Dixie_1): Land_FieldToilet_F {
  author = "Zumi";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 8;
  displayName = "Dixieklo (gelb)";
  editorCategory = "fschjgbtl323_fleck";
  editorSubCategory = "logistik";
  faction = "Bundeswehr";
  icon = "z\fjb_323\addons\standortverwaltung\data\banner.paa";
  scope = 2;
  zumi_hubwagen_carryPosition[] = {-0.05,0,0.75};
  zumi_hubwagen_carryDirection = 90;
  class ACE_Actions {
    class ACE_MainActions {
      condition = "(isNull attachedTo _target)";
      displayName = "Notdurf verrichten";
      distance = 1.5;
      icon = "z\fjb_323\addons\standortverwaltung\data\wc.paa";
      position = "[0, 0.65, -0.5]";
      class klein {
        displayName = "Für kleine Jungs";
        condition = "true";
        statement = "[_target, _player] call fjb_323_standortverwaltung_fnc_ablassen";
      };
      class gross {
        displayName = "Für grosse Jungs";
        statement = "[_target, _player, true] call fjb_323_standortverwaltung_fnc_ablassen";
        condition = "true";
      };
    };
    class tuer_auf {
      displayName = "Türe öffnen";
      condition = "(_target animationSourcePhase 'Door_1_sound_source' <= 0) && (isNull attachedTo _target)";
      statement = "_target animatesource ['Door_1_sound_source', 1]";
      icon = "\z\ace\addons\vehiclelock\ui\key_menuIcon_ca.paa";
      distance = 1;
      position = "_target selectionPosition ['Door_1_trigger','Memory'];";
    };
    class tuer_zu {
      displayName = "Türe verschliessen.";
      condition = "(_target animationSourcePhase 'Door_1_sound_source' >= 1) && (isNull attachedTo _target)";
      statement = "_target animatesource ['Door_1_sound_source', 0]";
      icon = "\z\ace\addons\vehiclelock\ui\key_menuIcon_ca.paa";
      distance = 1;
      position = "_target selectionPosition ['Door_1_trigger','Memory'];";
    };
  };
};
class GVAR(Dixie_2): Land_ToiletBox_F {
  author = "Zumi";
  ace_cargo_canLoad = 1;
  ace_cargo_size = 8;
  displayName = "Dixieklo (blau)";
  editorCategory = "fschjgbtl323_fleck";
  editorSubCategory = "logistik";
  faction = "Bundeswehr";
  icon = "z\fjb_323\addons\standortverwaltung\data\banner.paa";
  scope = 2;
  zumi_hubwagen_carryPosition[] = {-0.05,0,0.75};
  zumi_hubwagen_carryDirection = 90;
  class ACE_Actions {
    class ACE_MainActions {
      condition = "(isNull attachedTo _target)";
      displayName = "Notdurf verrichten";
      distance = 1.5;
      icon = "z\fjb_323\addons\standortverwaltung\data\wc.paa";
      position = "[0, 0.65, -0.5]";
      class klein {
        displayName = "Für kleine Jungs";
        condition = "true";
        statement = "[_target, _player] call fjb_323_standortverwaltung_fnc_ablassen";
      };
      class gross {
        displayName = "Für grosse Jungs";
        statement = "[_target, _player, true] call fjb_323_standortverwaltung_fnc_ablassen";
        condition = "true";
      };
    };
    class tuer_auf {
      displayName = "Türe öffnen";
      condition = "(_target animationSourcePhase 'Door_1_sound_source' <= 0) && (isNull attachedTo _target)";
      statement = "_target animatesource ['Door_1_sound_source', 1]";
      icon = "\z\ace\addons\vehiclelock\ui\key_menuIcon_ca.paa";
      distance = 1;
      position = "_target selectionPosition ['Door_1_trigger','Memory'];";
    };
    class tuer_zu {
      displayName = "Türe verschliessen.";
      condition = "(_target animationSourcePhase 'Door_1_sound_source' >= 1) && (isNull attachedTo _target)";
      statement = "_target animatesource ['Door_1_sound_source', 0]";
      icon = "\z\ace\addons\vehiclelock\ui\key_menuIcon_ca.paa";
      distance = 1;
      position = "_target selectionPosition ['Door_1_trigger','Memory'];";
    };
  };
};
