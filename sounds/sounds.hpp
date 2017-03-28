class Siren_Short {
   name     = "";	
   sound[]  = {"\Siren_Short.ogg", 1, 1};
   titles[] = {};
};
class Siren_Long {
   name     = "";
   sound[]  = {"\Siren_Long.ogg", 1, 1};
   titles[] = {};
};
class Bank_alarm {
   name     = "";
   sound[]  = {"\sounds\bankalarm.ogg", 1, 1};
   titles[] = {};
};
class alarm4 {
   name     = "";
   sound[]  = {"\sounds\alarm4.ogg", 1, 1};
   titles[] = {};
};
class Forest_fire {
   name     = "";
   sound[]  = {"\sounds\ForestFire1.ogg", 4, 2};
   titles[] = {};
};
class Flash_Bang {
   name     = "";
   sound[]  = {"\sounds\Flashbang.ogg", 4, 1};
   titles[] = {};
};
class DuctTapeStrap {
   name = "";
   sound[] = {"\sounds\DuctTapeStrap.ogg", 1, 1};
   titles[] = {};
};
class Unlock : DuctTapeStrap {sound[] = {"\sounds\Unlock.ogg", db+11, 1};};
class Scroll : DuctTapeStrap {sound[] = {"\sounds\Scroll.ogg", db-10, 1};};
class Thingie : DuctTapeStrap {sound[] = {"\sounds\Thingie.ogg", 1, 1};};
class carallarm {
   name = "carallarm"; // Name for mission editor
	sound[] = {"\snd\sounds.ogg", 4, 1};
	titles[] = {0, ""};
};