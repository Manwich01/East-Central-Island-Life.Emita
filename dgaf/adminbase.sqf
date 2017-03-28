player execVM "dgaf\functions.sqf";

if (player call isPlayerSpecial) then {
   titleText ["Hello Bitches.  Welcome home.", "PLAIN DOWN", 3];
} else {
   titleText ["You are entering an admin only zone, You have 10 seconds to leave the area or you will die.", "PLAIN DOWN", 3];
   sleep 10;
   titleText ["You were warned..!", "PLAIN DOWN", 3];
   sleep 3;
   player setDamage 1;
};