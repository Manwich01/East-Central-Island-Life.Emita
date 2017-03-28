///////////////////////////////////////////
//            hackMonitor.sqf            //
///////////////////////////////////////////
// Monitors client for black-listed      //
// classes.                              //
///////////////////////////////////////////
#include "functions.sqf";

private ["_hackdetect","_glClassesNames","_glHackVars","_whiteUser"];
_glClassesNames = ["carpetbomb_menu","playerhijack_menu","zargabad_menu","joker_menu","endgame_menu","AlexAdmin_menu","Alexander_menu","ChernoRape_menu",
                   "MightyGerk_menu","SpawnSoldier_menu","AtackPlanes","GrkTeleport","crpbmb_menu","Delete_menu","Verbal_menu","playerhijack_menu",
                   "lokilostkey","loki","lokilost","Gerk","lost_key","chernorus_life_menu","lblmsgtimeout","artillery_barrageWF","AnthonyMcle",
                   "collection_123456","lblspvehicle","gerklusban","btnCarpetOk","UntiFreezee","lblhight","undetected_1","ultimate_123","btnbebanus",
                   "Ribeliona","loki_lost_key","AmmoCrates","AmmoCreate","arty","Camp_Create","Camps","comboVeh","comboVeh2","credz","EnemyGroups",
                   "extraction","GroupFriendly","listVehicles","listVehicles2","magick","mando_support","mischief","support","UnitCreation","loki_scripts",
                   "loki_lk","loki_LostKey"];
                   
_glHackVars = ["ifFuelok", "tHight","GBU","JDAMM","loki","lost_key","Darky","Gerk"];
_hackdetect = false;
_whiteUser = player call isPlayerSpecial;

while {!_whiteUser} do {
   //Global Variable Scanner
   for "_i" from 0 to ((count _glHackVars) - 1) do {
      _curVarName = (_glHackVars select _i);
      if (!isNil _curVarName) exitWith {
         _hackdetect = true;
      };    
   };
   
   //Class Scanner
   for "_i" from 0 to ((count _glClassesNames) - 1) do {
      _curClassName = (_glClassesNames select _i);
      if (isClass (configFile >> _curClassName)) exitWith {
         _hackdetect = true;
      };
   };
   
   if (_hackdetect) then
   {
      hint format ["Hacker: %1", name player];
      disableUserInput true;
   };
};