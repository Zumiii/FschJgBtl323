class ACE_personalAidKit;

class GVAR(shottimer): ACE_personalAidKit {
  author = "Zumi";
  scope = 2;
  displayName = "Shottimer";
  descriptionShort = "Für Messungen";
  picture = "z\fjb_323\addons\drill\data\shottimer.paa";
  model = "\A3\Structures_F_Mark\Items\Military\ShotTimer_01_F.p3d";
  class itemInfo {
    allowedSlots[] = {701,801,901};
    mass = 2;
    type = 620;
    scope = 0;
  };
};

class GVAR(pfeife): ACE_personalAidKit {
  author = "Zumi";
  scope = 2;
  displayName = "Pfeife";
  descriptionShort = "Für den ultimativen Drill";
  picture = "z\fjb_323\addons\drill\data\pfeife.paa";
  model = "\A3\weapons_F\ammo\mag_univ.p3d";
  class itemInfo {
    allowedSlots[] = {701,801,901};
    mass = 1;
    type = 620;
    scope = 0;
  };
};
class GVAR(airhorn): ACE_personalAidKit {
  author = "Zumi";
  scope = 2;
  displayName = "Airhorn";
  descriptionShort = "Vorsicht, sehr laut!";
  picture = "z\fjb_323\addons\drill\data\airhorn.paa";
  model = "\A3\Structures_F_Mark\Items\Sport\AirHorn_01_F.p3d";
  class itemInfo {
    allowedSlots[] = {701,801,901};
    mass = 2;
    type = 620;
    scope = 0;
  };
};
