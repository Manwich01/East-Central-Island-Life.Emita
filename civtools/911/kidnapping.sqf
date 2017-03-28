//////////////////////////////////////////////////////////////
//                    kidnapping.sqf                        //
//////////////////////////////////////////////////////////////
// Allows the player to report a kidnapping to the police.  //
//////////////////////////////////////////////////////////////
private ["_code","_text"];
_text = format["%1 is  being kidnapped and is calling for help! He still has use of his cell phone!", name player];
_code = format["if (iscop) then {player sideChat ""%1"";};", _text];

if (isciv) then {
   _code call broadcast;
};

//TODO Consider a timeout. People could spam this.