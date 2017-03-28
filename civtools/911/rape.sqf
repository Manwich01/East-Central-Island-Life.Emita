////////////////////////////////////////////////////////
//                    rape.sqf                        //
////////////////////////////////////////////////////////
// Allows the player to report a rape to the police.  //
////////////////////////////////////////////////////////
private ["_code","_text"];
_text = format["%1 has reported that he/she is being raped!", name player];
_code = format["if (iscop) then {player sideChat ""%1"";};", _text];

if (isciv) then {
   _code call broadcast;
};

//TODO Consider a timeout. People could spam this.