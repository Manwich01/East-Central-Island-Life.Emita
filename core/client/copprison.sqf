if (CopIsInPrison) exitWith {};

_prisonzeit     = time;
CopIsInPrison   = true;
player setPos getPos CopPrison;
player groupChat format[localize "STRS_cop_inprison", (CopInPrisonTime call ISSE_str_IntToStr)];

while {true} do {
   removeAllWeapons player;
   
   if (not(alive player)) then {
      waitUntil{((alive player) and (deadcam == 0))};
      if (CopIsInPrison) then {player setPos getPos CopPrison;};
   };

   if ((time > (_prisonzeit+CopInPrisonTime)) or (!CopIsInPrison)) exitWith {
      player setPos getPos CopPrisonAusgang;
      player groupChat localize "STRS_cop_freeprison";
      CopIsInPrison = false;
   };
   
   if (player distance CopPrison > 30) then {
      player setPos getPos CopPrison;
   };
   
   sleep 10;
};